md __build_win32_debug
cd __build_win32_debug
cmake -f .. -G "Visual Studio 15 2017" -DCMAKE_BUILD_TYPE=Debug -Wno-dev
IF "%VS150COMNTOOLS%" EQU "" set VS150COMNTOOLS=C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\Tools\
rem call "%VS150COMNTOOLS%VsDevCmd.bat" amd64_x86
call "%VS150COMNTOOLS%VsDevCmd.bat"
MSBuild ALL_BUILD.vcxproj /m:8 /p:Configuration=Debug /p:Platform="Win32" /toolsversion:15.0