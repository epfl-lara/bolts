(* *********************************************************************)
(*                                                                     *)
(*                 Coqlex verified lexer generator                     *)
(*                                                                     *)
(*  Copyright 2026 Siemens Mobility SAS and Institut National de       *)
(*  Recherche en Informatique et en Automatique.                       *)
(*  All rights reserved. This file is distributed under                *)
(*  the terms of the INRIA Non-Commercial License Agreement (see the   *)
(*  LICENSE file).                                                     *)
(*                                                                     *)
(* *********************************************************************)

Add LoadPath "RegExpLib" as RegExp.
Require Import LexerDefinition RValues RegExp.Definitions RegExp.Char List CoqLexUtils SubLexeme RegexpSimpl.
Require Import String.
Import ListNotations.
Local Open Scope string_scope.

(*Header*)

   
   Require Import String.
   Inductive t_type :=
    | A : t_type
    | ASTARB : t_type.
    


(*Regexp bindings*)


(*Lexer definitions*)
Fixpoint read  fuel  lexbuf {struct fuel} := match fuel with
| 0 => (AnalysisNoFuel lexbuf)
| S n =>
  (
    match LexerDefinition.generalizing_elector  LexerDefinition.longest_match_elector ([
        (RegexpSimpl.simp_cat (RegexpSimpl.simp_star (Char  "a"%char )) (Char  "b"%char ),  ret ASTARB );
        (Char  "a"%char ,  ret A )],
        []
        ) (remaining_str lexbuf) with
    | Some elt => LexerDefinition.exec_sem_action elt lexbuf
    | None => (AnalysisFailedEmptyToken lexbuf)
    end
  )
end
.


(*Trailler*)


Require Coq.extraction.Extraction ExtrOcamlBasic ExtrOcamlChar ExtrOcamlString ExtrOcamlNatInt.
Extraction Blacklist Char String List.
Extraction "Aastarb.ml" lexbuf_from_string read .