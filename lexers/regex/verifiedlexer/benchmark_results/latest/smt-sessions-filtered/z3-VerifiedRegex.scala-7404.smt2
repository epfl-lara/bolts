; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!393694 () Bool)

(assert start!393694)

(declare-fun b!4141540 () Bool)

(declare-fun b_free!117979 () Bool)

(declare-fun b_next!118683 () Bool)

(assert (=> b!4141540 (= b_free!117979 (not b_next!118683))))

(declare-fun tp!1262475 () Bool)

(declare-fun b_and!321657 () Bool)

(assert (=> b!4141540 (= tp!1262475 b_and!321657)))

(declare-fun b_free!117981 () Bool)

(declare-fun b_next!118685 () Bool)

(assert (=> b!4141540 (= b_free!117981 (not b_next!118685))))

(declare-fun tp!1262474 () Bool)

(declare-fun b_and!321659 () Bool)

(assert (=> b!4141540 (= tp!1262474 b_and!321659)))

(declare-fun b!4141553 () Bool)

(declare-fun b_free!117983 () Bool)

(declare-fun b_next!118687 () Bool)

(assert (=> b!4141553 (= b_free!117983 (not b_next!118687))))

(declare-fun tp!1262469 () Bool)

(declare-fun b_and!321661 () Bool)

(assert (=> b!4141553 (= tp!1262469 b_and!321661)))

(declare-fun b_free!117985 () Bool)

(declare-fun b_next!118689 () Bool)

(assert (=> b!4141553 (= b_free!117985 (not b_next!118689))))

(declare-fun tp!1262473 () Bool)

(declare-fun b_and!321663 () Bool)

(assert (=> b!4141553 (= tp!1262473 b_and!321663)))

(declare-fun b!4141550 () Bool)

(declare-fun b_free!117987 () Bool)

(declare-fun b_next!118691 () Bool)

(assert (=> b!4141550 (= b_free!117987 (not b_next!118691))))

(declare-fun tp!1262477 () Bool)

(declare-fun b_and!321665 () Bool)

(assert (=> b!4141550 (= tp!1262477 b_and!321665)))

(declare-fun b_free!117989 () Bool)

(declare-fun b_next!118693 () Bool)

(assert (=> b!4141550 (= b_free!117989 (not b_next!118693))))

(declare-fun tp!1262476 () Bool)

(declare-fun b_and!321667 () Bool)

(assert (=> b!4141550 (= tp!1262476 b_and!321667)))

(declare-fun b!4141531 () Bool)

(declare-fun res!1694448 () Bool)

(declare-fun e!2569734 () Bool)

(assert (=> b!4141531 (=> res!1694448 e!2569734)))

(declare-datatypes ((C!24756 0))(
  ( (C!24757 (val!14488 Int)) )
))
(declare-datatypes ((List!45048 0))(
  ( (Nil!44924) (Cons!44924 (h!50344 C!24756) (t!342423 List!45048)) )
))
(declare-fun lt!1477062 () List!45048)

(declare-fun input!3238 () List!45048)

(declare-fun isPrefix!4315 (List!45048 List!45048) Bool)

(assert (=> b!4141531 (= res!1694448 (not (isPrefix!4315 lt!1477062 input!3238)))))

(declare-datatypes ((List!45049 0))(
  ( (Nil!44925) (Cons!44925 (h!50345 (_ BitVec 16)) (t!342424 List!45049)) )
))
(declare-datatypes ((TokenValue!7610 0))(
  ( (FloatLiteralValue!15220 (text!53715 List!45049)) (TokenValueExt!7609 (__x!27437 Int)) (Broken!38050 (value!230858 List!45049)) (Object!7733) (End!7610) (Def!7610) (Underscore!7610) (Match!7610) (Else!7610) (Error!7610) (Case!7610) (If!7610) (Extends!7610) (Abstract!7610) (Class!7610) (Val!7610) (DelimiterValue!15220 (del!7670 List!45049)) (KeywordValue!7616 (value!230859 List!45049)) (CommentValue!15220 (value!230860 List!45049)) (WhitespaceValue!15220 (value!230861 List!45049)) (IndentationValue!7610 (value!230862 List!45049)) (String!51799) (Int32!7610) (Broken!38051 (value!230863 List!45049)) (Boolean!7611) (Unit!64222) (OperatorValue!7613 (op!7670 List!45049)) (IdentifierValue!15220 (value!230864 List!45049)) (IdentifierValue!15221 (value!230865 List!45049)) (WhitespaceValue!15221 (value!230866 List!45049)) (True!15220) (False!15220) (Broken!38052 (value!230867 List!45049)) (Broken!38053 (value!230868 List!45049)) (True!15221) (RightBrace!7610) (RightBracket!7610) (Colon!7610) (Null!7610) (Comma!7610) (LeftBracket!7610) (False!15221) (LeftBrace!7610) (ImaginaryLiteralValue!7610 (text!53716 List!45049)) (StringLiteralValue!22830 (value!230869 List!45049)) (EOFValue!7610 (value!230870 List!45049)) (IdentValue!7610 (value!230871 List!45049)) (DelimiterValue!15221 (value!230872 List!45049)) (DedentValue!7610 (value!230873 List!45049)) (NewLineValue!7610 (value!230874 List!45049)) (IntegerValue!22830 (value!230875 (_ BitVec 32)) (text!53717 List!45049)) (IntegerValue!22831 (value!230876 Int) (text!53718 List!45049)) (Times!7610) (Or!7610) (Equal!7610) (Minus!7610) (Broken!38054 (value!230877 List!45049)) (And!7610) (Div!7610) (LessEqual!7610) (Mod!7610) (Concat!19895) (Not!7610) (Plus!7610) (SpaceValue!7610 (value!230878 List!45049)) (IntegerValue!22832 (value!230879 Int) (text!53719 List!45049)) (StringLiteralValue!22831 (text!53720 List!45049)) (FloatLiteralValue!15221 (text!53721 List!45049)) (BytesLiteralValue!7610 (value!230880 List!45049)) (CommentValue!15221 (value!230881 List!45049)) (StringLiteralValue!22832 (value!230882 List!45049)) (ErrorTokenValue!7610 (msg!7671 List!45049)) )
))
(declare-datatypes ((IArray!27187 0))(
  ( (IArray!27188 (innerList!13651 List!45048)) )
))
(declare-datatypes ((Conc!13591 0))(
  ( (Node!13591 (left!33639 Conc!13591) (right!33969 Conc!13591) (csize!27412 Int) (cheight!13802 Int)) (Leaf!20996 (xs!16897 IArray!27187) (csize!27413 Int)) (Empty!13591) )
))
(declare-datatypes ((BalanceConc!26776 0))(
  ( (BalanceConc!26777 (c!709912 Conc!13591)) )
))
(declare-datatypes ((Regex!12285 0))(
  ( (ElementMatch!12285 (c!709913 C!24756)) (Concat!19896 (regOne!25082 Regex!12285) (regTwo!25082 Regex!12285)) (EmptyExpr!12285) (Star!12285 (reg!12614 Regex!12285)) (EmptyLang!12285) (Union!12285 (regOne!25083 Regex!12285) (regTwo!25083 Regex!12285)) )
))
(declare-datatypes ((String!51800 0))(
  ( (String!51801 (value!230883 String)) )
))
(declare-datatypes ((TokenValueInjection!14648 0))(
  ( (TokenValueInjection!14649 (toValue!10044 Int) (toChars!9903 Int)) )
))
(declare-datatypes ((Rule!14560 0))(
  ( (Rule!14561 (regex!7380 Regex!12285) (tag!8240 String!51800) (isSeparator!7380 Bool) (transformation!7380 TokenValueInjection!14648)) )
))
(declare-datatypes ((List!45050 0))(
  ( (Nil!44926) (Cons!44926 (h!50346 Rule!14560) (t!342425 List!45050)) )
))
(declare-fun rules!3756 () List!45050)

(declare-fun tp!1262472 () Bool)

(declare-fun e!2569726 () Bool)

(declare-fun e!2569729 () Bool)

(declare-fun b!4141532 () Bool)

(declare-fun inv!59529 (String!51800) Bool)

(declare-fun inv!59531 (TokenValueInjection!14648) Bool)

(assert (=> b!4141532 (= e!2569729 (and tp!1262472 (inv!59529 (tag!8240 (h!50346 rules!3756))) (inv!59531 (transformation!7380 (h!50346 rules!3756))) e!2569726))))

(declare-fun b!4141533 () Bool)

(declare-fun res!1694451 () Bool)

(declare-fun e!2569727 () Bool)

(assert (=> b!4141533 (=> (not res!1694451) (not e!2569727))))

(declare-fun p!2912 () List!45048)

(assert (=> b!4141533 (= res!1694451 (isPrefix!4315 p!2912 input!3238))))

(declare-fun b!4141534 () Bool)

(declare-fun res!1694445 () Bool)

(assert (=> b!4141534 (=> (not res!1694445) (not e!2569727))))

(declare-fun isEmpty!26793 (List!45048) Bool)

(assert (=> b!4141534 (= res!1694445 (not (isEmpty!26793 p!2912)))))

(declare-fun b!4141535 () Bool)

(declare-fun res!1694455 () Bool)

(assert (=> b!4141535 (=> (not res!1694455) (not e!2569727))))

(declare-fun isEmpty!26794 (List!45050) Bool)

(assert (=> b!4141535 (= res!1694455 (not (isEmpty!26794 rules!3756)))))

(declare-fun b!4141536 () Bool)

(declare-fun e!2569723 () Bool)

(declare-fun e!2569725 () Bool)

(assert (=> b!4141536 (= e!2569723 (not e!2569725))))

(declare-fun res!1694450 () Bool)

(assert (=> b!4141536 (=> res!1694450 e!2569725)))

(declare-fun rBis!149 () Rule!14560)

(get-info :version)

(assert (=> b!4141536 (= res!1694450 (or (not ((_ is Cons!44926) rules!3756)) (not (= (h!50346 rules!3756) rBis!149))))))

(declare-datatypes ((Unit!64223 0))(
  ( (Unit!64224) )
))
(declare-fun lt!1477071 () Unit!64223)

(declare-datatypes ((LexerInterface!6969 0))(
  ( (LexerInterfaceExt!6966 (__x!27438 Int)) (Lexer!6967) )
))
(declare-fun thiss!25645 () LexerInterface!6969)

(declare-fun r!4008 () Rule!14560)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2226 (LexerInterface!6969 Rule!14560 List!45050) Unit!64223)

(assert (=> b!4141536 (= lt!1477071 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2226 thiss!25645 r!4008 rules!3756))))

(declare-fun ruleValid!3186 (LexerInterface!6969 Rule!14560) Bool)

(assert (=> b!4141536 (ruleValid!3186 thiss!25645 rBis!149)))

(declare-fun lt!1477064 () Unit!64223)

