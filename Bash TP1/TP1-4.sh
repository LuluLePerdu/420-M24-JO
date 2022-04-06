#!/bin/bash
# filename: TP1-4.sh
# Description: Regarde si des nombres aléatoires sont des id de processus
# Arguments: Aucun
# Auteur: Ludwig-Emmanuel Dufour
# Variable modifiable: Le nombres de nombres aléatoires 

declare -a tab

echo "Je demande un chiffre"
read varchiffre

for((i=1;i<=$varchiffre;i++)); do
    tab+=( "$RANDOM" )
done
#Parcourir le tableau, vérifier si un PID existe avec le même numéro des nombres aléatoires
for i in ${tab[@]}; do
    pid=$(ps -o pid= $i)
    name=$(ps -p $i -o comm=)
	if [[ !  ( -z $pid ) ]]; then
		echo "$i, $name est un processus"
	else 
        echo "$i n'est pas un processus"
	fi
done
