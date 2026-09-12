$ErrorActionPreference = "Stop"
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $ScriptDir

$PythonExe = Join-Path $ScriptDir ".venv\Scripts\python.exe"

if (-not (Test-Path $PythonExe)) {
    Write-Host "[ERROR] Virtual environment .venv not found." -ForegroundColor Red
    exit 1
}

Write-Host "========================================================" -ForegroundColor Cyan
Write-Host "  Starting [Chent Wiki] Knowledge Base..." -ForegroundColor Green
Write-Host "  URL: http://127.0.0.1:8000/wiki/" -ForegroundColor Yellow
Write-Host "  Press Ctrl + C to stop the server." -ForegroundColor Cyan
Write-Host "========================================================" -ForegroundColor Cyan

Start-Process "http://127.0.0.1:8000/wiki/"
& $PythonExe -m mkdocs serve -a 127.0.0.1:8000
