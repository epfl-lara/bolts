; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!388806 () Bool)

(assert start!388806)

(declare-fun b!4103020 () Bool)

(declare-fun b_free!115041 () Bool)

(declare-fun b_next!115745 () Bool)

(assert (=> b!4103020 (= b_free!115041 (not b_next!115745))))

(declare-fun tp!1243145 () Bool)

(declare-fun b_and!316855 () Bool)

(assert (=> b!4103020 (= tp!1243145 b_and!316855)))

(declare-fun b_free!115043 () Bool)

(declare-fun b_next!115747 () Bool)

(assert (=> b!4103020 (= b_free!115043 (not b_next!115747))))

(declare-fun tp!1243143 () Bool)

(declare-fun b_and!316857 () Bool)

(assert (=> b!4103020 (= tp!1243143 b_and!316857)))

(declare-fun b!4103022 () Bool)

(declare-fun b_free!115045 () Bool)

(declare-fun b_next!115749 () Bool)

(assert (=> b!4103022 (= b_free!115045 (not b_next!115749))))

(declare-fun tp!1243144 () Bool)

(declare-fun b_and!316859 () Bool)

(assert (=> b!4103022 (= tp!1243144 b_and!316859)))

(declare-fun b_free!115047 () Bool)

(declare-fun b_next!115751 () Bool)

(assert (=> b!4103022 (= b_free!115047 (not b_next!115751))))

(declare-fun tp!1243149 () Bool)

(declare-fun b_and!316861 () Bool)

(assert (=> b!4103022 (= tp!1243149 b_and!316861)))

(declare-fun b!4103019 () Bool)

(declare-fun e!2546241 () Bool)

(assert (=> b!4103019 (= e!2546241 false)))

(declare-datatypes ((LexerInterface!6746 0))(
  ( (LexerInterfaceExt!6743 (__x!26991 Int)) (Lexer!6744) )
))
(declare-fun thiss!26455 () LexerInterface!6746)

(declare-fun lt!1467262 () Bool)

(declare-datatypes ((C!24310 0))(
  ( (C!24311 (val!14265 Int)) )
))
(declare-datatypes ((List!44230 0))(
  ( (Nil!44106) (Cons!44106 (h!49526 C!24310) (t!339887 List!44230)) )
))
(declare-datatypes ((IArray!26741 0))(
  ( (IArray!26742 (innerList!13428 List!44230)) )
))
(declare-datatypes ((Conc!13368 0))(
  ( (Node!13368 (left!33117 Conc!13368) (right!33447 Conc!13368) (csize!26966 Int) (cheight!13579 Int)) (Leaf!20662 (xs!16674 IArray!26741) (csize!26967 Int)) (Empty!13368) )
))
(declare-datatypes ((Regex!12062 0))(
  ( (ElementMatch!12062 (c!706574 C!24310)) (Concat!19449 (regOne!24636 Regex!12062) (regTwo!24636 Regex!12062)) (EmptyExpr!12062) (Star!12062 (reg!12391 Regex!12062)) (EmptyLang!12062) (Union!12062 (regOne!24637 Regex!12062) (regTwo!24637 Regex!12062)) )
))
(declare-datatypes ((List!44231 0))(
  ( (Nil!44107) (Cons!44107 (h!49527 (_ BitVec 16)) (t!339888 List!44231)) )
))
(declare-datatypes ((TokenValue!7387 0))(
  ( (FloatLiteralValue!14774 (text!52154 List!44231)) (TokenValueExt!7386 (__x!26992 Int)) (Broken!36935 (value!224588 List!44231)) (Object!7510) (End!7387) (Def!7387) (Underscore!7387) (Match!7387) (Else!7387) (Error!7387) (Case!7387) (If!7387) (Extends!7387) (Abstract!7387) (Class!7387) (Val!7387) (DelimiterValue!14774 (del!7447 List!44231)) (KeywordValue!7393 (value!224589 List!44231)) (CommentValue!14774 (value!224590 List!44231)) (WhitespaceValue!14774 (value!224591 List!44231)) (IndentationValue!7387 (value!224592 List!44231)) (String!50686) (Int32!7387) (Broken!36936 (value!224593 List!44231)) (Boolean!7388) (Unit!63611) (OperatorValue!7390 (op!7447 List!44231)) (IdentifierValue!14774 (value!224594 List!44231)) (IdentifierValue!14775 (value!224595 List!44231)) (WhitespaceValue!14775 (value!224596 List!44231)) (True!14774) (False!14774) (Broken!36937 (value!224597 List!44231)) (Broken!36938 (value!224598 List!44231)) (True!14775) (RightBrace!7387) (RightBracket!7387) (Colon!7387) (Null!7387) (Comma!7387) (LeftBracket!7387) (False!14775) (LeftBrace!7387) (ImaginaryLiteralValue!7387 (text!52155 List!44231)) (StringLiteralValue!22161 (value!224599 List!44231)) (EOFValue!7387 (value!224600 List!44231)) (IdentValue!7387 (value!224601 List!44231)) (DelimiterValue!14775 (value!224602 List!44231)) (DedentValue!7387 (value!224603 List!44231)) (NewLineValue!7387 (value!224604 List!44231)) (IntegerValue!22161 (value!224605 (_ BitVec 32)) (text!52156 List!44231)) (IntegerValue!22162 (value!224606 Int) (text!52157 List!44231)) (Times!7387) (Or!7387) (Equal!7387) (Minus!7387) (Broken!36939 (value!224607 List!44231)) (And!7387) (Div!7387) (LessEqual!7387) (Mod!7387) (Concat!19450) (Not!7387) (Plus!7387) (SpaceValue!7387 (value!224608 List!44231)) (IntegerValue!22163 (value!224609 Int) (text!52158 List!44231)) (StringLiteralValue!22162 (text!52159 List!44231)) (FloatLiteralValue!14775 (text!52160 List!44231)) (BytesLiteralValue!7387 (value!224610 List!44231)) (CommentValue!14775 (value!224611 List!44231)) (StringLiteralValue!22163 (value!224612 List!44231)) (ErrorTokenValue!7387 (msg!7448 List!44231)) )
))
(declare-datatypes ((BalanceConc!26330 0))(
  ( (BalanceConc!26331 (c!706575 Conc!13368)) )
))
(declare-datatypes ((TokenValueInjection!14202 0))(
  ( (TokenValueInjection!14203 (toValue!9769 Int) (toChars!9628 Int)) )
))
(declare-datatypes ((String!50687 0))(
  ( (String!50688 (value!224613 String)) )
))
(declare-datatypes ((Rule!14114 0))(
  ( (Rule!14115 (regex!7157 Regex!12062) (tag!8017 String!50687) (isSeparator!7157 Bool) (transformation!7157 TokenValueInjection!14202)) )
))
(declare-fun rHead!24 () Rule!14114)

