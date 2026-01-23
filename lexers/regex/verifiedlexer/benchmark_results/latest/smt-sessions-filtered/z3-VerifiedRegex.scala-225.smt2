; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3578 () Bool)

(assert start!3578)

(declare-fun b!49494 () Bool)

(declare-fun b_free!1437 () Bool)

(declare-fun b_next!1437 () Bool)

(assert (=> b!49494 (= b_free!1437 (not b_next!1437))))

(declare-fun tp!33018 () Bool)

(declare-fun b_and!1479 () Bool)

(assert (=> b!49494 (= tp!33018 b_and!1479)))

(declare-fun b_free!1439 () Bool)

(declare-fun b_next!1439 () Bool)

(assert (=> b!49494 (= b_free!1439 (not b_next!1439))))

(declare-fun tp!33017 () Bool)

(declare-fun b_and!1481 () Bool)

(assert (=> b!49494 (= tp!33017 b_and!1481)))

(declare-fun res!32504 () Bool)

(declare-fun e!28910 () Bool)

(assert (=> start!3578 (=> (not res!32504) (not e!28910))))

(declare-datatypes ((LexerInterface!73 0))(
  ( (LexerInterfaceExt!70 (__x!1437 Int)) (Lexer!71) )
))
(declare-fun thiss!11059 () LexerInterface!73)

(declare-fun from!821 () Int)

(get-info :version)

(assert (=> start!3578 (= res!32504 (and ((_ is Lexer!71) thiss!11059) (>= from!821 0)))))

(assert (=> start!3578 e!28910))

(assert (=> start!3578 true))

(declare-datatypes ((List!870 0))(
  ( (Nil!864) (Cons!864 (h!6261 (_ BitVec 16)) (t!17073 List!870)) )
))
(declare-datatypes ((TokenValue!171 0))(
  ( (FloatLiteralValue!342 (text!1642 List!870)) (TokenValueExt!170 (__x!1438 Int)) (Broken!855 (value!8030 List!870)) (Object!176) (End!171) (Def!171) (Underscore!171) (Match!171) (Else!171) (Error!171) (Case!171) (If!171) (Extends!171) (Abstract!171) (Class!171) (Val!171) (DelimiterValue!342 (del!231 List!870)) (KeywordValue!177 (value!8031 List!870)) (CommentValue!342 (value!8032 List!870)) (WhitespaceValue!342 (value!8033 List!870)) (IndentationValue!171 (value!8034 List!870)) (String!1246) (Int32!171) (Broken!856 (value!8035 List!870)) (Boolean!172) (Unit!469) (OperatorValue!174 (op!231 List!870)) (IdentifierValue!342 (value!8036 List!870)) (IdentifierValue!343 (value!8037 List!870)) (WhitespaceValue!343 (value!8038 List!870)) (True!342) (False!342) (Broken!857 (value!8039 List!870)) (Broken!858 (value!8040 List!870)) (True!343) (RightBrace!171) (RightBracket!171) (Colon!171) (Null!171) (Comma!171) (LeftBracket!171) (False!343) (LeftBrace!171) (ImaginaryLiteralValue!171 (text!1643 List!870)) (StringLiteralValue!513 (value!8041 List!870)) (EOFValue!171 (value!8042 List!870)) (IdentValue!171 (value!8043 List!870)) (DelimiterValue!343 (value!8044 List!870)) (DedentValue!171 (value!8045 List!870)) (NewLineValue!171 (value!8046 List!870)) (IntegerValue!513 (value!8047 (_ BitVec 32)) (text!1644 List!870)) (IntegerValue!514 (value!8048 Int) (text!1645 List!870)) (Times!171) (Or!171) (Equal!171) (Minus!171) (Broken!859 (value!8049 List!870)) (And!171) (Div!171) (LessEqual!171) (Mod!171) (Concat!420) (Not!171) (Plus!171) (SpaceValue!171 (value!8050 List!870)) (IntegerValue!515 (value!8051 Int) (text!1646 List!870)) (StringLiteralValue!514 (text!1647 List!870)) (FloatLiteralValue!343 (text!1648 List!870)) (BytesLiteralValue!171 (value!8052 List!870)) (CommentValue!343 (value!8053 List!870)) (StringLiteralValue!515 (value!8054 List!870)) (ErrorTokenValue!171 (msg!232 List!870)) )
))
(declare-datatypes ((C!1420 0))(
  ( (C!1421 (val!317 Int)) )
))
(declare-datatypes ((Regex!249 0))(
  ( (ElementMatch!249 (c!16531 C!1420)) (Concat!421 (regOne!1010 Regex!249) (regTwo!1010 Regex!249)) (EmptyExpr!249) (Star!249 (reg!578 Regex!249)) (EmptyLang!249) (Union!249 (regOne!1011 Regex!249) (regTwo!1011 Regex!249)) )
))
(declare-datatypes ((String!1247 0))(
  ( (String!1248 (value!8055 String)) )
))
(declare-datatypes ((List!871 0))(
  ( (Nil!865) (Cons!865 (h!6262 C!1420) (t!17074 List!871)) )
))
(declare-datatypes ((IArray!333 0))(
  ( (IArray!334 (innerList!224 List!871)) )
))
(declare-datatypes ((Conc!166 0))(
  ( (Node!166 (left!669 Conc!166) (right!999 Conc!166) (csize!562 Int) (cheight!377 Int)) (Leaf!392 (xs!2745 IArray!333) (csize!563 Int)) (Empty!166) )
))
(declare-datatypes ((BalanceConc!336 0))(
  ( (BalanceConc!337 (c!16532 Conc!166)) )
))
(declare-datatypes ((TokenValueInjection!166 0))(
  ( (TokenValueInjection!167 (toValue!660 Int) (toChars!519 Int)) )
))
(declare-datatypes ((Rule!162 0))(
  ( (Rule!163 (regex!181 Regex!249) (tag!359 String!1247) (isSeparator!181 Bool) (transformation!181 TokenValueInjection!166)) )
))
(declare-datatypes ((Token!126 0))(
  ( (Token!127 (value!8056 TokenValue!171) (rule!656 Rule!162) (size!853 Int) (originalCharacters!234 List!871)) )
))
(declare-datatypes ((List!872 0))(
  ( (Nil!866) (Cons!866 (h!6263 Token!126) (t!17075 List!872)) )
))
(declare-datatypes ((IArray!335 0))(
  ( (IArray!336 (innerList!225 List!872)) )
))
(declare-datatypes ((Conc!167 0))(
  ( (Node!167 (left!670 Conc!167) (right!1000 Conc!167) (csize!564 Int) (cheight!378 Int)) (Leaf!393 (xs!2746 IArray!335) (csize!565 Int)) (Empty!167) )
))
(declare-datatypes ((BalanceConc!338 0))(
  ( (BalanceConc!339 (c!16533 Conc!167)) )
))
(declare-fun v!6227 () BalanceConc!338)

