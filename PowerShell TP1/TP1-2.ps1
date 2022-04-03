<#
Description : Voir la liste des logs d’application qui se situe entre les deux dates (debut et fin) passées par aguments et 
retourner les résultats dans un fichier nommé sortie.csv (sous le format csv).
Auteur : Ludwig-Emmanuel Dufour
#> 
 
[CmdletBinding()]
Param(
  [Parameter(Mandatory=$true)]
   [datetime]$dateDebut,
  [Parameter(Mandatory=$true)]
   [datetime]$dateFin
)

Get-EventLog Application -After $dateDebut -Before $dateFin | ConvertTo-Csv | Out-File .\sortie.csv
