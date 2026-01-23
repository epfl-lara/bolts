; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!399278 () Bool)

(assert start!399278)

(declare-fun b!4185373 () Bool)

(declare-fun b_free!121679 () Bool)

(declare-fun b_next!122383 () Bool)

(assert (=> b!4185373 (= b_free!121679 (not b_next!122383))))

(declare-fun tp!1279038 () Bool)

(declare-fun b_and!327721 () Bool)

(assert (=> b!4185373 (= tp!1279038 b_and!327721)))

(declare-fun b_free!121681 () Bool)

(declare-fun b_next!122385 () Bool)

(assert (=> b!4185373 (= b_free!121681 (not b_next!122385))))

(declare-fun tp!1279039 () Bool)

(declare-fun b_and!327723 () Bool)

(assert (=> b!4185373 (= tp!1279039 b_and!327723)))

(declare-fun b!4185365 () Bool)

(declare-fun b_free!121683 () Bool)

(declare-fun b_next!122387 () Bool)

(assert (=> b!4185365 (= b_free!121683 (not b_next!122387))))

(declare-fun tp!1279037 () Bool)

(declare-fun b_and!327725 () Bool)

(assert (=> b!4185365 (= tp!1279037 b_and!327725)))

(declare-fun b_free!121685 () Bool)

(declare-fun b_next!122389 () Bool)

(assert (=> b!4185365 (= b_free!121685 (not b_next!122389))))

(declare-fun tp!1279048 () Bool)

(declare-fun b_and!327727 () Bool)

(assert (=> b!4185365 (= tp!1279048 b_and!327727)))

(declare-fun b!4185383 () Bool)

(declare-fun b_free!121687 () Bool)

(declare-fun b_next!122391 () Bool)

(assert (=> b!4185383 (= b_free!121687 (not b_next!122391))))

(declare-fun tp!1279044 () Bool)

(declare-fun b_and!327729 () Bool)

(assert (=> b!4185383 (= tp!1279044 b_and!327729)))

(declare-fun b_free!121689 () Bool)

(declare-fun b_next!122393 () Bool)

(assert (=> b!4185383 (= b_free!121689 (not b_next!122393))))

(declare-fun tp!1279040 () Bool)

(declare-fun b_and!327731 () Bool)

(assert (=> b!4185383 (= tp!1279040 b_and!327731)))

(declare-fun b!4185362 () Bool)

(declare-fun res!1716588 () Bool)

(declare-fun e!2598248 () Bool)

(assert (=> b!4185362 (=> res!1716588 e!2598248)))

(declare-datatypes ((LexerInterface!7241 0))(
  ( (LexerInterfaceExt!7238 (__x!27977 Int)) (Lexer!7239) )
))
(declare-fun thiss!25986 () LexerInterface!7241)

