#!/usr/bin/env python3
"""
Parse JMH-style benchmark output and emit per-file JSONs based on a model directory.

Usage:
    python extract_to_coqlex.py <openjdk_txt> <graal_txt> <model_dir> <output_dir> [--suffix SUFFIX]

- <openjdk_txt>: path to the .txt file containing the [info] lines for OpenJDK
- <graal_txt>:   path to the .txt file containing the [info] lines for GraalVM
- <model_dir>:   directory that already contains JSON "model" files like 162.json
- <output_dir>:  directory where new JSON files will be written (created if missing)
- --suffix:      string appended to the GraalVM benchmark folder names
                 (e.g. "Graal" turns "Ziplex" into "ZiplexGraal"). Default: "Graal".

For each configured benchmark function line, this script extracts:
  - fname: first number before '_' with '.json' suffix (e.g., 162.json)
  - input_len: second number (characters) (e.g., 37599)
  - times: list with a single element = Score (us/op) converted to seconds
  - rest_len: always 0
  - sem_tokens_len: copied verbatim from the corresponding model file in <model_dir>

It never modifies anything in <model_dir>.
"""

import argparse
import json
import re
from pathlib import Path
from typing import Dict, Tuple

# Matches lines like:
#   [info] JsonLexerBenchmark.lex_ZipperMem  162_37599chars.json  avgt  5  61450.770 ± 4116.365  us/op
# and also (when JMH is run with -i 1, so Cnt and Error are empty):
#   [info] JsonLexerBenchmark.lex_ZipperMem  162_37599chars.json  avgt     100838.791            us/op
# i.e. the Cnt column and the "± <error>" part are both optional.
def make_line_re(benchmark_function_name: str):
    return re.compile(
        r"""
        ^\s*\[info\]\s+JsonLexerBenchmark\.""" + benchmark_function_name + r"""   # the benchmark name we care about
        \s+
        (?P<num>\d+)_(?P<chars>\d+)chars\.json             # e.g., 162_37599chars.json
        \s+\S+                                             # Mode column (e.g. avgt)
        \s+(?:\d+\s+)?                                     # optional Cnt column (absent when -i 1)
        (?P<score>\d+(?:\.\d+)?)                           # Score column (microseconds per op)
        (?:\s+±\s+\d+(?:\.\d+)?)?                          # optional "± <error>" (absent when -i 1)
        \s+us/op\s*$
        """,
        re.VERBOSE,
    )

def parse_input(txt_path: Path, benchmark_function_name: str) -> Dict[str, Tuple[int, float]]:
    """
    Returns a dict:
      key: fname like '162.json'
      value: (input_len, time_seconds)
    """
    results: Dict[str, Tuple[int, float]] = {}
    line_re = make_line_re(benchmark_function_name)
    with txt_path.open("r", encoding="utf-8") as f:
        for line in f:
            m = line_re.match(line)
            if not m:
                continue
            num = m.group("num")         # e.g., '162'
            chars = int(m.group("chars"))  # e.g., 37599
            score_us = float(m.group("score"))  # microseconds
            time_seconds = score_us / 1_000_000.0

            fname = f"{num}.json"
            results[fname] = (chars, time_seconds)
    return results

def read_model_sem_tokens(model_dir: Path, fname: str):
    """
    Reads sem_tokens_len (and optionally checks fname) from the model JSON.
    Returns the sem_tokens_len value. Raises FileNotFoundError or KeyError on problems.
    """
    model_path = model_dir / fname
    with model_path.open("r", encoding="utf-8") as f:
        data = json.load(f)

    # If the model file contains a "fname", we preserve whatever it says,
    # but ensure we're aligning on the same filename.
    model_fname = data.get("fname", fname)
    if model_fname != fname:
        # Not fatal, but indicate mismatch to help catch issues.
        raise ValueError(
            f"Model file {model_path} has fname={model_fname!r} which does not match expected {fname!r}"
        )

    if "sem_tokens_len" not in data:
        raise KeyError(f"Model file {model_path} lacks 'sem_tokens_len' field")

    return data["sem_tokens_len"]

def main():
    ap = argparse.ArgumentParser(description="Create JSONs from JMH output, modeled after existing files.")
    ap.add_argument("openjdk_txt", type=Path, help="Path to OpenJDK .txt file")
    ap.add_argument("graal_txt", type=Path, help="Path to GraalVM .txt file")
    ap.add_argument("model_dir", type=Path, help="Directory with model JSON files (read-only)")
    ap.add_argument("output_dir", type=Path, help="Directory to write new JSON files")
    ap.add_argument("--suffix", default="Graal",
                    help="Suffix appended to GraalVM benchmark folder names (e.g. 'Graal'). Default: 'Graal'.")
    args = ap.parse_args()

    openjdk_txt: Path = args.openjdk_txt
    graal_txt: Path = args.graal_txt
    model_dir: Path = args.model_dir
    output_dir: Path = args.output_dir
    graal_suffix: str = args.suffix

    if not openjdk_txt.is_file():
        raise SystemExit(f"OpenJDK input file not found: {openjdk_txt}")

    if not graal_txt.is_file():
        raise SystemExit(f"GraalVM input file not found: {graal_txt}")

    if not model_dir.is_dir():
        raise SystemExit(f"Model directory not found: {model_dir}")

    output_dir.mkdir(parents=True, exist_ok=True)

    # Base benchmark folder names per JMH method. The Graal entries append the
    # configurable --suffix (default "Graal") so the analysis notebook can pick
    # them up as "ZiplexGraal", "ZiplexMemDerivGraal", etc.
    benchmark_targets = {
        (openjdk_txt, "lex_ZipperMem"): "Ziplex",
        (openjdk_txt, "lex_ZipperV3NonMem"): "ZiplexNoMem",
        (openjdk_txt, "lex_ZipperV3MemDeriv"): "ZiplexMemDeriv",
        (graal_txt, "lex_ZipperMem"): f"Ziplex{graal_suffix}",
        (graal_txt, "lex_ZipperV3NonMem"): f"ZiplexNoMem{graal_suffix}",
        (graal_txt, "lex_ZipperV3MemDeriv"): f"ZiplexMemDeriv{graal_suffix}",
    }

    written = 0
    skipped = 0

    for (source_txt, benchmark_function_name), output_prefix in benchmark_targets.items():
        parsed = parse_input(source_txt, benchmark_function_name)
        if not parsed:
            print(f"[warn] No matching '{benchmark_function_name}' lines found in the input.")
            continue

        target_dir = output_dir / output_prefix
        target_dir.mkdir(parents=True, exist_ok=True)

        for fname, (input_len, time_seconds) in parsed.items():
            try:
                sem_tokens_len = read_model_sem_tokens(model_dir, fname)
            except (FileNotFoundError, KeyError, ValueError) as e:
                # If the model file is missing or malformed, skip this entry but continue others.
                print(f"[warn] Skipping {output_prefix}/{fname}: {e}")
                skipped += 1
                continue

            out_obj = {
                "fname": fname,
                "input_len": input_len,
                "times": [time_seconds],
                "rest_len": 0,
                "sem_tokens_len": sem_tokens_len,
            }

            out_path = target_dir / fname
            with out_path.open("w", encoding="utf-8") as f:
                json.dump(out_obj, f, ensure_ascii=False, indent=2)

            written += 1
            print(f"[ok] Wrote {out_path}")

    print(f"\nDone. Wrote {written} file(s). Skipped {skipped} due to missing/invalid model files.")

if __name__ == "__main__":
    main()
