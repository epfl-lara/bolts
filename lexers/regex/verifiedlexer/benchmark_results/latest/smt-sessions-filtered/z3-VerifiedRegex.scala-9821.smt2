; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!513612 () Bool)

(assert start!513612)

(declare-fun b!4902273 () Bool)

(declare-fun b_free!131811 () Bool)

(declare-fun b_next!132601 () Bool)

(assert (=> b!4902273 (= b_free!131811 (not b_next!132601))))

(declare-fun tp!1379364 () Bool)

(declare-fun b_and!346203 () Bool)

(assert (=> b!4902273 (= tp!1379364 b_and!346203)))

(declare-fun b_free!131813 () Bool)

(declare-fun b_next!132603 () Bool)

(assert (=> b!4902273 (= b_free!131813 (not b_next!132603))))

(declare-fun tp!1379366 () Bool)

(declare-fun b_and!346205 () Bool)

(assert (=> b!4902273 (= tp!1379366 b_and!346205)))

(declare-fun b!4902289 () Bool)

(declare-fun e!3064436 () Bool)

(assert (=> b!4902289 (= e!3064436 true)))

(declare-fun b!4902288 () Bool)

(declare-fun e!3064435 () Bool)

(assert (=> b!4902288 (= e!3064435 e!3064436)))

(declare-fun b!4902280 () Bool)

(assert (=> b!4902280 e!3064435))

(assert (= b!4902288 b!4902289))

(assert (= b!4902280 b!4902288))

(declare-datatypes ((C!26768 0))(
  ( (C!26769 (val!22718 Int)) )
))
(declare-datatypes ((Regex!13285 0))(
  ( (ElementMatch!13285 (c!833181 C!26768)) (Concat!21805 (regOne!27082 Regex!13285) (regTwo!27082 Regex!13285)) (EmptyExpr!13285) (Star!13285 (reg!13614 Regex!13285)) (EmptyLang!13285) (Union!13285 (regOne!27083 Regex!13285) (regTwo!27083 Regex!13285)) )
))
(declare-datatypes ((String!64041 0))(
  ( (String!64042 (value!263095 String)) )
))
(declare-datatypes ((List!56618 0))(
  ( (Nil!56494) (Cons!56494 (h!62942 (_ BitVec 16)) (t!366710 List!56618)) )
))
(declare-datatypes ((TokenValue!8520 0))(
  ( (FloatLiteralValue!17040 (text!60085 List!56618)) (TokenValueExt!8519 (__x!34333 Int)) (Broken!42600 (value!263096 List!56618)) (Object!8643) (End!8520) (Def!8520) (Underscore!8520) (Match!8520) (Else!8520) (Error!8520) (Case!8520) (If!8520) (Extends!8520) (Abstract!8520) (Class!8520) (Val!8520) (DelimiterValue!17040 (del!8580 List!56618)) (KeywordValue!8526 (value!263097 List!56618)) (CommentValue!17040 (value!263098 List!56618)) (WhitespaceValue!17040 (value!263099 List!56618)) (IndentationValue!8520 (value!263100 List!56618)) (String!64043) (Int32!8520) (Broken!42601 (value!263101 List!56618)) (Boolean!8521) (Unit!146598) (OperatorValue!8523 (op!8580 List!56618)) (IdentifierValue!17040 (value!263102 List!56618)) (IdentifierValue!17041 (value!263103 List!56618)) (WhitespaceValue!17041 (value!263104 List!56618)) (True!17040) (False!17040) (Broken!42602 (value!263105 List!56618)) (Broken!42603 (value!263106 List!56618)) (True!17041) (RightBrace!8520) (RightBracket!8520) (Colon!8520) (Null!8520) (Comma!8520) (LeftBracket!8520) (False!17041) (LeftBrace!8520) (ImaginaryLiteralValue!8520 (text!60086 List!56618)) (StringLiteralValue!25560 (value!263107 List!56618)) (EOFValue!8520 (value!263108 List!56618)) (IdentValue!8520 (value!263109 List!56618)) (DelimiterValue!17041 (value!263110 List!56618)) (DedentValue!8520 (value!263111 List!56618)) (NewLineValue!8520 (value!263112 List!56618)) (IntegerValue!25560 (value!263113 (_ BitVec 32)) (text!60087 List!56618)) (IntegerValue!25561 (value!263114 Int) (text!60088 List!56618)) (Times!8520) (Or!8520) (Equal!8520) (Minus!8520) (Broken!42604 (value!263115 List!56618)) (And!8520) (Div!8520) (LessEqual!8520) (Mod!8520) (Concat!21806) (Not!8520) (Plus!8520) (SpaceValue!8520 (value!263116 List!56618)) (IntegerValue!25562 (value!263117 Int) (text!60089 List!56618)) (StringLiteralValue!25561 (text!60090 List!56618)) (FloatLiteralValue!17041 (text!60091 List!56618)) (BytesLiteralValue!8520 (value!263118 List!56618)) (CommentValue!17041 (value!263119 List!56618)) (StringLiteralValue!25562 (value!263120 List!56618)) (ErrorTokenValue!8520 (msg!8581 List!56618)) )
))
(declare-datatypes ((List!56619 0))(
  ( (Nil!56495) (Cons!56495 (h!62943 C!26768) (t!366711 List!56619)) )
))
(declare-datatypes ((IArray!29617 0))(
  ( (IArray!29618 (innerList!14866 List!56619)) )
))
(declare-datatypes ((Conc!14778 0))(
  ( (Node!14778 (left!41081 Conc!14778) (right!41411 Conc!14778) (csize!29786 Int) (cheight!14989 Int)) (Leaf!24600 (xs!18094 IArray!29617) (csize!29787 Int)) (Empty!14778) )
))
(declare-datatypes ((BalanceConc!28986 0))(
  ( (BalanceConc!28987 (c!833182 Conc!14778)) )
))
(declare-datatypes ((TokenValueInjection!16348 0))(
  ( (TokenValueInjection!16349 (toValue!11121 Int) (toChars!10980 Int)) )
))
(declare-datatypes ((Rule!16220 0))(
  ( (Rule!16221 (regex!8210 Regex!13285) (tag!9074 String!64041) (isSeparator!8210 Bool) (transformation!8210 TokenValueInjection!16348)) )
))
(declare-fun rule!164 () Rule!16220)

