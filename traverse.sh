#!/bin/bash

# 定界符　IFS   internal field separator
# 遍历操作　for while until 

separator="==================================================";
echo -e "${separator}\n系统默认定界符 : ${IFS}";

# 定义打印字符串函数
function traverseStr(){
	str=$1;
	for item in $str;do
		echo $item;
	done
	return 0;
}


oldIFS=$IFS;   #保存默认定界符
arr=(qq girl book etc);

echo $separator
echo ${arr[@]}; #定界符对数组无影响
echo "array length is : ${#arr[@]}";

echo $separator;
traverseStr "qq girl book etc";

IFS=","

unset arr;
arr=(man book etc);
echo $separator
echo ${arr[@]}; #定界符对数组无影响
echo "array length is : ${#arr[@]}";

echo $separator;
traverseStr "qq girls book etc";

IFS=$oldIFS; #恢复默认定界符



#  traverse ......
echo -e "\n\n\n${separator}";
for item in {a b c d e f};do
	echo $item;
done

echo $separator;
for((i=0;i<12;i++)){
	echo $i;	
}

echo $separator;
time=0;
while [ $time -lt 12 ];do
	echo $time;
	let time++;
done


echo $separator;
time=0;
until [ $time -eq 12 ];do
	echo $time;
	let time+=2;
done
