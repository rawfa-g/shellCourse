#!/bin/bash
#Reto 2 del curso de platzi. Realizar un programa que solicite la información con nombre apellido direccion edad y telefono
#Autor: Rafa Gasull - @rawfaG

nombreRegex="^([a-z]*)"
apellidoRegex="^([a-z]*)"
direccionRegex="^([a-z]*)"
edadRegex="^([1-9][0-9])$"
telefonoRegex="^([0-9]{9})$"

read -p "Ingrese nombre: " nombre
if [[ $nombre =~ $nombreRegex ]]; then
    read -p "Ingrese apellido: " apellido
    if [[ $apellido =~ $apellidoRegex ]]; then
        read -p "Ingrese dirección: " direccion
        if [[ $direccion =~ $direccionRegex ]]; then
            read -p "Ingrese telefono: " telefono
            if [[ $telefono =~ $telefonoRegex ]]; then
                read -p "Ingrese su edad: " edad
                if [[ $edad =~ $edadRegex ]]; then
                    echo "Datos válidos, revise a continuación"
                    echo -e "\nNombre completo: $nombre $apellido"
                    echo "Dirección: $direccion"
                    echo "Edad: $edad"
                    echo "Teléfono: $telefono"
                else
                    echo "Edad inválidad, vuelva a empezar"
                fi
            else
                echo "Ingrese un telefono válido, vuelva a empezar"
            fi
        else
            echo "Dirección inválida, vuelva a empezar"
        fi
    else
        echo "Apellido inválido, vuelva a empezar"
    fi
else 
    echo "Por favor introduzca un nombre válido"
fi
