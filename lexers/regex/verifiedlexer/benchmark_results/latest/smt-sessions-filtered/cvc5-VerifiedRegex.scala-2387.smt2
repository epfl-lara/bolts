; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!120092 () Bool)

(assert start!120092)

(declare-fun b!1343504 () Bool)

(declare-fun b_free!32791 () Bool)

(declare-fun b_next!33495 () Bool)

(assert (=> b!1343504 (= b_free!32791 (not b_next!33495))))

(declare-fun tp!388998 () Bool)

(declare-fun b_and!89975 () Bool)

(assert (=> b!1343504 (= tp!388998 b_and!89975)))

(declare-fun b_free!32793 () Bool)

(declare-fun b_next!33497 () Bool)

(assert (=> b!1343504 (= b_free!32793 (not b_next!33497))))

(declare-fun tp!388999 () Bool)

(declare-fun b_and!89977 () Bool)

(assert (=> b!1343504 (= tp!388999 b_and!89977)))

(declare-fun b!1343495 () Bool)

(declare-fun b_free!32795 () Bool)

(declare-fun b_next!33499 () Bool)

(assert (=> b!1343495 (= b_free!32795 (not b_next!33499))))

(declare-fun tp!389001 () Bool)

(declare-fun b_and!89979 () Bool)

(assert (=> b!1343495 (= tp!389001 b_and!89979)))

(declare-fun b_free!32797 () Bool)

(declare-fun b_next!33501 () Bool)

(assert (=> b!1343495 (= b_free!32797 (not b_next!33501))))

(declare-fun tp!388997 () Bool)

(declare-fun b_and!89981 () Bool)

(assert (=> b!1343495 (= tp!388997 b_and!89981)))

(declare-fun b!1343499 () Bool)

(declare-fun b_free!32799 () Bool)

(declare-fun b_next!33503 () Bool)

(assert (=> b!1343499 (= b_free!32799 (not b_next!33503))))

(declare-fun tp!389003 () Bool)

(declare-fun b_and!89983 () Bool)

(assert (=> b!1343499 (= tp!389003 b_and!89983)))

(declare-fun b_free!32801 () Bool)

(declare-fun b_next!33505 () Bool)

(assert (=> b!1343499 (= b_free!32801 (not b_next!33505))))

(declare-fun tp!388995 () Bool)

(declare-fun b_and!89985 () Bool)

(assert (=> b!1343499 (= tp!388995 b_and!89985)))

(declare-fun b!1343505 () Bool)

(assert (=> b!1343505 true))

(assert (=> b!1343505 true))

(declare-fun b!1343497 () Bool)

(assert (=> b!1343497 true))

(declare-fun b!1343488 () Bool)

(assert (=> b!1343488 true))

(declare-fun b!1343484 () Bool)

(declare-datatypes ((List!13805 0))(
  ( (Nil!13739) (Cons!13739 (h!19140 (_ BitVec 16)) (t!119638 List!13805)) )
))
(declare-datatypes ((TokenValue!2472 0))(
  ( (FloatLiteralValue!4944 (text!17749 List!13805)) (TokenValueExt!2471 (__x!8773 Int)) (Broken!12360 (value!77495 List!13805)) (Object!2537) (End!2472) (Def!2472) (Underscore!2472) (Match!2472) (Else!2472) (Error!2472) (Case!2472) (If!2472) (Extends!2472) (Abstract!2472) (Class!2472) (Val!2472) (DelimiterValue!4944 (del!2532 List!13805)) (KeywordValue!2478 (value!77496 List!13805)) (CommentValue!4944 (value!77497 List!13805)) (WhitespaceValue!4944 (value!77498 List!13805)) (IndentationValue!2472 (value!77499 List!13805)) (String!16597) (Int32!2472) (Broken!12361 (value!77500 List!13805)) (Boolean!2473) (Unit!19847) (OperatorValue!2475 (op!2532 List!13805)) (IdentifierValue!4944 (value!77501 List!13805)) (IdentifierValue!4945 (value!77502 List!13805)) (WhitespaceValue!4945 (value!77503 List!13805)) (True!4944) (False!4944) (Broken!12362 (value!77504 List!13805)) (Broken!12363 (value!77505 List!13805)) (True!4945) (RightBrace!2472) (RightBracket!2472) (Colon!2472) (Null!2472) (Comma!2472) (LeftBracket!2472) (False!4945) (LeftBrace!2472) (ImaginaryLiteralValue!2472 (text!17750 List!13805)) (StringLiteralValue!7416 (value!77506 List!13805)) (EOFValue!2472 (value!77507 List!13805)) (IdentValue!2472 (value!77508 List!13805)) (DelimiterValue!4945 (value!77509 List!13805)) (DedentValue!2472 (value!77510 List!13805)) (NewLineValue!2472 (value!77511 List!13805)) (IntegerValue!7416 (value!77512 (_ BitVec 32)) (text!17751 List!13805)) (IntegerValue!7417 (value!77513 Int) (text!17752 List!13805)) (Times!2472) (Or!2472) (Equal!2472) (Minus!2472) (Broken!12364 (value!77514 List!13805)) (And!2472) (Div!2472) (LessEqual!2472) (Mod!2472) (Concat!6168) (Not!2472) (Plus!2472) (SpaceValue!2472 (value!77515 List!13805)) (IntegerValue!7418 (value!77516 Int) (text!17753 List!13805)) (StringLiteralValue!7417 (text!17754 List!13805)) (FloatLiteralValue!4945 (text!17755 List!13805)) (BytesLiteralValue!2472 (value!77517 List!13805)) (CommentValue!4945 (value!77518 List!13805)) (StringLiteralValue!7418 (value!77519 List!13805)) (ErrorTokenValue!2472 (msg!2533 List!13805)) )
))
(declare-datatypes ((C!7682 0))(
  ( (C!7683 (val!4401 Int)) )
))
(declare-datatypes ((List!13806 0))(
  ( (Nil!13740) (Cons!13740 (h!19141 C!7682) (t!119639 List!13806)) )
))
(declare-datatypes ((IArray!9057 0))(
  ( (IArray!9058 (innerList!4586 List!13806)) )
))
(declare-datatypes ((Conc!4526 0))(
  ( (Node!4526 (left!11781 Conc!4526) (right!12111 Conc!4526) (csize!9282 Int) (cheight!4737 Int)) (Leaf!6914 (xs!7245 IArray!9057) (csize!9283 Int)) (Empty!4526) )
))
(declare-datatypes ((BalanceConc!8992 0))(
  ( (BalanceConc!8993 (c!219989 Conc!4526)) )
))
(declare-datatypes ((Regex!3696 0))(
  ( (ElementMatch!3696 (c!219990 C!7682)) (Concat!6169 (regOne!7904 Regex!3696) (regTwo!7904 Regex!3696)) (EmptyExpr!3696) (Star!3696 (reg!4025 Regex!3696)) (EmptyLang!3696) (Union!3696 (regOne!7905 Regex!3696) (regTwo!7905 Regex!3696)) )
))
(declare-datatypes ((String!16598 0))(
  ( (String!16599 (value!77520 String)) )
))
(declare-datatypes ((TokenValueInjection!4604 0))(
  ( (TokenValueInjection!4605 (toValue!3625 Int) (toChars!3484 Int)) )
))
(declare-datatypes ((Rule!4564 0))(
  ( (Rule!4565 (regex!2382 Regex!3696) (tag!2644 String!16598) (isSeparator!2382 Bool) (transformation!2382 TokenValueInjection!4604)) )
))
(declare-datatypes ((List!13807 0))(
  ( (Nil!13741) (Cons!13741 (h!19142 Rule!4564) (t!119640 List!13807)) )
))
(declare-fun rules!2550 () List!13807)

(declare-fun e!860430 () Bool)

(declare-fun tp!389006 () Bool)

(declare-fun e!860418 () Bool)

(declare-fun inv!18074 (String!16598) Bool)

(declare-fun inv!18077 (TokenValueInjection!4604) Bool)

(assert (=> b!1343484 (= e!860418 (and tp!389006 (inv!18074 (tag!2644 (h!19142 rules!2550))) (inv!18077 (transformation!2382 (h!19142 rules!2550))) e!860430))))

(declare-fun b!1343485 () Bool)

(declare-fun e!860427 () Bool)

(declare-fun e!860428 () Bool)

(assert (=> b!1343485 (= e!860427 e!860428)))

(declare-fun res!605466 () Bool)

(assert (=> b!1343485 (=> res!605466 e!860428)))

(declare-fun lt!444441 () List!13806)

(declare-fun lt!444433 () C!7682)

(declare-fun contains!2514 (List!13806 C!7682) Bool)

(assert (=> b!1343485 (= res!605466 (not (contains!2514 lt!444441 lt!444433)))))

(declare-fun lt!444435 () BalanceConc!8992)

(declare-fun apply!3260 (BalanceConc!8992 Int) C!7682)

(assert (=> b!1343485 (= lt!444433 (apply!3260 lt!444435 0))))

(declare-fun b!1343486 () Bool)

(declare-fun res!605476 () Bool)

(declare-fun e!860413 () Bool)

(assert (=> b!1343486 (=> (not res!605476) (not e!860413))))

(declare-datatypes ((LexerInterface!2077 0))(
  ( (LexerInterfaceExt!2074 (__x!8774 Int)) (Lexer!2075) )
))
(declare-fun thiss!19762 () LexerInterface!2077)

(declare-datatypes ((Token!4426 0))(
  ( (Token!4427 (value!77521 TokenValue!2472) (rule!4127 Rule!4564) (size!11201 Int) (originalCharacters!3244 List!13806)) )
))
(declare-fun t2!34 () Token!4426)

(declare-fun rulesProduceIndividualToken!1046 (LexerInterface!2077 List!13807 Token!4426) Bool)

