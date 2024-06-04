import os
import pandas as pd
import argparse
import re

# Function to parse a single xvg file
def parse_xvg(file_path):
    with open(file_path, 'r') as file:
        lines = file.readlines()
    
    data = []
    for line in lines:
        if not line.startswith(('@', '#')):
            data.append(line.split())
    
    return data

def main(input_directory, output_file):
    # Function to extract the number from the filename
    def extract_number(filename):
        match = re.search(r'\d+', filename)
        return int(match.group()) if match else -1

    # Collect all xvg filenames and sort them by the extracted number
    xvg_files = [f for f in os.listdir(input_directory) if f.endswith(".xvg")]
    xvg_files.sort(key=extract_number)

    # Collect all data
    all_data = []

    # Iterate over all xvg files in sorted order
    for filename in xvg_files:
        file_path = os.path.join(input_directory, filename)
        data = parse_xvg(file_path)
        for row in data:
            all_data.append([filename] + row)

    # Convert the data to a DataFrame
    columns = ["Filename", "Time (ps)", "Total Energy (kJ/mol)", "dH/dλ vdw-lambda = 0.0000", "ΔH λ to 0.0000", "ΔH λ to 0.1000", 
               "ΔH λ to 0.2000", "ΔH λ to 0.3000", "ΔH λ to 0.4000", "ΔH λ to 0.5000", "ΔH λ to 0.6000", "ΔH λ to 0.7000", 
               "ΔH λ to 0.8000", "ΔH λ to 0.9000", "ΔH λ to 1.0000"]
    df = pd.DataFrame(all_data, columns=columns)

    # Write the combined data to a CSV file
    df.to_csv(output_file, index=False)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Convert multiple xvg files to a single CSV file.")
    parser.add_argument("-i", "--input_directory", help="Directory containing the xvg files")
    parser.add_argument("-o", "--output_file", help="Name of the output CSV file")

    args = parser.parse_args()
    main(args.input_directory, args.output_file)

