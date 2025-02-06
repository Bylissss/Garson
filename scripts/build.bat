if exist "..\vendor\premake-core\bin\release\premake5.exe" (  
   goto build_proj
) else (
   goto build_vendor
)

build_proj:
    cd bin\release
    copy premake5.exe ..\..\..\..\..\
    cd ..\..\..\..\..\
    premake5.exe gmake
    pause
    exit

build_vendor:
    cd ..\vendor\premake-core
    start /W Bootstrap.bat
    goto build_proj
