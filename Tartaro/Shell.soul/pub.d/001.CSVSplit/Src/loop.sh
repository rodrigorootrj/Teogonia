#!/bin/bash
#Autor:Rodrigo Cunha
#Piace For - loop
for ((i=1; i<=3; i++)); do
	  echo "letra;numero;letra;numero" >tmp && cat arq[$i] >>tmp && cat tmp >arq[$i]
done

