#!/bin/bash

# Ejercicio 4:
contador=1
while [ $contador -le 10 ]; do
	echo $contador
	((contador++))
done
