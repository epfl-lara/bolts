; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!404144 () Bool)

(assert start!404144)

(declare-fun b!4226453 () Bool)

(declare-fun b_free!124507 () Bool)

(declare-fun b_next!125211 () Bool)

(assert (=> b!4226453 (= b_free!124507 (not b_next!125211))))

(declare-fun tp!1293926 () Bool)

(declare-fun b_and!333741 () Bool)

(assert (=> b!4226453 (= tp!1293926 b_and!333741)))

(declare-fun b_free!124509 () Bool)

(declare-fun b_next!125213 () Bool)

(assert (=> b!4226453 (= b_free!124509 (not b_next!125213))))

(declare-fun tp!1293927 () Bool)

(declare-fun b_and!333743 () Bool)

(assert (=> b!4226453 (= tp!1293927 b_and!333743)))

(declare-fun b!4226457 () Bool)

(declare-fun b_free!124511 () Bool)

(declare-fun b_next!125215 () Bool)

(assert (=> b!4226457 (= b_free!124511 (not b_next!125215))))

(declare-fun tp!1293923 () Bool)

(declare-fun b_and!333745 () Bool)

(assert (=> b!4226457 (= tp!1293923 b_and!333745)))

(declare-fun b_free!124513 () Bool)

(declare-fun b_next!125217 () Bool)

(assert (=> b!4226457 (= b_free!124513 (not b_next!125217))))

(declare-fun tp!1293922 () Bool)

(declare-fun b_and!333747 () Bool)

(assert (=> b!4226457 (= tp!1293922 b_and!333747)))

(declare-fun res!1737881 () Bool)

(declare-fun e!2624060 () Bool)

(assert (=> start!404144 (=> (not res!1737881) (not e!2624060))))

(declare-datatypes ((LexerInterface!7426 0))(
  ( (LexerInterfaceExt!7423 (__x!28345 Int)) (Lexer!7424) )
))
(declare-fun thiss!26827 () LexerInterface!7426)

(assert (=> start!404144 (= res!1737881 (is-Lexer!7424 thiss!26827))))

(assert (=> start!404144 e!2624060))

(assert (=> start!404144 true))

(declare-fun e!2624057 () Bool)

(assert (=> start!404144 e!2624057))

(declare-fun e!2624053 () Bool)

(assert (=> start!404144 e!2624053))

(declare-fun e!2624056 () Bool)

(assert (=> b!4226453 (= e!2624056 (and tp!1293926 tp!1293927))))

(declare-fun e!2624059 () Bool)

(declare-fun b!4226454 () Bool)

(declare-datatypes ((C!25666 0))(
  ( (C!25667 (val!14995 Int)) )
))
(declare-datatypes ((List!46696 0))(
  ( (Nil!46572) (Cons!46572 (h!51992 C!25666) (t!349313 List!46696)) )
))
(declare-datatypes ((IArray!28089 0))(
  ( (IArray!28090 (innerList!14102 List!46696)) )
))
(declare-datatypes ((Conc!14042 0))(
  ( (Node!14042 (left!34633 Conc!14042) (right!34963 Conc!14042) (csize!28314 Int) (cheight!14253 Int)) (Leaf!21702 (xs!17348 IArray!28089) (csize!28315 Int)) (Empty!14042) )
))
(declare-datatypes ((List!46697 0))(
  ( (Nil!46573) (Cons!46573 (h!51993 (_ BitVec 16)) (t!349314 List!46697)) )
))
(declare-datatypes ((TokenValue!8061 0))(
  ( (FloatLiteralValue!16122 (text!56872 List!46697)) (TokenValueExt!8060 (__x!28346 Int)) (Broken!40305 (value!243684 List!46697)) (Object!8184) (End!8061) (Def!8061) (Underscore!8061) (Match!8061) (Else!8061) (Error!8061) (Case!8061) (If!8061) (Extends!8061) (Abstract!8061) (Class!8061) (Val!8061) (DelimiterValue!16122 (del!8121 List!46697)) (KeywordValue!8067 (value!243685 List!46697)) (CommentValue!16122 (value!243686 List!46697)) (WhitespaceValue!16122 (value!243687 List!46697)) (IndentationValue!8061 (value!243688 List!46697)) (String!54176) (Int32!8061) (Broken!40306 (value!243689 List!46697)) (Boolean!8062) (Unit!65727) (OperatorValue!8064 (op!8121 List!46697)) (IdentifierValue!16122 (value!243690 List!46697)) (IdentifierValue!16123 (value!243691 List!46697)) (WhitespaceValue!16123 (value!243692 List!46697)) (True!16122) (False!16122) (Broken!40307 (value!243693 List!46697)) (Broken!40308 (value!243694 List!46697)) (True!16123) (RightBrace!8061) (RightBracket!8061) (Colon!8061) (Null!8061) (Comma!8061) (LeftBracket!8061) (False!16123) (LeftBrace!8061) (ImaginaryLiteralValue!8061 (text!56873 List!46697)) (StringLiteralValue!24183 (value!243695 List!46697)) (EOFValue!8061 (value!243696 List!46697)) (IdentValue!8061 (value!243697 List!46697)) (DelimiterValue!16123 (value!243698 List!46697)) (DedentValue!8061 (value!243699 List!46697)) (NewLineValue!8061 (value!243700 List!46697)) (IntegerValue!24183 (value!243701 (_ BitVec 32)) (text!56874 List!46697)) (IntegerValue!24184 (value!243702 Int) (text!56875 List!46697)) (Times!8061) (Or!8061) (Equal!8061) (Minus!8061) (Broken!40309 (value!243703 List!46697)) (And!8061) (Div!8061) (LessEqual!8061) (Mod!8061) (Concat!20797) (Not!8061) (Plus!8061) (SpaceValue!8061 (value!243704 List!46697)) (IntegerValue!24185 (value!243705 Int) (text!56876 List!46697)) (StringLiteralValue!24184 (text!56877 List!46697)) (FloatLiteralValue!16123 (text!56878 List!46697)) (BytesLiteralValue!8061 (value!243706 List!46697)) (CommentValue!16123 (value!243707 List!46697)) (StringLiteralValue!24185 (value!243708 List!46697)) (ErrorTokenValue!8061 (msg!8122 List!46697)) )
))
(declare-datatypes ((BalanceConc!27678 0))(
  ( (BalanceConc!27679 (c!718678 Conc!14042)) )
))
(declare-datatypes ((TokenValueInjection!15550 0))(
  ( (TokenValueInjection!15551 (toValue!10559 Int) (toChars!10418 Int)) )
))
(declare-datatypes ((Regex!12736 0))(
  ( (ElementMatch!12736 (c!718679 C!25666)) (Concat!20798 (regOne!25984 Regex!12736) (regTwo!25984 Regex!12736)) (EmptyExpr!12736) (Star!12736 (reg!13065 Regex!12736)) (EmptyLang!12736) (Union!12736 (regOne!25985 Regex!12736) (regTwo!25985 Regex!12736)) )
))
(declare-datatypes ((String!54177 0))(
  ( (String!54178 (value!243709 String)) )
))
(declare-datatypes ((Rule!15462 0))(
  ( (Rule!15463 (regex!7831 Regex!12736) (tag!8695 String!54177) (isSeparator!7831 Bool) (transformation!7831 TokenValueInjection!15550)) )
))
(declare-datatypes ((List!46698 0))(
  ( (Nil!46574) (Cons!46574 (h!51994 Rule!15462) (t!349315 List!46698)) )
))
(declare-fun rules!4024 () List!46698)

