11_ifElseIfElse.sh                                                                                  0000775 0001750 0001750 00000000562 14320036435 015246  0                                                                                                    ustar   rafagasull                      rafagasull                                                                                                                                                                                                             #!/bin/bash
#Programa para ejemplificar el uso de la sentencia de decisión if, else if, else
#Autor: Rafa Gasull - @rawfa_g

edad=0

echo "Ejemplo Sentencia If -else"
read -p "Indique su edad: " edad
if [ $edad -le 18 ]; then
    echo "Usuario menor de edad"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
    echo "Usuario adulto"
else
    echo "Persona jubilada"
fi
                                                                                                                                              11_ifElse.sh                                                                                        0000775 0001750 0001750 00000001003 14320036435 014145  0                                                                                                    ustar   rafagasull                      rafagasull                                                                                                                                                                                                             #!/bin/bash
#Programa para ejemplificar el uso de la sentencia de decisión if, else
#Autor: Rafa Gasull - @rawfa_g

notaClase=0
edad=0

echo "Ejemplo Sentencia If -else"
read -n1 -p "Indique su nota (1-9): " notaClase
echo -e "\n"

#Validación
if (( $notaClase >= 7 )); then
    echo "El alumno aprueba la materia"
else
    echo "El alumno ha suspendido"
fi

read -p "Indique su edad: " edad
if [ $edad -le 18 ]; then
    echo "No puede continuar el registro"
else
    echo "Puede proceder con la aplicación"
fi
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             12_expresionesCondiconales.sh                                                                       0000775 0001750 0001750 00000001711 14320036435 017633  0                                                                                                    ustar   rafagasull                      rafagasull                                                                                                                                                                                                             #!/bin/bash
#Programa para ejemplificar el uso de expresiones condiconales
#Autor: Rafa Gasull - @rawfa_g

edad=0
pais=""
pathArchivo=""

read -p "Ingrese su edad: " edad
read -p "Ingrese su pais: " pais
read -p "Ingrese el path de su archivo: " pathArchivo

echo -e "\nExpresiones Condiconales con números"
if [ $edad -lt 10 ]; then
    echo "La persona es una niña o niño"
elif [ $edad -ge 10 ] && [ $edad -le 17 ]; then
    echo "La persona es adolescente"
else
    echo "La persona es mayor de edad"
fi

echo -e "\nExpresiones Condiconales con cadenas"
if [ $pais = "EEUU" ]; then
    echo "Changing language to English..."
elif [ $pais = "España" ] || [ $pais = "Mexico" ]; then
    echo "Cambiando lenguaje a Español..."
else
    echo "Err404 Language not implemented"
fi

echo -e "\nExpresiones Condiconales con archivos"
if [ -d $pathArchivo ]; then
    echo "El directorio $pathArchivo existe"
else
    echo "Err404 directorio $pathArchivo no existe"
fi

                                                       14_case.sh                                                                                          0000775 0001750 0001750 00000000602 14320036435 013660  0                                                                                                    ustar   rafagasull                      rafagasull                                                                                                                                                                                                             #!/bin/bash
#Programa para ejemplificar el uso de las entencia cas
#Autor: rafa Gasull - @rawfa_g

opcion=""

echo "Ejemplo Sentencia Case"
read -p "Ingrese una opción de la A - Z: " opcion

case $opcion in
    "A") echo -e "\nOpción directorio actual";;
    "B") echo -e "\nOpción listar archivos";;
    [C-F]) echo -e "\nOpción no implementada";;
    *) echo -e "\nErr404";;
esac
                                                                                                                              15_arreglos.sh                                                                                      0000775 0001750 0001750 00000001751 14320036435 014572  0                                                                                                    ustar   rafagasull                      rafagasull                                                                                                                                                                                                             #!/bin/bash
#Programa para ejemplificar el uso de arreglos
#Autor: Rafa Gasull - rawfa_g

arregloNumeros=(1 2 3 4 5 6)
arregloCadenas=(Rafa, Jose, Massimo, Pedro)
arregloRangos=({A..C} {10..20})

