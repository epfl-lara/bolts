; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!404638 () Bool)

(assert start!404638)

(declare-fun b!4230839 () Bool)

(declare-fun b_free!124951 () Bool)

(declare-fun b_next!125655 () Bool)

(assert (=> b!4230839 (= b_free!124951 (not b_next!125655))))

(declare-fun tp!1295950 () Bool)

(declare-fun b_and!334261 () Bool)

(assert (=> b!4230839 (= tp!1295950 b_and!334261)))

(declare-fun b_free!124953 () Bool)

(declare-fun b_next!125657 () Bool)

(assert (=> b!4230839 (= b_free!124953 (not b_next!125657))))

(declare-fun tp!1295947 () Bool)

(declare-fun b_and!334263 () Bool)

(assert (=> b!4230839 (= tp!1295947 b_and!334263)))

(declare-fun res!1739864 () Bool)

(declare-fun e!2627072 () Bool)

(assert (=> start!404638 (=> (not res!1739864) (not e!2627072))))

(declare-datatypes ((LexerInterface!7477 0))(
  ( (LexerInterfaceExt!7474 (__x!28447 Int)) (Lexer!7475) )
))
(declare-fun thiss!26814 () LexerInterface!7477)

(get-info :version)

(assert (=> start!404638 (= res!1739864 ((_ is Lexer!7475) thiss!26814))))

(assert (=> start!404638 e!2627072))

(assert (=> start!404638 true))

(declare-fun e!2627069 () Bool)

(assert (=> start!404638 e!2627069))

(declare-fun e!2627070 () Bool)

(assert (=> start!404638 e!2627070))

(declare-fun e!2627071 () Bool)

(assert (=> start!404638 e!2627071))

(declare-fun b!4230837 () Bool)

(declare-fun tp_is_empty!22509 () Bool)

(declare-fun tp!1295949 () Bool)

(assert (=> b!4230837 (= e!2627069 (and tp_is_empty!22509 tp!1295949))))

(declare-fun b!4230838 () Bool)

(declare-fun tp!1295946 () Bool)

(assert (=> b!4230838 (= e!2627070 (and tp_is_empty!22509 tp!1295946))))

(declare-fun e!2627073 () Bool)

(assert (=> b!4230839 (= e!2627073 (and tp!1295950 tp!1295947))))

(declare-fun b!4230840 () Bool)

(declare-fun tp!1295948 () Bool)

