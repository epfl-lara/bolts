# Verified Lexer based on Regex derivatives

## Setup

### Verification

To verify the project, you need to install the Stainless verifier. You can find the installation instructions [on the official Github page](https://github.com/epfl-lara/stainless). Use the version 0.9.9.1.

The complete instructions can be found on [this page](https://epfl-lara.github.io/stainless/installation.html), but we recommend using the package manager way if your system is supported. Otherwise, you can download the release from Github.

To use Stainless, you need to download SMT solvers separately. For this project, we recommend using Z3 and cvc5 as the `verify.sh` script assumes these two solvers are available in your PATH.

### Running the project

To run this project, you need to install the Stainless sbt plugin. To do so, follow these steps:

1. Download the following archive: [Stainless SBT plugin download](https://github.com/epfl-lara/stainless/releases/download/v0.9.9.1/sbt-stainless.zip)
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

## Verification

To verify the whole project, run the `verify.sh` script at the root of the project:

```bash
  ./verify.sh
```

This script assumes that `stainless` is available in your PATH, along with `z3` and `cvc5`; see Section Setup above for more information about how to install it.

### Generate report and SMT queries for analysis

To generate Stainless json report and the SMT queries that analyzed in the `Benchmark Data Analysis.ipynb` Jupyter notebook, run:

```bash
  ./verify.sh "--json --debug=smt"
```

### SMT Queries

We provide the SMT queries generated during verification in the `smt_queries` folder. These queries were generated using the command above, then filtered out to keep only the query corresponding to the solver verifying the VC. Indeed, Stainless runs multiple solvers in parallel, and we are only interested in the one that actually verified the VC. Other queries are incomplete, as Stainless calls the solver multiple times for each VC, with different functions gradully unfolded, and stops as soon as one of the solvers manages to verify the VC.

## Run benchmarks

### Run all Scala benchmarks

#### Prepare scala files

Before running the benchmarks, some imports must be modified to import special versions of ghost functions that are properly erased to enable
optimizations like "tailrec" to be applied by the Scala compiler. To do so, run the following command at the root of the project:

```bash
  git apply prepare_to_run_benchmark.patch
```

This will modify the imports of all executed files. After running the benchmarks, you can revert the changes by running:

```bash
  git checkout -- .
```

#### Execute benchmarks

To run all benchmarks, simply run the following command at the root of the project:

```bash
  ./run_benchmarks.sh
```

This will create a `benchmark_results/raw/<current-date>` folder containing the results of the benchmarks.

### Coqlex benchmarks

To run the Coqlex benchmarks, we use the original evaluation pipeline[Coqlex repository](https://gitlab.inria.fr/wouedrao/coqlex/-/tree/master).

Because we added new grammars to the Coqlex benchmark suite, we provide a copy of the repository with the new lexers in `coqlex-fork/Comparison/AAStarB`. We added this `coqlex-fork/Comparison/AAStarB/` folder and modified the `Makefile` to run the benchmarks for the grammar `a` and `a*b`.

For the grammar `a` and `a*b`, we provide a new coqlex lexer in `coqlex-fork/Comparison/AAStarB/Lexers/Coqlex`, and a new Verbatim++ lexer in `coqlex-fork/Comparison/AAStarB/Lexers/Verbatim`. The Coqlex lexer is built automatically when running the benchmark. The Verbatim++ lexer is generated using the Verbatim++ official repository in `Verbatim`. The lexer for the grammar `a` and `a*b` is located in `Verbatim/ExamuB/Lexer` and is compiled by running `make` in `Verbatim`. The generated `.ml` files must then be copied to `coqlex-fork/Comparison/AAStarB/Lexers/Verbatim` before running the benchmarks (we already compiled and copy the files).

To run the Coqlex benchmarks, follow these steps:

1. Install the dependencies listed in the Coqlex repository README.
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

The analysis of the data is done in the `Benchmark Data Analysis.ipynb` notebook. Make sure to install the required dependencies listed in `benchmark_results/requirements.txt` using pip. `Benchmark Data Analysis.ipynb` loads the data from the `benchmark_results/latest` folder and the `from_coqlex` folder to produce the analysis and plots. It also analyzes the Stainless report and SMT queries generated using the `./verify.sh "--json --debug=smt"` command, if they are placed in the `benchmark_results/latest` folder.
