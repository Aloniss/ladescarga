#!/bin/bash

# Nombre del archivo de salida
output_file="specs.txt"

# Elimina el archivo de salida si ya existe
if [ -f "$output_file" ]; then
    rm "$output_file"
fi

# Nombre del computador
echo "Nombre del Computador:" >> "$output_file"
hostname >> "$output_file"

# Características del procesador
echo -e "\nCaracterísticas del Procesador:" >> "$output_file"
cat /proc/cpuinfo | grep "model name" | uniq >> "$output_file"

# Información de la memoria
echo -e "\nMemoria:" >> "$output_file"
free -h >> "$output_file"

# Información del disco duro
echo -e "\nEspacio en Disco:" >> "$output_file"
df -h >> "$output_file"

# Información del sistema operativo
echo -e "\nSistema Operativo:" >> "$output_file"
uname -a >> "$output_file"

# Información de la red (Direcciones IP)
echo -e "\nDirecciones IP:" >> "$output_file"
ifconfig >> "$output_file"

echo -e "\nInformación recopilada correctamente y guardada en $output_file."
