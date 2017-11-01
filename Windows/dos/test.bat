@echo off
cls
echo.
echo 显示进度条
echo.
echo ▕-------------------------------▕
for /l %%i in (1,1,40) do set /p a=▉<nul&ping -n 1 127.0.0.1 >nul
echo 100%%
echo ▕-------------------------------▕
echo.

echo ▕-------------------------------▕
for /l %%i in (1,1,40) do set /p a=▉<nul&ping -n 1 127.0.0.1 >nul
echo 100%%
echo ▕-------------------------------▕
echo.

echo ▕-------------------------------▕
for /l %%i in (1,1,20) do set /p a=▉<nul& set /p b=▌<nul&ping -n 1 127.0.0.1 >nul
echo 100%%
echo ▕-------------------------------▕
echo.


echo ▄▅▆▇█▉▊▋▌▍▎▏▔▕▼
echo.

echo 窗前明月光
echo 疑是地上霜
echo 举头望明月
echo 低头思故乡
echo.
rem 屏幕自动变色程序
set col=0
for %%j in (a,b) do (
for /l %%i in (1,2,4) do (
setlocal enabledelayedexpansion
title %%j%%i
color %%i%%j
ping -n 2 127.0.0.1>nul
)
)

















pause