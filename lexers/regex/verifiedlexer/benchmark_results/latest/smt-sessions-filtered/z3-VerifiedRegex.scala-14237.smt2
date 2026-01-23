; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!744868 () Bool)

(assert start!744868)

(declare-fun b!7897490 () Bool)

(declare-fun b_free!134487 () Bool)

(declare-fun b_next!135277 () Bool)

(assert (=> b!7897490 (= b_free!134487 (not b_next!135277))))

(declare-fun tp!2352869 () Bool)

(declare-fun b_and!352339 () Bool)

(assert (=> b!7897490 (= tp!2352869 b_and!352339)))

(declare-fun b_free!134489 () Bool)

(declare-fun b_next!135279 () Bool)

(assert (=> b!7897490 (= b_free!134489 (not b_next!135279))))

(declare-fun tp!2352871 () Bool)

(declare-fun b_and!352341 () Bool)

(assert (=> b!7897490 (= tp!2352871 b_and!352341)))

(declare-fun b!7897487 () Bool)

(declare-fun res!3132795 () Bool)

(declare-fun e!4661461 () Bool)

(assert (=> b!7897487 (=> res!3132795 e!4661461)))

(declare-datatypes ((List!74140 0))(
  ( (Nil!74016) (Cons!74016 (h!80464 (_ BitVec 16)) (t!388875 List!74140)) )
))
(declare-datatypes ((TokenValue!8856 0))(
  ( (FloatLiteralValue!17712 (text!62437 List!74140)) (TokenValueExt!8855 (__x!34999 Int)) (Broken!44280 (value!285345 List!74140)) (Object!8979) (End!8856) (Def!8856) (Underscore!8856) (Match!8856) (Else!8856) (Error!8856) (Case!8856) (If!8856) (Extends!8856) (Abstract!8856) (Class!8856) (Val!8856) (DelimiterValue!17712 (del!8916 List!74140)) (KeywordValue!8862 (value!285346 List!74140)) (CommentValue!17712 (value!285347 List!74140)) (WhitespaceValue!17712 (value!285348 List!74140)) (IndentationValue!8856 (value!285349 List!74140)) (String!82701) (Int32!8856) (Broken!44281 (value!285350 List!74140)) (Boolean!8857) (Unit!169031) (OperatorValue!8859 (op!8916 List!74140)) (IdentifierValue!17712 (value!285351 List!74140)) (IdentifierValue!17713 (value!285352 List!74140)) (WhitespaceValue!17713 (value!285353 List!74140)) (True!17712) (False!17712) (Broken!44282 (value!285354 List!74140)) (Broken!44283 (value!285355 List!74140)) (True!17713) (RightBrace!8856) (RightBracket!8856) (Colon!8856) (Null!8856) (Comma!8856) (LeftBracket!8856) (False!17713) (LeftBrace!8856) (ImaginaryLiteralValue!8856 (text!62438 List!74140)) (StringLiteralValue!26568 (value!285356 List!74140)) (EOFValue!8856 (value!285357 List!74140)) (IdentValue!8856 (value!285358 List!74140)) (DelimiterValue!17713 (value!285359 List!74140)) (DedentValue!8856 (value!285360 List!74140)) (NewLineValue!8856 (value!285361 List!74140)) (IntegerValue!26568 (value!285362 (_ BitVec 32)) (text!62439 List!74140)) (IntegerValue!26569 (value!285363 Int) (text!62440 List!74140)) (Times!8856) (Or!8856) (Equal!8856) (Minus!8856) (Broken!44284 (value!285364 List!74140)) (And!8856) (Div!8856) (LessEqual!8856) (Mod!8856) (Concat!30099) (Not!8856) (Plus!8856) (SpaceValue!8856 (value!285365 List!74140)) (IntegerValue!26570 (value!285366 Int) (text!62441 List!74140)) (StringLiteralValue!26569 (text!62442 List!74140)) (FloatLiteralValue!17713 (text!62443 List!74140)) (BytesLiteralValue!8856 (value!285367 List!74140)) (CommentValue!17713 (value!285368 List!74140)) (StringLiteralValue!26570 (value!285369 List!74140)) (ErrorTokenValue!8856 (msg!8917 List!74140)) )
))
(declare-datatypes ((C!42816 0))(
  ( (C!42817 (val!31872 Int)) )
))
(declare-datatypes ((List!74141 0))(
  ( (Nil!74017) (Cons!74017 (h!80465 C!42816) (t!388876 List!74141)) )
))
(declare-datatypes ((IArray!31489 0))(
  ( (IArray!31490 (innerList!15802 List!74141)) )
))
(declare-datatypes ((Conc!15714 0))(
  ( (Node!15714 (left!56487 Conc!15714) (right!56817 Conc!15714) (csize!31658 Int) (cheight!15925 Int)) (Leaf!29952 (xs!19096 IArray!31489) (csize!31659 Int)) (Empty!15714) )
))
(declare-datatypes ((BalanceConc!30546 0))(
  ( (BalanceConc!30547 (c!1449525 Conc!15714)) )
))
(declare-datatypes ((Regex!21243 0))(
  ( (ElementMatch!21243 (c!1449526 C!42816)) (Concat!30100 (regOne!42998 Regex!21243) (regTwo!42998 Regex!21243)) (EmptyExpr!21243) (Star!21243 (reg!21572 Regex!21243)) (EmptyLang!21243) (Union!21243 (regOne!42999 Regex!21243) (regTwo!42999 Regex!21243)) )
))
(declare-datatypes ((String!82702 0))(
  ( (String!82703 (value!285370 String)) )
))
(declare-datatypes ((TokenValueInjection!17020 0))(
  ( (TokenValueInjection!17021 (toValue!11577 Int) (toChars!11436 Int)) )
))
(declare-datatypes ((Rule!16880 0))(
  ( (Rule!16881 (regex!8540 Regex!21243) (tag!9404 String!82702) (isSeparator!8540 Bool) (transformation!8540 TokenValueInjection!17020)) )
))
(declare-datatypes ((Token!15500 0))(
  ( (Token!15501 (value!285371 TokenValue!8856) (rule!11818 Rule!16880) (size!42873 Int) (originalCharacters!8781 List!74141)) )
))
(declare-datatypes ((tuple2!70088 0))(
  ( (tuple2!70089 (_1!38347 Token!15500) (_2!38347 List!74141)) )
))
(declare-fun lt!2681873 () tuple2!70088)

