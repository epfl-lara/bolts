; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!400610 () Bool)

(assert start!400610)

(declare-fun b!4195541 () Bool)

(declare-fun b_free!122231 () Bool)

(declare-fun b_next!122935 () Bool)

(assert (=> b!4195541 (= b_free!122231 (not b_next!122935))))

(declare-fun tp!1281753 () Bool)

(declare-fun b_and!329045 () Bool)

(assert (=> b!4195541 (= tp!1281753 b_and!329045)))

(declare-fun b_free!122233 () Bool)

(declare-fun b_next!122937 () Bool)

(assert (=> b!4195541 (= b_free!122233 (not b_next!122937))))

(declare-fun tp!1281749 () Bool)

(declare-fun b_and!329047 () Bool)

(assert (=> b!4195541 (= tp!1281749 b_and!329047)))

(declare-fun b!4195552 () Bool)

(declare-fun b_free!122235 () Bool)

(declare-fun b_next!122939 () Bool)

(assert (=> b!4195552 (= b_free!122235 (not b_next!122939))))

(declare-fun tp!1281746 () Bool)

(declare-fun b_and!329049 () Bool)

(assert (=> b!4195552 (= tp!1281746 b_and!329049)))

(declare-fun b_free!122237 () Bool)

(declare-fun b_next!122941 () Bool)

(assert (=> b!4195552 (= b_free!122237 (not b_next!122941))))

(declare-fun tp!1281747 () Bool)

(declare-fun b_and!329051 () Bool)

(assert (=> b!4195552 (= tp!1281747 b_and!329051)))

(declare-fun b!4195528 () Bool)

(declare-fun b_free!122239 () Bool)

(declare-fun b_next!122943 () Bool)

(assert (=> b!4195528 (= b_free!122239 (not b_next!122943))))

(declare-fun tp!1281748 () Bool)

(declare-fun b_and!329053 () Bool)

(assert (=> b!4195528 (= tp!1281748 b_and!329053)))

(declare-fun b_free!122241 () Bool)

(declare-fun b_next!122945 () Bool)

(assert (=> b!4195528 (= b_free!122241 (not b_next!122945))))

(declare-fun tp!1281750 () Bool)

(declare-fun b_and!329055 () Bool)

(assert (=> b!4195528 (= tp!1281750 b_and!329055)))

(declare-fun e!2604343 () Bool)

(declare-fun tp!1281757 () Bool)

(declare-fun b!4195527 () Bool)

