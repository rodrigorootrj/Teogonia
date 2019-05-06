#!/bin/bash
#Adição Matemática dos feijões.
#Calculadora Rudimentar
>memA && >memB && >memC

echo "Diga o numero a adicionar"
read a
echo "Diga o numero a adicionar"
read b
for (( i=$a;i>0;i--)) 
do
	echo "$i">>memA
done	

for (( i=$b;i>0;i--)) 
do
	echo "$i">>memB
done	

cat memA >> memC
c=$(cat memB |wc -l)
echo $c
for (( i=$c;i<$c;i++))
do
echo O resultado do loop c eh: $i
	sed '1d' memC
done

echo "O Resultado da Subtracao eh: " && cat memC |wc -l
echo Limpando a memória:
>memA && >memB && >memC
