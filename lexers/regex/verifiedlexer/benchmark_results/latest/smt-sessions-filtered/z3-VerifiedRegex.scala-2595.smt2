; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!138850 () Bool)

(assert start!138850)

(declare-fun b!1479418 () Bool)

(declare-fun b_free!38079 () Bool)

(declare-fun b_next!38783 () Bool)

(assert (=> b!1479418 (= b_free!38079 (not b_next!38783))))

(declare-fun tp!419315 () Bool)

(declare-fun b_and!102485 () Bool)

(assert (=> b!1479418 (= tp!419315 b_and!102485)))

(declare-fun b_free!38081 () Bool)

(declare-fun b_next!38785 () Bool)

(assert (=> b!1479418 (= b_free!38081 (not b_next!38785))))

(declare-fun tp!419307 () Bool)

(declare-fun b_and!102487 () Bool)

(assert (=> b!1479418 (= tp!419307 b_and!102487)))

(declare-fun b!1479405 () Bool)

(declare-fun b_free!38083 () Bool)

(declare-fun b_next!38787 () Bool)

(assert (=> b!1479405 (= b_free!38083 (not b_next!38787))))

(declare-fun tp!419303 () Bool)

(declare-fun b_and!102489 () Bool)

(assert (=> b!1479405 (= tp!419303 b_and!102489)))

(declare-fun b_free!38085 () Bool)

(declare-fun b_next!38789 () Bool)

(assert (=> b!1479405 (= b_free!38085 (not b_next!38789))))

(declare-fun tp!419305 () Bool)

(declare-fun b_and!102491 () Bool)

(assert (=> b!1479405 (= tp!419305 b_and!102491)))

(declare-fun b!1479420 () Bool)

(declare-fun b_free!38087 () Bool)

(declare-fun b_next!38791 () Bool)

(assert (=> b!1479420 (= b_free!38087 (not b_next!38791))))

(declare-fun tp!419311 () Bool)

(declare-fun b_and!102493 () Bool)

(assert (=> b!1479420 (= tp!419311 b_and!102493)))

(declare-fun b_free!38089 () Bool)

(declare-fun b_next!38793 () Bool)

(assert (=> b!1479420 (= b_free!38089 (not b_next!38793))))

(declare-fun tp!419306 () Bool)

(declare-fun b_and!102495 () Bool)

(assert (=> b!1479420 (= tp!419306 b_and!102495)))

(declare-fun b!1479401 () Bool)

(declare-fun res!668503 () Bool)

(declare-fun e!945642 () Bool)

(assert (=> b!1479401 (=> (not res!668503) (not e!945642))))

(declare-datatypes ((List!15706 0))(
  ( (Nil!15640) (Cons!15640 (h!21041 (_ BitVec 16)) (t!137075 List!15706)) )
))
(declare-datatypes ((String!18650 0))(
  ( (String!18651 (value!89108 String)) )
))
(declare-datatypes ((C!8384 0))(
  ( (C!8385 (val!4762 Int)) )
))
(declare-datatypes ((List!15707 0))(
  ( (Nil!15641) (Cons!15641 (h!21042 C!8384) (t!137076 List!15707)) )
))
(declare-datatypes ((Regex!4103 0))(
  ( (ElementMatch!4103 (c!242808 C!8384)) (Concat!6982 (regOne!8718 Regex!4103) (regTwo!8718 Regex!4103)) (EmptyExpr!4103) (Star!4103 (reg!4432 Regex!4103)) (EmptyLang!4103) (Union!4103 (regOne!8719 Regex!4103) (regTwo!8719 Regex!4103)) )
))
(declare-datatypes ((TokenValue!2879 0))(
  ( (FloatLiteralValue!5758 (text!20598 List!15706)) (TokenValueExt!2878 (__x!9548 Int)) (Broken!14395 (value!89109 List!15706)) (Object!2944) (End!2879) (Def!2879) (Underscore!2879) (Match!2879) (Else!2879) (Error!2879) (Case!2879) (If!2879) (Extends!2879) (Abstract!2879) (Class!2879) (Val!2879) (DelimiterValue!5758 (del!2939 List!15706)) (KeywordValue!2885 (value!89110 List!15706)) (CommentValue!5758 (value!89111 List!15706)) (WhitespaceValue!5758 (value!89112 List!15706)) (IndentationValue!2879 (value!89113 List!15706)) (String!18652) (Int32!2879) (Broken!14396 (value!89114 List!15706)) (Boolean!2880) (Unit!25435) (OperatorValue!2882 (op!2939 List!15706)) (IdentifierValue!5758 (value!89115 List!15706)) (IdentifierValue!5759 (value!89116 List!15706)) (WhitespaceValue!5759 (value!89117 List!15706)) (True!5758) (False!5758) (Broken!14397 (value!89118 List!15706)) (Broken!14398 (value!89119 List!15706)) (True!5759) (RightBrace!2879) (RightBracket!2879) (Colon!2879) (Null!2879) (Comma!2879) (LeftBracket!2879) (False!5759) (LeftBrace!2879) (ImaginaryLiteralValue!2879 (text!20599 List!15706)) (StringLiteralValue!8637 (value!89120 List!15706)) (EOFValue!2879 (value!89121 List!15706)) (IdentValue!2879 (value!89122 List!15706)) (DelimiterValue!5759 (value!89123 List!15706)) (DedentValue!2879 (value!89124 List!15706)) (NewLineValue!2879 (value!89125 List!15706)) (IntegerValue!8637 (value!89126 (_ BitVec 32)) (text!20600 List!15706)) (IntegerValue!8638 (value!89127 Int) (text!20601 List!15706)) (Times!2879) (Or!2879) (Equal!2879) (Minus!2879) (Broken!14399 (value!89128 List!15706)) (And!2879) (Div!2879) (LessEqual!2879) (Mod!2879) (Concat!6983) (Not!2879) (Plus!2879) (SpaceValue!2879 (value!89129 List!15706)) (IntegerValue!8639 (value!89130 Int) (text!20602 List!15706)) (StringLiteralValue!8638 (text!20603 List!15706)) (FloatLiteralValue!5759 (text!20604 List!15706)) (BytesLiteralValue!2879 (value!89131 List!15706)) (CommentValue!5759 (value!89132 List!15706)) (StringLiteralValue!8639 (value!89133 List!15706)) (ErrorTokenValue!2879 (msg!2940 List!15706)) )
))
(declare-datatypes ((IArray!10659 0))(
  ( (IArray!10660 (innerList!5387 List!15707)) )
))
(declare-datatypes ((Conc!5327 0))(
  ( (Node!5327 (left!13188 Conc!5327) (right!13518 Conc!5327) (csize!10884 Int) (cheight!5538 Int)) (Leaf!7923 (xs!8082 IArray!10659) (csize!10885 Int)) (Empty!5327) )
))
(declare-datatypes ((BalanceConc!10594 0))(
  ( (BalanceConc!10595 (c!242809 Conc!5327)) )
))
(declare-datatypes ((TokenValueInjection!5418 0))(
  ( (TokenValueInjection!5419 (toValue!4124 Int) (toChars!3983 Int)) )
))
(declare-datatypes ((Rule!5378 0))(
  ( (Rule!5379 (regex!2789 Regex!4103) (tag!3053 String!18650) (isSeparator!2789 Bool) (transformation!2789 TokenValueInjection!5418)) )
))
(declare-datatypes ((List!15708 0))(
  ( (Nil!15642) (Cons!15642 (h!21043 Rule!5378) (t!137077 List!15708)) )
))
(declare-fun rules!4290 () List!15708)

(declare-datatypes ((LexerInterface!2445 0))(
  ( (LexerInterfaceExt!2442 (__x!9549 Int)) (Lexer!2443) )
))
(declare-fun thiss!27374 () LexerInterface!2445)

(declare-datatypes ((Token!5240 0))(
  ( (Token!5241 (value!89134 TokenValue!2879) (rule!4566 Rule!5378) (size!12661 Int) (originalCharacters!3651 List!15707)) )
))
(declare-datatypes ((List!15709 0))(
  ( (Nil!15643) (Cons!15643 (h!21044 Token!5240) (t!137078 List!15709)) )
))
(declare-fun l1!3136 () List!15709)

(declare-fun tokensListTwoByTwoPredicateSeparableList!305 (LexerInterface!2445 List!15709 List!15708) Bool)

(assert (=> b!1479401 (= res!668503 (tokensListTwoByTwoPredicateSeparableList!305 thiss!27374 l1!3136 rules!4290))))

(declare-fun res!668499 () Bool)

(assert (=> start!138850 (=> (not res!668499) (not e!945642))))

(get-info :version)

(assert (=> start!138850 (= res!668499 ((_ is Lexer!2443) thiss!27374))))

(assert (=> start!138850 e!945642))

(assert (=> start!138850 true))

(declare-fun e!945645 () Bool)

(assert (=> start!138850 e!945645))

(declare-fun e!945641 () Bool)

(assert (=> start!138850 e!945641))

(declare-fun e!945648 () Bool)

(assert (=> start!138850 e!945648))

(declare-fun b!1479402 () Bool)

(declare-fun res!668508 () Bool)

(declare-fun e!945649 () Bool)

(assert (=> b!1479402 (=> res!668508 e!945649)))

(assert (=> b!1479402 (= res!668508 (not ((_ is Cons!15643) l1!3136)))))

(declare-fun b!1479403 () Bool)

(declare-fun tp!419304 () Bool)

(declare-fun e!945643 () Bool)

(declare-fun inv!20856 (Token!5240) Bool)

(assert (=> b!1479403 (= e!945641 (and (inv!20856 (h!21044 l1!3136)) e!945643 tp!419304))))

(declare-fun b!1479404 () Bool)

(declare-fun res!668501 () Bool)

(assert (=> b!1479404 (=> res!668501 e!945649)))

(declare-fun rulesProduceEachTokenIndividuallyList!812 (LexerInterface!2445 List!15708 List!15709) Bool)

(assert (=> b!1479404 (= res!668501 (not (rulesProduceEachTokenIndividuallyList!812 thiss!27374 rules!4290 (t!137078 l1!3136))))))

(declare-fun e!945639 () Bool)

(assert (=> b!1479405 (= e!945639 (and tp!419303 tp!419305))))

(declare-fun b!1479406 () Bool)

(declare-fun e!945651 () Bool)

(declare-fun e!945647 () Bool)

(declare-fun tp!419308 () Bool)

(declare-fun inv!20853 (String!18650) Bool)

(declare-fun inv!20857 (TokenValueInjection!5418) Bool)

(assert (=> b!1479406 (= e!945651 (and tp!419308 (inv!20853 (tag!3053 (h!21043 rules!4290))) (inv!20857 (transformation!2789 (h!21043 rules!4290))) e!945647))))

(declare-fun tp!419314 () Bool)

(declare-fun b!1479407 () Bool)

(declare-fun l2!3105 () List!15709)

(declare-fun e!945644 () Bool)

(assert (=> b!1479407 (= e!945648 (and (inv!20856 (h!21044 l2!3105)) e!945644 tp!419314))))

(declare-fun b!1479408 () Bool)

(declare-fun res!668500 () Bool)

(assert (=> b!1479408 (=> (not res!668500) (not e!945642))))

(declare-fun isEmpty!9778 (List!15709) Bool)

(assert (=> b!1479408 (= res!668500 (not (isEmpty!9778 l2!3105)))))

(declare-fun b!1479409 () Bool)

(declare-fun res!668505 () Bool)

(assert (=> b!1479409 (=> res!668505 e!945649)))

(assert (=> b!1479409 (= res!668505 (isEmpty!9778 (t!137078 l1!3136)))))

(declare-fun b!1479410 () Bool)

(assert (=> b!1479410 (= e!945642 (not e!945649))))

(declare-fun res!668509 () Bool)

(assert (=> b!1479410 (=> res!668509 e!945649)))

(declare-fun lt!513950 () Token!5240)

(declare-fun lt!513951 () Token!5240)

(declare-fun separableTokensPredicate!584 (LexerInterface!2445 Token!5240 Token!5240 List!15708) Bool)

(assert (=> b!1479410 (= res!668509 (not (separableTokensPredicate!584 thiss!27374 lt!513950 lt!513951 rules!4290)))))

(declare-fun rulesProduceIndividualToken!1302 (LexerInterface!2445 List!15708 Token!5240) Bool)

(assert (=> b!1479410 (rulesProduceIndividualToken!1302 thiss!27374 rules!4290 lt!513951)))

(declare-datatypes ((Unit!25436 0))(
  ( (Unit!25437) )
))
(declare-fun lt!513952 () Unit!25436)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!483 (LexerInterface!2445 List!15708 List!15709 Token!5240) Unit!25436)

(assert (=> b!1479410 (= lt!513952 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!483 thiss!27374 rules!4290 l2!3105 lt!513951))))

(declare-fun head!3077 (List!15709) Token!5240)

(assert (=> b!1479410 (= lt!513951 (head!3077 l2!3105))))

(assert (=> b!1479410 (rulesProduceIndividualToken!1302 thiss!27374 rules!4290 lt!513950)))

(declare-fun lt!513954 () Unit!25436)

(assert (=> b!1479410 (= lt!513954 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!483 thiss!27374 rules!4290 l1!3136 lt!513950))))

(declare-fun last!347 (List!15709) Token!5240)

(assert (=> b!1479410 (= lt!513950 (last!347 l1!3136))))

