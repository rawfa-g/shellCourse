#!/bin/bash
#Programa para ejemplificar el uso de de la sentencia de iteración for
#Autor: Rafa Gasull - rawfa_g

arregloNumeros=(1 2 3 4 5 6)

echo -e "\nIterar en la lista de Números"
for num in ${arregloNumeros[*]}
do
    echo "Número: $num"
done

echo -e "\nIterar en la lista de Cadenas"
for nom in "Rafa" "Pedro" "Jose" "Massimo"
do
    echo "Nombre: $nom"
done

echo -e "\nIterar en lista de archivos"
for fil in *
do
    echo "Nombre archivo: $fil"
done

echo -e "\nIterar utilizando un comando"
for fil in $(ls /)
do
    echo "Nombre archivo: $fil"
done

echo -e "\nIterar utilizando formato tradiconal"
for ((i=1; i<10; i++))
do
    echo "Número: $i"
done
