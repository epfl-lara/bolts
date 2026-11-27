#!/usr/bin/env bash
# Time-boxed benchmarks of Ziplex, meant for a CI job (about 2h15 with the standard profile):
#   - regex matching: the patterns of RegexClementBenchmark (with and without ranges, with and without
#     memoization), and the zipper matcher against the derivative-based matcher and scala.util.matching.Regex
#   - lexing: the V3 tail-recursive memoized lexer (Lexer.lexMem) against Silex (JMH), against flex
#     (hyperfine; flex and hyperfine are installed when they are missing, if possible), and, in the report, against the Coqlex results
#     shipped in benchmark_results/from_coqlex
#
# Unlike run_benchmarks.sh, it needs neither SDKMAN nor a `benchmarks` git branch: it switches the sources
# to their benchmarking imports itself (switch_imports.py) and restores them when it exits.
#
# Results (one JMH JSON file and one log per group, the hyperfine JSON files, and run-info.json) go to the
# output directory, from which benchmark_results/generate_benchmark_report.py builds the HTML report.

set -u -o pipefail

show_help() {
	cat <<'EOF'
Usage: ./run_benchmarks_ci.sh [--profile standard|smoke] [--stainless V] [--output DIR] [--groups "g1 g2 ..."]

Options:
  --profile P   standard (default): about 2h15.
                smoke: 1 size, 1 short iteration, about 10 minutes; checks the pipeline, not the numbers.
  --stainless V Stainless whose sbt plugin and library the benchmarks are compiled with:
                  x.y.z   the release x.y.z (its sbt-stainless.zip is downloaded)
                  main    the main branch of the Stainless repository, cloned and built in target/ci-stainless
                          (about 10 more minutes; any other branch, tag or commit works too)
                Default: the plugin already installed in project/lib and stainless/, or main if
                there is none. With this option, the installed plugin is replaced if it is another version.
  --output DIR  Output directory (default: benchmark_results/raw/results_<dd.mm.yyyy>_ci).
  --groups G    Space-separated groups to run (default: all):
                  regex_clement lexer_regex regex lexer_aastarb lexer_json lexer_amy flex
  -h, --help    Show this help message and exit.

Environment variables (override the profile):
  WARMUP_ITERATIONS, WARMUP_TIME, ITERATIONS, ITERATION_TIME   JMH -wi, -w, -i, -r
  FORK_HEAP        Heap of the benchmark JVMs (default: 8g)
  SIZES_REGEX_CLEMENT, SIZES_REGEX, SIZES_LEXER_REGEX          Comma-separated lengths of the matched strings
  FILES_AASTARB, FILES_JSON, FILES_AMY                         Comma-separated input files (empty: all of them)
  FLEX_WARMUP, FLEX_RUNS                                       hyperfine --warmup, --runs
  INSTALL_MISSING_TOOLS   0: do not install flex, gcc and hyperfine when they are missing (default: 1,
                          with the package manager, as root or with a password-less sudo; never prompts)
  HYPERFINE_VERSION       Release of hyperfine to download when the package manager does not provide it
  STAINLESS_VERSION       Same as --stainless (the option wins)
  STAINLESS_REPO          Repository cloned for a version that is not a release
                          (default: https://github.com/epfl-lara/stainless.git)
  SBT              sbt launcher to use (default: sbt)

Exit status: 0 if every group ran (flex is skipped, not failed, when flex or hyperfine is missing and cannot be installed),
1 otherwise (the results of the other groups are kept).
EOF
}

PROFILE="standard"
OUTPUT_DIR=""
GROUPS_TO_RUN="regex_clement lexer_regex regex lexer_aastarb lexer_json lexer_amy flex"
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

# Sizes and files are taken among the @Param values of the benchmark classes.
case "$PROFILE" in
	standard)
		: "${WARMUP_ITERATIONS:=3}" "${WARMUP_TIME:=2s}" "${ITERATIONS:=5}" "${ITERATION_TIME:=3s}"
		: "${SIZES_REGEX_CLEMENT:=176,344,512}"
		: "${SIZES_REGEX:=5,25,50,75,100}"
		: "${SIZES_LEXER_REGEX:=5,30,60,90,120}"
		# Silex and flex are quadratic on this grammar: the largest file takes them tens of seconds per run
		: "${FILES_AASTARB:=100.txt,1000.txt,10000.txt,25000.txt,50000.txt,100000.txt}"
		: "${FILES_JSON=}" # all 13 files, they are the ones of the Coqlex comparison
		: "${FILES_AMY:=generated_code_000529chars.amy,generated_code_008993chars.amy,generated_code_017457chars.amy,generated_code_025921chars.amy,generated_code_034385chars.amy,generated_code_040733chars.amy}"
		: "${FLEX_WARMUP:=1}" "${FLEX_RUNS:=3}"
		;;
	smoke)
		: "${WARMUP_ITERATIONS:=1}" "${WARMUP_TIME:=1s}" "${ITERATIONS:=1}" "${ITERATION_TIME:=1s}"
		: "${SIZES_REGEX_CLEMENT:=176}"
		: "${SIZES_REGEX:=50}"
		: "${SIZES_LEXER_REGEX:=60}"
		: "${FILES_AASTARB:=1000.txt}"
		: "${FILES_JSON:=22_5115chars.json}"
		: "${FILES_AMY:=generated_code_008993chars.amy}"
		: "${FLEX_WARMUP:=1}" "${FLEX_RUNS:=2}"
		;;
	*) echo "Unknown profile: $PROFILE (expected standard or smoke)" >&2; exit 2 ;;
