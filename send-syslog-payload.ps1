$logFile = ".\logs.txt"
$server = ""
$port = 514

Get-Content $logFile | ForEach-Object {
    echo $_ | & ncat --udp --send-only $server $port
    Write-Host $_
    Start-Sleep -Milliseconds 300
}