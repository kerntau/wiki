@echo off
cd /d "%~dp0"

if not exist ".venv\Scripts\python.exe" (
    echo [ERROR] Virtual environment .venv not found.
    pause
    exit /b 1
)

echo ========================================================
echo   Building static site to site/ directory...
echo ========================================================

".venv\Scripts\python.exe" -m mkdocs build --clean
if %ERRORLEVEL% equ 0 (
    echo.
    echo ========================================================
    echo   [SUCCESS] Build finished! Output in site/ folder.
    echo ========================================================
) else (
    echo.
    echo [ERROR] Build failed.
)
pause
