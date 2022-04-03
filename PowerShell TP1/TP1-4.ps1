$choix = Read-Host -Prompt "Combien d'elements? "
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
        Write-Host("$elem, $found a ce numero ")
    } 
    else {
        Write-Host("$elem, aucun processus a ce numero")    
    }
}
pause