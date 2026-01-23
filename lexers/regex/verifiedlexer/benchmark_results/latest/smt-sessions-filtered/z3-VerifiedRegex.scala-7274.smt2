; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!388232 () Bool)

(assert start!388232)

(declare-fun b!4098427 () Bool)

(declare-fun b_free!114665 () Bool)

(declare-fun b_next!115369 () Bool)

(assert (=> b!4098427 (= b_free!114665 (not b_next!115369))))

(declare-fun tp!1240478 () Bool)

(declare-fun b_and!316343 () Bool)

(assert (=> b!4098427 (= tp!1240478 b_and!316343)))

(declare-fun b_free!114667 () Bool)

(declare-fun b_next!115371 () Bool)

(assert (=> b!4098427 (= b_free!114667 (not b_next!115371))))

(declare-fun tp!1240479 () Bool)

(declare-fun b_and!316345 () Bool)

(assert (=> b!4098427 (= tp!1240479 b_and!316345)))

(declare-fun b!4098413 () Bool)

(declare-fun b_free!114669 () Bool)

(declare-fun b_next!115373 () Bool)

(assert (=> b!4098413 (= b_free!114669 (not b_next!115373))))

(declare-fun tp!1240483 () Bool)

(declare-fun b_and!316347 () Bool)

(assert (=> b!4098413 (= tp!1240483 b_and!316347)))

(declare-fun b_free!114671 () Bool)

(declare-fun b_next!115375 () Bool)

(assert (=> b!4098413 (= b_free!114671 (not b_next!115375))))

(declare-fun tp!1240480 () Bool)

(declare-fun b_and!316349 () Bool)

(assert (=> b!4098413 (= tp!1240480 b_and!316349)))

(declare-fun b!4098412 () Bool)

(declare-fun e!2543273 () Bool)

(declare-fun e!2543279 () Bool)

(declare-fun tp!1240484 () Bool)

(assert (=> b!4098412 (= e!2543273 (and e!2543279 tp!1240484))))

(declare-fun e!2543276 () Bool)

(assert (=> b!4098413 (= e!2543276 (and tp!1240483 tp!1240480))))

(declare-fun b!4098414 () Bool)

(declare-fun e!2543282 () Bool)

(declare-fun tp_is_empty!21053 () Bool)

(declare-fun tp!1240482 () Bool)

(assert (=> b!4098414 (= e!2543282 (and tp_is_empty!21053 tp!1240482))))

(declare-fun b!4098415 () Bool)

(declare-fun res!1675495 () Bool)

(declare-fun e!2543283 () Bool)

(assert (=> b!4098415 (=> (not res!1675495) (not e!2543283))))

(declare-datatypes ((LexerInterface!6709 0))(
  ( (LexerInterfaceExt!6706 (__x!26917 Int)) (Lexer!6707) )
))
(declare-fun thiss!26199 () LexerInterface!6709)

