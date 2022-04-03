Clear-Content .\sortie.txt
foreach ($i in Get-ChildItem){
    $array= Get-ChildItem -Recurse | Select-Object Name,FullName | Where-Object Name -Match $i
    if ($array.Length -gt 1){
        Add-Content .\sortie.txt ($i.name + ":")
        foreach ($j in $array){
            Add-Content .\sortie.txt $j.fullname
        }
        Add-Content .\sortie.txt "....`n"
    }
}
pause