
# Load SDKMAN if available (non-interactive shells do not source it by default)
if [ -z "$SDKMAN_DIR" ] && [ -d "$HOME/.sdkman" ]; then
	SDKMAN_DIR="$HOME/.sdkman"
fi
if [ -n "$SDKMAN_DIR" ] && [ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]; then
	# shellcheck source=/dev/null
	. "$SDKMAN_DIR/bin/sdkman-init.sh"
fi

# Save current SDKMAN java default so we can restore it on exit
CURRENT_JAVA=$(sdk current java | awk '{print $NF}')
restore_java() {
	if [ -n "$CURRENT_JAVA" ] && [ "$CURRENT_JAVA" != "(none)" ]; then
		sdk default java "$CURRENT_JAVA"
	fi
}
trap restore_java EXIT

# Create a directory named results_{current date with time} if it doesn't exist
DIRECTORY_NAME="results_$(date +'%d.%m.%Y')"
DIRECTORY_PATH="./benchmark_results/raw/$DIRECTORY_NAME"
cd ./benchmark_results/raw && mkdir -p "$DIRECTORY_NAME" && cd - || exit 1
echo "Running smoke test benchmarks with openjdk ..."
OPENJDK_VERSION=""
if sdk default java 21.ea.35-open; then
	OPENJDK_VERSION="21.ea.35-open"
elif sdk default java 21.0.2-open; then
	OPENJDK_VERSION="21.0.2-open"
else
	echo "Error: No supported OpenJDK 21 found (expected 21.ea.35-open or 21.0.2-open)." >&2
	exit 1
fi
echo "Using OpenJDK: $OPENJDK_VERSION"

sbt -no-colors "Jmh/run -i 1 -wi 1 -f1 -t1 com.ziplex.lexer.benchmark.lexer.JsonLexerBenchmarkSmoke" > "$DIRECTORY_PATH/json_lexer_benchmark_smoke_wi_1_i_1.txt"

echo "Running smoke test benchmarks with oracle graalvm jvm..."

if ! sdk default java 21.0.11-graal; then
	echo "Error: GraalVM 21.0.11-graal is not available via SDKMAN." >&2
	exit 1
fi

sbt -no-colors "Jmh/run -i 1 -wi 1 -f1 -t1 com.ziplex.lexer.benchmark.lexer.JsonLexerBenchmarkSmoke" > "$DIRECTORY_PATH/json_lexer_benchmark_smoke_wi_1_i_1_graal.txt"

echo "Restore java default to: $CURRENT_JAVA"
sdk default java "$CURRENT_JAVA"

echo "Benchmark results saved in: $DIRECTORY_PATH"