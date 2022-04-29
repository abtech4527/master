.dc = "ROMAISD" # Specify the domain to join.
.pw = "Adriel2016!" | ConvertTo-SecureString -asPlainText # Specify the password for the domain admin.
.usr = ".dc/asbenavides" # Specify the domain admin account.
.creds = New-Object System.Management.Automation.PSCredential(.usr,.pw)
Add-Computer -DomainName .dc -Credential .creds -restart -force -verbose # Note that the computer will be restarted automatically.
