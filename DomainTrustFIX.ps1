$domain= "adm-vm-dc01.romaisd.com"
$User= "romaisd.com\asbenavides"
$Pass = ConvertTo-SecureString "Adriel3190!" -AsPlainText -Force
Reset-ComputerMachinePassword -Server $domain -Credential ((New-Object System.Management.Automation.PSCredential($User, $Pass )))
