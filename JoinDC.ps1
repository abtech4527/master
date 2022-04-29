$domain = "romaisd.com" # Specify the domain to join.
$password = Read-Host -Prompt "Enter password for $username" | ConvertTo-SecureString -asPlainText -force # Specify the password for the domain admin.
$username = "$domain/asbenavides" # Specify the domain admin account.
$credential = New-Object System.Management.Automation.PSCredential($username,$password)
Add-Computer -DomainName $domain -Credential $credential -restart -force -verbose # Note that the computer will be restarted automatically.
