#!/bin/bash
#Programa para ejemplificar como capturar información del usuario utilizando el comando echo, read y $REPLY.
#Autor: Rafa Gasull - @rawfa_gee

option=0
backupName=""

echo "Programa Utilidades Postgres"
echo -n "Ingresar una opción: "
read
option=$REPLY
echo -n "Ingresar nombre del archivo del backup: "
read
backupName=$REPLY
echo "Opción: $option, backupName: $backupName"
