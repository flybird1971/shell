#!/bin/bash

#let  int caluate
let result=10+2;
echo  $result;
let result=result*12;
echo $result;
num=120;
let result+=$num;
echo $result;

# []
result=$[ result + 12 ];
# $result=$[ result + 12 ];  error
echo $result;

# (())
result=$(( num + 12 ));
echo $result;

# expr
result='expr 3 + 3';
result=$(expr $num + 5);
echo $result;

# bc 
echo "--------------------------------";
echo "3/8" | bc;
result=`echo "$result*10" | bc`;
echo $result;

echo "obase=10;ibase=2;1232" | bc;

result=`echo "obase=10;ibase=8;123" |bc`;
echo $result;
