; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!398242 () Bool)

(assert start!398242)

(declare-fun b!4177075 () Bool)

(declare-fun b_free!121231 () Bool)

(declare-fun b_next!121935 () Bool)

(assert (=> b!4177075 (= b_free!121231 (not b_next!121935))))

(declare-fun tp!1276530 () Bool)

(declare-fun b_and!326509 () Bool)

(assert (=> b!4177075 (= tp!1276530 b_and!326509)))

(declare-fun b_free!121233 () Bool)

(declare-fun b_next!121937 () Bool)

(assert (=> b!4177075 (= b_free!121233 (not b_next!121937))))

(declare-fun tp!1276526 () Bool)

(declare-fun b_and!326511 () Bool)

(assert (=> b!4177075 (= tp!1276526 b_and!326511)))

(declare-fun b!4177071 () Bool)

(declare-fun b_free!121235 () Bool)

(declare-fun b_next!121939 () Bool)

(assert (=> b!4177071 (= b_free!121235 (not b_next!121939))))

(declare-fun tp!1276529 () Bool)

(declare-fun b_and!326513 () Bool)

(assert (=> b!4177071 (= tp!1276529 b_and!326513)))

(declare-fun b_free!121237 () Bool)

(declare-fun b_next!121941 () Bool)

(assert (=> b!4177071 (= b_free!121237 (not b_next!121941))))

(declare-fun tp!1276520 () Bool)

(declare-fun b_and!326515 () Bool)

(assert (=> b!4177071 (= tp!1276520 b_and!326515)))

(declare-fun b!4177064 () Bool)

(declare-fun b_free!121239 () Bool)

(declare-fun b_next!121943 () Bool)

(assert (=> b!4177064 (= b_free!121239 (not b_next!121943))))

(declare-fun tp!1276523 () Bool)

(declare-fun b_and!326517 () Bool)

(assert (=> b!4177064 (= tp!1276523 b_and!326517)))

(declare-fun b_free!121241 () Bool)

(declare-fun b_next!121945 () Bool)

(assert (=> b!4177064 (= b_free!121241 (not b_next!121945))))

(declare-fun tp!1276521 () Bool)

(declare-fun b_and!326519 () Bool)

(assert (=> b!4177064 (= tp!1276521 b_and!326519)))

(declare-fun b!4177054 () Bool)

(declare-fun res!1712433 () Bool)

(declare-fun e!2593228 () Bool)

(assert (=> b!4177054 (=> (not res!1712433) (not e!2593228))))