(declare-datatypes ((List!46201 0))(
  ( (Nil!46077) (Cons!46077 (h!51497 (_ BitVec 16)) (t!346464 List!46201)) )
))
(declare-datatypes ((TokenValue!7916 0))(
  ( (FloatLiteralValue!15832 (text!55857 List!46201)) (TokenValueExt!7915 (__x!28053 Int)) (Broken!39580 (value!239557 List!46201)) (Object!8039) (End!7916) (Def!7916) (Underscore!7916) (Match!7916) (Else!7916) (Error!7916) (Case!7916) (If!7916) (Extends!7916) (Abstract!7916) (Class!7916) (Val!7916) (DelimiterValue!15832 (del!7976 List!46201)) (KeywordValue!7922 (value!239558 List!46201)) (CommentValue!15832 (value!239559 List!46201)) (WhitespaceValue!15832 (value!239560 List!46201)) (IndentationValue!7916 (value!239561 List!46201)) (String!53445) (Int32!7916) (Broken!39581 (value!239562 List!46201)) (Boolean!7917) (Unit!65170) (OperatorValue!7919 (op!7976 List!46201)) (IdentifierValue!15832 (value!239563 List!46201)) (IdentifierValue!15833 (value!239564 List!46201)) (WhitespaceValue!15833 (value!239565 List!46201)) (True!15832) (False!15832) (Broken!39582 (value!239566 List!46201)) (Broken!39583 (value!239567 List!46201)) (True!15833) (RightBrace!7916) (RightBracket!7916) (Colon!7916) (Null!7916) (Comma!7916) (LeftBracket!7916) (False!15833) (LeftBrace!7916) (ImaginaryLiteralValue!7916 (text!55858 List!46201)) (StringLiteralValue!23748 (value!239568 List!46201)) (EOFValue!7916 (value!239569 List!46201)) (IdentValue!7916 (value!239570 List!46201)) (DelimiterValue!15833 (value!239571 List!46201)) (DedentValue!7916 (value!239572 List!46201)) (NewLineValue!7916 (value!239573 List!46201)) (IntegerValue!23748 (value!239574 (_ BitVec 32)) (text!55859 List!46201)) (IntegerValue!23749 (value!239575 Int) (text!55860 List!46201)) (Times!7916) (Or!7916) (Equal!7916) (Minus!7916) (Broken!39584 (value!239576 List!46201)) (And!7916) (Div!7916) (LessEqual!7916) (Mod!7916) (Concat!20507) (Not!7916) (Plus!7916) (SpaceValue!7916 (value!239577 List!46201)) (IntegerValue!23750 (value!239578 Int) (text!55861 List!46201)) (StringLiteralValue!23749 (text!55862 List!46201)) (FloatLiteralValue!15833 (text!55863 List!46201)) (BytesLiteralValue!7916 (value!239579 List!46201)) (CommentValue!15833 (value!239580 List!46201)) (StringLiteralValue!23750 (value!239581 List!46201)) (ErrorTokenValue!7916 (msg!7977 List!46201)) )
))
(declare-datatypes ((C!25372 0))(
  ( (C!25373 (val!14848 Int)) )
))
(declare-datatypes ((List!46202 0))(
  ( (Nil!46078) (Cons!46078 (h!51498 C!25372) (t!346465 List!46202)) )
))
(declare-datatypes ((IArray!27799 0))(
  ( (IArray!27800 (innerList!13957 List!46202)) )
))
(declare-datatypes ((Conc!13897 0))(
  ( (Node!13897 (left!34326 Conc!13897) (right!34656 Conc!13897) (csize!28024 Int) (cheight!14108 Int)) (Leaf!21483 (xs!17203 IArray!27799) (csize!28025 Int)) (Empty!13897) )
))
(declare-datatypes ((BalanceConc!27388 0))(
  ( (BalanceConc!27389 (c!715706 Conc!13897)) )
))
(declare-datatypes ((Regex!12591 0))(
  ( (ElementMatch!12591 (c!715707 C!25372)) (Concat!20508 (regOne!25694 Regex!12591) (regTwo!25694 Regex!12591)) (EmptyExpr!12591) (Star!12591 (reg!12920 Regex!12591)) (EmptyLang!12591) (Union!12591 (regOne!25695 Regex!12591) (regTwo!25695 Regex!12591)) )
))
(declare-datatypes ((String!53446 0))(
  ( (String!53447 (value!239582 String)) )
))
(declare-datatypes ((TokenValueInjection!15260 0))(
  ( (TokenValueInjection!15261 (toValue!10386 Int) (toChars!10245 Int)) )
))
(declare-datatypes ((Rule!15172 0))(
  ( (Rule!15173 (regex!7686 Regex!12591) (tag!8550 String!53446) (isSeparator!7686 Bool) (transformation!7686 TokenValueInjection!15260)) )
))
(declare-fun rBis!167 () Rule!15172)

(declare-fun e!2604357 () Bool)

(declare-fun inv!60635 (String!53446) Bool)

(declare-fun inv!60637 (TokenValueInjection!15260) Bool)

(assert (=> b!4195527 (= e!2604357 (and tp!1281757 (inv!60635 (tag!8550 rBis!167)) (inv!60637 (transformation!7686 rBis!167)) e!2604343))))

(declare-fun e!2604348 () Bool)

(assert (=> b!4195528 (= e!2604348 (and tp!1281748 tp!1281750))))

(declare-fun b!4195529 () Bool)

(declare-fun e!2604359 () Bool)

(declare-fun tp_is_empty!22145 () Bool)

(declare-fun tp!1281752 () Bool)

(assert (=> b!4195529 (= e!2604359 (and tp_is_empty!22145 tp!1281752))))

(declare-fun b!4195530 () Bool)

(declare-fun e!2604353 () Bool)

(declare-fun e!2604361 () Bool)

(assert (=> b!4195530 (= e!2604353 e!2604361)))

(declare-fun res!1722314 () Bool)

(assert (=> b!4195530 (=> res!1722314 e!2604361)))

(declare-fun lt!1494531 () List!46202)

(declare-fun pBis!107 () List!46202)

(assert (=> b!4195530 (= res!1722314 (= lt!1494531 pBis!107))))

