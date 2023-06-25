

# Windowskomponentenspeicher überprüfen

# Nur Test
Set-ExecutionPolicy unrestricted
DISM.exe /Online /Cleanup-image /scanhealth
Set-ExecutionPolicy restrickted
# Mit Reperatur
#DISM.exe /Online /Cleanup-image /Restorehealth 
Set-ExecutionPolicy unrestricted