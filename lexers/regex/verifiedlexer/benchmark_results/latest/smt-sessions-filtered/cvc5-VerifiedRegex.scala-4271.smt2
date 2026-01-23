; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!229836 () Bool)

(assert start!229836)

(declare-fun b!2327999 () Bool)

(declare-fun b_free!70201 () Bool)

(declare-fun b_next!70905 () Bool)

(assert (=> b!2327999 (= b_free!70201 (not b_next!70905))))

(declare-fun tp!737552 () Bool)

(declare-fun b_and!185113 () Bool)

(assert (=> b!2327999 (= tp!737552 b_and!185113)))

(declare-fun b_free!70203 () Bool)

(declare-fun b_next!70907 () Bool)

(assert (=> b!2327999 (= b_free!70203 (not b_next!70907))))

(declare-fun tp!737550 () Bool)

(declare-fun b_and!185115 () Bool)

(assert (=> b!2327999 (= tp!737550 b_and!185115)))

(declare-fun b!2327998 () Bool)

(declare-fun e!1491547 () Bool)

(declare-fun e!1491545 () Bool)

(declare-fun tp!737554 () Bool)

(assert (=> b!2327998 (= e!1491547 (and e!1491545 tp!737554))))

(declare-fun e!1491549 () Bool)

(assert (=> b!2327999 (= e!1491549 (and tp!737552 tp!737550))))

(declare-fun res!993984 () Bool)

(declare-fun e!1491544 () Bool)

(assert (=> start!229836 (=> (not res!993984) (not e!1491544))))

(declare-datatypes ((List!27831 0))(
  ( (Nil!27733) (Cons!27733 (h!33134 (_ BitVec 16)) (t!207553 List!27831)) )
))
(declare-datatypes ((TokenValue!4590 0))(
  ( (FloatLiteralValue!9180 (text!32575 List!27831)) (TokenValueExt!4589 (__x!18339 Int)) (Broken!22950 (value!140201 List!27831)) (Object!4687) (End!4590) (Def!4590) (Underscore!4590) (Match!4590) (Else!4590) (Error!4590) (Case!4590) (If!4590) (Extends!4590) (Abstract!4590) (Class!4590) (Val!4590) (DelimiterValue!9180 (del!4650 List!27831)) (KeywordValue!4596 (value!140202 List!27831)) (CommentValue!9180 (value!140203 List!27831)) (WhitespaceValue!9180 (value!140204 List!27831)) (IndentationValue!4590 (value!140205 List!27831)) (String!30319) (Int32!4590) (Broken!22951 (value!140206 List!27831)) (Boolean!4591) (Unit!40562) (OperatorValue!4593 (op!4650 List!27831)) (IdentifierValue!9180 (value!140207 List!27831)) (IdentifierValue!9181 (value!140208 List!27831)) (WhitespaceValue!9181 (value!140209 List!27831)) (True!9180) (False!9180) (Broken!22952 (value!140210 List!27831)) (Broken!22953 (value!140211 List!27831)) (True!9181) (RightBrace!4590) (RightBracket!4590) (Colon!4590) (Null!4590) (Comma!4590) (LeftBracket!4590) (False!9181) (LeftBrace!4590) (ImaginaryLiteralValue!4590 (text!32576 List!27831)) (StringLiteralValue!13770 (value!140212 List!27831)) (EOFValue!4590 (value!140213 List!27831)) (IdentValue!4590 (value!140214 List!27831)) (DelimiterValue!9181 (value!140215 List!27831)) (DedentValue!4590 (value!140216 List!27831)) (NewLineValue!4590 (value!140217 List!27831)) (IntegerValue!13770 (value!140218 (_ BitVec 32)) (text!32577 List!27831)) (IntegerValue!13771 (value!140219 Int) (text!32578 List!27831)) (Times!4590) (Or!4590) (Equal!4590) (Minus!4590) (Broken!22954 (value!140220 List!27831)) (And!4590) (Div!4590) (LessEqual!4590) (Mod!4590) (Concat!11386) (Not!4590) (Plus!4590) (SpaceValue!4590 (value!140221 List!27831)) (IntegerValue!13772 (value!140222 Int) (text!32579 List!27831)) (StringLiteralValue!13771 (text!32580 List!27831)) (FloatLiteralValue!9181 (text!32581 List!27831)) (BytesLiteralValue!4590 (value!140223 List!27831)) (CommentValue!9181 (value!140224 List!27831)) (StringLiteralValue!13772 (value!140225 List!27831)) (ErrorTokenValue!4590 (msg!4651 List!27831)) )
))
(declare-datatypes ((C!13750 0))(
  ( (C!13751 (val!8031 Int)) )
))
(declare-datatypes ((Regex!6796 0))(
  ( (ElementMatch!6796 (c!369876 C!13750)) (Concat!11387 (regOne!14104 Regex!6796) (regTwo!14104 Regex!6796)) (EmptyExpr!6796) (Star!6796 (reg!7125 Regex!6796)) (EmptyLang!6796) (Union!6796 (regOne!14105 Regex!6796) (regTwo!14105 Regex!6796)) )
))
(declare-datatypes ((String!30320 0))(
  ( (String!30321 (value!140226 String)) )
))
(declare-datatypes ((List!27832 0))(
  ( (Nil!27734) (Cons!27734 (h!33135 C!13750) (t!207554 List!27832)) )
))
(declare-datatypes ((IArray!18177 0))(
  ( (IArray!18178 (innerList!9146 List!27832)) )
))
(declare-datatypes ((Conc!9086 0))(
  ( (Node!9086 (left!21045 Conc!9086) (right!21375 Conc!9086) (csize!18402 Int) (cheight!9297 Int)) (Leaf!13358 (xs!12066 IArray!18177) (csize!18403 Int)) (Empty!9086) )
))
(declare-datatypes ((BalanceConc!17784 0))(
  ( (BalanceConc!17785 (c!369877 Conc!9086)) )
))
(declare-datatypes ((TokenValueInjection!8700 0))(
  ( (TokenValueInjection!8701 (toValue!6244 Int) (toChars!6103 Int)) )
))
(declare-datatypes ((Rule!8632 0))(
  ( (Rule!8633 (regex!4416 Regex!6796) (tag!4906 String!30320) (isSeparator!4416 Bool) (transformation!4416 TokenValueInjection!8700)) )
))
(declare-datatypes ((List!27833 0))(
  ( (Nil!27735) (Cons!27735 (h!33136 Rule!8632) (t!207555 List!27833)) )
))
(declare-fun rules!853 () List!27833)

