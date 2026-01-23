; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!394634 () Bool)

(assert start!394634)

(declare-fun b!4147418 () Bool)

(declare-fun b_free!118355 () Bool)

(declare-fun b_next!119059 () Bool)

(assert (=> b!4147418 (= b_free!118355 (not b_next!119059))))

(declare-fun tp!1264130 () Bool)

(declare-fun b_and!322429 () Bool)

(assert (=> b!4147418 (= tp!1264130 b_and!322429)))

(declare-fun b_free!118357 () Bool)

(declare-fun b_next!119061 () Bool)

(assert (=> b!4147418 (= b_free!118357 (not b_next!119061))))

(declare-fun tp!1264132 () Bool)

(declare-fun b_and!322431 () Bool)

(assert (=> b!4147418 (= tp!1264132 b_and!322431)))

(declare-fun b!4147407 () Bool)

(declare-fun b_free!118359 () Bool)

(declare-fun b_next!119063 () Bool)

(assert (=> b!4147407 (= b_free!118359 (not b_next!119063))))

(declare-fun tp!1264136 () Bool)

(declare-fun b_and!322433 () Bool)

(assert (=> b!4147407 (= tp!1264136 b_and!322433)))

(declare-fun b_free!118361 () Bool)

(declare-fun b_next!119065 () Bool)

(assert (=> b!4147407 (= b_free!118361 (not b_next!119065))))

(declare-fun tp!1264137 () Bool)

(declare-fun b_and!322435 () Bool)

(assert (=> b!4147407 (= tp!1264137 b_and!322435)))

(declare-fun b!4147414 () Bool)

(declare-fun b_free!118363 () Bool)

(declare-fun b_next!119067 () Bool)

(assert (=> b!4147414 (= b_free!118363 (not b_next!119067))))

(declare-fun tp!1264135 () Bool)

(declare-fun b_and!322437 () Bool)

(assert (=> b!4147414 (= tp!1264135 b_and!322437)))

(declare-fun b_free!118365 () Bool)

(declare-fun b_next!119069 () Bool)

(assert (=> b!4147414 (= b_free!118365 (not b_next!119069))))

(declare-fun tp!1264134 () Bool)

(declare-fun b_and!322439 () Bool)

(assert (=> b!4147414 (= tp!1264134 b_and!322439)))

(declare-fun b!4147404 () Bool)

(declare-fun e!2573330 () Bool)

(declare-fun e!2573328 () Bool)

(assert (=> b!4147404 (= e!2573330 (not e!2573328))))

(declare-fun res!1697740 () Bool)

(assert (=> b!4147404 (=> res!1697740 e!2573328)))

