; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!146078 () Bool)

(assert start!146078)

(declare-datatypes ((Unit!26251 0))(
  ( (Unit!26252) )
))
(declare-fun lt!543245 () Unit!26251)

(declare-datatypes ((List!17108 0))(
  ( (Nil!17038) (Cons!17038 (h!22439 (_ BitVec 16)) (t!142405 List!17108)) )
))
(declare-datatypes ((TokenValue!3074 0))(
  ( (FloatLiteralValue!6148 (text!21963 List!17108)) (TokenValueExt!3073 (__x!11450 Int)) (Broken!15370 (value!94692 List!17108)) (Object!3143) (End!3074) (Def!3074) (Underscore!3074) (Match!3074) (Else!3074) (Error!3074) (Case!3074) (If!3074) (Extends!3074) (Abstract!3074) (Class!3074) (Val!3074) (DelimiterValue!6148 (del!3134 List!17108)) (KeywordValue!3080 (value!94693 List!17108)) (CommentValue!6148 (value!94694 List!17108)) (WhitespaceValue!6148 (value!94695 List!17108)) (IndentationValue!3074 (value!94696 List!17108)) (String!19703) (Int32!3074) (Broken!15371 (value!94697 List!17108)) (Boolean!3075) (Unit!26253) (OperatorValue!3077 (op!3134 List!17108)) (IdentifierValue!6148 (value!94698 List!17108)) (IdentifierValue!6149 (value!94699 List!17108)) (WhitespaceValue!6149 (value!94700 List!17108)) (True!6148) (False!6148) (Broken!15372 (value!94701 List!17108)) (Broken!15373 (value!94702 List!17108)) (True!6149) (RightBrace!3074) (RightBracket!3074) (Colon!3074) (Null!3074) (Comma!3074) (LeftBracket!3074) (False!6149) (LeftBrace!3074) (ImaginaryLiteralValue!3074 (text!21964 List!17108)) (StringLiteralValue!9222 (value!94703 List!17108)) (EOFValue!3074 (value!94704 List!17108)) (IdentValue!3074 (value!94705 List!17108)) (DelimiterValue!6149 (value!94706 List!17108)) (DedentValue!3074 (value!94707 List!17108)) (NewLineValue!3074 (value!94708 List!17108)) (IntegerValue!9222 (value!94709 (_ BitVec 32)) (text!21965 List!17108)) (IntegerValue!9223 (value!94710 Int) (text!21966 List!17108)) (Times!3074) (Or!3074) (Equal!3074) (Minus!3074) (Broken!15374 (value!94711 List!17108)) (And!3074) (Div!3074) (LessEqual!3074) (Mod!3074) (Concat!7386) (Not!3074) (Plus!3074) (SpaceValue!3074 (value!94712 List!17108)) (IntegerValue!9224 (value!94713 Int) (text!21967 List!17108)) (StringLiteralValue!9223 (text!21968 List!17108)) (FloatLiteralValue!6149 (text!21969 List!17108)) (BytesLiteralValue!3074 (value!94714 List!17108)) (CommentValue!6149 (value!94715 List!17108)) (StringLiteralValue!9224 (value!94716 List!17108)) (ErrorTokenValue!3074 (msg!3135 List!17108)) )
))
(declare-datatypes ((C!8798 0))(
  ( (C!8799 (val!4995 Int)) )
))
(declare-datatypes ((List!17109 0))(
  ( (Nil!17039) (Cons!17039 (h!22440 C!8798) (t!142406 List!17109)) )
))
(declare-datatypes ((IArray!11237 0))(
  ( (IArray!11238 (innerList!5676 List!17109)) )
))
(declare-datatypes ((Conc!5616 0))(
  ( (Node!5616 (left!13810 Conc!5616) (right!14140 Conc!5616) (csize!11462 Int) (cheight!5827 Int)) (Leaf!8329 (xs!8420 IArray!11237) (csize!11463 Int)) (Empty!5616) )
))
(declare-datatypes ((BalanceConc!11176 0))(
  ( (BalanceConc!11177 (c!254180 Conc!5616)) )
))
(declare-datatypes ((Regex!4312 0))(
  ( (ElementMatch!4312 (c!254181 C!8798)) (Concat!7387 (regOne!9136 Regex!4312) (regTwo!9136 Regex!4312)) (EmptyExpr!4312) (Star!4312 (reg!4641 Regex!4312)) (EmptyLang!4312) (Union!4312 (regOne!9137 Regex!4312) (regTwo!9137 Regex!4312)) )
))
(declare-datatypes ((String!19704 0))(
  ( (String!19705 (value!94717 String)) )
))
(declare-datatypes ((TokenValueInjection!5808 0))(
  ( (TokenValueInjection!5809 (toValue!4375 Int) (toChars!4234 Int)) )
))
(declare-datatypes ((Rule!5768 0))(
  ( (Rule!5769 (regex!2984 Regex!4312) (tag!3248 String!19704) (isSeparator!2984 Bool) (transformation!2984 TokenValueInjection!5808)) )
))
(declare-datatypes ((Token!5534 0))(
  ( (Token!5535 (value!94718 TokenValue!3074) (rule!4770 Rule!5768) (size!13819 Int) (originalCharacters!3798 List!17109)) )
))
(declare-datatypes ((List!17110 0))(
  ( (Nil!17040) (Cons!17040 (h!22441 Token!5534) (t!142407 List!17110)) )
))
(declare-datatypes ((IArray!11239 0))(
  ( (IArray!11240 (innerList!5677 List!17110)) )
))
(declare-datatypes ((Conc!5617 0))(
  ( (Node!5617 (left!13811 Conc!5617) (right!14141 Conc!5617) (csize!11464 Int) (cheight!5828 Int)) (Leaf!8330 (xs!8421 IArray!11239) (csize!11465 Int)) (Empty!5617) )
))
(declare-datatypes ((BalanceConc!11178 0))(
  ( (BalanceConc!11179 (c!254182 Conc!5617)) )
))
(declare-datatypes ((List!17111 0))(
  ( (Nil!17041) (Cons!17041 (h!22442 Rule!5768) (t!142408 List!17111)) )
))
(declare-datatypes ((PrintableTokens!1186 0))(
  ( (PrintableTokens!1187 (rules!12113 List!17111) (tokens!2207 BalanceConc!11178)) )
))
(declare-fun thiss!10002 () PrintableTokens!1186)

