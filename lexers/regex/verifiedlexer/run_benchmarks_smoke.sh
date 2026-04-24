# Create a directory named results_{current date with time} if it doesn't exist
DIRECTORY_NAME="results_$(date +'%d.%m.%Y')"
DIRECTORY_PATH="./benchmark_results/raw/$DIRECTORY_NAME"
cd ./benchmark_results/raw && mkdir -p "$DIRECTORY_NAME" && cd - || exit 1
echo "Running smoke test benchmarks..."
sbt -no-colors "Jmh/run -i 1 -wi 1 -f1 -t1 com.ziplex.lexer.benchmark.lexer.JsonLexerBenchmarkSmoke" > "$DIRECTORY_PATH/json_lexer_benchmark_smoke_wi_1_i_1.txt"

echo "Benchmark results saved in: $DIRECTORY_PATH"