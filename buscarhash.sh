#!/bin/bash

# Solicitar la ruta de la carpeta al usuario
read -p "Por favor, ingresa la ruta de la carpeta: " folder_path

# Solicitar el hash MD5 que deseas buscar
read -p "Por favor, ingresa el hash MD5 que estás buscando: " target_hash

# Usar find y md5sum para buscar archivos y comparar los hashes
find "$folder_path" -type f -exec md5sum {} \; | grep "$target_hash"
