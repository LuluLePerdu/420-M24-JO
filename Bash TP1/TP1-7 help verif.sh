#!/bin/bash

> sortie.txt
for u in $PWD/*;do
j=$(find . -type f -name ${u##*/} -printf "%p-")

IFS='-'

read -ra tab <<< "$j"

if [[ ${#tab[@]} -gt 1 ]]; then
	echo " " >> sortie.txt
	echo "${u##*/}:" >> sortie.txt
	for i in "${tab[@]}"; do
		echo "$i" >> sortie.txt
	done
fi
done