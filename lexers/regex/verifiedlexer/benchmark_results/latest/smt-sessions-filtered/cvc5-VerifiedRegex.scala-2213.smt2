; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!108588 () Bool)

(assert start!108588)

(declare-fun b!1215443 () Bool)

(declare-fun b_free!29153 () Bool)

(declare-fun b_next!29857 () Bool)

(assert (=> b!1215443 (= b_free!29153 (not b_next!29857))))

(declare-fun tp!344906 () Bool)

(declare-fun b_and!82513 () Bool)

(assert (=> b!1215443 (= tp!344906 b_and!82513)))

(declare-fun b_free!29155 () Bool)

(declare-fun b_next!29859 () Bool)

(assert (=> b!1215443 (= b_free!29155 (not b_next!29859))))

(declare-fun tp!344901 () Bool)

(declare-fun b_and!82515 () Bool)

(assert (=> b!1215443 (= tp!344901 b_and!82515)))

(declare-fun b!1215438 () Bool)

(declare-fun b_free!29157 () Bool)

(declare-fun b_next!29861 () Bool)

(assert (=> b!1215438 (= b_free!29157 (not b_next!29861))))

(declare-fun tp!344903 () Bool)

(declare-fun b_and!82517 () Bool)

(assert (=> b!1215438 (= tp!344903 b_and!82517)))

(declare-fun b_free!29159 () Bool)

(declare-fun b_next!29863 () Bool)

(assert (=> b!1215438 (= b_free!29159 (not b_next!29863))))

(declare-fun tp!344900 () Bool)

(declare-fun b_and!82519 () Bool)

(assert (=> b!1215438 (= tp!344900 b_and!82519)))

(declare-datatypes ((List!12440 0))(
  ( (Nil!12382) (Cons!12382 (h!17783 (_ BitVec 16)) (t!113106 List!12440)) )
))
(declare-datatypes ((TokenValue!2198 0))(
  ( (FloatLiteralValue!4396 (text!15831 List!12440)) (TokenValueExt!2197 (__x!8111 Int)) (Broken!10990 (value!69277 List!12440)) (Object!2255) (End!2198) (Def!2198) (Underscore!2198) (Match!2198) (Else!2198) (Error!2198) (Case!2198) (If!2198) (Extends!2198) (Abstract!2198) (Class!2198) (Val!2198) (DelimiterValue!4396 (del!2258 List!12440)) (KeywordValue!2204 (value!69278 List!12440)) (CommentValue!4396 (value!69279 List!12440)) (WhitespaceValue!4396 (value!69280 List!12440)) (IndentationValue!2198 (value!69281 List!12440)) (String!15123) (Int32!2198) (Broken!10991 (value!69282 List!12440)) (Boolean!2199) (Unit!18678) (OperatorValue!2201 (op!2258 List!12440)) (IdentifierValue!4396 (value!69283 List!12440)) (IdentifierValue!4397 (value!69284 List!12440)) (WhitespaceValue!4397 (value!69285 List!12440)) (True!4396) (False!4396) (Broken!10992 (value!69286 List!12440)) (Broken!10993 (value!69287 List!12440)) (True!4397) (RightBrace!2198) (RightBracket!2198) (Colon!2198) (Null!2198) (Comma!2198) (LeftBracket!2198) (False!4397) (LeftBrace!2198) (ImaginaryLiteralValue!2198 (text!15832 List!12440)) (StringLiteralValue!6594 (value!69288 List!12440)) (EOFValue!2198 (value!69289 List!12440)) (IdentValue!2198 (value!69290 List!12440)) (DelimiterValue!4397 (value!69291 List!12440)) (DedentValue!2198 (value!69292 List!12440)) (NewLineValue!2198 (value!69293 List!12440)) (IntegerValue!6594 (value!69294 (_ BitVec 32)) (text!15833 List!12440)) (IntegerValue!6595 (value!69295 Int) (text!15834 List!12440)) (Times!2198) (Or!2198) (Equal!2198) (Minus!2198) (Broken!10994 (value!69296 List!12440)) (And!2198) (Div!2198) (LessEqual!2198) (Mod!2198) (Concat!5598) (Not!2198) (Plus!2198) (SpaceValue!2198 (value!69297 List!12440)) (IntegerValue!6596 (value!69298 Int) (text!15835 List!12440)) (StringLiteralValue!6595 (text!15836 List!12440)) (FloatLiteralValue!4397 (text!15837 List!12440)) (BytesLiteralValue!2198 (value!69299 List!12440)) (CommentValue!4397 (value!69300 List!12440)) (StringLiteralValue!6596 (value!69301 List!12440)) (ErrorTokenValue!2198 (msg!2259 List!12440)) )
))
(declare-datatypes ((C!7118 0))(
  ( (C!7119 (val!4089 Int)) )
))
(declare-datatypes ((List!12441 0))(
  ( (Nil!12383) (Cons!12383 (h!17784 C!7118) (t!113107 List!12441)) )
))
(declare-datatypes ((IArray!8119 0))(
  ( (IArray!8120 (innerList!4117 List!12441)) )
))
(declare-datatypes ((Conc!4057 0))(
  ( (Node!4057 (left!10710 Conc!4057) (right!11040 Conc!4057) (csize!8344 Int) (cheight!4268 Int)) (Leaf!6271 (xs!6768 IArray!8119) (csize!8345 Int)) (Empty!4057) )
))
(declare-datatypes ((BalanceConc!8046 0))(
  ( (BalanceConc!8047 (c!203349 Conc!4057)) )
))
(declare-datatypes ((Regex!3400 0))(
  ( (ElementMatch!3400 (c!203350 C!7118)) (Concat!5599 (regOne!7312 Regex!3400) (regTwo!7312 Regex!3400)) (EmptyExpr!3400) (Star!3400 (reg!3729 Regex!3400)) (EmptyLang!3400) (Union!3400 (regOne!7313 Regex!3400) (regTwo!7313 Regex!3400)) )
))
(declare-datatypes ((String!15124 0))(
  ( (String!15125 (value!69302 String)) )
))
(declare-datatypes ((TokenValueInjection!4092 0))(
  ( (TokenValueInjection!4093 (toValue!3259 Int) (toChars!3118 Int)) )
))
(declare-datatypes ((Rule!4060 0))(
  ( (Rule!4061 (regex!2130 Regex!3400) (tag!2392 String!15124) (isSeparator!2130 Bool) (transformation!2130 TokenValueInjection!4092)) )
))
(declare-datatypes ((Token!3922 0))(
  ( (Token!3923 (value!69303 TokenValue!2198) (rule!3555 Rule!4060) (size!9804 Int) (originalCharacters!2684 List!12441)) )
))
(declare-datatypes ((List!12442 0))(
  ( (Nil!12384) (Cons!12384 (h!17785 Token!3922) (t!113108 List!12442)) )
))
(declare-fun tokens!556 () List!12442)

