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
Usage: ./run_benchmarks_ci.sh [--profile standard|smoke] [--stainless V] [--output DIR] [--groups "g1 g2 ..."]

Options:
  --profile P   standard (default): 6 sizes per benchmark, about 2h15.
                smoke: 1 size, 1 short iteration, about 10 minutes; checks the pipeline, not the numbers.
  --stainless V Stainless whose sbt plugin and library the benchmarks are compiled with:
                  x.y.z   the release x.y.z (its sbt-stainless.zip is downloaded)
                  main    the main branch of the Stainless repository, cloned and built in target/ci-stainless
                          (a few more minutes; any other branch, tag or commit works too)
                Default: the plugin already installed in project/lib and stainless/, or main if
                there is none. With this option, the installed plugin is replaced if it is another version.
  --output DIR  Output directory (default: benchmark_results/raw/results_<dd.mm.yyyy>_ci).
  --groups G    Space-separated groups to run (default: "longmap longmap_big hashmap_big").
  -h, --help    Show this help message and exit.

Environment variables (override the profile):
  WARMUP_ITERATIONS, WARMUP_TIME, ITERATIONS, ITERATION_TIME   JMH -wi, -w, -i, -r
  FORK_HEAP        Heap of the benchmark JVMs (default: 12g)
  SIZES_LONGMAP, SIZES_LONGMAP_BIG, SIZES_HASHMAP_BIG          Comma-separated values of nKeys
  STAINLESS_VERSION       Same as --stainless (the option wins)
  STAINLESS_REPO          Repository cloned for a version that is not a release
                          (default: https://github.com/epfl-lara/stainless.git)
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
		--stainless) STAINLESS_VERSION="$2"; shift 2 ;;
		--output) OUTPUT_DIR="$2"; shift 2 ;;
		--groups) GROUPS_TO_RUN="$2"; shift 2 ;;
		*) echo "Unknown argument: $1" >&2; show_help >&2; exit 2 ;;
	esac
done

