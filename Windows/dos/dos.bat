@echo off
echo 教程地址：http://www.cnblogs.com/glaivelee/archive/2009/10/07/1578737.html
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

rem 变量延迟
rem set a=4
rem set a=5&echo a=%a%
rem 输出a为4，因为批处理是按行读取
rem open delay setlocal=enabledelayedexpansion
rem set b=5
rem setlocal=enabledelayedexpansion
rem set b=6&echo b=%b%

rem 变量延迟的应用：交换数值
rem set c=20 & set d=12
rem echo "before: c=%c%,d=%d%"
rem set c=%d% & set d=%c%
rem echo "after: c=%c%,d=%d%"

rem change file attribute
rem attrib +R +S G:\computer\Linux-note\linux-note-shell\Windows\dos\new.txt
rem md G:\computer\Linux-note\linux-note-shell\Windows\dos\new\hidden 
rem attrib -r +s -h  G:\computer\Linux-note\linux-note-shell\Windows\dos\new /S /D
rem attrib G:\computer\Linux-note\linux-note-shell\Windows\dos\new

rem %的使用
rem %0----表示调用批处理自身,会进入无限循环中;
rem %1----表示命令行传到批处理的第一个参数，%2,3,4,5以此类推，如果没有，则相当于%0
rem start %0
rem copy %0 c:\new.txt
rem echo "copy over"

rem < and >
rem set /p str=< %0
rem echo %str%  
rem 它会读取文件的第一行，输出 @echo off

rem && and ||
rem dir c:&&echo hello&& dir i:
rem dir c:||echo hello

rem 优先级顺序："|" > ">" > ||""
rem dir c: && dir d: > d:/new.txt

rem 逗号相当于空格
rem 分号用来区分不同目标执行同一个命令,前一个命令执行错误与否不影响后一个的执行
rem dir c:;d:;e:
rem 小括号中的内容可以当做一条命令
rem set a=5
rem (
rem set a=4
rem echo a=!a!
rem  )
rem 感叹号，在变量延迟中规避延迟


rem ================================================================

rem 格式： for (para) path %%var in (set)  do command  command-para %%var
rem 参数： /d搜索目录，跳过文件，只显示当前目录下的目录名
rem for /d %%i in (g:\computer\*) do echo %%i

rem 参数： /r递归搜索目录,如果括号中不含有*或者？，则打印出目录下所有文件，不管是否存在，和使用.含义一致
rem for /r  g:\install %%i in (.) do echo %%i
rem 使用if来判断需要的目录是否存在，存在则打印
rem for /r g:\install %%i in (*.exe) do if exist %%i echo %%i

rem *表示任意多个字符，？表示任意一个字符
rem for /d %%i in (????????) do echo %%i
rem for  %%i in (*) do echo %%i

rem 参数： /l 增量产生一个数字序列值
rem for /l %%i in (1,1,10) do echo %%i
rem for /l %%i in (1,2,10) do echo %%i
rem for /l %%i in (10,-2,1) do echo %%i
rem for /l %%i in (1,1,5) do start cmd %%i

rem 参数： /f 查找文本并以某种方式打印
rem echo :hello,world > new.txt
rem echo 123 456 789 >> new.txt
rem echo 789-456-123 >> new.txt
rem echo 456 789 123 >> new.txt
rem for /F "eol=: tokens=1,3 delims=- " %%i in (new.txt) do echo  %%i %%j
rem for /f "eol=: tokens=1,2 delims= " %%i in (new.txt) do echo  %%i %%j
rem 下面的单引号用在for中，用来执行引号中的命令
rem for /f "delims=" %%i in ('net user') do echo %%i

rem 返回命令行参数%1...%9
rem echo %1
rem echo %2
rem echo %3
rem %*一次返回全部参数
rem echo %*

rem %0,返回当前文件的绝对路径，或者是无限循环执行批处理文件
rem echo %0
rem %0

rem 获取用户输入,并赋值给变量，使用/p参数
rem set /p var="please input username: "


rem 以下几种方法作为延时工具,>nul是window中的黑洞
rem echo before: %time%
rem for /l %%i in (1,1,10000) do echo %%i>nul
rem echo after: %time%

rem echo before ping: %time%
rem ping 127.0.0.1 >nul
rem echo after ping: %time%
rem goto cho

rem 延时的应用：进度条
rem set /p a=?<nul表示只打印？，不换行
rem echo #--------------------------------------#
rem echo.
rem for /L %%i in (1 1 38) do set /p a=?<nul&ping /n 1 127.0.0.1>nul
rem echo.
rem echo #--------------------------------------#












pause


