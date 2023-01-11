# REF: https://docs.microsoft.com/fr-fr/powershell/scripting/gallery/installing-psget?view=powershell-7.2

Install-PackageProvider -Name NuGet -Force
Install-Module PowerShellGet -AllowClobber -Force
Set-PSRepository -Name PSGallery -InstallationPolicy Trusted

# REF: https://github.com/PowerShell/PSReadLine

Install-Module -Name PowerShellGet -Force

Uninstall-Module PSReadLine -AllVersions
Install-Module PSReadLine -Force

# REF: https://ohmyposh.dev/docs/migrating
Remove-Item $env:POSH_PATH -Force -Recurse
Uninstall-Module oh-my-posh -AllVersions

# Delete the import of the PowerShell module in your $PROFILE 
# No need to delete since it's going to replace it with this folder profile config
# REF: https://ohmyposh.dev/docs/installation/windows

winget install JanDeDobbeleer.OhMyPosh -s winget

$psPath = [Environment]::GetFolderPath("MyDocuments") + "\WindowsPowerShell"
Copy-Item $psPath"\Microsoft.PowerShell_profile.ps1" -Destination $psPath"\Microsoft.PowerShell_profile.bkp.ps1"
Copy-Item "./Microsoft.PowerShell_profile.ps1" -Destination $psPath
Copy-Item "./froczh.omp.json" -Destination $env:POSH_THEMES_PATH

#https://ohmyposh.dev/docs/installation/fonts
oh-my-posh font install Meslo

# ToDo change VS Code Integrated terminal font and Windows terminal font