(declare-fun tp!344898 () Bool)

(declare-fun e!780010 () Bool)

(declare-fun b!1215430 () Bool)

(declare-fun e!780016 () Bool)

(declare-fun inv!16574 (String!15124) Bool)

(declare-fun inv!16577 (TokenValueInjection!4092) Bool)

(assert (=> b!1215430 (= e!780010 (and tp!344898 (inv!16574 (tag!2392 (rule!3555 (h!17785 tokens!556)))) (inv!16577 (transformation!2130 (rule!3555 (h!17785 tokens!556)))) e!780016))))

(declare-fun res!546561 () Bool)

(declare-fun e!780011 () Bool)

(assert (=> start!108588 (=> (not res!546561) (not e!780011))))

(declare-datatypes ((LexerInterface!1825 0))(
  ( (LexerInterfaceExt!1822 (__x!8112 Int)) (Lexer!1823) )
))
(declare-fun thiss!20528 () LexerInterface!1825)

(assert (=> start!108588 (= res!546561 (is-Lexer!1823 thiss!20528))))

(assert (=> start!108588 e!780011))

(assert (=> start!108588 true))

(declare-fun e!780015 () Bool)

(assert (=> start!108588 e!780015))

(declare-fun e!780019 () Bool)

(assert (=> start!108588 e!780019))

(declare-fun e!780013 () Bool)

(assert (=> start!108588 e!780013))

(declare-fun b!1215431 () Bool)

(declare-fun res!546564 () Bool)

(assert (=> b!1215431 (=> (not res!546564) (not e!780011))))

(declare-datatypes ((List!12443 0))(
  ( (Nil!12385) (Cons!12385 (h!17786 Rule!4060) (t!113109 List!12443)) )
))
(declare-fun rules!2728 () List!12443)

(declare-fun isEmpty!7364 (List!12443) Bool)

(assert (=> b!1215431 (= res!546564 (not (isEmpty!7364 rules!2728)))))

(declare-fun b!1215432 () Bool)

(declare-fun tp_is_empty!6321 () Bool)

(declare-fun tp!344902 () Bool)

(assert (=> b!1215432 (= e!780019 (and tp_is_empty!6321 tp!344902))))

(declare-fun b!1215433 () Bool)

(declare-fun e!780021 () Bool)

(declare-datatypes ((tuple2!12254 0))(
  ( (tuple2!12255 (_1!6974 Token!3922) (_2!6974 List!12441)) )
))
(declare-datatypes ((Option!2492 0))(
  ( (None!2491) (Some!2491 (v!20622 tuple2!12254)) )
))
(declare-fun lt!415540 () Option!2492)

(declare-fun get!4075 (Option!2492) tuple2!12254)

(assert (=> b!1215433 (= e!780021 (not (= (_1!6974 (get!4075 lt!415540)) (h!17785 tokens!556))))))

(declare-fun b!1215434 () Bool)

(declare-fun res!546562 () Bool)

(assert (=> b!1215434 (=> (not res!546562) (not e!780011))))

(assert (=> b!1215434 (= res!546562 (not (is-Nil!12384 tokens!556)))))

(declare-fun b!1215435 () Bool)

(declare-fun tp!344905 () Bool)

(declare-fun e!780012 () Bool)

(declare-fun inv!16578 (Token!3922) Bool)

(assert (=> b!1215435 (= e!780013 (and (inv!16578 (h!17785 tokens!556)) e!780012 tp!344905))))

(declare-fun b!1215436 () Bool)

(assert (=> b!1215436 (= e!780011 e!780021)))

(declare-fun res!546560 () Bool)

(assert (=> b!1215436 (=> (not res!546560) (not e!780021))))

(declare-fun isDefined!2130 (Option!2492) Bool)

(assert (=> b!1215436 (= res!546560 (isDefined!2130 lt!415540))))

(declare-fun input!2346 () List!12441)

(declare-fun maxPrefix!947 (LexerInterface!1825 List!12443 List!12441) Option!2492)

(assert (=> b!1215436 (= lt!415540 (maxPrefix!947 thiss!20528 rules!2728 input!2346))))

(declare-fun b!1215437 () Bool)

(declare-fun e!780018 () Bool)

(declare-fun tp!344904 () Bool)

(assert (=> b!1215437 (= e!780015 (and e!780018 tp!344904))))

(assert (=> b!1215438 (= e!780016 (and tp!344903 tp!344900))))

(declare-fun b!1215439 () Bool)

(declare-fun res!546565 () Bool)

(assert (=> b!1215439 (=> (not res!546565) (not e!780011))))

(declare-datatypes ((tuple2!12256 0))(
  ( (tuple2!12257 (_1!6975 List!12442) (_2!6975 List!12441)) )
))
(declare-fun lexList!455 (LexerInterface!1825 List!12443 List!12441) tuple2!12256)

(assert (=> b!1215439 (= res!546565 (= (_1!6975 (lexList!455 thiss!20528 rules!2728 input!2346)) tokens!556))))

(declare-fun e!780009 () Bool)

(declare-fun b!1215440 () Bool)

(declare-fun tp!344899 () Bool)

(assert (=> b!1215440 (= e!780018 (and tp!344899 (inv!16574 (tag!2392 (h!17786 rules!2728))) (inv!16577 (transformation!2130 (h!17786 rules!2728))) e!780009))))

(declare-fun tp!344907 () Bool)

(declare-fun b!1215441 () Bool)

(declare-fun inv!21 (TokenValue!2198) Bool)

(assert (=> b!1215441 (= e!780012 (and (inv!21 (value!69303 (h!17785 tokens!556))) e!780010 tp!344907))))

(declare-fun b!1215442 () Bool)

(declare-fun res!546563 () Bool)

(assert (=> b!1215442 (=> (not res!546563) (not e!780011))))

(declare-fun rulesInvariant!1699 (LexerInterface!1825 List!12443) Bool)

(assert (=> b!1215442 (= res!546563 (rulesInvariant!1699 thiss!20528 rules!2728))))

(assert (=> b!1215443 (= e!780009 (and tp!344906 tp!344901))))

(assert (= (and start!108588 res!546561) b!1215431))

