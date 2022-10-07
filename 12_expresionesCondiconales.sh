#!/bin/bash
#Programa para ejemplificar el uso de expresiones condiconales
#Autor: Rafa Gasull - @rawfa_g

edad=0
pais=""
pathArchivo=""

read -p "Ingrese su edad: " edad
read -p "Ingrese su pais: " pais
read -p "Ingrese el path de su archivo: " pathArchivo

echo -e "\nExpresiones Condiconales con números"
if [ $edad -lt 10 ]; then
    echo "La persona es una niña o niño"
elif [ $edad -ge 10 ] && [ $edad -le 17 ]; then
    echo "La persona es adolescente"
else
    echo "La persona es mayor de edad"
fi

echo -e "\nExpresiones Condiconales con cadenas"
if [ $pais = "EEUU" ]; then
    echo "Changing language to English..."
elif [ $pais = "España" ] || [ $pais = "Mexico" ]; then
    echo "Cambiando lenguaje a Español..."
else
    echo "Err404 Language not implemented"
fi

echo -e "\nExpresiones Condiconales con archivos"
if [ -d $pathArchivo ]; then
    echo "El directorio $pathArchivo existe"
else
    echo "Err404 directorio $pathArchivo no existe"
fi

