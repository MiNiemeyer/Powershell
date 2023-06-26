 Set-ExecutionPolicy -Scope currentUser RemoteSigned
 Import-Module xpoTools
 Set-ExecutionPolicy -Scope currentUser Restricted
  cd c:\temp\xpo
   ls *.xpo | Import-Xpo | Split-Xpo -Xpp