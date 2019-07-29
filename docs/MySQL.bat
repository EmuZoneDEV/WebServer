@echo off
COLOR F
echo __________________Josh Carter's 3.3.5a BotCore Repack____________________
echo _______________________________Version 8.0_______________________________
echo.
echo MySQL is currently running. Please only close this window for shutdown.
echo Please disregard any InoDB messages that are prompted. They have no use.
echo After your server is shut off, press CTRL C to shut down this service.
mysql\bin\mysqld --defaults-file=mysql\bin\my.cnf --standalone --console

if errorlevel 1 goto error
goto finish

:error
echo.
echo MySQL could not be started.
pause

:finish
