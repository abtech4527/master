$domain = "romaisd.com" # Specify the domain to join.
$user = "$domain/asbenavides" # Specify the domain admin account.
$password = "Adriel2016!" | ConvertTo-SecureString -asPlainText -force # Specify the password for the domain admin.
$credential = New-Object System.Management.Automation.PSCredential($user,$password)
Add-Computer -DomainName $domain -Credential $credential -restart -force -verbose # Note that the computer will be restarted automatically.
