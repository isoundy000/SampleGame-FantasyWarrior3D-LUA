@echo off
REM ******************** version 2.5 (LUA) **********************************

setlocal
set /p ans=FanatsyWarrior3d: Cleanup all temp and operation files. Continue? (y or n):  
if %ans%==n goto end

rem del /s /q frameworks\cocos2d-x\cocos\2d\Debug.win32\*.*
rem del /s /q frameworks\cocos2d-x\cocos\scripting\lua-bindings\proj.win32\Debug.win32\*.*
rem del /s /q frameworks\cocos2d-x\cocos\editor-support\spine\proj.win32\Debug.win32\*.*
rem del /s /q frameworks\runtime-src\proj.win32\Debug.win32\*.*
rem del /s /q frameworks\runtime-src\proj.win32\Debug\*.*

REM ========================= WIN32 CLEAN UP ===============================
REM del /s /q runtime\win32\*.pdb
REM del /s /q runtime\win32\*.ilk
rem del /s /q proj.win32\*.sdf

REM This will delete everything from the folder (and the folder itself).
IF EXIST "frameworks\cocos2d-x\cocos\2d\Debug.win32" (
	rmdir "frameworks\cocos2d-x\cocos\2d\Debug.win32" /s /q
)

IF EXIST "frameworks\cocos2d-x\cocos\scripting\lua-bindings\proj.win32\Debug.win32" (
	rmdir "frameworks\cocos2d-x\cocos\scripting\lua-bindings\proj.win32\Debug.win32" /s /q
)

IF EXIST "frameworks\cocos2d-x\cocos\editor-support\spine\proj.win32\Debug.win32" (
	rmdir "frameworks\cocos2d-x\cocos\editor-support\spine\proj.win32\Debug.win32" /s /q
)

IF EXIST "frameworks\runtime-src\proj.win32\Debug.win32" (
	rmdir "frameworks\runtime-src\proj.win32\Debug.win32" /s /q
)

IF EXIST "frameworks\runtime-src\proj.win32\Debug" (
	rmdir "frameworks\runtime-src\proj.win32\Debug" /s /q
)

REM ========================= ANDROID CLEAN UP ==============================
REM This will delete only files without folders
rem del /s /q proj.android-studio\app\obj\*.*

REM This will delete everything from the folder (and the folder itself).
rem IF EXIST "proj.android-studio\app\obj" (
	rem rmdir "proj.android-studio\app\obj" /s /q
rem )

REM ===================== ANDROID VISUAL GDB CLEAN UP =======================
rem del /s /q proj.android-vgdb\*.sdf
rem del /s /q proj.android-vgdb\VisualGDBTest\obj\*.*
rem del /s /q proj.android-vgdb\Release.win32\*.*
rem del /s /q proj.android-vgdb\Debug.win32\*.*

REM ================ ANDROID NVIDIA NSIGHT TEGRA CLEAN UP ===================
rem del /s /q proj.android-nsight-tegra\*.sdf
rem del /s /q proj.android-nsight-tegra\Tegra-Android\*.apk
rem IF EXIST "proj.android-nsight-tegra\AndroidNsightTegra\Tegra-Android" (
rem 	rmdir "proj.android-nsight-tegra\AndroidNsightTegra\Tegra-Android" /s /q
rem )

pause

:end
endlocal
exit 
