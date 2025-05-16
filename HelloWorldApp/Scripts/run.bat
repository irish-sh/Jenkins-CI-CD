@echo off
set EXECUTABLE=D:\Build Output\ShirishKumar\HelloWorldApp.exe
if exist "%EXECUTABLE%" (
    "%EXECUTABLE%"
) else (
    echo Executable not found!
    exit /b 1
)
