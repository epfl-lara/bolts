; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!379640 () Bool)

(assert start!379640)

(declare-fun b!4030050 () Bool)

(declare-fun b_free!112297 () Bool)

(declare-fun b_next!113001 () Bool)

(assert (=> b!4030050 (= b_free!112297 (not b_next!113001))))

(declare-fun tp!1224914 () Bool)

(declare-fun b_and!309687 () Bool)

(assert (=> b!4030050 (= tp!1224914 b_and!309687)))

(declare-fun b_free!112299 () Bool)

(declare-fun b_next!113003 () Bool)

(assert (=> b!4030050 (= b_free!112299 (not b_next!113003))))

(declare-fun tp!1224921 () Bool)

(declare-fun b_and!309689 () Bool)

(assert (=> b!4030050 (= tp!1224921 b_and!309689)))

(declare-fun b!4030031 () Bool)

(declare-fun b_free!112301 () Bool)

(declare-fun b_next!113005 () Bool)

(assert (=> b!4030031 (= b_free!112301 (not b_next!113005))))

(declare-fun tp!1224920 () Bool)

(declare-fun b_and!309691 () Bool)

(assert (=> b!4030031 (= tp!1224920 b_and!309691)))

(declare-fun b_free!112303 () Bool)

(declare-fun b_next!113007 () Bool)

(assert (=> b!4030031 (= b_free!112303 (not b_next!113007))))

(declare-fun tp!1224917 () Bool)

(declare-fun b_and!309693 () Bool)

(assert (=> b!4030031 (= tp!1224917 b_and!309693)))

(declare-fun b!4030024 () Bool)

(declare-fun e!2500543 () Bool)

(declare-fun tp_is_empty!20589 () Bool)

(declare-fun tp!1224915 () Bool)

(assert (=> b!4030024 (= e!2500543 (and tp_is_empty!20589 tp!1224915))))

(declare-fun b!4030025 () Bool)

(declare-fun e!2500527 () Bool)

(declare-fun tp!1224910 () Bool)

(assert (=> b!4030025 (= e!2500527 (and tp_is_empty!20589 tp!1224910))))

