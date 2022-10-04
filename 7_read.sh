#!/bin/bash
#Programa para ejemplificar como capturar información del usuario utilizando el comando read.
#Autor: Rafa Gasull - @rawfa_gee

option=0
backupName=""

echo "Programa Utilidades Postgres"
read -p "Ingresar una opción: " option
read -p "Ingresar nombre del archivo del backup: " backupName
echo "Opción: $option, backupName: $backupName"
