#!/bin/bash

a=1 

for x in $*; do
	if [ -e $x ]; then
		echo "$x SIM"
	else
		echo "$x NAO"
		a=0
	fi
done

if [ $a -eq 1 ]; then
	echo "Parabéns, mais uma etapa concluída! Está quase lá :)"
fi