(declare-datatypes ((List!45141 0))(
  ( (Nil!45017) (Cons!45017 (h!50437 (_ BitVec 16)) (t!342916 List!45141)) )
))
(declare-datatypes ((TokenValue!7636 0))(
  ( (FloatLiteralValue!15272 (text!53897 List!45141)) (TokenValueExt!7635 (__x!27489 Int)) (Broken!38180 (value!231599 List!45141)) (Object!7759) (End!7636) (Def!7636) (Underscore!7636) (Match!7636) (Else!7636) (Error!7636) (Case!7636) (If!7636) (Extends!7636) (Abstract!7636) (Class!7636) (Val!7636) (DelimiterValue!15272 (del!7696 List!45141)) (KeywordValue!7642 (value!231600 List!45141)) (CommentValue!15272 (value!231601 List!45141)) (WhitespaceValue!15272 (value!231602 List!45141)) (IndentationValue!7636 (value!231603 List!45141)) (String!51929) (Int32!7636) (Broken!38181 (value!231604 List!45141)) (Boolean!7637) (Unit!64300) (OperatorValue!7639 (op!7696 List!45141)) (IdentifierValue!15272 (value!231605 List!45141)) (IdentifierValue!15273 (value!231606 List!45141)) (WhitespaceValue!15273 (value!231607 List!45141)) (True!15272) (False!15272) (Broken!38182 (value!231608 List!45141)) (Broken!38183 (value!231609 List!45141)) (True!15273) (RightBrace!7636) (RightBracket!7636) (Colon!7636) (Null!7636) (Comma!7636) (LeftBracket!7636) (False!15273) (LeftBrace!7636) (ImaginaryLiteralValue!7636 (text!53898 List!45141)) (StringLiteralValue!22908 (value!231610 List!45141)) (EOFValue!7636 (value!231611 List!45141)) (IdentValue!7636 (value!231612 List!45141)) (DelimiterValue!15273 (value!231613 List!45141)) (DedentValue!7636 (value!231614 List!45141)) (NewLineValue!7636 (value!231615 List!45141)) (IntegerValue!22908 (value!231616 (_ BitVec 32)) (text!53899 List!45141)) (IntegerValue!22909 (value!231617 Int) (text!53900 List!45141)) (Times!7636) (Or!7636) (Equal!7636) (Minus!7636) (Broken!38184 (value!231618 List!45141)) (And!7636) (Div!7636) (LessEqual!7636) (Mod!7636) (Concat!19947) (Not!7636) (Plus!7636) (SpaceValue!7636 (value!231619 List!45141)) (IntegerValue!22910 (value!231620 Int) (text!53901 List!45141)) (StringLiteralValue!22909 (text!53902 List!45141)) (FloatLiteralValue!15273 (text!53903 List!45141)) (BytesLiteralValue!7636 (value!231621 List!45141)) (CommentValue!15273 (value!231622 List!45141)) (StringLiteralValue!22910 (value!231623 List!45141)) (ErrorTokenValue!7636 (msg!7697 List!45141)) )
))
(declare-datatypes ((C!24808 0))(
  ( (C!24809 (val!14514 Int)) )
))
(declare-datatypes ((List!45142 0))(
  ( (Nil!45018) (Cons!45018 (h!50438 C!24808) (t!342917 List!45142)) )
))
(declare-datatypes ((IArray!27239 0))(
  ( (IArray!27240 (innerList!13677 List!45142)) )
))
(declare-datatypes ((Conc!13617 0))(
  ( (Node!13617 (left!33710 Conc!13617) (right!34040 Conc!13617) (csize!27464 Int) (cheight!13828 Int)) (Leaf!21035 (xs!16923 IArray!27239) (csize!27465 Int)) (Empty!13617) )
))
(declare-datatypes ((BalanceConc!26828 0))(
  ( (BalanceConc!26829 (c!710564 Conc!13617)) )
))
(declare-datatypes ((Regex!12311 0))(
  ( (ElementMatch!12311 (c!710565 C!24808)) (Concat!19948 (regOne!25134 Regex!12311) (regTwo!25134 Regex!12311)) (EmptyExpr!12311) (Star!12311 (reg!12640 Regex!12311)) (EmptyLang!12311) (Union!12311 (regOne!25135 Regex!12311) (regTwo!25135 Regex!12311)) )
))
(declare-datatypes ((String!51930 0))(
  ( (String!51931 (value!231624 String)) )
))
(declare-datatypes ((TokenValueInjection!14700 0))(
  ( (TokenValueInjection!14701 (toValue!10070 Int) (toChars!9929 Int)) )
))
(declare-datatypes ((Rule!14612 0))(
  ( (Rule!14613 (regex!7406 Regex!12311) (tag!8266 String!51930) (isSeparator!7406 Bool) (transformation!7406 TokenValueInjection!14700)) )
))
(declare-datatypes ((List!45143 0))(
  ( (Nil!45019) (Cons!45019 (h!50439 Rule!14612) (t!342918 List!45143)) )
))
(declare-fun rules!3756 () List!45143)

(declare-fun rBis!149 () Rule!14612)

(get-info :version)

