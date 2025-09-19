#!/bin/bash
read -p "Enter name:" Name
if [ "$Name" = "admin" ]; then 
 echo "Welcome admin" 
else 
 echo "Not found"
fi
