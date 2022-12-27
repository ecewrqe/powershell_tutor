$compress_params = @{
    LiteralPath = "./airreg.ps1", "./2utf8.ps1" # files
    CompressionLevel = "Fastest"
    DestinationPath = "./ps_scripts.zip"
}

Compress-Archive @compress_params

# Get-ChildItem -Path|Compress-Archive -DestinationPath
$expand_params = @{
    LiteralPath = "./bb.zip"
    DestinationPath = "./"
}
Expand-Archive @expand_params
