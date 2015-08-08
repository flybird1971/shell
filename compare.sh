#!/bin/bash

#compare intger or string
separator="++++++++++++++++++++++++++++++++++++++++++++++++";

############ intger compare #######################
int1=12;
int2=21;
if [ $int1 -eq $int2 ];then
	echo '$int1 is equal $int2';
elif [ $int1 -gt $int2 ];then
	echo '$int1 is greater $int2';
else
	echo '$int1 is less $int2';
fi


################  string compare  #################
str1="aa";
str2="bb";
str3="";
str4="aa";

if [[ $str1 = $str4 ]];then
	echo 'str1 equal str4';
fi

if [[ -n $str3 ]] && [[ $str1 != $str2 ]];then
	echo "str3 is not empty and str1 not equal str2";
fi

if [[ -z $str3 ]] || [[ $str1 == $str4 ]];then
	echo "str3  empty or str1 equal str4";
fi

# ################## file #########################
file1="/datum/shell";
file2="/datum/shell/date.sh";

if [ -f $file2 ];then
	echo "${file1} is file or path";
fi

if [ -d $file2 ];then
	echo "${file1} is director";
fi


if [ -f $file2 ] && [ -r $file2 ] && [ -x $file2 ];then
	echo "${file2} is  file that can exec and read";
fi



