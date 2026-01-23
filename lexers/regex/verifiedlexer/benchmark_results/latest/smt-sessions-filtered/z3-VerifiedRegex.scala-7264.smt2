; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!387508 () Bool)

(assert start!387508)

(declare-fun b!4093390 () Bool)

(declare-fun b_free!114441 () Bool)

(declare-fun b_next!115145 () Bool)

(assert (=> b!4093390 (= b_free!114441 (not b_next!115145))))

(declare-fun tp!1239079 () Bool)

(declare-fun b_and!315631 () Bool)

(assert (=> b!4093390 (= tp!1239079 b_and!315631)))

(declare-fun b_free!114443 () Bool)

(declare-fun b_next!115147 () Bool)

(assert (=> b!4093390 (= b_free!114443 (not b_next!115147))))

(declare-fun tp!1239085 () Bool)

(declare-fun b_and!315633 () Bool)

(assert (=> b!4093390 (= tp!1239085 b_and!315633)))

(declare-fun b!4093398 () Bool)

(declare-fun b_free!114445 () Bool)

(declare-fun b_next!115149 () Bool)

(assert (=> b!4093398 (= b_free!114445 (not b_next!115149))))

(declare-fun tp!1239086 () Bool)

(declare-fun b_and!315635 () Bool)

(assert (=> b!4093398 (= tp!1239086 b_and!315635)))

(declare-fun b_free!114447 () Bool)

(declare-fun b_next!115151 () Bool)

(assert (=> b!4093398 (= b_free!114447 (not b_next!115151))))

(declare-fun tp!1239084 () Bool)

(declare-fun b_and!315637 () Bool)

(assert (=> b!4093398 (= tp!1239084 b_and!315637)))

(declare-fun e!2540287 () Bool)

(assert (=> b!4093390 (= e!2540287 (and tp!1239079 tp!1239085))))

(declare-fun b!4093391 () Bool)

(declare-fun e!2540284 () Bool)

(declare-fun e!2540288 () Bool)

(assert (=> b!4093391 (= e!2540284 e!2540288)))

(declare-fun res!1673082 () Bool)

(assert (=> b!4093391 (=> res!1673082 e!2540288)))

(declare-datatypes ((List!44011 0))(
  ( (Nil!43887) (Cons!43887 (h!49307 (_ BitVec 16)) (t!339010 List!44011)) )
))
(declare-datatypes ((TokenValue!7330 0))(
  ( (FloatLiteralValue!14660 (text!51755 List!44011)) (TokenValueExt!7329 (__x!26877 Int)) (Broken!36650 (value!222976 List!44011)) (Object!7453) (End!7330) (Def!7330) (Underscore!7330) (Match!7330) (Else!7330) (Error!7330) (Case!7330) (If!7330) (Extends!7330) (Abstract!7330) (Class!7330) (Val!7330) (DelimiterValue!14660 (del!7390 List!44011)) (KeywordValue!7336 (value!222977 List!44011)) (CommentValue!14660 (value!222978 List!44011)) (WhitespaceValue!14660 (value!222979 List!44011)) (IndentationValue!7330 (value!222980 List!44011)) (String!50399) (Int32!7330) (Broken!36651 (value!222981 List!44011)) (Boolean!7331) (Unit!63420) (OperatorValue!7333 (op!7390 List!44011)) (IdentifierValue!14660 (value!222982 List!44011)) (IdentifierValue!14661 (value!222983 List!44011)) (WhitespaceValue!14661 (value!222984 List!44011)) (True!14660) (False!14660) (Broken!36652 (value!222985 List!44011)) (Broken!36653 (value!222986 List!44011)) (True!14661) (RightBrace!7330) (RightBracket!7330) (Colon!7330) (Null!7330) (Comma!7330) (LeftBracket!7330) (False!14661) (LeftBrace!7330) (ImaginaryLiteralValue!7330 (text!51756 List!44011)) (StringLiteralValue!21990 (value!222987 List!44011)) (EOFValue!7330 (value!222988 List!44011)) (IdentValue!7330 (value!222989 List!44011)) (DelimiterValue!14661 (value!222990 List!44011)) (DedentValue!7330 (value!222991 List!44011)) (NewLineValue!7330 (value!222992 List!44011)) (IntegerValue!21990 (value!222993 (_ BitVec 32)) (text!51757 List!44011)) (IntegerValue!21991 (value!222994 Int) (text!51758 List!44011)) (Times!7330) (Or!7330) (Equal!7330) (Minus!7330) (Broken!36654 (value!222995 List!44011)) (And!7330) (Div!7330) (LessEqual!7330) (Mod!7330) (Concat!19335) (Not!7330) (Plus!7330) (SpaceValue!7330 (value!222996 List!44011)) (IntegerValue!21992 (value!222997 Int) (text!51759 List!44011)) (StringLiteralValue!21991 (text!51760 List!44011)) (FloatLiteralValue!14661 (text!51761 List!44011)) (BytesLiteralValue!7330 (value!222998 List!44011)) (CommentValue!14661 (value!222999 List!44011)) (StringLiteralValue!21992 (value!223000 List!44011)) (ErrorTokenValue!7330 (msg!7391 List!44011)) )
))
(declare-datatypes ((C!24196 0))(
  ( (C!24197 (val!14208 Int)) )
))
(declare-datatypes ((Regex!12005 0))(
  ( (ElementMatch!12005 (c!705490 C!24196)) (Concat!19336 (regOne!24522 Regex!12005) (regTwo!24522 Regex!12005)) (EmptyExpr!12005) (Star!12005 (reg!12334 Regex!12005)) (EmptyLang!12005) (Union!12005 (regOne!24523 Regex!12005) (regTwo!24523 Regex!12005)) )
))
(declare-datatypes ((String!50400 0))(
  ( (String!50401 (value!223001 String)) )
))
(declare-datatypes ((List!44012 0))(
  ( (Nil!43888) (Cons!43888 (h!49308 C!24196) (t!339011 List!44012)) )
))
(declare-datatypes ((IArray!26627 0))(
  ( (IArray!26628 (innerList!13371 List!44012)) )
))
(declare-datatypes ((Conc!13311 0))(
  ( (Node!13311 (left!32991 Conc!13311) (right!33321 Conc!13311) (csize!26852 Int) (cheight!13522 Int)) (Leaf!20576 (xs!16617 IArray!26627) (csize!26853 Int)) (Empty!13311) )
))
(declare-datatypes ((BalanceConc!26216 0))(
  ( (BalanceConc!26217 (c!705491 Conc!13311)) )
))
(declare-datatypes ((TokenValueInjection!14088 0))(
  ( (TokenValueInjection!14089 (toValue!9696 Int) (toChars!9555 Int)) )
))
(declare-datatypes ((Rule!14000 0))(
  ( (Rule!14001 (regex!7100 Regex!12005) (tag!7960 String!50400) (isSeparator!7100 Bool) (transformation!7100 TokenValueInjection!14088)) )
))
(declare-datatypes ((Token!13326 0))(
  ( (Token!13327 (value!223002 TokenValue!7330) (rule!10246 Rule!14000) (size!32786 Int) (originalCharacters!7694 List!44012)) )
))
(declare-datatypes ((tuple2!42820 0))(
  ( (tuple2!42821 (_1!24544 Token!13326) (_2!24544 List!44012)) )
))
(declare-datatypes ((Option!9506 0))(
  ( (None!9505) (Some!9505 (v!39997 tuple2!42820)) )
))
(declare-fun lt!1464137 () Option!9506)

(declare-fun isEmpty!26253 (Option!9506) Bool)

(assert (=> b!4093391 (= res!1673082 (isEmpty!26253 lt!1464137))))

(declare-datatypes ((LexerInterface!6689 0))(
  ( (LexerInterfaceExt!6686 (__x!26878 Int)) (Lexer!6687) )
))
(declare-fun thiss!26199 () LexerInterface!6689)

(declare-datatypes ((List!44013 0))(
  ( (Nil!43889) (Cons!43889 (h!49309 Rule!14000) (t!339012 List!44013)) )
))
(declare-fun rules!3870 () List!44013)

(declare-fun input!3411 () List!44012)

(declare-fun maxPrefixOneRule!2961 (LexerInterface!6689 Rule!14000 List!44012) Option!9506)

(assert (=> b!4093391 (= lt!1464137 (maxPrefixOneRule!2961 thiss!26199 (h!49309 rules!3870) input!3411))))

(declare-fun rulesInvariant!6032 (LexerInterface!6689 List!44013) Bool)

(assert (=> b!4093391 (rulesInvariant!6032 thiss!26199 (t!339012 rules!3870))))

(declare-datatypes ((Unit!63421 0))(
  ( (Unit!63422) )
))
(declare-fun lt!1464135 () Unit!63421)

(declare-fun lemmaInvariantOnRulesThenOnTail!802 (LexerInterface!6689 Rule!14000 List!44013) Unit!63421)

(assert (=> b!4093391 (= lt!1464135 (lemmaInvariantOnRulesThenOnTail!802 thiss!26199 (h!49309 rules!3870) (t!339012 rules!3870)))))

(declare-fun b!4093392 () Bool)

(declare-fun e!2540290 () Bool)

(declare-fun e!2540297 () Bool)

(declare-fun tp!1239080 () Bool)

(assert (=> b!4093392 (= e!2540290 (and e!2540297 tp!1239080))))

(declare-fun b!4093393 () Bool)

(declare-fun e!2540296 () Bool)

(declare-fun lt!1464134 () Token!13326)

(declare-fun inv!58608 (Token!13326) Bool)

(assert (=> b!4093393 (= e!2540296 (inv!58608 lt!1464134))))

(declare-fun b!4093394 () Bool)

(declare-fun res!1673076 () Bool)

(assert (=> b!4093394 (=> res!1673076 e!2540284)))

(declare-fun r!4213 () Rule!14000)

(get-info :version)

(assert (=> b!4093394 (= res!1673076 (or (and ((_ is Cons!43889) rules!3870) (= (h!49309 rules!3870) r!4213)) (not ((_ is Cons!43889) rules!3870)) (= (h!49309 rules!3870) r!4213)))))

(declare-fun b!4093395 () Bool)

(assert (=> b!4093395 (= e!2540288 e!2540296)))

(declare-fun res!1673074 () Bool)

(assert (=> b!4093395 (=> res!1673074 e!2540296)))

(declare-fun lt!1464133 () tuple2!42820)

(declare-fun lt!1464132 () Option!9506)

(assert (=> b!4093395 (= res!1673074 (or (not (= (rule!10246 (_1!24544 lt!1464133)) (h!49309 rules!3870))) (= (rule!10246 (_1!24544 lt!1464133)) r!4213) (= lt!1464137 lt!1464132)))))

(declare-fun get!14394 (Option!9506) tuple2!42820)

(assert (=> b!4093395 (= lt!1464133 (get!14394 lt!1464137))))

(declare-fun b!4093396 () Bool)

(declare-fun res!1673079 () Bool)

(declare-fun e!2540294 () Bool)

(assert (=> b!4093396 (=> (not res!1673079) (not e!2540294))))

(declare-fun suffix!1518 () List!44012)

(declare-fun p!2988 () List!44012)

(declare-fun ++!11506 (List!44012 List!44012) List!44012)

(assert (=> b!4093396 (= res!1673079 (= input!3411 (++!11506 p!2988 suffix!1518)))))

(declare-fun b!4093397 () Bool)

(declare-fun e!2540289 () Bool)

(declare-fun tp_is_empty!21013 () Bool)

(declare-fun tp!1239088 () Bool)

(assert (=> b!4093397 (= e!2540289 (and tp_is_empty!21013 tp!1239088))))

(declare-fun e!2540286 () Bool)

(assert (=> b!4093398 (= e!2540286 (and tp!1239086 tp!1239084))))

(declare-fun b!4093400 () Bool)

(declare-fun res!1673080 () Bool)

(assert (=> b!4093400 (=> (not res!1673080) (not e!2540294))))

(declare-fun isEmpty!26254 (List!44012) Bool)

(assert (=> b!4093400 (= res!1673080 (not (isEmpty!26254 p!2988)))))

(declare-fun b!4093401 () Bool)

(declare-fun tp!1239087 () Bool)

(declare-fun inv!58605 (String!50400) Bool)

(declare-fun inv!58609 (TokenValueInjection!14088) Bool)

(assert (=> b!4093401 (= e!2540297 (and tp!1239087 (inv!58605 (tag!7960 (h!49309 rules!3870))) (inv!58609 (transformation!7100 (h!49309 rules!3870))) e!2540286))))

(declare-fun b!4093402 () Bool)

(declare-fun e!2540285 () Bool)

(declare-fun tp!1239082 () Bool)

(assert (=> b!4093402 (= e!2540285 (and tp_is_empty!21013 tp!1239082))))

(declare-fun b!4093403 () Bool)

(declare-fun res!1673075 () Bool)

(assert (=> b!4093403 (=> (not res!1673075) (not e!2540294))))

(declare-fun contains!8783 (List!44013 Rule!14000) Bool)

(assert (=> b!4093403 (= res!1673075 (contains!8783 rules!3870 r!4213))))

(declare-fun b!4093404 () Bool)

(declare-fun e!2540298 () Bool)

(assert (=> b!4093404 (= e!2540298 (not e!2540284))))

(declare-fun res!1673077 () Bool)

(assert (=> b!4093404 (=> res!1673077 e!2540284)))

(declare-fun matchR!5946 (Regex!12005 List!44012) Bool)

(assert (=> b!4093404 (= res!1673077 (not (matchR!5946 (regex!7100 r!4213) p!2988)))))

(declare-fun ruleValid!3020 (LexerInterface!6689 Rule!14000) Bool)

(assert (=> b!4093404 (ruleValid!3020 thiss!26199 r!4213)))

(declare-fun lt!1464136 () Unit!63421)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2086 (LexerInterface!6689 Rule!14000 List!44013) Unit!63421)

(assert (=> b!4093404 (= lt!1464136 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2086 thiss!26199 r!4213 rules!3870))))

(declare-fun tp!1239081 () Bool)

(declare-fun b!4093405 () Bool)

(declare-fun e!2540293 () Bool)

(assert (=> b!4093405 (= e!2540293 (and tp!1239081 (inv!58605 (tag!7960 r!4213)) (inv!58609 (transformation!7100 r!4213)) e!2540287))))

(declare-fun b!4093406 () Bool)

(declare-fun res!1673078 () Bool)

(assert (=> b!4093406 (=> (not res!1673078) (not e!2540294))))

(declare-fun isEmpty!26255 (List!44013) Bool)

(assert (=> b!4093406 (= res!1673078 (not (isEmpty!26255 rules!3870)))))

(declare-fun b!4093399 () Bool)

(declare-fun res!1673081 () Bool)

(assert (=> b!4093399 (=> (not res!1673081) (not e!2540294))))

(assert (=> b!4093399 (= res!1673081 (rulesInvariant!6032 thiss!26199 rules!3870))))

(declare-fun res!1673084 () Bool)

(assert (=> start!387508 (=> (not res!1673084) (not e!2540294))))

(assert (=> start!387508 (= res!1673084 ((_ is Lexer!6687) thiss!26199))))

(assert (=> start!387508 e!2540294))

(assert (=> start!387508 true))

(assert (=> start!387508 e!2540285))

(assert (=> start!387508 e!2540290))

(assert (=> start!387508 e!2540289))

(declare-fun e!2540292 () Bool)

(assert (=> start!387508 e!2540292))

(assert (=> start!387508 e!2540293))

(declare-fun b!4093407 () Bool)

(assert (=> b!4093407 (= e!2540294 e!2540298)))

(declare-fun res!1673083 () Bool)

(assert (=> b!4093407 (=> (not res!1673083) (not e!2540298))))

(declare-fun maxPrefix!3979 (LexerInterface!6689 List!44013 List!44012) Option!9506)

(assert (=> b!4093407 (= res!1673083 (= (maxPrefix!3979 thiss!26199 rules!3870 input!3411) lt!1464132))))

(assert (=> b!4093407 (= lt!1464132 (Some!9505 (tuple2!42821 lt!1464134 suffix!1518)))))

(declare-fun lt!1464131 () BalanceConc!26216)

(declare-fun apply!10283 (TokenValueInjection!14088 BalanceConc!26216) TokenValue!7330)

(declare-fun size!32787 (List!44012) Int)

(assert (=> b!4093407 (= lt!1464134 (Token!13327 (apply!10283 (transformation!7100 r!4213) lt!1464131) r!4213 (size!32787 p!2988) p!2988))))

(declare-fun lt!1464130 () Unit!63421)

(declare-fun lemmaSemiInverse!2067 (TokenValueInjection!14088 BalanceConc!26216) Unit!63421)

(assert (=> b!4093407 (= lt!1464130 (lemmaSemiInverse!2067 (transformation!7100 r!4213) lt!1464131))))

(declare-fun seqFromList!5317 (List!44012) BalanceConc!26216)

(assert (=> b!4093407 (= lt!1464131 (seqFromList!5317 p!2988))))

(declare-fun b!4093408 () Bool)

(declare-fun tp!1239083 () Bool)

(assert (=> b!4093408 (= e!2540292 (and tp_is_empty!21013 tp!1239083))))

(assert (= (and start!387508 res!1673084) b!4093406))

(assert (= (and b!4093406 res!1673078) b!4093399))

(assert (= (and b!4093399 res!1673081) b!4093403))

(assert (= (and b!4093403 res!1673075) b!4093396))

(assert (= (and b!4093396 res!1673079) b!4093400))

(assert (= (and b!4093400 res!1673080) b!4093407))

(assert (= (and b!4093407 res!1673083) b!4093404))

(assert (= (and b!4093404 (not res!1673077)) b!4093394))

(assert (= (and b!4093394 (not res!1673076)) b!4093391))

(assert (= (and b!4093391 (not res!1673082)) b!4093395))

(assert (= (and b!4093395 (not res!1673074)) b!4093393))

(assert (= (and start!387508 ((_ is Cons!43888) suffix!1518)) b!4093402))

(assert (= b!4093401 b!4093398))

(assert (= b!4093392 b!4093401))

(assert (= (and start!387508 ((_ is Cons!43889) rules!3870)) b!4093392))

(assert (= (and start!387508 ((_ is Cons!43888) p!2988)) b!4093397))

(assert (= (and start!387508 ((_ is Cons!43888) input!3411)) b!4093408))

(assert (= b!4093405 b!4093390))

(assert (= start!387508 b!4093405))

(declare-fun m!4700415 () Bool)

(assert (=> b!4093405 m!4700415))

(declare-fun m!4700417 () Bool)

(assert (=> b!4093405 m!4700417))

(declare-fun m!4700419 () Bool)

(assert (=> b!4093407 m!4700419))

(declare-fun m!4700421 () Bool)

(assert (=> b!4093407 m!4700421))

(declare-fun m!4700423 () Bool)

(assert (=> b!4093407 m!4700423))

(declare-fun m!4700425 () Bool)

(assert (=> b!4093407 m!4700425))

(declare-fun m!4700427 () Bool)

(assert (=> b!4093407 m!4700427))

(declare-fun m!4700429 () Bool)

(assert (=> b!4093391 m!4700429))

(declare-fun m!4700431 () Bool)

(assert (=> b!4093391 m!4700431))

(declare-fun m!4700433 () Bool)

(assert (=> b!4093391 m!4700433))

(declare-fun m!4700435 () Bool)

(assert (=> b!4093391 m!4700435))

(declare-fun m!4700437 () Bool)

(assert (=> b!4093400 m!4700437))

(declare-fun m!4700439 () Bool)

(assert (=> b!4093401 m!4700439))

(declare-fun m!4700441 () Bool)

(assert (=> b!4093401 m!4700441))

(declare-fun m!4700443 () Bool)

(assert (=> b!4093396 m!4700443))

(declare-fun m!4700445 () Bool)

(assert (=> b!4093403 m!4700445))

(declare-fun m!4700447 () Bool)

(assert (=> b!4093404 m!4700447))

(declare-fun m!4700449 () Bool)

(assert (=> b!4093404 m!4700449))

(declare-fun m!4700451 () Bool)

(assert (=> b!4093404 m!4700451))

(declare-fun m!4700453 () Bool)

(assert (=> b!4093406 m!4700453))

(declare-fun m!4700455 () Bool)

(assert (=> b!4093393 m!4700455))

(declare-fun m!4700457 () Bool)

(assert (=> b!4093395 m!4700457))

(declare-fun m!4700459 () Bool)

(assert (=> b!4093399 m!4700459))

(check-sat (not b!4093399) b_and!315637 (not b!4093406) (not b!4093395) (not b_next!115145) (not b!4093392) (not b!4093396) (not b!4093407) (not b!4093404) (not b!4093391) b_and!315631 (not b_next!115149) (not b_next!115147) (not b!4093397) b_and!315635 b_and!315633 (not b!4093401) (not b!4093408) tp_is_empty!21013 (not b_next!115151) (not b!4093393) (not b!4093400) (not b!4093403) (not b!4093405) (not b!4093402))
(check-sat b_and!315637 (not b_next!115145) (not b_next!115151) b_and!315631 (not b_next!115149) (not b_next!115147) b_and!315635 b_and!315633)
(get-model)

(declare-fun d!1215453 () Bool)

(assert (=> d!1215453 (= (get!14394 lt!1464137) (v!39997 lt!1464137))))

(assert (=> b!4093395 d!1215453))

(declare-fun d!1215457 () Bool)

(assert (=> d!1215457 (= (inv!58605 (tag!7960 r!4213)) (= (mod (str.len (value!223001 (tag!7960 r!4213))) 2) 0))))

(assert (=> b!4093405 d!1215457))

(declare-fun d!1215459 () Bool)

(declare-fun res!1673094 () Bool)

(declare-fun e!2540301 () Bool)

(assert (=> d!1215459 (=> (not res!1673094) (not e!2540301))))

(declare-fun semiInverseModEq!3053 (Int Int) Bool)

(assert (=> d!1215459 (= res!1673094 (semiInverseModEq!3053 (toChars!9555 (transformation!7100 r!4213)) (toValue!9696 (transformation!7100 r!4213))))))

(assert (=> d!1215459 (= (inv!58609 (transformation!7100 r!4213)) e!2540301)))

(declare-fun b!4093411 () Bool)

(declare-fun equivClasses!2952 (Int Int) Bool)

(assert (=> b!4093411 (= e!2540301 (equivClasses!2952 (toChars!9555 (transformation!7100 r!4213)) (toValue!9696 (transformation!7100 r!4213))))))

(assert (= (and d!1215459 res!1673094) b!4093411))

(declare-fun m!4700461 () Bool)

(assert (=> d!1215459 m!4700461))

(declare-fun m!4700463 () Bool)

(assert (=> b!4093411 m!4700463))

(assert (=> b!4093405 d!1215459))

(declare-fun b!4093490 () Bool)

(declare-fun res!1673141 () Bool)

(declare-fun e!2540343 () Bool)

(assert (=> b!4093490 (=> res!1673141 e!2540343)))

(declare-fun e!2540344 () Bool)

(assert (=> b!4093490 (= res!1673141 e!2540344)))

(declare-fun res!1673148 () Bool)

(assert (=> b!4093490 (=> (not res!1673148) (not e!2540344))))

(declare-fun lt!1464146 () Bool)

(assert (=> b!4093490 (= res!1673148 lt!1464146)))

(declare-fun b!4093491 () Bool)

(declare-fun e!2540347 () Bool)

(declare-fun derivativeStep!3643 (Regex!12005 C!24196) Regex!12005)

(declare-fun head!8653 (List!44012) C!24196)

(declare-fun tail!6387 (List!44012) List!44012)

(assert (=> b!4093491 (= e!2540347 (matchR!5946 (derivativeStep!3643 (regex!7100 r!4213) (head!8653 p!2988)) (tail!6387 p!2988)))))

(declare-fun b!4093492 () Bool)

(declare-fun e!2540342 () Bool)

(declare-fun call!289348 () Bool)

(assert (=> b!4093492 (= e!2540342 (= lt!1464146 call!289348))))

(declare-fun b!4093493 () Bool)

(declare-fun res!1673145 () Bool)

(declare-fun e!2540348 () Bool)

(assert (=> b!4093493 (=> res!1673145 e!2540348)))

(assert (=> b!4093493 (= res!1673145 (not (isEmpty!26254 (tail!6387 p!2988))))))

(declare-fun bm!289343 () Bool)

(assert (=> bm!289343 (= call!289348 (isEmpty!26254 p!2988))))

(declare-fun b!4093495 () Bool)

(declare-fun res!1673142 () Bool)

(assert (=> b!4093495 (=> (not res!1673142) (not e!2540344))))

(assert (=> b!4093495 (= res!1673142 (isEmpty!26254 (tail!6387 p!2988)))))

(declare-fun b!4093496 () Bool)

(declare-fun e!2540345 () Bool)

(assert (=> b!4093496 (= e!2540342 e!2540345)))

(declare-fun c!705507 () Bool)

(assert (=> b!4093496 (= c!705507 ((_ is EmptyLang!12005) (regex!7100 r!4213)))))

(declare-fun b!4093497 () Bool)

(assert (=> b!4093497 (= e!2540344 (= (head!8653 p!2988) (c!705490 (regex!7100 r!4213))))))

(declare-fun b!4093498 () Bool)

(declare-fun nullable!4242 (Regex!12005) Bool)

(assert (=> b!4093498 (= e!2540347 (nullable!4242 (regex!7100 r!4213)))))

(declare-fun b!4093499 () Bool)

(declare-fun res!1673146 () Bool)

(assert (=> b!4093499 (=> (not res!1673146) (not e!2540344))))

(assert (=> b!4093499 (= res!1673146 (not call!289348))))

(declare-fun b!4093500 () Bool)

(declare-fun e!2540346 () Bool)

(assert (=> b!4093500 (= e!2540343 e!2540346)))

(declare-fun res!1673143 () Bool)

(assert (=> b!4093500 (=> (not res!1673143) (not e!2540346))))

(assert (=> b!4093500 (= res!1673143 (not lt!1464146))))

(declare-fun b!4093501 () Bool)

(declare-fun res!1673144 () Bool)

(assert (=> b!4093501 (=> res!1673144 e!2540343)))

(assert (=> b!4093501 (= res!1673144 (not ((_ is ElementMatch!12005) (regex!7100 r!4213))))))

(assert (=> b!4093501 (= e!2540345 e!2540343)))

(declare-fun b!4093502 () Bool)

(assert (=> b!4093502 (= e!2540348 (not (= (head!8653 p!2988) (c!705490 (regex!7100 r!4213)))))))

(declare-fun b!4093503 () Bool)

(assert (=> b!4093503 (= e!2540346 e!2540348)))

(declare-fun res!1673147 () Bool)

(assert (=> b!4093503 (=> res!1673147 e!2540348)))

(assert (=> b!4093503 (= res!1673147 call!289348)))

(declare-fun b!4093494 () Bool)

(assert (=> b!4093494 (= e!2540345 (not lt!1464146))))

(declare-fun d!1215461 () Bool)

(assert (=> d!1215461 e!2540342))

(declare-fun c!705508 () Bool)

(assert (=> d!1215461 (= c!705508 ((_ is EmptyExpr!12005) (regex!7100 r!4213)))))

(assert (=> d!1215461 (= lt!1464146 e!2540347)))

(declare-fun c!705509 () Bool)

(assert (=> d!1215461 (= c!705509 (isEmpty!26254 p!2988))))

(declare-fun validRegex!5442 (Regex!12005) Bool)

(assert (=> d!1215461 (validRegex!5442 (regex!7100 r!4213))))

(assert (=> d!1215461 (= (matchR!5946 (regex!7100 r!4213) p!2988) lt!1464146)))

(assert (= (and d!1215461 c!705509) b!4093498))

(assert (= (and d!1215461 (not c!705509)) b!4093491))

(assert (= (and d!1215461 c!705508) b!4093492))

(assert (= (and d!1215461 (not c!705508)) b!4093496))

(assert (= (and b!4093496 c!705507) b!4093494))

(assert (= (and b!4093496 (not c!705507)) b!4093501))

(assert (= (and b!4093501 (not res!1673144)) b!4093490))

(assert (= (and b!4093490 res!1673148) b!4093499))

(assert (= (and b!4093499 res!1673146) b!4093495))

(assert (= (and b!4093495 res!1673142) b!4093497))

(assert (= (and b!4093490 (not res!1673141)) b!4093500))

(assert (= (and b!4093500 res!1673143) b!4093503))

(assert (= (and b!4093503 (not res!1673147)) b!4093493))

(assert (= (and b!4093493 (not res!1673145)) b!4093502))

(assert (= (or b!4093492 b!4093499 b!4093503) bm!289343))

(assert (=> bm!289343 m!4700437))

(declare-fun m!4700485 () Bool)

(assert (=> b!4093493 m!4700485))

(assert (=> b!4093493 m!4700485))

(declare-fun m!4700487 () Bool)

(assert (=> b!4093493 m!4700487))

(assert (=> b!4093495 m!4700485))

(assert (=> b!4093495 m!4700485))

(assert (=> b!4093495 m!4700487))

(declare-fun m!4700489 () Bool)

(assert (=> b!4093491 m!4700489))

(assert (=> b!4093491 m!4700489))

(declare-fun m!4700491 () Bool)

(assert (=> b!4093491 m!4700491))

(assert (=> b!4093491 m!4700485))

(assert (=> b!4093491 m!4700491))

(assert (=> b!4093491 m!4700485))

(declare-fun m!4700493 () Bool)

(assert (=> b!4093491 m!4700493))

(declare-fun m!4700495 () Bool)

(assert (=> b!4093498 m!4700495))

(assert (=> b!4093502 m!4700489))

(assert (=> b!4093497 m!4700489))

(assert (=> d!1215461 m!4700437))

(declare-fun m!4700497 () Bool)

(assert (=> d!1215461 m!4700497))

(assert (=> b!4093404 d!1215461))

(declare-fun d!1215473 () Bool)

(declare-fun res!1673153 () Bool)

(declare-fun e!2540352 () Bool)

(assert (=> d!1215473 (=> (not res!1673153) (not e!2540352))))

(assert (=> d!1215473 (= res!1673153 (validRegex!5442 (regex!7100 r!4213)))))

(assert (=> d!1215473 (= (ruleValid!3020 thiss!26199 r!4213) e!2540352)))

(declare-fun b!4093508 () Bool)

(declare-fun res!1673154 () Bool)

(assert (=> b!4093508 (=> (not res!1673154) (not e!2540352))))

(assert (=> b!4093508 (= res!1673154 (not (nullable!4242 (regex!7100 r!4213))))))

(declare-fun b!4093509 () Bool)

(assert (=> b!4093509 (= e!2540352 (not (= (tag!7960 r!4213) (String!50401 ""))))))

(assert (= (and d!1215473 res!1673153) b!4093508))

(assert (= (and b!4093508 res!1673154) b!4093509))

(assert (=> d!1215473 m!4700497))

(assert (=> b!4093508 m!4700495))

(assert (=> b!4093404 d!1215473))

(declare-fun d!1215475 () Bool)

(assert (=> d!1215475 (ruleValid!3020 thiss!26199 r!4213)))

(declare-fun lt!1464149 () Unit!63421)

(declare-fun choose!25007 (LexerInterface!6689 Rule!14000 List!44013) Unit!63421)

(assert (=> d!1215475 (= lt!1464149 (choose!25007 thiss!26199 r!4213 rules!3870))))

(assert (=> d!1215475 (contains!8783 rules!3870 r!4213)))

(assert (=> d!1215475 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2086 thiss!26199 r!4213 rules!3870) lt!1464149)))

(declare-fun bs!593458 () Bool)

(assert (= bs!593458 d!1215475))

(assert (=> bs!593458 m!4700449))

(declare-fun m!4700499 () Bool)

(assert (=> bs!593458 m!4700499))

(assert (=> bs!593458 m!4700445))

(assert (=> b!4093404 d!1215475))

(declare-fun d!1215477 () Bool)

(declare-fun res!1673159 () Bool)

(declare-fun e!2540355 () Bool)

(assert (=> d!1215477 (=> (not res!1673159) (not e!2540355))))

(assert (=> d!1215477 (= res!1673159 (not (isEmpty!26254 (originalCharacters!7694 lt!1464134))))))

(assert (=> d!1215477 (= (inv!58608 lt!1464134) e!2540355)))

(declare-fun b!4093514 () Bool)

(declare-fun res!1673160 () Bool)

(assert (=> b!4093514 (=> (not res!1673160) (not e!2540355))))

(declare-fun list!16292 (BalanceConc!26216) List!44012)

(declare-fun dynLambda!18804 (Int TokenValue!7330) BalanceConc!26216)

(assert (=> b!4093514 (= res!1673160 (= (originalCharacters!7694 lt!1464134) (list!16292 (dynLambda!18804 (toChars!9555 (transformation!7100 (rule!10246 lt!1464134))) (value!223002 lt!1464134)))))))

(declare-fun b!4093515 () Bool)

(assert (=> b!4093515 (= e!2540355 (= (size!32786 lt!1464134) (size!32787 (originalCharacters!7694 lt!1464134))))))

(assert (= (and d!1215477 res!1673159) b!4093514))

(assert (= (and b!4093514 res!1673160) b!4093515))

(declare-fun b_lambda!120105 () Bool)

(assert (=> (not b_lambda!120105) (not b!4093514)))

(declare-fun t!339018 () Bool)

(declare-fun tb!246229 () Bool)

(assert (=> (and b!4093390 (= (toChars!9555 (transformation!7100 r!4213)) (toChars!9555 (transformation!7100 (rule!10246 lt!1464134)))) t!339018) tb!246229))

(declare-fun b!4093520 () Bool)

(declare-fun e!2540358 () Bool)

(declare-fun tp!1239091 () Bool)

(declare-fun inv!58612 (Conc!13311) Bool)

(assert (=> b!4093520 (= e!2540358 (and (inv!58612 (c!705491 (dynLambda!18804 (toChars!9555 (transformation!7100 (rule!10246 lt!1464134))) (value!223002 lt!1464134)))) tp!1239091))))

(declare-fun result!298768 () Bool)

(declare-fun inv!58613 (BalanceConc!26216) Bool)

(assert (=> tb!246229 (= result!298768 (and (inv!58613 (dynLambda!18804 (toChars!9555 (transformation!7100 (rule!10246 lt!1464134))) (value!223002 lt!1464134))) e!2540358))))

(assert (= tb!246229 b!4093520))

(declare-fun m!4700501 () Bool)

(assert (=> b!4093520 m!4700501))

(declare-fun m!4700503 () Bool)

(assert (=> tb!246229 m!4700503))

(assert (=> b!4093514 t!339018))

(declare-fun b_and!315643 () Bool)

(assert (= b_and!315633 (and (=> t!339018 result!298768) b_and!315643)))

(declare-fun t!339020 () Bool)

(declare-fun tb!246231 () Bool)

(assert (=> (and b!4093398 (= (toChars!9555 (transformation!7100 (h!49309 rules!3870))) (toChars!9555 (transformation!7100 (rule!10246 lt!1464134)))) t!339020) tb!246231))

(declare-fun result!298772 () Bool)

(assert (= result!298772 result!298768))

(assert (=> b!4093514 t!339020))

