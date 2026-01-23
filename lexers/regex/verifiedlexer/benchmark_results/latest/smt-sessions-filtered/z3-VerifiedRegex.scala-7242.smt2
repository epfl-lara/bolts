; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!385664 () Bool)

(assert start!385664)

(declare-fun b!4081371 () Bool)

(declare-fun b_free!113913 () Bool)

(declare-fun b_next!114617 () Bool)

(assert (=> b!4081371 (= b_free!113913 (not b_next!114617))))

(declare-fun tp!1235549 () Bool)

(declare-fun b_and!313999 () Bool)

(assert (=> b!4081371 (= tp!1235549 b_and!313999)))

(declare-fun b_free!113915 () Bool)

(declare-fun b_next!114619 () Bool)

(assert (=> b!4081371 (= b_free!113915 (not b_next!114619))))

(declare-fun tp!1235547 () Bool)

(declare-fun b_and!314001 () Bool)

(assert (=> b!4081371 (= tp!1235547 b_and!314001)))

(declare-fun b!4081381 () Bool)

(declare-fun b_free!113917 () Bool)

(declare-fun b_next!114621 () Bool)

(assert (=> b!4081381 (= b_free!113917 (not b_next!114621))))

(declare-fun tp!1235545 () Bool)

(declare-fun b_and!314003 () Bool)

(assert (=> b!4081381 (= tp!1235545 b_and!314003)))

(declare-fun b_free!113919 () Bool)

(declare-fun b_next!114623 () Bool)

(assert (=> b!4081381 (= b_free!113919 (not b_next!114623))))

(declare-fun tp!1235546 () Bool)

(declare-fun b_and!314005 () Bool)

(assert (=> b!4081381 (= tp!1235546 b_and!314005)))

(declare-fun tp!1235553 () Bool)

(declare-fun b!4081369 () Bool)

(declare-fun e!2533158 () Bool)

