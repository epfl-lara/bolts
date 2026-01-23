; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131396 () Bool)

(assert start!131396)

(declare-fun res!644616 () Bool)

(declare-fun e!908878 () Bool)

(assert (=> start!131396 (=> (not res!644616) (not e!908878))))

(declare-datatypes ((C!7964 0))(
  ( (C!7965 (val!4552 Int)) )
))
(declare-datatypes ((List!14805 0))(
  ( (Nil!14739) (Cons!14739 (h!20140 C!7964) (t!124648 List!14805)) )
))
(declare-datatypes ((IArray!9973 0))(
  ( (IArray!9974 (innerList!5044 List!14805)) )
))
(declare-datatypes ((Conc!4984 0))(
  ( (Node!4984 (left!12576 Conc!4984) (right!12906 Conc!4984) (csize!10198 Int) (cheight!5195 Int)) (Leaf!7475 (xs!7713 IArray!9973) (csize!10199 Int)) (Empty!4984) )
))
(declare-datatypes ((BalanceConc!9908 0))(
  ( (BalanceConc!9909 (c!234056 Conc!4984)) )
))
(declare-datatypes ((List!14806 0))(
  ( (Nil!14740) (Cons!14740 (h!20141 (_ BitVec 16)) (t!124649 List!14806)) )
))
(declare-datatypes ((TokenValue!2669 0))(
  ( (FloatLiteralValue!5338 (text!19128 List!14806)) (TokenValueExt!2668 (__x!9136 Int)) (Broken!13345 (value!83123 List!14806)) (Object!2734) (End!2669) (Def!2669) (Underscore!2669) (Match!2669) (Else!2669) (Error!2669) (Case!2669) (If!2669) (Extends!2669) (Abstract!2669) (Class!2669) (Val!2669) (DelimiterValue!5338 (del!2729 List!14806)) (KeywordValue!2675 (value!83124 List!14806)) (CommentValue!5338 (value!83125 List!14806)) (WhitespaceValue!5338 (value!83126 List!14806)) (IndentationValue!2669 (value!83127 List!14806)) (String!17600) (Int32!2669) (Broken!13346 (value!83128 List!14806)) (Boolean!2670) (Unit!22233) (OperatorValue!2672 (op!2729 List!14806)) (IdentifierValue!5338 (value!83129 List!14806)) (IdentifierValue!5339 (value!83130 List!14806)) (WhitespaceValue!5339 (value!83131 List!14806)) (True!5338) (False!5338) (Broken!13347 (value!83132 List!14806)) (Broken!13348 (value!83133 List!14806)) (True!5339) (RightBrace!2669) (RightBracket!2669) (Colon!2669) (Null!2669) (Comma!2669) (LeftBracket!2669) (False!5339) (LeftBrace!2669) (ImaginaryLiteralValue!2669 (text!19129 List!14806)) (StringLiteralValue!8007 (value!83134 List!14806)) (EOFValue!2669 (value!83135 List!14806)) (IdentValue!2669 (value!83136 List!14806)) (DelimiterValue!5339 (value!83137 List!14806)) (DedentValue!2669 (value!83138 List!14806)) (NewLineValue!2669 (value!83139 List!14806)) (IntegerValue!8007 (value!83140 (_ BitVec 32)) (text!19130 List!14806)) (IntegerValue!8008 (value!83141 Int) (text!19131 List!14806)) (Times!2669) (Or!2669) (Equal!2669) (Minus!2669) (Broken!13349 (value!83142 List!14806)) (And!2669) (Div!2669) (LessEqual!2669) (Mod!2669) (Concat!6562) (Not!2669) (Plus!2669) (SpaceValue!2669 (value!83143 List!14806)) (IntegerValue!8009 (value!83144 Int) (text!19132 List!14806)) (StringLiteralValue!8008 (text!19133 List!14806)) (FloatLiteralValue!5339 (text!19134 List!14806)) (BytesLiteralValue!2669 (value!83145 List!14806)) (CommentValue!5339 (value!83146 List!14806)) (StringLiteralValue!8009 (value!83147 List!14806)) (ErrorTokenValue!2669 (msg!2730 List!14806)) )
))
(declare-datatypes ((Regex!3893 0))(
  ( (ElementMatch!3893 (c!234057 C!7964)) (Concat!6563 (regOne!8298 Regex!3893) (regTwo!8298 Regex!3893)) (EmptyExpr!3893) (Star!3893 (reg!4222 Regex!3893)) (EmptyLang!3893) (Union!3893 (regOne!8299 Regex!3893) (regTwo!8299 Regex!3893)) )
))
(declare-datatypes ((String!17601 0))(
  ( (String!17602 (value!83148 String)) )
))
(declare-datatypes ((TokenValueInjection!4998 0))(
  ( (TokenValueInjection!4999 (toValue!3878 Int) (toChars!3737 Int)) )
))
(declare-datatypes ((Rule!4958 0))(
  ( (Rule!4959 (regex!2579 Regex!3893) (tag!2841 String!17601) (isSeparator!2579 Bool) (transformation!2579 TokenValueInjection!4998)) )
))
(declare-datatypes ((Token!4820 0))(
  ( (Token!4821 (value!83149 TokenValue!2669) (rule!4342 Rule!4958) (size!12118 Int) (originalCharacters!3441 List!14805)) )
))
(declare-datatypes ((List!14807 0))(
  ( (Nil!14741) (Cons!14741 (h!20142 Token!4820) (t!124650 List!14807)) )
))
(declare-datatypes ((IArray!9975 0))(
  ( (IArray!9976 (innerList!5045 List!14807)) )
))
(declare-datatypes ((Conc!4985 0))(
  ( (Node!4985 (left!12577 Conc!4985) (right!12907 Conc!4985) (csize!10200 Int) (cheight!5196 Int)) (Leaf!7476 (xs!7714 IArray!9975) (csize!10201 Int)) (Empty!4985) )
))
(declare-datatypes ((BalanceConc!9910 0))(
  ( (BalanceConc!9911 (c!234058 Conc!4985)) )
))
(declare-datatypes ((List!14808 0))(
  ( (Nil!14742) (Cons!14742 (h!20143 Rule!4958) (t!124651 List!14808)) )
))
(declare-datatypes ((PrintableTokens!940 0))(
  ( (PrintableTokens!941 (rules!11212 List!14808) (tokens!1904 BalanceConc!9910)) )
))
(declare-fun thiss!10022 () PrintableTokens!940)

