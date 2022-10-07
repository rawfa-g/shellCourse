#!/bin/bash
#Programa que permite manejar las utilidades de Postres
#Autor: Rafa Gasull - @rawfa_g

opcion=0

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
            echo -e "\nInstalando Postgres..."
            sleep 3
            ;;
        2) 
            echo -e "\nDesinstalando Postgres..."
            sleep 3
            ;;
        3) 
            echo -e "\nRealizando Backup..."
            sleep 3
            ;;
        4) 
            echo -e "\nRestaurando Backup..."
            sleep 3
            ;;
        5)
            echo -e "\nSaliendo del programa..."
            exit 0
            ;;
     esac
done
