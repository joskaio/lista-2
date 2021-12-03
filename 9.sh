#!/bin/bash

read -p "Informe 2 números: " a b

n1=$(($a+1))
n2=$(($b-1))

adicao=0

for ((i=$n1; i<=$n2; i++)); do
	adicao=$(($adicao+$i))
done

echo "O resultado é $adicao!"