(declare-fun e!945652 () Bool)

(declare-fun b!1479411 () Bool)

(declare-fun tp!419312 () Bool)

(assert (=> b!1479411 (= e!945652 (and tp!419312 (inv!20853 (tag!3053 (rule!4566 (h!21044 l1!3136)))) (inv!20857 (transformation!2789 (rule!4566 (h!21044 l1!3136)))) e!945639))))

(declare-fun b!1479412 () Bool)

(declare-fun res!668502 () Bool)

(assert (=> b!1479412 (=> (not res!668502) (not e!945642))))

(assert (=> b!1479412 (= res!668502 (rulesProduceEachTokenIndividuallyList!812 thiss!27374 rules!4290 l1!3136))))

(declare-fun b!1479413 () Bool)

(declare-fun res!668507 () Bool)

(assert (=> b!1479413 (=> res!668507 e!945649)))

(assert (=> b!1479413 (= res!668507 (not (tokensListTwoByTwoPredicateSeparableList!305 thiss!27374 (t!137078 l1!3136) rules!4290)))))

(declare-fun e!945654 () Bool)

(declare-fun tp!419313 () Bool)

(declare-fun b!1479414 () Bool)

(declare-fun inv!21 (TokenValue!2879) Bool)

(assert (=> b!1479414 (= e!945644 (and (inv!21 (value!89134 (h!21044 l2!3105))) e!945654 tp!419313))))

(declare-fun b!1479415 () Bool)

(declare-fun res!668497 () Bool)

(assert (=> b!1479415 (=> (not res!668497) (not e!945642))))

(declare-fun isEmpty!9779 (List!15708) Bool)

(assert (=> b!1479415 (= res!668497 (not (isEmpty!9779 rules!4290)))))

(declare-fun tp!419316 () Bool)

(declare-fun e!945640 () Bool)

(declare-fun b!1479416 () Bool)

(assert (=> b!1479416 (= e!945654 (and tp!419316 (inv!20853 (tag!3053 (rule!4566 (h!21044 l2!3105)))) (inv!20857 (transformation!2789 (rule!4566 (h!21044 l2!3105)))) e!945640))))

(declare-fun b!1479417 () Bool)

(declare-fun res!668498 () Bool)

(assert (=> b!1479417 (=> (not res!668498) (not e!945642))))

(assert (=> b!1479417 (= res!668498 (tokensListTwoByTwoPredicateSeparableList!305 thiss!27374 l2!3105 rules!4290))))

(assert (=> b!1479418 (= e!945640 (and tp!419315 tp!419307))))

(declare-fun lt!513953 () Token!5240)

(declare-fun b!1479419 () Bool)

(assert (=> b!1479419 (= e!945649 (separableTokensPredicate!584 thiss!27374 lt!513953 lt!513951 rules!4290))))

(assert (=> b!1479419 (rulesProduceIndividualToken!1302 thiss!27374 rules!4290 lt!513953)))

(declare-fun lt!513955 () Unit!25436)

(assert (=> b!1479419 (= lt!513955 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!483 thiss!27374 rules!4290 (t!137078 l1!3136) lt!513953))))

(assert (=> b!1479419 (= lt!513953 (last!347 (t!137078 l1!3136)))))

(assert (=> b!1479420 (= e!945647 (and tp!419311 tp!419306))))

(declare-fun tp!419309 () Bool)

(declare-fun b!1479421 () Bool)

(assert (=> b!1479421 (= e!945643 (and (inv!21 (value!89134 (h!21044 l1!3136))) e!945652 tp!419309))))

(declare-fun b!1479422 () Bool)

(declare-fun res!668504 () Bool)

(assert (=> b!1479422 (=> (not res!668504) (not e!945642))))

(assert (=> b!1479422 (= res!668504 (rulesProduceEachTokenIndividuallyList!812 thiss!27374 rules!4290 l2!3105))))

(declare-fun b!1479423 () Bool)

(declare-fun res!668510 () Bool)

(assert (=> b!1479423 (=> (not res!668510) (not e!945642))))

(declare-fun rulesInvariant!2234 (LexerInterface!2445 List!15708) Bool)

(assert (=> b!1479423 (= res!668510 (rulesInvariant!2234 thiss!27374 rules!4290))))

(declare-fun b!1479424 () Bool)

(declare-fun res!668506 () Bool)

(assert (=> b!1479424 (=> (not res!668506) (not e!945642))))

(assert (=> b!1479424 (= res!668506 (not (isEmpty!9778 l1!3136)))))

(declare-fun b!1479425 () Bool)

(declare-fun tp!419310 () Bool)

(assert (=> b!1479425 (= e!945645 (and e!945651 tp!419310))))

(assert (= (and start!138850 res!668499) b!1479415))

(assert (= (and b!1479415 res!668497) b!1479423))

(assert (= (and b!1479423 res!668510) b!1479412))

(assert (= (and b!1479412 res!668502) b!1479422))

(assert (= (and b!1479422 res!668504) b!1479401))

(assert (= (and b!1479401 res!668503) b!1479417))

(assert (= (and b!1479417 res!668498) b!1479424))

(assert (= (and b!1479424 res!668506) b!1479408))

(assert (= (and b!1479408 res!668500) b!1479410))

(assert (= (and b!1479410 (not res!668509)) b!1479402))

(assert (= (and b!1479402 (not res!668508)) b!1479409))

(assert (= (and b!1479409 (not res!668505)) b!1479404))

(assert (= (and b!1479404 (not res!668501)) b!1479413))

(assert (= (and b!1479413 (not res!668507)) b!1479419))

(assert (= b!1479406 b!1479420))

(assert (= b!1479425 b!1479406))

(assert (= (and start!138850 ((_ is Cons!15642) rules!4290)) b!1479425))

(assert (= b!1479411 b!1479405))

(assert (= b!1479421 b!1479411))

(assert (= b!1479403 b!1479421))

(assert (= (and start!138850 ((_ is Cons!15643) l1!3136)) b!1479403))

(assert (= b!1479416 b!1479418))

(assert (= b!1479414 b!1479416))

(assert (= b!1479407 b!1479414))

(assert (= (and start!138850 ((_ is Cons!15643) l2!3105)) b!1479407))

(declare-fun m!1724873 () Bool)

(assert (=> b!1479404 m!1724873))

(declare-fun m!1724875 () Bool)

(assert (=> b!1479408 m!1724875))

(declare-fun m!1724877 () Bool)

(assert (=> b!1479413 m!1724877))

(declare-fun m!1724879 () Bool)

(assert (=> b!1479410 m!1724879))

(declare-fun m!1724881 () Bool)

(assert (=> b!1479410 m!1724881))

(declare-fun m!1724883 () Bool)

(assert (=> b!1479410 m!1724883))

(declare-fun m!1724885 () Bool)

(assert (=> b!1479410 m!1724885))

(declare-fun m!1724887 () Bool)

(assert (=> b!1479410 m!1724887))

(declare-fun m!1724889 () Bool)

(assert (=> b!1479410 m!1724889))

(declare-fun m!1724891 () Bool)

(assert (=> b!1479410 m!1724891))

(declare-fun m!1724893 () Bool)

(assert (=> b!1479422 m!1724893))

(declare-fun m!1724895 () Bool)

(assert (=> b!1479419 m!1724895))

(declare-fun m!1724897 () Bool)

(assert (=> b!1479419 m!1724897))

(declare-fun m!1724899 () Bool)

(assert (=> b!1479419 m!1724899))

(declare-fun m!1724901 () Bool)

(assert (=> b!1479419 m!1724901))

(declare-fun m!1724903 () Bool)

(assert (=> b!1479406 m!1724903))

(declare-fun m!1724905 () Bool)

(assert (=> b!1479406 m!1724905))

(declare-fun m!1724907 () Bool)

(assert (=> b!1479423 m!1724907))

(declare-fun m!1724909 () Bool)

(assert (=> b!1479409 m!1724909))

(declare-fun m!1724911 () Bool)

(assert (=> b!1479407 m!1724911))

(declare-fun m!1724913 () Bool)

(assert (=> b!1479412 m!1724913))

(declare-fun m!1724915 () Bool)

(assert (=> b!1479403 m!1724915))

(declare-fun m!1724917 () Bool)

(assert (=> b!1479424 m!1724917))

(declare-fun m!1724919 () Bool)

(assert (=> b!1479415 m!1724919))

(declare-fun m!1724921 () Bool)

(assert (=> b!1479417 m!1724921))

(declare-fun m!1724923 () Bool)

(assert (=> b!1479411 m!1724923))

(declare-fun m!1724925 () Bool)

(assert (=> b!1479411 m!1724925))

(declare-fun m!1724927 () Bool)

(assert (=> b!1479421 m!1724927))

(declare-fun m!1724929 () Bool)

(assert (=> b!1479414 m!1724929))

(declare-fun m!1724931 () Bool)

(assert (=> b!1479416 m!1724931))

(declare-fun m!1724933 () Bool)

(assert (=> b!1479416 m!1724933))

(declare-fun m!1724935 () Bool)

(assert (=> b!1479401 m!1724935))

(check-sat (not b!1479413) (not b!1479407) (not b!1479424) (not b_next!38787) (not b!1479414) (not b!1479422) (not b!1479419) (not b!1479412) b_and!102487 (not b!1479415) (not b!1479425) b_and!102491 (not b_next!38793) (not b!1479410) (not b!1479404) (not b!1479409) b_and!102485 (not b!1479403) (not b_next!38789) (not b!1479408) (not b!1479401) (not b!1479423) (not b!1479416) (not b!1479406) b_and!102493 b_and!102495 b_and!102489 (not b!1479421) (not b_next!38785) (not b!1479411) (not b!1479417) (not b_next!38783) (not b_next!38791))
(check-sat (not b_next!38787) b_and!102485 (not b_next!38789) b_and!102489 b_and!102487 b_and!102491 (not b_next!38785) (not b_next!38793) b_and!102493 b_and!102495 (not b_next!38783) (not b_next!38791))
(get-model)

(declare-fun d!433752 () Bool)

(assert (=> d!433752 (= (inv!20853 (tag!3053 (rule!4566 (h!21044 l1!3136)))) (= (mod (str.len (value!89108 (tag!3053 (rule!4566 (h!21044 l1!3136))))) 2) 0))))

(assert (=> b!1479411 d!433752))

(declare-fun d!433756 () Bool)

(declare-fun res!668521 () Bool)

(declare-fun e!945662 () Bool)

(assert (=> d!433756 (=> (not res!668521) (not e!945662))))

(declare-fun semiInverseModEq!1049 (Int Int) Bool)

(assert (=> d!433756 (= res!668521 (semiInverseModEq!1049 (toChars!3983 (transformation!2789 (rule!4566 (h!21044 l1!3136)))) (toValue!4124 (transformation!2789 (rule!4566 (h!21044 l1!3136))))))))

(assert (=> d!433756 (= (inv!20857 (transformation!2789 (rule!4566 (h!21044 l1!3136)))) e!945662)))

(declare-fun b!1479431 () Bool)

(declare-fun equivClasses!1008 (Int Int) Bool)

(assert (=> b!1479431 (= e!945662 (equivClasses!1008 (toChars!3983 (transformation!2789 (rule!4566 (h!21044 l1!3136)))) (toValue!4124 (transformation!2789 (rule!4566 (h!21044 l1!3136))))))))

(assert (= (and d!433756 res!668521) b!1479431))

(declare-fun m!1724941 () Bool)

(assert (=> d!433756 m!1724941))

(declare-fun m!1724943 () Bool)

(assert (=> b!1479431 m!1724943))

(assert (=> b!1479411 d!433756))

(declare-fun d!433768 () Bool)

(declare-fun lt!513975 () Bool)

(declare-fun e!945679 () Bool)

(assert (=> d!433768 (= lt!513975 e!945679)))

(declare-fun res!668542 () Bool)

(assert (=> d!433768 (=> (not res!668542) (not e!945679))))

(declare-datatypes ((IArray!10663 0))(
  ( (IArray!10664 (innerList!5389 List!15709)) )
))
(declare-datatypes ((Conc!5329 0))(
  ( (Node!5329 (left!13194 Conc!5329) (right!13524 Conc!5329) (csize!10888 Int) (cheight!5540 Int)) (Leaf!7925 (xs!8084 IArray!10663) (csize!10889 Int)) (Empty!5329) )
))
(declare-datatypes ((BalanceConc!10598 0))(
  ( (BalanceConc!10599 (c!242835 Conc!5329)) )
))
(declare-fun list!6217 (BalanceConc!10598) List!15709)

(declare-datatypes ((tuple2!14326 0))(
  ( (tuple2!14327 (_1!8049 BalanceConc!10598) (_2!8049 BalanceConc!10594)) )
))
(declare-fun lex!1102 (LexerInterface!2445 List!15708 BalanceConc!10594) tuple2!14326)

(declare-fun print!1137 (LexerInterface!2445 BalanceConc!10598) BalanceConc!10594)

(declare-fun singletonSeq!1324 (Token!5240) BalanceConc!10598)

(assert (=> d!433768 (= res!668542 (= (list!6217 (_1!8049 (lex!1102 thiss!27374 rules!4290 (print!1137 thiss!27374 (singletonSeq!1324 lt!513951))))) (list!6217 (singletonSeq!1324 lt!513951))))))

(declare-fun e!945678 () Bool)

(assert (=> d!433768 (= lt!513975 e!945678)))

(declare-fun res!668540 () Bool)

