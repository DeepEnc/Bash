#!/bin/bash

read -p "Enter username: " USER_NAME
read -s -p "Enter password: " PASSWORD # -s hides input
echo 

# Create user with home directory
sudo useradd -m -s /bin/bash "$USER_NAME"

# Check if user creation was successful
if [ $? -eq 0 ]; then
 echo "User $USER_NAME created successfully."
else
 echo "Failed to create user $USER_NAME. Exiting."
 exit 1
fi

# Set the password securely
echo "$USER_NAME:$PASSWORD" | sudo chpasswd

# Force password change on first login (optional)
sudo passwd -e "$USER_NAME"

echo "User $USER_NAME has been created and password is set."