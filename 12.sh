#!/bin/bash

a=$(ls)

echo -e "\nDIRS------------------------"
for i in $a; do
	if [ -d "$i" ]; then
		echo "$i"
	fi
done

echo -e "\nFILES-----------------------"
for i in $a; do
	if [[ -f "$i" && ! -h "$i" ]];then
		echo "$i"
	fi
done

echo -e "\nLINKS-----------------------"
for i in $a; do
	if [ -h "$i" ]; then
		echo "$i"
	fi
done	
