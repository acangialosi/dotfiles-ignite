# Sample of a personal automation script

# Set dark mode
winget configure '.\windows\dark-mode.yaml' --accept-configuration-agreements

# Install Oh My Posh
winget configure '.\windows\oh-my-posh.yaml' --accept-configuration-agreements

# Setup OMP
oh-my-posh font install --user CascadiaCode
Set-Content -Path $PROFILE -Value 'oh-my-posh --init --shell pwsh --config ~/jandedobbeleer.omp.json | Invoke-Expression'
Install-Module -Name Terminal-Icons -Repository PSGallery -Force    
Import-Module -Name Terminal-Icons


# Install packages and configure Windows
winget configure '.\windows\winget.dsc.user.yaml' --accept-configuration-agreements


# Setup VS Settings
$vssettingpath = join-path (get-location).path '\visualstudio\settings\devbox'
[System.Environment]::SetEnvironmentVariable('VS_UNIFIED_SETTINGS_PROFILE', $vssettingpath, 'User')