@echo off
tasklist | find /i "minimania.exe"
if not Errorlevel 1 (taskkill /F /im minimania.exe)
cd %appdata%
cd minimania
rmdir /s /f Cache
cd %appdata%
cd ../local/programs/minimania
start minimania.exe