(assert (=> d!433768 (=> (not res!668540) (not e!945678))))

(declare-fun lt!513974 () tuple2!14326)

(declare-fun size!12665 (BalanceConc!10598) Int)

(assert (=> d!433768 (= res!668540 (= (size!12665 (_1!8049 lt!513974)) 1))))

(assert (=> d!433768 (= lt!513974 (lex!1102 thiss!27374 rules!4290 (print!1137 thiss!27374 (singletonSeq!1324 lt!513951))))))

(assert (=> d!433768 (not (isEmpty!9779 rules!4290))))

(assert (=> d!433768 (= (rulesProduceIndividualToken!1302 thiss!27374 rules!4290 lt!513951) lt!513975)))

(declare-fun b!1479456 () Bool)

(declare-fun res!668541 () Bool)

(assert (=> b!1479456 (=> (not res!668541) (not e!945678))))

(declare-fun apply!4039 (BalanceConc!10598 Int) Token!5240)

(assert (=> b!1479456 (= res!668541 (= (apply!4039 (_1!8049 lt!513974) 0) lt!513951))))

(declare-fun b!1479457 () Bool)

(declare-fun isEmpty!9782 (BalanceConc!10594) Bool)

(assert (=> b!1479457 (= e!945678 (isEmpty!9782 (_2!8049 lt!513974)))))

(declare-fun b!1479458 () Bool)

(assert (=> b!1479458 (= e!945679 (isEmpty!9782 (_2!8049 (lex!1102 thiss!27374 rules!4290 (print!1137 thiss!27374 (singletonSeq!1324 lt!513951))))))))

(assert (= (and d!433768 res!668540) b!1479456))

(assert (= (and b!1479456 res!668541) b!1479457))

(assert (= (and d!433768 res!668542) b!1479458))

(declare-fun m!1724985 () Bool)

(assert (=> d!433768 m!1724985))

(declare-fun m!1724987 () Bool)

(assert (=> d!433768 m!1724987))

(assert (=> d!433768 m!1724987))

(declare-fun m!1724989 () Bool)

(assert (=> d!433768 m!1724989))

(assert (=> d!433768 m!1724985))

(declare-fun m!1724991 () Bool)

(assert (=> d!433768 m!1724991))

(declare-fun m!1724993 () Bool)

(assert (=> d!433768 m!1724993))

(assert (=> d!433768 m!1724919))

(assert (=> d!433768 m!1724985))

(declare-fun m!1724995 () Bool)

(assert (=> d!433768 m!1724995))

(declare-fun m!1724997 () Bool)

(assert (=> b!1479456 m!1724997))

(declare-fun m!1724999 () Bool)

(assert (=> b!1479457 m!1724999))

(assert (=> b!1479458 m!1724985))

(assert (=> b!1479458 m!1724985))

(assert (=> b!1479458 m!1724987))

(assert (=> b!1479458 m!1724987))

(assert (=> b!1479458 m!1724989))

(declare-fun m!1725001 () Bool)

(assert (=> b!1479458 m!1725001))

(assert (=> b!1479410 d!433768))

(declare-fun d!433778 () Bool)

(assert (=> d!433778 (= (head!3077 l2!3105) (h!21044 l2!3105))))

(assert (=> b!1479410 d!433778))

(declare-fun d!433780 () Bool)

(declare-fun lt!513983 () Token!5240)

(declare-fun contains!2947 (List!15709 Token!5240) Bool)

(assert (=> d!433780 (contains!2947 l1!3136 lt!513983)))

(declare-fun e!945685 () Token!5240)

(assert (=> d!433780 (= lt!513983 e!945685)))

(declare-fun c!242816 () Bool)

(assert (=> d!433780 (= c!242816 (and ((_ is Cons!15643) l1!3136) ((_ is Nil!15643) (t!137078 l1!3136))))))

(assert (=> d!433780 (not (isEmpty!9778 l1!3136))))

(assert (=> d!433780 (= (last!347 l1!3136) lt!513983)))

(declare-fun b!1479468 () Bool)

(assert (=> b!1479468 (= e!945685 (h!21044 l1!3136))))

(declare-fun b!1479469 () Bool)

(assert (=> b!1479469 (= e!945685 (last!347 (t!137078 l1!3136)))))

(assert (= (and d!433780 c!242816) b!1479468))

(assert (= (and d!433780 (not c!242816)) b!1479469))

(declare-fun m!1725049 () Bool)

(assert (=> d!433780 m!1725049))

(assert (=> d!433780 m!1724917))

(assert (=> b!1479469 m!1724901))

(assert (=> b!1479410 d!433780))

(declare-fun d!433796 () Bool)

(assert (=> d!433796 (rulesProduceIndividualToken!1302 thiss!27374 rules!4290 lt!513951)))

(declare-fun lt!513988 () Unit!25436)

(declare-fun choose!9056 (LexerInterface!2445 List!15708 List!15709 Token!5240) Unit!25436)

(assert (=> d!433796 (= lt!513988 (choose!9056 thiss!27374 rules!4290 l2!3105 lt!513951))))

(assert (=> d!433796 (not (isEmpty!9779 rules!4290))))

(assert (=> d!433796 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!483 thiss!27374 rules!4290 l2!3105 lt!513951) lt!513988)))

(declare-fun bs!345786 () Bool)

(assert (= bs!345786 d!433796))

(assert (=> bs!345786 m!1724885))

(declare-fun m!1725051 () Bool)

(assert (=> bs!345786 m!1725051))

(assert (=> bs!345786 m!1724919))

(assert (=> b!1479410 d!433796))

(declare-fun d!433798 () Bool)

(assert (=> d!433798 (rulesProduceIndividualToken!1302 thiss!27374 rules!4290 lt!513950)))

(declare-fun lt!513989 () Unit!25436)

(assert (=> d!433798 (= lt!513989 (choose!9056 thiss!27374 rules!4290 l1!3136 lt!513950))))

(assert (=> d!433798 (not (isEmpty!9779 rules!4290))))

(assert (=> d!433798 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!483 thiss!27374 rules!4290 l1!3136 lt!513950) lt!513989)))

(declare-fun bs!345787 () Bool)

(assert (= bs!345787 d!433798))

(assert (=> bs!345787 m!1724881))

(declare-fun m!1725053 () Bool)

(assert (=> bs!345787 m!1725053))

(assert (=> bs!345787 m!1724919))

(assert (=> b!1479410 d!433798))

(declare-fun d!433800 () Bool)

(declare-fun prefixMatchZipperSequence!379 (Regex!4103 BalanceConc!10594) Bool)

(declare-fun rulesRegex!429 (LexerInterface!2445 List!15708) Regex!4103)

(declare-fun ++!4216 (BalanceConc!10594 BalanceConc!10594) BalanceConc!10594)

(declare-fun charsOf!1597 (Token!5240) BalanceConc!10594)

(declare-fun singletonSeq!1325 (C!8384) BalanceConc!10594)

(declare-fun apply!4040 (BalanceConc!10594 Int) C!8384)

(assert (=> d!433800 (= (separableTokensPredicate!584 thiss!27374 lt!513950 lt!513951 rules!4290) (not (prefixMatchZipperSequence!379 (rulesRegex!429 thiss!27374 rules!4290) (++!4216 (charsOf!1597 lt!513950) (singletonSeq!1325 (apply!4040 (charsOf!1597 lt!513951) 0))))))))

(declare-fun bs!345788 () Bool)

(assert (= bs!345788 d!433800))

(declare-fun m!1725055 () Bool)

(assert (=> bs!345788 m!1725055))

(declare-fun m!1725057 () Bool)

(assert (=> bs!345788 m!1725057))

(declare-fun m!1725059 () Bool)

(assert (=> bs!345788 m!1725059))

(declare-fun m!1725061 () Bool)

(assert (=> bs!345788 m!1725061))

(assert (=> bs!345788 m!1725057))

(assert (=> bs!345788 m!1725061))

(declare-fun m!1725063 () Bool)

(assert (=> bs!345788 m!1725063))

(declare-fun m!1725065 () Bool)

(assert (=> bs!345788 m!1725065))

(assert (=> bs!345788 m!1725063))

(declare-fun m!1725067 () Bool)

(assert (=> bs!345788 m!1725067))

(assert (=> bs!345788 m!1725055))

(assert (=> bs!345788 m!1725059))

(assert (=> bs!345788 m!1725065))

(assert (=> b!1479410 d!433800))

(declare-fun d!433802 () Bool)

(declare-fun lt!513991 () Bool)

(declare-fun e!945691 () Bool)

(assert (=> d!433802 (= lt!513991 e!945691)))

(declare-fun res!668552 () Bool)

(assert (=> d!433802 (=> (not res!668552) (not e!945691))))

(assert (=> d!433802 (= res!668552 (= (list!6217 (_1!8049 (lex!1102 thiss!27374 rules!4290 (print!1137 thiss!27374 (singletonSeq!1324 lt!513950))))) (list!6217 (singletonSeq!1324 lt!513950))))))

(declare-fun e!945690 () Bool)

(assert (=> d!433802 (= lt!513991 e!945690)))

(declare-fun res!668550 () Bool)

(assert (=> d!433802 (=> (not res!668550) (not e!945690))))

(declare-fun lt!513990 () tuple2!14326)

(assert (=> d!433802 (= res!668550 (= (size!12665 (_1!8049 lt!513990)) 1))))

(assert (=> d!433802 (= lt!513990 (lex!1102 thiss!27374 rules!4290 (print!1137 thiss!27374 (singletonSeq!1324 lt!513950))))))

(assert (=> d!433802 (not (isEmpty!9779 rules!4290))))

(assert (=> d!433802 (= (rulesProduceIndividualToken!1302 thiss!27374 rules!4290 lt!513950) lt!513991)))

(declare-fun b!1479474 () Bool)

(declare-fun res!668551 () Bool)

(assert (=> b!1479474 (=> (not res!668551) (not e!945690))))

(assert (=> b!1479474 (= res!668551 (= (apply!4039 (_1!8049 lt!513990) 0) lt!513950))))

(declare-fun b!1479475 () Bool)

(assert (=> b!1479475 (= e!945690 (isEmpty!9782 (_2!8049 lt!513990)))))

(declare-fun b!1479476 () Bool)

(assert (=> b!1479476 (= e!945691 (isEmpty!9782 (_2!8049 (lex!1102 thiss!27374 rules!4290 (print!1137 thiss!27374 (singletonSeq!1324 lt!513950))))))))

(assert (= (and d!433802 res!668550) b!1479474))

(assert (= (and b!1479474 res!668551) b!1479475))

(assert (= (and d!433802 res!668552) b!1479476))

(declare-fun m!1725069 () Bool)

(assert (=> d!433802 m!1725069))

(declare-fun m!1725071 () Bool)

(assert (=> d!433802 m!1725071))

(assert (=> d!433802 m!1725071))

(declare-fun m!1725073 () Bool)

(assert (=> d!433802 m!1725073))

(assert (=> d!433802 m!1725069))

(declare-fun m!1725075 () Bool)

(assert (=> d!433802 m!1725075))

(declare-fun m!1725077 () Bool)

(assert (=> d!433802 m!1725077))

(assert (=> d!433802 m!1724919))

(assert (=> d!433802 m!1725069))

(declare-fun m!1725079 () Bool)

(assert (=> d!433802 m!1725079))

(declare-fun m!1725081 () Bool)

(assert (=> b!1479474 m!1725081))

(declare-fun m!1725083 () Bool)

(assert (=> b!1479475 m!1725083))

(assert (=> b!1479476 m!1725069))

(assert (=> b!1479476 m!1725069))

(assert (=> b!1479476 m!1725071))

(assert (=> b!1479476 m!1725071))

(assert (=> b!1479476 m!1725073))

(declare-fun m!1725085 () Bool)

(assert (=> b!1479476 m!1725085))

(assert (=> b!1479410 d!433802))

(declare-fun b!1479487 () Bool)

(declare-fun e!945698 () Bool)

(declare-fun inv!15 (TokenValue!2879) Bool)

(assert (=> b!1479487 (= e!945698 (inv!15 (value!89134 (h!21044 l1!3136))))))

(declare-fun b!1479488 () Bool)

(declare-fun res!668555 () Bool)

(assert (=> b!1479488 (=> res!668555 e!945698)))

(assert (=> b!1479488 (= res!668555 (not ((_ is IntegerValue!8639) (value!89134 (h!21044 l1!3136)))))))

(declare-fun e!945699 () Bool)

(assert (=> b!1479488 (= e!945699 e!945698)))

(declare-fun d!433804 () Bool)

(declare-fun c!242822 () Bool)

(assert (=> d!433804 (= c!242822 ((_ is IntegerValue!8637) (value!89134 (h!21044 l1!3136))))))

(declare-fun e!945700 () Bool)

(assert (=> d!433804 (= (inv!21 (value!89134 (h!21044 l1!3136))) e!945700)))

(declare-fun b!1479489 () Bool)

(declare-fun inv!17 (TokenValue!2879) Bool)

(assert (=> b!1479489 (= e!945699 (inv!17 (value!89134 (h!21044 l1!3136))))))

(declare-fun b!1479490 () Bool)

(assert (=> b!1479490 (= e!945700 e!945699)))

(declare-fun c!242821 () Bool)

(assert (=> b!1479490 (= c!242821 ((_ is IntegerValue!8638) (value!89134 (h!21044 l1!3136))))))

