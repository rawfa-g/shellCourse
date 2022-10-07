#!/bin/bash
#Programa para ejemplificar el uso de arreglos
#Autor: Rafa Gasull - rawfa_g

arregloNumeros=(1 2 3 4 5 6)
arregloCadenas=(Rafa, Jose, Massimo, Pedro)
arregloRangos=({A..C} {10..20})

echo -e "\nImprimir todosl os valores"
echo "Arreglo de Números: ${arregloNumeros[*]}"
echo "Arreglo de Cadenas: ${arregloCadenas[*]}"
echo "Arreglo de Rangos: ${arregloRangos[*]}"

echo -e "\nImprimir el tamaño de los arreglos"
echo "Tamaño del arreglo de Números: ${#arregloNumeros[*]}"
echo "Tamaño del arreglo de Cadenas: ${#arregloCadenas[*]}"
echo "Tamaño del arreglo de Rangos: ${#arregloRangos[*]}"

echo -e "\nImprimir la posición 3 del arreglo de números, cadenas de rango"
echo "Pos 3 Arreglo de Números: ${arregloNumeros[3]}"
echo "Pos 3 Arreglo de Cadenas: ${arregloCadenas[3]}"
echo "Pos 3 Arreglo de Rangos: ${arregloRangos[3]}"

echo -e "\nAñadir y elimianr valores en un arreglo"
arregloNumeros[7]=20
unset arregloNumeros[0]
echo ${arregloNumeros[*]}
echo ${#arregloNumeros[*]}
