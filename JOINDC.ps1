$DMN = "romaisd.com"
$username = "asbenavides"
$user = "$DMN\$username"
$password = "Adriel3190!" | ConvertTo-SecureString -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential ($user,$password)
Add-Computer -Credential $credential -DomainName $DMN -Confirm -Restart -Force
