@echo off
::===============================================================
::						EXECUTE.BAT
::         Written by: Default Coder ~Roy K.~
::    Called from build.bat to execute compiled cpp programs
::===============================================================

IF EXIST "main.exe" (
main
pause
exit
)