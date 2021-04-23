#!/bin/bash

while true; do
	echo "Help Test: "
	echo -e "Operadores Lógicos informe L: \nOperadores Aritiméticos informe A:\nOperadores de Strings informe S: \nOperadores de Variáveis informe V: \nOperadores de Arquivos informe: AA \nOperadores Extended informe E: \nPara sair informe SAIR:\n"
	read -p "Informe a opção desejada: "  opt
	case ${opt} in
		'L')
			echo "--"
			echo  "Operadores Lógicos."
                	echo ""
                	echo " ! NÃO lógico (NOT)"
                	echo " -a E lógico (AND)"
                	echo " -o OU lógico (OR)"
                	echo ""
			;;
		'A')
			echo "Operadores para Comparação Númerica."
                	echo ""
                	echo " -lt Compara se é menor que."
                	echo " -gt Compara se é maior que."
               		echo " -le Compara se é menor igual."
               		echo " -ge Compara se é maior igual."
                	echo " -eq Compara se é igual."
                	echo " -ne Compara se é diferente."
                	echo ""
			;;
		'S')
			echo "Operadores para Comparação de Strings."
                	echo ""
                	echo " = Compara se a string é igual."
                	echo " != Compara se a string é diferente."
               		echo ""
			;;
		'V')
			echo "Operadores para Comparação de Variáveis."
                	echo ""
                	echo " -n Compara se é não nula."
                	echo " -z Compara se é nula."
                	echo ""
			;;
		'AA')
			echo "Alguns operadores de comparação de arquivos."
               		echo " -G Compara se o grupo do arquivo é o do usuário atual."
               		echo " -k Compara se o sticky-bit está ativado."
                	echo " -L Compara se o arquivo é um link simbólico."
                	echo " -O Compara se o dono do arquivo é o usuário atual."
                	echo " -p Compara se o  arquivo é um named pipe."
                	echo " -r Compara se o arquivo tem permissão de leitura."
                	echo " -s Compara se o tamanho do arquivo é maior que zero."
                	echo " -S Compara se o arquivo é um socket."
                	echo " -t Compara se o descritor de arquivos N é um terminal."
                	echo " -u Compara se o bit SUID está ativado."
                	echo " -w Compara se o arquivo tem permissão de escrita."
                	echo " -x Compara se o arquivo tem permissão de execução."
			;;
		'E')
			echo "Colchetes '[[ ]]', é uma versão aprimorada (ou extensão) da versão posix padrão."
			;;
		'SAIR') break ;;
		*)
			echo "Encerrando o menu Test."

	esac

done
