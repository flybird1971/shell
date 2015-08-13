#!/bin/bash
exec 2>log.log;
echo -n "please choose ip connected [1:127   2:206] : ";
read -n 1 ip;

if [ $ip -eq 1 ];then
    ip="127.0.0.1";
    user="root";
    passwd="123456";
elif [ $ip -eq 2 ];then
    ip="172.16.8.206";
    user="gateall";
    passwd="123456";
else
    echo -e "\ninput illegal \n";
    exit 1;
fi

echo -e "\nplease choose database : ";
read database;

mysql -h $ip -u$user -p$passwd $database 2>error.log;
erroNo=$?;
if [ $erroNo -ne 0 ];then
    echo "you choose database is illegal ";
    exit 2;
 fi
