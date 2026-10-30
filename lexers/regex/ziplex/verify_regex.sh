#!/usr/bin/env bash

show_help() {
	cat <<'EOF'
Usage: ./verify.sh [--parallel N] [stainless options]

Run Stainless verification on the verified lexer project.

Arguments:
	stainless options  Additional options passed through to stainless-dotty

Options:
	-p, --parallel N   Number of parallel workers for Stainless (-D-parallel)
										 Default: 2

	-h, --help         Show this help message and exit

Examples:
	./verify.sh
	./verify.sh --parallel 3
	./verify.sh -p 3 --json --debug=smt
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

PARALLEL="2"
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

# Full functions list:
#  --functions=MutableHashMap._,ListMap._,TupleListOpsGenK._,ListMapLemmas._,MutableMapInterface._,MemoisationRegex._,MemoisationZipper._,VerifiedRegex_,ZipperRegex._,VerifiedRegexMatcher._,Utils._,ListUtils._,SetUtils._,Types._,Vector._,IArray._,BalanceConcObj._,LexerInterface._,VerifiedLexer._,seqFromListBHdTlConstructive,emptySeq,singletonSeq,seqFromList,seqFromArray,Token._,Rule._,semiInverseBodyModEq,equivClassesBody,semiInverseModEq,equivClasses,TokenValueInjection._,ExampleAmyLexer._,ExamplePythonLexer._,ExampleJsonLexer._,JsonManipulationExample._

export _JAVA_OPTIONS="-Xmx27g"

SOURCES=(
	src/main/scala/com/ziplex/lexer/LexerInterface.scala
	src/main/scala/com/ziplex/lexer/VerifiedRegex.scala
	src/main/scala/com/ziplex/lexer/Utils.scala
	src/main/scala/com/ziplex/map/*
	src/main/scala/com/ziplex/example/Utils.scala
	src/main/scala/com/ziplex/lexer/Vector.scala
	src/main/scala/com/ziplex/lexer/BalanceConcArr.scala
)

TASK_NAMES=(
	"Regex matching engine, utils, zipper optimization"
)
TASK_FUNCTIONS=(
	"MemoisationRegex._,VerifiedRegex_,VerifiedRegexMatcher._,Utils._,ListUtils._,SetUtils._,Types._,Vector._,IArray._,BalanceConcObj._,seqFromListBHdTlConstructive,emptySeq,singletonSeq,seqFromList,seqFromArray,MemoisationZipper._,ZipperRegex._"
)
NUM_TASKS=${#TASK_NAMES[@]}

# Each task's output is shown live and kept in a log, which is parsed for the final summary
TMP_ROOT="${TMPDIR:-/tmp}"
LOG_DIR="$(mktemp -d "${TMP_ROOT%/}/ziplex-verify.XXXXXX")"
TASK_EXIT=()
TASK_SECONDS=()

echo "Running verification with parallelism: $PARALLEL"
echo "Additional Stainless options: ${EXTRA_ARGS[*]}"
echo "Logs: $LOG_DIR"

for ((i = 0; i < NUM_TASKS; i++)); do
	echo "Verifying ${TASK_NAMES[$i]}... (task $((i + 1))/$NUM_TASKS)"
	start=$SECONDS
	stainless-dotty\
	 "${SOURCES[@]}"\
	 --config-file=stainless.conf\
	 --solvers=smt-z3,smt-cvc5\
	 -D-parallel="$PARALLEL" --functions="${TASK_FUNCTIONS[$i]}"\
	 "${EXTRA_ARGS[@]}" 2>&1 | tee "$LOG_DIR/task$((i + 1)).log"
	TASK_EXIT+=("${PIPESTATUS[0]}")
	TASK_SECONDS+=($((SECONDS - start)))
done

# ---------------------------------------------------------------------------
# Summary
# ---------------------------------------------------------------------------

MAX_FAILURES_SHOWN=5
WIDTH=$(tput cols 2>/dev/null || echo 120)
if [ -t 1 ]; then
	GREEN=$'\033[32m'; RED=$'\033[31m'; BOLD=$'\033[1m'; DIM=$'\033[2m'; RESET=$'\033[0m'
else
	GREEN=""; RED=""; BOLD=""; DIM=""; RESET=""
fi

fmt_duration() {
	local s=$1
	if [ "$s" -ge 3600 ]; then printf "%dh%02dm%02ds" $((s / 3600)) $((s % 3600 / 60)) $((s % 60))
	elif [ "$s" -ge 60 ]; then printf "%dm%02ds" $((s / 60)) $((s % 60))
	else printf "%ds" "$s"
	fi
}

percent() { # percent PART WHOLE
	if [ "$2" -gt 0 ]; then echo $(( $1 * 100 / $2 )); else echo 0; fi
}

strip_ansi() { sed $'s/\033\\[[0-9;]*m//g' "$1"; }

ALL_TOTAL=0; ALL_VALID=0; ALL_CACHED=0; ALL_INVALID=0; ALL_UNKNOWN=0; ALL_SECONDS=0; TASKS_OK=0

echo
echo "${BOLD}══════════════════════════════ Verification summary ══════════════════════════════${RESET}"
for ((i = 0; i < NUM_TASKS; i++)); do
	log="$LOG_DIR/task$((i + 1)).log"
	exit_code=${TASK_EXIT[$i]}
	duration=$(fmt_duration "${TASK_SECONDS[$i]}")
	ALL_SECONDS=$((ALL_SECONDS + TASK_SECONDS[i]))

	# e.g. "total: 4674 valid: 4674 (1973 from cache, 56 trivial) invalid: 0 unknown: 0 time: 905.33"
	stats=$(strip_ansi "$log" | grep -E "total: *[0-9]+ +valid: *[0-9]+" | tail -1 \
		| sed -E 's/.*total: *([0-9]+) +valid: *([0-9]+) *\(([0-9]+) from cache, *([0-9]+) trivial\) *invalid: *([0-9]+) +unknown: *([0-9]+) +time: *([0-9.]+).*/\1 \2 \3 \4 \5 \6 \7/')

	if ! [[ "$stats" =~ ^[0-9]+\ [0-9]+\ [0-9]+\ [0-9]+\ [0-9]+\ [0-9]+\ [0-9.]+$ ]]; then
		echo "${RED}✘ [$((i + 1))/$NUM_TASKS] ${TASK_NAMES[$i]}: NO RESULT${RESET} (stainless exited with code $exit_code, after $duration)"
		echo "    ${DIM}Last error lines:${RESET}"
		strip_ansi "$log" | grep -iE "error|exception" | tail -3 | cut -c1-$((WIDTH - 6)) | sed 's/^/      /'
		continue
	fi

	read -r total valid cached trivial invalid unknown solver_time <<< "$stats"
	ALL_TOTAL=$((ALL_TOTAL + total)); ALL_VALID=$((ALL_VALID + valid)); ALL_CACHED=$((ALL_CACHED + cached))
	ALL_INVALID=$((ALL_INVALID + invalid)); ALL_UNKNOWN=$((ALL_UNKNOWN + unknown))

	if [ "$exit_code" -eq 0 ] && [ "$invalid" -eq 0 ] && [ "$unknown" -eq 0 ]; then
		TASKS_OK=$((TASKS_OK + 1))
		echo "${GREEN}✔ [$((i + 1))/$NUM_TASKS] ${TASK_NAMES[$i]}: VERIFIED${RESET} ($duration)"
	else
		echo "${RED}✘ [$((i + 1))/$NUM_TASKS] ${TASK_NAMES[$i]}: NOT VERIFIED${RESET} ($duration, exit code $exit_code)"
	fi
	echo "    $total VCs: $valid valid, $invalid invalid, $unknown unknown · cache hits: $cached ($(percent "$cached" "$total")%) · trivial: $trivial · solver time: ${solver_time%.*}s"

	# Shown as "<status>  <file>:<line>:<col>: <function> <VC kind>"
	# Failed VCs appear several times in stainless' report (with full and short paths), so they are deduplicated on file name + position
	failures=$(strip_ansi "$log" | grep "║" | grep -E " (invalid|timeout|unknown|crashed) " \
		| sed -E 's/ *║ *$//; s/^.*║ *//; s/ +/ /g; s#^[^ ]*/([^/ ]+:[0-9]+:[0-9]+:)#\1#; s/^(.*) (invalid|timeout|unknown|crashed) .*$/\2  \1/' | sort -u)
	if [ -n "$failures" ]; then
		nfail=$(printf "%s\n" "$failures" | wc -l | tr -d ' ')
		printf "%s\n" "$failures" | head -n "$MAX_FAILURES_SHOWN" | cut -c1-$((WIDTH - 6)) | sed "s/^/    ${RED}✘${RESET} /"
		if [ "$nfail" -gt "$MAX_FAILURES_SHOWN" ]; then
			echo "    ${DIM}… and $((nfail - MAX_FAILURES_SHOWN)) more, see $log${RESET}"
		fi
	fi
done

echo "${BOLD}──────────────────────────────────────────────────────────────────────────────────${RESET}"
if [ "$TASKS_OK" -eq "$NUM_TASKS" ]; then
	echo "${GREEN}${BOLD}✔ All $NUM_TASKS tasks verified${RESET}"
else
	echo "${RED}${BOLD}✘ $TASKS_OK/$NUM_TASKS tasks verified${RESET}"
fi
echo "  $ALL_TOTAL VCs: $ALL_VALID valid, $ALL_INVALID invalid, $ALL_UNKNOWN unknown · cache hits: $ALL_CACHED ($(percent "$ALL_CACHED" "$ALL_TOTAL")%) · total time: $(fmt_duration "$ALL_SECONDS")"
echo "  Logs: $LOG_DIR"

[ "$TASKS_OK" -eq "$NUM_TASKS" ]
