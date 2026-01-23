; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!146784 () Bool)

(assert start!146784)

(declare-fun b!1572857 () Bool)

(declare-fun b_free!42063 () Bool)

(declare-fun b_next!42767 () Bool)

(assert (=> b!1572857 (= b_free!42063 (not b_next!42767))))

(declare-fun tp!462504 () Bool)

(declare-fun b_and!109869 () Bool)

(assert (=> b!1572857 (= tp!462504 b_and!109869)))

(declare-fun b_free!42065 () Bool)

(declare-fun b_next!42769 () Bool)

(assert (=> b!1572857 (= b_free!42065 (not b_next!42769))))

(declare-fun tp!462503 () Bool)

(declare-fun b_and!109871 () Bool)

(assert (=> b!1572857 (= tp!462503 b_and!109871)))

(declare-fun b!1572862 () Bool)

(declare-fun b_free!42067 () Bool)

(declare-fun b_next!42771 () Bool)

(assert (=> b!1572862 (= b_free!42067 (not b_next!42771))))

(declare-fun tp!462508 () Bool)

(declare-fun b_and!109873 () Bool)

(assert (=> b!1572862 (= tp!462508 b_and!109873)))

(declare-fun b_free!42069 () Bool)

(declare-fun b_next!42773 () Bool)

(assert (=> b!1572862 (= b_free!42069 (not b_next!42773))))

(declare-fun tp!462511 () Bool)

(declare-fun b_and!109875 () Bool)

(assert (=> b!1572862 (= tp!462511 b_and!109875)))

(declare-fun b!1572851 () Bool)

(declare-fun e!1009918 () Bool)

(declare-fun e!1009916 () Bool)

(declare-fun tp!462509 () Bool)

(assert (=> b!1572851 (= e!1009918 (and e!1009916 tp!462509))))

(declare-fun tp!462510 () Bool)

(declare-fun e!1009917 () Bool)

(declare-fun e!1009922 () Bool)

(declare-datatypes ((List!17179 0))(
  ( (Nil!17109) (Cons!17109 (h!22510 (_ BitVec 16)) (t!143082 List!17179)) )
))
(declare-datatypes ((TokenValue!3090 0))(
  ( (FloatLiteralValue!6180 (text!22075 List!17179)) (TokenValueExt!3089 (__x!11482 Int)) (Broken!15450 (value!95148 List!17179)) (Object!3159) (End!3090) (Def!3090) (Underscore!3090) (Match!3090) (Else!3090) (Error!3090) (Case!3090) (If!3090) (Extends!3090) (Abstract!3090) (Class!3090) (Val!3090) (DelimiterValue!6180 (del!3150 List!17179)) (KeywordValue!3096 (value!95149 List!17179)) (CommentValue!6180 (value!95150 List!17179)) (WhitespaceValue!6180 (value!95151 List!17179)) (IndentationValue!3090 (value!95152 List!17179)) (String!19783) (Int32!3090) (Broken!15451 (value!95153 List!17179)) (Boolean!3091) (Unit!26539) (OperatorValue!3093 (op!3150 List!17179)) (IdentifierValue!6180 (value!95154 List!17179)) (IdentifierValue!6181 (value!95155 List!17179)) (WhitespaceValue!6181 (value!95156 List!17179)) (True!6180) (False!6180) (Broken!15452 (value!95157 List!17179)) (Broken!15453 (value!95158 List!17179)) (True!6181) (RightBrace!3090) (RightBracket!3090) (Colon!3090) (Null!3090) (Comma!3090) (LeftBracket!3090) (False!6181) (LeftBrace!3090) (ImaginaryLiteralValue!3090 (text!22076 List!17179)) (StringLiteralValue!9270 (value!95159 List!17179)) (EOFValue!3090 (value!95160 List!17179)) (IdentValue!3090 (value!95161 List!17179)) (DelimiterValue!6181 (value!95162 List!17179)) (DedentValue!3090 (value!95163 List!17179)) (NewLineValue!3090 (value!95164 List!17179)) (IntegerValue!9270 (value!95165 (_ BitVec 32)) (text!22077 List!17179)) (IntegerValue!9271 (value!95166 Int) (text!22078 List!17179)) (Times!3090) (Or!3090) (Equal!3090) (Minus!3090) (Broken!15454 (value!95167 List!17179)) (And!3090) (Div!3090) (LessEqual!3090) (Mod!3090) (Concat!7418) (Not!3090) (Plus!3090) (SpaceValue!3090 (value!95168 List!17179)) (IntegerValue!9272 (value!95169 Int) (text!22079 List!17179)) (StringLiteralValue!9271 (text!22080 List!17179)) (FloatLiteralValue!6181 (text!22081 List!17179)) (BytesLiteralValue!3090 (value!95170 List!17179)) (CommentValue!6181 (value!95171 List!17179)) (StringLiteralValue!9272 (value!95172 List!17179)) (ErrorTokenValue!3090 (msg!3151 List!17179)) )
))
(declare-datatypes ((C!8830 0))(
  ( (C!8831 (val!5011 Int)) )
))
(declare-datatypes ((List!17180 0))(
  ( (Nil!17110) (Cons!17110 (h!22511 C!8830) (t!143083 List!17180)) )
))
(declare-datatypes ((IArray!11301 0))(
  ( (IArray!11302 (innerList!5708 List!17180)) )
))
(declare-datatypes ((Conc!5648 0))(
  ( (Node!5648 (left!13854 Conc!5648) (right!14184 Conc!5648) (csize!11526 Int) (cheight!5859 Int)) (Leaf!8369 (xs!8452 IArray!11301) (csize!11527 Int)) (Empty!5648) )
))
(declare-datatypes ((BalanceConc!11240 0))(
  ( (BalanceConc!11241 (c!255123 Conc!5648)) )
))
(declare-datatypes ((Regex!4328 0))(
  ( (ElementMatch!4328 (c!255124 C!8830)) (Concat!7419 (regOne!9168 Regex!4328) (regTwo!9168 Regex!4328)) (EmptyExpr!4328) (Star!4328 (reg!4657 Regex!4328)) (EmptyLang!4328) (Union!4328 (regOne!9169 Regex!4328) (regTwo!9169 Regex!4328)) )
))
(declare-datatypes ((String!19784 0))(
  ( (String!19785 (value!95173 String)) )
))
(declare-datatypes ((TokenValueInjection!5840 0))(
  ( (TokenValueInjection!5841 (toValue!4395 Int) (toChars!4254 Int)) )
))
(declare-datatypes ((Rule!5800 0))(
  ( (Rule!5801 (regex!3000 Regex!4328) (tag!3266 String!19784) (isSeparator!3000 Bool) (transformation!3000 TokenValueInjection!5840)) )
))
(declare-datatypes ((Token!5566 0))(
  ( (Token!5567 (value!95174 TokenValue!3090) (rule!4792 Rule!5800) (size!13853 Int) (originalCharacters!3814 List!17180)) )
))
(declare-datatypes ((List!17181 0))(
  ( (Nil!17111) (Cons!17111 (h!22512 Token!5566) (t!143084 List!17181)) )
))
(declare-fun tokens!457 () List!17181)

