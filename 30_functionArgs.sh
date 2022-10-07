#!/bin/bash
#Programa que permite manejar las utilidades de Postres
#Autor: Rafa Gasull - @rawfa_g

opcion=0

#Función para instalar Postgres
instalar_postgres () {
    echo "Instalar postgres"
}

#Función para desinstalar Postgres
desinstalar_postgres () {
    echo "Desinstalar postgres"
}

#Realizar backup
realizar_backup () {
    echo "Realizar Backup"
    echo "Directorio backup: $1"
}

#Restaurar Backup"
restaurar_backup () {
    echo "Restaurar Backup"
    echo "Directorio Restauración: $1"
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
