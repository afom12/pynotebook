# PowerShell script to push to GitHub
# Usage: .\push_to_github.ps1 YOUR_USERNAME REPO_NAME

param(
    [Parameter(Mandatory=$true)]
    [string]$GitHubUsername,
    
    [Parameter(Mandatory=$false)]
    [string]$RepoName = "pynotebook"
)

Write-Host "🚀 Setting up GitHub remote..." -ForegroundColor Green

# Remove existing origin if it exists
git remote remove origin 2>$null

# Add new remote
$remoteUrl = "https://github.com/$GitHubUsername/$RepoName.git"
git remote add origin $remoteUrl

Write-Host "✅ Remote added: $remoteUrl" -ForegroundColor Green

# Rename branch to main (GitHub standard)
git branch -M main

Write-Host "📤 Pushing to GitHub..." -ForegroundColor Yellow
Write-Host "⚠️  You may be prompted for credentials." -ForegroundColor Yellow
Write-Host "   Use your GitHub username and a Personal Access Token (not password)" -ForegroundColor Yellow
Write-Host ""

# Push to GitHub
git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "✅ Successfully pushed to GitHub!" -ForegroundColor Green
    Write-Host "🌐 View your repository at: https://github.com/$GitHubUsername/$RepoName" -ForegroundColor Cyan
} else {
    Write-Host ""
    Write-Host "❌ Push failed. Please check:" -ForegroundColor Red
    Write-Host "   1. Repository exists on GitHub: https://github.com/$GitHubUsername/$RepoName" -ForegroundColor Yellow
    Write-Host "   2. You have access to the repository" -ForegroundColor Yellow
    Write-Host "   3. You're using correct credentials (Personal Access Token)" -ForegroundColor Yellow
}


