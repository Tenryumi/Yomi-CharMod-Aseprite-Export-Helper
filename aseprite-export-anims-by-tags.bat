@echo off

Rem Path to your Aseprite Installation
set ASEPRITE="C:\Program Files\Aseprite\aseprite.exe"

Rem Your decompiled Yomi folder name.
set "YOMIFOLDERNAME=yomiExtracted"

set "ASEFILE="
set "MODNAME="

Rem Get parent folder path
for %%I in ("%~dp0.") do set "EXPORTFOLDER=%%~dpI"
Rem Replace \ with / so Aseprite can read the path when exporting
set exportfolder=%exportfolder:\=/%
echo Parent folder is ^"%exportfolder%^"

Rem Add Yomi folder to end of path
set exportfolder="%exportfolder%%yomifoldername%"
echo Yomi folder is %exportfolder%

goto 'getasefile'

Rem Ask user for name of aseprite file
: 'getasefile'
echo What is the name of the ^.aseprite file in this directory you want to export^?
set /p asefile=^> 
goto 'getmodname'

Rem Ask user which character mod they want to export to
: 'getmodname'
echo.
echo What is the name of the character mod folder in your extracted Yomi project^?
echo Leave empty to use the same name as the ^.aseprite file^.
set /p modname=^> 
if not defined var set modName=%asefile%
echo The mod name is %modname%
set exportfolder="%exportfolder%/%modname%/characters/%modname%/sprites"
echo The target directory is %exportfolder%

Rem Export using the character mod folder name to determine the path
: 'export'
%ASEPRITE% -b %asefile%.aseprite --ignore-layer "Sample" --filename-format "%exportfolder:"=%/{title}-{tag}-{tagframe}.{extension}" --save-as "%modname%.png"
echo Export complete^!
echo ___________________________________________
@echo on