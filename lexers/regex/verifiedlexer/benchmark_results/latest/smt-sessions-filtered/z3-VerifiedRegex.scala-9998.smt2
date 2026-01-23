; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522766 () Bool)

(assert start!522766)

(declare-fun b!4958892 () Bool)

(declare-fun b_free!132439 () Bool)

(declare-fun b_next!133229 () Bool)

(assert (=> b!4958892 (= b_free!132439 (not b_next!133229))))

(declare-fun tp!1390800 () Bool)

(declare-fun b_and!347291 () Bool)

(assert (=> b!4958892 (= tp!1390800 b_and!347291)))

(declare-fun b_free!132441 () Bool)

(declare-fun b_next!133231 () Bool)

(assert (=> b!4958892 (= b_free!132441 (not b_next!133231))))

(declare-fun tp!1390796 () Bool)

(declare-fun b_and!347293 () Bool)

(assert (=> b!4958892 (= tp!1390796 b_and!347293)))

(declare-fun b!4958880 () Bool)

(declare-fun e!3099151 () Bool)

(declare-fun e!3099147 () Bool)

(assert (=> b!4958880 (= e!3099151 e!3099147)))

(declare-fun res!2116230 () Bool)

(assert (=> b!4958880 (=> res!2116230 e!3099147)))

(declare-datatypes ((List!57430 0))(
  ( (Nil!57306) (Cons!57306 (h!63754 (_ BitVec 16)) (t!367996 List!57430)) )
))
(declare-datatypes ((TokenValue!8658 0))(
  ( (FloatLiteralValue!17316 (text!61051 List!57430)) (TokenValueExt!8657 (__x!34609 Int)) (Broken!43290 (value!267334 List!57430)) (Object!8781) (End!8658) (Def!8658) (Underscore!8658) (Match!8658) (Else!8658) (Error!8658) (Case!8658) (If!8658) (Extends!8658) (Abstract!8658) (Class!8658) (Val!8658) (DelimiterValue!17316 (del!8718 List!57430)) (KeywordValue!8664 (value!267335 List!57430)) (CommentValue!17316 (value!267336 List!57430)) (WhitespaceValue!17316 (value!267337 List!57430)) (IndentationValue!8658 (value!267338 List!57430)) (String!65163) (Int32!8658) (Broken!43291 (value!267339 List!57430)) (Boolean!8659) (Unit!148200) (OperatorValue!8661 (op!8718 List!57430)) (IdentifierValue!17316 (value!267340 List!57430)) (IdentifierValue!17317 (value!267341 List!57430)) (WhitespaceValue!17317 (value!267342 List!57430)) (True!17316) (False!17316) (Broken!43292 (value!267343 List!57430)) (Broken!43293 (value!267344 List!57430)) (True!17317) (RightBrace!8658) (RightBracket!8658) (Colon!8658) (Null!8658) (Comma!8658) (LeftBracket!8658) (False!17317) (LeftBrace!8658) (ImaginaryLiteralValue!8658 (text!61052 List!57430)) (StringLiteralValue!25974 (value!267345 List!57430)) (EOFValue!8658 (value!267346 List!57430)) (IdentValue!8658 (value!267347 List!57430)) (DelimiterValue!17317 (value!267348 List!57430)) (DedentValue!8658 (value!267349 List!57430)) (NewLineValue!8658 (value!267350 List!57430)) (IntegerValue!25974 (value!267351 (_ BitVec 32)) (text!61053 List!57430)) (IntegerValue!25975 (value!267352 Int) (text!61054 List!57430)) (Times!8658) (Or!8658) (Equal!8658) (Minus!8658) (Broken!43294 (value!267353 List!57430)) (And!8658) (Div!8658) (LessEqual!8658) (Mod!8658) (Concat!22239) (Not!8658) (Plus!8658) (SpaceValue!8658 (value!267354 List!57430)) (IntegerValue!25976 (value!267355 Int) (text!61055 List!57430)) (StringLiteralValue!25975 (text!61056 List!57430)) (FloatLiteralValue!17317 (text!61057 List!57430)) (BytesLiteralValue!8658 (value!267356 List!57430)) (CommentValue!17317 (value!267357 List!57430)) (StringLiteralValue!25976 (value!267358 List!57430)) (ErrorTokenValue!8658 (msg!8719 List!57430)) )
))
(declare-datatypes ((C!27412 0))(
  ( (C!27413 (val!23072 Int)) )
))
(declare-datatypes ((Regex!13581 0))(
  ( (ElementMatch!13581 (c!846379 C!27412)) (Concat!22240 (regOne!27674 Regex!13581) (regTwo!27674 Regex!13581)) (EmptyExpr!13581) (Star!13581 (reg!13910 Regex!13581)) (EmptyLang!13581) (Union!13581 (regOne!27675 Regex!13581) (regTwo!27675 Regex!13581)) )
))
(declare-datatypes ((String!65164 0))(
  ( (String!65165 (value!267359 String)) )
))
(declare-datatypes ((List!57431 0))(
  ( (Nil!57307) (Cons!57307 (h!63755 C!27412) (t!367997 List!57431)) )
))
(declare-datatypes ((IArray!30261 0))(
  ( (IArray!30262 (innerList!15188 List!57431)) )
))
(declare-datatypes ((Conc!15100 0))(
  ( (Node!15100 (left!41792 Conc!15100) (right!42122 Conc!15100) (csize!30430 Int) (cheight!15311 Int)) (Leaf!25099 (xs!18426 IArray!30261) (csize!30431 Int)) (Empty!15100) )
))
(declare-datatypes ((BalanceConc!29630 0))(
  ( (BalanceConc!29631 (c!846380 Conc!15100)) )
))
(declare-datatypes ((TokenValueInjection!16624 0))(
  ( (TokenValueInjection!16625 (toValue!11299 Int) (toChars!11158 Int)) )
))
(declare-datatypes ((Rule!16496 0))(
  ( (Rule!16497 (regex!8348 Regex!13581) (tag!9212 String!65164) (isSeparator!8348 Bool) (transformation!8348 TokenValueInjection!16624)) )
))
(declare-datatypes ((Token!15196 0))(
  ( (Token!15197 (value!267360 TokenValue!8658) (rule!11572 Rule!16496) (size!37986 Int) (originalCharacters!8629 List!57431)) )
))
(declare-datatypes ((tuple2!61940 0))(
  ( (tuple2!61941 (_1!34273 Token!15196) (_2!34273 BalanceConc!29630)) )
))
(declare-datatypes ((Option!14365 0))(
  ( (None!14364) (Some!14364 (v!50349 tuple2!61940)) )
))
(declare-fun lt!2047099 () Option!14365)