(declare-datatypes ((List!44083 0))(
  ( (Nil!43959) (Cons!43959 (h!49379 (_ BitVec 16)) (t!339578 List!44083)) )
))
(declare-datatypes ((TokenValue!7350 0))(
  ( (FloatLiteralValue!14700 (text!51895 List!44083)) (TokenValueExt!7349 (__x!26918 Int)) (Broken!36750 (value!223546 List!44083)) (Object!7473) (End!7350) (Def!7350) (Underscore!7350) (Match!7350) (Else!7350) (Error!7350) (Case!7350) (If!7350) (Extends!7350) (Abstract!7350) (Class!7350) (Val!7350) (DelimiterValue!14700 (del!7410 List!44083)) (KeywordValue!7356 (value!223547 List!44083)) (CommentValue!14700 (value!223548 List!44083)) (WhitespaceValue!14700 (value!223549 List!44083)) (IndentationValue!7350 (value!223550 List!44083)) (String!50499) (Int32!7350) (Broken!36751 (value!223551 List!44083)) (Boolean!7351) (Unit!63498) (OperatorValue!7353 (op!7410 List!44083)) (IdentifierValue!14700 (value!223552 List!44083)) (IdentifierValue!14701 (value!223553 List!44083)) (WhitespaceValue!14701 (value!223554 List!44083)) (True!14700) (False!14700) (Broken!36752 (value!223555 List!44083)) (Broken!36753 (value!223556 List!44083)) (True!14701) (RightBrace!7350) (RightBracket!7350) (Colon!7350) (Null!7350) (Comma!7350) (LeftBracket!7350) (False!14701) (LeftBrace!7350) (ImaginaryLiteralValue!7350 (text!51896 List!44083)) (StringLiteralValue!22050 (value!223557 List!44083)) (EOFValue!7350 (value!223558 List!44083)) (IdentValue!7350 (value!223559 List!44083)) (DelimiterValue!14701 (value!223560 List!44083)) (DedentValue!7350 (value!223561 List!44083)) (NewLineValue!7350 (value!223562 List!44083)) (IntegerValue!22050 (value!223563 (_ BitVec 32)) (text!51897 List!44083)) (IntegerValue!22051 (value!223564 Int) (text!51898 List!44083)) (Times!7350) (Or!7350) (Equal!7350) (Minus!7350) (Broken!36754 (value!223565 List!44083)) (And!7350) (Div!7350) (LessEqual!7350) (Mod!7350) (Concat!19375) (Not!7350) (Plus!7350) (SpaceValue!7350 (value!223566 List!44083)) (IntegerValue!22052 (value!223567 Int) (text!51899 List!44083)) (StringLiteralValue!22051 (text!51900 List!44083)) (FloatLiteralValue!14701 (text!51901 List!44083)) (BytesLiteralValue!7350 (value!223568 List!44083)) (CommentValue!14701 (value!223569 List!44083)) (StringLiteralValue!22052 (value!223570 List!44083)) (ErrorTokenValue!7350 (msg!7411 List!44083)) )
))
(declare-datatypes ((C!24236 0))(
  ( (C!24237 (val!14228 Int)) )
))
(declare-datatypes ((List!44084 0))(
  ( (Nil!43960) (Cons!43960 (h!49380 C!24236) (t!339579 List!44084)) )
))
(declare-datatypes ((IArray!26667 0))(
  ( (IArray!26668 (innerList!13391 List!44084)) )
))
(declare-datatypes ((Conc!13331 0))(
  ( (Node!13331 (left!33045 Conc!13331) (right!33375 Conc!13331) (csize!26892 Int) (cheight!13542 Int)) (Leaf!20606 (xs!16637 IArray!26667) (csize!26893 Int)) (Empty!13331) )
))
(declare-datatypes ((BalanceConc!26256 0))(
  ( (BalanceConc!26257 (c!706202 Conc!13331)) )
))
(declare-datatypes ((TokenValueInjection!14128 0))(
  ( (TokenValueInjection!14129 (toValue!9724 Int) (toChars!9583 Int)) )
))
(declare-datatypes ((Regex!12025 0))(
  ( (ElementMatch!12025 (c!706203 C!24236)) (Concat!19376 (regOne!24562 Regex!12025) (regTwo!24562 Regex!12025)) (EmptyExpr!12025) (Star!12025 (reg!12354 Regex!12025)) (EmptyLang!12025) (Union!12025 (regOne!24563 Regex!12025) (regTwo!24563 Regex!12025)) )
))
(declare-datatypes ((String!50500 0))(
  ( (String!50501 (value!223571 String)) )
))
(declare-datatypes ((Rule!14040 0))(
  ( (Rule!14041 (regex!7120 Regex!12025) (tag!7980 String!50500) (isSeparator!7120 Bool) (transformation!7120 TokenValueInjection!14128)) )
))
(declare-datatypes ((List!44085 0))(
  ( (Nil!43961) (Cons!43961 (h!49381 Rule!14040) (t!339580 List!44085)) )
))
(declare-fun rules!3870 () List!44085)

(declare-fun rulesInvariant!6052 (LexerInterface!6709 List!44085) Bool)

(assert (=> b!4098415 (= res!1675495 (rulesInvariant!6052 thiss!26199 rules!3870))))

(declare-fun b!4098416 () Bool)

(declare-fun e!2543275 () Bool)

(declare-fun tp!1240485 () Bool)

(assert (=> b!4098416 (= e!2543275 (and tp_is_empty!21053 tp!1240485))))

(declare-fun b!4098417 () Bool)

(declare-fun res!1675499 () Bool)

(assert (=> b!4098417 (=> (not res!1675499) (not e!2543283))))

(declare-fun p!2988 () List!44084)

(declare-fun isEmpty!26308 (List!44084) Bool)

(assert (=> b!4098417 (= res!1675499 (not (isEmpty!26308 p!2988)))))

(declare-fun b!4098418 () Bool)

(declare-fun res!1675496 () Bool)

(assert (=> b!4098418 (=> (not res!1675496) (not e!2543283))))

(declare-fun r!4213 () Rule!14040)

(declare-fun contains!8807 (List!44085 Rule!14040) Bool)

(assert (=> b!4098418 (= res!1675496 (contains!8807 rules!3870 r!4213))))

(declare-fun b!4098419 () Bool)

(declare-fun res!1675493 () Bool)

(assert (=> b!4098419 (=> (not res!1675493) (not e!2543283))))

(declare-fun suffix!1518 () List!44084)

(declare-fun input!3411 () List!44084)

(declare-fun ++!11526 (List!44084 List!44084) List!44084)

