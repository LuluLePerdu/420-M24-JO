<#
Filename: TP1-4.ps1
Description : Ajoute dans un tableau, un nombre aléatoire et vérifie si un processus est lié à cette id.
Auteur : Ludwig-Emmanuel Dufour
Variable modifiable: Choix de l'utilisateur
Sortie: Les nombres générées et s'il sont égal à un id de processus
#> 

$choix = Read-Host -Prompt "Combien d'élements? "
$tab = @()
for($i = 0; $i -lt $choix; $i++){
    $tab += Get-Random -Maximum 65536
}
$id = Get-Process | Select-Object Id,Name
foreach($elem in $tab){
    $found = "aucun"
    foreach ($process in $id){
        if ($elem -eq $process.id) {
            $found = $process.name
        }
    }
    if($found -ne "aucun"){
        Write-Host("$elem, $found à ce numero ")
    } 
    else {
        Write-Host("$elem, aucun processus n'a ce numéro")    
    }
}

