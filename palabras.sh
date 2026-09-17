#!/bin/bash
carpetas=$1
resultado=$(grep -rl "home" "$carpetas" 2>/dev/null)
