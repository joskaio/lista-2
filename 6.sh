#!/bin/bash

z=$1

if [ ! -e $z ] ||  (( $(wc -l < $z) > 3 )); then
	echo "BAD"
else
	echo "O arquivo é $z!"
	tail -n 1 $z	
fi	