(declare-fun b!1479491 () Bool)

(declare-fun inv!16 (TokenValue!2879) Bool)

(assert (=> b!1479491 (= e!945700 (inv!16 (value!89134 (h!21044 l1!3136))))))

(assert (= (and d!433804 c!242822) b!1479491))

(assert (= (and d!433804 (not c!242822)) b!1479490))

(assert (= (and b!1479490 c!242821) b!1479489))

(assert (= (and b!1479490 (not c!242821)) b!1479488))

(assert (= (and b!1479488 (not res!668555)) b!1479487))

(declare-fun m!1725087 () Bool)

(assert (=> b!1479487 m!1725087))

(declare-fun m!1725089 () Bool)

(assert (=> b!1479489 m!1725089))

(declare-fun m!1725091 () Bool)

(assert (=> b!1479491 m!1725091))

(assert (=> b!1479421 d!433804))

(declare-fun b!1479582 () Bool)

(declare-fun e!945771 () Bool)

(assert (=> b!1479582 (= e!945771 true)))

(declare-fun b!1479581 () Bool)

(declare-fun e!945770 () Bool)

(assert (=> b!1479581 (= e!945770 e!945771)))

(declare-fun b!1479580 () Bool)

(declare-fun e!945769 () Bool)

(assert (=> b!1479580 (= e!945769 e!945770)))

(declare-fun d!433806 () Bool)

(assert (=> d!433806 e!945769))

(assert (= b!1479581 b!1479582))

(assert (= b!1479580 b!1479581))

(assert (= (and d!433806 ((_ is Cons!15642) rules!4290)) b!1479580))

(declare-fun lambda!63742 () Int)

(declare-fun order!9427 () Int)

(declare-fun order!9425 () Int)

(declare-fun dynLambda!7111 (Int Int) Int)

(declare-fun dynLambda!7112 (Int Int) Int)

(assert (=> b!1479582 (< (dynLambda!7111 order!9425 (toValue!4124 (transformation!2789 (h!21043 rules!4290)))) (dynLambda!7112 order!9427 lambda!63742))))

(declare-fun order!9429 () Int)

(declare-fun dynLambda!7113 (Int Int) Int)

(assert (=> b!1479582 (< (dynLambda!7113 order!9429 (toChars!3983 (transformation!2789 (h!21043 rules!4290)))) (dynLambda!7112 order!9427 lambda!63742))))

(assert (=> d!433806 true))

(declare-fun lt!514024 () Bool)

(declare-fun forall!3806 (List!15709 Int) Bool)

(assert (=> d!433806 (= lt!514024 (forall!3806 l1!3136 lambda!63742))))

(declare-fun e!945754 () Bool)

(assert (=> d!433806 (= lt!514024 e!945754)))

(declare-fun res!668589 () Bool)

(assert (=> d!433806 (=> res!668589 e!945754)))

(assert (=> d!433806 (= res!668589 (not ((_ is Cons!15643) l1!3136)))))

(assert (=> d!433806 (not (isEmpty!9779 rules!4290))))

(assert (=> d!433806 (= (rulesProduceEachTokenIndividuallyList!812 thiss!27374 rules!4290 l1!3136) lt!514024)))

(declare-fun b!1479562 () Bool)

(declare-fun e!945753 () Bool)

(assert (=> b!1479562 (= e!945754 e!945753)))

(declare-fun res!668590 () Bool)

(assert (=> b!1479562 (=> (not res!668590) (not e!945753))))

(assert (=> b!1479562 (= res!668590 (rulesProduceIndividualToken!1302 thiss!27374 rules!4290 (h!21044 l1!3136)))))

(declare-fun b!1479563 () Bool)

(assert (=> b!1479563 (= e!945753 (rulesProduceEachTokenIndividuallyList!812 thiss!27374 rules!4290 (t!137078 l1!3136)))))

(assert (= (and d!433806 (not res!668589)) b!1479562))

(assert (= (and b!1479562 res!668590) b!1479563))

(declare-fun m!1725197 () Bool)

(assert (=> d!433806 m!1725197))

(assert (=> d!433806 m!1724919))

(declare-fun m!1725199 () Bool)

(assert (=> b!1479562 m!1725199))

(assert (=> b!1479563 m!1724873))

(assert (=> b!1479412 d!433806))

(declare-fun d!433838 () Bool)

(declare-fun res!668597 () Bool)

(declare-fun e!945788 () Bool)

(assert (=> d!433838 (=> (not res!668597) (not e!945788))))

(declare-fun rulesValid!1020 (LexerInterface!2445 List!15708) Bool)

(assert (=> d!433838 (= res!668597 (rulesValid!1020 thiss!27374 rules!4290))))

(assert (=> d!433838 (= (rulesInvariant!2234 thiss!27374 rules!4290) e!945788)))

(declare-fun b!1479617 () Bool)

(declare-datatypes ((List!15711 0))(
  ( (Nil!15645) (Cons!15645 (h!21046 String!18650) (t!137136 List!15711)) )
))
(declare-fun noDuplicateTag!1020 (LexerInterface!2445 List!15708 List!15711) Bool)

(assert (=> b!1479617 (= e!945788 (noDuplicateTag!1020 thiss!27374 rules!4290 Nil!15645))))

(assert (= (and d!433838 res!668597) b!1479617))

(declare-fun m!1725201 () Bool)

(assert (=> d!433838 m!1725201))

(declare-fun m!1725203 () Bool)

(assert (=> b!1479617 m!1725203))

(assert (=> b!1479423 d!433838))

(declare-fun bs!345792 () Bool)

(declare-fun d!433840 () Bool)

(assert (= bs!345792 (and d!433840 d!433806)))

(declare-fun lambda!63744 () Int)

(assert (=> bs!345792 (= lambda!63744 lambda!63742)))

(declare-fun b!1479626 () Bool)

(declare-fun e!945799 () Bool)

(assert (=> b!1479626 (= e!945799 true)))

(declare-fun b!1479625 () Bool)

(declare-fun e!945798 () Bool)

(assert (=> b!1479625 (= e!945798 e!945799)))

(declare-fun b!1479624 () Bool)

(declare-fun e!945797 () Bool)

(assert (=> b!1479624 (= e!945797 e!945798)))

(assert (=> d!433840 e!945797))

(assert (= b!1479625 b!1479626))

(assert (= b!1479624 b!1479625))

(assert (= (and d!433840 ((_ is Cons!15642) rules!4290)) b!1479624))

(assert (=> b!1479626 (< (dynLambda!7111 order!9425 (toValue!4124 (transformation!2789 (h!21043 rules!4290)))) (dynLambda!7112 order!9427 lambda!63744))))

(assert (=> b!1479626 (< (dynLambda!7113 order!9429 (toChars!3983 (transformation!2789 (h!21043 rules!4290)))) (dynLambda!7112 order!9427 lambda!63744))))

(assert (=> d!433840 true))

(declare-fun lt!514033 () Bool)

(assert (=> d!433840 (= lt!514033 (forall!3806 l2!3105 lambda!63744))))

(declare-fun e!945794 () Bool)

(assert (=> d!433840 (= lt!514033 e!945794)))

(declare-fun res!668598 () Bool)

(assert (=> d!433840 (=> res!668598 e!945794)))

(assert (=> d!433840 (= res!668598 (not ((_ is Cons!15643) l2!3105)))))

(assert (=> d!433840 (not (isEmpty!9779 rules!4290))))

(assert (=> d!433840 (= (rulesProduceEachTokenIndividuallyList!812 thiss!27374 rules!4290 l2!3105) lt!514033)))

(declare-fun b!1479620 () Bool)

(declare-fun e!945793 () Bool)

(assert (=> b!1479620 (= e!945794 e!945793)))

(declare-fun res!668599 () Bool)

(assert (=> b!1479620 (=> (not res!668599) (not e!945793))))

(assert (=> b!1479620 (= res!668599 (rulesProduceIndividualToken!1302 thiss!27374 rules!4290 (h!21044 l2!3105)))))

(declare-fun b!1479621 () Bool)

(assert (=> b!1479621 (= e!945793 (rulesProduceEachTokenIndividuallyList!812 thiss!27374 rules!4290 (t!137078 l2!3105)))))

(assert (= (and d!433840 (not res!668598)) b!1479620))

(assert (= (and b!1479620 res!668599) b!1479621))

(declare-fun m!1725205 () Bool)

(assert (=> d!433840 m!1725205))

(assert (=> d!433840 m!1724919))

(declare-fun m!1725207 () Bool)

(assert (=> b!1479620 m!1725207))

(declare-fun m!1725209 () Bool)

(assert (=> b!1479621 m!1725209))

(assert (=> b!1479422 d!433840))

(declare-fun d!433842 () Bool)

(declare-fun res!668604 () Bool)

(declare-fun e!945829 () Bool)

(assert (=> d!433842 (=> res!668604 e!945829)))

(assert (=> d!433842 (= res!668604 (or (not ((_ is Cons!15643) l1!3136)) (not ((_ is Cons!15643) (t!137078 l1!3136)))))))

(assert (=> d!433842 (= (tokensListTwoByTwoPredicateSeparableList!305 thiss!27374 l1!3136 rules!4290) e!945829)))

(declare-fun b!1479654 () Bool)

(declare-fun e!945830 () Bool)

(assert (=> b!1479654 (= e!945829 e!945830)))

(declare-fun res!668605 () Bool)

(assert (=> b!1479654 (=> (not res!668605) (not e!945830))))

(assert (=> b!1479654 (= res!668605 (separableTokensPredicate!584 thiss!27374 (h!21044 l1!3136) (h!21044 (t!137078 l1!3136)) rules!4290))))

(declare-fun lt!514048 () Unit!25436)

(declare-fun Unit!25447 () Unit!25436)

(assert (=> b!1479654 (= lt!514048 Unit!25447)))

(declare-fun size!12666 (BalanceConc!10594) Int)

(assert (=> b!1479654 (> (size!12666 (charsOf!1597 (h!21044 (t!137078 l1!3136)))) 0)))

(declare-fun lt!514052 () Unit!25436)

(declare-fun Unit!25448 () Unit!25436)

(assert (=> b!1479654 (= lt!514052 Unit!25448)))

(assert (=> b!1479654 (rulesProduceIndividualToken!1302 thiss!27374 rules!4290 (h!21044 (t!137078 l1!3136)))))

(declare-fun lt!514049 () Unit!25436)

(declare-fun Unit!25449 () Unit!25436)

(assert (=> b!1479654 (= lt!514049 Unit!25449)))

(assert (=> b!1479654 (rulesProduceIndividualToken!1302 thiss!27374 rules!4290 (h!21044 l1!3136))))

(declare-fun lt!514054 () Unit!25436)

(declare-fun lt!514053 () Unit!25436)

(assert (=> b!1479654 (= lt!514054 lt!514053)))

(assert (=> b!1479654 (rulesProduceIndividualToken!1302 thiss!27374 rules!4290 (h!21044 (t!137078 l1!3136)))))

(assert (=> b!1479654 (= lt!514053 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!483 thiss!27374 rules!4290 l1!3136 (h!21044 (t!137078 l1!3136))))))

(declare-fun lt!514050 () Unit!25436)

(declare-fun lt!514051 () Unit!25436)

(assert (=> b!1479654 (= lt!514050 lt!514051)))

(assert (=> b!1479654 (rulesProduceIndividualToken!1302 thiss!27374 rules!4290 (h!21044 l1!3136))))

(assert (=> b!1479654 (= lt!514051 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!483 thiss!27374 rules!4290 l1!3136 (h!21044 l1!3136)))))

(declare-fun b!1479655 () Bool)

(assert (=> b!1479655 (= e!945830 (tokensListTwoByTwoPredicateSeparableList!305 thiss!27374 (Cons!15643 (h!21044 (t!137078 l1!3136)) (t!137078 (t!137078 l1!3136))) rules!4290))))

(assert (= (and d!433842 (not res!668604)) b!1479654))

(assert (= (and b!1479654 res!668605) b!1479655))

(declare-fun m!1725231 () Bool)

(assert (=> b!1479654 m!1725231))

(declare-fun m!1725233 () Bool)

(assert (=> b!1479654 m!1725233))

(declare-fun m!1725235 () Bool)

(assert (=> b!1479654 m!1725235))

(declare-fun m!1725237 () Bool)

(assert (=> b!1479654 m!1725237))

(declare-fun m!1725239 () Bool)

(assert (=> b!1479654 m!1725239))

(assert (=> b!1479654 m!1725199))

(assert (=> b!1479654 m!1725233))

(declare-fun m!1725241 () Bool)

(assert (=> b!1479654 m!1725241))

(declare-fun m!1725243 () Bool)

(assert (=> b!1479655 m!1725243))

(assert (=> b!1479401 d!433842))

(declare-fun d!433844 () Bool)

(assert (=> d!433844 (= (isEmpty!9778 l2!3105) ((_ is Nil!15643) l2!3105))))

(assert (=> b!1479408 d!433844))

(declare-fun d!433846 () Bool)

(assert (=> d!433846 (= (separableTokensPredicate!584 thiss!27374 lt!513953 lt!513951 rules!4290) (not (prefixMatchZipperSequence!379 (rulesRegex!429 thiss!27374 rules!4290) (++!4216 (charsOf!1597 lt!513953) (singletonSeq!1325 (apply!4040 (charsOf!1597 lt!513951) 0))))))))

(declare-fun bs!345793 () Bool)