(declare-datatypes ((List!43847 0))(
  ( (Nil!43723) (Cons!43723 (h!49143 (_ BitVec 16)) (t!337758 List!43847)) )
))
(declare-datatypes ((TokenValue!7286 0))(
  ( (FloatLiteralValue!14572 (text!51447 List!43847)) (TokenValueExt!7285 (__x!26789 Int)) (Broken!36430 (value!221722 List!43847)) (Object!7409) (End!7286) (Def!7286) (Underscore!7286) (Match!7286) (Else!7286) (Error!7286) (Case!7286) (If!7286) (Extends!7286) (Abstract!7286) (Class!7286) (Val!7286) (DelimiterValue!14572 (del!7346 List!43847)) (KeywordValue!7292 (value!221723 List!43847)) (CommentValue!14572 (value!221724 List!43847)) (WhitespaceValue!14572 (value!221725 List!43847)) (IndentationValue!7286 (value!221726 List!43847)) (String!50179) (Int32!7286) (Broken!36431 (value!221727 List!43847)) (Boolean!7287) (Unit!63258) (OperatorValue!7289 (op!7346 List!43847)) (IdentifierValue!14572 (value!221728 List!43847)) (IdentifierValue!14573 (value!221729 List!43847)) (WhitespaceValue!14573 (value!221730 List!43847)) (True!14572) (False!14572) (Broken!36432 (value!221731 List!43847)) (Broken!36433 (value!221732 List!43847)) (True!14573) (RightBrace!7286) (RightBracket!7286) (Colon!7286) (Null!7286) (Comma!7286) (LeftBracket!7286) (False!14573) (LeftBrace!7286) (ImaginaryLiteralValue!7286 (text!51448 List!43847)) (StringLiteralValue!21858 (value!221733 List!43847)) (EOFValue!7286 (value!221734 List!43847)) (IdentValue!7286 (value!221735 List!43847)) (DelimiterValue!14573 (value!221736 List!43847)) (DedentValue!7286 (value!221737 List!43847)) (NewLineValue!7286 (value!221738 List!43847)) (IntegerValue!21858 (value!221739 (_ BitVec 32)) (text!51449 List!43847)) (IntegerValue!21859 (value!221740 Int) (text!51450 List!43847)) (Times!7286) (Or!7286) (Equal!7286) (Minus!7286) (Broken!36434 (value!221741 List!43847)) (And!7286) (Div!7286) (LessEqual!7286) (Mod!7286) (Concat!19247) (Not!7286) (Plus!7286) (SpaceValue!7286 (value!221742 List!43847)) (IntegerValue!21860 (value!221743 Int) (text!51451 List!43847)) (StringLiteralValue!21859 (text!51452 List!43847)) (FloatLiteralValue!14573 (text!51453 List!43847)) (BytesLiteralValue!7286 (value!221744 List!43847)) (CommentValue!14573 (value!221745 List!43847)) (StringLiteralValue!21860 (value!221746 List!43847)) (ErrorTokenValue!7286 (msg!7347 List!43847)) )
))
(declare-datatypes ((String!50180 0))(
  ( (String!50181 (value!221747 String)) )
))
(declare-datatypes ((C!24108 0))(
  ( (C!24109 (val!14164 Int)) )
))
(declare-datatypes ((Regex!11961 0))(
  ( (ElementMatch!11961 (c!703804 C!24108)) (Concat!19248 (regOne!24434 Regex!11961) (regTwo!24434 Regex!11961)) (EmptyExpr!11961) (Star!11961 (reg!12290 Regex!11961)) (EmptyLang!11961) (Union!11961 (regOne!24435 Regex!11961) (regTwo!24435 Regex!11961)) )
))
(declare-datatypes ((List!43848 0))(
  ( (Nil!43724) (Cons!43724 (h!49144 C!24108) (t!337759 List!43848)) )
))
(declare-datatypes ((IArray!26539 0))(
  ( (IArray!26540 (innerList!13327 List!43848)) )
))
(declare-datatypes ((Conc!13267 0))(
  ( (Node!13267 (left!32861 Conc!13267) (right!33191 Conc!13267) (csize!26764 Int) (cheight!13478 Int)) (Leaf!20510 (xs!16573 IArray!26539) (csize!26765 Int)) (Empty!13267) )
))
(declare-datatypes ((BalanceConc!26128 0))(
  ( (BalanceConc!26129 (c!703805 Conc!13267)) )
))
(declare-datatypes ((TokenValueInjection!14000 0))(
  ( (TokenValueInjection!14001 (toValue!9628 Int) (toChars!9487 Int)) )
))
(declare-datatypes ((Rule!13912 0))(
  ( (Rule!13913 (regex!7056 Regex!11961) (tag!7916 String!50180) (isSeparator!7056 Bool) (transformation!7056 TokenValueInjection!14000)) )
))
(declare-datatypes ((List!43849 0))(
  ( (Nil!43725) (Cons!43725 (h!49145 Rule!13912) (t!337760 List!43849)) )
))
(declare-fun rules!3870 () List!43849)

(declare-fun e!2533160 () Bool)

(declare-fun inv!58384 (String!50180) Bool)

(declare-fun inv!58386 (TokenValueInjection!14000) Bool)

(assert (=> b!4081369 (= e!2533158 (and tp!1235553 (inv!58384 (tag!7916 (h!49145 rules!3870))) (inv!58386 (transformation!7056 (h!49145 rules!3870))) e!2533160))))

(declare-fun e!2533154 () Bool)

(declare-fun e!2533159 () Bool)

(declare-fun tp!1235552 () Bool)

(declare-fun r!4213 () Rule!13912)

(declare-fun b!4081370 () Bool)

(assert (=> b!4081370 (= e!2533154 (and tp!1235552 (inv!58384 (tag!7916 r!4213)) (inv!58386 (transformation!7056 r!4213)) e!2533159))))

(assert (=> b!4081371 (= e!2533159 (and tp!1235549 tp!1235547))))

(declare-fun b!4081372 () Bool)

(declare-fun res!1667502 () Bool)

(declare-fun e!2533153 () Bool)

(assert (=> b!4081372 (=> res!1667502 e!2533153)))

(get-info :version)

(assert (=> b!4081372 (= res!1667502 (or (and ((_ is Cons!43725) rules!3870) (= (h!49145 rules!3870) r!4213)) (not ((_ is Cons!43725) rules!3870)) (= (h!49145 rules!3870) r!4213)))))

