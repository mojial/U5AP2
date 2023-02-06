#!/bin/bash

total='cat listado.txt | wc -l'
linux=0
windows=0
linux_u=0
windows_u=0

for i in 'seq 1 $total'
do
    linea='cat listado.txt | head -n$i | tail -n1'
    so='echo $linea | awk '{print $2}''
    proc='echo $linea | awk '{print $3}''
    if [ $so = "Linux" ]
    then
        linux=$((linux+proc))
        linux_u=$((linux_u+1))
    else
        windows=((windows+proc))
        windows_u=((windows_u+1))
    fi
done

echo "Linux --> $linux proc y $linux_u users"
echo "Windows --> $windows proc y $windows_u users"