(declare-fun b_and!315645 () Bool)

(assert (= b_and!315637 (and (=> t!339020 result!298772) b_and!315645)))

(declare-fun m!4700505 () Bool)

(assert (=> d!1215477 m!4700505))

(declare-fun m!4700507 () Bool)

(assert (=> b!4093514 m!4700507))

(assert (=> b!4093514 m!4700507))

(declare-fun m!4700509 () Bool)

(assert (=> b!4093514 m!4700509))

(declare-fun m!4700511 () Bool)

(assert (=> b!4093515 m!4700511))

(assert (=> b!4093393 d!1215477))

(declare-fun d!1215479 () Bool)

(declare-fun lt!1464152 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6768 (List!44013) (InoxSet Rule!14000))

(assert (=> d!1215479 (= lt!1464152 (select (content!6768 rules!3870) r!4213))))

(declare-fun e!2540364 () Bool)

(assert (=> d!1215479 (= lt!1464152 e!2540364)))

(declare-fun res!1673165 () Bool)

(assert (=> d!1215479 (=> (not res!1673165) (not e!2540364))))

(assert (=> d!1215479 (= res!1673165 ((_ is Cons!43889) rules!3870))))

(assert (=> d!1215479 (= (contains!8783 rules!3870 r!4213) lt!1464152)))

(declare-fun b!4093525 () Bool)

(declare-fun e!2540363 () Bool)

(assert (=> b!4093525 (= e!2540364 e!2540363)))

(declare-fun res!1673166 () Bool)

(assert (=> b!4093525 (=> res!1673166 e!2540363)))

(assert (=> b!4093525 (= res!1673166 (= (h!49309 rules!3870) r!4213))))

(declare-fun b!4093526 () Bool)

(assert (=> b!4093526 (= e!2540363 (contains!8783 (t!339012 rules!3870) r!4213))))

(assert (= (and d!1215479 res!1673165) b!4093525))

(assert (= (and b!4093525 (not res!1673166)) b!4093526))

(declare-fun m!4700513 () Bool)

(assert (=> d!1215479 m!4700513))

(declare-fun m!4700515 () Bool)

(assert (=> d!1215479 m!4700515))

(declare-fun m!4700517 () Bool)

(assert (=> b!4093526 m!4700517))

(assert (=> b!4093403 d!1215479))

(declare-fun d!1215481 () Bool)

(assert (=> d!1215481 (= (isEmpty!26253 lt!1464137) (not ((_ is Some!9505) lt!1464137)))))

(assert (=> b!4093391 d!1215481))

(declare-fun b!4093572 () Bool)

(declare-fun res!1673207 () Bool)

(declare-fun e!2540384 () Bool)

(assert (=> b!4093572 (=> (not res!1673207) (not e!2540384))))

(declare-fun lt!1464180 () Option!9506)

(assert (=> b!4093572 (= res!1673207 (= (value!223002 (_1!24544 (get!14394 lt!1464180))) (apply!10283 (transformation!7100 (rule!10246 (_1!24544 (get!14394 lt!1464180)))) (seqFromList!5317 (originalCharacters!7694 (_1!24544 (get!14394 lt!1464180)))))))))

(declare-fun b!4093573 () Bool)

(assert (=> b!4093573 (= e!2540384 (= (size!32786 (_1!24544 (get!14394 lt!1464180))) (size!32787 (originalCharacters!7694 (_1!24544 (get!14394 lt!1464180))))))))

(declare-fun d!1215483 () Bool)

(declare-fun e!2540385 () Bool)

(assert (=> d!1215483 e!2540385))

(declare-fun res!1673205 () Bool)

(assert (=> d!1215483 (=> res!1673205 e!2540385)))

(assert (=> d!1215483 (= res!1673205 (isEmpty!26253 lt!1464180))))

(declare-fun e!2540383 () Option!9506)

(assert (=> d!1215483 (= lt!1464180 e!2540383)))

(declare-fun c!705516 () Bool)

(declare-datatypes ((tuple2!42824 0))(
  ( (tuple2!42825 (_1!24546 List!44012) (_2!24546 List!44012)) )
))
(declare-fun lt!1464182 () tuple2!42824)

(assert (=> d!1215483 (= c!705516 (isEmpty!26254 (_1!24546 lt!1464182)))))

(declare-fun findLongestMatch!1379 (Regex!12005 List!44012) tuple2!42824)

(assert (=> d!1215483 (= lt!1464182 (findLongestMatch!1379 (regex!7100 (h!49309 rules!3870)) input!3411))))

(assert (=> d!1215483 (ruleValid!3020 thiss!26199 (h!49309 rules!3870))))

(assert (=> d!1215483 (= (maxPrefixOneRule!2961 thiss!26199 (h!49309 rules!3870) input!3411) lt!1464180)))

(declare-fun b!4093574 () Bool)

(declare-fun res!1673204 () Bool)

(assert (=> b!4093574 (=> (not res!1673204) (not e!2540384))))

(declare-fun charsOf!4860 (Token!13326) BalanceConc!26216)

(assert (=> b!4093574 (= res!1673204 (= (++!11506 (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464180)))) (_2!24544 (get!14394 lt!1464180))) input!3411))))

(declare-fun b!4093575 () Bool)

(assert (=> b!4093575 (= e!2540383 None!9505)))

(declare-fun b!4093576 () Bool)

(assert (=> b!4093576 (= e!2540385 e!2540384)))

(declare-fun res!1673208 () Bool)

(assert (=> b!4093576 (=> (not res!1673208) (not e!2540384))))

(assert (=> b!4093576 (= res!1673208 (matchR!5946 (regex!7100 (h!49309 rules!3870)) (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464180))))))))

(declare-fun b!4093577 () Bool)

(declare-fun res!1673203 () Bool)

(assert (=> b!4093577 (=> (not res!1673203) (not e!2540384))))

(assert (=> b!4093577 (= res!1673203 (= (rule!10246 (_1!24544 (get!14394 lt!1464180))) (h!49309 rules!3870)))))

(declare-fun b!4093578 () Bool)

(declare-fun size!32789 (BalanceConc!26216) Int)

(assert (=> b!4093578 (= e!2540383 (Some!9505 (tuple2!42821 (Token!13327 (apply!10283 (transformation!7100 (h!49309 rules!3870)) (seqFromList!5317 (_1!24546 lt!1464182))) (h!49309 rules!3870) (size!32789 (seqFromList!5317 (_1!24546 lt!1464182))) (_1!24546 lt!1464182)) (_2!24546 lt!1464182))))))

(declare-fun lt!1464181 () Unit!63421)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1439 (Regex!12005 List!44012) Unit!63421)

(assert (=> b!4093578 (= lt!1464181 (longestMatchIsAcceptedByMatchOrIsEmpty!1439 (regex!7100 (h!49309 rules!3870)) input!3411))))

(declare-fun res!1673202 () Bool)

(declare-fun findLongestMatchInner!1466 (Regex!12005 List!44012 Int List!44012 List!44012 Int) tuple2!42824)

(assert (=> b!4093578 (= res!1673202 (isEmpty!26254 (_1!24546 (findLongestMatchInner!1466 (regex!7100 (h!49309 rules!3870)) Nil!43888 (size!32787 Nil!43888) input!3411 input!3411 (size!32787 input!3411)))))))

(declare-fun e!2540382 () Bool)

(assert (=> b!4093578 (=> res!1673202 e!2540382)))

(assert (=> b!4093578 e!2540382))

(declare-fun lt!1464184 () Unit!63421)

(assert (=> b!4093578 (= lt!1464184 lt!1464181)))

(declare-fun lt!1464183 () Unit!63421)

(assert (=> b!4093578 (= lt!1464183 (lemmaSemiInverse!2067 (transformation!7100 (h!49309 rules!3870)) (seqFromList!5317 (_1!24546 lt!1464182))))))

(declare-fun b!4093579 () Bool)

(declare-fun res!1673206 () Bool)

(assert (=> b!4093579 (=> (not res!1673206) (not e!2540384))))

(assert (=> b!4093579 (= res!1673206 (< (size!32787 (_2!24544 (get!14394 lt!1464180))) (size!32787 input!3411)))))

(declare-fun b!4093580 () Bool)

(assert (=> b!4093580 (= e!2540382 (matchR!5946 (regex!7100 (h!49309 rules!3870)) (_1!24546 (findLongestMatchInner!1466 (regex!7100 (h!49309 rules!3870)) Nil!43888 (size!32787 Nil!43888) input!3411 input!3411 (size!32787 input!3411)))))))

(assert (= (and d!1215483 c!705516) b!4093575))

(assert (= (and d!1215483 (not c!705516)) b!4093578))

(assert (= (and b!4093578 (not res!1673202)) b!4093580))

(assert (= (and d!1215483 (not res!1673205)) b!4093576))

(assert (= (and b!4093576 res!1673208) b!4093574))

(assert (= (and b!4093574 res!1673204) b!4093579))

(assert (= (and b!4093579 res!1673206) b!4093577))

(assert (= (and b!4093577 res!1673203) b!4093572))

(assert (= (and b!4093572 res!1673207) b!4093573))

(declare-fun m!4700551 () Bool)

(assert (=> b!4093573 m!4700551))

(declare-fun m!4700553 () Bool)

(assert (=> b!4093573 m!4700553))

(assert (=> b!4093579 m!4700551))

(declare-fun m!4700555 () Bool)

(assert (=> b!4093579 m!4700555))

(declare-fun m!4700557 () Bool)

(assert (=> b!4093579 m!4700557))

(assert (=> b!4093577 m!4700551))

(declare-fun m!4700559 () Bool)

(assert (=> b!4093580 m!4700559))

(assert (=> b!4093580 m!4700557))

(assert (=> b!4093580 m!4700559))

(assert (=> b!4093580 m!4700557))

(declare-fun m!4700561 () Bool)

(assert (=> b!4093580 m!4700561))

(declare-fun m!4700563 () Bool)

(assert (=> b!4093580 m!4700563))

(declare-fun m!4700565 () Bool)

(assert (=> d!1215483 m!4700565))

(declare-fun m!4700567 () Bool)

(assert (=> d!1215483 m!4700567))

(declare-fun m!4700569 () Bool)

(assert (=> d!1215483 m!4700569))

(declare-fun m!4700571 () Bool)

(assert (=> d!1215483 m!4700571))

(assert (=> b!4093578 m!4700557))

(declare-fun m!4700573 () Bool)

(assert (=> b!4093578 m!4700573))

(declare-fun m!4700575 () Bool)

(assert (=> b!4093578 m!4700575))

(declare-fun m!4700577 () Bool)

(assert (=> b!4093578 m!4700577))

(declare-fun m!4700579 () Bool)

(assert (=> b!4093578 m!4700579))

(assert (=> b!4093578 m!4700559))

(assert (=> b!4093578 m!4700573))

(declare-fun m!4700581 () Bool)

(assert (=> b!4093578 m!4700581))

(assert (=> b!4093578 m!4700573))

(assert (=> b!4093578 m!4700559))

(assert (=> b!4093578 m!4700557))

(assert (=> b!4093578 m!4700561))

(assert (=> b!4093578 m!4700573))

(declare-fun m!4700583 () Bool)

(assert (=> b!4093578 m!4700583))

(assert (=> b!4093576 m!4700551))

(declare-fun m!4700585 () Bool)

(assert (=> b!4093576 m!4700585))

(assert (=> b!4093576 m!4700585))

(declare-fun m!4700587 () Bool)

(assert (=> b!4093576 m!4700587))

(assert (=> b!4093576 m!4700587))

(declare-fun m!4700589 () Bool)

(assert (=> b!4093576 m!4700589))

(assert (=> b!4093574 m!4700551))

(assert (=> b!4093574 m!4700585))

(assert (=> b!4093574 m!4700585))

(assert (=> b!4093574 m!4700587))

(assert (=> b!4093574 m!4700587))

(declare-fun m!4700591 () Bool)

(assert (=> b!4093574 m!4700591))

(assert (=> b!4093572 m!4700551))

(declare-fun m!4700593 () Bool)

(assert (=> b!4093572 m!4700593))

(assert (=> b!4093572 m!4700593))

(declare-fun m!4700595 () Bool)

(assert (=> b!4093572 m!4700595))

(assert (=> b!4093391 d!1215483))

(declare-fun d!1215487 () Bool)

(declare-fun res!1673211 () Bool)

(declare-fun e!2540388 () Bool)

(assert (=> d!1215487 (=> (not res!1673211) (not e!2540388))))

(declare-fun rulesValid!2788 (LexerInterface!6689 List!44013) Bool)

(assert (=> d!1215487 (= res!1673211 (rulesValid!2788 thiss!26199 (t!339012 rules!3870)))))

(assert (=> d!1215487 (= (rulesInvariant!6032 thiss!26199 (t!339012 rules!3870)) e!2540388)))

(declare-fun b!4093583 () Bool)

(declare-datatypes ((List!44015 0))(
  ( (Nil!43891) (Cons!43891 (h!49311 String!50400) (t!339050 List!44015)) )
))
(declare-fun noDuplicateTag!2789 (LexerInterface!6689 List!44013 List!44015) Bool)

(assert (=> b!4093583 (= e!2540388 (noDuplicateTag!2789 thiss!26199 (t!339012 rules!3870) Nil!43891))))

(assert (= (and d!1215487 res!1673211) b!4093583))

(declare-fun m!4700597 () Bool)

(assert (=> d!1215487 m!4700597))

(declare-fun m!4700599 () Bool)

(assert (=> b!4093583 m!4700599))

(assert (=> b!4093391 d!1215487))

(declare-fun d!1215489 () Bool)

(assert (=> d!1215489 (rulesInvariant!6032 thiss!26199 (t!339012 rules!3870))))

(declare-fun lt!1464187 () Unit!63421)

(declare-fun choose!25009 (LexerInterface!6689 Rule!14000 List!44013) Unit!63421)

(assert (=> d!1215489 (= lt!1464187 (choose!25009 thiss!26199 (h!49309 rules!3870) (t!339012 rules!3870)))))

(assert (=> d!1215489 (rulesInvariant!6032 thiss!26199 (Cons!43889 (h!49309 rules!3870) (t!339012 rules!3870)))))

(assert (=> d!1215489 (= (lemmaInvariantOnRulesThenOnTail!802 thiss!26199 (h!49309 rules!3870) (t!339012 rules!3870)) lt!1464187)))

(declare-fun bs!593459 () Bool)

(assert (= bs!593459 d!1215489))

(assert (=> bs!593459 m!4700433))

(declare-fun m!4700601 () Bool)

(assert (=> bs!593459 m!4700601))

(declare-fun m!4700603 () Bool)

(assert (=> bs!593459 m!4700603))

(assert (=> b!4093391 d!1215489))

(declare-fun d!1215491 () Bool)

(assert (=> d!1215491 (= (inv!58605 (tag!7960 (h!49309 rules!3870))) (= (mod (str.len (value!223001 (tag!7960 (h!49309 rules!3870)))) 2) 0))))

(assert (=> b!4093401 d!1215491))

(declare-fun d!1215493 () Bool)

(declare-fun res!1673212 () Bool)

(declare-fun e!2540389 () Bool)

(assert (=> d!1215493 (=> (not res!1673212) (not e!2540389))))

(assert (=> d!1215493 (= res!1673212 (semiInverseModEq!3053 (toChars!9555 (transformation!7100 (h!49309 rules!3870))) (toValue!9696 (transformation!7100 (h!49309 rules!3870)))))))

(assert (=> d!1215493 (= (inv!58609 (transformation!7100 (h!49309 rules!3870))) e!2540389)))

(declare-fun b!4093584 () Bool)

(assert (=> b!4093584 (= e!2540389 (equivClasses!2952 (toChars!9555 (transformation!7100 (h!49309 rules!3870))) (toValue!9696 (transformation!7100 (h!49309 rules!3870)))))))

(assert (= (and d!1215493 res!1673212) b!4093584))

(declare-fun m!4700605 () Bool)

(assert (=> d!1215493 m!4700605))

(declare-fun m!4700607 () Bool)

(assert (=> b!4093584 m!4700607))

(assert (=> b!4093401 d!1215493))

(declare-fun d!1215495 () Bool)

(assert (=> d!1215495 (= (isEmpty!26254 p!2988) ((_ is Nil!43888) p!2988))))

(assert (=> b!4093400 d!1215495))

(declare-fun d!1215497 () Bool)

(declare-fun res!1673213 () Bool)

(declare-fun e!2540390 () Bool)

(assert (=> d!1215497 (=> (not res!1673213) (not e!2540390))))

(assert (=> d!1215497 (= res!1673213 (rulesValid!2788 thiss!26199 rules!3870))))

(assert (=> d!1215497 (= (rulesInvariant!6032 thiss!26199 rules!3870) e!2540390)))

(declare-fun b!4093585 () Bool)

(assert (=> b!4093585 (= e!2540390 (noDuplicateTag!2789 thiss!26199 rules!3870 Nil!43891))))

(assert (= (and d!1215497 res!1673213) b!4093585))

(declare-fun m!4700609 () Bool)

(assert (=> d!1215497 m!4700609))

(declare-fun m!4700611 () Bool)

(assert (=> b!4093585 m!4700611))

(assert (=> b!4093399 d!1215497))

(declare-fun b!4093596 () Bool)

(declare-fun res!1673218 () Bool)

(declare-fun e!2540395 () Bool)

(assert (=> b!4093596 (=> (not res!1673218) (not e!2540395))))

(declare-fun lt!1464190 () List!44012)

(assert (=> b!4093596 (= res!1673218 (= (size!32787 lt!1464190) (+ (size!32787 p!2988) (size!32787 suffix!1518))))))

(declare-fun b!4093594 () Bool)

(declare-fun e!2540396 () List!44012)

(assert (=> b!4093594 (= e!2540396 suffix!1518)))

(declare-fun b!4093597 () Bool)

(assert (=> b!4093597 (= e!2540395 (or (not (= suffix!1518 Nil!43888)) (= lt!1464190 p!2988)))))

(declare-fun d!1215499 () Bool)

(assert (=> d!1215499 e!2540395))

(declare-fun res!1673219 () Bool)

(assert (=> d!1215499 (=> (not res!1673219) (not e!2540395))))

(declare-fun content!6771 (List!44012) (InoxSet C!24196))

(assert (=> d!1215499 (= res!1673219 (= (content!6771 lt!1464190) ((_ map or) (content!6771 p!2988) (content!6771 suffix!1518))))))

(assert (=> d!1215499 (= lt!1464190 e!2540396)))

(declare-fun c!705519 () Bool)

(assert (=> d!1215499 (= c!705519 ((_ is Nil!43888) p!2988))))

(assert (=> d!1215499 (= (++!11506 p!2988 suffix!1518) lt!1464190)))

(declare-fun b!4093595 () Bool)

(assert (=> b!4093595 (= e!2540396 (Cons!43888 (h!49308 p!2988) (++!11506 (t!339011 p!2988) suffix!1518)))))

(assert (= (and d!1215499 c!705519) b!4093594))

(assert (= (and d!1215499 (not c!705519)) b!4093595))

(assert (= (and d!1215499 res!1673219) b!4093596))

(assert (= (and b!4093596 res!1673218) b!4093597))

(declare-fun m!4700613 () Bool)

(assert (=> b!4093596 m!4700613))

(assert (=> b!4093596 m!4700427))

(declare-fun m!4700615 () Bool)

(assert (=> b!4093596 m!4700615))

(declare-fun m!4700617 () Bool)

(assert (=> d!1215499 m!4700617))

(declare-fun m!4700619 () Bool)

(assert (=> d!1215499 m!4700619))

(declare-fun m!4700621 () Bool)

(assert (=> d!1215499 m!4700621))

(declare-fun m!4700623 () Bool)

(assert (=> b!4093595 m!4700623))

(assert (=> b!4093396 d!1215499))

(declare-fun b!4093616 () Bool)

(declare-fun e!2540403 () Bool)

(declare-fun e!2540404 () Bool)

(assert (=> b!4093616 (= e!2540403 e!2540404)))

(declare-fun res!1673235 () Bool)

(assert (=> b!4093616 (=> (not res!1673235) (not e!2540404))))

(declare-fun lt!1464205 () Option!9506)

(declare-fun isDefined!7196 (Option!9506) Bool)

(assert (=> b!4093616 (= res!1673235 (isDefined!7196 lt!1464205))))

(declare-fun b!4093617 () Bool)

(declare-fun res!1673236 () Bool)

(assert (=> b!4093617 (=> (not res!1673236) (not e!2540404))))

(assert (=> b!4093617 (= res!1673236 (matchR!5946 (regex!7100 (rule!10246 (_1!24544 (get!14394 lt!1464205)))) (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464205))))))))

(declare-fun b!4093618 () Bool)

(declare-fun e!2540405 () Option!9506)

(declare-fun lt!1464204 () Option!9506)

(declare-fun lt!1464202 () Option!9506)

(assert (=> b!4093618 (= e!2540405 (ite (and ((_ is None!9505) lt!1464204) ((_ is None!9505) lt!1464202)) None!9505 (ite ((_ is None!9505) lt!1464202) lt!1464204 (ite ((_ is None!9505) lt!1464204) lt!1464202 (ite (>= (size!32786 (_1!24544 (v!39997 lt!1464204))) (size!32786 (_1!24544 (v!39997 lt!1464202)))) lt!1464204 lt!1464202)))))))

(declare-fun call!289354 () Option!9506)

(assert (=> b!4093618 (= lt!1464204 call!289354)))

(assert (=> b!4093618 (= lt!1464202 (maxPrefix!3979 thiss!26199 (t!339012 rules!3870) input!3411))))

(declare-fun b!4093619 () Bool)

(declare-fun res!1673240 () Bool)

(assert (=> b!4093619 (=> (not res!1673240) (not e!2540404))))

(assert (=> b!4093619 (= res!1673240 (= (value!223002 (_1!24544 (get!14394 lt!1464205))) (apply!10283 (transformation!7100 (rule!10246 (_1!24544 (get!14394 lt!1464205)))) (seqFromList!5317 (originalCharacters!7694 (_1!24544 (get!14394 lt!1464205)))))))))

(declare-fun b!4093620 () Bool)

(declare-fun res!1673239 () Bool)

(assert (=> b!4093620 (=> (not res!1673239) (not e!2540404))))

(assert (=> b!4093620 (= res!1673239 (= (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464205)))) (originalCharacters!7694 (_1!24544 (get!14394 lt!1464205)))))))

(declare-fun b!4093621 () Bool)

(declare-fun res!1673238 () Bool)

(assert (=> b!4093621 (=> (not res!1673238) (not e!2540404))))

(assert (=> b!4093621 (= res!1673238 (= (++!11506 (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464205)))) (_2!24544 (get!14394 lt!1464205))) input!3411))))

(declare-fun b!4093622 () Bool)

(declare-fun res!1673234 () Bool)

(assert (=> b!4093622 (=> (not res!1673234) (not e!2540404))))

(assert (=> b!4093622 (= res!1673234 (< (size!32787 (_2!24544 (get!14394 lt!1464205))) (size!32787 input!3411)))))

(declare-fun bm!289349 () Bool)

(assert (=> bm!289349 (= call!289354 (maxPrefixOneRule!2961 thiss!26199 (h!49309 rules!3870) input!3411))))

(declare-fun d!1215501 () Bool)

(assert (=> d!1215501 e!2540403))

(declare-fun res!1673237 () Bool)

(assert (=> d!1215501 (=> res!1673237 e!2540403)))

(assert (=> d!1215501 (= res!1673237 (isEmpty!26253 lt!1464205))))

(assert (=> d!1215501 (= lt!1464205 e!2540405)))

(declare-fun c!705522 () Bool)

(assert (=> d!1215501 (= c!705522 (and ((_ is Cons!43889) rules!3870) ((_ is Nil!43889) (t!339012 rules!3870))))))

(declare-fun lt!1464201 () Unit!63421)

(declare-fun lt!1464203 () Unit!63421)

(assert (=> d!1215501 (= lt!1464201 lt!1464203)))

(declare-fun isPrefix!4147 (List!44012 List!44012) Bool)

(assert (=> d!1215501 (isPrefix!4147 input!3411 input!3411)))

(declare-fun lemmaIsPrefixRefl!2698 (List!44012 List!44012) Unit!63421)

(assert (=> d!1215501 (= lt!1464203 (lemmaIsPrefixRefl!2698 input!3411 input!3411))))

(declare-fun rulesValidInductive!2629 (LexerInterface!6689 List!44013) Bool)

(assert (=> d!1215501 (rulesValidInductive!2629 thiss!26199 rules!3870)))

(assert (=> d!1215501 (= (maxPrefix!3979 thiss!26199 rules!3870 input!3411) lt!1464205)))

(declare-fun b!4093623 () Bool)

(assert (=> b!4093623 (= e!2540405 call!289354)))

(declare-fun b!4093624 () Bool)

(assert (=> b!4093624 (= e!2540404 (contains!8783 rules!3870 (rule!10246 (_1!24544 (get!14394 lt!1464205)))))))

(assert (= (and d!1215501 c!705522) b!4093623))

(assert (= (and d!1215501 (not c!705522)) b!4093618))

(assert (= (or b!4093623 b!4093618) bm!289349))

(assert (= (and d!1215501 (not res!1673237)) b!4093616))

(assert (= (and b!4093616 res!1673235) b!4093620))

(assert (= (and b!4093620 res!1673239) b!4093622))

(assert (= (and b!4093622 res!1673234) b!4093621))

(assert (= (and b!4093621 res!1673238) b!4093619))

(assert (= (and b!4093619 res!1673240) b!4093617))

(assert (= (and b!4093617 res!1673236) b!4093624))

(assert (=> bm!289349 m!4700431))

(declare-fun m!4700625 () Bool)

(assert (=> b!4093618 m!4700625))

(declare-fun m!4700627 () Bool)

(assert (=> b!4093620 m!4700627))

(declare-fun m!4700629 () Bool)

(assert (=> b!4093620 m!4700629))

(assert (=> b!4093620 m!4700629))

(declare-fun m!4700631 () Bool)

(assert (=> b!4093620 m!4700631))

(assert (=> b!4093617 m!4700627))

(assert (=> b!4093617 m!4700629))

(assert (=> b!4093617 m!4700629))

(assert (=> b!4093617 m!4700631))

(assert (=> b!4093617 m!4700631))

(declare-fun m!4700633 () Bool)

(assert (=> b!4093617 m!4700633))

(assert (=> b!4093619 m!4700627))

(declare-fun m!4700635 () Bool)

(assert (=> b!4093619 m!4700635))

(assert (=> b!4093619 m!4700635))

(declare-fun m!4700637 () Bool)

(assert (=> b!4093619 m!4700637))

(assert (=> b!4093624 m!4700627))

(declare-fun m!4700639 () Bool)

(assert (=> b!4093624 m!4700639))

(declare-fun m!4700641 () Bool)

(assert (=> b!4093616 m!4700641))

(assert (=> b!4093621 m!4700627))

(assert (=> b!4093621 m!4700629))

(assert (=> b!4093621 m!4700629))

(assert (=> b!4093621 m!4700631))

(assert (=> b!4093621 m!4700631))

(declare-fun m!4700643 () Bool)

(assert (=> b!4093621 m!4700643))

(declare-fun m!4700645 () Bool)

(assert (=> d!1215501 m!4700645))

(declare-fun m!4700647 () Bool)

(assert (=> d!1215501 m!4700647))

(declare-fun m!4700649 () Bool)

(assert (=> d!1215501 m!4700649))

(declare-fun m!4700651 () Bool)

(assert (=> d!1215501 m!4700651))

(assert (=> b!4093622 m!4700627))

(declare-fun m!4700653 () Bool)

(assert (=> b!4093622 m!4700653))

(assert (=> b!4093622 m!4700557))

(assert (=> b!4093407 d!1215501))

(declare-fun d!1215503 () Bool)

(declare-fun lt!1464208 () Int)

(assert (=> d!1215503 (>= lt!1464208 0)))

(declare-fun e!2540408 () Int)

(assert (=> d!1215503 (= lt!1464208 e!2540408)))

(declare-fun c!705525 () Bool)

(assert (=> d!1215503 (= c!705525 ((_ is Nil!43888) p!2988))))

(assert (=> d!1215503 (= (size!32787 p!2988) lt!1464208)))

(declare-fun b!4093629 () Bool)

(assert (=> b!4093629 (= e!2540408 0)))

(declare-fun b!4093630 () Bool)

(assert (=> b!4093630 (= e!2540408 (+ 1 (size!32787 (t!339011 p!2988))))))

(assert (= (and d!1215503 c!705525) b!4093629))

(assert (= (and d!1215503 (not c!705525)) b!4093630))

(declare-fun m!4700655 () Bool)

(assert (=> b!4093630 m!4700655))

(assert (=> b!4093407 d!1215503))

(declare-fun d!1215505 () Bool)

(declare-fun fromListB!2440 (List!44012) BalanceConc!26216)

(assert (=> d!1215505 (= (seqFromList!5317 p!2988) (fromListB!2440 p!2988))))

(declare-fun bs!593460 () Bool)

(assert (= bs!593460 d!1215505))

(declare-fun m!4700657 () Bool)

(assert (=> bs!593460 m!4700657))

(assert (=> b!4093407 d!1215505))

(declare-fun b!4093747 () Bool)

(declare-fun e!2540477 () Bool)

(assert (=> b!4093747 (= e!2540477 true)))

(declare-fun d!1215507 () Bool)

(assert (=> d!1215507 e!2540477))

(assert (= d!1215507 b!4093747))

(declare-fun order!23111 () Int)

(declare-fun lambda!128081 () Int)

(declare-fun order!23109 () Int)

(declare-fun dynLambda!18805 (Int Int) Int)

(declare-fun dynLambda!18806 (Int Int) Int)

(assert (=> b!4093747 (< (dynLambda!18805 order!23109 (toValue!9696 (transformation!7100 r!4213))) (dynLambda!18806 order!23111 lambda!128081))))

(declare-fun order!23113 () Int)

(declare-fun dynLambda!18807 (Int Int) Int)

(assert (=> b!4093747 (< (dynLambda!18807 order!23113 (toChars!9555 (transformation!7100 r!4213))) (dynLambda!18806 order!23111 lambda!128081))))

(declare-fun dynLambda!18808 (Int BalanceConc!26216) TokenValue!7330)

(assert (=> d!1215507 (= (list!16292 (dynLambda!18804 (toChars!9555 (transformation!7100 r!4213)) (dynLambda!18808 (toValue!9696 (transformation!7100 r!4213)) lt!1464131))) (list!16292 lt!1464131))))

(declare-fun lt!1464239 () Unit!63421)

(declare-fun ForallOf!893 (Int BalanceConc!26216) Unit!63421)

(assert (=> d!1215507 (= lt!1464239 (ForallOf!893 lambda!128081 lt!1464131))))

(assert (=> d!1215507 (= (lemmaSemiInverse!2067 (transformation!7100 r!4213) lt!1464131) lt!1464239)))

(declare-fun b_lambda!120119 () Bool)

(assert (=> (not b_lambda!120119) (not d!1215507)))

(declare-fun t!339036 () Bool)

(declare-fun tb!246247 () Bool)

(assert (=> (and b!4093390 (= (toChars!9555 (transformation!7100 r!4213)) (toChars!9555 (transformation!7100 r!4213))) t!339036) tb!246247))

(declare-fun e!2540478 () Bool)

(declare-fun tp!1239133 () Bool)

(declare-fun b!4093748 () Bool)

(assert (=> b!4093748 (= e!2540478 (and (inv!58612 (c!705491 (dynLambda!18804 (toChars!9555 (transformation!7100 r!4213)) (dynLambda!18808 (toValue!9696 (transformation!7100 r!4213)) lt!1464131)))) tp!1239133))))

(declare-fun result!298796 () Bool)

(assert (=> tb!246247 (= result!298796 (and (inv!58613 (dynLambda!18804 (toChars!9555 (transformation!7100 r!4213)) (dynLambda!18808 (toValue!9696 (transformation!7100 r!4213)) lt!1464131))) e!2540478))))

(assert (= tb!246247 b!4093748))

(declare-fun m!4700773 () Bool)

(assert (=> b!4093748 m!4700773))

(declare-fun m!4700775 () Bool)

(assert (=> tb!246247 m!4700775))

(assert (=> d!1215507 t!339036))

(declare-fun b_and!315663 () Bool)

(assert (= b_and!315643 (and (=> t!339036 result!298796) b_and!315663)))

(declare-fun t!339038 () Bool)

(declare-fun tb!246249 () Bool)

(assert (=> (and b!4093398 (= (toChars!9555 (transformation!7100 (h!49309 rules!3870))) (toChars!9555 (transformation!7100 r!4213))) t!339038) tb!246249))

(declare-fun result!298798 () Bool)

(assert (= result!298798 result!298796))

(assert (=> d!1215507 t!339038))

(declare-fun b_and!315665 () Bool)

(assert (= b_and!315645 (and (=> t!339038 result!298798) b_and!315665)))

(declare-fun b_lambda!120121 () Bool)

(assert (=> (not b_lambda!120121) (not d!1215507)))

(declare-fun t!339040 () Bool)

(declare-fun tb!246251 () Bool)

(assert (=> (and b!4093390 (= (toValue!9696 (transformation!7100 r!4213)) (toValue!9696 (transformation!7100 r!4213))) t!339040) tb!246251))

(declare-fun result!298800 () Bool)

(declare-fun inv!21 (TokenValue!7330) Bool)

(assert (=> tb!246251 (= result!298800 (inv!21 (dynLambda!18808 (toValue!9696 (transformation!7100 r!4213)) lt!1464131)))))

(declare-fun m!4700777 () Bool)

(assert (=> tb!246251 m!4700777))

(assert (=> d!1215507 t!339040))

(declare-fun b_and!315667 () Bool)

(assert (= b_and!315631 (and (=> t!339040 result!298800) b_and!315667)))

(declare-fun tb!246253 () Bool)

(declare-fun t!339042 () Bool)

(assert (=> (and b!4093398 (= (toValue!9696 (transformation!7100 (h!49309 rules!3870))) (toValue!9696 (transformation!7100 r!4213))) t!339042) tb!246253))

(declare-fun result!298804 () Bool)

(assert (= result!298804 result!298800))

(assert (=> d!1215507 t!339042))

(declare-fun b_and!315669 () Bool)

(assert (= b_and!315635 (and (=> t!339042 result!298804) b_and!315669)))

(declare-fun m!4700779 () Bool)

(assert (=> d!1215507 m!4700779))

(declare-fun m!4700781 () Bool)

(assert (=> d!1215507 m!4700781))

(declare-fun m!4700783 () Bool)

(assert (=> d!1215507 m!4700783))

(assert (=> d!1215507 m!4700779))

(assert (=> d!1215507 m!4700781))

(declare-fun m!4700785 () Bool)

(assert (=> d!1215507 m!4700785))

(declare-fun m!4700787 () Bool)

(assert (=> d!1215507 m!4700787))

(assert (=> b!4093407 d!1215507))

(declare-fun d!1215541 () Bool)

(assert (=> d!1215541 (= (apply!10283 (transformation!7100 r!4213) lt!1464131) (dynLambda!18808 (toValue!9696 (transformation!7100 r!4213)) lt!1464131))))

