#!/bin/bash

exec 1>>/tmp/log.log; #设置脚本所以输出 重定向到 /tmp/log.log文件
exec 2>/dev/null;

backend(){
     #如果备份目录不存在，创建
     if [ ! -d $2 ];then
     	mkdir $2;
     fi
     
     #备份.......
     if [ ! -d $3 ];then
     	echo "3 $3 is not exists ";
     elif [ -f $1 ];then
     		rm $1;
     		tar -czPf $1  $3;
     		echo "备份成功";
     else
     	tar -czf $1  $3;
     	echo "备份成功";
     fi
}



sourcePath='/datum';
targetPath='/var/www/bak';
targetFile="$targetPath/datum.bak.tar.gz";

# 写入备份日期
date; echo "---------------------------------------------------------------------";
backend $targetFile $targetPath $sourcePath;

sourcePath="/var/www/blog";
targetPath="/datum/bak";
targetFile="$targetPath/blog.bak.tar.gz";
backend $targetFile $targetPath $sourcePath;
exit 0;

