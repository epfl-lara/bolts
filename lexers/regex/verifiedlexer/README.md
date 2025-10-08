# Verified Lexer based on Regex derivatives

## Setup

To run this project, you need to install the Stainless sbt plugin. To do so, follow these steps:

1. Download the following archive: [Stainless SBT plugin download]("https://github.com/epfl-lara/stainless/releases/download/v0.9.9.1/sbt-stainless.zip")
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

If it does not work, please refer to [this manual]("https://epfl-lara.github.io/stainless/installation.html#usage-within-an-existing-project").

## Run benchmarks

### Run all Scala benchmarks

To run all benchmarks, simply run the following command at the root of the project:

```bash
  ./run-benchmarks.sh
```

This will create a `benchmark_results/raw/<current-date>` folder containing the results of the benchmarks.

### Run Coqlex benchmarks

To run the Coqlex benchmarks, you need to clone the Coqlex repository and run the benchmarks following their documentation. You can find the repository here: [Coqlex repository](https://gitlab.inria.fr/wouedrao/coqlex/-/tree/master).

You can also rely on the data already present in the `from_coqlex` folder, which contains the results of the Coqlex benchmarks run on our machine.

### Prepare data for analysis

To prepare the data for analysis, run the following command in the `benchmark_results` directory:

```bash
  ./extract_data.sh benchmark_results/raw/<date-of-benchmark>
```

This will process the raw logs in usable data files and move them in the `benchmark_results/latest` folder. This also write data in the correct format in the `from_coqlex` folder to compare with the Coq lexer benchmark suite.

### Analyze data

The analysis of the data is done in the `Benchmark Data Analysis.ipynb` notebook. You can open it with Jupyter Notebook or Jupyter Lab.
