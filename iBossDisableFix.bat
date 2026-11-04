@echo off
:: Check for Administrative Privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] This script must be run as Administrator!
    echo Right-click the batch file and select "Run as administrator".
    pause
    exit /b
)

set KEY_PATH="HKLM\SOFTWARE\IBoss\IBSA\Parameters"

echo ====================================================
echo Inspecting Current Values in IBoss Parameters
echo ====================================================
reg query %KEY_PATH%

echo.
echo ====================================================
echo Modifying Registry Values
echo ====================================================



:: Example 2: Set a 32-bit DWORD Value (REG_DWORD)
 reg add %KEY_PATH% /v "ServiceStartupMode" /t REG_DWORD /d 2 /f


echo Task finished.
pause
