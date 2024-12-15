if (!$ENV:SCOOP_HOME) { $ENV:SCOOP_HOME = Resolve-Path (scoop prefix scoop) }
$checkver = "$ENV:SCOOP_HOME/bin/checkver.ps1"
$dir = "$PSScriptRoot/.."
Invoke-Expression -command "& '$checkver' -dir '$dir' $($args | ForEach-Object { "$_ " })"
