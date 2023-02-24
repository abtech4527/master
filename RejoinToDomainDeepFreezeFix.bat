@echo off
set domain = romaisd.com
set username = romaisd.com\acantu4
set password = An@ilette.123
ECHO Resetting domain password.
powershell.exe -Command "& {Reset-ComputerMachinePassword -Server %domain% -Credential (New-Object System.Management.Automation.PSCredential ('%username%',(ConvertTo-SecureString '%password%' -AsPlainText -Force)))}"
ECHO Script Complete