(declare-datatypes ((List!46065 0))(
  ( (Nil!45941) (Cons!45941 (h!51361 (_ BitVec 16)) (t!345564 List!46065)) )
))
(declare-datatypes ((TokenValue!7878 0))(
  ( (FloatLiteralValue!15756 (text!55591 List!46065)) (TokenValueExt!7877 (__x!27978 Int)) (Broken!39390 (value!238474 List!46065)) (Object!8001) (End!7878) (Def!7878) (Underscore!7878) (Match!7878) (Else!7878) (Error!7878) (Case!7878) (If!7878) (Extends!7878) (Abstract!7878) (Class!7878) (Val!7878) (DelimiterValue!15756 (del!7938 List!46065)) (KeywordValue!7884 (value!238475 List!46065)) (CommentValue!15756 (value!238476 List!46065)) (WhitespaceValue!15756 (value!238477 List!46065)) (IndentationValue!7878 (value!238478 List!46065)) (String!53255) (Int32!7878) (Broken!39391 (value!238479 List!46065)) (Boolean!7879) (Unit!65034) (OperatorValue!7881 (op!7938 List!46065)) (IdentifierValue!15756 (value!238480 List!46065)) (IdentifierValue!15757 (value!238481 List!46065)) (WhitespaceValue!15757 (value!238482 List!46065)) (True!15756) (False!15756) (Broken!39392 (value!238483 List!46065)) (Broken!39393 (value!238484 List!46065)) (True!15757) (RightBrace!7878) (RightBracket!7878) (Colon!7878) (Null!7878) (Comma!7878) (LeftBracket!7878) (False!15757) (LeftBrace!7878) (ImaginaryLiteralValue!7878 (text!55592 List!46065)) (StringLiteralValue!23634 (value!238485 List!46065)) (EOFValue!7878 (value!238486 List!46065)) (IdentValue!7878 (value!238487 List!46065)) (DelimiterValue!15757 (value!238488 List!46065)) (DedentValue!7878 (value!238489 List!46065)) (NewLineValue!7878 (value!238490 List!46065)) (IntegerValue!23634 (value!238491 (_ BitVec 32)) (text!55593 List!46065)) (IntegerValue!23635 (value!238492 Int) (text!55594 List!46065)) (Times!7878) (Or!7878) (Equal!7878) (Minus!7878) (Broken!39394 (value!238493 List!46065)) (And!7878) (Div!7878) (LessEqual!7878) (Mod!7878) (Concat!20431) (Not!7878) (Plus!7878) (SpaceValue!7878 (value!238494 List!46065)) (IntegerValue!23636 (value!238495 Int) (text!55595 List!46065)) (StringLiteralValue!23635 (text!55596 List!46065)) (FloatLiteralValue!15757 (text!55597 List!46065)) (BytesLiteralValue!7878 (value!238496 List!46065)) (CommentValue!15757 (value!238497 List!46065)) (StringLiteralValue!23636 (value!238498 List!46065)) (ErrorTokenValue!7878 (msg!7939 List!46065)) )
))
(declare-datatypes ((C!25296 0))(
  ( (C!25297 (val!14810 Int)) )
))
(declare-datatypes ((List!46066 0))(
  ( (Nil!45942) (Cons!45942 (h!51362 C!25296) (t!345565 List!46066)) )
))
(declare-datatypes ((IArray!27723 0))(
  ( (IArray!27724 (innerList!13919 List!46066)) )
))
(declare-datatypes ((Conc!13859 0))(
  ( (Node!13859 (left!34225 Conc!13859) (right!34555 Conc!13859) (csize!27948 Int) (cheight!14070 Int)) (Leaf!21426 (xs!17165 IArray!27723) (csize!27949 Int)) (Empty!13859) )
))
(declare-datatypes ((BalanceConc!27312 0))(
  ( (BalanceConc!27313 (c!714554 Conc!13859)) )
))
(declare-datatypes ((Regex!12553 0))(
  ( (ElementMatch!12553 (c!714555 C!25296)) (Concat!20432 (regOne!25618 Regex!12553) (regTwo!25618 Regex!12553)) (EmptyExpr!12553) (Star!12553 (reg!12882 Regex!12553)) (EmptyLang!12553) (Union!12553 (regOne!25619 Regex!12553) (regTwo!25619 Regex!12553)) )
))
(declare-datatypes ((String!53256 0))(
  ( (String!53257 (value!238499 String)) )
))
(declare-datatypes ((TokenValueInjection!15184 0))(
  ( (TokenValueInjection!15185 (toValue!10344 Int) (toChars!10203 Int)) )
))
(declare-datatypes ((Rule!15096 0))(
  ( (Rule!15097 (regex!7648 Regex!12553) (tag!8512 String!53256) (isSeparator!7648 Bool) (transformation!7648 TokenValueInjection!15184)) )
))
(declare-fun rBis!167 () Rule!15096)

(declare-fun ruleValid!3366 (LexerInterface!7241 Rule!15096) Bool)

(assert (=> b!4185362 (= res!1716588 (not (ruleValid!3366 thiss!25986 rBis!167)))))

(declare-fun b!4185363 () Bool)

(declare-fun res!1716584 () Bool)