(assert (= (and b!1215431 res!546564) b!1215442))

(assert (= (and b!1215442 res!546563) b!1215439))

(assert (= (and b!1215439 res!546565) b!1215434))

(assert (= (and b!1215434 res!546562) b!1215436))

(assert (= (and b!1215436 res!546560) b!1215433))

(assert (= b!1215440 b!1215443))

(assert (= b!1215437 b!1215440))

(assert (= (and start!108588 (is-Cons!12385 rules!2728)) b!1215437))

(assert (= (and start!108588 (is-Cons!12383 input!2346)) b!1215432))

(assert (= b!1215430 b!1215438))

(assert (= b!1215441 b!1215430))

(assert (= b!1215435 b!1215441))

(assert (= (and start!108588 (is-Cons!12384 tokens!556)) b!1215435))

(declare-fun m!1390067 () Bool)

(assert (=> b!1215440 m!1390067))

(declare-fun m!1390069 () Bool)

(assert (=> b!1215440 m!1390069))

(declare-fun m!1390071 () Bool)

(assert (=> b!1215431 m!1390071))

(declare-fun m!1390073 () Bool)

(assert (=> b!1215433 m!1390073))

(declare-fun m!1390075 () Bool)

(assert (=> b!1215430 m!1390075))

(declare-fun m!1390077 () Bool)

(assert (=> b!1215430 m!1390077))

(declare-fun m!1390079 () Bool)

(assert (=> b!1215439 m!1390079))

(declare-fun m!1390081 () Bool)

(assert (=> b!1215436 m!1390081))

(declare-fun m!1390083 () Bool)

(assert (=> b!1215436 m!1390083))

(declare-fun m!1390085 () Bool)

(assert (=> b!1215442 m!1390085))

(declare-fun m!1390087 () Bool)

(assert (=> b!1215435 m!1390087))

(declare-fun m!1390089 () Bool)

(assert (=> b!1215441 m!1390089))

(push 1)

(assert b_and!82515)

(assert (not b!1215441))

(assert b_and!82519)

(assert (not b!1215440))

(assert (not b!1215433))

(assert (not b_next!29861))

(assert (not b!1215442))

(assert b_and!82517)

(assert (not b!1215436))

(assert (not b!1215439))

(assert (not b!1215437))

(assert (not b_next!29857))

(assert b_and!82513)

(assert (not b_next!29859))

(assert (not b!1215435))

(assert (not b!1215431))

(assert (not b!1215432))

(assert (not b!1215430))

(assert (not b_next!29863))

(assert tp_is_empty!6321)

(check-sat)

(pop 1)

(push 1)

(assert b_and!82515)

(assert b_and!82519)

(assert (not b_next!29859))

(assert (not b_next!29861))

(assert b_and!82517)

(assert (not b_next!29857))

(assert (not b_next!29863))

(assert b_and!82513)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!347280 () Bool)

(assert (=> d!347280 (= (inv!16574 (tag!2392 (rule!3555 (h!17785 tokens!556)))) (= (mod (str.len (value!69302 (tag!2392 (rule!3555 (h!17785 tokens!556))))) 2) 0))))

(assert (=> b!1215430 d!347280))

(declare-fun d!347282 () Bool)

(declare-fun res!546590 () Bool)

(declare-fun e!780063 () Bool)

(assert (=> d!347282 (=> (not res!546590) (not e!780063))))

(declare-fun semiInverseModEq!773 (Int Int) Bool)

(assert (=> d!347282 (= res!546590 (semiInverseModEq!773 (toChars!3118 (transformation!2130 (rule!3555 (h!17785 tokens!556)))) (toValue!3259 (transformation!2130 (rule!3555 (h!17785 tokens!556))))))))

(assert (=> d!347282 (= (inv!16577 (transformation!2130 (rule!3555 (h!17785 tokens!556)))) e!780063)))

(declare-fun b!1215488 () Bool)

(declare-fun equivClasses!740 (Int Int) Bool)

(assert (=> b!1215488 (= e!780063 (equivClasses!740 (toChars!3118 (transformation!2130 (rule!3555 (h!17785 tokens!556)))) (toValue!3259 (transformation!2130 (rule!3555 (h!17785 tokens!556))))))))

(assert (= (and d!347282 res!546590) b!1215488))

(declare-fun m!1390115 () Bool)

(assert (=> d!347282 m!1390115))

(declare-fun m!1390117 () Bool)

(assert (=> b!1215488 m!1390117))

(assert (=> b!1215430 d!347282))

(declare-fun b!1215503 () Bool)

(declare-fun e!780073 () Bool)

(declare-fun inv!15 (TokenValue!2198) Bool)

(assert (=> b!1215503 (= e!780073 (inv!15 (value!69303 (h!17785 tokens!556))))))

(declare-fun b!1215504 () Bool)

(declare-fun e!780074 () Bool)

(declare-fun inv!17 (TokenValue!2198) Bool)

(assert (=> b!1215504 (= e!780074 (inv!17 (value!69303 (h!17785 tokens!556))))))

(declare-fun b!1215505 () Bool)

(declare-fun e!780075 () Bool)

(assert (=> b!1215505 (= e!780075 e!780074)))

(declare-fun c!203359 () Bool)

(assert (=> b!1215505 (= c!203359 (is-IntegerValue!6595 (value!69303 (h!17785 tokens!556))))))

(declare-fun b!1215506 () Bool)

(declare-fun res!546596 () Bool)

(assert (=> b!1215506 (=> res!546596 e!780073)))

(assert (=> b!1215506 (= res!546596 (not (is-IntegerValue!6596 (value!69303 (h!17785 tokens!556)))))))

(assert (=> b!1215506 (= e!780074 e!780073)))

(declare-fun d!347288 () Bool)

(declare-fun c!203358 () Bool)

(assert (=> d!347288 (= c!203358 (is-IntegerValue!6594 (value!69303 (h!17785 tokens!556))))))

(assert (=> d!347288 (= (inv!21 (value!69303 (h!17785 tokens!556))) e!780075)))

(declare-fun b!1215502 () Bool)

(declare-fun inv!16 (TokenValue!2198) Bool)

(assert (=> b!1215502 (= e!780075 (inv!16 (value!69303 (h!17785 tokens!556))))))

(assert (= (and d!347288 c!203358) b!1215502))

(assert (= (and d!347288 (not c!203358)) b!1215505))

(assert (= (and b!1215505 c!203359) b!1215504))

(assert (= (and b!1215505 (not c!203359)) b!1215506))

