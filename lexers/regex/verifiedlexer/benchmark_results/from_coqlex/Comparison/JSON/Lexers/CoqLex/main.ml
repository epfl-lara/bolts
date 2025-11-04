open Format
open Lexing
open Json_lexer
open Lib

let print_token fmt = function
| INT i -> Format.fprintf fmt "(INT %d)" i
| FLOAT i -> Format.fprintf fmt "(INT %f)" i
| STRING s -> Format.fprintf fmt "(STR %s)" (string_of_char_list s)
| TRUE -> Format.fprintf fmt "(TRUE)"
| FALSE -> Format.fprintf fmt "(FALSE)"
| NULL -> Format.fprintf fmt "(NULL)"
| COLON -> Format.fprintf fmt "(COLON)"
| COMMA -> Format.fprintf fmt "(COMMA)"
| LEFT_BRACE -> Format.fprintf fmt "(LEFT_BRACE)"
| RIGHT_BRACE -> Format.fprintf fmt "(RIGHT_BRACE)"
| LEFT_BRACK -> Format.fprintf fmt "(LEFT_BRACK)"
| RIGHT_BRACK -> Format.fprintf fmt "(RIGHT_BRACK)"
| WS -> Format.fprintf fmt "(WS)"

let in_channel_to_string in_channel = 
	let rec in_channel_to_string_rec in_channel acc = 
		(
		  match Stdlib.input_line in_channel with
		    | exception End_of_file -> List.rev acc
		    | str -> in_channel_to_string_rec in_channel (str::acc)
		) in
	String.concat "\n" (in_channel_to_string_rec in_channel [])

let filepath_to_string path = let in_channel = Stdlib.open_in path in in_channel_to_string in_channel

let float_to_string f = Printf.sprintf "%.5f" f

let rec times_to_string' times =
match times with
| [] -> ""
| t::[] -> (float_to_string t)
| t::ts -> (float_to_string t) ^ "," ^ (times_to_string' ts)

let times_to_string times = Printf.sprintf "[%s]" (times_to_string' times)

let evaluate fname =
  let code = filepath_to_string ("../../data-small/"^fname) in
  let lexbuf = lexbuf_from_string (char_list_of_string code) in
  let rec loop list_of_tokens_acc lexbuf =
    (
        match read_coqlexer_wf lexbuf with
        | exception e -> (list_of_tokens_acc, lexbuf.remaining_str)
        | (tok, lb) -> if lb.remaining_str = [] then ((tok::list_of_tokens_acc), lb.remaining_str) else loop (tok::list_of_tokens_acc) lb
    ) in
  let t = Sys.time() in
  let (tokens, remaining_str) = loop [] lexbuf in
  let ts = Sys.time() -. t in
  let rest_len = List.length remaining_str in
  (fname, String.length code, [ts], rest_len, tokens)

let rec print_evaluation results =
    match results with
    | fname, code_len, ts, rest_len, tokens ->
      let oc = open_out ("../../results/CoqLex/"^fname) in
      let sem_tokens_len = List.length tokens in
      let ts' = times_to_string ts in
      Printf.fprintf oc "{\n\"fname\":\"%s\",\n \"input_len\":%d,\n \"times\":%s,\n \"rest_len\":%d,\n \"sem_tokens_len\":\"%s\"\n}" fname code_len ts' rest_len (if rest_len > 0 then "None" else Format.sprintf "Some %d" sem_tokens_len)


let xs = Array.to_list (Sys.readdir "../../data-small")
let ps = List.map (fun x -> (print_evaluation (evaluate x))) xs

