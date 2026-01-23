; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!745028 () Bool)

(assert start!745028)

(declare-fun b!7898464 () Bool)

(declare-fun b_free!134519 () Bool)

(declare-fun b_next!135309 () Bool)

(assert (=> b!7898464 (= b_free!134519 (not b_next!135309))))

(declare-fun tp!2353086 () Bool)

(declare-fun b_and!352419 () Bool)

(assert (=> b!7898464 (= tp!2353086 b_and!352419)))

(declare-fun b_free!134521 () Bool)

(declare-fun b_next!135311 () Bool)

(assert (=> b!7898464 (= b_free!134521 (not b_next!135311))))

(declare-fun tp!2353088 () Bool)

(declare-fun b_and!352421 () Bool)

(assert (=> b!7898464 (= tp!2353088 b_and!352421)))

(declare-fun b!7898454 () Bool)

(declare-fun res!3133225 () Bool)

(declare-fun e!4662042 () Bool)

(assert (=> b!7898454 (=> res!3133225 e!4662042)))

(declare-datatypes ((List!74152 0))(
  ( (Nil!74028) (Cons!74028 (h!80476 (_ BitVec 16)) (t!388961 List!74152)) )
))
(declare-datatypes ((TokenValue!8860 0))(
  ( (FloatLiteralValue!17720 (text!62465 List!74152)) (TokenValueExt!8859 (__x!35007 Int)) (Broken!44300 (value!285459 List!74152)) (Object!8983) (End!8860) (Def!8860) (Underscore!8860) (Match!8860) (Else!8860) (Error!8860) (Case!8860) (If!8860) (Extends!8860) (Abstract!8860) (Class!8860) (Val!8860) (DelimiterValue!17720 (del!8920 List!74152)) (KeywordValue!8866 (value!285460 List!74152)) (CommentValue!17720 (value!285461 List!74152)) (WhitespaceValue!17720 (value!285462 List!74152)) (IndentationValue!8860 (value!285463 List!74152)) (String!82721) (Int32!8860) (Broken!44301 (value!285464 List!74152)) (Boolean!8861) (Unit!169046) (OperatorValue!8863 (op!8920 List!74152)) (IdentifierValue!17720 (value!285465 List!74152)) (IdentifierValue!17721 (value!285466 List!74152)) (WhitespaceValue!17721 (value!285467 List!74152)) (True!17720) (False!17720) (Broken!44302 (value!285468 List!74152)) (Broken!44303 (value!285469 List!74152)) (True!17721) (RightBrace!8860) (RightBracket!8860) (Colon!8860) (Null!8860) (Comma!8860) (LeftBracket!8860) (False!17721) (LeftBrace!8860) (ImaginaryLiteralValue!8860 (text!62466 List!74152)) (StringLiteralValue!26580 (value!285470 List!74152)) (EOFValue!8860 (value!285471 List!74152)) (IdentValue!8860 (value!285472 List!74152)) (DelimiterValue!17721 (value!285473 List!74152)) (DedentValue!8860 (value!285474 List!74152)) (NewLineValue!8860 (value!285475 List!74152)) (IntegerValue!26580 (value!285476 (_ BitVec 32)) (text!62467 List!74152)) (IntegerValue!26581 (value!285477 Int) (text!62468 List!74152)) (Times!8860) (Or!8860) (Equal!8860) (Minus!8860) (Broken!44304 (value!285478 List!74152)) (And!8860) (Div!8860) (LessEqual!8860) (Mod!8860) (Concat!30107) (Not!8860) (Plus!8860) (SpaceValue!8860 (value!285479 List!74152)) (IntegerValue!26582 (value!285480 Int) (text!62469 List!74152)) (StringLiteralValue!26581 (text!62470 List!74152)) (FloatLiteralValue!17721 (text!62471 List!74152)) (BytesLiteralValue!8860 (value!285481 List!74152)) (CommentValue!17721 (value!285482 List!74152)) (StringLiteralValue!26582 (value!285483 List!74152)) (ErrorTokenValue!8860 (msg!8921 List!74152)) )
))
(declare-datatypes ((C!42824 0))(
  ( (C!42825 (val!31876 Int)) )
))
(declare-datatypes ((List!74153 0))(
  ( (Nil!74029) (Cons!74029 (h!80477 C!42824) (t!388962 List!74153)) )
))
(declare-datatypes ((IArray!31497 0))(
  ( (IArray!31498 (innerList!15806 List!74153)) )
))
(declare-datatypes ((Conc!15718 0))(
  ( (Node!15718 (left!56497 Conc!15718) (right!56827 Conc!15718) (csize!31666 Int) (cheight!15929 Int)) (Leaf!29958 (xs!19100 IArray!31497) (csize!31667 Int)) (Empty!15718) )
))
(declare-datatypes ((BalanceConc!30554 0))(
  ( (BalanceConc!30555 (c!1449699 Conc!15718)) )
))
(declare-datatypes ((Regex!21247 0))(
  ( (ElementMatch!21247 (c!1449700 C!42824)) (Concat!30108 (regOne!43006 Regex!21247) (regTwo!43006 Regex!21247)) (EmptyExpr!21247) (Star!21247 (reg!21576 Regex!21247)) (EmptyLang!21247) (Union!21247 (regOne!43007 Regex!21247) (regTwo!43007 Regex!21247)) )
))
(declare-datatypes ((String!82722 0))(
  ( (String!82723 (value!285484 String)) )
))
(declare-datatypes ((TokenValueInjection!17028 0))(
  ( (TokenValueInjection!17029 (toValue!11585 Int) (toChars!11444 Int)) )
))
(declare-datatypes ((Rule!16888 0))(
  ( (Rule!16889 (regex!8544 Regex!21247) (tag!9408 String!82722) (isSeparator!8544 Bool) (transformation!8544 TokenValueInjection!17028)) )
))
(declare-datatypes ((Token!15508 0))(
  ( (Token!15509 (value!285485 TokenValue!8860) (rule!11824 Rule!16888) (size!42884 Int) (originalCharacters!8785 List!74153)) )
))
(declare-datatypes ((tuple2!70100 0))(
  ( (tuple2!70101 (_1!38353 Token!15508) (_2!38353 List!74153)) )
))
(declare-fun lt!2682259 () tuple2!70100)

