# !/bin/bash
# Script to extract benchmark data from logs of running run_benchmarks.sh
# and convert them to a format suitable for plotting with Benchmark Data Analysis.ipynb

python3 trim_result_files.py "$1" ./latest