#!/bin/bash

#function define format
#  function funName(){}
#  funName(){}

function debug(){
	if [ $debug = "on" ];then
		echo $@;
		echo $2;
	fi
}

function testFun(){
	argArr=( `echo $@` );
	length=${#argArr[@]};
	echo $1;
	echo $2;
	echo $3;
	echo $@;
	echo $*;
	for(( i=0; i < $length; i++ ));do
		echo $i;
	done
	return 0;
}

#testFun arg1 arg2 arg3;


# 递归函数
TIMES=0;
function recurise(){
	let TIMES++;
	argArr=( `echo $@` );
	len=${#argArr[@]};
	if [ $TIMES -gt 20 ];then
		echo "ttttttttt";
		return 0;
	elif [ $len -gt 0 ];then
#		unset ${argArr[0]};
    	echo "+++++++++++++++++++++++++++++++++++++++++++";
    	echo "function run ${TIMES} times";
    	echo -n  "arga are : ";
    	echo  $@;
		recurise `echo ${argArr[@]:1:${len}}`;
	else
		return 0;
	fi
	return 0;
}

recurise arg1 arg2 arg3 arg4 arg5;
export -f recurise;
bash /datum/shell/date.sh
