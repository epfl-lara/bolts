
#(* *********************************************************************)
#(*                                                                     *)
#(*                 Coqlex verified lexer generator                     *)
#(*                                                                     *)
#(*  Copyright 2021 Siemens Mobility SAS and Institut National de       *)
#(*  Recherche en Informatique et en Automatique.                       *)
#(*  All rights reserved. This file is distributed under                *)
#(*  the terms of the INRIA Non-Commercial License Agreement (see the   *)
#(*  LICENSE file).                                                     *)
#(*                                                                     *)
#(* *********************************************************************)
#!/bin/bash
ocamllex json_lexer.mll
ocamlopt -O3 -w -20 -w -26 -g json_lexer.ml main.ml -o prog.out
rm -f *.cmx *.o *.cmi *.*.aux json_lexer.ml
