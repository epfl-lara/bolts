# Bolts: Stainless Verified Scala

This repository showcases examples of code verified using
[Stainless](https://stainless.epfl.ch) system for Scala. The benchmarks
executed from [run-tests.sh](run-tests.sh) should run correctly with a 
recent [main branch of Stainless](https://github.com/epfl-lara/stainless/) and most are [in this file](tctests.txt).

Some highlights:
  * [Quite OK Image Format](qoi)
  * [System F](system-f) soundness (progress and preservation)
  * [Data structures](data-structures), for example [Conc Rope](data-structures/trees/concrope) and [Red-Black Tree with Remove](data-structures/trees/redblack)
  * [Expression Compiler Correctness](expression-compiler)
  * [Algorithms of varrying complexity](algorithms)
  * [Functional Programming Principles](fp-principles), inspired by some of the Scala course labs
  * [Software foundations](software-foundations), inspired by Software Foundations book
  * [Examples from lectures and tutorials](tutorials)
