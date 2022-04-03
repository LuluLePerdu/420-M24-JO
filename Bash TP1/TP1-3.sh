#!/bin/bash
#Description : Script qui parcourt tous les fichiers txt d'un répertoire donné en argument qui affiche les 10 premières lignes de chacun de ces fichiers.
#Auteur : Ludwig-Emmanuel Dufour

echo "Entrez le répertoire que vous désirez parcourir:"
read repertoire
cd $repertoire

    for fichier in *.txt
    do  
        echo -e "\n${fichier##*/}:" >> ./entête.txt
        echo "">>entête.txt
        head -10 $fichier >> ./entête.txt
      
    done
echo "Toute les 10 premières lignes ont été copiés dans entête.txt"
sleep 4