(declare-datatypes ((C!23804 0))(
  ( (C!23805 (val!13996 Int)) )
))
(declare-datatypes ((List!43299 0))(
  ( (Nil!43175) (Cons!43175 (h!48595 C!23804) (t!334140 List!43299)) )
))
(declare-datatypes ((IArray!26235 0))(
  ( (IArray!26236 (innerList!13175 List!43299)) )
))
(declare-datatypes ((Conc!13115 0))(
  ( (Node!13115 (left!32521 Conc!13115) (right!32851 Conc!13115) (csize!26460 Int) (cheight!13326 Int)) (Leaf!20274 (xs!16421 IArray!26235) (csize!26461 Int)) (Empty!13115) )
))
(declare-datatypes ((BalanceConc!25824 0))(
  ( (BalanceConc!25825 (c!696112 Conc!13115)) )
))
(declare-datatypes ((List!43300 0))(
  ( (Nil!43176) (Cons!43176 (h!48596 (_ BitVec 16)) (t!334141 List!43300)) )
))
(declare-datatypes ((TokenValue!7134 0))(
  ( (FloatLiteralValue!14268 (text!50383 List!43300)) (TokenValueExt!7133 (__x!26485 Int)) (Broken!35670 (value!217372 List!43300)) (Object!7257) (End!7134) (Def!7134) (Underscore!7134) (Match!7134) (Else!7134) (Error!7134) (Case!7134) (If!7134) (Extends!7134) (Abstract!7134) (Class!7134) (Val!7134) (DelimiterValue!14268 (del!7194 List!43300)) (KeywordValue!7140 (value!217373 List!43300)) (CommentValue!14268 (value!217374 List!43300)) (WhitespaceValue!14268 (value!217375 List!43300)) (IndentationValue!7134 (value!217376 List!43300)) (String!49387) (Int32!7134) (Broken!35671 (value!217377 List!43300)) (Boolean!7135) (Unit!62337) (OperatorValue!7137 (op!7194 List!43300)) (IdentifierValue!14268 (value!217378 List!43300)) (IdentifierValue!14269 (value!217379 List!43300)) (WhitespaceValue!14269 (value!217380 List!43300)) (True!14268) (False!14268) (Broken!35672 (value!217381 List!43300)) (Broken!35673 (value!217382 List!43300)) (True!14269) (RightBrace!7134) (RightBracket!7134) (Colon!7134) (Null!7134) (Comma!7134) (LeftBracket!7134) (False!14269) (LeftBrace!7134) (ImaginaryLiteralValue!7134 (text!50384 List!43300)) (StringLiteralValue!21402 (value!217383 List!43300)) (EOFValue!7134 (value!217384 List!43300)) (IdentValue!7134 (value!217385 List!43300)) (DelimiterValue!14269 (value!217386 List!43300)) (DedentValue!7134 (value!217387 List!43300)) (NewLineValue!7134 (value!217388 List!43300)) (IntegerValue!21402 (value!217389 (_ BitVec 32)) (text!50385 List!43300)) (IntegerValue!21403 (value!217390 Int) (text!50386 List!43300)) (Times!7134) (Or!7134) (Equal!7134) (Minus!7134) (Broken!35674 (value!217391 List!43300)) (And!7134) (Div!7134) (LessEqual!7134) (Mod!7134) (Concat!18943) (Not!7134) (Plus!7134) (SpaceValue!7134 (value!217392 List!43300)) (IntegerValue!21404 (value!217393 Int) (text!50387 List!43300)) (StringLiteralValue!21403 (text!50388 List!43300)) (FloatLiteralValue!14269 (text!50389 List!43300)) (BytesLiteralValue!7134 (value!217394 List!43300)) (CommentValue!14269 (value!217395 List!43300)) (StringLiteralValue!21404 (value!217396 List!43300)) (ErrorTokenValue!7134 (msg!7195 List!43300)) )
))
(declare-datatypes ((Regex!11809 0))(
  ( (ElementMatch!11809 (c!696113 C!23804)) (Concat!18944 (regOne!24130 Regex!11809) (regTwo!24130 Regex!11809)) (EmptyExpr!11809) (Star!11809 (reg!12138 Regex!11809)) (EmptyLang!11809) (Union!11809 (regOne!24131 Regex!11809) (regTwo!24131 Regex!11809)) )
))
(declare-datatypes ((String!49388 0))(
  ( (String!49389 (value!217397 String)) )
))
(declare-datatypes ((TokenValueInjection!13696 0))(
  ( (TokenValueInjection!13697 (toValue!9428 Int) (toChars!9287 Int)) )
))
(declare-datatypes ((Rule!13608 0))(
  ( (Rule!13609 (regex!6904 Regex!11809) (tag!7764 String!49388) (isSeparator!6904 Bool) (transformation!6904 TokenValueInjection!13696)) )
))
(declare-datatypes ((Token!12946 0))(
  ( (Token!12947 (value!217398 TokenValue!7134) (rule!9964 Rule!13608) (size!32269 Int) (originalCharacters!7504 List!43299)) )
))
(declare-fun token!484 () Token!12946)

(declare-fun b!4030026 () Bool)

(declare-fun e!2500540 () Bool)

(declare-fun tp!1224922 () Bool)

(declare-fun e!2500530 () Bool)

(declare-fun inv!57675 (String!49388) Bool)

(declare-fun inv!57678 (TokenValueInjection!13696) Bool)

(assert (=> b!4030026 (= e!2500540 (and tp!1224922 (inv!57675 (tag!7764 (rule!9964 token!484))) (inv!57678 (transformation!6904 (rule!9964 token!484))) e!2500530))))

(declare-fun b!4030027 () Bool)

(declare-fun res!1640449 () Bool)

(declare-fun e!2500529 () Bool)

(assert (=> b!4030027 (=> (not res!1640449) (not e!2500529))))

(declare-datatypes ((List!43301 0))(
  ( (Nil!43177) (Cons!43177 (h!48597 Rule!13608) (t!334142 List!43301)) )
))
(declare-fun rules!2999 () List!43301)

(declare-fun isEmpty!25765 (List!43301) Bool)

(assert (=> b!4030027 (= res!1640449 (not (isEmpty!25765 rules!2999)))))

(declare-fun b!4030028 () Bool)

(declare-fun e!2500538 () Bool)

(declare-fun tp!1224913 () Bool)

(declare-fun inv!21 (TokenValue!7134) Bool)

(assert (=> b!4030028 (= e!2500538 (and (inv!21 (value!217398 token!484)) e!2500540 tp!1224913))))

(declare-fun b!4030029 () Bool)

(declare-fun res!1640446 () Bool)

(declare-fun e!2500541 () Bool)

