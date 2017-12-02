@REM @Author: Administrator
@REM @Date:   2017-10-31 13:28:49
@REM @Last Modified by:   Administrator
@REM Modified time: 2017-10-31 13:57:46
@echo off
cls
title multipul fix tools
:menu
cls
color 3f
echo.
echo                 ==============================
echo                 nmap tools 
echo                 ==============================
echo.
echo              1. TCP scan 
echo.
echo              2. SYN scan
echo.
echo              3. ACK scan
echo.
echo              4. IP scan
echo.
echo              5. Fin scan
echo.
echo              6. Null scan
echo.
echo              7. help
echo.
echo              q. exit
echo.
rem 大脑
set /p addr="input address: "
:cho
set /p choice=          please input num:
IF NOT "%choice%"=="" SET choice=%choice:~0,1%
if /i "%choice%"=="1" goto tcp
if /i "%choice%"=="2" goto syn
if /i "%choice%"=="3" goto ack
if /i "%choice%"=="4" goto ip
if /i "%choice%"=="5" goto fin
if /i "%choice%"=="6" goto null 
if /i "%choice%"=="q" goto exit 
if /i "%choice%"=="7" goto help 
echo invalid, please input again:
echo.
goto cho

:tcp
nmap -v -O -F -sT  %addr%
goto cho

:syn
nmap -v -O -F -sS  %addr%
goto cho

:ack
nmap -v -O -F -sA  %addr%
goto cho

:ip
nmap -v -O  -F -sO  %addr%
goto cho

:fin
nmap -v -O -F -sM   %addr%
goto cho

:null
nmap -v -O -F -sN  %addr%
goto cho

:exit
echo "press key to exit "&pause>nul
exit

:help
goto menu

