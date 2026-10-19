@echo off
cd /d C:\Dev\wow_survivors
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\VC\Auxiliary\Build\vcvars64.bat" >nul
cargo build --release -p warcraft-survivors
exit /b %ERRORLEVEL%
