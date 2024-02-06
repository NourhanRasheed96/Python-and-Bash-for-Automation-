#!/bin/bash

# Specify the 'archived' directory
archived_folder="archived"

# Check if 'archived' folder exists, create it if not
if [ ! -d "$archived_folder" ]; then
    mkdir -p "$archived_folder"
    echo "Created archived directory."
fi

# Get the current timestamp
timestamp=$(date +"%Y%m%d%H%M%S")

# Define the name for the processed file with timestamp
new_filename="input_${timestamp}.txt"

# Copy the input.txt file to the 'archived' directory with the new name
cp "input.txt" "$archived_folder/$new_filename"

echo "File copied to archived directory with name: $new_filename"