echo -e "\nImprimir todosl os valores"
echo "Arreglo de Números: ${arregloNumeros[*]}"
echo "Arreglo de Cadenas: ${arregloCadenas[*]}"
echo "Arreglo de Rangos: ${arregloRangos[*]}"

echo -e "\nImprimir el tamaño de los arreglos"
echo "Tamaño del arreglo de Números: ${#arregloNumeros[*]}"
echo "Tamaño del arreglo de Cadenas: ${#arregloCadenas[*]}"
echo "Tamaño del arreglo de Rangos: ${#arregloRangos[*]}"

echo -e "\nImprimir la posición 3 del arreglo de números, cadenas de rango"
echo "Pos 3 Arreglo de Números: ${arregloNumeros[3]}"
echo "Pos 3 Arreglo de Cadenas: ${arregloCadenas[3]}"
echo "Pos 3 Arreglo de Rangos: ${arregloRangos[3]}"

echo -e "\nAñadir y elimianr valores en un arreglo"
arregloNumeros[7]=20
unset arregloNumeros[0]
echo ${arregloNumeros[*]}
echo ${#arregloNumeros[*]}
                       16_forLoop.sh                                                                                       0000775 0001750 0001750 00000001236 14320036435 014373  0                                                                                                    ustar   rafagasull                      rafagasull                                                                                                                                                                                                             #!/bin/bash
#Programa para ejemplificar el uso de de la sentencia de iteración for
#Autor: Rafa Gasull - rawfa_g

arregloNumeros=(1 2 3 4 5 6)

echo -e "\nIterar en la lista de Números"
for num in ${arregloNumeros[*]}
do
    echo "Número: $num"
done

echo -e "\nIterar en la lista de Cadenas"
for nom in "Rafa" "Pedro" "Jose" "Massimo"
do
    echo "Nombre: $nom"
done

echo -e "\nIterar en lista de archivos"
for fil in *
do
    echo "Nombre archivo: $fil"
done

echo -e "\nIterar utilizando un comando"
for fil in $(ls /)
do
    echo "Nombre archivo: $fil"
done

echo -e "\nIterar utilizando formato tradiconal"
for ((i=1; i<10; i++))
do
    echo "Número: $i"
done
                                                                                                                                                                                                                                                                                                                                                                  17_iteracion.sh                                                                                     0000775 0001750 0001750 00000000340 14320036435 014724  0                                                                                                    ustar   rafagasull                      rafagasull                                                                                                                                                                                                             #!/bin/bash
#Programa para ejemplificar el uso de de la sentencia de iteración while
#Autor: Rafa Gasull - rawfa_g

numero=1

while [ $numero -ne 10 ]
do
    echo "Imprimiendo $numero veces"
    numero=$((numero + 1))
done
                                                                                                                                                                                                                                                                                                18_loopAnidado.sh                                                                                   0000775 0001750 0001750 00000000350 14320036435 015202  0                                                                                                    ustar   rafagasull                      rafagasull                                                                                                                                                                                                             #!/bin/bash
#Programa para ejemplificar el uso de los loops anidados
#Autor: Rafa Gasull - @rawfa_g

echo "Loops Anidados"
for fil in $(ls)
do
   for nombre in {1..4}
   do
        echo "Nombre archivo: $fil _ $nombre"
   done
done
                                                                                                                                                                                                                                                                                        19_breakContinue.sh                                                                                 0000775 0001750 0001750 00000000614 14320036435 015546  0                                                                                                    ustar   rafagasull                      rafagasull                                                                                                                                                                                                             #!/bin/bash
#Programa para ejemplificar el uso de break y continue
#Autor: Rafa Gasull - @rawfa_g

echo "Sentancias break y continue"
for fil in $(ls)
do
    for nombre in {1..4}
    do
        if [ $fil = "10_download.sh" ]; then
            break;
        elif [[ $fil == 4* ]]; then
            continue;
        else
            echo "Nombre archivo: $fil _ $nombre"
        fi
    done
done
                                                                                                                    1_utilityPostgress.sh                                                                               0000775 0001750 0001750 00000000210 14320036435 016271  0                                                                                                    ustar   rafagasull                      rafagasull                                                                                                                                                                                                             #!/bin/bash
# Programa para realizar algunas operaciones utilitarios de Postgres

echo "Hola bienvenido al curso de Programación bash"
                                                                                                                                                                                                                                                                                                                                                                                        20_menuOpciones.sh                                                                                  0000775 0001750 0001750 00000002421 14320036435 015407  0                                                                                                    ustar   rafagasull                      rafagasull                                                                                                                                                                                                             #!/bin/bash
#Programa que permite manejar las utilidades de Postres
#Autor: Rafa Gasull - @rawfa_g

opcion=0

while :
#while : nos permite hacer un while infinito

do
    #Limpiar la pantall
    clear
    #Desplegar menú de opciones
    echo "-----------------------------------------"
    echo "PGUTIL - Programa de Utilidad de Postgres"
    echo "-----------------------------------------"
    echo "             MENÚ PRINCIPAL              "
    echo "-----------------------------------------"
    echo "1. Instalar Postgres"
    echo "2. Desinstalar Posgres"
    echo "3. Realizar backup"
    echo "4. Restaurar backup"
    echo "5. Salir"

    #Leer los datos del usuario - capturar información
    read -n1 -p "Ingrese una opción [1-5]: " opcion

    #Validar la opción ingresada
    case $opcion in
        1) 
            echo -e "\nInstalando Postgres..."
            sleep 3
            ;;
        2) 
            echo -e "\nDesinstalando Postgres..."
            sleep 3
            ;;
        3) 
            echo -e "\nRealizando Backup..."
            sleep 3
            ;;
        4) 
            echo -e "\nRestaurando Backup..."
            sleep 3
            ;;
        5)
            echo -e "\nSaliendo del programa..."
            exit 0
            ;;
     esac
