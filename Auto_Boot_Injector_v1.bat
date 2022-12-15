@echo off
echo =======================================================================================
echo                                      Writen by Aerobiker
echo.
echo    - Aimed for quick and simple injection of auto-boot files in Startup Folder
echo    - Said folder situated here : 
echo        C:\Users\%UserName%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
echo.
echo    - It is recomended to only use the following : SHORTCUTS, .BAT, .EXE
echo =======================================================================================
echo.
echo.

:: Ask the user for the file they want to transfer
set /p FileName= ">> What is the name of your auto_boot file (include .bat) : "

:: Copy the file and introduce it in the forlder
copy %FileName% "C:\Users\%UserName%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

:: Create spaces
echo.
echo.

:: iterate over all file names, and just name them
echo Files in Startup directory : 
cd "C:\Users\%UserName%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
(for /f "delims=" %%a in ('dir /b /a /o:gn') do ( 
   echo 	 %%a
))

:: Create a space
echo. 
pause