; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!394642 () Bool)

(assert start!394642)

(declare-fun b!4147701 () Bool)

(declare-fun b_free!118403 () Bool)

(declare-fun b_next!119107 () Bool)

(assert (=> b!4147701 (= b_free!118403 (not b_next!119107))))

(declare-fun tp!1264277 () Bool)

(declare-fun b_and!322477 () Bool)

(assert (=> b!4147701 (= tp!1264277 b_and!322477)))

(declare-fun b_free!118405 () Bool)

(declare-fun b_next!119109 () Bool)

(assert (=> b!4147701 (= b_free!118405 (not b_next!119109))))

(declare-fun tp!1264273 () Bool)

(declare-fun b_and!322479 () Bool)

(assert (=> b!4147701 (= tp!1264273 b_and!322479)))

(declare-fun b!4147688 () Bool)

(declare-fun b_free!118407 () Bool)

(declare-fun b_next!119111 () Bool)

(assert (=> b!4147688 (= b_free!118407 (not b_next!119111))))

(declare-fun tp!1264271 () Bool)

(declare-fun b_and!322481 () Bool)

(assert (=> b!4147688 (= tp!1264271 b_and!322481)))

(declare-fun b_free!118409 () Bool)

(declare-fun b_next!119113 () Bool)

(assert (=> b!4147688 (= b_free!118409 (not b_next!119113))))

(declare-fun tp!1264281 () Bool)

(declare-fun b_and!322483 () Bool)

(assert (=> b!4147688 (= tp!1264281 b_and!322483)))

(declare-fun b!4147687 () Bool)

(declare-fun b_free!118411 () Bool)

(declare-fun b_next!119115 () Bool)

(assert (=> b!4147687 (= b_free!118411 (not b_next!119115))))

(declare-fun tp!1264282 () Bool)

(declare-fun b_and!322485 () Bool)

(assert (=> b!4147687 (= tp!1264282 b_and!322485)))

(declare-fun b_free!118413 () Bool)

(declare-fun b_next!119117 () Bool)

(assert (=> b!4147687 (= b_free!118413 (not b_next!119117))))

(declare-fun tp!1264276 () Bool)

(declare-fun b_and!322487 () Bool)

(assert (=> b!4147687 (= tp!1264276 b_and!322487)))

(declare-fun b!4147680 () Bool)

(declare-fun res!1697908 () Bool)

(declare-fun e!2573507 () Bool)

(assert (=> b!4147680 (=> (not res!1697908) (not e!2573507))))

(declare-datatypes ((C!24816 0))(
  ( (C!24817 (val!14518 Int)) )
))
(declare-datatypes ((List!45153 0))(
  ( (Nil!45029) (Cons!45029 (h!50449 C!24816) (t!342928 List!45153)) )
))
(declare-fun p!2912 () List!45153)

(declare-fun input!3238 () List!45153)

(declare-fun isPrefix!4345 (List!45153 List!45153) Bool)

(assert (=> b!4147680 (= res!1697908 (isPrefix!4345 p!2912 input!3238))))