(assert (= bs!345793 d!433846))

(assert (=> bs!345793 m!1725055))

(declare-fun m!1725245 () Bool)

(assert (=> bs!345793 m!1725245))

(assert (=> bs!345793 m!1725059))

(assert (=> bs!345793 m!1725061))

(assert (=> bs!345793 m!1725245))

(assert (=> bs!345793 m!1725061))

(declare-fun m!1725247 () Bool)

(assert (=> bs!345793 m!1725247))

(assert (=> bs!345793 m!1725065))

(assert (=> bs!345793 m!1725247))

(declare-fun m!1725249 () Bool)

(assert (=> bs!345793 m!1725249))

(assert (=> bs!345793 m!1725055))

(assert (=> bs!345793 m!1725059))

(assert (=> bs!345793 m!1725065))

(assert (=> b!1479419 d!433846))

(declare-fun d!433848 () Bool)

(declare-fun lt!514056 () Bool)

(declare-fun e!945832 () Bool)

(assert (=> d!433848 (= lt!514056 e!945832)))

(declare-fun res!668608 () Bool)

(assert (=> d!433848 (=> (not res!668608) (not e!945832))))

(assert (=> d!433848 (= res!668608 (= (list!6217 (_1!8049 (lex!1102 thiss!27374 rules!4290 (print!1137 thiss!27374 (singletonSeq!1324 lt!513953))))) (list!6217 (singletonSeq!1324 lt!513953))))))

(declare-fun e!945831 () Bool)

(assert (=> d!433848 (= lt!514056 e!945831)))

(declare-fun res!668606 () Bool)

(assert (=> d!433848 (=> (not res!668606) (not e!945831))))

(declare-fun lt!514055 () tuple2!14326)

(assert (=> d!433848 (= res!668606 (= (size!12665 (_1!8049 lt!514055)) 1))))

(assert (=> d!433848 (= lt!514055 (lex!1102 thiss!27374 rules!4290 (print!1137 thiss!27374 (singletonSeq!1324 lt!513953))))))

(assert (=> d!433848 (not (isEmpty!9779 rules!4290))))

(assert (=> d!433848 (= (rulesProduceIndividualToken!1302 thiss!27374 rules!4290 lt!513953) lt!514056)))

(declare-fun b!1479656 () Bool)

(declare-fun res!668607 () Bool)

(assert (=> b!1479656 (=> (not res!668607) (not e!945831))))

(assert (=> b!1479656 (= res!668607 (= (apply!4039 (_1!8049 lt!514055) 0) lt!513953))))

(declare-fun b!1479657 () Bool)

(assert (=> b!1479657 (= e!945831 (isEmpty!9782 (_2!8049 lt!514055)))))

(declare-fun b!1479658 () Bool)

(assert (=> b!1479658 (= e!945832 (isEmpty!9782 (_2!8049 (lex!1102 thiss!27374 rules!4290 (print!1137 thiss!27374 (singletonSeq!1324 lt!513953))))))))

(assert (= (and d!433848 res!668606) b!1479656))

(assert (= (and b!1479656 res!668607) b!1479657))

(assert (= (and d!433848 res!668608) b!1479658))

(declare-fun m!1725251 () Bool)

(assert (=> d!433848 m!1725251))

(declare-fun m!1725253 () Bool)

(assert (=> d!433848 m!1725253))

(assert (=> d!433848 m!1725253))

(declare-fun m!1725255 () Bool)

(assert (=> d!433848 m!1725255))

(assert (=> d!433848 m!1725251))

(declare-fun m!1725257 () Bool)

(assert (=> d!433848 m!1725257))

(declare-fun m!1725259 () Bool)

(assert (=> d!433848 m!1725259))

(assert (=> d!433848 m!1724919))

(assert (=> d!433848 m!1725251))

(declare-fun m!1725261 () Bool)

(assert (=> d!433848 m!1725261))

(declare-fun m!1725263 () Bool)

(assert (=> b!1479656 m!1725263))

(declare-fun m!1725265 () Bool)

(assert (=> b!1479657 m!1725265))

(assert (=> b!1479658 m!1725251))

(assert (=> b!1479658 m!1725251))

(assert (=> b!1479658 m!1725253))

(assert (=> b!1479658 m!1725253))

(assert (=> b!1479658 m!1725255))

(declare-fun m!1725267 () Bool)

(assert (=> b!1479658 m!1725267))

(assert (=> b!1479419 d!433848))

(declare-fun d!433850 () Bool)

(assert (=> d!433850 (rulesProduceIndividualToken!1302 thiss!27374 rules!4290 lt!513953)))

(declare-fun lt!514057 () Unit!25436)

(assert (=> d!433850 (= lt!514057 (choose!9056 thiss!27374 rules!4290 (t!137078 l1!3136) lt!513953))))

(assert (=> d!433850 (not (isEmpty!9779 rules!4290))))

(assert (=> d!433850 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!483 thiss!27374 rules!4290 (t!137078 l1!3136) lt!513953) lt!514057)))

(declare-fun bs!345794 () Bool)

(assert (= bs!345794 d!433850))

(assert (=> bs!345794 m!1724897))

(declare-fun m!1725269 () Bool)

(assert (=> bs!345794 m!1725269))

(assert (=> bs!345794 m!1724919))

(assert (=> b!1479419 d!433850))

(declare-fun d!433852 () Bool)

(declare-fun lt!514058 () Token!5240)

(assert (=> d!433852 (contains!2947 (t!137078 l1!3136) lt!514058)))

(declare-fun e!945833 () Token!5240)

(assert (=> d!433852 (= lt!514058 e!945833)))

(declare-fun c!242832 () Bool)

(assert (=> d!433852 (= c!242832 (and ((_ is Cons!15643) (t!137078 l1!3136)) ((_ is Nil!15643) (t!137078 (t!137078 l1!3136)))))))

(assert (=> d!433852 (not (isEmpty!9778 (t!137078 l1!3136)))))

(assert (=> d!433852 (= (last!347 (t!137078 l1!3136)) lt!514058)))

(declare-fun b!1479659 () Bool)

(assert (=> b!1479659 (= e!945833 (h!21044 (t!137078 l1!3136)))))

(declare-fun b!1479660 () Bool)

(assert (=> b!1479660 (= e!945833 (last!347 (t!137078 (t!137078 l1!3136))))))

(assert (= (and d!433852 c!242832) b!1479659))

(assert (= (and d!433852 (not c!242832)) b!1479660))

(declare-fun m!1725271 () Bool)

(assert (=> d!433852 m!1725271))

(assert (=> d!433852 m!1724909))

(declare-fun m!1725273 () Bool)

(assert (=> b!1479660 m!1725273))

(assert (=> b!1479419 d!433852))

(declare-fun d!433854 () Bool)

(assert (=> d!433854 (= (isEmpty!9778 (t!137078 l1!3136)) ((_ is Nil!15643) (t!137078 l1!3136)))))

(assert (=> b!1479409 d!433854))

(declare-fun d!433856 () Bool)

(assert (=> d!433856 (= (inv!20853 (tag!3053 (rule!4566 (h!21044 l2!3105)))) (= (mod (str.len (value!89108 (tag!3053 (rule!4566 (h!21044 l2!3105))))) 2) 0))))

(assert (=> b!1479416 d!433856))

(declare-fun d!433858 () Bool)

(declare-fun res!668609 () Bool)

(declare-fun e!945834 () Bool)

(assert (=> d!433858 (=> (not res!668609) (not e!945834))))

(assert (=> d!433858 (= res!668609 (semiInverseModEq!1049 (toChars!3983 (transformation!2789 (rule!4566 (h!21044 l2!3105)))) (toValue!4124 (transformation!2789 (rule!4566 (h!21044 l2!3105))))))))

(assert (=> d!433858 (= (inv!20857 (transformation!2789 (rule!4566 (h!21044 l2!3105)))) e!945834)))

(declare-fun b!1479661 () Bool)

(assert (=> b!1479661 (= e!945834 (equivClasses!1008 (toChars!3983 (transformation!2789 (rule!4566 (h!21044 l2!3105)))) (toValue!4124 (transformation!2789 (rule!4566 (h!21044 l2!3105))))))))

(assert (= (and d!433858 res!668609) b!1479661))

(declare-fun m!1725275 () Bool)

(assert (=> d!433858 m!1725275))

(declare-fun m!1725277 () Bool)

(assert (=> b!1479661 m!1725277))

(assert (=> b!1479416 d!433858))

(declare-fun d!433860 () Bool)

(declare-fun res!668614 () Bool)

(declare-fun e!945837 () Bool)

(assert (=> d!433860 (=> (not res!668614) (not e!945837))))

(declare-fun isEmpty!9783 (List!15707) Bool)

(assert (=> d!433860 (= res!668614 (not (isEmpty!9783 (originalCharacters!3651 (h!21044 l2!3105)))))))

(assert (=> d!433860 (= (inv!20856 (h!21044 l2!3105)) e!945837)))

(declare-fun b!1479666 () Bool)

(declare-fun res!668615 () Bool)

(assert (=> b!1479666 (=> (not res!668615) (not e!945837))))

(declare-fun list!6218 (BalanceConc!10594) List!15707)

(declare-fun dynLambda!7114 (Int TokenValue!2879) BalanceConc!10594)

(assert (=> b!1479666 (= res!668615 (= (originalCharacters!3651 (h!21044 l2!3105)) (list!6218 (dynLambda!7114 (toChars!3983 (transformation!2789 (rule!4566 (h!21044 l2!3105)))) (value!89134 (h!21044 l2!3105))))))))

(declare-fun b!1479667 () Bool)

(declare-fun size!12667 (List!15707) Int)

(assert (=> b!1479667 (= e!945837 (= (size!12661 (h!21044 l2!3105)) (size!12667 (originalCharacters!3651 (h!21044 l2!3105)))))))

(assert (= (and d!433860 res!668614) b!1479666))

(assert (= (and b!1479666 res!668615) b!1479667))

(declare-fun b_lambda!46315 () Bool)

(assert (=> (not b_lambda!46315) (not b!1479666)))

(declare-fun t!137112 () Bool)

(declare-fun tb!84437 () Bool)

(assert (=> (and b!1479418 (= (toChars!3983 (transformation!2789 (rule!4566 (h!21044 l2!3105)))) (toChars!3983 (transformation!2789 (rule!4566 (h!21044 l2!3105))))) t!137112) tb!84437))

(declare-fun b!1479672 () Bool)

(declare-fun e!945840 () Bool)

(declare-fun tp!419384 () Bool)

(declare-fun inv!20860 (Conc!5327) Bool)

(assert (=> b!1479672 (= e!945840 (and (inv!20860 (c!242809 (dynLambda!7114 (toChars!3983 (transformation!2789 (rule!4566 (h!21044 l2!3105)))) (value!89134 (h!21044 l2!3105))))) tp!419384))))

(declare-fun result!101520 () Bool)

(declare-fun inv!20861 (BalanceConc!10594) Bool)

(assert (=> tb!84437 (= result!101520 (and (inv!20861 (dynLambda!7114 (toChars!3983 (transformation!2789 (rule!4566 (h!21044 l2!3105)))) (value!89134 (h!21044 l2!3105)))) e!945840))))

(assert (= tb!84437 b!1479672))

(declare-fun m!1725279 () Bool)

(assert (=> b!1479672 m!1725279))

(declare-fun m!1725281 () Bool)

(assert (=> tb!84437 m!1725281))

(assert (=> b!1479666 t!137112))

(declare-fun b_and!102521 () Bool)

(assert (= b_and!102487 (and (=> t!137112 result!101520) b_and!102521)))

(declare-fun t!137114 () Bool)

(declare-fun tb!84439 () Bool)

(assert (=> (and b!1479405 (= (toChars!3983 (transformation!2789 (rule!4566 (h!21044 l1!3136)))) (toChars!3983 (transformation!2789 (rule!4566 (h!21044 l2!3105))))) t!137114) tb!84439))

(declare-fun result!101524 () Bool)

(assert (= result!101524 result!101520))

(assert (=> b!1479666 t!137114))

(declare-fun b_and!102523 () Bool)

(assert (= b_and!102491 (and (=> t!137114 result!101524) b_and!102523)))

(declare-fun tb!84441 () Bool)

(declare-fun t!137116 () Bool)

(assert (=> (and b!1479420 (= (toChars!3983 (transformation!2789 (h!21043 rules!4290))) (toChars!3983 (transformation!2789 (rule!4566 (h!21044 l2!3105))))) t!137116) tb!84441))

(declare-fun result!101526 () Bool)

(assert (= result!101526 result!101520))

(assert (=> b!1479666 t!137116))

(declare-fun b_and!102525 () Bool)

(assert (= b_and!102495 (and (=> t!137116 result!101526) b_and!102525)))

(declare-fun m!1725283 () Bool)

(assert (=> d!433860 m!1725283))

(declare-fun m!1725285 () Bool)

(assert (=> b!1479666 m!1725285))

(assert (=> b!1479666 m!1725285))

(declare-fun m!1725287 () Bool)

(assert (=> b!1479666 m!1725287))

(declare-fun m!1725289 () Bool)

(assert (=> b!1479667 m!1725289))

(assert (=> b!1479407 d!433860))

(declare-fun d!433862 () Bool)

(assert (=> d!433862 (= (inv!20853 (tag!3053 (h!21043 rules!4290))) (= (mod (str.len (value!89108 (tag!3053 (h!21043 rules!4290)))) 2) 0))))

