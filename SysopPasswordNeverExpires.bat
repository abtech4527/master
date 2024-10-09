@echo off
wmic UserAccount where Name="Sysop" set PasswordExpires=False