(declare-datatypes ((LexerInterface!2613 0))(
  ( (LexerInterfaceExt!2610 (__x!11451 Int)) (Lexer!2611) )
))
(declare-fun theoremInvertabilityWhenTokenListSeparable!82 (LexerInterface!2613 List!17111 List!17110) Unit!26251)

(declare-fun list!6560 (BalanceConc!11178) List!17110)

(assert (=> start!146078 (= lt!543245 (theoremInvertabilityWhenTokenListSeparable!82 Lexer!2611 (rules!12113 thiss!10002) (list!6560 (tokens!2207 thiss!10002))))))

(assert (=> start!146078 false))

(declare-fun e!1007361 () Bool)

(declare-fun inv!22420 (PrintableTokens!1186) Bool)

(assert (=> start!146078 (and (inv!22420 thiss!10002) e!1007361)))

(declare-fun b!1568567 () Bool)

(declare-fun e!1007362 () Bool)

(declare-fun tp!461910 () Bool)

(declare-fun inv!22421 (Conc!5617) Bool)

(assert (=> b!1568567 (= e!1007362 (and (inv!22421 (c!254182 (tokens!2207 thiss!10002))) tp!461910))))

(declare-fun b!1568566 () Bool)

(declare-fun tp!461909 () Bool)

(declare-fun inv!22422 (BalanceConc!11178) Bool)

(assert (=> b!1568566 (= e!1007361 (and tp!461909 (inv!22422 (tokens!2207 thiss!10002)) e!1007362))))

(assert (= b!1568566 b!1568567))

(assert (= start!146078 b!1568566))

(declare-fun m!1842279 () Bool)

(assert (=> start!146078 m!1842279))

(assert (=> start!146078 m!1842279))

(declare-fun m!1842281 () Bool)

(assert (=> start!146078 m!1842281))

(declare-fun m!1842283 () Bool)

(assert (=> start!146078 m!1842283))

(declare-fun m!1842285 () Bool)

(assert (=> b!1568567 m!1842285))

(declare-fun m!1842287 () Bool)

(assert (=> b!1568566 m!1842287))

(push 1)

(assert (not b!1568566))

(assert (not start!146078))

(assert (not b!1568567))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

