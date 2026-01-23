; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126782 () Bool)

(assert start!126782)

(declare-fun b!1393483 () Bool)

(declare-fun b_free!33859 () Bool)

(declare-fun b_next!34563 () Bool)

(assert (=> b!1393483 (= b_free!33859 (not b_next!34563))))

(declare-fun tp!397547 () Bool)

(declare-fun b_and!93299 () Bool)

(assert (=> b!1393483 (= tp!397547 b_and!93299)))

(declare-fun b_free!33861 () Bool)

(declare-fun b_next!34565 () Bool)

(assert (=> b!1393483 (= b_free!33861 (not b_next!34565))))

(declare-fun tp!397544 () Bool)

(declare-fun b_and!93301 () Bool)

(assert (=> b!1393483 (= tp!397544 b_and!93301)))

(declare-fun b!1393484 () Bool)

(declare-fun b_free!33863 () Bool)

(declare-fun b_next!34567 () Bool)

(assert (=> b!1393484 (= b_free!33863 (not b_next!34567))))

(declare-fun tp!397548 () Bool)

(declare-fun b_and!93303 () Bool)

(assert (=> b!1393484 (= tp!397548 b_and!93303)))

(declare-fun b_free!33865 () Bool)

(declare-fun b_next!34569 () Bool)

(assert (=> b!1393484 (= b_free!33865 (not b_next!34569))))

(declare-fun tp!397543 () Bool)

(declare-fun b_and!93305 () Bool)

(assert (=> b!1393484 (= tp!397543 b_and!93305)))

(declare-fun b!1393461 () Bool)

(declare-fun b_free!33867 () Bool)

(declare-fun b_next!34571 () Bool)

(assert (=> b!1393461 (= b_free!33867 (not b_next!34571))))

(declare-fun tp!397541 () Bool)

(declare-fun b_and!93307 () Bool)

(assert (=> b!1393461 (= tp!397541 b_and!93307)))

(declare-fun b_free!33869 () Bool)

(declare-fun b_next!34573 () Bool)

(assert (=> b!1393461 (= b_free!33869 (not b_next!34573))))

(declare-fun tp!397552 () Bool)

(declare-fun b_and!93309 () Bool)

(assert (=> b!1393461 (= tp!397552 b_and!93309)))

(declare-fun b!1393450 () Bool)

(assert (=> b!1393450 true))

(assert (=> b!1393450 true))

(declare-fun b!1393466 () Bool)

(assert (=> b!1393466 true))

(declare-fun b!1393489 () Bool)

(assert (=> b!1393489 true))

(declare-fun bs!337726 () Bool)

(declare-fun b!1393456 () Bool)

(assert (= bs!337726 (and b!1393456 b!1393489)))

(declare-fun lambda!60385 () Int)

(declare-fun lambda!60384 () Int)

(assert (=> bs!337726 (not (= lambda!60385 lambda!60384))))

(assert (=> b!1393456 true))

(declare-fun b!1393443 () Bool)

(declare-fun e!889882 () Bool)

(declare-fun e!889889 () Bool)

(assert (=> b!1393443 (= e!889882 e!889889)))

(declare-fun res!629161 () Bool)

(assert (=> b!1393443 (=> res!629161 e!889889)))

(declare-datatypes ((LexerInterface!2142 0))(
  ( (LexerInterfaceExt!2139 (__x!8903 Int)) (Lexer!2140) )
))
(declare-fun thiss!19762 () LexerInterface!2142)

(declare-datatypes ((List!14196 0))(
  ( (Nil!14130) (Cons!14130 (h!19531 (_ BitVec 16)) (t!122577 List!14196)) )
))
(declare-datatypes ((TokenValue!2537 0))(
  ( (FloatLiteralValue!5074 (text!18204 List!14196)) (TokenValueExt!2536 (__x!8904 Int)) (Broken!12685 (value!79346 List!14196)) (Object!2602) (End!2537) (Def!2537) (Underscore!2537) (Match!2537) (Else!2537) (Error!2537) (Case!2537) (If!2537) (Extends!2537) (Abstract!2537) (Class!2537) (Val!2537) (DelimiterValue!5074 (del!2597 List!14196)) (KeywordValue!2543 (value!79347 List!14196)) (CommentValue!5074 (value!79348 List!14196)) (WhitespaceValue!5074 (value!79349 List!14196)) (IndentationValue!2537 (value!79350 List!14196)) (String!16920) (Int32!2537) (Broken!12686 (value!79351 List!14196)) (Boolean!2538) (Unit!20408) (OperatorValue!2540 (op!2597 List!14196)) (IdentifierValue!5074 (value!79352 List!14196)) (IdentifierValue!5075 (value!79353 List!14196)) (WhitespaceValue!5075 (value!79354 List!14196)) (True!5074) (False!5074) (Broken!12687 (value!79355 List!14196)) (Broken!12688 (value!79356 List!14196)) (True!5075) (RightBrace!2537) (RightBracket!2537) (Colon!2537) (Null!2537) (Comma!2537) (LeftBracket!2537) (False!5075) (LeftBrace!2537) (ImaginaryLiteralValue!2537 (text!18205 List!14196)) (StringLiteralValue!7611 (value!79357 List!14196)) (EOFValue!2537 (value!79358 List!14196)) (IdentValue!2537 (value!79359 List!14196)) (DelimiterValue!5075 (value!79360 List!14196)) (DedentValue!2537 (value!79361 List!14196)) (NewLineValue!2537 (value!79362 List!14196)) (IntegerValue!7611 (value!79363 (_ BitVec 32)) (text!18206 List!14196)) (IntegerValue!7612 (value!79364 Int) (text!18207 List!14196)) (Times!2537) (Or!2537) (Equal!2537) (Minus!2537) (Broken!12689 (value!79365 List!14196)) (And!2537) (Div!2537) (LessEqual!2537) (Mod!2537) (Concat!6298) (Not!2537) (Plus!2537) (SpaceValue!2537 (value!79366 List!14196)) (IntegerValue!7613 (value!79367 Int) (text!18208 List!14196)) (StringLiteralValue!7612 (text!18209 List!14196)) (FloatLiteralValue!5075 (text!18210 List!14196)) (BytesLiteralValue!2537 (value!79368 List!14196)) (CommentValue!5075 (value!79369 List!14196)) (StringLiteralValue!7613 (value!79370 List!14196)) (ErrorTokenValue!2537 (msg!2598 List!14196)) )
))
(declare-datatypes ((C!7812 0))(
  ( (C!7813 (val!4466 Int)) )
))
(declare-datatypes ((List!14197 0))(
  ( (Nil!14131) (Cons!14131 (h!19532 C!7812) (t!122578 List!14197)) )
))
(declare-datatypes ((IArray!9313 0))(
  ( (IArray!9314 (innerList!4714 List!14197)) )
))
(declare-datatypes ((Conc!4654 0))(
  ( (Node!4654 (left!12071 Conc!4654) (right!12401 Conc!4654) (csize!9538 Int) (cheight!4865 Int)) (Leaf!7074 (xs!7381 IArray!9313) (csize!9539 Int)) (Empty!4654) )
))
(declare-datatypes ((BalanceConc!9248 0))(
  ( (BalanceConc!9249 (c!229436 Conc!4654)) )
))
(declare-datatypes ((Regex!3761 0))(
  ( (ElementMatch!3761 (c!229437 C!7812)) (Concat!6299 (regOne!8034 Regex!3761) (regTwo!8034 Regex!3761)) (EmptyExpr!3761) (Star!3761 (reg!4090 Regex!3761)) (EmptyLang!3761) (Union!3761 (regOne!8035 Regex!3761) (regTwo!8035 Regex!3761)) )
))
(declare-datatypes ((String!16921 0))(
  ( (String!16922 (value!79371 String)) )
))
(declare-datatypes ((TokenValueInjection!4734 0))(
  ( (TokenValueInjection!4735 (toValue!3738 Int) (toChars!3597 Int)) )
))
(declare-datatypes ((Rule!4694 0))(
  ( (Rule!4695 (regex!2447 Regex!3761) (tag!2709 String!16921) (isSeparator!2447 Bool) (transformation!2447 TokenValueInjection!4734)) )
))
(declare-datatypes ((List!14198 0))(
  ( (Nil!14132) (Cons!14132 (h!19533 Rule!4694) (t!122579 List!14198)) )
))
(declare-fun rules!2550 () List!14198)

(declare-fun lt!463933 () List!14197)

(declare-datatypes ((Token!4556 0))(
  ( (Token!4557 (value!79372 TokenValue!2537) (rule!4210 Rule!4694) (size!11617 Int) (originalCharacters!3309 List!14197)) )
))
(declare-fun t2!34 () Token!4556)

(declare-datatypes ((tuple2!13742 0))(
  ( (tuple2!13743 (_1!7757 Token!4556) (_2!7757 List!14197)) )
))
(declare-datatypes ((Option!2710 0))(
  ( (None!2709) (Some!2709 (v!21605 tuple2!13742)) )
))
(declare-fun maxPrefix!1116 (LexerInterface!2142 List!14198 List!14197) Option!2710)

(assert (=> b!1393443 (= res!629161 (not (= (maxPrefix!1116 thiss!19762 rules!2550 lt!463933) (Some!2709 (tuple2!13743 t2!34 Nil!14131)))))))

(declare-fun lt!463942 () BalanceConc!9248)

(declare-fun list!5493 (BalanceConc!9248) List!14197)

(assert (=> b!1393443 (= lt!463933 (list!5493 lt!463942))))

(declare-fun b!1393444 () Bool)

(declare-datatypes ((Unit!20409 0))(
  ( (Unit!20410) )
))
(declare-fun e!889872 () Unit!20409)

(declare-fun Unit!20411 () Unit!20409)

(assert (=> b!1393444 (= e!889872 Unit!20411)))

(declare-fun b!1393445 () Bool)

(declare-fun res!629181 () Bool)

(assert (=> b!1393445 (=> res!629181 e!889882)))

(declare-fun lt!463940 () BalanceConc!9248)

(declare-datatypes ((List!14199 0))(
  ( (Nil!14133) (Cons!14133 (h!19534 Token!4556) (t!122580 List!14199)) )
))
(declare-fun lt!463943 () List!14199)

(declare-datatypes ((tuple2!13744 0))(
  ( (tuple2!13745 (_1!7758 List!14199) (_2!7758 List!14197)) )
))
(declare-fun lexList!656 (LexerInterface!2142 List!14198 List!14197) tuple2!13744)

(assert (=> b!1393445 (= res!629181 (not (= (lexList!656 thiss!19762 rules!2550 (list!5493 lt!463940)) (tuple2!13745 lt!463943 Nil!14131))))))

(declare-fun b!1393446 () Bool)

(declare-fun e!889877 () Unit!20409)

(declare-fun Unit!20412 () Unit!20409)

(assert (=> b!1393446 (= e!889877 Unit!20412)))

(declare-fun b!1393447 () Bool)

(declare-fun res!629170 () Bool)

(assert (=> b!1393447 (=> res!629170 e!889889)))

(declare-fun contains!2723 (List!14198 Rule!4694) Bool)

(assert (=> b!1393447 (= res!629170 (not (contains!2723 rules!2550 (rule!4210 t2!34))))))

(declare-fun b!1393448 () Bool)

(declare-fun e!889879 () Bool)

(declare-fun e!889885 () Bool)

(assert (=> b!1393448 (= e!889879 e!889885)))

(declare-fun res!629175 () Bool)

(assert (=> b!1393448 (=> (not res!629175) (not e!889885))))

(declare-fun lt!463944 () Regex!3761)

(declare-fun lt!463919 () List!14197)

(declare-fun prefixMatch!270 (Regex!3761 List!14197) Bool)

(assert (=> b!1393448 (= res!629175 (prefixMatch!270 lt!463944 lt!463919))))

(declare-fun rulesRegex!330 (LexerInterface!2142 List!14198) Regex!3761)

(assert (=> b!1393448 (= lt!463944 (rulesRegex!330 thiss!19762 rules!2550))))

(declare-fun lt!463936 () List!14197)

(declare-fun lt!463923 () C!7812)

(declare-fun ++!3674 (List!14197 List!14197) List!14197)

(assert (=> b!1393448 (= lt!463919 (++!3674 lt!463936 (Cons!14131 lt!463923 Nil!14131)))))

(declare-fun apply!3567 (BalanceConc!9248 Int) C!7812)

(assert (=> b!1393448 (= lt!463923 (apply!3567 lt!463942 0))))

(declare-fun lt!463935 () BalanceConc!9248)

(assert (=> b!1393448 (= lt!463936 (list!5493 lt!463935))))

(declare-fun t1!34 () Token!4556)

(declare-fun charsOf!1419 (Token!4556) BalanceConc!9248)

(assert (=> b!1393448 (= lt!463935 (charsOf!1419 t1!34))))

(declare-fun b!1393449 () Bool)

(declare-fun res!629167 () Bool)

(declare-fun e!889886 () Bool)

(assert (=> b!1393449 (=> res!629167 e!889886)))

(declare-fun lt!463927 () List!14197)

(declare-fun contains!2724 (List!14197 C!7812) Bool)

(assert (=> b!1393449 (= res!629167 (not (contains!2724 lt!463927 lt!463923)))))

(declare-fun e!889870 () Bool)

(assert (=> b!1393450 (= e!889885 (not e!889870))))

(declare-fun res!629165 () Bool)

(assert (=> b!1393450 (=> res!629165 e!889870)))

(declare-fun lambda!60381 () Int)

(declare-fun Exists!911 (Int) Bool)

(assert (=> b!1393450 (= res!629165 (not (Exists!911 lambda!60381)))))

(assert (=> b!1393450 (Exists!911 lambda!60381)))

(declare-fun lt!463920 () Unit!20409)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!229 (Regex!3761 List!14197) Unit!20409)

(assert (=> b!1393450 (= lt!463920 (lemmaPrefixMatchThenExistsStringThatMatches!229 lt!463944 lt!463919))))

(declare-fun b!1393451 () Bool)

(declare-fun e!889863 () Bool)

(assert (=> b!1393451 (= e!889863 e!889879)))

(declare-fun res!629183 () Bool)

(assert (=> b!1393451 (=> (not res!629183) (not e!889879))))

(declare-fun size!11618 (BalanceConc!9248) Int)

(assert (=> b!1393451 (= res!629183 (> (size!11618 lt!463942) 0))))

(assert (=> b!1393451 (= lt!463942 (charsOf!1419 t2!34))))

(declare-fun b!1393452 () Bool)

(declare-fun Unit!20413 () Unit!20409)

(assert (=> b!1393452 (= e!889877 Unit!20413)))

(declare-fun lt!463931 () Unit!20409)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!192 (Regex!3761 List!14197 C!7812) Unit!20409)

(declare-fun head!2553 (List!14197) C!7812)

(assert (=> b!1393452 (= lt!463931 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!192 (regex!2447 (rule!4210 t1!34)) lt!463936 (head!2553 lt!463936)))))

(assert (=> b!1393452 false))

(declare-fun b!1393453 () Bool)

(declare-fun res!629163 () Bool)

(assert (=> b!1393453 (=> (not res!629163) (not e!889863))))

(assert (=> b!1393453 (= res!629163 (not (= (isSeparator!2447 (rule!4210 t1!34)) (isSeparator!2447 (rule!4210 t2!34)))))))

(declare-fun b!1393454 () Bool)

(declare-fun res!629182 () Bool)

(declare-fun e!889881 () Bool)

(assert (=> b!1393454 (=> res!629182 e!889881)))

(declare-fun lt!463932 () List!14199)

(declare-fun lt!463934 () BalanceConc!9248)

(assert (=> b!1393454 (= res!629182 (not (= (lexList!656 thiss!19762 rules!2550 (list!5493 lt!463934)) (tuple2!13745 lt!463932 Nil!14131))))))

(declare-fun e!889892 () Bool)

(declare-fun e!889876 () Bool)

(declare-fun tp!397545 () Bool)

(declare-fun b!1393455 () Bool)

(declare-fun inv!18464 (String!16921) Bool)

(declare-fun inv!18467 (TokenValueInjection!4734) Bool)

(assert (=> b!1393455 (= e!889892 (and tp!397545 (inv!18464 (tag!2709 (h!19533 rules!2550))) (inv!18467 (transformation!2447 (h!19533 rules!2550))) e!889876))))

(declare-fun e!889890 () Bool)

(assert (=> b!1393456 (= e!889889 e!889890)))

(declare-fun res!629157 () Bool)

(assert (=> b!1393456 (=> res!629157 e!889890)))

(declare-fun matchR!1752 (Regex!3761 List!14197) Bool)

(assert (=> b!1393456 (= res!629157 (not (matchR!1752 (regex!2447 (rule!4210 t1!34)) lt!463936)))))

(declare-fun lt!463915 () Unit!20409)

(declare-fun forallContained!642 (List!14198 Int Rule!4694) Unit!20409)

(assert (=> b!1393456 (= lt!463915 (forallContained!642 rules!2550 lambda!60385 (rule!4210 t2!34)))))

(declare-fun lt!463918 () Unit!20409)

(assert (=> b!1393456 (= lt!463918 (forallContained!642 rules!2550 lambda!60385 (rule!4210 t1!34)))))

(declare-fun lt!463922 () Unit!20409)

(declare-fun lt!463928 () Rule!4694)

(assert (=> b!1393456 (= lt!463922 (forallContained!642 rules!2550 lambda!60385 lt!463928))))

(declare-fun b!1393457 () Bool)

(declare-fun res!629188 () Bool)

(assert (=> b!1393457 (=> res!629188 e!889889)))

(assert (=> b!1393457 (= res!629188 (not (contains!2723 rules!2550 lt!463928)))))

(declare-fun b!1393458 () Bool)

(declare-fun res!629169 () Bool)

(assert (=> b!1393458 (=> (not res!629169) (not e!889879))))

(declare-fun separableTokensPredicate!425 (LexerInterface!2142 Token!4556 Token!4556 List!14198) Bool)

