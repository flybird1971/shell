#!/bin/bash

time=$(date +%s);
echo $time;
recurise date1 date2 date3 $time;
start=$(date +%s);

echo -n 'CountDown:';
tput sc;  #备份光标位置

count=0;
while [ $count -lt 10 ];
do
   let count++;
   sleep 1;
   tput rc; #回复备份的光标位置
   tput ed; #清空光标所在位置 到行尾的说有数据
   echo -n $count;
done;

sleep 15;

end=$(date +%s);
time=$(( end - start ));
hours=$(( time/3600  ));
minus=$(( time/60  ));
mimus=$(( minus%60 ));
secon=$(( time%60 ));

echo "script run time is $hours hours $minus mins $secon secons";
