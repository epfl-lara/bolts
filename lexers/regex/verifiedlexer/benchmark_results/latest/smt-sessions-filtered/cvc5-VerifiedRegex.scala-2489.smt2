; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!131390 () Bool)

(assert start!131390)

(declare-fun b!1423593 () Bool)

(declare-fun res!644577 () Bool)

(declare-fun e!908821 () Bool)

(assert (=> b!1423593 (=> (not res!644577) (not e!908821))))

(declare-datatypes ((C!7958 0))(
  ( (C!7959 (val!4549 Int)) )
))
(declare-datatypes ((List!14793 0))(
  ( (Nil!14727) (Cons!14727 (h!20128 C!7958) (t!124636 List!14793)) )
))
(declare-datatypes ((IArray!9961 0))(
  ( (IArray!9962 (innerList!5038 List!14793)) )
))
(declare-datatypes ((Conc!4978 0))(
  ( (Node!4978 (left!12569 Conc!4978) (right!12899 Conc!4978) (csize!10186 Int) (cheight!5189 Int)) (Leaf!7468 (xs!7707 IArray!9961) (csize!10187 Int)) (Empty!4978) )
))
(declare-datatypes ((BalanceConc!9896 0))(
  ( (BalanceConc!9897 (c!234047 Conc!4978)) )
))
(declare-datatypes ((List!14794 0))(
  ( (Nil!14728) (Cons!14728 (h!20129 (_ BitVec 16)) (t!124637 List!14794)) )
))
(declare-datatypes ((TokenValue!2666 0))(
  ( (FloatLiteralValue!5332 (text!19107 List!14794)) (TokenValueExt!2665 (__x!9130 Int)) (Broken!13330 (value!83039 List!14794)) (Object!2731) (End!2666) (Def!2666) (Underscore!2666) (Match!2666) (Else!2666) (Error!2666) (Case!2666) (If!2666) (Extends!2666) (Abstract!2666) (Class!2666) (Val!2666) (DelimiterValue!5332 (del!2726 List!14794)) (KeywordValue!2672 (value!83040 List!14794)) (CommentValue!5332 (value!83041 List!14794)) (WhitespaceValue!5332 (value!83042 List!14794)) (IndentationValue!2666 (value!83043 List!14794)) (String!17587) (Int32!2666) (Broken!13331 (value!83044 List!14794)) (Boolean!2667) (Unit!22224) (OperatorValue!2669 (op!2726 List!14794)) (IdentifierValue!5332 (value!83045 List!14794)) (IdentifierValue!5333 (value!83046 List!14794)) (WhitespaceValue!5333 (value!83047 List!14794)) (True!5332) (False!5332) (Broken!13332 (value!83048 List!14794)) (Broken!13333 (value!83049 List!14794)) (True!5333) (RightBrace!2666) (RightBracket!2666) (Colon!2666) (Null!2666) (Comma!2666) (LeftBracket!2666) (False!5333) (LeftBrace!2666) (ImaginaryLiteralValue!2666 (text!19108 List!14794)) (StringLiteralValue!7998 (value!83050 List!14794)) (EOFValue!2666 (value!83051 List!14794)) (IdentValue!2666 (value!83052 List!14794)) (DelimiterValue!5333 (value!83053 List!14794)) (DedentValue!2666 (value!83054 List!14794)) (NewLineValue!2666 (value!83055 List!14794)) (IntegerValue!7998 (value!83056 (_ BitVec 32)) (text!19109 List!14794)) (IntegerValue!7999 (value!83057 Int) (text!19110 List!14794)) (Times!2666) (Or!2666) (Equal!2666) (Minus!2666) (Broken!13334 (value!83058 List!14794)) (And!2666) (Div!2666) (LessEqual!2666) (Mod!2666) (Concat!6556) (Not!2666) (Plus!2666) (SpaceValue!2666 (value!83059 List!14794)) (IntegerValue!8000 (value!83060 Int) (text!19111 List!14794)) (StringLiteralValue!7999 (text!19112 List!14794)) (FloatLiteralValue!5333 (text!19113 List!14794)) (BytesLiteralValue!2666 (value!83061 List!14794)) (CommentValue!5333 (value!83062 List!14794)) (StringLiteralValue!8000 (value!83063 List!14794)) (ErrorTokenValue!2666 (msg!2727 List!14794)) )
))
(declare-datatypes ((Regex!3890 0))(
  ( (ElementMatch!3890 (c!234048 C!7958)) (Concat!6557 (regOne!8292 Regex!3890) (regTwo!8292 Regex!3890)) (EmptyExpr!3890) (Star!3890 (reg!4219 Regex!3890)) (EmptyLang!3890) (Union!3890 (regOne!8293 Regex!3890) (regTwo!8293 Regex!3890)) )
))
(declare-datatypes ((String!17588 0))(
  ( (String!17589 (value!83064 String)) )
))
(declare-datatypes ((TokenValueInjection!4992 0))(
  ( (TokenValueInjection!4993 (toValue!3875 Int) (toChars!3734 Int)) )
))
(declare-datatypes ((Rule!4952 0))(
  ( (Rule!4953 (regex!2576 Regex!3890) (tag!2838 String!17588) (isSeparator!2576 Bool) (transformation!2576 TokenValueInjection!4992)) )
))
(declare-datatypes ((Token!4814 0))(
  ( (Token!4815 (value!83065 TokenValue!2666) (rule!4339 Rule!4952) (size!12115 Int) (originalCharacters!3438 List!14793)) )
))
(declare-datatypes ((List!14795 0))(
  ( (Nil!14729) (Cons!14729 (h!20130 Token!4814) (t!124638 List!14795)) )
))
(declare-datatypes ((IArray!9963 0))(
  ( (IArray!9964 (innerList!5039 List!14795)) )
))
(declare-datatypes ((Conc!4979 0))(
  ( (Node!4979 (left!12570 Conc!4979) (right!12900 Conc!4979) (csize!10188 Int) (cheight!5190 Int)) (Leaf!7469 (xs!7708 IArray!9963) (csize!10189 Int)) (Empty!4979) )
))
(declare-datatypes ((BalanceConc!9898 0))(
  ( (BalanceConc!9899 (c!234049 Conc!4979)) )
))
(declare-datatypes ((List!14796 0))(
  ( (Nil!14730) (Cons!14730 (h!20131 Rule!4952) (t!124639 List!14796)) )
))
(declare-datatypes ((PrintableTokens!934 0))(
  ( (PrintableTokens!935 (rules!11209 List!14796) (tokens!1901 BalanceConc!9898)) )
))
(declare-fun thiss!10022 () PrintableTokens!934)

