; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522422 () Bool)

(assert start!522422)

(declare-fun b!4956424 () Bool)

(declare-fun b_free!132295 () Bool)

(declare-fun b_next!133085 () Bool)

(assert (=> b!4956424 (= b_free!132295 (not b_next!133085))))

(declare-fun tp!1389984 () Bool)

(declare-fun b_and!347147 () Bool)

(assert (=> b!4956424 (= tp!1389984 b_and!347147)))

(declare-fun b_free!132297 () Bool)

(declare-fun b_next!133087 () Bool)

(assert (=> b!4956424 (= b_free!132297 (not b_next!133087))))

(declare-fun tp!1389981 () Bool)

(declare-fun b_and!347149 () Bool)

(assert (=> b!4956424 (= tp!1389981 b_and!347149)))

(declare-fun e!3097284 () Bool)

(assert (=> b!4956424 (= e!3097284 (and tp!1389984 tp!1389981))))

(declare-fun b!4956425 () Bool)

(declare-fun e!3097280 () Bool)

(declare-fun e!3097278 () Bool)

(assert (=> b!4956425 (= e!3097280 e!3097278)))

(declare-fun res!2114790 () Bool)

(assert (=> b!4956425 (=> res!2114790 e!3097278)))

(declare-datatypes ((List!57346 0))(
  ( (Nil!57222) (Cons!57222 (h!63670 (_ BitVec 16)) (t!367912 List!57346)) )
))
(declare-datatypes ((TokenValue!8630 0))(
  ( (FloatLiteralValue!17260 (text!60855 List!57346)) (TokenValueExt!8629 (__x!34553 Int)) (Broken!43150 (value!266536 List!57346)) (Object!8753) (End!8630) (Def!8630) (Underscore!8630) (Match!8630) (Else!8630) (Error!8630) (Case!8630) (If!8630) (Extends!8630) (Abstract!8630) (Class!8630) (Val!8630) (DelimiterValue!17260 (del!8690 List!57346)) (KeywordValue!8636 (value!266537 List!57346)) (CommentValue!17260 (value!266538 List!57346)) (WhitespaceValue!17260 (value!266539 List!57346)) (IndentationValue!8630 (value!266540 List!57346)) (String!65023) (Int32!8630) (Broken!43151 (value!266541 List!57346)) (Boolean!8631) (Unit!148116) (OperatorValue!8633 (op!8690 List!57346)) (IdentifierValue!17260 (value!266542 List!57346)) (IdentifierValue!17261 (value!266543 List!57346)) (WhitespaceValue!17261 (value!266544 List!57346)) (True!17260) (False!17260) (Broken!43152 (value!266545 List!57346)) (Broken!43153 (value!266546 List!57346)) (True!17261) (RightBrace!8630) (RightBracket!8630) (Colon!8630) (Null!8630) (Comma!8630) (LeftBracket!8630) (False!17261) (LeftBrace!8630) (ImaginaryLiteralValue!8630 (text!60856 List!57346)) (StringLiteralValue!25890 (value!266547 List!57346)) (EOFValue!8630 (value!266548 List!57346)) (IdentValue!8630 (value!266549 List!57346)) (DelimiterValue!17261 (value!266550 List!57346)) (DedentValue!8630 (value!266551 List!57346)) (NewLineValue!8630 (value!266552 List!57346)) (IntegerValue!25890 (value!266553 (_ BitVec 32)) (text!60857 List!57346)) (IntegerValue!25891 (value!266554 Int) (text!60858 List!57346)) (Times!8630) (Or!8630) (Equal!8630) (Minus!8630) (Broken!43154 (value!266555 List!57346)) (And!8630) (Div!8630) (LessEqual!8630) (Mod!8630) (Concat!22183) (Not!8630) (Plus!8630) (SpaceValue!8630 (value!266556 List!57346)) (IntegerValue!25892 (value!266557 Int) (text!60859 List!57346)) (StringLiteralValue!25891 (text!60860 List!57346)) (FloatLiteralValue!17261 (text!60861 List!57346)) (BytesLiteralValue!8630 (value!266558 List!57346)) (CommentValue!17261 (value!266559 List!57346)) (StringLiteralValue!25892 (value!266560 List!57346)) (ErrorTokenValue!8630 (msg!8691 List!57346)) )
))
(declare-datatypes ((C!27356 0))(
  ( (C!27357 (val!23044 Int)) )
))
(declare-datatypes ((Regex!13553 0))(
  ( (ElementMatch!13553 (c!846167 C!27356)) (Concat!22184 (regOne!27618 Regex!13553) (regTwo!27618 Regex!13553)) (EmptyExpr!13553) (Star!13553 (reg!13882 Regex!13553)) (EmptyLang!13553) (Union!13553 (regOne!27619 Regex!13553) (regTwo!27619 Regex!13553)) )
))
(declare-datatypes ((String!65024 0))(
  ( (String!65025 (value!266561 String)) )
))
(declare-datatypes ((List!57347 0))(
  ( (Nil!57223) (Cons!57223 (h!63671 C!27356) (t!367913 List!57347)) )
))
(declare-datatypes ((IArray!30205 0))(
  ( (IArray!30206 (innerList!15160 List!57347)) )
))
(declare-datatypes ((Conc!15072 0))(
  ( (Node!15072 (left!41734 Conc!15072) (right!42064 Conc!15072) (csize!30374 Int) (cheight!15283 Int)) (Leaf!25057 (xs!18398 IArray!30205) (csize!30375 Int)) (Empty!15072) )
))
(declare-datatypes ((BalanceConc!29574 0))(
  ( (BalanceConc!29575 (c!846168 Conc!15072)) )
))
(declare-datatypes ((TokenValueInjection!16568 0))(
  ( (TokenValueInjection!16569 (toValue!11271 Int) (toChars!11130 Int)) )
))
(declare-datatypes ((Rule!16440 0))(
  ( (Rule!16441 (regex!8320 Regex!13553) (tag!9184 String!65024) (isSeparator!8320 Bool) (transformation!8320 TokenValueInjection!16568)) )
))
(declare-datatypes ((Token!15140 0))(
  ( (Token!15141 (value!266562 TokenValue!8630) (rule!11536 Rule!16440) (size!37942 Int) (originalCharacters!8601 List!57347)) )
))
(declare-datatypes ((tuple2!61796 0))(
  ( (tuple2!61797 (_1!34201 Token!15140) (_2!34201 BalanceConc!29574)) )
))
(declare-datatypes ((Option!14309 0))(
  ( (None!14308) (Some!14308 (v!50293 tuple2!61796)) )
))
(declare-fun lt!2045686 () Option!14309)

