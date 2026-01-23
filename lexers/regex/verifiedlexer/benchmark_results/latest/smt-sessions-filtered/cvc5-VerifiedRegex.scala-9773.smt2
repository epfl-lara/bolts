; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!511186 () Bool)

(assert start!511186)

(declare-fun b!4884819 () Bool)

(declare-fun b_free!131159 () Bool)

(declare-fun b_next!131949 () Bool)

(assert (=> b!4884819 (= b_free!131159 (not b_next!131949))))

(declare-fun tp!1374627 () Bool)

(declare-fun b_and!343991 () Bool)

(assert (=> b!4884819 (= tp!1374627 b_and!343991)))

(declare-fun b_free!131161 () Bool)

(declare-fun b_next!131951 () Bool)

(assert (=> b!4884819 (= b_free!131161 (not b_next!131951))))

(declare-fun tp!1374626 () Bool)

(declare-fun b_and!343993 () Bool)

(assert (=> b!4884819 (= tp!1374626 b_and!343993)))

(declare-fun b!4884817 () Bool)

(declare-fun e!3053293 () Bool)

(declare-fun e!3053294 () Bool)

(declare-fun tp!1374629 () Bool)

(assert (=> b!4884817 (= e!3053293 (and e!3053294 tp!1374629))))

(declare-fun b!4884818 () Bool)

(declare-fun e!3053290 () Bool)

(declare-fun e!3053296 () Bool)

(assert (=> b!4884818 (= e!3053290 e!3053296)))

(declare-fun res!2085607 () Bool)

(assert (=> b!4884818 (=> res!2085607 e!3053296)))