(declare-datatypes ((List!45154 0))(
  ( (Nil!45030) (Cons!45030 (h!50450 (_ BitVec 16)) (t!342929 List!45154)) )
))
(declare-datatypes ((TokenValue!7640 0))(
  ( (FloatLiteralValue!15280 (text!53925 List!45154)) (TokenValueExt!7639 (__x!27497 Int)) (Broken!38200 (value!231713 List!45154)) (Object!7763) (End!7640) (Def!7640) (Underscore!7640) (Match!7640) (Else!7640) (Error!7640) (Case!7640) (If!7640) (Extends!7640) (Abstract!7640) (Class!7640) (Val!7640) (DelimiterValue!15280 (del!7700 List!45154)) (KeywordValue!7646 (value!231714 List!45154)) (CommentValue!15280 (value!231715 List!45154)) (WhitespaceValue!15280 (value!231716 List!45154)) (IndentationValue!7640 (value!231717 List!45154)) (String!51949) (Int32!7640) (Broken!38201 (value!231718 List!45154)) (Boolean!7641) (Unit!64312) (OperatorValue!7643 (op!7700 List!45154)) (IdentifierValue!15280 (value!231719 List!45154)) (IdentifierValue!15281 (value!231720 List!45154)) (WhitespaceValue!15281 (value!231721 List!45154)) (True!15280) (False!15280) (Broken!38202 (value!231722 List!45154)) (Broken!38203 (value!231723 List!45154)) (True!15281) (RightBrace!7640) (RightBracket!7640) (Colon!7640) (Null!7640) (Comma!7640) (LeftBracket!7640) (False!15281) (LeftBrace!7640) (ImaginaryLiteralValue!7640 (text!53926 List!45154)) (StringLiteralValue!22920 (value!231724 List!45154)) (EOFValue!7640 (value!231725 List!45154)) (IdentValue!7640 (value!231726 List!45154)) (DelimiterValue!15281 (value!231727 List!45154)) (DedentValue!7640 (value!231728 List!45154)) (NewLineValue!7640 (value!231729 List!45154)) (IntegerValue!22920 (value!231730 (_ BitVec 32)) (text!53927 List!45154)) (IntegerValue!22921 (value!231731 Int) (text!53928 List!45154)) (Times!7640) (Or!7640) (Equal!7640) (Minus!7640) (Broken!38204 (value!231732 List!45154)) (And!7640) (Div!7640) (LessEqual!7640) (Mod!7640) (Concat!19955) (Not!7640) (Plus!7640) (SpaceValue!7640 (value!231733 List!45154)) (IntegerValue!22922 (value!231734 Int) (text!53929 List!45154)) (StringLiteralValue!22921 (text!53930 List!45154)) (FloatLiteralValue!15281 (text!53931 List!45154)) (BytesLiteralValue!7640 (value!231735 List!45154)) (CommentValue!15281 (value!231736 List!45154)) (StringLiteralValue!22922 (value!231737 List!45154)) (ErrorTokenValue!7640 (msg!7701 List!45154)) )
))
(declare-datatypes ((IArray!27247 0))(
  ( (IArray!27248 (innerList!13681 List!45153)) )
))
(declare-datatypes ((Conc!13621 0))(
  ( (Node!13621 (left!33716 Conc!13621) (right!34046 Conc!13621) (csize!27472 Int) (cheight!13832 Int)) (Leaf!21041 (xs!16927 IArray!27247) (csize!27473 Int)) (Empty!13621) )
))
(declare-datatypes ((BalanceConc!26836 0))(
  ( (BalanceConc!26837 (c!710576 Conc!13621)) )
))
(declare-datatypes ((TokenValueInjection!14708 0))(
  ( (TokenValueInjection!14709 (toValue!10074 Int) (toChars!9933 Int)) )
))
(declare-datatypes ((Regex!12315 0))(
  ( (ElementMatch!12315 (c!710577 C!24816)) (Concat!19956 (regOne!25142 Regex!12315) (regTwo!25142 Regex!12315)) (EmptyExpr!12315) (Star!12315 (reg!12644 Regex!12315)) (EmptyLang!12315) (Union!12315 (regOne!25143 Regex!12315) (regTwo!25143 Regex!12315)) )
))
(declare-datatypes ((String!51950 0))(
  ( (String!51951 (value!231738 String)) )
))
(declare-datatypes ((Rule!14620 0))(
  ( (Rule!14621 (regex!7410 Regex!12315) (tag!8270 String!51950) (isSeparator!7410 Bool) (transformation!7410 TokenValueInjection!14708)) )
))
(declare-fun rBis!149 () Rule!14620)

(declare-fun b!4147681 () Bool)

(declare-fun e!2573501 () Bool)

(declare-fun tp!1264279 () Bool)

(declare-fun e!2573508 () Bool)

(declare-fun inv!59638 (String!51950) Bool)

(declare-fun inv!59640 (TokenValueInjection!14708) Bool)

