#!/bin/bash
# demo of reading and writing to a file using a file descriptor

echo "Enter a file name to read: "

read FILE

exec 5<>$FILE # pick a number -ge 3 (0,1,2 are reserved for STIN STOUT STERR) and > means write only and < means read only and <> for both

while read -r SUPERHERO; do
  echo "Superhero Name: $SUPERHERO"
done <&5 #we have to use & for file descriptor

echo "File Was Read On: $( date )" >&5 #write to the file descriptor

exec 5>&- #close file handled 
 