(assert (=> b!1393458 (= res!629169 (not (separableTokensPredicate!425 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1393459 () Bool)

(declare-fun e!889888 () Bool)

(assert (=> b!1393459 (= e!889888 e!889881)))

(declare-fun res!629172 () Bool)

(assert (=> b!1393459 (=> res!629172 e!889881)))

(declare-datatypes ((IArray!9315 0))(
  ( (IArray!9316 (innerList!4715 List!14199)) )
))
(declare-datatypes ((Conc!4655 0))(
  ( (Node!4655 (left!12072 Conc!4655) (right!12402 Conc!4655) (csize!9540 Int) (cheight!4866 Int)) (Leaf!7075 (xs!7382 IArray!9315) (csize!9541 Int)) (Empty!4655) )
))
(declare-datatypes ((BalanceConc!9250 0))(
  ( (BalanceConc!9251 (c!229438 Conc!4655)) )
))
(declare-datatypes ((tuple2!13746 0))(
  ( (tuple2!13747 (_1!7759 BalanceConc!9250) (_2!7759 BalanceConc!9248)) )
))
(declare-fun lt!463924 () tuple2!13746)

(declare-fun list!5494 (BalanceConc!9250) List!14199)

(assert (=> b!1393459 (= res!629172 (not (= (list!5494 (_1!7759 lt!463924)) lt!463932)))))

(assert (=> b!1393459 (= lt!463932 (Cons!14133 t1!34 Nil!14133))))

(declare-fun lex!967 (LexerInterface!2142 List!14198 BalanceConc!9248) tuple2!13746)

(assert (=> b!1393459 (= lt!463924 (lex!967 thiss!19762 rules!2550 lt!463934))))

(declare-fun print!906 (LexerInterface!2142 BalanceConc!9250) BalanceConc!9248)

(declare-fun singletonSeq!1098 (Token!4556) BalanceConc!9250)

(assert (=> b!1393459 (= lt!463934 (print!906 thiss!19762 (singletonSeq!1098 t1!34)))))

(declare-fun getWitness!426 (List!14198 Int) Rule!4694)

(assert (=> b!1393459 (= lt!463928 (getWitness!426 rules!2550 lambda!60384))))

(declare-fun res!629158 () Bool)

(assert (=> start!126782 (=> (not res!629158) (not e!889863))))

(get-info :version)

(assert (=> start!126782 (= res!629158 ((_ is Lexer!2140) thiss!19762))))

(assert (=> start!126782 e!889863))

(assert (=> start!126782 true))

(declare-fun e!889874 () Bool)

(assert (=> start!126782 e!889874))

(declare-fun e!889867 () Bool)

(declare-fun inv!18468 (Token!4556) Bool)

(assert (=> start!126782 (and (inv!18468 t1!34) e!889867)))

(declare-fun e!889864 () Bool)

(assert (=> start!126782 (and (inv!18468 t2!34) e!889864)))

(declare-fun b!1393460 () Bool)

(assert (=> b!1393460 (= e!889881 e!889882)))

(declare-fun res!629178 () Bool)

(assert (=> b!1393460 (=> res!629178 e!889882)))

(declare-fun lt!463926 () tuple2!13746)

(assert (=> b!1393460 (= res!629178 (not (= (list!5494 (_1!7759 lt!463926)) lt!463943)))))

(assert (=> b!1393460 (= lt!463943 (Cons!14133 t2!34 Nil!14133))))

(assert (=> b!1393460 (= lt!463926 (lex!967 thiss!19762 rules!2550 lt!463940))))

(assert (=> b!1393460 (= lt!463940 (print!906 thiss!19762 (singletonSeq!1098 t2!34)))))

(assert (=> b!1393461 (= e!889876 (and tp!397541 tp!397552))))

(declare-fun e!889869 () Bool)

(declare-fun e!889865 () Bool)

(declare-fun b!1393462 () Bool)

(declare-fun tp!397549 () Bool)

(assert (=> b!1393462 (= e!889869 (and tp!397549 (inv!18464 (tag!2709 (rule!4210 t2!34))) (inv!18467 (transformation!2447 (rule!4210 t2!34))) e!889865))))

(declare-fun b!1393463 () Bool)

(declare-fun e!889873 () Bool)

(declare-fun tp!397550 () Bool)

(declare-fun inv!21 (TokenValue!2537) Bool)

(assert (=> b!1393463 (= e!889867 (and (inv!21 (value!79372 t1!34)) e!889873 tp!397550))))

(declare-fun b!1393464 () Bool)

(declare-fun e!889875 () Bool)

(declare-fun e!889891 () Bool)

(assert (=> b!1393464 (= e!889875 e!889891)))

(declare-fun res!629160 () Bool)

(assert (=> b!1393464 (=> res!629160 e!889891)))

(declare-fun lambda!60382 () Int)

(declare-fun lt!463925 () Regex!3761)

(declare-datatypes ((List!14200 0))(
  ( (Nil!14134) (Cons!14134 (h!19535 Regex!3761) (t!122581 List!14200)) )
))
(declare-fun contains!2725 (List!14200 Regex!3761) Bool)

(declare-fun map!3131 (List!14198 Int) List!14200)

(assert (=> b!1393464 (= res!629160 (not (contains!2725 (map!3131 rules!2550 lambda!60382) lt!463925)))))

(declare-fun lambda!60383 () Int)

(declare-fun getWitness!427 (List!14200 Int) Regex!3761)

(assert (=> b!1393464 (= lt!463925 (getWitness!427 (map!3131 rules!2550 lambda!60382) lambda!60383))))

(declare-fun b!1393465 () Bool)

(declare-fun res!629174 () Bool)

(assert (=> b!1393465 (=> res!629174 e!889881)))

(assert (=> b!1393465 (= res!629174 (not (= (maxPrefix!1116 thiss!19762 rules!2550 lt!463936) (Some!2709 (tuple2!13743 t1!34 Nil!14131)))))))

(assert (=> b!1393466 (= e!889886 e!889875)))

(declare-fun res!629177 () Bool)

(assert (=> b!1393466 (=> res!629177 e!889875)))

(declare-fun exists!538 (List!14200 Int) Bool)

(assert (=> b!1393466 (= res!629177 (not (exists!538 (map!3131 rules!2550 lambda!60382) lambda!60383)))))

(declare-fun lt!463929 () List!14200)

(assert (=> b!1393466 (exists!538 lt!463929 lambda!60383)))

(declare-fun lt!463921 () Unit!20409)

(declare-fun matchRGenUnionSpec!172 (Regex!3761 List!14200 List!14197) Unit!20409)

(assert (=> b!1393466 (= lt!463921 (matchRGenUnionSpec!172 lt!463944 lt!463929 lt!463927))))

(assert (=> b!1393466 (= lt!463929 (map!3131 rules!2550 lambda!60382))))

(declare-fun b!1393467 () Bool)

(declare-fun e!889880 () Bool)

(assert (=> b!1393467 (= e!889880 e!889886)))

(declare-fun res!629162 () Bool)

(assert (=> b!1393467 (=> res!629162 e!889886)))

(declare-fun lt!463930 () C!7812)

(assert (=> b!1393467 (= res!629162 (not (contains!2724 lt!463919 lt!463930)))))

(assert (=> b!1393467 (= lt!463930 (apply!3567 lt!463935 0))))

(declare-fun b!1393468 () Bool)

(declare-fun e!889883 () Bool)

(declare-fun lt!463938 () Bool)

(assert (=> b!1393468 (= e!889883 (or lt!463938 (= (regex!2447 lt!463928) lt!463925)))))

(declare-fun lt!463941 () Unit!20409)

(assert (=> b!1393468 (= lt!463941 e!889872)))

(declare-fun c!229435 () Bool)

(assert (=> b!1393468 (= c!229435 lt!463938)))

(declare-fun usedCharacters!258 (Regex!3761) List!14197)

(assert (=> b!1393468 (= lt!463938 (not (contains!2724 (usedCharacters!258 (regex!2447 (rule!4210 t2!34))) lt!463923)))))

(declare-fun tp!397542 () Bool)

(declare-fun b!1393469 () Bool)

(declare-fun e!889884 () Bool)

(assert (=> b!1393469 (= e!889873 (and tp!397542 (inv!18464 (tag!2709 (rule!4210 t1!34))) (inv!18467 (transformation!2447 (rule!4210 t1!34))) e!889884))))

(declare-fun b!1393470 () Bool)

(declare-fun res!629186 () Bool)

(assert (=> b!1393470 (=> res!629186 e!889886)))

(assert (=> b!1393470 (= res!629186 (not (contains!2724 lt!463927 lt!463930)))))

(declare-fun b!1393471 () Bool)

(declare-fun res!629164 () Bool)

(assert (=> b!1393471 (=> (not res!629164) (not e!889863))))

(declare-fun isEmpty!8568 (List!14198) Bool)

(assert (=> b!1393471 (= res!629164 (not (isEmpty!8568 rules!2550)))))

(declare-fun b!1393472 () Bool)

(assert (=> b!1393472 (= e!889890 e!889883)))

(declare-fun res!629179 () Bool)

(assert (=> b!1393472 (=> res!629179 e!889883)))

(declare-fun lt!463916 () Bool)

(assert (=> b!1393472 (= res!629179 lt!463916)))

(declare-fun lt!463939 () Unit!20409)

(assert (=> b!1393472 (= lt!463939 e!889877)))

(declare-fun c!229434 () Bool)

(assert (=> b!1393472 (= c!229434 lt!463916)))

(assert (=> b!1393472 (= lt!463916 (not (contains!2724 (usedCharacters!258 (regex!2447 (rule!4210 t1!34))) lt!463930)))))

(declare-fun b!1393473 () Bool)

(declare-fun res!629184 () Bool)

(assert (=> b!1393473 (=> res!629184 e!889886)))

(assert (=> b!1393473 (= res!629184 (not (contains!2724 lt!463919 lt!463923)))))

(declare-fun b!1393474 () Bool)

(declare-fun tp!397546 () Bool)

(assert (=> b!1393474 (= e!889874 (and e!889892 tp!397546))))

(declare-fun b!1393475 () Bool)

(declare-fun res!629156 () Bool)

(assert (=> b!1393475 (=> (not res!629156) (not e!889879))))

(declare-fun sepAndNonSepRulesDisjointChars!820 (List!14198 List!14198) Bool)

(assert (=> b!1393475 (= res!629156 (sepAndNonSepRulesDisjointChars!820 rules!2550 rules!2550))))

(declare-fun b!1393476 () Bool)

(declare-fun res!629176 () Bool)

(assert (=> b!1393476 (=> (not res!629176) (not e!889863))))

(declare-fun rulesInvariant!2012 (LexerInterface!2142 List!14198) Bool)

(assert (=> b!1393476 (= res!629176 (rulesInvariant!2012 thiss!19762 rules!2550))))

(declare-fun b!1393477 () Bool)

(declare-fun Unit!20414 () Unit!20409)

(assert (=> b!1393477 (= e!889872 Unit!20414)))

(declare-fun lt!463937 () Unit!20409)

(assert (=> b!1393477 (= lt!463937 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!192 (regex!2447 (rule!4210 t2!34)) lt!463933 (head!2553 lt!463933)))))

(assert (=> b!1393477 false))

(declare-fun b!1393478 () Bool)

(declare-fun res!629171 () Bool)

(assert (=> b!1393478 (=> res!629171 e!889890)))

(assert (=> b!1393478 (= res!629171 (not (matchR!1752 (regex!2447 (rule!4210 t2!34)) lt!463933)))))

(declare-fun b!1393479 () Bool)

(declare-fun res!629180 () Bool)

(assert (=> b!1393479 (=> res!629180 e!889881)))

(declare-fun isEmpty!8569 (BalanceConc!9248) Bool)

(assert (=> b!1393479 (= res!629180 (not (isEmpty!8569 (_2!7759 lt!463924))))))

(declare-fun b!1393480 () Bool)

(declare-fun res!629159 () Bool)

(assert (=> b!1393480 (=> res!629159 e!889881)))

(assert (=> b!1393480 (= res!629159 (not (contains!2723 rules!2550 (rule!4210 t1!34))))))

(declare-fun b!1393481 () Bool)

(declare-fun res!629155 () Bool)

(assert (=> b!1393481 (=> (not res!629155) (not e!889863))))

(declare-fun rulesProduceIndividualToken!1111 (LexerInterface!2142 List!14198 Token!4556) Bool)

(assert (=> b!1393481 (= res!629155 (rulesProduceIndividualToken!1111 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1393482 () Bool)

(assert (=> b!1393482 (= e!889870 e!889880)))

(declare-fun res!629168 () Bool)

(assert (=> b!1393482 (=> res!629168 e!889880)))

(declare-fun getSuffix!607 (List!14197 List!14197) List!14197)

(assert (=> b!1393482 (= res!629168 (not (= lt!463927 (++!3674 lt!463919 (getSuffix!607 lt!463927 lt!463919)))))))

(declare-fun pickWitness!214 (Int) List!14197)

(assert (=> b!1393482 (= lt!463927 (pickWitness!214 lambda!60381))))

(assert (=> b!1393483 (= e!889865 (and tp!397547 tp!397544))))

(assert (=> b!1393484 (= e!889884 (and tp!397548 tp!397543))))

(declare-fun tp!397551 () Bool)

(declare-fun b!1393485 () Bool)

(assert (=> b!1393485 (= e!889864 (and (inv!21 (value!79372 t2!34)) e!889869 tp!397551))))

(declare-fun b!1393486 () Bool)

(declare-fun res!629166 () Bool)

(assert (=> b!1393486 (=> res!629166 e!889882)))

(assert (=> b!1393486 (= res!629166 (not (isEmpty!8569 (_2!7759 lt!463926))))))

(declare-fun b!1393487 () Bool)

(declare-fun res!629185 () Bool)

(assert (=> b!1393487 (=> res!629185 e!889886)))

(assert (=> b!1393487 (= res!629185 (not (matchR!1752 lt!463944 lt!463927)))))

(declare-fun b!1393488 () Bool)

(declare-fun res!629187 () Bool)

(assert (=> b!1393488 (=> (not res!629187) (not e!889863))))

(assert (=> b!1393488 (= res!629187 (rulesProduceIndividualToken!1111 thiss!19762 rules!2550 t2!34))))

(assert (=> b!1393489 (= e!889891 e!889888)))

(declare-fun res!629173 () Bool)

(assert (=> b!1393489 (=> res!629173 e!889888)))

(declare-fun exists!539 (List!14198 Int) Bool)

(assert (=> b!1393489 (= res!629173 (not (exists!539 rules!2550 lambda!60384)))))

(assert (=> b!1393489 (exists!539 rules!2550 lambda!60384)))

(declare-fun lt!463917 () Unit!20409)

(declare-fun lemmaMapContains!158 (List!14198 Int Regex!3761) Unit!20409)

(assert (=> b!1393489 (= lt!463917 (lemmaMapContains!158 rules!2550 lambda!60382 lt!463925))))

(assert (= (and start!126782 res!629158) b!1393471))

(assert (= (and b!1393471 res!629164) b!1393476))

(assert (= (and b!1393476 res!629176) b!1393481))

(assert (= (and b!1393481 res!629155) b!1393488))

(assert (= (and b!1393488 res!629187) b!1393453))

(assert (= (and b!1393453 res!629163) b!1393451))

(assert (= (and b!1393451 res!629183) b!1393475))

(assert (= (and b!1393475 res!629156) b!1393458))

(assert (= (and b!1393458 res!629169) b!1393448))

(assert (= (and b!1393448 res!629175) b!1393450))

(assert (= (and b!1393450 (not res!629165)) b!1393482))

(assert (= (and b!1393482 (not res!629168)) b!1393467))

(assert (= (and b!1393467 (not res!629162)) b!1393470))

(assert (= (and b!1393470 (not res!629186)) b!1393473))

(assert (= (and b!1393473 (not res!629184)) b!1393449))

(assert (= (and b!1393449 (not res!629167)) b!1393487))

(assert (= (and b!1393487 (not res!629185)) b!1393466))

(assert (= (and b!1393466 (not res!629177)) b!1393464))

(assert (= (and b!1393464 (not res!629160)) b!1393489))

(assert (= (and b!1393489 (not res!629173)) b!1393459))

(assert (= (and b!1393459 (not res!629172)) b!1393479))

(assert (= (and b!1393479 (not res!629180)) b!1393454))

(assert (= (and b!1393454 (not res!629182)) b!1393465))

(assert (= (and b!1393465 (not res!629174)) b!1393480))

(assert (= (and b!1393480 (not res!629159)) b!1393460))

(assert (= (and b!1393460 (not res!629178)) b!1393486))

(assert (= (and b!1393486 (not res!629166)) b!1393445))

(assert (= (and b!1393445 (not res!629181)) b!1393443))

(assert (= (and b!1393443 (not res!629161)) b!1393447))

(assert (= (and b!1393447 (not res!629170)) b!1393457))

(assert (= (and b!1393457 (not res!629188)) b!1393456))

(assert (= (and b!1393456 (not res!629157)) b!1393478))

(assert (= (and b!1393478 (not res!629171)) b!1393472))

(assert (= (and b!1393472 c!229434) b!1393452))

(assert (= (and b!1393472 (not c!229434)) b!1393446))

(assert (= (and b!1393472 (not res!629179)) b!1393468))

(assert (= (and b!1393468 c!229435) b!1393477))

(assert (= (and b!1393468 (not c!229435)) b!1393444))

(assert (= b!1393455 b!1393461))

(assert (= b!1393474 b!1393455))

(assert (= (and start!126782 ((_ is Cons!14132) rules!2550)) b!1393474))

(assert (= b!1393469 b!1393484))

(assert (= b!1393463 b!1393469))

(assert (= start!126782 b!1393463))

(assert (= b!1393462 b!1393483))

(assert (= b!1393485 b!1393462))

(assert (= start!126782 b!1393485))

(declare-fun m!1569509 () Bool)

(assert (=> b!1393473 m!1569509))

(declare-fun m!1569511 () Bool)

(assert (=> b!1393449 m!1569511))

(declare-fun m!1569513 () Bool)

(assert (=> b!1393455 m!1569513))

(declare-fun m!1569515 () Bool)

(assert (=> b!1393455 m!1569515))

(declare-fun m!1569517 () Bool)

(assert (=> b!1393480 m!1569517))

(declare-fun m!1569519 () Bool)

(assert (=> b!1393485 m!1569519))

(declare-fun m!1569521 () Bool)

(assert (=> b!1393456 m!1569521))

(declare-fun m!1569523 () Bool)

(assert (=> b!1393456 m!1569523))

(declare-fun m!1569525 () Bool)

(assert (=> b!1393456 m!1569525))

(declare-fun m!1569527 () Bool)

(assert (=> b!1393456 m!1569527))

(declare-fun m!1569529 () Bool)

(assert (=> b!1393452 m!1569529))

(assert (=> b!1393452 m!1569529))

(declare-fun m!1569531 () Bool)

(assert (=> b!1393452 m!1569531))

(declare-fun m!1569533 () Bool)

(assert (=> b!1393458 m!1569533))

(declare-fun m!1569535 () Bool)

(assert (=> b!1393443 m!1569535))

(declare-fun m!1569537 () Bool)

(assert (=> b!1393443 m!1569537))

(declare-fun m!1569539 () Bool)

(assert (=> b!1393479 m!1569539))

(declare-fun m!1569541 () Bool)

(assert (=> b!1393450 m!1569541))

(assert (=> b!1393450 m!1569541))

(declare-fun m!1569543 () Bool)

(assert (=> b!1393450 m!1569543))

(declare-fun m!1569545 () Bool)

(assert (=> b!1393472 m!1569545))

(assert (=> b!1393472 m!1569545))

(declare-fun m!1569547 () Bool)

(assert (=> b!1393472 m!1569547))

(declare-fun m!1569549 () Bool)

(assert (=> b!1393459 m!1569549))

(declare-fun m!1569551 () Bool)

(assert (=> b!1393459 m!1569551))

(assert (=> b!1393459 m!1569549))

(declare-fun m!1569553 () Bool)

(assert (=> b!1393459 m!1569553))

(declare-fun m!1569555 () Bool)

(assert (=> b!1393459 m!1569555))

(declare-fun m!1569557 () Bool)

(assert (=> b!1393459 m!1569557))

(declare-fun m!1569559 () Bool)

(assert (=> b!1393467 m!1569559))

(declare-fun m!1569561 () Bool)

(assert (=> b!1393467 m!1569561))

(declare-fun m!1569563 () Bool)

(assert (=> b!1393454 m!1569563))

(assert (=> b!1393454 m!1569563))

(declare-fun m!1569565 () Bool)

(assert (=> b!1393454 m!1569565))

(declare-fun m!1569567 () Bool)

(assert (=> b!1393489 m!1569567))

(assert (=> b!1393489 m!1569567))

(declare-fun m!1569569 () Bool)

(assert (=> b!1393489 m!1569569))

(declare-fun m!1569571 () Bool)

(assert (=> b!1393466 m!1569571))

(declare-fun m!1569573 () Bool)

(assert (=> b!1393466 m!1569573))

(declare-fun m!1569575 () Bool)

(assert (=> b!1393466 m!1569575))

(assert (=> b!1393466 m!1569571))

(assert (=> b!1393466 m!1569571))

(declare-fun m!1569577 () Bool)

(assert (=> b!1393466 m!1569577))

(declare-fun m!1569579 () Bool)

(assert (=> b!1393476 m!1569579))

(declare-fun m!1569581 () Bool)

(assert (=> b!1393486 m!1569581))

(declare-fun m!1569583 () Bool)

(assert (=> b!1393463 m!1569583))

(declare-fun m!1569585 () Bool)

(assert (=> b!1393475 m!1569585))

(declare-fun m!1569587 () Bool)

(assert (=> b!1393481 m!1569587))

(declare-fun m!1569589 () Bool)

(assert (=> b!1393448 m!1569589))

(declare-fun m!1569591 () Bool)

(assert (=> b!1393448 m!1569591))

(declare-fun m!1569593 () Bool)

(assert (=> b!1393448 m!1569593))

(declare-fun m!1569595 () Bool)

(assert (=> b!1393448 m!1569595))

(declare-fun m!1569597 () Bool)

(assert (=> b!1393448 m!1569597))

(declare-fun m!1569599 () Bool)

(assert (=> b!1393448 m!1569599))

(declare-fun m!1569601 () Bool)

(assert (=> start!126782 m!1569601))

(declare-fun m!1569603 () Bool)

(assert (=> start!126782 m!1569603))

(declare-fun m!1569605 () Bool)

(assert (=> b!1393477 m!1569605))

(assert (=> b!1393477 m!1569605))

(declare-fun m!1569607 () Bool)

(assert (=> b!1393477 m!1569607))

(declare-fun m!1569609 () Bool)

(assert (=> b!1393488 m!1569609))

(declare-fun m!1569611 () Bool)

(assert (=> b!1393470 m!1569611))

(declare-fun m!1569613 () Bool)

(assert (=> b!1393460 m!1569613))

(declare-fun m!1569615 () Bool)

(assert (=> b!1393460 m!1569615))

(declare-fun m!1569617 () Bool)

(assert (=> b!1393460 m!1569617))

(assert (=> b!1393460 m!1569617))

(declare-fun m!1569619 () Bool)

(assert (=> b!1393460 m!1569619))

(declare-fun m!1569621 () Bool)

(assert (=> b!1393478 m!1569621))

(declare-fun m!1569623 () Bool)

(assert (=> b!1393457 m!1569623))

(declare-fun m!1569625 () Bool)

(assert (=> b!1393447 m!1569625))

(declare-fun m!1569627 () Bool)

(assert (=> b!1393445 m!1569627))

(assert (=> b!1393445 m!1569627))

(declare-fun m!1569629 () Bool)

(assert (=> b!1393445 m!1569629))

(declare-fun m!1569631 () Bool)

(assert (=> b!1393465 m!1569631))

(declare-fun m!1569633 () Bool)

(assert (=> b!1393469 m!1569633))

(declare-fun m!1569635 () Bool)

(assert (=> b!1393469 m!1569635))

(declare-fun m!1569637 () Bool)

(assert (=> b!1393487 m!1569637))

(declare-fun m!1569639 () Bool)

(assert (=> b!1393451 m!1569639))

(declare-fun m!1569641 () Bool)

(assert (=> b!1393451 m!1569641))

(declare-fun m!1569643 () Bool)

(assert (=> b!1393482 m!1569643))

(assert (=> b!1393482 m!1569643))

(declare-fun m!1569645 () Bool)

(assert (=> b!1393482 m!1569645))

(declare-fun m!1569647 () Bool)

(assert (=> b!1393482 m!1569647))

(declare-fun m!1569649 () Bool)

(assert (=> b!1393462 m!1569649))

(declare-fun m!1569651 () Bool)

(assert (=> b!1393462 m!1569651))

(assert (=> b!1393464 m!1569571))

(assert (=> b!1393464 m!1569571))

(declare-fun m!1569653 () Bool)

(assert (=> b!1393464 m!1569653))

(assert (=> b!1393464 m!1569571))

(assert (=> b!1393464 m!1569571))

(declare-fun m!1569655 () Bool)

(assert (=> b!1393464 m!1569655))

(declare-fun m!1569657 () Bool)

(assert (=> b!1393471 m!1569657))

(declare-fun m!1569659 () Bool)

(assert (=> b!1393468 m!1569659))

(assert (=> b!1393468 m!1569659))

(declare-fun m!1569661 () Bool)

(assert (=> b!1393468 m!1569661))

(check-sat (not b!1393456) (not b!1393479) (not b!1393476) (not b_next!34571) (not b!1393464) (not start!126782) (not b!1393454) (not b!1393462) (not b!1393450) (not b!1393488) (not b!1393471) (not b!1393460) (not b!1393482) (not b!1393469) (not b!1393474) (not b!1393449) (not b!1393475) (not b_next!34563) b_and!93299 (not b!1393485) (not b!1393467) (not b!1393463) (not b_next!34573) b_and!93309 b_and!93307 (not b_next!34569) (not b!1393455) (not b!1393478) (not b!1393447) (not b!1393451) (not b!1393480) (not b!1393452) (not b!1393458) (not b!1393473) b_and!93301 (not b!1393486) (not b!1393457) (not b!1393459) (not b!1393465) (not b!1393489) (not b!1393472) (not b!1393481) b_and!93303 (not b!1393466) b_and!93305 (not b!1393477) (not b_next!34567) (not b!1393487) (not b!1393443) (not b!1393468) (not b!1393445) (not b!1393448) (not b_next!34565) (not b!1393470))
(check-sat (not b_next!34571) b_and!93301 b_and!93303 b_and!93305 (not b_next!34567) (not b_next!34565) (not b_next!34563) b_and!93299 (not b_next!34573) b_and!93309 b_and!93307 (not b_next!34569))
(get-model)

(declare-fun d!398784 () Bool)

(declare-fun lt!464031 () Bool)

(declare-fun e!890023 () Bool)

(assert (=> d!398784 (= lt!464031 e!890023)))

(declare-fun res!629314 () Bool)

(assert (=> d!398784 (=> (not res!629314) (not e!890023))))

(assert (=> d!398784 (= res!629314 (= (list!5494 (_1!7759 (lex!967 thiss!19762 rules!2550 (print!906 thiss!19762 (singletonSeq!1098 t1!34))))) (list!5494 (singletonSeq!1098 t1!34))))))

(declare-fun e!890024 () Bool)

(assert (=> d!398784 (= lt!464031 e!890024)))

(declare-fun res!629312 () Bool)

(assert (=> d!398784 (=> (not res!629312) (not e!890024))))

(declare-fun lt!464030 () tuple2!13746)

(declare-fun size!11622 (BalanceConc!9250) Int)

(assert (=> d!398784 (= res!629312 (= (size!11622 (_1!7759 lt!464030)) 1))))

(assert (=> d!398784 (= lt!464030 (lex!967 thiss!19762 rules!2550 (print!906 thiss!19762 (singletonSeq!1098 t1!34))))))

(assert (=> d!398784 (not (isEmpty!8568 rules!2550))))

(assert (=> d!398784 (= (rulesProduceIndividualToken!1111 thiss!19762 rules!2550 t1!34) lt!464031)))

(declare-fun b!1393727 () Bool)

(declare-fun res!629313 () Bool)

(assert (=> b!1393727 (=> (not res!629313) (not e!890024))))

(declare-fun apply!3571 (BalanceConc!9250 Int) Token!4556)

(assert (=> b!1393727 (= res!629313 (= (apply!3571 (_1!7759 lt!464030) 0) t1!34))))

(declare-fun b!1393728 () Bool)

(assert (=> b!1393728 (= e!890024 (isEmpty!8569 (_2!7759 lt!464030)))))

(declare-fun b!1393729 () Bool)

(assert (=> b!1393729 (= e!890023 (isEmpty!8569 (_2!7759 (lex!967 thiss!19762 rules!2550 (print!906 thiss!19762 (singletonSeq!1098 t1!34))))))))

(assert (= (and d!398784 res!629312) b!1393727))

(assert (= (and b!1393727 res!629313) b!1393728))

(assert (= (and d!398784 res!629314) b!1393729))

(assert (=> d!398784 m!1569549))

(assert (=> d!398784 m!1569551))

(declare-fun m!1569931 () Bool)

(assert (=> d!398784 m!1569931))

(assert (=> d!398784 m!1569549))

(assert (=> d!398784 m!1569549))

(declare-fun m!1569933 () Bool)

(assert (=> d!398784 m!1569933))

(assert (=> d!398784 m!1569657))

(assert (=> d!398784 m!1569551))

(declare-fun m!1569935 () Bool)

(assert (=> d!398784 m!1569935))

(declare-fun m!1569937 () Bool)

(assert (=> d!398784 m!1569937))

(declare-fun m!1569939 () Bool)

(assert (=> b!1393727 m!1569939))

(declare-fun m!1569941 () Bool)

(assert (=> b!1393728 m!1569941))

(assert (=> b!1393729 m!1569549))

(assert (=> b!1393729 m!1569549))

(assert (=> b!1393729 m!1569551))

(assert (=> b!1393729 m!1569551))

(assert (=> b!1393729 m!1569935))

(declare-fun m!1569943 () Bool)

(assert (=> b!1393729 m!1569943))

(assert (=> b!1393481 d!398784))

(declare-fun d!398822 () Bool)

(declare-fun list!5496 (Conc!4655) List!14199)

(assert (=> d!398822 (= (list!5494 (_1!7759 lt!463926)) (list!5496 (c!229438 (_1!7759 lt!463926))))))

(declare-fun bs!337746 () Bool)

(assert (= bs!337746 d!398822))

(declare-fun m!1569945 () Bool)

(assert (=> bs!337746 m!1569945))

(assert (=> b!1393460 d!398822))

(declare-fun d!398824 () Bool)

(declare-fun e!890070 () Bool)

(assert (=> d!398824 e!890070))

(declare-fun res!629352 () Bool)

(assert (=> d!398824 (=> (not res!629352) (not e!890070))))

(declare-fun e!890068 () Bool)

(assert (=> d!398824 (= res!629352 e!890068)))

(declare-fun c!229504 () Bool)

(declare-fun lt!464066 () tuple2!13746)

(assert (=> d!398824 (= c!229504 (> (size!11622 (_1!7759 lt!464066)) 0))))

(declare-fun lexTailRecV2!432 (LexerInterface!2142 List!14198 BalanceConc!9248 BalanceConc!9248 BalanceConc!9248 BalanceConc!9250) tuple2!13746)

(assert (=> d!398824 (= lt!464066 (lexTailRecV2!432 thiss!19762 rules!2550 lt!463940 (BalanceConc!9249 Empty!4654) lt!463940 (BalanceConc!9251 Empty!4655)))))

(assert (=> d!398824 (= (lex!967 thiss!19762 rules!2550 lt!463940) lt!464066)))

(declare-fun b!1393794 () Bool)

(declare-fun res!629354 () Bool)

(assert (=> b!1393794 (=> (not res!629354) (not e!890070))))

(assert (=> b!1393794 (= res!629354 (= (list!5494 (_1!7759 lt!464066)) (_1!7758 (lexList!656 thiss!19762 rules!2550 (list!5493 lt!463940)))))))

(declare-fun b!1393795 () Bool)

(assert (=> b!1393795 (= e!890070 (= (list!5493 (_2!7759 lt!464066)) (_2!7758 (lexList!656 thiss!19762 rules!2550 (list!5493 lt!463940)))))))

(declare-fun b!1393796 () Bool)

(declare-fun e!890069 () Bool)

(assert (=> b!1393796 (= e!890068 e!890069)))

(declare-fun res!629353 () Bool)

(assert (=> b!1393796 (= res!629353 (< (size!11618 (_2!7759 lt!464066)) (size!11618 lt!463940)))))

(assert (=> b!1393796 (=> (not res!629353) (not e!890069))))

(declare-fun b!1393797 () Bool)

(declare-fun isEmpty!8573 (BalanceConc!9250) Bool)

(assert (=> b!1393797 (= e!890069 (not (isEmpty!8573 (_1!7759 lt!464066))))))

(declare-fun b!1393798 () Bool)

(assert (=> b!1393798 (= e!890068 (= (_2!7759 lt!464066) lt!463940))))

(assert (= (and d!398824 c!229504) b!1393796))

(assert (= (and d!398824 (not c!229504)) b!1393798))

(assert (= (and b!1393796 res!629353) b!1393797))

(assert (= (and d!398824 res!629352) b!1393794))

(assert (= (and b!1393794 res!629354) b!1393795))

(declare-fun m!1570067 () Bool)

(assert (=> b!1393797 m!1570067))

(declare-fun m!1570069 () Bool)

(assert (=> b!1393795 m!1570069))

(assert (=> b!1393795 m!1569627))

(assert (=> b!1393795 m!1569627))

(assert (=> b!1393795 m!1569629))

(declare-fun m!1570071 () Bool)

(assert (=> d!398824 m!1570071))

(declare-fun m!1570073 () Bool)

(assert (=> d!398824 m!1570073))

(declare-fun m!1570075 () Bool)

(assert (=> b!1393794 m!1570075))

(assert (=> b!1393794 m!1569627))

(assert (=> b!1393794 m!1569627))

(assert (=> b!1393794 m!1569629))

(declare-fun m!1570077 () Bool)

(assert (=> b!1393796 m!1570077))

(declare-fun m!1570079 () Bool)

(assert (=> b!1393796 m!1570079))

(assert (=> b!1393460 d!398824))

(declare-fun d!398866 () Bool)

(declare-fun lt!464069 () BalanceConc!9248)

(declare-fun printList!627 (LexerInterface!2142 List!14199) List!14197)

(assert (=> d!398866 (= (list!5493 lt!464069) (printList!627 thiss!19762 (list!5494 (singletonSeq!1098 t2!34))))))

(declare-fun printTailRec!609 (LexerInterface!2142 BalanceConc!9250 Int BalanceConc!9248) BalanceConc!9248)

(assert (=> d!398866 (= lt!464069 (printTailRec!609 thiss!19762 (singletonSeq!1098 t2!34) 0 (BalanceConc!9249 Empty!4654)))))

(assert (=> d!398866 (= (print!906 thiss!19762 (singletonSeq!1098 t2!34)) lt!464069)))

(declare-fun bs!337760 () Bool)

(assert (= bs!337760 d!398866))

(declare-fun m!1570081 () Bool)

(assert (=> bs!337760 m!1570081))

(assert (=> bs!337760 m!1569617))

(declare-fun m!1570083 () Bool)

(assert (=> bs!337760 m!1570083))

(assert (=> bs!337760 m!1570083))

(declare-fun m!1570085 () Bool)

(assert (=> bs!337760 m!1570085))

(assert (=> bs!337760 m!1569617))

(declare-fun m!1570087 () Bool)

(assert (=> bs!337760 m!1570087))

(assert (=> b!1393460 d!398866))

(declare-fun d!398868 () Bool)

(declare-fun e!890073 () Bool)

(assert (=> d!398868 e!890073))

(declare-fun res!629357 () Bool)

(assert (=> d!398868 (=> (not res!629357) (not e!890073))))

(declare-fun lt!464072 () BalanceConc!9250)

(assert (=> d!398868 (= res!629357 (= (list!5494 lt!464072) (Cons!14133 t2!34 Nil!14133)))))

(declare-fun singleton!483 (Token!4556) BalanceConc!9250)

(assert (=> d!398868 (= lt!464072 (singleton!483 t2!34))))

(assert (=> d!398868 (= (singletonSeq!1098 t2!34) lt!464072)))

(declare-fun b!1393801 () Bool)

(declare-fun isBalanced!1377 (Conc!4655) Bool)

(assert (=> b!1393801 (= e!890073 (isBalanced!1377 (c!229438 lt!464072)))))

(assert (= (and d!398868 res!629357) b!1393801))

(declare-fun m!1570089 () Bool)

(assert (=> d!398868 m!1570089))

(declare-fun m!1570091 () Bool)

(assert (=> d!398868 m!1570091))

(declare-fun m!1570093 () Bool)

(assert (=> b!1393801 m!1570093))

(assert (=> b!1393460 d!398868))

(declare-fun d!398870 () Bool)

(declare-fun prefixMatchZipperSequence!292 (Regex!3761 BalanceConc!9248) Bool)

(declare-fun ++!3676 (BalanceConc!9248 BalanceConc!9248) BalanceConc!9248)

(declare-fun singletonSeq!1100 (C!7812) BalanceConc!9248)

(assert (=> d!398870 (= (separableTokensPredicate!425 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!292 (rulesRegex!330 thiss!19762 rules!2550) (++!3676 (charsOf!1419 t1!34) (singletonSeq!1100 (apply!3567 (charsOf!1419 t2!34) 0))))))))

(declare-fun bs!337761 () Bool)

(assert (= bs!337761 d!398870))

(assert (=> bs!337761 m!1569641))

(assert (=> bs!337761 m!1569641))

(declare-fun m!1570095 () Bool)

(assert (=> bs!337761 m!1570095))

(assert (=> bs!337761 m!1569593))

(assert (=> bs!337761 m!1570095))

(declare-fun m!1570097 () Bool)

(assert (=> bs!337761 m!1570097))

(assert (=> bs!337761 m!1569589))

(assert (=> bs!337761 m!1569593))

(declare-fun m!1570099 () Bool)

(assert (=> bs!337761 m!1570099))

(declare-fun m!1570101 () Bool)

(assert (=> bs!337761 m!1570101))

(assert (=> bs!337761 m!1569589))

(assert (=> bs!337761 m!1570097))

(assert (=> bs!337761 m!1570099))

(assert (=> b!1393458 d!398870))

(declare-fun b!1393829 () Bool)

(declare-fun e!890094 () Rule!4694)

(declare-fun e!890092 () Rule!4694)

(assert (=> b!1393829 (= e!890094 e!890092)))

(declare-fun c!229513 () Bool)

(assert (=> b!1393829 (= c!229513 ((_ is Cons!14132) rules!2550))))

(declare-fun b!1393830 () Bool)

(assert (=> b!1393830 (= e!890094 (h!19533 rules!2550))))

(declare-fun b!1393831 () Bool)

(declare-fun e!890093 () Bool)

(declare-fun lt!464080 () Rule!4694)

(assert (=> b!1393831 (= e!890093 (contains!2723 rules!2550 lt!464080))))

(declare-fun b!1393832 () Bool)

(declare-fun lt!464081 () Unit!20409)

(declare-fun Unit!20416 () Unit!20409)

(assert (=> b!1393832 (= lt!464081 Unit!20416)))

(assert (=> b!1393832 false))

(declare-fun head!2555 (List!14198) Rule!4694)

(assert (=> b!1393832 (= e!890092 (head!2555 rules!2550))))

(declare-fun d!398872 () Bool)

(assert (=> d!398872 e!890093))

(declare-fun res!629371 () Bool)

(assert (=> d!398872 (=> (not res!629371) (not e!890093))))

(declare-fun dynLambda!6511 (Int Rule!4694) Bool)

(assert (=> d!398872 (= res!629371 (dynLambda!6511 lambda!60384 lt!464080))))

(assert (=> d!398872 (= lt!464080 e!890094)))

(declare-fun c!229512 () Bool)

(declare-fun e!890091 () Bool)

(assert (=> d!398872 (= c!229512 e!890091)))

(declare-fun res!629372 () Bool)

(assert (=> d!398872 (=> (not res!629372) (not e!890091))))

(assert (=> d!398872 (= res!629372 ((_ is Cons!14132) rules!2550))))

(assert (=> d!398872 (exists!539 rules!2550 lambda!60384)))

(assert (=> d!398872 (= (getWitness!426 rules!2550 lambda!60384) lt!464080)))

(declare-fun b!1393833 () Bool)

(assert (=> b!1393833 (= e!890092 (getWitness!426 (t!122579 rules!2550) lambda!60384))))

(declare-fun b!1393834 () Bool)

(assert (=> b!1393834 (= e!890091 (dynLambda!6511 lambda!60384 (h!19533 rules!2550)))))

(assert (= (and d!398872 res!629372) b!1393834))

(assert (= (and d!398872 c!229512) b!1393830))

(assert (= (and d!398872 (not c!229512)) b!1393829))

(assert (= (and b!1393829 c!229513) b!1393833))

(assert (= (and b!1393829 (not c!229513)) b!1393832))

(assert (= (and d!398872 res!629371) b!1393831))

(declare-fun b_lambda!43517 () Bool)

(assert (=> (not b_lambda!43517) (not d!398872)))

(declare-fun b_lambda!43519 () Bool)

(assert (=> (not b_lambda!43519) (not b!1393834)))

(declare-fun m!1570117 () Bool)

(assert (=> d!398872 m!1570117))

(assert (=> d!398872 m!1569567))

(declare-fun m!1570119 () Bool)

(assert (=> b!1393833 m!1570119))

(declare-fun m!1570121 () Bool)

(assert (=> b!1393834 m!1570121))

(declare-fun m!1570123 () Bool)

(assert (=> b!1393831 m!1570123))

(declare-fun m!1570125 () Bool)

(assert (=> b!1393832 m!1570125))

(assert (=> b!1393459 d!398872))

(declare-fun d!398876 () Bool)

(declare-fun lt!464082 () BalanceConc!9248)

(assert (=> d!398876 (= (list!5493 lt!464082) (printList!627 thiss!19762 (list!5494 (singletonSeq!1098 t1!34))))))

(assert (=> d!398876 (= lt!464082 (printTailRec!609 thiss!19762 (singletonSeq!1098 t1!34) 0 (BalanceConc!9249 Empty!4654)))))

(assert (=> d!398876 (= (print!906 thiss!19762 (singletonSeq!1098 t1!34)) lt!464082)))

(declare-fun bs!337762 () Bool)

(assert (= bs!337762 d!398876))

(declare-fun m!1570127 () Bool)

(assert (=> bs!337762 m!1570127))

(assert (=> bs!337762 m!1569549))

(assert (=> bs!337762 m!1569933))

(assert (=> bs!337762 m!1569933))

(declare-fun m!1570129 () Bool)

(assert (=> bs!337762 m!1570129))

(assert (=> bs!337762 m!1569549))

(declare-fun m!1570131 () Bool)

(assert (=> bs!337762 m!1570131))

(assert (=> b!1393459 d!398876))

(declare-fun d!398878 () Bool)

(declare-fun e!890097 () Bool)

(assert (=> d!398878 e!890097))

(declare-fun res!629373 () Bool)

(assert (=> d!398878 (=> (not res!629373) (not e!890097))))

(declare-fun e!890095 () Bool)

(assert (=> d!398878 (= res!629373 e!890095)))

(declare-fun c!229514 () Bool)

(declare-fun lt!464083 () tuple2!13746)

(assert (=> d!398878 (= c!229514 (> (size!11622 (_1!7759 lt!464083)) 0))))

(assert (=> d!398878 (= lt!464083 (lexTailRecV2!432 thiss!19762 rules!2550 lt!463934 (BalanceConc!9249 Empty!4654) lt!463934 (BalanceConc!9251 Empty!4655)))))

(assert (=> d!398878 (= (lex!967 thiss!19762 rules!2550 lt!463934) lt!464083)))

(declare-fun b!1393835 () Bool)

(declare-fun res!629375 () Bool)

(assert (=> b!1393835 (=> (not res!629375) (not e!890097))))

(assert (=> b!1393835 (= res!629375 (= (list!5494 (_1!7759 lt!464083)) (_1!7758 (lexList!656 thiss!19762 rules!2550 (list!5493 lt!463934)))))))

(declare-fun b!1393836 () Bool)

(assert (=> b!1393836 (= e!890097 (= (list!5493 (_2!7759 lt!464083)) (_2!7758 (lexList!656 thiss!19762 rules!2550 (list!5493 lt!463934)))))))

(declare-fun b!1393837 () Bool)

(declare-fun e!890096 () Bool)

(assert (=> b!1393837 (= e!890095 e!890096)))

(declare-fun res!629374 () Bool)

(assert (=> b!1393837 (= res!629374 (< (size!11618 (_2!7759 lt!464083)) (size!11618 lt!463934)))))

(assert (=> b!1393837 (=> (not res!629374) (not e!890096))))

(declare-fun b!1393838 () Bool)

(assert (=> b!1393838 (= e!890096 (not (isEmpty!8573 (_1!7759 lt!464083))))))

(declare-fun b!1393839 () Bool)

(assert (=> b!1393839 (= e!890095 (= (_2!7759 lt!464083) lt!463934))))

(assert (= (and d!398878 c!229514) b!1393837))

(assert (= (and d!398878 (not c!229514)) b!1393839))

(assert (= (and b!1393837 res!629374) b!1393838))

(assert (= (and d!398878 res!629373) b!1393835))

(assert (= (and b!1393835 res!629375) b!1393836))

(declare-fun m!1570133 () Bool)

(assert (=> b!1393838 m!1570133))

(declare-fun m!1570135 () Bool)

(assert (=> b!1393836 m!1570135))

(assert (=> b!1393836 m!1569563))

(assert (=> b!1393836 m!1569563))

(assert (=> b!1393836 m!1569565))

(declare-fun m!1570137 () Bool)

(assert (=> d!398878 m!1570137))

(declare-fun m!1570139 () Bool)

(assert (=> d!398878 m!1570139))

(declare-fun m!1570141 () Bool)

(assert (=> b!1393835 m!1570141))

(assert (=> b!1393835 m!1569563))

(assert (=> b!1393835 m!1569563))

(assert (=> b!1393835 m!1569565))

(declare-fun m!1570143 () Bool)

(assert (=> b!1393837 m!1570143))

(declare-fun m!1570145 () Bool)

(assert (=> b!1393837 m!1570145))

(assert (=> b!1393459 d!398878))

(declare-fun d!398880 () Bool)

(assert (=> d!398880 (= (list!5494 (_1!7759 lt!463924)) (list!5496 (c!229438 (_1!7759 lt!463924))))))

(declare-fun bs!337763 () Bool)

(assert (= bs!337763 d!398880))

(declare-fun m!1570147 () Bool)

(assert (=> bs!337763 m!1570147))

(assert (=> b!1393459 d!398880))

(declare-fun d!398882 () Bool)

(declare-fun e!890098 () Bool)

(assert (=> d!398882 e!890098))

(declare-fun res!629376 () Bool)

(assert (=> d!398882 (=> (not res!629376) (not e!890098))))

(declare-fun lt!464084 () BalanceConc!9250)

(assert (=> d!398882 (= res!629376 (= (list!5494 lt!464084) (Cons!14133 t1!34 Nil!14133)))))

(assert (=> d!398882 (= lt!464084 (singleton!483 t1!34))))

(assert (=> d!398882 (= (singletonSeq!1098 t1!34) lt!464084)))

(declare-fun b!1393840 () Bool)

(assert (=> b!1393840 (= e!890098 (isBalanced!1377 (c!229438 lt!464084)))))

(assert (= (and d!398882 res!629376) b!1393840))

(declare-fun m!1570149 () Bool)

(assert (=> d!398882 m!1570149))

(declare-fun m!1570151 () Bool)

(assert (=> d!398882 m!1570151))

(declare-fun m!1570153 () Bool)

(assert (=> b!1393840 m!1570153))

(assert (=> b!1393459 d!398882))

(declare-fun d!398884 () Bool)

(declare-fun lt!464087 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2084 (List!14198) (InoxSet Rule!4694))

(assert (=> d!398884 (= lt!464087 (select (content!2084 rules!2550) (rule!4210 t1!34)))))

(declare-fun e!890103 () Bool)

(assert (=> d!398884 (= lt!464087 e!890103)))

(declare-fun res!629382 () Bool)

(assert (=> d!398884 (=> (not res!629382) (not e!890103))))

(assert (=> d!398884 (= res!629382 ((_ is Cons!14132) rules!2550))))

(assert (=> d!398884 (= (contains!2723 rules!2550 (rule!4210 t1!34)) lt!464087)))

(declare-fun b!1393845 () Bool)

(declare-fun e!890104 () Bool)

(assert (=> b!1393845 (= e!890103 e!890104)))

(declare-fun res!629381 () Bool)

(assert (=> b!1393845 (=> res!629381 e!890104)))

(assert (=> b!1393845 (= res!629381 (= (h!19533 rules!2550) (rule!4210 t1!34)))))

(declare-fun b!1393846 () Bool)

(assert (=> b!1393846 (= e!890104 (contains!2723 (t!122579 rules!2550) (rule!4210 t1!34)))))

(assert (= (and d!398884 res!629382) b!1393845))

(assert (= (and b!1393845 (not res!629381)) b!1393846))

(declare-fun m!1570155 () Bool)

(assert (=> d!398884 m!1570155))

(declare-fun m!1570157 () Bool)

(assert (=> d!398884 m!1570157))

(declare-fun m!1570159 () Bool)

(assert (=> b!1393846 m!1570159))

(assert (=> b!1393480 d!398884))

(declare-fun d!398886 () Bool)

(declare-fun lt!464088 () Bool)

(assert (=> d!398886 (= lt!464088 (select (content!2084 rules!2550) lt!463928))))

(declare-fun e!890105 () Bool)

(assert (=> d!398886 (= lt!464088 e!890105)))

(declare-fun res!629384 () Bool)

(assert (=> d!398886 (=> (not res!629384) (not e!890105))))

(assert (=> d!398886 (= res!629384 ((_ is Cons!14132) rules!2550))))

(assert (=> d!398886 (= (contains!2723 rules!2550 lt!463928) lt!464088)))

(declare-fun b!1393847 () Bool)

(declare-fun e!890106 () Bool)

(assert (=> b!1393847 (= e!890105 e!890106)))

(declare-fun res!629383 () Bool)

(assert (=> b!1393847 (=> res!629383 e!890106)))

(assert (=> b!1393847 (= res!629383 (= (h!19533 rules!2550) lt!463928))))

(declare-fun b!1393848 () Bool)

(assert (=> b!1393848 (= e!890106 (contains!2723 (t!122579 rules!2550) lt!463928))))

(assert (= (and d!398886 res!629384) b!1393847))

(assert (= (and b!1393847 (not res!629383)) b!1393848))

(assert (=> d!398886 m!1570155))

(declare-fun m!1570161 () Bool)

(assert (=> d!398886 m!1570161))

(declare-fun m!1570163 () Bool)

(assert (=> b!1393848 m!1570163))

(assert (=> b!1393457 d!398886))

(declare-fun b!1393899 () Bool)

(declare-fun e!890139 () Bool)

(declare-fun nullable!1221 (Regex!3761) Bool)

(assert (=> b!1393899 (= e!890139 (nullable!1221 (regex!2447 (rule!4210 t2!34))))))

(declare-fun bm!93201 () Bool)

(declare-fun call!93206 () Bool)

(declare-fun isEmpty!8575 (List!14197) Bool)

(assert (=> bm!93201 (= call!93206 (isEmpty!8575 lt!463933))))

(declare-fun b!1393900 () Bool)

(declare-fun res!629423 () Bool)

(declare-fun e!890135 () Bool)

(assert (=> b!1393900 (=> res!629423 e!890135)))

(declare-fun tail!2026 (List!14197) List!14197)

(assert (=> b!1393900 (= res!629423 (not (isEmpty!8575 (tail!2026 lt!463933))))))

(declare-fun b!1393901 () Bool)

(declare-fun e!890138 () Bool)

(declare-fun e!890136 () Bool)

(assert (=> b!1393901 (= e!890138 e!890136)))

(declare-fun c!229525 () Bool)

(assert (=> b!1393901 (= c!229525 ((_ is EmptyLang!3761) (regex!2447 (rule!4210 t2!34))))))

(declare-fun b!1393903 () Bool)

(declare-fun e!890140 () Bool)

(assert (=> b!1393903 (= e!890140 (= (head!2553 lt!463933) (c!229437 (regex!2447 (rule!4210 t2!34)))))))

(declare-fun b!1393905 () Bool)

(declare-fun res!629421 () Bool)

(assert (=> b!1393905 (=> (not res!629421) (not e!890140))))

(assert (=> b!1393905 (= res!629421 (isEmpty!8575 (tail!2026 lt!463933)))))

(declare-fun b!1393906 () Bool)

(declare-fun res!629424 () Bool)

(declare-fun e!890134 () Bool)

(assert (=> b!1393906 (=> res!629424 e!890134)))

(assert (=> b!1393906 (= res!629424 (not ((_ is ElementMatch!3761) (regex!2447 (rule!4210 t2!34)))))))

(assert (=> b!1393906 (= e!890136 e!890134)))

(declare-fun b!1393907 () Bool)

(declare-fun res!629422 () Bool)

(assert (=> b!1393907 (=> (not res!629422) (not e!890140))))

(assert (=> b!1393907 (= res!629422 (not call!93206))))

(declare-fun d!398888 () Bool)

(assert (=> d!398888 e!890138))

(declare-fun c!229524 () Bool)

(assert (=> d!398888 (= c!229524 ((_ is EmptyExpr!3761) (regex!2447 (rule!4210 t2!34))))))

(declare-fun lt!464098 () Bool)

(assert (=> d!398888 (= lt!464098 e!890139)))

(declare-fun c!229526 () Bool)

(assert (=> d!398888 (= c!229526 (isEmpty!8575 lt!463933))))

(declare-fun validRegex!1641 (Regex!3761) Bool)

(assert (=> d!398888 (validRegex!1641 (regex!2447 (rule!4210 t2!34)))))

(assert (=> d!398888 (= (matchR!1752 (regex!2447 (rule!4210 t2!34)) lt!463933) lt!464098)))

(declare-fun b!1393908 () Bool)

(declare-fun res!629418 () Bool)

(assert (=> b!1393908 (=> res!629418 e!890134)))

(assert (=> b!1393908 (= res!629418 e!890140)))

(declare-fun res!629420 () Bool)

(assert (=> b!1393908 (=> (not res!629420) (not e!890140))))

(assert (=> b!1393908 (= res!629420 lt!464098)))

(declare-fun b!1393909 () Bool)

(assert (=> b!1393909 (= e!890138 (= lt!464098 call!93206))))

(declare-fun b!1393910 () Bool)

(assert (=> b!1393910 (= e!890136 (not lt!464098))))

(declare-fun b!1393911 () Bool)

(assert (=> b!1393911 (= e!890135 (not (= (head!2553 lt!463933) (c!229437 (regex!2447 (rule!4210 t2!34))))))))

(declare-fun b!1393912 () Bool)

(declare-fun e!890137 () Bool)

(assert (=> b!1393912 (= e!890134 e!890137)))

(declare-fun res!629417 () Bool)

(assert (=> b!1393912 (=> (not res!629417) (not e!890137))))

(assert (=> b!1393912 (= res!629417 (not lt!464098))))

(declare-fun b!1393913 () Bool)

(declare-fun derivativeStep!979 (Regex!3761 C!7812) Regex!3761)

(assert (=> b!1393913 (= e!890139 (matchR!1752 (derivativeStep!979 (regex!2447 (rule!4210 t2!34)) (head!2553 lt!463933)) (tail!2026 lt!463933)))))

(declare-fun b!1393914 () Bool)

(assert (=> b!1393914 (= e!890137 e!890135)))

(declare-fun res!629419 () Bool)

(assert (=> b!1393914 (=> res!629419 e!890135)))

(assert (=> b!1393914 (= res!629419 call!93206)))

(assert (= (and d!398888 c!229526) b!1393899))

(assert (= (and d!398888 (not c!229526)) b!1393913))

(assert (= (and d!398888 c!229524) b!1393909))

(assert (= (and d!398888 (not c!229524)) b!1393901))

(assert (= (and b!1393901 c!229525) b!1393910))

(assert (= (and b!1393901 (not c!229525)) b!1393906))

(assert (= (and b!1393906 (not res!629424)) b!1393908))

(assert (= (and b!1393908 res!629420) b!1393907))

(assert (= (and b!1393907 res!629422) b!1393905))

(assert (= (and b!1393905 res!629421) b!1393903))

(assert (= (and b!1393908 (not res!629418)) b!1393912))

(assert (= (and b!1393912 res!629417) b!1393914))

(assert (= (and b!1393914 (not res!629419)) b!1393900))

(assert (= (and b!1393900 (not res!629423)) b!1393911))

(assert (= (or b!1393909 b!1393914 b!1393907) bm!93201))

(assert (=> b!1393903 m!1569605))

(assert (=> b!1393911 m!1569605))

(assert (=> b!1393913 m!1569605))

(assert (=> b!1393913 m!1569605))

(declare-fun m!1570201 () Bool)

(assert (=> b!1393913 m!1570201))

(declare-fun m!1570203 () Bool)

(assert (=> b!1393913 m!1570203))

(assert (=> b!1393913 m!1570201))

(assert (=> b!1393913 m!1570203))

(declare-fun m!1570205 () Bool)

(assert (=> b!1393913 m!1570205))

(declare-fun m!1570209 () Bool)

(assert (=> d!398888 m!1570209))

(declare-fun m!1570211 () Bool)

(assert (=> d!398888 m!1570211))

(assert (=> bm!93201 m!1570209))

(declare-fun m!1570213 () Bool)

(assert (=> b!1393899 m!1570213))

(assert (=> b!1393905 m!1570203))

(assert (=> b!1393905 m!1570203))

(declare-fun m!1570217 () Bool)

(assert (=> b!1393905 m!1570217))

(assert (=> b!1393900 m!1570203))

(assert (=> b!1393900 m!1570203))

(assert (=> b!1393900 m!1570217))

(assert (=> b!1393478 d!398888))

(declare-fun d!398904 () Bool)

(declare-fun lt!464102 () Bool)

(assert (=> d!398904 (= lt!464102 (isEmpty!8575 (list!5493 (_2!7759 lt!463924))))))

(declare-fun isEmpty!8576 (Conc!4654) Bool)

(assert (=> d!398904 (= lt!464102 (isEmpty!8576 (c!229436 (_2!7759 lt!463924))))))

(assert (=> d!398904 (= (isEmpty!8569 (_2!7759 lt!463924)) lt!464102)))

(declare-fun bs!337766 () Bool)

(assert (= bs!337766 d!398904))

(declare-fun m!1570223 () Bool)

(assert (=> bs!337766 m!1570223))

(assert (=> bs!337766 m!1570223))

(declare-fun m!1570225 () Bool)

(assert (=> bs!337766 m!1570225))

(declare-fun m!1570227 () Bool)

(assert (=> bs!337766 m!1570227))

(assert (=> b!1393479 d!398904))

(declare-fun d!398910 () Bool)

(assert (=> d!398910 (not (matchR!1752 (regex!2447 (rule!4210 t2!34)) lt!463933))))

(declare-fun lt!464106 () Unit!20409)

(declare-fun choose!8568 (Regex!3761 List!14197 C!7812) Unit!20409)

(assert (=> d!398910 (= lt!464106 (choose!8568 (regex!2447 (rule!4210 t2!34)) lt!463933 (head!2553 lt!463933)))))

(assert (=> d!398910 (validRegex!1641 (regex!2447 (rule!4210 t2!34)))))

(assert (=> d!398910 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!192 (regex!2447 (rule!4210 t2!34)) lt!463933 (head!2553 lt!463933)) lt!464106)))

(declare-fun bs!337767 () Bool)

(assert (= bs!337767 d!398910))

(assert (=> bs!337767 m!1569621))

(assert (=> bs!337767 m!1569605))

(declare-fun m!1570249 () Bool)

(assert (=> bs!337767 m!1570249))

(assert (=> bs!337767 m!1570211))

(assert (=> b!1393477 d!398910))

(declare-fun d!398916 () Bool)

(assert (=> d!398916 (= (head!2553 lt!463933) (h!19532 lt!463933))))

(assert (=> b!1393477 d!398916))

(declare-fun b!1393929 () Bool)

(declare-fun e!890158 () Bool)

(assert (=> b!1393929 (= e!890158 (nullable!1221 (regex!2447 (rule!4210 t1!34))))))

(declare-fun bm!93202 () Bool)

(declare-fun call!93207 () Bool)

(assert (=> bm!93202 (= call!93207 (isEmpty!8575 lt!463936))))

(declare-fun b!1393930 () Bool)

(declare-fun res!629445 () Bool)

(declare-fun e!890154 () Bool)

(assert (=> b!1393930 (=> res!629445 e!890154)))

(assert (=> b!1393930 (= res!629445 (not (isEmpty!8575 (tail!2026 lt!463936))))))

(declare-fun b!1393931 () Bool)

(declare-fun e!890157 () Bool)

(declare-fun e!890155 () Bool)

(assert (=> b!1393931 (= e!890157 e!890155)))

(declare-fun c!229530 () Bool)

(assert (=> b!1393931 (= c!229530 ((_ is EmptyLang!3761) (regex!2447 (rule!4210 t1!34))))))

(declare-fun b!1393932 () Bool)

(declare-fun e!890159 () Bool)

(assert (=> b!1393932 (= e!890159 (= (head!2553 lt!463936) (c!229437 (regex!2447 (rule!4210 t1!34)))))))

(declare-fun b!1393933 () Bool)

(declare-fun res!629443 () Bool)

(assert (=> b!1393933 (=> (not res!629443) (not e!890159))))

(assert (=> b!1393933 (= res!629443 (isEmpty!8575 (tail!2026 lt!463936)))))

(declare-fun b!1393934 () Bool)

(declare-fun res!629446 () Bool)

(declare-fun e!890153 () Bool)

(assert (=> b!1393934 (=> res!629446 e!890153)))

(assert (=> b!1393934 (= res!629446 (not ((_ is ElementMatch!3761) (regex!2447 (rule!4210 t1!34)))))))

(assert (=> b!1393934 (= e!890155 e!890153)))

(declare-fun b!1393935 () Bool)

(declare-fun res!629444 () Bool)

(assert (=> b!1393935 (=> (not res!629444) (not e!890159))))

(assert (=> b!1393935 (= res!629444 (not call!93207))))

(declare-fun d!398922 () Bool)

(assert (=> d!398922 e!890157))

(declare-fun c!229529 () Bool)

(assert (=> d!398922 (= c!229529 ((_ is EmptyExpr!3761) (regex!2447 (rule!4210 t1!34))))))

(declare-fun lt!464109 () Bool)

(assert (=> d!398922 (= lt!464109 e!890158)))

(declare-fun c!229531 () Bool)

(assert (=> d!398922 (= c!229531 (isEmpty!8575 lt!463936))))

(assert (=> d!398922 (validRegex!1641 (regex!2447 (rule!4210 t1!34)))))

(assert (=> d!398922 (= (matchR!1752 (regex!2447 (rule!4210 t1!34)) lt!463936) lt!464109)))

(declare-fun b!1393936 () Bool)

(declare-fun res!629440 () Bool)

(assert (=> b!1393936 (=> res!629440 e!890153)))

(assert (=> b!1393936 (= res!629440 e!890159)))

(declare-fun res!629442 () Bool)

(assert (=> b!1393936 (=> (not res!629442) (not e!890159))))

(assert (=> b!1393936 (= res!629442 lt!464109)))

(declare-fun b!1393937 () Bool)

(assert (=> b!1393937 (= e!890157 (= lt!464109 call!93207))))

(declare-fun b!1393938 () Bool)

(assert (=> b!1393938 (= e!890155 (not lt!464109))))

(declare-fun b!1393939 () Bool)

(assert (=> b!1393939 (= e!890154 (not (= (head!2553 lt!463936) (c!229437 (regex!2447 (rule!4210 t1!34))))))))

(declare-fun b!1393940 () Bool)

(declare-fun e!890156 () Bool)

(assert (=> b!1393940 (= e!890153 e!890156)))

(declare-fun res!629439 () Bool)

(assert (=> b!1393940 (=> (not res!629439) (not e!890156))))

(assert (=> b!1393940 (= res!629439 (not lt!464109))))

(declare-fun b!1393941 () Bool)

(assert (=> b!1393941 (= e!890158 (matchR!1752 (derivativeStep!979 (regex!2447 (rule!4210 t1!34)) (head!2553 lt!463936)) (tail!2026 lt!463936)))))

(declare-fun b!1393942 () Bool)

(assert (=> b!1393942 (= e!890156 e!890154)))

(declare-fun res!629441 () Bool)

(assert (=> b!1393942 (=> res!629441 e!890154)))

(assert (=> b!1393942 (= res!629441 call!93207)))

(assert (= (and d!398922 c!229531) b!1393929))

(assert (= (and d!398922 (not c!229531)) b!1393941))

(assert (= (and d!398922 c!229529) b!1393937))

(assert (= (and d!398922 (not c!229529)) b!1393931))

(assert (= (and b!1393931 c!229530) b!1393938))

(assert (= (and b!1393931 (not c!229530)) b!1393934))

(assert (= (and b!1393934 (not res!629446)) b!1393936))

(assert (= (and b!1393936 res!629442) b!1393935))

(assert (= (and b!1393935 res!629444) b!1393933))

(assert (= (and b!1393933 res!629443) b!1393932))

(assert (= (and b!1393936 (not res!629440)) b!1393940))

(assert (= (and b!1393940 res!629439) b!1393942))

(assert (= (and b!1393942 (not res!629441)) b!1393930))

(assert (= (and b!1393930 (not res!629445)) b!1393939))

(assert (= (or b!1393937 b!1393942 b!1393935) bm!93202))

(assert (=> b!1393932 m!1569529))

(assert (=> b!1393939 m!1569529))

(assert (=> b!1393941 m!1569529))

(assert (=> b!1393941 m!1569529))

(declare-fun m!1570263 () Bool)

(assert (=> b!1393941 m!1570263))

(declare-fun m!1570265 () Bool)

(assert (=> b!1393941 m!1570265))

(assert (=> b!1393941 m!1570263))

(assert (=> b!1393941 m!1570265))

(declare-fun m!1570267 () Bool)

(assert (=> b!1393941 m!1570267))

(declare-fun m!1570269 () Bool)

(assert (=> d!398922 m!1570269))

(declare-fun m!1570271 () Bool)

(assert (=> d!398922 m!1570271))

(assert (=> bm!93202 m!1570269))

(declare-fun m!1570273 () Bool)

(assert (=> b!1393929 m!1570273))

(assert (=> b!1393933 m!1570265))

(assert (=> b!1393933 m!1570265))

(declare-fun m!1570275 () Bool)

(assert (=> b!1393933 m!1570275))

(assert (=> b!1393930 m!1570265))

(assert (=> b!1393930 m!1570265))

(assert (=> b!1393930 m!1570275))

(assert (=> b!1393456 d!398922))

(declare-fun d!398926 () Bool)

(assert (=> d!398926 (dynLambda!6511 lambda!60385 (rule!4210 t2!34))))

(declare-fun lt!464114 () Unit!20409)

(declare-fun choose!8569 (List!14198 Int Rule!4694) Unit!20409)

(assert (=> d!398926 (= lt!464114 (choose!8569 rules!2550 lambda!60385 (rule!4210 t2!34)))))

(declare-fun e!890167 () Bool)

(assert (=> d!398926 e!890167))

(declare-fun res!629451 () Bool)

(assert (=> d!398926 (=> (not res!629451) (not e!890167))))

(declare-fun forall!3438 (List!14198 Int) Bool)

(assert (=> d!398926 (= res!629451 (forall!3438 rules!2550 lambda!60385))))

(assert (=> d!398926 (= (forallContained!642 rules!2550 lambda!60385 (rule!4210 t2!34)) lt!464114)))

(declare-fun b!1393955 () Bool)

(assert (=> b!1393955 (= e!890167 (contains!2723 rules!2550 (rule!4210 t2!34)))))

(assert (= (and d!398926 res!629451) b!1393955))

(declare-fun b_lambda!43525 () Bool)

(assert (=> (not b_lambda!43525) (not d!398926)))

(declare-fun m!1570277 () Bool)

(assert (=> d!398926 m!1570277))

(declare-fun m!1570279 () Bool)

(assert (=> d!398926 m!1570279))

(declare-fun m!1570281 () Bool)

(assert (=> d!398926 m!1570281))

(assert (=> b!1393955 m!1569625))

(assert (=> b!1393456 d!398926))

(declare-fun d!398928 () Bool)

(assert (=> d!398928 (dynLambda!6511 lambda!60385 (rule!4210 t1!34))))

(declare-fun lt!464117 () Unit!20409)

(assert (=> d!398928 (= lt!464117 (choose!8569 rules!2550 lambda!60385 (rule!4210 t1!34)))))

(declare-fun e!890169 () Bool)

(assert (=> d!398928 e!890169))

(declare-fun res!629452 () Bool)

(assert (=> d!398928 (=> (not res!629452) (not e!890169))))

(assert (=> d!398928 (= res!629452 (forall!3438 rules!2550 lambda!60385))))

(assert (=> d!398928 (= (forallContained!642 rules!2550 lambda!60385 (rule!4210 t1!34)) lt!464117)))

(declare-fun b!1393956 () Bool)

(assert (=> b!1393956 (= e!890169 (contains!2723 rules!2550 (rule!4210 t1!34)))))

(assert (= (and d!398928 res!629452) b!1393956))

(declare-fun b_lambda!43527 () Bool)

(assert (=> (not b_lambda!43527) (not d!398928)))

(declare-fun m!1570283 () Bool)

(assert (=> d!398928 m!1570283))

(declare-fun m!1570285 () Bool)

(assert (=> d!398928 m!1570285))

(assert (=> d!398928 m!1570281))

(assert (=> b!1393956 m!1569517))

(assert (=> b!1393456 d!398928))

(declare-fun d!398930 () Bool)

(assert (=> d!398930 (dynLambda!6511 lambda!60385 lt!463928)))

(declare-fun lt!464118 () Unit!20409)

(assert (=> d!398930 (= lt!464118 (choose!8569 rules!2550 lambda!60385 lt!463928))))

(declare-fun e!890172 () Bool)

(assert (=> d!398930 e!890172))

(declare-fun res!629455 () Bool)

(assert (=> d!398930 (=> (not res!629455) (not e!890172))))

(assert (=> d!398930 (= res!629455 (forall!3438 rules!2550 lambda!60385))))

(assert (=> d!398930 (= (forallContained!642 rules!2550 lambda!60385 lt!463928) lt!464118)))

(declare-fun b!1393959 () Bool)

(assert (=> b!1393959 (= e!890172 (contains!2723 rules!2550 lt!463928))))

(assert (= (and d!398930 res!629455) b!1393959))

(declare-fun b_lambda!43529 () Bool)

(assert (=> (not b_lambda!43529) (not d!398930)))

(declare-fun m!1570287 () Bool)

(assert (=> d!398930 m!1570287))

(declare-fun m!1570289 () Bool)

(assert (=> d!398930 m!1570289))

(assert (=> d!398930 m!1570281))

(assert (=> b!1393959 m!1569623))

(assert (=> b!1393456 d!398930))

(declare-fun b!1394045 () Bool)

(declare-fun res!629484 () Bool)

(declare-fun e!890218 () Bool)

(assert (=> b!1394045 (=> (not res!629484) (not e!890218))))

(declare-fun lt!464136 () Option!2710)

(declare-fun get!4384 (Option!2710) tuple2!13742)

(assert (=> b!1394045 (= res!629484 (= (list!5493 (charsOf!1419 (_1!7757 (get!4384 lt!464136)))) (originalCharacters!3309 (_1!7757 (get!4384 lt!464136)))))))

(declare-fun b!1394046 () Bool)

(declare-fun e!890219 () Option!2710)

(declare-fun lt!464132 () Option!2710)

(declare-fun lt!464134 () Option!2710)

(assert (=> b!1394046 (= e!890219 (ite (and ((_ is None!2709) lt!464132) ((_ is None!2709) lt!464134)) None!2709 (ite ((_ is None!2709) lt!464134) lt!464132 (ite ((_ is None!2709) lt!464132) lt!464134 (ite (>= (size!11617 (_1!7757 (v!21605 lt!464132))) (size!11617 (_1!7757 (v!21605 lt!464134)))) lt!464132 lt!464134)))))))

(declare-fun call!93211 () Option!2710)

(assert (=> b!1394046 (= lt!464132 call!93211)))

(assert (=> b!1394046 (= lt!464134 (maxPrefix!1116 thiss!19762 (t!122579 rules!2550) lt!463936))))

(declare-fun b!1394048 () Bool)

(declare-fun e!890217 () Bool)

(assert (=> b!1394048 (= e!890217 e!890218)))

(declare-fun res!629487 () Bool)

(assert (=> b!1394048 (=> (not res!629487) (not e!890218))))

(declare-fun isDefined!2235 (Option!2710) Bool)

(assert (=> b!1394048 (= res!629487 (isDefined!2235 lt!464136))))

(declare-fun b!1394049 () Bool)

(declare-fun res!629489 () Bool)

(assert (=> b!1394049 (=> (not res!629489) (not e!890218))))

(assert (=> b!1394049 (= res!629489 (= (++!3674 (list!5493 (charsOf!1419 (_1!7757 (get!4384 lt!464136)))) (_2!7757 (get!4384 lt!464136))) lt!463936))))

(declare-fun b!1394050 () Bool)

(declare-fun res!629485 () Bool)

(assert (=> b!1394050 (=> (not res!629485) (not e!890218))))

(declare-fun size!11625 (List!14197) Int)

(assert (=> b!1394050 (= res!629485 (< (size!11625 (_2!7757 (get!4384 lt!464136))) (size!11625 lt!463936)))))

(declare-fun b!1394051 () Bool)

(declare-fun res!629486 () Bool)

(assert (=> b!1394051 (=> (not res!629486) (not e!890218))))

(declare-fun apply!3573 (TokenValueInjection!4734 BalanceConc!9248) TokenValue!2537)

(declare-fun seqFromList!1651 (List!14197) BalanceConc!9248)

(assert (=> b!1394051 (= res!629486 (= (value!79372 (_1!7757 (get!4384 lt!464136))) (apply!3573 (transformation!2447 (rule!4210 (_1!7757 (get!4384 lt!464136)))) (seqFromList!1651 (originalCharacters!3309 (_1!7757 (get!4384 lt!464136)))))))))

(declare-fun b!1394052 () Bool)

(assert (=> b!1394052 (= e!890219 call!93211)))

(declare-fun b!1394053 () Bool)

(assert (=> b!1394053 (= e!890218 (contains!2723 rules!2550 (rule!4210 (_1!7757 (get!4384 lt!464136)))))))

(declare-fun bm!93206 () Bool)

(declare-fun maxPrefixOneRule!633 (LexerInterface!2142 Rule!4694 List!14197) Option!2710)

(assert (=> bm!93206 (= call!93211 (maxPrefixOneRule!633 thiss!19762 (h!19533 rules!2550) lt!463936))))

(declare-fun d!398932 () Bool)

(assert (=> d!398932 e!890217))

(declare-fun res!629488 () Bool)

(assert (=> d!398932 (=> res!629488 e!890217)))

(declare-fun isEmpty!8577 (Option!2710) Bool)

(assert (=> d!398932 (= res!629488 (isEmpty!8577 lt!464136))))

(assert (=> d!398932 (= lt!464136 e!890219)))

(declare-fun c!229545 () Bool)

(assert (=> d!398932 (= c!229545 (and ((_ is Cons!14132) rules!2550) ((_ is Nil!14132) (t!122579 rules!2550))))))

(declare-fun lt!464133 () Unit!20409)

(declare-fun lt!464135 () Unit!20409)

(assert (=> d!398932 (= lt!464133 lt!464135)))

(declare-fun isPrefix!1148 (List!14197 List!14197) Bool)

(assert (=> d!398932 (isPrefix!1148 lt!463936 lt!463936)))

(declare-fun lemmaIsPrefixRefl!807 (List!14197 List!14197) Unit!20409)

(assert (=> d!398932 (= lt!464135 (lemmaIsPrefixRefl!807 lt!463936 lt!463936))))

(declare-fun rulesValidInductive!790 (LexerInterface!2142 List!14198) Bool)

(assert (=> d!398932 (rulesValidInductive!790 thiss!19762 rules!2550)))

(assert (=> d!398932 (= (maxPrefix!1116 thiss!19762 rules!2550 lt!463936) lt!464136)))

(declare-fun b!1394047 () Bool)

(declare-fun res!629490 () Bool)

(assert (=> b!1394047 (=> (not res!629490) (not e!890218))))

(assert (=> b!1394047 (= res!629490 (matchR!1752 (regex!2447 (rule!4210 (_1!7757 (get!4384 lt!464136)))) (list!5493 (charsOf!1419 (_1!7757 (get!4384 lt!464136))))))))

(assert (= (and d!398932 c!229545) b!1394052))

(assert (= (and d!398932 (not c!229545)) b!1394046))

(assert (= (or b!1394052 b!1394046) bm!93206))

(assert (= (and d!398932 (not res!629488)) b!1394048))

(assert (= (and b!1394048 res!629487) b!1394045))

(assert (= (and b!1394045 res!629484) b!1394050))

(assert (= (and b!1394050 res!629485) b!1394049))

(assert (= (and b!1394049 res!629489) b!1394051))

(assert (= (and b!1394051 res!629486) b!1394047))

(assert (= (and b!1394047 res!629490) b!1394053))

(declare-fun m!1570341 () Bool)

(assert (=> bm!93206 m!1570341))

(declare-fun m!1570343 () Bool)

(assert (=> b!1394047 m!1570343))

(declare-fun m!1570345 () Bool)

(assert (=> b!1394047 m!1570345))

(assert (=> b!1394047 m!1570345))

(declare-fun m!1570347 () Bool)

(assert (=> b!1394047 m!1570347))

(assert (=> b!1394047 m!1570347))

(declare-fun m!1570349 () Bool)

(assert (=> b!1394047 m!1570349))

(declare-fun m!1570351 () Bool)

(assert (=> b!1394048 m!1570351))

(declare-fun m!1570353 () Bool)

(assert (=> d!398932 m!1570353))

(declare-fun m!1570355 () Bool)

(assert (=> d!398932 m!1570355))

(declare-fun m!1570357 () Bool)

(assert (=> d!398932 m!1570357))

(declare-fun m!1570359 () Bool)

(assert (=> d!398932 m!1570359))

(assert (=> b!1394053 m!1570343))

(declare-fun m!1570361 () Bool)

(assert (=> b!1394053 m!1570361))

(assert (=> b!1394050 m!1570343))

(declare-fun m!1570363 () Bool)

(assert (=> b!1394050 m!1570363))

(declare-fun m!1570365 () Bool)

(assert (=> b!1394050 m!1570365))

(declare-fun m!1570367 () Bool)

(assert (=> b!1394046 m!1570367))

(assert (=> b!1394051 m!1570343))

(declare-fun m!1570369 () Bool)

(assert (=> b!1394051 m!1570369))

(assert (=> b!1394051 m!1570369))

(declare-fun m!1570371 () Bool)

(assert (=> b!1394051 m!1570371))

(assert (=> b!1394045 m!1570343))

(assert (=> b!1394045 m!1570345))

(assert (=> b!1394045 m!1570345))

(assert (=> b!1394045 m!1570347))

(assert (=> b!1394049 m!1570343))

(assert (=> b!1394049 m!1570345))

(assert (=> b!1394049 m!1570345))

(assert (=> b!1394049 m!1570347))

(assert (=> b!1394049 m!1570347))

(declare-fun m!1570373 () Bool)

(assert (=> b!1394049 m!1570373))

(assert (=> b!1393465 d!398932))

(declare-fun d!398956 () Bool)

(declare-fun lt!464137 () Bool)

(assert (=> d!398956 (= lt!464137 (isEmpty!8575 (list!5493 (_2!7759 lt!463926))))))

(assert (=> d!398956 (= lt!464137 (isEmpty!8576 (c!229436 (_2!7759 lt!463926))))))

(assert (=> d!398956 (= (isEmpty!8569 (_2!7759 lt!463926)) lt!464137)))

(declare-fun bs!337779 () Bool)

(assert (= bs!337779 d!398956))

(declare-fun m!1570375 () Bool)

(assert (=> bs!337779 m!1570375))

(assert (=> bs!337779 m!1570375))

(declare-fun m!1570377 () Bool)

(assert (=> bs!337779 m!1570377))

(declare-fun m!1570379 () Bool)

(assert (=> bs!337779 m!1570379))

(assert (=> b!1393486 d!398956))

(declare-fun b!1394054 () Bool)

(declare-fun e!890225 () Bool)

(assert (=> b!1394054 (= e!890225 (nullable!1221 lt!463944))))

(declare-fun bm!93207 () Bool)

(declare-fun call!93212 () Bool)

(assert (=> bm!93207 (= call!93212 (isEmpty!8575 lt!463927))))

(declare-fun b!1394055 () Bool)

(declare-fun res!629497 () Bool)

(declare-fun e!890221 () Bool)

(assert (=> b!1394055 (=> res!629497 e!890221)))

(assert (=> b!1394055 (= res!629497 (not (isEmpty!8575 (tail!2026 lt!463927))))))

(declare-fun b!1394056 () Bool)

(declare-fun e!890224 () Bool)

(declare-fun e!890222 () Bool)

(assert (=> b!1394056 (= e!890224 e!890222)))

(declare-fun c!229547 () Bool)

(assert (=> b!1394056 (= c!229547 ((_ is EmptyLang!3761) lt!463944))))

(declare-fun b!1394057 () Bool)

(declare-fun e!890226 () Bool)

(assert (=> b!1394057 (= e!890226 (= (head!2553 lt!463927) (c!229437 lt!463944)))))

(declare-fun b!1394058 () Bool)

(declare-fun res!629495 () Bool)

(assert (=> b!1394058 (=> (not res!629495) (not e!890226))))

(assert (=> b!1394058 (= res!629495 (isEmpty!8575 (tail!2026 lt!463927)))))

(declare-fun b!1394059 () Bool)

(declare-fun res!629498 () Bool)

(declare-fun e!890220 () Bool)

(assert (=> b!1394059 (=> res!629498 e!890220)))

(assert (=> b!1394059 (= res!629498 (not ((_ is ElementMatch!3761) lt!463944)))))

(assert (=> b!1394059 (= e!890222 e!890220)))

(declare-fun b!1394060 () Bool)

(declare-fun res!629496 () Bool)

(assert (=> b!1394060 (=> (not res!629496) (not e!890226))))

(assert (=> b!1394060 (= res!629496 (not call!93212))))

(declare-fun d!398958 () Bool)

(assert (=> d!398958 e!890224))

(declare-fun c!229546 () Bool)

(assert (=> d!398958 (= c!229546 ((_ is EmptyExpr!3761) lt!463944))))

(declare-fun lt!464138 () Bool)

(assert (=> d!398958 (= lt!464138 e!890225)))

(declare-fun c!229548 () Bool)

(assert (=> d!398958 (= c!229548 (isEmpty!8575 lt!463927))))

(assert (=> d!398958 (validRegex!1641 lt!463944)))

(assert (=> d!398958 (= (matchR!1752 lt!463944 lt!463927) lt!464138)))

(declare-fun b!1394061 () Bool)

(declare-fun res!629492 () Bool)

(assert (=> b!1394061 (=> res!629492 e!890220)))

(assert (=> b!1394061 (= res!629492 e!890226)))

(declare-fun res!629494 () Bool)

(assert (=> b!1394061 (=> (not res!629494) (not e!890226))))

(assert (=> b!1394061 (= res!629494 lt!464138)))

(declare-fun b!1394062 () Bool)

(assert (=> b!1394062 (= e!890224 (= lt!464138 call!93212))))

(declare-fun b!1394063 () Bool)

(assert (=> b!1394063 (= e!890222 (not lt!464138))))

(declare-fun b!1394064 () Bool)

(assert (=> b!1394064 (= e!890221 (not (= (head!2553 lt!463927) (c!229437 lt!463944))))))

(declare-fun b!1394065 () Bool)

(declare-fun e!890223 () Bool)

(assert (=> b!1394065 (= e!890220 e!890223)))

(declare-fun res!629491 () Bool)

(assert (=> b!1394065 (=> (not res!629491) (not e!890223))))

(assert (=> b!1394065 (= res!629491 (not lt!464138))))

(declare-fun b!1394066 () Bool)

(assert (=> b!1394066 (= e!890225 (matchR!1752 (derivativeStep!979 lt!463944 (head!2553 lt!463927)) (tail!2026 lt!463927)))))

(declare-fun b!1394067 () Bool)

(assert (=> b!1394067 (= e!890223 e!890221)))

(declare-fun res!629493 () Bool)

(assert (=> b!1394067 (=> res!629493 e!890221)))

(assert (=> b!1394067 (= res!629493 call!93212)))

(assert (= (and d!398958 c!229548) b!1394054))

(assert (= (and d!398958 (not c!229548)) b!1394066))

(assert (= (and d!398958 c!229546) b!1394062))

(assert (= (and d!398958 (not c!229546)) b!1394056))

(assert (= (and b!1394056 c!229547) b!1394063))

(assert (= (and b!1394056 (not c!229547)) b!1394059))

(assert (= (and b!1394059 (not res!629498)) b!1394061))

(assert (= (and b!1394061 res!629494) b!1394060))

(assert (= (and b!1394060 res!629496) b!1394058))

(assert (= (and b!1394058 res!629495) b!1394057))

(assert (= (and b!1394061 (not res!629492)) b!1394065))

(assert (= (and b!1394065 res!629491) b!1394067))

(assert (= (and b!1394067 (not res!629493)) b!1394055))

(assert (= (and b!1394055 (not res!629497)) b!1394064))

(assert (= (or b!1394062 b!1394067 b!1394060) bm!93207))

(declare-fun m!1570381 () Bool)

(assert (=> b!1394057 m!1570381))

(assert (=> b!1394064 m!1570381))

(assert (=> b!1394066 m!1570381))

(assert (=> b!1394066 m!1570381))

(declare-fun m!1570383 () Bool)

(assert (=> b!1394066 m!1570383))

(declare-fun m!1570385 () Bool)

(assert (=> b!1394066 m!1570385))

(assert (=> b!1394066 m!1570383))

(assert (=> b!1394066 m!1570385))

(declare-fun m!1570387 () Bool)

(assert (=> b!1394066 m!1570387))

(declare-fun m!1570389 () Bool)

(assert (=> d!398958 m!1570389))

(declare-fun m!1570391 () Bool)

(assert (=> d!398958 m!1570391))

(assert (=> bm!93207 m!1570389))

(declare-fun m!1570393 () Bool)

(assert (=> b!1394054 m!1570393))

(assert (=> b!1394058 m!1570385))

(assert (=> b!1394058 m!1570385))

(declare-fun m!1570395 () Bool)

(assert (=> b!1394058 m!1570395))

(assert (=> b!1394055 m!1570385))

(assert (=> b!1394055 m!1570385))

(assert (=> b!1394055 m!1570395))

(assert (=> b!1393487 d!398958))

(declare-fun d!398960 () Bool)

(declare-fun res!629503 () Bool)

(declare-fun e!890229 () Bool)

(assert (=> d!398960 (=> (not res!629503) (not e!890229))))

(assert (=> d!398960 (= res!629503 (not (isEmpty!8575 (originalCharacters!3309 t1!34))))))

(assert (=> d!398960 (= (inv!18468 t1!34) e!890229)))

(declare-fun b!1394072 () Bool)

(declare-fun res!629504 () Bool)

(assert (=> b!1394072 (=> (not res!629504) (not e!890229))))

(declare-fun dynLambda!6514 (Int TokenValue!2537) BalanceConc!9248)

(assert (=> b!1394072 (= res!629504 (= (originalCharacters!3309 t1!34) (list!5493 (dynLambda!6514 (toChars!3597 (transformation!2447 (rule!4210 t1!34))) (value!79372 t1!34)))))))

(declare-fun b!1394073 () Bool)

(assert (=> b!1394073 (= e!890229 (= (size!11617 t1!34) (size!11625 (originalCharacters!3309 t1!34))))))

(assert (= (and d!398960 res!629503) b!1394072))

(assert (= (and b!1394072 res!629504) b!1394073))

(declare-fun b_lambda!43561 () Bool)

(assert (=> (not b_lambda!43561) (not b!1394072)))

(declare-fun t!122603 () Bool)

(declare-fun tb!72937 () Bool)

(assert (=> (and b!1393483 (= (toChars!3597 (transformation!2447 (rule!4210 t2!34))) (toChars!3597 (transformation!2447 (rule!4210 t1!34)))) t!122603) tb!72937))

(declare-fun b!1394078 () Bool)

(declare-fun e!890232 () Bool)

(declare-fun tp!397600 () Bool)

(declare-fun inv!18471 (Conc!4654) Bool)

(assert (=> b!1394078 (= e!890232 (and (inv!18471 (c!229436 (dynLambda!6514 (toChars!3597 (transformation!2447 (rule!4210 t1!34))) (value!79372 t1!34)))) tp!397600))))

(declare-fun result!88630 () Bool)

(declare-fun inv!18472 (BalanceConc!9248) Bool)

(assert (=> tb!72937 (= result!88630 (and (inv!18472 (dynLambda!6514 (toChars!3597 (transformation!2447 (rule!4210 t1!34))) (value!79372 t1!34))) e!890232))))

(assert (= tb!72937 b!1394078))

(declare-fun m!1570397 () Bool)

(assert (=> b!1394078 m!1570397))

(declare-fun m!1570399 () Bool)

(assert (=> tb!72937 m!1570399))

(assert (=> b!1394072 t!122603))

(declare-fun b_and!93339 () Bool)

(assert (= b_and!93301 (and (=> t!122603 result!88630) b_and!93339)))

(declare-fun t!122605 () Bool)

(declare-fun tb!72939 () Bool)

(assert (=> (and b!1393484 (= (toChars!3597 (transformation!2447 (rule!4210 t1!34))) (toChars!3597 (transformation!2447 (rule!4210 t1!34)))) t!122605) tb!72939))

(declare-fun result!88634 () Bool)

(assert (= result!88634 result!88630))

(assert (=> b!1394072 t!122605))

(declare-fun b_and!93341 () Bool)

(assert (= b_and!93305 (and (=> t!122605 result!88634) b_and!93341)))

(declare-fun t!122607 () Bool)

(declare-fun tb!72941 () Bool)

(assert (=> (and b!1393461 (= (toChars!3597 (transformation!2447 (h!19533 rules!2550))) (toChars!3597 (transformation!2447 (rule!4210 t1!34)))) t!122607) tb!72941))

(declare-fun result!88636 () Bool)

(assert (= result!88636 result!88630))

(assert (=> b!1394072 t!122607))

(declare-fun b_and!93343 () Bool)

(assert (= b_and!93309 (and (=> t!122607 result!88636) b_and!93343)))

(declare-fun m!1570401 () Bool)

(assert (=> d!398960 m!1570401))

(declare-fun m!1570403 () Bool)

(assert (=> b!1394072 m!1570403))

(assert (=> b!1394072 m!1570403))

(declare-fun m!1570405 () Bool)

(assert (=> b!1394072 m!1570405))

(declare-fun m!1570407 () Bool)

(assert (=> b!1394073 m!1570407))

(assert (=> start!126782 d!398960))

(declare-fun d!398962 () Bool)

(declare-fun res!629505 () Bool)

(declare-fun e!890233 () Bool)

(assert (=> d!398962 (=> (not res!629505) (not e!890233))))

(assert (=> d!398962 (= res!629505 (not (isEmpty!8575 (originalCharacters!3309 t2!34))))))

(assert (=> d!398962 (= (inv!18468 t2!34) e!890233)))

(declare-fun b!1394079 () Bool)

(declare-fun res!629506 () Bool)

(assert (=> b!1394079 (=> (not res!629506) (not e!890233))))

(assert (=> b!1394079 (= res!629506 (= (originalCharacters!3309 t2!34) (list!5493 (dynLambda!6514 (toChars!3597 (transformation!2447 (rule!4210 t2!34))) (value!79372 t2!34)))))))

(declare-fun b!1394080 () Bool)

(assert (=> b!1394080 (= e!890233 (= (size!11617 t2!34) (size!11625 (originalCharacters!3309 t2!34))))))

(assert (= (and d!398962 res!629505) b!1394079))

(assert (= (and b!1394079 res!629506) b!1394080))

(declare-fun b_lambda!43563 () Bool)

(assert (=> (not b_lambda!43563) (not b!1394079)))

(declare-fun t!122609 () Bool)

(declare-fun tb!72943 () Bool)

(assert (=> (and b!1393483 (= (toChars!3597 (transformation!2447 (rule!4210 t2!34))) (toChars!3597 (transformation!2447 (rule!4210 t2!34)))) t!122609) tb!72943))

(declare-fun b!1394081 () Bool)

(declare-fun e!890234 () Bool)

(declare-fun tp!397601 () Bool)

(assert (=> b!1394081 (= e!890234 (and (inv!18471 (c!229436 (dynLambda!6514 (toChars!3597 (transformation!2447 (rule!4210 t2!34))) (value!79372 t2!34)))) tp!397601))))

(declare-fun result!88638 () Bool)

(assert (=> tb!72943 (= result!88638 (and (inv!18472 (dynLambda!6514 (toChars!3597 (transformation!2447 (rule!4210 t2!34))) (value!79372 t2!34))) e!890234))))

(assert (= tb!72943 b!1394081))

(declare-fun m!1570409 () Bool)

(assert (=> b!1394081 m!1570409))

(declare-fun m!1570411 () Bool)

(assert (=> tb!72943 m!1570411))

(assert (=> b!1394079 t!122609))

(declare-fun b_and!93345 () Bool)

(assert (= b_and!93339 (and (=> t!122609 result!88638) b_and!93345)))

(declare-fun t!122611 () Bool)

(declare-fun tb!72945 () Bool)

(assert (=> (and b!1393484 (= (toChars!3597 (transformation!2447 (rule!4210 t1!34))) (toChars!3597 (transformation!2447 (rule!4210 t2!34)))) t!122611) tb!72945))

(declare-fun result!88640 () Bool)

(assert (= result!88640 result!88638))

(assert (=> b!1394079 t!122611))

(declare-fun b_and!93347 () Bool)

(assert (= b_and!93341 (and (=> t!122611 result!88640) b_and!93347)))

(declare-fun tb!72947 () Bool)

(declare-fun t!122613 () Bool)

(assert (=> (and b!1393461 (= (toChars!3597 (transformation!2447 (h!19533 rules!2550))) (toChars!3597 (transformation!2447 (rule!4210 t2!34)))) t!122613) tb!72947))

(declare-fun result!88642 () Bool)

(assert (= result!88642 result!88638))

(assert (=> b!1394079 t!122613))

(declare-fun b_and!93349 () Bool)

(assert (= b_and!93343 (and (=> t!122613 result!88642) b_and!93349)))

(declare-fun m!1570413 () Bool)

(assert (=> d!398962 m!1570413))

(declare-fun m!1570415 () Bool)

(assert (=> b!1394079 m!1570415))

(assert (=> b!1394079 m!1570415))

(declare-fun m!1570417 () Bool)

(assert (=> b!1394079 m!1570417))

(declare-fun m!1570419 () Bool)

(assert (=> b!1394080 m!1570419))

(assert (=> start!126782 d!398962))

(declare-fun b!1394092 () Bool)

(declare-fun e!890242 () Bool)

(declare-fun inv!16 (TokenValue!2537) Bool)

(assert (=> b!1394092 (= e!890242 (inv!16 (value!79372 t2!34)))))

(declare-fun d!398964 () Bool)

(declare-fun c!229554 () Bool)

(assert (=> d!398964 (= c!229554 ((_ is IntegerValue!7611) (value!79372 t2!34)))))

(assert (=> d!398964 (= (inv!21 (value!79372 t2!34)) e!890242)))

(declare-fun b!1394093 () Bool)

(declare-fun res!629509 () Bool)

(declare-fun e!890241 () Bool)

(assert (=> b!1394093 (=> res!629509 e!890241)))

(assert (=> b!1394093 (= res!629509 (not ((_ is IntegerValue!7613) (value!79372 t2!34))))))

(declare-fun e!890243 () Bool)

(assert (=> b!1394093 (= e!890243 e!890241)))

(declare-fun b!1394094 () Bool)

(assert (=> b!1394094 (= e!890242 e!890243)))

(declare-fun c!229553 () Bool)

(assert (=> b!1394094 (= c!229553 ((_ is IntegerValue!7612) (value!79372 t2!34)))))

(declare-fun b!1394095 () Bool)

(declare-fun inv!17 (TokenValue!2537) Bool)

(assert (=> b!1394095 (= e!890243 (inv!17 (value!79372 t2!34)))))

(declare-fun b!1394096 () Bool)

(declare-fun inv!15 (TokenValue!2537) Bool)

(assert (=> b!1394096 (= e!890241 (inv!15 (value!79372 t2!34)))))

(assert (= (and d!398964 c!229554) b!1394092))

(assert (= (and d!398964 (not c!229554)) b!1394094))

(assert (= (and b!1394094 c!229553) b!1394095))

(assert (= (and b!1394094 (not c!229553)) b!1394093))

(assert (= (and b!1394093 (not res!629509)) b!1394096))

(declare-fun m!1570421 () Bool)

(assert (=> b!1394092 m!1570421))

(declare-fun m!1570423 () Bool)

(assert (=> b!1394095 m!1570423))

(declare-fun m!1570425 () Bool)

(assert (=> b!1394096 m!1570425))

(assert (=> b!1393485 d!398964))

(declare-fun b!1394097 () Bool)

(declare-fun res!629510 () Bool)

(declare-fun e!890245 () Bool)

(assert (=> b!1394097 (=> (not res!629510) (not e!890245))))

(declare-fun lt!464143 () Option!2710)

(assert (=> b!1394097 (= res!629510 (= (list!5493 (charsOf!1419 (_1!7757 (get!4384 lt!464143)))) (originalCharacters!3309 (_1!7757 (get!4384 lt!464143)))))))

(declare-fun b!1394098 () Bool)

(declare-fun e!890246 () Option!2710)

(declare-fun lt!464139 () Option!2710)

(declare-fun lt!464141 () Option!2710)

(assert (=> b!1394098 (= e!890246 (ite (and ((_ is None!2709) lt!464139) ((_ is None!2709) lt!464141)) None!2709 (ite ((_ is None!2709) lt!464141) lt!464139 (ite ((_ is None!2709) lt!464139) lt!464141 (ite (>= (size!11617 (_1!7757 (v!21605 lt!464139))) (size!11617 (_1!7757 (v!21605 lt!464141)))) lt!464139 lt!464141)))))))

(declare-fun call!93213 () Option!2710)

(assert (=> b!1394098 (= lt!464139 call!93213)))

(assert (=> b!1394098 (= lt!464141 (maxPrefix!1116 thiss!19762 (t!122579 rules!2550) lt!463933))))

(declare-fun b!1394100 () Bool)

(declare-fun e!890244 () Bool)

(assert (=> b!1394100 (= e!890244 e!890245)))

(declare-fun res!629513 () Bool)

(assert (=> b!1394100 (=> (not res!629513) (not e!890245))))

(assert (=> b!1394100 (= res!629513 (isDefined!2235 lt!464143))))

(declare-fun b!1394101 () Bool)

(declare-fun res!629515 () Bool)

(assert (=> b!1394101 (=> (not res!629515) (not e!890245))))

(assert (=> b!1394101 (= res!629515 (= (++!3674 (list!5493 (charsOf!1419 (_1!7757 (get!4384 lt!464143)))) (_2!7757 (get!4384 lt!464143))) lt!463933))))

(declare-fun b!1394102 () Bool)

(declare-fun res!629511 () Bool)

(assert (=> b!1394102 (=> (not res!629511) (not e!890245))))

(assert (=> b!1394102 (= res!629511 (< (size!11625 (_2!7757 (get!4384 lt!464143))) (size!11625 lt!463933)))))

(declare-fun b!1394103 () Bool)

(declare-fun res!629512 () Bool)

(assert (=> b!1394103 (=> (not res!629512) (not e!890245))))

(assert (=> b!1394103 (= res!629512 (= (value!79372 (_1!7757 (get!4384 lt!464143))) (apply!3573 (transformation!2447 (rule!4210 (_1!7757 (get!4384 lt!464143)))) (seqFromList!1651 (originalCharacters!3309 (_1!7757 (get!4384 lt!464143)))))))))

(declare-fun b!1394104 () Bool)

(assert (=> b!1394104 (= e!890246 call!93213)))

(declare-fun b!1394105 () Bool)

(assert (=> b!1394105 (= e!890245 (contains!2723 rules!2550 (rule!4210 (_1!7757 (get!4384 lt!464143)))))))

(declare-fun bm!93208 () Bool)

(assert (=> bm!93208 (= call!93213 (maxPrefixOneRule!633 thiss!19762 (h!19533 rules!2550) lt!463933))))

(declare-fun d!398966 () Bool)

(assert (=> d!398966 e!890244))

(declare-fun res!629514 () Bool)

(assert (=> d!398966 (=> res!629514 e!890244)))

(assert (=> d!398966 (= res!629514 (isEmpty!8577 lt!464143))))

(assert (=> d!398966 (= lt!464143 e!890246)))

(declare-fun c!229555 () Bool)

(assert (=> d!398966 (= c!229555 (and ((_ is Cons!14132) rules!2550) ((_ is Nil!14132) (t!122579 rules!2550))))))

(declare-fun lt!464140 () Unit!20409)

(declare-fun lt!464142 () Unit!20409)

(assert (=> d!398966 (= lt!464140 lt!464142)))

(assert (=> d!398966 (isPrefix!1148 lt!463933 lt!463933)))

(assert (=> d!398966 (= lt!464142 (lemmaIsPrefixRefl!807 lt!463933 lt!463933))))

(assert (=> d!398966 (rulesValidInductive!790 thiss!19762 rules!2550)))

(assert (=> d!398966 (= (maxPrefix!1116 thiss!19762 rules!2550 lt!463933) lt!464143)))

(declare-fun b!1394099 () Bool)

(declare-fun res!629516 () Bool)

(assert (=> b!1394099 (=> (not res!629516) (not e!890245))))

(assert (=> b!1394099 (= res!629516 (matchR!1752 (regex!2447 (rule!4210 (_1!7757 (get!4384 lt!464143)))) (list!5493 (charsOf!1419 (_1!7757 (get!4384 lt!464143))))))))

(assert (= (and d!398966 c!229555) b!1394104))

(assert (= (and d!398966 (not c!229555)) b!1394098))

(assert (= (or b!1394104 b!1394098) bm!93208))

(assert (= (and d!398966 (not res!629514)) b!1394100))

(assert (= (and b!1394100 res!629513) b!1394097))

(assert (= (and b!1394097 res!629510) b!1394102))

(assert (= (and b!1394102 res!629511) b!1394101))

(assert (= (and b!1394101 res!629515) b!1394103))

(assert (= (and b!1394103 res!629512) b!1394099))

(assert (= (and b!1394099 res!629516) b!1394105))

(declare-fun m!1570427 () Bool)

(assert (=> bm!93208 m!1570427))

(declare-fun m!1570429 () Bool)

(assert (=> b!1394099 m!1570429))

(declare-fun m!1570431 () Bool)

(assert (=> b!1394099 m!1570431))

(assert (=> b!1394099 m!1570431))

(declare-fun m!1570433 () Bool)

(assert (=> b!1394099 m!1570433))

(assert (=> b!1394099 m!1570433))

(declare-fun m!1570435 () Bool)

(assert (=> b!1394099 m!1570435))

(declare-fun m!1570437 () Bool)

(assert (=> b!1394100 m!1570437))

(declare-fun m!1570439 () Bool)

(assert (=> d!398966 m!1570439))

(declare-fun m!1570441 () Bool)

(assert (=> d!398966 m!1570441))

(declare-fun m!1570443 () Bool)

(assert (=> d!398966 m!1570443))

(assert (=> d!398966 m!1570359))

(assert (=> b!1394105 m!1570429))

(declare-fun m!1570445 () Bool)

(assert (=> b!1394105 m!1570445))

(assert (=> b!1394102 m!1570429))

(declare-fun m!1570447 () Bool)

(assert (=> b!1394102 m!1570447))

(declare-fun m!1570449 () Bool)

(assert (=> b!1394102 m!1570449))

(declare-fun m!1570451 () Bool)

(assert (=> b!1394098 m!1570451))

(assert (=> b!1394103 m!1570429))

(declare-fun m!1570453 () Bool)

(assert (=> b!1394103 m!1570453))

(assert (=> b!1394103 m!1570453))

(declare-fun m!1570455 () Bool)

(assert (=> b!1394103 m!1570455))

(assert (=> b!1394097 m!1570429))

(assert (=> b!1394097 m!1570431))

(assert (=> b!1394097 m!1570431))

(assert (=> b!1394097 m!1570433))

(assert (=> b!1394101 m!1570429))

(assert (=> b!1394101 m!1570431))

(assert (=> b!1394101 m!1570431))

(assert (=> b!1394101 m!1570433))

(assert (=> b!1394101 m!1570433))

(declare-fun m!1570457 () Bool)

(assert (=> b!1394101 m!1570457))

(assert (=> b!1393443 d!398966))

(declare-fun d!398968 () Bool)

(declare-fun list!5498 (Conc!4654) List!14197)

(assert (=> d!398968 (= (list!5493 lt!463942) (list!5498 (c!229436 lt!463942)))))

(declare-fun bs!337780 () Bool)

(assert (= bs!337780 d!398968))

(declare-fun m!1570459 () Bool)

(assert (=> bs!337780 m!1570459))

(assert (=> b!1393443 d!398968))

(declare-fun d!398970 () Bool)

(declare-fun lt!464146 () Bool)

(declare-fun content!2086 (List!14200) (InoxSet Regex!3761))

(assert (=> d!398970 (= lt!464146 (select (content!2086 (map!3131 rules!2550 lambda!60382)) lt!463925))))

(declare-fun e!890252 () Bool)

(assert (=> d!398970 (= lt!464146 e!890252)))

(declare-fun res!629521 () Bool)

(assert (=> d!398970 (=> (not res!629521) (not e!890252))))

(assert (=> d!398970 (= res!629521 ((_ is Cons!14134) (map!3131 rules!2550 lambda!60382)))))

(assert (=> d!398970 (= (contains!2725 (map!3131 rules!2550 lambda!60382) lt!463925) lt!464146)))

(declare-fun b!1394110 () Bool)

(declare-fun e!890251 () Bool)

(assert (=> b!1394110 (= e!890252 e!890251)))

(declare-fun res!629522 () Bool)

(assert (=> b!1394110 (=> res!629522 e!890251)))

(assert (=> b!1394110 (= res!629522 (= (h!19535 (map!3131 rules!2550 lambda!60382)) lt!463925))))

(declare-fun b!1394111 () Bool)

(assert (=> b!1394111 (= e!890251 (contains!2725 (t!122581 (map!3131 rules!2550 lambda!60382)) lt!463925))))

(assert (= (and d!398970 res!629521) b!1394110))

(assert (= (and b!1394110 (not res!629522)) b!1394111))

(assert (=> d!398970 m!1569571))

(declare-fun m!1570461 () Bool)

(assert (=> d!398970 m!1570461))

(declare-fun m!1570463 () Bool)

(assert (=> d!398970 m!1570463))

(declare-fun m!1570465 () Bool)

(assert (=> b!1394111 m!1570465))

(assert (=> b!1393464 d!398970))

(declare-fun d!398972 () Bool)

(declare-fun lt!464149 () List!14200)

(declare-fun size!11627 (List!14200) Int)

(declare-fun size!11628 (List!14198) Int)

(assert (=> d!398972 (= (size!11627 lt!464149) (size!11628 rules!2550))))

(declare-fun e!890255 () List!14200)

(assert (=> d!398972 (= lt!464149 e!890255)))

(declare-fun c!229558 () Bool)

(assert (=> d!398972 (= c!229558 ((_ is Nil!14132) rules!2550))))

(assert (=> d!398972 (= (map!3131 rules!2550 lambda!60382) lt!464149)))

(declare-fun b!1394116 () Bool)

(assert (=> b!1394116 (= e!890255 Nil!14134)))

(declare-fun b!1394117 () Bool)

(declare-fun $colon$colon!223 (List!14200 Regex!3761) List!14200)

(declare-fun dynLambda!6515 (Int Rule!4694) Regex!3761)

(assert (=> b!1394117 (= e!890255 ($colon$colon!223 (map!3131 (t!122579 rules!2550) lambda!60382) (dynLambda!6515 lambda!60382 (h!19533 rules!2550))))))

(assert (= (and d!398972 c!229558) b!1394116))

(assert (= (and d!398972 (not c!229558)) b!1394117))

(declare-fun b_lambda!43565 () Bool)

(assert (=> (not b_lambda!43565) (not b!1394117)))

(declare-fun m!1570467 () Bool)

(assert (=> d!398972 m!1570467))

(declare-fun m!1570469 () Bool)

(assert (=> d!398972 m!1570469))

(declare-fun m!1570471 () Bool)

(assert (=> b!1394117 m!1570471))

(declare-fun m!1570473 () Bool)

(assert (=> b!1394117 m!1570473))

(assert (=> b!1394117 m!1570471))

(assert (=> b!1394117 m!1570473))

(declare-fun m!1570475 () Bool)

(assert (=> b!1394117 m!1570475))

(assert (=> b!1393464 d!398972))

(declare-fun b!1394131 () Bool)

(declare-fun lt!464155 () Unit!20409)

(declare-fun Unit!20418 () Unit!20409)

(assert (=> b!1394131 (= lt!464155 Unit!20418)))

(assert (=> b!1394131 false))

(declare-fun e!890265 () Regex!3761)

(declare-fun head!2557 (List!14200) Regex!3761)

(assert (=> b!1394131 (= e!890265 (head!2557 (map!3131 rules!2550 lambda!60382)))))

(declare-fun b!1394132 () Bool)

(declare-fun e!890266 () Regex!3761)

(assert (=> b!1394132 (= e!890266 e!890265)))

(declare-fun c!229564 () Bool)

(assert (=> b!1394132 (= c!229564 ((_ is Cons!14134) (map!3131 rules!2550 lambda!60382)))))

(declare-fun b!1394133 () Bool)

(assert (=> b!1394133 (= e!890266 (h!19535 (map!3131 rules!2550 lambda!60382)))))

(declare-fun b!1394134 () Bool)

(declare-fun lt!464154 () Regex!3761)

(declare-fun e!890264 () Bool)

(assert (=> b!1394134 (= e!890264 (contains!2725 (map!3131 rules!2550 lambda!60382) lt!464154))))

(declare-fun b!1394135 () Bool)

(declare-fun e!890267 () Bool)

(declare-fun dynLambda!6516 (Int Regex!3761) Bool)

(assert (=> b!1394135 (= e!890267 (dynLambda!6516 lambda!60383 (h!19535 (map!3131 rules!2550 lambda!60382))))))

(declare-fun d!398974 () Bool)

(assert (=> d!398974 e!890264))

(declare-fun res!629528 () Bool)

(assert (=> d!398974 (=> (not res!629528) (not e!890264))))

(assert (=> d!398974 (= res!629528 (dynLambda!6516 lambda!60383 lt!464154))))

(assert (=> d!398974 (= lt!464154 e!890266)))

(declare-fun c!229563 () Bool)

(assert (=> d!398974 (= c!229563 e!890267)))

(declare-fun res!629527 () Bool)

(assert (=> d!398974 (=> (not res!629527) (not e!890267))))

(assert (=> d!398974 (= res!629527 ((_ is Cons!14134) (map!3131 rules!2550 lambda!60382)))))

(assert (=> d!398974 (exists!538 (map!3131 rules!2550 lambda!60382) lambda!60383)))

(assert (=> d!398974 (= (getWitness!427 (map!3131 rules!2550 lambda!60382) lambda!60383) lt!464154)))

(declare-fun b!1394130 () Bool)

(assert (=> b!1394130 (= e!890265 (getWitness!427 (t!122581 (map!3131 rules!2550 lambda!60382)) lambda!60383))))

(assert (= (and d!398974 res!629527) b!1394135))

(assert (= (and d!398974 c!229563) b!1394133))

(assert (= (and d!398974 (not c!229563)) b!1394132))

(assert (= (and b!1394132 c!229564) b!1394130))

(assert (= (and b!1394132 (not c!229564)) b!1394131))

(assert (= (and d!398974 res!629528) b!1394134))

(declare-fun b_lambda!43567 () Bool)

(assert (=> (not b_lambda!43567) (not b!1394135)))

(declare-fun b_lambda!43569 () Bool)

(assert (=> (not b_lambda!43569) (not d!398974)))

(declare-fun m!1570477 () Bool)

(assert (=> b!1394130 m!1570477))

(assert (=> b!1394131 m!1569571))

(declare-fun m!1570479 () Bool)

(assert (=> b!1394131 m!1570479))

(assert (=> b!1394134 m!1569571))

(declare-fun m!1570481 () Bool)

(assert (=> b!1394134 m!1570481))

(declare-fun m!1570483 () Bool)

(assert (=> d!398974 m!1570483))

(assert (=> d!398974 m!1569571))

(assert (=> d!398974 m!1569573))

(declare-fun m!1570485 () Bool)

(assert (=> b!1394135 m!1570485))

(assert (=> b!1393464 d!398974))

(declare-fun d!398976 () Bool)

(assert (=> d!398976 (= (inv!18464 (tag!2709 (rule!4210 t2!34))) (= (mod (str.len (value!79371 (tag!2709 (rule!4210 t2!34)))) 2) 0))))

(assert (=> b!1393462 d!398976))

(declare-fun d!398978 () Bool)

(declare-fun res!629531 () Bool)

(declare-fun e!890270 () Bool)

(assert (=> d!398978 (=> (not res!629531) (not e!890270))))

(declare-fun semiInverseModEq!950 (Int Int) Bool)

(assert (=> d!398978 (= res!629531 (semiInverseModEq!950 (toChars!3597 (transformation!2447 (rule!4210 t2!34))) (toValue!3738 (transformation!2447 (rule!4210 t2!34)))))))

(assert (=> d!398978 (= (inv!18467 (transformation!2447 (rule!4210 t2!34))) e!890270)))

(declare-fun b!1394138 () Bool)

(declare-fun equivClasses!909 (Int Int) Bool)

(assert (=> b!1394138 (= e!890270 (equivClasses!909 (toChars!3597 (transformation!2447 (rule!4210 t2!34))) (toValue!3738 (transformation!2447 (rule!4210 t2!34)))))))

(assert (= (and d!398978 res!629531) b!1394138))

(declare-fun m!1570487 () Bool)

(assert (=> d!398978 m!1570487))

(declare-fun m!1570489 () Bool)

(assert (=> b!1394138 m!1570489))

(assert (=> b!1393462 d!398978))

(declare-fun b!1394139 () Bool)

(declare-fun e!890272 () Bool)

(assert (=> b!1394139 (= e!890272 (inv!16 (value!79372 t1!34)))))

(declare-fun d!398980 () Bool)

(declare-fun c!229566 () Bool)

(assert (=> d!398980 (= c!229566 ((_ is IntegerValue!7611) (value!79372 t1!34)))))

(assert (=> d!398980 (= (inv!21 (value!79372 t1!34)) e!890272)))

(declare-fun b!1394140 () Bool)

(declare-fun res!629532 () Bool)

(declare-fun e!890271 () Bool)

(assert (=> b!1394140 (=> res!629532 e!890271)))

(assert (=> b!1394140 (= res!629532 (not ((_ is IntegerValue!7613) (value!79372 t1!34))))))

(declare-fun e!890273 () Bool)

(assert (=> b!1394140 (= e!890273 e!890271)))

(declare-fun b!1394141 () Bool)

(assert (=> b!1394141 (= e!890272 e!890273)))

(declare-fun c!229565 () Bool)

(assert (=> b!1394141 (= c!229565 ((_ is IntegerValue!7612) (value!79372 t1!34)))))

(declare-fun b!1394142 () Bool)

(assert (=> b!1394142 (= e!890273 (inv!17 (value!79372 t1!34)))))

(declare-fun b!1394143 () Bool)

(assert (=> b!1394143 (= e!890271 (inv!15 (value!79372 t1!34)))))

(assert (= (and d!398980 c!229566) b!1394139))

(assert (= (and d!398980 (not c!229566)) b!1394141))

(assert (= (and b!1394141 c!229565) b!1394142))

(assert (= (and b!1394141 (not c!229565)) b!1394140))

(assert (= (and b!1394140 (not res!629532)) b!1394143))

(declare-fun m!1570491 () Bool)

(assert (=> b!1394139 m!1570491))

(declare-fun m!1570493 () Bool)

(assert (=> b!1394142 m!1570493))

(declare-fun m!1570495 () Bool)

(assert (=> b!1394143 m!1570495))

(assert (=> b!1393463 d!398980))

(declare-fun lt!464158 () List!14197)

(declare-fun b!1394155 () Bool)

(declare-fun e!890278 () Bool)

(assert (=> b!1394155 (= e!890278 (or (not (= (getSuffix!607 lt!463927 lt!463919) Nil!14131)) (= lt!464158 lt!463919)))))

(declare-fun b!1394152 () Bool)

(declare-fun e!890279 () List!14197)

(assert (=> b!1394152 (= e!890279 (getSuffix!607 lt!463927 lt!463919))))

(declare-fun b!1394153 () Bool)

(assert (=> b!1394153 (= e!890279 (Cons!14131 (h!19532 lt!463919) (++!3674 (t!122578 lt!463919) (getSuffix!607 lt!463927 lt!463919))))))

(declare-fun d!398982 () Bool)

(assert (=> d!398982 e!890278))

(declare-fun res!629537 () Bool)

(assert (=> d!398982 (=> (not res!629537) (not e!890278))))

(declare-fun content!2087 (List!14197) (InoxSet C!7812))

(assert (=> d!398982 (= res!629537 (= (content!2087 lt!464158) ((_ map or) (content!2087 lt!463919) (content!2087 (getSuffix!607 lt!463927 lt!463919)))))))

(assert (=> d!398982 (= lt!464158 e!890279)))

(declare-fun c!229569 () Bool)

(assert (=> d!398982 (= c!229569 ((_ is Nil!14131) lt!463919))))

(assert (=> d!398982 (= (++!3674 lt!463919 (getSuffix!607 lt!463927 lt!463919)) lt!464158)))

(declare-fun b!1394154 () Bool)

(declare-fun res!629538 () Bool)

(assert (=> b!1394154 (=> (not res!629538) (not e!890278))))

(assert (=> b!1394154 (= res!629538 (= (size!11625 lt!464158) (+ (size!11625 lt!463919) (size!11625 (getSuffix!607 lt!463927 lt!463919)))))))

(assert (= (and d!398982 c!229569) b!1394152))

(assert (= (and d!398982 (not c!229569)) b!1394153))

(assert (= (and d!398982 res!629537) b!1394154))

(assert (= (and b!1394154 res!629538) b!1394155))

(assert (=> b!1394153 m!1569643))

(declare-fun m!1570497 () Bool)

(assert (=> b!1394153 m!1570497))

(declare-fun m!1570499 () Bool)

(assert (=> d!398982 m!1570499))

(declare-fun m!1570501 () Bool)

(assert (=> d!398982 m!1570501))

(assert (=> d!398982 m!1569643))

(declare-fun m!1570503 () Bool)

(assert (=> d!398982 m!1570503))

(declare-fun m!1570505 () Bool)

(assert (=> b!1394154 m!1570505))

(declare-fun m!1570507 () Bool)

(assert (=> b!1394154 m!1570507))

(assert (=> b!1394154 m!1569643))

(declare-fun m!1570509 () Bool)

(assert (=> b!1394154 m!1570509))

(assert (=> b!1393482 d!398982))

(declare-fun d!398984 () Bool)

(declare-fun lt!464161 () List!14197)

(assert (=> d!398984 (= (++!3674 lt!463919 lt!464161) lt!463927)))

(declare-fun e!890282 () List!14197)

(assert (=> d!398984 (= lt!464161 e!890282)))

(declare-fun c!229572 () Bool)

(assert (=> d!398984 (= c!229572 ((_ is Cons!14131) lt!463919))))

(assert (=> d!398984 (>= (size!11625 lt!463927) (size!11625 lt!463919))))

(assert (=> d!398984 (= (getSuffix!607 lt!463927 lt!463919) lt!464161)))

(declare-fun b!1394160 () Bool)

(assert (=> b!1394160 (= e!890282 (getSuffix!607 (tail!2026 lt!463927) (t!122578 lt!463919)))))

(declare-fun b!1394161 () Bool)

(assert (=> b!1394161 (= e!890282 lt!463927)))

(assert (= (and d!398984 c!229572) b!1394160))

(assert (= (and d!398984 (not c!229572)) b!1394161))

(declare-fun m!1570511 () Bool)

(assert (=> d!398984 m!1570511))

(declare-fun m!1570513 () Bool)

(assert (=> d!398984 m!1570513))

(assert (=> d!398984 m!1570507))

(assert (=> b!1394160 m!1570385))

(assert (=> b!1394160 m!1570385))

(declare-fun m!1570515 () Bool)

(assert (=> b!1394160 m!1570515))

(assert (=> b!1393482 d!398984))

(declare-fun d!398986 () Bool)

(declare-fun lt!464164 () List!14197)

(declare-fun dynLambda!6517 (Int List!14197) Bool)

(assert (=> d!398986 (dynLambda!6517 lambda!60381 lt!464164)))

(declare-fun choose!8571 (Int) List!14197)

(assert (=> d!398986 (= lt!464164 (choose!8571 lambda!60381))))

(assert (=> d!398986 (Exists!911 lambda!60381)))

(assert (=> d!398986 (= (pickWitness!214 lambda!60381) lt!464164)))

(declare-fun b_lambda!43571 () Bool)

(assert (=> (not b_lambda!43571) (not d!398986)))

(declare-fun bs!337781 () Bool)

(assert (= bs!337781 d!398986))

(declare-fun m!1570517 () Bool)

(assert (=> bs!337781 m!1570517))

(declare-fun m!1570519 () Bool)

(assert (=> bs!337781 m!1570519))

(assert (=> bs!337781 m!1569541))

(assert (=> b!1393482 d!398986))

(declare-fun d!398988 () Bool)

(declare-fun lt!464167 () Bool)

(assert (=> d!398988 (= lt!464167 (select (content!2087 lt!463927) lt!463923))))

(declare-fun e!890287 () Bool)

(assert (=> d!398988 (= lt!464167 e!890287)))

(declare-fun res!629544 () Bool)

(assert (=> d!398988 (=> (not res!629544) (not e!890287))))

(assert (=> d!398988 (= res!629544 ((_ is Cons!14131) lt!463927))))

(assert (=> d!398988 (= (contains!2724 lt!463927 lt!463923) lt!464167)))

(declare-fun b!1394166 () Bool)

(declare-fun e!890288 () Bool)

(assert (=> b!1394166 (= e!890287 e!890288)))

(declare-fun res!629543 () Bool)

(assert (=> b!1394166 (=> res!629543 e!890288)))

(assert (=> b!1394166 (= res!629543 (= (h!19532 lt!463927) lt!463923))))

(declare-fun b!1394167 () Bool)

(assert (=> b!1394167 (= e!890288 (contains!2724 (t!122578 lt!463927) lt!463923))))

(assert (= (and d!398988 res!629544) b!1394166))

(assert (= (and b!1394166 (not res!629543)) b!1394167))

(declare-fun m!1570521 () Bool)

(assert (=> d!398988 m!1570521))

(declare-fun m!1570523 () Bool)

(assert (=> d!398988 m!1570523))

(declare-fun m!1570525 () Bool)

(assert (=> b!1394167 m!1570525))

(assert (=> b!1393449 d!398988))

(declare-fun d!398990 () Bool)

(declare-fun lt!464168 () Bool)

(assert (=> d!398990 (= lt!464168 (select (content!2087 lt!463927) lt!463930))))

(declare-fun e!890289 () Bool)

(assert (=> d!398990 (= lt!464168 e!890289)))

(declare-fun res!629546 () Bool)

(assert (=> d!398990 (=> (not res!629546) (not e!890289))))

(assert (=> d!398990 (= res!629546 ((_ is Cons!14131) lt!463927))))

(assert (=> d!398990 (= (contains!2724 lt!463927 lt!463930) lt!464168)))

(declare-fun b!1394168 () Bool)

(declare-fun e!890290 () Bool)

(assert (=> b!1394168 (= e!890289 e!890290)))

(declare-fun res!629545 () Bool)

(assert (=> b!1394168 (=> res!629545 e!890290)))

(assert (=> b!1394168 (= res!629545 (= (h!19532 lt!463927) lt!463930))))

(declare-fun b!1394169 () Bool)

(assert (=> b!1394169 (= e!890290 (contains!2724 (t!122578 lt!463927) lt!463930))))

(assert (= (and d!398990 res!629546) b!1394168))

(assert (= (and b!1394168 (not res!629545)) b!1394169))

(assert (=> d!398990 m!1570521))

(declare-fun m!1570527 () Bool)

(assert (=> d!398990 m!1570527))

(declare-fun m!1570529 () Bool)

(assert (=> b!1394169 m!1570529))

(assert (=> b!1393470 d!398990))

(declare-fun d!398992 () Bool)

(assert (=> d!398992 (= (isEmpty!8568 rules!2550) ((_ is Nil!14132) rules!2550))))

(assert (=> b!1393471 d!398992))

(declare-fun d!398994 () Bool)

(assert (=> d!398994 (= (inv!18464 (tag!2709 (rule!4210 t1!34))) (= (mod (str.len (value!79371 (tag!2709 (rule!4210 t1!34)))) 2) 0))))

(assert (=> b!1393469 d!398994))

(declare-fun d!398996 () Bool)

(declare-fun res!629547 () Bool)

(declare-fun e!890291 () Bool)

(assert (=> d!398996 (=> (not res!629547) (not e!890291))))

(assert (=> d!398996 (= res!629547 (semiInverseModEq!950 (toChars!3597 (transformation!2447 (rule!4210 t1!34))) (toValue!3738 (transformation!2447 (rule!4210 t1!34)))))))

(assert (=> d!398996 (= (inv!18467 (transformation!2447 (rule!4210 t1!34))) e!890291)))

(declare-fun b!1394170 () Bool)

(assert (=> b!1394170 (= e!890291 (equivClasses!909 (toChars!3597 (transformation!2447 (rule!4210 t1!34))) (toValue!3738 (transformation!2447 (rule!4210 t1!34)))))))

(assert (= (and d!398996 res!629547) b!1394170))

(declare-fun m!1570531 () Bool)

(assert (=> d!398996 m!1570531))

(declare-fun m!1570533 () Bool)

(assert (=> b!1394170 m!1570533))

(assert (=> b!1393469 d!398996))

(declare-fun d!398998 () Bool)

(declare-fun c!229575 () Bool)

(assert (=> d!398998 (= c!229575 (isEmpty!8575 lt!463919))))

(declare-fun e!890294 () Bool)

(assert (=> d!398998 (= (prefixMatch!270 lt!463944 lt!463919) e!890294)))

(declare-fun b!1394175 () Bool)

(declare-fun lostCause!355 (Regex!3761) Bool)

(assert (=> b!1394175 (= e!890294 (not (lostCause!355 lt!463944)))))

(declare-fun b!1394176 () Bool)

(assert (=> b!1394176 (= e!890294 (prefixMatch!270 (derivativeStep!979 lt!463944 (head!2553 lt!463919)) (tail!2026 lt!463919)))))

(assert (= (and d!398998 c!229575) b!1394175))

(assert (= (and d!398998 (not c!229575)) b!1394176))

(declare-fun m!1570535 () Bool)

(assert (=> d!398998 m!1570535))

(declare-fun m!1570537 () Bool)

(assert (=> b!1394175 m!1570537))

(declare-fun m!1570539 () Bool)

(assert (=> b!1394176 m!1570539))

(assert (=> b!1394176 m!1570539))

(declare-fun m!1570541 () Bool)

(assert (=> b!1394176 m!1570541))

(declare-fun m!1570543 () Bool)

(assert (=> b!1394176 m!1570543))

(assert (=> b!1394176 m!1570541))

(assert (=> b!1394176 m!1570543))

(declare-fun m!1570545 () Bool)

(assert (=> b!1394176 m!1570545))

(assert (=> b!1393448 d!398998))

(declare-fun d!399000 () Bool)

(assert (=> d!399000 (= (list!5493 lt!463935) (list!5498 (c!229436 lt!463935)))))

(declare-fun bs!337782 () Bool)

(assert (= bs!337782 d!399000))

(declare-fun m!1570547 () Bool)

(assert (=> bs!337782 m!1570547))

(assert (=> b!1393448 d!399000))

(declare-fun d!399002 () Bool)

(declare-fun lt!464171 () C!7812)

(declare-fun apply!3574 (List!14197 Int) C!7812)

(assert (=> d!399002 (= lt!464171 (apply!3574 (list!5493 lt!463942) 0))))

(declare-fun apply!3575 (Conc!4654 Int) C!7812)

(assert (=> d!399002 (= lt!464171 (apply!3575 (c!229436 lt!463942) 0))))

(declare-fun e!890297 () Bool)

(assert (=> d!399002 e!890297))

(declare-fun res!629550 () Bool)

(assert (=> d!399002 (=> (not res!629550) (not e!890297))))

(assert (=> d!399002 (= res!629550 (<= 0 0))))

(assert (=> d!399002 (= (apply!3567 lt!463942 0) lt!464171)))

(declare-fun b!1394179 () Bool)

(assert (=> b!1394179 (= e!890297 (< 0 (size!11618 lt!463942)))))

(assert (= (and d!399002 res!629550) b!1394179))

(assert (=> d!399002 m!1569537))

(assert (=> d!399002 m!1569537))

(declare-fun m!1570549 () Bool)

(assert (=> d!399002 m!1570549))

(declare-fun m!1570551 () Bool)

(assert (=> d!399002 m!1570551))

(assert (=> b!1394179 m!1569639))

(assert (=> b!1393448 d!399002))

(declare-fun b!1394183 () Bool)

(declare-fun e!890298 () Bool)

(declare-fun lt!464172 () List!14197)

(assert (=> b!1394183 (= e!890298 (or (not (= (Cons!14131 lt!463923 Nil!14131) Nil!14131)) (= lt!464172 lt!463936)))))

(declare-fun b!1394180 () Bool)

(declare-fun e!890299 () List!14197)

(assert (=> b!1394180 (= e!890299 (Cons!14131 lt!463923 Nil!14131))))

(declare-fun b!1394181 () Bool)

(assert (=> b!1394181 (= e!890299 (Cons!14131 (h!19532 lt!463936) (++!3674 (t!122578 lt!463936) (Cons!14131 lt!463923 Nil!14131))))))

(declare-fun d!399004 () Bool)

(assert (=> d!399004 e!890298))

(declare-fun res!629551 () Bool)

(assert (=> d!399004 (=> (not res!629551) (not e!890298))))

(assert (=> d!399004 (= res!629551 (= (content!2087 lt!464172) ((_ map or) (content!2087 lt!463936) (content!2087 (Cons!14131 lt!463923 Nil!14131)))))))

(assert (=> d!399004 (= lt!464172 e!890299)))

(declare-fun c!229576 () Bool)

(assert (=> d!399004 (= c!229576 ((_ is Nil!14131) lt!463936))))

(assert (=> d!399004 (= (++!3674 lt!463936 (Cons!14131 lt!463923 Nil!14131)) lt!464172)))

(declare-fun b!1394182 () Bool)

(declare-fun res!629552 () Bool)

(assert (=> b!1394182 (=> (not res!629552) (not e!890298))))

(assert (=> b!1394182 (= res!629552 (= (size!11625 lt!464172) (+ (size!11625 lt!463936) (size!11625 (Cons!14131 lt!463923 Nil!14131)))))))

(assert (= (and d!399004 c!229576) b!1394180))

(assert (= (and d!399004 (not c!229576)) b!1394181))

(assert (= (and d!399004 res!629551) b!1394182))

(assert (= (and b!1394182 res!629552) b!1394183))

(declare-fun m!1570553 () Bool)

(assert (=> b!1394181 m!1570553))

(declare-fun m!1570555 () Bool)

(assert (=> d!399004 m!1570555))

(declare-fun m!1570557 () Bool)

(assert (=> d!399004 m!1570557))

(declare-fun m!1570559 () Bool)

(assert (=> d!399004 m!1570559))

(declare-fun m!1570561 () Bool)

(assert (=> b!1394182 m!1570561))

(assert (=> b!1394182 m!1570365))

(declare-fun m!1570563 () Bool)

(assert (=> b!1394182 m!1570563))

(assert (=> b!1393448 d!399004))

(declare-fun d!399006 () Bool)

(declare-fun lt!464175 () BalanceConc!9248)

(assert (=> d!399006 (= (list!5493 lt!464175) (originalCharacters!3309 t1!34))))

(assert (=> d!399006 (= lt!464175 (dynLambda!6514 (toChars!3597 (transformation!2447 (rule!4210 t1!34))) (value!79372 t1!34)))))

(assert (=> d!399006 (= (charsOf!1419 t1!34) lt!464175)))

(declare-fun b_lambda!43573 () Bool)

(assert (=> (not b_lambda!43573) (not d!399006)))

(assert (=> d!399006 t!122603))

(declare-fun b_and!93351 () Bool)

(assert (= b_and!93345 (and (=> t!122603 result!88630) b_and!93351)))

(assert (=> d!399006 t!122605))

(declare-fun b_and!93353 () Bool)

(assert (= b_and!93347 (and (=> t!122605 result!88634) b_and!93353)))

(assert (=> d!399006 t!122607))

(declare-fun b_and!93355 () Bool)

(assert (= b_and!93349 (and (=> t!122607 result!88636) b_and!93355)))

(declare-fun m!1570565 () Bool)

(assert (=> d!399006 m!1570565))

(assert (=> d!399006 m!1570403))

(assert (=> b!1393448 d!399006))

(declare-fun bs!337783 () Bool)

(declare-fun d!399008 () Bool)

(assert (= bs!337783 (and d!399008 b!1393466)))

(declare-fun lambda!60410 () Int)

(assert (=> bs!337783 (= lambda!60410 lambda!60382)))

(declare-fun lt!464178 () Unit!20409)

(declare-fun lemma!149 (List!14198 LexerInterface!2142 List!14198) Unit!20409)

(assert (=> d!399008 (= lt!464178 (lemma!149 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!157 (List!14200) Regex!3761)

(assert (=> d!399008 (= (rulesRegex!330 thiss!19762 rules!2550) (generalisedUnion!157 (map!3131 rules!2550 lambda!60410)))))

(declare-fun bs!337784 () Bool)

(assert (= bs!337784 d!399008))

(declare-fun m!1570567 () Bool)

(assert (=> bs!337784 m!1570567))

(declare-fun m!1570569 () Bool)

(assert (=> bs!337784 m!1570569))

(assert (=> bs!337784 m!1570569))

(declare-fun m!1570571 () Bool)

(assert (=> bs!337784 m!1570571))

(assert (=> b!1393448 d!399008))

(declare-fun bs!337785 () Bool)

(declare-fun d!399010 () Bool)

(assert (= bs!337785 (and d!399010 b!1393489)))

(declare-fun lambda!60413 () Int)

(assert (=> bs!337785 (not (= lambda!60413 lambda!60384))))

(declare-fun bs!337786 () Bool)

(assert (= bs!337786 (and d!399010 b!1393456)))

(assert (=> bs!337786 (not (= lambda!60413 lambda!60385))))

(assert (=> d!399010 true))

(declare-fun order!8661 () Int)

(declare-fun dynLambda!6518 (Int Int) Int)

(assert (=> d!399010 (< (dynLambda!6518 order!8661 lambda!60384) (dynLambda!6518 order!8661 lambda!60413))))

(assert (=> d!399010 (= (exists!539 rules!2550 lambda!60384) (not (forall!3438 rules!2550 lambda!60413)))))

(declare-fun bs!337787 () Bool)

(assert (= bs!337787 d!399010))

(declare-fun m!1570573 () Bool)

(assert (=> bs!337787 m!1570573))

(assert (=> b!1393489 d!399010))

(declare-fun bs!337788 () Bool)

(declare-fun d!399012 () Bool)

(assert (= bs!337788 (and d!399012 b!1393489)))

(declare-fun lambda!60416 () Int)

(assert (=> bs!337788 (not (= lambda!60416 lambda!60384))))

(declare-fun bs!337789 () Bool)

(assert (= bs!337789 (and d!399012 b!1393456)))

(assert (=> bs!337789 (not (= lambda!60416 lambda!60385))))

(declare-fun bs!337790 () Bool)

(assert (= bs!337790 (and d!399012 d!399010)))

(assert (=> bs!337790 (not (= lambda!60416 lambda!60413))))

(assert (=> d!399012 true))

(assert (=> d!399012 true))

(declare-fun order!8663 () Int)

(declare-fun dynLambda!6519 (Int Int) Int)

(assert (=> d!399012 (< (dynLambda!6519 order!8663 lambda!60382) (dynLambda!6518 order!8661 lambda!60416))))

(assert (=> d!399012 (exists!539 rules!2550 lambda!60416)))

(declare-fun lt!464181 () Unit!20409)

(declare-fun choose!8572 (List!14198 Int Regex!3761) Unit!20409)

(assert (=> d!399012 (= lt!464181 (choose!8572 rules!2550 lambda!60382 lt!463925))))

(assert (=> d!399012 (contains!2725 (map!3131 rules!2550 lambda!60382) lt!463925)))

(assert (=> d!399012 (= (lemmaMapContains!158 rules!2550 lambda!60382 lt!463925) lt!464181)))

(declare-fun bs!337791 () Bool)

(assert (= bs!337791 d!399012))

(declare-fun m!1570575 () Bool)

(assert (=> bs!337791 m!1570575))

(declare-fun m!1570577 () Bool)

(assert (=> bs!337791 m!1570577))

(assert (=> bs!337791 m!1569571))

(assert (=> bs!337791 m!1569571))

(assert (=> bs!337791 m!1569653))

(assert (=> b!1393489 d!399012))

(declare-fun d!399014 () Bool)

(declare-fun lt!464182 () Bool)

(assert (=> d!399014 (= lt!464182 (select (content!2084 rules!2550) (rule!4210 t2!34)))))

(declare-fun e!890300 () Bool)

(assert (=> d!399014 (= lt!464182 e!890300)))

(declare-fun res!629554 () Bool)

(assert (=> d!399014 (=> (not res!629554) (not e!890300))))

(assert (=> d!399014 (= res!629554 ((_ is Cons!14132) rules!2550))))

(assert (=> d!399014 (= (contains!2723 rules!2550 (rule!4210 t2!34)) lt!464182)))

(declare-fun b!1394190 () Bool)

(declare-fun e!890301 () Bool)

(assert (=> b!1394190 (= e!890300 e!890301)))

(declare-fun res!629553 () Bool)

(assert (=> b!1394190 (=> res!629553 e!890301)))

(assert (=> b!1394190 (= res!629553 (= (h!19533 rules!2550) (rule!4210 t2!34)))))

(declare-fun b!1394191 () Bool)

(assert (=> b!1394191 (= e!890301 (contains!2723 (t!122579 rules!2550) (rule!4210 t2!34)))))

(assert (= (and d!399014 res!629554) b!1394190))

(assert (= (and b!1394190 (not res!629553)) b!1394191))

(assert (=> d!399014 m!1570155))

(declare-fun m!1570579 () Bool)

(assert (=> d!399014 m!1570579))

(declare-fun m!1570581 () Bool)

(assert (=> b!1394191 m!1570581))

(assert (=> b!1393447 d!399014))

(declare-fun d!399016 () Bool)

(declare-fun lt!464183 () Bool)

(assert (=> d!399016 (= lt!464183 (select (content!2087 (usedCharacters!258 (regex!2447 (rule!4210 t2!34)))) lt!463923))))

(declare-fun e!890302 () Bool)

(assert (=> d!399016 (= lt!464183 e!890302)))

(declare-fun res!629556 () Bool)

(assert (=> d!399016 (=> (not res!629556) (not e!890302))))

(assert (=> d!399016 (= res!629556 ((_ is Cons!14131) (usedCharacters!258 (regex!2447 (rule!4210 t2!34)))))))

(assert (=> d!399016 (= (contains!2724 (usedCharacters!258 (regex!2447 (rule!4210 t2!34))) lt!463923) lt!464183)))

(declare-fun b!1394192 () Bool)

(declare-fun e!890303 () Bool)

(assert (=> b!1394192 (= e!890302 e!890303)))

(declare-fun res!629555 () Bool)

(assert (=> b!1394192 (=> res!629555 e!890303)))

(assert (=> b!1394192 (= res!629555 (= (h!19532 (usedCharacters!258 (regex!2447 (rule!4210 t2!34)))) lt!463923))))

(declare-fun b!1394193 () Bool)

(assert (=> b!1394193 (= e!890303 (contains!2724 (t!122578 (usedCharacters!258 (regex!2447 (rule!4210 t2!34)))) lt!463923))))

(assert (= (and d!399016 res!629556) b!1394192))

(assert (= (and b!1394192 (not res!629555)) b!1394193))

(assert (=> d!399016 m!1569659))

(declare-fun m!1570583 () Bool)

(assert (=> d!399016 m!1570583))

(declare-fun m!1570585 () Bool)

(assert (=> d!399016 m!1570585))

(declare-fun m!1570587 () Bool)

(assert (=> b!1394193 m!1570587))

(assert (=> b!1393468 d!399016))

(declare-fun bm!93217 () Bool)

(declare-fun call!93223 () List!14197)

(declare-fun call!93224 () List!14197)

(assert (=> bm!93217 (= call!93223 call!93224)))

(declare-fun b!1394210 () Bool)

(declare-fun e!890314 () List!14197)

(assert (=> b!1394210 (= e!890314 call!93224)))

(declare-fun b!1394211 () Bool)

(declare-fun e!890315 () List!14197)

(declare-fun call!93225 () List!14197)

(assert (=> b!1394211 (= e!890315 call!93225)))

(declare-fun b!1394212 () Bool)

(declare-fun c!229585 () Bool)

(assert (=> b!1394212 (= c!229585 ((_ is Star!3761) (regex!2447 (rule!4210 t2!34))))))

(declare-fun e!890313 () List!14197)

(assert (=> b!1394212 (= e!890313 e!890314)))

(declare-fun b!1394213 () Bool)

(declare-fun e!890312 () List!14197)

(assert (=> b!1394213 (= e!890312 Nil!14131)))

(declare-fun b!1394214 () Bool)

(assert (=> b!1394214 (= e!890312 e!890313)))

(declare-fun c!229587 () Bool)

(assert (=> b!1394214 (= c!229587 ((_ is ElementMatch!3761) (regex!2447 (rule!4210 t2!34))))))

(declare-fun bm!93219 () Bool)

(declare-fun call!93222 () List!14197)

(declare-fun c!229586 () Bool)

(assert (=> bm!93219 (= call!93225 (++!3674 (ite c!229586 call!93223 call!93222) (ite c!229586 call!93222 call!93223)))))

(declare-fun d!399018 () Bool)

(declare-fun c!229588 () Bool)

(assert (=> d!399018 (= c!229588 (or ((_ is EmptyExpr!3761) (regex!2447 (rule!4210 t2!34))) ((_ is EmptyLang!3761) (regex!2447 (rule!4210 t2!34)))))))

(assert (=> d!399018 (= (usedCharacters!258 (regex!2447 (rule!4210 t2!34))) e!890312)))

(declare-fun bm!93218 () Bool)

(assert (=> bm!93218 (= call!93224 (usedCharacters!258 (ite c!229585 (reg!4090 (regex!2447 (rule!4210 t2!34))) (ite c!229586 (regOne!8035 (regex!2447 (rule!4210 t2!34))) (regTwo!8034 (regex!2447 (rule!4210 t2!34)))))))))

(declare-fun bm!93220 () Bool)

(assert (=> bm!93220 (= call!93222 (usedCharacters!258 (ite c!229586 (regTwo!8035 (regex!2447 (rule!4210 t2!34))) (regOne!8034 (regex!2447 (rule!4210 t2!34))))))))

(declare-fun b!1394215 () Bool)

(assert (=> b!1394215 (= e!890313 (Cons!14131 (c!229437 (regex!2447 (rule!4210 t2!34))) Nil!14131))))

(declare-fun b!1394216 () Bool)

(assert (=> b!1394216 (= e!890314 e!890315)))

(assert (=> b!1394216 (= c!229586 ((_ is Union!3761) (regex!2447 (rule!4210 t2!34))))))

(declare-fun b!1394217 () Bool)

(assert (=> b!1394217 (= e!890315 call!93225)))

(assert (= (and d!399018 c!229588) b!1394213))

(assert (= (and d!399018 (not c!229588)) b!1394214))

(assert (= (and b!1394214 c!229587) b!1394215))

(assert (= (and b!1394214 (not c!229587)) b!1394212))

(assert (= (and b!1394212 c!229585) b!1394210))

(assert (= (and b!1394212 (not c!229585)) b!1394216))

(assert (= (and b!1394216 c!229586) b!1394217))

(assert (= (and b!1394216 (not c!229586)) b!1394211))

(assert (= (or b!1394217 b!1394211) bm!93217))

(assert (= (or b!1394217 b!1394211) bm!93220))

(assert (= (or b!1394217 b!1394211) bm!93219))

(assert (= (or b!1394210 bm!93217) bm!93218))

(declare-fun m!1570589 () Bool)

(assert (=> bm!93219 m!1570589))

(declare-fun m!1570591 () Bool)

(assert (=> bm!93218 m!1570591))

(declare-fun m!1570593 () Bool)

(assert (=> bm!93220 m!1570593))

(assert (=> b!1393468 d!399018))

(declare-fun b!1394228 () Bool)

(declare-fun e!890324 () tuple2!13744)

(declare-fun lt!464190 () Option!2710)

(declare-fun lt!464191 () tuple2!13744)

(assert (=> b!1394228 (= e!890324 (tuple2!13745 (Cons!14133 (_1!7757 (v!21605 lt!464190)) (_1!7758 lt!464191)) (_2!7758 lt!464191)))))

(assert (=> b!1394228 (= lt!464191 (lexList!656 thiss!19762 rules!2550 (_2!7757 (v!21605 lt!464190))))))

(declare-fun b!1394229 () Bool)

(assert (=> b!1394229 (= e!890324 (tuple2!13745 Nil!14133 (list!5493 lt!463940)))))

(declare-fun b!1394230 () Bool)

(declare-fun e!890322 () Bool)

(declare-fun lt!464192 () tuple2!13744)

(assert (=> b!1394230 (= e!890322 (= (_2!7758 lt!464192) (list!5493 lt!463940)))))

(declare-fun d!399020 () Bool)

(assert (=> d!399020 e!890322))

(declare-fun c!229594 () Bool)

(declare-fun size!11629 (List!14199) Int)

(assert (=> d!399020 (= c!229594 (> (size!11629 (_1!7758 lt!464192)) 0))))

(assert (=> d!399020 (= lt!464192 e!890324)))

(declare-fun c!229593 () Bool)

(assert (=> d!399020 (= c!229593 ((_ is Some!2709) lt!464190))))

(assert (=> d!399020 (= lt!464190 (maxPrefix!1116 thiss!19762 rules!2550 (list!5493 lt!463940)))))

(assert (=> d!399020 (= (lexList!656 thiss!19762 rules!2550 (list!5493 lt!463940)) lt!464192)))

(declare-fun b!1394231 () Bool)

(declare-fun e!890323 () Bool)

(assert (=> b!1394231 (= e!890322 e!890323)))

(declare-fun res!629559 () Bool)

(assert (=> b!1394231 (= res!629559 (< (size!11625 (_2!7758 lt!464192)) (size!11625 (list!5493 lt!463940))))))

(assert (=> b!1394231 (=> (not res!629559) (not e!890323))))

(declare-fun b!1394232 () Bool)

(declare-fun isEmpty!8579 (List!14199) Bool)

(assert (=> b!1394232 (= e!890323 (not (isEmpty!8579 (_1!7758 lt!464192))))))

(assert (= (and d!399020 c!229593) b!1394228))

(assert (= (and d!399020 (not c!229593)) b!1394229))

(assert (= (and d!399020 c!229594) b!1394231))

(assert (= (and d!399020 (not c!229594)) b!1394230))

(assert (= (and b!1394231 res!629559) b!1394232))

(declare-fun m!1570595 () Bool)

(assert (=> b!1394228 m!1570595))

(declare-fun m!1570597 () Bool)

(assert (=> d!399020 m!1570597))

(assert (=> d!399020 m!1569627))

(declare-fun m!1570599 () Bool)

(assert (=> d!399020 m!1570599))

(declare-fun m!1570601 () Bool)

(assert (=> b!1394231 m!1570601))

(assert (=> b!1394231 m!1569627))

(declare-fun m!1570603 () Bool)

(assert (=> b!1394231 m!1570603))

(declare-fun m!1570605 () Bool)

(assert (=> b!1394232 m!1570605))

(assert (=> b!1393445 d!399020))

(declare-fun d!399022 () Bool)

(assert (=> d!399022 (= (list!5493 lt!463940) (list!5498 (c!229436 lt!463940)))))

(declare-fun bs!337792 () Bool)

(assert (= bs!337792 d!399022))

(declare-fun m!1570607 () Bool)

(assert (=> bs!337792 m!1570607))

(assert (=> b!1393445 d!399022))

(assert (=> b!1393466 d!398972))

(declare-fun bs!337793 () Bool)

(declare-fun d!399024 () Bool)

(assert (= bs!337793 (and d!399024 b!1393466)))

(declare-fun lambda!60419 () Int)

(assert (=> bs!337793 (not (= lambda!60419 lambda!60383))))

(assert (=> d!399024 true))

(declare-fun order!8665 () Int)

(declare-fun dynLambda!6520 (Int Int) Int)

(assert (=> d!399024 (< (dynLambda!6520 order!8665 lambda!60383) (dynLambda!6520 order!8665 lambda!60419))))

(declare-fun forall!3439 (List!14200 Int) Bool)

(assert (=> d!399024 (= (exists!538 (map!3131 rules!2550 lambda!60382) lambda!60383) (not (forall!3439 (map!3131 rules!2550 lambda!60382) lambda!60419)))))

(declare-fun bs!337794 () Bool)

(assert (= bs!337794 d!399024))

(assert (=> bs!337794 m!1569571))

(declare-fun m!1570609 () Bool)

(assert (=> bs!337794 m!1570609))

(assert (=> b!1393466 d!399024))

(declare-fun bs!337795 () Bool)

(declare-fun d!399026 () Bool)

(assert (= bs!337795 (and d!399026 b!1393466)))

(declare-fun lambda!60424 () Int)

(assert (=> bs!337795 (not (= lambda!60424 lambda!60383))))

(declare-fun bs!337796 () Bool)

(assert (= bs!337796 (and d!399026 d!399024)))

(assert (=> bs!337796 (not (= lambda!60424 lambda!60419))))

(declare-fun lambda!60425 () Int)

(assert (=> bs!337795 (= lambda!60425 lambda!60383)))

(assert (=> bs!337796 (not (= lambda!60425 lambda!60419))))

(declare-fun bs!337797 () Bool)

(assert (= bs!337797 d!399026))

(assert (=> bs!337797 (not (= lambda!60425 lambda!60424))))

(assert (=> d!399026 true))

(assert (=> d!399026 (= (matchR!1752 lt!463944 lt!463927) (exists!538 lt!463929 lambda!60425))))

(declare-fun lt!464195 () Unit!20409)

(declare-fun choose!8573 (Regex!3761 List!14200 List!14197) Unit!20409)

(assert (=> d!399026 (= lt!464195 (choose!8573 lt!463944 lt!463929 lt!463927))))

(assert (=> d!399026 (forall!3439 lt!463929 lambda!60424)))

(assert (=> d!399026 (= (matchRGenUnionSpec!172 lt!463944 lt!463929 lt!463927) lt!464195)))

(assert (=> bs!337797 m!1569637))

(declare-fun m!1570611 () Bool)

(assert (=> bs!337797 m!1570611))

(declare-fun m!1570613 () Bool)

(assert (=> bs!337797 m!1570613))

(declare-fun m!1570615 () Bool)

(assert (=> bs!337797 m!1570615))

(assert (=> b!1393466 d!399026))

(declare-fun bs!337798 () Bool)

(declare-fun d!399028 () Bool)

(assert (= bs!337798 (and d!399028 b!1393466)))

(declare-fun lambda!60426 () Int)

(assert (=> bs!337798 (not (= lambda!60426 lambda!60383))))

(declare-fun bs!337799 () Bool)

(assert (= bs!337799 (and d!399028 d!399024)))

(assert (=> bs!337799 (= lambda!60426 lambda!60419)))

(declare-fun bs!337800 () Bool)

(assert (= bs!337800 (and d!399028 d!399026)))

(assert (=> bs!337800 (not (= lambda!60426 lambda!60424))))

(assert (=> bs!337800 (not (= lambda!60426 lambda!60425))))

(assert (=> d!399028 true))

(assert (=> d!399028 (< (dynLambda!6520 order!8665 lambda!60383) (dynLambda!6520 order!8665 lambda!60426))))

(assert (=> d!399028 (= (exists!538 lt!463929 lambda!60383) (not (forall!3439 lt!463929 lambda!60426)))))

(declare-fun bs!337801 () Bool)

(assert (= bs!337801 d!399028))

(declare-fun m!1570617 () Bool)

(assert (=> bs!337801 m!1570617))

(assert (=> b!1393466 d!399028))

(declare-fun d!399030 () Bool)

(declare-fun lt!464196 () Bool)

(assert (=> d!399030 (= lt!464196 (select (content!2087 lt!463919) lt!463930))))

(declare-fun e!890327 () Bool)

(assert (=> d!399030 (= lt!464196 e!890327)))

(declare-fun res!629563 () Bool)

(assert (=> d!399030 (=> (not res!629563) (not e!890327))))

(assert (=> d!399030 (= res!629563 ((_ is Cons!14131) lt!463919))))

(assert (=> d!399030 (= (contains!2724 lt!463919 lt!463930) lt!464196)))

(declare-fun b!1394237 () Bool)

(declare-fun e!890328 () Bool)

(assert (=> b!1394237 (= e!890327 e!890328)))

(declare-fun res!629562 () Bool)

(assert (=> b!1394237 (=> res!629562 e!890328)))

(assert (=> b!1394237 (= res!629562 (= (h!19532 lt!463919) lt!463930))))

(declare-fun b!1394238 () Bool)

(assert (=> b!1394238 (= e!890328 (contains!2724 (t!122578 lt!463919) lt!463930))))

(assert (= (and d!399030 res!629563) b!1394237))

(assert (= (and b!1394237 (not res!629562)) b!1394238))

(assert (=> d!399030 m!1570501))

(declare-fun m!1570619 () Bool)

(assert (=> d!399030 m!1570619))

(declare-fun m!1570621 () Bool)

(assert (=> b!1394238 m!1570621))

(assert (=> b!1393467 d!399030))

(declare-fun d!399032 () Bool)

(declare-fun lt!464197 () C!7812)

(assert (=> d!399032 (= lt!464197 (apply!3574 (list!5493 lt!463935) 0))))

(assert (=> d!399032 (= lt!464197 (apply!3575 (c!229436 lt!463935) 0))))

(declare-fun e!890329 () Bool)

(assert (=> d!399032 e!890329))

(declare-fun res!629564 () Bool)

(assert (=> d!399032 (=> (not res!629564) (not e!890329))))

(assert (=> d!399032 (= res!629564 (<= 0 0))))

(assert (=> d!399032 (= (apply!3567 lt!463935 0) lt!464197)))

(declare-fun b!1394239 () Bool)

(assert (=> b!1394239 (= e!890329 (< 0 (size!11618 lt!463935)))))

(assert (= (and d!399032 res!629564) b!1394239))

(assert (=> d!399032 m!1569595))

(assert (=> d!399032 m!1569595))

(declare-fun m!1570623 () Bool)

(assert (=> d!399032 m!1570623))

(declare-fun m!1570625 () Bool)

(assert (=> d!399032 m!1570625))

(declare-fun m!1570627 () Bool)

(assert (=> b!1394239 m!1570627))

(assert (=> b!1393467 d!399032))

(declare-fun d!399034 () Bool)

(declare-fun lt!464199 () Bool)

(declare-fun e!890330 () Bool)

(assert (=> d!399034 (= lt!464199 e!890330)))

(declare-fun res!629567 () Bool)

(assert (=> d!399034 (=> (not res!629567) (not e!890330))))

(assert (=> d!399034 (= res!629567 (= (list!5494 (_1!7759 (lex!967 thiss!19762 rules!2550 (print!906 thiss!19762 (singletonSeq!1098 t2!34))))) (list!5494 (singletonSeq!1098 t2!34))))))

(declare-fun e!890331 () Bool)

(assert (=> d!399034 (= lt!464199 e!890331)))

(declare-fun res!629565 () Bool)

(assert (=> d!399034 (=> (not res!629565) (not e!890331))))

(declare-fun lt!464198 () tuple2!13746)

(assert (=> d!399034 (= res!629565 (= (size!11622 (_1!7759 lt!464198)) 1))))

(assert (=> d!399034 (= lt!464198 (lex!967 thiss!19762 rules!2550 (print!906 thiss!19762 (singletonSeq!1098 t2!34))))))

(assert (=> d!399034 (not (isEmpty!8568 rules!2550))))

(assert (=> d!399034 (= (rulesProduceIndividualToken!1111 thiss!19762 rules!2550 t2!34) lt!464199)))

(declare-fun b!1394240 () Bool)

(declare-fun res!629566 () Bool)

(assert (=> b!1394240 (=> (not res!629566) (not e!890331))))

(assert (=> b!1394240 (= res!629566 (= (apply!3571 (_1!7759 lt!464198) 0) t2!34))))

(declare-fun b!1394241 () Bool)

(assert (=> b!1394241 (= e!890331 (isEmpty!8569 (_2!7759 lt!464198)))))

(declare-fun b!1394242 () Bool)

(assert (=> b!1394242 (= e!890330 (isEmpty!8569 (_2!7759 (lex!967 thiss!19762 rules!2550 (print!906 thiss!19762 (singletonSeq!1098 t2!34))))))))

(assert (= (and d!399034 res!629565) b!1394240))

(assert (= (and b!1394240 res!629566) b!1394241))

(assert (= (and d!399034 res!629567) b!1394242))

(assert (=> d!399034 m!1569617))

(assert (=> d!399034 m!1569619))

(declare-fun m!1570629 () Bool)

(assert (=> d!399034 m!1570629))

(assert (=> d!399034 m!1569617))

(assert (=> d!399034 m!1569617))

(assert (=> d!399034 m!1570083))

(assert (=> d!399034 m!1569657))

(assert (=> d!399034 m!1569619))

(declare-fun m!1570631 () Bool)

(assert (=> d!399034 m!1570631))

(declare-fun m!1570633 () Bool)

(assert (=> d!399034 m!1570633))

(declare-fun m!1570635 () Bool)

(assert (=> b!1394240 m!1570635))

(declare-fun m!1570637 () Bool)

(assert (=> b!1394241 m!1570637))

(assert (=> b!1394242 m!1569617))

(assert (=> b!1394242 m!1569617))

(assert (=> b!1394242 m!1569619))

(assert (=> b!1394242 m!1569619))

(assert (=> b!1394242 m!1570631))

(declare-fun m!1570639 () Bool)

(assert (=> b!1394242 m!1570639))

(assert (=> b!1393488 d!399034))

(declare-fun b!1394243 () Bool)

(declare-fun e!890334 () tuple2!13744)

(declare-fun lt!464200 () Option!2710)

(declare-fun lt!464201 () tuple2!13744)

(assert (=> b!1394243 (= e!890334 (tuple2!13745 (Cons!14133 (_1!7757 (v!21605 lt!464200)) (_1!7758 lt!464201)) (_2!7758 lt!464201)))))

(assert (=> b!1394243 (= lt!464201 (lexList!656 thiss!19762 rules!2550 (_2!7757 (v!21605 lt!464200))))))

(declare-fun b!1394244 () Bool)

(assert (=> b!1394244 (= e!890334 (tuple2!13745 Nil!14133 (list!5493 lt!463934)))))

(declare-fun b!1394245 () Bool)

(declare-fun e!890332 () Bool)

(declare-fun lt!464202 () tuple2!13744)

(assert (=> b!1394245 (= e!890332 (= (_2!7758 lt!464202) (list!5493 lt!463934)))))

(declare-fun d!399036 () Bool)

(assert (=> d!399036 e!890332))

(declare-fun c!229596 () Bool)

(assert (=> d!399036 (= c!229596 (> (size!11629 (_1!7758 lt!464202)) 0))))

(assert (=> d!399036 (= lt!464202 e!890334)))

(declare-fun c!229595 () Bool)

(assert (=> d!399036 (= c!229595 ((_ is Some!2709) lt!464200))))

(assert (=> d!399036 (= lt!464200 (maxPrefix!1116 thiss!19762 rules!2550 (list!5493 lt!463934)))))

(assert (=> d!399036 (= (lexList!656 thiss!19762 rules!2550 (list!5493 lt!463934)) lt!464202)))

(declare-fun b!1394246 () Bool)

(declare-fun e!890333 () Bool)

(assert (=> b!1394246 (= e!890332 e!890333)))

(declare-fun res!629568 () Bool)

(assert (=> b!1394246 (= res!629568 (< (size!11625 (_2!7758 lt!464202)) (size!11625 (list!5493 lt!463934))))))

(assert (=> b!1394246 (=> (not res!629568) (not e!890333))))

(declare-fun b!1394247 () Bool)

(assert (=> b!1394247 (= e!890333 (not (isEmpty!8579 (_1!7758 lt!464202))))))

(assert (= (and d!399036 c!229595) b!1394243))

(assert (= (and d!399036 (not c!229595)) b!1394244))

(assert (= (and d!399036 c!229596) b!1394246))

(assert (= (and d!399036 (not c!229596)) b!1394245))

(assert (= (and b!1394246 res!629568) b!1394247))

(declare-fun m!1570641 () Bool)

(assert (=> b!1394243 m!1570641))

(declare-fun m!1570643 () Bool)

(assert (=> d!399036 m!1570643))

(assert (=> d!399036 m!1569563))

(declare-fun m!1570645 () Bool)

(assert (=> d!399036 m!1570645))

(declare-fun m!1570647 () Bool)

(assert (=> b!1394246 m!1570647))

(assert (=> b!1394246 m!1569563))

(declare-fun m!1570649 () Bool)

(assert (=> b!1394246 m!1570649))

(declare-fun m!1570651 () Bool)

(assert (=> b!1394247 m!1570651))

(assert (=> b!1393454 d!399036))

(declare-fun d!399038 () Bool)

(assert (=> d!399038 (= (list!5493 lt!463934) (list!5498 (c!229436 lt!463934)))))

(declare-fun bs!337802 () Bool)

(assert (= bs!337802 d!399038))

(declare-fun m!1570653 () Bool)

(assert (=> bs!337802 m!1570653))

(assert (=> b!1393454 d!399038))

(declare-fun d!399040 () Bool)

(assert (=> d!399040 (= (inv!18464 (tag!2709 (h!19533 rules!2550))) (= (mod (str.len (value!79371 (tag!2709 (h!19533 rules!2550)))) 2) 0))))

(assert (=> b!1393455 d!399040))

(declare-fun d!399042 () Bool)

(declare-fun res!629569 () Bool)

(declare-fun e!890335 () Bool)

(assert (=> d!399042 (=> (not res!629569) (not e!890335))))

(assert (=> d!399042 (= res!629569 (semiInverseModEq!950 (toChars!3597 (transformation!2447 (h!19533 rules!2550))) (toValue!3738 (transformation!2447 (h!19533 rules!2550)))))))

(assert (=> d!399042 (= (inv!18467 (transformation!2447 (h!19533 rules!2550))) e!890335)))

(declare-fun b!1394248 () Bool)

(assert (=> b!1394248 (= e!890335 (equivClasses!909 (toChars!3597 (transformation!2447 (h!19533 rules!2550))) (toValue!3738 (transformation!2447 (h!19533 rules!2550)))))))

(assert (= (and d!399042 res!629569) b!1394248))

(declare-fun m!1570655 () Bool)

(assert (=> d!399042 m!1570655))

(declare-fun m!1570657 () Bool)

(assert (=> b!1394248 m!1570657))

(assert (=> b!1393455 d!399042))

(declare-fun d!399044 () Bool)

(declare-fun res!629572 () Bool)

(declare-fun e!890338 () Bool)

(assert (=> d!399044 (=> (not res!629572) (not e!890338))))

(declare-fun rulesValid!919 (LexerInterface!2142 List!14198) Bool)

(assert (=> d!399044 (= res!629572 (rulesValid!919 thiss!19762 rules!2550))))

(assert (=> d!399044 (= (rulesInvariant!2012 thiss!19762 rules!2550) e!890338)))

(declare-fun b!1394251 () Bool)

(declare-datatypes ((List!14202 0))(
  ( (Nil!14136) (Cons!14136 (h!19537 String!16921) (t!122619 List!14202)) )
))
(declare-fun noDuplicateTag!919 (LexerInterface!2142 List!14198 List!14202) Bool)

(assert (=> b!1394251 (= e!890338 (noDuplicateTag!919 thiss!19762 rules!2550 Nil!14136))))

(assert (= (and d!399044 res!629572) b!1394251))

(declare-fun m!1570659 () Bool)

(assert (=> d!399044 m!1570659))

(declare-fun m!1570661 () Bool)

(assert (=> b!1394251 m!1570661))

(assert (=> b!1393476 d!399044))

(declare-fun d!399046 () Bool)

(declare-fun res!629577 () Bool)

(declare-fun e!890343 () Bool)

(assert (=> d!399046 (=> res!629577 e!890343)))

(assert (=> d!399046 (= res!629577 (not ((_ is Cons!14132) rules!2550)))))

(assert (=> d!399046 (= (sepAndNonSepRulesDisjointChars!820 rules!2550 rules!2550) e!890343)))

(declare-fun b!1394256 () Bool)

(declare-fun e!890344 () Bool)

(assert (=> b!1394256 (= e!890343 e!890344)))

(declare-fun res!629578 () Bool)

(assert (=> b!1394256 (=> (not res!629578) (not e!890344))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!392 (Rule!4694 List!14198) Bool)

(assert (=> b!1394256 (= res!629578 (ruleDisjointCharsFromAllFromOtherType!392 (h!19533 rules!2550) rules!2550))))

(declare-fun b!1394257 () Bool)

(assert (=> b!1394257 (= e!890344 (sepAndNonSepRulesDisjointChars!820 rules!2550 (t!122579 rules!2550)))))

(assert (= (and d!399046 (not res!629577)) b!1394256))

(assert (= (and b!1394256 res!629578) b!1394257))

(declare-fun m!1570663 () Bool)

(assert (=> b!1394256 m!1570663))

(declare-fun m!1570665 () Bool)

(assert (=> b!1394257 m!1570665))

(assert (=> b!1393475 d!399046))

(declare-fun d!399048 () Bool)

(declare-fun lt!464203 () Bool)

(assert (=> d!399048 (= lt!464203 (select (content!2087 lt!463919) lt!463923))))

(declare-fun e!890345 () Bool)

(assert (=> d!399048 (= lt!464203 e!890345)))

(declare-fun res!629580 () Bool)

(assert (=> d!399048 (=> (not res!629580) (not e!890345))))

(assert (=> d!399048 (= res!629580 ((_ is Cons!14131) lt!463919))))

(assert (=> d!399048 (= (contains!2724 lt!463919 lt!463923) lt!464203)))

(declare-fun b!1394258 () Bool)

(declare-fun e!890346 () Bool)

(assert (=> b!1394258 (= e!890345 e!890346)))

(declare-fun res!629579 () Bool)

(assert (=> b!1394258 (=> res!629579 e!890346)))

(assert (=> b!1394258 (= res!629579 (= (h!19532 lt!463919) lt!463923))))

(declare-fun b!1394259 () Bool)

(assert (=> b!1394259 (= e!890346 (contains!2724 (t!122578 lt!463919) lt!463923))))

(assert (= (and d!399048 res!629580) b!1394258))

(assert (= (and b!1394258 (not res!629579)) b!1394259))

(assert (=> d!399048 m!1570501))

(declare-fun m!1570667 () Bool)

(assert (=> d!399048 m!1570667))

(declare-fun m!1570669 () Bool)

(assert (=> b!1394259 m!1570669))

(assert (=> b!1393473 d!399048))

(declare-fun d!399050 () Bool)

(assert (=> d!399050 (not (matchR!1752 (regex!2447 (rule!4210 t1!34)) lt!463936))))

(declare-fun lt!464204 () Unit!20409)

(assert (=> d!399050 (= lt!464204 (choose!8568 (regex!2447 (rule!4210 t1!34)) lt!463936 (head!2553 lt!463936)))))

(assert (=> d!399050 (validRegex!1641 (regex!2447 (rule!4210 t1!34)))))

(assert (=> d!399050 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!192 (regex!2447 (rule!4210 t1!34)) lt!463936 (head!2553 lt!463936)) lt!464204)))

(declare-fun bs!337803 () Bool)

(assert (= bs!337803 d!399050))

(assert (=> bs!337803 m!1569521))

(assert (=> bs!337803 m!1569529))

(declare-fun m!1570671 () Bool)

(assert (=> bs!337803 m!1570671))

(assert (=> bs!337803 m!1570271))

(assert (=> b!1393452 d!399050))

(declare-fun d!399052 () Bool)

(assert (=> d!399052 (= (head!2553 lt!463936) (h!19532 lt!463936))))

(assert (=> b!1393452 d!399052))

(declare-fun d!399054 () Bool)

(declare-fun choose!8574 (Int) Bool)

(assert (=> d!399054 (= (Exists!911 lambda!60381) (choose!8574 lambda!60381))))

(declare-fun bs!337804 () Bool)

(assert (= bs!337804 d!399054))

(declare-fun m!1570673 () Bool)

(assert (=> bs!337804 m!1570673))

(assert (=> b!1393450 d!399054))

(declare-fun bs!337805 () Bool)

(declare-fun d!399056 () Bool)

(assert (= bs!337805 (and d!399056 b!1393450)))

(declare-fun lambda!60429 () Int)

(assert (=> bs!337805 (= lambda!60429 lambda!60381)))

(assert (=> d!399056 true))

(assert (=> d!399056 true))

(assert (=> d!399056 (Exists!911 lambda!60429)))

(declare-fun lt!464207 () Unit!20409)

(declare-fun choose!8575 (Regex!3761 List!14197) Unit!20409)

(assert (=> d!399056 (= lt!464207 (choose!8575 lt!463944 lt!463919))))

(assert (=> d!399056 (validRegex!1641 lt!463944)))

(assert (=> d!399056 (= (lemmaPrefixMatchThenExistsStringThatMatches!229 lt!463944 lt!463919) lt!464207)))

(declare-fun bs!337806 () Bool)

(assert (= bs!337806 d!399056))

(declare-fun m!1570675 () Bool)

(assert (=> bs!337806 m!1570675))

(declare-fun m!1570677 () Bool)

(assert (=> bs!337806 m!1570677))

(assert (=> bs!337806 m!1570391))

(assert (=> b!1393450 d!399056))

(declare-fun d!399058 () Bool)

(declare-fun lt!464210 () Int)

(assert (=> d!399058 (= lt!464210 (size!11625 (list!5493 lt!463942)))))

(declare-fun size!11630 (Conc!4654) Int)

(assert (=> d!399058 (= lt!464210 (size!11630 (c!229436 lt!463942)))))

(assert (=> d!399058 (= (size!11618 lt!463942) lt!464210)))

(declare-fun bs!337807 () Bool)

(assert (= bs!337807 d!399058))

(assert (=> bs!337807 m!1569537))

(assert (=> bs!337807 m!1569537))

(declare-fun m!1570679 () Bool)

(assert (=> bs!337807 m!1570679))

(declare-fun m!1570681 () Bool)

(assert (=> bs!337807 m!1570681))

(assert (=> b!1393451 d!399058))

(declare-fun d!399060 () Bool)

(declare-fun lt!464211 () BalanceConc!9248)

(assert (=> d!399060 (= (list!5493 lt!464211) (originalCharacters!3309 t2!34))))

(assert (=> d!399060 (= lt!464211 (dynLambda!6514 (toChars!3597 (transformation!2447 (rule!4210 t2!34))) (value!79372 t2!34)))))

(assert (=> d!399060 (= (charsOf!1419 t2!34) lt!464211)))

(declare-fun b_lambda!43575 () Bool)

(assert (=> (not b_lambda!43575) (not d!399060)))

(assert (=> d!399060 t!122609))

(declare-fun b_and!93357 () Bool)

(assert (= b_and!93351 (and (=> t!122609 result!88638) b_and!93357)))

(assert (=> d!399060 t!122611))

(declare-fun b_and!93359 () Bool)

(assert (= b_and!93353 (and (=> t!122611 result!88640) b_and!93359)))

(assert (=> d!399060 t!122613))

(declare-fun b_and!93361 () Bool)

(assert (= b_and!93355 (and (=> t!122613 result!88642) b_and!93361)))

(declare-fun m!1570683 () Bool)

(assert (=> d!399060 m!1570683))

(assert (=> d!399060 m!1570415))

(assert (=> b!1393451 d!399060))

(declare-fun d!399062 () Bool)

(declare-fun lt!464212 () Bool)

(assert (=> d!399062 (= lt!464212 (select (content!2087 (usedCharacters!258 (regex!2447 (rule!4210 t1!34)))) lt!463930))))

(declare-fun e!890349 () Bool)

(assert (=> d!399062 (= lt!464212 e!890349)))

(declare-fun res!629584 () Bool)

(assert (=> d!399062 (=> (not res!629584) (not e!890349))))

(assert (=> d!399062 (= res!629584 ((_ is Cons!14131) (usedCharacters!258 (regex!2447 (rule!4210 t1!34)))))))

(assert (=> d!399062 (= (contains!2724 (usedCharacters!258 (regex!2447 (rule!4210 t1!34))) lt!463930) lt!464212)))

(declare-fun b!1394262 () Bool)

(declare-fun e!890350 () Bool)

(assert (=> b!1394262 (= e!890349 e!890350)))

(declare-fun res!629583 () Bool)

(assert (=> b!1394262 (=> res!629583 e!890350)))

(assert (=> b!1394262 (= res!629583 (= (h!19532 (usedCharacters!258 (regex!2447 (rule!4210 t1!34)))) lt!463930))))

(declare-fun b!1394263 () Bool)

(assert (=> b!1394263 (= e!890350 (contains!2724 (t!122578 (usedCharacters!258 (regex!2447 (rule!4210 t1!34)))) lt!463930))))

(assert (= (and d!399062 res!629584) b!1394262))

(assert (= (and b!1394262 (not res!629583)) b!1394263))

(assert (=> d!399062 m!1569545))

(declare-fun m!1570685 () Bool)

(assert (=> d!399062 m!1570685))

(declare-fun m!1570687 () Bool)

(assert (=> d!399062 m!1570687))

(declare-fun m!1570689 () Bool)

(assert (=> b!1394263 m!1570689))

(assert (=> b!1393472 d!399062))

(declare-fun bm!93221 () Bool)

(declare-fun call!93227 () List!14197)

(declare-fun call!93228 () List!14197)

(assert (=> bm!93221 (= call!93227 call!93228)))

(declare-fun b!1394264 () Bool)

(declare-fun e!890353 () List!14197)

(assert (=> b!1394264 (= e!890353 call!93228)))

(declare-fun b!1394265 () Bool)

(declare-fun e!890354 () List!14197)

(declare-fun call!93229 () List!14197)

(assert (=> b!1394265 (= e!890354 call!93229)))

(declare-fun b!1394266 () Bool)

(declare-fun c!229597 () Bool)

(assert (=> b!1394266 (= c!229597 ((_ is Star!3761) (regex!2447 (rule!4210 t1!34))))))

(declare-fun e!890352 () List!14197)

(assert (=> b!1394266 (= e!890352 e!890353)))

(declare-fun b!1394267 () Bool)

(declare-fun e!890351 () List!14197)

(assert (=> b!1394267 (= e!890351 Nil!14131)))

(declare-fun b!1394268 () Bool)

(assert (=> b!1394268 (= e!890351 e!890352)))

(declare-fun c!229599 () Bool)

(assert (=> b!1394268 (= c!229599 ((_ is ElementMatch!3761) (regex!2447 (rule!4210 t1!34))))))

(declare-fun call!93226 () List!14197)

(declare-fun bm!93223 () Bool)

(declare-fun c!229598 () Bool)

(assert (=> bm!93223 (= call!93229 (++!3674 (ite c!229598 call!93227 call!93226) (ite c!229598 call!93226 call!93227)))))

(declare-fun d!399064 () Bool)

(declare-fun c!229600 () Bool)

(assert (=> d!399064 (= c!229600 (or ((_ is EmptyExpr!3761) (regex!2447 (rule!4210 t1!34))) ((_ is EmptyLang!3761) (regex!2447 (rule!4210 t1!34)))))))

(assert (=> d!399064 (= (usedCharacters!258 (regex!2447 (rule!4210 t1!34))) e!890351)))

(declare-fun bm!93222 () Bool)

(assert (=> bm!93222 (= call!93228 (usedCharacters!258 (ite c!229597 (reg!4090 (regex!2447 (rule!4210 t1!34))) (ite c!229598 (regOne!8035 (regex!2447 (rule!4210 t1!34))) (regTwo!8034 (regex!2447 (rule!4210 t1!34)))))))))

(declare-fun bm!93224 () Bool)

(assert (=> bm!93224 (= call!93226 (usedCharacters!258 (ite c!229598 (regTwo!8035 (regex!2447 (rule!4210 t1!34))) (regOne!8034 (regex!2447 (rule!4210 t1!34))))))))

(declare-fun b!1394269 () Bool)

(assert (=> b!1394269 (= e!890352 (Cons!14131 (c!229437 (regex!2447 (rule!4210 t1!34))) Nil!14131))))

(declare-fun b!1394270 () Bool)

(assert (=> b!1394270 (= e!890353 e!890354)))

(assert (=> b!1394270 (= c!229598 ((_ is Union!3761) (regex!2447 (rule!4210 t1!34))))))

(declare-fun b!1394271 () Bool)

(assert (=> b!1394271 (= e!890354 call!93229)))

(assert (= (and d!399064 c!229600) b!1394267))

(assert (= (and d!399064 (not c!229600)) b!1394268))

(assert (= (and b!1394268 c!229599) b!1394269))

(assert (= (and b!1394268 (not c!229599)) b!1394266))

(assert (= (and b!1394266 c!229597) b!1394264))

(assert (= (and b!1394266 (not c!229597)) b!1394270))

(assert (= (and b!1394270 c!229598) b!1394271))

(assert (= (and b!1394270 (not c!229598)) b!1394265))

(assert (= (or b!1394271 b!1394265) bm!93221))

(assert (= (or b!1394271 b!1394265) bm!93224))

(assert (= (or b!1394271 b!1394265) bm!93223))

(assert (= (or b!1394264 bm!93221) bm!93222))

(declare-fun m!1570691 () Bool)

(assert (=> bm!93223 m!1570691))

(declare-fun m!1570693 () Bool)

(assert (=> bm!93222 m!1570693))

(declare-fun m!1570695 () Bool)

(assert (=> bm!93224 m!1570695))

(assert (=> b!1393472 d!399064))

(declare-fun e!890357 () Bool)

(assert (=> b!1393455 (= tp!397545 e!890357)))

(declare-fun b!1394285 () Bool)

(declare-fun tp!397616 () Bool)

(declare-fun tp!397613 () Bool)

(assert (=> b!1394285 (= e!890357 (and tp!397616 tp!397613))))

(declare-fun b!1394284 () Bool)

(declare-fun tp!397612 () Bool)

(assert (=> b!1394284 (= e!890357 tp!397612)))

(declare-fun b!1394282 () Bool)

(declare-fun tp_is_empty!6791 () Bool)

(assert (=> b!1394282 (= e!890357 tp_is_empty!6791)))

(declare-fun b!1394283 () Bool)

(declare-fun tp!397615 () Bool)

(declare-fun tp!397614 () Bool)

(assert (=> b!1394283 (= e!890357 (and tp!397615 tp!397614))))

(assert (= (and b!1393455 ((_ is ElementMatch!3761) (regex!2447 (h!19533 rules!2550)))) b!1394282))

(assert (= (and b!1393455 ((_ is Concat!6299) (regex!2447 (h!19533 rules!2550)))) b!1394283))

(assert (= (and b!1393455 ((_ is Star!3761) (regex!2447 (h!19533 rules!2550)))) b!1394284))

(assert (= (and b!1393455 ((_ is Union!3761) (regex!2447 (h!19533 rules!2550)))) b!1394285))

(declare-fun b!1394290 () Bool)

(declare-fun e!890360 () Bool)

(declare-fun tp!397619 () Bool)

(assert (=> b!1394290 (= e!890360 (and tp_is_empty!6791 tp!397619))))

(assert (=> b!1393485 (= tp!397551 e!890360)))

(assert (= (and b!1393485 ((_ is Cons!14131) (originalCharacters!3309 t2!34))) b!1394290))

(declare-fun e!890361 () Bool)

(assert (=> b!1393469 (= tp!397542 e!890361)))

(declare-fun b!1394294 () Bool)

(declare-fun tp!397624 () Bool)

(declare-fun tp!397621 () Bool)

(assert (=> b!1394294 (= e!890361 (and tp!397624 tp!397621))))

(declare-fun b!1394293 () Bool)

(declare-fun tp!397620 () Bool)

(assert (=> b!1394293 (= e!890361 tp!397620)))

(declare-fun b!1394291 () Bool)

(assert (=> b!1394291 (= e!890361 tp_is_empty!6791)))

(declare-fun b!1394292 () Bool)

(declare-fun tp!397623 () Bool)

(declare-fun tp!397622 () Bool)

(assert (=> b!1394292 (= e!890361 (and tp!397623 tp!397622))))

(assert (= (and b!1393469 ((_ is ElementMatch!3761) (regex!2447 (rule!4210 t1!34)))) b!1394291))

(assert (= (and b!1393469 ((_ is Concat!6299) (regex!2447 (rule!4210 t1!34)))) b!1394292))

(assert (= (and b!1393469 ((_ is Star!3761) (regex!2447 (rule!4210 t1!34)))) b!1394293))

(assert (= (and b!1393469 ((_ is Union!3761) (regex!2447 (rule!4210 t1!34)))) b!1394294))

(declare-fun b!1394305 () Bool)

(declare-fun b_free!33875 () Bool)

(declare-fun b_next!34579 () Bool)

(assert (=> b!1394305 (= b_free!33875 (not b_next!34579))))

(declare-fun tp!397636 () Bool)

(declare-fun b_and!93363 () Bool)

(assert (=> b!1394305 (= tp!397636 b_and!93363)))

(declare-fun b_free!33877 () Bool)

(declare-fun b_next!34581 () Bool)

(assert (=> b!1394305 (= b_free!33877 (not b_next!34581))))

(declare-fun t!122615 () Bool)

(declare-fun tb!72949 () Bool)

(assert (=> (and b!1394305 (= (toChars!3597 (transformation!2447 (h!19533 (t!122579 rules!2550)))) (toChars!3597 (transformation!2447 (rule!4210 t1!34)))) t!122615) tb!72949))

(declare-fun result!88650 () Bool)

(assert (= result!88650 result!88630))

(assert (=> b!1394072 t!122615))

(declare-fun tb!72951 () Bool)

(declare-fun t!122617 () Bool)

(assert (=> (and b!1394305 (= (toChars!3597 (transformation!2447 (h!19533 (t!122579 rules!2550)))) (toChars!3597 (transformation!2447 (rule!4210 t2!34)))) t!122617) tb!72951))

(declare-fun result!88652 () Bool)

(assert (= result!88652 result!88638))

(assert (=> b!1394079 t!122617))

(assert (=> d!399006 t!122615))

(assert (=> d!399060 t!122617))

(declare-fun tp!397634 () Bool)

(declare-fun b_and!93365 () Bool)

(assert (=> b!1394305 (= tp!397634 (and (=> t!122615 result!88650) (=> t!122617 result!88652) b_and!93365))))

(declare-fun e!890373 () Bool)

(assert (=> b!1394305 (= e!890373 (and tp!397636 tp!397634))))

(declare-fun b!1394304 () Bool)

(declare-fun e!890372 () Bool)

(declare-fun tp!397633 () Bool)

(assert (=> b!1394304 (= e!890372 (and tp!397633 (inv!18464 (tag!2709 (h!19533 (t!122579 rules!2550)))) (inv!18467 (transformation!2447 (h!19533 (t!122579 rules!2550)))) e!890373))))

(declare-fun b!1394303 () Bool)

(declare-fun e!890370 () Bool)

(declare-fun tp!397635 () Bool)

(assert (=> b!1394303 (= e!890370 (and e!890372 tp!397635))))

(assert (=> b!1393474 (= tp!397546 e!890370)))

(assert (= b!1394304 b!1394305))

(assert (= b!1394303 b!1394304))

(assert (= (and b!1393474 ((_ is Cons!14132) (t!122579 rules!2550))) b!1394303))

(declare-fun m!1570697 () Bool)

(assert (=> b!1394304 m!1570697))

(declare-fun m!1570699 () Bool)

(assert (=> b!1394304 m!1570699))

(declare-fun e!890374 () Bool)

(assert (=> b!1393462 (= tp!397549 e!890374)))

(declare-fun b!1394309 () Bool)

(declare-fun tp!397641 () Bool)

(declare-fun tp!397638 () Bool)

(assert (=> b!1394309 (= e!890374 (and tp!397641 tp!397638))))

(declare-fun b!1394308 () Bool)

(declare-fun tp!397637 () Bool)

(assert (=> b!1394308 (= e!890374 tp!397637)))

(declare-fun b!1394306 () Bool)

(assert (=> b!1394306 (= e!890374 tp_is_empty!6791)))

(declare-fun b!1394307 () Bool)

(declare-fun tp!397640 () Bool)

(declare-fun tp!397639 () Bool)

(assert (=> b!1394307 (= e!890374 (and tp!397640 tp!397639))))

(assert (= (and b!1393462 ((_ is ElementMatch!3761) (regex!2447 (rule!4210 t2!34)))) b!1394306))

(assert (= (and b!1393462 ((_ is Concat!6299) (regex!2447 (rule!4210 t2!34)))) b!1394307))

(assert (= (and b!1393462 ((_ is Star!3761) (regex!2447 (rule!4210 t2!34)))) b!1394308))

(assert (= (and b!1393462 ((_ is Union!3761) (regex!2447 (rule!4210 t2!34)))) b!1394309))

(declare-fun b!1394310 () Bool)

(declare-fun e!890375 () Bool)

(declare-fun tp!397642 () Bool)

(assert (=> b!1394310 (= e!890375 (and tp_is_empty!6791 tp!397642))))

(assert (=> b!1393463 (= tp!397550 e!890375)))

(assert (= (and b!1393463 ((_ is Cons!14131) (originalCharacters!3309 t1!34))) b!1394310))

(declare-fun b_lambda!43577 () Bool)

(assert (= b_lambda!43573 (or (and b!1393483 b_free!33861 (= (toChars!3597 (transformation!2447 (rule!4210 t2!34))) (toChars!3597 (transformation!2447 (rule!4210 t1!34))))) (and b!1393484 b_free!33865) (and b!1393461 b_free!33869 (= (toChars!3597 (transformation!2447 (h!19533 rules!2550))) (toChars!3597 (transformation!2447 (rule!4210 t1!34))))) (and b!1394305 b_free!33877 (= (toChars!3597 (transformation!2447 (h!19533 (t!122579 rules!2550)))) (toChars!3597 (transformation!2447 (rule!4210 t1!34))))) b_lambda!43577)))

(declare-fun b_lambda!43579 () Bool)

(assert (= b_lambda!43529 (or b!1393456 b_lambda!43579)))

(declare-fun bs!337808 () Bool)

(declare-fun d!399066 () Bool)

(assert (= bs!337808 (and d!399066 b!1393456)))

(declare-fun ruleValid!608 (LexerInterface!2142 Rule!4694) Bool)

(assert (=> bs!337808 (= (dynLambda!6511 lambda!60385 lt!463928) (ruleValid!608 thiss!19762 lt!463928))))

(declare-fun m!1570701 () Bool)

(assert (=> bs!337808 m!1570701))

(assert (=> d!398930 d!399066))

(declare-fun b_lambda!43581 () Bool)

(assert (= b_lambda!43571 (or b!1393450 b_lambda!43581)))

(declare-fun bs!337809 () Bool)

(declare-fun d!399068 () Bool)

(assert (= bs!337809 (and d!399068 b!1393450)))

(declare-fun res!629585 () Bool)

(declare-fun e!890376 () Bool)

(assert (=> bs!337809 (=> (not res!629585) (not e!890376))))

(assert (=> bs!337809 (= res!629585 (matchR!1752 lt!463944 lt!464164))))

(assert (=> bs!337809 (= (dynLambda!6517 lambda!60381 lt!464164) e!890376)))

(declare-fun b!1394311 () Bool)

(assert (=> b!1394311 (= e!890376 (isPrefix!1148 lt!463919 lt!464164))))

(assert (= (and bs!337809 res!629585) b!1394311))

(declare-fun m!1570703 () Bool)

(assert (=> bs!337809 m!1570703))

(declare-fun m!1570705 () Bool)

(assert (=> b!1394311 m!1570705))

(assert (=> d!398986 d!399068))

(declare-fun b_lambda!43583 () Bool)

(assert (= b_lambda!43563 (or (and b!1393483 b_free!33861) (and b!1393484 b_free!33865 (= (toChars!3597 (transformation!2447 (rule!4210 t1!34))) (toChars!3597 (transformation!2447 (rule!4210 t2!34))))) (and b!1393461 b_free!33869 (= (toChars!3597 (transformation!2447 (h!19533 rules!2550))) (toChars!3597 (transformation!2447 (rule!4210 t2!34))))) (and b!1394305 b_free!33877 (= (toChars!3597 (transformation!2447 (h!19533 (t!122579 rules!2550)))) (toChars!3597 (transformation!2447 (rule!4210 t2!34))))) b_lambda!43583)))

(declare-fun b_lambda!43585 () Bool)

(assert (= b_lambda!43569 (or b!1393466 b_lambda!43585)))

(declare-fun bs!337810 () Bool)

(declare-fun d!399070 () Bool)

(assert (= bs!337810 (and d!399070 b!1393466)))

(declare-fun res!629586 () Bool)

(declare-fun e!890377 () Bool)

(assert (=> bs!337810 (=> (not res!629586) (not e!890377))))

(assert (=> bs!337810 (= res!629586 (validRegex!1641 lt!464154))))

(assert (=> bs!337810 (= (dynLambda!6516 lambda!60383 lt!464154) e!890377)))

(declare-fun b!1394312 () Bool)

(assert (=> b!1394312 (= e!890377 (matchR!1752 lt!464154 lt!463927))))

(assert (= (and bs!337810 res!629586) b!1394312))

(declare-fun m!1570707 () Bool)

(assert (=> bs!337810 m!1570707))

(declare-fun m!1570709 () Bool)

(assert (=> b!1394312 m!1570709))

(assert (=> d!398974 d!399070))

(declare-fun b_lambda!43587 () Bool)

(assert (= b_lambda!43527 (or b!1393456 b_lambda!43587)))

(declare-fun bs!337811 () Bool)

(declare-fun d!399072 () Bool)

(assert (= bs!337811 (and d!399072 b!1393456)))

(assert (=> bs!337811 (= (dynLambda!6511 lambda!60385 (rule!4210 t1!34)) (ruleValid!608 thiss!19762 (rule!4210 t1!34)))))

(declare-fun m!1570711 () Bool)

(assert (=> bs!337811 m!1570711))

(assert (=> d!398928 d!399072))

(declare-fun b_lambda!43589 () Bool)

(assert (= b_lambda!43525 (or b!1393456 b_lambda!43589)))

(declare-fun bs!337812 () Bool)

(declare-fun d!399074 () Bool)

(assert (= bs!337812 (and d!399074 b!1393456)))

(assert (=> bs!337812 (= (dynLambda!6511 lambda!60385 (rule!4210 t2!34)) (ruleValid!608 thiss!19762 (rule!4210 t2!34)))))

(declare-fun m!1570713 () Bool)

(assert (=> bs!337812 m!1570713))

(assert (=> d!398926 d!399074))

(declare-fun b_lambda!43591 () Bool)

(assert (= b_lambda!43575 (or (and b!1393483 b_free!33861) (and b!1393484 b_free!33865 (= (toChars!3597 (transformation!2447 (rule!4210 t1!34))) (toChars!3597 (transformation!2447 (rule!4210 t2!34))))) (and b!1393461 b_free!33869 (= (toChars!3597 (transformation!2447 (h!19533 rules!2550))) (toChars!3597 (transformation!2447 (rule!4210 t2!34))))) (and b!1394305 b_free!33877 (= (toChars!3597 (transformation!2447 (h!19533 (t!122579 rules!2550)))) (toChars!3597 (transformation!2447 (rule!4210 t2!34))))) b_lambda!43591)))

(declare-fun b_lambda!43593 () Bool)

(assert (= b_lambda!43561 (or (and b!1393483 b_free!33861 (= (toChars!3597 (transformation!2447 (rule!4210 t2!34))) (toChars!3597 (transformation!2447 (rule!4210 t1!34))))) (and b!1393484 b_free!33865) (and b!1393461 b_free!33869 (= (toChars!3597 (transformation!2447 (h!19533 rules!2550))) (toChars!3597 (transformation!2447 (rule!4210 t1!34))))) (and b!1394305 b_free!33877 (= (toChars!3597 (transformation!2447 (h!19533 (t!122579 rules!2550)))) (toChars!3597 (transformation!2447 (rule!4210 t1!34))))) b_lambda!43593)))

(declare-fun b_lambda!43595 () Bool)

(assert (= b_lambda!43565 (or b!1393466 b_lambda!43595)))

(declare-fun bs!337813 () Bool)

(declare-fun d!399076 () Bool)

(assert (= bs!337813 (and d!399076 b!1393466)))

(assert (=> bs!337813 (= (dynLambda!6515 lambda!60382 (h!19533 rules!2550)) (regex!2447 (h!19533 rules!2550)))))

(assert (=> b!1394117 d!399076))

(declare-fun b_lambda!43597 () Bool)

(assert (= b_lambda!43517 (or b!1393489 b_lambda!43597)))

(declare-fun bs!337814 () Bool)

(declare-fun d!399078 () Bool)

(assert (= bs!337814 (and d!399078 b!1393489)))

(assert (=> bs!337814 (= (dynLambda!6511 lambda!60384 lt!464080) (= (regex!2447 lt!464080) lt!463925))))

(assert (=> d!398872 d!399078))

(declare-fun b_lambda!43599 () Bool)

(assert (= b_lambda!43519 (or b!1393489 b_lambda!43599)))

(declare-fun bs!337815 () Bool)

(declare-fun d!399080 () Bool)

(assert (= bs!337815 (and d!399080 b!1393489)))

(assert (=> bs!337815 (= (dynLambda!6511 lambda!60384 (h!19533 rules!2550)) (= (regex!2447 (h!19533 rules!2550)) lt!463925))))

(assert (=> b!1393834 d!399080))

(declare-fun b_lambda!43601 () Bool)

(assert (= b_lambda!43567 (or b!1393466 b_lambda!43601)))

(declare-fun bs!337816 () Bool)

(declare-fun d!399082 () Bool)

(assert (= bs!337816 (and d!399082 b!1393466)))

(declare-fun res!629587 () Bool)

(declare-fun e!890378 () Bool)

(assert (=> bs!337816 (=> (not res!629587) (not e!890378))))

(assert (=> bs!337816 (= res!629587 (validRegex!1641 (h!19535 (map!3131 rules!2550 lambda!60382))))))

(assert (=> bs!337816 (= (dynLambda!6516 lambda!60383 (h!19535 (map!3131 rules!2550 lambda!60382))) e!890378)))

(declare-fun b!1394313 () Bool)

(assert (=> b!1394313 (= e!890378 (matchR!1752 (h!19535 (map!3131 rules!2550 lambda!60382)) lt!463927))))

(assert (= (and bs!337816 res!629587) b!1394313))

(declare-fun m!1570715 () Bool)

(assert (=> bs!337816 m!1570715))

(declare-fun m!1570717 () Bool)

(assert (=> b!1394313 m!1570717))

(assert (=> b!1394135 d!399082))

(check-sat (not d!399028) (not b!1394142) (not b!1394294) (not bm!93201) (not d!398984) (not d!398878) (not d!399054) (not d!398880) (not b!1394313) (not b!1394138) (not b!1393795) (not bs!337810) (not b!1394102) (not d!398972) (not b!1394064) (not b_lambda!43581) (not b!1393900) (not b!1394176) (not b!1394160) (not d!398932) (not d!399004) (not b!1394072) (not b!1394238) (not b!1394228) (not b!1394285) (not b!1394175) (not b!1393797) (not b!1394054) (not b!1394066) (not b!1393846) (not b!1394241) (not d!399056) (not b!1393955) (not b!1394047) (not d!398926) (not b_lambda!43591) (not d!398876) b_and!93359 (not b_lambda!43599) (not b_lambda!43595) (not b_next!34563) (not b!1393911) (not b!1394117) (not b!1393956) (not b!1394081) (not b!1393899) b_and!93299 (not b!1394073) (not b!1394312) (not d!398872) (not b!1394098) (not b!1394154) (not b!1394259) (not b!1394111) (not b!1393939) (not d!399002) (not d!398986) (not b!1394049) (not b!1393729) (not d!398978) (not b_lambda!43583) (not b!1394167) (not d!398888) (not d!398998) (not b!1393832) (not d!399000) (not b!1394134) (not d!398870) (not b!1394246) (not b!1394243) (not b!1394169) (not d!399042) (not b!1393941) (not bm!93218) (not b!1393848) b_and!93357 (not bm!93206) (not b!1394078) (not d!399062) (not d!399010) (not b_next!34573) (not d!398970) (not b!1394103) (not b!1394248) (not b!1393801) (not b!1394284) (not b!1394045) (not b!1393840) (not b_lambda!43579) b_and!93307 (not b_next!34569) (not b!1394292) (not b!1394303) (not d!399008) (not d!399044) (not b!1394283) (not b!1394130) (not tb!72937) (not b!1394293) (not d!398988) (not b_lambda!43593) (not d!399038) (not b!1394139) b_and!93361 (not b!1394193) (not bm!93224) (not b_lambda!43577) (not d!399014) (not d!398956) (not b!1394080) (not b!1393930) (not bs!337812) (not b!1394309) (not b!1394240) (not bm!93220) (not bm!93207) (not b!1393836) (not b!1394099) (not b!1393728) (not d!399026) (not b!1394263) (not d!399024) (not b_next!34571) (not d!399048) (not b!1394079) (not d!398824) (not bm!93223) (not b!1394256) (not b!1393929) (not b!1393913) (not b!1393932) (not d!399012) (not b_lambda!43585) (not b!1394239) (not b!1394105) (not d!399020) (not b!1394247) (not d!398960) (not bm!93202) (not d!398822) (not d!398982) (not b!1394131) (not b!1394290) (not b!1393905) (not b!1394232) (not b!1394100) (not b!1394181) (not d!398958) (not bs!337808) (not b!1394308) (not b!1394242) (not b!1394310) (not d!398882) (not d!399022) (not bm!93219) (not b!1394096) (not b!1394311) (not b!1394191) (not bs!337816) (not b!1394046) (not d!399016) (not bs!337811) (not d!398904) (not b!1393727) (not tb!72943) (not b!1394048) (not bs!337809) (not d!398966) (not b_lambda!43587) (not b!1393959) (not d!398868) (not b!1393796) (not b!1394170) (not d!398990) (not d!398968) (not d!398910) b_and!93303 (not b!1394251) (not b!1394182) b_and!93365 (not b!1394092) (not b!1394179) (not b!1393835) (not d!398928) (not b!1394058) (not b!1394057) (not b!1394231) (not b!1393833) (not b_next!34567) (not b!1394097) (not b_next!34579) (not b!1394101) b_and!93363 (not d!398886) (not b!1394153) (not d!398784) (not b!1393794) (not b_next!34581) (not b!1394307) (not b!1393838) (not bm!93208) (not d!398922) (not bm!93222) (not b!1394304) (not b!1394050) (not d!398996) (not b!1393831) (not d!399034) (not b!1394257) (not b!1394051) (not b!1394143) tp_is_empty!6791 (not b_lambda!43589) (not d!399032) (not d!399030) (not d!398884) (not d!398930) (not d!398974) (not d!399050) (not d!399036) (not d!398866) (not b!1394053) (not d!398962) (not b_lambda!43597) (not b!1394055) (not b!1393933) (not b!1393903) (not d!399006) (not b_next!34565) (not b_lambda!43601) (not b!1393837) (not d!399060) (not b!1394095) (not d!399058))
(check-sat b_and!93359 b_and!93357 (not b_next!34573) b_and!93361 (not b_next!34571) (not b_next!34581) (not b_next!34565) (not b_next!34563) b_and!93299 b_and!93307 (not b_next!34569) b_and!93303 b_and!93365 (not b_next!34567) (not b_next!34579) b_and!93363)