(declare-datatypes ((Token!14086 0))(
  ( (Token!14087 (value!239583 TokenValue!7916) (rule!10778 Rule!15172) (size!33865 Int) (originalCharacters!8074 List!46202)) )
))
(declare-datatypes ((tuple2!43870 0))(
  ( (tuple2!43871 (_1!25069 Token!14086) (_2!25069 List!46202)) )
))
(declare-fun lt!1494544 () tuple2!43870)

(declare-fun isPrefix!4543 (List!46202 List!46202) Bool)

(declare-fun ++!11758 (List!46202 List!46202) List!46202)

(assert (=> b!4195530 (isPrefix!4543 lt!1494531 (++!11758 lt!1494531 (_2!25069 lt!1494544)))))

(declare-datatypes ((Unit!65171 0))(
  ( (Unit!65172) )
))
(declare-fun lt!1494546 () Unit!65171)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3040 (List!46202 List!46202) Unit!65171)

(assert (=> b!4195530 (= lt!1494546 (lemmaConcatTwoListThenFirstIsPrefix!3040 lt!1494531 (_2!25069 lt!1494544)))))

(declare-fun lt!1494536 () BalanceConc!27388)

(declare-fun list!16656 (BalanceConc!27388) List!46202)

(assert (=> b!4195530 (= lt!1494531 (list!16656 lt!1494536))))

(declare-fun charsOf!5121 (Token!14086) BalanceConc!27388)

(assert (=> b!4195530 (= lt!1494536 (charsOf!5121 (_1!25069 lt!1494544)))))

(declare-datatypes ((Option!9880 0))(
  ( (None!9879) (Some!9879 (v!40719 tuple2!43870)) )
))
(declare-fun lt!1494542 () Option!9880)

(declare-fun get!14988 (Option!9880) tuple2!43870)

(assert (=> b!4195530 (= lt!1494544 (get!14988 lt!1494542))))

(declare-fun b!4195531 () Bool)

(declare-fun res!1722318 () Bool)

(declare-fun e!2604345 () Bool)

(assert (=> b!4195531 (=> res!1722318 e!2604345)))

(declare-datatypes ((LexerInterface!7279 0))(
  ( (LexerInterfaceExt!7276 (__x!28054 Int)) (Lexer!7277) )
))
(declare-fun thiss!25986 () LexerInterface!7279)

(declare-fun lt!1494540 () Option!9880)

(declare-datatypes ((List!46203 0))(
  ( (Nil!46079) (Cons!46079 (h!51499 Rule!15172) (t!346466 List!46203)) )
))
(declare-fun rules!3843 () List!46203)

(declare-fun input!3342 () List!46202)

(declare-fun maxPrefix!4327 (LexerInterface!7279 List!46203 List!46202) Option!9880)

(assert (=> b!4195531 (= res!1722318 (not (= (maxPrefix!4327 thiss!25986 rules!3843 input!3342) lt!1494540)))))

(declare-fun b!4195532 () Bool)

(declare-fun e!2604350 () Bool)

(declare-fun e!2604360 () Bool)

(declare-fun tp!1281755 () Bool)

(declare-fun r!4142 () Rule!15172)

(assert (=> b!4195532 (= e!2604350 (and tp!1281755 (inv!60635 (tag!8550 r!4142)) (inv!60637 (transformation!7686 r!4142)) e!2604360))))

(declare-fun b!4195533 () Bool)

(declare-fun res!1722327 () Bool)

(declare-fun e!2604349 () Bool)

(assert (=> b!4195533 (=> (not res!1722327) (not e!2604349))))

(declare-fun contains!9497 (List!46203 Rule!15172) Bool)

(assert (=> b!4195533 (= res!1722327 (contains!9497 rules!3843 rBis!167))))

(declare-fun b!4195534 () Bool)

(declare-fun res!1722324 () Bool)

(assert (=> b!4195534 (=> (not res!1722324) (not e!2604349))))

(assert (=> b!4195534 (= res!1722324 (isPrefix!4543 pBis!107 input!3342))))

(declare-fun b!4195535 () Bool)

(declare-fun e!2604358 () Bool)

(declare-fun e!2604344 () Bool)

(assert (=> b!4195535 (= e!2604358 e!2604344)))

(declare-fun res!1722317 () Bool)

(assert (=> b!4195535 (=> res!1722317 e!2604344)))

(declare-fun lt!1494535 () Int)

(declare-fun lt!1494538 () Int)

