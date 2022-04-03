Get-ChildItem . -Recurse -File | Sort-Object -Descending Length | Select-Object Length,Name
