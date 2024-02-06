#!/bin/bash

# Install Python requirements
echo "Installing Python requirements..."
python3 -m pip install -r requirements.txt
echo "Requirements installation completed."

# Run the Python script to process data
echo "Running Python script to process data..."
python3 data_processor.py
python_result=$?
echo "Data processing completed."

# Check the exit code of the Python script
if [ $python_result -eq 0 ]; then
    # If the Python script ran successfully
    # Run the file management Bash script
    echo "Running Bash script for file management..."
    ./file_manager.sh
    echo "File management completed."
else
    echo "Error: Python script encountered an error. Data processing failed."
fi
