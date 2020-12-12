$Repos = Read-Host -Prompt 'repos'

###########################################################
"Powershell profile"
###########################################################
if (-not (test-path $profile) ) {
    Set-Content -Path $profile -Value @"
    . $(Join-Path $env:REPOS_HOME "$Repos\TEXT\powershell-profile.ps1")
"@
}

# powershell.exe -NoLogo -NoProfile -Command 'Install-Module -Name PackageManagement -Force -MinimumVersion 1.4.6 -Scope CurrentUser -AllowClobber'
