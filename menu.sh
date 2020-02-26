#!/bin/bash

clear
while true ; do
    pinghost ()
      { echo "which host do you want to ping"
        read HOST
        ping -c 1 $HOST
     }
   
    echo "select a task"
    select VAR in 'Change password' 'Check free disk space' 'Ping a host' 'Log out'
    do
        case $REPLY in
         1) VAR=passwd;;
         2) VAR="df -h";;
         3) VAR=pinghost;;
         4) VAR=exit;;
         
       esac
       if [ -n "VAR" ] 
          then
       
            $VAR
            break
       else
          echo INVALID CHOICE && exit 3
       fi
  
   done
done

