function Show-Help{
    param ([string]$error_v = "")
    if($error -ne ""){
        Write-Host
        Write-Host "Error:`t" -ForegroundColor Red -NoNewline
        Write-Host $error_v
    }
    Write-Host
    Write-Host "AirReg.ps1, Version 1.01"
    Write-Host "Search an airplane's type and model by its registration"
    Write-Host
    Write-Host "Usage: AirReg reg [ -OpenWebPage ]"
    Write-Host
    Write-Host "Where: reg is the airplane"

}
function Open-URL{
    param([string]$url)
    Start-Process $url
    if($HOME[0] -eq "/"){
        # Linux
    } else {
        #Windows
        Start-Process $url
    }

}