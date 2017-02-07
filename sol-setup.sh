#!/bin/bash

# Basic setup for Solaris 11.3

cp vimrc.vim ~/.vimrc
cp bashrc ~/.bashrc
pfexec pkg install lynx
pfexec pkg install samba

date
echo Lynx and Samba installed.