(declare-fun isEmpty!9117 (BalanceConc!9898) Bool)

(assert (=> b!1423593 (= res!644577 (not (isEmpty!9117 (tokens!1901 thiss!10022))))))

(declare-fun b!1423594 () Bool)

(declare-fun e!908822 () Bool)

(assert (=> b!1423594 (= e!908822 false)))

(declare-fun lt!482556 () Bool)

(declare-fun lt!482557 () List!14795)

(declare-datatypes ((LexerInterface!2240 0))(
  ( (LexerInterfaceExt!2237 (__x!9131 Int)) (Lexer!2238) )
))
(declare-fun rulesProduceEachTokenIndividuallyList!693 (LexerInterface!2240 List!14796 List!14795) Bool)

(assert (=> b!1423594 (= lt!482556 (rulesProduceEachTokenIndividuallyList!693 Lexer!2238 (rules!11209 thiss!10022) lt!482557))))

(declare-fun tp!403527 () Bool)

(declare-fun e!908817 () Bool)

(declare-fun b!1423595 () Bool)

(declare-fun e!908816 () Bool)

(declare-fun inv!19535 (BalanceConc!9898) Bool)

(assert (=> b!1423595 (= e!908816 (and tp!403527 (inv!19535 (tokens!1901 thiss!10022)) e!908817))))

(declare-fun b!1423596 () Bool)

(declare-fun e!908820 () Bool)

(assert (=> b!1423596 (= e!908820 e!908821)))

(declare-fun res!644578 () Bool)

(assert (=> b!1423596 (=> (not res!644578) (not e!908821))))

(declare-fun other!32 () PrintableTokens!934)

(assert (=> b!1423596 (= res!644578 (not (isEmpty!9117 (tokens!1901 other!32))))))

(declare-datatypes ((Unit!22225 0))(
  ( (Unit!22226) )
))
(declare-fun lt!482558 () Unit!22225)

(declare-fun lemmaInvariant!272 (PrintableTokens!934) Unit!22225)

(assert (=> b!1423596 (= lt!482558 (lemmaInvariant!272 thiss!10022))))

(declare-fun lt!482559 () Unit!22225)

(assert (=> b!1423596 (= lt!482559 (lemmaInvariant!272 other!32))))

(declare-fun e!908818 () Bool)

(declare-fun tp!403529 () Bool)

(declare-fun e!908819 () Bool)

(declare-fun b!1423597 () Bool)

(assert (=> b!1423597 (= e!908818 (and tp!403529 (inv!19535 (tokens!1901 other!32)) e!908819))))

(declare-fun b!1423599 () Bool)

(declare-fun res!644582 () Bool)

(assert (=> b!1423599 (=> (not res!644582) (not e!908822))))

(declare-fun rulesInvariant!2094 (LexerInterface!2240 List!14796) Bool)

