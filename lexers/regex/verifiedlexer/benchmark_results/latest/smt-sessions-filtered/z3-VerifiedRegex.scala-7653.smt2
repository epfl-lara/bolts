; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!404006 () Bool)

(assert start!404006)

(declare-fun b!4225464 () Bool)

(declare-fun b_free!124395 () Bool)

(declare-fun b_next!125099 () Bool)

(assert (=> b!4225464 (= b_free!124395 (not b_next!125099))))

(declare-fun tp!1293460 () Bool)

(declare-fun b_and!333629 () Bool)

(assert (=> b!4225464 (= tp!1293460 b_and!333629)))

(declare-fun b_free!124397 () Bool)

(declare-fun b_next!125101 () Bool)

(assert (=> b!4225464 (= b_free!124397 (not b_next!125101))))

(declare-fun tp!1293457 () Bool)

(declare-fun b_and!333631 () Bool)

(assert (=> b!4225464 (= tp!1293457 b_and!333631)))

(declare-fun b!4225450 () Bool)

(declare-fun b_free!124399 () Bool)

(declare-fun b_next!125103 () Bool)

(assert (=> b!4225450 (= b_free!124399 (not b_next!125103))))

(declare-fun tp!1293459 () Bool)

(declare-fun b_and!333633 () Bool)

(assert (=> b!4225450 (= tp!1293459 b_and!333633)))

(declare-fun b_free!124401 () Bool)

(declare-fun b_next!125105 () Bool)

(assert (=> b!4225450 (= b_free!124401 (not b_next!125105))))

(declare-fun tp!1293462 () Bool)

(declare-fun b_and!333635 () Bool)

(assert (=> b!4225450 (= tp!1293462 b_and!333635)))

(declare-fun e!2623411 () Bool)

(assert (=> b!4225450 (= e!2623411 (and tp!1293459 tp!1293462))))

(declare-fun b!4225451 () Bool)

(declare-fun res!1737345 () Bool)

(declare-fun e!2623409 () Bool)

(assert (=> b!4225451 (=> res!1737345 e!2623409)))

(declare-datatypes ((List!46663 0))(
  ( (Nil!46539) (Cons!46539 (h!51959 (_ BitVec 16)) (t!349280 List!46663)) )
))
(declare-datatypes ((TokenValue!8050 0))(
  ( (FloatLiteralValue!16100 (text!56795 List!46663)) (TokenValueExt!8049 (__x!28323 Int)) (Broken!40250 (value!243371 List!46663)) (Object!8173) (End!8050) (Def!8050) (Underscore!8050) (Match!8050) (Else!8050) (Error!8050) (Case!8050) (If!8050) (Extends!8050) (Abstract!8050) (Class!8050) (Val!8050) (DelimiterValue!16100 (del!8110 List!46663)) (KeywordValue!8056 (value!243372 List!46663)) (CommentValue!16100 (value!243373 List!46663)) (WhitespaceValue!16100 (value!243374 List!46663)) (IndentationValue!8050 (value!243375 List!46663)) (String!54119) (Int32!8050) (Broken!40251 (value!243376 List!46663)) (Boolean!8051) (Unit!65698) (OperatorValue!8053 (op!8110 List!46663)) (IdentifierValue!16100 (value!243377 List!46663)) (IdentifierValue!16101 (value!243378 List!46663)) (WhitespaceValue!16101 (value!243379 List!46663)) (True!16100) (False!16100) (Broken!40252 (value!243380 List!46663)) (Broken!40253 (value!243381 List!46663)) (True!16101) (RightBrace!8050) (RightBracket!8050) (Colon!8050) (Null!8050) (Comma!8050) (LeftBracket!8050) (False!16101) (LeftBrace!8050) (ImaginaryLiteralValue!8050 (text!56796 List!46663)) (StringLiteralValue!24150 (value!243382 List!46663)) (EOFValue!8050 (value!243383 List!46663)) (IdentValue!8050 (value!243384 List!46663)) (DelimiterValue!16101 (value!243385 List!46663)) (DedentValue!8050 (value!243386 List!46663)) (NewLineValue!8050 (value!243387 List!46663)) (IntegerValue!24150 (value!243388 (_ BitVec 32)) (text!56797 List!46663)) (IntegerValue!24151 (value!243389 Int) (text!56798 List!46663)) (Times!8050) (Or!8050) (Equal!8050) (Minus!8050) (Broken!40254 (value!243390 List!46663)) (And!8050) (Div!8050) (LessEqual!8050) (Mod!8050) (Concat!20775) (Not!8050) (Plus!8050) (SpaceValue!8050 (value!243391 List!46663)) (IntegerValue!24152 (value!243392 Int) (text!56799 List!46663)) (StringLiteralValue!24151 (text!56800 List!46663)) (FloatLiteralValue!16101 (text!56801 List!46663)) (BytesLiteralValue!8050 (value!243393 List!46663)) (CommentValue!16101 (value!243394 List!46663)) (StringLiteralValue!24152 (value!243395 List!46663)) (ErrorTokenValue!8050 (msg!8111 List!46663)) )
))
(declare-datatypes ((C!25644 0))(
  ( (C!25645 (val!14984 Int)) )
))
(declare-datatypes ((List!46664 0))(
  ( (Nil!46540) (Cons!46540 (h!51960 C!25644) (t!349281 List!46664)) )
))
(declare-datatypes ((IArray!28067 0))(
  ( (IArray!28068 (innerList!14091 List!46664)) )
))
(declare-datatypes ((Conc!14031 0))(
  ( (Node!14031 (left!34604 Conc!14031) (right!34934 Conc!14031) (csize!28292 Int) (cheight!14242 Int)) (Leaf!21685 (xs!17337 IArray!28067) (csize!28293 Int)) (Empty!14031) )
))
(declare-datatypes ((BalanceConc!27656 0))(
  ( (BalanceConc!27657 (c!718612 Conc!14031)) )
))
(declare-datatypes ((TokenValueInjection!15528 0))(
  ( (TokenValueInjection!15529 (toValue!10548 Int) (toChars!10407 Int)) )
))
(declare-datatypes ((Regex!12725 0))(
  ( (ElementMatch!12725 (c!718613 C!25644)) (Concat!20776 (regOne!25962 Regex!12725) (regTwo!25962 Regex!12725)) (EmptyExpr!12725) (Star!12725 (reg!13054 Regex!12725)) (EmptyLang!12725) (Union!12725 (regOne!25963 Regex!12725) (regTwo!25963 Regex!12725)) )
))
(declare-datatypes ((String!54120 0))(
  ( (String!54121 (value!243396 String)) )
))
(declare-datatypes ((Rule!15440 0))(
  ( (Rule!15441 (regex!7820 Regex!12725) (tag!8684 String!54120) (isSeparator!7820 Bool) (transformation!7820 TokenValueInjection!15528)) )
))
(declare-datatypes ((List!46665 0))(
  ( (Nil!46541) (Cons!46541 (h!51961 Rule!15440) (t!349282 List!46665)) )
))
(declare-fun rules!4013 () List!46665)