(declare-fun e!2598261 () Bool)

(assert (=> b!4185363 (=> (not res!1716584) (not e!2598261))))

(declare-fun r!4142 () Rule!15096)

(declare-fun p!2959 () List!46066)

(declare-fun matchR!6292 (Regex!12553 List!46066) Bool)

(assert (=> b!4185363 (= res!1716584 (matchR!6292 (regex!7648 r!4142) p!2959))))

(declare-fun b!4185364 () Bool)

(declare-fun res!1716578 () Bool)

(assert (=> b!4185364 (=> (not res!1716578) (not e!2598261))))

(declare-fun validRegex!5670 (Regex!12553) Bool)

(assert (=> b!4185364 (= res!1716578 (validRegex!5670 (regex!7648 r!4142)))))

(declare-fun e!2598249 () Bool)

(assert (=> b!4185365 (= e!2598249 (and tp!1279037 tp!1279048))))

(declare-fun b!4185366 () Bool)

(declare-fun e!2598260 () Bool)

(declare-fun tp_is_empty!22069 () Bool)

(declare-fun tp!1279042 () Bool)

(assert (=> b!4185366 (= e!2598260 (and tp_is_empty!22069 tp!1279042))))

(declare-fun b!4185367 () Bool)

(declare-fun e!2598263 () Bool)

(declare-fun tp!1279036 () Bool)

(assert (=> b!4185367 (= e!2598263 (and tp_is_empty!22069 tp!1279036))))

(declare-fun b!4185368 () Bool)

(declare-fun res!1716583 () Bool)

(assert (=> b!4185368 (=> (not res!1716583) (not e!2598261))))

(declare-datatypes ((List!46067 0))(
  ( (Nil!45943) (Cons!45943 (h!51363 Rule!15096) (t!345566 List!46067)) )
))
(declare-fun rules!3843 () List!46067)

(declare-fun rulesInvariant!6454 (LexerInterface!7241 List!46067) Bool)

(assert (=> b!4185368 (= res!1716583 (rulesInvariant!6454 thiss!25986 rules!3843))))

(declare-fun b!4185369 () Bool)

(declare-fun res!1716589 () Bool)

(assert (=> b!4185369 (=> (not res!1716589) (not e!2598261))))

(declare-fun contains!9457 (List!46067 Rule!15096) Bool)

(assert (=> b!4185369 (= res!1716589 (contains!9457 rules!3843 rBis!167))))

(declare-fun b!4185370 () Bool)

(declare-fun e!2598256 () Bool)

(assert (=> b!4185370 (= e!2598261 (not e!2598256))))

(declare-fun res!1716581 () Bool)

(assert (=> b!4185370 (=> res!1716581 e!2598256)))

(declare-datatypes ((Token!14010 0))(
  ( (Token!14011 (value!238500 TokenValue!7878) (rule!10718 Rule!15096) (size!33740 Int) (originalCharacters!8036 List!46066)) )
))
(declare-datatypes ((tuple2!43750 0))(
  ( (tuple2!43751 (_1!25009 Token!14010) (_2!25009 List!46066)) )
))
(declare-datatypes ((Option!9842 0))(
  ( (None!9841) (Some!9841 (v!40659 tuple2!43750)) )
))
(declare-fun lt!1490545 () Option!9842)

(declare-fun input!3342 () List!46066)

(declare-fun maxPrefixOneRule!3250 (LexerInterface!7241 Rule!15096 List!46066) Option!9842)

(assert (=> b!4185370 (= res!1716581 (not (= (maxPrefixOneRule!3250 thiss!25986 r!4142 input!3342) lt!1490545)))))

(declare-fun lt!1490537 () TokenValue!7878)

(declare-fun lt!1490539 () List!46066)

(declare-fun lt!1490546 () Int)

(assert (=> b!4185370 (= lt!1490545 (Some!9841 (tuple2!43751 (Token!14011 lt!1490537 r!4142 lt!1490546 p!2959) lt!1490539)))))

