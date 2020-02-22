#!/bin/bash
# simple if script for guessing a number

echo "Guess the Secret Number"
echo "======================"
echo " "
echo "Enter a number between 1 and 5: "
read GUESS

if [ $GUESS -eq 3 ] 
   then 
   echo "You guessed the correct number!"
   else
   echo "You didn't guess the number"
fi



