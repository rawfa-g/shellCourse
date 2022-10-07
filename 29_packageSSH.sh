#!/bin/bash
#Programa para ejemplificar la forma decomo transferir por la red utilizando el comando rsync, utilizando las opciones de empaquetamiento para optimizar la velocidad de transferencia
#Autor: Rafa Gasull - rawfa_g

echo "Empaquetar todos los scripts de la carpeta shellCourse y transferirlos por la red a otro equipo utilizando el comando rsync"

host=""
usuario=""

read -p "Ingrese el host: " host
read -p "Ingrese el usuario: " usuario
echo -e "\n------------En este momento se procederá a empaquetar la carpeta y transferirla según los datos ingresados---------"
rsync -avz $(pwd) $usuario@$host:C:\Users\rafae
