from typing import NamedTuple

class Cmd(NamedTuple):
    op: str
    args: tuple

def run(cmd: Cmd) -> str:
    match cmd:
        case Cmd("add", (a, b)):
            return f"{a} + {b} = {a + b}"
        case Cmd("echo", (msg,)):
            return f"echo: {msg!r}"
        case Cmd("pow", (a, b)) if b >= 0:
            return f"{a} ** {b} = {a ** b}"
        case Cmd("len", (seq,)):
            return f"len = {len(seq)}"
        case _:
            return "unknown command"

commands = [
    Cmd("add", (2, 3)),
    Cmd("echo", ("hello",)),
    Cmd("pow", (3, 4)),
    Cmd("len", ("spans",)),
    Cmd("noop", ()),
]
for c in commands:
    print(run(c))