(assert (=> b!4147404 (= res!1697740 (or (and ((_ is Cons!45019) rules!3756) (= (h!50439 rules!3756) rBis!149)) (not ((_ is Cons!45019) rules!3756)) (= (h!50439 rules!3756) rBis!149)))))

(declare-datatypes ((LexerInterface!6995 0))(
  ( (LexerInterfaceExt!6992 (__x!27490 Int)) (Lexer!6993) )
))
(declare-fun thiss!25645 () LexerInterface!6995)

(declare-datatypes ((Unit!64301 0))(
  ( (Unit!64302) )
))
(declare-fun lt!1479318 () Unit!64301)

(declare-fun r!4008 () Rule!14612)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2252 (LexerInterface!6995 Rule!14612 List!45143) Unit!64301)

(assert (=> b!4147404 (= lt!1479318 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2252 thiss!25645 r!4008 rules!3756))))

(declare-fun ruleValid!3212 (LexerInterface!6995 Rule!14612) Bool)

(assert (=> b!4147404 (ruleValid!3212 thiss!25645 rBis!149)))

(declare-fun lt!1479321 () Unit!64301)

(assert (=> b!4147404 (= lt!1479321 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2252 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4147405 () Bool)

(declare-fun e!2573327 () Bool)

(declare-fun tp_is_empty!21545 () Bool)

(declare-fun tp!1264128 () Bool)

(assert (=> b!4147405 (= e!2573327 (and tp_is_empty!21545 tp!1264128))))

(declare-fun b!4147406 () Bool)

(declare-fun res!1697735 () Bool)

(declare-fun e!2573331 () Bool)

(assert (=> b!4147406 (=> (not res!1697735) (not e!2573331))))

(declare-fun p!2912 () List!45142)

(declare-fun input!3238 () List!45142)

(declare-fun isPrefix!4341 (List!45142 List!45142) Bool)

(assert (=> b!4147406 (= res!1697735 (isPrefix!4341 p!2912 input!3238))))

(declare-fun res!1697742 () Bool)

(assert (=> start!394634 (=> (not res!1697742) (not e!2573331))))

(assert (=> start!394634 (= res!1697742 ((_ is Lexer!6993) thiss!25645))))

(assert (=> start!394634 e!2573331))

(declare-fun e!2573332 () Bool)

(assert (=> start!394634 e!2573332))

(assert (=> start!394634 e!2573327))

(assert (=> start!394634 true))

(declare-fun e!2573324 () Bool)

(assert (=> start!394634 e!2573324))

(declare-fun e!2573325 () Bool)

(assert (=> start!394634 e!2573325))

(declare-fun e!2573323 () Bool)

(assert (=> start!394634 e!2573323))

(declare-fun e!2573329 () Bool)

(assert (=> b!4147407 (= e!2573329 (and tp!1264136 tp!1264137))))

(declare-fun b!4147408 () Bool)

(declare-fun e!2573326 () Bool)

(declare-fun tp!1264129 () Bool)

(declare-fun inv!59628 (String!51930) Bool)

(declare-fun inv!59630 (TokenValueInjection!14700) Bool)

(assert (=> b!4147408 (= e!2573323 (and tp!1264129 (inv!59628 (tag!8266 rBis!149)) (inv!59630 (transformation!7406 rBis!149)) e!2573326))))

(declare-fun b!4147409 () Bool)

(declare-fun e!2573333 () Bool)

(declare-fun tp!1264127 () Bool)

(assert (=> b!4147409 (= e!2573332 (and e!2573333 tp!1264127))))

(declare-fun b!4147410 () Bool)

(declare-fun res!1697739 () Bool)

(assert (=> b!4147410 (=> (not res!1697739) (not e!2573331))))

(declare-fun isEmpty!26870 (List!45142) Bool)

(assert (=> b!4147410 (= res!1697739 (not (isEmpty!26870 p!2912)))))

(declare-fun b!4147411 () Bool)

(declare-fun res!1697734 () Bool)

(assert (=> b!4147411 (=> (not res!1697734) (not e!2573330))))

(declare-fun getIndex!752 (List!45143 Rule!14612) Int)

(assert (=> b!4147411 (= res!1697734 (< (getIndex!752 rules!3756 rBis!149) (getIndex!752 rules!3756 r!4008)))))

(declare-fun b!4147412 () Bool)

(declare-fun tp!1264131 () Bool)

(assert (=> b!4147412 (= e!2573324 (and tp!1264131 (inv!59628 (tag!8266 r!4008)) (inv!59630 (transformation!7406 r!4008)) e!2573329))))

(declare-fun b!4147413 () Bool)

(declare-fun tp!1264138 () Bool)

(assert (=> b!4147413 (= e!2573325 (and tp_is_empty!21545 tp!1264138))))

(assert (=> b!4147414 (= e!2573326 (and tp!1264135 tp!1264134))))

(declare-fun b!4147415 () Bool)

(declare-fun res!1697732 () Bool)

(assert (=> b!4147415 (=> res!1697732 e!2573328)))

(declare-fun contains!9088 (List!45143 Rule!14612) Bool)

(assert (=> b!4147415 (= res!1697732 (not (contains!9088 (t!342918 rules!3756) rBis!149)))))

(declare-fun b!4147416 () Bool)

(declare-fun res!1697733 () Bool)

(assert (=> b!4147416 (=> (not res!1697733) (not e!2573330))))

(declare-fun matchR!6140 (Regex!12311 List!45142) Bool)

(assert (=> b!4147416 (= res!1697733 (matchR!6140 (regex!7406 r!4008) p!2912))))

(declare-fun b!4147417 () Bool)

(assert (=> b!4147417 (= e!2573331 e!2573330)))

(declare-fun res!1697731 () Bool)

(assert (=> b!4147417 (=> (not res!1697731) (not e!2573330))))

(declare-fun lt!1479317 () BalanceConc!26828)

(declare-datatypes ((Token!13742 0))(
  ( (Token!13743 (value!231625 TokenValue!7636) (rule!10534 Rule!14612) (size!33375 Int) (originalCharacters!7902 List!45142)) )
))
(declare-datatypes ((tuple2!43390 0))(
  ( (tuple2!43391 (_1!24829 Token!13742) (_2!24829 List!45142)) )
))
(declare-datatypes ((Option!9712 0))(
  ( (None!9711) (Some!9711 (v!40367 tuple2!43390)) )
))
(declare-fun maxPrefix!4185 (LexerInterface!6995 List!45143 List!45142) Option!9712)

(declare-fun apply!10479 (TokenValueInjection!14700 BalanceConc!26828) TokenValue!7636)

(declare-fun size!33376 (List!45142) Int)

(declare-fun getSuffix!2668 (List!45142 List!45142) List!45142)

(assert (=> b!4147417 (= res!1697731 (= (maxPrefix!4185 thiss!25645 rules!3756 input!3238) (Some!9711 (tuple2!43391 (Token!13743 (apply!10479 (transformation!7406 r!4008) lt!1479317) r!4008 (size!33376 p!2912) p!2912) (getSuffix!2668 input!3238 p!2912)))))))

(declare-fun lt!1479319 () Unit!64301)

(declare-fun lemmaSemiInverse!2264 (TokenValueInjection!14700 BalanceConc!26828) Unit!64301)

(assert (=> b!4147417 (= lt!1479319 (lemmaSemiInverse!2264 (transformation!7406 r!4008) lt!1479317))))

(declare-fun seqFromList!5523 (List!45142) BalanceConc!26828)

(assert (=> b!4147417 (= lt!1479317 (seqFromList!5523 p!2912))))

(declare-fun e!2573321 () Bool)

(assert (=> b!4147418 (= e!2573321 (and tp!1264130 tp!1264132))))

(declare-fun b!4147419 () Bool)

(declare-fun res!1697737 () Bool)

(assert (=> b!4147419 (=> res!1697737 e!2573328)))

(assert (=> b!4147419 (= res!1697737 (not (contains!9088 (t!342918 rules!3756) r!4008)))))

(declare-fun b!4147420 () Bool)

(declare-fun res!1697741 () Bool)

(assert (=> b!4147420 (=> (not res!1697741) (not e!2573331))))

(declare-fun isEmpty!26871 (List!45143) Bool)

(assert (=> b!4147420 (= res!1697741 (not (isEmpty!26871 rules!3756)))))

(declare-fun b!4147421 () Bool)

(declare-fun res!1697730 () Bool)

(assert (=> b!4147421 (=> (not res!1697730) (not e!2573330))))

(assert (=> b!4147421 (= res!1697730 (ruleValid!3212 thiss!25645 r!4008))))

(declare-fun b!4147422 () Bool)

(declare-fun tp!1264133 () Bool)

(assert (=> b!4147422 (= e!2573333 (and tp!1264133 (inv!59628 (tag!8266 (h!50439 rules!3756))) (inv!59630 (transformation!7406 (h!50439 rules!3756))) e!2573321))))

(declare-fun b!4147423 () Bool)

(declare-fun res!1697729 () Bool)

(assert (=> b!4147423 (=> (not res!1697729) (not e!2573331))))

(assert (=> b!4147423 (= res!1697729 (contains!9088 rules!3756 rBis!149))))

(declare-fun b!4147424 () Bool)

(declare-fun res!1697736 () Bool)

(assert (=> b!4147424 (=> (not res!1697736) (not e!2573331))))

(declare-fun rulesInvariant!6292 (LexerInterface!6995 List!45143) Bool)

(assert (=> b!4147424 (= res!1697736 (rulesInvariant!6292 thiss!25645 rules!3756))))

(declare-fun b!4147425 () Bool)

(assert (=> b!4147425 (= e!2573328 true)))

(declare-fun lt!1479322 () Option!9712)

(assert (=> b!4147425 (= lt!1479322 (maxPrefix!4185 thiss!25645 (t!342918 rules!3756) input!3238))))

(declare-fun lt!1479320 () Option!9712)

(declare-fun maxPrefixOneRule!3124 (LexerInterface!6995 Rule!14612 List!45142) Option!9712)

(assert (=> b!4147425 (= lt!1479320 (maxPrefixOneRule!3124 thiss!25645 (h!50439 rules!3756) input!3238))))

(declare-fun b!4147426 () Bool)

(declare-fun res!1697738 () Bool)

(assert (=> b!4147426 (=> (not res!1697738) (not e!2573331))))

(assert (=> b!4147426 (= res!1697738 (contains!9088 rules!3756 r!4008))))

(assert (= (and start!394634 res!1697742) b!4147406))

(assert (= (and b!4147406 res!1697735) b!4147420))

(assert (= (and b!4147420 res!1697741) b!4147424))

(assert (= (and b!4147424 res!1697736) b!4147426))

(assert (= (and b!4147426 res!1697738) b!4147423))

(assert (= (and b!4147423 res!1697729) b!4147410))

(assert (= (and b!4147410 res!1697739) b!4147417))

(assert (= (and b!4147417 res!1697731) b!4147416))

(assert (= (and b!4147416 res!1697733) b!4147411))

(assert (= (and b!4147411 res!1697734) b!4147421))

(assert (= (and b!4147421 res!1697730) b!4147404))

(assert (= (and b!4147404 (not res!1697740)) b!4147419))

(assert (= (and b!4147419 (not res!1697737)) b!4147415))

(assert (= (and b!4147415 (not res!1697732)) b!4147425))

(assert (= b!4147422 b!4147418))

(assert (= b!4147409 b!4147422))

(assert (= (and start!394634 ((_ is Cons!45019) rules!3756)) b!4147409))

(assert (= (and start!394634 ((_ is Cons!45018) p!2912)) b!4147405))

(assert (= b!4147412 b!4147407))

(assert (= start!394634 b!4147412))

(assert (= (and start!394634 ((_ is Cons!45018) input!3238)) b!4147413))

(assert (= b!4147408 b!4147414))

(assert (= start!394634 b!4147408))

(declare-fun m!4743299 () Bool)

(assert (=> b!4147406 m!4743299))

(declare-fun m!4743301 () Bool)

(assert (=> b!4147422 m!4743301))

(declare-fun m!4743303 () Bool)

(assert (=> b!4147422 m!4743303))

(declare-fun m!4743305 () Bool)

(assert (=> b!4147420 m!4743305))

(declare-fun m!4743307 () Bool)

(assert (=> b!4147408 m!4743307))

(declare-fun m!4743309 () Bool)

(assert (=> b!4147408 m!4743309))

(declare-fun m!4743311 () Bool)

(assert (=> b!4147421 m!4743311))

(declare-fun m!4743313 () Bool)

(assert (=> b!4147419 m!4743313))

(declare-fun m!4743315 () Bool)

(assert (=> b!4147411 m!4743315))

(declare-fun m!4743317 () Bool)

(assert (=> b!4147411 m!4743317))

(declare-fun m!4743319 () Bool)

(assert (=> b!4147410 m!4743319))

(declare-fun m!4743321 () Bool)

(assert (=> b!4147417 m!4743321))

(declare-fun m!4743323 () Bool)

(assert (=> b!4147417 m!4743323))

(declare-fun m!4743325 () Bool)

(assert (=> b!4147417 m!4743325))

(declare-fun m!4743327 () Bool)

(assert (=> b!4147417 m!4743327))

(declare-fun m!4743329 () Bool)

(assert (=> b!4147417 m!4743329))

(declare-fun m!4743331 () Bool)

(assert (=> b!4147417 m!4743331))

(declare-fun m!4743333 () Bool)

(assert (=> b!4147404 m!4743333))

(declare-fun m!4743335 () Bool)

(assert (=> b!4147404 m!4743335))

(declare-fun m!4743337 () Bool)

(assert (=> b!4147404 m!4743337))

(declare-fun m!4743339 () Bool)

(assert (=> b!4147424 m!4743339))

(declare-fun m!4743341 () Bool)

(assert (=> b!4147412 m!4743341))

(declare-fun m!4743343 () Bool)

(assert (=> b!4147412 m!4743343))

(declare-fun m!4743345 () Bool)

(assert (=> b!4147416 m!4743345))

(declare-fun m!4743347 () Bool)

(assert (=> b!4147415 m!4743347))

(declare-fun m!4743349 () Bool)

(assert (=> b!4147426 m!4743349))

(declare-fun m!4743351 () Bool)

(assert (=> b!4147425 m!4743351))

(declare-fun m!4743353 () Bool)

(assert (=> b!4147425 m!4743353))

(declare-fun m!4743355 () Bool)

(assert (=> b!4147423 m!4743355))

(check-sat b_and!322433 (not b!4147416) (not b!4147405) (not b!4147404) (not b_next!119067) (not b!4147419) (not b_next!119063) b_and!322429 (not b!4147413) (not b!4147411) (not b!4147420) (not b!4147417) (not b!4147412) tp_is_empty!21545 (not b_next!119065) (not b!4147410) (not b_next!119061) (not b!4147423) b_and!322437 (not b!4147424) (not b!4147415) (not b!4147408) (not b!4147406) (not b!4147422) (not b!4147426) (not b!4147421) (not b!4147425) b_and!322439 b_and!322431 (not b_next!119059) (not b!4147409) b_and!322435 (not b_next!119069))
(check-sat b_and!322433 (not b_next!119065) (not b_next!119061) (not b_next!119067) (not b_next!119063) b_and!322429 b_and!322437 (not b_next!119059) b_and!322439 b_and!322431 b_and!322435 (not b_next!119069))