(assert (=> b!1479406 d!433862))

(declare-fun d!433864 () Bool)

(declare-fun res!668616 () Bool)

(declare-fun e!945841 () Bool)

(assert (=> d!433864 (=> (not res!668616) (not e!945841))))

(assert (=> d!433864 (= res!668616 (semiInverseModEq!1049 (toChars!3983 (transformation!2789 (h!21043 rules!4290))) (toValue!4124 (transformation!2789 (h!21043 rules!4290)))))))

(assert (=> d!433864 (= (inv!20857 (transformation!2789 (h!21043 rules!4290))) e!945841)))

(declare-fun b!1479673 () Bool)

(assert (=> b!1479673 (= e!945841 (equivClasses!1008 (toChars!3983 (transformation!2789 (h!21043 rules!4290))) (toValue!4124 (transformation!2789 (h!21043 rules!4290)))))))

(assert (= (and d!433864 res!668616) b!1479673))

(declare-fun m!1725291 () Bool)

(assert (=> d!433864 m!1725291))

(declare-fun m!1725293 () Bool)

(assert (=> b!1479673 m!1725293))

(assert (=> b!1479406 d!433864))

(declare-fun d!433866 () Bool)

(declare-fun res!668617 () Bool)

(declare-fun e!945842 () Bool)

(assert (=> d!433866 (=> res!668617 e!945842)))

(assert (=> d!433866 (= res!668617 (or (not ((_ is Cons!15643) l2!3105)) (not ((_ is Cons!15643) (t!137078 l2!3105)))))))

(assert (=> d!433866 (= (tokensListTwoByTwoPredicateSeparableList!305 thiss!27374 l2!3105 rules!4290) e!945842)))

(declare-fun b!1479674 () Bool)

(declare-fun e!945843 () Bool)

(assert (=> b!1479674 (= e!945842 e!945843)))

(declare-fun res!668618 () Bool)

(assert (=> b!1479674 (=> (not res!668618) (not e!945843))))

(assert (=> b!1479674 (= res!668618 (separableTokensPredicate!584 thiss!27374 (h!21044 l2!3105) (h!21044 (t!137078 l2!3105)) rules!4290))))

(declare-fun lt!514059 () Unit!25436)

(declare-fun Unit!25450 () Unit!25436)

(assert (=> b!1479674 (= lt!514059 Unit!25450)))

(assert (=> b!1479674 (> (size!12666 (charsOf!1597 (h!21044 (t!137078 l2!3105)))) 0)))

(declare-fun lt!514063 () Unit!25436)

(declare-fun Unit!25451 () Unit!25436)

(assert (=> b!1479674 (= lt!514063 Unit!25451)))

(assert (=> b!1479674 (rulesProduceIndividualToken!1302 thiss!27374 rules!4290 (h!21044 (t!137078 l2!3105)))))

(declare-fun lt!514060 () Unit!25436)

(declare-fun Unit!25452 () Unit!25436)

(assert (=> b!1479674 (= lt!514060 Unit!25452)))

(assert (=> b!1479674 (rulesProduceIndividualToken!1302 thiss!27374 rules!4290 (h!21044 l2!3105))))

(declare-fun lt!514065 () Unit!25436)

(declare-fun lt!514064 () Unit!25436)

(assert (=> b!1479674 (= lt!514065 lt!514064)))

(assert (=> b!1479674 (rulesProduceIndividualToken!1302 thiss!27374 rules!4290 (h!21044 (t!137078 l2!3105)))))

(assert (=> b!1479674 (= lt!514064 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!483 thiss!27374 rules!4290 l2!3105 (h!21044 (t!137078 l2!3105))))))

(declare-fun lt!514061 () Unit!25436)

(declare-fun lt!514062 () Unit!25436)

(assert (=> b!1479674 (= lt!514061 lt!514062)))

(assert (=> b!1479674 (rulesProduceIndividualToken!1302 thiss!27374 rules!4290 (h!21044 l2!3105))))

(assert (=> b!1479674 (= lt!514062 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!483 thiss!27374 rules!4290 l2!3105 (h!21044 l2!3105)))))

(declare-fun b!1479675 () Bool)

(assert (=> b!1479675 (= e!945843 (tokensListTwoByTwoPredicateSeparableList!305 thiss!27374 (Cons!15643 (h!21044 (t!137078 l2!3105)) (t!137078 (t!137078 l2!3105))) rules!4290))))

(assert (= (and d!433866 (not res!668617)) b!1479674))

(assert (= (and b!1479674 res!668618) b!1479675))

(declare-fun m!1725295 () Bool)

(assert (=> b!1479674 m!1725295))

(declare-fun m!1725297 () Bool)

(assert (=> b!1479674 m!1725297))

(declare-fun m!1725299 () Bool)

(assert (=> b!1479674 m!1725299))

(declare-fun m!1725301 () Bool)

(assert (=> b!1479674 m!1725301))

(declare-fun m!1725303 () Bool)

(assert (=> b!1479674 m!1725303))

(assert (=> b!1479674 m!1725207))

(assert (=> b!1479674 m!1725297))

(declare-fun m!1725305 () Bool)

(assert (=> b!1479674 m!1725305))

(declare-fun m!1725307 () Bool)

(assert (=> b!1479675 m!1725307))

(assert (=> b!1479417 d!433866))

(declare-fun d!433868 () Bool)

(assert (=> d!433868 (= (isEmpty!9778 l1!3136) ((_ is Nil!15643) l1!3136))))

(assert (=> b!1479424 d!433868))

(declare-fun d!433870 () Bool)

(declare-fun res!668619 () Bool)

(declare-fun e!945844 () Bool)

(assert (=> d!433870 (=> (not res!668619) (not e!945844))))

(assert (=> d!433870 (= res!668619 (not (isEmpty!9783 (originalCharacters!3651 (h!21044 l1!3136)))))))

(assert (=> d!433870 (= (inv!20856 (h!21044 l1!3136)) e!945844)))

(declare-fun b!1479676 () Bool)

(declare-fun res!668620 () Bool)

(assert (=> b!1479676 (=> (not res!668620) (not e!945844))))

(assert (=> b!1479676 (= res!668620 (= (originalCharacters!3651 (h!21044 l1!3136)) (list!6218 (dynLambda!7114 (toChars!3983 (transformation!2789 (rule!4566 (h!21044 l1!3136)))) (value!89134 (h!21044 l1!3136))))))))

(declare-fun b!1479677 () Bool)

(assert (=> b!1479677 (= e!945844 (= (size!12661 (h!21044 l1!3136)) (size!12667 (originalCharacters!3651 (h!21044 l1!3136)))))))

(assert (= (and d!433870 res!668619) b!1479676))

(assert (= (and b!1479676 res!668620) b!1479677))

(declare-fun b_lambda!46317 () Bool)

(assert (=> (not b_lambda!46317) (not b!1479676)))

(declare-fun t!137119 () Bool)

(declare-fun tb!84443 () Bool)

(assert (=> (and b!1479418 (= (toChars!3983 (transformation!2789 (rule!4566 (h!21044 l2!3105)))) (toChars!3983 (transformation!2789 (rule!4566 (h!21044 l1!3136))))) t!137119) tb!84443))

(declare-fun b!1479678 () Bool)

(declare-fun e!945845 () Bool)

(declare-fun tp!419385 () Bool)

(assert (=> b!1479678 (= e!945845 (and (inv!20860 (c!242809 (dynLambda!7114 (toChars!3983 (transformation!2789 (rule!4566 (h!21044 l1!3136)))) (value!89134 (h!21044 l1!3136))))) tp!419385))))

(declare-fun result!101528 () Bool)

(assert (=> tb!84443 (= result!101528 (and (inv!20861 (dynLambda!7114 (toChars!3983 (transformation!2789 (rule!4566 (h!21044 l1!3136)))) (value!89134 (h!21044 l1!3136)))) e!945845))))

(assert (= tb!84443 b!1479678))

(declare-fun m!1725309 () Bool)

(assert (=> b!1479678 m!1725309))

(declare-fun m!1725311 () Bool)

(assert (=> tb!84443 m!1725311))

(assert (=> b!1479676 t!137119))

(declare-fun b_and!102527 () Bool)

(assert (= b_and!102521 (and (=> t!137119 result!101528) b_and!102527)))

(declare-fun t!137121 () Bool)

(declare-fun tb!84445 () Bool)

(assert (=> (and b!1479405 (= (toChars!3983 (transformation!2789 (rule!4566 (h!21044 l1!3136)))) (toChars!3983 (transformation!2789 (rule!4566 (h!21044 l1!3136))))) t!137121) tb!84445))

(declare-fun result!101530 () Bool)

(assert (= result!101530 result!101528))

(assert (=> b!1479676 t!137121))

(declare-fun b_and!102529 () Bool)

(assert (= b_and!102523 (and (=> t!137121 result!101530) b_and!102529)))

(declare-fun tb!84447 () Bool)

(declare-fun t!137123 () Bool)

(assert (=> (and b!1479420 (= (toChars!3983 (transformation!2789 (h!21043 rules!4290))) (toChars!3983 (transformation!2789 (rule!4566 (h!21044 l1!3136))))) t!137123) tb!84447))

(declare-fun result!101532 () Bool)

(assert (= result!101532 result!101528))

(assert (=> b!1479676 t!137123))

(declare-fun b_and!102531 () Bool)

(assert (= b_and!102525 (and (=> t!137123 result!101532) b_and!102531)))

(declare-fun m!1725313 () Bool)

(assert (=> d!433870 m!1725313))

(declare-fun m!1725315 () Bool)

(assert (=> b!1479676 m!1725315))

(assert (=> b!1479676 m!1725315))

(declare-fun m!1725317 () Bool)

(assert (=> b!1479676 m!1725317))

(declare-fun m!1725319 () Bool)

(assert (=> b!1479677 m!1725319))

(assert (=> b!1479403 d!433870))

(declare-fun d!433872 () Bool)

(declare-fun res!668621 () Bool)

(declare-fun e!945846 () Bool)

(assert (=> d!433872 (=> res!668621 e!945846)))

(assert (=> d!433872 (= res!668621 (or (not ((_ is Cons!15643) (t!137078 l1!3136))) (not ((_ is Cons!15643) (t!137078 (t!137078 l1!3136))))))))

(assert (=> d!433872 (= (tokensListTwoByTwoPredicateSeparableList!305 thiss!27374 (t!137078 l1!3136) rules!4290) e!945846)))

(declare-fun b!1479679 () Bool)

(declare-fun e!945847 () Bool)

(assert (=> b!1479679 (= e!945846 e!945847)))

(declare-fun res!668622 () Bool)

(assert (=> b!1479679 (=> (not res!668622) (not e!945847))))

(assert (=> b!1479679 (= res!668622 (separableTokensPredicate!584 thiss!27374 (h!21044 (t!137078 l1!3136)) (h!21044 (t!137078 (t!137078 l1!3136))) rules!4290))))

(declare-fun lt!514066 () Unit!25436)

(declare-fun Unit!25453 () Unit!25436)

(assert (=> b!1479679 (= lt!514066 Unit!25453)))

(assert (=> b!1479679 (> (size!12666 (charsOf!1597 (h!21044 (t!137078 (t!137078 l1!3136))))) 0)))

(declare-fun lt!514070 () Unit!25436)

(declare-fun Unit!25454 () Unit!25436)

(assert (=> b!1479679 (= lt!514070 Unit!25454)))

(assert (=> b!1479679 (rulesProduceIndividualToken!1302 thiss!27374 rules!4290 (h!21044 (t!137078 (t!137078 l1!3136))))))

(declare-fun lt!514067 () Unit!25436)

(declare-fun Unit!25455 () Unit!25436)

(assert (=> b!1479679 (= lt!514067 Unit!25455)))

(assert (=> b!1479679 (rulesProduceIndividualToken!1302 thiss!27374 rules!4290 (h!21044 (t!137078 l1!3136)))))

(declare-fun lt!514072 () Unit!25436)

(declare-fun lt!514071 () Unit!25436)

(assert (=> b!1479679 (= lt!514072 lt!514071)))

(assert (=> b!1479679 (rulesProduceIndividualToken!1302 thiss!27374 rules!4290 (h!21044 (t!137078 (t!137078 l1!3136))))))

(assert (=> b!1479679 (= lt!514071 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!483 thiss!27374 rules!4290 (t!137078 l1!3136) (h!21044 (t!137078 (t!137078 l1!3136)))))))

(declare-fun lt!514068 () Unit!25436)

(declare-fun lt!514069 () Unit!25436)

(assert (=> b!1479679 (= lt!514068 lt!514069)))

(assert (=> b!1479679 (rulesProduceIndividualToken!1302 thiss!27374 rules!4290 (h!21044 (t!137078 l1!3136)))))

(assert (=> b!1479679 (= lt!514069 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!483 thiss!27374 rules!4290 (t!137078 l1!3136) (h!21044 (t!137078 l1!3136))))))

(declare-fun b!1479680 () Bool)

(assert (=> b!1479680 (= e!945847 (tokensListTwoByTwoPredicateSeparableList!305 thiss!27374 (Cons!15643 (h!21044 (t!137078 (t!137078 l1!3136))) (t!137078 (t!137078 (t!137078 l1!3136)))) rules!4290))))

(assert (= (and d!433872 (not res!668621)) b!1479679))

(assert (= (and b!1479679 res!668622) b!1479680))

