; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!513570 () Bool)

(assert start!513570)

(declare-fun b!4901643 () Bool)

(declare-fun b_free!131727 () Bool)

(declare-fun b_next!132517 () Bool)

(assert (=> b!4901643 (= b_free!131727 (not b_next!132517))))

(declare-fun tp!1379115 () Bool)

(declare-fun b_and!346119 () Bool)

(assert (=> b!4901643 (= tp!1379115 b_and!346119)))

(declare-fun b_free!131729 () Bool)

(declare-fun b_next!132519 () Bool)

(assert (=> b!4901643 (= b_free!131729 (not b_next!132519))))

(declare-fun tp!1379114 () Bool)

(declare-fun b_and!346121 () Bool)

(assert (=> b!4901643 (= tp!1379114 b_and!346121)))

(declare-fun b!4901642 () Bool)

(declare-fun res!2093623 () Bool)

(declare-fun e!3063913 () Bool)

(assert (=> b!4901642 (=> (not res!2093623) (not e!3063913))))

(declare-datatypes ((C!26726 0))(
  ( (C!26727 (val!22697 Int)) )
))
(declare-datatypes ((Regex!13264 0))(
  ( (ElementMatch!13264 (c!833129 C!26726)) (Concat!21763 (regOne!27040 Regex!13264) (regTwo!27040 Regex!13264)) (EmptyExpr!13264) (Star!13264 (reg!13593 Regex!13264)) (EmptyLang!13264) (Union!13264 (regOne!27041 Regex!13264) (regTwo!27041 Regex!13264)) )
))
(declare-datatypes ((String!63938 0))(
  ( (String!63939 (value!262508 String)) )
))
(declare-datatypes ((List!56576 0))(
  ( (Nil!56452) (Cons!56452 (h!62900 (_ BitVec 16)) (t!366668 List!56576)) )
))
(declare-datatypes ((TokenValue!8499 0))(
  ( (FloatLiteralValue!16998 (text!59938 List!56576)) (TokenValueExt!8498 (__x!34291 Int)) (Broken!42495 (value!262509 List!56576)) (Object!8622) (End!8499) (Def!8499) (Underscore!8499) (Match!8499) (Else!8499) (Error!8499) (Case!8499) (If!8499) (Extends!8499) (Abstract!8499) (Class!8499) (Val!8499) (DelimiterValue!16998 (del!8559 List!56576)) (KeywordValue!8505 (value!262510 List!56576)) (CommentValue!16998 (value!262511 List!56576)) (WhitespaceValue!16998 (value!262512 List!56576)) (IndentationValue!8499 (value!262513 List!56576)) (String!63940) (Int32!8499) (Broken!42496 (value!262514 List!56576)) (Boolean!8500) (Unit!146555) (OperatorValue!8502 (op!8559 List!56576)) (IdentifierValue!16998 (value!262515 List!56576)) (IdentifierValue!16999 (value!262516 List!56576)) (WhitespaceValue!16999 (value!262517 List!56576)) (True!16998) (False!16998) (Broken!42497 (value!262518 List!56576)) (Broken!42498 (value!262519 List!56576)) (True!16999) (RightBrace!8499) (RightBracket!8499) (Colon!8499) (Null!8499) (Comma!8499) (LeftBracket!8499) (False!16999) (LeftBrace!8499) (ImaginaryLiteralValue!8499 (text!59939 List!56576)) (StringLiteralValue!25497 (value!262520 List!56576)) (EOFValue!8499 (value!262521 List!56576)) (IdentValue!8499 (value!262522 List!56576)) (DelimiterValue!16999 (value!262523 List!56576)) (DedentValue!8499 (value!262524 List!56576)) (NewLineValue!8499 (value!262525 List!56576)) (IntegerValue!25497 (value!262526 (_ BitVec 32)) (text!59940 List!56576)) (IntegerValue!25498 (value!262527 Int) (text!59941 List!56576)) (Times!8499) (Or!8499) (Equal!8499) (Minus!8499) (Broken!42499 (value!262528 List!56576)) (And!8499) (Div!8499) (LessEqual!8499) (Mod!8499) (Concat!21764) (Not!8499) (Plus!8499) (SpaceValue!8499 (value!262529 List!56576)) (IntegerValue!25499 (value!262530 Int) (text!59942 List!56576)) (StringLiteralValue!25498 (text!59943 List!56576)) (FloatLiteralValue!16999 (text!59944 List!56576)) (BytesLiteralValue!8499 (value!262531 List!56576)) (CommentValue!16999 (value!262532 List!56576)) (StringLiteralValue!25499 (value!262533 List!56576)) (ErrorTokenValue!8499 (msg!8560 List!56576)) )
))
(declare-datatypes ((List!56577 0))(
  ( (Nil!56453) (Cons!56453 (h!62901 C!26726) (t!366669 List!56577)) )
))
(declare-datatypes ((IArray!29575 0))(
  ( (IArray!29576 (innerList!14845 List!56577)) )
))
(declare-datatypes ((Conc!14757 0))(
  ( (Node!14757 (left!41026 Conc!14757) (right!41356 Conc!14757) (csize!29744 Int) (cheight!14968 Int)) (Leaf!24569 (xs!18073 IArray!29575) (csize!29745 Int)) (Empty!14757) )
))
(declare-datatypes ((BalanceConc!28944 0))(
  ( (BalanceConc!28945 (c!833130 Conc!14757)) )
))
(declare-datatypes ((TokenValueInjection!16306 0))(
  ( (TokenValueInjection!16307 (toValue!11100 Int) (toChars!10959 Int)) )
))
(declare-datatypes ((Rule!16178 0))(
  ( (Rule!16179 (regex!8189 Regex!13264) (tag!9053 String!63938) (isSeparator!8189 Bool) (transformation!8189 TokenValueInjection!16306)) )
))
(declare-fun rule!164 () Rule!16178)

