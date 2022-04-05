#!/bin/bash

    for i in $1/*; do
        if [[ $i == *.png || $i == *.gif || $i == *.jpg ]]; then
            echo $i en traitement...
            convert $i -resize $2x$2 $3/${i%.*}.jpg;
        fi
done