(assert (=> b!4030029 (=> (not res!1640446) (not e!2500541))))

(declare-fun lt!1432578 () TokenValue!7134)

(assert (=> b!4030029 (= res!1640446 (= (value!217398 token!484) lt!1432578))))

(declare-fun res!1640441 () Bool)

(assert (=> start!379640 (=> (not res!1640441) (not e!2500529))))

(declare-datatypes ((LexerInterface!6493 0))(
  ( (LexerInterfaceExt!6490 (__x!26486 Int)) (Lexer!6491) )
))
(declare-fun thiss!21717 () LexerInterface!6493)

(get-info :version)

(assert (=> start!379640 (= res!1640441 ((_ is Lexer!6491) thiss!21717))))

(assert (=> start!379640 e!2500529))

(assert (=> start!379640 e!2500543))

(declare-fun inv!57679 (Token!12946) Bool)

(assert (=> start!379640 (and (inv!57679 token!484) e!2500538)))

(declare-fun e!2500552 () Bool)

(assert (=> start!379640 e!2500552))

(assert (=> start!379640 e!2500527))

(declare-fun e!2500548 () Bool)

(assert (=> start!379640 e!2500548))

(assert (=> start!379640 true))

(declare-fun e!2500539 () Bool)

(assert (=> start!379640 e!2500539))

(declare-fun e!2500531 () Bool)

(assert (=> start!379640 e!2500531))

(declare-fun lt!1432579 () Int)

(declare-fun b!4030030 () Bool)

(declare-fun lt!1432577 () List!43299)

(assert (=> b!4030030 (= e!2500541 (and (= (size!32269 token!484) lt!1432579) (= (originalCharacters!7504 token!484) lt!1432577)))))

(declare-fun e!2500535 () Bool)

(assert (=> b!4030031 (= e!2500535 (and tp!1224920 tp!1224917))))

(declare-fun b!4030032 () Bool)

(declare-fun e!2500546 () Bool)

(assert (=> b!4030032 (= e!2500529 e!2500546)))

(declare-fun res!1640445 () Bool)

(assert (=> b!4030032 (=> (not res!1640445) (not e!2500546))))

(declare-fun lt!1432575 () Int)

(assert (=> b!4030032 (= res!1640445 (>= lt!1432575 lt!1432579))))

(declare-fun size!32270 (List!43299) Int)

(assert (=> b!4030032 (= lt!1432579 (size!32270 lt!1432577))))

(declare-fun prefix!494 () List!43299)

(assert (=> b!4030032 (= lt!1432575 (size!32270 prefix!494))))

(declare-fun list!16062 (BalanceConc!25824) List!43299)

(declare-fun charsOf!4720 (Token!12946) BalanceConc!25824)

(assert (=> b!4030032 (= lt!1432577 (list!16062 (charsOf!4720 token!484)))))

(declare-fun b!4030033 () Bool)

(declare-fun e!2500528 () Bool)

(declare-fun tp!1224912 () Bool)

(assert (=> b!4030033 (= e!2500539 (and e!2500528 tp!1224912))))

(declare-fun b!4030034 () Bool)

(declare-fun res!1640447 () Bool)

(assert (=> b!4030034 (=> (not res!1640447) (not e!2500529))))

(declare-fun newSuffix!27 () List!43299)

(declare-fun suffix!1299 () List!43299)

(declare-fun isPrefix!3991 (List!43299 List!43299) Bool)

(assert (=> b!4030034 (= res!1640447 (isPrefix!3991 newSuffix!27 suffix!1299))))

(declare-fun b!4030035 () Bool)

(declare-fun tp!1224916 () Bool)

(assert (=> b!4030035 (= e!2500552 (and tp_is_empty!20589 tp!1224916))))

(declare-fun b!4030036 () Bool)

(declare-fun res!1640452 () Bool)

(assert (=> b!4030036 (=> (not res!1640452) (not e!2500541))))

(assert (=> b!4030036 (= res!1640452 (= (size!32269 token!484) (size!32270 (originalCharacters!7504 token!484))))))

(declare-fun b!4030037 () Bool)

(declare-fun e!2500537 () Bool)

(declare-fun e!2500547 () Bool)

(assert (=> b!4030037 (= e!2500537 e!2500547)))

(declare-fun res!1640448 () Bool)

(assert (=> b!4030037 (=> res!1640448 e!2500547)))

(declare-fun lt!1432561 () List!43299)