(declare-datatypes ((List!46828 0))(
  ( (Nil!46704) (Cons!46704 (h!52124 (_ BitVec 16)) (t!349499 List!46828)) )
))
(declare-datatypes ((TokenValue!8112 0))(
  ( (FloatLiteralValue!16224 (text!57229 List!46828)) (TokenValueExt!8111 (__x!28448 Int)) (Broken!40560 (value!245108 List!46828)) (Object!8235) (End!8112) (Def!8112) (Underscore!8112) (Match!8112) (Else!8112) (Error!8112) (Case!8112) (If!8112) (Extends!8112) (Abstract!8112) (Class!8112) (Val!8112) (DelimiterValue!16224 (del!8172 List!46828)) (KeywordValue!8118 (value!245109 List!46828)) (CommentValue!16224 (value!245110 List!46828)) (WhitespaceValue!16224 (value!245111 List!46828)) (IndentationValue!8112 (value!245112 List!46828)) (String!54433) (Int32!8112) (Broken!40561 (value!245113 List!46828)) (Boolean!8113) (Unit!65832) (OperatorValue!8115 (op!8172 List!46828)) (IdentifierValue!16224 (value!245114 List!46828)) (IdentifierValue!16225 (value!245115 List!46828)) (WhitespaceValue!16225 (value!245116 List!46828)) (True!16224) (False!16224) (Broken!40562 (value!245117 List!46828)) (Broken!40563 (value!245118 List!46828)) (True!16225) (RightBrace!8112) (RightBracket!8112) (Colon!8112) (Null!8112) (Comma!8112) (LeftBracket!8112) (False!16225) (LeftBrace!8112) (ImaginaryLiteralValue!8112 (text!57230 List!46828)) (StringLiteralValue!24336 (value!245119 List!46828)) (EOFValue!8112 (value!245120 List!46828)) (IdentValue!8112 (value!245121 List!46828)) (DelimiterValue!16225 (value!245122 List!46828)) (DedentValue!8112 (value!245123 List!46828)) (NewLineValue!8112 (value!245124 List!46828)) (IntegerValue!24336 (value!245125 (_ BitVec 32)) (text!57231 List!46828)) (IntegerValue!24337 (value!245126 Int) (text!57232 List!46828)) (Times!8112) (Or!8112) (Equal!8112) (Minus!8112) (Broken!40564 (value!245127 List!46828)) (And!8112) (Div!8112) (LessEqual!8112) (Mod!8112) (Concat!20899) (Not!8112) (Plus!8112) (SpaceValue!8112 (value!245128 List!46828)) (IntegerValue!24338 (value!245129 Int) (text!57233 List!46828)) (StringLiteralValue!24337 (text!57234 List!46828)) (FloatLiteralValue!16225 (text!57235 List!46828)) (BytesLiteralValue!8112 (value!245130 List!46828)) (CommentValue!16225 (value!245131 List!46828)) (StringLiteralValue!24338 (value!245132 List!46828)) (ErrorTokenValue!8112 (msg!8173 List!46828)) )
))
(declare-datatypes ((C!25772 0))(
  ( (C!25773 (val!15048 Int)) )
))
(declare-datatypes ((Regex!12787 0))(
  ( (ElementMatch!12787 (c!719142 C!25772)) (Concat!20900 (regOne!26086 Regex!12787) (regTwo!26086 Regex!12787)) (EmptyExpr!12787) (Star!12787 (reg!13116 Regex!12787)) (EmptyLang!12787) (Union!12787 (regOne!26087 Regex!12787) (regTwo!26087 Regex!12787)) )
))
(declare-datatypes ((String!54434 0))(
  ( (String!54435 (value!245133 String)) )
))
(declare-datatypes ((List!46829 0))(
  ( (Nil!46705) (Cons!46705 (h!52125 C!25772) (t!349500 List!46829)) )
))
(declare-datatypes ((IArray!28191 0))(
  ( (IArray!28192 (innerList!14153 List!46829)) )
))
(declare-datatypes ((Conc!14093 0))(
  ( (Node!14093 (left!34742 Conc!14093) (right!35072 Conc!14093) (csize!28416 Int) (cheight!14304 Int)) (Leaf!21779 (xs!17399 IArray!28191) (csize!28417 Int)) (Empty!14093) )
))
(declare-datatypes ((BalanceConc!27780 0))(
  ( (BalanceConc!27781 (c!719143 Conc!14093)) )
))
(declare-datatypes ((TokenValueInjection!15652 0))(
  ( (TokenValueInjection!15653 (toValue!10614 Int) (toChars!10473 Int)) )
))
(declare-datatypes ((Rule!15564 0))(
  ( (Rule!15565 (regex!7882 Regex!12787) (tag!8746 String!54434) (isSeparator!7882 Bool) (transformation!7882 TokenValueInjection!15652)) )
))
(declare-fun r!4353 () Rule!15564)

(declare-fun inv!61401 (String!54434) Bool)

(declare-fun inv!61403 (TokenValueInjection!15652) Bool)

(assert (=> b!4230840 (= e!2627071 (and tp!1295948 (inv!61401 (tag!8746 r!4353)) (inv!61403 (transformation!7882 r!4353)) e!2627073))))

(declare-fun b!4230841 () Bool)

(declare-fun res!1739863 () Bool)

(assert (=> b!4230841 (=> (not res!1739863) (not e!2627072))))

(declare-fun p!3018 () List!46829)

(declare-fun input!3600 () List!46829)

(declare-fun isPrefix!4697 (List!46829 List!46829) Bool)

(assert (=> b!4230841 (= res!1739863 (isPrefix!4697 p!3018 input!3600))))

(declare-fun b!4230842 () Bool)

(assert (=> b!4230842 (= e!2627072 false)))

(declare-fun lt!1504118 () Bool)

(declare-fun ruleValid!3578 (LexerInterface!7477 Rule!15564) Bool)

(assert (=> b!4230842 (= lt!1504118 (ruleValid!3578 thiss!26814 r!4353))))

(assert (= (and start!404638 res!1739864) b!4230841))

(assert (= (and b!4230841 res!1739863) b!4230842))

(assert (= (and start!404638 ((_ is Cons!46705) p!3018)) b!4230837))

(assert (= (and start!404638 ((_ is Cons!46705) input!3600)) b!4230838))

(assert (= b!4230840 b!4230839))

(assert (= start!404638 b!4230840))

(declare-fun m!4817467 () Bool)

(assert (=> b!4230840 m!4817467))

(declare-fun m!4817469 () Bool)

(assert (=> b!4230840 m!4817469))

(declare-fun m!4817471 () Bool)

(assert (=> b!4230841 m!4817471))

(declare-fun m!4817473 () Bool)

(assert (=> b!4230842 m!4817473))

(check-sat (not b!4230841) b_and!334263 (not b_next!125655) (not b_next!125657) (not b!4230840) (not b!4230842) tp_is_empty!22509 (not b!4230837) b_and!334261 (not b!4230838))
(check-sat b_and!334261 b_and!334263 (not b_next!125657) (not b_next!125655))