(declare-fun input!1184 () List!74153)

(declare-fun lt!2682260 () List!74153)

(declare-fun ++!18127 (List!74153 List!74153) List!74153)

(assert (=> b!7898454 (= res!3133225 (not (= (++!18127 lt!2682260 (_2!38353 lt!2682259)) input!1184)))))

(declare-fun b!7898455 () Bool)

(declare-fun e!4662041 () Bool)

(assert (=> b!7898455 (= e!4662041 e!4662042)))

(declare-fun res!3133216 () Bool)

(assert (=> b!7898455 (=> res!3133216 e!4662042)))

(assert (=> b!7898455 (= res!3133216 (not (= lt!2682260 (originalCharacters!8785 (_1!38353 lt!2682259)))))))

(declare-fun list!19168 (BalanceConc!30554) List!74153)

(declare-fun charsOf!5493 (Token!15508) BalanceConc!30554)

(assert (=> b!7898455 (= lt!2682260 (list!19168 (charsOf!5493 (_1!38353 lt!2682259))))))

(declare-datatypes ((Option!17826 0))(
  ( (None!17825) (Some!17825 (v!54962 tuple2!70100)) )
))
(declare-fun lt!2682262 () Option!17826)

(declare-fun get!26575 (Option!17826) tuple2!70100)

(assert (=> b!7898455 (= lt!2682259 (get!26575 lt!2682262))))

(declare-fun e!4662034 () Bool)

(declare-datatypes ((List!74154 0))(
  ( (Nil!74030) (Cons!74030 (h!80478 Rule!16888) (t!388963 List!74154)) )
))
(declare-fun rulesArg!141 () List!74154)

(declare-fun tp!2353087 () Bool)

(declare-fun e!4662040 () Bool)

(declare-fun b!7898456 () Bool)

(declare-fun inv!95022 (String!82722) Bool)

(declare-fun inv!95024 (TokenValueInjection!17028) Bool)

(assert (=> b!7898456 (= e!4662040 (and tp!2353087 (inv!95022 (tag!9408 (h!80478 rulesArg!141))) (inv!95024 (transformation!8544 (h!80478 rulesArg!141))) e!4662034))))

(declare-fun b!7898457 () Bool)

(declare-fun res!3133219 () Bool)

(declare-fun e!4662039 () Bool)

(assert (=> b!7898457 (=> (not res!3133219) (not e!4662039))))