(declare-fun isEmpty!27580 (List!46665) Bool)

(assert (=> b!4225451 (= res!1737345 (isEmpty!27580 (t!349282 rules!4013)))))

(declare-fun b!4225452 () Bool)

(declare-fun e!2623407 () Bool)

(assert (=> b!4225452 (= e!2623407 (not e!2623409))))

(declare-fun res!1737338 () Bool)

(assert (=> b!4225452 (=> res!1737338 e!2623409)))

(declare-fun r!4313 () Rule!15440)

(get-info :version)

(assert (=> b!4225452 (= res!1737338 (or (and ((_ is Cons!46541) rules!4013) (= r!4313 (h!51961 rules!4013))) (not ((_ is Cons!46541) rules!4013)) (= r!4313 (h!51961 rules!4013))))))

(declare-datatypes ((LexerInterface!7415 0))(
  ( (LexerInterfaceExt!7412 (__x!28324 Int)) (Lexer!7413) )
))
(declare-fun thiss!26728 () LexerInterface!7415)

(declare-fun ruleValid!3528 (LexerInterface!7415 Rule!15440) Bool)

(assert (=> b!4225452 (ruleValid!3528 thiss!26728 r!4313)))

(declare-datatypes ((Unit!65699 0))(
  ( (Unit!65700) )
))
(declare-fun lt!1502926 () Unit!65699)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2440 (LexerInterface!7415 Rule!15440 List!46665) Unit!65699)

(assert (=> b!4225452 (= lt!1502926 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2440 thiss!26728 r!4313 rules!4013))))

(declare-fun b!4225453 () Bool)

(declare-fun res!1737337 () Bool)

(assert (=> b!4225453 (=> (not res!1737337) (not e!2623407))))

(assert (=> b!4225453 (= res!1737337 (not (isEmpty!27580 rules!4013)))))

(declare-fun b!4225454 () Bool)

(declare-fun res!1737341 () Bool)

(assert (=> b!4225454 (=> res!1737341 e!2623409)))

(declare-fun contains!9643 (List!46665 Rule!15440) Bool)

(assert (=> b!4225454 (= res!1737341 (not (contains!9643 (t!349282 rules!4013) r!4313)))))

(declare-fun b!4225455 () Bool)

(declare-fun e!2623410 () Bool)

(declare-fun tp_is_empty!22413 () Bool)

(declare-fun tp!1293456 () Bool)

(assert (=> b!4225455 (= e!2623410 (and tp_is_empty!22413 tp!1293456))))

(declare-fun b!4225456 () Bool)

(declare-fun res!1737344 () Bool)

(assert (=> b!4225456 (=> res!1737344 e!2623409)))

(declare-fun rulesValidInductive!2924 (LexerInterface!7415 List!46665) Bool)

(assert (=> b!4225456 (= res!1737344 (not (rulesValidInductive!2924 thiss!26728 (t!349282 rules!4013))))))

(declare-fun e!2623403 () Bool)

(declare-fun b!4225457 () Bool)

(declare-fun tp!1293458 () Bool)

(declare-fun inv!61206 (String!54120) Bool)

(declare-fun inv!61208 (TokenValueInjection!15528) Bool)

(assert (=> b!4225457 (= e!2623403 (and tp!1293458 (inv!61206 (tag!8684 r!4313)) (inv!61208 (transformation!7820 r!4313)) e!2623411))))

(declare-fun b!4225458 () Bool)

(declare-fun e!2623406 () Bool)

(declare-fun e!2623404 () Bool)

(declare-fun tp!1293455 () Bool)

(assert (=> b!4225458 (= e!2623406 (and e!2623404 tp!1293455))))

(declare-fun input!3561 () List!46664)

(declare-fun b!4225459 () Bool)

(declare-datatypes ((Token!14338 0))(
  ( (Token!14339 (value!243397 TokenValue!8050) (rule!10964 Rule!15440) (size!34159 Int) (originalCharacters!8200 List!46664)) )
))
(declare-datatypes ((tuple2!44242 0))(
  ( (tuple2!44243 (_1!25255 Token!14338) (_2!25255 List!46664)) )
))
(declare-datatypes ((Option!10006 0))(
  ( (None!10005) (Some!10005 (v!40913 tuple2!44242)) )
))
(declare-fun isEmpty!27581 (Option!10006) Bool)

(declare-fun maxPrefix!4453 (LexerInterface!7415 List!46665 List!46664) Option!10006)

(assert (=> b!4225459 (= e!2623409 (isEmpty!27581 (maxPrefix!4453 thiss!26728 (t!349282 rules!4013) input!3561)))))

(declare-fun b!4225460 () Bool)

(declare-fun res!1737340 () Bool)

(assert (=> b!4225460 (=> (not res!1737340) (not e!2623407))))

(assert (=> b!4225460 (= res!1737340 (rulesValidInductive!2924 thiss!26728 rules!4013))))

(declare-fun b!4225461 () Bool)

(declare-fun res!1737342 () Bool)

(assert (=> b!4225461 (=> (not res!1737342) (not e!2623407))))

(assert (=> b!4225461 (= res!1737342 (contains!9643 rules!4013 r!4313))))

(declare-fun b!4225462 () Bool)

(declare-fun res!1737339 () Bool)

(assert (=> b!4225462 (=> (not res!1737339) (not e!2623407))))

(assert (=> b!4225462 (= res!1737339 (isEmpty!27581 (maxPrefix!4453 thiss!26728 rules!4013 input!3561)))))

(declare-fun res!1737343 () Bool)

(assert (=> start!404006 (=> (not res!1737343) (not e!2623407))))

(assert (=> start!404006 (= res!1737343 ((_ is Lexer!7413) thiss!26728))))

(assert (=> start!404006 e!2623407))

(assert (=> start!404006 true))

(assert (=> start!404006 e!2623406))

(assert (=> start!404006 e!2623403))

(assert (=> start!404006 e!2623410))

(declare-fun e!2623408 () Bool)

(declare-fun b!4225463 () Bool)

(declare-fun tp!1293461 () Bool)

(assert (=> b!4225463 (= e!2623404 (and tp!1293461 (inv!61206 (tag!8684 (h!51961 rules!4013))) (inv!61208 (transformation!7820 (h!51961 rules!4013))) e!2623408))))

(assert (=> b!4225464 (= e!2623408 (and tp!1293460 tp!1293457))))

(assert (= (and start!404006 res!1737343) b!4225453))

(assert (= (and b!4225453 res!1737337) b!4225460))

