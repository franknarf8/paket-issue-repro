@echo off

paket.exe >nul 2>&1
IF %ERRORLEVEL% EQU 9009 (
    if not exist ".paket\paket.exe" (
        echo Downloading paket...
        ".paket\paket.bootstrapper.exe"
    )

    ".paket\paket.exe" %*
) ELSE (
    :: ERRORLEVEL = 1
    paket.exe %*
)