(declare-datatypes ((List!45959 0))(
  ( (Nil!45835) (Cons!45835 (h!51255 (_ BitVec 16)) (t!344768 List!45959)) )
))
(declare-datatypes ((TokenValue!7848 0))(
  ( (FloatLiteralValue!15696 (text!55381 List!45959)) (TokenValueExt!7847 (__x!27917 Int)) (Broken!39240 (value!237619 List!45959)) (Object!7971) (End!7848) (Def!7848) (Underscore!7848) (Match!7848) (Else!7848) (Error!7848) (Case!7848) (If!7848) (Extends!7848) (Abstract!7848) (Class!7848) (Val!7848) (DelimiterValue!15696 (del!7908 List!45959)) (KeywordValue!7854 (value!237620 List!45959)) (CommentValue!15696 (value!237621 List!45959)) (WhitespaceValue!15696 (value!237622 List!45959)) (IndentationValue!7848 (value!237623 List!45959)) (String!53105) (Int32!7848) (Broken!39241 (value!237624 List!45959)) (Boolean!7849) (Unit!64904) (OperatorValue!7851 (op!7908 List!45959)) (IdentifierValue!15696 (value!237625 List!45959)) (IdentifierValue!15697 (value!237626 List!45959)) (WhitespaceValue!15697 (value!237627 List!45959)) (True!15696) (False!15696) (Broken!39242 (value!237628 List!45959)) (Broken!39243 (value!237629 List!45959)) (True!15697) (RightBrace!7848) (RightBracket!7848) (Colon!7848) (Null!7848) (Comma!7848) (LeftBracket!7848) (False!15697) (LeftBrace!7848) (ImaginaryLiteralValue!7848 (text!55382 List!45959)) (StringLiteralValue!23544 (value!237630 List!45959)) (EOFValue!7848 (value!237631 List!45959)) (IdentValue!7848 (value!237632 List!45959)) (DelimiterValue!15697 (value!237633 List!45959)) (DedentValue!7848 (value!237634 List!45959)) (NewLineValue!7848 (value!237635 List!45959)) (IntegerValue!23544 (value!237636 (_ BitVec 32)) (text!55383 List!45959)) (IntegerValue!23545 (value!237637 Int) (text!55384 List!45959)) (Times!7848) (Or!7848) (Equal!7848) (Minus!7848) (Broken!39244 (value!237638 List!45959)) (And!7848) (Div!7848) (LessEqual!7848) (Mod!7848) (Concat!20371) (Not!7848) (Plus!7848) (SpaceValue!7848 (value!237639 List!45959)) (IntegerValue!23546 (value!237640 Int) (text!55385 List!45959)) (StringLiteralValue!23545 (text!55386 List!45959)) (FloatLiteralValue!15697 (text!55387 List!45959)) (BytesLiteralValue!7848 (value!237641 List!45959)) (CommentValue!15697 (value!237642 List!45959)) (StringLiteralValue!23546 (value!237643 List!45959)) (ErrorTokenValue!7848 (msg!7909 List!45959)) )
))
(declare-datatypes ((C!25236 0))(
  ( (C!25237 (val!14780 Int)) )
))
(declare-datatypes ((List!45960 0))(
  ( (Nil!45836) (Cons!45836 (h!51256 C!25236) (t!344769 List!45960)) )
))
(declare-datatypes ((IArray!27663 0))(
  ( (IArray!27664 (innerList!13889 List!45960)) )
))
(declare-datatypes ((Conc!13829 0))(
  ( (Node!13829 (left!34148 Conc!13829) (right!34478 Conc!13829) (csize!27888 Int) (cheight!14040 Int)) (Leaf!21381 (xs!17135 IArray!27663) (csize!27889 Int)) (Empty!13829) )
))
(declare-datatypes ((BalanceConc!27252 0))(
  ( (BalanceConc!27253 (c!713496 Conc!13829)) )
))
(declare-datatypes ((Regex!12523 0))(
  ( (ElementMatch!12523 (c!713497 C!25236)) (Concat!20372 (regOne!25558 Regex!12523) (regTwo!25558 Regex!12523)) (EmptyExpr!12523) (Star!12523 (reg!12852 Regex!12523)) (EmptyLang!12523) (Union!12523 (regOne!25559 Regex!12523) (regTwo!25559 Regex!12523)) )
))
(declare-datatypes ((String!53106 0))(
  ( (String!53107 (value!237644 String)) )
))
(declare-datatypes ((TokenValueInjection!15124 0))(
  ( (TokenValueInjection!15125 (toValue!10302 Int) (toChars!10161 Int)) )
))
(declare-datatypes ((Rule!15036 0))(
  ( (Rule!15037 (regex!7618 Regex!12523) (tag!8482 String!53106) (isSeparator!7618 Bool) (transformation!7618 TokenValueInjection!15124)) )
))
(declare-datatypes ((List!45961 0))(
  ( (Nil!45837) (Cons!45837 (h!51257 Rule!15036) (t!344770 List!45961)) )
))
(declare-fun rules!3843 () List!45961)

(declare-fun rBis!167 () Rule!15036)

(declare-fun contains!9421 (List!45961 Rule!15036) Bool)

(assert (=> b!4177054 (= res!1712433 (contains!9421 rules!3843 rBis!167))))

(declare-fun res!1712425 () Bool)

(assert (=> start!398242 (=> (not res!1712425) (not e!2593228))))

(declare-datatypes ((LexerInterface!7211 0))(
  ( (LexerInterfaceExt!7208 (__x!27918 Int)) (Lexer!7209) )
))
(declare-fun thiss!25986 () LexerInterface!7211)

(get-info :version)

(assert (=> start!398242 (= res!1712425 ((_ is Lexer!7209) thiss!25986))))

(assert (=> start!398242 e!2593228))

(assert (=> start!398242 true))

(declare-fun e!2593230 () Bool)

(assert (=> start!398242 e!2593230))

