<#
Filename: TP1-1.ps1
Description:script qui parcourt tous les fichiers txt d'un répertoire donné en argument et qui affiche les 10 premières lignes de chacun de ces fichiers.
Argument: Répertoire a parcourir
Auteur: Ludwig-Emmnanuel Dufour
Variable modifiable: Aucune
Sortie: Les 10 premières lignes d'un fichier texte
#>

$rep = read-host -Prompt "Entrez le répertoire que vous désirez parcourir"

$files = Get-ChildItem $rep -Filter *txt -Name
foreach($file in $files){
    Write-Output "'n$file'"
    Get-Content $rep/$file -head 10 > entete.txt
}
