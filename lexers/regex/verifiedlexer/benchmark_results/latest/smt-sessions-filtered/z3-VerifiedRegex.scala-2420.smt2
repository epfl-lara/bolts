; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126954 () Bool)

(assert start!126954)

(declare-fun b!1394605 () Bool)

(declare-fun b_free!33891 () Bool)

(declare-fun b_next!34595 () Bool)

(assert (=> b!1394605 (= b_free!33891 (not b_next!34595))))

(declare-fun tp!397704 () Bool)

(declare-fun b_and!93379 () Bool)

(assert (=> b!1394605 (= tp!397704 b_and!93379)))

(declare-fun b_free!33893 () Bool)

(declare-fun b_next!34597 () Bool)

(assert (=> b!1394605 (= b_free!33893 (not b_next!34597))))

(declare-fun tp!397705 () Bool)

(declare-fun b_and!93381 () Bool)

(assert (=> b!1394605 (= tp!397705 b_and!93381)))

(declare-fun b!1394599 () Bool)

(declare-fun b_free!33895 () Bool)

(declare-fun b_next!34599 () Bool)

(assert (=> b!1394599 (= b_free!33895 (not b_next!34599))))

(declare-fun tp!397706 () Bool)

(declare-fun b_and!93383 () Bool)

(assert (=> b!1394599 (= tp!397706 b_and!93383)))

(declare-fun b_free!33897 () Bool)

(declare-fun b_next!34601 () Bool)

(assert (=> b!1394599 (= b_free!33897 (not b_next!34601))))

(declare-fun tp!397708 () Bool)

(declare-fun b_and!93385 () Bool)

(assert (=> b!1394599 (= tp!397708 b_and!93385)))

(declare-fun b!1394592 () Bool)

(declare-fun b_free!33899 () Bool)

(declare-fun b_next!34603 () Bool)

(assert (=> b!1394592 (= b_free!33899 (not b_next!34603))))

(declare-fun tp!397710 () Bool)

(declare-fun b_and!93387 () Bool)

(assert (=> b!1394592 (= tp!397710 b_and!93387)))

(declare-fun b_free!33901 () Bool)

(declare-fun b_next!34605 () Bool)

(assert (=> b!1394592 (= b_free!33901 (not b_next!34605))))

(declare-fun tp!397703 () Bool)

(declare-fun b_and!93389 () Bool)

(assert (=> b!1394592 (= tp!397703 b_and!93389)))

(declare-fun b!1394602 () Bool)

(assert (=> b!1394602 true))

(assert (=> b!1394602 true))

(declare-fun b!1394603 () Bool)

(assert (=> b!1394603 true))

(declare-fun b!1394594 () Bool)

(assert (=> b!1394594 true))

(declare-fun bs!337820 () Bool)

(declare-fun b!1394613 () Bool)

(assert (= bs!337820 (and b!1394613 b!1394594)))

(declare-fun lambda!60507 () Int)

(declare-fun lambda!60506 () Int)

(assert (=> bs!337820 (not (= lambda!60507 lambda!60506))))

(assert (=> b!1394613 true))

(declare-fun e!890572 () Bool)

(assert (=> b!1394592 (= e!890572 (and tp!397710 tp!397703))))

(declare-fun b!1394593 () Bool)

(declare-fun res!629817 () Bool)

(declare-fun e!890561 () Bool)

(assert (=> b!1394593 (=> res!629817 e!890561)))

