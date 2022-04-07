<#
Filename: TP1-1.ps1
Description:script qui parcourt tous les fichiers txt d'un répertoire donné en argument et qui affiche les 10 premières lignes de chacun de ces fichiers.
Argument: Répertoire a parcourir
Auteur: Ludwig-Emmnanuel Dufour
Variable modifiable: Aucune
Sortie: Les 10 premières lignes d'un fichier texte
#>

Set-Location $args[0]

if(Test-Path entete.txt {
    remove-Item -Path entete.txt
}

foreach ($i in Get-Content -totalCount 10 *.txt {
Add-Content -Path entete.txt -Value $i
}
cd..
