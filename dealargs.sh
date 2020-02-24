#!/bin/bash
# script that shows how arguments are handled

echo "\$* gives $*"
echo "\$# gives $#"
echo "\$@ gives $@"
echo "\$0 gives $0"


#showing the interprertation of \$*
for i in "$*"
 do
   echo $i
 done

#showing the interpretation of \$@

for j in "$@"
 do
  echo $j
done

exit 0
