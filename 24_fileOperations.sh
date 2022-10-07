#!/bin/bash
#Programa para ejemplificar las operaciones de un archivo
#Autor: Rafa Gasull - @rawfa_g

echo -e "\nOperaciones de un archivo"
mkdir -m 755 backupScripts

echo -e "\nCopiar los scripts del directorio actual al nuevo directorio backupScripts"
cp *.* backupScripts/
ls -al backupScripts/

echo -e "\nMover el directorio backupScripts a otra ubicación: $HOME"
mv backupScripts/ $HOME

echo -e "\nEliminar los archivos .txt"
rm *.txt
