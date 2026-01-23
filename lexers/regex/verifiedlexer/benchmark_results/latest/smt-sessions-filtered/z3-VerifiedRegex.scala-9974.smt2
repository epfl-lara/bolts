; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522382 () Bool)

(assert start!522382)

(declare-fun b!4955632 () Bool)

(declare-fun b_free!132215 () Bool)

(declare-fun b_next!133005 () Bool)

(assert (=> b!4955632 (= b_free!132215 (not b_next!133005))))

(declare-fun tp!1389624 () Bool)

(declare-fun b_and!347067 () Bool)

(assert (=> b!4955632 (= tp!1389624 b_and!347067)))

(declare-fun b_free!132217 () Bool)

(declare-fun b_next!133007 () Bool)

(assert (=> b!4955632 (= b_free!132217 (not b_next!133007))))

(declare-fun tp!1389620 () Bool)

(declare-fun b_and!347069 () Bool)

(assert (=> b!4955632 (= tp!1389620 b_and!347069)))

(declare-fun b!4955629 () Bool)

(declare-fun e!3096578 () Bool)

(declare-datatypes ((C!27316 0))(
  ( (C!27317 (val!23024 Int)) )
))
(declare-datatypes ((List!57286 0))(
  ( (Nil!57162) (Cons!57162 (h!63610 C!27316) (t!367852 List!57286)) )
))
(declare-datatypes ((IArray!30165 0))(
  ( (IArray!30166 (innerList!15140 List!57286)) )
))
(declare-datatypes ((Conc!15052 0))(
  ( (Node!15052 (left!41704 Conc!15052) (right!42034 Conc!15052) (csize!30334 Int) (cheight!15263 Int)) (Leaf!25027 (xs!18378 IArray!30165) (csize!30335 Int)) (Empty!15052) )
))
(declare-datatypes ((BalanceConc!29534 0))(
  ( (BalanceConc!29535 (c!846107 Conc!15052)) )
))
(declare-fun input!1342 () BalanceConc!29534)

(declare-fun tp!1389622 () Bool)

(declare-fun inv!74563 (Conc!15052) Bool)

(assert (=> b!4955629 (= e!3096578 (and (inv!74563 (c!846107 input!1342)) tp!1389622))))

(declare-fun b!4955630 () Bool)

(declare-fun e!3096573 () Bool)

(assert (=> b!4955630 (= e!3096573 true)))

(declare-datatypes ((List!57287 0))(
  ( (Nil!57163) (Cons!57163 (h!63611 (_ BitVec 16)) (t!367853 List!57287)) )
))
(declare-datatypes ((TokenValue!8610 0))(
  ( (FloatLiteralValue!17220 (text!60715 List!57287)) (TokenValueExt!8609 (__x!34513 Int)) (Broken!43050 (value!265966 List!57287)) (Object!8733) (End!8610) (Def!8610) (Underscore!8610) (Match!8610) (Else!8610) (Error!8610) (Case!8610) (If!8610) (Extends!8610) (Abstract!8610) (Class!8610) (Val!8610) (DelimiterValue!17220 (del!8670 List!57287)) (KeywordValue!8616 (value!265967 List!57287)) (CommentValue!17220 (value!265968 List!57287)) (WhitespaceValue!17220 (value!265969 List!57287)) (IndentationValue!8610 (value!265970 List!57287)) (String!64923) (Int32!8610) (Broken!43051 (value!265971 List!57287)) (Boolean!8611) (Unit!148056) (OperatorValue!8613 (op!8670 List!57287)) (IdentifierValue!17220 (value!265972 List!57287)) (IdentifierValue!17221 (value!265973 List!57287)) (WhitespaceValue!17221 (value!265974 List!57287)) (True!17220) (False!17220) (Broken!43052 (value!265975 List!57287)) (Broken!43053 (value!265976 List!57287)) (True!17221) (RightBrace!8610) (RightBracket!8610) (Colon!8610) (Null!8610) (Comma!8610) (LeftBracket!8610) (False!17221) (LeftBrace!8610) (ImaginaryLiteralValue!8610 (text!60716 List!57287)) (StringLiteralValue!25830 (value!265977 List!57287)) (EOFValue!8610 (value!265978 List!57287)) (IdentValue!8610 (value!265979 List!57287)) (DelimiterValue!17221 (value!265980 List!57287)) (DedentValue!8610 (value!265981 List!57287)) (NewLineValue!8610 (value!265982 List!57287)) (IntegerValue!25830 (value!265983 (_ BitVec 32)) (text!60717 List!57287)) (IntegerValue!25831 (value!265984 Int) (text!60718 List!57287)) (Times!8610) (Or!8610) (Equal!8610) (Minus!8610) (Broken!43054 (value!265985 List!57287)) (And!8610) (Div!8610) (LessEqual!8610) (Mod!8610) (Concat!22143) (Not!8610) (Plus!8610) (SpaceValue!8610 (value!265986 List!57287)) (IntegerValue!25832 (value!265987 Int) (text!60719 List!57287)) (StringLiteralValue!25831 (text!60720 List!57287)) (FloatLiteralValue!17221 (text!60721 List!57287)) (BytesLiteralValue!8610 (value!265988 List!57287)) (CommentValue!17221 (value!265989 List!57287)) (StringLiteralValue!25832 (value!265990 List!57287)) (ErrorTokenValue!8610 (msg!8671 List!57287)) )
))
(declare-datatypes ((String!64924 0))(
  ( (String!64925 (value!265991 String)) )
))
(declare-datatypes ((Regex!13533 0))(
  ( (ElementMatch!13533 (c!846108 C!27316)) (Concat!22144 (regOne!27578 Regex!13533) (regTwo!27578 Regex!13533)) (EmptyExpr!13533) (Star!13533 (reg!13862 Regex!13533)) (EmptyLang!13533) (Union!13533 (regOne!27579 Regex!13533) (regTwo!27579 Regex!13533)) )
))
(declare-datatypes ((TokenValueInjection!16528 0))(
  ( (TokenValueInjection!16529 (toValue!11251 Int) (toChars!11110 Int)) )
))
(declare-datatypes ((Rule!16400 0))(
  ( (Rule!16401 (regex!8300 Regex!13533) (tag!9164 String!64924) (isSeparator!8300 Bool) (transformation!8300 TokenValueInjection!16528)) )
))
(declare-datatypes ((List!57288 0))(
  ( (Nil!57164) (Cons!57164 (h!63612 Rule!16400) (t!367854 List!57288)) )
))
(declare-fun rulesArg!259 () List!57288)