(declare-datatypes ((String!63558 0))(
  ( (String!63559 (value!260348 String)) )
))
(declare-datatypes ((C!26574 0))(
  ( (C!26575 (val!22621 Int)) )
))
(declare-datatypes ((List!56344 0))(
  ( (Nil!56220) (Cons!56220 (h!62668 C!26574) (t!364990 List!56344)) )
))
(declare-datatypes ((IArray!29423 0))(
  ( (IArray!29424 (innerList!14769 List!56344)) )
))
(declare-datatypes ((Conc!14681 0))(
  ( (Node!14681 (left!40840 Conc!14681) (right!41170 Conc!14681) (csize!29592 Int) (cheight!14892 Int)) (Leaf!24455 (xs!17997 IArray!29423) (csize!29593 Int)) (Empty!14681) )
))
(declare-datatypes ((BalanceConc!28792 0))(
  ( (BalanceConc!28793 (c!830580 Conc!14681)) )
))
(declare-datatypes ((List!56345 0))(
  ( (Nil!56221) (Cons!56221 (h!62669 (_ BitVec 16)) (t!364991 List!56345)) )
))
(declare-datatypes ((TokenValue!8423 0))(
  ( (FloatLiteralValue!16846 (text!59406 List!56345)) (TokenValueExt!8422 (__x!34139 Int)) (Broken!42115 (value!260349 List!56345)) (Object!8546) (End!8423) (Def!8423) (Underscore!8423) (Match!8423) (Else!8423) (Error!8423) (Case!8423) (If!8423) (Extends!8423) (Abstract!8423) (Class!8423) (Val!8423) (DelimiterValue!16846 (del!8483 List!56345)) (KeywordValue!8429 (value!260350 List!56345)) (CommentValue!16846 (value!260351 List!56345)) (WhitespaceValue!16846 (value!260352 List!56345)) (IndentationValue!8423 (value!260353 List!56345)) (String!63560) (Int32!8423) (Broken!42116 (value!260354 List!56345)) (Boolean!8424) (Unit!146210) (OperatorValue!8426 (op!8483 List!56345)) (IdentifierValue!16846 (value!260355 List!56345)) (IdentifierValue!16847 (value!260356 List!56345)) (WhitespaceValue!16847 (value!260357 List!56345)) (True!16846) (False!16846) (Broken!42117 (value!260358 List!56345)) (Broken!42118 (value!260359 List!56345)) (True!16847) (RightBrace!8423) (RightBracket!8423) (Colon!8423) (Null!8423) (Comma!8423) (LeftBracket!8423) (False!16847) (LeftBrace!8423) (ImaginaryLiteralValue!8423 (text!59407 List!56345)) (StringLiteralValue!25269 (value!260360 List!56345)) (EOFValue!8423 (value!260361 List!56345)) (IdentValue!8423 (value!260362 List!56345)) (DelimiterValue!16847 (value!260363 List!56345)) (DedentValue!8423 (value!260364 List!56345)) (NewLineValue!8423 (value!260365 List!56345)) (IntegerValue!25269 (value!260366 (_ BitVec 32)) (text!59408 List!56345)) (IntegerValue!25270 (value!260367 Int) (text!59409 List!56345)) (Times!8423) (Or!8423) (Equal!8423) (Minus!8423) (Broken!42119 (value!260368 List!56345)) (And!8423) (Div!8423) (LessEqual!8423) (Mod!8423) (Concat!21611) (Not!8423) (Plus!8423) (SpaceValue!8423 (value!260369 List!56345)) (IntegerValue!25271 (value!260370 Int) (text!59410 List!56345)) (StringLiteralValue!25270 (text!59411 List!56345)) (FloatLiteralValue!16847 (text!59412 List!56345)) (BytesLiteralValue!8423 (value!260371 List!56345)) (CommentValue!16847 (value!260372 List!56345)) (StringLiteralValue!25271 (value!260373 List!56345)) (ErrorTokenValue!8423 (msg!8484 List!56345)) )
))
(declare-datatypes ((Regex!13188 0))(
  ( (ElementMatch!13188 (c!830581 C!26574)) (Concat!21612 (regOne!26888 Regex!13188) (regTwo!26888 Regex!13188)) (EmptyExpr!13188) (Star!13188 (reg!13517 Regex!13188)) (EmptyLang!13188) (Union!13188 (regOne!26889 Regex!13188) (regTwo!26889 Regex!13188)) )
))
(declare-datatypes ((TokenValueInjection!16154 0))(
  ( (TokenValueInjection!16155 (toValue!11000 Int) (toChars!10859 Int)) )
))
(declare-datatypes ((Rule!16026 0))(
  ( (Rule!16027 (regex!8113 Regex!13188) (tag!8977 String!63558) (isSeparator!8113 Bool) (transformation!8113 TokenValueInjection!16154)) )
))
(declare-datatypes ((Token!14794 0))(
  ( (Token!14795 (value!260374 TokenValue!8423) (rule!11279 Rule!16026) (size!37039 Int) (originalCharacters!8428 List!56344)) )
))
(declare-datatypes ((tuple2!60160 0))(
  ( (tuple2!60161 (_1!33383 Token!14794) (_2!33383 BalanceConc!28792)) )
))
(declare-datatypes ((Option!13909 0))(
  ( (None!13908) (Some!13908 (v!49858 tuple2!60160)) )
))
(declare-fun lt!2001345 () Option!13909)

(declare-fun lt!2001346 () Option!13909)

(assert (=> b!4884818 (= res!2085607 (or (and (is-None!13908 lt!2001345) (is-None!13908 lt!2001346)) (is-None!13908 lt!2001346) (not (is-None!13908 lt!2001345))))))

(declare-datatypes ((LexerInterface!7705 0))(
  ( (LexerInterfaceExt!7702 (__x!34140 Int)) (Lexer!7703) )
))
(declare-fun thiss!14805 () LexerInterface!7705)

(declare-fun input!1236 () BalanceConc!28792)

(declare-datatypes ((List!56346 0))(
  ( (Nil!56222) (Cons!56222 (h!62670 Rule!16026) (t!364992 List!56346)) )
))
(declare-fun rulesArg!165 () List!56346)