(assert (= (and b!4225460 res!1737340) b!4225461))

(assert (= (and b!4225461 res!1737342) b!4225462))

(assert (= (and b!4225462 res!1737339) b!4225452))

(assert (= (and b!4225452 (not res!1737338)) b!4225451))

(assert (= (and b!4225451 (not res!1737345)) b!4225456))

(assert (= (and b!4225456 (not res!1737344)) b!4225454))

(assert (= (and b!4225454 (not res!1737341)) b!4225459))

(assert (= b!4225463 b!4225464))

(assert (= b!4225458 b!4225463))

(assert (= (and start!404006 ((_ is Cons!46541) rules!4013)) b!4225458))

(assert (= b!4225457 b!4225450))

(assert (= start!404006 b!4225457))

(assert (= (and start!404006 ((_ is Cons!46540) input!3561)) b!4225455))

(declare-fun m!4813499 () Bool)

(assert (=> b!4225454 m!4813499))

(declare-fun m!4813501 () Bool)

(assert (=> b!4225463 m!4813501))

(declare-fun m!4813503 () Bool)

(assert (=> b!4225463 m!4813503))

(declare-fun m!4813505 () Bool)

(assert (=> b!4225452 m!4813505))

(declare-fun m!4813507 () Bool)

(assert (=> b!4225452 m!4813507))

(declare-fun m!4813509 () Bool)

(assert (=> b!4225453 m!4813509))

(declare-fun m!4813511 () Bool)

(assert (=> b!4225457 m!4813511))

(declare-fun m!4813513 () Bool)

(assert (=> b!4225457 m!4813513))

(declare-fun m!4813515 () Bool)

(assert (=> b!4225456 m!4813515))

(declare-fun m!4813517 () Bool)

(assert (=> b!4225461 m!4813517))

(declare-fun m!4813519 () Bool)

(assert (=> b!4225460 m!4813519))

(declare-fun m!4813521 () Bool)

(assert (=> b!4225459 m!4813521))

(assert (=> b!4225459 m!4813521))

(declare-fun m!4813523 () Bool)

(assert (=> b!4225459 m!4813523))

(declare-fun m!4813525 () Bool)

(assert (=> b!4225462 m!4813525))

(assert (=> b!4225462 m!4813525))

(declare-fun m!4813527 () Bool)

(assert (=> b!4225462 m!4813527))

(declare-fun m!4813529 () Bool)

(assert (=> b!4225451 m!4813529))

(check-sat (not b!4225455) (not b!4225454) (not b!4225453) (not b_next!125103) (not b_next!125099) b_and!333635 (not b!4225451) (not b!4225463) (not b!4225459) (not b_next!125105) (not b!4225452) (not b!4225461) b_and!333633 (not b_next!125101) (not b!4225456) (not b!4225460) b_and!333629 (not b!4225458) tp_is_empty!22413 b_and!333631 (not b!4225462) (not b!4225457))
(check-sat (not b_next!125103) (not b_next!125099) b_and!333629 b_and!333635 b_and!333631 (not b_next!125105) b_and!333633 (not b_next!125101))
(get-model)

(declare-fun d!1244156 () Bool)

(assert (=> d!1244156 (= (isEmpty!27581 (maxPrefix!4453 thiss!26728 rules!4013 input!3561)) (not ((_ is Some!10005) (maxPrefix!4453 thiss!26728 rules!4013 input!3561))))))

(assert (=> b!4225462 d!1244156))

(declare-fun d!1244158 () Bool)

(declare-fun e!2623424 () Bool)

(assert (=> d!1244158 e!2623424))

(declare-fun res!1737371 () Bool)

(assert (=> d!1244158 (=> res!1737371 e!2623424)))

(declare-fun lt!1502939 () Option!10006)

(assert (=> d!1244158 (= res!1737371 (isEmpty!27581 lt!1502939))))

(declare-fun e!2623423 () Option!10006)

(assert (=> d!1244158 (= lt!1502939 e!2623423)))

(declare-fun c!718616 () Bool)

(assert (=> d!1244158 (= c!718616 (and ((_ is Cons!46541) rules!4013) ((_ is Nil!46541) (t!349282 rules!4013))))))

(declare-fun lt!1502942 () Unit!65699)

(declare-fun lt!1502940 () Unit!65699)

(assert (=> d!1244158 (= lt!1502942 lt!1502940)))

(declare-fun isPrefix!4669 (List!46664 List!46664) Bool)

(assert (=> d!1244158 (isPrefix!4669 input!3561 input!3561)))

(declare-fun lemmaIsPrefixRefl!3086 (List!46664 List!46664) Unit!65699)

(assert (=> d!1244158 (= lt!1502940 (lemmaIsPrefixRefl!3086 input!3561 input!3561))))

(assert (=> d!1244158 (rulesValidInductive!2924 thiss!26728 rules!4013)))

(assert (=> d!1244158 (= (maxPrefix!4453 thiss!26728 rules!4013 input!3561) lt!1502939)))

(declare-fun b!4225487 () Bool)

(declare-fun res!1737372 () Bool)

(declare-fun e!2623425 () Bool)

(assert (=> b!4225487 (=> (not res!1737372) (not e!2623425))))

(declare-fun matchR!6402 (Regex!12725 List!46664) Bool)

(declare-fun get!15148 (Option!10006) tuple2!44242)

(declare-fun list!16834 (BalanceConc!27656) List!46664)

(declare-fun charsOf!5233 (Token!14338) BalanceConc!27656)

(assert (=> b!4225487 (= res!1737372 (matchR!6402 (regex!7820 (rule!10964 (_1!25255 (get!15148 lt!1502939)))) (list!16834 (charsOf!5233 (_1!25255 (get!15148 lt!1502939))))))))

(declare-fun b!4225488 () Bool)

(declare-fun res!1737374 () Bool)

(assert (=> b!4225488 (=> (not res!1737374) (not e!2623425))))

(declare-fun size!34161 (List!46664) Int)

(assert (=> b!4225488 (= res!1737374 (< (size!34161 (_2!25255 (get!15148 lt!1502939))) (size!34161 input!3561)))))

(declare-fun b!4225489 () Bool)

(declare-fun lt!1502943 () Option!10006)

(declare-fun lt!1502941 () Option!10006)

(assert (=> b!4225489 (= e!2623423 (ite (and ((_ is None!10005) lt!1502943) ((_ is None!10005) lt!1502941)) None!10005 (ite ((_ is None!10005) lt!1502941) lt!1502943 (ite ((_ is None!10005) lt!1502943) lt!1502941 (ite (>= (size!34159 (_1!25255 (v!40913 lt!1502943))) (size!34159 (_1!25255 (v!40913 lt!1502941)))) lt!1502943 lt!1502941)))))))

