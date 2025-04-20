#!/bin/bash

# Script para listar archivos .txt en el directorio actual

# Variable con el directorio actual 
directorio_actual=$(pwd)
echo "======================================================================="
echo "Buscando archivos .txt en: $directorio_actual"
echo "======================================================================="

# For para buscar en el directorio actual
for carpeta in "$directorio_actual"/*; do

    if [[ -d "$carpeta" ]]; then

        # Si es un directorio busca archivos .txt dentro de él
	echo "======================================================================="
        echo " Archivos en subdirectorio '$carpeta':"
	echo "======================================================================="

        ls "$carpeta"/*.txt 2>/dev/null

    elif [[ -f "$carpeta" && "$carpeta" == *.txt ]]; then
	   
        # Si es un archivo .txt en el directorio raíz 
        echo " - Archivo en raíz: $carpeta"
    fi
done

