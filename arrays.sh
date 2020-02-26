#!/bin/bash

array=(one two three four [5]=five)

echo "Array size: ${#array[*]}"


echo "Array items: "
for item in ${array[*]}
   do
     printf " %s\n"  $item
done

echo "Array indexes:"
for index in ${!array[*]}
 do
  printf " %d\n" $index
done

