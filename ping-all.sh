#!/bin/bash
# Author: D
# Description: This script will ping multiple remote hosts and notify

hosts=/home/dorin/learning/myhosts.txt

for ip in $( cat $hosts )
 do

    ping -c 1 $ip &> /dev/null
       if [ $? -eq 0 ];
          then
          echo $ip is OK
       else
          echo "$ip is unreachable"
  fi
done
