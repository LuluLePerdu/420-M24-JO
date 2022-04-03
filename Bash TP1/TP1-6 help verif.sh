#!/bin/bash
    echo "entrez le repertoire"
    read $1
    echo "entrez la taille de l'image"
    read $2
    echo "Entrez le repertoire des nouvelles images"
    read $3

    cd $1

    for i in $1/*; do
        if [[ $i == *.png || $i == *.gif || $i == *.jpg ]]; then
            echo $i en traitement...
        convert $i -resize $2x$2 $3/${i%.*}.jpg
    fi
done