; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!537280 () Bool)

(assert start!537280)

(declare-fun b!5096222 () Bool)

(declare-fun b_free!133467 () Bool)

(declare-fun b_next!134257 () Bool)

(assert (=> b!5096222 (= b_free!133467 (not b_next!134257))))

(declare-fun tp!1421159 () Bool)

(declare-fun b_and!350359 () Bool)

(assert (=> b!5096222 (= tp!1421159 b_and!350359)))

(declare-fun b_free!133469 () Bool)

(declare-fun b_next!134259 () Bool)

(assert (=> b!5096222 (= b_free!133469 (not b_next!134259))))

(declare-fun tp!1421158 () Bool)

(declare-fun b_and!350361 () Bool)

(assert (=> b!5096222 (= tp!1421158 b_and!350361)))

(declare-fun b!5096217 () Bool)

(declare-fun e!3178361 () Bool)

(assert (=> b!5096217 (= e!3178361 false)))

(declare-fun b!5096218 () Bool)

(declare-fun res!2168932 () Bool)

(assert (=> b!5096218 (=> (not res!2168932) (not e!3178361))))

(declare-datatypes ((C!28246 0))(
  ( (C!28247 (val!23775 Int)) )
))
(declare-datatypes ((List!58774 0))(
  ( (Nil!58650) (Cons!58650 (h!65098 C!28246) (t!371739 List!58774)) )
))
(declare-datatypes ((IArray!31443 0))(
  ( (IArray!31444 (innerList!15779 List!58774)) )
))
(declare-datatypes ((Conc!15691 0))(
  ( (Node!15691 (left!43069 Conc!15691) (right!43399 Conc!15691) (csize!31612 Int) (cheight!15902 Int)) (Leaf!26042 (xs!19073 IArray!31443) (csize!31613 Int)) (Empty!15691) )
))
(declare-datatypes ((Regex!13994 0))(
  ( (ElementMatch!13994 (c!875636 C!28246)) (Concat!22827 (regOne!28500 Regex!13994) (regTwo!28500 Regex!13994)) (EmptyExpr!13994) (Star!13994 (reg!14323 Regex!13994)) (EmptyLang!13994) (Union!13994 (regOne!28501 Regex!13994) (regTwo!28501 Regex!13994)) )
))
(declare-datatypes ((String!67088 0))(
  ( (String!67089 (value!273073 String)) )
))
(declare-datatypes ((List!58775 0))(
  ( (Nil!58651) (Cons!58651 (h!65099 (_ BitVec 16)) (t!371740 List!58775)) )
))
(declare-datatypes ((TokenValue!8833 0))(
  ( (FloatLiteralValue!17666 (text!62276 List!58775)) (TokenValueExt!8832 (__x!34955 Int)) (Broken!44165 (value!273074 List!58775)) (Object!8956) (End!8833) (Def!8833) (Underscore!8833) (Match!8833) (Else!8833) (Error!8833) (Case!8833) (If!8833) (Extends!8833) (Abstract!8833) (Class!8833) (Val!8833) (DelimiterValue!17666 (del!8893 List!58775)) (KeywordValue!8839 (value!273075 List!58775)) (CommentValue!17666 (value!273076 List!58775)) (WhitespaceValue!17666 (value!273077 List!58775)) (IndentationValue!8833 (value!273078 List!58775)) (String!67090) (Int32!8833) (Broken!44166 (value!273079 List!58775)) (Boolean!8834) (Unit!149689) (OperatorValue!8836 (op!8893 List!58775)) (IdentifierValue!17666 (value!273080 List!58775)) (IdentifierValue!17667 (value!273081 List!58775)) (WhitespaceValue!17667 (value!273082 List!58775)) (True!17666) (False!17666) (Broken!44167 (value!273083 List!58775)) (Broken!44168 (value!273084 List!58775)) (True!17667) (RightBrace!8833) (RightBracket!8833) (Colon!8833) (Null!8833) (Comma!8833) (LeftBracket!8833) (False!17667) (LeftBrace!8833) (ImaginaryLiteralValue!8833 (text!62277 List!58775)) (StringLiteralValue!26499 (value!273085 List!58775)) (EOFValue!8833 (value!273086 List!58775)) (IdentValue!8833 (value!273087 List!58775)) (DelimiterValue!17667 (value!273088 List!58775)) (DedentValue!8833 (value!273089 List!58775)) (NewLineValue!8833 (value!273090 List!58775)) (IntegerValue!26499 (value!273091 (_ BitVec 32)) (text!62278 List!58775)) (IntegerValue!26500 (value!273092 Int) (text!62279 List!58775)) (Times!8833) (Or!8833) (Equal!8833) (Minus!8833) (Broken!44169 (value!273093 List!58775)) (And!8833) (Div!8833) (LessEqual!8833) (Mod!8833) (Concat!22828) (Not!8833) (Plus!8833) (SpaceValue!8833 (value!273094 List!58775)) (IntegerValue!26501 (value!273095 Int) (text!62280 List!58775)) (StringLiteralValue!26500 (text!62281 List!58775)) (FloatLiteralValue!17667 (text!62282 List!58775)) (BytesLiteralValue!8833 (value!273096 List!58775)) (CommentValue!17667 (value!273097 List!58775)) (StringLiteralValue!26501 (value!273098 List!58775)) (ErrorTokenValue!8833 (msg!8894 List!58775)) )
))
(declare-datatypes ((BalanceConc!30500 0))(
  ( (BalanceConc!30501 (c!875637 Conc!15691)) )
))
(declare-datatypes ((TokenValueInjection!16974 0))(
  ( (TokenValueInjection!16975 (toValue!11542 Int) (toChars!11401 Int)) )
))
(declare-datatypes ((Rule!16838 0))(
  ( (Rule!16839 (regex!8519 Regex!13994) (tag!9383 String!67088) (isSeparator!8519 Bool) (transformation!8519 TokenValueInjection!16974)) )
))
(declare-fun rule!158 () Rule!16838)

