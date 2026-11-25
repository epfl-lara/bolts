#!/usr/bin/env bash
# Time-boxed JMH comparison of the verified maps against the Scala standard library:
#   - verified MutableLongMap  vs  scala.collection.mutable.LongMap
#   - verified MutableHashMap  vs  scala.collection.mutable.HashMap  vs  scala.collection.immutable.HashMap
#
# The full suite (`Jmh/run -i 6 -wi 6` on every benchmark and every size) takes about 48 hours.
# This script keeps the same benchmarks but selects the two or three implementations to compare,
# a few sizes per benchmark (JMH `-p nKeys=...`) and shorter iterations, so that it fits in a CI job.
#
# Results (one JMH JSON file and one log per group, plus run-info.json) go to the output directory,
# from which generate_benchmark_report.py builds the HTML report.

set -u -o pipefail

show_help() {
	cat <<'EOF'
Usage: ./run_benchmarks_ci.sh [--profile standard|smoke] [--output DIR] [--groups "g1 g2 ..."]

Options:
  --profile P   standard (default): 6 sizes per benchmark, about 2h15.
                smoke: 1 size, 1 short iteration, about 10 minutes; checks the pipeline, not the numbers.
  --output DIR  Output directory (default: benchmark_results/raw/results_<dd.mm.yyyy>_ci).
  --groups G    Space-separated groups to run (default: "longmap longmap_big hashmap_big").
  -h, --help    Show this help message and exit.

Environment variables (override the profile):
  WARMUP_ITERATIONS, WARMUP_TIME, ITERATIONS, ITERATION_TIME   JMH -wi, -w, -i, -r
  FORK_HEAP        Heap of the benchmark JVMs (default: 12g)
  SIZES_LONGMAP, SIZES_LONGMAP_BIG, SIZES_HASHMAP_BIG          Comma-separated values of nKeys
  STAINLESS_SBT_VERSION   Release of the sbt-stainless plugin to download when it is not installed
  SBT              sbt launcher to use (default: sbt)

Exit status: 0 if every group ran, 1 otherwise (the results of the other groups are kept).
EOF
}

PROFILE="standard"
OUTPUT_DIR=""
GROUPS_TO_RUN="longmap longmap_big hashmap_big"
while [ $# -gt 0 ]; do
	case "$1" in
		-h|--help) show_help; exit 0 ;;
		--profile) PROFILE="$2"; shift 2 ;;
		--output) OUTPUT_DIR="$2"; shift 2 ;;
		--groups) GROUPS_TO_RUN="$2"; shift 2 ;;
		*) echo "Unknown argument: $1" >&2; show_help >&2; exit 2 ;;
	esac
done

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR" || exit 1

# Sizes are taken among the @Param values of the benchmark classes, evenly spread, both ends included.
case "$PROFILE" in
	standard)
		: "${WARMUP_ITERATIONS:=4}" "${WARMUP_TIME:=3s}" "${ITERATIONS:=5}" "${ITERATION_TIME:=5s}"
		: "${SIZES_LONGMAP:=1,13312,25600,39936,52224,65536}"
		: "${SIZES_LONGMAP_BIG:=1,1572864,3407872,4980736,6815744,8388608}"
		: "${SIZES_HASHMAP_BIG:=131072,1703936,3276800,5111808,6684672,8388608}"
		;;
	smoke)
		: "${WARMUP_ITERATIONS:=1}" "${WARMUP_TIME:=1s}" "${ITERATIONS:=1}" "${ITERATION_TIME:=1s}"
		: "${SIZES_LONGMAP:=65536}"
		: "${SIZES_LONGMAP_BIG:=8388608}"
		: "${SIZES_HASHMAP_BIG:=8388608}"
		;;
	*) echo "Unknown profile: $PROFILE (expected standard or smoke)" >&2; exit 2 ;;
esac
: "${FORK_HEAP:=12g}"
: "${STAINLESS_SBT_VERSION:=0.10.5}" # the release built for the scalaVersion of build.sbt
: "${SBT:=sbt}"

if [ -z "$OUTPUT_DIR" ]; then
	OUTPUT_DIR="benchmark_results/raw/results_$(date +'%d.%m.%Y')_ci"
fi
mkdir -p "$OUTPUT_DIR"
OUTPUT_DIR="$(cd "$OUTPUT_DIR" && pwd)"

# ---------------------------------------------------------------------------------------------
# The build needs the sbt-stainless plugin (see README.md); download the release if it is missing.
if [ ! -f project/lib/sbt-stainless.jar ] || [ ! -d stainless ]; then
	echo "Installing sbt-stainless $STAINLESS_SBT_VERSION ..."
	TMP_ZIP="$(mktemp -d)"
	ZIP_URL="https://github.com/epfl-lara/stainless/releases/download/v$STAINLESS_SBT_VERSION/sbt-stainless.zip"
	if command -v curl > /dev/null; then
		curl --fail --silent --show-error --location --retry 3 -o "$TMP_ZIP/sbt-stainless.zip" "$ZIP_URL" || exit 1
	else
		wget --no-verbose -O "$TMP_ZIP/sbt-stainless.zip" "$ZIP_URL" || exit 1
	fi
	unzip -q -o "$TMP_ZIP/sbt-stainless.zip" -d "$TMP_ZIP" || exit 1
	mkdir -p project/lib
	cp "$TMP_ZIP/project/lib/sbt-stainless.jar" project/lib/sbt-stainless.jar
	rm -rf stainless && cp -r "$TMP_ZIP/stainless" stainless
	rm -rf "$TMP_ZIP"
fi

