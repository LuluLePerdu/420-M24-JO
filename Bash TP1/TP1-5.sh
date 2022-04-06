#!/bin/bash
# filename: TP1-5.sh
# Description: Trie par ordre de taille décroissant, les fichiers d'un répertoire
# Arguments: Aucun
# Auteur: Ludwig-Emmanuel Dufour
# Variable modifiable: Aucune

ls --sort=size -s1 $(find -type f)