(assert (=> b!4030037 (= res!1640448 (not (isPrefix!3991 lt!1432577 lt!1432561)))))

(assert (=> b!4030037 (isPrefix!3991 prefix!494 lt!1432561)))

(declare-datatypes ((Unit!62338 0))(
  ( (Unit!62339) )
))
(declare-fun lt!1432580 () Unit!62338)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2826 (List!43299 List!43299) Unit!62338)

(assert (=> b!4030037 (= lt!1432580 (lemmaConcatTwoListThenFirstIsPrefix!2826 prefix!494 suffix!1299))))

(declare-fun lt!1432558 () List!43299)

(assert (=> b!4030037 (isPrefix!3991 lt!1432577 lt!1432558)))

(declare-fun lt!1432567 () Unit!62338)

(declare-fun suffixResult!105 () List!43299)

(assert (=> b!4030037 (= lt!1432567 (lemmaConcatTwoListThenFirstIsPrefix!2826 lt!1432577 suffixResult!105))))

(declare-fun b!4030038 () Bool)

(declare-fun tp!1224911 () Bool)

(assert (=> b!4030038 (= e!2500548 (and tp_is_empty!20589 tp!1224911))))

(declare-fun b!4030039 () Bool)

(declare-fun e!2500533 () Bool)

(assert (=> b!4030039 (= e!2500546 e!2500533)))

(declare-fun res!1640457 () Bool)

(assert (=> b!4030039 (=> (not res!1640457) (not e!2500533))))

(declare-fun lt!1432560 () List!43299)

(declare-fun lt!1432564 () List!43299)

(assert (=> b!4030039 (= res!1640457 (= lt!1432560 lt!1432564))))

(declare-fun ++!11306 (List!43299 List!43299) List!43299)