(declare-fun b_lambda!120123 () Bool)

(assert (=> (not b_lambda!120123) (not d!1215541)))

(assert (=> d!1215541 t!339040))

(declare-fun b_and!315671 () Bool)

(assert (= b_and!315667 (and (=> t!339040 result!298800) b_and!315671)))

(assert (=> d!1215541 t!339042))

(declare-fun b_and!315673 () Bool)

(assert (= b_and!315669 (and (=> t!339042 result!298804) b_and!315673)))

(assert (=> d!1215541 m!4700779))

(assert (=> b!4093407 d!1215541))

(declare-fun d!1215543 () Bool)

(assert (=> d!1215543 (= (isEmpty!26255 rules!3870) ((_ is Nil!43889) rules!3870))))

(assert (=> b!4093406 d!1215543))

(declare-fun b!4093764 () Bool)

(declare-fun e!2540484 () Bool)

(declare-fun tp!1239144 () Bool)

(declare-fun tp!1239148 () Bool)

(assert (=> b!4093764 (= e!2540484 (and tp!1239144 tp!1239148))))

(assert (=> b!4093405 (= tp!1239081 e!2540484)))

(declare-fun b!4093762 () Bool)

(declare-fun tp!1239147 () Bool)

(declare-fun tp!1239145 () Bool)

(assert (=> b!4093762 (= e!2540484 (and tp!1239147 tp!1239145))))

(declare-fun b!4093761 () Bool)

(assert (=> b!4093761 (= e!2540484 tp_is_empty!21013)))

(declare-fun b!4093763 () Bool)

(declare-fun tp!1239146 () Bool)

(assert (=> b!4093763 (= e!2540484 tp!1239146)))

(assert (= (and b!4093405 ((_ is ElementMatch!12005) (regex!7100 r!4213))) b!4093761))

(assert (= (and b!4093405 ((_ is Concat!19336) (regex!7100 r!4213))) b!4093762))

(assert (= (and b!4093405 ((_ is Star!12005) (regex!7100 r!4213))) b!4093763))

(assert (= (and b!4093405 ((_ is Union!12005) (regex!7100 r!4213))) b!4093764))

(declare-fun b!4093769 () Bool)

(declare-fun e!2540487 () Bool)

(declare-fun tp!1239151 () Bool)

(assert (=> b!4093769 (= e!2540487 (and tp_is_empty!21013 tp!1239151))))

(assert (=> b!4093408 (= tp!1239083 e!2540487)))

(assert (= (and b!4093408 ((_ is Cons!43888) (t!339011 input!3411))) b!4093769))

(declare-fun b!4093780 () Bool)

(declare-fun b_free!114453 () Bool)

(declare-fun b_next!115157 () Bool)

(assert (=> b!4093780 (= b_free!114453 (not b_next!115157))))

(declare-fun t!339044 () Bool)

(declare-fun tb!246255 () Bool)

(assert (=> (and b!4093780 (= (toValue!9696 (transformation!7100 (h!49309 (t!339012 rules!3870)))) (toValue!9696 (transformation!7100 r!4213))) t!339044) tb!246255))

(declare-fun result!298812 () Bool)

(assert (= result!298812 result!298800))

(assert (=> d!1215507 t!339044))

(assert (=> d!1215541 t!339044))

(declare-fun b_and!315675 () Bool)

(declare-fun tp!1239161 () Bool)

(assert (=> b!4093780 (= tp!1239161 (and (=> t!339044 result!298812) b_and!315675))))

(declare-fun b_free!114455 () Bool)

(declare-fun b_next!115159 () Bool)

(assert (=> b!4093780 (= b_free!114455 (not b_next!115159))))

(declare-fun tb!246257 () Bool)

(declare-fun t!339046 () Bool)

(assert (=> (and b!4093780 (= (toChars!9555 (transformation!7100 (h!49309 (t!339012 rules!3870)))) (toChars!9555 (transformation!7100 (rule!10246 lt!1464134)))) t!339046) tb!246257))

(declare-fun result!298814 () Bool)

(assert (= result!298814 result!298768))

(assert (=> b!4093514 t!339046))

(declare-fun tb!246259 () Bool)

(declare-fun t!339048 () Bool)

(assert (=> (and b!4093780 (= (toChars!9555 (transformation!7100 (h!49309 (t!339012 rules!3870)))) (toChars!9555 (transformation!7100 r!4213))) t!339048) tb!246259))

(declare-fun result!298816 () Bool)

(assert (= result!298816 result!298796))

(assert (=> d!1215507 t!339048))

(declare-fun tp!1239163 () Bool)

(declare-fun b_and!315677 () Bool)

(assert (=> b!4093780 (= tp!1239163 (and (=> t!339046 result!298814) (=> t!339048 result!298816) b_and!315677))))

(declare-fun e!2540497 () Bool)

(assert (=> b!4093780 (= e!2540497 (and tp!1239161 tp!1239163))))

(declare-fun e!2540499 () Bool)

(declare-fun b!4093779 () Bool)

(declare-fun tp!1239160 () Bool)

(assert (=> b!4093779 (= e!2540499 (and tp!1239160 (inv!58605 (tag!7960 (h!49309 (t!339012 rules!3870)))) (inv!58609 (transformation!7100 (h!49309 (t!339012 rules!3870)))) e!2540497))))

(declare-fun b!4093778 () Bool)

(declare-fun e!2540496 () Bool)

(declare-fun tp!1239162 () Bool)

(assert (=> b!4093778 (= e!2540496 (and e!2540499 tp!1239162))))

(assert (=> b!4093392 (= tp!1239080 e!2540496)))

(assert (= b!4093779 b!4093780))

(assert (= b!4093778 b!4093779))

(assert (= (and b!4093392 ((_ is Cons!43889) (t!339012 rules!3870))) b!4093778))

(declare-fun m!4700789 () Bool)

(assert (=> b!4093779 m!4700789))

(declare-fun m!4700791 () Bool)

(assert (=> b!4093779 m!4700791))

(declare-fun b!4093781 () Bool)

(declare-fun e!2540500 () Bool)

(declare-fun tp!1239164 () Bool)

(assert (=> b!4093781 (= e!2540500 (and tp_is_empty!21013 tp!1239164))))

(assert (=> b!4093402 (= tp!1239082 e!2540500)))

(assert (= (and b!4093402 ((_ is Cons!43888) (t!339011 suffix!1518))) b!4093781))

(declare-fun b!4093782 () Bool)

(declare-fun e!2540501 () Bool)

(declare-fun tp!1239165 () Bool)

(assert (=> b!4093782 (= e!2540501 (and tp_is_empty!21013 tp!1239165))))

(assert (=> b!4093397 (= tp!1239088 e!2540501)))

(assert (= (and b!4093397 ((_ is Cons!43888) (t!339011 p!2988))) b!4093782))

(declare-fun b!4093786 () Bool)

(declare-fun e!2540502 () Bool)

(declare-fun tp!1239166 () Bool)

(declare-fun tp!1239170 () Bool)

(assert (=> b!4093786 (= e!2540502 (and tp!1239166 tp!1239170))))

(assert (=> b!4093401 (= tp!1239087 e!2540502)))

(declare-fun b!4093784 () Bool)

(declare-fun tp!1239169 () Bool)

(declare-fun tp!1239167 () Bool)

(assert (=> b!4093784 (= e!2540502 (and tp!1239169 tp!1239167))))

(declare-fun b!4093783 () Bool)

(assert (=> b!4093783 (= e!2540502 tp_is_empty!21013)))

(declare-fun b!4093785 () Bool)

(declare-fun tp!1239168 () Bool)

(assert (=> b!4093785 (= e!2540502 tp!1239168)))

(assert (= (and b!4093401 ((_ is ElementMatch!12005) (regex!7100 (h!49309 rules!3870)))) b!4093783))

(assert (= (and b!4093401 ((_ is Concat!19336) (regex!7100 (h!49309 rules!3870)))) b!4093784))

(assert (= (and b!4093401 ((_ is Star!12005) (regex!7100 (h!49309 rules!3870)))) b!4093785))

(assert (= (and b!4093401 ((_ is Union!12005) (regex!7100 (h!49309 rules!3870)))) b!4093786))

(declare-fun b_lambda!120125 () Bool)

(assert (= b_lambda!120121 (or (and b!4093390 b_free!114441) (and b!4093398 b_free!114445 (= (toValue!9696 (transformation!7100 (h!49309 rules!3870))) (toValue!9696 (transformation!7100 r!4213)))) (and b!4093780 b_free!114453 (= (toValue!9696 (transformation!7100 (h!49309 (t!339012 rules!3870)))) (toValue!9696 (transformation!7100 r!4213)))) b_lambda!120125)))

(declare-fun b_lambda!120127 () Bool)

(assert (= b_lambda!120119 (or (and b!4093390 b_free!114443) (and b!4093398 b_free!114447 (= (toChars!9555 (transformation!7100 (h!49309 rules!3870))) (toChars!9555 (transformation!7100 r!4213)))) (and b!4093780 b_free!114455 (= (toChars!9555 (transformation!7100 (h!49309 (t!339012 rules!3870)))) (toChars!9555 (transformation!7100 r!4213)))) b_lambda!120127)))

(declare-fun b_lambda!120129 () Bool)

(assert (= b_lambda!120123 (or (and b!4093390 b_free!114441) (and b!4093398 b_free!114445 (= (toValue!9696 (transformation!7100 (h!49309 rules!3870))) (toValue!9696 (transformation!7100 r!4213)))) (and b!4093780 b_free!114453 (= (toValue!9696 (transformation!7100 (h!49309 (t!339012 rules!3870)))) (toValue!9696 (transformation!7100 r!4213)))) b_lambda!120129)))

(check-sat (not b!4093497) (not d!1215461) (not tb!246251) (not b!4093515) (not d!1215487) (not d!1215483) (not b!4093622) (not b!4093763) (not b_next!115157) (not b!4093764) (not b!4093576) (not d!1215501) b_and!315671 (not b!4093585) (not b!4093596) (not b!4093784) (not b!4093579) (not b!4093630) (not bm!289349) (not b!4093778) (not b_next!115145) (not b!4093583) (not d!1215477) (not tb!246229) (not b!4093621) (not b!4093520) (not b_next!115159) (not b!4093748) (not b_lambda!120127) (not b!4093779) (not b_next!115151) (not b!4093769) (not b!4093584) (not b!4093498) (not d!1215505) (not d!1215497) (not b!4093624) b_and!315665 (not b!4093782) (not b!4093617) (not tb!246247) (not b!4093572) (not d!1215473) (not d!1215459) (not d!1215507) (not b!4093785) (not b_lambda!120125) b_and!315663 (not d!1215479) (not b!4093495) b_and!315675 (not b!4093577) (not bm!289343) (not b_lambda!120129) (not b!4093781) (not b!4093619) (not b_lambda!120105) (not b_next!115149) b_and!315677 (not b!4093411) (not b!4093786) (not b_next!115147) (not b!4093618) (not d!1215489) (not b!4093574) (not d!1215499) b_and!315673 (not b!4093595) (not b!4093762) (not d!1215493) (not b!4093493) (not b!4093491) (not d!1215475) (not b!4093573) (not b!4093502) (not b!4093526) (not b!4093580) tp_is_empty!21013 (not b!4093508) (not b!4093616) (not b!4093578) (not b!4093514) (not b!4093620))
(check-sat (not b_next!115157) b_and!315671 (not b_next!115145) (not b_next!115159) (not b_next!115151) b_and!315665 b_and!315663 b_and!315675 (not b_next!115147) b_and!315673 (not b_next!115149) b_and!315677)
(get-model)

(declare-fun d!1215571 () Bool)

(assert (=> d!1215571 (= (isDefined!7196 lt!1464205) (not (isEmpty!26253 lt!1464205)))))

(declare-fun bs!593466 () Bool)

(assert (= bs!593466 d!1215571))

(assert (=> bs!593466 m!4700645))

(assert (=> b!4093616 d!1215571))

(declare-fun d!1215573 () Bool)

(declare-fun e!2540526 () Bool)

(assert (=> d!1215573 e!2540526))

(declare-fun res!1673301 () Bool)

(assert (=> d!1215573 (=> (not res!1673301) (not e!2540526))))

(declare-fun lt!1464251 () BalanceConc!26216)

(assert (=> d!1215573 (= res!1673301 (= (list!16292 lt!1464251) p!2988))))

(declare-fun fromList!886 (List!44012) Conc!13311)

(assert (=> d!1215573 (= lt!1464251 (BalanceConc!26217 (fromList!886 p!2988)))))

(assert (=> d!1215573 (= (fromListB!2440 p!2988) lt!1464251)))

(declare-fun b!4093827 () Bool)

(declare-fun isBalanced!3707 (Conc!13311) Bool)

(assert (=> b!4093827 (= e!2540526 (isBalanced!3707 (fromList!886 p!2988)))))

(assert (= (and d!1215573 res!1673301) b!4093827))

(declare-fun m!4700849 () Bool)

(assert (=> d!1215573 m!4700849))

(declare-fun m!4700851 () Bool)

(assert (=> d!1215573 m!4700851))

(assert (=> b!4093827 m!4700851))

(assert (=> b!4093827 m!4700851))

(declare-fun m!4700853 () Bool)

(assert (=> b!4093827 m!4700853))

(assert (=> d!1215505 d!1215573))

(declare-fun d!1215579 () Bool)

(assert (=> d!1215579 (= (head!8653 p!2988) (h!49308 p!2988))))

(assert (=> b!4093497 d!1215579))

(declare-fun d!1215581 () Bool)

(assert (=> d!1215581 (= (get!14394 lt!1464180) (v!39997 lt!1464180))))

(assert (=> b!4093577 d!1215581))

(declare-fun d!1215583 () Bool)

(assert (=> d!1215583 (= (isEmpty!26254 (tail!6387 p!2988)) ((_ is Nil!43888) (tail!6387 p!2988)))))

(assert (=> b!4093495 d!1215583))

(declare-fun d!1215585 () Bool)

(assert (=> d!1215585 (= (tail!6387 p!2988) (t!339011 p!2988))))

(assert (=> b!4093495 d!1215585))

(declare-fun b!4093834 () Bool)

(declare-fun res!1673304 () Bool)

(declare-fun e!2540529 () Bool)

(assert (=> b!4093834 (=> (not res!1673304) (not e!2540529))))

(declare-fun lt!1464253 () List!44012)

(assert (=> b!4093834 (= res!1673304 (= (size!32787 lt!1464253) (+ (size!32787 (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464205))))) (size!32787 (_2!24544 (get!14394 lt!1464205))))))))

(declare-fun b!4093832 () Bool)

(declare-fun e!2540530 () List!44012)

(assert (=> b!4093832 (= e!2540530 (_2!24544 (get!14394 lt!1464205)))))

(declare-fun b!4093835 () Bool)

(assert (=> b!4093835 (= e!2540529 (or (not (= (_2!24544 (get!14394 lt!1464205)) Nil!43888)) (= lt!1464253 (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464205)))))))))

(declare-fun d!1215587 () Bool)

(assert (=> d!1215587 e!2540529))

(declare-fun res!1673305 () Bool)

(assert (=> d!1215587 (=> (not res!1673305) (not e!2540529))))

(assert (=> d!1215587 (= res!1673305 (= (content!6771 lt!1464253) ((_ map or) (content!6771 (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464205))))) (content!6771 (_2!24544 (get!14394 lt!1464205))))))))

(assert (=> d!1215587 (= lt!1464253 e!2540530)))

(declare-fun c!705551 () Bool)

(assert (=> d!1215587 (= c!705551 ((_ is Nil!43888) (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464205))))))))

(assert (=> d!1215587 (= (++!11506 (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464205)))) (_2!24544 (get!14394 lt!1464205))) lt!1464253)))

(declare-fun b!4093833 () Bool)

(assert (=> b!4093833 (= e!2540530 (Cons!43888 (h!49308 (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464205))))) (++!11506 (t!339011 (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464205))))) (_2!24544 (get!14394 lt!1464205)))))))

(assert (= (and d!1215587 c!705551) b!4093832))

(assert (= (and d!1215587 (not c!705551)) b!4093833))

(assert (= (and d!1215587 res!1673305) b!4093834))

(assert (= (and b!4093834 res!1673304) b!4093835))

(declare-fun m!4700867 () Bool)

(assert (=> b!4093834 m!4700867))

(assert (=> b!4093834 m!4700631))

(declare-fun m!4700869 () Bool)

(assert (=> b!4093834 m!4700869))

(assert (=> b!4093834 m!4700653))

(declare-fun m!4700871 () Bool)

(assert (=> d!1215587 m!4700871))

(assert (=> d!1215587 m!4700631))

(declare-fun m!4700873 () Bool)

(assert (=> d!1215587 m!4700873))

(declare-fun m!4700875 () Bool)

(assert (=> d!1215587 m!4700875))

(declare-fun m!4700879 () Bool)

(assert (=> b!4093833 m!4700879))

(assert (=> b!4093621 d!1215587))

(declare-fun d!1215593 () Bool)

(declare-fun list!16293 (Conc!13311) List!44012)

(assert (=> d!1215593 (= (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464205)))) (list!16293 (c!705491 (charsOf!4860 (_1!24544 (get!14394 lt!1464205))))))))

(declare-fun bs!593469 () Bool)

(assert (= bs!593469 d!1215593))

(declare-fun m!4700881 () Bool)

(assert (=> bs!593469 m!4700881))

(assert (=> b!4093621 d!1215593))

(declare-fun d!1215597 () Bool)

(declare-fun lt!1464257 () BalanceConc!26216)

(assert (=> d!1215597 (= (list!16292 lt!1464257) (originalCharacters!7694 (_1!24544 (get!14394 lt!1464205))))))

(assert (=> d!1215597 (= lt!1464257 (dynLambda!18804 (toChars!9555 (transformation!7100 (rule!10246 (_1!24544 (get!14394 lt!1464205))))) (value!223002 (_1!24544 (get!14394 lt!1464205)))))))

(assert (=> d!1215597 (= (charsOf!4860 (_1!24544 (get!14394 lt!1464205))) lt!1464257)))

(declare-fun b_lambda!120135 () Bool)

(assert (=> (not b_lambda!120135) (not d!1215597)))

(declare-fun t!339058 () Bool)

(declare-fun tb!246267 () Bool)

(assert (=> (and b!4093390 (= (toChars!9555 (transformation!7100 r!4213)) (toChars!9555 (transformation!7100 (rule!10246 (_1!24544 (get!14394 lt!1464205)))))) t!339058) tb!246267))

(declare-fun b!4093838 () Bool)

(declare-fun e!2540532 () Bool)

(declare-fun tp!1239172 () Bool)

(assert (=> b!4093838 (= e!2540532 (and (inv!58612 (c!705491 (dynLambda!18804 (toChars!9555 (transformation!7100 (rule!10246 (_1!24544 (get!14394 lt!1464205))))) (value!223002 (_1!24544 (get!14394 lt!1464205)))))) tp!1239172))))

(declare-fun result!298824 () Bool)

(assert (=> tb!246267 (= result!298824 (and (inv!58613 (dynLambda!18804 (toChars!9555 (transformation!7100 (rule!10246 (_1!24544 (get!14394 lt!1464205))))) (value!223002 (_1!24544 (get!14394 lt!1464205))))) e!2540532))))

(assert (= tb!246267 b!4093838))

(declare-fun m!4700883 () Bool)

(assert (=> b!4093838 m!4700883))

(declare-fun m!4700885 () Bool)

(assert (=> tb!246267 m!4700885))

(assert (=> d!1215597 t!339058))

(declare-fun b_and!315685 () Bool)

(assert (= b_and!315663 (and (=> t!339058 result!298824) b_and!315685)))

(declare-fun t!339060 () Bool)

(declare-fun tb!246269 () Bool)

(assert (=> (and b!4093398 (= (toChars!9555 (transformation!7100 (h!49309 rules!3870))) (toChars!9555 (transformation!7100 (rule!10246 (_1!24544 (get!14394 lt!1464205)))))) t!339060) tb!246269))

(declare-fun result!298826 () Bool)

(assert (= result!298826 result!298824))

(assert (=> d!1215597 t!339060))

(declare-fun b_and!315687 () Bool)

(assert (= b_and!315665 (and (=> t!339060 result!298826) b_and!315687)))

(declare-fun tb!246271 () Bool)

(declare-fun t!339062 () Bool)

(assert (=> (and b!4093780 (= (toChars!9555 (transformation!7100 (h!49309 (t!339012 rules!3870)))) (toChars!9555 (transformation!7100 (rule!10246 (_1!24544 (get!14394 lt!1464205)))))) t!339062) tb!246271))

(declare-fun result!298828 () Bool)

(assert (= result!298828 result!298824))

(assert (=> d!1215597 t!339062))

(declare-fun b_and!315689 () Bool)

(assert (= b_and!315677 (and (=> t!339062 result!298828) b_and!315689)))

(declare-fun m!4700887 () Bool)

(assert (=> d!1215597 m!4700887))

(declare-fun m!4700889 () Bool)

(assert (=> d!1215597 m!4700889))

(assert (=> b!4093621 d!1215597))

(declare-fun d!1215599 () Bool)

(assert (=> d!1215599 (= (get!14394 lt!1464205) (v!39997 lt!1464205))))

(assert (=> b!4093621 d!1215599))

(declare-fun d!1215601 () Bool)

(assert (=> d!1215601 (= (list!16292 (dynLambda!18804 (toChars!9555 (transformation!7100 (rule!10246 lt!1464134))) (value!223002 lt!1464134))) (list!16293 (c!705491 (dynLambda!18804 (toChars!9555 (transformation!7100 (rule!10246 lt!1464134))) (value!223002 lt!1464134)))))))

(declare-fun bs!593470 () Bool)

(assert (= bs!593470 d!1215601))

(declare-fun m!4700891 () Bool)

(assert (=> bs!593470 m!4700891))

(assert (=> b!4093514 d!1215601))

(declare-fun d!1215603 () Bool)

(assert (=> d!1215603 true))

(declare-fun order!23115 () Int)

(declare-fun lambda!128084 () Int)

(declare-fun dynLambda!18809 (Int Int) Int)

(assert (=> d!1215603 (< (dynLambda!18805 order!23109 (toValue!9696 (transformation!7100 (h!49309 rules!3870)))) (dynLambda!18809 order!23115 lambda!128084))))

(declare-fun Forall2!1117 (Int) Bool)

(assert (=> d!1215603 (= (equivClasses!2952 (toChars!9555 (transformation!7100 (h!49309 rules!3870))) (toValue!9696 (transformation!7100 (h!49309 rules!3870)))) (Forall2!1117 lambda!128084))))

(declare-fun bs!593471 () Bool)

(assert (= bs!593471 d!1215603))

(declare-fun m!4700893 () Bool)

(assert (=> bs!593471 m!4700893))

(assert (=> b!4093584 d!1215603))

(assert (=> b!4093620 d!1215593))

(assert (=> b!4093620 d!1215597))

(assert (=> b!4093620 d!1215599))

(declare-fun d!1215605 () Bool)

(assert (=> d!1215605 (= (isEmpty!26253 lt!1464180) (not ((_ is Some!9505) lt!1464180)))))

(assert (=> d!1215483 d!1215605))

(declare-fun d!1215607 () Bool)

(assert (=> d!1215607 (= (isEmpty!26254 (_1!24546 lt!1464182)) ((_ is Nil!43888) (_1!24546 lt!1464182)))))

(assert (=> d!1215483 d!1215607))

(declare-fun d!1215609 () Bool)

(declare-fun lt!1464278 () tuple2!42824)

(assert (=> d!1215609 (= (++!11506 (_1!24546 lt!1464278) (_2!24546 lt!1464278)) input!3411)))

(declare-fun sizeTr!293 (List!44012 Int) Int)

(assert (=> d!1215609 (= lt!1464278 (findLongestMatchInner!1466 (regex!7100 (h!49309 rules!3870)) Nil!43888 0 input!3411 input!3411 (sizeTr!293 input!3411 0)))))

(declare-fun lt!1464277 () Unit!63421)

(declare-fun lt!1464282 () Unit!63421)

(assert (=> d!1215609 (= lt!1464277 lt!1464282)))

(declare-fun lt!1464276 () List!44012)

(declare-fun lt!1464280 () Int)

(assert (=> d!1215609 (= (sizeTr!293 lt!1464276 lt!1464280) (+ (size!32787 lt!1464276) lt!1464280))))

(declare-fun lemmaSizeTrEqualsSize!292 (List!44012 Int) Unit!63421)

(assert (=> d!1215609 (= lt!1464282 (lemmaSizeTrEqualsSize!292 lt!1464276 lt!1464280))))

(assert (=> d!1215609 (= lt!1464280 0)))

(assert (=> d!1215609 (= lt!1464276 Nil!43888)))

(declare-fun lt!1464279 () Unit!63421)

(declare-fun lt!1464283 () Unit!63421)

(assert (=> d!1215609 (= lt!1464279 lt!1464283)))

(declare-fun lt!1464281 () Int)

(assert (=> d!1215609 (= (sizeTr!293 input!3411 lt!1464281) (+ (size!32787 input!3411) lt!1464281))))

(assert (=> d!1215609 (= lt!1464283 (lemmaSizeTrEqualsSize!292 input!3411 lt!1464281))))

(assert (=> d!1215609 (= lt!1464281 0)))

(assert (=> d!1215609 (validRegex!5442 (regex!7100 (h!49309 rules!3870)))))

(assert (=> d!1215609 (= (findLongestMatch!1379 (regex!7100 (h!49309 rules!3870)) input!3411) lt!1464278)))

(declare-fun bs!593475 () Bool)

(assert (= bs!593475 d!1215609))

(assert (=> bs!593475 m!4700557))

(declare-fun m!4700929 () Bool)

(assert (=> bs!593475 m!4700929))

(declare-fun m!4700931 () Bool)

(assert (=> bs!593475 m!4700931))

(declare-fun m!4700933 () Bool)

(assert (=> bs!593475 m!4700933))

(assert (=> bs!593475 m!4700931))

(declare-fun m!4700935 () Bool)

(assert (=> bs!593475 m!4700935))

(declare-fun m!4700937 () Bool)

(assert (=> bs!593475 m!4700937))

(declare-fun m!4700939 () Bool)

(assert (=> bs!593475 m!4700939))

(declare-fun m!4700941 () Bool)

(assert (=> bs!593475 m!4700941))

(declare-fun m!4700943 () Bool)

(assert (=> bs!593475 m!4700943))

(declare-fun m!4700945 () Bool)

(assert (=> bs!593475 m!4700945))

(assert (=> d!1215483 d!1215609))

(declare-fun d!1215627 () Bool)

(declare-fun res!1673325 () Bool)

(declare-fun e!2540560 () Bool)

(assert (=> d!1215627 (=> (not res!1673325) (not e!2540560))))

(assert (=> d!1215627 (= res!1673325 (validRegex!5442 (regex!7100 (h!49309 rules!3870))))))

(assert (=> d!1215627 (= (ruleValid!3020 thiss!26199 (h!49309 rules!3870)) e!2540560)))

(declare-fun b!4093875 () Bool)

(declare-fun res!1673326 () Bool)

(assert (=> b!4093875 (=> (not res!1673326) (not e!2540560))))

(assert (=> b!4093875 (= res!1673326 (not (nullable!4242 (regex!7100 (h!49309 rules!3870)))))))

(declare-fun b!4093876 () Bool)

(assert (=> b!4093876 (= e!2540560 (not (= (tag!7960 (h!49309 rules!3870)) (String!50401 ""))))))

(assert (= (and d!1215627 res!1673325) b!4093875))

(assert (= (and b!4093875 res!1673326) b!4093876))

(assert (=> d!1215627 m!4700939))

(declare-fun m!4700947 () Bool)

(assert (=> b!4093875 m!4700947))

(assert (=> d!1215483 d!1215627))

(declare-fun d!1215629 () Bool)

(declare-fun lt!1464284 () Int)

(assert (=> d!1215629 (>= lt!1464284 0)))

(declare-fun e!2540561 () Int)

(assert (=> d!1215629 (= lt!1464284 e!2540561)))

(declare-fun c!705560 () Bool)

(assert (=> d!1215629 (= c!705560 ((_ is Nil!43888) (_2!24544 (get!14394 lt!1464180))))))

(assert (=> d!1215629 (= (size!32787 (_2!24544 (get!14394 lt!1464180))) lt!1464284)))

(declare-fun b!4093877 () Bool)

(assert (=> b!4093877 (= e!2540561 0)))

(declare-fun b!4093878 () Bool)

(assert (=> b!4093878 (= e!2540561 (+ 1 (size!32787 (t!339011 (_2!24544 (get!14394 lt!1464180))))))))

(assert (= (and d!1215629 c!705560) b!4093877))

(assert (= (and d!1215629 (not c!705560)) b!4093878))

(declare-fun m!4700949 () Bool)

(assert (=> b!4093878 m!4700949))

(assert (=> b!4093579 d!1215629))

(assert (=> b!4093579 d!1215581))

(declare-fun d!1215631 () Bool)

(declare-fun lt!1464285 () Int)

(assert (=> d!1215631 (>= lt!1464285 0)))

(declare-fun e!2540562 () Int)

(assert (=> d!1215631 (= lt!1464285 e!2540562)))

(declare-fun c!705561 () Bool)

(assert (=> d!1215631 (= c!705561 ((_ is Nil!43888) input!3411))))

(assert (=> d!1215631 (= (size!32787 input!3411) lt!1464285)))

(declare-fun b!4093879 () Bool)

(assert (=> b!4093879 (= e!2540562 0)))

(declare-fun b!4093880 () Bool)

(assert (=> b!4093880 (= e!2540562 (+ 1 (size!32787 (t!339011 input!3411))))))

(assert (= (and d!1215631 c!705561) b!4093879))

(assert (= (and d!1215631 (not c!705561)) b!4093880))

(declare-fun m!4700951 () Bool)

(assert (=> b!4093880 m!4700951))

(assert (=> b!4093579 d!1215631))

(declare-fun b!4093881 () Bool)

(declare-fun e!2540563 () Bool)

(declare-fun e!2540564 () Bool)

(assert (=> b!4093881 (= e!2540563 e!2540564)))

(declare-fun res!1673328 () Bool)

(assert (=> b!4093881 (=> (not res!1673328) (not e!2540564))))

(declare-fun lt!1464290 () Option!9506)

(assert (=> b!4093881 (= res!1673328 (isDefined!7196 lt!1464290))))

(declare-fun b!4093882 () Bool)

(declare-fun res!1673329 () Bool)

(assert (=> b!4093882 (=> (not res!1673329) (not e!2540564))))

(assert (=> b!4093882 (= res!1673329 (matchR!5946 (regex!7100 (rule!10246 (_1!24544 (get!14394 lt!1464290)))) (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464290))))))))

(declare-fun b!4093883 () Bool)

(declare-fun e!2540565 () Option!9506)

(declare-fun lt!1464289 () Option!9506)

(declare-fun lt!1464287 () Option!9506)

(assert (=> b!4093883 (= e!2540565 (ite (and ((_ is None!9505) lt!1464289) ((_ is None!9505) lt!1464287)) None!9505 (ite ((_ is None!9505) lt!1464287) lt!1464289 (ite ((_ is None!9505) lt!1464289) lt!1464287 (ite (>= (size!32786 (_1!24544 (v!39997 lt!1464289))) (size!32786 (_1!24544 (v!39997 lt!1464287)))) lt!1464289 lt!1464287)))))))

(declare-fun call!289365 () Option!9506)

(assert (=> b!4093883 (= lt!1464289 call!289365)))

(assert (=> b!4093883 (= lt!1464287 (maxPrefix!3979 thiss!26199 (t!339012 (t!339012 rules!3870)) input!3411))))

(declare-fun b!4093884 () Bool)

(declare-fun res!1673333 () Bool)

(assert (=> b!4093884 (=> (not res!1673333) (not e!2540564))))

(assert (=> b!4093884 (= res!1673333 (= (value!223002 (_1!24544 (get!14394 lt!1464290))) (apply!10283 (transformation!7100 (rule!10246 (_1!24544 (get!14394 lt!1464290)))) (seqFromList!5317 (originalCharacters!7694 (_1!24544 (get!14394 lt!1464290)))))))))

(declare-fun b!4093885 () Bool)

(declare-fun res!1673332 () Bool)

(assert (=> b!4093885 (=> (not res!1673332) (not e!2540564))))

(assert (=> b!4093885 (= res!1673332 (= (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464290)))) (originalCharacters!7694 (_1!24544 (get!14394 lt!1464290)))))))

(declare-fun b!4093886 () Bool)

(declare-fun res!1673331 () Bool)

(assert (=> b!4093886 (=> (not res!1673331) (not e!2540564))))

(assert (=> b!4093886 (= res!1673331 (= (++!11506 (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464290)))) (_2!24544 (get!14394 lt!1464290))) input!3411))))

(declare-fun b!4093887 () Bool)

(declare-fun res!1673327 () Bool)

(assert (=> b!4093887 (=> (not res!1673327) (not e!2540564))))

(assert (=> b!4093887 (= res!1673327 (< (size!32787 (_2!24544 (get!14394 lt!1464290))) (size!32787 input!3411)))))

(declare-fun bm!289360 () Bool)

(assert (=> bm!289360 (= call!289365 (maxPrefixOneRule!2961 thiss!26199 (h!49309 (t!339012 rules!3870)) input!3411))))

(declare-fun d!1215633 () Bool)

(assert (=> d!1215633 e!2540563))

(declare-fun res!1673330 () Bool)

(assert (=> d!1215633 (=> res!1673330 e!2540563)))

(assert (=> d!1215633 (= res!1673330 (isEmpty!26253 lt!1464290))))

(assert (=> d!1215633 (= lt!1464290 e!2540565)))

(declare-fun c!705562 () Bool)

(assert (=> d!1215633 (= c!705562 (and ((_ is Cons!43889) (t!339012 rules!3870)) ((_ is Nil!43889) (t!339012 (t!339012 rules!3870)))))))

(declare-fun lt!1464286 () Unit!63421)

(declare-fun lt!1464288 () Unit!63421)

(assert (=> d!1215633 (= lt!1464286 lt!1464288)))

(assert (=> d!1215633 (isPrefix!4147 input!3411 input!3411)))

(assert (=> d!1215633 (= lt!1464288 (lemmaIsPrefixRefl!2698 input!3411 input!3411))))

(assert (=> d!1215633 (rulesValidInductive!2629 thiss!26199 (t!339012 rules!3870))))

(assert (=> d!1215633 (= (maxPrefix!3979 thiss!26199 (t!339012 rules!3870) input!3411) lt!1464290)))

(declare-fun b!4093888 () Bool)

(assert (=> b!4093888 (= e!2540565 call!289365)))

(declare-fun b!4093889 () Bool)

(assert (=> b!4093889 (= e!2540564 (contains!8783 (t!339012 rules!3870) (rule!10246 (_1!24544 (get!14394 lt!1464290)))))))

(assert (= (and d!1215633 c!705562) b!4093888))

(assert (= (and d!1215633 (not c!705562)) b!4093883))

(assert (= (or b!4093888 b!4093883) bm!289360))