(declare-fun getSuffix!2798 (List!46066 List!46066) List!46066)

(assert (=> b!4185370 (= lt!1490539 (getSuffix!2798 input!3342 p!2959))))

(declare-fun size!33741 (List!46066) Int)

(assert (=> b!4185370 (= lt!1490546 (size!33741 p!2959))))

(declare-fun lt!1490538 () BalanceConc!27312)

(declare-fun apply!10613 (TokenValueInjection!15184 BalanceConc!27312) TokenValue!7878)

(assert (=> b!4185370 (= lt!1490537 (apply!10613 (transformation!7648 r!4142) lt!1490538))))

(declare-fun isPrefix!4505 (List!46066 List!46066) Bool)

(assert (=> b!4185370 (isPrefix!4505 input!3342 input!3342)))

(declare-datatypes ((Unit!65035 0))(
  ( (Unit!65036) )
))
(declare-fun lt!1490541 () Unit!65035)

(declare-fun lemmaIsPrefixRefl!2934 (List!46066 List!46066) Unit!65035)

(assert (=> b!4185370 (= lt!1490541 (lemmaIsPrefixRefl!2934 input!3342 input!3342))))

(declare-fun lt!1490542 () Unit!65035)

(declare-fun lemmaSemiInverse!2414 (TokenValueInjection!15184 BalanceConc!27312) Unit!65035)

(assert (=> b!4185370 (= lt!1490542 (lemmaSemiInverse!2414 (transformation!7648 r!4142) lt!1490538))))

(declare-fun seqFromList!5673 (List!46066) BalanceConc!27312)

(assert (=> b!4185370 (= lt!1490538 (seqFromList!5673 p!2959))))

(declare-fun b!4185371 () Bool)

(declare-fun res!1716582 () Bool)

(assert (=> b!4185371 (=> (not res!1716582) (not e!2598261))))

(assert (=> b!4185371 (= res!1716582 (isPrefix!4505 p!2959 input!3342))))

(declare-fun b!4185372 () Bool)

(declare-fun e!2598259 () Bool)

(declare-fun tp!1279043 () Bool)

(assert (=> b!4185372 (= e!2598259 (and tp_is_empty!22069 tp!1279043))))

(declare-fun e!2598247 () Bool)

(assert (=> b!4185373 (= e!2598247 (and tp!1279038 tp!1279039))))

(declare-fun b!4185374 () Bool)

(declare-fun tp!1279045 () Bool)

(declare-fun e!2598255 () Bool)

(declare-fun e!2598252 () Bool)

(declare-fun inv!60488 (String!53256) Bool)

(declare-fun inv!60490 (TokenValueInjection!15184) Bool)

(assert (=> b!4185374 (= e!2598255 (and tp!1279045 (inv!60488 (tag!8512 r!4142)) (inv!60490 (transformation!7648 r!4142)) e!2598252))))

(declare-fun b!4185375 () Bool)

(declare-fun e!2598262 () Bool)

(declare-fun e!2598250 () Bool)

(assert (=> b!4185375 (= e!2598262 e!2598250)))

(declare-fun res!1716586 () Bool)

(assert (=> b!4185375 (=> res!1716586 e!2598250)))

(declare-fun lt!1490549 () List!46066)

(declare-fun pBis!107 () List!46066)

(assert (=> b!4185375 (= res!1716586 (not (= lt!1490549 pBis!107)))))

(declare-fun lt!1490550 () tuple2!43750)

(declare-fun ++!11720 (List!46066 List!46066) List!46066)

(assert (=> b!4185375 (isPrefix!4505 lt!1490549 (++!11720 lt!1490549 (_2!25009 lt!1490550)))))

(declare-fun lt!1490548 () Unit!65035)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3002 (List!46066 List!46066) Unit!65035)

(assert (=> b!4185375 (= lt!1490548 (lemmaConcatTwoListThenFirstIsPrefix!3002 lt!1490549 (_2!25009 lt!1490550)))))

(declare-fun list!16594 (BalanceConc!27312) List!46066)

