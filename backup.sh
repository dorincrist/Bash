#!/bin/bash
# Author: D
# Description: Backup /etc and /var filesystem

tar cvf /tmp/backtar.tar /etc /var

gzip /tmp/backtar.tar 


find backtar.tar.gz -ntime -1 -type f -print &> /dev/null # find an archive created today

if [ $? -eq 0 ]
  then
     echo "Backup created"
     echo
     echo "Archiving Backup"
 #scp /tmp/backup.tar.gz root@localhost:/path
  else
     echo "Backup failed"

fi


