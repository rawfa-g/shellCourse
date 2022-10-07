#!/bin/bash
#Programa para ejemplificar el uso de la sentencia de decisión if, else if, else
#Autor: Rafa Gasull - @rawfa_g

edad=0

echo "Ejemplo Sentencia If -else"
read -p "Indique su edad: " edad
if [ $edad -le 18 ]; then
    echo "Usuario menor de edad"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
    echo "Usuario adulto"
else
    echo "Persona jubilada"
fi
