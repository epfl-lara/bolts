#(* *********************************************************************)
#(*                                                                     *)
#(*                 Coqlex verified lexer generator                     *)
#(*                                                                     *)
#(*  Copyright 2026 Siemens Mobility SAS and Institut National de       *)
#(*  Recherche en Informatique et en Automatique.                       *)
#(*  All rights reserved. This file is distributed under                *)
#(*  the terms of the INRIA Non-Commercial License Agreement (see the   *)
#(*  LICENSE file).                                                     *)
#(*                                                                     *)
#(* *********************************************************************)
#!/bin/bash
mkdir -p results/CoqLex > /dev/null  
echo "Compiling and benchmarking CoqLex AAStarB lexer"
cd Lexers/CoqLex; ./compile.sh > /dev/null; ./prog.out; cd ../..
echo "Generating comparison plot"
python3 plot.py