(assert (=> b!4195535 (= res!1722317 (>= lt!1494535 lt!1494538))))

(declare-fun lt!1494543 () Unit!65171)

(declare-fun e!2604362 () Unit!65171)

(assert (=> b!4195535 (= lt!1494543 e!2604362)))

(declare-fun c!715705 () Bool)

(declare-fun size!33866 (List!46202) Int)

(assert (=> b!4195535 (= c!715705 (= lt!1494535 (size!33866 lt!1494531)))))

(declare-fun b!4195536 () Bool)

(declare-fun res!1722316 () Bool)

(assert (=> b!4195536 (=> (not res!1722316) (not e!2604349))))

(declare-fun p!2959 () List!46202)

(declare-fun matchR!6330 (Regex!12591 List!46202) Bool)

(assert (=> b!4195536 (= res!1722316 (matchR!6330 (regex!7686 r!4142) p!2959))))

(declare-fun b!4195537 () Bool)

(declare-fun res!1722325 () Bool)

(assert (=> b!4195537 (=> (not res!1722325) (not e!2604349))))

(assert (=> b!4195537 (= res!1722325 (contains!9497 rules!3843 r!4142))))

(declare-fun res!1722328 () Bool)

(assert (=> start!400610 (=> (not res!1722328) (not e!2604349))))

(get-info :version)

(assert (=> start!400610 (= res!1722328 ((_ is Lexer!7277) thiss!25986))))

(assert (=> start!400610 e!2604349))

(assert (=> start!400610 true))

(assert (=> start!400610 e!2604357))

(assert (=> start!400610 e!2604350))

(declare-fun e!2604356 () Bool)

(assert (=> start!400610 e!2604356))

(declare-fun e!2604351 () Bool)

(assert (=> start!400610 e!2604351))

(declare-fun e!2604352 () Bool)

(assert (=> start!400610 e!2604352))

(assert (=> start!400610 e!2604359))

(declare-fun b!4195538 () Bool)

(declare-fun e!2604347 () Bool)

(declare-fun tp!1281751 () Bool)

(assert (=> b!4195538 (= e!2604356 (and e!2604347 tp!1281751))))

(declare-fun b!4195539 () Bool)

(declare-fun res!1722313 () Bool)

(assert (=> b!4195539 (=> (not res!1722313) (not e!2604349))))

(declare-fun isEmpty!27286 (List!46203) Bool)

(assert (=> b!4195539 (= res!1722313 (not (isEmpty!27286 rules!3843)))))

(declare-fun b!4195540 () Bool)

(assert (=> b!4195540 (= e!2604345 e!2604353)))

(declare-fun res!1722329 () Bool)

(assert (=> b!4195540 (=> res!1722329 e!2604353)))

(declare-fun isEmpty!27287 (Option!9880) Bool)

(assert (=> b!4195540 (= res!1722329 (isEmpty!27287 lt!1494542))))

(declare-fun maxPrefixOneRule!3288 (LexerInterface!7279 Rule!15172 List!46202) Option!9880)

(assert (=> b!4195540 (= lt!1494542 (maxPrefixOneRule!3288 thiss!25986 rBis!167 input!3342))))

(declare-fun lt!1494534 () Unit!65171)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2410 (LexerInterface!7279 Rule!15172 List!46203) Unit!65171)

(assert (=> b!4195540 (= lt!1494534 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2410 thiss!25986 rBis!167 rules!3843))))

(assert (=> b!4195540 (<= lt!1494535 (size!33866 input!3342))))

(declare-fun lt!1494539 () Unit!65171)

(declare-fun lemmaIsPrefixThenSmallerEqSize!573 (List!46202 List!46202) Unit!65171)

(assert (=> b!4195540 (= lt!1494539 (lemmaIsPrefixThenSmallerEqSize!573 pBis!107 input!3342))))

(assert (=> b!4195541 (= e!2604360 (and tp!1281753 tp!1281749))))

(declare-fun b!4195542 () Bool)

(assert (=> b!4195542 (= e!2604361 e!2604358)))

(declare-fun res!1722330 () Bool)

(assert (=> b!4195542 (=> res!1722330 e!2604358)))

(assert (=> b!4195542 (= res!1722330 (< lt!1494538 lt!1494535))))

(declare-fun size!33867 (BalanceConc!27388) Int)

