# Renders all .qmd files in a blog series inside an isolated venv, then removes the venv.
# Keeps the system Python pristine (no global installs).
# Writes a "<Series>-render.done" marker (OK/FAIL) so it can run in background.
#
# Usage (from repo root or anywhere):
#   .\blog\render-series.ps1 cs5805-fall-2023
#   .\blog\render-series.ps1 hhl-qiskit -KeepVenv   # keep .venv for debugging
param(
  [Parameter(Mandatory = $true)][string]$Series,
  [switch]$KeepVenv
)

$ErrorActionPreference = 'Stop'
$root = 'C:\Users\14637\Desktop\shortcuts\ZhangQingsen.github.io'
$dir = Join-Path $root "blog\$Series"
$marker = Join-Path $root "blog\$Series-render.done"

function Finish([string]$status) {
  Set-Content -Path $marker -Value "$status $(Get-Date -Format o)"
}

try {
  if (-not (Test-Path $dir)) { throw "Series dir not found: $dir" }
  if (-not (Test-Path (Join-Path $dir 'requirements.txt'))) { throw "No requirements.txt in $dir" }

  Set-Location $dir
  $venv = Join-Path $dir '.venv'
  if (-not (Test-Path $venv)) {
    Write-Output '[1/4] Creating venv...'
    python -m venv $venv
  } else {
    Write-Output '[1/4] Reusing existing venv...'
  }
  $py = Join-Path $venv 'Scripts\python.exe'

  Write-Output '[2/4] Installing dependencies (this may take a while)...'
  & $py -m pip install --upgrade pip --quiet
  & $py -m pip install -r requirements.txt --quiet
  if ($LASTEXITCODE -ne 0) { throw 'pip install failed' }

  Write-Output '[3/4] Rendering with Quarto (venv Python on PATH)...'
  # Register the venv's own Jupyter kernel so Quarto executes with the venv Python
  # (a bare/system kernel would lack the project dependencies).
  & $py -m pip install ipykernel --quiet
  & $py -m ipykernel install --prefix $venv --name python3 --quiet
  $env:JUPYTER_PATH = (Join-Path $venv 'share\jupyter')
  $env:PATH = (Join-Path $venv 'Scripts') + ';' + $env:PATH
  # user_exec / background sessions inherit a stale PATH snapshot without the new
  # Quarto install; always use the explicit absolute path.
  $quartoExe = 'C:\Program Files\Quarto\bin\quarto.exe'
  if (-not (Test-Path $quartoExe)) { throw 'Quarto not found at C:\Program Files\Quarto\bin' }
  & $quartoExe render
  if ($LASTEXITCODE -ne 0) { throw 'quarto render failed' }

  Write-Output '[4/4] Done.'
  if (-not $KeepVenv) {
    Remove-Item -Recurse -Force $venv
    Write-Output 'venv removed.'
  }
  Finish 'OK'
}
catch {
  Write-Output "ERROR: $($_.Exception.Message)"
  Finish 'FAIL'
  exit 1
}
Set-Location $root
