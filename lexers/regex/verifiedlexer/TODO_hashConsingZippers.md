val m1: Map[Long, (Long, Zipper)]
invariant(m1) = 

## New idea - Zipper Factory

- Factory for Zippers with a counter to generate unique ids for each Zipper.
  - Keep a map of all Zippers (ghost)
  - Do hashconsing
  - Invariant that each Zipper has a unique id

  - Microbenchmarking Long vs BigInt for ids


### Exploration
- Memoisation + Factory pattern