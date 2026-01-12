#!/usr/bin/env bash
# asprof-run.sh — minimal async-profiler wrapper (flamegraph by default)
#
# Example usage for the lexer:
# ./asprof-run.sh --cmd "java -jar target/scala-3.7.2/ZipLex-assembly-0.1.0-SNAPSHOT.jar" -d 20 -o lexer_mem.html

set -euo pipefail

CMD=""
DUR=""                                # if empty → profile for lifetime
OUT="profile-$(date +%Y%m%d-%H%M%S).html"
REVERSED=false                        # If true, pass --reverse to asprof for inverted flamegraph

usage(){ echo "Usage: $0 --cmd \"<command>\" [-d <seconds>] [-o <out.html>]"; exit 1; }

# parse args
while [[ $# -gt 0 ]]; do
  case "$1" in
    --cmd) CMD="$2"; shift 2;;
    -d) DUR="$2"; shift 2;;
    -o) OUT="$2"; shift 2;;
    --reverse) REVERSED=true; shift;;
    -h|--help) usage;;
    *) echo "Unknown option: $1"; usage;;
  esac
done
[[ -n "$CMD" ]] || usage
command -v asprof >/dev/null || { echo "asprof not found"; exit 1; }

# start target in background
bash -c "$CMD" &
PID=$!
echo "Started PID: $PID"

# small retry loop to avoid attach race when the JVM is still booting
attach() {
  local tries=10
  while (( tries-- > 0 )); do
    if asprof status "$PID" >/dev/null 2>&1; then return 0; fi
    sleep 0.1
  done
  return 1
}

trap 'asprof stop -f "$OUT" "$PID" >/dev/null 2>&1 || true' INT TERM

if [[ -n "$DUR" ]]; then
  echo "Profiling for ${DUR}s → $OUT"
  if attach; then
    if $REVERSED; then
      asprof start -o flamegraph --reverse -f "$OUT" "$PID"
    else
      asprof start -o flamegraph -f "$OUT" "$PID"
    fi
    sleep "$DUR"
  else
    echo "Target finished before attach; no profile written."
  fi
  wait "$PID" || true
else
  echo "Profiling for process lifetime → $OUT"
  if attach; then
    if $REVERSED; then
      asprof start -o flamegraph --reverse -f "$OUT" "$PID" || true
    else
      asprof start -o flamegraph -f "$OUT" "$PID" || true
    fi
    wait "$PID" || true
    asprof stop  -o flamegraph -f "$OUT" "$PID" >/dev/null 2>&1 || true
  else
    echo "Target finished before attach; no profile written."
    wait "$PID" || true
  fi
fi

echo "Done. Output: $OUT"