(declare-fun b!4081373 () Bool)

(declare-fun res!1667508 () Bool)

(declare-fun e!2533157 () Bool)

(assert (=> b!4081373 (=> (not res!1667508) (not e!2533157))))

(declare-fun p!2988 () List!43848)

(declare-fun isEmpty!26131 (List!43848) Bool)

(assert (=> b!4081373 (= res!1667508 (not (isEmpty!26131 p!2988)))))

(declare-fun b!4081374 () Bool)

(declare-fun e!2533149 () Bool)

(declare-fun tp!1235554 () Bool)

(assert (=> b!4081374 (= e!2533149 (and e!2533158 tp!1235554))))

(declare-fun b!4081375 () Bool)

(declare-fun e!2533151 () Bool)

(assert (=> b!4081375 (= e!2533153 e!2533151)))

(declare-fun res!1667505 () Bool)

(assert (=> b!4081375 (=> res!1667505 e!2533151)))

(declare-datatypes ((Token!13238 0))(
  ( (Token!13239 (value!221748 TokenValue!7286) (rule!10176 Rule!13912) (size!32661 Int) (originalCharacters!7650 List!43848)) )
))
(declare-datatypes ((tuple2!42686 0))(
  ( (tuple2!42687 (_1!24477 Token!13238) (_2!24477 List!43848)) )
))
(declare-datatypes ((Option!9464 0))(
  ( (None!9463) (Some!9463 (v!39923 tuple2!42686)) )
))
(declare-fun lt!1460281 () Option!9464)

(declare-fun isEmpty!26132 (Option!9464) Bool)

(assert (=> b!4081375 (= res!1667505 (isEmpty!26132 lt!1460281))))

(declare-datatypes ((LexerInterface!6645 0))(
  ( (LexerInterfaceExt!6642 (__x!26790 Int)) (Lexer!6643) )
))
(declare-fun thiss!26199 () LexerInterface!6645)

(declare-fun input!3411 () List!43848)

(declare-fun maxPrefixOneRule!2927 (LexerInterface!6645 Rule!13912 List!43848) Option!9464)

(assert (=> b!4081375 (= lt!1460281 (maxPrefixOneRule!2927 thiss!26199 (h!49145 rules!3870) input!3411))))

(declare-fun rulesInvariant!5988 (LexerInterface!6645 List!43849) Bool)

(assert (=> b!4081375 (rulesInvariant!5988 thiss!26199 (t!337760 rules!3870))))

(declare-datatypes ((Unit!63259 0))(
  ( (Unit!63260) )
))
(declare-fun lt!1460283 () Unit!63259)

(declare-fun lemmaInvariantOnRulesThenOnTail!772 (LexerInterface!6645 Rule!13912 List!43849) Unit!63259)

(assert (=> b!4081375 (= lt!1460283 (lemmaInvariantOnRulesThenOnTail!772 thiss!26199 (h!49145 rules!3870) (t!337760 rules!3870)))))

(declare-fun res!1667510 () Bool)

(assert (=> start!385664 (=> (not res!1667510) (not e!2533157))))

(assert (=> start!385664 (= res!1667510 ((_ is Lexer!6643) thiss!26199))))

(assert (=> start!385664 e!2533157))

(assert (=> start!385664 true))

(declare-fun e!2533162 () Bool)

(assert (=> start!385664 e!2533162))

(assert (=> start!385664 e!2533149))

(declare-fun e!2533155 () Bool)

(assert (=> start!385664 e!2533155))

(declare-fun e!2533161 () Bool)

(assert (=> start!385664 e!2533161))

(assert (=> start!385664 e!2533154))

(declare-fun b!4081376 () Bool)

(declare-fun res!1667501 () Bool)

(assert (=> b!4081376 (=> (not res!1667501) (not e!2533157))))

(declare-fun contains!8727 (List!43849 Rule!13912) Bool)

(assert (=> b!4081376 (= res!1667501 (contains!8727 rules!3870 r!4213))))

(declare-fun b!4081377 () Bool)

(declare-fun res!1667503 () Bool)

(assert (=> b!4081377 (=> (not res!1667503) (not e!2533157))))

