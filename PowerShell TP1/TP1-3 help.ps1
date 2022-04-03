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