(declare-fun input!1493 () List!58774)

(declare-fun isEmpty!31746 (List!58774) Bool)

(declare-datatypes ((tuple2!63370 0))(
  ( (tuple2!63371 (_1!34988 List!58774) (_2!34988 List!58774)) )
))
(declare-fun findLongestMatchWithZipper!114 (Regex!13994 List!58774) tuple2!63370)

(assert (=> b!5096218 (= res!2168932 (not (isEmpty!31746 (_1!34988 (findLongestMatchWithZipper!114 (regex!8519 rule!158) input!1493)))))))

(declare-fun e!3178360 () Bool)

(declare-fun tp!1421156 () Bool)

(declare-fun b!5096219 () Bool)

(declare-fun e!3178362 () Bool)

(declare-fun inv!78144 (String!67088) Bool)

(declare-fun inv!78147 (TokenValueInjection!16974) Bool)

(assert (=> b!5096219 (= e!3178362 (and tp!1421156 (inv!78144 (tag!9383 rule!158)) (inv!78147 (transformation!8519 rule!158)) e!3178360))))

(declare-fun res!2168933 () Bool)

(assert (=> start!537280 (=> (not res!2168933) (not e!3178361))))

(declare-datatypes ((LexerInterface!8111 0))(
  ( (LexerInterfaceExt!8108 (__x!34956 Int)) (Lexer!8109) )
))
(declare-fun thiss!15916 () LexerInterface!8111)

(assert (=> start!537280 (= res!2168933 (is-Lexer!8109 thiss!15916))))

(assert (=> start!537280 e!3178361))

(assert (=> start!537280 true))

(assert (=> start!537280 e!3178362))

(declare-fun e!3178359 () Bool)

(assert (=> start!537280 e!3178359))

(declare-fun b!5096220 () Bool)

(declare-fun res!2168934 () Bool)

(assert (=> b!5096220 (=> (not res!2168934) (not e!3178361))))

(declare-fun ruleValid!3911 (LexerInterface!8111 Rule!16838) Bool)

(assert (=> b!5096220 (= res!2168934 (ruleValid!3911 thiss!15916 rule!158))))

(declare-fun b!5096221 () Bool)

(declare-fun tp_is_empty!37253 () Bool)

(declare-fun tp!1421157 () Bool)

(assert (=> b!5096221 (= e!3178359 (and tp_is_empty!37253 tp!1421157))))

(assert (=> b!5096222 (= e!3178360 (and tp!1421159 tp!1421158))))

(assert (= (and start!537280 res!2168933) b!5096220))

(assert (= (and b!5096220 res!2168934) b!5096218))

(assert (= (and b!5096218 res!2168932) b!5096217))

(assert (= b!5096219 b!5096222))

(assert (= start!537280 b!5096219))

(assert (= (and start!537280 (is-Cons!58650 input!1493)) b!5096221))

(declare-fun m!6153444 () Bool)

(assert (=> b!5096218 m!6153444))

(declare-fun m!6153446 () Bool)

(assert (=> b!5096218 m!6153446))

(declare-fun m!6153448 () Bool)

(assert (=> b!5096219 m!6153448))

(declare-fun m!6153450 () Bool)

(assert (=> b!5096219 m!6153450))

(declare-fun m!6153452 () Bool)

(assert (=> b!5096220 m!6153452))

(push 1)

(assert b_and!350361)

(assert (not b!5096218))

(assert (not b_next!134257))

(assert (not b!5096219))

(assert (not b_next!134259))

(assert (not b!5096221))

(assert tp_is_empty!37253)

(assert (not b!5096220))

(assert b_and!350359)

(check-sat)

(pop 1)

(push 1)

(assert b_and!350361)

(assert b_and!350359)

(assert (not b_next!134257))

(assert (not b_next!134259))

(check-sat)

(pop 1)

