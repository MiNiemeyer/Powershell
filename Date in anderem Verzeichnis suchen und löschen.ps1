Add-Type -AssemblyName PresentationCore, PresentationFramework

#Es wird nichts gelöscht, wenn test = true 
$test = $true

$anzahl = 0
$anzahlGelöscht = 0
$anzahlNichtGelöscht = 0

#Verzeichnis welches auf Dubletten geprüft und Dateien gelöscht werden.
$löschVerzeichnis = "H:\Temp\Backup"

#Verzeichnis in welchem die zu löschenden Dateien auch vorhanden sein müssen
$testVerzeichnis = "H:\Analyse"

#Alle Dateinamen aus dem testverzeichnis ermitteln
$Dateien = Get-ChildItem -Path $testVerzeichnis  -Recurse | 
ForEach-Object { Split-Path $_.FullName -Leaf } # Nur den Dateinamen ohne Verzeichnis
#Dateien im löschverzeichnis durchlaufen, prüfen und ggf. löschen
Get-ChildItem -Path $löschVerzeichnis  -Recurse | 
ForEach-Object {
    
    $anzahl++
    $dateiname = Split-Path $_.FullName -Leaf
    $enthalten = $Dateien -contains $dateiname
    
    if ($enthalten) {
        $anzahlGelöscht ++
        Write-Output "Datei $dateiname  wird gelöscht"
        if (!$test) {
            Remove-Item $_.FullName
        }
    }
    else {
        $anzahlNichtGelöscht ++
        Write-Output "Datei $dateiname ist nicht doppelt vohanden"
    }
    
    
}
Write-Output "Es wurden $anzahl Dateien geprüft"
Write-Output "$anzahlGelöscht Dateien wurden glöscht"
Write-Output "$anzahlNichtGelöscht Dateien konnten nicht gelöscht werden"



