open Instance
open SemLexer.Impl
open Common

let sem_tokens_len_str tokens =
match tokens with
| None -> "None"
| Some ts -> "Some " ^ (string_of_int (List.length ts))

let rec print_evaluation results =
match results with
| fname, code_len, ts, rest_len, tokens ->
  let oc = open_out ("../../results/VerbatimSt/"^fname) in
  let sem_tokens_len = sem_tokens_len_str tokens in
  let ts' = times_to_string ts in
  Printf.fprintf oc "{\n\"fname\":\"%s\",\n \"input_len\":%d,\n \"times\":%s,\n \"rest_len\":%d,\n \"sem_tokens_len\":\"%s\"\n}" fname code_len ts' rest_len sem_tokens_len;
  (* Printf.fprintf oc "{\n\"fname\":\"%s\",\n \"input_len\":%d,\n \"times\":%s,\n \"rest_len\":%d\n}" fname code_len ts' rest_len; *)
  close_out oc


(* Time DFA construction *)
(*let srus = map init_srule rus
let lex_pre orig = lex'__M orig (init_Memos srus) srus
let lex_pre = lex' srus
let () = Printf.printf "%.5f\n" (time (map init_srule) rus)*)


let xs = Array.to_list (Sys.readdir "../../data-small")
let ps = map (fun x -> (print_evaluation (evaluate x lex_sem 1 rus))) xs