(assert (=> b!1343486 (= res!605476 (rulesProduceIndividualToken!1046 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1343487 () Bool)

(declare-fun e!860412 () Bool)

(declare-fun e!860420 () Bool)

(assert (=> b!1343487 (= e!860412 e!860420)))

(declare-fun res!605471 () Bool)

(assert (=> b!1343487 (=> (not res!605471) (not e!860420))))

(declare-fun lt!444432 () Regex!3696)

(declare-fun prefixMatch!205 (Regex!3696 List!13806) Bool)

(assert (=> b!1343487 (= res!605471 (prefixMatch!205 lt!444432 lt!444441))))

(declare-fun rulesRegex!265 (LexerInterface!2077 List!13807) Regex!3696)

(assert (=> b!1343487 (= lt!444432 (rulesRegex!265 thiss!19762 rules!2550))))

(declare-fun lt!444431 () List!13806)

(declare-fun lt!444430 () C!7682)

(declare-fun ++!3521 (List!13806 List!13806) List!13806)

(assert (=> b!1343487 (= lt!444441 (++!3521 lt!444431 (Cons!13740 lt!444430 Nil!13740)))))

(declare-fun lt!444440 () BalanceConc!8992)

(assert (=> b!1343487 (= lt!444430 (apply!3260 lt!444440 0))))

(declare-fun list!5236 (BalanceConc!8992) List!13806)

(assert (=> b!1343487 (= lt!444431 (list!5236 lt!444435))))

(declare-fun t1!34 () Token!4426)

(declare-fun charsOf!1354 (Token!4426) BalanceConc!8992)

(assert (=> b!1343487 (= lt!444435 (charsOf!1354 t1!34))))

(declare-fun e!860416 () Bool)

(declare-fun e!860422 () Bool)

(assert (=> b!1343488 (= e!860416 e!860422)))

(declare-fun res!605468 () Bool)

(assert (=> b!1343488 (=> res!605468 e!860422)))

(declare-fun lambda!56453 () Int)

(declare-fun exists!422 (List!13807 Int) Bool)

(assert (=> b!1343488 (= res!605468 (not (exists!422 rules!2550 lambda!56453)))))

(assert (=> b!1343488 (exists!422 rules!2550 lambda!56453)))

(declare-fun lambda!56451 () Int)

(declare-datatypes ((Unit!19848 0))(
  ( (Unit!19849) )
))
(declare-fun lt!444438 () Unit!19848)

(declare-fun lt!444436 () Regex!3696)

(declare-fun lemmaMapContains!101 (List!13807 Int Regex!3696) Unit!19848)

(assert (=> b!1343488 (= lt!444438 (lemmaMapContains!101 rules!2550 lambda!56451 lt!444436))))

(declare-fun res!605478 () Bool)

(assert (=> start!120092 (=> (not res!605478) (not e!860413))))

(assert (=> start!120092 (= res!605478 (is-Lexer!2075 thiss!19762))))

(assert (=> start!120092 e!860413))

(assert (=> start!120092 true))

(declare-fun e!860424 () Bool)

(assert (=> start!120092 e!860424))

(declare-fun e!860415 () Bool)

(declare-fun inv!18078 (Token!4426) Bool)

(assert (=> start!120092 (and (inv!18078 t1!34) e!860415)))

(declare-fun e!860423 () Bool)

(assert (=> start!120092 (and (inv!18078 t2!34) e!860423)))

(declare-fun b!1343489 () Bool)

(declare-fun res!605463 () Bool)

(assert (=> b!1343489 (=> res!605463 e!860428)))

(declare-fun lt!444442 () List!13806)

(assert (=> b!1343489 (= res!605463 (not (contains!2514 lt!444442 lt!444430)))))

(declare-fun b!1343490 () Bool)

(declare-fun res!605460 () Bool)

(assert (=> b!1343490 (=> (not res!605460) (not e!860413))))

(assert (=> b!1343490 (= res!605460 (rulesProduceIndividualToken!1046 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1343491 () Bool)

(declare-fun res!605472 () Bool)

(assert (=> b!1343491 (=> (not res!605472) (not e!860412))))

(declare-fun sepAndNonSepRulesDisjointChars!755 (List!13807 List!13807) Bool)

(assert (=> b!1343491 (= res!605472 (sepAndNonSepRulesDisjointChars!755 rules!2550 rules!2550))))

(declare-fun b!1343492 () Bool)

(assert (=> b!1343492 (= e!860413 e!860412)))

(declare-fun res!605464 () Bool)

(assert (=> b!1343492 (=> (not res!605464) (not e!860412))))

(declare-fun size!11202 (BalanceConc!8992) Int)

(assert (=> b!1343492 (= res!605464 (> (size!11202 lt!444440) 0))))

(assert (=> b!1343492 (= lt!444440 (charsOf!1354 t2!34))))

(declare-fun b!1343493 () Bool)

(declare-fun res!605461 () Bool)

(assert (=> b!1343493 (=> (not res!605461) (not e!860413))))

(assert (=> b!1343493 (= res!605461 (not (= (isSeparator!2382 (rule!4127 t1!34)) (isSeparator!2382 (rule!4127 t2!34)))))))

(declare-fun b!1343494 () Bool)

(declare-fun res!605473 () Bool)

(assert (=> b!1343494 (=> res!605473 e!860428)))

(declare-fun matchR!1689 (Regex!3696 List!13806) Bool)

(assert (=> b!1343494 (= res!605473 (not (matchR!1689 lt!444432 lt!444442)))))

(declare-fun e!860429 () Bool)

(assert (=> b!1343495 (= e!860429 (and tp!389001 tp!388997))))

(declare-fun b!1343496 () Bool)

(declare-fun res!605470 () Bool)

(assert (=> b!1343496 (=> res!605470 e!860428)))

(assert (=> b!1343496 (= res!605470 (not (contains!2514 lt!444441 lt!444430)))))

(declare-fun e!860421 () Bool)

(assert (=> b!1343497 (= e!860428 e!860421)))

(declare-fun res!605459 () Bool)

(assert (=> b!1343497 (=> res!605459 e!860421)))

(declare-fun lambda!56452 () Int)

(declare-datatypes ((List!13808 0))(
  ( (Nil!13742) (Cons!13742 (h!19143 Regex!3696) (t!119641 List!13808)) )
))
(declare-fun exists!423 (List!13808 Int) Bool)

(declare-fun map!3034 (List!13807 Int) List!13808)

(assert (=> b!1343497 (= res!605459 (not (exists!423 (map!3034 rules!2550 lambda!56451) lambda!56452)))))

(declare-fun lt!444437 () List!13808)

(assert (=> b!1343497 (exists!423 lt!444437 lambda!56452)))

(declare-fun lt!444434 () Unit!19848)

(declare-fun matchRGenUnionSpec!113 (Regex!3696 List!13808 List!13806) Unit!19848)

(assert (=> b!1343497 (= lt!444434 (matchRGenUnionSpec!113 lt!444432 lt!444437 lt!444442))))

(assert (=> b!1343497 (= lt!444437 (map!3034 rules!2550 lambda!56451))))

(declare-fun b!1343498 () Bool)

(assert (=> b!1343498 (= e!860421 e!860416)))

(declare-fun res!605467 () Bool)

(assert (=> b!1343498 (=> res!605467 e!860416)))

(declare-fun contains!2515 (List!13808 Regex!3696) Bool)

(assert (=> b!1343498 (= res!605467 (not (contains!2515 (map!3034 rules!2550 lambda!56451) lt!444436)))))

(declare-fun getWitness!310 (List!13808 Int) Regex!3696)

(assert (=> b!1343498 (= lt!444436 (getWitness!310 (map!3034 rules!2550 lambda!56451) lambda!56452))))

(assert (=> b!1343499 (= e!860430 (and tp!389003 tp!388995))))

(declare-fun b!1343500 () Bool)

(declare-fun e!860433 () Bool)

(declare-fun tp!389004 () Bool)

(declare-fun inv!21 (TokenValue!2472) Bool)

(assert (=> b!1343500 (= e!860415 (and (inv!21 (value!77521 t1!34)) e!860433 tp!389004))))

(declare-fun b!1343501 () Bool)

(declare-fun tp!388996 () Bool)

(assert (=> b!1343501 (= e!860433 (and tp!388996 (inv!18074 (tag!2644 (rule!4127 t1!34))) (inv!18077 (transformation!2382 (rule!4127 t1!34))) e!860429))))

(declare-fun b!1343502 () Bool)

(declare-fun e!860432 () Bool)

(assert (=> b!1343502 (= e!860432 e!860427)))

(declare-fun res!605469 () Bool)

(assert (=> b!1343502 (=> res!605469 e!860427)))

(declare-fun getSuffix!544 (List!13806 List!13806) List!13806)

(assert (=> b!1343502 (= res!605469 (not (= lt!444442 (++!3521 lt!444441 (getSuffix!544 lt!444442 lt!444441)))))))

(declare-fun lambda!56450 () Int)

(declare-fun pickWitness!151 (Int) List!13806)

(assert (=> b!1343502 (= lt!444442 (pickWitness!151 lambda!56450))))

(declare-fun b!1343503 () Bool)

(declare-fun res!605462 () Bool)

(assert (=> b!1343503 (=> (not res!605462) (not e!860413))))

(declare-fun rulesInvariant!1947 (LexerInterface!2077 List!13807) Bool)

(assert (=> b!1343503 (= res!605462 (rulesInvariant!1947 thiss!19762 rules!2550))))

(declare-fun e!860425 () Bool)

(assert (=> b!1343504 (= e!860425 (and tp!388998 tp!388999))))

(assert (=> b!1343505 (= e!860420 (not e!860432))))

(declare-fun res!605465 () Bool)

(assert (=> b!1343505 (=> res!605465 e!860432)))

(declare-fun Exists!848 (Int) Bool)

(assert (=> b!1343505 (= res!605465 (not (Exists!848 lambda!56450)))))

(assert (=> b!1343505 (Exists!848 lambda!56450)))

(declare-fun lt!444439 () Unit!19848)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!166 (Regex!3696 List!13806) Unit!19848)

(assert (=> b!1343505 (= lt!444439 (lemmaPrefixMatchThenExistsStringThatMatches!166 lt!444432 lt!444441))))

(declare-fun b!1343506 () Bool)

(declare-fun res!605475 () Bool)

(assert (=> b!1343506 (=> (not res!605475) (not e!860412))))

(declare-fun separableTokensPredicate!360 (LexerInterface!2077 Token!4426 Token!4426 List!13807) Bool)

(assert (=> b!1343506 (= res!605475 (not (separableTokensPredicate!360 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun e!860426 () Bool)

(declare-fun b!1343507 () Bool)

(declare-fun tp!389005 () Bool)

(assert (=> b!1343507 (= e!860423 (and (inv!21 (value!77521 t2!34)) e!860426 tp!389005))))

(declare-fun b!1343508 () Bool)

(declare-fun tp!389002 () Bool)

(assert (=> b!1343508 (= e!860424 (and e!860418 tp!389002))))

(declare-fun b!1343509 () Bool)

(declare-datatypes ((List!13809 0))(
  ( (Nil!13743) (Cons!13743 (h!19144 Token!4426) (t!119642 List!13809)) )
))
(declare-datatypes ((IArray!9059 0))(
  ( (IArray!9060 (innerList!4587 List!13809)) )
))
(declare-datatypes ((Conc!4527 0))(
  ( (Node!4527 (left!11782 Conc!4527) (right!12112 Conc!4527) (csize!9284 Int) (cheight!4738 Int)) (Leaf!6915 (xs!7246 IArray!9059) (csize!9285 Int)) (Empty!4527) )
))
(declare-datatypes ((BalanceConc!8994 0))(
  ( (BalanceConc!8995 (c!219991 Conc!4527)) )
))
(declare-fun list!5237 (BalanceConc!8994) List!13809)

(declare-datatypes ((tuple2!13312 0))(
  ( (tuple2!13313 (_1!7542 BalanceConc!8994) (_2!7542 BalanceConc!8992)) )
))
(declare-fun lex!904 (LexerInterface!2077 List!13807 BalanceConc!8992) tuple2!13312)

(declare-fun print!843 (LexerInterface!2077 BalanceConc!8994) BalanceConc!8992)

(declare-fun singletonSeq!991 (Token!4426) BalanceConc!8994)

(assert (=> b!1343509 (= e!860422 (= (list!5237 (_1!7542 (lex!904 thiss!19762 rules!2550 (print!843 thiss!19762 (singletonSeq!991 t1!34))))) (Cons!13743 t1!34 Nil!13743)))))

(declare-fun lt!444429 () Rule!4564)

(declare-fun getWitness!311 (List!13807 Int) Rule!4564)

(assert (=> b!1343509 (= lt!444429 (getWitness!311 rules!2550 lambda!56453))))

(declare-fun tp!389000 () Bool)

(declare-fun b!1343510 () Bool)

(assert (=> b!1343510 (= e!860426 (and tp!389000 (inv!18074 (tag!2644 (rule!4127 t2!34))) (inv!18077 (transformation!2382 (rule!4127 t2!34))) e!860425))))

(declare-fun b!1343511 () Bool)

(declare-fun res!605474 () Bool)

(assert (=> b!1343511 (=> (not res!605474) (not e!860413))))

(declare-fun isEmpty!8196 (List!13807) Bool)

(assert (=> b!1343511 (= res!605474 (not (isEmpty!8196 rules!2550)))))

(declare-fun b!1343512 () Bool)

(declare-fun res!605477 () Bool)

(assert (=> b!1343512 (=> res!605477 e!860428)))

(assert (=> b!1343512 (= res!605477 (not (contains!2514 lt!444442 lt!444433)))))

(assert (= (and start!120092 res!605478) b!1343511))

(assert (= (and b!1343511 res!605474) b!1343503))

(assert (= (and b!1343503 res!605462) b!1343490))

(assert (= (and b!1343490 res!605460) b!1343486))

(assert (= (and b!1343486 res!605476) b!1343493))

(assert (= (and b!1343493 res!605461) b!1343492))

(assert (= (and b!1343492 res!605464) b!1343491))

(assert (= (and b!1343491 res!605472) b!1343506))

(assert (= (and b!1343506 res!605475) b!1343487))

(assert (= (and b!1343487 res!605471) b!1343505))

(assert (= (and b!1343505 (not res!605465)) b!1343502))

(assert (= (and b!1343502 (not res!605469)) b!1343485))

(assert (= (and b!1343485 (not res!605466)) b!1343512))

(assert (= (and b!1343512 (not res!605477)) b!1343496))

(assert (= (and b!1343496 (not res!605470)) b!1343489))

(assert (= (and b!1343489 (not res!605463)) b!1343494))

(assert (= (and b!1343494 (not res!605473)) b!1343497))

(assert (= (and b!1343497 (not res!605459)) b!1343498))

(assert (= (and b!1343498 (not res!605467)) b!1343488))

(assert (= (and b!1343488 (not res!605468)) b!1343509))

(assert (= b!1343484 b!1343499))

(assert (= b!1343508 b!1343484))

(assert (= (and start!120092 (is-Cons!13741 rules!2550)) b!1343508))

(assert (= b!1343501 b!1343495))

(assert (= b!1343500 b!1343501))

(assert (= start!120092 b!1343500))

(assert (= b!1343510 b!1343504))

(assert (= b!1343507 b!1343510))

(assert (= start!120092 b!1343507))

(declare-fun m!1502075 () Bool)

(assert (=> b!1343509 m!1502075))

(declare-fun m!1502077 () Bool)

(assert (=> b!1343509 m!1502077))

(declare-fun m!1502079 () Bool)

(assert (=> b!1343509 m!1502079))

(declare-fun m!1502081 () Bool)

(assert (=> b!1343509 m!1502081))

(assert (=> b!1343509 m!1502077))

(assert (=> b!1343509 m!1502081))

(declare-fun m!1502083 () Bool)

(assert (=> b!1343509 m!1502083))

(declare-fun m!1502085 () Bool)

(assert (=> b!1343512 m!1502085))

(declare-fun m!1502087 () Bool)

(assert (=> b!1343494 m!1502087))

(declare-fun m!1502089 () Bool)

(assert (=> b!1343510 m!1502089))

(declare-fun m!1502091 () Bool)

(assert (=> b!1343510 m!1502091))

(declare-fun m!1502093 () Bool)

(assert (=> b!1343490 m!1502093))

(declare-fun m!1502095 () Bool)

(assert (=> b!1343507 m!1502095))

(declare-fun m!1502097 () Bool)

(assert (=> b!1343484 m!1502097))

(declare-fun m!1502099 () Bool)

(assert (=> b!1343484 m!1502099))

(declare-fun m!1502101 () Bool)

(assert (=> b!1343485 m!1502101))

(declare-fun m!1502103 () Bool)

(assert (=> b!1343485 m!1502103))

(declare-fun m!1502105 () Bool)

(assert (=> b!1343498 m!1502105))

(assert (=> b!1343498 m!1502105))

(declare-fun m!1502107 () Bool)

(assert (=> b!1343498 m!1502107))

(assert (=> b!1343498 m!1502105))

(assert (=> b!1343498 m!1502105))

(declare-fun m!1502109 () Bool)

(assert (=> b!1343498 m!1502109))

(declare-fun m!1502111 () Bool)

(assert (=> start!120092 m!1502111))

(declare-fun m!1502113 () Bool)

(assert (=> start!120092 m!1502113))

(declare-fun m!1502115 () Bool)

(assert (=> b!1343487 m!1502115))

(declare-fun m!1502117 () Bool)

(assert (=> b!1343487 m!1502117))

(declare-fun m!1502119 () Bool)

(assert (=> b!1343487 m!1502119))

(declare-fun m!1502121 () Bool)

(assert (=> b!1343487 m!1502121))

(declare-fun m!1502123 () Bool)

(assert (=> b!1343487 m!1502123))

(declare-fun m!1502125 () Bool)

(assert (=> b!1343487 m!1502125))

(assert (=> b!1343497 m!1502105))

(declare-fun m!1502127 () Bool)

(assert (=> b!1343497 m!1502127))

(assert (=> b!1343497 m!1502105))

(declare-fun m!1502129 () Bool)

(assert (=> b!1343497 m!1502129))

(assert (=> b!1343497 m!1502105))

(declare-fun m!1502131 () Bool)

(assert (=> b!1343497 m!1502131))

(declare-fun m!1502133 () Bool)

(assert (=> b!1343503 m!1502133))

(declare-fun m!1502135 () Bool)

(assert (=> b!1343501 m!1502135))

(declare-fun m!1502137 () Bool)

(assert (=> b!1343501 m!1502137))

(declare-fun m!1502139 () Bool)

(assert (=> b!1343496 m!1502139))

(declare-fun m!1502141 () Bool)

(assert (=> b!1343491 m!1502141))

(declare-fun m!1502143 () Bool)

(assert (=> b!1343500 m!1502143))

(declare-fun m!1502145 () Bool)

(assert (=> b!1343489 m!1502145))

(declare-fun m!1502147 () Bool)

(assert (=> b!1343506 m!1502147))

(declare-fun m!1502149 () Bool)

(assert (=> b!1343511 m!1502149))

(declare-fun m!1502151 () Bool)

(assert (=> b!1343492 m!1502151))

(declare-fun m!1502153 () Bool)

(assert (=> b!1343492 m!1502153))

(declare-fun m!1502155 () Bool)

(assert (=> b!1343488 m!1502155))

(assert (=> b!1343488 m!1502155))

(declare-fun m!1502157 () Bool)

(assert (=> b!1343488 m!1502157))

(declare-fun m!1502159 () Bool)

(assert (=> b!1343505 m!1502159))

(assert (=> b!1343505 m!1502159))

(declare-fun m!1502161 () Bool)

(assert (=> b!1343505 m!1502161))

(declare-fun m!1502163 () Bool)

(assert (=> b!1343502 m!1502163))

(assert (=> b!1343502 m!1502163))

(declare-fun m!1502165 () Bool)

(assert (=> b!1343502 m!1502165))

(declare-fun m!1502167 () Bool)

(assert (=> b!1343502 m!1502167))

(declare-fun m!1502169 () Bool)

(assert (=> b!1343486 m!1502169))

(push 1)

(assert (not b!1343488))

(assert b_and!89979)

(assert (not b!1343506))

(assert (not b!1343487))

(assert (not b!1343490))

(assert (not b!1343489))

(assert (not b_next!33495))

(assert (not b!1343498))

(assert (not b!1343509))

(assert (not b!1343507))

(assert (not start!120092))

(assert (not b_next!33503))

(assert (not b_next!33497))

(assert (not b!1343500))

(assert b_and!89977)

(assert (not b!1343491))

(assert (not b!1343508))

(assert (not b_next!33499))

(assert (not b!1343485))

(assert (not b!1343512))

(assert (not b!1343502))

(assert (not b_next!33505))

(assert (not b!1343511))

(assert b_and!89985)

(assert (not b!1343486))

(assert (not b!1343496))

(assert (not b!1343484))

(assert b_and!89981)

(assert (not b!1343501))

(assert (not b!1343503))

(assert (not b!1343510))

(assert (not b_next!33501))

(assert (not b!1343497))

(assert (not b!1343492))

(assert b_and!89975)

(assert b_and!89983)

(assert (not b!1343494))

(assert (not b!1343505))

(check-sat)

(pop 1)

(push 1)

(assert b_and!89979)

(assert b_and!89985)

(assert (not b_next!33495))

(assert b_and!89981)

(assert (not b_next!33501))

(assert (not b_next!33503))

(assert (not b_next!33497))

(assert b_and!89977)

(assert (not b_next!33499))

(assert (not b_next!33505))

(assert b_and!89975)

(assert b_and!89983)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!378968 () Bool)

(declare-fun choose!8244 (Int) Bool)

(assert (=> d!378968 (= (Exists!848 lambda!56450) (choose!8244 lambda!56450))))

(declare-fun bs!332457 () Bool)

(assert (= bs!332457 d!378968))

(declare-fun m!1502267 () Bool)

(assert (=> bs!332457 m!1502267))

(assert (=> b!1343505 d!378968))

(declare-fun bs!332458 () Bool)

(declare-fun d!378970 () Bool)

(assert (= bs!332458 (and d!378970 b!1343505)))

(declare-fun lambda!56488 () Int)

(assert (=> bs!332458 (= lambda!56488 lambda!56450)))

(assert (=> d!378970 true))

(assert (=> d!378970 true))

(assert (=> d!378970 (Exists!848 lambda!56488)))

(declare-fun lt!444487 () Unit!19848)

(declare-fun choose!8245 (Regex!3696 List!13806) Unit!19848)

(assert (=> d!378970 (= lt!444487 (choose!8245 lt!444432 lt!444441))))

(declare-fun validRegex!1596 (Regex!3696) Bool)

(assert (=> d!378970 (validRegex!1596 lt!444432)))

(assert (=> d!378970 (= (lemmaPrefixMatchThenExistsStringThatMatches!166 lt!444432 lt!444441) lt!444487)))

(declare-fun bs!332459 () Bool)

(assert (= bs!332459 d!378970))

(declare-fun m!1502269 () Bool)

(assert (=> bs!332459 m!1502269))

(declare-fun m!1502271 () Bool)

(assert (=> bs!332459 m!1502271))

(declare-fun m!1502273 () Bool)

(assert (=> bs!332459 m!1502273))

(assert (=> b!1343505 d!378970))

(declare-fun d!378972 () Bool)

(assert (=> d!378972 (= (inv!18074 (tag!2644 (h!19142 rules!2550))) (= (mod (str.len (value!77520 (tag!2644 (h!19142 rules!2550)))) 2) 0))))

(assert (=> b!1343484 d!378972))

(declare-fun d!378974 () Bool)

(declare-fun res!605561 () Bool)

(declare-fun e!860519 () Bool)

(assert (=> d!378974 (=> (not res!605561) (not e!860519))))

(declare-fun semiInverseModEq!905 (Int Int) Bool)

(assert (=> d!378974 (= res!605561 (semiInverseModEq!905 (toChars!3484 (transformation!2382 (h!19142 rules!2550))) (toValue!3625 (transformation!2382 (h!19142 rules!2550)))))))

(assert (=> d!378974 (= (inv!18077 (transformation!2382 (h!19142 rules!2550))) e!860519)))

(declare-fun b!1343634 () Bool)

(declare-fun equivClasses!864 (Int Int) Bool)

(assert (=> b!1343634 (= e!860519 (equivClasses!864 (toChars!3484 (transformation!2382 (h!19142 rules!2550))) (toValue!3625 (transformation!2382 (h!19142 rules!2550)))))))

(assert (= (and d!378974 res!605561) b!1343634))

(declare-fun m!1502275 () Bool)

(assert (=> d!378974 m!1502275))

(declare-fun m!1502277 () Bool)

(assert (=> b!1343634 m!1502277))

(assert (=> b!1343484 d!378974))

(declare-fun d!378976 () Bool)

(declare-fun res!605565 () Bool)

(declare-fun e!860522 () Bool)

(assert (=> d!378976 (=> (not res!605565) (not e!860522))))

(declare-fun rulesValid!874 (LexerInterface!2077 List!13807) Bool)

(assert (=> d!378976 (= res!605565 (rulesValid!874 thiss!19762 rules!2550))))

(assert (=> d!378976 (= (rulesInvariant!1947 thiss!19762 rules!2550) e!860522)))

(declare-fun b!1343637 () Bool)

(declare-datatypes ((List!13815 0))(
  ( (Nil!13749) (Cons!13749 (h!19150 String!16598) (t!119678 List!13815)) )
))
(declare-fun noDuplicateTag!874 (LexerInterface!2077 List!13807 List!13815) Bool)

(assert (=> b!1343637 (= e!860522 (noDuplicateTag!874 thiss!19762 rules!2550 Nil!13749))))

(assert (= (and d!378976 res!605565) b!1343637))

(declare-fun m!1502279 () Bool)

(assert (=> d!378976 m!1502279))

(declare-fun m!1502281 () Bool)

(assert (=> b!1343637 m!1502281))

(assert (=> b!1343503 d!378976))

(declare-fun d!378978 () Bool)

(declare-fun res!605571 () Bool)

(declare-fun e!860525 () Bool)

(assert (=> d!378978 (=> (not res!605571) (not e!860525))))

(declare-fun isEmpty!8198 (List!13806) Bool)

(assert (=> d!378978 (= res!605571 (not (isEmpty!8198 (originalCharacters!3244 t1!34))))))

(assert (=> d!378978 (= (inv!18078 t1!34) e!860525)))

(declare-fun b!1343642 () Bool)

(declare-fun res!605572 () Bool)

(assert (=> b!1343642 (=> (not res!605572) (not e!860525))))

(declare-fun dynLambda!6063 (Int TokenValue!2472) BalanceConc!8992)

(assert (=> b!1343642 (= res!605572 (= (originalCharacters!3244 t1!34) (list!5236 (dynLambda!6063 (toChars!3484 (transformation!2382 (rule!4127 t1!34))) (value!77521 t1!34)))))))

(declare-fun b!1343643 () Bool)

(declare-fun size!11205 (List!13806) Int)

(assert (=> b!1343643 (= e!860525 (= (size!11201 t1!34) (size!11205 (originalCharacters!3244 t1!34))))))

(assert (= (and d!378978 res!605571) b!1343642))

(assert (= (and b!1343642 res!605572) b!1343643))

(declare-fun b_lambda!39783 () Bool)

(assert (=> (not b_lambda!39783) (not b!1343642)))

(declare-fun t!119649 () Bool)

(declare-fun tb!70689 () Bool)

(assert (=> (and b!1343504 (= (toChars!3484 (transformation!2382 (rule!4127 t2!34))) (toChars!3484 (transformation!2382 (rule!4127 t1!34)))) t!119649) tb!70689))

(declare-fun b!1343648 () Bool)

(declare-fun e!860528 () Bool)

(declare-fun tp!389045 () Bool)

(declare-fun inv!18081 (Conc!4526) Bool)

(assert (=> b!1343648 (= e!860528 (and (inv!18081 (c!219989 (dynLambda!6063 (toChars!3484 (transformation!2382 (rule!4127 t1!34))) (value!77521 t1!34)))) tp!389045))))

(declare-fun result!85938 () Bool)

(declare-fun inv!18082 (BalanceConc!8992) Bool)

(assert (=> tb!70689 (= result!85938 (and (inv!18082 (dynLambda!6063 (toChars!3484 (transformation!2382 (rule!4127 t1!34))) (value!77521 t1!34))) e!860528))))

(assert (= tb!70689 b!1343648))

(declare-fun m!1502283 () Bool)

(assert (=> b!1343648 m!1502283))

(declare-fun m!1502285 () Bool)

(assert (=> tb!70689 m!1502285))

(assert (=> b!1343642 t!119649))

(declare-fun b_and!89999 () Bool)

(assert (= b_and!89977 (and (=> t!119649 result!85938) b_and!89999)))

(declare-fun t!119651 () Bool)

(declare-fun tb!70691 () Bool)

(assert (=> (and b!1343495 (= (toChars!3484 (transformation!2382 (rule!4127 t1!34))) (toChars!3484 (transformation!2382 (rule!4127 t1!34)))) t!119651) tb!70691))

(declare-fun result!85942 () Bool)

(assert (= result!85942 result!85938))

(assert (=> b!1343642 t!119651))

(declare-fun b_and!90001 () Bool)

(assert (= b_and!89981 (and (=> t!119651 result!85942) b_and!90001)))

(declare-fun t!119653 () Bool)

(declare-fun tb!70693 () Bool)

(assert (=> (and b!1343499 (= (toChars!3484 (transformation!2382 (h!19142 rules!2550))) (toChars!3484 (transformation!2382 (rule!4127 t1!34)))) t!119653) tb!70693))

(declare-fun result!85944 () Bool)

(assert (= result!85944 result!85938))

(assert (=> b!1343642 t!119653))

(declare-fun b_and!90003 () Bool)

(assert (= b_and!89985 (and (=> t!119653 result!85944) b_and!90003)))

(declare-fun m!1502287 () Bool)

(assert (=> d!378978 m!1502287))

(declare-fun m!1502289 () Bool)

(assert (=> b!1343642 m!1502289))

(assert (=> b!1343642 m!1502289))

(declare-fun m!1502291 () Bool)

(assert (=> b!1343642 m!1502291))

(declare-fun m!1502293 () Bool)

(assert (=> b!1343643 m!1502293))

(assert (=> start!120092 d!378978))

(declare-fun d!378980 () Bool)

(declare-fun res!605573 () Bool)

(declare-fun e!860529 () Bool)

(assert (=> d!378980 (=> (not res!605573) (not e!860529))))

(assert (=> d!378980 (= res!605573 (not (isEmpty!8198 (originalCharacters!3244 t2!34))))))

(assert (=> d!378980 (= (inv!18078 t2!34) e!860529)))

(declare-fun b!1343649 () Bool)

(declare-fun res!605574 () Bool)

(assert (=> b!1343649 (=> (not res!605574) (not e!860529))))

(assert (=> b!1343649 (= res!605574 (= (originalCharacters!3244 t2!34) (list!5236 (dynLambda!6063 (toChars!3484 (transformation!2382 (rule!4127 t2!34))) (value!77521 t2!34)))))))

(declare-fun b!1343650 () Bool)

(assert (=> b!1343650 (= e!860529 (= (size!11201 t2!34) (size!11205 (originalCharacters!3244 t2!34))))))

(assert (= (and d!378980 res!605573) b!1343649))

(assert (= (and b!1343649 res!605574) b!1343650))

(declare-fun b_lambda!39785 () Bool)

(assert (=> (not b_lambda!39785) (not b!1343649)))

(declare-fun t!119655 () Bool)

(declare-fun tb!70695 () Bool)

(assert (=> (and b!1343504 (= (toChars!3484 (transformation!2382 (rule!4127 t2!34))) (toChars!3484 (transformation!2382 (rule!4127 t2!34)))) t!119655) tb!70695))

(declare-fun b!1343651 () Bool)

(declare-fun e!860530 () Bool)

(declare-fun tp!389046 () Bool)

(assert (=> b!1343651 (= e!860530 (and (inv!18081 (c!219989 (dynLambda!6063 (toChars!3484 (transformation!2382 (rule!4127 t2!34))) (value!77521 t2!34)))) tp!389046))))

(declare-fun result!85946 () Bool)

(assert (=> tb!70695 (= result!85946 (and (inv!18082 (dynLambda!6063 (toChars!3484 (transformation!2382 (rule!4127 t2!34))) (value!77521 t2!34))) e!860530))))

(assert (= tb!70695 b!1343651))

(declare-fun m!1502295 () Bool)

(assert (=> b!1343651 m!1502295))

(declare-fun m!1502297 () Bool)

(assert (=> tb!70695 m!1502297))

(assert (=> b!1343649 t!119655))

(declare-fun b_and!90005 () Bool)

(assert (= b_and!89999 (and (=> t!119655 result!85946) b_and!90005)))

(declare-fun tb!70697 () Bool)

(declare-fun t!119657 () Bool)

(assert (=> (and b!1343495 (= (toChars!3484 (transformation!2382 (rule!4127 t1!34))) (toChars!3484 (transformation!2382 (rule!4127 t2!34)))) t!119657) tb!70697))

(declare-fun result!85948 () Bool)

(assert (= result!85948 result!85946))

(assert (=> b!1343649 t!119657))

(declare-fun b_and!90007 () Bool)

(assert (= b_and!90001 (and (=> t!119657 result!85948) b_and!90007)))

(declare-fun t!119659 () Bool)

(declare-fun tb!70699 () Bool)

(assert (=> (and b!1343499 (= (toChars!3484 (transformation!2382 (h!19142 rules!2550))) (toChars!3484 (transformation!2382 (rule!4127 t2!34)))) t!119659) tb!70699))

(declare-fun result!85950 () Bool)

(assert (= result!85950 result!85946))

(assert (=> b!1343649 t!119659))

(declare-fun b_and!90009 () Bool)

(assert (= b_and!90003 (and (=> t!119659 result!85950) b_and!90009)))

(declare-fun m!1502299 () Bool)

(assert (=> d!378980 m!1502299))

(declare-fun m!1502301 () Bool)

(assert (=> b!1343649 m!1502301))

(assert (=> b!1343649 m!1502301))

(declare-fun m!1502303 () Bool)

(assert (=> b!1343649 m!1502303))

(declare-fun m!1502305 () Bool)

(assert (=> b!1343650 m!1502305))

(assert (=> start!120092 d!378980))

(declare-fun b!1343662 () Bool)

(declare-fun e!860537 () Bool)

(declare-fun inv!15 (TokenValue!2472) Bool)

(assert (=> b!1343662 (= e!860537 (inv!15 (value!77521 t2!34)))))

(declare-fun b!1343663 () Bool)

(declare-fun e!860539 () Bool)

(declare-fun inv!17 (TokenValue!2472) Bool)

(assert (=> b!1343663 (= e!860539 (inv!17 (value!77521 t2!34)))))

(declare-fun d!378982 () Bool)

(declare-fun c!220000 () Bool)

(assert (=> d!378982 (= c!220000 (is-IntegerValue!7416 (value!77521 t2!34)))))

(declare-fun e!860538 () Bool)

(assert (=> d!378982 (= (inv!21 (value!77521 t2!34)) e!860538)))

(declare-fun b!1343664 () Bool)

(declare-fun res!605577 () Bool)

(assert (=> b!1343664 (=> res!605577 e!860537)))

(assert (=> b!1343664 (= res!605577 (not (is-IntegerValue!7418 (value!77521 t2!34))))))

(assert (=> b!1343664 (= e!860539 e!860537)))

(declare-fun b!1343665 () Bool)

(declare-fun inv!16 (TokenValue!2472) Bool)

(assert (=> b!1343665 (= e!860538 (inv!16 (value!77521 t2!34)))))

(declare-fun b!1343666 () Bool)

(assert (=> b!1343666 (= e!860538 e!860539)))

(declare-fun c!219999 () Bool)

(assert (=> b!1343666 (= c!219999 (is-IntegerValue!7417 (value!77521 t2!34)))))

(assert (= (and d!378982 c!220000) b!1343665))

(assert (= (and d!378982 (not c!220000)) b!1343666))

(assert (= (and b!1343666 c!219999) b!1343663))

(assert (= (and b!1343666 (not c!219999)) b!1343664))

(assert (= (and b!1343664 (not res!605577)) b!1343662))

(declare-fun m!1502307 () Bool)

(assert (=> b!1343662 m!1502307))

(declare-fun m!1502309 () Bool)

(assert (=> b!1343663 m!1502309))

(declare-fun m!1502311 () Bool)

(assert (=> b!1343665 m!1502311))

(assert (=> b!1343507 d!378982))

(declare-fun d!378984 () Bool)

(declare-fun lt!444501 () Bool)

(declare-fun e!860560 () Bool)

(assert (=> d!378984 (= lt!444501 e!860560)))

(declare-fun res!605594 () Bool)

(assert (=> d!378984 (=> (not res!605594) (not e!860560))))

(assert (=> d!378984 (= res!605594 (= (list!5237 (_1!7542 (lex!904 thiss!19762 rules!2550 (print!843 thiss!19762 (singletonSeq!991 t2!34))))) (list!5237 (singletonSeq!991 t2!34))))))

(declare-fun e!860559 () Bool)

(assert (=> d!378984 (= lt!444501 e!860559)))

(declare-fun res!605595 () Bool)

(assert (=> d!378984 (=> (not res!605595) (not e!860559))))

(declare-fun lt!444502 () tuple2!13312)

(declare-fun size!11206 (BalanceConc!8994) Int)

(assert (=> d!378984 (= res!605595 (= (size!11206 (_1!7542 lt!444502)) 1))))

(assert (=> d!378984 (= lt!444502 (lex!904 thiss!19762 rules!2550 (print!843 thiss!19762 (singletonSeq!991 t2!34))))))

(assert (=> d!378984 (not (isEmpty!8196 rules!2550))))

(assert (=> d!378984 (= (rulesProduceIndividualToken!1046 thiss!19762 rules!2550 t2!34) lt!444501)))

(declare-fun b!1343699 () Bool)

(declare-fun res!605593 () Bool)

(assert (=> b!1343699 (=> (not res!605593) (not e!860559))))

(declare-fun apply!3262 (BalanceConc!8994 Int) Token!4426)

(assert (=> b!1343699 (= res!605593 (= (apply!3262 (_1!7542 lt!444502) 0) t2!34))))

(declare-fun b!1343700 () Bool)

(declare-fun isEmpty!8199 (BalanceConc!8992) Bool)

(assert (=> b!1343700 (= e!860559 (isEmpty!8199 (_2!7542 lt!444502)))))

(declare-fun b!1343701 () Bool)

(assert (=> b!1343701 (= e!860560 (isEmpty!8199 (_2!7542 (lex!904 thiss!19762 rules!2550 (print!843 thiss!19762 (singletonSeq!991 t2!34))))))))

(assert (= (and d!378984 res!605595) b!1343699))

(assert (= (and b!1343699 res!605593) b!1343700))

(assert (= (and d!378984 res!605594) b!1343701))

(declare-fun m!1502355 () Bool)

(assert (=> d!378984 m!1502355))

(declare-fun m!1502357 () Bool)

(assert (=> d!378984 m!1502357))

(declare-fun m!1502359 () Bool)

(assert (=> d!378984 m!1502359))

(assert (=> d!378984 m!1502149))

(declare-fun m!1502361 () Bool)

(assert (=> d!378984 m!1502361))

(declare-fun m!1502363 () Bool)

(assert (=> d!378984 m!1502363))

(assert (=> d!378984 m!1502363))

(declare-fun m!1502365 () Bool)

(assert (=> d!378984 m!1502365))

(assert (=> d!378984 m!1502363))

(assert (=> d!378984 m!1502357))

(declare-fun m!1502367 () Bool)

(assert (=> b!1343699 m!1502367))

(declare-fun m!1502369 () Bool)

(assert (=> b!1343700 m!1502369))

(assert (=> b!1343701 m!1502363))

(assert (=> b!1343701 m!1502363))

(assert (=> b!1343701 m!1502357))

(assert (=> b!1343701 m!1502357))

(assert (=> b!1343701 m!1502359))

(declare-fun m!1502371 () Bool)

(assert (=> b!1343701 m!1502371))

(assert (=> b!1343486 d!378984))

(declare-fun d!378998 () Bool)

(declare-fun lt!444508 () Bool)

(declare-fun content!1954 (List!13806) (Set C!7682))

(assert (=> d!378998 (= lt!444508 (set.member lt!444433 (content!1954 lt!444441)))))

(declare-fun e!860566 () Bool)

(assert (=> d!378998 (= lt!444508 e!860566)))

(declare-fun res!605601 () Bool)

(assert (=> d!378998 (=> (not res!605601) (not e!860566))))

(assert (=> d!378998 (= res!605601 (is-Cons!13740 lt!444441))))

(assert (=> d!378998 (= (contains!2514 lt!444441 lt!444433) lt!444508)))

(declare-fun b!1343706 () Bool)

(declare-fun e!860565 () Bool)

(assert (=> b!1343706 (= e!860566 e!860565)))

(declare-fun res!605600 () Bool)

(assert (=> b!1343706 (=> res!605600 e!860565)))

(assert (=> b!1343706 (= res!605600 (= (h!19141 lt!444441) lt!444433))))

(declare-fun b!1343707 () Bool)

(assert (=> b!1343707 (= e!860565 (contains!2514 (t!119639 lt!444441) lt!444433))))

(assert (= (and d!378998 res!605601) b!1343706))

(assert (= (and b!1343706 (not res!605600)) b!1343707))

(declare-fun m!1502373 () Bool)

(assert (=> d!378998 m!1502373))

(declare-fun m!1502375 () Bool)

(assert (=> d!378998 m!1502375))

(declare-fun m!1502377 () Bool)

(assert (=> b!1343707 m!1502377))

(assert (=> b!1343485 d!378998))

(declare-fun d!379000 () Bool)

(declare-fun lt!444513 () C!7682)

(declare-fun apply!3263 (List!13806 Int) C!7682)

(assert (=> d!379000 (= lt!444513 (apply!3263 (list!5236 lt!444435) 0))))

(declare-fun apply!3264 (Conc!4526 Int) C!7682)

(assert (=> d!379000 (= lt!444513 (apply!3264 (c!219989 lt!444435) 0))))

(declare-fun e!860573 () Bool)

(assert (=> d!379000 e!860573))

(declare-fun res!605608 () Bool)

(assert (=> d!379000 (=> (not res!605608) (not e!860573))))

(assert (=> d!379000 (= res!605608 (<= 0 0))))

(assert (=> d!379000 (= (apply!3260 lt!444435 0) lt!444513)))

(declare-fun b!1343714 () Bool)

(assert (=> b!1343714 (= e!860573 (< 0 (size!11202 lt!444435)))))

(assert (= (and d!379000 res!605608) b!1343714))

(assert (=> d!379000 m!1502123))

(assert (=> d!379000 m!1502123))

(declare-fun m!1502385 () Bool)

(assert (=> d!379000 m!1502385))

(declare-fun m!1502387 () Bool)

(assert (=> d!379000 m!1502387))

(declare-fun m!1502389 () Bool)

(assert (=> b!1343714 m!1502389))

(assert (=> b!1343485 d!379000))

(declare-fun d!379004 () Bool)

(declare-fun prefixMatchZipperSequence!223 (Regex!3696 BalanceConc!8992) Bool)

(declare-fun ++!3523 (BalanceConc!8992 BalanceConc!8992) BalanceConc!8992)

(declare-fun singletonSeq!993 (C!7682) BalanceConc!8992)

(assert (=> d!379004 (= (separableTokensPredicate!360 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!223 (rulesRegex!265 thiss!19762 rules!2550) (++!3523 (charsOf!1354 t1!34) (singletonSeq!993 (apply!3260 (charsOf!1354 t2!34) 0))))))))

(declare-fun bs!332463 () Bool)

(assert (= bs!332463 d!379004))

(assert (=> bs!332463 m!1502153))

(assert (=> bs!332463 m!1502115))

(assert (=> bs!332463 m!1502125))

(declare-fun m!1502405 () Bool)

(assert (=> bs!332463 m!1502405))

(declare-fun m!1502407 () Bool)

(assert (=> bs!332463 m!1502407))

(declare-fun m!1502409 () Bool)

(assert (=> bs!332463 m!1502409))

(declare-fun m!1502411 () Bool)

(assert (=> bs!332463 m!1502411))

(assert (=> bs!332463 m!1502115))

(assert (=> bs!332463 m!1502411))

(assert (=> bs!332463 m!1502405))

(assert (=> bs!332463 m!1502125))

(assert (=> bs!332463 m!1502153))

(assert (=> bs!332463 m!1502409))

(assert (=> b!1343506 d!379004))

(declare-fun b!1343726 () Bool)

(declare-fun e!860585 () Bool)

(assert (=> b!1343726 (= e!860585 (inv!15 (value!77521 t1!34)))))

(declare-fun b!1343727 () Bool)

(declare-fun e!860587 () Bool)

(assert (=> b!1343727 (= e!860587 (inv!17 (value!77521 t1!34)))))

(declare-fun d!379014 () Bool)

(declare-fun c!220008 () Bool)

(assert (=> d!379014 (= c!220008 (is-IntegerValue!7416 (value!77521 t1!34)))))

(declare-fun e!860586 () Bool)

(assert (=> d!379014 (= (inv!21 (value!77521 t1!34)) e!860586)))

(declare-fun b!1343728 () Bool)

(declare-fun res!605620 () Bool)

(assert (=> b!1343728 (=> res!605620 e!860585)))

(assert (=> b!1343728 (= res!605620 (not (is-IntegerValue!7418 (value!77521 t1!34))))))

(assert (=> b!1343728 (= e!860587 e!860585)))

(declare-fun b!1343729 () Bool)

(assert (=> b!1343729 (= e!860586 (inv!16 (value!77521 t1!34)))))

(declare-fun b!1343730 () Bool)

(assert (=> b!1343730 (= e!860586 e!860587)))

(declare-fun c!220007 () Bool)

(assert (=> b!1343730 (= c!220007 (is-IntegerValue!7417 (value!77521 t1!34)))))

(assert (= (and d!379014 c!220008) b!1343729))

(assert (= (and d!379014 (not c!220008)) b!1343730))

(assert (= (and b!1343730 c!220007) b!1343727))

(assert (= (and b!1343730 (not c!220007)) b!1343728))

(assert (= (and b!1343728 (not res!605620)) b!1343726))

(declare-fun m!1502413 () Bool)

(assert (=> b!1343726 m!1502413))

(declare-fun m!1502415 () Bool)

(assert (=> b!1343727 m!1502415))

(declare-fun m!1502417 () Bool)

(assert (=> b!1343729 m!1502417))

(assert (=> b!1343500 d!379014))

(declare-fun lt!444517 () Bool)

(declare-fun d!379016 () Bool)

(declare-fun content!1955 (List!13808) (Set Regex!3696))

(assert (=> d!379016 (= lt!444517 (set.member lt!444436 (content!1955 (map!3034 rules!2550 lambda!56451))))))

(declare-fun e!860595 () Bool)

(assert (=> d!379016 (= lt!444517 e!860595)))

(declare-fun res!605627 () Bool)

(assert (=> d!379016 (=> (not res!605627) (not e!860595))))

(assert (=> d!379016 (= res!605627 (is-Cons!13742 (map!3034 rules!2550 lambda!56451)))))

(assert (=> d!379016 (= (contains!2515 (map!3034 rules!2550 lambda!56451) lt!444436) lt!444517)))

(declare-fun b!1343737 () Bool)

(declare-fun e!860594 () Bool)

(assert (=> b!1343737 (= e!860595 e!860594)))

(declare-fun res!605628 () Bool)

(assert (=> b!1343737 (=> res!605628 e!860594)))

(assert (=> b!1343737 (= res!605628 (= (h!19143 (map!3034 rules!2550 lambda!56451)) lt!444436))))

(declare-fun b!1343738 () Bool)

(assert (=> b!1343738 (= e!860594 (contains!2515 (t!119641 (map!3034 rules!2550 lambda!56451)) lt!444436))))

(assert (= (and d!379016 res!605627) b!1343737))

(assert (= (and b!1343737 (not res!605628)) b!1343738))

(assert (=> d!379016 m!1502105))

(declare-fun m!1502419 () Bool)

(assert (=> d!379016 m!1502419))

(declare-fun m!1502421 () Bool)

(assert (=> d!379016 m!1502421))

(declare-fun m!1502423 () Bool)

(assert (=> b!1343738 m!1502423))

(assert (=> b!1343498 d!379016))

(declare-fun d!379018 () Bool)

(declare-fun lt!444520 () List!13808)

(declare-fun size!11207 (List!13808) Int)

(declare-fun size!11208 (List!13807) Int)

(assert (=> d!379018 (= (size!11207 lt!444520) (size!11208 rules!2550))))

(declare-fun e!860599 () List!13808)

(assert (=> d!379018 (= lt!444520 e!860599)))

(declare-fun c!220011 () Bool)

(assert (=> d!379018 (= c!220011 (is-Nil!13741 rules!2550))))

(assert (=> d!379018 (= (map!3034 rules!2550 lambda!56451) lt!444520)))

(declare-fun b!1343744 () Bool)

(assert (=> b!1343744 (= e!860599 Nil!13742)))

(declare-fun b!1343745 () Bool)

(declare-fun $colon$colon!178 (List!13808 Regex!3696) List!13808)

(declare-fun dynLambda!6064 (Int Rule!4564) Regex!3696)

(assert (=> b!1343745 (= e!860599 ($colon$colon!178 (map!3034 (t!119640 rules!2550) lambda!56451) (dynLambda!6064 lambda!56451 (h!19142 rules!2550))))))

(assert (= (and d!379018 c!220011) b!1343744))

(assert (= (and d!379018 (not c!220011)) b!1343745))

(declare-fun b_lambda!39789 () Bool)

(assert (=> (not b_lambda!39789) (not b!1343745)))

(declare-fun m!1502429 () Bool)

(assert (=> d!379018 m!1502429))

(declare-fun m!1502431 () Bool)

(assert (=> d!379018 m!1502431))

(declare-fun m!1502433 () Bool)

(assert (=> b!1343745 m!1502433))

(declare-fun m!1502435 () Bool)

(assert (=> b!1343745 m!1502435))

(assert (=> b!1343745 m!1502433))

(assert (=> b!1343745 m!1502435))

(declare-fun m!1502437 () Bool)

(assert (=> b!1343745 m!1502437))

(assert (=> b!1343498 d!379018))

(declare-fun b!1343759 () Bool)

(declare-fun e!860612 () Regex!3696)

(assert (=> b!1343759 (= e!860612 (h!19143 (map!3034 rules!2550 lambda!56451)))))

(declare-fun b!1343760 () Bool)

(declare-fun lt!444530 () Unit!19848)

(declare-fun Unit!19853 () Unit!19848)

(assert (=> b!1343760 (= lt!444530 Unit!19853)))

(assert (=> b!1343760 false))

(declare-fun e!860609 () Regex!3696)

(declare-fun head!2388 (List!13808) Regex!3696)

(assert (=> b!1343760 (= e!860609 (head!2388 (map!3034 rules!2550 lambda!56451)))))

(declare-fun d!379022 () Bool)

(declare-fun e!860611 () Bool)

(assert (=> d!379022 e!860611))

(declare-fun res!605635 () Bool)

(assert (=> d!379022 (=> (not res!605635) (not e!860611))))

(declare-fun lt!444529 () Regex!3696)

(declare-fun dynLambda!6065 (Int Regex!3696) Bool)

(assert (=> d!379022 (= res!605635 (dynLambda!6065 lambda!56452 lt!444529))))

(assert (=> d!379022 (= lt!444529 e!860612)))

(declare-fun c!220017 () Bool)

(declare-fun e!860610 () Bool)

(assert (=> d!379022 (= c!220017 e!860610)))

(declare-fun res!605634 () Bool)

(assert (=> d!379022 (=> (not res!605634) (not e!860610))))

(assert (=> d!379022 (= res!605634 (is-Cons!13742 (map!3034 rules!2550 lambda!56451)))))

(assert (=> d!379022 (exists!423 (map!3034 rules!2550 lambda!56451) lambda!56452)))

(assert (=> d!379022 (= (getWitness!310 (map!3034 rules!2550 lambda!56451) lambda!56452) lt!444529)))

(declare-fun b!1343761 () Bool)

(assert (=> b!1343761 (= e!860609 (getWitness!310 (t!119641 (map!3034 rules!2550 lambda!56451)) lambda!56452))))

(declare-fun b!1343762 () Bool)

(assert (=> b!1343762 (= e!860610 (dynLambda!6065 lambda!56452 (h!19143 (map!3034 rules!2550 lambda!56451))))))

(declare-fun b!1343763 () Bool)

(assert (=> b!1343763 (= e!860612 e!860609)))

(declare-fun c!220016 () Bool)

(assert (=> b!1343763 (= c!220016 (is-Cons!13742 (map!3034 rules!2550 lambda!56451)))))

(declare-fun b!1343764 () Bool)

(assert (=> b!1343764 (= e!860611 (contains!2515 (map!3034 rules!2550 lambda!56451) lt!444529))))

(assert (= (and d!379022 res!605634) b!1343762))

(assert (= (and d!379022 c!220017) b!1343759))

(assert (= (and d!379022 (not c!220017)) b!1343763))

(assert (= (and b!1343763 c!220016) b!1343761))

(assert (= (and b!1343763 (not c!220016)) b!1343760))

(assert (= (and d!379022 res!605635) b!1343764))

(declare-fun b_lambda!39793 () Bool)

(assert (=> (not b_lambda!39793) (not d!379022)))

(declare-fun b_lambda!39795 () Bool)

(assert (=> (not b_lambda!39795) (not b!1343762)))

(assert (=> b!1343764 m!1502105))

(declare-fun m!1502451 () Bool)

(assert (=> b!1343764 m!1502451))

(declare-fun m!1502453 () Bool)

(assert (=> d!379022 m!1502453))

(assert (=> d!379022 m!1502105))

(assert (=> d!379022 m!1502127))

(declare-fun m!1502455 () Bool)

(assert (=> b!1343762 m!1502455))

(declare-fun m!1502457 () Bool)

(assert (=> b!1343761 m!1502457))

(assert (=> b!1343760 m!1502105))

(declare-fun m!1502459 () Bool)

(assert (=> b!1343760 m!1502459))

(assert (=> b!1343498 d!379022))

(declare-fun lt!444533 () List!13806)

(declare-fun e!860624 () Bool)

(declare-fun b!1343786 () Bool)

(assert (=> b!1343786 (= e!860624 (or (not (= (getSuffix!544 lt!444442 lt!444441) Nil!13740)) (= lt!444533 lt!444441)))))

(declare-fun d!379028 () Bool)

(assert (=> d!379028 e!860624))

(declare-fun res!605642 () Bool)

(assert (=> d!379028 (=> (not res!605642) (not e!860624))))

(assert (=> d!379028 (= res!605642 (= (content!1954 lt!444533) (set.union (content!1954 lt!444441) (content!1954 (getSuffix!544 lt!444442 lt!444441)))))))

(declare-fun e!860623 () List!13806)

(assert (=> d!379028 (= lt!444533 e!860623)))

(declare-fun c!220024 () Bool)

(assert (=> d!379028 (= c!220024 (is-Nil!13740 lt!444441))))

(assert (=> d!379028 (= (++!3521 lt!444441 (getSuffix!544 lt!444442 lt!444441)) lt!444533)))

(declare-fun b!1343785 () Bool)

(declare-fun res!605643 () Bool)

(assert (=> b!1343785 (=> (not res!605643) (not e!860624))))

(assert (=> b!1343785 (= res!605643 (= (size!11205 lt!444533) (+ (size!11205 lt!444441) (size!11205 (getSuffix!544 lt!444442 lt!444441)))))))

(declare-fun b!1343784 () Bool)

(assert (=> b!1343784 (= e!860623 (Cons!13740 (h!19141 lt!444441) (++!3521 (t!119639 lt!444441) (getSuffix!544 lt!444442 lt!444441))))))

(declare-fun b!1343783 () Bool)

(assert (=> b!1343783 (= e!860623 (getSuffix!544 lt!444442 lt!444441))))

(assert (= (and d!379028 c!220024) b!1343783))

(assert (= (and d!379028 (not c!220024)) b!1343784))

(assert (= (and d!379028 res!605642) b!1343785))

(assert (= (and b!1343785 res!605643) b!1343786))

(declare-fun m!1502461 () Bool)

(assert (=> d!379028 m!1502461))

(assert (=> d!379028 m!1502373))

(assert (=> d!379028 m!1502163))

(declare-fun m!1502463 () Bool)

(assert (=> d!379028 m!1502463))

(declare-fun m!1502465 () Bool)

(assert (=> b!1343785 m!1502465))

(declare-fun m!1502467 () Bool)

(assert (=> b!1343785 m!1502467))

(assert (=> b!1343785 m!1502163))

(declare-fun m!1502469 () Bool)

(assert (=> b!1343785 m!1502469))

(assert (=> b!1343784 m!1502163))

(declare-fun m!1502471 () Bool)

(assert (=> b!1343784 m!1502471))

(assert (=> b!1343502 d!379028))

(declare-fun d!379030 () Bool)

(declare-fun lt!444536 () List!13806)

(assert (=> d!379030 (= (++!3521 lt!444441 lt!444536) lt!444442)))

(declare-fun e!860630 () List!13806)

(assert (=> d!379030 (= lt!444536 e!860630)))

(declare-fun c!220029 () Bool)

(assert (=> d!379030 (= c!220029 (is-Cons!13740 lt!444441))))

(assert (=> d!379030 (>= (size!11205 lt!444442) (size!11205 lt!444441))))

(assert (=> d!379030 (= (getSuffix!544 lt!444442 lt!444441) lt!444536)))

(declare-fun b!1343796 () Bool)

(declare-fun tail!1935 (List!13806) List!13806)

(assert (=> b!1343796 (= e!860630 (getSuffix!544 (tail!1935 lt!444442) (t!119639 lt!444441)))))

(declare-fun b!1343797 () Bool)

(assert (=> b!1343797 (= e!860630 lt!444442)))

(assert (= (and d!379030 c!220029) b!1343796))

(assert (= (and d!379030 (not c!220029)) b!1343797))

(declare-fun m!1502479 () Bool)

(assert (=> d!379030 m!1502479))

(declare-fun m!1502481 () Bool)

(assert (=> d!379030 m!1502481))

(assert (=> d!379030 m!1502467))

(declare-fun m!1502483 () Bool)

(assert (=> b!1343796 m!1502483))

(assert (=> b!1343796 m!1502483))

(declare-fun m!1502485 () Bool)

(assert (=> b!1343796 m!1502485))

(assert (=> b!1343502 d!379030))

(declare-fun d!379034 () Bool)

(declare-fun lt!444539 () List!13806)

(declare-fun dynLambda!6066 (Int List!13806) Bool)

(assert (=> d!379034 (dynLambda!6066 lambda!56450 lt!444539)))

(declare-fun choose!8246 (Int) List!13806)

(assert (=> d!379034 (= lt!444539 (choose!8246 lambda!56450))))

(assert (=> d!379034 (Exists!848 lambda!56450)))

(assert (=> d!379034 (= (pickWitness!151 lambda!56450) lt!444539)))

(declare-fun b_lambda!39797 () Bool)

(assert (=> (not b_lambda!39797) (not d!379034)))

(declare-fun bs!332465 () Bool)

(assert (= bs!332465 d!379034))

(declare-fun m!1502487 () Bool)

(assert (=> bs!332465 m!1502487))

(declare-fun m!1502489 () Bool)

(assert (=> bs!332465 m!1502489))

(assert (=> bs!332465 m!1502159))

(assert (=> b!1343502 d!379034))

(declare-fun d!379036 () Bool)

(assert (=> d!379036 (= (inv!18074 (tag!2644 (rule!4127 t1!34))) (= (mod (str.len (value!77520 (tag!2644 (rule!4127 t1!34)))) 2) 0))))

(assert (=> b!1343501 d!379036))

(declare-fun d!379038 () Bool)

(declare-fun res!605645 () Bool)

(declare-fun e!860631 () Bool)

(assert (=> d!379038 (=> (not res!605645) (not e!860631))))

(assert (=> d!379038 (= res!605645 (semiInverseModEq!905 (toChars!3484 (transformation!2382 (rule!4127 t1!34))) (toValue!3625 (transformation!2382 (rule!4127 t1!34)))))))

(assert (=> d!379038 (= (inv!18077 (transformation!2382 (rule!4127 t1!34))) e!860631)))

(declare-fun b!1343798 () Bool)

(assert (=> b!1343798 (= e!860631 (equivClasses!864 (toChars!3484 (transformation!2382 (rule!4127 t1!34))) (toValue!3625 (transformation!2382 (rule!4127 t1!34)))))))

(assert (= (and d!379038 res!605645) b!1343798))

(declare-fun m!1502491 () Bool)

(assert (=> d!379038 m!1502491))

(declare-fun m!1502493 () Bool)

(assert (=> b!1343798 m!1502493))

(assert (=> b!1343501 d!379038))

(declare-fun b!1343855 () Bool)

(declare-fun e!860661 () Bool)

(declare-fun head!2389 (List!13806) C!7682)

(assert (=> b!1343855 (= e!860661 (= (head!2389 lt!444442) (c!219990 lt!444432)))))

(declare-fun b!1343856 () Bool)

(declare-fun e!860665 () Bool)

(declare-fun e!860660 () Bool)

(assert (=> b!1343856 (= e!860665 e!860660)))

(declare-fun res!605684 () Bool)

(assert (=> b!1343856 (=> res!605684 e!860660)))

(declare-fun call!90510 () Bool)

(assert (=> b!1343856 (= res!605684 call!90510)))

(declare-fun b!1343857 () Bool)

(declare-fun e!860663 () Bool)

(assert (=> b!1343857 (= e!860663 e!860665)))

(declare-fun res!605683 () Bool)

(assert (=> b!1343857 (=> (not res!605683) (not e!860665))))

(declare-fun lt!444544 () Bool)

(assert (=> b!1343857 (= res!605683 (not lt!444544))))

(declare-fun b!1343858 () Bool)

(declare-fun e!860666 () Bool)

(declare-fun e!860662 () Bool)

(assert (=> b!1343858 (= e!860666 e!860662)))

(declare-fun c!220044 () Bool)

(assert (=> b!1343858 (= c!220044 (is-EmptyLang!3696 lt!444432))))

(declare-fun b!1343859 () Bool)

(assert (=> b!1343859 (= e!860662 (not lt!444544))))

(declare-fun b!1343860 () Bool)

(declare-fun res!605678 () Bool)

(assert (=> b!1343860 (=> (not res!605678) (not e!860661))))

(assert (=> b!1343860 (= res!605678 (isEmpty!8198 (tail!1935 lt!444442)))))

(declare-fun b!1343861 () Bool)

(assert (=> b!1343861 (= e!860660 (not (= (head!2389 lt!444442) (c!219990 lt!444432))))))

(declare-fun b!1343862 () Bool)

(declare-fun res!605685 () Bool)

(assert (=> b!1343862 (=> res!605685 e!860663)))

(assert (=> b!1343862 (= res!605685 e!860661)))

(declare-fun res!605680 () Bool)

(assert (=> b!1343862 (=> (not res!605680) (not e!860661))))

(assert (=> b!1343862 (= res!605680 lt!444544)))

(declare-fun b!1343863 () Bool)

(declare-fun e!860664 () Bool)

(declare-fun derivativeStep!934 (Regex!3696 C!7682) Regex!3696)

(assert (=> b!1343863 (= e!860664 (matchR!1689 (derivativeStep!934 lt!444432 (head!2389 lt!444442)) (tail!1935 lt!444442)))))

(declare-fun b!1343864 () Bool)

(declare-fun res!605682 () Bool)

(assert (=> b!1343864 (=> res!605682 e!860663)))

(assert (=> b!1343864 (= res!605682 (not (is-ElementMatch!3696 lt!444432)))))

(assert (=> b!1343864 (= e!860662 e!860663)))

(declare-fun d!379040 () Bool)

(assert (=> d!379040 e!860666))

(declare-fun c!220042 () Bool)

(assert (=> d!379040 (= c!220042 (is-EmptyExpr!3696 lt!444432))))

(assert (=> d!379040 (= lt!444544 e!860664)))

(declare-fun c!220043 () Bool)

(assert (=> d!379040 (= c!220043 (isEmpty!8198 lt!444442))))

(assert (=> d!379040 (validRegex!1596 lt!444432)))

(assert (=> d!379040 (= (matchR!1689 lt!444432 lt!444442) lt!444544)))

(declare-fun b!1343865 () Bool)

(assert (=> b!1343865 (= e!860666 (= lt!444544 call!90510))))

(declare-fun b!1343866 () Bool)

(declare-fun res!605681 () Bool)

(assert (=> b!1343866 (=> res!605681 e!860660)))

(assert (=> b!1343866 (= res!605681 (not (isEmpty!8198 (tail!1935 lt!444442))))))

(declare-fun b!1343867 () Bool)

(declare-fun nullable!1176 (Regex!3696) Bool)

(assert (=> b!1343867 (= e!860664 (nullable!1176 lt!444432))))

(declare-fun bm!90505 () Bool)

(assert (=> bm!90505 (= call!90510 (isEmpty!8198 lt!444442))))

(declare-fun b!1343868 () Bool)

(declare-fun res!605679 () Bool)

(assert (=> b!1343868 (=> (not res!605679) (not e!860661))))

(assert (=> b!1343868 (= res!605679 (not call!90510))))

(assert (= (and d!379040 c!220043) b!1343867))

(assert (= (and d!379040 (not c!220043)) b!1343863))

(assert (= (and d!379040 c!220042) b!1343865))

(assert (= (and d!379040 (not c!220042)) b!1343858))

(assert (= (and b!1343858 c!220044) b!1343859))

(assert (= (and b!1343858 (not c!220044)) b!1343864))

(assert (= (and b!1343864 (not res!605682)) b!1343862))

(assert (= (and b!1343862 res!605680) b!1343868))

(assert (= (and b!1343868 res!605679) b!1343860))

(assert (= (and b!1343860 res!605678) b!1343855))

(assert (= (and b!1343862 (not res!605685)) b!1343857))

(assert (= (and b!1343857 res!605683) b!1343856))

(assert (= (and b!1343856 (not res!605684)) b!1343866))

(assert (= (and b!1343866 (not res!605681)) b!1343861))

(assert (= (or b!1343865 b!1343856 b!1343868) bm!90505))

(assert (=> b!1343866 m!1502483))

(assert (=> b!1343866 m!1502483))

(declare-fun m!1502495 () Bool)

(assert (=> b!1343866 m!1502495))

(declare-fun m!1502497 () Bool)

(assert (=> bm!90505 m!1502497))

(declare-fun m!1502499 () Bool)

(assert (=> b!1343861 m!1502499))

(assert (=> b!1343855 m!1502499))

(declare-fun m!1502501 () Bool)

(assert (=> b!1343867 m!1502501))

(assert (=> b!1343863 m!1502499))

(assert (=> b!1343863 m!1502499))

(declare-fun m!1502503 () Bool)

(assert (=> b!1343863 m!1502503))

(assert (=> b!1343863 m!1502483))

(assert (=> b!1343863 m!1502503))

(assert (=> b!1343863 m!1502483))

(declare-fun m!1502505 () Bool)

(assert (=> b!1343863 m!1502505))

(assert (=> d!379040 m!1502497))

(assert (=> d!379040 m!1502273))

(assert (=> b!1343860 m!1502483))

(assert (=> b!1343860 m!1502483))

(assert (=> b!1343860 m!1502495))

(assert (=> b!1343494 d!379040))

(declare-fun bs!332466 () Bool)

(declare-fun d!379042 () Bool)

(assert (= bs!332466 (and d!379042 b!1343497)))

(declare-fun lambda!56494 () Int)

(assert (=> bs!332466 (not (= lambda!56494 lambda!56452))))

(assert (=> d!379042 true))

(declare-fun order!8227 () Int)

(declare-fun dynLambda!6067 (Int Int) Int)

(assert (=> d!379042 (< (dynLambda!6067 order!8227 lambda!56452) (dynLambda!6067 order!8227 lambda!56494))))

(declare-fun forall!3347 (List!13808 Int) Bool)

(assert (=> d!379042 (= (exists!423 (map!3034 rules!2550 lambda!56451) lambda!56452) (not (forall!3347 (map!3034 rules!2550 lambda!56451) lambda!56494)))))

(declare-fun bs!332467 () Bool)

(assert (= bs!332467 d!379042))

(assert (=> bs!332467 m!1502105))

(declare-fun m!1502507 () Bool)

(assert (=> bs!332467 m!1502507))

(assert (=> b!1343497 d!379042))

(declare-fun bs!332468 () Bool)

(declare-fun d!379044 () Bool)

(assert (= bs!332468 (and d!379044 b!1343497)))

(declare-fun lambda!56495 () Int)

(assert (=> bs!332468 (not (= lambda!56495 lambda!56452))))

(declare-fun bs!332469 () Bool)

(assert (= bs!332469 (and d!379044 d!379042)))

(assert (=> bs!332469 (= lambda!56495 lambda!56494)))

(assert (=> d!379044 true))

(assert (=> d!379044 (< (dynLambda!6067 order!8227 lambda!56452) (dynLambda!6067 order!8227 lambda!56495))))

(assert (=> d!379044 (= (exists!423 lt!444437 lambda!56452) (not (forall!3347 lt!444437 lambda!56495)))))

(declare-fun bs!332470 () Bool)

(assert (= bs!332470 d!379044))

(declare-fun m!1502509 () Bool)

(assert (=> bs!332470 m!1502509))

(assert (=> b!1343497 d!379044))

(declare-fun bs!332471 () Bool)

(declare-fun d!379046 () Bool)

(assert (= bs!332471 (and d!379046 b!1343497)))

(declare-fun lambda!56500 () Int)

(assert (=> bs!332471 (not (= lambda!56500 lambda!56452))))

(declare-fun bs!332472 () Bool)

(assert (= bs!332472 (and d!379046 d!379042)))

(assert (=> bs!332472 (not (= lambda!56500 lambda!56494))))

(declare-fun bs!332473 () Bool)

(assert (= bs!332473 (and d!379046 d!379044)))

(assert (=> bs!332473 (not (= lambda!56500 lambda!56495))))

(declare-fun lambda!56501 () Int)

(assert (=> bs!332471 (= lambda!56501 lambda!56452)))

(assert (=> bs!332472 (not (= lambda!56501 lambda!56494))))

(assert (=> bs!332473 (not (= lambda!56501 lambda!56495))))

(declare-fun bs!332474 () Bool)

(assert (= bs!332474 d!379046))

(assert (=> bs!332474 (not (= lambda!56501 lambda!56500))))

(assert (=> d!379046 true))

(assert (=> d!379046 (= (matchR!1689 lt!444432 lt!444442) (exists!423 lt!444437 lambda!56501))))

(declare-fun lt!444548 () Unit!19848)

(declare-fun choose!8247 (Regex!3696 List!13808 List!13806) Unit!19848)

(assert (=> d!379046 (= lt!444548 (choose!8247 lt!444432 lt!444437 lt!444442))))

(assert (=> d!379046 (forall!3347 lt!444437 lambda!56500)))

(assert (=> d!379046 (= (matchRGenUnionSpec!113 lt!444432 lt!444437 lt!444442) lt!444548)))

(assert (=> bs!332474 m!1502087))

(declare-fun m!1502527 () Bool)

(assert (=> bs!332474 m!1502527))

(declare-fun m!1502529 () Bool)

(assert (=> bs!332474 m!1502529))

(declare-fun m!1502531 () Bool)

(assert (=> bs!332474 m!1502531))

(assert (=> b!1343497 d!379046))

(assert (=> b!1343497 d!379018))

(declare-fun d!379050 () Bool)

(declare-fun lt!444549 () Bool)

(assert (=> d!379050 (= lt!444549 (set.member lt!444430 (content!1954 lt!444441)))))

(declare-fun e!860677 () Bool)

(assert (=> d!379050 (= lt!444549 e!860677)))

(declare-fun res!605697 () Bool)

(assert (=> d!379050 (=> (not res!605697) (not e!860677))))

(assert (=> d!379050 (= res!605697 (is-Cons!13740 lt!444441))))

(assert (=> d!379050 (= (contains!2514 lt!444441 lt!444430) lt!444549)))

(declare-fun b!1343887 () Bool)

(declare-fun e!860676 () Bool)

(assert (=> b!1343887 (= e!860677 e!860676)))

(declare-fun res!605696 () Bool)

(assert (=> b!1343887 (=> res!605696 e!860676)))

(assert (=> b!1343887 (= res!605696 (= (h!19141 lt!444441) lt!444430))))

(declare-fun b!1343888 () Bool)

(assert (=> b!1343888 (= e!860676 (contains!2514 (t!119639 lt!444441) lt!444430))))

(assert (= (and d!379050 res!605697) b!1343887))

(assert (= (and b!1343887 (not res!605696)) b!1343888))

(assert (=> d!379050 m!1502373))

(declare-fun m!1502533 () Bool)

(assert (=> d!379050 m!1502533))

(declare-fun m!1502535 () Bool)

(assert (=> b!1343888 m!1502535))

(assert (=> b!1343496 d!379050))

(declare-fun d!379052 () Bool)

(declare-fun lt!444550 () Bool)

(assert (=> d!379052 (= lt!444550 (set.member lt!444430 (content!1954 lt!444442)))))

(declare-fun e!860679 () Bool)

(assert (=> d!379052 (= lt!444550 e!860679)))

(declare-fun res!605699 () Bool)

(assert (=> d!379052 (=> (not res!605699) (not e!860679))))

(assert (=> d!379052 (= res!605699 (is-Cons!13740 lt!444442))))

(assert (=> d!379052 (= (contains!2514 lt!444442 lt!444430) lt!444550)))

(declare-fun b!1343889 () Bool)

(declare-fun e!860678 () Bool)

(assert (=> b!1343889 (= e!860679 e!860678)))

(declare-fun res!605698 () Bool)

(assert (=> b!1343889 (=> res!605698 e!860678)))

(assert (=> b!1343889 (= res!605698 (= (h!19141 lt!444442) lt!444430))))

(declare-fun b!1343890 () Bool)

(assert (=> b!1343890 (= e!860678 (contains!2514 (t!119639 lt!444442) lt!444430))))

(assert (= (and d!379052 res!605699) b!1343889))

(assert (= (and b!1343889 (not res!605698)) b!1343890))

(declare-fun m!1502537 () Bool)

(assert (=> d!379052 m!1502537))

(declare-fun m!1502539 () Bool)

(assert (=> d!379052 m!1502539))

(declare-fun m!1502541 () Bool)

(assert (=> b!1343890 m!1502541))

(assert (=> b!1343489 d!379052))

(declare-fun d!379054 () Bool)

(assert (=> d!379054 (= (inv!18074 (tag!2644 (rule!4127 t2!34))) (= (mod (str.len (value!77520 (tag!2644 (rule!4127 t2!34)))) 2) 0))))

(assert (=> b!1343510 d!379054))

(declare-fun d!379056 () Bool)

(declare-fun res!605700 () Bool)

(declare-fun e!860680 () Bool)

(assert (=> d!379056 (=> (not res!605700) (not e!860680))))

(assert (=> d!379056 (= res!605700 (semiInverseModEq!905 (toChars!3484 (transformation!2382 (rule!4127 t2!34))) (toValue!3625 (transformation!2382 (rule!4127 t2!34)))))))

(assert (=> d!379056 (= (inv!18077 (transformation!2382 (rule!4127 t2!34))) e!860680)))

(declare-fun b!1343891 () Bool)

(assert (=> b!1343891 (= e!860680 (equivClasses!864 (toChars!3484 (transformation!2382 (rule!4127 t2!34))) (toValue!3625 (transformation!2382 (rule!4127 t2!34)))))))

(assert (= (and d!379056 res!605700) b!1343891))

(declare-fun m!1502543 () Bool)

(assert (=> d!379056 m!1502543))

(declare-fun m!1502545 () Bool)

(assert (=> b!1343891 m!1502545))

(assert (=> b!1343510 d!379056))

(declare-fun b!1343904 () Bool)

(declare-fun res!605710 () Bool)

(declare-fun e!860689 () Bool)

(assert (=> b!1343904 (=> (not res!605710) (not e!860689))))

(declare-fun lt!444556 () tuple2!13312)

(declare-datatypes ((tuple2!13316 0))(
  ( (tuple2!13317 (_1!7544 List!13809) (_2!7544 List!13806)) )
))
(declare-fun lexList!595 (LexerInterface!2077 List!13807 List!13806) tuple2!13316)

(assert (=> b!1343904 (= res!605710 (= (list!5237 (_1!7542 lt!444556)) (_1!7544 (lexList!595 thiss!19762 rules!2550 (list!5236 (print!843 thiss!19762 (singletonSeq!991 t1!34)))))))))

(declare-fun b!1343905 () Bool)

(declare-fun e!860690 () Bool)

(declare-fun e!860691 () Bool)

(assert (=> b!1343905 (= e!860690 e!860691)))

(declare-fun res!605711 () Bool)

(assert (=> b!1343905 (= res!605711 (< (size!11202 (_2!7542 lt!444556)) (size!11202 (print!843 thiss!19762 (singletonSeq!991 t1!34)))))))

(assert (=> b!1343905 (=> (not res!605711) (not e!860691))))

(declare-fun b!1343906 () Bool)

(declare-fun isEmpty!8200 (BalanceConc!8994) Bool)

(assert (=> b!1343906 (= e!860691 (not (isEmpty!8200 (_1!7542 lt!444556))))))

(declare-fun b!1343907 () Bool)

(assert (=> b!1343907 (= e!860689 (= (list!5236 (_2!7542 lt!444556)) (_2!7544 (lexList!595 thiss!19762 rules!2550 (list!5236 (print!843 thiss!19762 (singletonSeq!991 t1!34)))))))))

(declare-fun d!379058 () Bool)

(assert (=> d!379058 e!860689))

(declare-fun res!605709 () Bool)

(assert (=> d!379058 (=> (not res!605709) (not e!860689))))

(assert (=> d!379058 (= res!605709 e!860690)))

(declare-fun c!220051 () Bool)

(assert (=> d!379058 (= c!220051 (> (size!11206 (_1!7542 lt!444556)) 0))))

(declare-fun lexTailRecV2!390 (LexerInterface!2077 List!13807 BalanceConc!8992 BalanceConc!8992 BalanceConc!8992 BalanceConc!8994) tuple2!13312)

(assert (=> d!379058 (= lt!444556 (lexTailRecV2!390 thiss!19762 rules!2550 (print!843 thiss!19762 (singletonSeq!991 t1!34)) (BalanceConc!8993 Empty!4526) (print!843 thiss!19762 (singletonSeq!991 t1!34)) (BalanceConc!8995 Empty!4527)))))

(assert (=> d!379058 (= (lex!904 thiss!19762 rules!2550 (print!843 thiss!19762 (singletonSeq!991 t1!34))) lt!444556)))

(declare-fun b!1343908 () Bool)

(assert (=> b!1343908 (= e!860690 (= (_2!7542 lt!444556) (print!843 thiss!19762 (singletonSeq!991 t1!34))))))

(assert (= (and d!379058 c!220051) b!1343905))

(assert (= (and d!379058 (not c!220051)) b!1343908))

(assert (= (and b!1343905 res!605711) b!1343906))

(assert (= (and d!379058 res!605709) b!1343904))

(assert (= (and b!1343904 res!605710) b!1343907))

(declare-fun m!1502561 () Bool)

(assert (=> b!1343905 m!1502561))

(assert (=> b!1343905 m!1502077))

(declare-fun m!1502563 () Bool)

(assert (=> b!1343905 m!1502563))

(declare-fun m!1502565 () Bool)

(assert (=> b!1343907 m!1502565))

(assert (=> b!1343907 m!1502077))

(declare-fun m!1502567 () Bool)

(assert (=> b!1343907 m!1502567))

(assert (=> b!1343907 m!1502567))

(declare-fun m!1502569 () Bool)

(assert (=> b!1343907 m!1502569))

(declare-fun m!1502571 () Bool)

(assert (=> b!1343904 m!1502571))

(assert (=> b!1343904 m!1502077))

(assert (=> b!1343904 m!1502567))

(assert (=> b!1343904 m!1502567))

(assert (=> b!1343904 m!1502569))

(declare-fun m!1502573 () Bool)

(assert (=> d!379058 m!1502573))

(assert (=> d!379058 m!1502077))

(assert (=> d!379058 m!1502077))

(declare-fun m!1502575 () Bool)

(assert (=> d!379058 m!1502575))

(declare-fun m!1502577 () Bool)

(assert (=> b!1343906 m!1502577))

(assert (=> b!1343509 d!379058))

(declare-fun d!379066 () Bool)

(declare-fun e!860694 () Bool)

(assert (=> d!379066 e!860694))

(declare-fun res!605714 () Bool)

(assert (=> d!379066 (=> (not res!605714) (not e!860694))))

(declare-fun lt!444559 () BalanceConc!8994)

(assert (=> d!379066 (= res!605714 (= (list!5237 lt!444559) (Cons!13743 t1!34 Nil!13743)))))

(declare-fun singleton!417 (Token!4426) BalanceConc!8994)

(assert (=> d!379066 (= lt!444559 (singleton!417 t1!34))))

(assert (=> d!379066 (= (singletonSeq!991 t1!34) lt!444559)))

(declare-fun b!1343911 () Bool)

(declare-fun isBalanced!1311 (Conc!4527) Bool)

(assert (=> b!1343911 (= e!860694 (isBalanced!1311 (c!219991 lt!444559)))))

(assert (= (and d!379066 res!605714) b!1343911))

(declare-fun m!1502579 () Bool)

(assert (=> d!379066 m!1502579))

(declare-fun m!1502581 () Bool)

(assert (=> d!379066 m!1502581))

(declare-fun m!1502583 () Bool)

(assert (=> b!1343911 m!1502583))

(assert (=> b!1343509 d!379066))

(declare-fun d!379068 () Bool)

(declare-fun list!5240 (Conc!4527) List!13809)

(assert (=> d!379068 (= (list!5237 (_1!7542 (lex!904 thiss!19762 rules!2550 (print!843 thiss!19762 (singletonSeq!991 t1!34))))) (list!5240 (c!219991 (_1!7542 (lex!904 thiss!19762 rules!2550 (print!843 thiss!19762 (singletonSeq!991 t1!34)))))))))

(declare-fun bs!332479 () Bool)

(assert (= bs!332479 d!379068))

(declare-fun m!1502585 () Bool)

(assert (=> bs!332479 m!1502585))

(assert (=> b!1343509 d!379068))

(declare-fun d!379070 () Bool)

(declare-fun lt!444562 () BalanceConc!8992)

(declare-fun printList!585 (LexerInterface!2077 List!13809) List!13806)

(assert (=> d!379070 (= (list!5236 lt!444562) (printList!585 thiss!19762 (list!5237 (singletonSeq!991 t1!34))))))

(declare-fun printTailRec!567 (LexerInterface!2077 BalanceConc!8994 Int BalanceConc!8992) BalanceConc!8992)

(assert (=> d!379070 (= lt!444562 (printTailRec!567 thiss!19762 (singletonSeq!991 t1!34) 0 (BalanceConc!8993 Empty!4526)))))

(assert (=> d!379070 (= (print!843 thiss!19762 (singletonSeq!991 t1!34)) lt!444562)))

(declare-fun bs!332480 () Bool)

(assert (= bs!332480 d!379070))

(declare-fun m!1502587 () Bool)

(assert (=> bs!332480 m!1502587))

(assert (=> bs!332480 m!1502081))

(declare-fun m!1502589 () Bool)

(assert (=> bs!332480 m!1502589))

(assert (=> bs!332480 m!1502589))

(declare-fun m!1502591 () Bool)

(assert (=> bs!332480 m!1502591))

(assert (=> bs!332480 m!1502081))

(declare-fun m!1502593 () Bool)

(assert (=> bs!332480 m!1502593))

(assert (=> b!1343509 d!379070))

(declare-fun b!1343924 () Bool)

(declare-fun e!860705 () Bool)

(declare-fun lt!444567 () Rule!4564)

(declare-fun contains!2518 (List!13807 Rule!4564) Bool)

(assert (=> b!1343924 (= e!860705 (contains!2518 rules!2550 lt!444567))))

(declare-fun b!1343925 () Bool)

(declare-fun e!860703 () Bool)

(declare-fun dynLambda!6068 (Int Rule!4564) Bool)

(assert (=> b!1343925 (= e!860703 (dynLambda!6068 lambda!56453 (h!19142 rules!2550)))))

(declare-fun b!1343926 () Bool)

(declare-fun lt!444568 () Unit!19848)

(declare-fun Unit!19854 () Unit!19848)

(assert (=> b!1343926 (= lt!444568 Unit!19854)))

(assert (=> b!1343926 false))

(declare-fun e!860706 () Rule!4564)

(declare-fun head!2391 (List!13807) Rule!4564)

(assert (=> b!1343926 (= e!860706 (head!2391 rules!2550))))

(declare-fun b!1343927 () Bool)

(declare-fun e!860704 () Rule!4564)

(assert (=> b!1343927 (= e!860704 e!860706)))

(declare-fun c!220057 () Bool)

(assert (=> b!1343927 (= c!220057 (is-Cons!13741 rules!2550))))

(declare-fun d!379072 () Bool)

(assert (=> d!379072 e!860705))

(declare-fun res!605719 () Bool)

(assert (=> d!379072 (=> (not res!605719) (not e!860705))))

(assert (=> d!379072 (= res!605719 (dynLambda!6068 lambda!56453 lt!444567))))

(assert (=> d!379072 (= lt!444567 e!860704)))

(declare-fun c!220056 () Bool)

(assert (=> d!379072 (= c!220056 e!860703)))

(declare-fun res!605720 () Bool)

(assert (=> d!379072 (=> (not res!605720) (not e!860703))))

(assert (=> d!379072 (= res!605720 (is-Cons!13741 rules!2550))))

(assert (=> d!379072 (exists!422 rules!2550 lambda!56453)))

(assert (=> d!379072 (= (getWitness!311 rules!2550 lambda!56453) lt!444567)))

(declare-fun b!1343928 () Bool)

(assert (=> b!1343928 (= e!860704 (h!19142 rules!2550))))

(declare-fun b!1343929 () Bool)

(assert (=> b!1343929 (= e!860706 (getWitness!311 (t!119640 rules!2550) lambda!56453))))

(assert (= (and d!379072 res!605720) b!1343925))

(assert (= (and d!379072 c!220056) b!1343928))

(assert (= (and d!379072 (not c!220056)) b!1343927))

(assert (= (and b!1343927 c!220057) b!1343929))

(assert (= (and b!1343927 (not c!220057)) b!1343926))

(assert (= (and d!379072 res!605719) b!1343924))

(declare-fun b_lambda!39799 () Bool)

(assert (=> (not b_lambda!39799) (not b!1343925)))

(declare-fun b_lambda!39801 () Bool)

(assert (=> (not b_lambda!39801) (not d!379072)))

(declare-fun m!1502595 () Bool)

(assert (=> b!1343926 m!1502595))

(declare-fun m!1502597 () Bool)

(assert (=> b!1343925 m!1502597))

(declare-fun m!1502599 () Bool)

(assert (=> b!1343924 m!1502599))

(declare-fun m!1502601 () Bool)

(assert (=> b!1343929 m!1502601))

(declare-fun m!1502603 () Bool)

(assert (=> d!379072 m!1502603))

(assert (=> d!379072 m!1502155))

(assert (=> b!1343509 d!379072))

(declare-fun bs!332481 () Bool)

(declare-fun d!379074 () Bool)

(assert (= bs!332481 (and d!379074 b!1343488)))

(declare-fun lambda!56507 () Int)

(assert (=> bs!332481 (not (= lambda!56507 lambda!56453))))

(assert (=> d!379074 true))

(declare-fun order!8229 () Int)

(declare-fun dynLambda!6070 (Int Int) Int)

(assert (=> d!379074 (< (dynLambda!6070 order!8229 lambda!56453) (dynLambda!6070 order!8229 lambda!56507))))

(declare-fun forall!3348 (List!13807 Int) Bool)

(assert (=> d!379074 (= (exists!422 rules!2550 lambda!56453) (not (forall!3348 rules!2550 lambda!56507)))))

(declare-fun bs!332482 () Bool)

(assert (= bs!332482 d!379074))

(declare-fun m!1502605 () Bool)

(assert (=> bs!332482 m!1502605))

(assert (=> b!1343488 d!379074))

(declare-fun bs!332483 () Bool)

(declare-fun d!379076 () Bool)

(assert (= bs!332483 (and d!379076 b!1343488)))

(declare-fun lambda!56510 () Int)

(assert (=> bs!332483 (not (= lambda!56510 lambda!56453))))

(declare-fun bs!332484 () Bool)

(assert (= bs!332484 (and d!379076 d!379074)))

(assert (=> bs!332484 (not (= lambda!56510 lambda!56507))))

(assert (=> d!379076 true))

(assert (=> d!379076 true))

(declare-fun order!8231 () Int)

(declare-fun dynLambda!6071 (Int Int) Int)

(assert (=> d!379076 (< (dynLambda!6071 order!8231 lambda!56451) (dynLambda!6070 order!8229 lambda!56510))))

(assert (=> d!379076 (exists!422 rules!2550 lambda!56510)))

(declare-fun lt!444571 () Unit!19848)

(declare-fun choose!8248 (List!13807 Int Regex!3696) Unit!19848)

(assert (=> d!379076 (= lt!444571 (choose!8248 rules!2550 lambda!56451 lt!444436))))

(assert (=> d!379076 (contains!2515 (map!3034 rules!2550 lambda!56451) lt!444436)))

(assert (=> d!379076 (= (lemmaMapContains!101 rules!2550 lambda!56451 lt!444436) lt!444571)))

(declare-fun bs!332485 () Bool)

(assert (= bs!332485 d!379076))

(declare-fun m!1502607 () Bool)

(assert (=> bs!332485 m!1502607))

(declare-fun m!1502609 () Bool)

(assert (=> bs!332485 m!1502609))

(assert (=> bs!332485 m!1502105))

(assert (=> bs!332485 m!1502105))

(assert (=> bs!332485 m!1502107))

(assert (=> b!1343488 d!379076))

(declare-fun d!379078 () Bool)

(declare-fun lt!444572 () C!7682)

(assert (=> d!379078 (= lt!444572 (apply!3263 (list!5236 lt!444440) 0))))

(assert (=> d!379078 (= lt!444572 (apply!3264 (c!219989 lt!444440) 0))))

(declare-fun e!860707 () Bool)

(assert (=> d!379078 e!860707))

(declare-fun res!605721 () Bool)

(assert (=> d!379078 (=> (not res!605721) (not e!860707))))

(assert (=> d!379078 (= res!605721 (<= 0 0))))

(assert (=> d!379078 (= (apply!3260 lt!444440 0) lt!444572)))

(declare-fun b!1343936 () Bool)

(assert (=> b!1343936 (= e!860707 (< 0 (size!11202 lt!444440)))))

(assert (= (and d!379078 res!605721) b!1343936))

(declare-fun m!1502611 () Bool)

(assert (=> d!379078 m!1502611))

(assert (=> d!379078 m!1502611))

(declare-fun m!1502613 () Bool)

(assert (=> d!379078 m!1502613))

(declare-fun m!1502615 () Bool)

(assert (=> d!379078 m!1502615))

(assert (=> b!1343936 m!1502151))

(assert (=> b!1343487 d!379078))

(declare-fun b!1343940 () Bool)

(declare-fun lt!444573 () List!13806)

(declare-fun e!860709 () Bool)

(assert (=> b!1343940 (= e!860709 (or (not (= (Cons!13740 lt!444430 Nil!13740) Nil!13740)) (= lt!444573 lt!444431)))))

(declare-fun d!379080 () Bool)

(assert (=> d!379080 e!860709))

(declare-fun res!605722 () Bool)

(assert (=> d!379080 (=> (not res!605722) (not e!860709))))

(assert (=> d!379080 (= res!605722 (= (content!1954 lt!444573) (set.union (content!1954 lt!444431) (content!1954 (Cons!13740 lt!444430 Nil!13740)))))))

(declare-fun e!860708 () List!13806)

(assert (=> d!379080 (= lt!444573 e!860708)))

(declare-fun c!220058 () Bool)

(assert (=> d!379080 (= c!220058 (is-Nil!13740 lt!444431))))

(assert (=> d!379080 (= (++!3521 lt!444431 (Cons!13740 lt!444430 Nil!13740)) lt!444573)))

(declare-fun b!1343939 () Bool)

(declare-fun res!605723 () Bool)

(assert (=> b!1343939 (=> (not res!605723) (not e!860709))))

(assert (=> b!1343939 (= res!605723 (= (size!11205 lt!444573) (+ (size!11205 lt!444431) (size!11205 (Cons!13740 lt!444430 Nil!13740)))))))

(declare-fun b!1343938 () Bool)

(assert (=> b!1343938 (= e!860708 (Cons!13740 (h!19141 lt!444431) (++!3521 (t!119639 lt!444431) (Cons!13740 lt!444430 Nil!13740))))))

(declare-fun b!1343937 () Bool)

(assert (=> b!1343937 (= e!860708 (Cons!13740 lt!444430 Nil!13740))))

(assert (= (and d!379080 c!220058) b!1343937))

(assert (= (and d!379080 (not c!220058)) b!1343938))

(assert (= (and d!379080 res!605722) b!1343939))

(assert (= (and b!1343939 res!605723) b!1343940))

(declare-fun m!1502617 () Bool)

(assert (=> d!379080 m!1502617))

(declare-fun m!1502619 () Bool)

(assert (=> d!379080 m!1502619))

(declare-fun m!1502621 () Bool)

(assert (=> d!379080 m!1502621))

(declare-fun m!1502623 () Bool)

(assert (=> b!1343939 m!1502623))

(declare-fun m!1502625 () Bool)

(assert (=> b!1343939 m!1502625))

(declare-fun m!1502627 () Bool)

(assert (=> b!1343939 m!1502627))

(declare-fun m!1502629 () Bool)

(assert (=> b!1343938 m!1502629))

(assert (=> b!1343487 d!379080))

(declare-fun d!379082 () Bool)

(declare-fun lt!444576 () BalanceConc!8992)

(assert (=> d!379082 (= (list!5236 lt!444576) (originalCharacters!3244 t1!34))))

(assert (=> d!379082 (= lt!444576 (dynLambda!6063 (toChars!3484 (transformation!2382 (rule!4127 t1!34))) (value!77521 t1!34)))))

(assert (=> d!379082 (= (charsOf!1354 t1!34) lt!444576)))

(declare-fun b_lambda!39803 () Bool)

(assert (=> (not b_lambda!39803) (not d!379082)))

(assert (=> d!379082 t!119649))

(declare-fun b_and!90023 () Bool)

(assert (= b_and!90005 (and (=> t!119649 result!85938) b_and!90023)))

(assert (=> d!379082 t!119651))

(declare-fun b_and!90025 () Bool)

(assert (= b_and!90007 (and (=> t!119651 result!85942) b_and!90025)))

(assert (=> d!379082 t!119653))

(declare-fun b_and!90027 () Bool)

(assert (= b_and!90009 (and (=> t!119653 result!85944) b_and!90027)))

(declare-fun m!1502631 () Bool)

(assert (=> d!379082 m!1502631))

(assert (=> d!379082 m!1502289))

(assert (=> b!1343487 d!379082))

(declare-fun d!379084 () Bool)

(declare-fun c!220061 () Bool)

(assert (=> d!379084 (= c!220061 (isEmpty!8198 lt!444441))))

(declare-fun e!860712 () Bool)

(assert (=> d!379084 (= (prefixMatch!205 lt!444432 lt!444441) e!860712)))

(declare-fun b!1343945 () Bool)

(declare-fun lostCause!311 (Regex!3696) Bool)

(assert (=> b!1343945 (= e!860712 (not (lostCause!311 lt!444432)))))

(declare-fun b!1343946 () Bool)

(assert (=> b!1343946 (= e!860712 (prefixMatch!205 (derivativeStep!934 lt!444432 (head!2389 lt!444441)) (tail!1935 lt!444441)))))

(assert (= (and d!379084 c!220061) b!1343945))

(assert (= (and d!379084 (not c!220061)) b!1343946))

(declare-fun m!1502633 () Bool)

(assert (=> d!379084 m!1502633))

(declare-fun m!1502635 () Bool)

(assert (=> b!1343945 m!1502635))

(declare-fun m!1502637 () Bool)

(assert (=> b!1343946 m!1502637))

(assert (=> b!1343946 m!1502637))

(declare-fun m!1502639 () Bool)

(assert (=> b!1343946 m!1502639))

(declare-fun m!1502641 () Bool)

(assert (=> b!1343946 m!1502641))

(assert (=> b!1343946 m!1502639))

(assert (=> b!1343946 m!1502641))

(declare-fun m!1502643 () Bool)

(assert (=> b!1343946 m!1502643))

(assert (=> b!1343487 d!379084))

(declare-fun d!379086 () Bool)

(declare-fun list!5242 (Conc!4526) List!13806)

(assert (=> d!379086 (= (list!5236 lt!444435) (list!5242 (c!219989 lt!444435)))))

(declare-fun bs!332486 () Bool)

(assert (= bs!332486 d!379086))

(declare-fun m!1502645 () Bool)

(assert (=> bs!332486 m!1502645))

(assert (=> b!1343487 d!379086))

(declare-fun bs!332487 () Bool)

(declare-fun d!379088 () Bool)

(assert (= bs!332487 (and d!379088 b!1343497)))

(declare-fun lambda!56513 () Int)

(assert (=> bs!332487 (= lambda!56513 lambda!56451)))

(declare-fun lt!444579 () Unit!19848)

(declare-fun lemma!105 (List!13807 LexerInterface!2077 List!13807) Unit!19848)

(assert (=> d!379088 (= lt!444579 (lemma!105 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!113 (List!13808) Regex!3696)

(assert (=> d!379088 (= (rulesRegex!265 thiss!19762 rules!2550) (generalisedUnion!113 (map!3034 rules!2550 lambda!56513)))))

(declare-fun bs!332488 () Bool)

(assert (= bs!332488 d!379088))

(declare-fun m!1502647 () Bool)

(assert (=> bs!332488 m!1502647))

(declare-fun m!1502649 () Bool)

(assert (=> bs!332488 m!1502649))

(assert (=> bs!332488 m!1502649))

(declare-fun m!1502651 () Bool)

(assert (=> bs!332488 m!1502651))

(assert (=> b!1343487 d!379088))

(declare-fun d!379090 () Bool)

(declare-fun lt!444582 () Int)

(assert (=> d!379090 (= lt!444582 (size!11205 (list!5236 lt!444440)))))

(declare-fun size!11211 (Conc!4526) Int)

(assert (=> d!379090 (= lt!444582 (size!11211 (c!219989 lt!444440)))))

(assert (=> d!379090 (= (size!11202 lt!444440) lt!444582)))

(declare-fun bs!332489 () Bool)

(assert (= bs!332489 d!379090))

(assert (=> bs!332489 m!1502611))

(assert (=> bs!332489 m!1502611))

(declare-fun m!1502653 () Bool)

(assert (=> bs!332489 m!1502653))

(declare-fun m!1502655 () Bool)

(assert (=> bs!332489 m!1502655))

(assert (=> b!1343492 d!379090))

(declare-fun d!379092 () Bool)

(declare-fun lt!444583 () BalanceConc!8992)

(assert (=> d!379092 (= (list!5236 lt!444583) (originalCharacters!3244 t2!34))))

(assert (=> d!379092 (= lt!444583 (dynLambda!6063 (toChars!3484 (transformation!2382 (rule!4127 t2!34))) (value!77521 t2!34)))))

(assert (=> d!379092 (= (charsOf!1354 t2!34) lt!444583)))

(declare-fun b_lambda!39805 () Bool)

(assert (=> (not b_lambda!39805) (not d!379092)))

(assert (=> d!379092 t!119655))

(declare-fun b_and!90029 () Bool)

(assert (= b_and!90023 (and (=> t!119655 result!85946) b_and!90029)))

(assert (=> d!379092 t!119657))

(declare-fun b_and!90031 () Bool)

(assert (= b_and!90025 (and (=> t!119657 result!85948) b_and!90031)))

(assert (=> d!379092 t!119659))

(declare-fun b_and!90033 () Bool)

(assert (= b_and!90027 (and (=> t!119659 result!85950) b_and!90033)))

(declare-fun m!1502657 () Bool)

(assert (=> d!379092 m!1502657))

(assert (=> d!379092 m!1502301))

(assert (=> b!1343492 d!379092))

(declare-fun d!379094 () Bool)

(declare-fun res!605728 () Bool)

(declare-fun e!860717 () Bool)

(assert (=> d!379094 (=> res!605728 e!860717)))

(assert (=> d!379094 (= res!605728 (not (is-Cons!13741 rules!2550)))))

(assert (=> d!379094 (= (sepAndNonSepRulesDisjointChars!755 rules!2550 rules!2550) e!860717)))

(declare-fun b!1343951 () Bool)

(declare-fun e!860718 () Bool)

(assert (=> b!1343951 (= e!860717 e!860718)))

(declare-fun res!605729 () Bool)

(assert (=> b!1343951 (=> (not res!605729) (not e!860718))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!348 (Rule!4564 List!13807) Bool)

(assert (=> b!1343951 (= res!605729 (ruleDisjointCharsFromAllFromOtherType!348 (h!19142 rules!2550) rules!2550))))

(declare-fun b!1343952 () Bool)

(assert (=> b!1343952 (= e!860718 (sepAndNonSepRulesDisjointChars!755 rules!2550 (t!119640 rules!2550)))))

(assert (= (and d!379094 (not res!605728)) b!1343951))

(assert (= (and b!1343951 res!605729) b!1343952))

(declare-fun m!1502659 () Bool)

(assert (=> b!1343951 m!1502659))

(declare-fun m!1502661 () Bool)

(assert (=> b!1343952 m!1502661))

(assert (=> b!1343491 d!379094))

(declare-fun d!379096 () Bool)

(declare-fun lt!444584 () Bool)

(assert (=> d!379096 (= lt!444584 (set.member lt!444433 (content!1954 lt!444442)))))

(declare-fun e!860720 () Bool)

(assert (=> d!379096 (= lt!444584 e!860720)))

(declare-fun res!605731 () Bool)

(assert (=> d!379096 (=> (not res!605731) (not e!860720))))

(assert (=> d!379096 (= res!605731 (is-Cons!13740 lt!444442))))

(assert (=> d!379096 (= (contains!2514 lt!444442 lt!444433) lt!444584)))

(declare-fun b!1343953 () Bool)

(declare-fun e!860719 () Bool)

(assert (=> b!1343953 (= e!860720 e!860719)))

(declare-fun res!605730 () Bool)

(assert (=> b!1343953 (=> res!605730 e!860719)))

(assert (=> b!1343953 (= res!605730 (= (h!19141 lt!444442) lt!444433))))

(declare-fun b!1343954 () Bool)

(assert (=> b!1343954 (= e!860719 (contains!2514 (t!119639 lt!444442) lt!444433))))

(assert (= (and d!379096 res!605731) b!1343953))

(assert (= (and b!1343953 (not res!605730)) b!1343954))

(assert (=> d!379096 m!1502537))

(declare-fun m!1502663 () Bool)

(assert (=> d!379096 m!1502663))

(declare-fun m!1502665 () Bool)

(assert (=> b!1343954 m!1502665))

(assert (=> b!1343512 d!379096))

(declare-fun d!379098 () Bool)

(assert (=> d!379098 (= (isEmpty!8196 rules!2550) (is-Nil!13741 rules!2550))))

(assert (=> b!1343511 d!379098))

(declare-fun d!379100 () Bool)

(declare-fun lt!444585 () Bool)

(declare-fun e!860722 () Bool)

(assert (=> d!379100 (= lt!444585 e!860722)))

(declare-fun res!605733 () Bool)

(assert (=> d!379100 (=> (not res!605733) (not e!860722))))

(assert (=> d!379100 (= res!605733 (= (list!5237 (_1!7542 (lex!904 thiss!19762 rules!2550 (print!843 thiss!19762 (singletonSeq!991 t1!34))))) (list!5237 (singletonSeq!991 t1!34))))))

(declare-fun e!860721 () Bool)

(assert (=> d!379100 (= lt!444585 e!860721)))

(declare-fun res!605734 () Bool)

(assert (=> d!379100 (=> (not res!605734) (not e!860721))))

(declare-fun lt!444586 () tuple2!13312)

(assert (=> d!379100 (= res!605734 (= (size!11206 (_1!7542 lt!444586)) 1))))

(assert (=> d!379100 (= lt!444586 (lex!904 thiss!19762 rules!2550 (print!843 thiss!19762 (singletonSeq!991 t1!34))))))

(assert (=> d!379100 (not (isEmpty!8196 rules!2550))))

(assert (=> d!379100 (= (rulesProduceIndividualToken!1046 thiss!19762 rules!2550 t1!34) lt!444585)))

(declare-fun b!1343955 () Bool)

(declare-fun res!605732 () Bool)

(assert (=> b!1343955 (=> (not res!605732) (not e!860721))))

(assert (=> b!1343955 (= res!605732 (= (apply!3262 (_1!7542 lt!444586) 0) t1!34))))

(declare-fun b!1343956 () Bool)

(assert (=> b!1343956 (= e!860721 (isEmpty!8199 (_2!7542 lt!444586)))))

(declare-fun b!1343957 () Bool)

(assert (=> b!1343957 (= e!860722 (isEmpty!8199 (_2!7542 (lex!904 thiss!19762 rules!2550 (print!843 thiss!19762 (singletonSeq!991 t1!34))))))))

(assert (= (and d!379100 res!605734) b!1343955))

(assert (= (and b!1343955 res!605732) b!1343956))

(assert (= (and d!379100 res!605733) b!1343957))

(assert (=> d!379100 m!1502083))

(assert (=> d!379100 m!1502077))

(assert (=> d!379100 m!1502079))

(assert (=> d!379100 m!1502149))

(declare-fun m!1502667 () Bool)

(assert (=> d!379100 m!1502667))

(assert (=> d!379100 m!1502081))

(assert (=> d!379100 m!1502081))

(assert (=> d!379100 m!1502589))

(assert (=> d!379100 m!1502081))

(assert (=> d!379100 m!1502077))

(declare-fun m!1502669 () Bool)

(assert (=> b!1343955 m!1502669))

(declare-fun m!1502671 () Bool)

(assert (=> b!1343956 m!1502671))

(assert (=> b!1343957 m!1502081))

(assert (=> b!1343957 m!1502081))

(assert (=> b!1343957 m!1502077))

(assert (=> b!1343957 m!1502077))

(assert (=> b!1343957 m!1502079))

(declare-fun m!1502673 () Bool)

(assert (=> b!1343957 m!1502673))

(assert (=> b!1343490 d!379100))

(declare-fun b!1343968 () Bool)

(declare-fun e!860725 () Bool)

(declare-fun tp_is_empty!6701 () Bool)

(assert (=> b!1343968 (= e!860725 tp_is_empty!6701)))

(declare-fun b!1343971 () Bool)

(declare-fun tp!389064 () Bool)

(declare-fun tp!389061 () Bool)

(assert (=> b!1343971 (= e!860725 (and tp!389064 tp!389061))))

(declare-fun b!1343970 () Bool)

(declare-fun tp!389065 () Bool)

(assert (=> b!1343970 (= e!860725 tp!389065)))

(declare-fun b!1343969 () Bool)

(declare-fun tp!389063 () Bool)

(declare-fun tp!389062 () Bool)

(assert (=> b!1343969 (= e!860725 (and tp!389063 tp!389062))))

(assert (=> b!1343484 (= tp!389006 e!860725)))

(assert (= (and b!1343484 (is-ElementMatch!3696 (regex!2382 (h!19142 rules!2550)))) b!1343968))

(assert (= (and b!1343484 (is-Concat!6169 (regex!2382 (h!19142 rules!2550)))) b!1343969))

(assert (= (and b!1343484 (is-Star!3696 (regex!2382 (h!19142 rules!2550)))) b!1343970))

(assert (= (and b!1343484 (is-Union!3696 (regex!2382 (h!19142 rules!2550)))) b!1343971))

(declare-fun b!1343976 () Bool)

(declare-fun e!860728 () Bool)

(declare-fun tp!389068 () Bool)

(assert (=> b!1343976 (= e!860728 (and tp_is_empty!6701 tp!389068))))

(assert (=> b!1343500 (= tp!389004 e!860728)))

(assert (= (and b!1343500 (is-Cons!13740 (originalCharacters!3244 t1!34))) b!1343976))

(declare-fun b!1343977 () Bool)

(declare-fun e!860729 () Bool)

(assert (=> b!1343977 (= e!860729 tp_is_empty!6701)))

(declare-fun b!1343980 () Bool)

(declare-fun tp!389072 () Bool)

(declare-fun tp!389069 () Bool)

(assert (=> b!1343980 (= e!860729 (and tp!389072 tp!389069))))

(declare-fun b!1343979 () Bool)

(declare-fun tp!389073 () Bool)

(assert (=> b!1343979 (= e!860729 tp!389073)))

(declare-fun b!1343978 () Bool)

(declare-fun tp!389071 () Bool)

(declare-fun tp!389070 () Bool)

(assert (=> b!1343978 (= e!860729 (and tp!389071 tp!389070))))

(assert (=> b!1343510 (= tp!389000 e!860729)))

(assert (= (and b!1343510 (is-ElementMatch!3696 (regex!2382 (rule!4127 t2!34)))) b!1343977))

(assert (= (and b!1343510 (is-Concat!6169 (regex!2382 (rule!4127 t2!34)))) b!1343978))

(assert (= (and b!1343510 (is-Star!3696 (regex!2382 (rule!4127 t2!34)))) b!1343979))

(assert (= (and b!1343510 (is-Union!3696 (regex!2382 (rule!4127 t2!34)))) b!1343980))

(declare-fun b!1344001 () Bool)

(declare-fun b_free!32815 () Bool)

(declare-fun b_next!33519 () Bool)

(assert (=> b!1344001 (= b_free!32815 (not b_next!33519))))

(declare-fun tp!389083 () Bool)

(declare-fun b_and!90035 () Bool)

(assert (=> b!1344001 (= tp!389083 b_and!90035)))

(declare-fun b_free!32817 () Bool)

(declare-fun b_next!33521 () Bool)

(assert (=> b!1344001 (= b_free!32817 (not b_next!33521))))

(declare-fun t!119675 () Bool)

(declare-fun tb!70713 () Bool)

(assert (=> (and b!1344001 (= (toChars!3484 (transformation!2382 (h!19142 (t!119640 rules!2550)))) (toChars!3484 (transformation!2382 (rule!4127 t1!34)))) t!119675) tb!70713))

(declare-fun result!85972 () Bool)

(assert (= result!85972 result!85938))

(assert (=> b!1343642 t!119675))

(declare-fun t!119677 () Bool)

(declare-fun tb!70715 () Bool)

(assert (=> (and b!1344001 (= (toChars!3484 (transformation!2382 (h!19142 (t!119640 rules!2550)))) (toChars!3484 (transformation!2382 (rule!4127 t2!34)))) t!119677) tb!70715))

(declare-fun result!85974 () Bool)

(assert (= result!85974 result!85946))

(assert (=> b!1343649 t!119677))

(assert (=> d!379082 t!119675))

(assert (=> d!379092 t!119677))

(declare-fun tp!389084 () Bool)

(declare-fun b_and!90037 () Bool)

(assert (=> b!1344001 (= tp!389084 (and (=> t!119675 result!85972) (=> t!119677 result!85974) b_and!90037))))

(declare-fun e!860745 () Bool)

(assert (=> b!1344001 (= e!860745 (and tp!389083 tp!389084))))

(declare-fun e!860744 () Bool)

(declare-fun b!1344000 () Bool)

(declare-fun tp!389085 () Bool)

(assert (=> b!1344000 (= e!860744 (and tp!389085 (inv!18074 (tag!2644 (h!19142 (t!119640 rules!2550)))) (inv!18077 (transformation!2382 (h!19142 (t!119640 rules!2550)))) e!860745))))

(declare-fun b!1343999 () Bool)

(declare-fun e!860746 () Bool)

(declare-fun tp!389082 () Bool)

(assert (=> b!1343999 (= e!860746 (and e!860744 tp!389082))))

(assert (=> b!1343508 (= tp!389002 e!860746)))

(assert (= b!1344000 b!1344001))

(assert (= b!1343999 b!1344000))

(assert (= (and b!1343508 (is-Cons!13741 (t!119640 rules!2550))) b!1343999))

(declare-fun m!1502675 () Bool)

(assert (=> b!1344000 m!1502675))

(declare-fun m!1502677 () Bool)

(assert (=> b!1344000 m!1502677))

(declare-fun b!1344002 () Bool)

(declare-fun e!860748 () Bool)

(declare-fun tp!389086 () Bool)

(assert (=> b!1344002 (= e!860748 (and tp_is_empty!6701 tp!389086))))

(assert (=> b!1343507 (= tp!389005 e!860748)))

(assert (= (and b!1343507 (is-Cons!13740 (originalCharacters!3244 t2!34))) b!1344002))

(declare-fun b!1344003 () Bool)

(declare-fun e!860749 () Bool)

(assert (=> b!1344003 (= e!860749 tp_is_empty!6701)))

(declare-fun b!1344006 () Bool)

(declare-fun tp!389090 () Bool)

(declare-fun tp!389087 () Bool)

(assert (=> b!1344006 (= e!860749 (and tp!389090 tp!389087))))

(declare-fun b!1344005 () Bool)

(declare-fun tp!389091 () Bool)

(assert (=> b!1344005 (= e!860749 tp!389091)))

(declare-fun b!1344004 () Bool)

(declare-fun tp!389089 () Bool)

(declare-fun tp!389088 () Bool)

(assert (=> b!1344004 (= e!860749 (and tp!389089 tp!389088))))

(assert (=> b!1343501 (= tp!388996 e!860749)))

(assert (= (and b!1343501 (is-ElementMatch!3696 (regex!2382 (rule!4127 t1!34)))) b!1344003))

(assert (= (and b!1343501 (is-Concat!6169 (regex!2382 (rule!4127 t1!34)))) b!1344004))

(assert (= (and b!1343501 (is-Star!3696 (regex!2382 (rule!4127 t1!34)))) b!1344005))

(assert (= (and b!1343501 (is-Union!3696 (regex!2382 (rule!4127 t1!34)))) b!1344006))

(declare-fun b_lambda!39807 () Bool)

(assert (= b_lambda!39785 (or (and b!1343504 b_free!32793) (and b!1343495 b_free!32797 (= (toChars!3484 (transformation!2382 (rule!4127 t1!34))) (toChars!3484 (transformation!2382 (rule!4127 t2!34))))) (and b!1343499 b_free!32801 (= (toChars!3484 (transformation!2382 (h!19142 rules!2550))) (toChars!3484 (transformation!2382 (rule!4127 t2!34))))) (and b!1344001 b_free!32817 (= (toChars!3484 (transformation!2382 (h!19142 (t!119640 rules!2550)))) (toChars!3484 (transformation!2382 (rule!4127 t2!34))))) b_lambda!39807)))

(declare-fun b_lambda!39809 () Bool)

(assert (= b_lambda!39801 (or b!1343488 b_lambda!39809)))

(declare-fun bs!332490 () Bool)

(declare-fun d!379102 () Bool)

(assert (= bs!332490 (and d!379102 b!1343488)))

(assert (=> bs!332490 (= (dynLambda!6068 lambda!56453 lt!444567) (= (regex!2382 lt!444567) lt!444436))))

(assert (=> d!379072 d!379102))

(declare-fun b_lambda!39811 () Bool)

(assert (= b_lambda!39795 (or b!1343497 b_lambda!39811)))

(declare-fun bs!332491 () Bool)

(declare-fun d!379104 () Bool)

(assert (= bs!332491 (and d!379104 b!1343497)))

(declare-fun res!605741 () Bool)

(declare-fun e!860750 () Bool)

(assert (=> bs!332491 (=> (not res!605741) (not e!860750))))

(assert (=> bs!332491 (= res!605741 (validRegex!1596 (h!19143 (map!3034 rules!2550 lambda!56451))))))

(assert (=> bs!332491 (= (dynLambda!6065 lambda!56452 (h!19143 (map!3034 rules!2550 lambda!56451))) e!860750)))

(declare-fun b!1344007 () Bool)

(assert (=> b!1344007 (= e!860750 (matchR!1689 (h!19143 (map!3034 rules!2550 lambda!56451)) lt!444442))))

(assert (= (and bs!332491 res!605741) b!1344007))

(declare-fun m!1502679 () Bool)

(assert (=> bs!332491 m!1502679))

(declare-fun m!1502681 () Bool)

(assert (=> b!1344007 m!1502681))

(assert (=> b!1343762 d!379104))

(declare-fun b_lambda!39813 () Bool)

(assert (= b_lambda!39805 (or (and b!1343504 b_free!32793) (and b!1343495 b_free!32797 (= (toChars!3484 (transformation!2382 (rule!4127 t1!34))) (toChars!3484 (transformation!2382 (rule!4127 t2!34))))) (and b!1343499 b_free!32801 (= (toChars!3484 (transformation!2382 (h!19142 rules!2550))) (toChars!3484 (transformation!2382 (rule!4127 t2!34))))) (and b!1344001 b_free!32817 (= (toChars!3484 (transformation!2382 (h!19142 (t!119640 rules!2550)))) (toChars!3484 (transformation!2382 (rule!4127 t2!34))))) b_lambda!39813)))

(declare-fun b_lambda!39815 () Bool)

(assert (= b_lambda!39789 (or b!1343497 b_lambda!39815)))

(declare-fun bs!332492 () Bool)

(declare-fun d!379106 () Bool)

(assert (= bs!332492 (and d!379106 b!1343497)))

(assert (=> bs!332492 (= (dynLambda!6064 lambda!56451 (h!19142 rules!2550)) (regex!2382 (h!19142 rules!2550)))))

(assert (=> b!1343745 d!379106))

(declare-fun b_lambda!39817 () Bool)

(assert (= b_lambda!39803 (or (and b!1343504 b_free!32793 (= (toChars!3484 (transformation!2382 (rule!4127 t2!34))) (toChars!3484 (transformation!2382 (rule!4127 t1!34))))) (and b!1343495 b_free!32797) (and b!1343499 b_free!32801 (= (toChars!3484 (transformation!2382 (h!19142 rules!2550))) (toChars!3484 (transformation!2382 (rule!4127 t1!34))))) (and b!1344001 b_free!32817 (= (toChars!3484 (transformation!2382 (h!19142 (t!119640 rules!2550)))) (toChars!3484 (transformation!2382 (rule!4127 t1!34))))) b_lambda!39817)))

(declare-fun b_lambda!39819 () Bool)

(assert (= b_lambda!39797 (or b!1343505 b_lambda!39819)))

(declare-fun bs!332493 () Bool)

(declare-fun d!379108 () Bool)

(assert (= bs!332493 (and d!379108 b!1343505)))

(declare-fun res!605745 () Bool)

(declare-fun e!860754 () Bool)

(assert (=> bs!332493 (=> (not res!605745) (not e!860754))))

(assert (=> bs!332493 (= res!605745 (matchR!1689 lt!444432 lt!444539))))

(assert (=> bs!332493 (= (dynLambda!6066 lambda!56450 lt!444539) e!860754)))

(declare-fun b!1344013 () Bool)

(declare-fun isPrefix!1106 (List!13806 List!13806) Bool)

(assert (=> b!1344013 (= e!860754 (isPrefix!1106 lt!444441 lt!444539))))

(assert (= (and bs!332493 res!605745) b!1344013))

(declare-fun m!1502683 () Bool)

(assert (=> bs!332493 m!1502683))

(declare-fun m!1502685 () Bool)

(assert (=> b!1344013 m!1502685))

(assert (=> d!379034 d!379108))

(declare-fun b_lambda!39821 () Bool)

(assert (= b_lambda!39783 (or (and b!1343504 b_free!32793 (= (toChars!3484 (transformation!2382 (rule!4127 t2!34))) (toChars!3484 (transformation!2382 (rule!4127 t1!34))))) (and b!1343495 b_free!32797) (and b!1343499 b_free!32801 (= (toChars!3484 (transformation!2382 (h!19142 rules!2550))) (toChars!3484 (transformation!2382 (rule!4127 t1!34))))) (and b!1344001 b_free!32817 (= (toChars!3484 (transformation!2382 (h!19142 (t!119640 rules!2550)))) (toChars!3484 (transformation!2382 (rule!4127 t1!34))))) b_lambda!39821)))

(declare-fun b_lambda!39823 () Bool)

(assert (= b_lambda!39793 (or b!1343497 b_lambda!39823)))

(declare-fun bs!332494 () Bool)

(declare-fun d!379110 () Bool)

(assert (= bs!332494 (and d!379110 b!1343497)))

(declare-fun res!605746 () Bool)

(declare-fun e!860755 () Bool)

(assert (=> bs!332494 (=> (not res!605746) (not e!860755))))

(assert (=> bs!332494 (= res!605746 (validRegex!1596 lt!444529))))

(assert (=> bs!332494 (= (dynLambda!6065 lambda!56452 lt!444529) e!860755)))

(declare-fun b!1344014 () Bool)

(assert (=> b!1344014 (= e!860755 (matchR!1689 lt!444529 lt!444442))))

(assert (= (and bs!332494 res!605746) b!1344014))

(declare-fun m!1502687 () Bool)

(assert (=> bs!332494 m!1502687))

(declare-fun m!1502689 () Bool)

(assert (=> b!1344014 m!1502689))

(assert (=> d!379022 d!379110))

(declare-fun b_lambda!39825 () Bool)

(assert (= b_lambda!39799 (or b!1343488 b_lambda!39825)))

(declare-fun bs!332495 () Bool)

(declare-fun d!379112 () Bool)

(assert (= bs!332495 (and d!379112 b!1343488)))

(assert (=> bs!332495 (= (dynLambda!6068 lambda!56453 (h!19142 rules!2550)) (= (regex!2382 (h!19142 rules!2550)) lt!444436))))

(assert (=> b!1343925 d!379112))

(push 1)

(assert (not b!1343970))

(assert (not d!379000))

(assert (not b!1343745))

(assert (not b!1343891))

(assert (not b!1343650))

(assert (not b!1343634))

(assert (not b!1343662))

(assert (not b!1343926))

(assert (not b!1343866))

(assert (not d!379066))

(assert (not b!1343999))

(assert (not b!1343860))

(assert (not b!1343890))

(assert (not b!1343971))

(assert (not bs!332493))

(assert (not d!379038))

(assert (not b!1343764))

(assert (not d!379042))

(assert (not b!1343729))

(assert (not b_lambda!39813))

(assert (not d!379088))

(assert b_and!90033)

(assert (not b!1343980))

(assert (not b!1344014))

(assert (not b!1343979))

(assert (not b!1343648))

(assert (not b!1343651))

(assert b_and!89979)

(assert (not b!1343946))

(assert (not b!1343761))

(assert (not b!1343796))

(assert (not b_lambda!39817))

(assert (not b_next!33499))

(assert (not d!379074))

(assert (not d!379070))

(assert (not b_next!33505))

(assert (not b!1344006))

(assert (not b!1344013))

(assert (not b_lambda!39821))

(assert (not b!1343888))

(assert (not d!379078))

(assert (not d!378978))

(assert (not b!1343714))

(assert (not b!1344005))

(assert (not b_lambda!39807))

(assert (not b_lambda!39815))

(assert (not d!379004))

(assert (not b!1343861))

(assert (not b!1343700))

(assert (not d!379016))

(assert (not b!1343955))

(assert tp_is_empty!6701)

(assert b_and!90035)

(assert (not d!378968))

(assert (not b!1343855))

(assert (not d!379034))

(assert (not bs!332491))

(assert (not d!379082))

(assert (not b!1343642))

(assert (not d!378980))

(assert (not b!1343707))

(assert (not b_next!33521))

(assert (not b!1343637))

(assert (not d!378984))

(assert (not d!379050))

(assert (not d!379072))

(assert (not b_next!33495))

(assert (not bm!90505))

(assert b_and!90029)

(assert (not d!379086))

(assert (not b!1343976))

(assert (not d!379076))

(assert (not b_lambda!39811))

(assert b_and!90031)

(assert (not bs!332494))

(assert (not b_lambda!39819))

(assert (not b!1343784))

(assert (not b!1343939))

(assert (not d!379090))

(assert (not tb!70689))

(assert (not b!1343969))

(assert (not d!379030))

(assert (not d!379022))

(assert (not d!379028))

(assert (not d!379100))

(assert (not b!1343867))

(assert (not b!1343906))

(assert (not d!379040))

(assert (not b!1344004))

(assert (not b!1343701))

(assert (not b!1343665))

(assert (not d!378976))

(assert (not d!379018))

(assert (not d!379096))

(assert (not b!1343945))

(assert (not d!378998))

(assert (not b!1343863))

(assert (not b!1343907))

(assert (not d!379044))

(assert (not b_lambda!39823))

(assert (not b_next!33501))

(assert (not b!1343727))

(assert (not d!379092))

(assert (not b!1343904))

(assert (not b!1343957))

(assert (not d!379052))

(assert (not d!378970))

(assert (not b!1343952))

(assert (not tb!70695))

(assert (not b!1343929))

(assert b_and!89983)

(assert (not d!379046))

(assert b_and!89975)

(assert (not b!1343954))

(assert (not b!1343956))

(assert (not b!1343798))

(assert (not b!1344002))

(assert (not b!1343663))

(assert (not b!1343699))

(assert (not b!1343649))

(assert (not b!1343924))

(assert (not b!1343938))

(assert b_and!90037)

(assert (not b_lambda!39825))

(assert (not b!1343978))

(assert (not d!379058))

(assert (not b!1343738))

(assert (not b!1344007))

(assert (not b!1343643))

(assert (not b_next!33503))

(assert (not d!379068))

(assert (not b!1344000))

(assert (not b!1343911))

(assert (not d!379084))

(assert (not b!1343951))

(assert (not b_lambda!39809))

(assert (not b_next!33497))

(assert (not b!1343760))

(assert (not b!1343785))

(assert (not b!1343726))

(assert (not d!379080))

(assert (not d!379056))

(assert (not b_next!33519))

(assert (not b!1343905))

(assert (not b!1343936))

(assert (not d!378974))

(check-sat)

(pop 1)

(push 1)

(assert b_and!90033)

(assert b_and!89979)

(assert b_and!90035)

(assert (not b_next!33521))

(assert (not b_next!33495))

(assert (not b_next!33501))

(assert b_and!90037)

(assert (not b_next!33503))

(assert (not b_next!33497))

(assert (not b_next!33519))

(assert (not b_next!33499))

(assert (not b_next!33505))

(assert b_and!90029)

(assert b_and!90031)

(assert b_and!89975)

(assert b_and!89983)

(check-sat)

(pop 1)