(declare-fun call!293231 () Option!10006)

(assert (=> b!4225489 (= lt!1502943 call!293231)))

(assert (=> b!4225489 (= lt!1502941 (maxPrefix!4453 thiss!26728 (t!349282 rules!4013) input!3561))))

(declare-fun b!4225490 () Bool)

(declare-fun res!1737377 () Bool)

(assert (=> b!4225490 (=> (not res!1737377) (not e!2623425))))

(declare-fun ++!11884 (List!46664 List!46664) List!46664)

(assert (=> b!4225490 (= res!1737377 (= (++!11884 (list!16834 (charsOf!5233 (_1!25255 (get!15148 lt!1502939)))) (_2!25255 (get!15148 lt!1502939))) input!3561))))

(declare-fun b!4225491 () Bool)

(declare-fun res!1737373 () Bool)

(assert (=> b!4225491 (=> (not res!1737373) (not e!2623425))))

(declare-fun apply!10723 (TokenValueInjection!15528 BalanceConc!27656) TokenValue!8050)

(declare-fun seqFromList!5783 (List!46664) BalanceConc!27656)

(assert (=> b!4225491 (= res!1737373 (= (value!243397 (_1!25255 (get!15148 lt!1502939))) (apply!10723 (transformation!7820 (rule!10964 (_1!25255 (get!15148 lt!1502939)))) (seqFromList!5783 (originalCharacters!8200 (_1!25255 (get!15148 lt!1502939)))))))))

(declare-fun b!4225492 () Bool)

(assert (=> b!4225492 (= e!2623423 call!293231)))

(declare-fun b!4225493 () Bool)

(assert (=> b!4225493 (= e!2623424 e!2623425)))

(declare-fun res!1737375 () Bool)

(assert (=> b!4225493 (=> (not res!1737375) (not e!2623425))))

(declare-fun isDefined!7424 (Option!10006) Bool)

(assert (=> b!4225493 (= res!1737375 (isDefined!7424 lt!1502939))))

(declare-fun bm!293226 () Bool)

(declare-fun maxPrefixOneRule!3402 (LexerInterface!7415 Rule!15440 List!46664) Option!10006)

(assert (=> bm!293226 (= call!293231 (maxPrefixOneRule!3402 thiss!26728 (h!51961 rules!4013) input!3561))))

(declare-fun b!4225494 () Bool)

(assert (=> b!4225494 (= e!2623425 (contains!9643 rules!4013 (rule!10964 (_1!25255 (get!15148 lt!1502939)))))))

(declare-fun b!4225495 () Bool)

(declare-fun res!1737376 () Bool)

(assert (=> b!4225495 (=> (not res!1737376) (not e!2623425))))

(assert (=> b!4225495 (= res!1737376 (= (list!16834 (charsOf!5233 (_1!25255 (get!15148 lt!1502939)))) (originalCharacters!8200 (_1!25255 (get!15148 lt!1502939)))))))

(assert (= (and d!1244158 c!718616) b!4225492))

(assert (= (and d!1244158 (not c!718616)) b!4225489))

(assert (= (or b!4225492 b!4225489) bm!293226))

(assert (= (and d!1244158 (not res!1737371)) b!4225493))

(assert (= (and b!4225493 res!1737375) b!4225495))

(assert (= (and b!4225495 res!1737376) b!4225488))

(assert (= (and b!4225488 res!1737374) b!4225490))

(assert (= (and b!4225490 res!1737377) b!4225491))

(assert (= (and b!4225491 res!1737373) b!4225487))

(assert (= (and b!4225487 res!1737372) b!4225494))

(declare-fun m!4813531 () Bool)

(assert (=> d!1244158 m!4813531))

(declare-fun m!4813533 () Bool)

(assert (=> d!1244158 m!4813533))

(declare-fun m!4813535 () Bool)

(assert (=> d!1244158 m!4813535))

(assert (=> d!1244158 m!4813519))

(assert (=> b!4225489 m!4813521))

(declare-fun m!4813537 () Bool)

(assert (=> b!4225491 m!4813537))

(declare-fun m!4813539 () Bool)

(assert (=> b!4225491 m!4813539))

(assert (=> b!4225491 m!4813539))

(declare-fun m!4813541 () Bool)

(assert (=> b!4225491 m!4813541))

(assert (=> b!4225490 m!4813537))

(declare-fun m!4813543 () Bool)

(assert (=> b!4225490 m!4813543))

(assert (=> b!4225490 m!4813543))

(declare-fun m!4813545 () Bool)

(assert (=> b!4225490 m!4813545))

(assert (=> b!4225490 m!4813545))

(declare-fun m!4813547 () Bool)

(assert (=> b!4225490 m!4813547))

(assert (=> b!4225495 m!4813537))

(assert (=> b!4225495 m!4813543))

(assert (=> b!4225495 m!4813543))

(assert (=> b!4225495 m!4813545))

(declare-fun m!4813549 () Bool)

(assert (=> b!4225493 m!4813549))

(assert (=> b!4225487 m!4813537))

(assert (=> b!4225487 m!4813543))

(assert (=> b!4225487 m!4813543))

(assert (=> b!4225487 m!4813545))

(assert (=> b!4225487 m!4813545))

(declare-fun m!4813551 () Bool)

(assert (=> b!4225487 m!4813551))

(assert (=> b!4225494 m!4813537))

(declare-fun m!4813553 () Bool)

(assert (=> b!4225494 m!4813553))

(assert (=> b!4225488 m!4813537))

(declare-fun m!4813555 () Bool)

(assert (=> b!4225488 m!4813555))

(declare-fun m!4813557 () Bool)

(assert (=> b!4225488 m!4813557))

(declare-fun m!4813559 () Bool)

(assert (=> bm!293226 m!4813559))

(assert (=> b!4225462 d!1244158))

(declare-fun d!1244160 () Bool)

(assert (=> d!1244160 (= (inv!61206 (tag!8684 r!4313)) (= (mod (str.len (value!243396 (tag!8684 r!4313))) 2) 0))))

(assert (=> b!4225457 d!1244160))

(declare-fun d!1244162 () Bool)

(declare-fun res!1737380 () Bool)

(declare-fun e!2623428 () Bool)

(assert (=> d!1244162 (=> (not res!1737380) (not e!2623428))))

(declare-fun semiInverseModEq!3403 (Int Int) Bool)

(assert (=> d!1244162 (= res!1737380 (semiInverseModEq!3403 (toChars!10407 (transformation!7820 r!4313)) (toValue!10548 (transformation!7820 r!4313))))))

(assert (=> d!1244162 (= (inv!61208 (transformation!7820 r!4313)) e!2623428)))

(declare-fun b!4225498 () Bool)

(declare-fun equivClasses!3302 (Int Int) Bool)

