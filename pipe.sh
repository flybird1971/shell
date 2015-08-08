#!/bin/bash

# 管道　　读取命令输出
pwd
(cd /var/ww; ls; pwd; ls)
pwd

var="`ls`";
#var="$(ls -l)";
echo $var;

var=`cd /datum; echo "newvar $var}"`;
echo $var;

# 输入的前12个字符　读入input变量
echo "++++++++++++++++++++++++++++++++++++++++";
echo -n "please enter 12 chars : ";
read -n 12 input;
echo -e "\nyou enter chars are : ${input}";

# 5秒内输入字符串　读入input变量
echo "++++++++++++++++++++++++++++++++++++++++";
echo -n "please enter some chars withn 5 seconds : ";
read -t 5 input;
echo -e "\nyou enter chars are : ${input}";

# 显示输入
echo "++++++++++++++++++++++++++++++++++++++++";
echo -n "please enter some chars will show : ";
read -p " : : ;　" input;
echo -e "\nyou enter chars are : ${input}";

# 不回显输入
echo "++++++++++++++++++++++++++++++++++++++++";
echo -n "please enter some chars will not show : ";
read -s input;
echo -e "\nyou enter chars are : ${input}";

# 界定符
echo "++++++++++++++++++++++++++++++++++++++++";
echo -n "please enter some chars end with ">" : ";
read -d ">" input;
echo -e "\nyou enter chars are : ${input}";

# 综合使用
echo "++++++++++++++++++++++++++++++++++++++++";
echo -n "please enter some chars will not show : ";
read -sn 12  -t 5 input;
echo -e "\nyou enter chars are : ${input}";