(assert (=> b!4141536 (= lt!1477064 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2226 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4141537 () Bool)

(declare-fun e!2569731 () Bool)

(declare-fun tp_is_empty!21493 () Bool)

(declare-fun tp!1262480 () Bool)

(assert (=> b!4141537 (= e!2569731 (and tp_is_empty!21493 tp!1262480))))

(declare-fun b!4141538 () Bool)

(declare-fun e!2569737 () Bool)

(assert (=> b!4141538 (= e!2569725 e!2569737)))

(declare-fun res!1694447 () Bool)

(assert (=> b!4141538 (=> res!1694447 e!2569737)))

(declare-datatypes ((Token!13690 0))(
  ( (Token!13691 (value!230884 TokenValue!7610) (rule!10492 Rule!14560) (size!33282 Int) (originalCharacters!7876 List!45048)) )
))
(declare-datatypes ((tuple2!43306 0))(
  ( (tuple2!43307 (_1!24787 Token!13690) (_2!24787 List!45048)) )
))
(declare-datatypes ((Option!9686 0))(
  ( (None!9685) (Some!9685 (v!40325 tuple2!43306)) )
))
(declare-fun lt!1477076 () Option!9686)

(declare-fun isEmpty!26795 (Option!9686) Bool)

(assert (=> b!4141538 (= res!1694447 (isEmpty!26795 lt!1477076))))

(declare-fun maxPrefixOneRule!3098 (LexerInterface!6969 Rule!14560 List!45048) Option!9686)

(assert (=> b!4141538 (= lt!1477076 (maxPrefixOneRule!3098 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4141538 (not (= rBis!149 r!4008))))

(declare-fun lt!1477069 () Unit!64223)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!78 (LexerInterface!6969 List!45050 Rule!14560 Rule!14560) Unit!64223)

(assert (=> b!4141538 (= lt!1477069 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!78 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun contains!9060 (List!45050 Rule!14560) Bool)

(declare-fun tail!6553 (List!45050) List!45050)

(assert (=> b!4141538 (contains!9060 (tail!6553 rules!3756) r!4008)))

(declare-fun lt!1477066 () Unit!64223)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!84 (List!45050 Rule!14560 Rule!14560) Unit!64223)

(assert (=> b!4141538 (= lt!1477066 (lemmaGetIndexBiggerAndHeadEqThenTailContains!84 rules!3756 rBis!149 r!4008))))

(declare-fun b!4141539 () Bool)

(declare-fun res!1694454 () Bool)

(assert (=> b!4141539 (=> (not res!1694454) (not e!2569723))))

(assert (=> b!4141539 (= res!1694454 (ruleValid!3186 thiss!25645 r!4008))))

(declare-fun e!2569728 () Bool)

(assert (=> b!4141540 (= e!2569728 (and tp!1262475 tp!1262474))))

(declare-fun b!4141541 () Bool)

(declare-fun e!2569735 () Bool)

(assert (=> b!4141541 (= e!2569737 e!2569735)))

(declare-fun res!1694457 () Bool)

(assert (=> b!4141541 (=> res!1694457 e!2569735)))

(declare-fun lt!1477074 () Int)

(declare-fun lt!1477073 () Int)

(assert (=> b!4141541 (= res!1694457 (or (> lt!1477074 lt!1477073) (>= lt!1477074 lt!1477073)))))

(declare-fun lt!1477063 () BalanceConc!26776)

(declare-fun size!33283 (BalanceConc!26776) Int)

(assert (=> b!4141541 (= lt!1477074 (size!33283 lt!1477063))))

(declare-fun lt!1477070 () tuple2!43306)

(declare-fun charsOf!4979 (Token!13690) BalanceConc!26776)

(assert (=> b!4141541 (= lt!1477063 (charsOf!4979 (_1!24787 lt!1477070)))))

(declare-fun get!14665 (Option!9686) tuple2!43306)

(assert (=> b!4141541 (= lt!1477070 (get!14665 lt!1477076))))

(declare-fun res!1694444 () Bool)

(assert (=> start!393694 (=> (not res!1694444) (not e!2569727))))

(assert (=> start!393694 (= res!1694444 ((_ is Lexer!6967) thiss!25645))))

(assert (=> start!393694 e!2569727))

(declare-fun e!2569732 () Bool)

(assert (=> start!393694 e!2569732))

(assert (=> start!393694 e!2569731))

(assert (=> start!393694 true))

(declare-fun e!2569733 () Bool)

(assert (=> start!393694 e!2569733))

(declare-fun e!2569730 () Bool)

(assert (=> start!393694 e!2569730))

(declare-fun e!2569724 () Bool)

(assert (=> start!393694 e!2569724))

(declare-fun b!4141542 () Bool)

(declare-fun res!1694449 () Bool)

(assert (=> b!4141542 (=> (not res!1694449) (not e!2569723))))

(declare-fun getIndex!726 (List!45050 Rule!14560) Int)

(assert (=> b!4141542 (= res!1694449 (< (getIndex!726 rules!3756 rBis!149) (getIndex!726 rules!3756 r!4008)))))

(declare-fun b!4141543 () Bool)

(declare-fun res!1694446 () Bool)

(assert (=> b!4141543 (=> (not res!1694446) (not e!2569727))))

(declare-fun rulesInvariant!6266 (LexerInterface!6969 List!45050) Bool)

(assert (=> b!4141543 (= res!1694446 (rulesInvariant!6266 thiss!25645 rules!3756))))

(declare-fun b!4141544 () Bool)

(assert (=> b!4141544 (= e!2569727 e!2569723)))

(declare-fun res!1694452 () Bool)

(assert (=> b!4141544 (=> (not res!1694452) (not e!2569723))))

(declare-fun lt!1477065 () TokenValue!7610)

(declare-fun maxPrefix!4159 (LexerInterface!6969 List!45050 List!45048) Option!9686)

(declare-fun getSuffix!2642 (List!45048 List!45048) List!45048)

(assert (=> b!4141544 (= res!1694452 (= (maxPrefix!4159 thiss!25645 rules!3756 input!3238) (Some!9685 (tuple2!43307 (Token!13691 lt!1477065 r!4008 lt!1477073 p!2912) (getSuffix!2642 input!3238 p!2912)))))))

(declare-fun size!33284 (List!45048) Int)

(assert (=> b!4141544 (= lt!1477073 (size!33284 p!2912))))

(declare-fun lt!1477072 () BalanceConc!26776)

(declare-fun apply!10453 (TokenValueInjection!14648 BalanceConc!26776) TokenValue!7610)

(assert (=> b!4141544 (= lt!1477065 (apply!10453 (transformation!7380 r!4008) lt!1477072))))

(declare-fun lt!1477075 () Unit!64223)

(declare-fun lemmaSemiInverse!2238 (TokenValueInjection!14648 BalanceConc!26776) Unit!64223)

(assert (=> b!4141544 (= lt!1477075 (lemmaSemiInverse!2238 (transformation!7380 r!4008) lt!1477072))))

(declare-fun seqFromList!5497 (List!45048) BalanceConc!26776)

(assert (=> b!4141544 (= lt!1477072 (seqFromList!5497 p!2912))))

(declare-fun b!4141545 () Bool)

(declare-fun res!1694456 () Bool)

(assert (=> b!4141545 (=> (not res!1694456) (not e!2569727))))

(assert (=> b!4141545 (= res!1694456 (contains!9060 rules!3756 r!4008))))

(declare-fun b!4141546 () Bool)

(declare-fun res!1694443 () Bool)

(assert (=> b!4141546 (=> (not res!1694443) (not e!2569723))))

(declare-fun matchR!6114 (Regex!12285 List!45048) Bool)

(assert (=> b!4141546 (= res!1694443 (matchR!6114 (regex!7380 r!4008) p!2912))))

(declare-fun b!4141547 () Bool)

(assert (=> b!4141547 (= e!2569735 e!2569734)))

(declare-fun res!1694453 () Bool)

(assert (=> b!4141547 (=> res!1694453 e!2569734)))

(declare-fun lt!1477068 () List!45048)

(assert (=> b!4141547 (= res!1694453 (not (= lt!1477068 input!3238)))))

(assert (=> b!4141547 (isPrefix!4315 lt!1477062 lt!1477068)))

(declare-fun ++!11620 (List!45048 List!45048) List!45048)

(assert (=> b!4141547 (= lt!1477068 (++!11620 lt!1477062 (_2!24787 lt!1477070)))))

(declare-fun lt!1477067 () Unit!64223)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2944 (List!45048 List!45048) Unit!64223)

(assert (=> b!4141547 (= lt!1477067 (lemmaConcatTwoListThenFirstIsPrefix!2944 lt!1477062 (_2!24787 lt!1477070)))))

(declare-fun list!16455 (BalanceConc!26776) List!45048)

(assert (=> b!4141547 (= lt!1477062 (list!16455 lt!1477063))))

(declare-fun b!4141548 () Bool)

(declare-fun tp!1262470 () Bool)

(assert (=> b!4141548 (= e!2569732 (and e!2569729 tp!1262470))))

(declare-fun b!4141549 () Bool)

(declare-fun tp!1262478 () Bool)

(assert (=> b!4141549 (= e!2569730 (and tp_is_empty!21493 tp!1262478))))

(declare-fun e!2569721 () Bool)

(assert (=> b!4141550 (= e!2569721 (and tp!1262477 tp!1262476))))

(declare-fun b!4141551 () Bool)

(declare-fun res!1694458 () Bool)

(assert (=> b!4141551 (=> res!1694458 e!2569734)))

(assert (=> b!4141551 (= res!1694458 (> lt!1477073 (size!33284 input!3238)))))

(declare-fun b!4141552 () Bool)

(assert (=> b!4141552 (= e!2569734 (> lt!1477073 (size!33284 lt!1477062)))))

(assert (=> b!4141553 (= e!2569726 (and tp!1262469 tp!1262473))))

(declare-fun b!4141554 () Bool)

(declare-fun tp!1262471 () Bool)

(assert (=> b!4141554 (= e!2569733 (and tp!1262471 (inv!59529 (tag!8240 r!4008)) (inv!59531 (transformation!7380 r!4008)) e!2569728))))

(declare-fun b!4141555 () Bool)

(declare-fun res!1694442 () Bool)

(assert (=> b!4141555 (=> (not res!1694442) (not e!2569727))))

(assert (=> b!4141555 (= res!1694442 (contains!9060 rules!3756 rBis!149))))

(declare-fun tp!1262479 () Bool)

(declare-fun b!4141556 () Bool)

(assert (=> b!4141556 (= e!2569724 (and tp!1262479 (inv!59529 (tag!8240 rBis!149)) (inv!59531 (transformation!7380 rBis!149)) e!2569721))))

(assert (= (and start!393694 res!1694444) b!4141533))

(assert (= (and b!4141533 res!1694451) b!4141535))

(assert (= (and b!4141535 res!1694455) b!4141543))

(assert (= (and b!4141543 res!1694446) b!4141545))

(assert (= (and b!4141545 res!1694456) b!4141555))

(assert (= (and b!4141555 res!1694442) b!4141534))

(assert (= (and b!4141534 res!1694445) b!4141544))

(assert (= (and b!4141544 res!1694452) b!4141546))

(assert (= (and b!4141546 res!1694443) b!4141542))

(assert (= (and b!4141542 res!1694449) b!4141539))

(assert (= (and b!4141539 res!1694454) b!4141536))

(assert (= (and b!4141536 (not res!1694450)) b!4141538))

(assert (= (and b!4141538 (not res!1694447)) b!4141541))

(assert (= (and b!4141541 (not res!1694457)) b!4141547))

(assert (= (and b!4141547 (not res!1694453)) b!4141531))

(assert (= (and b!4141531 (not res!1694448)) b!4141551))

(assert (= (and b!4141551 (not res!1694458)) b!4141552))

(assert (= b!4141532 b!4141553))

(assert (= b!4141548 b!4141532))

(assert (= (and start!393694 ((_ is Cons!44926) rules!3756)) b!4141548))

(assert (= (and start!393694 ((_ is Cons!44924) p!2912)) b!4141537))

(assert (= b!4141554 b!4141540))

(assert (= start!393694 b!4141554))

(assert (= (and start!393694 ((_ is Cons!44924) input!3238)) b!4141549))

(assert (= b!4141556 b!4141550))

(assert (= start!393694 b!4141556))

(declare-fun m!4737951 () Bool)

(assert (=> b!4141535 m!4737951))

(declare-fun m!4737953 () Bool)

(assert (=> b!4141536 m!4737953))

(declare-fun m!4737955 () Bool)

(assert (=> b!4141536 m!4737955))

(declare-fun m!4737957 () Bool)

(assert (=> b!4141536 m!4737957))

(declare-fun m!4737959 () Bool)

(assert (=> b!4141551 m!4737959))

(declare-fun m!4737961 () Bool)

(assert (=> b!4141546 m!4737961))

(declare-fun m!4737963 () Bool)

(assert (=> b!4141539 m!4737963))

(declare-fun m!4737965 () Bool)

(assert (=> b!4141544 m!4737965))

(declare-fun m!4737967 () Bool)

(assert (=> b!4141544 m!4737967))

(declare-fun m!4737969 () Bool)

(assert (=> b!4141544 m!4737969))

(declare-fun m!4737971 () Bool)

(assert (=> b!4141544 m!4737971))

(declare-fun m!4737973 () Bool)

(assert (=> b!4141544 m!4737973))

(declare-fun m!4737975 () Bool)

(assert (=> b!4141544 m!4737975))

(declare-fun m!4737977 () Bool)

(assert (=> b!4141555 m!4737977))

(declare-fun m!4737979 () Bool)

(assert (=> b!4141531 m!4737979))

(declare-fun m!4737981 () Bool)

(assert (=> b!4141541 m!4737981))

(declare-fun m!4737983 () Bool)

(assert (=> b!4141541 m!4737983))

(declare-fun m!4737985 () Bool)

(assert (=> b!4141541 m!4737985))

(declare-fun m!4737987 () Bool)

(assert (=> b!4141552 m!4737987))

(declare-fun m!4737989 () Bool)

(assert (=> b!4141532 m!4737989))

(declare-fun m!4737991 () Bool)

(assert (=> b!4141532 m!4737991))

(declare-fun m!4737993 () Bool)

(assert (=> b!4141542 m!4737993))

(declare-fun m!4737995 () Bool)

(assert (=> b!4141542 m!4737995))

(declare-fun m!4737997 () Bool)

(assert (=> b!4141547 m!4737997))

(declare-fun m!4737999 () Bool)

(assert (=> b!4141547 m!4737999))

(declare-fun m!4738001 () Bool)

(assert (=> b!4141547 m!4738001))

(declare-fun m!4738003 () Bool)

(assert (=> b!4141547 m!4738003))

(declare-fun m!4738005 () Bool)

(assert (=> b!4141545 m!4738005))

(declare-fun m!4738007 () Bool)

(assert (=> b!4141534 m!4738007))

(declare-fun m!4738009 () Bool)

(assert (=> b!4141556 m!4738009))

(declare-fun m!4738011 () Bool)

(assert (=> b!4141556 m!4738011))

(declare-fun m!4738013 () Bool)

(assert (=> b!4141543 m!4738013))

(declare-fun m!4738015 () Bool)

(assert (=> b!4141533 m!4738015))

(declare-fun m!4738017 () Bool)

(assert (=> b!4141538 m!4738017))

(declare-fun m!4738019 () Bool)

(assert (=> b!4141538 m!4738019))

(declare-fun m!4738021 () Bool)

(assert (=> b!4141538 m!4738021))

(assert (=> b!4141538 m!4738017))

(declare-fun m!4738023 () Bool)

(assert (=> b!4141538 m!4738023))

(declare-fun m!4738025 () Bool)

(assert (=> b!4141538 m!4738025))

(declare-fun m!4738027 () Bool)

(assert (=> b!4141538 m!4738027))

(declare-fun m!4738029 () Bool)

(assert (=> b!4141554 m!4738029))

(declare-fun m!4738031 () Bool)

(assert (=> b!4141554 m!4738031))

(check-sat (not b!4141538) (not b!4141548) (not b!4141556) (not b!4141533) b_and!321665 (not b!4141546) (not b!4141554) (not b_next!118689) (not b_next!118685) (not b!4141555) (not b!4141547) (not b!4141545) (not b!4141532) (not b!4141552) b_and!321661 (not b_next!118693) (not b!4141535) (not b!4141544) (not b_next!118691) (not b_next!118683) (not b!4141536) b_and!321667 (not b_next!118687) b_and!321663 b_and!321657 (not b!4141549) (not b!4141551) b_and!321659 (not b!4141534) (not b!4141542) (not b!4141531) (not b!4141543) (not b!4141539) (not b!4141537) tp_is_empty!21493 (not b!4141541))
(check-sat b_and!321665 b_and!321667 (not b_next!118689) b_and!321657 b_and!321659 (not b_next!118685) b_and!321661 (not b_next!118693) (not b_next!118691) (not b_next!118683) (not b_next!118687) b_and!321663)
(get-model)

(declare-fun d!1226025 () Bool)

(declare-fun res!1694495 () Bool)

(declare-fun e!2569761 () Bool)

(assert (=> d!1226025 (=> (not res!1694495) (not e!2569761))))

(declare-fun validRegex!5533 (Regex!12285) Bool)

(assert (=> d!1226025 (= res!1694495 (validRegex!5533 (regex!7380 r!4008)))))

(assert (=> d!1226025 (= (ruleValid!3186 thiss!25645 r!4008) e!2569761)))

(declare-fun b!4141590 () Bool)

(declare-fun res!1694496 () Bool)

(assert (=> b!4141590 (=> (not res!1694496) (not e!2569761))))

(declare-fun nullable!4325 (Regex!12285) Bool)

(assert (=> b!4141590 (= res!1694496 (not (nullable!4325 (regex!7380 r!4008))))))

(declare-fun b!4141591 () Bool)

(assert (=> b!4141591 (= e!2569761 (not (= (tag!8240 r!4008) (String!51801 ""))))))

(assert (= (and d!1226025 res!1694495) b!4141590))

(assert (= (and b!4141590 res!1694496) b!4141591))

(declare-fun m!4738071 () Bool)

(assert (=> d!1226025 m!4738071))

(declare-fun m!4738073 () Bool)

(assert (=> b!4141590 m!4738073))

(assert (=> b!4141539 d!1226025))

(declare-fun d!1226031 () Bool)

(declare-fun lt!1477094 () Int)

(assert (=> d!1226031 (>= lt!1477094 0)))

(declare-fun e!2569774 () Int)

(assert (=> d!1226031 (= lt!1477094 e!2569774)))

(declare-fun c!709922 () Bool)

(assert (=> d!1226031 (= c!709922 ((_ is Nil!44924) input!3238))))

(assert (=> d!1226031 (= (size!33284 input!3238) lt!1477094)))

(declare-fun b!4141609 () Bool)

(assert (=> b!4141609 (= e!2569774 0)))

(declare-fun b!4141610 () Bool)

(assert (=> b!4141610 (= e!2569774 (+ 1 (size!33284 (t!342423 input!3238))))))

(assert (= (and d!1226031 c!709922) b!4141609))

(assert (= (and d!1226031 (not c!709922)) b!4141610))

(declare-fun m!4738083 () Bool)

(assert (=> b!4141610 m!4738083))

(assert (=> b!4141551 d!1226031))

(declare-fun b!4141643 () Bool)

(declare-fun e!2569799 () Bool)

(assert (=> b!4141643 (= e!2569799 (>= (size!33284 lt!1477068) (size!33284 lt!1477062)))))

(declare-fun b!4141641 () Bool)

(declare-fun res!1694531 () Bool)

(declare-fun e!2569798 () Bool)

(assert (=> b!4141641 (=> (not res!1694531) (not e!2569798))))

(declare-fun head!8738 (List!45048) C!24756)

(assert (=> b!4141641 (= res!1694531 (= (head!8738 lt!1477062) (head!8738 lt!1477068)))))

(declare-fun b!4141642 () Bool)

(declare-fun tail!6555 (List!45048) List!45048)

(assert (=> b!4141642 (= e!2569798 (isPrefix!4315 (tail!6555 lt!1477062) (tail!6555 lt!1477068)))))

(declare-fun b!4141640 () Bool)

(declare-fun e!2569797 () Bool)

(assert (=> b!4141640 (= e!2569797 e!2569798)))

(declare-fun res!1694533 () Bool)

(assert (=> b!4141640 (=> (not res!1694533) (not e!2569798))))

(assert (=> b!4141640 (= res!1694533 (not ((_ is Nil!44924) lt!1477068)))))

(declare-fun d!1226039 () Bool)

(assert (=> d!1226039 e!2569799))

(declare-fun res!1694534 () Bool)

(assert (=> d!1226039 (=> res!1694534 e!2569799)))

(declare-fun lt!1477104 () Bool)

(assert (=> d!1226039 (= res!1694534 (not lt!1477104))))

(assert (=> d!1226039 (= lt!1477104 e!2569797)))

(declare-fun res!1694532 () Bool)

(assert (=> d!1226039 (=> res!1694532 e!2569797)))

(assert (=> d!1226039 (= res!1694532 ((_ is Nil!44924) lt!1477062))))

(assert (=> d!1226039 (= (isPrefix!4315 lt!1477062 lt!1477068) lt!1477104)))

(assert (= (and d!1226039 (not res!1694532)) b!4141640))

(assert (= (and b!4141640 res!1694533) b!4141641))

(assert (= (and b!4141641 res!1694531) b!4141642))

(assert (= (and d!1226039 (not res!1694534)) b!4141643))

(declare-fun m!4738117 () Bool)

(assert (=> b!4141643 m!4738117))

(assert (=> b!4141643 m!4737987))

(declare-fun m!4738119 () Bool)

(assert (=> b!4141641 m!4738119))

(declare-fun m!4738121 () Bool)

(assert (=> b!4141641 m!4738121))

(declare-fun m!4738123 () Bool)

(assert (=> b!4141642 m!4738123))

(declare-fun m!4738125 () Bool)

(assert (=> b!4141642 m!4738125))

(assert (=> b!4141642 m!4738123))

(assert (=> b!4141642 m!4738125))

(declare-fun m!4738127 () Bool)

(assert (=> b!4141642 m!4738127))

(assert (=> b!4141547 d!1226039))

(declare-fun b!4141653 () Bool)

(declare-fun e!2569804 () List!45048)

(assert (=> b!4141653 (= e!2569804 (Cons!44924 (h!50344 lt!1477062) (++!11620 (t!342423 lt!1477062) (_2!24787 lt!1477070))))))

(declare-fun lt!1477107 () List!45048)

(declare-fun e!2569805 () Bool)

(declare-fun b!4141655 () Bool)

(assert (=> b!4141655 (= e!2569805 (or (not (= (_2!24787 lt!1477070) Nil!44924)) (= lt!1477107 lt!1477062)))))

(declare-fun b!4141654 () Bool)

(declare-fun res!1694539 () Bool)

(assert (=> b!4141654 (=> (not res!1694539) (not e!2569805))))

(assert (=> b!4141654 (= res!1694539 (= (size!33284 lt!1477107) (+ (size!33284 lt!1477062) (size!33284 (_2!24787 lt!1477070)))))))

(declare-fun b!4141652 () Bool)

(assert (=> b!4141652 (= e!2569804 (_2!24787 lt!1477070))))

(declare-fun d!1226065 () Bool)

(assert (=> d!1226065 e!2569805))

(declare-fun res!1694540 () Bool)

(assert (=> d!1226065 (=> (not res!1694540) (not e!2569805))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6944 (List!45048) (InoxSet C!24756))

(assert (=> d!1226065 (= res!1694540 (= (content!6944 lt!1477107) ((_ map or) (content!6944 lt!1477062) (content!6944 (_2!24787 lt!1477070)))))))

(assert (=> d!1226065 (= lt!1477107 e!2569804)))

(declare-fun c!709926 () Bool)

(assert (=> d!1226065 (= c!709926 ((_ is Nil!44924) lt!1477062))))

(assert (=> d!1226065 (= (++!11620 lt!1477062 (_2!24787 lt!1477070)) lt!1477107)))

(assert (= (and d!1226065 c!709926) b!4141652))

(assert (= (and d!1226065 (not c!709926)) b!4141653))

(assert (= (and d!1226065 res!1694540) b!4141654))

(assert (= (and b!4141654 res!1694539) b!4141655))

(declare-fun m!4738129 () Bool)

(assert (=> b!4141653 m!4738129))

(declare-fun m!4738131 () Bool)

(assert (=> b!4141654 m!4738131))

(assert (=> b!4141654 m!4737987))

(declare-fun m!4738133 () Bool)

(assert (=> b!4141654 m!4738133))

(declare-fun m!4738135 () Bool)

(assert (=> d!1226065 m!4738135))

(declare-fun m!4738137 () Bool)

(assert (=> d!1226065 m!4738137))

(declare-fun m!4738139 () Bool)

(assert (=> d!1226065 m!4738139))

(assert (=> b!4141547 d!1226065))

(declare-fun d!1226067 () Bool)

(assert (=> d!1226067 (isPrefix!4315 lt!1477062 (++!11620 lt!1477062 (_2!24787 lt!1477070)))))

(declare-fun lt!1477110 () Unit!64223)

(declare-fun choose!25337 (List!45048 List!45048) Unit!64223)

(assert (=> d!1226067 (= lt!1477110 (choose!25337 lt!1477062 (_2!24787 lt!1477070)))))

(assert (=> d!1226067 (= (lemmaConcatTwoListThenFirstIsPrefix!2944 lt!1477062 (_2!24787 lt!1477070)) lt!1477110)))

(declare-fun bs!595252 () Bool)

(assert (= bs!595252 d!1226067))

(assert (=> bs!595252 m!4737999))

(assert (=> bs!595252 m!4737999))

(declare-fun m!4738141 () Bool)

(assert (=> bs!595252 m!4738141))

(declare-fun m!4738143 () Bool)

(assert (=> bs!595252 m!4738143))

(assert (=> b!4141547 d!1226067))

(declare-fun d!1226069 () Bool)

(declare-fun list!16457 (Conc!13591) List!45048)

(assert (=> d!1226069 (= (list!16455 lt!1477063) (list!16457 (c!709912 lt!1477063)))))

(declare-fun bs!595253 () Bool)

(assert (= bs!595253 d!1226069))

(declare-fun m!4738145 () Bool)

(assert (=> bs!595253 m!4738145))

(assert (=> b!4141547 d!1226069))

(declare-fun d!1226071 () Bool)

(assert (=> d!1226071 (ruleValid!3186 thiss!25645 r!4008)))

(declare-fun lt!1477113 () Unit!64223)

(declare-fun choose!25338 (LexerInterface!6969 Rule!14560 List!45050) Unit!64223)

(assert (=> d!1226071 (= lt!1477113 (choose!25338 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1226071 (contains!9060 rules!3756 r!4008)))

(assert (=> d!1226071 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2226 thiss!25645 r!4008 rules!3756) lt!1477113)))

(declare-fun bs!595254 () Bool)

(assert (= bs!595254 d!1226071))

(assert (=> bs!595254 m!4737963))

(declare-fun m!4738147 () Bool)

(assert (=> bs!595254 m!4738147))

(assert (=> bs!595254 m!4738005))

(assert (=> b!4141536 d!1226071))

(declare-fun d!1226073 () Bool)

(declare-fun res!1694541 () Bool)

(declare-fun e!2569806 () Bool)

(assert (=> d!1226073 (=> (not res!1694541) (not e!2569806))))

(assert (=> d!1226073 (= res!1694541 (validRegex!5533 (regex!7380 rBis!149)))))

(assert (=> d!1226073 (= (ruleValid!3186 thiss!25645 rBis!149) e!2569806)))

(declare-fun b!4141656 () Bool)

(declare-fun res!1694542 () Bool)

(assert (=> b!4141656 (=> (not res!1694542) (not e!2569806))))

(assert (=> b!4141656 (= res!1694542 (not (nullable!4325 (regex!7380 rBis!149))))))

(declare-fun b!4141657 () Bool)

(assert (=> b!4141657 (= e!2569806 (not (= (tag!8240 rBis!149) (String!51801 ""))))))

(assert (= (and d!1226073 res!1694541) b!4141656))

(assert (= (and b!4141656 res!1694542) b!4141657))

(declare-fun m!4738149 () Bool)

(assert (=> d!1226073 m!4738149))

(declare-fun m!4738151 () Bool)

(assert (=> b!4141656 m!4738151))

(assert (=> b!4141536 d!1226073))

(declare-fun d!1226075 () Bool)

(assert (=> d!1226075 (ruleValid!3186 thiss!25645 rBis!149)))

(declare-fun lt!1477114 () Unit!64223)

(assert (=> d!1226075 (= lt!1477114 (choose!25338 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1226075 (contains!9060 rules!3756 rBis!149)))

(assert (=> d!1226075 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2226 thiss!25645 rBis!149 rules!3756) lt!1477114)))

(declare-fun bs!595255 () Bool)

(assert (= bs!595255 d!1226075))

(assert (=> bs!595255 m!4737955))

(declare-fun m!4738153 () Bool)

(assert (=> bs!595255 m!4738153))

(assert (=> bs!595255 m!4737977))

(assert (=> b!4141536 d!1226075))

(declare-fun d!1226077 () Bool)

(declare-fun lt!1477117 () Bool)

(declare-fun content!6945 (List!45050) (InoxSet Rule!14560))

(assert (=> d!1226077 (= lt!1477117 (select (content!6945 (tail!6553 rules!3756)) r!4008))))

(declare-fun e!2569811 () Bool)

(assert (=> d!1226077 (= lt!1477117 e!2569811)))

(declare-fun res!1694548 () Bool)

(assert (=> d!1226077 (=> (not res!1694548) (not e!2569811))))

(assert (=> d!1226077 (= res!1694548 ((_ is Cons!44926) (tail!6553 rules!3756)))))

(assert (=> d!1226077 (= (contains!9060 (tail!6553 rules!3756) r!4008) lt!1477117)))

(declare-fun b!4141662 () Bool)

(declare-fun e!2569812 () Bool)

(assert (=> b!4141662 (= e!2569811 e!2569812)))

(declare-fun res!1694547 () Bool)

(assert (=> b!4141662 (=> res!1694547 e!2569812)))

(assert (=> b!4141662 (= res!1694547 (= (h!50346 (tail!6553 rules!3756)) r!4008))))

(declare-fun b!4141663 () Bool)

(assert (=> b!4141663 (= e!2569812 (contains!9060 (t!342425 (tail!6553 rules!3756)) r!4008))))

(assert (= (and d!1226077 res!1694548) b!4141662))

(assert (= (and b!4141662 (not res!1694547)) b!4141663))

(assert (=> d!1226077 m!4738017))

(declare-fun m!4738155 () Bool)

(assert (=> d!1226077 m!4738155))

(declare-fun m!4738157 () Bool)

(assert (=> d!1226077 m!4738157))

(declare-fun m!4738159 () Bool)

(assert (=> b!4141663 m!4738159))

(assert (=> b!4141538 d!1226077))

(declare-fun d!1226079 () Bool)

(assert (=> d!1226079 (= (tail!6553 rules!3756) (t!342425 rules!3756))))

(assert (=> b!4141538 d!1226079))

(declare-fun d!1226081 () Bool)

(assert (=> d!1226081 (= (isEmpty!26795 lt!1477076) (not ((_ is Some!9685) lt!1477076)))))

(assert (=> b!4141538 d!1226081))

(declare-fun d!1226083 () Bool)

(assert (=> d!1226083 (contains!9060 (tail!6553 rules!3756) r!4008)))

(declare-fun lt!1477130 () Unit!64223)

(declare-fun choose!25339 (List!45050 Rule!14560 Rule!14560) Unit!64223)

(assert (=> d!1226083 (= lt!1477130 (choose!25339 rules!3756 rBis!149 r!4008))))

(declare-fun e!2569823 () Bool)

(assert (=> d!1226083 e!2569823))

(declare-fun res!1694565 () Bool)

(assert (=> d!1226083 (=> (not res!1694565) (not e!2569823))))

(assert (=> d!1226083 (= res!1694565 (contains!9060 rules!3756 rBis!149))))

(assert (=> d!1226083 (= (lemmaGetIndexBiggerAndHeadEqThenTailContains!84 rules!3756 rBis!149 r!4008) lt!1477130)))

(declare-fun b!4141684 () Bool)

(assert (=> b!4141684 (= e!2569823 (contains!9060 rules!3756 r!4008))))

(assert (= (and d!1226083 res!1694565) b!4141684))

(assert (=> d!1226083 m!4738017))

(assert (=> d!1226083 m!4738017))

(assert (=> d!1226083 m!4738019))

(declare-fun m!4738161 () Bool)

(assert (=> d!1226083 m!4738161))

(assert (=> d!1226083 m!4737977))

(assert (=> b!4141684 m!4738005))

(assert (=> b!4141538 d!1226083))

(declare-fun b!4141774 () Bool)

(declare-fun res!1694613 () Bool)

(declare-fun e!2569871 () Bool)

(assert (=> b!4141774 (=> (not res!1694613) (not e!2569871))))

(declare-fun lt!1477163 () Option!9686)

(assert (=> b!4141774 (= res!1694613 (= (rule!10492 (_1!24787 (get!14665 lt!1477163))) rBis!149))))

(declare-fun b!4141775 () Bool)

(declare-fun res!1694617 () Bool)

(assert (=> b!4141775 (=> (not res!1694617) (not e!2569871))))

(assert (=> b!4141775 (= res!1694617 (= (++!11620 (list!16455 (charsOf!4979 (_1!24787 (get!14665 lt!1477163)))) (_2!24787 (get!14665 lt!1477163))) input!3238))))

(declare-fun b!4141776 () Bool)

(declare-fun e!2569872 () Bool)

(declare-datatypes ((tuple2!43310 0))(
  ( (tuple2!43311 (_1!24789 List!45048) (_2!24789 List!45048)) )
))
(declare-fun findLongestMatchInner!1529 (Regex!12285 List!45048 Int List!45048 List!45048 Int) tuple2!43310)

(assert (=> b!4141776 (= e!2569872 (matchR!6114 (regex!7380 rBis!149) (_1!24789 (findLongestMatchInner!1529 (regex!7380 rBis!149) Nil!44924 (size!33284 Nil!44924) input!3238 input!3238 (size!33284 input!3238)))))))

(declare-fun b!4141777 () Bool)

(declare-fun res!1694616 () Bool)

(assert (=> b!4141777 (=> (not res!1694616) (not e!2569871))))

(assert (=> b!4141777 (= res!1694616 (= (value!230884 (_1!24787 (get!14665 lt!1477163))) (apply!10453 (transformation!7380 (rule!10492 (_1!24787 (get!14665 lt!1477163)))) (seqFromList!5497 (originalCharacters!7876 (_1!24787 (get!14665 lt!1477163)))))))))

(declare-fun b!4141778 () Bool)

(declare-fun e!2569873 () Option!9686)

(declare-fun lt!1477165 () tuple2!43310)

(assert (=> b!4141778 (= e!2569873 (Some!9685 (tuple2!43307 (Token!13691 (apply!10453 (transformation!7380 rBis!149) (seqFromList!5497 (_1!24789 lt!1477165))) rBis!149 (size!33283 (seqFromList!5497 (_1!24789 lt!1477165))) (_1!24789 lt!1477165)) (_2!24789 lt!1477165))))))

(declare-fun lt!1477164 () Unit!64223)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1502 (Regex!12285 List!45048) Unit!64223)

(assert (=> b!4141778 (= lt!1477164 (longestMatchIsAcceptedByMatchOrIsEmpty!1502 (regex!7380 rBis!149) input!3238))))

(declare-fun res!1694614 () Bool)

(assert (=> b!4141778 (= res!1694614 (isEmpty!26793 (_1!24789 (findLongestMatchInner!1529 (regex!7380 rBis!149) Nil!44924 (size!33284 Nil!44924) input!3238 input!3238 (size!33284 input!3238)))))))

(assert (=> b!4141778 (=> res!1694614 e!2569872)))

(assert (=> b!4141778 e!2569872))

(declare-fun lt!1477162 () Unit!64223)

(assert (=> b!4141778 (= lt!1477162 lt!1477164)))

(declare-fun lt!1477166 () Unit!64223)

(assert (=> b!4141778 (= lt!1477166 (lemmaSemiInverse!2238 (transformation!7380 rBis!149) (seqFromList!5497 (_1!24789 lt!1477165))))))

(declare-fun d!1226085 () Bool)

(declare-fun e!2569870 () Bool)

(assert (=> d!1226085 e!2569870))

(declare-fun res!1694615 () Bool)

(assert (=> d!1226085 (=> res!1694615 e!2569870)))

(assert (=> d!1226085 (= res!1694615 (isEmpty!26795 lt!1477163))))

(assert (=> d!1226085 (= lt!1477163 e!2569873)))

(declare-fun c!709950 () Bool)

(assert (=> d!1226085 (= c!709950 (isEmpty!26793 (_1!24789 lt!1477165)))))

(declare-fun findLongestMatch!1442 (Regex!12285 List!45048) tuple2!43310)

(assert (=> d!1226085 (= lt!1477165 (findLongestMatch!1442 (regex!7380 rBis!149) input!3238))))

(assert (=> d!1226085 (ruleValid!3186 thiss!25645 rBis!149)))

(assert (=> d!1226085 (= (maxPrefixOneRule!3098 thiss!25645 rBis!149 input!3238) lt!1477163)))

(declare-fun b!4141779 () Bool)

(assert (=> b!4141779 (= e!2569871 (= (size!33282 (_1!24787 (get!14665 lt!1477163))) (size!33284 (originalCharacters!7876 (_1!24787 (get!14665 lt!1477163))))))))

(declare-fun b!4141780 () Bool)

(declare-fun res!1694618 () Bool)

(assert (=> b!4141780 (=> (not res!1694618) (not e!2569871))))

(assert (=> b!4141780 (= res!1694618 (< (size!33284 (_2!24787 (get!14665 lt!1477163))) (size!33284 input!3238)))))

(declare-fun b!4141781 () Bool)

(assert (=> b!4141781 (= e!2569873 None!9685)))

(declare-fun b!4141782 () Bool)

(assert (=> b!4141782 (= e!2569870 e!2569871)))

(declare-fun res!1694619 () Bool)

(assert (=> b!4141782 (=> (not res!1694619) (not e!2569871))))

(assert (=> b!4141782 (= res!1694619 (matchR!6114 (regex!7380 rBis!149) (list!16455 (charsOf!4979 (_1!24787 (get!14665 lt!1477163))))))))

(assert (= (and d!1226085 c!709950) b!4141781))

(assert (= (and d!1226085 (not c!709950)) b!4141778))

(assert (= (and b!4141778 (not res!1694614)) b!4141776))

(assert (= (and d!1226085 (not res!1694615)) b!4141782))

(assert (= (and b!4141782 res!1694619) b!4141775))

(assert (= (and b!4141775 res!1694617) b!4141780))

(assert (= (and b!4141780 res!1694618) b!4141774))

(assert (= (and b!4141774 res!1694613) b!4141777))

(assert (= (and b!4141777 res!1694616) b!4141779))

(declare-fun m!4738233 () Bool)

(assert (=> b!4141775 m!4738233))

(declare-fun m!4738235 () Bool)

(assert (=> b!4141775 m!4738235))

(assert (=> b!4141775 m!4738235))

(declare-fun m!4738237 () Bool)

(assert (=> b!4141775 m!4738237))

(assert (=> b!4141775 m!4738237))

(declare-fun m!4738239 () Bool)

(assert (=> b!4141775 m!4738239))

(assert (=> b!4141777 m!4738233))

(declare-fun m!4738241 () Bool)

(assert (=> b!4141777 m!4738241))

(assert (=> b!4141777 m!4738241))

(declare-fun m!4738243 () Bool)

(assert (=> b!4141777 m!4738243))

(declare-fun m!4738245 () Bool)

(assert (=> b!4141776 m!4738245))

(assert (=> b!4141776 m!4737959))

(assert (=> b!4141776 m!4738245))

(assert (=> b!4141776 m!4737959))

(declare-fun m!4738247 () Bool)

(assert (=> b!4141776 m!4738247))

(declare-fun m!4738249 () Bool)

(assert (=> b!4141776 m!4738249))

(declare-fun m!4738251 () Bool)

(assert (=> b!4141778 m!4738251))

(declare-fun m!4738253 () Bool)

(assert (=> b!4141778 m!4738253))

(declare-fun m!4738255 () Bool)

(assert (=> b!4141778 m!4738255))

(assert (=> b!4141778 m!4738245))

(assert (=> b!4141778 m!4738253))

(assert (=> b!4141778 m!4738253))

(declare-fun m!4738257 () Bool)

(assert (=> b!4141778 m!4738257))

(declare-fun m!4738259 () Bool)

(assert (=> b!4141778 m!4738259))

(assert (=> b!4141778 m!4737959))

(assert (=> b!4141778 m!4738245))

(assert (=> b!4141778 m!4737959))

(assert (=> b!4141778 m!4738247))

(assert (=> b!4141778 m!4738253))

(declare-fun m!4738261 () Bool)

(assert (=> b!4141778 m!4738261))

(assert (=> b!4141780 m!4738233))

(declare-fun m!4738263 () Bool)

(assert (=> b!4141780 m!4738263))

(assert (=> b!4141780 m!4737959))

(assert (=> b!4141782 m!4738233))

(assert (=> b!4141782 m!4738235))

(assert (=> b!4141782 m!4738235))

(assert (=> b!4141782 m!4738237))

(assert (=> b!4141782 m!4738237))

(declare-fun m!4738265 () Bool)

(assert (=> b!4141782 m!4738265))

(declare-fun m!4738267 () Bool)

(assert (=> d!1226085 m!4738267))

(declare-fun m!4738269 () Bool)

(assert (=> d!1226085 m!4738269))

(declare-fun m!4738271 () Bool)

(assert (=> d!1226085 m!4738271))

(assert (=> d!1226085 m!4737955))

(assert (=> b!4141774 m!4738233))

(assert (=> b!4141779 m!4738233))

(declare-fun m!4738273 () Bool)

(assert (=> b!4141779 m!4738273))

(assert (=> b!4141538 d!1226085))

(declare-fun d!1226107 () Bool)

(assert (=> d!1226107 (not (= rBis!149 r!4008))))

(declare-fun lt!1477169 () Unit!64223)

(declare-fun choose!25340 (LexerInterface!6969 List!45050 Rule!14560 Rule!14560) Unit!64223)

(assert (=> d!1226107 (= lt!1477169 (choose!25340 thiss!25645 rules!3756 rBis!149 r!4008))))

(assert (=> d!1226107 (contains!9060 rules!3756 rBis!149)))

(assert (=> d!1226107 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!78 thiss!25645 rules!3756 rBis!149 r!4008) lt!1477169)))

(declare-fun bs!595259 () Bool)

(assert (= bs!595259 d!1226107))

(declare-fun m!4738275 () Bool)

(assert (=> bs!595259 m!4738275))

(assert (=> bs!595259 m!4737977))

(assert (=> b!4141538 d!1226107))

(declare-fun d!1226109 () Bool)

(declare-fun lt!1477170 () Bool)

(assert (=> d!1226109 (= lt!1477170 (select (content!6945 rules!3756) rBis!149))))

(declare-fun e!2569874 () Bool)

(assert (=> d!1226109 (= lt!1477170 e!2569874)))

(declare-fun res!1694621 () Bool)

(assert (=> d!1226109 (=> (not res!1694621) (not e!2569874))))

(assert (=> d!1226109 (= res!1694621 ((_ is Cons!44926) rules!3756))))

(assert (=> d!1226109 (= (contains!9060 rules!3756 rBis!149) lt!1477170)))

(declare-fun b!4141783 () Bool)

(declare-fun e!2569875 () Bool)

(assert (=> b!4141783 (= e!2569874 e!2569875)))

(declare-fun res!1694620 () Bool)

(assert (=> b!4141783 (=> res!1694620 e!2569875)))

(assert (=> b!4141783 (= res!1694620 (= (h!50346 rules!3756) rBis!149))))

(declare-fun b!4141784 () Bool)

(assert (=> b!4141784 (= e!2569875 (contains!9060 (t!342425 rules!3756) rBis!149))))

(assert (= (and d!1226109 res!1694621) b!4141783))

(assert (= (and b!4141783 (not res!1694620)) b!4141784))

(declare-fun m!4738277 () Bool)

(assert (=> d!1226109 m!4738277))

(declare-fun m!4738279 () Bool)

(assert (=> d!1226109 m!4738279))

(declare-fun m!4738281 () Bool)

(assert (=> b!4141784 m!4738281))

(assert (=> b!4141555 d!1226109))

(declare-fun d!1226111 () Bool)

(assert (=> d!1226111 (= (isEmpty!26793 p!2912) ((_ is Nil!44924) p!2912))))

(assert (=> b!4141534 d!1226111))

(declare-fun b!4141788 () Bool)

(declare-fun e!2569878 () Bool)

(assert (=> b!4141788 (= e!2569878 (>= (size!33284 input!3238) (size!33284 p!2912)))))

(declare-fun b!4141786 () Bool)

(declare-fun res!1694622 () Bool)

(declare-fun e!2569877 () Bool)

(assert (=> b!4141786 (=> (not res!1694622) (not e!2569877))))

(assert (=> b!4141786 (= res!1694622 (= (head!8738 p!2912) (head!8738 input!3238)))))

(declare-fun b!4141787 () Bool)

(assert (=> b!4141787 (= e!2569877 (isPrefix!4315 (tail!6555 p!2912) (tail!6555 input!3238)))))

(declare-fun b!4141785 () Bool)

(declare-fun e!2569876 () Bool)

(assert (=> b!4141785 (= e!2569876 e!2569877)))

(declare-fun res!1694624 () Bool)

(assert (=> b!4141785 (=> (not res!1694624) (not e!2569877))))

(assert (=> b!4141785 (= res!1694624 (not ((_ is Nil!44924) input!3238)))))

(declare-fun d!1226113 () Bool)

(assert (=> d!1226113 e!2569878))

(declare-fun res!1694625 () Bool)

(assert (=> d!1226113 (=> res!1694625 e!2569878)))

(declare-fun lt!1477171 () Bool)

(assert (=> d!1226113 (= res!1694625 (not lt!1477171))))

(assert (=> d!1226113 (= lt!1477171 e!2569876)))

(declare-fun res!1694623 () Bool)

(assert (=> d!1226113 (=> res!1694623 e!2569876)))

(assert (=> d!1226113 (= res!1694623 ((_ is Nil!44924) p!2912))))

(assert (=> d!1226113 (= (isPrefix!4315 p!2912 input!3238) lt!1477171)))

(assert (= (and d!1226113 (not res!1694623)) b!4141785))

(assert (= (and b!4141785 res!1694624) b!4141786))

(assert (= (and b!4141786 res!1694622) b!4141787))

(assert (= (and d!1226113 (not res!1694625)) b!4141788))

(assert (=> b!4141788 m!4737959))

(assert (=> b!4141788 m!4737967))

(declare-fun m!4738283 () Bool)

(assert (=> b!4141786 m!4738283))

(declare-fun m!4738285 () Bool)

(assert (=> b!4141786 m!4738285))

(declare-fun m!4738287 () Bool)

(assert (=> b!4141787 m!4738287))

(declare-fun m!4738289 () Bool)

(assert (=> b!4141787 m!4738289))

(assert (=> b!4141787 m!4738287))

(assert (=> b!4141787 m!4738289))

(declare-fun m!4738291 () Bool)

(assert (=> b!4141787 m!4738291))

(assert (=> b!4141533 d!1226113))

(declare-fun d!1226115 () Bool)

(declare-fun lt!1477174 () List!45048)

(assert (=> d!1226115 (= (++!11620 p!2912 lt!1477174) input!3238)))

(declare-fun e!2569881 () List!45048)

(assert (=> d!1226115 (= lt!1477174 e!2569881)))

(declare-fun c!709953 () Bool)

(assert (=> d!1226115 (= c!709953 ((_ is Cons!44924) p!2912))))

(assert (=> d!1226115 (>= (size!33284 input!3238) (size!33284 p!2912))))

(assert (=> d!1226115 (= (getSuffix!2642 input!3238 p!2912) lt!1477174)))

(declare-fun b!4141793 () Bool)

(assert (=> b!4141793 (= e!2569881 (getSuffix!2642 (tail!6555 input!3238) (t!342423 p!2912)))))

(declare-fun b!4141794 () Bool)

(assert (=> b!4141794 (= e!2569881 input!3238)))

(assert (= (and d!1226115 c!709953) b!4141793))

(assert (= (and d!1226115 (not c!709953)) b!4141794))

(declare-fun m!4738293 () Bool)

(assert (=> d!1226115 m!4738293))

(assert (=> d!1226115 m!4737959))

(assert (=> d!1226115 m!4737967))

(assert (=> b!4141793 m!4738289))

(assert (=> b!4141793 m!4738289))

(declare-fun m!4738295 () Bool)

(assert (=> b!4141793 m!4738295))

(assert (=> b!4141544 d!1226115))

(declare-fun b!4141813 () Bool)

(declare-fun e!2569888 () Bool)

(declare-fun e!2569889 () Bool)

(assert (=> b!4141813 (= e!2569888 e!2569889)))

(declare-fun res!1694642 () Bool)

(assert (=> b!4141813 (=> (not res!1694642) (not e!2569889))))

(declare-fun lt!1477189 () Option!9686)

(declare-fun isDefined!7280 (Option!9686) Bool)

(assert (=> b!4141813 (= res!1694642 (isDefined!7280 lt!1477189))))

(declare-fun b!4141814 () Bool)

(declare-fun e!2569890 () Option!9686)

(declare-fun call!290518 () Option!9686)

(assert (=> b!4141814 (= e!2569890 call!290518)))

(declare-fun b!4141815 () Bool)

(declare-fun res!1694641 () Bool)

(assert (=> b!4141815 (=> (not res!1694641) (not e!2569889))))

(assert (=> b!4141815 (= res!1694641 (= (value!230884 (_1!24787 (get!14665 lt!1477189))) (apply!10453 (transformation!7380 (rule!10492 (_1!24787 (get!14665 lt!1477189)))) (seqFromList!5497 (originalCharacters!7876 (_1!24787 (get!14665 lt!1477189)))))))))

(declare-fun b!4141816 () Bool)

(declare-fun lt!1477186 () Option!9686)

(declare-fun lt!1477185 () Option!9686)

(assert (=> b!4141816 (= e!2569890 (ite (and ((_ is None!9685) lt!1477186) ((_ is None!9685) lt!1477185)) None!9685 (ite ((_ is None!9685) lt!1477185) lt!1477186 (ite ((_ is None!9685) lt!1477186) lt!1477185 (ite (>= (size!33282 (_1!24787 (v!40325 lt!1477186))) (size!33282 (_1!24787 (v!40325 lt!1477185)))) lt!1477186 lt!1477185)))))))

(assert (=> b!4141816 (= lt!1477186 call!290518)))

(assert (=> b!4141816 (= lt!1477185 (maxPrefix!4159 thiss!25645 (t!342425 rules!3756) input!3238))))

(declare-fun b!4141817 () Bool)

(declare-fun res!1694645 () Bool)

(assert (=> b!4141817 (=> (not res!1694645) (not e!2569889))))

(assert (=> b!4141817 (= res!1694645 (< (size!33284 (_2!24787 (get!14665 lt!1477189))) (size!33284 input!3238)))))

(declare-fun b!4141819 () Bool)

(declare-fun res!1694644 () Bool)

(assert (=> b!4141819 (=> (not res!1694644) (not e!2569889))))

(assert (=> b!4141819 (= res!1694644 (matchR!6114 (regex!7380 (rule!10492 (_1!24787 (get!14665 lt!1477189)))) (list!16455 (charsOf!4979 (_1!24787 (get!14665 lt!1477189))))))))

(declare-fun bm!290513 () Bool)

(assert (=> bm!290513 (= call!290518 (maxPrefixOneRule!3098 thiss!25645 (h!50346 rules!3756) input!3238))))

(declare-fun b!4141820 () Bool)

(declare-fun res!1694640 () Bool)

(assert (=> b!4141820 (=> (not res!1694640) (not e!2569889))))

(assert (=> b!4141820 (= res!1694640 (= (++!11620 (list!16455 (charsOf!4979 (_1!24787 (get!14665 lt!1477189)))) (_2!24787 (get!14665 lt!1477189))) input!3238))))

(declare-fun b!4141821 () Bool)

(declare-fun res!1694643 () Bool)

(assert (=> b!4141821 (=> (not res!1694643) (not e!2569889))))

(assert (=> b!4141821 (= res!1694643 (= (list!16455 (charsOf!4979 (_1!24787 (get!14665 lt!1477189)))) (originalCharacters!7876 (_1!24787 (get!14665 lt!1477189)))))))

(declare-fun b!4141818 () Bool)

(assert (=> b!4141818 (= e!2569889 (contains!9060 rules!3756 (rule!10492 (_1!24787 (get!14665 lt!1477189)))))))

(declare-fun d!1226117 () Bool)

(assert (=> d!1226117 e!2569888))

(declare-fun res!1694646 () Bool)

(assert (=> d!1226117 (=> res!1694646 e!2569888)))

(assert (=> d!1226117 (= res!1694646 (isEmpty!26795 lt!1477189))))

(assert (=> d!1226117 (= lt!1477189 e!2569890)))

(declare-fun c!709956 () Bool)

(assert (=> d!1226117 (= c!709956 (and ((_ is Cons!44926) rules!3756) ((_ is Nil!44926) (t!342425 rules!3756))))))

(declare-fun lt!1477187 () Unit!64223)

(declare-fun lt!1477188 () Unit!64223)

(assert (=> d!1226117 (= lt!1477187 lt!1477188)))

(assert (=> d!1226117 (isPrefix!4315 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2788 (List!45048 List!45048) Unit!64223)

(assert (=> d!1226117 (= lt!1477188 (lemmaIsPrefixRefl!2788 input!3238 input!3238))))

(declare-fun rulesValidInductive!2740 (LexerInterface!6969 List!45050) Bool)

(assert (=> d!1226117 (rulesValidInductive!2740 thiss!25645 rules!3756)))

(assert (=> d!1226117 (= (maxPrefix!4159 thiss!25645 rules!3756 input!3238) lt!1477189)))

(assert (= (and d!1226117 c!709956) b!4141814))

(assert (= (and d!1226117 (not c!709956)) b!4141816))

(assert (= (or b!4141814 b!4141816) bm!290513))

(assert (= (and d!1226117 (not res!1694646)) b!4141813))

(assert (= (and b!4141813 res!1694642) b!4141821))

(assert (= (and b!4141821 res!1694643) b!4141817))

(assert (= (and b!4141817 res!1694645) b!4141820))

(assert (= (and b!4141820 res!1694640) b!4141815))

(assert (= (and b!4141815 res!1694641) b!4141819))

(assert (= (and b!4141819 res!1694644) b!4141818))

(declare-fun m!4738297 () Bool)

(assert (=> bm!290513 m!4738297))

(declare-fun m!4738299 () Bool)

(assert (=> b!4141819 m!4738299))

(declare-fun m!4738301 () Bool)

(assert (=> b!4141819 m!4738301))

(assert (=> b!4141819 m!4738301))

(declare-fun m!4738303 () Bool)

(assert (=> b!4141819 m!4738303))

(assert (=> b!4141819 m!4738303))

(declare-fun m!4738305 () Bool)

(assert (=> b!4141819 m!4738305))

(assert (=> b!4141815 m!4738299))

(declare-fun m!4738307 () Bool)

(assert (=> b!4141815 m!4738307))

(assert (=> b!4141815 m!4738307))

(declare-fun m!4738309 () Bool)

(assert (=> b!4141815 m!4738309))

(declare-fun m!4738311 () Bool)

(assert (=> b!4141813 m!4738311))

(declare-fun m!4738313 () Bool)

(assert (=> d!1226117 m!4738313))

(declare-fun m!4738315 () Bool)

(assert (=> d!1226117 m!4738315))

(declare-fun m!4738317 () Bool)

(assert (=> d!1226117 m!4738317))

(declare-fun m!4738319 () Bool)

(assert (=> d!1226117 m!4738319))

(assert (=> b!4141817 m!4738299))

(declare-fun m!4738321 () Bool)

(assert (=> b!4141817 m!4738321))

(assert (=> b!4141817 m!4737959))

(assert (=> b!4141818 m!4738299))

(declare-fun m!4738323 () Bool)

(assert (=> b!4141818 m!4738323))

(assert (=> b!4141821 m!4738299))

(assert (=> b!4141821 m!4738301))

(assert (=> b!4141821 m!4738301))

(assert (=> b!4141821 m!4738303))

(assert (=> b!4141820 m!4738299))

(assert (=> b!4141820 m!4738301))

(assert (=> b!4141820 m!4738301))

(assert (=> b!4141820 m!4738303))

(assert (=> b!4141820 m!4738303))

(declare-fun m!4738325 () Bool)

(assert (=> b!4141820 m!4738325))

(declare-fun m!4738327 () Bool)

(assert (=> b!4141816 m!4738327))

(assert (=> b!4141544 d!1226117))

(declare-fun d!1226119 () Bool)

(declare-fun dynLambda!19323 (Int BalanceConc!26776) TokenValue!7610)

(assert (=> d!1226119 (= (apply!10453 (transformation!7380 r!4008) lt!1477072) (dynLambda!19323 (toValue!10044 (transformation!7380 r!4008)) lt!1477072))))

(declare-fun b_lambda!121741 () Bool)

(assert (=> (not b_lambda!121741) (not d!1226119)))

(declare-fun t!342433 () Bool)

(declare-fun tb!248601 () Bool)

(assert (=> (and b!4141540 (= (toValue!10044 (transformation!7380 r!4008)) (toValue!10044 (transformation!7380 r!4008))) t!342433) tb!248601))

(declare-fun result!302300 () Bool)

(declare-fun inv!21 (TokenValue!7610) Bool)

(assert (=> tb!248601 (= result!302300 (inv!21 (dynLambda!19323 (toValue!10044 (transformation!7380 r!4008)) lt!1477072)))))

(declare-fun m!4738329 () Bool)

(assert (=> tb!248601 m!4738329))

(assert (=> d!1226119 t!342433))

(declare-fun b_and!321675 () Bool)

(assert (= b_and!321657 (and (=> t!342433 result!302300) b_and!321675)))

(declare-fun t!342435 () Bool)

(declare-fun tb!248603 () Bool)

(assert (=> (and b!4141553 (= (toValue!10044 (transformation!7380 (h!50346 rules!3756))) (toValue!10044 (transformation!7380 r!4008))) t!342435) tb!248603))

(declare-fun result!302304 () Bool)

(assert (= result!302304 result!302300))

(assert (=> d!1226119 t!342435))

(declare-fun b_and!321677 () Bool)

(assert (= b_and!321661 (and (=> t!342435 result!302304) b_and!321677)))

(declare-fun t!342437 () Bool)

(declare-fun tb!248605 () Bool)

(assert (=> (and b!4141550 (= (toValue!10044 (transformation!7380 rBis!149)) (toValue!10044 (transformation!7380 r!4008))) t!342437) tb!248605))

(declare-fun result!302306 () Bool)

(assert (= result!302306 result!302300))

(assert (=> d!1226119 t!342437))

(declare-fun b_and!321679 () Bool)

(assert (= b_and!321665 (and (=> t!342437 result!302306) b_and!321679)))

(declare-fun m!4738331 () Bool)

(assert (=> d!1226119 m!4738331))

(assert (=> b!4141544 d!1226119))

(declare-fun d!1226121 () Bool)

(declare-fun lt!1477190 () Int)

(assert (=> d!1226121 (>= lt!1477190 0)))

(declare-fun e!2569894 () Int)

(assert (=> d!1226121 (= lt!1477190 e!2569894)))

(declare-fun c!709957 () Bool)

(assert (=> d!1226121 (= c!709957 ((_ is Nil!44924) p!2912))))

(assert (=> d!1226121 (= (size!33284 p!2912) lt!1477190)))

(declare-fun b!4141824 () Bool)

(assert (=> b!4141824 (= e!2569894 0)))

(declare-fun b!4141825 () Bool)

(assert (=> b!4141825 (= e!2569894 (+ 1 (size!33284 (t!342423 p!2912))))))

(assert (= (and d!1226121 c!709957) b!4141824))

(assert (= (and d!1226121 (not c!709957)) b!4141825))

(declare-fun m!4738333 () Bool)

(assert (=> b!4141825 m!4738333))

(assert (=> b!4141544 d!1226121))

(declare-fun d!1226123 () Bool)

(declare-fun fromListB!2521 (List!45048) BalanceConc!26776)

(assert (=> d!1226123 (= (seqFromList!5497 p!2912) (fromListB!2521 p!2912))))

(declare-fun bs!595260 () Bool)

(assert (= bs!595260 d!1226123))

(declare-fun m!4738335 () Bool)

(assert (=> bs!595260 m!4738335))

(assert (=> b!4141544 d!1226123))

(declare-fun b!4141919 () Bool)

(declare-fun e!2569941 () Bool)

(assert (=> b!4141919 (= e!2569941 true)))

(declare-fun d!1226125 () Bool)

(assert (=> d!1226125 e!2569941))

(assert (= d!1226125 b!4141919))

(declare-fun lambda!128955 () Int)

(declare-fun order!23779 () Int)

(declare-fun order!23777 () Int)

(declare-fun dynLambda!19324 (Int Int) Int)

(declare-fun dynLambda!19325 (Int Int) Int)

(assert (=> b!4141919 (< (dynLambda!19324 order!23777 (toValue!10044 (transformation!7380 r!4008))) (dynLambda!19325 order!23779 lambda!128955))))

(declare-fun order!23781 () Int)

(declare-fun dynLambda!19326 (Int Int) Int)

(assert (=> b!4141919 (< (dynLambda!19326 order!23781 (toChars!9903 (transformation!7380 r!4008))) (dynLambda!19325 order!23779 lambda!128955))))

(declare-fun dynLambda!19327 (Int TokenValue!7610) BalanceConc!26776)

(assert (=> d!1226125 (= (list!16455 (dynLambda!19327 (toChars!9903 (transformation!7380 r!4008)) (dynLambda!19323 (toValue!10044 (transformation!7380 r!4008)) lt!1477072))) (list!16455 lt!1477072))))

(declare-fun lt!1477220 () Unit!64223)

(declare-fun ForallOf!972 (Int BalanceConc!26776) Unit!64223)

(assert (=> d!1226125 (= lt!1477220 (ForallOf!972 lambda!128955 lt!1477072))))

(assert (=> d!1226125 (= (lemmaSemiInverse!2238 (transformation!7380 r!4008) lt!1477072) lt!1477220)))

(declare-fun b_lambda!121755 () Bool)

(assert (=> (not b_lambda!121755) (not d!1226125)))

(declare-fun t!342458 () Bool)

(declare-fun tb!248625 () Bool)

(assert (=> (and b!4141540 (= (toChars!9903 (transformation!7380 r!4008)) (toChars!9903 (transformation!7380 r!4008))) t!342458) tb!248625))

(declare-fun e!2569944 () Bool)

(declare-fun tp!1262528 () Bool)

(declare-fun b!4141924 () Bool)

(declare-fun inv!59534 (Conc!13591) Bool)

(assert (=> b!4141924 (= e!2569944 (and (inv!59534 (c!709912 (dynLambda!19327 (toChars!9903 (transformation!7380 r!4008)) (dynLambda!19323 (toValue!10044 (transformation!7380 r!4008)) lt!1477072)))) tp!1262528))))

(declare-fun result!302334 () Bool)

(declare-fun inv!59535 (BalanceConc!26776) Bool)

(assert (=> tb!248625 (= result!302334 (and (inv!59535 (dynLambda!19327 (toChars!9903 (transformation!7380 r!4008)) (dynLambda!19323 (toValue!10044 (transformation!7380 r!4008)) lt!1477072))) e!2569944))))

(assert (= tb!248625 b!4141924))

(declare-fun m!4738407 () Bool)

(assert (=> b!4141924 m!4738407))

(declare-fun m!4738409 () Bool)

(assert (=> tb!248625 m!4738409))

(assert (=> d!1226125 t!342458))

(declare-fun b_and!321703 () Bool)

(assert (= b_and!321659 (and (=> t!342458 result!302334) b_and!321703)))

(declare-fun tb!248627 () Bool)

(declare-fun t!342460 () Bool)

(assert (=> (and b!4141553 (= (toChars!9903 (transformation!7380 (h!50346 rules!3756))) (toChars!9903 (transformation!7380 r!4008))) t!342460) tb!248627))

(declare-fun result!302338 () Bool)

(assert (= result!302338 result!302334))

(assert (=> d!1226125 t!342460))

(declare-fun b_and!321705 () Bool)

(assert (= b_and!321663 (and (=> t!342460 result!302338) b_and!321705)))

(declare-fun t!342462 () Bool)

(declare-fun tb!248629 () Bool)

(assert (=> (and b!4141550 (= (toChars!9903 (transformation!7380 rBis!149)) (toChars!9903 (transformation!7380 r!4008))) t!342462) tb!248629))

(declare-fun result!302340 () Bool)

(assert (= result!302340 result!302334))

(assert (=> d!1226125 t!342462))

(declare-fun b_and!321707 () Bool)

(assert (= b_and!321667 (and (=> t!342462 result!302340) b_and!321707)))

(declare-fun b_lambda!121757 () Bool)

(assert (=> (not b_lambda!121757) (not d!1226125)))

(assert (=> d!1226125 t!342433))

(declare-fun b_and!321709 () Bool)

(assert (= b_and!321675 (and (=> t!342433 result!302300) b_and!321709)))

(assert (=> d!1226125 t!342435))

(declare-fun b_and!321711 () Bool)

(assert (= b_and!321677 (and (=> t!342435 result!302304) b_and!321711)))

(assert (=> d!1226125 t!342437))

(declare-fun b_and!321713 () Bool)

(assert (= b_and!321679 (and (=> t!342437 result!302306) b_and!321713)))

(declare-fun m!4738411 () Bool)

(assert (=> d!1226125 m!4738411))

(declare-fun m!4738413 () Bool)

(assert (=> d!1226125 m!4738413))

(declare-fun m!4738415 () Bool)

(assert (=> d!1226125 m!4738415))

(assert (=> d!1226125 m!4738331))

(assert (=> d!1226125 m!4738331))

(assert (=> d!1226125 m!4738413))

(declare-fun m!4738417 () Bool)

(assert (=> d!1226125 m!4738417))

(assert (=> b!4141544 d!1226125))

(declare-fun d!1226143 () Bool)

(assert (=> d!1226143 (= (isEmpty!26794 rules!3756) ((_ is Nil!44926) rules!3756))))

(assert (=> b!4141535 d!1226143))

(declare-fun b!4141953 () Bool)

(declare-fun e!2569959 () Bool)

(declare-fun e!2569960 () Bool)

(assert (=> b!4141953 (= e!2569959 e!2569960)))

(declare-fun c!709972 () Bool)

(assert (=> b!4141953 (= c!709972 ((_ is EmptyLang!12285) (regex!7380 r!4008)))))

(declare-fun b!4141954 () Bool)

(declare-fun lt!1477223 () Bool)

(assert (=> b!4141954 (= e!2569960 (not lt!1477223))))

(declare-fun b!4141955 () Bool)

(declare-fun e!2569962 () Bool)

(assert (=> b!4141955 (= e!2569962 (nullable!4325 (regex!7380 r!4008)))))

(declare-fun b!4141956 () Bool)

(declare-fun res!1694694 () Bool)

(declare-fun e!2569964 () Bool)

(assert (=> b!4141956 (=> res!1694694 e!2569964)))

(declare-fun e!2569965 () Bool)

(assert (=> b!4141956 (= res!1694694 e!2569965)))

(declare-fun res!1694690 () Bool)

(assert (=> b!4141956 (=> (not res!1694690) (not e!2569965))))

(assert (=> b!4141956 (= res!1694690 lt!1477223)))

(declare-fun b!4141957 () Bool)

(declare-fun res!1694695 () Bool)

(assert (=> b!4141957 (=> (not res!1694695) (not e!2569965))))

(assert (=> b!4141957 (= res!1694695 (isEmpty!26793 (tail!6555 p!2912)))))

(declare-fun b!4141958 () Bool)

(declare-fun derivativeStep!3720 (Regex!12285 C!24756) Regex!12285)

(assert (=> b!4141958 (= e!2569962 (matchR!6114 (derivativeStep!3720 (regex!7380 r!4008) (head!8738 p!2912)) (tail!6555 p!2912)))))

(declare-fun b!4141960 () Bool)

(declare-fun res!1694691 () Bool)

(declare-fun e!2569963 () Bool)

(assert (=> b!4141960 (=> res!1694691 e!2569963)))

(assert (=> b!4141960 (= res!1694691 (not (isEmpty!26793 (tail!6555 p!2912))))))

(declare-fun b!4141961 () Bool)

(assert (=> b!4141961 (= e!2569963 (not (= (head!8738 p!2912) (c!709913 (regex!7380 r!4008)))))))

(declare-fun b!4141962 () Bool)

(declare-fun call!290524 () Bool)

(assert (=> b!4141962 (= e!2569959 (= lt!1477223 call!290524))))

(declare-fun b!4141963 () Bool)

(declare-fun res!1694692 () Bool)

(assert (=> b!4141963 (=> res!1694692 e!2569964)))

(assert (=> b!4141963 (= res!1694692 (not ((_ is ElementMatch!12285) (regex!7380 r!4008))))))

(assert (=> b!4141963 (= e!2569960 e!2569964)))

(declare-fun b!4141964 () Bool)

(declare-fun e!2569961 () Bool)

(assert (=> b!4141964 (= e!2569961 e!2569963)))

(declare-fun res!1694688 () Bool)

(assert (=> b!4141964 (=> res!1694688 e!2569963)))

(assert (=> b!4141964 (= res!1694688 call!290524)))

(declare-fun b!4141965 () Bool)

(assert (=> b!4141965 (= e!2569965 (= (head!8738 p!2912) (c!709913 (regex!7380 r!4008))))))

(declare-fun bm!290519 () Bool)

(assert (=> bm!290519 (= call!290524 (isEmpty!26793 p!2912))))

(declare-fun b!4141966 () Bool)

(assert (=> b!4141966 (= e!2569964 e!2569961)))

(declare-fun res!1694693 () Bool)

(assert (=> b!4141966 (=> (not res!1694693) (not e!2569961))))

(assert (=> b!4141966 (= res!1694693 (not lt!1477223))))

(declare-fun b!4141959 () Bool)

(declare-fun res!1694689 () Bool)

(assert (=> b!4141959 (=> (not res!1694689) (not e!2569965))))

(assert (=> b!4141959 (= res!1694689 (not call!290524))))

(declare-fun d!1226145 () Bool)

(assert (=> d!1226145 e!2569959))

(declare-fun c!709973 () Bool)

(assert (=> d!1226145 (= c!709973 ((_ is EmptyExpr!12285) (regex!7380 r!4008)))))

(assert (=> d!1226145 (= lt!1477223 e!2569962)))

(declare-fun c!709974 () Bool)

(assert (=> d!1226145 (= c!709974 (isEmpty!26793 p!2912))))

(assert (=> d!1226145 (validRegex!5533 (regex!7380 r!4008))))

(assert (=> d!1226145 (= (matchR!6114 (regex!7380 r!4008) p!2912) lt!1477223)))

(assert (= (and d!1226145 c!709974) b!4141955))

(assert (= (and d!1226145 (not c!709974)) b!4141958))

(assert (= (and d!1226145 c!709973) b!4141962))

(assert (= (and d!1226145 (not c!709973)) b!4141953))

(assert (= (and b!4141953 c!709972) b!4141954))

(assert (= (and b!4141953 (not c!709972)) b!4141963))

(assert (= (and b!4141963 (not res!1694692)) b!4141956))

(assert (= (and b!4141956 res!1694690) b!4141959))

(assert (= (and b!4141959 res!1694689) b!4141957))

(assert (= (and b!4141957 res!1694695) b!4141965))

(assert (= (and b!4141956 (not res!1694694)) b!4141966))

(assert (= (and b!4141966 res!1694693) b!4141964))

(assert (= (and b!4141964 (not res!1694688)) b!4141960))

(assert (= (and b!4141960 (not res!1694691)) b!4141961))

(assert (= (or b!4141962 b!4141959 b!4141964) bm!290519))

(assert (=> b!4141965 m!4738283))

(assert (=> d!1226145 m!4738007))

(assert (=> d!1226145 m!4738071))

(assert (=> b!4141961 m!4738283))

(assert (=> b!4141960 m!4738287))

(assert (=> b!4141960 m!4738287))

(declare-fun m!4738419 () Bool)

(assert (=> b!4141960 m!4738419))

(assert (=> b!4141955 m!4738073))

(assert (=> bm!290519 m!4738007))

(assert (=> b!4141957 m!4738287))

(assert (=> b!4141957 m!4738287))

(assert (=> b!4141957 m!4738419))

(assert (=> b!4141958 m!4738283))

(assert (=> b!4141958 m!4738283))

(declare-fun m!4738421 () Bool)

(assert (=> b!4141958 m!4738421))

(assert (=> b!4141958 m!4738287))

(assert (=> b!4141958 m!4738421))

(assert (=> b!4141958 m!4738287))

(declare-fun m!4738423 () Bool)

(assert (=> b!4141958 m!4738423))

(assert (=> b!4141546 d!1226145))

(declare-fun d!1226147 () Bool)

(declare-fun lt!1477224 () Bool)

(assert (=> d!1226147 (= lt!1477224 (select (content!6945 rules!3756) r!4008))))

(declare-fun e!2569966 () Bool)

(assert (=> d!1226147 (= lt!1477224 e!2569966)))

(declare-fun res!1694697 () Bool)

(assert (=> d!1226147 (=> (not res!1694697) (not e!2569966))))

(assert (=> d!1226147 (= res!1694697 ((_ is Cons!44926) rules!3756))))

(assert (=> d!1226147 (= (contains!9060 rules!3756 r!4008) lt!1477224)))

(declare-fun b!4141967 () Bool)

(declare-fun e!2569967 () Bool)

(assert (=> b!4141967 (= e!2569966 e!2569967)))

(declare-fun res!1694696 () Bool)

(assert (=> b!4141967 (=> res!1694696 e!2569967)))

(assert (=> b!4141967 (= res!1694696 (= (h!50346 rules!3756) r!4008))))

(declare-fun b!4141968 () Bool)

(assert (=> b!4141968 (= e!2569967 (contains!9060 (t!342425 rules!3756) r!4008))))

(assert (= (and d!1226147 res!1694697) b!4141967))

(assert (= (and b!4141967 (not res!1694696)) b!4141968))

(assert (=> d!1226147 m!4738277))

(declare-fun m!4738425 () Bool)

(assert (=> d!1226147 m!4738425))

(declare-fun m!4738427 () Bool)

(assert (=> b!4141968 m!4738427))

(assert (=> b!4141545 d!1226147))

(declare-fun d!1226149 () Bool)

(assert (=> d!1226149 (= (inv!59529 (tag!8240 rBis!149)) (= (mod (str.len (value!230883 (tag!8240 rBis!149))) 2) 0))))

(assert (=> b!4141556 d!1226149))

(declare-fun d!1226151 () Bool)

(declare-fun res!1694700 () Bool)

(declare-fun e!2569970 () Bool)

(assert (=> d!1226151 (=> (not res!1694700) (not e!2569970))))

(declare-fun semiInverseModEq!3189 (Int Int) Bool)

(assert (=> d!1226151 (= res!1694700 (semiInverseModEq!3189 (toChars!9903 (transformation!7380 rBis!149)) (toValue!10044 (transformation!7380 rBis!149))))))

(assert (=> d!1226151 (= (inv!59531 (transformation!7380 rBis!149)) e!2569970)))

(declare-fun b!4141971 () Bool)

(declare-fun equivClasses!3088 (Int Int) Bool)

(assert (=> b!4141971 (= e!2569970 (equivClasses!3088 (toChars!9903 (transformation!7380 rBis!149)) (toValue!10044 (transformation!7380 rBis!149))))))

(assert (= (and d!1226151 res!1694700) b!4141971))

(declare-fun m!4738429 () Bool)

(assert (=> d!1226151 m!4738429))

(declare-fun m!4738431 () Bool)

(assert (=> b!4141971 m!4738431))

(assert (=> b!4141556 d!1226151))

(declare-fun b!4141975 () Bool)

(declare-fun e!2569973 () Bool)

(assert (=> b!4141975 (= e!2569973 (>= (size!33284 input!3238) (size!33284 lt!1477062)))))

(declare-fun b!4141973 () Bool)

(declare-fun res!1694701 () Bool)

(declare-fun e!2569972 () Bool)

(assert (=> b!4141973 (=> (not res!1694701) (not e!2569972))))

(assert (=> b!4141973 (= res!1694701 (= (head!8738 lt!1477062) (head!8738 input!3238)))))

(declare-fun b!4141974 () Bool)

(assert (=> b!4141974 (= e!2569972 (isPrefix!4315 (tail!6555 lt!1477062) (tail!6555 input!3238)))))

(declare-fun b!4141972 () Bool)

(declare-fun e!2569971 () Bool)

(assert (=> b!4141972 (= e!2569971 e!2569972)))

(declare-fun res!1694703 () Bool)

(assert (=> b!4141972 (=> (not res!1694703) (not e!2569972))))

(assert (=> b!4141972 (= res!1694703 (not ((_ is Nil!44924) input!3238)))))

(declare-fun d!1226153 () Bool)

(assert (=> d!1226153 e!2569973))

(declare-fun res!1694704 () Bool)

(assert (=> d!1226153 (=> res!1694704 e!2569973)))

(declare-fun lt!1477225 () Bool)

(assert (=> d!1226153 (= res!1694704 (not lt!1477225))))

(assert (=> d!1226153 (= lt!1477225 e!2569971)))

(declare-fun res!1694702 () Bool)

(assert (=> d!1226153 (=> res!1694702 e!2569971)))

(assert (=> d!1226153 (= res!1694702 ((_ is Nil!44924) lt!1477062))))

(assert (=> d!1226153 (= (isPrefix!4315 lt!1477062 input!3238) lt!1477225)))

(assert (= (and d!1226153 (not res!1694702)) b!4141972))

(assert (= (and b!4141972 res!1694703) b!4141973))

(assert (= (and b!4141973 res!1694701) b!4141974))

(assert (= (and d!1226153 (not res!1694704)) b!4141975))

(assert (=> b!4141975 m!4737959))

(assert (=> b!4141975 m!4737987))

(assert (=> b!4141973 m!4738119))

(assert (=> b!4141973 m!4738285))

(assert (=> b!4141974 m!4738123))

(assert (=> b!4141974 m!4738289))

(assert (=> b!4141974 m!4738123))

(assert (=> b!4141974 m!4738289))

(declare-fun m!4738433 () Bool)

(assert (=> b!4141974 m!4738433))

(assert (=> b!4141531 d!1226153))

(declare-fun b!4141984 () Bool)

(declare-fun e!2569979 () Int)

(assert (=> b!4141984 (= e!2569979 0)))

(declare-fun b!4141987 () Bool)

(declare-fun e!2569980 () Int)

(assert (=> b!4141987 (= e!2569980 (- 1))))

(declare-fun b!4141986 () Bool)

(assert (=> b!4141986 (= e!2569980 (+ 1 (getIndex!726 (t!342425 rules!3756) rBis!149)))))

(declare-fun b!4141985 () Bool)

(assert (=> b!4141985 (= e!2569979 e!2569980)))

(declare-fun c!709979 () Bool)

(assert (=> b!4141985 (= c!709979 (and ((_ is Cons!44926) rules!3756) (not (= (h!50346 rules!3756) rBis!149))))))

(declare-fun d!1226155 () Bool)

(declare-fun lt!1477228 () Int)

(assert (=> d!1226155 (>= lt!1477228 0)))

(assert (=> d!1226155 (= lt!1477228 e!2569979)))

(declare-fun c!709980 () Bool)

(assert (=> d!1226155 (= c!709980 (and ((_ is Cons!44926) rules!3756) (= (h!50346 rules!3756) rBis!149)))))

(assert (=> d!1226155 (contains!9060 rules!3756 rBis!149)))

(assert (=> d!1226155 (= (getIndex!726 rules!3756 rBis!149) lt!1477228)))

(assert (= (and d!1226155 c!709980) b!4141984))

(assert (= (and d!1226155 (not c!709980)) b!4141985))

(assert (= (and b!4141985 c!709979) b!4141986))

(assert (= (and b!4141985 (not c!709979)) b!4141987))

(declare-fun m!4738435 () Bool)

(assert (=> b!4141986 m!4738435))

(assert (=> d!1226155 m!4737977))

(assert (=> b!4141542 d!1226155))

(declare-fun b!4141988 () Bool)

(declare-fun e!2569981 () Int)

(assert (=> b!4141988 (= e!2569981 0)))

(declare-fun b!4141991 () Bool)

(declare-fun e!2569982 () Int)

(assert (=> b!4141991 (= e!2569982 (- 1))))

(declare-fun b!4141990 () Bool)

(assert (=> b!4141990 (= e!2569982 (+ 1 (getIndex!726 (t!342425 rules!3756) r!4008)))))

(declare-fun b!4141989 () Bool)

(assert (=> b!4141989 (= e!2569981 e!2569982)))

(declare-fun c!709981 () Bool)

(assert (=> b!4141989 (= c!709981 (and ((_ is Cons!44926) rules!3756) (not (= (h!50346 rules!3756) r!4008))))))

(declare-fun d!1226157 () Bool)

(declare-fun lt!1477229 () Int)

(assert (=> d!1226157 (>= lt!1477229 0)))

(assert (=> d!1226157 (= lt!1477229 e!2569981)))

(declare-fun c!709982 () Bool)

(assert (=> d!1226157 (= c!709982 (and ((_ is Cons!44926) rules!3756) (= (h!50346 rules!3756) r!4008)))))

(assert (=> d!1226157 (contains!9060 rules!3756 r!4008)))

(assert (=> d!1226157 (= (getIndex!726 rules!3756 r!4008) lt!1477229)))

(assert (= (and d!1226157 c!709982) b!4141988))

(assert (= (and d!1226157 (not c!709982)) b!4141989))

(assert (= (and b!4141989 c!709981) b!4141990))

(assert (= (and b!4141989 (not c!709981)) b!4141991))

(declare-fun m!4738437 () Bool)

(assert (=> b!4141990 m!4738437))

(assert (=> d!1226157 m!4738005))

(assert (=> b!4141542 d!1226157))

(declare-fun d!1226159 () Bool)

(declare-fun lt!1477232 () Int)

(assert (=> d!1226159 (= lt!1477232 (size!33284 (list!16455 lt!1477063)))))

(declare-fun size!33286 (Conc!13591) Int)

(assert (=> d!1226159 (= lt!1477232 (size!33286 (c!709912 lt!1477063)))))

(assert (=> d!1226159 (= (size!33283 lt!1477063) lt!1477232)))

(declare-fun bs!595263 () Bool)

(assert (= bs!595263 d!1226159))

(assert (=> bs!595263 m!4738003))

(assert (=> bs!595263 m!4738003))

(declare-fun m!4738439 () Bool)

(assert (=> bs!595263 m!4738439))

(declare-fun m!4738441 () Bool)

(assert (=> bs!595263 m!4738441))

(assert (=> b!4141541 d!1226159))

(declare-fun d!1226161 () Bool)

(declare-fun lt!1477235 () BalanceConc!26776)

(assert (=> d!1226161 (= (list!16455 lt!1477235) (originalCharacters!7876 (_1!24787 lt!1477070)))))

(assert (=> d!1226161 (= lt!1477235 (dynLambda!19327 (toChars!9903 (transformation!7380 (rule!10492 (_1!24787 lt!1477070)))) (value!230884 (_1!24787 lt!1477070))))))

(assert (=> d!1226161 (= (charsOf!4979 (_1!24787 lt!1477070)) lt!1477235)))

(declare-fun b_lambda!121759 () Bool)

(assert (=> (not b_lambda!121759) (not d!1226161)))

(declare-fun t!342464 () Bool)

(declare-fun tb!248631 () Bool)

(assert (=> (and b!4141540 (= (toChars!9903 (transformation!7380 r!4008)) (toChars!9903 (transformation!7380 (rule!10492 (_1!24787 lt!1477070))))) t!342464) tb!248631))

(declare-fun b!4141992 () Bool)

(declare-fun e!2569983 () Bool)

(declare-fun tp!1262529 () Bool)

(assert (=> b!4141992 (= e!2569983 (and (inv!59534 (c!709912 (dynLambda!19327 (toChars!9903 (transformation!7380 (rule!10492 (_1!24787 lt!1477070)))) (value!230884 (_1!24787 lt!1477070))))) tp!1262529))))

(declare-fun result!302342 () Bool)

(assert (=> tb!248631 (= result!302342 (and (inv!59535 (dynLambda!19327 (toChars!9903 (transformation!7380 (rule!10492 (_1!24787 lt!1477070)))) (value!230884 (_1!24787 lt!1477070)))) e!2569983))))

(assert (= tb!248631 b!4141992))

(declare-fun m!4738443 () Bool)

(assert (=> b!4141992 m!4738443))

(declare-fun m!4738445 () Bool)

(assert (=> tb!248631 m!4738445))

(assert (=> d!1226161 t!342464))

(declare-fun b_and!321715 () Bool)

(assert (= b_and!321703 (and (=> t!342464 result!302342) b_and!321715)))

(declare-fun tb!248633 () Bool)

(declare-fun t!342466 () Bool)

(assert (=> (and b!4141553 (= (toChars!9903 (transformation!7380 (h!50346 rules!3756))) (toChars!9903 (transformation!7380 (rule!10492 (_1!24787 lt!1477070))))) t!342466) tb!248633))

(declare-fun result!302344 () Bool)

(assert (= result!302344 result!302342))

(assert (=> d!1226161 t!342466))

(declare-fun b_and!321717 () Bool)

(assert (= b_and!321705 (and (=> t!342466 result!302344) b_and!321717)))

(declare-fun t!342468 () Bool)

(declare-fun tb!248635 () Bool)

(assert (=> (and b!4141550 (= (toChars!9903 (transformation!7380 rBis!149)) (toChars!9903 (transformation!7380 (rule!10492 (_1!24787 lt!1477070))))) t!342468) tb!248635))

(declare-fun result!302346 () Bool)

(assert (= result!302346 result!302342))

(assert (=> d!1226161 t!342468))

(declare-fun b_and!321719 () Bool)

(assert (= b_and!321707 (and (=> t!342468 result!302346) b_and!321719)))

(declare-fun m!4738447 () Bool)

(assert (=> d!1226161 m!4738447))

(declare-fun m!4738449 () Bool)

(assert (=> d!1226161 m!4738449))

(assert (=> b!4141541 d!1226161))

(declare-fun d!1226163 () Bool)

(assert (=> d!1226163 (= (get!14665 lt!1477076) (v!40325 lt!1477076))))

(assert (=> b!4141541 d!1226163))

(declare-fun d!1226165 () Bool)

(declare-fun lt!1477236 () Int)

(assert (=> d!1226165 (>= lt!1477236 0)))

(declare-fun e!2569984 () Int)

(assert (=> d!1226165 (= lt!1477236 e!2569984)))

(declare-fun c!709983 () Bool)

(assert (=> d!1226165 (= c!709983 ((_ is Nil!44924) lt!1477062))))

(assert (=> d!1226165 (= (size!33284 lt!1477062) lt!1477236)))

(declare-fun b!4141993 () Bool)

(assert (=> b!4141993 (= e!2569984 0)))

(declare-fun b!4141994 () Bool)

(assert (=> b!4141994 (= e!2569984 (+ 1 (size!33284 (t!342423 lt!1477062))))))

(assert (= (and d!1226165 c!709983) b!4141993))

(assert (= (and d!1226165 (not c!709983)) b!4141994))

(declare-fun m!4738451 () Bool)

(assert (=> b!4141994 m!4738451))

(assert (=> b!4141552 d!1226165))

(declare-fun d!1226167 () Bool)

(declare-fun res!1694707 () Bool)

(declare-fun e!2569987 () Bool)

(assert (=> d!1226167 (=> (not res!1694707) (not e!2569987))))

(declare-fun rulesValid!2903 (LexerInterface!6969 List!45050) Bool)

(assert (=> d!1226167 (= res!1694707 (rulesValid!2903 thiss!25645 rules!3756))))

(assert (=> d!1226167 (= (rulesInvariant!6266 thiss!25645 rules!3756) e!2569987)))

(declare-fun b!4141997 () Bool)

(declare-datatypes ((List!45052 0))(
  ( (Nil!44928) (Cons!44928 (h!50348 String!51800) (t!342475 List!45052)) )
))
(declare-fun noDuplicateTag!2986 (LexerInterface!6969 List!45050 List!45052) Bool)

(assert (=> b!4141997 (= e!2569987 (noDuplicateTag!2986 thiss!25645 rules!3756 Nil!44928))))

(assert (= (and d!1226167 res!1694707) b!4141997))

(declare-fun m!4738453 () Bool)

(assert (=> d!1226167 m!4738453))

(declare-fun m!4738455 () Bool)

(assert (=> b!4141997 m!4738455))

(assert (=> b!4141543 d!1226167))

(declare-fun d!1226169 () Bool)

(assert (=> d!1226169 (= (inv!59529 (tag!8240 r!4008)) (= (mod (str.len (value!230883 (tag!8240 r!4008))) 2) 0))))

(assert (=> b!4141554 d!1226169))

(declare-fun d!1226171 () Bool)

(declare-fun res!1694708 () Bool)

(declare-fun e!2569988 () Bool)

(assert (=> d!1226171 (=> (not res!1694708) (not e!2569988))))

(assert (=> d!1226171 (= res!1694708 (semiInverseModEq!3189 (toChars!9903 (transformation!7380 r!4008)) (toValue!10044 (transformation!7380 r!4008))))))

(assert (=> d!1226171 (= (inv!59531 (transformation!7380 r!4008)) e!2569988)))

(declare-fun b!4141998 () Bool)

(assert (=> b!4141998 (= e!2569988 (equivClasses!3088 (toChars!9903 (transformation!7380 r!4008)) (toValue!10044 (transformation!7380 r!4008))))))

(assert (= (and d!1226171 res!1694708) b!4141998))

(declare-fun m!4738457 () Bool)

(assert (=> d!1226171 m!4738457))

(declare-fun m!4738459 () Bool)

(assert (=> b!4141998 m!4738459))

(assert (=> b!4141554 d!1226171))

(declare-fun d!1226173 () Bool)

(assert (=> d!1226173 (= (inv!59529 (tag!8240 (h!50346 rules!3756))) (= (mod (str.len (value!230883 (tag!8240 (h!50346 rules!3756)))) 2) 0))))

(assert (=> b!4141532 d!1226173))

(declare-fun d!1226175 () Bool)

(declare-fun res!1694709 () Bool)

(declare-fun e!2569989 () Bool)

(assert (=> d!1226175 (=> (not res!1694709) (not e!2569989))))

(assert (=> d!1226175 (= res!1694709 (semiInverseModEq!3189 (toChars!9903 (transformation!7380 (h!50346 rules!3756))) (toValue!10044 (transformation!7380 (h!50346 rules!3756)))))))

(assert (=> d!1226175 (= (inv!59531 (transformation!7380 (h!50346 rules!3756))) e!2569989)))

(declare-fun b!4141999 () Bool)

(assert (=> b!4141999 (= e!2569989 (equivClasses!3088 (toChars!9903 (transformation!7380 (h!50346 rules!3756))) (toValue!10044 (transformation!7380 (h!50346 rules!3756)))))))

(assert (= (and d!1226175 res!1694709) b!4141999))

(declare-fun m!4738461 () Bool)

(assert (=> d!1226175 m!4738461))

(declare-fun m!4738463 () Bool)

(assert (=> b!4141999 m!4738463))

(assert (=> b!4141532 d!1226175))

(declare-fun b!4142004 () Bool)

(declare-fun e!2569992 () Bool)

(declare-fun tp!1262532 () Bool)

(assert (=> b!4142004 (= e!2569992 (and tp_is_empty!21493 tp!1262532))))

(assert (=> b!4141549 (= tp!1262478 e!2569992)))

(assert (= (and b!4141549 ((_ is Cons!44924) (t!342423 input!3238))) b!4142004))

(declare-fun b!4142015 () Bool)

(declare-fun e!2569995 () Bool)

(assert (=> b!4142015 (= e!2569995 tp_is_empty!21493)))

(assert (=> b!4141556 (= tp!1262479 e!2569995)))

(declare-fun b!4142017 () Bool)

(declare-fun tp!1262545 () Bool)

(assert (=> b!4142017 (= e!2569995 tp!1262545)))

(declare-fun b!4142016 () Bool)

(declare-fun tp!1262544 () Bool)

(declare-fun tp!1262547 () Bool)

(assert (=> b!4142016 (= e!2569995 (and tp!1262544 tp!1262547))))

(declare-fun b!4142018 () Bool)

(declare-fun tp!1262546 () Bool)

(declare-fun tp!1262543 () Bool)

(assert (=> b!4142018 (= e!2569995 (and tp!1262546 tp!1262543))))

(assert (= (and b!4141556 ((_ is ElementMatch!12285) (regex!7380 rBis!149))) b!4142015))

(assert (= (and b!4141556 ((_ is Concat!19896) (regex!7380 rBis!149))) b!4142016))

(assert (= (and b!4141556 ((_ is Star!12285) (regex!7380 rBis!149))) b!4142017))

(assert (= (and b!4141556 ((_ is Union!12285) (regex!7380 rBis!149))) b!4142018))

(declare-fun b!4142019 () Bool)

(declare-fun e!2569996 () Bool)

(assert (=> b!4142019 (= e!2569996 tp_is_empty!21493)))

(assert (=> b!4141554 (= tp!1262471 e!2569996)))

(declare-fun b!4142021 () Bool)

(declare-fun tp!1262550 () Bool)

(assert (=> b!4142021 (= e!2569996 tp!1262550)))

(declare-fun b!4142020 () Bool)

(declare-fun tp!1262549 () Bool)

(declare-fun tp!1262552 () Bool)

(assert (=> b!4142020 (= e!2569996 (and tp!1262549 tp!1262552))))

(declare-fun b!4142022 () Bool)

(declare-fun tp!1262551 () Bool)

(declare-fun tp!1262548 () Bool)

(assert (=> b!4142022 (= e!2569996 (and tp!1262551 tp!1262548))))

(assert (= (and b!4141554 ((_ is ElementMatch!12285) (regex!7380 r!4008))) b!4142019))

(assert (= (and b!4141554 ((_ is Concat!19896) (regex!7380 r!4008))) b!4142020))

(assert (= (and b!4141554 ((_ is Star!12285) (regex!7380 r!4008))) b!4142021))

(assert (= (and b!4141554 ((_ is Union!12285) (regex!7380 r!4008))) b!4142022))

(declare-fun b!4142023 () Bool)

(declare-fun e!2569997 () Bool)

(declare-fun tp!1262553 () Bool)

(assert (=> b!4142023 (= e!2569997 (and tp_is_empty!21493 tp!1262553))))

(assert (=> b!4141537 (= tp!1262480 e!2569997)))

(assert (= (and b!4141537 ((_ is Cons!44924) (t!342423 p!2912))) b!4142023))

(declare-fun b!4142024 () Bool)

(declare-fun e!2569998 () Bool)

(assert (=> b!4142024 (= e!2569998 tp_is_empty!21493)))

(assert (=> b!4141532 (= tp!1262472 e!2569998)))

(declare-fun b!4142026 () Bool)

(declare-fun tp!1262556 () Bool)

(assert (=> b!4142026 (= e!2569998 tp!1262556)))

(declare-fun b!4142025 () Bool)

(declare-fun tp!1262555 () Bool)

(declare-fun tp!1262558 () Bool)

(assert (=> b!4142025 (= e!2569998 (and tp!1262555 tp!1262558))))

(declare-fun b!4142027 () Bool)

(declare-fun tp!1262557 () Bool)

(declare-fun tp!1262554 () Bool)

(assert (=> b!4142027 (= e!2569998 (and tp!1262557 tp!1262554))))

(assert (= (and b!4141532 ((_ is ElementMatch!12285) (regex!7380 (h!50346 rules!3756)))) b!4142024))

(assert (= (and b!4141532 ((_ is Concat!19896) (regex!7380 (h!50346 rules!3756)))) b!4142025))

(assert (= (and b!4141532 ((_ is Star!12285) (regex!7380 (h!50346 rules!3756)))) b!4142026))

(assert (= (and b!4141532 ((_ is Union!12285) (regex!7380 (h!50346 rules!3756)))) b!4142027))

(declare-fun b!4142038 () Bool)

(declare-fun b_free!117995 () Bool)

(declare-fun b_next!118699 () Bool)

(assert (=> b!4142038 (= b_free!117995 (not b_next!118699))))

(declare-fun t!342470 () Bool)

(declare-fun tb!248637 () Bool)

(assert (=> (and b!4142038 (= (toValue!10044 (transformation!7380 (h!50346 (t!342425 rules!3756)))) (toValue!10044 (transformation!7380 r!4008))) t!342470) tb!248637))

(declare-fun result!302354 () Bool)

(assert (= result!302354 result!302300))

(assert (=> d!1226119 t!342470))

(assert (=> d!1226125 t!342470))

(declare-fun b_and!321721 () Bool)

(declare-fun tp!1262568 () Bool)

(assert (=> b!4142038 (= tp!1262568 (and (=> t!342470 result!302354) b_and!321721))))

(declare-fun b_free!117997 () Bool)

(declare-fun b_next!118701 () Bool)

(assert (=> b!4142038 (= b_free!117997 (not b_next!118701))))

(declare-fun t!342472 () Bool)

(declare-fun tb!248639 () Bool)

(assert (=> (and b!4142038 (= (toChars!9903 (transformation!7380 (h!50346 (t!342425 rules!3756)))) (toChars!9903 (transformation!7380 r!4008))) t!342472) tb!248639))

(declare-fun result!302356 () Bool)

(assert (= result!302356 result!302334))

(assert (=> d!1226125 t!342472))

(declare-fun tb!248641 () Bool)

(declare-fun t!342474 () Bool)

(assert (=> (and b!4142038 (= (toChars!9903 (transformation!7380 (h!50346 (t!342425 rules!3756)))) (toChars!9903 (transformation!7380 (rule!10492 (_1!24787 lt!1477070))))) t!342474) tb!248641))

(declare-fun result!302358 () Bool)

(assert (= result!302358 result!302342))

(assert (=> d!1226161 t!342474))

(declare-fun tp!1262570 () Bool)

(declare-fun b_and!321723 () Bool)

(assert (=> b!4142038 (= tp!1262570 (and (=> t!342472 result!302356) (=> t!342474 result!302358) b_and!321723))))

(declare-fun e!2570007 () Bool)

(assert (=> b!4142038 (= e!2570007 (and tp!1262568 tp!1262570))))

(declare-fun tp!1262569 () Bool)

(declare-fun b!4142037 () Bool)

(declare-fun e!2570010 () Bool)

(assert (=> b!4142037 (= e!2570010 (and tp!1262569 (inv!59529 (tag!8240 (h!50346 (t!342425 rules!3756)))) (inv!59531 (transformation!7380 (h!50346 (t!342425 rules!3756)))) e!2570007))))

(declare-fun b!4142036 () Bool)

(declare-fun e!2570009 () Bool)

(declare-fun tp!1262567 () Bool)

(assert (=> b!4142036 (= e!2570009 (and e!2570010 tp!1262567))))

(assert (=> b!4141548 (= tp!1262470 e!2570009)))

(assert (= b!4142037 b!4142038))

(assert (= b!4142036 b!4142037))

(assert (= (and b!4141548 ((_ is Cons!44926) (t!342425 rules!3756))) b!4142036))

(declare-fun m!4738465 () Bool)

(assert (=> b!4142037 m!4738465))

(declare-fun m!4738467 () Bool)

(assert (=> b!4142037 m!4738467))

(declare-fun b_lambda!121761 () Bool)

(assert (= b_lambda!121755 (or (and b!4141540 b_free!117981) (and b!4141553 b_free!117985 (= (toChars!9903 (transformation!7380 (h!50346 rules!3756))) (toChars!9903 (transformation!7380 r!4008)))) (and b!4141550 b_free!117989 (= (toChars!9903 (transformation!7380 rBis!149)) (toChars!9903 (transformation!7380 r!4008)))) (and b!4142038 b_free!117997 (= (toChars!9903 (transformation!7380 (h!50346 (t!342425 rules!3756)))) (toChars!9903 (transformation!7380 r!4008)))) b_lambda!121761)))

(declare-fun b_lambda!121763 () Bool)

(assert (= b_lambda!121741 (or (and b!4141540 b_free!117979) (and b!4141553 b_free!117983 (= (toValue!10044 (transformation!7380 (h!50346 rules!3756))) (toValue!10044 (transformation!7380 r!4008)))) (and b!4141550 b_free!117987 (= (toValue!10044 (transformation!7380 rBis!149)) (toValue!10044 (transformation!7380 r!4008)))) (and b!4142038 b_free!117995 (= (toValue!10044 (transformation!7380 (h!50346 (t!342425 rules!3756)))) (toValue!10044 (transformation!7380 r!4008)))) b_lambda!121763)))

(declare-fun b_lambda!121765 () Bool)

(assert (= b_lambda!121757 (or (and b!4141540 b_free!117979) (and b!4141553 b_free!117983 (= (toValue!10044 (transformation!7380 (h!50346 rules!3756))) (toValue!10044 (transformation!7380 r!4008)))) (and b!4141550 b_free!117987 (= (toValue!10044 (transformation!7380 rBis!149)) (toValue!10044 (transformation!7380 r!4008)))) (and b!4142038 b_free!117995 (= (toValue!10044 (transformation!7380 (h!50346 (t!342425 rules!3756)))) (toValue!10044 (transformation!7380 r!4008)))) b_lambda!121765)))

(check-sat b_and!321709 (not b!4142022) (not d!1226147) (not d!1226145) (not tb!248601) (not b!4141974) (not b!4141968) (not b!4141641) (not b!4141986) (not b_lambda!121761) (not b!4141971) (not d!1226025) (not d!1226085) (not b_next!118693) (not tb!248631) (not d!1226155) (not b!4141821) (not d!1226067) (not b!4141960) (not b!4141994) (not b!4142037) (not b_next!118691) (not b_next!118683) (not d!1226125) (not b!4141782) (not b!4141973) (not b!4141786) (not d!1226171) (not d!1226151) b_and!321723 (not b!4141777) (not b!4142017) (not d!1226157) (not b!4142023) (not tb!248625) (not d!1226109) (not b!4141779) (not b!4141784) (not b!4141813) (not b!4141965) (not d!1226107) (not b!4141992) (not b!4141774) (not d!1226161) (not b!4141590) (not b!4141642) (not b!4141975) (not d!1226117) (not b!4141815) (not b!4141787) (not b_next!118699) (not b!4141957) (not b!4142026) (not b!4141663) (not b!4141819) (not d!1226083) b_and!321717 (not d!1226115) (not b!4142036) (not b!4141955) (not b!4141997) (not bm!290513) (not d!1226073) (not b!4141924) (not b!4141656) (not b!4142020) (not b!4141684) (not b!4141820) (not b!4141961) (not b!4141776) (not b!4141817) (not b!4141643) (not b!4142027) (not b!4141654) (not b!4142018) b_and!321715 (not b!4141775) (not b_next!118689) (not b!4141818) (not d!1226075) (not b_next!118687) (not b!4141958) (not b!4142004) b_and!321719 (not d!1226175) (not d!1226077) (not bm!290519) (not b!4141793) (not b_lambda!121765) (not b_next!118701) (not d!1226065) (not b!4141610) (not b_next!118685) (not b!4141778) b_and!321721 (not b!4142021) (not b!4141825) (not b!4142025) b_and!321713 (not b!4141998) (not b!4141780) (not d!1226123) (not b!4141653) (not d!1226167) (not d!1226159) (not d!1226069) (not b!4141999) (not b!4141816) b_and!321711 tp_is_empty!21493 (not b_lambda!121759) (not b!4141990) (not b!4141788) (not d!1226071) (not b!4142016) (not b_lambda!121763))
(check-sat b_and!321709 (not b_next!118693) b_and!321723 (not b_next!118699) b_and!321717 b_and!321715 (not b_next!118689) (not b_next!118687) b_and!321719 (not b_next!118701) (not b_next!118685) b_and!321721 b_and!321713 b_and!321711 (not b_next!118691) (not b_next!118683))
