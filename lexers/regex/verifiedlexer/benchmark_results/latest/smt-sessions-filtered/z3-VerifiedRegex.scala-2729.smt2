; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!146822 () Bool)

(assert start!146822)

(declare-fun b!1573610 () Bool)

(declare-fun b_free!42215 () Bool)

(declare-fun b_next!42919 () Bool)

(assert (=> b!1573610 (= b_free!42215 (not b_next!42919))))

(declare-fun tp!463016 () Bool)

(declare-fun b_and!110021 () Bool)

(assert (=> b!1573610 (= tp!463016 b_and!110021)))

(declare-fun b_free!42217 () Bool)

(declare-fun b_next!42921 () Bool)

(assert (=> b!1573610 (= b_free!42217 (not b_next!42921))))

(declare-fun tp!463017 () Bool)

(declare-fun b_and!110023 () Bool)

(assert (=> b!1573610 (= tp!463017 b_and!110023)))

(declare-fun b!1573603 () Bool)

(declare-fun b_free!42219 () Bool)

(declare-fun b_next!42923 () Bool)

(assert (=> b!1573603 (= b_free!42219 (not b_next!42923))))

(declare-fun tp!463019 () Bool)

(declare-fun b_and!110025 () Bool)

(assert (=> b!1573603 (= tp!463019 b_and!110025)))

(declare-fun b_free!42221 () Bool)

(declare-fun b_next!42925 () Bool)

(assert (=> b!1573603 (= b_free!42221 (not b_next!42925))))

(declare-fun tp!463023 () Bool)

(declare-fun b_and!110027 () Bool)

(assert (=> b!1573603 (= tp!463023 b_and!110027)))

(declare-fun b!1573597 () Bool)

(declare-fun e!1010548 () Bool)

(assert (=> b!1573597 (= e!1010548 (not true))))

(declare-datatypes ((C!8868 0))(
  ( (C!8869 (val!5030 Int)) )
))
(declare-datatypes ((List!17255 0))(
  ( (Nil!17185) (Cons!17185 (h!22586 C!8868) (t!143158 List!17255)) )
))
(declare-fun lt!546977 () List!17255)

(declare-fun lt!546981 () List!17255)

(declare-fun isPrefix!1279 (List!17255 List!17255) Bool)

(assert (=> b!1573597 (isPrefix!1279 lt!546977 lt!546981)))

(declare-datatypes ((Unit!26560 0))(
  ( (Unit!26561) )
))
(declare-fun lt!546979 () Unit!26560)

(declare-fun lt!546984 () List!17255)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!804 (List!17255 List!17255) Unit!26560)

(assert (=> b!1573597 (= lt!546979 (lemmaConcatTwoListThenFirstIsPrefix!804 lt!546977 lt!546984))))

(declare-fun b!1573598 () Bool)

(declare-fun res!701328 () Bool)

(declare-fun e!1010553 () Bool)

(assert (=> b!1573598 (=> (not res!701328) (not e!1010553))))

