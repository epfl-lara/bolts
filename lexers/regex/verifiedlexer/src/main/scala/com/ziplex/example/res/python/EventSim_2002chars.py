from __future__ import annotations
from dataclasses import dataclass, field
from enum import Enum, auto
from typing import Callable, List
import heapq, random

class Kind(Enum):
    ARRIVE = auto()
    SERVE = auto()
    DEPART = auto()

@dataclass(order=True)
class Event:
    time: float
    kind: Kind = field(compare=False)
    payload: str = field(compare=False, default="")
    def __str__(self) -> str:
        return f"t={self.time:5.2f} {self.kind.name:<6} {self.payload}"

@dataclass
class Server:
    name: str
    busy_until: float = 0.0
    def free_at(self) -> float:
        return self.busy_until

class Simulator:
    def __init__(self, seed: int = 123) -> None:
        random.seed(seed)
        self.q: List[Event] = []
        self.server = Server("S1")
        self.now = 0.0

    def schedule(self, when: float, kind: Kind, payload: str = "") -> None:
        heapq.heappush(self.q, Event(when, kind, payload))

    def run(self, until: float = 5.0) -> None:
        # Seed a few arrivals
        t = 0.0
        for i in range(6):
            t += random.uniform(0.2, 1.0)
            self.schedule(t, Kind.ARRIVE, f"cust{i}")

        print("== EventSim start ==")
        while self.q and (evt := heapq.heappop(self.q)).time <= until:
            self.now = evt.time
            print(evt)
            match evt.kind:
                case Kind.ARRIVE:
                    start = max(self.now, self.server.free_at())
                    self.schedule(start, Kind.SERVE, evt.payload)
                case Kind.SERVE:
                    service = random.uniform(0.2, 0.8)
                    self.server.busy_until = self.now + service
                    self.schedule(self.server.busy_until, Kind.DEPART, evt.payload)
                case Kind.DEPART:
                    print(f"  {evt.payload} served in {evt.time - self.now + 0.0:.2f}s (instant print on depart)")
        print("== EventSim end ==")

if __name__ == "__main__":
    sim = Simulator()
    sim.run(until=5.0)
