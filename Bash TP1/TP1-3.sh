#!/bin/bash
#filename:TP1-3.sh
#Auteur: Ludwig-Emmanuel Duofur
#Description : Script qui parcourt tous les fichiers txt d'un répertoire donné en argument 
#et qui affiche les 10 premières lignes de chacun de ces fichiers dans le fichier entêtes.txt:
#Arguments: Répertoire choisie
#Variable modifiable: i = fichier en cours


> ./entete.txt
for i in $1/*; do
if [[ $i =~ ".txt" ]]; then
    echo -e "\n${i##*/}:" >> ./entete.txt
        head -10 $i >> ./entete.txt
fi        
done
