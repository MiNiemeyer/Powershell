$path = "H:\"
Write-host "Inhalte aller ZIP-Archive in $path auflisten"`
  -ForegroundColor Yellow
[Reflection.Assembly]::LoadWithPartialName('System.IO.Compression.FileSystem') | Out-Null

foreach($sourceFile in (Get-ChildItem $path -filter '*.zip'))
{
  Write-host "--- FILE: $($sourceFile.FullName)"
  $zip = [IO.Compression.ZipFile]::OpenRead($sourceFile.FullName)  
  $zip.Entries | Format-Table Fullname, Length
  $zip.Dispose()
}