#!/bin/bash
total=cat ./ficheros_scripts/numeros.txt | wc -l

echo "PARES"
for i in seq 1 $total
do
  linea=cat ./ficheros_scripts/numeros.txt | head -n$i | tail -n1
  resto=$((linea%2))
  if [ $resto -eq 0 ]
  then
    echo "$linea es par"
  fi
done

echo "IMPARES"
for i in seq 1 $total
do
  linea=cat ./ficheros_scripts/numeros.txt | head -n$i | tail -n1
    resto=$((linea%2))
    if [ $resto -ne 0 ]
  then
    echo "$linea es impar"
  fi
done