(declare-fun e!2593224 () Bool)

(assert (=> start!398242 e!2593224))

(declare-fun e!2593229 () Bool)

(assert (=> start!398242 e!2593229))

(declare-fun e!2593231 () Bool)

(assert (=> start!398242 e!2593231))

(declare-fun e!2593214 () Bool)

(assert (=> start!398242 e!2593214))

(declare-fun e!2593216 () Bool)

(assert (=> start!398242 e!2593216))

(declare-fun b!4177055 () Bool)

(declare-fun res!1712434 () Bool)

(assert (=> b!4177055 (=> (not res!1712434) (not e!2593228))))

(declare-fun r!4142 () Rule!15036)

(declare-fun ruleValid!3336 (LexerInterface!7211 Rule!15036) Bool)

(assert (=> b!4177055 (= res!1712434 (ruleValid!3336 thiss!25986 r!4142))))

(declare-fun b!4177056 () Bool)

(declare-fun tp!1276522 () Bool)

(declare-fun e!2593225 () Bool)

(declare-fun e!2593232 () Bool)

(declare-fun inv!60358 (String!53106) Bool)

(declare-fun inv!60360 (TokenValueInjection!15124) Bool)

(assert (=> b!4177056 (= e!2593225 (and tp!1276522 (inv!60358 (tag!8482 (h!51257 rules!3843))) (inv!60360 (transformation!7618 (h!51257 rules!3843))) e!2593232))))

(declare-fun b!4177057 () Bool)

(declare-fun tp_is_empty!22009 () Bool)

(declare-fun tp!1276527 () Bool)

(assert (=> b!4177057 (= e!2593214 (and tp_is_empty!22009 tp!1276527))))

(declare-fun tp!1276518 () Bool)

(declare-fun b!4177058 () Bool)

(declare-fun e!2593220 () Bool)

(assert (=> b!4177058 (= e!2593224 (and tp!1276518 (inv!60358 (tag!8482 r!4142)) (inv!60360 (transformation!7618 r!4142)) e!2593220))))

(declare-fun b!4177059 () Bool)

(declare-fun res!1712436 () Bool)

(assert (=> b!4177059 (=> (not res!1712436) (not e!2593228))))

(declare-fun validRegex!5640 (Regex!12523) Bool)

(assert (=> b!4177059 (= res!1712436 (validRegex!5640 (regex!7618 r!4142)))))

(declare-fun tp!1276524 () Bool)

(declare-fun e!2593215 () Bool)

(declare-fun b!4177060 () Bool)

(assert (=> b!4177060 (= e!2593230 (and tp!1276524 (inv!60358 (tag!8482 rBis!167)) (inv!60360 (transformation!7618 rBis!167)) e!2593215))))

(declare-fun b!4177061 () Bool)

(declare-datatypes ((Unit!64905 0))(
  ( (Unit!64906) )
))
(declare-fun e!2593218 () Unit!64905)

(declare-fun Unit!64907 () Unit!64905)

(assert (=> b!4177061 (= e!2593218 Unit!64907)))

(declare-fun b!4177062 () Bool)

(declare-fun res!1712429 () Bool)

(declare-fun e!2593221 () Bool)

(assert (=> b!4177062 (=> res!1712429 e!2593221)))

(declare-fun input!3342 () List!45960)

(declare-datatypes ((Token!13950 0))(
  ( (Token!13951 (value!237645 TokenValue!7848) (rule!10674 Rule!15036) (size!33650 Int) (originalCharacters!8006 List!45960)) )
))
(declare-datatypes ((tuple2!43666 0))(
  ( (tuple2!43667 (_1!24967 Token!13950) (_2!24967 List!45960)) )
))
(declare-datatypes ((Option!9814 0))(
  ( (None!9813) (Some!9813 (v!40615 tuple2!43666)) )
))
(declare-fun lt!1487560 () Option!9814)

(declare-fun maxPrefix!4263 (LexerInterface!7211 List!45961 List!45960) Option!9814)

(assert (=> b!4177062 (= res!1712429 (not (= (maxPrefix!4263 thiss!25986 rules!3843 input!3342) lt!1487560)))))

(declare-fun b!4177063 () Bool)

(declare-fun res!1712431 () Bool)

