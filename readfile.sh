#!/bin/bash
# simple file reading (non-binary) and displaying one line at a time

echo "Enter a filename to read: "

#DEBUG START
set -x 

read FILE

while read -r SUPERHERO; do
  echo "Superhero Name: $SUPERHERO"
done < "$FILE"

set +x
# STOP DEBUG

