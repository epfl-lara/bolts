; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!757666 () Bool)

(assert start!757666)

(declare-fun b!8046446 () Bool)

(declare-fun b_free!136435 () Bool)

(declare-fun b_next!137225 () Bool)

(assert (=> b!8046446 (= b_free!136435 (not b_next!137225))))

(declare-fun tp!2412114 () Bool)

(declare-fun b_and!354871 () Bool)

(assert (=> b!8046446 (= tp!2412114 b_and!354871)))

(declare-fun b_free!136437 () Bool)

(declare-fun b_next!137227 () Bool)

(assert (=> b!8046446 (= b_free!136437 (not b_next!137227))))

(declare-fun tp!2412116 () Bool)

(declare-fun b_and!354873 () Bool)

(assert (=> b!8046446 (= tp!2412116 b_and!354873)))

(declare-fun e!4740512 () Bool)

(assert (=> b!8046446 (= e!4740512 (and tp!2412114 tp!2412116))))

(declare-fun b!8046447 () Bool)

(declare-fun e!4740516 () Bool)

(declare-datatypes ((String!85198 0))(
  ( (String!85199 (value!292755 String)) )
))
(declare-datatypes ((List!75470 0))(
  ( (Nil!75344) (Cons!75344 (h!81792 String!85198) (t!391240 List!75470)) )
))
(declare-fun acc!573 () List!75470)

(declare-fun tp!2412113 () Bool)

(declare-fun inv!97078 (String!85198) Bool)

(assert (=> b!8046447 (= e!4740516 (and (inv!97078 (h!81792 acc!573)) tp!2412113))))

(declare-fun res!3180829 () Bool)

(declare-fun e!4740509 () Bool)

(assert (=> start!757666 (=> (not res!3180829) (not e!4740509))))

(declare-datatypes ((LexerInterface!8353 0))(
  ( (LexerInterfaceExt!8350 (__x!35447 Int)) (Lexer!8351) )
))
(declare-fun thiss!26941 () LexerInterface!8353)

(assert (=> start!757666 (= res!3180829 (is-Lexer!8351 thiss!26941))))

(assert (=> start!757666 e!4740509))

(assert (=> start!757666 true))

(declare-fun e!4740513 () Bool)

(assert (=> start!757666 e!4740513))

(assert (=> start!757666 e!4740516))

(declare-fun e!4740510 () Bool)

(assert (=> start!757666 e!4740510))

(declare-fun b!8046448 () Bool)

(declare-datatypes ((List!75471 0))(
  ( (Nil!75345) (Cons!75345 (h!81793 (_ BitVec 16)) (t!391241 List!75471)) )
))
(declare-datatypes ((TokenValue!9083 0))(
  ( (FloatLiteralValue!18166 (text!64026 List!75471)) (TokenValueExt!9082 (__x!35448 Int)) (Broken!45415 (value!292756 List!75471)) (Object!9208) (End!9083) (Def!9083) (Underscore!9083) (Match!9083) (Else!9083) (Error!9083) (Case!9083) (If!9083) (Extends!9083) (Abstract!9083) (Class!9083) (Val!9083) (DelimiterValue!18166 (del!9143 List!75471)) (KeywordValue!9089 (value!292757 List!75471)) (CommentValue!18166 (value!292758 List!75471)) (WhitespaceValue!18166 (value!292759 List!75471)) (IndentationValue!9083 (value!292760 List!75471)) (String!85200) (Int32!9083) (Broken!45416 (value!292761 List!75471)) (Boolean!9084) (Unit!171142) (OperatorValue!9086 (op!9143 List!75471)) (IdentifierValue!18166 (value!292762 List!75471)) (IdentifierValue!18167 (value!292763 List!75471)) (WhitespaceValue!18167 (value!292764 List!75471)) (True!18166) (False!18166) (Broken!45417 (value!292765 List!75471)) (Broken!45418 (value!292766 List!75471)) (True!18167) (RightBrace!9083) (RightBracket!9083) (Colon!9083) (Null!9083) (Comma!9083) (LeftBracket!9083) (False!18167) (LeftBrace!9083) (ImaginaryLiteralValue!9083 (text!64027 List!75471)) (StringLiteralValue!27249 (value!292767 List!75471)) (EOFValue!9083 (value!292768 List!75471)) (IdentValue!9083 (value!292769 List!75471)) (DelimiterValue!18167 (value!292770 List!75471)) (DedentValue!9083 (value!292771 List!75471)) (NewLineValue!9083 (value!292772 List!75471)) (IntegerValue!27249 (value!292773 (_ BitVec 32)) (text!64028 List!75471)) (IntegerValue!27250 (value!292774 Int) (text!64029 List!75471)) (Times!9083) (Or!9083) (Equal!9083) (Minus!9083) (Broken!45419 (value!292775 List!75471)) (And!9083) (Div!9083) (LessEqual!9083) (Mod!9083) (Concat!30917) (Not!9083) (Plus!9083) (SpaceValue!9083 (value!292776 List!75471)) (IntegerValue!27251 (value!292777 Int) (text!64030 List!75471)) (StringLiteralValue!27250 (text!64031 List!75471)) (FloatLiteralValue!18167 (text!64032 List!75471)) (BytesLiteralValue!9083 (value!292778 List!75471)) (CommentValue!18167 (value!292779 List!75471)) (StringLiteralValue!27251 (value!292780 List!75471)) (ErrorTokenValue!9083 (msg!9144 List!75471)) )
))
(declare-datatypes ((C!44006 0))(
  ( (C!44007 (val!32779 Int)) )
))
(declare-datatypes ((Regex!21834 0))(
  ( (ElementMatch!21834 (c!1475439 C!44006)) (Concat!30918 (regOne!44180 Regex!21834) (regTwo!44180 Regex!21834)) (EmptyExpr!21834) (Star!21834 (reg!22163 Regex!21834)) (EmptyLang!21834) (Union!21834 (regOne!44181 Regex!21834) (regTwo!44181 Regex!21834)) )
))
(declare-datatypes ((List!75472 0))(
  ( (Nil!75346) (Cons!75346 (h!81794 C!44006) (t!391242 List!75472)) )
))
(declare-datatypes ((IArray!32123 0))(
  ( (IArray!32124 (innerList!16119 List!75472)) )
))
(declare-datatypes ((Conc!16031 0))(
  ( (Node!16031 (left!57391 Conc!16031) (right!57721 Conc!16031) (csize!32292 Int) (cheight!16242 Int)) (Leaf!30724 (xs!19429 IArray!32123) (csize!32293 Int)) (Empty!16031) )
))
(declare-datatypes ((BalanceConc!31018 0))(
  ( (BalanceConc!31019 (c!1475440 Conc!16031)) )
))
(declare-datatypes ((TokenValueInjection!17474 0))(
  ( (TokenValueInjection!17475 (toValue!11846 Int) (toChars!11705 Int)) )
))
(declare-datatypes ((Rule!17326 0))(
  ( (Rule!17327 (regex!8763 Regex!21834) (tag!9627 String!85198) (isSeparator!8763 Bool) (transformation!8763 TokenValueInjection!17474)) )
))
(declare-datatypes ((List!75473 0))(
  ( (Nil!75347) (Cons!75347 (h!81795 Rule!17326) (t!391243 List!75473)) )
))
(declare-fun rules!4081 () List!75473)

