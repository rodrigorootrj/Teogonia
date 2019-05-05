#!/bin/bash
#trap "set +x;sleep 5; set -x" DEBUG
source Variaveis/V0
#cat $_dir/$_arq
echo -e "Usuário\tUid\tDir Home\tNome Ou Descrição"
for i in $(cat $_dir/$_arq |cut -d ":" -f3)
do

	if [ "$i" -ge 1000 ];	
echo $i
	then
	echo -n "$(cat $_dir/$_arq |cut -d ":" -f1)"
 
fi
done
