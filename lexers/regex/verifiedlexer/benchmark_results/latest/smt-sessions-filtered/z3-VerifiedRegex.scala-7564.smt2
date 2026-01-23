; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!398958 () Bool)

(assert start!398958)

(declare-fun b!4183047 () Bool)

(declare-fun b_free!121607 () Bool)

(declare-fun b_next!122311 () Bool)

(assert (=> b!4183047 (= b_free!121607 (not b_next!122311))))

(declare-fun tp!1278481 () Bool)

(declare-fun b_and!327309 () Bool)

(assert (=> b!4183047 (= tp!1278481 b_and!327309)))

(declare-fun b_free!121609 () Bool)

(declare-fun b_next!122313 () Bool)

(assert (=> b!4183047 (= b_free!121609 (not b_next!122313))))

(declare-fun tp!1278492 () Bool)

(declare-fun b_and!327311 () Bool)

(assert (=> b!4183047 (= tp!1278492 b_and!327311)))

(declare-fun b!4183060 () Bool)

(declare-fun b_free!121611 () Bool)

(declare-fun b_next!122315 () Bool)

(assert (=> b!4183060 (= b_free!121611 (not b_next!122315))))

(declare-fun tp!1278484 () Bool)

(declare-fun b_and!327313 () Bool)

(assert (=> b!4183060 (= tp!1278484 b_and!327313)))

(declare-fun b_free!121613 () Bool)

(declare-fun b_next!122317 () Bool)

(assert (=> b!4183060 (= b_free!121613 (not b_next!122317))))

(declare-fun tp!1278485 () Bool)

(declare-fun b_and!327315 () Bool)

(assert (=> b!4183060 (= tp!1278485 b_and!327315)))

(declare-fun b!4183068 () Bool)

(declare-fun b_free!121615 () Bool)

(declare-fun b_next!122319 () Bool)

(assert (=> b!4183068 (= b_free!121615 (not b_next!122319))))

(declare-fun tp!1278483 () Bool)

(declare-fun b_and!327317 () Bool)

(assert (=> b!4183068 (= tp!1278483 b_and!327317)))

(declare-fun b_free!121617 () Bool)

(declare-fun b_next!122321 () Bool)

(assert (=> b!4183068 (= b_free!121617 (not b_next!122321))))

(declare-fun tp!1278491 () Bool)

(declare-fun b_and!327319 () Bool)

(assert (=> b!4183068 (= tp!1278491 b_and!327319)))

(declare-fun b!4183045 () Bool)

(declare-fun e!2596906 () Bool)

(declare-fun e!2596907 () Bool)

(assert (=> b!4183045 (= e!2596906 (not e!2596907))))

(declare-fun res!1715500 () Bool)

(assert (=> b!4183045 (=> res!1715500 e!2596907)))

(declare-datatypes ((C!25288 0))(
  ( (C!25289 (val!14806 Int)) )
))
(declare-datatypes ((List!46049 0))(
  ( (Nil!45925) (Cons!45925 (h!51345 C!25288) (t!345218 List!46049)) )
))
(declare-fun input!3342 () List!46049)

(declare-datatypes ((List!46050 0))(
  ( (Nil!45926) (Cons!45926 (h!51346 (_ BitVec 16)) (t!345219 List!46050)) )
))
(declare-datatypes ((TokenValue!7874 0))(
  ( (FloatLiteralValue!15748 (text!55563 List!46050)) (TokenValueExt!7873 (__x!27969 Int)) (Broken!39370 (value!238360 List!46050)) (Object!7997) (End!7874) (Def!7874) (Underscore!7874) (Match!7874) (Else!7874) (Error!7874) (Case!7874) (If!7874) (Extends!7874) (Abstract!7874) (Class!7874) (Val!7874) (DelimiterValue!15748 (del!7934 List!46050)) (KeywordValue!7880 (value!238361 List!46050)) (CommentValue!15748 (value!238362 List!46050)) (WhitespaceValue!15748 (value!238363 List!46050)) (IndentationValue!7874 (value!238364 List!46050)) (String!53235) (Int32!7874) (Broken!39371 (value!238365 List!46050)) (Boolean!7875) (Unit!65010) (OperatorValue!7877 (op!7934 List!46050)) (IdentifierValue!15748 (value!238366 List!46050)) (IdentifierValue!15749 (value!238367 List!46050)) (WhitespaceValue!15749 (value!238368 List!46050)) (True!15748) (False!15748) (Broken!39372 (value!238369 List!46050)) (Broken!39373 (value!238370 List!46050)) (True!15749) (RightBrace!7874) (RightBracket!7874) (Colon!7874) (Null!7874) (Comma!7874) (LeftBracket!7874) (False!15749) (LeftBrace!7874) (ImaginaryLiteralValue!7874 (text!55564 List!46050)) (StringLiteralValue!23622 (value!238371 List!46050)) (EOFValue!7874 (value!238372 List!46050)) (IdentValue!7874 (value!238373 List!46050)) (DelimiterValue!15749 (value!238374 List!46050)) (DedentValue!7874 (value!238375 List!46050)) (NewLineValue!7874 (value!238376 List!46050)) (IntegerValue!23622 (value!238377 (_ BitVec 32)) (text!55565 List!46050)) (IntegerValue!23623 (value!238378 Int) (text!55566 List!46050)) (Times!7874) (Or!7874) (Equal!7874) (Minus!7874) (Broken!39374 (value!238379 List!46050)) (And!7874) (Div!7874) (LessEqual!7874) (Mod!7874) (Concat!20423) (Not!7874) (Plus!7874) (SpaceValue!7874 (value!238380 List!46050)) (IntegerValue!23624 (value!238381 Int) (text!55567 List!46050)) (StringLiteralValue!23623 (text!55568 List!46050)) (FloatLiteralValue!15749 (text!55569 List!46050)) (BytesLiteralValue!7874 (value!238382 List!46050)) (CommentValue!15749 (value!238383 List!46050)) (StringLiteralValue!23624 (value!238384 List!46050)) (ErrorTokenValue!7874 (msg!7935 List!46050)) )
))
(declare-datatypes ((IArray!27715 0))(
  ( (IArray!27716 (innerList!13915 List!46049)) )
))
(declare-datatypes ((Conc!13855 0))(
  ( (Node!13855 (left!34211 Conc!13855) (right!34541 Conc!13855) (csize!27940 Int) (cheight!14066 Int)) (Leaf!21420 (xs!17161 IArray!27715) (csize!27941 Int)) (Empty!13855) )
))
(declare-datatypes ((BalanceConc!27304 0))(
  ( (BalanceConc!27305 (c!714182 Conc!13855)) )
))
(declare-datatypes ((String!53236 0))(
  ( (String!53237 (value!238385 String)) )
))
(declare-datatypes ((Regex!12549 0))(
  ( (ElementMatch!12549 (c!714183 C!25288)) (Concat!20424 (regOne!25610 Regex!12549) (regTwo!25610 Regex!12549)) (EmptyExpr!12549) (Star!12549 (reg!12878 Regex!12549)) (EmptyLang!12549) (Union!12549 (regOne!25611 Regex!12549) (regTwo!25611 Regex!12549)) )
))
(declare-datatypes ((TokenValueInjection!15176 0))(
  ( (TokenValueInjection!15177 (toValue!10336 Int) (toChars!10195 Int)) )
))
(declare-datatypes ((Rule!15088 0))(
  ( (Rule!15089 (regex!7644 Regex!12549) (tag!8508 String!53236) (isSeparator!7644 Bool) (transformation!7644 TokenValueInjection!15176)) )
))
(declare-fun r!4142 () Rule!15088)

(declare-datatypes ((LexerInterface!7237 0))(
  ( (LexerInterfaceExt!7234 (__x!27970 Int)) (Lexer!7235) )
))
(declare-fun thiss!25986 () LexerInterface!7237)

(declare-datatypes ((Token!14002 0))(
  ( (Token!14003 (value!238386 TokenValue!7874) (rule!10710 Rule!15088) (size!33727 Int) (originalCharacters!8032 List!46049)) )
))
(declare-datatypes ((tuple2!43734 0))(
  ( (tuple2!43735 (_1!25001 Token!14002) (_2!25001 List!46049)) )
))
(declare-datatypes ((Option!9838 0))(
  ( (None!9837) (Some!9837 (v!40651 tuple2!43734)) )
))
(declare-fun lt!1489626 () Option!9838)

(declare-fun maxPrefixOneRule!3246 (LexerInterface!7237 Rule!15088 List!46049) Option!9838)

(assert (=> b!4183045 (= res!1715500 (not (= (maxPrefixOneRule!3246 thiss!25986 r!4142 input!3342) lt!1489626)))))

(declare-fun p!2959 () List!46049)

(declare-fun lt!1489633 () Token!14002)

(declare-fun getSuffix!2794 (List!46049 List!46049) List!46049)

(assert (=> b!4183045 (= lt!1489626 (Some!9837 (tuple2!43735 lt!1489633 (getSuffix!2794 input!3342 p!2959))))))

(declare-fun lt!1489635 () Int)

(declare-fun lt!1489625 () TokenValue!7874)

(assert (=> b!4183045 (= lt!1489633 (Token!14003 lt!1489625 r!4142 lt!1489635 p!2959))))

(declare-fun size!33728 (List!46049) Int)

(assert (=> b!4183045 (= lt!1489635 (size!33728 p!2959))))

(declare-fun lt!1489628 () BalanceConc!27304)

(declare-fun apply!10609 (TokenValueInjection!15176 BalanceConc!27304) TokenValue!7874)

(assert (=> b!4183045 (= lt!1489625 (apply!10609 (transformation!7644 r!4142) lt!1489628))))

(declare-fun isPrefix!4501 (List!46049 List!46049) Bool)

(assert (=> b!4183045 (isPrefix!4501 input!3342 input!3342)))

(declare-datatypes ((Unit!65011 0))(
  ( (Unit!65012) )
))
(declare-fun lt!1489634 () Unit!65011)

(declare-fun lemmaIsPrefixRefl!2930 (List!46049 List!46049) Unit!65011)

(assert (=> b!4183045 (= lt!1489634 (lemmaIsPrefixRefl!2930 input!3342 input!3342))))

(declare-fun lt!1489627 () Unit!65011)

(declare-fun lemmaSemiInverse!2410 (TokenValueInjection!15176 BalanceConc!27304) Unit!65011)

(assert (=> b!4183045 (= lt!1489627 (lemmaSemiInverse!2410 (transformation!7644 r!4142) lt!1489628))))

(declare-fun seqFromList!5669 (List!46049) BalanceConc!27304)

(assert (=> b!4183045 (= lt!1489628 (seqFromList!5669 p!2959))))

(declare-fun b!4183046 () Bool)

(declare-fun res!1715496 () Bool)

(assert (=> b!4183046 (=> (not res!1715496) (not e!2596906))))

(assert (=> b!4183046 (= res!1715496 (isPrefix!4501 p!2959 input!3342))))

(declare-fun e!2596899 () Bool)

(assert (=> b!4183047 (= e!2596899 (and tp!1278481 tp!1278492))))

(declare-fun b!4183048 () Bool)

(declare-fun res!1715493 () Bool)

(assert (=> b!4183048 (=> (not res!1715493) (not e!2596906))))

(declare-fun matchR!6288 (Regex!12549 List!46049) Bool)

(assert (=> b!4183048 (= res!1715493 (matchR!6288 (regex!7644 r!4142) p!2959))))

(declare-fun b!4183049 () Bool)

(declare-fun res!1715498 () Bool)

(assert (=> b!4183049 (=> (not res!1715498) (not e!2596906))))

(declare-datatypes ((List!46051 0))(
  ( (Nil!45927) (Cons!45927 (h!51347 Rule!15088) (t!345220 List!46051)) )
))
(declare-fun rules!3843 () List!46051)

(declare-fun isEmpty!27176 (List!46051) Bool)

(assert (=> b!4183049 (= res!1715498 (not (isEmpty!27176 rules!3843)))))

(declare-fun b!4183051 () Bool)

(declare-fun res!1715491 () Bool)

(assert (=> b!4183051 (=> (not res!1715491) (not e!2596906))))

(declare-fun validRegex!5666 (Regex!12549) Bool)

(assert (=> b!4183051 (= res!1715491 (validRegex!5666 (regex!7644 r!4142)))))

(declare-fun b!4183052 () Bool)

(declare-fun e!2596900 () Bool)

(declare-fun tp_is_empty!22061 () Bool)

(declare-fun tp!1278482 () Bool)

(assert (=> b!4183052 (= e!2596900 (and tp_is_empty!22061 tp!1278482))))

(declare-fun b!4183053 () Bool)

(declare-fun res!1715487 () Bool)

(declare-fun e!2596908 () Bool)

(assert (=> b!4183053 (=> res!1715487 e!2596908)))

(declare-fun maxPrefix!4285 (LexerInterface!7237 List!46051 List!46049) Option!9838)

(assert (=> b!4183053 (= res!1715487 (not (= (maxPrefix!4285 thiss!25986 rules!3843 input!3342) lt!1489626)))))

(declare-fun e!2596909 () Bool)

(declare-fun e!2596902 () Bool)

(declare-fun tp!1278480 () Bool)

(declare-fun rBis!167 () Rule!15088)

(declare-fun b!4183054 () Bool)

(declare-fun inv!60463 (String!53236) Bool)

(declare-fun inv!60466 (TokenValueInjection!15176) Bool)

(assert (=> b!4183054 (= e!2596902 (and tp!1278480 (inv!60463 (tag!8508 rBis!167)) (inv!60466 (transformation!7644 rBis!167)) e!2596909))))

(declare-fun e!2596896 () Bool)

(declare-fun tp!1278488 () Bool)

(declare-fun b!4183055 () Bool)

(assert (=> b!4183055 (= e!2596896 (and tp!1278488 (inv!60463 (tag!8508 (h!51347 rules!3843))) (inv!60466 (transformation!7644 (h!51347 rules!3843))) e!2596899))))

(declare-fun b!4183056 () Bool)

(declare-fun e!2596904 () Bool)

(declare-fun e!2596901 () Bool)

(assert (=> b!4183056 (= e!2596904 e!2596901)))

(declare-fun res!1715489 () Bool)

(assert (=> b!4183056 (=> res!1715489 e!2596901)))

(declare-fun lt!1489629 () List!46049)

(declare-fun pBis!107 () List!46049)

(assert (=> b!4183056 (= res!1715489 (not (= lt!1489629 pBis!107)))))

(declare-fun lt!1489624 () tuple2!43734)

(declare-fun ++!11716 (List!46049 List!46049) List!46049)

(assert (=> b!4183056 (isPrefix!4501 lt!1489629 (++!11716 lt!1489629 (_2!25001 lt!1489624)))))

(declare-fun lt!1489630 () Unit!65011)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2998 (List!46049 List!46049) Unit!65011)

(assert (=> b!4183056 (= lt!1489630 (lemmaConcatTwoListThenFirstIsPrefix!2998 lt!1489629 (_2!25001 lt!1489624)))))

(declare-fun list!16585 (BalanceConc!27304) List!46049)

(declare-fun charsOf!5079 (Token!14002) BalanceConc!27304)

(assert (=> b!4183056 (= lt!1489629 (list!16585 (charsOf!5079 (_1!25001 lt!1489624))))))

(declare-fun lt!1489632 () Option!9838)

(declare-fun get!14925 (Option!9838) tuple2!43734)

(assert (=> b!4183056 (= lt!1489624 (get!14925 lt!1489632))))

(declare-fun b!4183057 () Bool)

(declare-fun res!1715502 () Bool)

(assert (=> b!4183057 (=> (not res!1715502) (not e!2596906))))

(declare-fun contains!9451 (List!46051 Rule!15088) Bool)

(assert (=> b!4183057 (= res!1715502 (contains!9451 rules!3843 rBis!167))))

(declare-fun b!4183058 () Bool)

(declare-fun e!2596897 () Bool)

(declare-fun tp!1278490 () Bool)

(declare-fun e!2596911 () Bool)

(assert (=> b!4183058 (= e!2596897 (and tp!1278490 (inv!60463 (tag!8508 r!4142)) (inv!60466 (transformation!7644 r!4142)) e!2596911))))

(declare-fun b!4183059 () Bool)

(declare-fun res!1715499 () Bool)

(assert (=> b!4183059 (=> res!1715499 e!2596908)))

(declare-fun ruleValid!3362 (LexerInterface!7237 Rule!15088) Bool)

(assert (=> b!4183059 (= res!1715499 (not (ruleValid!3362 thiss!25986 rBis!167)))))

(assert (=> b!4183060 (= e!2596909 (and tp!1278484 tp!1278485))))

(declare-fun b!4183061 () Bool)

(declare-fun res!1715488 () Bool)

(assert (=> b!4183061 (=> (not res!1715488) (not e!2596906))))

(assert (=> b!4183061 (= res!1715488 (contains!9451 rules!3843 r!4142))))

(declare-fun b!4183062 () Bool)

(declare-fun e!2596898 () Bool)

(declare-fun tp!1278487 () Bool)

(assert (=> b!4183062 (= e!2596898 (and e!2596896 tp!1278487))))

(declare-fun b!4183063 () Bool)

(declare-fun res!1715497 () Bool)

(assert (=> b!4183063 (=> (not res!1715497) (not e!2596906))))

(assert (=> b!4183063 (= res!1715497 (ruleValid!3362 thiss!25986 r!4142))))

(declare-fun b!4183064 () Bool)

(declare-fun res!1715492 () Bool)

(assert (=> b!4183064 (=> (not res!1715492) (not e!2596906))))

(assert (=> b!4183064 (= res!1715492 (isPrefix!4501 pBis!107 input!3342))))

(declare-fun res!1715490 () Bool)

(assert (=> start!398958 (=> (not res!1715490) (not e!2596906))))

(get-info :version)

(assert (=> start!398958 (= res!1715490 ((_ is Lexer!7235) thiss!25986))))

(assert (=> start!398958 e!2596906))

(assert (=> start!398958 true))

(assert (=> start!398958 e!2596902))

(assert (=> start!398958 e!2596897))

(assert (=> start!398958 e!2596898))

(declare-fun e!2596910 () Bool)

(assert (=> start!398958 e!2596910))

(declare-fun e!2596905 () Bool)

(assert (=> start!398958 e!2596905))

(assert (=> start!398958 e!2596900))

(declare-fun b!4183050 () Bool)

(assert (=> b!4183050 (= e!2596908 e!2596904)))

(declare-fun res!1715501 () Bool)

(assert (=> b!4183050 (=> res!1715501 e!2596904)))

(declare-fun isEmpty!27177 (Option!9838) Bool)

(assert (=> b!4183050 (= res!1715501 (isEmpty!27177 lt!1489632))))

(assert (=> b!4183050 (= lt!1489632 (maxPrefixOneRule!3246 thiss!25986 rBis!167 input!3342))))

(declare-fun lt!1489623 () Unit!65011)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2368 (LexerInterface!7237 Rule!15088 List!46051) Unit!65011)

(assert (=> b!4183050 (= lt!1489623 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2368 thiss!25986 rBis!167 rules!3843))))

(declare-fun lt!1489636 () Int)

(assert (=> b!4183050 (<= lt!1489636 (size!33728 input!3342))))

(declare-fun lt!1489631 () Unit!65011)

(declare-fun lemmaIsPrefixThenSmallerEqSize!531 (List!46049 List!46049) Unit!65011)

(assert (=> b!4183050 (= lt!1489631 (lemmaIsPrefixThenSmallerEqSize!531 pBis!107 input!3342))))

(declare-fun b!4183065 () Bool)

(assert (=> b!4183065 (= e!2596907 e!2596908)))

(declare-fun res!1715495 () Bool)

(assert (=> b!4183065 (=> res!1715495 e!2596908)))

(assert (=> b!4183065 (= res!1715495 (<= lt!1489636 lt!1489635))))

(assert (=> b!4183065 (= lt!1489636 (size!33728 pBis!107))))

(declare-fun b!4183066 () Bool)

(declare-fun inv!60467 (Token!14002) Bool)

(assert (=> b!4183066 (= e!2596901 (inv!60467 lt!1489633))))

(declare-fun b!4183067 () Bool)

(declare-fun tp!1278489 () Bool)

(assert (=> b!4183067 (= e!2596910 (and tp_is_empty!22061 tp!1278489))))

(assert (=> b!4183068 (= e!2596911 (and tp!1278483 tp!1278491))))

(declare-fun b!4183069 () Bool)

(declare-fun tp!1278486 () Bool)

(assert (=> b!4183069 (= e!2596905 (and tp_is_empty!22061 tp!1278486))))

(declare-fun b!4183070 () Bool)

(declare-fun res!1715494 () Bool)

(assert (=> b!4183070 (=> (not res!1715494) (not e!2596906))))

(declare-fun rulesInvariant!6450 (LexerInterface!7237 List!46051) Bool)

(assert (=> b!4183070 (= res!1715494 (rulesInvariant!6450 thiss!25986 rules!3843))))

(assert (= (and start!398958 res!1715490) b!4183046))

(assert (= (and b!4183046 res!1715496) b!4183064))

(assert (= (and b!4183064 res!1715492) b!4183049))

(assert (= (and b!4183049 res!1715498) b!4183070))

(assert (= (and b!4183070 res!1715494) b!4183061))

(assert (= (and b!4183061 res!1715488) b!4183057))

(assert (= (and b!4183057 res!1715502) b!4183051))

(assert (= (and b!4183051 res!1715491) b!4183048))

(assert (= (and b!4183048 res!1715493) b!4183063))

(assert (= (and b!4183063 res!1715497) b!4183045))

(assert (= (and b!4183045 (not res!1715500)) b!4183065))

(assert (= (and b!4183065 (not res!1715495)) b!4183059))

(assert (= (and b!4183059 (not res!1715499)) b!4183053))

(assert (= (and b!4183053 (not res!1715487)) b!4183050))

(assert (= (and b!4183050 (not res!1715501)) b!4183056))

(assert (= (and b!4183056 (not res!1715489)) b!4183066))

(assert (= b!4183054 b!4183060))

(assert (= start!398958 b!4183054))

(assert (= b!4183058 b!4183068))

(assert (= start!398958 b!4183058))

(assert (= b!4183055 b!4183047))

(assert (= b!4183062 b!4183055))

(assert (= (and start!398958 ((_ is Cons!45927) rules!3843)) b!4183062))

(assert (= (and start!398958 ((_ is Cons!45925) input!3342)) b!4183067))

(assert (= (and start!398958 ((_ is Cons!45925) pBis!107)) b!4183069))

(assert (= (and start!398958 ((_ is Cons!45925) p!2959)) b!4183052))

(declare-fun m!4771755 () Bool)

(assert (=> b!4183059 m!4771755))

(declare-fun m!4771757 () Bool)

(assert (=> b!4183046 m!4771757))

(declare-fun m!4771759 () Bool)

(assert (=> b!4183051 m!4771759))

(declare-fun m!4771761 () Bool)

(assert (=> b!4183050 m!4771761))

(declare-fun m!4771763 () Bool)

(assert (=> b!4183050 m!4771763))

(declare-fun m!4771765 () Bool)

(assert (=> b!4183050 m!4771765))

(declare-fun m!4771767 () Bool)

(assert (=> b!4183050 m!4771767))

(declare-fun m!4771769 () Bool)

(assert (=> b!4183050 m!4771769))

(declare-fun m!4771771 () Bool)

(assert (=> b!4183063 m!4771771))

(declare-fun m!4771773 () Bool)

(assert (=> b!4183056 m!4771773))

(declare-fun m!4771775 () Bool)

(assert (=> b!4183056 m!4771775))

(declare-fun m!4771777 () Bool)

(assert (=> b!4183056 m!4771777))

(assert (=> b!4183056 m!4771775))

(declare-fun m!4771779 () Bool)

(assert (=> b!4183056 m!4771779))

(declare-fun m!4771781 () Bool)

(assert (=> b!4183056 m!4771781))

(assert (=> b!4183056 m!4771779))

(declare-fun m!4771783 () Bool)

(assert (=> b!4183056 m!4771783))

(declare-fun m!4771785 () Bool)

(assert (=> b!4183057 m!4771785))

(declare-fun m!4771787 () Bool)

(assert (=> b!4183045 m!4771787))

(declare-fun m!4771789 () Bool)

(assert (=> b!4183045 m!4771789))

(declare-fun m!4771791 () Bool)

(assert (=> b!4183045 m!4771791))

(declare-fun m!4771793 () Bool)

(assert (=> b!4183045 m!4771793))

(declare-fun m!4771795 () Bool)

(assert (=> b!4183045 m!4771795))

(declare-fun m!4771797 () Bool)

(assert (=> b!4183045 m!4771797))

(declare-fun m!4771799 () Bool)

(assert (=> b!4183045 m!4771799))

(declare-fun m!4771801 () Bool)

(assert (=> b!4183045 m!4771801))

(declare-fun m!4771803 () Bool)

(assert (=> b!4183070 m!4771803))

(declare-fun m!4771805 () Bool)

(assert (=> b!4183055 m!4771805))

(declare-fun m!4771807 () Bool)

(assert (=> b!4183055 m!4771807))

(declare-fun m!4771809 () Bool)

(assert (=> b!4183066 m!4771809))

(declare-fun m!4771811 () Bool)

(assert (=> b!4183065 m!4771811))

(declare-fun m!4771813 () Bool)

(assert (=> b!4183053 m!4771813))

(declare-fun m!4771815 () Bool)

(assert (=> b!4183054 m!4771815))

(declare-fun m!4771817 () Bool)

(assert (=> b!4183054 m!4771817))

(declare-fun m!4771819 () Bool)

(assert (=> b!4183064 m!4771819))

(declare-fun m!4771821 () Bool)

(assert (=> b!4183048 m!4771821))

(declare-fun m!4771823 () Bool)

(assert (=> b!4183061 m!4771823))

(declare-fun m!4771825 () Bool)

(assert (=> b!4183058 m!4771825))

(declare-fun m!4771827 () Bool)

(assert (=> b!4183058 m!4771827))

(declare-fun m!4771829 () Bool)

(assert (=> b!4183049 m!4771829))

(check-sat (not b!4183055) (not b_next!122317) b_and!327315 b_and!327309 (not b_next!122311) b_and!327319 (not b!4183046) (not b!4183064) (not b!4183051) (not b!4183070) (not b!4183045) (not b!4183067) b_and!327311 (not b_next!122313) (not b_next!122321) tp_is_empty!22061 b_and!327313 (not b!4183062) (not b!4183048) (not b!4183057) (not b!4183052) (not b!4183059) (not b_next!122315) b_and!327317 (not b!4183061) (not b!4183058) (not b!4183066) (not b!4183063) (not b!4183065) (not b_next!122319) (not b!4183053) (not b!4183054) (not b!4183050) (not b!4183049) (not b!4183069) (not b!4183056))
(check-sat b_and!327313 (not b_next!122317) b_and!327315 b_and!327309 (not b_next!122311) (not b_next!122315) b_and!327319 b_and!327317 (not b_next!122319) b_and!327311 (not b_next!122313) (not b_next!122321))
(get-model)

(declare-fun d!1234311 () Bool)

(assert (=> d!1234311 (= (inv!60463 (tag!8508 rBis!167)) (= (mod (str.len (value!238385 (tag!8508 rBis!167))) 2) 0))))

(assert (=> b!4183054 d!1234311))

(declare-fun d!1234315 () Bool)

(declare-fun res!1715537 () Bool)

(declare-fun e!2596938 () Bool)

(assert (=> d!1234315 (=> (not res!1715537) (not e!2596938))))

(declare-fun semiInverseModEq!3310 (Int Int) Bool)

(assert (=> d!1234315 (= res!1715537 (semiInverseModEq!3310 (toChars!10195 (transformation!7644 rBis!167)) (toValue!10336 (transformation!7644 rBis!167))))))

(assert (=> d!1234315 (= (inv!60466 (transformation!7644 rBis!167)) e!2596938)))

(declare-fun b!4183103 () Bool)

(declare-fun equivClasses!3209 (Int Int) Bool)

(assert (=> b!4183103 (= e!2596938 (equivClasses!3209 (toChars!10195 (transformation!7644 rBis!167)) (toValue!10336 (transformation!7644 rBis!167))))))

(assert (= (and d!1234315 res!1715537) b!4183103))

(declare-fun m!4771841 () Bool)

(assert (=> d!1234315 m!4771841))

(declare-fun m!4771843 () Bool)

(assert (=> b!4183103 m!4771843))

(assert (=> b!4183054 d!1234315))

(declare-fun d!1234317 () Bool)

(declare-fun lt!1489642 () Int)

(assert (=> d!1234317 (>= lt!1489642 0)))

(declare-fun e!2596948 () Int)

(assert (=> d!1234317 (= lt!1489642 e!2596948)))

(declare-fun c!714192 () Bool)

(assert (=> d!1234317 (= c!714192 ((_ is Nil!45925) pBis!107))))

(assert (=> d!1234317 (= (size!33728 pBis!107) lt!1489642)))

(declare-fun b!4183117 () Bool)

(assert (=> b!4183117 (= e!2596948 0)))

(declare-fun b!4183118 () Bool)

(assert (=> b!4183118 (= e!2596948 (+ 1 (size!33728 (t!345218 pBis!107))))))

(assert (= (and d!1234317 c!714192) b!4183117))

(assert (= (and d!1234317 (not c!714192)) b!4183118))

(declare-fun m!4771851 () Bool)

(assert (=> b!4183118 m!4771851))

(assert (=> b!4183065 d!1234317))

(declare-fun d!1234321 () Bool)

(assert (=> d!1234321 (= (inv!60463 (tag!8508 (h!51347 rules!3843))) (= (mod (str.len (value!238385 (tag!8508 (h!51347 rules!3843)))) 2) 0))))

(assert (=> b!4183055 d!1234321))

(declare-fun d!1234323 () Bool)

(declare-fun res!1715547 () Bool)

(declare-fun e!2596952 () Bool)

(assert (=> d!1234323 (=> (not res!1715547) (not e!2596952))))

(assert (=> d!1234323 (= res!1715547 (semiInverseModEq!3310 (toChars!10195 (transformation!7644 (h!51347 rules!3843))) (toValue!10336 (transformation!7644 (h!51347 rules!3843)))))))

(assert (=> d!1234323 (= (inv!60466 (transformation!7644 (h!51347 rules!3843))) e!2596952)))

(declare-fun b!4183123 () Bool)

(assert (=> b!4183123 (= e!2596952 (equivClasses!3209 (toChars!10195 (transformation!7644 (h!51347 rules!3843))) (toValue!10336 (transformation!7644 (h!51347 rules!3843)))))))

(assert (= (and d!1234323 res!1715547) b!4183123))

(declare-fun m!4771859 () Bool)

(assert (=> d!1234323 m!4771859))

(declare-fun m!4771861 () Bool)

(assert (=> b!4183123 m!4771861))

(assert (=> b!4183055 d!1234323))

(declare-fun d!1234327 () Bool)

(declare-fun res!1715558 () Bool)

(declare-fun e!2596958 () Bool)

(assert (=> d!1234327 (=> (not res!1715558) (not e!2596958))))

(declare-fun isEmpty!27179 (List!46049) Bool)

(assert (=> d!1234327 (= res!1715558 (not (isEmpty!27179 (originalCharacters!8032 lt!1489633))))))

(assert (=> d!1234327 (= (inv!60467 lt!1489633) e!2596958)))

(declare-fun b!4183134 () Bool)

(declare-fun res!1715559 () Bool)

(assert (=> b!4183134 (=> (not res!1715559) (not e!2596958))))

(declare-fun dynLambda!19716 (Int TokenValue!7874) BalanceConc!27304)

(assert (=> b!4183134 (= res!1715559 (= (originalCharacters!8032 lt!1489633) (list!16585 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 lt!1489633))) (value!238386 lt!1489633)))))))

(declare-fun b!4183135 () Bool)

(assert (=> b!4183135 (= e!2596958 (= (size!33727 lt!1489633) (size!33728 (originalCharacters!8032 lt!1489633))))))

(assert (= (and d!1234327 res!1715558) b!4183134))

(assert (= (and b!4183134 res!1715559) b!4183135))

(declare-fun b_lambda!122915 () Bool)

(assert (=> (not b_lambda!122915) (not b!4183134)))

(declare-fun t!345222 () Bool)

(declare-fun tb!250387 () Bool)

(assert (=> (and b!4183047 (= (toChars!10195 (transformation!7644 (h!51347 rules!3843))) (toChars!10195 (transformation!7644 (rule!10710 lt!1489633)))) t!345222) tb!250387))

(declare-fun b!4183142 () Bool)

(declare-fun e!2596963 () Bool)

(declare-fun tp!1278495 () Bool)

(declare-fun inv!60468 (Conc!13855) Bool)

(assert (=> b!4183142 (= e!2596963 (and (inv!60468 (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 lt!1489633))) (value!238386 lt!1489633)))) tp!1278495))))

(declare-fun result!305128 () Bool)

(declare-fun inv!60469 (BalanceConc!27304) Bool)

(assert (=> tb!250387 (= result!305128 (and (inv!60469 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 lt!1489633))) (value!238386 lt!1489633))) e!2596963))))

(assert (= tb!250387 b!4183142))

(declare-fun m!4771867 () Bool)

(assert (=> b!4183142 m!4771867))

(declare-fun m!4771869 () Bool)

(assert (=> tb!250387 m!4771869))

(assert (=> b!4183134 t!345222))

(declare-fun b_and!327321 () Bool)

(assert (= b_and!327311 (and (=> t!345222 result!305128) b_and!327321)))

(declare-fun tb!250389 () Bool)

(declare-fun t!345224 () Bool)

(assert (=> (and b!4183060 (= (toChars!10195 (transformation!7644 rBis!167)) (toChars!10195 (transformation!7644 (rule!10710 lt!1489633)))) t!345224) tb!250389))

(declare-fun result!305132 () Bool)

(assert (= result!305132 result!305128))

(assert (=> b!4183134 t!345224))

(declare-fun b_and!327323 () Bool)

(assert (= b_and!327315 (and (=> t!345224 result!305132) b_and!327323)))

(declare-fun t!345226 () Bool)

(declare-fun tb!250391 () Bool)

(assert (=> (and b!4183068 (= (toChars!10195 (transformation!7644 r!4142)) (toChars!10195 (transformation!7644 (rule!10710 lt!1489633)))) t!345226) tb!250391))

(declare-fun result!305134 () Bool)

(assert (= result!305134 result!305128))

(assert (=> b!4183134 t!345226))

(declare-fun b_and!327325 () Bool)

(assert (= b_and!327319 (and (=> t!345226 result!305134) b_and!327325)))

(declare-fun m!4771871 () Bool)

(assert (=> d!1234327 m!4771871))

(declare-fun m!4771873 () Bool)

(assert (=> b!4183134 m!4771873))

(assert (=> b!4183134 m!4771873))

(declare-fun m!4771875 () Bool)

(assert (=> b!4183134 m!4771875))

(declare-fun m!4771877 () Bool)

(assert (=> b!4183135 m!4771877))

(assert (=> b!4183066 d!1234327))

(declare-fun d!1234333 () Bool)

(declare-fun lt!1489649 () List!46049)

(assert (=> d!1234333 (= (++!11716 p!2959 lt!1489649) input!3342)))

(declare-fun e!2596967 () List!46049)

(assert (=> d!1234333 (= lt!1489649 e!2596967)))

(declare-fun c!714195 () Bool)

(assert (=> d!1234333 (= c!714195 ((_ is Cons!45925) p!2959))))

(assert (=> d!1234333 (>= (size!33728 input!3342) (size!33728 p!2959))))

(assert (=> d!1234333 (= (getSuffix!2794 input!3342 p!2959) lt!1489649)))

(declare-fun b!4183148 () Bool)

(declare-fun tail!6725 (List!46049) List!46049)

(assert (=> b!4183148 (= e!2596967 (getSuffix!2794 (tail!6725 input!3342) (t!345218 p!2959)))))

(declare-fun b!4183149 () Bool)

(assert (=> b!4183149 (= e!2596967 input!3342)))

(assert (= (and d!1234333 c!714195) b!4183148))

(assert (= (and d!1234333 (not c!714195)) b!4183149))

(declare-fun m!4771885 () Bool)

(assert (=> d!1234333 m!4771885))

(assert (=> d!1234333 m!4771763))

(assert (=> d!1234333 m!4771795))

(declare-fun m!4771887 () Bool)

(assert (=> b!4183148 m!4771887))

(assert (=> b!4183148 m!4771887))

(declare-fun m!4771889 () Bool)

(assert (=> b!4183148 m!4771889))

(assert (=> b!4183045 d!1234333))

(declare-fun b!4183161 () Bool)

(declare-fun e!2596974 () Bool)

(assert (=> b!4183161 (= e!2596974 (>= (size!33728 input!3342) (size!33728 input!3342)))))

(declare-fun b!4183159 () Bool)

(declare-fun res!1715572 () Bool)

(declare-fun e!2596975 () Bool)

(assert (=> b!4183159 (=> (not res!1715572) (not e!2596975))))

(declare-fun head!8878 (List!46049) C!25288)

(assert (=> b!4183159 (= res!1715572 (= (head!8878 input!3342) (head!8878 input!3342)))))

(declare-fun d!1234339 () Bool)

(assert (=> d!1234339 e!2596974))

(declare-fun res!1715574 () Bool)

(assert (=> d!1234339 (=> res!1715574 e!2596974)))

(declare-fun lt!1489652 () Bool)

(assert (=> d!1234339 (= res!1715574 (not lt!1489652))))

(declare-fun e!2596976 () Bool)

(assert (=> d!1234339 (= lt!1489652 e!2596976)))

(declare-fun res!1715573 () Bool)

(assert (=> d!1234339 (=> res!1715573 e!2596976)))

(assert (=> d!1234339 (= res!1715573 ((_ is Nil!45925) input!3342))))

(assert (=> d!1234339 (= (isPrefix!4501 input!3342 input!3342) lt!1489652)))

(declare-fun b!4183158 () Bool)

(assert (=> b!4183158 (= e!2596976 e!2596975)))

(declare-fun res!1715571 () Bool)

(assert (=> b!4183158 (=> (not res!1715571) (not e!2596975))))

(assert (=> b!4183158 (= res!1715571 (not ((_ is Nil!45925) input!3342)))))

(declare-fun b!4183160 () Bool)

(assert (=> b!4183160 (= e!2596975 (isPrefix!4501 (tail!6725 input!3342) (tail!6725 input!3342)))))

(assert (= (and d!1234339 (not res!1715573)) b!4183158))

(assert (= (and b!4183158 res!1715571) b!4183159))

(assert (= (and b!4183159 res!1715572) b!4183160))

(assert (= (and d!1234339 (not res!1715574)) b!4183161))

(assert (=> b!4183161 m!4771763))

(assert (=> b!4183161 m!4771763))

(declare-fun m!4771891 () Bool)

(assert (=> b!4183159 m!4771891))

(assert (=> b!4183159 m!4771891))

(assert (=> b!4183160 m!4771887))

(assert (=> b!4183160 m!4771887))

(assert (=> b!4183160 m!4771887))

(assert (=> b!4183160 m!4771887))

(declare-fun m!4771893 () Bool)

(assert (=> b!4183160 m!4771893))

(assert (=> b!4183045 d!1234339))

(declare-fun d!1234341 () Bool)

(declare-fun fromListB!2592 (List!46049) BalanceConc!27304)

(assert (=> d!1234341 (= (seqFromList!5669 p!2959) (fromListB!2592 p!2959))))

(declare-fun bs!596375 () Bool)

(assert (= bs!596375 d!1234341))

(declare-fun m!4771895 () Bool)

(assert (=> bs!596375 m!4771895))

(assert (=> b!4183045 d!1234341))

(declare-fun d!1234343 () Bool)

(assert (=> d!1234343 (isPrefix!4501 input!3342 input!3342)))

(declare-fun lt!1489655 () Unit!65011)

(declare-fun choose!25603 (List!46049 List!46049) Unit!65011)

(assert (=> d!1234343 (= lt!1489655 (choose!25603 input!3342 input!3342))))

(assert (=> d!1234343 (= (lemmaIsPrefixRefl!2930 input!3342 input!3342) lt!1489655)))

(declare-fun bs!596376 () Bool)

(assert (= bs!596376 d!1234343))

(assert (=> bs!596376 m!4771789))

(declare-fun m!4771897 () Bool)

(assert (=> bs!596376 m!4771897))

(assert (=> b!4183045 d!1234343))

(declare-fun d!1234345 () Bool)

(declare-fun dynLambda!19717 (Int BalanceConc!27304) TokenValue!7874)

(assert (=> d!1234345 (= (apply!10609 (transformation!7644 r!4142) lt!1489628) (dynLambda!19717 (toValue!10336 (transformation!7644 r!4142)) lt!1489628))))

(declare-fun b_lambda!122917 () Bool)

(assert (=> (not b_lambda!122917) (not d!1234345)))

(declare-fun t!345228 () Bool)

(declare-fun tb!250393 () Bool)

(assert (=> (and b!4183047 (= (toValue!10336 (transformation!7644 (h!51347 rules!3843))) (toValue!10336 (transformation!7644 r!4142))) t!345228) tb!250393))

(declare-fun result!305136 () Bool)

(declare-fun inv!21 (TokenValue!7874) Bool)

(assert (=> tb!250393 (= result!305136 (inv!21 (dynLambda!19717 (toValue!10336 (transformation!7644 r!4142)) lt!1489628)))))

(declare-fun m!4771899 () Bool)

(assert (=> tb!250393 m!4771899))

(assert (=> d!1234345 t!345228))

(declare-fun b_and!327327 () Bool)

(assert (= b_and!327309 (and (=> t!345228 result!305136) b_and!327327)))

(declare-fun t!345230 () Bool)

(declare-fun tb!250395 () Bool)

(assert (=> (and b!4183060 (= (toValue!10336 (transformation!7644 rBis!167)) (toValue!10336 (transformation!7644 r!4142))) t!345230) tb!250395))

(declare-fun result!305140 () Bool)

(assert (= result!305140 result!305136))

(assert (=> d!1234345 t!345230))

(declare-fun b_and!327329 () Bool)

(assert (= b_and!327313 (and (=> t!345230 result!305140) b_and!327329)))

(declare-fun t!345232 () Bool)

(declare-fun tb!250397 () Bool)

(assert (=> (and b!4183068 (= (toValue!10336 (transformation!7644 r!4142)) (toValue!10336 (transformation!7644 r!4142))) t!345232) tb!250397))

(declare-fun result!305142 () Bool)

(assert (= result!305142 result!305136))

(assert (=> d!1234345 t!345232))

(declare-fun b_and!327331 () Bool)

(assert (= b_and!327317 (and (=> t!345232 result!305142) b_and!327331)))

(declare-fun m!4771901 () Bool)

(assert (=> d!1234345 m!4771901))

(assert (=> b!4183045 d!1234345))

(declare-fun b!4183308 () Bool)

(declare-fun e!2597060 () Bool)

(declare-fun lt!1489721 () Option!9838)

(assert (=> b!4183308 (= e!2597060 (= (size!33727 (_1!25001 (get!14925 lt!1489721))) (size!33728 (originalCharacters!8032 (_1!25001 (get!14925 lt!1489721))))))))

(declare-fun b!4183309 () Bool)

(declare-fun res!1715665 () Bool)

(assert (=> b!4183309 (=> (not res!1715665) (not e!2597060))))

(assert (=> b!4183309 (= res!1715665 (= (rule!10710 (_1!25001 (get!14925 lt!1489721))) r!4142))))

(declare-fun b!4183310 () Bool)

(declare-fun res!1715662 () Bool)

(assert (=> b!4183310 (=> (not res!1715662) (not e!2597060))))

(assert (=> b!4183310 (= res!1715662 (= (++!11716 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489721)))) (_2!25001 (get!14925 lt!1489721))) input!3342))))

(declare-fun b!4183311 () Bool)

(declare-fun e!2597057 () Bool)

(assert (=> b!4183311 (= e!2597057 e!2597060)))

(declare-fun res!1715663 () Bool)

(assert (=> b!4183311 (=> (not res!1715663) (not e!2597060))))

(assert (=> b!4183311 (= res!1715663 (matchR!6288 (regex!7644 r!4142) (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489721))))))))

(declare-fun b!4183312 () Bool)

(declare-fun e!2597058 () Option!9838)

(declare-datatypes ((tuple2!43738 0))(
  ( (tuple2!43739 (_1!25003 List!46049) (_2!25003 List!46049)) )
))
(declare-fun lt!1489722 () tuple2!43738)

(declare-fun size!33730 (BalanceConc!27304) Int)

(assert (=> b!4183312 (= e!2597058 (Some!9837 (tuple2!43735 (Token!14003 (apply!10609 (transformation!7644 r!4142) (seqFromList!5669 (_1!25003 lt!1489722))) r!4142 (size!33730 (seqFromList!5669 (_1!25003 lt!1489722))) (_1!25003 lt!1489722)) (_2!25003 lt!1489722))))))

(declare-fun lt!1489720 () Unit!65011)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1564 (Regex!12549 List!46049) Unit!65011)

(assert (=> b!4183312 (= lt!1489720 (longestMatchIsAcceptedByMatchOrIsEmpty!1564 (regex!7644 r!4142) input!3342))))

(declare-fun res!1715667 () Bool)

(declare-fun findLongestMatchInner!1591 (Regex!12549 List!46049 Int List!46049 List!46049 Int) tuple2!43738)

(assert (=> b!4183312 (= res!1715667 (isEmpty!27179 (_1!25003 (findLongestMatchInner!1591 (regex!7644 r!4142) Nil!45925 (size!33728 Nil!45925) input!3342 input!3342 (size!33728 input!3342)))))))

(declare-fun e!2597059 () Bool)

(assert (=> b!4183312 (=> res!1715667 e!2597059)))

(assert (=> b!4183312 e!2597059))

(declare-fun lt!1489718 () Unit!65011)

(assert (=> b!4183312 (= lt!1489718 lt!1489720)))

(declare-fun lt!1489719 () Unit!65011)

(assert (=> b!4183312 (= lt!1489719 (lemmaSemiInverse!2410 (transformation!7644 r!4142) (seqFromList!5669 (_1!25003 lt!1489722))))))

(declare-fun b!4183313 () Bool)

(assert (=> b!4183313 (= e!2597058 None!9837)))

(declare-fun d!1234347 () Bool)

(assert (=> d!1234347 e!2597057))

(declare-fun res!1715668 () Bool)

(assert (=> d!1234347 (=> res!1715668 e!2597057)))

(assert (=> d!1234347 (= res!1715668 (isEmpty!27177 lt!1489721))))

(assert (=> d!1234347 (= lt!1489721 e!2597058)))

(declare-fun c!714222 () Bool)

(assert (=> d!1234347 (= c!714222 (isEmpty!27179 (_1!25003 lt!1489722)))))

(declare-fun findLongestMatch!1504 (Regex!12549 List!46049) tuple2!43738)

(assert (=> d!1234347 (= lt!1489722 (findLongestMatch!1504 (regex!7644 r!4142) input!3342))))

(assert (=> d!1234347 (ruleValid!3362 thiss!25986 r!4142)))

(assert (=> d!1234347 (= (maxPrefixOneRule!3246 thiss!25986 r!4142 input!3342) lt!1489721)))

(declare-fun b!4183314 () Bool)

(declare-fun res!1715666 () Bool)

(assert (=> b!4183314 (=> (not res!1715666) (not e!2597060))))

(assert (=> b!4183314 (= res!1715666 (= (value!238386 (_1!25001 (get!14925 lt!1489721))) (apply!10609 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489721)))) (seqFromList!5669 (originalCharacters!8032 (_1!25001 (get!14925 lt!1489721)))))))))

(declare-fun b!4183315 () Bool)

(assert (=> b!4183315 (= e!2597059 (matchR!6288 (regex!7644 r!4142) (_1!25003 (findLongestMatchInner!1591 (regex!7644 r!4142) Nil!45925 (size!33728 Nil!45925) input!3342 input!3342 (size!33728 input!3342)))))))

(declare-fun b!4183316 () Bool)

(declare-fun res!1715664 () Bool)

(assert (=> b!4183316 (=> (not res!1715664) (not e!2597060))))

(assert (=> b!4183316 (= res!1715664 (< (size!33728 (_2!25001 (get!14925 lt!1489721))) (size!33728 input!3342)))))

(assert (= (and d!1234347 c!714222) b!4183313))

(assert (= (and d!1234347 (not c!714222)) b!4183312))

(assert (= (and b!4183312 (not res!1715667)) b!4183315))

(assert (= (and d!1234347 (not res!1715668)) b!4183311))

(assert (= (and b!4183311 res!1715663) b!4183310))

(assert (= (and b!4183310 res!1715662) b!4183316))

(assert (= (and b!4183316 res!1715664) b!4183309))

(assert (= (and b!4183309 res!1715665) b!4183314))

(assert (= (and b!4183314 res!1715666) b!4183308))

(declare-fun m!4772063 () Bool)

(assert (=> b!4183308 m!4772063))

(declare-fun m!4772065 () Bool)

(assert (=> b!4183308 m!4772065))

(assert (=> b!4183311 m!4772063))

(declare-fun m!4772067 () Bool)

(assert (=> b!4183311 m!4772067))

(assert (=> b!4183311 m!4772067))

(declare-fun m!4772069 () Bool)

(assert (=> b!4183311 m!4772069))

(assert (=> b!4183311 m!4772069))

(declare-fun m!4772071 () Bool)

(assert (=> b!4183311 m!4772071))

(declare-fun m!4772073 () Bool)

(assert (=> b!4183315 m!4772073))

(assert (=> b!4183315 m!4771763))

(assert (=> b!4183315 m!4772073))

(assert (=> b!4183315 m!4771763))

(declare-fun m!4772075 () Bool)

(assert (=> b!4183315 m!4772075))

(declare-fun m!4772077 () Bool)

(assert (=> b!4183315 m!4772077))

(declare-fun m!4772079 () Bool)

(assert (=> b!4183312 m!4772079))

(assert (=> b!4183312 m!4771763))

(assert (=> b!4183312 m!4772073))

(assert (=> b!4183312 m!4771763))

(assert (=> b!4183312 m!4772075))

(declare-fun m!4772081 () Bool)

(assert (=> b!4183312 m!4772081))

(declare-fun m!4772083 () Bool)

(assert (=> b!4183312 m!4772083))

(assert (=> b!4183312 m!4772081))

(declare-fun m!4772085 () Bool)

(assert (=> b!4183312 m!4772085))

(assert (=> b!4183312 m!4772081))

(assert (=> b!4183312 m!4772073))

(assert (=> b!4183312 m!4772081))

(declare-fun m!4772087 () Bool)

(assert (=> b!4183312 m!4772087))

(declare-fun m!4772089 () Bool)

(assert (=> b!4183312 m!4772089))

(assert (=> b!4183309 m!4772063))

(assert (=> b!4183314 m!4772063))

(declare-fun m!4772091 () Bool)

(assert (=> b!4183314 m!4772091))

(assert (=> b!4183314 m!4772091))

(declare-fun m!4772093 () Bool)

(assert (=> b!4183314 m!4772093))

(assert (=> b!4183316 m!4772063))

(declare-fun m!4772095 () Bool)

(assert (=> b!4183316 m!4772095))

(assert (=> b!4183316 m!4771763))

(assert (=> b!4183310 m!4772063))

(assert (=> b!4183310 m!4772067))

(assert (=> b!4183310 m!4772067))

(assert (=> b!4183310 m!4772069))

(assert (=> b!4183310 m!4772069))

(declare-fun m!4772097 () Bool)

(assert (=> b!4183310 m!4772097))

(declare-fun m!4772099 () Bool)

(assert (=> d!1234347 m!4772099))

(declare-fun m!4772101 () Bool)

(assert (=> d!1234347 m!4772101))

(declare-fun m!4772103 () Bool)

(assert (=> d!1234347 m!4772103))

(assert (=> d!1234347 m!4771771))

(assert (=> b!4183045 d!1234347))

(declare-fun b!4183330 () Bool)

(declare-fun e!2597069 () Bool)

(assert (=> b!4183330 (= e!2597069 true)))

(declare-fun d!1234393 () Bool)

(assert (=> d!1234393 e!2597069))

(assert (= d!1234393 b!4183330))

(declare-fun order!24249 () Int)

(declare-fun order!24251 () Int)

(declare-fun lambda!129397 () Int)

(declare-fun dynLambda!19719 (Int Int) Int)

(declare-fun dynLambda!19720 (Int Int) Int)

(assert (=> b!4183330 (< (dynLambda!19719 order!24249 (toValue!10336 (transformation!7644 r!4142))) (dynLambda!19720 order!24251 lambda!129397))))

(declare-fun order!24253 () Int)

(declare-fun dynLambda!19721 (Int Int) Int)

(assert (=> b!4183330 (< (dynLambda!19721 order!24253 (toChars!10195 (transformation!7644 r!4142))) (dynLambda!19720 order!24251 lambda!129397))))

(assert (=> d!1234393 (= (list!16585 (dynLambda!19716 (toChars!10195 (transformation!7644 r!4142)) (dynLambda!19717 (toValue!10336 (transformation!7644 r!4142)) lt!1489628))) (list!16585 lt!1489628))))

(declare-fun lt!1489727 () Unit!65011)

(declare-fun ForallOf!1043 (Int BalanceConc!27304) Unit!65011)

(assert (=> d!1234393 (= lt!1489727 (ForallOf!1043 lambda!129397 lt!1489628))))

(assert (=> d!1234393 (= (lemmaSemiInverse!2410 (transformation!7644 r!4142) lt!1489628) lt!1489727)))

(declare-fun b_lambda!122927 () Bool)

(assert (=> (not b_lambda!122927) (not d!1234393)))

(declare-fun tb!250417 () Bool)

(declare-fun t!345252 () Bool)

(assert (=> (and b!4183047 (= (toChars!10195 (transformation!7644 (h!51347 rules!3843))) (toChars!10195 (transformation!7644 r!4142))) t!345252) tb!250417))

(declare-fun tp!1278500 () Bool)

(declare-fun b!4183331 () Bool)

(declare-fun e!2597070 () Bool)

(assert (=> b!4183331 (= e!2597070 (and (inv!60468 (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 r!4142)) (dynLambda!19717 (toValue!10336 (transformation!7644 r!4142)) lt!1489628)))) tp!1278500))))

(declare-fun result!305166 () Bool)

(assert (=> tb!250417 (= result!305166 (and (inv!60469 (dynLambda!19716 (toChars!10195 (transformation!7644 r!4142)) (dynLambda!19717 (toValue!10336 (transformation!7644 r!4142)) lt!1489628))) e!2597070))))

(assert (= tb!250417 b!4183331))

(declare-fun m!4772123 () Bool)

(assert (=> b!4183331 m!4772123))

(declare-fun m!4772125 () Bool)

(assert (=> tb!250417 m!4772125))

(assert (=> d!1234393 t!345252))

(declare-fun b_and!327357 () Bool)

(assert (= b_and!327321 (and (=> t!345252 result!305166) b_and!327357)))

(declare-fun t!345254 () Bool)

(declare-fun tb!250419 () Bool)

(assert (=> (and b!4183060 (= (toChars!10195 (transformation!7644 rBis!167)) (toChars!10195 (transformation!7644 r!4142))) t!345254) tb!250419))

(declare-fun result!305168 () Bool)

(assert (= result!305168 result!305166))

(assert (=> d!1234393 t!345254))

(declare-fun b_and!327359 () Bool)

(assert (= b_and!327323 (and (=> t!345254 result!305168) b_and!327359)))

(declare-fun t!345256 () Bool)

(declare-fun tb!250421 () Bool)

(assert (=> (and b!4183068 (= (toChars!10195 (transformation!7644 r!4142)) (toChars!10195 (transformation!7644 r!4142))) t!345256) tb!250421))

(declare-fun result!305170 () Bool)

(assert (= result!305170 result!305166))

(assert (=> d!1234393 t!345256))

(declare-fun b_and!327361 () Bool)

(assert (= b_and!327325 (and (=> t!345256 result!305170) b_and!327361)))

(declare-fun b_lambda!122929 () Bool)

(assert (=> (not b_lambda!122929) (not d!1234393)))

(assert (=> d!1234393 t!345228))

(declare-fun b_and!327363 () Bool)

(assert (= b_and!327327 (and (=> t!345228 result!305136) b_and!327363)))

(assert (=> d!1234393 t!345230))

(declare-fun b_and!327365 () Bool)

(assert (= b_and!327329 (and (=> t!345230 result!305140) b_and!327365)))

(assert (=> d!1234393 t!345232))

(declare-fun b_and!327367 () Bool)

(assert (= b_and!327331 (and (=> t!345232 result!305142) b_and!327367)))

(assert (=> d!1234393 m!4771901))

(declare-fun m!4772127 () Bool)

(assert (=> d!1234393 m!4772127))

(declare-fun m!4772129 () Bool)

(assert (=> d!1234393 m!4772129))

(declare-fun m!4772131 () Bool)

(assert (=> d!1234393 m!4772131))

(declare-fun m!4772133 () Bool)

(assert (=> d!1234393 m!4772133))

(assert (=> d!1234393 m!4771901))

(assert (=> d!1234393 m!4772127))

(assert (=> b!4183045 d!1234393))

(declare-fun d!1234403 () Bool)

(declare-fun lt!1489728 () Int)

(assert (=> d!1234403 (>= lt!1489728 0)))

(declare-fun e!2597071 () Int)

(assert (=> d!1234403 (= lt!1489728 e!2597071)))

(declare-fun c!714225 () Bool)

(assert (=> d!1234403 (= c!714225 ((_ is Nil!45925) p!2959))))

(assert (=> d!1234403 (= (size!33728 p!2959) lt!1489728)))

(declare-fun b!4183332 () Bool)

(assert (=> b!4183332 (= e!2597071 0)))

(declare-fun b!4183333 () Bool)

(assert (=> b!4183333 (= e!2597071 (+ 1 (size!33728 (t!345218 p!2959))))))

(assert (= (and d!1234403 c!714225) b!4183332))

(assert (= (and d!1234403 (not c!714225)) b!4183333))

(declare-fun m!4772135 () Bool)

(assert (=> b!4183333 m!4772135))

(assert (=> b!4183045 d!1234403))

(declare-fun d!1234405 () Bool)

(declare-fun list!16587 (Conc!13855) List!46049)

(assert (=> d!1234405 (= (list!16585 (charsOf!5079 (_1!25001 lt!1489624))) (list!16587 (c!714182 (charsOf!5079 (_1!25001 lt!1489624)))))))

(declare-fun bs!596382 () Bool)

(assert (= bs!596382 d!1234405))

(declare-fun m!4772137 () Bool)

(assert (=> bs!596382 m!4772137))

(assert (=> b!4183056 d!1234405))

(declare-fun d!1234407 () Bool)

(assert (=> d!1234407 (isPrefix!4501 lt!1489629 (++!11716 lt!1489629 (_2!25001 lt!1489624)))))

(declare-fun lt!1489741 () Unit!65011)

(declare-fun choose!25605 (List!46049 List!46049) Unit!65011)

(assert (=> d!1234407 (= lt!1489741 (choose!25605 lt!1489629 (_2!25001 lt!1489624)))))

(assert (=> d!1234407 (= (lemmaConcatTwoListThenFirstIsPrefix!2998 lt!1489629 (_2!25001 lt!1489624)) lt!1489741)))

(declare-fun bs!596383 () Bool)

(assert (= bs!596383 d!1234407))

(assert (=> bs!596383 m!4771775))

(assert (=> bs!596383 m!4771775))

(assert (=> bs!596383 m!4771777))

(declare-fun m!4772139 () Bool)

(assert (=> bs!596383 m!4772139))

(assert (=> b!4183056 d!1234407))

(declare-fun d!1234409 () Bool)

(declare-fun e!2597085 () Bool)

(assert (=> d!1234409 e!2597085))

(declare-fun res!1715696 () Bool)

(assert (=> d!1234409 (=> (not res!1715696) (not e!2597085))))

(declare-fun lt!1489749 () List!46049)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7137 (List!46049) (InoxSet C!25288))

(assert (=> d!1234409 (= res!1715696 (= (content!7137 lt!1489749) ((_ map or) (content!7137 lt!1489629) (content!7137 (_2!25001 lt!1489624)))))))

(declare-fun e!2597086 () List!46049)

(assert (=> d!1234409 (= lt!1489749 e!2597086)))

(declare-fun c!714231 () Bool)

(assert (=> d!1234409 (= c!714231 ((_ is Nil!45925) lt!1489629))))

(assert (=> d!1234409 (= (++!11716 lt!1489629 (_2!25001 lt!1489624)) lt!1489749)))

(declare-fun b!4183371 () Bool)

(declare-fun res!1715695 () Bool)

(assert (=> b!4183371 (=> (not res!1715695) (not e!2597085))))

(assert (=> b!4183371 (= res!1715695 (= (size!33728 lt!1489749) (+ (size!33728 lt!1489629) (size!33728 (_2!25001 lt!1489624)))))))

(declare-fun b!4183372 () Bool)

(assert (=> b!4183372 (= e!2597085 (or (not (= (_2!25001 lt!1489624) Nil!45925)) (= lt!1489749 lt!1489629)))))

(declare-fun b!4183369 () Bool)

(assert (=> b!4183369 (= e!2597086 (_2!25001 lt!1489624))))

(declare-fun b!4183370 () Bool)

(assert (=> b!4183370 (= e!2597086 (Cons!45925 (h!51345 lt!1489629) (++!11716 (t!345218 lt!1489629) (_2!25001 lt!1489624))))))

(assert (= (and d!1234409 c!714231) b!4183369))

(assert (= (and d!1234409 (not c!714231)) b!4183370))

(assert (= (and d!1234409 res!1715696) b!4183371))

(assert (= (and b!4183371 res!1715695) b!4183372))

(declare-fun m!4772141 () Bool)

(assert (=> d!1234409 m!4772141))

(declare-fun m!4772143 () Bool)

(assert (=> d!1234409 m!4772143))

(declare-fun m!4772145 () Bool)

(assert (=> d!1234409 m!4772145))

(declare-fun m!4772147 () Bool)

(assert (=> b!4183371 m!4772147))

(declare-fun m!4772149 () Bool)

(assert (=> b!4183371 m!4772149))

(declare-fun m!4772151 () Bool)

(assert (=> b!4183371 m!4772151))

(declare-fun m!4772153 () Bool)

(assert (=> b!4183370 m!4772153))

(assert (=> b!4183056 d!1234409))

(declare-fun d!1234411 () Bool)

(assert (=> d!1234411 (= (get!14925 lt!1489632) (v!40651 lt!1489632))))

(assert (=> b!4183056 d!1234411))

(declare-fun d!1234413 () Bool)

(declare-fun lt!1489752 () BalanceConc!27304)

(assert (=> d!1234413 (= (list!16585 lt!1489752) (originalCharacters!8032 (_1!25001 lt!1489624)))))

(assert (=> d!1234413 (= lt!1489752 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 lt!1489624)))) (value!238386 (_1!25001 lt!1489624))))))

(assert (=> d!1234413 (= (charsOf!5079 (_1!25001 lt!1489624)) lt!1489752)))

(declare-fun b_lambda!122931 () Bool)

(assert (=> (not b_lambda!122931) (not d!1234413)))

(declare-fun t!345258 () Bool)

(declare-fun tb!250423 () Bool)

(assert (=> (and b!4183047 (= (toChars!10195 (transformation!7644 (h!51347 rules!3843))) (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 lt!1489624))))) t!345258) tb!250423))

(declare-fun b!4183373 () Bool)

(declare-fun e!2597087 () Bool)

(declare-fun tp!1278501 () Bool)

(assert (=> b!4183373 (= e!2597087 (and (inv!60468 (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 lt!1489624)))) (value!238386 (_1!25001 lt!1489624))))) tp!1278501))))

(declare-fun result!305172 () Bool)

(assert (=> tb!250423 (= result!305172 (and (inv!60469 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 lt!1489624)))) (value!238386 (_1!25001 lt!1489624)))) e!2597087))))

(assert (= tb!250423 b!4183373))

(declare-fun m!4772183 () Bool)

(assert (=> b!4183373 m!4772183))

(declare-fun m!4772185 () Bool)

(assert (=> tb!250423 m!4772185))

(assert (=> d!1234413 t!345258))

(declare-fun b_and!327369 () Bool)

(assert (= b_and!327357 (and (=> t!345258 result!305172) b_and!327369)))

(declare-fun t!345260 () Bool)

(declare-fun tb!250425 () Bool)

(assert (=> (and b!4183060 (= (toChars!10195 (transformation!7644 rBis!167)) (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 lt!1489624))))) t!345260) tb!250425))

(declare-fun result!305174 () Bool)

(assert (= result!305174 result!305172))

(assert (=> d!1234413 t!345260))

(declare-fun b_and!327371 () Bool)

(assert (= b_and!327359 (and (=> t!345260 result!305174) b_and!327371)))

(declare-fun tb!250427 () Bool)

(declare-fun t!345262 () Bool)

(assert (=> (and b!4183068 (= (toChars!10195 (transformation!7644 r!4142)) (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 lt!1489624))))) t!345262) tb!250427))

(declare-fun result!305176 () Bool)

(assert (= result!305176 result!305172))

(assert (=> d!1234413 t!345262))

(declare-fun b_and!327373 () Bool)

(assert (= b_and!327361 (and (=> t!345262 result!305176) b_and!327373)))

(declare-fun m!4772187 () Bool)

(assert (=> d!1234413 m!4772187))

(declare-fun m!4772189 () Bool)

(assert (=> d!1234413 m!4772189))

(assert (=> b!4183056 d!1234413))

(declare-fun b!4183381 () Bool)

(declare-fun e!2597090 () Bool)

(assert (=> b!4183381 (= e!2597090 (>= (size!33728 (++!11716 lt!1489629 (_2!25001 lt!1489624))) (size!33728 lt!1489629)))))

(declare-fun b!4183379 () Bool)

(declare-fun res!1715702 () Bool)

(declare-fun e!2597091 () Bool)

(assert (=> b!4183379 (=> (not res!1715702) (not e!2597091))))

(assert (=> b!4183379 (= res!1715702 (= (head!8878 lt!1489629) (head!8878 (++!11716 lt!1489629 (_2!25001 lt!1489624)))))))

(declare-fun d!1234417 () Bool)

(assert (=> d!1234417 e!2597090))

(declare-fun res!1715704 () Bool)

(assert (=> d!1234417 (=> res!1715704 e!2597090)))

(declare-fun lt!1489753 () Bool)

(assert (=> d!1234417 (= res!1715704 (not lt!1489753))))

(declare-fun e!2597092 () Bool)

(assert (=> d!1234417 (= lt!1489753 e!2597092)))

(declare-fun res!1715703 () Bool)

(assert (=> d!1234417 (=> res!1715703 e!2597092)))

(assert (=> d!1234417 (= res!1715703 ((_ is Nil!45925) lt!1489629))))

(assert (=> d!1234417 (= (isPrefix!4501 lt!1489629 (++!11716 lt!1489629 (_2!25001 lt!1489624))) lt!1489753)))

(declare-fun b!4183378 () Bool)

(assert (=> b!4183378 (= e!2597092 e!2597091)))

(declare-fun res!1715701 () Bool)

(assert (=> b!4183378 (=> (not res!1715701) (not e!2597091))))

(assert (=> b!4183378 (= res!1715701 (not ((_ is Nil!45925) (++!11716 lt!1489629 (_2!25001 lt!1489624)))))))

(declare-fun b!4183380 () Bool)

(assert (=> b!4183380 (= e!2597091 (isPrefix!4501 (tail!6725 lt!1489629) (tail!6725 (++!11716 lt!1489629 (_2!25001 lt!1489624)))))))

(assert (= (and d!1234417 (not res!1715703)) b!4183378))

(assert (= (and b!4183378 res!1715701) b!4183379))

(assert (= (and b!4183379 res!1715702) b!4183380))

(assert (= (and d!1234417 (not res!1715704)) b!4183381))

(assert (=> b!4183381 m!4771775))

(declare-fun m!4772191 () Bool)

(assert (=> b!4183381 m!4772191))

(assert (=> b!4183381 m!4772149))

(declare-fun m!4772193 () Bool)

(assert (=> b!4183379 m!4772193))

(assert (=> b!4183379 m!4771775))

(declare-fun m!4772195 () Bool)

(assert (=> b!4183379 m!4772195))

(declare-fun m!4772197 () Bool)

(assert (=> b!4183380 m!4772197))

(assert (=> b!4183380 m!4771775))

(declare-fun m!4772199 () Bool)

(assert (=> b!4183380 m!4772199))

(assert (=> b!4183380 m!4772197))

(assert (=> b!4183380 m!4772199))

(declare-fun m!4772201 () Bool)

(assert (=> b!4183380 m!4772201))

(assert (=> b!4183056 d!1234417))

(declare-fun d!1234419 () Bool)

(declare-fun res!1715713 () Bool)

(declare-fun e!2597099 () Bool)

(assert (=> d!1234419 (=> (not res!1715713) (not e!2597099))))

(assert (=> d!1234419 (= res!1715713 (validRegex!5666 (regex!7644 r!4142)))))

(assert (=> d!1234419 (= (ruleValid!3362 thiss!25986 r!4142) e!2597099)))

(declare-fun b!4183391 () Bool)

(declare-fun res!1715714 () Bool)

(assert (=> b!4183391 (=> (not res!1715714) (not e!2597099))))

(declare-fun nullable!4401 (Regex!12549) Bool)

(assert (=> b!4183391 (= res!1715714 (not (nullable!4401 (regex!7644 r!4142))))))

(declare-fun b!4183392 () Bool)

(assert (=> b!4183392 (= e!2597099 (not (= (tag!8508 r!4142) (String!53237 ""))))))

(assert (= (and d!1234419 res!1715713) b!4183391))

(assert (= (and b!4183391 res!1715714) b!4183392))

(assert (=> d!1234419 m!4771759))

(declare-fun m!4772219 () Bool)

(assert (=> b!4183391 m!4772219))

(assert (=> b!4183063 d!1234419))

(declare-fun b!4183456 () Bool)

(declare-fun res!1715737 () Bool)

(declare-fun e!2597132 () Bool)

(assert (=> b!4183456 (=> (not res!1715737) (not e!2597132))))

(declare-fun lt!1489768 () Option!9838)

(assert (=> b!4183456 (= res!1715737 (= (++!11716 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489768)))) (_2!25001 (get!14925 lt!1489768))) input!3342))))

(declare-fun d!1234425 () Bool)

(declare-fun e!2597134 () Bool)

(assert (=> d!1234425 e!2597134))

(declare-fun res!1715739 () Bool)

(assert (=> d!1234425 (=> res!1715739 e!2597134)))

(assert (=> d!1234425 (= res!1715739 (isEmpty!27177 lt!1489768))))

(declare-fun e!2597133 () Option!9838)

(assert (=> d!1234425 (= lt!1489768 e!2597133)))

(declare-fun c!714234 () Bool)

(assert (=> d!1234425 (= c!714234 (and ((_ is Cons!45927) rules!3843) ((_ is Nil!45927) (t!345220 rules!3843))))))

(declare-fun lt!1489766 () Unit!65011)

(declare-fun lt!1489769 () Unit!65011)

(assert (=> d!1234425 (= lt!1489766 lt!1489769)))

(assert (=> d!1234425 (isPrefix!4501 input!3342 input!3342)))

(assert (=> d!1234425 (= lt!1489769 (lemmaIsPrefixRefl!2930 input!3342 input!3342))))

(declare-fun rulesValidInductive!2815 (LexerInterface!7237 List!46051) Bool)

(assert (=> d!1234425 (rulesValidInductive!2815 thiss!25986 rules!3843)))

(assert (=> d!1234425 (= (maxPrefix!4285 thiss!25986 rules!3843 input!3342) lt!1489768)))

(declare-fun bm!291779 () Bool)

(declare-fun call!291784 () Option!9838)

(assert (=> bm!291779 (= call!291784 (maxPrefixOneRule!3246 thiss!25986 (h!51347 rules!3843) input!3342))))

(declare-fun b!4183457 () Bool)

(assert (=> b!4183457 (= e!2597133 call!291784)))

(declare-fun b!4183458 () Bool)

(declare-fun res!1715735 () Bool)

(assert (=> b!4183458 (=> (not res!1715735) (not e!2597132))))

(assert (=> b!4183458 (= res!1715735 (< (size!33728 (_2!25001 (get!14925 lt!1489768))) (size!33728 input!3342)))))

(declare-fun b!4183459 () Bool)

(declare-fun res!1715738 () Bool)

(assert (=> b!4183459 (=> (not res!1715738) (not e!2597132))))

(assert (=> b!4183459 (= res!1715738 (matchR!6288 (regex!7644 (rule!10710 (_1!25001 (get!14925 lt!1489768)))) (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489768))))))))

(declare-fun b!4183460 () Bool)

(declare-fun lt!1489767 () Option!9838)

(declare-fun lt!1489765 () Option!9838)

(assert (=> b!4183460 (= e!2597133 (ite (and ((_ is None!9837) lt!1489767) ((_ is None!9837) lt!1489765)) None!9837 (ite ((_ is None!9837) lt!1489765) lt!1489767 (ite ((_ is None!9837) lt!1489767) lt!1489765 (ite (>= (size!33727 (_1!25001 (v!40651 lt!1489767))) (size!33727 (_1!25001 (v!40651 lt!1489765)))) lt!1489767 lt!1489765)))))))

(assert (=> b!4183460 (= lt!1489767 call!291784)))

(assert (=> b!4183460 (= lt!1489765 (maxPrefix!4285 thiss!25986 (t!345220 rules!3843) input!3342))))

(declare-fun b!4183461 () Bool)

(declare-fun res!1715734 () Bool)

(assert (=> b!4183461 (=> (not res!1715734) (not e!2597132))))

(assert (=> b!4183461 (= res!1715734 (= (value!238386 (_1!25001 (get!14925 lt!1489768))) (apply!10609 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489768)))) (seqFromList!5669 (originalCharacters!8032 (_1!25001 (get!14925 lt!1489768)))))))))

(declare-fun b!4183462 () Bool)

(declare-fun res!1715740 () Bool)

(assert (=> b!4183462 (=> (not res!1715740) (not e!2597132))))

(assert (=> b!4183462 (= res!1715740 (= (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489768)))) (originalCharacters!8032 (_1!25001 (get!14925 lt!1489768)))))))

(declare-fun b!4183463 () Bool)

(assert (=> b!4183463 (= e!2597132 (contains!9451 rules!3843 (rule!10710 (_1!25001 (get!14925 lt!1489768)))))))

(declare-fun b!4183464 () Bool)

(assert (=> b!4183464 (= e!2597134 e!2597132)))

(declare-fun res!1715736 () Bool)

(assert (=> b!4183464 (=> (not res!1715736) (not e!2597132))))

(declare-fun isDefined!7331 (Option!9838) Bool)

(assert (=> b!4183464 (= res!1715736 (isDefined!7331 lt!1489768))))

(assert (= (and d!1234425 c!714234) b!4183457))

(assert (= (and d!1234425 (not c!714234)) b!4183460))

(assert (= (or b!4183457 b!4183460) bm!291779))

(assert (= (and d!1234425 (not res!1715739)) b!4183464))

(assert (= (and b!4183464 res!1715736) b!4183462))

(assert (= (and b!4183462 res!1715740) b!4183458))

(assert (= (and b!4183458 res!1715735) b!4183456))

(assert (= (and b!4183456 res!1715737) b!4183461))

(assert (= (and b!4183461 res!1715734) b!4183459))

(assert (= (and b!4183459 res!1715738) b!4183463))

(declare-fun m!4772229 () Bool)

(assert (=> b!4183460 m!4772229))

(declare-fun m!4772231 () Bool)

(assert (=> b!4183464 m!4772231))

(declare-fun m!4772233 () Bool)

(assert (=> b!4183456 m!4772233))

(declare-fun m!4772235 () Bool)

(assert (=> b!4183456 m!4772235))

(assert (=> b!4183456 m!4772235))

(declare-fun m!4772237 () Bool)

(assert (=> b!4183456 m!4772237))

(assert (=> b!4183456 m!4772237))

(declare-fun m!4772239 () Bool)

(assert (=> b!4183456 m!4772239))

(assert (=> b!4183463 m!4772233))

(declare-fun m!4772241 () Bool)

(assert (=> b!4183463 m!4772241))

(declare-fun m!4772243 () Bool)

(assert (=> bm!291779 m!4772243))

(assert (=> b!4183458 m!4772233))

(declare-fun m!4772245 () Bool)

(assert (=> b!4183458 m!4772245))

(assert (=> b!4183458 m!4771763))

(assert (=> b!4183462 m!4772233))

(assert (=> b!4183462 m!4772235))

(assert (=> b!4183462 m!4772235))

(assert (=> b!4183462 m!4772237))

(assert (=> b!4183459 m!4772233))

(assert (=> b!4183459 m!4772235))

(assert (=> b!4183459 m!4772235))

(assert (=> b!4183459 m!4772237))

(assert (=> b!4183459 m!4772237))

(declare-fun m!4772247 () Bool)

(assert (=> b!4183459 m!4772247))

(assert (=> b!4183461 m!4772233))

(declare-fun m!4772249 () Bool)

(assert (=> b!4183461 m!4772249))

(assert (=> b!4183461 m!4772249))

(declare-fun m!4772251 () Bool)

(assert (=> b!4183461 m!4772251))

(declare-fun m!4772253 () Bool)

(assert (=> d!1234425 m!4772253))

(assert (=> d!1234425 m!4771789))

(assert (=> d!1234425 m!4771793))

(declare-fun m!4772255 () Bool)

(assert (=> d!1234425 m!4772255))

(assert (=> b!4183053 d!1234425))

(declare-fun b!4183468 () Bool)

(declare-fun e!2597135 () Bool)

(assert (=> b!4183468 (= e!2597135 (>= (size!33728 input!3342) (size!33728 pBis!107)))))

(declare-fun b!4183466 () Bool)

(declare-fun res!1715742 () Bool)

(declare-fun e!2597136 () Bool)

(assert (=> b!4183466 (=> (not res!1715742) (not e!2597136))))

(assert (=> b!4183466 (= res!1715742 (= (head!8878 pBis!107) (head!8878 input!3342)))))

(declare-fun d!1234429 () Bool)

(assert (=> d!1234429 e!2597135))

(declare-fun res!1715744 () Bool)

(assert (=> d!1234429 (=> res!1715744 e!2597135)))

(declare-fun lt!1489770 () Bool)

(assert (=> d!1234429 (= res!1715744 (not lt!1489770))))

(declare-fun e!2597137 () Bool)

(assert (=> d!1234429 (= lt!1489770 e!2597137)))

(declare-fun res!1715743 () Bool)

(assert (=> d!1234429 (=> res!1715743 e!2597137)))

(assert (=> d!1234429 (= res!1715743 ((_ is Nil!45925) pBis!107))))

(assert (=> d!1234429 (= (isPrefix!4501 pBis!107 input!3342) lt!1489770)))

(declare-fun b!4183465 () Bool)

(assert (=> b!4183465 (= e!2597137 e!2597136)))

(declare-fun res!1715741 () Bool)

(assert (=> b!4183465 (=> (not res!1715741) (not e!2597136))))

(assert (=> b!4183465 (= res!1715741 (not ((_ is Nil!45925) input!3342)))))

(declare-fun b!4183467 () Bool)

(assert (=> b!4183467 (= e!2597136 (isPrefix!4501 (tail!6725 pBis!107) (tail!6725 input!3342)))))

(assert (= (and d!1234429 (not res!1715743)) b!4183465))

(assert (= (and b!4183465 res!1715741) b!4183466))

(assert (= (and b!4183466 res!1715742) b!4183467))

(assert (= (and d!1234429 (not res!1715744)) b!4183468))

(assert (=> b!4183468 m!4771763))

(assert (=> b!4183468 m!4771811))

(declare-fun m!4772257 () Bool)

(assert (=> b!4183466 m!4772257))

(assert (=> b!4183466 m!4771891))

(declare-fun m!4772259 () Bool)

(assert (=> b!4183467 m!4772259))

(assert (=> b!4183467 m!4771887))

(assert (=> b!4183467 m!4772259))

(assert (=> b!4183467 m!4771887))

(declare-fun m!4772261 () Bool)

(assert (=> b!4183467 m!4772261))

(assert (=> b!4183064 d!1234429))

(declare-fun d!1234431 () Bool)

(declare-fun res!1715747 () Bool)

(declare-fun e!2597140 () Bool)

(assert (=> d!1234431 (=> (not res!1715747) (not e!2597140))))

(declare-fun rulesValid!2977 (LexerInterface!7237 List!46051) Bool)

(assert (=> d!1234431 (= res!1715747 (rulesValid!2977 thiss!25986 rules!3843))))

(assert (=> d!1234431 (= (rulesInvariant!6450 thiss!25986 rules!3843) e!2597140)))

(declare-fun b!4183471 () Bool)

(declare-datatypes ((List!46052 0))(
  ( (Nil!45928) (Cons!45928 (h!51348 String!53236) (t!345285 List!46052)) )
))
(declare-fun noDuplicateTag!3138 (LexerInterface!7237 List!46051 List!46052) Bool)

(assert (=> b!4183471 (= e!2597140 (noDuplicateTag!3138 thiss!25986 rules!3843 Nil!45928))))

(assert (= (and d!1234431 res!1715747) b!4183471))

(declare-fun m!4772263 () Bool)

(assert (=> d!1234431 m!4772263))

(declare-fun m!4772265 () Bool)

(assert (=> b!4183471 m!4772265))

(assert (=> b!4183070 d!1234431))

(declare-fun d!1234433 () Bool)

(assert (=> d!1234433 (= (isEmpty!27176 rules!3843) ((_ is Nil!45927) rules!3843))))

(assert (=> b!4183049 d!1234433))

(declare-fun d!1234435 () Bool)

(assert (=> d!1234435 (ruleValid!3362 thiss!25986 rBis!167)))

(declare-fun lt!1489773 () Unit!65011)

(declare-fun choose!25607 (LexerInterface!7237 Rule!15088 List!46051) Unit!65011)

(assert (=> d!1234435 (= lt!1489773 (choose!25607 thiss!25986 rBis!167 rules!3843))))

(assert (=> d!1234435 (contains!9451 rules!3843 rBis!167)))

(assert (=> d!1234435 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2368 thiss!25986 rBis!167 rules!3843) lt!1489773)))

(declare-fun bs!596384 () Bool)

(assert (= bs!596384 d!1234435))

(assert (=> bs!596384 m!4771755))

(declare-fun m!4772267 () Bool)

(assert (=> bs!596384 m!4772267))

(assert (=> bs!596384 m!4771785))

(assert (=> b!4183050 d!1234435))

(declare-fun b!4183472 () Bool)

(declare-fun e!2597144 () Bool)

(declare-fun lt!1489777 () Option!9838)

(assert (=> b!4183472 (= e!2597144 (= (size!33727 (_1!25001 (get!14925 lt!1489777))) (size!33728 (originalCharacters!8032 (_1!25001 (get!14925 lt!1489777))))))))

(declare-fun b!4183473 () Bool)

(declare-fun res!1715751 () Bool)

(assert (=> b!4183473 (=> (not res!1715751) (not e!2597144))))

(assert (=> b!4183473 (= res!1715751 (= (rule!10710 (_1!25001 (get!14925 lt!1489777))) rBis!167))))

(declare-fun b!4183474 () Bool)

(declare-fun res!1715748 () Bool)

(assert (=> b!4183474 (=> (not res!1715748) (not e!2597144))))

(assert (=> b!4183474 (= res!1715748 (= (++!11716 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489777)))) (_2!25001 (get!14925 lt!1489777))) input!3342))))

(declare-fun b!4183475 () Bool)

(declare-fun e!2597141 () Bool)

(assert (=> b!4183475 (= e!2597141 e!2597144)))

(declare-fun res!1715749 () Bool)

(assert (=> b!4183475 (=> (not res!1715749) (not e!2597144))))

(assert (=> b!4183475 (= res!1715749 (matchR!6288 (regex!7644 rBis!167) (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489777))))))))

(declare-fun b!4183476 () Bool)

(declare-fun e!2597142 () Option!9838)

(declare-fun lt!1489778 () tuple2!43738)

(assert (=> b!4183476 (= e!2597142 (Some!9837 (tuple2!43735 (Token!14003 (apply!10609 (transformation!7644 rBis!167) (seqFromList!5669 (_1!25003 lt!1489778))) rBis!167 (size!33730 (seqFromList!5669 (_1!25003 lt!1489778))) (_1!25003 lt!1489778)) (_2!25003 lt!1489778))))))

(declare-fun lt!1489776 () Unit!65011)

(assert (=> b!4183476 (= lt!1489776 (longestMatchIsAcceptedByMatchOrIsEmpty!1564 (regex!7644 rBis!167) input!3342))))

(declare-fun res!1715753 () Bool)

(assert (=> b!4183476 (= res!1715753 (isEmpty!27179 (_1!25003 (findLongestMatchInner!1591 (regex!7644 rBis!167) Nil!45925 (size!33728 Nil!45925) input!3342 input!3342 (size!33728 input!3342)))))))

(declare-fun e!2597143 () Bool)

(assert (=> b!4183476 (=> res!1715753 e!2597143)))

(assert (=> b!4183476 e!2597143))

(declare-fun lt!1489774 () Unit!65011)

(assert (=> b!4183476 (= lt!1489774 lt!1489776)))

(declare-fun lt!1489775 () Unit!65011)

(assert (=> b!4183476 (= lt!1489775 (lemmaSemiInverse!2410 (transformation!7644 rBis!167) (seqFromList!5669 (_1!25003 lt!1489778))))))

(declare-fun b!4183477 () Bool)

(assert (=> b!4183477 (= e!2597142 None!9837)))

(declare-fun d!1234437 () Bool)

(assert (=> d!1234437 e!2597141))

(declare-fun res!1715754 () Bool)

(assert (=> d!1234437 (=> res!1715754 e!2597141)))

(assert (=> d!1234437 (= res!1715754 (isEmpty!27177 lt!1489777))))

(assert (=> d!1234437 (= lt!1489777 e!2597142)))

(declare-fun c!714235 () Bool)

(assert (=> d!1234437 (= c!714235 (isEmpty!27179 (_1!25003 lt!1489778)))))

(assert (=> d!1234437 (= lt!1489778 (findLongestMatch!1504 (regex!7644 rBis!167) input!3342))))

(assert (=> d!1234437 (ruleValid!3362 thiss!25986 rBis!167)))

(assert (=> d!1234437 (= (maxPrefixOneRule!3246 thiss!25986 rBis!167 input!3342) lt!1489777)))

(declare-fun b!4183478 () Bool)

(declare-fun res!1715752 () Bool)

(assert (=> b!4183478 (=> (not res!1715752) (not e!2597144))))

(assert (=> b!4183478 (= res!1715752 (= (value!238386 (_1!25001 (get!14925 lt!1489777))) (apply!10609 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489777)))) (seqFromList!5669 (originalCharacters!8032 (_1!25001 (get!14925 lt!1489777)))))))))

(declare-fun b!4183479 () Bool)

(assert (=> b!4183479 (= e!2597143 (matchR!6288 (regex!7644 rBis!167) (_1!25003 (findLongestMatchInner!1591 (regex!7644 rBis!167) Nil!45925 (size!33728 Nil!45925) input!3342 input!3342 (size!33728 input!3342)))))))

(declare-fun b!4183480 () Bool)

(declare-fun res!1715750 () Bool)

(assert (=> b!4183480 (=> (not res!1715750) (not e!2597144))))

(assert (=> b!4183480 (= res!1715750 (< (size!33728 (_2!25001 (get!14925 lt!1489777))) (size!33728 input!3342)))))

(assert (= (and d!1234437 c!714235) b!4183477))

(assert (= (and d!1234437 (not c!714235)) b!4183476))

(assert (= (and b!4183476 (not res!1715753)) b!4183479))

(assert (= (and d!1234437 (not res!1715754)) b!4183475))

(assert (= (and b!4183475 res!1715749) b!4183474))

(assert (= (and b!4183474 res!1715748) b!4183480))

(assert (= (and b!4183480 res!1715750) b!4183473))

(assert (= (and b!4183473 res!1715751) b!4183478))

(assert (= (and b!4183478 res!1715752) b!4183472))

(declare-fun m!4772269 () Bool)

(assert (=> b!4183472 m!4772269))

(declare-fun m!4772271 () Bool)

(assert (=> b!4183472 m!4772271))

(assert (=> b!4183475 m!4772269))

(declare-fun m!4772273 () Bool)

(assert (=> b!4183475 m!4772273))

(assert (=> b!4183475 m!4772273))

(declare-fun m!4772275 () Bool)

(assert (=> b!4183475 m!4772275))

(assert (=> b!4183475 m!4772275))

(declare-fun m!4772277 () Bool)

(assert (=> b!4183475 m!4772277))

(assert (=> b!4183479 m!4772073))

(assert (=> b!4183479 m!4771763))

(assert (=> b!4183479 m!4772073))

(assert (=> b!4183479 m!4771763))

(declare-fun m!4772279 () Bool)

(assert (=> b!4183479 m!4772279))

(declare-fun m!4772281 () Bool)

(assert (=> b!4183479 m!4772281))

(declare-fun m!4772283 () Bool)

(assert (=> b!4183476 m!4772283))

(assert (=> b!4183476 m!4771763))

(assert (=> b!4183476 m!4772073))

(assert (=> b!4183476 m!4771763))

(assert (=> b!4183476 m!4772279))

(declare-fun m!4772285 () Bool)

(assert (=> b!4183476 m!4772285))

(declare-fun m!4772287 () Bool)

(assert (=> b!4183476 m!4772287))

(assert (=> b!4183476 m!4772285))

(declare-fun m!4772289 () Bool)

(assert (=> b!4183476 m!4772289))

(assert (=> b!4183476 m!4772285))

(assert (=> b!4183476 m!4772073))

(assert (=> b!4183476 m!4772285))

(declare-fun m!4772291 () Bool)

(assert (=> b!4183476 m!4772291))

(declare-fun m!4772293 () Bool)

(assert (=> b!4183476 m!4772293))

(assert (=> b!4183473 m!4772269))

(assert (=> b!4183478 m!4772269))

(declare-fun m!4772295 () Bool)

(assert (=> b!4183478 m!4772295))

(assert (=> b!4183478 m!4772295))

(declare-fun m!4772297 () Bool)

(assert (=> b!4183478 m!4772297))

(assert (=> b!4183480 m!4772269))

(declare-fun m!4772299 () Bool)

(assert (=> b!4183480 m!4772299))

(assert (=> b!4183480 m!4771763))

(assert (=> b!4183474 m!4772269))

(assert (=> b!4183474 m!4772273))

(assert (=> b!4183474 m!4772273))

(assert (=> b!4183474 m!4772275))

(assert (=> b!4183474 m!4772275))

(declare-fun m!4772301 () Bool)

(assert (=> b!4183474 m!4772301))

(declare-fun m!4772303 () Bool)

(assert (=> d!1234437 m!4772303))

(declare-fun m!4772305 () Bool)

(assert (=> d!1234437 m!4772305))

(declare-fun m!4772307 () Bool)

(assert (=> d!1234437 m!4772307))

(assert (=> d!1234437 m!4771755))

(assert (=> b!4183050 d!1234437))

(declare-fun d!1234439 () Bool)

(assert (=> d!1234439 (= (isEmpty!27177 lt!1489632) (not ((_ is Some!9837) lt!1489632)))))

(assert (=> b!4183050 d!1234439))

(declare-fun d!1234441 () Bool)

(assert (=> d!1234441 (<= (size!33728 pBis!107) (size!33728 input!3342))))

(declare-fun lt!1489781 () Unit!65011)

(declare-fun choose!25608 (List!46049 List!46049) Unit!65011)

(assert (=> d!1234441 (= lt!1489781 (choose!25608 pBis!107 input!3342))))

(assert (=> d!1234441 (isPrefix!4501 pBis!107 input!3342)))

(assert (=> d!1234441 (= (lemmaIsPrefixThenSmallerEqSize!531 pBis!107 input!3342) lt!1489781)))

(declare-fun bs!596385 () Bool)

(assert (= bs!596385 d!1234441))

(assert (=> bs!596385 m!4771811))

(assert (=> bs!596385 m!4771763))

(declare-fun m!4772309 () Bool)

(assert (=> bs!596385 m!4772309))

(assert (=> bs!596385 m!4771819))

(assert (=> b!4183050 d!1234441))

(declare-fun d!1234443 () Bool)

(declare-fun lt!1489782 () Int)

(assert (=> d!1234443 (>= lt!1489782 0)))

(declare-fun e!2597145 () Int)

(assert (=> d!1234443 (= lt!1489782 e!2597145)))

(declare-fun c!714236 () Bool)

(assert (=> d!1234443 (= c!714236 ((_ is Nil!45925) input!3342))))

(assert (=> d!1234443 (= (size!33728 input!3342) lt!1489782)))

(declare-fun b!4183481 () Bool)

(assert (=> b!4183481 (= e!2597145 0)))

(declare-fun b!4183482 () Bool)

(assert (=> b!4183482 (= e!2597145 (+ 1 (size!33728 (t!345218 input!3342))))))

(assert (= (and d!1234443 c!714236) b!4183481))

(assert (= (and d!1234443 (not c!714236)) b!4183482))

(declare-fun m!4772311 () Bool)

(assert (=> b!4183482 m!4772311))

(assert (=> b!4183050 d!1234443))

(declare-fun d!1234445 () Bool)

(declare-fun lt!1489785 () Bool)

(declare-fun content!7138 (List!46051) (InoxSet Rule!15088))

(assert (=> d!1234445 (= lt!1489785 (select (content!7138 rules!3843) r!4142))))

(declare-fun e!2597151 () Bool)

(assert (=> d!1234445 (= lt!1489785 e!2597151)))

(declare-fun res!1715759 () Bool)

(assert (=> d!1234445 (=> (not res!1715759) (not e!2597151))))

(assert (=> d!1234445 (= res!1715759 ((_ is Cons!45927) rules!3843))))

(assert (=> d!1234445 (= (contains!9451 rules!3843 r!4142) lt!1489785)))

(declare-fun b!4183487 () Bool)

(declare-fun e!2597150 () Bool)

(assert (=> b!4183487 (= e!2597151 e!2597150)))

(declare-fun res!1715760 () Bool)

(assert (=> b!4183487 (=> res!1715760 e!2597150)))

(assert (=> b!4183487 (= res!1715760 (= (h!51347 rules!3843) r!4142))))

(declare-fun b!4183488 () Bool)

(assert (=> b!4183488 (= e!2597150 (contains!9451 (t!345220 rules!3843) r!4142))))

(assert (= (and d!1234445 res!1715759) b!4183487))

(assert (= (and b!4183487 (not res!1715760)) b!4183488))

(declare-fun m!4772313 () Bool)

(assert (=> d!1234445 m!4772313))

(declare-fun m!4772315 () Bool)

(assert (=> d!1234445 m!4772315))

(declare-fun m!4772317 () Bool)

(assert (=> b!4183488 m!4772317))

(assert (=> b!4183061 d!1234445))

(declare-fun c!714241 () Bool)

(declare-fun bm!291786 () Bool)

(declare-fun call!291791 () Bool)

(declare-fun c!714242 () Bool)

(assert (=> bm!291786 (= call!291791 (validRegex!5666 (ite c!714242 (reg!12878 (regex!7644 r!4142)) (ite c!714241 (regTwo!25611 (regex!7644 r!4142)) (regTwo!25610 (regex!7644 r!4142))))))))

(declare-fun b!4183507 () Bool)

(declare-fun e!2597168 () Bool)

(declare-fun e!2597169 () Bool)

(assert (=> b!4183507 (= e!2597168 e!2597169)))

(assert (=> b!4183507 (= c!714241 ((_ is Union!12549) (regex!7644 r!4142)))))

(declare-fun b!4183509 () Bool)

(declare-fun res!1715771 () Bool)

(declare-fun e!2597172 () Bool)

(assert (=> b!4183509 (=> res!1715771 e!2597172)))

(assert (=> b!4183509 (= res!1715771 (not ((_ is Concat!20424) (regex!7644 r!4142))))))

(assert (=> b!4183509 (= e!2597169 e!2597172)))

(declare-fun b!4183510 () Bool)

(declare-fun e!2597166 () Bool)

(assert (=> b!4183510 (= e!2597168 e!2597166)))

(declare-fun res!1715774 () Bool)

(assert (=> b!4183510 (= res!1715774 (not (nullable!4401 (reg!12878 (regex!7644 r!4142)))))))

(assert (=> b!4183510 (=> (not res!1715774) (not e!2597166))))

(declare-fun b!4183511 () Bool)

(declare-fun res!1715773 () Bool)

(declare-fun e!2597171 () Bool)

(assert (=> b!4183511 (=> (not res!1715773) (not e!2597171))))

(declare-fun call!291793 () Bool)

(assert (=> b!4183511 (= res!1715773 call!291793)))

(assert (=> b!4183511 (= e!2597169 e!2597171)))

(declare-fun b!4183512 () Bool)

(declare-fun e!2597170 () Bool)

(assert (=> b!4183512 (= e!2597170 e!2597168)))

(assert (=> b!4183512 (= c!714242 ((_ is Star!12549) (regex!7644 r!4142)))))

(declare-fun b!4183508 () Bool)

(assert (=> b!4183508 (= e!2597166 call!291791)))

(declare-fun d!1234447 () Bool)

(declare-fun res!1715772 () Bool)

(assert (=> d!1234447 (=> res!1715772 e!2597170)))

(assert (=> d!1234447 (= res!1715772 ((_ is ElementMatch!12549) (regex!7644 r!4142)))))

(assert (=> d!1234447 (= (validRegex!5666 (regex!7644 r!4142)) e!2597170)))

(declare-fun bm!291787 () Bool)

(assert (=> bm!291787 (= call!291793 (validRegex!5666 (ite c!714241 (regOne!25611 (regex!7644 r!4142)) (regOne!25610 (regex!7644 r!4142)))))))

(declare-fun b!4183513 () Bool)

(declare-fun call!291792 () Bool)

(assert (=> b!4183513 (= e!2597171 call!291792)))

(declare-fun b!4183514 () Bool)

(declare-fun e!2597167 () Bool)

(assert (=> b!4183514 (= e!2597167 call!291792)))

(declare-fun bm!291788 () Bool)

(assert (=> bm!291788 (= call!291792 call!291791)))

(declare-fun b!4183515 () Bool)

(assert (=> b!4183515 (= e!2597172 e!2597167)))

(declare-fun res!1715775 () Bool)

(assert (=> b!4183515 (=> (not res!1715775) (not e!2597167))))

(assert (=> b!4183515 (= res!1715775 call!291793)))

(assert (= (and d!1234447 (not res!1715772)) b!4183512))

(assert (= (and b!4183512 c!714242) b!4183510))

(assert (= (and b!4183512 (not c!714242)) b!4183507))

(assert (= (and b!4183510 res!1715774) b!4183508))

(assert (= (and b!4183507 c!714241) b!4183511))

(assert (= (and b!4183507 (not c!714241)) b!4183509))

(assert (= (and b!4183511 res!1715773) b!4183513))

(assert (= (and b!4183509 (not res!1715771)) b!4183515))

(assert (= (and b!4183515 res!1715775) b!4183514))

(assert (= (or b!4183513 b!4183514) bm!291788))

(assert (= (or b!4183511 b!4183515) bm!291787))

(assert (= (or b!4183508 bm!291788) bm!291786))

(declare-fun m!4772319 () Bool)

(assert (=> bm!291786 m!4772319))

(declare-fun m!4772321 () Bool)

(assert (=> b!4183510 m!4772321))

(declare-fun m!4772323 () Bool)

(assert (=> bm!291787 m!4772323))

(assert (=> b!4183051 d!1234447))

(declare-fun b!4183519 () Bool)

(declare-fun e!2597173 () Bool)

(assert (=> b!4183519 (= e!2597173 (>= (size!33728 input!3342) (size!33728 p!2959)))))

(declare-fun b!4183517 () Bool)

(declare-fun res!1715777 () Bool)

(declare-fun e!2597174 () Bool)

(assert (=> b!4183517 (=> (not res!1715777) (not e!2597174))))

(assert (=> b!4183517 (= res!1715777 (= (head!8878 p!2959) (head!8878 input!3342)))))

(declare-fun d!1234449 () Bool)

(assert (=> d!1234449 e!2597173))

(declare-fun res!1715779 () Bool)

(assert (=> d!1234449 (=> res!1715779 e!2597173)))

(declare-fun lt!1489786 () Bool)

(assert (=> d!1234449 (= res!1715779 (not lt!1489786))))

(declare-fun e!2597175 () Bool)

(assert (=> d!1234449 (= lt!1489786 e!2597175)))

(declare-fun res!1715778 () Bool)

(assert (=> d!1234449 (=> res!1715778 e!2597175)))

(assert (=> d!1234449 (= res!1715778 ((_ is Nil!45925) p!2959))))

(assert (=> d!1234449 (= (isPrefix!4501 p!2959 input!3342) lt!1489786)))

(declare-fun b!4183516 () Bool)

(assert (=> b!4183516 (= e!2597175 e!2597174)))

(declare-fun res!1715776 () Bool)

(assert (=> b!4183516 (=> (not res!1715776) (not e!2597174))))

(assert (=> b!4183516 (= res!1715776 (not ((_ is Nil!45925) input!3342)))))

(declare-fun b!4183518 () Bool)

(assert (=> b!4183518 (= e!2597174 (isPrefix!4501 (tail!6725 p!2959) (tail!6725 input!3342)))))

(assert (= (and d!1234449 (not res!1715778)) b!4183516))

(assert (= (and b!4183516 res!1715776) b!4183517))

(assert (= (and b!4183517 res!1715777) b!4183518))

(assert (= (and d!1234449 (not res!1715779)) b!4183519))

(assert (=> b!4183519 m!4771763))

(assert (=> b!4183519 m!4771795))

(declare-fun m!4772325 () Bool)

(assert (=> b!4183517 m!4772325))

(assert (=> b!4183517 m!4771891))

(declare-fun m!4772327 () Bool)

(assert (=> b!4183518 m!4772327))

(assert (=> b!4183518 m!4771887))

(assert (=> b!4183518 m!4772327))

(assert (=> b!4183518 m!4771887))

(declare-fun m!4772329 () Bool)

(assert (=> b!4183518 m!4772329))

(assert (=> b!4183046 d!1234449))

(declare-fun d!1234451 () Bool)

(declare-fun lt!1489787 () Bool)

(assert (=> d!1234451 (= lt!1489787 (select (content!7138 rules!3843) rBis!167))))

(declare-fun e!2597177 () Bool)

(assert (=> d!1234451 (= lt!1489787 e!2597177)))

(declare-fun res!1715780 () Bool)

(assert (=> d!1234451 (=> (not res!1715780) (not e!2597177))))

(assert (=> d!1234451 (= res!1715780 ((_ is Cons!45927) rules!3843))))

(assert (=> d!1234451 (= (contains!9451 rules!3843 rBis!167) lt!1489787)))

(declare-fun b!4183520 () Bool)

(declare-fun e!2597176 () Bool)

(assert (=> b!4183520 (= e!2597177 e!2597176)))

(declare-fun res!1715781 () Bool)

(assert (=> b!4183520 (=> res!1715781 e!2597176)))

(assert (=> b!4183520 (= res!1715781 (= (h!51347 rules!3843) rBis!167))))

(declare-fun b!4183521 () Bool)

(assert (=> b!4183521 (= e!2597176 (contains!9451 (t!345220 rules!3843) rBis!167))))

(assert (= (and d!1234451 res!1715780) b!4183520))

(assert (= (and b!4183520 (not res!1715781)) b!4183521))

(assert (=> d!1234451 m!4772313))

(declare-fun m!4772331 () Bool)

(assert (=> d!1234451 m!4772331))

(declare-fun m!4772333 () Bool)

(assert (=> b!4183521 m!4772333))

(assert (=> b!4183057 d!1234451))

(declare-fun d!1234453 () Bool)

(assert (=> d!1234453 (= (inv!60463 (tag!8508 r!4142)) (= (mod (str.len (value!238385 (tag!8508 r!4142))) 2) 0))))

(assert (=> b!4183058 d!1234453))

(declare-fun d!1234455 () Bool)

(declare-fun res!1715782 () Bool)

(declare-fun e!2597178 () Bool)

(assert (=> d!1234455 (=> (not res!1715782) (not e!2597178))))

(assert (=> d!1234455 (= res!1715782 (semiInverseModEq!3310 (toChars!10195 (transformation!7644 r!4142)) (toValue!10336 (transformation!7644 r!4142))))))

(assert (=> d!1234455 (= (inv!60466 (transformation!7644 r!4142)) e!2597178)))

(declare-fun b!4183522 () Bool)

(assert (=> b!4183522 (= e!2597178 (equivClasses!3209 (toChars!10195 (transformation!7644 r!4142)) (toValue!10336 (transformation!7644 r!4142))))))

(assert (= (and d!1234455 res!1715782) b!4183522))

(declare-fun m!4772335 () Bool)

(assert (=> d!1234455 m!4772335))

(declare-fun m!4772337 () Bool)

(assert (=> b!4183522 m!4772337))

(assert (=> b!4183058 d!1234455))

(declare-fun b!4183551 () Bool)

(declare-fun res!1715804 () Bool)

(declare-fun e!2597194 () Bool)

(assert (=> b!4183551 (=> (not res!1715804) (not e!2597194))))

(declare-fun call!291796 () Bool)

(assert (=> b!4183551 (= res!1715804 (not call!291796))))

(declare-fun b!4183552 () Bool)

(declare-fun e!2597199 () Bool)

(declare-fun e!2597197 () Bool)

(assert (=> b!4183552 (= e!2597199 e!2597197)))

(declare-fun res!1715803 () Bool)

(assert (=> b!4183552 (=> (not res!1715803) (not e!2597197))))

(declare-fun lt!1489790 () Bool)

(assert (=> b!4183552 (= res!1715803 (not lt!1489790))))

(declare-fun b!4183553 () Bool)

(declare-fun res!1715801 () Bool)

(assert (=> b!4183553 (=> res!1715801 e!2597199)))

(assert (=> b!4183553 (= res!1715801 (not ((_ is ElementMatch!12549) (regex!7644 r!4142))))))

(declare-fun e!2597196 () Bool)

(assert (=> b!4183553 (= e!2597196 e!2597199)))

(declare-fun b!4183554 () Bool)

(declare-fun e!2597198 () Bool)

(declare-fun derivativeStep!3791 (Regex!12549 C!25288) Regex!12549)

(assert (=> b!4183554 (= e!2597198 (matchR!6288 (derivativeStep!3791 (regex!7644 r!4142) (head!8878 p!2959)) (tail!6725 p!2959)))))

(declare-fun b!4183555 () Bool)

(declare-fun res!1715806 () Bool)

(declare-fun e!2597195 () Bool)

(assert (=> b!4183555 (=> res!1715806 e!2597195)))

(assert (=> b!4183555 (= res!1715806 (not (isEmpty!27179 (tail!6725 p!2959))))))

(declare-fun b!4183556 () Bool)

(declare-fun res!1715800 () Bool)

(assert (=> b!4183556 (=> res!1715800 e!2597199)))

(assert (=> b!4183556 (= res!1715800 e!2597194)))

(declare-fun res!1715802 () Bool)

(assert (=> b!4183556 (=> (not res!1715802) (not e!2597194))))

(assert (=> b!4183556 (= res!1715802 lt!1489790)))

(declare-fun b!4183557 () Bool)

(assert (=> b!4183557 (= e!2597195 (not (= (head!8878 p!2959) (c!714183 (regex!7644 r!4142)))))))

(declare-fun b!4183558 () Bool)

(declare-fun e!2597193 () Bool)

(assert (=> b!4183558 (= e!2597193 (= lt!1489790 call!291796))))

(declare-fun d!1234457 () Bool)

(assert (=> d!1234457 e!2597193))

(declare-fun c!714249 () Bool)

(assert (=> d!1234457 (= c!714249 ((_ is EmptyExpr!12549) (regex!7644 r!4142)))))

(assert (=> d!1234457 (= lt!1489790 e!2597198)))

(declare-fun c!714251 () Bool)

(assert (=> d!1234457 (= c!714251 (isEmpty!27179 p!2959))))

(assert (=> d!1234457 (validRegex!5666 (regex!7644 r!4142))))

(assert (=> d!1234457 (= (matchR!6288 (regex!7644 r!4142) p!2959) lt!1489790)))

(declare-fun b!4183559 () Bool)

(assert (=> b!4183559 (= e!2597197 e!2597195)))

(declare-fun res!1715799 () Bool)

(assert (=> b!4183559 (=> res!1715799 e!2597195)))

(assert (=> b!4183559 (= res!1715799 call!291796)))

(declare-fun b!4183560 () Bool)

(declare-fun res!1715805 () Bool)

(assert (=> b!4183560 (=> (not res!1715805) (not e!2597194))))

(assert (=> b!4183560 (= res!1715805 (isEmpty!27179 (tail!6725 p!2959)))))

(declare-fun b!4183561 () Bool)

(assert (=> b!4183561 (= e!2597196 (not lt!1489790))))

(declare-fun b!4183562 () Bool)

(assert (=> b!4183562 (= e!2597198 (nullable!4401 (regex!7644 r!4142)))))

(declare-fun bm!291791 () Bool)

(assert (=> bm!291791 (= call!291796 (isEmpty!27179 p!2959))))

(declare-fun b!4183563 () Bool)

(assert (=> b!4183563 (= e!2597194 (= (head!8878 p!2959) (c!714183 (regex!7644 r!4142))))))

(declare-fun b!4183564 () Bool)

(assert (=> b!4183564 (= e!2597193 e!2597196)))

(declare-fun c!714250 () Bool)

(assert (=> b!4183564 (= c!714250 ((_ is EmptyLang!12549) (regex!7644 r!4142)))))

(assert (= (and d!1234457 c!714251) b!4183562))

(assert (= (and d!1234457 (not c!714251)) b!4183554))

(assert (= (and d!1234457 c!714249) b!4183558))

(assert (= (and d!1234457 (not c!714249)) b!4183564))

(assert (= (and b!4183564 c!714250) b!4183561))

(assert (= (and b!4183564 (not c!714250)) b!4183553))

(assert (= (and b!4183553 (not res!1715801)) b!4183556))

(assert (= (and b!4183556 res!1715802) b!4183551))

(assert (= (and b!4183551 res!1715804) b!4183560))

(assert (= (and b!4183560 res!1715805) b!4183563))

(assert (= (and b!4183556 (not res!1715800)) b!4183552))

(assert (= (and b!4183552 res!1715803) b!4183559))

(assert (= (and b!4183559 (not res!1715799)) b!4183555))

(assert (= (and b!4183555 (not res!1715806)) b!4183557))

(assert (= (or b!4183558 b!4183551 b!4183559) bm!291791))

(declare-fun m!4772339 () Bool)

(assert (=> bm!291791 m!4772339))

(assert (=> b!4183560 m!4772327))

(assert (=> b!4183560 m!4772327))

(declare-fun m!4772341 () Bool)

(assert (=> b!4183560 m!4772341))

(assert (=> d!1234457 m!4772339))

(assert (=> d!1234457 m!4771759))

(assert (=> b!4183555 m!4772327))

(assert (=> b!4183555 m!4772327))

(assert (=> b!4183555 m!4772341))

(assert (=> b!4183563 m!4772325))

(assert (=> b!4183557 m!4772325))

(assert (=> b!4183554 m!4772325))

(assert (=> b!4183554 m!4772325))

(declare-fun m!4772343 () Bool)

(assert (=> b!4183554 m!4772343))

(assert (=> b!4183554 m!4772327))

(assert (=> b!4183554 m!4772343))

(assert (=> b!4183554 m!4772327))

(declare-fun m!4772345 () Bool)

(assert (=> b!4183554 m!4772345))

(assert (=> b!4183562 m!4772219))

(assert (=> b!4183048 d!1234457))

(declare-fun d!1234459 () Bool)

(declare-fun res!1715807 () Bool)

(declare-fun e!2597200 () Bool)

(assert (=> d!1234459 (=> (not res!1715807) (not e!2597200))))

(assert (=> d!1234459 (= res!1715807 (validRegex!5666 (regex!7644 rBis!167)))))

(assert (=> d!1234459 (= (ruleValid!3362 thiss!25986 rBis!167) e!2597200)))

(declare-fun b!4183565 () Bool)

(declare-fun res!1715808 () Bool)

(assert (=> b!4183565 (=> (not res!1715808) (not e!2597200))))

(assert (=> b!4183565 (= res!1715808 (not (nullable!4401 (regex!7644 rBis!167))))))

(declare-fun b!4183566 () Bool)

(assert (=> b!4183566 (= e!2597200 (not (= (tag!8508 rBis!167) (String!53237 ""))))))

(assert (= (and d!1234459 res!1715807) b!4183565))

(assert (= (and b!4183565 res!1715808) b!4183566))

(declare-fun m!4772347 () Bool)

(assert (=> d!1234459 m!4772347))

(declare-fun m!4772349 () Bool)

(assert (=> b!4183565 m!4772349))

(assert (=> b!4183059 d!1234459))

(declare-fun b!4183577 () Bool)

(declare-fun e!2597203 () Bool)

(assert (=> b!4183577 (= e!2597203 tp_is_empty!22061)))

(assert (=> b!4183054 (= tp!1278480 e!2597203)))

(declare-fun b!4183578 () Bool)

(declare-fun tp!1278555 () Bool)

(declare-fun tp!1278558 () Bool)

(assert (=> b!4183578 (= e!2597203 (and tp!1278555 tp!1278558))))

(declare-fun b!4183580 () Bool)

(declare-fun tp!1278557 () Bool)

(declare-fun tp!1278556 () Bool)

(assert (=> b!4183580 (= e!2597203 (and tp!1278557 tp!1278556))))

(declare-fun b!4183579 () Bool)

(declare-fun tp!1278559 () Bool)

(assert (=> b!4183579 (= e!2597203 tp!1278559)))

(assert (= (and b!4183054 ((_ is ElementMatch!12549) (regex!7644 rBis!167))) b!4183577))

(assert (= (and b!4183054 ((_ is Concat!20424) (regex!7644 rBis!167))) b!4183578))

(assert (= (and b!4183054 ((_ is Star!12549) (regex!7644 rBis!167))) b!4183579))

(assert (= (and b!4183054 ((_ is Union!12549) (regex!7644 rBis!167))) b!4183580))

(declare-fun b!4183581 () Bool)

(declare-fun e!2597204 () Bool)

(assert (=> b!4183581 (= e!2597204 tp_is_empty!22061)))

(assert (=> b!4183055 (= tp!1278488 e!2597204)))

(declare-fun b!4183582 () Bool)

(declare-fun tp!1278560 () Bool)

(declare-fun tp!1278563 () Bool)

(assert (=> b!4183582 (= e!2597204 (and tp!1278560 tp!1278563))))

(declare-fun b!4183584 () Bool)

(declare-fun tp!1278562 () Bool)

(declare-fun tp!1278561 () Bool)

(assert (=> b!4183584 (= e!2597204 (and tp!1278562 tp!1278561))))

(declare-fun b!4183583 () Bool)

(declare-fun tp!1278564 () Bool)

(assert (=> b!4183583 (= e!2597204 tp!1278564)))

(assert (= (and b!4183055 ((_ is ElementMatch!12549) (regex!7644 (h!51347 rules!3843)))) b!4183581))

(assert (= (and b!4183055 ((_ is Concat!20424) (regex!7644 (h!51347 rules!3843)))) b!4183582))

(assert (= (and b!4183055 ((_ is Star!12549) (regex!7644 (h!51347 rules!3843)))) b!4183583))

(assert (= (and b!4183055 ((_ is Union!12549) (regex!7644 (h!51347 rules!3843)))) b!4183584))

(declare-fun b!4183589 () Bool)

(declare-fun e!2597207 () Bool)

(declare-fun tp!1278567 () Bool)

(assert (=> b!4183589 (= e!2597207 (and tp_is_empty!22061 tp!1278567))))

(assert (=> b!4183067 (= tp!1278489 e!2597207)))

(assert (= (and b!4183067 ((_ is Cons!45925) (t!345218 input!3342))) b!4183589))

(declare-fun b!4183600 () Bool)

(declare-fun b_free!121623 () Bool)

(declare-fun b_next!122327 () Bool)

(assert (=> b!4183600 (= b_free!121623 (not b_next!122327))))

(declare-fun t!345278 () Bool)

(declare-fun tb!250443 () Bool)

(assert (=> (and b!4183600 (= (toValue!10336 (transformation!7644 (h!51347 (t!345220 rules!3843)))) (toValue!10336 (transformation!7644 r!4142))) t!345278) tb!250443))

(declare-fun result!305204 () Bool)

(assert (= result!305204 result!305136))

(assert (=> d!1234345 t!345278))

(assert (=> d!1234393 t!345278))

(declare-fun tp!1278577 () Bool)

(declare-fun b_and!327385 () Bool)

(assert (=> b!4183600 (= tp!1278577 (and (=> t!345278 result!305204) b_and!327385))))

(declare-fun b_free!121625 () Bool)

(declare-fun b_next!122329 () Bool)

(assert (=> b!4183600 (= b_free!121625 (not b_next!122329))))

(declare-fun tb!250445 () Bool)

(declare-fun t!345280 () Bool)

(assert (=> (and b!4183600 (= (toChars!10195 (transformation!7644 (h!51347 (t!345220 rules!3843)))) (toChars!10195 (transformation!7644 (rule!10710 lt!1489633)))) t!345280) tb!250445))

(declare-fun result!305206 () Bool)

(assert (= result!305206 result!305128))

(assert (=> b!4183134 t!345280))

(declare-fun tb!250447 () Bool)

(declare-fun t!345282 () Bool)

(assert (=> (and b!4183600 (= (toChars!10195 (transformation!7644 (h!51347 (t!345220 rules!3843)))) (toChars!10195 (transformation!7644 r!4142))) t!345282) tb!250447))

(declare-fun result!305208 () Bool)

(assert (= result!305208 result!305166))

(assert (=> d!1234393 t!345282))

(declare-fun tb!250449 () Bool)

(declare-fun t!345284 () Bool)

(assert (=> (and b!4183600 (= (toChars!10195 (transformation!7644 (h!51347 (t!345220 rules!3843)))) (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 lt!1489624))))) t!345284) tb!250449))

(declare-fun result!305210 () Bool)

(assert (= result!305210 result!305172))

(assert (=> d!1234413 t!345284))

(declare-fun b_and!327387 () Bool)

(declare-fun tp!1278578 () Bool)

(assert (=> b!4183600 (= tp!1278578 (and (=> t!345280 result!305206) (=> t!345282 result!305208) (=> t!345284 result!305210) b_and!327387))))

(declare-fun e!2597216 () Bool)

(assert (=> b!4183600 (= e!2597216 (and tp!1278577 tp!1278578))))

(declare-fun tp!1278576 () Bool)

(declare-fun e!2597219 () Bool)

(declare-fun b!4183599 () Bool)

(assert (=> b!4183599 (= e!2597219 (and tp!1278576 (inv!60463 (tag!8508 (h!51347 (t!345220 rules!3843)))) (inv!60466 (transformation!7644 (h!51347 (t!345220 rules!3843)))) e!2597216))))

(declare-fun b!4183598 () Bool)

(declare-fun e!2597217 () Bool)

(declare-fun tp!1278579 () Bool)

(assert (=> b!4183598 (= e!2597217 (and e!2597219 tp!1278579))))

(assert (=> b!4183062 (= tp!1278487 e!2597217)))

(assert (= b!4183599 b!4183600))

(assert (= b!4183598 b!4183599))

(assert (= (and b!4183062 ((_ is Cons!45927) (t!345220 rules!3843))) b!4183598))

(declare-fun m!4772351 () Bool)

(assert (=> b!4183599 m!4772351))

(declare-fun m!4772353 () Bool)

(assert (=> b!4183599 m!4772353))

(declare-fun b!4183601 () Bool)

(declare-fun e!2597220 () Bool)

(declare-fun tp!1278580 () Bool)

(assert (=> b!4183601 (= e!2597220 (and tp_is_empty!22061 tp!1278580))))

(assert (=> b!4183052 (= tp!1278482 e!2597220)))

(assert (= (and b!4183052 ((_ is Cons!45925) (t!345218 p!2959))) b!4183601))

(declare-fun b!4183602 () Bool)

(declare-fun e!2597221 () Bool)

(assert (=> b!4183602 (= e!2597221 tp_is_empty!22061)))

(assert (=> b!4183058 (= tp!1278490 e!2597221)))

(declare-fun b!4183603 () Bool)

(declare-fun tp!1278581 () Bool)

(declare-fun tp!1278584 () Bool)

(assert (=> b!4183603 (= e!2597221 (and tp!1278581 tp!1278584))))

(declare-fun b!4183605 () Bool)

(declare-fun tp!1278583 () Bool)

(declare-fun tp!1278582 () Bool)

(assert (=> b!4183605 (= e!2597221 (and tp!1278583 tp!1278582))))

(declare-fun b!4183604 () Bool)

(declare-fun tp!1278585 () Bool)

(assert (=> b!4183604 (= e!2597221 tp!1278585)))

(assert (= (and b!4183058 ((_ is ElementMatch!12549) (regex!7644 r!4142))) b!4183602))

(assert (= (and b!4183058 ((_ is Concat!20424) (regex!7644 r!4142))) b!4183603))

(assert (= (and b!4183058 ((_ is Star!12549) (regex!7644 r!4142))) b!4183604))

(assert (= (and b!4183058 ((_ is Union!12549) (regex!7644 r!4142))) b!4183605))

(declare-fun b!4183606 () Bool)

(declare-fun e!2597222 () Bool)

(declare-fun tp!1278586 () Bool)

(assert (=> b!4183606 (= e!2597222 (and tp_is_empty!22061 tp!1278586))))

(assert (=> b!4183069 (= tp!1278486 e!2597222)))

(assert (= (and b!4183069 ((_ is Cons!45925) (t!345218 pBis!107))) b!4183606))

(declare-fun b_lambda!122941 () Bool)

(assert (= b_lambda!122927 (or (and b!4183047 b_free!121609 (= (toChars!10195 (transformation!7644 (h!51347 rules!3843))) (toChars!10195 (transformation!7644 r!4142)))) (and b!4183060 b_free!121613 (= (toChars!10195 (transformation!7644 rBis!167)) (toChars!10195 (transformation!7644 r!4142)))) (and b!4183068 b_free!121617) (and b!4183600 b_free!121625 (= (toChars!10195 (transformation!7644 (h!51347 (t!345220 rules!3843)))) (toChars!10195 (transformation!7644 r!4142)))) b_lambda!122941)))

(declare-fun b_lambda!122943 () Bool)

(assert (= b_lambda!122917 (or (and b!4183047 b_free!121607 (= (toValue!10336 (transformation!7644 (h!51347 rules!3843))) (toValue!10336 (transformation!7644 r!4142)))) (and b!4183060 b_free!121611 (= (toValue!10336 (transformation!7644 rBis!167)) (toValue!10336 (transformation!7644 r!4142)))) (and b!4183068 b_free!121615) (and b!4183600 b_free!121623 (= (toValue!10336 (transformation!7644 (h!51347 (t!345220 rules!3843)))) (toValue!10336 (transformation!7644 r!4142)))) b_lambda!122943)))

(declare-fun b_lambda!122945 () Bool)

(assert (= b_lambda!122929 (or (and b!4183047 b_free!121607 (= (toValue!10336 (transformation!7644 (h!51347 rules!3843))) (toValue!10336 (transformation!7644 r!4142)))) (and b!4183060 b_free!121611 (= (toValue!10336 (transformation!7644 rBis!167)) (toValue!10336 (transformation!7644 r!4142)))) (and b!4183068 b_free!121615) (and b!4183600 b_free!121623 (= (toValue!10336 (transformation!7644 (h!51347 (t!345220 rules!3843)))) (toValue!10336 (transformation!7644 r!4142)))) b_lambda!122945)))

(check-sat (not b!4183488) (not bm!291791) (not bm!291787) (not b!4183373) (not b!4183589) (not b!4183463) (not b!4183474) (not b!4183519) (not b!4183480) (not b!4183599) (not b!4183563) (not b_next!122317) b_and!327387 (not d!1234327) (not tb!250417) (not b!4183598) (not b!4183464) (not b!4183371) (not d!1234435) (not b!4183314) (not b!4183517) (not d!1234405) (not d!1234407) (not b!4183580) (not d!1234451) (not b_next!122311) (not b!4183462) b_and!327367 (not d!1234431) (not b_next!122315) b_and!327373 (not b!4183379) (not b!4183522) (not b!4183142) (not b!4183391) (not b!4183316) (not d!1234347) (not bm!291786) (not b_lambda!122945) (not b!4183582) (not d!1234323) (not b!4183118) (not b!4183475) (not b!4183473) (not d!1234425) (not d!1234393) (not b!4183557) (not b!4183467) (not d!1234409) (not b!4183459) (not d!1234341) (not b!4183103) (not d!1234437) (not tb!250423) (not b!4183554) (not b!4183308) (not b!4183312) (not d!1234419) (not b!4183555) (not b!4183603) (not b_next!122329) (not b!4183510) (not b_lambda!122915) (not d!1234413) (not b!4183562) (not b_next!122319) (not b_lambda!122943) (not b!4183521) (not b!4183315) (not b!4183160) (not b!4183331) (not b!4183456) (not b!4183134) b_and!327371 (not b_next!122327) (not tb!250393) (not b!4183468) (not b!4183381) (not b!4183482) (not b!4183159) (not b!4183123) (not d!1234343) (not b!4183380) (not b!4183476) (not b!4183478) (not b!4183370) (not b!4183311) (not b!4183458) b_and!327363 (not d!1234445) b_and!327365 (not b!4183578) (not b!4183560) (not b_lambda!122931) (not bm!291779) (not b!4183460) (not b!4183479) (not b!4183606) (not d!1234455) (not b!4183565) (not b!4183309) (not d!1234457) (not d!1234333) (not b!4183472) (not b_next!122313) (not tb!250387) (not b!4183471) (not b!4183333) (not b!4183161) (not b!4183604) (not b!4183310) (not b!4183605) (not b_next!122321) (not b!4183583) (not d!1234459) b_and!327369 (not d!1234441) (not b!4183148) (not b_lambda!122941) (not b!4183466) (not b!4183584) (not b!4183461) tp_is_empty!22061 (not d!1234315) (not b!4183518) (not b!4183135) (not b!4183579) (not b!4183601) b_and!327385)
(check-sat (not b_next!122315) b_and!327373 b_and!327363 b_and!327365 (not b_next!122313) b_and!327385 (not b_next!122317) b_and!327387 (not b_next!122311) b_and!327367 (not b_next!122329) (not b_next!122319) b_and!327371 (not b_next!122327) (not b_next!122321) b_and!327369)
(get-model)

(declare-fun d!1234461 () Bool)

(declare-fun e!2597223 () Bool)

(assert (=> d!1234461 e!2597223))

(declare-fun res!1715810 () Bool)

(assert (=> d!1234461 (=> (not res!1715810) (not e!2597223))))

(declare-fun lt!1489791 () List!46049)

(assert (=> d!1234461 (= res!1715810 (= (content!7137 lt!1489791) ((_ map or) (content!7137 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489721))))) (content!7137 (_2!25001 (get!14925 lt!1489721))))))))

(declare-fun e!2597224 () List!46049)

(assert (=> d!1234461 (= lt!1489791 e!2597224)))

(declare-fun c!714252 () Bool)

(assert (=> d!1234461 (= c!714252 ((_ is Nil!45925) (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489721))))))))

(assert (=> d!1234461 (= (++!11716 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489721)))) (_2!25001 (get!14925 lt!1489721))) lt!1489791)))

(declare-fun b!4183609 () Bool)

(declare-fun res!1715809 () Bool)

(assert (=> b!4183609 (=> (not res!1715809) (not e!2597223))))

(assert (=> b!4183609 (= res!1715809 (= (size!33728 lt!1489791) (+ (size!33728 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489721))))) (size!33728 (_2!25001 (get!14925 lt!1489721))))))))

(declare-fun b!4183610 () Bool)

(assert (=> b!4183610 (= e!2597223 (or (not (= (_2!25001 (get!14925 lt!1489721)) Nil!45925)) (= lt!1489791 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489721)))))))))

(declare-fun b!4183607 () Bool)

(assert (=> b!4183607 (= e!2597224 (_2!25001 (get!14925 lt!1489721)))))

(declare-fun b!4183608 () Bool)

(assert (=> b!4183608 (= e!2597224 (Cons!45925 (h!51345 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489721))))) (++!11716 (t!345218 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489721))))) (_2!25001 (get!14925 lt!1489721)))))))

(assert (= (and d!1234461 c!714252) b!4183607))

(assert (= (and d!1234461 (not c!714252)) b!4183608))

(assert (= (and d!1234461 res!1715810) b!4183609))

(assert (= (and b!4183609 res!1715809) b!4183610))

(declare-fun m!4772355 () Bool)

(assert (=> d!1234461 m!4772355))

(assert (=> d!1234461 m!4772069))

(declare-fun m!4772357 () Bool)

(assert (=> d!1234461 m!4772357))

(declare-fun m!4772359 () Bool)

(assert (=> d!1234461 m!4772359))

(declare-fun m!4772361 () Bool)

(assert (=> b!4183609 m!4772361))

(assert (=> b!4183609 m!4772069))

(declare-fun m!4772363 () Bool)

(assert (=> b!4183609 m!4772363))

(assert (=> b!4183609 m!4772095))

(declare-fun m!4772365 () Bool)

(assert (=> b!4183608 m!4772365))

(assert (=> b!4183310 d!1234461))

(declare-fun d!1234463 () Bool)

(assert (=> d!1234463 (= (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489721)))) (list!16587 (c!714182 (charsOf!5079 (_1!25001 (get!14925 lt!1489721))))))))

(declare-fun bs!596386 () Bool)

(assert (= bs!596386 d!1234463))

(declare-fun m!4772367 () Bool)

(assert (=> bs!596386 m!4772367))

(assert (=> b!4183310 d!1234463))

(declare-fun d!1234465 () Bool)

(declare-fun lt!1489792 () BalanceConc!27304)

(assert (=> d!1234465 (= (list!16585 lt!1489792) (originalCharacters!8032 (_1!25001 (get!14925 lt!1489721))))))

(assert (=> d!1234465 (= lt!1489792 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489721))))) (value!238386 (_1!25001 (get!14925 lt!1489721)))))))

(assert (=> d!1234465 (= (charsOf!5079 (_1!25001 (get!14925 lt!1489721))) lt!1489792)))

(declare-fun b_lambda!122947 () Bool)

(assert (=> (not b_lambda!122947) (not d!1234465)))

(declare-fun tb!250451 () Bool)

(declare-fun t!345288 () Bool)

(assert (=> (and b!4183047 (= (toChars!10195 (transformation!7644 (h!51347 rules!3843))) (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489721)))))) t!345288) tb!250451))

(declare-fun b!4183611 () Bool)

(declare-fun e!2597225 () Bool)

(declare-fun tp!1278587 () Bool)

(assert (=> b!4183611 (= e!2597225 (and (inv!60468 (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489721))))) (value!238386 (_1!25001 (get!14925 lt!1489721)))))) tp!1278587))))

(declare-fun result!305212 () Bool)

(assert (=> tb!250451 (= result!305212 (and (inv!60469 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489721))))) (value!238386 (_1!25001 (get!14925 lt!1489721))))) e!2597225))))

(assert (= tb!250451 b!4183611))

(declare-fun m!4772369 () Bool)

(assert (=> b!4183611 m!4772369))

(declare-fun m!4772371 () Bool)

(assert (=> tb!250451 m!4772371))

(assert (=> d!1234465 t!345288))

(declare-fun b_and!327389 () Bool)

(assert (= b_and!327369 (and (=> t!345288 result!305212) b_and!327389)))

(declare-fun t!345290 () Bool)

(declare-fun tb!250453 () Bool)

(assert (=> (and b!4183060 (= (toChars!10195 (transformation!7644 rBis!167)) (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489721)))))) t!345290) tb!250453))

(declare-fun result!305214 () Bool)

(assert (= result!305214 result!305212))

(assert (=> d!1234465 t!345290))

(declare-fun b_and!327391 () Bool)

(assert (= b_and!327371 (and (=> t!345290 result!305214) b_and!327391)))

(declare-fun t!345292 () Bool)

(declare-fun tb!250455 () Bool)

(assert (=> (and b!4183068 (= (toChars!10195 (transformation!7644 r!4142)) (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489721)))))) t!345292) tb!250455))

(declare-fun result!305216 () Bool)

(assert (= result!305216 result!305212))

(assert (=> d!1234465 t!345292))

(declare-fun b_and!327393 () Bool)

(assert (= b_and!327373 (and (=> t!345292 result!305216) b_and!327393)))

(declare-fun t!345294 () Bool)

(declare-fun tb!250457 () Bool)

(assert (=> (and b!4183600 (= (toChars!10195 (transformation!7644 (h!51347 (t!345220 rules!3843)))) (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489721)))))) t!345294) tb!250457))

(declare-fun result!305218 () Bool)

(assert (= result!305218 result!305212))

(assert (=> d!1234465 t!345294))

(declare-fun b_and!327395 () Bool)

(assert (= b_and!327387 (and (=> t!345294 result!305218) b_and!327395)))

(declare-fun m!4772373 () Bool)

(assert (=> d!1234465 m!4772373))

(declare-fun m!4772375 () Bool)

(assert (=> d!1234465 m!4772375))

(assert (=> b!4183310 d!1234465))

(declare-fun d!1234467 () Bool)

(assert (=> d!1234467 (= (get!14925 lt!1489721) (v!40651 lt!1489721))))

(assert (=> b!4183310 d!1234467))

(declare-fun d!1234469 () Bool)

(declare-fun nullableFct!1215 (Regex!12549) Bool)

(assert (=> d!1234469 (= (nullable!4401 (regex!7644 r!4142)) (nullableFct!1215 (regex!7644 r!4142)))))

(declare-fun bs!596387 () Bool)

(assert (= bs!596387 d!1234469))

(declare-fun m!4772377 () Bool)

(assert (=> bs!596387 m!4772377))

(assert (=> b!4183391 d!1234469))

(declare-fun c!714253 () Bool)

(declare-fun c!714254 () Bool)

(declare-fun call!291797 () Bool)

(declare-fun bm!291792 () Bool)

(assert (=> bm!291792 (= call!291797 (validRegex!5666 (ite c!714254 (reg!12878 (regex!7644 rBis!167)) (ite c!714253 (regTwo!25611 (regex!7644 rBis!167)) (regTwo!25610 (regex!7644 rBis!167))))))))

(declare-fun b!4183612 () Bool)

(declare-fun e!2597228 () Bool)

(declare-fun e!2597229 () Bool)

(assert (=> b!4183612 (= e!2597228 e!2597229)))

(assert (=> b!4183612 (= c!714253 ((_ is Union!12549) (regex!7644 rBis!167)))))

(declare-fun b!4183614 () Bool)

(declare-fun res!1715811 () Bool)

(declare-fun e!2597232 () Bool)

(assert (=> b!4183614 (=> res!1715811 e!2597232)))

(assert (=> b!4183614 (= res!1715811 (not ((_ is Concat!20424) (regex!7644 rBis!167))))))

(assert (=> b!4183614 (= e!2597229 e!2597232)))

(declare-fun b!4183615 () Bool)

(declare-fun e!2597226 () Bool)

(assert (=> b!4183615 (= e!2597228 e!2597226)))

(declare-fun res!1715814 () Bool)

(assert (=> b!4183615 (= res!1715814 (not (nullable!4401 (reg!12878 (regex!7644 rBis!167)))))))

(assert (=> b!4183615 (=> (not res!1715814) (not e!2597226))))

(declare-fun b!4183616 () Bool)

(declare-fun res!1715813 () Bool)

(declare-fun e!2597231 () Bool)

(assert (=> b!4183616 (=> (not res!1715813) (not e!2597231))))

(declare-fun call!291799 () Bool)

(assert (=> b!4183616 (= res!1715813 call!291799)))

(assert (=> b!4183616 (= e!2597229 e!2597231)))

(declare-fun b!4183617 () Bool)

(declare-fun e!2597230 () Bool)

(assert (=> b!4183617 (= e!2597230 e!2597228)))

(assert (=> b!4183617 (= c!714254 ((_ is Star!12549) (regex!7644 rBis!167)))))

(declare-fun b!4183613 () Bool)

(assert (=> b!4183613 (= e!2597226 call!291797)))

(declare-fun d!1234471 () Bool)

(declare-fun res!1715812 () Bool)

(assert (=> d!1234471 (=> res!1715812 e!2597230)))

(assert (=> d!1234471 (= res!1715812 ((_ is ElementMatch!12549) (regex!7644 rBis!167)))))

(assert (=> d!1234471 (= (validRegex!5666 (regex!7644 rBis!167)) e!2597230)))

(declare-fun bm!291793 () Bool)

(assert (=> bm!291793 (= call!291799 (validRegex!5666 (ite c!714253 (regOne!25611 (regex!7644 rBis!167)) (regOne!25610 (regex!7644 rBis!167)))))))

(declare-fun b!4183618 () Bool)

(declare-fun call!291798 () Bool)

(assert (=> b!4183618 (= e!2597231 call!291798)))

(declare-fun b!4183619 () Bool)

(declare-fun e!2597227 () Bool)

(assert (=> b!4183619 (= e!2597227 call!291798)))

(declare-fun bm!291794 () Bool)

(assert (=> bm!291794 (= call!291798 call!291797)))

(declare-fun b!4183620 () Bool)

(assert (=> b!4183620 (= e!2597232 e!2597227)))

(declare-fun res!1715815 () Bool)

(assert (=> b!4183620 (=> (not res!1715815) (not e!2597227))))

(assert (=> b!4183620 (= res!1715815 call!291799)))

(assert (= (and d!1234471 (not res!1715812)) b!4183617))

(assert (= (and b!4183617 c!714254) b!4183615))

(assert (= (and b!4183617 (not c!714254)) b!4183612))

(assert (= (and b!4183615 res!1715814) b!4183613))

(assert (= (and b!4183612 c!714253) b!4183616))

(assert (= (and b!4183612 (not c!714253)) b!4183614))

(assert (= (and b!4183616 res!1715813) b!4183618))

(assert (= (and b!4183614 (not res!1715811)) b!4183620))

(assert (= (and b!4183620 res!1715815) b!4183619))

(assert (= (or b!4183618 b!4183619) bm!291794))

(assert (= (or b!4183616 b!4183620) bm!291793))

(assert (= (or b!4183613 bm!291794) bm!291792))

(declare-fun m!4772379 () Bool)

(assert (=> bm!291792 m!4772379))

(declare-fun m!4772381 () Bool)

(assert (=> b!4183615 m!4772381))

(declare-fun m!4772383 () Bool)

(assert (=> bm!291793 m!4772383))

(assert (=> d!1234459 d!1234471))

(declare-fun d!1234473 () Bool)

(assert (=> d!1234473 (= (get!14925 lt!1489768) (v!40651 lt!1489768))))

(assert (=> b!4183461 d!1234473))

(declare-fun d!1234475 () Bool)

(assert (=> d!1234475 (= (apply!10609 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489768)))) (seqFromList!5669 (originalCharacters!8032 (_1!25001 (get!14925 lt!1489768))))) (dynLambda!19717 (toValue!10336 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489768))))) (seqFromList!5669 (originalCharacters!8032 (_1!25001 (get!14925 lt!1489768))))))))

(declare-fun b_lambda!122949 () Bool)

(assert (=> (not b_lambda!122949) (not d!1234475)))

(declare-fun tb!250459 () Bool)

(declare-fun t!345296 () Bool)

(assert (=> (and b!4183047 (= (toValue!10336 (transformation!7644 (h!51347 rules!3843))) (toValue!10336 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489768)))))) t!345296) tb!250459))

(declare-fun result!305220 () Bool)

(assert (=> tb!250459 (= result!305220 (inv!21 (dynLambda!19717 (toValue!10336 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489768))))) (seqFromList!5669 (originalCharacters!8032 (_1!25001 (get!14925 lt!1489768)))))))))

(declare-fun m!4772385 () Bool)

(assert (=> tb!250459 m!4772385))

(assert (=> d!1234475 t!345296))

(declare-fun b_and!327397 () Bool)

(assert (= b_and!327363 (and (=> t!345296 result!305220) b_and!327397)))

(declare-fun tb!250461 () Bool)

(declare-fun t!345298 () Bool)

(assert (=> (and b!4183060 (= (toValue!10336 (transformation!7644 rBis!167)) (toValue!10336 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489768)))))) t!345298) tb!250461))

(declare-fun result!305222 () Bool)

(assert (= result!305222 result!305220))

(assert (=> d!1234475 t!345298))

(declare-fun b_and!327399 () Bool)

(assert (= b_and!327365 (and (=> t!345298 result!305222) b_and!327399)))

(declare-fun t!345300 () Bool)

(declare-fun tb!250463 () Bool)

(assert (=> (and b!4183068 (= (toValue!10336 (transformation!7644 r!4142)) (toValue!10336 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489768)))))) t!345300) tb!250463))

(declare-fun result!305224 () Bool)

(assert (= result!305224 result!305220))

(assert (=> d!1234475 t!345300))

(declare-fun b_and!327401 () Bool)

(assert (= b_and!327367 (and (=> t!345300 result!305224) b_and!327401)))

(declare-fun tb!250465 () Bool)

(declare-fun t!345302 () Bool)

(assert (=> (and b!4183600 (= (toValue!10336 (transformation!7644 (h!51347 (t!345220 rules!3843)))) (toValue!10336 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489768)))))) t!345302) tb!250465))

(declare-fun result!305226 () Bool)

(assert (= result!305226 result!305220))

(assert (=> d!1234475 t!345302))

(declare-fun b_and!327403 () Bool)

(assert (= b_and!327385 (and (=> t!345302 result!305226) b_and!327403)))

(assert (=> d!1234475 m!4772249))

(declare-fun m!4772387 () Bool)

(assert (=> d!1234475 m!4772387))

(assert (=> b!4183461 d!1234475))

(declare-fun d!1234477 () Bool)

(assert (=> d!1234477 (= (seqFromList!5669 (originalCharacters!8032 (_1!25001 (get!14925 lt!1489768)))) (fromListB!2592 (originalCharacters!8032 (_1!25001 (get!14925 lt!1489768)))))))

(declare-fun bs!596388 () Bool)

(assert (= bs!596388 d!1234477))

(declare-fun m!4772389 () Bool)

(assert (=> bs!596388 m!4772389))

(assert (=> b!4183461 d!1234477))

(assert (=> b!4183161 d!1234443))

(declare-fun d!1234479 () Bool)

(declare-fun isBalanced!3735 (Conc!13855) Bool)

(assert (=> d!1234479 (= (inv!60469 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 lt!1489624)))) (value!238386 (_1!25001 lt!1489624)))) (isBalanced!3735 (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 lt!1489624)))) (value!238386 (_1!25001 lt!1489624))))))))

(declare-fun bs!596389 () Bool)

(assert (= bs!596389 d!1234479))

(declare-fun m!4772391 () Bool)

(assert (=> bs!596389 m!4772391))

(assert (=> tb!250423 d!1234479))

(declare-fun b!4183621 () Bool)

(declare-fun res!1715821 () Bool)

(declare-fun e!2597235 () Bool)

(assert (=> b!4183621 (=> (not res!1715821) (not e!2597235))))

(declare-fun call!291800 () Bool)

(assert (=> b!4183621 (= res!1715821 (not call!291800))))

(declare-fun b!4183622 () Bool)

(declare-fun e!2597240 () Bool)

(declare-fun e!2597238 () Bool)

(assert (=> b!4183622 (= e!2597240 e!2597238)))

(declare-fun res!1715820 () Bool)

(assert (=> b!4183622 (=> (not res!1715820) (not e!2597238))))

(declare-fun lt!1489793 () Bool)

(assert (=> b!4183622 (= res!1715820 (not lt!1489793))))

(declare-fun b!4183623 () Bool)

(declare-fun res!1715818 () Bool)

(assert (=> b!4183623 (=> res!1715818 e!2597240)))

(assert (=> b!4183623 (= res!1715818 (not ((_ is ElementMatch!12549) (regex!7644 (rule!10710 (_1!25001 (get!14925 lt!1489768)))))))))

(declare-fun e!2597237 () Bool)

(assert (=> b!4183623 (= e!2597237 e!2597240)))

(declare-fun b!4183624 () Bool)

(declare-fun e!2597239 () Bool)

(assert (=> b!4183624 (= e!2597239 (matchR!6288 (derivativeStep!3791 (regex!7644 (rule!10710 (_1!25001 (get!14925 lt!1489768)))) (head!8878 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489768)))))) (tail!6725 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489768)))))))))

(declare-fun b!4183625 () Bool)

(declare-fun res!1715823 () Bool)

(declare-fun e!2597236 () Bool)

(assert (=> b!4183625 (=> res!1715823 e!2597236)))

(assert (=> b!4183625 (= res!1715823 (not (isEmpty!27179 (tail!6725 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489768))))))))))

(declare-fun b!4183626 () Bool)

(declare-fun res!1715817 () Bool)

(assert (=> b!4183626 (=> res!1715817 e!2597240)))

(assert (=> b!4183626 (= res!1715817 e!2597235)))

(declare-fun res!1715819 () Bool)

(assert (=> b!4183626 (=> (not res!1715819) (not e!2597235))))

(assert (=> b!4183626 (= res!1715819 lt!1489793)))

(declare-fun b!4183627 () Bool)

(assert (=> b!4183627 (= e!2597236 (not (= (head!8878 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489768))))) (c!714183 (regex!7644 (rule!10710 (_1!25001 (get!14925 lt!1489768))))))))))

(declare-fun b!4183628 () Bool)

(declare-fun e!2597234 () Bool)

(assert (=> b!4183628 (= e!2597234 (= lt!1489793 call!291800))))

(declare-fun d!1234481 () Bool)

(assert (=> d!1234481 e!2597234))

(declare-fun c!714255 () Bool)

(assert (=> d!1234481 (= c!714255 ((_ is EmptyExpr!12549) (regex!7644 (rule!10710 (_1!25001 (get!14925 lt!1489768))))))))

(assert (=> d!1234481 (= lt!1489793 e!2597239)))

(declare-fun c!714257 () Bool)

(assert (=> d!1234481 (= c!714257 (isEmpty!27179 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489768))))))))

(assert (=> d!1234481 (validRegex!5666 (regex!7644 (rule!10710 (_1!25001 (get!14925 lt!1489768)))))))

(assert (=> d!1234481 (= (matchR!6288 (regex!7644 (rule!10710 (_1!25001 (get!14925 lt!1489768)))) (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489768))))) lt!1489793)))

(declare-fun b!4183629 () Bool)

(assert (=> b!4183629 (= e!2597238 e!2597236)))

(declare-fun res!1715816 () Bool)

(assert (=> b!4183629 (=> res!1715816 e!2597236)))

(assert (=> b!4183629 (= res!1715816 call!291800)))

(declare-fun b!4183630 () Bool)

(declare-fun res!1715822 () Bool)

(assert (=> b!4183630 (=> (not res!1715822) (not e!2597235))))

(assert (=> b!4183630 (= res!1715822 (isEmpty!27179 (tail!6725 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489768)))))))))

(declare-fun b!4183631 () Bool)

(assert (=> b!4183631 (= e!2597237 (not lt!1489793))))

(declare-fun b!4183632 () Bool)

(assert (=> b!4183632 (= e!2597239 (nullable!4401 (regex!7644 (rule!10710 (_1!25001 (get!14925 lt!1489768))))))))

(declare-fun bm!291795 () Bool)

(assert (=> bm!291795 (= call!291800 (isEmpty!27179 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489768))))))))

(declare-fun b!4183633 () Bool)

(assert (=> b!4183633 (= e!2597235 (= (head!8878 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489768))))) (c!714183 (regex!7644 (rule!10710 (_1!25001 (get!14925 lt!1489768)))))))))

(declare-fun b!4183634 () Bool)

(assert (=> b!4183634 (= e!2597234 e!2597237)))

(declare-fun c!714256 () Bool)

(assert (=> b!4183634 (= c!714256 ((_ is EmptyLang!12549) (regex!7644 (rule!10710 (_1!25001 (get!14925 lt!1489768))))))))

(assert (= (and d!1234481 c!714257) b!4183632))

(assert (= (and d!1234481 (not c!714257)) b!4183624))

(assert (= (and d!1234481 c!714255) b!4183628))

(assert (= (and d!1234481 (not c!714255)) b!4183634))

(assert (= (and b!4183634 c!714256) b!4183631))

(assert (= (and b!4183634 (not c!714256)) b!4183623))

(assert (= (and b!4183623 (not res!1715818)) b!4183626))

(assert (= (and b!4183626 res!1715819) b!4183621))

(assert (= (and b!4183621 res!1715821) b!4183630))

(assert (= (and b!4183630 res!1715822) b!4183633))

(assert (= (and b!4183626 (not res!1715817)) b!4183622))

(assert (= (and b!4183622 res!1715820) b!4183629))

(assert (= (and b!4183629 (not res!1715816)) b!4183625))

(assert (= (and b!4183625 (not res!1715823)) b!4183627))

(assert (= (or b!4183628 b!4183621 b!4183629) bm!291795))

(assert (=> bm!291795 m!4772237))

(declare-fun m!4772393 () Bool)

(assert (=> bm!291795 m!4772393))

(assert (=> b!4183630 m!4772237))

(declare-fun m!4772395 () Bool)

(assert (=> b!4183630 m!4772395))

(assert (=> b!4183630 m!4772395))

(declare-fun m!4772397 () Bool)

(assert (=> b!4183630 m!4772397))

(assert (=> d!1234481 m!4772237))

(assert (=> d!1234481 m!4772393))

(declare-fun m!4772399 () Bool)

(assert (=> d!1234481 m!4772399))

(assert (=> b!4183625 m!4772237))

(assert (=> b!4183625 m!4772395))

(assert (=> b!4183625 m!4772395))

(assert (=> b!4183625 m!4772397))

(assert (=> b!4183633 m!4772237))

(declare-fun m!4772401 () Bool)

(assert (=> b!4183633 m!4772401))

(assert (=> b!4183627 m!4772237))

(assert (=> b!4183627 m!4772401))

(assert (=> b!4183624 m!4772237))

(assert (=> b!4183624 m!4772401))

(assert (=> b!4183624 m!4772401))

(declare-fun m!4772403 () Bool)

(assert (=> b!4183624 m!4772403))

(assert (=> b!4183624 m!4772237))

(assert (=> b!4183624 m!4772395))

(assert (=> b!4183624 m!4772403))

(assert (=> b!4183624 m!4772395))

(declare-fun m!4772405 () Bool)

(assert (=> b!4183624 m!4772405))

(declare-fun m!4772407 () Bool)

(assert (=> b!4183632 m!4772407))

(assert (=> b!4183459 d!1234481))

(assert (=> b!4183459 d!1234473))

(declare-fun d!1234483 () Bool)

(assert (=> d!1234483 (= (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489768)))) (list!16587 (c!714182 (charsOf!5079 (_1!25001 (get!14925 lt!1489768))))))))

(declare-fun bs!596390 () Bool)

(assert (= bs!596390 d!1234483))

(declare-fun m!4772409 () Bool)

(assert (=> bs!596390 m!4772409))

(assert (=> b!4183459 d!1234483))

(declare-fun d!1234485 () Bool)

(declare-fun lt!1489794 () BalanceConc!27304)

(assert (=> d!1234485 (= (list!16585 lt!1489794) (originalCharacters!8032 (_1!25001 (get!14925 lt!1489768))))))

(assert (=> d!1234485 (= lt!1489794 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489768))))) (value!238386 (_1!25001 (get!14925 lt!1489768)))))))

(assert (=> d!1234485 (= (charsOf!5079 (_1!25001 (get!14925 lt!1489768))) lt!1489794)))

(declare-fun b_lambda!122951 () Bool)

(assert (=> (not b_lambda!122951) (not d!1234485)))

(declare-fun tb!250467 () Bool)

(declare-fun t!345304 () Bool)

(assert (=> (and b!4183047 (= (toChars!10195 (transformation!7644 (h!51347 rules!3843))) (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489768)))))) t!345304) tb!250467))

(declare-fun b!4183635 () Bool)

(declare-fun e!2597241 () Bool)

(declare-fun tp!1278588 () Bool)

(assert (=> b!4183635 (= e!2597241 (and (inv!60468 (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489768))))) (value!238386 (_1!25001 (get!14925 lt!1489768)))))) tp!1278588))))

(declare-fun result!305228 () Bool)

(assert (=> tb!250467 (= result!305228 (and (inv!60469 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489768))))) (value!238386 (_1!25001 (get!14925 lt!1489768))))) e!2597241))))

(assert (= tb!250467 b!4183635))

(declare-fun m!4772411 () Bool)

(assert (=> b!4183635 m!4772411))

(declare-fun m!4772413 () Bool)

(assert (=> tb!250467 m!4772413))

(assert (=> d!1234485 t!345304))

(declare-fun b_and!327405 () Bool)

(assert (= b_and!327389 (and (=> t!345304 result!305228) b_and!327405)))

(declare-fun tb!250469 () Bool)

(declare-fun t!345306 () Bool)

(assert (=> (and b!4183060 (= (toChars!10195 (transformation!7644 rBis!167)) (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489768)))))) t!345306) tb!250469))

(declare-fun result!305230 () Bool)

(assert (= result!305230 result!305228))

(assert (=> d!1234485 t!345306))

(declare-fun b_and!327407 () Bool)

(assert (= b_and!327391 (and (=> t!345306 result!305230) b_and!327407)))

(declare-fun t!345308 () Bool)

(declare-fun tb!250471 () Bool)

(assert (=> (and b!4183068 (= (toChars!10195 (transformation!7644 r!4142)) (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489768)))))) t!345308) tb!250471))

(declare-fun result!305232 () Bool)

(assert (= result!305232 result!305228))

(assert (=> d!1234485 t!345308))

(declare-fun b_and!327409 () Bool)

(assert (= b_and!327393 (and (=> t!345308 result!305232) b_and!327409)))

(declare-fun tb!250473 () Bool)

(declare-fun t!345310 () Bool)

(assert (=> (and b!4183600 (= (toChars!10195 (transformation!7644 (h!51347 (t!345220 rules!3843)))) (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489768)))))) t!345310) tb!250473))

(declare-fun result!305234 () Bool)

(assert (= result!305234 result!305228))

(assert (=> d!1234485 t!345310))

(declare-fun b_and!327411 () Bool)

(assert (= b_and!327395 (and (=> t!345310 result!305234) b_and!327411)))

(declare-fun m!4772415 () Bool)

(assert (=> d!1234485 m!4772415))

(declare-fun m!4772417 () Bool)

(assert (=> d!1234485 m!4772417))

(assert (=> b!4183459 d!1234485))

(declare-fun d!1234487 () Bool)

(declare-fun e!2597242 () Bool)

(assert (=> d!1234487 e!2597242))

(declare-fun res!1715825 () Bool)

(assert (=> d!1234487 (=> (not res!1715825) (not e!2597242))))

(declare-fun lt!1489795 () List!46049)

(assert (=> d!1234487 (= res!1715825 (= (content!7137 lt!1489795) ((_ map or) (content!7137 p!2959) (content!7137 lt!1489649))))))

(declare-fun e!2597243 () List!46049)

(assert (=> d!1234487 (= lt!1489795 e!2597243)))

(declare-fun c!714258 () Bool)

(assert (=> d!1234487 (= c!714258 ((_ is Nil!45925) p!2959))))

(assert (=> d!1234487 (= (++!11716 p!2959 lt!1489649) lt!1489795)))

(declare-fun b!4183638 () Bool)

(declare-fun res!1715824 () Bool)

(assert (=> b!4183638 (=> (not res!1715824) (not e!2597242))))

(assert (=> b!4183638 (= res!1715824 (= (size!33728 lt!1489795) (+ (size!33728 p!2959) (size!33728 lt!1489649))))))

(declare-fun b!4183639 () Bool)

(assert (=> b!4183639 (= e!2597242 (or (not (= lt!1489649 Nil!45925)) (= lt!1489795 p!2959)))))

(declare-fun b!4183636 () Bool)

(assert (=> b!4183636 (= e!2597243 lt!1489649)))

(declare-fun b!4183637 () Bool)

(assert (=> b!4183637 (= e!2597243 (Cons!45925 (h!51345 p!2959) (++!11716 (t!345218 p!2959) lt!1489649)))))

(assert (= (and d!1234487 c!714258) b!4183636))

(assert (= (and d!1234487 (not c!714258)) b!4183637))

(assert (= (and d!1234487 res!1715825) b!4183638))

(assert (= (and b!4183638 res!1715824) b!4183639))

(declare-fun m!4772419 () Bool)

(assert (=> d!1234487 m!4772419))

(declare-fun m!4772421 () Bool)

(assert (=> d!1234487 m!4772421))

(declare-fun m!4772423 () Bool)

(assert (=> d!1234487 m!4772423))

(declare-fun m!4772425 () Bool)

(assert (=> b!4183638 m!4772425))

(assert (=> b!4183638 m!4771795))

(declare-fun m!4772427 () Bool)

(assert (=> b!4183638 m!4772427))

(declare-fun m!4772429 () Bool)

(assert (=> b!4183637 m!4772429))

(assert (=> d!1234333 d!1234487))

(assert (=> d!1234333 d!1234443))

(assert (=> d!1234333 d!1234403))

(assert (=> b!4183308 d!1234467))

(declare-fun d!1234489 () Bool)

(declare-fun lt!1489796 () Int)

(assert (=> d!1234489 (>= lt!1489796 0)))

(declare-fun e!2597244 () Int)

(assert (=> d!1234489 (= lt!1489796 e!2597244)))

(declare-fun c!714259 () Bool)

(assert (=> d!1234489 (= c!714259 ((_ is Nil!45925) (originalCharacters!8032 (_1!25001 (get!14925 lt!1489721)))))))

(assert (=> d!1234489 (= (size!33728 (originalCharacters!8032 (_1!25001 (get!14925 lt!1489721)))) lt!1489796)))

(declare-fun b!4183640 () Bool)

(assert (=> b!4183640 (= e!2597244 0)))

(declare-fun b!4183641 () Bool)

(assert (=> b!4183641 (= e!2597244 (+ 1 (size!33728 (t!345218 (originalCharacters!8032 (_1!25001 (get!14925 lt!1489721)))))))))

(assert (= (and d!1234489 c!714259) b!4183640))

(assert (= (and d!1234489 (not c!714259)) b!4183641))

(declare-fun m!4772431 () Bool)

(assert (=> b!4183641 m!4772431))

(assert (=> b!4183308 d!1234489))

(declare-fun d!1234491 () Bool)

(declare-fun lt!1489797 () Bool)

(assert (=> d!1234491 (= lt!1489797 (select (content!7138 (t!345220 rules!3843)) r!4142))))

(declare-fun e!2597246 () Bool)

(assert (=> d!1234491 (= lt!1489797 e!2597246)))

(declare-fun res!1715826 () Bool)

(assert (=> d!1234491 (=> (not res!1715826) (not e!2597246))))

(assert (=> d!1234491 (= res!1715826 ((_ is Cons!45927) (t!345220 rules!3843)))))

(assert (=> d!1234491 (= (contains!9451 (t!345220 rules!3843) r!4142) lt!1489797)))

(declare-fun b!4183642 () Bool)

(declare-fun e!2597245 () Bool)

(assert (=> b!4183642 (= e!2597246 e!2597245)))

(declare-fun res!1715827 () Bool)

(assert (=> b!4183642 (=> res!1715827 e!2597245)))

(assert (=> b!4183642 (= res!1715827 (= (h!51347 (t!345220 rules!3843)) r!4142))))

(declare-fun b!4183643 () Bool)

(assert (=> b!4183643 (= e!2597245 (contains!9451 (t!345220 (t!345220 rules!3843)) r!4142))))

(assert (= (and d!1234491 res!1715826) b!4183642))

(assert (= (and b!4183642 (not res!1715827)) b!4183643))

(declare-fun m!4772433 () Bool)

(assert (=> d!1234491 m!4772433))

(declare-fun m!4772435 () Bool)

(assert (=> d!1234491 m!4772435))

(declare-fun m!4772437 () Bool)

(assert (=> b!4183643 m!4772437))

(assert (=> b!4183488 d!1234491))

(declare-fun d!1234493 () Bool)

(declare-fun c!714262 () Bool)

(assert (=> d!1234493 (= c!714262 ((_ is Node!13855) (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 r!4142)) (dynLambda!19717 (toValue!10336 (transformation!7644 r!4142)) lt!1489628)))))))

(declare-fun e!2597251 () Bool)

(assert (=> d!1234493 (= (inv!60468 (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 r!4142)) (dynLambda!19717 (toValue!10336 (transformation!7644 r!4142)) lt!1489628)))) e!2597251)))

(declare-fun b!4183650 () Bool)

(declare-fun inv!60472 (Conc!13855) Bool)

(assert (=> b!4183650 (= e!2597251 (inv!60472 (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 r!4142)) (dynLambda!19717 (toValue!10336 (transformation!7644 r!4142)) lt!1489628)))))))

(declare-fun b!4183651 () Bool)

(declare-fun e!2597252 () Bool)

(assert (=> b!4183651 (= e!2597251 e!2597252)))

(declare-fun res!1715830 () Bool)

(assert (=> b!4183651 (= res!1715830 (not ((_ is Leaf!21420) (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 r!4142)) (dynLambda!19717 (toValue!10336 (transformation!7644 r!4142)) lt!1489628))))))))

(assert (=> b!4183651 (=> res!1715830 e!2597252)))

(declare-fun b!4183652 () Bool)

(declare-fun inv!60473 (Conc!13855) Bool)

(assert (=> b!4183652 (= e!2597252 (inv!60473 (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 r!4142)) (dynLambda!19717 (toValue!10336 (transformation!7644 r!4142)) lt!1489628)))))))

(assert (= (and d!1234493 c!714262) b!4183650))

(assert (= (and d!1234493 (not c!714262)) b!4183651))

(assert (= (and b!4183651 (not res!1715830)) b!4183652))

(declare-fun m!4772439 () Bool)

(assert (=> b!4183650 m!4772439))

(declare-fun m!4772441 () Bool)

(assert (=> b!4183652 m!4772441))

(assert (=> b!4183331 d!1234493))

(declare-fun d!1234495 () Bool)

(declare-fun c!714265 () Bool)

(assert (=> d!1234495 (= c!714265 ((_ is Nil!45925) lt!1489749))))

(declare-fun e!2597255 () (InoxSet C!25288))

(assert (=> d!1234495 (= (content!7137 lt!1489749) e!2597255)))

(declare-fun b!4183657 () Bool)

(assert (=> b!4183657 (= e!2597255 ((as const (Array C!25288 Bool)) false))))

(declare-fun b!4183658 () Bool)

(assert (=> b!4183658 (= e!2597255 ((_ map or) (store ((as const (Array C!25288 Bool)) false) (h!51345 lt!1489749) true) (content!7137 (t!345218 lt!1489749))))))

(assert (= (and d!1234495 c!714265) b!4183657))

(assert (= (and d!1234495 (not c!714265)) b!4183658))

(declare-fun m!4772443 () Bool)

(assert (=> b!4183658 m!4772443))

(declare-fun m!4772445 () Bool)

(assert (=> b!4183658 m!4772445))

(assert (=> d!1234409 d!1234495))

(declare-fun d!1234497 () Bool)

(declare-fun c!714266 () Bool)

(assert (=> d!1234497 (= c!714266 ((_ is Nil!45925) lt!1489629))))

(declare-fun e!2597256 () (InoxSet C!25288))

(assert (=> d!1234497 (= (content!7137 lt!1489629) e!2597256)))

(declare-fun b!4183659 () Bool)

(assert (=> b!4183659 (= e!2597256 ((as const (Array C!25288 Bool)) false))))

(declare-fun b!4183660 () Bool)

(assert (=> b!4183660 (= e!2597256 ((_ map or) (store ((as const (Array C!25288 Bool)) false) (h!51345 lt!1489629) true) (content!7137 (t!345218 lt!1489629))))))

(assert (= (and d!1234497 c!714266) b!4183659))

(assert (= (and d!1234497 (not c!714266)) b!4183660))

(declare-fun m!4772447 () Bool)

(assert (=> b!4183660 m!4772447))

(declare-fun m!4772449 () Bool)

(assert (=> b!4183660 m!4772449))

(assert (=> d!1234409 d!1234497))

(declare-fun d!1234499 () Bool)

(declare-fun c!714267 () Bool)

(assert (=> d!1234499 (= c!714267 ((_ is Nil!45925) (_2!25001 lt!1489624)))))

(declare-fun e!2597257 () (InoxSet C!25288))

(assert (=> d!1234499 (= (content!7137 (_2!25001 lt!1489624)) e!2597257)))

(declare-fun b!4183661 () Bool)

(assert (=> b!4183661 (= e!2597257 ((as const (Array C!25288 Bool)) false))))

(declare-fun b!4183662 () Bool)

(assert (=> b!4183662 (= e!2597257 ((_ map or) (store ((as const (Array C!25288 Bool)) false) (h!51345 (_2!25001 lt!1489624)) true) (content!7137 (t!345218 (_2!25001 lt!1489624)))))))

(assert (= (and d!1234499 c!714267) b!4183661))

(assert (= (and d!1234499 (not c!714267)) b!4183662))

(declare-fun m!4772451 () Bool)

(assert (=> b!4183662 m!4772451))

(declare-fun m!4772453 () Bool)

(assert (=> b!4183662 m!4772453))

(assert (=> d!1234409 d!1234499))

(declare-fun d!1234501 () Bool)

(assert (=> d!1234501 true))

(declare-fun lambda!129400 () Int)

(declare-fun order!24255 () Int)

(declare-fun dynLambda!19726 (Int Int) Int)

(assert (=> d!1234501 (< (dynLambda!19719 order!24249 (toValue!10336 (transformation!7644 r!4142))) (dynLambda!19726 order!24255 lambda!129400))))

(declare-fun Forall2!1164 (Int) Bool)

(assert (=> d!1234501 (= (equivClasses!3209 (toChars!10195 (transformation!7644 r!4142)) (toValue!10336 (transformation!7644 r!4142))) (Forall2!1164 lambda!129400))))

(declare-fun bs!596391 () Bool)

(assert (= bs!596391 d!1234501))

(declare-fun m!4772455 () Bool)

(assert (=> bs!596391 m!4772455))

(assert (=> b!4183522 d!1234501))

(declare-fun d!1234503 () Bool)

(assert (=> d!1234503 (= (get!14925 lt!1489777) (v!40651 lt!1489777))))

(assert (=> b!4183473 d!1234503))

(declare-fun d!1234505 () Bool)

(declare-fun lt!1489798 () Bool)

(assert (=> d!1234505 (= lt!1489798 (select (content!7138 rules!3843) (rule!10710 (_1!25001 (get!14925 lt!1489768)))))))

(declare-fun e!2597261 () Bool)

(assert (=> d!1234505 (= lt!1489798 e!2597261)))

(declare-fun res!1715833 () Bool)

(assert (=> d!1234505 (=> (not res!1715833) (not e!2597261))))

(assert (=> d!1234505 (= res!1715833 ((_ is Cons!45927) rules!3843))))

(assert (=> d!1234505 (= (contains!9451 rules!3843 (rule!10710 (_1!25001 (get!14925 lt!1489768)))) lt!1489798)))

(declare-fun b!4183667 () Bool)

(declare-fun e!2597260 () Bool)

(assert (=> b!4183667 (= e!2597261 e!2597260)))

(declare-fun res!1715834 () Bool)

(assert (=> b!4183667 (=> res!1715834 e!2597260)))

(assert (=> b!4183667 (= res!1715834 (= (h!51347 rules!3843) (rule!10710 (_1!25001 (get!14925 lt!1489768)))))))

(declare-fun b!4183668 () Bool)

(assert (=> b!4183668 (= e!2597260 (contains!9451 (t!345220 rules!3843) (rule!10710 (_1!25001 (get!14925 lt!1489768)))))))

(assert (= (and d!1234505 res!1715833) b!4183667))

(assert (= (and b!4183667 (not res!1715834)) b!4183668))

(assert (=> d!1234505 m!4772313))

(declare-fun m!4772457 () Bool)

(assert (=> d!1234505 m!4772457))

(declare-fun m!4772459 () Bool)

(assert (=> b!4183668 m!4772459))

(assert (=> b!4183463 d!1234505))

(assert (=> b!4183463 d!1234473))

(declare-fun b!4183697 () Bool)

(declare-fun e!2597285 () tuple2!43738)

(assert (=> b!4183697 (= e!2597285 (tuple2!43739 Nil!45925 input!3342))))

(declare-fun call!291822 () tuple2!43738)

(declare-fun lt!1489878 () List!46049)

(declare-fun call!291818 () Regex!12549)

(declare-fun call!291820 () List!46049)

(declare-fun bm!291812 () Bool)

(assert (=> bm!291812 (= call!291822 (findLongestMatchInner!1591 call!291818 lt!1489878 (+ (size!33728 Nil!45925) 1) call!291820 input!3342 (size!33728 input!3342)))))

(declare-fun b!4183698 () Bool)

(declare-fun e!2597283 () tuple2!43738)

(assert (=> b!4183698 (= e!2597283 (tuple2!43739 Nil!45925 Nil!45925))))

(declare-fun b!4183699 () Bool)

(declare-fun c!714280 () Bool)

(declare-fun call!291817 () Bool)

(assert (=> b!4183699 (= c!714280 call!291817)))

(declare-fun lt!1489874 () Unit!65011)

(declare-fun lt!1489859 () Unit!65011)

(assert (=> b!4183699 (= lt!1489874 lt!1489859)))

(declare-fun lt!1489882 () C!25288)

(declare-fun lt!1489880 () List!46049)

(assert (=> b!4183699 (= (++!11716 (++!11716 Nil!45925 (Cons!45925 lt!1489882 Nil!45925)) lt!1489880) input!3342)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1290 (List!46049 C!25288 List!46049 List!46049) Unit!65011)

(assert (=> b!4183699 (= lt!1489859 (lemmaMoveElementToOtherListKeepsConcatEq!1290 Nil!45925 lt!1489882 lt!1489880 input!3342))))

(assert (=> b!4183699 (= lt!1489880 (tail!6725 input!3342))))

(assert (=> b!4183699 (= lt!1489882 (head!8878 input!3342))))

(declare-fun lt!1489855 () Unit!65011)

(declare-fun lt!1489879 () Unit!65011)

(assert (=> b!4183699 (= lt!1489855 lt!1489879)))

(assert (=> b!4183699 (isPrefix!4501 (++!11716 Nil!45925 (Cons!45925 (head!8878 (getSuffix!2794 input!3342 Nil!45925)) Nil!45925)) input!3342)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!672 (List!46049 List!46049) Unit!65011)

(assert (=> b!4183699 (= lt!1489879 (lemmaAddHeadSuffixToPrefixStillPrefix!672 Nil!45925 input!3342))))

(declare-fun lt!1489872 () Unit!65011)

(declare-fun lt!1489876 () Unit!65011)

(assert (=> b!4183699 (= lt!1489872 lt!1489876)))

(assert (=> b!4183699 (= lt!1489876 (lemmaAddHeadSuffixToPrefixStillPrefix!672 Nil!45925 input!3342))))

(assert (=> b!4183699 (= lt!1489878 (++!11716 Nil!45925 (Cons!45925 (head!8878 input!3342) Nil!45925)))))

(declare-fun lt!1489877 () Unit!65011)

(declare-fun e!2597284 () Unit!65011)

(assert (=> b!4183699 (= lt!1489877 e!2597284)))

(declare-fun c!714283 () Bool)

(assert (=> b!4183699 (= c!714283 (= (size!33728 Nil!45925) (size!33728 input!3342)))))

(declare-fun lt!1489864 () Unit!65011)

(declare-fun lt!1489881 () Unit!65011)

(assert (=> b!4183699 (= lt!1489864 lt!1489881)))

(assert (=> b!4183699 (<= (size!33728 Nil!45925) (size!33728 input!3342))))

(assert (=> b!4183699 (= lt!1489881 (lemmaIsPrefixThenSmallerEqSize!531 Nil!45925 input!3342))))

(declare-fun e!2597278 () tuple2!43738)

(declare-fun e!2597282 () tuple2!43738)

(assert (=> b!4183699 (= e!2597278 e!2597282)))

(declare-fun b!4183700 () Bool)

(declare-fun e!2597281 () tuple2!43738)

(assert (=> b!4183700 (= e!2597282 e!2597281)))

(declare-fun lt!1489860 () tuple2!43738)

(assert (=> b!4183700 (= lt!1489860 call!291822)))

(declare-fun c!714285 () Bool)

(assert (=> b!4183700 (= c!714285 (isEmpty!27179 (_1!25003 lt!1489860)))))

(declare-fun b!4183701 () Bool)

(assert (=> b!4183701 (= e!2597281 (tuple2!43739 Nil!45925 input!3342))))

(declare-fun bm!291814 () Bool)

(declare-fun call!291824 () Unit!65011)

(assert (=> bm!291814 (= call!291824 (lemmaIsPrefixRefl!2930 input!3342 input!3342))))

(declare-fun b!4183702 () Bool)

(assert (=> b!4183702 (= e!2597282 call!291822)))

(declare-fun bm!291815 () Bool)

(assert (=> bm!291815 (= call!291820 (tail!6725 input!3342))))

(declare-fun b!4183703 () Bool)

(declare-fun e!2597279 () Bool)

(declare-fun lt!1489866 () tuple2!43738)

(assert (=> b!4183703 (= e!2597279 (>= (size!33728 (_1!25003 lt!1489866)) (size!33728 Nil!45925)))))

(declare-fun b!4183704 () Bool)

(assert (=> b!4183704 (= e!2597283 (tuple2!43739 Nil!45925 input!3342))))

(declare-fun b!4183705 () Bool)

(declare-fun e!2597280 () Bool)

(assert (=> b!4183705 (= e!2597280 e!2597279)))

(declare-fun res!1715839 () Bool)

(assert (=> b!4183705 (=> res!1715839 e!2597279)))

(assert (=> b!4183705 (= res!1715839 (isEmpty!27179 (_1!25003 lt!1489866)))))

(declare-fun b!4183706 () Bool)

(declare-fun Unit!65013 () Unit!65011)

(assert (=> b!4183706 (= e!2597284 Unit!65013)))

(declare-fun lt!1489857 () Unit!65011)

(assert (=> b!4183706 (= lt!1489857 call!291824)))

(declare-fun call!291823 () Bool)

(assert (=> b!4183706 call!291823))

(declare-fun lt!1489868 () Unit!65011)

(assert (=> b!4183706 (= lt!1489868 lt!1489857)))

(declare-fun lt!1489856 () Unit!65011)

(declare-fun call!291821 () Unit!65011)

(assert (=> b!4183706 (= lt!1489856 call!291821)))

(assert (=> b!4183706 (= input!3342 Nil!45925)))

(declare-fun lt!1489869 () Unit!65011)

(assert (=> b!4183706 (= lt!1489869 lt!1489856)))

(assert (=> b!4183706 false))

(declare-fun bm!291816 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!998 (List!46049 List!46049 List!46049) Unit!65011)

(assert (=> bm!291816 (= call!291821 (lemmaIsPrefixSameLengthThenSameList!998 input!3342 Nil!45925 input!3342))))

(declare-fun bm!291817 () Bool)

(declare-fun call!291819 () C!25288)

(assert (=> bm!291817 (= call!291818 (derivativeStep!3791 (regex!7644 r!4142) call!291819))))

(declare-fun bm!291818 () Bool)

(assert (=> bm!291818 (= call!291823 (isPrefix!4501 input!3342 input!3342))))

(declare-fun b!4183707 () Bool)

(assert (=> b!4183707 (= e!2597285 e!2597278)))

(declare-fun c!714282 () Bool)

(assert (=> b!4183707 (= c!714282 (= (size!33728 Nil!45925) (size!33728 input!3342)))))

(declare-fun d!1234507 () Bool)

(assert (=> d!1234507 e!2597280))

(declare-fun res!1715840 () Bool)

(assert (=> d!1234507 (=> (not res!1715840) (not e!2597280))))

(assert (=> d!1234507 (= res!1715840 (= (++!11716 (_1!25003 lt!1489866) (_2!25003 lt!1489866)) input!3342))))

(assert (=> d!1234507 (= lt!1489866 e!2597285)))

(declare-fun c!714284 () Bool)

(declare-fun lostCause!1046 (Regex!12549) Bool)

(assert (=> d!1234507 (= c!714284 (lostCause!1046 (regex!7644 r!4142)))))

(declare-fun lt!1489867 () Unit!65011)

(declare-fun Unit!65014 () Unit!65011)

(assert (=> d!1234507 (= lt!1489867 Unit!65014)))

(assert (=> d!1234507 (= (getSuffix!2794 input!3342 Nil!45925) input!3342)))

(declare-fun lt!1489858 () Unit!65011)

(declare-fun lt!1489871 () Unit!65011)

(assert (=> d!1234507 (= lt!1489858 lt!1489871)))

(declare-fun lt!1489875 () List!46049)

(assert (=> d!1234507 (= input!3342 lt!1489875)))

(declare-fun lemmaSamePrefixThenSameSuffix!2263 (List!46049 List!46049 List!46049 List!46049 List!46049) Unit!65011)

(assert (=> d!1234507 (= lt!1489871 (lemmaSamePrefixThenSameSuffix!2263 Nil!45925 input!3342 Nil!45925 lt!1489875 input!3342))))

(assert (=> d!1234507 (= lt!1489875 (getSuffix!2794 input!3342 Nil!45925))))

(declare-fun lt!1489861 () Unit!65011)

(declare-fun lt!1489863 () Unit!65011)

(assert (=> d!1234507 (= lt!1489861 lt!1489863)))

(assert (=> d!1234507 (isPrefix!4501 Nil!45925 (++!11716 Nil!45925 input!3342))))

(assert (=> d!1234507 (= lt!1489863 (lemmaConcatTwoListThenFirstIsPrefix!2998 Nil!45925 input!3342))))

(assert (=> d!1234507 (validRegex!5666 (regex!7644 r!4142))))

(assert (=> d!1234507 (= (findLongestMatchInner!1591 (regex!7644 r!4142) Nil!45925 (size!33728 Nil!45925) input!3342 input!3342 (size!33728 input!3342)) lt!1489866)))

(declare-fun bm!291813 () Bool)

(assert (=> bm!291813 (= call!291817 (nullable!4401 (regex!7644 r!4142)))))

(declare-fun b!4183708 () Bool)

(assert (=> b!4183708 (= e!2597281 lt!1489860)))

(declare-fun b!4183709 () Bool)

(declare-fun c!714281 () Bool)

(assert (=> b!4183709 (= c!714281 call!291817)))

(declare-fun lt!1489862 () Unit!65011)

(declare-fun lt!1489870 () Unit!65011)

(assert (=> b!4183709 (= lt!1489862 lt!1489870)))

(assert (=> b!4183709 (= input!3342 Nil!45925)))

(assert (=> b!4183709 (= lt!1489870 call!291821)))

(declare-fun lt!1489873 () Unit!65011)

(declare-fun lt!1489865 () Unit!65011)

(assert (=> b!4183709 (= lt!1489873 lt!1489865)))

(assert (=> b!4183709 call!291823))

(assert (=> b!4183709 (= lt!1489865 call!291824)))

(assert (=> b!4183709 (= e!2597278 e!2597283)))

(declare-fun bm!291819 () Bool)

(assert (=> bm!291819 (= call!291819 (head!8878 input!3342))))

(declare-fun b!4183710 () Bool)

(declare-fun Unit!65015 () Unit!65011)

(assert (=> b!4183710 (= e!2597284 Unit!65015)))

(assert (= (and d!1234507 c!714284) b!4183697))

(assert (= (and d!1234507 (not c!714284)) b!4183707))

(assert (= (and b!4183707 c!714282) b!4183709))

(assert (= (and b!4183707 (not c!714282)) b!4183699))

(assert (= (and b!4183709 c!714281) b!4183698))

(assert (= (and b!4183709 (not c!714281)) b!4183704))

(assert (= (and b!4183699 c!714283) b!4183706))

(assert (= (and b!4183699 (not c!714283)) b!4183710))

(assert (= (and b!4183699 c!714280) b!4183700))

(assert (= (and b!4183699 (not c!714280)) b!4183702))

(assert (= (and b!4183700 c!714285) b!4183701))

(assert (= (and b!4183700 (not c!714285)) b!4183708))

(assert (= (or b!4183700 b!4183702) bm!291815))

(assert (= (or b!4183700 b!4183702) bm!291819))

(assert (= (or b!4183700 b!4183702) bm!291817))

(assert (= (or b!4183700 b!4183702) bm!291812))

(assert (= (or b!4183709 b!4183706) bm!291814))

(assert (= (or b!4183709 b!4183699) bm!291813))

(assert (= (or b!4183709 b!4183706) bm!291816))

(assert (= (or b!4183709 b!4183706) bm!291818))

(assert (= (and d!1234507 res!1715840) b!4183705))

(assert (= (and b!4183705 (not res!1715839)) b!4183703))

(assert (=> b!4183699 m!4771891))

(declare-fun m!4772461 () Bool)

(assert (=> b!4183699 m!4772461))

(assert (=> b!4183699 m!4771887))

(assert (=> b!4183699 m!4771763))

(declare-fun m!4772463 () Bool)

(assert (=> b!4183699 m!4772463))

(assert (=> b!4183699 m!4772073))

(declare-fun m!4772465 () Bool)

(assert (=> b!4183699 m!4772465))

(declare-fun m!4772467 () Bool)

(assert (=> b!4183699 m!4772467))

(assert (=> b!4183699 m!4772465))

(declare-fun m!4772469 () Bool)

(assert (=> b!4183699 m!4772469))

(declare-fun m!4772471 () Bool)

(assert (=> b!4183699 m!4772471))

(declare-fun m!4772473 () Bool)

(assert (=> b!4183699 m!4772473))

(assert (=> b!4183699 m!4772463))

(declare-fun m!4772475 () Bool)

(assert (=> b!4183699 m!4772475))

(declare-fun m!4772477 () Bool)

(assert (=> b!4183699 m!4772477))

(assert (=> b!4183699 m!4772477))

(declare-fun m!4772479 () Bool)

(assert (=> b!4183699 m!4772479))

(assert (=> bm!291814 m!4771793))

(assert (=> bm!291812 m!4771763))

(declare-fun m!4772481 () Bool)

(assert (=> bm!291812 m!4772481))

(declare-fun m!4772483 () Bool)

(assert (=> b!4183703 m!4772483))

(assert (=> b!4183703 m!4772073))

(declare-fun m!4772485 () Bool)

(assert (=> d!1234507 m!4772485))

(declare-fun m!4772487 () Bool)

(assert (=> d!1234507 m!4772487))

(declare-fun m!4772489 () Bool)

(assert (=> d!1234507 m!4772489))

(assert (=> d!1234507 m!4771759))

(assert (=> d!1234507 m!4772477))

(declare-fun m!4772491 () Bool)

(assert (=> d!1234507 m!4772491))

(assert (=> d!1234507 m!4772487))

(declare-fun m!4772493 () Bool)

(assert (=> d!1234507 m!4772493))

(declare-fun m!4772495 () Bool)

(assert (=> d!1234507 m!4772495))

(assert (=> bm!291819 m!4771891))

(declare-fun m!4772497 () Bool)

(assert (=> b!4183700 m!4772497))

(assert (=> bm!291815 m!4771887))

(declare-fun m!4772499 () Bool)

(assert (=> bm!291816 m!4772499))

(declare-fun m!4772501 () Bool)

(assert (=> bm!291817 m!4772501))

(assert (=> bm!291813 m!4772219))

(assert (=> bm!291818 m!4771789))

(declare-fun m!4772503 () Bool)

(assert (=> b!4183705 m!4772503))

(assert (=> b!4183312 d!1234507))

(declare-fun d!1234509 () Bool)

(assert (=> d!1234509 (= (isEmpty!27179 (_1!25003 (findLongestMatchInner!1591 (regex!7644 r!4142) Nil!45925 (size!33728 Nil!45925) input!3342 input!3342 (size!33728 input!3342)))) ((_ is Nil!45925) (_1!25003 (findLongestMatchInner!1591 (regex!7644 r!4142) Nil!45925 (size!33728 Nil!45925) input!3342 input!3342 (size!33728 input!3342)))))))

(assert (=> b!4183312 d!1234509))

(declare-fun d!1234511 () Bool)

(assert (=> d!1234511 (= (apply!10609 (transformation!7644 r!4142) (seqFromList!5669 (_1!25003 lt!1489722))) (dynLambda!19717 (toValue!10336 (transformation!7644 r!4142)) (seqFromList!5669 (_1!25003 lt!1489722))))))

(declare-fun b_lambda!122953 () Bool)

(assert (=> (not b_lambda!122953) (not d!1234511)))

(declare-fun tb!250475 () Bool)

(declare-fun t!345312 () Bool)

(assert (=> (and b!4183047 (= (toValue!10336 (transformation!7644 (h!51347 rules!3843))) (toValue!10336 (transformation!7644 r!4142))) t!345312) tb!250475))

(declare-fun result!305236 () Bool)

(assert (=> tb!250475 (= result!305236 (inv!21 (dynLambda!19717 (toValue!10336 (transformation!7644 r!4142)) (seqFromList!5669 (_1!25003 lt!1489722)))))))

(declare-fun m!4772505 () Bool)

(assert (=> tb!250475 m!4772505))

(assert (=> d!1234511 t!345312))

(declare-fun b_and!327413 () Bool)

(assert (= b_and!327397 (and (=> t!345312 result!305236) b_and!327413)))

(declare-fun tb!250477 () Bool)

(declare-fun t!345314 () Bool)

(assert (=> (and b!4183060 (= (toValue!10336 (transformation!7644 rBis!167)) (toValue!10336 (transformation!7644 r!4142))) t!345314) tb!250477))

(declare-fun result!305238 () Bool)

(assert (= result!305238 result!305236))

(assert (=> d!1234511 t!345314))

(declare-fun b_and!327415 () Bool)

(assert (= b_and!327399 (and (=> t!345314 result!305238) b_and!327415)))

(declare-fun t!345316 () Bool)

(declare-fun tb!250479 () Bool)

(assert (=> (and b!4183068 (= (toValue!10336 (transformation!7644 r!4142)) (toValue!10336 (transformation!7644 r!4142))) t!345316) tb!250479))

(declare-fun result!305240 () Bool)

(assert (= result!305240 result!305236))

(assert (=> d!1234511 t!345316))

(declare-fun b_and!327417 () Bool)

(assert (= b_and!327401 (and (=> t!345316 result!305240) b_and!327417)))

(declare-fun t!345318 () Bool)

(declare-fun tb!250481 () Bool)

(assert (=> (and b!4183600 (= (toValue!10336 (transformation!7644 (h!51347 (t!345220 rules!3843)))) (toValue!10336 (transformation!7644 r!4142))) t!345318) tb!250481))

(declare-fun result!305242 () Bool)

(assert (= result!305242 result!305236))

(assert (=> d!1234511 t!345318))

(declare-fun b_and!327419 () Bool)

(assert (= b_and!327403 (and (=> t!345318 result!305242) b_and!327419)))

(assert (=> d!1234511 m!4772081))

(declare-fun m!4772507 () Bool)

(assert (=> d!1234511 m!4772507))

(assert (=> b!4183312 d!1234511))

(declare-fun bs!596392 () Bool)

(declare-fun d!1234513 () Bool)

(assert (= bs!596392 (and d!1234513 d!1234393)))

(declare-fun lambda!129401 () Int)

(assert (=> bs!596392 (= lambda!129401 lambda!129397)))

(declare-fun b!4183711 () Bool)

(declare-fun e!2597287 () Bool)

(assert (=> b!4183711 (= e!2597287 true)))

(assert (=> d!1234513 e!2597287))

(assert (= d!1234513 b!4183711))

(assert (=> b!4183711 (< (dynLambda!19719 order!24249 (toValue!10336 (transformation!7644 r!4142))) (dynLambda!19720 order!24251 lambda!129401))))

(assert (=> b!4183711 (< (dynLambda!19721 order!24253 (toChars!10195 (transformation!7644 r!4142))) (dynLambda!19720 order!24251 lambda!129401))))

(assert (=> d!1234513 (= (list!16585 (dynLambda!19716 (toChars!10195 (transformation!7644 r!4142)) (dynLambda!19717 (toValue!10336 (transformation!7644 r!4142)) (seqFromList!5669 (_1!25003 lt!1489722))))) (list!16585 (seqFromList!5669 (_1!25003 lt!1489722))))))

(declare-fun lt!1489883 () Unit!65011)

(assert (=> d!1234513 (= lt!1489883 (ForallOf!1043 lambda!129401 (seqFromList!5669 (_1!25003 lt!1489722))))))

(assert (=> d!1234513 (= (lemmaSemiInverse!2410 (transformation!7644 r!4142) (seqFromList!5669 (_1!25003 lt!1489722))) lt!1489883)))

(declare-fun b_lambda!122955 () Bool)

(assert (=> (not b_lambda!122955) (not d!1234513)))

(declare-fun tb!250483 () Bool)

(declare-fun t!345320 () Bool)

(assert (=> (and b!4183047 (= (toChars!10195 (transformation!7644 (h!51347 rules!3843))) (toChars!10195 (transformation!7644 r!4142))) t!345320) tb!250483))

(declare-fun tp!1278589 () Bool)

(declare-fun e!2597288 () Bool)

(declare-fun b!4183712 () Bool)

(assert (=> b!4183712 (= e!2597288 (and (inv!60468 (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 r!4142)) (dynLambda!19717 (toValue!10336 (transformation!7644 r!4142)) (seqFromList!5669 (_1!25003 lt!1489722)))))) tp!1278589))))

(declare-fun result!305244 () Bool)

(assert (=> tb!250483 (= result!305244 (and (inv!60469 (dynLambda!19716 (toChars!10195 (transformation!7644 r!4142)) (dynLambda!19717 (toValue!10336 (transformation!7644 r!4142)) (seqFromList!5669 (_1!25003 lt!1489722))))) e!2597288))))

(assert (= tb!250483 b!4183712))

(declare-fun m!4772509 () Bool)

(assert (=> b!4183712 m!4772509))

(declare-fun m!4772511 () Bool)

(assert (=> tb!250483 m!4772511))

(assert (=> d!1234513 t!345320))

(declare-fun b_and!327421 () Bool)

(assert (= b_and!327405 (and (=> t!345320 result!305244) b_and!327421)))

(declare-fun t!345322 () Bool)

(declare-fun tb!250485 () Bool)

(assert (=> (and b!4183060 (= (toChars!10195 (transformation!7644 rBis!167)) (toChars!10195 (transformation!7644 r!4142))) t!345322) tb!250485))

(declare-fun result!305246 () Bool)

(assert (= result!305246 result!305244))

(assert (=> d!1234513 t!345322))

(declare-fun b_and!327423 () Bool)

(assert (= b_and!327407 (and (=> t!345322 result!305246) b_and!327423)))

(declare-fun t!345324 () Bool)

(declare-fun tb!250487 () Bool)

(assert (=> (and b!4183068 (= (toChars!10195 (transformation!7644 r!4142)) (toChars!10195 (transformation!7644 r!4142))) t!345324) tb!250487))

(declare-fun result!305248 () Bool)

(assert (= result!305248 result!305244))

(assert (=> d!1234513 t!345324))

(declare-fun b_and!327425 () Bool)

(assert (= b_and!327409 (and (=> t!345324 result!305248) b_and!327425)))

(declare-fun tb!250489 () Bool)

(declare-fun t!345326 () Bool)

(assert (=> (and b!4183600 (= (toChars!10195 (transformation!7644 (h!51347 (t!345220 rules!3843)))) (toChars!10195 (transformation!7644 r!4142))) t!345326) tb!250489))

(declare-fun result!305250 () Bool)

(assert (= result!305250 result!305244))

(assert (=> d!1234513 t!345326))

(declare-fun b_and!327427 () Bool)

(assert (= b_and!327411 (and (=> t!345326 result!305250) b_and!327427)))

(declare-fun b_lambda!122957 () Bool)

(assert (=> (not b_lambda!122957) (not d!1234513)))

(assert (=> d!1234513 t!345312))

(declare-fun b_and!327429 () Bool)

(assert (= b_and!327413 (and (=> t!345312 result!305236) b_and!327429)))

(assert (=> d!1234513 t!345314))

(declare-fun b_and!327431 () Bool)

(assert (= b_and!327415 (and (=> t!345314 result!305238) b_and!327431)))

(assert (=> d!1234513 t!345316))

(declare-fun b_and!327433 () Bool)

(assert (= b_and!327417 (and (=> t!345316 result!305240) b_and!327433)))

(assert (=> d!1234513 t!345318))

(declare-fun b_and!327435 () Bool)

(assert (= b_and!327419 (and (=> t!345318 result!305242) b_and!327435)))

(assert (=> d!1234513 m!4772081))

(assert (=> d!1234513 m!4772507))

(declare-fun m!4772513 () Bool)

(assert (=> d!1234513 m!4772513))

(declare-fun m!4772515 () Bool)

(assert (=> d!1234513 m!4772515))

(assert (=> d!1234513 m!4772081))

(declare-fun m!4772517 () Bool)

(assert (=> d!1234513 m!4772517))

(assert (=> d!1234513 m!4772081))

(declare-fun m!4772519 () Bool)

(assert (=> d!1234513 m!4772519))

(assert (=> d!1234513 m!4772507))

(assert (=> d!1234513 m!4772513))

(assert (=> b!4183312 d!1234513))

(declare-fun d!1234515 () Bool)

(declare-fun lt!1489886 () Int)

(assert (=> d!1234515 (= lt!1489886 (size!33728 (list!16585 (seqFromList!5669 (_1!25003 lt!1489722)))))))

(declare-fun size!33731 (Conc!13855) Int)

(assert (=> d!1234515 (= lt!1489886 (size!33731 (c!714182 (seqFromList!5669 (_1!25003 lt!1489722)))))))

(assert (=> d!1234515 (= (size!33730 (seqFromList!5669 (_1!25003 lt!1489722))) lt!1489886)))

(declare-fun bs!596393 () Bool)

(assert (= bs!596393 d!1234515))

(assert (=> bs!596393 m!4772081))

(assert (=> bs!596393 m!4772517))

(assert (=> bs!596393 m!4772517))

(declare-fun m!4772521 () Bool)

(assert (=> bs!596393 m!4772521))

(declare-fun m!4772523 () Bool)

(assert (=> bs!596393 m!4772523))

(assert (=> b!4183312 d!1234515))

(declare-fun d!1234517 () Bool)

(assert (=> d!1234517 (= (seqFromList!5669 (_1!25003 lt!1489722)) (fromListB!2592 (_1!25003 lt!1489722)))))

(declare-fun bs!596394 () Bool)

(assert (= bs!596394 d!1234517))

(declare-fun m!4772525 () Bool)

(assert (=> bs!596394 m!4772525))

(assert (=> b!4183312 d!1234517))

(declare-fun d!1234519 () Bool)

(declare-fun lt!1489887 () Int)

(assert (=> d!1234519 (>= lt!1489887 0)))

(declare-fun e!2597289 () Int)

(assert (=> d!1234519 (= lt!1489887 e!2597289)))

(declare-fun c!714286 () Bool)

(assert (=> d!1234519 (= c!714286 ((_ is Nil!45925) Nil!45925))))

(assert (=> d!1234519 (= (size!33728 Nil!45925) lt!1489887)))

(declare-fun b!4183713 () Bool)

(assert (=> b!4183713 (= e!2597289 0)))

(declare-fun b!4183714 () Bool)

(assert (=> b!4183714 (= e!2597289 (+ 1 (size!33728 (t!345218 Nil!45925))))))

(assert (= (and d!1234519 c!714286) b!4183713))

(assert (= (and d!1234519 (not c!714286)) b!4183714))

(declare-fun m!4772527 () Bool)

(assert (=> b!4183714 m!4772527))

(assert (=> b!4183312 d!1234519))

(assert (=> b!4183312 d!1234443))

(declare-fun d!1234521 () Bool)

(declare-fun e!2597292 () Bool)

(assert (=> d!1234521 e!2597292))

(declare-fun res!1715843 () Bool)

(assert (=> d!1234521 (=> res!1715843 e!2597292)))

(assert (=> d!1234521 (= res!1715843 (isEmpty!27179 (_1!25003 (findLongestMatchInner!1591 (regex!7644 r!4142) Nil!45925 (size!33728 Nil!45925) input!3342 input!3342 (size!33728 input!3342)))))))

(declare-fun lt!1489890 () Unit!65011)

(declare-fun choose!25609 (Regex!12549 List!46049) Unit!65011)

(assert (=> d!1234521 (= lt!1489890 (choose!25609 (regex!7644 r!4142) input!3342))))

(assert (=> d!1234521 (validRegex!5666 (regex!7644 r!4142))))

(assert (=> d!1234521 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1564 (regex!7644 r!4142) input!3342) lt!1489890)))

(declare-fun b!4183717 () Bool)

(assert (=> b!4183717 (= e!2597292 (matchR!6288 (regex!7644 r!4142) (_1!25003 (findLongestMatchInner!1591 (regex!7644 r!4142) Nil!45925 (size!33728 Nil!45925) input!3342 input!3342 (size!33728 input!3342)))))))

(assert (= (and d!1234521 (not res!1715843)) b!4183717))

(declare-fun m!4772529 () Bool)

(assert (=> d!1234521 m!4772529))

(assert (=> d!1234521 m!4771763))

(assert (=> d!1234521 m!4771759))

(assert (=> d!1234521 m!4772073))

(assert (=> d!1234521 m!4771763))

(assert (=> d!1234521 m!4772075))

(assert (=> d!1234521 m!4772079))

(assert (=> d!1234521 m!4772073))

(assert (=> b!4183717 m!4772073))

(assert (=> b!4183717 m!4771763))

(assert (=> b!4183717 m!4772073))

(assert (=> b!4183717 m!4771763))

(assert (=> b!4183717 m!4772075))

(assert (=> b!4183717 m!4772077))

(assert (=> b!4183312 d!1234521))

(declare-fun d!1234523 () Bool)

(assert (=> d!1234523 (= (inv!60469 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 lt!1489633))) (value!238386 lt!1489633))) (isBalanced!3735 (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 lt!1489633))) (value!238386 lt!1489633)))))))

(declare-fun bs!596395 () Bool)

(assert (= bs!596395 d!1234523))

(declare-fun m!4772531 () Bool)

(assert (=> bs!596395 m!4772531))

(assert (=> tb!250387 d!1234523))

(declare-fun b!4183718 () Bool)

(declare-fun res!1715849 () Bool)

(declare-fun e!2597294 () Bool)

(assert (=> b!4183718 (=> (not res!1715849) (not e!2597294))))

(declare-fun call!291825 () Bool)

(assert (=> b!4183718 (= res!1715849 (not call!291825))))

(declare-fun b!4183719 () Bool)

(declare-fun e!2597299 () Bool)

(declare-fun e!2597297 () Bool)

(assert (=> b!4183719 (= e!2597299 e!2597297)))

(declare-fun res!1715848 () Bool)

(assert (=> b!4183719 (=> (not res!1715848) (not e!2597297))))

(declare-fun lt!1489891 () Bool)

(assert (=> b!4183719 (= res!1715848 (not lt!1489891))))

(declare-fun b!4183720 () Bool)

(declare-fun res!1715846 () Bool)

(assert (=> b!4183720 (=> res!1715846 e!2597299)))

(assert (=> b!4183720 (= res!1715846 (not ((_ is ElementMatch!12549) (derivativeStep!3791 (regex!7644 r!4142) (head!8878 p!2959)))))))

(declare-fun e!2597296 () Bool)

(assert (=> b!4183720 (= e!2597296 e!2597299)))

(declare-fun b!4183721 () Bool)

(declare-fun e!2597298 () Bool)

(assert (=> b!4183721 (= e!2597298 (matchR!6288 (derivativeStep!3791 (derivativeStep!3791 (regex!7644 r!4142) (head!8878 p!2959)) (head!8878 (tail!6725 p!2959))) (tail!6725 (tail!6725 p!2959))))))

(declare-fun b!4183722 () Bool)

(declare-fun res!1715851 () Bool)

(declare-fun e!2597295 () Bool)

(assert (=> b!4183722 (=> res!1715851 e!2597295)))

(assert (=> b!4183722 (= res!1715851 (not (isEmpty!27179 (tail!6725 (tail!6725 p!2959)))))))

(declare-fun b!4183723 () Bool)

(declare-fun res!1715845 () Bool)

(assert (=> b!4183723 (=> res!1715845 e!2597299)))

(assert (=> b!4183723 (= res!1715845 e!2597294)))

(declare-fun res!1715847 () Bool)

(assert (=> b!4183723 (=> (not res!1715847) (not e!2597294))))

(assert (=> b!4183723 (= res!1715847 lt!1489891)))

(declare-fun b!4183724 () Bool)

(assert (=> b!4183724 (= e!2597295 (not (= (head!8878 (tail!6725 p!2959)) (c!714183 (derivativeStep!3791 (regex!7644 r!4142) (head!8878 p!2959))))))))

(declare-fun b!4183725 () Bool)

(declare-fun e!2597293 () Bool)

(assert (=> b!4183725 (= e!2597293 (= lt!1489891 call!291825))))

(declare-fun d!1234525 () Bool)

(assert (=> d!1234525 e!2597293))

(declare-fun c!714287 () Bool)

(assert (=> d!1234525 (= c!714287 ((_ is EmptyExpr!12549) (derivativeStep!3791 (regex!7644 r!4142) (head!8878 p!2959))))))

(assert (=> d!1234525 (= lt!1489891 e!2597298)))

(declare-fun c!714289 () Bool)

(assert (=> d!1234525 (= c!714289 (isEmpty!27179 (tail!6725 p!2959)))))

(assert (=> d!1234525 (validRegex!5666 (derivativeStep!3791 (regex!7644 r!4142) (head!8878 p!2959)))))

(assert (=> d!1234525 (= (matchR!6288 (derivativeStep!3791 (regex!7644 r!4142) (head!8878 p!2959)) (tail!6725 p!2959)) lt!1489891)))

(declare-fun b!4183726 () Bool)

(assert (=> b!4183726 (= e!2597297 e!2597295)))

(declare-fun res!1715844 () Bool)

(assert (=> b!4183726 (=> res!1715844 e!2597295)))

(assert (=> b!4183726 (= res!1715844 call!291825)))

(declare-fun b!4183727 () Bool)

(declare-fun res!1715850 () Bool)

(assert (=> b!4183727 (=> (not res!1715850) (not e!2597294))))

(assert (=> b!4183727 (= res!1715850 (isEmpty!27179 (tail!6725 (tail!6725 p!2959))))))

(declare-fun b!4183728 () Bool)

(assert (=> b!4183728 (= e!2597296 (not lt!1489891))))

(declare-fun b!4183729 () Bool)

(assert (=> b!4183729 (= e!2597298 (nullable!4401 (derivativeStep!3791 (regex!7644 r!4142) (head!8878 p!2959))))))

(declare-fun bm!291820 () Bool)

(assert (=> bm!291820 (= call!291825 (isEmpty!27179 (tail!6725 p!2959)))))

(declare-fun b!4183730 () Bool)

(assert (=> b!4183730 (= e!2597294 (= (head!8878 (tail!6725 p!2959)) (c!714183 (derivativeStep!3791 (regex!7644 r!4142) (head!8878 p!2959)))))))

(declare-fun b!4183731 () Bool)

(assert (=> b!4183731 (= e!2597293 e!2597296)))

(declare-fun c!714288 () Bool)

(assert (=> b!4183731 (= c!714288 ((_ is EmptyLang!12549) (derivativeStep!3791 (regex!7644 r!4142) (head!8878 p!2959))))))

(assert (= (and d!1234525 c!714289) b!4183729))

(assert (= (and d!1234525 (not c!714289)) b!4183721))

(assert (= (and d!1234525 c!714287) b!4183725))

(assert (= (and d!1234525 (not c!714287)) b!4183731))

(assert (= (and b!4183731 c!714288) b!4183728))

(assert (= (and b!4183731 (not c!714288)) b!4183720))

(assert (= (and b!4183720 (not res!1715846)) b!4183723))

(assert (= (and b!4183723 res!1715847) b!4183718))

(assert (= (and b!4183718 res!1715849) b!4183727))

(assert (= (and b!4183727 res!1715850) b!4183730))

(assert (= (and b!4183723 (not res!1715845)) b!4183719))

(assert (= (and b!4183719 res!1715848) b!4183726))

(assert (= (and b!4183726 (not res!1715844)) b!4183722))

(assert (= (and b!4183722 (not res!1715851)) b!4183724))

(assert (= (or b!4183725 b!4183718 b!4183726) bm!291820))

(assert (=> bm!291820 m!4772327))

(assert (=> bm!291820 m!4772341))

(assert (=> b!4183727 m!4772327))

(declare-fun m!4772533 () Bool)

(assert (=> b!4183727 m!4772533))

(assert (=> b!4183727 m!4772533))

(declare-fun m!4772535 () Bool)

(assert (=> b!4183727 m!4772535))

(assert (=> d!1234525 m!4772327))

(assert (=> d!1234525 m!4772341))

(assert (=> d!1234525 m!4772343))

(declare-fun m!4772537 () Bool)

(assert (=> d!1234525 m!4772537))

(assert (=> b!4183722 m!4772327))

(assert (=> b!4183722 m!4772533))

(assert (=> b!4183722 m!4772533))

(assert (=> b!4183722 m!4772535))

(assert (=> b!4183730 m!4772327))

(declare-fun m!4772539 () Bool)

(assert (=> b!4183730 m!4772539))

(assert (=> b!4183724 m!4772327))

(assert (=> b!4183724 m!4772539))

(assert (=> b!4183721 m!4772327))

(assert (=> b!4183721 m!4772539))

(assert (=> b!4183721 m!4772343))

(assert (=> b!4183721 m!4772539))

(declare-fun m!4772541 () Bool)

(assert (=> b!4183721 m!4772541))

(assert (=> b!4183721 m!4772327))

(assert (=> b!4183721 m!4772533))

(assert (=> b!4183721 m!4772541))

(assert (=> b!4183721 m!4772533))

(declare-fun m!4772543 () Bool)

(assert (=> b!4183721 m!4772543))

(assert (=> b!4183729 m!4772343))

(declare-fun m!4772545 () Bool)

(assert (=> b!4183729 m!4772545))

(assert (=> b!4183554 d!1234525))

(declare-fun b!4183752 () Bool)

(declare-fun e!2597313 () Regex!12549)

(declare-fun call!291837 () Regex!12549)

(assert (=> b!4183752 (= e!2597313 (Union!12549 (Concat!20424 call!291837 (regTwo!25610 (regex!7644 r!4142))) EmptyLang!12549))))

(declare-fun b!4183753 () Bool)

(declare-fun e!2597311 () Regex!12549)

(declare-fun call!291834 () Regex!12549)

(assert (=> b!4183753 (= e!2597311 (Concat!20424 call!291834 (regex!7644 r!4142)))))

(declare-fun b!4183755 () Bool)

(declare-fun e!2597310 () Regex!12549)

(assert (=> b!4183755 (= e!2597310 EmptyLang!12549)))

(declare-fun b!4183756 () Bool)

(declare-fun c!714303 () Bool)

(assert (=> b!4183756 (= c!714303 ((_ is Union!12549) (regex!7644 r!4142)))))

(declare-fun e!2597314 () Regex!12549)

(declare-fun e!2597312 () Regex!12549)

(assert (=> b!4183756 (= e!2597314 e!2597312)))

(declare-fun bm!291829 () Bool)

(declare-fun call!291835 () Regex!12549)

(assert (=> bm!291829 (= call!291834 call!291835)))

(declare-fun b!4183757 () Bool)

(assert (=> b!4183757 (= e!2597314 (ite (= (head!8878 p!2959) (c!714183 (regex!7644 r!4142))) EmptyExpr!12549 EmptyLang!12549))))

(declare-fun b!4183758 () Bool)

(declare-fun call!291836 () Regex!12549)

(assert (=> b!4183758 (= e!2597312 (Union!12549 call!291836 call!291835))))

(declare-fun c!714300 () Bool)

(declare-fun bm!291830 () Bool)

(assert (=> bm!291830 (= call!291836 (derivativeStep!3791 (ite c!714303 (regOne!25611 (regex!7644 r!4142)) (ite c!714300 (regTwo!25610 (regex!7644 r!4142)) (regOne!25610 (regex!7644 r!4142)))) (head!8878 p!2959)))))

(declare-fun b!4183759 () Bool)

(assert (=> b!4183759 (= e!2597313 (Union!12549 (Concat!20424 call!291834 (regTwo!25610 (regex!7644 r!4142))) call!291837))))

(declare-fun bm!291831 () Bool)

(assert (=> bm!291831 (= call!291837 call!291836)))

(declare-fun b!4183760 () Bool)

(assert (=> b!4183760 (= e!2597312 e!2597311)))

(declare-fun c!714304 () Bool)

(assert (=> b!4183760 (= c!714304 ((_ is Star!12549) (regex!7644 r!4142)))))

(declare-fun b!4183754 () Bool)

(assert (=> b!4183754 (= e!2597310 e!2597314)))

(declare-fun c!714302 () Bool)

(assert (=> b!4183754 (= c!714302 ((_ is ElementMatch!12549) (regex!7644 r!4142)))))

(declare-fun d!1234527 () Bool)

(declare-fun lt!1489894 () Regex!12549)

(assert (=> d!1234527 (validRegex!5666 lt!1489894)))

(assert (=> d!1234527 (= lt!1489894 e!2597310)))

(declare-fun c!714301 () Bool)

(assert (=> d!1234527 (= c!714301 (or ((_ is EmptyExpr!12549) (regex!7644 r!4142)) ((_ is EmptyLang!12549) (regex!7644 r!4142))))))

(assert (=> d!1234527 (validRegex!5666 (regex!7644 r!4142))))

(assert (=> d!1234527 (= (derivativeStep!3791 (regex!7644 r!4142) (head!8878 p!2959)) lt!1489894)))

(declare-fun bm!291832 () Bool)

(assert (=> bm!291832 (= call!291835 (derivativeStep!3791 (ite c!714303 (regTwo!25611 (regex!7644 r!4142)) (ite c!714304 (reg!12878 (regex!7644 r!4142)) (regOne!25610 (regex!7644 r!4142)))) (head!8878 p!2959)))))

(declare-fun b!4183761 () Bool)

(assert (=> b!4183761 (= c!714300 (nullable!4401 (regOne!25610 (regex!7644 r!4142))))))

(assert (=> b!4183761 (= e!2597311 e!2597313)))

(assert (= (and d!1234527 c!714301) b!4183755))

(assert (= (and d!1234527 (not c!714301)) b!4183754))

(assert (= (and b!4183754 c!714302) b!4183757))

(assert (= (and b!4183754 (not c!714302)) b!4183756))

(assert (= (and b!4183756 c!714303) b!4183758))

(assert (= (and b!4183756 (not c!714303)) b!4183760))

(assert (= (and b!4183760 c!714304) b!4183753))

(assert (= (and b!4183760 (not c!714304)) b!4183761))

(assert (= (and b!4183761 c!714300) b!4183759))

(assert (= (and b!4183761 (not c!714300)) b!4183752))

(assert (= (or b!4183759 b!4183752) bm!291831))

(assert (= (or b!4183753 b!4183759) bm!291829))

(assert (= (or b!4183758 bm!291829) bm!291832))

(assert (= (or b!4183758 bm!291831) bm!291830))

(assert (=> bm!291830 m!4772325))

(declare-fun m!4772547 () Bool)

(assert (=> bm!291830 m!4772547))

(declare-fun m!4772549 () Bool)

(assert (=> d!1234527 m!4772549))

(assert (=> d!1234527 m!4771759))

(assert (=> bm!291832 m!4772325))

(declare-fun m!4772551 () Bool)

(assert (=> bm!291832 m!4772551))

(declare-fun m!4772553 () Bool)

(assert (=> b!4183761 m!4772553))

(assert (=> b!4183554 d!1234527))

(declare-fun d!1234529 () Bool)

(assert (=> d!1234529 (= (head!8878 p!2959) (h!51345 p!2959))))

(assert (=> b!4183554 d!1234529))

(declare-fun d!1234531 () Bool)

(assert (=> d!1234531 (= (tail!6725 p!2959) (t!345218 p!2959))))

(assert (=> b!4183554 d!1234531))

(declare-fun b!4183765 () Bool)

(declare-fun e!2597315 () Bool)

(assert (=> b!4183765 (= e!2597315 (>= (size!33728 (tail!6725 input!3342)) (size!33728 (tail!6725 pBis!107))))))

(declare-fun b!4183763 () Bool)

(declare-fun res!1715853 () Bool)

(declare-fun e!2597316 () Bool)

(assert (=> b!4183763 (=> (not res!1715853) (not e!2597316))))

(assert (=> b!4183763 (= res!1715853 (= (head!8878 (tail!6725 pBis!107)) (head!8878 (tail!6725 input!3342))))))

(declare-fun d!1234533 () Bool)

(assert (=> d!1234533 e!2597315))

(declare-fun res!1715855 () Bool)

(assert (=> d!1234533 (=> res!1715855 e!2597315)))

(declare-fun lt!1489895 () Bool)

(assert (=> d!1234533 (= res!1715855 (not lt!1489895))))

(declare-fun e!2597317 () Bool)

(assert (=> d!1234533 (= lt!1489895 e!2597317)))

(declare-fun res!1715854 () Bool)

(assert (=> d!1234533 (=> res!1715854 e!2597317)))

(assert (=> d!1234533 (= res!1715854 ((_ is Nil!45925) (tail!6725 pBis!107)))))

(assert (=> d!1234533 (= (isPrefix!4501 (tail!6725 pBis!107) (tail!6725 input!3342)) lt!1489895)))

(declare-fun b!4183762 () Bool)

(assert (=> b!4183762 (= e!2597317 e!2597316)))

(declare-fun res!1715852 () Bool)

(assert (=> b!4183762 (=> (not res!1715852) (not e!2597316))))

(assert (=> b!4183762 (= res!1715852 (not ((_ is Nil!45925) (tail!6725 input!3342))))))

(declare-fun b!4183764 () Bool)

(assert (=> b!4183764 (= e!2597316 (isPrefix!4501 (tail!6725 (tail!6725 pBis!107)) (tail!6725 (tail!6725 input!3342))))))

(assert (= (and d!1234533 (not res!1715854)) b!4183762))

(assert (= (and b!4183762 res!1715852) b!4183763))

(assert (= (and b!4183763 res!1715853) b!4183764))

(assert (= (and d!1234533 (not res!1715855)) b!4183765))

(assert (=> b!4183765 m!4771887))

(declare-fun m!4772555 () Bool)

(assert (=> b!4183765 m!4772555))

(assert (=> b!4183765 m!4772259))

(declare-fun m!4772557 () Bool)

(assert (=> b!4183765 m!4772557))

(assert (=> b!4183763 m!4772259))

(declare-fun m!4772559 () Bool)

(assert (=> b!4183763 m!4772559))

(assert (=> b!4183763 m!4771887))

(declare-fun m!4772561 () Bool)

(assert (=> b!4183763 m!4772561))

(assert (=> b!4183764 m!4772259))

(declare-fun m!4772563 () Bool)

(assert (=> b!4183764 m!4772563))

(assert (=> b!4183764 m!4771887))

(declare-fun m!4772565 () Bool)

(assert (=> b!4183764 m!4772565))

(assert (=> b!4183764 m!4772563))

(assert (=> b!4183764 m!4772565))

(declare-fun m!4772567 () Bool)

(assert (=> b!4183764 m!4772567))

(assert (=> b!4183467 d!1234533))

(declare-fun d!1234535 () Bool)

(assert (=> d!1234535 (= (tail!6725 pBis!107) (t!345218 pBis!107))))

(assert (=> b!4183467 d!1234535))

(declare-fun d!1234537 () Bool)

(assert (=> d!1234537 (= (tail!6725 input!3342) (t!345218 input!3342))))

(assert (=> b!4183467 d!1234537))

(declare-fun d!1234539 () Bool)

(assert (=> d!1234539 (= (isEmpty!27177 lt!1489777) (not ((_ is Some!9837) lt!1489777)))))

(assert (=> d!1234437 d!1234539))

(declare-fun d!1234541 () Bool)

(assert (=> d!1234541 (= (isEmpty!27179 (_1!25003 lt!1489778)) ((_ is Nil!45925) (_1!25003 lt!1489778)))))

(assert (=> d!1234437 d!1234541))

(declare-fun d!1234543 () Bool)

(declare-fun lt!1489916 () tuple2!43738)

(assert (=> d!1234543 (= (++!11716 (_1!25003 lt!1489916) (_2!25003 lt!1489916)) input!3342)))

(declare-fun sizeTr!309 (List!46049 Int) Int)

(assert (=> d!1234543 (= lt!1489916 (findLongestMatchInner!1591 (regex!7644 rBis!167) Nil!45925 0 input!3342 input!3342 (sizeTr!309 input!3342 0)))))

(declare-fun lt!1489919 () Unit!65011)

(declare-fun lt!1489912 () Unit!65011)

(assert (=> d!1234543 (= lt!1489919 lt!1489912)))

(declare-fun lt!1489914 () List!46049)

(declare-fun lt!1489918 () Int)

(assert (=> d!1234543 (= (sizeTr!309 lt!1489914 lt!1489918) (+ (size!33728 lt!1489914) lt!1489918))))

(declare-fun lemmaSizeTrEqualsSize!308 (List!46049 Int) Unit!65011)

(assert (=> d!1234543 (= lt!1489912 (lemmaSizeTrEqualsSize!308 lt!1489914 lt!1489918))))

(assert (=> d!1234543 (= lt!1489918 0)))

(assert (=> d!1234543 (= lt!1489914 Nil!45925)))

(declare-fun lt!1489913 () Unit!65011)

(declare-fun lt!1489915 () Unit!65011)

(assert (=> d!1234543 (= lt!1489913 lt!1489915)))

(declare-fun lt!1489917 () Int)

(assert (=> d!1234543 (= (sizeTr!309 input!3342 lt!1489917) (+ (size!33728 input!3342) lt!1489917))))

(assert (=> d!1234543 (= lt!1489915 (lemmaSizeTrEqualsSize!308 input!3342 lt!1489917))))

(assert (=> d!1234543 (= lt!1489917 0)))

(assert (=> d!1234543 (validRegex!5666 (regex!7644 rBis!167))))

(assert (=> d!1234543 (= (findLongestMatch!1504 (regex!7644 rBis!167) input!3342) lt!1489916)))

(declare-fun bs!596396 () Bool)

(assert (= bs!596396 d!1234543))

(declare-fun m!4772569 () Bool)

(assert (=> bs!596396 m!4772569))

(declare-fun m!4772571 () Bool)

(assert (=> bs!596396 m!4772571))

(declare-fun m!4772573 () Bool)

(assert (=> bs!596396 m!4772573))

(declare-fun m!4772575 () Bool)

(assert (=> bs!596396 m!4772575))

(declare-fun m!4772577 () Bool)

(assert (=> bs!596396 m!4772577))

(assert (=> bs!596396 m!4772569))

(declare-fun m!4772579 () Bool)

(assert (=> bs!596396 m!4772579))

(declare-fun m!4772581 () Bool)

(assert (=> bs!596396 m!4772581))

(assert (=> bs!596396 m!4771763))

(assert (=> bs!596396 m!4772347))

(declare-fun m!4772583 () Bool)

(assert (=> bs!596396 m!4772583))

(assert (=> d!1234437 d!1234543))

(assert (=> d!1234437 d!1234459))

(declare-fun d!1234545 () Bool)

(declare-fun e!2597320 () Bool)

(assert (=> d!1234545 e!2597320))

(declare-fun res!1715858 () Bool)

(assert (=> d!1234545 (=> (not res!1715858) (not e!2597320))))

(declare-fun lt!1489922 () BalanceConc!27304)

(assert (=> d!1234545 (= res!1715858 (= (list!16585 lt!1489922) p!2959))))

(declare-fun fromList!914 (List!46049) Conc!13855)

(assert (=> d!1234545 (= lt!1489922 (BalanceConc!27305 (fromList!914 p!2959)))))

(assert (=> d!1234545 (= (fromListB!2592 p!2959) lt!1489922)))

(declare-fun b!4183768 () Bool)

(assert (=> b!4183768 (= e!2597320 (isBalanced!3735 (fromList!914 p!2959)))))

(assert (= (and d!1234545 res!1715858) b!4183768))

(declare-fun m!4772585 () Bool)

(assert (=> d!1234545 m!4772585))

(declare-fun m!4772587 () Bool)

(assert (=> d!1234545 m!4772587))

(assert (=> b!4183768 m!4772587))

(assert (=> b!4183768 m!4772587))

(declare-fun m!4772589 () Bool)

(assert (=> b!4183768 m!4772589))

(assert (=> d!1234341 d!1234545))

(assert (=> b!4183314 d!1234467))

(declare-fun d!1234547 () Bool)

(assert (=> d!1234547 (= (apply!10609 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489721)))) (seqFromList!5669 (originalCharacters!8032 (_1!25001 (get!14925 lt!1489721))))) (dynLambda!19717 (toValue!10336 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489721))))) (seqFromList!5669 (originalCharacters!8032 (_1!25001 (get!14925 lt!1489721))))))))

(declare-fun b_lambda!122959 () Bool)

(assert (=> (not b_lambda!122959) (not d!1234547)))

(declare-fun t!345328 () Bool)

(declare-fun tb!250491 () Bool)

(assert (=> (and b!4183047 (= (toValue!10336 (transformation!7644 (h!51347 rules!3843))) (toValue!10336 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489721)))))) t!345328) tb!250491))

(declare-fun result!305252 () Bool)

(assert (=> tb!250491 (= result!305252 (inv!21 (dynLambda!19717 (toValue!10336 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489721))))) (seqFromList!5669 (originalCharacters!8032 (_1!25001 (get!14925 lt!1489721)))))))))

(declare-fun m!4772591 () Bool)

(assert (=> tb!250491 m!4772591))

(assert (=> d!1234547 t!345328))

(declare-fun b_and!327437 () Bool)

(assert (= b_and!327429 (and (=> t!345328 result!305252) b_and!327437)))

(declare-fun t!345330 () Bool)

(declare-fun tb!250493 () Bool)

(assert (=> (and b!4183060 (= (toValue!10336 (transformation!7644 rBis!167)) (toValue!10336 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489721)))))) t!345330) tb!250493))

(declare-fun result!305254 () Bool)

(assert (= result!305254 result!305252))

(assert (=> d!1234547 t!345330))

(declare-fun b_and!327439 () Bool)

(assert (= b_and!327431 (and (=> t!345330 result!305254) b_and!327439)))

(declare-fun tb!250495 () Bool)

(declare-fun t!345332 () Bool)

(assert (=> (and b!4183068 (= (toValue!10336 (transformation!7644 r!4142)) (toValue!10336 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489721)))))) t!345332) tb!250495))

(declare-fun result!305256 () Bool)

(assert (= result!305256 result!305252))

(assert (=> d!1234547 t!345332))

(declare-fun b_and!327441 () Bool)

(assert (= b_and!327433 (and (=> t!345332 result!305256) b_and!327441)))

(declare-fun tb!250497 () Bool)

(declare-fun t!345334 () Bool)

(assert (=> (and b!4183600 (= (toValue!10336 (transformation!7644 (h!51347 (t!345220 rules!3843)))) (toValue!10336 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489721)))))) t!345334) tb!250497))

(declare-fun result!305258 () Bool)

(assert (= result!305258 result!305252))

(assert (=> d!1234547 t!345334))

(declare-fun b_and!327443 () Bool)

(assert (= b_and!327435 (and (=> t!345334 result!305258) b_and!327443)))

(assert (=> d!1234547 m!4772091))

(declare-fun m!4772593 () Bool)

(assert (=> d!1234547 m!4772593))

(assert (=> b!4183314 d!1234547))

(declare-fun d!1234549 () Bool)

(assert (=> d!1234549 (= (seqFromList!5669 (originalCharacters!8032 (_1!25001 (get!14925 lt!1489721)))) (fromListB!2592 (originalCharacters!8032 (_1!25001 (get!14925 lt!1489721)))))))

(declare-fun bs!596397 () Bool)

(assert (= bs!596397 d!1234549))

(declare-fun m!4772595 () Bool)

(assert (=> bs!596397 m!4772595))

(assert (=> b!4183314 d!1234549))

(declare-fun b!4183769 () Bool)

(declare-fun res!1715864 () Bool)

(declare-fun e!2597323 () Bool)

(assert (=> b!4183769 (=> (not res!1715864) (not e!2597323))))

(declare-fun call!291838 () Bool)

(assert (=> b!4183769 (= res!1715864 (not call!291838))))

(declare-fun b!4183770 () Bool)

(declare-fun e!2597328 () Bool)

(declare-fun e!2597326 () Bool)

(assert (=> b!4183770 (= e!2597328 e!2597326)))

(declare-fun res!1715863 () Bool)

(assert (=> b!4183770 (=> (not res!1715863) (not e!2597326))))

(declare-fun lt!1489923 () Bool)

(assert (=> b!4183770 (= res!1715863 (not lt!1489923))))

(declare-fun b!4183771 () Bool)

(declare-fun res!1715861 () Bool)

(assert (=> b!4183771 (=> res!1715861 e!2597328)))

(assert (=> b!4183771 (= res!1715861 (not ((_ is ElementMatch!12549) (regex!7644 rBis!167))))))

(declare-fun e!2597325 () Bool)

(assert (=> b!4183771 (= e!2597325 e!2597328)))

(declare-fun b!4183772 () Bool)

(declare-fun e!2597327 () Bool)

(assert (=> b!4183772 (= e!2597327 (matchR!6288 (derivativeStep!3791 (regex!7644 rBis!167) (head!8878 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489777)))))) (tail!6725 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489777)))))))))

(declare-fun b!4183773 () Bool)

(declare-fun res!1715866 () Bool)

(declare-fun e!2597324 () Bool)

(assert (=> b!4183773 (=> res!1715866 e!2597324)))

(assert (=> b!4183773 (= res!1715866 (not (isEmpty!27179 (tail!6725 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489777))))))))))

(declare-fun b!4183774 () Bool)

(declare-fun res!1715860 () Bool)

(assert (=> b!4183774 (=> res!1715860 e!2597328)))

(assert (=> b!4183774 (= res!1715860 e!2597323)))

(declare-fun res!1715862 () Bool)

(assert (=> b!4183774 (=> (not res!1715862) (not e!2597323))))

(assert (=> b!4183774 (= res!1715862 lt!1489923)))

(declare-fun b!4183775 () Bool)

(assert (=> b!4183775 (= e!2597324 (not (= (head!8878 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489777))))) (c!714183 (regex!7644 rBis!167)))))))

(declare-fun b!4183776 () Bool)

(declare-fun e!2597322 () Bool)

(assert (=> b!4183776 (= e!2597322 (= lt!1489923 call!291838))))

(declare-fun d!1234551 () Bool)

(assert (=> d!1234551 e!2597322))

(declare-fun c!714306 () Bool)

(assert (=> d!1234551 (= c!714306 ((_ is EmptyExpr!12549) (regex!7644 rBis!167)))))

(assert (=> d!1234551 (= lt!1489923 e!2597327)))

(declare-fun c!714308 () Bool)

(assert (=> d!1234551 (= c!714308 (isEmpty!27179 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489777))))))))

(assert (=> d!1234551 (validRegex!5666 (regex!7644 rBis!167))))

(assert (=> d!1234551 (= (matchR!6288 (regex!7644 rBis!167) (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489777))))) lt!1489923)))

(declare-fun b!4183777 () Bool)

(assert (=> b!4183777 (= e!2597326 e!2597324)))

(declare-fun res!1715859 () Bool)

(assert (=> b!4183777 (=> res!1715859 e!2597324)))

(assert (=> b!4183777 (= res!1715859 call!291838)))

(declare-fun b!4183778 () Bool)

(declare-fun res!1715865 () Bool)

(assert (=> b!4183778 (=> (not res!1715865) (not e!2597323))))

(assert (=> b!4183778 (= res!1715865 (isEmpty!27179 (tail!6725 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489777)))))))))

(declare-fun b!4183779 () Bool)

(assert (=> b!4183779 (= e!2597325 (not lt!1489923))))

(declare-fun b!4183780 () Bool)

(assert (=> b!4183780 (= e!2597327 (nullable!4401 (regex!7644 rBis!167)))))

(declare-fun bm!291833 () Bool)

(assert (=> bm!291833 (= call!291838 (isEmpty!27179 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489777))))))))

(declare-fun b!4183781 () Bool)

(assert (=> b!4183781 (= e!2597323 (= (head!8878 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489777))))) (c!714183 (regex!7644 rBis!167))))))

(declare-fun b!4183782 () Bool)

(assert (=> b!4183782 (= e!2597322 e!2597325)))

(declare-fun c!714307 () Bool)

(assert (=> b!4183782 (= c!714307 ((_ is EmptyLang!12549) (regex!7644 rBis!167)))))

(assert (= (and d!1234551 c!714308) b!4183780))

(assert (= (and d!1234551 (not c!714308)) b!4183772))

(assert (= (and d!1234551 c!714306) b!4183776))

(assert (= (and d!1234551 (not c!714306)) b!4183782))

(assert (= (and b!4183782 c!714307) b!4183779))

(assert (= (and b!4183782 (not c!714307)) b!4183771))

(assert (= (and b!4183771 (not res!1715861)) b!4183774))

(assert (= (and b!4183774 res!1715862) b!4183769))

(assert (= (and b!4183769 res!1715864) b!4183778))

(assert (= (and b!4183778 res!1715865) b!4183781))

(assert (= (and b!4183774 (not res!1715860)) b!4183770))

(assert (= (and b!4183770 res!1715863) b!4183777))

(assert (= (and b!4183777 (not res!1715859)) b!4183773))

(assert (= (and b!4183773 (not res!1715866)) b!4183775))

(assert (= (or b!4183776 b!4183769 b!4183777) bm!291833))

(assert (=> bm!291833 m!4772275))

(declare-fun m!4772597 () Bool)

(assert (=> bm!291833 m!4772597))

(assert (=> b!4183778 m!4772275))

(declare-fun m!4772599 () Bool)

(assert (=> b!4183778 m!4772599))

(assert (=> b!4183778 m!4772599))

(declare-fun m!4772601 () Bool)

(assert (=> b!4183778 m!4772601))

(assert (=> d!1234551 m!4772275))

(assert (=> d!1234551 m!4772597))

(assert (=> d!1234551 m!4772347))

(assert (=> b!4183773 m!4772275))

(assert (=> b!4183773 m!4772599))

(assert (=> b!4183773 m!4772599))

(assert (=> b!4183773 m!4772601))

(assert (=> b!4183781 m!4772275))

(declare-fun m!4772603 () Bool)

(assert (=> b!4183781 m!4772603))

(assert (=> b!4183775 m!4772275))

(assert (=> b!4183775 m!4772603))

(assert (=> b!4183772 m!4772275))

(assert (=> b!4183772 m!4772603))

(assert (=> b!4183772 m!4772603))

(declare-fun m!4772605 () Bool)

(assert (=> b!4183772 m!4772605))

(assert (=> b!4183772 m!4772275))

(assert (=> b!4183772 m!4772599))

(assert (=> b!4183772 m!4772605))

(assert (=> b!4183772 m!4772599))

(declare-fun m!4772607 () Bool)

(assert (=> b!4183772 m!4772607))

(assert (=> b!4183780 m!4772349))

(assert (=> b!4183475 d!1234551))

(declare-fun d!1234555 () Bool)

(assert (=> d!1234555 (= (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489777)))) (list!16587 (c!714182 (charsOf!5079 (_1!25001 (get!14925 lt!1489777))))))))

(declare-fun bs!596398 () Bool)

(assert (= bs!596398 d!1234555))

(declare-fun m!4772609 () Bool)

(assert (=> bs!596398 m!4772609))

(assert (=> b!4183475 d!1234555))

(declare-fun d!1234557 () Bool)

(declare-fun lt!1489925 () BalanceConc!27304)

(assert (=> d!1234557 (= (list!16585 lt!1489925) (originalCharacters!8032 (_1!25001 (get!14925 lt!1489777))))))

(assert (=> d!1234557 (= lt!1489925 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489777))))) (value!238386 (_1!25001 (get!14925 lt!1489777)))))))

(assert (=> d!1234557 (= (charsOf!5079 (_1!25001 (get!14925 lt!1489777))) lt!1489925)))

(declare-fun b_lambda!122961 () Bool)

(assert (=> (not b_lambda!122961) (not d!1234557)))

(declare-fun t!345336 () Bool)

(declare-fun tb!250499 () Bool)

(assert (=> (and b!4183047 (= (toChars!10195 (transformation!7644 (h!51347 rules!3843))) (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489777)))))) t!345336) tb!250499))

(declare-fun b!4183797 () Bool)

(declare-fun e!2597336 () Bool)

(declare-fun tp!1278590 () Bool)

(assert (=> b!4183797 (= e!2597336 (and (inv!60468 (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489777))))) (value!238386 (_1!25001 (get!14925 lt!1489777)))))) tp!1278590))))

(declare-fun result!305260 () Bool)

(assert (=> tb!250499 (= result!305260 (and (inv!60469 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489777))))) (value!238386 (_1!25001 (get!14925 lt!1489777))))) e!2597336))))

(assert (= tb!250499 b!4183797))

(declare-fun m!4772611 () Bool)

(assert (=> b!4183797 m!4772611))

(declare-fun m!4772613 () Bool)

(assert (=> tb!250499 m!4772613))

(assert (=> d!1234557 t!345336))

(declare-fun b_and!327445 () Bool)

(assert (= b_and!327421 (and (=> t!345336 result!305260) b_and!327445)))

(declare-fun tb!250501 () Bool)

(declare-fun t!345338 () Bool)

(assert (=> (and b!4183060 (= (toChars!10195 (transformation!7644 rBis!167)) (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489777)))))) t!345338) tb!250501))

(declare-fun result!305262 () Bool)

(assert (= result!305262 result!305260))

(assert (=> d!1234557 t!345338))

(declare-fun b_and!327447 () Bool)

(assert (= b_and!327423 (and (=> t!345338 result!305262) b_and!327447)))

(declare-fun tb!250503 () Bool)

(declare-fun t!345340 () Bool)

(assert (=> (and b!4183068 (= (toChars!10195 (transformation!7644 r!4142)) (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489777)))))) t!345340) tb!250503))

(declare-fun result!305264 () Bool)

(assert (= result!305264 result!305260))

(assert (=> d!1234557 t!345340))

(declare-fun b_and!327449 () Bool)

(assert (= b_and!327425 (and (=> t!345340 result!305264) b_and!327449)))

(declare-fun tb!250505 () Bool)

(declare-fun t!345342 () Bool)

(assert (=> (and b!4183600 (= (toChars!10195 (transformation!7644 (h!51347 (t!345220 rules!3843)))) (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489777)))))) t!345342) tb!250505))

(declare-fun result!305266 () Bool)

(assert (= result!305266 result!305260))

(assert (=> d!1234557 t!345342))

(declare-fun b_and!327451 () Bool)

(assert (= b_and!327427 (and (=> t!345342 result!305266) b_and!327451)))

(declare-fun m!4772615 () Bool)

(assert (=> d!1234557 m!4772615))

(declare-fun m!4772617 () Bool)

(assert (=> d!1234557 m!4772617))

(assert (=> b!4183475 d!1234557))

(assert (=> b!4183475 d!1234503))

(declare-fun d!1234559 () Bool)

(assert (=> d!1234559 (= (nullable!4401 (regex!7644 rBis!167)) (nullableFct!1215 (regex!7644 rBis!167)))))

(declare-fun bs!596399 () Bool)

(assert (= bs!596399 d!1234559))

(declare-fun m!4772619 () Bool)

(assert (=> bs!596399 m!4772619))

(assert (=> b!4183565 d!1234559))

(declare-fun d!1234561 () Bool)

(assert (=> d!1234561 (= (list!16585 (dynLambda!19716 (toChars!10195 (transformation!7644 r!4142)) (dynLambda!19717 (toValue!10336 (transformation!7644 r!4142)) lt!1489628))) (list!16587 (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 r!4142)) (dynLambda!19717 (toValue!10336 (transformation!7644 r!4142)) lt!1489628)))))))

(declare-fun bs!596400 () Bool)

(assert (= bs!596400 d!1234561))

(declare-fun m!4772621 () Bool)

(assert (=> bs!596400 m!4772621))

(assert (=> d!1234393 d!1234561))

(declare-fun d!1234563 () Bool)

(assert (=> d!1234563 (= (list!16585 lt!1489628) (list!16587 (c!714182 lt!1489628)))))

(declare-fun bs!596401 () Bool)

(assert (= bs!596401 d!1234563))

(declare-fun m!4772625 () Bool)

(assert (=> bs!596401 m!4772625))

(assert (=> d!1234393 d!1234563))

(declare-fun d!1234565 () Bool)

(declare-fun dynLambda!19727 (Int BalanceConc!27304) Bool)

(assert (=> d!1234565 (dynLambda!19727 lambda!129397 lt!1489628)))

(declare-fun lt!1489928 () Unit!65011)

(declare-fun choose!25610 (Int BalanceConc!27304) Unit!65011)

(assert (=> d!1234565 (= lt!1489928 (choose!25610 lambda!129397 lt!1489628))))

(declare-fun Forall!1565 (Int) Bool)

(assert (=> d!1234565 (Forall!1565 lambda!129397)))

(assert (=> d!1234565 (= (ForallOf!1043 lambda!129397 lt!1489628) lt!1489928)))

(declare-fun b_lambda!122963 () Bool)

(assert (=> (not b_lambda!122963) (not d!1234565)))

(declare-fun bs!596402 () Bool)

(assert (= bs!596402 d!1234565))

(declare-fun m!4772635 () Bool)

(assert (=> bs!596402 m!4772635))

(declare-fun m!4772637 () Bool)

(assert (=> bs!596402 m!4772637))

(declare-fun m!4772639 () Bool)

(assert (=> bs!596402 m!4772639))

(assert (=> d!1234393 d!1234565))

(declare-fun d!1234569 () Bool)

(assert (=> d!1234569 (= (isEmpty!27179 p!2959) ((_ is Nil!45925) p!2959))))

(assert (=> d!1234457 d!1234569))

(assert (=> d!1234457 d!1234447))

(declare-fun b!4183798 () Bool)

(declare-fun res!1715880 () Bool)

(declare-fun e!2597338 () Bool)

(assert (=> b!4183798 (=> (not res!1715880) (not e!2597338))))

(declare-fun call!291840 () Bool)

(assert (=> b!4183798 (= res!1715880 (not call!291840))))

(declare-fun b!4183799 () Bool)

(declare-fun e!2597343 () Bool)

(declare-fun e!2597341 () Bool)

(assert (=> b!4183799 (= e!2597343 e!2597341)))

(declare-fun res!1715879 () Bool)

(assert (=> b!4183799 (=> (not res!1715879) (not e!2597341))))

(declare-fun lt!1489929 () Bool)

(assert (=> b!4183799 (= res!1715879 (not lt!1489929))))

(declare-fun b!4183800 () Bool)

(declare-fun res!1715877 () Bool)

(assert (=> b!4183800 (=> res!1715877 e!2597343)))

(assert (=> b!4183800 (= res!1715877 (not ((_ is ElementMatch!12549) (regex!7644 rBis!167))))))

(declare-fun e!2597340 () Bool)

(assert (=> b!4183800 (= e!2597340 e!2597343)))

(declare-fun b!4183801 () Bool)

(declare-fun e!2597342 () Bool)

(assert (=> b!4183801 (= e!2597342 (matchR!6288 (derivativeStep!3791 (regex!7644 rBis!167) (head!8878 (_1!25003 (findLongestMatchInner!1591 (regex!7644 rBis!167) Nil!45925 (size!33728 Nil!45925) input!3342 input!3342 (size!33728 input!3342))))) (tail!6725 (_1!25003 (findLongestMatchInner!1591 (regex!7644 rBis!167) Nil!45925 (size!33728 Nil!45925) input!3342 input!3342 (size!33728 input!3342))))))))

(declare-fun b!4183802 () Bool)

(declare-fun res!1715882 () Bool)

(declare-fun e!2597339 () Bool)

(assert (=> b!4183802 (=> res!1715882 e!2597339)))

(assert (=> b!4183802 (= res!1715882 (not (isEmpty!27179 (tail!6725 (_1!25003 (findLongestMatchInner!1591 (regex!7644 rBis!167) Nil!45925 (size!33728 Nil!45925) input!3342 input!3342 (size!33728 input!3342)))))))))

(declare-fun b!4183803 () Bool)

(declare-fun res!1715876 () Bool)

(assert (=> b!4183803 (=> res!1715876 e!2597343)))

(assert (=> b!4183803 (= res!1715876 e!2597338)))

(declare-fun res!1715878 () Bool)

(assert (=> b!4183803 (=> (not res!1715878) (not e!2597338))))

(assert (=> b!4183803 (= res!1715878 lt!1489929)))

(declare-fun b!4183804 () Bool)

(assert (=> b!4183804 (= e!2597339 (not (= (head!8878 (_1!25003 (findLongestMatchInner!1591 (regex!7644 rBis!167) Nil!45925 (size!33728 Nil!45925) input!3342 input!3342 (size!33728 input!3342)))) (c!714183 (regex!7644 rBis!167)))))))

(declare-fun b!4183805 () Bool)

(declare-fun e!2597337 () Bool)

(assert (=> b!4183805 (= e!2597337 (= lt!1489929 call!291840))))

(declare-fun d!1234571 () Bool)

(assert (=> d!1234571 e!2597337))

(declare-fun c!714312 () Bool)

(assert (=> d!1234571 (= c!714312 ((_ is EmptyExpr!12549) (regex!7644 rBis!167)))))

(assert (=> d!1234571 (= lt!1489929 e!2597342)))

(declare-fun c!714314 () Bool)

(assert (=> d!1234571 (= c!714314 (isEmpty!27179 (_1!25003 (findLongestMatchInner!1591 (regex!7644 rBis!167) Nil!45925 (size!33728 Nil!45925) input!3342 input!3342 (size!33728 input!3342)))))))

(assert (=> d!1234571 (validRegex!5666 (regex!7644 rBis!167))))

(assert (=> d!1234571 (= (matchR!6288 (regex!7644 rBis!167) (_1!25003 (findLongestMatchInner!1591 (regex!7644 rBis!167) Nil!45925 (size!33728 Nil!45925) input!3342 input!3342 (size!33728 input!3342)))) lt!1489929)))

(declare-fun b!4183806 () Bool)

(assert (=> b!4183806 (= e!2597341 e!2597339)))

(declare-fun res!1715875 () Bool)

(assert (=> b!4183806 (=> res!1715875 e!2597339)))

(assert (=> b!4183806 (= res!1715875 call!291840)))

(declare-fun b!4183807 () Bool)

(declare-fun res!1715881 () Bool)

(assert (=> b!4183807 (=> (not res!1715881) (not e!2597338))))

(assert (=> b!4183807 (= res!1715881 (isEmpty!27179 (tail!6725 (_1!25003 (findLongestMatchInner!1591 (regex!7644 rBis!167) Nil!45925 (size!33728 Nil!45925) input!3342 input!3342 (size!33728 input!3342))))))))

(declare-fun b!4183808 () Bool)

(assert (=> b!4183808 (= e!2597340 (not lt!1489929))))

(declare-fun b!4183809 () Bool)

(assert (=> b!4183809 (= e!2597342 (nullable!4401 (regex!7644 rBis!167)))))

(declare-fun bm!291835 () Bool)

(assert (=> bm!291835 (= call!291840 (isEmpty!27179 (_1!25003 (findLongestMatchInner!1591 (regex!7644 rBis!167) Nil!45925 (size!33728 Nil!45925) input!3342 input!3342 (size!33728 input!3342)))))))

(declare-fun b!4183810 () Bool)

(assert (=> b!4183810 (= e!2597338 (= (head!8878 (_1!25003 (findLongestMatchInner!1591 (regex!7644 rBis!167) Nil!45925 (size!33728 Nil!45925) input!3342 input!3342 (size!33728 input!3342)))) (c!714183 (regex!7644 rBis!167))))))

(declare-fun b!4183811 () Bool)

(assert (=> b!4183811 (= e!2597337 e!2597340)))

(declare-fun c!714313 () Bool)

(assert (=> b!4183811 (= c!714313 ((_ is EmptyLang!12549) (regex!7644 rBis!167)))))

(assert (= (and d!1234571 c!714314) b!4183809))

(assert (= (and d!1234571 (not c!714314)) b!4183801))

(assert (= (and d!1234571 c!714312) b!4183805))

(assert (= (and d!1234571 (not c!714312)) b!4183811))

(assert (= (and b!4183811 c!714313) b!4183808))

(assert (= (and b!4183811 (not c!714313)) b!4183800))

(assert (= (and b!4183800 (not res!1715877)) b!4183803))

(assert (= (and b!4183803 res!1715878) b!4183798))

(assert (= (and b!4183798 res!1715880) b!4183807))

(assert (= (and b!4183807 res!1715881) b!4183810))

(assert (= (and b!4183803 (not res!1715876)) b!4183799))

(assert (= (and b!4183799 res!1715879) b!4183806))

(assert (= (and b!4183806 (not res!1715875)) b!4183802))

(assert (= (and b!4183802 (not res!1715882)) b!4183804))

(assert (= (or b!4183805 b!4183798 b!4183806) bm!291835))

(assert (=> bm!291835 m!4772283))

(declare-fun m!4772641 () Bool)

(assert (=> b!4183807 m!4772641))

(assert (=> b!4183807 m!4772641))

(declare-fun m!4772643 () Bool)

(assert (=> b!4183807 m!4772643))

(assert (=> d!1234571 m!4772283))

(assert (=> d!1234571 m!4772347))

(assert (=> b!4183802 m!4772641))

(assert (=> b!4183802 m!4772641))

(assert (=> b!4183802 m!4772643))

(declare-fun m!4772645 () Bool)

(assert (=> b!4183810 m!4772645))

(assert (=> b!4183804 m!4772645))

(assert (=> b!4183801 m!4772645))

(assert (=> b!4183801 m!4772645))

(declare-fun m!4772647 () Bool)

(assert (=> b!4183801 m!4772647))

(assert (=> b!4183801 m!4772641))

(assert (=> b!4183801 m!4772647))

(assert (=> b!4183801 m!4772641))

(declare-fun m!4772649 () Bool)

(assert (=> b!4183801 m!4772649))

(assert (=> b!4183809 m!4772349))

(assert (=> b!4183479 d!1234571))

(declare-fun b!4183812 () Bool)

(declare-fun e!2597351 () tuple2!43738)

(assert (=> b!4183812 (= e!2597351 (tuple2!43739 Nil!45925 input!3342))))

(declare-fun bm!291836 () Bool)

(declare-fun call!291842 () Regex!12549)

(declare-fun call!291844 () List!46049)

(declare-fun call!291846 () tuple2!43738)

(declare-fun lt!1489953 () List!46049)

(assert (=> bm!291836 (= call!291846 (findLongestMatchInner!1591 call!291842 lt!1489953 (+ (size!33728 Nil!45925) 1) call!291844 input!3342 (size!33728 input!3342)))))

(declare-fun b!4183813 () Bool)

(declare-fun e!2597349 () tuple2!43738)

(assert (=> b!4183813 (= e!2597349 (tuple2!43739 Nil!45925 Nil!45925))))

(declare-fun b!4183814 () Bool)

(declare-fun c!714315 () Bool)

(declare-fun call!291841 () Bool)

(assert (=> b!4183814 (= c!714315 call!291841)))

(declare-fun lt!1489949 () Unit!65011)

(declare-fun lt!1489934 () Unit!65011)

(assert (=> b!4183814 (= lt!1489949 lt!1489934)))

(declare-fun lt!1489957 () C!25288)

(declare-fun lt!1489955 () List!46049)

(assert (=> b!4183814 (= (++!11716 (++!11716 Nil!45925 (Cons!45925 lt!1489957 Nil!45925)) lt!1489955) input!3342)))

(assert (=> b!4183814 (= lt!1489934 (lemmaMoveElementToOtherListKeepsConcatEq!1290 Nil!45925 lt!1489957 lt!1489955 input!3342))))

(assert (=> b!4183814 (= lt!1489955 (tail!6725 input!3342))))

(assert (=> b!4183814 (= lt!1489957 (head!8878 input!3342))))

(declare-fun lt!1489930 () Unit!65011)

(declare-fun lt!1489954 () Unit!65011)

(assert (=> b!4183814 (= lt!1489930 lt!1489954)))

(assert (=> b!4183814 (isPrefix!4501 (++!11716 Nil!45925 (Cons!45925 (head!8878 (getSuffix!2794 input!3342 Nil!45925)) Nil!45925)) input!3342)))

(assert (=> b!4183814 (= lt!1489954 (lemmaAddHeadSuffixToPrefixStillPrefix!672 Nil!45925 input!3342))))

(declare-fun lt!1489947 () Unit!65011)

(declare-fun lt!1489951 () Unit!65011)

(assert (=> b!4183814 (= lt!1489947 lt!1489951)))

(assert (=> b!4183814 (= lt!1489951 (lemmaAddHeadSuffixToPrefixStillPrefix!672 Nil!45925 input!3342))))

(assert (=> b!4183814 (= lt!1489953 (++!11716 Nil!45925 (Cons!45925 (head!8878 input!3342) Nil!45925)))))

(declare-fun lt!1489952 () Unit!65011)

(declare-fun e!2597350 () Unit!65011)

(assert (=> b!4183814 (= lt!1489952 e!2597350)))

(declare-fun c!714318 () Bool)

(assert (=> b!4183814 (= c!714318 (= (size!33728 Nil!45925) (size!33728 input!3342)))))

(declare-fun lt!1489939 () Unit!65011)

(declare-fun lt!1489956 () Unit!65011)

(assert (=> b!4183814 (= lt!1489939 lt!1489956)))

(assert (=> b!4183814 (<= (size!33728 Nil!45925) (size!33728 input!3342))))

(assert (=> b!4183814 (= lt!1489956 (lemmaIsPrefixThenSmallerEqSize!531 Nil!45925 input!3342))))

(declare-fun e!2597344 () tuple2!43738)

(declare-fun e!2597348 () tuple2!43738)

(assert (=> b!4183814 (= e!2597344 e!2597348)))

(declare-fun b!4183815 () Bool)

(declare-fun e!2597347 () tuple2!43738)

(assert (=> b!4183815 (= e!2597348 e!2597347)))

(declare-fun lt!1489935 () tuple2!43738)

(assert (=> b!4183815 (= lt!1489935 call!291846)))

(declare-fun c!714320 () Bool)

(assert (=> b!4183815 (= c!714320 (isEmpty!27179 (_1!25003 lt!1489935)))))

(declare-fun b!4183816 () Bool)

(assert (=> b!4183816 (= e!2597347 (tuple2!43739 Nil!45925 input!3342))))

(declare-fun bm!291838 () Bool)

(declare-fun call!291848 () Unit!65011)

(assert (=> bm!291838 (= call!291848 (lemmaIsPrefixRefl!2930 input!3342 input!3342))))

(declare-fun b!4183817 () Bool)

(assert (=> b!4183817 (= e!2597348 call!291846)))

(declare-fun bm!291839 () Bool)

(assert (=> bm!291839 (= call!291844 (tail!6725 input!3342))))

(declare-fun b!4183818 () Bool)

(declare-fun e!2597345 () Bool)

(declare-fun lt!1489941 () tuple2!43738)

(assert (=> b!4183818 (= e!2597345 (>= (size!33728 (_1!25003 lt!1489941)) (size!33728 Nil!45925)))))

(declare-fun b!4183819 () Bool)

(assert (=> b!4183819 (= e!2597349 (tuple2!43739 Nil!45925 input!3342))))

(declare-fun b!4183820 () Bool)

(declare-fun e!2597346 () Bool)

(assert (=> b!4183820 (= e!2597346 e!2597345)))

(declare-fun res!1715883 () Bool)

(assert (=> b!4183820 (=> res!1715883 e!2597345)))

(assert (=> b!4183820 (= res!1715883 (isEmpty!27179 (_1!25003 lt!1489941)))))

(declare-fun b!4183821 () Bool)

(declare-fun Unit!65016 () Unit!65011)

(assert (=> b!4183821 (= e!2597350 Unit!65016)))

(declare-fun lt!1489932 () Unit!65011)

(assert (=> b!4183821 (= lt!1489932 call!291848)))

(declare-fun call!291847 () Bool)

(assert (=> b!4183821 call!291847))

(declare-fun lt!1489943 () Unit!65011)

(assert (=> b!4183821 (= lt!1489943 lt!1489932)))

(declare-fun lt!1489931 () Unit!65011)

(declare-fun call!291845 () Unit!65011)

(assert (=> b!4183821 (= lt!1489931 call!291845)))

(assert (=> b!4183821 (= input!3342 Nil!45925)))

(declare-fun lt!1489944 () Unit!65011)

(assert (=> b!4183821 (= lt!1489944 lt!1489931)))

(assert (=> b!4183821 false))

(declare-fun bm!291840 () Bool)

(assert (=> bm!291840 (= call!291845 (lemmaIsPrefixSameLengthThenSameList!998 input!3342 Nil!45925 input!3342))))

(declare-fun bm!291841 () Bool)

(declare-fun call!291843 () C!25288)

(assert (=> bm!291841 (= call!291842 (derivativeStep!3791 (regex!7644 rBis!167) call!291843))))

(declare-fun bm!291842 () Bool)

(assert (=> bm!291842 (= call!291847 (isPrefix!4501 input!3342 input!3342))))

(declare-fun b!4183822 () Bool)

(assert (=> b!4183822 (= e!2597351 e!2597344)))

(declare-fun c!714317 () Bool)

(assert (=> b!4183822 (= c!714317 (= (size!33728 Nil!45925) (size!33728 input!3342)))))

(declare-fun d!1234573 () Bool)

(assert (=> d!1234573 e!2597346))

(declare-fun res!1715884 () Bool)

(assert (=> d!1234573 (=> (not res!1715884) (not e!2597346))))

(assert (=> d!1234573 (= res!1715884 (= (++!11716 (_1!25003 lt!1489941) (_2!25003 lt!1489941)) input!3342))))

(assert (=> d!1234573 (= lt!1489941 e!2597351)))

(declare-fun c!714319 () Bool)

(assert (=> d!1234573 (= c!714319 (lostCause!1046 (regex!7644 rBis!167)))))

(declare-fun lt!1489942 () Unit!65011)

(declare-fun Unit!65017 () Unit!65011)

(assert (=> d!1234573 (= lt!1489942 Unit!65017)))

(assert (=> d!1234573 (= (getSuffix!2794 input!3342 Nil!45925) input!3342)))

(declare-fun lt!1489933 () Unit!65011)

(declare-fun lt!1489946 () Unit!65011)

(assert (=> d!1234573 (= lt!1489933 lt!1489946)))

(declare-fun lt!1489950 () List!46049)

(assert (=> d!1234573 (= input!3342 lt!1489950)))

(assert (=> d!1234573 (= lt!1489946 (lemmaSamePrefixThenSameSuffix!2263 Nil!45925 input!3342 Nil!45925 lt!1489950 input!3342))))

(assert (=> d!1234573 (= lt!1489950 (getSuffix!2794 input!3342 Nil!45925))))

(declare-fun lt!1489936 () Unit!65011)

(declare-fun lt!1489938 () Unit!65011)

(assert (=> d!1234573 (= lt!1489936 lt!1489938)))

(assert (=> d!1234573 (isPrefix!4501 Nil!45925 (++!11716 Nil!45925 input!3342))))

(assert (=> d!1234573 (= lt!1489938 (lemmaConcatTwoListThenFirstIsPrefix!2998 Nil!45925 input!3342))))

(assert (=> d!1234573 (validRegex!5666 (regex!7644 rBis!167))))

(assert (=> d!1234573 (= (findLongestMatchInner!1591 (regex!7644 rBis!167) Nil!45925 (size!33728 Nil!45925) input!3342 input!3342 (size!33728 input!3342)) lt!1489941)))

(declare-fun bm!291837 () Bool)

(assert (=> bm!291837 (= call!291841 (nullable!4401 (regex!7644 rBis!167)))))

(declare-fun b!4183823 () Bool)

(assert (=> b!4183823 (= e!2597347 lt!1489935)))

(declare-fun b!4183824 () Bool)

(declare-fun c!714316 () Bool)

(assert (=> b!4183824 (= c!714316 call!291841)))

(declare-fun lt!1489937 () Unit!65011)

(declare-fun lt!1489945 () Unit!65011)

(assert (=> b!4183824 (= lt!1489937 lt!1489945)))

(assert (=> b!4183824 (= input!3342 Nil!45925)))

(assert (=> b!4183824 (= lt!1489945 call!291845)))

(declare-fun lt!1489948 () Unit!65011)

(declare-fun lt!1489940 () Unit!65011)

(assert (=> b!4183824 (= lt!1489948 lt!1489940)))

(assert (=> b!4183824 call!291847))

(assert (=> b!4183824 (= lt!1489940 call!291848)))

(assert (=> b!4183824 (= e!2597344 e!2597349)))

(declare-fun bm!291843 () Bool)

(assert (=> bm!291843 (= call!291843 (head!8878 input!3342))))

(declare-fun b!4183825 () Bool)

(declare-fun Unit!65018 () Unit!65011)

(assert (=> b!4183825 (= e!2597350 Unit!65018)))

(assert (= (and d!1234573 c!714319) b!4183812))

(assert (= (and d!1234573 (not c!714319)) b!4183822))

(assert (= (and b!4183822 c!714317) b!4183824))

(assert (= (and b!4183822 (not c!714317)) b!4183814))

(assert (= (and b!4183824 c!714316) b!4183813))

(assert (= (and b!4183824 (not c!714316)) b!4183819))

(assert (= (and b!4183814 c!714318) b!4183821))

(assert (= (and b!4183814 (not c!714318)) b!4183825))

(assert (= (and b!4183814 c!714315) b!4183815))

(assert (= (and b!4183814 (not c!714315)) b!4183817))

(assert (= (and b!4183815 c!714320) b!4183816))

(assert (= (and b!4183815 (not c!714320)) b!4183823))

(assert (= (or b!4183815 b!4183817) bm!291839))

(assert (= (or b!4183815 b!4183817) bm!291843))

(assert (= (or b!4183815 b!4183817) bm!291841))

(assert (= (or b!4183815 b!4183817) bm!291836))

(assert (= (or b!4183824 b!4183821) bm!291838))

(assert (= (or b!4183824 b!4183814) bm!291837))

(assert (= (or b!4183824 b!4183821) bm!291840))

(assert (= (or b!4183824 b!4183821) bm!291842))

(assert (= (and d!1234573 res!1715884) b!4183820))

(assert (= (and b!4183820 (not res!1715883)) b!4183818))

(assert (=> b!4183814 m!4771891))

(assert (=> b!4183814 m!4772461))

(assert (=> b!4183814 m!4771887))

(assert (=> b!4183814 m!4771763))

(assert (=> b!4183814 m!4772463))

(assert (=> b!4183814 m!4772073))

(declare-fun m!4772651 () Bool)

(assert (=> b!4183814 m!4772651))

(declare-fun m!4772653 () Bool)

(assert (=> b!4183814 m!4772653))

(assert (=> b!4183814 m!4772651))

(declare-fun m!4772655 () Bool)

(assert (=> b!4183814 m!4772655))

(assert (=> b!4183814 m!4772471))

(assert (=> b!4183814 m!4772473))

(assert (=> b!4183814 m!4772463))

(assert (=> b!4183814 m!4772475))

(assert (=> b!4183814 m!4772477))

(assert (=> b!4183814 m!4772477))

(assert (=> b!4183814 m!4772479))

(assert (=> bm!291838 m!4771793))

(assert (=> bm!291836 m!4771763))

(declare-fun m!4772657 () Bool)

(assert (=> bm!291836 m!4772657))

(declare-fun m!4772659 () Bool)

(assert (=> b!4183818 m!4772659))

(assert (=> b!4183818 m!4772073))

(declare-fun m!4772661 () Bool)

(assert (=> d!1234573 m!4772661))

(assert (=> d!1234573 m!4772487))

(assert (=> d!1234573 m!4772489))

(assert (=> d!1234573 m!4772347))

(assert (=> d!1234573 m!4772477))

(assert (=> d!1234573 m!4772491))

(assert (=> d!1234573 m!4772487))

(declare-fun m!4772663 () Bool)

(assert (=> d!1234573 m!4772663))

(declare-fun m!4772665 () Bool)

(assert (=> d!1234573 m!4772665))

(assert (=> bm!291843 m!4771891))

(declare-fun m!4772667 () Bool)

(assert (=> b!4183815 m!4772667))

(assert (=> bm!291839 m!4771887))

(assert (=> bm!291840 m!4772499))

(declare-fun m!4772669 () Bool)

(assert (=> bm!291841 m!4772669))

(assert (=> bm!291837 m!4772349))

(assert (=> bm!291842 m!4771789))

(declare-fun m!4772671 () Bool)

(assert (=> b!4183820 m!4772671))

(assert (=> b!4183479 d!1234573))

(assert (=> b!4183479 d!1234519))

(assert (=> b!4183479 d!1234443))

(declare-fun d!1234575 () Bool)

(declare-fun lt!1489958 () Int)

(assert (=> d!1234575 (>= lt!1489958 0)))

(declare-fun e!2597352 () Int)

(assert (=> d!1234575 (= lt!1489958 e!2597352)))

(declare-fun c!714321 () Bool)

(assert (=> d!1234575 (= c!714321 ((_ is Nil!45925) (_2!25001 (get!14925 lt!1489721))))))

(assert (=> d!1234575 (= (size!33728 (_2!25001 (get!14925 lt!1489721))) lt!1489958)))

(declare-fun b!4183826 () Bool)

(assert (=> b!4183826 (= e!2597352 0)))

(declare-fun b!4183827 () Bool)

(assert (=> b!4183827 (= e!2597352 (+ 1 (size!33728 (t!345218 (_2!25001 (get!14925 lt!1489721))))))))

(assert (= (and d!1234575 c!714321) b!4183826))

(assert (= (and d!1234575 (not c!714321)) b!4183827))

(declare-fun m!4772673 () Bool)

(assert (=> b!4183827 m!4772673))

(assert (=> b!4183316 d!1234575))

(assert (=> b!4183316 d!1234467))

(assert (=> b!4183316 d!1234443))

(declare-fun d!1234577 () Bool)

(assert (=> d!1234577 (= (isEmpty!27177 lt!1489721) (not ((_ is Some!9837) lt!1489721)))))

(assert (=> d!1234347 d!1234577))

(declare-fun d!1234579 () Bool)

(assert (=> d!1234579 (= (isEmpty!27179 (_1!25003 lt!1489722)) ((_ is Nil!45925) (_1!25003 lt!1489722)))))

(assert (=> d!1234347 d!1234579))

(declare-fun d!1234581 () Bool)

(declare-fun lt!1489963 () tuple2!43738)

(assert (=> d!1234581 (= (++!11716 (_1!25003 lt!1489963) (_2!25003 lt!1489963)) input!3342)))

(assert (=> d!1234581 (= lt!1489963 (findLongestMatchInner!1591 (regex!7644 r!4142) Nil!45925 0 input!3342 input!3342 (sizeTr!309 input!3342 0)))))

(declare-fun lt!1489966 () Unit!65011)

(declare-fun lt!1489959 () Unit!65011)

(assert (=> d!1234581 (= lt!1489966 lt!1489959)))

(declare-fun lt!1489961 () List!46049)

(declare-fun lt!1489965 () Int)

(assert (=> d!1234581 (= (sizeTr!309 lt!1489961 lt!1489965) (+ (size!33728 lt!1489961) lt!1489965))))

(assert (=> d!1234581 (= lt!1489959 (lemmaSizeTrEqualsSize!308 lt!1489961 lt!1489965))))

(assert (=> d!1234581 (= lt!1489965 0)))

(assert (=> d!1234581 (= lt!1489961 Nil!45925)))

(declare-fun lt!1489960 () Unit!65011)

(declare-fun lt!1489962 () Unit!65011)

(assert (=> d!1234581 (= lt!1489960 lt!1489962)))

(declare-fun lt!1489964 () Int)

(assert (=> d!1234581 (= (sizeTr!309 input!3342 lt!1489964) (+ (size!33728 input!3342) lt!1489964))))

(assert (=> d!1234581 (= lt!1489962 (lemmaSizeTrEqualsSize!308 input!3342 lt!1489964))))

(assert (=> d!1234581 (= lt!1489964 0)))

(assert (=> d!1234581 (validRegex!5666 (regex!7644 r!4142))))

(assert (=> d!1234581 (= (findLongestMatch!1504 (regex!7644 r!4142) input!3342) lt!1489963)))

(declare-fun bs!596403 () Bool)

(assert (= bs!596403 d!1234581))

(assert (=> bs!596403 m!4772569))

(declare-fun m!4772675 () Bool)

(assert (=> bs!596403 m!4772675))

(declare-fun m!4772677 () Bool)

(assert (=> bs!596403 m!4772677))

(declare-fun m!4772679 () Bool)

(assert (=> bs!596403 m!4772679))

(declare-fun m!4772681 () Bool)

(assert (=> bs!596403 m!4772681))

(assert (=> bs!596403 m!4772569))

(declare-fun m!4772683 () Bool)

(assert (=> bs!596403 m!4772683))

(declare-fun m!4772685 () Bool)

(assert (=> bs!596403 m!4772685))

(assert (=> bs!596403 m!4771763))

(assert (=> bs!596403 m!4771759))

(declare-fun m!4772687 () Bool)

(assert (=> bs!596403 m!4772687))

(assert (=> d!1234347 d!1234581))

(assert (=> d!1234347 d!1234419))

(declare-fun d!1234583 () Bool)

(assert (=> d!1234583 (= (isEmpty!27179 (tail!6725 p!2959)) ((_ is Nil!45925) (tail!6725 p!2959)))))

(assert (=> b!4183560 d!1234583))

(assert (=> b!4183560 d!1234531))

(declare-fun d!1234585 () Bool)

(declare-fun lt!1489967 () Int)

(assert (=> d!1234585 (>= lt!1489967 0)))

(declare-fun e!2597353 () Int)

(assert (=> d!1234585 (= lt!1489967 e!2597353)))

(declare-fun c!714322 () Bool)

(assert (=> d!1234585 (= c!714322 ((_ is Nil!45925) (t!345218 p!2959)))))

(assert (=> d!1234585 (= (size!33728 (t!345218 p!2959)) lt!1489967)))

(declare-fun b!4183828 () Bool)

(assert (=> b!4183828 (= e!2597353 0)))

(declare-fun b!4183829 () Bool)

(assert (=> b!4183829 (= e!2597353 (+ 1 (size!33728 (t!345218 (t!345218 p!2959)))))))

(assert (= (and d!1234585 c!714322) b!4183828))

(assert (= (and d!1234585 (not c!714322)) b!4183829))

(declare-fun m!4772689 () Bool)

(assert (=> b!4183829 m!4772689))

(assert (=> b!4183333 d!1234585))

(assert (=> b!4183563 d!1234529))

(assert (=> b!4183562 d!1234469))

(assert (=> d!1234435 d!1234459))

(declare-fun d!1234587 () Bool)

(assert (=> d!1234587 (ruleValid!3362 thiss!25986 rBis!167)))

(assert (=> d!1234587 true))

(declare-fun _$65!1635 () Unit!65011)

(assert (=> d!1234587 (= (choose!25607 thiss!25986 rBis!167 rules!3843) _$65!1635)))

(declare-fun bs!596404 () Bool)

(assert (= bs!596404 d!1234587))

(assert (=> bs!596404 m!4771755))

(assert (=> d!1234435 d!1234587))

(assert (=> d!1234435 d!1234451))

(declare-fun d!1234589 () Bool)

(declare-fun lt!1489968 () Bool)

(assert (=> d!1234589 (= lt!1489968 (select (content!7138 (t!345220 rules!3843)) rBis!167))))

(declare-fun e!2597355 () Bool)

(assert (=> d!1234589 (= lt!1489968 e!2597355)))

(declare-fun res!1715885 () Bool)

(assert (=> d!1234589 (=> (not res!1715885) (not e!2597355))))

(assert (=> d!1234589 (= res!1715885 ((_ is Cons!45927) (t!345220 rules!3843)))))

(assert (=> d!1234589 (= (contains!9451 (t!345220 rules!3843) rBis!167) lt!1489968)))

(declare-fun b!4183830 () Bool)

(declare-fun e!2597354 () Bool)

(assert (=> b!4183830 (= e!2597355 e!2597354)))

(declare-fun res!1715886 () Bool)

(assert (=> b!4183830 (=> res!1715886 e!2597354)))

(assert (=> b!4183830 (= res!1715886 (= (h!51347 (t!345220 rules!3843)) rBis!167))))

(declare-fun b!4183831 () Bool)

(assert (=> b!4183831 (= e!2597354 (contains!9451 (t!345220 (t!345220 rules!3843)) rBis!167))))

(assert (= (and d!1234589 res!1715885) b!4183830))

(assert (= (and b!4183830 (not res!1715886)) b!4183831))

(assert (=> d!1234589 m!4772433))

(declare-fun m!4772691 () Bool)

(assert (=> d!1234589 m!4772691))

(declare-fun m!4772693 () Bool)

(assert (=> b!4183831 m!4772693))

(assert (=> b!4183521 d!1234589))

(assert (=> d!1234343 d!1234339))

(declare-fun d!1234591 () Bool)

(assert (=> d!1234591 (isPrefix!4501 input!3342 input!3342)))

(assert (=> d!1234591 true))

(declare-fun _$45!2060 () Unit!65011)

(assert (=> d!1234591 (= (choose!25603 input!3342 input!3342) _$45!2060)))

(declare-fun bs!596405 () Bool)

(assert (= bs!596405 d!1234591))

(assert (=> bs!596405 m!4771789))

(assert (=> d!1234343 d!1234591))

(declare-fun bs!596406 () Bool)

(declare-fun d!1234593 () Bool)

(assert (= bs!596406 (and d!1234593 d!1234393)))

(declare-fun lambda!129404 () Int)

(assert (=> bs!596406 (= (and (= (toChars!10195 (transformation!7644 rBis!167)) (toChars!10195 (transformation!7644 r!4142))) (= (toValue!10336 (transformation!7644 rBis!167)) (toValue!10336 (transformation!7644 r!4142)))) (= lambda!129404 lambda!129397))))

(declare-fun bs!596407 () Bool)

(assert (= bs!596407 (and d!1234593 d!1234513)))

(assert (=> bs!596407 (= (and (= (toChars!10195 (transformation!7644 rBis!167)) (toChars!10195 (transformation!7644 r!4142))) (= (toValue!10336 (transformation!7644 rBis!167)) (toValue!10336 (transformation!7644 r!4142)))) (= lambda!129404 lambda!129401))))

(assert (=> d!1234593 true))

(assert (=> d!1234593 (< (dynLambda!19721 order!24253 (toChars!10195 (transformation!7644 rBis!167))) (dynLambda!19720 order!24251 lambda!129404))))

(assert (=> d!1234593 true))

(assert (=> d!1234593 (< (dynLambda!19719 order!24249 (toValue!10336 (transformation!7644 rBis!167))) (dynLambda!19720 order!24251 lambda!129404))))

(assert (=> d!1234593 (= (semiInverseModEq!3310 (toChars!10195 (transformation!7644 rBis!167)) (toValue!10336 (transformation!7644 rBis!167))) (Forall!1565 lambda!129404))))

(declare-fun bs!596408 () Bool)

(assert (= bs!596408 d!1234593))

(declare-fun m!4772695 () Bool)

(assert (=> bs!596408 m!4772695))

(assert (=> d!1234315 d!1234593))

(declare-fun d!1234595 () Bool)

(assert (=> d!1234595 (= (head!8878 lt!1489629) (h!51345 lt!1489629))))

(assert (=> b!4183379 d!1234595))

(declare-fun d!1234597 () Bool)

(assert (=> d!1234597 (= (head!8878 (++!11716 lt!1489629 (_2!25001 lt!1489624))) (h!51345 (++!11716 lt!1489629 (_2!25001 lt!1489624))))))

(assert (=> b!4183379 d!1234597))

(declare-fun d!1234599 () Bool)

(assert (=> d!1234599 (= (list!16585 lt!1489752) (list!16587 (c!714182 lt!1489752)))))

(declare-fun bs!596409 () Bool)

(assert (= bs!596409 d!1234599))

(declare-fun m!4772697 () Bool)

(assert (=> bs!596409 m!4772697))

(assert (=> d!1234413 d!1234599))

(declare-fun c!714323 () Bool)

(declare-fun call!291849 () Bool)

(declare-fun c!714324 () Bool)

(declare-fun bm!291844 () Bool)

(assert (=> bm!291844 (= call!291849 (validRegex!5666 (ite c!714324 (reg!12878 (ite c!714241 (regOne!25611 (regex!7644 r!4142)) (regOne!25610 (regex!7644 r!4142)))) (ite c!714323 (regTwo!25611 (ite c!714241 (regOne!25611 (regex!7644 r!4142)) (regOne!25610 (regex!7644 r!4142)))) (regTwo!25610 (ite c!714241 (regOne!25611 (regex!7644 r!4142)) (regOne!25610 (regex!7644 r!4142))))))))))

(declare-fun b!4183836 () Bool)

(declare-fun e!2597358 () Bool)

(declare-fun e!2597359 () Bool)

(assert (=> b!4183836 (= e!2597358 e!2597359)))

(assert (=> b!4183836 (= c!714323 ((_ is Union!12549) (ite c!714241 (regOne!25611 (regex!7644 r!4142)) (regOne!25610 (regex!7644 r!4142)))))))

(declare-fun b!4183838 () Bool)

(declare-fun res!1715887 () Bool)

(declare-fun e!2597362 () Bool)

(assert (=> b!4183838 (=> res!1715887 e!2597362)))

(assert (=> b!4183838 (= res!1715887 (not ((_ is Concat!20424) (ite c!714241 (regOne!25611 (regex!7644 r!4142)) (regOne!25610 (regex!7644 r!4142))))))))

(assert (=> b!4183838 (= e!2597359 e!2597362)))

(declare-fun b!4183839 () Bool)

(declare-fun e!2597356 () Bool)

(assert (=> b!4183839 (= e!2597358 e!2597356)))

(declare-fun res!1715890 () Bool)

(assert (=> b!4183839 (= res!1715890 (not (nullable!4401 (reg!12878 (ite c!714241 (regOne!25611 (regex!7644 r!4142)) (regOne!25610 (regex!7644 r!4142)))))))))

(assert (=> b!4183839 (=> (not res!1715890) (not e!2597356))))

(declare-fun b!4183840 () Bool)

(declare-fun res!1715889 () Bool)

(declare-fun e!2597361 () Bool)

(assert (=> b!4183840 (=> (not res!1715889) (not e!2597361))))

(declare-fun call!291851 () Bool)

(assert (=> b!4183840 (= res!1715889 call!291851)))

(assert (=> b!4183840 (= e!2597359 e!2597361)))

(declare-fun b!4183841 () Bool)

(declare-fun e!2597360 () Bool)

(assert (=> b!4183841 (= e!2597360 e!2597358)))

(assert (=> b!4183841 (= c!714324 ((_ is Star!12549) (ite c!714241 (regOne!25611 (regex!7644 r!4142)) (regOne!25610 (regex!7644 r!4142)))))))

(declare-fun b!4183837 () Bool)

(assert (=> b!4183837 (= e!2597356 call!291849)))

(declare-fun d!1234601 () Bool)

(declare-fun res!1715888 () Bool)

(assert (=> d!1234601 (=> res!1715888 e!2597360)))

(assert (=> d!1234601 (= res!1715888 ((_ is ElementMatch!12549) (ite c!714241 (regOne!25611 (regex!7644 r!4142)) (regOne!25610 (regex!7644 r!4142)))))))

(assert (=> d!1234601 (= (validRegex!5666 (ite c!714241 (regOne!25611 (regex!7644 r!4142)) (regOne!25610 (regex!7644 r!4142)))) e!2597360)))

(declare-fun bm!291845 () Bool)

(assert (=> bm!291845 (= call!291851 (validRegex!5666 (ite c!714323 (regOne!25611 (ite c!714241 (regOne!25611 (regex!7644 r!4142)) (regOne!25610 (regex!7644 r!4142)))) (regOne!25610 (ite c!714241 (regOne!25611 (regex!7644 r!4142)) (regOne!25610 (regex!7644 r!4142)))))))))

(declare-fun b!4183842 () Bool)

(declare-fun call!291850 () Bool)

(assert (=> b!4183842 (= e!2597361 call!291850)))

(declare-fun b!4183843 () Bool)

(declare-fun e!2597357 () Bool)

(assert (=> b!4183843 (= e!2597357 call!291850)))

(declare-fun bm!291846 () Bool)

(assert (=> bm!291846 (= call!291850 call!291849)))

(declare-fun b!4183844 () Bool)

(assert (=> b!4183844 (= e!2597362 e!2597357)))

(declare-fun res!1715891 () Bool)

(assert (=> b!4183844 (=> (not res!1715891) (not e!2597357))))

(assert (=> b!4183844 (= res!1715891 call!291851)))

(assert (= (and d!1234601 (not res!1715888)) b!4183841))

(assert (= (and b!4183841 c!714324) b!4183839))

(assert (= (and b!4183841 (not c!714324)) b!4183836))

(assert (= (and b!4183839 res!1715890) b!4183837))

(assert (= (and b!4183836 c!714323) b!4183840))

(assert (= (and b!4183836 (not c!714323)) b!4183838))

(assert (= (and b!4183840 res!1715889) b!4183842))

(assert (= (and b!4183838 (not res!1715887)) b!4183844))

(assert (= (and b!4183844 res!1715891) b!4183843))

(assert (= (or b!4183842 b!4183843) bm!291846))

(assert (= (or b!4183840 b!4183844) bm!291845))

(assert (= (or b!4183837 bm!291846) bm!291844))

(declare-fun m!4772699 () Bool)

(assert (=> bm!291844 m!4772699))

(declare-fun m!4772701 () Bool)

(assert (=> b!4183839 m!4772701))

(declare-fun m!4772703 () Bool)

(assert (=> bm!291845 m!4772703))

(assert (=> bm!291787 d!1234601))

(declare-fun d!1234603 () Bool)

(assert (=> d!1234603 (= (list!16585 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 lt!1489633))) (value!238386 lt!1489633))) (list!16587 (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 lt!1489633))) (value!238386 lt!1489633)))))))

(declare-fun bs!596410 () Bool)

(assert (= bs!596410 d!1234603))

(declare-fun m!4772705 () Bool)

(assert (=> bs!596410 m!4772705))

(assert (=> b!4183134 d!1234603))

(assert (=> d!1234407 d!1234417))

(assert (=> d!1234407 d!1234409))

(declare-fun d!1234605 () Bool)

(assert (=> d!1234605 (isPrefix!4501 lt!1489629 (++!11716 lt!1489629 (_2!25001 lt!1489624)))))

(assert (=> d!1234605 true))

(declare-fun _$46!1844 () Unit!65011)

(assert (=> d!1234605 (= (choose!25605 lt!1489629 (_2!25001 lt!1489624)) _$46!1844)))

(declare-fun bs!596411 () Bool)

(assert (= bs!596411 d!1234605))

(assert (=> bs!596411 m!4771775))

(assert (=> bs!596411 m!4771775))

(assert (=> bs!596411 m!4771777))

(assert (=> d!1234407 d!1234605))

(declare-fun b!4183845 () Bool)

(declare-fun e!2597366 () Bool)

(declare-fun lt!1489972 () Option!9838)

(assert (=> b!4183845 (= e!2597366 (= (size!33727 (_1!25001 (get!14925 lt!1489972))) (size!33728 (originalCharacters!8032 (_1!25001 (get!14925 lt!1489972))))))))

(declare-fun b!4183846 () Bool)

(declare-fun res!1715895 () Bool)

(assert (=> b!4183846 (=> (not res!1715895) (not e!2597366))))

(assert (=> b!4183846 (= res!1715895 (= (rule!10710 (_1!25001 (get!14925 lt!1489972))) (h!51347 rules!3843)))))

(declare-fun b!4183847 () Bool)

(declare-fun res!1715892 () Bool)

(assert (=> b!4183847 (=> (not res!1715892) (not e!2597366))))

(assert (=> b!4183847 (= res!1715892 (= (++!11716 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489972)))) (_2!25001 (get!14925 lt!1489972))) input!3342))))

(declare-fun b!4183848 () Bool)

(declare-fun e!2597363 () Bool)

(assert (=> b!4183848 (= e!2597363 e!2597366)))

(declare-fun res!1715893 () Bool)

(assert (=> b!4183848 (=> (not res!1715893) (not e!2597366))))

(assert (=> b!4183848 (= res!1715893 (matchR!6288 (regex!7644 (h!51347 rules!3843)) (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489972))))))))

(declare-fun b!4183849 () Bool)

(declare-fun e!2597364 () Option!9838)

(declare-fun lt!1489973 () tuple2!43738)

(assert (=> b!4183849 (= e!2597364 (Some!9837 (tuple2!43735 (Token!14003 (apply!10609 (transformation!7644 (h!51347 rules!3843)) (seqFromList!5669 (_1!25003 lt!1489973))) (h!51347 rules!3843) (size!33730 (seqFromList!5669 (_1!25003 lt!1489973))) (_1!25003 lt!1489973)) (_2!25003 lt!1489973))))))

(declare-fun lt!1489971 () Unit!65011)

(assert (=> b!4183849 (= lt!1489971 (longestMatchIsAcceptedByMatchOrIsEmpty!1564 (regex!7644 (h!51347 rules!3843)) input!3342))))

(declare-fun res!1715897 () Bool)

(assert (=> b!4183849 (= res!1715897 (isEmpty!27179 (_1!25003 (findLongestMatchInner!1591 (regex!7644 (h!51347 rules!3843)) Nil!45925 (size!33728 Nil!45925) input!3342 input!3342 (size!33728 input!3342)))))))

(declare-fun e!2597365 () Bool)

(assert (=> b!4183849 (=> res!1715897 e!2597365)))

(assert (=> b!4183849 e!2597365))

(declare-fun lt!1489969 () Unit!65011)

(assert (=> b!4183849 (= lt!1489969 lt!1489971)))

(declare-fun lt!1489970 () Unit!65011)

(assert (=> b!4183849 (= lt!1489970 (lemmaSemiInverse!2410 (transformation!7644 (h!51347 rules!3843)) (seqFromList!5669 (_1!25003 lt!1489973))))))

(declare-fun b!4183850 () Bool)

(assert (=> b!4183850 (= e!2597364 None!9837)))

(declare-fun d!1234607 () Bool)

(assert (=> d!1234607 e!2597363))

(declare-fun res!1715898 () Bool)

(assert (=> d!1234607 (=> res!1715898 e!2597363)))

(assert (=> d!1234607 (= res!1715898 (isEmpty!27177 lt!1489972))))

(assert (=> d!1234607 (= lt!1489972 e!2597364)))

(declare-fun c!714325 () Bool)

(assert (=> d!1234607 (= c!714325 (isEmpty!27179 (_1!25003 lt!1489973)))))

(assert (=> d!1234607 (= lt!1489973 (findLongestMatch!1504 (regex!7644 (h!51347 rules!3843)) input!3342))))

(assert (=> d!1234607 (ruleValid!3362 thiss!25986 (h!51347 rules!3843))))

(assert (=> d!1234607 (= (maxPrefixOneRule!3246 thiss!25986 (h!51347 rules!3843) input!3342) lt!1489972)))

(declare-fun b!4183851 () Bool)

(declare-fun res!1715896 () Bool)

(assert (=> b!4183851 (=> (not res!1715896) (not e!2597366))))

(assert (=> b!4183851 (= res!1715896 (= (value!238386 (_1!25001 (get!14925 lt!1489972))) (apply!10609 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489972)))) (seqFromList!5669 (originalCharacters!8032 (_1!25001 (get!14925 lt!1489972)))))))))

(declare-fun b!4183852 () Bool)

(assert (=> b!4183852 (= e!2597365 (matchR!6288 (regex!7644 (h!51347 rules!3843)) (_1!25003 (findLongestMatchInner!1591 (regex!7644 (h!51347 rules!3843)) Nil!45925 (size!33728 Nil!45925) input!3342 input!3342 (size!33728 input!3342)))))))

(declare-fun b!4183853 () Bool)

(declare-fun res!1715894 () Bool)

(assert (=> b!4183853 (=> (not res!1715894) (not e!2597366))))

(assert (=> b!4183853 (= res!1715894 (< (size!33728 (_2!25001 (get!14925 lt!1489972))) (size!33728 input!3342)))))

(assert (= (and d!1234607 c!714325) b!4183850))

(assert (= (and d!1234607 (not c!714325)) b!4183849))

(assert (= (and b!4183849 (not res!1715897)) b!4183852))

(assert (= (and d!1234607 (not res!1715898)) b!4183848))

(assert (= (and b!4183848 res!1715893) b!4183847))

(assert (= (and b!4183847 res!1715892) b!4183853))

(assert (= (and b!4183853 res!1715894) b!4183846))

(assert (= (and b!4183846 res!1715895) b!4183851))

(assert (= (and b!4183851 res!1715896) b!4183845))

(declare-fun m!4772707 () Bool)

(assert (=> b!4183845 m!4772707))

(declare-fun m!4772709 () Bool)

(assert (=> b!4183845 m!4772709))

(assert (=> b!4183848 m!4772707))

(declare-fun m!4772711 () Bool)

(assert (=> b!4183848 m!4772711))

(assert (=> b!4183848 m!4772711))

(declare-fun m!4772713 () Bool)

(assert (=> b!4183848 m!4772713))

(assert (=> b!4183848 m!4772713))

(declare-fun m!4772715 () Bool)

(assert (=> b!4183848 m!4772715))

(assert (=> b!4183852 m!4772073))

(assert (=> b!4183852 m!4771763))

(assert (=> b!4183852 m!4772073))

(assert (=> b!4183852 m!4771763))

(declare-fun m!4772717 () Bool)

(assert (=> b!4183852 m!4772717))

(declare-fun m!4772719 () Bool)

(assert (=> b!4183852 m!4772719))

(declare-fun m!4772721 () Bool)

(assert (=> b!4183849 m!4772721))

(assert (=> b!4183849 m!4771763))

(assert (=> b!4183849 m!4772073))

(assert (=> b!4183849 m!4771763))

(assert (=> b!4183849 m!4772717))

(declare-fun m!4772723 () Bool)

(assert (=> b!4183849 m!4772723))

(declare-fun m!4772725 () Bool)

(assert (=> b!4183849 m!4772725))

(assert (=> b!4183849 m!4772723))

(declare-fun m!4772727 () Bool)

(assert (=> b!4183849 m!4772727))

(assert (=> b!4183849 m!4772723))

(assert (=> b!4183849 m!4772073))

(assert (=> b!4183849 m!4772723))

(declare-fun m!4772729 () Bool)

(assert (=> b!4183849 m!4772729))

(declare-fun m!4772731 () Bool)

(assert (=> b!4183849 m!4772731))

(assert (=> b!4183846 m!4772707))

(assert (=> b!4183851 m!4772707))

(declare-fun m!4772733 () Bool)

(assert (=> b!4183851 m!4772733))

(assert (=> b!4183851 m!4772733))

(declare-fun m!4772735 () Bool)

(assert (=> b!4183851 m!4772735))

(assert (=> b!4183853 m!4772707))

(declare-fun m!4772737 () Bool)

(assert (=> b!4183853 m!4772737))

(assert (=> b!4183853 m!4771763))

(assert (=> b!4183847 m!4772707))

(assert (=> b!4183847 m!4772711))

(assert (=> b!4183847 m!4772711))

(assert (=> b!4183847 m!4772713))

(assert (=> b!4183847 m!4772713))

(declare-fun m!4772739 () Bool)

(assert (=> b!4183847 m!4772739))

(declare-fun m!4772741 () Bool)

(assert (=> d!1234607 m!4772741))

(declare-fun m!4772743 () Bool)

(assert (=> d!1234607 m!4772743))

(declare-fun m!4772745 () Bool)

(assert (=> d!1234607 m!4772745))

(declare-fun m!4772747 () Bool)

(assert (=> d!1234607 m!4772747))

(assert (=> bm!291779 d!1234607))

(declare-fun d!1234609 () Bool)

(declare-fun lt!1489974 () Int)

(assert (=> d!1234609 (>= lt!1489974 0)))

(declare-fun e!2597367 () Int)

(assert (=> d!1234609 (= lt!1489974 e!2597367)))

(declare-fun c!714326 () Bool)

(assert (=> d!1234609 (= c!714326 ((_ is Nil!45925) (++!11716 lt!1489629 (_2!25001 lt!1489624))))))

(assert (=> d!1234609 (= (size!33728 (++!11716 lt!1489629 (_2!25001 lt!1489624))) lt!1489974)))

(declare-fun b!4183854 () Bool)

(assert (=> b!4183854 (= e!2597367 0)))

(declare-fun b!4183855 () Bool)

(assert (=> b!4183855 (= e!2597367 (+ 1 (size!33728 (t!345218 (++!11716 lt!1489629 (_2!25001 lt!1489624))))))))

(assert (= (and d!1234609 c!714326) b!4183854))

(assert (= (and d!1234609 (not c!714326)) b!4183855))

(declare-fun m!4772749 () Bool)

(assert (=> b!4183855 m!4772749))

(assert (=> b!4183381 d!1234609))

(declare-fun d!1234611 () Bool)

(declare-fun lt!1489975 () Int)

(assert (=> d!1234611 (>= lt!1489975 0)))

(declare-fun e!2597368 () Int)

(assert (=> d!1234611 (= lt!1489975 e!2597368)))

(declare-fun c!714327 () Bool)

(assert (=> d!1234611 (= c!714327 ((_ is Nil!45925) lt!1489629))))

(assert (=> d!1234611 (= (size!33728 lt!1489629) lt!1489975)))

(declare-fun b!4183856 () Bool)

(assert (=> b!4183856 (= e!2597368 0)))

(declare-fun b!4183857 () Bool)

(assert (=> b!4183857 (= e!2597368 (+ 1 (size!33728 (t!345218 lt!1489629))))))

(assert (= (and d!1234611 c!714327) b!4183856))

(assert (= (and d!1234611 (not c!714327)) b!4183857))

(declare-fun m!4772751 () Bool)

(assert (=> b!4183857 m!4772751))

(assert (=> b!4183381 d!1234611))

(declare-fun d!1234613 () Bool)

(declare-fun lt!1489976 () List!46049)

(assert (=> d!1234613 (= (++!11716 (t!345218 p!2959) lt!1489976) (tail!6725 input!3342))))

(declare-fun e!2597369 () List!46049)

(assert (=> d!1234613 (= lt!1489976 e!2597369)))

(declare-fun c!714328 () Bool)

(assert (=> d!1234613 (= c!714328 ((_ is Cons!45925) (t!345218 p!2959)))))

(assert (=> d!1234613 (>= (size!33728 (tail!6725 input!3342)) (size!33728 (t!345218 p!2959)))))

(assert (=> d!1234613 (= (getSuffix!2794 (tail!6725 input!3342) (t!345218 p!2959)) lt!1489976)))

(declare-fun b!4183858 () Bool)

(assert (=> b!4183858 (= e!2597369 (getSuffix!2794 (tail!6725 (tail!6725 input!3342)) (t!345218 (t!345218 p!2959))))))

(declare-fun b!4183859 () Bool)

(assert (=> b!4183859 (= e!2597369 (tail!6725 input!3342))))

(assert (= (and d!1234613 c!714328) b!4183858))

(assert (= (and d!1234613 (not c!714328)) b!4183859))

(declare-fun m!4772753 () Bool)

(assert (=> d!1234613 m!4772753))

(assert (=> d!1234613 m!4771887))

(assert (=> d!1234613 m!4772555))

(assert (=> d!1234613 m!4772135))

(assert (=> b!4183858 m!4771887))

(assert (=> b!4183858 m!4772565))

(assert (=> b!4183858 m!4772565))

(declare-fun m!4772755 () Bool)

(assert (=> b!4183858 m!4772755))

(assert (=> b!4183148 d!1234613))

(assert (=> b!4183148 d!1234537))

(declare-fun d!1234615 () Bool)

(declare-fun lt!1489977 () Int)

(assert (=> d!1234615 (>= lt!1489977 0)))

(declare-fun e!2597370 () Int)

(assert (=> d!1234615 (= lt!1489977 e!2597370)))

(declare-fun c!714329 () Bool)

(assert (=> d!1234615 (= c!714329 ((_ is Nil!45925) (_2!25001 (get!14925 lt!1489768))))))

(assert (=> d!1234615 (= (size!33728 (_2!25001 (get!14925 lt!1489768))) lt!1489977)))

(declare-fun b!4183860 () Bool)

(assert (=> b!4183860 (= e!2597370 0)))

(declare-fun b!4183861 () Bool)

(assert (=> b!4183861 (= e!2597370 (+ 1 (size!33728 (t!345218 (_2!25001 (get!14925 lt!1489768))))))))

(assert (= (and d!1234615 c!714329) b!4183860))

(assert (= (and d!1234615 (not c!714329)) b!4183861))

(declare-fun m!4772757 () Bool)

(assert (=> b!4183861 m!4772757))

(assert (=> b!4183458 d!1234615))

(assert (=> b!4183458 d!1234473))

(assert (=> b!4183458 d!1234443))

(declare-fun d!1234617 () Bool)

(assert (=> d!1234617 (= (inv!60469 (dynLambda!19716 (toChars!10195 (transformation!7644 r!4142)) (dynLambda!19717 (toValue!10336 (transformation!7644 r!4142)) lt!1489628))) (isBalanced!3735 (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 r!4142)) (dynLambda!19717 (toValue!10336 (transformation!7644 r!4142)) lt!1489628)))))))

(declare-fun bs!596412 () Bool)

(assert (= bs!596412 d!1234617))

(declare-fun m!4772759 () Bool)

(assert (=> bs!596412 m!4772759))

(assert (=> tb!250417 d!1234617))

(assert (=> b!4183519 d!1234443))

(assert (=> b!4183519 d!1234403))

(assert (=> b!4183517 d!1234529))

(declare-fun d!1234619 () Bool)

(assert (=> d!1234619 (= (head!8878 input!3342) (h!51345 input!3342))))

(assert (=> b!4183517 d!1234619))

(declare-fun d!1234621 () Bool)

(declare-fun lt!1489978 () Int)

(assert (=> d!1234621 (>= lt!1489978 0)))

(declare-fun e!2597371 () Int)

(assert (=> d!1234621 (= lt!1489978 e!2597371)))

(declare-fun c!714330 () Bool)

(assert (=> d!1234621 (= c!714330 ((_ is Nil!45925) (t!345218 pBis!107)))))

(assert (=> d!1234621 (= (size!33728 (t!345218 pBis!107)) lt!1489978)))

(declare-fun b!4183862 () Bool)

(assert (=> b!4183862 (= e!2597371 0)))

(declare-fun b!4183863 () Bool)

(assert (=> b!4183863 (= e!2597371 (+ 1 (size!33728 (t!345218 (t!345218 pBis!107)))))))

(assert (= (and d!1234621 c!714330) b!4183862))

(assert (= (and d!1234621 (not c!714330)) b!4183863))

(declare-fun m!4772761 () Bool)

(assert (=> b!4183863 m!4772761))

(assert (=> b!4183118 d!1234621))

(declare-fun bs!596413 () Bool)

(declare-fun d!1234623 () Bool)

(assert (= bs!596413 (and d!1234623 d!1234393)))

(declare-fun lambda!129405 () Int)

(assert (=> bs!596413 (= lambda!129405 lambda!129397)))

(declare-fun bs!596414 () Bool)

(assert (= bs!596414 (and d!1234623 d!1234513)))

(assert (=> bs!596414 (= lambda!129405 lambda!129401)))

(declare-fun bs!596415 () Bool)

(assert (= bs!596415 (and d!1234623 d!1234593)))

(assert (=> bs!596415 (= (and (= (toChars!10195 (transformation!7644 r!4142)) (toChars!10195 (transformation!7644 rBis!167))) (= (toValue!10336 (transformation!7644 r!4142)) (toValue!10336 (transformation!7644 rBis!167)))) (= lambda!129405 lambda!129404))))

(assert (=> d!1234623 true))

(assert (=> d!1234623 (< (dynLambda!19721 order!24253 (toChars!10195 (transformation!7644 r!4142))) (dynLambda!19720 order!24251 lambda!129405))))

(assert (=> d!1234623 true))

(assert (=> d!1234623 (< (dynLambda!19719 order!24249 (toValue!10336 (transformation!7644 r!4142))) (dynLambda!19720 order!24251 lambda!129405))))

(assert (=> d!1234623 (= (semiInverseModEq!3310 (toChars!10195 (transformation!7644 r!4142)) (toValue!10336 (transformation!7644 r!4142))) (Forall!1565 lambda!129405))))

(declare-fun bs!596416 () Bool)

(assert (= bs!596416 d!1234623))

(declare-fun m!4772763 () Bool)

(assert (=> bs!596416 m!4772763))

(assert (=> d!1234455 d!1234623))

(declare-fun d!1234625 () Bool)

(assert (=> d!1234625 (= (head!8878 pBis!107) (h!51345 pBis!107))))

(assert (=> b!4183466 d!1234625))

(assert (=> b!4183466 d!1234619))

(declare-fun bs!596417 () Bool)

(declare-fun d!1234627 () Bool)

(assert (= bs!596417 (and d!1234627 d!1234501)))

(declare-fun lambda!129406 () Int)

(assert (=> bs!596417 (= (= (toValue!10336 (transformation!7644 (h!51347 rules!3843))) (toValue!10336 (transformation!7644 r!4142))) (= lambda!129406 lambda!129400))))

(assert (=> d!1234627 true))

(assert (=> d!1234627 (< (dynLambda!19719 order!24249 (toValue!10336 (transformation!7644 (h!51347 rules!3843)))) (dynLambda!19726 order!24255 lambda!129406))))

(assert (=> d!1234627 (= (equivClasses!3209 (toChars!10195 (transformation!7644 (h!51347 rules!3843))) (toValue!10336 (transformation!7644 (h!51347 rules!3843)))) (Forall2!1164 lambda!129406))))

(declare-fun bs!596418 () Bool)

(assert (= bs!596418 d!1234627))

(declare-fun m!4772765 () Bool)

(assert (=> bs!596418 m!4772765))

(assert (=> b!4183123 d!1234627))

(declare-fun d!1234629 () Bool)

(declare-fun lt!1489979 () Int)

(assert (=> d!1234629 (>= lt!1489979 0)))

(declare-fun e!2597372 () Int)

(assert (=> d!1234629 (= lt!1489979 e!2597372)))

(declare-fun c!714331 () Bool)

(assert (=> d!1234629 (= c!714331 ((_ is Nil!45925) lt!1489749))))

(assert (=> d!1234629 (= (size!33728 lt!1489749) lt!1489979)))

(declare-fun b!4183864 () Bool)

(assert (=> b!4183864 (= e!2597372 0)))

(declare-fun b!4183865 () Bool)

(assert (=> b!4183865 (= e!2597372 (+ 1 (size!33728 (t!345218 lt!1489749))))))

(assert (= (and d!1234629 c!714331) b!4183864))

(assert (= (and d!1234629 (not c!714331)) b!4183865))

(declare-fun m!4772767 () Bool)

(assert (=> b!4183865 m!4772767))

(assert (=> b!4183371 d!1234629))

(assert (=> b!4183371 d!1234611))

(declare-fun d!1234631 () Bool)

(declare-fun lt!1489980 () Int)

(assert (=> d!1234631 (>= lt!1489980 0)))

(declare-fun e!2597373 () Int)

(assert (=> d!1234631 (= lt!1489980 e!2597373)))

(declare-fun c!714332 () Bool)

(assert (=> d!1234631 (= c!714332 ((_ is Nil!45925) (_2!25001 lt!1489624)))))

(assert (=> d!1234631 (= (size!33728 (_2!25001 lt!1489624)) lt!1489980)))

(declare-fun b!4183866 () Bool)

(assert (=> b!4183866 (= e!2597373 0)))

(declare-fun b!4183867 () Bool)

(assert (=> b!4183867 (= e!2597373 (+ 1 (size!33728 (t!345218 (_2!25001 lt!1489624)))))))

(assert (= (and d!1234631 c!714332) b!4183866))

(assert (= (and d!1234631 (not c!714332)) b!4183867))

(declare-fun m!4772769 () Bool)

(assert (=> b!4183867 m!4772769))

(assert (=> b!4183371 d!1234631))

(assert (=> b!4183309 d!1234467))

(declare-fun b!4183868 () Bool)

(declare-fun res!1715902 () Bool)

(declare-fun e!2597374 () Bool)

(assert (=> b!4183868 (=> (not res!1715902) (not e!2597374))))

(declare-fun lt!1489984 () Option!9838)

(assert (=> b!4183868 (= res!1715902 (= (++!11716 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489984)))) (_2!25001 (get!14925 lt!1489984))) input!3342))))

(declare-fun d!1234633 () Bool)

(declare-fun e!2597376 () Bool)

(assert (=> d!1234633 e!2597376))

(declare-fun res!1715904 () Bool)

(assert (=> d!1234633 (=> res!1715904 e!2597376)))

(assert (=> d!1234633 (= res!1715904 (isEmpty!27177 lt!1489984))))

(declare-fun e!2597375 () Option!9838)

(assert (=> d!1234633 (= lt!1489984 e!2597375)))

(declare-fun c!714333 () Bool)

(assert (=> d!1234633 (= c!714333 (and ((_ is Cons!45927) (t!345220 rules!3843)) ((_ is Nil!45927) (t!345220 (t!345220 rules!3843)))))))

(declare-fun lt!1489982 () Unit!65011)

(declare-fun lt!1489985 () Unit!65011)

(assert (=> d!1234633 (= lt!1489982 lt!1489985)))

(assert (=> d!1234633 (isPrefix!4501 input!3342 input!3342)))

(assert (=> d!1234633 (= lt!1489985 (lemmaIsPrefixRefl!2930 input!3342 input!3342))))

(assert (=> d!1234633 (rulesValidInductive!2815 thiss!25986 (t!345220 rules!3843))))

(assert (=> d!1234633 (= (maxPrefix!4285 thiss!25986 (t!345220 rules!3843) input!3342) lt!1489984)))

(declare-fun call!291852 () Option!9838)

(declare-fun bm!291847 () Bool)

(assert (=> bm!291847 (= call!291852 (maxPrefixOneRule!3246 thiss!25986 (h!51347 (t!345220 rules!3843)) input!3342))))

(declare-fun b!4183869 () Bool)

(assert (=> b!4183869 (= e!2597375 call!291852)))

(declare-fun b!4183870 () Bool)

(declare-fun res!1715900 () Bool)

(assert (=> b!4183870 (=> (not res!1715900) (not e!2597374))))

(assert (=> b!4183870 (= res!1715900 (< (size!33728 (_2!25001 (get!14925 lt!1489984))) (size!33728 input!3342)))))

(declare-fun b!4183871 () Bool)

(declare-fun res!1715903 () Bool)

(assert (=> b!4183871 (=> (not res!1715903) (not e!2597374))))

(assert (=> b!4183871 (= res!1715903 (matchR!6288 (regex!7644 (rule!10710 (_1!25001 (get!14925 lt!1489984)))) (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489984))))))))

(declare-fun b!4183872 () Bool)

(declare-fun lt!1489983 () Option!9838)

(declare-fun lt!1489981 () Option!9838)

(assert (=> b!4183872 (= e!2597375 (ite (and ((_ is None!9837) lt!1489983) ((_ is None!9837) lt!1489981)) None!9837 (ite ((_ is None!9837) lt!1489981) lt!1489983 (ite ((_ is None!9837) lt!1489983) lt!1489981 (ite (>= (size!33727 (_1!25001 (v!40651 lt!1489983))) (size!33727 (_1!25001 (v!40651 lt!1489981)))) lt!1489983 lt!1489981)))))))

(assert (=> b!4183872 (= lt!1489983 call!291852)))

(assert (=> b!4183872 (= lt!1489981 (maxPrefix!4285 thiss!25986 (t!345220 (t!345220 rules!3843)) input!3342))))

(declare-fun b!4183873 () Bool)

(declare-fun res!1715899 () Bool)

(assert (=> b!4183873 (=> (not res!1715899) (not e!2597374))))

(assert (=> b!4183873 (= res!1715899 (= (value!238386 (_1!25001 (get!14925 lt!1489984))) (apply!10609 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489984)))) (seqFromList!5669 (originalCharacters!8032 (_1!25001 (get!14925 lt!1489984)))))))))

(declare-fun b!4183874 () Bool)

(declare-fun res!1715905 () Bool)

(assert (=> b!4183874 (=> (not res!1715905) (not e!2597374))))

(assert (=> b!4183874 (= res!1715905 (= (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489984)))) (originalCharacters!8032 (_1!25001 (get!14925 lt!1489984)))))))

(declare-fun b!4183875 () Bool)

(assert (=> b!4183875 (= e!2597374 (contains!9451 (t!345220 rules!3843) (rule!10710 (_1!25001 (get!14925 lt!1489984)))))))

(declare-fun b!4183876 () Bool)

(assert (=> b!4183876 (= e!2597376 e!2597374)))

(declare-fun res!1715901 () Bool)

(assert (=> b!4183876 (=> (not res!1715901) (not e!2597374))))

(assert (=> b!4183876 (= res!1715901 (isDefined!7331 lt!1489984))))

(assert (= (and d!1234633 c!714333) b!4183869))

(assert (= (and d!1234633 (not c!714333)) b!4183872))

(assert (= (or b!4183869 b!4183872) bm!291847))

(assert (= (and d!1234633 (not res!1715904)) b!4183876))

(assert (= (and b!4183876 res!1715901) b!4183874))

(assert (= (and b!4183874 res!1715905) b!4183870))

(assert (= (and b!4183870 res!1715900) b!4183868))

(assert (= (and b!4183868 res!1715902) b!4183873))

(assert (= (and b!4183873 res!1715899) b!4183871))

(assert (= (and b!4183871 res!1715903) b!4183875))

(declare-fun m!4772771 () Bool)

(assert (=> b!4183872 m!4772771))

(declare-fun m!4772773 () Bool)

(assert (=> b!4183876 m!4772773))

(declare-fun m!4772775 () Bool)

(assert (=> b!4183868 m!4772775))

(declare-fun m!4772777 () Bool)

(assert (=> b!4183868 m!4772777))

(assert (=> b!4183868 m!4772777))

(declare-fun m!4772779 () Bool)

(assert (=> b!4183868 m!4772779))

(assert (=> b!4183868 m!4772779))

(declare-fun m!4772781 () Bool)

(assert (=> b!4183868 m!4772781))

(assert (=> b!4183875 m!4772775))

(declare-fun m!4772783 () Bool)

(assert (=> b!4183875 m!4772783))

(declare-fun m!4772785 () Bool)

(assert (=> bm!291847 m!4772785))

(assert (=> b!4183870 m!4772775))

(declare-fun m!4772787 () Bool)

(assert (=> b!4183870 m!4772787))

(assert (=> b!4183870 m!4771763))

(assert (=> b!4183874 m!4772775))

(assert (=> b!4183874 m!4772777))

(assert (=> b!4183874 m!4772777))

(assert (=> b!4183874 m!4772779))

(assert (=> b!4183871 m!4772775))

(assert (=> b!4183871 m!4772777))

(assert (=> b!4183871 m!4772777))

(assert (=> b!4183871 m!4772779))

(assert (=> b!4183871 m!4772779))

(declare-fun m!4772789 () Bool)

(assert (=> b!4183871 m!4772789))

(assert (=> b!4183873 m!4772775))

(declare-fun m!4772791 () Bool)

(assert (=> b!4183873 m!4772791))

(assert (=> b!4183873 m!4772791))

(declare-fun m!4772793 () Bool)

(assert (=> b!4183873 m!4772793))

(declare-fun m!4772795 () Bool)

(assert (=> d!1234633 m!4772795))

(assert (=> d!1234633 m!4771789))

(assert (=> d!1234633 m!4771793))

(declare-fun m!4772797 () Bool)

(assert (=> d!1234633 m!4772797))

(assert (=> b!4183460 d!1234633))

(declare-fun b!4183880 () Bool)

(declare-fun e!2597377 () Bool)

(assert (=> b!4183880 (= e!2597377 (>= (size!33728 (tail!6725 input!3342)) (size!33728 (tail!6725 input!3342))))))

(declare-fun b!4183878 () Bool)

(declare-fun res!1715907 () Bool)

(declare-fun e!2597378 () Bool)

(assert (=> b!4183878 (=> (not res!1715907) (not e!2597378))))

(assert (=> b!4183878 (= res!1715907 (= (head!8878 (tail!6725 input!3342)) (head!8878 (tail!6725 input!3342))))))

(declare-fun d!1234635 () Bool)

(assert (=> d!1234635 e!2597377))

(declare-fun res!1715909 () Bool)

(assert (=> d!1234635 (=> res!1715909 e!2597377)))

(declare-fun lt!1489986 () Bool)

(assert (=> d!1234635 (= res!1715909 (not lt!1489986))))

(declare-fun e!2597379 () Bool)

(assert (=> d!1234635 (= lt!1489986 e!2597379)))

(declare-fun res!1715908 () Bool)

(assert (=> d!1234635 (=> res!1715908 e!2597379)))

(assert (=> d!1234635 (= res!1715908 ((_ is Nil!45925) (tail!6725 input!3342)))))

(assert (=> d!1234635 (= (isPrefix!4501 (tail!6725 input!3342) (tail!6725 input!3342)) lt!1489986)))

(declare-fun b!4183877 () Bool)

(assert (=> b!4183877 (= e!2597379 e!2597378)))

(declare-fun res!1715906 () Bool)

(assert (=> b!4183877 (=> (not res!1715906) (not e!2597378))))

(assert (=> b!4183877 (= res!1715906 (not ((_ is Nil!45925) (tail!6725 input!3342))))))

(declare-fun b!4183879 () Bool)

(assert (=> b!4183879 (= e!2597378 (isPrefix!4501 (tail!6725 (tail!6725 input!3342)) (tail!6725 (tail!6725 input!3342))))))

(assert (= (and d!1234635 (not res!1715908)) b!4183877))

(assert (= (and b!4183877 res!1715906) b!4183878))

(assert (= (and b!4183878 res!1715907) b!4183879))

(assert (= (and d!1234635 (not res!1715909)) b!4183880))

(assert (=> b!4183880 m!4771887))

(assert (=> b!4183880 m!4772555))

(assert (=> b!4183880 m!4771887))

(assert (=> b!4183880 m!4772555))

(assert (=> b!4183878 m!4771887))

(assert (=> b!4183878 m!4772561))

(assert (=> b!4183878 m!4771887))

(assert (=> b!4183878 m!4772561))

(assert (=> b!4183879 m!4771887))

(assert (=> b!4183879 m!4772565))

(assert (=> b!4183879 m!4771887))

(assert (=> b!4183879 m!4772565))

(assert (=> b!4183879 m!4772565))

(assert (=> b!4183879 m!4772565))

(declare-fun m!4772799 () Bool)

(assert (=> b!4183879 m!4772799))

(assert (=> b!4183160 d!1234635))

(assert (=> b!4183160 d!1234537))

(assert (=> b!4183468 d!1234443))

(assert (=> b!4183468 d!1234317))

(declare-fun d!1234637 () Bool)

(declare-fun res!1715914 () Bool)

(declare-fun e!2597384 () Bool)

(assert (=> d!1234637 (=> res!1715914 e!2597384)))

(assert (=> d!1234637 (= res!1715914 ((_ is Nil!45927) rules!3843))))

(assert (=> d!1234637 (= (noDuplicateTag!3138 thiss!25986 rules!3843 Nil!45928) e!2597384)))

(declare-fun b!4183885 () Bool)

(declare-fun e!2597385 () Bool)

(assert (=> b!4183885 (= e!2597384 e!2597385)))

(declare-fun res!1715915 () Bool)

(assert (=> b!4183885 (=> (not res!1715915) (not e!2597385))))

(declare-fun contains!9452 (List!46052 String!53236) Bool)

(assert (=> b!4183885 (= res!1715915 (not (contains!9452 Nil!45928 (tag!8508 (h!51347 rules!3843)))))))

(declare-fun b!4183886 () Bool)

(assert (=> b!4183886 (= e!2597385 (noDuplicateTag!3138 thiss!25986 (t!345220 rules!3843) (Cons!45928 (tag!8508 (h!51347 rules!3843)) Nil!45928)))))

(assert (= (and d!1234637 (not res!1715914)) b!4183885))

(assert (= (and b!4183885 res!1715915) b!4183886))

(declare-fun m!4772801 () Bool)

(assert (=> b!4183885 m!4772801))

(declare-fun m!4772803 () Bool)

(assert (=> b!4183886 m!4772803))

(assert (=> b!4183471 d!1234637))

(declare-fun d!1234639 () Bool)

(assert (=> d!1234639 (= (isDefined!7331 lt!1489768) (not (isEmpty!27177 lt!1489768)))))

(declare-fun bs!596419 () Bool)

(assert (= bs!596419 d!1234639))

(assert (=> bs!596419 m!4772253))

(assert (=> b!4183464 d!1234639))

(assert (=> b!4183462 d!1234483))

(assert (=> b!4183462 d!1234485))

(assert (=> b!4183462 d!1234473))

(declare-fun b!4183896 () Bool)

(declare-fun e!2597390 () List!46049)

(declare-fun e!2597391 () List!46049)

(assert (=> b!4183896 (= e!2597390 e!2597391)))

(declare-fun c!714339 () Bool)

(assert (=> b!4183896 (= c!714339 ((_ is Leaf!21420) (c!714182 (charsOf!5079 (_1!25001 lt!1489624)))))))

(declare-fun b!4183897 () Bool)

(declare-fun list!16588 (IArray!27715) List!46049)

(assert (=> b!4183897 (= e!2597391 (list!16588 (xs!17161 (c!714182 (charsOf!5079 (_1!25001 lt!1489624))))))))

(declare-fun b!4183895 () Bool)

(assert (=> b!4183895 (= e!2597390 Nil!45925)))

(declare-fun d!1234641 () Bool)

(declare-fun c!714338 () Bool)

(assert (=> d!1234641 (= c!714338 ((_ is Empty!13855) (c!714182 (charsOf!5079 (_1!25001 lt!1489624)))))))

(assert (=> d!1234641 (= (list!16587 (c!714182 (charsOf!5079 (_1!25001 lt!1489624)))) e!2597390)))

(declare-fun b!4183898 () Bool)

(assert (=> b!4183898 (= e!2597391 (++!11716 (list!16587 (left!34211 (c!714182 (charsOf!5079 (_1!25001 lt!1489624))))) (list!16587 (right!34541 (c!714182 (charsOf!5079 (_1!25001 lt!1489624)))))))))

(assert (= (and d!1234641 c!714338) b!4183895))

(assert (= (and d!1234641 (not c!714338)) b!4183896))

(assert (= (and b!4183896 c!714339) b!4183897))

(assert (= (and b!4183896 (not c!714339)) b!4183898))

(declare-fun m!4772805 () Bool)

(assert (=> b!4183897 m!4772805))

(declare-fun m!4772807 () Bool)

(assert (=> b!4183898 m!4772807))

(declare-fun m!4772809 () Bool)

(assert (=> b!4183898 m!4772809))

(assert (=> b!4183898 m!4772807))

(assert (=> b!4183898 m!4772809))

(declare-fun m!4772811 () Bool)

(assert (=> b!4183898 m!4772811))

(assert (=> d!1234405 d!1234641))

(assert (=> b!4183555 d!1234583))

(assert (=> b!4183555 d!1234531))

(declare-fun d!1234643 () Bool)

(assert (=> d!1234643 (= (inv!60463 (tag!8508 (h!51347 (t!345220 rules!3843)))) (= (mod (str.len (value!238385 (tag!8508 (h!51347 (t!345220 rules!3843))))) 2) 0))))

(assert (=> b!4183599 d!1234643))

(declare-fun d!1234645 () Bool)

(declare-fun res!1715916 () Bool)

(declare-fun e!2597392 () Bool)

(assert (=> d!1234645 (=> (not res!1715916) (not e!2597392))))

(assert (=> d!1234645 (= res!1715916 (semiInverseModEq!3310 (toChars!10195 (transformation!7644 (h!51347 (t!345220 rules!3843)))) (toValue!10336 (transformation!7644 (h!51347 (t!345220 rules!3843))))))))

(assert (=> d!1234645 (= (inv!60466 (transformation!7644 (h!51347 (t!345220 rules!3843)))) e!2597392)))

(declare-fun b!4183899 () Bool)

(assert (=> b!4183899 (= e!2597392 (equivClasses!3209 (toChars!10195 (transformation!7644 (h!51347 (t!345220 rules!3843)))) (toValue!10336 (transformation!7644 (h!51347 (t!345220 rules!3843))))))))

(assert (= (and d!1234645 res!1715916) b!4183899))

(declare-fun m!4772813 () Bool)

(assert (=> d!1234645 m!4772813))

(declare-fun m!4772815 () Bool)

(assert (=> b!4183899 m!4772815))

(assert (=> b!4183599 d!1234645))

(declare-fun bs!596420 () Bool)

(declare-fun d!1234647 () Bool)

(assert (= bs!596420 (and d!1234647 d!1234501)))

(declare-fun lambda!129407 () Int)

(assert (=> bs!596420 (= (= (toValue!10336 (transformation!7644 rBis!167)) (toValue!10336 (transformation!7644 r!4142))) (= lambda!129407 lambda!129400))))

(declare-fun bs!596421 () Bool)

(assert (= bs!596421 (and d!1234647 d!1234627)))

(assert (=> bs!596421 (= (= (toValue!10336 (transformation!7644 rBis!167)) (toValue!10336 (transformation!7644 (h!51347 rules!3843)))) (= lambda!129407 lambda!129406))))

(assert (=> d!1234647 true))

(assert (=> d!1234647 (< (dynLambda!19719 order!24249 (toValue!10336 (transformation!7644 rBis!167))) (dynLambda!19726 order!24255 lambda!129407))))

(assert (=> d!1234647 (= (equivClasses!3209 (toChars!10195 (transformation!7644 rBis!167)) (toValue!10336 (transformation!7644 rBis!167))) (Forall2!1164 lambda!129407))))

(declare-fun bs!596422 () Bool)

(assert (= bs!596422 d!1234647))

(declare-fun m!4772817 () Bool)

(assert (=> bs!596422 m!4772817))

(assert (=> b!4183103 d!1234647))

(declare-fun b!4183900 () Bool)

(declare-fun res!1715922 () Bool)

(declare-fun e!2597394 () Bool)

(assert (=> b!4183900 (=> (not res!1715922) (not e!2597394))))

(declare-fun call!291853 () Bool)

(assert (=> b!4183900 (= res!1715922 (not call!291853))))

(declare-fun b!4183901 () Bool)

(declare-fun e!2597399 () Bool)

(declare-fun e!2597397 () Bool)

(assert (=> b!4183901 (= e!2597399 e!2597397)))

(declare-fun res!1715921 () Bool)

(assert (=> b!4183901 (=> (not res!1715921) (not e!2597397))))

(declare-fun lt!1489987 () Bool)

(assert (=> b!4183901 (= res!1715921 (not lt!1489987))))

(declare-fun b!4183902 () Bool)

(declare-fun res!1715919 () Bool)

(assert (=> b!4183902 (=> res!1715919 e!2597399)))

(assert (=> b!4183902 (= res!1715919 (not ((_ is ElementMatch!12549) (regex!7644 r!4142))))))

(declare-fun e!2597396 () Bool)

(assert (=> b!4183902 (= e!2597396 e!2597399)))

(declare-fun b!4183903 () Bool)

(declare-fun e!2597398 () Bool)

(assert (=> b!4183903 (= e!2597398 (matchR!6288 (derivativeStep!3791 (regex!7644 r!4142) (head!8878 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489721)))))) (tail!6725 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489721)))))))))

(declare-fun b!4183904 () Bool)

(declare-fun res!1715924 () Bool)

(declare-fun e!2597395 () Bool)

(assert (=> b!4183904 (=> res!1715924 e!2597395)))

(assert (=> b!4183904 (= res!1715924 (not (isEmpty!27179 (tail!6725 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489721))))))))))

(declare-fun b!4183905 () Bool)

(declare-fun res!1715918 () Bool)

(assert (=> b!4183905 (=> res!1715918 e!2597399)))

(assert (=> b!4183905 (= res!1715918 e!2597394)))

(declare-fun res!1715920 () Bool)

(assert (=> b!4183905 (=> (not res!1715920) (not e!2597394))))

(assert (=> b!4183905 (= res!1715920 lt!1489987)))

(declare-fun b!4183906 () Bool)

(assert (=> b!4183906 (= e!2597395 (not (= (head!8878 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489721))))) (c!714183 (regex!7644 r!4142)))))))

(declare-fun b!4183907 () Bool)

(declare-fun e!2597393 () Bool)

(assert (=> b!4183907 (= e!2597393 (= lt!1489987 call!291853))))

(declare-fun d!1234649 () Bool)

(assert (=> d!1234649 e!2597393))

(declare-fun c!714340 () Bool)

(assert (=> d!1234649 (= c!714340 ((_ is EmptyExpr!12549) (regex!7644 r!4142)))))

(assert (=> d!1234649 (= lt!1489987 e!2597398)))

(declare-fun c!714342 () Bool)

(assert (=> d!1234649 (= c!714342 (isEmpty!27179 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489721))))))))

(assert (=> d!1234649 (validRegex!5666 (regex!7644 r!4142))))

(assert (=> d!1234649 (= (matchR!6288 (regex!7644 r!4142) (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489721))))) lt!1489987)))

(declare-fun b!4183908 () Bool)

(assert (=> b!4183908 (= e!2597397 e!2597395)))

(declare-fun res!1715917 () Bool)

(assert (=> b!4183908 (=> res!1715917 e!2597395)))

(assert (=> b!4183908 (= res!1715917 call!291853)))

(declare-fun b!4183909 () Bool)

(declare-fun res!1715923 () Bool)

(assert (=> b!4183909 (=> (not res!1715923) (not e!2597394))))

(assert (=> b!4183909 (= res!1715923 (isEmpty!27179 (tail!6725 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489721)))))))))

(declare-fun b!4183910 () Bool)

(assert (=> b!4183910 (= e!2597396 (not lt!1489987))))

(declare-fun b!4183911 () Bool)

(assert (=> b!4183911 (= e!2597398 (nullable!4401 (regex!7644 r!4142)))))

(declare-fun bm!291848 () Bool)

(assert (=> bm!291848 (= call!291853 (isEmpty!27179 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489721))))))))

(declare-fun b!4183912 () Bool)

(assert (=> b!4183912 (= e!2597394 (= (head!8878 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489721))))) (c!714183 (regex!7644 r!4142))))))

(declare-fun b!4183913 () Bool)

(assert (=> b!4183913 (= e!2597393 e!2597396)))

(declare-fun c!714341 () Bool)

(assert (=> b!4183913 (= c!714341 ((_ is EmptyLang!12549) (regex!7644 r!4142)))))

(assert (= (and d!1234649 c!714342) b!4183911))

(assert (= (and d!1234649 (not c!714342)) b!4183903))

(assert (= (and d!1234649 c!714340) b!4183907))

(assert (= (and d!1234649 (not c!714340)) b!4183913))

(assert (= (and b!4183913 c!714341) b!4183910))

(assert (= (and b!4183913 (not c!714341)) b!4183902))

(assert (= (and b!4183902 (not res!1715919)) b!4183905))

(assert (= (and b!4183905 res!1715920) b!4183900))

(assert (= (and b!4183900 res!1715922) b!4183909))

(assert (= (and b!4183909 res!1715923) b!4183912))

(assert (= (and b!4183905 (not res!1715918)) b!4183901))

(assert (= (and b!4183901 res!1715921) b!4183908))

(assert (= (and b!4183908 (not res!1715917)) b!4183904))

(assert (= (and b!4183904 (not res!1715924)) b!4183906))

(assert (= (or b!4183907 b!4183900 b!4183908) bm!291848))

(assert (=> bm!291848 m!4772069))

(declare-fun m!4772819 () Bool)

(assert (=> bm!291848 m!4772819))

(assert (=> b!4183909 m!4772069))

(declare-fun m!4772821 () Bool)

(assert (=> b!4183909 m!4772821))

(assert (=> b!4183909 m!4772821))

(declare-fun m!4772823 () Bool)

(assert (=> b!4183909 m!4772823))

(assert (=> d!1234649 m!4772069))

(assert (=> d!1234649 m!4772819))

(assert (=> d!1234649 m!4771759))

(assert (=> b!4183904 m!4772069))

(assert (=> b!4183904 m!4772821))

(assert (=> b!4183904 m!4772821))

(assert (=> b!4183904 m!4772823))

(assert (=> b!4183912 m!4772069))

(declare-fun m!4772825 () Bool)

(assert (=> b!4183912 m!4772825))

(assert (=> b!4183906 m!4772069))

(assert (=> b!4183906 m!4772825))

(assert (=> b!4183903 m!4772069))

(assert (=> b!4183903 m!4772825))

(assert (=> b!4183903 m!4772825))

(declare-fun m!4772827 () Bool)

(assert (=> b!4183903 m!4772827))

(assert (=> b!4183903 m!4772069))

(assert (=> b!4183903 m!4772821))

(assert (=> b!4183903 m!4772827))

(assert (=> b!4183903 m!4772821))

(declare-fun m!4772829 () Bool)

(assert (=> b!4183903 m!4772829))

(assert (=> b!4183911 m!4772219))

(assert (=> b!4183311 d!1234649))

(assert (=> b!4183311 d!1234463))

(assert (=> b!4183311 d!1234465))

(assert (=> b!4183311 d!1234467))

(assert (=> b!4183472 d!1234503))

(declare-fun d!1234651 () Bool)

(declare-fun lt!1489988 () Int)

(assert (=> d!1234651 (>= lt!1489988 0)))

(declare-fun e!2597400 () Int)

(assert (=> d!1234651 (= lt!1489988 e!2597400)))

(declare-fun c!714343 () Bool)

(assert (=> d!1234651 (= c!714343 ((_ is Nil!45925) (originalCharacters!8032 (_1!25001 (get!14925 lt!1489777)))))))

(assert (=> d!1234651 (= (size!33728 (originalCharacters!8032 (_1!25001 (get!14925 lt!1489777)))) lt!1489988)))

(declare-fun b!4183914 () Bool)

(assert (=> b!4183914 (= e!2597400 0)))

(declare-fun b!4183915 () Bool)

(assert (=> b!4183915 (= e!2597400 (+ 1 (size!33728 (t!345218 (originalCharacters!8032 (_1!25001 (get!14925 lt!1489777)))))))))

(assert (= (and d!1234651 c!714343) b!4183914))

(assert (= (and d!1234651 (not c!714343)) b!4183915))

(declare-fun m!4772831 () Bool)

(assert (=> b!4183915 m!4772831))

(assert (=> b!4183472 d!1234651))

(declare-fun d!1234653 () Bool)

(assert (=> d!1234653 (= (isEmpty!27177 lt!1489768) (not ((_ is Some!9837) lt!1489768)))))

(assert (=> d!1234425 d!1234653))

(assert (=> d!1234425 d!1234339))

(assert (=> d!1234425 d!1234343))

(declare-fun d!1234655 () Bool)

(assert (=> d!1234655 true))

(declare-fun lt!1489991 () Bool)

(declare-fun lambda!129410 () Int)

(declare-fun forall!8477 (List!46051 Int) Bool)

(assert (=> d!1234655 (= lt!1489991 (forall!8477 rules!3843 lambda!129410))))

(declare-fun e!2597405 () Bool)

(assert (=> d!1234655 (= lt!1489991 e!2597405)))

(declare-fun res!1715929 () Bool)

(assert (=> d!1234655 (=> res!1715929 e!2597405)))

(assert (=> d!1234655 (= res!1715929 (not ((_ is Cons!45927) rules!3843)))))

(assert (=> d!1234655 (= (rulesValidInductive!2815 thiss!25986 rules!3843) lt!1489991)))

(declare-fun b!4183920 () Bool)

(declare-fun e!2597406 () Bool)

(assert (=> b!4183920 (= e!2597405 e!2597406)))

(declare-fun res!1715930 () Bool)

(assert (=> b!4183920 (=> (not res!1715930) (not e!2597406))))

(assert (=> b!4183920 (= res!1715930 (ruleValid!3362 thiss!25986 (h!51347 rules!3843)))))

(declare-fun b!4183921 () Bool)

(assert (=> b!4183921 (= e!2597406 (rulesValidInductive!2815 thiss!25986 (t!345220 rules!3843)))))

(assert (= (and d!1234655 (not res!1715929)) b!4183920))

(assert (= (and b!4183920 res!1715930) b!4183921))

(declare-fun m!4772833 () Bool)

(assert (=> d!1234655 m!4772833))

(assert (=> b!4183920 m!4772747))

(assert (=> b!4183921 m!4772797))

(assert (=> d!1234425 d!1234655))

(declare-fun d!1234657 () Bool)

(declare-fun c!714346 () Bool)

(assert (=> d!1234657 (= c!714346 ((_ is Nil!45927) rules!3843))))

(declare-fun e!2597409 () (InoxSet Rule!15088))

(assert (=> d!1234657 (= (content!7138 rules!3843) e!2597409)))

(declare-fun b!4183928 () Bool)

(assert (=> b!4183928 (= e!2597409 ((as const (Array Rule!15088 Bool)) false))))

(declare-fun b!4183929 () Bool)

(assert (=> b!4183929 (= e!2597409 ((_ map or) (store ((as const (Array Rule!15088 Bool)) false) (h!51347 rules!3843) true) (content!7138 (t!345220 rules!3843))))))

(assert (= (and d!1234657 c!714346) b!4183928))

(assert (= (and d!1234657 (not c!714346)) b!4183929))

(declare-fun m!4772835 () Bool)

(assert (=> b!4183929 m!4772835))

(assert (=> b!4183929 m!4772433))

(assert (=> d!1234451 d!1234657))

(declare-fun b!4183930 () Bool)

(declare-fun res!1715936 () Bool)

(declare-fun e!2597411 () Bool)

(assert (=> b!4183930 (=> (not res!1715936) (not e!2597411))))

(declare-fun call!291854 () Bool)

(assert (=> b!4183930 (= res!1715936 (not call!291854))))

(declare-fun b!4183931 () Bool)

(declare-fun e!2597416 () Bool)

(declare-fun e!2597414 () Bool)

(assert (=> b!4183931 (= e!2597416 e!2597414)))

(declare-fun res!1715935 () Bool)

(assert (=> b!4183931 (=> (not res!1715935) (not e!2597414))))

(declare-fun lt!1489992 () Bool)

(assert (=> b!4183931 (= res!1715935 (not lt!1489992))))

(declare-fun b!4183932 () Bool)

(declare-fun res!1715933 () Bool)

(assert (=> b!4183932 (=> res!1715933 e!2597416)))

(assert (=> b!4183932 (= res!1715933 (not ((_ is ElementMatch!12549) (regex!7644 r!4142))))))

(declare-fun e!2597413 () Bool)

(assert (=> b!4183932 (= e!2597413 e!2597416)))

(declare-fun b!4183933 () Bool)

(declare-fun e!2597415 () Bool)

(assert (=> b!4183933 (= e!2597415 (matchR!6288 (derivativeStep!3791 (regex!7644 r!4142) (head!8878 (_1!25003 (findLongestMatchInner!1591 (regex!7644 r!4142) Nil!45925 (size!33728 Nil!45925) input!3342 input!3342 (size!33728 input!3342))))) (tail!6725 (_1!25003 (findLongestMatchInner!1591 (regex!7644 r!4142) Nil!45925 (size!33728 Nil!45925) input!3342 input!3342 (size!33728 input!3342))))))))

(declare-fun b!4183934 () Bool)

(declare-fun res!1715938 () Bool)

(declare-fun e!2597412 () Bool)

(assert (=> b!4183934 (=> res!1715938 e!2597412)))

(assert (=> b!4183934 (= res!1715938 (not (isEmpty!27179 (tail!6725 (_1!25003 (findLongestMatchInner!1591 (regex!7644 r!4142) Nil!45925 (size!33728 Nil!45925) input!3342 input!3342 (size!33728 input!3342)))))))))

(declare-fun b!4183935 () Bool)

(declare-fun res!1715932 () Bool)

(assert (=> b!4183935 (=> res!1715932 e!2597416)))

(assert (=> b!4183935 (= res!1715932 e!2597411)))

(declare-fun res!1715934 () Bool)

(assert (=> b!4183935 (=> (not res!1715934) (not e!2597411))))

(assert (=> b!4183935 (= res!1715934 lt!1489992)))

(declare-fun b!4183936 () Bool)

(assert (=> b!4183936 (= e!2597412 (not (= (head!8878 (_1!25003 (findLongestMatchInner!1591 (regex!7644 r!4142) Nil!45925 (size!33728 Nil!45925) input!3342 input!3342 (size!33728 input!3342)))) (c!714183 (regex!7644 r!4142)))))))

(declare-fun b!4183937 () Bool)

(declare-fun e!2597410 () Bool)

(assert (=> b!4183937 (= e!2597410 (= lt!1489992 call!291854))))

(declare-fun d!1234659 () Bool)

(assert (=> d!1234659 e!2597410))

(declare-fun c!714347 () Bool)

(assert (=> d!1234659 (= c!714347 ((_ is EmptyExpr!12549) (regex!7644 r!4142)))))

(assert (=> d!1234659 (= lt!1489992 e!2597415)))

(declare-fun c!714349 () Bool)

(assert (=> d!1234659 (= c!714349 (isEmpty!27179 (_1!25003 (findLongestMatchInner!1591 (regex!7644 r!4142) Nil!45925 (size!33728 Nil!45925) input!3342 input!3342 (size!33728 input!3342)))))))

(assert (=> d!1234659 (validRegex!5666 (regex!7644 r!4142))))

(assert (=> d!1234659 (= (matchR!6288 (regex!7644 r!4142) (_1!25003 (findLongestMatchInner!1591 (regex!7644 r!4142) Nil!45925 (size!33728 Nil!45925) input!3342 input!3342 (size!33728 input!3342)))) lt!1489992)))

(declare-fun b!4183938 () Bool)

(assert (=> b!4183938 (= e!2597414 e!2597412)))

(declare-fun res!1715931 () Bool)

(assert (=> b!4183938 (=> res!1715931 e!2597412)))

(assert (=> b!4183938 (= res!1715931 call!291854)))

(declare-fun b!4183939 () Bool)

(declare-fun res!1715937 () Bool)

(assert (=> b!4183939 (=> (not res!1715937) (not e!2597411))))

(assert (=> b!4183939 (= res!1715937 (isEmpty!27179 (tail!6725 (_1!25003 (findLongestMatchInner!1591 (regex!7644 r!4142) Nil!45925 (size!33728 Nil!45925) input!3342 input!3342 (size!33728 input!3342))))))))

(declare-fun b!4183940 () Bool)

(assert (=> b!4183940 (= e!2597413 (not lt!1489992))))

(declare-fun b!4183941 () Bool)

(assert (=> b!4183941 (= e!2597415 (nullable!4401 (regex!7644 r!4142)))))

(declare-fun bm!291849 () Bool)

(assert (=> bm!291849 (= call!291854 (isEmpty!27179 (_1!25003 (findLongestMatchInner!1591 (regex!7644 r!4142) Nil!45925 (size!33728 Nil!45925) input!3342 input!3342 (size!33728 input!3342)))))))

(declare-fun b!4183942 () Bool)

(assert (=> b!4183942 (= e!2597411 (= (head!8878 (_1!25003 (findLongestMatchInner!1591 (regex!7644 r!4142) Nil!45925 (size!33728 Nil!45925) input!3342 input!3342 (size!33728 input!3342)))) (c!714183 (regex!7644 r!4142))))))

(declare-fun b!4183943 () Bool)

(assert (=> b!4183943 (= e!2597410 e!2597413)))

(declare-fun c!714348 () Bool)

(assert (=> b!4183943 (= c!714348 ((_ is EmptyLang!12549) (regex!7644 r!4142)))))

(assert (= (and d!1234659 c!714349) b!4183941))

(assert (= (and d!1234659 (not c!714349)) b!4183933))

(assert (= (and d!1234659 c!714347) b!4183937))

(assert (= (and d!1234659 (not c!714347)) b!4183943))

(assert (= (and b!4183943 c!714348) b!4183940))

(assert (= (and b!4183943 (not c!714348)) b!4183932))

(assert (= (and b!4183932 (not res!1715933)) b!4183935))

(assert (= (and b!4183935 res!1715934) b!4183930))

(assert (= (and b!4183930 res!1715936) b!4183939))

(assert (= (and b!4183939 res!1715937) b!4183942))

(assert (= (and b!4183935 (not res!1715932)) b!4183931))

(assert (= (and b!4183931 res!1715935) b!4183938))

(assert (= (and b!4183938 (not res!1715931)) b!4183934))

(assert (= (and b!4183934 (not res!1715938)) b!4183936))

(assert (= (or b!4183937 b!4183930 b!4183938) bm!291849))

(assert (=> bm!291849 m!4772079))

(declare-fun m!4772837 () Bool)

(assert (=> b!4183939 m!4772837))

(assert (=> b!4183939 m!4772837))

(declare-fun m!4772839 () Bool)

(assert (=> b!4183939 m!4772839))

(assert (=> d!1234659 m!4772079))

(assert (=> d!1234659 m!4771759))

(assert (=> b!4183934 m!4772837))

(assert (=> b!4183934 m!4772837))

(assert (=> b!4183934 m!4772839))

(declare-fun m!4772841 () Bool)

(assert (=> b!4183942 m!4772841))

(assert (=> b!4183936 m!4772841))

(assert (=> b!4183933 m!4772841))

(assert (=> b!4183933 m!4772841))

(declare-fun m!4772843 () Bool)

(assert (=> b!4183933 m!4772843))

(assert (=> b!4183933 m!4772837))

(assert (=> b!4183933 m!4772843))

(assert (=> b!4183933 m!4772837))

(declare-fun m!4772845 () Bool)

(assert (=> b!4183933 m!4772845))

(assert (=> b!4183941 m!4772219))

(assert (=> b!4183315 d!1234659))

(assert (=> b!4183315 d!1234507))

(assert (=> b!4183315 d!1234519))

(assert (=> b!4183315 d!1234443))

(assert (=> b!4183476 d!1234573))

(declare-fun d!1234661 () Bool)

(assert (=> d!1234661 (= (apply!10609 (transformation!7644 rBis!167) (seqFromList!5669 (_1!25003 lt!1489778))) (dynLambda!19717 (toValue!10336 (transformation!7644 rBis!167)) (seqFromList!5669 (_1!25003 lt!1489778))))))

(declare-fun b_lambda!122965 () Bool)

(assert (=> (not b_lambda!122965) (not d!1234661)))

(declare-fun t!345345 () Bool)

(declare-fun tb!250507 () Bool)

(assert (=> (and b!4183047 (= (toValue!10336 (transformation!7644 (h!51347 rules!3843))) (toValue!10336 (transformation!7644 rBis!167))) t!345345) tb!250507))

(declare-fun result!305268 () Bool)

(assert (=> tb!250507 (= result!305268 (inv!21 (dynLambda!19717 (toValue!10336 (transformation!7644 rBis!167)) (seqFromList!5669 (_1!25003 lt!1489778)))))))

(declare-fun m!4772847 () Bool)

(assert (=> tb!250507 m!4772847))

(assert (=> d!1234661 t!345345))

(declare-fun b_and!327453 () Bool)

(assert (= b_and!327437 (and (=> t!345345 result!305268) b_and!327453)))

(declare-fun t!345347 () Bool)

(declare-fun tb!250509 () Bool)

(assert (=> (and b!4183060 (= (toValue!10336 (transformation!7644 rBis!167)) (toValue!10336 (transformation!7644 rBis!167))) t!345347) tb!250509))

(declare-fun result!305270 () Bool)

(assert (= result!305270 result!305268))

(assert (=> d!1234661 t!345347))

(declare-fun b_and!327455 () Bool)

(assert (= b_and!327439 (and (=> t!345347 result!305270) b_and!327455)))

(declare-fun tb!250511 () Bool)

(declare-fun t!345349 () Bool)

(assert (=> (and b!4183068 (= (toValue!10336 (transformation!7644 r!4142)) (toValue!10336 (transformation!7644 rBis!167))) t!345349) tb!250511))

(declare-fun result!305272 () Bool)

(assert (= result!305272 result!305268))

(assert (=> d!1234661 t!345349))

(declare-fun b_and!327457 () Bool)

(assert (= b_and!327441 (and (=> t!345349 result!305272) b_and!327457)))

(declare-fun tb!250513 () Bool)

(declare-fun t!345351 () Bool)

(assert (=> (and b!4183600 (= (toValue!10336 (transformation!7644 (h!51347 (t!345220 rules!3843)))) (toValue!10336 (transformation!7644 rBis!167))) t!345351) tb!250513))

(declare-fun result!305274 () Bool)

(assert (= result!305274 result!305268))

(assert (=> d!1234661 t!345351))

(declare-fun b_and!327459 () Bool)

(assert (= b_and!327443 (and (=> t!345351 result!305274) b_and!327459)))

(assert (=> d!1234661 m!4772285))

(declare-fun m!4772849 () Bool)

(assert (=> d!1234661 m!4772849))

(assert (=> b!4183476 d!1234661))

(declare-fun d!1234663 () Bool)

(assert (=> d!1234663 (= (isEmpty!27179 (_1!25003 (findLongestMatchInner!1591 (regex!7644 rBis!167) Nil!45925 (size!33728 Nil!45925) input!3342 input!3342 (size!33728 input!3342)))) ((_ is Nil!45925) (_1!25003 (findLongestMatchInner!1591 (regex!7644 rBis!167) Nil!45925 (size!33728 Nil!45925) input!3342 input!3342 (size!33728 input!3342)))))))

(assert (=> b!4183476 d!1234663))

(assert (=> b!4183476 d!1234519))

(declare-fun d!1234665 () Bool)

(declare-fun lt!1489993 () Int)

(assert (=> d!1234665 (= lt!1489993 (size!33728 (list!16585 (seqFromList!5669 (_1!25003 lt!1489778)))))))

(assert (=> d!1234665 (= lt!1489993 (size!33731 (c!714182 (seqFromList!5669 (_1!25003 lt!1489778)))))))

(assert (=> d!1234665 (= (size!33730 (seqFromList!5669 (_1!25003 lt!1489778))) lt!1489993)))

(declare-fun bs!596423 () Bool)

(assert (= bs!596423 d!1234665))

(assert (=> bs!596423 m!4772285))

(declare-fun m!4772851 () Bool)

(assert (=> bs!596423 m!4772851))

(assert (=> bs!596423 m!4772851))

(declare-fun m!4772853 () Bool)

(assert (=> bs!596423 m!4772853))

(declare-fun m!4772855 () Bool)

(assert (=> bs!596423 m!4772855))

(assert (=> b!4183476 d!1234665))

(declare-fun d!1234667 () Bool)

(declare-fun e!2597418 () Bool)

(assert (=> d!1234667 e!2597418))

(declare-fun res!1715939 () Bool)

(assert (=> d!1234667 (=> res!1715939 e!2597418)))

(assert (=> d!1234667 (= res!1715939 (isEmpty!27179 (_1!25003 (findLongestMatchInner!1591 (regex!7644 rBis!167) Nil!45925 (size!33728 Nil!45925) input!3342 input!3342 (size!33728 input!3342)))))))

(declare-fun lt!1489994 () Unit!65011)

(assert (=> d!1234667 (= lt!1489994 (choose!25609 (regex!7644 rBis!167) input!3342))))

(assert (=> d!1234667 (validRegex!5666 (regex!7644 rBis!167))))

(assert (=> d!1234667 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1564 (regex!7644 rBis!167) input!3342) lt!1489994)))

(declare-fun b!4183944 () Bool)

(assert (=> b!4183944 (= e!2597418 (matchR!6288 (regex!7644 rBis!167) (_1!25003 (findLongestMatchInner!1591 (regex!7644 rBis!167) Nil!45925 (size!33728 Nil!45925) input!3342 input!3342 (size!33728 input!3342)))))))

(assert (= (and d!1234667 (not res!1715939)) b!4183944))

(declare-fun m!4772857 () Bool)

(assert (=> d!1234667 m!4772857))

(assert (=> d!1234667 m!4771763))

(assert (=> d!1234667 m!4772347))

(assert (=> d!1234667 m!4772073))

(assert (=> d!1234667 m!4771763))

(assert (=> d!1234667 m!4772279))

(assert (=> d!1234667 m!4772283))

(assert (=> d!1234667 m!4772073))

(assert (=> b!4183944 m!4772073))

(assert (=> b!4183944 m!4771763))

(assert (=> b!4183944 m!4772073))

(assert (=> b!4183944 m!4771763))

(assert (=> b!4183944 m!4772279))

(assert (=> b!4183944 m!4772281))

(assert (=> b!4183476 d!1234667))

(assert (=> b!4183476 d!1234443))

(declare-fun d!1234669 () Bool)

(assert (=> d!1234669 (= (seqFromList!5669 (_1!25003 lt!1489778)) (fromListB!2592 (_1!25003 lt!1489778)))))

(declare-fun bs!596424 () Bool)

(assert (= bs!596424 d!1234669))

(declare-fun m!4772859 () Bool)

(assert (=> bs!596424 m!4772859))

(assert (=> b!4183476 d!1234669))

(declare-fun bs!596425 () Bool)

(declare-fun d!1234671 () Bool)

(assert (= bs!596425 (and d!1234671 d!1234393)))

(declare-fun lambda!129411 () Int)

(assert (=> bs!596425 (= (and (= (toChars!10195 (transformation!7644 rBis!167)) (toChars!10195 (transformation!7644 r!4142))) (= (toValue!10336 (transformation!7644 rBis!167)) (toValue!10336 (transformation!7644 r!4142)))) (= lambda!129411 lambda!129397))))

(declare-fun bs!596426 () Bool)

(assert (= bs!596426 (and d!1234671 d!1234513)))

(assert (=> bs!596426 (= (and (= (toChars!10195 (transformation!7644 rBis!167)) (toChars!10195 (transformation!7644 r!4142))) (= (toValue!10336 (transformation!7644 rBis!167)) (toValue!10336 (transformation!7644 r!4142)))) (= lambda!129411 lambda!129401))))

(declare-fun bs!596427 () Bool)

(assert (= bs!596427 (and d!1234671 d!1234593)))

(assert (=> bs!596427 (= lambda!129411 lambda!129404)))

(declare-fun bs!596428 () Bool)

(assert (= bs!596428 (and d!1234671 d!1234623)))

(assert (=> bs!596428 (= (and (= (toChars!10195 (transformation!7644 rBis!167)) (toChars!10195 (transformation!7644 r!4142))) (= (toValue!10336 (transformation!7644 rBis!167)) (toValue!10336 (transformation!7644 r!4142)))) (= lambda!129411 lambda!129405))))

(declare-fun b!4183945 () Bool)

(declare-fun e!2597419 () Bool)

(assert (=> b!4183945 (= e!2597419 true)))

(assert (=> d!1234671 e!2597419))

(assert (= d!1234671 b!4183945))

(assert (=> b!4183945 (< (dynLambda!19719 order!24249 (toValue!10336 (transformation!7644 rBis!167))) (dynLambda!19720 order!24251 lambda!129411))))

(assert (=> b!4183945 (< (dynLambda!19721 order!24253 (toChars!10195 (transformation!7644 rBis!167))) (dynLambda!19720 order!24251 lambda!129411))))

(assert (=> d!1234671 (= (list!16585 (dynLambda!19716 (toChars!10195 (transformation!7644 rBis!167)) (dynLambda!19717 (toValue!10336 (transformation!7644 rBis!167)) (seqFromList!5669 (_1!25003 lt!1489778))))) (list!16585 (seqFromList!5669 (_1!25003 lt!1489778))))))

(declare-fun lt!1489995 () Unit!65011)

(assert (=> d!1234671 (= lt!1489995 (ForallOf!1043 lambda!129411 (seqFromList!5669 (_1!25003 lt!1489778))))))

(assert (=> d!1234671 (= (lemmaSemiInverse!2410 (transformation!7644 rBis!167) (seqFromList!5669 (_1!25003 lt!1489778))) lt!1489995)))

(declare-fun b_lambda!122967 () Bool)

(assert (=> (not b_lambda!122967) (not d!1234671)))

(declare-fun tb!250515 () Bool)

(declare-fun t!345353 () Bool)

(assert (=> (and b!4183047 (= (toChars!10195 (transformation!7644 (h!51347 rules!3843))) (toChars!10195 (transformation!7644 rBis!167))) t!345353) tb!250515))

(declare-fun b!4183946 () Bool)

(declare-fun e!2597420 () Bool)

(declare-fun tp!1278591 () Bool)

(assert (=> b!4183946 (= e!2597420 (and (inv!60468 (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 rBis!167)) (dynLambda!19717 (toValue!10336 (transformation!7644 rBis!167)) (seqFromList!5669 (_1!25003 lt!1489778)))))) tp!1278591))))

(declare-fun result!305276 () Bool)

(assert (=> tb!250515 (= result!305276 (and (inv!60469 (dynLambda!19716 (toChars!10195 (transformation!7644 rBis!167)) (dynLambda!19717 (toValue!10336 (transformation!7644 rBis!167)) (seqFromList!5669 (_1!25003 lt!1489778))))) e!2597420))))

(assert (= tb!250515 b!4183946))

(declare-fun m!4772861 () Bool)

(assert (=> b!4183946 m!4772861))

(declare-fun m!4772863 () Bool)

(assert (=> tb!250515 m!4772863))

(assert (=> d!1234671 t!345353))

(declare-fun b_and!327461 () Bool)

(assert (= b_and!327445 (and (=> t!345353 result!305276) b_and!327461)))

(declare-fun t!345355 () Bool)

(declare-fun tb!250517 () Bool)

(assert (=> (and b!4183060 (= (toChars!10195 (transformation!7644 rBis!167)) (toChars!10195 (transformation!7644 rBis!167))) t!345355) tb!250517))

(declare-fun result!305278 () Bool)

(assert (= result!305278 result!305276))

(assert (=> d!1234671 t!345355))

(declare-fun b_and!327463 () Bool)

(assert (= b_and!327447 (and (=> t!345355 result!305278) b_and!327463)))

(declare-fun tb!250519 () Bool)

(declare-fun t!345357 () Bool)

(assert (=> (and b!4183068 (= (toChars!10195 (transformation!7644 r!4142)) (toChars!10195 (transformation!7644 rBis!167))) t!345357) tb!250519))

(declare-fun result!305280 () Bool)

(assert (= result!305280 result!305276))

(assert (=> d!1234671 t!345357))

(declare-fun b_and!327465 () Bool)

(assert (= b_and!327449 (and (=> t!345357 result!305280) b_and!327465)))

(declare-fun t!345359 () Bool)

(declare-fun tb!250521 () Bool)

(assert (=> (and b!4183600 (= (toChars!10195 (transformation!7644 (h!51347 (t!345220 rules!3843)))) (toChars!10195 (transformation!7644 rBis!167))) t!345359) tb!250521))

(declare-fun result!305282 () Bool)

(assert (= result!305282 result!305276))

(assert (=> d!1234671 t!345359))

(declare-fun b_and!327467 () Bool)

(assert (= b_and!327451 (and (=> t!345359 result!305282) b_and!327467)))

(declare-fun b_lambda!122969 () Bool)

(assert (=> (not b_lambda!122969) (not d!1234671)))

(assert (=> d!1234671 t!345345))

(declare-fun b_and!327469 () Bool)

(assert (= b_and!327453 (and (=> t!345345 result!305268) b_and!327469)))

(assert (=> d!1234671 t!345347))

(declare-fun b_and!327471 () Bool)

(assert (= b_and!327455 (and (=> t!345347 result!305270) b_and!327471)))

(assert (=> d!1234671 t!345349))

(declare-fun b_and!327473 () Bool)

(assert (= b_and!327457 (and (=> t!345349 result!305272) b_and!327473)))

(assert (=> d!1234671 t!345351))

(declare-fun b_and!327475 () Bool)

(assert (= b_and!327459 (and (=> t!345351 result!305274) b_and!327475)))

(assert (=> d!1234671 m!4772285))

(assert (=> d!1234671 m!4772849))

(declare-fun m!4772865 () Bool)

(assert (=> d!1234671 m!4772865))

(declare-fun m!4772867 () Bool)

(assert (=> d!1234671 m!4772867))

(assert (=> d!1234671 m!4772285))

(assert (=> d!1234671 m!4772851))

(assert (=> d!1234671 m!4772285))

(declare-fun m!4772869 () Bool)

(assert (=> d!1234671 m!4772869))

(assert (=> d!1234671 m!4772849))

(assert (=> d!1234671 m!4772865))

(assert (=> b!4183476 d!1234671))

(assert (=> b!4183557 d!1234529))

(declare-fun d!1234673 () Bool)

(declare-fun e!2597421 () Bool)

(assert (=> d!1234673 e!2597421))

(declare-fun res!1715941 () Bool)

(assert (=> d!1234673 (=> (not res!1715941) (not e!2597421))))

(declare-fun lt!1489996 () List!46049)

(assert (=> d!1234673 (= res!1715941 (= (content!7137 lt!1489996) ((_ map or) (content!7137 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489777))))) (content!7137 (_2!25001 (get!14925 lt!1489777))))))))

(declare-fun e!2597422 () List!46049)

(assert (=> d!1234673 (= lt!1489996 e!2597422)))

(declare-fun c!714350 () Bool)

(assert (=> d!1234673 (= c!714350 ((_ is Nil!45925) (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489777))))))))

(assert (=> d!1234673 (= (++!11716 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489777)))) (_2!25001 (get!14925 lt!1489777))) lt!1489996)))

(declare-fun b!4183949 () Bool)

(declare-fun res!1715940 () Bool)

(assert (=> b!4183949 (=> (not res!1715940) (not e!2597421))))

(assert (=> b!4183949 (= res!1715940 (= (size!33728 lt!1489996) (+ (size!33728 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489777))))) (size!33728 (_2!25001 (get!14925 lt!1489777))))))))

(declare-fun b!4183950 () Bool)

(assert (=> b!4183950 (= e!2597421 (or (not (= (_2!25001 (get!14925 lt!1489777)) Nil!45925)) (= lt!1489996 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489777)))))))))

(declare-fun b!4183947 () Bool)

(assert (=> b!4183947 (= e!2597422 (_2!25001 (get!14925 lt!1489777)))))

(declare-fun b!4183948 () Bool)

(assert (=> b!4183948 (= e!2597422 (Cons!45925 (h!51345 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489777))))) (++!11716 (t!345218 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489777))))) (_2!25001 (get!14925 lt!1489777)))))))

(assert (= (and d!1234673 c!714350) b!4183947))

(assert (= (and d!1234673 (not c!714350)) b!4183948))

(assert (= (and d!1234673 res!1715941) b!4183949))

(assert (= (and b!4183949 res!1715940) b!4183950))

(declare-fun m!4772871 () Bool)

(assert (=> d!1234673 m!4772871))

(assert (=> d!1234673 m!4772275))

(declare-fun m!4772873 () Bool)

(assert (=> d!1234673 m!4772873))

(declare-fun m!4772875 () Bool)

(assert (=> d!1234673 m!4772875))

(declare-fun m!4772877 () Bool)

(assert (=> b!4183949 m!4772877))

(assert (=> b!4183949 m!4772275))

(declare-fun m!4772879 () Bool)

(assert (=> b!4183949 m!4772879))

(assert (=> b!4183949 m!4772299))

(declare-fun m!4772881 () Bool)

(assert (=> b!4183948 m!4772881))

(assert (=> b!4183474 d!1234673))

(assert (=> b!4183474 d!1234555))

(assert (=> b!4183474 d!1234557))

(assert (=> b!4183474 d!1234503))

(declare-fun d!1234675 () Bool)

(declare-fun c!714351 () Bool)

(assert (=> d!1234675 (= c!714351 ((_ is Node!13855) (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 lt!1489624)))) (value!238386 (_1!25001 lt!1489624))))))))

(declare-fun e!2597423 () Bool)

(assert (=> d!1234675 (= (inv!60468 (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 lt!1489624)))) (value!238386 (_1!25001 lt!1489624))))) e!2597423)))

(declare-fun b!4183951 () Bool)

(assert (=> b!4183951 (= e!2597423 (inv!60472 (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 lt!1489624)))) (value!238386 (_1!25001 lt!1489624))))))))

(declare-fun b!4183952 () Bool)

(declare-fun e!2597424 () Bool)

(assert (=> b!4183952 (= e!2597423 e!2597424)))

(declare-fun res!1715942 () Bool)

(assert (=> b!4183952 (= res!1715942 (not ((_ is Leaf!21420) (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 lt!1489624)))) (value!238386 (_1!25001 lt!1489624)))))))))

(assert (=> b!4183952 (=> res!1715942 e!2597424)))

(declare-fun b!4183953 () Bool)

(assert (=> b!4183953 (= e!2597424 (inv!60473 (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 lt!1489624)))) (value!238386 (_1!25001 lt!1489624))))))))

(assert (= (and d!1234675 c!714351) b!4183951))

(assert (= (and d!1234675 (not c!714351)) b!4183952))

(assert (= (and b!4183952 (not res!1715942)) b!4183953))

(declare-fun m!4772883 () Bool)

(assert (=> b!4183951 m!4772883))

(declare-fun m!4772885 () Bool)

(assert (=> b!4183953 m!4772885))

(assert (=> b!4183373 d!1234675))

(assert (=> b!4183478 d!1234503))

(declare-fun d!1234677 () Bool)

(assert (=> d!1234677 (= (apply!10609 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489777)))) (seqFromList!5669 (originalCharacters!8032 (_1!25001 (get!14925 lt!1489777))))) (dynLambda!19717 (toValue!10336 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489777))))) (seqFromList!5669 (originalCharacters!8032 (_1!25001 (get!14925 lt!1489777))))))))

(declare-fun b_lambda!122971 () Bool)

(assert (=> (not b_lambda!122971) (not d!1234677)))

(declare-fun tb!250523 () Bool)

(declare-fun t!345361 () Bool)

(assert (=> (and b!4183047 (= (toValue!10336 (transformation!7644 (h!51347 rules!3843))) (toValue!10336 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489777)))))) t!345361) tb!250523))

(declare-fun result!305284 () Bool)

(assert (=> tb!250523 (= result!305284 (inv!21 (dynLambda!19717 (toValue!10336 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489777))))) (seqFromList!5669 (originalCharacters!8032 (_1!25001 (get!14925 lt!1489777)))))))))

(declare-fun m!4772887 () Bool)

(assert (=> tb!250523 m!4772887))

(assert (=> d!1234677 t!345361))

(declare-fun b_and!327477 () Bool)

(assert (= b_and!327469 (and (=> t!345361 result!305284) b_and!327477)))

(declare-fun tb!250525 () Bool)

(declare-fun t!345363 () Bool)

(assert (=> (and b!4183060 (= (toValue!10336 (transformation!7644 rBis!167)) (toValue!10336 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489777)))))) t!345363) tb!250525))

(declare-fun result!305286 () Bool)

(assert (= result!305286 result!305284))

(assert (=> d!1234677 t!345363))

(declare-fun b_and!327479 () Bool)

(assert (= b_and!327471 (and (=> t!345363 result!305286) b_and!327479)))

(declare-fun t!345365 () Bool)

(declare-fun tb!250527 () Bool)

(assert (=> (and b!4183068 (= (toValue!10336 (transformation!7644 r!4142)) (toValue!10336 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489777)))))) t!345365) tb!250527))

(declare-fun result!305288 () Bool)

(assert (= result!305288 result!305284))

(assert (=> d!1234677 t!345365))

(declare-fun b_and!327481 () Bool)

(assert (= b_and!327473 (and (=> t!345365 result!305288) b_and!327481)))

(declare-fun tb!250529 () Bool)

(declare-fun t!345367 () Bool)

(assert (=> (and b!4183600 (= (toValue!10336 (transformation!7644 (h!51347 (t!345220 rules!3843)))) (toValue!10336 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489777)))))) t!345367) tb!250529))

(declare-fun result!305290 () Bool)

(assert (= result!305290 result!305284))

(assert (=> d!1234677 t!345367))

(declare-fun b_and!327483 () Bool)

(assert (= b_and!327475 (and (=> t!345367 result!305290) b_and!327483)))

(assert (=> d!1234677 m!4772295))

(declare-fun m!4772889 () Bool)

(assert (=> d!1234677 m!4772889))

(assert (=> b!4183478 d!1234677))

(declare-fun d!1234679 () Bool)

(assert (=> d!1234679 (= (seqFromList!5669 (originalCharacters!8032 (_1!25001 (get!14925 lt!1489777)))) (fromListB!2592 (originalCharacters!8032 (_1!25001 (get!14925 lt!1489777)))))))

(declare-fun bs!596429 () Bool)

(assert (= bs!596429 d!1234679))

(declare-fun m!4772891 () Bool)

(assert (=> bs!596429 m!4772891))

(assert (=> b!4183478 d!1234679))

(declare-fun call!291855 () Bool)

(declare-fun c!714352 () Bool)

(declare-fun bm!291850 () Bool)

(declare-fun c!714353 () Bool)

(assert (=> bm!291850 (= call!291855 (validRegex!5666 (ite c!714353 (reg!12878 (ite c!714242 (reg!12878 (regex!7644 r!4142)) (ite c!714241 (regTwo!25611 (regex!7644 r!4142)) (regTwo!25610 (regex!7644 r!4142))))) (ite c!714352 (regTwo!25611 (ite c!714242 (reg!12878 (regex!7644 r!4142)) (ite c!714241 (regTwo!25611 (regex!7644 r!4142)) (regTwo!25610 (regex!7644 r!4142))))) (regTwo!25610 (ite c!714242 (reg!12878 (regex!7644 r!4142)) (ite c!714241 (regTwo!25611 (regex!7644 r!4142)) (regTwo!25610 (regex!7644 r!4142)))))))))))

(declare-fun b!4183954 () Bool)

(declare-fun e!2597428 () Bool)

(declare-fun e!2597429 () Bool)

(assert (=> b!4183954 (= e!2597428 e!2597429)))

(assert (=> b!4183954 (= c!714352 ((_ is Union!12549) (ite c!714242 (reg!12878 (regex!7644 r!4142)) (ite c!714241 (regTwo!25611 (regex!7644 r!4142)) (regTwo!25610 (regex!7644 r!4142))))))))

(declare-fun b!4183956 () Bool)

(declare-fun res!1715943 () Bool)

(declare-fun e!2597432 () Bool)

(assert (=> b!4183956 (=> res!1715943 e!2597432)))

(assert (=> b!4183956 (= res!1715943 (not ((_ is Concat!20424) (ite c!714242 (reg!12878 (regex!7644 r!4142)) (ite c!714241 (regTwo!25611 (regex!7644 r!4142)) (regTwo!25610 (regex!7644 r!4142)))))))))

(assert (=> b!4183956 (= e!2597429 e!2597432)))

(declare-fun b!4183957 () Bool)

(declare-fun e!2597426 () Bool)

(assert (=> b!4183957 (= e!2597428 e!2597426)))

(declare-fun res!1715946 () Bool)

(assert (=> b!4183957 (= res!1715946 (not (nullable!4401 (reg!12878 (ite c!714242 (reg!12878 (regex!7644 r!4142)) (ite c!714241 (regTwo!25611 (regex!7644 r!4142)) (regTwo!25610 (regex!7644 r!4142))))))))))

(assert (=> b!4183957 (=> (not res!1715946) (not e!2597426))))

(declare-fun b!4183958 () Bool)

(declare-fun res!1715945 () Bool)

(declare-fun e!2597431 () Bool)

(assert (=> b!4183958 (=> (not res!1715945) (not e!2597431))))

(declare-fun call!291857 () Bool)

(assert (=> b!4183958 (= res!1715945 call!291857)))

(assert (=> b!4183958 (= e!2597429 e!2597431)))

(declare-fun b!4183959 () Bool)

(declare-fun e!2597430 () Bool)

(assert (=> b!4183959 (= e!2597430 e!2597428)))

(assert (=> b!4183959 (= c!714353 ((_ is Star!12549) (ite c!714242 (reg!12878 (regex!7644 r!4142)) (ite c!714241 (regTwo!25611 (regex!7644 r!4142)) (regTwo!25610 (regex!7644 r!4142))))))))

(declare-fun b!4183955 () Bool)

(assert (=> b!4183955 (= e!2597426 call!291855)))

(declare-fun d!1234681 () Bool)

(declare-fun res!1715944 () Bool)

(assert (=> d!1234681 (=> res!1715944 e!2597430)))

(assert (=> d!1234681 (= res!1715944 ((_ is ElementMatch!12549) (ite c!714242 (reg!12878 (regex!7644 r!4142)) (ite c!714241 (regTwo!25611 (regex!7644 r!4142)) (regTwo!25610 (regex!7644 r!4142))))))))

(assert (=> d!1234681 (= (validRegex!5666 (ite c!714242 (reg!12878 (regex!7644 r!4142)) (ite c!714241 (regTwo!25611 (regex!7644 r!4142)) (regTwo!25610 (regex!7644 r!4142))))) e!2597430)))

(declare-fun bm!291851 () Bool)

(assert (=> bm!291851 (= call!291857 (validRegex!5666 (ite c!714352 (regOne!25611 (ite c!714242 (reg!12878 (regex!7644 r!4142)) (ite c!714241 (regTwo!25611 (regex!7644 r!4142)) (regTwo!25610 (regex!7644 r!4142))))) (regOne!25610 (ite c!714242 (reg!12878 (regex!7644 r!4142)) (ite c!714241 (regTwo!25611 (regex!7644 r!4142)) (regTwo!25610 (regex!7644 r!4142))))))))))

(declare-fun b!4183960 () Bool)

(declare-fun call!291856 () Bool)

(assert (=> b!4183960 (= e!2597431 call!291856)))

(declare-fun b!4183961 () Bool)

(declare-fun e!2597427 () Bool)

(assert (=> b!4183961 (= e!2597427 call!291856)))

(declare-fun bm!291852 () Bool)

(assert (=> bm!291852 (= call!291856 call!291855)))

(declare-fun b!4183962 () Bool)

(assert (=> b!4183962 (= e!2597432 e!2597427)))

(declare-fun res!1715947 () Bool)

(assert (=> b!4183962 (=> (not res!1715947) (not e!2597427))))

(assert (=> b!4183962 (= res!1715947 call!291857)))

(assert (= (and d!1234681 (not res!1715944)) b!4183959))

(assert (= (and b!4183959 c!714353) b!4183957))

(assert (= (and b!4183959 (not c!714353)) b!4183954))

(assert (= (and b!4183957 res!1715946) b!4183955))

(assert (= (and b!4183954 c!714352) b!4183958))

(assert (= (and b!4183954 (not c!714352)) b!4183956))

(assert (= (and b!4183958 res!1715945) b!4183960))

(assert (= (and b!4183956 (not res!1715943)) b!4183962))

(assert (= (and b!4183962 res!1715947) b!4183961))

(assert (= (or b!4183960 b!4183961) bm!291852))

(assert (= (or b!4183958 b!4183962) bm!291851))

(assert (= (or b!4183955 bm!291852) bm!291850))

(declare-fun m!4772893 () Bool)

(assert (=> bm!291850 m!4772893))

(declare-fun m!4772895 () Bool)

(assert (=> b!4183957 m!4772895))

(declare-fun m!4772897 () Bool)

(assert (=> bm!291851 m!4772897))

(assert (=> bm!291786 d!1234681))

(assert (=> d!1234419 d!1234447))

(declare-fun d!1234683 () Bool)

(declare-fun c!714354 () Bool)

(assert (=> d!1234683 (= c!714354 ((_ is Node!13855) (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 lt!1489633))) (value!238386 lt!1489633)))))))

(declare-fun e!2597433 () Bool)

(assert (=> d!1234683 (= (inv!60468 (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 lt!1489633))) (value!238386 lt!1489633)))) e!2597433)))

(declare-fun b!4183963 () Bool)

(assert (=> b!4183963 (= e!2597433 (inv!60472 (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 lt!1489633))) (value!238386 lt!1489633)))))))

(declare-fun b!4183964 () Bool)

(declare-fun e!2597434 () Bool)

(assert (=> b!4183964 (= e!2597433 e!2597434)))

(declare-fun res!1715948 () Bool)

(assert (=> b!4183964 (= res!1715948 (not ((_ is Leaf!21420) (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 lt!1489633))) (value!238386 lt!1489633))))))))

(assert (=> b!4183964 (=> res!1715948 e!2597434)))

(declare-fun b!4183965 () Bool)

(assert (=> b!4183965 (= e!2597434 (inv!60473 (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 lt!1489633))) (value!238386 lt!1489633)))))))

(assert (= (and d!1234683 c!714354) b!4183963))

(assert (= (and d!1234683 (not c!714354)) b!4183964))

(assert (= (and b!4183964 (not res!1715948)) b!4183965))

(declare-fun m!4772899 () Bool)

(assert (=> b!4183963 m!4772899))

(declare-fun m!4772901 () Bool)

(assert (=> b!4183965 m!4772901))

(assert (=> b!4183142 d!1234683))

(declare-fun bs!596430 () Bool)

(declare-fun d!1234685 () Bool)

(assert (= bs!596430 (and d!1234685 d!1234655)))

(declare-fun lambda!129414 () Int)

(assert (=> bs!596430 (= lambda!129414 lambda!129410)))

(assert (=> d!1234685 true))

(declare-fun lt!1489999 () Bool)

(assert (=> d!1234685 (= lt!1489999 (rulesValidInductive!2815 thiss!25986 rules!3843))))

(assert (=> d!1234685 (= lt!1489999 (forall!8477 rules!3843 lambda!129414))))

(assert (=> d!1234685 (= (rulesValid!2977 thiss!25986 rules!3843) lt!1489999)))

(declare-fun bs!596431 () Bool)

(assert (= bs!596431 d!1234685))

(assert (=> bs!596431 m!4772255))

(declare-fun m!4772903 () Bool)

(assert (=> bs!596431 m!4772903))

(assert (=> d!1234431 d!1234685))

(assert (=> bm!291791 d!1234569))

(declare-fun d!1234687 () Bool)

(declare-fun lt!1490000 () Int)

(assert (=> d!1234687 (>= lt!1490000 0)))

(declare-fun e!2597435 () Int)

(assert (=> d!1234687 (= lt!1490000 e!2597435)))

(declare-fun c!714355 () Bool)

(assert (=> d!1234687 (= c!714355 ((_ is Nil!45925) (_2!25001 (get!14925 lt!1489777))))))

(assert (=> d!1234687 (= (size!33728 (_2!25001 (get!14925 lt!1489777))) lt!1490000)))

(declare-fun b!4183966 () Bool)

(assert (=> b!4183966 (= e!2597435 0)))

(declare-fun b!4183967 () Bool)

(assert (=> b!4183967 (= e!2597435 (+ 1 (size!33728 (t!345218 (_2!25001 (get!14925 lt!1489777))))))))

(assert (= (and d!1234687 c!714355) b!4183966))

(assert (= (and d!1234687 (not c!714355)) b!4183967))

(declare-fun m!4772905 () Bool)

(assert (=> b!4183967 m!4772905))

(assert (=> b!4183480 d!1234687))

(assert (=> b!4183480 d!1234503))

(assert (=> b!4183480 d!1234443))

(declare-fun b!4183978 () Bool)

(declare-fun e!2597444 () Bool)

(declare-fun inv!16 (TokenValue!7874) Bool)

(assert (=> b!4183978 (= e!2597444 (inv!16 (dynLambda!19717 (toValue!10336 (transformation!7644 r!4142)) lt!1489628)))))

(declare-fun b!4183979 () Bool)

(declare-fun e!2597442 () Bool)

(declare-fun inv!15 (TokenValue!7874) Bool)

(assert (=> b!4183979 (= e!2597442 (inv!15 (dynLambda!19717 (toValue!10336 (transformation!7644 r!4142)) lt!1489628)))))

(declare-fun d!1234689 () Bool)

(declare-fun c!714360 () Bool)

(assert (=> d!1234689 (= c!714360 ((_ is IntegerValue!23622) (dynLambda!19717 (toValue!10336 (transformation!7644 r!4142)) lt!1489628)))))

(assert (=> d!1234689 (= (inv!21 (dynLambda!19717 (toValue!10336 (transformation!7644 r!4142)) lt!1489628)) e!2597444)))

(declare-fun b!4183980 () Bool)

(declare-fun e!2597443 () Bool)

(declare-fun inv!17 (TokenValue!7874) Bool)

(assert (=> b!4183980 (= e!2597443 (inv!17 (dynLambda!19717 (toValue!10336 (transformation!7644 r!4142)) lt!1489628)))))

(declare-fun b!4183981 () Bool)

(assert (=> b!4183981 (= e!2597444 e!2597443)))

(declare-fun c!714361 () Bool)

(assert (=> b!4183981 (= c!714361 ((_ is IntegerValue!23623) (dynLambda!19717 (toValue!10336 (transformation!7644 r!4142)) lt!1489628)))))

(declare-fun b!4183982 () Bool)

(declare-fun res!1715951 () Bool)

(assert (=> b!4183982 (=> res!1715951 e!2597442)))

(assert (=> b!4183982 (= res!1715951 (not ((_ is IntegerValue!23624) (dynLambda!19717 (toValue!10336 (transformation!7644 r!4142)) lt!1489628))))))

(assert (=> b!4183982 (= e!2597443 e!2597442)))

(assert (= (and d!1234689 c!714360) b!4183978))

(assert (= (and d!1234689 (not c!714360)) b!4183981))

(assert (= (and b!4183981 c!714361) b!4183980))

(assert (= (and b!4183981 (not c!714361)) b!4183982))

(assert (= (and b!4183982 (not res!1715951)) b!4183979))

(declare-fun m!4772907 () Bool)

(assert (=> b!4183978 m!4772907))

(declare-fun m!4772909 () Bool)

(assert (=> b!4183979 m!4772909))

(declare-fun m!4772911 () Bool)

(assert (=> b!4183980 m!4772911))

(assert (=> tb!250393 d!1234689))

(declare-fun b!4183986 () Bool)

(declare-fun e!2597445 () Bool)

(assert (=> b!4183986 (= e!2597445 (>= (size!33728 (tail!6725 (++!11716 lt!1489629 (_2!25001 lt!1489624)))) (size!33728 (tail!6725 lt!1489629))))))

(declare-fun b!4183984 () Bool)

(declare-fun res!1715953 () Bool)

(declare-fun e!2597446 () Bool)

(assert (=> b!4183984 (=> (not res!1715953) (not e!2597446))))

(assert (=> b!4183984 (= res!1715953 (= (head!8878 (tail!6725 lt!1489629)) (head!8878 (tail!6725 (++!11716 lt!1489629 (_2!25001 lt!1489624))))))))

(declare-fun d!1234691 () Bool)

(assert (=> d!1234691 e!2597445))

(declare-fun res!1715955 () Bool)

(assert (=> d!1234691 (=> res!1715955 e!2597445)))

(declare-fun lt!1490001 () Bool)

(assert (=> d!1234691 (= res!1715955 (not lt!1490001))))

(declare-fun e!2597447 () Bool)

(assert (=> d!1234691 (= lt!1490001 e!2597447)))

(declare-fun res!1715954 () Bool)

(assert (=> d!1234691 (=> res!1715954 e!2597447)))

(assert (=> d!1234691 (= res!1715954 ((_ is Nil!45925) (tail!6725 lt!1489629)))))

(assert (=> d!1234691 (= (isPrefix!4501 (tail!6725 lt!1489629) (tail!6725 (++!11716 lt!1489629 (_2!25001 lt!1489624)))) lt!1490001)))

(declare-fun b!4183983 () Bool)

(assert (=> b!4183983 (= e!2597447 e!2597446)))

(declare-fun res!1715952 () Bool)

(assert (=> b!4183983 (=> (not res!1715952) (not e!2597446))))

(assert (=> b!4183983 (= res!1715952 (not ((_ is Nil!45925) (tail!6725 (++!11716 lt!1489629 (_2!25001 lt!1489624))))))))

(declare-fun b!4183985 () Bool)

(assert (=> b!4183985 (= e!2597446 (isPrefix!4501 (tail!6725 (tail!6725 lt!1489629)) (tail!6725 (tail!6725 (++!11716 lt!1489629 (_2!25001 lt!1489624))))))))

(assert (= (and d!1234691 (not res!1715954)) b!4183983))

(assert (= (and b!4183983 res!1715952) b!4183984))

(assert (= (and b!4183984 res!1715953) b!4183985))

(assert (= (and d!1234691 (not res!1715955)) b!4183986))

(assert (=> b!4183986 m!4772199))

(declare-fun m!4772913 () Bool)

(assert (=> b!4183986 m!4772913))

(assert (=> b!4183986 m!4772197))

(declare-fun m!4772915 () Bool)

(assert (=> b!4183986 m!4772915))

(assert (=> b!4183984 m!4772197))

(declare-fun m!4772917 () Bool)

(assert (=> b!4183984 m!4772917))

(assert (=> b!4183984 m!4772199))

(declare-fun m!4772919 () Bool)

(assert (=> b!4183984 m!4772919))

(assert (=> b!4183985 m!4772197))

(declare-fun m!4772921 () Bool)

(assert (=> b!4183985 m!4772921))

(assert (=> b!4183985 m!4772199))

(declare-fun m!4772923 () Bool)

(assert (=> b!4183985 m!4772923))

(assert (=> b!4183985 m!4772921))

(assert (=> b!4183985 m!4772923))

(declare-fun m!4772925 () Bool)

(assert (=> b!4183985 m!4772925))

(assert (=> b!4183380 d!1234691))

(declare-fun d!1234693 () Bool)

(assert (=> d!1234693 (= (tail!6725 lt!1489629) (t!345218 lt!1489629))))

(assert (=> b!4183380 d!1234693))

(declare-fun d!1234695 () Bool)

(assert (=> d!1234695 (= (tail!6725 (++!11716 lt!1489629 (_2!25001 lt!1489624))) (t!345218 (++!11716 lt!1489629 (_2!25001 lt!1489624))))))

(assert (=> b!4183380 d!1234695))

(declare-fun d!1234697 () Bool)

(assert (=> d!1234697 (= (nullable!4401 (reg!12878 (regex!7644 r!4142))) (nullableFct!1215 (reg!12878 (regex!7644 r!4142))))))

(declare-fun bs!596432 () Bool)

(assert (= bs!596432 d!1234697))

(declare-fun m!4772927 () Bool)

(assert (=> bs!596432 m!4772927))

(assert (=> b!4183510 d!1234697))

(declare-fun d!1234699 () Bool)

(declare-fun lt!1490002 () Int)

(assert (=> d!1234699 (>= lt!1490002 0)))

(declare-fun e!2597448 () Int)

(assert (=> d!1234699 (= lt!1490002 e!2597448)))

(declare-fun c!714362 () Bool)

(assert (=> d!1234699 (= c!714362 ((_ is Nil!45925) (t!345218 input!3342)))))

(assert (=> d!1234699 (= (size!33728 (t!345218 input!3342)) lt!1490002)))

(declare-fun b!4183987 () Bool)

(assert (=> b!4183987 (= e!2597448 0)))

(declare-fun b!4183988 () Bool)

(assert (=> b!4183988 (= e!2597448 (+ 1 (size!33728 (t!345218 (t!345218 input!3342)))))))

(assert (= (and d!1234699 c!714362) b!4183987))

(assert (= (and d!1234699 (not c!714362)) b!4183988))

(declare-fun m!4772929 () Bool)

(assert (=> b!4183988 m!4772929))

(assert (=> b!4183482 d!1234699))

(declare-fun d!1234701 () Bool)

(assert (=> d!1234701 (= (isEmpty!27179 (originalCharacters!8032 lt!1489633)) ((_ is Nil!45925) (originalCharacters!8032 lt!1489633)))))

(assert (=> d!1234327 d!1234701))

(declare-fun d!1234703 () Bool)

(declare-fun e!2597449 () Bool)

(assert (=> d!1234703 e!2597449))

(declare-fun res!1715957 () Bool)

(assert (=> d!1234703 (=> (not res!1715957) (not e!2597449))))

(declare-fun lt!1490003 () List!46049)

(assert (=> d!1234703 (= res!1715957 (= (content!7137 lt!1490003) ((_ map or) (content!7137 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489768))))) (content!7137 (_2!25001 (get!14925 lt!1489768))))))))

(declare-fun e!2597450 () List!46049)

(assert (=> d!1234703 (= lt!1490003 e!2597450)))

(declare-fun c!714363 () Bool)

(assert (=> d!1234703 (= c!714363 ((_ is Nil!45925) (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489768))))))))

(assert (=> d!1234703 (= (++!11716 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489768)))) (_2!25001 (get!14925 lt!1489768))) lt!1490003)))

(declare-fun b!4183991 () Bool)

(declare-fun res!1715956 () Bool)

(assert (=> b!4183991 (=> (not res!1715956) (not e!2597449))))

(assert (=> b!4183991 (= res!1715956 (= (size!33728 lt!1490003) (+ (size!33728 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489768))))) (size!33728 (_2!25001 (get!14925 lt!1489768))))))))

(declare-fun b!4183992 () Bool)

(assert (=> b!4183992 (= e!2597449 (or (not (= (_2!25001 (get!14925 lt!1489768)) Nil!45925)) (= lt!1490003 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489768)))))))))

(declare-fun b!4183989 () Bool)

(assert (=> b!4183989 (= e!2597450 (_2!25001 (get!14925 lt!1489768)))))

(declare-fun b!4183990 () Bool)

(assert (=> b!4183990 (= e!2597450 (Cons!45925 (h!51345 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489768))))) (++!11716 (t!345218 (list!16585 (charsOf!5079 (_1!25001 (get!14925 lt!1489768))))) (_2!25001 (get!14925 lt!1489768)))))))

(assert (= (and d!1234703 c!714363) b!4183989))

(assert (= (and d!1234703 (not c!714363)) b!4183990))

(assert (= (and d!1234703 res!1715957) b!4183991))

(assert (= (and b!4183991 res!1715956) b!4183992))

(declare-fun m!4772931 () Bool)

(assert (=> d!1234703 m!4772931))

(assert (=> d!1234703 m!4772237))

(declare-fun m!4772933 () Bool)

(assert (=> d!1234703 m!4772933))

(declare-fun m!4772935 () Bool)

(assert (=> d!1234703 m!4772935))

(declare-fun m!4772937 () Bool)

(assert (=> b!4183991 m!4772937))

(assert (=> b!4183991 m!4772237))

(declare-fun m!4772939 () Bool)

(assert (=> b!4183991 m!4772939))

(assert (=> b!4183991 m!4772245))

(declare-fun m!4772941 () Bool)

(assert (=> b!4183990 m!4772941))

(assert (=> b!4183456 d!1234703))

(assert (=> b!4183456 d!1234483))

(assert (=> b!4183456 d!1234485))

(assert (=> b!4183456 d!1234473))

(declare-fun bs!596433 () Bool)

(declare-fun d!1234705 () Bool)

(assert (= bs!596433 (and d!1234705 d!1234623)))

(declare-fun lambda!129415 () Int)

(assert (=> bs!596433 (= (and (= (toChars!10195 (transformation!7644 (h!51347 rules!3843))) (toChars!10195 (transformation!7644 r!4142))) (= (toValue!10336 (transformation!7644 (h!51347 rules!3843))) (toValue!10336 (transformation!7644 r!4142)))) (= lambda!129415 lambda!129405))))

(declare-fun bs!596434 () Bool)

(assert (= bs!596434 (and d!1234705 d!1234393)))

(assert (=> bs!596434 (= (and (= (toChars!10195 (transformation!7644 (h!51347 rules!3843))) (toChars!10195 (transformation!7644 r!4142))) (= (toValue!10336 (transformation!7644 (h!51347 rules!3843))) (toValue!10336 (transformation!7644 r!4142)))) (= lambda!129415 lambda!129397))))

(declare-fun bs!596435 () Bool)

(assert (= bs!596435 (and d!1234705 d!1234671)))

(assert (=> bs!596435 (= (and (= (toChars!10195 (transformation!7644 (h!51347 rules!3843))) (toChars!10195 (transformation!7644 rBis!167))) (= (toValue!10336 (transformation!7644 (h!51347 rules!3843))) (toValue!10336 (transformation!7644 rBis!167)))) (= lambda!129415 lambda!129411))))

(declare-fun bs!596436 () Bool)

(assert (= bs!596436 (and d!1234705 d!1234593)))

(assert (=> bs!596436 (= (and (= (toChars!10195 (transformation!7644 (h!51347 rules!3843))) (toChars!10195 (transformation!7644 rBis!167))) (= (toValue!10336 (transformation!7644 (h!51347 rules!3843))) (toValue!10336 (transformation!7644 rBis!167)))) (= lambda!129415 lambda!129404))))

(declare-fun bs!596437 () Bool)

(assert (= bs!596437 (and d!1234705 d!1234513)))

(assert (=> bs!596437 (= (and (= (toChars!10195 (transformation!7644 (h!51347 rules!3843))) (toChars!10195 (transformation!7644 r!4142))) (= (toValue!10336 (transformation!7644 (h!51347 rules!3843))) (toValue!10336 (transformation!7644 r!4142)))) (= lambda!129415 lambda!129401))))

(assert (=> d!1234705 true))

(assert (=> d!1234705 (< (dynLambda!19721 order!24253 (toChars!10195 (transformation!7644 (h!51347 rules!3843)))) (dynLambda!19720 order!24251 lambda!129415))))

(assert (=> d!1234705 true))

(assert (=> d!1234705 (< (dynLambda!19719 order!24249 (toValue!10336 (transformation!7644 (h!51347 rules!3843)))) (dynLambda!19720 order!24251 lambda!129415))))

(assert (=> d!1234705 (= (semiInverseModEq!3310 (toChars!10195 (transformation!7644 (h!51347 rules!3843))) (toValue!10336 (transformation!7644 (h!51347 rules!3843)))) (Forall!1565 lambda!129415))))

(declare-fun bs!596438 () Bool)

(assert (= bs!596438 d!1234705))

(declare-fun m!4772943 () Bool)

(assert (=> bs!596438 m!4772943))

(assert (=> d!1234323 d!1234705))

(assert (=> d!1234445 d!1234657))

(declare-fun d!1234707 () Bool)

(declare-fun e!2597451 () Bool)

(assert (=> d!1234707 e!2597451))

(declare-fun res!1715959 () Bool)

(assert (=> d!1234707 (=> (not res!1715959) (not e!2597451))))

(declare-fun lt!1490004 () List!46049)

(assert (=> d!1234707 (= res!1715959 (= (content!7137 lt!1490004) ((_ map or) (content!7137 (t!345218 lt!1489629)) (content!7137 (_2!25001 lt!1489624)))))))

(declare-fun e!2597452 () List!46049)

(assert (=> d!1234707 (= lt!1490004 e!2597452)))

(declare-fun c!714364 () Bool)

(assert (=> d!1234707 (= c!714364 ((_ is Nil!45925) (t!345218 lt!1489629)))))

(assert (=> d!1234707 (= (++!11716 (t!345218 lt!1489629) (_2!25001 lt!1489624)) lt!1490004)))

(declare-fun b!4183995 () Bool)

(declare-fun res!1715958 () Bool)

(assert (=> b!4183995 (=> (not res!1715958) (not e!2597451))))

(assert (=> b!4183995 (= res!1715958 (= (size!33728 lt!1490004) (+ (size!33728 (t!345218 lt!1489629)) (size!33728 (_2!25001 lt!1489624)))))))

(declare-fun b!4183996 () Bool)

(assert (=> b!4183996 (= e!2597451 (or (not (= (_2!25001 lt!1489624) Nil!45925)) (= lt!1490004 (t!345218 lt!1489629))))))

(declare-fun b!4183993 () Bool)

(assert (=> b!4183993 (= e!2597452 (_2!25001 lt!1489624))))

(declare-fun b!4183994 () Bool)

(assert (=> b!4183994 (= e!2597452 (Cons!45925 (h!51345 (t!345218 lt!1489629)) (++!11716 (t!345218 (t!345218 lt!1489629)) (_2!25001 lt!1489624))))))

(assert (= (and d!1234707 c!714364) b!4183993))

(assert (= (and d!1234707 (not c!714364)) b!4183994))

(assert (= (and d!1234707 res!1715959) b!4183995))

(assert (= (and b!4183995 res!1715958) b!4183996))

(declare-fun m!4772945 () Bool)

(assert (=> d!1234707 m!4772945))

(assert (=> d!1234707 m!4772449))

(assert (=> d!1234707 m!4772145))

(declare-fun m!4772947 () Bool)

(assert (=> b!4183995 m!4772947))

(assert (=> b!4183995 m!4772751))

(assert (=> b!4183995 m!4772151))

(declare-fun m!4772949 () Bool)

(assert (=> b!4183994 m!4772949))

(assert (=> b!4183370 d!1234707))

(declare-fun b!4184000 () Bool)

(declare-fun e!2597453 () Bool)

(assert (=> b!4184000 (= e!2597453 (>= (size!33728 (tail!6725 input!3342)) (size!33728 (tail!6725 p!2959))))))

(declare-fun b!4183998 () Bool)

(declare-fun res!1715961 () Bool)

(declare-fun e!2597454 () Bool)

(assert (=> b!4183998 (=> (not res!1715961) (not e!2597454))))

(assert (=> b!4183998 (= res!1715961 (= (head!8878 (tail!6725 p!2959)) (head!8878 (tail!6725 input!3342))))))

(declare-fun d!1234709 () Bool)

(assert (=> d!1234709 e!2597453))

(declare-fun res!1715963 () Bool)

(assert (=> d!1234709 (=> res!1715963 e!2597453)))

(declare-fun lt!1490005 () Bool)

(assert (=> d!1234709 (= res!1715963 (not lt!1490005))))

(declare-fun e!2597455 () Bool)

(assert (=> d!1234709 (= lt!1490005 e!2597455)))

(declare-fun res!1715962 () Bool)

(assert (=> d!1234709 (=> res!1715962 e!2597455)))

(assert (=> d!1234709 (= res!1715962 ((_ is Nil!45925) (tail!6725 p!2959)))))

(assert (=> d!1234709 (= (isPrefix!4501 (tail!6725 p!2959) (tail!6725 input!3342)) lt!1490005)))

(declare-fun b!4183997 () Bool)

(assert (=> b!4183997 (= e!2597455 e!2597454)))

(declare-fun res!1715960 () Bool)

(assert (=> b!4183997 (=> (not res!1715960) (not e!2597454))))

(assert (=> b!4183997 (= res!1715960 (not ((_ is Nil!45925) (tail!6725 input!3342))))))

(declare-fun b!4183999 () Bool)

(assert (=> b!4183999 (= e!2597454 (isPrefix!4501 (tail!6725 (tail!6725 p!2959)) (tail!6725 (tail!6725 input!3342))))))

(assert (= (and d!1234709 (not res!1715962)) b!4183997))

(assert (= (and b!4183997 res!1715960) b!4183998))

(assert (= (and b!4183998 res!1715961) b!4183999))

(assert (= (and d!1234709 (not res!1715963)) b!4184000))

(assert (=> b!4184000 m!4771887))

(assert (=> b!4184000 m!4772555))

(assert (=> b!4184000 m!4772327))

(declare-fun m!4772951 () Bool)

(assert (=> b!4184000 m!4772951))

(assert (=> b!4183998 m!4772327))

(assert (=> b!4183998 m!4772539))

(assert (=> b!4183998 m!4771887))

(assert (=> b!4183998 m!4772561))

(assert (=> b!4183999 m!4772327))

(assert (=> b!4183999 m!4772533))

(assert (=> b!4183999 m!4771887))

(assert (=> b!4183999 m!4772565))

(assert (=> b!4183999 m!4772533))

(assert (=> b!4183999 m!4772565))

(declare-fun m!4772953 () Bool)

(assert (=> b!4183999 m!4772953))

(assert (=> b!4183518 d!1234709))

(assert (=> b!4183518 d!1234531))

(assert (=> b!4183518 d!1234537))

(assert (=> b!4183159 d!1234619))

(assert (=> d!1234441 d!1234317))

(assert (=> d!1234441 d!1234443))

(declare-fun d!1234711 () Bool)

(assert (=> d!1234711 (<= (size!33728 pBis!107) (size!33728 input!3342))))

(assert (=> d!1234711 true))

(declare-fun _$64!578 () Unit!65011)

(assert (=> d!1234711 (= (choose!25608 pBis!107 input!3342) _$64!578)))

(declare-fun bs!596439 () Bool)

(assert (= bs!596439 d!1234711))

(assert (=> bs!596439 m!4771811))

(assert (=> bs!596439 m!4771763))

(assert (=> d!1234441 d!1234711))

(assert (=> d!1234441 d!1234429))

(declare-fun d!1234713 () Bool)

(declare-fun lt!1490006 () Int)

(assert (=> d!1234713 (>= lt!1490006 0)))

(declare-fun e!2597456 () Int)

(assert (=> d!1234713 (= lt!1490006 e!2597456)))

(declare-fun c!714365 () Bool)

(assert (=> d!1234713 (= c!714365 ((_ is Nil!45925) (originalCharacters!8032 lt!1489633)))))

(assert (=> d!1234713 (= (size!33728 (originalCharacters!8032 lt!1489633)) lt!1490006)))

(declare-fun b!4184001 () Bool)

(assert (=> b!4184001 (= e!2597456 0)))

(declare-fun b!4184002 () Bool)

(assert (=> b!4184002 (= e!2597456 (+ 1 (size!33728 (t!345218 (originalCharacters!8032 lt!1489633)))))))

(assert (= (and d!1234713 c!714365) b!4184001))

(assert (= (and d!1234713 (not c!714365)) b!4184002))

(declare-fun m!4772955 () Bool)

(assert (=> b!4184002 m!4772955))

(assert (=> b!4183135 d!1234713))

(declare-fun b!4184003 () Bool)

(declare-fun e!2597457 () Bool)

(assert (=> b!4184003 (= e!2597457 tp_is_empty!22061)))

(assert (=> b!4183603 (= tp!1278581 e!2597457)))

(declare-fun b!4184004 () Bool)

(declare-fun tp!1278592 () Bool)

(declare-fun tp!1278595 () Bool)

(assert (=> b!4184004 (= e!2597457 (and tp!1278592 tp!1278595))))

(declare-fun b!4184006 () Bool)

(declare-fun tp!1278594 () Bool)

(declare-fun tp!1278593 () Bool)

(assert (=> b!4184006 (= e!2597457 (and tp!1278594 tp!1278593))))

(declare-fun b!4184005 () Bool)

(declare-fun tp!1278596 () Bool)

(assert (=> b!4184005 (= e!2597457 tp!1278596)))

(assert (= (and b!4183603 ((_ is ElementMatch!12549) (regOne!25610 (regex!7644 r!4142)))) b!4184003))

(assert (= (and b!4183603 ((_ is Concat!20424) (regOne!25610 (regex!7644 r!4142)))) b!4184004))

(assert (= (and b!4183603 ((_ is Star!12549) (regOne!25610 (regex!7644 r!4142)))) b!4184005))

(assert (= (and b!4183603 ((_ is Union!12549) (regOne!25610 (regex!7644 r!4142)))) b!4184006))

(declare-fun b!4184007 () Bool)

(declare-fun e!2597458 () Bool)

(assert (=> b!4184007 (= e!2597458 tp_is_empty!22061)))

(assert (=> b!4183603 (= tp!1278584 e!2597458)))

(declare-fun b!4184008 () Bool)

(declare-fun tp!1278597 () Bool)

(declare-fun tp!1278600 () Bool)

(assert (=> b!4184008 (= e!2597458 (and tp!1278597 tp!1278600))))

(declare-fun b!4184010 () Bool)

(declare-fun tp!1278599 () Bool)

(declare-fun tp!1278598 () Bool)

(assert (=> b!4184010 (= e!2597458 (and tp!1278599 tp!1278598))))

(declare-fun b!4184009 () Bool)

(declare-fun tp!1278601 () Bool)

(assert (=> b!4184009 (= e!2597458 tp!1278601)))

(assert (= (and b!4183603 ((_ is ElementMatch!12549) (regTwo!25610 (regex!7644 r!4142)))) b!4184007))

(assert (= (and b!4183603 ((_ is Concat!20424) (regTwo!25610 (regex!7644 r!4142)))) b!4184008))

(assert (= (and b!4183603 ((_ is Star!12549) (regTwo!25610 (regex!7644 r!4142)))) b!4184009))

(assert (= (and b!4183603 ((_ is Union!12549) (regTwo!25610 (regex!7644 r!4142)))) b!4184010))

(declare-fun b!4184011 () Bool)

(declare-fun e!2597459 () Bool)

(assert (=> b!4184011 (= e!2597459 tp_is_empty!22061)))

(assert (=> b!4183582 (= tp!1278560 e!2597459)))

(declare-fun b!4184012 () Bool)

(declare-fun tp!1278602 () Bool)

(declare-fun tp!1278605 () Bool)

(assert (=> b!4184012 (= e!2597459 (and tp!1278602 tp!1278605))))

(declare-fun b!4184014 () Bool)

(declare-fun tp!1278604 () Bool)

(declare-fun tp!1278603 () Bool)

(assert (=> b!4184014 (= e!2597459 (and tp!1278604 tp!1278603))))

(declare-fun b!4184013 () Bool)

(declare-fun tp!1278606 () Bool)

(assert (=> b!4184013 (= e!2597459 tp!1278606)))

(assert (= (and b!4183582 ((_ is ElementMatch!12549) (regOne!25610 (regex!7644 (h!51347 rules!3843))))) b!4184011))

(assert (= (and b!4183582 ((_ is Concat!20424) (regOne!25610 (regex!7644 (h!51347 rules!3843))))) b!4184012))

(assert (= (and b!4183582 ((_ is Star!12549) (regOne!25610 (regex!7644 (h!51347 rules!3843))))) b!4184013))

(assert (= (and b!4183582 ((_ is Union!12549) (regOne!25610 (regex!7644 (h!51347 rules!3843))))) b!4184014))

(declare-fun b!4184015 () Bool)

(declare-fun e!2597460 () Bool)

(assert (=> b!4184015 (= e!2597460 tp_is_empty!22061)))

(assert (=> b!4183582 (= tp!1278563 e!2597460)))

(declare-fun b!4184016 () Bool)

(declare-fun tp!1278607 () Bool)

(declare-fun tp!1278610 () Bool)

(assert (=> b!4184016 (= e!2597460 (and tp!1278607 tp!1278610))))

(declare-fun b!4184018 () Bool)

(declare-fun tp!1278609 () Bool)

(declare-fun tp!1278608 () Bool)

(assert (=> b!4184018 (= e!2597460 (and tp!1278609 tp!1278608))))

(declare-fun b!4184017 () Bool)

(declare-fun tp!1278611 () Bool)

(assert (=> b!4184017 (= e!2597460 tp!1278611)))

(assert (= (and b!4183582 ((_ is ElementMatch!12549) (regTwo!25610 (regex!7644 (h!51347 rules!3843))))) b!4184015))

(assert (= (and b!4183582 ((_ is Concat!20424) (regTwo!25610 (regex!7644 (h!51347 rules!3843))))) b!4184016))

(assert (= (and b!4183582 ((_ is Star!12549) (regTwo!25610 (regex!7644 (h!51347 rules!3843))))) b!4184017))

(assert (= (and b!4183582 ((_ is Union!12549) (regTwo!25610 (regex!7644 (h!51347 rules!3843))))) b!4184018))

(declare-fun e!2597466 () Bool)

(declare-fun tp!1278618 () Bool)

(declare-fun b!4184027 () Bool)

(declare-fun tp!1278619 () Bool)

(assert (=> b!4184027 (= e!2597466 (and (inv!60468 (left!34211 (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 r!4142)) (dynLambda!19717 (toValue!10336 (transformation!7644 r!4142)) lt!1489628))))) tp!1278618 (inv!60468 (right!34541 (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 r!4142)) (dynLambda!19717 (toValue!10336 (transformation!7644 r!4142)) lt!1489628))))) tp!1278619))))

(declare-fun b!4184029 () Bool)

(declare-fun e!2597465 () Bool)

(declare-fun tp!1278620 () Bool)

(assert (=> b!4184029 (= e!2597465 tp!1278620)))

(declare-fun b!4184028 () Bool)

(declare-fun inv!60476 (IArray!27715) Bool)

(assert (=> b!4184028 (= e!2597466 (and (inv!60476 (xs!17161 (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 r!4142)) (dynLambda!19717 (toValue!10336 (transformation!7644 r!4142)) lt!1489628))))) e!2597465))))

(assert (=> b!4183331 (= tp!1278500 (and (inv!60468 (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 r!4142)) (dynLambda!19717 (toValue!10336 (transformation!7644 r!4142)) lt!1489628)))) e!2597466))))

(assert (= (and b!4183331 ((_ is Node!13855) (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 r!4142)) (dynLambda!19717 (toValue!10336 (transformation!7644 r!4142)) lt!1489628))))) b!4184027))

(assert (= b!4184028 b!4184029))

(assert (= (and b!4183331 ((_ is Leaf!21420) (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 r!4142)) (dynLambda!19717 (toValue!10336 (transformation!7644 r!4142)) lt!1489628))))) b!4184028))

(declare-fun m!4772957 () Bool)

(assert (=> b!4184027 m!4772957))

(declare-fun m!4772959 () Bool)

(assert (=> b!4184027 m!4772959))

(declare-fun m!4772961 () Bool)

(assert (=> b!4184028 m!4772961))

(assert (=> b!4183331 m!4772123))

(declare-fun b!4184030 () Bool)

(declare-fun e!2597467 () Bool)

(assert (=> b!4184030 (= e!2597467 tp_is_empty!22061)))

(assert (=> b!4183605 (= tp!1278583 e!2597467)))

(declare-fun b!4184031 () Bool)

(declare-fun tp!1278621 () Bool)

(declare-fun tp!1278624 () Bool)

(assert (=> b!4184031 (= e!2597467 (and tp!1278621 tp!1278624))))

(declare-fun b!4184033 () Bool)

(declare-fun tp!1278623 () Bool)

(declare-fun tp!1278622 () Bool)

(assert (=> b!4184033 (= e!2597467 (and tp!1278623 tp!1278622))))

(declare-fun b!4184032 () Bool)

(declare-fun tp!1278625 () Bool)

(assert (=> b!4184032 (= e!2597467 tp!1278625)))

(assert (= (and b!4183605 ((_ is ElementMatch!12549) (regOne!25611 (regex!7644 r!4142)))) b!4184030))

(assert (= (and b!4183605 ((_ is Concat!20424) (regOne!25611 (regex!7644 r!4142)))) b!4184031))

(assert (= (and b!4183605 ((_ is Star!12549) (regOne!25611 (regex!7644 r!4142)))) b!4184032))

(assert (= (and b!4183605 ((_ is Union!12549) (regOne!25611 (regex!7644 r!4142)))) b!4184033))

(declare-fun b!4184034 () Bool)

(declare-fun e!2597468 () Bool)

(assert (=> b!4184034 (= e!2597468 tp_is_empty!22061)))

(assert (=> b!4183605 (= tp!1278582 e!2597468)))

(declare-fun b!4184035 () Bool)

(declare-fun tp!1278626 () Bool)

(declare-fun tp!1278629 () Bool)

(assert (=> b!4184035 (= e!2597468 (and tp!1278626 tp!1278629))))

(declare-fun b!4184037 () Bool)

(declare-fun tp!1278628 () Bool)

(declare-fun tp!1278627 () Bool)

(assert (=> b!4184037 (= e!2597468 (and tp!1278628 tp!1278627))))

(declare-fun b!4184036 () Bool)

(declare-fun tp!1278630 () Bool)

(assert (=> b!4184036 (= e!2597468 tp!1278630)))

(assert (= (and b!4183605 ((_ is ElementMatch!12549) (regTwo!25611 (regex!7644 r!4142)))) b!4184034))

(assert (= (and b!4183605 ((_ is Concat!20424) (regTwo!25611 (regex!7644 r!4142)))) b!4184035))

(assert (= (and b!4183605 ((_ is Star!12549) (regTwo!25611 (regex!7644 r!4142)))) b!4184036))

(assert (= (and b!4183605 ((_ is Union!12549) (regTwo!25611 (regex!7644 r!4142)))) b!4184037))

(declare-fun b!4184038 () Bool)

(declare-fun e!2597469 () Bool)

(assert (=> b!4184038 (= e!2597469 tp_is_empty!22061)))

(assert (=> b!4183584 (= tp!1278562 e!2597469)))

(declare-fun b!4184039 () Bool)

(declare-fun tp!1278631 () Bool)

(declare-fun tp!1278634 () Bool)

(assert (=> b!4184039 (= e!2597469 (and tp!1278631 tp!1278634))))

(declare-fun b!4184041 () Bool)

(declare-fun tp!1278633 () Bool)

(declare-fun tp!1278632 () Bool)

(assert (=> b!4184041 (= e!2597469 (and tp!1278633 tp!1278632))))

(declare-fun b!4184040 () Bool)

(declare-fun tp!1278635 () Bool)

(assert (=> b!4184040 (= e!2597469 tp!1278635)))

(assert (= (and b!4183584 ((_ is ElementMatch!12549) (regOne!25611 (regex!7644 (h!51347 rules!3843))))) b!4184038))

(assert (= (and b!4183584 ((_ is Concat!20424) (regOne!25611 (regex!7644 (h!51347 rules!3843))))) b!4184039))

(assert (= (and b!4183584 ((_ is Star!12549) (regOne!25611 (regex!7644 (h!51347 rules!3843))))) b!4184040))

(assert (= (and b!4183584 ((_ is Union!12549) (regOne!25611 (regex!7644 (h!51347 rules!3843))))) b!4184041))

(declare-fun b!4184042 () Bool)

(declare-fun e!2597470 () Bool)

(assert (=> b!4184042 (= e!2597470 tp_is_empty!22061)))

(assert (=> b!4183584 (= tp!1278561 e!2597470)))

(declare-fun b!4184043 () Bool)

(declare-fun tp!1278636 () Bool)

(declare-fun tp!1278639 () Bool)

(assert (=> b!4184043 (= e!2597470 (and tp!1278636 tp!1278639))))

(declare-fun b!4184045 () Bool)

(declare-fun tp!1278638 () Bool)

(declare-fun tp!1278637 () Bool)

(assert (=> b!4184045 (= e!2597470 (and tp!1278638 tp!1278637))))

(declare-fun b!4184044 () Bool)

(declare-fun tp!1278640 () Bool)

(assert (=> b!4184044 (= e!2597470 tp!1278640)))

(assert (= (and b!4183584 ((_ is ElementMatch!12549) (regTwo!25611 (regex!7644 (h!51347 rules!3843))))) b!4184042))

(assert (= (and b!4183584 ((_ is Concat!20424) (regTwo!25611 (regex!7644 (h!51347 rules!3843))))) b!4184043))

(assert (= (and b!4183584 ((_ is Star!12549) (regTwo!25611 (regex!7644 (h!51347 rules!3843))))) b!4184044))

(assert (= (and b!4183584 ((_ is Union!12549) (regTwo!25611 (regex!7644 (h!51347 rules!3843))))) b!4184045))

(declare-fun b!4184046 () Bool)

(declare-fun e!2597471 () Bool)

(declare-fun tp!1278641 () Bool)

(assert (=> b!4184046 (= e!2597471 (and tp_is_empty!22061 tp!1278641))))

(assert (=> b!4183601 (= tp!1278580 e!2597471)))

(assert (= (and b!4183601 ((_ is Cons!45925) (t!345218 (t!345218 p!2959)))) b!4184046))

(declare-fun b!4184047 () Bool)

(declare-fun e!2597472 () Bool)

(assert (=> b!4184047 (= e!2597472 tp_is_empty!22061)))

(assert (=> b!4183580 (= tp!1278557 e!2597472)))

(declare-fun b!4184048 () Bool)

(declare-fun tp!1278642 () Bool)

(declare-fun tp!1278645 () Bool)

(assert (=> b!4184048 (= e!2597472 (and tp!1278642 tp!1278645))))

(declare-fun b!4184050 () Bool)

(declare-fun tp!1278644 () Bool)

(declare-fun tp!1278643 () Bool)

(assert (=> b!4184050 (= e!2597472 (and tp!1278644 tp!1278643))))

(declare-fun b!4184049 () Bool)

(declare-fun tp!1278646 () Bool)

(assert (=> b!4184049 (= e!2597472 tp!1278646)))

(assert (= (and b!4183580 ((_ is ElementMatch!12549) (regOne!25611 (regex!7644 rBis!167)))) b!4184047))

(assert (= (and b!4183580 ((_ is Concat!20424) (regOne!25611 (regex!7644 rBis!167)))) b!4184048))

(assert (= (and b!4183580 ((_ is Star!12549) (regOne!25611 (regex!7644 rBis!167)))) b!4184049))

(assert (= (and b!4183580 ((_ is Union!12549) (regOne!25611 (regex!7644 rBis!167)))) b!4184050))

(declare-fun b!4184051 () Bool)

(declare-fun e!2597473 () Bool)

(assert (=> b!4184051 (= e!2597473 tp_is_empty!22061)))

(assert (=> b!4183580 (= tp!1278556 e!2597473)))

(declare-fun b!4184052 () Bool)

(declare-fun tp!1278647 () Bool)

(declare-fun tp!1278650 () Bool)

(assert (=> b!4184052 (= e!2597473 (and tp!1278647 tp!1278650))))

(declare-fun b!4184054 () Bool)

(declare-fun tp!1278649 () Bool)

(declare-fun tp!1278648 () Bool)

(assert (=> b!4184054 (= e!2597473 (and tp!1278649 tp!1278648))))

(declare-fun b!4184053 () Bool)

(declare-fun tp!1278651 () Bool)

(assert (=> b!4184053 (= e!2597473 tp!1278651)))

(assert (= (and b!4183580 ((_ is ElementMatch!12549) (regTwo!25611 (regex!7644 rBis!167)))) b!4184051))

(assert (= (and b!4183580 ((_ is Concat!20424) (regTwo!25611 (regex!7644 rBis!167)))) b!4184052))

(assert (= (and b!4183580 ((_ is Star!12549) (regTwo!25611 (regex!7644 rBis!167)))) b!4184053))

(assert (= (and b!4183580 ((_ is Union!12549) (regTwo!25611 (regex!7644 rBis!167)))) b!4184054))

(declare-fun b!4184055 () Bool)

(declare-fun e!2597474 () Bool)

(assert (=> b!4184055 (= e!2597474 tp_is_empty!22061)))

(assert (=> b!4183583 (= tp!1278564 e!2597474)))

(declare-fun b!4184056 () Bool)

(declare-fun tp!1278652 () Bool)

(declare-fun tp!1278655 () Bool)

(assert (=> b!4184056 (= e!2597474 (and tp!1278652 tp!1278655))))

(declare-fun b!4184058 () Bool)

(declare-fun tp!1278654 () Bool)

(declare-fun tp!1278653 () Bool)

(assert (=> b!4184058 (= e!2597474 (and tp!1278654 tp!1278653))))

(declare-fun b!4184057 () Bool)

(declare-fun tp!1278656 () Bool)

(assert (=> b!4184057 (= e!2597474 tp!1278656)))

(assert (= (and b!4183583 ((_ is ElementMatch!12549) (reg!12878 (regex!7644 (h!51347 rules!3843))))) b!4184055))

(assert (= (and b!4183583 ((_ is Concat!20424) (reg!12878 (regex!7644 (h!51347 rules!3843))))) b!4184056))

(assert (= (and b!4183583 ((_ is Star!12549) (reg!12878 (regex!7644 (h!51347 rules!3843))))) b!4184057))

(assert (= (and b!4183583 ((_ is Union!12549) (reg!12878 (regex!7644 (h!51347 rules!3843))))) b!4184058))

(declare-fun b!4184059 () Bool)

(declare-fun e!2597475 () Bool)

(assert (=> b!4184059 (= e!2597475 tp_is_empty!22061)))

(assert (=> b!4183578 (= tp!1278555 e!2597475)))

(declare-fun b!4184060 () Bool)

(declare-fun tp!1278657 () Bool)

(declare-fun tp!1278660 () Bool)

(assert (=> b!4184060 (= e!2597475 (and tp!1278657 tp!1278660))))

(declare-fun b!4184062 () Bool)

(declare-fun tp!1278659 () Bool)

(declare-fun tp!1278658 () Bool)

(assert (=> b!4184062 (= e!2597475 (and tp!1278659 tp!1278658))))

(declare-fun b!4184061 () Bool)

(declare-fun tp!1278661 () Bool)

(assert (=> b!4184061 (= e!2597475 tp!1278661)))

(assert (= (and b!4183578 ((_ is ElementMatch!12549) (regOne!25610 (regex!7644 rBis!167)))) b!4184059))

(assert (= (and b!4183578 ((_ is Concat!20424) (regOne!25610 (regex!7644 rBis!167)))) b!4184060))

(assert (= (and b!4183578 ((_ is Star!12549) (regOne!25610 (regex!7644 rBis!167)))) b!4184061))

(assert (= (and b!4183578 ((_ is Union!12549) (regOne!25610 (regex!7644 rBis!167)))) b!4184062))

(declare-fun b!4184063 () Bool)

(declare-fun e!2597476 () Bool)

(assert (=> b!4184063 (= e!2597476 tp_is_empty!22061)))

(assert (=> b!4183578 (= tp!1278558 e!2597476)))

(declare-fun b!4184064 () Bool)

(declare-fun tp!1278662 () Bool)

(declare-fun tp!1278665 () Bool)

(assert (=> b!4184064 (= e!2597476 (and tp!1278662 tp!1278665))))

(declare-fun b!4184066 () Bool)

(declare-fun tp!1278664 () Bool)

(declare-fun tp!1278663 () Bool)

(assert (=> b!4184066 (= e!2597476 (and tp!1278664 tp!1278663))))

(declare-fun b!4184065 () Bool)

(declare-fun tp!1278666 () Bool)

(assert (=> b!4184065 (= e!2597476 tp!1278666)))

(assert (= (and b!4183578 ((_ is ElementMatch!12549) (regTwo!25610 (regex!7644 rBis!167)))) b!4184063))

(assert (= (and b!4183578 ((_ is Concat!20424) (regTwo!25610 (regex!7644 rBis!167)))) b!4184064))

(assert (= (and b!4183578 ((_ is Star!12549) (regTwo!25610 (regex!7644 rBis!167)))) b!4184065))

(assert (= (and b!4183578 ((_ is Union!12549) (regTwo!25610 (regex!7644 rBis!167)))) b!4184066))

(declare-fun b!4184069 () Bool)

(declare-fun b_free!121627 () Bool)

(declare-fun b_next!122331 () Bool)

(assert (=> b!4184069 (= b_free!121627 (not b_next!122331))))

(declare-fun tb!250531 () Bool)

(declare-fun t!345369 () Bool)

(assert (=> (and b!4184069 (= (toValue!10336 (transformation!7644 (h!51347 (t!345220 (t!345220 rules!3843))))) (toValue!10336 (transformation!7644 rBis!167))) t!345369) tb!250531))

(declare-fun result!305294 () Bool)

(assert (= result!305294 result!305268))

(assert (=> d!1234671 t!345369))

(declare-fun t!345371 () Bool)

(declare-fun tb!250533 () Bool)

(assert (=> (and b!4184069 (= (toValue!10336 (transformation!7644 (h!51347 (t!345220 (t!345220 rules!3843))))) (toValue!10336 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489768)))))) t!345371) tb!250533))

(declare-fun result!305296 () Bool)

(assert (= result!305296 result!305220))

(assert (=> d!1234475 t!345371))

(declare-fun tb!250535 () Bool)

(declare-fun t!345373 () Bool)

(assert (=> (and b!4184069 (= (toValue!10336 (transformation!7644 (h!51347 (t!345220 (t!345220 rules!3843))))) (toValue!10336 (transformation!7644 r!4142))) t!345373) tb!250535))

(declare-fun result!305298 () Bool)

(assert (= result!305298 result!305136))

(assert (=> d!1234345 t!345373))

(declare-fun t!345375 () Bool)

(declare-fun tb!250537 () Bool)

(assert (=> (and b!4184069 (= (toValue!10336 (transformation!7644 (h!51347 (t!345220 (t!345220 rules!3843))))) (toValue!10336 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489721)))))) t!345375) tb!250537))

(declare-fun result!305300 () Bool)

(assert (= result!305300 result!305252))

(assert (=> d!1234547 t!345375))

(assert (=> d!1234393 t!345373))

(declare-fun tb!250539 () Bool)

(declare-fun t!345377 () Bool)

(assert (=> (and b!4184069 (= (toValue!10336 (transformation!7644 (h!51347 (t!345220 (t!345220 rules!3843))))) (toValue!10336 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489777)))))) t!345377) tb!250539))

(declare-fun result!305302 () Bool)

(assert (= result!305302 result!305284))

(assert (=> d!1234677 t!345377))

(assert (=> d!1234661 t!345369))

(declare-fun tb!250541 () Bool)

(declare-fun t!345379 () Bool)

(assert (=> (and b!4184069 (= (toValue!10336 (transformation!7644 (h!51347 (t!345220 (t!345220 rules!3843))))) (toValue!10336 (transformation!7644 r!4142))) t!345379) tb!250541))

(declare-fun result!305304 () Bool)

(assert (= result!305304 result!305236))

(assert (=> d!1234513 t!345379))

(assert (=> d!1234511 t!345379))

(declare-fun tp!1278668 () Bool)

(declare-fun b_and!327485 () Bool)

(assert (=> b!4184069 (= tp!1278668 (and (=> t!345371 result!305296) (=> t!345369 result!305294) (=> t!345377 result!305302) (=> t!345375 result!305300) (=> t!345379 result!305304) (=> t!345373 result!305298) b_and!327485))))

(declare-fun b_free!121629 () Bool)

(declare-fun b_next!122333 () Bool)

(assert (=> b!4184069 (= b_free!121629 (not b_next!122333))))

(declare-fun t!345381 () Bool)

(declare-fun tb!250543 () Bool)

(assert (=> (and b!4184069 (= (toChars!10195 (transformation!7644 (h!51347 (t!345220 (t!345220 rules!3843))))) (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489768)))))) t!345381) tb!250543))

(declare-fun result!305306 () Bool)

(assert (= result!305306 result!305228))

(assert (=> d!1234485 t!345381))

(declare-fun t!345383 () Bool)

(declare-fun tb!250545 () Bool)

(assert (=> (and b!4184069 (= (toChars!10195 (transformation!7644 (h!51347 (t!345220 (t!345220 rules!3843))))) (toChars!10195 (transformation!7644 r!4142))) t!345383) tb!250545))

(declare-fun result!305308 () Bool)

(assert (= result!305308 result!305166))

(assert (=> d!1234393 t!345383))

(declare-fun tb!250547 () Bool)

(declare-fun t!345385 () Bool)

(assert (=> (and b!4184069 (= (toChars!10195 (transformation!7644 (h!51347 (t!345220 (t!345220 rules!3843))))) (toChars!10195 (transformation!7644 (rule!10710 lt!1489633)))) t!345385) tb!250547))

(declare-fun result!305310 () Bool)

(assert (= result!305310 result!305128))

(assert (=> b!4183134 t!345385))

(declare-fun tb!250549 () Bool)

(declare-fun t!345387 () Bool)

(assert (=> (and b!4184069 (= (toChars!10195 (transformation!7644 (h!51347 (t!345220 (t!345220 rules!3843))))) (toChars!10195 (transformation!7644 r!4142))) t!345387) tb!250549))

(declare-fun result!305312 () Bool)

(assert (= result!305312 result!305244))

(assert (=> d!1234513 t!345387))

(declare-fun tb!250551 () Bool)

(declare-fun t!345389 () Bool)

(assert (=> (and b!4184069 (= (toChars!10195 (transformation!7644 (h!51347 (t!345220 (t!345220 rules!3843))))) (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489777)))))) t!345389) tb!250551))

(declare-fun result!305314 () Bool)

(assert (= result!305314 result!305260))

(assert (=> d!1234557 t!345389))

(declare-fun t!345391 () Bool)

(declare-fun tb!250553 () Bool)

(assert (=> (and b!4184069 (= (toChars!10195 (transformation!7644 (h!51347 (t!345220 (t!345220 rules!3843))))) (toChars!10195 (transformation!7644 rBis!167))) t!345391) tb!250553))

(declare-fun result!305316 () Bool)

(assert (= result!305316 result!305276))

(assert (=> d!1234671 t!345391))

(declare-fun t!345393 () Bool)

(declare-fun tb!250555 () Bool)

(assert (=> (and b!4184069 (= (toChars!10195 (transformation!7644 (h!51347 (t!345220 (t!345220 rules!3843))))) (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 lt!1489624))))) t!345393) tb!250555))

(declare-fun result!305318 () Bool)

(assert (= result!305318 result!305172))

(assert (=> d!1234413 t!345393))

(declare-fun t!345395 () Bool)

(declare-fun tb!250557 () Bool)

(assert (=> (and b!4184069 (= (toChars!10195 (transformation!7644 (h!51347 (t!345220 (t!345220 rules!3843))))) (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 (get!14925 lt!1489721)))))) t!345395) tb!250557))

(declare-fun result!305320 () Bool)

(assert (= result!305320 result!305212))

(assert (=> d!1234465 t!345395))

(declare-fun b_and!327487 () Bool)

(declare-fun tp!1278669 () Bool)

(assert (=> b!4184069 (= tp!1278669 (and (=> t!345389 result!305314) (=> t!345393 result!305318) (=> t!345383 result!305308) (=> t!345387 result!305312) (=> t!345385 result!305310) (=> t!345391 result!305316) (=> t!345395 result!305320) (=> t!345381 result!305306) b_and!327487))))

(declare-fun e!2597477 () Bool)

(assert (=> b!4184069 (= e!2597477 (and tp!1278668 tp!1278669))))

(declare-fun tp!1278667 () Bool)

(declare-fun b!4184068 () Bool)

(declare-fun e!2597480 () Bool)

(assert (=> b!4184068 (= e!2597480 (and tp!1278667 (inv!60463 (tag!8508 (h!51347 (t!345220 (t!345220 rules!3843))))) (inv!60466 (transformation!7644 (h!51347 (t!345220 (t!345220 rules!3843))))) e!2597477))))

(declare-fun b!4184067 () Bool)

(declare-fun e!2597478 () Bool)

(declare-fun tp!1278670 () Bool)

(assert (=> b!4184067 (= e!2597478 (and e!2597480 tp!1278670))))

(assert (=> b!4183598 (= tp!1278579 e!2597478)))

(assert (= b!4184068 b!4184069))

(assert (= b!4184067 b!4184068))

(assert (= (and b!4183598 ((_ is Cons!45927) (t!345220 (t!345220 rules!3843)))) b!4184067))

(declare-fun m!4772963 () Bool)

(assert (=> b!4184068 m!4772963))

(declare-fun m!4772965 () Bool)

(assert (=> b!4184068 m!4772965))

(declare-fun b!4184070 () Bool)

(declare-fun e!2597481 () Bool)

(assert (=> b!4184070 (= e!2597481 tp_is_empty!22061)))

(assert (=> b!4183579 (= tp!1278559 e!2597481)))

(declare-fun b!4184071 () Bool)

(declare-fun tp!1278671 () Bool)

(declare-fun tp!1278674 () Bool)

(assert (=> b!4184071 (= e!2597481 (and tp!1278671 tp!1278674))))

(declare-fun b!4184073 () Bool)

(declare-fun tp!1278673 () Bool)

(declare-fun tp!1278672 () Bool)

(assert (=> b!4184073 (= e!2597481 (and tp!1278673 tp!1278672))))

(declare-fun b!4184072 () Bool)

(declare-fun tp!1278675 () Bool)

(assert (=> b!4184072 (= e!2597481 tp!1278675)))

(assert (= (and b!4183579 ((_ is ElementMatch!12549) (reg!12878 (regex!7644 rBis!167)))) b!4184070))

(assert (= (and b!4183579 ((_ is Concat!20424) (reg!12878 (regex!7644 rBis!167)))) b!4184071))

(assert (= (and b!4183579 ((_ is Star!12549) (reg!12878 (regex!7644 rBis!167)))) b!4184072))

(assert (= (and b!4183579 ((_ is Union!12549) (reg!12878 (regex!7644 rBis!167)))) b!4184073))

(declare-fun b!4184074 () Bool)

(declare-fun e!2597482 () Bool)

(assert (=> b!4184074 (= e!2597482 tp_is_empty!22061)))

(assert (=> b!4183599 (= tp!1278576 e!2597482)))

(declare-fun b!4184075 () Bool)

(declare-fun tp!1278676 () Bool)

(declare-fun tp!1278679 () Bool)

(assert (=> b!4184075 (= e!2597482 (and tp!1278676 tp!1278679))))

(declare-fun b!4184077 () Bool)

(declare-fun tp!1278678 () Bool)

(declare-fun tp!1278677 () Bool)

(assert (=> b!4184077 (= e!2597482 (and tp!1278678 tp!1278677))))

(declare-fun b!4184076 () Bool)

(declare-fun tp!1278680 () Bool)

(assert (=> b!4184076 (= e!2597482 tp!1278680)))

(assert (= (and b!4183599 ((_ is ElementMatch!12549) (regex!7644 (h!51347 (t!345220 rules!3843))))) b!4184074))

(assert (= (and b!4183599 ((_ is Concat!20424) (regex!7644 (h!51347 (t!345220 rules!3843))))) b!4184075))

(assert (= (and b!4183599 ((_ is Star!12549) (regex!7644 (h!51347 (t!345220 rules!3843))))) b!4184076))

(assert (= (and b!4183599 ((_ is Union!12549) (regex!7644 (h!51347 (t!345220 rules!3843))))) b!4184077))

(declare-fun b!4184078 () Bool)

(declare-fun e!2597483 () Bool)

(assert (=> b!4184078 (= e!2597483 tp_is_empty!22061)))

(assert (=> b!4183604 (= tp!1278585 e!2597483)))

(declare-fun b!4184079 () Bool)

(declare-fun tp!1278681 () Bool)

(declare-fun tp!1278684 () Bool)

(assert (=> b!4184079 (= e!2597483 (and tp!1278681 tp!1278684))))

(declare-fun b!4184081 () Bool)

(declare-fun tp!1278683 () Bool)

(declare-fun tp!1278682 () Bool)

(assert (=> b!4184081 (= e!2597483 (and tp!1278683 tp!1278682))))

(declare-fun b!4184080 () Bool)

(declare-fun tp!1278685 () Bool)

(assert (=> b!4184080 (= e!2597483 tp!1278685)))

(assert (= (and b!4183604 ((_ is ElementMatch!12549) (reg!12878 (regex!7644 r!4142)))) b!4184078))

(assert (= (and b!4183604 ((_ is Concat!20424) (reg!12878 (regex!7644 r!4142)))) b!4184079))

(assert (= (and b!4183604 ((_ is Star!12549) (reg!12878 (regex!7644 r!4142)))) b!4184080))

(assert (= (and b!4183604 ((_ is Union!12549) (reg!12878 (regex!7644 r!4142)))) b!4184081))

(declare-fun b!4184082 () Bool)

(declare-fun e!2597484 () Bool)

(declare-fun tp!1278686 () Bool)

(assert (=> b!4184082 (= e!2597484 (and tp_is_empty!22061 tp!1278686))))

(assert (=> b!4183606 (= tp!1278586 e!2597484)))

(assert (= (and b!4183606 ((_ is Cons!45925) (t!345218 (t!345218 pBis!107)))) b!4184082))

(declare-fun e!2597486 () Bool)

(declare-fun tp!1278687 () Bool)

(declare-fun tp!1278688 () Bool)

(declare-fun b!4184083 () Bool)

(assert (=> b!4184083 (= e!2597486 (and (inv!60468 (left!34211 (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 lt!1489624)))) (value!238386 (_1!25001 lt!1489624)))))) tp!1278687 (inv!60468 (right!34541 (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 lt!1489624)))) (value!238386 (_1!25001 lt!1489624)))))) tp!1278688))))

(declare-fun b!4184085 () Bool)

(declare-fun e!2597485 () Bool)

(declare-fun tp!1278689 () Bool)

(assert (=> b!4184085 (= e!2597485 tp!1278689)))

(declare-fun b!4184084 () Bool)

(assert (=> b!4184084 (= e!2597486 (and (inv!60476 (xs!17161 (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 lt!1489624)))) (value!238386 (_1!25001 lt!1489624)))))) e!2597485))))

(assert (=> b!4183373 (= tp!1278501 (and (inv!60468 (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 lt!1489624)))) (value!238386 (_1!25001 lt!1489624))))) e!2597486))))

(assert (= (and b!4183373 ((_ is Node!13855) (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 lt!1489624)))) (value!238386 (_1!25001 lt!1489624)))))) b!4184083))

(assert (= b!4184084 b!4184085))

(assert (= (and b!4183373 ((_ is Leaf!21420) (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 lt!1489624)))) (value!238386 (_1!25001 lt!1489624)))))) b!4184084))

(declare-fun m!4772967 () Bool)

(assert (=> b!4184083 m!4772967))

(declare-fun m!4772969 () Bool)

(assert (=> b!4184083 m!4772969))

(declare-fun m!4772971 () Bool)

(assert (=> b!4184084 m!4772971))

(assert (=> b!4183373 m!4772183))

(declare-fun b!4184086 () Bool)

(declare-fun e!2597487 () Bool)

(declare-fun tp!1278690 () Bool)

(assert (=> b!4184086 (= e!2597487 (and tp_is_empty!22061 tp!1278690))))

(assert (=> b!4183589 (= tp!1278567 e!2597487)))

(assert (= (and b!4183589 ((_ is Cons!45925) (t!345218 (t!345218 input!3342)))) b!4184086))

(declare-fun b!4184087 () Bool)

(declare-fun tp!1278691 () Bool)

(declare-fun e!2597489 () Bool)

(declare-fun tp!1278692 () Bool)

(assert (=> b!4184087 (= e!2597489 (and (inv!60468 (left!34211 (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 lt!1489633))) (value!238386 lt!1489633))))) tp!1278691 (inv!60468 (right!34541 (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 lt!1489633))) (value!238386 lt!1489633))))) tp!1278692))))

(declare-fun b!4184089 () Bool)

(declare-fun e!2597488 () Bool)

(declare-fun tp!1278693 () Bool)

(assert (=> b!4184089 (= e!2597488 tp!1278693)))

(declare-fun b!4184088 () Bool)

(assert (=> b!4184088 (= e!2597489 (and (inv!60476 (xs!17161 (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 lt!1489633))) (value!238386 lt!1489633))))) e!2597488))))

(assert (=> b!4183142 (= tp!1278495 (and (inv!60468 (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 lt!1489633))) (value!238386 lt!1489633)))) e!2597489))))

(assert (= (and b!4183142 ((_ is Node!13855) (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 lt!1489633))) (value!238386 lt!1489633))))) b!4184087))

(assert (= b!4184088 b!4184089))

(assert (= (and b!4183142 ((_ is Leaf!21420) (c!714182 (dynLambda!19716 (toChars!10195 (transformation!7644 (rule!10710 lt!1489633))) (value!238386 lt!1489633))))) b!4184088))

(declare-fun m!4772973 () Bool)

(assert (=> b!4184087 m!4772973))

(declare-fun m!4772975 () Bool)

(assert (=> b!4184087 m!4772975))

(declare-fun m!4772977 () Bool)

(assert (=> b!4184088 m!4772977))

(assert (=> b!4183142 m!4771867))

(declare-fun b_lambda!122973 () Bool)

(assert (= b_lambda!122969 (or (and b!4183047 b_free!121607 (= (toValue!10336 (transformation!7644 (h!51347 rules!3843))) (toValue!10336 (transformation!7644 rBis!167)))) (and b!4183068 b_free!121615 (= (toValue!10336 (transformation!7644 r!4142)) (toValue!10336 (transformation!7644 rBis!167)))) (and b!4183060 b_free!121611) (and b!4184069 b_free!121627 (= (toValue!10336 (transformation!7644 (h!51347 (t!345220 (t!345220 rules!3843))))) (toValue!10336 (transformation!7644 rBis!167)))) (and b!4183600 b_free!121623 (= (toValue!10336 (transformation!7644 (h!51347 (t!345220 rules!3843)))) (toValue!10336 (transformation!7644 rBis!167)))) b_lambda!122973)))

(declare-fun b_lambda!122975 () Bool)

(assert (= b_lambda!122963 (or d!1234393 b_lambda!122975)))

(declare-fun bs!596440 () Bool)

(declare-fun d!1234715 () Bool)

(assert (= bs!596440 (and d!1234715 d!1234393)))

(assert (=> bs!596440 (= (dynLambda!19727 lambda!129397 lt!1489628) (= (list!16585 (dynLambda!19716 (toChars!10195 (transformation!7644 r!4142)) (dynLambda!19717 (toValue!10336 (transformation!7644 r!4142)) lt!1489628))) (list!16585 lt!1489628)))))

(declare-fun b_lambda!122991 () Bool)

(assert (=> (not b_lambda!122991) (not bs!596440)))

(assert (=> bs!596440 t!345254))

(declare-fun b_and!327489 () Bool)

(assert (= b_and!327463 (and (=> t!345254 result!305168) b_and!327489)))

(assert (=> bs!596440 t!345282))

(declare-fun b_and!327491 () Bool)

(assert (= b_and!327467 (and (=> t!345282 result!305208) b_and!327491)))

(assert (=> bs!596440 t!345383))

(declare-fun b_and!327493 () Bool)

(assert (= b_and!327487 (and (=> t!345383 result!305308) b_and!327493)))

(assert (=> bs!596440 t!345252))

(declare-fun b_and!327495 () Bool)

(assert (= b_and!327461 (and (=> t!345252 result!305166) b_and!327495)))

(assert (=> bs!596440 t!345256))

(declare-fun b_and!327497 () Bool)

(assert (= b_and!327465 (and (=> t!345256 result!305170) b_and!327497)))

(declare-fun b_lambda!122993 () Bool)

(assert (=> (not b_lambda!122993) (not bs!596440)))

(assert (=> bs!596440 t!345230))

(declare-fun b_and!327499 () Bool)

(assert (= b_and!327479 (and (=> t!345230 result!305140) b_and!327499)))

(assert (=> bs!596440 t!345232))

(declare-fun b_and!327501 () Bool)

(assert (= b_and!327481 (and (=> t!345232 result!305142) b_and!327501)))

(assert (=> bs!596440 t!345228))

(declare-fun b_and!327503 () Bool)

(assert (= b_and!327477 (and (=> t!345228 result!305136) b_and!327503)))

(assert (=> bs!596440 t!345278))

(declare-fun b_and!327505 () Bool)

(assert (= b_and!327483 (and (=> t!345278 result!305204) b_and!327505)))

(assert (=> bs!596440 t!345373))

(declare-fun b_and!327507 () Bool)

(assert (= b_and!327485 (and (=> t!345373 result!305298) b_and!327507)))

(assert (=> bs!596440 m!4772127))

(assert (=> bs!596440 m!4772129))

(assert (=> bs!596440 m!4772131))

(assert (=> bs!596440 m!4771901))

(assert (=> bs!596440 m!4772127))

(assert (=> bs!596440 m!4771901))

(assert (=> d!1234565 d!1234715))

(declare-fun b_lambda!122977 () Bool)

(assert (= b_lambda!122967 (or (and b!4183060 b_free!121613) (and b!4183068 b_free!121617 (= (toChars!10195 (transformation!7644 r!4142)) (toChars!10195 (transformation!7644 rBis!167)))) (and b!4183600 b_free!121625 (= (toChars!10195 (transformation!7644 (h!51347 (t!345220 rules!3843)))) (toChars!10195 (transformation!7644 rBis!167)))) (and b!4184069 b_free!121629 (= (toChars!10195 (transformation!7644 (h!51347 (t!345220 (t!345220 rules!3843))))) (toChars!10195 (transformation!7644 rBis!167)))) (and b!4183047 b_free!121609 (= (toChars!10195 (transformation!7644 (h!51347 rules!3843))) (toChars!10195 (transformation!7644 rBis!167)))) b_lambda!122977)))

(declare-fun b_lambda!122979 () Bool)

(assert (= b_lambda!122931 (or (and b!4183068 b_free!121617 (= (toChars!10195 (transformation!7644 r!4142)) (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 lt!1489624)))))) (and b!4183060 b_free!121613 (= (toChars!10195 (transformation!7644 rBis!167)) (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 lt!1489624)))))) (and b!4183047 b_free!121609 (= (toChars!10195 (transformation!7644 (h!51347 rules!3843))) (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 lt!1489624)))))) (and b!4184069 b_free!121629 (= (toChars!10195 (transformation!7644 (h!51347 (t!345220 (t!345220 rules!3843))))) (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 lt!1489624)))))) (and b!4183600 b_free!121625 (= (toChars!10195 (transformation!7644 (h!51347 (t!345220 rules!3843)))) (toChars!10195 (transformation!7644 (rule!10710 (_1!25001 lt!1489624)))))) b_lambda!122979)))

(declare-fun b_lambda!122981 () Bool)

(assert (= b_lambda!122953 (or (and b!4183060 b_free!121611 (= (toValue!10336 (transformation!7644 rBis!167)) (toValue!10336 (transformation!7644 r!4142)))) (and b!4183068 b_free!121615) (and b!4183047 b_free!121607 (= (toValue!10336 (transformation!7644 (h!51347 rules!3843))) (toValue!10336 (transformation!7644 r!4142)))) (and b!4184069 b_free!121627 (= (toValue!10336 (transformation!7644 (h!51347 (t!345220 (t!345220 rules!3843))))) (toValue!10336 (transformation!7644 r!4142)))) (and b!4183600 b_free!121623 (= (toValue!10336 (transformation!7644 (h!51347 (t!345220 rules!3843)))) (toValue!10336 (transformation!7644 r!4142)))) b_lambda!122981)))

(declare-fun b_lambda!122983 () Bool)

(assert (= b_lambda!122957 (or (and b!4183060 b_free!121611 (= (toValue!10336 (transformation!7644 rBis!167)) (toValue!10336 (transformation!7644 r!4142)))) (and b!4183068 b_free!121615) (and b!4183047 b_free!121607 (= (toValue!10336 (transformation!7644 (h!51347 rules!3843))) (toValue!10336 (transformation!7644 r!4142)))) (and b!4184069 b_free!121627 (= (toValue!10336 (transformation!7644 (h!51347 (t!345220 (t!345220 rules!3843))))) (toValue!10336 (transformation!7644 r!4142)))) (and b!4183600 b_free!121623 (= (toValue!10336 (transformation!7644 (h!51347 (t!345220 rules!3843)))) (toValue!10336 (transformation!7644 r!4142)))) b_lambda!122983)))

(declare-fun b_lambda!122985 () Bool)

(assert (= b_lambda!122965 (or (and b!4183047 b_free!121607 (= (toValue!10336 (transformation!7644 (h!51347 rules!3843))) (toValue!10336 (transformation!7644 rBis!167)))) (and b!4183068 b_free!121615 (= (toValue!10336 (transformation!7644 r!4142)) (toValue!10336 (transformation!7644 rBis!167)))) (and b!4183060 b_free!121611) (and b!4184069 b_free!121627 (= (toValue!10336 (transformation!7644 (h!51347 (t!345220 (t!345220 rules!3843))))) (toValue!10336 (transformation!7644 rBis!167)))) (and b!4183600 b_free!121623 (= (toValue!10336 (transformation!7644 (h!51347 (t!345220 rules!3843)))) (toValue!10336 (transformation!7644 rBis!167)))) b_lambda!122985)))

(declare-fun b_lambda!122987 () Bool)

(assert (= b_lambda!122915 (or (and b!4184069 b_free!121629 (= (toChars!10195 (transformation!7644 (h!51347 (t!345220 (t!345220 rules!3843))))) (toChars!10195 (transformation!7644 (rule!10710 lt!1489633))))) (and b!4183068 b_free!121617 (= (toChars!10195 (transformation!7644 r!4142)) (toChars!10195 (transformation!7644 (rule!10710 lt!1489633))))) (and b!4183047 b_free!121609 (= (toChars!10195 (transformation!7644 (h!51347 rules!3843))) (toChars!10195 (transformation!7644 (rule!10710 lt!1489633))))) (and b!4183060 b_free!121613 (= (toChars!10195 (transformation!7644 rBis!167)) (toChars!10195 (transformation!7644 (rule!10710 lt!1489633))))) (and b!4183600 b_free!121625 (= (toChars!10195 (transformation!7644 (h!51347 (t!345220 rules!3843)))) (toChars!10195 (transformation!7644 (rule!10710 lt!1489633))))) b_lambda!122987)))

(declare-fun b_lambda!122989 () Bool)

(assert (= b_lambda!122955 (or (and b!4183600 b_free!121625 (= (toChars!10195 (transformation!7644 (h!51347 (t!345220 rules!3843)))) (toChars!10195 (transformation!7644 r!4142)))) (and b!4183068 b_free!121617) (and b!4183047 b_free!121609 (= (toChars!10195 (transformation!7644 (h!51347 rules!3843))) (toChars!10195 (transformation!7644 r!4142)))) (and b!4184069 b_free!121629 (= (toChars!10195 (transformation!7644 (h!51347 (t!345220 (t!345220 rules!3843))))) (toChars!10195 (transformation!7644 r!4142)))) (and b!4183060 b_free!121613 (= (toChars!10195 (transformation!7644 rBis!167)) (toChars!10195 (transformation!7644 r!4142)))) b_lambda!122989)))

(check-sat (not b!4183373) (not d!1234685) (not b!4183699) (not d!1234591) (not b!4183873) (not b!4184089) (not tb!250483) (not d!1234481) (not b!4183764) (not b!4183773) (not b!4184085) (not b!4183957) (not d!1234613) (not b!4183868) (not d!1234589) (not b!4183999) (not tb!250491) (not d!1234563) (not b!4183763) (not d!1234561) (not b!4183624) (not d!1234543) (not d!1234623) (not b!4184035) (not b_next!122317) (not b!4183885) (not b!4183615) (not bm!291835) (not b!4183875) (not b!4184044) (not bm!291837) (not bm!291819) (not b!4183911) (not b!4183995) (not b_lambda!122987) (not b!4183915) (not b_lambda!122975) (not b!4183934) (not d!1234679) (not b!4183768) (not b!4184049) (not b!4184032) (not b!4183717) (not d!1234571) (not b!4183827) (not b!4183965) (not bm!291842) (not b!4183633) (not b!4183804) (not bm!291815) (not d!1234545) (not b!4183886) (not d!1234711) (not b!4183658) (not b!4183979) (not b!4184045) b_and!327489 (not b!4184084) (not b!4183730) (not b_lambda!122947) (not b!4184048) (not bm!291843) (not d!1234647) (not d!1234667) (not b!4183650) (not d!1234633) (not b_lambda!122981) (not b!4184027) (not tb!250467) (not tb!250515) (not b!4184031) (not tb!250507) (not b!4183898) (not b_lambda!122977) (not d!1234501) (not d!1234505) (not b!4184041) (not b_next!122311) (not d!1234581) (not d!1234655) (not b!4183855) (not b!4184018) (not d!1234487) (not b!4184088) (not d!1234523) (not b_next!122315) (not b!4184046) (not b!4184060) (not d!1234707) (not bm!291817) (not b!4184080) (not b!4184050) (not b!4183611) (not b!4183897) (not b!4183820) (not b!4183807) (not bm!291848) (not tb!250523) (not b!4183142) (not bm!291832) (not b!4184017) (not b!4183863) (not b_lambda!122993) (not b_lambda!122945) (not b!4184076) (not d!1234477) (not d!1234645) (not b!4184077) (not bm!291820) (not b!4183990) (not d!1234485) (not b!4183852) (not tb!250499) (not d!1234515) (not d!1234603) (not bm!291839) (not d!1234665) (not b!4183700) (not d!1234587) (not b!4183772) (not b!4183845) (not b!4183818) (not b!4184056) (not b!4184005) (not b_lambda!122973) (not bm!291845) (not b_next!122331) (not b!4183980) (not b!4183861) (not b!4183797) (not bm!291813) (not b!4183986) (not d!1234627) (not b!4184004) b_and!327495 (not b!4183878) (not b!4183920) (not b!4183814) (not b!4183903) (not b!4183949) (not bm!291833) (not d!1234479) (not b!4183714) (not b!4183857) (not b!4183712) (not b!4183729) (not b!4184054) (not b!4184071) (not bm!291840) (not b!4183876) (not b!4183625) (not b!4183627) (not b!4184002) (not b!4183951) (not b!4184065) (not b!4183880) (not bm!291838) (not bm!291816) (not b!4184081) (not b!4184058) (not d!1234617) (not b!4184053) (not b!4184040) (not d!1234551) (not d!1234491) (not b!4184033) (not b!4183939) (not b!4183994) (not b!4183632) (not d!1234517) (not b_next!122329) b_and!327501 (not b_next!122319) (not b_lambda!122943) (not b!4183810) (not b!4183963) (not b!4184037) (not b!4183879) (not b!4183331) b_and!327503 (not b!4183705) (not bm!291830) (not b!4184012) (not b_next!122327) (not b!4184016) (not b!4184008) (not bm!291851) (not d!1234565) (not b!4183944) (not b!4183761) (not b!4183722) (not bm!291818) (not b!4183991) (not b!4184075) b_and!327507 (not d!1234549) (not b_lambda!122971) (not b!4184073) (not b!4183652) (not b!4183909) (not b!4183912) (not d!1234557) (not b!4183904) b_and!327505 (not b!4183941) (not b!4183870) (not bs!596440) (not b_lambda!122961) (not d!1234605) (not b!4183851) (not b!4184000) (not b!4183872) (not b!4183703) (not b!4184043) (not b!4184067) (not b_lambda!122959) (not b!4184062) (not bm!291793) (not b_lambda!122979) (not d!1234469) (not b!4183829) (not b!4183802) (not b!4183953) (not d!1234521) (not d!1234483) (not b!4184061) (not b!4183660) (not b!4183985) (not b!4183765) (not b!4183780) (not bm!291814) (not b!4184039) (not b!4183906) (not b!4183662) (not b!4183641) (not b!4183865) (not bm!291850) (not d!1234555) (not b!4183778) b_and!327499 (not b!4183867) (not b_lambda!122991) (not d!1234463) (not d!1234697) (not d!1234593) (not b!4183936) (not b!4184082) (not tb!250451) (not b!4184013) (not b!4183809) (not b!4183638) (not b!4183815) (not b!4183727) (not d!1234507) (not b!4184006) (not b!4184009) (not d!1234599) (not bm!291812) (not b!4184072) (not bm!291844) (not b!4183831) (not d!1234639) (not b!4183637) (not bm!291849) (not b!4184087) (not b!4183942) (not b!4183846) (not b!4183608) (not b_next!122333) (not d!1234465) (not d!1234703) (not b!4183933) (not tb!250475) (not d!1234607) (not b!4183946) (not b!4183858) (not b!4183630) (not b_next!122313) (not b!4183847) b_and!327491 (not b!4184052) (not b!4183781) (not b!4183609) (not b!4183967) (not d!1234669) (not b!4183948) (not bm!291792) (not d!1234527) (not b!4184057) (not b!4183848) (not tb!250459) (not d!1234659) (not b!4184014) (not bm!291847) (not bm!291795) (not d!1234671) (not b!4183839) (not bm!291836) b_and!327493 (not d!1234525) (not d!1234673) (not b!4183801) (not b!4183921) (not b!4183988) (not b_lambda!122951) (not b!4183849) (not b!4184068) b_and!327497 (not b!4184010) (not b!4183853) (not b!4184028) (not b_lambda!122983) (not b!4184029) (not d!1234573) (not b!4183998) (not b!4183874) (not b_lambda!122941) (not b_lambda!122985) (not b!4183668) (not d!1234705) (not b!4184086) (not b!4183871) (not d!1234559) (not b_next!122321) tp_is_empty!22061 (not b!4183635) (not b!4184066) (not b!4184079) (not b!4183899) (not b!4183978) (not b!4184083) (not b!4183724) (not d!1234649) (not b!4183929) (not bm!291841) (not b!4184036) (not b!4184064) (not d!1234513) (not b_lambda!122989) (not b!4183775) (not b!4183721) (not b!4183643) (not b_lambda!122949) (not d!1234461) (not b!4183984))
(check-sat (not b_next!122317) b_and!327489 (not b_next!122311) (not b_next!122315) (not b_next!122331) b_and!327495 (not b_next!122327) b_and!327507 b_and!327505 b_and!327499 (not b_next!122333) b_and!327493 b_and!327497 (not b_next!122321) (not b_next!122329) b_and!327503 b_and!327501 (not b_next!122319) (not b_next!122313) b_and!327491)