(assert (=> b!4177063 (=> (not res!1712431) (not e!2593228))))

(declare-fun p!2959 () List!45960)

(declare-fun matchR!6262 (Regex!12523 List!45960) Bool)

(assert (=> b!4177063 (= res!1712431 (matchR!6262 (regex!7618 r!4142) p!2959))))

(assert (=> b!4177064 (= e!2593220 (and tp!1276523 tp!1276521))))

(declare-fun b!4177065 () Bool)

(declare-fun e!2593217 () Bool)

(declare-fun e!2593219 () Bool)

(assert (=> b!4177065 (= e!2593217 e!2593219)))

(declare-fun res!1712420 () Bool)

(assert (=> b!4177065 (=> res!1712420 e!2593219)))

(declare-fun lt!1487555 () List!45960)

(declare-fun pBis!107 () List!45960)

(assert (=> b!4177065 (= res!1712420 (= lt!1487555 pBis!107))))

(declare-fun lt!1487549 () tuple2!43666)

(declare-fun isPrefix!4475 (List!45960 List!45960) Bool)

(declare-fun ++!11696 (List!45960 List!45960) List!45960)

(assert (=> b!4177065 (isPrefix!4475 lt!1487555 (++!11696 lt!1487555 (_2!24967 lt!1487549)))))

(declare-fun lt!1487551 () Unit!64905)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2982 (List!45960 List!45960) Unit!64905)

(assert (=> b!4177065 (= lt!1487551 (lemmaConcatTwoListThenFirstIsPrefix!2982 lt!1487555 (_2!24967 lt!1487549)))))

(declare-fun lt!1487548 () BalanceConc!27252)

(declare-fun list!16555 (BalanceConc!27252) List!45960)

(assert (=> b!4177065 (= lt!1487555 (list!16555 lt!1487548))))

(declare-fun charsOf!5059 (Token!13950) BalanceConc!27252)

(assert (=> b!4177065 (= lt!1487548 (charsOf!5059 (_1!24967 lt!1487549)))))

(declare-fun lt!1487559 () Option!9814)

(declare-fun get!14892 (Option!9814) tuple2!43666)

(assert (=> b!4177065 (= lt!1487549 (get!14892 lt!1487559))))

(declare-fun b!4177066 () Bool)

(declare-fun e!2593227 () Bool)

(assert (=> b!4177066 (= e!2593227 e!2593221)))

(declare-fun res!1712427 () Bool)

(assert (=> b!4177066 (=> res!1712427 e!2593221)))

(declare-fun lt!1487554 () Int)

(declare-fun lt!1487547 () Int)

(assert (=> b!4177066 (= res!1712427 (<= lt!1487554 lt!1487547))))

(declare-fun size!33651 (List!45960) Int)

(assert (=> b!4177066 (= lt!1487554 (size!33651 pBis!107))))

(declare-fun b!4177067 () Bool)

(declare-fun tp!1276519 () Bool)

(assert (=> b!4177067 (= e!2593229 (and e!2593225 tp!1276519))))

(declare-fun b!4177068 () Bool)

(declare-fun res!1712424 () Bool)

(assert (=> b!4177068 (=> (not res!1712424) (not e!2593228))))

(assert (=> b!4177068 (= res!1712424 (isPrefix!4475 p!2959 input!3342))))

(declare-fun b!4177069 () Bool)

(declare-fun res!1712430 () Bool)

(assert (=> b!4177069 (=> (not res!1712430) (not e!2593228))))

(declare-fun rulesInvariant!6424 (LexerInterface!7211 List!45961) Bool)

(assert (=> b!4177069 (= res!1712430 (rulesInvariant!6424 thiss!25986 rules!3843))))

(declare-fun b!4177070 () Bool)

(declare-fun res!1712423 () Bool)

(assert (=> b!4177070 (=> (not res!1712423) (not e!2593228))))

(assert (=> b!4177070 (= res!1712423 (isPrefix!4475 pBis!107 input!3342))))

(assert (=> b!4177071 (= e!2593215 (and tp!1276529 tp!1276520))))

(declare-fun b!4177072 () Bool)

(declare-fun res!1712432 () Bool)

(assert (=> b!4177072 (=> (not res!1712432) (not e!2593228))))