(assert (=> b!1423599 (= res!644582 (rulesInvariant!2094 Lexer!2238 (rules!11209 thiss!10022)))))

(declare-fun b!1423600 () Bool)

(declare-fun tp!403530 () Bool)

(declare-fun inv!19536 (Conc!4979) Bool)

(assert (=> b!1423600 (= e!908817 (and (inv!19536 (c!234049 (tokens!1901 thiss!10022))) tp!403530))))

(declare-fun b!1423601 () Bool)

(declare-fun tp!403528 () Bool)

(assert (=> b!1423601 (= e!908819 (and (inv!19536 (c!234049 (tokens!1901 other!32))) tp!403528))))

(declare-fun b!1423602 () Bool)

(declare-fun res!644580 () Bool)

(assert (=> b!1423602 (=> (not res!644580) (not e!908822))))

(declare-fun lt!482555 () Token!4814)

(declare-fun contains!2844 (List!14795 Token!4814) Bool)

(assert (=> b!1423602 (= res!644580 (contains!2844 lt!482557 lt!482555))))

(declare-fun b!1423598 () Bool)

(assert (=> b!1423598 (= e!908821 e!908822)))

(declare-fun res!644579 () Bool)

(assert (=> b!1423598 (=> (not res!644579) (not e!908822))))

(declare-fun isEmpty!9118 (List!14796) Bool)

(assert (=> b!1423598 (= res!644579 (not (isEmpty!9118 (rules!11209 thiss!10022))))))

(declare-fun last!90 (BalanceConc!9898) Token!4814)

(assert (=> b!1423598 (= lt!482555 (last!90 (tokens!1901 thiss!10022)))))

(declare-fun list!5850 (BalanceConc!9898) List!14795)

(assert (=> b!1423598 (= lt!482557 (list!5850 (tokens!1901 thiss!10022)))))

(declare-fun res!644581 () Bool)

(assert (=> start!131390 (=> (not res!644581) (not e!908820))))

(assert (=> start!131390 (= res!644581 (= (rules!11209 thiss!10022) (rules!11209 other!32)))))

(assert (=> start!131390 e!908820))

(declare-fun inv!19537 (PrintableTokens!934) Bool)

(assert (=> start!131390 (and (inv!19537 thiss!10022) e!908816)))

(assert (=> start!131390 (and (inv!19537 other!32) e!908818)))

(assert (= (and start!131390 res!644581) b!1423596))

(assert (= (and b!1423596 res!644578) b!1423593))

(assert (= (and b!1423593 res!644577) b!1423598))

(assert (= (and b!1423598 res!644579) b!1423599))

(assert (= (and b!1423599 res!644582) b!1423602))

(assert (= (and b!1423602 res!644580) b!1423594))

(assert (= b!1423595 b!1423600))

(assert (= start!131390 b!1423595))

(assert (= b!1423597 b!1423601))

(assert (= start!131390 b!1423597))

(declare-fun m!1616797 () Bool)

(assert (=> b!1423595 m!1616797))

(declare-fun m!1616799 () Bool)

(assert (=> b!1423601 m!1616799))

(declare-fun m!1616801 () Bool)

(assert (=> b!1423598 m!1616801))

(declare-fun m!1616803 () Bool)

(assert (=> b!1423598 m!1616803))

(declare-fun m!1616805 () Bool)

(assert (=> b!1423598 m!1616805))

(declare-fun m!1616807 () Bool)

(assert (=> b!1423596 m!1616807))

(declare-fun m!1616809 () Bool)

(assert (=> b!1423596 m!1616809))

(declare-fun m!1616811 () Bool)

(assert (=> b!1423596 m!1616811))

(declare-fun m!1616813 () Bool)

(assert (=> b!1423599 m!1616813))

(declare-fun m!1616815 () Bool)

(assert (=> b!1423597 m!1616815))

(declare-fun m!1616817 () Bool)

(assert (=> b!1423600 m!1616817))

(declare-fun m!1616819 () Bool)

(assert (=> b!1423593 m!1616819))

(declare-fun m!1616821 () Bool)

(assert (=> start!131390 m!1616821))

(declare-fun m!1616823 () Bool)

(assert (=> start!131390 m!1616823))

(declare-fun m!1616825 () Bool)

(assert (=> b!1423602 m!1616825))

(declare-fun m!1616827 () Bool)

(assert (=> b!1423594 m!1616827))

(push 1)

(assert (not b!1423600))

(assert (not b!1423599))

(assert (not b!1423597))

(assert (not b!1423593))

(assert (not b!1423594))

(assert (not b!1423595))

(assert (not b!1423596))

(assert (not b!1423598))

(assert (not b!1423601))

(assert (not start!131390))

(assert (not b!1423602))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

