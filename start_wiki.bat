@echo off
cd /d "%~dp0"

if not exist ".venv\Scripts\python.exe" (
    echo [ERROR] Virtual environment .venv not found.
    pause
    exit /b 1
)

echo ========================================================
echo   Starting [Chent Wiki] Knowledge Base...
echo   URL: http://127.0.0.1:8000/wiki/
echo   Press Ctrl + C to stop the server.
echo ========================================================

start http://127.0.0.1:8000/wiki/
".venv\Scripts\python.exe" -m mkdocs serve -a 127.0.0.1:8000
pause
