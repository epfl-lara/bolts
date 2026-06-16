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
coqc Json_lexer.v
ocamlopt -alert "-deprecated" -O3 -w -20 -w -26 -g unix.cmxa -cclib -lunix Json_lexer.mli Json_lexer.ml Lib.ml main.ml -o prog.out
rm -f Json_lexer.vo *.cmo *.cmi *.vos *.vok Json_lexer.ml Json_lexer.mli .*.aux *.o *.cmx *.glob 