(assert (= (and b!1215506 (not res!546596)) b!1215503))

(declare-fun m!1390125 () Bool)

(assert (=> b!1215503 m!1390125))

(declare-fun m!1390127 () Bool)

(assert (=> b!1215504 m!1390127))

(declare-fun m!1390129 () Bool)

(assert (=> b!1215502 m!1390129))

(assert (=> b!1215441 d!347288))

(declare-fun d!347294 () Bool)

(declare-fun isEmpty!7366 (Option!2492) Bool)

(assert (=> d!347294 (= (isDefined!2130 lt!415540) (not (isEmpty!7366 lt!415540)))))

(declare-fun bs!288794 () Bool)

(assert (= bs!288794 d!347294))

(declare-fun m!1390131 () Bool)

(assert (=> bs!288794 m!1390131))

(assert (=> b!1215436 d!347294))

(declare-fun b!1215543 () Bool)

(declare-fun res!546631 () Bool)

(declare-fun e!780088 () Bool)

(assert (=> b!1215543 (=> (not res!546631) (not e!780088))))

(declare-fun lt!415565 () Option!2492)

(declare-fun ++!3170 (List!12441 List!12441) List!12441)

(declare-fun list!4570 (BalanceConc!8046) List!12441)

(declare-fun charsOf!1136 (Token!3922) BalanceConc!8046)

(assert (=> b!1215543 (= res!546631 (= (++!3170 (list!4570 (charsOf!1136 (_1!6974 (get!4075 lt!415565)))) (_2!6974 (get!4075 lt!415565))) input!2346))))

(declare-fun b!1215544 () Bool)

(declare-fun e!780089 () Option!2492)

(declare-fun call!84554 () Option!2492)

(assert (=> b!1215544 (= e!780089 call!84554)))

(declare-fun b!1215545 () Bool)

(declare-fun res!546626 () Bool)

(assert (=> b!1215545 (=> (not res!546626) (not e!780088))))

(declare-fun apply!2646 (TokenValueInjection!4092 BalanceConc!8046) TokenValue!2198)

(declare-fun seqFromList!1549 (List!12441) BalanceConc!8046)

(assert (=> b!1215545 (= res!546626 (= (value!69303 (_1!6974 (get!4075 lt!415565))) (apply!2646 (transformation!2130 (rule!3555 (_1!6974 (get!4075 lt!415565)))) (seqFromList!1549 (originalCharacters!2684 (_1!6974 (get!4075 lt!415565)))))))))

(declare-fun b!1215546 () Bool)

(declare-fun res!546625 () Bool)

(assert (=> b!1215546 (=> (not res!546625) (not e!780088))))

(declare-fun size!9806 (List!12441) Int)

(assert (=> b!1215546 (= res!546625 (< (size!9806 (_2!6974 (get!4075 lt!415565))) (size!9806 input!2346)))))

(declare-fun b!1215547 () Bool)

(declare-fun contains!2077 (List!12443 Rule!4060) Bool)

(assert (=> b!1215547 (= e!780088 (contains!2077 rules!2728 (rule!3555 (_1!6974 (get!4075 lt!415565)))))))

(declare-fun d!347296 () Bool)

(declare-fun e!780090 () Bool)

(assert (=> d!347296 e!780090))

(declare-fun res!546628 () Bool)

(assert (=> d!347296 (=> res!546628 e!780090)))

(assert (=> d!347296 (= res!546628 (isEmpty!7366 lt!415565))))

(assert (=> d!347296 (= lt!415565 e!780089)))

(declare-fun c!203364 () Bool)

(assert (=> d!347296 (= c!203364 (and (is-Cons!12385 rules!2728) (is-Nil!12385 (t!113109 rules!2728))))))

(declare-datatypes ((Unit!18680 0))(
  ( (Unit!18681) )
))
(declare-fun lt!415567 () Unit!18680)

(declare-fun lt!415564 () Unit!18680)

(assert (=> d!347296 (= lt!415567 lt!415564)))

(declare-fun isPrefix!1028 (List!12441 List!12441) Bool)

(assert (=> d!347296 (isPrefix!1028 input!2346 input!2346)))

(declare-fun lemmaIsPrefixRefl!721 (List!12441 List!12441) Unit!18680)

(assert (=> d!347296 (= lt!415564 (lemmaIsPrefixRefl!721 input!2346 input!2346))))

(declare-fun rulesValidInductive!664 (LexerInterface!1825 List!12443) Bool)

(assert (=> d!347296 (rulesValidInductive!664 thiss!20528 rules!2728)))

(assert (=> d!347296 (= (maxPrefix!947 thiss!20528 rules!2728 input!2346) lt!415565)))

(declare-fun b!1215548 () Bool)

(declare-fun res!546630 () Bool)

(assert (=> b!1215548 (=> (not res!546630) (not e!780088))))

(declare-fun matchR!1522 (Regex!3400 List!12441) Bool)

(assert (=> b!1215548 (= res!546630 (matchR!1522 (regex!2130 (rule!3555 (_1!6974 (get!4075 lt!415565)))) (list!4570 (charsOf!1136 (_1!6974 (get!4075 lt!415565))))))))

(declare-fun b!1215549 () Bool)

(assert (=> b!1215549 (= e!780090 e!780088)))

(declare-fun res!546629 () Bool)

(assert (=> b!1215549 (=> (not res!546629) (not e!780088))))

(assert (=> b!1215549 (= res!546629 (isDefined!2130 lt!415565))))

(declare-fun bm!84549 () Bool)

(declare-fun maxPrefixOneRule!547 (LexerInterface!1825 Rule!4060 List!12441) Option!2492)

(assert (=> bm!84549 (= call!84554 (maxPrefixOneRule!547 thiss!20528 (h!17786 rules!2728) input!2346))))

(declare-fun b!1215550 () Bool)

(declare-fun res!546627 () Bool)

(assert (=> b!1215550 (=> (not res!546627) (not e!780088))))

(assert (=> b!1215550 (= res!546627 (= (list!4570 (charsOf!1136 (_1!6974 (get!4075 lt!415565)))) (originalCharacters!2684 (_1!6974 (get!4075 lt!415565)))))))

(declare-fun b!1215551 () Bool)

(declare-fun lt!415566 () Option!2492)

(declare-fun lt!415568 () Option!2492)