# ---------------------------------------------------------------------------------------------
# Groups: JMH regex and sizes. Only the implementations that are compared are selected.
regex_of() {
	case "$1" in
		longmap) echo 'benchmark\.maps\.MutableLongMapBenchmark\..*_(Verified|Original)$' ;;
		longmap_big) echo 'benchmark\.maps\.MutableLongMapBenchmarkBig\..*_(Verified|Original)$' ;;
		hashmap_big) echo 'benchmark\.maps\.(MutableHashMapBenchmarkBig\..*_(VerifiedHashMap|OriginalHashMap)|ImmutableHashMapBenchmarkBig\..*_ImmutableHashMap)$' ;;
		*) return 1 ;;
	esac
}
sizes_of() {
	case "$1" in
		longmap) echo "$SIZES_LONGMAP" ;;
		longmap_big) echo "$SIZES_LONGMAP_BIG" ;;
		hashmap_big) echo "$SIZES_HASHMAP_BIG" ;;
	esac
}

json_escape() { printf '%s' "$1" | sed -e 's/\\/\\\\/g' -e 's/"/\\"/g' | tr -d '\n'; }

# ---------------------------------------------------------------------------------------------
# What ran, where: read by generate_benchmark_report.py. Rewritten after each group, so that it exists
# even if the run is interrupted.
CPU_MODEL="$(grep -m1 'model name' /proc/cpuinfo 2>/dev/null | cut -d: -f2- | sed 's/^ *//')"
MEMORY_GB="$(awk '/MemTotal/ {printf "%.0f", $2 / 1048576}' /proc/meminfo 2>/dev/null)"
JAVA_VERSION="$(java -version 2>&1 | sed -n 2p)"
GIT_COMMIT="$(git rev-parse --short HEAD 2>/dev/null)" || GIT_COMMIT="unknown"
GIT_BRANCH="${GITHUB_REF_NAME:-}"
if [ -z "$GIT_BRANCH" ]; then
	GIT_BRANCH="$(git rev-parse --abbrev-ref HEAD 2>/dev/null)" || GIT_BRANCH="unknown"
fi
write_run_info() {
	cat > "$OUTPUT_DIR/run-info.json" <<EOF
{
  "date": "$(date -u +'%Y-%m-%dT%H:%M:%SZ')",
  "profile": "$PROFILE",
  "commit": "$(json_escape "$GIT_COMMIT")",
  "branch": "$(json_escape "$GIT_BRANCH")",
  "host": "$(json_escape "$(hostname)")",
  "cpu": "$(json_escape "$CPU_MODEL")",
  "cores": $(nproc 2>/dev/null || echo 0),
  "memory_gb": ${MEMORY_GB:-0},
  "java": "$(json_escape "$JAVA_VERSION")",
  "warmup_iterations": $WARMUP_ITERATIONS,
  "warmup_time": "$WARMUP_TIME",
  "iterations": $ITERATIONS,
  "iteration_time": "$ITERATION_TIME",
  "fork_heap": "$FORK_HEAP",
  "total_seconds": $(( $(date +%s) - START_ALL )),
  "groups": [$GROUPS_JSON
  ]
}
EOF
}

echo "Compiling ..."
"$SBT" -batch -no-colors "Jmh/compile" > "$OUTPUT_DIR/compile.log" 2>&1 || {
	echo "Compilation failed, see $OUTPUT_DIR/compile.log" >&2
	tail -n 60 "$OUTPUT_DIR/compile.log" >&2
	exit 1
}

START_ALL=$(date +%s)
FAILED=""
GROUPS_JSON=""
write_run_info
for GROUP in $GROUPS_TO_RUN; do
	REGEX="$(regex_of "$GROUP")" || { echo "Unknown group: $GROUP" >&2; FAILED="$FAILED $GROUP"; continue; }
	SIZES="$(sizes_of "$GROUP")"
	RESULT="$OUTPUT_DIR/$GROUP.json"
	LOG="$OUTPUT_DIR/$GROUP.log"
	rm -f "$RESULT"
	echo "=========================================="
	echo "Group $GROUP   nKeys=$SIZES"
	echo "  -wi $WARMUP_ITERATIONS -w $WARMUP_TIME -i $ITERATIONS -r $ITERATION_TIME -f 1 -t 1, heap $FORK_HEAP"
	echo "  log: $LOG"
	START=$(date +%s)
	"$SBT" -batch -no-colors \
		"Jmh/run -f 1 -t 1 -wi $WARMUP_ITERATIONS -w $WARMUP_TIME -i $ITERATIONS -r $ITERATION_TIME -p nKeys=$SIZES -jvmArgsAppend -Xms$FORK_HEAP -jvmArgsAppend -Xmx$FORK_HEAP -rf json -rff $RESULT $REGEX" \
		> "$LOG" 2>&1
	STATUS=$?
	DURATION=$(( $(date +%s) - START ))
	if [ $STATUS -ne 0 ] || [ ! -s "$RESULT" ]; then
		echo "  FAILED after ${DURATION}s (exit code $STATUS)" >&2
		tail -n 30 "$LOG" >&2
		FAILED="$FAILED $GROUP"
		STATUS_TEXT="failed"
	else
		echo "  done in ${DURATION}s"
		STATUS_TEXT="ok"
	fi
	GROUPS_JSON="$GROUPS_JSON${GROUPS_JSON:+,}
    {\"name\": \"$GROUP\", \"sizes\": \"$SIZES\", \"seconds\": $DURATION, \"status\": \"$STATUS_TEXT\"}"
	write_run_info
done
TOTAL=$(( $(date +%s) - START_ALL ))

echo "=========================================="
echo "Total time: $(( TOTAL / 3600 ))h$(( TOTAL % 3600 / 60 ))m"
echo "Results saved in: $OUTPUT_DIR"
if [ -n "$FAILED" ]; then
	echo "Failed groups:$FAILED" >&2
	exit 1
fi
