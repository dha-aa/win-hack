@echo off
setlocal enabledelayedexpansion


:: Loop through saved Wi-Fi profiles
for /f "tokens=2 delims=:" %%A in ('netsh wlan show profiles ^| findstr "All User Profile"') do (
    set "name=%%A"
    rem Trim leading space
    set "name=!name:~1!"
    
    echo.
    echo Profile: !name!

    set "pass="

    for /f "tokens=2 delims=:" %%K in ('netsh wlan show profile name^="!name!" key^=clear ^| findstr "Key Content"') do (
        set "pass=%%K"
        rem Trim leading space
        set "pass=!pass:~1!"
    )

    echo Password: !pass!
)
