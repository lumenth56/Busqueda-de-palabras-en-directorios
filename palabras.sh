#!/bin/bash
carpetas=$1
resultado=$(grep -rl "home" "$carpetas" 2>/dev/null)

if [ -z "$resultados"]; then
    echo "No se hayo la palabra home"
    exit 0
fi
