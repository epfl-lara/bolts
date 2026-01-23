; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522056 () Bool)

(assert start!522056)

(declare-fun b!4953475 () Bool)

(declare-fun b_free!132059 () Bool)

(declare-fun b_next!132849 () Bool)

(assert (=> b!4953475 (= b_free!132059 (not b_next!132849))))

(declare-fun tp!1388693 () Bool)

(declare-fun b_and!346911 () Bool)

(assert (=> b!4953475 (= tp!1388693 b_and!346911)))

(declare-fun b_free!132061 () Bool)

(declare-fun b_next!132851 () Bool)

(assert (=> b!4953475 (= b_free!132061 (not b_next!132851))))

(declare-fun tp!1388692 () Bool)

(declare-fun b_and!346913 () Bool)

(assert (=> b!4953475 (= tp!1388692 b_and!346913)))

(declare-fun b!4953467 () Bool)

(declare-fun res!2113198 () Bool)

(declare-fun e!3094911 () Bool)

(assert (=> b!4953467 (=> (not res!2113198) (not e!3094911))))

(declare-datatypes ((LexerInterface!7862 0))(
  ( (LexerInterfaceExt!7859 (__x!34453 Int)) (Lexer!7860) )
))
(declare-fun thiss!15247 () LexerInterface!7862)

(declare-datatypes ((List!57196 0))(
  ( (Nil!57072) (Cons!57072 (h!63520 (_ BitVec 16)) (t!367762 List!57196)) )
))
(declare-datatypes ((TokenValue!8580 0))(
  ( (FloatLiteralValue!17160 (text!60505 List!57196)) (TokenValueExt!8579 (__x!34454 Int)) (Broken!42900 (value!265116 List!57196)) (Object!8703) (End!8580) (Def!8580) (Underscore!8580) (Match!8580) (Else!8580) (Error!8580) (Case!8580) (If!8580) (Extends!8580) (Abstract!8580) (Class!8580) (Val!8580) (DelimiterValue!17160 (del!8640 List!57196)) (KeywordValue!8586 (value!265117 List!57196)) (CommentValue!17160 (value!265118 List!57196)) (WhitespaceValue!17160 (value!265119 List!57196)) (IndentationValue!8580 (value!265120 List!57196)) (String!64773) (Int32!8580) (Broken!42901 (value!265121 List!57196)) (Boolean!8581) (Unit!147966) (OperatorValue!8583 (op!8640 List!57196)) (IdentifierValue!17160 (value!265122 List!57196)) (IdentifierValue!17161 (value!265123 List!57196)) (WhitespaceValue!17161 (value!265124 List!57196)) (True!17160) (False!17160) (Broken!42902 (value!265125 List!57196)) (Broken!42903 (value!265126 List!57196)) (True!17161) (RightBrace!8580) (RightBracket!8580) (Colon!8580) (Null!8580) (Comma!8580) (LeftBracket!8580) (False!17161) (LeftBrace!8580) (ImaginaryLiteralValue!8580 (text!60506 List!57196)) (StringLiteralValue!25740 (value!265127 List!57196)) (EOFValue!8580 (value!265128 List!57196)) (IdentValue!8580 (value!265129 List!57196)) (DelimiterValue!17161 (value!265130 List!57196)) (DedentValue!8580 (value!265131 List!57196)) (NewLineValue!8580 (value!265132 List!57196)) (IntegerValue!25740 (value!265133 (_ BitVec 32)) (text!60507 List!57196)) (IntegerValue!25741 (value!265134 Int) (text!60508 List!57196)) (Times!8580) (Or!8580) (Equal!8580) (Minus!8580) (Broken!42904 (value!265135 List!57196)) (And!8580) (Div!8580) (LessEqual!8580) (Mod!8580) (Concat!22083) (Not!8580) (Plus!8580) (SpaceValue!8580 (value!265136 List!57196)) (IntegerValue!25742 (value!265137 Int) (text!60509 List!57196)) (StringLiteralValue!25741 (text!60510 List!57196)) (FloatLiteralValue!17161 (text!60511 List!57196)) (BytesLiteralValue!8580 (value!265138 List!57196)) (CommentValue!17161 (value!265139 List!57196)) (StringLiteralValue!25742 (value!265140 List!57196)) (ErrorTokenValue!8580 (msg!8641 List!57196)) )
))
(declare-datatypes ((C!27256 0))(
  ( (C!27257 (val!22994 Int)) )
))
(declare-datatypes ((List!57197 0))(
  ( (Nil!57073) (Cons!57073 (h!63521 C!27256) (t!367763 List!57197)) )
))
(declare-datatypes ((IArray!30105 0))(
  ( (IArray!30106 (innerList!15110 List!57197)) )
))
(declare-datatypes ((Regex!13503 0))(
  ( (ElementMatch!13503 (c!845941 C!27256)) (Concat!22084 (regOne!27518 Regex!13503) (regTwo!27518 Regex!13503)) (EmptyExpr!13503) (Star!13503 (reg!13832 Regex!13503)) (EmptyLang!13503) (Union!13503 (regOne!27519 Regex!13503) (regTwo!27519 Regex!13503)) )
))
(declare-datatypes ((String!64774 0))(
  ( (String!64775 (value!265141 String)) )
))
(declare-datatypes ((Conc!15022 0))(
  ( (Node!15022 (left!41639 Conc!15022) (right!41969 Conc!15022) (csize!30274 Int) (cheight!15233 Int)) (Leaf!24982 (xs!18348 IArray!30105) (csize!30275 Int)) (Empty!15022) )
))
(declare-datatypes ((BalanceConc!29474 0))(
  ( (BalanceConc!29475 (c!845942 Conc!15022)) )
))
(declare-datatypes ((TokenValueInjection!16468 0))(
  ( (TokenValueInjection!16469 (toValue!11221 Int) (toChars!11080 Int)) )
))
(declare-datatypes ((Rule!16340 0))(
  ( (Rule!16341 (regex!8270 Regex!13503) (tag!9134 String!64774) (isSeparator!8270 Bool) (transformation!8270 TokenValueInjection!16468)) )
))
(declare-datatypes ((List!57198 0))(
  ( (Nil!57074) (Cons!57074 (h!63522 Rule!16340) (t!367764 List!57198)) )
))
(declare-fun rulesArg!259 () List!57198)

