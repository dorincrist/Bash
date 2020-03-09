#!/bin/bash
# Author: D
# Date: 09/03/2020
# Description: This script will rename files ending with .txt

for filename in *.txt 
   do
     mv $filename ${filename%.txt}.none # % to replace .txt with .none
  done