(declare-datatypes ((List!14208 0))(
  ( (Nil!14142) (Cons!14142 (h!19543 (_ BitVec 16)) (t!122625 List!14208)) )
))
(declare-datatypes ((TokenValue!2539 0))(
  ( (FloatLiteralValue!5078 (text!18218 List!14208)) (TokenValueExt!2538 (__x!8907 Int)) (Broken!12695 (value!79403 List!14208)) (Object!2604) (End!2539) (Def!2539) (Underscore!2539) (Match!2539) (Else!2539) (Error!2539) (Case!2539) (If!2539) (Extends!2539) (Abstract!2539) (Class!2539) (Val!2539) (DelimiterValue!5078 (del!2599 List!14208)) (KeywordValue!2545 (value!79404 List!14208)) (CommentValue!5078 (value!79405 List!14208)) (WhitespaceValue!5078 (value!79406 List!14208)) (IndentationValue!2539 (value!79407 List!14208)) (String!16930) (Int32!2539) (Broken!12696 (value!79408 List!14208)) (Boolean!2540) (Unit!20426) (OperatorValue!2542 (op!2599 List!14208)) (IdentifierValue!5078 (value!79409 List!14208)) (IdentifierValue!5079 (value!79410 List!14208)) (WhitespaceValue!5079 (value!79411 List!14208)) (True!5078) (False!5078) (Broken!12697 (value!79412 List!14208)) (Broken!12698 (value!79413 List!14208)) (True!5079) (RightBrace!2539) (RightBracket!2539) (Colon!2539) (Null!2539) (Comma!2539) (LeftBracket!2539) (False!5079) (LeftBrace!2539) (ImaginaryLiteralValue!2539 (text!18219 List!14208)) (StringLiteralValue!7617 (value!79414 List!14208)) (EOFValue!2539 (value!79415 List!14208)) (IdentValue!2539 (value!79416 List!14208)) (DelimiterValue!5079 (value!79417 List!14208)) (DedentValue!2539 (value!79418 List!14208)) (NewLineValue!2539 (value!79419 List!14208)) (IntegerValue!7617 (value!79420 (_ BitVec 32)) (text!18220 List!14208)) (IntegerValue!7618 (value!79421 Int) (text!18221 List!14208)) (Times!2539) (Or!2539) (Equal!2539) (Minus!2539) (Broken!12699 (value!79422 List!14208)) (And!2539) (Div!2539) (LessEqual!2539) (Mod!2539) (Concat!6302) (Not!2539) (Plus!2539) (SpaceValue!2539 (value!79423 List!14208)) (IntegerValue!7619 (value!79424 Int) (text!18222 List!14208)) (StringLiteralValue!7618 (text!18223 List!14208)) (FloatLiteralValue!5079 (text!18224 List!14208)) (BytesLiteralValue!2539 (value!79425 List!14208)) (CommentValue!5079 (value!79426 List!14208)) (StringLiteralValue!7619 (value!79427 List!14208)) (ErrorTokenValue!2539 (msg!2600 List!14208)) )
))
(declare-datatypes ((C!7816 0))(
  ( (C!7817 (val!4468 Int)) )
))
(declare-datatypes ((List!14209 0))(
  ( (Nil!14143) (Cons!14143 (h!19544 C!7816) (t!122626 List!14209)) )
))
(declare-datatypes ((IArray!9321 0))(
  ( (IArray!9322 (innerList!4718 List!14209)) )
))
(declare-datatypes ((Conc!4658 0))(
  ( (Node!4658 (left!12080 Conc!4658) (right!12410 Conc!4658) (csize!9546 Int) (cheight!4869 Int)) (Leaf!7079 (xs!7385 IArray!9321) (csize!9547 Int)) (Empty!4658) )
))
(declare-datatypes ((BalanceConc!9256 0))(
  ( (BalanceConc!9257 (c!229618 Conc!4658)) )
))
(declare-datatypes ((Regex!3763 0))(
  ( (ElementMatch!3763 (c!229619 C!7816)) (Concat!6303 (regOne!8038 Regex!3763) (regTwo!8038 Regex!3763)) (EmptyExpr!3763) (Star!3763 (reg!4092 Regex!3763)) (EmptyLang!3763) (Union!3763 (regOne!8039 Regex!3763) (regTwo!8039 Regex!3763)) )
))
(declare-datatypes ((String!16931 0))(
  ( (String!16932 (value!79428 String)) )
))
(declare-datatypes ((TokenValueInjection!4738 0))(
  ( (TokenValueInjection!4739 (toValue!3740 Int) (toChars!3599 Int)) )
))
(declare-datatypes ((Rule!4698 0))(
  ( (Rule!4699 (regex!2449 Regex!3763) (tag!2711 String!16931) (isSeparator!2449 Bool) (transformation!2449 TokenValueInjection!4738)) )
))
(declare-datatypes ((Token!4560 0))(
  ( (Token!4561 (value!79429 TokenValue!2539) (rule!4212 Rule!4698) (size!11633 Int) (originalCharacters!3311 List!14209)) )
))
(declare-fun t2!34 () Token!4560)

(declare-fun lt!464388 () List!14209)

(declare-fun matchR!1754 (Regex!3763 List!14209) Bool)

(assert (=> b!1394593 (= res!629817 (not (matchR!1754 (regex!2449 (rule!4212 t2!34)) lt!464388)))))

(declare-fun e!890564 () Bool)

(declare-fun e!890578 () Bool)

(assert (=> b!1394594 (= e!890564 e!890578)))

(declare-fun res!629803 () Bool)

(assert (=> b!1394594 (=> res!629803 e!890578)))

(declare-datatypes ((List!14210 0))(
  ( (Nil!14144) (Cons!14144 (h!19545 Rule!4698) (t!122627 List!14210)) )
))
(declare-fun rules!2550 () List!14210)

(declare-fun exists!542 (List!14210 Int) Bool)

(assert (=> b!1394594 (= res!629803 (not (exists!542 rules!2550 lambda!60506)))))

(assert (=> b!1394594 (exists!542 rules!2550 lambda!60506)))

(declare-datatypes ((Unit!20427 0))(
  ( (Unit!20428) )
))
(declare-fun lt!464372 () Unit!20427)

(declare-fun lambda!60504 () Int)

(declare-fun lt!464380 () Regex!3763)

(declare-fun lemmaMapContains!160 (List!14210 Int Regex!3763) Unit!20427)

(assert (=> b!1394594 (= lt!464372 (lemmaMapContains!160 rules!2550 lambda!60504 lt!464380))))

(declare-fun e!890585 () Bool)

(declare-fun tp!397712 () Bool)

(declare-fun e!890563 () Bool)

(declare-fun b!1394595 () Bool)

(declare-fun inv!21 (TokenValue!2539) Bool)

(assert (=> b!1394595 (= e!890563 (and (inv!21 (value!79429 t2!34)) e!890585 tp!397712))))

(declare-fun b!1394596 () Bool)

(declare-fun res!629791 () Bool)

(declare-fun e!890568 () Bool)

(assert (=> b!1394596 (=> res!629791 e!890568)))

(declare-datatypes ((List!14211 0))(
  ( (Nil!14145) (Cons!14145 (h!19546 Token!4560) (t!122628 List!14211)) )
))
(declare-fun lt!464386 () List!14211)

(declare-fun lt!464368 () BalanceConc!9256)

(declare-datatypes ((LexerInterface!2144 0))(
  ( (LexerInterfaceExt!2141 (__x!8908 Int)) (Lexer!2142) )
))
(declare-fun thiss!19762 () LexerInterface!2144)

(declare-datatypes ((tuple2!13754 0))(
  ( (tuple2!13755 (_1!7763 List!14211) (_2!7763 List!14209)) )
))
(declare-fun lexList!658 (LexerInterface!2144 List!14210 List!14209) tuple2!13754)

(declare-fun list!5501 (BalanceConc!9256) List!14209)

(assert (=> b!1394596 (= res!629791 (not (= (lexList!658 thiss!19762 rules!2550 (list!5501 lt!464368)) (tuple2!13755 lt!464386 Nil!14143))))))

(declare-fun b!1394597 () Bool)

(declare-fun e!890562 () Bool)

