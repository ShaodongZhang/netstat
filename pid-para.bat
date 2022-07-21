
:: exccute at cmd
:: pid-para 3389

@echo off
SET PORT=%~1
echo Port=%PORT%

FOR /F "tokens=5" %%P IN ('netstat -ano ^| findstr 0.0.0.0:%PORT%') DO (tasklist.exe | findstr %%P)
REM FOR /F "tokens=5" %%P IN ('netstat -ano ^| findstr %PORT%') DO @echo %%P
REM for /f "tokens=5" %a in ('netstat -aon 3389 ^| findstr $port') do @echo %~nxa
EXIT /B %ERRORLEVEL% 


win_command: CMD /C "C:\Document\Pru\work\tls\pid-para.bat hostvars[ports]
win_command: CMD /C "C:\Document\Pru\work\tls\pid-para.bat hostvars[host][ports]"
