from __future__ import annotations
from dataclasses import dataclass
from math import hypot

@dataclass(frozen=True, slots=True)
class Vector2D:
    x: float
    y: float

    def __add__(self, other: "Vector2D") -> "Vector2D":
        return Vector2D(self.x + other.x, self.y + other.y)

    def __mul__(self, scalar: float) -> "Vector2D":
        return Vector2D(self.x * scalar, self.y * scalar)

    @property
    def mag(self) -> float:
        return hypot(self.x, self.y)

    @classmethod
    def zero(cls) -> "Vector2D":
        return cls(0.0, 0.0)

    def __str__(self) -> str:
        return f"⟨{self.x:.2f}, {self.y:.2f}⟩ |mag|={self.mag:.2f}"

a = Vector2D(3, 4)
b = Vector2D(1.5, -2)
print("Vector demo:", a, "+", b, "=", a + b, "; 2*a =", a * 2)
print("Zero vector:", Vector2D.zero())