(declare-fun other!32 () PrintableTokens!940)

(assert (=> start!131396 (= res!644616 (= (rules!11212 thiss!10022) (rules!11212 other!32)))))

(assert (=> start!131396 e!908878))

(declare-fun e!908876 () Bool)

(declare-fun inv!19547 (PrintableTokens!940) Bool)

(assert (=> start!131396 (and (inv!19547 thiss!10022) e!908876)))

(declare-fun e!908877 () Bool)

(assert (=> start!131396 (and (inv!19547 other!32) e!908877)))

(declare-fun b!1423668 () Bool)

(declare-fun res!644617 () Bool)

(declare-fun e!908879 () Bool)

(assert (=> b!1423668 (=> (not res!644617) (not e!908879))))

(declare-fun isEmpty!9122 (BalanceConc!9910) Bool)

(assert (=> b!1423668 (= res!644617 (not (isEmpty!9122 (tokens!1904 thiss!10022))))))

(declare-fun b!1423669 () Bool)

(declare-fun e!908874 () Bool)

(declare-fun tp!403563 () Bool)

(declare-fun inv!19548 (BalanceConc!9910) Bool)

(assert (=> b!1423669 (= e!908877 (and tp!403563 (inv!19548 (tokens!1904 other!32)) e!908874))))

(declare-fun b!1423670 () Bool)

(declare-fun e!908875 () Bool)

(declare-fun tp!403565 () Bool)

(declare-fun inv!19549 (Conc!4985) Bool)

(assert (=> b!1423670 (= e!908875 (and (inv!19549 (c!234058 (tokens!1904 thiss!10022))) tp!403565))))

(declare-fun b!1423671 () Bool)

(assert (=> b!1423671 (= e!908878 e!908879)))

(declare-fun res!644618 () Bool)

(assert (=> b!1423671 (=> (not res!644618) (not e!908879))))

(assert (=> b!1423671 (= res!644618 (not (isEmpty!9122 (tokens!1904 other!32))))))

(declare-datatypes ((Unit!22234 0))(
  ( (Unit!22235) )
))
(declare-fun lt!482608 () Unit!22234)

