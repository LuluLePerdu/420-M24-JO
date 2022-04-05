<# 
Filename: TP1-3.ps1
Description : Plus de détail (nom, id, taille en mémoire centrale, nombre de threads) sur un processus passé en ligne de commande.
Argument: Aucun
Variable modifiable: Le processus demandé.
Auteur : Ludwig-Emmanuel Dufour
Entré: Le processus
Sortie: Les infos du processus
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
