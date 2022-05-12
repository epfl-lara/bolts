# Unannotated version of `verified`
This folder contains the same implementations as the one in `verified` with the following differences:
- Annotation, lemmas, etc. have been stripped
- Uses Scala's data structures (such as `Option`) instead of the one provided by Stainless' library

It allows to have a good overview of how many annotations are needed to prove correctness.

According to `cloc v1.82`, we have:
- `encoder.scala` 137 SLOC
- `decoder.scala` 136 SLOC
- `common.scala` 40 SLOC

For a total of 313 SLOC