# A relative --output is relative to the directory the script is called from, not to the script
case "$OUTPUT_DIR" in
	""|/*) ;;
	*) OUTPUT_DIR="$PWD/$OUTPUT_DIR" ;;
esac
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
: "${STAINLESS_VERSION:=}"
: "${STAINLESS_REPO:=https://github.com/epfl-lara/stainless.git}"
DEFAULT_STAINLESS_VERSION="main"
: "${SBT:=sbt}"

if [ -z "$OUTPUT_DIR" ]; then
	OUTPUT_DIR="benchmark_results/raw/results_$(date +'%d.%m.%Y')_ci"
fi
mkdir -p "$OUTPUT_DIR"
OUTPUT_DIR="$(cd "$OUTPUT_DIR" && pwd)"

# ---------------------------------------------------------------------------------------------
# The build needs the sbt-stainless plugin (see README.md): project/lib/sbt-stainless.jar and stainless/.
# It is installed from a release or built from the sources of Stainless, depending on STAINLESS_VERSION.
# project/lib/sbt-stainless.version records what this script installed, to install it only once.
STAINLESS_MARKER="project/lib/sbt-stainless.version"
has_stainless_plugin() { [ -f project/lib/sbt-stainless.jar ] && [ -d stainless ]; }

install_stainless_zip() { # $1: sbt-stainless.zip, $2: what to record in the marker
	local tmp
	tmp="$(mktemp -d)"
	unzip -q -o "$1" -d "$tmp" || return 1
	mkdir -p project/lib
	cp "$tmp/project/lib/sbt-stainless.jar" project/lib/sbt-stainless.jar || return 1
	rm -rf stainless && cp -r "$tmp/stainless" stainless || return 1
	rm -rf "$tmp"
	echo "$2" > "$STAINLESS_MARKER"
}

install_stainless_release() { # $1: x.y.z
	echo "Installing sbt-stainless $1 ..."
	local tmp url
	tmp="$(mktemp -d)"
	url="https://github.com/epfl-lara/stainless/releases/download/v$1/sbt-stainless.zip"
	if command -v curl > /dev/null; then
		curl --fail --silent --show-error --location --retry 3 -o "$tmp/sbt-stainless.zip" "$url" || return 1
	else
		wget --no-verbose -O "$tmp/sbt-stainless.zip" "$url" || return 1
	fi
	install_stainless_zip "$tmp/sbt-stainless.zip" "$1" || return 1
	rm -rf "$tmp"
}

# Clones Stainless, checks out the commit and packages the sbt plugin with the script of the repository
# (bin/package-sbt-plugin.sh, which publishes the artifacts in ~/.ivy2/local and zips them like a release).
install_stainless_sources() { # $1: branch, tag or commit, $2: commit, $3: what to record in the marker
	local src="$SCRIPT_DIR/target/ci-stainless" log="$OUTPUT_DIR/stainless-build.log" tool
	for tool in git zip unzip; do
		command -v "$tool" > /dev/null || { echo "$tool is needed to build Stainless $1" >&2; return 1; }
	done
	echo "Building sbt-stainless from $STAINLESS_REPO, $1 (${2:0:8}) ..."
	echo "  log: $log"
	rm -rf "$src"
	{
		git clone --quiet "$STAINLESS_REPO" "$src" &&
			git -C "$src" checkout --quiet --detach "$2" &&
			git -C "$src" submodule update --quiet --init --recursive
	} > "$log" 2>&1 || { tail -n 20 "$log" >&2; return 1; }
	# The script calls `sbt`: make it the launcher of this script
	if ! (cd "$src" && PATH="$(dirname "$(command -v "$SBT")"):$PATH" TERM="${TERM:-dumb}" bash bin/package-sbt-plugin.sh) >> "$log" 2>&1; then
		cat "$src/.stainless-package-sbt-plugin/package-sbt-plugin.log" >> "$log" 2> /dev/null
		tail -n 40 "$log" >&2
		return 1
	fi
	cat "$src/.stainless-package-sbt-plugin/package-sbt-plugin.log" >> "$log" 2> /dev/null
	install_stainless_zip "$src/sbt-stainless.zip" "$3" || return 1
	# Only the plugin is needed from now on
	rm -rf "$src"
}

if [ -z "$STAINLESS_VERSION" ] && ! has_stainless_plugin; then
	STAINLESS_VERSION="$DEFAULT_STAINLESS_VERSION"
fi
if [ -n "$STAINLESS_VERSION" ]; then
	INSTALLED="$(cat "$STAINLESS_MARKER" 2> /dev/null)"
	if [[ "$STAINLESS_VERSION" =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
		if ! has_stainless_plugin || [ "$INSTALLED" != "$STAINLESS_VERSION" ]; then
			install_stainless_release "$STAINLESS_VERSION" || { echo "Could not install sbt-stainless $STAINLESS_VERSION" >&2; exit 1; }
		fi
	else
		# A branch or a tag is resolved to its commit, so that a branch that moved is built again
		STAINLESS_COMMIT="$(git ls-remote "$STAINLESS_REPO" "$STAINLESS_VERSION" 2> /dev/null | head -n 1 | cut -f 1)"
		if [ -z "$STAINLESS_COMMIT" ]; then
			if [[ "$STAINLESS_VERSION" =~ ^[0-9a-f]{7,40}$ ]]; then
				STAINLESS_COMMIT="$STAINLESS_VERSION"
			else
				echo "Stainless version '$STAINLESS_VERSION' is neither a release x.y.z nor a branch, tag or commit of $STAINLESS_REPO" >&2
				exit 1
			fi
		fi
		WANTED="$STAINLESS_VERSION@$STAINLESS_COMMIT"
		if ! has_stainless_plugin || [ "$INSTALLED" != "$WANTED" ]; then
			install_stainless_sources "$STAINLESS_VERSION" "$STAINLESS_COMMIT" "$WANTED" || { echo "Could not build sbt-stainless $STAINLESS_VERSION" >&2; exit 1; }
		fi
	fi
fi
# What the build uses, for the report: the version of the library of the plugin (x.y.z, or x.y.z-n-gcommit)
STAINLESS_USED="$(find stainless -name 'stainless-library_3-*-sources.jar' 2> /dev/null | head -n 1 | sed -E 's/.*stainless-library_3-(.*)-sources\.jar/\1/')"
if [ -n "$STAINLESS_VERSION" ] && [ "$STAINLESS_VERSION" != "$STAINLESS_USED" ]; then
	STAINLESS_USED="$STAINLESS_USED ($STAINLESS_VERSION)"
fi
echo "Stainless: ${STAINLESS_USED:-unknown}"

# The mutable maps use `AbstractMethodBody`, which the Stainless library only has after release 0.10.5
# (--stainless main has it).
# With an older library, the same definition is added to the build (from target/, the sources are not touched).
SBT_SETTINGS=()
LIBRARY_SOURCES="$(find stainless -name 'stainless-library_3-*-sources.jar' 2>/dev/null | head -n 1)"
if [ -n "$LIBRARY_SOURCES" ] && ! unzip -p "$LIBRARY_SOURCES" '*lang/package.scala' 2>/dev/null | grep -q 'def AbstractMethodBody'; then
	echo "The Stainless library of the plugin has no AbstractMethodBody: adding it to the build"
	COMPAT_FILE="$SCRIPT_DIR/target/ci-compat/AbstractMethodBody.scala"
	mkdir -p "$(dirname "$COMPAT_FILE")"
	cat > "$COMPAT_FILE" <<'EOF'
package stainless.lang

def AbstractMethodBody[T](): T = throw new NotImplementedError("the body of an abstract method")
EOF
	SBT_SETTINGS=("set Compile / unmanagedSources += file(\"$COMPAT_FILE\")")
fi

# ---------------------------------------------------------------------------------------------
# The maps are benchmarked with the benchmarking imports (contracts and ghost code erased at compile time)
# and with their @tailrec annotations. The verification imports are restored on exit if this script set them.
INITIAL_IMPORTS="$(python3 ./switch_imports.py status | awk '{print $1}' | sort -u | tr '\n' ' ')"
restore_imports() {
	if [ "$INITIAL_IMPORTS" = "verification " ]; then
		python3 ./switch_imports.py verification > /dev/null || echo "Could not restore the verification imports" >&2
	fi
}
trap restore_imports EXIT
python3 ./switch_imports.py benchmark || exit 1

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
  "stainless": "$(json_escape "${STAINLESS_USED:-unknown}")",
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
"$SBT" -batch -no-colors ${SBT_SETTINGS[@]+"${SBT_SETTINGS[@]}"} "Jmh/compile" > "$OUTPUT_DIR/compile.log" 2>&1 || {
	echo "Compilation failed, see $OUTPUT_DIR/compile.log" >&2
	tail -n 60 "$OUTPUT_DIR/compile.log" >&2
	exit 1
}

# JMH takes a lock file in java.io.tmpdir, /tmp/jmh.lock by default: on a shared machine it can belong to
# another user, and JMH then refuses to run. The benchmark JVMs get a temporary directory of this build.
JMH_TMPDIR="$SCRIPT_DIR/target/ci-jmh-tmp"
mkdir -p "$JMH_TMPDIR"
JMH_SETTINGS=("set Jmh / javaOptions += \"-Djava.io.tmpdir=$JMH_TMPDIR\"")

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
	"$SBT" -batch -no-colors ${SBT_SETTINGS[@]+"${SBT_SETTINGS[@]}"} "${JMH_SETTINGS[@]}" \
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