(declare-fun totalInput!464 () BalanceConc!29534)

(declare-datatypes ((Token!15100 0))(
  ( (Token!15101 (value!265992 TokenValue!8610) (rule!11516 Rule!16400) (size!37922 Int) (originalCharacters!8581 List!57286)) )
))
(declare-datatypes ((tuple2!61718 0))(
  ( (tuple2!61719 (_1!34162 Token!15100) (_2!34162 BalanceConc!29534)) )
))
(declare-datatypes ((Option!14270 0))(
  ( (None!14269) (Some!14269 (v!50254 tuple2!61718)) )
))
(declare-fun lt!2045244 () Option!14270)

(declare-datatypes ((LexerInterface!7892 0))(
  ( (LexerInterfaceExt!7889 (__x!34514 Int)) (Lexer!7890) )
))
(declare-fun thiss!15247 () LexerInterface!7892)

(declare-fun maxPrefixZipperSequenceV2!631 (LexerInterface!7892 List!57288 BalanceConc!29534 BalanceConc!29534) Option!14270)

(assert (=> b!4955630 (= lt!2045244 (maxPrefixZipperSequenceV2!631 thiss!15247 (t!367854 rulesArg!259) input!1342 totalInput!464))))

(declare-fun lt!2045241 () Option!14270)

(declare-fun maxPrefixOneRuleZipperSequenceV2!284 (LexerInterface!7892 Rule!16400 BalanceConc!29534 BalanceConc!29534) Option!14270)

(assert (=> b!4955630 (= lt!2045241 (maxPrefixOneRuleZipperSequenceV2!284 thiss!15247 (h!63612 rulesArg!259) input!1342 totalInput!464))))

(declare-fun b!4955631 () Bool)

(declare-fun res!2114291 () Bool)

(declare-fun e!3096577 () Bool)

(assert (=> b!4955631 (=> (not res!2114291) (not e!3096577))))

(declare-fun rulesValidInductive!3203 (LexerInterface!7892 List!57288) Bool)

(assert (=> b!4955631 (= res!2114291 (rulesValidInductive!3203 thiss!15247 rulesArg!259))))

(declare-fun e!3096576 () Bool)

(assert (=> b!4955632 (= e!3096576 (and tp!1389624 tp!1389620))))

(declare-fun res!2114295 () Bool)

(assert (=> start!522382 (=> (not res!2114295) (not e!3096577))))

(get-info :version)

(assert (=> start!522382 (= res!2114295 ((_ is Lexer!7890) thiss!15247))))

(assert (=> start!522382 e!3096577))

(assert (=> start!522382 true))

(declare-fun e!3096571 () Bool)

(assert (=> start!522382 e!3096571))

(declare-fun inv!74564 (BalanceConc!29534) Bool)

(assert (=> start!522382 (and (inv!74564 input!1342) e!3096578)))

(declare-fun e!3096575 () Bool)

(assert (=> start!522382 (and (inv!74564 totalInput!464) e!3096575)))

(declare-fun b!4955633 () Bool)

(declare-fun e!3096572 () Bool)

(assert (=> b!4955633 (= e!3096572 (not e!3096573))))

(declare-fun res!2114294 () Bool)

(assert (=> b!4955633 (=> res!2114294 e!3096573)))

(assert (=> b!4955633 (= res!2114294 (or (and ((_ is Cons!57164) rulesArg!259) ((_ is Nil!57164) (t!367854 rulesArg!259))) (not ((_ is Cons!57164) rulesArg!259))))))