done
                                                                                                                                                                                                                                               21_archivoDirectorios.sh                                                                            0000775 0001750 0001750 00000000571 14320036435 016612  0                                                                                                    ustar   rafagasull                      rafagasull                                                                                                                                                                                                             #!/bin/bash
#Programa para ejemplificar la creación de archivos y directorios
#Autor: Rafa Gasull - rawfa_g

echo "Archivos - Directorios"

if [ $1 = "d" ]; then
    mkdir -m 755 $2
    echo "Directorio creado correctamente"
    ls -al $2
elif [ $1 == "f" ]; then
    touch $2
    echo "ARchivo creado correctamente"
    ls -al $2
else
    echo "No existe esa opción: $1"
fi
                                                                                                                                       22_writeFile.sh                                                                                     0000775 0001750 0001750 00000000345 14320036435 014702  0                                                                                                    ustar   rafagasull                      rafagasull                                                                                                                                                                                                             #!/bin/bash
#Programa para ejemplificar como se escribe en un archivo
#Autor: Rafa Gasull - @rawfa_g

echo "Escribir en un archivo"

echo "Valores escritos con el comando echo" >> $1

#Adición multilínea 
cat <<EOM >>$1
$2
EOM
                                                                                                                                                                                                                                                                                           23_readFile.sh                                                                                      0000775 0001750 0001750 00000001016 14320036435 014460  0                                                                                                    ustar   rafagasull                      rafagasull                                                                                                                                                                                                             #!/bin/bash
#Programa para ejemplificar como se lee un archivo
#Autor: Rafa Gasull - rawfa_g

echo "------------------leer un archivo---------------------"
cat $1

echo -e "\n-----------Almacenar los valores en una variable-------------"
valorCat=`cat $1`
echo "$valorCat"

#Se utiliza la variable IFS (Internal File Separator) para evitar que los espacios en blanco al inicio se recorten
echo -e "\n-------------Leer archivos línea por línea utilizando while---------"
while IFS= read linea
do
    echo "$linea"
done < $1 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  24_fileOperations.sh                                                                                0000775 0001750 0001750 00000000674 14320036435 015742  0                                                                                                    ustar   rafagasull                      rafagasull                                                                                                                                                                                                             #!/bin/bash
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
                                                                    25_tar.sh                                                                                           0000764 0001750 0001750 00000000311 14320041335 013523  0                                                                                                    ustar   rafagasull                      rafagasull                                                                                                                                                                                                             #!/bin/bash
