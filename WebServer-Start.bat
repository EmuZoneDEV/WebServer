@echo off
Title APACHE WEB SERVER
COLOR 09
echo ______________________      WEB SERVER [8.0.12]      ________________________
echo _______________________________ EmuZONE DEV _________________________________
echo.
echo.
echo Apache is currently running. Please only close this window for shutdown.
echo To visit the account registration page, visit http://127.0.0.1 - Enjoy.
echo After your server is shut off, run apache_stop.bat to close the service.
apache\bin\apache.exe

if errorlevel 1 goto error
goto finish

:error
echo.
echo Apache could not be started.
pause

:finish