(declare-fun charsOf!5083 (Token!14010) BalanceConc!27312)

(assert (=> b!4185375 (= lt!1490549 (list!16594 (charsOf!5083 (_1!25009 lt!1490550))))))

(declare-fun lt!1490547 () Option!9842)

(declare-fun get!14931 (Option!9842) tuple2!43750)

(assert (=> b!4185375 (= lt!1490550 (get!14931 lt!1490547))))

(declare-fun tp!1279041 () Bool)

(declare-fun e!2598251 () Bool)

(declare-fun b!4185376 () Bool)

(assert (=> b!4185376 (= e!2598251 (and tp!1279041 (inv!60488 (tag!8512 rBis!167)) (inv!60490 (transformation!7648 rBis!167)) e!2598249))))

(declare-fun b!4185377 () Bool)

(declare-fun res!1716585 () Bool)

(assert (=> b!4185377 (=> (not res!1716585) (not e!2598261))))

(assert (=> b!4185377 (= res!1716585 (contains!9457 rules!3843 r!4142))))

(declare-fun b!4185378 () Bool)

(assert (=> b!4185378 (= e!2598256 e!2598248)))

(declare-fun res!1716577 () Bool)

(assert (=> b!4185378 (=> res!1716577 e!2598248)))

(declare-fun lt!1490543 () Int)

(assert (=> b!4185378 (= res!1716577 (<= lt!1490543 lt!1490546))))

(assert (=> b!4185378 (= lt!1490543 (size!33741 pBis!107))))

(declare-fun b!4185379 () Bool)

(declare-fun res!1716580 () Bool)

(assert (=> b!4185379 (=> res!1716580 e!2598248)))

(declare-fun maxPrefix!4289 (LexerInterface!7241 List!46067 List!46066) Option!9842)

(assert (=> b!4185379 (= res!1716580 (not (= (maxPrefix!4289 thiss!25986 rules!3843 input!3342) lt!1490545)))))

(declare-fun b!4185361 () Bool)

(assert (=> b!4185361 (= e!2598250 true)))

(declare-fun lt!1490536 () List!46066)

(assert (=> b!4185361 (= lt!1490536 (++!11720 p!2959 lt!1490539))))

(declare-fun res!1716587 () Bool)

(assert (=> start!399278 (=> (not res!1716587) (not e!2598261))))

(get-info :version)

(assert (=> start!399278 (= res!1716587 ((_ is Lexer!7239) thiss!25986))))

(assert (=> start!399278 e!2598261))

(assert (=> start!399278 true))

(assert (=> start!399278 e!2598251))

(assert (=> start!399278 e!2598255))

(declare-fun e!2598254 () Bool)

(assert (=> start!399278 e!2598254))

(assert (=> start!399278 e!2598259))

(assert (=> start!399278 e!2598260))

(assert (=> start!399278 e!2598263))

(declare-fun b!4185380 () Bool)

(declare-fun res!1716579 () Bool)

(assert (=> b!4185380 (=> (not res!1716579) (not e!2598261))))

(assert (=> b!4185380 (= res!1716579 (ruleValid!3366 thiss!25986 r!4142))))

(declare-fun b!4185381 () Bool)

(declare-fun res!1716592 () Bool)

(assert (=> b!4185381 (=> (not res!1716592) (not e!2598261))))

(declare-fun isEmpty!27188 (List!46067) Bool)

(assert (=> b!4185381 (= res!1716592 (not (isEmpty!27188 rules!3843)))))

(declare-fun b!4185382 () Bool)

(assert (=> b!4185382 (= e!2598248 e!2598262)))

(declare-fun res!1716590 () Bool)

(assert (=> b!4185382 (=> res!1716590 e!2598262)))

(declare-fun isEmpty!27189 (Option!9842) Bool)

(assert (=> b!4185382 (= res!1716590 (isEmpty!27189 lt!1490547))))

(assert (=> b!4185382 (= lt!1490547 (maxPrefixOneRule!3250 thiss!25986 rBis!167 input!3342))))