(assert (=> b!1215551 (= e!780089 (ite (and (is-None!2491 lt!415566) (is-None!2491 lt!415568)) None!2491 (ite (is-None!2491 lt!415568) lt!415566 (ite (is-None!2491 lt!415566) lt!415568 (ite (>= (size!9804 (_1!6974 (v!20622 lt!415566))) (size!9804 (_1!6974 (v!20622 lt!415568)))) lt!415566 lt!415568)))))))

(assert (=> b!1215551 (= lt!415566 call!84554)))

(assert (=> b!1215551 (= lt!415568 (maxPrefix!947 thiss!20528 (t!113109 rules!2728) input!2346))))

(assert (= (and d!347296 c!203364) b!1215544))

(assert (= (and d!347296 (not c!203364)) b!1215551))

(assert (= (or b!1215544 b!1215551) bm!84549))

(assert (= (and d!347296 (not res!546628)) b!1215549))

(assert (= (and b!1215549 res!546629) b!1215550))

(assert (= (and b!1215550 res!546627) b!1215546))

(assert (= (and b!1215546 res!546625) b!1215543))

(assert (= (and b!1215543 res!546631) b!1215545))

(assert (= (and b!1215545 res!546626) b!1215548))

(assert (= (and b!1215548 res!546630) b!1215547))

(declare-fun m!1390133 () Bool)

(assert (=> b!1215548 m!1390133))

(declare-fun m!1390135 () Bool)

(assert (=> b!1215548 m!1390135))

(assert (=> b!1215548 m!1390135))

(declare-fun m!1390137 () Bool)

(assert (=> b!1215548 m!1390137))

(assert (=> b!1215548 m!1390137))

(declare-fun m!1390139 () Bool)

(assert (=> b!1215548 m!1390139))

(assert (=> b!1215546 m!1390133))

(declare-fun m!1390141 () Bool)

(assert (=> b!1215546 m!1390141))

(declare-fun m!1390143 () Bool)

(assert (=> b!1215546 m!1390143))

(declare-fun m!1390145 () Bool)

(assert (=> b!1215551 m!1390145))

(assert (=> b!1215543 m!1390133))

(assert (=> b!1215543 m!1390135))

(assert (=> b!1215543 m!1390135))

(assert (=> b!1215543 m!1390137))

(assert (=> b!1215543 m!1390137))

(declare-fun m!1390147 () Bool)

(assert (=> b!1215543 m!1390147))

(assert (=> b!1215547 m!1390133))

(declare-fun m!1390149 () Bool)

(assert (=> b!1215547 m!1390149))

(assert (=> b!1215550 m!1390133))

(assert (=> b!1215550 m!1390135))

(assert (=> b!1215550 m!1390135))

(assert (=> b!1215550 m!1390137))

(declare-fun m!1390151 () Bool)

(assert (=> bm!84549 m!1390151))

(declare-fun m!1390153 () Bool)

(assert (=> d!347296 m!1390153))

(declare-fun m!1390155 () Bool)

(assert (=> d!347296 m!1390155))

(declare-fun m!1390157 () Bool)

(assert (=> d!347296 m!1390157))

(declare-fun m!1390159 () Bool)

(assert (=> d!347296 m!1390159))

(declare-fun m!1390161 () Bool)

(assert (=> b!1215549 m!1390161))

(assert (=> b!1215545 m!1390133))

(declare-fun m!1390163 () Bool)

(assert (=> b!1215545 m!1390163))

(assert (=> b!1215545 m!1390163))

(declare-fun m!1390165 () Bool)

(assert (=> b!1215545 m!1390165))

(assert (=> b!1215436 d!347296))

(declare-fun d!347298 () Bool)

(assert (=> d!347298 (= (isEmpty!7364 rules!2728) (is-Nil!12385 rules!2728))))

(assert (=> b!1215431 d!347298))

(declare-fun d!347300 () Bool)

(declare-fun res!546634 () Bool)

(declare-fun e!780093 () Bool)

(assert (=> d!347300 (=> (not res!546634) (not e!780093))))

(declare-fun rulesValid!761 (LexerInterface!1825 List!12443) Bool)

(assert (=> d!347300 (= res!546634 (rulesValid!761 thiss!20528 rules!2728))))

(assert (=> d!347300 (= (rulesInvariant!1699 thiss!20528 rules!2728) e!780093)))

(declare-fun b!1215554 () Bool)

(declare-datatypes ((List!12448 0))(
  ( (Nil!12390) (Cons!12390 (h!17791 String!15124) (t!113126 List!12448)) )
))
(declare-fun noDuplicateTag!761 (LexerInterface!1825 List!12443 List!12448) Bool)

(assert (=> b!1215554 (= e!780093 (noDuplicateTag!761 thiss!20528 rules!2728 Nil!12390))))

(assert (= (and d!347300 res!546634) b!1215554))

(declare-fun m!1390167 () Bool)

(assert (=> d!347300 m!1390167))

(declare-fun m!1390169 () Bool)

(assert (=> b!1215554 m!1390169))

(assert (=> b!1215442 d!347300))

(declare-fun d!347302 () Bool)

(assert (=> d!347302 (= (get!4075 lt!415540) (v!20622 lt!415540))))

(assert (=> b!1215433 d!347302))

(declare-fun b!1215585 () Bool)

(declare-fun e!780111 () tuple2!12256)

(assert (=> b!1215585 (= e!780111 (tuple2!12257 Nil!12384 input!2346))))

(declare-fun b!1215586 () Bool)

(declare-fun e!780110 () Bool)

(declare-fun e!780109 () Bool)

(assert (=> b!1215586 (= e!780110 e!780109)))

(declare-fun res!546650 () Bool)

(declare-fun lt!415582 () tuple2!12256)

(assert (=> b!1215586 (= res!546650 (< (size!9806 (_2!6975 lt!415582)) (size!9806 input!2346)))))

(assert (=> b!1215586 (=> (not res!546650) (not e!780109))))

(declare-fun d!347304 () Bool)

(assert (=> d!347304 e!780110))

(declare-fun c!203370 () Bool)

(declare-fun size!9807 (List!12442) Int)

(assert (=> d!347304 (= c!203370 (> (size!9807 (_1!6975 lt!415582)) 0))))

(assert (=> d!347304 (= lt!415582 e!780111)))

(declare-fun c!203371 () Bool)

(declare-fun lt!415580 () Option!2492)

(assert (=> d!347304 (= c!203371 (is-Some!2491 lt!415580))))

(assert (=> d!347304 (= lt!415580 (maxPrefix!947 thiss!20528 rules!2728 input!2346))))

(assert (=> d!347304 (= (lexList!455 thiss!20528 rules!2728 input!2346) lt!415582)))