(declare-fun isEmpty!42466 (List!74154) Bool)

(assert (=> b!7898457 (= res!3133219 (not (isEmpty!42466 rulesArg!141)))))

(declare-fun b!7898458 () Bool)

(declare-fun res!3133222 () Bool)

(assert (=> b!7898458 (=> res!3133222 e!4662042)))

(declare-fun size!42885 (List!74153) Int)

(assert (=> b!7898458 (= res!3133222 (>= (size!42885 (_2!38353 lt!2682259)) (size!42885 input!1184)))))

(declare-fun b!7898459 () Bool)

(declare-fun e!4662038 () Bool)

(declare-fun tp!2353089 () Bool)

(assert (=> b!7898459 (= e!4662038 (and e!4662040 tp!2353089))))

(declare-fun b!7898460 () Bool)

(assert (=> b!7898460 (= e!4662042 true)))

(declare-fun b!7898461 () Bool)

(declare-fun res!3133215 () Bool)

(assert (=> b!7898461 (=> (not res!3133215) (not e!4662039))))

(declare-datatypes ((LexerInterface!8136 0))(
  ( (LexerInterfaceExt!8133 (__x!35008 Int)) (Lexer!8134) )
))
(declare-fun thiss!14377 () LexerInterface!8136)

(declare-fun rulesValidInductive!3355 (LexerInterface!8136 List!74154) Bool)

(assert (=> b!7898461 (= res!3133215 (rulesValidInductive!3355 thiss!14377 rulesArg!141))))

(declare-fun b!7898462 () Bool)

(declare-fun e!4662035 () Bool)

(assert (=> b!7898462 (= e!4662035 e!4662041)))

(declare-fun res!3133223 () Bool)

(assert (=> b!7898462 (=> res!3133223 e!4662041)))

(declare-fun isEmpty!42467 (Option!17826) Bool)

(assert (=> b!7898462 (= res!3133223 (isEmpty!42467 lt!2682262))))

(declare-fun maxPrefixOneRule!3724 (LexerInterface!8136 Rule!16888 List!74153) Option!17826)

(assert (=> b!7898462 (= lt!2682262 (maxPrefixOneRule!3724 thiss!14377 (h!80478 rulesArg!141) input!1184))))

(declare-fun res!3133221 () Bool)

(assert (=> start!745028 (=> (not res!3133221) (not e!4662039))))

(get-info :version)

(assert (=> start!745028 (= res!3133221 ((_ is Lexer!8134) thiss!14377))))

(assert (=> start!745028 e!4662039))

(assert (=> start!745028 true))

(assert (=> start!745028 e!4662038))

(declare-fun e!4662036 () Bool)

(assert (=> start!745028 e!4662036))

(declare-fun b!7898463 () Bool)

(declare-fun res!3133220 () Bool)

(assert (=> b!7898463 (=> res!3133220 e!4662042)))

(declare-fun apply!14308 (TokenValueInjection!17028 BalanceConc!30554) TokenValue!8860)

(declare-fun seqFromList!6126 (List!74153) BalanceConc!30554)

(assert (=> b!7898463 (= res!3133220 (not (= (value!285485 (_1!38353 lt!2682259)) (apply!14308 (transformation!8544 (rule!11824 (_1!38353 lt!2682259))) (seqFromList!6126 (originalCharacters!8785 (_1!38353 lt!2682259)))))))))

(assert (=> b!7898464 (= e!4662034 (and tp!2353086 tp!2353088))))

(declare-fun b!7898465 () Bool)

(assert (=> b!7898465 (= e!4662039 (not e!4662035))))

(declare-fun res!3133218 () Bool)

(assert (=> b!7898465 (=> res!3133218 e!4662035)))

(assert (=> b!7898465 (= res!3133218 (or (not ((_ is Cons!74030) rulesArg!141)) (not ((_ is Nil!74030) (t!388963 rulesArg!141)))))))

(declare-fun isPrefix!6377 (List!74153 List!74153) Bool)

(assert (=> b!7898465 (isPrefix!6377 input!1184 input!1184)))

(declare-datatypes ((Unit!169047 0))(
  ( (Unit!169048) )
))
(declare-fun lt!2682261 () Unit!169047)

(declare-fun lemmaIsPrefixRefl!3888 (List!74153 List!74153) Unit!169047)

(assert (=> b!7898465 (= lt!2682261 (lemmaIsPrefixRefl!3888 input!1184 input!1184))))