(assert (= (and d!1215633 (not res!1673330)) b!4093881))

(assert (= (and b!4093881 res!1673328) b!4093885))

(assert (= (and b!4093885 res!1673332) b!4093887))

(assert (= (and b!4093887 res!1673327) b!4093886))

(assert (= (and b!4093886 res!1673331) b!4093884))

(assert (= (and b!4093884 res!1673333) b!4093882))

(assert (= (and b!4093882 res!1673329) b!4093889))

(declare-fun m!4700953 () Bool)

(assert (=> bm!289360 m!4700953))

(declare-fun m!4700955 () Bool)

(assert (=> b!4093883 m!4700955))

(declare-fun m!4700957 () Bool)

(assert (=> b!4093885 m!4700957))

(declare-fun m!4700959 () Bool)

(assert (=> b!4093885 m!4700959))

(assert (=> b!4093885 m!4700959))

(declare-fun m!4700961 () Bool)

(assert (=> b!4093885 m!4700961))

(assert (=> b!4093882 m!4700957))

(assert (=> b!4093882 m!4700959))

(assert (=> b!4093882 m!4700959))

(assert (=> b!4093882 m!4700961))

(assert (=> b!4093882 m!4700961))

(declare-fun m!4700963 () Bool)

(assert (=> b!4093882 m!4700963))

(assert (=> b!4093884 m!4700957))

(declare-fun m!4700965 () Bool)

(assert (=> b!4093884 m!4700965))

(assert (=> b!4093884 m!4700965))

(declare-fun m!4700967 () Bool)

(assert (=> b!4093884 m!4700967))

(assert (=> b!4093889 m!4700957))

(declare-fun m!4700969 () Bool)

(assert (=> b!4093889 m!4700969))

(declare-fun m!4700971 () Bool)

(assert (=> b!4093881 m!4700971))

(assert (=> b!4093886 m!4700957))

(assert (=> b!4093886 m!4700959))

(assert (=> b!4093886 m!4700959))

(assert (=> b!4093886 m!4700961))

(assert (=> b!4093886 m!4700961))

(declare-fun m!4700973 () Bool)

(assert (=> b!4093886 m!4700973))

(declare-fun m!4700975 () Bool)

(assert (=> d!1215633 m!4700975))

(assert (=> d!1215633 m!4700647))

(assert (=> d!1215633 m!4700649))

(declare-fun m!4700977 () Bool)

(assert (=> d!1215633 m!4700977))

(assert (=> b!4093887 m!4700957))

(declare-fun m!4700979 () Bool)

(assert (=> b!4093887 m!4700979))

(assert (=> b!4093887 m!4700557))

(assert (=> b!4093618 d!1215633))

(declare-fun d!1215635 () Bool)

(assert (=> d!1215635 (= (inv!58613 (dynLambda!18804 (toChars!9555 (transformation!7100 (rule!10246 lt!1464134))) (value!223002 lt!1464134))) (isBalanced!3707 (c!705491 (dynLambda!18804 (toChars!9555 (transformation!7100 (rule!10246 lt!1464134))) (value!223002 lt!1464134)))))))

(declare-fun bs!593476 () Bool)

(assert (= bs!593476 d!1215635))

(declare-fun m!4700987 () Bool)

(assert (=> bs!593476 m!4700987))

(assert (=> tb!246229 d!1215635))

(assert (=> d!1215461 d!1215495))

(declare-fun b!4093928 () Bool)

(declare-fun res!1673365 () Bool)

(declare-fun e!2540601 () Bool)

(assert (=> b!4093928 (=> res!1673365 e!2540601)))

(assert (=> b!4093928 (= res!1673365 (not ((_ is Concat!19336) (regex!7100 r!4213))))))

(declare-fun e!2540597 () Bool)

(assert (=> b!4093928 (= e!2540597 e!2540601)))

(declare-fun b!4093929 () Bool)

(declare-fun e!2540595 () Bool)

(assert (=> b!4093929 (= e!2540595 e!2540597)))

(declare-fun c!705567 () Bool)

(assert (=> b!4093929 (= c!705567 ((_ is Union!12005) (regex!7100 r!4213)))))

(declare-fun b!4093930 () Bool)

(declare-fun e!2540596 () Bool)

(assert (=> b!4093930 (= e!2540596 e!2540595)))

(declare-fun c!705568 () Bool)

(assert (=> b!4093930 (= c!705568 ((_ is Star!12005) (regex!7100 r!4213)))))

(declare-fun b!4093931 () Bool)

(declare-fun e!2540600 () Bool)

(declare-fun call!289374 () Bool)

(assert (=> b!4093931 (= e!2540600 call!289374)))

(declare-fun b!4093932 () Bool)

(declare-fun e!2540599 () Bool)

(assert (=> b!4093932 (= e!2540601 e!2540599)))

(declare-fun res!1673363 () Bool)

(assert (=> b!4093932 (=> (not res!1673363) (not e!2540599))))

(declare-fun call!289373 () Bool)

(assert (=> b!4093932 (= res!1673363 call!289373)))

(declare-fun b!4093933 () Bool)

(assert (=> b!4093933 (= e!2540595 e!2540600)))

(declare-fun res!1673362 () Bool)

(assert (=> b!4093933 (= res!1673362 (not (nullable!4242 (reg!12334 (regex!7100 r!4213)))))))

(assert (=> b!4093933 (=> (not res!1673362) (not e!2540600))))

(declare-fun d!1215639 () Bool)

(declare-fun res!1673366 () Bool)

(assert (=> d!1215639 (=> res!1673366 e!2540596)))

(assert (=> d!1215639 (= res!1673366 ((_ is ElementMatch!12005) (regex!7100 r!4213)))))

(assert (=> d!1215639 (= (validRegex!5442 (regex!7100 r!4213)) e!2540596)))

(declare-fun b!4093934 () Bool)

(declare-fun e!2540598 () Bool)

(declare-fun call!289372 () Bool)

(assert (=> b!4093934 (= e!2540598 call!289372)))

(declare-fun bm!289367 () Bool)

(assert (=> bm!289367 (= call!289374 (validRegex!5442 (ite c!705568 (reg!12334 (regex!7100 r!4213)) (ite c!705567 (regTwo!24523 (regex!7100 r!4213)) (regTwo!24522 (regex!7100 r!4213))))))))

(declare-fun bm!289368 () Bool)

(assert (=> bm!289368 (= call!289372 call!289374)))

(declare-fun bm!289369 () Bool)

(assert (=> bm!289369 (= call!289373 (validRegex!5442 (ite c!705567 (regOne!24523 (regex!7100 r!4213)) (regOne!24522 (regex!7100 r!4213)))))))

(declare-fun b!4093935 () Bool)

(declare-fun res!1673364 () Bool)

(assert (=> b!4093935 (=> (not res!1673364) (not e!2540598))))

(assert (=> b!4093935 (= res!1673364 call!289373)))

(assert (=> b!4093935 (= e!2540597 e!2540598)))

(declare-fun b!4093936 () Bool)

(assert (=> b!4093936 (= e!2540599 call!289372)))

(assert (= (and d!1215639 (not res!1673366)) b!4093930))

(assert (= (and b!4093930 c!705568) b!4093933))

(assert (= (and b!4093930 (not c!705568)) b!4093929))

(assert (= (and b!4093933 res!1673362) b!4093931))

(assert (= (and b!4093929 c!705567) b!4093935))

(assert (= (and b!4093929 (not c!705567)) b!4093928))

(assert (= (and b!4093935 res!1673364) b!4093934))

(assert (= (and b!4093928 (not res!1673365)) b!4093932))

(assert (= (and b!4093932 res!1673363) b!4093936))

(assert (= (or b!4093934 b!4093936) bm!289368))

(assert (= (or b!4093935 b!4093932) bm!289369))

(assert (= (or b!4093931 bm!289368) bm!289367))

(declare-fun m!4700995 () Bool)

(assert (=> b!4093933 m!4700995))

(declare-fun m!4700997 () Bool)

(assert (=> bm!289367 m!4700997))

(declare-fun m!4700999 () Bool)

(assert (=> bm!289369 m!4700999))

(assert (=> d!1215461 d!1215639))

(declare-fun d!1215645 () Bool)

(assert (=> d!1215645 (= (inv!58613 (dynLambda!18804 (toChars!9555 (transformation!7100 r!4213)) (dynLambda!18808 (toValue!9696 (transformation!7100 r!4213)) lt!1464131))) (isBalanced!3707 (c!705491 (dynLambda!18804 (toChars!9555 (transformation!7100 r!4213)) (dynLambda!18808 (toValue!9696 (transformation!7100 r!4213)) lt!1464131)))))))

(declare-fun bs!593478 () Bool)

(assert (= bs!593478 d!1215645))

(declare-fun m!4701001 () Bool)

(assert (=> bs!593478 m!4701001))

(assert (=> tb!246247 d!1215645))

(declare-fun d!1215647 () Bool)

(assert (=> d!1215647 (= (isEmpty!26253 lt!1464205) (not ((_ is Some!9505) lt!1464205)))))

(assert (=> d!1215501 d!1215647))

(declare-fun b!4093948 () Bool)

(declare-fun res!1673376 () Bool)

(declare-fun e!2540610 () Bool)

(assert (=> b!4093948 (=> (not res!1673376) (not e!2540610))))

(assert (=> b!4093948 (= res!1673376 (= (head!8653 input!3411) (head!8653 input!3411)))))

(declare-fun b!4093947 () Bool)

(declare-fun e!2540609 () Bool)

(assert (=> b!4093947 (= e!2540609 e!2540610)))

(declare-fun res!1673377 () Bool)

(assert (=> b!4093947 (=> (not res!1673377) (not e!2540610))))

(assert (=> b!4093947 (= res!1673377 (not ((_ is Nil!43888) input!3411)))))

(declare-fun b!4093950 () Bool)

(declare-fun e!2540611 () Bool)

(assert (=> b!4093950 (= e!2540611 (>= (size!32787 input!3411) (size!32787 input!3411)))))

(declare-fun b!4093949 () Bool)

(assert (=> b!4093949 (= e!2540610 (isPrefix!4147 (tail!6387 input!3411) (tail!6387 input!3411)))))

(declare-fun d!1215649 () Bool)

(assert (=> d!1215649 e!2540611))

(declare-fun res!1673375 () Bool)

(assert (=> d!1215649 (=> res!1673375 e!2540611)))

(declare-fun lt!1464306 () Bool)

(assert (=> d!1215649 (= res!1673375 (not lt!1464306))))

(assert (=> d!1215649 (= lt!1464306 e!2540609)))

(declare-fun res!1673378 () Bool)

(assert (=> d!1215649 (=> res!1673378 e!2540609)))

(assert (=> d!1215649 (= res!1673378 ((_ is Nil!43888) input!3411))))

(assert (=> d!1215649 (= (isPrefix!4147 input!3411 input!3411) lt!1464306)))

(assert (= (and d!1215649 (not res!1673378)) b!4093947))

(assert (= (and b!4093947 res!1673377) b!4093948))

(assert (= (and b!4093948 res!1673376) b!4093949))

(assert (= (and d!1215649 (not res!1673375)) b!4093950))

(declare-fun m!4701011 () Bool)

(assert (=> b!4093948 m!4701011))

(assert (=> b!4093948 m!4701011))

(assert (=> b!4093950 m!4700557))

(assert (=> b!4093950 m!4700557))

(declare-fun m!4701013 () Bool)

(assert (=> b!4093949 m!4701013))

(assert (=> b!4093949 m!4701013))

(assert (=> b!4093949 m!4701013))

(assert (=> b!4093949 m!4701013))

(declare-fun m!4701015 () Bool)

(assert (=> b!4093949 m!4701015))

(assert (=> d!1215501 d!1215649))

(declare-fun d!1215665 () Bool)

(assert (=> d!1215665 (isPrefix!4147 input!3411 input!3411)))

(declare-fun lt!1464309 () Unit!63421)

(declare-fun choose!25011 (List!44012 List!44012) Unit!63421)

(assert (=> d!1215665 (= lt!1464309 (choose!25011 input!3411 input!3411))))

(assert (=> d!1215665 (= (lemmaIsPrefixRefl!2698 input!3411 input!3411) lt!1464309)))

(declare-fun bs!593482 () Bool)

(assert (= bs!593482 d!1215665))

(assert (=> bs!593482 m!4700647))

(declare-fun m!4701017 () Bool)

(assert (=> bs!593482 m!4701017))

(assert (=> d!1215501 d!1215665))

(declare-fun d!1215667 () Bool)

(assert (=> d!1215667 true))

(declare-fun lt!1464314 () Bool)

(declare-fun lambda!128096 () Int)

(declare-fun forall!8415 (List!44013 Int) Bool)

(assert (=> d!1215667 (= lt!1464314 (forall!8415 rules!3870 lambda!128096))))

(declare-fun e!2540626 () Bool)

(assert (=> d!1215667 (= lt!1464314 e!2540626)))

(declare-fun res!1673394 () Bool)

(assert (=> d!1215667 (=> res!1673394 e!2540626)))

(assert (=> d!1215667 (= res!1673394 (not ((_ is Cons!43889) rules!3870)))))

(assert (=> d!1215667 (= (rulesValidInductive!2629 thiss!26199 rules!3870) lt!1464314)))

(declare-fun b!4093978 () Bool)

(declare-fun e!2540627 () Bool)

(assert (=> b!4093978 (= e!2540626 e!2540627)))

(declare-fun res!1673395 () Bool)

(assert (=> b!4093978 (=> (not res!1673395) (not e!2540627))))

(assert (=> b!4093978 (= res!1673395 (ruleValid!3020 thiss!26199 (h!49309 rules!3870)))))

(declare-fun b!4093979 () Bool)

(assert (=> b!4093979 (= e!2540627 (rulesValidInductive!2629 thiss!26199 (t!339012 rules!3870)))))

(assert (= (and d!1215667 (not res!1673394)) b!4093978))

(assert (= (and b!4093978 res!1673395) b!4093979))

(declare-fun m!4701049 () Bool)

(assert (=> d!1215667 m!4701049))

(assert (=> b!4093978 m!4700571))

(assert (=> b!4093979 m!4700977))

(assert (=> d!1215501 d!1215667))

(declare-fun bs!593487 () Bool)

(declare-fun d!1215677 () Bool)

(assert (= bs!593487 (and d!1215677 d!1215667)))

(declare-fun lambda!128099 () Int)

(assert (=> bs!593487 (= lambda!128099 lambda!128096)))

(assert (=> d!1215677 true))

(declare-fun lt!1464319 () Bool)

(assert (=> d!1215677 (= lt!1464319 (rulesValidInductive!2629 thiss!26199 (t!339012 rules!3870)))))

(assert (=> d!1215677 (= lt!1464319 (forall!8415 (t!339012 rules!3870) lambda!128099))))

(assert (=> d!1215677 (= (rulesValid!2788 thiss!26199 (t!339012 rules!3870)) lt!1464319)))

(declare-fun bs!593488 () Bool)

(assert (= bs!593488 d!1215677))

(assert (=> bs!593488 m!4700977))

(declare-fun m!4701073 () Bool)

(assert (=> bs!593488 m!4701073))

(assert (=> d!1215487 d!1215677))

(declare-fun d!1215687 () Bool)

(declare-fun lt!1464320 () Bool)

(assert (=> d!1215687 (= lt!1464320 (select (content!6768 rules!3870) (rule!10246 (_1!24544 (get!14394 lt!1464205)))))))

(declare-fun e!2540639 () Bool)

(assert (=> d!1215687 (= lt!1464320 e!2540639)))

(declare-fun res!1673406 () Bool)

(assert (=> d!1215687 (=> (not res!1673406) (not e!2540639))))

(assert (=> d!1215687 (= res!1673406 ((_ is Cons!43889) rules!3870))))

(assert (=> d!1215687 (= (contains!8783 rules!3870 (rule!10246 (_1!24544 (get!14394 lt!1464205)))) lt!1464320)))

(declare-fun b!4093998 () Bool)

(declare-fun e!2540638 () Bool)

(assert (=> b!4093998 (= e!2540639 e!2540638)))

(declare-fun res!1673407 () Bool)

(assert (=> b!4093998 (=> res!1673407 e!2540638)))

(assert (=> b!4093998 (= res!1673407 (= (h!49309 rules!3870) (rule!10246 (_1!24544 (get!14394 lt!1464205)))))))

(declare-fun b!4093999 () Bool)

(assert (=> b!4093999 (= e!2540638 (contains!8783 (t!339012 rules!3870) (rule!10246 (_1!24544 (get!14394 lt!1464205)))))))

(assert (= (and d!1215687 res!1673406) b!4093998))

(assert (= (and b!4093998 (not res!1673407)) b!4093999))

(assert (=> d!1215687 m!4700513))

(declare-fun m!4701075 () Bool)

(assert (=> d!1215687 m!4701075))

(declare-fun m!4701077 () Bool)

(assert (=> b!4093999 m!4701077))

(assert (=> b!4093624 d!1215687))

(assert (=> b!4093624 d!1215599))

(declare-fun d!1215689 () Bool)

(declare-fun c!705579 () Bool)

(assert (=> d!1215689 (= c!705579 ((_ is Node!13311) (c!705491 (dynLambda!18804 (toChars!9555 (transformation!7100 (rule!10246 lt!1464134))) (value!223002 lt!1464134)))))))

(declare-fun e!2540644 () Bool)

(assert (=> d!1215689 (= (inv!58612 (c!705491 (dynLambda!18804 (toChars!9555 (transformation!7100 (rule!10246 lt!1464134))) (value!223002 lt!1464134)))) e!2540644)))

(declare-fun b!4094006 () Bool)

(declare-fun inv!58616 (Conc!13311) Bool)

(assert (=> b!4094006 (= e!2540644 (inv!58616 (c!705491 (dynLambda!18804 (toChars!9555 (transformation!7100 (rule!10246 lt!1464134))) (value!223002 lt!1464134)))))))

(declare-fun b!4094007 () Bool)

(declare-fun e!2540645 () Bool)

(assert (=> b!4094007 (= e!2540644 e!2540645)))

(declare-fun res!1673410 () Bool)

(assert (=> b!4094007 (= res!1673410 (not ((_ is Leaf!20576) (c!705491 (dynLambda!18804 (toChars!9555 (transformation!7100 (rule!10246 lt!1464134))) (value!223002 lt!1464134))))))))

(assert (=> b!4094007 (=> res!1673410 e!2540645)))

(declare-fun b!4094008 () Bool)

(declare-fun inv!58617 (Conc!13311) Bool)

(assert (=> b!4094008 (= e!2540645 (inv!58617 (c!705491 (dynLambda!18804 (toChars!9555 (transformation!7100 (rule!10246 lt!1464134))) (value!223002 lt!1464134)))))))

(assert (= (and d!1215689 c!705579) b!4094006))

(assert (= (and d!1215689 (not c!705579)) b!4094007))

(assert (= (and b!4094007 (not res!1673410)) b!4094008))

(declare-fun m!4701079 () Bool)

(assert (=> b!4094006 m!4701079))

(declare-fun m!4701081 () Bool)

(assert (=> b!4094008 m!4701081))

(assert (=> b!4093520 d!1215689))

(declare-fun d!1215691 () Bool)

(declare-fun lt!1464321 () Int)

(assert (=> d!1215691 (>= lt!1464321 0)))

(declare-fun e!2540646 () Int)

(assert (=> d!1215691 (= lt!1464321 e!2540646)))

(declare-fun c!705580 () Bool)

(assert (=> d!1215691 (= c!705580 ((_ is Nil!43888) (_2!24544 (get!14394 lt!1464205))))))

(assert (=> d!1215691 (= (size!32787 (_2!24544 (get!14394 lt!1464205))) lt!1464321)))

(declare-fun b!4094009 () Bool)

(assert (=> b!4094009 (= e!2540646 0)))

(declare-fun b!4094010 () Bool)

(assert (=> b!4094010 (= e!2540646 (+ 1 (size!32787 (t!339011 (_2!24544 (get!14394 lt!1464205))))))))

(assert (= (and d!1215691 c!705580) b!4094009))

(assert (= (and d!1215691 (not c!705580)) b!4094010))

(declare-fun m!4701083 () Bool)

(assert (=> b!4094010 m!4701083))

(assert (=> b!4093622 d!1215691))

(assert (=> b!4093622 d!1215599))

(assert (=> b!4093622 d!1215631))

(declare-fun d!1215693 () Bool)

(assert (=> d!1215693 (= (inv!58605 (tag!7960 (h!49309 (t!339012 rules!3870)))) (= (mod (str.len (value!223001 (tag!7960 (h!49309 (t!339012 rules!3870))))) 2) 0))))

(assert (=> b!4093779 d!1215693))

(declare-fun d!1215695 () Bool)

(declare-fun res!1673411 () Bool)

(declare-fun e!2540647 () Bool)

(assert (=> d!1215695 (=> (not res!1673411) (not e!2540647))))

(assert (=> d!1215695 (= res!1673411 (semiInverseModEq!3053 (toChars!9555 (transformation!7100 (h!49309 (t!339012 rules!3870)))) (toValue!9696 (transformation!7100 (h!49309 (t!339012 rules!3870))))))))

(assert (=> d!1215695 (= (inv!58609 (transformation!7100 (h!49309 (t!339012 rules!3870)))) e!2540647)))

(declare-fun b!4094011 () Bool)

(assert (=> b!4094011 (= e!2540647 (equivClasses!2952 (toChars!9555 (transformation!7100 (h!49309 (t!339012 rules!3870)))) (toValue!9696 (transformation!7100 (h!49309 (t!339012 rules!3870))))))))

(assert (= (and d!1215695 res!1673411) b!4094011))

(declare-fun m!4701085 () Bool)

(assert (=> d!1215695 m!4701085))

(declare-fun m!4701087 () Bool)

(assert (=> b!4094011 m!4701087))

(assert (=> b!4093779 d!1215695))

(declare-fun d!1215697 () Bool)

(declare-fun lt!1464324 () Int)

(assert (=> d!1215697 (>= lt!1464324 0)))

(declare-fun e!2540648 () Int)

(assert (=> d!1215697 (= lt!1464324 e!2540648)))

(declare-fun c!705581 () Bool)

(assert (=> d!1215697 (= c!705581 ((_ is Nil!43888) (t!339011 p!2988)))))

(assert (=> d!1215697 (= (size!32787 (t!339011 p!2988)) lt!1464324)))

(declare-fun b!4094014 () Bool)

(assert (=> b!4094014 (= e!2540648 0)))

(declare-fun b!4094015 () Bool)

(assert (=> b!4094015 (= e!2540648 (+ 1 (size!32787 (t!339011 (t!339011 p!2988)))))))

(assert (= (and d!1215697 c!705581) b!4094014))

(assert (= (and d!1215697 (not c!705581)) b!4094015))

(declare-fun m!4701089 () Bool)

(assert (=> b!4094015 m!4701089))

(assert (=> b!4093630 d!1215697))

(assert (=> bm!289343 d!1215495))

(assert (=> b!4093573 d!1215581))

(declare-fun d!1215699 () Bool)

(declare-fun lt!1464325 () Int)

(assert (=> d!1215699 (>= lt!1464325 0)))

(declare-fun e!2540653 () Int)

(assert (=> d!1215699 (= lt!1464325 e!2540653)))

(declare-fun c!705586 () Bool)

(assert (=> d!1215699 (= c!705586 ((_ is Nil!43888) (originalCharacters!7694 (_1!24544 (get!14394 lt!1464180)))))))

(assert (=> d!1215699 (= (size!32787 (originalCharacters!7694 (_1!24544 (get!14394 lt!1464180)))) lt!1464325)))

(declare-fun b!4094022 () Bool)

(assert (=> b!4094022 (= e!2540653 0)))

(declare-fun b!4094023 () Bool)

(assert (=> b!4094023 (= e!2540653 (+ 1 (size!32787 (t!339011 (originalCharacters!7694 (_1!24544 (get!14394 lt!1464180)))))))))

(assert (= (and d!1215699 c!705586) b!4094022))

(assert (= (and d!1215699 (not c!705586)) b!4094023))

(declare-fun m!4701091 () Bool)

(assert (=> b!4094023 m!4701091))

(assert (=> b!4093573 d!1215699))

(declare-fun d!1215701 () Bool)

(declare-fun lt!1464326 () Int)

(assert (=> d!1215701 (>= lt!1464326 0)))

(declare-fun e!2540660 () Int)

(assert (=> d!1215701 (= lt!1464326 e!2540660)))

(declare-fun c!705593 () Bool)

(assert (=> d!1215701 (= c!705593 ((_ is Nil!43888) lt!1464190))))

(assert (=> d!1215701 (= (size!32787 lt!1464190) lt!1464326)))

(declare-fun b!4094036 () Bool)

(assert (=> b!4094036 (= e!2540660 0)))

(declare-fun b!4094037 () Bool)

(assert (=> b!4094037 (= e!2540660 (+ 1 (size!32787 (t!339011 lt!1464190))))))

(assert (= (and d!1215701 c!705593) b!4094036))

(assert (= (and d!1215701 (not c!705593)) b!4094037))

(declare-fun m!4701093 () Bool)

(assert (=> b!4094037 m!4701093))

(assert (=> b!4093596 d!1215701))

(assert (=> b!4093596 d!1215503))

(declare-fun d!1215703 () Bool)

(declare-fun lt!1464327 () Int)

(assert (=> d!1215703 (>= lt!1464327 0)))

(declare-fun e!2540661 () Int)

(assert (=> d!1215703 (= lt!1464327 e!2540661)))

(declare-fun c!705594 () Bool)

(assert (=> d!1215703 (= c!705594 ((_ is Nil!43888) suffix!1518))))

(assert (=> d!1215703 (= (size!32787 suffix!1518) lt!1464327)))

(declare-fun b!4094038 () Bool)

(assert (=> b!4094038 (= e!2540661 0)))

(declare-fun b!4094039 () Bool)

(assert (=> b!4094039 (= e!2540661 (+ 1 (size!32787 (t!339011 suffix!1518))))))

(assert (= (and d!1215703 c!705594) b!4094038))

(assert (= (and d!1215703 (not c!705594)) b!4094039))

(declare-fun m!4701095 () Bool)

(assert (=> b!4094039 m!4701095))

(assert (=> b!4093596 d!1215703))

(declare-fun bs!593489 () Bool)

(declare-fun d!1215705 () Bool)

(assert (= bs!593489 (and d!1215705 d!1215667)))

(declare-fun lambda!128100 () Int)

(assert (=> bs!593489 (= lambda!128100 lambda!128096)))

(declare-fun bs!593490 () Bool)

(assert (= bs!593490 (and d!1215705 d!1215677)))

(assert (=> bs!593490 (= lambda!128100 lambda!128099)))

(assert (=> d!1215705 true))

(declare-fun lt!1464328 () Bool)

(assert (=> d!1215705 (= lt!1464328 (rulesValidInductive!2629 thiss!26199 rules!3870))))

(assert (=> d!1215705 (= lt!1464328 (forall!8415 rules!3870 lambda!128100))))

(assert (=> d!1215705 (= (rulesValid!2788 thiss!26199 rules!3870) lt!1464328)))

(declare-fun bs!593491 () Bool)

(assert (= bs!593491 d!1215705))

(assert (=> bs!593491 m!4700651))

(declare-fun m!4701097 () Bool)

(assert (=> bs!593491 m!4701097))

(assert (=> d!1215497 d!1215705))

(declare-fun d!1215707 () Bool)

(declare-fun nullableFct!1189 (Regex!12005) Bool)

(assert (=> d!1215707 (= (nullable!4242 (regex!7100 r!4213)) (nullableFct!1189 (regex!7100 r!4213)))))

(declare-fun bs!593492 () Bool)

(assert (= bs!593492 d!1215707))

(declare-fun m!4701099 () Bool)

(assert (=> bs!593492 m!4701099))

(assert (=> b!4093508 d!1215707))

(declare-fun d!1215709 () Bool)

(declare-fun c!705599 () Bool)

(assert (=> d!1215709 (= c!705599 ((_ is IntegerValue!21990) (dynLambda!18808 (toValue!9696 (transformation!7100 r!4213)) lt!1464131)))))

(declare-fun e!2540668 () Bool)

(assert (=> d!1215709 (= (inv!21 (dynLambda!18808 (toValue!9696 (transformation!7100 r!4213)) lt!1464131)) e!2540668)))

(declare-fun b!4094050 () Bool)

(declare-fun e!2540670 () Bool)

(declare-fun inv!15 (TokenValue!7330) Bool)

(assert (=> b!4094050 (= e!2540670 (inv!15 (dynLambda!18808 (toValue!9696 (transformation!7100 r!4213)) lt!1464131)))))

(declare-fun b!4094051 () Bool)

(declare-fun e!2540669 () Bool)

(assert (=> b!4094051 (= e!2540668 e!2540669)))

(declare-fun c!705600 () Bool)

(assert (=> b!4094051 (= c!705600 ((_ is IntegerValue!21991) (dynLambda!18808 (toValue!9696 (transformation!7100 r!4213)) lt!1464131)))))

(declare-fun b!4094052 () Bool)

(declare-fun inv!16 (TokenValue!7330) Bool)

(assert (=> b!4094052 (= e!2540668 (inv!16 (dynLambda!18808 (toValue!9696 (transformation!7100 r!4213)) lt!1464131)))))

(declare-fun b!4094053 () Bool)

(declare-fun inv!17 (TokenValue!7330) Bool)

(assert (=> b!4094053 (= e!2540669 (inv!17 (dynLambda!18808 (toValue!9696 (transformation!7100 r!4213)) lt!1464131)))))

(declare-fun b!4094054 () Bool)

(declare-fun res!1673414 () Bool)

(assert (=> b!4094054 (=> res!1673414 e!2540670)))

(assert (=> b!4094054 (= res!1673414 (not ((_ is IntegerValue!21992) (dynLambda!18808 (toValue!9696 (transformation!7100 r!4213)) lt!1464131))))))

(assert (=> b!4094054 (= e!2540669 e!2540670)))

(assert (= (and d!1215709 c!705599) b!4094052))

(assert (= (and d!1215709 (not c!705599)) b!4094051))

(assert (= (and b!4094051 c!705600) b!4094053))

(assert (= (and b!4094051 (not c!705600)) b!4094054))

(assert (= (and b!4094054 (not res!1673414)) b!4094050))

(declare-fun m!4701101 () Bool)

(assert (=> b!4094050 m!4701101))

(declare-fun m!4701103 () Bool)

(assert (=> b!4094052 m!4701103))

(declare-fun m!4701105 () Bool)

(assert (=> b!4094053 m!4701105))

(assert (=> tb!246251 d!1215709))

(declare-fun b!4094065 () Bool)

(declare-fun res!1673415 () Bool)

(declare-fun e!2540677 () Bool)

(assert (=> b!4094065 (=> res!1673415 e!2540677)))

(declare-fun e!2540678 () Bool)

(assert (=> b!4094065 (= res!1673415 e!2540678)))

(declare-fun res!1673422 () Bool)

(assert (=> b!4094065 (=> (not res!1673422) (not e!2540678))))

(declare-fun lt!1464330 () Bool)

(assert (=> b!4094065 (= res!1673422 lt!1464330)))

(declare-fun b!4094066 () Bool)

(declare-fun e!2540681 () Bool)

(assert (=> b!4094066 (= e!2540681 (matchR!5946 (derivativeStep!3643 (regex!7100 (rule!10246 (_1!24544 (get!14394 lt!1464205)))) (head!8653 (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464205)))))) (tail!6387 (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464205)))))))))

(declare-fun b!4094067 () Bool)

(declare-fun e!2540676 () Bool)

(declare-fun call!289389 () Bool)

(assert (=> b!4094067 (= e!2540676 (= lt!1464330 call!289389))))

(declare-fun b!4094068 () Bool)

(declare-fun res!1673419 () Bool)

(declare-fun e!2540682 () Bool)

(assert (=> b!4094068 (=> res!1673419 e!2540682)))

(assert (=> b!4094068 (= res!1673419 (not (isEmpty!26254 (tail!6387 (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464205))))))))))

(declare-fun bm!289384 () Bool)

(assert (=> bm!289384 (= call!289389 (isEmpty!26254 (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464205))))))))

(declare-fun b!4094070 () Bool)

(declare-fun res!1673416 () Bool)

(assert (=> b!4094070 (=> (not res!1673416) (not e!2540678))))

(assert (=> b!4094070 (= res!1673416 (isEmpty!26254 (tail!6387 (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464205)))))))))

(declare-fun b!4094071 () Bool)

(declare-fun e!2540679 () Bool)

(assert (=> b!4094071 (= e!2540676 e!2540679)))

(declare-fun c!705606 () Bool)

(assert (=> b!4094071 (= c!705606 ((_ is EmptyLang!12005) (regex!7100 (rule!10246 (_1!24544 (get!14394 lt!1464205))))))))

(declare-fun b!4094072 () Bool)

(assert (=> b!4094072 (= e!2540678 (= (head!8653 (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464205))))) (c!705490 (regex!7100 (rule!10246 (_1!24544 (get!14394 lt!1464205)))))))))

(declare-fun b!4094073 () Bool)

(assert (=> b!4094073 (= e!2540681 (nullable!4242 (regex!7100 (rule!10246 (_1!24544 (get!14394 lt!1464205))))))))

(declare-fun b!4094074 () Bool)

(declare-fun res!1673420 () Bool)

(assert (=> b!4094074 (=> (not res!1673420) (not e!2540678))))

(assert (=> b!4094074 (= res!1673420 (not call!289389))))

(declare-fun b!4094075 () Bool)

(declare-fun e!2540680 () Bool)

(assert (=> b!4094075 (= e!2540677 e!2540680)))

(declare-fun res!1673417 () Bool)

(assert (=> b!4094075 (=> (not res!1673417) (not e!2540680))))

(assert (=> b!4094075 (= res!1673417 (not lt!1464330))))

(declare-fun b!4094076 () Bool)

(declare-fun res!1673418 () Bool)

(assert (=> b!4094076 (=> res!1673418 e!2540677)))

(assert (=> b!4094076 (= res!1673418 (not ((_ is ElementMatch!12005) (regex!7100 (rule!10246 (_1!24544 (get!14394 lt!1464205)))))))))

(assert (=> b!4094076 (= e!2540679 e!2540677)))

(declare-fun b!4094077 () Bool)

(assert (=> b!4094077 (= e!2540682 (not (= (head!8653 (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464205))))) (c!705490 (regex!7100 (rule!10246 (_1!24544 (get!14394 lt!1464205))))))))))

(declare-fun b!4094078 () Bool)

(assert (=> b!4094078 (= e!2540680 e!2540682)))

(declare-fun res!1673421 () Bool)

(assert (=> b!4094078 (=> res!1673421 e!2540682)))

(assert (=> b!4094078 (= res!1673421 call!289389)))

(declare-fun b!4094069 () Bool)

(assert (=> b!4094069 (= e!2540679 (not lt!1464330))))

(declare-fun d!1215711 () Bool)

(assert (=> d!1215711 e!2540676))

(declare-fun c!705607 () Bool)

(assert (=> d!1215711 (= c!705607 ((_ is EmptyExpr!12005) (regex!7100 (rule!10246 (_1!24544 (get!14394 lt!1464205))))))))

