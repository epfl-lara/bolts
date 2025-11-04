#!/usr/bin/env python3
"""
Parse JMH-style benchmark output and emit per-file JSONs based on a model directory.

Usage:
  python make_jsons.py <input_txt> <model_dir> <output_dir>

- <input_txt>: path to the .txt file containing the [info] lines
- <model_dir>: directory that already contains JSON "model" files like 162.json
- <output_dir>: directory where new JSON files will be written (created if missing)

For each "JsonLexerBenchmark.lex_ZipperMem" line, this script extracts:
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
# [info] JsonLexerBenchmark.lex_ZipperMem      162_37599chars.json  avgt    5  61450.770 ± 4116.365  us/op
LINE_RE = re.compile(
    r"""
    ^\s*\[info\]\s+JsonLexerBenchmark\.lex_ZipperMem   # the benchmark name we care about
    \s+
    (?P<num>\d+)_(?P<chars>\d+)chars\.json             # e.g., 162_37599chars.json
    \s+\S+\s+\d+\s+
    (?P<score>\d+(?:\.\d+)?)                           # Score column (microseconds per op)
    \s+±\s+\d+(?:\.\d+)?\s+us/op\s*$
    """,
    re.VERBOSE,
)

def parse_input(txt_path: Path) -> Dict[str, Tuple[int, float]]:
    """
    Returns a dict:
      key: fname like '162.json'
      value: (input_len, time_seconds)
    """
    results: Dict[str, Tuple[int, float]] = {}
    with txt_path.open("r", encoding="utf-8") as f:
        for line in f:
            m = LINE_RE.match(line)
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
    ap.add_argument("input_txt", type=Path, help="Path to input .txt file")
    ap.add_argument("model_dir", type=Path, help="Directory with model JSON files (read-only)")
    ap.add_argument("output_dir", type=Path, help="Directory to write new JSON files")
    args = ap.parse_args()

    input_txt: Path = args.input_txt
    model_dir: Path = args.model_dir
    output_dir: Path = args.output_dir

    if not input_txt.is_file():
        raise SystemExit(f"Input file not found: {input_txt}")

    if not model_dir.is_dir():
        raise SystemExit(f"Model directory not found: {model_dir}")

    output_dir.mkdir(parents=True, exist_ok=True)

    parsed = parse_input(input_txt)
    if not parsed:
        raise SystemExit("No matching 'lex_ZipperMem' lines found in the input.")

    written = 0
    skipped = 0

    for fname, (input_len, time_seconds) in parsed.items():
        try:
            sem_tokens_len = read_model_sem_tokens(model_dir, fname)
        except (FileNotFoundError, KeyError, ValueError) as e:
            # If the model file is missing or malformed, skip this entry but continue others.
            print(f"[warn] Skipping {fname}: {e}")
            skipped += 1
            continue

        out_obj = {
            "fname": fname,
            "input_len": input_len,
            "times": [time_seconds],
            "rest_len": 0,
            "sem_tokens_len": sem_tokens_len,
        }

        out_path = output_dir / fname
        with out_path.open("w", encoding="utf-8") as f:
            json.dump(out_obj, f, ensure_ascii=False, indent=2)

        written += 1
        # Optional: feedback on each file
        print(f"[ok] Wrote {out_path}")

    print(f"\nDone. Wrote {written} file(s). Skipped {skipped} due to missing/invalid model files.")

if __name__ == "__main__":
    main()
