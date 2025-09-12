import time
from functools import lru_cache, wraps

def timeit(label: str):
    def deco(fn):
        @wraps(fn)
        def wrapped(*args, **kwargs):
            t0 = time.perf_counter()
            try:
                return fn(*args, **kwargs)
            finally:
                dt = (time.perf_counter() - t0) * 1_000
                print(f"[{label}] {fn.__name__}{args} took {dt:.2f} ms")
        return wrapped
    return deco

@lru_cache(maxsize=None)
def fib(n: int) -> int:
    return n if n < 2 else fib(n-1) + fib(n-2)

@timeit("compute")
def demo():
    n = 35
    print(f"fib({n}) = {fib(n)}")
    z = (3+4j) * (2-1j)
    print("Complex arithmetic:", z)

demo()
