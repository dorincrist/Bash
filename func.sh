#!/bin/bash

noarg ()
{
    echo you have not provided an argument
    echo when using this script, you need to specify a filename
    exit 2
}

if [ -z $1 ]; then
    noarg
else
  file $1
fi

exit 0