(assert (=> b!4098419 (= res!1675493 (= input!3411 (++!11526 p!2988 suffix!1518)))))

(declare-fun b!4098420 () Bool)

(declare-fun res!1675498 () Bool)

(declare-fun e!2543280 () Bool)

(assert (=> b!4098420 (=> res!1675498 e!2543280)))

(get-info :version)

(assert (=> b!4098420 (= res!1675498 (or (and ((_ is Cons!43961) rules!3870) (= (h!49381 rules!3870) r!4213)) (and ((_ is Cons!43961) rules!3870) (not (= (h!49381 rules!3870) r!4213))) ((_ is Nil!43961) rules!3870)))))

(declare-datatypes ((Token!13366 0))(
  ( (Token!13367 (value!223572 TokenValue!7350) (rule!10276 Rule!14040) (size!32842 Int) (originalCharacters!7714 List!44084)) )
))
(declare-datatypes ((tuple2!42880 0))(
  ( (tuple2!42881 (_1!24574 Token!13366) (_2!24574 List!44084)) )
))
(declare-datatypes ((Option!9526 0))(
  ( (None!9525) (Some!9525 (v!40029 tuple2!42880)) )
))
(declare-fun lt!1465925 () Option!9526)

(declare-fun b!4098421 () Bool)

(declare-fun maxPrefixOneRule!2977 (LexerInterface!6709 Rule!14040 List!44084) Option!9526)

(assert (=> b!4098421 (= e!2543280 (= (maxPrefixOneRule!2977 thiss!26199 r!4213 input!3411) lt!1465925))))

(declare-fun b!4098422 () Bool)

(declare-fun e!2543274 () Bool)

(assert (=> b!4098422 (= e!2543283 e!2543274)))

(declare-fun res!1675497 () Bool)

(assert (=> b!4098422 (=> (not res!1675497) (not e!2543274))))

(declare-fun maxPrefix!3999 (LexerInterface!6709 List!44085 List!44084) Option!9526)

(assert (=> b!4098422 (= res!1675497 (= (maxPrefix!3999 thiss!26199 rules!3870 input!3411) lt!1465925))))

(declare-fun lt!1465927 () BalanceConc!26256)

(declare-fun apply!10303 (TokenValueInjection!14128 BalanceConc!26256) TokenValue!7350)

(declare-fun size!32843 (List!44084) Int)

(assert (=> b!4098422 (= lt!1465925 (Some!9525 (tuple2!42881 (Token!13367 (apply!10303 (transformation!7120 r!4213) lt!1465927) r!4213 (size!32843 p!2988) p!2988) suffix!1518)))))

(declare-datatypes ((Unit!63499 0))(
  ( (Unit!63500) )
))
(declare-fun lt!1465924 () Unit!63499)

(declare-fun lemmaSemiInverse!2087 (TokenValueInjection!14128 BalanceConc!26256) Unit!63499)

(assert (=> b!4098422 (= lt!1465924 (lemmaSemiInverse!2087 (transformation!7120 r!4213) lt!1465927))))

(declare-fun seqFromList!5337 (List!44084) BalanceConc!26256)

(assert (=> b!4098422 (= lt!1465927 (seqFromList!5337 p!2988))))

(declare-fun b!4098424 () Bool)

(declare-fun tp!1240481 () Bool)

(declare-fun inv!58693 (String!50500) Bool)

(declare-fun inv!58695 (TokenValueInjection!14128) Bool)

(assert (=> b!4098424 (= e!2543279 (and tp!1240481 (inv!58693 (tag!7980 (h!49381 rules!3870))) (inv!58695 (transformation!7120 (h!49381 rules!3870))) e!2543276))))

(declare-fun b!4098425 () Bool)

(declare-fun e!2543281 () Bool)

(declare-fun tp!1240477 () Bool)

(assert (=> b!4098425 (= e!2543281 (and tp_is_empty!21053 tp!1240477))))

(declare-fun b!4098426 () Bool)

(declare-fun tp!1240486 () Bool)

(declare-fun e!2543272 () Bool)

(declare-fun e!2543277 () Bool)

(assert (=> b!4098426 (= e!2543277 (and tp!1240486 (inv!58693 (tag!7980 r!4213)) (inv!58695 (transformation!7120 r!4213)) e!2543272))))

(assert (=> b!4098427 (= e!2543272 (and tp!1240478 tp!1240479))))

(declare-fun b!4098428 () Bool)

(assert (=> b!4098428 (= e!2543274 (not e!2543280))))

(declare-fun res!1675491 () Bool)

(assert (=> b!4098428 (=> res!1675491 e!2543280)))

(declare-fun matchR!5966 (Regex!12025 List!44084) Bool)

(assert (=> b!4098428 (= res!1675491 (not (matchR!5966 (regex!7120 r!4213) p!2988)))))