#Programa para ejemplificar el empaquetamiento con el comando tar
#Autor: Rafa Gasull - rawfa_g

echo "Empaquetar todos los scripts de la carpeta shellCours"
tar -cvf shellCourse.tar *.sh

                                                                                                                                                                                                                                                                                                                       26_gzip.sh                                                                                          0000764 0001750 0001750 00000000556 14320042464 013726  0                                                                                                    ustar   rafagasull                      rafagasull                                                                                                                                                                                                             #!/bin/bash
#Programa para ejemplificar el empaquetamiento con el comando gzip
#Autor: Rafa Gasull - rawfa_g

echo "Empaquetar todos los scripts de la carpeta shellCours"
tar -cvf shellCourse.tar *.sh

#Cuando se empaqueta con gzip el empaquetamiento anterior se elimina
gzip shellCourse.tar 

echo "Empaquetar un solo archivo, con un ratio 9"
gzip -9 9_opciones.sh
                                                                                                                                                  27_pbzip2.sh                                                                                        0000764 0001750 0001750 00000000500 14320042720 014144  0                                                                                                    ustar   rafagasull                      rafagasull                                                                                                                                                                                                             #!/bin/bash
#Programa para ejemplificar el empaquetamiento con el comando pbzip2
#Autor: Rafa Gasull - rawfa_g

echo "Empaquetar todos los scripts de la carpeta shellCours"
tar -cvf shellCourse.tar *.sh
pbzip2 -f shellCourse.tar

echo "Empaquetar un directorio con tar y pbzip2"
tar -cf *.sh -c > shellCourseDos.tar.bz2
                                                                                                                                                                                                2_variables_2.sh                                                                                    0000775 0001750 0001750 00000000173 14320036435 015056  0                                                                                                    ustar   rafagasull                      rafagasull                                                                                                                                                                                                             #!/bin/bash
#Programa para revisar la declaración de variables

echo "Opción nombre pasada del script anterior: $nombre"
                                                                                                                                                                                                                                                                                                                                                                                                     2_variables.sh                                                                                      0000775 0001750 0001750 00000000450 14320036435 014633  0                                                                                                    ustar   rafagasull                      rafagasull                                                                                                                                                                                                             #!/bin/bash
#Programa para revisar la declaración de variables

opcion=0
nombre=Rafa

echo "Opción: $opcion y Nombre: $nombre"

#Exportar la variable nombre para que esté disponible a los demás procesos
export nombre

#Llamar al siguiente script para recuperar la variable
./2_variables_2.sh
                                                                                                                                                                                                                        3_tipoOperadores.sh                                                                                 0000775 0001750 0001750 00000001670 14320036435 015670  0                                                                                                    ustar   rafagasull                      rafagasull                                                                                                                                                                                                             #!/bin/bash
#Programa para revisar los tipos de operadores
#Autor: Rafa Gasull - @rawfa_gee

numA=10
numB=5

echo "Operadores aritméticos"
echo "Números: A=$numA y B=$numB"
echo "Sumar A + B = " $((numA + numB))
echo "Restar A -  B = " $((numA - numB))
echo "Multiplicar A * B = " $((numA * numB))
echo "Dividir A / B = " $((numA / numB))
echo "Residuo A % B = " $((numA % numB))

echo -e "\nOperadores Relacionales"
echo "Números: A=$numA y B=$numB"
echo "A > B = " $((numA > numB))
echo "A < B = " $((numA < numB))
echo "A >= B = " $((numA >= numB))
echo "A >= B = " $((numA >= numB))
echo "A == B = " $((numA == numB))
echo "A != B = " $((numA != numB))

echo -e "\nOperadores de Asignación"
echo "Números: A=$numA y B=$numB"
echo "Sumar A += B = " $((numA += numB))
echo "Restar A -=  B = " $((numA -= numB))
echo "Multiplicar A *= B = " $((numA *= numB))
echo "Dividir A /= B = " $((numA /= numB))
echo "Residuo A %= B = " $((numA %= numB))

                                                                        4_argumentos.sh                                                                                     0000775 0001750 0001750 00000000607 14320036435 015055  0                                                                                                    ustar   rafagasull                      rafagasull                                                                                                                                                                                                             #!/bin/bash
