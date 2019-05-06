#!/bin/bash
#Adição Matemática dos feijões.
#Calculadora Rudimentar
>memA && >memB && >memC

echo "Diga o numero a adicionar"
read a
echo "Diga o numero a adicionar"
read b
>memA && >memB && memC
for (( i=$a;i>0;i--)) 
do
	echo "$i">>memA
done	


for (( i=$b;i>0;i--)) 
do
	echo "$i">>memB
done	
cat memA >> memC && cat memB >> memC
echo "O Resultado da Soma é: "&& cat memC |wc -l
echo Limpando a memória:
>memA && >memB && >memC
