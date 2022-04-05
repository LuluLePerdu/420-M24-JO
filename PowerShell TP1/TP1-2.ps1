<#
Filename: TP1-2.ps1
Description : Voir la liste des logs d’application qui se situe entre les deux dates (debut et fin) passées par aguments et 
retourner les résultats dans un fichier nommé sortie.csv (sous le format csv).
Arguments: La date de Début et date de Fin.
Auteur : Ludwig-Emmanuel Dufour
Variable modifiable: Les deux dates.
Sortie: Fichier .csv contenant les logs d'applications entre les deux dates.
#> 
 
[CmdletBinding()]
Param(
  [Parameter(Mandatory=$true)]
   [datetime]$dateDebut,
  [Parameter(Mandatory=$true)]
   [datetime]$dateFin
)

Get-EventLog Application -After $dateDebut -Before $dateFin | ConvertTo-Csv | Out-File .\sortie.csv
