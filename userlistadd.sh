#!/bin/bash

# --- userlistadd.sh ---
# 
# Reads from userlist.txt for automated user and password creation
# Format of user.txt: space-separated columns:
#
#   Username Password Firstname Lastname

while IFS=" " read col1 col2 col3 col4
do
  echo "Creating account $col1 for $col3 $col4"
  useradd -m -c "$col3 $col4" $col1
  echo "Password for username $col1 is: $col2. Generating password entry."
  ./userpass.exp $col1 $col2
done < userlist.txt
exit

