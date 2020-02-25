#!/bin/bash

echo "Please select a task"
select TASK in 'Check mounts' 'Check disk space' 'Check Memory Usage'

do
   case $REPLY in
     1) TASK=mount;;
     2) TASK="df -h";;
     3) TASK="free -m";;
     *) echo ERROR && exit;;
   esac

 if  [ -n  "$TASK" ]
 then
      clear
      $TASK
      break

 else
    echo INVALID CHOICE && exit 3
 fi
done
