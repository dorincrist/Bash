#!/bin/bash

clear
echo
echo "What is your name?"
read NAME
echo

echo "Hello $NAME"
echo

echo "Do you like working in IT? (y/n)"
read ANSWER

case $ANSWER in
         y)
           echo "You are cool";;
         n)
           echo " too bad";;
         *)
           echo " please answer with y/n ";;
esac
          


