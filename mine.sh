#!/bin/bash

# Check if the script is being run as root
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root" 1>&2
    exit 1
fi

# Prompt for username
read -p "Enter username: " username

# Check if the username already exists
if id "$username" &>/dev/null; then
    echo "User '$username' already exists."
    exit 1
fi

# Prompt for password
read -sp "Enter password: " password
echo

# Create the user with the provided username and password
useradd -m "$username"  # -m creates the user's home directory
echo "$username:$password" | chpasswd

# Display success message
echo "User '$username' created successfully."