(declare-fun b!1215587 () Bool)

(assert (=> b!1215587 (= e!780110 (= (_2!6975 lt!415582) input!2346))))

(declare-fun b!1215588 () Bool)

(declare-fun lt!415581 () tuple2!12256)

(assert (=> b!1215588 (= e!780111 (tuple2!12257 (Cons!12384 (_1!6974 (v!20622 lt!415580)) (_1!6975 lt!415581)) (_2!6975 lt!415581)))))

(assert (=> b!1215588 (= lt!415581 (lexList!455 thiss!20528 rules!2728 (_2!6974 (v!20622 lt!415580))))))

(declare-fun b!1215589 () Bool)

(declare-fun isEmpty!7367 (List!12442) Bool)

(assert (=> b!1215589 (= e!780109 (not (isEmpty!7367 (_1!6975 lt!415582))))))

(assert (= (and d!347304 c!203371) b!1215588))

(assert (= (and d!347304 (not c!203371)) b!1215585))

(assert (= (and d!347304 c!203370) b!1215586))

(assert (= (and d!347304 (not c!203370)) b!1215587))

(assert (= (and b!1215586 res!546650) b!1215589))

(declare-fun m!1390217 () Bool)

(assert (=> b!1215586 m!1390217))

(assert (=> b!1215586 m!1390143))

(declare-fun m!1390219 () Bool)

(assert (=> d!347304 m!1390219))

(assert (=> d!347304 m!1390083))

(declare-fun m!1390221 () Bool)

(assert (=> b!1215588 m!1390221))

(declare-fun m!1390223 () Bool)

(assert (=> b!1215589 m!1390223))

(assert (=> b!1215439 d!347304))

(declare-fun d!347312 () Bool)

(assert (=> d!347312 (= (inv!16574 (tag!2392 (h!17786 rules!2728))) (= (mod (str.len (value!69302 (tag!2392 (h!17786 rules!2728)))) 2) 0))))

(assert (=> b!1215440 d!347312))

(declare-fun d!347314 () Bool)

(declare-fun res!546651 () Bool)

(declare-fun e!780112 () Bool)

(assert (=> d!347314 (=> (not res!546651) (not e!780112))))

(assert (=> d!347314 (= res!546651 (semiInverseModEq!773 (toChars!3118 (transformation!2130 (h!17786 rules!2728))) (toValue!3259 (transformation!2130 (h!17786 rules!2728)))))))

(assert (=> d!347314 (= (inv!16577 (transformation!2130 (h!17786 rules!2728))) e!780112)))

(declare-fun b!1215590 () Bool)

(assert (=> b!1215590 (= e!780112 (equivClasses!740 (toChars!3118 (transformation!2130 (h!17786 rules!2728))) (toValue!3259 (transformation!2130 (h!17786 rules!2728)))))))

(assert (= (and d!347314 res!546651) b!1215590))

(declare-fun m!1390225 () Bool)

(assert (=> d!347314 m!1390225))

(declare-fun m!1390227 () Bool)

(assert (=> b!1215590 m!1390227))

(assert (=> b!1215440 d!347314))

(declare-fun d!347318 () Bool)

(declare-fun res!546656 () Bool)

(declare-fun e!780115 () Bool)

(assert (=> d!347318 (=> (not res!546656) (not e!780115))))

(declare-fun isEmpty!7368 (List!12441) Bool)

(assert (=> d!347318 (= res!546656 (not (isEmpty!7368 (originalCharacters!2684 (h!17785 tokens!556)))))))

(assert (=> d!347318 (= (inv!16578 (h!17785 tokens!556)) e!780115)))

(declare-fun b!1215595 () Bool)

(declare-fun res!546657 () Bool)

(assert (=> b!1215595 (=> (not res!546657) (not e!780115))))

(declare-fun dynLambda!5417 (Int TokenValue!2198) BalanceConc!8046)

(assert (=> b!1215595 (= res!546657 (= (originalCharacters!2684 (h!17785 tokens!556)) (list!4570 (dynLambda!5417 (toChars!3118 (transformation!2130 (rule!3555 (h!17785 tokens!556)))) (value!69303 (h!17785 tokens!556))))))))

(declare-fun b!1215596 () Bool)

(assert (=> b!1215596 (= e!780115 (= (size!9804 (h!17785 tokens!556)) (size!9806 (originalCharacters!2684 (h!17785 tokens!556)))))))

(assert (= (and d!347318 res!546656) b!1215595))

(assert (= (and b!1215595 res!546657) b!1215596))

(declare-fun b_lambda!35841 () Bool)

(assert (=> (not b_lambda!35841) (not b!1215595)))

(declare-fun tb!66757 () Bool)

(declare-fun t!113119 () Bool)

(assert (=> (and b!1215443 (= (toChars!3118 (transformation!2130 (h!17786 rules!2728))) (toChars!3118 (transformation!2130 (rule!3555 (h!17785 tokens!556))))) t!113119) tb!66757))

(declare-fun b!1215601 () Bool)

(declare-fun e!780118 () Bool)

(declare-fun tp!344943 () Bool)

(declare-fun inv!16581 (Conc!4057) Bool)

(assert (=> b!1215601 (= e!780118 (and (inv!16581 (c!203349 (dynLambda!5417 (toChars!3118 (transformation!2130 (rule!3555 (h!17785 tokens!556)))) (value!69303 (h!17785 tokens!556))))) tp!344943))))

(declare-fun result!80758 () Bool)

(declare-fun inv!16582 (BalanceConc!8046) Bool)

(assert (=> tb!66757 (= result!80758 (and (inv!16582 (dynLambda!5417 (toChars!3118 (transformation!2130 (rule!3555 (h!17785 tokens!556)))) (value!69303 (h!17785 tokens!556)))) e!780118))))

(assert (= tb!66757 b!1215601))

(declare-fun m!1390229 () Bool)

(assert (=> b!1215601 m!1390229))

(declare-fun m!1390231 () Bool)

(assert (=> tb!66757 m!1390231))

(assert (=> b!1215595 t!113119))

(declare-fun b_and!82533 () Bool)

(assert (= b_and!82515 (and (=> t!113119 result!80758) b_and!82533)))

(declare-fun t!113121 () Bool)

(declare-fun tb!66759 () Bool)

(assert (=> (and b!1215438 (= (toChars!3118 (transformation!2130 (rule!3555 (h!17785 tokens!556)))) (toChars!3118 (transformation!2130 (rule!3555 (h!17785 tokens!556))))) t!113121) tb!66759))

