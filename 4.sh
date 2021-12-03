#!/bin/bash

a=$1
b=$2
c=$3

[[ -e /home/ifpb/rascunhos/$a ]] && echo "SIM" || echo "O diretório $a não foi encontrado o_O"
[[ -e /home/ifpb/rascunhos/$b ]] && echo "SIM" || echo "O diretório $b não foi encontrado o_O"
[[ -e /home/ifpb/rascunhos/$c ]] && echo "SIM" || echo "O diretório $c não foi encontrado o_O"
