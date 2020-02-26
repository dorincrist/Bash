#!/bin/bash
INTERVAL=$1

while sleep $INTERVAL
do
    VALUE=$(ps -eo pcpu,pid -o comm= | sort -k1 -n -r | head -1)
##########
# more debugging

echo VALUE is set to $VALUE
    
       USAGE1=$(echo $VALUE | awk '{ print $1 }')
       USAGE1=${USAGE1%.*}
       PID1=$(echo $VALUE | awk '{ print $2 }')
       PNAME1=$(echo $VALUE | awk '{ print $3 }')

echo USAGE1 is set to $USAGE1
echo PID1 is set to $PID1
echo PNAME1 is set to $PNAME1

read 
   if [ $USAGE1 -gt 80 ]
   then
     sleep 7
       USAGE2=$(ps -eo pcpu,pid -o comm= | sort -k1 -n -r | head -1 | awk '{print $1}')
       USAGE2=${USAGE2%.*}
       PID2=$(ps -eo pcpu,pid -o comm= | sort -k1 -n -r | head -1 | awk '{print $2}') 
       PNAME2=$(ps -eo pcpu,pid -o comm= | sort -k1 -n -r | head -1 | awk '{print $3}')
       [ $USAGE2 -gt 80 ] && [ $PID1 = $PID2 ] && \
           mail -s "CPU load of $PNAME is above 80%" root < .
   fi
done



















done

