; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!513580 () Bool)

(assert start!513580)

(declare-fun b!4901732 () Bool)

(declare-fun b_free!131747 () Bool)

(declare-fun b_next!132537 () Bool)

(assert (=> b!4901732 (= b_free!131747 (not b_next!132537))))

(declare-fun tp!1379172 () Bool)

(declare-fun b_and!346139 () Bool)

(assert (=> b!4901732 (= tp!1379172 b_and!346139)))

(declare-fun b_free!131749 () Bool)

(declare-fun b_next!132539 () Bool)

(assert (=> b!4901732 (= b_free!131749 (not b_next!132539))))

(declare-fun tp!1379175 () Bool)

(declare-fun b_and!346141 () Bool)

(assert (=> b!4901732 (= tp!1379175 b_and!346141)))

(declare-fun res!2093670 () Bool)

(declare-fun e!3063991 () Bool)

(assert (=> start!513580 (=> (not res!2093670) (not e!3063991))))

(declare-datatypes ((LexerInterface!7786 0))(
  ( (LexerInterfaceExt!7783 (__x!34301 Int)) (Lexer!7784) )
))
(declare-fun thiss!15943 () LexerInterface!7786)

(get-info :version)

(assert (=> start!513580 (= res!2093670 ((_ is Lexer!7784) thiss!15943))))

(assert (=> start!513580 e!3063991))

(assert (=> start!513580 true))

(declare-fun e!3063989 () Bool)

(assert (=> start!513580 e!3063989))

(declare-datatypes ((C!26736 0))(
  ( (C!26737 (val!22702 Int)) )
))
(declare-datatypes ((List!56586 0))(
  ( (Nil!56462) (Cons!56462 (h!62910 C!26736) (t!366678 List!56586)) )
))
(declare-datatypes ((IArray!29585 0))(
  ( (IArray!29586 (innerList!14850 List!56586)) )
))
(declare-datatypes ((Conc!14762 0))(
  ( (Node!14762 (left!41033 Conc!14762) (right!41363 Conc!14762) (csize!29754 Int) (cheight!14973 Int)) (Leaf!24576 (xs!18078 IArray!29585) (csize!29755 Int)) (Empty!14762) )
))
(declare-datatypes ((BalanceConc!28954 0))(
  ( (BalanceConc!28955 (c!833139 Conc!14762)) )
))
(declare-fun input!1509 () BalanceConc!28954)

(declare-fun e!3063990 () Bool)

(declare-fun inv!72804 (BalanceConc!28954) Bool)

(assert (=> start!513580 (and (inv!72804 input!1509) e!3063990)))

(declare-fun e!3063992 () Bool)

(assert (=> b!4901732 (= e!3063992 (and tp!1379172 tp!1379175))))

(declare-fun b!4901733 () Bool)

(declare-fun lt!2009975 () Bool)

(declare-fun lt!2009974 () Bool)

(assert (=> b!4901733 (= e!3063991 (and (= lt!2009975 lt!2009974) lt!2009975 (not lt!2009974)))))

(declare-datatypes ((Regex!13269 0))(
  ( (ElementMatch!13269 (c!833140 C!26736)) (Concat!21773 (regOne!27050 Regex!13269) (regTwo!27050 Regex!13269)) (EmptyExpr!13269) (Star!13269 (reg!13598 Regex!13269)) (EmptyLang!13269) (Union!13269 (regOne!27051 Regex!13269) (regTwo!27051 Regex!13269)) )
))
(declare-datatypes ((String!63961 0))(
  ( (String!63962 (value!262647 String)) )
))
(declare-datatypes ((List!56587 0))(
  ( (Nil!56463) (Cons!56463 (h!62911 (_ BitVec 16)) (t!366679 List!56587)) )
))
(declare-datatypes ((TokenValue!8504 0))(
  ( (FloatLiteralValue!17008 (text!59973 List!56587)) (TokenValueExt!8503 (__x!34302 Int)) (Broken!42520 (value!262648 List!56587)) (Object!8627) (End!8504) (Def!8504) (Underscore!8504) (Match!8504) (Else!8504) (Error!8504) (Case!8504) (If!8504) (Extends!8504) (Abstract!8504) (Class!8504) (Val!8504) (DelimiterValue!17008 (del!8564 List!56587)) (KeywordValue!8510 (value!262649 List!56587)) (CommentValue!17008 (value!262650 List!56587)) (WhitespaceValue!17008 (value!262651 List!56587)) (IndentationValue!8504 (value!262652 List!56587)) (String!63963) (Int32!8504) (Broken!42521 (value!262653 List!56587)) (Boolean!8505) (Unit!146560) (OperatorValue!8507 (op!8564 List!56587)) (IdentifierValue!17008 (value!262654 List!56587)) (IdentifierValue!17009 (value!262655 List!56587)) (WhitespaceValue!17009 (value!262656 List!56587)) (True!17008) (False!17008) (Broken!42522 (value!262657 List!56587)) (Broken!42523 (value!262658 List!56587)) (True!17009) (RightBrace!8504) (RightBracket!8504) (Colon!8504) (Null!8504) (Comma!8504) (LeftBracket!8504) (False!17009) (LeftBrace!8504) (ImaginaryLiteralValue!8504 (text!59974 List!56587)) (StringLiteralValue!25512 (value!262659 List!56587)) (EOFValue!8504 (value!262660 List!56587)) (IdentValue!8504 (value!262661 List!56587)) (DelimiterValue!17009 (value!262662 List!56587)) (DedentValue!8504 (value!262663 List!56587)) (NewLineValue!8504 (value!262664 List!56587)) (IntegerValue!25512 (value!262665 (_ BitVec 32)) (text!59975 List!56587)) (IntegerValue!25513 (value!262666 Int) (text!59976 List!56587)) (Times!8504) (Or!8504) (Equal!8504) (Minus!8504) (Broken!42524 (value!262667 List!56587)) (And!8504) (Div!8504) (LessEqual!8504) (Mod!8504) (Concat!21774) (Not!8504) (Plus!8504) (SpaceValue!8504 (value!262668 List!56587)) (IntegerValue!25514 (value!262669 Int) (text!59977 List!56587)) (StringLiteralValue!25513 (text!59978 List!56587)) (FloatLiteralValue!17009 (text!59979 List!56587)) (BytesLiteralValue!8504 (value!262670 List!56587)) (CommentValue!17009 (value!262671 List!56587)) (StringLiteralValue!25514 (value!262672 List!56587)) (ErrorTokenValue!8504 (msg!8565 List!56587)) )
))
(declare-datatypes ((TokenValueInjection!16316 0))(
  ( (TokenValueInjection!16317 (toValue!11105 Int) (toChars!10964 Int)) )
))
(declare-datatypes ((Rule!16188 0))(
  ( (Rule!16189 (regex!8194 Regex!13269) (tag!9058 String!63961) (isSeparator!8194 Bool) (transformation!8194 TokenValueInjection!16316)) )
))
(declare-fun rule!164 () Rule!16188)

