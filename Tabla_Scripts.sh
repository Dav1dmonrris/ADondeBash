#!/bin/bash

# Script: listar_scripts.sh
# Descripción: Lista los scripts bash disponibles en un directorio específico
# Autor: [Tu nombre]
# Fecha: $(date +%Y-%m-%d)

# --- Configuración inicial ---
HOME_DIR="$HOME"
SCRIPT_DIR="$HOME_DIR/PScrips/ADondeBash/Scripts-Bash"
SEPARATOR="================================================================"

# --- Funciones ---
mostrar_encabezado() {
    clear
    echo "$SEPARATOR"
    echo "******* SCRIPT PARA LISTAR SCRIPTS *********"
    echo "$SEPARATOR"
}

validar_directorio() {
    # Si el directorio no existe mostrara un mensaje de error
    if [ ! -d "$SCRIPT_DIR" ]; then
        echo "Error: El directorio de scripts no existe"
        echo "Directorio esperado: $SCRIPT_DIR"
        exit 1
    fi

    # Si no puedes mirar el contenido del directorio, mostrara un mensaje de error
    if [ ! -r "$SCRIPT_DIR" ]; then
        echo "Error: No tienes permisos para leer el directorio"
        exit 1
    fi
}

listar_scripts() {
    local contador=0
    
    echo -e "\nContenido del directorio de scripts:"
    echo "$SEPARATOR"
    
    # Listar solo archivos con extensión .sh y mostrar información relevante
    while IFS= read -r script; do
        ((contador++))
        echo -e "[$contador] $(basename "$script")"
        echo "   Ruta: $script"
        echo "   Tamaño: $(du -sh "$script" | cut -f1)"
        echo "   Permisos: $(stat -c "%A" "$script")"
        echo "   Última modificación: $(stat -c "%y" "$script")"
        echo "$SEPARATOR"
    done < <(find "$SCRIPT_DIR" -maxdepth 1 -type f -name "*.sh" )

    # Si el directorio esta vacio o no hay scripts, se mostrara un mensaje
    if [ "$contador" -eq 0 ]; then
        echo "No se encontraron scripts (.sh) en el directorio"
    else
        echo "Total de scripts encontrados: $contador"
    fi
}

# --- Ejecución principal ---
mostrar_encabezado
validar_directorio
listar_scripts

exit 0