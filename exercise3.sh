#!/bin/bash

VAR=$( date +%d-%m-%y )

echo "The day is:" ${VAR%%-*}
MONTH=${VAR%-*}
 
echo "The month is:" ${MONTH#*-}
echo "The year is: " ${VAR##*-} 



