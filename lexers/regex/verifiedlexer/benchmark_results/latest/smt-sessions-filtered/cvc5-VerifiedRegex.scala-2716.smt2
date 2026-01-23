; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!146152 () Bool)

(assert start!146152)

(declare-datatypes ((List!17141 0))(
  ( (Nil!17071) (Cons!17071 (h!22472 (_ BitVec 16)) (t!142438 List!17141)) )
))
(declare-datatypes ((TokenValue!3082 0))(
  ( (FloatLiteralValue!6164 (text!22019 List!17141)) (TokenValueExt!3081 (__x!11466 Int)) (Broken!15410 (value!94920 List!17141)) (Object!3151) (End!3082) (Def!3082) (Underscore!3082) (Match!3082) (Else!3082) (Error!3082) (Case!3082) (If!3082) (Extends!3082) (Abstract!3082) (Class!3082) (Val!3082) (DelimiterValue!6164 (del!3142 List!17141)) (KeywordValue!3088 (value!94921 List!17141)) (CommentValue!6164 (value!94922 List!17141)) (WhitespaceValue!6164 (value!94923 List!17141)) (IndentationValue!3082 (value!94924 List!17141)) (String!19743) (Int32!3082) (Broken!15411 (value!94925 List!17141)) (Boolean!3083) (Unit!26303) (OperatorValue!3085 (op!3142 List!17141)) (IdentifierValue!6164 (value!94926 List!17141)) (IdentifierValue!6165 (value!94927 List!17141)) (WhitespaceValue!6165 (value!94928 List!17141)) (True!6164) (False!6164) (Broken!15412 (value!94929 List!17141)) (Broken!15413 (value!94930 List!17141)) (True!6165) (RightBrace!3082) (RightBracket!3082) (Colon!3082) (Null!3082) (Comma!3082) (LeftBracket!3082) (False!6165) (LeftBrace!3082) (ImaginaryLiteralValue!3082 (text!22020 List!17141)) (StringLiteralValue!9246 (value!94931 List!17141)) (EOFValue!3082 (value!94932 List!17141)) (IdentValue!3082 (value!94933 List!17141)) (DelimiterValue!6165 (value!94934 List!17141)) (DedentValue!3082 (value!94935 List!17141)) (NewLineValue!3082 (value!94936 List!17141)) (IntegerValue!9246 (value!94937 (_ BitVec 32)) (text!22021 List!17141)) (IntegerValue!9247 (value!94938 Int) (text!22022 List!17141)) (Times!3082) (Or!3082) (Equal!3082) (Minus!3082) (Broken!15414 (value!94939 List!17141)) (And!3082) (Div!3082) (LessEqual!3082) (Mod!3082) (Concat!7402) (Not!3082) (Plus!3082) (SpaceValue!3082 (value!94940 List!17141)) (IntegerValue!9248 (value!94941 Int) (text!22023 List!17141)) (StringLiteralValue!9247 (text!22024 List!17141)) (FloatLiteralValue!6165 (text!22025 List!17141)) (BytesLiteralValue!3082 (value!94942 List!17141)) (CommentValue!6165 (value!94943 List!17141)) (StringLiteralValue!9248 (value!94944 List!17141)) (ErrorTokenValue!3082 (msg!3143 List!17141)) )
))
(declare-datatypes ((C!8814 0))(
  ( (C!8815 (val!5003 Int)) )
))
(declare-datatypes ((List!17142 0))(
  ( (Nil!17072) (Cons!17072 (h!22473 C!8814) (t!142439 List!17142)) )
))
(declare-datatypes ((IArray!11269 0))(
  ( (IArray!11270 (innerList!5692 List!17142)) )
))
(declare-datatypes ((Conc!5632 0))(
  ( (Node!5632 (left!13830 Conc!5632) (right!14160 Conc!5632) (csize!11494 Int) (cheight!5843 Int)) (Leaf!8349 (xs!8436 IArray!11269) (csize!11495 Int)) (Empty!5632) )
))
(declare-datatypes ((BalanceConc!11208 0))(
  ( (BalanceConc!11209 (c!254233 Conc!5632)) )
))
(declare-datatypes ((Regex!4320 0))(
  ( (ElementMatch!4320 (c!254234 C!8814)) (Concat!7403 (regOne!9152 Regex!4320) (regTwo!9152 Regex!4320)) (EmptyExpr!4320) (Star!4320 (reg!4649 Regex!4320)) (EmptyLang!4320) (Union!4320 (regOne!9153 Regex!4320) (regTwo!9153 Regex!4320)) )
))
(declare-datatypes ((String!19744 0))(
  ( (String!19745 (value!94945 String)) )
))
(declare-datatypes ((TokenValueInjection!5824 0))(
  ( (TokenValueInjection!5825 (toValue!4383 Int) (toChars!4242 Int)) )
))
(declare-datatypes ((Rule!5784 0))(
  ( (Rule!5785 (regex!2992 Regex!4320) (tag!3256 String!19744) (isSeparator!2992 Bool) (transformation!2992 TokenValueInjection!5824)) )
))
(declare-datatypes ((Token!5550 0))(
  ( (Token!5551 (value!94946 TokenValue!3082) (rule!4778 Rule!5784) (size!13827 Int) (originalCharacters!3806 List!17142)) )
))
(declare-datatypes ((List!17143 0))(
  ( (Nil!17073) (Cons!17073 (h!22474 Token!5550) (t!142440 List!17143)) )
))
(declare-fun lt!543614 () List!17143)

