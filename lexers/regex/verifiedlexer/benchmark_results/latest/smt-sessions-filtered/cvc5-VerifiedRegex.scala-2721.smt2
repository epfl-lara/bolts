; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!146788 () Bool)

(assert start!146788)

(declare-fun b!1572936 () Bool)

(declare-fun b_free!42079 () Bool)

(declare-fun b_next!42783 () Bool)

(assert (=> b!1572936 (= b_free!42079 (not b_next!42783))))

(declare-fun tp!462564 () Bool)

(declare-fun b_and!109885 () Bool)

(assert (=> b!1572936 (= tp!462564 b_and!109885)))

(declare-fun b_free!42081 () Bool)

(declare-fun b_next!42785 () Bool)

(assert (=> b!1572936 (= b_free!42081 (not b_next!42785))))

(declare-fun tp!462557 () Bool)

(declare-fun b_and!109887 () Bool)

(assert (=> b!1572936 (= tp!462557 b_and!109887)))

(declare-fun b!1572937 () Bool)

(declare-fun b_free!42083 () Bool)

(declare-fun b_next!42787 () Bool)

(assert (=> b!1572937 (= b_free!42083 (not b_next!42787))))

(declare-fun tp!462561 () Bool)

(declare-fun b_and!109889 () Bool)

(assert (=> b!1572937 (= tp!462561 b_and!109889)))

(declare-fun b_free!42085 () Bool)

(declare-fun b_next!42789 () Bool)

(assert (=> b!1572937 (= b_free!42085 (not b_next!42789))))

(declare-fun tp!462560 () Bool)

(declare-fun b_and!109891 () Bool)

(assert (=> b!1572937 (= tp!462560 b_and!109891)))

(declare-fun b!1572929 () Bool)

(declare-fun res!701016 () Bool)

(declare-fun e!1009986 () Bool)

(assert (=> b!1572929 (=> (not res!701016) (not e!1009986))))

(declare-datatypes ((LexerInterface!2631 0))(
  ( (LexerInterfaceExt!2628 (__x!11486 Int)) (Lexer!2629) )
))
(declare-fun thiss!17113 () LexerInterface!2631)

