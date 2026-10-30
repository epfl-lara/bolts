#!/usr/bin/env python3
"""
Parse the JMH output of RegexClementBenchmark and write it as a CSV, print a summary table and optionally plot it.

Usage:
    python extract_regex_clement.py <benchmark_txt> <output_csv> [--plot-dir DIR]

- <benchmark_txt>: JMH output produced by run_benchmarks.sh (regex_clement_benchmark_wi_<wi>_i_<i>.txt)
- <output_csv>:    CSV file to write, with one row per (pattern, size):
                     pid, benchmark, pattern, size, score_us, error_us, ns_per_char
- --plot-dir:      if given, writes regex_clement_time_vs_size.pdf (one line per pattern) and
                   regex_clement_ns_per_char.pdf (time per character at the largest size) in DIR

`size` is the requested input length. For the patterns made of fixed words (p05-p08, p12), the actual input is the
longest concatenation of words not exceeding it (or a single word if none fits), so ns_per_char is approximate there.
"""

import argparse
import csv
import re
from pathlib import Path
from typing import Dict, List

# Patterns as in RegexClementBenchmark.scala, indexed by pid
PATTERNS = [
    "[a-z]+",
    "[a-z][a-z0-9]*",
    "[0-9]+",
    "[a-z0-9]+",
    "[a-z]+@[a-z]+",
    "(foo|bar|baz)+",
    "(cat|dog|bird|fish)+",
    "(abc)+",
    "(ab|cd|ef)+",
    "(x|y|z)+",
    "a*b*c*",
    "(a|b|...|p)+",
    "(abcdefghij)+",
    "[a-c]+[d-f]+[g-i]+",
    "([a-z][0-9])+",
    "(a*)* as (a+)*",
    "(a+)+",
    "(a|aa)+",
    "(a*b*)* as (a+|b+)*",
    "((a+)+)+",
]

# Matches lines like:
#   [info] RegexClementBenchmark.p00_azPlus_ZipperMem_list    8  avgt  5   1.202 ±  0.010  us/op
# and also (when JMH is run with -i 1, so Cnt and Error are empty):
#   [info] RegexClementBenchmark.p00_azPlus_ZipperMem_list    8  avgt      1.202           us/op
LINE_RE = re.compile(
    r"""
    ^\s*\[info\]\s+RegexClementBenchmark\.
    (?P<benchmark>p(?P<pid>\d+)_\S+)                   # e.g., p00_azPlus_ZipperMem_list
    \s+(?P<size>\d+)                                   # size parameter
    \s+\S+                                             # Mode column (e.g. avgt)
    \s+(?:\d+\s+)?                                     # optional Cnt column (absent when -i 1)
    (?P<score>\d+(?:\.\d+)?)                           # Score column (microseconds per op)
    (?:\s+±\s+(?P<error>\d+(?:\.\d+)?|NaN))?           # optional "± <error>" (absent when -i 1)
    \s+us/op\s*$
    """,
    re.VERBOSE,
)


def parse_input(txt_path: Path) -> List[Dict]:
    rows = []
    with txt_path.open("r", encoding="utf-8") as f:
        for line in f:
            m = LINE_RE.match(line)
            if not m:
                continue
            pid = int(m.group("pid"))
            size = int(m.group("size"))
            score_us = float(m.group("score"))
            error = m.group("error")
            rows.append({
                "pid": pid,
                "benchmark": m.group("benchmark"),
                "pattern": PATTERNS[pid] if pid < len(PATTERNS) else "?",
                "size": size,
                "score_us": score_us,
                "error_us": float(error) if error not in (None, "NaN") else "",
                "ns_per_char": round(score_us * 1000 / size, 3),
            })
    rows.sort(key=lambda r: (r["pid"], r["size"]))
    return rows


def write_csv(rows: List[Dict], csv_path: Path):
    csv_path.parent.mkdir(parents=True, exist_ok=True)
    with csv_path.open("w", encoding="utf-8", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=["pid", "benchmark", "pattern", "size", "score_us", "error_us", "ns_per_char"])
        writer.writeheader()
        writer.writerows(rows)


