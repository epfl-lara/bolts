; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!513574 () Bool)

(assert start!513574)

(declare-fun b!4901683 () Bool)

(declare-fun b_free!131735 () Bool)

(declare-fun b_next!132525 () Bool)

(assert (=> b!4901683 (= b_free!131735 (not b_next!132525))))

(declare-fun tp!1379137 () Bool)

(declare-fun b_and!346127 () Bool)

(assert (=> b!4901683 (= tp!1379137 b_and!346127)))

(declare-fun b_free!131737 () Bool)

(declare-fun b_next!132527 () Bool)

(assert (=> b!4901683 (= b_free!131737 (not b_next!132527))))

(declare-fun tp!1379139 () Bool)

(declare-fun b_and!346129 () Bool)

(assert (=> b!4901683 (= tp!1379139 b_and!346129)))

(declare-fun b!4901678 () Bool)

(declare-fun e!3063947 () Bool)

(assert (=> b!4901678 (= e!3063947 false)))

(declare-datatypes ((C!26730 0))(
  ( (C!26731 (val!22699 Int)) )
))
(declare-datatypes ((List!56580 0))(
  ( (Nil!56456) (Cons!56456 (h!62904 C!26730) (t!366672 List!56580)) )
))
(declare-datatypes ((IArray!29579 0))(
  ( (IArray!29580 (innerList!14847 List!56580)) )
))
(declare-datatypes ((Conc!14759 0))(
  ( (Node!14759 (left!41029 Conc!14759) (right!41359 Conc!14759) (csize!29748 Int) (cheight!14970 Int)) (Leaf!24572 (xs!18075 IArray!29579) (csize!29749 Int)) (Empty!14759) )
))
(declare-datatypes ((BalanceConc!28948 0))(
  ( (BalanceConc!28949 (c!833133 Conc!14759)) )
))
(declare-fun input!1509 () BalanceConc!28948)

(declare-datatypes ((Regex!13266 0))(
  ( (ElementMatch!13266 (c!833134 C!26730)) (Concat!21767 (regOne!27044 Regex!13266) (regTwo!27044 Regex!13266)) (EmptyExpr!13266) (Star!13266 (reg!13595 Regex!13266)) (EmptyLang!13266) (Union!13266 (regOne!27045 Regex!13266) (regTwo!27045 Regex!13266)) )
))
(declare-datatypes ((String!63948 0))(
  ( (String!63949 (value!262563 String)) )
))
(declare-datatypes ((List!56581 0))(
  ( (Nil!56457) (Cons!56457 (h!62905 (_ BitVec 16)) (t!366673 List!56581)) )
))
(declare-datatypes ((TokenValue!8501 0))(
  ( (FloatLiteralValue!17002 (text!59952 List!56581)) (TokenValueExt!8500 (__x!34295 Int)) (Broken!42505 (value!262564 List!56581)) (Object!8624) (End!8501) (Def!8501) (Underscore!8501) (Match!8501) (Else!8501) (Error!8501) (Case!8501) (If!8501) (Extends!8501) (Abstract!8501) (Class!8501) (Val!8501) (DelimiterValue!17002 (del!8561 List!56581)) (KeywordValue!8507 (value!262565 List!56581)) (CommentValue!17002 (value!262566 List!56581)) (WhitespaceValue!17002 (value!262567 List!56581)) (IndentationValue!8501 (value!262568 List!56581)) (String!63950) (Int32!8501) (Broken!42506 (value!262569 List!56581)) (Boolean!8502) (Unit!146557) (OperatorValue!8504 (op!8561 List!56581)) (IdentifierValue!17002 (value!262570 List!56581)) (IdentifierValue!17003 (value!262571 List!56581)) (WhitespaceValue!17003 (value!262572 List!56581)) (True!17002) (False!17002) (Broken!42507 (value!262573 List!56581)) (Broken!42508 (value!262574 List!56581)) (True!17003) (RightBrace!8501) (RightBracket!8501) (Colon!8501) (Null!8501) (Comma!8501) (LeftBracket!8501) (False!17003) (LeftBrace!8501) (ImaginaryLiteralValue!8501 (text!59953 List!56581)) (StringLiteralValue!25503 (value!262575 List!56581)) (EOFValue!8501 (value!262576 List!56581)) (IdentValue!8501 (value!262577 List!56581)) (DelimiterValue!17003 (value!262578 List!56581)) (DedentValue!8501 (value!262579 List!56581)) (NewLineValue!8501 (value!262580 List!56581)) (IntegerValue!25503 (value!262581 (_ BitVec 32)) (text!59954 List!56581)) (IntegerValue!25504 (value!262582 Int) (text!59955 List!56581)) (Times!8501) (Or!8501) (Equal!8501) (Minus!8501) (Broken!42509 (value!262583 List!56581)) (And!8501) (Div!8501) (LessEqual!8501) (Mod!8501) (Concat!21768) (Not!8501) (Plus!8501) (SpaceValue!8501 (value!262584 List!56581)) (IntegerValue!25505 (value!262585 Int) (text!59956 List!56581)) (StringLiteralValue!25504 (text!59957 List!56581)) (FloatLiteralValue!17003 (text!59958 List!56581)) (BytesLiteralValue!8501 (value!262586 List!56581)) (CommentValue!17003 (value!262587 List!56581)) (StringLiteralValue!25505 (value!262588 List!56581)) (ErrorTokenValue!8501 (msg!8562 List!56581)) )
))
(declare-datatypes ((TokenValueInjection!16310 0))(
  ( (TokenValueInjection!16311 (toValue!11102 Int) (toChars!10961 Int)) )
))
(declare-datatypes ((Rule!16182 0))(
  ( (Rule!16183 (regex!8191 Regex!13266) (tag!9055 String!63948) (isSeparator!8191 Bool) (transformation!8191 TokenValueInjection!16310)) )
))
(declare-datatypes ((Token!14934 0))(
  ( (Token!14935 (value!262589 TokenValue!8501) (rule!11399 Rule!16182) (size!37181 Int) (originalCharacters!8498 List!56580)) )
))
(declare-datatypes ((tuple2!60532 0))(
  ( (tuple2!60533 (_1!33569 Token!14934) (_2!33569 List!56580)) )
))
(declare-datatypes ((Option!14047 0))(
  ( (None!14046) (Some!14046 (v!50008 tuple2!60532)) )
))
(declare-fun lt!2009960 () Option!14047)