(assert (=> d!1215711 (= lt!1464330 e!2540681)))

(declare-fun c!705608 () Bool)

(assert (=> d!1215711 (= c!705608 (isEmpty!26254 (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464205))))))))

(assert (=> d!1215711 (validRegex!5442 (regex!7100 (rule!10246 (_1!24544 (get!14394 lt!1464205)))))))

(assert (=> d!1215711 (= (matchR!5946 (regex!7100 (rule!10246 (_1!24544 (get!14394 lt!1464205)))) (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464205))))) lt!1464330)))

(assert (= (and d!1215711 c!705608) b!4094073))

(assert (= (and d!1215711 (not c!705608)) b!4094066))

(assert (= (and d!1215711 c!705607) b!4094067))

(assert (= (and d!1215711 (not c!705607)) b!4094071))

(assert (= (and b!4094071 c!705606) b!4094069))

(assert (= (and b!4094071 (not c!705606)) b!4094076))

(assert (= (and b!4094076 (not res!1673418)) b!4094065))

(assert (= (and b!4094065 res!1673422) b!4094074))

(assert (= (and b!4094074 res!1673420) b!4094070))

(assert (= (and b!4094070 res!1673416) b!4094072))

(assert (= (and b!4094065 (not res!1673415)) b!4094075))

(assert (= (and b!4094075 res!1673417) b!4094078))

(assert (= (and b!4094078 (not res!1673421)) b!4094068))

(assert (= (and b!4094068 (not res!1673419)) b!4094077))

(assert (= (or b!4094067 b!4094074 b!4094078) bm!289384))

(assert (=> bm!289384 m!4700631))

(declare-fun m!4701115 () Bool)

(assert (=> bm!289384 m!4701115))

(assert (=> b!4094068 m!4700631))

(declare-fun m!4701117 () Bool)

(assert (=> b!4094068 m!4701117))

(assert (=> b!4094068 m!4701117))

(declare-fun m!4701119 () Bool)

(assert (=> b!4094068 m!4701119))

(assert (=> b!4094070 m!4700631))

(assert (=> b!4094070 m!4701117))

(assert (=> b!4094070 m!4701117))

(assert (=> b!4094070 m!4701119))

(assert (=> b!4094066 m!4700631))

(declare-fun m!4701121 () Bool)

(assert (=> b!4094066 m!4701121))

(assert (=> b!4094066 m!4701121))

(declare-fun m!4701123 () Bool)

(assert (=> b!4094066 m!4701123))

(assert (=> b!4094066 m!4700631))

(assert (=> b!4094066 m!4701117))

(assert (=> b!4094066 m!4701123))

(assert (=> b!4094066 m!4701117))

(declare-fun m!4701125 () Bool)

(assert (=> b!4094066 m!4701125))

(declare-fun m!4701127 () Bool)

(assert (=> b!4094073 m!4701127))

(assert (=> b!4094077 m!4700631))

(assert (=> b!4094077 m!4701121))

(assert (=> b!4094072 m!4700631))

(assert (=> b!4094072 m!4701121))

(assert (=> d!1215711 m!4700631))

(assert (=> d!1215711 m!4701115))

(declare-fun m!4701129 () Bool)

(assert (=> d!1215711 m!4701129))

(assert (=> b!4093617 d!1215711))

(assert (=> b!4093617 d!1215599))

(assert (=> b!4093617 d!1215593))

(assert (=> b!4093617 d!1215597))

(assert (=> b!4093498 d!1215707))

(assert (=> b!4093578 d!1215631))

(declare-fun d!1215717 () Bool)

(assert (=> d!1215717 (= (apply!10283 (transformation!7100 (h!49309 rules!3870)) (seqFromList!5317 (_1!24546 lt!1464182))) (dynLambda!18808 (toValue!9696 (transformation!7100 (h!49309 rules!3870))) (seqFromList!5317 (_1!24546 lt!1464182))))))

(declare-fun b_lambda!120143 () Bool)

(assert (=> (not b_lambda!120143) (not d!1215717)))

(declare-fun tb!246291 () Bool)

(declare-fun t!339082 () Bool)

(assert (=> (and b!4093390 (= (toValue!9696 (transformation!7100 r!4213)) (toValue!9696 (transformation!7100 (h!49309 rules!3870)))) t!339082) tb!246291))

(declare-fun result!298848 () Bool)

(assert (=> tb!246291 (= result!298848 (inv!21 (dynLambda!18808 (toValue!9696 (transformation!7100 (h!49309 rules!3870))) (seqFromList!5317 (_1!24546 lt!1464182)))))))

(declare-fun m!4701133 () Bool)

(assert (=> tb!246291 m!4701133))

(assert (=> d!1215717 t!339082))

(declare-fun b_and!315709 () Bool)

(assert (= b_and!315671 (and (=> t!339082 result!298848) b_and!315709)))

(declare-fun t!339084 () Bool)

(declare-fun tb!246293 () Bool)

(assert (=> (and b!4093398 (= (toValue!9696 (transformation!7100 (h!49309 rules!3870))) (toValue!9696 (transformation!7100 (h!49309 rules!3870)))) t!339084) tb!246293))

(declare-fun result!298850 () Bool)

(assert (= result!298850 result!298848))

(assert (=> d!1215717 t!339084))

(declare-fun b_and!315711 () Bool)

(assert (= b_and!315673 (and (=> t!339084 result!298850) b_and!315711)))

(declare-fun t!339086 () Bool)

(declare-fun tb!246295 () Bool)

(assert (=> (and b!4093780 (= (toValue!9696 (transformation!7100 (h!49309 (t!339012 rules!3870)))) (toValue!9696 (transformation!7100 (h!49309 rules!3870)))) t!339086) tb!246295))

(declare-fun result!298852 () Bool)

(assert (= result!298852 result!298848))

(assert (=> d!1215717 t!339086))

(declare-fun b_and!315713 () Bool)

(assert (= b_and!315675 (and (=> t!339086 result!298852) b_and!315713)))

(assert (=> d!1215717 m!4700573))

(declare-fun m!4701135 () Bool)

(assert (=> d!1215717 m!4701135))

(assert (=> b!4093578 d!1215717))

(declare-fun d!1215721 () Bool)

(declare-fun lt!1464332 () Int)

(assert (=> d!1215721 (>= lt!1464332 0)))

(declare-fun e!2540684 () Int)

(assert (=> d!1215721 (= lt!1464332 e!2540684)))

(declare-fun c!705609 () Bool)

(assert (=> d!1215721 (= c!705609 ((_ is Nil!43888) Nil!43888))))

(assert (=> d!1215721 (= (size!32787 Nil!43888) lt!1464332)))

(declare-fun b!4094079 () Bool)

(assert (=> b!4094079 (= e!2540684 0)))

(declare-fun b!4094080 () Bool)

(assert (=> b!4094080 (= e!2540684 (+ 1 (size!32787 (t!339011 Nil!43888))))))

(assert (= (and d!1215721 c!705609) b!4094079))

(assert (= (and d!1215721 (not c!705609)) b!4094080))

(declare-fun m!4701137 () Bool)

(assert (=> b!4094080 m!4701137))

(assert (=> b!4093578 d!1215721))

(declare-fun b!4094148 () Bool)

(declare-fun e!2540735 () Unit!63421)

(declare-fun Unit!63423 () Unit!63421)

(assert (=> b!4094148 (= e!2540735 Unit!63423)))

(declare-fun bm!289402 () Bool)

(declare-fun call!289414 () Bool)

(assert (=> bm!289402 (= call!289414 (isPrefix!4147 input!3411 input!3411))))

(declare-fun b!4094149 () Bool)

(declare-fun e!2540730 () tuple2!42824)

(assert (=> b!4094149 (= e!2540730 (tuple2!42825 Nil!43888 input!3411))))

(declare-fun bm!289403 () Bool)

(declare-fun call!289410 () List!44012)

(assert (=> bm!289403 (= call!289410 (tail!6387 input!3411))))

(declare-fun b!4094150 () Bool)

(declare-fun e!2540733 () tuple2!42824)

(declare-fun call!289409 () tuple2!42824)

(assert (=> b!4094150 (= e!2540733 call!289409)))

(declare-fun b!4094151 () Bool)

(declare-fun e!2540734 () tuple2!42824)

(assert (=> b!4094151 (= e!2540730 e!2540734)))

(declare-fun c!705633 () Bool)

(assert (=> b!4094151 (= c!705633 (= (size!32787 Nil!43888) (size!32787 input!3411)))))

(declare-fun b!4094152 () Bool)

(declare-fun e!2540728 () tuple2!42824)

(declare-fun lt!1464428 () tuple2!42824)

(assert (=> b!4094152 (= e!2540728 lt!1464428)))

(declare-fun b!4094153 () Bool)

(declare-fun e!2540731 () tuple2!42824)

(assert (=> b!4094153 (= e!2540731 (tuple2!42825 Nil!43888 Nil!43888))))

(declare-fun b!4094154 () Bool)

(declare-fun e!2540732 () Bool)

(declare-fun e!2540729 () Bool)

(assert (=> b!4094154 (= e!2540732 e!2540729)))

(declare-fun res!1673451 () Bool)

(assert (=> b!4094154 (=> res!1673451 e!2540729)))

(declare-fun lt!1464423 () tuple2!42824)

(assert (=> b!4094154 (= res!1673451 (isEmpty!26254 (_1!24546 lt!1464423)))))

(declare-fun d!1215723 () Bool)

(assert (=> d!1215723 e!2540732))

(declare-fun res!1673450 () Bool)

(assert (=> d!1215723 (=> (not res!1673450) (not e!2540732))))

(assert (=> d!1215723 (= res!1673450 (= (++!11506 (_1!24546 lt!1464423) (_2!24546 lt!1464423)) input!3411))))

(assert (=> d!1215723 (= lt!1464423 e!2540730)))

(declare-fun c!705629 () Bool)

(declare-fun lostCause!1030 (Regex!12005) Bool)

(assert (=> d!1215723 (= c!705629 (lostCause!1030 (regex!7100 (h!49309 rules!3870))))))

(declare-fun lt!1464427 () Unit!63421)

(declare-fun Unit!63424 () Unit!63421)

(assert (=> d!1215723 (= lt!1464427 Unit!63424)))

(declare-fun getSuffix!2503 (List!44012 List!44012) List!44012)

(assert (=> d!1215723 (= (getSuffix!2503 input!3411 Nil!43888) input!3411)))

(declare-fun lt!1464406 () Unit!63421)

(declare-fun lt!1464416 () Unit!63421)

(assert (=> d!1215723 (= lt!1464406 lt!1464416)))

(declare-fun lt!1464413 () List!44012)

(assert (=> d!1215723 (= input!3411 lt!1464413)))

(declare-fun lemmaSamePrefixThenSameSuffix!2247 (List!44012 List!44012 List!44012 List!44012 List!44012) Unit!63421)

(assert (=> d!1215723 (= lt!1464416 (lemmaSamePrefixThenSameSuffix!2247 Nil!43888 input!3411 Nil!43888 lt!1464413 input!3411))))

(assert (=> d!1215723 (= lt!1464413 (getSuffix!2503 input!3411 Nil!43888))))

(declare-fun lt!1464419 () Unit!63421)

(declare-fun lt!1464420 () Unit!63421)

(assert (=> d!1215723 (= lt!1464419 lt!1464420)))

(assert (=> d!1215723 (isPrefix!4147 Nil!43888 (++!11506 Nil!43888 input!3411))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2921 (List!44012 List!44012) Unit!63421)

(assert (=> d!1215723 (= lt!1464420 (lemmaConcatTwoListThenFirstIsPrefix!2921 Nil!43888 input!3411))))

(assert (=> d!1215723 (validRegex!5442 (regex!7100 (h!49309 rules!3870)))))

(assert (=> d!1215723 (= (findLongestMatchInner!1466 (regex!7100 (h!49309 rules!3870)) Nil!43888 (size!32787 Nil!43888) input!3411 input!3411 (size!32787 input!3411)) lt!1464423)))

(declare-fun b!4094155 () Bool)

(assert (=> b!4094155 (= e!2540729 (>= (size!32787 (_1!24546 lt!1464423)) (size!32787 Nil!43888)))))

(declare-fun b!4094156 () Bool)

(declare-fun Unit!63425 () Unit!63421)

(assert (=> b!4094156 (= e!2540735 Unit!63425)))

(declare-fun lt!1464408 () Unit!63421)

(declare-fun call!289407 () Unit!63421)

(assert (=> b!4094156 (= lt!1464408 call!289407)))

(assert (=> b!4094156 call!289414))

(declare-fun lt!1464407 () Unit!63421)

(assert (=> b!4094156 (= lt!1464407 lt!1464408)))

(declare-fun lt!1464421 () Unit!63421)

(declare-fun call!289413 () Unit!63421)

(assert (=> b!4094156 (= lt!1464421 call!289413)))

(assert (=> b!4094156 (= input!3411 Nil!43888)))

(declare-fun lt!1464405 () Unit!63421)

(assert (=> b!4094156 (= lt!1464405 lt!1464421)))

(assert (=> b!4094156 false))

(declare-fun bm!289404 () Bool)

(assert (=> bm!289404 (= call!289407 (lemmaIsPrefixRefl!2698 input!3411 input!3411))))

(declare-fun call!289408 () Regex!12005)

(declare-fun lt!1464409 () List!44012)

(declare-fun bm!289405 () Bool)

(assert (=> bm!289405 (= call!289409 (findLongestMatchInner!1466 call!289408 lt!1464409 (+ (size!32787 Nil!43888) 1) call!289410 input!3411 (size!32787 input!3411)))))

(declare-fun b!4094157 () Bool)

(declare-fun c!705630 () Bool)

(declare-fun call!289412 () Bool)

(assert (=> b!4094157 (= c!705630 call!289412)))

(declare-fun lt!1464411 () Unit!63421)

(declare-fun lt!1464418 () Unit!63421)

(assert (=> b!4094157 (= lt!1464411 lt!1464418)))

(declare-fun lt!1464426 () C!24196)

(declare-fun lt!1464404 () List!44012)

(assert (=> b!4094157 (= (++!11506 (++!11506 Nil!43888 (Cons!43888 lt!1464426 Nil!43888)) lt!1464404) input!3411)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1274 (List!44012 C!24196 List!44012 List!44012) Unit!63421)

(assert (=> b!4094157 (= lt!1464418 (lemmaMoveElementToOtherListKeepsConcatEq!1274 Nil!43888 lt!1464426 lt!1464404 input!3411))))

(assert (=> b!4094157 (= lt!1464404 (tail!6387 input!3411))))

(assert (=> b!4094157 (= lt!1464426 (head!8653 input!3411))))

(declare-fun lt!1464417 () Unit!63421)

(declare-fun lt!1464412 () Unit!63421)

(assert (=> b!4094157 (= lt!1464417 lt!1464412)))

(assert (=> b!4094157 (isPrefix!4147 (++!11506 Nil!43888 (Cons!43888 (head!8653 (getSuffix!2503 input!3411 Nil!43888)) Nil!43888)) input!3411)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!656 (List!44012 List!44012) Unit!63421)

(assert (=> b!4094157 (= lt!1464412 (lemmaAddHeadSuffixToPrefixStillPrefix!656 Nil!43888 input!3411))))

(declare-fun lt!1464410 () Unit!63421)

(declare-fun lt!1464415 () Unit!63421)

(assert (=> b!4094157 (= lt!1464410 lt!1464415)))

(assert (=> b!4094157 (= lt!1464415 (lemmaAddHeadSuffixToPrefixStillPrefix!656 Nil!43888 input!3411))))

(assert (=> b!4094157 (= lt!1464409 (++!11506 Nil!43888 (Cons!43888 (head!8653 input!3411) Nil!43888)))))

(declare-fun lt!1464430 () Unit!63421)

(assert (=> b!4094157 (= lt!1464430 e!2540735)))

(declare-fun c!705631 () Bool)

(assert (=> b!4094157 (= c!705631 (= (size!32787 Nil!43888) (size!32787 input!3411)))))

(declare-fun lt!1464429 () Unit!63421)

(declare-fun lt!1464403 () Unit!63421)

(assert (=> b!4094157 (= lt!1464429 lt!1464403)))

(assert (=> b!4094157 (<= (size!32787 Nil!43888) (size!32787 input!3411))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!464 (List!44012 List!44012) Unit!63421)

(assert (=> b!4094157 (= lt!1464403 (lemmaIsPrefixThenSmallerEqSize!464 Nil!43888 input!3411))))

(assert (=> b!4094157 (= e!2540734 e!2540733)))

(declare-fun bm!289406 () Bool)

(declare-fun call!289411 () C!24196)

(assert (=> bm!289406 (= call!289411 (head!8653 input!3411))))

(declare-fun bm!289407 () Bool)

(assert (=> bm!289407 (= call!289412 (nullable!4242 (regex!7100 (h!49309 rules!3870))))))

(declare-fun b!4094158 () Bool)

(declare-fun c!705632 () Bool)

(assert (=> b!4094158 (= c!705632 call!289412)))

(declare-fun lt!1464425 () Unit!63421)

(declare-fun lt!1464414 () Unit!63421)

(assert (=> b!4094158 (= lt!1464425 lt!1464414)))

(assert (=> b!4094158 (= input!3411 Nil!43888)))

(assert (=> b!4094158 (= lt!1464414 call!289413)))

(declare-fun lt!1464424 () Unit!63421)

(declare-fun lt!1464422 () Unit!63421)

(assert (=> b!4094158 (= lt!1464424 lt!1464422)))

(assert (=> b!4094158 call!289414))

(assert (=> b!4094158 (= lt!1464422 call!289407)))

(assert (=> b!4094158 (= e!2540734 e!2540731)))

(declare-fun bm!289408 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!968 (List!44012 List!44012 List!44012) Unit!63421)

(assert (=> bm!289408 (= call!289413 (lemmaIsPrefixSameLengthThenSameList!968 input!3411 Nil!43888 input!3411))))

(declare-fun b!4094159 () Bool)

(assert (=> b!4094159 (= e!2540728 (tuple2!42825 Nil!43888 input!3411))))

(declare-fun b!4094160 () Bool)

(assert (=> b!4094160 (= e!2540731 (tuple2!42825 Nil!43888 input!3411))))

(declare-fun b!4094161 () Bool)

(assert (=> b!4094161 (= e!2540733 e!2540728)))

(assert (=> b!4094161 (= lt!1464428 call!289409)))

(declare-fun c!705634 () Bool)

(assert (=> b!4094161 (= c!705634 (isEmpty!26254 (_1!24546 lt!1464428)))))

(declare-fun bm!289409 () Bool)

(assert (=> bm!289409 (= call!289408 (derivativeStep!3643 (regex!7100 (h!49309 rules!3870)) call!289411))))

(assert (= (and d!1215723 c!705629) b!4094149))

(assert (= (and d!1215723 (not c!705629)) b!4094151))

(assert (= (and b!4094151 c!705633) b!4094158))

(assert (= (and b!4094151 (not c!705633)) b!4094157))

(assert (= (and b!4094158 c!705632) b!4094153))

(assert (= (and b!4094158 (not c!705632)) b!4094160))

(assert (= (and b!4094157 c!705631) b!4094156))

(assert (= (and b!4094157 (not c!705631)) b!4094148))

(assert (= (and b!4094157 c!705630) b!4094161))

(assert (= (and b!4094157 (not c!705630)) b!4094150))

(assert (= (and b!4094161 c!705634) b!4094159))

(assert (= (and b!4094161 (not c!705634)) b!4094152))

(assert (= (or b!4094161 b!4094150) bm!289406))

(assert (= (or b!4094161 b!4094150) bm!289403))

(assert (= (or b!4094161 b!4094150) bm!289409))

(assert (= (or b!4094161 b!4094150) bm!289405))

(assert (= (or b!4094158 b!4094156) bm!289402))

(assert (= (or b!4094158 b!4094156) bm!289404))

(assert (= (or b!4094158 b!4094157) bm!289407))

(assert (= (or b!4094158 b!4094156) bm!289408))

(assert (= (and d!1215723 res!1673450) b!4094154))

(assert (= (and b!4094154 (not res!1673451)) b!4094155))

(declare-fun m!4701209 () Bool)

(assert (=> bm!289408 m!4701209))

(declare-fun m!4701211 () Bool)

(assert (=> b!4094161 m!4701211))

(declare-fun m!4701213 () Bool)

(assert (=> b!4094157 m!4701213))

(declare-fun m!4701215 () Bool)

(assert (=> b!4094157 m!4701215))

(assert (=> b!4094157 m!4700557))

(declare-fun m!4701217 () Bool)

(assert (=> b!4094157 m!4701217))

(declare-fun m!4701219 () Bool)

(assert (=> b!4094157 m!4701219))

(declare-fun m!4701221 () Bool)

(assert (=> b!4094157 m!4701221))

(assert (=> b!4094157 m!4701013))

(declare-fun m!4701223 () Bool)

(assert (=> b!4094157 m!4701223))

(declare-fun m!4701225 () Bool)

(assert (=> b!4094157 m!4701225))

(declare-fun m!4701227 () Bool)

(assert (=> b!4094157 m!4701227))

(assert (=> b!4094157 m!4701011))

(assert (=> b!4094157 m!4701217))

(assert (=> b!4094157 m!4700559))

(assert (=> b!4094157 m!4701223))

(declare-fun m!4701229 () Bool)

(assert (=> b!4094157 m!4701229))

(declare-fun m!4701231 () Bool)

(assert (=> b!4094157 m!4701231))

(assert (=> b!4094157 m!4701213))

(assert (=> bm!289403 m!4701013))

(declare-fun m!4701233 () Bool)

(assert (=> b!4094155 m!4701233))

(assert (=> b!4094155 m!4700559))

(assert (=> bm!289407 m!4700947))

(assert (=> bm!289405 m!4700557))

(declare-fun m!4701235 () Bool)

(assert (=> bm!289405 m!4701235))

(declare-fun m!4701237 () Bool)

(assert (=> bm!289409 m!4701237))

(declare-fun m!4701239 () Bool)

(assert (=> d!1215723 m!4701239))

(declare-fun m!4701241 () Bool)

(assert (=> d!1215723 m!4701241))

(declare-fun m!4701243 () Bool)

(assert (=> d!1215723 m!4701243))

(assert (=> d!1215723 m!4700939))

(assert (=> d!1215723 m!4701239))

(declare-fun m!4701245 () Bool)

(assert (=> d!1215723 m!4701245))

(declare-fun m!4701247 () Bool)

(assert (=> d!1215723 m!4701247))

(declare-fun m!4701249 () Bool)

(assert (=> d!1215723 m!4701249))

(assert (=> d!1215723 m!4701217))

(assert (=> bm!289404 m!4700649))

(declare-fun m!4701251 () Bool)

(assert (=> b!4094154 m!4701251))

(assert (=> bm!289402 m!4700647))

(assert (=> bm!289406 m!4701011))

(assert (=> b!4093578 d!1215723))

(declare-fun d!1215753 () Bool)

(declare-fun lt!1464433 () Int)

(assert (=> d!1215753 (= lt!1464433 (size!32787 (list!16292 (seqFromList!5317 (_1!24546 lt!1464182)))))))

(declare-fun size!32790 (Conc!13311) Int)

(assert (=> d!1215753 (= lt!1464433 (size!32790 (c!705491 (seqFromList!5317 (_1!24546 lt!1464182)))))))

(assert (=> d!1215753 (= (size!32789 (seqFromList!5317 (_1!24546 lt!1464182))) lt!1464433)))

(declare-fun bs!593504 () Bool)

(assert (= bs!593504 d!1215753))

(assert (=> bs!593504 m!4700573))

(declare-fun m!4701253 () Bool)

(assert (=> bs!593504 m!4701253))

(assert (=> bs!593504 m!4701253))

(declare-fun m!4701255 () Bool)

(assert (=> bs!593504 m!4701255))

(declare-fun m!4701257 () Bool)

(assert (=> bs!593504 m!4701257))

(assert (=> b!4093578 d!1215753))

(declare-fun bs!593505 () Bool)

(declare-fun d!1215755 () Bool)

(assert (= bs!593505 (and d!1215755 d!1215507)))

(declare-fun lambda!128107 () Int)

(assert (=> bs!593505 (= (and (= (toChars!9555 (transformation!7100 (h!49309 rules!3870))) (toChars!9555 (transformation!7100 r!4213))) (= (toValue!9696 (transformation!7100 (h!49309 rules!3870))) (toValue!9696 (transformation!7100 r!4213)))) (= lambda!128107 lambda!128081))))

(declare-fun b!4094162 () Bool)

(declare-fun e!2540736 () Bool)

(assert (=> b!4094162 (= e!2540736 true)))

(assert (=> d!1215755 e!2540736))

(assert (= d!1215755 b!4094162))

(assert (=> b!4094162 (< (dynLambda!18805 order!23109 (toValue!9696 (transformation!7100 (h!49309 rules!3870)))) (dynLambda!18806 order!23111 lambda!128107))))

(assert (=> b!4094162 (< (dynLambda!18807 order!23113 (toChars!9555 (transformation!7100 (h!49309 rules!3870)))) (dynLambda!18806 order!23111 lambda!128107))))

(assert (=> d!1215755 (= (list!16292 (dynLambda!18804 (toChars!9555 (transformation!7100 (h!49309 rules!3870))) (dynLambda!18808 (toValue!9696 (transformation!7100 (h!49309 rules!3870))) (seqFromList!5317 (_1!24546 lt!1464182))))) (list!16292 (seqFromList!5317 (_1!24546 lt!1464182))))))

(declare-fun lt!1464434 () Unit!63421)

(assert (=> d!1215755 (= lt!1464434 (ForallOf!893 lambda!128107 (seqFromList!5317 (_1!24546 lt!1464182))))))

(assert (=> d!1215755 (= (lemmaSemiInverse!2067 (transformation!7100 (h!49309 rules!3870)) (seqFromList!5317 (_1!24546 lt!1464182))) lt!1464434)))

(declare-fun b_lambda!120151 () Bool)

(assert (=> (not b_lambda!120151) (not d!1215755)))

(declare-fun tb!246309 () Bool)

(declare-fun t!339100 () Bool)

(assert (=> (and b!4093390 (= (toChars!9555 (transformation!7100 r!4213)) (toChars!9555 (transformation!7100 (h!49309 rules!3870)))) t!339100) tb!246309))

(declare-fun b!4094163 () Bool)

(declare-fun tp!1239175 () Bool)

(declare-fun e!2540737 () Bool)

(assert (=> b!4094163 (= e!2540737 (and (inv!58612 (c!705491 (dynLambda!18804 (toChars!9555 (transformation!7100 (h!49309 rules!3870))) (dynLambda!18808 (toValue!9696 (transformation!7100 (h!49309 rules!3870))) (seqFromList!5317 (_1!24546 lt!1464182)))))) tp!1239175))))

(declare-fun result!298866 () Bool)

(assert (=> tb!246309 (= result!298866 (and (inv!58613 (dynLambda!18804 (toChars!9555 (transformation!7100 (h!49309 rules!3870))) (dynLambda!18808 (toValue!9696 (transformation!7100 (h!49309 rules!3870))) (seqFromList!5317 (_1!24546 lt!1464182))))) e!2540737))))

(assert (= tb!246309 b!4094163))

(declare-fun m!4701259 () Bool)

(assert (=> b!4094163 m!4701259))

(declare-fun m!4701261 () Bool)

(assert (=> tb!246309 m!4701261))

(assert (=> d!1215755 t!339100))

(declare-fun b_and!315733 () Bool)

(assert (= b_and!315685 (and (=> t!339100 result!298866) b_and!315733)))

(declare-fun t!339102 () Bool)

(declare-fun tb!246311 () Bool)

(assert (=> (and b!4093398 (= (toChars!9555 (transformation!7100 (h!49309 rules!3870))) (toChars!9555 (transformation!7100 (h!49309 rules!3870)))) t!339102) tb!246311))

(declare-fun result!298868 () Bool)

(assert (= result!298868 result!298866))

(assert (=> d!1215755 t!339102))

(declare-fun b_and!315735 () Bool)

(assert (= b_and!315687 (and (=> t!339102 result!298868) b_and!315735)))

(declare-fun t!339104 () Bool)

(declare-fun tb!246313 () Bool)

(assert (=> (and b!4093780 (= (toChars!9555 (transformation!7100 (h!49309 (t!339012 rules!3870)))) (toChars!9555 (transformation!7100 (h!49309 rules!3870)))) t!339104) tb!246313))

(declare-fun result!298870 () Bool)

(assert (= result!298870 result!298866))

(assert (=> d!1215755 t!339104))

(declare-fun b_and!315737 () Bool)

(assert (= b_and!315689 (and (=> t!339104 result!298870) b_and!315737)))

(declare-fun b_lambda!120153 () Bool)

(assert (=> (not b_lambda!120153) (not d!1215755)))

(assert (=> d!1215755 t!339082))

(declare-fun b_and!315739 () Bool)

(assert (= b_and!315709 (and (=> t!339082 result!298848) b_and!315739)))

(assert (=> d!1215755 t!339084))

(declare-fun b_and!315741 () Bool)

(assert (= b_and!315711 (and (=> t!339084 result!298850) b_and!315741)))

(assert (=> d!1215755 t!339086))

(declare-fun b_and!315743 () Bool)

(assert (= b_and!315713 (and (=> t!339086 result!298852) b_and!315743)))

(assert (=> d!1215755 m!4701135))

(declare-fun m!4701263 () Bool)

(assert (=> d!1215755 m!4701263))

(assert (=> d!1215755 m!4700573))

(declare-fun m!4701265 () Bool)

(assert (=> d!1215755 m!4701265))

(assert (=> d!1215755 m!4700573))

(assert (=> d!1215755 m!4701135))

(assert (=> d!1215755 m!4701263))

(declare-fun m!4701267 () Bool)

(assert (=> d!1215755 m!4701267))

(assert (=> d!1215755 m!4700573))

(assert (=> d!1215755 m!4701253))

(assert (=> b!4093578 d!1215755))

(declare-fun d!1215757 () Bool)

(assert (=> d!1215757 (= (isEmpty!26254 (_1!24546 (findLongestMatchInner!1466 (regex!7100 (h!49309 rules!3870)) Nil!43888 (size!32787 Nil!43888) input!3411 input!3411 (size!32787 input!3411)))) ((_ is Nil!43888) (_1!24546 (findLongestMatchInner!1466 (regex!7100 (h!49309 rules!3870)) Nil!43888 (size!32787 Nil!43888) input!3411 input!3411 (size!32787 input!3411)))))))

(assert (=> b!4093578 d!1215757))

(declare-fun d!1215759 () Bool)

(declare-fun e!2540752 () Bool)

(assert (=> d!1215759 e!2540752))

(declare-fun res!1673454 () Bool)

(assert (=> d!1215759 (=> res!1673454 e!2540752)))

(assert (=> d!1215759 (= res!1673454 (isEmpty!26254 (_1!24546 (findLongestMatchInner!1466 (regex!7100 (h!49309 rules!3870)) Nil!43888 (size!32787 Nil!43888) input!3411 input!3411 (size!32787 input!3411)))))))

(declare-fun lt!1464493 () Unit!63421)

(declare-fun choose!25013 (Regex!12005 List!44012) Unit!63421)

(assert (=> d!1215759 (= lt!1464493 (choose!25013 (regex!7100 (h!49309 rules!3870)) input!3411))))

(assert (=> d!1215759 (validRegex!5442 (regex!7100 (h!49309 rules!3870)))))

(assert (=> d!1215759 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1439 (regex!7100 (h!49309 rules!3870)) input!3411) lt!1464493)))

(declare-fun b!4094190 () Bool)

(assert (=> b!4094190 (= e!2540752 (matchR!5946 (regex!7100 (h!49309 rules!3870)) (_1!24546 (findLongestMatchInner!1466 (regex!7100 (h!49309 rules!3870)) Nil!43888 (size!32787 Nil!43888) input!3411 input!3411 (size!32787 input!3411)))))))

(assert (= (and d!1215759 (not res!1673454)) b!4094190))

(assert (=> d!1215759 m!4700559))

(assert (=> d!1215759 m!4700557))

(assert (=> d!1215759 m!4700561))

(assert (=> d!1215759 m!4700559))

(assert (=> d!1215759 m!4700557))

(declare-fun m!4701269 () Bool)

(assert (=> d!1215759 m!4701269))

(assert (=> d!1215759 m!4700939))

(assert (=> d!1215759 m!4700577))

(assert (=> b!4094190 m!4700559))

(assert (=> b!4094190 m!4700557))

(assert (=> b!4094190 m!4700559))

(assert (=> b!4094190 m!4700557))

(assert (=> b!4094190 m!4700561))

(assert (=> b!4094190 m!4700563))

(assert (=> b!4093578 d!1215759))

(declare-fun d!1215761 () Bool)

(assert (=> d!1215761 (= (seqFromList!5317 (_1!24546 lt!1464182)) (fromListB!2440 (_1!24546 lt!1464182)))))

(declare-fun bs!593506 () Bool)

(assert (= bs!593506 d!1215761))

(declare-fun m!4701271 () Bool)

(assert (=> bs!593506 m!4701271))

(assert (=> b!4093578 d!1215761))

(declare-fun b!4094191 () Bool)

(declare-fun res!1673455 () Bool)

(declare-fun e!2540754 () Bool)

(assert (=> b!4094191 (=> res!1673455 e!2540754)))

(declare-fun e!2540755 () Bool)

(assert (=> b!4094191 (= res!1673455 e!2540755)))

(declare-fun res!1673462 () Bool)

(assert (=> b!4094191 (=> (not res!1673462) (not e!2540755))))

(declare-fun lt!1464494 () Bool)

(assert (=> b!4094191 (= res!1673462 lt!1464494)))

(declare-fun b!4094192 () Bool)

(declare-fun e!2540758 () Bool)

(assert (=> b!4094192 (= e!2540758 (matchR!5946 (derivativeStep!3643 (regex!7100 (h!49309 rules!3870)) (head!8653 (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464180)))))) (tail!6387 (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464180)))))))))

(declare-fun b!4094193 () Bool)

(declare-fun e!2540753 () Bool)

(declare-fun call!289427 () Bool)

(assert (=> b!4094193 (= e!2540753 (= lt!1464494 call!289427))))

(declare-fun b!4094194 () Bool)

(declare-fun res!1673459 () Bool)

(declare-fun e!2540759 () Bool)

(assert (=> b!4094194 (=> res!1673459 e!2540759)))

(assert (=> b!4094194 (= res!1673459 (not (isEmpty!26254 (tail!6387 (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464180))))))))))

(declare-fun bm!289422 () Bool)

(assert (=> bm!289422 (= call!289427 (isEmpty!26254 (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464180))))))))

(declare-fun b!4094196 () Bool)

(declare-fun res!1673456 () Bool)

(assert (=> b!4094196 (=> (not res!1673456) (not e!2540755))))

(assert (=> b!4094196 (= res!1673456 (isEmpty!26254 (tail!6387 (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464180)))))))))

(declare-fun b!4094197 () Bool)

(declare-fun e!2540756 () Bool)

(assert (=> b!4094197 (= e!2540753 e!2540756)))

