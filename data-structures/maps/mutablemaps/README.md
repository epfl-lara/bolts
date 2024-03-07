# Verified Mutable Map in Scala

This project contains a verified implementation of the `LongMap` from the scala standard library, as well as a `HashMap` implementation that builds upon the `LongMap`, also verified.

## Setup

To run this project, you need to install the Stainless sbt plugin. To do so, follow these steps:

1. Download the following archive: [Stainless SBT plugin download]("https://github.com/epfl-lara/stainless/releases/download/v0.9.8.2/sbt-stainless.zip")
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

## Benchmarks

To run benchmarks, run in `sbt`

```$ Jmh/run -i 10 -wi 10 -f1 -t1 <regex-if-only-some>```

## Verification

To verify using Stainless, first install Stainless following the instructions [here]("github.com/epfl-lara/stainless"). Please note that the external solvers such as z3 and cvc5 must be installed separately and accessible in the `PATH`.

Then, run `$ ./verify.sh`.


## Run Main

To run the main class, run in `sbt`

```$ runMain ch.epfl.chassot.Main```