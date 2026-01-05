@echo off
REM Define the network path to the MSI file
SET "MSIPATH=\\192.168.119.137\Technology_Software\Update Softwares\DataManager.msi"


REM Run the MSI installation silently and wait for it to complete
start "MSI Installer" /wait msiexec.exe /i "%MSIPATH%" /qb
