@echo off
echo �̵̳�ַ��http://www.cnblogs.com/glaivelee/archive/2009/10/07/1578737.html
rem color 
rem color 0a
rem pause
rem color 1c
rem pause
rem color 2b
rem pause
rem color 3f
rem ::this is comment
rem :: pause
rem pause

rem mode to set col and lines
rem mode con cols=20 lines=30
rem pause
rem mode con cols=50 lines=100
rem pause
rem mode con cols=80 lines=30
rem pause

rem goto and :
rem echo "where am i ?"
rem goto where
rem ping 127.0.0.1
rem :where
rem echo "dos/windows"

rem if errorlevel
rem dir i:
rem if ERRORLEVEL 2 goto 1
rem if ERRORLEVEL 0 goto 0
rem :0
rem echo it's ok
rem goto exit
rem :1
rem echo it's not ok
rem :exit
rem pause

rem if string==string
rem if {"hello,world"}=={"hello,world"} echo "hello,world"
rem if hello==hi echo "hi"
rem if not hello==hi echo "hi"

rem if exist
rem if EXIST "auto-one.bat" echo "it exists"
rem if not EXIST "auto-one.bat" echo "it not exists"

rem �����ӳ�
rem set a=4
rem set a=5&echo a=%a%
rem ���aΪ4����Ϊ�������ǰ��ж�ȡ
rem open delay setlocal=enabledelayedexpansion
rem set b=5
rem setlocal=enabledelayedexpansion
rem set b=6&echo b=%b%

rem �����ӳٵ�Ӧ�ã�������ֵ
rem set c=20 & set d=12
rem echo "before: c=%c%,d=%d%"
rem set c=%d% & set d=%c%
rem echo "after: c=%c%,d=%d%"

rem change file attribute
rem attrib +R +S G:\computer\Linux-note\linux-note-shell\Windows\dos\new.txt
rem md G:\computer\Linux-note\linux-note-shell\Windows\dos\new\hidden 
rem attrib -r +s -h  G:\computer\Linux-note\linux-note-shell\Windows\dos\new /S /D
rem attrib G:\computer\Linux-note\linux-note-shell\Windows\dos\new

rem %��ʹ��
rem %0----��ʾ��������������,���������ѭ����;
rem %1----��ʾ�����д���������ĵ�һ��������%2,3,4,5�Դ����ƣ����û�У����൱��%0
rem start %0
rem copy %0 c:\new.txt
rem echo "copy over"

rem < and >
rem set /p str=< %0
rem echo %str%  
rem �����ȡ�ļ��ĵ�һ�У���� @echo off

rem && and ||
rem dir c:&&echo hello&& dir i:
rem dir c:||echo hello

rem ���ȼ�˳��"|" > ">" > ||""
rem dir c: && dir d: > d:/new.txt

rem �����൱�ڿո�
rem �ֺ��������ֲ�ͬĿ��ִ��ͬһ������,ǰһ������ִ�д������Ӱ���һ����ִ��
rem dir c:;d:;e:
rem С�����е����ݿ��Ե���һ������
rem set a=5
rem (
rem set a=4
rem echo a=!a!
rem  )
rem ��̾�ţ��ڱ����ӳ��й���ӳ�


rem ================================================================

rem ��ʽ�� for (para) path %%var in (set)  do command  command-para %%var
rem ������ /d����Ŀ¼�������ļ���ֻ��ʾ��ǰĿ¼�µ�Ŀ¼��
rem for /d %%i in (g:\computer\*) do echo %%i

rem ������ /r�ݹ�����Ŀ¼,��������в�����*���ߣ������ӡ��Ŀ¼�������ļ��������Ƿ���ڣ���ʹ��.����һ��
rem for /r  g:\install %%i in (.) do echo %%i
rem ʹ��if���ж���Ҫ��Ŀ¼�Ƿ���ڣ��������ӡ
rem for /r g:\install %%i in (*.exe) do if exist %%i echo %%i

rem *��ʾ�������ַ�������ʾ����һ���ַ�
rem for /d %%i in (????????) do echo %%i
rem for  %%i in (*) do echo %%i

rem ������ /l ��������һ����������ֵ
rem for /l %%i in (1,1,10) do echo %%i
rem for /l %%i in (1,2,10) do echo %%i
rem for /l %%i in (10,-2,1) do echo %%i
rem for /l %%i in (1,1,5) do start cmd %%i

rem ������ /f �����ı�����ĳ�ַ�ʽ��ӡ
rem echo :hello,world > new.txt
rem echo 123 456 789 >> new.txt
rem echo 789-456-123 >> new.txt
rem echo 456 789 123 >> new.txt
rem for /F "eol=: tokens=1,3 delims=- " %%i in (new.txt) do echo  %%i %%j
rem for /f "eol=: tokens=1,2 delims= " %%i in (new.txt) do echo  %%i %%j
rem ����ĵ���������for�У�����ִ�������е�����
rem for /f "delims=" %%i in ('net user') do echo %%i

rem ���������в���%1...%9
rem echo %1
rem echo %2
rem echo %3
rem %*һ�η���ȫ������
rem echo %*

rem %0,���ص�ǰ�ļ��ľ���·��������������ѭ��ִ���������ļ�
rem echo %0
rem %0

rem ��ȡ�û�����,����ֵ��������ʹ��/p����
rem set /p var="please input username: "


rem ���¼��ַ�����Ϊ��ʱ����,>nul��window�еĺڶ�
rem echo before: %time%
rem for /l %%i in (1,1,10000) do echo %%i>nul
rem echo after: %time%

rem echo before ping: %time%
rem ping 127.0.0.1 >nul
rem echo after ping: %time%
rem goto cho

rem ��ʱ��Ӧ�ã�������
rem set /p a=?<nul��ʾֻ��ӡ����������
rem echo #--------------------------------------#
rem echo.
rem for /L %%i in (1 1 38) do set /p a=?<nul&ping /n 1 127.0.0.1>nul
rem echo.
rem echo #--------------------------------------#












pause


