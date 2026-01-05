@echo off
REM Define variables
SET SHARE_PATH=\\ADM-VM-DC01\Shares\Software$\

REM Authenticate and connect to the network share, mapping it to a temporary drive letter (e.g., Z:)
REM The /persistent:no flag ensures the mapping is removed after the script finishes

NET USE Z: %SHARE_PATH%  /persistent:no

REM Install the MSI file from the mapped drive silently (/qn) with logging (/L*V)

start /wait msiexec.exe /i "\\ADM-VM-DC01\Shares\Software$\RiversideSecureBrowser.msi" /qb

REM Disconnect the network drive
NET USE Z: /delete

:end
echo Installation process finished.