(declare-fun c!705647 () Bool)

(assert (=> b!4094197 (= c!705647 ((_ is EmptyLang!12005) (regex!7100 (h!49309 rules!3870))))))

(declare-fun b!4094198 () Bool)

(assert (=> b!4094198 (= e!2540755 (= (head!8653 (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464180))))) (c!705490 (regex!7100 (h!49309 rules!3870)))))))

(declare-fun b!4094199 () Bool)

(assert (=> b!4094199 (= e!2540758 (nullable!4242 (regex!7100 (h!49309 rules!3870))))))

(declare-fun b!4094200 () Bool)

(declare-fun res!1673460 () Bool)

(assert (=> b!4094200 (=> (not res!1673460) (not e!2540755))))

(assert (=> b!4094200 (= res!1673460 (not call!289427))))

(declare-fun b!4094201 () Bool)

(declare-fun e!2540757 () Bool)

(assert (=> b!4094201 (= e!2540754 e!2540757)))

(declare-fun res!1673457 () Bool)

(assert (=> b!4094201 (=> (not res!1673457) (not e!2540757))))

(assert (=> b!4094201 (= res!1673457 (not lt!1464494))))

(declare-fun b!4094202 () Bool)

(declare-fun res!1673458 () Bool)

(assert (=> b!4094202 (=> res!1673458 e!2540754)))

(assert (=> b!4094202 (= res!1673458 (not ((_ is ElementMatch!12005) (regex!7100 (h!49309 rules!3870)))))))

(assert (=> b!4094202 (= e!2540756 e!2540754)))

(declare-fun b!4094203 () Bool)

(assert (=> b!4094203 (= e!2540759 (not (= (head!8653 (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464180))))) (c!705490 (regex!7100 (h!49309 rules!3870))))))))

(declare-fun b!4094204 () Bool)

(assert (=> b!4094204 (= e!2540757 e!2540759)))

(declare-fun res!1673461 () Bool)

(assert (=> b!4094204 (=> res!1673461 e!2540759)))

(assert (=> b!4094204 (= res!1673461 call!289427)))

(declare-fun b!4094195 () Bool)

(assert (=> b!4094195 (= e!2540756 (not lt!1464494))))

(declare-fun d!1215763 () Bool)

(assert (=> d!1215763 e!2540753))

(declare-fun c!705648 () Bool)

(assert (=> d!1215763 (= c!705648 ((_ is EmptyExpr!12005) (regex!7100 (h!49309 rules!3870))))))

(assert (=> d!1215763 (= lt!1464494 e!2540758)))

(declare-fun c!705649 () Bool)

(assert (=> d!1215763 (= c!705649 (isEmpty!26254 (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464180))))))))

(assert (=> d!1215763 (validRegex!5442 (regex!7100 (h!49309 rules!3870)))))

(assert (=> d!1215763 (= (matchR!5946 (regex!7100 (h!49309 rules!3870)) (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464180))))) lt!1464494)))

(assert (= (and d!1215763 c!705649) b!4094199))

(assert (= (and d!1215763 (not c!705649)) b!4094192))

(assert (= (and d!1215763 c!705648) b!4094193))

(assert (= (and d!1215763 (not c!705648)) b!4094197))

(assert (= (and b!4094197 c!705647) b!4094195))

(assert (= (and b!4094197 (not c!705647)) b!4094202))

(assert (= (and b!4094202 (not res!1673458)) b!4094191))

(assert (= (and b!4094191 res!1673462) b!4094200))

(assert (= (and b!4094200 res!1673460) b!4094196))

(assert (= (and b!4094196 res!1673456) b!4094198))

(assert (= (and b!4094191 (not res!1673455)) b!4094201))

(assert (= (and b!4094201 res!1673457) b!4094204))

(assert (= (and b!4094204 (not res!1673461)) b!4094194))

(assert (= (and b!4094194 (not res!1673459)) b!4094203))

(assert (= (or b!4094193 b!4094200 b!4094204) bm!289422))

(assert (=> bm!289422 m!4700587))

(declare-fun m!4701273 () Bool)

(assert (=> bm!289422 m!4701273))

(assert (=> b!4094194 m!4700587))

(declare-fun m!4701275 () Bool)

(assert (=> b!4094194 m!4701275))

(assert (=> b!4094194 m!4701275))

(declare-fun m!4701277 () Bool)

(assert (=> b!4094194 m!4701277))

(assert (=> b!4094196 m!4700587))

(assert (=> b!4094196 m!4701275))

(assert (=> b!4094196 m!4701275))

(assert (=> b!4094196 m!4701277))

(assert (=> b!4094192 m!4700587))

(declare-fun m!4701279 () Bool)

(assert (=> b!4094192 m!4701279))

(assert (=> b!4094192 m!4701279))

(declare-fun m!4701281 () Bool)

(assert (=> b!4094192 m!4701281))

(assert (=> b!4094192 m!4700587))

(assert (=> b!4094192 m!4701275))

(assert (=> b!4094192 m!4701281))

(assert (=> b!4094192 m!4701275))

(declare-fun m!4701283 () Bool)

(assert (=> b!4094192 m!4701283))

(assert (=> b!4094199 m!4700947))

(assert (=> b!4094203 m!4700587))

(assert (=> b!4094203 m!4701279))

(assert (=> b!4094198 m!4700587))

(assert (=> b!4094198 m!4701279))

(assert (=> d!1215763 m!4700587))

(assert (=> d!1215763 m!4701273))

(assert (=> d!1215763 m!4700939))

(assert (=> b!4093576 d!1215763))

(declare-fun d!1215765 () Bool)

(assert (=> d!1215765 (= (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464180)))) (list!16293 (c!705491 (charsOf!4860 (_1!24544 (get!14394 lt!1464180))))))))

(declare-fun bs!593507 () Bool)

(assert (= bs!593507 d!1215765))

(declare-fun m!4701285 () Bool)

(assert (=> bs!593507 m!4701285))

(assert (=> b!4093576 d!1215765))

(declare-fun d!1215767 () Bool)

(declare-fun lt!1464495 () BalanceConc!26216)

(assert (=> d!1215767 (= (list!16292 lt!1464495) (originalCharacters!7694 (_1!24544 (get!14394 lt!1464180))))))

(assert (=> d!1215767 (= lt!1464495 (dynLambda!18804 (toChars!9555 (transformation!7100 (rule!10246 (_1!24544 (get!14394 lt!1464180))))) (value!223002 (_1!24544 (get!14394 lt!1464180)))))))

(assert (=> d!1215767 (= (charsOf!4860 (_1!24544 (get!14394 lt!1464180))) lt!1464495)))

(declare-fun b_lambda!120155 () Bool)

(assert (=> (not b_lambda!120155) (not d!1215767)))

(declare-fun t!339106 () Bool)

(declare-fun tb!246315 () Bool)

(assert (=> (and b!4093390 (= (toChars!9555 (transformation!7100 r!4213)) (toChars!9555 (transformation!7100 (rule!10246 (_1!24544 (get!14394 lt!1464180)))))) t!339106) tb!246315))

(declare-fun b!4094205 () Bool)

(declare-fun e!2540760 () Bool)

(declare-fun tp!1239176 () Bool)

(assert (=> b!4094205 (= e!2540760 (and (inv!58612 (c!705491 (dynLambda!18804 (toChars!9555 (transformation!7100 (rule!10246 (_1!24544 (get!14394 lt!1464180))))) (value!223002 (_1!24544 (get!14394 lt!1464180)))))) tp!1239176))))

(declare-fun result!298872 () Bool)

(assert (=> tb!246315 (= result!298872 (and (inv!58613 (dynLambda!18804 (toChars!9555 (transformation!7100 (rule!10246 (_1!24544 (get!14394 lt!1464180))))) (value!223002 (_1!24544 (get!14394 lt!1464180))))) e!2540760))))

(assert (= tb!246315 b!4094205))

(declare-fun m!4701287 () Bool)

(assert (=> b!4094205 m!4701287))

(declare-fun m!4701289 () Bool)

(assert (=> tb!246315 m!4701289))

(assert (=> d!1215767 t!339106))

(declare-fun b_and!315745 () Bool)

(assert (= b_and!315733 (and (=> t!339106 result!298872) b_and!315745)))

(declare-fun t!339108 () Bool)

(declare-fun tb!246317 () Bool)

(assert (=> (and b!4093398 (= (toChars!9555 (transformation!7100 (h!49309 rules!3870))) (toChars!9555 (transformation!7100 (rule!10246 (_1!24544 (get!14394 lt!1464180)))))) t!339108) tb!246317))

(declare-fun result!298874 () Bool)

(assert (= result!298874 result!298872))

(assert (=> d!1215767 t!339108))

(declare-fun b_and!315747 () Bool)

(assert (= b_and!315735 (and (=> t!339108 result!298874) b_and!315747)))

(declare-fun t!339110 () Bool)

(declare-fun tb!246319 () Bool)

(assert (=> (and b!4093780 (= (toChars!9555 (transformation!7100 (h!49309 (t!339012 rules!3870)))) (toChars!9555 (transformation!7100 (rule!10246 (_1!24544 (get!14394 lt!1464180)))))) t!339110) tb!246319))

(declare-fun result!298876 () Bool)

(assert (= result!298876 result!298872))

(assert (=> d!1215767 t!339110))

(declare-fun b_and!315749 () Bool)

(assert (= b_and!315737 (and (=> t!339110 result!298876) b_and!315749)))

(declare-fun m!4701291 () Bool)

(assert (=> d!1215767 m!4701291))

(declare-fun m!4701293 () Bool)

(assert (=> d!1215767 m!4701293))

(assert (=> b!4093576 d!1215767))

(assert (=> b!4093576 d!1215581))

(declare-fun d!1215769 () Bool)

(declare-fun res!1673471 () Bool)

(declare-fun e!2540769 () Bool)

(assert (=> d!1215769 (=> res!1673471 e!2540769)))

(assert (=> d!1215769 (= res!1673471 ((_ is Nil!43889) (t!339012 rules!3870)))))

(assert (=> d!1215769 (= (noDuplicateTag!2789 thiss!26199 (t!339012 rules!3870) Nil!43891) e!2540769)))

(declare-fun b!4094214 () Bool)

(declare-fun e!2540770 () Bool)

(assert (=> b!4094214 (= e!2540769 e!2540770)))

(declare-fun res!1673472 () Bool)

(assert (=> b!4094214 (=> (not res!1673472) (not e!2540770))))

(declare-fun contains!8784 (List!44015 String!50400) Bool)

(assert (=> b!4094214 (= res!1673472 (not (contains!8784 Nil!43891 (tag!7960 (h!49309 (t!339012 rules!3870))))))))

(declare-fun b!4094215 () Bool)

(assert (=> b!4094215 (= e!2540770 (noDuplicateTag!2789 thiss!26199 (t!339012 (t!339012 rules!3870)) (Cons!43891 (tag!7960 (h!49309 (t!339012 rules!3870))) Nil!43891)))))

(assert (= (and d!1215769 (not res!1673471)) b!4094214))

(assert (= (and b!4094214 res!1673472) b!4094215))

(declare-fun m!4701295 () Bool)

(assert (=> b!4094214 m!4701295))

(declare-fun m!4701297 () Bool)

(assert (=> b!4094215 m!4701297))

(assert (=> b!4093583 d!1215769))

(assert (=> d!1215473 d!1215639))

(declare-fun d!1215771 () Bool)

(declare-fun res!1673473 () Bool)

(declare-fun e!2540771 () Bool)

(assert (=> d!1215771 (=> res!1673473 e!2540771)))

(assert (=> d!1215771 (= res!1673473 ((_ is Nil!43889) rules!3870))))

(assert (=> d!1215771 (= (noDuplicateTag!2789 thiss!26199 rules!3870 Nil!43891) e!2540771)))

(declare-fun b!4094216 () Bool)

(declare-fun e!2540772 () Bool)

(assert (=> b!4094216 (= e!2540771 e!2540772)))

(declare-fun res!1673474 () Bool)

(assert (=> b!4094216 (=> (not res!1673474) (not e!2540772))))

(assert (=> b!4094216 (= res!1673474 (not (contains!8784 Nil!43891 (tag!7960 (h!49309 rules!3870)))))))

(declare-fun b!4094217 () Bool)

(assert (=> b!4094217 (= e!2540772 (noDuplicateTag!2789 thiss!26199 (t!339012 rules!3870) (Cons!43891 (tag!7960 (h!49309 rules!3870)) Nil!43891)))))

(assert (= (and d!1215771 (not res!1673473)) b!4094216))

(assert (= (and b!4094216 res!1673474) b!4094217))

(declare-fun m!4701299 () Bool)

(assert (=> b!4094216 m!4701299))

(declare-fun m!4701301 () Bool)

(assert (=> b!4094217 m!4701301))

(assert (=> b!4093585 d!1215771))

(declare-fun b!4094220 () Bool)

(declare-fun res!1673475 () Bool)

(declare-fun e!2540773 () Bool)

(assert (=> b!4094220 (=> (not res!1673475) (not e!2540773))))

(declare-fun lt!1464496 () List!44012)

(assert (=> b!4094220 (= res!1673475 (= (size!32787 lt!1464496) (+ (size!32787 (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464180))))) (size!32787 (_2!24544 (get!14394 lt!1464180))))))))

(declare-fun b!4094218 () Bool)

(declare-fun e!2540774 () List!44012)

(assert (=> b!4094218 (= e!2540774 (_2!24544 (get!14394 lt!1464180)))))

(declare-fun b!4094221 () Bool)

(assert (=> b!4094221 (= e!2540773 (or (not (= (_2!24544 (get!14394 lt!1464180)) Nil!43888)) (= lt!1464496 (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464180)))))))))

(declare-fun d!1215773 () Bool)

(assert (=> d!1215773 e!2540773))

(declare-fun res!1673476 () Bool)

(assert (=> d!1215773 (=> (not res!1673476) (not e!2540773))))

(assert (=> d!1215773 (= res!1673476 (= (content!6771 lt!1464496) ((_ map or) (content!6771 (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464180))))) (content!6771 (_2!24544 (get!14394 lt!1464180))))))))

(assert (=> d!1215773 (= lt!1464496 e!2540774)))

(declare-fun c!705650 () Bool)

(assert (=> d!1215773 (= c!705650 ((_ is Nil!43888) (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464180))))))))

(assert (=> d!1215773 (= (++!11506 (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464180)))) (_2!24544 (get!14394 lt!1464180))) lt!1464496)))

(declare-fun b!4094219 () Bool)

(assert (=> b!4094219 (= e!2540774 (Cons!43888 (h!49308 (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464180))))) (++!11506 (t!339011 (list!16292 (charsOf!4860 (_1!24544 (get!14394 lt!1464180))))) (_2!24544 (get!14394 lt!1464180)))))))

(assert (= (and d!1215773 c!705650) b!4094218))

(assert (= (and d!1215773 (not c!705650)) b!4094219))

(assert (= (and d!1215773 res!1673476) b!4094220))

(assert (= (and b!4094220 res!1673475) b!4094221))

(declare-fun m!4701303 () Bool)

(assert (=> b!4094220 m!4701303))

(assert (=> b!4094220 m!4700587))

(declare-fun m!4701305 () Bool)

(assert (=> b!4094220 m!4701305))

(assert (=> b!4094220 m!4700555))

(declare-fun m!4701307 () Bool)

(assert (=> d!1215773 m!4701307))

(assert (=> d!1215773 m!4700587))

(declare-fun m!4701309 () Bool)

(assert (=> d!1215773 m!4701309))

(declare-fun m!4701311 () Bool)

(assert (=> d!1215773 m!4701311))

(declare-fun m!4701313 () Bool)

(assert (=> b!4094219 m!4701313))

(assert (=> b!4093574 d!1215773))

(assert (=> b!4093574 d!1215765))

(assert (=> b!4093574 d!1215767))

(assert (=> b!4093574 d!1215581))

(assert (=> d!1215489 d!1215487))

(declare-fun d!1215775 () Bool)

(assert (=> d!1215775 (rulesInvariant!6032 thiss!26199 (t!339012 rules!3870))))

(assert (=> d!1215775 true))

(declare-fun _$66!602 () Unit!63421)

(assert (=> d!1215775 (= (choose!25009 thiss!26199 (h!49309 rules!3870) (t!339012 rules!3870)) _$66!602)))

(declare-fun bs!593508 () Bool)

(assert (= bs!593508 d!1215775))

(assert (=> bs!593508 m!4700433))

(assert (=> d!1215489 d!1215775))

(declare-fun d!1215777 () Bool)

(declare-fun res!1673477 () Bool)

(declare-fun e!2540775 () Bool)

(assert (=> d!1215777 (=> (not res!1673477) (not e!2540775))))

(assert (=> d!1215777 (= res!1673477 (rulesValid!2788 thiss!26199 (Cons!43889 (h!49309 rules!3870) (t!339012 rules!3870))))))

(assert (=> d!1215777 (= (rulesInvariant!6032 thiss!26199 (Cons!43889 (h!49309 rules!3870) (t!339012 rules!3870))) e!2540775)))

(declare-fun b!4094222 () Bool)

(assert (=> b!4094222 (= e!2540775 (noDuplicateTag!2789 thiss!26199 (Cons!43889 (h!49309 rules!3870) (t!339012 rules!3870)) Nil!43891))))

(assert (= (and d!1215777 res!1673477) b!4094222))

(declare-fun m!4701315 () Bool)

(assert (=> d!1215777 m!4701315))

(declare-fun m!4701317 () Bool)

(assert (=> b!4094222 m!4701317))

(assert (=> d!1215489 d!1215777))

(declare-fun d!1215779 () Bool)

(declare-fun lt!1464497 () Int)

(assert (=> d!1215779 (>= lt!1464497 0)))

(declare-fun e!2540776 () Int)

(assert (=> d!1215779 (= lt!1464497 e!2540776)))

(declare-fun c!705651 () Bool)

(assert (=> d!1215779 (= c!705651 ((_ is Nil!43888) (originalCharacters!7694 lt!1464134)))))

(assert (=> d!1215779 (= (size!32787 (originalCharacters!7694 lt!1464134)) lt!1464497)))

(declare-fun b!4094223 () Bool)

(assert (=> b!4094223 (= e!2540776 0)))

(declare-fun b!4094224 () Bool)

(assert (=> b!4094224 (= e!2540776 (+ 1 (size!32787 (t!339011 (originalCharacters!7694 lt!1464134)))))))

(assert (= (and d!1215779 c!705651) b!4094223))

(assert (= (and d!1215779 (not c!705651)) b!4094224))

(declare-fun m!4701319 () Bool)

(assert (=> b!4094224 m!4701319))

(assert (=> b!4093515 d!1215779))

(declare-fun bs!593509 () Bool)

(declare-fun d!1215781 () Bool)

(assert (= bs!593509 (and d!1215781 d!1215603)))

(declare-fun lambda!128108 () Int)

(assert (=> bs!593509 (= (= (toValue!9696 (transformation!7100 r!4213)) (toValue!9696 (transformation!7100 (h!49309 rules!3870)))) (= lambda!128108 lambda!128084))))

(assert (=> d!1215781 true))

(assert (=> d!1215781 (< (dynLambda!18805 order!23109 (toValue!9696 (transformation!7100 r!4213))) (dynLambda!18809 order!23115 lambda!128108))))

(assert (=> d!1215781 (= (equivClasses!2952 (toChars!9555 (transformation!7100 r!4213)) (toValue!9696 (transformation!7100 r!4213))) (Forall2!1117 lambda!128108))))

(declare-fun bs!593510 () Bool)

(assert (= bs!593510 d!1215781))

(declare-fun m!4701321 () Bool)

(assert (=> bs!593510 m!4701321))

(assert (=> b!4093411 d!1215781))

(assert (=> bm!289349 d!1215483))

(assert (=> b!4093502 d!1215579))

(declare-fun d!1215783 () Bool)

(declare-fun c!705660 () Bool)

(assert (=> d!1215783 (= c!705660 ((_ is Nil!43888) lt!1464190))))

(declare-fun e!2540787 () (InoxSet C!24196))

(assert (=> d!1215783 (= (content!6771 lt!1464190) e!2540787)))

(declare-fun b!4094243 () Bool)

(assert (=> b!4094243 (= e!2540787 ((as const (Array C!24196 Bool)) false))))

(declare-fun b!4094244 () Bool)

(assert (=> b!4094244 (= e!2540787 ((_ map or) (store ((as const (Array C!24196 Bool)) false) (h!49308 lt!1464190) true) (content!6771 (t!339011 lt!1464190))))))

(assert (= (and d!1215783 c!705660) b!4094243))

(assert (= (and d!1215783 (not c!705660)) b!4094244))

(declare-fun m!4701323 () Bool)

(assert (=> b!4094244 m!4701323))

(declare-fun m!4701325 () Bool)

(assert (=> b!4094244 m!4701325))

(assert (=> d!1215499 d!1215783))

(declare-fun d!1215785 () Bool)

(declare-fun c!705661 () Bool)

(assert (=> d!1215785 (= c!705661 ((_ is Nil!43888) p!2988))))

(declare-fun e!2540788 () (InoxSet C!24196))

(assert (=> d!1215785 (= (content!6771 p!2988) e!2540788)))

(declare-fun b!4094245 () Bool)

(assert (=> b!4094245 (= e!2540788 ((as const (Array C!24196 Bool)) false))))

(declare-fun b!4094246 () Bool)

(assert (=> b!4094246 (= e!2540788 ((_ map or) (store ((as const (Array C!24196 Bool)) false) (h!49308 p!2988) true) (content!6771 (t!339011 p!2988))))))

(assert (= (and d!1215785 c!705661) b!4094245))

(assert (= (and d!1215785 (not c!705661)) b!4094246))

(declare-fun m!4701327 () Bool)

(assert (=> b!4094246 m!4701327))

(declare-fun m!4701329 () Bool)

(assert (=> b!4094246 m!4701329))

(assert (=> d!1215499 d!1215785))

(declare-fun d!1215787 () Bool)

(declare-fun c!705662 () Bool)

(assert (=> d!1215787 (= c!705662 ((_ is Nil!43888) suffix!1518))))

(declare-fun e!2540789 () (InoxSet C!24196))

(assert (=> d!1215787 (= (content!6771 suffix!1518) e!2540789)))

(declare-fun b!4094247 () Bool)

(assert (=> b!4094247 (= e!2540789 ((as const (Array C!24196 Bool)) false))))

(declare-fun b!4094248 () Bool)

(assert (=> b!4094248 (= e!2540789 ((_ map or) (store ((as const (Array C!24196 Bool)) false) (h!49308 suffix!1518) true) (content!6771 (t!339011 suffix!1518))))))

(assert (= (and d!1215787 c!705662) b!4094247))

(assert (= (and d!1215787 (not c!705662)) b!4094248))

(declare-fun m!4701331 () Bool)

(assert (=> b!4094248 m!4701331))

(declare-fun m!4701333 () Bool)

(assert (=> b!4094248 m!4701333))

(assert (=> d!1215499 d!1215787))

(assert (=> b!4093619 d!1215599))

(declare-fun d!1215789 () Bool)

(assert (=> d!1215789 (= (apply!10283 (transformation!7100 (rule!10246 (_1!24544 (get!14394 lt!1464205)))) (seqFromList!5317 (originalCharacters!7694 (_1!24544 (get!14394 lt!1464205))))) (dynLambda!18808 (toValue!9696 (transformation!7100 (rule!10246 (_1!24544 (get!14394 lt!1464205))))) (seqFromList!5317 (originalCharacters!7694 (_1!24544 (get!14394 lt!1464205))))))))

(declare-fun b_lambda!120157 () Bool)

(assert (=> (not b_lambda!120157) (not d!1215789)))

(declare-fun t!339112 () Bool)

(declare-fun tb!246321 () Bool)

(assert (=> (and b!4093390 (= (toValue!9696 (transformation!7100 r!4213)) (toValue!9696 (transformation!7100 (rule!10246 (_1!24544 (get!14394 lt!1464205)))))) t!339112) tb!246321))

(declare-fun result!298878 () Bool)

(assert (=> tb!246321 (= result!298878 (inv!21 (dynLambda!18808 (toValue!9696 (transformation!7100 (rule!10246 (_1!24544 (get!14394 lt!1464205))))) (seqFromList!5317 (originalCharacters!7694 (_1!24544 (get!14394 lt!1464205)))))))))

(declare-fun m!4701359 () Bool)

(assert (=> tb!246321 m!4701359))

(assert (=> d!1215789 t!339112))

(declare-fun b_and!315751 () Bool)

(assert (= b_and!315739 (and (=> t!339112 result!298878) b_and!315751)))

(declare-fun t!339114 () Bool)

(declare-fun tb!246323 () Bool)

(assert (=> (and b!4093398 (= (toValue!9696 (transformation!7100 (h!49309 rules!3870))) (toValue!9696 (transformation!7100 (rule!10246 (_1!24544 (get!14394 lt!1464205)))))) t!339114) tb!246323))

(declare-fun result!298880 () Bool)

(assert (= result!298880 result!298878))

(assert (=> d!1215789 t!339114))

(declare-fun b_and!315753 () Bool)

(assert (= b_and!315741 (and (=> t!339114 result!298880) b_and!315753)))

(declare-fun tb!246325 () Bool)

(declare-fun t!339116 () Bool)

(assert (=> (and b!4093780 (= (toValue!9696 (transformation!7100 (h!49309 (t!339012 rules!3870)))) (toValue!9696 (transformation!7100 (rule!10246 (_1!24544 (get!14394 lt!1464205)))))) t!339116) tb!246325))

(declare-fun result!298882 () Bool)

(assert (= result!298882 result!298878))

(assert (=> d!1215789 t!339116))

(declare-fun b_and!315755 () Bool)

(assert (= b_and!315743 (and (=> t!339116 result!298882) b_and!315755)))

(assert (=> d!1215789 m!4700635))

(declare-fun m!4701381 () Bool)

(assert (=> d!1215789 m!4701381))

(assert (=> b!4093619 d!1215789))

(declare-fun d!1215793 () Bool)

(assert (=> d!1215793 (= (seqFromList!5317 (originalCharacters!7694 (_1!24544 (get!14394 lt!1464205)))) (fromListB!2440 (originalCharacters!7694 (_1!24544 (get!14394 lt!1464205)))))))

(declare-fun bs!593511 () Bool)

(assert (= bs!593511 d!1215793))

(declare-fun m!4701383 () Bool)

(assert (=> bs!593511 m!4701383))

(assert (=> b!4093619 d!1215793))

(declare-fun b!4094249 () Bool)

(declare-fun res!1673480 () Bool)

(declare-fun e!2540792 () Bool)

(assert (=> b!4094249 (=> res!1673480 e!2540792)))

(declare-fun e!2540793 () Bool)

(assert (=> b!4094249 (= res!1673480 e!2540793)))

(declare-fun res!1673487 () Bool)

(assert (=> b!4094249 (=> (not res!1673487) (not e!2540793))))

(declare-fun lt!1464526 () Bool)

(assert (=> b!4094249 (= res!1673487 lt!1464526)))

(declare-fun b!4094250 () Bool)

(declare-fun e!2540796 () Bool)

(assert (=> b!4094250 (= e!2540796 (matchR!5946 (derivativeStep!3643 (regex!7100 (h!49309 rules!3870)) (head!8653 (_1!24546 (findLongestMatchInner!1466 (regex!7100 (h!49309 rules!3870)) Nil!43888 (size!32787 Nil!43888) input!3411 input!3411 (size!32787 input!3411))))) (tail!6387 (_1!24546 (findLongestMatchInner!1466 (regex!7100 (h!49309 rules!3870)) Nil!43888 (size!32787 Nil!43888) input!3411 input!3411 (size!32787 input!3411))))))))

(declare-fun b!4094251 () Bool)

(declare-fun e!2540791 () Bool)

(declare-fun call!289440 () Bool)

(assert (=> b!4094251 (= e!2540791 (= lt!1464526 call!289440))))

(declare-fun b!4094252 () Bool)

(declare-fun res!1673484 () Bool)

(declare-fun e!2540797 () Bool)

(assert (=> b!4094252 (=> res!1673484 e!2540797)))

(assert (=> b!4094252 (= res!1673484 (not (isEmpty!26254 (tail!6387 (_1!24546 (findLongestMatchInner!1466 (regex!7100 (h!49309 rules!3870)) Nil!43888 (size!32787 Nil!43888) input!3411 input!3411 (size!32787 input!3411)))))))))

(declare-fun bm!289435 () Bool)

(assert (=> bm!289435 (= call!289440 (isEmpty!26254 (_1!24546 (findLongestMatchInner!1466 (regex!7100 (h!49309 rules!3870)) Nil!43888 (size!32787 Nil!43888) input!3411 input!3411 (size!32787 input!3411)))))))

(declare-fun b!4094254 () Bool)

(declare-fun res!1673481 () Bool)

(assert (=> b!4094254 (=> (not res!1673481) (not e!2540793))))

(assert (=> b!4094254 (= res!1673481 (isEmpty!26254 (tail!6387 (_1!24546 (findLongestMatchInner!1466 (regex!7100 (h!49309 rules!3870)) Nil!43888 (size!32787 Nil!43888) input!3411 input!3411 (size!32787 input!3411))))))))

(declare-fun b!4094255 () Bool)

(declare-fun e!2540794 () Bool)

(assert (=> b!4094255 (= e!2540791 e!2540794)))

(declare-fun c!705663 () Bool)

(assert (=> b!4094255 (= c!705663 ((_ is EmptyLang!12005) (regex!7100 (h!49309 rules!3870))))))

(declare-fun b!4094256 () Bool)

(assert (=> b!4094256 (= e!2540793 (= (head!8653 (_1!24546 (findLongestMatchInner!1466 (regex!7100 (h!49309 rules!3870)) Nil!43888 (size!32787 Nil!43888) input!3411 input!3411 (size!32787 input!3411)))) (c!705490 (regex!7100 (h!49309 rules!3870)))))))

(declare-fun b!4094257 () Bool)

(assert (=> b!4094257 (= e!2540796 (nullable!4242 (regex!7100 (h!49309 rules!3870))))))

(declare-fun b!4094258 () Bool)

(declare-fun res!1673485 () Bool)

(assert (=> b!4094258 (=> (not res!1673485) (not e!2540793))))

(assert (=> b!4094258 (= res!1673485 (not call!289440))))

(declare-fun b!4094259 () Bool)

(declare-fun e!2540795 () Bool)

(assert (=> b!4094259 (= e!2540792 e!2540795)))

(declare-fun res!1673482 () Bool)

(assert (=> b!4094259 (=> (not res!1673482) (not e!2540795))))

(assert (=> b!4094259 (= res!1673482 (not lt!1464526))))

(declare-fun b!4094260 () Bool)

(declare-fun res!1673483 () Bool)

(assert (=> b!4094260 (=> res!1673483 e!2540792)))

(assert (=> b!4094260 (= res!1673483 (not ((_ is ElementMatch!12005) (regex!7100 (h!49309 rules!3870)))))))

(assert (=> b!4094260 (= e!2540794 e!2540792)))

(declare-fun b!4094261 () Bool)

(assert (=> b!4094261 (= e!2540797 (not (= (head!8653 (_1!24546 (findLongestMatchInner!1466 (regex!7100 (h!49309 rules!3870)) Nil!43888 (size!32787 Nil!43888) input!3411 input!3411 (size!32787 input!3411)))) (c!705490 (regex!7100 (h!49309 rules!3870))))))))

(declare-fun b!4094262 () Bool)

(assert (=> b!4094262 (= e!2540795 e!2540797)))

(declare-fun res!1673486 () Bool)

(assert (=> b!4094262 (=> res!1673486 e!2540797)))

(assert (=> b!4094262 (= res!1673486 call!289440)))

(declare-fun b!4094253 () Bool)

(assert (=> b!4094253 (= e!2540794 (not lt!1464526))))

(declare-fun d!1215795 () Bool)

(assert (=> d!1215795 e!2540791))

(declare-fun c!705664 () Bool)

(assert (=> d!1215795 (= c!705664 ((_ is EmptyExpr!12005) (regex!7100 (h!49309 rules!3870))))))

(assert (=> d!1215795 (= lt!1464526 e!2540796)))

(declare-fun c!705665 () Bool)

(assert (=> d!1215795 (= c!705665 (isEmpty!26254 (_1!24546 (findLongestMatchInner!1466 (regex!7100 (h!49309 rules!3870)) Nil!43888 (size!32787 Nil!43888) input!3411 input!3411 (size!32787 input!3411)))))))

(assert (=> d!1215795 (validRegex!5442 (regex!7100 (h!49309 rules!3870)))))

(assert (=> d!1215795 (= (matchR!5946 (regex!7100 (h!49309 rules!3870)) (_1!24546 (findLongestMatchInner!1466 (regex!7100 (h!49309 rules!3870)) Nil!43888 (size!32787 Nil!43888) input!3411 input!3411 (size!32787 input!3411)))) lt!1464526)))

(assert (= (and d!1215795 c!705665) b!4094257))

(assert (= (and d!1215795 (not c!705665)) b!4094250))

(assert (= (and d!1215795 c!705664) b!4094251))

(assert (= (and d!1215795 (not c!705664)) b!4094255))

(assert (= (and b!4094255 c!705663) b!4094253))

(assert (= (and b!4094255 (not c!705663)) b!4094260))

(assert (= (and b!4094260 (not res!1673483)) b!4094249))

(assert (= (and b!4094249 res!1673487) b!4094258))

(assert (= (and b!4094258 res!1673485) b!4094254))

(assert (= (and b!4094254 res!1673481) b!4094256))

(assert (= (and b!4094249 (not res!1673480)) b!4094259))

(assert (= (and b!4094259 res!1673482) b!4094262))

(assert (= (and b!4094262 (not res!1673486)) b!4094252))

(assert (= (and b!4094252 (not res!1673484)) b!4094261))

(assert (= (or b!4094251 b!4094258 b!4094262) bm!289435))

(assert (=> bm!289435 m!4700577))

(declare-fun m!4701385 () Bool)

(assert (=> b!4094252 m!4701385))

(assert (=> b!4094252 m!4701385))

(declare-fun m!4701387 () Bool)

(assert (=> b!4094252 m!4701387))

(assert (=> b!4094254 m!4701385))

(assert (=> b!4094254 m!4701385))

(assert (=> b!4094254 m!4701387))

(declare-fun m!4701389 () Bool)

(assert (=> b!4094250 m!4701389))

(assert (=> b!4094250 m!4701389))

(declare-fun m!4701391 () Bool)

(assert (=> b!4094250 m!4701391))

(assert (=> b!4094250 m!4701385))

(assert (=> b!4094250 m!4701391))

(assert (=> b!4094250 m!4701385))

(declare-fun m!4701393 () Bool)

(assert (=> b!4094250 m!4701393))

(assert (=> b!4094257 m!4700947))

(assert (=> b!4094261 m!4701389))

(assert (=> b!4094256 m!4701389))

(assert (=> d!1215795 m!4700577))

(assert (=> d!1215795 m!4700939))

(assert (=> b!4093580 d!1215795))

(assert (=> b!4093580 d!1215723))

(assert (=> b!4093580 d!1215721))

(assert (=> b!4093580 d!1215631))

