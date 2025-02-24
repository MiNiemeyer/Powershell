# Laden des PrintManagement Moduls
Import-Module PrintManagement

# Abrufen der Liste aller Drucker
$druckerListe = Get-Printer

# Anzeigen der Drucker
$druckerListe | Format-Table -Property Name, ShareName, DriverName, PortName | Out-Printer -Name "Microsoft Print to PDF"