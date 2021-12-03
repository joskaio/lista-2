#!/bin/bash

echo -e "*Redirecionamentos de saída"

echo -e "\n>: É o redirecionador que envia o conteúdo para um arquivo."

echo -e "\n*ex: ls > arq.txt"
echo -e "cat arq.txt"

ls > arq.txt
cat arq.txt

echo -e "\n- Observamos que o conteúdo do comando 'ls' foi direcionado para o arquivo 'arq.txt'."

echo -e "\n>>: É o redirecionador que acrescenta o conteúdo em um arquivo."

echo -e "\n*ex: echo 'Programação de Scripts' >> aluno.txt"
echo -e "cat aluno.txt"

echo Programação de Scripts >> aluno.txt
cat aluno.txt

echo -e "\n- Vimos que o redirecionador adicionou mais uma informação ao arquivo."

echo -e "\n2>: É o redirecionador que envia o erro para um arquivo."

echo -e "\n*ex: cat doc.txt 2> erro.txt"
echo -e "cat erro.txt"

cat doc.txt 2> erro.txt
cat erro.txt

echo -e "\n- Nesse exemplo, o arquivo 'doc.txt' não existe, sendo assim, não é possível exibir o seuconteúdo. O redirecionador retornou o erro para o arquivo 'erro.txt'"

echo -e "\n2>>: Este redirecionador adiciona os erros em um arquivo que já possui conteúdo."

echo -e "\ncat curso.txt 2>> erro.doc"

cat curso.txt 2>> erro.doc

echo -e "\n- Podemos observar que o arquivo 'erro.doc' já tinha uma informação antes do redirecionamento de erros. Este redirecionador só fez acrescentar o erro."

echo -e "\n&>: É o redirecionador que exibe tanto a saída padrão, quanto a saída de erro."

echo -e "cat distr.txt &> SO.txt"
echo -e "cat SO.txt"
echo -e "cat windows.txt &> SO.txt"
echo -e "cat SO.txt"

cat distr.txt &> SO.txt
cat SO.txt
cat windows.txt &> SO.txt
cat SO.txt

echo -e "\n- No exemplo acima, podemos ver que o redirecionador moveu a saída de acerto e a saída deerro."

echo -e "\n&>>: É o redirecionador que acrescenta as saídas de acertos e erros em um arquivo que já possui conteúdo."

echo -e "\ncat distr.txt &>> gnu.txt"
echo -e "cat win11.txt &>> gnu.txt"
echo -e "cat gnu.txt"

cat distr.txt &>> gnu.txt
cat win11.txt &>> gnu.txt
cat gnu.txt

echo -e "\n- Além do conteúdo existente do arquivo, o redirecionador moveu o conteúdo do arquivo 'distr.txt' e o erro do comando cat, pois o arquivo 'win11.txt'' não existe."

echo -e "\n*Redirecionamentos de entrada"

echo -e "\n<: É o redirecionador que exibe o conteúdo de um arquivo para um comando."

echo -e "\n*ex: wc -l < aluno.txt"

wc -l < aluno.txt

echo -e "\n- Foi exibido a quantidade de linhas do arquivo através do redirecionador."

echo -e "\n<<: É o redirecionador que exibe o conteúdo através de uma informação. Para isso, o usuário deve especificar qual informação servirá de parâmetro."

echo -e "\n*ex: echo 'Debian' << debian"
echo -e ">ubuntu"
echo -e ">centos"
echo -e ">debian"
echo -e "Debian"

echo -e "\nAo colocar o parâmetro, foi executado um shell secundário. Cabe ao usuário inserir as informações até chegar no marcador. No exemplo acima, a palavra 'Debian' foi exibida ao chegar na palavra parâmetro (debian)."

echo -e "\n<<<: É o redirecionador que exibe o conteúdo de um arquivo para um comando. Ele utiliza um texto como parâmetro."

echo -e "\n*ex: wc -w <<< "redes de computadores""
echo -e ">3"

wc -w <<< "redes de computadores"

echo -e "\nNo exemplo, observamos que o comando exibiu a quantidade de palavras do parâmetro inserido pelo usuário. É importante lembrar que o conteúdo deve estar entre aspas."

echo -e "\n|: É o redirecionador que utiliza dois comandos (um de entrada e um de saída) como parâmetros para retornar o conteúdo".

echo -e "\necho 'Linux' | tr 'x' 's'"

echo "Linux" | tr "x" "s"

echo -e "\nNesse exemplo, o comando tr trocou o caractere 'x' pelo 's' do conteúdo do echo. O conteúdo do comando echo se torna a entrada do comando tr, assim o comando tr não precisa esperar nenhuma interação do usuário."