(declare-fun lt!1490540 () Unit!65035)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2372 (LexerInterface!7241 Rule!15096 List!46067) Unit!65035)

(assert (=> b!4185382 (= lt!1490540 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2372 thiss!25986 rBis!167 rules!3843))))

(assert (=> b!4185382 (<= lt!1490543 (size!33741 input!3342))))

(declare-fun lt!1490544 () Unit!65035)

(declare-fun lemmaIsPrefixThenSmallerEqSize!535 (List!46066 List!46066) Unit!65035)

(assert (=> b!4185382 (= lt!1490544 (lemmaIsPrefixThenSmallerEqSize!535 pBis!107 input!3342))))

(assert (=> b!4185383 (= e!2598252 (and tp!1279044 tp!1279040))))

(declare-fun b!4185384 () Bool)

(declare-fun e!2598264 () Bool)

(declare-fun tp!1279046 () Bool)

(assert (=> b!4185384 (= e!2598254 (and e!2598264 tp!1279046))))

(declare-fun b!4185385 () Bool)

(declare-fun tp!1279047 () Bool)

(assert (=> b!4185385 (= e!2598264 (and tp!1279047 (inv!60488 (tag!8512 (h!51363 rules!3843))) (inv!60490 (transformation!7648 (h!51363 rules!3843))) e!2598247))))

(declare-fun b!4185386 () Bool)

(declare-fun res!1716591 () Bool)

(assert (=> b!4185386 (=> (not res!1716591) (not e!2598261))))

(assert (=> b!4185386 (= res!1716591 (isPrefix!4505 pBis!107 input!3342))))

(assert (= (and start!399278 res!1716587) b!4185371))

(assert (= (and b!4185371 res!1716582) b!4185386))

(assert (= (and b!4185386 res!1716591) b!4185381))

(assert (= (and b!4185381 res!1716592) b!4185368))

(assert (= (and b!4185368 res!1716583) b!4185377))

(assert (= (and b!4185377 res!1716585) b!4185369))

(assert (= (and b!4185369 res!1716589) b!4185364))

(assert (= (and b!4185364 res!1716578) b!4185363))

(assert (= (and b!4185363 res!1716584) b!4185380))

(assert (= (and b!4185380 res!1716579) b!4185370))

(assert (= (and b!4185370 (not res!1716581)) b!4185378))

(assert (= (and b!4185378 (not res!1716577)) b!4185362))

(assert (= (and b!4185362 (not res!1716588)) b!4185379))

(assert (= (and b!4185379 (not res!1716580)) b!4185382))

(assert (= (and b!4185382 (not res!1716590)) b!4185375))

(assert (= (and b!4185375 (not res!1716586)) b!4185361))

(assert (= b!4185376 b!4185365))

(assert (= start!399278 b!4185376))

(assert (= b!4185374 b!4185383))

(assert (= start!399278 b!4185374))

(assert (= b!4185385 b!4185373))

(assert (= b!4185384 b!4185385))

(assert (= (and start!399278 ((_ is Cons!45943) rules!3843)) b!4185384))

(assert (= (and start!399278 ((_ is Cons!45942) input!3342)) b!4185372))

(assert (= (and start!399278 ((_ is Cons!45942) pBis!107)) b!4185366))

(assert (= (and start!399278 ((_ is Cons!45942) p!2959)) b!4185367))

(declare-fun m!4774335 () Bool)

(assert (=> b!4185368 m!4774335))

(declare-fun m!4774337 () Bool)

(assert (=> b!4185371 m!4774337))

(declare-fun m!4774339 () Bool)

(assert (=> b!4185375 m!4774339))

(declare-fun m!4774341 () Bool)

(assert (=> b!4185375 m!4774341))

(declare-fun m!4774343 () Bool)

(assert (=> b!4185375 m!4774343))

(declare-fun m!4774345 () Bool)

(assert (=> b!4185375 m!4774345))

(assert (=> b!4185375 m!4774339))

(declare-fun m!4774347 () Bool)

