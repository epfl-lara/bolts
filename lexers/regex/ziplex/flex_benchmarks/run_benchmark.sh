#!/usr/bin/env bash
set -euo pipefail

# Directory containing the input files
IN_DIR="../src/main/scala/com/ziplex/benchmark/res/as"
OUT_DIR="../benchmark_results/flex"


# Command under test
CMD="./flex_a_and_asb"

# Hyperfine parameters
WARMUP=5
RUNS=10

# Results directory (results/YYYY-MM-DD)
TODAY="$(date +%F)"
RESULTS_DIR="$OUT_DIR/$TODAY"
mkdir -p "$RESULTS_DIR"

shopt -s nullglob

files=("$IN_DIR"/*)
if ((${#files[@]} == 0)); then
  echo "No files found in: $IN_DIR" >&2
  exit 1
fi

for f in "${files[@]}"; do
  [[ -f "$f" ]] || continue

  base="$(basename "$f")"
  stem="${base%.*}"
  out_json="$RESULTS_DIR/flex_${stem}.json"

  echo "=== Benchmarking: $f ==="
  hyperfine --warmup "$WARMUP" --runs "$RUNS" \
    --export-json "$out_json" \
    "$CMD < '$f' > /dev/null"
done

echo "JSON results written under: $RESULTS_DIR"
