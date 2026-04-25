show_help() {
	cat <<'EOF'
Usage: ./run_benchmarks.sh [iterations] [warm_iterations]

Run the Scala benchmark suite and flex benchmarks.

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

# Defaults: iterations=5, warm_iterations=5
ITERATIONS="${1:-5}"
WARM_ITERATIONS="${2:-5}"

# Create a directory named results_{current date} if it doesn't exist
DIRECTORY_NAME="results_$(date +'%d.%m.%Y')"
DIRECTORY_PATH="./benchmark_results/raw/$DIRECTORY_NAME"
cd ./benchmark_results/raw && mkdir -p "$DIRECTORY_NAME" && cd - || exit 1
sbt -no-colors "Jmh/run -i $ITERATIONS -wi $WARM_ITERATIONS -f1 -t1 com.ziplex.lexer.benchmark.lexer.JsonLexerBenchmark" > "$DIRECTORY_PATH/json_lexer_benchmark_wi_${WARM_ITERATIONS}_i_${ITERATIONS}.txt"
sbt -no-colors "Jmh/run -i $ITERATIONS -wi $WARM_ITERATIONS -f1 -t1 com.ziplex.lexer.benchmark.lexer.AAStarBLexerBenchmark" > "$DIRECTORY_PATH/aa_star_b_lexer_benchmark_wi_${WARM_ITERATIONS}_i_${ITERATIONS}.txt"
sbt -no-colors "Jmh/run -i $ITERATIONS -wi $WARM_ITERATIONS -f1 -t1 com.ziplex.lexer.benchmark.lexer.BigAAStarBLexerBenchmark" > "$DIRECTORY_PATH/aa_star_b_lexer_benchmark_big_wi_${WARM_ITERATIONS}_i_${ITERATIONS}.txt"
sbt -no-colors "Jmh/run -i $ITERATIONS -wi $WARM_ITERATIONS -f1 -t1 com.ziplex.lexer.benchmark.lexer.JsonManipulationBenchmark" > "$DIRECTORY_PATH/json_manipulation_benchmark_wi_${WARM_ITERATIONS}_i_${ITERATIONS}.txt"
# sbt -no-colors "Jmh/run -i $ITERATIONS -wi $WARM_ITERATIONS -f1 -t1 com.ziplex.lexer.benchmark.LexerRegexBenchmark" > "$DIRECTORY_PATH/lexerregex_benchmark_wi_${WARM_ITERATIONS}_i_${ITERATIONS}.txt"
# sbt -no-colors "Jmh/run -i $ITERATIONS -wi $WARM_ITERATIONS -f1 -t1 com.ziplex.lexer.benchmark.RegexBenchmark" > "$DIRECTORY_PATH/regex_benchmark_wi_${WARM_ITERATIONS}_i_${ITERATIONS}.txt"
sbt -no-colors "Jmh/run -i $ITERATIONS -wi $WARM_ITERATIONS -f1 -t1 com.ziplex.lexer.benchmark.lexer.AmyLexerBenchmarkGenerated" > "$DIRECTORY_PATH/amy_lexer_benchmark_wi_${WARM_ITERATIONS}_i_${ITERATIONS}.txt"

echo "Benchmark results saved in: $DIRECTORY_PATH"

echo "Run flex benchmarks by executing ./flex_benchmarks/run_benchmark.sh"
cd ./flex_benchmarks || exit 1
./build.sh
./run_benchmark.sh