(declare-datatypes ((Token!14940 0))(
  ( (Token!14941 (value!262673 TokenValue!8504) (rule!11402 Rule!16188) (size!37184 Int) (originalCharacters!8501 List!56586)) )
))
(declare-datatypes ((tuple2!60544 0))(
  ( (tuple2!60545 (_1!33575 Token!14940) (_2!33575 List!56586)) )
))
(declare-datatypes ((Option!14050 0))(
  ( (None!14049) (Some!14049 (v!50011 tuple2!60544)) )
))
(declare-fun isDefined!11061 (Option!14050) Bool)

(declare-fun maxPrefixOneRule!3543 (LexerInterface!7786 Rule!16188 List!56586) Option!14050)

(declare-fun list!17764 (BalanceConc!28954) List!56586)

(assert (=> b!4901733 (= lt!2009974 (isDefined!11061 (maxPrefixOneRule!3543 thiss!15943 rule!164 (list!17764 input!1509))))))

(assert (=> b!4901733 (= lt!2009975 false)))

(declare-fun b!4901734 () Bool)

(declare-fun res!2093668 () Bool)

(assert (=> b!4901734 (=> (not res!2093668) (not e!3063991))))

(declare-fun ruleValid!3691 (LexerInterface!7786 Rule!16188) Bool)

(assert (=> b!4901734 (= res!2093668 (ruleValid!3691 thiss!15943 rule!164))))

(declare-fun b!4901735 () Bool)

(declare-fun tp!1379174 () Bool)

(declare-fun inv!72800 (String!63961) Bool)

(declare-fun inv!72805 (TokenValueInjection!16316) Bool)

(assert (=> b!4901735 (= e!3063989 (and tp!1379174 (inv!72800 (tag!9058 rule!164)) (inv!72805 (transformation!8194 rule!164)) e!3063992))))

(declare-fun b!4901736 () Bool)

(declare-fun tp!1379173 () Bool)

(declare-fun inv!72806 (Conc!14762) Bool)

(assert (=> b!4901736 (= e!3063990 (and (inv!72806 (c!833139 input!1509)) tp!1379173))))

(declare-fun b!4901737 () Bool)

(declare-fun res!2093669 () Bool)

(assert (=> b!4901737 (=> (not res!2093669) (not e!3063991))))

(declare-fun isEmpty!30328 (BalanceConc!28954) Bool)

(declare-datatypes ((tuple2!60546 0))(
  ( (tuple2!60547 (_1!33576 BalanceConc!28954) (_2!33576 BalanceConc!28954)) )
))
(declare-fun findLongestMatchWithZipperSequence!282 (Regex!13269 BalanceConc!28954) tuple2!60546)

(assert (=> b!4901737 (= res!2093669 (isEmpty!30328 (_1!33576 (findLongestMatchWithZipperSequence!282 (regex!8194 rule!164) input!1509))))))

(assert (= (and start!513580 res!2093670) b!4901734))

(assert (= (and b!4901734 res!2093668) b!4901737))

(assert (= (and b!4901737 res!2093669) b!4901733))

(assert (= b!4901735 b!4901732))

(assert (= start!513580 b!4901735))

(assert (= start!513580 b!4901736))

(declare-fun m!5910374 () Bool)

(assert (=> b!4901735 m!5910374))

(declare-fun m!5910376 () Bool)

(assert (=> b!4901735 m!5910376))

(declare-fun m!5910378 () Bool)

(assert (=> b!4901737 m!5910378))

(declare-fun m!5910380 () Bool)

(assert (=> b!4901737 m!5910380))

(declare-fun m!5910382 () Bool)

(assert (=> start!513580 m!5910382))

(declare-fun m!5910384 () Bool)

(assert (=> b!4901734 m!5910384))

(declare-fun m!5910386 () Bool)

(assert (=> b!4901733 m!5910386))

(assert (=> b!4901733 m!5910386))

(declare-fun m!5910388 () Bool)

(assert (=> b!4901733 m!5910388))

(assert (=> b!4901733 m!5910388))

(declare-fun m!5910390 () Bool)

(assert (=> b!4901733 m!5910390))

(declare-fun m!5910392 () Bool)

(assert (=> b!4901736 m!5910392))

(check-sat (not b!4901733) (not b!4901734) b_and!346139 (not start!513580) b_and!346141 (not b!4901736) (not b_next!132537) (not b!4901737) (not b_next!132539) (not b!4901735))
(check-sat b_and!346141 b_and!346139 (not b_next!132539) (not b_next!132537))
