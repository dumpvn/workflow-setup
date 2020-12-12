
'REPOS_HOME','PROJ_HOME' | ForEach-Object {
    if( -not (Test-Path env:\$_) ) {
        "$_ env is not set."
        pause
    }
}