(declare-fun lt!2045683 () Option!14309)

(get-info :version)

(assert (=> b!4956425 (= res!2114790 (or (and ((_ is None!14308) lt!2045686) ((_ is None!14308) lt!2045683)) (not ((_ is None!14308) lt!2045683))))))

(declare-fun input!1342 () BalanceConc!29574)

(declare-datatypes ((List!57348 0))(
  ( (Nil!57224) (Cons!57224 (h!63672 Rule!16440) (t!367914 List!57348)) )
))
(declare-fun rulesArg!259 () List!57348)

(declare-fun totalInput!464 () BalanceConc!29574)

(declare-datatypes ((LexerInterface!7912 0))(
  ( (LexerInterfaceExt!7909 (__x!34554 Int)) (Lexer!7910) )
))
(declare-fun thiss!15247 () LexerInterface!7912)

(declare-fun maxPrefixZipperSequenceV2!651 (LexerInterface!7912 List!57348 BalanceConc!29574 BalanceConc!29574) Option!14309)

(assert (=> b!4956425 (= lt!2045683 (maxPrefixZipperSequenceV2!651 thiss!15247 (t!367914 rulesArg!259) input!1342 totalInput!464))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!304 (LexerInterface!7912 Rule!16440 BalanceConc!29574 BalanceConc!29574) Option!14309)

(assert (=> b!4956425 (= lt!2045686 (maxPrefixOneRuleZipperSequenceV2!304 thiss!15247 (h!63672 rulesArg!259) input!1342 totalInput!464))))

(declare-fun b!4956426 () Bool)

(declare-fun e!3097285 () Bool)

(assert (=> b!4956426 (= e!3097285 (not e!3097280))))

(declare-fun res!2114788 () Bool)

(assert (=> b!4956426 (=> res!2114788 e!3097280)))

(assert (=> b!4956426 (= res!2114788 (or (and ((_ is Cons!57224) rulesArg!259) ((_ is Nil!57224) (t!367914 rulesArg!259))) (not ((_ is Cons!57224) rulesArg!259))))))

(declare-fun lt!2045682 () List!57347)

(declare-fun isPrefix!5173 (List!57347 List!57347) Bool)

(assert (=> b!4956426 (isPrefix!5173 lt!2045682 lt!2045682)))

(declare-datatypes ((Unit!148117 0))(
  ( (Unit!148118) )
))
(declare-fun lt!2045684 () Unit!148117)

(declare-fun lemmaIsPrefixRefl!3497 (List!57347 List!57347) Unit!148117)

(assert (=> b!4956426 (= lt!2045684 (lemmaIsPrefixRefl!3497 lt!2045682 lt!2045682))))

(declare-fun b!4956427 () Bool)

(declare-fun e!3097281 () Bool)

(declare-fun lt!2045685 () Bool)

(assert (=> b!4956427 (= e!3097281 lt!2045685)))

(declare-fun b!4956429 () Bool)

(declare-fun e!3097287 () Bool)

(declare-fun e!3097283 () Bool)

(declare-fun tp!1389983 () Bool)

(assert (=> b!4956429 (= e!3097287 (and e!3097283 tp!1389983))))

(declare-fun b!4956430 () Bool)

(declare-fun res!2114786 () Bool)

(declare-fun e!3097277 () Bool)

(assert (=> b!4956430 (=> (not res!2114786) (not e!3097277))))

(declare-fun rulesValidInductive!3223 (LexerInterface!7912 List!57348) Bool)

(assert (=> b!4956430 (= res!2114786 (rulesValidInductive!3223 thiss!15247 rulesArg!259))))

(declare-fun b!4956431 () Bool)

(assert (=> b!4956431 (= e!3097277 e!3097285)))

(declare-fun res!2114789 () Bool)

(assert (=> b!4956431 (=> (not res!2114789) (not e!3097285))))

(declare-fun isSuffix!1119 (List!57347 List!57347) Bool)

(declare-fun list!18261 (BalanceConc!29574) List!57347)

(assert (=> b!4956431 (= res!2114789 (isSuffix!1119 lt!2045682 (list!18261 totalInput!464)))))

(assert (=> b!4956431 (= lt!2045682 (list!18261 input!1342))))

(declare-fun b!4956432 () Bool)

(declare-fun res!2114787 () Bool)

(assert (=> b!4956432 (=> (not res!2114787) (not e!3097277))))

(declare-fun isEmpty!30760 (List!57348) Bool)

(assert (=> b!4956432 (= res!2114787 (not (isEmpty!30760 rulesArg!259)))))

(declare-fun res!2114792 () Bool)

(assert (=> start!522422 (=> (not res!2114792) (not e!3097277))))

(assert (=> start!522422 (= res!2114792 ((_ is Lexer!7910) thiss!15247))))

(assert (=> start!522422 e!3097277))

(assert (=> start!522422 true))

(assert (=> start!522422 e!3097287))

(declare-fun e!3097279 () Bool)

(declare-fun inv!74653 (BalanceConc!29574) Bool)

(assert (=> start!522422 (and (inv!74653 input!1342) e!3097279)))

(declare-fun e!3097282 () Bool)

(assert (=> start!522422 (and (inv!74653 totalInput!464) e!3097282)))

(declare-fun tp!1389979 () Bool)

(declare-fun b!4956428 () Bool)

(declare-fun inv!74649 (String!65024) Bool)

(declare-fun inv!74654 (TokenValueInjection!16568) Bool)

(assert (=> b!4956428 (= e!3097283 (and tp!1389979 (inv!74649 (tag!9184 (h!63672 rulesArg!259))) (inv!74654 (transformation!8320 (h!63672 rulesArg!259))) e!3097284))))

(declare-fun b!4956433 () Bool)

(declare-fun tp!1389980 () Bool)

(declare-fun inv!74655 (Conc!15072) Bool)

(assert (=> b!4956433 (= e!3097279 (and (inv!74655 (c!846168 input!1342)) tp!1389980))))

(declare-fun b!4956434 () Bool)

(declare-fun res!2114791 () Bool)

(assert (=> b!4956434 (=> res!2114791 e!3097281)))

(declare-datatypes ((tuple2!61798 0))(
  ( (tuple2!61799 (_1!34202 Token!15140) (_2!34202 List!57347)) )
))
(declare-datatypes ((Option!14310 0))(
  ( (None!14309) (Some!14309 (v!50294 tuple2!61798)) )
))
(declare-fun lt!2045688 () Option!14310)

(declare-fun get!19793 (Option!14309) tuple2!61796)

(declare-fun get!19794 (Option!14310) tuple2!61798)

(assert (=> b!4956434 (= res!2114791 (not (= (_1!34201 (get!19793 lt!2045686)) (_1!34202 (get!19794 lt!2045688)))))))

(declare-fun b!4956435 () Bool)

(declare-fun tp!1389982 () Bool)

(assert (=> b!4956435 (= e!3097282 (and (inv!74655 (c!846168 totalInput!464)) tp!1389982))))

(declare-fun b!4956436 () Bool)

(assert (=> b!4956436 (= e!3097278 e!3097281)))

(declare-fun res!2114793 () Bool)

(assert (=> b!4956436 (=> res!2114793 e!3097281)))

(declare-fun lt!2045687 () Bool)

(assert (=> b!4956436 (= res!2114793 (or (not (= lt!2045687 lt!2045685)) (not lt!2045687)))))

(declare-fun isDefined!11236 (Option!14310) Bool)

(assert (=> b!4956436 (= lt!2045685 (isDefined!11236 lt!2045688))))

(declare-fun isDefined!11237 (Option!14309) Bool)

(assert (=> b!4956436 (= lt!2045687 (isDefined!11237 lt!2045686))))

(declare-fun maxPrefixZipper!717 (LexerInterface!7912 List!57348 List!57347) Option!14310)

(assert (=> b!4956436 (= lt!2045688 (maxPrefixZipper!717 thiss!15247 rulesArg!259 lt!2045682))))

(assert (= (and start!522422 res!2114792) b!4956430))

(assert (= (and b!4956430 res!2114786) b!4956432))

(assert (= (and b!4956432 res!2114787) b!4956431))

(assert (= (and b!4956431 res!2114789) b!4956426))

(assert (= (and b!4956426 (not res!2114788)) b!4956425))

(assert (= (and b!4956425 (not res!2114790)) b!4956436))

(assert (= (and b!4956436 (not res!2114793)) b!4956434))

(assert (= (and b!4956434 (not res!2114791)) b!4956427))

(assert (= b!4956428 b!4956424))

(assert (= b!4956429 b!4956428))

(assert (= (and start!522422 ((_ is Cons!57224) rulesArg!259)) b!4956429))

(assert (= start!522422 b!4956433))

(assert (= start!522422 b!4956435))

(declare-fun m!5981004 () Bool)

(assert (=> b!4956431 m!5981004))

(assert (=> b!4956431 m!5981004))

(declare-fun m!5981006 () Bool)

(assert (=> b!4956431 m!5981006))

(declare-fun m!5981008 () Bool)

(assert (=> b!4956431 m!5981008))

(declare-fun m!5981010 () Bool)

(assert (=> start!522422 m!5981010))

(declare-fun m!5981012 () Bool)

(assert (=> start!522422 m!5981012))

(declare-fun m!5981014 () Bool)

(assert (=> b!4956434 m!5981014))

(declare-fun m!5981016 () Bool)

(assert (=> b!4956434 m!5981016))

(declare-fun m!5981018 () Bool)

(assert (=> b!4956430 m!5981018))

(declare-fun m!5981020 () Bool)

(assert (=> b!4956433 m!5981020))

(declare-fun m!5981022 () Bool)

(assert (=> b!4956436 m!5981022))

(declare-fun m!5981024 () Bool)

(assert (=> b!4956436 m!5981024))

(declare-fun m!5981026 () Bool)

(assert (=> b!4956436 m!5981026))

(declare-fun m!5981028 () Bool)

(assert (=> b!4956432 m!5981028))

(declare-fun m!5981030 () Bool)

(assert (=> b!4956435 m!5981030))

(declare-fun m!5981032 () Bool)

(assert (=> b!4956425 m!5981032))

(declare-fun m!5981034 () Bool)

(assert (=> b!4956425 m!5981034))

(declare-fun m!5981036 () Bool)

(assert (=> b!4956428 m!5981036))

(declare-fun m!5981038 () Bool)

(assert (=> b!4956428 m!5981038))

(declare-fun m!5981040 () Bool)

(assert (=> b!4956426 m!5981040))

(declare-fun m!5981042 () Bool)

(assert (=> b!4956426 m!5981042))

(check-sat (not b!4956436) (not b!4956433) (not b_next!133085) (not b!4956430) (not b!4956435) (not b_next!133087) (not b!4956425) (not b!4956428) (not start!522422) (not b!4956432) (not b!4956434) b_and!347149 b_and!347147 (not b!4956429) (not b!4956431) (not b!4956426))
(check-sat b_and!347147 b_and!347149 (not b_next!133085) (not b_next!133087))
