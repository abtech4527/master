@echo off
set "PRINTER=\\adm-vm-dc01.romaisd.com\SPED Back Printer"

echo Installing %PRINTER%...

rundll32 printui.dll,PrintUIEntry /in /q /n "%PRINTER%"

if %errorlevel% equ 0 (
    echo Printer installed successfully.
) else (
    echo Failed to install printer.
)

exit /b %errorlevel%
