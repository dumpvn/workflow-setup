$UserName = Read-Host -Prompt 'username'
$Password = Read-Host -Prompt 'password'
$Repos = Read-Host -Prompt 'repos'
$Destination = Join-Path $env:REPOS_HOME $Repos

if (-not (Test-Path $Destination)) {
    git clone "https://${UserName}:${Password}@bitbucket.org/$UserName/$Repos.git" $Destination
}