(assert (=> b!4177072 (= res!1712432 (contains!9421 rules!3843 r!4142))))

(declare-fun b!4177073 () Bool)

(declare-fun tp!1276525 () Bool)

(assert (=> b!4177073 (= e!2593231 (and tp_is_empty!22009 tp!1276525))))

(declare-fun b!4177074 () Bool)

(declare-fun tp!1276528 () Bool)

(assert (=> b!4177074 (= e!2593216 (and tp_is_empty!22009 tp!1276528))))

(assert (=> b!4177075 (= e!2593232 (and tp!1276530 tp!1276526))))

(declare-fun b!4177076 () Bool)

(assert (=> b!4177076 (= e!2593228 (not e!2593227))))

(declare-fun res!1712435 () Bool)

(assert (=> b!4177076 (=> res!1712435 e!2593227)))

(declare-fun maxPrefixOneRule!3222 (LexerInterface!7211 Rule!15036 List!45960) Option!9814)

(assert (=> b!4177076 (= res!1712435 (not (= (maxPrefixOneRule!3222 thiss!25986 r!4142 input!3342) lt!1487560)))))

(declare-fun lt!1487558 () TokenValue!7848)

(declare-fun getSuffix!2770 (List!45960 List!45960) List!45960)

(assert (=> b!4177076 (= lt!1487560 (Some!9813 (tuple2!43667 (Token!13951 lt!1487558 r!4142 lt!1487547 p!2959) (getSuffix!2770 input!3342 p!2959))))))

(assert (=> b!4177076 (= lt!1487547 (size!33651 p!2959))))

(declare-fun lt!1487550 () BalanceConc!27252)

(declare-fun apply!10583 (TokenValueInjection!15124 BalanceConc!27252) TokenValue!7848)

(assert (=> b!4177076 (= lt!1487558 (apply!10583 (transformation!7618 r!4142) lt!1487550))))

(assert (=> b!4177076 (isPrefix!4475 input!3342 input!3342)))

(declare-fun lt!1487556 () Unit!64905)

(declare-fun lemmaIsPrefixRefl!2904 (List!45960 List!45960) Unit!64905)

(assert (=> b!4177076 (= lt!1487556 (lemmaIsPrefixRefl!2904 input!3342 input!3342))))

(declare-fun lt!1487557 () Unit!64905)

(declare-fun lemmaSemiInverse!2384 (TokenValueInjection!15124 BalanceConc!27252) Unit!64905)

(assert (=> b!4177076 (= lt!1487557 (lemmaSemiInverse!2384 (transformation!7618 r!4142) lt!1487550))))

(declare-fun seqFromList!5643 (List!45960) BalanceConc!27252)

(assert (=> b!4177076 (= lt!1487550 (seqFromList!5643 p!2959))))

(declare-fun b!4177077 () Bool)

(declare-fun res!1712426 () Bool)

(assert (=> b!4177077 (=> (not res!1712426) (not e!2593228))))

(declare-fun isEmpty!27116 (List!45961) Bool)

(assert (=> b!4177077 (= res!1712426 (not (isEmpty!27116 rules!3843)))))

(declare-fun b!4177078 () Bool)

(declare-fun Unit!64908 () Unit!64905)

(assert (=> b!4177078 (= e!2593218 Unit!64908)))

(declare-fun lt!1487562 () Unit!64905)

(declare-fun lemmaIsPrefixSameLengthThenSameList!985 (List!45960 List!45960 List!45960) Unit!64905)

(assert (=> b!4177078 (= lt!1487562 (lemmaIsPrefixSameLengthThenSameList!985 pBis!107 lt!1487555 input!3342))))

(assert (=> b!4177078 false))

(declare-fun b!4177079 () Bool)

(declare-fun res!1712421 () Bool)

(assert (=> b!4177079 (=> res!1712421 e!2593219)))

(declare-fun size!33652 (BalanceConc!27252) Int)

(assert (=> b!4177079 (= res!1712421 (< (size!33652 lt!1487548) lt!1487554))))

(declare-fun b!4177080 () Bool)

(assert (=> b!4177080 (= e!2593221 e!2593217)))

(declare-fun res!1712428 () Bool)

(assert (=> b!4177080 (=> res!1712428 e!2593217)))