esac
: "${FORK_HEAP:=8g}"
: "${INSTALL_MISSING_TOOLS:=1}"
: "${HYPERFINE_VERSION:=1.18.0}"
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
# Benchmarking imports (erased contracts and ghost code), restored on exit if this script set them
INITIAL_IMPORTS="$(python3 ./switch_imports.py status | awk '{print $1}' | sort -u | tr '\n' ' ')"
restore_imports() {
	if [ "$INITIAL_IMPORTS" = "verification " ]; then
		python3 ./switch_imports.py verification > /dev/null || echo "Could not restore the verification imports" >&2
	fi
}
trap restore_imports EXIT
python3 ./switch_imports.py benchmark || exit 1

# ---------------------------------------------------------------------------------------------
# JMH groups: regex, name of the parameter and its values. Only what is compared is selected.
B='com\.ziplex\.lexer\.benchmark'
regex_of() {
	case "$1" in
		regex_clement) echo "$B\\.RegexClement(NoMem)?Benchmark\\..*" ;;
		regex) echo "$B\\.RegexBenchmark\\.(abStar|email)Accepting_(Regex_list|Zipper_vector|ZipperMem_vector)\$" ;;
		lexer_regex) echo "$B\\.LexerRegexBenchmark\\.commentAccepting_(Regex_list|Zipper_vector|ZipperNMem_vector|scalaRegex|Regex_multiline_list|Zipper_multiline_vector|Zipper_multiline_vector_mem|scalaRegex_multiline)\$" ;;
		lexer_aastarb) echo "$B\\.lexer\\.AAStarBLexerBenchmark\\.lex_(ZipperV3Mem|Silex)\$" ;;
		lexer_json) echo "$B\\.lexer\\.JsonLexerBenchmark\\.lex_ZipperMem\$" ;;
		lexer_amy) echo "$B\\.lexer\\.AmyLexerBenchmarkGenerated\\.lex_(ZipperMem|OriginalSilex)\$" ;;
		*) return 1 ;;
	esac
}
param_of() {
	case "$1" in
		regex_clement|regex|lexer_regex) echo "size" ;;
		*) echo "file" ;;
	esac
}
values_of() {
	case "$1" in
		regex_clement) echo "$SIZES_REGEX_CLEMENT" ;;
		regex) echo "$SIZES_REGEX" ;;
		lexer_regex) echo "$SIZES_LEXER_REGEX" ;;
		lexer_aastarb|flex) echo "$FILES_AASTARB" ;;
		lexer_json) echo "$FILES_JSON" ;;
		lexer_amy) echo "$FILES_AMY" ;;
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
  "flex_warmup": $FLEX_WARMUP,
  "flex_runs": $FLEX_RUNS,
  "total_seconds": $(( $(date +%s) - START_ALL )),
  "groups": [$GROUPS_JSON
  ]
}
EOF
}

# ---------------------------------------------------------------------------------------------
run_jmh_group() { # run_jmh_group GROUP REGEX; the log goes to $LOG, the results to $RESULT
	local param values params=""
	param="$(param_of "$1")"
	values="$(values_of "$1")"
	if [ -n "$values" ]; then
		params="-p $param=$values"
	fi
	echo "  -wi $WARMUP_ITERATIONS -w $WARMUP_TIME -i $ITERATIONS -r $ITERATION_TIME -f 1 -t 1, heap $FORK_HEAP"
	# $params is split on purpose: it is empty or "-p name=values"
	# shellcheck disable=SC2086
	# JMH takes a lock file in java.io.tmpdir, /tmp/jmh.lock by default: on a shared machine it can belong
	# to another user, and JMH then refuses to run. The benchmark JVMs get a temporary directory of this build.
	mkdir -p "$SCRIPT_DIR/target/ci-jmh-tmp"
	java "-Djava.io.tmpdir=$SCRIPT_DIR/target/ci-jmh-tmp" -cp "$JMH_CLASSPATH" org.openjdk.jmh.Main \
		-f 1 -t 1 -wi "$WARMUP_ITERATIONS" -w "$WARMUP_TIME" -i "$ITERATIONS" -r "$ITERATION_TIME" $params \
		-jvmArgsAppend "-Xms$FORK_HEAP" -jvmArgsAppend "-Xmx$FORK_HEAP" -rf json -rff "$RESULT" "$2" \
		> "$LOG" 2>&1 && [ -s "$RESULT" ]
}

