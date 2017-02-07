#!/bin/bash

# --- groupsaddusers.sh ---
# 
# Reads from groupusers.txt to automatically create groups
# Format of groupusers.txt: 2 space-separated columns:
#
#   Groupname User1,User2,User3

while IFS=" " read col1 col2
do
  echo Adding users $col2 to group $col1
  groupadd -U $col2 $col1
done < groupusers.txt
exit

