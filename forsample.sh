#!/bin/bash
# this is a demo of the for loop

echo "List all the shell scripts contents of the contents"

SHELLSCRIPTS=$( ls *.sh )

for i in "$SHELLSCRIPTS"; do
    DISPLAY=$( cat $i)
    echo "File: $i - Content $DISPLAY"
done