(declare-fun e!890559 () Bool)

(assert (=> b!1394597 (= e!890562 e!890559)))

(declare-fun res!629787 () Bool)

(assert (=> b!1394597 (=> (not res!629787) (not e!890559))))

(declare-fun lt!464385 () Regex!3763)

(declare-fun lt!464390 () List!14209)

(declare-fun prefixMatch!272 (Regex!3763 List!14209) Bool)

(assert (=> b!1394597 (= res!629787 (prefixMatch!272 lt!464385 lt!464390))))

(declare-fun rulesRegex!332 (LexerInterface!2144 List!14210) Regex!3763)

(assert (=> b!1394597 (= lt!464385 (rulesRegex!332 thiss!19762 rules!2550))))

(declare-fun lt!464376 () List!14209)

(declare-fun lt!464381 () C!7816)

(declare-fun ++!3678 (List!14209 List!14209) List!14209)

(assert (=> b!1394597 (= lt!464390 (++!3678 lt!464376 (Cons!14143 lt!464381 Nil!14143)))))

(declare-fun lt!464378 () BalanceConc!9256)

(declare-fun apply!3577 (BalanceConc!9256 Int) C!7816)

(assert (=> b!1394597 (= lt!464381 (apply!3577 lt!464378 0))))

(declare-fun lt!464365 () BalanceConc!9256)

(assert (=> b!1394597 (= lt!464376 (list!5501 lt!464365))))

(declare-fun t1!34 () Token!4560)

(declare-fun charsOf!1421 (Token!4560) BalanceConc!9256)

(assert (=> b!1394597 (= lt!464365 (charsOf!1421 t1!34))))

(declare-fun b!1394598 () Bool)

(declare-fun res!629805 () Bool)

(declare-fun e!890580 () Bool)

(assert (=> b!1394598 (=> (not res!629805) (not e!890580))))

(declare-fun rulesInvariant!2014 (LexerInterface!2144 List!14210) Bool)

(assert (=> b!1394598 (= res!629805 (rulesInvariant!2014 thiss!19762 rules!2550))))

(declare-fun e!890573 () Bool)

(assert (=> b!1394599 (= e!890573 (and tp!397706 tp!397708))))

(declare-fun b!1394600 () Bool)

(declare-fun res!629799 () Bool)

(assert (=> b!1394600 (=> (not res!629799) (not e!890580))))

(declare-fun isEmpty!8582 (List!14210) Bool)

(assert (=> b!1394600 (= res!629799 (not (isEmpty!8582 rules!2550)))))

(declare-fun b!1394601 () Bool)

(declare-fun res!629788 () Bool)

(declare-fun e!890570 () Bool)

(assert (=> b!1394601 (=> res!629788 e!890570)))

(declare-fun contains!2729 (List!14209 C!7816) Bool)

(assert (=> b!1394601 (= res!629788 (not (contains!2729 lt!464390 lt!464381)))))

(declare-fun e!890569 () Bool)

(assert (=> b!1394602 (= e!890559 (not e!890569))))

(declare-fun res!629820 () Bool)

(assert (=> b!1394602 (=> res!629820 e!890569)))

(declare-fun lambda!60503 () Int)

(declare-fun Exists!913 (Int) Bool)

(assert (=> b!1394602 (= res!629820 (not (Exists!913 lambda!60503)))))

(assert (=> b!1394602 (Exists!913 lambda!60503)))

(declare-fun lt!464384 () Unit!20427)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!231 (Regex!3763 List!14209) Unit!20427)

(assert (=> b!1394602 (= lt!464384 (lemmaPrefixMatchThenExistsStringThatMatches!231 lt!464385 lt!464390))))

(declare-fun res!629797 () Bool)

(assert (=> start!126954 (=> (not res!629797) (not e!890580))))

(get-info :version)

(assert (=> start!126954 (= res!629797 ((_ is Lexer!2142) thiss!19762))))

(assert (=> start!126954 e!890580))

(assert (=> start!126954 true))

(declare-fun e!890567 () Bool)

(assert (=> start!126954 e!890567))

(declare-fun e!890581 () Bool)

(declare-fun inv!18478 (Token!4560) Bool)

(assert (=> start!126954 (and (inv!18478 t1!34) e!890581)))

(assert (=> start!126954 (and (inv!18478 t2!34) e!890563)))

(declare-fun e!890575 () Bool)

(assert (=> b!1394603 (= e!890570 e!890575)))

(declare-fun res!629809 () Bool)

(assert (=> b!1394603 (=> res!629809 e!890575)))

(declare-fun lambda!60505 () Int)

(declare-datatypes ((List!14212 0))(
  ( (Nil!14146) (Cons!14146 (h!19547 Regex!3763) (t!122629 List!14212)) )
))
(declare-fun exists!543 (List!14212 Int) Bool)

(declare-fun map!3134 (List!14210 Int) List!14212)

(assert (=> b!1394603 (= res!629809 (not (exists!543 (map!3134 rules!2550 lambda!60504) lambda!60505)))))

(declare-fun lt!464387 () List!14212)

(assert (=> b!1394603 (exists!543 lt!464387 lambda!60505)))

(declare-fun lt!464375 () Unit!20427)

(declare-fun lt!464370 () List!14209)

(declare-fun matchRGenUnionSpec!174 (Regex!3763 List!14212 List!14209) Unit!20427)

(assert (=> b!1394603 (= lt!464375 (matchRGenUnionSpec!174 lt!464385 lt!464387 lt!464370))))

(assert (=> b!1394603 (= lt!464387 (map!3134 rules!2550 lambda!60504))))

(declare-fun b!1394604 () Bool)

(assert (=> b!1394604 (= e!890580 e!890562)))

(declare-fun res!629789 () Bool)

(assert (=> b!1394604 (=> (not res!629789) (not e!890562))))

(declare-fun size!11634 (BalanceConc!9256) Int)