(assert (=> b!4030039 (= lt!1432564 (++!11306 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43299)

(assert (=> b!4030039 (= lt!1432560 (++!11306 lt!1432577 newSuffixResult!27))))

(declare-fun b!4030040 () Bool)

(declare-fun res!1640453 () Bool)

(assert (=> b!4030040 (=> (not res!1640453) (not e!2500529))))

(assert (=> b!4030040 (= res!1640453 (>= (size!32270 suffix!1299) (size!32270 newSuffix!27)))))

(declare-fun b!4030041 () Bool)

(declare-fun e!2500549 () Bool)

(declare-fun e!2500532 () Bool)

(assert (=> b!4030041 (= e!2500549 e!2500532)))

(declare-fun res!1640454 () Bool)

(assert (=> b!4030041 (=> res!1640454 e!2500532)))

(declare-datatypes ((tuple2!42262 0))(
  ( (tuple2!42263 (_1!24265 Token!12946) (_2!24265 List!43299)) )
))
(declare-datatypes ((Option!9318 0))(
  ( (None!9317) (Some!9317 (v!39705 tuple2!42262)) )
))
(declare-fun lt!1432573 () Option!9318)

(declare-fun lt!1432587 () Option!9318)

(assert (=> b!4030041 (= res!1640454 (not (= lt!1432573 lt!1432587)))))

(declare-fun lt!1432588 () Token!12946)

(assert (=> b!4030041 (= lt!1432573 (Some!9317 (tuple2!42263 lt!1432588 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2803 (LexerInterface!6493 Rule!13608 List!43299) Option!9318)

(assert (=> b!4030041 (= lt!1432573 (maxPrefixOneRule!2803 thiss!21717 (rule!9964 token!484) lt!1432561))))

(assert (=> b!4030041 (= lt!1432588 (Token!12947 lt!1432578 (rule!9964 token!484) lt!1432579 lt!1432577))))

(declare-fun apply!10093 (TokenValueInjection!13696 BalanceConc!25824) TokenValue!7134)

(declare-fun seqFromList!5121 (List!43299) BalanceConc!25824)

(assert (=> b!4030041 (= lt!1432578 (apply!10093 (transformation!6904 (rule!9964 token!484)) (seqFromList!5121 lt!1432577)))))

(declare-fun lt!1432589 () Unit!62338)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1609 (LexerInterface!6493 List!43301 List!43299 List!43299 List!43299 Rule!13608) Unit!62338)

(assert (=> b!4030041 (= lt!1432589 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1609 thiss!21717 rules!2999 lt!1432577 lt!1432561 suffixResult!105 (rule!9964 token!484)))))

(declare-fun lt!1432565 () List!43299)

(assert (=> b!4030041 (= lt!1432565 suffixResult!105)))

(declare-fun lt!1432563 () Unit!62338)

(declare-fun lemmaSamePrefixThenSameSuffix!2152 (List!43299 List!43299 List!43299 List!43299 List!43299) Unit!62338)

(assert (=> b!4030041 (= lt!1432563 (lemmaSamePrefixThenSameSuffix!2152 lt!1432577 lt!1432565 lt!1432577 suffixResult!105 lt!1432561))))

(declare-fun lt!1432584 () List!43299)

(assert (=> b!4030041 (isPrefix!3991 lt!1432577 lt!1432584)))

(declare-fun lt!1432582 () Unit!62338)

(assert (=> b!4030041 (= lt!1432582 (lemmaConcatTwoListThenFirstIsPrefix!2826 lt!1432577 lt!1432565))))

(declare-fun tp!1224919 () Bool)

(declare-fun b!4030042 () Bool)

(assert (=> b!4030042 (= e!2500528 (and tp!1224919 (inv!57675 (tag!7764 (h!48597 rules!2999))) (inv!57678 (transformation!6904 (h!48597 rules!2999))) e!2500535))))

(declare-fun b!4030043 () Bool)

(declare-fun e!2500550 () Bool)

(assert (=> b!4030043 (= e!2500550 e!2500549)))

(declare-fun res!1640444 () Bool)

(assert (=> b!4030043 (=> res!1640444 e!2500549)))

(declare-fun lt!1432562 () List!43299)

(assert (=> b!4030043 (= res!1640444 (or (not (= lt!1432561 lt!1432562)) (not (= lt!1432561 lt!1432584))))))

(assert (=> b!4030043 (= lt!1432562 lt!1432584)))

(assert (=> b!4030043 (= lt!1432584 (++!11306 lt!1432577 lt!1432565))))

(declare-fun lt!1432559 () List!43299)

(assert (=> b!4030043 (= lt!1432562 (++!11306 lt!1432559 suffix!1299))))

(declare-fun lt!1432576 () List!43299)

(assert (=> b!4030043 (= lt!1432565 (++!11306 lt!1432576 suffix!1299))))

(declare-fun lt!1432570 () Unit!62338)

(declare-fun lemmaConcatAssociativity!2608 (List!43299 List!43299 List!43299) Unit!62338)

(assert (=> b!4030043 (= lt!1432570 (lemmaConcatAssociativity!2608 lt!1432577 lt!1432576 suffix!1299))))

(declare-fun b!4030044 () Bool)

(declare-fun e!2500551 () Bool)

(assert (=> b!4030044 (= e!2500533 e!2500551)))

(declare-fun res!1640442 () Bool)

(assert (=> b!4030044 (=> (not res!1640442) (not e!2500551))))

(declare-fun maxPrefix!3791 (LexerInterface!6493 List!43301 List!43299) Option!9318)

(assert (=> b!4030044 (= res!1640442 (= (maxPrefix!3791 thiss!21717 rules!2999 lt!1432561) lt!1432587))))

(declare-fun lt!1432583 () tuple2!42262)

(assert (=> b!4030044 (= lt!1432587 (Some!9317 lt!1432583))))

(assert (=> b!4030044 (= lt!1432583 (tuple2!42263 token!484 suffixResult!105))))

(assert (=> b!4030044 (= lt!1432561 (++!11306 prefix!494 suffix!1299))))

(declare-fun b!4030045 () Bool)

(declare-fun tp!1224918 () Bool)

(assert (=> b!4030045 (= e!2500531 (and tp_is_empty!20589 tp!1224918))))

(declare-fun b!4030046 () Bool)

(assert (=> b!4030046 (= e!2500551 (not e!2500537))))

(declare-fun res!1640455 () Bool)

(assert (=> b!4030046 (=> res!1640455 e!2500537)))

(assert (=> b!4030046 (= res!1640455 (not (= lt!1432558 lt!1432561)))))

(assert (=> b!4030046 (= lt!1432558 (++!11306 lt!1432577 suffixResult!105))))

(declare-fun lt!1432568 () Unit!62338)

(declare-fun lemmaInv!1113 (TokenValueInjection!13696) Unit!62338)

(assert (=> b!4030046 (= lt!1432568 (lemmaInv!1113 (transformation!6904 (rule!9964 token!484))))))

(declare-fun ruleValid!2834 (LexerInterface!6493 Rule!13608) Bool)

(assert (=> b!4030046 (ruleValid!2834 thiss!21717 (rule!9964 token!484))))

(declare-fun lt!1432574 () Unit!62338)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1904 (LexerInterface!6493 Rule!13608 List!43301) Unit!62338)

(assert (=> b!4030046 (= lt!1432574 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1904 thiss!21717 (rule!9964 token!484) rules!2999))))

(declare-fun b!4030047 () Bool)

(declare-fun e!2500534 () Bool)

(assert (=> b!4030047 (= e!2500532 e!2500534)))

(declare-fun res!1640450 () Bool)

(assert (=> b!4030047 (=> res!1640450 e!2500534)))

(declare-fun matchR!5762 (Regex!11809 List!43299) Bool)

(assert (=> b!4030047 (= res!1640450 (not (matchR!5762 (regex!6904 (rule!9964 token!484)) lt!1432577)))))

(assert (=> b!4030047 (isPrefix!3991 lt!1432577 lt!1432564)))

(declare-fun lt!1432557 () Unit!62338)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!784 (List!43299 List!43299 List!43299) Unit!62338)

(assert (=> b!4030047 (= lt!1432557 (lemmaPrefixStaysPrefixWhenAddingToSuffix!784 lt!1432577 prefix!494 newSuffix!27))))

(declare-fun lt!1432586 () Unit!62338)

(assert (=> b!4030047 (= lt!1432586 (lemmaPrefixStaysPrefixWhenAddingToSuffix!784 lt!1432577 prefix!494 suffix!1299))))

(declare-fun b!4030048 () Bool)

(declare-fun res!1640456 () Bool)

(assert (=> b!4030048 (=> (not res!1640456) (not e!2500529))))

(declare-fun rulesInvariant!5836 (LexerInterface!6493 List!43301) Bool)

(assert (=> b!4030048 (= res!1640456 (rulesInvariant!5836 thiss!21717 rules!2999))))

(declare-fun e!2500536 () Bool)

(declare-fun lt!1432585 () List!43299)

(declare-fun b!4030049 () Bool)

(assert (=> b!4030049 (= e!2500536 (= lt!1432583 (tuple2!42263 lt!1432588 lt!1432585)))))

(assert (=> b!4030049 (= suffixResult!105 lt!1432585)))

(declare-fun lt!1432571 () Unit!62338)

(assert (=> b!4030049 (= lt!1432571 (lemmaSamePrefixThenSameSuffix!2152 lt!1432577 suffixResult!105 lt!1432577 lt!1432585 lt!1432561))))

(declare-fun lt!1432581 () List!43299)

(assert (=> b!4030049 (isPrefix!3991 lt!1432577 lt!1432581)))

(declare-fun lt!1432572 () Unit!62338)

(assert (=> b!4030049 (= lt!1432572 (lemmaConcatTwoListThenFirstIsPrefix!2826 lt!1432577 lt!1432585))))

(assert (=> b!4030050 (= e!2500530 (and tp!1224914 tp!1224921))))

(declare-fun b!4030051 () Bool)

(assert (=> b!4030051 (= e!2500547 e!2500550)))

(declare-fun res!1640451 () Bool)

(assert (=> b!4030051 (=> res!1640451 e!2500550)))

(assert (=> b!4030051 (= res!1640451 (not (= lt!1432559 prefix!494)))))

(assert (=> b!4030051 (= lt!1432559 (++!11306 lt!1432577 lt!1432576))))

(declare-fun getSuffix!2408 (List!43299 List!43299) List!43299)

(assert (=> b!4030051 (= lt!1432576 (getSuffix!2408 prefix!494 lt!1432577))))

(assert (=> b!4030051 (isPrefix!3991 lt!1432577 prefix!494)))

(declare-fun lt!1432569 () Unit!62338)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!555 (List!43299 List!43299 List!43299) Unit!62338)

(assert (=> b!4030051 (= lt!1432569 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!555 prefix!494 lt!1432577 lt!1432561))))