(declare-fun rulesValidInductive!3173 (LexerInterface!7862 List!57198) Bool)

(assert (=> b!4953467 (= res!2113198 (rulesValidInductive!3173 thiss!15247 rulesArg!259))))

(declare-fun b!4953468 () Bool)

(declare-fun res!2113201 () Bool)

(assert (=> b!4953468 (=> (not res!2113201) (not e!3094911))))

(declare-fun isEmpty!30690 (List!57198) Bool)

(assert (=> b!4953468 (= res!2113201 (not (isEmpty!30690 rulesArg!259)))))

(declare-fun e!3094910 () Bool)

(declare-fun e!3094906 () Bool)

(declare-fun b!4953469 () Bool)

(declare-fun tp!1388691 () Bool)

(declare-fun inv!74398 (String!64774) Bool)

(declare-fun inv!74402 (TokenValueInjection!16468) Bool)

(assert (=> b!4953469 (= e!3094910 (and tp!1388691 (inv!74398 (tag!9134 (h!63522 rulesArg!259))) (inv!74402 (transformation!8270 (h!63522 rulesArg!259))) e!3094906))))

(declare-fun res!2113200 () Bool)

(assert (=> start!522056 (=> (not res!2113200) (not e!3094911))))

(get-info :version)

(assert (=> start!522056 (= res!2113200 ((_ is Lexer!7860) thiss!15247))))

(assert (=> start!522056 e!3094911))

(assert (=> start!522056 true))

(declare-fun e!3094908 () Bool)

(assert (=> start!522056 e!3094908))

(declare-fun input!1342 () BalanceConc!29474)

(declare-fun e!3094903 () Bool)

(declare-fun inv!74403 (BalanceConc!29474) Bool)

(assert (=> start!522056 (and (inv!74403 input!1342) e!3094903)))

(declare-fun totalInput!464 () BalanceConc!29474)

(declare-fun e!3094907 () Bool)

(assert (=> start!522056 (and (inv!74403 totalInput!464) e!3094907)))

(declare-fun b!4953470 () Bool)

(declare-fun tp!1388690 () Bool)

(assert (=> b!4953470 (= e!3094908 (and e!3094910 tp!1388690))))

(declare-fun b!4953471 () Bool)

(declare-fun e!3094904 () Bool)

(declare-fun e!3094909 () Bool)

(assert (=> b!4953471 (= e!3094904 (not e!3094909))))

(declare-fun res!2113202 () Bool)

(assert (=> b!4953471 (=> res!2113202 e!3094909)))

(assert (=> b!4953471 (= res!2113202 (or (not ((_ is Cons!57074) rulesArg!259)) (not ((_ is Nil!57074) (t!367764 rulesArg!259)))))))