(declare-fun lemmaInvariant!275 (PrintableTokens!940) Unit!22234)

(assert (=> b!1423671 (= lt!482608 (lemmaInvariant!275 thiss!10022))))

(declare-fun lt!482610 () Unit!22234)

(assert (=> b!1423671 (= lt!482610 (lemmaInvariant!275 other!32))))

(declare-fun tp!403566 () Bool)

(declare-fun b!1423672 () Bool)

(assert (=> b!1423672 (= e!908876 (and tp!403566 (inv!19548 (tokens!1904 thiss!10022)) e!908875))))

(declare-fun b!1423673 () Bool)

(declare-fun tp!403564 () Bool)

(assert (=> b!1423673 (= e!908874 (and (inv!19549 (c!234058 (tokens!1904 other!32))) tp!403564))))

(declare-fun b!1423674 () Bool)

(assert (=> b!1423674 (= e!908879 (not true))))

(declare-fun lt!482609 () List!14807)

(declare-fun list!5853 (BalanceConc!9910) List!14807)

(assert (=> b!1423674 (= lt!482609 (list!5853 (tokens!1904 other!32)))))

(declare-fun lt!482607 () Token!4820)

(declare-datatypes ((LexerInterface!2243 0))(
  ( (LexerInterfaceExt!2240 (__x!9137 Int)) (Lexer!2241) )
))
(declare-fun rulesProduceIndividualToken!1176 (LexerInterface!2243 List!14808 Token!4820) Bool)

(assert (=> b!1423674 (rulesProduceIndividualToken!1176 Lexer!2241 (rules!11212 thiss!10022) lt!482607)))

(declare-fun lt!482606 () Unit!22234)

(declare-fun lt!482605 () List!14807)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!361 (LexerInterface!2243 List!14808 List!14807 Token!4820) Unit!22234)

(assert (=> b!1423674 (= lt!482606 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!361 Lexer!2241 (rules!11212 thiss!10022) lt!482605 lt!482607))))

(declare-fun last!93 (BalanceConc!9910) Token!4820)

(assert (=> b!1423674 (= lt!482607 (last!93 (tokens!1904 thiss!10022)))))

(assert (=> b!1423674 (= lt!482605 (list!5853 (tokens!1904 thiss!10022)))))

(assert (= (and start!131396 res!644616) b!1423671))

(assert (= (and b!1423671 res!644618) b!1423668))

(assert (= (and b!1423668 res!644617) b!1423674))

(assert (= b!1423672 b!1423670))

(assert (= start!131396 b!1423672))

(assert (= b!1423669 b!1423673))

(assert (= start!131396 b!1423669))

(declare-fun m!1616891 () Bool)

(assert (=> b!1423669 m!1616891))

(declare-fun m!1616893 () Bool)

(assert (=> b!1423671 m!1616893))

(declare-fun m!1616895 () Bool)

(assert (=> b!1423671 m!1616895))

(declare-fun m!1616897 () Bool)

(assert (=> b!1423671 m!1616897))

(declare-fun m!1616899 () Bool)

(assert (=> b!1423670 m!1616899))

(declare-fun m!1616901 () Bool)

(assert (=> b!1423674 m!1616901))

(declare-fun m!1616903 () Bool)

(assert (=> b!1423674 m!1616903))

(declare-fun m!1616905 () Bool)

(assert (=> b!1423674 m!1616905))

(declare-fun m!1616907 () Bool)

(assert (=> b!1423674 m!1616907))

(declare-fun m!1616909 () Bool)

(assert (=> b!1423674 m!1616909))

(declare-fun m!1616911 () Bool)

(assert (=> start!131396 m!1616911))

(declare-fun m!1616913 () Bool)

(assert (=> start!131396 m!1616913))

(declare-fun m!1616915 () Bool)

(assert (=> b!1423668 m!1616915))

(declare-fun m!1616917 () Bool)

(assert (=> b!1423673 m!1616917))

(declare-fun m!1616919 () Bool)

(assert (=> b!1423672 m!1616919))

(check-sat (not b!1423672) (not b!1423668) (not b!1423670) (not b!1423671) (not b!1423669) (not b!1423673) (not start!131396) (not b!1423674))
(check-sat)
