#!/bin/bash

read -p "Informe 4 números com casas decimais: " -r -a y

n_menor=${y[0]}

for n in ${y[@]};
do
	n_menor=$(echo "scale=1;if($n < $n_menor) $n else $n_menor" | bc)
done

echo "O menor número é: $n_menor"
