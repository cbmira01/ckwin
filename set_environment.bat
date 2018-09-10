@echo off
set VS_Installer=%ProgramFiles(x86)%\Microsoft Visual Studio\Installer

if exist "%VS_Installer%"\ goto InstallerFound
echo:
echo Visual Studio Installer not found.
exit /b

:InstallerFound
echo:
echo Visual Studio Installer found: %VS_Installer%

for /f "usebackq tokens=1* delims=: " %%i in (`"%VS_Installer%\vswhere" -latest -requires Microsoft.VisualStudio.Component.VC.Tools.x86.x64`) do (
    if /i "%%i"=="installationPath" set BuildToolsInstallDir=%%j\VC\Auxiliary\Build
)

if exist "%BuildToolsInstallDir%"\ goto BuildToolsFound
echo:
echo MSVC build tools not found.
exit /b

:BuildToolsFound
echo:
echo MSVC build tools found: %BuildToolsInstallDir%

echo:
echo Locating project includes and libraries...
echo:

set root=%cd%

set include=%include%;%root%\kermit\k95
set include=%include%;%root%\openssl\0.9.7\inc32
set include=%include%;%root%\srp\include
set include=%include%;%root%\pwsdk\inc32
set include=%include%;%root%\kerberos\kfw-2.2-beta-2\athena\wshelper\include
set include=%include%;%root%\superlat\include
set include=%include%;%root%\kerberos\kfw-2.2-beta-2\athena\auth\krb5\src\include
set include=%include%;%root%\kermit\k95\kui
set include=%include%;%root%\zinc\include

set lib=%lib%;%root%\kerberos\kfw-2.2-beta-2\target\lib\i386\rel
set lib=%lib%;%root%\zinc\lib\mvcpp500

"%BuildToolsInstallDir%"\vcvars32.bat
