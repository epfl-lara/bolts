
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
flex -o --fast json_lexer.c json_lexer.l 
gcc -O3 global.h json_lexer.c -o prog.out
rm -f json_lexer.c