(declare-fun isEmpty!26133 (List!43849) Bool)

(assert (=> b!4081377 (= res!1667503 (not (isEmpty!26133 rules!3870)))))

(declare-fun b!4081378 () Bool)

(declare-fun res!1667506 () Bool)

(assert (=> b!4081378 (=> (not res!1667506) (not e!2533157))))

(assert (=> b!4081378 (= res!1667506 (rulesInvariant!5988 thiss!26199 rules!3870))))

(declare-fun b!4081379 () Bool)

(declare-fun tp_is_empty!20925 () Bool)

(declare-fun tp!1235550 () Bool)

(assert (=> b!4081379 (= e!2533155 (and tp_is_empty!20925 tp!1235550))))

(declare-fun b!4081380 () Bool)

(declare-fun tp!1235548 () Bool)

(assert (=> b!4081380 (= e!2533161 (and tp_is_empty!20925 tp!1235548))))

(assert (=> b!4081381 (= e!2533160 (and tp!1235545 tp!1235546))))

(declare-fun b!4081382 () Bool)

(declare-fun e!2533156 () Bool)

(assert (=> b!4081382 (= e!2533157 e!2533156)))

(declare-fun res!1667504 () Bool)

(assert (=> b!4081382 (=> (not res!1667504) (not e!2533156))))

(declare-fun suffix!1518 () List!43848)

(declare-fun lt!1460282 () BalanceConc!26128)

(declare-fun maxPrefix!3937 (LexerInterface!6645 List!43849 List!43848) Option!9464)

(declare-fun apply!10239 (TokenValueInjection!14000 BalanceConc!26128) TokenValue!7286)

(declare-fun size!32662 (List!43848) Int)

(assert (=> b!4081382 (= res!1667504 (= (maxPrefix!3937 thiss!26199 rules!3870 input!3411) (Some!9463 (tuple2!42687 (Token!13239 (apply!10239 (transformation!7056 r!4213) lt!1460282) r!4213 (size!32662 p!2988) p!2988) suffix!1518))))))

(declare-fun lt!1460280 () Unit!63259)

(declare-fun lemmaSemiInverse!2023 (TokenValueInjection!14000 BalanceConc!26128) Unit!63259)

(assert (=> b!4081382 (= lt!1460280 (lemmaSemiInverse!2023 (transformation!7056 r!4213) lt!1460282))))

(declare-fun seqFromList!5273 (List!43848) BalanceConc!26128)

(assert (=> b!4081382 (= lt!1460282 (seqFromList!5273 p!2988))))

(declare-fun b!4081383 () Bool)

(assert (=> b!4081383 (= e!2533156 (not e!2533153))))

(declare-fun res!1667509 () Bool)

(assert (=> b!4081383 (=> res!1667509 e!2533153)))

(declare-fun matchR!5906 (Regex!11961 List!43848) Bool)

(assert (=> b!4081383 (= res!1667509 (not (matchR!5906 (regex!7056 r!4213) p!2988)))))

(declare-fun ruleValid!2980 (LexerInterface!6645 Rule!13912) Bool)

(assert (=> b!4081383 (ruleValid!2980 thiss!26199 r!4213)))

(declare-fun lt!1460285 () Unit!63259)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2048 (LexerInterface!6645 Rule!13912 List!43849) Unit!63259)

