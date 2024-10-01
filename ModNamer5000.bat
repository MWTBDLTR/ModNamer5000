@echo off

echo        _            _       _     _          _             _        
echo       /\ \         / /\    / /\  /\ \       /\ \     _    /\ \      
echo       \_\ \       / / /   / / /  \ \ \     /  \ \   /\_\ /  \ \     
echo       /\__ \     / /_/   / / /   /\ \_\   / /\ \ \_/ / // /\ \_\    
echo      / /_ \ \   / /\ \__/ / /   / /\/_/  / / /\ \___/ // / /\/_/    
echo     / / /\ \ \ / /\ \___\/ /   / / /    / / /  \/____// / / ______  
echo    / / /  \/_// / /\/___/ /   / / /    / / /    / / // / / /\_____\ 
echo   / / /      / / /   / / /   / / /    / / /    / / // / /  \/____ / 
echo  / / /      / / /   / / /___/ / /__  / / /    / / // / /_____/ / /  
echo /_/ /      / / /   / / //\__\/_/___\/ / /    / / // / /______\/ /   
echo \_\/       \/_/    \/_/ \/_________/\/_/     \/_/ \/___________/    
echo:
echo                   Mod Namer 5000 by MrChurch

setlocal enabledelayedexpansion

rem Set the prefix, here we are trying to prevent MO2/Wabbajack from deleting mods we want to keep
set "prefix=[NoDelete] "

rem Set the directory where we want the script to work, in this case its the current directory of the script
set "directory=%~dp0"

rem Navigate to the directory
cd /d "%directory%"

rem Prompt the user for desired action
echo.
echo Do you want to (A)dd the prefix or (R)emove the prefix from the folders?
set /p "choice=Enter A to add or R to remove: "

if /i "%choice%"=="A" (
  goto :add_prefix
) else if /i "%choice%"=="R" (
  goto :remove_prefix
) else (
  echo Invalid choice choomba. Self-destructing.
  pause
  exit /b
)

:add_prefix
echo.
echo Adding prefix "%prefix%" to folders...
echo.
for /d %%F in (*) do (
    set "oldname=%%F"
    rem Check if the item is a directory
    if exist "%%F\" (
        rem Check if the folder does not already contain the prefix
        set "tempname=!oldname:%prefix%=!"
        if "!tempname!"=="!oldname!" (
            rem Folder name does not contain the prefix
            set "newname=%prefix%!oldname!"
            echo Renaming "!oldname!" to "!newname!"
            ren "%%F" "!newname!"
        ) else (
            echo Skipping "!oldname!"
        )
    )
)
echo.
echo All top-level folders processed!
pause
exit /b

:remove_prefix
echo.
echo Removing prefix "%prefix%" from folders...
echo.
for /d %%F in ("%prefix%*") do (
    set "oldname=%%F"
    rem Check if the item is a directory
    if exist "%%F\" (
        rem Remove the prefix from the folder name
        set "newname=!oldname:%prefix%=!"
        echo Renaming "!oldname!" to "!newname!"
        ren "%%F" "!newname!"
    )
)
echo.
echo All top-level folders processed!
pause
exit /b
