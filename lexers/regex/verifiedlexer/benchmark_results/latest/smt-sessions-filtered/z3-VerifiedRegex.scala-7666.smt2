; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!404230 () Bool)

(assert start!404230)

(declare-fun b!4227173 () Bool)

(declare-fun b_free!124651 () Bool)

(declare-fun b_next!125355 () Bool)

(assert (=> b!4227173 (= b_free!124651 (not b_next!125355))))

(declare-fun tp!1294431 () Bool)

(declare-fun b_and!333885 () Bool)

(assert (=> b!4227173 (= tp!1294431 b_and!333885)))

(declare-fun b_free!124653 () Bool)

(declare-fun b_next!125357 () Bool)

(assert (=> b!4227173 (= b_free!124653 (not b_next!125357))))

(declare-fun tp!1294433 () Bool)

(declare-fun b_and!333887 () Bool)

(assert (=> b!4227173 (= tp!1294433 b_and!333887)))

(declare-fun b!4227172 () Bool)

(declare-fun b_free!124655 () Bool)

(declare-fun b_next!125359 () Bool)

(assert (=> b!4227172 (= b_free!124655 (not b_next!125359))))

(declare-fun tp!1294434 () Bool)

(declare-fun b_and!333889 () Bool)

(assert (=> b!4227172 (= tp!1294434 b_and!333889)))

(declare-fun b_free!124657 () Bool)

(declare-fun b_next!125361 () Bool)

(assert (=> b!4227172 (= b_free!124657 (not b_next!125361))))

(declare-fun tp!1294430 () Bool)

(declare-fun b_and!333891 () Bool)

(assert (=> b!4227172 (= tp!1294430 b_and!333891)))

(declare-fun e!2624621 () Bool)

(assert (=> b!4227172 (= e!2624621 (and tp!1294434 tp!1294430))))

(declare-fun e!2624628 () Bool)

(assert (=> b!4227173 (= e!2624628 (and tp!1294431 tp!1294433))))

(declare-fun b!4227174 () Bool)

(declare-fun res!1738194 () Bool)

(declare-fun e!2624623 () Bool)

(assert (=> b!4227174 (=> (not res!1738194) (not e!2624623))))

