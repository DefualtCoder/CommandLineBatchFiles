@echo off

:makedir
echo Enter Project Name: 
set /P folderName=
IF EXIST %CD%\%folderName%\NUL goto warnings
IF NOT EXIST %CD%\%folderName%\NUL goto createdir

:createdir
mkdir "%CD%\%folderName%"
set cur_dir=%CD%\%folderName%
goto createmain


:createmain
(
	echo ^#include ^<iostream^>
	echo.
	echo int main^(^) ^{
	echo.
	echo 	 std^:^:cout ^<^< "Hello Windows Command Line" ^<^< std^:^:endl^;
	echo.
	echo     return 0^;
	echo ^} 
) > %CD%\%folderName%\main.cpp

IF EXIST "C:\Program Files\notepad++\notepad++.exe" (notepad++ %CD%\%folderName%\main.cpp) ELSE (notepad %CD%\!folderName!\main.cpp)
goto ss

:warnings
echo.
echo Project "%folderName%" already exists^! Enter different project name^!
echo.
goto makedir

:ss
echo.
echo %folderName% created^!
xcopy "%CD%\build.bat" "%cur_dir%\">NUL /z /i /q
xcopy "%CD%\execute.bat" "%cur_dir%\">NUL /z /i /q
xcopy "%CD%\createclass.bat" "%cur_dir%\">NUL /z /i /q
xcopy "%CD%\clean.bat" "%cur_dir%\">NUL /z /i /q
echo.
goto skip

:skip
cd /d %cur_dir%
pause
cls