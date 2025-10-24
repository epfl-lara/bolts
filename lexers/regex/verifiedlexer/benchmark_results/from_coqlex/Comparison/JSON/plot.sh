#(* *********************************************************************)
#(*                                                                     *)
#(*                 Coqlex verified lexer generator                     *)
#(*                                                                     *)
#(*  Copyright 2022 Siemens Mobility SAS and Institut National de       *)
#(*  Recherche en Informatique et en Automatique.                       *)
#(*  All rights reserved. This file is distributed under                *)
#(*  the terms of the INRIA Non-Commercial License Agreement (see the   *)
#(*  LICENSE file).                                                     *)
#(*                                                                     *)
#(* *********************************************************************)
#!/bin/bash
mkdir -p results/ocamllex results/flex results/CoqLex results/VerbatimSC results/VerbatimSt results/Verbatim > /dev/null  
echo "Compiling and benchmarking ocamllex Json lexer"
cd Lexers/ocamllex; ./compile.sh > /dev/null; ./prog.out; cd ../..
echo "Compiling and benchmarking Verbatim Json lexer"
cd Lexers/Verbatim; ./compile.sh  > /dev/null; ./prog.out; cd ../..
echo "Compiling and benchmarking VerbatimSC Json lexer"
cd Lexers/VerbatimSC; ./compile.sh  > /dev/null; ./prog.out; cd ../..
echo "Compiling and benchmarking VerbatimSt Json lexer"
cd Lexers/VerbatimSt; ./compile.sh  > /dev/null; ./prog.out; cd ../..
echo "Compiling and benchmarking CoqLex Json lexer"
cd Lexers/CoqLex; ./compile.sh > /dev/null; ./prog.out; cd ../..
echo "Compiling and benchmarking flex Json lexer"
cd Lexers/flex; ./compile.sh > /dev/null; ./prog.out; cd ../..
echo "Generating comparison plot"
python3 plot.py
