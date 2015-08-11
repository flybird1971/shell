#!/bin/bash

#define some common variables
separator="++++++++++++++++++++++++++++++++++++++++++++++++++";

ls | xargs

echo $separator
ls | xargs -n 3

echo $separator
ls | xargs -I {} cat -n {}

clear
find . \( -name ".git" -prune \) -o \( -type f -print0 \) | xargs -0 cat -n

clear
#使用子shell 模拟xargs处理
ls | ( args=""; while read arg;do args="$args $arg"; done; cat -n $args )


