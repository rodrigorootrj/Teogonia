#!/bin/bash
#Autor Rodrigo Cunha - rodrigo.root.rj@gmail.com
. tmp
arq="arquivo"
head=1
tail=$(cat $arq |wc |awk -F' ' '{print $1 }')
command="hostname && date"
commandt="date -s "00:00""
>tmp
for i in $( seq ${head} ${tail})
do
aux=$(sed -n ''$i'p' $arq)
echo Metadado[$i]='"'$aux'"' >> tmp
echo ${Metadado[$i]}
done

for i in $(seq ${head} ${tail})
do
ssh -o ConnectTimeout=3 root@${Metadado[$i]}  "$command"
done