(assert (=> b!4195542 (= lt!1494538 (size!33867 lt!1494536))))

(declare-fun b!4195543 () Bool)

(declare-fun e!2604354 () Bool)

(assert (=> b!4195543 (= e!2604354 e!2604345)))

(declare-fun res!1722321 () Bool)

(assert (=> b!4195543 (=> res!1722321 e!2604345)))

(declare-fun lt!1494537 () Int)

(assert (=> b!4195543 (= res!1722321 (<= lt!1494535 lt!1494537))))

(assert (=> b!4195543 (= lt!1494535 (size!33866 pBis!107))))

(declare-fun b!4195544 () Bool)

(declare-fun res!1722320 () Bool)

(assert (=> b!4195544 (=> (not res!1722320) (not e!2604349))))

(declare-fun rulesInvariant!6492 (LexerInterface!7279 List!46203) Bool)

(assert (=> b!4195544 (= res!1722320 (rulesInvariant!6492 thiss!25986 rules!3843))))

(declare-fun b!4195545 () Bool)

(assert (=> b!4195545 (= e!2604344 true)))

(declare-fun lt!1494533 () List!46202)

(declare-fun lt!1494545 () List!46202)

(assert (=> b!4195545 (= lt!1494533 (++!11758 p!2959 lt!1494545))))

(declare-fun b!4195546 () Bool)

(declare-fun Unit!65173 () Unit!65171)

(assert (=> b!4195546 (= e!2604362 Unit!65173)))

(declare-fun lt!1494547 () Unit!65171)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1007 (List!46202 List!46202 List!46202) Unit!65171)

(assert (=> b!4195546 (= lt!1494547 (lemmaIsPrefixSameLengthThenSameList!1007 pBis!107 lt!1494531 input!3342))))

(assert (=> b!4195546 false))

(declare-fun b!4195547 () Bool)

(declare-fun res!1722323 () Bool)

(assert (=> b!4195547 (=> (not res!1722323) (not e!2604349))))

(declare-fun validRegex!5708 (Regex!12591) Bool)

(assert (=> b!4195547 (= res!1722323 (validRegex!5708 (regex!7686 r!4142)))))

(declare-fun b!4195548 () Bool)

(declare-fun res!1722326 () Bool)

(assert (=> b!4195548 (=> res!1722326 e!2604345)))

(declare-fun ruleValid!3404 (LexerInterface!7279 Rule!15172) Bool)

(assert (=> b!4195548 (= res!1722326 (not (ruleValid!3404 thiss!25986 rBis!167)))))

(declare-fun b!4195549 () Bool)

(declare-fun tp!1281756 () Bool)

(assert (=> b!4195549 (= e!2604351 (and tp_is_empty!22145 tp!1281756))))

(declare-fun b!4195550 () Bool)

(declare-fun res!1722315 () Bool)

(assert (=> b!4195550 (=> (not res!1722315) (not e!2604349))))

(assert (=> b!4195550 (= res!1722315 (ruleValid!3404 thiss!25986 r!4142))))

(declare-fun b!4195551 () Bool)

(declare-fun res!1722319 () Bool)

(assert (=> b!4195551 (=> (not res!1722319) (not e!2604349))))

(assert (=> b!4195551 (= res!1722319 (isPrefix!4543 p!2959 input!3342))))

(assert (=> b!4195552 (= e!2604343 (and tp!1281746 tp!1281747))))

(declare-fun tp!1281758 () Bool)

(declare-fun b!4195553 () Bool)

(assert (=> b!4195553 (= e!2604347 (and tp!1281758 (inv!60635 (tag!8550 (h!51499 rules!3843))) (inv!60637 (transformation!7686 (h!51499 rules!3843))) e!2604348))))

(declare-fun b!4195554 () Bool)

(assert (=> b!4195554 (= e!2604349 (not e!2604354))))

(declare-fun res!1722322 () Bool)

(assert (=> b!4195554 (=> res!1722322 e!2604354)))

(assert (=> b!4195554 (= res!1722322 (not (= (maxPrefixOneRule!3288 thiss!25986 r!4142 input!3342) lt!1494540)))))

(declare-fun lt!1494548 () TokenValue!7916)

(assert (=> b!4195554 (= lt!1494540 (Some!9879 (tuple2!43871 (Token!14087 lt!1494548 r!4142 lt!1494537 p!2959) lt!1494545)))))

