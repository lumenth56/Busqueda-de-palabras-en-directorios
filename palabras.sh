#!/bin/bash
if [ $# -eq 0] || [ $# -gt 2 ]; then
    echo "ERROR, colocaste menos de un argumento o más de dos"
carpetas=${1:-/}
resultados=$(grep -rl -D skip "home" "$carpetas" 2>/dev/null)

if [ -z "$resultados" ]; then
    echo "No se hallo la palabra home"
    exit 0
fi
echo "Archivos con home":
echo "$resultados" | while read -r archivo; do
    realpath "$archivo"
done