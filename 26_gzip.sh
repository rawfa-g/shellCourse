#!/bin/bash
#Programa para ejemplificar el empaquetamiento con el comando gzip
#Autor: Rafa Gasull - rawfa_g

echo "Empaquetar todos los scripts de la carpeta shellCours"
tar -cvf shellCourse.tar *.sh

#Cuando se empaqueta con gzip el empaquetamiento anterior se elimina
gzip shellCourse.tar 

echo "Empaquetar un solo archivo, con un ratio 9"
gzip -9 9_opciones.sh
