#!/bin/bash

$total='cat nombres.txt | wc -l'

for i in 'seq 1 $total'
do
  nombre='cat nombres.txt | head -n$i | tail -n1'
  mkdir $nombre
  for i in 'seq 1 $1'
  do
    mkdir ./$nombre/persona1$j
  done
done