(declare-datatypes ((List!17187 0))(
  ( (Nil!17117) (Cons!17117 (h!22518 (_ BitVec 16)) (t!143090 List!17187)) )
))
(declare-datatypes ((TokenValue!3092 0))(
  ( (FloatLiteralValue!6184 (text!22089 List!17187)) (TokenValueExt!3091 (__x!11487 Int)) (Broken!15460 (value!95205 List!17187)) (Object!3161) (End!3092) (Def!3092) (Underscore!3092) (Match!3092) (Else!3092) (Error!3092) (Case!3092) (If!3092) (Extends!3092) (Abstract!3092) (Class!3092) (Val!3092) (DelimiterValue!6184 (del!3152 List!17187)) (KeywordValue!3098 (value!95206 List!17187)) (CommentValue!6184 (value!95207 List!17187)) (WhitespaceValue!6184 (value!95208 List!17187)) (IndentationValue!3092 (value!95209 List!17187)) (String!19793) (Int32!3092) (Broken!15461 (value!95210 List!17187)) (Boolean!3093) (Unit!26541) (OperatorValue!3095 (op!3152 List!17187)) (IdentifierValue!6184 (value!95211 List!17187)) (IdentifierValue!6185 (value!95212 List!17187)) (WhitespaceValue!6185 (value!95213 List!17187)) (True!6184) (False!6184) (Broken!15462 (value!95214 List!17187)) (Broken!15463 (value!95215 List!17187)) (True!6185) (RightBrace!3092) (RightBracket!3092) (Colon!3092) (Null!3092) (Comma!3092) (LeftBracket!3092) (False!6185) (LeftBrace!3092) (ImaginaryLiteralValue!3092 (text!22090 List!17187)) (StringLiteralValue!9276 (value!95216 List!17187)) (EOFValue!3092 (value!95217 List!17187)) (IdentValue!3092 (value!95218 List!17187)) (DelimiterValue!6185 (value!95219 List!17187)) (DedentValue!3092 (value!95220 List!17187)) (NewLineValue!3092 (value!95221 List!17187)) (IntegerValue!9276 (value!95222 (_ BitVec 32)) (text!22091 List!17187)) (IntegerValue!9277 (value!95223 Int) (text!22092 List!17187)) (Times!3092) (Or!3092) (Equal!3092) (Minus!3092) (Broken!15464 (value!95224 List!17187)) (And!3092) (Div!3092) (LessEqual!3092) (Mod!3092) (Concat!7422) (Not!3092) (Plus!3092) (SpaceValue!3092 (value!95225 List!17187)) (IntegerValue!9278 (value!95226 Int) (text!22093 List!17187)) (StringLiteralValue!9277 (text!22094 List!17187)) (FloatLiteralValue!6185 (text!22095 List!17187)) (BytesLiteralValue!3092 (value!95227 List!17187)) (CommentValue!6185 (value!95228 List!17187)) (StringLiteralValue!9278 (value!95229 List!17187)) (ErrorTokenValue!3092 (msg!3153 List!17187)) )
))
(declare-datatypes ((C!8834 0))(
  ( (C!8835 (val!5013 Int)) )
))
(declare-datatypes ((List!17188 0))(
  ( (Nil!17118) (Cons!17118 (h!22519 C!8834) (t!143091 List!17188)) )
))
(declare-datatypes ((IArray!11309 0))(
  ( (IArray!11310 (innerList!5712 List!17188)) )
))
(declare-datatypes ((Conc!5652 0))(
  ( (Node!5652 (left!13859 Conc!5652) (right!14189 Conc!5652) (csize!11534 Int) (cheight!5863 Int)) (Leaf!8374 (xs!8456 IArray!11309) (csize!11535 Int)) (Empty!5652) )
))
(declare-datatypes ((BalanceConc!11248 0))(
  ( (BalanceConc!11249 (c!255131 Conc!5652)) )
))
(declare-datatypes ((Regex!4330 0))(
  ( (ElementMatch!4330 (c!255132 C!8834)) (Concat!7423 (regOne!9172 Regex!4330) (regTwo!9172 Regex!4330)) (EmptyExpr!4330) (Star!4330 (reg!4659 Regex!4330)) (EmptyLang!4330) (Union!4330 (regOne!9173 Regex!4330) (regTwo!9173 Regex!4330)) )
))
(declare-datatypes ((String!19794 0))(
  ( (String!19795 (value!95230 String)) )
))
(declare-datatypes ((TokenValueInjection!5844 0))(
  ( (TokenValueInjection!5845 (toValue!4397 Int) (toChars!4256 Int)) )
))
(declare-datatypes ((Rule!5804 0))(
  ( (Rule!5805 (regex!3002 Regex!4330) (tag!3268 String!19794) (isSeparator!3002 Bool) (transformation!3002 TokenValueInjection!5844)) )
))
(declare-datatypes ((List!17189 0))(
  ( (Nil!17119) (Cons!17119 (h!22520 Rule!5804) (t!143092 List!17189)) )
))
(declare-fun rules!1846 () List!17189)

(declare-fun rulesInvariant!2300 (LexerInterface!2631 List!17189) Bool)

(assert (=> b!1572929 (= res!701016 (rulesInvariant!2300 thiss!17113 rules!1846))))

(declare-fun b!1572930 () Bool)

(declare-fun res!701015 () Bool)

(assert (=> b!1572930 (=> (not res!701015) (not e!1009986))))

