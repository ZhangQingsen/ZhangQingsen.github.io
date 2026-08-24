# Launches render-series.ps1 in a hidden background process so long installs
# are not killed by the 120s command timeout. Poll with:
#   Get-Content blog\<Series>-render.log -Tail 25
#   Test-Path blog\<Series>-render.done
param(
  [Parameter(Mandatory = $true)][string]$Series,
  [switch]$KeepVenv
)

$base = 'C:\Users\14637\Desktop\shortcuts\ZhangQingsen.github.io'
$log = Join-Path $base "blog\$Series-render.log"
$err = Join-Path $base "blog\$Series-render.err.log"
$done = Join-Path $base "blog\$Series-render.done"
Remove-Item $log, $err, $done -ErrorAction SilentlyContinue

$script = Join-Path $base 'blog\render-series.ps1'
$args = @('-NoProfile', '-ExecutionPolicy', 'Bypass', '-File', $script, $Series)
if ($KeepVenv) { $args += '-KeepVenv' }

Start-Process powershell -ArgumentList $args `
  -RedirectStandardOutput $log -RedirectStandardError $err -WindowStyle Hidden

Write-Output "Background render started for '$Series'."
Write-Output "Log: $log"
Write-Output "Poll: Get-Content '$log' -Tail 25  /  Test-Path '$done'"