(declare-fun getSuffix!2836 (List!46202 List!46202) List!46202)

(assert (=> b!4195554 (= lt!1494545 (getSuffix!2836 input!3342 p!2959))))

(assert (=> b!4195554 (= lt!1494537 (size!33866 p!2959))))

(declare-fun lt!1494530 () BalanceConc!27388)

(declare-fun apply!10651 (TokenValueInjection!15260 BalanceConc!27388) TokenValue!7916)

(assert (=> b!4195554 (= lt!1494548 (apply!10651 (transformation!7686 r!4142) lt!1494530))))

(assert (=> b!4195554 (isPrefix!4543 input!3342 input!3342)))

(declare-fun lt!1494532 () Unit!65171)

(declare-fun lemmaIsPrefixRefl!2972 (List!46202 List!46202) Unit!65171)

(assert (=> b!4195554 (= lt!1494532 (lemmaIsPrefixRefl!2972 input!3342 input!3342))))

(declare-fun lt!1494541 () Unit!65171)

(declare-fun lemmaSemiInverse!2452 (TokenValueInjection!15260 BalanceConc!27388) Unit!65171)

(assert (=> b!4195554 (= lt!1494541 (lemmaSemiInverse!2452 (transformation!7686 r!4142) lt!1494530))))

(declare-fun seqFromList!5711 (List!46202) BalanceConc!27388)

(assert (=> b!4195554 (= lt!1494530 (seqFromList!5711 p!2959))))

(declare-fun b!4195555 () Bool)

(declare-fun Unit!65174 () Unit!65171)

(assert (=> b!4195555 (= e!2604362 Unit!65174)))

(declare-fun b!4195556 () Bool)

(declare-fun tp!1281754 () Bool)

(assert (=> b!4195556 (= e!2604352 (and tp_is_empty!22145 tp!1281754))))

(assert (= (and start!400610 res!1722328) b!4195551))

(assert (= (and b!4195551 res!1722319) b!4195534))

(assert (= (and b!4195534 res!1722324) b!4195539))

(assert (= (and b!4195539 res!1722313) b!4195544))

(assert (= (and b!4195544 res!1722320) b!4195537))

(assert (= (and b!4195537 res!1722325) b!4195533))

(assert (= (and b!4195533 res!1722327) b!4195547))

(assert (= (and b!4195547 res!1722323) b!4195536))

(assert (= (and b!4195536 res!1722316) b!4195550))

(assert (= (and b!4195550 res!1722315) b!4195554))

(assert (= (and b!4195554 (not res!1722322)) b!4195543))

(assert (= (and b!4195543 (not res!1722321)) b!4195548))

(assert (= (and b!4195548 (not res!1722326)) b!4195531))

(assert (= (and b!4195531 (not res!1722318)) b!4195540))

(assert (= (and b!4195540 (not res!1722329)) b!4195530))

(assert (= (and b!4195530 (not res!1722314)) b!4195542))

(assert (= (and b!4195542 (not res!1722330)) b!4195535))

(assert (= (and b!4195535 c!715705) b!4195546))

(assert (= (and b!4195535 (not c!715705)) b!4195555))

(assert (= (and b!4195535 (not res!1722317)) b!4195545))

(assert (= b!4195527 b!4195552))

(assert (= start!400610 b!4195527))

(assert (= b!4195532 b!4195541))

(assert (= start!400610 b!4195532))

(assert (= b!4195553 b!4195528))

(assert (= b!4195538 b!4195553))

(assert (= (and start!400610 ((_ is Cons!46079) rules!3843)) b!4195538))

(assert (= (and start!400610 ((_ is Cons!46078) input!3342)) b!4195549))

(assert (= (and start!400610 ((_ is Cons!46078) pBis!107)) b!4195556))

(assert (= (and start!400610 ((_ is Cons!46078) p!2959)) b!4195529))

(declare-fun m!4784409 () Bool)

(assert (=> b!4195544 m!4784409))

(declare-fun m!4784411 () Bool)

(assert (=> b!4195534 m!4784411))

(declare-fun m!4784413 () Bool)

(assert (=> b!4195554 m!4784413))

(declare-fun m!4784415 () Bool)

(assert (=> b!4195554 m!4784415))

(declare-fun m!4784417 () Bool)

(assert (=> b!4195554 m!4784417))

(declare-fun m!4784419 () Bool)

(assert (=> b!4195554 m!4784419))

