@echo off
::===============================================================
::						CLEAN.BAT
::         Written by: Default Coder ~Roy K.~
::    Deletes main.exe file from project directory.
::===============================================================

IF EXIST "main.exe" (
  del main.exe>NUL /S
)