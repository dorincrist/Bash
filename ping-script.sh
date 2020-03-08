#!/bin/bash
# Author: D
# Description: This script will ping a remote host and notify

ping -c 1 10.209.64.10
  if [ $? -eq 0 ];
    then
      echo OK
    else
      echo "Server is unreachable"
  fi

