@echo off
::===============================================================
::					CREATECLASS.BAT
::         Written by: Default Coder ~Roy K.~
::    Creates CPP class source(.cpp) and header files(.h)
::===============================================================

:makeclass
echo Enter Class Name: 
set /P ClassName=
IF EXIST %CD%\%ClassName%.cpp goto warnings
IF NOT EXIST %CD%\%ClassName%.cpp goto setUpper

:setUpper
set UpperCaseMacro=for /L %%n in (1 1 2) do if %%n==2 (for %%# in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) do set "result=!result:%%#=%%#!") else setlocal enableDelayedExpansion ^& set result=
%UpperCaseMacro%%ClassName%
set UpperClassName=%result%
goto createclass

:createclass
(
	echo ^#include "%ClassName%.h"
	echo.
	echo %ClassName%^:^:%ClassName%^(^) ^{
	echo.
	echo ^}
	echo.
	echo %ClassName%^:^:^~%ClassName%^(^) ^{
	echo.
	echo ^}
) > %CD%\%ClassName%.cpp
IF EXIST "C:\Program Files\notepad++\notepad++.exe" (notepad++ %CD%\%ClassName%.cpp) ELSE (notepad %CD%\%ClassName%.cpp)

(
	echo ^#ifndef ^_^_%UpperClassName%^_H^_^_
	echo ^#define ^_^_%UpperClassName%^_H^_^_
	echo.
	echo class %ClassName% ^{
	echo 	private^:
	echo.
	echo 	protected^:
	echo.
	echo 	public^:
	echo 		%ClassName%^(^)^;
	echo 		^~%ClassName%^(^)^;
	echo.
	echo ^}^;
	echo.
	echo ^#endif ^/^/ ^_^_%UpperClassName%^_H^_^_
) > %CD%\%ClassName%.h
IF EXIST "C:\Program Files\notepad++\notepad++.exe" (notepad++ %CD%\%ClassName%.h) ELSE (notepad %CD%\%ClassName%.h)
goto finished


:warnings
echo.
echo Class "%ClassName%" already exists^! Enter different class name^!
echo.
goto makeclass

:finished
echo.
echo Class %ClassName% created^!
echo.
goto skip

:skip
pause
cls