(declare-fun bs!593514 () Bool)

(declare-fun d!1215797 () Bool)

(assert (= bs!593514 (and d!1215797 d!1215507)))

(declare-fun lambda!128111 () Int)

(assert (=> bs!593514 (= (and (= (toChars!9555 (transformation!7100 (h!49309 rules!3870))) (toChars!9555 (transformation!7100 r!4213))) (= (toValue!9696 (transformation!7100 (h!49309 rules!3870))) (toValue!9696 (transformation!7100 r!4213)))) (= lambda!128111 lambda!128081))))

(declare-fun bs!593515 () Bool)

(assert (= bs!593515 (and d!1215797 d!1215755)))

(assert (=> bs!593515 (= lambda!128111 lambda!128107)))

(assert (=> d!1215797 true))

(assert (=> d!1215797 (< (dynLambda!18807 order!23113 (toChars!9555 (transformation!7100 (h!49309 rules!3870)))) (dynLambda!18806 order!23111 lambda!128111))))

(assert (=> d!1215797 true))

(assert (=> d!1215797 (< (dynLambda!18805 order!23109 (toValue!9696 (transformation!7100 (h!49309 rules!3870)))) (dynLambda!18806 order!23111 lambda!128111))))

(declare-fun Forall!1519 (Int) Bool)

(assert (=> d!1215797 (= (semiInverseModEq!3053 (toChars!9555 (transformation!7100 (h!49309 rules!3870))) (toValue!9696 (transformation!7100 (h!49309 rules!3870)))) (Forall!1519 lambda!128111))))

(declare-fun bs!593516 () Bool)

(assert (= bs!593516 d!1215797))

(declare-fun m!4701405 () Bool)

(assert (=> bs!593516 m!4701405))

(assert (=> d!1215493 d!1215797))

(declare-fun d!1215805 () Bool)

(declare-fun c!705674 () Bool)

(assert (=> d!1215805 (= c!705674 ((_ is Nil!43889) rules!3870))))

(declare-fun e!2540811 () (InoxSet Rule!14000))

(assert (=> d!1215805 (= (content!6768 rules!3870) e!2540811)))

(declare-fun b!4094288 () Bool)

(assert (=> b!4094288 (= e!2540811 ((as const (Array Rule!14000 Bool)) false))))

(declare-fun b!4094289 () Bool)

(assert (=> b!4094289 (= e!2540811 ((_ map or) (store ((as const (Array Rule!14000 Bool)) false) (h!49309 rules!3870) true) (content!6768 (t!339012 rules!3870))))))

(assert (= (and d!1215805 c!705674) b!4094288))

(assert (= (and d!1215805 (not c!705674)) b!4094289))

(declare-fun m!4701413 () Bool)

(assert (=> b!4094289 m!4701413))

(declare-fun m!4701415 () Bool)

(assert (=> b!4094289 m!4701415))

(assert (=> d!1215479 d!1215805))

(declare-fun d!1215809 () Bool)

(assert (=> d!1215809 (= (isEmpty!26254 (originalCharacters!7694 lt!1464134)) ((_ is Nil!43888) (originalCharacters!7694 lt!1464134)))))

(assert (=> d!1215477 d!1215809))

(declare-fun d!1215811 () Bool)

(assert (=> d!1215811 (= (list!16292 (dynLambda!18804 (toChars!9555 (transformation!7100 r!4213)) (dynLambda!18808 (toValue!9696 (transformation!7100 r!4213)) lt!1464131))) (list!16293 (c!705491 (dynLambda!18804 (toChars!9555 (transformation!7100 r!4213)) (dynLambda!18808 (toValue!9696 (transformation!7100 r!4213)) lt!1464131)))))))

(declare-fun bs!593517 () Bool)

(assert (= bs!593517 d!1215811))

(declare-fun m!4701417 () Bool)

(assert (=> bs!593517 m!4701417))

(assert (=> d!1215507 d!1215811))

(declare-fun d!1215813 () Bool)

(assert (=> d!1215813 (= (list!16292 lt!1464131) (list!16293 (c!705491 lt!1464131)))))

(declare-fun bs!593518 () Bool)

(assert (= bs!593518 d!1215813))

(declare-fun m!4701419 () Bool)

(assert (=> bs!593518 m!4701419))

(assert (=> d!1215507 d!1215813))

(declare-fun d!1215815 () Bool)

(declare-fun dynLambda!18812 (Int BalanceConc!26216) Bool)

(assert (=> d!1215815 (dynLambda!18812 lambda!128081 lt!1464131)))

(declare-fun lt!1464535 () Unit!63421)

(declare-fun choose!25015 (Int BalanceConc!26216) Unit!63421)

(assert (=> d!1215815 (= lt!1464535 (choose!25015 lambda!128081 lt!1464131))))

(assert (=> d!1215815 (Forall!1519 lambda!128081)))

(assert (=> d!1215815 (= (ForallOf!893 lambda!128081 lt!1464131) lt!1464535)))

(declare-fun b_lambda!120159 () Bool)

(assert (=> (not b_lambda!120159) (not d!1215815)))

(declare-fun bs!593519 () Bool)

(assert (= bs!593519 d!1215815))

(declare-fun m!4701437 () Bool)

(assert (=> bs!593519 m!4701437))

(declare-fun m!4701439 () Bool)

(assert (=> bs!593519 m!4701439))

(declare-fun m!4701441 () Bool)

(assert (=> bs!593519 m!4701441))

(assert (=> d!1215507 d!1215815))

(assert (=> b!4093493 d!1215583))

(assert (=> b!4093493 d!1215585))

(assert (=> b!4093572 d!1215581))

(declare-fun d!1215827 () Bool)

(assert (=> d!1215827 (= (apply!10283 (transformation!7100 (rule!10246 (_1!24544 (get!14394 lt!1464180)))) (seqFromList!5317 (originalCharacters!7694 (_1!24544 (get!14394 lt!1464180))))) (dynLambda!18808 (toValue!9696 (transformation!7100 (rule!10246 (_1!24544 (get!14394 lt!1464180))))) (seqFromList!5317 (originalCharacters!7694 (_1!24544 (get!14394 lt!1464180))))))))

(declare-fun b_lambda!120161 () Bool)

(assert (=> (not b_lambda!120161) (not d!1215827)))

(declare-fun t!339118 () Bool)

(declare-fun tb!246327 () Bool)

(assert (=> (and b!4093390 (= (toValue!9696 (transformation!7100 r!4213)) (toValue!9696 (transformation!7100 (rule!10246 (_1!24544 (get!14394 lt!1464180)))))) t!339118) tb!246327))

(declare-fun result!298884 () Bool)

(assert (=> tb!246327 (= result!298884 (inv!21 (dynLambda!18808 (toValue!9696 (transformation!7100 (rule!10246 (_1!24544 (get!14394 lt!1464180))))) (seqFromList!5317 (originalCharacters!7694 (_1!24544 (get!14394 lt!1464180)))))))))

(declare-fun m!4701447 () Bool)

(assert (=> tb!246327 m!4701447))

(assert (=> d!1215827 t!339118))

(declare-fun b_and!315757 () Bool)

(assert (= b_and!315751 (and (=> t!339118 result!298884) b_and!315757)))

(declare-fun tb!246329 () Bool)

(declare-fun t!339120 () Bool)

(assert (=> (and b!4093398 (= (toValue!9696 (transformation!7100 (h!49309 rules!3870))) (toValue!9696 (transformation!7100 (rule!10246 (_1!24544 (get!14394 lt!1464180)))))) t!339120) tb!246329))

(declare-fun result!298886 () Bool)

(assert (= result!298886 result!298884))

(assert (=> d!1215827 t!339120))

(declare-fun b_and!315759 () Bool)

(assert (= b_and!315753 (and (=> t!339120 result!298886) b_and!315759)))

(declare-fun t!339122 () Bool)

(declare-fun tb!246331 () Bool)

(assert (=> (and b!4093780 (= (toValue!9696 (transformation!7100 (h!49309 (t!339012 rules!3870)))) (toValue!9696 (transformation!7100 (rule!10246 (_1!24544 (get!14394 lt!1464180)))))) t!339122) tb!246331))

(declare-fun result!298888 () Bool)

(assert (= result!298888 result!298884))

(assert (=> d!1215827 t!339122))

(declare-fun b_and!315761 () Bool)

(assert (= b_and!315755 (and (=> t!339122 result!298888) b_and!315761)))

(assert (=> d!1215827 m!4700593))

(declare-fun m!4701449 () Bool)

(assert (=> d!1215827 m!4701449))

(assert (=> b!4093572 d!1215827))

(declare-fun d!1215831 () Bool)

(assert (=> d!1215831 (= (seqFromList!5317 (originalCharacters!7694 (_1!24544 (get!14394 lt!1464180)))) (fromListB!2440 (originalCharacters!7694 (_1!24544 (get!14394 lt!1464180)))))))

(declare-fun bs!593520 () Bool)

(assert (= bs!593520 d!1215831))

(declare-fun m!4701451 () Bool)

(assert (=> bs!593520 m!4701451))

(assert (=> b!4093572 d!1215831))

(assert (=> d!1215475 d!1215473))

(declare-fun d!1215833 () Bool)

(assert (=> d!1215833 (ruleValid!3020 thiss!26199 r!4213)))

(assert (=> d!1215833 true))

(declare-fun _$65!1590 () Unit!63421)

(assert (=> d!1215833 (= (choose!25007 thiss!26199 r!4213 rules!3870) _$65!1590)))

(declare-fun bs!593523 () Bool)

(assert (= bs!593523 d!1215833))

(assert (=> bs!593523 m!4700449))

(assert (=> d!1215475 d!1215833))

(assert (=> d!1215475 d!1215479))

(declare-fun bs!593525 () Bool)

(declare-fun d!1215841 () Bool)

(assert (= bs!593525 (and d!1215841 d!1215507)))

(declare-fun lambda!128113 () Int)

(assert (=> bs!593525 (= lambda!128113 lambda!128081)))

(declare-fun bs!593526 () Bool)

(assert (= bs!593526 (and d!1215841 d!1215755)))

(assert (=> bs!593526 (= (and (= (toChars!9555 (transformation!7100 r!4213)) (toChars!9555 (transformation!7100 (h!49309 rules!3870)))) (= (toValue!9696 (transformation!7100 r!4213)) (toValue!9696 (transformation!7100 (h!49309 rules!3870))))) (= lambda!128113 lambda!128107))))

(declare-fun bs!593528 () Bool)

(assert (= bs!593528 (and d!1215841 d!1215797)))

(assert (=> bs!593528 (= (and (= (toChars!9555 (transformation!7100 r!4213)) (toChars!9555 (transformation!7100 (h!49309 rules!3870)))) (= (toValue!9696 (transformation!7100 r!4213)) (toValue!9696 (transformation!7100 (h!49309 rules!3870))))) (= lambda!128113 lambda!128111))))

(assert (=> d!1215841 true))

(assert (=> d!1215841 (< (dynLambda!18807 order!23113 (toChars!9555 (transformation!7100 r!4213))) (dynLambda!18806 order!23111 lambda!128113))))

(assert (=> d!1215841 true))

(assert (=> d!1215841 (< (dynLambda!18805 order!23109 (toValue!9696 (transformation!7100 r!4213))) (dynLambda!18806 order!23111 lambda!128113))))

(assert (=> d!1215841 (= (semiInverseModEq!3053 (toChars!9555 (transformation!7100 r!4213)) (toValue!9696 (transformation!7100 r!4213))) (Forall!1519 lambda!128113))))

(declare-fun bs!593529 () Bool)

(assert (= bs!593529 d!1215841))

(declare-fun m!4701463 () Bool)

(assert (=> bs!593529 m!4701463))

(assert (=> d!1215459 d!1215841))

(declare-fun b!4094316 () Bool)

(declare-fun res!1673503 () Bool)

(declare-fun e!2540826 () Bool)

(assert (=> b!4094316 (=> (not res!1673503) (not e!2540826))))

(declare-fun lt!1464538 () List!44012)

(assert (=> b!4094316 (= res!1673503 (= (size!32787 lt!1464538) (+ (size!32787 (t!339011 p!2988)) (size!32787 suffix!1518))))))

(declare-fun b!4094314 () Bool)

(declare-fun e!2540827 () List!44012)

(assert (=> b!4094314 (= e!2540827 suffix!1518)))

(declare-fun b!4094317 () Bool)

(assert (=> b!4094317 (= e!2540826 (or (not (= suffix!1518 Nil!43888)) (= lt!1464538 (t!339011 p!2988))))))

(declare-fun d!1215849 () Bool)

(assert (=> d!1215849 e!2540826))

(declare-fun res!1673504 () Bool)

(assert (=> d!1215849 (=> (not res!1673504) (not e!2540826))))

(assert (=> d!1215849 (= res!1673504 (= (content!6771 lt!1464538) ((_ map or) (content!6771 (t!339011 p!2988)) (content!6771 suffix!1518))))))

(assert (=> d!1215849 (= lt!1464538 e!2540827)))

(declare-fun c!705682 () Bool)

(assert (=> d!1215849 (= c!705682 ((_ is Nil!43888) (t!339011 p!2988)))))

(assert (=> d!1215849 (= (++!11506 (t!339011 p!2988) suffix!1518) lt!1464538)))

(declare-fun b!4094315 () Bool)

(assert (=> b!4094315 (= e!2540827 (Cons!43888 (h!49308 (t!339011 p!2988)) (++!11506 (t!339011 (t!339011 p!2988)) suffix!1518)))))

(assert (= (and d!1215849 c!705682) b!4094314))

(assert (= (and d!1215849 (not c!705682)) b!4094315))

(assert (= (and d!1215849 res!1673504) b!4094316))

(assert (= (and b!4094316 res!1673503) b!4094317))

(declare-fun m!4701465 () Bool)

(assert (=> b!4094316 m!4701465))

(assert (=> b!4094316 m!4700655))

(assert (=> b!4094316 m!4700615))

(declare-fun m!4701467 () Bool)

(assert (=> d!1215849 m!4701467))

(assert (=> d!1215849 m!4701329))

(assert (=> d!1215849 m!4700621))

(declare-fun m!4701469 () Bool)

(assert (=> b!4094315 m!4701469))

(assert (=> b!4093595 d!1215849))

(declare-fun d!1215851 () Bool)

(declare-fun lt!1464539 () Bool)

(assert (=> d!1215851 (= lt!1464539 (select (content!6768 (t!339012 rules!3870)) r!4213))))

(declare-fun e!2540829 () Bool)

(assert (=> d!1215851 (= lt!1464539 e!2540829)))

(declare-fun res!1673505 () Bool)

(assert (=> d!1215851 (=> (not res!1673505) (not e!2540829))))

(assert (=> d!1215851 (= res!1673505 ((_ is Cons!43889) (t!339012 rules!3870)))))

(assert (=> d!1215851 (= (contains!8783 (t!339012 rules!3870) r!4213) lt!1464539)))

(declare-fun b!4094318 () Bool)

(declare-fun e!2540828 () Bool)

(assert (=> b!4094318 (= e!2540829 e!2540828)))

(declare-fun res!1673506 () Bool)

(assert (=> b!4094318 (=> res!1673506 e!2540828)))

(assert (=> b!4094318 (= res!1673506 (= (h!49309 (t!339012 rules!3870)) r!4213))))

(declare-fun b!4094319 () Bool)

(assert (=> b!4094319 (= e!2540828 (contains!8783 (t!339012 (t!339012 rules!3870)) r!4213))))

(assert (= (and d!1215851 res!1673505) b!4094318))

(assert (= (and b!4094318 (not res!1673506)) b!4094319))

(assert (=> d!1215851 m!4701415))

(declare-fun m!4701471 () Bool)

(assert (=> d!1215851 m!4701471))

(declare-fun m!4701473 () Bool)

(assert (=> b!4094319 m!4701473))

(assert (=> b!4093526 d!1215851))

(declare-fun b!4094320 () Bool)

(declare-fun res!1673507 () Bool)

(declare-fun e!2540831 () Bool)

(assert (=> b!4094320 (=> res!1673507 e!2540831)))

(declare-fun e!2540832 () Bool)

(assert (=> b!4094320 (= res!1673507 e!2540832)))

(declare-fun res!1673514 () Bool)

(assert (=> b!4094320 (=> (not res!1673514) (not e!2540832))))

(declare-fun lt!1464540 () Bool)

(assert (=> b!4094320 (= res!1673514 lt!1464540)))

(declare-fun b!4094321 () Bool)

(declare-fun e!2540835 () Bool)

(assert (=> b!4094321 (= e!2540835 (matchR!5946 (derivativeStep!3643 (derivativeStep!3643 (regex!7100 r!4213) (head!8653 p!2988)) (head!8653 (tail!6387 p!2988))) (tail!6387 (tail!6387 p!2988))))))

(declare-fun b!4094322 () Bool)

(declare-fun e!2540830 () Bool)

(declare-fun call!289442 () Bool)

(assert (=> b!4094322 (= e!2540830 (= lt!1464540 call!289442))))

(declare-fun b!4094323 () Bool)

(declare-fun res!1673511 () Bool)

(declare-fun e!2540836 () Bool)

(assert (=> b!4094323 (=> res!1673511 e!2540836)))

(assert (=> b!4094323 (= res!1673511 (not (isEmpty!26254 (tail!6387 (tail!6387 p!2988)))))))

(declare-fun bm!289437 () Bool)

(assert (=> bm!289437 (= call!289442 (isEmpty!26254 (tail!6387 p!2988)))))

(declare-fun b!4094325 () Bool)

(declare-fun res!1673508 () Bool)

(assert (=> b!4094325 (=> (not res!1673508) (not e!2540832))))

(assert (=> b!4094325 (= res!1673508 (isEmpty!26254 (tail!6387 (tail!6387 p!2988))))))

(declare-fun b!4094326 () Bool)

(declare-fun e!2540833 () Bool)

(assert (=> b!4094326 (= e!2540830 e!2540833)))

(declare-fun c!705683 () Bool)

(assert (=> b!4094326 (= c!705683 ((_ is EmptyLang!12005) (derivativeStep!3643 (regex!7100 r!4213) (head!8653 p!2988))))))

(declare-fun b!4094327 () Bool)

(assert (=> b!4094327 (= e!2540832 (= (head!8653 (tail!6387 p!2988)) (c!705490 (derivativeStep!3643 (regex!7100 r!4213) (head!8653 p!2988)))))))

(declare-fun b!4094328 () Bool)

(assert (=> b!4094328 (= e!2540835 (nullable!4242 (derivativeStep!3643 (regex!7100 r!4213) (head!8653 p!2988))))))

(declare-fun b!4094329 () Bool)

(declare-fun res!1673512 () Bool)

(assert (=> b!4094329 (=> (not res!1673512) (not e!2540832))))

(assert (=> b!4094329 (= res!1673512 (not call!289442))))

(declare-fun b!4094330 () Bool)

(declare-fun e!2540834 () Bool)

(assert (=> b!4094330 (= e!2540831 e!2540834)))

(declare-fun res!1673509 () Bool)

(assert (=> b!4094330 (=> (not res!1673509) (not e!2540834))))

(assert (=> b!4094330 (= res!1673509 (not lt!1464540))))

(declare-fun b!4094331 () Bool)

(declare-fun res!1673510 () Bool)

(assert (=> b!4094331 (=> res!1673510 e!2540831)))

(assert (=> b!4094331 (= res!1673510 (not ((_ is ElementMatch!12005) (derivativeStep!3643 (regex!7100 r!4213) (head!8653 p!2988)))))))

(assert (=> b!4094331 (= e!2540833 e!2540831)))

(declare-fun b!4094332 () Bool)

(assert (=> b!4094332 (= e!2540836 (not (= (head!8653 (tail!6387 p!2988)) (c!705490 (derivativeStep!3643 (regex!7100 r!4213) (head!8653 p!2988))))))))

(declare-fun b!4094333 () Bool)

(assert (=> b!4094333 (= e!2540834 e!2540836)))

(declare-fun res!1673513 () Bool)

(assert (=> b!4094333 (=> res!1673513 e!2540836)))

(assert (=> b!4094333 (= res!1673513 call!289442)))

(declare-fun b!4094324 () Bool)

(assert (=> b!4094324 (= e!2540833 (not lt!1464540))))

(declare-fun d!1215853 () Bool)

(assert (=> d!1215853 e!2540830))

(declare-fun c!705684 () Bool)

(assert (=> d!1215853 (= c!705684 ((_ is EmptyExpr!12005) (derivativeStep!3643 (regex!7100 r!4213) (head!8653 p!2988))))))

(assert (=> d!1215853 (= lt!1464540 e!2540835)))

(declare-fun c!705685 () Bool)

(assert (=> d!1215853 (= c!705685 (isEmpty!26254 (tail!6387 p!2988)))))

(assert (=> d!1215853 (validRegex!5442 (derivativeStep!3643 (regex!7100 r!4213) (head!8653 p!2988)))))

(assert (=> d!1215853 (= (matchR!5946 (derivativeStep!3643 (regex!7100 r!4213) (head!8653 p!2988)) (tail!6387 p!2988)) lt!1464540)))

(assert (= (and d!1215853 c!705685) b!4094328))

(assert (= (and d!1215853 (not c!705685)) b!4094321))

(assert (= (and d!1215853 c!705684) b!4094322))

(assert (= (and d!1215853 (not c!705684)) b!4094326))

(assert (= (and b!4094326 c!705683) b!4094324))

(assert (= (and b!4094326 (not c!705683)) b!4094331))

(assert (= (and b!4094331 (not res!1673510)) b!4094320))

(assert (= (and b!4094320 res!1673514) b!4094329))

(assert (= (and b!4094329 res!1673512) b!4094325))

(assert (= (and b!4094325 res!1673508) b!4094327))

(assert (= (and b!4094320 (not res!1673507)) b!4094330))

(assert (= (and b!4094330 res!1673509) b!4094333))

(assert (= (and b!4094333 (not res!1673513)) b!4094323))

(assert (= (and b!4094323 (not res!1673511)) b!4094332))

(assert (= (or b!4094322 b!4094329 b!4094333) bm!289437))

(assert (=> bm!289437 m!4700485))

(assert (=> bm!289437 m!4700487))

(assert (=> b!4094323 m!4700485))

(declare-fun m!4701475 () Bool)

(assert (=> b!4094323 m!4701475))

(assert (=> b!4094323 m!4701475))

(declare-fun m!4701477 () Bool)

(assert (=> b!4094323 m!4701477))

(assert (=> b!4094325 m!4700485))

(assert (=> b!4094325 m!4701475))

(assert (=> b!4094325 m!4701475))

(assert (=> b!4094325 m!4701477))

(assert (=> b!4094321 m!4700485))

(declare-fun m!4701479 () Bool)

(assert (=> b!4094321 m!4701479))

(assert (=> b!4094321 m!4700491))

(assert (=> b!4094321 m!4701479))

(declare-fun m!4701481 () Bool)

(assert (=> b!4094321 m!4701481))

(assert (=> b!4094321 m!4700485))

(assert (=> b!4094321 m!4701475))

(assert (=> b!4094321 m!4701481))

(assert (=> b!4094321 m!4701475))

(declare-fun m!4701483 () Bool)

(assert (=> b!4094321 m!4701483))

(assert (=> b!4094328 m!4700491))

(declare-fun m!4701485 () Bool)

(assert (=> b!4094328 m!4701485))

(assert (=> b!4094332 m!4700485))

(assert (=> b!4094332 m!4701479))

(assert (=> b!4094327 m!4700485))

(assert (=> b!4094327 m!4701479))

(assert (=> d!1215853 m!4700485))

(assert (=> d!1215853 m!4700487))

(assert (=> d!1215853 m!4700491))

(declare-fun m!4701487 () Bool)

(assert (=> d!1215853 m!4701487))

(assert (=> b!4093491 d!1215853))

(declare-fun b!4094369 () Bool)

(declare-fun c!705697 () Bool)

(assert (=> b!4094369 (= c!705697 ((_ is Union!12005) (regex!7100 r!4213)))))

(declare-fun e!2540855 () Regex!12005)

(declare-fun e!2540852 () Regex!12005)

(assert (=> b!4094369 (= e!2540855 e!2540852)))

(declare-fun b!4094370 () Bool)

(declare-fun c!705700 () Bool)

(assert (=> b!4094370 (= c!705700 (nullable!4242 (regOne!24522 (regex!7100 r!4213))))))

(declare-fun e!2540853 () Regex!12005)

(declare-fun e!2540854 () Regex!12005)

(assert (=> b!4094370 (= e!2540853 e!2540854)))

(declare-fun call!289454 () Regex!12005)

(declare-fun bm!289446 () Bool)

(assert (=> bm!289446 (= call!289454 (derivativeStep!3643 (ite c!705697 (regTwo!24523 (regex!7100 r!4213)) (regTwo!24522 (regex!7100 r!4213))) (head!8653 p!2988)))))

(declare-fun b!4094371 () Bool)

(assert (=> b!4094371 (= e!2540852 e!2540853)))

(declare-fun c!705699 () Bool)

(assert (=> b!4094371 (= c!705699 ((_ is Star!12005) (regex!7100 r!4213)))))

(declare-fun bm!289447 () Bool)

(declare-fun call!289451 () Regex!12005)

(declare-fun call!289452 () Regex!12005)

(assert (=> bm!289447 (= call!289451 call!289452)))

(declare-fun b!4094372 () Bool)

(declare-fun e!2540856 () Regex!12005)

(assert (=> b!4094372 (= e!2540856 e!2540855)))

(declare-fun c!705696 () Bool)

(assert (=> b!4094372 (= c!705696 ((_ is ElementMatch!12005) (regex!7100 r!4213)))))

(declare-fun bm!289448 () Bool)

(declare-fun call!289453 () Regex!12005)

(assert (=> bm!289448 (= call!289453 (derivativeStep!3643 (ite c!705697 (regOne!24523 (regex!7100 r!4213)) (ite c!705699 (reg!12334 (regex!7100 r!4213)) (regOne!24522 (regex!7100 r!4213)))) (head!8653 p!2988)))))

(declare-fun b!4094373 () Bool)

(assert (=> b!4094373 (= e!2540852 (Union!12005 call!289453 call!289454))))

(declare-fun b!4094374 () Bool)

(assert (=> b!4094374 (= e!2540855 (ite (= (head!8653 p!2988) (c!705490 (regex!7100 r!4213))) EmptyExpr!12005 EmptyLang!12005))))

(declare-fun bm!289449 () Bool)

(assert (=> bm!289449 (= call!289452 call!289453)))

(declare-fun b!4094375 () Bool)

(assert (=> b!4094375 (= e!2540856 EmptyLang!12005)))

(declare-fun b!4094376 () Bool)

(assert (=> b!4094376 (= e!2540854 (Union!12005 (Concat!19336 call!289451 (regTwo!24522 (regex!7100 r!4213))) call!289454))))

(declare-fun b!4094377 () Bool)

(assert (=> b!4094377 (= e!2540853 (Concat!19336 call!289452 (regex!7100 r!4213)))))

(declare-fun d!1215855 () Bool)

(declare-fun lt!1464567 () Regex!12005)

(assert (=> d!1215855 (validRegex!5442 lt!1464567)))

(assert (=> d!1215855 (= lt!1464567 e!2540856)))

(declare-fun c!705698 () Bool)

(assert (=> d!1215855 (= c!705698 (or ((_ is EmptyExpr!12005) (regex!7100 r!4213)) ((_ is EmptyLang!12005) (regex!7100 r!4213))))))

(assert (=> d!1215855 (validRegex!5442 (regex!7100 r!4213))))

(assert (=> d!1215855 (= (derivativeStep!3643 (regex!7100 r!4213) (head!8653 p!2988)) lt!1464567)))

(declare-fun b!4094378 () Bool)

(assert (=> b!4094378 (= e!2540854 (Union!12005 (Concat!19336 call!289451 (regTwo!24522 (regex!7100 r!4213))) EmptyLang!12005))))

(assert (= (and d!1215855 c!705698) b!4094375))

(assert (= (and d!1215855 (not c!705698)) b!4094372))

(assert (= (and b!4094372 c!705696) b!4094374))

(assert (= (and b!4094372 (not c!705696)) b!4094369))

(assert (= (and b!4094369 c!705697) b!4094373))

(assert (= (and b!4094369 (not c!705697)) b!4094371))

(assert (= (and b!4094371 c!705699) b!4094377))

(assert (= (and b!4094371 (not c!705699)) b!4094370))

(assert (= (and b!4094370 c!705700) b!4094376))

(assert (= (and b!4094370 (not c!705700)) b!4094378))

(assert (= (or b!4094376 b!4094378) bm!289447))

(assert (= (or b!4094377 bm!289447) bm!289449))

(assert (= (or b!4094373 bm!289449) bm!289448))

(assert (= (or b!4094373 b!4094376) bm!289446))

(declare-fun m!4701505 () Bool)

(assert (=> b!4094370 m!4701505))

(assert (=> bm!289446 m!4700489))

(declare-fun m!4701507 () Bool)

(assert (=> bm!289446 m!4701507))

(assert (=> bm!289448 m!4700489))

(declare-fun m!4701509 () Bool)

(assert (=> bm!289448 m!4701509))

(declare-fun m!4701511 () Bool)

(assert (=> d!1215855 m!4701511))

(assert (=> d!1215855 m!4700497))

(assert (=> b!4093491 d!1215855))

(assert (=> b!4093491 d!1215579))

(assert (=> b!4093491 d!1215585))

(declare-fun d!1215859 () Bool)

(declare-fun c!705701 () Bool)

(assert (=> d!1215859 (= c!705701 ((_ is Node!13311) (c!705491 (dynLambda!18804 (toChars!9555 (transformation!7100 r!4213)) (dynLambda!18808 (toValue!9696 (transformation!7100 r!4213)) lt!1464131)))))))

(declare-fun e!2540862 () Bool)

(assert (=> d!1215859 (= (inv!58612 (c!705491 (dynLambda!18804 (toChars!9555 (transformation!7100 r!4213)) (dynLambda!18808 (toValue!9696 (transformation!7100 r!4213)) lt!1464131)))) e!2540862)))

(declare-fun b!4094388 () Bool)

(assert (=> b!4094388 (= e!2540862 (inv!58616 (c!705491 (dynLambda!18804 (toChars!9555 (transformation!7100 r!4213)) (dynLambda!18808 (toValue!9696 (transformation!7100 r!4213)) lt!1464131)))))))

(declare-fun b!4094389 () Bool)

(declare-fun e!2540863 () Bool)

(assert (=> b!4094389 (= e!2540862 e!2540863)))

(declare-fun res!1673517 () Bool)

(assert (=> b!4094389 (= res!1673517 (not ((_ is Leaf!20576) (c!705491 (dynLambda!18804 (toChars!9555 (transformation!7100 r!4213)) (dynLambda!18808 (toValue!9696 (transformation!7100 r!4213)) lt!1464131))))))))

(assert (=> b!4094389 (=> res!1673517 e!2540863)))

(declare-fun b!4094390 () Bool)

(assert (=> b!4094390 (= e!2540863 (inv!58617 (c!705491 (dynLambda!18804 (toChars!9555 (transformation!7100 r!4213)) (dynLambda!18808 (toValue!9696 (transformation!7100 r!4213)) lt!1464131)))))))

(assert (= (and d!1215859 c!705701) b!4094388))

(assert (= (and d!1215859 (not c!705701)) b!4094389))

(assert (= (and b!4094389 (not res!1673517)) b!4094390))

(declare-fun m!4701513 () Bool)

(assert (=> b!4094388 m!4701513))

(declare-fun m!4701515 () Bool)

(assert (=> b!4094390 m!4701515))

(assert (=> b!4093748 d!1215859))

(declare-fun b!4094397 () Bool)

(declare-fun e!2540866 () Bool)

(declare-fun tp!1239203 () Bool)

(declare-fun tp!1239207 () Bool)

(assert (=> b!4094397 (= e!2540866 (and tp!1239203 tp!1239207))))

(assert (=> b!4093762 (= tp!1239147 e!2540866)))

(declare-fun b!4094395 () Bool)

(declare-fun tp!1239206 () Bool)

(declare-fun tp!1239204 () Bool)

(assert (=> b!4094395 (= e!2540866 (and tp!1239206 tp!1239204))))

(declare-fun b!4094394 () Bool)

(assert (=> b!4094394 (= e!2540866 tp_is_empty!21013)))

(declare-fun b!4094396 () Bool)

(declare-fun tp!1239205 () Bool)

(assert (=> b!4094396 (= e!2540866 tp!1239205)))

(assert (= (and b!4093762 ((_ is ElementMatch!12005) (regOne!24522 (regex!7100 r!4213)))) b!4094394))

(assert (= (and b!4093762 ((_ is Concat!19336) (regOne!24522 (regex!7100 r!4213)))) b!4094395))

(assert (= (and b!4093762 ((_ is Star!12005) (regOne!24522 (regex!7100 r!4213)))) b!4094396))

(assert (= (and b!4093762 ((_ is Union!12005) (regOne!24522 (regex!7100 r!4213)))) b!4094397))

(declare-fun b!4094401 () Bool)

(declare-fun e!2540867 () Bool)

(declare-fun tp!1239208 () Bool)

(declare-fun tp!1239212 () Bool)

(assert (=> b!4094401 (= e!2540867 (and tp!1239208 tp!1239212))))

(assert (=> b!4093762 (= tp!1239145 e!2540867)))

(declare-fun b!4094399 () Bool)

(declare-fun tp!1239211 () Bool)

(declare-fun tp!1239209 () Bool)

(assert (=> b!4094399 (= e!2540867 (and tp!1239211 tp!1239209))))

(declare-fun b!4094398 () Bool)

(assert (=> b!4094398 (= e!2540867 tp_is_empty!21013)))

(declare-fun b!4094400 () Bool)

(declare-fun tp!1239210 () Bool)

(assert (=> b!4094400 (= e!2540867 tp!1239210)))

(assert (= (and b!4093762 ((_ is ElementMatch!12005) (regTwo!24522 (regex!7100 r!4213)))) b!4094398))

(assert (= (and b!4093762 ((_ is Concat!19336) (regTwo!24522 (regex!7100 r!4213)))) b!4094399))

(assert (= (and b!4093762 ((_ is Star!12005) (regTwo!24522 (regex!7100 r!4213)))) b!4094400))

(assert (= (and b!4093762 ((_ is Union!12005) (regTwo!24522 (regex!7100 r!4213)))) b!4094401))

(declare-fun tp!1239239 () Bool)

(declare-fun tp!1239240 () Bool)

(declare-fun b!4094425 () Bool)

(declare-fun e!2540880 () Bool)

(assert (=> b!4094425 (= e!2540880 (and (inv!58612 (left!32991 (c!705491 (dynLambda!18804 (toChars!9555 (transformation!7100 (rule!10246 lt!1464134))) (value!223002 lt!1464134))))) tp!1239239 (inv!58612 (right!33321 (c!705491 (dynLambda!18804 (toChars!9555 (transformation!7100 (rule!10246 lt!1464134))) (value!223002 lt!1464134))))) tp!1239240))))

(declare-fun b!4094427 () Bool)

(declare-fun e!2540879 () Bool)

(declare-fun tp!1239238 () Bool)

