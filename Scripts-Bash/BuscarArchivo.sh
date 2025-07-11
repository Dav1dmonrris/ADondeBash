#!/bin/bash

#Ejercicio 6:
#Buscar el directorio de un archivo

#Variables
Home="$HOME/"

echo "===================================================================="
echo "SCRIPT PARA ENCONTRAR CUALQUIER ARCHIVO"
echo "===================================================================="
read -p "Ingresa el archivo que quieres encontrar: " ArchivoPerdido

if [ -f "$ArchivoPerdido" ]; then
        echo "==================================================================="
	echo "Tu archivo esta en las rutas: "
	find "$Home" -name "$ArchivoPerdido"

fi
