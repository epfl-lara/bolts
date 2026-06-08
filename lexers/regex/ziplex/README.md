# Ziplex: A Verified Inveritble Lexer

## Table of contents

- [Ziplex: A Verified Inveritble Lexer](#ziplex-a-verified-inveritble-lexer)
  - [Table of contents](#table-of-contents)
  - [Setup - Installation instructions](#setup---installation-instructions)
    - [SDKMAN for JVM switching](#sdkman-for-jvm-switching)
    - [Verification](#verification)
    - [Running the project](#running-the-project)
  - [Using the Docker image](#using-the-docker-image)
    - [VSCode Remote Containers](#vscode-remote-containers)
  - [Verify the project](#verify-the-project)
    - [Verification smoke test](#verification-smoke-test)
    - [Time and memory consumption](#time-and-memory-consumption)
    - [Generate report and SMT queries for analysis](#generate-report-and-smt-queries-for-analysis)
    - [SMT Queries](#smt-queries)
  - [Run the main class](#run-the-main-class)
  - [Run benchmarks](#run-benchmarks)
    - [Quick start: one-command pipeline (recommended)](#quick-start-one-command-pipeline-recommended)
    - [Run all Scala benchmarks](#run-all-scala-benchmarks)
      - [Prepare scala files](#prepare-scala-files)
      - [Benchmark smoke test](#benchmark-smoke-test)
      - [Execute benchmarks](#execute-benchmarks)
        - [Time frame and log feedback](#time-frame-and-log-feedback)
    - [Coqlex benchmarks](#coqlex-benchmarks)
    - [Prepare data for analysis](#prepare-data-for-analysis)
    - [Analyze data](#analyze-data)
  - [Structure of the project](#structure-of-the-project)
    - [Summary](#summary)
    - [Lexer and regular expression matching verified implementations](#lexer-and-regular-expression-matching-verified-implementations)
    - [Verified mutable maps used for memoization](#verified-mutable-maps-used-for-memoization)
    - [Example lexers and applications](#example-lexers-and-applications)
    - [Benchmarks and result processing](#benchmarks-and-result-processing)
    - [Entry points and specifications](#entry-points-and-specifications)
    - [Main correctness theorem(s)](#main-correctness-theorems)

## Setup - Installation instructions

If you are using the Docker image, you can skip the setup instructions and go directly to the [Using the Docker image](#using-the-docker-image) section.

### SDKMAN for JVM switching

Some benchmarking scripts switch the active JVM. Please install SDKMAN so those scripts can select the required JDK version.

Install and initialize SDKMAN (see https://sdkman.io), then ensure the following works:

```bash
sdk version
```

Note: `run_benchmarks.sh` sources the SDKMAN init script to make `sdk` available in non-interactive shells.
If SDKMAN is installed in a non-default location, set the `SDKMAN_DIR` environment variable before running the script.

The JVMs we used for benchmarking are:

- `21.ea.35-open` or `21.0.2-open` depending on what is available at the time of running the benchmarks. Both are OpenJDK 21 versions.
- `21.0.11-graal`

### Verification

To verify the project, you need to install the Stainless verifier. You can find the installation instructions [on the official Github page](https://github.com/epfl-lara/stainless). Use the version 0.9.9.3.

The complete instructions can be found on [this page](https://epfl-lara.github.io/stainless/installation.html), but we recommend using the package manager way if your system is supported. Otherwise, you can download the release from Github.

To use Stainless, you need to download SMT solvers separately. For this project, we recommend using Z3 and cvc5 as the `verify.sh` script assumes these two solvers are available in your PATH.

The versions we used are:

- Z3 version 4.15.4 download from github releases: https://github.com/Z3Prover/z3/releases
- cvc5 version 1.3.3 download from github releases: https://github.com/cvc5/cvc5/releases

### Running the project

If you are using the docker image, you can skip this section and go directly to the [Using the Docker image](#using-the-docker-image) section.

To run this project, you need to install the Stainless sbt plugin. To do so, follow these steps:

1. Download the following archive: [Stainless SBT plugin download](https://github.com/epfl-lara/stainless/releases/download/v0.9.9.3/sbt-stainless.zip)
2. Unzip the archive, it should contain a `project` folder and a `stainless` folder.
3. copy the `project/lib` folder into the `project` of this sbt project.
4. copy the `stainless` folder into the root of this sbt project.

You should obtain the following folder structure:

```
mutablemap
├── build.sbt
├── project
│   ├── build.properties
│   └── lib                     <--------
│       └── sbt-stainless.jar   <--------
├── sbt-stainless.zip
├── src/
└── stainless/                  <--------
```

Now the project is ready to run, both the main class and the benchmarks.

If it does not work, please refer to [this manual](https://epfl-lara.github.io/stainless/installation.html#usage-within-an-existing-project).

## Using the Docker image

To run a container with the Docker image, you can use the following command:

```bash
  docker run \
  -d \
  --name ziplex-artifact \
  --memory=35g \
  --memory-swap=48g \
  -p 2222:22 \
  ziplex tail -f /dev/null
```

This will start a container with the name `ziplex` that exposes a Jupyter notebook on port 8888. You can access the notebook by going to `http://localhost:8888` in your web browser and using the token `ziplex` to log in.

Make sure that the memory limits in docker desktop are high enough to avoid stainless being killed by the OOM killer. We recommend setting the memory limit to at least 32GB.

You can then run `docker exec -it ziplex bash` to get a terminal in the running container, and navigate to the `/ziplex` folder to access the code and run the verification and benchmarks.

The `verify.sh` script (see below) is configured to use the Z3 and cvc5 solvers that are installed in the Docker image, so you can run it without any additional configuration.

### VSCode Remote Containers

Alternatively, we suggest to attach a Vscode instance to the running container to easily navigate the code and run the verification and benchmarks from the terminal in VSCode. This also allows to monitor the progress of the benchmarks by looking at the logs in real time, and to use the jupyter notebook to analyze the results. To do so, follow these steps:

1. Start the container with this command:

  ```bash
    docker run \
      -d \
      --name ziplex-artifact \
      --memory=35g \
      --memory-swap=48g \
      -p 2222:22 \
      ziplex tail -f /dev/null
  ```

2. Open the command palette in VSCode and select "Attach to running container", then select the `stainless-ziplex-artifact` container.
3. Once connected to the container, open the `/ziplex` folder in VSCode, and open a terminal in VSCode to run the verification and benchmarks.

To instantiate a container with this command, you need to set the allowed memory for Docker to at least 32GB in the Docker Desktop settings, otherwise the OOM killer will kill the Stainless process during verification. We also recommend setting the swap memory to at least 4GB. For this configuration, you need to have strictly more than 32GB of RAM on your machine. We tested this configuration on a machine with 36GB of RAM.

If you want to allocate less memory to the container, you can go as low as 28GB of memory, but you'll need to use the alternative verification script `verify_smaller_memory_footprint.sh` that is configured to verify the project with a smaller memory footprint, by splitting the verification into different stainless invocations. This might increase the total verification time and note that you cannot generate the smt queries for analysis with this smaller memory footprint configuration, but it can be useful if you want to verify the project on a machine with less available memory. 

For this configuaration, you need to allow at least 30GB of memory in the Docker Desktop settings. This works on a machine with 32GB of RAM. You can then run the container with the following command:

```bash
  docker run \
    -d \
    --name ziplex-artifact \
    --memory=30g \
    --memory-swap=48g \
    -p 2222:22 \
    ziplex tail -f /dev/null
```

## Verify the project

To verify the whole project, run the `verify.sh` script at the root of the project:

```bash
  ./verify.sh
```

This script assumes that `stainless` is available in your PATH, along with `z3` and `cvc5`; see Section Setup above for more information about how to install it if you are not using the docker image.

If you are using the docker image, make sure you are on the `main` branch in the local git repository in `/ziplex`.

### Verification smoke test

To verify your setup, you can run the `verify_smoke.sh` script at the root of the project:

```bash
  ./verify_smoke.sh
```

This will verify only the main lexing function `VerifiedLexer.Lexer.lex`. If this verification runs successfully, then your setup is correct and you can proceed to verify the whole project with `./verify.sh`. This smoke test can take up to 3 minutes to run.

### Time and memory consumption

While verifying Ziplex, memory consumption can go up to 32GB and the verification can take up to 3 hours, depending on the level of parallelism. We recommend running the verification with at least 32GB of RAM allowed to be used by the container (or on the machine) to avoid issues with the OOM killer.

If you want to increase the level of parallelism, you can modify pass the corresponding option to `verify.sh`. In our experience, running with 4 or 8 parallel threads can reduce the verification time to around 1 to 1.5 hours.

```bash
  ./verify.sh -p 4
```

You can run `./verify.sh -h` to see the usage instructions and available options.

To use a smaller memory footprint configuration, you can use the `verify_smaller_memory_footprint.sh` script instead, as explained in the [Using the Docker image](#using-the-docker-image) section.

### Generate report and SMT queries for analysis

To generate Stainless json report and the SMT queries that analyzed in the `Benchmark Data Analysis.ipynb` Jupyter notebook, run:

```bash
  ./verify.sh --json --debug=smt
```

### SMT Queries

We provide the SMT queries generated during verification in the `./benchmark_results/smt-sessions-filtered` folder. These queries were generated using the command above, then filtered out to keep only the query corresponding to the solver verifying the VC. Indeed, Stainless runs multiple solvers in parallel, and we are only interested in the one that actually verified the VC. Other queries are incomplete, as Stainless calls the solver multiple times for each VC, with different functions gradully unfolded, and stops as soon as one of the solvers manages to verify the VC.

## Run the main class

To run the main class, you can use the following command:

```bash
  sbt "runMain com.ziplex.lexer.Main"
```

This will run the `main` method in the `Main` object, which contains some demo code to visualize the regex zipper.

If you are using the docker image, make sure you are on the `benchmarks` branch in the local git repository in `/ziplex`.

## Run benchmarks

The benchmark scripts (`run_benchmarks.sh` and `run_benchmarks_smoke.sh`) automatically switch the local ziplex git repository to the `benchmarks` branch before running, and restore the original branch on success. If a run fails at any point, the scripts roll back to the `main` branch. You do not need to switch branches manually.

Make sure the working tree is clean before running the benchmarks so that the automatic `git checkout` can succeed.

### Quick start: one-command pipeline (recommended)

For most users, the only command needed is the top-level pipeline script at the root of the project:

```bash
  ./run_benchmarks_pipeline.sh
```

This will:

1. Run the full Scala (and flex) benchmark suite via `./run_benchmarks.sh` (which also handles the git branch switch and rollback described above).
2. Extract the produced raw logs into the format consumed by the analysis notebook, by calling `./benchmark_results/extract_data.sh` on the directory that was just created.

After it completes, you can open `benchmark_results/Benchmark Data Analysis.ipynb` and run all cells to produce the plots.

You can pass the number of measurement iterations and warmup iterations as the first and second positional arguments; they are forwarded to `./run_benchmarks.sh`:

```bash
  ./run_benchmarks_pipeline.sh 1 1   # 1 iteration, 1 warmup iteration (fastest)
  ./run_benchmarks_pipeline.sh 10 3  # 10 iterations, 3 warmup iterations
```

Run `./run_benchmarks_pipeline.sh -h` to see the full usage.

Note: the Coqlex benchmarks (see [Coqlex benchmarks](#coqlex-benchmarks)) are not driven by this pipeline; the Coqlex results we shipped in `from_coqlex/` are reused by the extraction step. If you want to re-run them from scratch, follow the Coqlex section below.

The remaining subsections below describe each step individually and are kept as a reference for debugging or for running steps in isolation (for example to re-run only the extraction without re-running the benchmarks, or to launch the smoke test).

### Run all Scala benchmarks

#### Prepare scala files

Before running the benchmarks, some imports must be modified to import special versions of ghost functions that are properly erased to enable
optimizations like "tailrec" to be applied by the Scala compiler.

The benchmark scripts handle this automatically by checking out the `benchmarks` branch, in which the necessary imports are already uncommented and the files are ready to be benchmarked.

To do it manually, look for such blocks in import sections:

```scala
// BEGIN uncomment for verification ------------------------------------------
import ...
// END uncomment for verification --------------------------------------------
// BEGIN imports for benchmarking -------------------------------------------
// import ...

// @tailrec
// def dummyExample(x: BigInt): BigInt = {
//   if (x == BigInt(0)) then x
//   else dummyExample(x - BigInt(1))
// }.ensuring( res => res == BigInt(0))
// END imports for benchmarking ---------------------------------------------
```

and uncomment the "imports for benchmarking" section, while commenting out the "imports for verification" section. This will import the versions of ghost functions that are properly erased for benchmarking, and comment out the versions that are not erased and are needed for verification.

#### Benchmark smoke test

To run a smoke test of the benchmarks, you can run the `./run_benchmarks_smoke.sh` script at the root of the project:

```bash
  ./run_benchmarks_smoke.sh
```

This will execute a small subset of the benchmarks (only the `JsonLexerBenchmarkSmoke` benchmark) with a single iteration and a single warmup iteration, to check that the benchmarks run correctly and produce results. The results will be saved in a folder named `benchmark_results/raw/results_<current-date>`.

Running this smoke test should take 1 to 2 minutes.

#### Execute benchmarks

To run all benchmarks, simply run the following command at the root of the project:

```bash
  ./run_benchmarks.sh
```

This will create a `benchmark_results/raw/<current-date>` folder containing the results of the benchmarks.

##### Time frame and log feedback

Running all the benchmarks can around 24 hours or more, depending on the machine and the level of parallelism. The benchmarks are configured to run with a single thread to avoid any issues with parallel execution and to get more stable results, but you can run the `./run_benchmarks.sh` script with less iterations and warmup iterations by passing them as arguments to the script, for example:

```bash
  ./run_benchmarks.sh 1 1
```

You can also run `./run_benchmarks.sh -h` to see the usage instructions and available options.

With 1 iteration and 1 warmup iteration, the benchmarks should run in around 2-4 hours, depending on the machine. With more iterations, the time will increase accordingly.

While the benchmarks are running, the logs will be written in the `benchmark_results/raw/<current-date>` folder, and you can check the progress by looking at the logs. Each benchmark will produce a log file with the name of the benchmark and the configuration used (number of iterations, warmup iterations, etc.). You can check these logs to see which benchmarks have finished and which are still running.

### Coqlex benchmarks

To run the Coqlex benchmarks, we use the original evaluation pipeline[Coqlex repository](https://gitlab.inria.fr/wouedrao/coqlex/-/tree/master).

Because we added new grammars to the Coqlex benchmark suite, we provide a copy of the repository with the new lexers in `coqlex-fork/Comparison/AAStarB`. We added this `coqlex-fork/Comparison/AAStarB/` folder and modified the `Makefile` to run the benchmarks for the grammar `a` and `a*b`.

For the grammar `a` and `a*b`, we provide a new coqlex lexer in `coqlex-fork/Comparison/AAStarB/Lexers/Coqlex`, and a new Verbatim++ lexer in `coqlex-fork/Comparison/AAStarB/Lexers/Verbatim`. The Coqlex lexer is built automatically when running the benchmark. The Verbatim++ lexer is generated using the Verbatim++ official repository in `Verbatim`. The lexer for the grammar `a` and `a*b` is located in `Verbatim/ExamuB/Lexer` and is compiled by running `make` in `Verbatim`. The generated `.ml` files must then be copied to `coqlex-fork/Comparison/AAStarB/Lexers/Verbatim` before running the benchmarks (we already compiled and copy the files).

To run the Coqlex benchmarks, follow these steps:

1. Install the dependencies listed in the Coqlex repository README (already done in the docker image).
2. Navigate to the `coqlex-fork` folder and run `make`. 
3. Run the benchmarks by running `make compare_json` and `make compare_aastarb` in `./coqlex-fork/`.

You can also rely on the data already present in the `from_coqlex` folder, which contains the results of the Coqlex benchmarks run on our machine.

If you decide to run the benchmarks yourself, make sure to copy the results in the `from_coqlex/Comparison/JSON/results` and `from_coqlex/Comparison/AAStarB/results`folders.

### Prepare data for analysis

To prepare the data for analysis, run the following command in the `benchmark_results` directory:

```bash
  ./extract_data.sh benchmark_results/raw/<date-of-benchmark>
```

This will process the raw logs in usable data files and move them in the `benchmark_results/latest` folder. This also write data in the correct format in the `from_coqlex/Comparison/JSON/results/ZipLex` folder to compare with the Coqlex benchmark suite. For the analysis script to work, you need to have the Coqlex results in the `from_coqlex/Comparison/JSON/results` and `from_coqlex/Comparison/AAStarB/results` folders for the other lexers, see previous section.

This will also extract the data from the `flex` benchmark results, which are located in `flex_benchmarks` and are run by the `run_benchmarks.sh` script.

### Analyze data

The analysis of the data is done in the `Benchmark Data Analysis.ipynb` notebook. Make sure to install the required dependencies listed in `benchmark_results/requirements.txt` using pip. `Benchmark Data Analysis.ipynb` loads the data from the `benchmark_results/latest` folder and the `from_coqlex` folder to produce the analysis and plots. It also analyzes the Stainless report and SMT queries generated using the `./verify.sh --json --debug=smt` command, if they are placed in the `benchmark_results/latest` folder.

If you are using the docker image, you can access the notebook at `http://localhost:8888` and log in with the token `ziplex`. The notebook is located in the `benchmark_results` folder. You can also run the notebook in VSCode if you have attached to the container using VSCode Remote Containers.

Plots are generated in the `benchmark_results/plots` folder. The file names of the plots are prefixed with the figure number in the paper.

## Structure of the project

The project is organized around three main parts: verified lexer/regex core logic, verified mutable hash tables, example lexers and applications, and benchmarking/analysis tooling.

### Summary

| What | Where | Key symbols / notes |
| --- | --- | --- |
| Regular expression matching engine | [src/main/scala/com/ziplex/lexer/VerifiedRegex.scala](src/main/scala/com/ziplex/lexer/VerifiedRegex.scala) | Regular expression constructors, derivative computation, Zipper-based representation, regular expression specifications, lemmas and theorems |
| Lexer implementation | [src/main/scala/com/ziplex/lexer/VerifiedLexer.scala](src/main/scala/com/ziplex/lexer/VerifiedLexer.scala) | `VerifiedLexer`, `Lexer`, `lex`, `lexMem`, memoized variants |
| Interface + specs | [src/main/scala/com/ziplex/lexer/LexerInterface.scala](src/main/scala/com/ziplex/lexer/LexerInterface.scala) | Interface for lexers `LexerInterface` and main specifications including the longest match theorem and invertibility laws |
| Sequence structures | [src/main/scala/com/ziplex/lexer/BalanceConcArr.scala](src/main/scala/com/ziplex/lexer/BalanceConcArr.scala), [src/main/scala/com/ziplex/lexer/Vector.scala](src/main/scala/com/ziplex/lexer/Vector.scala) | Verified `BalanceConc` + trusted wrapper `Vector` |
| Verified HashMap | [src/main/scala/com/ziplex/map/](src/main/scala/com/ziplex/map/) | Reusable verified mutable maps used for memoization in Ziplex  |
| Example lexers | [src/main/scala/com/ziplex/example/](src/main/scala/com/ziplex/example/) | JSON, `a` and `a*b` rules, Amy, Python |
| Demo entry point | [src/main/scala/com/ziplex/lexer/Main.scala](src/main/scala/com/ziplex/lexer/Main.scala) | `main(args: Array[String])` |
| Benchmarks | [src/main/scala/com/ziplex/benchmark/](src/main/scala/com/ziplex/benchmark/), [run_benchmarks.sh](run_benchmarks.sh) | Benchmark suite |
| Result analysis | [benchmark_results/](benchmark_results/), [benchmark_results/Benchmark Data Analysis.ipynb](benchmark_results/Benchmark%20Data%20Analysis.ipynb) | Data extraction + plots/notebook analysis |

### Lexer and regular expression matching verified implementations

- `src/main/scala/com/ziplex/lexer/VerifiedRegex.scala`
  - `object VerifiedRegex` contains the regular expression data type definitions, derivative computation, and predicates over regular expressions.
  - `object ZipperRegex` contains the zipper-based representation of regular expressions and associated operations, as well as the main correctness lemmas/theorems relating the zipper representation to the original regular expression semantics, with the main theorem being `def theoremZipperRegexEquiv`.
  - `object VerifiedRegexMatcher` contains the main regular expression matching function based on derivatives (`def matchR`) and its correctness proof of which the main theorem is `def mainMatchTheorem`.
  - `object MemoisationRegex` and `object MemoisationZipper` contain the memoization caches and associated lemmas/theorems for the regular expression matching functions. These are memoizing derivatives.
- `src/main/scala/com/ziplex/lexer/LexerInterface.scala`
  - Main interface and formal specifications (`trait LexerInterface`).
  - Declares core laws such as `maximalMunchPrinciple`, `invertibleThroughLexing`, and separator-based invertibility laws. These are the main correctness theorems about the lexer.
  - Declares associated types such as `Token`, `Rule`, `TokenValue`, as well as semi-inverse functions to represent invertible string to token value transformations.
  - The type alias `Sequence[T]` is defined here. To swap the `BalanceConc` structure with a different sequence structure, one would only need to modify this alias and implement the methods `singletonSeq`, `seqFromList`, and `seqFromArray` accordingly, as well as the associated lemma `seqFromListBHdTlConstructive`. The code need to use the trusted `Vector` wrapper is commented out as an example.
- `src/main/scala/com/ziplex/lexer/VerifiedLexer.scala`
  - Main lexer implementation (`object VerifiedLexer`, `case object Lexer`) and proof lemmas/theorems. `case object Lexer` implements the `LexerInterface` and proves the associated laws.
  - Contains the memoized and non-memoized lexing functions (`lex`, `lexV1Mem`, `lexMem`, etc.).
  - `case class PrintableTokens` is the wrapper for separable token lists that can be printed back to strings while preserving the invertibility properties.
- `src/main/scala/com/ziplex/lexer/BalanceConcArr.scala`, `src/main/scala/com/ziplex/lexer/Vector.scala`
  - Sequence data structures used by the lexer (verified `BalanceConc` and a `Vector` wrapper) to represent token and character sequences.

### Verified mutable maps used for memoization

- Files in `src/main/scala/com/ziplex/map/` (package `com.mutablemaps.map`)
  - Verified hash maps / long maps and utilities used by memoization caches in the lexer. The maps are reusable and can be used in other contexts. The verified `LongMap` was published at IJCAR 2024 as "Verifying a Realistic Mutable Hash Table" (https://doi.org/10.1007/978-3-031-63498-7_18). The `object MutableHashMap` is introduced in this work.

### Example lexers and applications

- `src/main/scala/com/ziplex/example/JSONLexer.scala`
  - Verified JSON lexer definition (`ExampleJsonLexer`).
- `src/main/scala/com/ziplex/example/AAStarBLexer.scala`, `AmyLexer.scala`, `PythonLexer.scala`
  - Additional example grammars/lexers used for evaluation.
- `src/main/scala/com/ziplex/example/JsonManipulation.scala`
  - Example verified application logic that mainupulate tokenized JSON while preserving the invertibility of the lexing-printing processes.
- `src/main/scala/com/ziplex/lexer/Main.scala`
  - Demo executable entry point (regex zipper visualization and example runners).

### Benchmarks and result processing

- `src/main/scala/com/ziplex/benchmark/`
  - JMH benchmarks for lexer variants and related microbenchmarks.
- `run_benchmarks_pipeline.sh`
  - Top-level one-command pipeline: runs the benchmarks and extracts the data for the analysis notebook. Forwards `[iterations] [warm_iterations]` to `run_benchmarks.sh`.
- `run_benchmarks.sh`
  - Script that executes the benchmark suites (auto-switches to the `benchmarks` branch and rolls back to `main` on failure).
- `run_benchmarks_smoke.sh`
  - Smoke variant of the benchmark script, used to validate the setup.
- `benchmark_results/`
  - Raw results, extraction scripts, and analysis notebook (`Benchmark Data Analysis.ipynb`).

### Entry points and specifications

- Main lexing entry point: `Lexer.lex` in `VerifiedLexer.scala`.
- High-performance memoized entry points: `Lexer.lexMem` in `VerifiedLexer.scala`.
  - The lexer provides additional lexing methods such as `Lexer.lexV1Mem`, `Lexer.lexV2Mem`, `Lexer.lexV3Mem*`. These are variants of the main `lex` and `lexMem` methods with different memoization strategies and optimizations. They are used for benchmarking and performance analysis, but the main entry points are `lex` and `lexMem`.
- Main specification contract: `trait LexerInterface` in `LexerInterface.scala`.
  - The methods in `VerifiedLexer.Lexer` implement this interface and prove the associated laws.

### Main correctness theorem(s)

- Lexing invertibility:
  - `invertibleThroughLexing` in `LexerInterface.scala`: this theorem states that lexing a string and printing the produced tokens gives back the original string.
  - `separableTokensThenInvertibleThroughPrinting` in `LexerInterface.scala`: this theorem states that if a token list follows the R-Path condition for separability and each token is individually producible by the rules, then printing and lexing gives back the same token list.
  - `interleavingSeparatorTokenMakesSeparableSequence`, `invertibleThroughPrintingWithSeparatorWhenNeeded`, `invertibleThroughPrintingWithSeparator` in `LexerInterface.scala`: these theorems state that if a special separator token is interleaved with other tokens, then printing the tokens and lexing back the printed string gives back the same token list. This allows to ensure invertibility even for non-separable token lists, by interleaving a special separator token between tokens that would otherwise violate the separability condition.
- Lexing longest match semantics, or maximal munch principle:
  - `maximalMunchPrinciple` in `LexerInterface.scala`: this theorem states that if a string can be lexed into a token list, then the produced token list is maximal in the sense that no token can be replaced by a longer token that would still match the same substring. This captures the longest match semantics of lexing as well as rules priority.