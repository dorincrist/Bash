#!/bin/bash

VAR=$1

case $VAR in
       yes)
         echo ok;;
       no|nee)
         echo too bad;;
       *)
         echo try again;;
esac
