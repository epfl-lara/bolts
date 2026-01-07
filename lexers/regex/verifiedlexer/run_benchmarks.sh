# Create a directory named results_{current date with time} if it doesn't exist
DIRECTORY_NAME="results_$(date +'%d.%m.%Y')"
DIRECTORY_PATH="./benchmark_results/raw/$DIRECTORY_NAME"
export SBT_OPTS="-Xss1G";
cd ./benchmark_results/raw && mkdir -p "$DIRECTORY_NAME" && cd - || exit 1
sbt -no-colors "Jmh/run -i 3 -wi 1 -f1 -t1 com.ziplex.lexer.benchmark.lexer.AAStarBLexerBenchmark" > "$DIRECTORY_PATH/aa_star_b_lexer_benchmark_wi_5_i_5_laraserver4.txt"
sbt -no-colors "Jmh/run -i 5 -wi 5 -f1 -t1 com.ziplex.lexer.benchmark.lexer.JsonLexerBenchmark" > "$DIRECTORY_PATH/json_lexer_benchmark_wi_5_i_5_laraserver4.txt"
sbt -no-colors "Jmh/run -i 5 -wi 5 -f1 -t1 com.ziplex.lexer.benchmark.lexer.JsonManipulationBenchmark" > "$DIRECTORY_PATH/json_manipulation_benchmark_wi_5_i_5_laraserver4.txt"
sbt -no-colors "Jmh/run -i 5 -wi 5 -f1 -t1 com.ziplex.lexer.benchmark.LexerRegexBenchmark" > "$DIRECTORY_PATH/lexerregex_benchmark_wi_5_i_5_laraserver4.txt"
sbt -no-colors "Jmh/run -i 5 -wi 5 -f1 -t1 com.ziplex.lexer.benchmark.RegexBenchmark" > "$DIRECTORY_PATH/regex_benchmark_wi_5_i_5_laraserver4.txt"