

[CmdletBinding()]
Param(
  [Parameter(Mandatory=$true)]
   [datetime]$dateDebut,
  [Parameter(Mandatory=$true)]
   [datetime]$dateFin
)

Get-EventLog Application -After $dateDebut -Before $dateFin | ConvertTo-Csv | Out-File .\sortie.csv
pause