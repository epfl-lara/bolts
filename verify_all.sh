#!/bin/bash

# Find all files named "verify.sh" starting from the current directory
find . -type f -name "verify.sh" | while read -r script; do
  # Get the directory containing the script
  script_dir=$(dirname "$script")

  # Check if the script path contains WIP and if so, skip it
  if [[ "$script_dir" == *"WIP"* ]]; then
    echo "Skipping $script_dir"
    continue
  fi

  # Change to the script's directory
  cd "$script_dir" || exit

  echo "Verifying $script_dir"

  # Execute the "verify.sh" script
  # ./verify.sh

  # Check the exit code of the script, and if it is not 0, print an error message and exit with the same code
  if [ $? -ne 0 ]; then
    echo "Verifying $script_dir failed!!!!!!!!!"
    exit 1
  fi

  echo "----------------------------------------------------------------------------------------------------------------------------------------------------------------"

  # Return to the original directory
  cd - > /dev/null || exit
done