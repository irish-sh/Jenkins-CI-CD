@echo off
echo [BUILDING PROJECT]


"C:\Program Files\Microsoft Visual Studio\2022\Professional\MSBuild\Current\Bin\MSBuild.exe" ^
HelloWorldApp.sln /p:Configuration=Release /t:Rebuild /nologo > build_report.txt
IF %ERRORLEVEL% NEQ 0 (
    echo MSBuild failed. Check build_report.txt
    exit /b %ERRORLEVEL%
)
echo Build succeeded.