(declare-datatypes ((List!44232 0))(
  ( (Nil!44108) (Cons!44108 (h!49528 Rule!14114) (t!339889 List!44232)) )
))
(declare-fun rTail!27 () List!44232)

(declare-fun rulesInvariant!6089 (LexerInterface!6746 List!44232) Bool)

(assert (=> b!4103019 (= lt!1467262 (rulesInvariant!6089 thiss!26455 (Cons!44108 rHead!24 rTail!27)))))

(declare-fun e!2546244 () Bool)

(assert (=> b!4103020 (= e!2546244 (and tp!1243145 tp!1243143))))

(declare-fun e!2546239 () Bool)

(declare-fun b!4103021 () Bool)

(declare-fun tp!1243148 () Bool)

(declare-fun inv!58796 (String!50687) Bool)

(declare-fun inv!58799 (TokenValueInjection!14202) Bool)

(assert (=> b!4103021 (= e!2546239 (and tp!1243148 (inv!58796 (tag!8017 rHead!24)) (inv!58799 (transformation!7157 rHead!24)) e!2546244))))

(declare-fun e!2546242 () Bool)

(assert (=> b!4103022 (= e!2546242 (and tp!1243144 tp!1243149))))

(declare-fun res!1677407 () Bool)

(assert (=> start!388806 (=> (not res!1677407) (not e!2546241))))

(assert (=> start!388806 (= res!1677407 (is-Lexer!6744 thiss!26455))))

(assert (=> start!388806 e!2546241))

(assert (=> start!388806 true))

(declare-fun e!2546240 () Bool)

(assert (=> start!388806 e!2546240))

(assert (=> start!388806 e!2546239))

(declare-fun b!4103023 () Bool)

(declare-fun e!2546245 () Bool)

(declare-fun tp!1243147 () Bool)

(assert (=> b!4103023 (= e!2546240 (and e!2546245 tp!1243147))))

(declare-fun b!4103024 () Bool)

(declare-fun tp!1243146 () Bool)

(assert (=> b!4103024 (= e!2546245 (and tp!1243146 (inv!58796 (tag!8017 (h!49528 rTail!27))) (inv!58799 (transformation!7157 (h!49528 rTail!27))) e!2546242))))

(declare-fun b!4103025 () Bool)

(declare-fun res!1677408 () Bool)

(assert (=> b!4103025 (=> (not res!1677408) (not e!2546241))))

(declare-fun isEmpty!26368 (List!44232) Bool)

(assert (=> b!4103025 (= res!1677408 (not (isEmpty!26368 rTail!27)))))

(assert (= (and start!388806 res!1677407) b!4103025))

(assert (= (and b!4103025 res!1677408) b!4103019))

(assert (= b!4103024 b!4103022))

(assert (= b!4103023 b!4103024))

(assert (= (and start!388806 (is-Cons!44108 rTail!27)) b!4103023))

(assert (= b!4103021 b!4103020))

(assert (= start!388806 b!4103021))

(declare-fun m!4709057 () Bool)

(assert (=> b!4103019 m!4709057))

(declare-fun m!4709059 () Bool)

(assert (=> b!4103021 m!4709059))

(declare-fun m!4709061 () Bool)

(assert (=> b!4103021 m!4709061))

(declare-fun m!4709063 () Bool)

(assert (=> b!4103024 m!4709063))

(declare-fun m!4709065 () Bool)

(assert (=> b!4103024 m!4709065))

(declare-fun m!4709067 () Bool)

(assert (=> b!4103025 m!4709067))

(push 1)

(assert b_and!316857)

(assert (not b!4103023))

(assert (not b_next!115747))

(assert b_and!316855)

(assert (not b!4103019))

(assert (not b!4103025))

(assert (not b!4103021))

(assert (not b!4103024))

(assert b_and!316859)

(assert (not b_next!115751))

(assert (not b_next!115749))

(assert b_and!316861)

(assert (not b_next!115745))

(check-sat)

(pop 1)

(push 1)

(assert b_and!316857)

(assert (not b_next!115747))

(assert b_and!316855)

(assert b_and!316859)

(assert (not b_next!115751))

(assert (not b_next!115749))

(assert b_and!316861)

(assert (not b_next!115745))

(check-sat)

(pop 1)