(assert (=> b!4225498 (= e!2623428 (equivClasses!3302 (toChars!10407 (transformation!7820 r!4313)) (toValue!10548 (transformation!7820 r!4313))))))

(assert (= (and d!1244162 res!1737380) b!4225498))

(declare-fun m!4813561 () Bool)

(assert (=> d!1244162 m!4813561))

(declare-fun m!4813563 () Bool)

(assert (=> b!4225498 m!4813563))

(assert (=> b!4225457 d!1244162))

(declare-fun d!1244164 () Bool)

(declare-fun res!1737385 () Bool)

(declare-fun e!2623431 () Bool)

(assert (=> d!1244164 (=> (not res!1737385) (not e!2623431))))

(declare-fun validRegex!5777 (Regex!12725) Bool)

(assert (=> d!1244164 (= res!1737385 (validRegex!5777 (regex!7820 r!4313)))))

(assert (=> d!1244164 (= (ruleValid!3528 thiss!26728 r!4313) e!2623431)))

(declare-fun b!4225503 () Bool)

(declare-fun res!1737386 () Bool)

(assert (=> b!4225503 (=> (not res!1737386) (not e!2623431))))

(declare-fun nullable!4490 (Regex!12725) Bool)

(assert (=> b!4225503 (= res!1737386 (not (nullable!4490 (regex!7820 r!4313))))))

(declare-fun b!4225504 () Bool)

(assert (=> b!4225504 (= e!2623431 (not (= (tag!8684 r!4313) (String!54121 ""))))))

(assert (= (and d!1244164 res!1737385) b!4225503))

(assert (= (and b!4225503 res!1737386) b!4225504))

(declare-fun m!4813565 () Bool)

(assert (=> d!1244164 m!4813565))

(declare-fun m!4813567 () Bool)

(assert (=> b!4225503 m!4813567))

(assert (=> b!4225452 d!1244164))

(declare-fun d!1244166 () Bool)

(assert (=> d!1244166 (ruleValid!3528 thiss!26728 r!4313)))

(declare-fun lt!1502946 () Unit!65699)

(declare-fun choose!25886 (LexerInterface!7415 Rule!15440 List!46665) Unit!65699)

(assert (=> d!1244166 (= lt!1502946 (choose!25886 thiss!26728 r!4313 rules!4013))))

(assert (=> d!1244166 (contains!9643 rules!4013 r!4313)))

(assert (=> d!1244166 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2440 thiss!26728 r!4313 rules!4013) lt!1502946)))

(declare-fun bs!597826 () Bool)

(assert (= bs!597826 d!1244166))

(assert (=> bs!597826 m!4813505))

(declare-fun m!4813569 () Bool)

(assert (=> bs!597826 m!4813569))

(assert (=> bs!597826 m!4813517))

(assert (=> b!4225452 d!1244166))

(declare-fun d!1244168 () Bool)

(assert (=> d!1244168 (= (inv!61206 (tag!8684 (h!51961 rules!4013))) (= (mod (str.len (value!243396 (tag!8684 (h!51961 rules!4013)))) 2) 0))))

(assert (=> b!4225463 d!1244168))

(declare-fun d!1244170 () Bool)

(declare-fun res!1737387 () Bool)

(declare-fun e!2623432 () Bool)

(assert (=> d!1244170 (=> (not res!1737387) (not e!2623432))))

(assert (=> d!1244170 (= res!1737387 (semiInverseModEq!3403 (toChars!10407 (transformation!7820 (h!51961 rules!4013))) (toValue!10548 (transformation!7820 (h!51961 rules!4013)))))))

(assert (=> d!1244170 (= (inv!61208 (transformation!7820 (h!51961 rules!4013))) e!2623432)))

(declare-fun b!4225505 () Bool)

(assert (=> b!4225505 (= e!2623432 (equivClasses!3302 (toChars!10407 (transformation!7820 (h!51961 rules!4013))) (toValue!10548 (transformation!7820 (h!51961 rules!4013)))))))

(assert (= (and d!1244170 res!1737387) b!4225505))

(declare-fun m!4813571 () Bool)

(assert (=> d!1244170 m!4813571))

(declare-fun m!4813573 () Bool)

(assert (=> b!4225505 m!4813573))

(assert (=> b!4225463 d!1244170))

(declare-fun d!1244172 () Bool)

(declare-fun lt!1502949 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7315 (List!46665) (InoxSet Rule!15440))

(assert (=> d!1244172 (= lt!1502949 (select (content!7315 rules!4013) r!4313))))

(declare-fun e!2623438 () Bool)

(assert (=> d!1244172 (= lt!1502949 e!2623438)))

(declare-fun res!1737392 () Bool)

(assert (=> d!1244172 (=> (not res!1737392) (not e!2623438))))

(assert (=> d!1244172 (= res!1737392 ((_ is Cons!46541) rules!4013))))

(assert (=> d!1244172 (= (contains!9643 rules!4013 r!4313) lt!1502949)))

(declare-fun b!4225510 () Bool)

(declare-fun e!2623437 () Bool)

(assert (=> b!4225510 (= e!2623438 e!2623437)))

(declare-fun res!1737393 () Bool)

(assert (=> b!4225510 (=> res!1737393 e!2623437)))

(assert (=> b!4225510 (= res!1737393 (= (h!51961 rules!4013) r!4313))))

(declare-fun b!4225511 () Bool)

(assert (=> b!4225511 (= e!2623437 (contains!9643 (t!349282 rules!4013) r!4313))))

(assert (= (and d!1244172 res!1737392) b!4225510))

(assert (= (and b!4225510 (not res!1737393)) b!4225511))

(declare-fun m!4813575 () Bool)

(assert (=> d!1244172 m!4813575))

(declare-fun m!4813577 () Bool)

(assert (=> d!1244172 m!4813577))

(assert (=> b!4225511 m!4813499))

(assert (=> b!4225461 d!1244172))

(declare-fun d!1244174 () Bool)

(assert (=> d!1244174 true))

(declare-fun lt!1502981 () Bool)

(declare-fun lambda!129900 () Int)

(declare-fun forall!8510 (List!46665 Int) Bool)

(assert (=> d!1244174 (= lt!1502981 (forall!8510 (t!349282 rules!4013) lambda!129900))))

(declare-fun e!2623494 () Bool)

(assert (=> d!1244174 (= lt!1502981 e!2623494)))

(declare-fun res!1737449 () Bool)

(assert (=> d!1244174 (=> res!1737449 e!2623494)))

(assert (=> d!1244174 (= res!1737449 (not ((_ is Cons!46541) (t!349282 rules!4013))))))

(assert (=> d!1244174 (= (rulesValidInductive!2924 thiss!26728 (t!349282 rules!4013)) lt!1502981)))

(declare-fun b!4225610 () Bool)

