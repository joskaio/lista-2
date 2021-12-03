#!/bin/bash

read -p "Escreva o nome de quatro arquivos: " a b c d

l=0
m=""

for x in $a $b $c $d; do
	if [ -e "$x" ]; then
		if (( $(wc -l < "$x") >= $l )); then
			l=$(wc -l < "$x")
			m="$x"
		fi
	else
		echo "ERRO: O arquivo - $x - não foi encontrado!"
		exit
	fi
done

echo "O arquivo $m possui a maior quantidade de linhas!"
		