(declare-fun e!2624055 () Bool)

(declare-fun tp!1293921 () Bool)

(declare-fun inv!61234 (String!54177) Bool)

(declare-fun inv!61237 (TokenValueInjection!15550) Bool)

(assert (=> b!4226454 (= e!2624059 (and tp!1293921 (inv!61234 (tag!8695 (h!51994 rules!4024))) (inv!61237 (transformation!7831 (h!51994 rules!4024))) e!2624055))))

(declare-fun b!4226455 () Bool)

(declare-fun res!1737880 () Bool)

(assert (=> b!4226455 (=> (not res!1737880) (not e!2624060))))

(declare-fun r!4367 () Rule!15462)

(declare-fun contains!9654 (List!46698 Rule!15462) Bool)

(assert (=> b!4226455 (= res!1737880 (contains!9654 rules!4024 r!4367))))

(declare-fun b!4226456 () Bool)

(declare-fun tp!1293924 () Bool)

(assert (=> b!4226456 (= e!2624057 (and e!2624059 tp!1293924))))

(assert (=> b!4226457 (= e!2624055 (and tp!1293923 tp!1293922))))

(declare-fun b!4226458 () Bool)

(declare-fun tp!1293925 () Bool)

(assert (=> b!4226458 (= e!2624053 (and tp!1293925 (inv!61234 (tag!8695 r!4367)) (inv!61237 (transformation!7831 r!4367)) e!2624056))))

(declare-fun b!4226459 () Bool)

(assert (=> b!4226459 (= e!2624060 false)))

(declare-fun lt!1503169 () Bool)

(declare-fun rulesValidInductive!2933 (LexerInterface!7426 List!46698) Bool)

(assert (=> b!4226459 (= lt!1503169 (rulesValidInductive!2933 thiss!26827 rules!4024))))

(assert (= (and start!404144 res!1737881) b!4226455))

(assert (= (and b!4226455 res!1737880) b!4226459))

(assert (= b!4226454 b!4226457))

(assert (= b!4226456 b!4226454))

(assert (= (and start!404144 (is-Cons!46574 rules!4024)) b!4226456))

(assert (= b!4226458 b!4226453))

(assert (= start!404144 b!4226458))

(declare-fun m!4814359 () Bool)

(assert (=> b!4226454 m!4814359))

(declare-fun m!4814361 () Bool)

(assert (=> b!4226454 m!4814361))

(declare-fun m!4814363 () Bool)

(assert (=> b!4226455 m!4814363))

(declare-fun m!4814365 () Bool)

(assert (=> b!4226458 m!4814365))

(declare-fun m!4814367 () Bool)

(assert (=> b!4226458 m!4814367))

(declare-fun m!4814369 () Bool)

(assert (=> b!4226459 m!4814369))

(push 1)

(assert b_and!333741)

(assert (not b!4226455))

(assert b_and!333747)

(assert (not b!4226459))

(assert b_and!333743)

(assert (not b_next!125213))

(assert (not b!4226454))

(assert (not b!4226458))

(assert (not b!4226456))

(assert (not b_next!125215))

(assert b_and!333745)

(assert (not b_next!125217))

(assert (not b_next!125211))

(check-sat)

(pop 1)

(push 1)

(assert b_and!333741)

(assert b_and!333747)

(assert b_and!333743)

(assert (not b_next!125213))

(assert (not b_next!125215))

(assert b_and!333745)

(assert (not b_next!125217))

(assert (not b_next!125211))

(check-sat)

(pop 1)