(declare-datatypes ((Token!5570 0))(
  ( (Token!5571 (value!95231 TokenValue!3092) (rule!4794 Rule!5804) (size!13855 Int) (originalCharacters!3816 List!17188)) )
))
(declare-datatypes ((List!17190 0))(
  ( (Nil!17120) (Cons!17120 (h!22521 Token!5570) (t!143093 List!17190)) )
))
(declare-fun tokens!457 () List!17190)

(declare-fun rulesProduceEachTokenIndividuallyList!833 (LexerInterface!2631 List!17189 List!17190) Bool)

(assert (=> b!1572930 (= res!701015 (rulesProduceEachTokenIndividuallyList!833 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1572931 () Bool)

(declare-fun res!701017 () Bool)

(assert (=> b!1572931 (=> (not res!701017) (not e!1009986))))

(declare-fun isEmpty!10252 (List!17189) Bool)

(assert (=> b!1572931 (= res!701017 (not (isEmpty!10252 rules!1846)))))

(declare-fun b!1572932 () Bool)

(declare-fun res!701018 () Bool)

(assert (=> b!1572932 (=> (not res!701018) (not e!1009986))))

(assert (=> b!1572932 (= res!701018 (is-Nil!17120 tokens!457))))

(declare-fun res!701014 () Bool)

(assert (=> start!146788 (=> (not res!701014) (not e!1009986))))

(assert (=> start!146788 (= res!701014 (is-Lexer!2629 thiss!17113))))

(assert (=> start!146788 e!1009986))

(assert (=> start!146788 true))

(declare-fun e!1009987 () Bool)

(assert (=> start!146788 e!1009987))

(declare-fun e!1009984 () Bool)

(assert (=> start!146788 e!1009984))

(declare-fun e!1009985 () Bool)

(declare-fun tp!462563 () Bool)

(declare-fun e!1009982 () Bool)

(declare-fun b!1572933 () Bool)

(declare-fun inv!22536 (String!19794) Bool)

(declare-fun inv!22539 (TokenValueInjection!5844) Bool)

(assert (=> b!1572933 (= e!1009982 (and tp!462563 (inv!22536 (tag!3268 (rule!4794 (h!22521 tokens!457)))) (inv!22539 (transformation!3002 (rule!4794 (h!22521 tokens!457)))) e!1009985))))

(declare-fun e!1009983 () Bool)

(declare-fun tp!462565 () Bool)

(declare-fun b!1572934 () Bool)

(declare-fun inv!22540 (Token!5570) Bool)

(assert (=> b!1572934 (= e!1009984 (and (inv!22540 (h!22521 tokens!457)) e!1009983 tp!462565))))

(declare-fun b!1572935 () Bool)

(declare-fun e!1009988 () Bool)

(declare-fun tp!462562 () Bool)

(assert (=> b!1572935 (= e!1009987 (and e!1009988 tp!462562))))

(assert (=> b!1572936 (= e!1009985 (and tp!462564 tp!462557))))

(declare-fun e!1009981 () Bool)

(assert (=> b!1572937 (= e!1009981 (and tp!462561 tp!462560))))

(declare-fun tp!462558 () Bool)

(declare-fun b!1572938 () Bool)

(assert (=> b!1572938 (= e!1009988 (and tp!462558 (inv!22536 (tag!3268 (h!22520 rules!1846))) (inv!22539 (transformation!3002 (h!22520 rules!1846))) e!1009981))))

(declare-fun tp!462559 () Bool)

(declare-fun b!1572939 () Bool)

(declare-fun inv!21 (TokenValue!3092) Bool)

(assert (=> b!1572939 (= e!1009983 (and (inv!21 (value!95231 (h!22521 tokens!457))) e!1009982 tp!462559))))

(declare-fun b!1572940 () Bool)

(assert (=> b!1572940 (= e!1009986 false)))

(declare-fun lt!546879 () BalanceConc!11248)

(declare-datatypes ((IArray!11311 0))(
  ( (IArray!11312 (innerList!5713 List!17190)) )
))
(declare-datatypes ((Conc!5653 0))(
  ( (Node!5653 (left!13860 Conc!5653) (right!14190 Conc!5653) (csize!11536 Int) (cheight!5864 Int)) (Leaf!8375 (xs!8457 IArray!11311) (csize!11537 Int)) (Empty!5653) )
))
(declare-datatypes ((BalanceConc!11250 0))(
  ( (BalanceConc!11251 (c!255133 Conc!5653)) )
))
(declare-fun print!1166 (LexerInterface!2631 BalanceConc!11250) BalanceConc!11248)

(declare-fun seqFromList!1799 (List!17190) BalanceConc!11250)

(assert (=> b!1572940 (= lt!546879 (print!1166 thiss!17113 (seqFromList!1799 tokens!457)))))

(declare-fun b!1572941 () Bool)

(declare-fun res!701013 () Bool)

(assert (=> b!1572941 (=> (not res!701013) (not e!1009986))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!324 (LexerInterface!2631 List!17190 List!17189) Bool)

(assert (=> b!1572941 (= res!701013 (tokensListTwoByTwoPredicateSeparableList!324 thiss!17113 tokens!457 rules!1846))))

(assert (= (and start!146788 res!701014) b!1572931))

(assert (= (and b!1572931 res!701017) b!1572929))

(assert (= (and b!1572929 res!701016) b!1572930))

(assert (= (and b!1572930 res!701015) b!1572941))

(assert (= (and b!1572941 res!701013) b!1572932))

(assert (= (and b!1572932 res!701018) b!1572940))

(assert (= b!1572938 b!1572937))

(assert (= b!1572935 b!1572938))

(assert (= (and start!146788 (is-Cons!17119 rules!1846)) b!1572935))

(assert (= b!1572933 b!1572936))

(assert (= b!1572939 b!1572933))

(assert (= b!1572934 b!1572939))

(assert (= (and start!146788 (is-Cons!17120 tokens!457)) b!1572934))

(declare-fun m!1852065 () Bool)

(assert (=> b!1572938 m!1852065))

(declare-fun m!1852067 () Bool)

(assert (=> b!1572938 m!1852067))

(declare-fun m!1852069 () Bool)

(assert (=> b!1572940 m!1852069))

(assert (=> b!1572940 m!1852069))

(declare-fun m!1852071 () Bool)

(assert (=> b!1572940 m!1852071))

(declare-fun m!1852073 () Bool)

(assert (=> b!1572934 m!1852073))

(declare-fun m!1852075 () Bool)

(assert (=> b!1572930 m!1852075))

(declare-fun m!1852077 () Bool)

(assert (=> b!1572929 m!1852077))

(declare-fun m!1852079 () Bool)

(assert (=> b!1572939 m!1852079))

(declare-fun m!1852081 () Bool)

(assert (=> b!1572941 m!1852081))

(declare-fun m!1852083 () Bool)

(assert (=> b!1572931 m!1852083))

(declare-fun m!1852085 () Bool)

(assert (=> b!1572933 m!1852085))

(declare-fun m!1852087 () Bool)

(assert (=> b!1572933 m!1852087))

(push 1)

(assert (not b_next!42783))

(assert (not b!1572934))

(assert (not b!1572935))

(assert (not b_next!42785))

(assert (not b!1572940))

(assert (not b_next!42787))

(assert (not b_next!42789))

(assert (not b!1572930))

(assert (not b!1572939))

(assert b_and!109889)

(assert (not b!1572931))

(assert b_and!109885)

(assert (not b!1572929))

(assert b_and!109887)

(assert b_and!109891)

(assert (not b!1572941))

(assert (not b!1572933))

(assert (not b!1572938))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!42783))

(assert (not b_next!42785))

(assert (not b_next!42787))

(assert (not b_next!42789))

(assert b_and!109891)

(assert b_and!109889)

(assert b_and!109885)

(assert b_and!109887)

(check-sat)

(pop 1)

