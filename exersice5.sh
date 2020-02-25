#!/bin/bash

for i in $( cat ldapusers ); do
   USERS=${i%%,*}
   USERS=${USERS#*=}
   cat $USERS >> users
done

for j in $( cat users ); do
    echo useradd $j
done

exit 0
