@echo off
set domain = <romaisd.com>
set username = <romaisd.com\asbenavides>
set password = <Adriel3190!>
ECHO Resetting domain password.
powershell.exe -Command "& {Reset-ComputerMachinePassword -Server %domain% -Credential (New-Object System.Management.Automation.PSCredential ('%username%',(ConvertTo-SecureString '%password%' -AsPlainText -Force)))}"
ECHO Script Complete
