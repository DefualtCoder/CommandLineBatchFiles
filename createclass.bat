@echo off

:makeclass
echo Enter Class Name: 
set /P ClassName=
IF EXIST %CD%\%ClassName%.cpp goto warnings
IF NOT EXIST %CD%\%ClassName%.cpp goto createclass

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
	echo ^#ifndef ^_^_%ClassName%^_H^_^_
	echo ^#define ^_^_%ClassName%^_H^_^_
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
	echo ^#endif ^/^/ ^_^_%ClassName%^_H^_^_
) > %CD%\%ClassName%.h
IF EXIST "C:\Program Files\notepad++\notepad++.exe" (notepad++ %CD%\%ClassName%.h) ELSE (notepad %CD%\%ClassName%.h)
goto ss


:warnings
echo.
echo Class "%ClassName%" already exists^! Enter different class name^!
echo.
goto makeclass

:ss
echo.
echo Class %ClassName% created^!
echo.
goto skip

:skip
pause
cls