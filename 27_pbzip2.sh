#!/bin/bash
#Programa para ejemplificar el empaquetamiento con el comando pbzip2
#Autor: Rafa Gasull - rawfa_g

echo "Empaquetar todos los scripts de la carpeta shellCours"
tar -cvf shellCourse.tar *.sh
pbzip2 -f shellCourse.tar

echo "Empaquetar un directorio con tar y pbzip2"
tar -cf *.sh -c > shellCourseDos.tar.bz2
