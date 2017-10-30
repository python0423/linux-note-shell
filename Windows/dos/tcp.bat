@REM @Author: Administrator
@REM @Date:   2017-10-23 16:08:24
@REM @Last Modified by:   Administrator
@REM Modified time: 2017-10-23 17:06:27
echo off

rem echo "获取主机tcp序列预测率"
rem nmap -v -n -Pn -oN C:\Users\Administrator\Desktop\seq.txt 202.98.203.18

rem echo "开始TCP扫描"
rem nmap -v -O -n -sT -oN C:\Users\Administrator\Desktop\tcp.txt 202.98.203.18

rem echo "开始SYN扫描"
rem nmap -v -O -n -sS -oN C:\Users\Administrator\Desktop\syn.txt 202.98.203.18

rem echo "开始ACK扫描"
rem nmap -v -O -n -sA -oN C:\Users\Administrator\Desktop\ack.txt 202.98.203.18

rem echo "开始UDP扫描"
rem nmap -v -O -n -sU -oN C:\Users\Administrator\Desktop\udp.txt 202.98.203.18

rem echo "开始IP扫描"
rem nmap -v -O -n -sO -oN C:\Users\Administrator\Desktop\ip.txt 202.98.203.18

rem echo "开始ICMP扫描"
rem nmap -v -O -n -PE -oN C:\Users\Administrator\Desktop\icmp.txt 202.98.203.18

echo "开始空闲扫描"
nmap -v -O -n -sI -oN C:\Users\Administrator\Desktop\kongxian.txt 202.98.203.18