(declare-fun order!25609 () Int)

(declare-fun order!25611 () Int)

(declare-fun lambda!244304 () Int)

(declare-fun dynLambda!22738 (Int Int) Int)

(declare-fun dynLambda!22739 (Int Int) Int)

(assert (=> b!4902289 (< (dynLambda!22738 order!25609 (toValue!11121 (transformation!8210 rule!164))) (dynLambda!22739 order!25611 lambda!244304))))

(declare-fun order!25613 () Int)

(declare-fun dynLambda!22740 (Int Int) Int)

(assert (=> b!4902289 (< (dynLambda!22740 order!25613 (toChars!10980 (transformation!8210 rule!164))) (dynLambda!22739 order!25611 lambda!244304))))

(declare-fun b!4902270 () Bool)

(declare-fun e!3064425 () Bool)

(declare-fun e!3064424 () Bool)

(assert (=> b!4902270 (= e!3064425 e!3064424)))

(declare-fun res!2093975 () Bool)

(assert (=> b!4902270 (=> res!2093975 e!3064424)))

(declare-fun lt!2010324 () Bool)

(declare-fun lt!2010330 () Bool)

(assert (=> b!4902270 (= res!2093975 (or (not (= lt!2010324 lt!2010330)) (not lt!2010324)))))

(declare-fun lt!2010329 () List!56619)

(declare-datatypes ((LexerInterface!7802 0))(
  ( (LexerInterfaceExt!7799 (__x!34334 Int)) (Lexer!7800) )
))
(declare-fun thiss!15943 () LexerInterface!7802)

(declare-datatypes ((Token!14956 0))(
  ( (Token!14957 (value!263121 TokenValue!8520) (rule!11410 Rule!16220) (size!37210 Int) (originalCharacters!8509 List!56619)) )
))
(declare-datatypes ((tuple2!60628 0))(
  ( (tuple2!60629 (_1!33617 Token!14956) (_2!33617 List!56619)) )
))
(declare-datatypes ((Option!14065 0))(
  ( (None!14064) (Some!14064 (v!50026 tuple2!60628)) )
))
(declare-fun isDefined!11074 (Option!14065) Bool)

(declare-fun maxPrefixOneRule!3551 (LexerInterface!7802 Rule!16220 List!56619) Option!14065)