(declare-fun ruleValid!3040 (LexerInterface!6709 Rule!14040) Bool)

(assert (=> b!4098428 (ruleValid!3040 thiss!26199 r!4213)))

(declare-fun lt!1465926 () Unit!63499)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2106 (LexerInterface!6709 Rule!14040 List!44085) Unit!63499)

(assert (=> b!4098428 (= lt!1465926 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2106 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4098423 () Bool)

(declare-fun res!1675494 () Bool)

(assert (=> b!4098423 (=> (not res!1675494) (not e!2543283))))

(declare-fun isEmpty!26309 (List!44085) Bool)

(assert (=> b!4098423 (= res!1675494 (not (isEmpty!26309 rules!3870)))))

(declare-fun res!1675492 () Bool)

(assert (=> start!388232 (=> (not res!1675492) (not e!2543283))))

(assert (=> start!388232 (= res!1675492 ((_ is Lexer!6707) thiss!26199))))

(assert (=> start!388232 e!2543283))

(assert (=> start!388232 true))

(assert (=> start!388232 e!2543282))

(assert (=> start!388232 e!2543273))

(assert (=> start!388232 e!2543281))

(assert (=> start!388232 e!2543275))

(assert (=> start!388232 e!2543277))

(assert (= (and start!388232 res!1675492) b!4098423))

(assert (= (and b!4098423 res!1675494) b!4098415))

(assert (= (and b!4098415 res!1675495) b!4098418))

(assert (= (and b!4098418 res!1675496) b!4098419))

(assert (= (and b!4098419 res!1675493) b!4098417))

(assert (= (and b!4098417 res!1675499) b!4098422))

(assert (= (and b!4098422 res!1675497) b!4098428))

(assert (= (and b!4098428 (not res!1675491)) b!4098420))

(assert (= (and b!4098420 (not res!1675498)) b!4098421))

(assert (= (and start!388232 ((_ is Cons!43960) suffix!1518)) b!4098414))

(assert (= b!4098424 b!4098413))

(assert (= b!4098412 b!4098424))

(assert (= (and start!388232 ((_ is Cons!43961) rules!3870)) b!4098412))

(assert (= (and start!388232 ((_ is Cons!43960) p!2988)) b!4098425))

(assert (= (and start!388232 ((_ is Cons!43960) input!3411)) b!4098416))

(assert (= b!4098426 b!4098427))

(assert (= start!388232 b!4098426))

(declare-fun m!4705389 () Bool)

(assert (=> b!4098426 m!4705389))

(declare-fun m!4705391 () Bool)

(assert (=> b!4098426 m!4705391))

(declare-fun m!4705393 () Bool)

(assert (=> b!4098428 m!4705393))

(declare-fun m!4705395 () Bool)

(assert (=> b!4098428 m!4705395))

(declare-fun m!4705397 () Bool)

(assert (=> b!4098428 m!4705397))

(declare-fun m!4705399 () Bool)

(assert (=> b!4098415 m!4705399))

(declare-fun m!4705401 () Bool)

(assert (=> b!4098423 m!4705401))

(declare-fun m!4705403 () Bool)

(assert (=> b!4098418 m!4705403))

(declare-fun m!4705405 () Bool)

(assert (=> b!4098417 m!4705405))

(declare-fun m!4705407 () Bool)

(assert (=> b!4098419 m!4705407))

(declare-fun m!4705409 () Bool)

(assert (=> b!4098424 m!4705409))

(declare-fun m!4705411 () Bool)

(assert (=> b!4098424 m!4705411))

(declare-fun m!4705413 () Bool)

(assert (=> b!4098421 m!4705413))

(declare-fun m!4705415 () Bool)

(assert (=> b!4098422 m!4705415))

(declare-fun m!4705417 () Bool)

(assert (=> b!4098422 m!4705417))

(declare-fun m!4705419 () Bool)

(assert (=> b!4098422 m!4705419))

(declare-fun m!4705421 () Bool)

(assert (=> b!4098422 m!4705421))

(declare-fun m!4705423 () Bool)

(assert (=> b!4098422 m!4705423))

(check-sat tp_is_empty!21053 (not b!4098421) (not b!4098424) (not b_next!115371) (not b!4098419) b_and!316347 (not b!4098417) b_and!316343 (not b_next!115369) (not b!4098425) (not b!4098422) (not b!4098416) (not b!4098414) (not b_next!115373) (not b!4098412) (not b!4098426) (not b_next!115375) (not b!4098423) (not b!4098418) (not b!4098415) b_and!316349 (not b!4098428) b_and!316345)
(check-sat (not b_next!115373) (not b_next!115371) (not b_next!115375) b_and!316347 b_and!316343 b_and!316349 b_and!316345 (not b_next!115369))
