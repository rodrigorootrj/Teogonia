#!/bin/bash
#Autor:Rodrigo Cunha
#Objetuvo: Alterar Arquivos
source ./Variaveis/V0
source ./Variaveis/V1
echo "Procedimentos[A]
A:Remover Linhas em Branco do Final do Arquivo.
B:Extrair primeiro e ultimo nome de usuario.
C:Remover ultimo Caractere da string
D:Substituir \".\" por \",\".
"
read _lv1
export _lv1="$_lv1"
source ./Modulos/M0
echo Core: $_lv1
