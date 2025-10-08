from math import isqrt

def sieve(limit: int) -> list[int]:
    """Return primes up to limit (inclusive)."""
    if limit < 2:
        return []
    is_prime = [True] * (limit + 1)
    is_prime[0] = is_prime[1] = False
    for p in range(2, isqrt(limit) + 1):
        if is_prime[p]:
            is_prime[p*p : limit+1 : p] = [False] * len(range(p*p, limit+1, p))
    return [i for i, prime in enumerate(is_prime) if prime]

print("Primes ≤ 50:", sieve(50))