(declare-fun m!1725321 () Bool)

(assert (=> b!1479679 m!1725321))

(declare-fun m!1725323 () Bool)

(assert (=> b!1479679 m!1725323))

(declare-fun m!1725325 () Bool)

(assert (=> b!1479679 m!1725325))

(declare-fun m!1725327 () Bool)

(assert (=> b!1479679 m!1725327))

(declare-fun m!1725329 () Bool)

(assert (=> b!1479679 m!1725329))

(assert (=> b!1479679 m!1725231))

(assert (=> b!1479679 m!1725323))

(declare-fun m!1725331 () Bool)

(assert (=> b!1479679 m!1725331))

(declare-fun m!1725333 () Bool)

(assert (=> b!1479680 m!1725333))

(assert (=> b!1479413 d!433872))

(declare-fun bs!345795 () Bool)

(declare-fun d!433874 () Bool)

(assert (= bs!345795 (and d!433874 d!433806)))

(declare-fun lambda!63745 () Int)

(assert (=> bs!345795 (= lambda!63745 lambda!63742)))

(declare-fun bs!345796 () Bool)

(assert (= bs!345796 (and d!433874 d!433840)))

(assert (=> bs!345796 (= lambda!63745 lambda!63744)))

(declare-fun b!1479685 () Bool)

(declare-fun e!945852 () Bool)

(assert (=> b!1479685 (= e!945852 true)))

(declare-fun b!1479684 () Bool)

(declare-fun e!945851 () Bool)

(assert (=> b!1479684 (= e!945851 e!945852)))

(declare-fun b!1479683 () Bool)

(declare-fun e!945850 () Bool)

(assert (=> b!1479683 (= e!945850 e!945851)))

(assert (=> d!433874 e!945850))

(assert (= b!1479684 b!1479685))

(assert (= b!1479683 b!1479684))

(assert (= (and d!433874 ((_ is Cons!15642) rules!4290)) b!1479683))

(assert (=> b!1479685 (< (dynLambda!7111 order!9425 (toValue!4124 (transformation!2789 (h!21043 rules!4290)))) (dynLambda!7112 order!9427 lambda!63745))))

(assert (=> b!1479685 (< (dynLambda!7113 order!9429 (toChars!3983 (transformation!2789 (h!21043 rules!4290)))) (dynLambda!7112 order!9427 lambda!63745))))

(assert (=> d!433874 true))

(declare-fun lt!514073 () Bool)

(assert (=> d!433874 (= lt!514073 (forall!3806 (t!137078 l1!3136) lambda!63745))))

(declare-fun e!945849 () Bool)

(assert (=> d!433874 (= lt!514073 e!945849)))

(declare-fun res!668623 () Bool)

(assert (=> d!433874 (=> res!668623 e!945849)))

(assert (=> d!433874 (= res!668623 (not ((_ is Cons!15643) (t!137078 l1!3136))))))

(assert (=> d!433874 (not (isEmpty!9779 rules!4290))))

(assert (=> d!433874 (= (rulesProduceEachTokenIndividuallyList!812 thiss!27374 rules!4290 (t!137078 l1!3136)) lt!514073)))

(declare-fun b!1479681 () Bool)

(declare-fun e!945848 () Bool)

(assert (=> b!1479681 (= e!945849 e!945848)))

(declare-fun res!668624 () Bool)

(assert (=> b!1479681 (=> (not res!668624) (not e!945848))))

(assert (=> b!1479681 (= res!668624 (rulesProduceIndividualToken!1302 thiss!27374 rules!4290 (h!21044 (t!137078 l1!3136))))))

(declare-fun b!1479682 () Bool)

(assert (=> b!1479682 (= e!945848 (rulesProduceEachTokenIndividuallyList!812 thiss!27374 rules!4290 (t!137078 (t!137078 l1!3136))))))

(assert (= (and d!433874 (not res!668623)) b!1479681))

(assert (= (and b!1479681 res!668624) b!1479682))

(declare-fun m!1725335 () Bool)

(assert (=> d!433874 m!1725335))

(assert (=> d!433874 m!1724919))

(assert (=> b!1479681 m!1725231))

(declare-fun m!1725337 () Bool)

(assert (=> b!1479682 m!1725337))

(assert (=> b!1479404 d!433874))

(declare-fun d!433876 () Bool)

(assert (=> d!433876 (= (isEmpty!9779 rules!4290) ((_ is Nil!15642) rules!4290))))

(assert (=> b!1479415 d!433876))

(declare-fun b!1479686 () Bool)

(declare-fun e!945853 () Bool)

(assert (=> b!1479686 (= e!945853 (inv!15 (value!89134 (h!21044 l2!3105))))))

(declare-fun b!1479687 () Bool)

(declare-fun res!668625 () Bool)

(assert (=> b!1479687 (=> res!668625 e!945853)))

(assert (=> b!1479687 (= res!668625 (not ((_ is IntegerValue!8639) (value!89134 (h!21044 l2!3105)))))))

(declare-fun e!945854 () Bool)

(assert (=> b!1479687 (= e!945854 e!945853)))

(declare-fun d!433878 () Bool)

(declare-fun c!242834 () Bool)

(assert (=> d!433878 (= c!242834 ((_ is IntegerValue!8637) (value!89134 (h!21044 l2!3105))))))

(declare-fun e!945855 () Bool)

(assert (=> d!433878 (= (inv!21 (value!89134 (h!21044 l2!3105))) e!945855)))

(declare-fun b!1479688 () Bool)

(assert (=> b!1479688 (= e!945854 (inv!17 (value!89134 (h!21044 l2!3105))))))

(declare-fun b!1479689 () Bool)

(assert (=> b!1479689 (= e!945855 e!945854)))

(declare-fun c!242833 () Bool)

(assert (=> b!1479689 (= c!242833 ((_ is IntegerValue!8638) (value!89134 (h!21044 l2!3105))))))

(declare-fun b!1479690 () Bool)

(assert (=> b!1479690 (= e!945855 (inv!16 (value!89134 (h!21044 l2!3105))))))

(assert (= (and d!433878 c!242834) b!1479690))

(assert (= (and d!433878 (not c!242834)) b!1479689))

(assert (= (and b!1479689 c!242833) b!1479688))

(assert (= (and b!1479689 (not c!242833)) b!1479687))

(assert (= (and b!1479687 (not res!668625)) b!1479686))

(declare-fun m!1725339 () Bool)

(assert (=> b!1479686 m!1725339))

(declare-fun m!1725341 () Bool)

(assert (=> b!1479688 m!1725341))

(declare-fun m!1725343 () Bool)

(assert (=> b!1479690 m!1725343))

(assert (=> b!1479414 d!433878))

(declare-fun b!1479701 () Bool)

(declare-fun e!945858 () Bool)

(declare-fun tp_is_empty!6967 () Bool)

(assert (=> b!1479701 (= e!945858 tp_is_empty!6967)))

(declare-fun b!1479702 () Bool)

(declare-fun tp!419400 () Bool)

(declare-fun tp!419398 () Bool)

(assert (=> b!1479702 (= e!945858 (and tp!419400 tp!419398))))

(assert (=> b!1479411 (= tp!419312 e!945858)))

(declare-fun b!1479704 () Bool)

(declare-fun tp!419396 () Bool)

(declare-fun tp!419397 () Bool)

(assert (=> b!1479704 (= e!945858 (and tp!419396 tp!419397))))

(declare-fun b!1479703 () Bool)

(declare-fun tp!419399 () Bool)

(assert (=> b!1479703 (= e!945858 tp!419399)))

(assert (= (and b!1479411 ((_ is ElementMatch!4103) (regex!2789 (rule!4566 (h!21044 l1!3136))))) b!1479701))

(assert (= (and b!1479411 ((_ is Concat!6982) (regex!2789 (rule!4566 (h!21044 l1!3136))))) b!1479702))

(assert (= (and b!1479411 ((_ is Star!4103) (regex!2789 (rule!4566 (h!21044 l1!3136))))) b!1479703))

(assert (= (and b!1479411 ((_ is Union!4103) (regex!2789 (rule!4566 (h!21044 l1!3136))))) b!1479704))

(declare-fun b!1479709 () Bool)

(declare-fun e!945861 () Bool)

(declare-fun tp!419403 () Bool)

(assert (=> b!1479709 (= e!945861 (and tp_is_empty!6967 tp!419403))))

(assert (=> b!1479421 (= tp!419309 e!945861)))

(assert (= (and b!1479421 ((_ is Cons!15641) (originalCharacters!3651 (h!21044 l1!3136)))) b!1479709))

(declare-fun b!1479710 () Bool)

(declare-fun e!945862 () Bool)

(assert (=> b!1479710 (= e!945862 tp_is_empty!6967)))

(declare-fun b!1479711 () Bool)

(declare-fun tp!419408 () Bool)

(declare-fun tp!419406 () Bool)

(assert (=> b!1479711 (= e!945862 (and tp!419408 tp!419406))))

(assert (=> b!1479416 (= tp!419316 e!945862)))

(declare-fun b!1479713 () Bool)

(declare-fun tp!419404 () Bool)

(declare-fun tp!419405 () Bool)

(assert (=> b!1479713 (= e!945862 (and tp!419404 tp!419405))))

(declare-fun b!1479712 () Bool)

(declare-fun tp!419407 () Bool)

(assert (=> b!1479712 (= e!945862 tp!419407)))

(assert (= (and b!1479416 ((_ is ElementMatch!4103) (regex!2789 (rule!4566 (h!21044 l2!3105))))) b!1479710))

(assert (= (and b!1479416 ((_ is Concat!6982) (regex!2789 (rule!4566 (h!21044 l2!3105))))) b!1479711))

(assert (= (and b!1479416 ((_ is Star!4103) (regex!2789 (rule!4566 (h!21044 l2!3105))))) b!1479712))

(assert (= (and b!1479416 ((_ is Union!4103) (regex!2789 (rule!4566 (h!21044 l2!3105))))) b!1479713))

(declare-fun b!1479727 () Bool)

(declare-fun b_free!38103 () Bool)

(declare-fun b_next!38807 () Bool)

(assert (=> b!1479727 (= b_free!38103 (not b_next!38807))))

(declare-fun tp!419421 () Bool)

(declare-fun b_and!102533 () Bool)

(assert (=> b!1479727 (= tp!419421 b_and!102533)))

(declare-fun b_free!38105 () Bool)

(declare-fun b_next!38809 () Bool)

(assert (=> b!1479727 (= b_free!38105 (not b_next!38809))))

(declare-fun t!137125 () Bool)

(declare-fun tb!84449 () Bool)

(assert (=> (and b!1479727 (= (toChars!3983 (transformation!2789 (rule!4566 (h!21044 (t!137078 l2!3105))))) (toChars!3983 (transformation!2789 (rule!4566 (h!21044 l2!3105))))) t!137125) tb!84449))

(declare-fun result!101540 () Bool)

(assert (= result!101540 result!101520))

(assert (=> b!1479666 t!137125))

(declare-fun t!137127 () Bool)

(declare-fun tb!84451 () Bool)

(assert (=> (and b!1479727 (= (toChars!3983 (transformation!2789 (rule!4566 (h!21044 (t!137078 l2!3105))))) (toChars!3983 (transformation!2789 (rule!4566 (h!21044 l1!3136))))) t!137127) tb!84451))

(declare-fun result!101542 () Bool)

(assert (= result!101542 result!101528))

(assert (=> b!1479676 t!137127))

(declare-fun b_and!102535 () Bool)

(declare-fun tp!419422 () Bool)

(assert (=> b!1479727 (= tp!419422 (and (=> t!137125 result!101540) (=> t!137127 result!101542) b_and!102535))))

(declare-fun e!945877 () Bool)

(assert (=> b!1479727 (= e!945877 (and tp!419421 tp!419422))))

(declare-fun e!945878 () Bool)

(declare-fun b!1479725 () Bool)

(declare-fun tp!419419 () Bool)

(declare-fun e!945875 () Bool)

(assert (=> b!1479725 (= e!945875 (and (inv!21 (value!89134 (h!21044 (t!137078 l2!3105)))) e!945878 tp!419419))))

(declare-fun e!945879 () Bool)

(assert (=> b!1479407 (= tp!419314 e!945879)))

(declare-fun tp!419423 () Bool)

(declare-fun b!1479726 () Bool)

(assert (=> b!1479726 (= e!945878 (and tp!419423 (inv!20853 (tag!3053 (rule!4566 (h!21044 (t!137078 l2!3105))))) (inv!20857 (transformation!2789 (rule!4566 (h!21044 (t!137078 l2!3105))))) e!945877))))

(declare-fun b!1479724 () Bool)

(declare-fun tp!419420 () Bool)

(assert (=> b!1479724 (= e!945879 (and (inv!20856 (h!21044 (t!137078 l2!3105))) e!945875 tp!419420))))

(assert (= b!1479726 b!1479727))

(assert (= b!1479725 b!1479726))

(assert (= b!1479724 b!1479725))

(assert (= (and b!1479407 ((_ is Cons!15643) (t!137078 l2!3105))) b!1479724))

(declare-fun m!1725345 () Bool)

(assert (=> b!1479725 m!1725345))

(declare-fun m!1725347 () Bool)

(assert (=> b!1479726 m!1725347))

(declare-fun m!1725349 () Bool)

(assert (=> b!1479726 m!1725349))

(declare-fun m!1725351 () Bool)

