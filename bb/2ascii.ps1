param([string] $infile = (throw "please spacify a filename"))
$outfile = "$infile.ascii"
get-content -Path $infile|Out-File $outfile -Encoding ascii



