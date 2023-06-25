Add-Type -AssemblyName PresentationCore,PresentationFramework

$Dateien =Get-ChildItem -Path "\\192.168.0.50\Bilder" -Name -File -Recurse -Filter "IMG_20190118_203431.jpg"
$enthalten = $Dateien -contains "IMG_20190118_203431.jpg"

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
# ::Show($Messageboxbody,$MessageboxTitle,$ButtonType,$messageicon)
