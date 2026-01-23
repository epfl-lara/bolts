; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125566 () Bool)

(assert start!125566)

(declare-fun b!1384366 () Bool)

(declare-fun b_free!33667 () Bool)

(declare-fun b_next!34371 () Bool)

(assert (=> b!1384366 (= b_free!33667 (not b_next!34371))))

(declare-fun tp!396348 () Bool)

(declare-fun b_and!92787 () Bool)

(assert (=> b!1384366 (= tp!396348 b_and!92787)))

(declare-fun b_free!33669 () Bool)

(declare-fun b_next!34373 () Bool)

(assert (=> b!1384366 (= b_free!33669 (not b_next!34373))))

(declare-fun tp!396340 () Bool)

(declare-fun b_and!92789 () Bool)

(assert (=> b!1384366 (= tp!396340 b_and!92789)))

(declare-fun b!1384355 () Bool)

(declare-fun b_free!33671 () Bool)

(declare-fun b_next!34375 () Bool)

(assert (=> b!1384355 (= b_free!33671 (not b_next!34375))))

(declare-fun tp!396338 () Bool)

(declare-fun b_and!92791 () Bool)

(assert (=> b!1384355 (= tp!396338 b_and!92791)))

(declare-fun b_free!33673 () Bool)

(declare-fun b_next!34377 () Bool)

(assert (=> b!1384355 (= b_free!33673 (not b_next!34377))))

(declare-fun tp!396341 () Bool)

(declare-fun b_and!92793 () Bool)

(assert (=> b!1384355 (= tp!396341 b_and!92793)))

(declare-fun b!1384383 () Bool)

(declare-fun b_free!33675 () Bool)

(declare-fun b_next!34379 () Bool)

(assert (=> b!1384383 (= b_free!33675 (not b_next!34379))))

(declare-fun tp!396345 () Bool)

(declare-fun b_and!92795 () Bool)

(assert (=> b!1384383 (= tp!396345 b_and!92795)))

(declare-fun b_free!33677 () Bool)

(declare-fun b_next!34381 () Bool)

(assert (=> b!1384383 (= b_free!33677 (not b_next!34381))))

(declare-fun tp!396347 () Bool)

(declare-fun b_and!92797 () Bool)

(assert (=> b!1384383 (= tp!396347 b_and!92797)))

(declare-fun b!1384376 () Bool)

(assert (=> b!1384376 true))

(assert (=> b!1384376 true))

(declare-fun b!1384381 () Bool)

(assert (=> b!1384381 true))

(declare-fun b!1384356 () Bool)

(assert (=> b!1384356 true))

(declare-fun bs!336794 () Bool)

(declare-fun b!1384378 () Bool)

(assert (= bs!336794 (and b!1384378 b!1384356)))

(declare-fun lambda!59597 () Int)

(declare-fun lambda!59596 () Int)

(assert (=> bs!336794 (not (= lambda!59597 lambda!59596))))

(assert (=> b!1384378 true))

(declare-fun e!884503 () Bool)

(assert (=> b!1384355 (= e!884503 (and tp!396338 tp!396341))))

(declare-fun e!884506 () Bool)

(declare-fun e!884490 () Bool)

(assert (=> b!1384356 (= e!884506 e!884490)))

(declare-fun res!624580 () Bool)

(assert (=> b!1384356 (=> res!624580 e!884490)))

(declare-datatypes ((List!14124 0))(
  ( (Nil!14058) (Cons!14058 (h!19459 (_ BitVec 16)) (t!122149 List!14124)) )
))
(declare-datatypes ((TokenValue!2525 0))(
  ( (FloatLiteralValue!5050 (text!18120 List!14124)) (TokenValueExt!2524 (__x!8879 Int)) (Broken!12625 (value!79004 List!14124)) (Object!2590) (End!2525) (Def!2525) (Underscore!2525) (Match!2525) (Else!2525) (Error!2525) (Case!2525) (If!2525) (Extends!2525) (Abstract!2525) (Class!2525) (Val!2525) (DelimiterValue!5050 (del!2585 List!14124)) (KeywordValue!2531 (value!79005 List!14124)) (CommentValue!5050 (value!79006 List!14124)) (WhitespaceValue!5050 (value!79007 List!14124)) (IndentationValue!2525 (value!79008 List!14124)) (String!16860) (Int32!2525) (Broken!12626 (value!79009 List!14124)) (Boolean!2526) (Unit!20304) (OperatorValue!2528 (op!2585 List!14124)) (IdentifierValue!5050 (value!79010 List!14124)) (IdentifierValue!5051 (value!79011 List!14124)) (WhitespaceValue!5051 (value!79012 List!14124)) (True!5050) (False!5050) (Broken!12627 (value!79013 List!14124)) (Broken!12628 (value!79014 List!14124)) (True!5051) (RightBrace!2525) (RightBracket!2525) (Colon!2525) (Null!2525) (Comma!2525) (LeftBracket!2525) (False!5051) (LeftBrace!2525) (ImaginaryLiteralValue!2525 (text!18121 List!14124)) (StringLiteralValue!7575 (value!79015 List!14124)) (EOFValue!2525 (value!79016 List!14124)) (IdentValue!2525 (value!79017 List!14124)) (DelimiterValue!5051 (value!79018 List!14124)) (DedentValue!2525 (value!79019 List!14124)) (NewLineValue!2525 (value!79020 List!14124)) (IntegerValue!7575 (value!79021 (_ BitVec 32)) (text!18122 List!14124)) (IntegerValue!7576 (value!79022 Int) (text!18123 List!14124)) (Times!2525) (Or!2525) (Equal!2525) (Minus!2525) (Broken!12629 (value!79023 List!14124)) (And!2525) (Div!2525) (LessEqual!2525) (Mod!2525) (Concat!6274) (Not!2525) (Plus!2525) (SpaceValue!2525 (value!79024 List!14124)) (IntegerValue!7577 (value!79025 Int) (text!18124 List!14124)) (StringLiteralValue!7576 (text!18125 List!14124)) (FloatLiteralValue!5051 (text!18126 List!14124)) (BytesLiteralValue!2525 (value!79026 List!14124)) (CommentValue!5051 (value!79027 List!14124)) (StringLiteralValue!7577 (value!79028 List!14124)) (ErrorTokenValue!2525 (msg!2586 List!14124)) )
))
(declare-datatypes ((C!7788 0))(
  ( (C!7789 (val!4454 Int)) )
))
(declare-datatypes ((List!14125 0))(
  ( (Nil!14059) (Cons!14059 (h!19460 C!7788) (t!122150 List!14125)) )
))
(declare-datatypes ((IArray!9265 0))(
  ( (IArray!9266 (innerList!4690 List!14125)) )
))
(declare-datatypes ((Conc!4630 0))(
  ( (Node!4630 (left!12017 Conc!4630) (right!12347 Conc!4630) (csize!9490 Int) (cheight!4841 Int)) (Leaf!7044 (xs!7357 IArray!9265) (csize!9491 Int)) (Empty!4630) )
))
(declare-datatypes ((BalanceConc!9200 0))(
  ( (BalanceConc!9201 (c!227730 Conc!4630)) )
))
(declare-datatypes ((Regex!3749 0))(
  ( (ElementMatch!3749 (c!227731 C!7788)) (Concat!6275 (regOne!8010 Regex!3749) (regTwo!8010 Regex!3749)) (EmptyExpr!3749) (Star!3749 (reg!4078 Regex!3749)) (EmptyLang!3749) (Union!3749 (regOne!8011 Regex!3749) (regTwo!8011 Regex!3749)) )
))
(declare-datatypes ((String!16861 0))(
  ( (String!16862 (value!79029 String)) )
))
(declare-datatypes ((TokenValueInjection!4710 0))(
  ( (TokenValueInjection!4711 (toValue!3718 Int) (toChars!3577 Int)) )
))
(declare-datatypes ((Rule!4670 0))(
  ( (Rule!4671 (regex!2435 Regex!3749) (tag!2697 String!16861) (isSeparator!2435 Bool) (transformation!2435 TokenValueInjection!4710)) )
))
(declare-datatypes ((List!14126 0))(
  ( (Nil!14060) (Cons!14060 (h!19461 Rule!4670) (t!122151 List!14126)) )
))
(declare-fun rules!2550 () List!14126)

(declare-fun exists!514 (List!14126 Int) Bool)

(assert (=> b!1384356 (= res!624580 (not (exists!514 rules!2550 lambda!59596)))))

(assert (=> b!1384356 (exists!514 rules!2550 lambda!59596)))

(declare-fun lambda!59594 () Int)

(declare-datatypes ((Unit!20305 0))(
  ( (Unit!20306) )
))
(declare-fun lt!460303 () Unit!20305)

(declare-fun lt!460289 () Regex!3749)

(declare-fun lemmaMapContains!146 (List!14126 Int Regex!3749) Unit!20305)

(assert (=> b!1384356 (= lt!460303 (lemmaMapContains!146 rules!2550 lambda!59594 lt!460289))))

(declare-fun b!1384357 () Bool)

(declare-fun e!884499 () Bool)

(declare-fun e!884491 () Bool)

(declare-fun tp!396343 () Bool)

(assert (=> b!1384357 (= e!884499 (and e!884491 tp!396343))))

(declare-fun b!1384358 () Bool)

(declare-fun e!884514 () Bool)

(declare-fun e!884510 () Bool)

(assert (=> b!1384358 (= e!884514 e!884510)))

(declare-fun res!624574 () Bool)

(assert (=> b!1384358 (=> (not res!624574) (not e!884510))))

(declare-fun lt!460301 () BalanceConc!9200)

(declare-fun size!11541 (BalanceConc!9200) Int)

(assert (=> b!1384358 (= res!624574 (> (size!11541 lt!460301) 0))))

(declare-datatypes ((Token!4532 0))(
  ( (Token!4533 (value!79030 TokenValue!2525) (rule!4194 Rule!4670) (size!11542 Int) (originalCharacters!3297 List!14125)) )
))
(declare-fun t2!34 () Token!4532)

(declare-fun charsOf!1407 (Token!4532) BalanceConc!9200)

(assert (=> b!1384358 (= lt!460301 (charsOf!1407 t2!34))))

(declare-fun b!1384359 () Bool)

(declare-fun e!884501 () Bool)

(declare-fun e!884505 () Bool)

(assert (=> b!1384359 (= e!884501 e!884505)))

(declare-fun res!624561 () Bool)

(assert (=> b!1384359 (=> res!624561 e!884505)))

(declare-fun lt!460287 () List!14125)

(declare-fun lt!460293 () C!7788)

(declare-fun contains!2683 (List!14125 C!7788) Bool)

(assert (=> b!1384359 (= res!624561 (not (contains!2683 lt!460287 lt!460293)))))

(declare-fun lt!460308 () BalanceConc!9200)

(declare-fun apply!3511 (BalanceConc!9200 Int) C!7788)

(assert (=> b!1384359 (= lt!460293 (apply!3511 lt!460308 0))))

(declare-fun b!1384360 () Bool)

(declare-fun res!624568 () Bool)

(assert (=> b!1384360 (=> res!624568 e!884505)))

(declare-fun lt!460292 () Regex!3749)

(declare-fun lt!460300 () List!14125)

(declare-fun matchR!1740 (Regex!3749 List!14125) Bool)

(assert (=> b!1384360 (= res!624568 (not (matchR!1740 lt!460292 lt!460300)))))

(declare-fun b!1384362 () Bool)

(declare-fun t1!34 () Token!4532)

(declare-fun tp!396339 () Bool)

(declare-fun e!884498 () Bool)

(declare-fun e!884497 () Bool)

(declare-fun inv!21 (TokenValue!2525) Bool)

(assert (=> b!1384362 (= e!884498 (and (inv!21 (value!79030 t1!34)) e!884497 tp!396339))))

(declare-fun b!1384363 () Bool)

(declare-fun e!884508 () Bool)

(declare-fun e!884494 () Bool)

(assert (=> b!1384363 (= e!884508 e!884494)))

(declare-fun res!624575 () Bool)

(assert (=> b!1384363 (=> res!624575 e!884494)))

(declare-fun lt!460291 () List!14125)

(assert (=> b!1384363 (= res!624575 (contains!2683 lt!460291 lt!460293))))

(declare-fun usedCharacters!246 (Regex!3749) List!14125)

(assert (=> b!1384363 (= lt!460291 (usedCharacters!246 (regex!2435 (rule!4194 t1!34))))))

(declare-fun b!1384364 () Bool)

(declare-fun res!624548 () Bool)

(declare-fun e!884507 () Bool)

(assert (=> b!1384364 (=> res!624548 e!884507)))

(declare-fun contains!2684 (List!14126 Rule!4670) Bool)

(assert (=> b!1384364 (= res!624548 (not (contains!2684 rules!2550 (rule!4194 t1!34))))))

(declare-fun b!1384365 () Bool)

(assert (=> b!1384365 (= e!884490 e!884507)))

(declare-fun res!624573 () Bool)

(assert (=> b!1384365 (=> res!624573 e!884507)))

(declare-datatypes ((List!14127 0))(
  ( (Nil!14061) (Cons!14061 (h!19462 Token!4532) (t!122152 List!14127)) )
))
(declare-datatypes ((IArray!9267 0))(
  ( (IArray!9268 (innerList!4691 List!14127)) )
))
(declare-datatypes ((Conc!4631 0))(
  ( (Node!4631 (left!12018 Conc!4631) (right!12348 Conc!4631) (csize!9492 Int) (cheight!4842 Int)) (Leaf!7045 (xs!7358 IArray!9267) (csize!9493 Int)) (Empty!4631) )
))
(declare-datatypes ((BalanceConc!9202 0))(
  ( (BalanceConc!9203 (c!227732 Conc!4631)) )
))
(declare-datatypes ((tuple2!13654 0))(
  ( (tuple2!13655 (_1!7713 BalanceConc!9202) (_2!7713 BalanceConc!9200)) )
))
(declare-fun lt!460302 () tuple2!13654)

(declare-fun lt!460297 () List!14127)

(declare-fun list!5445 (BalanceConc!9202) List!14127)

(assert (=> b!1384365 (= res!624573 (not (= (list!5445 (_1!7713 lt!460302)) lt!460297)))))

(assert (=> b!1384365 (= lt!460297 (Cons!14061 t1!34 Nil!14061))))

(declare-datatypes ((LexerInterface!2130 0))(
  ( (LexerInterfaceExt!2127 (__x!8880 Int)) (Lexer!2128) )
))
(declare-fun thiss!19762 () LexerInterface!2130)

(declare-fun lt!460296 () BalanceConc!9200)

(declare-fun lex!955 (LexerInterface!2130 List!14126 BalanceConc!9200) tuple2!13654)

(assert (=> b!1384365 (= lt!460302 (lex!955 thiss!19762 rules!2550 lt!460296))))

(declare-fun print!894 (LexerInterface!2130 BalanceConc!9202) BalanceConc!9200)

(declare-fun singletonSeq!1078 (Token!4532) BalanceConc!9202)

(assert (=> b!1384365 (= lt!460296 (print!894 thiss!19762 (singletonSeq!1078 t1!34)))))

(declare-fun lt!460306 () Rule!4670)

(declare-fun getWitness!402 (List!14126 Int) Rule!4670)

(assert (=> b!1384365 (= lt!460306 (getWitness!402 rules!2550 lambda!59596))))

(declare-fun e!884492 () Bool)

(assert (=> b!1384366 (= e!884492 (and tp!396348 tp!396340))))

(declare-fun b!1384367 () Bool)

(declare-fun e!884496 () Bool)

(declare-fun e!884493 () Bool)

(assert (=> b!1384367 (= e!884496 e!884493)))

(declare-fun res!624554 () Bool)

(assert (=> b!1384367 (=> res!624554 e!884493)))

(declare-fun lt!460299 () List!14125)

(declare-datatypes ((tuple2!13656 0))(
  ( (tuple2!13657 (_1!7714 Token!4532) (_2!7714 List!14125)) )
))
(declare-datatypes ((Option!2694 0))(
  ( (None!2693) (Some!2693 (v!21547 tuple2!13656)) )
))
(declare-fun maxPrefix!1104 (LexerInterface!2130 List!14126 List!14125) Option!2694)

(assert (=> b!1384367 (= res!624554 (not (= (maxPrefix!1104 thiss!19762 rules!2550 lt!460299) (Some!2693 (tuple2!13657 t2!34 Nil!14059)))))))

(declare-fun list!5446 (BalanceConc!9200) List!14125)

(assert (=> b!1384367 (= lt!460299 (list!5446 lt!460301))))

(declare-fun b!1384368 () Bool)

(declare-fun res!624578 () Bool)

(assert (=> b!1384368 (=> (not res!624578) (not e!884510))))

(declare-fun separableTokensPredicate!413 (LexerInterface!2130 Token!4532 Token!4532 List!14126) Bool)

(assert (=> b!1384368 (= res!624578 (not (separableTokensPredicate!413 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1384369 () Bool)

(declare-fun res!624563 () Bool)

(assert (=> b!1384369 (=> res!624563 e!884493)))

(assert (=> b!1384369 (= res!624563 (not (contains!2684 rules!2550 lt!460306)))))

(declare-fun b!1384370 () Bool)

(declare-fun res!624571 () Bool)

(assert (=> b!1384370 (=> res!624571 e!884507)))

(declare-fun isEmpty!8496 (BalanceConc!9200) Bool)

(assert (=> b!1384370 (= res!624571 (not (isEmpty!8496 (_2!7713 lt!460302))))))

(declare-fun b!1384371 () Bool)

(declare-fun res!624559 () Bool)

(declare-fun e!884495 () Bool)

(assert (=> b!1384371 (=> res!624559 e!884495)))

(declare-fun lt!460285 () List!14125)

(declare-fun lt!460307 () C!7788)

(assert (=> b!1384371 (= res!624559 (not (contains!2683 lt!460285 lt!460307)))))

(declare-fun b!1384372 () Bool)

(declare-fun e!884504 () Bool)

(assert (=> b!1384372 (= e!884504 e!884506)))

(declare-fun res!624579 () Bool)

(assert (=> b!1384372 (=> res!624579 e!884506)))

(declare-datatypes ((List!14128 0))(
  ( (Nil!14062) (Cons!14062 (h!19463 Regex!3749) (t!122153 List!14128)) )
))
(declare-fun contains!2685 (List!14128 Regex!3749) Bool)

(declare-fun map!3113 (List!14126 Int) List!14128)

(assert (=> b!1384372 (= res!624579 (not (contains!2685 (map!3113 rules!2550 lambda!59594) lt!460289)))))

(declare-fun lambda!59595 () Int)

(declare-fun getWitness!403 (List!14128 Int) Regex!3749)

(assert (=> b!1384372 (= lt!460289 (getWitness!403 (map!3113 rules!2550 lambda!59594) lambda!59595))))

(declare-fun b!1384373 () Bool)

(declare-fun res!624569 () Bool)

(assert (=> b!1384373 (=> (not res!624569) (not e!884514))))

(declare-fun rulesProduceIndividualToken!1099 (LexerInterface!2130 List!14126 Token!4532) Bool)

(assert (=> b!1384373 (= res!624569 (rulesProduceIndividualToken!1099 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1384374 () Bool)

(declare-fun res!624555 () Bool)

(assert (=> b!1384374 (=> res!624555 e!884507)))

(declare-datatypes ((tuple2!13658 0))(
  ( (tuple2!13659 (_1!7715 List!14127) (_2!7715 List!14125)) )
))
(declare-fun lexList!644 (LexerInterface!2130 List!14126 List!14125) tuple2!13658)

(assert (=> b!1384374 (= res!624555 (not (= (lexList!644 thiss!19762 rules!2550 (list!5446 lt!460296)) (tuple2!13659 lt!460297 Nil!14059))))))

(declare-fun tp!396346 () Bool)

(declare-fun b!1384375 () Bool)

(declare-fun inv!18395 (String!16861) Bool)

(declare-fun inv!18398 (TokenValueInjection!4710) Bool)

(assert (=> b!1384375 (= e!884491 (and tp!396346 (inv!18395 (tag!2697 (h!19461 rules!2550))) (inv!18398 (transformation!2435 (h!19461 rules!2550))) e!884503))))

(declare-fun e!884487 () Bool)

(declare-fun e!884509 () Bool)

(assert (=> b!1384376 (= e!884487 (not e!884509))))

(declare-fun res!624572 () Bool)

(assert (=> b!1384376 (=> res!624572 e!884509)))

(declare-fun lambda!59593 () Int)

(declare-fun Exists!899 (Int) Bool)

(assert (=> b!1384376 (= res!624572 (not (Exists!899 lambda!59593)))))

(assert (=> b!1384376 (Exists!899 lambda!59593)))

(declare-fun lt!460304 () Unit!20305)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!217 (Regex!3749 List!14125) Unit!20305)

(assert (=> b!1384376 (= lt!460304 (lemmaPrefixMatchThenExistsStringThatMatches!217 lt!460292 lt!460287))))

(declare-fun b!1384377 () Bool)

(assert (=> b!1384377 (= e!884494 e!884495)))

(declare-fun res!624565 () Bool)

(assert (=> b!1384377 (=> res!624565 e!884495)))

(declare-fun validRegex!1633 (Regex!3749) Bool)

(assert (=> b!1384377 (= res!624565 (not (validRegex!1633 (regex!2435 (rule!4194 t1!34)))))))

(declare-fun head!2521 (List!14125) C!7788)

(assert (=> b!1384377 (= lt!460307 (head!2521 lt!460285))))

(assert (=> b!1384378 (= e!884493 e!884508)))

(declare-fun res!624551 () Bool)

(assert (=> b!1384378 (=> res!624551 e!884508)))

(assert (=> b!1384378 (= res!624551 (not (matchR!1740 (regex!2435 (rule!4194 t1!34)) lt!460285)))))

(declare-fun lt!460298 () Unit!20305)

(declare-fun forallContained!630 (List!14126 Int Rule!4670) Unit!20305)

(assert (=> b!1384378 (= lt!460298 (forallContained!630 rules!2550 lambda!59597 (rule!4194 t2!34)))))

(declare-fun lt!460310 () Unit!20305)

(assert (=> b!1384378 (= lt!460310 (forallContained!630 rules!2550 lambda!59597 (rule!4194 t1!34)))))

(declare-fun lt!460305 () Unit!20305)

(assert (=> b!1384378 (= lt!460305 (forallContained!630 rules!2550 lambda!59597 lt!460306))))

(declare-fun b!1384379 () Bool)

(assert (=> b!1384379 (= e!884495 (not (contains!2683 lt!460291 lt!460307)))))

(declare-fun b!1384380 () Bool)

(declare-fun tp!396337 () Bool)

(declare-fun e!884502 () Bool)

(declare-fun e!884512 () Bool)

(assert (=> b!1384380 (= e!884512 (and tp!396337 (inv!18395 (tag!2697 (rule!4194 t2!34))) (inv!18398 (transformation!2435 (rule!4194 t2!34))) e!884502))))

(assert (=> b!1384381 (= e!884505 e!884504)))

(declare-fun res!624558 () Bool)

(assert (=> b!1384381 (=> res!624558 e!884504)))

(declare-fun exists!515 (List!14128 Int) Bool)

(assert (=> b!1384381 (= res!624558 (not (exists!515 (map!3113 rules!2550 lambda!59594) lambda!59595)))))

(declare-fun lt!460295 () List!14128)

(assert (=> b!1384381 (exists!515 lt!460295 lambda!59595)))

(declare-fun lt!460294 () Unit!20305)

(declare-fun matchRGenUnionSpec!160 (Regex!3749 List!14128 List!14125) Unit!20305)

(assert (=> b!1384381 (= lt!460294 (matchRGenUnionSpec!160 lt!460292 lt!460295 lt!460300))))

(assert (=> b!1384381 (= lt!460295 (map!3113 rules!2550 lambda!59594))))

(declare-fun b!1384382 () Bool)

(declare-fun res!624549 () Bool)

(assert (=> b!1384382 (=> res!624549 e!884493)))

(assert (=> b!1384382 (= res!624549 (not (contains!2684 rules!2550 (rule!4194 t2!34))))))

(assert (=> b!1384383 (= e!884502 (and tp!396345 tp!396347))))

(declare-fun b!1384384 () Bool)

(assert (=> b!1384384 (= e!884507 e!884496)))

(declare-fun res!624557 () Bool)

(assert (=> b!1384384 (=> res!624557 e!884496)))

(declare-fun lt!460290 () tuple2!13654)

(declare-fun lt!460286 () List!14127)

(assert (=> b!1384384 (= res!624557 (not (= (list!5445 (_1!7713 lt!460290)) lt!460286)))))

(assert (=> b!1384384 (= lt!460286 (Cons!14061 t2!34 Nil!14061))))

(declare-fun lt!460288 () BalanceConc!9200)

(assert (=> b!1384384 (= lt!460290 (lex!955 thiss!19762 rules!2550 lt!460288))))

(assert (=> b!1384384 (= lt!460288 (print!894 thiss!19762 (singletonSeq!1078 t2!34)))))

(declare-fun b!1384385 () Bool)

(declare-fun res!624556 () Bool)

(assert (=> b!1384385 (=> (not res!624556) (not e!884510))))

(declare-fun sepAndNonSepRulesDisjointChars!808 (List!14126 List!14126) Bool)

(assert (=> b!1384385 (= res!624556 (sepAndNonSepRulesDisjointChars!808 rules!2550 rules!2550))))

(declare-fun b!1384386 () Bool)

(declare-fun res!624567 () Bool)

(assert (=> b!1384386 (=> (not res!624567) (not e!884514))))

(declare-fun isEmpty!8497 (List!14126) Bool)

(assert (=> b!1384386 (= res!624567 (not (isEmpty!8497 rules!2550)))))

(declare-fun b!1384387 () Bool)

(declare-fun res!624570 () Bool)

(assert (=> b!1384387 (=> res!624570 e!884496)))

(assert (=> b!1384387 (= res!624570 (not (= (lexList!644 thiss!19762 rules!2550 (list!5446 lt!460288)) (tuple2!13659 lt!460286 Nil!14059))))))

(declare-fun b!1384388 () Bool)

(declare-fun res!624560 () Bool)

(assert (=> b!1384388 (=> (not res!624560) (not e!884514))))

(assert (=> b!1384388 (= res!624560 (rulesProduceIndividualToken!1099 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1384389 () Bool)

(declare-fun res!624547 () Bool)

(assert (=> b!1384389 (=> res!624547 e!884505)))

(declare-fun lt!460309 () C!7788)

(assert (=> b!1384389 (= res!624547 (not (contains!2683 lt!460287 lt!460309)))))

(declare-fun tp!396342 () Bool)

(declare-fun b!1384390 () Bool)

(assert (=> b!1384390 (= e!884497 (and tp!396342 (inv!18395 (tag!2697 (rule!4194 t1!34))) (inv!18398 (transformation!2435 (rule!4194 t1!34))) e!884492))))

(declare-fun b!1384391 () Bool)

(declare-fun res!624577 () Bool)

(assert (=> b!1384391 (=> res!624577 e!884507)))

(assert (=> b!1384391 (= res!624577 (not (= (maxPrefix!1104 thiss!19762 rules!2550 lt!460285) (Some!2693 (tuple2!13657 t1!34 Nil!14059)))))))

(declare-fun b!1384392 () Bool)

(assert (=> b!1384392 (= e!884510 e!884487)))

(declare-fun res!624566 () Bool)

(assert (=> b!1384392 (=> (not res!624566) (not e!884487))))

(declare-fun prefixMatch!258 (Regex!3749 List!14125) Bool)

(assert (=> b!1384392 (= res!624566 (prefixMatch!258 lt!460292 lt!460287))))

(declare-fun rulesRegex!318 (LexerInterface!2130 List!14126) Regex!3749)

(assert (=> b!1384392 (= lt!460292 (rulesRegex!318 thiss!19762 rules!2550))))

(declare-fun ++!3646 (List!14125 List!14125) List!14125)

(assert (=> b!1384392 (= lt!460287 (++!3646 lt!460285 (Cons!14059 lt!460309 Nil!14059)))))

(assert (=> b!1384392 (= lt!460309 (apply!3511 lt!460301 0))))

(assert (=> b!1384392 (= lt!460285 (list!5446 lt!460308))))

(assert (=> b!1384392 (= lt!460308 (charsOf!1407 t1!34))))

(declare-fun res!624564 () Bool)

(assert (=> start!125566 (=> (not res!624564) (not e!884514))))

(get-info :version)

(assert (=> start!125566 (= res!624564 ((_ is Lexer!2128) thiss!19762))))

(assert (=> start!125566 e!884514))

(assert (=> start!125566 true))

(assert (=> start!125566 e!884499))

(declare-fun inv!18399 (Token!4532) Bool)

(assert (=> start!125566 (and (inv!18399 t1!34) e!884498)))

(declare-fun e!884486 () Bool)

(assert (=> start!125566 (and (inv!18399 t2!34) e!884486)))

(declare-fun b!1384361 () Bool)

(declare-fun res!624576 () Bool)

(assert (=> b!1384361 (=> res!624576 e!884496)))

(assert (=> b!1384361 (= res!624576 (not (isEmpty!8496 (_2!7713 lt!460290))))))

(declare-fun b!1384393 () Bool)

(declare-fun res!624546 () Bool)

(assert (=> b!1384393 (=> (not res!624546) (not e!884514))))

(declare-fun rulesInvariant!2000 (LexerInterface!2130 List!14126) Bool)

(assert (=> b!1384393 (= res!624546 (rulesInvariant!2000 thiss!19762 rules!2550))))

(declare-fun b!1384394 () Bool)

(declare-fun res!624552 () Bool)

(assert (=> b!1384394 (=> res!624552 e!884508)))

(assert (=> b!1384394 (= res!624552 (not (matchR!1740 (regex!2435 (rule!4194 t2!34)) lt!460299)))))

(declare-fun b!1384395 () Bool)

(declare-fun tp!396344 () Bool)

(assert (=> b!1384395 (= e!884486 (and (inv!21 (value!79030 t2!34)) e!884512 tp!396344))))

(declare-fun b!1384396 () Bool)

(declare-fun res!624553 () Bool)

(assert (=> b!1384396 (=> res!624553 e!884505)))

(assert (=> b!1384396 (= res!624553 (not (contains!2683 lt!460300 lt!460309)))))

(declare-fun b!1384397 () Bool)

(declare-fun res!624562 () Bool)

(assert (=> b!1384397 (=> (not res!624562) (not e!884514))))

(assert (=> b!1384397 (= res!624562 (not (= (isSeparator!2435 (rule!4194 t1!34)) (isSeparator!2435 (rule!4194 t2!34)))))))

(declare-fun b!1384398 () Bool)

(declare-fun res!624581 () Bool)

(assert (=> b!1384398 (=> res!624581 e!884505)))

(assert (=> b!1384398 (= res!624581 (not (contains!2683 lt!460300 lt!460293)))))

(declare-fun b!1384399 () Bool)

(assert (=> b!1384399 (= e!884509 e!884501)))

(declare-fun res!624550 () Bool)

(assert (=> b!1384399 (=> res!624550 e!884501)))

(declare-fun getSuffix!595 (List!14125 List!14125) List!14125)

(assert (=> b!1384399 (= res!624550 (not (= lt!460300 (++!3646 lt!460287 (getSuffix!595 lt!460300 lt!460287)))))))

(declare-fun pickWitness!202 (Int) List!14125)

(assert (=> b!1384399 (= lt!460300 (pickWitness!202 lambda!59593))))

(assert (= (and start!125566 res!624564) b!1384386))

(assert (= (and b!1384386 res!624567) b!1384393))

(assert (= (and b!1384393 res!624546) b!1384373))

(assert (= (and b!1384373 res!624569) b!1384388))

(assert (= (and b!1384388 res!624560) b!1384397))

(assert (= (and b!1384397 res!624562) b!1384358))

(assert (= (and b!1384358 res!624574) b!1384385))

(assert (= (and b!1384385 res!624556) b!1384368))

(assert (= (and b!1384368 res!624578) b!1384392))

(assert (= (and b!1384392 res!624566) b!1384376))

(assert (= (and b!1384376 (not res!624572)) b!1384399))

(assert (= (and b!1384399 (not res!624550)) b!1384359))

(assert (= (and b!1384359 (not res!624561)) b!1384398))

(assert (= (and b!1384398 (not res!624581)) b!1384389))

(assert (= (and b!1384389 (not res!624547)) b!1384396))

(assert (= (and b!1384396 (not res!624553)) b!1384360))

(assert (= (and b!1384360 (not res!624568)) b!1384381))

(assert (= (and b!1384381 (not res!624558)) b!1384372))

(assert (= (and b!1384372 (not res!624579)) b!1384356))

(assert (= (and b!1384356 (not res!624580)) b!1384365))

(assert (= (and b!1384365 (not res!624573)) b!1384370))

(assert (= (and b!1384370 (not res!624571)) b!1384374))

(assert (= (and b!1384374 (not res!624555)) b!1384391))

(assert (= (and b!1384391 (not res!624577)) b!1384364))

(assert (= (and b!1384364 (not res!624548)) b!1384384))

(assert (= (and b!1384384 (not res!624557)) b!1384361))

(assert (= (and b!1384361 (not res!624576)) b!1384387))

(assert (= (and b!1384387 (not res!624570)) b!1384367))

(assert (= (and b!1384367 (not res!624554)) b!1384382))

(assert (= (and b!1384382 (not res!624549)) b!1384369))

(assert (= (and b!1384369 (not res!624563)) b!1384378))

(assert (= (and b!1384378 (not res!624551)) b!1384394))

(assert (= (and b!1384394 (not res!624552)) b!1384363))

(assert (= (and b!1384363 (not res!624575)) b!1384377))

(assert (= (and b!1384377 (not res!624565)) b!1384371))

(assert (= (and b!1384371 (not res!624559)) b!1384379))

(assert (= b!1384375 b!1384355))

(assert (= b!1384357 b!1384375))

(assert (= (and start!125566 ((_ is Cons!14060) rules!2550)) b!1384357))

(assert (= b!1384390 b!1384366))

(assert (= b!1384362 b!1384390))

(assert (= start!125566 b!1384362))

(assert (= b!1384380 b!1384383))

(assert (= b!1384395 b!1384380))

(assert (= start!125566 b!1384395))

(declare-fun m!1557489 () Bool)

(assert (=> b!1384398 m!1557489))

(declare-fun m!1557491 () Bool)

(assert (=> b!1384364 m!1557491))

(declare-fun m!1557493 () Bool)

(assert (=> b!1384365 m!1557493))

(declare-fun m!1557495 () Bool)

(assert (=> b!1384365 m!1557495))

(declare-fun m!1557497 () Bool)

(assert (=> b!1384365 m!1557497))

(assert (=> b!1384365 m!1557495))

(declare-fun m!1557499 () Bool)

(assert (=> b!1384365 m!1557499))

(declare-fun m!1557501 () Bool)

(assert (=> b!1384365 m!1557501))

(declare-fun m!1557503 () Bool)

(assert (=> b!1384380 m!1557503))

(declare-fun m!1557505 () Bool)

(assert (=> b!1384380 m!1557505))

(declare-fun m!1557507 () Bool)

(assert (=> b!1384358 m!1557507))

(declare-fun m!1557509 () Bool)

(assert (=> b!1384358 m!1557509))

(declare-fun m!1557511 () Bool)

(assert (=> b!1384390 m!1557511))

(declare-fun m!1557513 () Bool)

(assert (=> b!1384390 m!1557513))

(declare-fun m!1557515 () Bool)

(assert (=> b!1384356 m!1557515))

(assert (=> b!1384356 m!1557515))

(declare-fun m!1557517 () Bool)

(assert (=> b!1384356 m!1557517))

(declare-fun m!1557519 () Bool)

(assert (=> b!1384374 m!1557519))

(assert (=> b!1384374 m!1557519))

(declare-fun m!1557521 () Bool)

(assert (=> b!1384374 m!1557521))

(declare-fun m!1557523 () Bool)

(assert (=> b!1384379 m!1557523))

(declare-fun m!1557525 () Bool)

(assert (=> b!1384382 m!1557525))

(declare-fun m!1557527 () Bool)

(assert (=> b!1384399 m!1557527))

(assert (=> b!1384399 m!1557527))

(declare-fun m!1557529 () Bool)

(assert (=> b!1384399 m!1557529))

(declare-fun m!1557531 () Bool)

(assert (=> b!1384399 m!1557531))

(declare-fun m!1557533 () Bool)

(assert (=> b!1384385 m!1557533))

(declare-fun m!1557535 () Bool)

(assert (=> b!1384381 m!1557535))

(declare-fun m!1557537 () Bool)

(assert (=> b!1384381 m!1557537))

(assert (=> b!1384381 m!1557535))

(declare-fun m!1557539 () Bool)

(assert (=> b!1384381 m!1557539))

(declare-fun m!1557541 () Bool)

(assert (=> b!1384381 m!1557541))

(assert (=> b!1384381 m!1557535))

(declare-fun m!1557543 () Bool)

(assert (=> start!125566 m!1557543))

(declare-fun m!1557545 () Bool)

(assert (=> start!125566 m!1557545))

(declare-fun m!1557547 () Bool)

(assert (=> b!1384361 m!1557547))

(declare-fun m!1557549 () Bool)

(assert (=> b!1384370 m!1557549))

(assert (=> b!1384372 m!1557535))

(assert (=> b!1384372 m!1557535))

(declare-fun m!1557551 () Bool)

(assert (=> b!1384372 m!1557551))

(assert (=> b!1384372 m!1557535))

(assert (=> b!1384372 m!1557535))

(declare-fun m!1557553 () Bool)

(assert (=> b!1384372 m!1557553))

(declare-fun m!1557555 () Bool)

(assert (=> b!1384360 m!1557555))

(declare-fun m!1557557 () Bool)

(assert (=> b!1384373 m!1557557))

(declare-fun m!1557559 () Bool)

(assert (=> b!1384378 m!1557559))

(declare-fun m!1557561 () Bool)

(assert (=> b!1384378 m!1557561))

(declare-fun m!1557563 () Bool)

(assert (=> b!1384378 m!1557563))

(declare-fun m!1557565 () Bool)

(assert (=> b!1384378 m!1557565))

(declare-fun m!1557567 () Bool)

(assert (=> b!1384376 m!1557567))

(assert (=> b!1384376 m!1557567))

(declare-fun m!1557569 () Bool)

(assert (=> b!1384376 m!1557569))

(declare-fun m!1557571 () Bool)

(assert (=> b!1384368 m!1557571))

(declare-fun m!1557573 () Bool)

(assert (=> b!1384359 m!1557573))

(declare-fun m!1557575 () Bool)

(assert (=> b!1384359 m!1557575))

(declare-fun m!1557577 () Bool)

(assert (=> b!1384377 m!1557577))

(declare-fun m!1557579 () Bool)

(assert (=> b!1384377 m!1557579))

(declare-fun m!1557581 () Bool)

(assert (=> b!1384369 m!1557581))

(declare-fun m!1557583 () Bool)

(assert (=> b!1384395 m!1557583))

(declare-fun m!1557585 () Bool)

(assert (=> b!1384389 m!1557585))

(declare-fun m!1557587 () Bool)

(assert (=> b!1384367 m!1557587))

(declare-fun m!1557589 () Bool)

(assert (=> b!1384367 m!1557589))

(declare-fun m!1557591 () Bool)

(assert (=> b!1384386 m!1557591))

(declare-fun m!1557593 () Bool)

(assert (=> b!1384393 m!1557593))

(declare-fun m!1557595 () Bool)

(assert (=> b!1384388 m!1557595))

(declare-fun m!1557597 () Bool)

(assert (=> b!1384362 m!1557597))

(declare-fun m!1557599 () Bool)

(assert (=> b!1384375 m!1557599))

(declare-fun m!1557601 () Bool)

(assert (=> b!1384375 m!1557601))

(declare-fun m!1557603 () Bool)

(assert (=> b!1384396 m!1557603))

(declare-fun m!1557605 () Bool)

(assert (=> b!1384391 m!1557605))

(declare-fun m!1557607 () Bool)

(assert (=> b!1384392 m!1557607))

(declare-fun m!1557609 () Bool)

(assert (=> b!1384392 m!1557609))

(declare-fun m!1557611 () Bool)

(assert (=> b!1384392 m!1557611))

(declare-fun m!1557613 () Bool)

(assert (=> b!1384392 m!1557613))

(declare-fun m!1557615 () Bool)

(assert (=> b!1384392 m!1557615))

(declare-fun m!1557617 () Bool)

(assert (=> b!1384392 m!1557617))

(declare-fun m!1557619 () Bool)

(assert (=> b!1384394 m!1557619))

(declare-fun m!1557621 () Bool)

(assert (=> b!1384384 m!1557621))

(declare-fun m!1557623 () Bool)

(assert (=> b!1384384 m!1557623))

(declare-fun m!1557625 () Bool)

(assert (=> b!1384384 m!1557625))

(assert (=> b!1384384 m!1557625))

(declare-fun m!1557627 () Bool)

(assert (=> b!1384384 m!1557627))

(declare-fun m!1557629 () Bool)

(assert (=> b!1384363 m!1557629))

(declare-fun m!1557631 () Bool)

(assert (=> b!1384363 m!1557631))

(declare-fun m!1557633 () Bool)

(assert (=> b!1384387 m!1557633))

(assert (=> b!1384387 m!1557633))

(declare-fun m!1557635 () Bool)

(assert (=> b!1384387 m!1557635))

(declare-fun m!1557637 () Bool)

(assert (=> b!1384371 m!1557637))

(check-sat (not b!1384376) (not b!1384396) b_and!92791 (not b!1384364) b_and!92797 (not b!1384368) (not b!1384356) (not start!125566) (not b!1384390) (not b_next!34371) (not b!1384375) (not b!1384377) (not b!1384388) b_and!92787 (not b!1384391) (not b!1384360) (not b!1384380) (not b!1384365) (not b!1384357) (not b!1384358) (not b_next!34381) (not b!1384394) (not b!1384373) (not b_next!34379) (not b!1384359) (not b!1384399) (not b!1384363) b_and!92793 (not b!1384384) (not b!1384369) (not b!1384374) (not b!1384361) (not b!1384379) (not b!1384370) (not b!1384382) (not b!1384367) (not b!1384378) (not b_next!34373) (not b_next!34377) (not b_next!34375) (not b!1384392) (not b!1384389) (not b!1384395) b_and!92789 (not b!1384385) b_and!92795 (not b!1384386) (not b!1384381) (not b!1384398) (not b!1384393) (not b!1384371) (not b!1384362) (not b!1384372) (not b!1384387))
(check-sat b_and!92787 (not b_next!34381) b_and!92791 b_and!92797 (not b_next!34371) (not b_next!34375) b_and!92789 b_and!92795 (not b_next!34379) b_and!92793 (not b_next!34373) (not b_next!34377))
(get-model)

(declare-fun d!395340 () Bool)

(declare-fun lt!460342 () List!14128)

(declare-fun size!11547 (List!14128) Int)

(declare-fun size!11548 (List!14126) Int)

(assert (=> d!395340 (= (size!11547 lt!460342) (size!11548 rules!2550))))

(declare-fun e!884578 () List!14128)

(assert (=> d!395340 (= lt!460342 e!884578)))

(declare-fun c!227756 () Bool)

(assert (=> d!395340 (= c!227756 ((_ is Nil!14060) rules!2550))))

(assert (=> d!395340 (= (map!3113 rules!2550 lambda!59594) lt!460342)))

(declare-fun b!1384513 () Bool)

(assert (=> b!1384513 (= e!884578 Nil!14062)))

(declare-fun b!1384514 () Bool)

(declare-fun $colon$colon!214 (List!14128 Regex!3749) List!14128)

(declare-fun dynLambda!6424 (Int Rule!4670) Regex!3749)

(assert (=> b!1384514 (= e!884578 ($colon$colon!214 (map!3113 (t!122151 rules!2550) lambda!59594) (dynLambda!6424 lambda!59594 (h!19461 rules!2550))))))

(assert (= (and d!395340 c!227756) b!1384513))

(assert (= (and d!395340 (not c!227756)) b!1384514))

(declare-fun b_lambda!42791 () Bool)

(assert (=> (not b_lambda!42791) (not b!1384514)))

(declare-fun m!1557753 () Bool)

(assert (=> d!395340 m!1557753))

(declare-fun m!1557755 () Bool)

(assert (=> d!395340 m!1557755))

(declare-fun m!1557757 () Bool)

(assert (=> b!1384514 m!1557757))

(declare-fun m!1557759 () Bool)

(assert (=> b!1384514 m!1557759))

(assert (=> b!1384514 m!1557757))

(assert (=> b!1384514 m!1557759))

(declare-fun m!1557761 () Bool)

(assert (=> b!1384514 m!1557761))

(assert (=> b!1384381 d!395340))

(declare-fun bs!336803 () Bool)

(declare-fun d!395350 () Bool)

(assert (= bs!336803 (and d!395350 b!1384381)))

(declare-fun lambda!59606 () Int)

(assert (=> bs!336803 (not (= lambda!59606 lambda!59595))))

(assert (=> d!395350 true))

(declare-fun order!8575 () Int)

(declare-fun dynLambda!6425 (Int Int) Int)

(assert (=> d!395350 (< (dynLambda!6425 order!8575 lambda!59595) (dynLambda!6425 order!8575 lambda!59606))))

(declare-fun forall!3420 (List!14128 Int) Bool)

(assert (=> d!395350 (= (exists!515 (map!3113 rules!2550 lambda!59594) lambda!59595) (not (forall!3420 (map!3113 rules!2550 lambda!59594) lambda!59606)))))

(declare-fun bs!336804 () Bool)

(assert (= bs!336804 d!395350))

(assert (=> bs!336804 m!1557535))

(declare-fun m!1557767 () Bool)

(assert (=> bs!336804 m!1557767))

(assert (=> b!1384381 d!395350))

(declare-fun bs!336806 () Bool)

(declare-fun d!395354 () Bool)

(assert (= bs!336806 (and d!395354 b!1384381)))

(declare-fun lambda!59611 () Int)

(assert (=> bs!336806 (not (= lambda!59611 lambda!59595))))

(declare-fun bs!336807 () Bool)

(assert (= bs!336807 (and d!395354 d!395350)))

(assert (=> bs!336807 (not (= lambda!59611 lambda!59606))))

(declare-fun lambda!59612 () Int)

(assert (=> bs!336806 (= lambda!59612 lambda!59595)))

(assert (=> bs!336807 (not (= lambda!59612 lambda!59606))))

(declare-fun bs!336808 () Bool)

(assert (= bs!336808 d!395354))

(assert (=> bs!336808 (not (= lambda!59612 lambda!59611))))

(assert (=> d!395354 true))

(assert (=> d!395354 (= (matchR!1740 lt!460292 lt!460300) (exists!515 lt!460295 lambda!59612))))

(declare-fun lt!460353 () Unit!20305)

(declare-fun choose!8503 (Regex!3749 List!14128 List!14125) Unit!20305)

(assert (=> d!395354 (= lt!460353 (choose!8503 lt!460292 lt!460295 lt!460300))))

(assert (=> d!395354 (forall!3420 lt!460295 lambda!59611)))

(assert (=> d!395354 (= (matchRGenUnionSpec!160 lt!460292 lt!460295 lt!460300) lt!460353)))

(assert (=> bs!336808 m!1557555))

(declare-fun m!1557787 () Bool)

(assert (=> bs!336808 m!1557787))

(declare-fun m!1557789 () Bool)

(assert (=> bs!336808 m!1557789))

(declare-fun m!1557791 () Bool)

(assert (=> bs!336808 m!1557791))

(assert (=> b!1384381 d!395354))

(declare-fun bs!336810 () Bool)

(declare-fun d!395360 () Bool)

(assert (= bs!336810 (and d!395360 b!1384381)))

(declare-fun lambda!59613 () Int)

(assert (=> bs!336810 (not (= lambda!59613 lambda!59595))))

(declare-fun bs!336811 () Bool)

(assert (= bs!336811 (and d!395360 d!395350)))

(assert (=> bs!336811 (= lambda!59613 lambda!59606)))

(declare-fun bs!336812 () Bool)

(assert (= bs!336812 (and d!395360 d!395354)))

(assert (=> bs!336812 (not (= lambda!59613 lambda!59611))))

(assert (=> bs!336812 (not (= lambda!59613 lambda!59612))))

(assert (=> d!395360 true))

(assert (=> d!395360 (< (dynLambda!6425 order!8575 lambda!59595) (dynLambda!6425 order!8575 lambda!59613))))

(assert (=> d!395360 (= (exists!515 lt!460295 lambda!59595) (not (forall!3420 lt!460295 lambda!59613)))))

(declare-fun bs!336813 () Bool)

(assert (= bs!336813 d!395360))

(declare-fun m!1557795 () Bool)

(assert (=> bs!336813 m!1557795))

(assert (=> b!1384381 d!395360))

(declare-fun b!1384570 () Bool)

(declare-fun e!884615 () Bool)

(declare-fun e!884612 () Bool)

(assert (=> b!1384570 (= e!884615 e!884612)))

(declare-fun res!624672 () Bool)

(assert (=> b!1384570 (=> res!624672 e!884612)))

(declare-fun call!92629 () Bool)

(assert (=> b!1384570 (= res!624672 call!92629)))

(declare-fun b!1384571 () Bool)

(declare-fun e!884617 () Bool)

(declare-fun derivativeStep!971 (Regex!3749 C!7788) Regex!3749)

(declare-fun tail!2010 (List!14125) List!14125)

(assert (=> b!1384571 (= e!884617 (matchR!1740 (derivativeStep!971 lt!460292 (head!2521 lt!460300)) (tail!2010 lt!460300)))))

(declare-fun b!1384572 () Bool)

(declare-fun res!624674 () Bool)

(assert (=> b!1384572 (=> res!624674 e!884612)))

(declare-fun isEmpty!8502 (List!14125) Bool)

(assert (=> b!1384572 (= res!624674 (not (isEmpty!8502 (tail!2010 lt!460300))))))

(declare-fun b!1384573 () Bool)

(declare-fun e!884616 () Bool)

(declare-fun lt!460361 () Bool)

(assert (=> b!1384573 (= e!884616 (not lt!460361))))

(declare-fun b!1384574 () Bool)

(assert (=> b!1384574 (= e!884612 (not (= (head!2521 lt!460300) (c!227731 lt!460292))))))

(declare-fun b!1384575 () Bool)

(declare-fun e!884618 () Bool)

(assert (=> b!1384575 (= e!884618 e!884615)))

(declare-fun res!624676 () Bool)

(assert (=> b!1384575 (=> (not res!624676) (not e!884615))))

(assert (=> b!1384575 (= res!624676 (not lt!460361))))

(declare-fun b!1384576 () Bool)

(declare-fun res!624673 () Bool)

(assert (=> b!1384576 (=> res!624673 e!884618)))

(declare-fun e!884614 () Bool)

(assert (=> b!1384576 (= res!624673 e!884614)))

(declare-fun res!624670 () Bool)

(assert (=> b!1384576 (=> (not res!624670) (not e!884614))))

(assert (=> b!1384576 (= res!624670 lt!460361)))

(declare-fun b!1384577 () Bool)

(declare-fun e!884613 () Bool)

(assert (=> b!1384577 (= e!884613 (= lt!460361 call!92629))))

(declare-fun bm!92624 () Bool)

(assert (=> bm!92624 (= call!92629 (isEmpty!8502 lt!460300))))

(declare-fun d!395364 () Bool)

(assert (=> d!395364 e!884613))

(declare-fun c!227769 () Bool)

(assert (=> d!395364 (= c!227769 ((_ is EmptyExpr!3749) lt!460292))))

(assert (=> d!395364 (= lt!460361 e!884617)))

(declare-fun c!227770 () Bool)

(assert (=> d!395364 (= c!227770 (isEmpty!8502 lt!460300))))

(assert (=> d!395364 (validRegex!1633 lt!460292)))

(assert (=> d!395364 (= (matchR!1740 lt!460292 lt!460300) lt!460361)))

(declare-fun b!1384578 () Bool)

(declare-fun res!624677 () Bool)

(assert (=> b!1384578 (=> res!624677 e!884618)))

(assert (=> b!1384578 (= res!624677 (not ((_ is ElementMatch!3749) lt!460292)))))

(assert (=> b!1384578 (= e!884616 e!884618)))

(declare-fun b!1384579 () Bool)

(assert (=> b!1384579 (= e!884613 e!884616)))

(declare-fun c!227771 () Bool)

(assert (=> b!1384579 (= c!227771 ((_ is EmptyLang!3749) lt!460292))))

(declare-fun b!1384580 () Bool)

(declare-fun nullable!1213 (Regex!3749) Bool)

(assert (=> b!1384580 (= e!884617 (nullable!1213 lt!460292))))

(declare-fun b!1384581 () Bool)

(declare-fun res!624671 () Bool)

(assert (=> b!1384581 (=> (not res!624671) (not e!884614))))

(assert (=> b!1384581 (= res!624671 (isEmpty!8502 (tail!2010 lt!460300)))))

(declare-fun b!1384582 () Bool)

(declare-fun res!624675 () Bool)

(assert (=> b!1384582 (=> (not res!624675) (not e!884614))))

(assert (=> b!1384582 (= res!624675 (not call!92629))))

(declare-fun b!1384583 () Bool)

(assert (=> b!1384583 (= e!884614 (= (head!2521 lt!460300) (c!227731 lt!460292)))))

(assert (= (and d!395364 c!227770) b!1384580))

(assert (= (and d!395364 (not c!227770)) b!1384571))

(assert (= (and d!395364 c!227769) b!1384577))

(assert (= (and d!395364 (not c!227769)) b!1384579))

(assert (= (and b!1384579 c!227771) b!1384573))

(assert (= (and b!1384579 (not c!227771)) b!1384578))

(assert (= (and b!1384578 (not res!624677)) b!1384576))

(assert (= (and b!1384576 res!624670) b!1384582))

(assert (= (and b!1384582 res!624675) b!1384581))

(assert (= (and b!1384581 res!624671) b!1384583))

(assert (= (and b!1384576 (not res!624673)) b!1384575))

(assert (= (and b!1384575 res!624676) b!1384570))

(assert (= (and b!1384570 (not res!624672)) b!1384572))

(assert (= (and b!1384572 (not res!624674)) b!1384574))

(assert (= (or b!1384577 b!1384570 b!1384582) bm!92624))

(declare-fun m!1557803 () Bool)

(assert (=> bm!92624 m!1557803))

(declare-fun m!1557805 () Bool)

(assert (=> b!1384581 m!1557805))

(assert (=> b!1384581 m!1557805))

(declare-fun m!1557807 () Bool)

(assert (=> b!1384581 m!1557807))

(declare-fun m!1557809 () Bool)

(assert (=> b!1384571 m!1557809))

(assert (=> b!1384571 m!1557809))

(declare-fun m!1557811 () Bool)

(assert (=> b!1384571 m!1557811))

(assert (=> b!1384571 m!1557805))

(assert (=> b!1384571 m!1557811))

(assert (=> b!1384571 m!1557805))

(declare-fun m!1557813 () Bool)

(assert (=> b!1384571 m!1557813))

(declare-fun m!1557815 () Bool)

(assert (=> b!1384580 m!1557815))

(assert (=> b!1384572 m!1557805))

(assert (=> b!1384572 m!1557805))

(assert (=> b!1384572 m!1557807))

(assert (=> b!1384574 m!1557809))

(assert (=> b!1384583 m!1557809))

(assert (=> d!395364 m!1557803))

(declare-fun m!1557817 () Bool)

(assert (=> d!395364 m!1557817))

(assert (=> b!1384360 d!395364))

(declare-fun d!395368 () Bool)

(declare-fun lt!460364 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2059 (List!14125) (InoxSet C!7788))

(assert (=> d!395368 (= lt!460364 (select (content!2059 lt!460287) lt!460293))))

(declare-fun e!884624 () Bool)

(assert (=> d!395368 (= lt!460364 e!884624)))

(declare-fun res!624683 () Bool)

(assert (=> d!395368 (=> (not res!624683) (not e!884624))))

(assert (=> d!395368 (= res!624683 ((_ is Cons!14059) lt!460287))))

(assert (=> d!395368 (= (contains!2683 lt!460287 lt!460293) lt!460364)))

(declare-fun b!1384588 () Bool)

(declare-fun e!884623 () Bool)

(assert (=> b!1384588 (= e!884624 e!884623)))

(declare-fun res!624682 () Bool)

(assert (=> b!1384588 (=> res!624682 e!884623)))

(assert (=> b!1384588 (= res!624682 (= (h!19460 lt!460287) lt!460293))))

(declare-fun b!1384589 () Bool)

(assert (=> b!1384589 (= e!884623 (contains!2683 (t!122150 lt!460287) lt!460293))))

(assert (= (and d!395368 res!624683) b!1384588))

(assert (= (and b!1384588 (not res!624682)) b!1384589))

(declare-fun m!1557819 () Bool)

(assert (=> d!395368 m!1557819))

(declare-fun m!1557821 () Bool)

(assert (=> d!395368 m!1557821))

(declare-fun m!1557823 () Bool)

(assert (=> b!1384589 m!1557823))

(assert (=> b!1384359 d!395368))

(declare-fun d!395370 () Bool)

(declare-fun lt!460367 () C!7788)

(declare-fun apply!3515 (List!14125 Int) C!7788)

(assert (=> d!395370 (= lt!460367 (apply!3515 (list!5446 lt!460308) 0))))

(declare-fun apply!3516 (Conc!4630 Int) C!7788)

(assert (=> d!395370 (= lt!460367 (apply!3516 (c!227730 lt!460308) 0))))

(declare-fun e!884627 () Bool)

(assert (=> d!395370 e!884627))

(declare-fun res!624686 () Bool)

(assert (=> d!395370 (=> (not res!624686) (not e!884627))))

(assert (=> d!395370 (= res!624686 (<= 0 0))))

(assert (=> d!395370 (= (apply!3511 lt!460308 0) lt!460367)))

(declare-fun b!1384592 () Bool)

(assert (=> b!1384592 (= e!884627 (< 0 (size!11541 lt!460308)))))

(assert (= (and d!395370 res!624686) b!1384592))

(assert (=> d!395370 m!1557607))

(assert (=> d!395370 m!1557607))

(declare-fun m!1557825 () Bool)

(assert (=> d!395370 m!1557825))

(declare-fun m!1557827 () Bool)

(assert (=> d!395370 m!1557827))

(declare-fun m!1557829 () Bool)

(assert (=> b!1384592 m!1557829))

(assert (=> b!1384359 d!395370))

(declare-fun d!395372 () Bool)

(declare-fun lt!460370 () Bool)

(assert (=> d!395372 (= lt!460370 (isEmpty!8502 (list!5446 (_2!7713 lt!460290))))))

(declare-fun isEmpty!8503 (Conc!4630) Bool)

(assert (=> d!395372 (= lt!460370 (isEmpty!8503 (c!227730 (_2!7713 lt!460290))))))

(assert (=> d!395372 (= (isEmpty!8496 (_2!7713 lt!460290)) lt!460370)))

(declare-fun bs!336814 () Bool)

(assert (= bs!336814 d!395372))

(declare-fun m!1557831 () Bool)

(assert (=> bs!336814 m!1557831))

(assert (=> bs!336814 m!1557831))

(declare-fun m!1557833 () Bool)

(assert (=> bs!336814 m!1557833))

(declare-fun m!1557835 () Bool)

(assert (=> bs!336814 m!1557835))

(assert (=> b!1384361 d!395372))

(declare-fun d!395374 () Bool)

(declare-fun lt!460373 () Bool)

(declare-fun content!2060 (List!14126) (InoxSet Rule!4670))

(assert (=> d!395374 (= lt!460373 (select (content!2060 rules!2550) (rule!4194 t2!34)))))

(declare-fun e!884632 () Bool)

(assert (=> d!395374 (= lt!460373 e!884632)))

(declare-fun res!624691 () Bool)

(assert (=> d!395374 (=> (not res!624691) (not e!884632))))

(assert (=> d!395374 (= res!624691 ((_ is Cons!14060) rules!2550))))

(assert (=> d!395374 (= (contains!2684 rules!2550 (rule!4194 t2!34)) lt!460373)))

(declare-fun b!1384597 () Bool)

(declare-fun e!884633 () Bool)

(assert (=> b!1384597 (= e!884632 e!884633)))

(declare-fun res!624692 () Bool)

(assert (=> b!1384597 (=> res!624692 e!884633)))

(assert (=> b!1384597 (= res!624692 (= (h!19461 rules!2550) (rule!4194 t2!34)))))

(declare-fun b!1384598 () Bool)

(assert (=> b!1384598 (= e!884633 (contains!2684 (t!122151 rules!2550) (rule!4194 t2!34)))))

(assert (= (and d!395374 res!624691) b!1384597))

(assert (= (and b!1384597 (not res!624692)) b!1384598))

(declare-fun m!1557837 () Bool)

(assert (=> d!395374 m!1557837))

(declare-fun m!1557839 () Bool)

(assert (=> d!395374 m!1557839))

(declare-fun m!1557841 () Bool)

(assert (=> b!1384598 m!1557841))

(assert (=> b!1384382 d!395374))

(declare-fun d!395376 () Bool)

(declare-fun list!5449 (Conc!4631) List!14127)

(assert (=> d!395376 (= (list!5445 (_1!7713 lt!460290)) (list!5449 (c!227732 (_1!7713 lt!460290))))))

(declare-fun bs!336815 () Bool)

(assert (= bs!336815 d!395376))

(declare-fun m!1557843 () Bool)

(assert (=> bs!336815 m!1557843))

(assert (=> b!1384384 d!395376))

(declare-fun b!1384716 () Bool)

(declare-fun res!624741 () Bool)

(declare-fun e!884706 () Bool)

(assert (=> b!1384716 (=> (not res!624741) (not e!884706))))

(declare-fun lt!460396 () tuple2!13654)

(assert (=> b!1384716 (= res!624741 (= (list!5445 (_1!7713 lt!460396)) (_1!7715 (lexList!644 thiss!19762 rules!2550 (list!5446 lt!460288)))))))

(declare-fun b!1384717 () Bool)

(assert (=> b!1384717 (= e!884706 (= (list!5446 (_2!7713 lt!460396)) (_2!7715 (lexList!644 thiss!19762 rules!2550 (list!5446 lt!460288)))))))

(declare-fun b!1384718 () Bool)

(declare-fun e!884708 () Bool)

(declare-fun isEmpty!8504 (BalanceConc!9202) Bool)

(assert (=> b!1384718 (= e!884708 (not (isEmpty!8504 (_1!7713 lt!460396))))))

(declare-fun b!1384719 () Bool)

(declare-fun e!884707 () Bool)

(assert (=> b!1384719 (= e!884707 (= (_2!7713 lt!460396) lt!460288))))

(declare-fun b!1384720 () Bool)

(assert (=> b!1384720 (= e!884707 e!884708)))

(declare-fun res!624742 () Bool)

(assert (=> b!1384720 (= res!624742 (< (size!11541 (_2!7713 lt!460396)) (size!11541 lt!460288)))))

(assert (=> b!1384720 (=> (not res!624742) (not e!884708))))

(declare-fun d!395378 () Bool)

(assert (=> d!395378 e!884706))

(declare-fun res!624740 () Bool)

(assert (=> d!395378 (=> (not res!624740) (not e!884706))))

(assert (=> d!395378 (= res!624740 e!884707)))

(declare-fun c!227807 () Bool)

(declare-fun size!11549 (BalanceConc!9202) Int)

(assert (=> d!395378 (= c!227807 (> (size!11549 (_1!7713 lt!460396)) 0))))

(declare-fun lexTailRecV2!425 (LexerInterface!2130 List!14126 BalanceConc!9200 BalanceConc!9200 BalanceConc!9200 BalanceConc!9202) tuple2!13654)

(assert (=> d!395378 (= lt!460396 (lexTailRecV2!425 thiss!19762 rules!2550 lt!460288 (BalanceConc!9201 Empty!4630) lt!460288 (BalanceConc!9203 Empty!4631)))))

(assert (=> d!395378 (= (lex!955 thiss!19762 rules!2550 lt!460288) lt!460396)))

(assert (= (and d!395378 c!227807) b!1384720))

(assert (= (and d!395378 (not c!227807)) b!1384719))

(assert (= (and b!1384720 res!624742) b!1384718))

(assert (= (and d!395378 res!624740) b!1384716))

(assert (= (and b!1384716 res!624741) b!1384717))

(declare-fun m!1557933 () Bool)

(assert (=> b!1384716 m!1557933))

(assert (=> b!1384716 m!1557633))

(assert (=> b!1384716 m!1557633))

(assert (=> b!1384716 m!1557635))

(declare-fun m!1557935 () Bool)

(assert (=> b!1384718 m!1557935))

(declare-fun m!1557937 () Bool)

(assert (=> b!1384717 m!1557937))

(assert (=> b!1384717 m!1557633))

(assert (=> b!1384717 m!1557633))

(assert (=> b!1384717 m!1557635))

(declare-fun m!1557939 () Bool)

(assert (=> d!395378 m!1557939))

(declare-fun m!1557941 () Bool)

(assert (=> d!395378 m!1557941))

(declare-fun m!1557943 () Bool)

(assert (=> b!1384720 m!1557943))

(declare-fun m!1557945 () Bool)

(assert (=> b!1384720 m!1557945))

(assert (=> b!1384384 d!395378))

(declare-fun d!395410 () Bool)

(declare-fun lt!460399 () BalanceConc!9200)

(declare-fun printList!620 (LexerInterface!2130 List!14127) List!14125)

(assert (=> d!395410 (= (list!5446 lt!460399) (printList!620 thiss!19762 (list!5445 (singletonSeq!1078 t2!34))))))

(declare-fun printTailRec!602 (LexerInterface!2130 BalanceConc!9202 Int BalanceConc!9200) BalanceConc!9200)

(assert (=> d!395410 (= lt!460399 (printTailRec!602 thiss!19762 (singletonSeq!1078 t2!34) 0 (BalanceConc!9201 Empty!4630)))))

(assert (=> d!395410 (= (print!894 thiss!19762 (singletonSeq!1078 t2!34)) lt!460399)))

(declare-fun bs!336818 () Bool)

(assert (= bs!336818 d!395410))

(declare-fun m!1557947 () Bool)

(assert (=> bs!336818 m!1557947))

(assert (=> bs!336818 m!1557625))

(declare-fun m!1557949 () Bool)

(assert (=> bs!336818 m!1557949))

(assert (=> bs!336818 m!1557949))

(declare-fun m!1557951 () Bool)

(assert (=> bs!336818 m!1557951))

(assert (=> bs!336818 m!1557625))

(declare-fun m!1557953 () Bool)

(assert (=> bs!336818 m!1557953))

(assert (=> b!1384384 d!395410))

(declare-fun d!395412 () Bool)

(declare-fun e!884711 () Bool)

(assert (=> d!395412 e!884711))

(declare-fun res!624745 () Bool)

(assert (=> d!395412 (=> (not res!624745) (not e!884711))))

(declare-fun lt!460402 () BalanceConc!9202)

(assert (=> d!395412 (= res!624745 (= (list!5445 lt!460402) (Cons!14061 t2!34 Nil!14061)))))

(declare-fun singleton!472 (Token!4532) BalanceConc!9202)

(assert (=> d!395412 (= lt!460402 (singleton!472 t2!34))))

(assert (=> d!395412 (= (singletonSeq!1078 t2!34) lt!460402)))

(declare-fun b!1384723 () Bool)

(declare-fun isBalanced!1366 (Conc!4631) Bool)

(assert (=> b!1384723 (= e!884711 (isBalanced!1366 (c!227732 lt!460402)))))

(assert (= (and d!395412 res!624745) b!1384723))

(declare-fun m!1557955 () Bool)

(assert (=> d!395412 m!1557955))

(declare-fun m!1557957 () Bool)

(assert (=> d!395412 m!1557957))

(declare-fun m!1557959 () Bool)

(assert (=> b!1384723 m!1557959))

(assert (=> b!1384384 d!395412))

(declare-fun b!1384734 () Bool)

(declare-fun res!624748 () Bool)

(declare-fun e!884719 () Bool)

(assert (=> b!1384734 (=> res!624748 e!884719)))

(assert (=> b!1384734 (= res!624748 (not ((_ is IntegerValue!7577) (value!79030 t1!34))))))

(declare-fun e!884720 () Bool)

(assert (=> b!1384734 (= e!884720 e!884719)))

(declare-fun b!1384735 () Bool)

(declare-fun e!884718 () Bool)

(declare-fun inv!16 (TokenValue!2525) Bool)

(assert (=> b!1384735 (= e!884718 (inv!16 (value!79030 t1!34)))))

(declare-fun d!395414 () Bool)

(declare-fun c!227812 () Bool)

(assert (=> d!395414 (= c!227812 ((_ is IntegerValue!7575) (value!79030 t1!34)))))

(assert (=> d!395414 (= (inv!21 (value!79030 t1!34)) e!884718)))

(declare-fun b!1384736 () Bool)

(declare-fun inv!15 (TokenValue!2525) Bool)

(assert (=> b!1384736 (= e!884719 (inv!15 (value!79030 t1!34)))))

(declare-fun b!1384737 () Bool)

(assert (=> b!1384737 (= e!884718 e!884720)))

(declare-fun c!227813 () Bool)

(assert (=> b!1384737 (= c!227813 ((_ is IntegerValue!7576) (value!79030 t1!34)))))

(declare-fun b!1384738 () Bool)

(declare-fun inv!17 (TokenValue!2525) Bool)

(assert (=> b!1384738 (= e!884720 (inv!17 (value!79030 t1!34)))))

(assert (= (and d!395414 c!227812) b!1384735))

(assert (= (and d!395414 (not c!227812)) b!1384737))

(assert (= (and b!1384737 c!227813) b!1384738))

(assert (= (and b!1384737 (not c!227813)) b!1384734))

(assert (= (and b!1384734 (not res!624748)) b!1384736))

(declare-fun m!1557961 () Bool)

(assert (=> b!1384735 m!1557961))

(declare-fun m!1557963 () Bool)

(assert (=> b!1384736 m!1557963))

(declare-fun m!1557965 () Bool)

(assert (=> b!1384738 m!1557965))

(assert (=> b!1384362 d!395414))

(declare-fun d!395416 () Bool)

(declare-fun res!624753 () Bool)

(declare-fun e!884725 () Bool)

(assert (=> d!395416 (=> res!624753 e!884725)))

(assert (=> d!395416 (= res!624753 (not ((_ is Cons!14060) rules!2550)))))

(assert (=> d!395416 (= (sepAndNonSepRulesDisjointChars!808 rules!2550 rules!2550) e!884725)))

(declare-fun b!1384743 () Bool)

(declare-fun e!884726 () Bool)

(assert (=> b!1384743 (= e!884725 e!884726)))

(declare-fun res!624754 () Bool)

(assert (=> b!1384743 (=> (not res!624754) (not e!884726))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!383 (Rule!4670 List!14126) Bool)

(assert (=> b!1384743 (= res!624754 (ruleDisjointCharsFromAllFromOtherType!383 (h!19461 rules!2550) rules!2550))))

(declare-fun b!1384744 () Bool)

(assert (=> b!1384744 (= e!884726 (sepAndNonSepRulesDisjointChars!808 rules!2550 (t!122151 rules!2550)))))

(assert (= (and d!395416 (not res!624753)) b!1384743))

(assert (= (and b!1384743 res!624754) b!1384744))

(declare-fun m!1557967 () Bool)

(assert (=> b!1384743 m!1557967))

(declare-fun m!1557969 () Bool)

(assert (=> b!1384744 m!1557969))

(assert (=> b!1384385 d!395416))

(declare-fun d!395418 () Bool)

(declare-fun lt!460403 () Bool)

(assert (=> d!395418 (= lt!460403 (select (content!2060 rules!2550) (rule!4194 t1!34)))))

(declare-fun e!884727 () Bool)

(assert (=> d!395418 (= lt!460403 e!884727)))

(declare-fun res!624755 () Bool)

(assert (=> d!395418 (=> (not res!624755) (not e!884727))))

(assert (=> d!395418 (= res!624755 ((_ is Cons!14060) rules!2550))))

(assert (=> d!395418 (= (contains!2684 rules!2550 (rule!4194 t1!34)) lt!460403)))

(declare-fun b!1384745 () Bool)

(declare-fun e!884728 () Bool)

(assert (=> b!1384745 (= e!884727 e!884728)))

(declare-fun res!624756 () Bool)

(assert (=> b!1384745 (=> res!624756 e!884728)))

(assert (=> b!1384745 (= res!624756 (= (h!19461 rules!2550) (rule!4194 t1!34)))))

(declare-fun b!1384746 () Bool)

(assert (=> b!1384746 (= e!884728 (contains!2684 (t!122151 rules!2550) (rule!4194 t1!34)))))

(assert (= (and d!395418 res!624755) b!1384745))

(assert (= (and b!1384745 (not res!624756)) b!1384746))

(assert (=> d!395418 m!1557837))

(declare-fun m!1557971 () Bool)

(assert (=> d!395418 m!1557971))

(declare-fun m!1557973 () Bool)

(assert (=> b!1384746 m!1557973))

(assert (=> b!1384364 d!395418))

(declare-fun d!395420 () Bool)

(declare-fun lt!460404 () Bool)

(assert (=> d!395420 (= lt!460404 (select (content!2059 lt!460291) lt!460293))))

(declare-fun e!884730 () Bool)

(assert (=> d!395420 (= lt!460404 e!884730)))

(declare-fun res!624758 () Bool)

(assert (=> d!395420 (=> (not res!624758) (not e!884730))))

(assert (=> d!395420 (= res!624758 ((_ is Cons!14059) lt!460291))))

(assert (=> d!395420 (= (contains!2683 lt!460291 lt!460293) lt!460404)))

(declare-fun b!1384747 () Bool)

(declare-fun e!884729 () Bool)

(assert (=> b!1384747 (= e!884730 e!884729)))

(declare-fun res!624757 () Bool)

(assert (=> b!1384747 (=> res!624757 e!884729)))

(assert (=> b!1384747 (= res!624757 (= (h!19460 lt!460291) lt!460293))))

(declare-fun b!1384748 () Bool)

(assert (=> b!1384748 (= e!884729 (contains!2683 (t!122150 lt!460291) lt!460293))))

(assert (= (and d!395420 res!624758) b!1384747))

(assert (= (and b!1384747 (not res!624757)) b!1384748))

(declare-fun m!1557975 () Bool)

(assert (=> d!395420 m!1557975))

(declare-fun m!1557977 () Bool)

(assert (=> d!395420 m!1557977))

(declare-fun m!1557979 () Bool)

(assert (=> b!1384748 m!1557979))

(assert (=> b!1384363 d!395420))

(declare-fun b!1384765 () Bool)

(declare-fun e!884739 () List!14125)

(declare-fun call!92661 () List!14125)

(assert (=> b!1384765 (= e!884739 call!92661)))

(declare-fun b!1384766 () Bool)

(declare-fun e!884740 () List!14125)

(declare-fun call!92660 () List!14125)

(assert (=> b!1384766 (= e!884740 call!92660)))

(declare-fun b!1384767 () Bool)

(declare-fun e!884741 () List!14125)

(assert (=> b!1384767 (= e!884741 (Cons!14059 (c!227731 (regex!2435 (rule!4194 t1!34))) Nil!14059))))

(declare-fun b!1384768 () Bool)

(assert (=> b!1384768 (= e!884739 call!92661)))

(declare-fun call!92659 () List!14125)

(declare-fun bm!92654 () Bool)

(declare-fun call!92662 () List!14125)

(declare-fun c!227823 () Bool)

(assert (=> bm!92654 (= call!92661 (++!3646 (ite c!227823 call!92659 call!92662) (ite c!227823 call!92662 call!92659)))))

(declare-fun c!227824 () Bool)

(declare-fun bm!92655 () Bool)

(assert (=> bm!92655 (= call!92660 (usedCharacters!246 (ite c!227824 (reg!4078 (regex!2435 (rule!4194 t1!34))) (ite c!227823 (regTwo!8011 (regex!2435 (rule!4194 t1!34))) (regOne!8010 (regex!2435 (rule!4194 t1!34)))))))))

(declare-fun bm!92656 () Bool)

(assert (=> bm!92656 (= call!92659 (usedCharacters!246 (ite c!227823 (regOne!8011 (regex!2435 (rule!4194 t1!34))) (regTwo!8010 (regex!2435 (rule!4194 t1!34))))))))

(declare-fun b!1384770 () Bool)

(assert (=> b!1384770 (= e!884740 e!884739)))

(assert (=> b!1384770 (= c!227823 ((_ is Union!3749) (regex!2435 (rule!4194 t1!34))))))

(declare-fun bm!92657 () Bool)

(assert (=> bm!92657 (= call!92662 call!92660)))

(declare-fun b!1384771 () Bool)

(assert (=> b!1384771 (= c!227824 ((_ is Star!3749) (regex!2435 (rule!4194 t1!34))))))

(assert (=> b!1384771 (= e!884741 e!884740)))

(declare-fun b!1384772 () Bool)

(declare-fun e!884742 () List!14125)

(assert (=> b!1384772 (= e!884742 e!884741)))

(declare-fun c!227822 () Bool)

(assert (=> b!1384772 (= c!227822 ((_ is ElementMatch!3749) (regex!2435 (rule!4194 t1!34))))))

(declare-fun d!395422 () Bool)

(declare-fun c!227825 () Bool)

(assert (=> d!395422 (= c!227825 (or ((_ is EmptyExpr!3749) (regex!2435 (rule!4194 t1!34))) ((_ is EmptyLang!3749) (regex!2435 (rule!4194 t1!34)))))))

(assert (=> d!395422 (= (usedCharacters!246 (regex!2435 (rule!4194 t1!34))) e!884742)))

(declare-fun b!1384769 () Bool)

(assert (=> b!1384769 (= e!884742 Nil!14059)))

(assert (= (and d!395422 c!227825) b!1384769))

(assert (= (and d!395422 (not c!227825)) b!1384772))

(assert (= (and b!1384772 c!227822) b!1384767))

(assert (= (and b!1384772 (not c!227822)) b!1384771))

(assert (= (and b!1384771 c!227824) b!1384766))

(assert (= (and b!1384771 (not c!227824)) b!1384770))

(assert (= (and b!1384770 c!227823) b!1384765))

(assert (= (and b!1384770 (not c!227823)) b!1384768))

(assert (= (or b!1384765 b!1384768) bm!92656))

(assert (= (or b!1384765 b!1384768) bm!92657))

(assert (= (or b!1384765 b!1384768) bm!92654))

(assert (= (or b!1384766 bm!92657) bm!92655))

(declare-fun m!1557981 () Bool)

(assert (=> bm!92654 m!1557981))

(declare-fun m!1557983 () Bool)

(assert (=> bm!92655 m!1557983))

(declare-fun m!1557985 () Bool)

(assert (=> bm!92656 m!1557985))

(assert (=> b!1384363 d!395422))

(declare-fun d!395424 () Bool)

(declare-fun lt!460405 () BalanceConc!9200)

(assert (=> d!395424 (= (list!5446 lt!460405) (printList!620 thiss!19762 (list!5445 (singletonSeq!1078 t1!34))))))

(assert (=> d!395424 (= lt!460405 (printTailRec!602 thiss!19762 (singletonSeq!1078 t1!34) 0 (BalanceConc!9201 Empty!4630)))))

(assert (=> d!395424 (= (print!894 thiss!19762 (singletonSeq!1078 t1!34)) lt!460405)))

(declare-fun bs!336819 () Bool)

(assert (= bs!336819 d!395424))

(declare-fun m!1557987 () Bool)

(assert (=> bs!336819 m!1557987))

(assert (=> bs!336819 m!1557495))

(declare-fun m!1557989 () Bool)

(assert (=> bs!336819 m!1557989))

(assert (=> bs!336819 m!1557989))

(declare-fun m!1557991 () Bool)

(assert (=> bs!336819 m!1557991))

(assert (=> bs!336819 m!1557495))

(declare-fun m!1557993 () Bool)

(assert (=> bs!336819 m!1557993))

(assert (=> b!1384365 d!395424))

(declare-fun b!1384773 () Bool)

(declare-fun res!624760 () Bool)

(declare-fun e!884743 () Bool)

(assert (=> b!1384773 (=> (not res!624760) (not e!884743))))

(declare-fun lt!460406 () tuple2!13654)

(assert (=> b!1384773 (= res!624760 (= (list!5445 (_1!7713 lt!460406)) (_1!7715 (lexList!644 thiss!19762 rules!2550 (list!5446 lt!460296)))))))

(declare-fun b!1384774 () Bool)

(assert (=> b!1384774 (= e!884743 (= (list!5446 (_2!7713 lt!460406)) (_2!7715 (lexList!644 thiss!19762 rules!2550 (list!5446 lt!460296)))))))

(declare-fun b!1384775 () Bool)

(declare-fun e!884745 () Bool)

(assert (=> b!1384775 (= e!884745 (not (isEmpty!8504 (_1!7713 lt!460406))))))

(declare-fun b!1384776 () Bool)

(declare-fun e!884744 () Bool)

(assert (=> b!1384776 (= e!884744 (= (_2!7713 lt!460406) lt!460296))))

(declare-fun b!1384777 () Bool)

(assert (=> b!1384777 (= e!884744 e!884745)))

(declare-fun res!624761 () Bool)

(assert (=> b!1384777 (= res!624761 (< (size!11541 (_2!7713 lt!460406)) (size!11541 lt!460296)))))

(assert (=> b!1384777 (=> (not res!624761) (not e!884745))))

(declare-fun d!395426 () Bool)

(assert (=> d!395426 e!884743))

(declare-fun res!624759 () Bool)

(assert (=> d!395426 (=> (not res!624759) (not e!884743))))

(assert (=> d!395426 (= res!624759 e!884744)))

(declare-fun c!227826 () Bool)

(assert (=> d!395426 (= c!227826 (> (size!11549 (_1!7713 lt!460406)) 0))))

(assert (=> d!395426 (= lt!460406 (lexTailRecV2!425 thiss!19762 rules!2550 lt!460296 (BalanceConc!9201 Empty!4630) lt!460296 (BalanceConc!9203 Empty!4631)))))

(assert (=> d!395426 (= (lex!955 thiss!19762 rules!2550 lt!460296) lt!460406)))

(assert (= (and d!395426 c!227826) b!1384777))

(assert (= (and d!395426 (not c!227826)) b!1384776))

(assert (= (and b!1384777 res!624761) b!1384775))

(assert (= (and d!395426 res!624759) b!1384773))

(assert (= (and b!1384773 res!624760) b!1384774))

(declare-fun m!1557995 () Bool)

(assert (=> b!1384773 m!1557995))

(assert (=> b!1384773 m!1557519))

(assert (=> b!1384773 m!1557519))

(assert (=> b!1384773 m!1557521))

(declare-fun m!1557997 () Bool)

(assert (=> b!1384775 m!1557997))

(declare-fun m!1557999 () Bool)

(assert (=> b!1384774 m!1557999))

(assert (=> b!1384774 m!1557519))

(assert (=> b!1384774 m!1557519))

(assert (=> b!1384774 m!1557521))

(declare-fun m!1558001 () Bool)

(assert (=> d!395426 m!1558001))

(declare-fun m!1558003 () Bool)

(assert (=> d!395426 m!1558003))

(declare-fun m!1558005 () Bool)

(assert (=> b!1384777 m!1558005))

(declare-fun m!1558007 () Bool)

(assert (=> b!1384777 m!1558007))

(assert (=> b!1384365 d!395426))

(declare-fun b!1384799 () Bool)

(declare-fun e!884763 () Rule!4670)

(assert (=> b!1384799 (= e!884763 (getWitness!402 (t!122151 rules!2550) lambda!59596))))

(declare-fun b!1384800 () Bool)

(declare-fun e!884760 () Bool)

(declare-fun lt!460417 () Rule!4670)

(assert (=> b!1384800 (= e!884760 (contains!2684 rules!2550 lt!460417))))

(declare-fun b!1384801 () Bool)

(declare-fun lt!460418 () Unit!20305)

(declare-fun Unit!20308 () Unit!20305)

(assert (=> b!1384801 (= lt!460418 Unit!20308)))

(assert (=> b!1384801 false))

(declare-fun head!2523 (List!14126) Rule!4670)

(assert (=> b!1384801 (= e!884763 (head!2523 rules!2550))))

(declare-fun b!1384802 () Bool)

(declare-fun e!884762 () Rule!4670)

(assert (=> b!1384802 (= e!884762 (h!19461 rules!2550))))

(declare-fun d!395428 () Bool)

(assert (=> d!395428 e!884760))

(declare-fun res!624775 () Bool)

(assert (=> d!395428 (=> (not res!624775) (not e!884760))))

(declare-fun dynLambda!6429 (Int Rule!4670) Bool)

(assert (=> d!395428 (= res!624775 (dynLambda!6429 lambda!59596 lt!460417))))

(assert (=> d!395428 (= lt!460417 e!884762)))

(declare-fun c!227832 () Bool)

(declare-fun e!884761 () Bool)

(assert (=> d!395428 (= c!227832 e!884761)))

(declare-fun res!624776 () Bool)

(assert (=> d!395428 (=> (not res!624776) (not e!884761))))

(assert (=> d!395428 (= res!624776 ((_ is Cons!14060) rules!2550))))

(assert (=> d!395428 (exists!514 rules!2550 lambda!59596)))

(assert (=> d!395428 (= (getWitness!402 rules!2550 lambda!59596) lt!460417)))

(declare-fun b!1384803 () Bool)

(assert (=> b!1384803 (= e!884762 e!884763)))

(declare-fun c!227831 () Bool)

(assert (=> b!1384803 (= c!227831 ((_ is Cons!14060) rules!2550))))

(declare-fun b!1384804 () Bool)

(assert (=> b!1384804 (= e!884761 (dynLambda!6429 lambda!59596 (h!19461 rules!2550)))))

(assert (= (and d!395428 res!624776) b!1384804))

(assert (= (and d!395428 c!227832) b!1384802))

(assert (= (and d!395428 (not c!227832)) b!1384803))

(assert (= (and b!1384803 c!227831) b!1384799))

(assert (= (and b!1384803 (not c!227831)) b!1384801))

(assert (= (and d!395428 res!624775) b!1384800))

(declare-fun b_lambda!42803 () Bool)

(assert (=> (not b_lambda!42803) (not d!395428)))

(declare-fun b_lambda!42805 () Bool)

(assert (=> (not b_lambda!42805) (not b!1384804)))

(declare-fun m!1558019 () Bool)

(assert (=> b!1384800 m!1558019))

(declare-fun m!1558023 () Bool)

(assert (=> d!395428 m!1558023))

(assert (=> d!395428 m!1557515))

(declare-fun m!1558025 () Bool)

(assert (=> b!1384801 m!1558025))

(declare-fun m!1558027 () Bool)

(assert (=> b!1384799 m!1558027))

(declare-fun m!1558029 () Bool)

(assert (=> b!1384804 m!1558029))

(assert (=> b!1384365 d!395428))

(declare-fun d!395432 () Bool)

(assert (=> d!395432 (= (list!5445 (_1!7713 lt!460302)) (list!5449 (c!227732 (_1!7713 lt!460302))))))

(declare-fun bs!336820 () Bool)

(assert (= bs!336820 d!395432))

(declare-fun m!1558031 () Bool)

(assert (=> bs!336820 m!1558031))

(assert (=> b!1384365 d!395432))

(declare-fun d!395434 () Bool)

(declare-fun e!884766 () Bool)

(assert (=> d!395434 e!884766))

(declare-fun res!624779 () Bool)

(assert (=> d!395434 (=> (not res!624779) (not e!884766))))

(declare-fun lt!460420 () BalanceConc!9202)

(assert (=> d!395434 (= res!624779 (= (list!5445 lt!460420) (Cons!14061 t1!34 Nil!14061)))))

(assert (=> d!395434 (= lt!460420 (singleton!472 t1!34))))

(assert (=> d!395434 (= (singletonSeq!1078 t1!34) lt!460420)))

(declare-fun b!1384807 () Bool)

(assert (=> b!1384807 (= e!884766 (isBalanced!1366 (c!227732 lt!460420)))))

(assert (= (and d!395434 res!624779) b!1384807))

(declare-fun m!1558039 () Bool)

(assert (=> d!395434 m!1558039))

(declare-fun m!1558041 () Bool)

(assert (=> d!395434 m!1558041))

(declare-fun m!1558043 () Bool)

(assert (=> b!1384807 m!1558043))

(assert (=> b!1384365 d!395434))

(declare-fun d!395438 () Bool)

(assert (=> d!395438 (= (isEmpty!8497 rules!2550) ((_ is Nil!14060) rules!2550))))

(assert (=> b!1384386 d!395438))

(declare-fun d!395446 () Bool)

(declare-fun lt!460473 () Bool)

(declare-fun e!884834 () Bool)

(assert (=> d!395446 (= lt!460473 e!884834)))

(declare-fun res!624862 () Bool)

(assert (=> d!395446 (=> (not res!624862) (not e!884834))))

(assert (=> d!395446 (= res!624862 (= (list!5445 (_1!7713 (lex!955 thiss!19762 rules!2550 (print!894 thiss!19762 (singletonSeq!1078 t2!34))))) (list!5445 (singletonSeq!1078 t2!34))))))

(declare-fun e!884833 () Bool)

(assert (=> d!395446 (= lt!460473 e!884833)))

(declare-fun res!624864 () Bool)

(assert (=> d!395446 (=> (not res!624864) (not e!884833))))

(declare-fun lt!460474 () tuple2!13654)

(assert (=> d!395446 (= res!624864 (= (size!11549 (_1!7713 lt!460474)) 1))))

(assert (=> d!395446 (= lt!460474 (lex!955 thiss!19762 rules!2550 (print!894 thiss!19762 (singletonSeq!1078 t2!34))))))

(assert (=> d!395446 (not (isEmpty!8497 rules!2550))))

(assert (=> d!395446 (= (rulesProduceIndividualToken!1099 thiss!19762 rules!2550 t2!34) lt!460473)))

(declare-fun b!1384928 () Bool)

(declare-fun res!624863 () Bool)

(assert (=> b!1384928 (=> (not res!624863) (not e!884833))))

(declare-fun apply!3518 (BalanceConc!9202 Int) Token!4532)

(assert (=> b!1384928 (= res!624863 (= (apply!3518 (_1!7713 lt!460474) 0) t2!34))))

(declare-fun b!1384929 () Bool)

(assert (=> b!1384929 (= e!884833 (isEmpty!8496 (_2!7713 lt!460474)))))

(declare-fun b!1384930 () Bool)

(assert (=> b!1384930 (= e!884834 (isEmpty!8496 (_2!7713 (lex!955 thiss!19762 rules!2550 (print!894 thiss!19762 (singletonSeq!1078 t2!34))))))))

(assert (= (and d!395446 res!624864) b!1384928))

(assert (= (and b!1384928 res!624863) b!1384929))

(assert (= (and d!395446 res!624862) b!1384930))

(assert (=> d!395446 m!1557625))

(assert (=> d!395446 m!1557949))

(assert (=> d!395446 m!1557627))

(declare-fun m!1558237 () Bool)

(assert (=> d!395446 m!1558237))

(assert (=> d!395446 m!1557591))

(declare-fun m!1558239 () Bool)

(assert (=> d!395446 m!1558239))

(declare-fun m!1558241 () Bool)

(assert (=> d!395446 m!1558241))

(assert (=> d!395446 m!1557625))

(assert (=> d!395446 m!1557627))

(assert (=> d!395446 m!1557625))

(declare-fun m!1558243 () Bool)

(assert (=> b!1384928 m!1558243))

(declare-fun m!1558245 () Bool)

(assert (=> b!1384929 m!1558245))

(assert (=> b!1384930 m!1557625))

(assert (=> b!1384930 m!1557625))

(assert (=> b!1384930 m!1557627))

(assert (=> b!1384930 m!1557627))

(assert (=> b!1384930 m!1558237))

(declare-fun m!1558247 () Bool)

(assert (=> b!1384930 m!1558247))

(assert (=> b!1384388 d!395446))

(declare-fun b!1384965 () Bool)

(declare-fun e!884859 () Bool)

(declare-fun lt!460491 () tuple2!13658)

(declare-fun isEmpty!8506 (List!14127) Bool)

(assert (=> b!1384965 (= e!884859 (not (isEmpty!8506 (_1!7715 lt!460491))))))

(declare-fun b!1384966 () Bool)

(declare-fun e!884861 () tuple2!13658)

(declare-fun lt!460493 () Option!2694)

(declare-fun lt!460492 () tuple2!13658)

(assert (=> b!1384966 (= e!884861 (tuple2!13659 (Cons!14061 (_1!7714 (v!21547 lt!460493)) (_1!7715 lt!460492)) (_2!7715 lt!460492)))))

(assert (=> b!1384966 (= lt!460492 (lexList!644 thiss!19762 rules!2550 (_2!7714 (v!21547 lt!460493))))))

(declare-fun b!1384967 () Bool)

(assert (=> b!1384967 (= e!884861 (tuple2!13659 Nil!14061 (list!5446 lt!460288)))))

(declare-fun b!1384968 () Bool)

(declare-fun e!884860 () Bool)

(assert (=> b!1384968 (= e!884860 e!884859)))

(declare-fun res!624879 () Bool)

(declare-fun size!11552 (List!14125) Int)

(assert (=> b!1384968 (= res!624879 (< (size!11552 (_2!7715 lt!460491)) (size!11552 (list!5446 lt!460288))))))

(assert (=> b!1384968 (=> (not res!624879) (not e!884859))))

(declare-fun d!395492 () Bool)

(assert (=> d!395492 e!884860))

(declare-fun c!227858 () Bool)

(declare-fun size!11553 (List!14127) Int)

(assert (=> d!395492 (= c!227858 (> (size!11553 (_1!7715 lt!460491)) 0))))

(assert (=> d!395492 (= lt!460491 e!884861)))

(declare-fun c!227859 () Bool)

(assert (=> d!395492 (= c!227859 ((_ is Some!2693) lt!460493))))

(assert (=> d!395492 (= lt!460493 (maxPrefix!1104 thiss!19762 rules!2550 (list!5446 lt!460288)))))

(assert (=> d!395492 (= (lexList!644 thiss!19762 rules!2550 (list!5446 lt!460288)) lt!460491)))

(declare-fun b!1384969 () Bool)

(assert (=> b!1384969 (= e!884860 (= (_2!7715 lt!460491) (list!5446 lt!460288)))))

(assert (= (and d!395492 c!227859) b!1384966))

(assert (= (and d!395492 (not c!227859)) b!1384967))

(assert (= (and d!395492 c!227858) b!1384968))

(assert (= (and d!395492 (not c!227858)) b!1384969))

(assert (= (and b!1384968 res!624879) b!1384965))

(declare-fun m!1558271 () Bool)

(assert (=> b!1384965 m!1558271))

(declare-fun m!1558273 () Bool)

(assert (=> b!1384966 m!1558273))

(declare-fun m!1558275 () Bool)

(assert (=> b!1384968 m!1558275))

(assert (=> b!1384968 m!1557633))

(declare-fun m!1558277 () Bool)

(assert (=> b!1384968 m!1558277))

(declare-fun m!1558279 () Bool)

(assert (=> d!395492 m!1558279))

(assert (=> d!395492 m!1557633))

(declare-fun m!1558281 () Bool)

(assert (=> d!395492 m!1558281))

(assert (=> b!1384387 d!395492))

(declare-fun d!395502 () Bool)

(declare-fun list!5450 (Conc!4630) List!14125)

(assert (=> d!395502 (= (list!5446 lt!460288) (list!5450 (c!227730 lt!460288)))))

(declare-fun bs!336840 () Bool)

(assert (= bs!336840 d!395502))

(declare-fun m!1558283 () Bool)

(assert (=> bs!336840 m!1558283))

(assert (=> b!1384387 d!395502))

(declare-fun d!395504 () Bool)

(declare-fun lt!460494 () Bool)

(assert (=> d!395504 (= lt!460494 (select (content!2059 lt!460287) lt!460309))))

(declare-fun e!884863 () Bool)

(assert (=> d!395504 (= lt!460494 e!884863)))

(declare-fun res!624881 () Bool)

(assert (=> d!395504 (=> (not res!624881) (not e!884863))))

(assert (=> d!395504 (= res!624881 ((_ is Cons!14059) lt!460287))))

(assert (=> d!395504 (= (contains!2683 lt!460287 lt!460309) lt!460494)))

(declare-fun b!1384970 () Bool)

(declare-fun e!884862 () Bool)

(assert (=> b!1384970 (= e!884863 e!884862)))

(declare-fun res!624880 () Bool)

(assert (=> b!1384970 (=> res!624880 e!884862)))

(assert (=> b!1384970 (= res!624880 (= (h!19460 lt!460287) lt!460309))))

(declare-fun b!1384971 () Bool)

(assert (=> b!1384971 (= e!884862 (contains!2683 (t!122150 lt!460287) lt!460309))))

(assert (= (and d!395504 res!624881) b!1384970))

(assert (= (and b!1384970 (not res!624880)) b!1384971))

(assert (=> d!395504 m!1557819))

(declare-fun m!1558285 () Bool)

(assert (=> d!395504 m!1558285))

(declare-fun m!1558287 () Bool)

(assert (=> b!1384971 m!1558287))

(assert (=> b!1384389 d!395504))

(declare-fun d!395506 () Bool)

(declare-fun prefixMatchZipperSequence!279 (Regex!3749 BalanceConc!9200) Bool)

(declare-fun ++!3647 (BalanceConc!9200 BalanceConc!9200) BalanceConc!9200)

(declare-fun singletonSeq!1079 (C!7788) BalanceConc!9200)

(assert (=> d!395506 (= (separableTokensPredicate!413 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!279 (rulesRegex!318 thiss!19762 rules!2550) (++!3647 (charsOf!1407 t1!34) (singletonSeq!1079 (apply!3511 (charsOf!1407 t2!34) 0))))))))

(declare-fun bs!336853 () Bool)

(assert (= bs!336853 d!395506))

(declare-fun m!1558351 () Bool)

(assert (=> bs!336853 m!1558351))

(declare-fun m!1558353 () Bool)

(assert (=> bs!336853 m!1558353))

(assert (=> bs!336853 m!1557509))

(assert (=> bs!336853 m!1557615))

(assert (=> bs!336853 m!1558353))

(declare-fun m!1558355 () Bool)

(assert (=> bs!336853 m!1558355))

(assert (=> bs!336853 m!1557615))

(assert (=> bs!336853 m!1557613))

(assert (=> bs!336853 m!1558355))

(declare-fun m!1558357 () Bool)

(assert (=> bs!336853 m!1558357))

(assert (=> bs!336853 m!1557509))

(assert (=> bs!336853 m!1558351))

(assert (=> bs!336853 m!1557613))

(assert (=> b!1384368 d!395506))

(declare-fun b!1385040 () Bool)

(declare-fun e!884901 () Bool)

(declare-fun e!884902 () Bool)

(assert (=> b!1385040 (= e!884901 e!884902)))

(declare-fun res!624905 () Bool)

(assert (=> b!1385040 (=> (not res!624905) (not e!884902))))

(declare-fun lt!460513 () Option!2694)

(declare-fun isDefined!2227 (Option!2694) Bool)

(assert (=> b!1385040 (= res!624905 (isDefined!2227 lt!460513))))

(declare-fun b!1385041 () Bool)

(declare-fun e!884900 () Option!2694)

(declare-fun call!92671 () Option!2694)

(assert (=> b!1385041 (= e!884900 call!92671)))

(declare-fun b!1385042 () Bool)

(declare-fun res!624908 () Bool)

(assert (=> b!1385042 (=> (not res!624908) (not e!884902))))

(declare-fun get!4370 (Option!2694) tuple2!13656)

(assert (=> b!1385042 (= res!624908 (< (size!11552 (_2!7714 (get!4370 lt!460513))) (size!11552 lt!460299)))))

(declare-fun d!395536 () Bool)

(assert (=> d!395536 e!884901))

(declare-fun res!624911 () Bool)

(assert (=> d!395536 (=> res!624911 e!884901)))

(declare-fun isEmpty!8507 (Option!2694) Bool)

(assert (=> d!395536 (= res!624911 (isEmpty!8507 lt!460513))))

(assert (=> d!395536 (= lt!460513 e!884900)))

(declare-fun c!227863 () Bool)

(assert (=> d!395536 (= c!227863 (and ((_ is Cons!14060) rules!2550) ((_ is Nil!14060) (t!122151 rules!2550))))))

(declare-fun lt!460511 () Unit!20305)

(declare-fun lt!460510 () Unit!20305)

(assert (=> d!395536 (= lt!460511 lt!460510)))

(declare-fun isPrefix!1140 (List!14125 List!14125) Bool)

(assert (=> d!395536 (isPrefix!1140 lt!460299 lt!460299)))

(declare-fun lemmaIsPrefixRefl!799 (List!14125 List!14125) Unit!20305)

(assert (=> d!395536 (= lt!460510 (lemmaIsPrefixRefl!799 lt!460299 lt!460299))))

(declare-fun rulesValidInductive!782 (LexerInterface!2130 List!14126) Bool)

(assert (=> d!395536 (rulesValidInductive!782 thiss!19762 rules!2550)))

(assert (=> d!395536 (= (maxPrefix!1104 thiss!19762 rules!2550 lt!460299) lt!460513)))

(declare-fun b!1385043 () Bool)

(declare-fun res!624907 () Bool)

(assert (=> b!1385043 (=> (not res!624907) (not e!884902))))

(assert (=> b!1385043 (= res!624907 (= (++!3646 (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460513)))) (_2!7714 (get!4370 lt!460513))) lt!460299))))

(declare-fun b!1385044 () Bool)

(declare-fun lt!460512 () Option!2694)

(declare-fun lt!460509 () Option!2694)

(assert (=> b!1385044 (= e!884900 (ite (and ((_ is None!2693) lt!460512) ((_ is None!2693) lt!460509)) None!2693 (ite ((_ is None!2693) lt!460509) lt!460512 (ite ((_ is None!2693) lt!460512) lt!460509 (ite (>= (size!11542 (_1!7714 (v!21547 lt!460512))) (size!11542 (_1!7714 (v!21547 lt!460509)))) lt!460512 lt!460509)))))))

(assert (=> b!1385044 (= lt!460512 call!92671)))

(assert (=> b!1385044 (= lt!460509 (maxPrefix!1104 thiss!19762 (t!122151 rules!2550) lt!460299))))

(declare-fun b!1385045 () Bool)

(declare-fun res!624906 () Bool)

(assert (=> b!1385045 (=> (not res!624906) (not e!884902))))

(assert (=> b!1385045 (= res!624906 (= (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460513)))) (originalCharacters!3297 (_1!7714 (get!4370 lt!460513)))))))

(declare-fun b!1385046 () Bool)

(declare-fun res!624909 () Bool)

(assert (=> b!1385046 (=> (not res!624909) (not e!884902))))

(declare-fun apply!3519 (TokenValueInjection!4710 BalanceConc!9200) TokenValue!2525)

(declare-fun seqFromList!1643 (List!14125) BalanceConc!9200)

(assert (=> b!1385046 (= res!624909 (= (value!79030 (_1!7714 (get!4370 lt!460513))) (apply!3519 (transformation!2435 (rule!4194 (_1!7714 (get!4370 lt!460513)))) (seqFromList!1643 (originalCharacters!3297 (_1!7714 (get!4370 lt!460513)))))))))

(declare-fun b!1385047 () Bool)

(declare-fun res!624910 () Bool)

(assert (=> b!1385047 (=> (not res!624910) (not e!884902))))

(assert (=> b!1385047 (= res!624910 (matchR!1740 (regex!2435 (rule!4194 (_1!7714 (get!4370 lt!460513)))) (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460513))))))))

(declare-fun bm!92666 () Bool)

(declare-fun maxPrefixOneRule!625 (LexerInterface!2130 Rule!4670 List!14125) Option!2694)

(assert (=> bm!92666 (= call!92671 (maxPrefixOneRule!625 thiss!19762 (h!19461 rules!2550) lt!460299))))

(declare-fun b!1385048 () Bool)

(assert (=> b!1385048 (= e!884902 (contains!2684 rules!2550 (rule!4194 (_1!7714 (get!4370 lt!460513)))))))

(assert (= (and d!395536 c!227863) b!1385041))

(assert (= (and d!395536 (not c!227863)) b!1385044))

(assert (= (or b!1385041 b!1385044) bm!92666))

(assert (= (and d!395536 (not res!624911)) b!1385040))

(assert (= (and b!1385040 res!624905) b!1385045))

(assert (= (and b!1385045 res!624906) b!1385042))

(assert (= (and b!1385042 res!624908) b!1385043))

(assert (= (and b!1385043 res!624907) b!1385046))

(assert (= (and b!1385046 res!624909) b!1385047))

(assert (= (and b!1385047 res!624910) b!1385048))

(declare-fun m!1558359 () Bool)

(assert (=> b!1385042 m!1558359))

(declare-fun m!1558361 () Bool)

(assert (=> b!1385042 m!1558361))

(declare-fun m!1558363 () Bool)

(assert (=> b!1385042 m!1558363))

(assert (=> b!1385046 m!1558359))

(declare-fun m!1558365 () Bool)

(assert (=> b!1385046 m!1558365))

(assert (=> b!1385046 m!1558365))

(declare-fun m!1558367 () Bool)

(assert (=> b!1385046 m!1558367))

(assert (=> b!1385045 m!1558359))

(declare-fun m!1558369 () Bool)

(assert (=> b!1385045 m!1558369))

(assert (=> b!1385045 m!1558369))

(declare-fun m!1558371 () Bool)

(assert (=> b!1385045 m!1558371))

(declare-fun m!1558373 () Bool)

(assert (=> bm!92666 m!1558373))

(declare-fun m!1558375 () Bool)

(assert (=> b!1385044 m!1558375))

(declare-fun m!1558377 () Bool)

(assert (=> b!1385040 m!1558377))

(assert (=> b!1385047 m!1558359))

(assert (=> b!1385047 m!1558369))

(assert (=> b!1385047 m!1558369))

(assert (=> b!1385047 m!1558371))

(assert (=> b!1385047 m!1558371))

(declare-fun m!1558379 () Bool)

(assert (=> b!1385047 m!1558379))

(declare-fun m!1558381 () Bool)

(assert (=> d!395536 m!1558381))

(declare-fun m!1558383 () Bool)

(assert (=> d!395536 m!1558383))

(declare-fun m!1558385 () Bool)

(assert (=> d!395536 m!1558385))

(declare-fun m!1558387 () Bool)

(assert (=> d!395536 m!1558387))

(assert (=> b!1385048 m!1558359))

(declare-fun m!1558389 () Bool)

(assert (=> b!1385048 m!1558389))

(assert (=> b!1385043 m!1558359))

(assert (=> b!1385043 m!1558369))

(assert (=> b!1385043 m!1558369))

(assert (=> b!1385043 m!1558371))

(assert (=> b!1385043 m!1558371))

(declare-fun m!1558391 () Bool)

(assert (=> b!1385043 m!1558391))

(assert (=> b!1384367 d!395536))

(declare-fun d!395538 () Bool)

(assert (=> d!395538 (= (list!5446 lt!460301) (list!5450 (c!227730 lt!460301)))))

(declare-fun bs!336854 () Bool)

(assert (= bs!336854 d!395538))

(declare-fun m!1558393 () Bool)

(assert (=> bs!336854 m!1558393))

(assert (=> b!1384367 d!395538))

(declare-fun d!395540 () Bool)

(declare-fun lt!460514 () Bool)

(assert (=> d!395540 (= lt!460514 (select (content!2060 rules!2550) lt!460306))))

(declare-fun e!884903 () Bool)

(assert (=> d!395540 (= lt!460514 e!884903)))

(declare-fun res!624912 () Bool)

(assert (=> d!395540 (=> (not res!624912) (not e!884903))))

(assert (=> d!395540 (= res!624912 ((_ is Cons!14060) rules!2550))))

(assert (=> d!395540 (= (contains!2684 rules!2550 lt!460306) lt!460514)))

(declare-fun b!1385049 () Bool)

(declare-fun e!884904 () Bool)

(assert (=> b!1385049 (= e!884903 e!884904)))

(declare-fun res!624913 () Bool)

(assert (=> b!1385049 (=> res!624913 e!884904)))

(assert (=> b!1385049 (= res!624913 (= (h!19461 rules!2550) lt!460306))))

(declare-fun b!1385050 () Bool)

(assert (=> b!1385050 (= e!884904 (contains!2684 (t!122151 rules!2550) lt!460306))))

(assert (= (and d!395540 res!624912) b!1385049))

(assert (= (and b!1385049 (not res!624913)) b!1385050))

(assert (=> d!395540 m!1557837))

(declare-fun m!1558395 () Bool)

(assert (=> d!395540 m!1558395))

(declare-fun m!1558397 () Bool)

(assert (=> b!1385050 m!1558397))

(assert (=> b!1384369 d!395540))

(declare-fun d!395542 () Bool)

(assert (=> d!395542 (= (inv!18395 (tag!2697 (rule!4194 t1!34))) (= (mod (str.len (value!79029 (tag!2697 (rule!4194 t1!34)))) 2) 0))))

(assert (=> b!1384390 d!395542))

(declare-fun d!395544 () Bool)

(declare-fun res!624916 () Bool)

(declare-fun e!884907 () Bool)

(assert (=> d!395544 (=> (not res!624916) (not e!884907))))

(declare-fun semiInverseModEq!942 (Int Int) Bool)

(assert (=> d!395544 (= res!624916 (semiInverseModEq!942 (toChars!3577 (transformation!2435 (rule!4194 t1!34))) (toValue!3718 (transformation!2435 (rule!4194 t1!34)))))))

(assert (=> d!395544 (= (inv!18398 (transformation!2435 (rule!4194 t1!34))) e!884907)))

(declare-fun b!1385053 () Bool)

(declare-fun equivClasses!901 (Int Int) Bool)

(assert (=> b!1385053 (= e!884907 (equivClasses!901 (toChars!3577 (transformation!2435 (rule!4194 t1!34))) (toValue!3718 (transformation!2435 (rule!4194 t1!34)))))))

(assert (= (and d!395544 res!624916) b!1385053))

(declare-fun m!1558399 () Bool)

(assert (=> d!395544 m!1558399))

(declare-fun m!1558401 () Bool)

(assert (=> b!1385053 m!1558401))

(assert (=> b!1384390 d!395544))

(declare-fun d!395546 () Bool)

(declare-fun c!227866 () Bool)

(assert (=> d!395546 (= c!227866 (isEmpty!8502 lt!460287))))

(declare-fun e!884910 () Bool)

(assert (=> d!395546 (= (prefixMatch!258 lt!460292 lt!460287) e!884910)))

(declare-fun b!1385058 () Bool)

(declare-fun lostCause!347 (Regex!3749) Bool)

(assert (=> b!1385058 (= e!884910 (not (lostCause!347 lt!460292)))))

(declare-fun b!1385059 () Bool)

(assert (=> b!1385059 (= e!884910 (prefixMatch!258 (derivativeStep!971 lt!460292 (head!2521 lt!460287)) (tail!2010 lt!460287)))))

(assert (= (and d!395546 c!227866) b!1385058))

(assert (= (and d!395546 (not c!227866)) b!1385059))

(declare-fun m!1558403 () Bool)

(assert (=> d!395546 m!1558403))

(declare-fun m!1558405 () Bool)

(assert (=> b!1385058 m!1558405))

(declare-fun m!1558407 () Bool)

(assert (=> b!1385059 m!1558407))

(assert (=> b!1385059 m!1558407))

(declare-fun m!1558409 () Bool)

(assert (=> b!1385059 m!1558409))

(declare-fun m!1558411 () Bool)

(assert (=> b!1385059 m!1558411))

(assert (=> b!1385059 m!1558409))

(assert (=> b!1385059 m!1558411))

(declare-fun m!1558413 () Bool)

(assert (=> b!1385059 m!1558413))

(assert (=> b!1384392 d!395546))

(declare-fun d!395548 () Bool)

(declare-fun lt!460517 () BalanceConc!9200)

(assert (=> d!395548 (= (list!5446 lt!460517) (originalCharacters!3297 t1!34))))

(declare-fun dynLambda!6432 (Int TokenValue!2525) BalanceConc!9200)

(assert (=> d!395548 (= lt!460517 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 t1!34))) (value!79030 t1!34)))))

(assert (=> d!395548 (= (charsOf!1407 t1!34) lt!460517)))

(declare-fun b_lambda!42845 () Bool)

(assert (=> (not b_lambda!42845) (not d!395548)))

(declare-fun t!122176 () Bool)

(declare-fun tb!72633 () Bool)

(assert (=> (and b!1384366 (= (toChars!3577 (transformation!2435 (rule!4194 t1!34))) (toChars!3577 (transformation!2435 (rule!4194 t1!34)))) t!122176) tb!72633))

(declare-fun b!1385064 () Bool)

(declare-fun e!884913 () Bool)

(declare-fun tp!396396 () Bool)

(declare-fun inv!18402 (Conc!4630) Bool)

(assert (=> b!1385064 (= e!884913 (and (inv!18402 (c!227730 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 t1!34))) (value!79030 t1!34)))) tp!396396))))

(declare-fun result!88246 () Bool)

(declare-fun inv!18403 (BalanceConc!9200) Bool)

(assert (=> tb!72633 (= result!88246 (and (inv!18403 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 t1!34))) (value!79030 t1!34))) e!884913))))

(assert (= tb!72633 b!1385064))

(declare-fun m!1558415 () Bool)

(assert (=> b!1385064 m!1558415))

(declare-fun m!1558417 () Bool)

(assert (=> tb!72633 m!1558417))

(assert (=> d!395548 t!122176))

(declare-fun b_and!92827 () Bool)

(assert (= b_and!92789 (and (=> t!122176 result!88246) b_and!92827)))

(declare-fun tb!72635 () Bool)

(declare-fun t!122178 () Bool)

(assert (=> (and b!1384355 (= (toChars!3577 (transformation!2435 (h!19461 rules!2550))) (toChars!3577 (transformation!2435 (rule!4194 t1!34)))) t!122178) tb!72635))

(declare-fun result!88250 () Bool)

(assert (= result!88250 result!88246))

(assert (=> d!395548 t!122178))

(declare-fun b_and!92829 () Bool)

(assert (= b_and!92793 (and (=> t!122178 result!88250) b_and!92829)))

(declare-fun tb!72637 () Bool)

(declare-fun t!122180 () Bool)

(assert (=> (and b!1384383 (= (toChars!3577 (transformation!2435 (rule!4194 t2!34))) (toChars!3577 (transformation!2435 (rule!4194 t1!34)))) t!122180) tb!72637))

(declare-fun result!88252 () Bool)

(assert (= result!88252 result!88246))

(assert (=> d!395548 t!122180))

(declare-fun b_and!92831 () Bool)

(assert (= b_and!92797 (and (=> t!122180 result!88252) b_and!92831)))

(declare-fun m!1558419 () Bool)

(assert (=> d!395548 m!1558419))

(declare-fun m!1558421 () Bool)

(assert (=> d!395548 m!1558421))

(assert (=> b!1384392 d!395548))

(declare-fun d!395550 () Bool)

(declare-fun e!884918 () Bool)

(assert (=> d!395550 e!884918))

(declare-fun res!624921 () Bool)

(assert (=> d!395550 (=> (not res!624921) (not e!884918))))

(declare-fun lt!460520 () List!14125)

(assert (=> d!395550 (= res!624921 (= (content!2059 lt!460520) ((_ map or) (content!2059 lt!460285) (content!2059 (Cons!14059 lt!460309 Nil!14059)))))))

(declare-fun e!884919 () List!14125)

(assert (=> d!395550 (= lt!460520 e!884919)))

(declare-fun c!227869 () Bool)

(assert (=> d!395550 (= c!227869 ((_ is Nil!14059) lt!460285))))

(assert (=> d!395550 (= (++!3646 lt!460285 (Cons!14059 lt!460309 Nil!14059)) lt!460520)))

(declare-fun b!1385073 () Bool)

(assert (=> b!1385073 (= e!884919 (Cons!14059 lt!460309 Nil!14059))))

(declare-fun b!1385075 () Bool)

(declare-fun res!624922 () Bool)

(assert (=> b!1385075 (=> (not res!624922) (not e!884918))))

(assert (=> b!1385075 (= res!624922 (= (size!11552 lt!460520) (+ (size!11552 lt!460285) (size!11552 (Cons!14059 lt!460309 Nil!14059)))))))

(declare-fun b!1385076 () Bool)

(assert (=> b!1385076 (= e!884918 (or (not (= (Cons!14059 lt!460309 Nil!14059) Nil!14059)) (= lt!460520 lt!460285)))))

(declare-fun b!1385074 () Bool)

(assert (=> b!1385074 (= e!884919 (Cons!14059 (h!19460 lt!460285) (++!3646 (t!122150 lt!460285) (Cons!14059 lt!460309 Nil!14059))))))

(assert (= (and d!395550 c!227869) b!1385073))

(assert (= (and d!395550 (not c!227869)) b!1385074))

(assert (= (and d!395550 res!624921) b!1385075))

(assert (= (and b!1385075 res!624922) b!1385076))

(declare-fun m!1558423 () Bool)

(assert (=> d!395550 m!1558423))

(declare-fun m!1558425 () Bool)

(assert (=> d!395550 m!1558425))

(declare-fun m!1558427 () Bool)

(assert (=> d!395550 m!1558427))

(declare-fun m!1558429 () Bool)

(assert (=> b!1385075 m!1558429))

(declare-fun m!1558431 () Bool)

(assert (=> b!1385075 m!1558431))

(declare-fun m!1558433 () Bool)

(assert (=> b!1385075 m!1558433))

(declare-fun m!1558435 () Bool)

(assert (=> b!1385074 m!1558435))

(assert (=> b!1384392 d!395550))

(declare-fun bs!336855 () Bool)

(declare-fun d!395552 () Bool)

(assert (= bs!336855 (and d!395552 b!1384381)))

(declare-fun lambda!59632 () Int)

(assert (=> bs!336855 (= lambda!59632 lambda!59594)))

(declare-fun lt!460523 () Unit!20305)

(declare-fun lemma!141 (List!14126 LexerInterface!2130 List!14126) Unit!20305)

(assert (=> d!395552 (= lt!460523 (lemma!141 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!149 (List!14128) Regex!3749)

(assert (=> d!395552 (= (rulesRegex!318 thiss!19762 rules!2550) (generalisedUnion!149 (map!3113 rules!2550 lambda!59632)))))

(declare-fun bs!336856 () Bool)

(assert (= bs!336856 d!395552))

(declare-fun m!1558437 () Bool)

(assert (=> bs!336856 m!1558437))

(declare-fun m!1558439 () Bool)

(assert (=> bs!336856 m!1558439))

(assert (=> bs!336856 m!1558439))

(declare-fun m!1558441 () Bool)

(assert (=> bs!336856 m!1558441))

(assert (=> b!1384392 d!395552))

(declare-fun d!395554 () Bool)

(assert (=> d!395554 (= (list!5446 lt!460308) (list!5450 (c!227730 lt!460308)))))

(declare-fun bs!336857 () Bool)

(assert (= bs!336857 d!395554))

(declare-fun m!1558443 () Bool)

(assert (=> bs!336857 m!1558443))

(assert (=> b!1384392 d!395554))

(declare-fun d!395556 () Bool)

(declare-fun lt!460524 () C!7788)

(assert (=> d!395556 (= lt!460524 (apply!3515 (list!5446 lt!460301) 0))))

(assert (=> d!395556 (= lt!460524 (apply!3516 (c!227730 lt!460301) 0))))

(declare-fun e!884920 () Bool)

(assert (=> d!395556 e!884920))

(declare-fun res!624923 () Bool)

(assert (=> d!395556 (=> (not res!624923) (not e!884920))))

(assert (=> d!395556 (= res!624923 (<= 0 0))))

(assert (=> d!395556 (= (apply!3511 lt!460301 0) lt!460524)))

(declare-fun b!1385077 () Bool)

(assert (=> b!1385077 (= e!884920 (< 0 (size!11541 lt!460301)))))

(assert (= (and d!395556 res!624923) b!1385077))

(assert (=> d!395556 m!1557589))

(assert (=> d!395556 m!1557589))

(declare-fun m!1558445 () Bool)

(assert (=> d!395556 m!1558445))

(declare-fun m!1558447 () Bool)

(assert (=> d!395556 m!1558447))

(assert (=> b!1385077 m!1557507))

(assert (=> b!1384392 d!395556))

(declare-fun b!1385078 () Bool)

(declare-fun e!884922 () Bool)

(declare-fun e!884923 () Bool)

(assert (=> b!1385078 (= e!884922 e!884923)))

(declare-fun res!624924 () Bool)

(assert (=> b!1385078 (=> (not res!624924) (not e!884923))))

(declare-fun lt!460529 () Option!2694)

(assert (=> b!1385078 (= res!624924 (isDefined!2227 lt!460529))))

(declare-fun b!1385079 () Bool)

(declare-fun e!884921 () Option!2694)

(declare-fun call!92672 () Option!2694)

(assert (=> b!1385079 (= e!884921 call!92672)))

(declare-fun b!1385080 () Bool)

(declare-fun res!624927 () Bool)

(assert (=> b!1385080 (=> (not res!624927) (not e!884923))))

(assert (=> b!1385080 (= res!624927 (< (size!11552 (_2!7714 (get!4370 lt!460529))) (size!11552 lt!460285)))))

(declare-fun d!395558 () Bool)

(assert (=> d!395558 e!884922))

(declare-fun res!624930 () Bool)

(assert (=> d!395558 (=> res!624930 e!884922)))

(assert (=> d!395558 (= res!624930 (isEmpty!8507 lt!460529))))

(assert (=> d!395558 (= lt!460529 e!884921)))

(declare-fun c!227870 () Bool)

(assert (=> d!395558 (= c!227870 (and ((_ is Cons!14060) rules!2550) ((_ is Nil!14060) (t!122151 rules!2550))))))

(declare-fun lt!460527 () Unit!20305)

(declare-fun lt!460526 () Unit!20305)

(assert (=> d!395558 (= lt!460527 lt!460526)))

(assert (=> d!395558 (isPrefix!1140 lt!460285 lt!460285)))

(assert (=> d!395558 (= lt!460526 (lemmaIsPrefixRefl!799 lt!460285 lt!460285))))

(assert (=> d!395558 (rulesValidInductive!782 thiss!19762 rules!2550)))

(assert (=> d!395558 (= (maxPrefix!1104 thiss!19762 rules!2550 lt!460285) lt!460529)))

(declare-fun b!1385081 () Bool)

(declare-fun res!624926 () Bool)

(assert (=> b!1385081 (=> (not res!624926) (not e!884923))))

(assert (=> b!1385081 (= res!624926 (= (++!3646 (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460529)))) (_2!7714 (get!4370 lt!460529))) lt!460285))))

(declare-fun b!1385082 () Bool)

(declare-fun lt!460528 () Option!2694)

(declare-fun lt!460525 () Option!2694)

(assert (=> b!1385082 (= e!884921 (ite (and ((_ is None!2693) lt!460528) ((_ is None!2693) lt!460525)) None!2693 (ite ((_ is None!2693) lt!460525) lt!460528 (ite ((_ is None!2693) lt!460528) lt!460525 (ite (>= (size!11542 (_1!7714 (v!21547 lt!460528))) (size!11542 (_1!7714 (v!21547 lt!460525)))) lt!460528 lt!460525)))))))

(assert (=> b!1385082 (= lt!460528 call!92672)))

(assert (=> b!1385082 (= lt!460525 (maxPrefix!1104 thiss!19762 (t!122151 rules!2550) lt!460285))))

(declare-fun b!1385083 () Bool)

(declare-fun res!624925 () Bool)

(assert (=> b!1385083 (=> (not res!624925) (not e!884923))))

(assert (=> b!1385083 (= res!624925 (= (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460529)))) (originalCharacters!3297 (_1!7714 (get!4370 lt!460529)))))))

(declare-fun b!1385084 () Bool)

(declare-fun res!624928 () Bool)

(assert (=> b!1385084 (=> (not res!624928) (not e!884923))))

(assert (=> b!1385084 (= res!624928 (= (value!79030 (_1!7714 (get!4370 lt!460529))) (apply!3519 (transformation!2435 (rule!4194 (_1!7714 (get!4370 lt!460529)))) (seqFromList!1643 (originalCharacters!3297 (_1!7714 (get!4370 lt!460529)))))))))

(declare-fun b!1385085 () Bool)

(declare-fun res!624929 () Bool)

(assert (=> b!1385085 (=> (not res!624929) (not e!884923))))

(assert (=> b!1385085 (= res!624929 (matchR!1740 (regex!2435 (rule!4194 (_1!7714 (get!4370 lt!460529)))) (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460529))))))))

(declare-fun bm!92667 () Bool)

(assert (=> bm!92667 (= call!92672 (maxPrefixOneRule!625 thiss!19762 (h!19461 rules!2550) lt!460285))))

(declare-fun b!1385086 () Bool)

(assert (=> b!1385086 (= e!884923 (contains!2684 rules!2550 (rule!4194 (_1!7714 (get!4370 lt!460529)))))))

(assert (= (and d!395558 c!227870) b!1385079))

(assert (= (and d!395558 (not c!227870)) b!1385082))

(assert (= (or b!1385079 b!1385082) bm!92667))

(assert (= (and d!395558 (not res!624930)) b!1385078))

(assert (= (and b!1385078 res!624924) b!1385083))

(assert (= (and b!1385083 res!624925) b!1385080))

(assert (= (and b!1385080 res!624927) b!1385081))

(assert (= (and b!1385081 res!624926) b!1385084))

(assert (= (and b!1385084 res!624928) b!1385085))

(assert (= (and b!1385085 res!624929) b!1385086))

(declare-fun m!1558449 () Bool)

(assert (=> b!1385080 m!1558449))

(declare-fun m!1558451 () Bool)

(assert (=> b!1385080 m!1558451))

(assert (=> b!1385080 m!1558431))

(assert (=> b!1385084 m!1558449))

(declare-fun m!1558453 () Bool)

(assert (=> b!1385084 m!1558453))

(assert (=> b!1385084 m!1558453))

(declare-fun m!1558455 () Bool)

(assert (=> b!1385084 m!1558455))

(assert (=> b!1385083 m!1558449))

(declare-fun m!1558457 () Bool)

(assert (=> b!1385083 m!1558457))

(assert (=> b!1385083 m!1558457))

(declare-fun m!1558459 () Bool)

(assert (=> b!1385083 m!1558459))

(declare-fun m!1558461 () Bool)

(assert (=> bm!92667 m!1558461))

(declare-fun m!1558463 () Bool)

(assert (=> b!1385082 m!1558463))

(declare-fun m!1558465 () Bool)

(assert (=> b!1385078 m!1558465))

(assert (=> b!1385085 m!1558449))

(assert (=> b!1385085 m!1558457))

(assert (=> b!1385085 m!1558457))

(assert (=> b!1385085 m!1558459))

(assert (=> b!1385085 m!1558459))

(declare-fun m!1558467 () Bool)

(assert (=> b!1385085 m!1558467))

(declare-fun m!1558469 () Bool)

(assert (=> d!395558 m!1558469))

(declare-fun m!1558471 () Bool)

(assert (=> d!395558 m!1558471))

(declare-fun m!1558473 () Bool)

(assert (=> d!395558 m!1558473))

(assert (=> d!395558 m!1558387))

(assert (=> b!1385086 m!1558449))

(declare-fun m!1558475 () Bool)

(assert (=> b!1385086 m!1558475))

(assert (=> b!1385081 m!1558449))

(assert (=> b!1385081 m!1558457))

(assert (=> b!1385081 m!1558457))

(assert (=> b!1385081 m!1558459))

(assert (=> b!1385081 m!1558459))

(declare-fun m!1558477 () Bool)

(assert (=> b!1385081 m!1558477))

(assert (=> b!1384391 d!395558))

(declare-fun d!395560 () Bool)

(declare-fun lt!460530 () Bool)

(assert (=> d!395560 (= lt!460530 (isEmpty!8502 (list!5446 (_2!7713 lt!460302))))))

(assert (=> d!395560 (= lt!460530 (isEmpty!8503 (c!227730 (_2!7713 lt!460302))))))

(assert (=> d!395560 (= (isEmpty!8496 (_2!7713 lt!460302)) lt!460530)))

(declare-fun bs!336858 () Bool)

(assert (= bs!336858 d!395560))

(declare-fun m!1558479 () Bool)

(assert (=> bs!336858 m!1558479))

(assert (=> bs!336858 m!1558479))

(declare-fun m!1558481 () Bool)

(assert (=> bs!336858 m!1558481))

(declare-fun m!1558483 () Bool)

(assert (=> bs!336858 m!1558483))

(assert (=> b!1384370 d!395560))

(declare-fun d!395562 () Bool)

(declare-fun res!624933 () Bool)

(declare-fun e!884926 () Bool)

(assert (=> d!395562 (=> (not res!624933) (not e!884926))))

(declare-fun rulesValid!911 (LexerInterface!2130 List!14126) Bool)

(assert (=> d!395562 (= res!624933 (rulesValid!911 thiss!19762 rules!2550))))

(assert (=> d!395562 (= (rulesInvariant!2000 thiss!19762 rules!2550) e!884926)))

(declare-fun b!1385089 () Bool)

(declare-datatypes ((List!14130 0))(
  ( (Nil!14064) (Cons!14064 (h!19465 String!16861) (t!122191 List!14130)) )
))
(declare-fun noDuplicateTag!911 (LexerInterface!2130 List!14126 List!14130) Bool)

(assert (=> b!1385089 (= e!884926 (noDuplicateTag!911 thiss!19762 rules!2550 Nil!14064))))

(assert (= (and d!395562 res!624933) b!1385089))

(declare-fun m!1558485 () Bool)

(assert (=> d!395562 m!1558485))

(declare-fun m!1558487 () Bool)

(assert (=> b!1385089 m!1558487))

(assert (=> b!1384393 d!395562))

(declare-fun lt!460533 () Bool)

(declare-fun d!395564 () Bool)

(declare-fun content!2063 (List!14128) (InoxSet Regex!3749))

(assert (=> d!395564 (= lt!460533 (select (content!2063 (map!3113 rules!2550 lambda!59594)) lt!460289))))

(declare-fun e!884931 () Bool)

(assert (=> d!395564 (= lt!460533 e!884931)))

(declare-fun res!624939 () Bool)

(assert (=> d!395564 (=> (not res!624939) (not e!884931))))

(assert (=> d!395564 (= res!624939 ((_ is Cons!14062) (map!3113 rules!2550 lambda!59594)))))

(assert (=> d!395564 (= (contains!2685 (map!3113 rules!2550 lambda!59594) lt!460289) lt!460533)))

(declare-fun b!1385094 () Bool)

(declare-fun e!884932 () Bool)

(assert (=> b!1385094 (= e!884931 e!884932)))

(declare-fun res!624938 () Bool)

(assert (=> b!1385094 (=> res!624938 e!884932)))

(assert (=> b!1385094 (= res!624938 (= (h!19463 (map!3113 rules!2550 lambda!59594)) lt!460289))))

(declare-fun b!1385095 () Bool)

(assert (=> b!1385095 (= e!884932 (contains!2685 (t!122153 (map!3113 rules!2550 lambda!59594)) lt!460289))))

(assert (= (and d!395564 res!624939) b!1385094))

(assert (= (and b!1385094 (not res!624938)) b!1385095))

(assert (=> d!395564 m!1557535))

(declare-fun m!1558489 () Bool)

(assert (=> d!395564 m!1558489))

(declare-fun m!1558491 () Bool)

(assert (=> d!395564 m!1558491))

(declare-fun m!1558493 () Bool)

(assert (=> b!1385095 m!1558493))

(assert (=> b!1384372 d!395564))

(assert (=> b!1384372 d!395340))

(declare-fun e!884944 () Regex!3749)

(declare-fun b!1385108 () Bool)

(assert (=> b!1385108 (= e!884944 (getWitness!403 (t!122153 (map!3113 rules!2550 lambda!59594)) lambda!59595))))

(declare-fun b!1385109 () Bool)

(declare-fun lt!460538 () Unit!20305)

(declare-fun Unit!20310 () Unit!20305)

(assert (=> b!1385109 (= lt!460538 Unit!20310)))

(assert (=> b!1385109 false))

(declare-fun head!2525 (List!14128) Regex!3749)

(assert (=> b!1385109 (= e!884944 (head!2525 (map!3113 rules!2550 lambda!59594)))))

(declare-fun b!1385110 () Bool)

(declare-fun e!884941 () Bool)

(declare-fun dynLambda!6433 (Int Regex!3749) Bool)

(assert (=> b!1385110 (= e!884941 (dynLambda!6433 lambda!59595 (h!19463 (map!3113 rules!2550 lambda!59594))))))

(declare-fun lt!460539 () Regex!3749)

(declare-fun b!1385111 () Bool)

(declare-fun e!884943 () Bool)

(assert (=> b!1385111 (= e!884943 (contains!2685 (map!3113 rules!2550 lambda!59594) lt!460539))))

(declare-fun b!1385112 () Bool)

(declare-fun e!884942 () Regex!3749)

(assert (=> b!1385112 (= e!884942 (h!19463 (map!3113 rules!2550 lambda!59594)))))

(declare-fun d!395566 () Bool)

(assert (=> d!395566 e!884943))

(declare-fun res!624945 () Bool)

(assert (=> d!395566 (=> (not res!624945) (not e!884943))))

(assert (=> d!395566 (= res!624945 (dynLambda!6433 lambda!59595 lt!460539))))

(assert (=> d!395566 (= lt!460539 e!884942)))

(declare-fun c!227876 () Bool)

(assert (=> d!395566 (= c!227876 e!884941)))

(declare-fun res!624944 () Bool)

(assert (=> d!395566 (=> (not res!624944) (not e!884941))))

(assert (=> d!395566 (= res!624944 ((_ is Cons!14062) (map!3113 rules!2550 lambda!59594)))))

(assert (=> d!395566 (exists!515 (map!3113 rules!2550 lambda!59594) lambda!59595)))

(assert (=> d!395566 (= (getWitness!403 (map!3113 rules!2550 lambda!59594) lambda!59595) lt!460539)))

(declare-fun b!1385113 () Bool)

(assert (=> b!1385113 (= e!884942 e!884944)))

(declare-fun c!227875 () Bool)

(assert (=> b!1385113 (= c!227875 ((_ is Cons!14062) (map!3113 rules!2550 lambda!59594)))))

(assert (= (and d!395566 res!624944) b!1385110))

(assert (= (and d!395566 c!227876) b!1385112))

(assert (= (and d!395566 (not c!227876)) b!1385113))

(assert (= (and b!1385113 c!227875) b!1385108))

(assert (= (and b!1385113 (not c!227875)) b!1385109))

(assert (= (and d!395566 res!624945) b!1385111))

(declare-fun b_lambda!42847 () Bool)

(assert (=> (not b_lambda!42847) (not b!1385110)))

(declare-fun b_lambda!42849 () Bool)

(assert (=> (not b_lambda!42849) (not d!395566)))

(declare-fun m!1558495 () Bool)

(assert (=> b!1385110 m!1558495))

(declare-fun m!1558497 () Bool)

(assert (=> d!395566 m!1558497))

(assert (=> d!395566 m!1557535))

(assert (=> d!395566 m!1557537))

(assert (=> b!1385111 m!1557535))

(declare-fun m!1558499 () Bool)

(assert (=> b!1385111 m!1558499))

(assert (=> b!1385109 m!1557535))

(declare-fun m!1558501 () Bool)

(assert (=> b!1385109 m!1558501))

(declare-fun m!1558503 () Bool)

(assert (=> b!1385108 m!1558503))

(assert (=> b!1384372 d!395566))

(declare-fun d!395568 () Bool)

(declare-fun lt!460540 () Bool)

(assert (=> d!395568 (= lt!460540 (select (content!2059 lt!460285) lt!460307))))

(declare-fun e!884946 () Bool)

(assert (=> d!395568 (= lt!460540 e!884946)))

(declare-fun res!624947 () Bool)

(assert (=> d!395568 (=> (not res!624947) (not e!884946))))

(assert (=> d!395568 (= res!624947 ((_ is Cons!14059) lt!460285))))

(assert (=> d!395568 (= (contains!2683 lt!460285 lt!460307) lt!460540)))

(declare-fun b!1385114 () Bool)

(declare-fun e!884945 () Bool)

(assert (=> b!1385114 (= e!884946 e!884945)))

(declare-fun res!624946 () Bool)

(assert (=> b!1385114 (=> res!624946 e!884945)))

(assert (=> b!1385114 (= res!624946 (= (h!19460 lt!460285) lt!460307))))

(declare-fun b!1385115 () Bool)

(assert (=> b!1385115 (= e!884945 (contains!2683 (t!122150 lt!460285) lt!460307))))

(assert (= (and d!395568 res!624947) b!1385114))

(assert (= (and b!1385114 (not res!624946)) b!1385115))

(assert (=> d!395568 m!1558425))

(declare-fun m!1558505 () Bool)

(assert (=> d!395568 m!1558505))

(declare-fun m!1558507 () Bool)

(assert (=> b!1385115 m!1558507))

(assert (=> b!1384371 d!395568))

(declare-fun d!395570 () Bool)

(declare-fun lt!460541 () Bool)

(declare-fun e!884948 () Bool)

(assert (=> d!395570 (= lt!460541 e!884948)))

(declare-fun res!624948 () Bool)

(assert (=> d!395570 (=> (not res!624948) (not e!884948))))

(assert (=> d!395570 (= res!624948 (= (list!5445 (_1!7713 (lex!955 thiss!19762 rules!2550 (print!894 thiss!19762 (singletonSeq!1078 t1!34))))) (list!5445 (singletonSeq!1078 t1!34))))))

(declare-fun e!884947 () Bool)

(assert (=> d!395570 (= lt!460541 e!884947)))

(declare-fun res!624950 () Bool)

(assert (=> d!395570 (=> (not res!624950) (not e!884947))))

(declare-fun lt!460542 () tuple2!13654)

(assert (=> d!395570 (= res!624950 (= (size!11549 (_1!7713 lt!460542)) 1))))

(assert (=> d!395570 (= lt!460542 (lex!955 thiss!19762 rules!2550 (print!894 thiss!19762 (singletonSeq!1078 t1!34))))))

(assert (=> d!395570 (not (isEmpty!8497 rules!2550))))

(assert (=> d!395570 (= (rulesProduceIndividualToken!1099 thiss!19762 rules!2550 t1!34) lt!460541)))

(declare-fun b!1385116 () Bool)

(declare-fun res!624949 () Bool)

(assert (=> b!1385116 (=> (not res!624949) (not e!884947))))

(assert (=> b!1385116 (= res!624949 (= (apply!3518 (_1!7713 lt!460542) 0) t1!34))))

(declare-fun b!1385117 () Bool)

(assert (=> b!1385117 (= e!884947 (isEmpty!8496 (_2!7713 lt!460542)))))

(declare-fun b!1385118 () Bool)

(assert (=> b!1385118 (= e!884948 (isEmpty!8496 (_2!7713 (lex!955 thiss!19762 rules!2550 (print!894 thiss!19762 (singletonSeq!1078 t1!34))))))))

(assert (= (and d!395570 res!624950) b!1385116))

(assert (= (and b!1385116 res!624949) b!1385117))

(assert (= (and d!395570 res!624948) b!1385118))

(assert (=> d!395570 m!1557495))

(assert (=> d!395570 m!1557989))

(assert (=> d!395570 m!1557497))

(declare-fun m!1558509 () Bool)

(assert (=> d!395570 m!1558509))

(assert (=> d!395570 m!1557591))

(declare-fun m!1558511 () Bool)

(assert (=> d!395570 m!1558511))

(declare-fun m!1558513 () Bool)

(assert (=> d!395570 m!1558513))

(assert (=> d!395570 m!1557495))

(assert (=> d!395570 m!1557497))

(assert (=> d!395570 m!1557495))

(declare-fun m!1558515 () Bool)

(assert (=> b!1385116 m!1558515))

(declare-fun m!1558517 () Bool)

(assert (=> b!1385117 m!1558517))

(assert (=> b!1385118 m!1557495))

(assert (=> b!1385118 m!1557495))

(assert (=> b!1385118 m!1557497))

(assert (=> b!1385118 m!1557497))

(assert (=> b!1385118 m!1558509))

(declare-fun m!1558519 () Bool)

(assert (=> b!1385118 m!1558519))

(assert (=> b!1384373 d!395570))

(declare-fun b!1385119 () Bool)

(declare-fun e!884952 () Bool)

(declare-fun e!884949 () Bool)

(assert (=> b!1385119 (= e!884952 e!884949)))

(declare-fun res!624953 () Bool)

(assert (=> b!1385119 (=> res!624953 e!884949)))

(declare-fun call!92673 () Bool)

(assert (=> b!1385119 (= res!624953 call!92673)))

(declare-fun b!1385120 () Bool)

(declare-fun e!884954 () Bool)

(assert (=> b!1385120 (= e!884954 (matchR!1740 (derivativeStep!971 (regex!2435 (rule!4194 t2!34)) (head!2521 lt!460299)) (tail!2010 lt!460299)))))

(declare-fun b!1385121 () Bool)

(declare-fun res!624955 () Bool)

(assert (=> b!1385121 (=> res!624955 e!884949)))

(assert (=> b!1385121 (= res!624955 (not (isEmpty!8502 (tail!2010 lt!460299))))))

(declare-fun b!1385122 () Bool)

(declare-fun e!884953 () Bool)

(declare-fun lt!460543 () Bool)

(assert (=> b!1385122 (= e!884953 (not lt!460543))))

(declare-fun b!1385123 () Bool)

(assert (=> b!1385123 (= e!884949 (not (= (head!2521 lt!460299) (c!227731 (regex!2435 (rule!4194 t2!34))))))))

(declare-fun b!1385124 () Bool)

(declare-fun e!884955 () Bool)

(assert (=> b!1385124 (= e!884955 e!884952)))

(declare-fun res!624957 () Bool)

(assert (=> b!1385124 (=> (not res!624957) (not e!884952))))

(assert (=> b!1385124 (= res!624957 (not lt!460543))))

(declare-fun b!1385125 () Bool)

(declare-fun res!624954 () Bool)

(assert (=> b!1385125 (=> res!624954 e!884955)))

(declare-fun e!884951 () Bool)

(assert (=> b!1385125 (= res!624954 e!884951)))

(declare-fun res!624951 () Bool)

(assert (=> b!1385125 (=> (not res!624951) (not e!884951))))

(assert (=> b!1385125 (= res!624951 lt!460543)))

(declare-fun b!1385126 () Bool)

(declare-fun e!884950 () Bool)

(assert (=> b!1385126 (= e!884950 (= lt!460543 call!92673))))

(declare-fun bm!92668 () Bool)

(assert (=> bm!92668 (= call!92673 (isEmpty!8502 lt!460299))))

(declare-fun d!395572 () Bool)

(assert (=> d!395572 e!884950))

(declare-fun c!227877 () Bool)

(assert (=> d!395572 (= c!227877 ((_ is EmptyExpr!3749) (regex!2435 (rule!4194 t2!34))))))

(assert (=> d!395572 (= lt!460543 e!884954)))

(declare-fun c!227878 () Bool)

(assert (=> d!395572 (= c!227878 (isEmpty!8502 lt!460299))))

(assert (=> d!395572 (validRegex!1633 (regex!2435 (rule!4194 t2!34)))))

(assert (=> d!395572 (= (matchR!1740 (regex!2435 (rule!4194 t2!34)) lt!460299) lt!460543)))

(declare-fun b!1385127 () Bool)

(declare-fun res!624958 () Bool)

(assert (=> b!1385127 (=> res!624958 e!884955)))

(assert (=> b!1385127 (= res!624958 (not ((_ is ElementMatch!3749) (regex!2435 (rule!4194 t2!34)))))))

(assert (=> b!1385127 (= e!884953 e!884955)))

(declare-fun b!1385128 () Bool)

(assert (=> b!1385128 (= e!884950 e!884953)))

(declare-fun c!227879 () Bool)

(assert (=> b!1385128 (= c!227879 ((_ is EmptyLang!3749) (regex!2435 (rule!4194 t2!34))))))

(declare-fun b!1385129 () Bool)

(assert (=> b!1385129 (= e!884954 (nullable!1213 (regex!2435 (rule!4194 t2!34))))))

(declare-fun b!1385130 () Bool)

(declare-fun res!624952 () Bool)

(assert (=> b!1385130 (=> (not res!624952) (not e!884951))))

(assert (=> b!1385130 (= res!624952 (isEmpty!8502 (tail!2010 lt!460299)))))

(declare-fun b!1385131 () Bool)

(declare-fun res!624956 () Bool)

(assert (=> b!1385131 (=> (not res!624956) (not e!884951))))

(assert (=> b!1385131 (= res!624956 (not call!92673))))

(declare-fun b!1385132 () Bool)

(assert (=> b!1385132 (= e!884951 (= (head!2521 lt!460299) (c!227731 (regex!2435 (rule!4194 t2!34)))))))

(assert (= (and d!395572 c!227878) b!1385129))

(assert (= (and d!395572 (not c!227878)) b!1385120))

(assert (= (and d!395572 c!227877) b!1385126))

(assert (= (and d!395572 (not c!227877)) b!1385128))

(assert (= (and b!1385128 c!227879) b!1385122))

(assert (= (and b!1385128 (not c!227879)) b!1385127))

(assert (= (and b!1385127 (not res!624958)) b!1385125))

(assert (= (and b!1385125 res!624951) b!1385131))

(assert (= (and b!1385131 res!624956) b!1385130))

(assert (= (and b!1385130 res!624952) b!1385132))

(assert (= (and b!1385125 (not res!624954)) b!1385124))

(assert (= (and b!1385124 res!624957) b!1385119))

(assert (= (and b!1385119 (not res!624953)) b!1385121))

(assert (= (and b!1385121 (not res!624955)) b!1385123))

(assert (= (or b!1385126 b!1385119 b!1385131) bm!92668))

(declare-fun m!1558521 () Bool)

(assert (=> bm!92668 m!1558521))

(declare-fun m!1558523 () Bool)

(assert (=> b!1385130 m!1558523))

(assert (=> b!1385130 m!1558523))

(declare-fun m!1558525 () Bool)

(assert (=> b!1385130 m!1558525))

(declare-fun m!1558527 () Bool)

(assert (=> b!1385120 m!1558527))

(assert (=> b!1385120 m!1558527))

(declare-fun m!1558529 () Bool)

(assert (=> b!1385120 m!1558529))

(assert (=> b!1385120 m!1558523))

(assert (=> b!1385120 m!1558529))

(assert (=> b!1385120 m!1558523))

(declare-fun m!1558531 () Bool)

(assert (=> b!1385120 m!1558531))

(declare-fun m!1558533 () Bool)

(assert (=> b!1385129 m!1558533))

(assert (=> b!1385121 m!1558523))

(assert (=> b!1385121 m!1558523))

(assert (=> b!1385121 m!1558525))

(assert (=> b!1385123 m!1558527))

(assert (=> b!1385132 m!1558527))

(assert (=> d!395572 m!1558521))

(declare-fun m!1558535 () Bool)

(assert (=> d!395572 m!1558535))

(assert (=> b!1384394 d!395572))

(declare-fun d!395574 () Bool)

(declare-fun lt!460544 () Bool)

(assert (=> d!395574 (= lt!460544 (select (content!2059 lt!460300) lt!460309))))

(declare-fun e!884957 () Bool)

(assert (=> d!395574 (= lt!460544 e!884957)))

(declare-fun res!624960 () Bool)

(assert (=> d!395574 (=> (not res!624960) (not e!884957))))

(assert (=> d!395574 (= res!624960 ((_ is Cons!14059) lt!460300))))

(assert (=> d!395574 (= (contains!2683 lt!460300 lt!460309) lt!460544)))

(declare-fun b!1385133 () Bool)

(declare-fun e!884956 () Bool)

(assert (=> b!1385133 (= e!884957 e!884956)))

(declare-fun res!624959 () Bool)

(assert (=> b!1385133 (=> res!624959 e!884956)))

(assert (=> b!1385133 (= res!624959 (= (h!19460 lt!460300) lt!460309))))

(declare-fun b!1385134 () Bool)

(assert (=> b!1385134 (= e!884956 (contains!2683 (t!122150 lt!460300) lt!460309))))

(assert (= (and d!395574 res!624960) b!1385133))

(assert (= (and b!1385133 (not res!624959)) b!1385134))

(declare-fun m!1558537 () Bool)

(assert (=> d!395574 m!1558537))

(declare-fun m!1558539 () Bool)

(assert (=> d!395574 m!1558539))

(declare-fun m!1558541 () Bool)

(assert (=> b!1385134 m!1558541))

(assert (=> b!1384396 d!395574))

(declare-fun b!1385135 () Bool)

(declare-fun res!624961 () Bool)

(declare-fun e!884959 () Bool)

(assert (=> b!1385135 (=> res!624961 e!884959)))

(assert (=> b!1385135 (= res!624961 (not ((_ is IntegerValue!7577) (value!79030 t2!34))))))

(declare-fun e!884960 () Bool)

(assert (=> b!1385135 (= e!884960 e!884959)))

(declare-fun b!1385136 () Bool)

(declare-fun e!884958 () Bool)

(assert (=> b!1385136 (= e!884958 (inv!16 (value!79030 t2!34)))))

(declare-fun d!395576 () Bool)

(declare-fun c!227880 () Bool)

(assert (=> d!395576 (= c!227880 ((_ is IntegerValue!7575) (value!79030 t2!34)))))

(assert (=> d!395576 (= (inv!21 (value!79030 t2!34)) e!884958)))

(declare-fun b!1385137 () Bool)

(assert (=> b!1385137 (= e!884959 (inv!15 (value!79030 t2!34)))))

(declare-fun b!1385138 () Bool)

(assert (=> b!1385138 (= e!884958 e!884960)))

(declare-fun c!227881 () Bool)

(assert (=> b!1385138 (= c!227881 ((_ is IntegerValue!7576) (value!79030 t2!34)))))

(declare-fun b!1385139 () Bool)

(assert (=> b!1385139 (= e!884960 (inv!17 (value!79030 t2!34)))))

(assert (= (and d!395576 c!227880) b!1385136))

(assert (= (and d!395576 (not c!227880)) b!1385138))

(assert (= (and b!1385138 c!227881) b!1385139))

(assert (= (and b!1385138 (not c!227881)) b!1385135))

(assert (= (and b!1385135 (not res!624961)) b!1385137))

(declare-fun m!1558543 () Bool)

(assert (=> b!1385136 m!1558543))

(declare-fun m!1558545 () Bool)

(assert (=> b!1385137 m!1558545))

(declare-fun m!1558547 () Bool)

(assert (=> b!1385139 m!1558547))

(assert (=> b!1384395 d!395576))

(declare-fun d!395578 () Bool)

(declare-fun res!624966 () Bool)

(declare-fun e!884963 () Bool)

(assert (=> d!395578 (=> (not res!624966) (not e!884963))))

(assert (=> d!395578 (= res!624966 (not (isEmpty!8502 (originalCharacters!3297 t1!34))))))

(assert (=> d!395578 (= (inv!18399 t1!34) e!884963)))

(declare-fun b!1385144 () Bool)

(declare-fun res!624967 () Bool)

(assert (=> b!1385144 (=> (not res!624967) (not e!884963))))

(assert (=> b!1385144 (= res!624967 (= (originalCharacters!3297 t1!34) (list!5446 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 t1!34))) (value!79030 t1!34)))))))

(declare-fun b!1385145 () Bool)

(assert (=> b!1385145 (= e!884963 (= (size!11542 t1!34) (size!11552 (originalCharacters!3297 t1!34))))))

(assert (= (and d!395578 res!624966) b!1385144))

(assert (= (and b!1385144 res!624967) b!1385145))

(declare-fun b_lambda!42851 () Bool)

(assert (=> (not b_lambda!42851) (not b!1385144)))

(assert (=> b!1385144 t!122176))

(declare-fun b_and!92833 () Bool)

(assert (= b_and!92827 (and (=> t!122176 result!88246) b_and!92833)))

(assert (=> b!1385144 t!122178))

(declare-fun b_and!92835 () Bool)

(assert (= b_and!92829 (and (=> t!122178 result!88250) b_and!92835)))

(assert (=> b!1385144 t!122180))

(declare-fun b_and!92837 () Bool)

(assert (= b_and!92831 (and (=> t!122180 result!88252) b_and!92837)))

(declare-fun m!1558549 () Bool)

(assert (=> d!395578 m!1558549))

(assert (=> b!1385144 m!1558421))

(assert (=> b!1385144 m!1558421))

(declare-fun m!1558551 () Bool)

(assert (=> b!1385144 m!1558551))

(declare-fun m!1558553 () Bool)

(assert (=> b!1385145 m!1558553))

(assert (=> start!125566 d!395578))

(declare-fun d!395580 () Bool)

(declare-fun res!624968 () Bool)

(declare-fun e!884964 () Bool)

(assert (=> d!395580 (=> (not res!624968) (not e!884964))))

(assert (=> d!395580 (= res!624968 (not (isEmpty!8502 (originalCharacters!3297 t2!34))))))

(assert (=> d!395580 (= (inv!18399 t2!34) e!884964)))

(declare-fun b!1385146 () Bool)

(declare-fun res!624969 () Bool)

(assert (=> b!1385146 (=> (not res!624969) (not e!884964))))

(assert (=> b!1385146 (= res!624969 (= (originalCharacters!3297 t2!34) (list!5446 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 t2!34))) (value!79030 t2!34)))))))

(declare-fun b!1385147 () Bool)

(assert (=> b!1385147 (= e!884964 (= (size!11542 t2!34) (size!11552 (originalCharacters!3297 t2!34))))))

(assert (= (and d!395580 res!624968) b!1385146))

(assert (= (and b!1385146 res!624969) b!1385147))

(declare-fun b_lambda!42853 () Bool)

(assert (=> (not b_lambda!42853) (not b!1385146)))

(declare-fun t!122182 () Bool)

(declare-fun tb!72639 () Bool)

(assert (=> (and b!1384366 (= (toChars!3577 (transformation!2435 (rule!4194 t1!34))) (toChars!3577 (transformation!2435 (rule!4194 t2!34)))) t!122182) tb!72639))

(declare-fun b!1385148 () Bool)

(declare-fun e!884965 () Bool)

(declare-fun tp!396397 () Bool)

(assert (=> b!1385148 (= e!884965 (and (inv!18402 (c!227730 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 t2!34))) (value!79030 t2!34)))) tp!396397))))

(declare-fun result!88254 () Bool)

(assert (=> tb!72639 (= result!88254 (and (inv!18403 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 t2!34))) (value!79030 t2!34))) e!884965))))

(assert (= tb!72639 b!1385148))

(declare-fun m!1558555 () Bool)

(assert (=> b!1385148 m!1558555))

(declare-fun m!1558557 () Bool)

(assert (=> tb!72639 m!1558557))

(assert (=> b!1385146 t!122182))

(declare-fun b_and!92839 () Bool)

(assert (= b_and!92833 (and (=> t!122182 result!88254) b_and!92839)))

(declare-fun tb!72641 () Bool)

(declare-fun t!122184 () Bool)

(assert (=> (and b!1384355 (= (toChars!3577 (transformation!2435 (h!19461 rules!2550))) (toChars!3577 (transformation!2435 (rule!4194 t2!34)))) t!122184) tb!72641))

(declare-fun result!88256 () Bool)

(assert (= result!88256 result!88254))

(assert (=> b!1385146 t!122184))

(declare-fun b_and!92841 () Bool)

(assert (= b_and!92835 (and (=> t!122184 result!88256) b_and!92841)))

(declare-fun t!122186 () Bool)

(declare-fun tb!72643 () Bool)

(assert (=> (and b!1384383 (= (toChars!3577 (transformation!2435 (rule!4194 t2!34))) (toChars!3577 (transformation!2435 (rule!4194 t2!34)))) t!122186) tb!72643))

(declare-fun result!88258 () Bool)

(assert (= result!88258 result!88254))

(assert (=> b!1385146 t!122186))

(declare-fun b_and!92843 () Bool)

(assert (= b_and!92837 (and (=> t!122186 result!88258) b_and!92843)))

(declare-fun m!1558559 () Bool)

(assert (=> d!395580 m!1558559))

(declare-fun m!1558561 () Bool)

(assert (=> b!1385146 m!1558561))

(assert (=> b!1385146 m!1558561))

(declare-fun m!1558563 () Bool)

(assert (=> b!1385146 m!1558563))

(declare-fun m!1558565 () Bool)

(assert (=> b!1385147 m!1558565))

(assert (=> start!125566 d!395580))

(declare-fun b!1385149 () Bool)

(declare-fun e!884966 () Bool)

(declare-fun lt!460545 () tuple2!13658)

(assert (=> b!1385149 (= e!884966 (not (isEmpty!8506 (_1!7715 lt!460545))))))

(declare-fun b!1385150 () Bool)

(declare-fun e!884968 () tuple2!13658)

(declare-fun lt!460547 () Option!2694)

(declare-fun lt!460546 () tuple2!13658)

(assert (=> b!1385150 (= e!884968 (tuple2!13659 (Cons!14061 (_1!7714 (v!21547 lt!460547)) (_1!7715 lt!460546)) (_2!7715 lt!460546)))))

(assert (=> b!1385150 (= lt!460546 (lexList!644 thiss!19762 rules!2550 (_2!7714 (v!21547 lt!460547))))))

(declare-fun b!1385151 () Bool)

(assert (=> b!1385151 (= e!884968 (tuple2!13659 Nil!14061 (list!5446 lt!460296)))))

(declare-fun b!1385152 () Bool)

(declare-fun e!884967 () Bool)

(assert (=> b!1385152 (= e!884967 e!884966)))

(declare-fun res!624970 () Bool)

(assert (=> b!1385152 (= res!624970 (< (size!11552 (_2!7715 lt!460545)) (size!11552 (list!5446 lt!460296))))))

(assert (=> b!1385152 (=> (not res!624970) (not e!884966))))

(declare-fun d!395582 () Bool)

(assert (=> d!395582 e!884967))

(declare-fun c!227882 () Bool)

(assert (=> d!395582 (= c!227882 (> (size!11553 (_1!7715 lt!460545)) 0))))

(assert (=> d!395582 (= lt!460545 e!884968)))

(declare-fun c!227883 () Bool)

(assert (=> d!395582 (= c!227883 ((_ is Some!2693) lt!460547))))

(assert (=> d!395582 (= lt!460547 (maxPrefix!1104 thiss!19762 rules!2550 (list!5446 lt!460296)))))

(assert (=> d!395582 (= (lexList!644 thiss!19762 rules!2550 (list!5446 lt!460296)) lt!460545)))

(declare-fun b!1385153 () Bool)

(assert (=> b!1385153 (= e!884967 (= (_2!7715 lt!460545) (list!5446 lt!460296)))))

(assert (= (and d!395582 c!227883) b!1385150))

(assert (= (and d!395582 (not c!227883)) b!1385151))

(assert (= (and d!395582 c!227882) b!1385152))

(assert (= (and d!395582 (not c!227882)) b!1385153))

(assert (= (and b!1385152 res!624970) b!1385149))

(declare-fun m!1558567 () Bool)

(assert (=> b!1385149 m!1558567))

(declare-fun m!1558569 () Bool)

(assert (=> b!1385150 m!1558569))

(declare-fun m!1558571 () Bool)

(assert (=> b!1385152 m!1558571))

(assert (=> b!1385152 m!1557519))

(declare-fun m!1558573 () Bool)

(assert (=> b!1385152 m!1558573))

(declare-fun m!1558575 () Bool)

(assert (=> d!395582 m!1558575))

(assert (=> d!395582 m!1557519))

(declare-fun m!1558577 () Bool)

(assert (=> d!395582 m!1558577))

(assert (=> b!1384374 d!395582))

(declare-fun d!395584 () Bool)

(assert (=> d!395584 (= (list!5446 lt!460296) (list!5450 (c!227730 lt!460296)))))

(declare-fun bs!336859 () Bool)

(assert (= bs!336859 d!395584))

(declare-fun m!1558579 () Bool)

(assert (=> bs!336859 m!1558579))

(assert (=> b!1384374 d!395584))

(declare-fun d!395586 () Bool)

(declare-fun choose!8507 (Int) Bool)

(assert (=> d!395586 (= (Exists!899 lambda!59593) (choose!8507 lambda!59593))))

(declare-fun bs!336860 () Bool)

(assert (= bs!336860 d!395586))

(declare-fun m!1558581 () Bool)

(assert (=> bs!336860 m!1558581))

(assert (=> b!1384376 d!395586))

(declare-fun bs!336861 () Bool)

(declare-fun d!395588 () Bool)

(assert (= bs!336861 (and d!395588 b!1384376)))

(declare-fun lambda!59635 () Int)

(assert (=> bs!336861 (= lambda!59635 lambda!59593)))

(assert (=> d!395588 true))

(assert (=> d!395588 true))

(assert (=> d!395588 (Exists!899 lambda!59635)))

(declare-fun lt!460550 () Unit!20305)

(declare-fun choose!8508 (Regex!3749 List!14125) Unit!20305)

(assert (=> d!395588 (= lt!460550 (choose!8508 lt!460292 lt!460287))))

(assert (=> d!395588 (validRegex!1633 lt!460292)))

(assert (=> d!395588 (= (lemmaPrefixMatchThenExistsStringThatMatches!217 lt!460292 lt!460287) lt!460550)))

(declare-fun bs!336862 () Bool)

(assert (= bs!336862 d!395588))

(declare-fun m!1558583 () Bool)

(assert (=> bs!336862 m!1558583))

(declare-fun m!1558585 () Bool)

(assert (=> bs!336862 m!1558585))

(assert (=> bs!336862 m!1557817))

(assert (=> b!1384376 d!395588))

(declare-fun d!395590 () Bool)

(assert (=> d!395590 (= (inv!18395 (tag!2697 (h!19461 rules!2550))) (= (mod (str.len (value!79029 (tag!2697 (h!19461 rules!2550)))) 2) 0))))

(assert (=> b!1384375 d!395590))

(declare-fun d!395592 () Bool)

(declare-fun res!624973 () Bool)

(declare-fun e!884971 () Bool)

(assert (=> d!395592 (=> (not res!624973) (not e!884971))))

(assert (=> d!395592 (= res!624973 (semiInverseModEq!942 (toChars!3577 (transformation!2435 (h!19461 rules!2550))) (toValue!3718 (transformation!2435 (h!19461 rules!2550)))))))

(assert (=> d!395592 (= (inv!18398 (transformation!2435 (h!19461 rules!2550))) e!884971)))

(declare-fun b!1385156 () Bool)

(assert (=> b!1385156 (= e!884971 (equivClasses!901 (toChars!3577 (transformation!2435 (h!19461 rules!2550))) (toValue!3718 (transformation!2435 (h!19461 rules!2550)))))))

(assert (= (and d!395592 res!624973) b!1385156))

(declare-fun m!1558587 () Bool)

(assert (=> d!395592 m!1558587))

(declare-fun m!1558589 () Bool)

(assert (=> b!1385156 m!1558589))

(assert (=> b!1384375 d!395592))

(declare-fun b!1385175 () Bool)

(declare-fun res!624984 () Bool)

(declare-fun e!884987 () Bool)

(assert (=> b!1385175 (=> res!624984 e!884987)))

(assert (=> b!1385175 (= res!624984 (not ((_ is Concat!6275) (regex!2435 (rule!4194 t1!34)))))))

(declare-fun e!884991 () Bool)

(assert (=> b!1385175 (= e!884991 e!884987)))

(declare-fun b!1385176 () Bool)

(declare-fun e!884989 () Bool)

(declare-fun call!92682 () Bool)

(assert (=> b!1385176 (= e!884989 call!92682)))

(declare-fun bm!92675 () Bool)

(declare-fun call!92680 () Bool)

(assert (=> bm!92675 (= call!92682 call!92680)))

(declare-fun d!395594 () Bool)

(declare-fun res!624988 () Bool)

(declare-fun e!884986 () Bool)

(assert (=> d!395594 (=> res!624988 e!884986)))

(assert (=> d!395594 (= res!624988 ((_ is ElementMatch!3749) (regex!2435 (rule!4194 t1!34))))))

(assert (=> d!395594 (= (validRegex!1633 (regex!2435 (rule!4194 t1!34))) e!884986)))

(declare-fun b!1385177 () Bool)

(declare-fun res!624985 () Bool)

(declare-fun e!884992 () Bool)

(assert (=> b!1385177 (=> (not res!624985) (not e!884992))))

(declare-fun call!92681 () Bool)

(assert (=> b!1385177 (= res!624985 call!92681)))

(assert (=> b!1385177 (= e!884991 e!884992)))

(declare-fun c!227889 () Bool)

(declare-fun c!227888 () Bool)

(declare-fun bm!92676 () Bool)

(assert (=> bm!92676 (= call!92680 (validRegex!1633 (ite c!227889 (reg!4078 (regex!2435 (rule!4194 t1!34))) (ite c!227888 (regTwo!8011 (regex!2435 (rule!4194 t1!34))) (regTwo!8010 (regex!2435 (rule!4194 t1!34)))))))))

(declare-fun b!1385178 () Bool)

(assert (=> b!1385178 (= e!884992 call!92682)))

(declare-fun b!1385179 () Bool)

(declare-fun e!884990 () Bool)

(assert (=> b!1385179 (= e!884990 e!884991)))

(assert (=> b!1385179 (= c!227888 ((_ is Union!3749) (regex!2435 (rule!4194 t1!34))))))

(declare-fun b!1385180 () Bool)

(declare-fun e!884988 () Bool)

(assert (=> b!1385180 (= e!884988 call!92680)))

(declare-fun bm!92677 () Bool)

(assert (=> bm!92677 (= call!92681 (validRegex!1633 (ite c!227888 (regOne!8011 (regex!2435 (rule!4194 t1!34))) (regOne!8010 (regex!2435 (rule!4194 t1!34))))))))

(declare-fun b!1385181 () Bool)

(assert (=> b!1385181 (= e!884987 e!884989)))

(declare-fun res!624986 () Bool)

(assert (=> b!1385181 (=> (not res!624986) (not e!884989))))

(assert (=> b!1385181 (= res!624986 call!92681)))

(declare-fun b!1385182 () Bool)

(assert (=> b!1385182 (= e!884990 e!884988)))

(declare-fun res!624987 () Bool)

(assert (=> b!1385182 (= res!624987 (not (nullable!1213 (reg!4078 (regex!2435 (rule!4194 t1!34))))))))

(assert (=> b!1385182 (=> (not res!624987) (not e!884988))))

(declare-fun b!1385183 () Bool)

(assert (=> b!1385183 (= e!884986 e!884990)))

(assert (=> b!1385183 (= c!227889 ((_ is Star!3749) (regex!2435 (rule!4194 t1!34))))))

(assert (= (and d!395594 (not res!624988)) b!1385183))

(assert (= (and b!1385183 c!227889) b!1385182))

(assert (= (and b!1385183 (not c!227889)) b!1385179))

(assert (= (and b!1385182 res!624987) b!1385180))

(assert (= (and b!1385179 c!227888) b!1385177))

(assert (= (and b!1385179 (not c!227888)) b!1385175))

(assert (= (and b!1385177 res!624985) b!1385178))

(assert (= (and b!1385175 (not res!624984)) b!1385181))

(assert (= (and b!1385181 res!624986) b!1385176))

(assert (= (or b!1385177 b!1385181) bm!92677))

(assert (= (or b!1385178 b!1385176) bm!92675))

(assert (= (or b!1385180 bm!92675) bm!92676))

(declare-fun m!1558591 () Bool)

(assert (=> bm!92676 m!1558591))

(declare-fun m!1558593 () Bool)

(assert (=> bm!92677 m!1558593))

(declare-fun m!1558595 () Bool)

(assert (=> b!1385182 m!1558595))

(assert (=> b!1384377 d!395594))

(declare-fun d!395596 () Bool)

(assert (=> d!395596 (= (head!2521 lt!460285) (h!19460 lt!460285))))

(assert (=> b!1384377 d!395596))

(declare-fun bs!336863 () Bool)

(declare-fun d!395598 () Bool)

(assert (= bs!336863 (and d!395598 b!1384356)))

(declare-fun lambda!59638 () Int)

(assert (=> bs!336863 (not (= lambda!59638 lambda!59596))))

(declare-fun bs!336864 () Bool)

(assert (= bs!336864 (and d!395598 b!1384378)))

(assert (=> bs!336864 (not (= lambda!59638 lambda!59597))))

(assert (=> d!395598 true))

(declare-fun order!8583 () Int)

(declare-fun dynLambda!6434 (Int Int) Int)

(assert (=> d!395598 (< (dynLambda!6434 order!8583 lambda!59596) (dynLambda!6434 order!8583 lambda!59638))))

(declare-fun forall!3423 (List!14126 Int) Bool)

(assert (=> d!395598 (= (exists!514 rules!2550 lambda!59596) (not (forall!3423 rules!2550 lambda!59638)))))

(declare-fun bs!336865 () Bool)

(assert (= bs!336865 d!395598))

(declare-fun m!1558597 () Bool)

(assert (=> bs!336865 m!1558597))

(assert (=> b!1384356 d!395598))

(declare-fun bs!336866 () Bool)

(declare-fun d!395600 () Bool)

(assert (= bs!336866 (and d!395600 b!1384356)))

(declare-fun lambda!59641 () Int)

(assert (=> bs!336866 (not (= lambda!59641 lambda!59596))))

(declare-fun bs!336867 () Bool)

(assert (= bs!336867 (and d!395600 b!1384378)))

(assert (=> bs!336867 (not (= lambda!59641 lambda!59597))))

(declare-fun bs!336868 () Bool)

(assert (= bs!336868 (and d!395600 d!395598)))

(assert (=> bs!336868 (not (= lambda!59641 lambda!59638))))

(assert (=> d!395600 true))

(assert (=> d!395600 true))

(declare-fun order!8585 () Int)

(declare-fun dynLambda!6435 (Int Int) Int)

(assert (=> d!395600 (< (dynLambda!6435 order!8585 lambda!59594) (dynLambda!6434 order!8583 lambda!59641))))

(assert (=> d!395600 (exists!514 rules!2550 lambda!59641)))

(declare-fun lt!460553 () Unit!20305)

(declare-fun choose!8509 (List!14126 Int Regex!3749) Unit!20305)

(assert (=> d!395600 (= lt!460553 (choose!8509 rules!2550 lambda!59594 lt!460289))))

(assert (=> d!395600 (contains!2685 (map!3113 rules!2550 lambda!59594) lt!460289)))

(assert (=> d!395600 (= (lemmaMapContains!146 rules!2550 lambda!59594 lt!460289) lt!460553)))

(declare-fun bs!336869 () Bool)

(assert (= bs!336869 d!395600))

(declare-fun m!1558599 () Bool)

(assert (=> bs!336869 m!1558599))

(declare-fun m!1558601 () Bool)

(assert (=> bs!336869 m!1558601))

(assert (=> bs!336869 m!1557535))

(assert (=> bs!336869 m!1557535))

(assert (=> bs!336869 m!1557551))

(assert (=> b!1384356 d!395600))

(declare-fun d!395602 () Bool)

(declare-fun lt!460554 () Bool)

(assert (=> d!395602 (= lt!460554 (select (content!2059 lt!460300) lt!460293))))

(declare-fun e!884994 () Bool)

(assert (=> d!395602 (= lt!460554 e!884994)))

(declare-fun res!624990 () Bool)

(assert (=> d!395602 (=> (not res!624990) (not e!884994))))

(assert (=> d!395602 (= res!624990 ((_ is Cons!14059) lt!460300))))

(assert (=> d!395602 (= (contains!2683 lt!460300 lt!460293) lt!460554)))

(declare-fun b!1385190 () Bool)

(declare-fun e!884993 () Bool)

(assert (=> b!1385190 (= e!884994 e!884993)))

(declare-fun res!624989 () Bool)

(assert (=> b!1385190 (=> res!624989 e!884993)))

(assert (=> b!1385190 (= res!624989 (= (h!19460 lt!460300) lt!460293))))

(declare-fun b!1385191 () Bool)

(assert (=> b!1385191 (= e!884993 (contains!2683 (t!122150 lt!460300) lt!460293))))

(assert (= (and d!395602 res!624990) b!1385190))

(assert (= (and b!1385190 (not res!624989)) b!1385191))

(assert (=> d!395602 m!1558537))

(declare-fun m!1558603 () Bool)

(assert (=> d!395602 m!1558603))

(declare-fun m!1558605 () Bool)

(assert (=> b!1385191 m!1558605))

(assert (=> b!1384398 d!395602))

(declare-fun d!395604 () Bool)

(declare-fun e!884995 () Bool)

(assert (=> d!395604 e!884995))

(declare-fun res!624991 () Bool)

(assert (=> d!395604 (=> (not res!624991) (not e!884995))))

(declare-fun lt!460555 () List!14125)

(assert (=> d!395604 (= res!624991 (= (content!2059 lt!460555) ((_ map or) (content!2059 lt!460287) (content!2059 (getSuffix!595 lt!460300 lt!460287)))))))

(declare-fun e!884996 () List!14125)

(assert (=> d!395604 (= lt!460555 e!884996)))

(declare-fun c!227890 () Bool)

(assert (=> d!395604 (= c!227890 ((_ is Nil!14059) lt!460287))))

(assert (=> d!395604 (= (++!3646 lt!460287 (getSuffix!595 lt!460300 lt!460287)) lt!460555)))

(declare-fun b!1385192 () Bool)

(assert (=> b!1385192 (= e!884996 (getSuffix!595 lt!460300 lt!460287))))

(declare-fun b!1385194 () Bool)

(declare-fun res!624992 () Bool)

(assert (=> b!1385194 (=> (not res!624992) (not e!884995))))

(assert (=> b!1385194 (= res!624992 (= (size!11552 lt!460555) (+ (size!11552 lt!460287) (size!11552 (getSuffix!595 lt!460300 lt!460287)))))))

(declare-fun b!1385195 () Bool)

(assert (=> b!1385195 (= e!884995 (or (not (= (getSuffix!595 lt!460300 lt!460287) Nil!14059)) (= lt!460555 lt!460287)))))

(declare-fun b!1385193 () Bool)

(assert (=> b!1385193 (= e!884996 (Cons!14059 (h!19460 lt!460287) (++!3646 (t!122150 lt!460287) (getSuffix!595 lt!460300 lt!460287))))))

(assert (= (and d!395604 c!227890) b!1385192))

(assert (= (and d!395604 (not c!227890)) b!1385193))

(assert (= (and d!395604 res!624991) b!1385194))

(assert (= (and b!1385194 res!624992) b!1385195))

(declare-fun m!1558607 () Bool)

(assert (=> d!395604 m!1558607))

(assert (=> d!395604 m!1557819))

(assert (=> d!395604 m!1557527))

(declare-fun m!1558609 () Bool)

(assert (=> d!395604 m!1558609))

(declare-fun m!1558611 () Bool)

(assert (=> b!1385194 m!1558611))

(declare-fun m!1558613 () Bool)

(assert (=> b!1385194 m!1558613))

(assert (=> b!1385194 m!1557527))

(declare-fun m!1558615 () Bool)

(assert (=> b!1385194 m!1558615))

(assert (=> b!1385193 m!1557527))

(declare-fun m!1558617 () Bool)

(assert (=> b!1385193 m!1558617))

(assert (=> b!1384399 d!395604))

(declare-fun d!395606 () Bool)

(declare-fun lt!460558 () List!14125)

(assert (=> d!395606 (= (++!3646 lt!460287 lt!460558) lt!460300)))

(declare-fun e!884999 () List!14125)

(assert (=> d!395606 (= lt!460558 e!884999)))

(declare-fun c!227893 () Bool)

(assert (=> d!395606 (= c!227893 ((_ is Cons!14059) lt!460287))))

(assert (=> d!395606 (>= (size!11552 lt!460300) (size!11552 lt!460287))))

(assert (=> d!395606 (= (getSuffix!595 lt!460300 lt!460287) lt!460558)))

(declare-fun b!1385200 () Bool)

(assert (=> b!1385200 (= e!884999 (getSuffix!595 (tail!2010 lt!460300) (t!122150 lt!460287)))))

(declare-fun b!1385201 () Bool)

(assert (=> b!1385201 (= e!884999 lt!460300)))

(assert (= (and d!395606 c!227893) b!1385200))

(assert (= (and d!395606 (not c!227893)) b!1385201))

(declare-fun m!1558619 () Bool)

(assert (=> d!395606 m!1558619))

(declare-fun m!1558621 () Bool)

(assert (=> d!395606 m!1558621))

(assert (=> d!395606 m!1558613))

(assert (=> b!1385200 m!1557805))

(assert (=> b!1385200 m!1557805))

(declare-fun m!1558623 () Bool)

(assert (=> b!1385200 m!1558623))

(assert (=> b!1384399 d!395606))

(declare-fun d!395608 () Bool)

(declare-fun lt!460561 () List!14125)

(declare-fun dynLambda!6436 (Int List!14125) Bool)

(assert (=> d!395608 (dynLambda!6436 lambda!59593 lt!460561)))

(declare-fun choose!8510 (Int) List!14125)

(assert (=> d!395608 (= lt!460561 (choose!8510 lambda!59593))))

(assert (=> d!395608 (Exists!899 lambda!59593)))

(assert (=> d!395608 (= (pickWitness!202 lambda!59593) lt!460561)))

(declare-fun b_lambda!42855 () Bool)

(assert (=> (not b_lambda!42855) (not d!395608)))

(declare-fun bs!336870 () Bool)

(assert (= bs!336870 d!395608))

(declare-fun m!1558625 () Bool)

(assert (=> bs!336870 m!1558625))

(declare-fun m!1558627 () Bool)

(assert (=> bs!336870 m!1558627))

(assert (=> bs!336870 m!1557567))

(assert (=> b!1384399 d!395608))

(declare-fun b!1385202 () Bool)

(declare-fun e!885003 () Bool)

(declare-fun e!885000 () Bool)

(assert (=> b!1385202 (= e!885003 e!885000)))

(declare-fun res!624995 () Bool)

(assert (=> b!1385202 (=> res!624995 e!885000)))

(declare-fun call!92683 () Bool)

(assert (=> b!1385202 (= res!624995 call!92683)))

(declare-fun b!1385203 () Bool)

(declare-fun e!885005 () Bool)

(assert (=> b!1385203 (= e!885005 (matchR!1740 (derivativeStep!971 (regex!2435 (rule!4194 t1!34)) (head!2521 lt!460285)) (tail!2010 lt!460285)))))

(declare-fun b!1385204 () Bool)

(declare-fun res!624997 () Bool)

(assert (=> b!1385204 (=> res!624997 e!885000)))

(assert (=> b!1385204 (= res!624997 (not (isEmpty!8502 (tail!2010 lt!460285))))))

(declare-fun b!1385205 () Bool)

(declare-fun e!885004 () Bool)

(declare-fun lt!460562 () Bool)

(assert (=> b!1385205 (= e!885004 (not lt!460562))))

(declare-fun b!1385206 () Bool)

(assert (=> b!1385206 (= e!885000 (not (= (head!2521 lt!460285) (c!227731 (regex!2435 (rule!4194 t1!34))))))))

(declare-fun b!1385207 () Bool)

(declare-fun e!885006 () Bool)

(assert (=> b!1385207 (= e!885006 e!885003)))

(declare-fun res!624999 () Bool)

(assert (=> b!1385207 (=> (not res!624999) (not e!885003))))

(assert (=> b!1385207 (= res!624999 (not lt!460562))))

(declare-fun b!1385208 () Bool)

(declare-fun res!624996 () Bool)

(assert (=> b!1385208 (=> res!624996 e!885006)))

(declare-fun e!885002 () Bool)

(assert (=> b!1385208 (= res!624996 e!885002)))

(declare-fun res!624993 () Bool)

(assert (=> b!1385208 (=> (not res!624993) (not e!885002))))

(assert (=> b!1385208 (= res!624993 lt!460562)))

(declare-fun b!1385209 () Bool)

(declare-fun e!885001 () Bool)

(assert (=> b!1385209 (= e!885001 (= lt!460562 call!92683))))

(declare-fun bm!92678 () Bool)

(assert (=> bm!92678 (= call!92683 (isEmpty!8502 lt!460285))))

(declare-fun d!395610 () Bool)

(assert (=> d!395610 e!885001))

(declare-fun c!227894 () Bool)

(assert (=> d!395610 (= c!227894 ((_ is EmptyExpr!3749) (regex!2435 (rule!4194 t1!34))))))

(assert (=> d!395610 (= lt!460562 e!885005)))

(declare-fun c!227895 () Bool)

(assert (=> d!395610 (= c!227895 (isEmpty!8502 lt!460285))))

(assert (=> d!395610 (validRegex!1633 (regex!2435 (rule!4194 t1!34)))))

(assert (=> d!395610 (= (matchR!1740 (regex!2435 (rule!4194 t1!34)) lt!460285) lt!460562)))

(declare-fun b!1385210 () Bool)

(declare-fun res!625000 () Bool)

(assert (=> b!1385210 (=> res!625000 e!885006)))

(assert (=> b!1385210 (= res!625000 (not ((_ is ElementMatch!3749) (regex!2435 (rule!4194 t1!34)))))))

(assert (=> b!1385210 (= e!885004 e!885006)))

(declare-fun b!1385211 () Bool)

(assert (=> b!1385211 (= e!885001 e!885004)))

(declare-fun c!227896 () Bool)

(assert (=> b!1385211 (= c!227896 ((_ is EmptyLang!3749) (regex!2435 (rule!4194 t1!34))))))

(declare-fun b!1385212 () Bool)

(assert (=> b!1385212 (= e!885005 (nullable!1213 (regex!2435 (rule!4194 t1!34))))))

(declare-fun b!1385213 () Bool)

(declare-fun res!624994 () Bool)

(assert (=> b!1385213 (=> (not res!624994) (not e!885002))))

(assert (=> b!1385213 (= res!624994 (isEmpty!8502 (tail!2010 lt!460285)))))

(declare-fun b!1385214 () Bool)

(declare-fun res!624998 () Bool)

(assert (=> b!1385214 (=> (not res!624998) (not e!885002))))

(assert (=> b!1385214 (= res!624998 (not call!92683))))

(declare-fun b!1385215 () Bool)

(assert (=> b!1385215 (= e!885002 (= (head!2521 lt!460285) (c!227731 (regex!2435 (rule!4194 t1!34)))))))

(assert (= (and d!395610 c!227895) b!1385212))

(assert (= (and d!395610 (not c!227895)) b!1385203))

(assert (= (and d!395610 c!227894) b!1385209))

(assert (= (and d!395610 (not c!227894)) b!1385211))

(assert (= (and b!1385211 c!227896) b!1385205))

(assert (= (and b!1385211 (not c!227896)) b!1385210))

(assert (= (and b!1385210 (not res!625000)) b!1385208))

(assert (= (and b!1385208 res!624993) b!1385214))

(assert (= (and b!1385214 res!624998) b!1385213))

(assert (= (and b!1385213 res!624994) b!1385215))

(assert (= (and b!1385208 (not res!624996)) b!1385207))

(assert (= (and b!1385207 res!624999) b!1385202))

(assert (= (and b!1385202 (not res!624995)) b!1385204))

(assert (= (and b!1385204 (not res!624997)) b!1385206))

(assert (= (or b!1385209 b!1385202 b!1385214) bm!92678))

(declare-fun m!1558629 () Bool)

(assert (=> bm!92678 m!1558629))

(declare-fun m!1558631 () Bool)

(assert (=> b!1385213 m!1558631))

(assert (=> b!1385213 m!1558631))

(declare-fun m!1558633 () Bool)

(assert (=> b!1385213 m!1558633))

(assert (=> b!1385203 m!1557579))

(assert (=> b!1385203 m!1557579))

(declare-fun m!1558635 () Bool)

(assert (=> b!1385203 m!1558635))

(assert (=> b!1385203 m!1558631))

(assert (=> b!1385203 m!1558635))

(assert (=> b!1385203 m!1558631))

(declare-fun m!1558637 () Bool)

(assert (=> b!1385203 m!1558637))

(declare-fun m!1558639 () Bool)

(assert (=> b!1385212 m!1558639))

(assert (=> b!1385204 m!1558631))

(assert (=> b!1385204 m!1558631))

(assert (=> b!1385204 m!1558633))

(assert (=> b!1385206 m!1557579))

(assert (=> b!1385215 m!1557579))

(assert (=> d!395610 m!1558629))

(assert (=> d!395610 m!1557577))

(assert (=> b!1384378 d!395610))

(declare-fun d!395612 () Bool)

(assert (=> d!395612 (dynLambda!6429 lambda!59597 (rule!4194 t2!34))))

(declare-fun lt!460565 () Unit!20305)

(declare-fun choose!8511 (List!14126 Int Rule!4670) Unit!20305)

(assert (=> d!395612 (= lt!460565 (choose!8511 rules!2550 lambda!59597 (rule!4194 t2!34)))))

(declare-fun e!885009 () Bool)

(assert (=> d!395612 e!885009))

(declare-fun res!625003 () Bool)

(assert (=> d!395612 (=> (not res!625003) (not e!885009))))

(assert (=> d!395612 (= res!625003 (forall!3423 rules!2550 lambda!59597))))

(assert (=> d!395612 (= (forallContained!630 rules!2550 lambda!59597 (rule!4194 t2!34)) lt!460565)))

(declare-fun b!1385218 () Bool)

(assert (=> b!1385218 (= e!885009 (contains!2684 rules!2550 (rule!4194 t2!34)))))

(assert (= (and d!395612 res!625003) b!1385218))

(declare-fun b_lambda!42857 () Bool)

(assert (=> (not b_lambda!42857) (not d!395612)))

(declare-fun m!1558641 () Bool)

(assert (=> d!395612 m!1558641))

(declare-fun m!1558643 () Bool)

(assert (=> d!395612 m!1558643))

(declare-fun m!1558645 () Bool)

(assert (=> d!395612 m!1558645))

(assert (=> b!1385218 m!1557525))

(assert (=> b!1384378 d!395612))

(declare-fun d!395614 () Bool)

(assert (=> d!395614 (dynLambda!6429 lambda!59597 (rule!4194 t1!34))))

(declare-fun lt!460566 () Unit!20305)

(assert (=> d!395614 (= lt!460566 (choose!8511 rules!2550 lambda!59597 (rule!4194 t1!34)))))

(declare-fun e!885010 () Bool)

(assert (=> d!395614 e!885010))

(declare-fun res!625004 () Bool)

(assert (=> d!395614 (=> (not res!625004) (not e!885010))))

(assert (=> d!395614 (= res!625004 (forall!3423 rules!2550 lambda!59597))))

(assert (=> d!395614 (= (forallContained!630 rules!2550 lambda!59597 (rule!4194 t1!34)) lt!460566)))

(declare-fun b!1385219 () Bool)

(assert (=> b!1385219 (= e!885010 (contains!2684 rules!2550 (rule!4194 t1!34)))))

(assert (= (and d!395614 res!625004) b!1385219))

(declare-fun b_lambda!42859 () Bool)

(assert (=> (not b_lambda!42859) (not d!395614)))

(declare-fun m!1558647 () Bool)

(assert (=> d!395614 m!1558647))

(declare-fun m!1558649 () Bool)

(assert (=> d!395614 m!1558649))

(assert (=> d!395614 m!1558645))

(assert (=> b!1385219 m!1557491))

(assert (=> b!1384378 d!395614))

(declare-fun d!395616 () Bool)

(assert (=> d!395616 (dynLambda!6429 lambda!59597 lt!460306)))

(declare-fun lt!460567 () Unit!20305)

(assert (=> d!395616 (= lt!460567 (choose!8511 rules!2550 lambda!59597 lt!460306))))

(declare-fun e!885011 () Bool)

(assert (=> d!395616 e!885011))

(declare-fun res!625005 () Bool)

(assert (=> d!395616 (=> (not res!625005) (not e!885011))))

(assert (=> d!395616 (= res!625005 (forall!3423 rules!2550 lambda!59597))))

(assert (=> d!395616 (= (forallContained!630 rules!2550 lambda!59597 lt!460306) lt!460567)))

(declare-fun b!1385220 () Bool)

(assert (=> b!1385220 (= e!885011 (contains!2684 rules!2550 lt!460306))))

(assert (= (and d!395616 res!625005) b!1385220))

(declare-fun b_lambda!42861 () Bool)

(assert (=> (not b_lambda!42861) (not d!395616)))

(declare-fun m!1558651 () Bool)

(assert (=> d!395616 m!1558651))

(declare-fun m!1558653 () Bool)

(assert (=> d!395616 m!1558653))

(assert (=> d!395616 m!1558645))

(assert (=> b!1385220 m!1557581))

(assert (=> b!1384378 d!395616))

(declare-fun d!395618 () Bool)

(assert (=> d!395618 (= (inv!18395 (tag!2697 (rule!4194 t2!34))) (= (mod (str.len (value!79029 (tag!2697 (rule!4194 t2!34)))) 2) 0))))

(assert (=> b!1384380 d!395618))

(declare-fun d!395620 () Bool)

(declare-fun res!625006 () Bool)

(declare-fun e!885012 () Bool)

(assert (=> d!395620 (=> (not res!625006) (not e!885012))))

(assert (=> d!395620 (= res!625006 (semiInverseModEq!942 (toChars!3577 (transformation!2435 (rule!4194 t2!34))) (toValue!3718 (transformation!2435 (rule!4194 t2!34)))))))

(assert (=> d!395620 (= (inv!18398 (transformation!2435 (rule!4194 t2!34))) e!885012)))

(declare-fun b!1385221 () Bool)

(assert (=> b!1385221 (= e!885012 (equivClasses!901 (toChars!3577 (transformation!2435 (rule!4194 t2!34))) (toValue!3718 (transformation!2435 (rule!4194 t2!34)))))))

(assert (= (and d!395620 res!625006) b!1385221))

(declare-fun m!1558655 () Bool)

(assert (=> d!395620 m!1558655))

(declare-fun m!1558657 () Bool)

(assert (=> b!1385221 m!1558657))

(assert (=> b!1384380 d!395620))

(declare-fun d!395622 () Bool)

(declare-fun lt!460568 () Bool)

(assert (=> d!395622 (= lt!460568 (select (content!2059 lt!460291) lt!460307))))

(declare-fun e!885014 () Bool)

(assert (=> d!395622 (= lt!460568 e!885014)))

(declare-fun res!625008 () Bool)

(assert (=> d!395622 (=> (not res!625008) (not e!885014))))

(assert (=> d!395622 (= res!625008 ((_ is Cons!14059) lt!460291))))

(assert (=> d!395622 (= (contains!2683 lt!460291 lt!460307) lt!460568)))

(declare-fun b!1385222 () Bool)

(declare-fun e!885013 () Bool)

(assert (=> b!1385222 (= e!885014 e!885013)))

(declare-fun res!625007 () Bool)

(assert (=> b!1385222 (=> res!625007 e!885013)))

(assert (=> b!1385222 (= res!625007 (= (h!19460 lt!460291) lt!460307))))

(declare-fun b!1385223 () Bool)

(assert (=> b!1385223 (= e!885013 (contains!2683 (t!122150 lt!460291) lt!460307))))

(assert (= (and d!395622 res!625008) b!1385222))

(assert (= (and b!1385222 (not res!625007)) b!1385223))

(assert (=> d!395622 m!1557975))

(declare-fun m!1558659 () Bool)

(assert (=> d!395622 m!1558659))

(declare-fun m!1558661 () Bool)

(assert (=> b!1385223 m!1558661))

(assert (=> b!1384379 d!395622))

(declare-fun d!395624 () Bool)

(declare-fun lt!460571 () Int)

(assert (=> d!395624 (= lt!460571 (size!11552 (list!5446 lt!460301)))))

(declare-fun size!11554 (Conc!4630) Int)

(assert (=> d!395624 (= lt!460571 (size!11554 (c!227730 lt!460301)))))

(assert (=> d!395624 (= (size!11541 lt!460301) lt!460571)))

(declare-fun bs!336871 () Bool)

(assert (= bs!336871 d!395624))

(assert (=> bs!336871 m!1557589))

(assert (=> bs!336871 m!1557589))

(declare-fun m!1558663 () Bool)

(assert (=> bs!336871 m!1558663))

(declare-fun m!1558665 () Bool)

(assert (=> bs!336871 m!1558665))

(assert (=> b!1384358 d!395624))

(declare-fun d!395626 () Bool)

(declare-fun lt!460572 () BalanceConc!9200)

(assert (=> d!395626 (= (list!5446 lt!460572) (originalCharacters!3297 t2!34))))

(assert (=> d!395626 (= lt!460572 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 t2!34))) (value!79030 t2!34)))))

(assert (=> d!395626 (= (charsOf!1407 t2!34) lt!460572)))

(declare-fun b_lambda!42863 () Bool)

(assert (=> (not b_lambda!42863) (not d!395626)))

(assert (=> d!395626 t!122182))

(declare-fun b_and!92845 () Bool)

(assert (= b_and!92839 (and (=> t!122182 result!88254) b_and!92845)))

(assert (=> d!395626 t!122184))

(declare-fun b_and!92847 () Bool)

(assert (= b_and!92841 (and (=> t!122184 result!88256) b_and!92847)))

(assert (=> d!395626 t!122186))

(declare-fun b_and!92849 () Bool)

(assert (= b_and!92843 (and (=> t!122186 result!88258) b_and!92849)))

(declare-fun m!1558667 () Bool)

(assert (=> d!395626 m!1558667))

(assert (=> d!395626 m!1558561))

(assert (=> b!1384358 d!395626))

(declare-fun b!1385235 () Bool)

(declare-fun e!885017 () Bool)

(declare-fun tp!396408 () Bool)

(declare-fun tp!396410 () Bool)

(assert (=> b!1385235 (= e!885017 (and tp!396408 tp!396410))))

(declare-fun b!1385236 () Bool)

(declare-fun tp!396411 () Bool)

(assert (=> b!1385236 (= e!885017 tp!396411)))

(declare-fun b!1385237 () Bool)

(declare-fun tp!396412 () Bool)

(declare-fun tp!396409 () Bool)

(assert (=> b!1385237 (= e!885017 (and tp!396412 tp!396409))))

(declare-fun b!1385234 () Bool)

(declare-fun tp_is_empty!6775 () Bool)

(assert (=> b!1385234 (= e!885017 tp_is_empty!6775)))

(assert (=> b!1384375 (= tp!396346 e!885017)))

(assert (= (and b!1384375 ((_ is ElementMatch!3749) (regex!2435 (h!19461 rules!2550)))) b!1385234))

(assert (= (and b!1384375 ((_ is Concat!6275) (regex!2435 (h!19461 rules!2550)))) b!1385235))

(assert (= (and b!1384375 ((_ is Star!3749) (regex!2435 (h!19461 rules!2550)))) b!1385236))

(assert (= (and b!1384375 ((_ is Union!3749) (regex!2435 (h!19461 rules!2550)))) b!1385237))

(declare-fun b!1385248 () Bool)

(declare-fun b_free!33683 () Bool)

(declare-fun b_next!34387 () Bool)

(assert (=> b!1385248 (= b_free!33683 (not b_next!34387))))

(declare-fun tp!396421 () Bool)

(declare-fun b_and!92851 () Bool)

(assert (=> b!1385248 (= tp!396421 b_and!92851)))

(declare-fun b_free!33685 () Bool)

(declare-fun b_next!34389 () Bool)

(assert (=> b!1385248 (= b_free!33685 (not b_next!34389))))

(declare-fun t!122188 () Bool)

(declare-fun tb!72645 () Bool)

(assert (=> (and b!1385248 (= (toChars!3577 (transformation!2435 (h!19461 (t!122151 rules!2550)))) (toChars!3577 (transformation!2435 (rule!4194 t1!34)))) t!122188) tb!72645))

(declare-fun result!88264 () Bool)

(assert (= result!88264 result!88246))

(assert (=> d!395548 t!122188))

(assert (=> b!1385144 t!122188))

(declare-fun tb!72647 () Bool)

(declare-fun t!122190 () Bool)

(assert (=> (and b!1385248 (= (toChars!3577 (transformation!2435 (h!19461 (t!122151 rules!2550)))) (toChars!3577 (transformation!2435 (rule!4194 t2!34)))) t!122190) tb!72647))

(declare-fun result!88266 () Bool)

(assert (= result!88266 result!88254))

(assert (=> b!1385146 t!122190))

(assert (=> d!395626 t!122190))

(declare-fun b_and!92853 () Bool)

(declare-fun tp!396422 () Bool)

(assert (=> b!1385248 (= tp!396422 (and (=> t!122188 result!88264) (=> t!122190 result!88266) b_and!92853))))

(declare-fun e!885028 () Bool)

(assert (=> b!1385248 (= e!885028 (and tp!396421 tp!396422))))

(declare-fun e!885029 () Bool)

(declare-fun tp!396423 () Bool)

(declare-fun b!1385247 () Bool)

(assert (=> b!1385247 (= e!885029 (and tp!396423 (inv!18395 (tag!2697 (h!19461 (t!122151 rules!2550)))) (inv!18398 (transformation!2435 (h!19461 (t!122151 rules!2550)))) e!885028))))

(declare-fun b!1385246 () Bool)

(declare-fun e!885026 () Bool)

(declare-fun tp!396424 () Bool)

(assert (=> b!1385246 (= e!885026 (and e!885029 tp!396424))))

(assert (=> b!1384357 (= tp!396343 e!885026)))

(assert (= b!1385247 b!1385248))

(assert (= b!1385246 b!1385247))

(assert (= (and b!1384357 ((_ is Cons!14060) (t!122151 rules!2550))) b!1385246))

(declare-fun m!1558669 () Bool)

(assert (=> b!1385247 m!1558669))

(declare-fun m!1558671 () Bool)

(assert (=> b!1385247 m!1558671))

(declare-fun b!1385253 () Bool)

(declare-fun e!885032 () Bool)

(declare-fun tp!396427 () Bool)

(assert (=> b!1385253 (= e!885032 (and tp_is_empty!6775 tp!396427))))

(assert (=> b!1384362 (= tp!396339 e!885032)))

(assert (= (and b!1384362 ((_ is Cons!14059) (originalCharacters!3297 t1!34))) b!1385253))

(declare-fun b!1385255 () Bool)

(declare-fun e!885033 () Bool)

(declare-fun tp!396428 () Bool)

(declare-fun tp!396430 () Bool)

(assert (=> b!1385255 (= e!885033 (and tp!396428 tp!396430))))

(declare-fun b!1385256 () Bool)

(declare-fun tp!396431 () Bool)

(assert (=> b!1385256 (= e!885033 tp!396431)))

(declare-fun b!1385257 () Bool)

(declare-fun tp!396432 () Bool)

(declare-fun tp!396429 () Bool)

(assert (=> b!1385257 (= e!885033 (and tp!396432 tp!396429))))

(declare-fun b!1385254 () Bool)

(assert (=> b!1385254 (= e!885033 tp_is_empty!6775)))

(assert (=> b!1384380 (= tp!396337 e!885033)))

(assert (= (and b!1384380 ((_ is ElementMatch!3749) (regex!2435 (rule!4194 t2!34)))) b!1385254))

(assert (= (and b!1384380 ((_ is Concat!6275) (regex!2435 (rule!4194 t2!34)))) b!1385255))

(assert (= (and b!1384380 ((_ is Star!3749) (regex!2435 (rule!4194 t2!34)))) b!1385256))

(assert (= (and b!1384380 ((_ is Union!3749) (regex!2435 (rule!4194 t2!34)))) b!1385257))

(declare-fun b!1385258 () Bool)

(declare-fun e!885034 () Bool)

(declare-fun tp!396433 () Bool)

(assert (=> b!1385258 (= e!885034 (and tp_is_empty!6775 tp!396433))))

(assert (=> b!1384395 (= tp!396344 e!885034)))

(assert (= (and b!1384395 ((_ is Cons!14059) (originalCharacters!3297 t2!34))) b!1385258))

(declare-fun b!1385260 () Bool)

(declare-fun e!885035 () Bool)

(declare-fun tp!396434 () Bool)

(declare-fun tp!396436 () Bool)

(assert (=> b!1385260 (= e!885035 (and tp!396434 tp!396436))))

(declare-fun b!1385261 () Bool)

(declare-fun tp!396437 () Bool)

(assert (=> b!1385261 (= e!885035 tp!396437)))

(declare-fun b!1385262 () Bool)

(declare-fun tp!396438 () Bool)

(declare-fun tp!396435 () Bool)

(assert (=> b!1385262 (= e!885035 (and tp!396438 tp!396435))))

(declare-fun b!1385259 () Bool)

(assert (=> b!1385259 (= e!885035 tp_is_empty!6775)))

(assert (=> b!1384390 (= tp!396342 e!885035)))

(assert (= (and b!1384390 ((_ is ElementMatch!3749) (regex!2435 (rule!4194 t1!34)))) b!1385259))

(assert (= (and b!1384390 ((_ is Concat!6275) (regex!2435 (rule!4194 t1!34)))) b!1385260))

(assert (= (and b!1384390 ((_ is Star!3749) (regex!2435 (rule!4194 t1!34)))) b!1385261))

(assert (= (and b!1384390 ((_ is Union!3749) (regex!2435 (rule!4194 t1!34)))) b!1385262))

(declare-fun b_lambda!42865 () Bool)

(assert (= b_lambda!42803 (or b!1384356 b_lambda!42865)))

(declare-fun bs!336872 () Bool)

(declare-fun d!395628 () Bool)

(assert (= bs!336872 (and d!395628 b!1384356)))

(assert (=> bs!336872 (= (dynLambda!6429 lambda!59596 lt!460417) (= (regex!2435 lt!460417) lt!460289))))

(assert (=> d!395428 d!395628))

(declare-fun b_lambda!42867 () Bool)

(assert (= b_lambda!42851 (or (and b!1384366 b_free!33669) (and b!1384355 b_free!33673 (= (toChars!3577 (transformation!2435 (h!19461 rules!2550))) (toChars!3577 (transformation!2435 (rule!4194 t1!34))))) (and b!1384383 b_free!33677 (= (toChars!3577 (transformation!2435 (rule!4194 t2!34))) (toChars!3577 (transformation!2435 (rule!4194 t1!34))))) (and b!1385248 b_free!33685 (= (toChars!3577 (transformation!2435 (h!19461 (t!122151 rules!2550)))) (toChars!3577 (transformation!2435 (rule!4194 t1!34))))) b_lambda!42867)))

(declare-fun b_lambda!42869 () Bool)

(assert (= b_lambda!42845 (or (and b!1384366 b_free!33669) (and b!1384355 b_free!33673 (= (toChars!3577 (transformation!2435 (h!19461 rules!2550))) (toChars!3577 (transformation!2435 (rule!4194 t1!34))))) (and b!1384383 b_free!33677 (= (toChars!3577 (transformation!2435 (rule!4194 t2!34))) (toChars!3577 (transformation!2435 (rule!4194 t1!34))))) (and b!1385248 b_free!33685 (= (toChars!3577 (transformation!2435 (h!19461 (t!122151 rules!2550)))) (toChars!3577 (transformation!2435 (rule!4194 t1!34))))) b_lambda!42869)))

(declare-fun b_lambda!42871 () Bool)

(assert (= b_lambda!42847 (or b!1384381 b_lambda!42871)))

(declare-fun bs!336873 () Bool)

(declare-fun d!395630 () Bool)

(assert (= bs!336873 (and d!395630 b!1384381)))

(declare-fun res!625009 () Bool)

(declare-fun e!885036 () Bool)

(assert (=> bs!336873 (=> (not res!625009) (not e!885036))))

(assert (=> bs!336873 (= res!625009 (validRegex!1633 (h!19463 (map!3113 rules!2550 lambda!59594))))))

(assert (=> bs!336873 (= (dynLambda!6433 lambda!59595 (h!19463 (map!3113 rules!2550 lambda!59594))) e!885036)))

(declare-fun b!1385263 () Bool)

(assert (=> b!1385263 (= e!885036 (matchR!1740 (h!19463 (map!3113 rules!2550 lambda!59594)) lt!460300))))

(assert (= (and bs!336873 res!625009) b!1385263))

(declare-fun m!1558673 () Bool)

(assert (=> bs!336873 m!1558673))

(declare-fun m!1558675 () Bool)

(assert (=> b!1385263 m!1558675))

(assert (=> b!1385110 d!395630))

(declare-fun b_lambda!42873 () Bool)

(assert (= b_lambda!42849 (or b!1384381 b_lambda!42873)))

(declare-fun bs!336874 () Bool)

(declare-fun d!395632 () Bool)

(assert (= bs!336874 (and d!395632 b!1384381)))

(declare-fun res!625010 () Bool)

(declare-fun e!885037 () Bool)

(assert (=> bs!336874 (=> (not res!625010) (not e!885037))))

(assert (=> bs!336874 (= res!625010 (validRegex!1633 lt!460539))))

(assert (=> bs!336874 (= (dynLambda!6433 lambda!59595 lt!460539) e!885037)))

(declare-fun b!1385264 () Bool)

(assert (=> b!1385264 (= e!885037 (matchR!1740 lt!460539 lt!460300))))

(assert (= (and bs!336874 res!625010) b!1385264))

(declare-fun m!1558677 () Bool)

(assert (=> bs!336874 m!1558677))

(declare-fun m!1558679 () Bool)

(assert (=> b!1385264 m!1558679))

(assert (=> d!395566 d!395632))

(declare-fun b_lambda!42875 () Bool)

(assert (= b_lambda!42791 (or b!1384381 b_lambda!42875)))

(declare-fun bs!336875 () Bool)

(declare-fun d!395634 () Bool)

(assert (= bs!336875 (and d!395634 b!1384381)))

(assert (=> bs!336875 (= (dynLambda!6424 lambda!59594 (h!19461 rules!2550)) (regex!2435 (h!19461 rules!2550)))))

(assert (=> b!1384514 d!395634))

(declare-fun b_lambda!42877 () Bool)

(assert (= b_lambda!42853 (or (and b!1384366 b_free!33669 (= (toChars!3577 (transformation!2435 (rule!4194 t1!34))) (toChars!3577 (transformation!2435 (rule!4194 t2!34))))) (and b!1384355 b_free!33673 (= (toChars!3577 (transformation!2435 (h!19461 rules!2550))) (toChars!3577 (transformation!2435 (rule!4194 t2!34))))) (and b!1384383 b_free!33677) (and b!1385248 b_free!33685 (= (toChars!3577 (transformation!2435 (h!19461 (t!122151 rules!2550)))) (toChars!3577 (transformation!2435 (rule!4194 t2!34))))) b_lambda!42877)))

(declare-fun b_lambda!42879 () Bool)

(assert (= b_lambda!42859 (or b!1384378 b_lambda!42879)))

(declare-fun bs!336876 () Bool)

(declare-fun d!395636 () Bool)

(assert (= bs!336876 (and d!395636 b!1384378)))

(declare-fun ruleValid!600 (LexerInterface!2130 Rule!4670) Bool)

(assert (=> bs!336876 (= (dynLambda!6429 lambda!59597 (rule!4194 t1!34)) (ruleValid!600 thiss!19762 (rule!4194 t1!34)))))

(declare-fun m!1558681 () Bool)

(assert (=> bs!336876 m!1558681))

(assert (=> d!395614 d!395636))

(declare-fun b_lambda!42881 () Bool)

(assert (= b_lambda!42805 (or b!1384356 b_lambda!42881)))

(declare-fun bs!336877 () Bool)

(declare-fun d!395638 () Bool)

(assert (= bs!336877 (and d!395638 b!1384356)))

(assert (=> bs!336877 (= (dynLambda!6429 lambda!59596 (h!19461 rules!2550)) (= (regex!2435 (h!19461 rules!2550)) lt!460289))))

(assert (=> b!1384804 d!395638))

(declare-fun b_lambda!42883 () Bool)

(assert (= b_lambda!42855 (or b!1384376 b_lambda!42883)))

(declare-fun bs!336878 () Bool)

(declare-fun d!395640 () Bool)

(assert (= bs!336878 (and d!395640 b!1384376)))

(declare-fun res!625011 () Bool)

(declare-fun e!885038 () Bool)

(assert (=> bs!336878 (=> (not res!625011) (not e!885038))))

(assert (=> bs!336878 (= res!625011 (matchR!1740 lt!460292 lt!460561))))

(assert (=> bs!336878 (= (dynLambda!6436 lambda!59593 lt!460561) e!885038)))

(declare-fun b!1385265 () Bool)

(assert (=> b!1385265 (= e!885038 (isPrefix!1140 lt!460287 lt!460561))))

(assert (= (and bs!336878 res!625011) b!1385265))

(declare-fun m!1558683 () Bool)

(assert (=> bs!336878 m!1558683))

(declare-fun m!1558685 () Bool)

(assert (=> b!1385265 m!1558685))

(assert (=> d!395608 d!395640))

(declare-fun b_lambda!42885 () Bool)

(assert (= b_lambda!42861 (or b!1384378 b_lambda!42885)))

(declare-fun bs!336879 () Bool)

(declare-fun d!395642 () Bool)

(assert (= bs!336879 (and d!395642 b!1384378)))

(assert (=> bs!336879 (= (dynLambda!6429 lambda!59597 lt!460306) (ruleValid!600 thiss!19762 lt!460306))))

(declare-fun m!1558687 () Bool)

(assert (=> bs!336879 m!1558687))

(assert (=> d!395616 d!395642))

(declare-fun b_lambda!42887 () Bool)

(assert (= b_lambda!42863 (or (and b!1384366 b_free!33669 (= (toChars!3577 (transformation!2435 (rule!4194 t1!34))) (toChars!3577 (transformation!2435 (rule!4194 t2!34))))) (and b!1384355 b_free!33673 (= (toChars!3577 (transformation!2435 (h!19461 rules!2550))) (toChars!3577 (transformation!2435 (rule!4194 t2!34))))) (and b!1384383 b_free!33677) (and b!1385248 b_free!33685 (= (toChars!3577 (transformation!2435 (h!19461 (t!122151 rules!2550)))) (toChars!3577 (transformation!2435 (rule!4194 t2!34))))) b_lambda!42887)))

(declare-fun b_lambda!42889 () Bool)

(assert (= b_lambda!42857 (or b!1384378 b_lambda!42889)))

(declare-fun bs!336880 () Bool)

(declare-fun d!395644 () Bool)

(assert (= bs!336880 (and d!395644 b!1384378)))

(assert (=> bs!336880 (= (dynLambda!6429 lambda!59597 (rule!4194 t2!34)) (ruleValid!600 thiss!19762 (rule!4194 t2!34)))))

(declare-fun m!1558689 () Bool)

(assert (=> bs!336880 m!1558689))

(assert (=> d!395612 d!395644))

(check-sat b_and!92787 (not b!1385108) (not d!395616) (not bm!92668) (not b!1385086) (not b_lambda!42879) (not b!1384744) (not b!1384718) (not d!395572) (not b!1384748) (not b!1385200) (not d!395620) (not b!1384800) (not b!1385083) (not b_next!34381) (not bs!336880) (not d!395598) b_and!92847 (not b!1385089) (not b!1385077) (not b!1385064) (not b!1385058) (not b!1385046) (not b!1385218) (not b!1385152) (not b!1385260) (not tb!72639) (not b!1385109) (not bm!92676) (not b!1384930) (not d!395622) (not b!1385246) (not b_lambda!42885) (not b!1385258) (not b!1385048) (not b!1385139) (not b!1384574) b_and!92845 (not b_lambda!42883) (not d!395546) (not b!1384583) (not d!395418) (not d!395560) (not b!1385235) (not d!395410) (not b!1384592) (not d!395420) (not d!395434) (not d!395624) (not bm!92655) (not b!1385075) (not b!1385262) (not d!395604) (not d!395492) (not d!395340) (not b!1385194) b_and!92791 (not b!1385084) b_and!92853 (not bs!336879) (not b!1385144) (not d!395376) (not b!1384966) (not b!1385221) (not b!1385130) (not b!1385044) (not d!395614) (not b!1385213) (not d!395610) (not b!1385236) (not d!395378) (not b!1385237) (not b!1384777) (not bm!92624) (not b!1385045) (not bm!92666) (not d!395354) (not b_lambda!42865) (not b!1385212) (not b!1385156) (not b!1385182) (not b!1384773) (not bm!92656) (not b!1384775) (not b!1384580) (not b_next!34379) (not b!1385204) (not b!1385149) (not b!1385137) (not b!1385257) (not d!395432) (not b!1385263) (not b!1385078) (not b_lambda!42887) (not b!1385136) (not bs!336874) (not b!1384581) (not b!1385145) (not b_lambda!42873) (not d!395562) (not d!395374) (not d!395556) (not d!395424) (not b_lambda!42875) (not b!1385043) (not b!1384720) (not b_lambda!42871) (not b!1385206) (not d!395568) (not d!395552) (not b!1384971) (not b!1385047) (not b!1384723) (not d!395350) (not d!395584) (not b!1385193) (not b!1385247) (not b!1385255) (not b_lambda!42889) (not b!1385082) (not b!1384598) (not b!1385040) (not b!1384743) (not b!1385116) (not b!1384965) (not b!1385148) (not d!395412) (not d!395446) (not d!395592) (not b!1384571) (not d!395606) (not d!395578) (not tb!72633) (not b!1385256) (not bm!92677) (not b!1385219) (not d!395540) (not b!1385050) (not b!1384717) (not d!395550) (not b!1385111) (not b_next!34389) (not d!395426) (not d!395372) (not b!1385121) (not b!1384799) (not d!395580) (not b_next!34377) (not b!1384928) (not b!1385253) (not d!395558) (not b!1385053) (not d!395570) (not b!1385129) (not b_next!34373) (not d!395504) (not d!395612) (not b!1385215) (not d!395536) (not b_next!34371) (not b!1385117) (not b_next!34375) (not d!395554) (not bs!336878) (not bs!336876) (not d!395428) (not d!395564) (not b!1385203) (not b_lambda!42881) (not d!395608) (not d!395626) (not b!1384774) (not d!395544) (not b_lambda!42869) (not d!395582) (not b_next!34387) (not b!1385150) (not b!1384735) (not b!1384746) b_and!92849 (not b!1384514) (not b!1384968) (not d!395588) (not b!1385118) (not b!1385134) (not b!1385115) (not b_lambda!42867) (not b!1385264) tp_is_empty!6775 (not b!1385085) (not bm!92654) (not bm!92678) (not b!1384929) (not b!1385220) (not b!1385081) (not b!1384801) (not b!1385123) (not d!395364) (not b!1385059) (not b_lambda!42877) (not b!1384807) b_and!92795 (not d!395538) (not b!1384589) (not d!395600) (not b!1385146) (not d!395368) (not b!1384572) (not b!1385120) b_and!92851 (not b!1385042) (not d!395574) (not b!1385095) (not b!1385074) (not b!1385080) (not d!395566) (not b!1385265) (not d!395360) (not b!1384738) (not d!395506) (not b!1385132) (not bs!336873) (not d!395370) (not bm!92667) (not b!1384736) (not b!1385223) (not d!395602) (not d!395586) (not b!1384716) (not d!395548) (not d!395502) (not b!1385147) (not b!1385191) (not b!1385261))
(check-sat b_and!92787 b_and!92845 b_and!92791 b_and!92853 (not b_next!34379) (not b_next!34389) (not b_next!34371) (not b_next!34375) b_and!92795 b_and!92851 (not b_next!34381) b_and!92847 (not b_next!34373) (not b_next!34377) (not b_next!34387) b_and!92849)
(get-model)

(declare-fun d!395992 () Bool)

(assert (=> d!395992 (= (isEmpty!8502 (tail!2010 lt!460299)) ((_ is Nil!14059) (tail!2010 lt!460299)))))

(assert (=> b!1385130 d!395992))

(declare-fun d!395994 () Bool)

(assert (=> d!395994 (= (tail!2010 lt!460299) (t!122150 lt!460299))))

(assert (=> b!1385130 d!395994))

(declare-fun d!395996 () Bool)

(declare-fun lostCauseFct!141 (Regex!3749) Bool)

(assert (=> d!395996 (= (lostCause!347 lt!460292) (lostCauseFct!141 lt!460292))))

(declare-fun bs!336979 () Bool)

(assert (= bs!336979 d!395996))

(declare-fun m!1559529 () Bool)

(assert (=> bs!336979 m!1559529))

(assert (=> b!1385058 d!395996))

(declare-fun d!395998 () Bool)

(declare-fun lt!460732 () Int)

(assert (=> d!395998 (>= lt!460732 0)))

(declare-fun e!885391 () Int)

(assert (=> d!395998 (= lt!460732 e!885391)))

(declare-fun c!228062 () Bool)

(assert (=> d!395998 (= c!228062 ((_ is Nil!14061) (_1!7715 lt!460491)))))

(assert (=> d!395998 (= (size!11553 (_1!7715 lt!460491)) lt!460732)))

(declare-fun b!1385867 () Bool)

(assert (=> b!1385867 (= e!885391 0)))

(declare-fun b!1385868 () Bool)

(assert (=> b!1385868 (= e!885391 (+ 1 (size!11553 (t!122152 (_1!7715 lt!460491)))))))

(assert (= (and d!395998 c!228062) b!1385867))

(assert (= (and d!395998 (not c!228062)) b!1385868))

(declare-fun m!1559531 () Bool)

(assert (=> b!1385868 m!1559531))

(assert (=> d!395492 d!395998))

(declare-fun b!1385869 () Bool)

(declare-fun e!885393 () Bool)

(declare-fun e!885394 () Bool)

(assert (=> b!1385869 (= e!885393 e!885394)))

(declare-fun res!625281 () Bool)

(assert (=> b!1385869 (=> (not res!625281) (not e!885394))))

(declare-fun lt!460737 () Option!2694)

(assert (=> b!1385869 (= res!625281 (isDefined!2227 lt!460737))))

(declare-fun b!1385870 () Bool)

(declare-fun e!885392 () Option!2694)

(declare-fun call!92737 () Option!2694)

(assert (=> b!1385870 (= e!885392 call!92737)))

(declare-fun b!1385871 () Bool)

(declare-fun res!625284 () Bool)

(assert (=> b!1385871 (=> (not res!625284) (not e!885394))))

(assert (=> b!1385871 (= res!625284 (< (size!11552 (_2!7714 (get!4370 lt!460737))) (size!11552 (list!5446 lt!460288))))))

(declare-fun d!396000 () Bool)

(assert (=> d!396000 e!885393))

(declare-fun res!625287 () Bool)

(assert (=> d!396000 (=> res!625287 e!885393)))

(assert (=> d!396000 (= res!625287 (isEmpty!8507 lt!460737))))

(assert (=> d!396000 (= lt!460737 e!885392)))

(declare-fun c!228063 () Bool)

(assert (=> d!396000 (= c!228063 (and ((_ is Cons!14060) rules!2550) ((_ is Nil!14060) (t!122151 rules!2550))))))

(declare-fun lt!460735 () Unit!20305)

(declare-fun lt!460734 () Unit!20305)

(assert (=> d!396000 (= lt!460735 lt!460734)))

(assert (=> d!396000 (isPrefix!1140 (list!5446 lt!460288) (list!5446 lt!460288))))

(assert (=> d!396000 (= lt!460734 (lemmaIsPrefixRefl!799 (list!5446 lt!460288) (list!5446 lt!460288)))))

(assert (=> d!396000 (rulesValidInductive!782 thiss!19762 rules!2550)))

(assert (=> d!396000 (= (maxPrefix!1104 thiss!19762 rules!2550 (list!5446 lt!460288)) lt!460737)))

(declare-fun b!1385872 () Bool)

(declare-fun res!625283 () Bool)

(assert (=> b!1385872 (=> (not res!625283) (not e!885394))))

(assert (=> b!1385872 (= res!625283 (= (++!3646 (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460737)))) (_2!7714 (get!4370 lt!460737))) (list!5446 lt!460288)))))

(declare-fun b!1385873 () Bool)

(declare-fun lt!460736 () Option!2694)

(declare-fun lt!460733 () Option!2694)

(assert (=> b!1385873 (= e!885392 (ite (and ((_ is None!2693) lt!460736) ((_ is None!2693) lt!460733)) None!2693 (ite ((_ is None!2693) lt!460733) lt!460736 (ite ((_ is None!2693) lt!460736) lt!460733 (ite (>= (size!11542 (_1!7714 (v!21547 lt!460736))) (size!11542 (_1!7714 (v!21547 lt!460733)))) lt!460736 lt!460733)))))))

(assert (=> b!1385873 (= lt!460736 call!92737)))

(assert (=> b!1385873 (= lt!460733 (maxPrefix!1104 thiss!19762 (t!122151 rules!2550) (list!5446 lt!460288)))))

(declare-fun b!1385874 () Bool)

(declare-fun res!625282 () Bool)

(assert (=> b!1385874 (=> (not res!625282) (not e!885394))))

(assert (=> b!1385874 (= res!625282 (= (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460737)))) (originalCharacters!3297 (_1!7714 (get!4370 lt!460737)))))))

(declare-fun b!1385875 () Bool)

(declare-fun res!625285 () Bool)

(assert (=> b!1385875 (=> (not res!625285) (not e!885394))))

(assert (=> b!1385875 (= res!625285 (= (value!79030 (_1!7714 (get!4370 lt!460737))) (apply!3519 (transformation!2435 (rule!4194 (_1!7714 (get!4370 lt!460737)))) (seqFromList!1643 (originalCharacters!3297 (_1!7714 (get!4370 lt!460737)))))))))

(declare-fun b!1385876 () Bool)

(declare-fun res!625286 () Bool)

(assert (=> b!1385876 (=> (not res!625286) (not e!885394))))

(assert (=> b!1385876 (= res!625286 (matchR!1740 (regex!2435 (rule!4194 (_1!7714 (get!4370 lt!460737)))) (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460737))))))))

(declare-fun bm!92732 () Bool)

(assert (=> bm!92732 (= call!92737 (maxPrefixOneRule!625 thiss!19762 (h!19461 rules!2550) (list!5446 lt!460288)))))

(declare-fun b!1385877 () Bool)

(assert (=> b!1385877 (= e!885394 (contains!2684 rules!2550 (rule!4194 (_1!7714 (get!4370 lt!460737)))))))

(assert (= (and d!396000 c!228063) b!1385870))

(assert (= (and d!396000 (not c!228063)) b!1385873))

(assert (= (or b!1385870 b!1385873) bm!92732))

(assert (= (and d!396000 (not res!625287)) b!1385869))

(assert (= (and b!1385869 res!625281) b!1385874))

(assert (= (and b!1385874 res!625282) b!1385871))

(assert (= (and b!1385871 res!625284) b!1385872))

(assert (= (and b!1385872 res!625283) b!1385875))

(assert (= (and b!1385875 res!625285) b!1385876))

(assert (= (and b!1385876 res!625286) b!1385877))

(declare-fun m!1559533 () Bool)

(assert (=> b!1385871 m!1559533))

(declare-fun m!1559535 () Bool)

(assert (=> b!1385871 m!1559535))

(assert (=> b!1385871 m!1557633))

(assert (=> b!1385871 m!1558277))

(assert (=> b!1385875 m!1559533))

(declare-fun m!1559537 () Bool)

(assert (=> b!1385875 m!1559537))

(assert (=> b!1385875 m!1559537))

(declare-fun m!1559539 () Bool)

(assert (=> b!1385875 m!1559539))

(assert (=> b!1385874 m!1559533))

(declare-fun m!1559541 () Bool)

(assert (=> b!1385874 m!1559541))

(assert (=> b!1385874 m!1559541))

(declare-fun m!1559543 () Bool)

(assert (=> b!1385874 m!1559543))

(assert (=> bm!92732 m!1557633))

(declare-fun m!1559545 () Bool)

(assert (=> bm!92732 m!1559545))

(assert (=> b!1385873 m!1557633))

(declare-fun m!1559547 () Bool)

(assert (=> b!1385873 m!1559547))

(declare-fun m!1559549 () Bool)

(assert (=> b!1385869 m!1559549))

(assert (=> b!1385876 m!1559533))

(assert (=> b!1385876 m!1559541))

(assert (=> b!1385876 m!1559541))

(assert (=> b!1385876 m!1559543))

(assert (=> b!1385876 m!1559543))

(declare-fun m!1559551 () Bool)

(assert (=> b!1385876 m!1559551))

(declare-fun m!1559553 () Bool)

(assert (=> d!396000 m!1559553))

(assert (=> d!396000 m!1557633))

(assert (=> d!396000 m!1557633))

(declare-fun m!1559555 () Bool)

(assert (=> d!396000 m!1559555))

(assert (=> d!396000 m!1557633))

(assert (=> d!396000 m!1557633))

(declare-fun m!1559557 () Bool)

(assert (=> d!396000 m!1559557))

(assert (=> d!396000 m!1558387))

(assert (=> b!1385877 m!1559533))

(declare-fun m!1559559 () Bool)

(assert (=> b!1385877 m!1559559))

(assert (=> b!1385872 m!1559533))

(assert (=> b!1385872 m!1559541))

(assert (=> b!1385872 m!1559541))

(assert (=> b!1385872 m!1559543))

(assert (=> b!1385872 m!1559543))

(declare-fun m!1559561 () Bool)

(assert (=> b!1385872 m!1559561))

(assert (=> d!395492 d!396000))

(declare-fun d!396002 () Bool)

(declare-fun charsToInt!0 (List!14124) (_ BitVec 32))

(assert (=> d!396002 (= (inv!16 (value!79030 t1!34)) (= (charsToInt!0 (text!18122 (value!79030 t1!34))) (value!79021 (value!79030 t1!34))))))

(declare-fun bs!336980 () Bool)

(assert (= bs!336980 d!396002))

(declare-fun m!1559563 () Bool)

(assert (=> bs!336980 m!1559563))

(assert (=> b!1384735 d!396002))

(assert (=> d!395354 d!395364))

(declare-fun bs!336981 () Bool)

(declare-fun d!396004 () Bool)

(assert (= bs!336981 (and d!396004 d!395360)))

(declare-fun lambda!59675 () Int)

(assert (=> bs!336981 (= (= lambda!59612 lambda!59595) (= lambda!59675 lambda!59613))))

(declare-fun bs!336982 () Bool)

(assert (= bs!336982 (and d!396004 d!395354)))

(assert (=> bs!336982 (not (= lambda!59675 lambda!59612))))

(assert (=> bs!336982 (not (= lambda!59675 lambda!59611))))

(declare-fun bs!336983 () Bool)

(assert (= bs!336983 (and d!396004 d!395350)))

(assert (=> bs!336983 (= (= lambda!59612 lambda!59595) (= lambda!59675 lambda!59606))))

(declare-fun bs!336984 () Bool)

(assert (= bs!336984 (and d!396004 b!1384381)))

(assert (=> bs!336984 (not (= lambda!59675 lambda!59595))))

(assert (=> d!396004 true))

(assert (=> d!396004 (< (dynLambda!6425 order!8575 lambda!59612) (dynLambda!6425 order!8575 lambda!59675))))

(assert (=> d!396004 (= (exists!515 lt!460295 lambda!59612) (not (forall!3420 lt!460295 lambda!59675)))))

(declare-fun bs!336985 () Bool)

(assert (= bs!336985 d!396004))

(declare-fun m!1559565 () Bool)

(assert (=> bs!336985 m!1559565))

(assert (=> d!395354 d!396004))

(declare-fun bs!336986 () Bool)

(declare-fun d!396006 () Bool)

(assert (= bs!336986 (and d!396006 d!395360)))

(declare-fun lambda!59678 () Int)

(assert (=> bs!336986 (not (= lambda!59678 lambda!59613))))

(declare-fun bs!336987 () Bool)

(assert (= bs!336987 (and d!396006 d!396004)))

(assert (=> bs!336987 (not (= lambda!59678 lambda!59675))))

(declare-fun bs!336988 () Bool)

(assert (= bs!336988 (and d!396006 d!395354)))

(assert (=> bs!336988 (= lambda!59678 lambda!59612)))

(assert (=> bs!336988 (not (= lambda!59678 lambda!59611))))

(declare-fun bs!336989 () Bool)

(assert (= bs!336989 (and d!396006 d!395350)))

(assert (=> bs!336989 (not (= lambda!59678 lambda!59606))))

(declare-fun bs!336990 () Bool)

(assert (= bs!336990 (and d!396006 b!1384381)))

(assert (=> bs!336990 (= lambda!59678 lambda!59595)))

(assert (=> d!396006 true))

(assert (=> d!396006 (= (matchR!1740 lt!460292 lt!460300) (exists!515 lt!460295 lambda!59678))))

(assert (=> d!396006 true))

(declare-fun _$85!167 () Unit!20305)

(assert (=> d!396006 (= (choose!8503 lt!460292 lt!460295 lt!460300) _$85!167)))

(declare-fun bs!336991 () Bool)

(assert (= bs!336991 d!396006))

(assert (=> bs!336991 m!1557555))

(declare-fun m!1559567 () Bool)

(assert (=> bs!336991 m!1559567))

(assert (=> d!395354 d!396006))

(declare-fun d!396008 () Bool)

(declare-fun res!625294 () Bool)

(declare-fun e!885401 () Bool)

(assert (=> d!396008 (=> res!625294 e!885401)))

(assert (=> d!396008 (= res!625294 ((_ is Nil!14062) lt!460295))))

(assert (=> d!396008 (= (forall!3420 lt!460295 lambda!59611) e!885401)))

(declare-fun b!1385884 () Bool)

(declare-fun e!885402 () Bool)

(assert (=> b!1385884 (= e!885401 e!885402)))

(declare-fun res!625295 () Bool)

(assert (=> b!1385884 (=> (not res!625295) (not e!885402))))

(assert (=> b!1385884 (= res!625295 (dynLambda!6433 lambda!59611 (h!19463 lt!460295)))))

(declare-fun b!1385885 () Bool)

(assert (=> b!1385885 (= e!885402 (forall!3420 (t!122153 lt!460295) lambda!59611))))

(assert (= (and d!396008 (not res!625294)) b!1385884))

(assert (= (and b!1385884 res!625295) b!1385885))

(declare-fun b_lambda!42923 () Bool)

(assert (=> (not b_lambda!42923) (not b!1385884)))

(declare-fun m!1559569 () Bool)

(assert (=> b!1385884 m!1559569))

(declare-fun m!1559571 () Bool)

(assert (=> b!1385885 m!1559571))

(assert (=> d!395354 d!396008))

(declare-fun b!1385895 () Bool)

(declare-fun e!885407 () List!14125)

(declare-fun e!885408 () List!14125)

(assert (=> b!1385895 (= e!885407 e!885408)))

(declare-fun c!228069 () Bool)

(assert (=> b!1385895 (= c!228069 ((_ is Leaf!7044) (c!227730 lt!460296)))))

(declare-fun d!396010 () Bool)

(declare-fun c!228068 () Bool)

(assert (=> d!396010 (= c!228068 ((_ is Empty!4630) (c!227730 lt!460296)))))

(assert (=> d!396010 (= (list!5450 (c!227730 lt!460296)) e!885407)))

(declare-fun b!1385896 () Bool)

(declare-fun list!5453 (IArray!9265) List!14125)

(assert (=> b!1385896 (= e!885408 (list!5453 (xs!7357 (c!227730 lt!460296))))))

(declare-fun b!1385894 () Bool)

(assert (=> b!1385894 (= e!885407 Nil!14059)))

(declare-fun b!1385897 () Bool)

(assert (=> b!1385897 (= e!885408 (++!3646 (list!5450 (left!12017 (c!227730 lt!460296))) (list!5450 (right!12347 (c!227730 lt!460296)))))))

(assert (= (and d!396010 c!228068) b!1385894))

(assert (= (and d!396010 (not c!228068)) b!1385895))

(assert (= (and b!1385895 c!228069) b!1385896))

(assert (= (and b!1385895 (not c!228069)) b!1385897))

(declare-fun m!1559573 () Bool)

(assert (=> b!1385896 m!1559573))

(declare-fun m!1559575 () Bool)

(assert (=> b!1385897 m!1559575))

(declare-fun m!1559577 () Bool)

(assert (=> b!1385897 m!1559577))

(assert (=> b!1385897 m!1559575))

(assert (=> b!1385897 m!1559577))

(declare-fun m!1559579 () Bool)

(assert (=> b!1385897 m!1559579))

(assert (=> d!395584 d!396010))

(declare-fun b!1385898 () Bool)

(declare-fun e!885412 () Bool)

(declare-fun e!885409 () Bool)

(assert (=> b!1385898 (= e!885412 e!885409)))

(declare-fun res!625298 () Bool)

(assert (=> b!1385898 (=> res!625298 e!885409)))

(declare-fun call!92738 () Bool)

(assert (=> b!1385898 (= res!625298 call!92738)))

(declare-fun b!1385899 () Bool)

(declare-fun e!885414 () Bool)

(assert (=> b!1385899 (= e!885414 (matchR!1740 (derivativeStep!971 lt!460539 (head!2521 lt!460300)) (tail!2010 lt!460300)))))

(declare-fun b!1385900 () Bool)

(declare-fun res!625300 () Bool)

(assert (=> b!1385900 (=> res!625300 e!885409)))

(assert (=> b!1385900 (= res!625300 (not (isEmpty!8502 (tail!2010 lt!460300))))))

(declare-fun b!1385901 () Bool)

(declare-fun e!885413 () Bool)

(declare-fun lt!460738 () Bool)

(assert (=> b!1385901 (= e!885413 (not lt!460738))))

(declare-fun b!1385902 () Bool)

(assert (=> b!1385902 (= e!885409 (not (= (head!2521 lt!460300) (c!227731 lt!460539))))))

(declare-fun b!1385903 () Bool)

(declare-fun e!885415 () Bool)

(assert (=> b!1385903 (= e!885415 e!885412)))

(declare-fun res!625302 () Bool)

(assert (=> b!1385903 (=> (not res!625302) (not e!885412))))

(assert (=> b!1385903 (= res!625302 (not lt!460738))))

(declare-fun b!1385904 () Bool)

(declare-fun res!625299 () Bool)

(assert (=> b!1385904 (=> res!625299 e!885415)))

(declare-fun e!885411 () Bool)

(assert (=> b!1385904 (= res!625299 e!885411)))

(declare-fun res!625296 () Bool)

(assert (=> b!1385904 (=> (not res!625296) (not e!885411))))

(assert (=> b!1385904 (= res!625296 lt!460738)))

(declare-fun b!1385905 () Bool)

(declare-fun e!885410 () Bool)

(assert (=> b!1385905 (= e!885410 (= lt!460738 call!92738))))

(declare-fun bm!92733 () Bool)

(assert (=> bm!92733 (= call!92738 (isEmpty!8502 lt!460300))))

(declare-fun d!396012 () Bool)

(assert (=> d!396012 e!885410))

(declare-fun c!228070 () Bool)

(assert (=> d!396012 (= c!228070 ((_ is EmptyExpr!3749) lt!460539))))

(assert (=> d!396012 (= lt!460738 e!885414)))

(declare-fun c!228071 () Bool)

(assert (=> d!396012 (= c!228071 (isEmpty!8502 lt!460300))))

(assert (=> d!396012 (validRegex!1633 lt!460539)))

(assert (=> d!396012 (= (matchR!1740 lt!460539 lt!460300) lt!460738)))

(declare-fun b!1385906 () Bool)

(declare-fun res!625303 () Bool)

(assert (=> b!1385906 (=> res!625303 e!885415)))

(assert (=> b!1385906 (= res!625303 (not ((_ is ElementMatch!3749) lt!460539)))))

(assert (=> b!1385906 (= e!885413 e!885415)))

(declare-fun b!1385907 () Bool)

(assert (=> b!1385907 (= e!885410 e!885413)))

(declare-fun c!228072 () Bool)

(assert (=> b!1385907 (= c!228072 ((_ is EmptyLang!3749) lt!460539))))

(declare-fun b!1385908 () Bool)

(assert (=> b!1385908 (= e!885414 (nullable!1213 lt!460539))))

(declare-fun b!1385909 () Bool)

(declare-fun res!625297 () Bool)

(assert (=> b!1385909 (=> (not res!625297) (not e!885411))))

(assert (=> b!1385909 (= res!625297 (isEmpty!8502 (tail!2010 lt!460300)))))

(declare-fun b!1385910 () Bool)

(declare-fun res!625301 () Bool)

(assert (=> b!1385910 (=> (not res!625301) (not e!885411))))

(assert (=> b!1385910 (= res!625301 (not call!92738))))

(declare-fun b!1385911 () Bool)

(assert (=> b!1385911 (= e!885411 (= (head!2521 lt!460300) (c!227731 lt!460539)))))

(assert (= (and d!396012 c!228071) b!1385908))

(assert (= (and d!396012 (not c!228071)) b!1385899))

(assert (= (and d!396012 c!228070) b!1385905))

(assert (= (and d!396012 (not c!228070)) b!1385907))

(assert (= (and b!1385907 c!228072) b!1385901))

(assert (= (and b!1385907 (not c!228072)) b!1385906))

(assert (= (and b!1385906 (not res!625303)) b!1385904))

(assert (= (and b!1385904 res!625296) b!1385910))

(assert (= (and b!1385910 res!625301) b!1385909))

(assert (= (and b!1385909 res!625297) b!1385911))

(assert (= (and b!1385904 (not res!625299)) b!1385903))

(assert (= (and b!1385903 res!625302) b!1385898))

(assert (= (and b!1385898 (not res!625298)) b!1385900))

(assert (= (and b!1385900 (not res!625300)) b!1385902))

(assert (= (or b!1385905 b!1385898 b!1385910) bm!92733))

(assert (=> bm!92733 m!1557803))

(assert (=> b!1385909 m!1557805))

(assert (=> b!1385909 m!1557805))

(assert (=> b!1385909 m!1557807))

(assert (=> b!1385899 m!1557809))

(assert (=> b!1385899 m!1557809))

(declare-fun m!1559581 () Bool)

(assert (=> b!1385899 m!1559581))

(assert (=> b!1385899 m!1557805))

(assert (=> b!1385899 m!1559581))

(assert (=> b!1385899 m!1557805))

(declare-fun m!1559583 () Bool)

(assert (=> b!1385899 m!1559583))

(declare-fun m!1559585 () Bool)

(assert (=> b!1385908 m!1559585))

(assert (=> b!1385900 m!1557805))

(assert (=> b!1385900 m!1557805))

(assert (=> b!1385900 m!1557807))

(assert (=> b!1385902 m!1557809))

(assert (=> b!1385911 m!1557809))

(assert (=> d!396012 m!1557803))

(assert (=> d!396012 m!1558677))

(assert (=> b!1385264 d!396012))

(declare-fun b!1385912 () Bool)

(declare-fun e!885419 () Bool)

(declare-fun e!885416 () Bool)

(assert (=> b!1385912 (= e!885419 e!885416)))

(declare-fun res!625306 () Bool)

(assert (=> b!1385912 (=> res!625306 e!885416)))

(declare-fun call!92739 () Bool)

(assert (=> b!1385912 (= res!625306 call!92739)))

(declare-fun b!1385913 () Bool)

(declare-fun e!885421 () Bool)

(assert (=> b!1385913 (= e!885421 (matchR!1740 (derivativeStep!971 (derivativeStep!971 lt!460292 (head!2521 lt!460300)) (head!2521 (tail!2010 lt!460300))) (tail!2010 (tail!2010 lt!460300))))))

(declare-fun b!1385914 () Bool)

(declare-fun res!625308 () Bool)

(assert (=> b!1385914 (=> res!625308 e!885416)))

(assert (=> b!1385914 (= res!625308 (not (isEmpty!8502 (tail!2010 (tail!2010 lt!460300)))))))

(declare-fun b!1385915 () Bool)

(declare-fun e!885420 () Bool)

(declare-fun lt!460739 () Bool)

(assert (=> b!1385915 (= e!885420 (not lt!460739))))

(declare-fun b!1385916 () Bool)

(assert (=> b!1385916 (= e!885416 (not (= (head!2521 (tail!2010 lt!460300)) (c!227731 (derivativeStep!971 lt!460292 (head!2521 lt!460300))))))))

(declare-fun b!1385917 () Bool)

(declare-fun e!885422 () Bool)

(assert (=> b!1385917 (= e!885422 e!885419)))

(declare-fun res!625310 () Bool)

(assert (=> b!1385917 (=> (not res!625310) (not e!885419))))

(assert (=> b!1385917 (= res!625310 (not lt!460739))))

(declare-fun b!1385918 () Bool)

(declare-fun res!625307 () Bool)

(assert (=> b!1385918 (=> res!625307 e!885422)))

(declare-fun e!885418 () Bool)

(assert (=> b!1385918 (= res!625307 e!885418)))

(declare-fun res!625304 () Bool)

(assert (=> b!1385918 (=> (not res!625304) (not e!885418))))

(assert (=> b!1385918 (= res!625304 lt!460739)))

(declare-fun b!1385919 () Bool)

(declare-fun e!885417 () Bool)

(assert (=> b!1385919 (= e!885417 (= lt!460739 call!92739))))

(declare-fun bm!92734 () Bool)

(assert (=> bm!92734 (= call!92739 (isEmpty!8502 (tail!2010 lt!460300)))))

(declare-fun d!396014 () Bool)

(assert (=> d!396014 e!885417))

(declare-fun c!228073 () Bool)

(assert (=> d!396014 (= c!228073 ((_ is EmptyExpr!3749) (derivativeStep!971 lt!460292 (head!2521 lt!460300))))))

(assert (=> d!396014 (= lt!460739 e!885421)))

(declare-fun c!228074 () Bool)

(assert (=> d!396014 (= c!228074 (isEmpty!8502 (tail!2010 lt!460300)))))

(assert (=> d!396014 (validRegex!1633 (derivativeStep!971 lt!460292 (head!2521 lt!460300)))))

(assert (=> d!396014 (= (matchR!1740 (derivativeStep!971 lt!460292 (head!2521 lt!460300)) (tail!2010 lt!460300)) lt!460739)))

(declare-fun b!1385920 () Bool)

(declare-fun res!625311 () Bool)

(assert (=> b!1385920 (=> res!625311 e!885422)))

(assert (=> b!1385920 (= res!625311 (not ((_ is ElementMatch!3749) (derivativeStep!971 lt!460292 (head!2521 lt!460300)))))))

(assert (=> b!1385920 (= e!885420 e!885422)))

(declare-fun b!1385921 () Bool)

(assert (=> b!1385921 (= e!885417 e!885420)))

(declare-fun c!228075 () Bool)

(assert (=> b!1385921 (= c!228075 ((_ is EmptyLang!3749) (derivativeStep!971 lt!460292 (head!2521 lt!460300))))))

(declare-fun b!1385922 () Bool)

(assert (=> b!1385922 (= e!885421 (nullable!1213 (derivativeStep!971 lt!460292 (head!2521 lt!460300))))))

(declare-fun b!1385923 () Bool)

(declare-fun res!625305 () Bool)

(assert (=> b!1385923 (=> (not res!625305) (not e!885418))))

(assert (=> b!1385923 (= res!625305 (isEmpty!8502 (tail!2010 (tail!2010 lt!460300))))))

(declare-fun b!1385924 () Bool)

(declare-fun res!625309 () Bool)

(assert (=> b!1385924 (=> (not res!625309) (not e!885418))))

(assert (=> b!1385924 (= res!625309 (not call!92739))))

(declare-fun b!1385925 () Bool)

(assert (=> b!1385925 (= e!885418 (= (head!2521 (tail!2010 lt!460300)) (c!227731 (derivativeStep!971 lt!460292 (head!2521 lt!460300)))))))

(assert (= (and d!396014 c!228074) b!1385922))

(assert (= (and d!396014 (not c!228074)) b!1385913))

(assert (= (and d!396014 c!228073) b!1385919))

(assert (= (and d!396014 (not c!228073)) b!1385921))

(assert (= (and b!1385921 c!228075) b!1385915))

(assert (= (and b!1385921 (not c!228075)) b!1385920))

(assert (= (and b!1385920 (not res!625311)) b!1385918))

(assert (= (and b!1385918 res!625304) b!1385924))

(assert (= (and b!1385924 res!625309) b!1385923))

(assert (= (and b!1385923 res!625305) b!1385925))

(assert (= (and b!1385918 (not res!625307)) b!1385917))

(assert (= (and b!1385917 res!625310) b!1385912))

(assert (= (and b!1385912 (not res!625306)) b!1385914))

(assert (= (and b!1385914 (not res!625308)) b!1385916))

(assert (= (or b!1385919 b!1385912 b!1385924) bm!92734))

(assert (=> bm!92734 m!1557805))

(assert (=> bm!92734 m!1557807))

(assert (=> b!1385923 m!1557805))

(declare-fun m!1559587 () Bool)

(assert (=> b!1385923 m!1559587))

(assert (=> b!1385923 m!1559587))

(declare-fun m!1559589 () Bool)

(assert (=> b!1385923 m!1559589))

(assert (=> b!1385913 m!1557805))

(declare-fun m!1559591 () Bool)

(assert (=> b!1385913 m!1559591))

(assert (=> b!1385913 m!1557811))

(assert (=> b!1385913 m!1559591))

(declare-fun m!1559593 () Bool)

(assert (=> b!1385913 m!1559593))

(assert (=> b!1385913 m!1557805))

(assert (=> b!1385913 m!1559587))

(assert (=> b!1385913 m!1559593))

(assert (=> b!1385913 m!1559587))

(declare-fun m!1559595 () Bool)

(assert (=> b!1385913 m!1559595))

(assert (=> b!1385922 m!1557811))

(declare-fun m!1559597 () Bool)

(assert (=> b!1385922 m!1559597))

(assert (=> b!1385914 m!1557805))

(assert (=> b!1385914 m!1559587))

(assert (=> b!1385914 m!1559587))

(assert (=> b!1385914 m!1559589))

(assert (=> b!1385916 m!1557805))

(assert (=> b!1385916 m!1559591))

(assert (=> b!1385925 m!1557805))

(assert (=> b!1385925 m!1559591))

(assert (=> d!396014 m!1557805))

(assert (=> d!396014 m!1557807))

(assert (=> d!396014 m!1557811))

(declare-fun m!1559599 () Bool)

(assert (=> d!396014 m!1559599))

(assert (=> b!1384571 d!396014))

(declare-fun b!1385946 () Bool)

(declare-fun c!228086 () Bool)

(assert (=> b!1385946 (= c!228086 ((_ is Union!3749) lt!460292))))

(declare-fun e!885435 () Regex!3749)

(declare-fun e!885433 () Regex!3749)

(assert (=> b!1385946 (= e!885435 e!885433)))

(declare-fun bm!92743 () Bool)

(declare-fun call!92749 () Regex!3749)

(declare-fun call!92748 () Regex!3749)

(assert (=> bm!92743 (= call!92749 call!92748)))

(declare-fun b!1385947 () Bool)

(declare-fun e!885434 () Regex!3749)

(declare-fun call!92750 () Regex!3749)

(assert (=> b!1385947 (= e!885434 (Union!3749 (Concat!6275 call!92750 (regTwo!8010 lt!460292)) call!92749))))

(declare-fun b!1385948 () Bool)

(assert (=> b!1385948 (= e!885434 (Union!3749 (Concat!6275 call!92749 (regTwo!8010 lt!460292)) EmptyLang!3749))))

(declare-fun b!1385949 () Bool)

(declare-fun e!885437 () Regex!3749)

(assert (=> b!1385949 (= e!885437 e!885435)))

(declare-fun c!228087 () Bool)

(assert (=> b!1385949 (= c!228087 ((_ is ElementMatch!3749) lt!460292))))

(declare-fun b!1385950 () Bool)

(declare-fun call!92751 () Regex!3749)

(assert (=> b!1385950 (= e!885433 (Union!3749 call!92750 call!92751))))

(declare-fun b!1385952 () Bool)

(declare-fun e!885436 () Regex!3749)

(assert (=> b!1385952 (= e!885433 e!885436)))

(declare-fun c!228090 () Bool)

(assert (=> b!1385952 (= c!228090 ((_ is Star!3749) lt!460292))))

(declare-fun c!228088 () Bool)

(declare-fun bm!92744 () Bool)

(assert (=> bm!92744 (= call!92751 (derivativeStep!971 (ite c!228086 (regTwo!8011 lt!460292) (ite c!228090 (reg!4078 lt!460292) (ite c!228088 (regTwo!8010 lt!460292) (regOne!8010 lt!460292)))) (head!2521 lt!460300)))))

(declare-fun bm!92745 () Bool)

(assert (=> bm!92745 (= call!92750 (derivativeStep!971 (ite c!228086 (regOne!8011 lt!460292) (regOne!8010 lt!460292)) (head!2521 lt!460300)))))

(declare-fun bm!92746 () Bool)

(assert (=> bm!92746 (= call!92748 call!92751)))

(declare-fun b!1385953 () Bool)

(assert (=> b!1385953 (= e!885437 EmptyLang!3749)))

(declare-fun b!1385954 () Bool)

(assert (=> b!1385954 (= e!885436 (Concat!6275 call!92748 lt!460292))))

(declare-fun b!1385955 () Bool)

(assert (=> b!1385955 (= c!228088 (nullable!1213 (regOne!8010 lt!460292)))))

(assert (=> b!1385955 (= e!885436 e!885434)))

(declare-fun b!1385951 () Bool)

(assert (=> b!1385951 (= e!885435 (ite (= (head!2521 lt!460300) (c!227731 lt!460292)) EmptyExpr!3749 EmptyLang!3749))))

(declare-fun d!396016 () Bool)

(declare-fun lt!460742 () Regex!3749)

(assert (=> d!396016 (validRegex!1633 lt!460742)))

(assert (=> d!396016 (= lt!460742 e!885437)))

(declare-fun c!228089 () Bool)

(assert (=> d!396016 (= c!228089 (or ((_ is EmptyExpr!3749) lt!460292) ((_ is EmptyLang!3749) lt!460292)))))

(assert (=> d!396016 (validRegex!1633 lt!460292)))

(assert (=> d!396016 (= (derivativeStep!971 lt!460292 (head!2521 lt!460300)) lt!460742)))

(assert (= (and d!396016 c!228089) b!1385953))

(assert (= (and d!396016 (not c!228089)) b!1385949))

(assert (= (and b!1385949 c!228087) b!1385951))

(assert (= (and b!1385949 (not c!228087)) b!1385946))

(assert (= (and b!1385946 c!228086) b!1385950))

(assert (= (and b!1385946 (not c!228086)) b!1385952))

(assert (= (and b!1385952 c!228090) b!1385954))

(assert (= (and b!1385952 (not c!228090)) b!1385955))

(assert (= (and b!1385955 c!228088) b!1385947))

(assert (= (and b!1385955 (not c!228088)) b!1385948))

(assert (= (or b!1385947 b!1385948) bm!92743))

(assert (= (or b!1385954 bm!92743) bm!92746))

(assert (= (or b!1385950 b!1385947) bm!92745))

(assert (= (or b!1385950 bm!92746) bm!92744))

(assert (=> bm!92744 m!1557809))

(declare-fun m!1559601 () Bool)

(assert (=> bm!92744 m!1559601))

(assert (=> bm!92745 m!1557809))

(declare-fun m!1559603 () Bool)

(assert (=> bm!92745 m!1559603))

(declare-fun m!1559605 () Bool)

(assert (=> b!1385955 m!1559605))

(declare-fun m!1559607 () Bool)

(assert (=> d!396016 m!1559607))

(assert (=> d!396016 m!1557817))

(assert (=> b!1384571 d!396016))

(declare-fun d!396018 () Bool)

(assert (=> d!396018 (= (head!2521 lt!460300) (h!19460 lt!460300))))

(assert (=> b!1384571 d!396018))

(declare-fun d!396020 () Bool)

(assert (=> d!396020 (= (tail!2010 lt!460300) (t!122150 lt!460300))))

(assert (=> b!1384571 d!396020))

(declare-fun d!396022 () Bool)

(declare-fun lt!460743 () Bool)

(assert (=> d!396022 (= lt!460743 (isEmpty!8502 (list!5446 (_2!7713 lt!460542))))))

(assert (=> d!396022 (= lt!460743 (isEmpty!8503 (c!227730 (_2!7713 lt!460542))))))

(assert (=> d!396022 (= (isEmpty!8496 (_2!7713 lt!460542)) lt!460743)))

(declare-fun bs!336992 () Bool)

(assert (= bs!336992 d!396022))

(declare-fun m!1559609 () Bool)

(assert (=> bs!336992 m!1559609))

(assert (=> bs!336992 m!1559609))

(declare-fun m!1559611 () Bool)

(assert (=> bs!336992 m!1559611))

(declare-fun m!1559613 () Bool)

(assert (=> bs!336992 m!1559613))

(assert (=> b!1385117 d!396022))

(declare-fun b!1385956 () Bool)

(declare-fun e!885441 () Bool)

(declare-fun e!885438 () Bool)

(assert (=> b!1385956 (= e!885441 e!885438)))

(declare-fun res!625314 () Bool)

(assert (=> b!1385956 (=> res!625314 e!885438)))

(declare-fun call!92752 () Bool)

(assert (=> b!1385956 (= res!625314 call!92752)))

(declare-fun b!1385957 () Bool)

(declare-fun e!885443 () Bool)

(assert (=> b!1385957 (= e!885443 (matchR!1740 (derivativeStep!971 (regex!2435 (rule!4194 (_1!7714 (get!4370 lt!460529)))) (head!2521 (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460529)))))) (tail!2010 (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460529)))))))))

(declare-fun b!1385958 () Bool)

(declare-fun res!625316 () Bool)

(assert (=> b!1385958 (=> res!625316 e!885438)))

(assert (=> b!1385958 (= res!625316 (not (isEmpty!8502 (tail!2010 (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460529))))))))))

(declare-fun b!1385959 () Bool)

(declare-fun e!885442 () Bool)

(declare-fun lt!460744 () Bool)

(assert (=> b!1385959 (= e!885442 (not lt!460744))))

(declare-fun b!1385960 () Bool)

(assert (=> b!1385960 (= e!885438 (not (= (head!2521 (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460529))))) (c!227731 (regex!2435 (rule!4194 (_1!7714 (get!4370 lt!460529))))))))))

(declare-fun b!1385961 () Bool)

(declare-fun e!885444 () Bool)

(assert (=> b!1385961 (= e!885444 e!885441)))

(declare-fun res!625318 () Bool)

(assert (=> b!1385961 (=> (not res!625318) (not e!885441))))

(assert (=> b!1385961 (= res!625318 (not lt!460744))))

(declare-fun b!1385962 () Bool)

(declare-fun res!625315 () Bool)

(assert (=> b!1385962 (=> res!625315 e!885444)))

(declare-fun e!885440 () Bool)

(assert (=> b!1385962 (= res!625315 e!885440)))

(declare-fun res!625312 () Bool)

(assert (=> b!1385962 (=> (not res!625312) (not e!885440))))

(assert (=> b!1385962 (= res!625312 lt!460744)))

(declare-fun b!1385963 () Bool)

(declare-fun e!885439 () Bool)

(assert (=> b!1385963 (= e!885439 (= lt!460744 call!92752))))

(declare-fun bm!92747 () Bool)

(assert (=> bm!92747 (= call!92752 (isEmpty!8502 (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460529))))))))

(declare-fun d!396024 () Bool)

(assert (=> d!396024 e!885439))

(declare-fun c!228091 () Bool)

(assert (=> d!396024 (= c!228091 ((_ is EmptyExpr!3749) (regex!2435 (rule!4194 (_1!7714 (get!4370 lt!460529))))))))

(assert (=> d!396024 (= lt!460744 e!885443)))

(declare-fun c!228092 () Bool)

(assert (=> d!396024 (= c!228092 (isEmpty!8502 (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460529))))))))

(assert (=> d!396024 (validRegex!1633 (regex!2435 (rule!4194 (_1!7714 (get!4370 lt!460529)))))))

(assert (=> d!396024 (= (matchR!1740 (regex!2435 (rule!4194 (_1!7714 (get!4370 lt!460529)))) (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460529))))) lt!460744)))

(declare-fun b!1385964 () Bool)

(declare-fun res!625319 () Bool)

(assert (=> b!1385964 (=> res!625319 e!885444)))

(assert (=> b!1385964 (= res!625319 (not ((_ is ElementMatch!3749) (regex!2435 (rule!4194 (_1!7714 (get!4370 lt!460529)))))))))

(assert (=> b!1385964 (= e!885442 e!885444)))

(declare-fun b!1385965 () Bool)

(assert (=> b!1385965 (= e!885439 e!885442)))

(declare-fun c!228093 () Bool)

(assert (=> b!1385965 (= c!228093 ((_ is EmptyLang!3749) (regex!2435 (rule!4194 (_1!7714 (get!4370 lt!460529))))))))

(declare-fun b!1385966 () Bool)

(assert (=> b!1385966 (= e!885443 (nullable!1213 (regex!2435 (rule!4194 (_1!7714 (get!4370 lt!460529))))))))

(declare-fun b!1385967 () Bool)

(declare-fun res!625313 () Bool)

(assert (=> b!1385967 (=> (not res!625313) (not e!885440))))

(assert (=> b!1385967 (= res!625313 (isEmpty!8502 (tail!2010 (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460529)))))))))

(declare-fun b!1385968 () Bool)

(declare-fun res!625317 () Bool)

(assert (=> b!1385968 (=> (not res!625317) (not e!885440))))

(assert (=> b!1385968 (= res!625317 (not call!92752))))

(declare-fun b!1385969 () Bool)

(assert (=> b!1385969 (= e!885440 (= (head!2521 (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460529))))) (c!227731 (regex!2435 (rule!4194 (_1!7714 (get!4370 lt!460529)))))))))

(assert (= (and d!396024 c!228092) b!1385966))

(assert (= (and d!396024 (not c!228092)) b!1385957))

(assert (= (and d!396024 c!228091) b!1385963))

(assert (= (and d!396024 (not c!228091)) b!1385965))

(assert (= (and b!1385965 c!228093) b!1385959))

(assert (= (and b!1385965 (not c!228093)) b!1385964))

(assert (= (and b!1385964 (not res!625319)) b!1385962))

(assert (= (and b!1385962 res!625312) b!1385968))

(assert (= (and b!1385968 res!625317) b!1385967))

(assert (= (and b!1385967 res!625313) b!1385969))

(assert (= (and b!1385962 (not res!625315)) b!1385961))

(assert (= (and b!1385961 res!625318) b!1385956))

(assert (= (and b!1385956 (not res!625314)) b!1385958))

(assert (= (and b!1385958 (not res!625316)) b!1385960))

(assert (= (or b!1385963 b!1385956 b!1385968) bm!92747))

(assert (=> bm!92747 m!1558459))

(declare-fun m!1559615 () Bool)

(assert (=> bm!92747 m!1559615))

(assert (=> b!1385967 m!1558459))

(declare-fun m!1559617 () Bool)

(assert (=> b!1385967 m!1559617))

(assert (=> b!1385967 m!1559617))

(declare-fun m!1559619 () Bool)

(assert (=> b!1385967 m!1559619))

(assert (=> b!1385957 m!1558459))

(declare-fun m!1559621 () Bool)

(assert (=> b!1385957 m!1559621))

(assert (=> b!1385957 m!1559621))

(declare-fun m!1559623 () Bool)

(assert (=> b!1385957 m!1559623))

(assert (=> b!1385957 m!1558459))

(assert (=> b!1385957 m!1559617))

(assert (=> b!1385957 m!1559623))

(assert (=> b!1385957 m!1559617))

(declare-fun m!1559625 () Bool)

(assert (=> b!1385957 m!1559625))

(declare-fun m!1559627 () Bool)

(assert (=> b!1385966 m!1559627))

(assert (=> b!1385958 m!1558459))

(assert (=> b!1385958 m!1559617))

(assert (=> b!1385958 m!1559617))

(assert (=> b!1385958 m!1559619))

(assert (=> b!1385960 m!1558459))

(assert (=> b!1385960 m!1559621))

(assert (=> b!1385969 m!1558459))

(assert (=> b!1385969 m!1559621))

(assert (=> d!396024 m!1558459))

(assert (=> d!396024 m!1559615))

(declare-fun m!1559629 () Bool)

(assert (=> d!396024 m!1559629))

(assert (=> b!1385085 d!396024))

(declare-fun d!396026 () Bool)

(assert (=> d!396026 (= (get!4370 lt!460529) (v!21547 lt!460529))))

(assert (=> b!1385085 d!396026))

(declare-fun d!396028 () Bool)

(assert (=> d!396028 (= (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460529)))) (list!5450 (c!227730 (charsOf!1407 (_1!7714 (get!4370 lt!460529))))))))

(declare-fun bs!336993 () Bool)

(assert (= bs!336993 d!396028))

(declare-fun m!1559631 () Bool)

(assert (=> bs!336993 m!1559631))

(assert (=> b!1385085 d!396028))

(declare-fun d!396030 () Bool)

(declare-fun lt!460745 () BalanceConc!9200)

(assert (=> d!396030 (= (list!5446 lt!460745) (originalCharacters!3297 (_1!7714 (get!4370 lt!460529))))))

(assert (=> d!396030 (= lt!460745 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 (_1!7714 (get!4370 lt!460529))))) (value!79030 (_1!7714 (get!4370 lt!460529)))))))

(assert (=> d!396030 (= (charsOf!1407 (_1!7714 (get!4370 lt!460529))) lt!460745)))

(declare-fun b_lambda!42925 () Bool)

(assert (=> (not b_lambda!42925) (not d!396030)))

(declare-fun t!122216 () Bool)

(declare-fun tb!72665 () Bool)

(assert (=> (and b!1384366 (= (toChars!3577 (transformation!2435 (rule!4194 t1!34))) (toChars!3577 (transformation!2435 (rule!4194 (_1!7714 (get!4370 lt!460529)))))) t!122216) tb!72665))

(declare-fun b!1385970 () Bool)

(declare-fun e!885445 () Bool)

(declare-fun tp!396444 () Bool)

(assert (=> b!1385970 (= e!885445 (and (inv!18402 (c!227730 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 (_1!7714 (get!4370 lt!460529))))) (value!79030 (_1!7714 (get!4370 lt!460529)))))) tp!396444))))

(declare-fun result!88286 () Bool)

(assert (=> tb!72665 (= result!88286 (and (inv!18403 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 (_1!7714 (get!4370 lt!460529))))) (value!79030 (_1!7714 (get!4370 lt!460529))))) e!885445))))

(assert (= tb!72665 b!1385970))

(declare-fun m!1559633 () Bool)

(assert (=> b!1385970 m!1559633))

(declare-fun m!1559635 () Bool)

(assert (=> tb!72665 m!1559635))

(assert (=> d!396030 t!122216))

(declare-fun b_and!92871 () Bool)

(assert (= b_and!92845 (and (=> t!122216 result!88286) b_and!92871)))

(declare-fun t!122218 () Bool)

(declare-fun tb!72667 () Bool)

(assert (=> (and b!1384355 (= (toChars!3577 (transformation!2435 (h!19461 rules!2550))) (toChars!3577 (transformation!2435 (rule!4194 (_1!7714 (get!4370 lt!460529)))))) t!122218) tb!72667))

(declare-fun result!88288 () Bool)

(assert (= result!88288 result!88286))

(assert (=> d!396030 t!122218))

(declare-fun b_and!92873 () Bool)

(assert (= b_and!92847 (and (=> t!122218 result!88288) b_and!92873)))

(declare-fun t!122220 () Bool)

(declare-fun tb!72669 () Bool)

(assert (=> (and b!1384383 (= (toChars!3577 (transformation!2435 (rule!4194 t2!34))) (toChars!3577 (transformation!2435 (rule!4194 (_1!7714 (get!4370 lt!460529)))))) t!122220) tb!72669))

(declare-fun result!88290 () Bool)

(assert (= result!88290 result!88286))

(assert (=> d!396030 t!122220))

(declare-fun b_and!92875 () Bool)

(assert (= b_and!92849 (and (=> t!122220 result!88290) b_and!92875)))

(declare-fun tb!72671 () Bool)

(declare-fun t!122222 () Bool)

(assert (=> (and b!1385248 (= (toChars!3577 (transformation!2435 (h!19461 (t!122151 rules!2550)))) (toChars!3577 (transformation!2435 (rule!4194 (_1!7714 (get!4370 lt!460529)))))) t!122222) tb!72671))

(declare-fun result!88292 () Bool)

(assert (= result!88292 result!88286))

(assert (=> d!396030 t!122222))

(declare-fun b_and!92877 () Bool)

(assert (= b_and!92853 (and (=> t!122222 result!88292) b_and!92877)))

(declare-fun m!1559637 () Bool)

(assert (=> d!396030 m!1559637))

(declare-fun m!1559639 () Bool)

(assert (=> d!396030 m!1559639))

(assert (=> b!1385085 d!396030))

(declare-fun d!396032 () Bool)

(assert (=> d!396032 (= (head!2521 lt!460299) (h!19460 lt!460299))))

(assert (=> b!1385123 d!396032))

(declare-fun d!396034 () Bool)

(declare-fun nullableFct!288 (Regex!3749) Bool)

(assert (=> d!396034 (= (nullable!1213 (reg!4078 (regex!2435 (rule!4194 t1!34)))) (nullableFct!288 (reg!4078 (regex!2435 (rule!4194 t1!34)))))))

(declare-fun bs!336994 () Bool)

(assert (= bs!336994 d!396034))

(declare-fun m!1559641 () Bool)

(assert (=> bs!336994 m!1559641))

(assert (=> b!1385182 d!396034))

(declare-fun d!396036 () Bool)

(declare-fun lt!460746 () Bool)

(assert (=> d!396036 (= lt!460746 (select (content!2059 (t!122150 lt!460291)) lt!460307))))

(declare-fun e!885447 () Bool)

(assert (=> d!396036 (= lt!460746 e!885447)))

(declare-fun res!625321 () Bool)

(assert (=> d!396036 (=> (not res!625321) (not e!885447))))

(assert (=> d!396036 (= res!625321 ((_ is Cons!14059) (t!122150 lt!460291)))))

(assert (=> d!396036 (= (contains!2683 (t!122150 lt!460291) lt!460307) lt!460746)))

(declare-fun b!1385971 () Bool)

(declare-fun e!885446 () Bool)

(assert (=> b!1385971 (= e!885447 e!885446)))

(declare-fun res!625320 () Bool)

(assert (=> b!1385971 (=> res!625320 e!885446)))

(assert (=> b!1385971 (= res!625320 (= (h!19460 (t!122150 lt!460291)) lt!460307))))

(declare-fun b!1385972 () Bool)

(assert (=> b!1385972 (= e!885446 (contains!2683 (t!122150 (t!122150 lt!460291)) lt!460307))))

(assert (= (and d!396036 res!625321) b!1385971))

(assert (= (and b!1385971 (not res!625320)) b!1385972))

(declare-fun m!1559643 () Bool)

(assert (=> d!396036 m!1559643))

(declare-fun m!1559645 () Bool)

(assert (=> d!396036 m!1559645))

(declare-fun m!1559647 () Bool)

(assert (=> b!1385972 m!1559647))

(assert (=> b!1385223 d!396036))

(declare-fun d!396038 () Bool)

(assert (=> d!396038 (= (isEmpty!8507 lt!460513) (not ((_ is Some!2693) lt!460513)))))

(assert (=> d!395536 d!396038))

(declare-fun b!1385982 () Bool)

(declare-fun res!625333 () Bool)

(declare-fun e!885455 () Bool)

(assert (=> b!1385982 (=> (not res!625333) (not e!885455))))

(assert (=> b!1385982 (= res!625333 (= (head!2521 lt!460299) (head!2521 lt!460299)))))

(declare-fun b!1385981 () Bool)

(declare-fun e!885454 () Bool)

(assert (=> b!1385981 (= e!885454 e!885455)))

(declare-fun res!625331 () Bool)

(assert (=> b!1385981 (=> (not res!625331) (not e!885455))))

(assert (=> b!1385981 (= res!625331 (not ((_ is Nil!14059) lt!460299)))))

(declare-fun b!1385983 () Bool)

(assert (=> b!1385983 (= e!885455 (isPrefix!1140 (tail!2010 lt!460299) (tail!2010 lt!460299)))))

(declare-fun b!1385984 () Bool)

(declare-fun e!885456 () Bool)

(assert (=> b!1385984 (= e!885456 (>= (size!11552 lt!460299) (size!11552 lt!460299)))))

(declare-fun d!396040 () Bool)

(assert (=> d!396040 e!885456))

(declare-fun res!625330 () Bool)

(assert (=> d!396040 (=> res!625330 e!885456)))

(declare-fun lt!460749 () Bool)

(assert (=> d!396040 (= res!625330 (not lt!460749))))

(assert (=> d!396040 (= lt!460749 e!885454)))

(declare-fun res!625332 () Bool)

(assert (=> d!396040 (=> res!625332 e!885454)))

(assert (=> d!396040 (= res!625332 ((_ is Nil!14059) lt!460299))))

(assert (=> d!396040 (= (isPrefix!1140 lt!460299 lt!460299) lt!460749)))

(assert (= (and d!396040 (not res!625332)) b!1385981))

(assert (= (and b!1385981 res!625331) b!1385982))

(assert (= (and b!1385982 res!625333) b!1385983))

(assert (= (and d!396040 (not res!625330)) b!1385984))

(assert (=> b!1385982 m!1558527))

(assert (=> b!1385982 m!1558527))

(assert (=> b!1385983 m!1558523))

(assert (=> b!1385983 m!1558523))

(assert (=> b!1385983 m!1558523))

(assert (=> b!1385983 m!1558523))

(declare-fun m!1559649 () Bool)

(assert (=> b!1385983 m!1559649))

(assert (=> b!1385984 m!1558363))

(assert (=> b!1385984 m!1558363))

(assert (=> d!395536 d!396040))

(declare-fun d!396042 () Bool)

(assert (=> d!396042 (isPrefix!1140 lt!460299 lt!460299)))

(declare-fun lt!460752 () Unit!20305)

(declare-fun choose!8513 (List!14125 List!14125) Unit!20305)

(assert (=> d!396042 (= lt!460752 (choose!8513 lt!460299 lt!460299))))

(assert (=> d!396042 (= (lemmaIsPrefixRefl!799 lt!460299 lt!460299) lt!460752)))

(declare-fun bs!336995 () Bool)

(assert (= bs!336995 d!396042))

(assert (=> bs!336995 m!1558383))

(declare-fun m!1559651 () Bool)

(assert (=> bs!336995 m!1559651))

(assert (=> d!395536 d!396042))

(declare-fun bs!336996 () Bool)

(declare-fun d!396044 () Bool)

(assert (= bs!336996 (and d!396044 b!1384356)))

(declare-fun lambda!59681 () Int)

(assert (=> bs!336996 (not (= lambda!59681 lambda!59596))))

(declare-fun bs!336997 () Bool)

(assert (= bs!336997 (and d!396044 b!1384378)))

(assert (=> bs!336997 (= lambda!59681 lambda!59597)))

(declare-fun bs!336998 () Bool)

(assert (= bs!336998 (and d!396044 d!395598)))

(assert (=> bs!336998 (not (= lambda!59681 lambda!59638))))

(declare-fun bs!336999 () Bool)

(assert (= bs!336999 (and d!396044 d!395600)))

(assert (=> bs!336999 (not (= lambda!59681 lambda!59641))))

(assert (=> d!396044 true))

(declare-fun lt!460755 () Bool)

(assert (=> d!396044 (= lt!460755 (forall!3423 rules!2550 lambda!59681))))

(declare-fun e!885461 () Bool)

(assert (=> d!396044 (= lt!460755 e!885461)))

(declare-fun res!625338 () Bool)

(assert (=> d!396044 (=> res!625338 e!885461)))

(assert (=> d!396044 (= res!625338 (not ((_ is Cons!14060) rules!2550)))))

(assert (=> d!396044 (= (rulesValidInductive!782 thiss!19762 rules!2550) lt!460755)))

(declare-fun b!1385989 () Bool)

(declare-fun e!885462 () Bool)

(assert (=> b!1385989 (= e!885461 e!885462)))

(declare-fun res!625339 () Bool)

(assert (=> b!1385989 (=> (not res!625339) (not e!885462))))

(assert (=> b!1385989 (= res!625339 (ruleValid!600 thiss!19762 (h!19461 rules!2550)))))

(declare-fun b!1385990 () Bool)

(assert (=> b!1385990 (= e!885462 (rulesValidInductive!782 thiss!19762 (t!122151 rules!2550)))))

(assert (= (and d!396044 (not res!625338)) b!1385989))

(assert (= (and b!1385989 res!625339) b!1385990))

(declare-fun m!1559653 () Bool)

(assert (=> d!396044 m!1559653))

(declare-fun m!1559655 () Bool)

(assert (=> b!1385989 m!1559655))

(declare-fun m!1559657 () Bool)

(assert (=> b!1385990 m!1559657))

(assert (=> d!395536 d!396044))

(declare-fun d!396046 () Bool)

(assert (=> d!396046 (= (list!5446 lt!460399) (list!5450 (c!227730 lt!460399)))))

(declare-fun bs!337000 () Bool)

(assert (= bs!337000 d!396046))

(declare-fun m!1559659 () Bool)

(assert (=> bs!337000 m!1559659))

(assert (=> d!395410 d!396046))

(declare-fun d!396048 () Bool)

(declare-fun c!228096 () Bool)

(assert (=> d!396048 (= c!228096 ((_ is Cons!14061) (list!5445 (singletonSeq!1078 t2!34))))))

(declare-fun e!885465 () List!14125)

(assert (=> d!396048 (= (printList!620 thiss!19762 (list!5445 (singletonSeq!1078 t2!34))) e!885465)))

(declare-fun b!1385995 () Bool)

(assert (=> b!1385995 (= e!885465 (++!3646 (list!5446 (charsOf!1407 (h!19462 (list!5445 (singletonSeq!1078 t2!34))))) (printList!620 thiss!19762 (t!122152 (list!5445 (singletonSeq!1078 t2!34))))))))

(declare-fun b!1385996 () Bool)

(assert (=> b!1385996 (= e!885465 Nil!14059)))

(assert (= (and d!396048 c!228096) b!1385995))

(assert (= (and d!396048 (not c!228096)) b!1385996))

(declare-fun m!1559661 () Bool)

(assert (=> b!1385995 m!1559661))

(assert (=> b!1385995 m!1559661))

(declare-fun m!1559663 () Bool)

(assert (=> b!1385995 m!1559663))

(declare-fun m!1559665 () Bool)

(assert (=> b!1385995 m!1559665))

(assert (=> b!1385995 m!1559663))

(assert (=> b!1385995 m!1559665))

(declare-fun m!1559667 () Bool)

(assert (=> b!1385995 m!1559667))

(assert (=> d!395410 d!396048))

(declare-fun d!396050 () Bool)

(assert (=> d!396050 (= (list!5445 (singletonSeq!1078 t2!34)) (list!5449 (c!227732 (singletonSeq!1078 t2!34))))))

(declare-fun bs!337001 () Bool)

(assert (= bs!337001 d!396050))

(declare-fun m!1559669 () Bool)

(assert (=> bs!337001 m!1559669))

(assert (=> d!395410 d!396050))

(declare-fun d!396052 () Bool)

(declare-fun lt!460776 () BalanceConc!9200)

(declare-fun printListTailRec!255 (LexerInterface!2130 List!14127 List!14125) List!14125)

(declare-fun dropList!420 (BalanceConc!9202 Int) List!14127)

(assert (=> d!396052 (= (list!5446 lt!460776) (printListTailRec!255 thiss!19762 (dropList!420 (singletonSeq!1078 t2!34) 0) (list!5446 (BalanceConc!9201 Empty!4630))))))

(declare-fun e!885471 () BalanceConc!9200)

(assert (=> d!396052 (= lt!460776 e!885471)))

(declare-fun c!228099 () Bool)

(assert (=> d!396052 (= c!228099 (>= 0 (size!11549 (singletonSeq!1078 t2!34))))))

(declare-fun e!885470 () Bool)

(assert (=> d!396052 e!885470))

(declare-fun res!625342 () Bool)

(assert (=> d!396052 (=> (not res!625342) (not e!885470))))

(assert (=> d!396052 (= res!625342 (>= 0 0))))

(assert (=> d!396052 (= (printTailRec!602 thiss!19762 (singletonSeq!1078 t2!34) 0 (BalanceConc!9201 Empty!4630)) lt!460776)))

(declare-fun b!1386003 () Bool)

(assert (=> b!1386003 (= e!885470 (<= 0 (size!11549 (singletonSeq!1078 t2!34))))))

(declare-fun b!1386004 () Bool)

(assert (=> b!1386004 (= e!885471 (BalanceConc!9201 Empty!4630))))

(declare-fun b!1386005 () Bool)

(assert (=> b!1386005 (= e!885471 (printTailRec!602 thiss!19762 (singletonSeq!1078 t2!34) (+ 0 1) (++!3647 (BalanceConc!9201 Empty!4630) (charsOf!1407 (apply!3518 (singletonSeq!1078 t2!34) 0)))))))

(declare-fun lt!460771 () List!14127)

(assert (=> b!1386005 (= lt!460771 (list!5445 (singletonSeq!1078 t2!34)))))

(declare-fun lt!460774 () Unit!20305)

(declare-fun lemmaDropApply!446 (List!14127 Int) Unit!20305)

(assert (=> b!1386005 (= lt!460774 (lemmaDropApply!446 lt!460771 0))))

(declare-fun head!2527 (List!14127) Token!4532)

(declare-fun drop!691 (List!14127 Int) List!14127)

(declare-fun apply!3522 (List!14127 Int) Token!4532)

(assert (=> b!1386005 (= (head!2527 (drop!691 lt!460771 0)) (apply!3522 lt!460771 0))))

(declare-fun lt!460773 () Unit!20305)

(assert (=> b!1386005 (= lt!460773 lt!460774)))

(declare-fun lt!460772 () List!14127)

(assert (=> b!1386005 (= lt!460772 (list!5445 (singletonSeq!1078 t2!34)))))

(declare-fun lt!460775 () Unit!20305)

(declare-fun lemmaDropTail!426 (List!14127 Int) Unit!20305)

(assert (=> b!1386005 (= lt!460775 (lemmaDropTail!426 lt!460772 0))))

(declare-fun tail!2013 (List!14127) List!14127)

(assert (=> b!1386005 (= (tail!2013 (drop!691 lt!460772 0)) (drop!691 lt!460772 (+ 0 1)))))

(declare-fun lt!460770 () Unit!20305)

(assert (=> b!1386005 (= lt!460770 lt!460775)))

(assert (= (and d!396052 res!625342) b!1386003))

(assert (= (and d!396052 c!228099) b!1386004))

(assert (= (and d!396052 (not c!228099)) b!1386005))

(declare-fun m!1559671 () Bool)

(assert (=> d!396052 m!1559671))

(assert (=> d!396052 m!1557625))

(declare-fun m!1559673 () Bool)

(assert (=> d!396052 m!1559673))

(declare-fun m!1559675 () Bool)

(assert (=> d!396052 m!1559675))

(assert (=> d!396052 m!1559673))

(assert (=> d!396052 m!1559675))

(declare-fun m!1559677 () Bool)

(assert (=> d!396052 m!1559677))

(assert (=> d!396052 m!1557625))

(declare-fun m!1559679 () Bool)

(assert (=> d!396052 m!1559679))

(assert (=> b!1386003 m!1557625))

(assert (=> b!1386003 m!1559679))

(declare-fun m!1559681 () Bool)

(assert (=> b!1386005 m!1559681))

(assert (=> b!1386005 m!1557625))

(assert (=> b!1386005 m!1557949))

(declare-fun m!1559683 () Bool)

(assert (=> b!1386005 m!1559683))

(declare-fun m!1559685 () Bool)

(assert (=> b!1386005 m!1559685))

(declare-fun m!1559687 () Bool)

(assert (=> b!1386005 m!1559687))

(declare-fun m!1559689 () Bool)

(assert (=> b!1386005 m!1559689))

(assert (=> b!1386005 m!1557625))

(declare-fun m!1559691 () Bool)

(assert (=> b!1386005 m!1559691))

(declare-fun m!1559693 () Bool)

(assert (=> b!1386005 m!1559693))

(declare-fun m!1559695 () Bool)

(assert (=> b!1386005 m!1559695))

(assert (=> b!1386005 m!1557625))

(assert (=> b!1386005 m!1559687))

(assert (=> b!1386005 m!1559689))

(assert (=> b!1386005 m!1559691))

(assert (=> b!1386005 m!1559683))

(declare-fun m!1559697 () Bool)

(assert (=> b!1386005 m!1559697))

(assert (=> b!1386005 m!1559681))

(declare-fun m!1559699 () Bool)

(assert (=> b!1386005 m!1559699))

(declare-fun m!1559701 () Bool)

(assert (=> b!1386005 m!1559701))

(declare-fun m!1559703 () Bool)

(assert (=> b!1386005 m!1559703))

(assert (=> d!395410 d!396052))

(declare-fun d!396054 () Bool)

(assert (=> d!396054 (= (isEmpty!8507 lt!460529) (not ((_ is Some!2693) lt!460529)))))

(assert (=> d!395558 d!396054))

(declare-fun b!1386007 () Bool)

(declare-fun res!625346 () Bool)

(declare-fun e!885473 () Bool)

(assert (=> b!1386007 (=> (not res!625346) (not e!885473))))

(assert (=> b!1386007 (= res!625346 (= (head!2521 lt!460285) (head!2521 lt!460285)))))

(declare-fun b!1386006 () Bool)

(declare-fun e!885472 () Bool)

(assert (=> b!1386006 (= e!885472 e!885473)))

(declare-fun res!625344 () Bool)

(assert (=> b!1386006 (=> (not res!625344) (not e!885473))))

(assert (=> b!1386006 (= res!625344 (not ((_ is Nil!14059) lt!460285)))))

(declare-fun b!1386008 () Bool)

(assert (=> b!1386008 (= e!885473 (isPrefix!1140 (tail!2010 lt!460285) (tail!2010 lt!460285)))))

(declare-fun b!1386009 () Bool)

(declare-fun e!885474 () Bool)

(assert (=> b!1386009 (= e!885474 (>= (size!11552 lt!460285) (size!11552 lt!460285)))))

(declare-fun d!396056 () Bool)

(assert (=> d!396056 e!885474))

(declare-fun res!625343 () Bool)

(assert (=> d!396056 (=> res!625343 e!885474)))

(declare-fun lt!460777 () Bool)

(assert (=> d!396056 (= res!625343 (not lt!460777))))

(assert (=> d!396056 (= lt!460777 e!885472)))

(declare-fun res!625345 () Bool)

(assert (=> d!396056 (=> res!625345 e!885472)))

(assert (=> d!396056 (= res!625345 ((_ is Nil!14059) lt!460285))))

(assert (=> d!396056 (= (isPrefix!1140 lt!460285 lt!460285) lt!460777)))

(assert (= (and d!396056 (not res!625345)) b!1386006))

(assert (= (and b!1386006 res!625344) b!1386007))

(assert (= (and b!1386007 res!625346) b!1386008))

(assert (= (and d!396056 (not res!625343)) b!1386009))

(assert (=> b!1386007 m!1557579))

(assert (=> b!1386007 m!1557579))

(assert (=> b!1386008 m!1558631))

(assert (=> b!1386008 m!1558631))

(assert (=> b!1386008 m!1558631))

(assert (=> b!1386008 m!1558631))

(declare-fun m!1559705 () Bool)

(assert (=> b!1386008 m!1559705))

(assert (=> b!1386009 m!1558431))

(assert (=> b!1386009 m!1558431))

(assert (=> d!395558 d!396056))

(declare-fun d!396058 () Bool)

(assert (=> d!396058 (isPrefix!1140 lt!460285 lt!460285)))

(declare-fun lt!460778 () Unit!20305)

(assert (=> d!396058 (= lt!460778 (choose!8513 lt!460285 lt!460285))))

(assert (=> d!396058 (= (lemmaIsPrefixRefl!799 lt!460285 lt!460285) lt!460778)))

(declare-fun bs!337002 () Bool)

(assert (= bs!337002 d!396058))

(assert (=> bs!337002 m!1558471))

(declare-fun m!1559707 () Bool)

(assert (=> bs!337002 m!1559707))

(assert (=> d!395558 d!396058))

(assert (=> d!395558 d!396044))

(declare-fun d!396060 () Bool)

(declare-fun lt!460779 () Bool)

(assert (=> d!396060 (= lt!460779 (isEmpty!8502 (list!5446 (_2!7713 lt!460474))))))

(assert (=> d!396060 (= lt!460779 (isEmpty!8503 (c!227730 (_2!7713 lt!460474))))))

(assert (=> d!396060 (= (isEmpty!8496 (_2!7713 lt!460474)) lt!460779)))

(declare-fun bs!337003 () Bool)

(assert (= bs!337003 d!396060))

(declare-fun m!1559709 () Bool)

(assert (=> bs!337003 m!1559709))

(assert (=> bs!337003 m!1559709))

(declare-fun m!1559711 () Bool)

(assert (=> bs!337003 m!1559711))

(declare-fun m!1559713 () Bool)

(assert (=> bs!337003 m!1559713))

(assert (=> b!1384929 d!396060))

(declare-fun d!396062 () Bool)

(declare-fun res!625347 () Bool)

(declare-fun e!885475 () Bool)

(assert (=> d!396062 (=> res!625347 e!885475)))

(assert (=> d!396062 (= res!625347 (not ((_ is Cons!14060) (t!122151 rules!2550))))))

(assert (=> d!396062 (= (sepAndNonSepRulesDisjointChars!808 rules!2550 (t!122151 rules!2550)) e!885475)))

(declare-fun b!1386010 () Bool)

(declare-fun e!885476 () Bool)

(assert (=> b!1386010 (= e!885475 e!885476)))

(declare-fun res!625348 () Bool)

(assert (=> b!1386010 (=> (not res!625348) (not e!885476))))

(assert (=> b!1386010 (= res!625348 (ruleDisjointCharsFromAllFromOtherType!383 (h!19461 (t!122151 rules!2550)) rules!2550))))

(declare-fun b!1386011 () Bool)

(assert (=> b!1386011 (= e!885476 (sepAndNonSepRulesDisjointChars!808 rules!2550 (t!122151 (t!122151 rules!2550))))))

(assert (= (and d!396062 (not res!625347)) b!1386010))

(assert (= (and b!1386010 res!625348) b!1386011))

(declare-fun m!1559715 () Bool)

(assert (=> b!1386010 m!1559715))

(declare-fun m!1559717 () Bool)

(assert (=> b!1386011 m!1559717))

(assert (=> b!1384744 d!396062))

(declare-fun b!1386012 () Bool)

(declare-fun e!885478 () Bool)

(declare-fun e!885479 () Bool)

(assert (=> b!1386012 (= e!885478 e!885479)))

(declare-fun res!625349 () Bool)

(assert (=> b!1386012 (=> (not res!625349) (not e!885479))))

(declare-fun lt!460784 () Option!2694)

(assert (=> b!1386012 (= res!625349 (isDefined!2227 lt!460784))))

(declare-fun b!1386013 () Bool)

(declare-fun e!885477 () Option!2694)

(declare-fun call!92753 () Option!2694)

(assert (=> b!1386013 (= e!885477 call!92753)))

(declare-fun b!1386014 () Bool)

(declare-fun res!625352 () Bool)

(assert (=> b!1386014 (=> (not res!625352) (not e!885479))))

(assert (=> b!1386014 (= res!625352 (< (size!11552 (_2!7714 (get!4370 lt!460784))) (size!11552 lt!460299)))))

(declare-fun d!396064 () Bool)

(assert (=> d!396064 e!885478))

(declare-fun res!625355 () Bool)

(assert (=> d!396064 (=> res!625355 e!885478)))

(assert (=> d!396064 (= res!625355 (isEmpty!8507 lt!460784))))

(assert (=> d!396064 (= lt!460784 e!885477)))

(declare-fun c!228100 () Bool)

(assert (=> d!396064 (= c!228100 (and ((_ is Cons!14060) (t!122151 rules!2550)) ((_ is Nil!14060) (t!122151 (t!122151 rules!2550)))))))

(declare-fun lt!460782 () Unit!20305)

(declare-fun lt!460781 () Unit!20305)

(assert (=> d!396064 (= lt!460782 lt!460781)))

(assert (=> d!396064 (isPrefix!1140 lt!460299 lt!460299)))

(assert (=> d!396064 (= lt!460781 (lemmaIsPrefixRefl!799 lt!460299 lt!460299))))

(assert (=> d!396064 (rulesValidInductive!782 thiss!19762 (t!122151 rules!2550))))

(assert (=> d!396064 (= (maxPrefix!1104 thiss!19762 (t!122151 rules!2550) lt!460299) lt!460784)))

(declare-fun b!1386015 () Bool)

(declare-fun res!625351 () Bool)

(assert (=> b!1386015 (=> (not res!625351) (not e!885479))))

(assert (=> b!1386015 (= res!625351 (= (++!3646 (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460784)))) (_2!7714 (get!4370 lt!460784))) lt!460299))))

(declare-fun b!1386016 () Bool)

(declare-fun lt!460783 () Option!2694)

(declare-fun lt!460780 () Option!2694)

(assert (=> b!1386016 (= e!885477 (ite (and ((_ is None!2693) lt!460783) ((_ is None!2693) lt!460780)) None!2693 (ite ((_ is None!2693) lt!460780) lt!460783 (ite ((_ is None!2693) lt!460783) lt!460780 (ite (>= (size!11542 (_1!7714 (v!21547 lt!460783))) (size!11542 (_1!7714 (v!21547 lt!460780)))) lt!460783 lt!460780)))))))

(assert (=> b!1386016 (= lt!460783 call!92753)))

(assert (=> b!1386016 (= lt!460780 (maxPrefix!1104 thiss!19762 (t!122151 (t!122151 rules!2550)) lt!460299))))

(declare-fun b!1386017 () Bool)

(declare-fun res!625350 () Bool)

(assert (=> b!1386017 (=> (not res!625350) (not e!885479))))

(assert (=> b!1386017 (= res!625350 (= (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460784)))) (originalCharacters!3297 (_1!7714 (get!4370 lt!460784)))))))

(declare-fun b!1386018 () Bool)

(declare-fun res!625353 () Bool)

(assert (=> b!1386018 (=> (not res!625353) (not e!885479))))

(assert (=> b!1386018 (= res!625353 (= (value!79030 (_1!7714 (get!4370 lt!460784))) (apply!3519 (transformation!2435 (rule!4194 (_1!7714 (get!4370 lt!460784)))) (seqFromList!1643 (originalCharacters!3297 (_1!7714 (get!4370 lt!460784)))))))))

(declare-fun b!1386019 () Bool)

(declare-fun res!625354 () Bool)

(assert (=> b!1386019 (=> (not res!625354) (not e!885479))))

(assert (=> b!1386019 (= res!625354 (matchR!1740 (regex!2435 (rule!4194 (_1!7714 (get!4370 lt!460784)))) (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460784))))))))

(declare-fun bm!92748 () Bool)

(assert (=> bm!92748 (= call!92753 (maxPrefixOneRule!625 thiss!19762 (h!19461 (t!122151 rules!2550)) lt!460299))))

(declare-fun b!1386020 () Bool)

(assert (=> b!1386020 (= e!885479 (contains!2684 (t!122151 rules!2550) (rule!4194 (_1!7714 (get!4370 lt!460784)))))))

(assert (= (and d!396064 c!228100) b!1386013))

(assert (= (and d!396064 (not c!228100)) b!1386016))

(assert (= (or b!1386013 b!1386016) bm!92748))

(assert (= (and d!396064 (not res!625355)) b!1386012))

(assert (= (and b!1386012 res!625349) b!1386017))

(assert (= (and b!1386017 res!625350) b!1386014))

(assert (= (and b!1386014 res!625352) b!1386015))

(assert (= (and b!1386015 res!625351) b!1386018))

(assert (= (and b!1386018 res!625353) b!1386019))

(assert (= (and b!1386019 res!625354) b!1386020))

(declare-fun m!1559719 () Bool)

(assert (=> b!1386014 m!1559719))

(declare-fun m!1559721 () Bool)

(assert (=> b!1386014 m!1559721))

(assert (=> b!1386014 m!1558363))

(assert (=> b!1386018 m!1559719))

(declare-fun m!1559723 () Bool)

(assert (=> b!1386018 m!1559723))

(assert (=> b!1386018 m!1559723))

(declare-fun m!1559725 () Bool)

(assert (=> b!1386018 m!1559725))

(assert (=> b!1386017 m!1559719))

(declare-fun m!1559727 () Bool)

(assert (=> b!1386017 m!1559727))

(assert (=> b!1386017 m!1559727))

(declare-fun m!1559729 () Bool)

(assert (=> b!1386017 m!1559729))

(declare-fun m!1559731 () Bool)

(assert (=> bm!92748 m!1559731))

(declare-fun m!1559733 () Bool)

(assert (=> b!1386016 m!1559733))

(declare-fun m!1559735 () Bool)

(assert (=> b!1386012 m!1559735))

(assert (=> b!1386019 m!1559719))

(assert (=> b!1386019 m!1559727))

(assert (=> b!1386019 m!1559727))

(assert (=> b!1386019 m!1559729))

(assert (=> b!1386019 m!1559729))

(declare-fun m!1559737 () Bool)

(assert (=> b!1386019 m!1559737))

(declare-fun m!1559739 () Bool)

(assert (=> d!396064 m!1559739))

(assert (=> d!396064 m!1558383))

(assert (=> d!396064 m!1558385))

(assert (=> d!396064 m!1559657))

(assert (=> b!1386020 m!1559719))

(declare-fun m!1559741 () Bool)

(assert (=> b!1386020 m!1559741))

(assert (=> b!1386015 m!1559719))

(assert (=> b!1386015 m!1559727))

(assert (=> b!1386015 m!1559727))

(assert (=> b!1386015 m!1559729))

(assert (=> b!1386015 m!1559729))

(declare-fun m!1559743 () Bool)

(assert (=> b!1386015 m!1559743))

(assert (=> b!1385044 d!396064))

(declare-fun d!396066 () Bool)

(assert (=> d!396066 (= (isEmpty!8502 (list!5446 (_2!7713 lt!460302))) ((_ is Nil!14059) (list!5446 (_2!7713 lt!460302))))))

(assert (=> d!395560 d!396066))

(declare-fun d!396068 () Bool)

(assert (=> d!396068 (= (list!5446 (_2!7713 lt!460302)) (list!5450 (c!227730 (_2!7713 lt!460302))))))

(declare-fun bs!337004 () Bool)

(assert (= bs!337004 d!396068))

(declare-fun m!1559745 () Bool)

(assert (=> bs!337004 m!1559745))

(assert (=> d!395560 d!396068))

(declare-fun d!396070 () Bool)

(declare-fun lt!460787 () Bool)

(assert (=> d!396070 (= lt!460787 (isEmpty!8502 (list!5450 (c!227730 (_2!7713 lt!460302)))))))

(assert (=> d!396070 (= lt!460787 (= (size!11554 (c!227730 (_2!7713 lt!460302))) 0))))

(assert (=> d!396070 (= (isEmpty!8503 (c!227730 (_2!7713 lt!460302))) lt!460787)))

(declare-fun bs!337005 () Bool)

(assert (= bs!337005 d!396070))

(assert (=> bs!337005 m!1559745))

(assert (=> bs!337005 m!1559745))

(declare-fun m!1559747 () Bool)

(assert (=> bs!337005 m!1559747))

(declare-fun m!1559749 () Bool)

(assert (=> bs!337005 m!1559749))

(assert (=> d!395560 d!396070))

(declare-fun d!396072 () Bool)

(assert (=> d!396072 (= (isEmpty!8502 lt!460287) ((_ is Nil!14059) lt!460287))))

(assert (=> d!395546 d!396072))

(declare-fun d!396074 () Bool)

(declare-fun lt!460790 () Int)

(assert (=> d!396074 (>= lt!460790 0)))

(declare-fun e!885482 () Int)

(assert (=> d!396074 (= lt!460790 e!885482)))

(declare-fun c!228103 () Bool)

(assert (=> d!396074 (= c!228103 ((_ is Nil!14059) (_2!7715 lt!460545)))))

(assert (=> d!396074 (= (size!11552 (_2!7715 lt!460545)) lt!460790)))

(declare-fun b!1386025 () Bool)

(assert (=> b!1386025 (= e!885482 0)))

(declare-fun b!1386026 () Bool)

(assert (=> b!1386026 (= e!885482 (+ 1 (size!11552 (t!122150 (_2!7715 lt!460545)))))))

(assert (= (and d!396074 c!228103) b!1386025))

(assert (= (and d!396074 (not c!228103)) b!1386026))

(declare-fun m!1559751 () Bool)

(assert (=> b!1386026 m!1559751))

(assert (=> b!1385152 d!396074))

(declare-fun d!396076 () Bool)

(declare-fun lt!460791 () Int)

(assert (=> d!396076 (>= lt!460791 0)))

(declare-fun e!885483 () Int)

(assert (=> d!396076 (= lt!460791 e!885483)))

(declare-fun c!228104 () Bool)

(assert (=> d!396076 (= c!228104 ((_ is Nil!14059) (list!5446 lt!460296)))))

(assert (=> d!396076 (= (size!11552 (list!5446 lt!460296)) lt!460791)))

(declare-fun b!1386027 () Bool)

(assert (=> b!1386027 (= e!885483 0)))

(declare-fun b!1386028 () Bool)

(assert (=> b!1386028 (= e!885483 (+ 1 (size!11552 (t!122150 (list!5446 lt!460296)))))))

(assert (= (and d!396076 c!228104) b!1386027))

(assert (= (and d!396076 (not c!228104)) b!1386028))

(declare-fun m!1559753 () Bool)

(assert (=> b!1386028 m!1559753))

(assert (=> b!1385152 d!396076))

(declare-fun b!1386029 () Bool)

(declare-fun e!885484 () Bool)

(declare-fun lt!460792 () tuple2!13658)

(assert (=> b!1386029 (= e!885484 (not (isEmpty!8506 (_1!7715 lt!460792))))))

(declare-fun b!1386030 () Bool)

(declare-fun e!885486 () tuple2!13658)

(declare-fun lt!460794 () Option!2694)

(declare-fun lt!460793 () tuple2!13658)

(assert (=> b!1386030 (= e!885486 (tuple2!13659 (Cons!14061 (_1!7714 (v!21547 lt!460794)) (_1!7715 lt!460793)) (_2!7715 lt!460793)))))

(assert (=> b!1386030 (= lt!460793 (lexList!644 thiss!19762 rules!2550 (_2!7714 (v!21547 lt!460794))))))

(declare-fun b!1386031 () Bool)

(assert (=> b!1386031 (= e!885486 (tuple2!13659 Nil!14061 (_2!7714 (v!21547 lt!460547))))))

(declare-fun b!1386032 () Bool)

(declare-fun e!885485 () Bool)

(assert (=> b!1386032 (= e!885485 e!885484)))

(declare-fun res!625356 () Bool)

(assert (=> b!1386032 (= res!625356 (< (size!11552 (_2!7715 lt!460792)) (size!11552 (_2!7714 (v!21547 lt!460547)))))))

(assert (=> b!1386032 (=> (not res!625356) (not e!885484))))

(declare-fun d!396078 () Bool)

(assert (=> d!396078 e!885485))

(declare-fun c!228105 () Bool)

(assert (=> d!396078 (= c!228105 (> (size!11553 (_1!7715 lt!460792)) 0))))

(assert (=> d!396078 (= lt!460792 e!885486)))

(declare-fun c!228106 () Bool)

(assert (=> d!396078 (= c!228106 ((_ is Some!2693) lt!460794))))

(assert (=> d!396078 (= lt!460794 (maxPrefix!1104 thiss!19762 rules!2550 (_2!7714 (v!21547 lt!460547))))))

(assert (=> d!396078 (= (lexList!644 thiss!19762 rules!2550 (_2!7714 (v!21547 lt!460547))) lt!460792)))

(declare-fun b!1386033 () Bool)

(assert (=> b!1386033 (= e!885485 (= (_2!7715 lt!460792) (_2!7714 (v!21547 lt!460547))))))

(assert (= (and d!396078 c!228106) b!1386030))

(assert (= (and d!396078 (not c!228106)) b!1386031))

(assert (= (and d!396078 c!228105) b!1386032))

(assert (= (and d!396078 (not c!228105)) b!1386033))

(assert (= (and b!1386032 res!625356) b!1386029))

(declare-fun m!1559755 () Bool)

(assert (=> b!1386029 m!1559755))

(declare-fun m!1559757 () Bool)

(assert (=> b!1386030 m!1559757))

(declare-fun m!1559759 () Bool)

(assert (=> b!1386032 m!1559759))

(declare-fun m!1559761 () Bool)

(assert (=> b!1386032 m!1559761))

(declare-fun m!1559763 () Bool)

(assert (=> d!396078 m!1559763))

(declare-fun m!1559765 () Bool)

(assert (=> d!396078 m!1559765))

(assert (=> b!1385150 d!396078))

(declare-fun d!396080 () Bool)

(assert (=> d!396080 (= (nullable!1213 (regex!2435 (rule!4194 t2!34))) (nullableFct!288 (regex!2435 (rule!4194 t2!34))))))

(declare-fun bs!337006 () Bool)

(assert (= bs!337006 d!396080))

(declare-fun m!1559767 () Bool)

(assert (=> bs!337006 m!1559767))

(assert (=> b!1385129 d!396080))

(declare-fun d!396082 () Bool)

(declare-fun lt!460797 () C!7788)

(assert (=> d!396082 (contains!2683 (list!5446 lt!460301) lt!460797)))

(declare-fun e!885492 () C!7788)

(assert (=> d!396082 (= lt!460797 e!885492)))

(declare-fun c!228109 () Bool)

(assert (=> d!396082 (= c!228109 (= 0 0))))

(declare-fun e!885491 () Bool)

(assert (=> d!396082 e!885491))

(declare-fun res!625359 () Bool)

(assert (=> d!396082 (=> (not res!625359) (not e!885491))))

(assert (=> d!396082 (= res!625359 (<= 0 0))))

(assert (=> d!396082 (= (apply!3515 (list!5446 lt!460301) 0) lt!460797)))

(declare-fun b!1386040 () Bool)

(assert (=> b!1386040 (= e!885491 (< 0 (size!11552 (list!5446 lt!460301))))))

(declare-fun b!1386041 () Bool)

(assert (=> b!1386041 (= e!885492 (head!2521 (list!5446 lt!460301)))))

(declare-fun b!1386042 () Bool)

(assert (=> b!1386042 (= e!885492 (apply!3515 (tail!2010 (list!5446 lt!460301)) (- 0 1)))))

(assert (= (and d!396082 res!625359) b!1386040))

(assert (= (and d!396082 c!228109) b!1386041))

(assert (= (and d!396082 (not c!228109)) b!1386042))

(assert (=> d!396082 m!1557589))

(declare-fun m!1559769 () Bool)

(assert (=> d!396082 m!1559769))

(assert (=> b!1386040 m!1557589))

(assert (=> b!1386040 m!1558663))

(assert (=> b!1386041 m!1557589))

(declare-fun m!1559771 () Bool)

(assert (=> b!1386041 m!1559771))

(assert (=> b!1386042 m!1557589))

(declare-fun m!1559773 () Bool)

(assert (=> b!1386042 m!1559773))

(assert (=> b!1386042 m!1559773))

(declare-fun m!1559775 () Bool)

(assert (=> b!1386042 m!1559775))

(assert (=> d!395556 d!396082))

(assert (=> d!395556 d!395538))

(declare-fun b!1386065 () Bool)

(declare-fun e!885508 () C!7788)

(declare-fun e!885505 () C!7788)

(assert (=> b!1386065 (= e!885508 e!885505)))

(declare-fun lt!460832 () Bool)

(declare-fun appendIndex!176 (List!14125 List!14125 Int) Bool)

(assert (=> b!1386065 (= lt!460832 (appendIndex!176 (list!5450 (left!12017 (c!227730 lt!460301))) (list!5450 (right!12347 (c!227730 lt!460301))) 0))))

(declare-fun c!228120 () Bool)

(assert (=> b!1386065 (= c!228120 (< 0 (size!11554 (left!12017 (c!227730 lt!460301)))))))

(declare-fun b!1386066 () Bool)

(declare-fun e!885506 () Int)

(assert (=> b!1386066 (= e!885506 0)))

(declare-fun b!1386067 () Bool)

(declare-fun e!885507 () Bool)

(assert (=> b!1386067 (= e!885507 (< 0 (size!11554 (c!227730 lt!460301))))))

(declare-fun b!1386068 () Bool)

(declare-fun apply!3523 (IArray!9265 Int) C!7788)

(assert (=> b!1386068 (= e!885508 (apply!3523 (xs!7357 (c!227730 lt!460301)) 0))))

(declare-fun b!1386069 () Bool)

(assert (=> b!1386069 (= e!885506 (- 0 (size!11554 (left!12017 (c!227730 lt!460301)))))))

(declare-fun bm!92751 () Bool)

(declare-fun c!228122 () Bool)

(assert (=> bm!92751 (= c!228122 c!228120)))

(declare-fun call!92756 () C!7788)

(assert (=> bm!92751 (= call!92756 (apply!3516 (ite c!228120 (left!12017 (c!227730 lt!460301)) (right!12347 (c!227730 lt!460301))) e!885506))))

(declare-fun b!1386070 () Bool)

(assert (=> b!1386070 (= e!885505 call!92756)))

(declare-fun d!396084 () Bool)

(declare-fun lt!460833 () C!7788)

(assert (=> d!396084 (= lt!460833 (apply!3515 (list!5450 (c!227730 lt!460301)) 0))))

(assert (=> d!396084 (= lt!460833 e!885508)))

(declare-fun c!228121 () Bool)

(assert (=> d!396084 (= c!228121 ((_ is Leaf!7044) (c!227730 lt!460301)))))

(assert (=> d!396084 e!885507))

(declare-fun res!625362 () Bool)

(assert (=> d!396084 (=> (not res!625362) (not e!885507))))

(assert (=> d!396084 (= res!625362 (<= 0 0))))

(assert (=> d!396084 (= (apply!3516 (c!227730 lt!460301) 0) lt!460833)))

(declare-fun b!1386071 () Bool)

(assert (=> b!1386071 (= e!885505 call!92756)))

(assert (= (and d!396084 res!625362) b!1386067))

(assert (= (and d!396084 c!228121) b!1386068))

(assert (= (and d!396084 (not c!228121)) b!1386065))

(assert (= (and b!1386065 c!228120) b!1386071))

(assert (= (and b!1386065 (not c!228120)) b!1386070))

(assert (= (or b!1386071 b!1386070) bm!92751))

(assert (= (and bm!92751 c!228122) b!1386066))

(assert (= (and bm!92751 (not c!228122)) b!1386069))

(declare-fun m!1559777 () Bool)

(assert (=> b!1386065 m!1559777))

(declare-fun m!1559779 () Bool)

(assert (=> b!1386065 m!1559779))

(assert (=> b!1386065 m!1559777))

(assert (=> b!1386065 m!1559779))

(declare-fun m!1559781 () Bool)

(assert (=> b!1386065 m!1559781))

(declare-fun m!1559783 () Bool)

(assert (=> b!1386065 m!1559783))

(assert (=> b!1386067 m!1558665))

(assert (=> d!396084 m!1558393))

(assert (=> d!396084 m!1558393))

(declare-fun m!1559785 () Bool)

(assert (=> d!396084 m!1559785))

(assert (=> b!1386069 m!1559783))

(declare-fun m!1559787 () Bool)

(assert (=> bm!92751 m!1559787))

(declare-fun m!1559789 () Bool)

(assert (=> b!1386068 m!1559789))

(assert (=> d!395556 d!396084))

(declare-fun d!396086 () Bool)

(declare-fun lt!460874 () Int)

(assert (=> d!396086 (= lt!460874 (size!11553 (list!5445 (_1!7713 lt!460396))))))

(declare-fun size!11556 (Conc!4631) Int)

(assert (=> d!396086 (= lt!460874 (size!11556 (c!227732 (_1!7713 lt!460396))))))

(assert (=> d!396086 (= (size!11549 (_1!7713 lt!460396)) lt!460874)))

(declare-fun bs!337007 () Bool)

(assert (= bs!337007 d!396086))

(assert (=> bs!337007 m!1557933))

(assert (=> bs!337007 m!1557933))

(declare-fun m!1559791 () Bool)

(assert (=> bs!337007 m!1559791))

(declare-fun m!1559793 () Bool)

(assert (=> bs!337007 m!1559793))

(assert (=> d!395378 d!396086))

(declare-fun e!885669 () Bool)

(declare-fun lt!461131 () tuple2!13654)

(declare-fun b!1386374 () Bool)

(declare-fun lexRec!284 (LexerInterface!2130 List!14126 BalanceConc!9200) tuple2!13654)

(assert (=> b!1386374 (= e!885669 (= (list!5446 (_2!7713 lt!461131)) (list!5446 (_2!7713 (lexRec!284 thiss!19762 rules!2550 lt!460288)))))))

(declare-datatypes ((tuple2!13662 0))(
  ( (tuple2!13663 (_1!7717 Token!4532) (_2!7717 BalanceConc!9200)) )
))
(declare-datatypes ((Option!2695 0))(
  ( (None!2694) (Some!2694 (v!21561 tuple2!13662)) )
))
(declare-fun lt!461118 () Option!2695)

(declare-fun lt!461135 () BalanceConc!9200)

(declare-fun e!885668 () tuple2!13654)

(declare-fun b!1386375 () Bool)

(declare-fun append!409 (BalanceConc!9202 Token!4532) BalanceConc!9202)

(assert (=> b!1386375 (= e!885668 (lexTailRecV2!425 thiss!19762 rules!2550 lt!460288 lt!461135 (_2!7717 (v!21561 lt!461118)) (append!409 (BalanceConc!9203 Empty!4631) (_1!7717 (v!21561 lt!461118)))))))

(declare-fun lt!461142 () tuple2!13654)

(assert (=> b!1386375 (= lt!461142 (lexRec!284 thiss!19762 rules!2550 (_2!7717 (v!21561 lt!461118))))))

(declare-fun lt!461143 () List!14125)

(assert (=> b!1386375 (= lt!461143 (list!5446 (BalanceConc!9201 Empty!4630)))))

(declare-fun lt!461124 () List!14125)

(assert (=> b!1386375 (= lt!461124 (list!5446 (charsOf!1407 (_1!7717 (v!21561 lt!461118)))))))

(declare-fun lt!461120 () List!14125)

(assert (=> b!1386375 (= lt!461120 (list!5446 (_2!7717 (v!21561 lt!461118))))))

(declare-fun lt!461139 () Unit!20305)

(declare-fun lemmaConcatAssociativity!867 (List!14125 List!14125 List!14125) Unit!20305)

(assert (=> b!1386375 (= lt!461139 (lemmaConcatAssociativity!867 lt!461143 lt!461124 lt!461120))))

(assert (=> b!1386375 (= (++!3646 (++!3646 lt!461143 lt!461124) lt!461120) (++!3646 lt!461143 (++!3646 lt!461124 lt!461120)))))

(declare-fun lt!461110 () Unit!20305)

(assert (=> b!1386375 (= lt!461110 lt!461139)))

(declare-fun lt!461112 () Option!2695)

(declare-fun maxPrefixZipperSequence!557 (LexerInterface!2130 List!14126 BalanceConc!9200) Option!2695)

(assert (=> b!1386375 (= lt!461112 (maxPrefixZipperSequence!557 thiss!19762 rules!2550 lt!460288))))

(declare-fun c!228190 () Bool)

(assert (=> b!1386375 (= c!228190 ((_ is Some!2694) lt!461112))))

(declare-fun e!885667 () tuple2!13654)

(assert (=> b!1386375 (= (lexRec!284 thiss!19762 rules!2550 lt!460288) e!885667)))

(declare-fun lt!461130 () Unit!20305)

(declare-fun Unit!20314 () Unit!20305)

(assert (=> b!1386375 (= lt!461130 Unit!20314)))

(declare-fun lt!461121 () List!14127)

(assert (=> b!1386375 (= lt!461121 (list!5445 (BalanceConc!9203 Empty!4631)))))

(declare-fun lt!461137 () List!14127)

(assert (=> b!1386375 (= lt!461137 (Cons!14061 (_1!7717 (v!21561 lt!461118)) Nil!14061))))

(declare-fun lt!461138 () List!14127)

(assert (=> b!1386375 (= lt!461138 (list!5445 (_1!7713 lt!461142)))))

(declare-fun lt!461113 () Unit!20305)

(declare-fun lemmaConcatAssociativity!868 (List!14127 List!14127 List!14127) Unit!20305)

(assert (=> b!1386375 (= lt!461113 (lemmaConcatAssociativity!868 lt!461121 lt!461137 lt!461138))))

(declare-fun ++!3650 (List!14127 List!14127) List!14127)

(assert (=> b!1386375 (= (++!3650 (++!3650 lt!461121 lt!461137) lt!461138) (++!3650 lt!461121 (++!3650 lt!461137 lt!461138)))))

(declare-fun lt!461126 () Unit!20305)

(assert (=> b!1386375 (= lt!461126 lt!461113)))

(declare-fun lt!461117 () List!14125)

(assert (=> b!1386375 (= lt!461117 (++!3646 (list!5446 (BalanceConc!9201 Empty!4630)) (list!5446 (charsOf!1407 (_1!7717 (v!21561 lt!461118))))))))

(declare-fun lt!461127 () List!14125)

(assert (=> b!1386375 (= lt!461127 (list!5446 (_2!7717 (v!21561 lt!461118))))))

(declare-fun lt!461132 () List!14127)

(assert (=> b!1386375 (= lt!461132 (list!5445 (append!409 (BalanceConc!9203 Empty!4631) (_1!7717 (v!21561 lt!461118)))))))

(declare-fun lt!461134 () Unit!20305)

(declare-fun lemmaLexThenLexPrefix!199 (LexerInterface!2130 List!14126 List!14125 List!14125 List!14127 List!14127 List!14125) Unit!20305)

(assert (=> b!1386375 (= lt!461134 (lemmaLexThenLexPrefix!199 thiss!19762 rules!2550 lt!461117 lt!461127 lt!461132 (list!5445 (_1!7713 lt!461142)) (list!5446 (_2!7713 lt!461142))))))

(assert (=> b!1386375 (= (lexList!644 thiss!19762 rules!2550 lt!461117) (tuple2!13659 lt!461132 Nil!14059))))

(declare-fun lt!461119 () Unit!20305)

(assert (=> b!1386375 (= lt!461119 lt!461134)))

(declare-fun lt!461136 () BalanceConc!9200)

(assert (=> b!1386375 (= lt!461136 (++!3647 (BalanceConc!9201 Empty!4630) (charsOf!1407 (_1!7717 (v!21561 lt!461118)))))))

(declare-fun lt!461123 () Option!2695)

(assert (=> b!1386375 (= lt!461123 (maxPrefixZipperSequence!557 thiss!19762 rules!2550 lt!461136))))

(declare-fun c!228191 () Bool)

(assert (=> b!1386375 (= c!228191 ((_ is Some!2694) lt!461123))))

(declare-fun e!885670 () tuple2!13654)

(assert (=> b!1386375 (= (lexRec!284 thiss!19762 rules!2550 (++!3647 (BalanceConc!9201 Empty!4630) (charsOf!1407 (_1!7717 (v!21561 lt!461118))))) e!885670)))

(declare-fun lt!461115 () Unit!20305)

(declare-fun Unit!20315 () Unit!20305)

(assert (=> b!1386375 (= lt!461115 Unit!20315)))

(assert (=> b!1386375 (= lt!461135 (++!3647 (BalanceConc!9201 Empty!4630) (charsOf!1407 (_1!7717 (v!21561 lt!461118)))))))

(declare-fun lt!461125 () List!14125)

(assert (=> b!1386375 (= lt!461125 (list!5446 lt!461135))))

(declare-fun lt!461133 () List!14125)

(assert (=> b!1386375 (= lt!461133 (list!5446 (_2!7717 (v!21561 lt!461118))))))

(declare-fun lt!461140 () Unit!20305)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!240 (List!14125 List!14125) Unit!20305)

(assert (=> b!1386375 (= lt!461140 (lemmaConcatTwoListThenFSndIsSuffix!240 lt!461125 lt!461133))))

(declare-fun isSuffix!262 (List!14125 List!14125) Bool)

(assert (=> b!1386375 (isSuffix!262 lt!461133 (++!3646 lt!461125 lt!461133))))

(declare-fun lt!461111 () Unit!20305)

(assert (=> b!1386375 (= lt!461111 lt!461140)))

(declare-fun b!1386376 () Bool)

(declare-fun lt!461128 () tuple2!13654)

(assert (=> b!1386376 (= lt!461128 (lexRec!284 thiss!19762 rules!2550 (_2!7717 (v!21561 lt!461123))))))

(declare-fun prepend!373 (BalanceConc!9202 Token!4532) BalanceConc!9202)

(assert (=> b!1386376 (= e!885670 (tuple2!13655 (prepend!373 (_1!7713 lt!461128) (_1!7717 (v!21561 lt!461123))) (_2!7713 lt!461128)))))

(declare-fun b!1386377 () Bool)

(assert (=> b!1386377 (= e!885670 (tuple2!13655 (BalanceConc!9203 Empty!4631) lt!461136))))

(declare-fun d!396088 () Bool)

(assert (=> d!396088 e!885669))

(declare-fun res!625463 () Bool)

(assert (=> d!396088 (=> (not res!625463) (not e!885669))))

(assert (=> d!396088 (= res!625463 (= (list!5445 (_1!7713 lt!461131)) (list!5445 (_1!7713 (lexRec!284 thiss!19762 rules!2550 lt!460288)))))))

(assert (=> d!396088 (= lt!461131 e!885668)))

(declare-fun c!228192 () Bool)

(assert (=> d!396088 (= c!228192 ((_ is Some!2694) lt!461118))))

(declare-fun maxPrefixZipperSequenceV2!229 (LexerInterface!2130 List!14126 BalanceConc!9200 BalanceConc!9200) Option!2695)

(assert (=> d!396088 (= lt!461118 (maxPrefixZipperSequenceV2!229 thiss!19762 rules!2550 lt!460288 lt!460288))))

(declare-fun lt!461116 () Unit!20305)

(declare-fun lt!461114 () Unit!20305)

(assert (=> d!396088 (= lt!461116 lt!461114)))

(declare-fun lt!461141 () List!14125)

(declare-fun lt!461129 () List!14125)

(assert (=> d!396088 (isSuffix!262 lt!461141 (++!3646 lt!461129 lt!461141))))

(assert (=> d!396088 (= lt!461114 (lemmaConcatTwoListThenFSndIsSuffix!240 lt!461129 lt!461141))))

(assert (=> d!396088 (= lt!461141 (list!5446 lt!460288))))

(assert (=> d!396088 (= lt!461129 (list!5446 (BalanceConc!9201 Empty!4630)))))

(assert (=> d!396088 (= (lexTailRecV2!425 thiss!19762 rules!2550 lt!460288 (BalanceConc!9201 Empty!4630) lt!460288 (BalanceConc!9203 Empty!4631)) lt!461131)))

(declare-fun b!1386378 () Bool)

(assert (=> b!1386378 (= e!885668 (tuple2!13655 (BalanceConc!9203 Empty!4631) lt!460288))))

(declare-fun lt!461122 () tuple2!13654)

(declare-fun b!1386379 () Bool)

(assert (=> b!1386379 (= lt!461122 (lexRec!284 thiss!19762 rules!2550 (_2!7717 (v!21561 lt!461112))))))

(assert (=> b!1386379 (= e!885667 (tuple2!13655 (prepend!373 (_1!7713 lt!461122) (_1!7717 (v!21561 lt!461112))) (_2!7713 lt!461122)))))

(declare-fun b!1386380 () Bool)

(assert (=> b!1386380 (= e!885667 (tuple2!13655 (BalanceConc!9203 Empty!4631) lt!460288))))

(assert (= (and d!396088 c!228192) b!1386375))

(assert (= (and d!396088 (not c!228192)) b!1386378))

(assert (= (and b!1386375 c!228190) b!1386379))

(assert (= (and b!1386375 (not c!228190)) b!1386380))

(assert (= (and b!1386375 c!228191) b!1386376))

(assert (= (and b!1386375 (not c!228191)) b!1386377))

(assert (= (and d!396088 res!625463) b!1386374))

(assert (=> b!1386375 m!1559675))

(declare-fun m!1560403 () Bool)

(assert (=> b!1386375 m!1560403))

(declare-fun m!1560405 () Bool)

(assert (=> b!1386375 m!1560405))

(declare-fun m!1560411 () Bool)

(assert (=> b!1386375 m!1560411))

(declare-fun m!1560413 () Bool)

(assert (=> b!1386375 m!1560413))

(declare-fun m!1560415 () Bool)

(assert (=> b!1386375 m!1560415))

(declare-fun m!1560417 () Bool)

(assert (=> b!1386375 m!1560417))

(declare-fun m!1560419 () Bool)

(assert (=> b!1386375 m!1560419))

(assert (=> b!1386375 m!1559675))

(declare-fun m!1560421 () Bool)

(assert (=> b!1386375 m!1560421))

(declare-fun m!1560425 () Bool)

(assert (=> b!1386375 m!1560425))

(declare-fun m!1560427 () Bool)

(assert (=> b!1386375 m!1560427))

(declare-fun m!1560429 () Bool)

(assert (=> b!1386375 m!1560429))

(declare-fun m!1560431 () Bool)

(assert (=> b!1386375 m!1560431))

(declare-fun m!1560433 () Bool)

(assert (=> b!1386375 m!1560433))

(assert (=> b!1386375 m!1560419))

(declare-fun m!1560435 () Bool)

(assert (=> b!1386375 m!1560435))

(declare-fun m!1560437 () Bool)

(assert (=> b!1386375 m!1560437))

(declare-fun m!1560439 () Bool)

(assert (=> b!1386375 m!1560439))

(assert (=> b!1386375 m!1560437))

(declare-fun m!1560445 () Bool)

(assert (=> b!1386375 m!1560445))

(declare-fun m!1560447 () Bool)

(assert (=> b!1386375 m!1560447))

(declare-fun m!1560449 () Bool)

(assert (=> b!1386375 m!1560449))

(declare-fun m!1560451 () Bool)

(assert (=> b!1386375 m!1560451))

(declare-fun m!1560453 () Bool)

(assert (=> b!1386375 m!1560453))

(declare-fun m!1560455 () Bool)

(assert (=> b!1386375 m!1560455))

(assert (=> b!1386375 m!1560425))

(declare-fun m!1560459 () Bool)

(assert (=> b!1386375 m!1560459))

(assert (=> b!1386375 m!1560427))

(declare-fun m!1560463 () Bool)

(assert (=> b!1386375 m!1560463))

(declare-fun m!1560465 () Bool)

(assert (=> b!1386375 m!1560465))

(declare-fun m!1560467 () Bool)

(assert (=> b!1386375 m!1560467))

(assert (=> b!1386375 m!1560431))

(declare-fun m!1560469 () Bool)

(assert (=> b!1386375 m!1560469))

(declare-fun m!1560471 () Bool)

(assert (=> b!1386375 m!1560471))

(assert (=> b!1386375 m!1560403))

(assert (=> b!1386375 m!1560455))

(declare-fun m!1560473 () Bool)

(assert (=> b!1386375 m!1560473))

(assert (=> b!1386375 m!1560449))

(assert (=> b!1386375 m!1560445))

(assert (=> b!1386375 m!1560431))

(declare-fun m!1560475 () Bool)

(assert (=> b!1386375 m!1560475))

(assert (=> b!1386375 m!1560471))

(assert (=> b!1386375 m!1560471))

(assert (=> b!1386375 m!1560411))

(declare-fun m!1560477 () Bool)

(assert (=> b!1386375 m!1560477))

(declare-fun m!1560479 () Bool)

(assert (=> b!1386375 m!1560479))

(declare-fun m!1560481 () Bool)

(assert (=> b!1386376 m!1560481))

(declare-fun m!1560483 () Bool)

(assert (=> b!1386376 m!1560483))

(declare-fun m!1560485 () Bool)

(assert (=> b!1386374 m!1560485))

(assert (=> b!1386374 m!1560433))

(declare-fun m!1560487 () Bool)

(assert (=> b!1386374 m!1560487))

(declare-fun m!1560489 () Bool)

(assert (=> b!1386379 m!1560489))

(declare-fun m!1560491 () Bool)

(assert (=> b!1386379 m!1560491))

(declare-fun m!1560493 () Bool)

(assert (=> d!396088 m!1560493))

(declare-fun m!1560495 () Bool)

(assert (=> d!396088 m!1560495))

(declare-fun m!1560497 () Bool)

(assert (=> d!396088 m!1560497))

(declare-fun m!1560499 () Bool)

(assert (=> d!396088 m!1560499))

(declare-fun m!1560501 () Bool)

(assert (=> d!396088 m!1560501))

(assert (=> d!396088 m!1560495))

(assert (=> d!396088 m!1559675))

(assert (=> d!396088 m!1560433))

(declare-fun m!1560503 () Bool)

(assert (=> d!396088 m!1560503))

(assert (=> d!396088 m!1557633))

(assert (=> d!395378 d!396088))

(declare-fun d!396250 () Bool)

(declare-fun lt!461144 () List!14125)

(assert (=> d!396250 (= (++!3646 (t!122150 lt!460287) lt!461144) (tail!2010 lt!460300))))

(declare-fun e!885676 () List!14125)

(assert (=> d!396250 (= lt!461144 e!885676)))

(declare-fun c!228193 () Bool)

(assert (=> d!396250 (= c!228193 ((_ is Cons!14059) (t!122150 lt!460287)))))

(assert (=> d!396250 (>= (size!11552 (tail!2010 lt!460300)) (size!11552 (t!122150 lt!460287)))))

(assert (=> d!396250 (= (getSuffix!595 (tail!2010 lt!460300) (t!122150 lt!460287)) lt!461144)))

(declare-fun b!1386392 () Bool)

(assert (=> b!1386392 (= e!885676 (getSuffix!595 (tail!2010 (tail!2010 lt!460300)) (t!122150 (t!122150 lt!460287))))))

(declare-fun b!1386393 () Bool)

(assert (=> b!1386393 (= e!885676 (tail!2010 lt!460300))))

(assert (= (and d!396250 c!228193) b!1386392))

(assert (= (and d!396250 (not c!228193)) b!1386393))

(declare-fun m!1560505 () Bool)

(assert (=> d!396250 m!1560505))

(assert (=> d!396250 m!1557805))

(declare-fun m!1560507 () Bool)

(assert (=> d!396250 m!1560507))

(declare-fun m!1560509 () Bool)

(assert (=> d!396250 m!1560509))

(assert (=> b!1386392 m!1557805))

(assert (=> b!1386392 m!1559587))

(assert (=> b!1386392 m!1559587))

(declare-fun m!1560511 () Bool)

(assert (=> b!1386392 m!1560511))

(assert (=> b!1385200 d!396250))

(assert (=> b!1385200 d!396020))

(declare-fun d!396252 () Bool)

(declare-fun charsToBigInt!0 (List!14124 Int) Int)

(assert (=> d!396252 (= (inv!15 (value!79030 t1!34)) (= (charsToBigInt!0 (text!18124 (value!79030 t1!34)) 0) (value!79025 (value!79030 t1!34))))))

(declare-fun bs!337049 () Bool)

(assert (= bs!337049 d!396252))

(declare-fun m!1560513 () Bool)

(assert (=> bs!337049 m!1560513))

(assert (=> b!1384736 d!396252))

(declare-fun d!396254 () Bool)

(declare-fun c!228196 () Bool)

(assert (=> d!396254 (= c!228196 ((_ is Nil!14059) lt!460555))))

(declare-fun e!885679 () (InoxSet C!7788))

(assert (=> d!396254 (= (content!2059 lt!460555) e!885679)))

(declare-fun b!1386398 () Bool)

(assert (=> b!1386398 (= e!885679 ((as const (Array C!7788 Bool)) false))))

(declare-fun b!1386399 () Bool)

(assert (=> b!1386399 (= e!885679 ((_ map or) (store ((as const (Array C!7788 Bool)) false) (h!19460 lt!460555) true) (content!2059 (t!122150 lt!460555))))))

(assert (= (and d!396254 c!228196) b!1386398))

(assert (= (and d!396254 (not c!228196)) b!1386399))

(declare-fun m!1560515 () Bool)

(assert (=> b!1386399 m!1560515))

(declare-fun m!1560517 () Bool)

(assert (=> b!1386399 m!1560517))

(assert (=> d!395604 d!396254))

(declare-fun d!396256 () Bool)

(declare-fun c!228197 () Bool)

(assert (=> d!396256 (= c!228197 ((_ is Nil!14059) lt!460287))))

(declare-fun e!885680 () (InoxSet C!7788))

(assert (=> d!396256 (= (content!2059 lt!460287) e!885680)))

(declare-fun b!1386400 () Bool)

(assert (=> b!1386400 (= e!885680 ((as const (Array C!7788 Bool)) false))))

(declare-fun b!1386401 () Bool)

(assert (=> b!1386401 (= e!885680 ((_ map or) (store ((as const (Array C!7788 Bool)) false) (h!19460 lt!460287) true) (content!2059 (t!122150 lt!460287))))))

(assert (= (and d!396256 c!228197) b!1386400))

(assert (= (and d!396256 (not c!228197)) b!1386401))

(declare-fun m!1560519 () Bool)

(assert (=> b!1386401 m!1560519))

(declare-fun m!1560521 () Bool)

(assert (=> b!1386401 m!1560521))

(assert (=> d!395604 d!396256))

(declare-fun d!396258 () Bool)

(declare-fun c!228198 () Bool)

(assert (=> d!396258 (= c!228198 ((_ is Nil!14059) (getSuffix!595 lt!460300 lt!460287)))))

(declare-fun e!885681 () (InoxSet C!7788))

(assert (=> d!396258 (= (content!2059 (getSuffix!595 lt!460300 lt!460287)) e!885681)))

(declare-fun b!1386402 () Bool)

(assert (=> b!1386402 (= e!885681 ((as const (Array C!7788 Bool)) false))))

(declare-fun b!1386403 () Bool)

(assert (=> b!1386403 (= e!885681 ((_ map or) (store ((as const (Array C!7788 Bool)) false) (h!19460 (getSuffix!595 lt!460300 lt!460287)) true) (content!2059 (t!122150 (getSuffix!595 lt!460300 lt!460287)))))))

(assert (= (and d!396258 c!228198) b!1386402))

(assert (= (and d!396258 (not c!228198)) b!1386403))

(declare-fun m!1560523 () Bool)

(assert (=> b!1386403 m!1560523))

(declare-fun m!1560525 () Bool)

(assert (=> b!1386403 m!1560525))

(assert (=> d!395604 d!396258))

(declare-fun b!1386416 () Bool)

(declare-fun e!885687 () Bool)

(declare-fun e!885686 () Bool)

(assert (=> b!1386416 (= e!885687 e!885686)))

(declare-fun res!625484 () Bool)

(assert (=> b!1386416 (=> (not res!625484) (not e!885686))))

(declare-fun height!676 (Conc!4631) Int)

(assert (=> b!1386416 (= res!625484 (<= (- 1) (- (height!676 (left!12018 (c!227732 lt!460402))) (height!676 (right!12348 (c!227732 lt!460402))))))))

(declare-fun b!1386417 () Bool)

(declare-fun res!625480 () Bool)

(assert (=> b!1386417 (=> (not res!625480) (not e!885686))))

(assert (=> b!1386417 (= res!625480 (<= (- (height!676 (left!12018 (c!227732 lt!460402))) (height!676 (right!12348 (c!227732 lt!460402)))) 1))))

(declare-fun b!1386418 () Bool)

(declare-fun res!625479 () Bool)

(assert (=> b!1386418 (=> (not res!625479) (not e!885686))))

(assert (=> b!1386418 (= res!625479 (isBalanced!1366 (left!12018 (c!227732 lt!460402))))))

(declare-fun b!1386419 () Bool)

(declare-fun res!625482 () Bool)

(assert (=> b!1386419 (=> (not res!625482) (not e!885686))))

(declare-fun isEmpty!8510 (Conc!4631) Bool)

(assert (=> b!1386419 (= res!625482 (not (isEmpty!8510 (left!12018 (c!227732 lt!460402)))))))

(declare-fun b!1386420 () Bool)

(declare-fun res!625481 () Bool)

(assert (=> b!1386420 (=> (not res!625481) (not e!885686))))

(assert (=> b!1386420 (= res!625481 (isBalanced!1366 (right!12348 (c!227732 lt!460402))))))

(declare-fun b!1386421 () Bool)

(assert (=> b!1386421 (= e!885686 (not (isEmpty!8510 (right!12348 (c!227732 lt!460402)))))))

(declare-fun d!396260 () Bool)

(declare-fun res!625483 () Bool)

(assert (=> d!396260 (=> res!625483 e!885687)))

(assert (=> d!396260 (= res!625483 (not ((_ is Node!4631) (c!227732 lt!460402))))))

(assert (=> d!396260 (= (isBalanced!1366 (c!227732 lt!460402)) e!885687)))

(assert (= (and d!396260 (not res!625483)) b!1386416))

(assert (= (and b!1386416 res!625484) b!1386417))

(assert (= (and b!1386417 res!625480) b!1386418))

(assert (= (and b!1386418 res!625479) b!1386420))

(assert (= (and b!1386420 res!625481) b!1386419))

(assert (= (and b!1386419 res!625482) b!1386421))

(declare-fun m!1560527 () Bool)

(assert (=> b!1386420 m!1560527))

(declare-fun m!1560529 () Bool)

(assert (=> b!1386416 m!1560529))

(declare-fun m!1560531 () Bool)

(assert (=> b!1386416 m!1560531))

(assert (=> b!1386417 m!1560529))

(assert (=> b!1386417 m!1560531))

(declare-fun m!1560533 () Bool)

(assert (=> b!1386419 m!1560533))

(declare-fun m!1560535 () Bool)

(assert (=> b!1386421 m!1560535))

(declare-fun m!1560537 () Bool)

(assert (=> b!1386418 m!1560537))

(assert (=> b!1384723 d!396260))

(assert (=> d!395504 d!396256))

(declare-fun d!396262 () Bool)

(assert (=> d!396262 (= (isEmpty!8502 (tail!2010 lt!460300)) ((_ is Nil!14059) (tail!2010 lt!460300)))))

(assert (=> b!1384572 d!396262))

(assert (=> b!1384572 d!396020))

(declare-fun d!396264 () Bool)

(assert (=> d!396264 (= (head!2525 (map!3113 rules!2550 lambda!59594)) (h!19463 (map!3113 rules!2550 lambda!59594)))))

(assert (=> b!1385109 d!396264))

(declare-fun d!396266 () Bool)

(declare-fun lt!461147 () Token!4532)

(assert (=> d!396266 (= lt!461147 (apply!3522 (list!5445 (_1!7713 lt!460542)) 0))))

(declare-fun apply!3524 (Conc!4631 Int) Token!4532)

(assert (=> d!396266 (= lt!461147 (apply!3524 (c!227732 (_1!7713 lt!460542)) 0))))

(declare-fun e!885690 () Bool)

(assert (=> d!396266 e!885690))

(declare-fun res!625487 () Bool)

(assert (=> d!396266 (=> (not res!625487) (not e!885690))))

(assert (=> d!396266 (= res!625487 (<= 0 0))))

(assert (=> d!396266 (= (apply!3518 (_1!7713 lt!460542) 0) lt!461147)))

(declare-fun b!1386424 () Bool)

(assert (=> b!1386424 (= e!885690 (< 0 (size!11549 (_1!7713 lt!460542))))))

(assert (= (and d!396266 res!625487) b!1386424))

(declare-fun m!1560539 () Bool)

(assert (=> d!396266 m!1560539))

(assert (=> d!396266 m!1560539))

(declare-fun m!1560541 () Bool)

(assert (=> d!396266 m!1560541))

(declare-fun m!1560543 () Bool)

(assert (=> d!396266 m!1560543))

(assert (=> b!1386424 m!1558513))

(assert (=> b!1385116 d!396266))

(declare-fun d!396268 () Bool)

(assert (=> d!396268 (= ($colon$colon!214 (map!3113 (t!122151 rules!2550) lambda!59594) (dynLambda!6424 lambda!59594 (h!19461 rules!2550))) (Cons!14062 (dynLambda!6424 lambda!59594 (h!19461 rules!2550)) (map!3113 (t!122151 rules!2550) lambda!59594)))))

(assert (=> b!1384514 d!396268))

(declare-fun d!396270 () Bool)

(declare-fun lt!461148 () List!14128)

(assert (=> d!396270 (= (size!11547 lt!461148) (size!11548 (t!122151 rules!2550)))))

(declare-fun e!885691 () List!14128)

(assert (=> d!396270 (= lt!461148 e!885691)))

(declare-fun c!228199 () Bool)

(assert (=> d!396270 (= c!228199 ((_ is Nil!14060) (t!122151 rules!2550)))))

(assert (=> d!396270 (= (map!3113 (t!122151 rules!2550) lambda!59594) lt!461148)))

(declare-fun b!1386425 () Bool)

(assert (=> b!1386425 (= e!885691 Nil!14062)))

(declare-fun b!1386426 () Bool)

(assert (=> b!1386426 (= e!885691 ($colon$colon!214 (map!3113 (t!122151 (t!122151 rules!2550)) lambda!59594) (dynLambda!6424 lambda!59594 (h!19461 (t!122151 rules!2550)))))))

(assert (= (and d!396270 c!228199) b!1386425))

(assert (= (and d!396270 (not c!228199)) b!1386426))

(declare-fun b_lambda!42969 () Bool)

(assert (=> (not b_lambda!42969) (not b!1386426)))

(declare-fun m!1560545 () Bool)

(assert (=> d!396270 m!1560545))

(declare-fun m!1560547 () Bool)

(assert (=> d!396270 m!1560547))

(declare-fun m!1560549 () Bool)

(assert (=> b!1386426 m!1560549))

(declare-fun m!1560551 () Bool)

(assert (=> b!1386426 m!1560551))

(assert (=> b!1386426 m!1560549))

(assert (=> b!1386426 m!1560551))

(declare-fun m!1560553 () Bool)

(assert (=> b!1386426 m!1560553))

(assert (=> b!1384514 d!396270))

(declare-fun d!396272 () Bool)

(assert (=> d!396272 (dynLambda!6429 lambda!59597 (rule!4194 t1!34))))

(assert (=> d!396272 true))

(declare-fun _$7!742 () Unit!20305)

(assert (=> d!396272 (= (choose!8511 rules!2550 lambda!59597 (rule!4194 t1!34)) _$7!742)))

(declare-fun b_lambda!42971 () Bool)

(assert (=> (not b_lambda!42971) (not d!396272)))

(declare-fun bs!337050 () Bool)

(assert (= bs!337050 d!396272))

(assert (=> bs!337050 m!1558647))

(assert (=> d!395614 d!396272))

(declare-fun d!396274 () Bool)

(declare-fun res!625492 () Bool)

(declare-fun e!885696 () Bool)

(assert (=> d!396274 (=> res!625492 e!885696)))

(assert (=> d!396274 (= res!625492 ((_ is Nil!14060) rules!2550))))

(assert (=> d!396274 (= (forall!3423 rules!2550 lambda!59597) e!885696)))

(declare-fun b!1386431 () Bool)

(declare-fun e!885697 () Bool)

(assert (=> b!1386431 (= e!885696 e!885697)))

(declare-fun res!625493 () Bool)

(assert (=> b!1386431 (=> (not res!625493) (not e!885697))))

(assert (=> b!1386431 (= res!625493 (dynLambda!6429 lambda!59597 (h!19461 rules!2550)))))

(declare-fun b!1386432 () Bool)

(assert (=> b!1386432 (= e!885697 (forall!3423 (t!122151 rules!2550) lambda!59597))))

(assert (= (and d!396274 (not res!625492)) b!1386431))

(assert (= (and b!1386431 res!625493) b!1386432))

(declare-fun b_lambda!42973 () Bool)

(assert (=> (not b_lambda!42973) (not b!1386431)))

(declare-fun m!1560555 () Bool)

(assert (=> b!1386431 m!1560555))

(declare-fun m!1560557 () Bool)

(assert (=> b!1386432 m!1560557))

(assert (=> d!395614 d!396274))

(declare-fun d!396276 () Bool)

(declare-fun e!885698 () Bool)

(assert (=> d!396276 e!885698))

(declare-fun res!625494 () Bool)

(assert (=> d!396276 (=> (not res!625494) (not e!885698))))

(declare-fun lt!461149 () List!14125)

(assert (=> d!396276 (= res!625494 (= (content!2059 lt!461149) ((_ map or) (content!2059 (ite c!227823 call!92659 call!92662)) (content!2059 (ite c!227823 call!92662 call!92659)))))))

(declare-fun e!885699 () List!14125)

(assert (=> d!396276 (= lt!461149 e!885699)))

(declare-fun c!228200 () Bool)

(assert (=> d!396276 (= c!228200 ((_ is Nil!14059) (ite c!227823 call!92659 call!92662)))))

(assert (=> d!396276 (= (++!3646 (ite c!227823 call!92659 call!92662) (ite c!227823 call!92662 call!92659)) lt!461149)))

(declare-fun b!1386433 () Bool)

(assert (=> b!1386433 (= e!885699 (ite c!227823 call!92662 call!92659))))

(declare-fun b!1386435 () Bool)

(declare-fun res!625495 () Bool)

(assert (=> b!1386435 (=> (not res!625495) (not e!885698))))

(assert (=> b!1386435 (= res!625495 (= (size!11552 lt!461149) (+ (size!11552 (ite c!227823 call!92659 call!92662)) (size!11552 (ite c!227823 call!92662 call!92659)))))))

(declare-fun b!1386436 () Bool)

(assert (=> b!1386436 (= e!885698 (or (not (= (ite c!227823 call!92662 call!92659) Nil!14059)) (= lt!461149 (ite c!227823 call!92659 call!92662))))))

(declare-fun b!1386434 () Bool)

(assert (=> b!1386434 (= e!885699 (Cons!14059 (h!19460 (ite c!227823 call!92659 call!92662)) (++!3646 (t!122150 (ite c!227823 call!92659 call!92662)) (ite c!227823 call!92662 call!92659))))))

(assert (= (and d!396276 c!228200) b!1386433))

(assert (= (and d!396276 (not c!228200)) b!1386434))

(assert (= (and d!396276 res!625494) b!1386435))

(assert (= (and b!1386435 res!625495) b!1386436))

(declare-fun m!1560559 () Bool)

(assert (=> d!396276 m!1560559))

(declare-fun m!1560561 () Bool)

(assert (=> d!396276 m!1560561))

(declare-fun m!1560563 () Bool)

(assert (=> d!396276 m!1560563))

(declare-fun m!1560565 () Bool)

(assert (=> b!1386435 m!1560565))

(declare-fun m!1560567 () Bool)

(assert (=> b!1386435 m!1560567))

(declare-fun m!1560569 () Bool)

(assert (=> b!1386435 m!1560569))

(declare-fun m!1560571 () Bool)

(assert (=> b!1386434 m!1560571))

(assert (=> bm!92654 d!396276))

(declare-fun b!1386437 () Bool)

(declare-fun e!885700 () Bool)

(declare-fun lt!461150 () tuple2!13658)

(assert (=> b!1386437 (= e!885700 (not (isEmpty!8506 (_1!7715 lt!461150))))))

(declare-fun b!1386438 () Bool)

(declare-fun e!885702 () tuple2!13658)

(declare-fun lt!461152 () Option!2694)

(declare-fun lt!461151 () tuple2!13658)

(assert (=> b!1386438 (= e!885702 (tuple2!13659 (Cons!14061 (_1!7714 (v!21547 lt!461152)) (_1!7715 lt!461151)) (_2!7715 lt!461151)))))

(assert (=> b!1386438 (= lt!461151 (lexList!644 thiss!19762 rules!2550 (_2!7714 (v!21547 lt!461152))))))

(declare-fun b!1386439 () Bool)

(assert (=> b!1386439 (= e!885702 (tuple2!13659 Nil!14061 (_2!7714 (v!21547 lt!460493))))))

(declare-fun b!1386440 () Bool)

(declare-fun e!885701 () Bool)

(assert (=> b!1386440 (= e!885701 e!885700)))

(declare-fun res!625496 () Bool)

(assert (=> b!1386440 (= res!625496 (< (size!11552 (_2!7715 lt!461150)) (size!11552 (_2!7714 (v!21547 lt!460493)))))))

(assert (=> b!1386440 (=> (not res!625496) (not e!885700))))

(declare-fun d!396278 () Bool)

(assert (=> d!396278 e!885701))

(declare-fun c!228201 () Bool)

(assert (=> d!396278 (= c!228201 (> (size!11553 (_1!7715 lt!461150)) 0))))

(assert (=> d!396278 (= lt!461150 e!885702)))

(declare-fun c!228202 () Bool)

(assert (=> d!396278 (= c!228202 ((_ is Some!2693) lt!461152))))

(assert (=> d!396278 (= lt!461152 (maxPrefix!1104 thiss!19762 rules!2550 (_2!7714 (v!21547 lt!460493))))))

(assert (=> d!396278 (= (lexList!644 thiss!19762 rules!2550 (_2!7714 (v!21547 lt!460493))) lt!461150)))

(declare-fun b!1386441 () Bool)

(assert (=> b!1386441 (= e!885701 (= (_2!7715 lt!461150) (_2!7714 (v!21547 lt!460493))))))

(assert (= (and d!396278 c!228202) b!1386438))

(assert (= (and d!396278 (not c!228202)) b!1386439))

(assert (= (and d!396278 c!228201) b!1386440))

(assert (= (and d!396278 (not c!228201)) b!1386441))

(assert (= (and b!1386440 res!625496) b!1386437))

(declare-fun m!1560573 () Bool)

(assert (=> b!1386437 m!1560573))

(declare-fun m!1560575 () Bool)

(assert (=> b!1386438 m!1560575))

(declare-fun m!1560577 () Bool)

(assert (=> b!1386440 m!1560577))

(declare-fun m!1560579 () Bool)

(assert (=> b!1386440 m!1560579))

(declare-fun m!1560581 () Bool)

(assert (=> d!396278 m!1560581))

(declare-fun m!1560583 () Bool)

(assert (=> d!396278 m!1560583))

(assert (=> b!1384966 d!396278))

(assert (=> b!1385084 d!396026))

(declare-fun d!396280 () Bool)

(declare-fun dynLambda!6441 (Int BalanceConc!9200) TokenValue!2525)

(assert (=> d!396280 (= (apply!3519 (transformation!2435 (rule!4194 (_1!7714 (get!4370 lt!460529)))) (seqFromList!1643 (originalCharacters!3297 (_1!7714 (get!4370 lt!460529))))) (dynLambda!6441 (toValue!3718 (transformation!2435 (rule!4194 (_1!7714 (get!4370 lt!460529))))) (seqFromList!1643 (originalCharacters!3297 (_1!7714 (get!4370 lt!460529))))))))

(declare-fun b_lambda!42975 () Bool)

(assert (=> (not b_lambda!42975) (not d!396280)))

(declare-fun tb!72701 () Bool)

(declare-fun t!122259 () Bool)

(assert (=> (and b!1384366 (= (toValue!3718 (transformation!2435 (rule!4194 t1!34))) (toValue!3718 (transformation!2435 (rule!4194 (_1!7714 (get!4370 lt!460529)))))) t!122259) tb!72701))

(declare-fun result!88326 () Bool)

(assert (=> tb!72701 (= result!88326 (inv!21 (dynLambda!6441 (toValue!3718 (transformation!2435 (rule!4194 (_1!7714 (get!4370 lt!460529))))) (seqFromList!1643 (originalCharacters!3297 (_1!7714 (get!4370 lt!460529)))))))))

(declare-fun m!1560585 () Bool)

(assert (=> tb!72701 m!1560585))

(assert (=> d!396280 t!122259))

(declare-fun b_and!92899 () Bool)

(assert (= b_and!92787 (and (=> t!122259 result!88326) b_and!92899)))

(declare-fun tb!72703 () Bool)

(declare-fun t!122261 () Bool)

(assert (=> (and b!1384355 (= (toValue!3718 (transformation!2435 (h!19461 rules!2550))) (toValue!3718 (transformation!2435 (rule!4194 (_1!7714 (get!4370 lt!460529)))))) t!122261) tb!72703))

(declare-fun result!88330 () Bool)

(assert (= result!88330 result!88326))

(assert (=> d!396280 t!122261))

(declare-fun b_and!92901 () Bool)

(assert (= b_and!92791 (and (=> t!122261 result!88330) b_and!92901)))

(declare-fun t!122263 () Bool)

(declare-fun tb!72705 () Bool)

(assert (=> (and b!1384383 (= (toValue!3718 (transformation!2435 (rule!4194 t2!34))) (toValue!3718 (transformation!2435 (rule!4194 (_1!7714 (get!4370 lt!460529)))))) t!122263) tb!72705))

(declare-fun result!88332 () Bool)

(assert (= result!88332 result!88326))

(assert (=> d!396280 t!122263))

(declare-fun b_and!92903 () Bool)

(assert (= b_and!92795 (and (=> t!122263 result!88332) b_and!92903)))

(declare-fun tb!72707 () Bool)

(declare-fun t!122265 () Bool)

(assert (=> (and b!1385248 (= (toValue!3718 (transformation!2435 (h!19461 (t!122151 rules!2550)))) (toValue!3718 (transformation!2435 (rule!4194 (_1!7714 (get!4370 lt!460529)))))) t!122265) tb!72707))

(declare-fun result!88334 () Bool)

(assert (= result!88334 result!88326))

(assert (=> d!396280 t!122265))

(declare-fun b_and!92905 () Bool)

(assert (= b_and!92851 (and (=> t!122265 result!88334) b_and!92905)))

(assert (=> d!396280 m!1558453))

(declare-fun m!1560587 () Bool)

(assert (=> d!396280 m!1560587))

(assert (=> b!1385084 d!396280))

(declare-fun d!396282 () Bool)

(declare-fun fromListB!723 (List!14125) BalanceConc!9200)

(assert (=> d!396282 (= (seqFromList!1643 (originalCharacters!3297 (_1!7714 (get!4370 lt!460529)))) (fromListB!723 (originalCharacters!3297 (_1!7714 (get!4370 lt!460529)))))))

(declare-fun bs!337051 () Bool)

(assert (= bs!337051 d!396282))

(declare-fun m!1560589 () Bool)

(assert (=> bs!337051 m!1560589))

(assert (=> b!1385084 d!396282))

(assert (=> b!1385215 d!395596))

(declare-fun b!1386444 () Bool)

(declare-fun e!885707 () Bool)

(declare-fun e!885706 () Bool)

(assert (=> b!1386444 (= e!885707 e!885706)))

(declare-fun res!625502 () Bool)

(assert (=> b!1386444 (=> (not res!625502) (not e!885706))))

(assert (=> b!1386444 (= res!625502 (<= (- 1) (- (height!676 (left!12018 (c!227732 lt!460420))) (height!676 (right!12348 (c!227732 lt!460420))))))))

(declare-fun b!1386445 () Bool)

(declare-fun res!625498 () Bool)

(assert (=> b!1386445 (=> (not res!625498) (not e!885706))))

(assert (=> b!1386445 (= res!625498 (<= (- (height!676 (left!12018 (c!227732 lt!460420))) (height!676 (right!12348 (c!227732 lt!460420)))) 1))))

(declare-fun b!1386446 () Bool)

(declare-fun res!625497 () Bool)

(assert (=> b!1386446 (=> (not res!625497) (not e!885706))))

(assert (=> b!1386446 (= res!625497 (isBalanced!1366 (left!12018 (c!227732 lt!460420))))))

(declare-fun b!1386447 () Bool)

(declare-fun res!625500 () Bool)

(assert (=> b!1386447 (=> (not res!625500) (not e!885706))))

(assert (=> b!1386447 (= res!625500 (not (isEmpty!8510 (left!12018 (c!227732 lt!460420)))))))

(declare-fun b!1386448 () Bool)

(declare-fun res!625499 () Bool)

(assert (=> b!1386448 (=> (not res!625499) (not e!885706))))

(assert (=> b!1386448 (= res!625499 (isBalanced!1366 (right!12348 (c!227732 lt!460420))))))

(declare-fun b!1386449 () Bool)

(assert (=> b!1386449 (= e!885706 (not (isEmpty!8510 (right!12348 (c!227732 lt!460420)))))))

(declare-fun d!396284 () Bool)

(declare-fun res!625501 () Bool)

(assert (=> d!396284 (=> res!625501 e!885707)))

(assert (=> d!396284 (= res!625501 (not ((_ is Node!4631) (c!227732 lt!460420))))))

(assert (=> d!396284 (= (isBalanced!1366 (c!227732 lt!460420)) e!885707)))

(assert (= (and d!396284 (not res!625501)) b!1386444))

(assert (= (and b!1386444 res!625502) b!1386445))

(assert (= (and b!1386445 res!625498) b!1386446))

(assert (= (and b!1386446 res!625497) b!1386448))

(assert (= (and b!1386448 res!625499) b!1386447))

(assert (= (and b!1386447 res!625500) b!1386449))

(declare-fun m!1560591 () Bool)

(assert (=> b!1386448 m!1560591))

(declare-fun m!1560593 () Bool)

(assert (=> b!1386444 m!1560593))

(declare-fun m!1560595 () Bool)

(assert (=> b!1386444 m!1560595))

(assert (=> b!1386445 m!1560593))

(assert (=> b!1386445 m!1560595))

(declare-fun m!1560597 () Bool)

(assert (=> b!1386447 m!1560597))

(declare-fun m!1560599 () Bool)

(assert (=> b!1386449 m!1560599))

(declare-fun m!1560601 () Bool)

(assert (=> b!1386446 m!1560601))

(assert (=> b!1384807 d!396284))

(declare-fun bs!337052 () Bool)

(declare-fun d!396286 () Bool)

(assert (= bs!337052 (and d!396286 b!1384356)))

(declare-fun lambda!59685 () Int)

(assert (=> bs!337052 (not (= lambda!59685 lambda!59596))))

(declare-fun bs!337053 () Bool)

(assert (= bs!337053 (and d!396286 d!395598)))

(assert (=> bs!337053 (= (= lambda!59641 lambda!59596) (= lambda!59685 lambda!59638))))

(declare-fun bs!337054 () Bool)

(assert (= bs!337054 (and d!396286 d!396044)))

(assert (=> bs!337054 (not (= lambda!59685 lambda!59681))))

(declare-fun bs!337055 () Bool)

(assert (= bs!337055 (and d!396286 b!1384378)))

(assert (=> bs!337055 (not (= lambda!59685 lambda!59597))))

(declare-fun bs!337056 () Bool)

(assert (= bs!337056 (and d!396286 d!395600)))

(assert (=> bs!337056 (not (= lambda!59685 lambda!59641))))

(assert (=> d!396286 true))

(assert (=> d!396286 (< (dynLambda!6434 order!8583 lambda!59641) (dynLambda!6434 order!8583 lambda!59685))))

(assert (=> d!396286 (= (exists!514 rules!2550 lambda!59641) (not (forall!3423 rules!2550 lambda!59685)))))

(declare-fun bs!337057 () Bool)

(assert (= bs!337057 d!396286))

(declare-fun m!1560603 () Bool)

(assert (=> bs!337057 m!1560603))

(assert (=> d!395600 d!396286))

(declare-fun bs!337058 () Bool)

(declare-fun d!396288 () Bool)

(assert (= bs!337058 (and d!396288 b!1384356)))

(declare-fun lambda!59688 () Int)

(assert (=> bs!337058 (not (= lambda!59688 lambda!59596))))

(declare-fun bs!337059 () Bool)

(assert (= bs!337059 (and d!396288 d!396286)))

(assert (=> bs!337059 (not (= lambda!59688 lambda!59685))))

(declare-fun bs!337060 () Bool)

(assert (= bs!337060 (and d!396288 d!395598)))

(assert (=> bs!337060 (not (= lambda!59688 lambda!59638))))

(declare-fun bs!337061 () Bool)

(assert (= bs!337061 (and d!396288 d!396044)))

(assert (=> bs!337061 (not (= lambda!59688 lambda!59681))))

(declare-fun bs!337062 () Bool)

(assert (= bs!337062 (and d!396288 b!1384378)))

(assert (=> bs!337062 (not (= lambda!59688 lambda!59597))))

(declare-fun bs!337063 () Bool)

(assert (= bs!337063 (and d!396288 d!395600)))

(assert (=> bs!337063 (= lambda!59688 lambda!59641)))

(assert (=> d!396288 true))

(assert (=> d!396288 true))

(assert (=> d!396288 (< (dynLambda!6435 order!8585 lambda!59594) (dynLambda!6434 order!8583 lambda!59688))))

(assert (=> d!396288 (exists!514 rules!2550 lambda!59688)))

(assert (=> d!396288 true))

(declare-fun _$24!124 () Unit!20305)

(assert (=> d!396288 (= (choose!8509 rules!2550 lambda!59594 lt!460289) _$24!124)))

(declare-fun bs!337064 () Bool)

(assert (= bs!337064 d!396288))

(declare-fun m!1560605 () Bool)

(assert (=> bs!337064 m!1560605))

(assert (=> d!395600 d!396288))

(assert (=> d!395600 d!395564))

(assert (=> d!395600 d!395340))

(declare-fun d!396290 () Bool)

(assert (=> d!396290 (= (isEmpty!8502 lt!460299) ((_ is Nil!14059) lt!460299))))

(assert (=> d!395572 d!396290))

(declare-fun b!1386452 () Bool)

(declare-fun res!625503 () Bool)

(declare-fun e!885709 () Bool)

(assert (=> b!1386452 (=> res!625503 e!885709)))

(assert (=> b!1386452 (= res!625503 (not ((_ is Concat!6275) (regex!2435 (rule!4194 t2!34)))))))

(declare-fun e!885713 () Bool)

(assert (=> b!1386452 (= e!885713 e!885709)))

(declare-fun b!1386453 () Bool)

(declare-fun e!885711 () Bool)

(declare-fun call!92775 () Bool)

(assert (=> b!1386453 (= e!885711 call!92775)))

(declare-fun bm!92768 () Bool)

(declare-fun call!92773 () Bool)

(assert (=> bm!92768 (= call!92775 call!92773)))

(declare-fun d!396292 () Bool)

(declare-fun res!625507 () Bool)

(declare-fun e!885708 () Bool)

(assert (=> d!396292 (=> res!625507 e!885708)))

(assert (=> d!396292 (= res!625507 ((_ is ElementMatch!3749) (regex!2435 (rule!4194 t2!34))))))

(assert (=> d!396292 (= (validRegex!1633 (regex!2435 (rule!4194 t2!34))) e!885708)))

(declare-fun b!1386454 () Bool)

(declare-fun res!625504 () Bool)

(declare-fun e!885714 () Bool)

(assert (=> b!1386454 (=> (not res!625504) (not e!885714))))

(declare-fun call!92774 () Bool)

(assert (=> b!1386454 (= res!625504 call!92774)))

(assert (=> b!1386454 (= e!885713 e!885714)))

(declare-fun c!228204 () Bool)

(declare-fun bm!92769 () Bool)

(declare-fun c!228203 () Bool)

(assert (=> bm!92769 (= call!92773 (validRegex!1633 (ite c!228204 (reg!4078 (regex!2435 (rule!4194 t2!34))) (ite c!228203 (regTwo!8011 (regex!2435 (rule!4194 t2!34))) (regTwo!8010 (regex!2435 (rule!4194 t2!34)))))))))

(declare-fun b!1386455 () Bool)

(assert (=> b!1386455 (= e!885714 call!92775)))

(declare-fun b!1386456 () Bool)

(declare-fun e!885712 () Bool)

(assert (=> b!1386456 (= e!885712 e!885713)))

(assert (=> b!1386456 (= c!228203 ((_ is Union!3749) (regex!2435 (rule!4194 t2!34))))))

(declare-fun b!1386457 () Bool)

(declare-fun e!885710 () Bool)

(assert (=> b!1386457 (= e!885710 call!92773)))

(declare-fun bm!92770 () Bool)

(assert (=> bm!92770 (= call!92774 (validRegex!1633 (ite c!228203 (regOne!8011 (regex!2435 (rule!4194 t2!34))) (regOne!8010 (regex!2435 (rule!4194 t2!34))))))))

(declare-fun b!1386458 () Bool)

(assert (=> b!1386458 (= e!885709 e!885711)))

(declare-fun res!625505 () Bool)

(assert (=> b!1386458 (=> (not res!625505) (not e!885711))))

(assert (=> b!1386458 (= res!625505 call!92774)))

(declare-fun b!1386459 () Bool)

(assert (=> b!1386459 (= e!885712 e!885710)))

(declare-fun res!625506 () Bool)

(assert (=> b!1386459 (= res!625506 (not (nullable!1213 (reg!4078 (regex!2435 (rule!4194 t2!34))))))))

(assert (=> b!1386459 (=> (not res!625506) (not e!885710))))

(declare-fun b!1386460 () Bool)

(assert (=> b!1386460 (= e!885708 e!885712)))

(assert (=> b!1386460 (= c!228204 ((_ is Star!3749) (regex!2435 (rule!4194 t2!34))))))

(assert (= (and d!396292 (not res!625507)) b!1386460))

(assert (= (and b!1386460 c!228204) b!1386459))

(assert (= (and b!1386460 (not c!228204)) b!1386456))

(assert (= (and b!1386459 res!625506) b!1386457))

(assert (= (and b!1386456 c!228203) b!1386454))

(assert (= (and b!1386456 (not c!228203)) b!1386452))

(assert (= (and b!1386454 res!625504) b!1386455))

(assert (= (and b!1386452 (not res!625503)) b!1386458))

(assert (= (and b!1386458 res!625505) b!1386453))

(assert (= (or b!1386454 b!1386458) bm!92770))

(assert (= (or b!1386455 b!1386453) bm!92768))

(assert (= (or b!1386457 bm!92768) bm!92769))

(declare-fun m!1560607 () Bool)

(assert (=> bm!92769 m!1560607))

(declare-fun m!1560609 () Bool)

(assert (=> bm!92770 m!1560609))

(declare-fun m!1560611 () Bool)

(assert (=> b!1386459 m!1560611))

(assert (=> d!395572 d!396292))

(declare-fun b!1386462 () Bool)

(declare-fun e!885715 () List!14125)

(declare-fun e!885716 () List!14125)

(assert (=> b!1386462 (= e!885715 e!885716)))

(declare-fun c!228206 () Bool)

(assert (=> b!1386462 (= c!228206 ((_ is Leaf!7044) (c!227730 lt!460288)))))

(declare-fun d!396294 () Bool)

(declare-fun c!228205 () Bool)

(assert (=> d!396294 (= c!228205 ((_ is Empty!4630) (c!227730 lt!460288)))))

(assert (=> d!396294 (= (list!5450 (c!227730 lt!460288)) e!885715)))

(declare-fun b!1386463 () Bool)

(assert (=> b!1386463 (= e!885716 (list!5453 (xs!7357 (c!227730 lt!460288))))))

(declare-fun b!1386461 () Bool)

(assert (=> b!1386461 (= e!885715 Nil!14059)))

(declare-fun b!1386464 () Bool)

(assert (=> b!1386464 (= e!885716 (++!3646 (list!5450 (left!12017 (c!227730 lt!460288))) (list!5450 (right!12347 (c!227730 lt!460288)))))))

(assert (= (and d!396294 c!228205) b!1386461))

(assert (= (and d!396294 (not c!228205)) b!1386462))

(assert (= (and b!1386462 c!228206) b!1386463))

(assert (= (and b!1386462 (not c!228206)) b!1386464))

(declare-fun m!1560613 () Bool)

(assert (=> b!1386463 m!1560613))

(declare-fun m!1560615 () Bool)

(assert (=> b!1386464 m!1560615))

(declare-fun m!1560617 () Bool)

(assert (=> b!1386464 m!1560617))

(assert (=> b!1386464 m!1560615))

(assert (=> b!1386464 m!1560617))

(declare-fun m!1560619 () Bool)

(assert (=> b!1386464 m!1560619))

(assert (=> d!395502 d!396294))

(declare-fun d!396296 () Bool)

(assert (=> d!396296 true))

(declare-fun order!8597 () Int)

(declare-fun order!8595 () Int)

(declare-fun lambda!59691 () Int)

(declare-fun dynLambda!6442 (Int Int) Int)

(declare-fun dynLambda!6443 (Int Int) Int)

(assert (=> d!396296 (< (dynLambda!6442 order!8595 (toChars!3577 (transformation!2435 (rule!4194 t1!34)))) (dynLambda!6443 order!8597 lambda!59691))))

(assert (=> d!396296 true))

(declare-fun order!8599 () Int)

(declare-fun dynLambda!6444 (Int Int) Int)

(assert (=> d!396296 (< (dynLambda!6444 order!8599 (toValue!3718 (transformation!2435 (rule!4194 t1!34)))) (dynLambda!6443 order!8597 lambda!59691))))

(declare-fun Forall!547 (Int) Bool)

(assert (=> d!396296 (= (semiInverseModEq!942 (toChars!3577 (transformation!2435 (rule!4194 t1!34))) (toValue!3718 (transformation!2435 (rule!4194 t1!34)))) (Forall!547 lambda!59691))))

(declare-fun bs!337065 () Bool)

(assert (= bs!337065 d!396296))

(declare-fun m!1560621 () Bool)

(assert (=> bs!337065 m!1560621))

(assert (=> d!395544 d!396296))

(assert (=> b!1385220 d!395540))

(declare-fun d!396298 () Bool)

(declare-fun lt!461153 () Token!4532)

(assert (=> d!396298 (= lt!461153 (apply!3522 (list!5445 (_1!7713 lt!460474)) 0))))

(assert (=> d!396298 (= lt!461153 (apply!3524 (c!227732 (_1!7713 lt!460474)) 0))))

(declare-fun e!885717 () Bool)

(assert (=> d!396298 e!885717))

(declare-fun res!625508 () Bool)

(assert (=> d!396298 (=> (not res!625508) (not e!885717))))

(assert (=> d!396298 (= res!625508 (<= 0 0))))

(assert (=> d!396298 (= (apply!3518 (_1!7713 lt!460474) 0) lt!461153)))

(declare-fun b!1386469 () Bool)

(assert (=> b!1386469 (= e!885717 (< 0 (size!11549 (_1!7713 lt!460474))))))

(assert (= (and d!396298 res!625508) b!1386469))

(declare-fun m!1560623 () Bool)

(assert (=> d!396298 m!1560623))

(assert (=> d!396298 m!1560623))

(declare-fun m!1560625 () Bool)

(assert (=> d!396298 m!1560625))

(declare-fun m!1560627 () Bool)

(assert (=> d!396298 m!1560627))

(assert (=> b!1386469 m!1558241))

(assert (=> b!1384928 d!396298))

(declare-fun d!396300 () Bool)

(declare-fun res!625513 () Bool)

(declare-fun e!885720 () Bool)

(assert (=> d!396300 (=> (not res!625513) (not e!885720))))

(assert (=> d!396300 (= res!625513 (validRegex!1633 (regex!2435 (rule!4194 t2!34))))))

(assert (=> d!396300 (= (ruleValid!600 thiss!19762 (rule!4194 t2!34)) e!885720)))

(declare-fun b!1386474 () Bool)

(declare-fun res!625514 () Bool)

(assert (=> b!1386474 (=> (not res!625514) (not e!885720))))

(assert (=> b!1386474 (= res!625514 (not (nullable!1213 (regex!2435 (rule!4194 t2!34)))))))

(declare-fun b!1386475 () Bool)

(assert (=> b!1386475 (= e!885720 (not (= (tag!2697 (rule!4194 t2!34)) (String!16862 ""))))))

(assert (= (and d!396300 res!625513) b!1386474))

(assert (= (and b!1386474 res!625514) b!1386475))

(assert (=> d!396300 m!1558535))

(assert (=> b!1386474 m!1558533))

(assert (=> bs!336880 d!396300))

(declare-fun d!396302 () Bool)

(declare-fun res!625517 () List!14125)

(assert (=> d!396302 (dynLambda!6436 lambda!59593 res!625517)))

(declare-fun e!885723 () Bool)

(assert (=> d!396302 e!885723))

(assert (=> d!396302 (= (choose!8510 lambda!59593) res!625517)))

(declare-fun b!1386478 () Bool)

(declare-fun tp!396545 () Bool)

(assert (=> b!1386478 (= e!885723 (and tp_is_empty!6775 tp!396545))))

(assert (= (and d!396302 ((_ is Cons!14059) res!625517)) b!1386478))

(declare-fun b_lambda!42977 () Bool)

(assert (=> (not b_lambda!42977) (not d!396302)))

(declare-fun m!1560629 () Bool)

(assert (=> d!396302 m!1560629))

(assert (=> d!395608 d!396302))

(assert (=> d!395608 d!395586))

(declare-fun b!1386479 () Bool)

(declare-fun res!625519 () Bool)

(declare-fun e!885724 () Bool)

(assert (=> b!1386479 (=> (not res!625519) (not e!885724))))

(declare-fun lt!461154 () tuple2!13654)

(assert (=> b!1386479 (= res!625519 (= (list!5445 (_1!7713 lt!461154)) (_1!7715 (lexList!644 thiss!19762 rules!2550 (list!5446 (print!894 thiss!19762 (singletonSeq!1078 t1!34)))))))))

(declare-fun b!1386480 () Bool)

(assert (=> b!1386480 (= e!885724 (= (list!5446 (_2!7713 lt!461154)) (_2!7715 (lexList!644 thiss!19762 rules!2550 (list!5446 (print!894 thiss!19762 (singletonSeq!1078 t1!34)))))))))

(declare-fun b!1386481 () Bool)

(declare-fun e!885726 () Bool)

(assert (=> b!1386481 (= e!885726 (not (isEmpty!8504 (_1!7713 lt!461154))))))

(declare-fun e!885725 () Bool)

(declare-fun b!1386482 () Bool)

(assert (=> b!1386482 (= e!885725 (= (_2!7713 lt!461154) (print!894 thiss!19762 (singletonSeq!1078 t1!34))))))

(declare-fun b!1386483 () Bool)

(assert (=> b!1386483 (= e!885725 e!885726)))

(declare-fun res!625520 () Bool)

(assert (=> b!1386483 (= res!625520 (< (size!11541 (_2!7713 lt!461154)) (size!11541 (print!894 thiss!19762 (singletonSeq!1078 t1!34)))))))

(assert (=> b!1386483 (=> (not res!625520) (not e!885726))))

(declare-fun d!396304 () Bool)

(assert (=> d!396304 e!885724))

(declare-fun res!625518 () Bool)

(assert (=> d!396304 (=> (not res!625518) (not e!885724))))

(assert (=> d!396304 (= res!625518 e!885725)))

(declare-fun c!228207 () Bool)

(assert (=> d!396304 (= c!228207 (> (size!11549 (_1!7713 lt!461154)) 0))))

(assert (=> d!396304 (= lt!461154 (lexTailRecV2!425 thiss!19762 rules!2550 (print!894 thiss!19762 (singletonSeq!1078 t1!34)) (BalanceConc!9201 Empty!4630) (print!894 thiss!19762 (singletonSeq!1078 t1!34)) (BalanceConc!9203 Empty!4631)))))

(assert (=> d!396304 (= (lex!955 thiss!19762 rules!2550 (print!894 thiss!19762 (singletonSeq!1078 t1!34))) lt!461154)))

(assert (= (and d!396304 c!228207) b!1386483))

(assert (= (and d!396304 (not c!228207)) b!1386482))

(assert (= (and b!1386483 res!625520) b!1386481))

(assert (= (and d!396304 res!625518) b!1386479))

(assert (= (and b!1386479 res!625519) b!1386480))

(declare-fun m!1560631 () Bool)

(assert (=> b!1386479 m!1560631))

(assert (=> b!1386479 m!1557497))

(declare-fun m!1560633 () Bool)

(assert (=> b!1386479 m!1560633))

(assert (=> b!1386479 m!1560633))

(declare-fun m!1560635 () Bool)

(assert (=> b!1386479 m!1560635))

(declare-fun m!1560637 () Bool)

(assert (=> b!1386481 m!1560637))

(declare-fun m!1560639 () Bool)

(assert (=> b!1386480 m!1560639))

(assert (=> b!1386480 m!1557497))

(assert (=> b!1386480 m!1560633))

(assert (=> b!1386480 m!1560633))

(assert (=> b!1386480 m!1560635))

(declare-fun m!1560641 () Bool)

(assert (=> d!396304 m!1560641))

(assert (=> d!396304 m!1557497))

(assert (=> d!396304 m!1557497))

(declare-fun m!1560643 () Bool)

(assert (=> d!396304 m!1560643))

(declare-fun m!1560645 () Bool)

(assert (=> b!1386483 m!1560645))

(assert (=> b!1386483 m!1557497))

(declare-fun m!1560647 () Bool)

(assert (=> b!1386483 m!1560647))

(assert (=> d!395570 d!396304))

(declare-fun d!396306 () Bool)

(declare-fun lt!461155 () Int)

(assert (=> d!396306 (= lt!461155 (size!11553 (list!5445 (_1!7713 lt!460542))))))

(assert (=> d!396306 (= lt!461155 (size!11556 (c!227732 (_1!7713 lt!460542))))))

(assert (=> d!396306 (= (size!11549 (_1!7713 lt!460542)) lt!461155)))

(declare-fun bs!337066 () Bool)

(assert (= bs!337066 d!396306))

(assert (=> bs!337066 m!1560539))

(assert (=> bs!337066 m!1560539))

(declare-fun m!1560649 () Bool)

(assert (=> bs!337066 m!1560649))

(declare-fun m!1560651 () Bool)

(assert (=> bs!337066 m!1560651))

(assert (=> d!395570 d!396306))

(assert (=> d!395570 d!395424))

(assert (=> d!395570 d!395434))

(declare-fun d!396308 () Bool)

(assert (=> d!396308 (= (list!5445 (_1!7713 (lex!955 thiss!19762 rules!2550 (print!894 thiss!19762 (singletonSeq!1078 t1!34))))) (list!5449 (c!227732 (_1!7713 (lex!955 thiss!19762 rules!2550 (print!894 thiss!19762 (singletonSeq!1078 t1!34)))))))))

(declare-fun bs!337067 () Bool)

(assert (= bs!337067 d!396308))

(declare-fun m!1560653 () Bool)

(assert (=> bs!337067 m!1560653))

(assert (=> d!395570 d!396308))

(declare-fun d!396310 () Bool)

(assert (=> d!396310 (= (list!5445 (singletonSeq!1078 t1!34)) (list!5449 (c!227732 (singletonSeq!1078 t1!34))))))

(declare-fun bs!337068 () Bool)

(assert (= bs!337068 d!396310))

(declare-fun m!1560655 () Bool)

(assert (=> bs!337068 m!1560655))

(assert (=> d!395570 d!396310))

(assert (=> d!395570 d!395438))

(declare-fun d!396312 () Bool)

(declare-fun lt!461156 () Int)

(assert (=> d!396312 (>= lt!461156 0)))

(declare-fun e!885727 () Int)

(assert (=> d!396312 (= lt!461156 e!885727)))

(declare-fun c!228208 () Bool)

(assert (=> d!396312 (= c!228208 ((_ is Nil!14059) lt!460555))))

(assert (=> d!396312 (= (size!11552 lt!460555) lt!461156)))

(declare-fun b!1386484 () Bool)

(assert (=> b!1386484 (= e!885727 0)))

(declare-fun b!1386485 () Bool)

(assert (=> b!1386485 (= e!885727 (+ 1 (size!11552 (t!122150 lt!460555))))))

(assert (= (and d!396312 c!228208) b!1386484))

(assert (= (and d!396312 (not c!228208)) b!1386485))

(declare-fun m!1560657 () Bool)

(assert (=> b!1386485 m!1560657))

(assert (=> b!1385194 d!396312))

(declare-fun d!396314 () Bool)

(declare-fun lt!461157 () Int)

(assert (=> d!396314 (>= lt!461157 0)))

(declare-fun e!885728 () Int)

(assert (=> d!396314 (= lt!461157 e!885728)))

(declare-fun c!228209 () Bool)

(assert (=> d!396314 (= c!228209 ((_ is Nil!14059) lt!460287))))

(assert (=> d!396314 (= (size!11552 lt!460287) lt!461157)))

(declare-fun b!1386486 () Bool)

(assert (=> b!1386486 (= e!885728 0)))

(declare-fun b!1386487 () Bool)

(assert (=> b!1386487 (= e!885728 (+ 1 (size!11552 (t!122150 lt!460287))))))

(assert (= (and d!396314 c!228209) b!1386486))

(assert (= (and d!396314 (not c!228209)) b!1386487))

(assert (=> b!1386487 m!1560509))

(assert (=> b!1385194 d!396314))

(declare-fun d!396316 () Bool)

(declare-fun lt!461158 () Int)

(assert (=> d!396316 (>= lt!461158 0)))

(declare-fun e!885729 () Int)

(assert (=> d!396316 (= lt!461158 e!885729)))

(declare-fun c!228210 () Bool)

(assert (=> d!396316 (= c!228210 ((_ is Nil!14059) (getSuffix!595 lt!460300 lt!460287)))))

(assert (=> d!396316 (= (size!11552 (getSuffix!595 lt!460300 lt!460287)) lt!461158)))

(declare-fun b!1386488 () Bool)

(assert (=> b!1386488 (= e!885729 0)))

(declare-fun b!1386489 () Bool)

(assert (=> b!1386489 (= e!885729 (+ 1 (size!11552 (t!122150 (getSuffix!595 lt!460300 lt!460287)))))))

(assert (= (and d!396316 c!228210) b!1386488))

(assert (= (and d!396316 (not c!228210)) b!1386489))

(declare-fun m!1560659 () Bool)

(assert (=> b!1386489 m!1560659))

(assert (=> b!1385194 d!396316))

(declare-fun d!396318 () Bool)

(declare-fun e!885730 () Bool)

(assert (=> d!396318 e!885730))

(declare-fun res!625521 () Bool)

(assert (=> d!396318 (=> (not res!625521) (not e!885730))))

(declare-fun lt!461159 () List!14125)

(assert (=> d!396318 (= res!625521 (= (content!2059 lt!461159) ((_ map or) (content!2059 (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460513))))) (content!2059 (_2!7714 (get!4370 lt!460513))))))))

(declare-fun e!885731 () List!14125)

(assert (=> d!396318 (= lt!461159 e!885731)))

(declare-fun c!228211 () Bool)

(assert (=> d!396318 (= c!228211 ((_ is Nil!14059) (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460513))))))))

(assert (=> d!396318 (= (++!3646 (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460513)))) (_2!7714 (get!4370 lt!460513))) lt!461159)))

(declare-fun b!1386490 () Bool)

(assert (=> b!1386490 (= e!885731 (_2!7714 (get!4370 lt!460513)))))

(declare-fun b!1386492 () Bool)

(declare-fun res!625522 () Bool)

(assert (=> b!1386492 (=> (not res!625522) (not e!885730))))

(assert (=> b!1386492 (= res!625522 (= (size!11552 lt!461159) (+ (size!11552 (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460513))))) (size!11552 (_2!7714 (get!4370 lt!460513))))))))

(declare-fun b!1386493 () Bool)

(assert (=> b!1386493 (= e!885730 (or (not (= (_2!7714 (get!4370 lt!460513)) Nil!14059)) (= lt!461159 (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460513)))))))))

(declare-fun b!1386491 () Bool)

(assert (=> b!1386491 (= e!885731 (Cons!14059 (h!19460 (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460513))))) (++!3646 (t!122150 (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460513))))) (_2!7714 (get!4370 lt!460513)))))))

(assert (= (and d!396318 c!228211) b!1386490))

(assert (= (and d!396318 (not c!228211)) b!1386491))

(assert (= (and d!396318 res!625521) b!1386492))

(assert (= (and b!1386492 res!625522) b!1386493))

(declare-fun m!1560661 () Bool)

(assert (=> d!396318 m!1560661))

(assert (=> d!396318 m!1558371))

(declare-fun m!1560663 () Bool)

(assert (=> d!396318 m!1560663))

(declare-fun m!1560665 () Bool)

(assert (=> d!396318 m!1560665))

(declare-fun m!1560667 () Bool)

(assert (=> b!1386492 m!1560667))

(assert (=> b!1386492 m!1558371))

(declare-fun m!1560669 () Bool)

(assert (=> b!1386492 m!1560669))

(assert (=> b!1386492 m!1558361))

(declare-fun m!1560671 () Bool)

(assert (=> b!1386491 m!1560671))

(assert (=> b!1385043 d!396318))

(declare-fun d!396320 () Bool)

(assert (=> d!396320 (= (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460513)))) (list!5450 (c!227730 (charsOf!1407 (_1!7714 (get!4370 lt!460513))))))))

(declare-fun bs!337069 () Bool)

(assert (= bs!337069 d!396320))

(declare-fun m!1560673 () Bool)

(assert (=> bs!337069 m!1560673))

(assert (=> b!1385043 d!396320))

(declare-fun d!396322 () Bool)

(declare-fun lt!461160 () BalanceConc!9200)

(assert (=> d!396322 (= (list!5446 lt!461160) (originalCharacters!3297 (_1!7714 (get!4370 lt!460513))))))

(assert (=> d!396322 (= lt!461160 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 (_1!7714 (get!4370 lt!460513))))) (value!79030 (_1!7714 (get!4370 lt!460513)))))))

(assert (=> d!396322 (= (charsOf!1407 (_1!7714 (get!4370 lt!460513))) lt!461160)))

(declare-fun b_lambda!42979 () Bool)

(assert (=> (not b_lambda!42979) (not d!396322)))

(declare-fun t!122267 () Bool)

(declare-fun tb!72709 () Bool)

(assert (=> (and b!1384366 (= (toChars!3577 (transformation!2435 (rule!4194 t1!34))) (toChars!3577 (transformation!2435 (rule!4194 (_1!7714 (get!4370 lt!460513)))))) t!122267) tb!72709))

(declare-fun b!1386494 () Bool)

(declare-fun e!885732 () Bool)

(declare-fun tp!396546 () Bool)

(assert (=> b!1386494 (= e!885732 (and (inv!18402 (c!227730 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 (_1!7714 (get!4370 lt!460513))))) (value!79030 (_1!7714 (get!4370 lt!460513)))))) tp!396546))))

(declare-fun result!88336 () Bool)

(assert (=> tb!72709 (= result!88336 (and (inv!18403 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 (_1!7714 (get!4370 lt!460513))))) (value!79030 (_1!7714 (get!4370 lt!460513))))) e!885732))))

(assert (= tb!72709 b!1386494))

(declare-fun m!1560675 () Bool)

(assert (=> b!1386494 m!1560675))

(declare-fun m!1560677 () Bool)

(assert (=> tb!72709 m!1560677))

(assert (=> d!396322 t!122267))

(declare-fun b_and!92907 () Bool)

(assert (= b_and!92871 (and (=> t!122267 result!88336) b_and!92907)))

(declare-fun tb!72711 () Bool)

(declare-fun t!122269 () Bool)

(assert (=> (and b!1384355 (= (toChars!3577 (transformation!2435 (h!19461 rules!2550))) (toChars!3577 (transformation!2435 (rule!4194 (_1!7714 (get!4370 lt!460513)))))) t!122269) tb!72711))

(declare-fun result!88338 () Bool)

(assert (= result!88338 result!88336))

(assert (=> d!396322 t!122269))

(declare-fun b_and!92909 () Bool)

(assert (= b_and!92873 (and (=> t!122269 result!88338) b_and!92909)))

(declare-fun tb!72713 () Bool)

(declare-fun t!122271 () Bool)

(assert (=> (and b!1384383 (= (toChars!3577 (transformation!2435 (rule!4194 t2!34))) (toChars!3577 (transformation!2435 (rule!4194 (_1!7714 (get!4370 lt!460513)))))) t!122271) tb!72713))

(declare-fun result!88340 () Bool)

(assert (= result!88340 result!88336))

(assert (=> d!396322 t!122271))

(declare-fun b_and!92911 () Bool)

(assert (= b_and!92875 (and (=> t!122271 result!88340) b_and!92911)))

(declare-fun tb!72715 () Bool)

(declare-fun t!122273 () Bool)

(assert (=> (and b!1385248 (= (toChars!3577 (transformation!2435 (h!19461 (t!122151 rules!2550)))) (toChars!3577 (transformation!2435 (rule!4194 (_1!7714 (get!4370 lt!460513)))))) t!122273) tb!72715))

(declare-fun result!88342 () Bool)

(assert (= result!88342 result!88336))

(assert (=> d!396322 t!122273))

(declare-fun b_and!92913 () Bool)

(assert (= b_and!92877 (and (=> t!122273 result!88342) b_and!92913)))

(declare-fun m!1560679 () Bool)

(assert (=> d!396322 m!1560679))

(declare-fun m!1560681 () Bool)

(assert (=> d!396322 m!1560681))

(assert (=> b!1385043 d!396322))

(declare-fun d!396324 () Bool)

(assert (=> d!396324 (= (get!4370 lt!460513) (v!21547 lt!460513))))

(assert (=> b!1385043 d!396324))

(declare-fun d!396326 () Bool)

(declare-fun lt!461161 () Int)

(assert (=> d!396326 (= lt!461161 (size!11552 (list!5446 (_2!7713 lt!460396))))))

(assert (=> d!396326 (= lt!461161 (size!11554 (c!227730 (_2!7713 lt!460396))))))

(assert (=> d!396326 (= (size!11541 (_2!7713 lt!460396)) lt!461161)))

(declare-fun bs!337070 () Bool)

(assert (= bs!337070 d!396326))

(assert (=> bs!337070 m!1557937))

(assert (=> bs!337070 m!1557937))

(declare-fun m!1560683 () Bool)

(assert (=> bs!337070 m!1560683))

(declare-fun m!1560685 () Bool)

(assert (=> bs!337070 m!1560685))

(assert (=> b!1384720 d!396326))

(declare-fun d!396328 () Bool)

(declare-fun lt!461162 () Int)

(assert (=> d!396328 (= lt!461162 (size!11552 (list!5446 lt!460288)))))

(assert (=> d!396328 (= lt!461162 (size!11554 (c!227730 lt!460288)))))

(assert (=> d!396328 (= (size!11541 lt!460288) lt!461162)))

(declare-fun bs!337071 () Bool)

(assert (= bs!337071 d!396328))

(assert (=> bs!337071 m!1557633))

(assert (=> bs!337071 m!1557633))

(assert (=> bs!337071 m!1558277))

(declare-fun m!1560687 () Bool)

(assert (=> bs!337071 m!1560687))

(assert (=> b!1384720 d!396328))

(declare-fun b!1386496 () Bool)

(declare-fun e!885733 () List!14125)

(declare-fun e!885734 () List!14125)

(assert (=> b!1386496 (= e!885733 e!885734)))

(declare-fun c!228213 () Bool)

(assert (=> b!1386496 (= c!228213 ((_ is Leaf!7044) (c!227730 lt!460301)))))

(declare-fun d!396330 () Bool)

(declare-fun c!228212 () Bool)

(assert (=> d!396330 (= c!228212 ((_ is Empty!4630) (c!227730 lt!460301)))))

(assert (=> d!396330 (= (list!5450 (c!227730 lt!460301)) e!885733)))

(declare-fun b!1386497 () Bool)

(assert (=> b!1386497 (= e!885734 (list!5453 (xs!7357 (c!227730 lt!460301))))))

(declare-fun b!1386495 () Bool)

(assert (=> b!1386495 (= e!885733 Nil!14059)))

(declare-fun b!1386498 () Bool)

(assert (=> b!1386498 (= e!885734 (++!3646 (list!5450 (left!12017 (c!227730 lt!460301))) (list!5450 (right!12347 (c!227730 lt!460301)))))))

(assert (= (and d!396330 c!228212) b!1386495))

(assert (= (and d!396330 (not c!228212)) b!1386496))

(assert (= (and b!1386496 c!228213) b!1386497))

(assert (= (and b!1386496 (not c!228213)) b!1386498))

(declare-fun m!1560689 () Bool)

(assert (=> b!1386497 m!1560689))

(assert (=> b!1386498 m!1559777))

(assert (=> b!1386498 m!1559779))

(assert (=> b!1386498 m!1559777))

(assert (=> b!1386498 m!1559779))

(declare-fun m!1560691 () Bool)

(assert (=> b!1386498 m!1560691))

(assert (=> d!395538 d!396330))

(declare-fun d!396332 () Bool)

(declare-fun lt!461163 () Bool)

(assert (=> d!396332 (= lt!461163 (select (content!2059 (t!122150 lt!460291)) lt!460293))))

(declare-fun e!885736 () Bool)

(assert (=> d!396332 (= lt!461163 e!885736)))

(declare-fun res!625524 () Bool)

(assert (=> d!396332 (=> (not res!625524) (not e!885736))))

(assert (=> d!396332 (= res!625524 ((_ is Cons!14059) (t!122150 lt!460291)))))

(assert (=> d!396332 (= (contains!2683 (t!122150 lt!460291) lt!460293) lt!461163)))

(declare-fun b!1386499 () Bool)

(declare-fun e!885735 () Bool)

(assert (=> b!1386499 (= e!885736 e!885735)))

(declare-fun res!625523 () Bool)

(assert (=> b!1386499 (=> res!625523 e!885735)))

(assert (=> b!1386499 (= res!625523 (= (h!19460 (t!122150 lt!460291)) lt!460293))))

(declare-fun b!1386500 () Bool)

(assert (=> b!1386500 (= e!885735 (contains!2683 (t!122150 (t!122150 lt!460291)) lt!460293))))

(assert (= (and d!396332 res!625524) b!1386499))

(assert (= (and b!1386499 (not res!625523)) b!1386500))

(assert (=> d!396332 m!1559643))

(declare-fun m!1560693 () Bool)

(assert (=> d!396332 m!1560693))

(declare-fun m!1560695 () Bool)

(assert (=> b!1386500 m!1560695))

(assert (=> b!1384748 d!396332))

(assert (=> b!1385132 d!396032))

(declare-fun d!396334 () Bool)

(assert (=> d!396334 (= (inv!15 (value!79030 t2!34)) (= (charsToBigInt!0 (text!18124 (value!79030 t2!34)) 0) (value!79025 (value!79030 t2!34))))))

(declare-fun bs!337072 () Bool)

(assert (= bs!337072 d!396334))

(declare-fun m!1560697 () Bool)

(assert (=> bs!337072 m!1560697))

(assert (=> b!1385137 d!396334))

(declare-fun d!396336 () Bool)

(declare-fun c!228216 () Bool)

(assert (=> d!396336 (= c!228216 ((_ is Node!4630) (c!227730 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 t1!34))) (value!79030 t1!34)))))))

(declare-fun e!885741 () Bool)

(assert (=> d!396336 (= (inv!18402 (c!227730 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 t1!34))) (value!79030 t1!34)))) e!885741)))

(declare-fun b!1386507 () Bool)

(declare-fun inv!18406 (Conc!4630) Bool)

(assert (=> b!1386507 (= e!885741 (inv!18406 (c!227730 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 t1!34))) (value!79030 t1!34)))))))

(declare-fun b!1386508 () Bool)

(declare-fun e!885742 () Bool)

(assert (=> b!1386508 (= e!885741 e!885742)))

(declare-fun res!625527 () Bool)

(assert (=> b!1386508 (= res!625527 (not ((_ is Leaf!7044) (c!227730 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 t1!34))) (value!79030 t1!34))))))))

(assert (=> b!1386508 (=> res!625527 e!885742)))

(declare-fun b!1386509 () Bool)

(declare-fun inv!18407 (Conc!4630) Bool)

(assert (=> b!1386509 (= e!885742 (inv!18407 (c!227730 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 t1!34))) (value!79030 t1!34)))))))

(assert (= (and d!396336 c!228216) b!1386507))

(assert (= (and d!396336 (not c!228216)) b!1386508))

(assert (= (and b!1386508 (not res!625527)) b!1386509))

(declare-fun m!1560699 () Bool)

(assert (=> b!1386507 m!1560699))

(declare-fun m!1560701 () Bool)

(assert (=> b!1386509 m!1560701))

(assert (=> b!1385064 d!396336))

(declare-fun d!396338 () Bool)

(declare-fun lt!461164 () Bool)

(assert (=> d!396338 (= lt!461164 (select (content!2059 (t!122150 lt!460285)) lt!460307))))

(declare-fun e!885744 () Bool)

(assert (=> d!396338 (= lt!461164 e!885744)))

(declare-fun res!625529 () Bool)

(assert (=> d!396338 (=> (not res!625529) (not e!885744))))

(assert (=> d!396338 (= res!625529 ((_ is Cons!14059) (t!122150 lt!460285)))))

(assert (=> d!396338 (= (contains!2683 (t!122150 lt!460285) lt!460307) lt!461164)))

(declare-fun b!1386510 () Bool)

(declare-fun e!885743 () Bool)

(assert (=> b!1386510 (= e!885744 e!885743)))

(declare-fun res!625528 () Bool)

(assert (=> b!1386510 (=> res!625528 e!885743)))

(assert (=> b!1386510 (= res!625528 (= (h!19460 (t!122150 lt!460285)) lt!460307))))

(declare-fun b!1386511 () Bool)

(assert (=> b!1386511 (= e!885743 (contains!2683 (t!122150 (t!122150 lt!460285)) lt!460307))))

(assert (= (and d!396338 res!625529) b!1386510))

(assert (= (and b!1386510 (not res!625528)) b!1386511))

(declare-fun m!1560703 () Bool)

(assert (=> d!396338 m!1560703))

(declare-fun m!1560705 () Bool)

(assert (=> d!396338 m!1560705))

(declare-fun m!1560707 () Bool)

(assert (=> b!1386511 m!1560707))

(assert (=> b!1385115 d!396338))

(declare-fun d!396340 () Bool)

(declare-fun c!228219 () Bool)

(assert (=> d!396340 (= c!228219 ((_ is Nil!14060) rules!2550))))

(declare-fun e!885747 () (InoxSet Rule!4670))

(assert (=> d!396340 (= (content!2060 rules!2550) e!885747)))

(declare-fun b!1386516 () Bool)

(assert (=> b!1386516 (= e!885747 ((as const (Array Rule!4670 Bool)) false))))

(declare-fun b!1386517 () Bool)

(assert (=> b!1386517 (= e!885747 ((_ map or) (store ((as const (Array Rule!4670 Bool)) false) (h!19461 rules!2550) true) (content!2060 (t!122151 rules!2550))))))

(assert (= (and d!396340 c!228219) b!1386516))

(assert (= (and d!396340 (not c!228219)) b!1386517))

(declare-fun m!1560709 () Bool)

(assert (=> b!1386517 m!1560709))

(declare-fun m!1560711 () Bool)

(assert (=> b!1386517 m!1560711))

(assert (=> d!395374 d!396340))

(declare-fun b!1386519 () Bool)

(declare-fun e!885748 () List!14125)

(declare-fun e!885749 () List!14125)

(assert (=> b!1386519 (= e!885748 e!885749)))

(declare-fun c!228221 () Bool)

(assert (=> b!1386519 (= c!228221 ((_ is Leaf!7044) (c!227730 lt!460308)))))

(declare-fun d!396342 () Bool)

(declare-fun c!228220 () Bool)

(assert (=> d!396342 (= c!228220 ((_ is Empty!4630) (c!227730 lt!460308)))))

(assert (=> d!396342 (= (list!5450 (c!227730 lt!460308)) e!885748)))

(declare-fun b!1386520 () Bool)

(assert (=> b!1386520 (= e!885749 (list!5453 (xs!7357 (c!227730 lt!460308))))))

(declare-fun b!1386518 () Bool)

(assert (=> b!1386518 (= e!885748 Nil!14059)))

(declare-fun b!1386521 () Bool)

(assert (=> b!1386521 (= e!885749 (++!3646 (list!5450 (left!12017 (c!227730 lt!460308))) (list!5450 (right!12347 (c!227730 lt!460308)))))))

(assert (= (and d!396342 c!228220) b!1386518))

(assert (= (and d!396342 (not c!228220)) b!1386519))

(assert (= (and b!1386519 c!228221) b!1386520))

(assert (= (and b!1386519 (not c!228221)) b!1386521))

(declare-fun m!1560713 () Bool)

(assert (=> b!1386520 m!1560713))

(declare-fun m!1560715 () Bool)

(assert (=> b!1386521 m!1560715))

(declare-fun m!1560717 () Bool)

(assert (=> b!1386521 m!1560717))

(assert (=> b!1386521 m!1560715))

(assert (=> b!1386521 m!1560717))

(declare-fun m!1560719 () Bool)

(assert (=> b!1386521 m!1560719))

(assert (=> d!395554 d!396342))

(declare-fun d!396344 () Bool)

(declare-fun lt!461165 () Bool)

(assert (=> d!396344 (= lt!461165 (select (content!2060 rules!2550) (rule!4194 (_1!7714 (get!4370 lt!460529)))))))

(declare-fun e!885750 () Bool)

(assert (=> d!396344 (= lt!461165 e!885750)))

(declare-fun res!625530 () Bool)

(assert (=> d!396344 (=> (not res!625530) (not e!885750))))

(assert (=> d!396344 (= res!625530 ((_ is Cons!14060) rules!2550))))

(assert (=> d!396344 (= (contains!2684 rules!2550 (rule!4194 (_1!7714 (get!4370 lt!460529)))) lt!461165)))

(declare-fun b!1386522 () Bool)

(declare-fun e!885751 () Bool)

(assert (=> b!1386522 (= e!885750 e!885751)))

(declare-fun res!625531 () Bool)

(assert (=> b!1386522 (=> res!625531 e!885751)))

(assert (=> b!1386522 (= res!625531 (= (h!19461 rules!2550) (rule!4194 (_1!7714 (get!4370 lt!460529)))))))

(declare-fun b!1386523 () Bool)

(assert (=> b!1386523 (= e!885751 (contains!2684 (t!122151 rules!2550) (rule!4194 (_1!7714 (get!4370 lt!460529)))))))

(assert (= (and d!396344 res!625530) b!1386522))

(assert (= (and b!1386522 (not res!625531)) b!1386523))

(assert (=> d!396344 m!1557837))

(declare-fun m!1560721 () Bool)

(assert (=> d!396344 m!1560721))

(declare-fun m!1560723 () Bool)

(assert (=> b!1386523 m!1560723))

(assert (=> b!1385086 d!396344))

(assert (=> b!1385086 d!396026))

(declare-fun bs!337073 () Bool)

(declare-fun d!396346 () Bool)

(assert (= bs!337073 (and d!396346 b!1384356)))

(declare-fun lambda!59694 () Int)

(assert (=> bs!337073 (not (= lambda!59694 lambda!59596))))

(declare-fun bs!337074 () Bool)

(assert (= bs!337074 (and d!396346 d!396286)))

(assert (=> bs!337074 (not (= lambda!59694 lambda!59685))))

(declare-fun bs!337075 () Bool)

(assert (= bs!337075 (and d!396346 d!396288)))

(assert (=> bs!337075 (not (= lambda!59694 lambda!59688))))

(declare-fun bs!337076 () Bool)

(assert (= bs!337076 (and d!396346 d!395598)))

(assert (=> bs!337076 (not (= lambda!59694 lambda!59638))))

(declare-fun bs!337077 () Bool)

(assert (= bs!337077 (and d!396346 d!396044)))

(assert (=> bs!337077 (= lambda!59694 lambda!59681)))

(declare-fun bs!337078 () Bool)

(assert (= bs!337078 (and d!396346 b!1384378)))

(assert (=> bs!337078 (= lambda!59694 lambda!59597)))

(declare-fun bs!337079 () Bool)

(assert (= bs!337079 (and d!396346 d!395600)))

(assert (=> bs!337079 (not (= lambda!59694 lambda!59641))))

(assert (=> d!396346 true))

(declare-fun lt!461168 () Bool)

(assert (=> d!396346 (= lt!461168 (rulesValidInductive!782 thiss!19762 rules!2550))))

(assert (=> d!396346 (= lt!461168 (forall!3423 rules!2550 lambda!59694))))

(assert (=> d!396346 (= (rulesValid!911 thiss!19762 rules!2550) lt!461168)))

(declare-fun bs!337080 () Bool)

(assert (= bs!337080 d!396346))

(assert (=> bs!337080 m!1558387))

(declare-fun m!1560725 () Bool)

(assert (=> bs!337080 m!1560725))

(assert (=> d!395562 d!396346))

(declare-fun d!396348 () Bool)

(declare-fun lt!461169 () Bool)

(assert (=> d!396348 (= lt!461169 (select (content!2060 (t!122151 rules!2550)) (rule!4194 t2!34)))))

(declare-fun e!885752 () Bool)

(assert (=> d!396348 (= lt!461169 e!885752)))

(declare-fun res!625532 () Bool)

(assert (=> d!396348 (=> (not res!625532) (not e!885752))))

(assert (=> d!396348 (= res!625532 ((_ is Cons!14060) (t!122151 rules!2550)))))

(assert (=> d!396348 (= (contains!2684 (t!122151 rules!2550) (rule!4194 t2!34)) lt!461169)))

(declare-fun b!1386524 () Bool)

(declare-fun e!885753 () Bool)

(assert (=> b!1386524 (= e!885752 e!885753)))

(declare-fun res!625533 () Bool)

(assert (=> b!1386524 (=> res!625533 e!885753)))

(assert (=> b!1386524 (= res!625533 (= (h!19461 (t!122151 rules!2550)) (rule!4194 t2!34)))))

(declare-fun b!1386525 () Bool)

(assert (=> b!1386525 (= e!885753 (contains!2684 (t!122151 (t!122151 rules!2550)) (rule!4194 t2!34)))))

(assert (= (and d!396348 res!625532) b!1386524))

(assert (= (and b!1386524 (not res!625533)) b!1386525))

(assert (=> d!396348 m!1560711))

(declare-fun m!1560727 () Bool)

(assert (=> d!396348 m!1560727))

(declare-fun m!1560729 () Bool)

(assert (=> b!1386525 m!1560729))

(assert (=> b!1384598 d!396348))

(declare-fun b!1386526 () Bool)

(declare-fun e!885754 () List!14125)

(declare-fun call!92778 () List!14125)

(assert (=> b!1386526 (= e!885754 call!92778)))

(declare-fun b!1386527 () Bool)

(declare-fun e!885755 () List!14125)

(declare-fun call!92777 () List!14125)

(assert (=> b!1386527 (= e!885755 call!92777)))

(declare-fun b!1386528 () Bool)

(declare-fun e!885756 () List!14125)

(assert (=> b!1386528 (= e!885756 (Cons!14059 (c!227731 (ite c!227824 (reg!4078 (regex!2435 (rule!4194 t1!34))) (ite c!227823 (regTwo!8011 (regex!2435 (rule!4194 t1!34))) (regOne!8010 (regex!2435 (rule!4194 t1!34)))))) Nil!14059))))

(declare-fun b!1386529 () Bool)

(assert (=> b!1386529 (= e!885754 call!92778)))

(declare-fun c!228223 () Bool)

(declare-fun call!92776 () List!14125)

(declare-fun bm!92771 () Bool)

(declare-fun call!92779 () List!14125)

(assert (=> bm!92771 (= call!92778 (++!3646 (ite c!228223 call!92776 call!92779) (ite c!228223 call!92779 call!92776)))))

(declare-fun c!228224 () Bool)

(declare-fun bm!92772 () Bool)

(assert (=> bm!92772 (= call!92777 (usedCharacters!246 (ite c!228224 (reg!4078 (ite c!227824 (reg!4078 (regex!2435 (rule!4194 t1!34))) (ite c!227823 (regTwo!8011 (regex!2435 (rule!4194 t1!34))) (regOne!8010 (regex!2435 (rule!4194 t1!34)))))) (ite c!228223 (regTwo!8011 (ite c!227824 (reg!4078 (regex!2435 (rule!4194 t1!34))) (ite c!227823 (regTwo!8011 (regex!2435 (rule!4194 t1!34))) (regOne!8010 (regex!2435 (rule!4194 t1!34)))))) (regOne!8010 (ite c!227824 (reg!4078 (regex!2435 (rule!4194 t1!34))) (ite c!227823 (regTwo!8011 (regex!2435 (rule!4194 t1!34))) (regOne!8010 (regex!2435 (rule!4194 t1!34))))))))))))

(declare-fun bm!92773 () Bool)

(assert (=> bm!92773 (= call!92776 (usedCharacters!246 (ite c!228223 (regOne!8011 (ite c!227824 (reg!4078 (regex!2435 (rule!4194 t1!34))) (ite c!227823 (regTwo!8011 (regex!2435 (rule!4194 t1!34))) (regOne!8010 (regex!2435 (rule!4194 t1!34)))))) (regTwo!8010 (ite c!227824 (reg!4078 (regex!2435 (rule!4194 t1!34))) (ite c!227823 (regTwo!8011 (regex!2435 (rule!4194 t1!34))) (regOne!8010 (regex!2435 (rule!4194 t1!34)))))))))))

(declare-fun b!1386531 () Bool)

(assert (=> b!1386531 (= e!885755 e!885754)))

(assert (=> b!1386531 (= c!228223 ((_ is Union!3749) (ite c!227824 (reg!4078 (regex!2435 (rule!4194 t1!34))) (ite c!227823 (regTwo!8011 (regex!2435 (rule!4194 t1!34))) (regOne!8010 (regex!2435 (rule!4194 t1!34)))))))))

(declare-fun bm!92774 () Bool)

(assert (=> bm!92774 (= call!92779 call!92777)))

(declare-fun b!1386532 () Bool)

(assert (=> b!1386532 (= c!228224 ((_ is Star!3749) (ite c!227824 (reg!4078 (regex!2435 (rule!4194 t1!34))) (ite c!227823 (regTwo!8011 (regex!2435 (rule!4194 t1!34))) (regOne!8010 (regex!2435 (rule!4194 t1!34)))))))))

(assert (=> b!1386532 (= e!885756 e!885755)))

(declare-fun b!1386533 () Bool)

(declare-fun e!885757 () List!14125)

(assert (=> b!1386533 (= e!885757 e!885756)))

(declare-fun c!228222 () Bool)

(assert (=> b!1386533 (= c!228222 ((_ is ElementMatch!3749) (ite c!227824 (reg!4078 (regex!2435 (rule!4194 t1!34))) (ite c!227823 (regTwo!8011 (regex!2435 (rule!4194 t1!34))) (regOne!8010 (regex!2435 (rule!4194 t1!34)))))))))

(declare-fun d!396350 () Bool)

(declare-fun c!228225 () Bool)

(assert (=> d!396350 (= c!228225 (or ((_ is EmptyExpr!3749) (ite c!227824 (reg!4078 (regex!2435 (rule!4194 t1!34))) (ite c!227823 (regTwo!8011 (regex!2435 (rule!4194 t1!34))) (regOne!8010 (regex!2435 (rule!4194 t1!34)))))) ((_ is EmptyLang!3749) (ite c!227824 (reg!4078 (regex!2435 (rule!4194 t1!34))) (ite c!227823 (regTwo!8011 (regex!2435 (rule!4194 t1!34))) (regOne!8010 (regex!2435 (rule!4194 t1!34))))))))))

(assert (=> d!396350 (= (usedCharacters!246 (ite c!227824 (reg!4078 (regex!2435 (rule!4194 t1!34))) (ite c!227823 (regTwo!8011 (regex!2435 (rule!4194 t1!34))) (regOne!8010 (regex!2435 (rule!4194 t1!34)))))) e!885757)))

(declare-fun b!1386530 () Bool)

(assert (=> b!1386530 (= e!885757 Nil!14059)))

(assert (= (and d!396350 c!228225) b!1386530))

(assert (= (and d!396350 (not c!228225)) b!1386533))

(assert (= (and b!1386533 c!228222) b!1386528))

(assert (= (and b!1386533 (not c!228222)) b!1386532))

(assert (= (and b!1386532 c!228224) b!1386527))

(assert (= (and b!1386532 (not c!228224)) b!1386531))

(assert (= (and b!1386531 c!228223) b!1386526))

(assert (= (and b!1386531 (not c!228223)) b!1386529))

(assert (= (or b!1386526 b!1386529) bm!92773))

(assert (= (or b!1386526 b!1386529) bm!92774))

(assert (= (or b!1386526 b!1386529) bm!92771))

(assert (= (or b!1386527 bm!92774) bm!92772))

(declare-fun m!1560731 () Bool)

(assert (=> bm!92771 m!1560731))

(declare-fun m!1560733 () Bool)

(assert (=> bm!92772 m!1560733))

(declare-fun m!1560735 () Bool)

(assert (=> bm!92773 m!1560735))

(assert (=> bm!92655 d!396350))

(declare-fun d!396352 () Bool)

(assert (=> d!396352 (= (list!5446 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 t2!34))) (value!79030 t2!34))) (list!5450 (c!227730 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 t2!34))) (value!79030 t2!34)))))))

(declare-fun bs!337081 () Bool)

(assert (= bs!337081 d!396352))

(declare-fun m!1560737 () Bool)

(assert (=> bs!337081 m!1560737))

(assert (=> b!1385146 d!396352))

(declare-fun d!396354 () Bool)

(declare-fun c!228226 () Bool)

(assert (=> d!396354 (= c!228226 ((_ is Nil!14059) lt!460291))))

(declare-fun e!885758 () (InoxSet C!7788))

(assert (=> d!396354 (= (content!2059 lt!460291) e!885758)))

(declare-fun b!1386534 () Bool)

(assert (=> b!1386534 (= e!885758 ((as const (Array C!7788 Bool)) false))))

(declare-fun b!1386535 () Bool)

(assert (=> b!1386535 (= e!885758 ((_ map or) (store ((as const (Array C!7788 Bool)) false) (h!19460 lt!460291) true) (content!2059 (t!122150 lt!460291))))))

(assert (= (and d!396354 c!228226) b!1386534))

(assert (= (and d!396354 (not c!228226)) b!1386535))

(declare-fun m!1560739 () Bool)

(assert (=> b!1386535 m!1560739))

(assert (=> b!1386535 m!1559643))

(assert (=> d!395420 d!396354))

(declare-fun d!396356 () Bool)

(assert (=> d!396356 (= (list!5446 lt!460572) (list!5450 (c!227730 lt!460572)))))

(declare-fun bs!337082 () Bool)

(assert (= bs!337082 d!396356))

(declare-fun m!1560741 () Bool)

(assert (=> bs!337082 m!1560741))

(assert (=> d!395626 d!396356))

(assert (=> b!1385046 d!396324))

(declare-fun d!396358 () Bool)

(assert (=> d!396358 (= (apply!3519 (transformation!2435 (rule!4194 (_1!7714 (get!4370 lt!460513)))) (seqFromList!1643 (originalCharacters!3297 (_1!7714 (get!4370 lt!460513))))) (dynLambda!6441 (toValue!3718 (transformation!2435 (rule!4194 (_1!7714 (get!4370 lt!460513))))) (seqFromList!1643 (originalCharacters!3297 (_1!7714 (get!4370 lt!460513))))))))

(declare-fun b_lambda!42981 () Bool)

(assert (=> (not b_lambda!42981) (not d!396358)))

(declare-fun tb!72717 () Bool)

(declare-fun t!122275 () Bool)

(assert (=> (and b!1384366 (= (toValue!3718 (transformation!2435 (rule!4194 t1!34))) (toValue!3718 (transformation!2435 (rule!4194 (_1!7714 (get!4370 lt!460513)))))) t!122275) tb!72717))

(declare-fun result!88344 () Bool)

(assert (=> tb!72717 (= result!88344 (inv!21 (dynLambda!6441 (toValue!3718 (transformation!2435 (rule!4194 (_1!7714 (get!4370 lt!460513))))) (seqFromList!1643 (originalCharacters!3297 (_1!7714 (get!4370 lt!460513)))))))))

(declare-fun m!1560743 () Bool)

(assert (=> tb!72717 m!1560743))

(assert (=> d!396358 t!122275))

(declare-fun b_and!92915 () Bool)

(assert (= b_and!92899 (and (=> t!122275 result!88344) b_and!92915)))

(declare-fun tb!72719 () Bool)

(declare-fun t!122277 () Bool)

(assert (=> (and b!1384355 (= (toValue!3718 (transformation!2435 (h!19461 rules!2550))) (toValue!3718 (transformation!2435 (rule!4194 (_1!7714 (get!4370 lt!460513)))))) t!122277) tb!72719))

(declare-fun result!88346 () Bool)

(assert (= result!88346 result!88344))

(assert (=> d!396358 t!122277))

(declare-fun b_and!92917 () Bool)

(assert (= b_and!92901 (and (=> t!122277 result!88346) b_and!92917)))

(declare-fun tb!72721 () Bool)

(declare-fun t!122279 () Bool)

(assert (=> (and b!1384383 (= (toValue!3718 (transformation!2435 (rule!4194 t2!34))) (toValue!3718 (transformation!2435 (rule!4194 (_1!7714 (get!4370 lt!460513)))))) t!122279) tb!72721))

(declare-fun result!88348 () Bool)

(assert (= result!88348 result!88344))

(assert (=> d!396358 t!122279))

(declare-fun b_and!92919 () Bool)

(assert (= b_and!92903 (and (=> t!122279 result!88348) b_and!92919)))

(declare-fun tb!72723 () Bool)

(declare-fun t!122281 () Bool)

(assert (=> (and b!1385248 (= (toValue!3718 (transformation!2435 (h!19461 (t!122151 rules!2550)))) (toValue!3718 (transformation!2435 (rule!4194 (_1!7714 (get!4370 lt!460513)))))) t!122281) tb!72723))

(declare-fun result!88350 () Bool)

(assert (= result!88350 result!88344))

(assert (=> d!396358 t!122281))

(declare-fun b_and!92921 () Bool)

(assert (= b_and!92905 (and (=> t!122281 result!88350) b_and!92921)))

(assert (=> d!396358 m!1558365))

(declare-fun m!1560745 () Bool)

(assert (=> d!396358 m!1560745))

(assert (=> b!1385046 d!396358))

(declare-fun d!396360 () Bool)

(assert (=> d!396360 (= (seqFromList!1643 (originalCharacters!3297 (_1!7714 (get!4370 lt!460513)))) (fromListB!723 (originalCharacters!3297 (_1!7714 (get!4370 lt!460513)))))))

(declare-fun bs!337083 () Bool)

(assert (= bs!337083 d!396360))

(declare-fun m!1560747 () Bool)

(assert (=> bs!337083 m!1560747))

(assert (=> b!1385046 d!396360))

(declare-fun b!1386545 () Bool)

(declare-fun e!885764 () List!14127)

(declare-fun e!885765 () List!14127)

(assert (=> b!1386545 (= e!885764 e!885765)))

(declare-fun c!228232 () Bool)

(assert (=> b!1386545 (= c!228232 ((_ is Leaf!7045) (c!227732 (_1!7713 lt!460290))))))

(declare-fun b!1386544 () Bool)

(assert (=> b!1386544 (= e!885764 Nil!14061)))

(declare-fun b!1386547 () Bool)

(assert (=> b!1386547 (= e!885765 (++!3650 (list!5449 (left!12018 (c!227732 (_1!7713 lt!460290)))) (list!5449 (right!12348 (c!227732 (_1!7713 lt!460290))))))))

(declare-fun d!396362 () Bool)

(declare-fun c!228231 () Bool)

(assert (=> d!396362 (= c!228231 ((_ is Empty!4631) (c!227732 (_1!7713 lt!460290))))))

(assert (=> d!396362 (= (list!5449 (c!227732 (_1!7713 lt!460290))) e!885764)))

(declare-fun b!1386546 () Bool)

(declare-fun list!5454 (IArray!9267) List!14127)

(assert (=> b!1386546 (= e!885765 (list!5454 (xs!7358 (c!227732 (_1!7713 lt!460290)))))))

(assert (= (and d!396362 c!228231) b!1386544))

(assert (= (and d!396362 (not c!228231)) b!1386545))

(assert (= (and b!1386545 c!228232) b!1386546))

(assert (= (and b!1386545 (not c!228232)) b!1386547))

(declare-fun m!1560749 () Bool)

(assert (=> b!1386547 m!1560749))

(declare-fun m!1560751 () Bool)

(assert (=> b!1386547 m!1560751))

(assert (=> b!1386547 m!1560749))

(assert (=> b!1386547 m!1560751))

(declare-fun m!1560753 () Bool)

(assert (=> b!1386547 m!1560753))

(declare-fun m!1560755 () Bool)

(assert (=> b!1386546 m!1560755))

(assert (=> d!395376 d!396362))

(declare-fun b!1386548 () Bool)

(declare-fun res!625534 () Bool)

(declare-fun e!885767 () Bool)

(assert (=> b!1386548 (=> res!625534 e!885767)))

(assert (=> b!1386548 (= res!625534 (not ((_ is Concat!6275) (ite c!227889 (reg!4078 (regex!2435 (rule!4194 t1!34))) (ite c!227888 (regTwo!8011 (regex!2435 (rule!4194 t1!34))) (regTwo!8010 (regex!2435 (rule!4194 t1!34))))))))))

(declare-fun e!885771 () Bool)

(assert (=> b!1386548 (= e!885771 e!885767)))

(declare-fun b!1386549 () Bool)

(declare-fun e!885769 () Bool)

(declare-fun call!92782 () Bool)

(assert (=> b!1386549 (= e!885769 call!92782)))

(declare-fun bm!92775 () Bool)

(declare-fun call!92780 () Bool)

(assert (=> bm!92775 (= call!92782 call!92780)))

(declare-fun d!396364 () Bool)

(declare-fun res!625538 () Bool)

(declare-fun e!885766 () Bool)

(assert (=> d!396364 (=> res!625538 e!885766)))

(assert (=> d!396364 (= res!625538 ((_ is ElementMatch!3749) (ite c!227889 (reg!4078 (regex!2435 (rule!4194 t1!34))) (ite c!227888 (regTwo!8011 (regex!2435 (rule!4194 t1!34))) (regTwo!8010 (regex!2435 (rule!4194 t1!34)))))))))

(assert (=> d!396364 (= (validRegex!1633 (ite c!227889 (reg!4078 (regex!2435 (rule!4194 t1!34))) (ite c!227888 (regTwo!8011 (regex!2435 (rule!4194 t1!34))) (regTwo!8010 (regex!2435 (rule!4194 t1!34)))))) e!885766)))

(declare-fun b!1386550 () Bool)

(declare-fun res!625535 () Bool)

(declare-fun e!885772 () Bool)

(assert (=> b!1386550 (=> (not res!625535) (not e!885772))))

(declare-fun call!92781 () Bool)

(assert (=> b!1386550 (= res!625535 call!92781)))

(assert (=> b!1386550 (= e!885771 e!885772)))

(declare-fun c!228234 () Bool)

(declare-fun bm!92776 () Bool)

(declare-fun c!228233 () Bool)

(assert (=> bm!92776 (= call!92780 (validRegex!1633 (ite c!228234 (reg!4078 (ite c!227889 (reg!4078 (regex!2435 (rule!4194 t1!34))) (ite c!227888 (regTwo!8011 (regex!2435 (rule!4194 t1!34))) (regTwo!8010 (regex!2435 (rule!4194 t1!34)))))) (ite c!228233 (regTwo!8011 (ite c!227889 (reg!4078 (regex!2435 (rule!4194 t1!34))) (ite c!227888 (regTwo!8011 (regex!2435 (rule!4194 t1!34))) (regTwo!8010 (regex!2435 (rule!4194 t1!34)))))) (regTwo!8010 (ite c!227889 (reg!4078 (regex!2435 (rule!4194 t1!34))) (ite c!227888 (regTwo!8011 (regex!2435 (rule!4194 t1!34))) (regTwo!8010 (regex!2435 (rule!4194 t1!34))))))))))))

(declare-fun b!1386551 () Bool)

(assert (=> b!1386551 (= e!885772 call!92782)))

(declare-fun b!1386552 () Bool)

(declare-fun e!885770 () Bool)

(assert (=> b!1386552 (= e!885770 e!885771)))

(assert (=> b!1386552 (= c!228233 ((_ is Union!3749) (ite c!227889 (reg!4078 (regex!2435 (rule!4194 t1!34))) (ite c!227888 (regTwo!8011 (regex!2435 (rule!4194 t1!34))) (regTwo!8010 (regex!2435 (rule!4194 t1!34)))))))))

(declare-fun b!1386553 () Bool)

(declare-fun e!885768 () Bool)

(assert (=> b!1386553 (= e!885768 call!92780)))

(declare-fun bm!92777 () Bool)

(assert (=> bm!92777 (= call!92781 (validRegex!1633 (ite c!228233 (regOne!8011 (ite c!227889 (reg!4078 (regex!2435 (rule!4194 t1!34))) (ite c!227888 (regTwo!8011 (regex!2435 (rule!4194 t1!34))) (regTwo!8010 (regex!2435 (rule!4194 t1!34)))))) (regOne!8010 (ite c!227889 (reg!4078 (regex!2435 (rule!4194 t1!34))) (ite c!227888 (regTwo!8011 (regex!2435 (rule!4194 t1!34))) (regTwo!8010 (regex!2435 (rule!4194 t1!34)))))))))))

(declare-fun b!1386554 () Bool)

(assert (=> b!1386554 (= e!885767 e!885769)))

(declare-fun res!625536 () Bool)

(assert (=> b!1386554 (=> (not res!625536) (not e!885769))))

(assert (=> b!1386554 (= res!625536 call!92781)))

(declare-fun b!1386555 () Bool)

(assert (=> b!1386555 (= e!885770 e!885768)))

(declare-fun res!625537 () Bool)

(assert (=> b!1386555 (= res!625537 (not (nullable!1213 (reg!4078 (ite c!227889 (reg!4078 (regex!2435 (rule!4194 t1!34))) (ite c!227888 (regTwo!8011 (regex!2435 (rule!4194 t1!34))) (regTwo!8010 (regex!2435 (rule!4194 t1!34)))))))))))

(assert (=> b!1386555 (=> (not res!625537) (not e!885768))))

(declare-fun b!1386556 () Bool)

(assert (=> b!1386556 (= e!885766 e!885770)))

(assert (=> b!1386556 (= c!228234 ((_ is Star!3749) (ite c!227889 (reg!4078 (regex!2435 (rule!4194 t1!34))) (ite c!227888 (regTwo!8011 (regex!2435 (rule!4194 t1!34))) (regTwo!8010 (regex!2435 (rule!4194 t1!34)))))))))

(assert (= (and d!396364 (not res!625538)) b!1386556))

(assert (= (and b!1386556 c!228234) b!1386555))

(assert (= (and b!1386556 (not c!228234)) b!1386552))

(assert (= (and b!1386555 res!625537) b!1386553))

(assert (= (and b!1386552 c!228233) b!1386550))

(assert (= (and b!1386552 (not c!228233)) b!1386548))

(assert (= (and b!1386550 res!625535) b!1386551))

(assert (= (and b!1386548 (not res!625534)) b!1386554))

(assert (= (and b!1386554 res!625536) b!1386549))

(assert (= (or b!1386550 b!1386554) bm!92777))

(assert (= (or b!1386551 b!1386549) bm!92775))

(assert (= (or b!1386553 bm!92775) bm!92776))

(declare-fun m!1560757 () Bool)

(assert (=> bm!92776 m!1560757))

(declare-fun m!1560759 () Bool)

(assert (=> bm!92777 m!1560759))

(declare-fun m!1560761 () Bool)

(assert (=> b!1386555 m!1560761))

(assert (=> bm!92676 d!396364))

(declare-fun d!396366 () Bool)

(declare-fun c!228235 () Bool)

(assert (=> d!396366 (= c!228235 ((_ is Nil!14059) lt!460300))))

(declare-fun e!885773 () (InoxSet C!7788))

(assert (=> d!396366 (= (content!2059 lt!460300) e!885773)))

(declare-fun b!1386557 () Bool)

(assert (=> b!1386557 (= e!885773 ((as const (Array C!7788 Bool)) false))))

(declare-fun b!1386558 () Bool)

(assert (=> b!1386558 (= e!885773 ((_ map or) (store ((as const (Array C!7788 Bool)) false) (h!19460 lt!460300) true) (content!2059 (t!122150 lt!460300))))))

(assert (= (and d!396366 c!228235) b!1386557))

(assert (= (and d!396366 (not c!228235)) b!1386558))

(declare-fun m!1560763 () Bool)

(assert (=> b!1386558 m!1560763))

(declare-fun m!1560765 () Bool)

(assert (=> b!1386558 m!1560765))

(assert (=> d!395602 d!396366))

(declare-fun d!396368 () Bool)

(assert (=> d!396368 (= (nullable!1213 lt!460292) (nullableFct!288 lt!460292))))

(declare-fun bs!337084 () Bool)

(assert (= bs!337084 d!396368))

(declare-fun m!1560767 () Bool)

(assert (=> bs!337084 m!1560767))

(assert (=> b!1384580 d!396368))

(assert (=> b!1385077 d!395624))

(declare-fun d!396370 () Bool)

(assert (=> d!396370 (= (inv!16 (value!79030 t2!34)) (= (charsToInt!0 (text!18122 (value!79030 t2!34))) (value!79021 (value!79030 t2!34))))))

(declare-fun bs!337085 () Bool)

(assert (= bs!337085 d!396370))

(declare-fun m!1560769 () Bool)

(assert (=> bs!337085 m!1560769))

(assert (=> b!1385136 d!396370))

(declare-fun d!396372 () Bool)

(declare-fun c!228236 () Bool)

(assert (=> d!396372 (= c!228236 (isEmpty!8502 (tail!2010 lt!460287)))))

(declare-fun e!885774 () Bool)

(assert (=> d!396372 (= (prefixMatch!258 (derivativeStep!971 lt!460292 (head!2521 lt!460287)) (tail!2010 lt!460287)) e!885774)))

(declare-fun b!1386559 () Bool)

(assert (=> b!1386559 (= e!885774 (not (lostCause!347 (derivativeStep!971 lt!460292 (head!2521 lt!460287)))))))

(declare-fun b!1386560 () Bool)

(assert (=> b!1386560 (= e!885774 (prefixMatch!258 (derivativeStep!971 (derivativeStep!971 lt!460292 (head!2521 lt!460287)) (head!2521 (tail!2010 lt!460287))) (tail!2010 (tail!2010 lt!460287))))))

(assert (= (and d!396372 c!228236) b!1386559))

(assert (= (and d!396372 (not c!228236)) b!1386560))

(assert (=> d!396372 m!1558411))

(declare-fun m!1560771 () Bool)

(assert (=> d!396372 m!1560771))

(assert (=> b!1386559 m!1558409))

(declare-fun m!1560773 () Bool)

(assert (=> b!1386559 m!1560773))

(assert (=> b!1386560 m!1558411))

(declare-fun m!1560775 () Bool)

(assert (=> b!1386560 m!1560775))

(assert (=> b!1386560 m!1558409))

(assert (=> b!1386560 m!1560775))

(declare-fun m!1560777 () Bool)

(assert (=> b!1386560 m!1560777))

(assert (=> b!1386560 m!1558411))

(declare-fun m!1560779 () Bool)

(assert (=> b!1386560 m!1560779))

(assert (=> b!1386560 m!1560777))

(assert (=> b!1386560 m!1560779))

(declare-fun m!1560781 () Bool)

(assert (=> b!1386560 m!1560781))

(assert (=> b!1385059 d!396372))

(declare-fun b!1386561 () Bool)

(declare-fun c!228237 () Bool)

(assert (=> b!1386561 (= c!228237 ((_ is Union!3749) lt!460292))))

(declare-fun e!885777 () Regex!3749)

(declare-fun e!885775 () Regex!3749)

(assert (=> b!1386561 (= e!885777 e!885775)))

(declare-fun bm!92778 () Bool)

(declare-fun call!92784 () Regex!3749)

(declare-fun call!92783 () Regex!3749)

(assert (=> bm!92778 (= call!92784 call!92783)))

(declare-fun b!1386562 () Bool)

(declare-fun call!92785 () Regex!3749)

(declare-fun e!885776 () Regex!3749)

(assert (=> b!1386562 (= e!885776 (Union!3749 (Concat!6275 call!92785 (regTwo!8010 lt!460292)) call!92784))))

(declare-fun b!1386563 () Bool)

(assert (=> b!1386563 (= e!885776 (Union!3749 (Concat!6275 call!92784 (regTwo!8010 lt!460292)) EmptyLang!3749))))

(declare-fun b!1386564 () Bool)

(declare-fun e!885779 () Regex!3749)

(assert (=> b!1386564 (= e!885779 e!885777)))

(declare-fun c!228238 () Bool)

(assert (=> b!1386564 (= c!228238 ((_ is ElementMatch!3749) lt!460292))))

(declare-fun b!1386565 () Bool)

(declare-fun call!92786 () Regex!3749)

(assert (=> b!1386565 (= e!885775 (Union!3749 call!92785 call!92786))))

(declare-fun b!1386567 () Bool)

(declare-fun e!885778 () Regex!3749)

(assert (=> b!1386567 (= e!885775 e!885778)))

(declare-fun c!228241 () Bool)

(assert (=> b!1386567 (= c!228241 ((_ is Star!3749) lt!460292))))

(declare-fun c!228239 () Bool)

(declare-fun bm!92779 () Bool)

(assert (=> bm!92779 (= call!92786 (derivativeStep!971 (ite c!228237 (regTwo!8011 lt!460292) (ite c!228241 (reg!4078 lt!460292) (ite c!228239 (regTwo!8010 lt!460292) (regOne!8010 lt!460292)))) (head!2521 lt!460287)))))

(declare-fun bm!92780 () Bool)

(assert (=> bm!92780 (= call!92785 (derivativeStep!971 (ite c!228237 (regOne!8011 lt!460292) (regOne!8010 lt!460292)) (head!2521 lt!460287)))))

(declare-fun bm!92781 () Bool)

(assert (=> bm!92781 (= call!92783 call!92786)))

(declare-fun b!1386568 () Bool)

(assert (=> b!1386568 (= e!885779 EmptyLang!3749)))

(declare-fun b!1386569 () Bool)

(assert (=> b!1386569 (= e!885778 (Concat!6275 call!92783 lt!460292))))

(declare-fun b!1386570 () Bool)

(assert (=> b!1386570 (= c!228239 (nullable!1213 (regOne!8010 lt!460292)))))

(assert (=> b!1386570 (= e!885778 e!885776)))

(declare-fun b!1386566 () Bool)

(assert (=> b!1386566 (= e!885777 (ite (= (head!2521 lt!460287) (c!227731 lt!460292)) EmptyExpr!3749 EmptyLang!3749))))

(declare-fun d!396374 () Bool)

(declare-fun lt!461170 () Regex!3749)

(assert (=> d!396374 (validRegex!1633 lt!461170)))

(assert (=> d!396374 (= lt!461170 e!885779)))

(declare-fun c!228240 () Bool)

(assert (=> d!396374 (= c!228240 (or ((_ is EmptyExpr!3749) lt!460292) ((_ is EmptyLang!3749) lt!460292)))))

(assert (=> d!396374 (validRegex!1633 lt!460292)))

(assert (=> d!396374 (= (derivativeStep!971 lt!460292 (head!2521 lt!460287)) lt!461170)))

(assert (= (and d!396374 c!228240) b!1386568))

(assert (= (and d!396374 (not c!228240)) b!1386564))

(assert (= (and b!1386564 c!228238) b!1386566))

(assert (= (and b!1386564 (not c!228238)) b!1386561))

(assert (= (and b!1386561 c!228237) b!1386565))

(assert (= (and b!1386561 (not c!228237)) b!1386567))

(assert (= (and b!1386567 c!228241) b!1386569))

(assert (= (and b!1386567 (not c!228241)) b!1386570))

(assert (= (and b!1386570 c!228239) b!1386562))

(assert (= (and b!1386570 (not c!228239)) b!1386563))

(assert (= (or b!1386562 b!1386563) bm!92778))

(assert (= (or b!1386569 bm!92778) bm!92781))

(assert (= (or b!1386565 b!1386562) bm!92780))

(assert (= (or b!1386565 bm!92781) bm!92779))

(assert (=> bm!92779 m!1558407))

(declare-fun m!1560783 () Bool)

(assert (=> bm!92779 m!1560783))

(assert (=> bm!92780 m!1558407))

(declare-fun m!1560785 () Bool)

(assert (=> bm!92780 m!1560785))

(assert (=> b!1386570 m!1559605))

(declare-fun m!1560787 () Bool)

(assert (=> d!396374 m!1560787))

(assert (=> d!396374 m!1557817))

(assert (=> b!1385059 d!396374))

(declare-fun d!396376 () Bool)

(assert (=> d!396376 (= (head!2521 lt!460287) (h!19460 lt!460287))))

(assert (=> b!1385059 d!396376))

(declare-fun d!396378 () Bool)

(assert (=> d!396378 (= (tail!2010 lt!460287) (t!122150 lt!460287))))

(assert (=> b!1385059 d!396378))

(declare-fun d!396380 () Bool)

(assert (=> d!396380 (= (list!5445 (_1!7713 lt!460406)) (list!5449 (c!227732 (_1!7713 lt!460406))))))

(declare-fun bs!337086 () Bool)

(assert (= bs!337086 d!396380))

(declare-fun m!1560789 () Bool)

(assert (=> bs!337086 m!1560789))

(assert (=> b!1384773 d!396380))

(assert (=> b!1384773 d!395582))

(assert (=> b!1384773 d!395584))

(declare-fun d!396382 () Bool)

(declare-fun res!625539 () Bool)

(declare-fun e!885780 () Bool)

(assert (=> d!396382 (=> res!625539 e!885780)))

(assert (=> d!396382 (= res!625539 ((_ is Nil!14062) lt!460295))))

(assert (=> d!396382 (= (forall!3420 lt!460295 lambda!59613) e!885780)))

(declare-fun b!1386571 () Bool)

(declare-fun e!885781 () Bool)

(assert (=> b!1386571 (= e!885780 e!885781)))

(declare-fun res!625540 () Bool)

(assert (=> b!1386571 (=> (not res!625540) (not e!885781))))

(assert (=> b!1386571 (= res!625540 (dynLambda!6433 lambda!59613 (h!19463 lt!460295)))))

(declare-fun b!1386572 () Bool)

(assert (=> b!1386572 (= e!885781 (forall!3420 (t!122153 lt!460295) lambda!59613))))

(assert (= (and d!396382 (not res!625539)) b!1386571))

(assert (= (and b!1386571 res!625540) b!1386572))

(declare-fun b_lambda!42983 () Bool)

(assert (=> (not b_lambda!42983) (not b!1386571)))

(declare-fun m!1560791 () Bool)

(assert (=> b!1386571 m!1560791))

(declare-fun m!1560793 () Bool)

(assert (=> b!1386572 m!1560793))

(assert (=> d!395360 d!396382))

(declare-fun bs!337087 () Bool)

(declare-fun d!396384 () Bool)

(assert (= bs!337087 (and d!396384 d!396296)))

(declare-fun lambda!59695 () Int)

(assert (=> bs!337087 (= (and (= (toChars!3577 (transformation!2435 (rule!4194 t2!34))) (toChars!3577 (transformation!2435 (rule!4194 t1!34)))) (= (toValue!3718 (transformation!2435 (rule!4194 t2!34))) (toValue!3718 (transformation!2435 (rule!4194 t1!34))))) (= lambda!59695 lambda!59691))))

(assert (=> d!396384 true))

(assert (=> d!396384 (< (dynLambda!6442 order!8595 (toChars!3577 (transformation!2435 (rule!4194 t2!34)))) (dynLambda!6443 order!8597 lambda!59695))))

(assert (=> d!396384 true))

(assert (=> d!396384 (< (dynLambda!6444 order!8599 (toValue!3718 (transformation!2435 (rule!4194 t2!34)))) (dynLambda!6443 order!8597 lambda!59695))))

(assert (=> d!396384 (= (semiInverseModEq!942 (toChars!3577 (transformation!2435 (rule!4194 t2!34))) (toValue!3718 (transformation!2435 (rule!4194 t2!34)))) (Forall!547 lambda!59695))))

(declare-fun bs!337088 () Bool)

(assert (= bs!337088 d!396384))

(declare-fun m!1560795 () Bool)

(assert (=> bs!337088 m!1560795))

(assert (=> d!395620 d!396384))

(declare-fun d!396386 () Bool)

(assert (=> d!396386 (= (list!5445 lt!460420) (list!5449 (c!227732 lt!460420)))))

(declare-fun bs!337089 () Bool)

(assert (= bs!337089 d!396386))

(declare-fun m!1560797 () Bool)

(assert (=> bs!337089 m!1560797))

(assert (=> d!395434 d!396386))

(declare-fun d!396388 () Bool)

(declare-fun e!885784 () Bool)

(assert (=> d!396388 e!885784))

(declare-fun res!625543 () Bool)

(assert (=> d!396388 (=> (not res!625543) (not e!885784))))

(declare-fun lt!461173 () BalanceConc!9202)

(assert (=> d!396388 (= res!625543 (= (list!5445 lt!461173) (Cons!14061 t1!34 Nil!14061)))))

(declare-fun choose!8515 (Token!4532) BalanceConc!9202)

(assert (=> d!396388 (= lt!461173 (choose!8515 t1!34))))

(assert (=> d!396388 (= (singleton!472 t1!34) lt!461173)))

(declare-fun b!1386575 () Bool)

(assert (=> b!1386575 (= e!885784 (isBalanced!1366 (c!227732 lt!461173)))))

(assert (= (and d!396388 res!625543) b!1386575))

(declare-fun m!1560799 () Bool)

(assert (=> d!396388 m!1560799))

(declare-fun m!1560801 () Bool)

(assert (=> d!396388 m!1560801))

(declare-fun m!1560803 () Bool)

(assert (=> b!1386575 m!1560803))

(assert (=> d!395434 d!396388))

(declare-fun d!396390 () Bool)

(declare-fun isBalanced!1368 (Conc!4630) Bool)

(assert (=> d!396390 (= (inv!18403 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 t2!34))) (value!79030 t2!34))) (isBalanced!1368 (c!227730 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 t2!34))) (value!79030 t2!34)))))))

(declare-fun bs!337090 () Bool)

(assert (= bs!337090 d!396390))

(declare-fun m!1560805 () Bool)

(assert (=> bs!337090 m!1560805))

(assert (=> tb!72639 d!396390))

(declare-fun d!396392 () Bool)

(declare-fun lt!461174 () Bool)

(assert (=> d!396392 (= lt!461174 (select (content!2063 (map!3113 rules!2550 lambda!59594)) lt!460539))))

(declare-fun e!885785 () Bool)

(assert (=> d!396392 (= lt!461174 e!885785)))

(declare-fun res!625545 () Bool)

(assert (=> d!396392 (=> (not res!625545) (not e!885785))))

(assert (=> d!396392 (= res!625545 ((_ is Cons!14062) (map!3113 rules!2550 lambda!59594)))))

(assert (=> d!396392 (= (contains!2685 (map!3113 rules!2550 lambda!59594) lt!460539) lt!461174)))

(declare-fun b!1386576 () Bool)

(declare-fun e!885786 () Bool)

(assert (=> b!1386576 (= e!885785 e!885786)))

(declare-fun res!625544 () Bool)

(assert (=> b!1386576 (=> res!625544 e!885786)))

(assert (=> b!1386576 (= res!625544 (= (h!19463 (map!3113 rules!2550 lambda!59594)) lt!460539))))

(declare-fun b!1386577 () Bool)

(assert (=> b!1386577 (= e!885786 (contains!2685 (t!122153 (map!3113 rules!2550 lambda!59594)) lt!460539))))

(assert (= (and d!396392 res!625545) b!1386576))

(assert (= (and b!1386576 (not res!625544)) b!1386577))

(assert (=> d!396392 m!1557535))

(assert (=> d!396392 m!1558489))

(declare-fun m!1560807 () Bool)

(assert (=> d!396392 m!1560807))

(declare-fun m!1560809 () Bool)

(assert (=> b!1386577 m!1560809))

(assert (=> b!1385111 d!396392))

(declare-fun d!396394 () Bool)

(declare-fun charsToBigInt!1 (List!14124) Int)

(assert (=> d!396394 (= (inv!17 (value!79030 t1!34)) (= (charsToBigInt!1 (text!18123 (value!79030 t1!34))) (value!79022 (value!79030 t1!34))))))

(declare-fun bs!337091 () Bool)

(assert (= bs!337091 d!396394))

(declare-fun m!1560811 () Bool)

(assert (=> bs!337091 m!1560811))

(assert (=> b!1384738 d!396394))

(declare-fun lt!461175 () Bool)

(declare-fun d!396396 () Bool)

(assert (=> d!396396 (= lt!461175 (isEmpty!8502 (list!5446 (_2!7713 (lex!955 thiss!19762 rules!2550 (print!894 thiss!19762 (singletonSeq!1078 t1!34)))))))))

(assert (=> d!396396 (= lt!461175 (isEmpty!8503 (c!227730 (_2!7713 (lex!955 thiss!19762 rules!2550 (print!894 thiss!19762 (singletonSeq!1078 t1!34)))))))))

(assert (=> d!396396 (= (isEmpty!8496 (_2!7713 (lex!955 thiss!19762 rules!2550 (print!894 thiss!19762 (singletonSeq!1078 t1!34))))) lt!461175)))

(declare-fun bs!337092 () Bool)

(assert (= bs!337092 d!396396))

(declare-fun m!1560813 () Bool)

(assert (=> bs!337092 m!1560813))

(assert (=> bs!337092 m!1560813))

(declare-fun m!1560815 () Bool)

(assert (=> bs!337092 m!1560815))

(declare-fun m!1560817 () Bool)

(assert (=> bs!337092 m!1560817))

(assert (=> b!1385118 d!396396))

(assert (=> b!1385118 d!396304))

(assert (=> b!1385118 d!395424))

(assert (=> b!1385118 d!395434))

(declare-fun b!1386578 () Bool)

(declare-fun e!885790 () Bool)

(declare-fun e!885787 () Bool)

(assert (=> b!1386578 (= e!885790 e!885787)))

(declare-fun res!625548 () Bool)

(assert (=> b!1386578 (=> res!625548 e!885787)))

(declare-fun call!92787 () Bool)

(assert (=> b!1386578 (= res!625548 call!92787)))

(declare-fun b!1386579 () Bool)

(declare-fun e!885792 () Bool)

(assert (=> b!1386579 (= e!885792 (matchR!1740 (derivativeStep!971 lt!460292 (head!2521 lt!460561)) (tail!2010 lt!460561)))))

(declare-fun b!1386580 () Bool)

(declare-fun res!625550 () Bool)

(assert (=> b!1386580 (=> res!625550 e!885787)))

(assert (=> b!1386580 (= res!625550 (not (isEmpty!8502 (tail!2010 lt!460561))))))

(declare-fun b!1386581 () Bool)

(declare-fun e!885791 () Bool)

(declare-fun lt!461176 () Bool)

(assert (=> b!1386581 (= e!885791 (not lt!461176))))

(declare-fun b!1386582 () Bool)

(assert (=> b!1386582 (= e!885787 (not (= (head!2521 lt!460561) (c!227731 lt!460292))))))

(declare-fun b!1386583 () Bool)

(declare-fun e!885793 () Bool)

(assert (=> b!1386583 (= e!885793 e!885790)))

(declare-fun res!625552 () Bool)

(assert (=> b!1386583 (=> (not res!625552) (not e!885790))))

(assert (=> b!1386583 (= res!625552 (not lt!461176))))

(declare-fun b!1386584 () Bool)

(declare-fun res!625549 () Bool)

(assert (=> b!1386584 (=> res!625549 e!885793)))

(declare-fun e!885789 () Bool)

(assert (=> b!1386584 (= res!625549 e!885789)))

(declare-fun res!625546 () Bool)

(assert (=> b!1386584 (=> (not res!625546) (not e!885789))))

(assert (=> b!1386584 (= res!625546 lt!461176)))

(declare-fun b!1386585 () Bool)

(declare-fun e!885788 () Bool)

(assert (=> b!1386585 (= e!885788 (= lt!461176 call!92787))))

(declare-fun bm!92782 () Bool)

(assert (=> bm!92782 (= call!92787 (isEmpty!8502 lt!460561))))

(declare-fun d!396398 () Bool)

(assert (=> d!396398 e!885788))

(declare-fun c!228242 () Bool)

(assert (=> d!396398 (= c!228242 ((_ is EmptyExpr!3749) lt!460292))))

(assert (=> d!396398 (= lt!461176 e!885792)))

(declare-fun c!228243 () Bool)

(assert (=> d!396398 (= c!228243 (isEmpty!8502 lt!460561))))

(assert (=> d!396398 (validRegex!1633 lt!460292)))

(assert (=> d!396398 (= (matchR!1740 lt!460292 lt!460561) lt!461176)))

(declare-fun b!1386586 () Bool)

(declare-fun res!625553 () Bool)

(assert (=> b!1386586 (=> res!625553 e!885793)))

(assert (=> b!1386586 (= res!625553 (not ((_ is ElementMatch!3749) lt!460292)))))

(assert (=> b!1386586 (= e!885791 e!885793)))

(declare-fun b!1386587 () Bool)

(assert (=> b!1386587 (= e!885788 e!885791)))

(declare-fun c!228244 () Bool)

(assert (=> b!1386587 (= c!228244 ((_ is EmptyLang!3749) lt!460292))))

(declare-fun b!1386588 () Bool)

(assert (=> b!1386588 (= e!885792 (nullable!1213 lt!460292))))

(declare-fun b!1386589 () Bool)

(declare-fun res!625547 () Bool)

(assert (=> b!1386589 (=> (not res!625547) (not e!885789))))

(assert (=> b!1386589 (= res!625547 (isEmpty!8502 (tail!2010 lt!460561)))))

(declare-fun b!1386590 () Bool)

(declare-fun res!625551 () Bool)

(assert (=> b!1386590 (=> (not res!625551) (not e!885789))))

(assert (=> b!1386590 (= res!625551 (not call!92787))))

(declare-fun b!1386591 () Bool)

(assert (=> b!1386591 (= e!885789 (= (head!2521 lt!460561) (c!227731 lt!460292)))))

(assert (= (and d!396398 c!228243) b!1386588))

(assert (= (and d!396398 (not c!228243)) b!1386579))

(assert (= (and d!396398 c!228242) b!1386585))

(assert (= (and d!396398 (not c!228242)) b!1386587))

(assert (= (and b!1386587 c!228244) b!1386581))

(assert (= (and b!1386587 (not c!228244)) b!1386586))

(assert (= (and b!1386586 (not res!625553)) b!1386584))

(assert (= (and b!1386584 res!625546) b!1386590))

(assert (= (and b!1386590 res!625551) b!1386589))

(assert (= (and b!1386589 res!625547) b!1386591))

(assert (= (and b!1386584 (not res!625549)) b!1386583))

(assert (= (and b!1386583 res!625552) b!1386578))

(assert (= (and b!1386578 (not res!625548)) b!1386580))

(assert (= (and b!1386580 (not res!625550)) b!1386582))

(assert (= (or b!1386585 b!1386578 b!1386590) bm!92782))

(declare-fun m!1560819 () Bool)

(assert (=> bm!92782 m!1560819))

(declare-fun m!1560821 () Bool)

(assert (=> b!1386589 m!1560821))

(assert (=> b!1386589 m!1560821))

(declare-fun m!1560823 () Bool)

(assert (=> b!1386589 m!1560823))

(declare-fun m!1560825 () Bool)

(assert (=> b!1386579 m!1560825))

(assert (=> b!1386579 m!1560825))

(declare-fun m!1560827 () Bool)

(assert (=> b!1386579 m!1560827))

(assert (=> b!1386579 m!1560821))

(assert (=> b!1386579 m!1560827))

(assert (=> b!1386579 m!1560821))

(declare-fun m!1560829 () Bool)

(assert (=> b!1386579 m!1560829))

(assert (=> b!1386588 m!1557815))

(assert (=> b!1386580 m!1560821))

(assert (=> b!1386580 m!1560821))

(assert (=> b!1386580 m!1560823))

(assert (=> b!1386582 m!1560825))

(assert (=> b!1386591 m!1560825))

(assert (=> d!396398 m!1560819))

(assert (=> d!396398 m!1557817))

(assert (=> bs!336878 d!396398))

(declare-fun d!396400 () Bool)

(declare-fun lt!461177 () Int)

(assert (=> d!396400 (>= lt!461177 0)))

(declare-fun e!885794 () Int)

(assert (=> d!396400 (= lt!461177 e!885794)))

(declare-fun c!228245 () Bool)

(assert (=> d!396400 (= c!228245 ((_ is Nil!14059) (_2!7715 lt!460491)))))

(assert (=> d!396400 (= (size!11552 (_2!7715 lt!460491)) lt!461177)))

(declare-fun b!1386592 () Bool)

(assert (=> b!1386592 (= e!885794 0)))

(declare-fun b!1386593 () Bool)

(assert (=> b!1386593 (= e!885794 (+ 1 (size!11552 (t!122150 (_2!7715 lt!460491)))))))

(assert (= (and d!396400 c!228245) b!1386592))

(assert (= (and d!396400 (not c!228245)) b!1386593))

(declare-fun m!1560831 () Bool)

(assert (=> b!1386593 m!1560831))

(assert (=> b!1384968 d!396400))

(declare-fun d!396402 () Bool)

(declare-fun lt!461178 () Int)

(assert (=> d!396402 (>= lt!461178 0)))

(declare-fun e!885795 () Int)

(assert (=> d!396402 (= lt!461178 e!885795)))

(declare-fun c!228246 () Bool)

(assert (=> d!396402 (= c!228246 ((_ is Nil!14059) (list!5446 lt!460288)))))

(assert (=> d!396402 (= (size!11552 (list!5446 lt!460288)) lt!461178)))

(declare-fun b!1386594 () Bool)

(assert (=> b!1386594 (= e!885795 0)))

(declare-fun b!1386595 () Bool)

(assert (=> b!1386595 (= e!885795 (+ 1 (size!11552 (t!122150 (list!5446 lt!460288)))))))

(assert (= (and d!396402 c!228246) b!1386594))

(assert (= (and d!396402 (not c!228246)) b!1386595))

(declare-fun m!1560833 () Bool)

(assert (=> b!1386595 m!1560833))

(assert (=> b!1384968 d!396402))

(declare-fun b!1386614 () Bool)

(declare-fun res!625568 () Bool)

(declare-fun e!885807 () Bool)

(assert (=> b!1386614 (=> (not res!625568) (not e!885807))))

(declare-fun lt!461191 () Option!2694)

(assert (=> b!1386614 (= res!625568 (= (rule!4194 (_1!7714 (get!4370 lt!461191))) (h!19461 rules!2550)))))

(declare-fun b!1386615 () Bool)

(declare-fun res!625572 () Bool)

(assert (=> b!1386615 (=> (not res!625572) (not e!885807))))

(assert (=> b!1386615 (= res!625572 (= (++!3646 (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!461191)))) (_2!7714 (get!4370 lt!461191))) lt!460285))))

(declare-fun d!396404 () Bool)

(declare-fun e!885804 () Bool)

(assert (=> d!396404 e!885804))

(declare-fun res!625574 () Bool)

(assert (=> d!396404 (=> res!625574 e!885804)))

(assert (=> d!396404 (= res!625574 (isEmpty!8507 lt!461191))))

(declare-fun e!885805 () Option!2694)

(assert (=> d!396404 (= lt!461191 e!885805)))

(declare-fun c!228249 () Bool)

(declare-datatypes ((tuple2!13666 0))(
  ( (tuple2!13667 (_1!7719 List!14125) (_2!7719 List!14125)) )
))
(declare-fun lt!461193 () tuple2!13666)

(assert (=> d!396404 (= c!228249 (isEmpty!8502 (_1!7719 lt!461193)))))

(declare-fun findLongestMatch!242 (Regex!3749 List!14125) tuple2!13666)

(assert (=> d!396404 (= lt!461193 (findLongestMatch!242 (regex!2435 (h!19461 rules!2550)) lt!460285))))

(assert (=> d!396404 (ruleValid!600 thiss!19762 (h!19461 rules!2550))))

(assert (=> d!396404 (= (maxPrefixOneRule!625 thiss!19762 (h!19461 rules!2550) lt!460285) lt!461191)))

(declare-fun b!1386616 () Bool)

(declare-fun res!625571 () Bool)

(assert (=> b!1386616 (=> (not res!625571) (not e!885807))))

(assert (=> b!1386616 (= res!625571 (= (value!79030 (_1!7714 (get!4370 lt!461191))) (apply!3519 (transformation!2435 (rule!4194 (_1!7714 (get!4370 lt!461191)))) (seqFromList!1643 (originalCharacters!3297 (_1!7714 (get!4370 lt!461191)))))))))

(declare-fun b!1386617 () Bool)

(assert (=> b!1386617 (= e!885805 (Some!2693 (tuple2!13657 (Token!4533 (apply!3519 (transformation!2435 (h!19461 rules!2550)) (seqFromList!1643 (_1!7719 lt!461193))) (h!19461 rules!2550) (size!11541 (seqFromList!1643 (_1!7719 lt!461193))) (_1!7719 lt!461193)) (_2!7719 lt!461193))))))

(declare-fun lt!461189 () Unit!20305)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!270 (Regex!3749 List!14125) Unit!20305)

(assert (=> b!1386617 (= lt!461189 (longestMatchIsAcceptedByMatchOrIsEmpty!270 (regex!2435 (h!19461 rules!2550)) lt!460285))))

(declare-fun res!625570 () Bool)

(declare-fun findLongestMatchInner!286 (Regex!3749 List!14125 Int List!14125 List!14125 Int) tuple2!13666)

(assert (=> b!1386617 (= res!625570 (isEmpty!8502 (_1!7719 (findLongestMatchInner!286 (regex!2435 (h!19461 rules!2550)) Nil!14059 (size!11552 Nil!14059) lt!460285 lt!460285 (size!11552 lt!460285)))))))

(declare-fun e!885806 () Bool)

(assert (=> b!1386617 (=> res!625570 e!885806)))

(assert (=> b!1386617 e!885806))

(declare-fun lt!461190 () Unit!20305)

(assert (=> b!1386617 (= lt!461190 lt!461189)))

(declare-fun lt!461192 () Unit!20305)

(declare-fun lemmaSemiInverse!340 (TokenValueInjection!4710 BalanceConc!9200) Unit!20305)

(assert (=> b!1386617 (= lt!461192 (lemmaSemiInverse!340 (transformation!2435 (h!19461 rules!2550)) (seqFromList!1643 (_1!7719 lt!461193))))))

(declare-fun b!1386618 () Bool)

(assert (=> b!1386618 (= e!885804 e!885807)))

(declare-fun res!625573 () Bool)

(assert (=> b!1386618 (=> (not res!625573) (not e!885807))))

(assert (=> b!1386618 (= res!625573 (matchR!1740 (regex!2435 (h!19461 rules!2550)) (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!461191))))))))

(declare-fun b!1386619 () Bool)

(assert (=> b!1386619 (= e!885806 (matchR!1740 (regex!2435 (h!19461 rules!2550)) (_1!7719 (findLongestMatchInner!286 (regex!2435 (h!19461 rules!2550)) Nil!14059 (size!11552 Nil!14059) lt!460285 lt!460285 (size!11552 lt!460285)))))))

(declare-fun b!1386620 () Bool)

(declare-fun res!625569 () Bool)

(assert (=> b!1386620 (=> (not res!625569) (not e!885807))))

(assert (=> b!1386620 (= res!625569 (< (size!11552 (_2!7714 (get!4370 lt!461191))) (size!11552 lt!460285)))))

(declare-fun b!1386621 () Bool)

(assert (=> b!1386621 (= e!885805 None!2693)))

(declare-fun b!1386622 () Bool)

(assert (=> b!1386622 (= e!885807 (= (size!11542 (_1!7714 (get!4370 lt!461191))) (size!11552 (originalCharacters!3297 (_1!7714 (get!4370 lt!461191))))))))

(assert (= (and d!396404 c!228249) b!1386621))

(assert (= (and d!396404 (not c!228249)) b!1386617))

(assert (= (and b!1386617 (not res!625570)) b!1386619))

(assert (= (and d!396404 (not res!625574)) b!1386618))

(assert (= (and b!1386618 res!625573) b!1386615))

(assert (= (and b!1386615 res!625572) b!1386620))

(assert (= (and b!1386620 res!625569) b!1386614))

(assert (= (and b!1386614 res!625568) b!1386616))

(assert (= (and b!1386616 res!625571) b!1386622))

(declare-fun m!1560835 () Bool)

(assert (=> b!1386622 m!1560835))

(declare-fun m!1560837 () Bool)

(assert (=> b!1386622 m!1560837))

(declare-fun m!1560839 () Bool)

(assert (=> b!1386617 m!1560839))

(declare-fun m!1560841 () Bool)

(assert (=> b!1386617 m!1560841))

(assert (=> b!1386617 m!1558431))

(assert (=> b!1386617 m!1560839))

(declare-fun m!1560843 () Bool)

(assert (=> b!1386617 m!1560843))

(declare-fun m!1560845 () Bool)

(assert (=> b!1386617 m!1560845))

(declare-fun m!1560847 () Bool)

(assert (=> b!1386617 m!1560847))

(assert (=> b!1386617 m!1560847))

(assert (=> b!1386617 m!1558431))

(declare-fun m!1560849 () Bool)

(assert (=> b!1386617 m!1560849))

(assert (=> b!1386617 m!1560839))

(declare-fun m!1560851 () Bool)

(assert (=> b!1386617 m!1560851))

(assert (=> b!1386617 m!1560839))

(declare-fun m!1560853 () Bool)

(assert (=> b!1386617 m!1560853))

(declare-fun m!1560855 () Bool)

(assert (=> d!396404 m!1560855))

(declare-fun m!1560857 () Bool)

(assert (=> d!396404 m!1560857))

(declare-fun m!1560859 () Bool)

(assert (=> d!396404 m!1560859))

(assert (=> d!396404 m!1559655))

(assert (=> b!1386618 m!1560835))

(declare-fun m!1560861 () Bool)

(assert (=> b!1386618 m!1560861))

(assert (=> b!1386618 m!1560861))

(declare-fun m!1560863 () Bool)

(assert (=> b!1386618 m!1560863))

(assert (=> b!1386618 m!1560863))

(declare-fun m!1560865 () Bool)

(assert (=> b!1386618 m!1560865))

(assert (=> b!1386614 m!1560835))

(assert (=> b!1386616 m!1560835))

(declare-fun m!1560867 () Bool)

(assert (=> b!1386616 m!1560867))

(assert (=> b!1386616 m!1560867))

(declare-fun m!1560869 () Bool)

(assert (=> b!1386616 m!1560869))

(assert (=> b!1386619 m!1560847))

(assert (=> b!1386619 m!1558431))

(assert (=> b!1386619 m!1560847))

(assert (=> b!1386619 m!1558431))

(assert (=> b!1386619 m!1560849))

(declare-fun m!1560871 () Bool)

(assert (=> b!1386619 m!1560871))

(assert (=> b!1386620 m!1560835))

(declare-fun m!1560873 () Bool)

(assert (=> b!1386620 m!1560873))

(assert (=> b!1386620 m!1558431))

(assert (=> b!1386615 m!1560835))

(assert (=> b!1386615 m!1560861))

(assert (=> b!1386615 m!1560861))

(assert (=> b!1386615 m!1560863))

(assert (=> b!1386615 m!1560863))

(declare-fun m!1560875 () Bool)

(assert (=> b!1386615 m!1560875))

(assert (=> bm!92667 d!396404))

(declare-fun d!396406 () Bool)

(declare-fun lt!461194 () Bool)

(assert (=> d!396406 (= lt!461194 (select (content!2059 (t!122150 lt!460300)) lt!460293))))

(declare-fun e!885809 () Bool)

(assert (=> d!396406 (= lt!461194 e!885809)))

(declare-fun res!625576 () Bool)

(assert (=> d!396406 (=> (not res!625576) (not e!885809))))

(assert (=> d!396406 (= res!625576 ((_ is Cons!14059) (t!122150 lt!460300)))))

(assert (=> d!396406 (= (contains!2683 (t!122150 lt!460300) lt!460293) lt!461194)))

(declare-fun b!1386623 () Bool)

(declare-fun e!885808 () Bool)

(assert (=> b!1386623 (= e!885809 e!885808)))

(declare-fun res!625575 () Bool)

(assert (=> b!1386623 (=> res!625575 e!885808)))

(assert (=> b!1386623 (= res!625575 (= (h!19460 (t!122150 lt!460300)) lt!460293))))

(declare-fun b!1386624 () Bool)

(assert (=> b!1386624 (= e!885808 (contains!2683 (t!122150 (t!122150 lt!460300)) lt!460293))))

(assert (= (and d!396406 res!625576) b!1386623))

(assert (= (and b!1386623 (not res!625575)) b!1386624))

(assert (=> d!396406 m!1560765))

(declare-fun m!1560877 () Bool)

(assert (=> d!396406 m!1560877))

(declare-fun m!1560879 () Bool)

(assert (=> b!1386624 m!1560879))

(assert (=> b!1385191 d!396406))

(assert (=> b!1384574 d!396018))

(declare-fun d!396408 () Bool)

(assert (=> d!396408 (= (list!5445 lt!460402) (list!5449 (c!227732 lt!460402)))))

(declare-fun bs!337093 () Bool)

(assert (= bs!337093 d!396408))

(declare-fun m!1560881 () Bool)

(assert (=> bs!337093 m!1560881))

(assert (=> d!395412 d!396408))

(declare-fun d!396410 () Bool)

(declare-fun e!885810 () Bool)

(assert (=> d!396410 e!885810))

(declare-fun res!625577 () Bool)

(assert (=> d!396410 (=> (not res!625577) (not e!885810))))

(declare-fun lt!461195 () BalanceConc!9202)

(assert (=> d!396410 (= res!625577 (= (list!5445 lt!461195) (Cons!14061 t2!34 Nil!14061)))))

(assert (=> d!396410 (= lt!461195 (choose!8515 t2!34))))

(assert (=> d!396410 (= (singleton!472 t2!34) lt!461195)))

(declare-fun b!1386625 () Bool)

(assert (=> b!1386625 (= e!885810 (isBalanced!1366 (c!227732 lt!461195)))))

(assert (= (and d!396410 res!625577) b!1386625))

(declare-fun m!1560883 () Bool)

(assert (=> d!396410 m!1560883))

(declare-fun m!1560885 () Bool)

(assert (=> d!396410 m!1560885))

(declare-fun m!1560887 () Bool)

(assert (=> b!1386625 m!1560887))

(assert (=> d!395412 d!396410))

(declare-fun b!1386626 () Bool)

(declare-fun e!885811 () List!14125)

(declare-fun call!92790 () List!14125)

(assert (=> b!1386626 (= e!885811 call!92790)))

(declare-fun b!1386627 () Bool)

(declare-fun e!885812 () List!14125)

(declare-fun call!92789 () List!14125)

(assert (=> b!1386627 (= e!885812 call!92789)))

(declare-fun b!1386628 () Bool)

(declare-fun e!885813 () List!14125)

(assert (=> b!1386628 (= e!885813 (Cons!14059 (c!227731 (ite c!227823 (regOne!8011 (regex!2435 (rule!4194 t1!34))) (regTwo!8010 (regex!2435 (rule!4194 t1!34))))) Nil!14059))))

(declare-fun b!1386629 () Bool)

(assert (=> b!1386629 (= e!885811 call!92790)))

(declare-fun bm!92783 () Bool)

(declare-fun call!92791 () List!14125)

(declare-fun call!92788 () List!14125)

(declare-fun c!228251 () Bool)

(assert (=> bm!92783 (= call!92790 (++!3646 (ite c!228251 call!92788 call!92791) (ite c!228251 call!92791 call!92788)))))

(declare-fun c!228252 () Bool)

(declare-fun bm!92784 () Bool)

(assert (=> bm!92784 (= call!92789 (usedCharacters!246 (ite c!228252 (reg!4078 (ite c!227823 (regOne!8011 (regex!2435 (rule!4194 t1!34))) (regTwo!8010 (regex!2435 (rule!4194 t1!34))))) (ite c!228251 (regTwo!8011 (ite c!227823 (regOne!8011 (regex!2435 (rule!4194 t1!34))) (regTwo!8010 (regex!2435 (rule!4194 t1!34))))) (regOne!8010 (ite c!227823 (regOne!8011 (regex!2435 (rule!4194 t1!34))) (regTwo!8010 (regex!2435 (rule!4194 t1!34)))))))))))

(declare-fun bm!92785 () Bool)

(assert (=> bm!92785 (= call!92788 (usedCharacters!246 (ite c!228251 (regOne!8011 (ite c!227823 (regOne!8011 (regex!2435 (rule!4194 t1!34))) (regTwo!8010 (regex!2435 (rule!4194 t1!34))))) (regTwo!8010 (ite c!227823 (regOne!8011 (regex!2435 (rule!4194 t1!34))) (regTwo!8010 (regex!2435 (rule!4194 t1!34))))))))))

(declare-fun b!1386631 () Bool)

(assert (=> b!1386631 (= e!885812 e!885811)))

(assert (=> b!1386631 (= c!228251 ((_ is Union!3749) (ite c!227823 (regOne!8011 (regex!2435 (rule!4194 t1!34))) (regTwo!8010 (regex!2435 (rule!4194 t1!34))))))))

(declare-fun bm!92786 () Bool)

(assert (=> bm!92786 (= call!92791 call!92789)))

(declare-fun b!1386632 () Bool)

(assert (=> b!1386632 (= c!228252 ((_ is Star!3749) (ite c!227823 (regOne!8011 (regex!2435 (rule!4194 t1!34))) (regTwo!8010 (regex!2435 (rule!4194 t1!34))))))))

(assert (=> b!1386632 (= e!885813 e!885812)))

(declare-fun b!1386633 () Bool)

(declare-fun e!885814 () List!14125)

(assert (=> b!1386633 (= e!885814 e!885813)))

(declare-fun c!228250 () Bool)

(assert (=> b!1386633 (= c!228250 ((_ is ElementMatch!3749) (ite c!227823 (regOne!8011 (regex!2435 (rule!4194 t1!34))) (regTwo!8010 (regex!2435 (rule!4194 t1!34))))))))

(declare-fun d!396412 () Bool)

(declare-fun c!228253 () Bool)

(assert (=> d!396412 (= c!228253 (or ((_ is EmptyExpr!3749) (ite c!227823 (regOne!8011 (regex!2435 (rule!4194 t1!34))) (regTwo!8010 (regex!2435 (rule!4194 t1!34))))) ((_ is EmptyLang!3749) (ite c!227823 (regOne!8011 (regex!2435 (rule!4194 t1!34))) (regTwo!8010 (regex!2435 (rule!4194 t1!34)))))))))

(assert (=> d!396412 (= (usedCharacters!246 (ite c!227823 (regOne!8011 (regex!2435 (rule!4194 t1!34))) (regTwo!8010 (regex!2435 (rule!4194 t1!34))))) e!885814)))

(declare-fun b!1386630 () Bool)

(assert (=> b!1386630 (= e!885814 Nil!14059)))

(assert (= (and d!396412 c!228253) b!1386630))

(assert (= (and d!396412 (not c!228253)) b!1386633))

(assert (= (and b!1386633 c!228250) b!1386628))

(assert (= (and b!1386633 (not c!228250)) b!1386632))

(assert (= (and b!1386632 c!228252) b!1386627))

(assert (= (and b!1386632 (not c!228252)) b!1386631))

(assert (= (and b!1386631 c!228251) b!1386626))

(assert (= (and b!1386631 (not c!228251)) b!1386629))

(assert (= (or b!1386626 b!1386629) bm!92785))

(assert (= (or b!1386626 b!1386629) bm!92786))

(assert (= (or b!1386626 b!1386629) bm!92783))

(assert (= (or b!1386627 bm!92786) bm!92784))

(declare-fun m!1560889 () Bool)

(assert (=> bm!92783 m!1560889))

(declare-fun m!1560891 () Bool)

(assert (=> bm!92784 m!1560891))

(declare-fun m!1560893 () Bool)

(assert (=> bm!92785 m!1560893))

(assert (=> bm!92656 d!396412))

(declare-fun d!396414 () Bool)

(declare-fun lt!461196 () Bool)

(assert (=> d!396414 (= lt!461196 (isEmpty!8502 (list!5446 (_2!7713 (lex!955 thiss!19762 rules!2550 (print!894 thiss!19762 (singletonSeq!1078 t2!34)))))))))

(assert (=> d!396414 (= lt!461196 (isEmpty!8503 (c!227730 (_2!7713 (lex!955 thiss!19762 rules!2550 (print!894 thiss!19762 (singletonSeq!1078 t2!34)))))))))

(assert (=> d!396414 (= (isEmpty!8496 (_2!7713 (lex!955 thiss!19762 rules!2550 (print!894 thiss!19762 (singletonSeq!1078 t2!34))))) lt!461196)))

(declare-fun bs!337094 () Bool)

(assert (= bs!337094 d!396414))

(declare-fun m!1560895 () Bool)

(assert (=> bs!337094 m!1560895))

(assert (=> bs!337094 m!1560895))

(declare-fun m!1560897 () Bool)

(assert (=> bs!337094 m!1560897))

(declare-fun m!1560899 () Bool)

(assert (=> bs!337094 m!1560899))

(assert (=> b!1384930 d!396414))

(declare-fun b!1386634 () Bool)

(declare-fun res!625579 () Bool)

(declare-fun e!885815 () Bool)

(assert (=> b!1386634 (=> (not res!625579) (not e!885815))))

(declare-fun lt!461197 () tuple2!13654)

(assert (=> b!1386634 (= res!625579 (= (list!5445 (_1!7713 lt!461197)) (_1!7715 (lexList!644 thiss!19762 rules!2550 (list!5446 (print!894 thiss!19762 (singletonSeq!1078 t2!34)))))))))

(declare-fun b!1386635 () Bool)

(assert (=> b!1386635 (= e!885815 (= (list!5446 (_2!7713 lt!461197)) (_2!7715 (lexList!644 thiss!19762 rules!2550 (list!5446 (print!894 thiss!19762 (singletonSeq!1078 t2!34)))))))))

(declare-fun b!1386636 () Bool)

(declare-fun e!885817 () Bool)

(assert (=> b!1386636 (= e!885817 (not (isEmpty!8504 (_1!7713 lt!461197))))))

(declare-fun b!1386637 () Bool)

(declare-fun e!885816 () Bool)

(assert (=> b!1386637 (= e!885816 (= (_2!7713 lt!461197) (print!894 thiss!19762 (singletonSeq!1078 t2!34))))))

(declare-fun b!1386638 () Bool)

(assert (=> b!1386638 (= e!885816 e!885817)))

(declare-fun res!625580 () Bool)

(assert (=> b!1386638 (= res!625580 (< (size!11541 (_2!7713 lt!461197)) (size!11541 (print!894 thiss!19762 (singletonSeq!1078 t2!34)))))))

(assert (=> b!1386638 (=> (not res!625580) (not e!885817))))

(declare-fun d!396416 () Bool)

(assert (=> d!396416 e!885815))

(declare-fun res!625578 () Bool)

(assert (=> d!396416 (=> (not res!625578) (not e!885815))))

(assert (=> d!396416 (= res!625578 e!885816)))

(declare-fun c!228254 () Bool)

(assert (=> d!396416 (= c!228254 (> (size!11549 (_1!7713 lt!461197)) 0))))

(assert (=> d!396416 (= lt!461197 (lexTailRecV2!425 thiss!19762 rules!2550 (print!894 thiss!19762 (singletonSeq!1078 t2!34)) (BalanceConc!9201 Empty!4630) (print!894 thiss!19762 (singletonSeq!1078 t2!34)) (BalanceConc!9203 Empty!4631)))))

(assert (=> d!396416 (= (lex!955 thiss!19762 rules!2550 (print!894 thiss!19762 (singletonSeq!1078 t2!34))) lt!461197)))

(assert (= (and d!396416 c!228254) b!1386638))

(assert (= (and d!396416 (not c!228254)) b!1386637))

(assert (= (and b!1386638 res!625580) b!1386636))

(assert (= (and d!396416 res!625578) b!1386634))

(assert (= (and b!1386634 res!625579) b!1386635))

(declare-fun m!1560901 () Bool)

(assert (=> b!1386634 m!1560901))

(assert (=> b!1386634 m!1557627))

(declare-fun m!1560903 () Bool)

(assert (=> b!1386634 m!1560903))

(assert (=> b!1386634 m!1560903))

(declare-fun m!1560905 () Bool)

(assert (=> b!1386634 m!1560905))

(declare-fun m!1560907 () Bool)

(assert (=> b!1386636 m!1560907))

(declare-fun m!1560909 () Bool)

(assert (=> b!1386635 m!1560909))

(assert (=> b!1386635 m!1557627))

(assert (=> b!1386635 m!1560903))

(assert (=> b!1386635 m!1560903))

(assert (=> b!1386635 m!1560905))

(declare-fun m!1560911 () Bool)

(assert (=> d!396416 m!1560911))

(assert (=> d!396416 m!1557627))

(assert (=> d!396416 m!1557627))

(declare-fun m!1560913 () Bool)

(assert (=> d!396416 m!1560913))

(declare-fun m!1560915 () Bool)

(assert (=> b!1386638 m!1560915))

(assert (=> b!1386638 m!1557627))

(declare-fun m!1560917 () Bool)

(assert (=> b!1386638 m!1560917))

(assert (=> b!1384930 d!396416))

(assert (=> b!1384930 d!395410))

(assert (=> b!1384930 d!395412))

(declare-fun d!396418 () Bool)

(assert (=> d!396418 (= (isEmpty!8502 lt!460285) ((_ is Nil!14059) lt!460285))))

(assert (=> bm!92678 d!396418))

(assert (=> b!1385045 d!396320))

(assert (=> b!1385045 d!396322))

(assert (=> b!1385045 d!396324))

(declare-fun d!396420 () Bool)

(declare-fun lt!461198 () Int)

(assert (=> d!396420 (= lt!461198 (size!11553 (list!5445 (_1!7713 lt!460406))))))

(assert (=> d!396420 (= lt!461198 (size!11556 (c!227732 (_1!7713 lt!460406))))))

(assert (=> d!396420 (= (size!11549 (_1!7713 lt!460406)) lt!461198)))

(declare-fun bs!337095 () Bool)

(assert (= bs!337095 d!396420))

(assert (=> bs!337095 m!1557995))

(assert (=> bs!337095 m!1557995))

(declare-fun m!1560919 () Bool)

(assert (=> bs!337095 m!1560919))

(declare-fun m!1560921 () Bool)

(assert (=> bs!337095 m!1560921))

(assert (=> d!395426 d!396420))

(declare-fun lt!461220 () tuple2!13654)

(declare-fun e!885820 () Bool)

(declare-fun b!1386639 () Bool)

(assert (=> b!1386639 (= e!885820 (= (list!5446 (_2!7713 lt!461220)) (list!5446 (_2!7713 (lexRec!284 thiss!19762 rules!2550 lt!460296)))))))

(declare-fun e!885819 () tuple2!13654)

(declare-fun b!1386640 () Bool)

(declare-fun lt!461207 () Option!2695)

(declare-fun lt!461224 () BalanceConc!9200)

(assert (=> b!1386640 (= e!885819 (lexTailRecV2!425 thiss!19762 rules!2550 lt!460296 lt!461224 (_2!7717 (v!21561 lt!461207)) (append!409 (BalanceConc!9203 Empty!4631) (_1!7717 (v!21561 lt!461207)))))))

(declare-fun lt!461231 () tuple2!13654)

(assert (=> b!1386640 (= lt!461231 (lexRec!284 thiss!19762 rules!2550 (_2!7717 (v!21561 lt!461207))))))

(declare-fun lt!461232 () List!14125)

(assert (=> b!1386640 (= lt!461232 (list!5446 (BalanceConc!9201 Empty!4630)))))

(declare-fun lt!461213 () List!14125)

(assert (=> b!1386640 (= lt!461213 (list!5446 (charsOf!1407 (_1!7717 (v!21561 lt!461207)))))))

(declare-fun lt!461209 () List!14125)

(assert (=> b!1386640 (= lt!461209 (list!5446 (_2!7717 (v!21561 lt!461207))))))

(declare-fun lt!461228 () Unit!20305)

(assert (=> b!1386640 (= lt!461228 (lemmaConcatAssociativity!867 lt!461232 lt!461213 lt!461209))))

(assert (=> b!1386640 (= (++!3646 (++!3646 lt!461232 lt!461213) lt!461209) (++!3646 lt!461232 (++!3646 lt!461213 lt!461209)))))

(declare-fun lt!461199 () Unit!20305)

(assert (=> b!1386640 (= lt!461199 lt!461228)))

(declare-fun lt!461201 () Option!2695)

(assert (=> b!1386640 (= lt!461201 (maxPrefixZipperSequence!557 thiss!19762 rules!2550 lt!460296))))

(declare-fun c!228255 () Bool)

(assert (=> b!1386640 (= c!228255 ((_ is Some!2694) lt!461201))))

(declare-fun e!885818 () tuple2!13654)

(assert (=> b!1386640 (= (lexRec!284 thiss!19762 rules!2550 lt!460296) e!885818)))

(declare-fun lt!461219 () Unit!20305)

(declare-fun Unit!20319 () Unit!20305)

(assert (=> b!1386640 (= lt!461219 Unit!20319)))

(declare-fun lt!461210 () List!14127)

(assert (=> b!1386640 (= lt!461210 (list!5445 (BalanceConc!9203 Empty!4631)))))

(declare-fun lt!461226 () List!14127)

(assert (=> b!1386640 (= lt!461226 (Cons!14061 (_1!7717 (v!21561 lt!461207)) Nil!14061))))

(declare-fun lt!461227 () List!14127)

(assert (=> b!1386640 (= lt!461227 (list!5445 (_1!7713 lt!461231)))))

(declare-fun lt!461202 () Unit!20305)

(assert (=> b!1386640 (= lt!461202 (lemmaConcatAssociativity!868 lt!461210 lt!461226 lt!461227))))

(assert (=> b!1386640 (= (++!3650 (++!3650 lt!461210 lt!461226) lt!461227) (++!3650 lt!461210 (++!3650 lt!461226 lt!461227)))))

(declare-fun lt!461215 () Unit!20305)

(assert (=> b!1386640 (= lt!461215 lt!461202)))

(declare-fun lt!461206 () List!14125)

(assert (=> b!1386640 (= lt!461206 (++!3646 (list!5446 (BalanceConc!9201 Empty!4630)) (list!5446 (charsOf!1407 (_1!7717 (v!21561 lt!461207))))))))

(declare-fun lt!461216 () List!14125)

(assert (=> b!1386640 (= lt!461216 (list!5446 (_2!7717 (v!21561 lt!461207))))))

(declare-fun lt!461221 () List!14127)

(assert (=> b!1386640 (= lt!461221 (list!5445 (append!409 (BalanceConc!9203 Empty!4631) (_1!7717 (v!21561 lt!461207)))))))

(declare-fun lt!461223 () Unit!20305)

(assert (=> b!1386640 (= lt!461223 (lemmaLexThenLexPrefix!199 thiss!19762 rules!2550 lt!461206 lt!461216 lt!461221 (list!5445 (_1!7713 lt!461231)) (list!5446 (_2!7713 lt!461231))))))

(assert (=> b!1386640 (= (lexList!644 thiss!19762 rules!2550 lt!461206) (tuple2!13659 lt!461221 Nil!14059))))

(declare-fun lt!461208 () Unit!20305)

(assert (=> b!1386640 (= lt!461208 lt!461223)))

(declare-fun lt!461225 () BalanceConc!9200)

(assert (=> b!1386640 (= lt!461225 (++!3647 (BalanceConc!9201 Empty!4630) (charsOf!1407 (_1!7717 (v!21561 lt!461207)))))))

(declare-fun lt!461212 () Option!2695)

(assert (=> b!1386640 (= lt!461212 (maxPrefixZipperSequence!557 thiss!19762 rules!2550 lt!461225))))

(declare-fun c!228256 () Bool)

(assert (=> b!1386640 (= c!228256 ((_ is Some!2694) lt!461212))))

(declare-fun e!885821 () tuple2!13654)

(assert (=> b!1386640 (= (lexRec!284 thiss!19762 rules!2550 (++!3647 (BalanceConc!9201 Empty!4630) (charsOf!1407 (_1!7717 (v!21561 lt!461207))))) e!885821)))

(declare-fun lt!461204 () Unit!20305)

(declare-fun Unit!20320 () Unit!20305)

(assert (=> b!1386640 (= lt!461204 Unit!20320)))

(assert (=> b!1386640 (= lt!461224 (++!3647 (BalanceConc!9201 Empty!4630) (charsOf!1407 (_1!7717 (v!21561 lt!461207)))))))

(declare-fun lt!461214 () List!14125)

(assert (=> b!1386640 (= lt!461214 (list!5446 lt!461224))))

(declare-fun lt!461222 () List!14125)

(assert (=> b!1386640 (= lt!461222 (list!5446 (_2!7717 (v!21561 lt!461207))))))

(declare-fun lt!461229 () Unit!20305)

(assert (=> b!1386640 (= lt!461229 (lemmaConcatTwoListThenFSndIsSuffix!240 lt!461214 lt!461222))))

(assert (=> b!1386640 (isSuffix!262 lt!461222 (++!3646 lt!461214 lt!461222))))

(declare-fun lt!461200 () Unit!20305)

(assert (=> b!1386640 (= lt!461200 lt!461229)))

(declare-fun b!1386641 () Bool)

(declare-fun lt!461217 () tuple2!13654)

(assert (=> b!1386641 (= lt!461217 (lexRec!284 thiss!19762 rules!2550 (_2!7717 (v!21561 lt!461212))))))

(assert (=> b!1386641 (= e!885821 (tuple2!13655 (prepend!373 (_1!7713 lt!461217) (_1!7717 (v!21561 lt!461212))) (_2!7713 lt!461217)))))

(declare-fun b!1386642 () Bool)

(assert (=> b!1386642 (= e!885821 (tuple2!13655 (BalanceConc!9203 Empty!4631) lt!461225))))

(declare-fun d!396422 () Bool)

(assert (=> d!396422 e!885820))

(declare-fun res!625581 () Bool)

(assert (=> d!396422 (=> (not res!625581) (not e!885820))))

(assert (=> d!396422 (= res!625581 (= (list!5445 (_1!7713 lt!461220)) (list!5445 (_1!7713 (lexRec!284 thiss!19762 rules!2550 lt!460296)))))))

(assert (=> d!396422 (= lt!461220 e!885819)))

(declare-fun c!228257 () Bool)

(assert (=> d!396422 (= c!228257 ((_ is Some!2694) lt!461207))))

(assert (=> d!396422 (= lt!461207 (maxPrefixZipperSequenceV2!229 thiss!19762 rules!2550 lt!460296 lt!460296))))

(declare-fun lt!461205 () Unit!20305)

(declare-fun lt!461203 () Unit!20305)

(assert (=> d!396422 (= lt!461205 lt!461203)))

(declare-fun lt!461230 () List!14125)

(declare-fun lt!461218 () List!14125)

(assert (=> d!396422 (isSuffix!262 lt!461230 (++!3646 lt!461218 lt!461230))))

(assert (=> d!396422 (= lt!461203 (lemmaConcatTwoListThenFSndIsSuffix!240 lt!461218 lt!461230))))

(assert (=> d!396422 (= lt!461230 (list!5446 lt!460296))))

(assert (=> d!396422 (= lt!461218 (list!5446 (BalanceConc!9201 Empty!4630)))))

(assert (=> d!396422 (= (lexTailRecV2!425 thiss!19762 rules!2550 lt!460296 (BalanceConc!9201 Empty!4630) lt!460296 (BalanceConc!9203 Empty!4631)) lt!461220)))

(declare-fun b!1386643 () Bool)

(assert (=> b!1386643 (= e!885819 (tuple2!13655 (BalanceConc!9203 Empty!4631) lt!460296))))

(declare-fun lt!461211 () tuple2!13654)

(declare-fun b!1386644 () Bool)

(assert (=> b!1386644 (= lt!461211 (lexRec!284 thiss!19762 rules!2550 (_2!7717 (v!21561 lt!461201))))))

(assert (=> b!1386644 (= e!885818 (tuple2!13655 (prepend!373 (_1!7713 lt!461211) (_1!7717 (v!21561 lt!461201))) (_2!7713 lt!461211)))))

(declare-fun b!1386645 () Bool)

(assert (=> b!1386645 (= e!885818 (tuple2!13655 (BalanceConc!9203 Empty!4631) lt!460296))))

(assert (= (and d!396422 c!228257) b!1386640))

(assert (= (and d!396422 (not c!228257)) b!1386643))

(assert (= (and b!1386640 c!228255) b!1386644))

(assert (= (and b!1386640 (not c!228255)) b!1386645))

(assert (= (and b!1386640 c!228256) b!1386641))

(assert (= (and b!1386640 (not c!228256)) b!1386642))

(assert (= (and d!396422 res!625581) b!1386639))

(assert (=> b!1386640 m!1559675))

(declare-fun m!1560923 () Bool)

(assert (=> b!1386640 m!1560923))

(declare-fun m!1560925 () Bool)

(assert (=> b!1386640 m!1560925))

(declare-fun m!1560927 () Bool)

(assert (=> b!1386640 m!1560927))

(declare-fun m!1560929 () Bool)

(assert (=> b!1386640 m!1560929))

(declare-fun m!1560931 () Bool)

(assert (=> b!1386640 m!1560931))

(declare-fun m!1560933 () Bool)

(assert (=> b!1386640 m!1560933))

(declare-fun m!1560935 () Bool)

(assert (=> b!1386640 m!1560935))

(assert (=> b!1386640 m!1559675))

(assert (=> b!1386640 m!1560421))

(declare-fun m!1560937 () Bool)

(assert (=> b!1386640 m!1560937))

(declare-fun m!1560939 () Bool)

(assert (=> b!1386640 m!1560939))

(declare-fun m!1560941 () Bool)

(assert (=> b!1386640 m!1560941))

(declare-fun m!1560943 () Bool)

(assert (=> b!1386640 m!1560943))

(declare-fun m!1560945 () Bool)

(assert (=> b!1386640 m!1560945))

(assert (=> b!1386640 m!1560935))

(declare-fun m!1560947 () Bool)

(assert (=> b!1386640 m!1560947))

(declare-fun m!1560949 () Bool)

(assert (=> b!1386640 m!1560949))

(declare-fun m!1560951 () Bool)

(assert (=> b!1386640 m!1560951))

(assert (=> b!1386640 m!1560949))

(declare-fun m!1560953 () Bool)

(assert (=> b!1386640 m!1560953))

(declare-fun m!1560955 () Bool)

(assert (=> b!1386640 m!1560955))

(declare-fun m!1560957 () Bool)

(assert (=> b!1386640 m!1560957))

(declare-fun m!1560959 () Bool)

(assert (=> b!1386640 m!1560959))

(declare-fun m!1560961 () Bool)

(assert (=> b!1386640 m!1560961))

(declare-fun m!1560963 () Bool)

(assert (=> b!1386640 m!1560963))

(assert (=> b!1386640 m!1560937))

(declare-fun m!1560965 () Bool)

(assert (=> b!1386640 m!1560965))

(assert (=> b!1386640 m!1560939))

(declare-fun m!1560967 () Bool)

(assert (=> b!1386640 m!1560967))

(declare-fun m!1560969 () Bool)

(assert (=> b!1386640 m!1560969))

(declare-fun m!1560971 () Bool)

(assert (=> b!1386640 m!1560971))

(assert (=> b!1386640 m!1560943))

(declare-fun m!1560973 () Bool)

(assert (=> b!1386640 m!1560973))

(declare-fun m!1560975 () Bool)

(assert (=> b!1386640 m!1560975))

(assert (=> b!1386640 m!1560923))

(assert (=> b!1386640 m!1560963))

(declare-fun m!1560977 () Bool)

(assert (=> b!1386640 m!1560977))

(assert (=> b!1386640 m!1560957))

(assert (=> b!1386640 m!1560953))

(assert (=> b!1386640 m!1560943))

(declare-fun m!1560979 () Bool)

(assert (=> b!1386640 m!1560979))

(assert (=> b!1386640 m!1560975))

(assert (=> b!1386640 m!1560975))

(assert (=> b!1386640 m!1560927))

(declare-fun m!1560981 () Bool)

(assert (=> b!1386640 m!1560981))

(declare-fun m!1560983 () Bool)

(assert (=> b!1386640 m!1560983))

(declare-fun m!1560985 () Bool)

(assert (=> b!1386641 m!1560985))

(declare-fun m!1560987 () Bool)

(assert (=> b!1386641 m!1560987))

(declare-fun m!1560989 () Bool)

(assert (=> b!1386639 m!1560989))

(assert (=> b!1386639 m!1560945))

(declare-fun m!1560991 () Bool)

(assert (=> b!1386639 m!1560991))

(declare-fun m!1560993 () Bool)

(assert (=> b!1386644 m!1560993))

(declare-fun m!1560995 () Bool)

(assert (=> b!1386644 m!1560995))

(declare-fun m!1560997 () Bool)

(assert (=> d!396422 m!1560997))

(declare-fun m!1560999 () Bool)

(assert (=> d!396422 m!1560999))

(declare-fun m!1561001 () Bool)

(assert (=> d!396422 m!1561001))

(declare-fun m!1561003 () Bool)

(assert (=> d!396422 m!1561003))

(declare-fun m!1561005 () Bool)

(assert (=> d!396422 m!1561005))

(assert (=> d!396422 m!1560999))

(assert (=> d!396422 m!1559675))

(assert (=> d!396422 m!1560945))

(declare-fun m!1561007 () Bool)

(assert (=> d!396422 m!1561007))

(assert (=> d!396422 m!1557519))

(assert (=> d!395426 d!396422))

(declare-fun d!396424 () Bool)

(declare-fun lt!461233 () Bool)

(assert (=> d!396424 (= lt!461233 (select (content!2059 (t!122150 lt!460300)) lt!460309))))

(declare-fun e!885823 () Bool)

(assert (=> d!396424 (= lt!461233 e!885823)))

(declare-fun res!625583 () Bool)

(assert (=> d!396424 (=> (not res!625583) (not e!885823))))

(assert (=> d!396424 (= res!625583 ((_ is Cons!14059) (t!122150 lt!460300)))))

(assert (=> d!396424 (= (contains!2683 (t!122150 lt!460300) lt!460309) lt!461233)))

(declare-fun b!1386646 () Bool)

(declare-fun e!885822 () Bool)

(assert (=> b!1386646 (= e!885823 e!885822)))

(declare-fun res!625582 () Bool)

(assert (=> b!1386646 (=> res!625582 e!885822)))

(assert (=> b!1386646 (= res!625582 (= (h!19460 (t!122150 lt!460300)) lt!460309))))

(declare-fun b!1386647 () Bool)

(assert (=> b!1386647 (= e!885822 (contains!2683 (t!122150 (t!122150 lt!460300)) lt!460309))))

(assert (= (and d!396424 res!625583) b!1386646))

(assert (= (and b!1386646 (not res!625582)) b!1386647))

(assert (=> d!396424 m!1560765))

(declare-fun m!1561009 () Bool)

(assert (=> d!396424 m!1561009))

(declare-fun m!1561011 () Bool)

(assert (=> b!1386647 m!1561011))

(assert (=> b!1385134 d!396424))

(declare-fun d!396426 () Bool)

(declare-fun res!625584 () Bool)

(declare-fun e!885824 () Bool)

(assert (=> d!396426 (=> (not res!625584) (not e!885824))))

(assert (=> d!396426 (= res!625584 (validRegex!1633 (regex!2435 (rule!4194 t1!34))))))

(assert (=> d!396426 (= (ruleValid!600 thiss!19762 (rule!4194 t1!34)) e!885824)))

(declare-fun b!1386648 () Bool)

(declare-fun res!625585 () Bool)

(assert (=> b!1386648 (=> (not res!625585) (not e!885824))))

(assert (=> b!1386648 (= res!625585 (not (nullable!1213 (regex!2435 (rule!4194 t1!34)))))))

(declare-fun b!1386649 () Bool)

(assert (=> b!1386649 (= e!885824 (not (= (tag!2697 (rule!4194 t1!34)) (String!16862 ""))))))

(assert (= (and d!396426 res!625584) b!1386648))

(assert (= (and b!1386648 res!625585) b!1386649))

(assert (=> d!396426 m!1557577))

(assert (=> b!1386648 m!1558639))

(assert (=> bs!336876 d!396426))

(declare-fun d!396428 () Bool)

(assert (=> d!396428 (= (isDefined!2227 lt!460529) (not (isEmpty!8507 lt!460529)))))

(declare-fun bs!337096 () Bool)

(assert (= bs!337096 d!396428))

(assert (=> bs!337096 m!1558469))

(assert (=> b!1385078 d!396428))

(assert (=> d!395622 d!396354))

(declare-fun d!396430 () Bool)

(assert (=> d!396430 (= (inv!18403 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 t1!34))) (value!79030 t1!34))) (isBalanced!1368 (c!227730 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 t1!34))) (value!79030 t1!34)))))))

(declare-fun bs!337097 () Bool)

(assert (= bs!337097 d!396430))

(declare-fun m!1561013 () Bool)

(assert (=> bs!337097 m!1561013))

(assert (=> tb!72633 d!396430))

(assert (=> b!1384581 d!396262))

(assert (=> b!1384581 d!396020))

(assert (=> b!1384583 d!396018))

(declare-fun b!1386650 () Bool)

(declare-fun e!885828 () Rule!4670)

(assert (=> b!1386650 (= e!885828 (getWitness!402 (t!122151 (t!122151 rules!2550)) lambda!59596))))

(declare-fun b!1386651 () Bool)

(declare-fun e!885825 () Bool)

(declare-fun lt!461234 () Rule!4670)

(assert (=> b!1386651 (= e!885825 (contains!2684 (t!122151 rules!2550) lt!461234))))

(declare-fun b!1386652 () Bool)

(declare-fun lt!461235 () Unit!20305)

(declare-fun Unit!20321 () Unit!20305)

(assert (=> b!1386652 (= lt!461235 Unit!20321)))

(assert (=> b!1386652 false))

(assert (=> b!1386652 (= e!885828 (head!2523 (t!122151 rules!2550)))))

(declare-fun b!1386653 () Bool)

(declare-fun e!885827 () Rule!4670)

(assert (=> b!1386653 (= e!885827 (h!19461 (t!122151 rules!2550)))))

(declare-fun d!396432 () Bool)

(assert (=> d!396432 e!885825))

(declare-fun res!625586 () Bool)

(assert (=> d!396432 (=> (not res!625586) (not e!885825))))

(assert (=> d!396432 (= res!625586 (dynLambda!6429 lambda!59596 lt!461234))))

(assert (=> d!396432 (= lt!461234 e!885827)))

(declare-fun c!228259 () Bool)

(declare-fun e!885826 () Bool)

(assert (=> d!396432 (= c!228259 e!885826)))

(declare-fun res!625587 () Bool)

(assert (=> d!396432 (=> (not res!625587) (not e!885826))))

(assert (=> d!396432 (= res!625587 ((_ is Cons!14060) (t!122151 rules!2550)))))

(assert (=> d!396432 (exists!514 (t!122151 rules!2550) lambda!59596)))

(assert (=> d!396432 (= (getWitness!402 (t!122151 rules!2550) lambda!59596) lt!461234)))

(declare-fun b!1386654 () Bool)

(assert (=> b!1386654 (= e!885827 e!885828)))

(declare-fun c!228258 () Bool)

(assert (=> b!1386654 (= c!228258 ((_ is Cons!14060) (t!122151 rules!2550)))))

(declare-fun b!1386655 () Bool)

(assert (=> b!1386655 (= e!885826 (dynLambda!6429 lambda!59596 (h!19461 (t!122151 rules!2550))))))

(assert (= (and d!396432 res!625587) b!1386655))

(assert (= (and d!396432 c!228259) b!1386653))

(assert (= (and d!396432 (not c!228259)) b!1386654))

(assert (= (and b!1386654 c!228258) b!1386650))

(assert (= (and b!1386654 (not c!228258)) b!1386652))

(assert (= (and d!396432 res!625586) b!1386651))

(declare-fun b_lambda!42985 () Bool)

(assert (=> (not b_lambda!42985) (not d!396432)))

(declare-fun b_lambda!42987 () Bool)

(assert (=> (not b_lambda!42987) (not b!1386655)))

(declare-fun m!1561015 () Bool)

(assert (=> b!1386651 m!1561015))

(declare-fun m!1561017 () Bool)

(assert (=> d!396432 m!1561017))

(declare-fun m!1561019 () Bool)

(assert (=> d!396432 m!1561019))

(declare-fun m!1561021 () Bool)

(assert (=> b!1386652 m!1561021))

(declare-fun m!1561023 () Bool)

(assert (=> b!1386650 m!1561023))

(declare-fun m!1561025 () Bool)

(assert (=> b!1386655 m!1561025))

(assert (=> b!1384799 d!396432))

(declare-fun d!396434 () Bool)

(assert (=> d!396434 (= (isEmpty!8502 (tail!2010 lt!460285)) ((_ is Nil!14059) (tail!2010 lt!460285)))))

(assert (=> b!1385204 d!396434))

(declare-fun d!396436 () Bool)

(assert (=> d!396436 (= (tail!2010 lt!460285) (t!122150 lt!460285))))

(assert (=> b!1385204 d!396436))

(declare-fun d!396438 () Bool)

(declare-fun lt!461236 () Int)

(assert (=> d!396438 (= lt!461236 (size!11552 (list!5446 lt!460308)))))

(assert (=> d!396438 (= lt!461236 (size!11554 (c!227730 lt!460308)))))

(assert (=> d!396438 (= (size!11541 lt!460308) lt!461236)))

(declare-fun bs!337098 () Bool)

(assert (= bs!337098 d!396438))

(assert (=> bs!337098 m!1557607))

(assert (=> bs!337098 m!1557607))

(declare-fun m!1561027 () Bool)

(assert (=> bs!337098 m!1561027))

(declare-fun m!1561029 () Bool)

(assert (=> bs!337098 m!1561029))

(assert (=> b!1384592 d!396438))

(declare-fun d!396440 () Bool)

(assert (=> d!396440 true))

(declare-fun order!8601 () Int)

(declare-fun lambda!59698 () Int)

(declare-fun dynLambda!6445 (Int Int) Int)

(assert (=> d!396440 (< (dynLambda!6444 order!8599 (toValue!3718 (transformation!2435 (rule!4194 t2!34)))) (dynLambda!6445 order!8601 lambda!59698))))

(declare-fun Forall2!449 (Int) Bool)

(assert (=> d!396440 (= (equivClasses!901 (toChars!3577 (transformation!2435 (rule!4194 t2!34))) (toValue!3718 (transformation!2435 (rule!4194 t2!34)))) (Forall2!449 lambda!59698))))

(declare-fun bs!337099 () Bool)

(assert (= bs!337099 d!396440))

(declare-fun m!1561031 () Bool)

(assert (=> bs!337099 m!1561031))

(assert (=> b!1385221 d!396440))

(declare-fun d!396442 () Bool)

(declare-fun lt!461237 () Int)

(assert (=> d!396442 (>= lt!461237 0)))

(declare-fun e!885831 () Int)

(assert (=> d!396442 (= lt!461237 e!885831)))

(declare-fun c!228260 () Bool)

(assert (=> d!396442 (= c!228260 ((_ is Nil!14059) lt!460520))))

(assert (=> d!396442 (= (size!11552 lt!460520) lt!461237)))

(declare-fun b!1386660 () Bool)

(assert (=> b!1386660 (= e!885831 0)))

(declare-fun b!1386661 () Bool)

(assert (=> b!1386661 (= e!885831 (+ 1 (size!11552 (t!122150 lt!460520))))))

(assert (= (and d!396442 c!228260) b!1386660))

(assert (= (and d!396442 (not c!228260)) b!1386661))

(declare-fun m!1561033 () Bool)

(assert (=> b!1386661 m!1561033))

(assert (=> b!1385075 d!396442))

(declare-fun d!396444 () Bool)

(declare-fun lt!461238 () Int)

(assert (=> d!396444 (>= lt!461238 0)))

(declare-fun e!885832 () Int)

(assert (=> d!396444 (= lt!461238 e!885832)))

(declare-fun c!228261 () Bool)

(assert (=> d!396444 (= c!228261 ((_ is Nil!14059) lt!460285))))

(assert (=> d!396444 (= (size!11552 lt!460285) lt!461238)))

(declare-fun b!1386662 () Bool)

(assert (=> b!1386662 (= e!885832 0)))

(declare-fun b!1386663 () Bool)

(assert (=> b!1386663 (= e!885832 (+ 1 (size!11552 (t!122150 lt!460285))))))

(assert (= (and d!396444 c!228261) b!1386662))

(assert (= (and d!396444 (not c!228261)) b!1386663))

(declare-fun m!1561035 () Bool)

(assert (=> b!1386663 m!1561035))

(assert (=> b!1385075 d!396444))

(declare-fun d!396446 () Bool)

(declare-fun lt!461239 () Int)

(assert (=> d!396446 (>= lt!461239 0)))

(declare-fun e!885833 () Int)

(assert (=> d!396446 (= lt!461239 e!885833)))

(declare-fun c!228262 () Bool)

(assert (=> d!396446 (= c!228262 ((_ is Nil!14059) (Cons!14059 lt!460309 Nil!14059)))))

(assert (=> d!396446 (= (size!11552 (Cons!14059 lt!460309 Nil!14059)) lt!461239)))

(declare-fun b!1386664 () Bool)

(assert (=> b!1386664 (= e!885833 0)))

(declare-fun b!1386665 () Bool)

(assert (=> b!1386665 (= e!885833 (+ 1 (size!11552 (t!122150 (Cons!14059 lt!460309 Nil!14059)))))))

(assert (= (and d!396446 c!228262) b!1386664))

(assert (= (and d!396446 (not c!228262)) b!1386665))

(declare-fun m!1561037 () Bool)

(assert (=> b!1386665 m!1561037))

(assert (=> b!1385075 d!396446))

(declare-fun d!396448 () Bool)

(assert (=> d!396448 (= (list!5446 (_2!7713 lt!460406)) (list!5450 (c!227730 (_2!7713 lt!460406))))))

(declare-fun bs!337100 () Bool)

(assert (= bs!337100 d!396448))

(declare-fun m!1561039 () Bool)

(assert (=> bs!337100 m!1561039))

(assert (=> b!1384774 d!396448))

(assert (=> b!1384774 d!395582))

(assert (=> b!1384774 d!395584))

(assert (=> bm!92668 d!396290))

(declare-fun b!1386667 () Bool)

(declare-fun res!625593 () Bool)

(declare-fun e!885835 () Bool)

(assert (=> b!1386667 (=> (not res!625593) (not e!885835))))

(assert (=> b!1386667 (= res!625593 (= (head!2521 lt!460287) (head!2521 lt!460561)))))

(declare-fun b!1386666 () Bool)

(declare-fun e!885834 () Bool)

(assert (=> b!1386666 (= e!885834 e!885835)))

(declare-fun res!625591 () Bool)

(assert (=> b!1386666 (=> (not res!625591) (not e!885835))))

(assert (=> b!1386666 (= res!625591 (not ((_ is Nil!14059) lt!460561)))))

(declare-fun b!1386668 () Bool)

(assert (=> b!1386668 (= e!885835 (isPrefix!1140 (tail!2010 lt!460287) (tail!2010 lt!460561)))))

(declare-fun b!1386669 () Bool)

(declare-fun e!885836 () Bool)

(assert (=> b!1386669 (= e!885836 (>= (size!11552 lt!460561) (size!11552 lt!460287)))))

(declare-fun d!396450 () Bool)

(assert (=> d!396450 e!885836))

(declare-fun res!625590 () Bool)

(assert (=> d!396450 (=> res!625590 e!885836)))

(declare-fun lt!461240 () Bool)

(assert (=> d!396450 (= res!625590 (not lt!461240))))

(assert (=> d!396450 (= lt!461240 e!885834)))

(declare-fun res!625592 () Bool)

(assert (=> d!396450 (=> res!625592 e!885834)))

(assert (=> d!396450 (= res!625592 ((_ is Nil!14059) lt!460287))))

(assert (=> d!396450 (= (isPrefix!1140 lt!460287 lt!460561) lt!461240)))

(assert (= (and d!396450 (not res!625592)) b!1386666))

(assert (= (and b!1386666 res!625591) b!1386667))

(assert (= (and b!1386667 res!625593) b!1386668))

(assert (= (and d!396450 (not res!625590)) b!1386669))

(assert (=> b!1386667 m!1558407))

(assert (=> b!1386667 m!1560825))

(assert (=> b!1386668 m!1558411))

(assert (=> b!1386668 m!1560821))

(assert (=> b!1386668 m!1558411))

(assert (=> b!1386668 m!1560821))

(declare-fun m!1561041 () Bool)

(assert (=> b!1386668 m!1561041))

(declare-fun m!1561043 () Bool)

(assert (=> b!1386669 m!1561043))

(assert (=> b!1386669 m!1558613))

(assert (=> b!1385265 d!396450))

(declare-fun d!396452 () Bool)

(declare-fun lt!461241 () Bool)

(assert (=> d!396452 (= lt!461241 (select (content!2060 (t!122151 rules!2550)) (rule!4194 t1!34)))))

(declare-fun e!885837 () Bool)

(assert (=> d!396452 (= lt!461241 e!885837)))

(declare-fun res!625594 () Bool)

(assert (=> d!396452 (=> (not res!625594) (not e!885837))))

(assert (=> d!396452 (= res!625594 ((_ is Cons!14060) (t!122151 rules!2550)))))

(assert (=> d!396452 (= (contains!2684 (t!122151 rules!2550) (rule!4194 t1!34)) lt!461241)))

(declare-fun b!1386670 () Bool)

(declare-fun e!885838 () Bool)

(assert (=> b!1386670 (= e!885837 e!885838)))

(declare-fun res!625595 () Bool)

(assert (=> b!1386670 (=> res!625595 e!885838)))

(assert (=> b!1386670 (= res!625595 (= (h!19461 (t!122151 rules!2550)) (rule!4194 t1!34)))))

(declare-fun b!1386671 () Bool)

(assert (=> b!1386671 (= e!885838 (contains!2684 (t!122151 (t!122151 rules!2550)) (rule!4194 t1!34)))))

(assert (= (and d!396452 res!625594) b!1386670))

(assert (= (and b!1386670 (not res!625595)) b!1386671))

(assert (=> d!396452 m!1560711))

(declare-fun m!1561045 () Bool)

(assert (=> d!396452 m!1561045))

(declare-fun m!1561047 () Bool)

(assert (=> b!1386671 m!1561047))

(assert (=> b!1384746 d!396452))

(declare-fun bs!337101 () Bool)

(declare-fun d!396454 () Bool)

(assert (= bs!337101 (and d!396454 b!1384381)))

(declare-fun lambda!59703 () Int)

(assert (=> bs!337101 (= lambda!59703 lambda!59594)))

(declare-fun bs!337102 () Bool)

(assert (= bs!337102 (and d!396454 d!395552)))

(assert (=> bs!337102 (= lambda!59703 lambda!59632)))

(declare-fun bs!337103 () Bool)

(assert (= bs!337103 (and d!396454 d!396006)))

(declare-fun lambda!59704 () Int)

(assert (=> bs!337103 (not (= lambda!59704 lambda!59678))))

(declare-fun bs!337104 () Bool)

(assert (= bs!337104 (and d!396454 d!395360)))

(assert (=> bs!337104 (not (= lambda!59704 lambda!59613))))

(declare-fun bs!337105 () Bool)

(assert (= bs!337105 (and d!396454 d!396004)))

(assert (=> bs!337105 (not (= lambda!59704 lambda!59675))))

(declare-fun bs!337106 () Bool)

(assert (= bs!337106 (and d!396454 d!395354)))

(assert (=> bs!337106 (not (= lambda!59704 lambda!59612))))

(assert (=> bs!337106 (= lambda!59704 lambda!59611)))

(declare-fun bs!337107 () Bool)

(assert (= bs!337107 (and d!396454 d!395350)))

(assert (=> bs!337107 (not (= lambda!59704 lambda!59606))))

(assert (=> bs!337101 (not (= lambda!59704 lambda!59595))))

(assert (=> d!396454 (forall!3420 (map!3113 rules!2550 lambda!59703) lambda!59704)))

(declare-fun lt!461246 () Unit!20305)

(declare-fun e!885841 () Unit!20305)

(assert (=> d!396454 (= lt!461246 e!885841)))

(declare-fun c!228265 () Bool)

(assert (=> d!396454 (= c!228265 ((_ is Nil!14060) rules!2550))))

(assert (=> d!396454 (rulesValidInductive!782 thiss!19762 rules!2550)))

(assert (=> d!396454 (= (lemma!141 rules!2550 thiss!19762 rules!2550) lt!461246)))

(declare-fun b!1386676 () Bool)

(declare-fun Unit!20322 () Unit!20305)

(assert (=> b!1386676 (= e!885841 Unit!20322)))

(declare-fun b!1386677 () Bool)

(declare-fun Unit!20323 () Unit!20305)

(assert (=> b!1386677 (= e!885841 Unit!20323)))

(declare-fun lt!461247 () Unit!20305)

(assert (=> b!1386677 (= lt!461247 (lemma!141 rules!2550 thiss!19762 (t!122151 rules!2550)))))

(assert (= (and d!396454 c!228265) b!1386676))

(assert (= (and d!396454 (not c!228265)) b!1386677))

(declare-fun m!1561049 () Bool)

(assert (=> d!396454 m!1561049))

(assert (=> d!396454 m!1561049))

(declare-fun m!1561051 () Bool)

(assert (=> d!396454 m!1561051))

(assert (=> d!396454 m!1558387))

(declare-fun m!1561053 () Bool)

(assert (=> b!1386677 m!1561053))

(assert (=> d!395552 d!396454))

(declare-fun bs!337108 () Bool)

(declare-fun d!396456 () Bool)

(assert (= bs!337108 (and d!396456 d!396006)))

(declare-fun lambda!59707 () Int)

(assert (=> bs!337108 (not (= lambda!59707 lambda!59678))))

(declare-fun bs!337109 () Bool)

(assert (= bs!337109 (and d!396456 d!396454)))

(assert (=> bs!337109 (= lambda!59707 lambda!59704)))

(declare-fun bs!337110 () Bool)

(assert (= bs!337110 (and d!396456 d!395360)))

(assert (=> bs!337110 (not (= lambda!59707 lambda!59613))))

(declare-fun bs!337111 () Bool)

(assert (= bs!337111 (and d!396456 d!396004)))

(assert (=> bs!337111 (not (= lambda!59707 lambda!59675))))

(declare-fun bs!337112 () Bool)

(assert (= bs!337112 (and d!396456 d!395354)))

(assert (=> bs!337112 (not (= lambda!59707 lambda!59612))))

(assert (=> bs!337112 (= lambda!59707 lambda!59611)))

(declare-fun bs!337113 () Bool)

(assert (= bs!337113 (and d!396456 d!395350)))

(assert (=> bs!337113 (not (= lambda!59707 lambda!59606))))

(declare-fun bs!337114 () Bool)

(assert (= bs!337114 (and d!396456 b!1384381)))

(assert (=> bs!337114 (not (= lambda!59707 lambda!59595))))

(declare-fun e!885857 () Bool)

(declare-fun lt!461250 () Regex!3749)

(declare-fun b!1386698 () Bool)

(assert (=> b!1386698 (= e!885857 (= lt!461250 (head!2525 (map!3113 rules!2550 lambda!59632))))))

(declare-fun b!1386699 () Bool)

(declare-fun e!885854 () Bool)

(declare-fun e!885856 () Bool)

(assert (=> b!1386699 (= e!885854 e!885856)))

(declare-fun c!228277 () Bool)

(declare-fun isEmpty!8511 (List!14128) Bool)

(assert (=> b!1386699 (= c!228277 (isEmpty!8511 (map!3113 rules!2550 lambda!59632)))))

(declare-fun b!1386700 () Bool)

(assert (=> b!1386700 (= e!885856 e!885857)))

(declare-fun c!228275 () Bool)

(declare-fun tail!2014 (List!14128) List!14128)

(assert (=> b!1386700 (= c!228275 (isEmpty!8511 (tail!2014 (map!3113 rules!2550 lambda!59632))))))

(declare-fun b!1386701 () Bool)

(declare-fun e!885858 () Regex!3749)

(assert (=> b!1386701 (= e!885858 (Union!3749 (h!19463 (map!3113 rules!2550 lambda!59632)) (generalisedUnion!149 (t!122153 (map!3113 rules!2550 lambda!59632)))))))

(declare-fun b!1386702 () Bool)

(declare-fun e!885855 () Bool)

(assert (=> b!1386702 (= e!885855 (isEmpty!8511 (t!122153 (map!3113 rules!2550 lambda!59632))))))

(declare-fun b!1386703 () Bool)

(declare-fun isEmptyLang!55 (Regex!3749) Bool)

(assert (=> b!1386703 (= e!885856 (isEmptyLang!55 lt!461250))))

(declare-fun b!1386705 () Bool)

(declare-fun e!885859 () Regex!3749)

(assert (=> b!1386705 (= e!885859 (h!19463 (map!3113 rules!2550 lambda!59632)))))

(declare-fun b!1386706 () Bool)

(assert (=> b!1386706 (= e!885858 EmptyLang!3749)))

(declare-fun b!1386707 () Bool)

(declare-fun isUnion!55 (Regex!3749) Bool)

(assert (=> b!1386707 (= e!885857 (isUnion!55 lt!461250))))

(declare-fun b!1386704 () Bool)

(assert (=> b!1386704 (= e!885859 e!885858)))

(declare-fun c!228276 () Bool)

(assert (=> b!1386704 (= c!228276 ((_ is Cons!14062) (map!3113 rules!2550 lambda!59632)))))

(assert (=> d!396456 e!885854))

(declare-fun res!625601 () Bool)

(assert (=> d!396456 (=> (not res!625601) (not e!885854))))

(assert (=> d!396456 (= res!625601 (validRegex!1633 lt!461250))))

(assert (=> d!396456 (= lt!461250 e!885859)))

(declare-fun c!228274 () Bool)

(assert (=> d!396456 (= c!228274 e!885855)))

(declare-fun res!625600 () Bool)

(assert (=> d!396456 (=> (not res!625600) (not e!885855))))

(assert (=> d!396456 (= res!625600 ((_ is Cons!14062) (map!3113 rules!2550 lambda!59632)))))

(assert (=> d!396456 (forall!3420 (map!3113 rules!2550 lambda!59632) lambda!59707)))

(assert (=> d!396456 (= (generalisedUnion!149 (map!3113 rules!2550 lambda!59632)) lt!461250)))

(assert (= (and d!396456 res!625600) b!1386702))

(assert (= (and d!396456 c!228274) b!1386705))

(assert (= (and d!396456 (not c!228274)) b!1386704))

(assert (= (and b!1386704 c!228276) b!1386701))

(assert (= (and b!1386704 (not c!228276)) b!1386706))

(assert (= (and d!396456 res!625601) b!1386699))

(assert (= (and b!1386699 c!228277) b!1386703))

(assert (= (and b!1386699 (not c!228277)) b!1386700))

(assert (= (and b!1386700 c!228275) b!1386698))

(assert (= (and b!1386700 (not c!228275)) b!1386707))

(declare-fun m!1561055 () Bool)

(assert (=> d!396456 m!1561055))

(assert (=> d!396456 m!1558439))

(declare-fun m!1561057 () Bool)

(assert (=> d!396456 m!1561057))

(assert (=> b!1386700 m!1558439))

(declare-fun m!1561059 () Bool)

(assert (=> b!1386700 m!1561059))

(assert (=> b!1386700 m!1561059))

(declare-fun m!1561061 () Bool)

(assert (=> b!1386700 m!1561061))

(declare-fun m!1561063 () Bool)

(assert (=> b!1386707 m!1561063))

(declare-fun m!1561065 () Bool)

(assert (=> b!1386702 m!1561065))

(assert (=> b!1386699 m!1558439))

(declare-fun m!1561067 () Bool)

(assert (=> b!1386699 m!1561067))

(declare-fun m!1561069 () Bool)

(assert (=> b!1386701 m!1561069))

(declare-fun m!1561071 () Bool)

(assert (=> b!1386703 m!1561071))

(assert (=> b!1386698 m!1558439))

(declare-fun m!1561073 () Bool)

(assert (=> b!1386698 m!1561073))

(assert (=> d!395552 d!396456))

(declare-fun d!396458 () Bool)

(declare-fun lt!461251 () List!14128)

(assert (=> d!396458 (= (size!11547 lt!461251) (size!11548 rules!2550))))

(declare-fun e!885860 () List!14128)

(assert (=> d!396458 (= lt!461251 e!885860)))

(declare-fun c!228278 () Bool)

(assert (=> d!396458 (= c!228278 ((_ is Nil!14060) rules!2550))))

(assert (=> d!396458 (= (map!3113 rules!2550 lambda!59632) lt!461251)))

(declare-fun b!1386708 () Bool)

(assert (=> b!1386708 (= e!885860 Nil!14062)))

(declare-fun b!1386709 () Bool)

(assert (=> b!1386709 (= e!885860 ($colon$colon!214 (map!3113 (t!122151 rules!2550) lambda!59632) (dynLambda!6424 lambda!59632 (h!19461 rules!2550))))))

(assert (= (and d!396458 c!228278) b!1386708))

(assert (= (and d!396458 (not c!228278)) b!1386709))

(declare-fun b_lambda!42989 () Bool)

(assert (=> (not b_lambda!42989) (not b!1386709)))

(declare-fun m!1561075 () Bool)

(assert (=> d!396458 m!1561075))

(assert (=> d!396458 m!1557755))

(declare-fun m!1561077 () Bool)

(assert (=> b!1386709 m!1561077))

(declare-fun m!1561079 () Bool)

(assert (=> b!1386709 m!1561079))

(assert (=> b!1386709 m!1561077))

(assert (=> b!1386709 m!1561079))

(declare-fun m!1561081 () Bool)

(assert (=> b!1386709 m!1561081))

(assert (=> d!395552 d!396458))

(declare-fun d!396460 () Bool)

(assert (=> d!396460 (= (isEmpty!8502 (list!5446 (_2!7713 lt!460290))) ((_ is Nil!14059) (list!5446 (_2!7713 lt!460290))))))

(assert (=> d!395372 d!396460))

(declare-fun d!396462 () Bool)

(assert (=> d!396462 (= (list!5446 (_2!7713 lt!460290)) (list!5450 (c!227730 (_2!7713 lt!460290))))))

(declare-fun bs!337115 () Bool)

(assert (= bs!337115 d!396462))

(declare-fun m!1561083 () Bool)

(assert (=> bs!337115 m!1561083))

(assert (=> d!395372 d!396462))

(declare-fun d!396464 () Bool)

(declare-fun lt!461252 () Bool)

(assert (=> d!396464 (= lt!461252 (isEmpty!8502 (list!5450 (c!227730 (_2!7713 lt!460290)))))))

(assert (=> d!396464 (= lt!461252 (= (size!11554 (c!227730 (_2!7713 lt!460290))) 0))))

(assert (=> d!396464 (= (isEmpty!8503 (c!227730 (_2!7713 lt!460290))) lt!461252)))

(declare-fun bs!337116 () Bool)

(assert (= bs!337116 d!396464))

(assert (=> bs!337116 m!1561083))

(assert (=> bs!337116 m!1561083))

(declare-fun m!1561085 () Bool)

(assert (=> bs!337116 m!1561085))

(declare-fun m!1561087 () Bool)

(assert (=> bs!337116 m!1561087))

(assert (=> d!395372 d!396464))

(declare-fun d!396466 () Bool)

(declare-fun c!228281 () Bool)

(assert (=> d!396466 (= c!228281 ((_ is Nil!14062) (map!3113 rules!2550 lambda!59594)))))

(declare-fun e!885863 () (InoxSet Regex!3749))

(assert (=> d!396466 (= (content!2063 (map!3113 rules!2550 lambda!59594)) e!885863)))

(declare-fun b!1386714 () Bool)

(assert (=> b!1386714 (= e!885863 ((as const (Array Regex!3749 Bool)) false))))

(declare-fun b!1386715 () Bool)

(assert (=> b!1386715 (= e!885863 ((_ map or) (store ((as const (Array Regex!3749 Bool)) false) (h!19463 (map!3113 rules!2550 lambda!59594)) true) (content!2063 (t!122153 (map!3113 rules!2550 lambda!59594)))))))

(assert (= (and d!396466 c!228281) b!1386714))

(assert (= (and d!396466 (not c!228281)) b!1386715))

(declare-fun m!1561089 () Bool)

(assert (=> b!1386715 m!1561089))

(declare-fun m!1561091 () Bool)

(assert (=> b!1386715 m!1561091))

(assert (=> d!395564 d!396466))

(declare-fun d!396468 () Bool)

(declare-fun lt!461253 () Int)

(assert (=> d!396468 (>= lt!461253 0)))

(declare-fun e!885864 () Int)

(assert (=> d!396468 (= lt!461253 e!885864)))

(declare-fun c!228282 () Bool)

(assert (=> d!396468 (= c!228282 ((_ is Nil!14061) (_1!7715 lt!460545)))))

(assert (=> d!396468 (= (size!11553 (_1!7715 lt!460545)) lt!461253)))

(declare-fun b!1386716 () Bool)

(assert (=> b!1386716 (= e!885864 0)))

(declare-fun b!1386717 () Bool)

(assert (=> b!1386717 (= e!885864 (+ 1 (size!11553 (t!122152 (_1!7715 lt!460545)))))))

(assert (= (and d!396468 c!228282) b!1386716))

(assert (= (and d!396468 (not c!228282)) b!1386717))

(declare-fun m!1561093 () Bool)

(assert (=> b!1386717 m!1561093))

(assert (=> d!395582 d!396468))

(declare-fun b!1386718 () Bool)

(declare-fun e!885866 () Bool)

(declare-fun e!885867 () Bool)

(assert (=> b!1386718 (= e!885866 e!885867)))

(declare-fun res!625602 () Bool)

(assert (=> b!1386718 (=> (not res!625602) (not e!885867))))

(declare-fun lt!461258 () Option!2694)

(assert (=> b!1386718 (= res!625602 (isDefined!2227 lt!461258))))

(declare-fun b!1386719 () Bool)

(declare-fun e!885865 () Option!2694)

(declare-fun call!92792 () Option!2694)

(assert (=> b!1386719 (= e!885865 call!92792)))

(declare-fun b!1386720 () Bool)

(declare-fun res!625605 () Bool)

(assert (=> b!1386720 (=> (not res!625605) (not e!885867))))

(assert (=> b!1386720 (= res!625605 (< (size!11552 (_2!7714 (get!4370 lt!461258))) (size!11552 (list!5446 lt!460296))))))

(declare-fun d!396470 () Bool)

(assert (=> d!396470 e!885866))

(declare-fun res!625608 () Bool)

(assert (=> d!396470 (=> res!625608 e!885866)))

(assert (=> d!396470 (= res!625608 (isEmpty!8507 lt!461258))))

(assert (=> d!396470 (= lt!461258 e!885865)))

(declare-fun c!228283 () Bool)

(assert (=> d!396470 (= c!228283 (and ((_ is Cons!14060) rules!2550) ((_ is Nil!14060) (t!122151 rules!2550))))))

(declare-fun lt!461256 () Unit!20305)

(declare-fun lt!461255 () Unit!20305)

(assert (=> d!396470 (= lt!461256 lt!461255)))

(assert (=> d!396470 (isPrefix!1140 (list!5446 lt!460296) (list!5446 lt!460296))))

(assert (=> d!396470 (= lt!461255 (lemmaIsPrefixRefl!799 (list!5446 lt!460296) (list!5446 lt!460296)))))

(assert (=> d!396470 (rulesValidInductive!782 thiss!19762 rules!2550)))

(assert (=> d!396470 (= (maxPrefix!1104 thiss!19762 rules!2550 (list!5446 lt!460296)) lt!461258)))

(declare-fun b!1386721 () Bool)

(declare-fun res!625604 () Bool)

(assert (=> b!1386721 (=> (not res!625604) (not e!885867))))

(assert (=> b!1386721 (= res!625604 (= (++!3646 (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!461258)))) (_2!7714 (get!4370 lt!461258))) (list!5446 lt!460296)))))

(declare-fun b!1386722 () Bool)

(declare-fun lt!461257 () Option!2694)

(declare-fun lt!461254 () Option!2694)

(assert (=> b!1386722 (= e!885865 (ite (and ((_ is None!2693) lt!461257) ((_ is None!2693) lt!461254)) None!2693 (ite ((_ is None!2693) lt!461254) lt!461257 (ite ((_ is None!2693) lt!461257) lt!461254 (ite (>= (size!11542 (_1!7714 (v!21547 lt!461257))) (size!11542 (_1!7714 (v!21547 lt!461254)))) lt!461257 lt!461254)))))))

(assert (=> b!1386722 (= lt!461257 call!92792)))

(assert (=> b!1386722 (= lt!461254 (maxPrefix!1104 thiss!19762 (t!122151 rules!2550) (list!5446 lt!460296)))))

(declare-fun b!1386723 () Bool)

(declare-fun res!625603 () Bool)

(assert (=> b!1386723 (=> (not res!625603) (not e!885867))))

(assert (=> b!1386723 (= res!625603 (= (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!461258)))) (originalCharacters!3297 (_1!7714 (get!4370 lt!461258)))))))

(declare-fun b!1386724 () Bool)

(declare-fun res!625606 () Bool)

(assert (=> b!1386724 (=> (not res!625606) (not e!885867))))

(assert (=> b!1386724 (= res!625606 (= (value!79030 (_1!7714 (get!4370 lt!461258))) (apply!3519 (transformation!2435 (rule!4194 (_1!7714 (get!4370 lt!461258)))) (seqFromList!1643 (originalCharacters!3297 (_1!7714 (get!4370 lt!461258)))))))))

(declare-fun b!1386725 () Bool)

(declare-fun res!625607 () Bool)

(assert (=> b!1386725 (=> (not res!625607) (not e!885867))))

(assert (=> b!1386725 (= res!625607 (matchR!1740 (regex!2435 (rule!4194 (_1!7714 (get!4370 lt!461258)))) (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!461258))))))))

(declare-fun bm!92787 () Bool)

(assert (=> bm!92787 (= call!92792 (maxPrefixOneRule!625 thiss!19762 (h!19461 rules!2550) (list!5446 lt!460296)))))

(declare-fun b!1386726 () Bool)

(assert (=> b!1386726 (= e!885867 (contains!2684 rules!2550 (rule!4194 (_1!7714 (get!4370 lt!461258)))))))

(assert (= (and d!396470 c!228283) b!1386719))

(assert (= (and d!396470 (not c!228283)) b!1386722))

(assert (= (or b!1386719 b!1386722) bm!92787))

(assert (= (and d!396470 (not res!625608)) b!1386718))

(assert (= (and b!1386718 res!625602) b!1386723))

(assert (= (and b!1386723 res!625603) b!1386720))

(assert (= (and b!1386720 res!625605) b!1386721))

(assert (= (and b!1386721 res!625604) b!1386724))

(assert (= (and b!1386724 res!625606) b!1386725))

(assert (= (and b!1386725 res!625607) b!1386726))

(declare-fun m!1561095 () Bool)

(assert (=> b!1386720 m!1561095))

(declare-fun m!1561097 () Bool)

(assert (=> b!1386720 m!1561097))

(assert (=> b!1386720 m!1557519))

(assert (=> b!1386720 m!1558573))

(assert (=> b!1386724 m!1561095))

(declare-fun m!1561099 () Bool)

(assert (=> b!1386724 m!1561099))

(assert (=> b!1386724 m!1561099))

(declare-fun m!1561101 () Bool)

(assert (=> b!1386724 m!1561101))

(assert (=> b!1386723 m!1561095))

(declare-fun m!1561103 () Bool)

(assert (=> b!1386723 m!1561103))

(assert (=> b!1386723 m!1561103))

(declare-fun m!1561105 () Bool)

(assert (=> b!1386723 m!1561105))

(assert (=> bm!92787 m!1557519))

(declare-fun m!1561107 () Bool)

(assert (=> bm!92787 m!1561107))

(assert (=> b!1386722 m!1557519))

(declare-fun m!1561109 () Bool)

(assert (=> b!1386722 m!1561109))

(declare-fun m!1561111 () Bool)

(assert (=> b!1386718 m!1561111))

(assert (=> b!1386725 m!1561095))

(assert (=> b!1386725 m!1561103))

(assert (=> b!1386725 m!1561103))

(assert (=> b!1386725 m!1561105))

(assert (=> b!1386725 m!1561105))

(declare-fun m!1561113 () Bool)

(assert (=> b!1386725 m!1561113))

(declare-fun m!1561115 () Bool)

(assert (=> d!396470 m!1561115))

(assert (=> d!396470 m!1557519))

(assert (=> d!396470 m!1557519))

(declare-fun m!1561117 () Bool)

(assert (=> d!396470 m!1561117))

(assert (=> d!396470 m!1557519))

(assert (=> d!396470 m!1557519))

(declare-fun m!1561119 () Bool)

(assert (=> d!396470 m!1561119))

(assert (=> d!396470 m!1558387))

(assert (=> b!1386726 m!1561095))

(declare-fun m!1561121 () Bool)

(assert (=> b!1386726 m!1561121))

(assert (=> b!1386721 m!1561095))

(assert (=> b!1386721 m!1561103))

(assert (=> b!1386721 m!1561103))

(assert (=> b!1386721 m!1561105))

(assert (=> b!1386721 m!1561105))

(declare-fun m!1561123 () Bool)

(assert (=> b!1386721 m!1561123))

(assert (=> d!395582 d!396470))

(declare-fun d!396472 () Bool)

(assert (=> d!396472 (= (Exists!899 lambda!59635) (choose!8507 lambda!59635))))

(declare-fun bs!337117 () Bool)

(assert (= bs!337117 d!396472))

(declare-fun m!1561125 () Bool)

(assert (=> bs!337117 m!1561125))

(assert (=> d!395588 d!396472))

(declare-fun bs!337118 () Bool)

(declare-fun d!396474 () Bool)

(assert (= bs!337118 (and d!396474 b!1384376)))

(declare-fun lambda!59710 () Int)

(assert (=> bs!337118 (= lambda!59710 lambda!59593)))

(declare-fun bs!337119 () Bool)

(assert (= bs!337119 (and d!396474 d!395588)))

(assert (=> bs!337119 (= lambda!59710 lambda!59635)))

(assert (=> d!396474 true))

(assert (=> d!396474 true))

(assert (=> d!396474 (Exists!899 lambda!59710)))

(assert (=> d!396474 true))

(declare-fun _$103!155 () Unit!20305)

(assert (=> d!396474 (= (choose!8508 lt!460292 lt!460287) _$103!155)))

(declare-fun bs!337120 () Bool)

(assert (= bs!337120 d!396474))

(declare-fun m!1561127 () Bool)

(assert (=> bs!337120 m!1561127))

(assert (=> d!395588 d!396474))

(declare-fun b!1386729 () Bool)

(declare-fun res!625611 () Bool)

(declare-fun e!885871 () Bool)

(assert (=> b!1386729 (=> res!625611 e!885871)))

(assert (=> b!1386729 (= res!625611 (not ((_ is Concat!6275) lt!460292)))))

(declare-fun e!885875 () Bool)

(assert (=> b!1386729 (= e!885875 e!885871)))

(declare-fun b!1386730 () Bool)

(declare-fun e!885873 () Bool)

(declare-fun call!92795 () Bool)

(assert (=> b!1386730 (= e!885873 call!92795)))

(declare-fun bm!92788 () Bool)

(declare-fun call!92793 () Bool)

(assert (=> bm!92788 (= call!92795 call!92793)))

(declare-fun d!396476 () Bool)

(declare-fun res!625615 () Bool)

(declare-fun e!885870 () Bool)

(assert (=> d!396476 (=> res!625615 e!885870)))

(assert (=> d!396476 (= res!625615 ((_ is ElementMatch!3749) lt!460292))))

(assert (=> d!396476 (= (validRegex!1633 lt!460292) e!885870)))

(declare-fun b!1386731 () Bool)

(declare-fun res!625612 () Bool)

(declare-fun e!885876 () Bool)

(assert (=> b!1386731 (=> (not res!625612) (not e!885876))))

(declare-fun call!92794 () Bool)

(assert (=> b!1386731 (= res!625612 call!92794)))

(assert (=> b!1386731 (= e!885875 e!885876)))

(declare-fun c!228284 () Bool)

(declare-fun c!228285 () Bool)

(declare-fun bm!92789 () Bool)

(assert (=> bm!92789 (= call!92793 (validRegex!1633 (ite c!228285 (reg!4078 lt!460292) (ite c!228284 (regTwo!8011 lt!460292) (regTwo!8010 lt!460292)))))))

(declare-fun b!1386732 () Bool)

(assert (=> b!1386732 (= e!885876 call!92795)))

(declare-fun b!1386733 () Bool)

(declare-fun e!885874 () Bool)

(assert (=> b!1386733 (= e!885874 e!885875)))

(assert (=> b!1386733 (= c!228284 ((_ is Union!3749) lt!460292))))

(declare-fun b!1386734 () Bool)

(declare-fun e!885872 () Bool)

(assert (=> b!1386734 (= e!885872 call!92793)))

(declare-fun bm!92790 () Bool)

(assert (=> bm!92790 (= call!92794 (validRegex!1633 (ite c!228284 (regOne!8011 lt!460292) (regOne!8010 lt!460292))))))

(declare-fun b!1386735 () Bool)

(assert (=> b!1386735 (= e!885871 e!885873)))

(declare-fun res!625613 () Bool)

(assert (=> b!1386735 (=> (not res!625613) (not e!885873))))

(assert (=> b!1386735 (= res!625613 call!92794)))

(declare-fun b!1386736 () Bool)

(assert (=> b!1386736 (= e!885874 e!885872)))

(declare-fun res!625614 () Bool)

(assert (=> b!1386736 (= res!625614 (not (nullable!1213 (reg!4078 lt!460292))))))

(assert (=> b!1386736 (=> (not res!625614) (not e!885872))))

(declare-fun b!1386737 () Bool)

(assert (=> b!1386737 (= e!885870 e!885874)))

(assert (=> b!1386737 (= c!228285 ((_ is Star!3749) lt!460292))))

(assert (= (and d!396476 (not res!625615)) b!1386737))

(assert (= (and b!1386737 c!228285) b!1386736))

(assert (= (and b!1386737 (not c!228285)) b!1386733))

(assert (= (and b!1386736 res!625614) b!1386734))

(assert (= (and b!1386733 c!228284) b!1386731))

(assert (= (and b!1386733 (not c!228284)) b!1386729))

(assert (= (and b!1386731 res!625612) b!1386732))

(assert (= (and b!1386729 (not res!625611)) b!1386735))

(assert (= (and b!1386735 res!625613) b!1386730))

(assert (= (or b!1386731 b!1386735) bm!92790))

(assert (= (or b!1386732 b!1386730) bm!92788))

(assert (= (or b!1386734 bm!92788) bm!92789))

(declare-fun m!1561129 () Bool)

(assert (=> bm!92789 m!1561129))

(declare-fun m!1561131 () Bool)

(assert (=> bm!92790 m!1561131))

(declare-fun m!1561133 () Bool)

(assert (=> b!1386736 m!1561133))

(assert (=> d!395588 d!396476))

(declare-fun d!396478 () Bool)

(assert (=> d!396478 (= (nullable!1213 (regex!2435 (rule!4194 t1!34))) (nullableFct!288 (regex!2435 (rule!4194 t1!34))))))

(declare-fun bs!337121 () Bool)

(assert (= bs!337121 d!396478))

(declare-fun m!1561135 () Bool)

(assert (=> bs!337121 m!1561135))

(assert (=> b!1385212 d!396478))

(declare-fun d!396480 () Bool)

(declare-fun e!885877 () Bool)

(assert (=> d!396480 e!885877))

(declare-fun res!625616 () Bool)

(assert (=> d!396480 (=> (not res!625616) (not e!885877))))

(declare-fun lt!461259 () List!14125)

(assert (=> d!396480 (= res!625616 (= (content!2059 lt!461259) ((_ map or) (content!2059 (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460529))))) (content!2059 (_2!7714 (get!4370 lt!460529))))))))

(declare-fun e!885878 () List!14125)

(assert (=> d!396480 (= lt!461259 e!885878)))

(declare-fun c!228286 () Bool)

(assert (=> d!396480 (= c!228286 ((_ is Nil!14059) (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460529))))))))

(assert (=> d!396480 (= (++!3646 (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460529)))) (_2!7714 (get!4370 lt!460529))) lt!461259)))

(declare-fun b!1386738 () Bool)

(assert (=> b!1386738 (= e!885878 (_2!7714 (get!4370 lt!460529)))))

(declare-fun b!1386740 () Bool)

(declare-fun res!625617 () Bool)

(assert (=> b!1386740 (=> (not res!625617) (not e!885877))))

(assert (=> b!1386740 (= res!625617 (= (size!11552 lt!461259) (+ (size!11552 (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460529))))) (size!11552 (_2!7714 (get!4370 lt!460529))))))))

(declare-fun b!1386741 () Bool)

(assert (=> b!1386741 (= e!885877 (or (not (= (_2!7714 (get!4370 lt!460529)) Nil!14059)) (= lt!461259 (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460529)))))))))

(declare-fun b!1386739 () Bool)

(assert (=> b!1386739 (= e!885878 (Cons!14059 (h!19460 (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460529))))) (++!3646 (t!122150 (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460529))))) (_2!7714 (get!4370 lt!460529)))))))

(assert (= (and d!396480 c!228286) b!1386738))

(assert (= (and d!396480 (not c!228286)) b!1386739))

(assert (= (and d!396480 res!625616) b!1386740))

(assert (= (and b!1386740 res!625617) b!1386741))

(declare-fun m!1561137 () Bool)

(assert (=> d!396480 m!1561137))

(assert (=> d!396480 m!1558459))

(declare-fun m!1561139 () Bool)

(assert (=> d!396480 m!1561139))

(declare-fun m!1561141 () Bool)

(assert (=> d!396480 m!1561141))

(declare-fun m!1561143 () Bool)

(assert (=> b!1386740 m!1561143))

(assert (=> b!1386740 m!1558459))

(declare-fun m!1561145 () Bool)

(assert (=> b!1386740 m!1561145))

(assert (=> b!1386740 m!1558451))

(declare-fun m!1561147 () Bool)

(assert (=> b!1386739 m!1561147))

(assert (=> b!1385081 d!396480))

(assert (=> b!1385081 d!396028))

(assert (=> b!1385081 d!396030))

(assert (=> b!1385081 d!396026))

(declare-fun b!1386742 () Bool)

(declare-fun res!625618 () Bool)

(declare-fun e!885882 () Bool)

(assert (=> b!1386742 (=> (not res!625618) (not e!885882))))

(declare-fun lt!461262 () Option!2694)

(assert (=> b!1386742 (= res!625618 (= (rule!4194 (_1!7714 (get!4370 lt!461262))) (h!19461 rules!2550)))))

(declare-fun b!1386743 () Bool)

(declare-fun res!625622 () Bool)

(assert (=> b!1386743 (=> (not res!625622) (not e!885882))))

(assert (=> b!1386743 (= res!625622 (= (++!3646 (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!461262)))) (_2!7714 (get!4370 lt!461262))) lt!460299))))

(declare-fun d!396482 () Bool)

(declare-fun e!885879 () Bool)

(assert (=> d!396482 e!885879))

(declare-fun res!625624 () Bool)

(assert (=> d!396482 (=> res!625624 e!885879)))

(assert (=> d!396482 (= res!625624 (isEmpty!8507 lt!461262))))

(declare-fun e!885880 () Option!2694)

(assert (=> d!396482 (= lt!461262 e!885880)))

(declare-fun c!228287 () Bool)

(declare-fun lt!461264 () tuple2!13666)

(assert (=> d!396482 (= c!228287 (isEmpty!8502 (_1!7719 lt!461264)))))

(assert (=> d!396482 (= lt!461264 (findLongestMatch!242 (regex!2435 (h!19461 rules!2550)) lt!460299))))

(assert (=> d!396482 (ruleValid!600 thiss!19762 (h!19461 rules!2550))))

(assert (=> d!396482 (= (maxPrefixOneRule!625 thiss!19762 (h!19461 rules!2550) lt!460299) lt!461262)))

(declare-fun b!1386744 () Bool)

(declare-fun res!625621 () Bool)

(assert (=> b!1386744 (=> (not res!625621) (not e!885882))))

(assert (=> b!1386744 (= res!625621 (= (value!79030 (_1!7714 (get!4370 lt!461262))) (apply!3519 (transformation!2435 (rule!4194 (_1!7714 (get!4370 lt!461262)))) (seqFromList!1643 (originalCharacters!3297 (_1!7714 (get!4370 lt!461262)))))))))

(declare-fun b!1386745 () Bool)

(assert (=> b!1386745 (= e!885880 (Some!2693 (tuple2!13657 (Token!4533 (apply!3519 (transformation!2435 (h!19461 rules!2550)) (seqFromList!1643 (_1!7719 lt!461264))) (h!19461 rules!2550) (size!11541 (seqFromList!1643 (_1!7719 lt!461264))) (_1!7719 lt!461264)) (_2!7719 lt!461264))))))

(declare-fun lt!461260 () Unit!20305)

(assert (=> b!1386745 (= lt!461260 (longestMatchIsAcceptedByMatchOrIsEmpty!270 (regex!2435 (h!19461 rules!2550)) lt!460299))))

(declare-fun res!625620 () Bool)

(assert (=> b!1386745 (= res!625620 (isEmpty!8502 (_1!7719 (findLongestMatchInner!286 (regex!2435 (h!19461 rules!2550)) Nil!14059 (size!11552 Nil!14059) lt!460299 lt!460299 (size!11552 lt!460299)))))))

(declare-fun e!885881 () Bool)

(assert (=> b!1386745 (=> res!625620 e!885881)))

(assert (=> b!1386745 e!885881))

(declare-fun lt!461261 () Unit!20305)

(assert (=> b!1386745 (= lt!461261 lt!461260)))

(declare-fun lt!461263 () Unit!20305)

(assert (=> b!1386745 (= lt!461263 (lemmaSemiInverse!340 (transformation!2435 (h!19461 rules!2550)) (seqFromList!1643 (_1!7719 lt!461264))))))

(declare-fun b!1386746 () Bool)

(assert (=> b!1386746 (= e!885879 e!885882)))

(declare-fun res!625623 () Bool)

(assert (=> b!1386746 (=> (not res!625623) (not e!885882))))

(assert (=> b!1386746 (= res!625623 (matchR!1740 (regex!2435 (h!19461 rules!2550)) (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!461262))))))))

(declare-fun b!1386747 () Bool)

(assert (=> b!1386747 (= e!885881 (matchR!1740 (regex!2435 (h!19461 rules!2550)) (_1!7719 (findLongestMatchInner!286 (regex!2435 (h!19461 rules!2550)) Nil!14059 (size!11552 Nil!14059) lt!460299 lt!460299 (size!11552 lt!460299)))))))

(declare-fun b!1386748 () Bool)

(declare-fun res!625619 () Bool)

(assert (=> b!1386748 (=> (not res!625619) (not e!885882))))

(assert (=> b!1386748 (= res!625619 (< (size!11552 (_2!7714 (get!4370 lt!461262))) (size!11552 lt!460299)))))

(declare-fun b!1386749 () Bool)

(assert (=> b!1386749 (= e!885880 None!2693)))

(declare-fun b!1386750 () Bool)

(assert (=> b!1386750 (= e!885882 (= (size!11542 (_1!7714 (get!4370 lt!461262))) (size!11552 (originalCharacters!3297 (_1!7714 (get!4370 lt!461262))))))))

(assert (= (and d!396482 c!228287) b!1386749))

(assert (= (and d!396482 (not c!228287)) b!1386745))

(assert (= (and b!1386745 (not res!625620)) b!1386747))

(assert (= (and d!396482 (not res!625624)) b!1386746))

(assert (= (and b!1386746 res!625623) b!1386743))

(assert (= (and b!1386743 res!625622) b!1386748))

(assert (= (and b!1386748 res!625619) b!1386742))

(assert (= (and b!1386742 res!625618) b!1386744))

(assert (= (and b!1386744 res!625621) b!1386750))

(declare-fun m!1561149 () Bool)

(assert (=> b!1386750 m!1561149))

(declare-fun m!1561151 () Bool)

(assert (=> b!1386750 m!1561151))

(declare-fun m!1561153 () Bool)

(assert (=> b!1386745 m!1561153))

(declare-fun m!1561155 () Bool)

(assert (=> b!1386745 m!1561155))

(assert (=> b!1386745 m!1558363))

(assert (=> b!1386745 m!1561153))

(declare-fun m!1561157 () Bool)

(assert (=> b!1386745 m!1561157))

(declare-fun m!1561159 () Bool)

(assert (=> b!1386745 m!1561159))

(assert (=> b!1386745 m!1560847))

(assert (=> b!1386745 m!1560847))

(assert (=> b!1386745 m!1558363))

(declare-fun m!1561161 () Bool)

(assert (=> b!1386745 m!1561161))

(assert (=> b!1386745 m!1561153))

(declare-fun m!1561163 () Bool)

(assert (=> b!1386745 m!1561163))

(assert (=> b!1386745 m!1561153))

(declare-fun m!1561165 () Bool)

(assert (=> b!1386745 m!1561165))

(declare-fun m!1561167 () Bool)

(assert (=> d!396482 m!1561167))

(declare-fun m!1561169 () Bool)

(assert (=> d!396482 m!1561169))

(declare-fun m!1561171 () Bool)

(assert (=> d!396482 m!1561171))

(assert (=> d!396482 m!1559655))

(assert (=> b!1386746 m!1561149))

(declare-fun m!1561173 () Bool)

(assert (=> b!1386746 m!1561173))

(assert (=> b!1386746 m!1561173))

(declare-fun m!1561175 () Bool)

(assert (=> b!1386746 m!1561175))

(assert (=> b!1386746 m!1561175))

(declare-fun m!1561177 () Bool)

(assert (=> b!1386746 m!1561177))

(assert (=> b!1386742 m!1561149))

(assert (=> b!1386744 m!1561149))

(declare-fun m!1561179 () Bool)

(assert (=> b!1386744 m!1561179))

(assert (=> b!1386744 m!1561179))

(declare-fun m!1561181 () Bool)

(assert (=> b!1386744 m!1561181))

(assert (=> b!1386747 m!1560847))

(assert (=> b!1386747 m!1558363))

(assert (=> b!1386747 m!1560847))

(assert (=> b!1386747 m!1558363))

(assert (=> b!1386747 m!1561161))

(declare-fun m!1561183 () Bool)

(assert (=> b!1386747 m!1561183))

(assert (=> b!1386748 m!1561149))

(declare-fun m!1561185 () Bool)

(assert (=> b!1386748 m!1561185))

(assert (=> b!1386748 m!1558363))

(assert (=> b!1386743 m!1561149))

(assert (=> b!1386743 m!1561173))

(assert (=> b!1386743 m!1561173))

(assert (=> b!1386743 m!1561175))

(assert (=> b!1386743 m!1561175))

(declare-fun m!1561187 () Bool)

(assert (=> b!1386743 m!1561187))

(assert (=> bm!92666 d!396482))

(assert (=> d!395540 d!396340))

(declare-fun d!396484 () Bool)

(assert (=> d!396484 (= (list!5446 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 t1!34))) (value!79030 t1!34))) (list!5450 (c!227730 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 t1!34))) (value!79030 t1!34)))))))

(declare-fun bs!337122 () Bool)

(assert (= bs!337122 d!396484))

(declare-fun m!1561189 () Bool)

(assert (=> bs!337122 m!1561189))

(assert (=> b!1385144 d!396484))

(declare-fun d!396486 () Bool)

(declare-fun c!228288 () Bool)

(assert (=> d!396486 (= c!228288 ((_ is Nil!14059) lt!460520))))

(declare-fun e!885883 () (InoxSet C!7788))

(assert (=> d!396486 (= (content!2059 lt!460520) e!885883)))

(declare-fun b!1386751 () Bool)

(assert (=> b!1386751 (= e!885883 ((as const (Array C!7788 Bool)) false))))

(declare-fun b!1386752 () Bool)

(assert (=> b!1386752 (= e!885883 ((_ map or) (store ((as const (Array C!7788 Bool)) false) (h!19460 lt!460520) true) (content!2059 (t!122150 lt!460520))))))

(assert (= (and d!396486 c!228288) b!1386751))

(assert (= (and d!396486 (not c!228288)) b!1386752))

(declare-fun m!1561191 () Bool)

(assert (=> b!1386752 m!1561191))

(declare-fun m!1561193 () Bool)

(assert (=> b!1386752 m!1561193))

(assert (=> d!395550 d!396486))

(declare-fun d!396488 () Bool)

(declare-fun c!228289 () Bool)

(assert (=> d!396488 (= c!228289 ((_ is Nil!14059) lt!460285))))

(declare-fun e!885884 () (InoxSet C!7788))

(assert (=> d!396488 (= (content!2059 lt!460285) e!885884)))

(declare-fun b!1386753 () Bool)

(assert (=> b!1386753 (= e!885884 ((as const (Array C!7788 Bool)) false))))

(declare-fun b!1386754 () Bool)

(assert (=> b!1386754 (= e!885884 ((_ map or) (store ((as const (Array C!7788 Bool)) false) (h!19460 lt!460285) true) (content!2059 (t!122150 lt!460285))))))

(assert (= (and d!396488 c!228289) b!1386753))

(assert (= (and d!396488 (not c!228289)) b!1386754))

(declare-fun m!1561195 () Bool)

(assert (=> b!1386754 m!1561195))

(assert (=> b!1386754 m!1560703))

(assert (=> d!395550 d!396488))

(declare-fun d!396490 () Bool)

(declare-fun c!228290 () Bool)

(assert (=> d!396490 (= c!228290 ((_ is Nil!14059) (Cons!14059 lt!460309 Nil!14059)))))

(declare-fun e!885885 () (InoxSet C!7788))

(assert (=> d!396490 (= (content!2059 (Cons!14059 lt!460309 Nil!14059)) e!885885)))

(declare-fun b!1386755 () Bool)

(assert (=> b!1386755 (= e!885885 ((as const (Array C!7788 Bool)) false))))

(declare-fun b!1386756 () Bool)

(assert (=> b!1386756 (= e!885885 ((_ map or) (store ((as const (Array C!7788 Bool)) false) (h!19460 (Cons!14059 lt!460309 Nil!14059)) true) (content!2059 (t!122150 (Cons!14059 lt!460309 Nil!14059)))))))

(assert (= (and d!396490 c!228290) b!1386755))

(assert (= (and d!396490 (not c!228290)) b!1386756))

(declare-fun m!1561197 () Bool)

(assert (=> b!1386756 m!1561197))

(declare-fun m!1561199 () Bool)

(assert (=> b!1386756 m!1561199))

(assert (=> d!395550 d!396490))

(declare-fun d!396492 () Bool)

(assert (=> d!396492 (dynLambda!6429 lambda!59597 (rule!4194 t2!34))))

(assert (=> d!396492 true))

(declare-fun _$7!743 () Unit!20305)

(assert (=> d!396492 (= (choose!8511 rules!2550 lambda!59597 (rule!4194 t2!34)) _$7!743)))

(declare-fun b_lambda!42991 () Bool)

(assert (=> (not b_lambda!42991) (not d!396492)))

(declare-fun bs!337123 () Bool)

(assert (= bs!337123 d!396492))

(assert (=> bs!337123 m!1558641))

(assert (=> d!395612 d!396492))

(assert (=> d!395612 d!396274))

(declare-fun d!396494 () Bool)

(assert (=> d!396494 true))

(assert (=> d!396494 true))

(declare-fun res!625627 () Bool)

(assert (=> d!396494 (= (choose!8507 lambda!59593) res!625627)))

(assert (=> d!395586 d!396494))

(declare-fun d!396496 () Bool)

(declare-fun res!625628 () Bool)

(declare-fun e!885886 () Bool)

(assert (=> d!396496 (=> (not res!625628) (not e!885886))))

(assert (=> d!396496 (= res!625628 (validRegex!1633 (regex!2435 lt!460306)))))

(assert (=> d!396496 (= (ruleValid!600 thiss!19762 lt!460306) e!885886)))

(declare-fun b!1386757 () Bool)

(declare-fun res!625629 () Bool)

(assert (=> b!1386757 (=> (not res!625629) (not e!885886))))

(assert (=> b!1386757 (= res!625629 (not (nullable!1213 (regex!2435 lt!460306))))))

(declare-fun b!1386758 () Bool)

(assert (=> b!1386758 (= e!885886 (not (= (tag!2697 lt!460306) (String!16862 ""))))))

(assert (= (and d!396496 res!625628) b!1386757))

(assert (= (and b!1386757 res!625629) b!1386758))

(declare-fun m!1561201 () Bool)

(assert (=> d!396496 m!1561201))

(declare-fun m!1561203 () Bool)

(assert (=> b!1386757 m!1561203))

(assert (=> bs!336879 d!396496))

(declare-fun d!396498 () Bool)

(declare-fun lt!461265 () Bool)

(assert (=> d!396498 (= lt!461265 (select (content!2059 (t!122150 lt!460287)) lt!460293))))

(declare-fun e!885888 () Bool)

(assert (=> d!396498 (= lt!461265 e!885888)))

(declare-fun res!625631 () Bool)

(assert (=> d!396498 (=> (not res!625631) (not e!885888))))

(assert (=> d!396498 (= res!625631 ((_ is Cons!14059) (t!122150 lt!460287)))))

(assert (=> d!396498 (= (contains!2683 (t!122150 lt!460287) lt!460293) lt!461265)))

(declare-fun b!1386759 () Bool)

(declare-fun e!885887 () Bool)

(assert (=> b!1386759 (= e!885888 e!885887)))

(declare-fun res!625630 () Bool)

(assert (=> b!1386759 (=> res!625630 e!885887)))

(assert (=> b!1386759 (= res!625630 (= (h!19460 (t!122150 lt!460287)) lt!460293))))

(declare-fun b!1386760 () Bool)

(assert (=> b!1386760 (= e!885887 (contains!2683 (t!122150 (t!122150 lt!460287)) lt!460293))))

(assert (= (and d!396498 res!625631) b!1386759))

(assert (= (and b!1386759 (not res!625630)) b!1386760))

(assert (=> d!396498 m!1560521))

(declare-fun m!1561205 () Bool)

(assert (=> d!396498 m!1561205))

(declare-fun m!1561207 () Bool)

(assert (=> b!1386760 m!1561207))

(assert (=> b!1384589 d!396498))

(assert (=> d!395418 d!396340))

(declare-fun d!396500 () Bool)

(declare-fun lt!461266 () Bool)

(assert (=> d!396500 (= lt!461266 (select (content!2060 rules!2550) lt!460417))))

(declare-fun e!885889 () Bool)

(assert (=> d!396500 (= lt!461266 e!885889)))

(declare-fun res!625632 () Bool)

(assert (=> d!396500 (=> (not res!625632) (not e!885889))))

(assert (=> d!396500 (= res!625632 ((_ is Cons!14060) rules!2550))))

(assert (=> d!396500 (= (contains!2684 rules!2550 lt!460417) lt!461266)))

(declare-fun b!1386761 () Bool)

(declare-fun e!885890 () Bool)

(assert (=> b!1386761 (= e!885889 e!885890)))

(declare-fun res!625633 () Bool)

(assert (=> b!1386761 (=> res!625633 e!885890)))

(assert (=> b!1386761 (= res!625633 (= (h!19461 rules!2550) lt!460417))))

(declare-fun b!1386762 () Bool)

(assert (=> b!1386762 (= e!885890 (contains!2684 (t!122151 rules!2550) lt!460417))))

(assert (= (and d!396500 res!625632) b!1386761))

(assert (= (and b!1386761 (not res!625633)) b!1386762))

(assert (=> d!396500 m!1557837))

(declare-fun m!1561209 () Bool)

(assert (=> d!396500 m!1561209))

(declare-fun m!1561211 () Bool)

(assert (=> b!1386762 m!1561211))

(assert (=> b!1384800 d!396500))

(declare-fun bs!337124 () Bool)

(declare-fun d!396502 () Bool)

(assert (= bs!337124 (and d!396502 d!396296)))

(declare-fun lambda!59711 () Int)

(assert (=> bs!337124 (= (and (= (toChars!3577 (transformation!2435 (h!19461 rules!2550))) (toChars!3577 (transformation!2435 (rule!4194 t1!34)))) (= (toValue!3718 (transformation!2435 (h!19461 rules!2550))) (toValue!3718 (transformation!2435 (rule!4194 t1!34))))) (= lambda!59711 lambda!59691))))

(declare-fun bs!337125 () Bool)

(assert (= bs!337125 (and d!396502 d!396384)))

(assert (=> bs!337125 (= (and (= (toChars!3577 (transformation!2435 (h!19461 rules!2550))) (toChars!3577 (transformation!2435 (rule!4194 t2!34)))) (= (toValue!3718 (transformation!2435 (h!19461 rules!2550))) (toValue!3718 (transformation!2435 (rule!4194 t2!34))))) (= lambda!59711 lambda!59695))))

(assert (=> d!396502 true))

(assert (=> d!396502 (< (dynLambda!6442 order!8595 (toChars!3577 (transformation!2435 (h!19461 rules!2550)))) (dynLambda!6443 order!8597 lambda!59711))))

(assert (=> d!396502 true))

(assert (=> d!396502 (< (dynLambda!6444 order!8599 (toValue!3718 (transformation!2435 (h!19461 rules!2550)))) (dynLambda!6443 order!8597 lambda!59711))))

(assert (=> d!396502 (= (semiInverseModEq!942 (toChars!3577 (transformation!2435 (h!19461 rules!2550))) (toValue!3718 (transformation!2435 (h!19461 rules!2550)))) (Forall!547 lambda!59711))))

(declare-fun bs!337126 () Bool)

(assert (= bs!337126 d!396502))

(declare-fun m!1561213 () Bool)

(assert (=> bs!337126 m!1561213))

(assert (=> d!395592 d!396502))

(declare-fun b!1386763 () Bool)

(declare-fun e!885894 () Bool)

(declare-fun e!885891 () Bool)

(assert (=> b!1386763 (= e!885894 e!885891)))

(declare-fun res!625636 () Bool)

(assert (=> b!1386763 (=> res!625636 e!885891)))

(declare-fun call!92796 () Bool)

(assert (=> b!1386763 (= res!625636 call!92796)))

(declare-fun b!1386764 () Bool)

(declare-fun e!885896 () Bool)

(assert (=> b!1386764 (= e!885896 (matchR!1740 (derivativeStep!971 (derivativeStep!971 (regex!2435 (rule!4194 t1!34)) (head!2521 lt!460285)) (head!2521 (tail!2010 lt!460285))) (tail!2010 (tail!2010 lt!460285))))))

(declare-fun b!1386765 () Bool)

(declare-fun res!625638 () Bool)

(assert (=> b!1386765 (=> res!625638 e!885891)))

(assert (=> b!1386765 (= res!625638 (not (isEmpty!8502 (tail!2010 (tail!2010 lt!460285)))))))

(declare-fun b!1386766 () Bool)

(declare-fun e!885895 () Bool)

(declare-fun lt!461267 () Bool)

(assert (=> b!1386766 (= e!885895 (not lt!461267))))

(declare-fun b!1386767 () Bool)

(assert (=> b!1386767 (= e!885891 (not (= (head!2521 (tail!2010 lt!460285)) (c!227731 (derivativeStep!971 (regex!2435 (rule!4194 t1!34)) (head!2521 lt!460285))))))))

(declare-fun b!1386768 () Bool)

(declare-fun e!885897 () Bool)

(assert (=> b!1386768 (= e!885897 e!885894)))

(declare-fun res!625640 () Bool)

(assert (=> b!1386768 (=> (not res!625640) (not e!885894))))

(assert (=> b!1386768 (= res!625640 (not lt!461267))))

(declare-fun b!1386769 () Bool)

(declare-fun res!625637 () Bool)

(assert (=> b!1386769 (=> res!625637 e!885897)))

(declare-fun e!885893 () Bool)

(assert (=> b!1386769 (= res!625637 e!885893)))

(declare-fun res!625634 () Bool)

(assert (=> b!1386769 (=> (not res!625634) (not e!885893))))

(assert (=> b!1386769 (= res!625634 lt!461267)))

(declare-fun b!1386770 () Bool)

(declare-fun e!885892 () Bool)

(assert (=> b!1386770 (= e!885892 (= lt!461267 call!92796))))

(declare-fun bm!92791 () Bool)

(assert (=> bm!92791 (= call!92796 (isEmpty!8502 (tail!2010 lt!460285)))))

(declare-fun d!396504 () Bool)

(assert (=> d!396504 e!885892))

(declare-fun c!228291 () Bool)

(assert (=> d!396504 (= c!228291 ((_ is EmptyExpr!3749) (derivativeStep!971 (regex!2435 (rule!4194 t1!34)) (head!2521 lt!460285))))))

(assert (=> d!396504 (= lt!461267 e!885896)))

(declare-fun c!228292 () Bool)

(assert (=> d!396504 (= c!228292 (isEmpty!8502 (tail!2010 lt!460285)))))

(assert (=> d!396504 (validRegex!1633 (derivativeStep!971 (regex!2435 (rule!4194 t1!34)) (head!2521 lt!460285)))))

(assert (=> d!396504 (= (matchR!1740 (derivativeStep!971 (regex!2435 (rule!4194 t1!34)) (head!2521 lt!460285)) (tail!2010 lt!460285)) lt!461267)))

(declare-fun b!1386771 () Bool)

(declare-fun res!625641 () Bool)

(assert (=> b!1386771 (=> res!625641 e!885897)))

(assert (=> b!1386771 (= res!625641 (not ((_ is ElementMatch!3749) (derivativeStep!971 (regex!2435 (rule!4194 t1!34)) (head!2521 lt!460285)))))))

(assert (=> b!1386771 (= e!885895 e!885897)))

(declare-fun b!1386772 () Bool)

(assert (=> b!1386772 (= e!885892 e!885895)))

(declare-fun c!228293 () Bool)

(assert (=> b!1386772 (= c!228293 ((_ is EmptyLang!3749) (derivativeStep!971 (regex!2435 (rule!4194 t1!34)) (head!2521 lt!460285))))))

(declare-fun b!1386773 () Bool)

(assert (=> b!1386773 (= e!885896 (nullable!1213 (derivativeStep!971 (regex!2435 (rule!4194 t1!34)) (head!2521 lt!460285))))))

(declare-fun b!1386774 () Bool)

(declare-fun res!625635 () Bool)

(assert (=> b!1386774 (=> (not res!625635) (not e!885893))))

(assert (=> b!1386774 (= res!625635 (isEmpty!8502 (tail!2010 (tail!2010 lt!460285))))))

(declare-fun b!1386775 () Bool)

(declare-fun res!625639 () Bool)

(assert (=> b!1386775 (=> (not res!625639) (not e!885893))))

(assert (=> b!1386775 (= res!625639 (not call!92796))))

(declare-fun b!1386776 () Bool)

(assert (=> b!1386776 (= e!885893 (= (head!2521 (tail!2010 lt!460285)) (c!227731 (derivativeStep!971 (regex!2435 (rule!4194 t1!34)) (head!2521 lt!460285)))))))

(assert (= (and d!396504 c!228292) b!1386773))

(assert (= (and d!396504 (not c!228292)) b!1386764))

(assert (= (and d!396504 c!228291) b!1386770))

(assert (= (and d!396504 (not c!228291)) b!1386772))

(assert (= (and b!1386772 c!228293) b!1386766))

(assert (= (and b!1386772 (not c!228293)) b!1386771))

(assert (= (and b!1386771 (not res!625641)) b!1386769))

(assert (= (and b!1386769 res!625634) b!1386775))

(assert (= (and b!1386775 res!625639) b!1386774))

(assert (= (and b!1386774 res!625635) b!1386776))

(assert (= (and b!1386769 (not res!625637)) b!1386768))

(assert (= (and b!1386768 res!625640) b!1386763))

(assert (= (and b!1386763 (not res!625636)) b!1386765))

(assert (= (and b!1386765 (not res!625638)) b!1386767))

(assert (= (or b!1386770 b!1386763 b!1386775) bm!92791))

(assert (=> bm!92791 m!1558631))

(assert (=> bm!92791 m!1558633))

(assert (=> b!1386774 m!1558631))

(declare-fun m!1561215 () Bool)

(assert (=> b!1386774 m!1561215))

(assert (=> b!1386774 m!1561215))

(declare-fun m!1561217 () Bool)

(assert (=> b!1386774 m!1561217))

(assert (=> b!1386764 m!1558631))

(declare-fun m!1561219 () Bool)

(assert (=> b!1386764 m!1561219))

(assert (=> b!1386764 m!1558635))

(assert (=> b!1386764 m!1561219))

(declare-fun m!1561221 () Bool)

(assert (=> b!1386764 m!1561221))

(assert (=> b!1386764 m!1558631))

(assert (=> b!1386764 m!1561215))

(assert (=> b!1386764 m!1561221))

(assert (=> b!1386764 m!1561215))

(declare-fun m!1561223 () Bool)

(assert (=> b!1386764 m!1561223))

(assert (=> b!1386773 m!1558635))

(declare-fun m!1561225 () Bool)

(assert (=> b!1386773 m!1561225))

(assert (=> b!1386765 m!1558631))

(assert (=> b!1386765 m!1561215))

(assert (=> b!1386765 m!1561215))

(assert (=> b!1386765 m!1561217))

(assert (=> b!1386767 m!1558631))

(assert (=> b!1386767 m!1561219))

(assert (=> b!1386776 m!1558631))

(assert (=> b!1386776 m!1561219))

(assert (=> d!396504 m!1558631))

(assert (=> d!396504 m!1558633))

(assert (=> d!396504 m!1558635))

(declare-fun m!1561227 () Bool)

(assert (=> d!396504 m!1561227))

(assert (=> b!1385203 d!396504))

(declare-fun b!1386777 () Bool)

(declare-fun c!228294 () Bool)

(assert (=> b!1386777 (= c!228294 ((_ is Union!3749) (regex!2435 (rule!4194 t1!34))))))

(declare-fun e!885900 () Regex!3749)

(declare-fun e!885898 () Regex!3749)

(assert (=> b!1386777 (= e!885900 e!885898)))

(declare-fun bm!92792 () Bool)

(declare-fun call!92798 () Regex!3749)

(declare-fun call!92797 () Regex!3749)

(assert (=> bm!92792 (= call!92798 call!92797)))

(declare-fun e!885899 () Regex!3749)

(declare-fun b!1386778 () Bool)

(declare-fun call!92799 () Regex!3749)

(assert (=> b!1386778 (= e!885899 (Union!3749 (Concat!6275 call!92799 (regTwo!8010 (regex!2435 (rule!4194 t1!34)))) call!92798))))

(declare-fun b!1386779 () Bool)

(assert (=> b!1386779 (= e!885899 (Union!3749 (Concat!6275 call!92798 (regTwo!8010 (regex!2435 (rule!4194 t1!34)))) EmptyLang!3749))))

(declare-fun b!1386780 () Bool)

(declare-fun e!885902 () Regex!3749)

(assert (=> b!1386780 (= e!885902 e!885900)))

(declare-fun c!228295 () Bool)

(assert (=> b!1386780 (= c!228295 ((_ is ElementMatch!3749) (regex!2435 (rule!4194 t1!34))))))

(declare-fun b!1386781 () Bool)

(declare-fun call!92800 () Regex!3749)

(assert (=> b!1386781 (= e!885898 (Union!3749 call!92799 call!92800))))

(declare-fun b!1386783 () Bool)

(declare-fun e!885901 () Regex!3749)

(assert (=> b!1386783 (= e!885898 e!885901)))

(declare-fun c!228298 () Bool)

(assert (=> b!1386783 (= c!228298 ((_ is Star!3749) (regex!2435 (rule!4194 t1!34))))))

(declare-fun bm!92793 () Bool)

(declare-fun c!228296 () Bool)

(assert (=> bm!92793 (= call!92800 (derivativeStep!971 (ite c!228294 (regTwo!8011 (regex!2435 (rule!4194 t1!34))) (ite c!228298 (reg!4078 (regex!2435 (rule!4194 t1!34))) (ite c!228296 (regTwo!8010 (regex!2435 (rule!4194 t1!34))) (regOne!8010 (regex!2435 (rule!4194 t1!34)))))) (head!2521 lt!460285)))))

(declare-fun bm!92794 () Bool)

(assert (=> bm!92794 (= call!92799 (derivativeStep!971 (ite c!228294 (regOne!8011 (regex!2435 (rule!4194 t1!34))) (regOne!8010 (regex!2435 (rule!4194 t1!34)))) (head!2521 lt!460285)))))

(declare-fun bm!92795 () Bool)

(assert (=> bm!92795 (= call!92797 call!92800)))

(declare-fun b!1386784 () Bool)

(assert (=> b!1386784 (= e!885902 EmptyLang!3749)))

(declare-fun b!1386785 () Bool)

(assert (=> b!1386785 (= e!885901 (Concat!6275 call!92797 (regex!2435 (rule!4194 t1!34))))))

(declare-fun b!1386786 () Bool)

(assert (=> b!1386786 (= c!228296 (nullable!1213 (regOne!8010 (regex!2435 (rule!4194 t1!34)))))))

(assert (=> b!1386786 (= e!885901 e!885899)))

(declare-fun b!1386782 () Bool)

(assert (=> b!1386782 (= e!885900 (ite (= (head!2521 lt!460285) (c!227731 (regex!2435 (rule!4194 t1!34)))) EmptyExpr!3749 EmptyLang!3749))))

(declare-fun d!396506 () Bool)

(declare-fun lt!461268 () Regex!3749)

(assert (=> d!396506 (validRegex!1633 lt!461268)))

(assert (=> d!396506 (= lt!461268 e!885902)))

(declare-fun c!228297 () Bool)

(assert (=> d!396506 (= c!228297 (or ((_ is EmptyExpr!3749) (regex!2435 (rule!4194 t1!34))) ((_ is EmptyLang!3749) (regex!2435 (rule!4194 t1!34)))))))

(assert (=> d!396506 (validRegex!1633 (regex!2435 (rule!4194 t1!34)))))

(assert (=> d!396506 (= (derivativeStep!971 (regex!2435 (rule!4194 t1!34)) (head!2521 lt!460285)) lt!461268)))

(assert (= (and d!396506 c!228297) b!1386784))

(assert (= (and d!396506 (not c!228297)) b!1386780))

(assert (= (and b!1386780 c!228295) b!1386782))

(assert (= (and b!1386780 (not c!228295)) b!1386777))

(assert (= (and b!1386777 c!228294) b!1386781))

(assert (= (and b!1386777 (not c!228294)) b!1386783))

(assert (= (and b!1386783 c!228298) b!1386785))

(assert (= (and b!1386783 (not c!228298)) b!1386786))

(assert (= (and b!1386786 c!228296) b!1386778))

(assert (= (and b!1386786 (not c!228296)) b!1386779))

(assert (= (or b!1386778 b!1386779) bm!92792))

(assert (= (or b!1386785 bm!92792) bm!92795))

(assert (= (or b!1386781 b!1386778) bm!92794))

(assert (= (or b!1386781 bm!92795) bm!92793))

(assert (=> bm!92793 m!1557579))

(declare-fun m!1561229 () Bool)

(assert (=> bm!92793 m!1561229))

(assert (=> bm!92794 m!1557579))

(declare-fun m!1561231 () Bool)

(assert (=> bm!92794 m!1561231))

(declare-fun m!1561233 () Bool)

(assert (=> b!1386786 m!1561233))

(declare-fun m!1561235 () Bool)

(assert (=> d!396506 m!1561235))

(assert (=> d!396506 m!1557577))

(assert (=> b!1385203 d!396506))

(assert (=> b!1385203 d!395596))

(assert (=> b!1385203 d!396436))

(declare-fun d!396508 () Bool)

(assert (=> d!396508 (= (list!5445 (_1!7713 (lex!955 thiss!19762 rules!2550 (print!894 thiss!19762 (singletonSeq!1078 t2!34))))) (list!5449 (c!227732 (_1!7713 (lex!955 thiss!19762 rules!2550 (print!894 thiss!19762 (singletonSeq!1078 t2!34)))))))))

(declare-fun bs!337127 () Bool)

(assert (= bs!337127 d!396508))

(declare-fun m!1561237 () Bool)

(assert (=> bs!337127 m!1561237))

(assert (=> d!395446 d!396508))

(declare-fun d!396510 () Bool)

(declare-fun lt!461269 () Int)

(assert (=> d!396510 (= lt!461269 (size!11553 (list!5445 (_1!7713 lt!460474))))))

(assert (=> d!396510 (= lt!461269 (size!11556 (c!227732 (_1!7713 lt!460474))))))

(assert (=> d!396510 (= (size!11549 (_1!7713 lt!460474)) lt!461269)))

(declare-fun bs!337128 () Bool)

(assert (= bs!337128 d!396510))

(assert (=> bs!337128 m!1560623))

(assert (=> bs!337128 m!1560623))

(declare-fun m!1561239 () Bool)

(assert (=> bs!337128 m!1561239))

(declare-fun m!1561241 () Bool)

(assert (=> bs!337128 m!1561241))

(assert (=> d!395446 d!396510))

(assert (=> d!395446 d!395410))

(assert (=> d!395446 d!395412))

(assert (=> d!395446 d!395438))

(assert (=> d!395446 d!396416))

(assert (=> d!395446 d!396050))

(assert (=> d!395574 d!396366))

(declare-fun bs!337129 () Bool)

(declare-fun d!396512 () Bool)

(assert (= bs!337129 (and d!396512 d!396440)))

(declare-fun lambda!59712 () Int)

(assert (=> bs!337129 (= (= (toValue!3718 (transformation!2435 (rule!4194 t1!34))) (toValue!3718 (transformation!2435 (rule!4194 t2!34)))) (= lambda!59712 lambda!59698))))

(assert (=> d!396512 true))

(assert (=> d!396512 (< (dynLambda!6444 order!8599 (toValue!3718 (transformation!2435 (rule!4194 t1!34)))) (dynLambda!6445 order!8601 lambda!59712))))

(assert (=> d!396512 (= (equivClasses!901 (toChars!3577 (transformation!2435 (rule!4194 t1!34))) (toValue!3718 (transformation!2435 (rule!4194 t1!34)))) (Forall2!449 lambda!59712))))

(declare-fun bs!337130 () Bool)

(assert (= bs!337130 d!396512))

(declare-fun m!1561243 () Bool)

(assert (=> bs!337130 m!1561243))

(assert (=> b!1385053 d!396512))

(declare-fun d!396514 () Bool)

(declare-fun e!885903 () Bool)

(assert (=> d!396514 e!885903))

(declare-fun res!625642 () Bool)

(assert (=> d!396514 (=> (not res!625642) (not e!885903))))

(declare-fun lt!461270 () List!14125)

(assert (=> d!396514 (= res!625642 (= (content!2059 lt!461270) ((_ map or) (content!2059 (t!122150 lt!460285)) (content!2059 (Cons!14059 lt!460309 Nil!14059)))))))

(declare-fun e!885904 () List!14125)

(assert (=> d!396514 (= lt!461270 e!885904)))

(declare-fun c!228299 () Bool)

(assert (=> d!396514 (= c!228299 ((_ is Nil!14059) (t!122150 lt!460285)))))

(assert (=> d!396514 (= (++!3646 (t!122150 lt!460285) (Cons!14059 lt!460309 Nil!14059)) lt!461270)))

(declare-fun b!1386787 () Bool)

(assert (=> b!1386787 (= e!885904 (Cons!14059 lt!460309 Nil!14059))))

(declare-fun b!1386789 () Bool)

(declare-fun res!625643 () Bool)

(assert (=> b!1386789 (=> (not res!625643) (not e!885903))))

(assert (=> b!1386789 (= res!625643 (= (size!11552 lt!461270) (+ (size!11552 (t!122150 lt!460285)) (size!11552 (Cons!14059 lt!460309 Nil!14059)))))))

(declare-fun b!1386790 () Bool)

(assert (=> b!1386790 (= e!885903 (or (not (= (Cons!14059 lt!460309 Nil!14059) Nil!14059)) (= lt!461270 (t!122150 lt!460285))))))

(declare-fun b!1386788 () Bool)

(assert (=> b!1386788 (= e!885904 (Cons!14059 (h!19460 (t!122150 lt!460285)) (++!3646 (t!122150 (t!122150 lt!460285)) (Cons!14059 lt!460309 Nil!14059))))))

(assert (= (and d!396514 c!228299) b!1386787))

(assert (= (and d!396514 (not c!228299)) b!1386788))

(assert (= (and d!396514 res!625642) b!1386789))

(assert (= (and b!1386789 res!625643) b!1386790))

(declare-fun m!1561245 () Bool)

(assert (=> d!396514 m!1561245))

(assert (=> d!396514 m!1560703))

(assert (=> d!396514 m!1558427))

(declare-fun m!1561247 () Bool)

(assert (=> b!1386789 m!1561247))

(assert (=> b!1386789 m!1561035))

(assert (=> b!1386789 m!1558433))

(declare-fun m!1561249 () Bool)

(assert (=> b!1386788 m!1561249))

(assert (=> b!1385074 d!396514))

(declare-fun d!396516 () Bool)

(declare-fun lt!461273 () Bool)

(assert (=> d!396516 (= lt!461273 (isEmpty!8506 (list!5445 (_1!7713 lt!460406))))))

(assert (=> d!396516 (= lt!461273 (isEmpty!8510 (c!227732 (_1!7713 lt!460406))))))

(assert (=> d!396516 (= (isEmpty!8504 (_1!7713 lt!460406)) lt!461273)))

(declare-fun bs!337131 () Bool)

(assert (= bs!337131 d!396516))

(assert (=> bs!337131 m!1557995))

(assert (=> bs!337131 m!1557995))

(declare-fun m!1561251 () Bool)

(assert (=> bs!337131 m!1561251))

(declare-fun m!1561253 () Bool)

(assert (=> bs!337131 m!1561253))

(assert (=> b!1384775 d!396516))

(assert (=> b!1385219 d!395418))

(declare-fun d!396518 () Bool)

(declare-fun lt!461274 () Bool)

(assert (=> d!396518 (= lt!461274 (select (content!2060 (t!122151 rules!2550)) lt!460306))))

(declare-fun e!885905 () Bool)

(assert (=> d!396518 (= lt!461274 e!885905)))

(declare-fun res!625644 () Bool)

(assert (=> d!396518 (=> (not res!625644) (not e!885905))))

(assert (=> d!396518 (= res!625644 ((_ is Cons!14060) (t!122151 rules!2550)))))

(assert (=> d!396518 (= (contains!2684 (t!122151 rules!2550) lt!460306) lt!461274)))

(declare-fun b!1386791 () Bool)

(declare-fun e!885906 () Bool)

(assert (=> b!1386791 (= e!885905 e!885906)))

(declare-fun res!625645 () Bool)

(assert (=> b!1386791 (=> res!625645 e!885906)))

(assert (=> b!1386791 (= res!625645 (= (h!19461 (t!122151 rules!2550)) lt!460306))))

(declare-fun b!1386792 () Bool)

(assert (=> b!1386792 (= e!885906 (contains!2684 (t!122151 (t!122151 rules!2550)) lt!460306))))

(assert (= (and d!396518 res!625644) b!1386791))

(assert (= (and b!1386791 (not res!625645)) b!1386792))

(assert (=> d!396518 m!1560711))

(declare-fun m!1561255 () Bool)

(assert (=> d!396518 m!1561255))

(declare-fun m!1561257 () Bool)

(assert (=> b!1386792 m!1561257))

(assert (=> b!1385050 d!396518))

(declare-fun d!396520 () Bool)

(declare-fun lt!461275 () C!7788)

(assert (=> d!396520 (contains!2683 (list!5446 lt!460308) lt!461275)))

(declare-fun e!885908 () C!7788)

(assert (=> d!396520 (= lt!461275 e!885908)))

(declare-fun c!228300 () Bool)

(assert (=> d!396520 (= c!228300 (= 0 0))))

(declare-fun e!885907 () Bool)

(assert (=> d!396520 e!885907))

(declare-fun res!625646 () Bool)

(assert (=> d!396520 (=> (not res!625646) (not e!885907))))

(assert (=> d!396520 (= res!625646 (<= 0 0))))

(assert (=> d!396520 (= (apply!3515 (list!5446 lt!460308) 0) lt!461275)))

(declare-fun b!1386793 () Bool)

(assert (=> b!1386793 (= e!885907 (< 0 (size!11552 (list!5446 lt!460308))))))

(declare-fun b!1386794 () Bool)

(assert (=> b!1386794 (= e!885908 (head!2521 (list!5446 lt!460308)))))

(declare-fun b!1386795 () Bool)

(assert (=> b!1386795 (= e!885908 (apply!3515 (tail!2010 (list!5446 lt!460308)) (- 0 1)))))

(assert (= (and d!396520 res!625646) b!1386793))

(assert (= (and d!396520 c!228300) b!1386794))

(assert (= (and d!396520 (not c!228300)) b!1386795))

(assert (=> d!396520 m!1557607))

(declare-fun m!1561259 () Bool)

(assert (=> d!396520 m!1561259))

(assert (=> b!1386793 m!1557607))

(assert (=> b!1386793 m!1561027))

(assert (=> b!1386794 m!1557607))

(declare-fun m!1561261 () Bool)

(assert (=> b!1386794 m!1561261))

(assert (=> b!1386795 m!1557607))

(declare-fun m!1561263 () Bool)

(assert (=> b!1386795 m!1561263))

(assert (=> b!1386795 m!1561263))

(declare-fun m!1561265 () Bool)

(assert (=> b!1386795 m!1561265))

(assert (=> d!395370 d!396520))

(assert (=> d!395370 d!395554))

(declare-fun b!1386796 () Bool)

(declare-fun e!885912 () C!7788)

(declare-fun e!885909 () C!7788)

(assert (=> b!1386796 (= e!885912 e!885909)))

(declare-fun lt!461276 () Bool)

(assert (=> b!1386796 (= lt!461276 (appendIndex!176 (list!5450 (left!12017 (c!227730 lt!460308))) (list!5450 (right!12347 (c!227730 lt!460308))) 0))))

(declare-fun c!228301 () Bool)

(assert (=> b!1386796 (= c!228301 (< 0 (size!11554 (left!12017 (c!227730 lt!460308)))))))

(declare-fun b!1386797 () Bool)

(declare-fun e!885910 () Int)

(assert (=> b!1386797 (= e!885910 0)))

(declare-fun b!1386798 () Bool)

(declare-fun e!885911 () Bool)

(assert (=> b!1386798 (= e!885911 (< 0 (size!11554 (c!227730 lt!460308))))))

(declare-fun b!1386799 () Bool)

(assert (=> b!1386799 (= e!885912 (apply!3523 (xs!7357 (c!227730 lt!460308)) 0))))

(declare-fun b!1386800 () Bool)

(assert (=> b!1386800 (= e!885910 (- 0 (size!11554 (left!12017 (c!227730 lt!460308)))))))

(declare-fun bm!92796 () Bool)

(declare-fun c!228303 () Bool)

(assert (=> bm!92796 (= c!228303 c!228301)))

(declare-fun call!92801 () C!7788)

(assert (=> bm!92796 (= call!92801 (apply!3516 (ite c!228301 (left!12017 (c!227730 lt!460308)) (right!12347 (c!227730 lt!460308))) e!885910))))

(declare-fun b!1386801 () Bool)

(assert (=> b!1386801 (= e!885909 call!92801)))

(declare-fun d!396522 () Bool)

(declare-fun lt!461277 () C!7788)

(assert (=> d!396522 (= lt!461277 (apply!3515 (list!5450 (c!227730 lt!460308)) 0))))

(assert (=> d!396522 (= lt!461277 e!885912)))

(declare-fun c!228302 () Bool)

(assert (=> d!396522 (= c!228302 ((_ is Leaf!7044) (c!227730 lt!460308)))))

(assert (=> d!396522 e!885911))

(declare-fun res!625647 () Bool)

(assert (=> d!396522 (=> (not res!625647) (not e!885911))))

(assert (=> d!396522 (= res!625647 (<= 0 0))))

(assert (=> d!396522 (= (apply!3516 (c!227730 lt!460308) 0) lt!461277)))

(declare-fun b!1386802 () Bool)

(assert (=> b!1386802 (= e!885909 call!92801)))

(assert (= (and d!396522 res!625647) b!1386798))

(assert (= (and d!396522 c!228302) b!1386799))

(assert (= (and d!396522 (not c!228302)) b!1386796))

(assert (= (and b!1386796 c!228301) b!1386802))

(assert (= (and b!1386796 (not c!228301)) b!1386801))

(assert (= (or b!1386802 b!1386801) bm!92796))

(assert (= (and bm!92796 c!228303) b!1386797))

(assert (= (and bm!92796 (not c!228303)) b!1386800))

(assert (=> b!1386796 m!1560715))

(assert (=> b!1386796 m!1560717))

(assert (=> b!1386796 m!1560715))

(assert (=> b!1386796 m!1560717))

(declare-fun m!1561267 () Bool)

(assert (=> b!1386796 m!1561267))

(declare-fun m!1561269 () Bool)

(assert (=> b!1386796 m!1561269))

(assert (=> b!1386798 m!1561029))

(assert (=> d!396522 m!1558443))

(assert (=> d!396522 m!1558443))

(declare-fun m!1561271 () Bool)

(assert (=> d!396522 m!1561271))

(assert (=> b!1386800 m!1561269))

(declare-fun m!1561273 () Bool)

(assert (=> bm!92796 m!1561273))

(declare-fun m!1561275 () Bool)

(assert (=> b!1386799 m!1561275))

(assert (=> d!395370 d!396522))

(assert (=> d!395568 d!396488))

(declare-fun d!396524 () Bool)

(assert (=> d!396524 (= (isEmpty!8502 (originalCharacters!3297 t1!34)) ((_ is Nil!14059) (originalCharacters!3297 t1!34)))))

(assert (=> d!395578 d!396524))

(declare-fun d!396526 () Bool)

(declare-fun lt!461278 () Int)

(assert (=> d!396526 (>= lt!461278 0)))

(declare-fun e!885913 () Int)

(assert (=> d!396526 (= lt!461278 e!885913)))

(declare-fun c!228304 () Bool)

(assert (=> d!396526 (= c!228304 ((_ is Nil!14059) (originalCharacters!3297 t2!34)))))

(assert (=> d!396526 (= (size!11552 (originalCharacters!3297 t2!34)) lt!461278)))

(declare-fun b!1386803 () Bool)

(assert (=> b!1386803 (= e!885913 0)))

(declare-fun b!1386804 () Bool)

(assert (=> b!1386804 (= e!885913 (+ 1 (size!11552 (t!122150 (originalCharacters!3297 t2!34)))))))

(assert (= (and d!396526 c!228304) b!1386803))

(assert (= (and d!396526 (not c!228304)) b!1386804))

(declare-fun m!1561277 () Bool)

(assert (=> b!1386804 m!1561277))

(assert (=> b!1385147 d!396526))

(declare-fun b!1386805 () Bool)

(declare-fun e!885917 () Bool)

(declare-fun e!885914 () Bool)

(assert (=> b!1386805 (= e!885917 e!885914)))

(declare-fun res!625650 () Bool)

(assert (=> b!1386805 (=> res!625650 e!885914)))

(declare-fun call!92802 () Bool)

(assert (=> b!1386805 (= res!625650 call!92802)))

(declare-fun b!1386806 () Bool)

(declare-fun e!885919 () Bool)

(assert (=> b!1386806 (= e!885919 (matchR!1740 (derivativeStep!971 (regex!2435 (rule!4194 (_1!7714 (get!4370 lt!460513)))) (head!2521 (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460513)))))) (tail!2010 (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460513)))))))))

(declare-fun b!1386807 () Bool)

(declare-fun res!625652 () Bool)

(assert (=> b!1386807 (=> res!625652 e!885914)))

(assert (=> b!1386807 (= res!625652 (not (isEmpty!8502 (tail!2010 (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460513))))))))))

(declare-fun b!1386808 () Bool)

(declare-fun e!885918 () Bool)

(declare-fun lt!461279 () Bool)

(assert (=> b!1386808 (= e!885918 (not lt!461279))))

(declare-fun b!1386809 () Bool)

(assert (=> b!1386809 (= e!885914 (not (= (head!2521 (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460513))))) (c!227731 (regex!2435 (rule!4194 (_1!7714 (get!4370 lt!460513))))))))))

(declare-fun b!1386810 () Bool)

(declare-fun e!885920 () Bool)

(assert (=> b!1386810 (= e!885920 e!885917)))

(declare-fun res!625654 () Bool)

(assert (=> b!1386810 (=> (not res!625654) (not e!885917))))

(assert (=> b!1386810 (= res!625654 (not lt!461279))))

(declare-fun b!1386811 () Bool)

(declare-fun res!625651 () Bool)

(assert (=> b!1386811 (=> res!625651 e!885920)))

(declare-fun e!885916 () Bool)

(assert (=> b!1386811 (= res!625651 e!885916)))

(declare-fun res!625648 () Bool)

(assert (=> b!1386811 (=> (not res!625648) (not e!885916))))

(assert (=> b!1386811 (= res!625648 lt!461279)))

(declare-fun b!1386812 () Bool)

(declare-fun e!885915 () Bool)

(assert (=> b!1386812 (= e!885915 (= lt!461279 call!92802))))

(declare-fun bm!92797 () Bool)

(assert (=> bm!92797 (= call!92802 (isEmpty!8502 (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460513))))))))

(declare-fun d!396528 () Bool)

(assert (=> d!396528 e!885915))

(declare-fun c!228305 () Bool)

(assert (=> d!396528 (= c!228305 ((_ is EmptyExpr!3749) (regex!2435 (rule!4194 (_1!7714 (get!4370 lt!460513))))))))

(assert (=> d!396528 (= lt!461279 e!885919)))

(declare-fun c!228306 () Bool)

(assert (=> d!396528 (= c!228306 (isEmpty!8502 (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460513))))))))

(assert (=> d!396528 (validRegex!1633 (regex!2435 (rule!4194 (_1!7714 (get!4370 lt!460513)))))))

(assert (=> d!396528 (= (matchR!1740 (regex!2435 (rule!4194 (_1!7714 (get!4370 lt!460513)))) (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460513))))) lt!461279)))

(declare-fun b!1386813 () Bool)

(declare-fun res!625655 () Bool)

(assert (=> b!1386813 (=> res!625655 e!885920)))

(assert (=> b!1386813 (= res!625655 (not ((_ is ElementMatch!3749) (regex!2435 (rule!4194 (_1!7714 (get!4370 lt!460513)))))))))

(assert (=> b!1386813 (= e!885918 e!885920)))

(declare-fun b!1386814 () Bool)

(assert (=> b!1386814 (= e!885915 e!885918)))

(declare-fun c!228307 () Bool)

(assert (=> b!1386814 (= c!228307 ((_ is EmptyLang!3749) (regex!2435 (rule!4194 (_1!7714 (get!4370 lt!460513))))))))

(declare-fun b!1386815 () Bool)

(assert (=> b!1386815 (= e!885919 (nullable!1213 (regex!2435 (rule!4194 (_1!7714 (get!4370 lt!460513))))))))

(declare-fun b!1386816 () Bool)

(declare-fun res!625649 () Bool)

(assert (=> b!1386816 (=> (not res!625649) (not e!885916))))

(assert (=> b!1386816 (= res!625649 (isEmpty!8502 (tail!2010 (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460513)))))))))

(declare-fun b!1386817 () Bool)

(declare-fun res!625653 () Bool)

(assert (=> b!1386817 (=> (not res!625653) (not e!885916))))

(assert (=> b!1386817 (= res!625653 (not call!92802))))

(declare-fun b!1386818 () Bool)

(assert (=> b!1386818 (= e!885916 (= (head!2521 (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!460513))))) (c!227731 (regex!2435 (rule!4194 (_1!7714 (get!4370 lt!460513)))))))))

(assert (= (and d!396528 c!228306) b!1386815))

(assert (= (and d!396528 (not c!228306)) b!1386806))

(assert (= (and d!396528 c!228305) b!1386812))

(assert (= (and d!396528 (not c!228305)) b!1386814))

(assert (= (and b!1386814 c!228307) b!1386808))

(assert (= (and b!1386814 (not c!228307)) b!1386813))

(assert (= (and b!1386813 (not res!625655)) b!1386811))

(assert (= (and b!1386811 res!625648) b!1386817))

(assert (= (and b!1386817 res!625653) b!1386816))

(assert (= (and b!1386816 res!625649) b!1386818))

(assert (= (and b!1386811 (not res!625651)) b!1386810))

(assert (= (and b!1386810 res!625654) b!1386805))

(assert (= (and b!1386805 (not res!625650)) b!1386807))

(assert (= (and b!1386807 (not res!625652)) b!1386809))

(assert (= (or b!1386812 b!1386805 b!1386817) bm!92797))

(assert (=> bm!92797 m!1558371))

(declare-fun m!1561279 () Bool)

(assert (=> bm!92797 m!1561279))

(assert (=> b!1386816 m!1558371))

(declare-fun m!1561281 () Bool)

(assert (=> b!1386816 m!1561281))

(assert (=> b!1386816 m!1561281))

(declare-fun m!1561283 () Bool)

(assert (=> b!1386816 m!1561283))

(assert (=> b!1386806 m!1558371))

(declare-fun m!1561285 () Bool)

(assert (=> b!1386806 m!1561285))

(assert (=> b!1386806 m!1561285))

(declare-fun m!1561287 () Bool)

(assert (=> b!1386806 m!1561287))

(assert (=> b!1386806 m!1558371))

(assert (=> b!1386806 m!1561281))

(assert (=> b!1386806 m!1561287))

(assert (=> b!1386806 m!1561281))

(declare-fun m!1561289 () Bool)

(assert (=> b!1386806 m!1561289))

(declare-fun m!1561291 () Bool)

(assert (=> b!1386815 m!1561291))

(assert (=> b!1386807 m!1558371))

(assert (=> b!1386807 m!1561281))

(assert (=> b!1386807 m!1561281))

(assert (=> b!1386807 m!1561283))

(assert (=> b!1386809 m!1558371))

(assert (=> b!1386809 m!1561285))

(assert (=> b!1386818 m!1558371))

(assert (=> b!1386818 m!1561285))

(assert (=> d!396528 m!1558371))

(assert (=> d!396528 m!1561279))

(declare-fun m!1561293 () Bool)

(assert (=> d!396528 m!1561293))

(assert (=> b!1385047 d!396528))

(assert (=> b!1385047 d!396324))

(assert (=> b!1385047 d!396320))

(assert (=> b!1385047 d!396322))

(declare-fun d!396530 () Bool)

(assert (=> d!396530 (= (list!5445 (_1!7713 lt!460396)) (list!5449 (c!227732 (_1!7713 lt!460396))))))

(declare-fun bs!337132 () Bool)

(assert (= bs!337132 d!396530))

(declare-fun m!1561295 () Bool)

(assert (=> bs!337132 m!1561295))

(assert (=> b!1384716 d!396530))

(assert (=> b!1384716 d!395492))

(assert (=> b!1384716 d!395502))

(declare-fun d!396532 () Bool)

(declare-fun lt!461280 () Int)

(assert (=> d!396532 (>= lt!461280 0)))

(declare-fun e!885921 () Int)

(assert (=> d!396532 (= lt!461280 e!885921)))

(declare-fun c!228308 () Bool)

(assert (=> d!396532 (= c!228308 ((_ is Nil!14059) (_2!7714 (get!4370 lt!460529))))))

(assert (=> d!396532 (= (size!11552 (_2!7714 (get!4370 lt!460529))) lt!461280)))

(declare-fun b!1386819 () Bool)

(assert (=> b!1386819 (= e!885921 0)))

(declare-fun b!1386820 () Bool)

(assert (=> b!1386820 (= e!885921 (+ 1 (size!11552 (t!122150 (_2!7714 (get!4370 lt!460529))))))))

(assert (= (and d!396532 c!228308) b!1386819))

(assert (= (and d!396532 (not c!228308)) b!1386820))

(declare-fun m!1561297 () Bool)

(assert (=> b!1386820 m!1561297))

(assert (=> b!1385080 d!396532))

(assert (=> b!1385080 d!396026))

(assert (=> b!1385080 d!396444))

(declare-fun b!1386832 () Bool)

(declare-fun lt!461283 () BalanceConc!9200)

(declare-fun e!885924 () Bool)

(assert (=> b!1386832 (= e!885924 (= (list!5446 lt!461283) (++!3646 (list!5446 (charsOf!1407 t1!34)) (list!5446 (singletonSeq!1079 (apply!3511 (charsOf!1407 t2!34) 0))))))))

(declare-fun d!396534 () Bool)

(assert (=> d!396534 e!885924))

(declare-fun res!625667 () Bool)

(assert (=> d!396534 (=> (not res!625667) (not e!885924))))

(declare-fun appendAssocInst!289 (Conc!4630 Conc!4630) Bool)

(assert (=> d!396534 (= res!625667 (appendAssocInst!289 (c!227730 (charsOf!1407 t1!34)) (c!227730 (singletonSeq!1079 (apply!3511 (charsOf!1407 t2!34) 0)))))))

(declare-fun ++!3652 (Conc!4630 Conc!4630) Conc!4630)

(assert (=> d!396534 (= lt!461283 (BalanceConc!9201 (++!3652 (c!227730 (charsOf!1407 t1!34)) (c!227730 (singletonSeq!1079 (apply!3511 (charsOf!1407 t2!34) 0))))))))

(assert (=> d!396534 (= (++!3647 (charsOf!1407 t1!34) (singletonSeq!1079 (apply!3511 (charsOf!1407 t2!34) 0))) lt!461283)))

(declare-fun b!1386829 () Bool)

(declare-fun res!625666 () Bool)

(assert (=> b!1386829 (=> (not res!625666) (not e!885924))))

(assert (=> b!1386829 (= res!625666 (isBalanced!1368 (++!3652 (c!227730 (charsOf!1407 t1!34)) (c!227730 (singletonSeq!1079 (apply!3511 (charsOf!1407 t2!34) 0))))))))

(declare-fun b!1386830 () Bool)

(declare-fun res!625664 () Bool)

(assert (=> b!1386830 (=> (not res!625664) (not e!885924))))

(declare-fun height!679 (Conc!4630) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1386830 (= res!625664 (<= (height!679 (++!3652 (c!227730 (charsOf!1407 t1!34)) (c!227730 (singletonSeq!1079 (apply!3511 (charsOf!1407 t2!34) 0))))) (+ (max!0 (height!679 (c!227730 (charsOf!1407 t1!34))) (height!679 (c!227730 (singletonSeq!1079 (apply!3511 (charsOf!1407 t2!34) 0))))) 1)))))

(declare-fun b!1386831 () Bool)

(declare-fun res!625665 () Bool)

(assert (=> b!1386831 (=> (not res!625665) (not e!885924))))

(assert (=> b!1386831 (= res!625665 (>= (height!679 (++!3652 (c!227730 (charsOf!1407 t1!34)) (c!227730 (singletonSeq!1079 (apply!3511 (charsOf!1407 t2!34) 0))))) (max!0 (height!679 (c!227730 (charsOf!1407 t1!34))) (height!679 (c!227730 (singletonSeq!1079 (apply!3511 (charsOf!1407 t2!34) 0)))))))))

(assert (= (and d!396534 res!625667) b!1386829))

(assert (= (and b!1386829 res!625666) b!1386830))

(assert (= (and b!1386830 res!625664) b!1386831))

(assert (= (and b!1386831 res!625665) b!1386832))

(declare-fun m!1561299 () Bool)

(assert (=> b!1386830 m!1561299))

(declare-fun m!1561301 () Bool)

(assert (=> b!1386830 m!1561301))

(declare-fun m!1561303 () Bool)

(assert (=> b!1386830 m!1561303))

(assert (=> b!1386830 m!1561299))

(declare-fun m!1561305 () Bool)

(assert (=> b!1386830 m!1561305))

(assert (=> b!1386830 m!1561301))

(assert (=> b!1386830 m!1561303))

(declare-fun m!1561307 () Bool)

(assert (=> b!1386830 m!1561307))

(assert (=> b!1386831 m!1561299))

(assert (=> b!1386831 m!1561301))

(assert (=> b!1386831 m!1561303))

(assert (=> b!1386831 m!1561299))

(assert (=> b!1386831 m!1561305))

(assert (=> b!1386831 m!1561301))

(assert (=> b!1386831 m!1561303))

(assert (=> b!1386831 m!1561307))

(assert (=> b!1386829 m!1561299))

(assert (=> b!1386829 m!1561299))

(declare-fun m!1561309 () Bool)

(assert (=> b!1386829 m!1561309))

(declare-fun m!1561311 () Bool)

(assert (=> b!1386832 m!1561311))

(assert (=> b!1386832 m!1557615))

(declare-fun m!1561313 () Bool)

(assert (=> b!1386832 m!1561313))

(assert (=> b!1386832 m!1558353))

(declare-fun m!1561315 () Bool)

(assert (=> b!1386832 m!1561315))

(assert (=> b!1386832 m!1561313))

(assert (=> b!1386832 m!1561315))

(declare-fun m!1561317 () Bool)

(assert (=> b!1386832 m!1561317))

(declare-fun m!1561319 () Bool)

(assert (=> d!396534 m!1561319))

(assert (=> d!396534 m!1561299))

(assert (=> d!395506 d!396534))

(declare-fun lt!461311 () Bool)

(declare-fun d!396536 () Bool)

(assert (=> d!396536 (= lt!461311 (prefixMatch!258 (rulesRegex!318 thiss!19762 rules!2550) (list!5446 (++!3647 (charsOf!1407 t1!34) (singletonSeq!1079 (apply!3511 (charsOf!1407 t2!34) 0))))))))

(declare-datatypes ((Context!1222 0))(
  ( (Context!1223 (exprs!1111 List!14128)) )
))
(declare-fun prefixMatchZipperSequence!282 ((InoxSet Context!1222) BalanceConc!9200 Int) Bool)

(declare-fun focus!102 (Regex!3749) (InoxSet Context!1222))

(assert (=> d!396536 (= lt!461311 (prefixMatchZipperSequence!282 (focus!102 (rulesRegex!318 thiss!19762 rules!2550)) (++!3647 (charsOf!1407 t1!34) (singletonSeq!1079 (apply!3511 (charsOf!1407 t2!34) 0))) 0))))

(declare-fun lt!461313 () Unit!20305)

(declare-fun lt!461305 () Unit!20305)

(assert (=> d!396536 (= lt!461313 lt!461305)))

(declare-fun lt!461312 () (InoxSet Context!1222))

(declare-fun lt!461309 () List!14125)

(declare-fun prefixMatchZipper!82 ((InoxSet Context!1222) List!14125) Bool)

(assert (=> d!396536 (= (prefixMatch!258 (rulesRegex!318 thiss!19762 rules!2550) lt!461309) (prefixMatchZipper!82 lt!461312 lt!461309))))

(declare-datatypes ((List!14132 0))(
  ( (Nil!14066) (Cons!14066 (h!19467 Context!1222) (t!122299 List!14132)) )
))
(declare-fun lt!461304 () List!14132)

(declare-fun prefixMatchZipperRegexEquiv!82 ((InoxSet Context!1222) List!14132 Regex!3749 List!14125) Unit!20305)

(assert (=> d!396536 (= lt!461305 (prefixMatchZipperRegexEquiv!82 lt!461312 lt!461304 (rulesRegex!318 thiss!19762 rules!2550) lt!461309))))

(assert (=> d!396536 (= lt!461309 (list!5446 (++!3647 (charsOf!1407 t1!34) (singletonSeq!1079 (apply!3511 (charsOf!1407 t2!34) 0)))))))

(declare-fun toList!766 ((InoxSet Context!1222)) List!14132)

(assert (=> d!396536 (= lt!461304 (toList!766 (focus!102 (rulesRegex!318 thiss!19762 rules!2550))))))

(assert (=> d!396536 (= lt!461312 (focus!102 (rulesRegex!318 thiss!19762 rules!2550)))))

(declare-fun lt!461310 () Unit!20305)

(declare-fun lt!461307 () Unit!20305)

(assert (=> d!396536 (= lt!461310 lt!461307)))

(declare-fun lt!461306 () (InoxSet Context!1222))

(declare-fun lt!461308 () Int)

(declare-fun dropList!422 (BalanceConc!9200 Int) List!14125)

(assert (=> d!396536 (= (prefixMatchZipper!82 lt!461306 (dropList!422 (++!3647 (charsOf!1407 t1!34) (singletonSeq!1079 (apply!3511 (charsOf!1407 t2!34) 0))) lt!461308)) (prefixMatchZipperSequence!282 lt!461306 (++!3647 (charsOf!1407 t1!34) (singletonSeq!1079 (apply!3511 (charsOf!1407 t2!34) 0))) lt!461308))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!82 ((InoxSet Context!1222) BalanceConc!9200 Int) Unit!20305)

(assert (=> d!396536 (= lt!461307 (lemmaprefixMatchZipperSequenceEquivalent!82 lt!461306 (++!3647 (charsOf!1407 t1!34) (singletonSeq!1079 (apply!3511 (charsOf!1407 t2!34) 0))) lt!461308))))

(assert (=> d!396536 (= lt!461308 0)))

(assert (=> d!396536 (= lt!461306 (focus!102 (rulesRegex!318 thiss!19762 rules!2550)))))

(assert (=> d!396536 (validRegex!1633 (rulesRegex!318 thiss!19762 rules!2550))))

(assert (=> d!396536 (= (prefixMatchZipperSequence!279 (rulesRegex!318 thiss!19762 rules!2550) (++!3647 (charsOf!1407 t1!34) (singletonSeq!1079 (apply!3511 (charsOf!1407 t2!34) 0)))) lt!461311)))

(declare-fun bs!337133 () Bool)

(assert (= bs!337133 d!396536))

(declare-fun m!1561321 () Bool)

(assert (=> bs!337133 m!1561321))

(assert (=> bs!337133 m!1558355))

(declare-fun m!1561323 () Bool)

(assert (=> bs!337133 m!1561323))

(assert (=> bs!337133 m!1557613))

(assert (=> bs!337133 m!1561321))

(declare-fun m!1561325 () Bool)

(assert (=> bs!337133 m!1561325))

(assert (=> bs!337133 m!1557613))

(declare-fun m!1561327 () Bool)

(assert (=> bs!337133 m!1561327))

(assert (=> bs!337133 m!1558355))

(declare-fun m!1561329 () Bool)

(assert (=> bs!337133 m!1561329))

(assert (=> bs!337133 m!1558355))

(declare-fun m!1561331 () Bool)

(assert (=> bs!337133 m!1561331))

(assert (=> bs!337133 m!1557613))

(declare-fun m!1561333 () Bool)

(assert (=> bs!337133 m!1561333))

(assert (=> bs!337133 m!1557613))

(declare-fun m!1561335 () Bool)

(assert (=> bs!337133 m!1561335))

(assert (=> bs!337133 m!1558355))

(declare-fun m!1561337 () Bool)

(assert (=> bs!337133 m!1561337))

(declare-fun m!1561339 () Bool)

(assert (=> bs!337133 m!1561339))

(declare-fun m!1561341 () Bool)

(assert (=> bs!337133 m!1561341))

(assert (=> bs!337133 m!1557613))

(assert (=> bs!337133 m!1561337))

(declare-fun m!1561343 () Bool)

(assert (=> bs!337133 m!1561343))

(assert (=> bs!337133 m!1558355))

(assert (=> bs!337133 m!1561339))

(assert (=> bs!337133 m!1561321))

(declare-fun m!1561345 () Bool)

(assert (=> bs!337133 m!1561345))

(assert (=> d!395506 d!396536))

(declare-fun d!396538 () Bool)

(declare-fun e!885927 () Bool)

(assert (=> d!396538 e!885927))

(declare-fun res!625670 () Bool)

(assert (=> d!396538 (=> (not res!625670) (not e!885927))))

(declare-fun lt!461316 () BalanceConc!9200)

(assert (=> d!396538 (= res!625670 (= (list!5446 lt!461316) (Cons!14059 (apply!3511 (charsOf!1407 t2!34) 0) Nil!14059)))))

(declare-fun singleton!474 (C!7788) BalanceConc!9200)

(assert (=> d!396538 (= lt!461316 (singleton!474 (apply!3511 (charsOf!1407 t2!34) 0)))))

(assert (=> d!396538 (= (singletonSeq!1079 (apply!3511 (charsOf!1407 t2!34) 0)) lt!461316)))

(declare-fun b!1386835 () Bool)

(assert (=> b!1386835 (= e!885927 (isBalanced!1368 (c!227730 lt!461316)))))

(assert (= (and d!396538 res!625670) b!1386835))

(declare-fun m!1561347 () Bool)

(assert (=> d!396538 m!1561347))

(assert (=> d!396538 m!1558351))

(declare-fun m!1561349 () Bool)

(assert (=> d!396538 m!1561349))

(declare-fun m!1561351 () Bool)

(assert (=> b!1386835 m!1561351))

(assert (=> d!395506 d!396538))

(assert (=> d!395506 d!395552))

(declare-fun d!396540 () Bool)

(declare-fun lt!461317 () C!7788)

(assert (=> d!396540 (= lt!461317 (apply!3515 (list!5446 (charsOf!1407 t2!34)) 0))))

(assert (=> d!396540 (= lt!461317 (apply!3516 (c!227730 (charsOf!1407 t2!34)) 0))))

(declare-fun e!885928 () Bool)

(assert (=> d!396540 e!885928))

(declare-fun res!625671 () Bool)

(assert (=> d!396540 (=> (not res!625671) (not e!885928))))

(assert (=> d!396540 (= res!625671 (<= 0 0))))

(assert (=> d!396540 (= (apply!3511 (charsOf!1407 t2!34) 0) lt!461317)))

(declare-fun b!1386836 () Bool)

(assert (=> b!1386836 (= e!885928 (< 0 (size!11541 (charsOf!1407 t2!34))))))

(assert (= (and d!396540 res!625671) b!1386836))

(assert (=> d!396540 m!1557509))

(declare-fun m!1561353 () Bool)

(assert (=> d!396540 m!1561353))

(assert (=> d!396540 m!1561353))

(declare-fun m!1561355 () Bool)

(assert (=> d!396540 m!1561355))

(declare-fun m!1561357 () Bool)

(assert (=> d!396540 m!1561357))

(assert (=> b!1386836 m!1557509))

(declare-fun m!1561359 () Bool)

(assert (=> b!1386836 m!1561359))

(assert (=> d!395506 d!396540))

(assert (=> d!395506 d!395548))

(assert (=> d!395506 d!395626))

(declare-fun b!1386837 () Bool)

(declare-fun res!625672 () Bool)

(declare-fun e!885930 () Bool)

(assert (=> b!1386837 (=> res!625672 e!885930)))

(assert (=> b!1386837 (= res!625672 (not ((_ is Concat!6275) (h!19463 (map!3113 rules!2550 lambda!59594)))))))

(declare-fun e!885934 () Bool)

(assert (=> b!1386837 (= e!885934 e!885930)))

(declare-fun b!1386838 () Bool)

(declare-fun e!885932 () Bool)

(declare-fun call!92805 () Bool)

(assert (=> b!1386838 (= e!885932 call!92805)))

(declare-fun bm!92798 () Bool)

(declare-fun call!92803 () Bool)

(assert (=> bm!92798 (= call!92805 call!92803)))

(declare-fun d!396542 () Bool)

(declare-fun res!625676 () Bool)

(declare-fun e!885929 () Bool)

(assert (=> d!396542 (=> res!625676 e!885929)))

(assert (=> d!396542 (= res!625676 ((_ is ElementMatch!3749) (h!19463 (map!3113 rules!2550 lambda!59594))))))

(assert (=> d!396542 (= (validRegex!1633 (h!19463 (map!3113 rules!2550 lambda!59594))) e!885929)))

(declare-fun b!1386839 () Bool)

(declare-fun res!625673 () Bool)

(declare-fun e!885935 () Bool)

(assert (=> b!1386839 (=> (not res!625673) (not e!885935))))

(declare-fun call!92804 () Bool)

(assert (=> b!1386839 (= res!625673 call!92804)))

(assert (=> b!1386839 (= e!885934 e!885935)))

(declare-fun c!228312 () Bool)

(declare-fun bm!92799 () Bool)

(declare-fun c!228313 () Bool)

(assert (=> bm!92799 (= call!92803 (validRegex!1633 (ite c!228313 (reg!4078 (h!19463 (map!3113 rules!2550 lambda!59594))) (ite c!228312 (regTwo!8011 (h!19463 (map!3113 rules!2550 lambda!59594))) (regTwo!8010 (h!19463 (map!3113 rules!2550 lambda!59594)))))))))

(declare-fun b!1386840 () Bool)

(assert (=> b!1386840 (= e!885935 call!92805)))

(declare-fun b!1386841 () Bool)

(declare-fun e!885933 () Bool)

(assert (=> b!1386841 (= e!885933 e!885934)))

(assert (=> b!1386841 (= c!228312 ((_ is Union!3749) (h!19463 (map!3113 rules!2550 lambda!59594))))))

(declare-fun b!1386842 () Bool)

(declare-fun e!885931 () Bool)

(assert (=> b!1386842 (= e!885931 call!92803)))

(declare-fun bm!92800 () Bool)

(assert (=> bm!92800 (= call!92804 (validRegex!1633 (ite c!228312 (regOne!8011 (h!19463 (map!3113 rules!2550 lambda!59594))) (regOne!8010 (h!19463 (map!3113 rules!2550 lambda!59594))))))))

(declare-fun b!1386843 () Bool)

(assert (=> b!1386843 (= e!885930 e!885932)))

(declare-fun res!625674 () Bool)

(assert (=> b!1386843 (=> (not res!625674) (not e!885932))))

(assert (=> b!1386843 (= res!625674 call!92804)))

(declare-fun b!1386844 () Bool)

(assert (=> b!1386844 (= e!885933 e!885931)))

(declare-fun res!625675 () Bool)

(assert (=> b!1386844 (= res!625675 (not (nullable!1213 (reg!4078 (h!19463 (map!3113 rules!2550 lambda!59594))))))))

(assert (=> b!1386844 (=> (not res!625675) (not e!885931))))

(declare-fun b!1386845 () Bool)

(assert (=> b!1386845 (= e!885929 e!885933)))

(assert (=> b!1386845 (= c!228313 ((_ is Star!3749) (h!19463 (map!3113 rules!2550 lambda!59594))))))

(assert (= (and d!396542 (not res!625676)) b!1386845))

(assert (= (and b!1386845 c!228313) b!1386844))

(assert (= (and b!1386845 (not c!228313)) b!1386841))

(assert (= (and b!1386844 res!625675) b!1386842))

(assert (= (and b!1386841 c!228312) b!1386839))

(assert (= (and b!1386841 (not c!228312)) b!1386837))

(assert (= (and b!1386839 res!625673) b!1386840))

(assert (= (and b!1386837 (not res!625672)) b!1386843))

(assert (= (and b!1386843 res!625674) b!1386838))

(assert (= (or b!1386839 b!1386843) bm!92800))

(assert (= (or b!1386840 b!1386838) bm!92798))

(assert (= (or b!1386842 bm!92798) bm!92799))

(declare-fun m!1561361 () Bool)

(assert (=> bm!92799 m!1561361))

(declare-fun m!1561363 () Bool)

(assert (=> bm!92800 m!1561363))

(declare-fun m!1561365 () Bool)

(assert (=> b!1386844 m!1561365))

(assert (=> bs!336873 d!396542))

(declare-fun d!396544 () Bool)

(assert (=> d!396544 (= (inv!17 (value!79030 t2!34)) (= (charsToBigInt!1 (text!18123 (value!79030 t2!34))) (value!79022 (value!79030 t2!34))))))

(declare-fun bs!337134 () Bool)

(assert (= bs!337134 d!396544))

(declare-fun m!1561367 () Bool)

(assert (=> bs!337134 m!1561367))

(assert (=> b!1385139 d!396544))

(declare-fun d!396546 () Bool)

(assert (=> d!396546 (dynLambda!6429 lambda!59597 lt!460306)))

(assert (=> d!396546 true))

(declare-fun _$7!744 () Unit!20305)

(assert (=> d!396546 (= (choose!8511 rules!2550 lambda!59597 lt!460306) _$7!744)))

(declare-fun b_lambda!42993 () Bool)

(assert (=> (not b_lambda!42993) (not d!396546)))

(declare-fun bs!337135 () Bool)

(assert (= bs!337135 d!396546))

(assert (=> bs!337135 m!1558651))

(assert (=> d!395616 d!396546))

(assert (=> d!395616 d!396274))

(declare-fun b!1386847 () Bool)

(declare-fun e!885936 () List!14127)

(declare-fun e!885937 () List!14127)

(assert (=> b!1386847 (= e!885936 e!885937)))

(declare-fun c!228315 () Bool)

(assert (=> b!1386847 (= c!228315 ((_ is Leaf!7045) (c!227732 (_1!7713 lt!460302))))))

(declare-fun b!1386846 () Bool)

(assert (=> b!1386846 (= e!885936 Nil!14061)))

(declare-fun b!1386849 () Bool)

(assert (=> b!1386849 (= e!885937 (++!3650 (list!5449 (left!12018 (c!227732 (_1!7713 lt!460302)))) (list!5449 (right!12348 (c!227732 (_1!7713 lt!460302))))))))

(declare-fun d!396548 () Bool)

(declare-fun c!228314 () Bool)

(assert (=> d!396548 (= c!228314 ((_ is Empty!4631) (c!227732 (_1!7713 lt!460302))))))

(assert (=> d!396548 (= (list!5449 (c!227732 (_1!7713 lt!460302))) e!885936)))

(declare-fun b!1386848 () Bool)

(assert (=> b!1386848 (= e!885937 (list!5454 (xs!7358 (c!227732 (_1!7713 lt!460302)))))))

(assert (= (and d!396548 c!228314) b!1386846))

(assert (= (and d!396548 (not c!228314)) b!1386847))

(assert (= (and b!1386847 c!228315) b!1386848))

(assert (= (and b!1386847 (not c!228315)) b!1386849))

(declare-fun m!1561369 () Bool)

(assert (=> b!1386849 m!1561369))

(declare-fun m!1561371 () Bool)

(assert (=> b!1386849 m!1561371))

(assert (=> b!1386849 m!1561369))

(assert (=> b!1386849 m!1561371))

(declare-fun m!1561373 () Bool)

(assert (=> b!1386849 m!1561373))

(declare-fun m!1561375 () Bool)

(assert (=> b!1386848 m!1561375))

(assert (=> d!395432 d!396548))

(declare-fun d!396550 () Bool)

(declare-fun lt!461318 () Bool)

(assert (=> d!396550 (= lt!461318 (select (content!2059 (t!122150 lt!460287)) lt!460309))))

(declare-fun e!885939 () Bool)

(assert (=> d!396550 (= lt!461318 e!885939)))

(declare-fun res!625678 () Bool)

(assert (=> d!396550 (=> (not res!625678) (not e!885939))))

(assert (=> d!396550 (= res!625678 ((_ is Cons!14059) (t!122150 lt!460287)))))

(assert (=> d!396550 (= (contains!2683 (t!122150 lt!460287) lt!460309) lt!461318)))

(declare-fun b!1386850 () Bool)

(declare-fun e!885938 () Bool)

(assert (=> b!1386850 (= e!885939 e!885938)))

(declare-fun res!625677 () Bool)

(assert (=> b!1386850 (=> res!625677 e!885938)))

(assert (=> b!1386850 (= res!625677 (= (h!19460 (t!122150 lt!460287)) lt!460309))))

(declare-fun b!1386851 () Bool)

(assert (=> b!1386851 (= e!885938 (contains!2683 (t!122150 (t!122150 lt!460287)) lt!460309))))

(assert (= (and d!396550 res!625678) b!1386850))

(assert (= (and b!1386850 (not res!625677)) b!1386851))

(assert (=> d!396550 m!1560521))

(declare-fun m!1561377 () Bool)

(assert (=> d!396550 m!1561377))

(declare-fun m!1561379 () Bool)

(assert (=> b!1386851 m!1561379))

(assert (=> b!1384971 d!396550))

(assert (=> b!1385218 d!395374))

(declare-fun d!396552 () Bool)

(declare-fun c!228316 () Bool)

(assert (=> d!396552 (= c!228316 ((_ is Node!4630) (c!227730 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 t2!34))) (value!79030 t2!34)))))))

(declare-fun e!885940 () Bool)

(assert (=> d!396552 (= (inv!18402 (c!227730 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 t2!34))) (value!79030 t2!34)))) e!885940)))

(declare-fun b!1386852 () Bool)

(assert (=> b!1386852 (= e!885940 (inv!18406 (c!227730 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 t2!34))) (value!79030 t2!34)))))))

(declare-fun b!1386853 () Bool)

(declare-fun e!885941 () Bool)

(assert (=> b!1386853 (= e!885940 e!885941)))

(declare-fun res!625679 () Bool)

(assert (=> b!1386853 (= res!625679 (not ((_ is Leaf!7044) (c!227730 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 t2!34))) (value!79030 t2!34))))))))

(assert (=> b!1386853 (=> res!625679 e!885941)))

(declare-fun b!1386854 () Bool)

(assert (=> b!1386854 (= e!885941 (inv!18407 (c!227730 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 t2!34))) (value!79030 t2!34)))))))

(assert (= (and d!396552 c!228316) b!1386852))

(assert (= (and d!396552 (not c!228316)) b!1386853))

(assert (= (and b!1386853 (not res!625679)) b!1386854))

(declare-fun m!1561381 () Bool)

(assert (=> b!1386852 m!1561381))

(declare-fun m!1561383 () Bool)

(assert (=> b!1386854 m!1561383))

(assert (=> b!1385148 d!396552))

(declare-fun d!396554 () Bool)

(assert (=> d!396554 (= (isEmpty!8506 (_1!7715 lt!460545)) ((_ is Nil!14061) (_1!7715 lt!460545)))))

(assert (=> b!1385149 d!396554))

(declare-fun d!396556 () Bool)

(assert (=> d!396556 (= (head!2523 rules!2550) (h!19461 rules!2550))))

(assert (=> b!1384801 d!396556))

(assert (=> d!395610 d!396418))

(assert (=> d!395610 d!395594))

(declare-fun d!396558 () Bool)

(declare-fun e!885942 () Bool)

(assert (=> d!396558 e!885942))

(declare-fun res!625680 () Bool)

(assert (=> d!396558 (=> (not res!625680) (not e!885942))))

(declare-fun lt!461319 () List!14125)

(assert (=> d!396558 (= res!625680 (= (content!2059 lt!461319) ((_ map or) (content!2059 lt!460287) (content!2059 lt!460558))))))

(declare-fun e!885943 () List!14125)

(assert (=> d!396558 (= lt!461319 e!885943)))

(declare-fun c!228317 () Bool)

(assert (=> d!396558 (= c!228317 ((_ is Nil!14059) lt!460287))))

(assert (=> d!396558 (= (++!3646 lt!460287 lt!460558) lt!461319)))

(declare-fun b!1386855 () Bool)

(assert (=> b!1386855 (= e!885943 lt!460558)))

(declare-fun b!1386857 () Bool)

(declare-fun res!625681 () Bool)

(assert (=> b!1386857 (=> (not res!625681) (not e!885942))))

(assert (=> b!1386857 (= res!625681 (= (size!11552 lt!461319) (+ (size!11552 lt!460287) (size!11552 lt!460558))))))

(declare-fun b!1386858 () Bool)

(assert (=> b!1386858 (= e!885942 (or (not (= lt!460558 Nil!14059)) (= lt!461319 lt!460287)))))

(declare-fun b!1386856 () Bool)

(assert (=> b!1386856 (= e!885943 (Cons!14059 (h!19460 lt!460287) (++!3646 (t!122150 lt!460287) lt!460558)))))

(assert (= (and d!396558 c!228317) b!1386855))

(assert (= (and d!396558 (not c!228317)) b!1386856))

(assert (= (and d!396558 res!625680) b!1386857))

(assert (= (and b!1386857 res!625681) b!1386858))

(declare-fun m!1561385 () Bool)

(assert (=> d!396558 m!1561385))

(assert (=> d!396558 m!1557819))

(declare-fun m!1561387 () Bool)

(assert (=> d!396558 m!1561387))

(declare-fun m!1561389 () Bool)

(assert (=> b!1386857 m!1561389))

(assert (=> b!1386857 m!1558613))

(declare-fun m!1561391 () Bool)

(assert (=> b!1386857 m!1561391))

(declare-fun m!1561393 () Bool)

(assert (=> b!1386856 m!1561393))

(assert (=> d!395606 d!396558))

(declare-fun d!396560 () Bool)

(declare-fun lt!461320 () Int)

(assert (=> d!396560 (>= lt!461320 0)))

(declare-fun e!885944 () Int)

(assert (=> d!396560 (= lt!461320 e!885944)))

(declare-fun c!228318 () Bool)

(assert (=> d!396560 (= c!228318 ((_ is Nil!14059) lt!460300))))

(assert (=> d!396560 (= (size!11552 lt!460300) lt!461320)))

(declare-fun b!1386859 () Bool)

(assert (=> b!1386859 (= e!885944 0)))

(declare-fun b!1386860 () Bool)

(assert (=> b!1386860 (= e!885944 (+ 1 (size!11552 (t!122150 lt!460300))))))

(assert (= (and d!396560 c!228318) b!1386859))

(assert (= (and d!396560 (not c!228318)) b!1386860))

(declare-fun m!1561395 () Bool)

(assert (=> b!1386860 m!1561395))

(assert (=> d!395606 d!396560))

(assert (=> d!395606 d!396314))

(assert (=> d!395428 d!395598))

(declare-fun lt!461321 () Bool)

(declare-fun d!396562 () Bool)

(assert (=> d!396562 (= lt!461321 (select (content!2063 (t!122153 (map!3113 rules!2550 lambda!59594))) lt!460289))))

(declare-fun e!885945 () Bool)

(assert (=> d!396562 (= lt!461321 e!885945)))

(declare-fun res!625683 () Bool)

(assert (=> d!396562 (=> (not res!625683) (not e!885945))))

(assert (=> d!396562 (= res!625683 ((_ is Cons!14062) (t!122153 (map!3113 rules!2550 lambda!59594))))))

(assert (=> d!396562 (= (contains!2685 (t!122153 (map!3113 rules!2550 lambda!59594)) lt!460289) lt!461321)))

(declare-fun b!1386861 () Bool)

(declare-fun e!885946 () Bool)

(assert (=> b!1386861 (= e!885945 e!885946)))

(declare-fun res!625682 () Bool)

(assert (=> b!1386861 (=> res!625682 e!885946)))

(assert (=> b!1386861 (= res!625682 (= (h!19463 (t!122153 (map!3113 rules!2550 lambda!59594))) lt!460289))))

(declare-fun b!1386862 () Bool)

(assert (=> b!1386862 (= e!885946 (contains!2685 (t!122153 (t!122153 (map!3113 rules!2550 lambda!59594))) lt!460289))))

(assert (= (and d!396562 res!625683) b!1386861))

(assert (= (and b!1386861 (not res!625682)) b!1386862))

(assert (=> d!396562 m!1561091))

(declare-fun m!1561397 () Bool)

(assert (=> d!396562 m!1561397))

(declare-fun m!1561399 () Bool)

(assert (=> b!1386862 m!1561399))

(assert (=> b!1385095 d!396562))

(declare-fun d!396564 () Bool)

(declare-fun lt!461322 () Int)

(assert (=> d!396564 (>= lt!461322 0)))

(declare-fun e!885947 () Int)

(assert (=> d!396564 (= lt!461322 e!885947)))

(declare-fun c!228319 () Bool)

(assert (=> d!396564 (= c!228319 ((_ is Nil!14059) (list!5446 lt!460301)))))

(assert (=> d!396564 (= (size!11552 (list!5446 lt!460301)) lt!461322)))

(declare-fun b!1386863 () Bool)

(assert (=> b!1386863 (= e!885947 0)))

(declare-fun b!1386864 () Bool)

(assert (=> b!1386864 (= e!885947 (+ 1 (size!11552 (t!122150 (list!5446 lt!460301)))))))

(assert (= (and d!396564 c!228319) b!1386863))

(assert (= (and d!396564 (not c!228319)) b!1386864))

(declare-fun m!1561401 () Bool)

(assert (=> b!1386864 m!1561401))

(assert (=> d!395624 d!396564))

(assert (=> d!395624 d!395538))

(declare-fun d!396566 () Bool)

(declare-fun lt!461325 () Int)

(assert (=> d!396566 (= lt!461325 (size!11552 (list!5450 (c!227730 lt!460301))))))

(assert (=> d!396566 (= lt!461325 (ite ((_ is Empty!4630) (c!227730 lt!460301)) 0 (ite ((_ is Leaf!7044) (c!227730 lt!460301)) (csize!9491 (c!227730 lt!460301)) (csize!9490 (c!227730 lt!460301)))))))

(assert (=> d!396566 (= (size!11554 (c!227730 lt!460301)) lt!461325)))

(declare-fun bs!337136 () Bool)

(assert (= bs!337136 d!396566))

(assert (=> bs!337136 m!1558393))

(assert (=> bs!337136 m!1558393))

(declare-fun m!1561403 () Bool)

(assert (=> bs!337136 m!1561403))

(assert (=> d!395624 d!396566))

(declare-fun d!396568 () Bool)

(assert (=> d!396568 (= (list!5446 lt!460517) (list!5450 (c!227730 lt!460517)))))

(declare-fun bs!337137 () Bool)

(assert (= bs!337137 d!396568))

(declare-fun m!1561405 () Bool)

(assert (=> bs!337137 m!1561405))

(assert (=> d!395548 d!396568))

(declare-fun e!885951 () Regex!3749)

(declare-fun b!1386865 () Bool)

(assert (=> b!1386865 (= e!885951 (getWitness!403 (t!122153 (t!122153 (map!3113 rules!2550 lambda!59594))) lambda!59595))))

(declare-fun b!1386866 () Bool)

(declare-fun lt!461326 () Unit!20305)

(declare-fun Unit!20326 () Unit!20305)

(assert (=> b!1386866 (= lt!461326 Unit!20326)))

(assert (=> b!1386866 false))

(assert (=> b!1386866 (= e!885951 (head!2525 (t!122153 (map!3113 rules!2550 lambda!59594))))))

(declare-fun e!885948 () Bool)

(declare-fun b!1386867 () Bool)

(assert (=> b!1386867 (= e!885948 (dynLambda!6433 lambda!59595 (h!19463 (t!122153 (map!3113 rules!2550 lambda!59594)))))))

(declare-fun lt!461327 () Regex!3749)

(declare-fun e!885950 () Bool)

(declare-fun b!1386868 () Bool)

(assert (=> b!1386868 (= e!885950 (contains!2685 (t!122153 (map!3113 rules!2550 lambda!59594)) lt!461327))))

(declare-fun b!1386869 () Bool)

(declare-fun e!885949 () Regex!3749)

(assert (=> b!1386869 (= e!885949 (h!19463 (t!122153 (map!3113 rules!2550 lambda!59594))))))

(declare-fun d!396570 () Bool)

(assert (=> d!396570 e!885950))

(declare-fun res!625685 () Bool)

(assert (=> d!396570 (=> (not res!625685) (not e!885950))))

(assert (=> d!396570 (= res!625685 (dynLambda!6433 lambda!59595 lt!461327))))

(assert (=> d!396570 (= lt!461327 e!885949)))

(declare-fun c!228321 () Bool)

(assert (=> d!396570 (= c!228321 e!885948)))

(declare-fun res!625684 () Bool)

(assert (=> d!396570 (=> (not res!625684) (not e!885948))))

(assert (=> d!396570 (= res!625684 ((_ is Cons!14062) (t!122153 (map!3113 rules!2550 lambda!59594))))))

(assert (=> d!396570 (exists!515 (t!122153 (map!3113 rules!2550 lambda!59594)) lambda!59595)))

(assert (=> d!396570 (= (getWitness!403 (t!122153 (map!3113 rules!2550 lambda!59594)) lambda!59595) lt!461327)))

(declare-fun b!1386870 () Bool)

(assert (=> b!1386870 (= e!885949 e!885951)))

(declare-fun c!228320 () Bool)

(assert (=> b!1386870 (= c!228320 ((_ is Cons!14062) (t!122153 (map!3113 rules!2550 lambda!59594))))))

(assert (= (and d!396570 res!625684) b!1386867))

(assert (= (and d!396570 c!228321) b!1386869))

(assert (= (and d!396570 (not c!228321)) b!1386870))

(assert (= (and b!1386870 c!228320) b!1386865))

(assert (= (and b!1386870 (not c!228320)) b!1386866))

(assert (= (and d!396570 res!625685) b!1386868))

(declare-fun b_lambda!42995 () Bool)

(assert (=> (not b_lambda!42995) (not b!1386867)))

(declare-fun b_lambda!42997 () Bool)

(assert (=> (not b_lambda!42997) (not d!396570)))

(declare-fun m!1561407 () Bool)

(assert (=> b!1386867 m!1561407))

(declare-fun m!1561409 () Bool)

(assert (=> d!396570 m!1561409))

(declare-fun m!1561411 () Bool)

(assert (=> d!396570 m!1561411))

(declare-fun m!1561413 () Bool)

(assert (=> b!1386868 m!1561413))

(declare-fun m!1561415 () Bool)

(assert (=> b!1386866 m!1561415))

(declare-fun m!1561417 () Bool)

(assert (=> b!1386865 m!1561417))

(assert (=> b!1385108 d!396570))

(declare-fun d!396572 () Bool)

(declare-fun res!625686 () Bool)

(declare-fun e!885952 () Bool)

(assert (=> d!396572 (=> res!625686 e!885952)))

(assert (=> d!396572 (= res!625686 ((_ is Nil!14062) (map!3113 rules!2550 lambda!59594)))))

(assert (=> d!396572 (= (forall!3420 (map!3113 rules!2550 lambda!59594) lambda!59606) e!885952)))

(declare-fun b!1386871 () Bool)

(declare-fun e!885953 () Bool)

(assert (=> b!1386871 (= e!885952 e!885953)))

(declare-fun res!625687 () Bool)

(assert (=> b!1386871 (=> (not res!625687) (not e!885953))))

(assert (=> b!1386871 (= res!625687 (dynLambda!6433 lambda!59606 (h!19463 (map!3113 rules!2550 lambda!59594))))))

(declare-fun b!1386872 () Bool)

(assert (=> b!1386872 (= e!885953 (forall!3420 (t!122153 (map!3113 rules!2550 lambda!59594)) lambda!59606))))

(assert (= (and d!396572 (not res!625686)) b!1386871))

(assert (= (and b!1386871 res!625687) b!1386872))

(declare-fun b_lambda!42999 () Bool)

(assert (=> (not b_lambda!42999) (not b!1386871)))

(declare-fun m!1561419 () Bool)

(assert (=> b!1386871 m!1561419))

(declare-fun m!1561421 () Bool)

(assert (=> b!1386872 m!1561421))

(assert (=> d!395350 d!396572))

(assert (=> b!1385083 d!396028))

(assert (=> b!1385083 d!396030))

(assert (=> b!1385083 d!396026))

(assert (=> b!1385121 d!395992))

(assert (=> b!1385121 d!395994))

(declare-fun d!396574 () Bool)

(assert (=> d!396574 (= (isEmpty!8506 (_1!7715 lt!460491)) ((_ is Nil!14061) (_1!7715 lt!460491)))))

(assert (=> b!1384965 d!396574))

(declare-fun b!1386873 () Bool)

(declare-fun res!625688 () Bool)

(declare-fun e!885955 () Bool)

(assert (=> b!1386873 (=> res!625688 e!885955)))

(assert (=> b!1386873 (= res!625688 (not ((_ is Concat!6275) (ite c!227888 (regOne!8011 (regex!2435 (rule!4194 t1!34))) (regOne!8010 (regex!2435 (rule!4194 t1!34)))))))))

(declare-fun e!885959 () Bool)

(assert (=> b!1386873 (= e!885959 e!885955)))

(declare-fun b!1386874 () Bool)

(declare-fun e!885957 () Bool)

(declare-fun call!92808 () Bool)

(assert (=> b!1386874 (= e!885957 call!92808)))

(declare-fun bm!92801 () Bool)

(declare-fun call!92806 () Bool)

(assert (=> bm!92801 (= call!92808 call!92806)))

(declare-fun d!396576 () Bool)

(declare-fun res!625692 () Bool)

(declare-fun e!885954 () Bool)

(assert (=> d!396576 (=> res!625692 e!885954)))

(assert (=> d!396576 (= res!625692 ((_ is ElementMatch!3749) (ite c!227888 (regOne!8011 (regex!2435 (rule!4194 t1!34))) (regOne!8010 (regex!2435 (rule!4194 t1!34))))))))

(assert (=> d!396576 (= (validRegex!1633 (ite c!227888 (regOne!8011 (regex!2435 (rule!4194 t1!34))) (regOne!8010 (regex!2435 (rule!4194 t1!34))))) e!885954)))

(declare-fun b!1386875 () Bool)

(declare-fun res!625689 () Bool)

(declare-fun e!885960 () Bool)

(assert (=> b!1386875 (=> (not res!625689) (not e!885960))))

(declare-fun call!92807 () Bool)

(assert (=> b!1386875 (= res!625689 call!92807)))

(assert (=> b!1386875 (= e!885959 e!885960)))

(declare-fun c!228322 () Bool)

(declare-fun c!228323 () Bool)

(declare-fun bm!92802 () Bool)

(assert (=> bm!92802 (= call!92806 (validRegex!1633 (ite c!228323 (reg!4078 (ite c!227888 (regOne!8011 (regex!2435 (rule!4194 t1!34))) (regOne!8010 (regex!2435 (rule!4194 t1!34))))) (ite c!228322 (regTwo!8011 (ite c!227888 (regOne!8011 (regex!2435 (rule!4194 t1!34))) (regOne!8010 (regex!2435 (rule!4194 t1!34))))) (regTwo!8010 (ite c!227888 (regOne!8011 (regex!2435 (rule!4194 t1!34))) (regOne!8010 (regex!2435 (rule!4194 t1!34)))))))))))

(declare-fun b!1386876 () Bool)

(assert (=> b!1386876 (= e!885960 call!92808)))

(declare-fun b!1386877 () Bool)

(declare-fun e!885958 () Bool)

(assert (=> b!1386877 (= e!885958 e!885959)))

(assert (=> b!1386877 (= c!228322 ((_ is Union!3749) (ite c!227888 (regOne!8011 (regex!2435 (rule!4194 t1!34))) (regOne!8010 (regex!2435 (rule!4194 t1!34))))))))

(declare-fun b!1386878 () Bool)

(declare-fun e!885956 () Bool)

(assert (=> b!1386878 (= e!885956 call!92806)))

(declare-fun bm!92803 () Bool)

(assert (=> bm!92803 (= call!92807 (validRegex!1633 (ite c!228322 (regOne!8011 (ite c!227888 (regOne!8011 (regex!2435 (rule!4194 t1!34))) (regOne!8010 (regex!2435 (rule!4194 t1!34))))) (regOne!8010 (ite c!227888 (regOne!8011 (regex!2435 (rule!4194 t1!34))) (regOne!8010 (regex!2435 (rule!4194 t1!34))))))))))

(declare-fun b!1386879 () Bool)

(assert (=> b!1386879 (= e!885955 e!885957)))

(declare-fun res!625690 () Bool)

(assert (=> b!1386879 (=> (not res!625690) (not e!885957))))

(assert (=> b!1386879 (= res!625690 call!92807)))

(declare-fun b!1386880 () Bool)

(assert (=> b!1386880 (= e!885958 e!885956)))

(declare-fun res!625691 () Bool)

(assert (=> b!1386880 (= res!625691 (not (nullable!1213 (reg!4078 (ite c!227888 (regOne!8011 (regex!2435 (rule!4194 t1!34))) (regOne!8010 (regex!2435 (rule!4194 t1!34))))))))))

(assert (=> b!1386880 (=> (not res!625691) (not e!885956))))

(declare-fun b!1386881 () Bool)

(assert (=> b!1386881 (= e!885954 e!885958)))

(assert (=> b!1386881 (= c!228323 ((_ is Star!3749) (ite c!227888 (regOne!8011 (regex!2435 (rule!4194 t1!34))) (regOne!8010 (regex!2435 (rule!4194 t1!34))))))))

(assert (= (and d!396576 (not res!625692)) b!1386881))

(assert (= (and b!1386881 c!228323) b!1386880))

(assert (= (and b!1386881 (not c!228323)) b!1386877))

(assert (= (and b!1386880 res!625691) b!1386878))

(assert (= (and b!1386877 c!228322) b!1386875))

(assert (= (and b!1386877 (not c!228322)) b!1386873))

(assert (= (and b!1386875 res!625689) b!1386876))

(assert (= (and b!1386873 (not res!625688)) b!1386879))

(assert (= (and b!1386879 res!625690) b!1386874))

(assert (= (or b!1386875 b!1386879) bm!92803))

(assert (= (or b!1386876 b!1386874) bm!92801))

(assert (= (or b!1386878 bm!92801) bm!92802))

(declare-fun m!1561423 () Bool)

(assert (=> bm!92802 m!1561423))

(declare-fun m!1561425 () Bool)

(assert (=> bm!92803 m!1561425))

(declare-fun m!1561427 () Bool)

(assert (=> b!1386880 m!1561427))

(assert (=> bm!92677 d!396576))

(declare-fun b!1386882 () Bool)

(declare-fun e!885964 () Bool)

(declare-fun e!885961 () Bool)

(assert (=> b!1386882 (= e!885964 e!885961)))

(declare-fun res!625695 () Bool)

(assert (=> b!1386882 (=> res!625695 e!885961)))

(declare-fun call!92809 () Bool)

(assert (=> b!1386882 (= res!625695 call!92809)))

(declare-fun e!885966 () Bool)

(declare-fun b!1386883 () Bool)

(assert (=> b!1386883 (= e!885966 (matchR!1740 (derivativeStep!971 (h!19463 (map!3113 rules!2550 lambda!59594)) (head!2521 lt!460300)) (tail!2010 lt!460300)))))

(declare-fun b!1386884 () Bool)

(declare-fun res!625697 () Bool)

(assert (=> b!1386884 (=> res!625697 e!885961)))

(assert (=> b!1386884 (= res!625697 (not (isEmpty!8502 (tail!2010 lt!460300))))))

(declare-fun b!1386885 () Bool)

(declare-fun e!885965 () Bool)

(declare-fun lt!461328 () Bool)

(assert (=> b!1386885 (= e!885965 (not lt!461328))))

(declare-fun b!1386886 () Bool)

(assert (=> b!1386886 (= e!885961 (not (= (head!2521 lt!460300) (c!227731 (h!19463 (map!3113 rules!2550 lambda!59594))))))))

(declare-fun b!1386887 () Bool)

(declare-fun e!885967 () Bool)

(assert (=> b!1386887 (= e!885967 e!885964)))

(declare-fun res!625699 () Bool)

(assert (=> b!1386887 (=> (not res!625699) (not e!885964))))

(assert (=> b!1386887 (= res!625699 (not lt!461328))))

(declare-fun b!1386888 () Bool)

(declare-fun res!625696 () Bool)

(assert (=> b!1386888 (=> res!625696 e!885967)))

(declare-fun e!885963 () Bool)

(assert (=> b!1386888 (= res!625696 e!885963)))

(declare-fun res!625693 () Bool)

(assert (=> b!1386888 (=> (not res!625693) (not e!885963))))

(assert (=> b!1386888 (= res!625693 lt!461328)))

(declare-fun b!1386889 () Bool)

(declare-fun e!885962 () Bool)

(assert (=> b!1386889 (= e!885962 (= lt!461328 call!92809))))

(declare-fun bm!92804 () Bool)

(assert (=> bm!92804 (= call!92809 (isEmpty!8502 lt!460300))))

(declare-fun d!396578 () Bool)

(assert (=> d!396578 e!885962))

(declare-fun c!228324 () Bool)

(assert (=> d!396578 (= c!228324 ((_ is EmptyExpr!3749) (h!19463 (map!3113 rules!2550 lambda!59594))))))

(assert (=> d!396578 (= lt!461328 e!885966)))

(declare-fun c!228325 () Bool)

(assert (=> d!396578 (= c!228325 (isEmpty!8502 lt!460300))))

(assert (=> d!396578 (validRegex!1633 (h!19463 (map!3113 rules!2550 lambda!59594)))))

(assert (=> d!396578 (= (matchR!1740 (h!19463 (map!3113 rules!2550 lambda!59594)) lt!460300) lt!461328)))

(declare-fun b!1386890 () Bool)

(declare-fun res!625700 () Bool)

(assert (=> b!1386890 (=> res!625700 e!885967)))

(assert (=> b!1386890 (= res!625700 (not ((_ is ElementMatch!3749) (h!19463 (map!3113 rules!2550 lambda!59594)))))))

(assert (=> b!1386890 (= e!885965 e!885967)))

(declare-fun b!1386891 () Bool)

(assert (=> b!1386891 (= e!885962 e!885965)))

(declare-fun c!228326 () Bool)

(assert (=> b!1386891 (= c!228326 ((_ is EmptyLang!3749) (h!19463 (map!3113 rules!2550 lambda!59594))))))

(declare-fun b!1386892 () Bool)

(assert (=> b!1386892 (= e!885966 (nullable!1213 (h!19463 (map!3113 rules!2550 lambda!59594))))))

(declare-fun b!1386893 () Bool)

(declare-fun res!625694 () Bool)

(assert (=> b!1386893 (=> (not res!625694) (not e!885963))))

(assert (=> b!1386893 (= res!625694 (isEmpty!8502 (tail!2010 lt!460300)))))

(declare-fun b!1386894 () Bool)

(declare-fun res!625698 () Bool)

(assert (=> b!1386894 (=> (not res!625698) (not e!885963))))

(assert (=> b!1386894 (= res!625698 (not call!92809))))

(declare-fun b!1386895 () Bool)

(assert (=> b!1386895 (= e!885963 (= (head!2521 lt!460300) (c!227731 (h!19463 (map!3113 rules!2550 lambda!59594)))))))

(assert (= (and d!396578 c!228325) b!1386892))

(assert (= (and d!396578 (not c!228325)) b!1386883))

(assert (= (and d!396578 c!228324) b!1386889))

(assert (= (and d!396578 (not c!228324)) b!1386891))

(assert (= (and b!1386891 c!228326) b!1386885))

(assert (= (and b!1386891 (not c!228326)) b!1386890))

(assert (= (and b!1386890 (not res!625700)) b!1386888))

(assert (= (and b!1386888 res!625693) b!1386894))

(assert (= (and b!1386894 res!625698) b!1386893))

(assert (= (and b!1386893 res!625694) b!1386895))

(assert (= (and b!1386888 (not res!625696)) b!1386887))

(assert (= (and b!1386887 res!625699) b!1386882))

(assert (= (and b!1386882 (not res!625695)) b!1386884))

(assert (= (and b!1386884 (not res!625697)) b!1386886))

(assert (= (or b!1386889 b!1386882 b!1386894) bm!92804))

(assert (=> bm!92804 m!1557803))

(assert (=> b!1386893 m!1557805))

(assert (=> b!1386893 m!1557805))

(assert (=> b!1386893 m!1557807))

(assert (=> b!1386883 m!1557809))

(assert (=> b!1386883 m!1557809))

(declare-fun m!1561429 () Bool)

(assert (=> b!1386883 m!1561429))

(assert (=> b!1386883 m!1557805))

(assert (=> b!1386883 m!1561429))

(assert (=> b!1386883 m!1557805))

(declare-fun m!1561431 () Bool)

(assert (=> b!1386883 m!1561431))

(declare-fun m!1561433 () Bool)

(assert (=> b!1386892 m!1561433))

(assert (=> b!1386884 m!1557805))

(assert (=> b!1386884 m!1557805))

(assert (=> b!1386884 m!1557807))

(assert (=> b!1386886 m!1557809))

(assert (=> b!1386895 m!1557809))

(assert (=> d!396578 m!1557803))

(assert (=> d!396578 m!1558673))

(assert (=> b!1385263 d!396578))

(declare-fun d!396580 () Bool)

(assert (=> d!396580 (= (list!5446 (_2!7713 lt!460396)) (list!5450 (c!227730 (_2!7713 lt!460396))))))

(declare-fun bs!337138 () Bool)

(assert (= bs!337138 d!396580))

(declare-fun m!1561435 () Bool)

(assert (=> bs!337138 m!1561435))

(assert (=> b!1384717 d!396580))

(assert (=> b!1384717 d!395492))

(assert (=> b!1384717 d!395502))

(declare-fun d!396582 () Bool)

(declare-fun res!625705 () Bool)

(declare-fun e!885972 () Bool)

(assert (=> d!396582 (=> res!625705 e!885972)))

(assert (=> d!396582 (= res!625705 ((_ is Nil!14060) rules!2550))))

(assert (=> d!396582 (= (noDuplicateTag!911 thiss!19762 rules!2550 Nil!14064) e!885972)))

(declare-fun b!1386900 () Bool)

(declare-fun e!885973 () Bool)

(assert (=> b!1386900 (= e!885972 e!885973)))

(declare-fun res!625706 () Bool)

(assert (=> b!1386900 (=> (not res!625706) (not e!885973))))

(declare-fun contains!2687 (List!14130 String!16861) Bool)

(assert (=> b!1386900 (= res!625706 (not (contains!2687 Nil!14064 (tag!2697 (h!19461 rules!2550)))))))

(declare-fun b!1386901 () Bool)

(assert (=> b!1386901 (= e!885973 (noDuplicateTag!911 thiss!19762 (t!122151 rules!2550) (Cons!14064 (tag!2697 (h!19461 rules!2550)) Nil!14064)))))

(assert (= (and d!396582 (not res!625705)) b!1386900))

(assert (= (and b!1386900 res!625706) b!1386901))

(declare-fun m!1561437 () Bool)

(assert (=> b!1386900 m!1561437))

(declare-fun m!1561439 () Bool)

(assert (=> b!1386901 m!1561439))

(assert (=> b!1385089 d!396582))

(assert (=> d!395368 d!396256))

(assert (=> d!395566 d!395350))

(declare-fun d!396584 () Bool)

(declare-fun e!885974 () Bool)

(assert (=> d!396584 e!885974))

(declare-fun res!625707 () Bool)

(assert (=> d!396584 (=> (not res!625707) (not e!885974))))

(declare-fun lt!461329 () List!14125)

(assert (=> d!396584 (= res!625707 (= (content!2059 lt!461329) ((_ map or) (content!2059 (t!122150 lt!460287)) (content!2059 (getSuffix!595 lt!460300 lt!460287)))))))

(declare-fun e!885975 () List!14125)

(assert (=> d!396584 (= lt!461329 e!885975)))

(declare-fun c!228327 () Bool)

(assert (=> d!396584 (= c!228327 ((_ is Nil!14059) (t!122150 lt!460287)))))

(assert (=> d!396584 (= (++!3646 (t!122150 lt!460287) (getSuffix!595 lt!460300 lt!460287)) lt!461329)))

(declare-fun b!1386902 () Bool)

(assert (=> b!1386902 (= e!885975 (getSuffix!595 lt!460300 lt!460287))))

(declare-fun b!1386904 () Bool)

(declare-fun res!625708 () Bool)

(assert (=> b!1386904 (=> (not res!625708) (not e!885974))))

(assert (=> b!1386904 (= res!625708 (= (size!11552 lt!461329) (+ (size!11552 (t!122150 lt!460287)) (size!11552 (getSuffix!595 lt!460300 lt!460287)))))))

(declare-fun b!1386905 () Bool)

(assert (=> b!1386905 (= e!885974 (or (not (= (getSuffix!595 lt!460300 lt!460287) Nil!14059)) (= lt!461329 (t!122150 lt!460287))))))

(declare-fun b!1386903 () Bool)

(assert (=> b!1386903 (= e!885975 (Cons!14059 (h!19460 (t!122150 lt!460287)) (++!3646 (t!122150 (t!122150 lt!460287)) (getSuffix!595 lt!460300 lt!460287))))))

(assert (= (and d!396584 c!228327) b!1386902))

(assert (= (and d!396584 (not c!228327)) b!1386903))

(assert (= (and d!396584 res!625707) b!1386904))

(assert (= (and b!1386904 res!625708) b!1386905))

(declare-fun m!1561441 () Bool)

(assert (=> d!396584 m!1561441))

(assert (=> d!396584 m!1560521))

(assert (=> d!396584 m!1557527))

(assert (=> d!396584 m!1558609))

(declare-fun m!1561443 () Bool)

(assert (=> b!1386904 m!1561443))

(assert (=> b!1386904 m!1560509))

(assert (=> b!1386904 m!1557527))

(assert (=> b!1386904 m!1558615))

(assert (=> b!1386903 m!1557527))

(declare-fun m!1561445 () Bool)

(assert (=> b!1386903 m!1561445))

(assert (=> b!1385193 d!396584))

(declare-fun d!396586 () Bool)

(declare-fun lt!461330 () Int)

(assert (=> d!396586 (>= lt!461330 0)))

(declare-fun e!885976 () Int)

(assert (=> d!396586 (= lt!461330 e!885976)))

(declare-fun c!228328 () Bool)

(assert (=> d!396586 (= c!228328 ((_ is Nil!14059) (_2!7714 (get!4370 lt!460513))))))

(assert (=> d!396586 (= (size!11552 (_2!7714 (get!4370 lt!460513))) lt!461330)))

(declare-fun b!1386906 () Bool)

(assert (=> b!1386906 (= e!885976 0)))

(declare-fun b!1386907 () Bool)

(assert (=> b!1386907 (= e!885976 (+ 1 (size!11552 (t!122150 (_2!7714 (get!4370 lt!460513))))))))

(assert (= (and d!396586 c!228328) b!1386906))

(assert (= (and d!396586 (not c!228328)) b!1386907))

(declare-fun m!1561447 () Bool)

(assert (=> b!1386907 m!1561447))

(assert (=> b!1385042 d!396586))

(assert (=> b!1385042 d!396324))

(declare-fun d!396588 () Bool)

(declare-fun lt!461331 () Int)

(assert (=> d!396588 (>= lt!461331 0)))

(declare-fun e!885977 () Int)

(assert (=> d!396588 (= lt!461331 e!885977)))

(declare-fun c!228329 () Bool)

(assert (=> d!396588 (= c!228329 ((_ is Nil!14059) lt!460299))))

(assert (=> d!396588 (= (size!11552 lt!460299) lt!461331)))

(declare-fun b!1386908 () Bool)

(assert (=> b!1386908 (= e!885977 0)))

(declare-fun b!1386909 () Bool)

(assert (=> b!1386909 (= e!885977 (+ 1 (size!11552 (t!122150 lt!460299))))))

(assert (= (and d!396588 c!228329) b!1386908))

(assert (= (and d!396588 (not c!228329)) b!1386909))

(declare-fun m!1561449 () Bool)

(assert (=> b!1386909 m!1561449))

(assert (=> b!1385042 d!396588))

(declare-fun d!396590 () Bool)

(assert (=> d!396590 (= (isDefined!2227 lt!460513) (not (isEmpty!8507 lt!460513)))))

(declare-fun bs!337139 () Bool)

(assert (= bs!337139 d!396590))

(assert (=> bs!337139 m!1558381))

(assert (=> b!1385040 d!396590))

(declare-fun d!396592 () Bool)

(assert (=> d!396592 (= (list!5446 lt!460405) (list!5450 (c!227730 lt!460405)))))

(declare-fun bs!337140 () Bool)

(assert (= bs!337140 d!396592))

(declare-fun m!1561451 () Bool)

(assert (=> bs!337140 m!1561451))

(assert (=> d!395424 d!396592))

(declare-fun d!396594 () Bool)

(declare-fun c!228330 () Bool)

(assert (=> d!396594 (= c!228330 ((_ is Cons!14061) (list!5445 (singletonSeq!1078 t1!34))))))

(declare-fun e!885978 () List!14125)

(assert (=> d!396594 (= (printList!620 thiss!19762 (list!5445 (singletonSeq!1078 t1!34))) e!885978)))

(declare-fun b!1386910 () Bool)

(assert (=> b!1386910 (= e!885978 (++!3646 (list!5446 (charsOf!1407 (h!19462 (list!5445 (singletonSeq!1078 t1!34))))) (printList!620 thiss!19762 (t!122152 (list!5445 (singletonSeq!1078 t1!34))))))))

(declare-fun b!1386911 () Bool)

(assert (=> b!1386911 (= e!885978 Nil!14059)))

(assert (= (and d!396594 c!228330) b!1386910))

(assert (= (and d!396594 (not c!228330)) b!1386911))

(declare-fun m!1561453 () Bool)

(assert (=> b!1386910 m!1561453))

(assert (=> b!1386910 m!1561453))

(declare-fun m!1561455 () Bool)

(assert (=> b!1386910 m!1561455))

(declare-fun m!1561457 () Bool)

(assert (=> b!1386910 m!1561457))

(assert (=> b!1386910 m!1561455))

(assert (=> b!1386910 m!1561457))

(declare-fun m!1561459 () Bool)

(assert (=> b!1386910 m!1561459))

(assert (=> d!395424 d!396594))

(assert (=> d!395424 d!396310))

(declare-fun d!396596 () Bool)

(declare-fun lt!461338 () BalanceConc!9200)

(assert (=> d!396596 (= (list!5446 lt!461338) (printListTailRec!255 thiss!19762 (dropList!420 (singletonSeq!1078 t1!34) 0) (list!5446 (BalanceConc!9201 Empty!4630))))))

(declare-fun e!885980 () BalanceConc!9200)

(assert (=> d!396596 (= lt!461338 e!885980)))

(declare-fun c!228331 () Bool)

(assert (=> d!396596 (= c!228331 (>= 0 (size!11549 (singletonSeq!1078 t1!34))))))

(declare-fun e!885979 () Bool)

(assert (=> d!396596 e!885979))

(declare-fun res!625709 () Bool)

(assert (=> d!396596 (=> (not res!625709) (not e!885979))))

(assert (=> d!396596 (= res!625709 (>= 0 0))))

(assert (=> d!396596 (= (printTailRec!602 thiss!19762 (singletonSeq!1078 t1!34) 0 (BalanceConc!9201 Empty!4630)) lt!461338)))

(declare-fun b!1386912 () Bool)

(assert (=> b!1386912 (= e!885979 (<= 0 (size!11549 (singletonSeq!1078 t1!34))))))

(declare-fun b!1386913 () Bool)

(assert (=> b!1386913 (= e!885980 (BalanceConc!9201 Empty!4630))))

(declare-fun b!1386914 () Bool)

(assert (=> b!1386914 (= e!885980 (printTailRec!602 thiss!19762 (singletonSeq!1078 t1!34) (+ 0 1) (++!3647 (BalanceConc!9201 Empty!4630) (charsOf!1407 (apply!3518 (singletonSeq!1078 t1!34) 0)))))))

(declare-fun lt!461333 () List!14127)

(assert (=> b!1386914 (= lt!461333 (list!5445 (singletonSeq!1078 t1!34)))))

(declare-fun lt!461336 () Unit!20305)

(assert (=> b!1386914 (= lt!461336 (lemmaDropApply!446 lt!461333 0))))

(assert (=> b!1386914 (= (head!2527 (drop!691 lt!461333 0)) (apply!3522 lt!461333 0))))

(declare-fun lt!461335 () Unit!20305)

(assert (=> b!1386914 (= lt!461335 lt!461336)))

(declare-fun lt!461334 () List!14127)

(assert (=> b!1386914 (= lt!461334 (list!5445 (singletonSeq!1078 t1!34)))))

(declare-fun lt!461337 () Unit!20305)

(assert (=> b!1386914 (= lt!461337 (lemmaDropTail!426 lt!461334 0))))

(assert (=> b!1386914 (= (tail!2013 (drop!691 lt!461334 0)) (drop!691 lt!461334 (+ 0 1)))))

(declare-fun lt!461332 () Unit!20305)

(assert (=> b!1386914 (= lt!461332 lt!461337)))

(assert (= (and d!396596 res!625709) b!1386912))

(assert (= (and d!396596 c!228331) b!1386913))

(assert (= (and d!396596 (not c!228331)) b!1386914))

(declare-fun m!1561461 () Bool)

(assert (=> d!396596 m!1561461))

(assert (=> d!396596 m!1557495))

(declare-fun m!1561463 () Bool)

(assert (=> d!396596 m!1561463))

(assert (=> d!396596 m!1559675))

(assert (=> d!396596 m!1561463))

(assert (=> d!396596 m!1559675))

(declare-fun m!1561465 () Bool)

(assert (=> d!396596 m!1561465))

(assert (=> d!396596 m!1557495))

(declare-fun m!1561467 () Bool)

(assert (=> d!396596 m!1561467))

(assert (=> b!1386912 m!1557495))

(assert (=> b!1386912 m!1561467))

(declare-fun m!1561469 () Bool)

(assert (=> b!1386914 m!1561469))

(assert (=> b!1386914 m!1557495))

(assert (=> b!1386914 m!1557989))

(declare-fun m!1561471 () Bool)

(assert (=> b!1386914 m!1561471))

(declare-fun m!1561473 () Bool)

(assert (=> b!1386914 m!1561473))

(declare-fun m!1561475 () Bool)

(assert (=> b!1386914 m!1561475))

(declare-fun m!1561477 () Bool)

(assert (=> b!1386914 m!1561477))

(assert (=> b!1386914 m!1557495))

(declare-fun m!1561479 () Bool)

(assert (=> b!1386914 m!1561479))

(declare-fun m!1561481 () Bool)

(assert (=> b!1386914 m!1561481))

(declare-fun m!1561483 () Bool)

(assert (=> b!1386914 m!1561483))

(assert (=> b!1386914 m!1557495))

(assert (=> b!1386914 m!1561475))

(assert (=> b!1386914 m!1561477))

(assert (=> b!1386914 m!1561479))

(assert (=> b!1386914 m!1561471))

(declare-fun m!1561485 () Bool)

(assert (=> b!1386914 m!1561485))

(assert (=> b!1386914 m!1561469))

(declare-fun m!1561487 () Bool)

(assert (=> b!1386914 m!1561487))

(declare-fun m!1561489 () Bool)

(assert (=> b!1386914 m!1561489))

(declare-fun m!1561491 () Bool)

(assert (=> b!1386914 m!1561491))

(assert (=> d!395424 d!396596))

(declare-fun d!396598 () Bool)

(declare-fun lt!461339 () Int)

(assert (=> d!396598 (= lt!461339 (size!11552 (list!5446 (_2!7713 lt!460406))))))

(assert (=> d!396598 (= lt!461339 (size!11554 (c!227730 (_2!7713 lt!460406))))))

(assert (=> d!396598 (= (size!11541 (_2!7713 lt!460406)) lt!461339)))

(declare-fun bs!337141 () Bool)

(assert (= bs!337141 d!396598))

(assert (=> bs!337141 m!1557999))

(assert (=> bs!337141 m!1557999))

(declare-fun m!1561493 () Bool)

(assert (=> bs!337141 m!1561493))

(declare-fun m!1561495 () Bool)

(assert (=> bs!337141 m!1561495))

(assert (=> b!1384777 d!396598))

(declare-fun d!396600 () Bool)

(declare-fun lt!461340 () Int)

(assert (=> d!396600 (= lt!461340 (size!11552 (list!5446 lt!460296)))))

(assert (=> d!396600 (= lt!461340 (size!11554 (c!227730 lt!460296)))))

(assert (=> d!396600 (= (size!11541 lt!460296) lt!461340)))

(declare-fun bs!337142 () Bool)

(assert (= bs!337142 d!396600))

(assert (=> bs!337142 m!1557519))

(assert (=> bs!337142 m!1557519))

(assert (=> bs!337142 m!1558573))

(declare-fun m!1561497 () Bool)

(assert (=> bs!337142 m!1561497))

(assert (=> b!1384777 d!396600))

(declare-fun b!1386915 () Bool)

(declare-fun res!625710 () Bool)

(declare-fun e!885982 () Bool)

(assert (=> b!1386915 (=> res!625710 e!885982)))

(assert (=> b!1386915 (= res!625710 (not ((_ is Concat!6275) lt!460539)))))

(declare-fun e!885986 () Bool)

(assert (=> b!1386915 (= e!885986 e!885982)))

(declare-fun b!1386916 () Bool)

(declare-fun e!885984 () Bool)

(declare-fun call!92812 () Bool)

(assert (=> b!1386916 (= e!885984 call!92812)))

(declare-fun bm!92805 () Bool)

(declare-fun call!92810 () Bool)

(assert (=> bm!92805 (= call!92812 call!92810)))

(declare-fun d!396602 () Bool)

(declare-fun res!625714 () Bool)

(declare-fun e!885981 () Bool)

(assert (=> d!396602 (=> res!625714 e!885981)))

(assert (=> d!396602 (= res!625714 ((_ is ElementMatch!3749) lt!460539))))

(assert (=> d!396602 (= (validRegex!1633 lt!460539) e!885981)))

(declare-fun b!1386917 () Bool)

(declare-fun res!625711 () Bool)

(declare-fun e!885987 () Bool)

(assert (=> b!1386917 (=> (not res!625711) (not e!885987))))

(declare-fun call!92811 () Bool)

(assert (=> b!1386917 (= res!625711 call!92811)))

(assert (=> b!1386917 (= e!885986 e!885987)))

(declare-fun bm!92806 () Bool)

(declare-fun c!228333 () Bool)

(declare-fun c!228332 () Bool)

(assert (=> bm!92806 (= call!92810 (validRegex!1633 (ite c!228333 (reg!4078 lt!460539) (ite c!228332 (regTwo!8011 lt!460539) (regTwo!8010 lt!460539)))))))

(declare-fun b!1386918 () Bool)

(assert (=> b!1386918 (= e!885987 call!92812)))

(declare-fun b!1386919 () Bool)

(declare-fun e!885985 () Bool)

(assert (=> b!1386919 (= e!885985 e!885986)))

(assert (=> b!1386919 (= c!228332 ((_ is Union!3749) lt!460539))))

(declare-fun b!1386920 () Bool)

(declare-fun e!885983 () Bool)

(assert (=> b!1386920 (= e!885983 call!92810)))

(declare-fun bm!92807 () Bool)

(assert (=> bm!92807 (= call!92811 (validRegex!1633 (ite c!228332 (regOne!8011 lt!460539) (regOne!8010 lt!460539))))))

(declare-fun b!1386921 () Bool)

(assert (=> b!1386921 (= e!885982 e!885984)))

(declare-fun res!625712 () Bool)

(assert (=> b!1386921 (=> (not res!625712) (not e!885984))))

(assert (=> b!1386921 (= res!625712 call!92811)))

(declare-fun b!1386922 () Bool)

(assert (=> b!1386922 (= e!885985 e!885983)))

(declare-fun res!625713 () Bool)

(assert (=> b!1386922 (= res!625713 (not (nullable!1213 (reg!4078 lt!460539))))))

(assert (=> b!1386922 (=> (not res!625713) (not e!885983))))

(declare-fun b!1386923 () Bool)

(assert (=> b!1386923 (= e!885981 e!885985)))

(assert (=> b!1386923 (= c!228333 ((_ is Star!3749) lt!460539))))

(assert (= (and d!396602 (not res!625714)) b!1386923))

(assert (= (and b!1386923 c!228333) b!1386922))

(assert (= (and b!1386923 (not c!228333)) b!1386919))

(assert (= (and b!1386922 res!625713) b!1386920))

(assert (= (and b!1386919 c!228332) b!1386917))

(assert (= (and b!1386919 (not c!228332)) b!1386915))

(assert (= (and b!1386917 res!625711) b!1386918))

(assert (= (and b!1386915 (not res!625710)) b!1386921))

(assert (= (and b!1386921 res!625712) b!1386916))

(assert (= (or b!1386917 b!1386921) bm!92807))

(assert (= (or b!1386918 b!1386916) bm!92805))

(assert (= (or b!1386920 bm!92805) bm!92806))

(declare-fun m!1561499 () Bool)

(assert (=> bm!92806 m!1561499))

(declare-fun m!1561501 () Bool)

(assert (=> bm!92807 m!1561501))

(declare-fun m!1561503 () Bool)

(assert (=> b!1386922 m!1561503))

(assert (=> bs!336874 d!396602))

(assert (=> b!1385213 d!396434))

(assert (=> b!1385213 d!396436))

(declare-fun d!396604 () Bool)

(declare-fun lt!461341 () Bool)

(assert (=> d!396604 (= lt!461341 (select (content!2060 rules!2550) (rule!4194 (_1!7714 (get!4370 lt!460513)))))))

(declare-fun e!885988 () Bool)

(assert (=> d!396604 (= lt!461341 e!885988)))

(declare-fun res!625715 () Bool)

(assert (=> d!396604 (=> (not res!625715) (not e!885988))))

(assert (=> d!396604 (= res!625715 ((_ is Cons!14060) rules!2550))))

(assert (=> d!396604 (= (contains!2684 rules!2550 (rule!4194 (_1!7714 (get!4370 lt!460513)))) lt!461341)))

(declare-fun b!1386924 () Bool)

(declare-fun e!885989 () Bool)

(assert (=> b!1386924 (= e!885988 e!885989)))

(declare-fun res!625716 () Bool)

(assert (=> b!1386924 (=> res!625716 e!885989)))

(assert (=> b!1386924 (= res!625716 (= (h!19461 rules!2550) (rule!4194 (_1!7714 (get!4370 lt!460513)))))))

(declare-fun b!1386925 () Bool)

(assert (=> b!1386925 (= e!885989 (contains!2684 (t!122151 rules!2550) (rule!4194 (_1!7714 (get!4370 lt!460513)))))))

(assert (= (and d!396604 res!625715) b!1386924))

(assert (= (and b!1386924 (not res!625716)) b!1386925))

(assert (=> d!396604 m!1557837))

(declare-fun m!1561505 () Bool)

(assert (=> d!396604 m!1561505))

(declare-fun m!1561507 () Bool)

(assert (=> b!1386925 m!1561507))

(assert (=> b!1385048 d!396604))

(assert (=> b!1385048 d!396324))

(declare-fun b!1386926 () Bool)

(declare-fun e!885993 () Bool)

(declare-fun e!885990 () Bool)

(assert (=> b!1386926 (= e!885993 e!885990)))

(declare-fun res!625719 () Bool)

(assert (=> b!1386926 (=> res!625719 e!885990)))

(declare-fun call!92813 () Bool)

(assert (=> b!1386926 (= res!625719 call!92813)))

(declare-fun b!1386927 () Bool)

(declare-fun e!885995 () Bool)

(assert (=> b!1386927 (= e!885995 (matchR!1740 (derivativeStep!971 (derivativeStep!971 (regex!2435 (rule!4194 t2!34)) (head!2521 lt!460299)) (head!2521 (tail!2010 lt!460299))) (tail!2010 (tail!2010 lt!460299))))))

(declare-fun b!1386928 () Bool)

(declare-fun res!625721 () Bool)

(assert (=> b!1386928 (=> res!625721 e!885990)))

(assert (=> b!1386928 (= res!625721 (not (isEmpty!8502 (tail!2010 (tail!2010 lt!460299)))))))

(declare-fun b!1386929 () Bool)

(declare-fun e!885994 () Bool)

(declare-fun lt!461342 () Bool)

(assert (=> b!1386929 (= e!885994 (not lt!461342))))

(declare-fun b!1386930 () Bool)

(assert (=> b!1386930 (= e!885990 (not (= (head!2521 (tail!2010 lt!460299)) (c!227731 (derivativeStep!971 (regex!2435 (rule!4194 t2!34)) (head!2521 lt!460299))))))))

(declare-fun b!1386931 () Bool)

(declare-fun e!885996 () Bool)

(assert (=> b!1386931 (= e!885996 e!885993)))

(declare-fun res!625723 () Bool)

(assert (=> b!1386931 (=> (not res!625723) (not e!885993))))

(assert (=> b!1386931 (= res!625723 (not lt!461342))))

(declare-fun b!1386932 () Bool)

(declare-fun res!625720 () Bool)

(assert (=> b!1386932 (=> res!625720 e!885996)))

(declare-fun e!885992 () Bool)

(assert (=> b!1386932 (= res!625720 e!885992)))

(declare-fun res!625717 () Bool)

(assert (=> b!1386932 (=> (not res!625717) (not e!885992))))

(assert (=> b!1386932 (= res!625717 lt!461342)))

(declare-fun b!1386933 () Bool)

(declare-fun e!885991 () Bool)

(assert (=> b!1386933 (= e!885991 (= lt!461342 call!92813))))

(declare-fun bm!92808 () Bool)

(assert (=> bm!92808 (= call!92813 (isEmpty!8502 (tail!2010 lt!460299)))))

(declare-fun d!396606 () Bool)

(assert (=> d!396606 e!885991))

(declare-fun c!228334 () Bool)

(assert (=> d!396606 (= c!228334 ((_ is EmptyExpr!3749) (derivativeStep!971 (regex!2435 (rule!4194 t2!34)) (head!2521 lt!460299))))))

(assert (=> d!396606 (= lt!461342 e!885995)))

(declare-fun c!228335 () Bool)

(assert (=> d!396606 (= c!228335 (isEmpty!8502 (tail!2010 lt!460299)))))

(assert (=> d!396606 (validRegex!1633 (derivativeStep!971 (regex!2435 (rule!4194 t2!34)) (head!2521 lt!460299)))))

(assert (=> d!396606 (= (matchR!1740 (derivativeStep!971 (regex!2435 (rule!4194 t2!34)) (head!2521 lt!460299)) (tail!2010 lt!460299)) lt!461342)))

(declare-fun b!1386934 () Bool)

(declare-fun res!625724 () Bool)

(assert (=> b!1386934 (=> res!625724 e!885996)))

(assert (=> b!1386934 (= res!625724 (not ((_ is ElementMatch!3749) (derivativeStep!971 (regex!2435 (rule!4194 t2!34)) (head!2521 lt!460299)))))))

(assert (=> b!1386934 (= e!885994 e!885996)))

(declare-fun b!1386935 () Bool)

(assert (=> b!1386935 (= e!885991 e!885994)))

(declare-fun c!228336 () Bool)

(assert (=> b!1386935 (= c!228336 ((_ is EmptyLang!3749) (derivativeStep!971 (regex!2435 (rule!4194 t2!34)) (head!2521 lt!460299))))))

(declare-fun b!1386936 () Bool)

(assert (=> b!1386936 (= e!885995 (nullable!1213 (derivativeStep!971 (regex!2435 (rule!4194 t2!34)) (head!2521 lt!460299))))))

(declare-fun b!1386937 () Bool)

(declare-fun res!625718 () Bool)

(assert (=> b!1386937 (=> (not res!625718) (not e!885992))))

(assert (=> b!1386937 (= res!625718 (isEmpty!8502 (tail!2010 (tail!2010 lt!460299))))))

(declare-fun b!1386938 () Bool)

(declare-fun res!625722 () Bool)

(assert (=> b!1386938 (=> (not res!625722) (not e!885992))))

(assert (=> b!1386938 (= res!625722 (not call!92813))))

(declare-fun b!1386939 () Bool)

(assert (=> b!1386939 (= e!885992 (= (head!2521 (tail!2010 lt!460299)) (c!227731 (derivativeStep!971 (regex!2435 (rule!4194 t2!34)) (head!2521 lt!460299)))))))

(assert (= (and d!396606 c!228335) b!1386936))

(assert (= (and d!396606 (not c!228335)) b!1386927))

(assert (= (and d!396606 c!228334) b!1386933))

(assert (= (and d!396606 (not c!228334)) b!1386935))

(assert (= (and b!1386935 c!228336) b!1386929))

(assert (= (and b!1386935 (not c!228336)) b!1386934))

(assert (= (and b!1386934 (not res!625724)) b!1386932))

(assert (= (and b!1386932 res!625717) b!1386938))

(assert (= (and b!1386938 res!625722) b!1386937))

(assert (= (and b!1386937 res!625718) b!1386939))

(assert (= (and b!1386932 (not res!625720)) b!1386931))

(assert (= (and b!1386931 res!625723) b!1386926))

(assert (= (and b!1386926 (not res!625719)) b!1386928))

(assert (= (and b!1386928 (not res!625721)) b!1386930))

(assert (= (or b!1386933 b!1386926 b!1386938) bm!92808))

(assert (=> bm!92808 m!1558523))

(assert (=> bm!92808 m!1558525))

(assert (=> b!1386937 m!1558523))

(declare-fun m!1561509 () Bool)

(assert (=> b!1386937 m!1561509))

(assert (=> b!1386937 m!1561509))

(declare-fun m!1561511 () Bool)

(assert (=> b!1386937 m!1561511))

(assert (=> b!1386927 m!1558523))

(declare-fun m!1561513 () Bool)

(assert (=> b!1386927 m!1561513))

(assert (=> b!1386927 m!1558529))

(assert (=> b!1386927 m!1561513))

(declare-fun m!1561515 () Bool)

(assert (=> b!1386927 m!1561515))

(assert (=> b!1386927 m!1558523))

(assert (=> b!1386927 m!1561509))

(assert (=> b!1386927 m!1561515))

(assert (=> b!1386927 m!1561509))

(declare-fun m!1561517 () Bool)

(assert (=> b!1386927 m!1561517))

(assert (=> b!1386936 m!1558529))

(declare-fun m!1561519 () Bool)

(assert (=> b!1386936 m!1561519))

(assert (=> b!1386928 m!1558523))

(assert (=> b!1386928 m!1561509))

(assert (=> b!1386928 m!1561509))

(assert (=> b!1386928 m!1561511))

(assert (=> b!1386930 m!1558523))

(assert (=> b!1386930 m!1561513))

(assert (=> b!1386939 m!1558523))

(assert (=> b!1386939 m!1561513))

(assert (=> d!396606 m!1558523))

(assert (=> d!396606 m!1558525))

(assert (=> d!396606 m!1558529))

(declare-fun m!1561521 () Bool)

(assert (=> d!396606 m!1561521))

(assert (=> b!1385120 d!396606))

(declare-fun b!1386940 () Bool)

(declare-fun c!228337 () Bool)

(assert (=> b!1386940 (= c!228337 ((_ is Union!3749) (regex!2435 (rule!4194 t2!34))))))

(declare-fun e!885999 () Regex!3749)

(declare-fun e!885997 () Regex!3749)

(assert (=> b!1386940 (= e!885999 e!885997)))

(declare-fun bm!92809 () Bool)

(declare-fun call!92815 () Regex!3749)

(declare-fun call!92814 () Regex!3749)

(assert (=> bm!92809 (= call!92815 call!92814)))

(declare-fun e!885998 () Regex!3749)

(declare-fun call!92816 () Regex!3749)

(declare-fun b!1386941 () Bool)

(assert (=> b!1386941 (= e!885998 (Union!3749 (Concat!6275 call!92816 (regTwo!8010 (regex!2435 (rule!4194 t2!34)))) call!92815))))

(declare-fun b!1386942 () Bool)

(assert (=> b!1386942 (= e!885998 (Union!3749 (Concat!6275 call!92815 (regTwo!8010 (regex!2435 (rule!4194 t2!34)))) EmptyLang!3749))))

(declare-fun b!1386943 () Bool)

(declare-fun e!886001 () Regex!3749)

(assert (=> b!1386943 (= e!886001 e!885999)))

(declare-fun c!228338 () Bool)

(assert (=> b!1386943 (= c!228338 ((_ is ElementMatch!3749) (regex!2435 (rule!4194 t2!34))))))

(declare-fun b!1386944 () Bool)

(declare-fun call!92817 () Regex!3749)

(assert (=> b!1386944 (= e!885997 (Union!3749 call!92816 call!92817))))

(declare-fun b!1386946 () Bool)

(declare-fun e!886000 () Regex!3749)

(assert (=> b!1386946 (= e!885997 e!886000)))

(declare-fun c!228341 () Bool)

(assert (=> b!1386946 (= c!228341 ((_ is Star!3749) (regex!2435 (rule!4194 t2!34))))))

(declare-fun bm!92810 () Bool)

(declare-fun c!228339 () Bool)

(assert (=> bm!92810 (= call!92817 (derivativeStep!971 (ite c!228337 (regTwo!8011 (regex!2435 (rule!4194 t2!34))) (ite c!228341 (reg!4078 (regex!2435 (rule!4194 t2!34))) (ite c!228339 (regTwo!8010 (regex!2435 (rule!4194 t2!34))) (regOne!8010 (regex!2435 (rule!4194 t2!34)))))) (head!2521 lt!460299)))))

(declare-fun bm!92811 () Bool)

(assert (=> bm!92811 (= call!92816 (derivativeStep!971 (ite c!228337 (regOne!8011 (regex!2435 (rule!4194 t2!34))) (regOne!8010 (regex!2435 (rule!4194 t2!34)))) (head!2521 lt!460299)))))

(declare-fun bm!92812 () Bool)

(assert (=> bm!92812 (= call!92814 call!92817)))

(declare-fun b!1386947 () Bool)

(assert (=> b!1386947 (= e!886001 EmptyLang!3749)))

(declare-fun b!1386948 () Bool)

(assert (=> b!1386948 (= e!886000 (Concat!6275 call!92814 (regex!2435 (rule!4194 t2!34))))))

(declare-fun b!1386949 () Bool)

(assert (=> b!1386949 (= c!228339 (nullable!1213 (regOne!8010 (regex!2435 (rule!4194 t2!34)))))))

(assert (=> b!1386949 (= e!886000 e!885998)))

(declare-fun b!1386945 () Bool)

(assert (=> b!1386945 (= e!885999 (ite (= (head!2521 lt!460299) (c!227731 (regex!2435 (rule!4194 t2!34)))) EmptyExpr!3749 EmptyLang!3749))))

(declare-fun d!396608 () Bool)

(declare-fun lt!461343 () Regex!3749)

(assert (=> d!396608 (validRegex!1633 lt!461343)))

(assert (=> d!396608 (= lt!461343 e!886001)))

(declare-fun c!228340 () Bool)

(assert (=> d!396608 (= c!228340 (or ((_ is EmptyExpr!3749) (regex!2435 (rule!4194 t2!34))) ((_ is EmptyLang!3749) (regex!2435 (rule!4194 t2!34)))))))

(assert (=> d!396608 (validRegex!1633 (regex!2435 (rule!4194 t2!34)))))

(assert (=> d!396608 (= (derivativeStep!971 (regex!2435 (rule!4194 t2!34)) (head!2521 lt!460299)) lt!461343)))

(assert (= (and d!396608 c!228340) b!1386947))

(assert (= (and d!396608 (not c!228340)) b!1386943))

(assert (= (and b!1386943 c!228338) b!1386945))

(assert (= (and b!1386943 (not c!228338)) b!1386940))

(assert (= (and b!1386940 c!228337) b!1386944))

(assert (= (and b!1386940 (not c!228337)) b!1386946))

(assert (= (and b!1386946 c!228341) b!1386948))

(assert (= (and b!1386946 (not c!228341)) b!1386949))

(assert (= (and b!1386949 c!228339) b!1386941))

(assert (= (and b!1386949 (not c!228339)) b!1386942))

(assert (= (or b!1386941 b!1386942) bm!92809))

(assert (= (or b!1386948 bm!92809) bm!92812))

(assert (= (or b!1386944 b!1386941) bm!92811))

(assert (= (or b!1386944 bm!92812) bm!92810))

(assert (=> bm!92810 m!1558527))

(declare-fun m!1561523 () Bool)

(assert (=> bm!92810 m!1561523))

(assert (=> bm!92811 m!1558527))

(declare-fun m!1561525 () Bool)

(assert (=> bm!92811 m!1561525))

(declare-fun m!1561527 () Bool)

(assert (=> b!1386949 m!1561527))

(declare-fun m!1561529 () Bool)

(assert (=> d!396608 m!1561529))

(assert (=> d!396608 m!1558535))

(assert (=> b!1385120 d!396608))

(assert (=> b!1385120 d!396032))

(assert (=> b!1385120 d!395994))

(declare-fun d!396610 () Bool)

(assert (=> d!396610 (= (inv!18395 (tag!2697 (h!19461 (t!122151 rules!2550)))) (= (mod (str.len (value!79029 (tag!2697 (h!19461 (t!122151 rules!2550))))) 2) 0))))

(assert (=> b!1385247 d!396610))

(declare-fun d!396612 () Bool)

(declare-fun res!625725 () Bool)

(declare-fun e!886002 () Bool)

(assert (=> d!396612 (=> (not res!625725) (not e!886002))))

(assert (=> d!396612 (= res!625725 (semiInverseModEq!942 (toChars!3577 (transformation!2435 (h!19461 (t!122151 rules!2550)))) (toValue!3718 (transformation!2435 (h!19461 (t!122151 rules!2550))))))))

(assert (=> d!396612 (= (inv!18398 (transformation!2435 (h!19461 (t!122151 rules!2550)))) e!886002)))

(declare-fun b!1386950 () Bool)

(assert (=> b!1386950 (= e!886002 (equivClasses!901 (toChars!3577 (transformation!2435 (h!19461 (t!122151 rules!2550)))) (toValue!3718 (transformation!2435 (h!19461 (t!122151 rules!2550))))))))

(assert (= (and d!396612 res!625725) b!1386950))

(declare-fun m!1561531 () Bool)

(assert (=> d!396612 m!1561531))

(declare-fun m!1561533 () Bool)

(assert (=> b!1386950 m!1561533))

(assert (=> b!1385247 d!396612))

(declare-fun b!1386951 () Bool)

(declare-fun e!886004 () Bool)

(declare-fun e!886005 () Bool)

(assert (=> b!1386951 (= e!886004 e!886005)))

(declare-fun res!625726 () Bool)

(assert (=> b!1386951 (=> (not res!625726) (not e!886005))))

(declare-fun lt!461348 () Option!2694)

(assert (=> b!1386951 (= res!625726 (isDefined!2227 lt!461348))))

(declare-fun b!1386952 () Bool)

(declare-fun e!886003 () Option!2694)

(declare-fun call!92818 () Option!2694)

(assert (=> b!1386952 (= e!886003 call!92818)))

(declare-fun b!1386953 () Bool)

(declare-fun res!625729 () Bool)

(assert (=> b!1386953 (=> (not res!625729) (not e!886005))))

(assert (=> b!1386953 (= res!625729 (< (size!11552 (_2!7714 (get!4370 lt!461348))) (size!11552 lt!460285)))))

(declare-fun d!396614 () Bool)

(assert (=> d!396614 e!886004))

(declare-fun res!625732 () Bool)

(assert (=> d!396614 (=> res!625732 e!886004)))

(assert (=> d!396614 (= res!625732 (isEmpty!8507 lt!461348))))

(assert (=> d!396614 (= lt!461348 e!886003)))

(declare-fun c!228342 () Bool)

(assert (=> d!396614 (= c!228342 (and ((_ is Cons!14060) (t!122151 rules!2550)) ((_ is Nil!14060) (t!122151 (t!122151 rules!2550)))))))

(declare-fun lt!461346 () Unit!20305)

(declare-fun lt!461345 () Unit!20305)

(assert (=> d!396614 (= lt!461346 lt!461345)))

(assert (=> d!396614 (isPrefix!1140 lt!460285 lt!460285)))

(assert (=> d!396614 (= lt!461345 (lemmaIsPrefixRefl!799 lt!460285 lt!460285))))

(assert (=> d!396614 (rulesValidInductive!782 thiss!19762 (t!122151 rules!2550))))

(assert (=> d!396614 (= (maxPrefix!1104 thiss!19762 (t!122151 rules!2550) lt!460285) lt!461348)))

(declare-fun b!1386954 () Bool)

(declare-fun res!625728 () Bool)

(assert (=> b!1386954 (=> (not res!625728) (not e!886005))))

(assert (=> b!1386954 (= res!625728 (= (++!3646 (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!461348)))) (_2!7714 (get!4370 lt!461348))) lt!460285))))

(declare-fun b!1386955 () Bool)

(declare-fun lt!461347 () Option!2694)

(declare-fun lt!461344 () Option!2694)

(assert (=> b!1386955 (= e!886003 (ite (and ((_ is None!2693) lt!461347) ((_ is None!2693) lt!461344)) None!2693 (ite ((_ is None!2693) lt!461344) lt!461347 (ite ((_ is None!2693) lt!461347) lt!461344 (ite (>= (size!11542 (_1!7714 (v!21547 lt!461347))) (size!11542 (_1!7714 (v!21547 lt!461344)))) lt!461347 lt!461344)))))))

(assert (=> b!1386955 (= lt!461347 call!92818)))

(assert (=> b!1386955 (= lt!461344 (maxPrefix!1104 thiss!19762 (t!122151 (t!122151 rules!2550)) lt!460285))))

(declare-fun b!1386956 () Bool)

(declare-fun res!625727 () Bool)

(assert (=> b!1386956 (=> (not res!625727) (not e!886005))))

(assert (=> b!1386956 (= res!625727 (= (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!461348)))) (originalCharacters!3297 (_1!7714 (get!4370 lt!461348)))))))

(declare-fun b!1386957 () Bool)

(declare-fun res!625730 () Bool)

(assert (=> b!1386957 (=> (not res!625730) (not e!886005))))

(assert (=> b!1386957 (= res!625730 (= (value!79030 (_1!7714 (get!4370 lt!461348))) (apply!3519 (transformation!2435 (rule!4194 (_1!7714 (get!4370 lt!461348)))) (seqFromList!1643 (originalCharacters!3297 (_1!7714 (get!4370 lt!461348)))))))))

(declare-fun b!1386958 () Bool)

(declare-fun res!625731 () Bool)

(assert (=> b!1386958 (=> (not res!625731) (not e!886005))))

(assert (=> b!1386958 (= res!625731 (matchR!1740 (regex!2435 (rule!4194 (_1!7714 (get!4370 lt!461348)))) (list!5446 (charsOf!1407 (_1!7714 (get!4370 lt!461348))))))))

(declare-fun bm!92813 () Bool)

(assert (=> bm!92813 (= call!92818 (maxPrefixOneRule!625 thiss!19762 (h!19461 (t!122151 rules!2550)) lt!460285))))

(declare-fun b!1386959 () Bool)

(assert (=> b!1386959 (= e!886005 (contains!2684 (t!122151 rules!2550) (rule!4194 (_1!7714 (get!4370 lt!461348)))))))

(assert (= (and d!396614 c!228342) b!1386952))

(assert (= (and d!396614 (not c!228342)) b!1386955))

(assert (= (or b!1386952 b!1386955) bm!92813))

(assert (= (and d!396614 (not res!625732)) b!1386951))

(assert (= (and b!1386951 res!625726) b!1386956))

(assert (= (and b!1386956 res!625727) b!1386953))

(assert (= (and b!1386953 res!625729) b!1386954))

(assert (= (and b!1386954 res!625728) b!1386957))

(assert (= (and b!1386957 res!625730) b!1386958))

(assert (= (and b!1386958 res!625731) b!1386959))

(declare-fun m!1561535 () Bool)

(assert (=> b!1386953 m!1561535))

(declare-fun m!1561537 () Bool)

(assert (=> b!1386953 m!1561537))

(assert (=> b!1386953 m!1558431))

(assert (=> b!1386957 m!1561535))

(declare-fun m!1561539 () Bool)

(assert (=> b!1386957 m!1561539))

(assert (=> b!1386957 m!1561539))

(declare-fun m!1561541 () Bool)

(assert (=> b!1386957 m!1561541))

(assert (=> b!1386956 m!1561535))

(declare-fun m!1561543 () Bool)

(assert (=> b!1386956 m!1561543))

(assert (=> b!1386956 m!1561543))

(declare-fun m!1561545 () Bool)

(assert (=> b!1386956 m!1561545))

(declare-fun m!1561547 () Bool)

(assert (=> bm!92813 m!1561547))

(declare-fun m!1561549 () Bool)

(assert (=> b!1386955 m!1561549))

(declare-fun m!1561551 () Bool)

(assert (=> b!1386951 m!1561551))

(assert (=> b!1386958 m!1561535))

(assert (=> b!1386958 m!1561543))

(assert (=> b!1386958 m!1561543))

(assert (=> b!1386958 m!1561545))

(assert (=> b!1386958 m!1561545))

(declare-fun m!1561553 () Bool)

(assert (=> b!1386958 m!1561553))

(declare-fun m!1561555 () Bool)

(assert (=> d!396614 m!1561555))

(assert (=> d!396614 m!1558471))

(assert (=> d!396614 m!1558473))

(assert (=> d!396614 m!1559657))

(assert (=> b!1386959 m!1561535))

(declare-fun m!1561557 () Bool)

(assert (=> b!1386959 m!1561557))

(assert (=> b!1386954 m!1561535))

(assert (=> b!1386954 m!1561543))

(assert (=> b!1386954 m!1561543))

(assert (=> b!1386954 m!1561545))

(assert (=> b!1386954 m!1561545))

(declare-fun m!1561559 () Bool)

(assert (=> b!1386954 m!1561559))

(assert (=> b!1385082 d!396614))

(declare-fun d!396616 () Bool)

(declare-fun lt!461349 () Int)

(assert (=> d!396616 (>= lt!461349 0)))

(declare-fun e!886006 () Int)

(assert (=> d!396616 (= lt!461349 e!886006)))

(declare-fun c!228343 () Bool)

(assert (=> d!396616 (= c!228343 ((_ is Nil!14059) (originalCharacters!3297 t1!34)))))

(assert (=> d!396616 (= (size!11552 (originalCharacters!3297 t1!34)) lt!461349)))

(declare-fun b!1386960 () Bool)

(assert (=> b!1386960 (= e!886006 0)))

(declare-fun b!1386961 () Bool)

(assert (=> b!1386961 (= e!886006 (+ 1 (size!11552 (t!122150 (originalCharacters!3297 t1!34)))))))

(assert (= (and d!396616 c!228343) b!1386960))

(assert (= (and d!396616 (not c!228343)) b!1386961))

(declare-fun m!1561561 () Bool)

(assert (=> b!1386961 m!1561561))

(assert (=> b!1385145 d!396616))

(declare-fun d!396618 () Bool)

(assert (=> d!396618 (= (isEmpty!8502 lt!460300) ((_ is Nil!14059) lt!460300))))

(assert (=> bm!92624 d!396618))

(declare-fun b!1386970 () Bool)

(declare-fun e!886013 () Bool)

(declare-fun e!886014 () Bool)

(assert (=> b!1386970 (= e!886013 e!886014)))

(declare-fun res!625738 () Bool)

(declare-fun rulesUseDisjointChars!190 (Rule!4670 Rule!4670) Bool)

(assert (=> b!1386970 (= res!625738 (rulesUseDisjointChars!190 (h!19461 rules!2550) (h!19461 rules!2550)))))

(assert (=> b!1386970 (=> (not res!625738) (not e!886014))))

(declare-fun b!1386971 () Bool)

(declare-fun e!886015 () Bool)

(assert (=> b!1386971 (= e!886013 e!886015)))

(declare-fun res!625737 () Bool)

(assert (=> b!1386971 (= res!625737 (not ((_ is Cons!14060) rules!2550)))))

(assert (=> b!1386971 (=> res!625737 e!886015)))

(declare-fun d!396620 () Bool)

(declare-fun c!228346 () Bool)

(assert (=> d!396620 (= c!228346 (and ((_ is Cons!14060) rules!2550) (not (= (isSeparator!2435 (h!19461 rules!2550)) (isSeparator!2435 (h!19461 rules!2550))))))))

(assert (=> d!396620 (= (ruleDisjointCharsFromAllFromOtherType!383 (h!19461 rules!2550) rules!2550) e!886013)))

(declare-fun bm!92816 () Bool)

(declare-fun call!92821 () Bool)

(assert (=> bm!92816 (= call!92821 (ruleDisjointCharsFromAllFromOtherType!383 (h!19461 rules!2550) (t!122151 rules!2550)))))

(declare-fun b!1386972 () Bool)

(assert (=> b!1386972 (= e!886015 call!92821)))

(declare-fun b!1386973 () Bool)

(assert (=> b!1386973 (= e!886014 call!92821)))

(assert (= (and d!396620 c!228346) b!1386970))

(assert (= (and d!396620 (not c!228346)) b!1386971))

(assert (= (and b!1386970 res!625738) b!1386973))

(assert (= (and b!1386971 (not res!625737)) b!1386972))

(assert (= (or b!1386973 b!1386972) bm!92816))

(declare-fun m!1561563 () Bool)

(assert (=> b!1386970 m!1561563))

(declare-fun m!1561565 () Bool)

(assert (=> bm!92816 m!1561565))

(assert (=> b!1384743 d!396620))

(assert (=> d!395364 d!396618))

(assert (=> d!395364 d!396476))

(declare-fun d!396622 () Bool)

(declare-fun lt!461350 () Bool)

(assert (=> d!396622 (= lt!461350 (isEmpty!8506 (list!5445 (_1!7713 lt!460396))))))

(assert (=> d!396622 (= lt!461350 (isEmpty!8510 (c!227732 (_1!7713 lt!460396))))))

(assert (=> d!396622 (= (isEmpty!8504 (_1!7713 lt!460396)) lt!461350)))

(declare-fun bs!337143 () Bool)

(assert (= bs!337143 d!396622))

(assert (=> bs!337143 m!1557933))

(assert (=> bs!337143 m!1557933))

(declare-fun m!1561567 () Bool)

(assert (=> bs!337143 m!1561567))

(declare-fun m!1561569 () Bool)

(assert (=> bs!337143 m!1561569))

(assert (=> b!1384718 d!396622))

(declare-fun d!396624 () Bool)

(declare-fun res!625739 () Bool)

(declare-fun e!886016 () Bool)

(assert (=> d!396624 (=> res!625739 e!886016)))

(assert (=> d!396624 (= res!625739 ((_ is Nil!14060) rules!2550))))

(assert (=> d!396624 (= (forall!3423 rules!2550 lambda!59638) e!886016)))

(declare-fun b!1386974 () Bool)

(declare-fun e!886017 () Bool)

(assert (=> b!1386974 (= e!886016 e!886017)))

(declare-fun res!625740 () Bool)

(assert (=> b!1386974 (=> (not res!625740) (not e!886017))))

(assert (=> b!1386974 (= res!625740 (dynLambda!6429 lambda!59638 (h!19461 rules!2550)))))

(declare-fun b!1386975 () Bool)

(assert (=> b!1386975 (= e!886017 (forall!3423 (t!122151 rules!2550) lambda!59638))))

(assert (= (and d!396624 (not res!625739)) b!1386974))

(assert (= (and b!1386974 res!625740) b!1386975))

(declare-fun b_lambda!43001 () Bool)

(assert (=> (not b_lambda!43001) (not b!1386974)))

(declare-fun m!1561571 () Bool)

(assert (=> b!1386974 m!1561571))

(declare-fun m!1561573 () Bool)

(assert (=> b!1386975 m!1561573))

(assert (=> d!395598 d!396624))

(declare-fun d!396626 () Bool)

(declare-fun lt!461353 () Int)

(assert (=> d!396626 (>= lt!461353 0)))

(declare-fun e!886020 () Int)

(assert (=> d!396626 (= lt!461353 e!886020)))

(declare-fun c!228349 () Bool)

(assert (=> d!396626 (= c!228349 ((_ is Nil!14062) lt!460342))))

(assert (=> d!396626 (= (size!11547 lt!460342) lt!461353)))

(declare-fun b!1386980 () Bool)

(assert (=> b!1386980 (= e!886020 0)))

(declare-fun b!1386981 () Bool)

(assert (=> b!1386981 (= e!886020 (+ 1 (size!11547 (t!122153 lt!460342))))))

(assert (= (and d!396626 c!228349) b!1386980))

(assert (= (and d!396626 (not c!228349)) b!1386981))

(declare-fun m!1561575 () Bool)

(assert (=> b!1386981 m!1561575))

(assert (=> d!395340 d!396626))

(declare-fun d!396628 () Bool)

(declare-fun lt!461356 () Int)

(assert (=> d!396628 (>= lt!461356 0)))

(declare-fun e!886023 () Int)

(assert (=> d!396628 (= lt!461356 e!886023)))

(declare-fun c!228352 () Bool)

(assert (=> d!396628 (= c!228352 ((_ is Nil!14060) rules!2550))))

(assert (=> d!396628 (= (size!11548 rules!2550) lt!461356)))

(declare-fun b!1386986 () Bool)

(assert (=> b!1386986 (= e!886023 0)))

(declare-fun b!1386987 () Bool)

(assert (=> b!1386987 (= e!886023 (+ 1 (size!11548 (t!122151 rules!2550))))))

(assert (= (and d!396628 c!228352) b!1386986))

(assert (= (and d!396628 (not c!228352)) b!1386987))

(assert (=> b!1386987 m!1560547))

(assert (=> d!395340 d!396628))

(declare-fun d!396630 () Bool)

(assert (=> d!396630 (= (isEmpty!8502 (originalCharacters!3297 t2!34)) ((_ is Nil!14059) (originalCharacters!3297 t2!34)))))

(assert (=> d!395580 d!396630))

(assert (=> b!1385206 d!395596))

(declare-fun bs!337144 () Bool)

(declare-fun d!396632 () Bool)

(assert (= bs!337144 (and d!396632 d!396440)))

(declare-fun lambda!59713 () Int)

(assert (=> bs!337144 (= (= (toValue!3718 (transformation!2435 (h!19461 rules!2550))) (toValue!3718 (transformation!2435 (rule!4194 t2!34)))) (= lambda!59713 lambda!59698))))

(declare-fun bs!337145 () Bool)

(assert (= bs!337145 (and d!396632 d!396512)))

(assert (=> bs!337145 (= (= (toValue!3718 (transformation!2435 (h!19461 rules!2550))) (toValue!3718 (transformation!2435 (rule!4194 t1!34)))) (= lambda!59713 lambda!59712))))

(assert (=> d!396632 true))

(assert (=> d!396632 (< (dynLambda!6444 order!8599 (toValue!3718 (transformation!2435 (h!19461 rules!2550)))) (dynLambda!6445 order!8601 lambda!59713))))

(assert (=> d!396632 (= (equivClasses!901 (toChars!3577 (transformation!2435 (h!19461 rules!2550))) (toValue!3718 (transformation!2435 (h!19461 rules!2550)))) (Forall2!449 lambda!59713))))

(declare-fun bs!337146 () Bool)

(assert (= bs!337146 d!396632))

(declare-fun m!1561577 () Bool)

(assert (=> bs!337146 m!1561577))

(assert (=> b!1385156 d!396632))

(declare-fun b!1386989 () Bool)

(declare-fun e!886024 () Bool)

(declare-fun tp!396547 () Bool)

(declare-fun tp!396549 () Bool)

(assert (=> b!1386989 (= e!886024 (and tp!396547 tp!396549))))

(declare-fun b!1386990 () Bool)

(declare-fun tp!396550 () Bool)

(assert (=> b!1386990 (= e!886024 tp!396550)))

(declare-fun b!1386991 () Bool)

(declare-fun tp!396551 () Bool)

(declare-fun tp!396548 () Bool)

(assert (=> b!1386991 (= e!886024 (and tp!396551 tp!396548))))

(declare-fun b!1386988 () Bool)

(assert (=> b!1386988 (= e!886024 tp_is_empty!6775)))

(assert (=> b!1385257 (= tp!396432 e!886024)))

(assert (= (and b!1385257 ((_ is ElementMatch!3749) (regOne!8011 (regex!2435 (rule!4194 t2!34))))) b!1386988))

(assert (= (and b!1385257 ((_ is Concat!6275) (regOne!8011 (regex!2435 (rule!4194 t2!34))))) b!1386989))

(assert (= (and b!1385257 ((_ is Star!3749) (regOne!8011 (regex!2435 (rule!4194 t2!34))))) b!1386990))

(assert (= (and b!1385257 ((_ is Union!3749) (regOne!8011 (regex!2435 (rule!4194 t2!34))))) b!1386991))

(declare-fun b!1386993 () Bool)

(declare-fun e!886025 () Bool)

(declare-fun tp!396552 () Bool)

(declare-fun tp!396554 () Bool)

(assert (=> b!1386993 (= e!886025 (and tp!396552 tp!396554))))

(declare-fun b!1386994 () Bool)

(declare-fun tp!396555 () Bool)

(assert (=> b!1386994 (= e!886025 tp!396555)))

(declare-fun b!1386995 () Bool)

(declare-fun tp!396556 () Bool)

(declare-fun tp!396553 () Bool)

(assert (=> b!1386995 (= e!886025 (and tp!396556 tp!396553))))

(declare-fun b!1386992 () Bool)

(assert (=> b!1386992 (= e!886025 tp_is_empty!6775)))

(assert (=> b!1385257 (= tp!396429 e!886025)))

(assert (= (and b!1385257 ((_ is ElementMatch!3749) (regTwo!8011 (regex!2435 (rule!4194 t2!34))))) b!1386992))

(assert (= (and b!1385257 ((_ is Concat!6275) (regTwo!8011 (regex!2435 (rule!4194 t2!34))))) b!1386993))

(assert (= (and b!1385257 ((_ is Star!3749) (regTwo!8011 (regex!2435 (rule!4194 t2!34))))) b!1386994))

(assert (= (and b!1385257 ((_ is Union!3749) (regTwo!8011 (regex!2435 (rule!4194 t2!34))))) b!1386995))

(declare-fun b!1386996 () Bool)

(declare-fun e!886026 () Bool)

(declare-fun tp!396557 () Bool)

(assert (=> b!1386996 (= e!886026 (and tp_is_empty!6775 tp!396557))))

(assert (=> b!1385253 (= tp!396427 e!886026)))

(assert (= (and b!1385253 ((_ is Cons!14059) (t!122150 (originalCharacters!3297 t1!34)))) b!1386996))

(declare-fun b!1386998 () Bool)

(declare-fun e!886027 () Bool)

(declare-fun tp!396558 () Bool)

(declare-fun tp!396560 () Bool)

(assert (=> b!1386998 (= e!886027 (and tp!396558 tp!396560))))

(declare-fun b!1386999 () Bool)

(declare-fun tp!396561 () Bool)

(assert (=> b!1386999 (= e!886027 tp!396561)))

(declare-fun b!1387000 () Bool)

(declare-fun tp!396562 () Bool)

(declare-fun tp!396559 () Bool)

(assert (=> b!1387000 (= e!886027 (and tp!396562 tp!396559))))

(declare-fun b!1386997 () Bool)

(assert (=> b!1386997 (= e!886027 tp_is_empty!6775)))

(assert (=> b!1385260 (= tp!396434 e!886027)))

(assert (= (and b!1385260 ((_ is ElementMatch!3749) (regOne!8010 (regex!2435 (rule!4194 t1!34))))) b!1386997))

(assert (= (and b!1385260 ((_ is Concat!6275) (regOne!8010 (regex!2435 (rule!4194 t1!34))))) b!1386998))

(assert (= (and b!1385260 ((_ is Star!3749) (regOne!8010 (regex!2435 (rule!4194 t1!34))))) b!1386999))

(assert (= (and b!1385260 ((_ is Union!3749) (regOne!8010 (regex!2435 (rule!4194 t1!34))))) b!1387000))

(declare-fun b!1387002 () Bool)

(declare-fun e!886028 () Bool)

(declare-fun tp!396563 () Bool)

(declare-fun tp!396565 () Bool)

(assert (=> b!1387002 (= e!886028 (and tp!396563 tp!396565))))

(declare-fun b!1387003 () Bool)

(declare-fun tp!396566 () Bool)

(assert (=> b!1387003 (= e!886028 tp!396566)))

(declare-fun b!1387004 () Bool)

(declare-fun tp!396567 () Bool)

(declare-fun tp!396564 () Bool)

(assert (=> b!1387004 (= e!886028 (and tp!396567 tp!396564))))

(declare-fun b!1387001 () Bool)

(assert (=> b!1387001 (= e!886028 tp_is_empty!6775)))

(assert (=> b!1385260 (= tp!396436 e!886028)))

(assert (= (and b!1385260 ((_ is ElementMatch!3749) (regTwo!8010 (regex!2435 (rule!4194 t1!34))))) b!1387001))

(assert (= (and b!1385260 ((_ is Concat!6275) (regTwo!8010 (regex!2435 (rule!4194 t1!34))))) b!1387002))

(assert (= (and b!1385260 ((_ is Star!3749) (regTwo!8010 (regex!2435 (rule!4194 t1!34))))) b!1387003))

(assert (= (and b!1385260 ((_ is Union!3749) (regTwo!8010 (regex!2435 (rule!4194 t1!34))))) b!1387004))

(declare-fun tp!396574 () Bool)

(declare-fun e!886033 () Bool)

(declare-fun tp!396576 () Bool)

(declare-fun b!1387013 () Bool)

(assert (=> b!1387013 (= e!886033 (and (inv!18402 (left!12017 (c!227730 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 t2!34))) (value!79030 t2!34))))) tp!396576 (inv!18402 (right!12347 (c!227730 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 t2!34))) (value!79030 t2!34))))) tp!396574))))

(declare-fun b!1387015 () Bool)

(declare-fun e!886034 () Bool)

(declare-fun tp!396575 () Bool)

(assert (=> b!1387015 (= e!886034 tp!396575)))

(declare-fun b!1387014 () Bool)

(declare-fun inv!18409 (IArray!9265) Bool)

(assert (=> b!1387014 (= e!886033 (and (inv!18409 (xs!7357 (c!227730 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 t2!34))) (value!79030 t2!34))))) e!886034))))

(assert (=> b!1385148 (= tp!396397 (and (inv!18402 (c!227730 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 t2!34))) (value!79030 t2!34)))) e!886033))))

(assert (= (and b!1385148 ((_ is Node!4630) (c!227730 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 t2!34))) (value!79030 t2!34))))) b!1387013))

(assert (= b!1387014 b!1387015))

(assert (= (and b!1385148 ((_ is Leaf!7044) (c!227730 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 t2!34))) (value!79030 t2!34))))) b!1387014))

(declare-fun m!1561579 () Bool)

(assert (=> b!1387013 m!1561579))

(declare-fun m!1561581 () Bool)

(assert (=> b!1387013 m!1561581))

(declare-fun m!1561583 () Bool)

(assert (=> b!1387014 m!1561583))

(assert (=> b!1385148 m!1558555))

(declare-fun b!1387018 () Bool)

(declare-fun b_free!33691 () Bool)

(declare-fun b_next!34395 () Bool)

(assert (=> b!1387018 (= b_free!33691 (not b_next!34395))))

(declare-fun t!122287 () Bool)

(declare-fun tb!72725 () Bool)

(assert (=> (and b!1387018 (= (toValue!3718 (transformation!2435 (h!19461 (t!122151 (t!122151 rules!2550))))) (toValue!3718 (transformation!2435 (rule!4194 (_1!7714 (get!4370 lt!460529)))))) t!122287) tb!72725))

(declare-fun result!88354 () Bool)

(assert (= result!88354 result!88326))

(assert (=> d!396280 t!122287))

(declare-fun tb!72727 () Bool)

(declare-fun t!122289 () Bool)

(assert (=> (and b!1387018 (= (toValue!3718 (transformation!2435 (h!19461 (t!122151 (t!122151 rules!2550))))) (toValue!3718 (transformation!2435 (rule!4194 (_1!7714 (get!4370 lt!460513)))))) t!122289) tb!72727))

(declare-fun result!88356 () Bool)

(assert (= result!88356 result!88344))

(assert (=> d!396358 t!122289))

(declare-fun b_and!92923 () Bool)

(declare-fun tp!396577 () Bool)

(assert (=> b!1387018 (= tp!396577 (and (=> t!122287 result!88354) (=> t!122289 result!88356) b_and!92923))))

(declare-fun b_free!33693 () Bool)

(declare-fun b_next!34397 () Bool)

(assert (=> b!1387018 (= b_free!33693 (not b_next!34397))))

(declare-fun t!122291 () Bool)

(declare-fun tb!72729 () Bool)

(assert (=> (and b!1387018 (= (toChars!3577 (transformation!2435 (h!19461 (t!122151 (t!122151 rules!2550))))) (toChars!3577 (transformation!2435 (rule!4194 t1!34)))) t!122291) tb!72729))

(declare-fun result!88358 () Bool)

(assert (= result!88358 result!88246))

(assert (=> d!395548 t!122291))

(declare-fun t!122293 () Bool)

(declare-fun tb!72731 () Bool)

(assert (=> (and b!1387018 (= (toChars!3577 (transformation!2435 (h!19461 (t!122151 (t!122151 rules!2550))))) (toChars!3577 (transformation!2435 (rule!4194 (_1!7714 (get!4370 lt!460529)))))) t!122293) tb!72731))

(declare-fun result!88360 () Bool)

(assert (= result!88360 result!88286))

(assert (=> d!396030 t!122293))

(declare-fun tb!72733 () Bool)

(declare-fun t!122295 () Bool)

(assert (=> (and b!1387018 (= (toChars!3577 (transformation!2435 (h!19461 (t!122151 (t!122151 rules!2550))))) (toChars!3577 (transformation!2435 (rule!4194 t2!34)))) t!122295) tb!72733))

(declare-fun result!88362 () Bool)

(assert (= result!88362 result!88254))

(assert (=> d!395626 t!122295))

(assert (=> b!1385146 t!122295))

(declare-fun t!122297 () Bool)

(declare-fun tb!72735 () Bool)

(assert (=> (and b!1387018 (= (toChars!3577 (transformation!2435 (h!19461 (t!122151 (t!122151 rules!2550))))) (toChars!3577 (transformation!2435 (rule!4194 (_1!7714 (get!4370 lt!460513)))))) t!122297) tb!72735))

(declare-fun result!88364 () Bool)

(assert (= result!88364 result!88336))

(assert (=> d!396322 t!122297))

(assert (=> b!1385144 t!122291))

(declare-fun b_and!92925 () Bool)

(declare-fun tp!396578 () Bool)

(assert (=> b!1387018 (= tp!396578 (and (=> t!122293 result!88360) (=> t!122295 result!88362) (=> t!122297 result!88364) (=> t!122291 result!88358) b_and!92925))))

(declare-fun e!886037 () Bool)

(assert (=> b!1387018 (= e!886037 (and tp!396577 tp!396578))))

(declare-fun tp!396579 () Bool)

(declare-fun e!886038 () Bool)

(declare-fun b!1387017 () Bool)

(assert (=> b!1387017 (= e!886038 (and tp!396579 (inv!18395 (tag!2697 (h!19461 (t!122151 (t!122151 rules!2550))))) (inv!18398 (transformation!2435 (h!19461 (t!122151 (t!122151 rules!2550))))) e!886037))))

(declare-fun b!1387016 () Bool)

(declare-fun e!886035 () Bool)

(declare-fun tp!396580 () Bool)

(assert (=> b!1387016 (= e!886035 (and e!886038 tp!396580))))

(assert (=> b!1385246 (= tp!396424 e!886035)))

(assert (= b!1387017 b!1387018))

(assert (= b!1387016 b!1387017))

(assert (= (and b!1385246 ((_ is Cons!14060) (t!122151 (t!122151 rules!2550)))) b!1387016))

(declare-fun m!1561585 () Bool)

(assert (=> b!1387017 m!1561585))

(declare-fun m!1561587 () Bool)

(assert (=> b!1387017 m!1561587))

(declare-fun b!1387020 () Bool)

(declare-fun e!886039 () Bool)

(declare-fun tp!396581 () Bool)

(declare-fun tp!396583 () Bool)

(assert (=> b!1387020 (= e!886039 (and tp!396581 tp!396583))))

(declare-fun b!1387021 () Bool)

(declare-fun tp!396584 () Bool)

(assert (=> b!1387021 (= e!886039 tp!396584)))

(declare-fun b!1387022 () Bool)

(declare-fun tp!396585 () Bool)

(declare-fun tp!396582 () Bool)

(assert (=> b!1387022 (= e!886039 (and tp!396585 tp!396582))))

(declare-fun b!1387019 () Bool)

(assert (=> b!1387019 (= e!886039 tp_is_empty!6775)))

(assert (=> b!1385247 (= tp!396423 e!886039)))

(assert (= (and b!1385247 ((_ is ElementMatch!3749) (regex!2435 (h!19461 (t!122151 rules!2550))))) b!1387019))

(assert (= (and b!1385247 ((_ is Concat!6275) (regex!2435 (h!19461 (t!122151 rules!2550))))) b!1387020))

(assert (= (and b!1385247 ((_ is Star!3749) (regex!2435 (h!19461 (t!122151 rules!2550))))) b!1387021))

(assert (= (and b!1385247 ((_ is Union!3749) (regex!2435 (h!19461 (t!122151 rules!2550))))) b!1387022))

(declare-fun e!886040 () Bool)

(declare-fun tp!396588 () Bool)

(declare-fun b!1387023 () Bool)

(declare-fun tp!396586 () Bool)

(assert (=> b!1387023 (= e!886040 (and (inv!18402 (left!12017 (c!227730 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 t1!34))) (value!79030 t1!34))))) tp!396588 (inv!18402 (right!12347 (c!227730 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 t1!34))) (value!79030 t1!34))))) tp!396586))))

(declare-fun b!1387025 () Bool)

(declare-fun e!886041 () Bool)

(declare-fun tp!396587 () Bool)

(assert (=> b!1387025 (= e!886041 tp!396587)))

(declare-fun b!1387024 () Bool)

(assert (=> b!1387024 (= e!886040 (and (inv!18409 (xs!7357 (c!227730 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 t1!34))) (value!79030 t1!34))))) e!886041))))

(assert (=> b!1385064 (= tp!396396 (and (inv!18402 (c!227730 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 t1!34))) (value!79030 t1!34)))) e!886040))))

(assert (= (and b!1385064 ((_ is Node!4630) (c!227730 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 t1!34))) (value!79030 t1!34))))) b!1387023))

(assert (= b!1387024 b!1387025))

(assert (= (and b!1385064 ((_ is Leaf!7044) (c!227730 (dynLambda!6432 (toChars!3577 (transformation!2435 (rule!4194 t1!34))) (value!79030 t1!34))))) b!1387024))

(declare-fun m!1561589 () Bool)

(assert (=> b!1387023 m!1561589))

(declare-fun m!1561591 () Bool)

(assert (=> b!1387023 m!1561591))

(declare-fun m!1561593 () Bool)

(assert (=> b!1387024 m!1561593))

(assert (=> b!1385064 m!1558415))

(declare-fun b!1387027 () Bool)

(declare-fun e!886042 () Bool)

(declare-fun tp!396589 () Bool)

(declare-fun tp!396591 () Bool)

(assert (=> b!1387027 (= e!886042 (and tp!396589 tp!396591))))

(declare-fun b!1387028 () Bool)

(declare-fun tp!396592 () Bool)

(assert (=> b!1387028 (= e!886042 tp!396592)))

(declare-fun b!1387029 () Bool)

(declare-fun tp!396593 () Bool)

(declare-fun tp!396590 () Bool)

(assert (=> b!1387029 (= e!886042 (and tp!396593 tp!396590))))

(declare-fun b!1387026 () Bool)

(assert (=> b!1387026 (= e!886042 tp_is_empty!6775)))

(assert (=> b!1385256 (= tp!396431 e!886042)))

(assert (= (and b!1385256 ((_ is ElementMatch!3749) (reg!4078 (regex!2435 (rule!4194 t2!34))))) b!1387026))

(assert (= (and b!1385256 ((_ is Concat!6275) (reg!4078 (regex!2435 (rule!4194 t2!34))))) b!1387027))

(assert (= (and b!1385256 ((_ is Star!3749) (reg!4078 (regex!2435 (rule!4194 t2!34))))) b!1387028))

(assert (= (and b!1385256 ((_ is Union!3749) (reg!4078 (regex!2435 (rule!4194 t2!34))))) b!1387029))

(declare-fun b!1387031 () Bool)

(declare-fun e!886043 () Bool)

(declare-fun tp!396594 () Bool)

(declare-fun tp!396596 () Bool)

(assert (=> b!1387031 (= e!886043 (and tp!396594 tp!396596))))

(declare-fun b!1387032 () Bool)

(declare-fun tp!396597 () Bool)

(assert (=> b!1387032 (= e!886043 tp!396597)))

(declare-fun b!1387033 () Bool)

(declare-fun tp!396598 () Bool)

(declare-fun tp!396595 () Bool)

(assert (=> b!1387033 (= e!886043 (and tp!396598 tp!396595))))

(declare-fun b!1387030 () Bool)

(assert (=> b!1387030 (= e!886043 tp_is_empty!6775)))

(assert (=> b!1385255 (= tp!396428 e!886043)))

(assert (= (and b!1385255 ((_ is ElementMatch!3749) (regOne!8010 (regex!2435 (rule!4194 t2!34))))) b!1387030))

(assert (= (and b!1385255 ((_ is Concat!6275) (regOne!8010 (regex!2435 (rule!4194 t2!34))))) b!1387031))

(assert (= (and b!1385255 ((_ is Star!3749) (regOne!8010 (regex!2435 (rule!4194 t2!34))))) b!1387032))

(assert (= (and b!1385255 ((_ is Union!3749) (regOne!8010 (regex!2435 (rule!4194 t2!34))))) b!1387033))

(declare-fun b!1387035 () Bool)

(declare-fun e!886044 () Bool)

(declare-fun tp!396599 () Bool)

(declare-fun tp!396601 () Bool)

(assert (=> b!1387035 (= e!886044 (and tp!396599 tp!396601))))

(declare-fun b!1387036 () Bool)

(declare-fun tp!396602 () Bool)

(assert (=> b!1387036 (= e!886044 tp!396602)))

(declare-fun b!1387037 () Bool)

(declare-fun tp!396603 () Bool)

(declare-fun tp!396600 () Bool)

(assert (=> b!1387037 (= e!886044 (and tp!396603 tp!396600))))

(declare-fun b!1387034 () Bool)

(assert (=> b!1387034 (= e!886044 tp_is_empty!6775)))

(assert (=> b!1385255 (= tp!396430 e!886044)))

(assert (= (and b!1385255 ((_ is ElementMatch!3749) (regTwo!8010 (regex!2435 (rule!4194 t2!34))))) b!1387034))

(assert (= (and b!1385255 ((_ is Concat!6275) (regTwo!8010 (regex!2435 (rule!4194 t2!34))))) b!1387035))

(assert (= (and b!1385255 ((_ is Star!3749) (regTwo!8010 (regex!2435 (rule!4194 t2!34))))) b!1387036))

(assert (= (and b!1385255 ((_ is Union!3749) (regTwo!8010 (regex!2435 (rule!4194 t2!34))))) b!1387037))

(declare-fun b!1387039 () Bool)

(declare-fun e!886045 () Bool)

(declare-fun tp!396604 () Bool)

(declare-fun tp!396606 () Bool)

(assert (=> b!1387039 (= e!886045 (and tp!396604 tp!396606))))

(declare-fun b!1387040 () Bool)

(declare-fun tp!396607 () Bool)

(assert (=> b!1387040 (= e!886045 tp!396607)))

(declare-fun b!1387041 () Bool)

(declare-fun tp!396608 () Bool)

(declare-fun tp!396605 () Bool)

(assert (=> b!1387041 (= e!886045 (and tp!396608 tp!396605))))

(declare-fun b!1387038 () Bool)

(assert (=> b!1387038 (= e!886045 tp_is_empty!6775)))

(assert (=> b!1385237 (= tp!396412 e!886045)))

(assert (= (and b!1385237 ((_ is ElementMatch!3749) (regOne!8011 (regex!2435 (h!19461 rules!2550))))) b!1387038))

(assert (= (and b!1385237 ((_ is Concat!6275) (regOne!8011 (regex!2435 (h!19461 rules!2550))))) b!1387039))

(assert (= (and b!1385237 ((_ is Star!3749) (regOne!8011 (regex!2435 (h!19461 rules!2550))))) b!1387040))

(assert (= (and b!1385237 ((_ is Union!3749) (regOne!8011 (regex!2435 (h!19461 rules!2550))))) b!1387041))

(declare-fun b!1387043 () Bool)

(declare-fun e!886046 () Bool)

(declare-fun tp!396609 () Bool)

(declare-fun tp!396611 () Bool)

(assert (=> b!1387043 (= e!886046 (and tp!396609 tp!396611))))

(declare-fun b!1387044 () Bool)

(declare-fun tp!396612 () Bool)

(assert (=> b!1387044 (= e!886046 tp!396612)))

(declare-fun b!1387045 () Bool)

(declare-fun tp!396613 () Bool)

(declare-fun tp!396610 () Bool)

(assert (=> b!1387045 (= e!886046 (and tp!396613 tp!396610))))

(declare-fun b!1387042 () Bool)

(assert (=> b!1387042 (= e!886046 tp_is_empty!6775)))

(assert (=> b!1385237 (= tp!396409 e!886046)))

(assert (= (and b!1385237 ((_ is ElementMatch!3749) (regTwo!8011 (regex!2435 (h!19461 rules!2550))))) b!1387042))

(assert (= (and b!1385237 ((_ is Concat!6275) (regTwo!8011 (regex!2435 (h!19461 rules!2550))))) b!1387043))

(assert (= (and b!1385237 ((_ is Star!3749) (regTwo!8011 (regex!2435 (h!19461 rules!2550))))) b!1387044))

(assert (= (and b!1385237 ((_ is Union!3749) (regTwo!8011 (regex!2435 (h!19461 rules!2550))))) b!1387045))

(declare-fun b!1387047 () Bool)

(declare-fun e!886047 () Bool)

(declare-fun tp!396614 () Bool)

(declare-fun tp!396616 () Bool)

(assert (=> b!1387047 (= e!886047 (and tp!396614 tp!396616))))

(declare-fun b!1387048 () Bool)

(declare-fun tp!396617 () Bool)

(assert (=> b!1387048 (= e!886047 tp!396617)))

(declare-fun b!1387049 () Bool)

(declare-fun tp!396618 () Bool)

(declare-fun tp!396615 () Bool)

(assert (=> b!1387049 (= e!886047 (and tp!396618 tp!396615))))

(declare-fun b!1387046 () Bool)

(assert (=> b!1387046 (= e!886047 tp_is_empty!6775)))

(assert (=> b!1385262 (= tp!396438 e!886047)))

(assert (= (and b!1385262 ((_ is ElementMatch!3749) (regOne!8011 (regex!2435 (rule!4194 t1!34))))) b!1387046))

(assert (= (and b!1385262 ((_ is Concat!6275) (regOne!8011 (regex!2435 (rule!4194 t1!34))))) b!1387047))

(assert (= (and b!1385262 ((_ is Star!3749) (regOne!8011 (regex!2435 (rule!4194 t1!34))))) b!1387048))

(assert (= (and b!1385262 ((_ is Union!3749) (regOne!8011 (regex!2435 (rule!4194 t1!34))))) b!1387049))

(declare-fun b!1387051 () Bool)

(declare-fun e!886048 () Bool)

(declare-fun tp!396619 () Bool)

(declare-fun tp!396621 () Bool)

(assert (=> b!1387051 (= e!886048 (and tp!396619 tp!396621))))

(declare-fun b!1387052 () Bool)

(declare-fun tp!396622 () Bool)

(assert (=> b!1387052 (= e!886048 tp!396622)))

(declare-fun b!1387053 () Bool)

(declare-fun tp!396623 () Bool)

(declare-fun tp!396620 () Bool)

(assert (=> b!1387053 (= e!886048 (and tp!396623 tp!396620))))

(declare-fun b!1387050 () Bool)

(assert (=> b!1387050 (= e!886048 tp_is_empty!6775)))

(assert (=> b!1385262 (= tp!396435 e!886048)))

(assert (= (and b!1385262 ((_ is ElementMatch!3749) (regTwo!8011 (regex!2435 (rule!4194 t1!34))))) b!1387050))

(assert (= (and b!1385262 ((_ is Concat!6275) (regTwo!8011 (regex!2435 (rule!4194 t1!34))))) b!1387051))

(assert (= (and b!1385262 ((_ is Star!3749) (regTwo!8011 (regex!2435 (rule!4194 t1!34))))) b!1387052))

(assert (= (and b!1385262 ((_ is Union!3749) (regTwo!8011 (regex!2435 (rule!4194 t1!34))))) b!1387053))

(declare-fun b!1387055 () Bool)

(declare-fun e!886049 () Bool)

(declare-fun tp!396624 () Bool)

(declare-fun tp!396626 () Bool)

(assert (=> b!1387055 (= e!886049 (and tp!396624 tp!396626))))

(declare-fun b!1387056 () Bool)

(declare-fun tp!396627 () Bool)

(assert (=> b!1387056 (= e!886049 tp!396627)))

(declare-fun b!1387057 () Bool)

(declare-fun tp!396628 () Bool)

(declare-fun tp!396625 () Bool)

(assert (=> b!1387057 (= e!886049 (and tp!396628 tp!396625))))

(declare-fun b!1387054 () Bool)

(assert (=> b!1387054 (= e!886049 tp_is_empty!6775)))

(assert (=> b!1385236 (= tp!396411 e!886049)))

(assert (= (and b!1385236 ((_ is ElementMatch!3749) (reg!4078 (regex!2435 (h!19461 rules!2550))))) b!1387054))

(assert (= (and b!1385236 ((_ is Concat!6275) (reg!4078 (regex!2435 (h!19461 rules!2550))))) b!1387055))

(assert (= (and b!1385236 ((_ is Star!3749) (reg!4078 (regex!2435 (h!19461 rules!2550))))) b!1387056))

(assert (= (and b!1385236 ((_ is Union!3749) (reg!4078 (regex!2435 (h!19461 rules!2550))))) b!1387057))

(declare-fun b!1387058 () Bool)

(declare-fun e!886050 () Bool)

(declare-fun tp!396629 () Bool)

(assert (=> b!1387058 (= e!886050 (and tp_is_empty!6775 tp!396629))))

(assert (=> b!1385258 (= tp!396433 e!886050)))

(assert (= (and b!1385258 ((_ is Cons!14059) (t!122150 (originalCharacters!3297 t2!34)))) b!1387058))

(declare-fun b!1387060 () Bool)

(declare-fun e!886051 () Bool)

(declare-fun tp!396630 () Bool)

(declare-fun tp!396632 () Bool)

(assert (=> b!1387060 (= e!886051 (and tp!396630 tp!396632))))

(declare-fun b!1387061 () Bool)

(declare-fun tp!396633 () Bool)

(assert (=> b!1387061 (= e!886051 tp!396633)))

(declare-fun b!1387062 () Bool)

(declare-fun tp!396634 () Bool)

(declare-fun tp!396631 () Bool)

(assert (=> b!1387062 (= e!886051 (and tp!396634 tp!396631))))

(declare-fun b!1387059 () Bool)

(assert (=> b!1387059 (= e!886051 tp_is_empty!6775)))

(assert (=> b!1385261 (= tp!396437 e!886051)))

(assert (= (and b!1385261 ((_ is ElementMatch!3749) (reg!4078 (regex!2435 (rule!4194 t1!34))))) b!1387059))

(assert (= (and b!1385261 ((_ is Concat!6275) (reg!4078 (regex!2435 (rule!4194 t1!34))))) b!1387060))

(assert (= (and b!1385261 ((_ is Star!3749) (reg!4078 (regex!2435 (rule!4194 t1!34))))) b!1387061))

(assert (= (and b!1385261 ((_ is Union!3749) (reg!4078 (regex!2435 (rule!4194 t1!34))))) b!1387062))

(declare-fun b!1387064 () Bool)

(declare-fun e!886052 () Bool)

(declare-fun tp!396635 () Bool)

(declare-fun tp!396637 () Bool)

(assert (=> b!1387064 (= e!886052 (and tp!396635 tp!396637))))

(declare-fun b!1387065 () Bool)

(declare-fun tp!396638 () Bool)

(assert (=> b!1387065 (= e!886052 tp!396638)))

(declare-fun b!1387066 () Bool)

(declare-fun tp!396639 () Bool)

(declare-fun tp!396636 () Bool)

(assert (=> b!1387066 (= e!886052 (and tp!396639 tp!396636))))

(declare-fun b!1387063 () Bool)

(assert (=> b!1387063 (= e!886052 tp_is_empty!6775)))

(assert (=> b!1385235 (= tp!396408 e!886052)))

(assert (= (and b!1385235 ((_ is ElementMatch!3749) (regOne!8010 (regex!2435 (h!19461 rules!2550))))) b!1387063))

(assert (= (and b!1385235 ((_ is Concat!6275) (regOne!8010 (regex!2435 (h!19461 rules!2550))))) b!1387064))

(assert (= (and b!1385235 ((_ is Star!3749) (regOne!8010 (regex!2435 (h!19461 rules!2550))))) b!1387065))

(assert (= (and b!1385235 ((_ is Union!3749) (regOne!8010 (regex!2435 (h!19461 rules!2550))))) b!1387066))

(declare-fun b!1387068 () Bool)

(declare-fun e!886053 () Bool)

(declare-fun tp!396640 () Bool)

(declare-fun tp!396642 () Bool)

(assert (=> b!1387068 (= e!886053 (and tp!396640 tp!396642))))

(declare-fun b!1387069 () Bool)

(declare-fun tp!396643 () Bool)

(assert (=> b!1387069 (= e!886053 tp!396643)))

(declare-fun b!1387070 () Bool)

(declare-fun tp!396644 () Bool)

(declare-fun tp!396641 () Bool)

(assert (=> b!1387070 (= e!886053 (and tp!396644 tp!396641))))

(declare-fun b!1387067 () Bool)

(assert (=> b!1387067 (= e!886053 tp_is_empty!6775)))

(assert (=> b!1385235 (= tp!396410 e!886053)))

(assert (= (and b!1385235 ((_ is ElementMatch!3749) (regTwo!8010 (regex!2435 (h!19461 rules!2550))))) b!1387067))

(assert (= (and b!1385235 ((_ is Concat!6275) (regTwo!8010 (regex!2435 (h!19461 rules!2550))))) b!1387068))

(assert (= (and b!1385235 ((_ is Star!3749) (regTwo!8010 (regex!2435 (h!19461 rules!2550))))) b!1387069))

(assert (= (and b!1385235 ((_ is Union!3749) (regTwo!8010 (regex!2435 (h!19461 rules!2550))))) b!1387070))

(declare-fun b_lambda!43003 () Bool)

(assert (= b_lambda!42987 (or b!1384356 b_lambda!43003)))

(declare-fun bs!337147 () Bool)

(declare-fun d!396634 () Bool)

(assert (= bs!337147 (and d!396634 b!1384356)))

(assert (=> bs!337147 (= (dynLambda!6429 lambda!59596 (h!19461 (t!122151 rules!2550))) (= (regex!2435 (h!19461 (t!122151 rules!2550))) lt!460289))))

(assert (=> b!1386655 d!396634))

(declare-fun b_lambda!43005 () Bool)

(assert (= b_lambda!42991 (or b!1384378 b_lambda!43005)))

(assert (=> d!396492 d!395644))

(declare-fun b_lambda!43007 () Bool)

(assert (= b_lambda!42997 (or b!1384381 b_lambda!43007)))

(declare-fun bs!337148 () Bool)

(declare-fun d!396636 () Bool)

(assert (= bs!337148 (and d!396636 b!1384381)))

(declare-fun res!625741 () Bool)

(declare-fun e!886054 () Bool)

(assert (=> bs!337148 (=> (not res!625741) (not e!886054))))

(assert (=> bs!337148 (= res!625741 (validRegex!1633 lt!461327))))

(assert (=> bs!337148 (= (dynLambda!6433 lambda!59595 lt!461327) e!886054)))

(declare-fun b!1387071 () Bool)

(assert (=> b!1387071 (= e!886054 (matchR!1740 lt!461327 lt!460300))))

(assert (= (and bs!337148 res!625741) b!1387071))

(declare-fun m!1561595 () Bool)

(assert (=> bs!337148 m!1561595))

(declare-fun m!1561597 () Bool)

(assert (=> b!1387071 m!1561597))

(assert (=> d!396570 d!396636))

(declare-fun b_lambda!43009 () Bool)

(assert (= b_lambda!42977 (or b!1384376 b_lambda!43009)))

(declare-fun bs!337149 () Bool)

(declare-fun d!396638 () Bool)

(assert (= bs!337149 (and d!396638 b!1384376)))

(declare-fun res!625742 () Bool)

(declare-fun e!886055 () Bool)

(assert (=> bs!337149 (=> (not res!625742) (not e!886055))))

(assert (=> bs!337149 (= res!625742 (matchR!1740 lt!460292 res!625517))))

(assert (=> bs!337149 (= (dynLambda!6436 lambda!59593 res!625517) e!886055)))

(declare-fun b!1387072 () Bool)

(assert (=> b!1387072 (= e!886055 (isPrefix!1140 lt!460287 res!625517))))

(assert (= (and bs!337149 res!625742) b!1387072))

(declare-fun m!1561599 () Bool)

(assert (=> bs!337149 m!1561599))

(declare-fun m!1561601 () Bool)

(assert (=> b!1387072 m!1561601))

(assert (=> d!396302 d!396638))

(declare-fun b_lambda!43011 () Bool)

(assert (= b_lambda!42985 (or b!1384356 b_lambda!43011)))

(declare-fun bs!337150 () Bool)

(declare-fun d!396640 () Bool)

(assert (= bs!337150 (and d!396640 b!1384356)))

(assert (=> bs!337150 (= (dynLambda!6429 lambda!59596 lt!461234) (= (regex!2435 lt!461234) lt!460289))))

(assert (=> d!396432 d!396640))

(declare-fun b_lambda!43013 () Bool)

(assert (= b_lambda!42989 (or d!395552 b_lambda!43013)))

(declare-fun bs!337151 () Bool)

(declare-fun d!396642 () Bool)

(assert (= bs!337151 (and d!396642 d!395552)))

(assert (=> bs!337151 (= (dynLambda!6424 lambda!59632 (h!19461 rules!2550)) (regex!2435 (h!19461 rules!2550)))))

(assert (=> b!1386709 d!396642))

(declare-fun b_lambda!43015 () Bool)

(assert (= b_lambda!42993 (or b!1384378 b_lambda!43015)))

(assert (=> d!396546 d!395642))

(declare-fun b_lambda!43017 () Bool)

(assert (= b_lambda!42923 (or d!395354 b_lambda!43017)))

(declare-fun bs!337152 () Bool)

(declare-fun d!396644 () Bool)

(assert (= bs!337152 (and d!396644 d!395354)))

(assert (=> bs!337152 (= (dynLambda!6433 lambda!59611 (h!19463 lt!460295)) (validRegex!1633 (h!19463 lt!460295)))))

(declare-fun m!1561603 () Bool)

(assert (=> bs!337152 m!1561603))

(assert (=> b!1385884 d!396644))

(declare-fun b_lambda!43019 () Bool)

(assert (= b_lambda!42999 (or d!395350 b_lambda!43019)))

(declare-fun bs!337153 () Bool)

(declare-fun d!396646 () Bool)

(assert (= bs!337153 (and d!396646 d!395350)))

(assert (=> bs!337153 (= (dynLambda!6433 lambda!59606 (h!19463 (map!3113 rules!2550 lambda!59594))) (not (dynLambda!6433 lambda!59595 (h!19463 (map!3113 rules!2550 lambda!59594)))))))

(declare-fun b_lambda!43033 () Bool)

(assert (=> (not b_lambda!43033) (not bs!337153)))

(assert (=> bs!337153 m!1558495))

(assert (=> b!1386871 d!396646))

(declare-fun b_lambda!43021 () Bool)

(assert (= b_lambda!43001 (or d!395598 b_lambda!43021)))

(declare-fun bs!337154 () Bool)

(declare-fun d!396648 () Bool)

(assert (= bs!337154 (and d!396648 d!395598)))

(assert (=> bs!337154 (= (dynLambda!6429 lambda!59638 (h!19461 rules!2550)) (not (dynLambda!6429 lambda!59596 (h!19461 rules!2550))))))

(declare-fun b_lambda!43035 () Bool)

(assert (=> (not b_lambda!43035) (not bs!337154)))

(assert (=> bs!337154 m!1558029))

(assert (=> b!1386974 d!396648))

(declare-fun b_lambda!43023 () Bool)

(assert (= b_lambda!42995 (or b!1384381 b_lambda!43023)))

(declare-fun bs!337155 () Bool)

(declare-fun d!396650 () Bool)

(assert (= bs!337155 (and d!396650 b!1384381)))

(declare-fun res!625743 () Bool)

(declare-fun e!886056 () Bool)

(assert (=> bs!337155 (=> (not res!625743) (not e!886056))))

(assert (=> bs!337155 (= res!625743 (validRegex!1633 (h!19463 (t!122153 (map!3113 rules!2550 lambda!59594)))))))

(assert (=> bs!337155 (= (dynLambda!6433 lambda!59595 (h!19463 (t!122153 (map!3113 rules!2550 lambda!59594)))) e!886056)))

(declare-fun b!1387073 () Bool)

(assert (=> b!1387073 (= e!886056 (matchR!1740 (h!19463 (t!122153 (map!3113 rules!2550 lambda!59594))) lt!460300))))

(assert (= (and bs!337155 res!625743) b!1387073))

(declare-fun m!1561605 () Bool)

(assert (=> bs!337155 m!1561605))

(declare-fun m!1561607 () Bool)

(assert (=> b!1387073 m!1561607))

(assert (=> b!1386867 d!396650))

(declare-fun b_lambda!43025 () Bool)

(assert (= b_lambda!42973 (or b!1384378 b_lambda!43025)))

(declare-fun bs!337156 () Bool)

(declare-fun d!396652 () Bool)

(assert (= bs!337156 (and d!396652 b!1384378)))

(assert (=> bs!337156 (= (dynLambda!6429 lambda!59597 (h!19461 rules!2550)) (ruleValid!600 thiss!19762 (h!19461 rules!2550)))))

(assert (=> bs!337156 m!1559655))

(assert (=> b!1386431 d!396652))

(declare-fun b_lambda!43027 () Bool)

(assert (= b_lambda!42971 (or b!1384378 b_lambda!43027)))

(assert (=> d!396272 d!395636))

(declare-fun b_lambda!43029 () Bool)

(assert (= b_lambda!42969 (or b!1384381 b_lambda!43029)))

(declare-fun bs!337157 () Bool)

(declare-fun d!396654 () Bool)

(assert (= bs!337157 (and d!396654 b!1384381)))

(assert (=> bs!337157 (= (dynLambda!6424 lambda!59594 (h!19461 (t!122151 rules!2550))) (regex!2435 (h!19461 (t!122151 rules!2550))))))

(assert (=> b!1386426 d!396654))

(declare-fun b_lambda!43031 () Bool)

(assert (= b_lambda!42983 (or d!395360 b_lambda!43031)))

(declare-fun bs!337158 () Bool)

(declare-fun d!396656 () Bool)

(assert (= bs!337158 (and d!396656 d!395360)))

(assert (=> bs!337158 (= (dynLambda!6433 lambda!59613 (h!19463 lt!460295)) (not (dynLambda!6433 lambda!59595 (h!19463 lt!460295))))))

(declare-fun b_lambda!43037 () Bool)

(assert (=> (not b_lambda!43037) (not bs!337158)))

(declare-fun m!1561609 () Bool)

(assert (=> bs!337158 m!1561609))

(assert (=> b!1386571 d!396656))

(check-sat (not b!1385872) (not b!1386904) (not d!396374) (not tb!72701) (not b!1386419) (not b!1386795) (not bm!92803) (not b!1386435) (not b!1386011) (not b!1385989) (not b!1386999) (not bm!92787) (not bs!337149) (not b!1386616) b_and!92913 (not d!396348) (not b!1387061) (not b!1386634) (not b!1386008) (not b!1386005) (not b_lambda!42879) (not b!1386069) (not b!1386868) (not b!1386900) (not b!1386773) (not d!396024) (not b!1386991) (not b!1387022) (not d!396514) (not b!1385868) (not b!1386483) (not b!1386703) (not d!396550) (not bm!92780) (not b!1387013) (not b!1386625) (not b!1386582) (not b!1385064) (not b!1386019) (not b!1386671) (not d!396416) (not b!1386403) (not b!1386014) (not b!1386667) (not b_next!34381) (not b!1387002) (not d!396482) (not b!1386375) (not b!1386636) (not b!1386848) (not b!1386865) (not b!1385877) (not d!396580) (not d!396390) (not d!396458) (not b!1386702) (not bm!92776) (not b!1386880) (not bm!92807) (not b!1386560) (not b!1386434) (not b_lambda!42981) (not d!396372) (not b!1386016) (not bm!92789) (not b!1385955) (not b!1387014) (not b!1387052) (not d!396046) (not b!1387068) (not b!1386399) (not b!1386521) (not b!1386579) (not b_lambda!42883) (not b!1386836) (not d!396504) (not d!396082) (not b!1386739) (not b!1386029) (not b_lambda!42885) (not b!1386765) (not bm!92799) (not b!1386949) (not b!1386752) (not b!1386743) (not b!1386854) (not b!1386747) (not b!1386440) (not b!1386742) (not bm!92745) (not b!1386700) (not b!1386401) (not bm!92806) (not bm!92771) (not b_next!34397) (not b!1386624) (not b!1387031) (not b!1387035) (not b!1387036) (not b!1386975) (not b!1385875) (not b!1386725) (not b!1386760) (not b!1386830) (not b!1386815) (not b!1385995) (not b!1386776) (not bm!92796) (not b!1385913) (not d!396498) (not b!1386756) (not b!1386652) (not b!1386523) (not d!396004) (not b!1386995) (not d!396086) (not b!1387000) (not d!396322) (not b!1387017) (not b!1385958) (not d!396270) (not b!1386618) (not b!1386068) (not d!396068) (not b!1385923) (not d!396394) (not b!1386800) (not b!1386958) (not b!1387033) (not d!396036) (not d!396568) (not bm!92770) (not d!396478) (not d!396318) (not b!1387070) (not b!1386558) (not d!396632) (not d!396282) (not b!1386007) (not d!396432) (not d!396306) (not d!396520) (not b!1386580) (not d!396608) (not d!396408) b_and!92925 (not b!1387003) (not b!1387057) (not d!396352) (not b!1387051) (not b!1386794) (not d!396386) (not d!396510) (not b!1387062) (not b!1386491) (not b!1386720) (not b!1386663) (not b!1386445) (not b!1385902) (not b_lambda!43007) (not bm!92813) (not d!396016) (not d!396286) (not d!396426) (not d!396078) (not b_lambda!42865) (not b!1385966) (not b!1386665) (not d!396310) (not d!396578) (not b!1387048) (not bm!92779) (not b!1386954) (not b!1386546) b_and!92917 (not b!1386588) (not b!1386517) (not bm!92791) (not bm!92794) (not d!396528) (not b!1387049) (not b!1386909) (not d!396064) (not b!1386572) (not d!396346) (not b!1386927) (not b!1385925) (not b!1386374) (not b_lambda!42887) (not b!1386067) (not b_next!34379) (not d!396496) (not b!1386015) (not d!396052) (not d!396592) (not b!1386639) (not b!1386065) (not b!1386724) (not b!1386936) (not b!1386786) (not b!1386993) (not bm!92810) (not b!1387058) (not d!396472) (not b!1386559) (not b!1386959) (not b!1386648) (not b!1386744) (not b_lambda!43029) (not b_lambda!42875) (not d!396392) (not d!396298) (not b!1386644) (not b!1386026) (not b_lambda!42873) (not b!1386494) (not b!1386620) (not d!396452) (not d!396536) (not b!1385897) (not b!1386717) (not b!1386715) (not d!396320) (not b_lambda!42979) (not d!396622) (not b!1386745) (not bm!92808) (not bs!337156) (not b_lambda!42871) (not b!1386040) (not bm!92773) (not b!1387060) (not d!396456) (not b!1386003) (not b!1386872) (not bm!92772) (not b!1385990) (not b!1387069) (not b!1387015) (not b_lambda!43033) (not b!1386668) (not d!396516) (not d!396288) (not d!396308) (not d!396410) (not d!396002) (not d!396544) (not d!396328) (not d!396604) (not b!1386718) (not b!1386018) (not b!1385908) (not d!396480) (not b!1386575) (not b!1386449) (not b!1386699) (not b!1386421) (not b_lambda!42975) (not b!1386746) (not bm!92783) (not b_lambda!42889) (not b!1387071) (not b_lambda!43015) (not d!396380) (not d!396454) (not d!396606) (not d!396014) (not b!1385900) (not d!396428) (not b!1385911) (not b!1387032) (not d!396522) (not bm!92732) b_and!92919 (not d!396600) (not b!1386884) (not b!1386910) (not b!1386852) b_and!92907 (not d!396596) (not b!1385148) (not b!1386010) (not b!1386417) (not b!1386849) (not b!1387016) (not b!1386478) (not d!396368) (not b!1386883) (not b!1386955) (not b!1386511) (not b!1386951) (not b!1386638) (not b_lambda!43023) (not b!1386446) (not b!1386856) (not b!1386497) (not b!1386762) (not d!396356) b_and!92921 (not d!396462) (not b!1387024) (not d!396558) (not b!1386796) (not b!1385885) (not b!1386788) (not b!1386851) (not d!396406) (not bm!92790) (not b!1386792) (not b!1386987) (not b!1386032) (not b!1386907) (not b!1386990) (not b!1386622) b_and!92915 (not b!1386416) (not b_lambda!43009) (not b!1386009) (not b!1387072) (not d!396044) (not bm!92793) (not d!396598) (not d!396502) (not b!1386793) (not d!396278) (not d!396518) (not b!1386017) (not b_lambda!43013) (not b_lambda!43021) (not d!396000) (not d!396012) (not b!1386864) (not b!1386498) (not bm!92744) (not b!1386485) (not d!396070) (not b!1386650) (not b!1387047) (not d!396384) (not b!1386862) (not b!1386930) (not b_lambda!43003) b_and!92909 (not tb!72665) (not d!396424) (not b!1387023) (not d!396398) (not bm!92769) (not b!1386619) (not bm!92782) b_and!92923 (not b!1386492) (not bm!92785) (not d!396500) (not b!1386722) (not b!1386020) (not d!396614) (not bm!92751) (not b!1386641) (not d!396296) (not d!396304) (not b!1385972) (not b!1387028) (not d!396080) (not d!396538) (not d!396566) (not d!396534) (not d!396562) (not b!1386886) (not b!1386789) (not b!1387044) (not b!1386953) (not b!1386392) (not b_next!34389) (not b!1386857) (not b!1386418) (not b_next!34373) (not b!1386818) (not b!1386750) (not b_next!34377) (not d!396344) (not d!396338) (not d!396404) (not b!1386829) (not bs!337148) (not b!1386617) (not d!396326) (not d!396034) (not b!1387041) (not d!396470) (not b!1386764) (not b!1386698) (not d!396050) (not b!1385876) (not b!1386860) (not d!396370) (not b!1386651) (not b!1385871) (not b!1386844) (not b!1386866) (not b_lambda!43025) (not b!1385969) (not b!1385873) (not tb!72717) (not d!396360) (not b_lambda!43019) (not b!1387037) (not d!396332) (not b!1386914) (not b_next!34371) (not b!1386615) (not d!396250) (not b!1386487) (not d!396388) (not b!1386591) (not b_next!34375) (not b!1386547) (not d!396088) (not b_lambda!43017) (not bm!92816) (not b!1386740) (not b!1386661) (not b!1387053) (not b!1386669) (not bm!92811) (not bm!92734) (not b!1386448) (not b_lambda!43031) (not b_lambda!42925) (not b!1386480) (not b!1386469) (not b!1386376) (not d!396334) (not b!1385967) (not b!1387004) (not b_lambda!42881) (not d!396042) (not d!396414) (not b!1386028) (not b_lambda!42869) (not b!1386892) (not b_next!34387) (not d!396266) (not b!1387055) (not d!396508) (not b!1386994) (not b!1387065) (not b!1386525) (not b!1386893) (not b!1386895) (not b!1386912) (not bm!92800) (not d!396300) (not b!1386723) (not b!1386903) (not d!396028) (not b!1386432) (not bm!92802) (not d!396276) (not b!1386981) (not d!396484) (not b!1386589) (not b!1386438) (not b!1386831) (not b!1386807) (not b_lambda!42867) (not b!1386970) (not b!1386437) (not b_lambda!43035) (not d!396058) (not b!1386424) (not d!396584) (not b!1386928) (not b!1386640) (not b!1386736) (not b!1386707) (not d!396512) tp_is_empty!6775 (not b!1386835) (not d!396022) (not b!1386030) (not d!396448) (not d!395996) (not b!1386647) (not b!1385916) (not d!396474) (not b!1387025) (not b!1386774) (not b!1386379) (not b!1385899) (not d!396422) (not b!1386816) (not b!1386509) (not b!1386961) (not b!1385984) (not bm!92784) b_and!92911 (not b!1386535) (not b!1387039) (not b_lambda!43037) (not b_lambda!42877) (not bm!92733) (not b!1386577) (not d!396612) (not b!1386754) (not b!1386489) (not b!1386042) (not d!396506) (not b!1387040) (not d!396540) (not b!1386595) (not b!1385970) (not d!396570) (not bm!92777) (not d!396438) (not tb!72709) (not b!1386799) (not b!1386767) (not b!1386832) (not b!1386507) (not bm!92747) (not bs!337152) (not b!1387020) (not bs!337155) (not b!1386701) (not b!1386677) (not b!1385922) (not d!396440) (not b!1386474) (not b!1386500) (not b!1386721) (not b!1385896) (not d!396430) (not d!396006) (not b!1386820) (not b!1386420) (not b!1386464) (not b!1386726) (not d!396396) (not b!1387043) (not b!1386937) (not b_next!34395) (not b!1386481) (not b!1386956) (not d!396530) (not b!1386444) (not b!1386570) (not b!1387073) (not b!1385957) (not b!1387029) (not bm!92804) (not b!1386593) (not b!1386998) (not d!396252) (not b!1387027) (not bm!92748) (not b!1386939) (not b!1386555) (not b!1386957) (not b!1385982) (not b!1386709) (not b!1386901) (not b!1386922) (not b!1385869) (not b!1386996) (not b!1387021) (not b!1386748) (not d!396084) (not b_lambda!43011) (not b!1386447) (not b!1386426) (not b!1385960) (not b!1386757) (not b!1386012) (not b!1387064) (not b_lambda!43027) (not b!1385909) (not b!1386798) (not b!1385983) (not b!1386041) (not b_lambda!43005) (not b!1386520) (not b!1387056) (not b!1386635) (not b!1386806) (not bm!92797) (not b!1385874) (not d!396420) (not d!396590) (not b!1386804) (not b!1386809) (not d!396464) (not b!1386459) (not b!1386989) (not b!1387045) (not b!1386925) (not b!1385914) (not b!1386614) (not b!1387066) (not d!396030) (not b!1386950) (not b!1386463) (not b!1386479) (not d!396060))
(check-sat b_and!92913 (not b_next!34381) (not b_next!34397) b_and!92925 b_and!92917 (not b_next!34379) b_and!92921 b_and!92915 b_and!92909 (not b_next!34371) (not b_next!34375) (not b_next!34387) b_and!92911 (not b_next!34395) b_and!92919 b_and!92907 b_and!92923 (not b_next!34389) (not b_next!34373) (not b_next!34377))