#Programa para ejemplificar el paso de argumentos

# $0 --> get the name of the escript
# $1 ${10} --> get the arguments
# $# --> count arguments
# $* --> get all the arguments

nombreCurso=$1
horarioCurso=$2
echo "El nombr del curso es: $nombreCurso dictado en el horario de $horarioCurso"
echo "El número de parámetros enviados es: $#"
echo "Los parametros enviados son: $*"
                                                                                                                         5_substitucionComand.sh                                                                             0000775 0001750 0001750 00000000472 14320036435 016547  0                                                                                                    ustar   rafagasull                      rafagasull                                                                                                                                                                                                             #!/bin/bash
#Programa para revisar como ejecutar comandos dentro de un programa y alamacenar en una variable para su posterior utilización
#Autor: Rafa Gasull - @rawfa_gee

ubicacionActual=`pwd`
infoKernel=$(uname -a)

echo "La ubicación actual es: $ubicacionActual"
echo "Información del Kernel: $infoKernel"

                                                                                                                                                                                                      6_readEcho.sh                                                                                       0000775 0001750 0001750 00000000607 14320036435 014405  0                                                                                                    ustar   rafagasull                      rafagasull                                                                                                                                                                                                             #!/bin/bash
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
                                                                                                                         7_read.sh                                                                                           0000775 0001750 0001750 00000000540 14320036435 013603  0                                                                                                    ustar   rafagasull                      rafagasull                                                                                                                                                                                                             #!/bin/bash
#Programa para ejemplificar como capturar información del usuario utilizando el comando read.
#Autor: Rafa Gasull - @rawfa_gee

option=0
backupName=""

echo "Programa Utilidades Postgres"
read -p "Ingresar una opción: " option
read -p "Ingresar nombre del archivo del backup: " backupName
echo "Opción: $option, backupName: $backupName"
                                                                                                                                                                7_validarInformacion.sh                                                                             0000775 0001750 0001750 00000002622 14320036435 016502  0                                                                                                    ustar   rafagasull                      rafagasull                                                                                                                                                                                                             #!/bin/bash
#Programa para ejemplificar como caputrar la información del usuario y validarla utilizando expresiones regulares
#Autor: Rafa Gasull - @rawfa_gee

identificacionRegex="^[0-9]{10}$"
paisRegex="ES|GR|FR$"
fechaNacimientoRegex="^(19|20)([0-9]{2})(0[1-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$"
#Esto lo que hace es:
#Valida que empiece por 19xx o 20xx y que los {2} siguientes valores pueden tener numeros del 0 al 9
#Despues valida el mes, si empieza por 0 tiene que ir seguido de un 1 al 9 y si empieza por 1 seguido de un numero del 0 al 2
#Finalmente valida el día con un sistem aparecido al anterior, si es 0x.. si es 1x o 2x.. y si es 3 que solo pueda ser 30 0 31

echo "Expresiones regulares"
read -p "Ingresar una identificacion: " identificacion
read -p "Ingresar las iniciales de un pais [ES, GR, FR]: " pais
read -p "Ingresar la fecha de nacimiento [yyyyMMdd]: " fechaNacimiento

#Validación Identificación
if [[ $identificacion =~ $identificacionRegex ]]; then
    echo "Identificación $identificacion válida"
else
    echo "Identificación $identificacion inválida"
fi

#Validación País
if [[ $pais =~ $paisRegex ]]; then
    echo "País $pais válido"
else
    echo "País $pais inválido"
fi

#Validación Fecha Nacimiento
if [[ $fechaNacimiento =~ $fechaNacimientoRegex ]]; then
    echo "Fecha Nacimiento $fechaNacimiento válida"
else
    echo "Fecha Nacimiento $fechaNacimiento inválida"
fi
                                                                                                              8_readValidate.sh                                                                                   0000775 0001750 0001750 00000000750 14320036435 015261  0                                                                                                    ustar   rafagasull                      rafagasull                                                                                                                                                                                                             #!/bin/bash
