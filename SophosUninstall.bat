net stop "SAVService"
net stop "Sophos AutoUpdate Service"
"C:\Program Files\Sophos\Sophos Endpoint Agent\uninstallcli.exe"
:Sophos AutoUpdate XG Endpoint (6.0.457.0) Server (6.0.457.0)
MsiExec.exe /qn /X{72E136F7-3751-422E-AC7A-1B2E46391909} REBOOT=ReallySuppress
MsiExec.exe /qn /X{7CD26A0C-9B59-4E84-B5EE-B386B2F7AA16} REBOOT=ReallySuppress
MsiExec.exe /qn /X{BCF53039-A7FC-4C79-A3E3-437AE28FD918} REBOOT=ReallySuppress
MsiExec.exe /qn /X{9D1B8594-5DD2-4CDC-A5BD-98E7E9D75520} REBOOT=ReallySuppress
MsiExec.exe /qn /X{AFBCA1B9-496C-4AE6-98AE-3EA1CFF65C54} REBOOT=ReallySuppress
MsiExec.exe /qn /X{E82DD0A8-0E5C-4D72-8DDE-41BB0FC06B3E} REBOOT=ReallySuppress
:Sophos Anti-Virus Endpoint 10.8.3.441
MsiExec.exe /qn /X{85F78DA7-8E8E-49C9-969F-A62D2B43C046} REBOOT=ReallySuppress
MsiExec.exe /qn /X{8123193C-9000-4EEB-B28A-E74E779759FA} REBOOT=ReallySuppress
MsiExec.exe /qn /X{36333618-1CE1-4EF2-8FFD-7F17394891CE} REBOOT=ReallySuppress
MsiExec.exe /qn /X{DFDA2077-95D0-4C5F-ACE7-41DA16639255} REBOOT=ReallySuppress
MsiExec.exe /qn /X{CA3CE456-B2D9-4812-8C69-17D6980432EF} REBOOT=ReallySuppress
MsiExec.exe /qn /X{CA524364-D9C5-4804-92DE-2800BDAC1AA4} REBOOT=ReallySuppress
MsiExec.exe /qn /X{3B998572-90A5-4D61-9022-00B288DD755D} REBOOT=ReallySuppress
MsiExec.exe /qn /X{4BAF6F55-FFE4-4A3A-8367-CC2EBB0F11C3} REBOOT=ReallySuppress
MsiExec.exe /qn /X{BA8752FE-75E5-43DD-9913-23509EFEB409} REBOOT=ReallySuppress
