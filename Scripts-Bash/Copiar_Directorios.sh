#!/bin/bash

# Variables
Repositorio_Actual="$HOME/Documentos/"
Repositorio_Destino="$HOME/Documentos/Terreno_de_Juego/"
suf="_1" 

# Crea el directorio
mkdir -p "$Repositorio_Destino"

# For para mostrar todos los directorios
for carpeta in "$Repositorio_Actual"*; do
    # If para verificar si es una carpeta
    if [ -d "$carpeta" ]; then
        nombre_original=$(basename "$carpeta")  # Se usa para obtener el nombre de la carpeta
        nombre_nuevo="${nombre_original}${suf}" # Lo agrega al nuevo nombre de la carpta para que no e repita
        
        echo "Copiando: $nombre_original → $nombre_nuevo"
        cp -r "$carpeta" "$Repositorio_Destino$nombre_nuevo"  # Copia recursiva
    fi
done

echo "¡Se completo el copiado!"	
