#!/bin/bash
#Programa para ejemplificar como se realiza el paso de opciones con o source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zshin parámetroscapturar información del usuario y validarla
#Autor: Rafa Gasull - @rawfa_gee

option=0
backupName=""
clave=""

echo "Programa Utilidades Postgres"
#Acepta el ingreso de información de solo un caracter
read -n1 -p "Ingresar una opción: " option
echo -e "\n"
read -n10 -p "Ingresar nombre del archivo del backup: " backupName
echo -e "\n"
echo "Opción: $option, backupName: $backupName"
read -s -p "Clave: " clave
echo -e "\nClave: $clave"
