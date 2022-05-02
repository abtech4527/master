$domain = "romaisd.com"
$user = "bhernandez"
$password = "Tech1432" | ConvertTo-SecureString -asPlainText -Force
$username = "$domain\$user"
$credential = New-Object System.Management.Automation.PSCredential($user,$password)
Add-Computer -DomainName $domain -Credential $credential -verbose Restart-Computer
