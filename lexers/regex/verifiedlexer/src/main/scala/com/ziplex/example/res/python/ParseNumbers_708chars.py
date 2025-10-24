import re

def parse_and_sum(s: str) -> int:
    """
    Extract integers written in decimal, hex (0x..), binary (0b..), or with underscores.
    """
    total = 0
    try:
        for tok in re.findall(r"0x[0-9a-fA-F_]+|0b[01_]+|[0-9][0-9_]*", s):
            base = 16 if tok.startswith("0x") else 2 if tok.startswith("0b") else 10
            total += int(tok.replace("_", ""), base)
    except Exception as e:
        print("Error during parse:", e)
        raise
    finally:
        # Show we can emit bytes and decode
        b = b"done"
        print("finally ->", b.decode("ascii"))
    return total

sample = "mix: 123 and 1_000 and 0xFF and 0b1010"
print("ParseNumbers ->", parse_and_sum(sample))
