@echo off
setlocal enabledelayedexpansion

echo ===============================
echo       NETWORK INFORMATION
echo ===============================

:: Hostname and local IP
echo Hostname: %COMPUTERNAME%
ipconfig | findstr /i "IPv4" 

:: MAC Address
echo.
echo MAC Address:
getmac /v /fo list | findstr "Physical"

:: Gateway and DNS
echo.
echo Gateway and DNS Info:
ipconfig /all | findstr /i "Gateway\|DNS"

:: Network interfaces
echo.
echo Network Interfaces:
netsh interface show interface

:: Netstat connections
echo.
echo Active Connections:
netstat -an | findstr ESTABLISHED

:: Open ports
echo.
echo Open Listening Ports:
netstat -an | findstr LISTENING

