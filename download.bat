@echo off

REM NOT NEED

setlocal
set /p ans=FanatsyWarrior3D: Download all needed files. Continue? (y or n):  
if %ans%==n goto end

REM 2.Update the submodule of FantasyWarrior3D
echo 2.Update the submodule of FantasyWarrior3D
git submodule update --init 

rem pause

REM 3.Update the submodule of Cocos2d-x
echo 3.Update the submodule of Cocos2d-x
cd frameworks/cocos2d-x
git submodule update --init

rem pause

REM 4.After cloning the repo, please execute `download-deps.py` to download and install dependencies
cd frameworks/cocos2d-x
python download-deps.py
python setup.py

REM reboot pc
set /p ans=FanatsyWarrior3d: Needed PC reboot. Continue? (y or n):  
if %ans%==n goto end
shutdown.exe /r /t 00

pause