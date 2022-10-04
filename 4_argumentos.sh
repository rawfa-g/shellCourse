#!/bin/bash
#Programa para ejemplificar el paso de argumentos

# $0 --> get the name of the escript
# $1 ${10} --> get the arguments
# $# --> count arguments
# $* --> get all the arguments

nombreCurso=$1
horarioCurso=$2
echo "El nombr del curso es: $nombreCurso dictado en el horario de $horarioCurso"
echo "El número de parámetros enviados es: $#"
echo "Los parametros enviados son: $*"