(declare-fun e!2623493 () Bool)

(assert (=> b!4225610 (= e!2623494 e!2623493)))

(declare-fun res!1737448 () Bool)

(assert (=> b!4225610 (=> (not res!1737448) (not e!2623493))))

(assert (=> b!4225610 (= res!1737448 (ruleValid!3528 thiss!26728 (h!51961 (t!349282 rules!4013))))))

(declare-fun b!4225611 () Bool)

(assert (=> b!4225611 (= e!2623493 (rulesValidInductive!2924 thiss!26728 (t!349282 (t!349282 rules!4013))))))

(assert (= (and d!1244174 (not res!1737449)) b!4225610))

(assert (= (and b!4225610 res!1737448) b!4225611))

(declare-fun m!4813673 () Bool)

(assert (=> d!1244174 m!4813673))

(declare-fun m!4813675 () Bool)

(assert (=> b!4225610 m!4813675))

(declare-fun m!4813677 () Bool)

(assert (=> b!4225611 m!4813677))

(assert (=> b!4225456 d!1244174))

(declare-fun d!1244206 () Bool)

(assert (=> d!1244206 (= (isEmpty!27580 (t!349282 rules!4013)) ((_ is Nil!46541) (t!349282 rules!4013)))))

(assert (=> b!4225451 d!1244206))

(declare-fun d!1244208 () Bool)

(declare-fun lt!1502982 () Bool)

(assert (=> d!1244208 (= lt!1502982 (select (content!7315 (t!349282 rules!4013)) r!4313))))

(declare-fun e!2623496 () Bool)

(assert (=> d!1244208 (= lt!1502982 e!2623496)))

(declare-fun res!1737450 () Bool)

(assert (=> d!1244208 (=> (not res!1737450) (not e!2623496))))

(assert (=> d!1244208 (= res!1737450 ((_ is Cons!46541) (t!349282 rules!4013)))))

(assert (=> d!1244208 (= (contains!9643 (t!349282 rules!4013) r!4313) lt!1502982)))

(declare-fun b!4225614 () Bool)

(declare-fun e!2623495 () Bool)

(assert (=> b!4225614 (= e!2623496 e!2623495)))

(declare-fun res!1737451 () Bool)

(assert (=> b!4225614 (=> res!1737451 e!2623495)))

(assert (=> b!4225614 (= res!1737451 (= (h!51961 (t!349282 rules!4013)) r!4313))))

(declare-fun b!4225615 () Bool)

(assert (=> b!4225615 (= e!2623495 (contains!9643 (t!349282 (t!349282 rules!4013)) r!4313))))

(assert (= (and d!1244208 res!1737450) b!4225614))

(assert (= (and b!4225614 (not res!1737451)) b!4225615))

(declare-fun m!4813679 () Bool)

(assert (=> d!1244208 m!4813679))

(declare-fun m!4813681 () Bool)

(assert (=> d!1244208 m!4813681))

(declare-fun m!4813683 () Bool)

(assert (=> b!4225615 m!4813683))

(assert (=> b!4225454 d!1244208))

(declare-fun bs!597829 () Bool)

(declare-fun d!1244210 () Bool)

(assert (= bs!597829 (and d!1244210 d!1244174)))

(declare-fun lambda!129901 () Int)

(assert (=> bs!597829 (= lambda!129901 lambda!129900)))

(assert (=> d!1244210 true))

(declare-fun lt!1502983 () Bool)

(assert (=> d!1244210 (= lt!1502983 (forall!8510 rules!4013 lambda!129901))))

(declare-fun e!2623498 () Bool)

(assert (=> d!1244210 (= lt!1502983 e!2623498)))

(declare-fun res!1737453 () Bool)

(assert (=> d!1244210 (=> res!1737453 e!2623498)))

(assert (=> d!1244210 (= res!1737453 (not ((_ is Cons!46541) rules!4013)))))

(assert (=> d!1244210 (= (rulesValidInductive!2924 thiss!26728 rules!4013) lt!1502983)))

(declare-fun b!4225616 () Bool)

(declare-fun e!2623497 () Bool)

(assert (=> b!4225616 (= e!2623498 e!2623497)))

(declare-fun res!1737452 () Bool)

(assert (=> b!4225616 (=> (not res!1737452) (not e!2623497))))

(assert (=> b!4225616 (= res!1737452 (ruleValid!3528 thiss!26728 (h!51961 rules!4013)))))

(declare-fun b!4225617 () Bool)

(assert (=> b!4225617 (= e!2623497 (rulesValidInductive!2924 thiss!26728 (t!349282 rules!4013)))))

(assert (= (and d!1244210 (not res!1737453)) b!4225616))

(assert (= (and b!4225616 res!1737452) b!4225617))

(declare-fun m!4813685 () Bool)

(assert (=> d!1244210 m!4813685))

(declare-fun m!4813687 () Bool)

(assert (=> b!4225616 m!4813687))

(assert (=> b!4225617 m!4813515))

(assert (=> b!4225460 d!1244210))

(declare-fun d!1244212 () Bool)

(assert (=> d!1244212 (= (isEmpty!27580 rules!4013) ((_ is Nil!46541) rules!4013))))

(assert (=> b!4225453 d!1244212))

(declare-fun d!1244214 () Bool)

(assert (=> d!1244214 (= (isEmpty!27581 (maxPrefix!4453 thiss!26728 (t!349282 rules!4013) input!3561)) (not ((_ is Some!10005) (maxPrefix!4453 thiss!26728 (t!349282 rules!4013) input!3561))))))

(assert (=> b!4225459 d!1244214))

(declare-fun d!1244216 () Bool)

(declare-fun e!2623500 () Bool)

(assert (=> d!1244216 e!2623500))

(declare-fun res!1737454 () Bool)

(assert (=> d!1244216 (=> res!1737454 e!2623500)))

(declare-fun lt!1502984 () Option!10006)

(assert (=> d!1244216 (= res!1737454 (isEmpty!27581 lt!1502984))))

(declare-fun e!2623499 () Option!10006)

(assert (=> d!1244216 (= lt!1502984 e!2623499)))

(declare-fun c!718621 () Bool)

(assert (=> d!1244216 (= c!718621 (and ((_ is Cons!46541) (t!349282 rules!4013)) ((_ is Nil!46541) (t!349282 (t!349282 rules!4013)))))))

(declare-fun lt!1502987 () Unit!65699)

(declare-fun lt!1502985 () Unit!65699)

(assert (=> d!1244216 (= lt!1502987 lt!1502985)))

(assert (=> d!1244216 (isPrefix!4669 input!3561 input!3561)))

(assert (=> d!1244216 (= lt!1502985 (lemmaIsPrefixRefl!3086 input!3561 input!3561))))

