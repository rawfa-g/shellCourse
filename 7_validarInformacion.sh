#!/bin/bash
#Programa para ejemplificar como caputrar la información del usuario y validarla utilizando expresiones regulares
#Autor: Rafa Gasull - @rawfa_gee

identificacionRegex="^[0-9]{10}$"
paisRegex="ES|GR|FR$"
fechaNacimientoRegex="^(19|20)([0-9]{2})(0[1-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$"
#Esto lo que hace es:
#Valida que empiece por 19xx o 20xx y que los {2} siguientes valores pueden tener numeros del 0 al 9
#Despues valida el mes, si empieza por 0 tiene que ir seguido de un 1 al 9 y si empieza por 1 seguido de un numero del 0 al 2
#Finalmente valida el día con un sistem aparecido al anterior, si es 0x.. si es 1x o 2x.. y si es 3 que solo pueda ser 30 0 31

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
