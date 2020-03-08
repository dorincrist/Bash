#!/bin/bash
# Author: D
# Date: 09/03/2020
# Description: generate files


echo "How many files do you want to generate?"
read FILES
echo
echo "Please enter the start name of the files: "
read NAME

for i in $( seq 1 $FILES );
  do
   touch $NAME.$i
 done

