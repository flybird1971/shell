#!/bin/bash

# some specail variable with shell 
# $$  $0  $n  $*  $@  $? $#


#define some variables
separator="++++++++++++++++++++++++++++++++++++++++++++++++++++++++++";



echo $separator;
echo " this bash shell id is $$ ";
echo " this bash shell name is $0 ";


echo $separator;
length=$#;
echo "you input ${length} args";

if [ $length -gt 0 ];then
    echo -n "shell script input arguments : ";
    for item in $@;do
        echo -en "${item}\t";
    done
    echo "";
fi
