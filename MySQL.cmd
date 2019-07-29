@echo off
TITLE MySQL SERVER FOR WOW FREESHARD [5.5.22]
COLOR 9F
echo ______________________      MySQL SERVER [5.5.22]      ________________________
echo _______________________________ EmuZONE DEV ___________________________________
echo.
echo MySQL wurde gestartet. Der Server wird beendet sobald dieses Fenster
echo geschlossen wird. Es wird InnoDB als Datenbank verwendet, es funktionieren
echo deshalb nur InnoDB Commands. Mit STRG+C kann der Server herunter gefahren
echo werden.
echo.
echo.
cd Server
bin\mysqld --defaults-file=my.ini --standalone --console

if errorlevel 1 goto error
goto finish

:error
echo.
echo FEHLER: MySQL konnte nicht als Dienst gestartet werden.
echo         Eventuell arbeitet ein weiterer Server paralel.
pause

:finish