(declare-fun result!80762 () Bool)

(assert (= result!80762 result!80758))

(assert (=> b!1215595 t!113121))

(declare-fun b_and!82535 () Bool)

(assert (= b_and!82519 (and (=> t!113121 result!80762) b_and!82535)))

(declare-fun m!1390233 () Bool)

(assert (=> d!347318 m!1390233))

(declare-fun m!1390235 () Bool)

(assert (=> b!1215595 m!1390235))

(assert (=> b!1215595 m!1390235))

(declare-fun m!1390237 () Bool)

(assert (=> b!1215595 m!1390237))

(declare-fun m!1390239 () Bool)

(assert (=> b!1215596 m!1390239))

(assert (=> b!1215435 d!347318))

(declare-fun e!780121 () Bool)

(assert (=> b!1215430 (= tp!344898 e!780121)))

(declare-fun b!1215613 () Bool)

(declare-fun tp!344956 () Bool)

(declare-fun tp!344957 () Bool)

(assert (=> b!1215613 (= e!780121 (and tp!344956 tp!344957))))

(declare-fun b!1215612 () Bool)

(assert (=> b!1215612 (= e!780121 tp_is_empty!6321)))

(declare-fun b!1215615 () Bool)

(declare-fun tp!344958 () Bool)

(declare-fun tp!344954 () Bool)

(assert (=> b!1215615 (= e!780121 (and tp!344958 tp!344954))))

(declare-fun b!1215614 () Bool)

(declare-fun tp!344955 () Bool)

(assert (=> b!1215614 (= e!780121 tp!344955)))

(assert (= (and b!1215430 (is-ElementMatch!3400 (regex!2130 (rule!3555 (h!17785 tokens!556))))) b!1215612))

(assert (= (and b!1215430 (is-Concat!5599 (regex!2130 (rule!3555 (h!17785 tokens!556))))) b!1215613))

(assert (= (and b!1215430 (is-Star!3400 (regex!2130 (rule!3555 (h!17785 tokens!556))))) b!1215614))

(assert (= (and b!1215430 (is-Union!3400 (regex!2130 (rule!3555 (h!17785 tokens!556))))) b!1215615))

(declare-fun b!1215620 () Bool)

(declare-fun e!780124 () Bool)

(declare-fun tp!344961 () Bool)

(assert (=> b!1215620 (= e!780124 (and tp_is_empty!6321 tp!344961))))

(assert (=> b!1215441 (= tp!344907 e!780124)))

(assert (= (and b!1215441 (is-Cons!12383 (originalCharacters!2684 (h!17785 tokens!556)))) b!1215620))

(declare-fun b!1215631 () Bool)

(declare-fun b_free!29169 () Bool)

(declare-fun b_next!29873 () Bool)

(assert (=> b!1215631 (= b_free!29169 (not b_next!29873))))

(declare-fun tp!344972 () Bool)

(declare-fun b_and!82537 () Bool)

(assert (=> b!1215631 (= tp!344972 b_and!82537)))

(declare-fun b_free!29171 () Bool)

(declare-fun b_next!29875 () Bool)

(assert (=> b!1215631 (= b_free!29171 (not b_next!29875))))

(declare-fun tb!66761 () Bool)

(declare-fun t!113123 () Bool)

(assert (=> (and b!1215631 (= (toChars!3118 (transformation!2130 (h!17786 (t!113109 rules!2728)))) (toChars!3118 (transformation!2130 (rule!3555 (h!17785 tokens!556))))) t!113123) tb!66761))

(declare-fun result!80770 () Bool)

(assert (= result!80770 result!80758))

(assert (=> b!1215595 t!113123))

(declare-fun tp!344970 () Bool)

(declare-fun b_and!82539 () Bool)

(assert (=> b!1215631 (= tp!344970 (and (=> t!113123 result!80770) b_and!82539))))

(declare-fun e!780133 () Bool)

(assert (=> b!1215631 (= e!780133 (and tp!344972 tp!344970))))

(declare-fun e!780136 () Bool)

(declare-fun b!1215630 () Bool)

(declare-fun tp!344973 () Bool)

(assert (=> b!1215630 (= e!780136 (and tp!344973 (inv!16574 (tag!2392 (h!17786 (t!113109 rules!2728)))) (inv!16577 (transformation!2130 (h!17786 (t!113109 rules!2728)))) e!780133))))

(declare-fun b!1215629 () Bool)

(declare-fun e!780135 () Bool)

(declare-fun tp!344971 () Bool)

(assert (=> b!1215629 (= e!780135 (and e!780136 tp!344971))))

(assert (=> b!1215437 (= tp!344904 e!780135)))

(assert (= b!1215630 b!1215631))

(assert (= b!1215629 b!1215630))

(assert (= (and b!1215437 (is-Cons!12385 (t!113109 rules!2728))) b!1215629))

(declare-fun m!1390241 () Bool)

(assert (=> b!1215630 m!1390241))

(declare-fun m!1390243 () Bool)

(assert (=> b!1215630 m!1390243))

(declare-fun b!1215632 () Bool)

(declare-fun e!780137 () Bool)

(declare-fun tp!344974 () Bool)

(assert (=> b!1215632 (= e!780137 (and tp_is_empty!6321 tp!344974))))

(assert (=> b!1215432 (= tp!344902 e!780137)))

(assert (= (and b!1215432 (is-Cons!12383 (t!113107 input!2346))) b!1215632))

(declare-fun e!780138 () Bool)

(assert (=> b!1215440 (= tp!344899 e!780138)))

(declare-fun b!1215634 () Bool)

(declare-fun tp!344977 () Bool)

(declare-fun tp!344978 () Bool)

(assert (=> b!1215634 (= e!780138 (and tp!344977 tp!344978))))

(declare-fun b!1215633 () Bool)

(assert (=> b!1215633 (= e!780138 tp_is_empty!6321)))

(declare-fun b!1215636 () Bool)

(declare-fun tp!344979 () Bool)

(declare-fun tp!344975 () Bool)

(assert (=> b!1215636 (= e!780138 (and tp!344979 tp!344975))))

(declare-fun b!1215635 () Bool)

(declare-fun tp!344976 () Bool)

(assert (=> b!1215635 (= e!780138 tp!344976)))

(assert (= (and b!1215440 (is-ElementMatch!3400 (regex!2130 (h!17786 rules!2728)))) b!1215633))

(assert (= (and b!1215440 (is-Concat!5599 (regex!2130 (h!17786 rules!2728)))) b!1215634))

