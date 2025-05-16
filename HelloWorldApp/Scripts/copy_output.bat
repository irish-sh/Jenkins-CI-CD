@echo off
set OUTPUT_DIR=D:\Build Output\ShirishKumar
if not exist "%OUTPUT_DIR%" mkdir "%OUTPUT_DIR%"
xcopy /Y /S ".\bin\Release\*.dll" "%OUTPUT_DIR%"
IF %ERRORLEVEL% NEQ 0 (
    echo Failed to copy output files.
    exit /b %ERRORLEVEL%
)
