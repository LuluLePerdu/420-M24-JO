#!/bin/bash
#Description : Inscrire en ordre décroissant, le nom et la taille des fichiers dans le répertoire et les sous-répertoires.
#Auteur : Ludwig-Emmanuel Dufour

ls --sort=size -s1 $(find -type f)