def print_summary(rows: List[Dict]):
    """Table of scores (us/op), one line per pattern and one column per size"""
    sizes = sorted({r["size"] for r in rows})
    by_key = {(r["pid"], r["size"]): r["score_us"] for r in rows}
    pids = sorted({r["pid"] for r in rows})
    pattern_width = max(len(PATTERNS[pid]) for pid in pids)
    header = f"{'pid':>3}  {'pattern':<{pattern_width}}" + "".join(f"{s:>9}" for s in sizes)
    print("Score in us/op per input size")
    print(header)
    print("-" * len(header))
    for pid in pids:
        cells = "".join(f"{by_key[(pid, s)]:>9.2f}" if (pid, s) in by_key else f"{'-':>9}" for s in sizes)
        print(f"{pid:>3}  {PATTERNS[pid]:<{pattern_width}}{cells}")


def plot(rows: List[Dict], plot_dir: Path):
    try:
        import matplotlib
        matplotlib.use("Agg")
        import matplotlib.pyplot as plt
    except ImportError:
        print("[warn] matplotlib is not installed (see requirements.txt); skipping plots.")
        return

    plot_dir.mkdir(parents=True, exist_ok=True)
    pids = sorted({r["pid"] for r in rows})

    fig, ax = plt.subplots(figsize=(10, 7))
    for pid in pids:
        points = sorted((r["size"], r["score_us"]) for r in rows if r["pid"] == pid)
        ax.plot([p[0] for p in points], [p[1] for p in points], marker="o", markersize=3,
                linestyle="-" if pid < 10 else "--", label=f"p{pid:02d} {PATTERNS[pid]}")
    ax.set_xlabel("Input size (characters)")
    ax.set_ylabel("Time (us/op)")
    ax.set_title("ZipLex matchZipperMem: time vs input size")
    ax.grid(True, alpha=0.3)
    ax.legend(fontsize=7, ncol=2)
    fig.tight_layout()
    out = plot_dir / "regex_clement_time_vs_size.pdf"
    fig.savefig(out)
    print(f"[ok] Wrote {out}")

    largest = max(r["size"] for r in rows)
    at_largest = sorted((r for r in rows if r["size"] == largest), key=lambda r: r["pid"])
    fig, ax = plt.subplots(figsize=(10, 5))
    ax.bar([f"p{r['pid']:02d}" for r in at_largest], [r["ns_per_char"] for r in at_largest])
    ax.set_xticks(range(len(at_largest)))
    ax.set_xticklabels([f"p{r['pid']:02d}\n{PATTERNS[r['pid']]}" for r in at_largest], rotation=60, ha="right", fontsize=7)
    ax.set_ylabel("Time per character (ns)")
    ax.set_title(f"ZipLex matchZipperMem: time per character at size {largest}")
    ax.grid(True, axis="y", alpha=0.3)
    fig.tight_layout()
    out = plot_dir / "regex_clement_ns_per_char.pdf"
    fig.savefig(out)
    print(f"[ok] Wrote {out}")


def main():
    ap = argparse.ArgumentParser(description="Extract RegexClementBenchmark results from JMH output.")
    ap.add_argument("benchmark_txt", type=Path, help="JMH output of RegexClementBenchmark")
    ap.add_argument("output_csv", type=Path, help="CSV file to write")
    ap.add_argument("--plot-dir", type=Path, default=None, help="Directory where the plots are written")
    args = ap.parse_args()

    if not args.benchmark_txt.is_file():
        raise SystemExit(f"Input file not found: {args.benchmark_txt}")

    rows = parse_input(args.benchmark_txt)
    if not rows:
        raise SystemExit(f"No RegexClementBenchmark result lines found in {args.benchmark_txt}")

    write_csv(rows, args.output_csv)
    print(f"[ok] Wrote {len(rows)} rows to {args.output_csv}\n")
    print_summary(rows)
    if args.plot_dir is not None:
        print()
        plot(rows, args.plot_dir)


if __name__ == "__main__":
    main()