(declare-fun m!4784421 () Bool)

(assert (=> b!4195554 m!4784421))

(declare-fun m!4784423 () Bool)

(assert (=> b!4195554 m!4784423))

(declare-fun m!4784425 () Bool)

(assert (=> b!4195554 m!4784425))

(declare-fun m!4784427 () Bool)

(assert (=> b!4195554 m!4784427))

(declare-fun m!4784429 () Bool)

(assert (=> b!4195548 m!4784429))

(declare-fun m!4784431 () Bool)

(assert (=> b!4195527 m!4784431))

(declare-fun m!4784433 () Bool)

(assert (=> b!4195527 m!4784433))

(declare-fun m!4784435 () Bool)

(assert (=> b!4195542 m!4784435))

(declare-fun m!4784437 () Bool)

(assert (=> b!4195550 m!4784437))

(declare-fun m!4784439 () Bool)

(assert (=> b!4195535 m!4784439))

(declare-fun m!4784441 () Bool)

(assert (=> b!4195546 m!4784441))

(declare-fun m!4784443 () Bool)

(assert (=> b!4195553 m!4784443))

(declare-fun m!4784445 () Bool)

(assert (=> b!4195553 m!4784445))

(declare-fun m!4784447 () Bool)

(assert (=> b!4195551 m!4784447))

(declare-fun m!4784449 () Bool)

(assert (=> b!4195532 m!4784449))

(declare-fun m!4784451 () Bool)

(assert (=> b!4195532 m!4784451))

(declare-fun m!4784453 () Bool)

(assert (=> b!4195543 m!4784453))

(declare-fun m!4784455 () Bool)

(assert (=> b!4195539 m!4784455))

(declare-fun m!4784457 () Bool)

(assert (=> b!4195540 m!4784457))

(declare-fun m!4784459 () Bool)

(assert (=> b!4195540 m!4784459))

(declare-fun m!4784461 () Bool)

(assert (=> b!4195540 m!4784461))

(declare-fun m!4784463 () Bool)

(assert (=> b!4195540 m!4784463))

(declare-fun m!4784465 () Bool)

(assert (=> b!4195540 m!4784465))

(declare-fun m!4784467 () Bool)

(assert (=> b!4195536 m!4784467))

(declare-fun m!4784469 () Bool)

(assert (=> b!4195530 m!4784469))

(declare-fun m!4784471 () Bool)

(assert (=> b!4195530 m!4784471))

(declare-fun m!4784473 () Bool)

(assert (=> b!4195530 m!4784473))

(declare-fun m!4784475 () Bool)

(assert (=> b!4195530 m!4784475))

(assert (=> b!4195530 m!4784475))

(declare-fun m!4784477 () Bool)

(assert (=> b!4195530 m!4784477))

(declare-fun m!4784479 () Bool)

(assert (=> b!4195530 m!4784479))

(declare-fun m!4784481 () Bool)

(assert (=> b!4195531 m!4784481))

(declare-fun m!4784483 () Bool)

(assert (=> b!4195533 m!4784483))

(declare-fun m!4784485 () Bool)

(assert (=> b!4195547 m!4784485))

(declare-fun m!4784487 () Bool)

(assert (=> b!4195537 m!4784487))

(declare-fun m!4784489 () Bool)

(assert (=> b!4195545 m!4784489))

(check-sat (not b!4195540) (not b!4195550) b_and!329049 b_and!329055 b_and!329047 (not b!4195527) (not b_next!122935) (not b!4195543) (not b!4195554) (not b!4195532) (not b!4195530) (not b!4195536) b_and!329045 b_and!329051 (not b!4195556) (not b!4195533) (not b!4195548) (not b!4195551) (not b!4195545) (not b!4195538) (not b!4195546) (not b!4195534) (not b!4195542) (not b!4195547) (not b_next!122943) (not b_next!122937) tp_is_empty!22145 (not b!4195544) (not b_next!122939) (not b_next!122941) (not b!4195535) (not b!4195539) (not b!4195549) (not b!4195529) (not b!4195531) b_and!329053 (not b!4195553) (not b!4195537) (not b_next!122945))
(check-sat b_and!329051 b_and!329049 (not b_next!122943) (not b_next!122937) b_and!329055 (not b_next!122939) b_and!329047 (not b_next!122935) (not b_next!122941) b_and!329053 (not b_next!122945) b_and!329045)
