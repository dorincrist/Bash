#!/bin/bash
# tests for existence of indicated file

FILENAME=$1

echo "Testing for the Existence of a File called $FILENAME"

if [ ! -e $FILENAME ]
 then 
   echo "File $FILENAME Does Not Indeed Exist!"
fi
