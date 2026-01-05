@echo off
REM Define variables
SET SHARE_PATH=\\192.168.119.137\Technology_Software\
SET USERNAME=romaisd.com\asbenavides
SET PASSWORD=Adriel3190!
SET MSI_FILE=DataManager.msi


REM Authenticate and connect to the network share, mapping it to a temporary drive letter (e.g., Z:)
REM The /persistent:no flag ensures the mapping is removed after the script finishes
NET USE Z:"%SHARE_PATH%" %PASSWORD% /USER:%USERNAME%  /persistent:no
IF %ERRORLEVEL% NEQ 0 (
    echo Failed to connect to network share. Exiting.
    goto end
)

REM Install the MSI file from the mapped drive silently (/qn) with logging (/L*V)
start /wait msiexec.exe /i "Z:\%SHARE_PATH%" /qb

REM Disconnect the network drive
NET USE Z: /delete

:end
echo Installation process finished.