(assert (=> d!1244216 (rulesValidInductive!2924 thiss!26728 (t!349282 rules!4013))))

(assert (=> d!1244216 (= (maxPrefix!4453 thiss!26728 (t!349282 rules!4013) input!3561) lt!1502984)))

(declare-fun b!4225618 () Bool)

(declare-fun res!1737455 () Bool)

(declare-fun e!2623501 () Bool)

(assert (=> b!4225618 (=> (not res!1737455) (not e!2623501))))

(assert (=> b!4225618 (= res!1737455 (matchR!6402 (regex!7820 (rule!10964 (_1!25255 (get!15148 lt!1502984)))) (list!16834 (charsOf!5233 (_1!25255 (get!15148 lt!1502984))))))))

(declare-fun b!4225619 () Bool)

(declare-fun res!1737457 () Bool)

(assert (=> b!4225619 (=> (not res!1737457) (not e!2623501))))

(assert (=> b!4225619 (= res!1737457 (< (size!34161 (_2!25255 (get!15148 lt!1502984))) (size!34161 input!3561)))))

(declare-fun b!4225620 () Bool)

(declare-fun lt!1502988 () Option!10006)

(declare-fun lt!1502986 () Option!10006)

(assert (=> b!4225620 (= e!2623499 (ite (and ((_ is None!10005) lt!1502988) ((_ is None!10005) lt!1502986)) None!10005 (ite ((_ is None!10005) lt!1502986) lt!1502988 (ite ((_ is None!10005) lt!1502988) lt!1502986 (ite (>= (size!34159 (_1!25255 (v!40913 lt!1502988))) (size!34159 (_1!25255 (v!40913 lt!1502986)))) lt!1502988 lt!1502986)))))))

(declare-fun call!293236 () Option!10006)

(assert (=> b!4225620 (= lt!1502988 call!293236)))

(assert (=> b!4225620 (= lt!1502986 (maxPrefix!4453 thiss!26728 (t!349282 (t!349282 rules!4013)) input!3561))))

(declare-fun b!4225621 () Bool)

(declare-fun res!1737460 () Bool)

(assert (=> b!4225621 (=> (not res!1737460) (not e!2623501))))

(assert (=> b!4225621 (= res!1737460 (= (++!11884 (list!16834 (charsOf!5233 (_1!25255 (get!15148 lt!1502984)))) (_2!25255 (get!15148 lt!1502984))) input!3561))))

(declare-fun b!4225622 () Bool)

(declare-fun res!1737456 () Bool)

(assert (=> b!4225622 (=> (not res!1737456) (not e!2623501))))

(assert (=> b!4225622 (= res!1737456 (= (value!243397 (_1!25255 (get!15148 lt!1502984))) (apply!10723 (transformation!7820 (rule!10964 (_1!25255 (get!15148 lt!1502984)))) (seqFromList!5783 (originalCharacters!8200 (_1!25255 (get!15148 lt!1502984)))))))))

(declare-fun b!4225623 () Bool)

(assert (=> b!4225623 (= e!2623499 call!293236)))

(declare-fun b!4225624 () Bool)

(assert (=> b!4225624 (= e!2623500 e!2623501)))

(declare-fun res!1737458 () Bool)

(assert (=> b!4225624 (=> (not res!1737458) (not e!2623501))))

(assert (=> b!4225624 (= res!1737458 (isDefined!7424 lt!1502984))))

(declare-fun bm!293231 () Bool)

(assert (=> bm!293231 (= call!293236 (maxPrefixOneRule!3402 thiss!26728 (h!51961 (t!349282 rules!4013)) input!3561))))

(declare-fun b!4225625 () Bool)

(assert (=> b!4225625 (= e!2623501 (contains!9643 (t!349282 rules!4013) (rule!10964 (_1!25255 (get!15148 lt!1502984)))))))

(declare-fun b!4225626 () Bool)

(declare-fun res!1737459 () Bool)

(assert (=> b!4225626 (=> (not res!1737459) (not e!2623501))))

(assert (=> b!4225626 (= res!1737459 (= (list!16834 (charsOf!5233 (_1!25255 (get!15148 lt!1502984)))) (originalCharacters!8200 (_1!25255 (get!15148 lt!1502984)))))))

(assert (= (and d!1244216 c!718621) b!4225623))

(assert (= (and d!1244216 (not c!718621)) b!4225620))

(assert (= (or b!4225623 b!4225620) bm!293231))

(assert (= (and d!1244216 (not res!1737454)) b!4225624))

(assert (= (and b!4225624 res!1737458) b!4225626))

(assert (= (and b!4225626 res!1737459) b!4225619))

(assert (= (and b!4225619 res!1737457) b!4225621))

(assert (= (and b!4225621 res!1737460) b!4225622))

(assert (= (and b!4225622 res!1737456) b!4225618))

(assert (= (and b!4225618 res!1737455) b!4225625))

(declare-fun m!4813689 () Bool)

(assert (=> d!1244216 m!4813689))

(assert (=> d!1244216 m!4813533))

(assert (=> d!1244216 m!4813535))

(assert (=> d!1244216 m!4813515))

(declare-fun m!4813691 () Bool)

(assert (=> b!4225620 m!4813691))

(declare-fun m!4813693 () Bool)

(assert (=> b!4225622 m!4813693))

(declare-fun m!4813695 () Bool)

(assert (=> b!4225622 m!4813695))

(assert (=> b!4225622 m!4813695))

(declare-fun m!4813697 () Bool)

(assert (=> b!4225622 m!4813697))

(assert (=> b!4225621 m!4813693))

(declare-fun m!4813699 () Bool)

(assert (=> b!4225621 m!4813699))

(assert (=> b!4225621 m!4813699))

(declare-fun m!4813701 () Bool)

(assert (=> b!4225621 m!4813701))

(assert (=> b!4225621 m!4813701))

(declare-fun m!4813703 () Bool)

(assert (=> b!4225621 m!4813703))

(assert (=> b!4225626 m!4813693))

(assert (=> b!4225626 m!4813699))

(assert (=> b!4225626 m!4813699))

(assert (=> b!4225626 m!4813701))

(declare-fun m!4813705 () Bool)

(assert (=> b!4225624 m!4813705))

(assert (=> b!4225618 m!4813693))

(assert (=> b!4225618 m!4813699))

(assert (=> b!4225618 m!4813699))

(assert (=> b!4225618 m!4813701))

(assert (=> b!4225618 m!4813701))

(declare-fun m!4813707 () Bool)

(assert (=> b!4225618 m!4813707))

(assert (=> b!4225625 m!4813693))

(declare-fun m!4813709 () Bool)

(assert (=> b!4225625 m!4813709))

(assert (=> b!4225619 m!4813693))

(declare-fun m!4813711 () Bool)

(assert (=> b!4225619 m!4813711))