(declare-fun e!28912 () Bool)

(declare-fun inv!1170 (BalanceConc!338) Bool)

(assert (=> start!3578 (and (inv!1170 v!6227) e!28912)))

(declare-fun e!28914 () Bool)

(assert (=> start!3578 e!28914))

(declare-fun b!49488 () Bool)

(declare-fun e!28911 () Bool)

(declare-fun e!28915 () Bool)

(declare-fun tp!33019 () Bool)

(declare-datatypes ((List!873 0))(
  ( (Nil!867) (Cons!867 (h!6264 Rule!162) (t!17076 List!873)) )
))
(declare-fun rules!1069 () List!873)

(declare-fun inv!1166 (String!1247) Bool)

(declare-fun inv!1171 (TokenValueInjection!166) Bool)

(assert (=> b!49488 (= e!28911 (and tp!33019 (inv!1166 (tag!359 (h!6264 rules!1069))) (inv!1171 (transformation!181 (h!6264 rules!1069))) e!28915))))

(declare-fun b!49489 () Bool)

(declare-fun res!32503 () Bool)

(assert (=> b!49489 (=> (not res!32503) (not e!28910))))

(declare-fun size!854 (BalanceConc!338) Int)

(assert (=> b!49489 (= res!32503 (<= from!821 (size!854 v!6227)))))

(declare-fun b!49490 () Bool)

(declare-fun tp!33016 () Bool)

(assert (=> b!49490 (= e!28914 (and e!28911 tp!33016))))

(declare-fun b!49491 () Bool)

(assert (=> b!49491 (= e!28910 false)))

(declare-fun lt!7778 () Bool)

(declare-fun rulesInvariant!67 (LexerInterface!73 List!873) Bool)

(assert (=> b!49491 (= lt!7778 (rulesInvariant!67 thiss!11059 rules!1069))))

(declare-fun b!49492 () Bool)

(declare-fun tp!33020 () Bool)

(declare-fun inv!1172 (Conc!167) Bool)

(assert (=> b!49492 (= e!28912 (and (inv!1172 (c!16533 v!6227)) tp!33020))))

(declare-fun b!49493 () Bool)

(declare-fun res!32502 () Bool)

(assert (=> b!49493 (=> (not res!32502) (not e!28910))))

(declare-fun isEmpty!167 (List!873) Bool)

(assert (=> b!49493 (= res!32502 (not (isEmpty!167 rules!1069)))))

(assert (=> b!49494 (= e!28915 (and tp!33018 tp!33017))))

(assert (= (and start!3578 res!32504) b!49489))

(assert (= (and b!49489 res!32503) b!49493))

(assert (= (and b!49493 res!32502) b!49491))

(assert (= start!3578 b!49492))

(assert (= b!49488 b!49494))

(assert (= b!49490 b!49488))

(assert (= (and start!3578 ((_ is Cons!867) rules!1069)) b!49490))

(declare-fun m!23324 () Bool)

(assert (=> b!49493 m!23324))

(declare-fun m!23326 () Bool)

(assert (=> b!49492 m!23326))

(declare-fun m!23328 () Bool)

(assert (=> b!49489 m!23328))

(declare-fun m!23330 () Bool)

(assert (=> start!3578 m!23330))

(declare-fun m!23332 () Bool)

(assert (=> b!49491 m!23332))

(declare-fun m!23334 () Bool)

(assert (=> b!49488 m!23334))

(declare-fun m!23336 () Bool)

(assert (=> b!49488 m!23336))

(check-sat (not b!49491) (not b!49493) (not b!49492) (not b!49488) b_and!1479 b_and!1481 (not b!49489) (not start!3578) (not b!49490) (not b_next!1437) (not b_next!1439))
(check-sat b_and!1481 b_and!1479 (not b_next!1437) (not b_next!1439))
