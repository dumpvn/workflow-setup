$ToolList = @{
    node = 'https://nodejs.org/en/download/'
}

$ToolList.Keys | ForEach-Object {
    if ((Get-Command $_ -ErrorAction SilentlyContinue) -eq $null) {
        start $ToolList.$_
    }
}

# if (1 -eq 1) { exit }

Set-Content -Path (Join-Path $env:TMP 'hello_node.js') -Value @'
console.log('Node is working');
'@

node (Join-Path $env:TMP 'hello_node.js')
if ( -not ($?)) {
    "Sorry, for some reason, Node is not working."
}
