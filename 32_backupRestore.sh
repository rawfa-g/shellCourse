#!/bin/bash
#Programa que permite manejar las utilidades de Postres
#Autor: Rafa Gasull - @rawfa_g

opcion=0
fechaActual=`date +%Y%m%d`

#Función para instalar Postgres
instalar_postgres () {
    echo -e "\nVerificar instalación postgres..."
    verifyInstall=$(which psql)
    if [ $? -eq 0 ]; then
        echo "\n Postgres ya se encuentra instalado en el equipo"
    else
        read -s -p "Ingresar contraseña de sudo: " password
        read -s -p "Ingresar contraseña a utilizar en postgres: " postgresPassword
        echo "$password" | sudo -S apt update
        echo "$password" | sudo -S apt-get -y install postgresql postgresql-contrib
        sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '{$postgresPassword}';"
        echo "$password" | sudo -S systemctl enable postgresql.service
        echo "$password" | sudo -S systemctl start postgresql.service
    fi
    read -n1 -s -r -p "PRESIONE [ENTER] para continuar..."
}

#Función para desinstalar Postgres
desinstalar_postgres () {
    read -s -p "Ingresar contraseña de sudo: " password
    echo -e "\n"
    echo "$password" | sudo -S systemctl stop postgresql.service
    echo "$password" | sudo -S apt-get -y --purge remove postgresql\*
    echo "$password" | sudo -S rm -r /etc/postgresql
    echo "$password" | sudo -S rm -r /etc/postgresql-common
    echo "$password" | sudo -S rm -r /var/lib/postgresql
    echo "$password" | sudo -S userdel -r postgres
    echo "$password" | sudo -S groupdel postgresql

    read -n1 -s -r -p "PRESIONE [ENTER] para continuar..."
}

#Realizar backup
realizar_backup () {
    echo "Listar las bases de datos"
    sudo -u postgres psql -c "\l"
    read -p "Elegit la base de datos a realizar el backup: " bddBackup
    echo -e "\n"
    if [ -d "$1" ]; then
        echo "Establecer permisos directorio"
        echo "$password" | sudo -S chmod 755 $1
        echo "Realizando backup..."
        sudo -u postgres pg_dump -Fc $bddBackup > "$1/bddBackup$fechaActual.bak"
        echo "Respaldo realizado correctamente en la ubicación: $1/bddBackup$fechaActual.back"
    else
        echo "El directorio $1 no existe"
    fi
    read -n1 -s -r -p "PRESIONE [ENTER] para continuar..."
}

#Restaurar Backup"
restaurar_backup () {
    echo "Listar backups"
    ls -l $1/*.bak
    read -p "Elegir Backup a restaurar: " backupRestore
    echo -e "\n"
    read -p "Ingrese nombre de la base de datos destino: " bddDestino
    #Verificar bdd existe
    verifyBdd=$(sudo -u postgres psql -lqt | cut -d \| -f 1 | grep -wq $bddDestino)
    if [ $? -eq 0 ]; then
        echo "Restaurando en la bdd destino: $bddDestino"
    else
        sudo -u postgres psql -c "create database $bddDestino"
    fi
    
    if [ -f "$1/$backupRestore" ]; then
        echo "Restaurando Backup..."
        sudo -u postgres pg_restore -Fc -d $bddDestino "$1/$backupRestore"
        echo "Listar la base de datos"
        sudo -u postgres psql -c "\l"
    else
        echo "El backup $backupRestore no existe"
    fi
    read -n1 -s -r -p "PRESIONE [ENTER] para continuar..."
}

while :
#while : nos permite hacer un while infinito

do
    #Limpiar la pantall
    clear
    #Desplegar menú de opciones
    echo "-----------------------------------------"
    echo "PGUTIL - Programa de Utilidad de Postgres"
    echo "-----------------------------------------"
    echo "             MENÚ PRINCIPAL              "
    echo "-----------------------------------------"
    echo "1. Instalar Postgres"
    echo "2. Desinstalar Posgres"
    echo "3. Realizar backup"
    echo "4. Restaurar backup"
    echo "5. Salir"

    #Leer los datos del usuario - capturar información
    read -n1 -p "Ingrese una opción [1-5]: " opcion

    #Validar la opción ingresada
    case $opcion in
        1)
            instalar_postgres
            sleep 3
            ;;
        2)
            desinstalar_postgres
            sleep 3
            ;;
        3)
            read -p "Directorio de Backup: " directorioBackup
            realizar_backup $directorioBackup
            sleep 3
            ;;
        4)
            read -p "Directorio de Restauración: " directorioRest
            restaurar_backup $directorioRest
            sleep 3
            ;;
        5)
            echo -e "\nSaliendo del programa..."
            exit 0
            ;;
     esac
done
