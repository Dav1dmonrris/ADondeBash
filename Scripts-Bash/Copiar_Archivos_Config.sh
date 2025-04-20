#!/bin/bash

# Variables
Directorio_Origen="$HOME/"
Directorio_Destino="$HOME/Documentos/Backup"

#Crea el directorio destino si no se existe
if ! mkdir -p "$Directorio_Destino" 2>/dev/null; then

    echo "No se pudo crear '$Directorio_Destino'"
    exit 1

fi

#Busca todos los archivos con la extension .conf
#Copia la ruta de cada archivo y la pega en Directorio Destino
for Ruta_de_Archivo in $(find "$Directorio_Origen" -name "*.conf" 2>/dev/null); do

    if ! cp "$Ruta_de_Archivo" "$Directorio_Destino" 2>/dev/null; then

        echo "No se creo: $Ruta_de_Archivo"

    fi
done

#Si la cantidad de archivos que hay en el Directorio Destino es mayor a 0
#listar todos los archivos que ahi se encuentran.
if [ $(ls "$Directorio_Destino"/*.conf 2>/dev/null | wc -l) -gt 0 ]; then

    echo "Se copiaron todos los archivos:"
    ls "$Directorio_Destino"/*.conf

else

    echo "No existen archivos .conf"

fi