#Programa para ejemplificar como capturar información del usuario y validarla
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
                        Reto2.sh                                                                                            0000775 0001750 0001750 00000002654 14320036435 013445  0                                                                                                    ustar   rafagasull                      rafagasull                                                                                                                                                                                                             #!/bin/bash
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
                                                                                    Reto3.sh                                                                                            0000775 0001750 0001750 00000002420 14320036435 013435  0                                                                                                    ustar   rafagasull                      rafagasull                                                                                                                                                                                                             #!/bin/bash
#Reto 3
##Solicitar un valor del 1 al 5
##Según valor ingresado hacer validacion usando condicionales e imprimir el resultado
##Construir expresiones de validación númericas, cadenas y archivos según la opción ingresada

nombreRegex="^([a-z]*)"
numeroRegex="^[0-9]$"

cowsay "Reto 3" | lolcat

read -n1 -p "Por favor ingrese un numero del 1 al 5: " opcion
if [[ $opcion = 1 ]]; then
    echo -e "\nEscogista la primera opción"
    echo -e "Opción de validación tipo string"
    read -p "Por favor ingrese su nombre: " nombre
    if [[ $nombre =~ $nombreRegex ]];then
        echo -e "\nGracias, $nombre"
    else
        echo -e "\nNombre no válido"
    fi

elif [[ $opcion = 2 ]]; then
    echo -e "\nEscogista la segunda opción"
    echo -e "Opción de validación tipo numero"
    read -p "Por favor ingrese un numero del 0 al 9: " numero
    if [[ $numero =~ $numero ]];then
        echo -e "\nGracias, tu número $numero es válido"
    else
        echo -e "\nNo válido, lo sentimo"
    fi

elif [[ $opcion = 3 ]]; then
    echo -e "\nEscogista la tercera opción"

elif [[ $opcion = 4 ]]; then
    echo -e "\nEscogista la cuarta opción"    

elif [[ $opcion = 5 ]]; then
    echo -e "\nEscogista la quinta opción"

else
    echo -e "\nOption not implemented"

fi

                                                                                                                                                                                                                                                Reto4.sh                                                                                            0000775 0001750 0001750 00000003127 14320036435 013443  0                                                                                                    ustar   rafagasull                      rafagasull                                                                                                                                                                                                             #!/bin/bash
#Reto 4. Menú con 8 opciones que una vez ingresado validamos e imprimimos la opción y el titulo acuerdo a lo ingresado
#Autor: Rafa Gasull - @rawfa_g

opcion=0

while :
do
    clear
    echo "-----------------------------------------------------------"
    echo "----------------------MENÚ PRINCIPAL-----------------------"
    echo "-----------------------------------------------------------"
    echo "1. Procesos Actuales"
    echo "2. Memoria Disponible"
    echo "3. Espacio en Disco"
    echo "4. Información de red"
    echo "5. Variables de Entrno Configuradas"
    echo "6. Información Programa"
    echo "7. Backup Información"
    echo "8. Ingrese una opción"
    echo "-----------------------------------------------------------"
    read -n1 -p "Por favor seleccione una opción [1-8]: " opcion
    
    case $opcion in
        1)
            echo -e "\n1. Procesos Actuales"
            sleep 3
            ;;
        2)
            echo -e "\n2. Memoria Disponible"
            sleep 3
            ;;
        3)
            echo -e "\n3. Espacio en Disco"
            sleep 3
            ;;
        4)
            echo -e "\n4. Información de red"
            sleep 3
            ;;
        5)  
            echo -e "\n5. Variables de Entrno Configuradas"
            sleep 3
            ;;
        6)
            echo -e "\n6. Información Programa"
            sleep 3
            ;;
        7)
            echo -e "\n7. Backup Información"
            sleep 3
            ;;
        8)
            echo -e "\n8. Ingrese una opción"
            sleep 3
            ;;
     esac
done
                                                                                                                                                                                                                                                                                                                                                                                                                                         utilityHost.sh                                                                                      0000775 0001750 0001750 00000001126 14320036435 015004  0                                                                                                    ustar   rafagasull                      rafagasull                                                                                                                                                                                                             #!/bin/bash
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
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          