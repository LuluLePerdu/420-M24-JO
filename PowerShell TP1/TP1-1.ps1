<#





#>
$rep = read-host -Prompt "Entrez le répertoire que vous désirez parcourir"

$files = Get-ChildItem $rep -Filter *txt -Name
foreach($file in $files){
    Write-Output "'n$file'"
    Get-Content $rep/$file -head 10
}