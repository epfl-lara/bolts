# Verified Mutable Map in Scala

This project contains a Verified implementation of the `LongMap` from the scala standard library.

## Verification

To verify using Stainless, first install Stainless following the instructions [here]("github.com/epfl-lara/stainless").

Then, run `$ ./verify.sh`.

Then, run `sbt` and run `stainlessVerify` to verify the implementation.

## Benchmarks

To run benchmarks, run in `sbt`

```$ Jmh/run -i 10 -wi 10 -f1 -t1 <regex-if-only-some>```