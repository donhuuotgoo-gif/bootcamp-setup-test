#!/bin/bash
for FILE in "$@" ; do
 if [ -f "$FILE" ]; then
  echo "$FILE found"
 else 
   echo "$FILE not found"
fi
done