(declare-fun tp!2412117 () Bool)

(declare-fun e!4740508 () Bool)

(declare-fun inv!97081 (TokenValueInjection!17474) Bool)

(assert (=> b!8046448 (= e!4740508 (and tp!2412117 (inv!97078 (tag!9627 (h!81795 rules!4081))) (inv!97081 (transformation!8763 (h!81795 rules!4081))) e!4740512))))

(declare-fun b!8046449 () Bool)

(declare-fun newAcc!87 () List!75470)

(declare-fun tp!2412112 () Bool)

(assert (=> b!8046449 (= e!4740513 (and (inv!97078 (h!81792 newAcc!87)) tp!2412112))))

(declare-fun b!8046450 () Bool)

(declare-fun tp!2412115 () Bool)

(assert (=> b!8046450 (= e!4740510 (and e!4740508 tp!2412115))))

(declare-fun b!8046451 () Bool)

(declare-fun res!3180828 () Bool)

(assert (=> b!8046451 (=> (not res!3180828) (not e!4740509))))

(declare-fun subseq!914 (List!75470 List!75470) Bool)

(assert (=> b!8046451 (= res!3180828 (subseq!914 newAcc!87 acc!573))))

(declare-fun b!8046452 () Bool)

(assert (=> b!8046452 (= e!4740509 false)))

(declare-fun lt!2722819 () Bool)

(declare-fun noDuplicateTag!3341 (LexerInterface!8353 List!75473 List!75470) Bool)

(assert (=> b!8046452 (= lt!2722819 (noDuplicateTag!3341 thiss!26941 rules!4081 acc!573))))

(assert (= (and start!757666 res!3180829) b!8046451))

(assert (= (and b!8046451 res!3180828) b!8046452))

(assert (= (and start!757666 (is-Cons!75344 newAcc!87)) b!8046449))

(assert (= (and start!757666 (is-Cons!75344 acc!573)) b!8046447))

(assert (= b!8046448 b!8046446))

(assert (= b!8046450 b!8046448))

(assert (= (and start!757666 (is-Cons!75347 rules!4081)) b!8046450))

(declare-fun m!8398598 () Bool)

(assert (=> b!8046449 m!8398598))

(declare-fun m!8398600 () Bool)

(assert (=> b!8046452 m!8398600))

(declare-fun m!8398602 () Bool)

(assert (=> b!8046451 m!8398602))

(declare-fun m!8398604 () Bool)

(assert (=> b!8046448 m!8398604))

(declare-fun m!8398606 () Bool)

(assert (=> b!8046448 m!8398606))

(declare-fun m!8398608 () Bool)

(assert (=> b!8046447 m!8398608))

(push 1)

(assert b_and!354871)

(assert (not b!8046449))

(assert (not b_next!137225))

(assert (not b!8046450))

(assert (not b!8046448))

(assert (not b_next!137227))

(assert (not b!8046451))

(assert (not b!8046452))

(assert b_and!354873)

(assert (not b!8046447))

(check-sat)

(pop 1)

(push 1)

(assert b_and!354873)

(assert b_and!354871)

(assert (not b_next!137227))

(assert (not b_next!137225))

(check-sat)

(pop 1)