(declare-fun lt!2045242 () List!57286)

(declare-fun isPrefix!5153 (List!57286 List!57286) Bool)

(assert (=> b!4955633 (isPrefix!5153 lt!2045242 lt!2045242)))

(declare-datatypes ((Unit!148057 0))(
  ( (Unit!148058) )
))
(declare-fun lt!2045243 () Unit!148057)

(declare-fun lemmaIsPrefixRefl!3477 (List!57286 List!57286) Unit!148057)

(assert (=> b!4955633 (= lt!2045243 (lemmaIsPrefixRefl!3477 lt!2045242 lt!2045242))))

(declare-fun b!4955634 () Bool)

(declare-fun e!3096574 () Bool)

(declare-fun tp!1389619 () Bool)

(assert (=> b!4955634 (= e!3096571 (and e!3096574 tp!1389619))))

(declare-fun b!4955635 () Bool)

(assert (=> b!4955635 (= e!3096577 e!3096572)))

(declare-fun res!2114293 () Bool)

(assert (=> b!4955635 (=> (not res!2114293) (not e!3096572))))

(declare-fun isSuffix!1099 (List!57286 List!57286) Bool)

(declare-fun list!18241 (BalanceConc!29534) List!57286)

(assert (=> b!4955635 (= res!2114293 (isSuffix!1099 lt!2045242 (list!18241 totalInput!464)))))

(assert (=> b!4955635 (= lt!2045242 (list!18241 input!1342))))

(declare-fun b!4955636 () Bool)

(declare-fun tp!1389623 () Bool)

(assert (=> b!4955636 (= e!3096575 (and (inv!74563 (c!846107 totalInput!464)) tp!1389623))))

(declare-fun b!4955637 () Bool)

(declare-fun res!2114292 () Bool)

(assert (=> b!4955637 (=> (not res!2114292) (not e!3096577))))

(declare-fun isEmpty!30740 (List!57288) Bool)

(assert (=> b!4955637 (= res!2114292 (not (isEmpty!30740 rulesArg!259)))))

(declare-fun tp!1389621 () Bool)

(declare-fun b!4955638 () Bool)

(declare-fun inv!74559 (String!64924) Bool)

(declare-fun inv!74565 (TokenValueInjection!16528) Bool)

(assert (=> b!4955638 (= e!3096574 (and tp!1389621 (inv!74559 (tag!9164 (h!63612 rulesArg!259))) (inv!74565 (transformation!8300 (h!63612 rulesArg!259))) e!3096576))))

(assert (= (and start!522382 res!2114295) b!4955631))

(assert (= (and b!4955631 res!2114291) b!4955637))

(assert (= (and b!4955637 res!2114292) b!4955635))

(assert (= (and b!4955635 res!2114293) b!4955633))

(assert (= (and b!4955633 (not res!2114294)) b!4955630))

(assert (= b!4955638 b!4955632))

(assert (= b!4955634 b!4955638))

(assert (= (and start!522382 ((_ is Cons!57164) rulesArg!259)) b!4955634))

(assert (= start!522382 b!4955629))

(assert (= start!522382 b!4955636))

(declare-fun m!5980246 () Bool)

(assert (=> b!4955637 m!5980246))

(declare-fun m!5980248 () Bool)

(assert (=> b!4955630 m!5980248))

(declare-fun m!5980250 () Bool)

(assert (=> b!4955630 m!5980250))

(declare-fun m!5980252 () Bool)

(assert (=> b!4955638 m!5980252))

(declare-fun m!5980254 () Bool)

(assert (=> b!4955638 m!5980254))

(declare-fun m!5980256 () Bool)

(assert (=> b!4955631 m!5980256))

(declare-fun m!5980258 () Bool)

(assert (=> b!4955635 m!5980258))

(assert (=> b!4955635 m!5980258))

(declare-fun m!5980260 () Bool)

(assert (=> b!4955635 m!5980260))

(declare-fun m!5980262 () Bool)

(assert (=> b!4955635 m!5980262))

(declare-fun m!5980264 () Bool)

(assert (=> start!522382 m!5980264))

(declare-fun m!5980266 () Bool)

(assert (=> start!522382 m!5980266))

(declare-fun m!5980268 () Bool)

(assert (=> b!4955629 m!5980268))

(declare-fun m!5980270 () Bool)

(assert (=> b!4955636 m!5980270))

(declare-fun m!5980272 () Bool)

(assert (=> b!4955633 m!5980272))

(declare-fun m!5980274 () Bool)

(assert (=> b!4955633 m!5980274))

(check-sat (not b_next!133005) (not b!4955629) (not b!4955630) (not b_next!133007) b_and!347067 (not b!4955635) (not b!4955638) (not b!4955634) (not b!4955636) (not b!4955637) (not b!4955633) (not start!522382) b_and!347069 (not b!4955631))
(check-sat b_and!347067 b_and!347069 (not b_next!133005) (not b_next!133007))
