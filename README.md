# --- Comandos en Bash ---
###  |  *cd*  |
    > cd /home/user/Documentos/Carpeta1; cd -
    
- **cd**   : Se utiliza para desplazarse entre carpetas
- **cd -** : Ingresa a la penultima carpeta
- **cd /home/user**: Ingresa carpetas por rutas
- **cd ..** : Retrocede 1 carpeta

## ---                ---
###  | *ls*  |
    > ls -R /home/user/Documentos

- **ls** : Lista de directorios y archivos 
- **ls -a** : Muestra archivos ocultos
- **ls -t** : Ordena por fechas 
- **ls -R** : Ordena recursivamente los archivos 
- **ls -s** : Ordena por tamaño


## ---                ---
###  | *mv*  |
    > mv Nombre_Archivo.txt Nuevo_Nombre_Archivo.txt

- **mv Archivo.txt N_Archivo.txt** : Renombra archivos
- **mv Carpeta/ N_Carpeta/** : Coloca la carpeta a otra ruta
- **mv Archivo.txt Carpeta/** : Mueve archivos a otras carpetas
- **cp** : Copia archivos o carpetas con la misma sintaxis que "mv"
  
## ---                ---
###  | *mkdir* |
    > mkdir /home/user/Carpeta1/ && cd /home/user/Carpeta1/ && touch Archivo.txt

- **mkdir** : Crea carpetas
- **rmdir** : Elimina carpetas 
- **touch** : Crea archivos con cualquier extension
- **rm** : Elimina archivos


## ---                ---
###  | *file*  |
    > file Archivo.txt && cat Archivo.txt

- **file** : Muestra el tipo de archivo
- **cat** : Muestra el contenido de archivos de texto
- **less** : Muestra el contenido de archivos pesados de texto

## ---                ---
###  | *grep*  |
    > grep "PalabraClave" Archivo.txt; find /home/user -name "*.pdf"

- **grep** : Busca palabras en un archivo de texto
- **find** : Busca archivos y muestra su ruta


