#!/bin/bash

for (( i=1; i<=108; i+=2 )); do echo $i; done

read -p "Insira o primeiro número: " y
read -p "Insira o segundo número: " z
a=$y
b=$z
s=2
SO=$(( j + k ))
RE=$(( SO % s ))

if [ $RE == 0 ]; then
	y=$(( y + 1 ))
	for (( i=y; i<=z; i+=2 )); do echo $i; done
else
	for (( i=y; i<=z; i+=2 )); do echo $i; done
fi
