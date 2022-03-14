# Verified Scala implementation of QOI using Stainless
A Scala implementation of the [Quite OK Image lossless compression algorithm](https://github.com/phoboslab/qoi), formally verified using [Stainless](https://stainless.epfl.ch/).

The following properties are verified:
- Absence of runtime failure such as out-of-bound array accesses, division by zero, pattern matching, and so on (but not OOM).
- Program termination
- Decoding is the inverse of decoding
  * This property is stated in [`encoder.scala`, lines 43-56](https://github.com/epfl-lara/bolts/blob/02d51d147f7e5dd80cc62c7f58abb93215b6265b/qoi/verified/encoder.scala#L43-L56)

Additionally, one may run the Stainless' GenC pipeline to transpile Scala into C (see below).

## Directory structure
- `verified` contains the verified Scala implementation, along with the necessary proof annotations and lemmas to prove the above-stated properties
- `unannotated` has the same implementation as `verified`, except that we removed all annotations.
- `genc` includes scripts and C files allowing to try out the generated C files from Scala files.
   - `make genc` triggers a command to run GenC and transpile Scala to C (generating files `stainless.c` and `stainless.h`)
  - The script `test-genc.sh` converts sample images from QOI to PNG and vice-versa (using a modified version of [`qoiconv.c`](https://github.com/phoboslab/qoi/blob/master/qoiconv.c))
  - The script `run-bench.sh` executes a modified version of [`qoibench.c`](https://github.com/phoboslab/qoi/blob/master/qoibench.c) to compare the reference implementation to ours.
