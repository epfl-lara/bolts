open List

let to_string chars =
  let buf = Buffer.create 16 in
  List.iter (Buffer.add_char buf) chars;
  Buffer.contents buf

let to_chars s =
  let rec exp i l =
    if i < 0 then l else exp (i - 1) (s.[i] :: l) in
  exp (String.length s - 1) []

let read_whole_file filename =
    let ch = open_in filename in
    let s = really_input_string ch (in_channel_length ch) in
    close_in ch;
    s

let token_to_string token =
match token with
| label, pref -> "(" ^ (to_string label) ^ ", " ^ (to_string pref) ^ ")"

let rec tokens_to_string tokens =
match tokens with
| [] -> ""
| t::[] -> (token_to_string t)
| t::ts -> (token_to_string t) ^ ",\n" ^ (tokens_to_string ts)

let print_results rs =
match rs with
| ts, rest -> (*Printf.printf "Tokens: %s\n" (tokens_to_string ts) ;*) Printf.printf "Rest: %s\n" (to_string rest)

let float_to_string f = Printf.sprintf "%.5f" f

let rec times_to_string' times =
match times with
| [] -> ""
| t::[] -> (float_to_string t)
| t::ts -> (float_to_string t) ^ "," ^ (times_to_string' ts)

let times_to_string times = Printf.sprintf "[%s]" (times_to_string' times)

let time f x =
    let t = Sys.time() in
    let fx = f x in
    Sys.time() -. t

let rec n_copies n x =
match n with
| 0 -> []
| _ -> x :: (n_copies (n-1) x)


let evaluate fname lex_fn trials rus =
  let code = to_chars (read_whole_file ("../../data-small/"^fname)) in
  let codes = n_copies trials code in
  let ts = map (time (lex_fn rus)) codes in
  let res = lex_fn rus code in
  let tokens = fst res in
  let rest = to_string (snd res) in
  let rest_len = (String.length rest) in
  (fname, List.length code, ts, rest_len, tokens)
