#!/bin/bash

exec 1>>/tmp/log.log; #设置脚本所以输出 重定向到 /tmp/log.log文件

sourcePath='/datum';
targetPath='/var/www/bak';
targetFile="$targetPath/datum.bak.tar.gz";

# 写入备份日期
date; echo "---------------------------------------------------------------------";

#如果备份目录不存在，创建
if [ ! -d $targetPath ];then
	mkdir $targetPath;
fi

#备份.......
if [ ! -d $sourcePath ];then
	echo "sourcePath $sourcePath is not exists ";
elif [ -f $targetFile ];then
		rm $targetFile;
		tar -czPf $targetFile  $sourcePath;
		echo "备份成功";
else
	tar -czf $targetFile  $sourcePath;
	echo "备份成功";
fi
exit 0;
