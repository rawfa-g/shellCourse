#!/bin/bash
#Programa para revisar como ejecutar comandos dentro de un programa y alamacenar en una variable para su posterior utilización
#Autor: Rafa Gasull - @rawfa_gee

ubicacionActual=`pwd`
infoKernel=$(uname -a)

echo "La ubicación actual es: $ubicacionActual"
echo "Información del Kernel: $infoKernel"

