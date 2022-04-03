#!/bin/bash
#Auteur : Ludwig-Emmanuel Dufour
#Description : Indique le nombre le plus petit et grand, parmi les arguments reçus.

#Déclaration d'un tableau tab
tab=() 

while read -p "Nombre à comparé? (chaîne vide pour terminer) " nombre

 do
    regex=$(sed -r 's/[^0-9]+/ /g' <<<$nombre)
    if [ -z $regex ]; then
        break
    fi
        tab+=("$regex")
    
done

max=${tab[0]}
min=${tab[0]}

# Parcourir les éléments du tableau
for i in "${tab[@]}"
do
    # Changer la valeur du max
    if [[ "$i" -gt "$max" ]]; then
        max="$i"
    fi

    # Changer la valeur du min
    if [[ "$i" -lt "$min" ]]; then
        min="$i"
    fi
done

echo "
min=$min
max=$max"

sleep 5
