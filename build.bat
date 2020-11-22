@echo off
setlocal EnableDelayedExpansion
for %%f in (*.cpp) do (
    call set "Myvar=%%Myvar%% %%f"
)

IF EXIST "main.exe" (
  del main.exe>NUL /S
)

g++ %Myvar% -pedantic -std=c++17 -Wall -o main.exe

start cmd /k execute

endlocal