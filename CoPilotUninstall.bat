@echo off
:: Check for administrative privileges
net session >nul 2>&1
if %errorLevel% == 0 (
    echo Administrative privileges confirmed. Proceeding...
) else (
    echo ERROR: Please right-click this script and select "Run as administrator".
    pause
    exit /b
)

echo ===================================================
echo 1. Uninstalling Microsoft Copilot App via winget...
echo ===================================================
winget uninstall "Microsoft Copilot" --accept-source-agreements

echo ===================================================
echo 2. Disabling Windows Copilot System Policies...
echo ===================================================
:: Turn off Windows Copilot for the current user
reg add "HKCU\Software\Policies\Microsoft\Windows\WindowsCopilot" /v "TurnOffWindowsCopilot" /t REG_DWORD /d 1 /f

:: Turn off Windows Copilot for all users (System-wide)
reg add "HKLM\Software\Policies\Microsoft\Windows\WindowsCopilot" /v "TurnOffWindowsCopilot" /t REG_DWORD /d 1 /f

:: Disable Copilot App policy for Windows 11
reg add "HKLM\Software\Policies\Microsoft\WindowsAI" /v "RemoveWindowsCopilot" /t REG_DWORD /d 1 /f

echo ===================================================
echo 3. Cleaning Explorer and Taskbar settings...
echo ===================================================
:: Prevent background auto-installs from forcing it back
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "silentinstalledappsenabled" /t REG_DWORD /d 0 /f

echo ===================================================
echo Uninstallation and policy changes complete!
echo Please restart your computer for all changes to take effect.
echo ===================================================
pause