(declare-fun isEmpty!27117 (Option!9814) Bool)

(assert (=> b!4177080 (= res!1712428 (isEmpty!27117 lt!1487559))))

(assert (=> b!4177080 (= lt!1487559 (maxPrefixOneRule!3222 thiss!25986 rBis!167 input!3342))))

(declare-fun lt!1487553 () Unit!64905)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2350 (LexerInterface!7211 Rule!15036 List!45961) Unit!64905)

(assert (=> b!4177080 (= lt!1487553 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2350 thiss!25986 rBis!167 rules!3843))))

(assert (=> b!4177080 (<= lt!1487554 (size!33651 input!3342))))

(declare-fun lt!1487561 () Unit!64905)

(declare-fun lemmaIsPrefixThenSmallerEqSize!507 (List!45960 List!45960) Unit!64905)

(assert (=> b!4177080 (= lt!1487561 (lemmaIsPrefixThenSmallerEqSize!507 pBis!107 input!3342))))

(declare-fun b!4177081 () Bool)

(assert (=> b!4177081 (= e!2593219 true)))

(declare-fun lt!1487552 () Unit!64905)

(assert (=> b!4177081 (= lt!1487552 e!2593218)))

(declare-fun c!713495 () Bool)

(assert (=> b!4177081 (= c!713495 (= lt!1487554 (size!33651 lt!1487555)))))

(declare-fun b!4177082 () Bool)

(declare-fun res!1712422 () Bool)

(assert (=> b!4177082 (=> res!1712422 e!2593221)))

(assert (=> b!4177082 (= res!1712422 (not (ruleValid!3336 thiss!25986 rBis!167)))))

(assert (= (and start!398242 res!1712425) b!4177068))

(assert (= (and b!4177068 res!1712424) b!4177070))

(assert (= (and b!4177070 res!1712423) b!4177077))

(assert (= (and b!4177077 res!1712426) b!4177069))

(assert (= (and b!4177069 res!1712430) b!4177072))

(assert (= (and b!4177072 res!1712432) b!4177054))

(assert (= (and b!4177054 res!1712433) b!4177059))

(assert (= (and b!4177059 res!1712436) b!4177063))

(assert (= (and b!4177063 res!1712431) b!4177055))

(assert (= (and b!4177055 res!1712434) b!4177076))

(assert (= (and b!4177076 (not res!1712435)) b!4177066))

(assert (= (and b!4177066 (not res!1712427)) b!4177082))

(assert (= (and b!4177082 (not res!1712422)) b!4177062))

(assert (= (and b!4177062 (not res!1712429)) b!4177080))

(assert (= (and b!4177080 (not res!1712428)) b!4177065))

(assert (= (and b!4177065 (not res!1712420)) b!4177079))

(assert (= (and b!4177079 (not res!1712421)) b!4177081))

(assert (= (and b!4177081 c!713495) b!4177078))

(assert (= (and b!4177081 (not c!713495)) b!4177061))

(assert (= b!4177060 b!4177071))

(assert (= start!398242 b!4177060))

(assert (= b!4177058 b!4177064))

(assert (= start!398242 b!4177058))

(assert (= b!4177056 b!4177075))

(assert (= b!4177067 b!4177056))

(assert (= (and start!398242 ((_ is Cons!45837) rules!3843)) b!4177067))

(assert (= (and start!398242 ((_ is Cons!45836) input!3342)) b!4177073))

(assert (= (and start!398242 ((_ is Cons!45836) pBis!107)) b!4177057))

(assert (= (and start!398242 ((_ is Cons!45836) p!2959)) b!4177074))

(declare-fun m!4766687 () Bool)

(assert (=> b!4177079 m!4766687))

(declare-fun m!4766689 () Bool)

(assert (=> b!4177076 m!4766689))

(declare-fun m!4766691 () Bool)

(assert (=> b!4177076 m!4766691))

(declare-fun m!4766693 () Bool)

(assert (=> b!4177076 m!4766693))

(declare-fun m!4766695 () Bool)

(assert (=> b!4177076 m!4766695))

(declare-fun m!4766697 () Bool)

(assert (=> b!4177076 m!4766697))

(declare-fun m!4766699 () Bool)