(assert (=> b!4081383 (= lt!1460285 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2048 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4081384 () Bool)

(declare-fun res!1667507 () Bool)

(assert (=> b!4081384 (=> (not res!1667507) (not e!2533157))))

(declare-fun ++!11462 (List!43848 List!43848) List!43848)

(assert (=> b!4081384 (= res!1667507 (= input!3411 (++!11462 p!2988 suffix!1518)))))

(declare-fun b!4081385 () Bool)

(declare-fun lt!1460284 () tuple2!42686)

(assert (=> b!4081385 (= e!2533151 (or (not (= (rule!10176 (_1!24477 lt!1460284)) (h!49145 rules!3870))) (not (= (rule!10176 (_1!24477 lt!1460284)) r!4213))))))

(declare-fun get!14340 (Option!9464) tuple2!42686)

(assert (=> b!4081385 (= lt!1460284 (get!14340 lt!1460281))))

(declare-fun b!4081386 () Bool)

(declare-fun tp!1235551 () Bool)

(assert (=> b!4081386 (= e!2533162 (and tp_is_empty!20925 tp!1235551))))

(assert (= (and start!385664 res!1667510) b!4081377))

(assert (= (and b!4081377 res!1667503) b!4081378))

(assert (= (and b!4081378 res!1667506) b!4081376))

(assert (= (and b!4081376 res!1667501) b!4081384))

(assert (= (and b!4081384 res!1667507) b!4081373))

(assert (= (and b!4081373 res!1667508) b!4081382))

(assert (= (and b!4081382 res!1667504) b!4081383))

(assert (= (and b!4081383 (not res!1667509)) b!4081372))

(assert (= (and b!4081372 (not res!1667502)) b!4081375))

(assert (= (and b!4081375 (not res!1667505)) b!4081385))

(assert (= (and start!385664 ((_ is Cons!43724) suffix!1518)) b!4081386))

(assert (= b!4081369 b!4081381))

(assert (= b!4081374 b!4081369))

(assert (= (and start!385664 ((_ is Cons!43725) rules!3870)) b!4081374))

(assert (= (and start!385664 ((_ is Cons!43724) p!2988)) b!4081379))

(assert (= (and start!385664 ((_ is Cons!43724) input!3411)) b!4081380))

(assert (= b!4081370 b!4081371))

(assert (= start!385664 b!4081370))

(declare-fun m!4688985 () Bool)

(assert (=> b!4081377 m!4688985))

(declare-fun m!4688987 () Bool)

(assert (=> b!4081376 m!4688987))

(declare-fun m!4688989 () Bool)

(assert (=> b!4081373 m!4688989))

(declare-fun m!4688991 () Bool)

(assert (=> b!4081382 m!4688991))

(declare-fun m!4688993 () Bool)

(assert (=> b!4081382 m!4688993))

(declare-fun m!4688995 () Bool)

(assert (=> b!4081382 m!4688995))

(declare-fun m!4688997 () Bool)

(assert (=> b!4081382 m!4688997))

(declare-fun m!4688999 () Bool)

(assert (=> b!4081382 m!4688999))

(declare-fun m!4689001 () Bool)

(assert (=> b!4081370 m!4689001))

(declare-fun m!4689003 () Bool)

(assert (=> b!4081370 m!4689003))

(declare-fun m!4689005 () Bool)

(assert (=> b!4081375 m!4689005))

(declare-fun m!4689007 () Bool)

(assert (=> b!4081375 m!4689007))

(declare-fun m!4689009 () Bool)

(assert (=> b!4081375 m!4689009))

(declare-fun m!4689011 () Bool)

(assert (=> b!4081375 m!4689011))

(declare-fun m!4689013 () Bool)

(assert (=> b!4081369 m!4689013))

(declare-fun m!4689015 () Bool)

(assert (=> b!4081369 m!4689015))

(declare-fun m!4689017 () Bool)

(assert (=> b!4081384 m!4689017))

(declare-fun m!4689019 () Bool)

(assert (=> b!4081383 m!4689019))

(declare-fun m!4689021 () Bool)

(assert (=> b!4081383 m!4689021))

(declare-fun m!4689023 () Bool)

(assert (=> b!4081383 m!4689023))

(declare-fun m!4689025 () Bool)

(assert (=> b!4081385 m!4689025))

(declare-fun m!4689027 () Bool)

(assert (=> b!4081378 m!4689027))

(check-sat (not b!4081385) b_and!314003 (not b_next!114623) (not b!4081379) (not b!4081374) (not b!4081373) (not b_next!114617) (not b!4081386) (not b_next!114619) (not b!4081382) (not b_next!114621) (not b!4081376) (not b!4081380) b_and!314001 b_and!314005 (not b!4081369) (not b!4081383) tp_is_empty!20925 (not b!4081370) (not b!4081375) (not b!4081377) b_and!313999 (not b!4081378) (not b!4081384))
(check-sat b_and!314003 (not b_next!114623) (not b_next!114617) (not b_next!114619) b_and!313999 (not b_next!114621) b_and!314001 b_and!314005)
