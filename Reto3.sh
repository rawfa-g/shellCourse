#!/bin/bash
#Reto 3
##Solicitar un valor del 1 al 5
##Según valor ingresado hacer validacion usando condicionales e imprimir el resultado
##Construir expresiones de validación númericas, cadenas y archivos según la opción ingresada

nombreRegex="^([a-z]*)"
numeroRegex="^[0-9]$"

cowsay "Reto 3" | lolcat

read -n1 -p "Por favor ingrese un numero del 1 al 5: " opcion
if [[ $opcion = 1 ]]; then
    echo -e "\nEscogista la primera opción"
    echo -e "Opción de validación tipo string"
    read -p "Por favor ingrese su nombre: " nombre
    if [[ $nombre =~ $nombreRegex ]];then
        echo -e "\nGracias, $nombre"
    else
        echo -e "\nNombre no válido"
    fi

elif [[ $opcion = 2 ]]; then
    echo -e "\nEscogista la segunda opción"
    echo -e "Opción de validación tipo numero"
    read -p "Por favor ingrese un numero del 0 al 9: " numero
    if [[ $numero =~ $numero ]];then
        echo -e "\nGracias, tu número $numero es válido"
    else
        echo -e "\nNo válido, lo sentimo"
    fi

elif [[ $opcion = 3 ]]; then
    echo -e "\nEscogista la tercera opción"

elif [[ $opcion = 4 ]]; then
    echo -e "\nEscogista la cuarta opción"    

elif [[ $opcion = 5 ]]; then
    echo -e "\nEscogista la quinta opción"

else
    echo -e "\nOption not implemented"

fi

