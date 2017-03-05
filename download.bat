@echo off

REM NOT NEED

rem setlocal
rem set /p ans=FanatsyWarrior3d: Download all needed files. Continue? (y or n):  
rem if %ans%==n goto end

REM 2.Update the submodule of FantasyWarrior3D
rem echo 2.Update the submodule of FantasyWarrior3D
rem git submodule update --init 

rem pause

REM 3.Update the submodule of Cocos2d-x
rem echo 3.Update the submodule of Cocos2d-x
rem cd frameworks/cocos2d-x
rem git submodule update --init

rem pause

REM 4.After cloning the repo, please execute `download-deps.py` to download and install dependencies
rem cd frameworks/cocos2d-x
rem python download-deps.py
rem python setup.py

REM reboot pc
rem set /p ans=FanatsyWarrior3d: Needed PC reboot. Continue? (y or n):  
rem if %ans%==n goto end
rem shutdown.exe /r /t 00

pause