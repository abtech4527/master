$domain= "romaisd.com"
$User= "romaisd.com\bhernandez"
$Pass = ConvertTo-SecureString "Tech2275" -AsPlainText -Force

Reset-ComputerMachinePassword -Server $domain -Credentia ((New-Object System.Management.Automation.PSCredential($User, $Pass )))
