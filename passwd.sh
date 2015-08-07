#!/bin/bash

# 不显示 输入密码 实现
echo -e "Enter password :";
stty -echo
read password
stty echo
echo "you enter password is : ${password}";


