#!/bin/bash
#Autor Rodrigo Cunha
#Data:19/04/2019
#Quebra Arquivos CSV em pequenos arquivos de Texto.
source ./Variaveis/V0
#echo $_vlinhas $__vfile
#File eh o arquivo que contem o csv
_first=$( head -n1 $_vfile)
echo "Em Quantas Linhas Deseja o Split"
read _aux
split -d -l $_aux  $_vfile ./Documentos/Arquivos/output/arq
_a=$(ls  ./Documentos/Arquivos/output |wc -l)
_i=$(echo "$_a" -1 | bc)
#Loop
_vlocal=$(head -n 1 $_vfile)
echo $_vlocal
echo $_i
for ((i=0; i<= $_i ; i++)) 
do

	if [ $i -lt 10 ];

then

		echo "$_vlocal" >tmp && cat ./Documentos/Arquivos/output/arq0$i >>tmp && cat tmp >./Documentos/Arquivos/output/arq0$i
	fi
if [ $i -ge 10 ];
then
		echo "$_vlocal" >tmp && cat ./Documentos/Arquivos/output/arq$i >>tmp && cat tmp >./Documentos/Arquivos/output/arq$i
fi

done


