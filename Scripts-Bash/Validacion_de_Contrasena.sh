#!/bin/bash

#Validacion de contraseña
#Al menos 8 caracteres, 1 simbolo y 1 numero

echo -e "Escribe una contraseña con al menos 8 caracteres, 1 numero y1 simbolo\n "
echo "Escribe una contraseña:"
read Password

if [ ${#Password} -gt 7 ]; then

	if [[ "$Password" =~ [0-9] ]]; then
		
		if [[ "$Password" =~ [^a-zA-Z0-9] ]]; then

			echo "========================================================"
			echo -e "\t!Se cumplieron todos los requisitos¡"
			echo "========================================================"

		else
			echo "Error: No tiene simbolo"

		fi
	else
		echo "Error: No tiene numero"

	fi
else
	echo "Error: No tiene 8 caracteres"

fi