(assert (=> b!4177076 m!4766699))

(declare-fun m!4766701 () Bool)

(assert (=> b!4177076 m!4766701))

(declare-fun m!4766703 () Bool)

(assert (=> b!4177076 m!4766703))

(declare-fun m!4766705 () Bool)

(assert (=> b!4177069 m!4766705))

(declare-fun m!4766707 () Bool)

(assert (=> b!4177065 m!4766707))

(declare-fun m!4766709 () Bool)

(assert (=> b!4177065 m!4766709))

(declare-fun m!4766711 () Bool)

(assert (=> b!4177065 m!4766711))

(declare-fun m!4766713 () Bool)

(assert (=> b!4177065 m!4766713))

(declare-fun m!4766715 () Bool)

(assert (=> b!4177065 m!4766715))

(assert (=> b!4177065 m!4766711))

(declare-fun m!4766717 () Bool)

(assert (=> b!4177065 m!4766717))

(declare-fun m!4766719 () Bool)

(assert (=> b!4177056 m!4766719))

(declare-fun m!4766721 () Bool)

(assert (=> b!4177056 m!4766721))

(declare-fun m!4766723 () Bool)

(assert (=> b!4177081 m!4766723))

(declare-fun m!4766725 () Bool)

(assert (=> b!4177070 m!4766725))

(declare-fun m!4766727 () Bool)

(assert (=> b!4177078 m!4766727))

(declare-fun m!4766729 () Bool)

(assert (=> b!4177054 m!4766729))

(declare-fun m!4766731 () Bool)

(assert (=> b!4177077 m!4766731))

(declare-fun m!4766733 () Bool)

(assert (=> b!4177059 m!4766733))

(declare-fun m!4766735 () Bool)

(assert (=> b!4177068 m!4766735))

(declare-fun m!4766737 () Bool)

(assert (=> b!4177060 m!4766737))

(declare-fun m!4766739 () Bool)

(assert (=> b!4177060 m!4766739))

(declare-fun m!4766741 () Bool)

(assert (=> b!4177082 m!4766741))

(declare-fun m!4766743 () Bool)

(assert (=> b!4177063 m!4766743))

(declare-fun m!4766745 () Bool)

(assert (=> b!4177066 m!4766745))

(declare-fun m!4766747 () Bool)

(assert (=> b!4177055 m!4766747))

(declare-fun m!4766749 () Bool)

(assert (=> b!4177058 m!4766749))

(declare-fun m!4766751 () Bool)

(assert (=> b!4177058 m!4766751))

(declare-fun m!4766753 () Bool)

(assert (=> b!4177062 m!4766753))

(declare-fun m!4766755 () Bool)

(assert (=> b!4177072 m!4766755))

(declare-fun m!4766757 () Bool)

(assert (=> b!4177080 m!4766757))

(declare-fun m!4766759 () Bool)

(assert (=> b!4177080 m!4766759))

(declare-fun m!4766761 () Bool)

(assert (=> b!4177080 m!4766761))

(declare-fun m!4766763 () Bool)

(assert (=> b!4177080 m!4766763))

(declare-fun m!4766765 () Bool)

(assert (=> b!4177080 m!4766765))

(check-sat (not b!4177069) (not b!4177081) (not b!4177057) (not b!4177073) (not b_next!121937) (not b!4177062) (not b!4177079) (not b!4177076) b_and!326519 (not b_next!121939) b_and!326513 (not b!4177072) (not b!4177058) b_and!326515 b_and!326517 b_and!326509 b_and!326511 (not b_next!121945) tp_is_empty!22009 (not b!4177077) (not b!4177060) (not b!4177080) (not b!4177059) (not b!4177074) (not b!4177082) (not b!4177068) (not b!4177054) (not b!4177056) (not b!4177078) (not b!4177067) (not b!4177070) (not b_next!121943) (not b!4177065) (not b!4177063) (not b_next!121935) (not b_next!121941) (not b!4177055) (not b!4177066))
(check-sat (not b_next!121945) (not b_next!121937) (not b_next!121943) b_and!326519 (not b_next!121939) b_and!326513 b_and!326515 b_and!326517 b_and!326509 b_and!326511 (not b_next!121935) (not b_next!121941))