(assert (=> b!4147681 (= e!2573501 (and tp!1264279 (inv!59638 (tag!8270 rBis!149)) (inv!59640 (transformation!7410 rBis!149)) e!2573508))))

(declare-datatypes ((List!45155 0))(
  ( (Nil!45031) (Cons!45031 (h!50451 Rule!14620) (t!342930 List!45155)) )
))
(declare-fun rules!3756 () List!45155)

(declare-fun b!4147683 () Bool)

(declare-fun e!2573511 () Bool)

(declare-fun e!2573510 () Bool)

(declare-fun tp!1264278 () Bool)

(assert (=> b!4147683 (= e!2573511 (and tp!1264278 (inv!59638 (tag!8270 (h!50451 rules!3756))) (inv!59640 (transformation!7410 (h!50451 rules!3756))) e!2573510))))

(declare-fun b!4147684 () Bool)

(declare-fun res!1697901 () Bool)

(assert (=> b!4147684 (=> (not res!1697901) (not e!2573507))))

(declare-fun r!4008 () Rule!14620)

(declare-fun contains!9092 (List!45155 Rule!14620) Bool)

(assert (=> b!4147684 (= res!1697901 (contains!9092 rules!3756 r!4008))))

(declare-fun b!4147685 () Bool)

(declare-fun res!1697898 () Bool)

(declare-fun e!2573514 () Bool)

(assert (=> b!4147685 (=> res!1697898 e!2573514)))

(assert (=> b!4147685 (= res!1697898 (not (contains!9092 (t!342930 rules!3756) rBis!149)))))

(declare-fun b!4147686 () Bool)

(declare-fun e!2573506 () Bool)

(declare-fun tp_is_empty!21553 () Bool)

(declare-fun tp!1264272 () Bool)

(assert (=> b!4147686 (= e!2573506 (and tp_is_empty!21553 tp!1264272))))

(assert (=> b!4147687 (= e!2573510 (and tp!1264282 tp!1264276))))

(assert (=> b!4147688 (= e!2573508 (and tp!1264271 tp!1264281))))

(declare-fun b!4147689 () Bool)

(declare-fun e!2573512 () Bool)

(declare-fun tp!1264275 () Bool)

(assert (=> b!4147689 (= e!2573512 (and e!2573511 tp!1264275))))

(declare-fun e!2573503 () Bool)

(declare-fun tp!1264280 () Bool)

(declare-fun b!4147690 () Bool)

(declare-fun e!2573500 () Bool)

(assert (=> b!4147690 (= e!2573500 (and tp!1264280 (inv!59638 (tag!8270 r!4008)) (inv!59640 (transformation!7410 r!4008)) e!2573503))))

(declare-fun b!4147691 () Bool)

(declare-fun e!2573509 () Bool)

(assert (=> b!4147691 (= e!2573507 e!2573509)))

(declare-fun res!1697897 () Bool)

(assert (=> b!4147691 (=> (not res!1697897) (not e!2573509))))

(declare-fun lt!1479399 () BalanceConc!26836)

(declare-datatypes ((LexerInterface!6999 0))(
  ( (LexerInterfaceExt!6996 (__x!27498 Int)) (Lexer!6997) )
))
(declare-fun thiss!25645 () LexerInterface!6999)

(declare-datatypes ((Token!13750 0))(
  ( (Token!13751 (value!231739 TokenValue!7640) (rule!10538 Rule!14620) (size!33383 Int) (originalCharacters!7906 List!45153)) )
))
(declare-datatypes ((tuple2!43398 0))(
  ( (tuple2!43399 (_1!24833 Token!13750) (_2!24833 List!45153)) )
))
(declare-datatypes ((Option!9716 0))(
  ( (None!9715) (Some!9715 (v!40371 tuple2!43398)) )
))
(declare-fun maxPrefix!4189 (LexerInterface!6999 List!45155 List!45153) Option!9716)

(declare-fun apply!10483 (TokenValueInjection!14708 BalanceConc!26836) TokenValue!7640)

(declare-fun size!33384 (List!45153) Int)

(declare-fun getSuffix!2672 (List!45153 List!45153) List!45153)