(declare-fun b!4030052 () Bool)

(assert (=> b!4030052 (= e!2500534 e!2500536)))

(declare-fun res!1640443 () Bool)

(assert (=> b!4030052 (=> res!1640443 e!2500536)))

(assert (=> b!4030052 (= res!1640443 (not (= lt!1432581 lt!1432561)))))

(assert (=> b!4030052 (= lt!1432581 (++!11306 lt!1432577 lt!1432585))))

(assert (=> b!4030052 (= lt!1432585 (getSuffix!2408 lt!1432561 lt!1432577))))

(assert (=> b!4030052 e!2500541))

(declare-fun res!1640440 () Bool)

(assert (=> b!4030052 (=> (not res!1640440) (not e!2500541))))

(assert (=> b!4030052 (= res!1640440 (isPrefix!3991 lt!1432561 lt!1432561))))

(declare-fun lt!1432566 () Unit!62338)

(declare-fun lemmaIsPrefixRefl!2558 (List!43299 List!43299) Unit!62338)

(assert (=> b!4030052 (= lt!1432566 (lemmaIsPrefixRefl!2558 lt!1432561 lt!1432561))))

(assert (= (and start!379640 res!1640441) b!4030027))

(assert (= (and b!4030027 res!1640449) b!4030048))

(assert (= (and b!4030048 res!1640456) b!4030040))

