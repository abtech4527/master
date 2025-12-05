@echo off
:: Disable the Widgets feature for all users on the machine
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Dsh" /v "AllowNewsAndInterests" /t REG_DWORD /d "0" /f

:: Restart explorer.exe is not strictly necessary but can help ensure the UI updates
taskkill /f /im explorer.exe
start explorer.exe