# Installs the tools of the flex group that are missing (flex, a C compiler, hyperfine), unless
# INSTALL_MISSING_TOOLS=0. Packages are installed with the package manager of the machine, as root or
# with a password-less sudo (it never prompts). If hyperfine is still missing on Linux x86_64, its release
# binary is downloaded in target/ci-tools. Failures are not fatal: the group is skipped if a tool is missing.
install_flex_tools() {
	[ "$INSTALL_MISSING_TOOLS" = "0" ] && return 0
	local tool packages="" sudo=""
	for tool in flex cc hyperfine; do
		if ! command -v "$tool" > /dev/null; then
			if [ "$tool" = "cc" ]; then packages="$packages gcc"; else packages="$packages $tool"; fi
		fi
	done
	[ -z "$packages" ] && return 0

	echo "  Installing$packages ..."
	if command -v brew > /dev/null; then
		# shellcheck disable=SC2086
		brew install $packages >> "$LOG" 2>&1
	else
		if [ "$(id -u)" != "0" ]; then
			if command -v sudo > /dev/null && sudo -n true 2> /dev/null; then
				sudo="sudo -n"
			else
				echo "  Not root and no password-less sudo: packages not installed" | tee -a "$LOG"
				packages=""
			fi
		fi
		# One package at a time, so that a package that does not exist does not prevent the others
		for tool in $packages; do
			if command -v apt-get > /dev/null; then
				$sudo env DEBIAN_FRONTEND=noninteractive apt-get install -y -q "$tool" >> "$LOG" 2>&1 ||
					{ $sudo apt-get update -q >> "$LOG" 2>&1 &&
						$sudo env DEBIAN_FRONTEND=noninteractive apt-get install -y -q "$tool" >> "$LOG" 2>&1; }
			elif command -v dnf > /dev/null; then
				$sudo dnf install -y -q "$tool" >> "$LOG" 2>&1
			elif command -v pacman > /dev/null; then
				$sudo pacman -S --noconfirm --needed "$tool" >> "$LOG" 2>&1
			else
				echo "  No supported package manager (apt-get, dnf, pacman, brew)" | tee -a "$LOG"
				break
			fi
		done
	fi

	if ! command -v hyperfine > /dev/null && [ "$(uname -s)-$(uname -m)" = "Linux-x86_64" ]; then
		local tools_dir="$SCRIPT_DIR/target/ci-tools"
		local name="hyperfine-v$HYPERFINE_VERSION-x86_64-unknown-linux-musl"
		local url="https://github.com/sharkdp/hyperfine/releases/download/v$HYPERFINE_VERSION/$name.tar.gz"
		if [ ! -x "$tools_dir/hyperfine" ]; then
			echo "  Downloading hyperfine $HYPERFINE_VERSION ..."
			mkdir -p "$tools_dir"
			if command -v curl > /dev/null; then
				curl --fail --silent --show-error --location --retry 3 -o "$tools_dir/hyperfine.tar.gz" "$url" >> "$LOG" 2>&1
			else
				wget --no-verbose -O "$tools_dir/hyperfine.tar.gz" "$url" >> "$LOG" 2>&1
			fi &&
				tar -xzf "$tools_dir/hyperfine.tar.gz" -C "$tools_dir" --strip-components 1 "$name/hyperfine" >> "$LOG" 2>&1
			rm -f "$tools_dir/hyperfine.tar.gz"
		fi
		[ -x "$tools_dir/hyperfine" ] && PATH="$tools_dir:$PATH"
	fi
	return 0
}