(declare-fun lt!2047101 () Option!14365)

(get-info :version)

(assert (=> b!4958880 (= res!2116230 (or (and ((_ is None!14364) lt!2047099) ((_ is None!14364) lt!2047101)) ((_ is None!14364) lt!2047101) ((_ is None!14364) lt!2047099) (< (size!37986 (_1!34273 (v!50349 lt!2047099))) (size!37986 (_1!34273 (v!50349 lt!2047101))))))))

(declare-fun input!1342 () BalanceConc!29630)

(declare-datatypes ((List!57432 0))(
  ( (Nil!57308) (Cons!57308 (h!63756 Rule!16496) (t!367998 List!57432)) )
))
(declare-fun rulesArg!259 () List!57432)

(declare-fun totalInput!464 () BalanceConc!29630)

(declare-datatypes ((LexerInterface!7940 0))(
  ( (LexerInterfaceExt!7937 (__x!34610 Int)) (Lexer!7938) )
))
(declare-fun thiss!15247 () LexerInterface!7940)

(declare-fun maxPrefixZipperSequenceV2!679 (LexerInterface!7940 List!57432 BalanceConc!29630 BalanceConc!29630) Option!14365)

(assert (=> b!4958880 (= lt!2047101 (maxPrefixZipperSequenceV2!679 thiss!15247 (t!367998 rulesArg!259) input!1342 totalInput!464))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!332 (LexerInterface!7940 Rule!16496 BalanceConc!29630 BalanceConc!29630) Option!14365)

(assert (=> b!4958880 (= lt!2047099 (maxPrefixOneRuleZipperSequenceV2!332 thiss!15247 (h!63756 rulesArg!259) input!1342 totalInput!464))))

(declare-fun b!4958881 () Bool)

(declare-fun res!2116226 () Bool)

(declare-fun e!3099149 () Bool)

(assert (=> b!4958881 (=> res!2116226 e!3099149)))

(declare-datatypes ((tuple2!61942 0))(
  ( (tuple2!61943 (_1!34274 Token!15196) (_2!34274 List!57431)) )
))
(declare-datatypes ((Option!14366 0))(
  ( (None!14365) (Some!14365 (v!50350 tuple2!61942)) )
))
(declare-fun lt!2047098 () Option!14366)

(declare-fun get!19847 (Option!14365) tuple2!61940)

(declare-fun get!19848 (Option!14366) tuple2!61942)

(assert (=> b!4958881 (= res!2116226 (not (= (_1!34273 (get!19847 lt!2047099)) (_1!34274 (get!19848 lt!2047098)))))))

(declare-fun b!4958882 () Bool)

(assert (=> b!4958882 (= e!3099147 e!3099149)))

(declare-fun res!2116223 () Bool)

(assert (=> b!4958882 (=> res!2116223 e!3099149)))

(declare-fun lt!2047103 () Bool)

(declare-fun lt!2047100 () Bool)

(assert (=> b!4958882 (= res!2116223 (or (not (= lt!2047103 lt!2047100)) (not lt!2047103)))))

(declare-fun isDefined!11284 (Option!14366) Bool)

(assert (=> b!4958882 (= lt!2047100 (isDefined!11284 lt!2047098))))

(declare-fun isDefined!11285 (Option!14365) Bool)

(assert (=> b!4958882 (= lt!2047103 (isDefined!11285 lt!2047099))))

(declare-fun lt!2047104 () List!57431)

(declare-fun maxPrefixZipper!745 (LexerInterface!7940 List!57432 List!57431) Option!14366)

(assert (=> b!4958882 (= lt!2047098 (maxPrefixZipper!745 thiss!15247 rulesArg!259 lt!2047104))))

(declare-fun b!4958883 () Bool)

(declare-fun res!2116228 () Bool)

(declare-fun e!3099152 () Bool)

(assert (=> b!4958883 (=> (not res!2116228) (not e!3099152))))

(declare-fun isEmpty!30820 (List!57432) Bool)

(assert (=> b!4958883 (= res!2116228 (not (isEmpty!30820 rulesArg!259)))))

(declare-fun tp!1390798 () Bool)

(declare-fun b!4958884 () Bool)

(declare-fun e!3099155 () Bool)

(declare-fun e!3099146 () Bool)

(declare-fun inv!74798 (String!65164) Bool)

(declare-fun inv!74802 (TokenValueInjection!16624) Bool)

(assert (=> b!4958884 (= e!3099146 (and tp!1390798 (inv!74798 (tag!9212 (h!63756 rulesArg!259))) (inv!74802 (transformation!8348 (h!63756 rulesArg!259))) e!3099155))))

(declare-fun b!4958885 () Bool)

(declare-fun e!3099148 () Bool)

(assert (=> b!4958885 (= e!3099152 e!3099148)))

(declare-fun res!2116229 () Bool)

(assert (=> b!4958885 (=> (not res!2116229) (not e!3099148))))

(declare-fun isSuffix!1147 (List!57431 List!57431) Bool)

(declare-fun list!18297 (BalanceConc!29630) List!57431)

(assert (=> b!4958885 (= res!2116229 (isSuffix!1147 lt!2047104 (list!18297 totalInput!464)))))

(assert (=> b!4958885 (= lt!2047104 (list!18297 input!1342))))

(declare-fun b!4958887 () Bool)

(assert (=> b!4958887 (= e!3099149 lt!2047100)))

(declare-fun b!4958888 () Bool)

(declare-fun e!3099145 () Bool)

(declare-fun tp!1390797 () Bool)

(declare-fun inv!74803 (Conc!15100) Bool)

(assert (=> b!4958888 (= e!3099145 (and (inv!74803 (c!846380 input!1342)) tp!1390797))))

(declare-fun b!4958889 () Bool)

(declare-fun e!3099150 () Bool)

(declare-fun tp!1390795 () Bool)

(assert (=> b!4958889 (= e!3099150 (and (inv!74803 (c!846380 totalInput!464)) tp!1390795))))

(declare-fun b!4958890 () Bool)

(declare-fun res!2116227 () Bool)

(assert (=> b!4958890 (=> (not res!2116227) (not e!3099152))))

(declare-fun rulesValidInductive!3251 (LexerInterface!7940 List!57432) Bool)

(assert (=> b!4958890 (= res!2116227 (rulesValidInductive!3251 thiss!15247 rulesArg!259))))

(declare-fun b!4958891 () Bool)

(declare-fun e!3099153 () Bool)

(declare-fun tp!1390799 () Bool)

(assert (=> b!4958891 (= e!3099153 (and e!3099146 tp!1390799))))

(assert (=> b!4958892 (= e!3099155 (and tp!1390800 tp!1390796))))

(declare-fun b!4958886 () Bool)

(assert (=> b!4958886 (= e!3099148 (not e!3099151))))

(declare-fun res!2116224 () Bool)

(assert (=> b!4958886 (=> res!2116224 e!3099151)))

(assert (=> b!4958886 (= res!2116224 (or (and ((_ is Cons!57308) rulesArg!259) ((_ is Nil!57308) (t!367998 rulesArg!259))) (not ((_ is Cons!57308) rulesArg!259))))))

(declare-fun isPrefix!5201 (List!57431 List!57431) Bool)

(assert (=> b!4958886 (isPrefix!5201 lt!2047104 lt!2047104)))

(declare-datatypes ((Unit!148201 0))(
  ( (Unit!148202) )
))
(declare-fun lt!2047102 () Unit!148201)

(declare-fun lemmaIsPrefixRefl!3525 (List!57431 List!57431) Unit!148201)

(assert (=> b!4958886 (= lt!2047102 (lemmaIsPrefixRefl!3525 lt!2047104 lt!2047104))))

(declare-fun res!2116225 () Bool)

(assert (=> start!522766 (=> (not res!2116225) (not e!3099152))))

(assert (=> start!522766 (= res!2116225 ((_ is Lexer!7938) thiss!15247))))

(assert (=> start!522766 e!3099152))

(assert (=> start!522766 true))

(assert (=> start!522766 e!3099153))

(declare-fun inv!74804 (BalanceConc!29630) Bool)

(assert (=> start!522766 (and (inv!74804 input!1342) e!3099145)))

(assert (=> start!522766 (and (inv!74804 totalInput!464) e!3099150)))

(assert (= (and start!522766 res!2116225) b!4958890))

(assert (= (and b!4958890 res!2116227) b!4958883))

(assert (= (and b!4958883 res!2116228) b!4958885))

(assert (= (and b!4958885 res!2116229) b!4958886))

(assert (= (and b!4958886 (not res!2116224)) b!4958880))

(assert (= (and b!4958880 (not res!2116230)) b!4958882))

(assert (= (and b!4958882 (not res!2116223)) b!4958881))

(assert (= (and b!4958881 (not res!2116226)) b!4958887))

(assert (= b!4958884 b!4958892))

(assert (= b!4958891 b!4958884))

(assert (= (and start!522766 ((_ is Cons!57308) rulesArg!259)) b!4958891))

(assert (= start!522766 b!4958888))

(assert (= start!522766 b!4958889))

(declare-fun m!5983452 () Bool)

(assert (=> start!522766 m!5983452))

(declare-fun m!5983454 () Bool)

(assert (=> start!522766 m!5983454))

(declare-fun m!5983456 () Bool)

(assert (=> b!4958890 m!5983456))

(declare-fun m!5983458 () Bool)

(assert (=> b!4958881 m!5983458))

(declare-fun m!5983460 () Bool)

(assert (=> b!4958881 m!5983460))

(declare-fun m!5983462 () Bool)

(assert (=> b!4958884 m!5983462))

(declare-fun m!5983464 () Bool)

(assert (=> b!4958884 m!5983464))

(declare-fun m!5983466 () Bool)

(assert (=> b!4958883 m!5983466))

(declare-fun m!5983468 () Bool)

(assert (=> b!4958880 m!5983468))

(declare-fun m!5983470 () Bool)

(assert (=> b!4958880 m!5983470))

(declare-fun m!5983472 () Bool)

(assert (=> b!4958889 m!5983472))

(declare-fun m!5983474 () Bool)

(assert (=> b!4958886 m!5983474))

(declare-fun m!5983476 () Bool)

(assert (=> b!4958886 m!5983476))

(declare-fun m!5983478 () Bool)

(assert (=> b!4958888 m!5983478))

(declare-fun m!5983480 () Bool)

(assert (=> b!4958885 m!5983480))

(assert (=> b!4958885 m!5983480))

(declare-fun m!5983482 () Bool)

(assert (=> b!4958885 m!5983482))

(declare-fun m!5983484 () Bool)

(assert (=> b!4958885 m!5983484))

(declare-fun m!5983486 () Bool)

(assert (=> b!4958882 m!5983486))

(declare-fun m!5983488 () Bool)

(assert (=> b!4958882 m!5983488))

(declare-fun m!5983490 () Bool)

(assert (=> b!4958882 m!5983490))

(check-sat b_and!347293 (not b!4958886) (not b_next!133231) (not b!4958891) (not b!4958884) (not start!522766) b_and!347291 (not b!4958889) (not b!4958885) (not b_next!133229) (not b!4958888) (not b!4958890) (not b!4958880) (not b!4958883) (not b!4958882) (not b!4958881))
(check-sat b_and!347291 b_and!347293 (not b_next!133229) (not b_next!133231))
