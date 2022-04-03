Get-PsDrive | Select-Object Name,Free,@{Name = "Total"; Expression = {$_.free + $_.used}},@{Name="Pourcentage"; Expression = {$_.used / ($_.free + $_.used) * 100}} | ConvertTo-Html | Out-File fichier.html
pause