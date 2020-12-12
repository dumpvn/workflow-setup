$ToolList = @{
    code = 'https://code.visualstudio.com/Download'
    git = 'https://git-scm.com/downloads'
    FileLocatorPro = 'https://www.mythicsoft.com/filelocatorpro/'
    curl = 'https://curl.haxx.se/download.html'
    devenv = 'https://visualstudio.microsoft.com/downloads/'
    cmake = 'https://cmake.org/download/'
    ninja = 'https://github.com/ninja-build/ninja/releases/download/v1.10.2/ninja-win.zip'
    studio64 = 'https://developer.android.com/studio'
    javac = 'https://www.oracle.com/java/technologies/javase/javase-jdk8-downloads.html'
    Skype = 'https://www.skype.com/en/get-skype/download-skype-for-desktop/'
    WinRAR = 'https://www.rarlab.com/download.htm'
}

$ToolList.Keys | ForEach-Object {
    if ((Get-Command $_ -ErrorAction SilentlyContinue) -eq $null) {
        start $ToolList.$_
    }
}
