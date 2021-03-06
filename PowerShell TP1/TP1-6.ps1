<#
Filename: TP1-6.ps1
Description : Lister les disques, l'espace disponible, l'espace utilisé, le pourcentage d'utilisation et la capacité maximale totale pour chacun d'eux.
Exporter le résultat dans un fichier HTML nommé fichier.html.
Arguments: Aucun
Auteur : Ludwig-Emmanuel Dufour
Variable modifiable: Aucune
#>

Get-PsDrive | Select-Object Name,Free,@{Name = "Total"; Expression = {$_.free + $_.used}},@{Name="Pourcentage"; Expression = {$_.used / ($_.free + $_.used) * 100}} | ConvertTo-Html | Out-File fichier.html
