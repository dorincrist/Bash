#!/bin/bash
#script that monitors availability of a service
### exit documentation
# 3: no argument provided
# 4: something else
###


#make sure that service name is provided as an argument

if [ -z $1 ]; then
       echo you need to provide a service name when starting this script
       exit 3
else
       SERVICE=$1
fi
#run without s topping to do the monitoring task

if ps aux | grep $SERVICE | grep -v grep | grep -v servicecomon
   then 
       echo all good
   else
      echo $SERVICE cold not be found as a process
      echo Make sure that $SERVICE is running and try again
fi






#actions if services is failing



