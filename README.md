[![Build Status](https://github.com/epfl-lara/bolts/actions/workflows/bolts-CI.yml/badge.svg?branch=main)](https://github.com/epfl-lara/bolts/actions/workflows/bolts-CI.yml/?branch=main)

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
  * [Examples from lectures and tutorials](tutorials) such as [Lambda Days'20 keynote](https://www.youtube.com/watch?v=dkO59PTcNxA) and [ASPLOS'20 tutorial](https://epfl-lara.github.io/asplos2022tutorial/)

Notable Stainless case studies outside of this repository include:
  * [From Verified Scala to STIX File System Embedded Code using Stainless](https://lara.epfl.ch/~kuncak/papers/HamzaETAL22NFM.pdf)
  * [Specification and Verification of a Blockchain Light Client](https://mediaspace.epfl.ch/media/Specification+and+Verification+of+a+Blockchain+Light+Client/0_jkewunkd/30542)
