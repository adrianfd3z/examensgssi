#!/bin/bash

# Definir las rutas de origen y destino
origen="/$HOME/Seguridad"
destino="/var/tmp/Backups/"

# Obtener la fecha en el formato deseado (por ejemplo, YYYY-MM-DD)
fecha=$(date +"%Y-%m-%d")

# Crear una carpeta de respaldo con la fecha actual
mkdir -p "$destino/$fecha"

# Ejecutar rsync para realizar la copia de seguridad incremental
rsync -av --link-dest="$destino/$(date -d yesterday '+%Y-%m-%d')" "$origen" "$destino/$fecha"
