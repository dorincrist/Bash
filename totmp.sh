#!/bin/bash

if [ -z $1 ]; then
  echo "Please provide filenames"
   read FILENAME
  else
   FILENAME="$@"
fi

echo "The following filenames have been provided: $FILENAME"

for i in $FILENAME; do
   cp $i $HOME
done







