# Sample of a personal automation script

# Install packages and configure Windows
winget configure .\windows\winget.dsc.user.yaml --accept-configuration-agreements

# Setup OMP
oh-my-posh font install --user CascadiaCode
Set-Content -Path $PROFILE -Value 'oh-my-posh --init --shell pwsh --config ~/jandedobbeleer.omp.json | Invoke-Expression'
Install-Module -Name Terminal-Icons -Repository PSGallery -Force    
Import-Module -Name Terminal-Icons


# Setup VS Settings
[System.Environment]::SetEnvironmentVariable('VS_UNIFIED_SETTINGS_PROFILE','c:\src\dotfiles-ignite\visualstudio\settings\devbox', 'User')