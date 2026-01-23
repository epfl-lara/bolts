; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115010 () Bool)

(assert start!115010)

(declare-fun b!1301465 () Bool)

(declare-fun b_free!30939 () Bool)

(declare-fun b_next!31643 () Bool)

(assert (=> b!1301465 (= b_free!30939 (not b_next!31643))))

(declare-fun tp!379720 () Bool)

(declare-fun b_and!86791 () Bool)

(assert (=> b!1301465 (= tp!379720 b_and!86791)))

(declare-fun b_free!30941 () Bool)

(declare-fun b_next!31645 () Bool)

(assert (=> b!1301465 (= b_free!30941 (not b_next!31645))))

(declare-fun tp!379719 () Bool)

(declare-fun b_and!86793 () Bool)

(assert (=> b!1301465 (= tp!379719 b_and!86793)))

(declare-fun b!1301453 () Bool)

(declare-fun b_free!30943 () Bool)

(declare-fun b_next!31647 () Bool)

(assert (=> b!1301453 (= b_free!30943 (not b_next!31647))))

(declare-fun tp!379724 () Bool)

(declare-fun b_and!86795 () Bool)

(assert (=> b!1301453 (= tp!379724 b_and!86795)))

(declare-fun b_free!30945 () Bool)

(declare-fun b_next!31649 () Bool)

(assert (=> b!1301453 (= b_free!30945 (not b_next!31649))))

(declare-fun tp!379718 () Bool)

(declare-fun b_and!86797 () Bool)

(assert (=> b!1301453 (= tp!379718 b_and!86797)))

(declare-fun b!1301471 () Bool)

(declare-fun b_free!30947 () Bool)

(declare-fun b_next!31651 () Bool)

(assert (=> b!1301471 (= b_free!30947 (not b_next!31651))))

(declare-fun tp!379725 () Bool)

(declare-fun b_and!86799 () Bool)

(assert (=> b!1301471 (= tp!379725 b_and!86799)))

(declare-fun b_free!30949 () Bool)

(declare-fun b_next!31653 () Bool)

(assert (=> b!1301471 (= b_free!30949 (not b_next!31653))))

(declare-fun tp!379715 () Bool)

(declare-fun b_and!86801 () Bool)

(assert (=> b!1301471 (= tp!379715 b_and!86801)))

(declare-fun b!1301458 () Bool)

(assert (=> b!1301458 true))

(assert (=> b!1301458 true))

(declare-fun b!1301444 () Bool)

(declare-fun e!834382 () Bool)

(declare-fun e!834400 () Bool)

(assert (=> b!1301444 (= e!834382 e!834400)))

(declare-fun res!582886 () Bool)

(assert (=> b!1301444 (=> (not res!582886) (not e!834400))))

(declare-datatypes ((C!7416 0))(
  ( (C!7417 (val!4268 Int)) )
))
(declare-datatypes ((List!13105 0))(
  ( (Nil!13039) (Cons!13039 (h!18440 C!7416) (t!117666 List!13105)) )
))
(declare-datatypes ((IArray!8567 0))(
  ( (IArray!8568 (innerList!4341 List!13105)) )
))
(declare-datatypes ((Conc!4281 0))(
  ( (Node!4281 (left!11211 Conc!4281) (right!11541 Conc!4281) (csize!8792 Int) (cheight!4492 Int)) (Leaf!6602 (xs!6996 IArray!8567) (csize!8793 Int)) (Empty!4281) )
))
(declare-datatypes ((BalanceConc!8502 0))(
  ( (BalanceConc!8503 (c!214223 Conc!4281)) )
))
(declare-fun lt!427900 () BalanceConc!8502)

(declare-fun size!10664 (BalanceConc!8502) Int)

(assert (=> b!1301444 (= res!582886 (> (size!10664 lt!427900) 0))))

