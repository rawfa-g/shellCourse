#!/bin/bash
#Programa para ejemplificar el uso de las entencia cas
#Autor: rafa Gasull - @rawfa_g

opcion=""

echo "Ejemplo Sentencia Case"
read -p "Ingrese una opción de la A - Z: " opcion

case $opcion in
    "A") echo -e "\nOpción directorio actual";;
    "B") echo -e "\nOpción listar archivos";;
    [C-F]) echo -e "\nOpción no implementada";;
    *) echo -e "\nErr404";;
esac
