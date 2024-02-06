import os
from datetime import datetime

def process_file(input_file, archived_folder):
    # Get the current timestamp
    timestamp = datetime.now().strftime("%Y%m%d%H%M%S")

    # Define the name for the processed file with timestamp
    processed_filename = f"processed_{timestamp}.txt"

    # Specify the full path to the processed file in the 'archived' folder
    processed_file = os.path.join(archived_folder, processed_filename)

    # Read input file and process data
    with open(input_file, 'r') as file:
        lines = file.readlines()

    line_count = len(lines)

    # Write the processed data to the new file
    with open(processed_file, 'w') as file:
        file.write(f"Number of lines: {line_count}\n")

    # Return the full path to the processed file
    return processed_file

if __name__ == "__main__":
    # Specify the input file and 'archived' folder
    input_file = 'input.txt'
    archived_folder = 'archived'

    # Process the file and get the path to the processed file
    processed_file_path = process_file(input_file, archived_folder)

    # Print the path to the processed file
    print(f"Processed file saved at: {processed_file_path}")