(assert (=> b!4094427 (= e!2540879 tp!1239238)))

(declare-fun b!4094426 () Bool)

(declare-fun inv!58618 (IArray!26627) Bool)

(assert (=> b!4094426 (= e!2540880 (and (inv!58618 (xs!16617 (c!705491 (dynLambda!18804 (toChars!9555 (transformation!7100 (rule!10246 lt!1464134))) (value!223002 lt!1464134))))) e!2540879))))

(assert (=> b!4093520 (= tp!1239091 (and (inv!58612 (c!705491 (dynLambda!18804 (toChars!9555 (transformation!7100 (rule!10246 lt!1464134))) (value!223002 lt!1464134)))) e!2540880))))

(assert (= (and b!4093520 ((_ is Node!13311) (c!705491 (dynLambda!18804 (toChars!9555 (transformation!7100 (rule!10246 lt!1464134))) (value!223002 lt!1464134))))) b!4094425))

(assert (= b!4094426 b!4094427))

(assert (= (and b!4093520 ((_ is Leaf!20576) (c!705491 (dynLambda!18804 (toChars!9555 (transformation!7100 (rule!10246 lt!1464134))) (value!223002 lt!1464134))))) b!4094426))

(declare-fun m!4701523 () Bool)

(assert (=> b!4094425 m!4701523))

(declare-fun m!4701525 () Bool)

(assert (=> b!4094425 m!4701525))

(declare-fun m!4701527 () Bool)

(assert (=> b!4094426 m!4701527))

(assert (=> b!4093520 m!4700501))

(declare-fun b!4094431 () Bool)

(declare-fun e!2540881 () Bool)

(declare-fun tp!1239241 () Bool)

(declare-fun tp!1239245 () Bool)

(assert (=> b!4094431 (= e!2540881 (and tp!1239241 tp!1239245))))

(assert (=> b!4093779 (= tp!1239160 e!2540881)))

(declare-fun b!4094429 () Bool)

(declare-fun tp!1239244 () Bool)

(declare-fun tp!1239242 () Bool)

(assert (=> b!4094429 (= e!2540881 (and tp!1239244 tp!1239242))))

(declare-fun b!4094428 () Bool)

(assert (=> b!4094428 (= e!2540881 tp_is_empty!21013)))

(declare-fun b!4094430 () Bool)

(declare-fun tp!1239243 () Bool)

(assert (=> b!4094430 (= e!2540881 tp!1239243)))

(assert (= (and b!4093779 ((_ is ElementMatch!12005) (regex!7100 (h!49309 (t!339012 rules!3870))))) b!4094428))

(assert (= (and b!4093779 ((_ is Concat!19336) (regex!7100 (h!49309 (t!339012 rules!3870))))) b!4094429))

(assert (= (and b!4093779 ((_ is Star!12005) (regex!7100 (h!49309 (t!339012 rules!3870))))) b!4094430))

(assert (= (and b!4093779 ((_ is Union!12005) (regex!7100 (h!49309 (t!339012 rules!3870))))) b!4094431))

(declare-fun b!4094432 () Bool)

(declare-fun e!2540882 () Bool)

(declare-fun tp!1239246 () Bool)

(assert (=> b!4094432 (= e!2540882 (and tp_is_empty!21013 tp!1239246))))

(assert (=> b!4093769 (= tp!1239151 e!2540882)))

(assert (= (and b!4093769 ((_ is Cons!43888) (t!339011 (t!339011 input!3411)))) b!4094432))

(declare-fun b!4094436 () Bool)

(declare-fun e!2540883 () Bool)

(declare-fun tp!1239247 () Bool)

(declare-fun tp!1239251 () Bool)

(assert (=> b!4094436 (= e!2540883 (and tp!1239247 tp!1239251))))

(assert (=> b!4093786 (= tp!1239166 e!2540883)))

(declare-fun b!4094434 () Bool)

(declare-fun tp!1239250 () Bool)

(declare-fun tp!1239248 () Bool)

(assert (=> b!4094434 (= e!2540883 (and tp!1239250 tp!1239248))))

(declare-fun b!4094433 () Bool)

(assert (=> b!4094433 (= e!2540883 tp_is_empty!21013)))

(declare-fun b!4094435 () Bool)

(declare-fun tp!1239249 () Bool)

(assert (=> b!4094435 (= e!2540883 tp!1239249)))

(assert (= (and b!4093786 ((_ is ElementMatch!12005) (regOne!24523 (regex!7100 (h!49309 rules!3870))))) b!4094433))

(assert (= (and b!4093786 ((_ is Concat!19336) (regOne!24523 (regex!7100 (h!49309 rules!3870))))) b!4094434))

(assert (= (and b!4093786 ((_ is Star!12005) (regOne!24523 (regex!7100 (h!49309 rules!3870))))) b!4094435))

(assert (= (and b!4093786 ((_ is Union!12005) (regOne!24523 (regex!7100 (h!49309 rules!3870))))) b!4094436))

(declare-fun b!4094444 () Bool)

(declare-fun e!2540885 () Bool)

(declare-fun tp!1239257 () Bool)

(declare-fun tp!1239261 () Bool)

(assert (=> b!4094444 (= e!2540885 (and tp!1239257 tp!1239261))))

(assert (=> b!4093786 (= tp!1239170 e!2540885)))

(declare-fun b!4094442 () Bool)

(declare-fun tp!1239260 () Bool)

(declare-fun tp!1239258 () Bool)

(assert (=> b!4094442 (= e!2540885 (and tp!1239260 tp!1239258))))

(declare-fun b!4094441 () Bool)

(assert (=> b!4094441 (= e!2540885 tp_is_empty!21013)))

(declare-fun b!4094443 () Bool)

(declare-fun tp!1239259 () Bool)

(assert (=> b!4094443 (= e!2540885 tp!1239259)))

(assert (= (and b!4093786 ((_ is ElementMatch!12005) (regTwo!24523 (regex!7100 (h!49309 rules!3870))))) b!4094441))

(assert (= (and b!4093786 ((_ is Concat!19336) (regTwo!24523 (regex!7100 (h!49309 rules!3870))))) b!4094442))

(assert (= (and b!4093786 ((_ is Star!12005) (regTwo!24523 (regex!7100 (h!49309 rules!3870))))) b!4094443))

(assert (= (and b!4093786 ((_ is Union!12005) (regTwo!24523 (regex!7100 (h!49309 rules!3870))))) b!4094444))

(declare-fun b!4094451 () Bool)

(declare-fun b_free!114461 () Bool)

(declare-fun b_next!115165 () Bool)

(assert (=> b!4094451 (= b_free!114461 (not b_next!115165))))

(declare-fun t!339142 () Bool)

(declare-fun tb!246351 () Bool)

(assert (=> (and b!4094451 (= (toValue!9696 (transformation!7100 (h!49309 (t!339012 (t!339012 rules!3870))))) (toValue!9696 (transformation!7100 (rule!10246 (_1!24544 (get!14394 lt!1464205)))))) t!339142) tb!246351))

(declare-fun result!298912 () Bool)

(assert (= result!298912 result!298878))

(assert (=> d!1215789 t!339142))

(declare-fun t!339144 () Bool)

(declare-fun tb!246353 () Bool)

(assert (=> (and b!4094451 (= (toValue!9696 (transformation!7100 (h!49309 (t!339012 (t!339012 rules!3870))))) (toValue!9696 (transformation!7100 (rule!10246 (_1!24544 (get!14394 lt!1464180)))))) t!339144) tb!246353))

(declare-fun result!298914 () Bool)

(assert (= result!298914 result!298884))

(assert (=> d!1215827 t!339144))

(declare-fun t!339146 () Bool)

(declare-fun tb!246355 () Bool)

(assert (=> (and b!4094451 (= (toValue!9696 (transformation!7100 (h!49309 (t!339012 (t!339012 rules!3870))))) (toValue!9696 (transformation!7100 r!4213))) t!339146) tb!246355))

(declare-fun result!298916 () Bool)

(assert (= result!298916 result!298800))

(assert (=> d!1215541 t!339146))

(declare-fun t!339148 () Bool)

(declare-fun tb!246357 () Bool)

(assert (=> (and b!4094451 (= (toValue!9696 (transformation!7100 (h!49309 (t!339012 (t!339012 rules!3870))))) (toValue!9696 (transformation!7100 (h!49309 rules!3870)))) t!339148) tb!246357))

(declare-fun result!298918 () Bool)

(assert (= result!298918 result!298848))

(assert (=> d!1215717 t!339148))

(assert (=> d!1215755 t!339148))

(assert (=> d!1215507 t!339146))

(declare-fun tp!1239268 () Bool)

(declare-fun b_and!315767 () Bool)

(assert (=> b!4094451 (= tp!1239268 (and (=> t!339148 result!298918) (=> t!339146 result!298916) (=> t!339142 result!298912) (=> t!339144 result!298914) b_and!315767))))

(declare-fun b_free!114463 () Bool)

(declare-fun b_next!115167 () Bool)

(assert (=> b!4094451 (= b_free!114463 (not b_next!115167))))

(declare-fun t!339150 () Bool)

(declare-fun tb!246359 () Bool)

(assert (=> (and b!4094451 (= (toChars!9555 (transformation!7100 (h!49309 (t!339012 (t!339012 rules!3870))))) (toChars!9555 (transformation!7100 (h!49309 rules!3870)))) t!339150) tb!246359))

(declare-fun result!298920 () Bool)

(assert (= result!298920 result!298866))

(assert (=> d!1215755 t!339150))

(declare-fun tb!246361 () Bool)

(declare-fun t!339152 () Bool)

(assert (=> (and b!4094451 (= (toChars!9555 (transformation!7100 (h!49309 (t!339012 (t!339012 rules!3870))))) (toChars!9555 (transformation!7100 (rule!10246 (_1!24544 (get!14394 lt!1464205)))))) t!339152) tb!246361))

(declare-fun result!298922 () Bool)

(assert (= result!298922 result!298824))

(assert (=> d!1215597 t!339152))

(declare-fun t!339154 () Bool)

(declare-fun tb!246363 () Bool)

(assert (=> (and b!4094451 (= (toChars!9555 (transformation!7100 (h!49309 (t!339012 (t!339012 rules!3870))))) (toChars!9555 (transformation!7100 (rule!10246 (_1!24544 (get!14394 lt!1464180)))))) t!339154) tb!246363))

(declare-fun result!298924 () Bool)

(assert (= result!298924 result!298872))

(assert (=> d!1215767 t!339154))

(declare-fun t!339156 () Bool)

(declare-fun tb!246365 () Bool)

(assert (=> (and b!4094451 (= (toChars!9555 (transformation!7100 (h!49309 (t!339012 (t!339012 rules!3870))))) (toChars!9555 (transformation!7100 r!4213))) t!339156) tb!246365))

(declare-fun result!298926 () Bool)

(assert (= result!298926 result!298796))

(assert (=> d!1215507 t!339156))

(declare-fun tb!246367 () Bool)

(declare-fun t!339158 () Bool)

(assert (=> (and b!4094451 (= (toChars!9555 (transformation!7100 (h!49309 (t!339012 (t!339012 rules!3870))))) (toChars!9555 (transformation!7100 (rule!10246 lt!1464134)))) t!339158) tb!246367))

(declare-fun result!298928 () Bool)

(assert (= result!298928 result!298768))

(assert (=> b!4093514 t!339158))

(declare-fun b_and!315769 () Bool)

(declare-fun tp!1239270 () Bool)

(assert (=> b!4094451 (= tp!1239270 (and (=> t!339158 result!298928) (=> t!339150 result!298920) (=> t!339156 result!298926) (=> t!339154 result!298924) (=> t!339152 result!298922) b_and!315769))))

(declare-fun e!2540888 () Bool)

(assert (=> b!4094451 (= e!2540888 (and tp!1239268 tp!1239270))))

(declare-fun tp!1239267 () Bool)

(declare-fun b!4094450 () Bool)

(declare-fun e!2540890 () Bool)

(assert (=> b!4094450 (= e!2540890 (and tp!1239267 (inv!58605 (tag!7960 (h!49309 (t!339012 (t!339012 rules!3870))))) (inv!58609 (transformation!7100 (h!49309 (t!339012 (t!339012 rules!3870))))) e!2540888))))

(declare-fun b!4094449 () Bool)

(declare-fun e!2540887 () Bool)

(declare-fun tp!1239269 () Bool)

(assert (=> b!4094449 (= e!2540887 (and e!2540890 tp!1239269))))

(assert (=> b!4093778 (= tp!1239162 e!2540887)))

(assert (= b!4094450 b!4094451))

(assert (= b!4094449 b!4094450))

(assert (= (and b!4093778 ((_ is Cons!43889) (t!339012 (t!339012 rules!3870)))) b!4094449))

(declare-fun m!4701539 () Bool)

(assert (=> b!4094450 m!4701539))

(declare-fun m!4701541 () Bool)

(assert (=> b!4094450 m!4701541))

(declare-fun b!4094468 () Bool)

(declare-fun e!2540897 () Bool)

(declare-fun tp!1239290 () Bool)

(assert (=> b!4094468 (= e!2540897 (and tp_is_empty!21013 tp!1239290))))

(assert (=> b!4093782 (= tp!1239165 e!2540897)))

(assert (= (and b!4093782 ((_ is Cons!43888) (t!339011 (t!339011 p!2988)))) b!4094468))

(declare-fun b!4094472 () Bool)

(declare-fun e!2540898 () Bool)

(declare-fun tp!1239291 () Bool)

(declare-fun tp!1239295 () Bool)

(assert (=> b!4094472 (= e!2540898 (and tp!1239291 tp!1239295))))

(assert (=> b!4093785 (= tp!1239168 e!2540898)))

(declare-fun b!4094470 () Bool)

(declare-fun tp!1239294 () Bool)

(declare-fun tp!1239292 () Bool)

(assert (=> b!4094470 (= e!2540898 (and tp!1239294 tp!1239292))))

(declare-fun b!4094469 () Bool)

(assert (=> b!4094469 (= e!2540898 tp_is_empty!21013)))

(declare-fun b!4094471 () Bool)

(declare-fun tp!1239293 () Bool)

(assert (=> b!4094471 (= e!2540898 tp!1239293)))

(assert (= (and b!4093785 ((_ is ElementMatch!12005) (reg!12334 (regex!7100 (h!49309 rules!3870))))) b!4094469))

(assert (= (and b!4093785 ((_ is Concat!19336) (reg!12334 (regex!7100 (h!49309 rules!3870))))) b!4094470))

(assert (= (and b!4093785 ((_ is Star!12005) (reg!12334 (regex!7100 (h!49309 rules!3870))))) b!4094471))

(assert (= (and b!4093785 ((_ is Union!12005) (reg!12334 (regex!7100 (h!49309 rules!3870))))) b!4094472))

(declare-fun b!4094473 () Bool)

(declare-fun e!2540899 () Bool)

(declare-fun tp!1239296 () Bool)

(assert (=> b!4094473 (= e!2540899 (and tp_is_empty!21013 tp!1239296))))

(assert (=> b!4093781 (= tp!1239164 e!2540899)))

(assert (= (and b!4093781 ((_ is Cons!43888) (t!339011 (t!339011 suffix!1518)))) b!4094473))

(declare-fun b!4094477 () Bool)

(declare-fun e!2540900 () Bool)

(declare-fun tp!1239297 () Bool)

(declare-fun tp!1239301 () Bool)

(assert (=> b!4094477 (= e!2540900 (and tp!1239297 tp!1239301))))

(assert (=> b!4093764 (= tp!1239144 e!2540900)))

(declare-fun b!4094475 () Bool)

(declare-fun tp!1239300 () Bool)

(declare-fun tp!1239298 () Bool)

(assert (=> b!4094475 (= e!2540900 (and tp!1239300 tp!1239298))))

(declare-fun b!4094474 () Bool)

(assert (=> b!4094474 (= e!2540900 tp_is_empty!21013)))

(declare-fun b!4094476 () Bool)

(declare-fun tp!1239299 () Bool)

(assert (=> b!4094476 (= e!2540900 tp!1239299)))

(assert (= (and b!4093764 ((_ is ElementMatch!12005) (regOne!24523 (regex!7100 r!4213)))) b!4094474))

(assert (= (and b!4093764 ((_ is Concat!19336) (regOne!24523 (regex!7100 r!4213)))) b!4094475))

(assert (= (and b!4093764 ((_ is Star!12005) (regOne!24523 (regex!7100 r!4213)))) b!4094476))

(assert (= (and b!4093764 ((_ is Union!12005) (regOne!24523 (regex!7100 r!4213)))) b!4094477))

(declare-fun b!4094481 () Bool)

(declare-fun e!2540901 () Bool)

(declare-fun tp!1239302 () Bool)

(declare-fun tp!1239306 () Bool)

(assert (=> b!4094481 (= e!2540901 (and tp!1239302 tp!1239306))))

(assert (=> b!4093764 (= tp!1239148 e!2540901)))

(declare-fun b!4094479 () Bool)

(declare-fun tp!1239305 () Bool)

(declare-fun tp!1239303 () Bool)

(assert (=> b!4094479 (= e!2540901 (and tp!1239305 tp!1239303))))

(declare-fun b!4094478 () Bool)

(assert (=> b!4094478 (= e!2540901 tp_is_empty!21013)))

(declare-fun b!4094480 () Bool)

(declare-fun tp!1239304 () Bool)

(assert (=> b!4094480 (= e!2540901 tp!1239304)))

(assert (= (and b!4093764 ((_ is ElementMatch!12005) (regTwo!24523 (regex!7100 r!4213)))) b!4094478))

(assert (= (and b!4093764 ((_ is Concat!19336) (regTwo!24523 (regex!7100 r!4213)))) b!4094479))

(assert (= (and b!4093764 ((_ is Star!12005) (regTwo!24523 (regex!7100 r!4213)))) b!4094480))

(assert (= (and b!4093764 ((_ is Union!12005) (regTwo!24523 (regex!7100 r!4213)))) b!4094481))

(declare-fun b!4094485 () Bool)

(declare-fun e!2540902 () Bool)

(declare-fun tp!1239307 () Bool)

(declare-fun tp!1239311 () Bool)

(assert (=> b!4094485 (= e!2540902 (and tp!1239307 tp!1239311))))

(assert (=> b!4093784 (= tp!1239169 e!2540902)))

(declare-fun b!4094483 () Bool)

(declare-fun tp!1239310 () Bool)

(declare-fun tp!1239308 () Bool)

(assert (=> b!4094483 (= e!2540902 (and tp!1239310 tp!1239308))))

(declare-fun b!4094482 () Bool)

(assert (=> b!4094482 (= e!2540902 tp_is_empty!21013)))

(declare-fun b!4094484 () Bool)

(declare-fun tp!1239309 () Bool)

(assert (=> b!4094484 (= e!2540902 tp!1239309)))

(assert (= (and b!4093784 ((_ is ElementMatch!12005) (regOne!24522 (regex!7100 (h!49309 rules!3870))))) b!4094482))

(assert (= (and b!4093784 ((_ is Concat!19336) (regOne!24522 (regex!7100 (h!49309 rules!3870))))) b!4094483))

(assert (= (and b!4093784 ((_ is Star!12005) (regOne!24522 (regex!7100 (h!49309 rules!3870))))) b!4094484))

(assert (= (and b!4093784 ((_ is Union!12005) (regOne!24522 (regex!7100 (h!49309 rules!3870))))) b!4094485))

(declare-fun b!4094489 () Bool)

(declare-fun e!2540903 () Bool)

(declare-fun tp!1239312 () Bool)

(declare-fun tp!1239316 () Bool)

(assert (=> b!4094489 (= e!2540903 (and tp!1239312 tp!1239316))))

(assert (=> b!4093784 (= tp!1239167 e!2540903)))

(declare-fun b!4094487 () Bool)

(declare-fun tp!1239315 () Bool)

(declare-fun tp!1239313 () Bool)

(assert (=> b!4094487 (= e!2540903 (and tp!1239315 tp!1239313))))

(declare-fun b!4094486 () Bool)

(assert (=> b!4094486 (= e!2540903 tp_is_empty!21013)))

(declare-fun b!4094488 () Bool)

(declare-fun tp!1239314 () Bool)

(assert (=> b!4094488 (= e!2540903 tp!1239314)))

(assert (= (and b!4093784 ((_ is ElementMatch!12005) (regTwo!24522 (regex!7100 (h!49309 rules!3870))))) b!4094486))

(assert (= (and b!4093784 ((_ is Concat!19336) (regTwo!24522 (regex!7100 (h!49309 rules!3870))))) b!4094487))

(assert (= (and b!4093784 ((_ is Star!12005) (regTwo!24522 (regex!7100 (h!49309 rules!3870))))) b!4094488))

(assert (= (and b!4093784 ((_ is Union!12005) (regTwo!24522 (regex!7100 (h!49309 rules!3870))))) b!4094489))

(declare-fun e!2540905 () Bool)

(declare-fun tp!1239319 () Bool)

(declare-fun b!4094490 () Bool)

(declare-fun tp!1239318 () Bool)

(assert (=> b!4094490 (= e!2540905 (and (inv!58612 (left!32991 (c!705491 (dynLambda!18804 (toChars!9555 (transformation!7100 r!4213)) (dynLambda!18808 (toValue!9696 (transformation!7100 r!4213)) lt!1464131))))) tp!1239318 (inv!58612 (right!33321 (c!705491 (dynLambda!18804 (toChars!9555 (transformation!7100 r!4213)) (dynLambda!18808 (toValue!9696 (transformation!7100 r!4213)) lt!1464131))))) tp!1239319))))

(declare-fun b!4094492 () Bool)

(declare-fun e!2540904 () Bool)

(declare-fun tp!1239317 () Bool)

(assert (=> b!4094492 (= e!2540904 tp!1239317)))

(declare-fun b!4094491 () Bool)

(assert (=> b!4094491 (= e!2540905 (and (inv!58618 (xs!16617 (c!705491 (dynLambda!18804 (toChars!9555 (transformation!7100 r!4213)) (dynLambda!18808 (toValue!9696 (transformation!7100 r!4213)) lt!1464131))))) e!2540904))))

(assert (=> b!4093748 (= tp!1239133 (and (inv!58612 (c!705491 (dynLambda!18804 (toChars!9555 (transformation!7100 r!4213)) (dynLambda!18808 (toValue!9696 (transformation!7100 r!4213)) lt!1464131)))) e!2540905))))

(assert (= (and b!4093748 ((_ is Node!13311) (c!705491 (dynLambda!18804 (toChars!9555 (transformation!7100 r!4213)) (dynLambda!18808 (toValue!9696 (transformation!7100 r!4213)) lt!1464131))))) b!4094490))

(assert (= b!4094491 b!4094492))

(assert (= (and b!4093748 ((_ is Leaf!20576) (c!705491 (dynLambda!18804 (toChars!9555 (transformation!7100 r!4213)) (dynLambda!18808 (toValue!9696 (transformation!7100 r!4213)) lt!1464131))))) b!4094491))

(declare-fun m!4701543 () Bool)

(assert (=> b!4094490 m!4701543))

(declare-fun m!4701545 () Bool)

(assert (=> b!4094490 m!4701545))

(declare-fun m!4701547 () Bool)

(assert (=> b!4094491 m!4701547))

(assert (=> b!4093748 m!4700773))

(declare-fun b!4094496 () Bool)

(declare-fun e!2540906 () Bool)

(declare-fun tp!1239320 () Bool)

(declare-fun tp!1239324 () Bool)

(assert (=> b!4094496 (= e!2540906 (and tp!1239320 tp!1239324))))

(assert (=> b!4093763 (= tp!1239146 e!2540906)))

(declare-fun b!4094494 () Bool)

(declare-fun tp!1239323 () Bool)

(declare-fun tp!1239321 () Bool)

(assert (=> b!4094494 (= e!2540906 (and tp!1239323 tp!1239321))))

(declare-fun b!4094493 () Bool)

(assert (=> b!4094493 (= e!2540906 tp_is_empty!21013)))

(declare-fun b!4094495 () Bool)

(declare-fun tp!1239322 () Bool)

(assert (=> b!4094495 (= e!2540906 tp!1239322)))

(assert (= (and b!4093763 ((_ is ElementMatch!12005) (reg!12334 (regex!7100 r!4213)))) b!4094493))

(assert (= (and b!4093763 ((_ is Concat!19336) (reg!12334 (regex!7100 r!4213)))) b!4094494))

(assert (= (and b!4093763 ((_ is Star!12005) (reg!12334 (regex!7100 r!4213)))) b!4094495))

(assert (= (and b!4093763 ((_ is Union!12005) (reg!12334 (regex!7100 r!4213)))) b!4094496))

(declare-fun b_lambda!120177 () Bool)

(assert (= b_lambda!120105 (or (and b!4093390 b_free!114443 (= (toChars!9555 (transformation!7100 r!4213)) (toChars!9555 (transformation!7100 (rule!10246 lt!1464134))))) (and b!4093398 b_free!114447 (= (toChars!9555 (transformation!7100 (h!49309 rules!3870))) (toChars!9555 (transformation!7100 (rule!10246 lt!1464134))))) (and b!4093780 b_free!114455 (= (toChars!9555 (transformation!7100 (h!49309 (t!339012 rules!3870)))) (toChars!9555 (transformation!7100 (rule!10246 lt!1464134))))) (and b!4094451 b_free!114463 (= (toChars!9555 (transformation!7100 (h!49309 (t!339012 (t!339012 rules!3870))))) (toChars!9555 (transformation!7100 (rule!10246 lt!1464134))))) b_lambda!120177)))

(declare-fun b_lambda!120179 () Bool)

(assert (= b_lambda!120151 (or (and b!4093390 b_free!114443 (= (toChars!9555 (transformation!7100 r!4213)) (toChars!9555 (transformation!7100 (h!49309 rules!3870))))) (and b!4093398 b_free!114447) (and b!4093780 b_free!114455 (= (toChars!9555 (transformation!7100 (h!49309 (t!339012 rules!3870)))) (toChars!9555 (transformation!7100 (h!49309 rules!3870))))) (and b!4094451 b_free!114463 (= (toChars!9555 (transformation!7100 (h!49309 (t!339012 (t!339012 rules!3870))))) (toChars!9555 (transformation!7100 (h!49309 rules!3870))))) b_lambda!120179)))

(declare-fun b_lambda!120181 () Bool)

(assert (= b_lambda!120153 (or (and b!4093390 b_free!114441 (= (toValue!9696 (transformation!7100 r!4213)) (toValue!9696 (transformation!7100 (h!49309 rules!3870))))) (and b!4093398 b_free!114445) (and b!4093780 b_free!114453 (= (toValue!9696 (transformation!7100 (h!49309 (t!339012 rules!3870)))) (toValue!9696 (transformation!7100 (h!49309 rules!3870))))) (and b!4094451 b_free!114461 (= (toValue!9696 (transformation!7100 (h!49309 (t!339012 (t!339012 rules!3870))))) (toValue!9696 (transformation!7100 (h!49309 rules!3870))))) b_lambda!120181)))

(declare-fun b_lambda!120183 () Bool)

(assert (= b_lambda!120159 (or d!1215507 b_lambda!120183)))

(declare-fun bs!593532 () Bool)

(declare-fun d!1215863 () Bool)

(assert (= bs!593532 (and d!1215863 d!1215507)))

(assert (=> bs!593532 (= (dynLambda!18812 lambda!128081 lt!1464131) (= (list!16292 (dynLambda!18804 (toChars!9555 (transformation!7100 r!4213)) (dynLambda!18808 (toValue!9696 (transformation!7100 r!4213)) lt!1464131))) (list!16292 lt!1464131)))))

(declare-fun b_lambda!120187 () Bool)

(assert (=> (not b_lambda!120187) (not bs!593532)))

(assert (=> bs!593532 t!339036))

(declare-fun b_and!315787 () Bool)

(assert (= b_and!315745 (and (=> t!339036 result!298796) b_and!315787)))

(assert (=> bs!593532 t!339038))

(declare-fun b_and!315789 () Bool)

(assert (= b_and!315747 (and (=> t!339038 result!298798) b_and!315789)))

(assert (=> bs!593532 t!339048))

(declare-fun b_and!315791 () Bool)

(assert (= b_and!315749 (and (=> t!339048 result!298816) b_and!315791)))

(assert (=> bs!593532 t!339156))

(declare-fun b_and!315793 () Bool)

(assert (= b_and!315769 (and (=> t!339156 result!298926) b_and!315793)))

(declare-fun b_lambda!120189 () Bool)

(assert (=> (not b_lambda!120189) (not bs!593532)))

(assert (=> bs!593532 t!339040))

(declare-fun b_and!315795 () Bool)

(assert (= b_and!315757 (and (=> t!339040 result!298800) b_and!315795)))

(assert (=> bs!593532 t!339042))

(declare-fun b_and!315797 () Bool)

(assert (= b_and!315759 (and (=> t!339042 result!298804) b_and!315797)))

(assert (=> bs!593532 t!339044))

(declare-fun b_and!315799 () Bool)

(assert (= b_and!315761 (and (=> t!339044 result!298812) b_and!315799)))

(assert (=> bs!593532 t!339146))

(declare-fun b_and!315801 () Bool)

(assert (= b_and!315767 (and (=> t!339146 result!298916) b_and!315801)))

(assert (=> bs!593532 m!4700781))

(assert (=> bs!593532 m!4700785))

(assert (=> bs!593532 m!4700779))

(assert (=> bs!593532 m!4700781))

(assert (=> bs!593532 m!4700787))

(assert (=> bs!593532 m!4700779))

(assert (=> d!1215815 d!1215863))

(declare-fun b_lambda!120185 () Bool)

(assert (= b_lambda!120143 (or (and b!4093390 b_free!114441 (= (toValue!9696 (transformation!7100 r!4213)) (toValue!9696 (transformation!7100 (h!49309 rules!3870))))) (and b!4093398 b_free!114445) (and b!4093780 b_free!114453 (= (toValue!9696 (transformation!7100 (h!49309 (t!339012 rules!3870)))) (toValue!9696 (transformation!7100 (h!49309 rules!3870))))) (and b!4094451 b_free!114461 (= (toValue!9696 (transformation!7100 (h!49309 (t!339012 (t!339012 rules!3870))))) (toValue!9696 (transformation!7100 (h!49309 rules!3870))))) b_lambda!120185)))

(check-sat (not d!1215767) (not b!4093878) (not b!4094068) (not b!4094315) (not b!4094470) (not b!4094397) (not d!1215677) (not d!1215707) (not b_lambda!120155) (not b!4094252) (not b!4094219) (not b!4094072) (not b!4093883) (not b_next!115157) (not d!1215571) (not b!4094163) (not b!4093838) b_and!315799 (not d!1215687) (not bm!289369) (not b!4094436) (not bm!289446) (not d!1215601) (not b!4094450) (not b!4094256) (not d!1215777) (not bm!289409) (not b!4094370) (not b!4094427) (not b!4094066) (not b!4093827) (not d!1215855) (not b!4094157) (not d!1215795) (not b!4094479) (not b!4094316) (not b!4094496) (not b_next!115145) (not b!4093978) b_and!315789 (not b!4094430) (not b_lambda!120161) (not b!4093520) (not d!1215853) (not b!4094489) (not b!4094011) (not b!4094246) (not b_next!115159) (not b!4094400) (not d!1215793) (not b!4094190) (not tb!246309) (not b!4094215) (not b!4094494) (not b!4093748) (not b_lambda!120127) (not b!4093885) (not b!4094070) (not b!4094443) (not bm!289402) b_and!315791 (not b!4093948) (not bm!289448) (not tb!246327) (not b_next!115165) (not d!1215775) (not b_next!115151) (not d!1215667) (not b!4094401) (not b!4094289) (not b!4094244) (not d!1215849) (not b!4094492) (not d!1215797) (not b!4094214) (not d!1215635) (not d!1215813) (not b!4093889) (not d!1215761) (not b_lambda!120189) (not tb!246315) (not b!4094080) (not b!4094250) (not d!1215627) (not b!4094321) (not d!1215755) (not b!4094442) (not b!4093979) (not b!4094444) (not b!4094395) (not b!4094468) (not tb!246267) (not b!4093887) (not b!4094449) (not d!1215753) (not b!4094488) (not b!4094490) (not bs!593532) (not b_lambda!120125) (not d!1215841) (not b_lambda!120135) (not bm!289384) (not d!1215851) b_and!315795 b_and!315797 (not b!4094477) (not b!4094073) (not b_lambda!120179) (not b!4093949) (not bm!289437) (not bm!289404) (not d!1215711) (not b!4094388) (not b!4094435) (not d!1215587) (not tb!246321) (not b!4094199) (not d!1215833) (not b!4093881) (not bm!289435) (not b!4094248) (not d!1215723) (not b!4094039) (not b_lambda!120177) (not bm!289422) (not b_lambda!120129) (not b!4094222) (not d!1215763) (not d!1215773) (not d!1215815) (not bm!289360) (not b_next!115149) (not b!4093884) (not b!4094224) (not b!4094220) (not b!4094431) (not b!4094495) (not b!4094257) (not b!4094161) (not b!4094476) (not b!4094037) (not b_lambda!120185) (not b!4094323) (not b!4094217) (not b!4094481) (not b!4094432) (not d!1215645) (not d!1215695) (not b!4094194) (not b_next!115147) (not b!4094053) (not b!4094196) (not b!4094052) (not bm!289408) (not d!1215765) (not b!4094023) (not b!4094425) (not d!1215609) (not b_lambda!120157) (not b!4093834) (not b!4093880) (not b!4094216) (not d!1215665) (not b!4094050) (not b!4094484) (not b!4094261) (not b!4093875) (not b!4094006) (not b!4094327) (not b_lambda!120183) (not b!4094192) (not b!4093999) (not b!4094332) (not b!4094434) b_and!315793 (not b!4094472) (not b!4094491) b_and!315787 (not b!4094473) (not d!1215573) (not bm!289405) (not b!4094155) (not bm!289367) (not d!1215633) (not b!4094205) (not b!4094485) (not b!4093933) (not d!1215705) (not b!4094254) (not bm!289406) (not b!4094475) (not b!4094203) (not b_next!115167) (not b!4094198) (not b!4094483) (not b!4094390) (not b!4094480) (not b!4094325) (not b!4094015) (not b!4094399) (not b_lambda!120187) (not bm!289403) (not d!1215831) b_and!315801 (not b_lambda!120181) (not d!1215597) (not bm!289407) (not b!4094426) (not b!4094008) (not b!4093950) (not b!4094487) (not b!4094319) (not d!1215759) (not d!1215811) tp_is_empty!21013 (not b!4094471) (not b!4093886) (not b!4093833) (not b!4094396) (not d!1215593) (not d!1215603) (not b!4094154) (not tb!246291) (not d!1215781) (not b!4093882) (not b!4094328) (not b!4094429) (not b!4094010) (not b!4094077))
(check-sat (not b_next!115159) (not b_next!115149) (not b_next!115147) (not b_next!115167) b_and!315801 b_and!315799 (not b_next!115157) (not b_next!115145) b_and!315789 (not b_next!115151) b_and!315791 (not b_next!115165) b_and!315795 b_and!315797 b_and!315793 b_and!315787)