(assert (= (and b!1215440 (is-Star!3400 (regex!2130 (h!17786 rules!2728)))) b!1215635))

(assert (= (and b!1215440 (is-Union!3400 (regex!2130 (h!17786 rules!2728)))) b!1215636))

(declare-fun b!1215650 () Bool)

(declare-fun b_free!29173 () Bool)

(declare-fun b_next!29877 () Bool)

(assert (=> b!1215650 (= b_free!29173 (not b_next!29877))))

(declare-fun tp!344993 () Bool)

(declare-fun b_and!82541 () Bool)

(assert (=> b!1215650 (= tp!344993 b_and!82541)))

(declare-fun b_free!29175 () Bool)

(declare-fun b_next!29879 () Bool)

(assert (=> b!1215650 (= b_free!29175 (not b_next!29879))))

(declare-fun t!113125 () Bool)

(declare-fun tb!66763 () Bool)

(assert (=> (and b!1215650 (= (toChars!3118 (transformation!2130 (rule!3555 (h!17785 (t!113108 tokens!556))))) (toChars!3118 (transformation!2130 (rule!3555 (h!17785 tokens!556))))) t!113125) tb!66763))

(declare-fun result!80774 () Bool)

(assert (= result!80774 result!80758))

(assert (=> b!1215595 t!113125))

(declare-fun tp!344992 () Bool)

(declare-fun b_and!82543 () Bool)

(assert (=> b!1215650 (= tp!344992 (and (=> t!113125 result!80774) b_and!82543))))

(declare-fun e!780152 () Bool)

(assert (=> b!1215650 (= e!780152 (and tp!344993 tp!344992))))

(declare-fun e!780153 () Bool)

(assert (=> b!1215435 (= tp!344905 e!780153)))

(declare-fun e!780151 () Bool)

(declare-fun tp!344994 () Bool)

(declare-fun e!780156 () Bool)

(declare-fun b!1215648 () Bool)

(assert (=> b!1215648 (= e!780151 (and (inv!21 (value!69303 (h!17785 (t!113108 tokens!556)))) e!780156 tp!344994))))

(declare-fun b!1215647 () Bool)

(declare-fun tp!344990 () Bool)

(assert (=> b!1215647 (= e!780153 (and (inv!16578 (h!17785 (t!113108 tokens!556))) e!780151 tp!344990))))

(declare-fun b!1215649 () Bool)

(declare-fun tp!344991 () Bool)

(assert (=> b!1215649 (= e!780156 (and tp!344991 (inv!16574 (tag!2392 (rule!3555 (h!17785 (t!113108 tokens!556))))) (inv!16577 (transformation!2130 (rule!3555 (h!17785 (t!113108 tokens!556))))) e!780152))))

(assert (= b!1215649 b!1215650))

(assert (= b!1215648 b!1215649))

(assert (= b!1215647 b!1215648))

(assert (= (and b!1215435 (is-Cons!12384 (t!113108 tokens!556))) b!1215647))

(declare-fun m!1390245 () Bool)

(assert (=> b!1215648 m!1390245))

(declare-fun m!1390247 () Bool)

(assert (=> b!1215647 m!1390247))

(declare-fun m!1390249 () Bool)

(assert (=> b!1215649 m!1390249))

(declare-fun m!1390251 () Bool)

(assert (=> b!1215649 m!1390251))

(declare-fun b_lambda!35843 () Bool)

(assert (= b_lambda!35841 (or (and b!1215443 b_free!29155 (= (toChars!3118 (transformation!2130 (h!17786 rules!2728))) (toChars!3118 (transformation!2130 (rule!3555 (h!17785 tokens!556)))))) (and b!1215438 b_free!29159) (and b!1215631 b_free!29171 (= (toChars!3118 (transformation!2130 (h!17786 (t!113109 rules!2728)))) (toChars!3118 (transformation!2130 (rule!3555 (h!17785 tokens!556)))))) (and b!1215650 b_free!29175 (= (toChars!3118 (transformation!2130 (rule!3555 (h!17785 (t!113108 tokens!556))))) (toChars!3118 (transformation!2130 (rule!3555 (h!17785 tokens!556)))))) b_lambda!35843)))

(push 1)

(assert (not b!1215549))

(assert (not b!1215620))

(assert (not d!347296))

(assert b_and!82541)

(assert (not b!1215504))

(assert (not bm!84549))

(assert (not b!1215601))

(assert (not b!1215648))

(assert (not b!1215503))

(assert b_and!82543)

(assert b_and!82513)

(assert (not d!347282))

(assert (not b!1215595))

(assert (not b!1215615))

(assert (not d!347294))

(assert (not b_next!29859))

(assert (not b!1215550))

(assert (not b!1215649))

(assert (not b_lambda!35843))

(assert (not b!1215589))

(assert (not d!347318))

(assert (not b_next!29877))

(assert (not b!1215596))

(assert (not tb!66757))

(assert b_and!82533)

(assert (not d!347300))

(assert (not b!1215551))

(assert (not b_next!29861))

(assert (not b!1215545))

(assert (not d!347304))

(assert (not b!1215554))

(assert (not b!1215635))

(assert b_and!82517)

(assert (not b!1215647))

(assert (not b!1215548))

(assert (not b!1215588))

(assert (not b!1215502))

(assert (not b!1215547))

(assert (not d!347314))

(assert (not b!1215634))

(assert (not b!1215636))

(assert (not b!1215613))

(assert (not b!1215546))

(assert (not b!1215488))

(assert b_and!82537)

(assert (not b_next!29873))

(assert (not b!1215586))

(assert (not b!1215614))

(assert (not b_next!29857))

(assert (not b!1215629))

(assert b_and!82535)

(assert b_and!82539)

(assert (not b_next!29863))

(assert (not b_next!29879))

(assert (not b!1215630))

(assert tp_is_empty!6321)

(assert (not b_next!29875))

(assert (not b!1215543))

(assert (not b!1215632))

(assert (not b!1215590))

(check-sat)

(pop 1)

(push 1)

(assert b_and!82541)

(assert (not b_next!29859))

(assert (not b_next!29861))

(assert b_and!82517)

(assert b_and!82537)

(assert (not b_next!29873))

(assert (not b_next!29857))

(assert b_and!82543)

(assert (not b_next!29875))

(assert b_and!82513)

(assert (not b_next!29877))

(assert b_and!82533)

(assert b_and!82535)

(assert b_and!82539)

(assert (not b_next!29863))

(assert (not b_next!29879))

(check-sat)

(pop 1)

