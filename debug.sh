#!/bin/bash

# set -x  开启debug
# set +x  禁止调试
# set -v  显示输入
# set +v  禁止打印输入
_DEBUG=on;

function debug(){
   if [ $_DEBUG = "on" ];then
	   echo  $@;
	   echo "ttttttt";
   fi
}


count=0;
dataArr=(1 2 3 4 5 6 7 8);
for var in ${dataArr[@]};do
	#set -x;
	#sleep 1;
	#echo $(( var + var ));
	#set +x;
	debug echo $count;
	let count++;
done

echo "test over .... ";