(declare-fun apply!14304 (TokenValueInjection!17020 BalanceConc!30546) TokenValue!8856)

(declare-fun seqFromList!6122 (List!74141) BalanceConc!30546)

(assert (=> b!7897487 (= res!3132795 (not (= (value!285371 (_1!38347 lt!2681873)) (apply!14304 (transformation!8540 (rule!11818 (_1!38347 lt!2681873))) (seqFromList!6122 (originalCharacters!8781 (_1!38347 lt!2681873)))))))))

(declare-fun b!7897488 () Bool)

(declare-fun e!4661457 () Bool)

(declare-fun tp_is_empty!52861 () Bool)

(declare-fun tp!2352872 () Bool)

(assert (=> b!7897488 (= e!4661457 (and tp_is_empty!52861 tp!2352872))))

(declare-fun b!7897489 () Bool)

(declare-fun res!3132787 () Bool)

(declare-fun e!4661463 () Bool)

(assert (=> b!7897489 (=> (not res!3132787) (not e!4661463))))

(declare-datatypes ((LexerInterface!8132 0))(
  ( (LexerInterfaceExt!8129 (__x!35000 Int)) (Lexer!8130) )
))
(declare-fun thiss!14377 () LexerInterface!8132)

(declare-datatypes ((List!74142 0))(
  ( (Nil!74018) (Cons!74018 (h!80466 Rule!16880) (t!388877 List!74142)) )
))
(declare-fun rulesArg!141 () List!74142)

(declare-fun rulesValidInductive!3351 (LexerInterface!8132 List!74142) Bool)

(assert (=> b!7897489 (= res!3132787 (rulesValidInductive!3351 thiss!14377 rulesArg!141))))

(declare-fun e!4661458 () Bool)

(assert (=> b!7897490 (= e!4661458 (and tp!2352869 tp!2352871))))

(declare-fun b!7897491 () Bool)

(declare-fun e!4661459 () Bool)

(assert (=> b!7897491 (= e!4661463 (not e!4661459))))

(declare-fun res!3132794 () Bool)