(assert (=> b!4185375 m!4774347))

(declare-fun m!4774349 () Bool)

(assert (=> b!4185375 m!4774349))

(assert (=> b!4185375 m!4774347))

(declare-fun m!4774351 () Bool)

(assert (=> b!4185363 m!4774351))

(declare-fun m!4774353 () Bool)

(assert (=> b!4185381 m!4774353))

(declare-fun m!4774355 () Bool)

(assert (=> b!4185376 m!4774355))

(declare-fun m!4774357 () Bool)

(assert (=> b!4185376 m!4774357))

(declare-fun m!4774359 () Bool)

(assert (=> b!4185380 m!4774359))

(declare-fun m!4774361 () Bool)

(assert (=> b!4185377 m!4774361))

(declare-fun m!4774363 () Bool)

(assert (=> b!4185370 m!4774363))

(declare-fun m!4774365 () Bool)

(assert (=> b!4185370 m!4774365))

(declare-fun m!4774367 () Bool)

(assert (=> b!4185370 m!4774367))

(declare-fun m!4774369 () Bool)

(assert (=> b!4185370 m!4774369))

(declare-fun m!4774371 () Bool)

(assert (=> b!4185370 m!4774371))

(declare-fun m!4774373 () Bool)

(assert (=> b!4185370 m!4774373))

(declare-fun m!4774375 () Bool)

(assert (=> b!4185370 m!4774375))

(declare-fun m!4774377 () Bool)

(assert (=> b!4185370 m!4774377))

(declare-fun m!4774379 () Bool)

(assert (=> b!4185386 m!4774379))

(declare-fun m!4774381 () Bool)

(assert (=> b!4185364 m!4774381))

(declare-fun m!4774383 () Bool)

(assert (=> b!4185362 m!4774383))

(declare-fun m!4774385 () Bool)

(assert (=> b!4185374 m!4774385))

(declare-fun m!4774387 () Bool)

(assert (=> b!4185374 m!4774387))

(declare-fun m!4774389 () Bool)

(assert (=> b!4185382 m!4774389))

(declare-fun m!4774391 () Bool)

(assert (=> b!4185382 m!4774391))

(declare-fun m!4774393 () Bool)

(assert (=> b!4185382 m!4774393))

(declare-fun m!4774395 () Bool)

(assert (=> b!4185382 m!4774395))

(declare-fun m!4774397 () Bool)

(assert (=> b!4185382 m!4774397))

(declare-fun m!4774399 () Bool)

(assert (=> b!4185361 m!4774399))

(declare-fun m!4774401 () Bool)

(assert (=> b!4185379 m!4774401))

(declare-fun m!4774403 () Bool)

(assert (=> b!4185378 m!4774403))

(declare-fun m!4774405 () Bool)

(assert (=> b!4185369 m!4774405))

(declare-fun m!4774407 () Bool)

(assert (=> b!4185385 m!4774407))

(declare-fun m!4774409 () Bool)

(assert (=> b!4185385 m!4774409))

(check-sat (not b!4185377) b_and!327721 b_and!327725 (not b!4185369) (not b_next!122383) (not b!4185367) (not b_next!122391) (not b!4185371) (not b!4185375) (not b!4185386) (not b!4185362) (not b!4185370) b_and!327727 b_and!327729 b_and!327723 (not b!4185372) (not b!4185361) (not b!4185384) (not b!4185376) (not b!4185378) (not b!4185368) tp_is_empty!22069 (not b!4185385) (not b_next!122385) (not b!4185366) (not b!4185379) (not b!4185382) (not b_next!122389) (not b!4185381) (not b!4185363) b_and!327731 (not b_next!122393) (not b_next!122387) (not b!4185364) (not b!4185380) (not b!4185374))
(check-sat b_and!327723 b_and!327721 b_and!327725 (not b_next!122383) (not b_next!122391) (not b_next!122385) (not b_next!122389) b_and!327727 b_and!327729 (not b_next!122387) b_and!327731 (not b_next!122393))