(declare-fun b!7898466 () Bool)

(declare-fun tp_is_empty!52869 () Bool)

(declare-fun tp!2353090 () Bool)

(assert (=> b!7898466 (= e!4662036 (and tp_is_empty!52869 tp!2353090))))

(declare-fun b!7898467 () Bool)

(declare-fun res!3133224 () Bool)

(assert (=> b!7898467 (=> res!3133224 e!4662041)))

(declare-fun isDefined!14422 (Option!17826) Bool)

(assert (=> b!7898467 (= res!3133224 (not (isDefined!14422 lt!2682262)))))

(declare-fun b!7898468 () Bool)

(declare-fun res!3133217 () Bool)

(assert (=> b!7898468 (=> res!3133217 e!4662042)))

(declare-fun matchR!10631 (Regex!21247 List!74153) Bool)

(assert (=> b!7898468 (= res!3133217 (not (matchR!10631 (regex!8544 (rule!11824 (_1!38353 lt!2682259))) lt!2682260)))))

(assert (= (and start!745028 res!3133221) b!7898461))

(assert (= (and b!7898461 res!3133215) b!7898457))

(assert (= (and b!7898457 res!3133219) b!7898465))

(assert (= (and b!7898465 (not res!3133218)) b!7898462))

(assert (= (and b!7898462 (not res!3133223)) b!7898467))

(assert (= (and b!7898467 (not res!3133224)) b!7898455))

(assert (= (and b!7898455 (not res!3133216)) b!7898458))

(assert (= (and b!7898458 (not res!3133222)) b!7898454))

(assert (= (and b!7898454 (not res!3133225)) b!7898463))

(assert (= (and b!7898463 (not res!3133220)) b!7898468))

(assert (= (and b!7898468 (not res!3133217)) b!7898460))

(assert (= b!7898456 b!7898464))

(assert (= b!7898459 b!7898456))

(assert (= (and start!745028 ((_ is Cons!74030) rulesArg!141)) b!7898459))

(assert (= (and start!745028 ((_ is Cons!74029) input!1184)) b!7898466))

(declare-fun m!8273464 () Bool)

(assert (=> b!7898457 m!8273464))

(declare-fun m!8273466 () Bool)

(assert (=> b!7898463 m!8273466))

(assert (=> b!7898463 m!8273466))

(declare-fun m!8273468 () Bool)

(assert (=> b!7898463 m!8273468))

(declare-fun m!8273470 () Bool)

(assert (=> b!7898458 m!8273470))

(declare-fun m!8273472 () Bool)

(assert (=> b!7898458 m!8273472))

(declare-fun m!8273474 () Bool)

(assert (=> b!7898455 m!8273474))

(assert (=> b!7898455 m!8273474))

(declare-fun m!8273476 () Bool)

(assert (=> b!7898455 m!8273476))

(declare-fun m!8273478 () Bool)

(assert (=> b!7898455 m!8273478))

(declare-fun m!8273480 () Bool)

(assert (=> b!7898456 m!8273480))

(declare-fun m!8273482 () Bool)

(assert (=> b!7898456 m!8273482))

(declare-fun m!8273484 () Bool)

(assert (=> b!7898461 m!8273484))

(declare-fun m!8273486 () Bool)

(assert (=> b!7898462 m!8273486))

(declare-fun m!8273488 () Bool)

(assert (=> b!7898462 m!8273488))

(declare-fun m!8273490 () Bool)

(assert (=> b!7898467 m!8273490))

(declare-fun m!8273492 () Bool)

(assert (=> b!7898454 m!8273492))

(declare-fun m!8273494 () Bool)

(assert (=> b!7898468 m!8273494))

(declare-fun m!8273496 () Bool)

(assert (=> b!7898465 m!8273496))

(declare-fun m!8273498 () Bool)

(assert (=> b!7898465 m!8273498))

(check-sat (not b!7898467) (not b!7898459) (not b!7898456) (not b_next!135309) (not b!7898458) (not b!7898468) (not b!7898461) (not b!7898466) (not b!7898454) (not b_next!135311) tp_is_empty!52869 b_and!352421 (not b!7898457) (not b!7898463) (not b!7898455) (not b!7898465) b_and!352419 (not b!7898462))
(check-sat b_and!352421 b_and!352419 (not b_next!135311) (not b_next!135309))