(assert (=> b!7897491 (=> res!3132794 e!4661459)))

(get-info :version)

(assert (=> b!7897491 (= res!3132794 (or (not ((_ is Cons!74018) rulesArg!141)) (not ((_ is Nil!74018) (t!388877 rulesArg!141)))))))

(declare-fun input!1184 () List!74141)

(declare-fun isPrefix!6373 (List!74141 List!74141) Bool)

(assert (=> b!7897491 (isPrefix!6373 input!1184 input!1184)))

(declare-datatypes ((Unit!169032 0))(
  ( (Unit!169033) )
))
(declare-fun lt!2681874 () Unit!169032)

(declare-fun lemmaIsPrefixRefl!3884 (List!74141 List!74141) Unit!169032)

(assert (=> b!7897491 (= lt!2681874 (lemmaIsPrefixRefl!3884 input!1184 input!1184))))

(declare-fun b!7897492 () Bool)

(declare-fun res!3132790 () Bool)

(assert (=> b!7897492 (=> (not res!3132790) (not e!4661463))))

(declare-fun isEmpty!42456 (List!74142) Bool)

(assert (=> b!7897492 (= res!3132790 (not (isEmpty!42456 rulesArg!141)))))

(declare-fun b!7897493 () Bool)

(assert (=> b!7897493 (= e!4661461 true)))

(declare-fun b!7897494 () Bool)

(declare-fun res!3132791 () Bool)

(declare-fun e!4661464 () Bool)

(assert (=> b!7897494 (=> res!3132791 e!4661464)))

(declare-datatypes ((Option!17822 0))(
  ( (None!17821) (Some!17821 (v!54958 tuple2!70088)) )
))
(declare-fun lt!2681871 () Option!17822)

(declare-fun isDefined!14418 (Option!17822) Bool)

(assert (=> b!7897494 (= res!3132791 (not (isDefined!14418 lt!2681871)))))

(declare-fun b!7897495 () Bool)

(declare-fun res!3132793 () Bool)

(assert (=> b!7897495 (=> res!3132793 e!4661461)))

(declare-fun size!42874 (List!74141) Int)

(assert (=> b!7897495 (= res!3132793 (>= (size!42874 (_2!38347 lt!2681873)) (size!42874 input!1184)))))

(declare-fun b!7897496 () Bool)

(declare-fun e!4661456 () Bool)

(declare-fun e!4661460 () Bool)

(declare-fun tp!2352868 () Bool)

(assert (=> b!7897496 (= e!4661456 (and e!4661460 tp!2352868))))

(declare-fun b!7897497 () Bool)

(assert (=> b!7897497 (= e!4661464 e!4661461)))

(declare-fun res!3132789 () Bool)

(assert (=> b!7897497 (=> res!3132789 e!4661461)))

(declare-fun lt!2681872 () List!74141)

(assert (=> b!7897497 (= res!3132789 (not (= lt!2681872 (originalCharacters!8781 (_1!38347 lt!2681873)))))))

(declare-fun list!19161 (BalanceConc!30546) List!74141)

(declare-fun charsOf!5489 (Token!15500) BalanceConc!30546)

(assert (=> b!7897497 (= lt!2681872 (list!19161 (charsOf!5489 (_1!38347 lt!2681873))))))

(declare-fun get!26569 (Option!17822) tuple2!70088)

(assert (=> b!7897497 (= lt!2681873 (get!26569 lt!2681871))))

(declare-fun b!7897498 () Bool)

(declare-fun res!3132792 () Bool)

(assert (=> b!7897498 (=> res!3132792 e!4661461)))

(declare-fun ++!18123 (List!74141 List!74141) List!74141)

(assert (=> b!7897498 (= res!3132792 (not (= (++!18123 lt!2681872 (_2!38347 lt!2681873)) input!1184)))))

(declare-fun tp!2352870 () Bool)

(declare-fun b!7897499 () Bool)

(declare-fun inv!95003 (String!82702) Bool)

(declare-fun inv!95005 (TokenValueInjection!17020) Bool)

(assert (=> b!7897499 (= e!4661460 (and tp!2352870 (inv!95003 (tag!9404 (h!80466 rulesArg!141))) (inv!95005 (transformation!8540 (h!80466 rulesArg!141))) e!4661458))))

