#!/usr/bin/env bash

show_help() {
	cat <<'EOF'
Usage: ./verify.sh [--parallel N] [stainless options]

Run Stainless verification on the verified lexer project.

Arguments:
	stainless options  Additional options passed through to stainless-dotty

Options:
	-p, --parallel N   Number of parallel workers for Stainless (-D-parallel)
										 Default: 12

	-h, --help         Show this help message and exit

Examples:
	./verify.sh
	./verify.sh --parallel 16
	./verify.sh -p 16 --json --debug=smt
	./verify.sh "--json --debug=smt"
EOF
}

if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
	show_help
	exit 0
fi

if [ -n "$1" ] && [[ "$1" =~ ^[0-9]+$ ]]; then
	echo "Error: parallelism must be passed with -p or --parallel." >&2
	echo "Try: ./verify.sh --parallel $1" >&2
	exit 1
fi

PARALLEL="12"
EXTRA_ARGS=()

while [ "$#" -gt 0 ]; do
	case "$1" in
		-h|--help)
			show_help
			exit 0
			;;
		-p|--parallel)
			if [ -z "$2" ] || [[ "$2" == -* ]]; then
				echo "Error: missing value for $1" >&2
				exit 1
			fi
			PARALLEL="$2"
			shift 2
			;;
		--parallel=*)
			PARALLEL="${1#*=}"
			shift
			;;
		--)
			shift
			EXTRA_ARGS+=("$@")
			break
			;;
		*)
			EXTRA_ARGS+=("$1")
			shift
			;;
	esac
done

if ! [[ "$PARALLEL" =~ ^[0-9]+$ ]] || [ "$PARALLEL" -lt 1 ]; then
	echo "Error: --parallel must be a positive integer (got '$PARALLEL')." >&2
	exit 1
fi

export _JAVA_OPTIONS="-Xmx32g"
stainless-dotty\
 src/main/scala/com/ziplex/lexer/VerifiedRegex.scala\
 src/main/scala/com/ziplex/lexer/VerifiedLexer.scala\
 src/main/scala/com/ziplex/lexer/Utils.scala\
 src/main/scala/com/ziplex/lexer/LexerInterface.scala\
 src/main/scala/com/ziplex/map/*\
 src/main/scala/com/ziplex/example/Utils.scala\
 src/main/scala/com/ziplex/lexer/Vector.scala\
 src/main/scala/com/ziplex/lexer/BalanceConcArr.scala\
 src/main/scala/com/ziplex/example/JSONLexer.scala\
 src/main/scala/com/ziplex/example/JsonManipulation.scala\
 src/main/scala/com/ziplex/example/AmyLexer.scala\
 src/main/scala/com/ziplex/example/PythonLexer.scala\
 --config-file=stainless.conf\
 -D-parallel="$PARALLEL" --functions=MemoisationRegex._,MemoisationZipper._,VerifiedRegex_,ZipperRegex._,VerifiedRegexMatcher._,VerifiedLexer._,Utils._,ListUtils._,SetUtils._,Types._,Vector._,IArray._,BalanceConcObj._,Token._,Rule._,semiInverseBodyModEq,equivClassesBody,semiInverseModEq,equivClasses,TokenValueInjection._,ExampleAmyLexer._,ExamplePythonLexer._,ExampleJsonLexer._,JsonManipulationExample._\
 "${EXTRA_ARGS[@]}"