(declare-fun b!1572852 () Bool)

(declare-fun inv!22529 (String!19784) Bool)

(declare-fun inv!22532 (TokenValueInjection!5840) Bool)

(assert (=> b!1572852 (= e!1009922 (and tp!462510 (inv!22529 (tag!3266 (rule!4792 (h!22512 tokens!457)))) (inv!22532 (transformation!3000 (rule!4792 (h!22512 tokens!457)))) e!1009917))))

(declare-fun b!1572853 () Bool)

(declare-fun res!700977 () Bool)

(declare-fun e!1009925 () Bool)

(assert (=> b!1572853 (=> (not res!700977) (not e!1009925))))

(declare-datatypes ((List!17182 0))(
  ( (Nil!17112) (Cons!17112 (h!22513 Rule!5800) (t!143085 List!17182)) )
))
(declare-fun rules!1846 () List!17182)

(declare-datatypes ((LexerInterface!2629 0))(
  ( (LexerInterfaceExt!2626 (__x!11483 Int)) (Lexer!2627) )
))
(declare-fun thiss!17113 () LexerInterface!2629)

(declare-fun tokensListTwoByTwoPredicateSeparableList!322 (LexerInterface!2629 List!17181 List!17182) Bool)

(assert (=> b!1572853 (= res!700977 (tokensListTwoByTwoPredicateSeparableList!322 thiss!17113 tokens!457 rules!1846))))

(declare-fun e!1009915 () Bool)

(declare-fun b!1572854 () Bool)

(declare-fun tp!462505 () Bool)

(declare-fun inv!21 (TokenValue!3090) Bool)

(assert (=> b!1572854 (= e!1009915 (and (inv!21 (value!95174 (h!22512 tokens!457))) e!1009922 tp!462505))))

(declare-fun b!1572855 () Bool)

(declare-fun res!700979 () Bool)

(assert (=> b!1572855 (=> (not res!700979) (not e!1009925))))

(declare-fun rulesInvariant!2298 (LexerInterface!2629 List!17182) Bool)

(assert (=> b!1572855 (= res!700979 (rulesInvariant!2298 thiss!17113 rules!1846))))

(declare-fun res!700982 () Bool)

(assert (=> start!146784 (=> (not res!700982) (not e!1009925))))

(assert (=> start!146784 (= res!700982 (is-Lexer!2627 thiss!17113))))

(assert (=> start!146784 e!1009925))

(assert (=> start!146784 true))

(assert (=> start!146784 e!1009918))

(declare-fun e!1009919 () Bool)

(assert (=> start!146784 e!1009919))

(declare-fun b!1572856 () Bool)

(assert (=> b!1572856 (= e!1009925 false)))

