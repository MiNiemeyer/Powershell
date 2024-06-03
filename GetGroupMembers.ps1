##Get-ADGroupMember -Identity APP_Explorer2013  | Get-ADUser -Properties DisplayName, EmailAddress | Select Name | Export-Csv -path "H:\temp\changed.csv"  -Encoding UTF8

Get-ADGroupMember -Identity PGM_WDVSObjekt_PMM  | Get-ADUser -Properties DisplayName, EmailAddress | Export-Csv -path "H:\temp\changed.csv"  -Encoding UTF8