(declare-datatypes ((List!17256 0))(
  ( (Nil!17186) (Cons!17186 (h!22587 (_ BitVec 16)) (t!143159 List!17256)) )
))
(declare-datatypes ((TokenValue!3109 0))(
  ( (FloatLiteralValue!6218 (text!22208 List!17256)) (TokenValueExt!3108 (__x!11520 Int)) (Broken!15545 (value!95688 List!17256)) (Object!3178) (End!3109) (Def!3109) (Underscore!3109) (Match!3109) (Else!3109) (Error!3109) (Case!3109) (If!3109) (Extends!3109) (Abstract!3109) (Class!3109) (Val!3109) (DelimiterValue!6218 (del!3169 List!17256)) (KeywordValue!3115 (value!95689 List!17256)) (CommentValue!6218 (value!95690 List!17256)) (WhitespaceValue!6218 (value!95691 List!17256)) (IndentationValue!3109 (value!95692 List!17256)) (String!19876) (Int32!3109) (Broken!15546 (value!95693 List!17256)) (Boolean!3110) (Unit!26562) (OperatorValue!3112 (op!3169 List!17256)) (IdentifierValue!6218 (value!95694 List!17256)) (IdentifierValue!6219 (value!95695 List!17256)) (WhitespaceValue!6219 (value!95696 List!17256)) (True!6218) (False!6218) (Broken!15547 (value!95697 List!17256)) (Broken!15548 (value!95698 List!17256)) (True!6219) (RightBrace!3109) (RightBracket!3109) (Colon!3109) (Null!3109) (Comma!3109) (LeftBracket!3109) (False!6219) (LeftBrace!3109) (ImaginaryLiteralValue!3109 (text!22209 List!17256)) (StringLiteralValue!9327 (value!95699 List!17256)) (EOFValue!3109 (value!95700 List!17256)) (IdentValue!3109 (value!95701 List!17256)) (DelimiterValue!6219 (value!95702 List!17256)) (DedentValue!3109 (value!95703 List!17256)) (NewLineValue!3109 (value!95704 List!17256)) (IntegerValue!9327 (value!95705 (_ BitVec 32)) (text!22210 List!17256)) (IntegerValue!9328 (value!95706 Int) (text!22211 List!17256)) (Times!3109) (Or!3109) (Equal!3109) (Minus!3109) (Broken!15549 (value!95707 List!17256)) (And!3109) (Div!3109) (LessEqual!3109) (Mod!3109) (Concat!7456) (Not!3109) (Plus!3109) (SpaceValue!3109 (value!95708 List!17256)) (IntegerValue!9329 (value!95709 Int) (text!22212 List!17256)) (StringLiteralValue!9328 (text!22213 List!17256)) (FloatLiteralValue!6219 (text!22214 List!17256)) (BytesLiteralValue!3109 (value!95710 List!17256)) (CommentValue!6219 (value!95711 List!17256)) (StringLiteralValue!9329 (value!95712 List!17256)) (ErrorTokenValue!3109 (msg!3170 List!17256)) )
))
(declare-datatypes ((IArray!11377 0))(
  ( (IArray!11378 (innerList!5746 List!17255)) )
))
(declare-datatypes ((Conc!5686 0))(
  ( (Node!5686 (left!13901 Conc!5686) (right!14231 Conc!5686) (csize!11602 Int) (cheight!5897 Int)) (Leaf!8416 (xs!8490 IArray!11377) (csize!11603 Int)) (Empty!5686) )
))
(declare-datatypes ((BalanceConc!11316 0))(
  ( (BalanceConc!11317 (c!255199 Conc!5686)) )
))
(declare-datatypes ((String!19877 0))(
  ( (String!19878 (value!95713 String)) )
))
(declare-datatypes ((Regex!4347 0))(
  ( (ElementMatch!4347 (c!255200 C!8868)) (Concat!7457 (regOne!9206 Regex!4347) (regTwo!9206 Regex!4347)) (EmptyExpr!4347) (Star!4347 (reg!4676 Regex!4347)) (EmptyLang!4347) (Union!4347 (regOne!9207 Regex!4347) (regTwo!9207 Regex!4347)) )
))
(declare-datatypes ((TokenValueInjection!5878 0))(
  ( (TokenValueInjection!5879 (toValue!4414 Int) (toChars!4273 Int)) )
))
(declare-datatypes ((Rule!5838 0))(
  ( (Rule!5839 (regex!3019 Regex!4347) (tag!3285 String!19877) (isSeparator!3019 Bool) (transformation!3019 TokenValueInjection!5878)) )
))
(declare-datatypes ((List!17257 0))(
  ( (Nil!17187) (Cons!17187 (h!22588 Rule!5838) (t!143160 List!17257)) )
))
(declare-fun rules!1846 () List!17257)

(declare-datatypes ((LexerInterface!2648 0))(
  ( (LexerInterfaceExt!2645 (__x!11521 Int)) (Lexer!2646) )
))
(declare-fun thiss!17113 () LexerInterface!2648)

(declare-datatypes ((Token!5604 0))(
  ( (Token!5605 (value!95714 TokenValue!3109) (rule!4811 Rule!5838) (size!13872 Int) (originalCharacters!3833 List!17255)) )
))
(declare-datatypes ((List!17258 0))(
  ( (Nil!17188) (Cons!17188 (h!22589 Token!5604) (t!143161 List!17258)) )
))
(declare-fun tokens!457 () List!17258)

(declare-fun rulesProduceEachTokenIndividuallyList!850 (LexerInterface!2648 List!17257 List!17258) Bool)