(assert (= (and b!4030040 res!1640453) b!4030034))

(assert (= (and b!4030034 res!1640447) b!4030032))

(assert (= (and b!4030032 res!1640445) b!4030039))

(assert (= (and b!4030039 res!1640457) b!4030044))

(assert (= (and b!4030044 res!1640442) b!4030046))

(assert (= (and b!4030046 (not res!1640455)) b!4030037))

(assert (= (and b!4030037 (not res!1640448)) b!4030051))

(assert (= (and b!4030051 (not res!1640451)) b!4030043))

(assert (= (and b!4030043 (not res!1640444)) b!4030041))

(assert (= (and b!4030041 (not res!1640454)) b!4030047))

(assert (= (and b!4030047 (not res!1640450)) b!4030052))

(assert (= (and b!4030052 res!1640440) b!4030029))

(assert (= (and b!4030029 res!1640446) b!4030036))

(assert (= (and b!4030036 res!1640452) b!4030030))

(assert (= (and b!4030052 (not res!1640443)) b!4030049))

(assert (= (and start!379640 ((_ is Cons!43175) prefix!494)) b!4030024))

(assert (= b!4030026 b!4030050))

(assert (= b!4030028 b!4030026))

(assert (= start!379640 b!4030028))

(assert (= (and start!379640 ((_ is Cons!43175) suffixResult!105)) b!4030035))

(assert (= (and start!379640 ((_ is Cons!43175) suffix!1299)) b!4030025))

(assert (= (and start!379640 ((_ is Cons!43175) newSuffix!27)) b!4030038))

(assert (= b!4030042 b!4030031))

(assert (= b!4030033 b!4030042))

(assert (= (and start!379640 ((_ is Cons!43177) rules!2999)) b!4030033))

(assert (= (and start!379640 ((_ is Cons!43175) newSuffixResult!27)) b!4030045))

(declare-fun m!4622039 () Bool)

(assert (=> b!4030034 m!4622039))

(declare-fun m!4622041 () Bool)

(assert (=> b!4030048 m!4622041))

(declare-fun m!4622043 () Bool)

(assert (=> b!4030042 m!4622043))

(declare-fun m!4622045 () Bool)

(assert (=> b!4030042 m!4622045))

(declare-fun m!4622047 () Bool)

(assert (=> b!4030044 m!4622047))

(declare-fun m!4622049 () Bool)

(assert (=> b!4030044 m!4622049))

(declare-fun m!4622051 () Bool)

(assert (=> b!4030039 m!4622051))

(declare-fun m!4622053 () Bool)

(assert (=> b!4030039 m!4622053))

(declare-fun m!4622055 () Bool)

(assert (=> b!4030028 m!4622055))

(declare-fun m!4622057 () Bool)

(assert (=> b!4030040 m!4622057))

(declare-fun m!4622059 () Bool)

(assert (=> b!4030040 m!4622059))

(declare-fun m!4622061 () Bool)

(assert (=> b!4030036 m!4622061))

(declare-fun m!4622063 () Bool)

(assert (=> b!4030047 m!4622063))

(declare-fun m!4622065 () Bool)

(assert (=> b!4030047 m!4622065))

(declare-fun m!4622067 () Bool)

(assert (=> b!4030047 m!4622067))

(declare-fun m!4622069 () Bool)

(assert (=> b!4030047 m!4622069))

(declare-fun m!4622071 () Bool)

(assert (=> start!379640 m!4622071))

(declare-fun m!4622073 () Bool)

(assert (=> b!4030037 m!4622073))