# flex lexer of the `a` and `a*b` grammar, on the same files as lexer_aastarb. Each run is a process that
# lexes one file, timed by hyperfine: one JSON file per input, merged in flex.json.
# Returns 3 when flex, a C compiler or hyperfine is not installed and could not be installed.
run_flex_group() {
	local tool input stem
	: > "$LOG"
	install_flex_tools
	for tool in flex cc hyperfine; do
		if ! command -v "$tool" > /dev/null; then
			echo "  $tool is not installed" | tee -a "$LOG"
			return 3
		fi
	done
	local build_dir="$SCRIPT_DIR/target/ci-flex"
	rm -rf "$build_dir" "$OUTPUT_DIR/flex" && mkdir -p "$build_dir" "$OUTPUT_DIR/flex"
	{
		# Same commands as flex_benchmarks/build.sh, built out of the sources
		flex -Cf -o "$build_dir/a_and_a_star_b.yy.c" flex_benchmarks/a_and_a_star_b.l &&
		cc -O3 -march=native -pipe -o "$build_dir/flex_a_and_asb" "$build_dir/a_and_a_star_b.yy.c"
	} >> "$LOG" 2>&1 || return 1
	echo "  hyperfine --warmup $FLEX_WARMUP --runs $FLEX_RUNS"
	for input in $(echo "$FILES_AASTARB" | tr ',' ' '); do
		stem="${input%.*}"
		hyperfine --warmup "$FLEX_WARMUP" --runs "$FLEX_RUNS" --export-json "$OUTPUT_DIR/flex/flex_$stem.json" \
			"$build_dir/flex_a_and_asb < 'src/main/scala/com/ziplex/benchmark/res/as/$input' > /dev/null" >> "$LOG" 2>&1 || return 1
	done
	python3 - "$OUTPUT_DIR/flex" "$RESULT" <<'EOF'
import json, os, sys
directory, output = sys.argv[1], sys.argv[2]
results = []
for name in sorted(os.listdir(directory)):
    with open(os.path.join(directory, name)) as f:
        run = json.load(f)["results"][0]
    results.append({"file": name[len("flex_"):-len(".json")] + ".txt", "mean_seconds": run["mean"],
                    "stddev_seconds": run.get("stddev") or 0.0, "runs": len(run["times"])})
with open(output, "w") as f:
    json.dump(results, f, indent=1)
EOF
}

# sbt compiles once and gives the classpath; JMH is then started directly for each group. Going through
# `sbt Jmh/run` for each group recompiles the sources every time, which sometimes collides with the packaging.
echo "Compiling ..."
"$SBT" -batch -no-colors "${SBT_SETTINGS[@]}" "Jmh/compile" "export Jmh/fullClasspath" > "$OUTPUT_DIR/compile.log" 2>&1 || {
	echo "Compilation failed, see $OUTPUT_DIR/compile.log" >&2
	tail -n 60 "$OUTPUT_DIR/compile.log" >&2
	exit 1
}
JMH_CLASSPATH="$(grep -v '^\[' "$OUTPUT_DIR/compile.log" | tail -n 1)"
case "$JMH_CLASSPATH" in
	*jmh-core*) ;;
	*) echo "Could not read the classpath of the benchmarks from $OUTPUT_DIR/compile.log" >&2; exit 1 ;;
esac

START_ALL=$(date +%s)
FAILED=""
GROUPS_JSON=""
write_run_info
for GROUP in $GROUPS_TO_RUN; do
	RESULT="$OUTPUT_DIR/$GROUP.json"
	LOG="$OUTPUT_DIR/$GROUP.log"
	rm -f "$RESULT"
	echo "=========================================="
	echo "Group $GROUP   $(values_of "$GROUP")"
	echo "  log: $LOG"
	START=$(date +%s)
	if [ "$GROUP" = "flex" ]; then
		run_flex_group
		STATUS=$?
	elif REGEX="$(regex_of "$GROUP")"; then
		run_jmh_group "$GROUP" "$REGEX"
		STATUS=$?
	else
		echo "Unknown group: $GROUP" >&2
		STATUS=2
	fi
	DURATION=$(( $(date +%s) - START ))
	if [ $STATUS -eq 0 ]; then
		echo "  done in ${DURATION}s"
		STATUS_TEXT="ok"
	elif [ $STATUS -eq 3 ]; then
		echo "  SKIPPED"
		STATUS_TEXT="skipped"
	else
		echo "  FAILED after ${DURATION}s" >&2
		[ -f "$LOG" ] && tail -n 30 "$LOG" >&2
		FAILED="$FAILED $GROUP"
		STATUS_TEXT="failed"
	fi
	GROUPS_JSON="$GROUPS_JSON${GROUPS_JSON:+,}
    {\"name\": \"$GROUP\", \"values\": \"$(json_escape "$(values_of "$GROUP")")\", \"seconds\": $DURATION, \"status\": \"$STATUS_TEXT\"}"
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