(assert (=> b!1394604 (= res!629789 (> (size!11634 lt!464378) 0))))

(assert (=> b!1394604 (= lt!464378 (charsOf!1421 t2!34))))

(declare-fun e!890558 () Bool)

(assert (=> b!1394605 (= e!890558 (and tp!397704 tp!397705))))

(declare-fun tp!397707 () Bool)

(declare-fun b!1394606 () Bool)

(declare-fun e!890584 () Bool)

(declare-fun inv!18475 (String!16931) Bool)

(declare-fun inv!18479 (TokenValueInjection!4738) Bool)

(assert (=> b!1394606 (= e!890584 (and tp!397707 (inv!18475 (tag!2711 (rule!4212 t1!34))) (inv!18479 (transformation!2449 (rule!4212 t1!34))) e!890572))))

(declare-fun b!1394607 () Bool)

(declare-fun e!890566 () Unit!20427)

(declare-fun Unit!20429 () Unit!20427)

(assert (=> b!1394607 (= e!890566 Unit!20429)))

(declare-fun b!1394608 () Bool)

(declare-fun e!890583 () Bool)

(assert (=> b!1394608 (= e!890578 e!890583)))

(declare-fun res!629798 () Bool)

(assert (=> b!1394608 (=> res!629798 e!890583)))

(declare-datatypes ((IArray!9323 0))(
  ( (IArray!9324 (innerList!4719 List!14211)) )
))
(declare-datatypes ((Conc!4659 0))(
  ( (Node!4659 (left!12081 Conc!4659) (right!12411 Conc!4659) (csize!9548 Int) (cheight!4870 Int)) (Leaf!7080 (xs!7386 IArray!9323) (csize!9549 Int)) (Empty!4659) )
))
(declare-datatypes ((BalanceConc!9258 0))(
  ( (BalanceConc!9259 (c!229620 Conc!4659)) )
))
(declare-datatypes ((tuple2!13756 0))(
  ( (tuple2!13757 (_1!7764 BalanceConc!9258) (_2!7764 BalanceConc!9256)) )
))
(declare-fun lt!464369 () tuple2!13756)

(declare-fun lt!464382 () List!14211)

(declare-fun list!5502 (BalanceConc!9258) List!14211)

(assert (=> b!1394608 (= res!629798 (not (= (list!5502 (_1!7764 lt!464369)) lt!464382)))))

(assert (=> b!1394608 (= lt!464382 (Cons!14145 t1!34 Nil!14145))))

(declare-fun lt!464366 () BalanceConc!9256)

(declare-fun lex!969 (LexerInterface!2144 List!14210 BalanceConc!9256) tuple2!13756)

(assert (=> b!1394608 (= lt!464369 (lex!969 thiss!19762 rules!2550 lt!464366))))

(declare-fun print!908 (LexerInterface!2144 BalanceConc!9258) BalanceConc!9256)

(declare-fun singletonSeq!1102 (Token!4560) BalanceConc!9258)

(assert (=> b!1394608 (= lt!464366 (print!908 thiss!19762 (singletonSeq!1102 t1!34)))))

(declare-fun lt!464367 () Rule!4698)

(declare-fun getWitness!430 (List!14210 Int) Rule!4698)

(assert (=> b!1394608 (= lt!464367 (getWitness!430 rules!2550 lambda!60506))))

(declare-fun b!1394609 () Bool)

(declare-fun res!629806 () Bool)

(assert (=> b!1394609 (=> (not res!629806) (not e!890562))))

(declare-fun separableTokensPredicate!427 (LexerInterface!2144 Token!4560 Token!4560 List!14210) Bool)

