Write-Host "Installing prompt..."

# Install modules
winget install JanDeDobbeleer.OhMyPosh
oh-my-posh font install CascadiaMono
Install-Module -Name Terminal-Icons -Repository PSGallery -Force
Install-Module -Name PSReadLine -Force
Install-Module -Name posh-git -Scope CurrentUser -Force

Write-Host "Installed all modules. Downloading configs..."

# Create or update PowerShell profile
$powerShellPath = "C:\Users\$env:USERNAME\Documents\PowerShell\Microsoft.PowerShell_profile.ps1"
if (-not (Test-Path -Path (Split-Path -Parent $powerShellPath))) {
    New-Item -ItemType Directory -Path (Split-Path -Parent $powerShellPath) -Force
}
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/CrawlerCode/prompt/main/Microsoft.PowerShell_profile.ps1" -OutFile $powerShellPath

# Update theme
$themeDestinationPath = "C:\Users\$env:USERNAME\AppData\Local\Programs\oh-my-posh\themes\custom.json"
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/CrawlerCode/prompt/main/custom.json" -OutFile $themeDestinationPath

Write-Host "Updated PowerShell profile and oh-my-posh theme successfully"