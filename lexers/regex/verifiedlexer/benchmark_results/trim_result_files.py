# go through the directory given as argument and trim all lines before the one starting with "[info] REMEMBER: The numbers below are just data"
# Write the timmed files to a new directory given as the second argument

import os
import sys
import shutil
import re


def trim_file(input_file, output_file):
    with open(input_file, 'r') as infile:
        lines = infile.readlines()

    start_index = 0
    for i, line in enumerate(lines):
        if line.startswith("[info] REMEMBER: The numbers below are just data"):
            start_index = i
            break

    with open(output_file, 'w') as outfile:
        outfile.writelines(lines[start_index:])

def main(input_dir, output_dir):
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)

    for filename in os.listdir(input_dir):
        if filename.endswith(".txt"): 
            input_file = os.path.join(input_dir, filename)
            output_file = os.path.join(output_dir, filename)
            trim_file(input_file, output_file)
            print(f"Trimmed {input_file} and saved to {output_file}")

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python trim_result_files.py <input_directory> <output_directory>")
        sys.exit(1)

    input_directory = sys.argv[1]
    output_directory = sys.argv[2]

    main(input_directory, output_directory)