(assert (=> b!1479724 m!1725351))

(declare-fun b!1479728 () Bool)

(declare-fun e!945881 () Bool)

(assert (=> b!1479728 (= e!945881 tp_is_empty!6967)))

(declare-fun b!1479729 () Bool)

(declare-fun tp!419428 () Bool)

(declare-fun tp!419426 () Bool)

(assert (=> b!1479729 (= e!945881 (and tp!419428 tp!419426))))

(assert (=> b!1479406 (= tp!419308 e!945881)))

(declare-fun b!1479731 () Bool)

(declare-fun tp!419424 () Bool)

(declare-fun tp!419425 () Bool)

(assert (=> b!1479731 (= e!945881 (and tp!419424 tp!419425))))

(declare-fun b!1479730 () Bool)

(declare-fun tp!419427 () Bool)

(assert (=> b!1479730 (= e!945881 tp!419427)))

(assert (= (and b!1479406 ((_ is ElementMatch!4103) (regex!2789 (h!21043 rules!4290)))) b!1479728))

(assert (= (and b!1479406 ((_ is Concat!6982) (regex!2789 (h!21043 rules!4290)))) b!1479729))

(assert (= (and b!1479406 ((_ is Star!4103) (regex!2789 (h!21043 rules!4290)))) b!1479730))

(assert (= (and b!1479406 ((_ is Union!4103) (regex!2789 (h!21043 rules!4290)))) b!1479731))

(declare-fun b!1479735 () Bool)

(declare-fun b_free!38107 () Bool)

(declare-fun b_next!38811 () Bool)

(assert (=> b!1479735 (= b_free!38107 (not b_next!38811))))

(declare-fun tp!419431 () Bool)

(declare-fun b_and!102537 () Bool)

(assert (=> b!1479735 (= tp!419431 b_and!102537)))

(declare-fun b_free!38109 () Bool)

(declare-fun b_next!38813 () Bool)

(assert (=> b!1479735 (= b_free!38109 (not b_next!38813))))

(declare-fun t!137129 () Bool)

(declare-fun tb!84453 () Bool)

(assert (=> (and b!1479735 (= (toChars!3983 (transformation!2789 (rule!4566 (h!21044 (t!137078 l1!3136))))) (toChars!3983 (transformation!2789 (rule!4566 (h!21044 l2!3105))))) t!137129) tb!84453))

(declare-fun result!101544 () Bool)

(assert (= result!101544 result!101520))

(assert (=> b!1479666 t!137129))

(declare-fun t!137131 () Bool)

(declare-fun tb!84455 () Bool)

(assert (=> (and b!1479735 (= (toChars!3983 (transformation!2789 (rule!4566 (h!21044 (t!137078 l1!3136))))) (toChars!3983 (transformation!2789 (rule!4566 (h!21044 l1!3136))))) t!137131) tb!84455))

(declare-fun result!101546 () Bool)

(assert (= result!101546 result!101528))

(assert (=> b!1479676 t!137131))

(declare-fun b_and!102539 () Bool)

(declare-fun tp!419432 () Bool)

(assert (=> b!1479735 (= tp!419432 (and (=> t!137129 result!101544) (=> t!137131 result!101546) b_and!102539))))

(declare-fun e!945884 () Bool)

(assert (=> b!1479735 (= e!945884 (and tp!419431 tp!419432))))

(declare-fun e!945885 () Bool)

(declare-fun tp!419429 () Bool)

(declare-fun e!945882 () Bool)

(declare-fun b!1479733 () Bool)

(assert (=> b!1479733 (= e!945882 (and (inv!21 (value!89134 (h!21044 (t!137078 l1!3136)))) e!945885 tp!419429))))

(declare-fun e!945886 () Bool)

(assert (=> b!1479403 (= tp!419304 e!945886)))

(declare-fun tp!419433 () Bool)

(declare-fun b!1479734 () Bool)

(assert (=> b!1479734 (= e!945885 (and tp!419433 (inv!20853 (tag!3053 (rule!4566 (h!21044 (t!137078 l1!3136))))) (inv!20857 (transformation!2789 (rule!4566 (h!21044 (t!137078 l1!3136))))) e!945884))))

(declare-fun tp!419430 () Bool)

(declare-fun b!1479732 () Bool)

(assert (=> b!1479732 (= e!945886 (and (inv!20856 (h!21044 (t!137078 l1!3136))) e!945882 tp!419430))))

(assert (= b!1479734 b!1479735))

(assert (= b!1479733 b!1479734))

(assert (= b!1479732 b!1479733))

(assert (= (and b!1479403 ((_ is Cons!15643) (t!137078 l1!3136))) b!1479732))

(declare-fun m!1725353 () Bool)

(assert (=> b!1479733 m!1725353))

(declare-fun m!1725355 () Bool)

(assert (=> b!1479734 m!1725355))

(declare-fun m!1725357 () Bool)

(assert (=> b!1479734 m!1725357))

(declare-fun m!1725359 () Bool)

(assert (=> b!1479732 m!1725359))

(declare-fun b!1479736 () Bool)

(declare-fun e!945888 () Bool)

(declare-fun tp!419434 () Bool)

(assert (=> b!1479736 (= e!945888 (and tp_is_empty!6967 tp!419434))))

(assert (=> b!1479414 (= tp!419313 e!945888)))

(assert (= (and b!1479414 ((_ is Cons!15641) (originalCharacters!3651 (h!21044 l2!3105)))) b!1479736))

(declare-fun b!1479747 () Bool)

(declare-fun b_free!38111 () Bool)

(declare-fun b_next!38815 () Bool)

(assert (=> b!1479747 (= b_free!38111 (not b_next!38815))))

(declare-fun tp!419444 () Bool)

(declare-fun b_and!102541 () Bool)

(assert (=> b!1479747 (= tp!419444 b_and!102541)))

(declare-fun b_free!38113 () Bool)

(declare-fun b_next!38817 () Bool)

(assert (=> b!1479747 (= b_free!38113 (not b_next!38817))))

(declare-fun tb!84457 () Bool)

(declare-fun t!137133 () Bool)

(assert (=> (and b!1479747 (= (toChars!3983 (transformation!2789 (h!21043 (t!137077 rules!4290)))) (toChars!3983 (transformation!2789 (rule!4566 (h!21044 l2!3105))))) t!137133) tb!84457))

(declare-fun result!101550 () Bool)

(assert (= result!101550 result!101520))

(assert (=> b!1479666 t!137133))

(declare-fun tb!84459 () Bool)

(declare-fun t!137135 () Bool)

(assert (=> (and b!1479747 (= (toChars!3983 (transformation!2789 (h!21043 (t!137077 rules!4290)))) (toChars!3983 (transformation!2789 (rule!4566 (h!21044 l1!3136))))) t!137135) tb!84459))

(declare-fun result!101552 () Bool)

(assert (= result!101552 result!101528))

(assert (=> b!1479676 t!137135))

(declare-fun b_and!102543 () Bool)

(declare-fun tp!419445 () Bool)

(assert (=> b!1479747 (= tp!419445 (and (=> t!137133 result!101550) (=> t!137135 result!101552) b_and!102543))))

(declare-fun e!945900 () Bool)

(assert (=> b!1479747 (= e!945900 (and tp!419444 tp!419445))))

(declare-fun e!945898 () Bool)

(declare-fun tp!419446 () Bool)

(declare-fun b!1479746 () Bool)

(assert (=> b!1479746 (= e!945898 (and tp!419446 (inv!20853 (tag!3053 (h!21043 (t!137077 rules!4290)))) (inv!20857 (transformation!2789 (h!21043 (t!137077 rules!4290)))) e!945900))))

(declare-fun b!1479745 () Bool)

(declare-fun e!945897 () Bool)

(declare-fun tp!419443 () Bool)

(assert (=> b!1479745 (= e!945897 (and e!945898 tp!419443))))

(assert (=> b!1479425 (= tp!419310 e!945897)))

(assert (= b!1479746 b!1479747))

(assert (= b!1479745 b!1479746))

(assert (= (and b!1479425 ((_ is Cons!15642) (t!137077 rules!4290))) b!1479745))

(declare-fun m!1725361 () Bool)

(assert (=> b!1479746 m!1725361))

(declare-fun m!1725363 () Bool)

(assert (=> b!1479746 m!1725363))

(declare-fun b_lambda!46319 () Bool)

(assert (= b_lambda!46315 (or (and b!1479735 b_free!38109 (= (toChars!3983 (transformation!2789 (rule!4566 (h!21044 (t!137078 l1!3136))))) (toChars!3983 (transformation!2789 (rule!4566 (h!21044 l2!3105)))))) (and b!1479747 b_free!38113 (= (toChars!3983 (transformation!2789 (h!21043 (t!137077 rules!4290)))) (toChars!3983 (transformation!2789 (rule!4566 (h!21044 l2!3105)))))) (and b!1479727 b_free!38105 (= (toChars!3983 (transformation!2789 (rule!4566 (h!21044 (t!137078 l2!3105))))) (toChars!3983 (transformation!2789 (rule!4566 (h!21044 l2!3105)))))) (and b!1479405 b_free!38085 (= (toChars!3983 (transformation!2789 (rule!4566 (h!21044 l1!3136)))) (toChars!3983 (transformation!2789 (rule!4566 (h!21044 l2!3105)))))) (and b!1479420 b_free!38089 (= (toChars!3983 (transformation!2789 (h!21043 rules!4290))) (toChars!3983 (transformation!2789 (rule!4566 (h!21044 l2!3105)))))) (and b!1479418 b_free!38081) b_lambda!46319)))

(declare-fun b_lambda!46321 () Bool)

(assert (= b_lambda!46317 (or (and b!1479735 b_free!38109 (= (toChars!3983 (transformation!2789 (rule!4566 (h!21044 (t!137078 l1!3136))))) (toChars!3983 (transformation!2789 (rule!4566 (h!21044 l1!3136)))))) (and b!1479405 b_free!38085) (and b!1479727 b_free!38105 (= (toChars!3983 (transformation!2789 (rule!4566 (h!21044 (t!137078 l2!3105))))) (toChars!3983 (transformation!2789 (rule!4566 (h!21044 l1!3136)))))) (and b!1479418 b_free!38081 (= (toChars!3983 (transformation!2789 (rule!4566 (h!21044 l2!3105)))) (toChars!3983 (transformation!2789 (rule!4566 (h!21044 l1!3136)))))) (and b!1479747 b_free!38113 (= (toChars!3983 (transformation!2789 (h!21043 (t!137077 rules!4290)))) (toChars!3983 (transformation!2789 (rule!4566 (h!21044 l1!3136)))))) (and b!1479420 b_free!38089 (= (toChars!3983 (transformation!2789 (h!21043 rules!4290))) (toChars!3983 (transformation!2789 (rule!4566 (h!21044 l1!3136)))))) b_lambda!46321)))

(check-sat (not b!1479474) b_and!102489 (not d!433860) (not d!433768) (not b_next!38811) (not b!1479487) (not b!1479660) (not d!433874) b_and!102537 (not b!1479734) (not b!1479491) (not b_next!38787) b_and!102527 (not b!1479678) (not b!1479745) (not d!433852) (not b!1479563) (not b!1479736) b_and!102533 (not b!1479709) b_and!102485 b_and!102541 (not b!1479724) (not d!433858) (not d!433848) b_and!102529 (not b!1479730) (not b!1479476) (not b_next!38817) (not b_next!38789) (not tb!84443) (not b!1479456) (not b!1479688) (not b!1479703) (not b!1479580) (not b!1479431) (not d!433840) (not b!1479658) b_and!102531 (not d!433800) (not tb!84437) (not d!433798) (not b!1479746) (not b_lambda!46321) (not b!1479676) (not b!1479733) (not b!1479661) (not b!1479690) (not b!1479666) (not b_next!38815) b_and!102493 (not b!1479656) (not b!1479677) (not b!1479682) (not b!1479562) (not b_next!38807) (not b!1479655) (not b!1479725) (not b!1479621) (not d!433780) b_and!102543 (not b!1479654) (not b!1479657) (not b_next!38813) (not b!1479681) (not d!433802) (not b!1479469) b_and!102535 (not d!433850) (not b!1479712) (not b_lambda!46319) (not b!1479683) (not b!1479617) (not b!1479672) (not b_next!38785) (not b!1479704) (not b!1479674) (not b!1479673) (not b!1479679) (not b!1479713) (not b!1479489) tp_is_empty!6967 (not d!433756) (not b!1479620) (not b_next!38793) b_and!102539 (not b!1479729) (not b!1479458) (not b!1479624) (not d!433796) (not b!1479702) (not b!1479731) (not b_next!38783) (not b!1479686) (not b_next!38791) (not b!1479475) (not d!433806) (not b!1479726) (not d!433846) (not b!1479457) (not b!1479732) (not d!433864) (not d!433870) (not b_next!38809) (not b!1479667) (not d!433838) (not b!1479675) (not b!1479711) (not b!1479680))
(check-sat (not b_next!38811) b_and!102537 b_and!102533 b_and!102531 (not b_next!38815) b_and!102493 b_and!102489 (not b_next!38807) b_and!102543 (not b_next!38813) b_and!102535 (not b_next!38785) (not b_next!38809) (not b_next!38787) b_and!102527 b_and!102485 b_and!102541 b_and!102529 (not b_next!38817) (not b_next!38789) (not b_next!38793) b_and!102539 (not b_next!38783) (not b_next!38791))
