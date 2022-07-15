Import-Module -Name ActiveDirectory

Get-ADPrincipalGroupMembership tuser | select name 