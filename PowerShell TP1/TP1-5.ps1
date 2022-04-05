<#
Filename: TP1-5.ps1
Description : Rechercher dans le répertoire en cours et enfant tous les fichiers et inscrire en ordre décroissant, le nom et la taille du fichier.
Auteur : Ludwig-Emmanuel Dufour
Argument: Aucun.
Variable modifiable: Aucune.
#>

Get-ChildItem . -Recurse -File | Sort-Object -Descending Length | Select-Object Length,Name
