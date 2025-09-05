import re
from collections import Counter

TEXT = r"""
Numbers like 1_000 and 0xFF are tokens too.
Regex finds words. Words, words! Python's lexers must be robust.
"""

def top_words(s: str, k: int = 3) -> None:
    words = re.findall(r"[A-Za-z']+", s.lower())
    c = Counter(words)
    print("Top words:", c.most_common(k))

top_words(TEXT, 5)
