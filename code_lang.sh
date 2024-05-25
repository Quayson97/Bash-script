#!/bin/bash

# Prompt user for directory name
echo "Enter the name of the directory:"
read dir_name

# Create directory
mkdir "$dir_name"

# Change directory
cd "$dir_name" || exit

# Create HTML file
touch index.html

# Create CSS file
touch styles.css

# Create JavaScript file
touch script.js

echo "Directory '$dir_name' and files created successfully!"
