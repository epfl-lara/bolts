#!/usr/bin/env python3
"""Switch the Scala sources between their verification imports and their benchmarking imports.

The verified sources import the Stainless versions of `require`, `ensuring`, `assert`, `ghostExpr`, ...
To be benchmarked, they must instead import the versions of OptimisedChecks, which are erased at
compile time (see "Prepare scala files" in README.md). Both sets of imports are in the files, between

    // BEGIN uncomment for verification ---      and      // BEGIN imports for benchmarking ---
    // END uncomment for verification -----               // END imports for benchmarking -----

and one of the two blocks is commented out. This script comments one block and uncomments the other,
in every file under src/ that has the markers (including the mutable maps, which are symbolic links).

Usage: ./switch_imports.py benchmark|verification|status

It is idempotent. The CI benchmark job runs `./switch_imports.py benchmark` on its checkout;
after running it locally, `./switch_imports.py verification` restores the files.
"""

import os
import sys

VERIFICATION = "uncomment for verification"
BENCHMARKING = "imports for benchmarking"


def marker(line):
    """(kind, 'BEGIN' or 'END') if the line is a marker, else None"""
    text = line.strip()
    if not text.startswith("//"):
        return None
    text = text[2:].strip()
    for edge in ("BEGIN", "END"):
        if text.startswith(edge + " "):
            for kind in (VERIFICATION, BENCHMARKING):
                if text[len(edge) + 1:].startswith(kind):
                    return kind, edge
    return None


def comment(line):
    if not line.strip() or line.lstrip().startswith("//"):
        return line
    return "// " + line


def uncomment(line):
    stripped = line.lstrip()
    if not stripped.startswith("//"):
        return line
    rest = stripped[2:]
    return rest[1:] if rest.startswith(" ") else rest


def blocks(lines, path):
    """The blocks of the file, as (kind, index of the first line, index after the last line)"""
    found = []
    current = None
    for i, line in enumerate(lines):
        m = marker(line)
        if m is None:
            continue
        kind, edge = m
        if edge == "BEGIN":
            if current is not None:
                raise ValueError(f"{path}:{i + 1}: BEGIN inside another block")
            current = (kind, i + 1)
        else:
            if current is None or current[0] != kind:
                raise ValueError(f"{path}:{i + 1}: END without the matching BEGIN")
            found.append((kind, current[1], i))
            current = None
    if current is not None:
        raise ValueError(f"{path}: block opened on line {current[1]} is never closed")
    return found


def is_active(lines, start, end):
    return any(line.strip() and not line.lstrip().startswith("//") for line in lines[start:end])


def mode_of(lines, found):
    active = {kind for kind, start, end in found if is_active(lines, start, end)}
    if active == {VERIFICATION}:
        return "verification"
    if active == {BENCHMARKING}:
        return "benchmark"
    return "inconsistent"


def switch(lines, found, target):
    enabled = BENCHMARKING if target == "benchmark" else VERIFICATION
    for kind, start, end in found:
        change = uncomment if kind == enabled else comment
        for i in range(start, end):
            lines[i] = change(lines[i])


def source_files(root):
    files = set()
    for directory, _, names in os.walk(root, followlinks=True):
        for name in names:
            if name.endswith(".scala"):
                # The mutable maps are symbolic links: the target is the file to rewrite
                files.add(os.path.realpath(os.path.join(directory, name)))
    return sorted(files)


def main():
    if len(sys.argv) != 2 or sys.argv[1] not in ("benchmark", "verification", "status"):
        print(__doc__.strip(), file=sys.stderr)
        return 2
    target = sys.argv[1]
    root = os.path.join(os.path.dirname(os.path.abspath(__file__)), "src")

    switched = 0
    modes = set()
    for path in source_files(root):
        with open(path, encoding="utf-8") as f:
            lines = f.readlines()
        found = blocks(lines, path)
        if not found:
            continue
        kinds = {kind for kind, _, _ in found}
        if kinds != {VERIFICATION, BENCHMARKING}:
            raise ValueError(f"{path}: expected one verification block and one benchmarking block")
        if target != "status":
            before = list(lines)
            switch(lines, found, target)
            if lines != before:
                with open(path, "w", encoding="utf-8") as f:
                    f.writelines(lines)
                switched += 1
        mode = mode_of(lines, found)
        modes.add(mode)
        if target == "status" or mode != target:
            print(f"{mode:13} {os.path.relpath(path)}")

    if not modes:
        print("No file with import markers found under src/", file=sys.stderr)
        return 1
    if target == "status":
        return 0 if len(modes) == 1 and "inconsistent" not in modes else 1
    if modes != {target}:
        print(f"Some files could not be switched to the {target} imports", file=sys.stderr)
        return 1
    print(f"{switched} file(s) switched to the {target} imports")
    return 0


if __name__ == "__main__":
    try:
        sys.exit(main())
    except ValueError as error:
        print(f"Error: {error}", file=sys.stderr)
        sys.exit(1)
