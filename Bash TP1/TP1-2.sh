#!/bin/bash

while true; do
echo -e "\nChoisir une option: "
echo -e "\n
a. sudo apt-get update\n
b. sudo apt-get upgrade \n
c. sudo apt-get dist-upgrade \n
d. sudo apt-get clean \n
e. quitter \n"

read opt
case $opt in

[Aa] )
sudo apt-get update
;;
[Bb] )
sudo apt-get upgrade
;;
[Cc] )
sudo apt-get dist-upgrade
;;
[Dd] )
sudo apt-get clean
;;
[Ee] )
break
;;
*) echo Option invalide;;
esac
done