(assert (=> b!4902270 (= lt!2010330 (isDefined!11074 (maxPrefixOneRule!3551 thiss!15943 rule!164 lt!2010329)))))

(declare-fun lt!2010327 () TokenValue!8520)

(declare-datatypes ((tuple2!60630 0))(
  ( (tuple2!60631 (_1!33618 BalanceConc!28986) (_2!33618 BalanceConc!28986)) )
))
(declare-fun lt!2010325 () tuple2!60630)

(declare-fun lt!2010328 () List!56619)

(declare-datatypes ((tuple2!60632 0))(
  ( (tuple2!60633 (_1!33619 Token!14956) (_2!33619 BalanceConc!28986)) )
))
(declare-datatypes ((Option!14066 0))(
  ( (None!14065) (Some!14065 (v!50027 tuple2!60632)) )
))
(declare-fun isDefined!11075 (Option!14066) Bool)

(declare-fun size!37211 (BalanceConc!28986) Int)

(assert (=> b!4902270 (= lt!2010324 (isDefined!11075 (Some!14065 (tuple2!60633 (Token!14957 lt!2010327 rule!164 (size!37211 (_1!33618 lt!2010325)) lt!2010328) (_2!33618 lt!2010325)))))))

(declare-fun apply!13558 (TokenValueInjection!16348 BalanceConc!28986) TokenValue!8520)

(assert (=> b!4902270 (= lt!2010327 (apply!13558 (transformation!8210 rule!164) (_1!33618 lt!2010325)))))

(declare-datatypes ((Unit!146599 0))(
  ( (Unit!146600) )
))
(declare-fun lt!2010323 () Unit!146599)

(declare-fun lt!2010332 () BalanceConc!28986)

(declare-fun ForallOf!1151 (Int BalanceConc!28986) Unit!146599)

(assert (=> b!4902270 (= lt!2010323 (ForallOf!1151 lambda!244304 lt!2010332))))

(declare-fun seqFromList!5956 (List!56619) BalanceConc!28986)

(assert (=> b!4902270 (= lt!2010332 (seqFromList!5956 lt!2010328))))

(declare-fun list!17780 (BalanceConc!28986) List!56619)

(assert (=> b!4902270 (= lt!2010328 (list!17780 (_1!33618 lt!2010325)))))

(declare-fun lt!2010334 () Unit!146599)

(assert (=> b!4902270 (= lt!2010334 (ForallOf!1151 lambda!244304 (_1!33618 lt!2010325)))))

(declare-fun b!4902271 () Bool)

(declare-fun e!3064421 () Bool)

(declare-datatypes ((tuple2!60634 0))(
  ( (tuple2!60635 (_1!33620 List!56619) (_2!33620 List!56619)) )
))
(declare-fun lt!2010335 () tuple2!60634)

(declare-fun matchR!6552 (Regex!13285 List!56619) Bool)

(assert (=> b!4902271 (= e!3064421 (matchR!6552 (regex!8210 rule!164) (_1!33620 lt!2010335)))))

(declare-fun res!2093976 () Bool)

(declare-fun e!3064426 () Bool)

(assert (=> start!513612 (=> (not res!2093976) (not e!3064426))))

(get-info :version)

(assert (=> start!513612 (= res!2093976 ((_ is Lexer!7800) thiss!15943))))

(assert (=> start!513612 e!3064426))

(assert (=> start!513612 true))

(declare-fun e!3064423 () Bool)

(assert (=> start!513612 e!3064423))

(declare-fun input!1509 () BalanceConc!28986)

(declare-fun e!3064428 () Bool)

(declare-fun inv!72876 (BalanceConc!28986) Bool)

(assert (=> start!513612 (and (inv!72876 input!1509) e!3064428)))

(declare-fun b!4902272 () Bool)

(declare-fun e!3064422 () Bool)

(assert (=> b!4902272 (= e!3064426 e!3064422)))

(declare-fun res!2093977 () Bool)

(assert (=> b!4902272 (=> (not res!2093977) (not e!3064422))))

(declare-fun isEmpty!30355 (BalanceConc!28986) Bool)

(assert (=> b!4902272 (= res!2093977 (not (isEmpty!30355 (_1!33618 lt!2010325))))))

(declare-fun findLongestMatchWithZipperSequence!298 (Regex!13285 BalanceConc!28986) tuple2!60630)

(assert (=> b!4902272 (= lt!2010325 (findLongestMatchWithZipperSequence!298 (regex!8210 rule!164) input!1509))))