(declare-fun maxPrefixZipperSequence!1274 (LexerInterface!7705 List!56346 BalanceConc!28792) Option!13909)

(assert (=> b!4884818 (= lt!2001346 (maxPrefixZipperSequence!1274 thiss!14805 (t!364992 rulesArg!165) input!1236))))

(declare-fun maxPrefixOneRuleZipperSequence!639 (LexerInterface!7705 Rule!16026 BalanceConc!28792) Option!13909)

(assert (=> b!4884818 (= lt!2001345 (maxPrefixOneRuleZipperSequence!639 thiss!14805 (h!62670 rulesArg!165) input!1236))))

(declare-fun e!3053295 () Bool)

(assert (=> b!4884819 (= e!3053295 (and tp!1374627 tp!1374626))))

(declare-fun b!4884820 () Bool)

(declare-fun e!3053291 () Bool)

(declare-fun tp!1374628 () Bool)

(declare-fun inv!72345 (Conc!14681) Bool)

(assert (=> b!4884820 (= e!3053291 (and (inv!72345 (c!830580 input!1236)) tp!1374628))))

(declare-fun tp!1374630 () Bool)

(declare-fun b!4884821 () Bool)

(declare-fun inv!72342 (String!63558) Bool)

(declare-fun inv!72346 (TokenValueInjection!16154) Bool)

(assert (=> b!4884821 (= e!3053294 (and tp!1374630 (inv!72342 (tag!8977 (h!62670 rulesArg!165))) (inv!72346 (transformation!8113 (h!62670 rulesArg!165))) e!3053295))))

(declare-fun b!4884822 () Bool)

(declare-fun lt!2001344 () Bool)

(declare-fun lt!2001343 () Bool)

(assert (=> b!4884822 (= e!3053296 (or (not (= lt!2001344 lt!2001343)) (not lt!2001344) lt!2001343))))

(declare-fun lt!2001342 () List!56344)

(declare-datatypes ((tuple2!60162 0))(
  ( (tuple2!60163 (_1!33384 Token!14794) (_2!33384 List!56344)) )
))
(declare-datatypes ((Option!13910 0))(
  ( (None!13909) (Some!13909 (v!49859 tuple2!60162)) )
))
(declare-fun isDefined!10932 (Option!13910) Bool)

(declare-fun maxPrefixZipper!616 (LexerInterface!7705 List!56346 List!56344) Option!13910)

(assert (=> b!4884822 (= lt!2001343 (isDefined!10932 (maxPrefixZipper!616 thiss!14805 rulesArg!165 lt!2001342)))))

(declare-fun isDefined!10933 (Option!13909) Bool)

(assert (=> b!4884822 (= lt!2001344 (isDefined!10933 lt!2001346))))

(declare-fun b!4884823 () Bool)

(declare-fun res!2085606 () Bool)

(declare-fun e!3053292 () Bool)

(assert (=> b!4884823 (=> (not res!2085606) (not e!3053292))))

(declare-fun isEmpty!30128 (List!56346) Bool)

(assert (=> b!4884823 (= res!2085606 (not (isEmpty!30128 rulesArg!165)))))

(declare-fun res!2085608 () Bool)

(assert (=> start!511186 (=> (not res!2085608) (not e!3053292))))

(assert (=> start!511186 (= res!2085608 (is-Lexer!7703 thiss!14805))))

(assert (=> start!511186 e!3053292))

(assert (=> start!511186 true))

(assert (=> start!511186 e!3053293))

(declare-fun inv!72347 (BalanceConc!28792) Bool)

(assert (=> start!511186 (and (inv!72347 input!1236) e!3053291)))

(declare-fun b!4884824 () Bool)

(declare-fun res!2085609 () Bool)

(assert (=> b!4884824 (=> (not res!2085609) (not e!3053292))))

