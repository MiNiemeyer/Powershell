
# PowerShell-Skript zum Überschreiben der hohen DPI-Skalierung für alle Benutzer

$registryPath  = "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers"

$appPath = "C:\Program Files (x86)\Microsoft Dynamics AX\50\Client\Bin\Ax32.exe"  # Pfad zur Anwendung anpassen

#deaktivieren
$dpiSetting = ""

# deaktiviere den DPI-Wert in der Registrierung
Set-ItemProperty -Path $registryPath -Name $appPath -Value $dpiSetting

#aktivieren
$dpiSetting = "~ HIGHDPIAWARE"

# aktiviere den DPI-Wert in der Registrierung
Set-ItemProperty -Path $registryPath -Name $appPath -Value $dpiSetting