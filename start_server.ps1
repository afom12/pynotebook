# PowerShell script to start the server
$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $scriptPath

Write-Host "🚀 Starting PyNotebook server..." -ForegroundColor Green
Write-Host "📁 Serving from: $scriptPath" -ForegroundColor Cyan
Write-Host "🌐 Server will be available at: http://localhost:8000/index.html" -ForegroundColor Yellow
Write-Host "⏹️  Press Ctrl+C to stop the server" -ForegroundColor Red
Write-Host ""

# Start the server
python -m http.server 8000
