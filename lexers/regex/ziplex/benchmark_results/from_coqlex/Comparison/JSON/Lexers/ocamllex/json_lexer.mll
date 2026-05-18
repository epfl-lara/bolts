{
    open Buffer
    
    type t_type = 
        | INT of int 
        | FLOAT of float 
        | STRING of string
        | TRUE 
        | FALSE 
        | NULL 
        | COLON 
        | COMMA
        | LEFT_BRACE 
        | RIGHT_BRACE 
        | LEFT_BRACK 
        | RIGHT_BRACK 
        | WS ;;
}


(** Verbatim JSON definition **)
let ws_carr_re = ['\t' '\n' '\r' ' ']+
let exp_part_re = ['e' 'E'] ['-' '+']? ['0'-'9']+
let int_re = '-'? ('0' | (['1'-'9'] ['0'-'9']*))
let dec_re = int_re ('.' ['0'-'9']+)?
let float_re = dec_re exp_part_re?
let punc_re = ['!' '#' '$' '%' '&' '(' ')' '*' '+' ',' '-' '.' '/' ':' ';' '<' '=' '>' '?' '@' '[' ']' '^' '_' '`' '{' '|' '}' '~' '\'']
let unicode_digit_re = ['0'-'9' 'a'-'f' 'A'-'F']
let four_unicode_digits_re = unicode_digit_re unicode_digit_re unicode_digit_re unicode_digit_re
let unicode_codepoint_re = '\\' 'u' four_unicode_digits_re
let json_char_re = unicode_codepoint_re | ['A' - 'Z'] | ['a' - 'z'] | ['0'-'9'] | ['\t' '\n' ' '] | punc_re | ('\\' '"') | ('\\' '\\')
let json_string_re = '"' json_char_re * '"'
(** End of Verbatim JSON definition **)

rule read =
  parse
  | ws_carr_re    {  WS }
  | int_re      { INT (int_of_string(Lexing.lexeme lexbuf)) }
  | float_re    { FLOAT (float_of_string(Lexing.lexeme lexbuf)) }
  | "true"   { TRUE }
  | "false"  { FALSE }
  | "null"   { NULL }
  | json_string_re { STRING(Lexing.lexeme lexbuf) }
  | '{'      { LEFT_BRACE }
  | '}'      { RIGHT_BRACE }
  | '['      { LEFT_BRACK }
  | ']'      { RIGHT_BRACK }
  | ':'      { COLON }
  | ','      { COMMA }
(*  | _ { failwith ("Unexpected char: " ^ (Lexing.lexeme lexbuf)) }
  | eof      { EOF }*)
