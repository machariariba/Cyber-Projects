#!/bin/bash

#This script creates a local user account
#check if script is running with sudo privileges

if [[ ! "${UID}" -eq 0 ]]; then
	echo "Script must be executed as sudo!"
	exit 1
fi

#Ask for the new user's username

read -p "Enter new username: " username
read -p "Enter new user's password: " password

#create local account
useradd -m -s  /bin/zsh "${username}"
#set the password
echo "${username}:${password}" | chpasswd


