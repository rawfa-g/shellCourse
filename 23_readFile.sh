#!/bin/bash
#Programa para ejemplificar como se lee un archivo
#Autor: Rafa Gasull - rawfa_g

echo "------------------leer un archivo---------------------"
cat $1

echo -e "\n-----------Almacenar los valores en una variable-------------"
valorCat=`cat $1`
echo "$valorCat"

#Se utiliza la variable IFS (Internal File Separator) para evitar que los espacios en blanco al inicio se recorten
echo -e "\n-------------Leer archivos línea por línea utilizando while---------"
while IFS= read linea
do
    echo "$linea"
done < $1 
