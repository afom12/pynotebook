@echo off
cd /d "%~dp0"
echo Starting PyNotebook server...
echo Serving from: %CD%
echo.
python -m http.server 8000
pause
