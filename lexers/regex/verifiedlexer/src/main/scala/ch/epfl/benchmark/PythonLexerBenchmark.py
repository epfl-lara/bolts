# src/main/scala/ch/epfl/benchmark/PythonLexerBenchmark.py
import os
from io import BytesIO
import tokenize
import pyperf

#!/usr/bin/env python3
import pyperf


paths = [
    "src/main/scala/ch/epfl/example/res/python/Micro_1chars.py",
    "src/main/scala/ch/epfl/example/res/python/AsyncDemo_426chars.py",
    "src/main/scala/ch/epfl/example/res/python/BigString_113chars.py",
    "src/main/scala/ch/epfl/example/res/python/CommandMatcher_660chars.py",
    "src/main/scala/ch/epfl/example/res/python/EventSim20x_42063chars.py",
    "src/main/scala/ch/epfl/example/res/python/EventSim_2002chars.py",
    "src/main/scala/ch/epfl/example/res/python/Factorial_168chars.py",
    "src/main/scala/ch/epfl/example/res/python/FizzBuzz_245chars.py",
    "src/main/scala/ch/epfl/example/res/python/MultiLineString_323chars.py",
    "src/main/scala/ch/epfl/example/res/python/ParseNumbers_708chars.py",
    "src/main/scala/ch/epfl/example/res/python/Pipeline_413chars.py",
    "src/main/scala/ch/epfl/example/res/python/PrimeSieve_458chars.py",
    "src/main/scala/ch/epfl/example/res/python/Simple_26chars.py",
    "src/main/scala/ch/epfl/example/res/python/TimedFib_679chars.py",
    "src/main/scala/ch/epfl/example/res/python/TinyPlus_164chars.py",
    "src/main/scala/ch/epfl/example/res/python/Vector2D_802chars.py",
    "src/main/scala/ch/epfl/example/res/python/WordStats_346chars.py",
]

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


runner = pyperf.Runner()

for path in paths:
    data = _load_bytes(path)
    name = f"tokenize:{os.path.basename(path)}"
    runner.bench_func(name, _make_bench(data))

