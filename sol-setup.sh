#!/bin/bash

# Basic setup for Solaris 11.3

echo Moving vimrc, bashrc, bash_profile to home folder
cp vimrc.vim ~/.vimrc
cp bashrc ~/.bashrc
cp bash_profile ~/.bash_profile

echo Installing Lynx and Samba
pfexec pkg install lynx
pfexec pkg install --accept samba

echo Done.

date
