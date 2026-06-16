# !/bin/bash
# Script to extract benchmark data from logs of running run_benchmarks.sh
# and convert them to a format suitable for plotting with Benchmark Data Analysis.ipynb

set -e

python3 trim_result_files.py "$1" ./latest

# Locate the JSON lexer benchmark files in ./latest/. Their names embed the
# warmup-iterations (wi) and iterations (i) options passed to run_benchmarks.sh,
# so we discover them with a regex instead of hard-coding the iteration counts.
#
# Expected patterns (produced by run_benchmarks.sh):
#   OpenJDK : json_lexer_benchmark_wi_<wi>_i_<i>.txt
#   GraalVM : json_lexer_benchmark_wi_<wi>_i_<i>_graal.txt
LATEST_DIR="./latest"

OPENJDK_TXT=$(find "$LATEST_DIR" -maxdepth 1 -type f \
    -regex '.*/json_lexer_benchmark_wi_[0-9]+_i_[0-9]+\.txt' \
    | sort | tail -n 1)

GRAAL_TXT=$(find "$LATEST_DIR" -maxdepth 1 -type f \
    -regex '.*/json_lexer_benchmark_wi_[0-9]+_i_[0-9]+_graal\.txt' \
    | sort | tail -n 1)

if [ -z "$OPENJDK_TXT" ]; then
    echo "Error: no OpenJDK json_lexer benchmark file found in $LATEST_DIR (expected json_lexer_benchmark_wi_<wi>_i_<i>.txt)." >&2
    exit 1
fi
if [ -z "$GRAAL_TXT" ]; then
    echo "Error: no GraalVM json_lexer benchmark file found in $LATEST_DIR (expected json_lexer_benchmark_wi_<wi>_i_<i>_graal.txt)." >&2
    exit 1
fi

echo "Using OpenJDK results: $OPENJDK_TXT"
echo "Using GraalVM results: $GRAAL_TXT"

python3 extract_to_coqlex.py "$OPENJDK_TXT" "$GRAAL_TXT" ./from_coqlex/Comparison/JSON/results/CoqLex ./from_coqlex/Comparison/JSON/results/

# extract flex results to latest/flex, we pick the latest date in directory (comparing dates in YYYY-MM-DD format works lexicographically)
FLEX_DIR="./flex/"
LATEST_FLEX_DIR=$(ls -d $FLEX_DIR*/ | sort -r | head -n 1)
mkdir -p ./latest/flex/
cp $LATEST_FLEX_DIR/*.json ./latest/flex/
