#!/bin/bash

log="
Lógica:
	test ( parâmetro ) -> retorna True se o parêmetro é verdadeiro
	test ! parâmetro -> retorna True se o parâmetro for falso
	test parametro1 -a parametro2 -> retorna True se ambos parâmetros forem verdadeiros
	test parametro1 -o parametro2 -> retorna True se pelo menos um dos parâmetros for verdadeiro
"
arit="
Aritmética
	test int1 -eq int2 -> retorna True se os inteiros são iguais
	test int1 -ne int2 -> retorna True se os inteiros são diferentes
	test int1 -gt int2 -> retorna True se int1 for maior que int2
	test int1 -ge int2 -> retorna True se int1 for maior ou igual a int2
	test int1 -lt int2 -> retorna True se int1 for menor que int2
	test int1 -le int2 -> retorna True se int1 for menor ou igual a int2
"

str="
Strings:
	test -n str -> retorna True se o texto não estiver vazio
	test -z str -> retorna True se o texto está vazio
	test str_1 = str_2 -> retorna True se os textos são iguais
	test str_1 != str_2 -> retorna True se os textos são diferentes
"

arq="
Arquivos:
	test -b file -> retorna True se o arquivo for um bloco de dados especial
	test -c file -> retorna True se o arquivo for um caractere especial
	test -d file -> retorna True se o arquivo for um diretório
	test -e file -> retorna True se o arquivo existe
	test -f file -> retorna True se o arquivo for um arquivo normal
	test -L file -> retorna True se o arquivo for um link simbólico
	test -k file -> retorna True se o arquivo for um sticky bit
	test -O file -> retorna True se o proprietário do arquivo for o usuário atual
	test -r file -> retorna True se o arquivo o conteúdo do arquivo pode ser exibido
	test -w file -> retorna True se o arquivo pode ser modificado
	test -x file -> retorna True se o arquivo pode ser executado
	test -s file -> retorna True se o tamanho do arquivo é maior que zero
	test -N file -> retorna True se o arquivo foi modificado desde a última leitura
	
"
var="
Variáveis:
	test -v varia -> retorna True se a variável existe
	test -R var -> retorna True se a variável existe e é um nome de referência
"

if [ $1 == "logica" ] || [ $1 == "lógica" ]; then
	echo $log

elif [ $1 == "aritmetica" ] || [ $1 == "aritmética" ]; then 
	echo $arit

elif [ $1 == "strings" ]; then 
	echo $str

elif [ $1 == "arquivos" ]; then
	echo $arq

elif [ $1 == "variaveis" ] || [ $1 == "variáveis" ]; then
	echo $var

else
	echo "ERRO: Opção incorreta!!"
fi	

