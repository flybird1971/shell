#!/bin/bash

#define some common variables
separator="++++++++++++++++++++++++++++++++++++++++++++++++++";

#list find result with "\n" or "\0"
find /var/www/bak

echo $separator;
find /var/www/bak  -print;

echo $separator;
find /var/www/bak -print0;

#
echo "";
echo $separator;
find /var/www/share/share  -name "*txt" -print;

echo $separator;
find /var/www/share/share  -iname "*TXT" -print;

echo $separator;
find /var/www/share/share  \( -name "*txt" -o -name "*log" \) -print;

echo $separator;
find . ! -name "*txt";
clear

echo $separator;
find . \( ! -path "*git*" -a -path "*t*" \);

echo $separator;
find  /var/www/share/share  -regex ".*txt~$";

clear
echo $separator;
find  . -type d

clear
echo $separator;
find . -type f -mtime -1;
echo $separator;
find . -type f -amin +400;

clear
echo $separator;
find . -type f -perm 644 -print;

echo $separator
#find . -type f -user flybird1971

clear
find /var/www/bak -type f -print -exec chmod +x {} \;


echo $separator
find . \( -name ".git" -prune  \) -o \( -type f  \)




