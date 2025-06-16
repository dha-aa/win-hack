@echo off
echo Cleaning... junk files
del /q /s %TEMP%\*
del /q /s C:\Windows\Temp\*
rd /s /q %TEMP%
echo Done!