function moveFiles ([string] $fromPath,[string] $toPath)
{
    if (Test-Path $toPath) {
        Move-Item $fromPath  $toPath 
    }
}

moveFiles "H:\Temp\RG Pos\Postausgang-ZERO\*.*"  "H:\Temp\RG Pos\Postausgang-PMM\"

