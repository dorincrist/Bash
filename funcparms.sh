#!/bin/bash
# this demo is for functional parameter passing

#global variable
USERNAME=$1

# function definitions - start
funcExample () {
   echo "Hello $USERNAME, you are $1 years old"
   echo "That makes you $( expr $1 \* 365 ) days old"
}

# function definitions - stop

# script - start 
clear
echo "How old you are?"
read AGE
# calculate the number of days
funcExample $AGE

