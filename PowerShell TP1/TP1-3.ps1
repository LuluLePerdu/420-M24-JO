<# 
Description : Plus de détail (nom, id, taille en mémoire centrale, nombre de threads) sur un processus passé en ligne de commande.
Auteur : Ludwig-Emmanuel Dufour
#> 

[CmdletBinding()]
Param(
  [Parameter(Mandatory=$true)]$demande
)
if ($demande -Match "^\d+$")
{
    Get-Process | Where-Object {$_.Id -eq "$demande"} | Select-Object ProcessName,Id,VM,Threads
}
else
{
    Get-Process | Where-Object {$_.ProcessName -eq "$demande"} | Select-Object ProcessName,Id,VM,Threads
}
