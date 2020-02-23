#!/bin/bash
# demo of nested functions and some abstraction

# global variable

GENDER=$1

# function definitions - start

#create a human being

funchuman () {
     ARMS=2
     LEGS=2
     echo "A human has $ARMS arms and $LEGS legs, but what gender we are?"

funcmale () {
      BEARD=1
      echo "A male has $BEARD beard(s)"
 } 

funcwomen (){
       BEARD=0
       echo "A women has $BEARD beard(s)"
 }
}

# functions defitions - stop
clear
echo "Determining the characteristics of the gender $GENDER"

# determine the actual gender and display the characteristics
if [ $GENDER == "male" ]; then
     funchuman
     funcmale
else
    funchuman
    funcwomen
fi