(assert (=> b!1573598 (= res!701328 (rulesProduceEachTokenIndividuallyList!850 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1573599 () Bool)

(declare-fun tp!463020 () Bool)

(declare-fun e!1010551 () Bool)

(declare-fun e!1010552 () Bool)

(declare-fun inv!21 (TokenValue!3109) Bool)

(assert (=> b!1573599 (= e!1010552 (and (inv!21 (value!95714 (h!22589 tokens!457))) e!1010551 tp!463020))))

(declare-fun b!1573600 () Bool)

(assert (=> b!1573600 (= e!1010553 e!1010548)))

(declare-fun res!701330 () Bool)

(assert (=> b!1573600 (=> (not res!701330) (not e!1010548))))

(declare-fun lt!546982 () List!17255)

(assert (=> b!1573600 (= res!701330 (= lt!546982 lt!546981))))

(declare-fun ++!4455 (List!17255 List!17255) List!17255)

(assert (=> b!1573600 (= lt!546981 (++!4455 lt!546977 lt!546984))))

(declare-fun lt!546983 () BalanceConc!11316)

(declare-fun list!6602 (BalanceConc!11316) List!17255)

(assert (=> b!1573600 (= lt!546982 (list!6602 lt!546983))))

(declare-fun lt!546978 () BalanceConc!11316)

(assert (=> b!1573600 (= lt!546984 (list!6602 lt!546978))))

(declare-fun charsOf!1668 (Token!5604) BalanceConc!11316)

(assert (=> b!1573600 (= lt!546977 (list!6602 (charsOf!1668 (h!22589 tokens!457))))))

(declare-datatypes ((IArray!11379 0))(
  ( (IArray!11380 (innerList!5747 List!17258)) )
))
(declare-datatypes ((Conc!5687 0))(
  ( (Node!5687 (left!13902 Conc!5687) (right!14232 Conc!5687) (csize!11604 Int) (cheight!5898 Int)) (Leaf!8417 (xs!8491 IArray!11379) (csize!11605 Int)) (Empty!5687) )
))
(declare-datatypes ((BalanceConc!11318 0))(
  ( (BalanceConc!11319 (c!255201 Conc!5687)) )
))
(declare-datatypes ((tuple2!16674 0))(
  ( (tuple2!16675 (_1!9739 BalanceConc!11318) (_2!9739 BalanceConc!11316)) )
))
(declare-fun lt!546980 () tuple2!16674)

(declare-fun lex!1132 (LexerInterface!2648 List!17257 BalanceConc!11316) tuple2!16674)

(assert (=> b!1573600 (= lt!546980 (lex!1132 thiss!17113 rules!1846 lt!546978))))

(declare-fun print!1179 (LexerInterface!2648 BalanceConc!11318) BalanceConc!11316)

(declare-fun seqFromList!1816 (List!17258) BalanceConc!11318)

(assert (=> b!1573600 (= lt!546978 (print!1179 thiss!17113 (seqFromList!1816 (t!143161 tokens!457))))))

(assert (=> b!1573600 (= lt!546983 (print!1179 thiss!17113 (seqFromList!1816 tokens!457)))))

(declare-fun b!1573601 () Bool)

(declare-fun res!701327 () Bool)

(assert (=> b!1573601 (=> (not res!701327) (not e!1010553))))

(get-info :version)

(assert (=> b!1573601 (= res!701327 (and (not ((_ is Nil!17188) tokens!457)) (not ((_ is Nil!17188) (t!143161 tokens!457)))))))

(declare-fun tp!463022 () Bool)

(declare-fun b!1573602 () Bool)

(declare-fun e!1010557 () Bool)

(declare-fun inv!22597 (Token!5604) Bool)

(assert (=> b!1573602 (= e!1010557 (and (inv!22597 (h!22589 tokens!457)) e!1010552 tp!463022))))

(declare-fun e!1010558 () Bool)

(assert (=> b!1573603 (= e!1010558 (and tp!463019 tp!463023))))

(declare-fun res!701324 () Bool)

(assert (=> start!146822 (=> (not res!701324) (not e!1010553))))

(assert (=> start!146822 (= res!701324 ((_ is Lexer!2646) thiss!17113))))

(assert (=> start!146822 e!1010553))

(assert (=> start!146822 true))

(declare-fun e!1010549 () Bool)

(assert (=> start!146822 e!1010549))

(assert (=> start!146822 e!1010557))

(declare-fun tp!463018 () Bool)

(declare-fun b!1573604 () Bool)

(declare-fun inv!22594 (String!19877) Bool)

(declare-fun inv!22598 (TokenValueInjection!5878) Bool)

(assert (=> b!1573604 (= e!1010551 (and tp!463018 (inv!22594 (tag!3285 (rule!4811 (h!22589 tokens!457)))) (inv!22598 (transformation!3019 (rule!4811 (h!22589 tokens!457)))) e!1010558))))

(declare-fun tp!463021 () Bool)

(declare-fun e!1010550 () Bool)

(declare-fun b!1573605 () Bool)

(declare-fun e!1010554 () Bool)

(assert (=> b!1573605 (= e!1010550 (and tp!463021 (inv!22594 (tag!3285 (h!22588 rules!1846))) (inv!22598 (transformation!3019 (h!22588 rules!1846))) e!1010554))))

(declare-fun b!1573606 () Bool)

(declare-fun res!701329 () Bool)

(assert (=> b!1573606 (=> (not res!701329) (not e!1010553))))

(declare-fun rulesInvariant!2317 (LexerInterface!2648 List!17257) Bool)

(assert (=> b!1573606 (= res!701329 (rulesInvariant!2317 thiss!17113 rules!1846))))

(declare-fun b!1573607 () Bool)

(declare-fun res!701326 () Bool)

(assert (=> b!1573607 (=> (not res!701326) (not e!1010553))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!341 (LexerInterface!2648 List!17258 List!17257) Bool)

(assert (=> b!1573607 (= res!701326 (tokensListTwoByTwoPredicateSeparableList!341 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1573608 () Bool)

(declare-fun tp!463024 () Bool)

(assert (=> b!1573608 (= e!1010549 (and e!1010550 tp!463024))))

(declare-fun b!1573609 () Bool)

(declare-fun res!701325 () Bool)

(assert (=> b!1573609 (=> (not res!701325) (not e!1010553))))

(declare-fun isEmpty!10269 (List!17257) Bool)

(assert (=> b!1573609 (= res!701325 (not (isEmpty!10269 rules!1846)))))

(assert (=> b!1573610 (= e!1010554 (and tp!463016 tp!463017))))

(assert (= (and start!146822 res!701324) b!1573609))

(assert (= (and b!1573609 res!701325) b!1573606))

(assert (= (and b!1573606 res!701329) b!1573598))

(assert (= (and b!1573598 res!701328) b!1573607))

(assert (= (and b!1573607 res!701326) b!1573601))

(assert (= (and b!1573601 res!701327) b!1573600))

(assert (= (and b!1573600 res!701330) b!1573597))

(assert (= b!1573605 b!1573610))

(assert (= b!1573608 b!1573605))

(assert (= (and start!146822 ((_ is Cons!17187) rules!1846)) b!1573608))

(assert (= b!1573604 b!1573603))

(assert (= b!1573599 b!1573604))

(assert (= b!1573602 b!1573599))

(assert (= (and start!146822 ((_ is Cons!17188) tokens!457)) b!1573602))

(declare-fun m!1852513 () Bool)

(assert (=> b!1573604 m!1852513))

(declare-fun m!1852515 () Bool)

(assert (=> b!1573604 m!1852515))

(declare-fun m!1852517 () Bool)

(assert (=> b!1573600 m!1852517))

(declare-fun m!1852519 () Bool)

(assert (=> b!1573600 m!1852519))

(declare-fun m!1852521 () Bool)

(assert (=> b!1573600 m!1852521))

(declare-fun m!1852523 () Bool)

(assert (=> b!1573600 m!1852523))

(declare-fun m!1852525 () Bool)

(assert (=> b!1573600 m!1852525))

(assert (=> b!1573600 m!1852519))

(declare-fun m!1852527 () Bool)

(assert (=> b!1573600 m!1852527))

(declare-fun m!1852529 () Bool)

(assert (=> b!1573600 m!1852529))

(declare-fun m!1852531 () Bool)

(assert (=> b!1573600 m!1852531))

(assert (=> b!1573600 m!1852529))

(assert (=> b!1573600 m!1852517))

(declare-fun m!1852533 () Bool)

(assert (=> b!1573600 m!1852533))

(declare-fun m!1852535 () Bool)

(assert (=> b!1573600 m!1852535))

(declare-fun m!1852537 () Bool)

(assert (=> b!1573598 m!1852537))

(declare-fun m!1852539 () Bool)

(assert (=> b!1573599 m!1852539))

(declare-fun m!1852541 () Bool)

(assert (=> b!1573605 m!1852541))

(declare-fun m!1852543 () Bool)

(assert (=> b!1573605 m!1852543))

(declare-fun m!1852545 () Bool)

(assert (=> b!1573607 m!1852545))

(declare-fun m!1852547 () Bool)

(assert (=> b!1573602 m!1852547))

(declare-fun m!1852549 () Bool)

(assert (=> b!1573609 m!1852549))

(declare-fun m!1852551 () Bool)

(assert (=> b!1573597 m!1852551))

(declare-fun m!1852553 () Bool)

(assert (=> b!1573597 m!1852553))

(declare-fun m!1852555 () Bool)

(assert (=> b!1573606 m!1852555))

(check-sat (not b!1573609) (not b!1573602) b_and!110027 b_and!110021 (not b!1573599) (not b_next!42925) (not b_next!42919) (not b!1573604) (not b!1573608) (not b!1573598) (not b_next!42921) (not b!1573605) b_and!110025 (not b_next!42923) (not b!1573600) (not b!1573606) (not b!1573597) (not b!1573607) b_and!110023)
(check-sat (not b_next!42923) b_and!110027 b_and!110021 (not b_next!42925) (not b_next!42919) b_and!110023 (not b_next!42921) b_and!110025)