(assert (=> b!4147691 (= res!1697897 (= (maxPrefix!4189 thiss!25645 rules!3756 input!3238) (Some!9715 (tuple2!43399 (Token!13751 (apply!10483 (transformation!7410 r!4008) lt!1479399) r!4008 (size!33384 p!2912) p!2912) (getSuffix!2672 input!3238 p!2912)))))))

(declare-datatypes ((Unit!64313 0))(
  ( (Unit!64314) )
))
(declare-fun lt!1479396 () Unit!64313)

(declare-fun lemmaSemiInverse!2268 (TokenValueInjection!14708 BalanceConc!26836) Unit!64313)

(assert (=> b!4147691 (= lt!1479396 (lemmaSemiInverse!2268 (transformation!7410 r!4008) lt!1479399))))

(declare-fun seqFromList!5527 (List!45153) BalanceConc!26836)

(assert (=> b!4147691 (= lt!1479399 (seqFromList!5527 p!2912))))

(declare-fun b!4147692 () Bool)

(declare-fun res!1697905 () Bool)

(assert (=> b!4147692 (=> res!1697905 e!2573514)))

(assert (=> b!4147692 (= res!1697905 (not (contains!9092 (t!342930 rules!3756) r!4008)))))

(declare-fun b!4147693 () Bool)

(declare-fun res!1697906 () Bool)

(assert (=> b!4147693 (=> (not res!1697906) (not e!2573507))))

(declare-fun isEmpty!26878 (List!45155) Bool)

(assert (=> b!4147693 (= res!1697906 (not (isEmpty!26878 rules!3756)))))

(declare-fun b!4147694 () Bool)

(declare-fun res!1697909 () Bool)

(assert (=> b!4147694 (=> (not res!1697909) (not e!2573507))))

(assert (=> b!4147694 (= res!1697909 (contains!9092 rules!3756 rBis!149))))

(declare-fun b!4147695 () Bool)

(declare-fun res!1697910 () Bool)

(assert (=> b!4147695 (=> (not res!1697910) (not e!2573507))))

(declare-fun rulesInvariant!6296 (LexerInterface!6999 List!45155) Bool)

(assert (=> b!4147695 (= res!1697910 (rulesInvariant!6296 thiss!25645 rules!3756))))

(declare-fun b!4147696 () Bool)

(declare-fun res!1697899 () Bool)

(assert (=> b!4147696 (=> (not res!1697899) (not e!2573509))))

(declare-fun matchR!6144 (Regex!12315 List!45153) Bool)

(assert (=> b!4147696 (= res!1697899 (matchR!6144 (regex!7410 r!4008) p!2912))))

(declare-fun b!4147697 () Bool)

(assert (=> b!4147697 (= e!2573509 (not e!2573514))))

(declare-fun res!1697907 () Bool)

(assert (=> b!4147697 (=> res!1697907 e!2573514)))

(get-info :version)

(assert (=> b!4147697 (= res!1697907 (or (and ((_ is Cons!45031) rules!3756) (= (h!50451 rules!3756) rBis!149)) (not ((_ is Cons!45031) rules!3756)) (= (h!50451 rules!3756) rBis!149)))))

(declare-fun lt!1479400 () Unit!64313)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2256 (LexerInterface!6999 Rule!14620 List!45155) Unit!64313)

(assert (=> b!4147697 (= lt!1479400 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2256 thiss!25645 r!4008 rules!3756))))

(declare-fun ruleValid!3216 (LexerInterface!6999 Rule!14620) Bool)

(assert (=> b!4147697 (ruleValid!3216 thiss!25645 rBis!149)))

(declare-fun lt!1479394 () Unit!64313)

