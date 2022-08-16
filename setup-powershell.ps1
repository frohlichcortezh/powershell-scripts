# REF: https://docs.microsoft.com/fr-fr/powershell/scripting/gallery/installing-psget?view=powershell-7.2

Install-PackageProvider -Name NuGet -Force
Install-Module PowerShellGet -AllowClobber -Force
Set-PSRepository -Name PSGallery -InstallationPolicy Trusted

# REF: https://github.com/PowerShell/PSReadLine
Install-Module -Name PowerShellGet -Force
Exit
Install-Module PSReadLine -AllowPrerelease -Force
Install-Module PSReadLine

$psPath = [Environment]::GetFolderPath("MyDocuments") + "\WindowsPowerShell"
Copy-Item $psPath"\Microsoft.PowerShell_profile.ps1" -Destination $psPath"\Microsoft.PowerShell_profile.bkp.ps1"
Copy-Item "./Microsoft.PowerShell_profile.ps1" -Destination $psPath

