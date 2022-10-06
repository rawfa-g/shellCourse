#!/bin/bash
#Programa para ejemplificar como se realiza el paso de opciones con o sin parametros
#Autor: Rafa Gasull - @rawfa_gee

echo "Programa opciones"
echo "Opción 1 enviada: $1"
echo "Opción 2 enviada: $2"
echo "Opciones enviadas: $*"
echo -e "\n"
echo "Recuperar valores"
while [ -n "$1" ]
do
case "$1" in
-a) echo "opción -a utilizada";;
-b) echo "opción -b utilizada";;
-c) echo "opción -c utilizada";;
*) echo "$1 no es una opción";;
esac
shift
done
