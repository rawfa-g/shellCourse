#!/bin/bash
#Programa para ejemplificar como caputrar la información del usuario y validarla utilizando expresiones regulares
#Autor: Rafa Gasull - @rawfa_gee

identificacionRegex="^[0-9]{10}$"
paisRegex="ES|GR|FR$"
fechaNacimientoRegex="^(19|20)([0-9]{2})(0[1-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$"

echo "Expresiones regulares"
read -p "Ingresar una identificacion: " identificacion
read -p "Ingresar las iniciales de un pais [ES, GR, FR]: " pais
read -p "Ingresar la fecha de nacimiento [yyyyMMdd]: " fechaNacimiento

#Validación Identificación
if [[ $identificacion =~ $identificacionRegex ]]; then
    echo "Identificación $identificacion válida"
else
    echo "Identificación $identificacion inválida"
fi

#Validación País
if [[ $pais =~ $paisRegex ]]; then
    echo "País $pais válido"
else
    echo "País $pais inválido"
fi

#Validación Fecha Nacimiento
if [[ $fechaNacimiento =~ $fechaNacimientoRegex ]]; then
    echo "Fecha Nacimiento $fechaNacimiento válida"
else
    echo "Fecha Nacimiento $fechaNacimiento inválida"
fi
