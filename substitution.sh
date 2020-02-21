#/bin/bash
# This script is intended to show how to do simple substitution

shopt -s expand_aliases
alias TODAY="date"
alias UFILES="find /home -user dorin 2>/dev/null"

TODAYSDATE=$(date)
USERFILE=$( find /home -user dorin 2>/dev/null)

echo "Today's date: $TODAYSDATE"
echo "All files owned by dorin: $USERFILE"


A=$(TODAY)
B=$(UFILES)

echo "With Alias, TODAY is: $A"
echo "With Alias, UFILES is: $B"