(declare-fun e!3064430 () Bool)

(assert (=> b!4902273 (= e!3064430 (and tp!1379364 tp!1379366))))

(declare-fun b!4902274 () Bool)

(declare-fun e!3064429 () Bool)

(assert (=> b!4902274 (= e!3064424 e!3064429)))

(declare-fun res!2093974 () Bool)

(assert (=> b!4902274 (=> res!2093974 e!3064429)))

(assert (=> b!4902274 (= res!2093974 (not (= (apply!13558 (transformation!8210 rule!164) lt!2010332) lt!2010327)))))

(declare-fun lt!2010333 () Unit!146599)

(declare-fun lemmaEqSameImage!1102 (TokenValueInjection!16348 BalanceConc!28986 BalanceConc!28986) Unit!146599)

(assert (=> b!4902274 (= lt!2010333 (lemmaEqSameImage!1102 (transformation!8210 rule!164) (_1!33618 lt!2010325) lt!2010332))))

(declare-fun b!4902275 () Bool)

(declare-fun res!2093982 () Bool)

(assert (=> b!4902275 (=> res!2093982 e!3064424)))

(assert (=> b!4902275 (= res!2093982 (not (= (list!17780 lt!2010332) lt!2010328)))))

(declare-fun b!4902276 () Bool)

(assert (=> b!4902276 (= e!3064429 lt!2010330)))

(declare-fun b!4902277 () Bool)

(declare-fun tp!1379367 () Bool)

(declare-fun inv!72877 (Conc!14778) Bool)

(assert (=> b!4902277 (= e!3064428 (and (inv!72877 (c!833182 input!1509)) tp!1379367))))

(declare-fun b!4902278 () Bool)

(assert (=> b!4902278 (= e!3064422 (not e!3064425))))

(declare-fun res!2093979 () Bool)

(assert (=> b!4902278 (=> res!2093979 e!3064425)))

(declare-fun semiInverseModEq!3611 (Int Int) Bool)

(assert (=> b!4902278 (= res!2093979 (not (semiInverseModEq!3611 (toChars!10980 (transformation!8210 rule!164)) (toValue!11121 (transformation!8210 rule!164)))))))

(declare-fun lt!2010326 () Unit!146599)

(declare-fun lemmaInv!1256 (TokenValueInjection!16348) Unit!146599)

(assert (=> b!4902278 (= lt!2010326 (lemmaInv!1256 (transformation!8210 rule!164)))))

(assert (=> b!4902278 e!3064421))

(declare-fun res!2093980 () Bool)

(assert (=> b!4902278 (=> res!2093980 e!3064421)))

(declare-fun isEmpty!30356 (List!56619) Bool)

(assert (=> b!4902278 (= res!2093980 (isEmpty!30356 (_1!33620 lt!2010335)))))

(declare-fun findLongestMatchInner!1773 (Regex!13285 List!56619 Int List!56619 List!56619 Int) tuple2!60634)

(declare-fun size!37212 (List!56619) Int)

(assert (=> b!4902278 (= lt!2010335 (findLongestMatchInner!1773 (regex!8210 rule!164) Nil!56495 (size!37212 Nil!56495) lt!2010329 lt!2010329 (size!37212 lt!2010329)))))

(declare-fun lt!2010331 () Unit!146599)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1736 (Regex!13285 List!56619) Unit!146599)

(assert (=> b!4902278 (= lt!2010331 (longestMatchIsAcceptedByMatchOrIsEmpty!1736 (regex!8210 rule!164) lt!2010329))))

(assert (=> b!4902278 (= lt!2010329 (list!17780 input!1509))))

(declare-fun b!4902279 () Bool)

(declare-fun tp!1379365 () Bool)

(declare-fun inv!72872 (String!64041) Bool)

(declare-fun inv!72878 (TokenValueInjection!16348) Bool)

(assert (=> b!4902279 (= e!3064423 (and tp!1379365 (inv!72872 (tag!9074 rule!164)) (inv!72878 (transformation!8210 rule!164)) e!3064430))))

(declare-fun res!2093978 () Bool)

(assert (=> b!4902280 (=> res!2093978 e!3064425)))

(declare-fun Forall!1707 (Int) Bool)

(assert (=> b!4902280 (= res!2093978 (not (Forall!1707 lambda!244304)))))

(declare-fun b!4902281 () Bool)

