@echo off
mode con cols=113 lines=15 &color 9f
cls
echo.
echo  程序正在初始化. . . 
echo.
echo  ┌──────────────────────────────────────┐
set /p=鯏<nul
for /l %%i in (1,1,50) do set /p a=鯏<nul&ping /n 1 127.0.0.1>nul
echo   100%%
echo  └──────────────────────────────────────┘
pause
for /L %%i in (1 1 38) do set /p a=?<nul&ping /n 1 127.0.0.1>nul
pause