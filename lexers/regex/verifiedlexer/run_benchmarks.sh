# Create a directory named results_{current date with time} if it doesn't exist
DIRECTORY_NAME="results_$(date +'%d.%m.%Y')"
mkdir -p "$DIRECTORY_NAME"
sbt "Jmh/run -i 5 -wi 5 -f1 -t1 ch.epfl.lexer.benchmark.RegexBenchmark" > "$DIRECTORY_NAME/json_regex_benchmark_abStar_wi_5_i_5_laraserver4.txt"
sbt "Jmh/run -i 5 -wi 5 -f1 -t1 ch.epfl.lexer.benchmark.lexer.JsonLexerBenchmark" > "$DIRECTORY_NAME/json_lexer_benchmark_wi_5_i_5_laraserver4.txt"
sbt "Jmh/run -i 5 -wi 5 -f1 -t1 ch.epfl.lexer.benchmark.lexer.JsonManipulationBenchmark" > "$DIRECTORY_NAME/json_manipulation_benchmark_wi_5_i_5_laraserver4.txt"