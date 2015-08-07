#!/bin/bash
seperator="====================================================";
# index array 
indexArr=('test' 'value1' 'hellow' 'index arrray');
echo ${indexArr[0]};
echo "index array length is : ${#indexArr[@]}";
length=${#indexArr[@]};
echo "-------------------------------";
echo $length;

indexArr[5]='add element';
echo ${indexArr[@]};

indexArr['hellow']='key array';
echo ${indexArr[@]};
echo "index array length is : ${#indexArr[@]}";

keyArr=(`ls` '......' );
echo ${keyArr[0]};

echo "数组添加新元素  删除元素  删除数组测试";
indexArr[6]='add_element_value';
echo ${#indexArr[@]};
echo ${indexArr[@]};

echo "unset array value";
unset indexArr[5];
echo ${#indexArr[@]};
echo ${indexArr[@]};

echo "unset array ";
#unset indexArr;
echo ${#indexArr[@]};
echo ${indexArr[@]};

echo $seperator;
echo "数组的分割";
newArr=(${indexArr[@]:1:3});
echo ${newArr[@]};
echo ${indexArr[@]:2:4};
echo ${indexArr[@]};



echo $seperator;
echo "数组遍历";
for var in ${indexArr[@]};do
	echo $var;
done;


echo $seperator;
echo "关联数组";
declare -A assionArr;
assionArr=([apple]='this is apple' [ban]='this is banner');
assionArr[orange]='this is orange';

echo ${assionArr[@]};
echo ${#assionArr[@]};
echo ${assionArr[apple]};

#获取数组索引
echo ${!assionArr[@]};
echo ${!indexArr[@]};