(declare-datatypes ((IArray!11271 0))(
  ( (IArray!11272 (innerList!5693 List!17143)) )
))
(declare-datatypes ((Conc!5633 0))(
  ( (Node!5633 (left!13831 Conc!5633) (right!14161 Conc!5633) (csize!11496 Int) (cheight!5844 Int)) (Leaf!8350 (xs!8437 IArray!11271) (csize!11497 Int)) (Empty!5633) )
))
(declare-datatypes ((BalanceConc!11210 0))(
  ( (BalanceConc!11211 (c!254235 Conc!5633)) )
))
(declare-datatypes ((List!17144 0))(
  ( (Nil!17074) (Cons!17074 (h!22475 Rule!5784) (t!142441 List!17144)) )
))
(declare-datatypes ((PrintableTokens!1202 0))(
  ( (PrintableTokens!1203 (rules!12127 List!17144) (tokens!2219 BalanceConc!11210)) )
))
(declare-fun thiss!10002 () PrintableTokens!1202)

(declare-fun list!6572 (BalanceConc!11210) List!17143)

(declare-datatypes ((tuple2!16620 0))(
  ( (tuple2!16621 (_1!9712 BalanceConc!11210) (_2!9712 BalanceConc!11208)) )
))
(declare-datatypes ((LexerInterface!2621 0))(
  ( (LexerInterfaceExt!2618 (__x!11467 Int)) (Lexer!2619) )
))
(declare-fun lex!1119 (LexerInterface!2621 List!17144 BalanceConc!11208) tuple2!16620)

(declare-fun print!1158 (LexerInterface!2621 BalanceConc!11210) BalanceConc!11208)

(assert (=> start!146152 (= lt!543614 (list!6572 (_1!9712 (lex!1119 Lexer!2619 (rules!12127 thiss!10002) (print!1158 Lexer!2619 (tokens!2219 thiss!10002))))))))

(declare-datatypes ((Unit!26304 0))(
  ( (Unit!26305) )
))
(declare-fun lt!543613 () Unit!26304)

(declare-fun theoremInvertabilityWhenTokenListSeparable!90 (LexerInterface!2621 List!17144 List!17143) Unit!26304)

(assert (=> start!146152 (= lt!543613 (theoremInvertabilityWhenTokenListSeparable!90 Lexer!2619 (rules!12127 thiss!10002) (list!6572 (tokens!2219 thiss!10002))))))

(assert (=> start!146152 false))

(declare-fun e!1007547 () Bool)

(declare-fun inv!22464 (PrintableTokens!1202) Bool)

(assert (=> start!146152 (and (inv!22464 thiss!10002) e!1007547)))

(declare-fun b!1568814 () Bool)

(declare-fun e!1007548 () Bool)

(declare-fun tp!462041 () Bool)

(declare-fun inv!22465 (Conc!5633) Bool)

(assert (=> b!1568814 (= e!1007548 (and (inv!22465 (c!254235 (tokens!2219 thiss!10002))) tp!462041))))

(declare-fun tp!462042 () Bool)

(declare-fun b!1568813 () Bool)

(declare-fun inv!22466 (BalanceConc!11210) Bool)

(assert (=> b!1568813 (= e!1007547 (and tp!462042 (inv!22466 (tokens!2219 thiss!10002)) e!1007548))))

(assert (= b!1568813 b!1568814))

(assert (= start!146152 b!1568813))

(declare-fun m!1842805 () Bool)

(assert (=> start!146152 m!1842805))

(declare-fun m!1842807 () Bool)

(assert (=> start!146152 m!1842807))

(declare-fun m!1842809 () Bool)

(assert (=> start!146152 m!1842809))

(declare-fun m!1842811 () Bool)

(assert (=> start!146152 m!1842811))

(assert (=> start!146152 m!1842807))

(declare-fun m!1842813 () Bool)

(assert (=> start!146152 m!1842813))

(assert (=> start!146152 m!1842805))

(declare-fun m!1842815 () Bool)

(assert (=> start!146152 m!1842815))

(declare-fun m!1842817 () Bool)

(assert (=> b!1568814 m!1842817))

(declare-fun m!1842819 () Bool)

(assert (=> b!1568813 m!1842819))

(push 1)

(assert (not b!1568814))

(assert (not b!1568813))

(assert (not start!146152))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

