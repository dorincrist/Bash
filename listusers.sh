#!/bin/bash
# Author: D
# Date: 09/03/2020
# Description: This script will list users logged in by date

today=$( date | awk '{print $1,$2,$3}' )
last | grep "$today" | awk '{print $1}'