(declare-datatypes ((C!25696 0))(
  ( (C!25697 (val!15010 Int)) )
))
(declare-datatypes ((List!46741 0))(
  ( (Nil!46617) (Cons!46617 (h!52037 C!25696) (t!349358 List!46741)) )
))
(declare-datatypes ((IArray!28119 0))(
  ( (IArray!28120 (innerList!14117 List!46741)) )
))
(declare-datatypes ((Conc!14057 0))(
  ( (Node!14057 (left!34667 Conc!14057) (right!34997 Conc!14057) (csize!28344 Int) (cheight!14268 Int)) (Leaf!21724 (xs!17363 IArray!28119) (csize!28345 Int)) (Empty!14057) )
))
(declare-datatypes ((List!46742 0))(
  ( (Nil!46618) (Cons!46618 (h!52038 (_ BitVec 16)) (t!349359 List!46742)) )
))
(declare-datatypes ((TokenValue!8076 0))(
  ( (FloatLiteralValue!16152 (text!56977 List!46742)) (TokenValueExt!8075 (__x!28375 Int)) (Broken!40380 (value!244095 List!46742)) (Object!8199) (End!8076) (Def!8076) (Underscore!8076) (Match!8076) (Else!8076) (Error!8076) (Case!8076) (If!8076) (Extends!8076) (Abstract!8076) (Class!8076) (Val!8076) (DelimiterValue!16152 (del!8136 List!46742)) (KeywordValue!8082 (value!244096 List!46742)) (CommentValue!16152 (value!244097 List!46742)) (WhitespaceValue!16152 (value!244098 List!46742)) (IndentationValue!8076 (value!244099 List!46742)) (String!54249) (Int32!8076) (Broken!40381 (value!244100 List!46742)) (Boolean!8077) (Unit!65746) (OperatorValue!8079 (op!8136 List!46742)) (IdentifierValue!16152 (value!244101 List!46742)) (IdentifierValue!16153 (value!244102 List!46742)) (WhitespaceValue!16153 (value!244103 List!46742)) (True!16152) (False!16152) (Broken!40382 (value!244104 List!46742)) (Broken!40383 (value!244105 List!46742)) (True!16153) (RightBrace!8076) (RightBracket!8076) (Colon!8076) (Null!8076) (Comma!8076) (LeftBracket!8076) (False!16153) (LeftBrace!8076) (ImaginaryLiteralValue!8076 (text!56978 List!46742)) (StringLiteralValue!24228 (value!244106 List!46742)) (EOFValue!8076 (value!244107 List!46742)) (IdentValue!8076 (value!244108 List!46742)) (DelimiterValue!16153 (value!244109 List!46742)) (DedentValue!8076 (value!244110 List!46742)) (NewLineValue!8076 (value!244111 List!46742)) (IntegerValue!24228 (value!244112 (_ BitVec 32)) (text!56979 List!46742)) (IntegerValue!24229 (value!244113 Int) (text!56980 List!46742)) (Times!8076) (Or!8076) (Equal!8076) (Minus!8076) (Broken!40384 (value!244114 List!46742)) (And!8076) (Div!8076) (LessEqual!8076) (Mod!8076) (Concat!20827) (Not!8076) (Plus!8076) (SpaceValue!8076 (value!244115 List!46742)) (IntegerValue!24230 (value!244116 Int) (text!56981 List!46742)) (StringLiteralValue!24229 (text!56982 List!46742)) (FloatLiteralValue!16153 (text!56983 List!46742)) (BytesLiteralValue!8076 (value!244117 List!46742)) (CommentValue!16153 (value!244118 List!46742)) (StringLiteralValue!24230 (value!244119 List!46742)) (ErrorTokenValue!8076 (msg!8137 List!46742)) )
))
(declare-datatypes ((BalanceConc!27708 0))(
  ( (BalanceConc!27709 (c!718714 Conc!14057)) )
))
(declare-datatypes ((TokenValueInjection!15580 0))(
  ( (TokenValueInjection!15581 (toValue!10574 Int) (toChars!10433 Int)) )
))
(declare-datatypes ((String!54250 0))(
  ( (String!54251 (value!244120 String)) )
))
(declare-datatypes ((Regex!12751 0))(
  ( (ElementMatch!12751 (c!718715 C!25696)) (Concat!20828 (regOne!26014 Regex!12751) (regTwo!26014 Regex!12751)) (EmptyExpr!12751) (Star!12751 (reg!13080 Regex!12751)) (EmptyLang!12751) (Union!12751 (regOne!26015 Regex!12751) (regTwo!26015 Regex!12751)) )
))
(declare-datatypes ((Rule!15492 0))(
  ( (Rule!15493 (regex!7846 Regex!12751) (tag!8710 String!54250) (isSeparator!7846 Bool) (transformation!7846 TokenValueInjection!15580)) )
))
(declare-datatypes ((List!46743 0))(
  ( (Nil!46619) (Cons!46619 (h!52039 Rule!15492) (t!349360 List!46743)) )
))
(declare-fun rules!4024 () List!46743)

(declare-fun r!4367 () Rule!15492)

(declare-fun contains!9669 (List!46743 Rule!15492) Bool)

(assert (=> b!4227174 (= res!1738194 (contains!9669 rules!4024 r!4367))))

(declare-fun res!1738193 () Bool)

(assert (=> start!404230 (=> (not res!1738193) (not e!2624623))))

(declare-datatypes ((LexerInterface!7441 0))(
  ( (LexerInterfaceExt!7438 (__x!28376 Int)) (Lexer!7439) )
))
(declare-fun thiss!26827 () LexerInterface!7441)

(get-info :version)

(assert (=> start!404230 (= res!1738193 ((_ is Lexer!7439) thiss!26827))))

