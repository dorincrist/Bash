#!/bin/bash
# Author: D
# Date: 09/03/2020
# Description: This script will find directories without users

cd /home
for DIR in *
do 
   CHK=$(grep -c "/home/$DIR" /etc/passwd)
   if [ $CHK -ge 1 ]
   then
   echo $DIR is assigned to a user
   else
   echo $DIR is NOT assigned to a user
   fi
done