(assert (=> b!4225619 m!4813557))

(declare-fun m!4813713 () Bool)

(assert (=> bm!293231 m!4813713))

(assert (=> b!4225459 d!1244216))

(declare-fun e!2623504 () Bool)

(assert (=> b!4225457 (= tp!1293458 e!2623504)))

(declare-fun b!4225638 () Bool)

(declare-fun tp!1293512 () Bool)

(declare-fun tp!1293509 () Bool)

(assert (=> b!4225638 (= e!2623504 (and tp!1293512 tp!1293509))))

(declare-fun b!4225639 () Bool)

(declare-fun tp!1293510 () Bool)

(assert (=> b!4225639 (= e!2623504 tp!1293510)))

(declare-fun b!4225640 () Bool)

(declare-fun tp!1293511 () Bool)

(declare-fun tp!1293508 () Bool)

(assert (=> b!4225640 (= e!2623504 (and tp!1293511 tp!1293508))))

(declare-fun b!4225637 () Bool)

(assert (=> b!4225637 (= e!2623504 tp_is_empty!22413)))

(assert (= (and b!4225457 ((_ is ElementMatch!12725) (regex!7820 r!4313))) b!4225637))

(assert (= (and b!4225457 ((_ is Concat!20776) (regex!7820 r!4313))) b!4225638))

(assert (= (and b!4225457 ((_ is Star!12725) (regex!7820 r!4313))) b!4225639))

(assert (= (and b!4225457 ((_ is Union!12725) (regex!7820 r!4313))) b!4225640))

(declare-fun e!2623505 () Bool)

(assert (=> b!4225463 (= tp!1293461 e!2623505)))

(declare-fun b!4225642 () Bool)

(declare-fun tp!1293517 () Bool)

(declare-fun tp!1293514 () Bool)

(assert (=> b!4225642 (= e!2623505 (and tp!1293517 tp!1293514))))

(declare-fun b!4225643 () Bool)

(declare-fun tp!1293515 () Bool)

(assert (=> b!4225643 (= e!2623505 tp!1293515)))

(declare-fun b!4225644 () Bool)

(declare-fun tp!1293516 () Bool)

(declare-fun tp!1293513 () Bool)

(assert (=> b!4225644 (= e!2623505 (and tp!1293516 tp!1293513))))

(declare-fun b!4225641 () Bool)

(assert (=> b!4225641 (= e!2623505 tp_is_empty!22413)))

(assert (= (and b!4225463 ((_ is ElementMatch!12725) (regex!7820 (h!51961 rules!4013)))) b!4225641))

(assert (= (and b!4225463 ((_ is Concat!20776) (regex!7820 (h!51961 rules!4013)))) b!4225642))

(assert (= (and b!4225463 ((_ is Star!12725) (regex!7820 (h!51961 rules!4013)))) b!4225643))

(assert (= (and b!4225463 ((_ is Union!12725) (regex!7820 (h!51961 rules!4013)))) b!4225644))

(declare-fun b!4225649 () Bool)

(declare-fun e!2623508 () Bool)

(declare-fun tp!1293520 () Bool)

(assert (=> b!4225649 (= e!2623508 (and tp_is_empty!22413 tp!1293520))))

(assert (=> b!4225455 (= tp!1293456 e!2623508)))

(assert (= (and b!4225455 ((_ is Cons!46540) (t!349281 input!3561))) b!4225649))

(declare-fun b!4225660 () Bool)

(declare-fun b_free!124407 () Bool)

(declare-fun b_next!125111 () Bool)

(assert (=> b!4225660 (= b_free!124407 (not b_next!125111))))

(declare-fun tp!1293531 () Bool)

(declare-fun b_and!333641 () Bool)

(assert (=> b!4225660 (= tp!1293531 b_and!333641)))

(declare-fun b_free!124409 () Bool)

(declare-fun b_next!125113 () Bool)

(assert (=> b!4225660 (= b_free!124409 (not b_next!125113))))

(declare-fun tp!1293532 () Bool)

(declare-fun b_and!333643 () Bool)

(assert (=> b!4225660 (= tp!1293532 b_and!333643)))

(declare-fun e!2623519 () Bool)

(assert (=> b!4225660 (= e!2623519 (and tp!1293531 tp!1293532))))

(declare-fun e!2623517 () Bool)

(declare-fun b!4225659 () Bool)

(declare-fun tp!1293530 () Bool)

(assert (=> b!4225659 (= e!2623517 (and tp!1293530 (inv!61206 (tag!8684 (h!51961 (t!349282 rules!4013)))) (inv!61208 (transformation!7820 (h!51961 (t!349282 rules!4013)))) e!2623519))))

(declare-fun b!4225658 () Bool)

(declare-fun e!2623520 () Bool)

(declare-fun tp!1293529 () Bool)

(assert (=> b!4225658 (= e!2623520 (and e!2623517 tp!1293529))))

(assert (=> b!4225458 (= tp!1293455 e!2623520)))

(assert (= b!4225659 b!4225660))

(assert (= b!4225658 b!4225659))

(assert (= (and b!4225458 ((_ is Cons!46541) (t!349282 rules!4013))) b!4225658))

(declare-fun m!4813715 () Bool)

(assert (=> b!4225659 m!4813715))

(declare-fun m!4813717 () Bool)

(assert (=> b!4225659 m!4813717))

(check-sat (not b!4225505) (not b!4225610) (not b!4225658) (not b_next!125099) b_and!333629 (not b!4225491) (not b!4225489) b_and!333643 (not b!4225644) (not b!4225616) (not d!1244164) (not b!4225624) (not d!1244172) (not b!4225626) (not b!4225617) (not bm!293231) (not b!4225619) b_and!333633 (not b!4225495) (not b_next!125101) (not b!4225493) (not d!1244174) (not b!4225649) (not d!1244210) (not b!4225620) (not b_next!125103) (not d!1244162) (not b!4225642) (not b!4225487) (not d!1244170) (not b!4225498) (not b_next!125113) (not b!4225611) (not b!4225503) (not d!1244158) (not b!4225643) (not b!4225621) b_and!333641 (not d!1244166) b_and!333635 (not b!4225639) (not b!4225615) (not b!4225659) (not b_next!125111) (not b!4225618) tp_is_empty!22413 b_and!333631 (not bm!293226) (not d!1244208) (not b!4225494) (not b!4225640) (not b!4225490) (not b!4225638) (not b!4225511) (not b!4225622) (not d!1244216) (not b_next!125105) (not b!4225488) (not b!4225625))
(check-sat (not b_next!125103) (not b_next!125099) b_and!333629 (not b_next!125113) (not b_next!125111) b_and!333643 b_and!333631 (not b_next!125105) b_and!333633 (not b_next!125101) b_and!333641 b_and!333635)