(declare-fun rulesValidInductive!3092 (LexerInterface!7705 List!56346) Bool)

(assert (=> b!4884824 (= res!2085609 (rulesValidInductive!3092 thiss!14805 rulesArg!165))))

(declare-fun b!4884825 () Bool)

(assert (=> b!4884825 (= e!3053292 (not e!3053290))))

(declare-fun res!2085610 () Bool)

(assert (=> b!4884825 (=> res!2085610 e!3053290)))

(assert (=> b!4884825 (= res!2085610 (or (and (is-Cons!56222 rulesArg!165) (is-Nil!56222 (t!364992 rulesArg!165))) (not (is-Cons!56222 rulesArg!165))))))

(declare-fun isPrefix!4835 (List!56344 List!56344) Bool)

(assert (=> b!4884825 (isPrefix!4835 lt!2001342 lt!2001342)))

(declare-datatypes ((Unit!146211 0))(
  ( (Unit!146212) )
))
(declare-fun lt!2001341 () Unit!146211)

(declare-fun lemmaIsPrefixRefl!3232 (List!56344 List!56344) Unit!146211)

(assert (=> b!4884825 (= lt!2001341 (lemmaIsPrefixRefl!3232 lt!2001342 lt!2001342))))

(declare-fun list!17642 (BalanceConc!28792) List!56344)

(assert (=> b!4884825 (= lt!2001342 (list!17642 input!1236))))

(assert (= (and start!511186 res!2085608) b!4884824))

(assert (= (and b!4884824 res!2085609) b!4884823))

(assert (= (and b!4884823 res!2085606) b!4884825))

(assert (= (and b!4884825 (not res!2085610)) b!4884818))

(assert (= (and b!4884818 (not res!2085607)) b!4884822))

(assert (= b!4884821 b!4884819))

(assert (= b!4884817 b!4884821))

(assert (= (and start!511186 (is-Cons!56222 rulesArg!165)) b!4884817))

(assert (= start!511186 b!4884820))

(declare-fun m!5888708 () Bool)

(assert (=> start!511186 m!5888708))

(declare-fun m!5888710 () Bool)

(assert (=> b!4884824 m!5888710))

(declare-fun m!5888712 () Bool)

(assert (=> b!4884821 m!5888712))

(declare-fun m!5888714 () Bool)

(assert (=> b!4884821 m!5888714))

(declare-fun m!5888716 () Bool)

(assert (=> b!4884820 m!5888716))

(declare-fun m!5888718 () Bool)

(assert (=> b!4884825 m!5888718))

(declare-fun m!5888720 () Bool)

(assert (=> b!4884825 m!5888720))

(declare-fun m!5888722 () Bool)

(assert (=> b!4884825 m!5888722))

(declare-fun m!5888724 () Bool)

(assert (=> b!4884823 m!5888724))

(declare-fun m!5888726 () Bool)

(assert (=> b!4884822 m!5888726))

(assert (=> b!4884822 m!5888726))

(declare-fun m!5888728 () Bool)

(assert (=> b!4884822 m!5888728))

(declare-fun m!5888730 () Bool)

(assert (=> b!4884822 m!5888730))

(declare-fun m!5888732 () Bool)

(assert (=> b!4884818 m!5888732))

(declare-fun m!5888734 () Bool)

(assert (=> b!4884818 m!5888734))

(push 1)

(assert b_and!343993)

(assert (not b!4884820))

(assert (not b_next!131951))

(assert (not b!4884821))

(assert (not b!4884824))

(assert (not b!4884825))

(assert b_and!343991)

(assert (not b!4884823))

(assert (not b!4884822))

(assert (not b!4884818))

(assert (not b!4884817))

(assert (not b_next!131949))

(assert (not start!511186))

(check-sat)

(pop 1)

(push 1)

(assert b_and!343993)

(assert b_and!343991)

(assert (not b_next!131949))

(assert (not b_next!131951))

(check-sat)

(pop 1)

