@echo off

: Disable Static IP/Enable DHCP    Remove DNS     Enable NICs
for /f "skip=2 tokens=3*" %%i in ('netsh interface show interface') do (
netsh int ip set address "%%j" dhcp >nul 2>&1
netsh int ip set dns "%%j" dhcp >nul 2>&1
netsh interface set interface name="%%j" admin=enabled >nul 2>&1
)
