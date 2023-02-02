#!/bin/bash

num_subdirs=$1

if [ -z "$num_subdirs" ]; then
  echo "Error: debe proporcionar el número de subdirectorios personal como argumento."
  exit 1
fi


if [ ! -f "nombres.txt" ]; then
  echo "Error: no se encontró el fichero nombres.txt."
  exit 1
fi


while read nombre; do
  mkdir -p "$nombre"
  for i in $(seq 1 "$num_subdirs"); do
    mkdir -p "$nombre/Personal $i"
  done
done < nombres.txt

echo "La estructura de directorios se ha creado exitosamente."