(declare-fun b!7897500 () Bool)

(assert (=> b!7897500 (= e!4661459 e!4661464)))

(declare-fun res!3132796 () Bool)

(assert (=> b!7897500 (=> res!3132796 e!4661464)))

(declare-fun isEmpty!42457 (Option!17822) Bool)

(assert (=> b!7897500 (= res!3132796 (isEmpty!42457 lt!2681871))))

(declare-fun maxPrefixOneRule!3720 (LexerInterface!8132 Rule!16880 List!74141) Option!17822)

(assert (=> b!7897500 (= lt!2681871 (maxPrefixOneRule!3720 thiss!14377 (h!80466 rulesArg!141) input!1184))))

(declare-fun res!3132788 () Bool)

(assert (=> start!744868 (=> (not res!3132788) (not e!4661463))))

(assert (=> start!744868 (= res!3132788 ((_ is Lexer!8130) thiss!14377))))

(assert (=> start!744868 e!4661463))

(assert (=> start!744868 true))

(assert (=> start!744868 e!4661456))

(assert (=> start!744868 e!4661457))

(assert (= (and start!744868 res!3132788) b!7897489))

(assert (= (and b!7897489 res!3132787) b!7897492))

(assert (= (and b!7897492 res!3132790) b!7897491))

(assert (= (and b!7897491 (not res!3132794)) b!7897500))

(assert (= (and b!7897500 (not res!3132796)) b!7897494))

(assert (= (and b!7897494 (not res!3132791)) b!7897497))

(assert (= (and b!7897497 (not res!3132789)) b!7897495))

(assert (= (and b!7897495 (not res!3132793)) b!7897498))

(assert (= (and b!7897498 (not res!3132792)) b!7897487))

(assert (= (and b!7897487 (not res!3132795)) b!7897493))

(assert (= b!7897499 b!7897490))

(assert (= b!7897496 b!7897499))

(assert (= (and start!744868 ((_ is Cons!74018) rulesArg!141)) b!7897496))

(assert (= (and start!744868 ((_ is Cons!74017) input!1184)) b!7897488))

(declare-fun m!8272622 () Bool)

(assert (=> b!7897495 m!8272622))

(declare-fun m!8272624 () Bool)

(assert (=> b!7897495 m!8272624))

(declare-fun m!8272626 () Bool)

(assert (=> b!7897494 m!8272626))

(declare-fun m!8272628 () Bool)

(assert (=> b!7897489 m!8272628))

(declare-fun m!8272630 () Bool)

(assert (=> b!7897499 m!8272630))

(declare-fun m!8272632 () Bool)

(assert (=> b!7897499 m!8272632))

(declare-fun m!8272634 () Bool)

(assert (=> b!7897500 m!8272634))

(declare-fun m!8272636 () Bool)

(assert (=> b!7897500 m!8272636))

(declare-fun m!8272638 () Bool)

(assert (=> b!7897491 m!8272638))

(declare-fun m!8272640 () Bool)

(assert (=> b!7897491 m!8272640))

(declare-fun m!8272642 () Bool)

(assert (=> b!7897498 m!8272642))

(declare-fun m!8272644 () Bool)

(assert (=> b!7897497 m!8272644))

(assert (=> b!7897497 m!8272644))

(declare-fun m!8272646 () Bool)

(assert (=> b!7897497 m!8272646))

(declare-fun m!8272648 () Bool)

(assert (=> b!7897497 m!8272648))

(declare-fun m!8272650 () Bool)

(assert (=> b!7897487 m!8272650))

(assert (=> b!7897487 m!8272650))

(declare-fun m!8272652 () Bool)

(assert (=> b!7897487 m!8272652))

(declare-fun m!8272654 () Bool)

(assert (=> b!7897492 m!8272654))

(check-sat b_and!352341 (not b_next!135277) (not b!7897491) (not b!7897492) (not b!7897489) (not b!7897495) tp_is_empty!52861 (not b_next!135279) (not b!7897487) (not b!7897498) (not b!7897500) (not b!7897494) b_and!352339 (not b!7897497) (not b!7897496) (not b!7897488) (not b!7897499))
(check-sat b_and!352341 b_and!352339 (not b_next!135279) (not b_next!135277))