(declare-datatypes ((IArray!11303 0))(
  ( (IArray!11304 (innerList!5709 List!17181)) )
))
(declare-datatypes ((Conc!5649 0))(
  ( (Node!5649 (left!13855 Conc!5649) (right!14185 Conc!5649) (csize!11528 Int) (cheight!5860 Int)) (Leaf!8370 (xs!8453 IArray!11303) (csize!11529 Int)) (Empty!5649) )
))
(declare-datatypes ((BalanceConc!11242 0))(
  ( (BalanceConc!11243 (c!255125 Conc!5649)) )
))
(declare-fun lt!546873 () BalanceConc!11242)

(declare-fun seqFromList!1797 (List!17181) BalanceConc!11242)

(assert (=> b!1572856 (= lt!546873 (seqFromList!1797 tokens!457))))

(assert (=> b!1572857 (= e!1009917 (and tp!462504 tp!462503))))

(declare-fun b!1572858 () Bool)

(declare-fun res!700981 () Bool)

(assert (=> b!1572858 (=> (not res!700981) (not e!1009925))))

(declare-fun rulesProduceEachTokenIndividuallyList!831 (LexerInterface!2629 List!17182 List!17181) Bool)

(assert (=> b!1572858 (= res!700981 (rulesProduceEachTokenIndividuallyList!831 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1572859 () Bool)

(declare-fun res!700980 () Bool)

(assert (=> b!1572859 (=> (not res!700980) (not e!1009925))))

(declare-fun isEmpty!10250 (List!17182) Bool)

(assert (=> b!1572859 (= res!700980 (not (isEmpty!10250 rules!1846)))))

(declare-fun b!1572860 () Bool)

(declare-fun res!700978 () Bool)

(assert (=> b!1572860 (=> (not res!700978) (not e!1009925))))

(assert (=> b!1572860 (= res!700978 (is-Nil!17111 tokens!457))))

(declare-fun b!1572861 () Bool)

(declare-fun tp!462507 () Bool)

(declare-fun e!1009920 () Bool)

(assert (=> b!1572861 (= e!1009916 (and tp!462507 (inv!22529 (tag!3266 (h!22513 rules!1846))) (inv!22532 (transformation!3000 (h!22513 rules!1846))) e!1009920))))

(assert (=> b!1572862 (= e!1009920 (and tp!462508 tp!462511))))

(declare-fun tp!462506 () Bool)

(declare-fun b!1572863 () Bool)

(declare-fun inv!22533 (Token!5566) Bool)

(assert (=> b!1572863 (= e!1009919 (and (inv!22533 (h!22512 tokens!457)) e!1009915 tp!462506))))

(assert (= (and start!146784 res!700982) b!1572859))

(assert (= (and b!1572859 res!700980) b!1572855))

(assert (= (and b!1572855 res!700979) b!1572858))

(assert (= (and b!1572858 res!700981) b!1572853))

(assert (= (and b!1572853 res!700977) b!1572860))

(assert (= (and b!1572860 res!700978) b!1572856))

(assert (= b!1572861 b!1572862))

(assert (= b!1572851 b!1572861))

(assert (= (and start!146784 (is-Cons!17112 rules!1846)) b!1572851))

(assert (= b!1572852 b!1572857))

(assert (= b!1572854 b!1572852))

(assert (= b!1572863 b!1572854))

(assert (= (and start!146784 (is-Cons!17111 tokens!457)) b!1572863))

(declare-fun m!1852021 () Bool)

(assert (=> b!1572852 m!1852021))

(declare-fun m!1852023 () Bool)

(assert (=> b!1572852 m!1852023))

(declare-fun m!1852025 () Bool)

(assert (=> b!1572858 m!1852025))

(declare-fun m!1852027 () Bool)

(assert (=> b!1572856 m!1852027))

(declare-fun m!1852029 () Bool)

(assert (=> b!1572859 m!1852029))

(declare-fun m!1852031 () Bool)

(assert (=> b!1572863 m!1852031))

(declare-fun m!1852033 () Bool)

(assert (=> b!1572855 m!1852033))

(declare-fun m!1852035 () Bool)

(assert (=> b!1572861 m!1852035))

(declare-fun m!1852037 () Bool)

(assert (=> b!1572861 m!1852037))

(declare-fun m!1852039 () Bool)

(assert (=> b!1572854 m!1852039))

(declare-fun m!1852041 () Bool)

(assert (=> b!1572853 m!1852041))

(push 1)

(assert b_and!109869)

(assert (not b!1572861))

(assert (not b!1572863))

(assert (not b!1572852))

(assert (not b!1572851))

(assert (not b!1572858))

(assert b_and!109871)

(assert (not b_next!42767))

(assert b_and!109873)

(assert (not b_next!42769))

(assert (not b_next!42771))

(assert (not b!1572854))

(assert (not b!1572855))

(assert (not b!1572853))

(assert (not b!1572856))

(assert b_and!109875)

(assert (not b!1572859))

(assert (not b_next!42773))

(check-sat)

(pop 1)

(push 1)

(assert b_and!109869)

(assert b_and!109875)

(assert b_and!109871)

(assert (not b_next!42767))

(assert b_and!109873)

(assert (not b_next!42769))

(assert (not b_next!42771))

(assert (not b_next!42773))

(check-sat)

(pop 1)

