def fizzbuzz(n: int = 20) -> str:
    out = []
    for i in range(1, n + 1):
        s = ("Fizz" if i % 3 == 0 else "") + ("Buzz" if i % 5 == 0 else "")
        out.append(s or str(i))
    return " ".join(out)

print("FizzBuzz ->", fizzbuzz(30))