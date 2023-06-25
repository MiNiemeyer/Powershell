Get-ChildItem -Path "D:\Benutzer\Michael\Bilder\Google Pixel 6a" -Directory |
 Where-Object { (Get-ChildItem $_.FullName -Recurse).Count -eq 0 } |
  Move-Item -Destination "D:\Leere Verzeichnisse"