(declare-fun input!1509 () BalanceConc!28944)

(declare-fun isEmpty!30323 (BalanceConc!28944) Bool)

(declare-datatypes ((tuple2!60528 0))(
  ( (tuple2!60529 (_1!33567 BalanceConc!28944) (_2!33567 BalanceConc!28944)) )
))
(declare-fun findLongestMatchWithZipperSequence!277 (Regex!13264 BalanceConc!28944) tuple2!60528)

(assert (=> b!4901642 (= res!2093623 (isEmpty!30323 (_1!33567 (findLongestMatchWithZipperSequence!277 (regex!8189 rule!164) input!1509))))))

(declare-fun e!3063915 () Bool)

(assert (=> b!4901643 (= e!3063915 (and tp!1379115 tp!1379114))))

(declare-fun b!4901644 () Bool)

(assert (=> b!4901644 (= e!3063913 false)))

(declare-fun lt!2009954 () List!56577)

(declare-fun list!17759 (BalanceConc!28944) List!56577)

(assert (=> b!4901644 (= lt!2009954 (list!17759 input!1509))))

(declare-fun b!4901645 () Bool)

(declare-fun e!3063914 () Bool)

(declare-fun tp!1379113 () Bool)

(declare-fun inv!72783 (Conc!14757) Bool)

(assert (=> b!4901645 (= e!3063914 (and (inv!72783 (c!833130 input!1509)) tp!1379113))))

(declare-fun res!2093624 () Bool)

(assert (=> start!513570 (=> (not res!2093624) (not e!3063913))))

(declare-datatypes ((LexerInterface!7781 0))(
  ( (LexerInterfaceExt!7778 (__x!34292 Int)) (Lexer!7779) )
))
(declare-fun thiss!15943 () LexerInterface!7781)

(assert (=> start!513570 (= res!2093624 (is-Lexer!7779 thiss!15943))))

(assert (=> start!513570 e!3063913))

(assert (=> start!513570 true))

(declare-fun e!3063916 () Bool)

(assert (=> start!513570 e!3063916))

(declare-fun inv!72784 (BalanceConc!28944) Bool)

(assert (=> start!513570 (and (inv!72784 input!1509) e!3063914)))

(declare-fun b!4901646 () Bool)

(declare-fun res!2093625 () Bool)

(assert (=> b!4901646 (=> (not res!2093625) (not e!3063913))))

(declare-fun ruleValid!3686 (LexerInterface!7781 Rule!16178) Bool)

(assert (=> b!4901646 (= res!2093625 (ruleValid!3686 thiss!15943 rule!164))))

(declare-fun tp!1379112 () Bool)

(declare-fun b!4901647 () Bool)

(declare-fun inv!72780 (String!63938) Bool)

(declare-fun inv!72785 (TokenValueInjection!16306) Bool)

(assert (=> b!4901647 (= e!3063916 (and tp!1379112 (inv!72780 (tag!9053 rule!164)) (inv!72785 (transformation!8189 rule!164)) e!3063915))))

(assert (= (and start!513570 res!2093624) b!4901646))

(assert (= (and b!4901646 res!2093625) b!4901642))

(assert (= (and b!4901642 res!2093623) b!4901644))

(assert (= b!4901647 b!4901643))

(assert (= start!513570 b!4901647))

(assert (= start!513570 b!4901645))

(declare-fun m!5910286 () Bool)

(assert (=> b!4901644 m!5910286))

(declare-fun m!5910288 () Bool)

(assert (=> b!4901646 m!5910288))

(declare-fun m!5910290 () Bool)

(assert (=> b!4901647 m!5910290))

(declare-fun m!5910292 () Bool)

(assert (=> b!4901647 m!5910292))

(declare-fun m!5910294 () Bool)

(assert (=> b!4901645 m!5910294))

(declare-fun m!5910296 () Bool)

(assert (=> b!4901642 m!5910296))

(declare-fun m!5910298 () Bool)

(assert (=> b!4901642 m!5910298))

(declare-fun m!5910300 () Bool)

(assert (=> start!513570 m!5910300))

(push 1)

(assert (not b!4901644))

(assert (not b_next!132519))

(assert (not b!4901645))

(assert (not b!4901646))

(assert (not start!513570))

(assert b_and!346119)

(assert b_and!346121)

(assert (not b!4901647))

(assert (not b_next!132517))

(assert (not b!4901642))

(check-sat)

(pop 1)

(push 1)

(assert b_and!346121)

(assert b_and!346119)

(assert (not b_next!132519))

(assert (not b_next!132517))

(check-sat)

(pop 1)