(assert (=> start!404230 e!2624623))

(assert (=> start!404230 true))

(declare-fun e!2624625 () Bool)

(assert (=> start!404230 e!2624625))

(declare-fun e!2624624 () Bool)

(assert (=> start!404230 e!2624624))

(declare-fun tp!1294432 () Bool)

(declare-fun b!4227175 () Bool)

(declare-fun e!2624622 () Bool)

(declare-fun inv!61271 (String!54250) Bool)

(declare-fun inv!61273 (TokenValueInjection!15580) Bool)

(assert (=> b!4227175 (= e!2624622 (and tp!1294432 (inv!61271 (tag!8710 (h!52039 rules!4024))) (inv!61273 (transformation!7846 (h!52039 rules!4024))) e!2624621))))

(declare-fun b!4227176 () Bool)

(assert (=> b!4227176 (= e!2624623 false)))

(declare-fun lt!1503240 () Bool)

(assert (=> b!4227176 (= lt!1503240 (contains!9669 (t!349360 rules!4024) r!4367))))

(declare-fun b!4227177 () Bool)

(declare-fun res!1738192 () Bool)

(assert (=> b!4227177 (=> (not res!1738192) (not e!2624623))))

(assert (=> b!4227177 (= res!1738192 (and (or (not ((_ is Cons!46619) rules!4024)) (not (= (h!52039 rules!4024) r!4367))) ((_ is Cons!46619) rules!4024) (not (= (h!52039 rules!4024) r!4367))))))

(declare-fun b!4227178 () Bool)

(declare-fun tp!1294429 () Bool)

(assert (=> b!4227178 (= e!2624625 (and e!2624622 tp!1294429))))

(declare-fun b!4227179 () Bool)

(declare-fun res!1738191 () Bool)

(assert (=> b!4227179 (=> (not res!1738191) (not e!2624623))))

(declare-fun rulesValidInductive!2948 (LexerInterface!7441 List!46743) Bool)

(assert (=> b!4227179 (= res!1738191 (rulesValidInductive!2948 thiss!26827 rules!4024))))

(declare-fun tp!1294428 () Bool)

(declare-fun b!4227180 () Bool)

(assert (=> b!4227180 (= e!2624624 (and tp!1294428 (inv!61271 (tag!8710 r!4367)) (inv!61273 (transformation!7846 r!4367)) e!2624628))))

(assert (= (and start!404230 res!1738193) b!4227174))

(assert (= (and b!4227174 res!1738194) b!4227179))

(assert (= (and b!4227179 res!1738191) b!4227177))

(assert (= (and b!4227177 res!1738192) b!4227176))

(assert (= b!4227175 b!4227172))

(assert (= b!4227178 b!4227175))

(assert (= (and start!404230 ((_ is Cons!46619) rules!4024)) b!4227178))

(assert (= b!4227180 b!4227173))

(assert (= start!404230 b!4227180))

(declare-fun m!4814745 () Bool)

(assert (=> b!4227180 m!4814745))

(declare-fun m!4814747 () Bool)

(assert (=> b!4227180 m!4814747))

(declare-fun m!4814749 () Bool)

(assert (=> b!4227175 m!4814749))

(declare-fun m!4814751 () Bool)

(assert (=> b!4227175 m!4814751))

(declare-fun m!4814753 () Bool)

(assert (=> b!4227176 m!4814753))

(declare-fun m!4814755 () Bool)

(assert (=> b!4227174 m!4814755))

(declare-fun m!4814757 () Bool)

(assert (=> b!4227179 m!4814757))

(check-sat (not b!4227175) (not b!4227176) (not b!4227180) (not b!4227174) (not b_next!125359) b_and!333889 (not b_next!125361) (not b!4227178) (not b_next!125355) b_and!333887 b_and!333891 b_and!333885 (not b!4227179) (not b_next!125357))
(check-sat (not b_next!125359) b_and!333889 (not b_next!125361) (not b_next!125355) b_and!333887 b_and!333891 b_and!333885 (not b_next!125357))
