#!/bin/bash
#Reto 1 declarar dos variables una llamada option, otra llamada resulta, inicializarlas e imprimir sus valores
#Reto 5 escribir información solicitada a un archivo log cuyo nombre será log donde yyyy representa el año, MM el mes, DD el dia, HH hora, mm minutos, SS segundos.

fecha=`date +%Y%m%d%H%M%S`
usuario=$(logname)
archivo=log-`date +%Y%m%d%H%M%S`.log

#Crear archivo
touch $archivo

#Agregar información del usuario
echo "Acceso del usuario: $usuario " >> $archivo

#Agregar fecha
echo "En la fecha: $fecha " >> $archivo

#Mostrar archivo durante 3 seg
cat $archivo
sleep 3
