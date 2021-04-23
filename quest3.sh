#!/bin/bash

while true; do
	echo -e "Menu de opções: \nPara sair do menu: q \nPara mostrar o diretório da pasta atual: d \nPara exibir os arquivos da pasta atual: f \nPara exibir o conteúdo do arquivo <arq>: v<arq> \nPara mudar pro diretório <dir>: cd<dir>\n"
	read -p "Informe a opção desejada: " opt
	case ${opt} in
		'd')
			echo "Informando diretórios:"
			for i in $(ls);
			do
				if test -d ${i};
				then
					echo ${i}
				fi
			done
			echo "---"
			;;
		'f')
			echo "Informando arquivos da pasta atual:"
			for i in $(ls);
			do
				if test -f ${i}; 
				then
					echo ${i}
				fi
			done
			echo "---"
			;;
		'v')
			read -p "Informe o nome do arquivo: " arq
			if [ -f $arq ];
			then
				cat $arq
			fi
			;;
		'cd')
			read -p "Digite o nome do diretório: " dir
			if [ -d $dir ] 
			then
				cd $dir
			fi
			;;
		'q') 
			echo "Finalizando menu."
			break
			;;

	esac
done