(declare-fun isEmpty!15815 (List!27833) Bool)

(assert (=> start!229836 (= res!993984 (not (isEmpty!15815 rules!853)))))

(assert (=> start!229836 e!1491544))

(assert (=> start!229836 e!1491547))

(declare-datatypes ((Token!8310 0))(
  ( (Token!8311 (value!140227 TokenValue!4590) (rule!6772 Rule!8632) (size!21999 Int) (originalCharacters!5186 List!27832)) )
))
(declare-datatypes ((List!27834 0))(
  ( (Nil!27736) (Cons!27736 (h!33137 Token!8310) (t!207556 List!27834)) )
))
(declare-datatypes ((IArray!18179 0))(
  ( (IArray!18180 (innerList!9147 List!27834)) )
))
(declare-datatypes ((Conc!9087 0))(
  ( (Node!9087 (left!21046 Conc!9087) (right!21376 Conc!9087) (csize!18404 Int) (cheight!9298 Int)) (Leaf!13359 (xs!12067 IArray!18179) (csize!18405 Int)) (Empty!9087) )
))
(declare-datatypes ((BalanceConc!17786 0))(
  ( (BalanceConc!17787 (c!369878 Conc!9087)) )
))
(declare-fun tokens!300 () BalanceConc!17786)

(declare-fun e!1491548 () Bool)

(declare-fun inv!37772 (BalanceConc!17786) Bool)

(assert (=> start!229836 (and (inv!37772 tokens!300) e!1491548)))

(declare-fun b!2328000 () Bool)

(assert (=> b!2328000 (= e!1491544 false)))

(declare-fun lt!861982 () List!27834)

(declare-fun list!11030 (BalanceConc!17786) List!27834)

(assert (=> b!2328000 (= lt!861982 (list!11030 tokens!300))))

(declare-fun b!2328001 () Bool)

(declare-fun tp!737551 () Bool)

(declare-fun inv!37769 (String!30320) Bool)

(declare-fun inv!37773 (TokenValueInjection!8700) Bool)

(assert (=> b!2328001 (= e!1491545 (and tp!737551 (inv!37769 (tag!4906 (h!33136 rules!853))) (inv!37773 (transformation!4416 (h!33136 rules!853))) e!1491549))))

(declare-fun b!2328002 () Bool)

(declare-fun res!993983 () Bool)

(assert (=> b!2328002 (=> (not res!993983) (not e!1491544))))

(declare-datatypes ((LexerInterface!4013 0))(
  ( (LexerInterfaceExt!4010 (__x!18340 Int)) (Lexer!4011) )
))
(declare-fun rulesInvariant!3513 (LexerInterface!4013 List!27833) Bool)

(assert (=> b!2328002 (= res!993983 (rulesInvariant!3513 Lexer!4011 rules!853))))

(declare-fun b!2328003 () Bool)

(declare-fun tp!737553 () Bool)

(declare-fun inv!37774 (Conc!9087) Bool)

(assert (=> b!2328003 (= e!1491548 (and (inv!37774 (c!369878 tokens!300)) tp!737553))))

(assert (= (and start!229836 res!993984) b!2328002))

(assert (= (and b!2328002 res!993983) b!2328000))

(assert (= b!2328001 b!2327999))

(assert (= b!2327998 b!2328001))

(assert (= (and start!229836 (is-Cons!27735 rules!853)) b!2327998))

(assert (= start!229836 b!2328003))

(declare-fun m!2758747 () Bool)

(assert (=> b!2328002 m!2758747))

(declare-fun m!2758749 () Bool)

(assert (=> start!229836 m!2758749))

(declare-fun m!2758751 () Bool)

(assert (=> start!229836 m!2758751))

(declare-fun m!2758753 () Bool)

(assert (=> b!2328003 m!2758753))

(declare-fun m!2758755 () Bool)

(assert (=> b!2328000 m!2758755))

(declare-fun m!2758757 () Bool)

(assert (=> b!2328001 m!2758757))

(declare-fun m!2758759 () Bool)

(assert (=> b!2328001 m!2758759))

(push 1)

(assert (not b_next!70905))

(assert (not b!2328003))

(assert (not b!2328000))

(assert b_and!185113)

(assert (not start!229836))

(assert b_and!185115)

(assert (not b_next!70907))

(assert (not b!2328002))

(assert (not b!2328001))

(assert (not b!2327998))

(check-sat)

(pop 1)

(push 1)

(assert b_and!185113)

(assert b_and!185115)

(assert (not b_next!70907))

(assert (not b_next!70905))

(check-sat)

(pop 1)

