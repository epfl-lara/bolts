#!/usr/bin/env bash
show_help() {
	cat <<'EOF'
Usage: ./run_benchmarks.sh [iterations] [warm_iterations]

Run the Scala benchmark suite and flex benchmarks.

This script automatically switches the local ziplex git repository to the
'benchmarks' branch before running the benchmarks, and restores the original
branch on success. If the run fails at any point, the script rolls back to
the 'main' branch.

Arguments:
	iterations        Number of JMH measurement iterations (default: 5)
	warm_iterations   Number of JMH warmup iterations (default: 5)

Options:
	-h, --help        Show this help message and exit

Examples:
	./run_benchmarks.sh
	./run_benchmarks.sh 10 3
EOF
}

if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
	show_help
	exit 0
fi

set -e

# Defaults: iterations=5, warm_iterations=5
ITERATIONS="${1:-5}"
WARM_ITERATIONS="${2:-5}"

# Create a directory named results_{current date} if it doesn't exist
DIRECTORY_NAME="results_$(date +'%d.%m.%Y')"
DIRECTORY_PATH="./benchmark_results/raw/$DIRECTORY_NAME"

# Determine the directory of this script (root of the ziplex repo)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Load SDKMAN if available (non-interactive shells do not source it by default)
if [ -z "$SDKMAN_DIR" ] && [ -d "$HOME/.sdkman" ]; then
	SDKMAN_DIR="$HOME/.sdkman"
fi
if [ -n "$SDKMAN_DIR" ] && [ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]; then
	# shellcheck source=/dev/null
	. "$SDKMAN_DIR/bin/sdkman-init.sh"
fi

# Save current SDKMAN java default and current git branch so we can restore
# them on exit (or roll back to 'main' on failure).
CURRENT_JAVA=$(sdk current java | awk '{print $NF}' | xargs)
CURRENT_BRANCH=$(git -C "$SCRIPT_DIR" rev-parse --abbrev-ref HEAD 2>/dev/null || echo "")

rm -rf /ziplex/target/stainless_3/stainless-library_3-0.9.9.3-sources/META-INF/MANIFEST.MF
rm -rf ./target/stainless_3/stainless-library_3-sources/META-INF/MANIFEST.MF

echo "Cleanning sbt build artifacts..."
sbt clean 

cd ./benchmark_results/raw && mkdir -p "$DIRECTORY_NAME" && cd - || exit 1
echo "Running benchmarks with open jdk jvm..."

echo "See benchmark results in: $DIRECTORY_PATH"

# sbt -no-colors "Jmh/run -i $ITERATIONS -wi $WARM_ITERATIONS -f1 -t1 com.ziplex.lexer.benchmark.lexer.JsonLexerBenchmark" > "$DIRECTORY_PATH/json_lexer_benchmark_wi_${WARM_ITERATIONS}_i_${ITERATIONS}.txt"
# sbt -no-colors "Jmh/run -i $ITERATIONS -wi $WARM_ITERATIONS -f1 -t1 com.ziplex.lexer.benchmark.lexer.AAStarBLexerBenchmark" > "$DIRECTORY_PATH/aa_star_b_lexer_benchmark_wi_${WARM_ITERATIONS}_i_${ITERATIONS}.txt"
# sbt -no-colors "Jmh/run -i $ITERATIONS -wi $WARM_ITERATIONS -f1 -t1 com.ziplex.lexer.benchmark.lexer.BigAAStarBLexerBenchmark" > "$DIRECTORY_PATH/aa_star_b_lexer_benchmark_big_wi_${WARM_ITERATIONS}_i_${ITERATIONS}.txt"
# sbt -no-colors "Jmh/run -i $ITERATIONS -wi $WARM_ITERATIONS -f1 -t1 com.ziplex.lexer.benchmark.lexer.JsonManipulationBenchmark" > "$DIRECTORY_PATH/json_manipulation_benchmark_wi_${WARM_ITERATIONS}_i_${ITERATIONS}.txt"
sbt -no-colors "Jmh/run -i $ITERATIONS -wi $WARM_ITERATIONS -f1 -t1 com.ziplex.lexer.benchmark.RegexClementBenchmark" > "$DIRECTORY_PATH/regex_clement_benchmark_wi_${WARM_ITERATIONS}_i_${ITERATIONS}.txt"
# sbt -no-colors "Jmh/run -i $ITERATIONS -wi $WARM_ITERATIONS -f1 -t1 com.ziplex.lexer.benchmark.LexerRegexBenchmark" > "$DIRECTORY_PATH/lexerregex_benchmark_wi_${WARM_ITERATIONS}_i_${ITERATIONS}.txt"
# sbt -no-colors "Jmh/run -i $ITERATIONS -wi $WARM_ITERATIONS -f1 -t1 com.ziplex.lexer.benchmark.RegexBenchmark" > "$DIRECTORY_PATH/regex_benchmark_wi_${WARM_ITERATIONS}_i_${ITERATIONS}.txt"
# sbt -no-colors "Jmh/run -i $ITERATIONS -wi $WARM_ITERATIONS -f1 -t1 com.ziplex.lexer.benchmark.lexer.AmyLexerBenchmarkGenerated" > "$DIRECTORY_PATH/amy_lexer_benchmark_wi_${WARM_ITERATIONS}_i_${ITERATIONS}.txt"
# sbt -no-colors "Jmh/run -i $ITERATIONS -wi $WARM_ITERATIONS -f1 -t1 com.ziplex.lexer.benchmark.maps.MutableHashMapBenchmarkBig" > "$DIRECTORY_PATH/hashmap_benchmark_big_wi_${WARM_ITERATIONS}_i_${ITERATIONS}.txt" 

echo "Benchmark results saved in: $DIRECTORY_PATH"

echo "Run flex benchmarks by executing ./flex_benchmarks/run_benchmark.sh"
cd ./flex_benchmarks || exit 1
./build.sh
./run_benchmark.sh
