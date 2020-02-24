#!/bin/bash


if [ -z $1 ]; then
   echo "Please enter a filename"
   read FILENAMES
else
  FILENAMES="$@"
fi

echo the following filenames have been provided: $FILENAMES
