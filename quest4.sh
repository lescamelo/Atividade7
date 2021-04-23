#!/bin/bash


while read x; do
	ping -c 1 $x &> /dev/null
	if (( $? > 0)); 
	then
		echo $x >> erro.txt
	fi
done < ips.txt

if [ -f nosucess.txt ]; 
then
	x=$(wc -l erro.txt | cut -c 1)
else
	x=0
fi

if [ $x -gt 0 ]; 
then
	echo "Ips que não foram feitos testes de ping com sucesso."
	cat nosucess.txt
else
	echo "Finalizados testes de ping com sucesso."
fi