(assert (=> b!1394609 (= res!629806 (not (separableTokensPredicate!427 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1394610 () Bool)

(assert (=> b!1394610 (= e!890575 e!890564)))

(declare-fun res!629794 () Bool)

(assert (=> b!1394610 (=> res!629794 e!890564)))

(declare-fun contains!2730 (List!14212 Regex!3763) Bool)

(assert (=> b!1394610 (= res!629794 (not (contains!2730 (map!3134 rules!2550 lambda!60504) lt!464380)))))

(declare-fun getWitness!431 (List!14212 Int) Regex!3763)

(assert (=> b!1394610 (= lt!464380 (getWitness!431 (map!3134 rules!2550 lambda!60504) lambda!60505))))

(declare-fun b!1394611 () Bool)

(declare-fun res!629796 () Bool)

(assert (=> b!1394611 (=> (not res!629796) (not e!890580))))

(declare-fun rulesProduceIndividualToken!1113 (LexerInterface!2144 List!14210 Token!4560) Bool)

(assert (=> b!1394611 (= res!629796 (rulesProduceIndividualToken!1113 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1394612 () Bool)

(declare-fun res!629819 () Bool)

(assert (=> b!1394612 (=> res!629819 e!890570)))

(assert (=> b!1394612 (= res!629819 (not (contains!2729 lt!464370 lt!464381)))))

(declare-fun e!890586 () Bool)

(assert (=> b!1394613 (= e!890586 e!890561)))

(declare-fun res!629804 () Bool)

(assert (=> b!1394613 (=> res!629804 e!890561)))

(assert (=> b!1394613 (= res!629804 (not (matchR!1754 (regex!2449 (rule!4212 t1!34)) lt!464376)))))

(declare-fun lt!464364 () Unit!20427)

(declare-fun forallContained!644 (List!14210 Int Rule!4698) Unit!20427)

(assert (=> b!1394613 (= lt!464364 (forallContained!644 rules!2550 lambda!60507 (rule!4212 t2!34)))))

(declare-fun lt!464371 () Unit!20427)

(assert (=> b!1394613 (= lt!464371 (forallContained!644 rules!2550 lambda!60507 (rule!4212 t1!34)))))

(declare-fun lt!464374 () Unit!20427)

(assert (=> b!1394613 (= lt!464374 (forallContained!644 rules!2550 lambda!60507 lt!464367))))

(declare-fun b!1394614 () Bool)

(declare-fun e!890560 () Bool)

(assert (=> b!1394614 (= e!890560 e!890570)))

(declare-fun res!629793 () Bool)

(assert (=> b!1394614 (=> res!629793 e!890570)))

(declare-fun lt!464392 () C!7816)

(assert (=> b!1394614 (= res!629793 (not (contains!2729 lt!464390 lt!464392)))))

(assert (=> b!1394614 (= lt!464392 (apply!3577 lt!464365 0))))

(declare-fun b!1394615 () Bool)

(declare-fun e!890587 () Unit!20427)

(declare-fun Unit!20430 () Unit!20427)

(assert (=> b!1394615 (= e!890587 Unit!20430)))

(declare-fun b!1394616 () Bool)

(declare-fun res!629795 () Bool)

(assert (=> b!1394616 (=> res!629795 e!890568)))

(declare-fun lt!464377 () tuple2!13756)

(declare-fun isEmpty!8583 (BalanceConc!9256) Bool)

(assert (=> b!1394616 (= res!629795 (not (isEmpty!8583 (_2!7764 lt!464377))))))

(declare-fun e!890588 () Bool)

(declare-fun b!1394617 () Bool)

(assert (=> b!1394617 (= e!890588 (or (not (isSeparator!2449 lt!464367)) (not (isSeparator!2449 (rule!4212 t1!34))) (not (isSeparator!2449 (rule!4212 t2!34)))))))

(assert (=> b!1394617 (= (regex!2449 lt!464367) lt!464380)))

(declare-fun tp!397713 () Bool)

(declare-fun b!1394618 () Bool)

(assert (=> b!1394618 (= e!890585 (and tp!397713 (inv!18475 (tag!2711 (rule!4212 t2!34))) (inv!18479 (transformation!2449 (rule!4212 t2!34))) e!890573))))

(declare-fun b!1394619 () Bool)

(declare-fun e!890571 () Bool)

(assert (=> b!1394619 (= e!890571 e!890588)))

(declare-fun res!629811 () Bool)

(assert (=> b!1394619 (=> res!629811 e!890588)))

(declare-fun lt!464391 () Bool)

(assert (=> b!1394619 (= res!629811 lt!464391)))

(declare-fun lt!464373 () Unit!20427)

(assert (=> b!1394619 (= lt!464373 e!890587)))

(declare-fun c!229617 () Bool)

(assert (=> b!1394619 (= c!229617 lt!464391)))

(declare-fun usedCharacters!260 (Regex!3763) List!14209)

(assert (=> b!1394619 (= lt!464391 (not (contains!2729 (usedCharacters!260 (regex!2449 (rule!4212 t2!34))) lt!464381)))))

(declare-fun tp!397714 () Bool)

(declare-fun b!1394620 () Bool)

(assert (=> b!1394620 (= e!890581 (and (inv!21 (value!79429 t1!34)) e!890584 tp!397714))))

(declare-fun b!1394621 () Bool)

(declare-fun e!890576 () Bool)

(declare-fun tp!397711 () Bool)

(assert (=> b!1394621 (= e!890567 (and e!890576 tp!397711))))

(declare-fun b!1394622 () Bool)

(declare-fun res!629808 () Bool)

(assert (=> b!1394622 (=> (not res!629808) (not e!890580))))

(assert (=> b!1394622 (= res!629808 (not (= (isSeparator!2449 (rule!4212 t1!34)) (isSeparator!2449 (rule!4212 t2!34)))))))

(declare-fun b!1394623 () Bool)

(assert (=> b!1394623 (= e!890561 e!890571)))

(declare-fun res!629802 () Bool)

(assert (=> b!1394623 (=> res!629802 e!890571)))

(declare-fun lt!464379 () Bool)

(assert (=> b!1394623 (= res!629802 lt!464379)))

(declare-fun lt!464389 () Unit!20427)

(assert (=> b!1394623 (= lt!464389 e!890566)))

(declare-fun c!229616 () Bool)

(assert (=> b!1394623 (= c!229616 lt!464379)))

(assert (=> b!1394623 (= lt!464379 (not (contains!2729 (usedCharacters!260 (regex!2449 (rule!4212 t1!34))) lt!464392)))))

(declare-fun b!1394624 () Bool)

(declare-fun res!629816 () Bool)

(assert (=> b!1394624 (=> (not res!629816) (not e!890562))))

(declare-fun sepAndNonSepRulesDisjointChars!822 (List!14210 List!14210) Bool)

(assert (=> b!1394624 (= res!629816 (sepAndNonSepRulesDisjointChars!822 rules!2550 rules!2550))))

(declare-fun tp!397709 () Bool)

(declare-fun b!1394625 () Bool)

(assert (=> b!1394625 (= e!890576 (and tp!397709 (inv!18475 (tag!2711 (h!19545 rules!2550))) (inv!18479 (transformation!2449 (h!19545 rules!2550))) e!890558))))

(declare-fun b!1394626 () Bool)

(declare-fun res!629818 () Bool)

(assert (=> b!1394626 (=> res!629818 e!890583)))

(declare-datatypes ((tuple2!13758 0))(
  ( (tuple2!13759 (_1!7765 Token!4560) (_2!7765 List!14209)) )
))
(declare-datatypes ((Option!2712 0))(
  ( (None!2711) (Some!2711 (v!21615 tuple2!13758)) )
))
(declare-fun maxPrefix!1118 (LexerInterface!2144 List!14210 List!14209) Option!2712)

(assert (=> b!1394626 (= res!629818 (not (= (maxPrefix!1118 thiss!19762 rules!2550 lt!464376) (Some!2711 (tuple2!13759 t1!34 Nil!14143)))))))

(declare-fun b!1394627 () Bool)

(declare-fun res!629807 () Bool)

(assert (=> b!1394627 (=> (not res!629807) (not e!890580))))

(assert (=> b!1394627 (= res!629807 (rulesProduceIndividualToken!1113 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1394628 () Bool)

(assert (=> b!1394628 (= e!890568 e!890586)))

(declare-fun res!629813 () Bool)

(assert (=> b!1394628 (=> res!629813 e!890586)))

(assert (=> b!1394628 (= res!629813 (not (= (maxPrefix!1118 thiss!19762 rules!2550 lt!464388) (Some!2711 (tuple2!13759 t2!34 Nil!14143)))))))

(assert (=> b!1394628 (= lt!464388 (list!5501 lt!464378))))

(declare-fun b!1394629 () Bool)

(assert (=> b!1394629 (= e!890569 e!890560)))

(declare-fun res!629792 () Bool)

(assert (=> b!1394629 (=> res!629792 e!890560)))

(declare-fun getSuffix!609 (List!14209 List!14209) List!14209)

(assert (=> b!1394629 (= res!629792 (not (= lt!464370 (++!3678 lt!464390 (getSuffix!609 lt!464370 lt!464390)))))))

(declare-fun pickWitness!216 (Int) List!14209)

(assert (=> b!1394629 (= lt!464370 (pickWitness!216 lambda!60503))))

(declare-fun b!1394630 () Bool)

(declare-fun Unit!20431 () Unit!20427)

(assert (=> b!1394630 (= e!890566 Unit!20431)))

(declare-fun lt!464363 () Unit!20427)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!194 (Regex!3763 List!14209 C!7816) Unit!20427)

(declare-fun head!2559 (List!14209) C!7816)

(assert (=> b!1394630 (= lt!464363 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!194 (regex!2449 (rule!4212 t1!34)) lt!464376 (head!2559 lt!464376)))))

(assert (=> b!1394630 false))

(declare-fun b!1394631 () Bool)

(declare-fun res!629800 () Bool)

(assert (=> b!1394631 (=> res!629800 e!890583)))

(assert (=> b!1394631 (= res!629800 (not (= (lexList!658 thiss!19762 rules!2550 (list!5501 lt!464366)) (tuple2!13755 lt!464382 Nil!14143))))))

(declare-fun b!1394632 () Bool)

(declare-fun res!629790 () Bool)

(assert (=> b!1394632 (=> res!629790 e!890586)))

(declare-fun contains!2731 (List!14210 Rule!4698) Bool)

(assert (=> b!1394632 (= res!629790 (not (contains!2731 rules!2550 (rule!4212 t2!34))))))

(declare-fun b!1394633 () Bool)

(declare-fun res!629810 () Bool)

(assert (=> b!1394633 (=> res!629810 e!890586)))

(assert (=> b!1394633 (= res!629810 (not (contains!2731 rules!2550 lt!464367)))))

(declare-fun b!1394634 () Bool)

(assert (=> b!1394634 (= e!890583 e!890568)))

(declare-fun res!629814 () Bool)

(assert (=> b!1394634 (=> res!629814 e!890568)))

(assert (=> b!1394634 (= res!629814 (not (= (list!5502 (_1!7764 lt!464377)) lt!464386)))))

(assert (=> b!1394634 (= lt!464386 (Cons!14145 t2!34 Nil!14145))))

(assert (=> b!1394634 (= lt!464377 (lex!969 thiss!19762 rules!2550 lt!464368))))

(assert (=> b!1394634 (= lt!464368 (print!908 thiss!19762 (singletonSeq!1102 t2!34)))))

(declare-fun b!1394635 () Bool)

(declare-fun res!629812 () Bool)

(assert (=> b!1394635 (=> res!629812 e!890570)))

(assert (=> b!1394635 (= res!629812 (not (contains!2729 lt!464370 lt!464392)))))

(declare-fun b!1394636 () Bool)

(declare-fun res!629801 () Bool)

(assert (=> b!1394636 (=> res!629801 e!890583)))

(assert (=> b!1394636 (= res!629801 (not (isEmpty!8583 (_2!7764 lt!464369))))))

(declare-fun b!1394637 () Bool)

(declare-fun res!629821 () Bool)

(assert (=> b!1394637 (=> res!629821 e!890583)))

(assert (=> b!1394637 (= res!629821 (not (contains!2731 rules!2550 (rule!4212 t1!34))))))

(declare-fun b!1394638 () Bool)

(declare-fun res!629815 () Bool)

(assert (=> b!1394638 (=> res!629815 e!890570)))

(assert (=> b!1394638 (= res!629815 (not (matchR!1754 lt!464385 lt!464370)))))

(declare-fun b!1394639 () Bool)

(declare-fun Unit!20432 () Unit!20427)

(assert (=> b!1394639 (= e!890587 Unit!20432)))

(declare-fun lt!464383 () Unit!20427)

(assert (=> b!1394639 (= lt!464383 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!194 (regex!2449 (rule!4212 t2!34)) lt!464388 (head!2559 lt!464388)))))

(assert (=> b!1394639 false))

(assert (= (and start!126954 res!629797) b!1394600))

(assert (= (and b!1394600 res!629799) b!1394598))

(assert (= (and b!1394598 res!629805) b!1394611))

(assert (= (and b!1394611 res!629796) b!1394627))

(assert (= (and b!1394627 res!629807) b!1394622))

(assert (= (and b!1394622 res!629808) b!1394604))

(assert (= (and b!1394604 res!629789) b!1394624))

(assert (= (and b!1394624 res!629816) b!1394609))

(assert (= (and b!1394609 res!629806) b!1394597))

(assert (= (and b!1394597 res!629787) b!1394602))

(assert (= (and b!1394602 (not res!629820)) b!1394629))

(assert (= (and b!1394629 (not res!629792)) b!1394614))

(assert (= (and b!1394614 (not res!629793)) b!1394635))

(assert (= (and b!1394635 (not res!629812)) b!1394601))

(assert (= (and b!1394601 (not res!629788)) b!1394612))

(assert (= (and b!1394612 (not res!629819)) b!1394638))

(assert (= (and b!1394638 (not res!629815)) b!1394603))

(assert (= (and b!1394603 (not res!629809)) b!1394610))

(assert (= (and b!1394610 (not res!629794)) b!1394594))

(assert (= (and b!1394594 (not res!629803)) b!1394608))

(assert (= (and b!1394608 (not res!629798)) b!1394636))

(assert (= (and b!1394636 (not res!629801)) b!1394631))

(assert (= (and b!1394631 (not res!629800)) b!1394626))

(assert (= (and b!1394626 (not res!629818)) b!1394637))

(assert (= (and b!1394637 (not res!629821)) b!1394634))

(assert (= (and b!1394634 (not res!629814)) b!1394616))

(assert (= (and b!1394616 (not res!629795)) b!1394596))

(assert (= (and b!1394596 (not res!629791)) b!1394628))

(assert (= (and b!1394628 (not res!629813)) b!1394632))

(assert (= (and b!1394632 (not res!629790)) b!1394633))

(assert (= (and b!1394633 (not res!629810)) b!1394613))

(assert (= (and b!1394613 (not res!629804)) b!1394593))

(assert (= (and b!1394593 (not res!629817)) b!1394623))

(assert (= (and b!1394623 c!229616) b!1394630))

(assert (= (and b!1394623 (not c!229616)) b!1394607))

(assert (= (and b!1394623 (not res!629802)) b!1394619))

(assert (= (and b!1394619 c!229617) b!1394639))

(assert (= (and b!1394619 (not c!229617)) b!1394615))

(assert (= (and b!1394619 (not res!629811)) b!1394617))

(assert (= b!1394625 b!1394605))

(assert (= b!1394621 b!1394625))

(assert (= (and start!126954 ((_ is Cons!14144) rules!2550)) b!1394621))

(assert (= b!1394606 b!1394592))

(assert (= b!1394620 b!1394606))

(assert (= start!126954 b!1394620))

(assert (= b!1394618 b!1394599))

(assert (= b!1394595 b!1394618))

(assert (= start!126954 b!1394595))

(declare-fun m!1570873 () Bool)

(assert (=> b!1394596 m!1570873))

(assert (=> b!1394596 m!1570873))

(declare-fun m!1570875 () Bool)

(assert (=> b!1394596 m!1570875))

(declare-fun m!1570877 () Bool)

(assert (=> b!1394616 m!1570877))

(declare-fun m!1570879 () Bool)

(assert (=> b!1394623 m!1570879))

(assert (=> b!1394623 m!1570879))

(declare-fun m!1570881 () Bool)

(assert (=> b!1394623 m!1570881))

(declare-fun m!1570883 () Bool)

(assert (=> b!1394637 m!1570883))

(declare-fun m!1570885 () Bool)

(assert (=> b!1394595 m!1570885))

(declare-fun m!1570887 () Bool)

(assert (=> b!1394603 m!1570887))

(declare-fun m!1570889 () Bool)

(assert (=> b!1394603 m!1570889))

(assert (=> b!1394603 m!1570887))

(assert (=> b!1394603 m!1570887))

(declare-fun m!1570891 () Bool)

(assert (=> b!1394603 m!1570891))

(declare-fun m!1570893 () Bool)

(assert (=> b!1394603 m!1570893))

(declare-fun m!1570895 () Bool)

(assert (=> b!1394606 m!1570895))

(declare-fun m!1570897 () Bool)

(assert (=> b!1394606 m!1570897))

(declare-fun m!1570899 () Bool)

(assert (=> b!1394625 m!1570899))

(declare-fun m!1570901 () Bool)

(assert (=> b!1394625 m!1570901))

(declare-fun m!1570903 () Bool)

(assert (=> b!1394638 m!1570903))

(declare-fun m!1570905 () Bool)

(assert (=> b!1394604 m!1570905))

(declare-fun m!1570907 () Bool)

(assert (=> b!1394604 m!1570907))

(declare-fun m!1570909 () Bool)

(assert (=> start!126954 m!1570909))

(declare-fun m!1570911 () Bool)

(assert (=> start!126954 m!1570911))

(declare-fun m!1570913 () Bool)

(assert (=> b!1394626 m!1570913))

(declare-fun m!1570915 () Bool)

(assert (=> b!1394614 m!1570915))

(declare-fun m!1570917 () Bool)

(assert (=> b!1394614 m!1570917))

(declare-fun m!1570919 () Bool)

(assert (=> b!1394594 m!1570919))

(assert (=> b!1394594 m!1570919))

(declare-fun m!1570921 () Bool)

(assert (=> b!1394594 m!1570921))

(declare-fun m!1570923 () Bool)

(assert (=> b!1394619 m!1570923))

(assert (=> b!1394619 m!1570923))

(declare-fun m!1570925 () Bool)

(assert (=> b!1394619 m!1570925))

(declare-fun m!1570927 () Bool)

(assert (=> b!1394634 m!1570927))

(declare-fun m!1570929 () Bool)

(assert (=> b!1394634 m!1570929))

(declare-fun m!1570931 () Bool)

(assert (=> b!1394634 m!1570931))

(assert (=> b!1394634 m!1570931))

(declare-fun m!1570933 () Bool)

(assert (=> b!1394634 m!1570933))

(declare-fun m!1570935 () Bool)

(assert (=> b!1394639 m!1570935))

(assert (=> b!1394639 m!1570935))

(declare-fun m!1570937 () Bool)

(assert (=> b!1394639 m!1570937))

(declare-fun m!1570939 () Bool)

(assert (=> b!1394613 m!1570939))

(declare-fun m!1570941 () Bool)

(assert (=> b!1394613 m!1570941))

(declare-fun m!1570943 () Bool)

(assert (=> b!1394613 m!1570943))

(declare-fun m!1570945 () Bool)

(assert (=> b!1394613 m!1570945))

(declare-fun m!1570947 () Bool)

(assert (=> b!1394593 m!1570947))

(declare-fun m!1570949 () Bool)

(assert (=> b!1394609 m!1570949))

(declare-fun m!1570951 () Bool)

(assert (=> b!1394618 m!1570951))

(declare-fun m!1570953 () Bool)

(assert (=> b!1394618 m!1570953))

(declare-fun m!1570955 () Bool)

(assert (=> b!1394631 m!1570955))

(assert (=> b!1394631 m!1570955))

(declare-fun m!1570957 () Bool)

(assert (=> b!1394631 m!1570957))

(declare-fun m!1570959 () Bool)

(assert (=> b!1394624 m!1570959))

(declare-fun m!1570961 () Bool)

(assert (=> b!1394598 m!1570961))

(declare-fun m!1570963 () Bool)

(assert (=> b!1394633 m!1570963))

(declare-fun m!1570965 () Bool)

(assert (=> b!1394600 m!1570965))

(assert (=> b!1394610 m!1570887))

(assert (=> b!1394610 m!1570887))

(declare-fun m!1570967 () Bool)

(assert (=> b!1394610 m!1570967))

(assert (=> b!1394610 m!1570887))

(assert (=> b!1394610 m!1570887))

(declare-fun m!1570969 () Bool)

(assert (=> b!1394610 m!1570969))

(declare-fun m!1570971 () Bool)

(assert (=> b!1394628 m!1570971))

(declare-fun m!1570973 () Bool)

(assert (=> b!1394628 m!1570973))

(declare-fun m!1570975 () Bool)

(assert (=> b!1394611 m!1570975))

(declare-fun m!1570977 () Bool)

(assert (=> b!1394601 m!1570977))

(declare-fun m!1570979 () Bool)

(assert (=> b!1394627 m!1570979))

(declare-fun m!1570981 () Bool)

(assert (=> b!1394608 m!1570981))

(declare-fun m!1570983 () Bool)

(assert (=> b!1394608 m!1570983))

(declare-fun m!1570985 () Bool)

(assert (=> b!1394608 m!1570985))

(assert (=> b!1394608 m!1570983))

(declare-fun m!1570987 () Bool)

(assert (=> b!1394608 m!1570987))

(declare-fun m!1570989 () Bool)

(assert (=> b!1394608 m!1570989))

(declare-fun m!1570991 () Bool)

(assert (=> b!1394597 m!1570991))

(declare-fun m!1570993 () Bool)

(assert (=> b!1394597 m!1570993))

(declare-fun m!1570995 () Bool)

(assert (=> b!1394597 m!1570995))

(declare-fun m!1570997 () Bool)

(assert (=> b!1394597 m!1570997))

(declare-fun m!1570999 () Bool)

(assert (=> b!1394597 m!1570999))

(declare-fun m!1571001 () Bool)

(assert (=> b!1394597 m!1571001))

(declare-fun m!1571003 () Bool)

(assert (=> b!1394602 m!1571003))

(assert (=> b!1394602 m!1571003))

(declare-fun m!1571005 () Bool)

(assert (=> b!1394602 m!1571005))

(declare-fun m!1571007 () Bool)

(assert (=> b!1394636 m!1571007))

(declare-fun m!1571009 () Bool)

(assert (=> b!1394632 m!1571009))

(declare-fun m!1571011 () Bool)

(assert (=> b!1394629 m!1571011))

(assert (=> b!1394629 m!1571011))

(declare-fun m!1571013 () Bool)

(assert (=> b!1394629 m!1571013))

(declare-fun m!1571015 () Bool)

(assert (=> b!1394629 m!1571015))

(declare-fun m!1571017 () Bool)

(assert (=> b!1394635 m!1571017))

(declare-fun m!1571019 () Bool)

(assert (=> b!1394612 m!1571019))

(declare-fun m!1571021 () Bool)

(assert (=> b!1394630 m!1571021))

(assert (=> b!1394630 m!1571021))

(declare-fun m!1571023 () Bool)

(assert (=> b!1394630 m!1571023))

(declare-fun m!1571025 () Bool)

(assert (=> b!1394620 m!1571025))

(check-sat b_and!93379 (not b_next!34599) (not b!1394618) (not b_next!34597) (not b!1394609) (not b!1394639) (not b!1394629) (not b!1394638) (not b!1394601) (not b!1394596) (not b!1394627) (not b!1394595) (not b!1394623) (not b!1394598) (not b!1394616) (not b!1394593) (not b_next!34603) (not b!1394600) (not b!1394633) b_and!93387 (not b!1394624) (not b!1394612) (not b!1394635) (not b!1394636) (not b!1394597) b_and!93381 b_and!93385 (not b!1394603) (not b!1394634) b_and!93389 (not b!1394625) (not b!1394604) (not b_next!34605) (not b!1394614) (not start!126954) (not b_next!34595) (not b!1394630) (not b!1394637) (not b!1394613) (not b!1394594) (not b!1394606) (not b!1394619) (not b!1394628) (not b!1394632) (not b_next!34601) (not b!1394610) (not b!1394621) (not b!1394602) (not b!1394631) b_and!93383 (not b!1394626) (not b!1394611) (not b!1394608) (not b!1394620))
(check-sat b_and!93379 (not b_next!34599) (not b_next!34597) (not b_next!34603) b_and!93387 b_and!93389 (not b_next!34605) (not b_next!34595) (not b_next!34601) b_and!93383 b_and!93381 b_and!93385)