(declare-datatypes ((List!13106 0))(
  ( (Nil!13040) (Cons!13040 (h!18441 (_ BitVec 16)) (t!117667 List!13106)) )
))
(declare-datatypes ((TokenValue!2339 0))(
  ( (FloatLiteralValue!4678 (text!16818 List!13106)) (TokenValueExt!2338 (__x!8507 Int)) (Broken!11695 (value!73703 List!13106)) (Object!2404) (End!2339) (Def!2339) (Underscore!2339) (Match!2339) (Else!2339) (Error!2339) (Case!2339) (If!2339) (Extends!2339) (Abstract!2339) (Class!2339) (Val!2339) (DelimiterValue!4678 (del!2399 List!13106)) (KeywordValue!2345 (value!73704 List!13106)) (CommentValue!4678 (value!73705 List!13106)) (WhitespaceValue!4678 (value!73706 List!13106)) (IndentationValue!2339 (value!73707 List!13106)) (String!15930) (Int32!2339) (Broken!11696 (value!73708 List!13106)) (Boolean!2340) (Unit!19167) (OperatorValue!2342 (op!2399 List!13106)) (IdentifierValue!4678 (value!73709 List!13106)) (IdentifierValue!4679 (value!73710 List!13106)) (WhitespaceValue!4679 (value!73711 List!13106)) (True!4678) (False!4678) (Broken!11697 (value!73712 List!13106)) (Broken!11698 (value!73713 List!13106)) (True!4679) (RightBrace!2339) (RightBracket!2339) (Colon!2339) (Null!2339) (Comma!2339) (LeftBracket!2339) (False!4679) (LeftBrace!2339) (ImaginaryLiteralValue!2339 (text!16819 List!13106)) (StringLiteralValue!7017 (value!73714 List!13106)) (EOFValue!2339 (value!73715 List!13106)) (IdentValue!2339 (value!73716 List!13106)) (DelimiterValue!4679 (value!73717 List!13106)) (DedentValue!2339 (value!73718 List!13106)) (NewLineValue!2339 (value!73719 List!13106)) (IntegerValue!7017 (value!73720 (_ BitVec 32)) (text!16820 List!13106)) (IntegerValue!7018 (value!73721 Int) (text!16821 List!13106)) (Times!2339) (Or!2339) (Equal!2339) (Minus!2339) (Broken!11699 (value!73722 List!13106)) (And!2339) (Div!2339) (LessEqual!2339) (Mod!2339) (Concat!5902) (Not!2339) (Plus!2339) (SpaceValue!2339 (value!73723 List!13106)) (IntegerValue!7019 (value!73724 Int) (text!16822 List!13106)) (StringLiteralValue!7018 (text!16823 List!13106)) (FloatLiteralValue!4679 (text!16824 List!13106)) (BytesLiteralValue!2339 (value!73725 List!13106)) (CommentValue!4679 (value!73726 List!13106)) (StringLiteralValue!7019 (value!73727 List!13106)) (ErrorTokenValue!2339 (msg!2400 List!13106)) )
))
(declare-datatypes ((Regex!3563 0))(
  ( (ElementMatch!3563 (c!214224 C!7416)) (Concat!5903 (regOne!7638 Regex!3563) (regTwo!7638 Regex!3563)) (EmptyExpr!3563) (Star!3563 (reg!3892 Regex!3563)) (EmptyLang!3563) (Union!3563 (regOne!7639 Regex!3563) (regTwo!7639 Regex!3563)) )
))
(declare-datatypes ((String!15931 0))(
  ( (String!15932 (value!73728 String)) )
))
(declare-datatypes ((TokenValueInjection!4338 0))(
  ( (TokenValueInjection!4339 (toValue!3464 Int) (toChars!3323 Int)) )
))
(declare-datatypes ((Rule!4298 0))(
  ( (Rule!4299 (regex!2249 Regex!3563) (tag!2511 String!15931) (isSeparator!2249 Bool) (transformation!2249 TokenValueInjection!4338)) )
))
(declare-datatypes ((Token!4160 0))(
  ( (Token!4161 (value!73729 TokenValue!2339) (rule!3988 Rule!4298) (size!10665 Int) (originalCharacters!3111 List!13105)) )
))
(declare-fun t2!34 () Token!4160)

(declare-fun charsOf!1221 (Token!4160) BalanceConc!8502)

(assert (=> b!1301444 (= lt!427900 (charsOf!1221 t2!34))))

(declare-fun b!1301446 () Bool)

(declare-fun res!582895 () Bool)

(assert (=> b!1301446 (=> (not res!582895) (not e!834400))))

(declare-fun t1!34 () Token!4160)

(declare-datatypes ((LexerInterface!1944 0))(
  ( (LexerInterfaceExt!1941 (__x!8508 Int)) (Lexer!1942) )
))
(declare-fun thiss!19762 () LexerInterface!1944)

(declare-datatypes ((List!13107 0))(
  ( (Nil!13041) (Cons!13041 (h!18442 Rule!4298) (t!117668 List!13107)) )
))
(declare-fun rules!2550 () List!13107)