(declare-fun m!4622075 () Bool)

(assert (=> b!4030037 m!4622075))

(declare-fun m!4622077 () Bool)

(assert (=> b!4030037 m!4622077))

(declare-fun m!4622079 () Bool)

(assert (=> b!4030037 m!4622079))

(declare-fun m!4622081 () Bool)

(assert (=> b!4030037 m!4622081))

(declare-fun m!4622083 () Bool)

(assert (=> b!4030041 m!4622083))

(declare-fun m!4622085 () Bool)

(assert (=> b!4030041 m!4622085))

(assert (=> b!4030041 m!4622085))

(declare-fun m!4622087 () Bool)

(assert (=> b!4030041 m!4622087))

(declare-fun m!4622089 () Bool)

(assert (=> b!4030041 m!4622089))

(declare-fun m!4622091 () Bool)

(assert (=> b!4030041 m!4622091))

(declare-fun m!4622093 () Bool)

(assert (=> b!4030041 m!4622093))

(declare-fun m!4622095 () Bool)

(assert (=> b!4030041 m!4622095))

(declare-fun m!4622097 () Bool)

(assert (=> b!4030027 m!4622097))

(declare-fun m!4622099 () Bool)

(assert (=> b!4030049 m!4622099))

(declare-fun m!4622101 () Bool)

(assert (=> b!4030049 m!4622101))

(declare-fun m!4622103 () Bool)

(assert (=> b!4030049 m!4622103))

(declare-fun m!4622105 () Bool)

(assert (=> b!4030052 m!4622105))

(declare-fun m!4622107 () Bool)

(assert (=> b!4030052 m!4622107))

(declare-fun m!4622109 () Bool)

(assert (=> b!4030052 m!4622109))

(declare-fun m!4622111 () Bool)

(assert (=> b!4030052 m!4622111))

(declare-fun m!4622113 () Bool)

(assert (=> b!4030046 m!4622113))

(declare-fun m!4622115 () Bool)

(assert (=> b!4030046 m!4622115))

(declare-fun m!4622117 () Bool)

(assert (=> b!4030046 m!4622117))

(declare-fun m!4622119 () Bool)

(assert (=> b!4030046 m!4622119))

(declare-fun m!4622121 () Bool)

(assert (=> b!4030032 m!4622121))

(declare-fun m!4622123 () Bool)

(assert (=> b!4030032 m!4622123))

(declare-fun m!4622125 () Bool)

(assert (=> b!4030032 m!4622125))

(assert (=> b!4030032 m!4622125))

(declare-fun m!4622127 () Bool)

(assert (=> b!4030032 m!4622127))

(declare-fun m!4622129 () Bool)

(assert (=> b!4030051 m!4622129))

(declare-fun m!4622131 () Bool)

(assert (=> b!4030051 m!4622131))

(declare-fun m!4622133 () Bool)

(assert (=> b!4030051 m!4622133))

(declare-fun m!4622135 () Bool)

(assert (=> b!4030051 m!4622135))

(declare-fun m!4622137 () Bool)

(assert (=> b!4030026 m!4622137))

(declare-fun m!4622139 () Bool)

(assert (=> b!4030026 m!4622139))

(declare-fun m!4622141 () Bool)

(assert (=> b!4030043 m!4622141))

(declare-fun m!4622143 () Bool)

(assert (=> b!4030043 m!4622143))

(declare-fun m!4622145 () Bool)

(assert (=> b!4030043 m!4622145))

(declare-fun m!4622147 () Bool)

(assert (=> b!4030043 m!4622147))

(check-sat b_and!309687 (not b!4030037) b_and!309689 (not b_next!113005) (not b!4030038) b_and!309693 (not b!4030045) (not b!4030044) (not b!4030034) b_and!309691 (not b!4030047) (not b!4030036) (not b_next!113001) (not b!4030046) (not b!4030049) (not b!4030024) (not b!4030032) (not start!379640) (not b!4030051) tp_is_empty!20589 (not b!4030052) (not b!4030035) (not b_next!113007) (not b_next!113003) (not b!4030048) (not b!4030042) (not b!4030026) (not b!4030041) (not b!4030033) (not b!4030025) (not b!4030043) (not b!4030040) (not b!4030039) (not b!4030028) (not b!4030027))
(check-sat b_and!309691 (not b_next!113001) b_and!309687 b_and!309689 (not b_next!113005) b_and!309693 (not b_next!113007) (not b_next!113003))
