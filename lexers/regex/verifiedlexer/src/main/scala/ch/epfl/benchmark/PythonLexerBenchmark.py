# src/main/scala/ch/epfl/benchmark/PythonLexerBenchmark.py
import os
from io import BytesIO
import tokenize
import pyperf


def _load_bytes(path: str) -> bytes:
    with open(path, "rb") as f:
        data = f.read()
    # The tokenizer expects a trailing newline
    if not data.endswith(b"\n"):
        data += b"\n"
    return data


def _make_bench(data: bytes):
    """Return a zero-arg function for pyperf that tokenizes DATA entirely in-memory."""
    def _run():
        bio = BytesIO(data)           # fresh buffer each timing loop
        for _ in tokenize.tokenize(bio.readline):
            pass
    return _run


def main() -> None:
    runner = pyperf.Runner()
    # IMPORTANT: add *our* args to pyperf's parser, then parse
    runner.argparser.add_argument("paths", nargs="+", help="Python files to tokenize")
    args = runner.parse_args()

    for path in args.paths:
        data = _load_bytes(path)
        name = f"tokenize:{os.path.basename(path)}"
        runner.bench_func(name, _make_bench(data))


if __name__ == "__main__":
    main()