(declare-fun separableTokensPredicate!227 (LexerInterface!1944 Token!4160 Token!4160 List!13107) Bool)

(assert (=> b!1301446 (= res!582895 (not (separableTokensPredicate!227 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1301447 () Bool)

(declare-fun res!582887 () Bool)

(assert (=> b!1301447 (=> (not res!582887) (not e!834382))))

(declare-fun rulesInvariant!1814 (LexerInterface!1944 List!13107) Bool)

(assert (=> b!1301447 (= res!582887 (rulesInvariant!1814 thiss!19762 rules!2550))))

(declare-fun b!1301448 () Bool)

(declare-fun res!582879 () Bool)

(assert (=> b!1301448 (=> (not res!582879) (not e!834382))))

(declare-fun rulesProduceIndividualToken!913 (LexerInterface!1944 List!13107 Token!4160) Bool)

(assert (=> b!1301448 (= res!582879 (rulesProduceIndividualToken!913 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1301449 () Bool)

(declare-fun res!582894 () Bool)

(declare-fun e!834393 () Bool)

(assert (=> b!1301449 (=> res!582894 e!834393)))

(declare-fun lt!427895 () List!13105)

(declare-fun lt!427892 () C!7416)

(declare-fun contains!2189 (List!13105 C!7416) Bool)

(assert (=> b!1301449 (= res!582894 (not (contains!2189 lt!427895 lt!427892)))))

(declare-fun b!1301450 () Bool)

(declare-fun res!582878 () Bool)

(declare-fun e!834388 () Bool)

(assert (=> b!1301450 (=> res!582878 e!834388)))

(declare-fun lt!427891 () Regex!3563)

(declare-datatypes ((List!13108 0))(
  ( (Nil!13042) (Cons!13042 (h!18443 Regex!3563) (t!117669 List!13108)) )
))
(declare-fun lt!427896 () List!13108)

(declare-fun generalisedUnion!66 (List!13108) Regex!3563)

(assert (=> b!1301450 (= res!582878 (not (= lt!427891 (generalisedUnion!66 lt!427896))))))

(declare-fun b!1301451 () Bool)

(declare-fun res!582884 () Bool)

(assert (=> b!1301451 (=> res!582884 e!834393)))

(declare-fun lt!427899 () List!13105)

(declare-fun lt!427893 () C!7416)

(assert (=> b!1301451 (= res!582884 (not (contains!2189 lt!427899 lt!427893)))))

(declare-fun b!1301452 () Bool)

(declare-fun e!834399 () Bool)

(declare-fun e!834390 () Bool)

(assert (=> b!1301452 (= e!834399 e!834390)))

(declare-fun res!582892 () Bool)

(assert (=> b!1301452 (=> res!582892 e!834390)))

(declare-fun ++!3320 (List!13105 List!13105) List!13105)

(declare-fun getSuffix!419 (List!13105 List!13105) List!13105)

(assert (=> b!1301452 (= res!582892 (not (= lt!427899 (++!3320 lt!427895 (getSuffix!419 lt!427899 lt!427895)))))))

(declare-fun lambda!51271 () Int)

(declare-fun pickWitness!26 (Int) List!13105)

(assert (=> b!1301452 (= lt!427899 (pickWitness!26 lambda!51271))))

(declare-fun e!834384 () Bool)

(assert (=> b!1301453 (= e!834384 (and tp!379724 tp!379718))))

(declare-fun b!1301454 () Bool)

(declare-fun e!834386 () Bool)

(assert (=> b!1301454 (= e!834400 e!834386)))

(declare-fun res!582880 () Bool)

(assert (=> b!1301454 (=> (not res!582880) (not e!834386))))

(declare-fun prefixMatch!76 (Regex!3563 List!13105) Bool)

(assert (=> b!1301454 (= res!582880 (prefixMatch!76 lt!427891 lt!427895))))

(declare-fun rulesRegex!134 (LexerInterface!1944 List!13107) Regex!3563)

(assert (=> b!1301454 (= lt!427891 (rulesRegex!134 thiss!19762 rules!2550))))

(declare-fun lt!427897 () List!13105)

(assert (=> b!1301454 (= lt!427895 (++!3320 lt!427897 (Cons!13039 lt!427892 Nil!13039)))))

(declare-fun apply!2915 (BalanceConc!8502 Int) C!7416)

(assert (=> b!1301454 (= lt!427892 (apply!2915 lt!427900 0))))

(declare-fun lt!427894 () BalanceConc!8502)

(declare-fun list!4891 (BalanceConc!8502) List!13105)

(assert (=> b!1301454 (= lt!427897 (list!4891 lt!427894))))

(assert (=> b!1301454 (= lt!427894 (charsOf!1221 t1!34))))

(declare-fun res!582890 () Bool)

(assert (=> start!115010 (=> (not res!582890) (not e!834382))))

(get-info :version)

(assert (=> start!115010 (= res!582890 ((_ is Lexer!1942) thiss!19762))))

(assert (=> start!115010 e!834382))

(assert (=> start!115010 true))

(declare-fun e!834402 () Bool)

(assert (=> start!115010 e!834402))

(declare-fun e!834401 () Bool)

(declare-fun inv!17472 (Token!4160) Bool)

(assert (=> start!115010 (and (inv!17472 t1!34) e!834401)))

(declare-fun e!834394 () Bool)

(assert (=> start!115010 (and (inv!17472 t2!34) e!834394)))

(declare-fun b!1301445 () Bool)

(declare-fun res!582883 () Bool)

(assert (=> b!1301445 (=> (not res!582883) (not e!834382))))

(assert (=> b!1301445 (= res!582883 (not (= (isSeparator!2249 (rule!3988 t1!34)) (isSeparator!2249 (rule!3988 t2!34)))))))

(declare-fun e!834389 () Bool)

(declare-fun b!1301455 () Bool)

(declare-fun tp!379717 () Bool)

(declare-fun inv!17469 (String!15931) Bool)

(declare-fun inv!17473 (TokenValueInjection!4338) Bool)

(assert (=> b!1301455 (= e!834389 (and tp!379717 (inv!17469 (tag!2511 (rule!3988 t1!34))) (inv!17473 (transformation!2249 (rule!3988 t1!34))) e!834384))))

(declare-fun b!1301456 () Bool)

(declare-fun res!582881 () Bool)

(assert (=> b!1301456 (=> (not res!582881) (not e!834382))))

(assert (=> b!1301456 (= res!582881 (rulesProduceIndividualToken!913 thiss!19762 rules!2550 t2!34))))

(declare-fun tp!379722 () Bool)

(declare-fun b!1301457 () Bool)

(declare-fun e!834396 () Bool)

(declare-fun inv!21 (TokenValue!2339) Bool)

(assert (=> b!1301457 (= e!834394 (and (inv!21 (value!73729 t2!34)) e!834396 tp!379722))))

(assert (=> b!1301458 (= e!834386 (not e!834399))))

(declare-fun res!582891 () Bool)

(assert (=> b!1301458 (=> res!582891 e!834399)))

(declare-fun Exists!721 (Int) Bool)

(assert (=> b!1301458 (= res!582891 (not (Exists!721 lambda!51271)))))

(assert (=> b!1301458 (Exists!721 lambda!51271)))

(declare-datatypes ((Unit!19168 0))(
  ( (Unit!19169) )
))
(declare-fun lt!427898 () Unit!19168)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!39 (Regex!3563 List!13105) Unit!19168)

(assert (=> b!1301458 (= lt!427898 (lemmaPrefixMatchThenExistsStringThatMatches!39 lt!427891 lt!427895))))

(declare-fun b!1301459 () Bool)

(declare-fun res!582882 () Bool)

(assert (=> b!1301459 (=> res!582882 e!834393)))

(declare-fun matchR!1565 (Regex!3563 List!13105) Bool)

(assert (=> b!1301459 (= res!582882 (not (matchR!1565 lt!427891 lt!427899)))))

(declare-fun b!1301460 () Bool)

(declare-fun e!834397 () Bool)

(declare-fun tp!379716 () Bool)

(assert (=> b!1301460 (= e!834402 (and e!834397 tp!379716))))

(declare-fun b!1301461 () Bool)

(assert (=> b!1301461 (= e!834393 e!834388)))

(declare-fun res!582889 () Bool)

(assert (=> b!1301461 (=> res!582889 e!834388)))

(declare-fun lambda!51273 () Int)

(declare-fun forall!3270 (List!13108 Int) Bool)

(assert (=> b!1301461 (= res!582889 (not (forall!3270 lt!427896 lambda!51273)))))

(declare-fun lambda!51272 () Int)

(declare-fun map!2840 (List!13107 Int) List!13108)

(assert (=> b!1301461 (= lt!427896 (map!2840 rules!2550 lambda!51272))))

(declare-fun b!1301462 () Bool)

(assert (=> b!1301462 (= e!834388 true)))

(declare-fun tp!379721 () Bool)

(declare-fun b!1301463 () Bool)

(assert (=> b!1301463 (= e!834401 (and (inv!21 (value!73729 t1!34)) e!834389 tp!379721))))

(declare-fun b!1301464 () Bool)

(assert (=> b!1301464 (= e!834390 e!834393)))

(declare-fun res!582893 () Bool)

(assert (=> b!1301464 (=> res!582893 e!834393)))

(assert (=> b!1301464 (= res!582893 (not (contains!2189 lt!427895 lt!427893)))))

(assert (=> b!1301464 (= lt!427893 (apply!2915 lt!427894 0))))

(declare-fun e!834392 () Bool)

(assert (=> b!1301465 (= e!834392 (and tp!379720 tp!379719))))

(declare-fun tp!379723 () Bool)

(declare-fun b!1301466 () Bool)

(assert (=> b!1301466 (= e!834397 (and tp!379723 (inv!17469 (tag!2511 (h!18442 rules!2550))) (inv!17473 (transformation!2249 (h!18442 rules!2550))) e!834392))))

(declare-fun b!1301467 () Bool)

(declare-fun res!582885 () Bool)

(assert (=> b!1301467 (=> res!582885 e!834393)))

(assert (=> b!1301467 (= res!582885 (not (contains!2189 lt!427899 lt!427892)))))

(declare-fun b!1301468 () Bool)

(declare-fun e!834395 () Bool)

(declare-fun tp!379726 () Bool)

(assert (=> b!1301468 (= e!834396 (and tp!379726 (inv!17469 (tag!2511 (rule!3988 t2!34))) (inv!17473 (transformation!2249 (rule!3988 t2!34))) e!834395))))

(declare-fun b!1301469 () Bool)

(declare-fun res!582888 () Bool)

(assert (=> b!1301469 (=> (not res!582888) (not e!834400))))

(declare-fun sepAndNonSepRulesDisjointChars!622 (List!13107 List!13107) Bool)

(assert (=> b!1301469 (= res!582888 (sepAndNonSepRulesDisjointChars!622 rules!2550 rules!2550))))

(declare-fun b!1301470 () Bool)

(declare-fun res!582896 () Bool)

(assert (=> b!1301470 (=> (not res!582896) (not e!834382))))

(declare-fun isEmpty!7747 (List!13107) Bool)

(assert (=> b!1301470 (= res!582896 (not (isEmpty!7747 rules!2550)))))

(assert (=> b!1301471 (= e!834395 (and tp!379725 tp!379715))))

(assert (= (and start!115010 res!582890) b!1301470))

(assert (= (and b!1301470 res!582896) b!1301447))

(assert (= (and b!1301447 res!582887) b!1301448))

(assert (= (and b!1301448 res!582879) b!1301456))

(assert (= (and b!1301456 res!582881) b!1301445))

(assert (= (and b!1301445 res!582883) b!1301444))

(assert (= (and b!1301444 res!582886) b!1301469))

(assert (= (and b!1301469 res!582888) b!1301446))

(assert (= (and b!1301446 res!582895) b!1301454))

(assert (= (and b!1301454 res!582880) b!1301458))

(assert (= (and b!1301458 (not res!582891)) b!1301452))

(assert (= (and b!1301452 (not res!582892)) b!1301464))

(assert (= (and b!1301464 (not res!582893)) b!1301451))

(assert (= (and b!1301451 (not res!582884)) b!1301449))

(assert (= (and b!1301449 (not res!582894)) b!1301467))

(assert (= (and b!1301467 (not res!582885)) b!1301459))

(assert (= (and b!1301459 (not res!582882)) b!1301461))

(assert (= (and b!1301461 (not res!582889)) b!1301450))

(assert (= (and b!1301450 (not res!582878)) b!1301462))

(assert (= b!1301466 b!1301465))

(assert (= b!1301460 b!1301466))

(assert (= (and start!115010 ((_ is Cons!13041) rules!2550)) b!1301460))

(assert (= b!1301455 b!1301453))

(assert (= b!1301463 b!1301455))

(assert (= start!115010 b!1301463))

(assert (= b!1301468 b!1301471))

(assert (= b!1301457 b!1301468))

(assert (= start!115010 b!1301457))

(declare-fun m!1453171 () Bool)

(assert (=> b!1301448 m!1453171))

(declare-fun m!1453173 () Bool)

(assert (=> b!1301451 m!1453173))

(declare-fun m!1453175 () Bool)

(assert (=> b!1301464 m!1453175))

(declare-fun m!1453177 () Bool)

(assert (=> b!1301464 m!1453177))

(declare-fun m!1453179 () Bool)

(assert (=> b!1301447 m!1453179))

(declare-fun m!1453181 () Bool)

(assert (=> b!1301449 m!1453181))

(declare-fun m!1453183 () Bool)

(assert (=> b!1301459 m!1453183))

(declare-fun m!1453185 () Bool)

(assert (=> b!1301468 m!1453185))

(declare-fun m!1453187 () Bool)

(assert (=> b!1301468 m!1453187))

(declare-fun m!1453189 () Bool)

(assert (=> b!1301458 m!1453189))

(assert (=> b!1301458 m!1453189))

(declare-fun m!1453191 () Bool)

(assert (=> b!1301458 m!1453191))

(declare-fun m!1453193 () Bool)

(assert (=> b!1301456 m!1453193))

(declare-fun m!1453195 () Bool)

(assert (=> b!1301455 m!1453195))

(declare-fun m!1453197 () Bool)

(assert (=> b!1301455 m!1453197))

(declare-fun m!1453199 () Bool)

(assert (=> b!1301467 m!1453199))

(declare-fun m!1453201 () Bool)

(assert (=> b!1301463 m!1453201))

(declare-fun m!1453203 () Bool)

(assert (=> b!1301454 m!1453203))

(declare-fun m!1453205 () Bool)

(assert (=> b!1301454 m!1453205))

(declare-fun m!1453207 () Bool)

(assert (=> b!1301454 m!1453207))

(declare-fun m!1453209 () Bool)

(assert (=> b!1301454 m!1453209))

(declare-fun m!1453211 () Bool)

(assert (=> b!1301454 m!1453211))

(declare-fun m!1453213 () Bool)

(assert (=> b!1301454 m!1453213))

(declare-fun m!1453215 () Bool)

(assert (=> b!1301461 m!1453215))

(declare-fun m!1453217 () Bool)

(assert (=> b!1301461 m!1453217))

(declare-fun m!1453219 () Bool)

(assert (=> start!115010 m!1453219))

(declare-fun m!1453221 () Bool)

(assert (=> start!115010 m!1453221))

(declare-fun m!1453223 () Bool)

(assert (=> b!1301452 m!1453223))

(assert (=> b!1301452 m!1453223))

(declare-fun m!1453225 () Bool)

(assert (=> b!1301452 m!1453225))

(declare-fun m!1453227 () Bool)

(assert (=> b!1301452 m!1453227))

(declare-fun m!1453229 () Bool)

(assert (=> b!1301466 m!1453229))

(declare-fun m!1453231 () Bool)

(assert (=> b!1301466 m!1453231))

(declare-fun m!1453233 () Bool)

(assert (=> b!1301469 m!1453233))

(declare-fun m!1453235 () Bool)

(assert (=> b!1301457 m!1453235))

(declare-fun m!1453237 () Bool)

(assert (=> b!1301450 m!1453237))

(declare-fun m!1453239 () Bool)

(assert (=> b!1301470 m!1453239))

(declare-fun m!1453241 () Bool)

(assert (=> b!1301446 m!1453241))

(declare-fun m!1453243 () Bool)

(assert (=> b!1301444 m!1453243))

(declare-fun m!1453245 () Bool)

(assert (=> b!1301444 m!1453245))

(check-sat (not b!1301466) (not b!1301455) (not start!115010) (not b!1301459) (not b!1301450) (not b!1301463) b_and!86799 (not b!1301452) b_and!86801 (not b!1301446) (not b!1301461) (not b!1301467) (not b!1301468) (not b_next!31651) (not b_next!31645) (not b!1301464) (not b!1301470) (not b!1301444) (not b!1301457) (not b_next!31643) (not b!1301460) (not b!1301448) (not b_next!31653) (not b!1301458) (not b!1301456) (not b!1301449) b_and!86793 (not b!1301454) (not b_next!31647) (not b!1301469) (not b!1301451) (not b!1301447) (not b_next!31649) b_and!86795 b_and!86791 b_and!86797)
(check-sat b_and!86799 b_and!86801 (not b_next!31643) (not b_next!31653) b_and!86793 (not b_next!31647) (not b_next!31649) (not b_next!31651) (not b_next!31645) b_and!86795 b_and!86791 b_and!86797)
