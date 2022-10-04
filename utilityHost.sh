#!/bin/bash
#Reto 1 declarar dos variables una llamada option, otra llamada resulta, inicializarlas e imprimir sus valores

option=$1
result=$2

cowsay "Tu opción es $option" | lolcat
cowsay "Tu segunda variable, resulta es $result" | lolcat
