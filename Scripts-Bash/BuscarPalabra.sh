#!/bin/bash

#Ejercicio 5:
#Recibe un archivo y una palabra, muestra cuantas veces aparece

read -p "Ingresa un archivo: " Archivo
read -p "¿Que palabra busca? " Palabra


if [ -f "$Archivo" ]; then
	grep "$Palabra" "$Archivo"
fi