(declare-fun rule!164 () Rule!16182)

(declare-datatypes ((LexerInterface!7783 0))(
  ( (LexerInterfaceExt!7780 (__x!34296 Int)) (Lexer!7781) )
))
(declare-fun thiss!15943 () LexerInterface!7783)

(declare-fun maxPrefixOneRule!3540 (LexerInterface!7783 Rule!16182 List!56580) Option!14047)

(declare-fun list!17761 (BalanceConc!28948) List!56580)

(assert (=> b!4901678 (= lt!2009960 (maxPrefixOneRule!3540 thiss!15943 rule!164 (list!17761 input!1509)))))

(declare-fun b!4901679 () Bool)

(declare-fun res!2093643 () Bool)

(assert (=> b!4901679 (=> (not res!2093643) (not e!3063947))))

(declare-fun ruleValid!3688 (LexerInterface!7783 Rule!16182) Bool)

(assert (=> b!4901679 (= res!2093643 (ruleValid!3688 thiss!15943 rule!164))))

(declare-fun b!4901680 () Bool)

(declare-fun e!3063943 () Bool)

(declare-fun tp!1379138 () Bool)

(declare-fun inv!72792 (Conc!14759) Bool)

(assert (=> b!4901680 (= e!3063943 (and (inv!72792 (c!833133 input!1509)) tp!1379138))))

(declare-fun b!4901681 () Bool)

(declare-fun tp!1379136 () Bool)

(declare-fun e!3063944 () Bool)

(declare-fun e!3063945 () Bool)

(declare-fun inv!72789 (String!63948) Bool)

(declare-fun inv!72793 (TokenValueInjection!16310) Bool)

(assert (=> b!4901681 (= e!3063945 (and tp!1379136 (inv!72789 (tag!9055 rule!164)) (inv!72793 (transformation!8191 rule!164)) e!3063944))))

(declare-fun b!4901682 () Bool)

(declare-fun res!2093642 () Bool)

(assert (=> b!4901682 (=> (not res!2093642) (not e!3063947))))

(declare-fun isEmpty!30325 (BalanceConc!28948) Bool)

(declare-datatypes ((tuple2!60534 0))(
  ( (tuple2!60535 (_1!33570 BalanceConc!28948) (_2!33570 BalanceConc!28948)) )
))
(declare-fun findLongestMatchWithZipperSequence!279 (Regex!13266 BalanceConc!28948) tuple2!60534)

(assert (=> b!4901682 (= res!2093642 (isEmpty!30325 (_1!33570 (findLongestMatchWithZipperSequence!279 (regex!8191 rule!164) input!1509))))))

(declare-fun res!2093641 () Bool)

(assert (=> start!513574 (=> (not res!2093641) (not e!3063947))))

(assert (=> start!513574 (= res!2093641 (is-Lexer!7781 thiss!15943))))

(assert (=> start!513574 e!3063947))

(assert (=> start!513574 true))

(assert (=> start!513574 e!3063945))

(declare-fun inv!72794 (BalanceConc!28948) Bool)

(assert (=> start!513574 (and (inv!72794 input!1509) e!3063943)))

(assert (=> b!4901683 (= e!3063944 (and tp!1379137 tp!1379139))))

(assert (= (and start!513574 res!2093641) b!4901679))

(assert (= (and b!4901679 res!2093643) b!4901682))

(assert (= (and b!4901682 res!2093642) b!4901678))

(assert (= b!4901681 b!4901683))

(assert (= start!513574 b!4901681))

(assert (= start!513574 b!4901680))

(declare-fun m!5910318 () Bool)

(assert (=> b!4901682 m!5910318))

(declare-fun m!5910320 () Bool)

(assert (=> b!4901682 m!5910320))

(declare-fun m!5910322 () Bool)

(assert (=> b!4901678 m!5910322))

(assert (=> b!4901678 m!5910322))

(declare-fun m!5910324 () Bool)

(assert (=> b!4901678 m!5910324))

(declare-fun m!5910326 () Bool)

(assert (=> start!513574 m!5910326))

(declare-fun m!5910328 () Bool)

(assert (=> b!4901680 m!5910328))

(declare-fun m!5910330 () Bool)

(assert (=> b!4901681 m!5910330))

(declare-fun m!5910332 () Bool)

(assert (=> b!4901681 m!5910332))

(declare-fun m!5910334 () Bool)

(assert (=> b!4901679 m!5910334))

(push 1)

(assert b_and!346127)

(assert (not start!513574))

(assert (not b!4901679))

(assert (not b!4901680))

(assert (not b!4901678))

(assert (not b_next!132527))

(assert (not b_next!132525))

(assert (not b!4901681))

(assert (not b!4901682))

(assert b_and!346129)

(check-sat)

(pop 1)

(push 1)

(assert b_and!346129)

(assert b_and!346127)

(assert (not b_next!132527))

(assert (not b_next!132525))

(check-sat)

(pop 1)

