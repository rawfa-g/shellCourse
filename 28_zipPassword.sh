#!/bin/bash
#Programa para ejemplificar el empaquetamiento con clave utilizando zip
#Autor: Rafa Gasull - rawfa_g

echo "Empaquetar todos los scripts de la carpeta shellCourse con zip y asignar clave de seguridad"
zip -e shellCourse.zip *.sh