(declare-fun lt!2044325 () List!57197)

(declare-fun isPrefix!5123 (List!57197 List!57197) Bool)

(assert (=> b!4953471 (isPrefix!5123 lt!2044325 lt!2044325)))

(declare-datatypes ((Unit!147967 0))(
  ( (Unit!147968) )
))
(declare-fun lt!2044324 () Unit!147967)

(declare-fun lemmaIsPrefixRefl!3447 (List!57197 List!57197) Unit!147967)

(assert (=> b!4953471 (= lt!2044324 (lemmaIsPrefixRefl!3447 lt!2044325 lt!2044325))))

(declare-fun b!4953472 () Bool)

(assert (=> b!4953472 (= e!3094911 e!3094904)))

(declare-fun res!2113199 () Bool)

(assert (=> b!4953472 (=> (not res!2113199) (not e!3094904))))

(declare-fun isSuffix!1069 (List!57197 List!57197) Bool)

(declare-fun list!18202 (BalanceConc!29474) List!57197)

(assert (=> b!4953472 (= res!2113199 (isSuffix!1069 lt!2044325 (list!18202 totalInput!464)))))

(assert (=> b!4953472 (= lt!2044325 (list!18202 input!1342))))

(declare-fun b!4953473 () Bool)

(assert (=> b!4953473 (= e!3094909 true)))

(declare-fun lt!2044323 () Bool)

(declare-fun ruleValid!3763 (LexerInterface!7862 Rule!16340) Bool)

(assert (=> b!4953473 (= lt!2044323 (ruleValid!3763 thiss!15247 (h!63522 rulesArg!259)))))

(declare-fun b!4953474 () Bool)

(declare-fun tp!1388689 () Bool)

(declare-fun inv!74404 (Conc!15022) Bool)

(assert (=> b!4953474 (= e!3094907 (and (inv!74404 (c!845942 totalInput!464)) tp!1388689))))

(assert (=> b!4953475 (= e!3094906 (and tp!1388693 tp!1388692))))

(declare-fun b!4953476 () Bool)

(declare-fun tp!1388694 () Bool)

(assert (=> b!4953476 (= e!3094903 (and (inv!74404 (c!845942 input!1342)) tp!1388694))))

(assert (= (and start!522056 res!2113200) b!4953467))

(assert (= (and b!4953467 res!2113198) b!4953468))

(assert (= (and b!4953468 res!2113201) b!4953472))

(assert (= (and b!4953472 res!2113199) b!4953471))

(assert (= (and b!4953471 (not res!2113202)) b!4953473))

(assert (= b!4953469 b!4953475))

(assert (= b!4953470 b!4953469))

(assert (= (and start!522056 ((_ is Cons!57074) rulesArg!259)) b!4953470))

(assert (= start!522056 b!4953476))

(assert (= start!522056 b!4953474))

(declare-fun m!5978172 () Bool)

(assert (=> b!4953472 m!5978172))

(assert (=> b!4953472 m!5978172))

(declare-fun m!5978174 () Bool)

(assert (=> b!4953472 m!5978174))

(declare-fun m!5978176 () Bool)

(assert (=> b!4953472 m!5978176))

(declare-fun m!5978178 () Bool)

(assert (=> b!4953474 m!5978178))

(declare-fun m!5978180 () Bool)

(assert (=> b!4953471 m!5978180))

(declare-fun m!5978182 () Bool)

(assert (=> b!4953471 m!5978182))

(declare-fun m!5978184 () Bool)

(assert (=> b!4953467 m!5978184))

(declare-fun m!5978186 () Bool)

(assert (=> b!4953469 m!5978186))

(declare-fun m!5978188 () Bool)

(assert (=> b!4953469 m!5978188))

(declare-fun m!5978190 () Bool)

(assert (=> b!4953476 m!5978190))

(declare-fun m!5978192 () Bool)

(assert (=> start!522056 m!5978192))

(declare-fun m!5978194 () Bool)

(assert (=> start!522056 m!5978194))

(declare-fun m!5978196 () Bool)

(assert (=> b!4953473 m!5978196))

(declare-fun m!5978198 () Bool)

(assert (=> b!4953468 m!5978198))

(check-sat b_and!346911 (not b!4953474) (not start!522056) (not b!4953467) (not b!4953470) (not b!4953472) (not b!4953476) (not b_next!132851) b_and!346913 (not b_next!132849) (not b!4953469) (not b!4953468) (not b!4953473) (not b!4953471))
(check-sat b_and!346911 b_and!346913 (not b_next!132849) (not b_next!132851))
