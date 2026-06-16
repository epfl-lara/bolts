#!/usr/bin/env bash

show_help() {
	cat <<'EOF'
Usage: ./run_benchmarks_pipeline.sh [iterations] [warm_iterations]

Run the full benchmark pipeline:
	1) Execute the Scala (and flex) benchmark suite via ./run_benchmarks.sh
	2) Extract the raw logs into the format consumed by
	   "Benchmark Data Analysis.ipynb" via ./benchmark_results/extract_data.sh

After this script completes successfully, the notebook in
./benchmark_results/Benchmark Data Analysis.ipynb can be run directly to
produce the plots.

Branch management is handled by ./run_benchmarks.sh: it automatically
switches the local ziplex git repository to the 'benchmarks' branch and
restores the original branch on success, or rolls back to 'main' on
failure.

Arguments:
	iterations        Number of JMH measurement iterations (default: 5)
	                  Forwarded to ./run_benchmarks.sh.
	warm_iterations   Number of JMH warmup iterations (default: 5)
	                  Forwarded to ./run_benchmarks.sh.

Options:
	-h, --help        Show this help message and exit

Examples:
	./run_benchmarks_pipeline.sh
	./run_benchmarks_pipeline.sh 10 3
EOF
}

if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
	show_help
	exit 0
fi

set -e

ITERATIONS="${1:-5}"
WARM_ITERATIONS="${2:-5}"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Capture the date once so that the extract step targets the same directory
# that ./run_benchmarks.sh will create (both use date +'%d.%m.%Y').
RUN_DATE="$(date +'%d.%m.%Y')"
RAW_RESULTS_DIR="benchmark_results/raw/results_${RUN_DATE}"

cd "$SCRIPT_DIR"

echo "=========================================="
echo "Step 1/2: Running benchmarks"
echo "  iterations:       $ITERATIONS"
echo "  warm iterations:  $WARM_ITERATIONS"
echo "  output directory: $RAW_RESULTS_DIR"
echo "=========================================="
./run_benchmarks.sh "$ITERATIONS" "$WARM_ITERATIONS"

if [ ! -d "$RAW_RESULTS_DIR" ]; then
	echo "Error: expected raw results directory '$RAW_RESULTS_DIR' was not created." >&2
	echo "Cannot run extraction step. Check the benchmark logs above for the actual output directory." >&2
	exit 1
fi

echo "=========================================="
echo "Step 2/2: Extracting data for the analysis notebook"
echo "  input:  $RAW_RESULTS_DIR"
echo "=========================================="
cd "$SCRIPT_DIR/benchmark_results"
./extract_data.sh "../$RAW_RESULTS_DIR"

echo "=========================================="
echo "Pipeline complete."
echo "Open 'benchmark_results/Benchmark Data Analysis.ipynb' to generate the plots."
echo "=========================================="
