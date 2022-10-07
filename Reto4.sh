#!/bin/bash
#Reto 4. Menú con 8 opciones que una vez ingresado validamos e imprimimos la opción y el titulo acuerdo a lo ingresado
#Autor: Rafa Gasull - @rawfa_g

opcion=0

while :
do
    clear
    echo "-----------------------------------------------------------"
    echo "----------------------MENÚ PRINCIPAL-----------------------"
    echo "-----------------------------------------------------------"
    echo "1. Procesos Actuales"
    echo "2. Memoria Disponible"
    echo "3. Espacio en Disco"
    echo "4. Información de red"
    echo "5. Variables de Entrno Configuradas"
    echo "6. Información Programa"
    echo "7. Backup Información"
    echo "8. Ingrese una opción"
    echo "-----------------------------------------------------------"
    read -n1 -p "Por favor seleccione una opción [1-8]: " opcion
    
    case $opcion in
        1)
            echo -e "\n1. Procesos Actuales"
            sleep 3
            ;;
        2)
            echo -e "\n2. Memoria Disponible"
            sleep 3
            ;;
        3)
            echo -e "\n3. Espacio en Disco"
            sleep 3
            ;;
        4)
            echo -e "\n4. Información de red"
            sleep 3
            ;;
        5)  
            echo -e "\n5. Variables de Entrno Configuradas"
            sleep 3
            ;;
        6)
            echo -e "\n6. Información Programa"
            sleep 3
            ;;
        7)
            echo -e "\n7. Backup Información"
            sleep 3
            ;;
        8)
            echo -e "\n8. Ingrese una opción"
            sleep 3
            ;;
     esac
done
