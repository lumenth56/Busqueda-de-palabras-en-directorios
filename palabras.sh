#!/bin/bash
carpetas=$1
grep -rl "home" "$carpetas" 2>dev/null
