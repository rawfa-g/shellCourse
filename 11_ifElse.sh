#!/bin/bash
#Programa para ejemplificar el uso de la sentencia de decisión if, else
#Autor: Rafa Gasull - @rawfa_g

notaClase=0
edad=0

echo "Ejemplo Sentencia If -else"
read -n1 -p "Indique su nota (1-9): " notaClase
echo -e "\n"

#Validación
if (( $notaClase >= 7 )); then
    echo "El alumno aprueba la materia"
else
    echo "El alumno ha suspendido"
fi

read -p "Indique su edad: " edad
if [ $edad -le 18 ]; then
    echo "No puede continuar el registro"
else
    echo "Puede proceder con la aplicación"
fi
