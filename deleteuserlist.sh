#!/bin/bash

# --- deleteuserlist.sh ---
# Reads from userlist.txt to automatically delete users in list
# Format of userlist.txt: space-separated columns
#
#     Username Password Firstname Lastname

while IFS=" " read col1 colother
do
  echo "Deleting user $col1"
  userdel -r $col1
done < userlist.txt
exit

