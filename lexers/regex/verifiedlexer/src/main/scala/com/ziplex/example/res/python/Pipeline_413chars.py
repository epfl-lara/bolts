from io import StringIO

def read_lines(f):
    for line in f:
        yield line.rstrip("\n")

def words(lines):
    for ln in lines:
        yield from (w.strip(",.!?;:") for w in ln.split())

def upper(words_iter):
    for w in words_iter:
        yield w.upper()

data = StringIO("one, two!\nThree words\nand MORE.")
with data as f:
    pipe = upper(words(read_lines(f)))
    print("Pipeline ->", list(pipe))
