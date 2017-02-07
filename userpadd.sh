#!/bin/bash

# Script to prompt for username and then prompt for password

echo Please enter the username to add:
read usern
while [ -n "$usern" ]
do
    echo Please enter the name of the user: first last
    read comment
    echo Creating new user "$usern" with name "$comment"...
    useradd -m -c "$comment" $usern
    echo Please enter "$usern"\'s password...
    passwd $usern
    echo
    echo Please enter the username to add \(enter to quit\):
    read usern
done
