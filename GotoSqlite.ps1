[Reflection.Assembly]::LoadFile("C:\Temp\System.Data.SQLite.dll")


$sDatabasePath = "G:\Daten\EDV\Test_OH\pdfmailer6\license.dat"

$sConnectionString = "Data Source=$sDatabasePath"

$SQLiteConnection = New-Object System.Data.SQLite.SQLiteConnection 

<#$SQLiteConnection.ConnectionString = $sConnectionString

$SQLiteConnection.Open()

$SQLiteConnection.Close()*/
#>