#!/bin/bash


# exec 自定义文件描述符 读取数据
echo this is tet > input.txt;
exec 3<input.txt;
cat <&3;

#exec 自定义文件描述符 写入数据
exec 1>>/tmp/out.log
ls;
echo this is test about exec ;





cat <<EOF>log.txt;
LOG FILE HEADER
This is a test log file
Function : System atatustics 
EOF


