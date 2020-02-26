#!/bin/bash

[ -z $1 ] && echo no argument provided && exit 1
[ ! -e $1 ] && echo $1 does not exist && exit 2
[ -d $1 ] && echo $1 is a directory && exit 
[ ! -f $1 ] && echo $1 is not a directory or file && exit 
[ -x $1 ] && echo $1 is executable && exit
grep '#!/bin/bash' $1 && echo $1 is a non-executable shell script && chmod +x $1 && exit
echo I don\'t know whtat this is 
