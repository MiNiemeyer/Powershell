Add-Type -AssemblyName PresentationCore,PresentationFramework
$verzeichnis = "H:\Analyse"

$Dateien = Get-ChildItem -Path $verzeichnis  -Recurse | ForEach-Object {Split-Path $_.FullName -Leaf}
$enthalten = $Dateien -contains "02.01.2017.xlsx"

$ButtonType = [System.Windows.MessageBoxButton]::OK
$MessageboxTitle = "Dateisuche"

if ($enthalten) {
    $Messageboxbody = "Die Datei ist vohanden"
    $MessageIcon = [System.Windows.MessageBoxImage]::Information
}else {
    $Messageboxbody = "Die Datei ist nicht vohanden"
    $MessageIcon = [System.Windows.MessageBoxImage]::Warning
}
[System.Windows.MessageBox]::Show($Messageboxbody,$MessageboxTitle,$ButtonType,$MessageIcon)

