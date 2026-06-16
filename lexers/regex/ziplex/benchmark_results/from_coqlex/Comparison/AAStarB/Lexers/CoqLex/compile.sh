#!/bin/bash
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
coqc Aastarb.v
ocamlopt -alert "-deprecated" -O3 -w -20 -w -26 -g unix.cmxa -cclib -lunix Aastarb.mli Aastarb.ml Lib.ml main.ml -o prog.out
rm -f Aastarb.vo *.cmo *.cmi *.vos *.vok Aastarb.ml Aastarb.mli .*.aux *.o *.cmx *.glob
 