(assert (=> b!4147697 (= lt!1479394 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2256 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4147698 () Bool)

(declare-fun res!1697902 () Bool)

(assert (=> b!4147698 (=> (not res!1697902) (not e!2573509))))

(declare-fun getIndex!756 (List!45155 Rule!14620) Int)

(assert (=> b!4147698 (= res!1697902 (< (getIndex!756 rules!3756 rBis!149) (getIndex!756 rules!3756 r!4008)))))

(declare-fun res!1697904 () Bool)

(assert (=> start!394642 (=> (not res!1697904) (not e!2573507))))

(assert (=> start!394642 (= res!1697904 ((_ is Lexer!6997) thiss!25645))))

(assert (=> start!394642 e!2573507))

(assert (=> start!394642 e!2573512))

(assert (=> start!394642 e!2573506))

(assert (=> start!394642 true))

(assert (=> start!394642 e!2573500))

(declare-fun e!2573502 () Bool)

(assert (=> start!394642 e!2573502))

(assert (=> start!394642 e!2573501))

(declare-fun b!4147682 () Bool)

(declare-fun res!1697903 () Bool)

(assert (=> b!4147682 (=> (not res!1697903) (not e!2573507))))

(declare-fun isEmpty!26879 (List!45153) Bool)

(assert (=> b!4147682 (= res!1697903 (not (isEmpty!26879 p!2912)))))

(declare-fun b!4147699 () Bool)

(declare-fun res!1697900 () Bool)

(assert (=> b!4147699 (=> (not res!1697900) (not e!2573509))))

(assert (=> b!4147699 (= res!1697900 (ruleValid!3216 thiss!25645 r!4008))))

(declare-fun b!4147700 () Bool)

(assert (=> b!4147700 (= e!2573514 true)))

(assert (=> b!4147700 (rulesInvariant!6296 thiss!25645 (t!342930 rules!3756))))

(declare-fun lt!1479397 () Unit!64313)

(declare-fun lemmaInvariantOnRulesThenOnTail!822 (LexerInterface!6999 Rule!14620 List!45155) Unit!64313)

(assert (=> b!4147700 (= lt!1479397 (lemmaInvariantOnRulesThenOnTail!822 thiss!25645 (h!50451 rules!3756) (t!342930 rules!3756)))))

(declare-fun lt!1479395 () Option!9716)

(assert (=> b!4147700 (= lt!1479395 (maxPrefix!4189 thiss!25645 (t!342930 rules!3756) input!3238))))

(declare-fun lt!1479398 () Option!9716)

(declare-fun maxPrefixOneRule!3128 (LexerInterface!6999 Rule!14620 List!45153) Option!9716)

(assert (=> b!4147700 (= lt!1479398 (maxPrefixOneRule!3128 thiss!25645 (h!50451 rules!3756) input!3238))))

(assert (=> b!4147701 (= e!2573503 (and tp!1264277 tp!1264273))))

(declare-fun b!4147702 () Bool)

(declare-fun tp!1264274 () Bool)

(assert (=> b!4147702 (= e!2573502 (and tp_is_empty!21553 tp!1264274))))

(assert (= (and start!394642 res!1697904) b!4147680))

(assert (= (and b!4147680 res!1697908) b!4147693))

(assert (= (and b!4147693 res!1697906) b!4147695))

(assert (= (and b!4147695 res!1697910) b!4147684))

(assert (= (and b!4147684 res!1697901) b!4147694))

(assert (= (and b!4147694 res!1697909) b!4147682))

(assert (= (and b!4147682 res!1697903) b!4147691))

(assert (= (and b!4147691 res!1697897) b!4147696))

(assert (= (and b!4147696 res!1697899) b!4147698))

(assert (= (and b!4147698 res!1697902) b!4147699))

(assert (= (and b!4147699 res!1697900) b!4147697))

(assert (= (and b!4147697 (not res!1697907)) b!4147692))

(assert (= (and b!4147692 (not res!1697905)) b!4147685))

(assert (= (and b!4147685 (not res!1697898)) b!4147700))

(assert (= b!4147683 b!4147687))

(assert (= b!4147689 b!4147683))

(assert (= (and start!394642 ((_ is Cons!45031) rules!3756)) b!4147689))

(assert (= (and start!394642 ((_ is Cons!45029) p!2912)) b!4147686))

(assert (= b!4147690 b!4147701))

(assert (= start!394642 b!4147690))

(assert (= (and start!394642 ((_ is Cons!45029) input!3238)) b!4147702))

(assert (= b!4147681 b!4147688))

(assert (= start!394642 b!4147681))

(declare-fun m!4743539 () Bool)

(assert (=> b!4147681 m!4743539))

(declare-fun m!4743541 () Bool)

(assert (=> b!4147681 m!4743541))

(declare-fun m!4743543 () Bool)

(assert (=> b!4147697 m!4743543))

(declare-fun m!4743545 () Bool)

(assert (=> b!4147697 m!4743545))

(declare-fun m!4743547 () Bool)

(assert (=> b!4147697 m!4743547))

(declare-fun m!4743549 () Bool)

(assert (=> b!4147696 m!4743549))

(declare-fun m!4743551 () Bool)

(assert (=> b!4147683 m!4743551))

(declare-fun m!4743553 () Bool)

(assert (=> b!4147683 m!4743553))

(declare-fun m!4743555 () Bool)

(assert (=> b!4147682 m!4743555))

(declare-fun m!4743557 () Bool)

(assert (=> b!4147685 m!4743557))

(declare-fun m!4743559 () Bool)

(assert (=> b!4147693 m!4743559))

(declare-fun m!4743561 () Bool)

(assert (=> b!4147684 m!4743561))

(declare-fun m!4743563 () Bool)

(assert (=> b!4147690 m!4743563))

(declare-fun m!4743565 () Bool)

(assert (=> b!4147690 m!4743565))

(declare-fun m!4743567 () Bool)

(assert (=> b!4147694 m!4743567))

(declare-fun m!4743569 () Bool)

(assert (=> b!4147691 m!4743569))

(declare-fun m!4743571 () Bool)

(assert (=> b!4147691 m!4743571))

(declare-fun m!4743573 () Bool)

(assert (=> b!4147691 m!4743573))

(declare-fun m!4743575 () Bool)

(assert (=> b!4147691 m!4743575))

(declare-fun m!4743577 () Bool)

(assert (=> b!4147691 m!4743577))

(declare-fun m!4743579 () Bool)

(assert (=> b!4147691 m!4743579))

(declare-fun m!4743581 () Bool)

(assert (=> b!4147692 m!4743581))

(declare-fun m!4743583 () Bool)

(assert (=> b!4147698 m!4743583))

(declare-fun m!4743585 () Bool)

(assert (=> b!4147698 m!4743585))

(declare-fun m!4743587 () Bool)

(assert (=> b!4147700 m!4743587))

(declare-fun m!4743589 () Bool)

(assert (=> b!4147700 m!4743589))

(declare-fun m!4743591 () Bool)

(assert (=> b!4147700 m!4743591))

(declare-fun m!4743593 () Bool)

(assert (=> b!4147700 m!4743593))

(declare-fun m!4743595 () Bool)

(assert (=> b!4147695 m!4743595))

(declare-fun m!4743597 () Bool)

(assert (=> b!4147680 m!4743597))

(declare-fun m!4743599 () Bool)

(assert (=> b!4147699 m!4743599))

(check-sat (not b!4147686) b_and!322485 (not b!4147689) b_and!322487 (not b!4147691) (not b!4147696) (not b!4147683) (not b!4147693) b_and!322481 (not b_next!119111) (not b!4147690) (not b!4147695) b_and!322483 (not b!4147700) (not b_next!119115) tp_is_empty!21553 (not b_next!119107) (not b_next!119117) (not b!4147692) (not b!4147699) b_and!322477 b_and!322479 (not b!4147680) (not b!4147694) (not b_next!119113) (not b!4147681) (not b!4147698) (not b!4147702) (not b!4147682) (not b!4147685) (not b_next!119109) (not b!4147684) (not b!4147697))
(check-sat b_and!322485 b_and!322477 b_and!322479 b_and!322487 (not b_next!119113) b_and!322481 (not b_next!119111) b_and!322483 (not b_next!119109) (not b_next!119115) (not b_next!119107) (not b_next!119117))
