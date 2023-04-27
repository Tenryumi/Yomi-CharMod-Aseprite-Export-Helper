@echo off
cls

Rem Path to your Aseprite installation.
set ASEPRITE="C:\Program Files\Aseprite\aseprite.exe"

Rem Your decompiled Yomi folder name. Change this if you use a different name for it.
set "YOMIFOLDERNAME=yomiExtracted"

Rem The name of the target .aseprite file to extract the sprites from.
set "ASEFILE="

Rem The name of the character mod folder within the extracted Yomi project.
set "MODNAME="

Rem The name of the character, whose name will be used for the exported sprite files.
set "CHARNAME="

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
    echo.
    echo ^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-
    echo What is the name of the ^.aseprite file in this directory you want to export^?
    set /p asefile=^> 
    goto 'getmodname'

Rem Ask user which character mod they want to export to
: 'getmodname'
    echo.
    echo ^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-
    echo What is the name of the character mod folder in your extracted Yomi project^?
    echo Leave empty to use the same name as the ^.aseprite file^.
    set /p modname=^> 
    if not defined var set modName=%asefile%
    echo.
    echo The mod name is %modname%
    set exportfolder="%exportfolder:"=%/%modname%/characters/%modname%/sprites"
    echo The target directory is %exportfolder%
    goto 'getcharname'

Rem Ask user if they want to use a particular name for the exported files.
: 'getcharname'
    echo.
    echo ^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-
    echo Currently^, your exported files will use the same name as your mod folder^, and will look like these for example^:
    echo ^"%modname:"=%^-Punch^-0^", ^"%modname:"=%^-Punch^-1^"^, etc^.
    echo If you would like to change the name used, enter it now ^(Leave blank to keep it like this^)^:
    set /p charname=^> 
    if not defined var set charname=%modname%
    goto 'export'

Rem Export using the character mod folder name to determine the path
: 'export'
    echo.
    echo ^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-
    %ASEPRITE% -p %asefile%.aseprite --ignore-layer "Sample" --filename-format "%exportfolder:"=%/{title}-{tag}-{tagframe}.{extension}" --save-as "%charname%.png"
    echo Export complete^!
    @echo on