(declare-fun res!2093981 () Bool)

(assert (=> b!4902281 (=> (not res!2093981) (not e!3064426))))

(declare-fun ruleValid!3707 (LexerInterface!7802 Rule!16220) Bool)

(assert (=> b!4902281 (= res!2093981 (ruleValid!3707 thiss!15943 rule!164))))

(assert (= (and start!513612 res!2093976) b!4902281))

(assert (= (and b!4902281 res!2093981) b!4902272))

(assert (= (and b!4902272 res!2093977) b!4902278))

(assert (= (and b!4902278 (not res!2093980)) b!4902271))

(assert (= (and b!4902278 (not res!2093979)) b!4902280))

(assert (= (and b!4902280 (not res!2093978)) b!4902270))

(assert (= (and b!4902270 (not res!2093975)) b!4902275))

(assert (= (and b!4902275 (not res!2093982)) b!4902274))

(assert (= (and b!4902274 (not res!2093974)) b!4902276))

(assert (= b!4902279 b!4902273))

(assert (= start!513612 b!4902279))

(assert (= start!513612 b!4902277))

(declare-fun m!5910996 () Bool)

(assert (=> b!4902278 m!5910996))

(declare-fun m!5910998 () Bool)

(assert (=> b!4902278 m!5910998))

(declare-fun m!5911000 () Bool)

(assert (=> b!4902278 m!5911000))

(declare-fun m!5911002 () Bool)

(assert (=> b!4902278 m!5911002))

(declare-fun m!5911004 () Bool)

(assert (=> b!4902278 m!5911004))

(assert (=> b!4902278 m!5910998))

(assert (=> b!4902278 m!5911000))

(declare-fun m!5911006 () Bool)

(assert (=> b!4902278 m!5911006))

(declare-fun m!5911008 () Bool)

(assert (=> b!4902278 m!5911008))

(declare-fun m!5911010 () Bool)

(assert (=> b!4902278 m!5911010))

(declare-fun m!5911012 () Bool)

(assert (=> b!4902270 m!5911012))

(declare-fun m!5911014 () Bool)

(assert (=> b!4902270 m!5911014))

(declare-fun m!5911016 () Bool)

(assert (=> b!4902270 m!5911016))

(declare-fun m!5911018 () Bool)

(assert (=> b!4902270 m!5911018))

(declare-fun m!5911020 () Bool)

(assert (=> b!4902270 m!5911020))

(declare-fun m!5911022 () Bool)

(assert (=> b!4902270 m!5911022))

(assert (=> b!4902270 m!5911016))

(declare-fun m!5911024 () Bool)

(assert (=> b!4902270 m!5911024))

(declare-fun m!5911026 () Bool)

(assert (=> b!4902270 m!5911026))

(declare-fun m!5911028 () Bool)

(assert (=> b!4902270 m!5911028))

(declare-fun m!5911030 () Bool)

(assert (=> b!4902280 m!5911030))

(declare-fun m!5911032 () Bool)

(assert (=> b!4902277 m!5911032))

(declare-fun m!5911034 () Bool)

(assert (=> b!4902274 m!5911034))

(declare-fun m!5911036 () Bool)

(assert (=> b!4902274 m!5911036))

(declare-fun m!5911038 () Bool)

(assert (=> b!4902275 m!5911038))

(declare-fun m!5911040 () Bool)

(assert (=> b!4902281 m!5911040))

(declare-fun m!5911042 () Bool)

(assert (=> b!4902271 m!5911042))

(declare-fun m!5911044 () Bool)

(assert (=> b!4902272 m!5911044))

(declare-fun m!5911046 () Bool)

(assert (=> b!4902272 m!5911046))

(declare-fun m!5911048 () Bool)

(assert (=> b!4902279 m!5911048))

(declare-fun m!5911050 () Bool)

(assert (=> b!4902279 m!5911050))

(declare-fun m!5911052 () Bool)

(assert (=> start!513612 m!5911052))

(check-sat (not b_next!132601) b_and!346205 (not b!4902277) (not b!4902281) (not b!4902280) (not b!4902270) (not b!4902278) (not b!4902272) b_and!346203 (not b!4902271) (not b!4902274) (not b!4902279) (not start!513612) (not b!4902275) (not b_next!132603))
(check-sat b_and!346205 b_and!346203 (not b_next!132603) (not b_next!132601))
