$ToolList = @{
    code = 'https://code.visualstudio.com/Download'
    git = 'https://git-scm.com/downloads'
    FileLocatorPro = 'https://www.mythicsoft.com/filelocatorpro/'
}

$ToolList.Keys | ForEach-Object {
    if ((Get-Command $_ -ErrorAction SilentlyContinue) -eq $null) {
        start $ToolList.$_
    }
}
