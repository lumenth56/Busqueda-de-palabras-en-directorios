#!/bin/bash
carpetas=$1
resultado=$(grep -rl "home" "$carpetas" 2>/dev/null)

if [ -z "$resultados"]; then
    echo "No se hallo la palabra home"
    exit 0
fi
echo "Archivos con home":
echo "$resultados" | while read -r archivo; do
    realpath "$archivo"
done