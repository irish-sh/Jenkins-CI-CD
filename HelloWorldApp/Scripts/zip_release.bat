@echo off
set SOURCE_DIR=D:\Build Output\ShirishKumar
set ZIP_OUTPUT=D:\Release Data\ShirishKumar\release_%BUILD_NUMBER%.zip

if not exist "E:\Release Data\ShirishKumar" mkdir "E:\Release Data\ShirishKumar"

powershell -Command "Compress-Archive -Path '%SOURCE_DIR%\*' -DestinationPath '%ZIP_OUTPUT%'"
