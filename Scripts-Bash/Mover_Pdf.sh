#!/bin/bash

# Variables con las rutas de los directorios
origen="$HOME/OrigenPDF"
destino="$HOME/DestinoPDF"

# Mueve todos los archivos con .pdf de la carpeta Origen a la carpeta Destino
mv "$origen"/*.pdf "$destino"/

echo "=============================================================================="
echo "Se movieron de $origen a $destino mi crack"
echo "=============================================================================="

