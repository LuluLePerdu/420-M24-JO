#!/bin/bash
#En bash, créer un script qui parcourt tous les fichiers txt d'un répertoire donné en argument 
#et qui affiche les 10 premières lignes de chacun de ces fichiers de façon suivante dans le fichier entêtes.txt:

    for fichier in 1*.txt
    do  
        echo -e "\n${fichier##*/}:" >> ./entête.txt
        echo "">>entête.txt
        head -10 $fichier >> ./entête.txt
    done
echo "Toute les 10 premières lignes ont été copiés dans entête.txt"
sleep 4
