# !/bin/bash
# Script to extract benchmark data from logs of running run_benchmarks.sh
# and convert them to a format suitable for plotting with Benchmark Data Analysis.ipynb

python3 trim_result_files.py "$1" ./latest
python3 extract_to_coqlex.py ./latest/json_lexer_benchmark_wi_5_i_5_laraserver4.txt ./from_coqlex/Comparison/JSON/results/CoqLex ./from_coqlex/Comparison/JSON/results/ZipLex