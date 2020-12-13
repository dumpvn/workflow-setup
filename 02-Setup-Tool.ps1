$ToolList = @{
    code = 'https://code.visualstudio.com/Download'
    git = 'https://git-scm.com/downloads'
    FileLocatorPro = 'https://www.mythicsoft.com/filelocatorpro/'
    curl = 'https://curl.haxx.se/download.html'
    WinRAR = 'https://www.rarlab.com/download.htm'
    aws = 'https://aws.amazon.com/cli/'
}

$ToolList.Keys | ForEach-Object {
    if ((Get-Command $_ -ErrorAction SilentlyContinue) -eq $null) {
        start $ToolList.$_
    }
}
