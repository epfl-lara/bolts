; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130864 () Bool)

(assert start!130864)

(declare-fun res!643309 () Bool)

(declare-fun e!906883 () Bool)

(assert (=> start!130864 (=> (not res!643309) (not e!906883))))

(declare-datatypes ((C!7892 0))(
  ( (C!7893 (val!4516 Int)) )
))
(declare-datatypes ((List!14661 0))(
  ( (Nil!14595) (Cons!14595 (h!19996 C!7892) (t!124456 List!14661)) )
))
(declare-datatypes ((IArray!9829 0))(
  ( (IArray!9830 (innerList!4972 List!14661)) )
))
(declare-datatypes ((Conc!4912 0))(
  ( (Node!4912 (left!12486 Conc!4912) (right!12816 Conc!4912) (csize!10054 Int) (cheight!5123 Int)) (Leaf!7385 (xs!7641 IArray!9829) (csize!10055 Int)) (Empty!4912) )
))
(declare-datatypes ((BalanceConc!9764 0))(
  ( (BalanceConc!9765 (c!233572 Conc!4912)) )
))
(declare-datatypes ((List!14662 0))(
  ( (Nil!14596) (Cons!14596 (h!19997 (_ BitVec 16)) (t!124457 List!14662)) )
))
(declare-datatypes ((TokenValue!2633 0))(
  ( (FloatLiteralValue!5266 (text!18876 List!14662)) (TokenValueExt!2632 (__x!9069 Int)) (Broken!13165 (value!82097 List!14662)) (Object!2698) (End!2633) (Def!2633) (Underscore!2633) (Match!2633) (Else!2633) (Error!2633) (Case!2633) (If!2633) (Extends!2633) (Abstract!2633) (Class!2633) (Val!2633) (DelimiterValue!5266 (del!2693 List!14662)) (KeywordValue!2639 (value!82098 List!14662)) (CommentValue!5266 (value!82099 List!14662)) (WhitespaceValue!5266 (value!82100 List!14662)) (IndentationValue!2633 (value!82101 List!14662)) (String!17420) (Int32!2633) (Broken!13166 (value!82102 List!14662)) (Boolean!2634) (Unit!21795) (OperatorValue!2636 (op!2693 List!14662)) (IdentifierValue!5266 (value!82103 List!14662)) (IdentifierValue!5267 (value!82104 List!14662)) (WhitespaceValue!5267 (value!82105 List!14662)) (True!5266) (False!5266) (Broken!13167 (value!82106 List!14662)) (Broken!13168 (value!82107 List!14662)) (True!5267) (RightBrace!2633) (RightBracket!2633) (Colon!2633) (Null!2633) (Comma!2633) (LeftBracket!2633) (False!5267) (LeftBrace!2633) (ImaginaryLiteralValue!2633 (text!18877 List!14662)) (StringLiteralValue!7899 (value!82108 List!14662)) (EOFValue!2633 (value!82109 List!14662)) (IdentValue!2633 (value!82110 List!14662)) (DelimiterValue!5267 (value!82111 List!14662)) (DedentValue!2633 (value!82112 List!14662)) (NewLineValue!2633 (value!82113 List!14662)) (IntegerValue!7899 (value!82114 (_ BitVec 32)) (text!18878 List!14662)) (IntegerValue!7900 (value!82115 Int) (text!18879 List!14662)) (Times!2633) (Or!2633) (Equal!2633) (Minus!2633) (Broken!13169 (value!82116 List!14662)) (And!2633) (Div!2633) (LessEqual!2633) (Mod!2633) (Concat!6490) (Not!2633) (Plus!2633) (SpaceValue!2633 (value!82117 List!14662)) (IntegerValue!7901 (value!82118 Int) (text!18880 List!14662)) (StringLiteralValue!7900 (text!18881 List!14662)) (FloatLiteralValue!5267 (text!18882 List!14662)) (BytesLiteralValue!2633 (value!82119 List!14662)) (CommentValue!5267 (value!82120 List!14662)) (StringLiteralValue!7901 (value!82121 List!14662)) (ErrorTokenValue!2633 (msg!2694 List!14662)) )
))
(declare-datatypes ((Regex!3857 0))(
  ( (ElementMatch!3857 (c!233573 C!7892)) (Concat!6491 (regOne!8226 Regex!3857) (regTwo!8226 Regex!3857)) (EmptyExpr!3857) (Star!3857 (reg!4186 Regex!3857)) (EmptyLang!3857) (Union!3857 (regOne!8227 Regex!3857) (regTwo!8227 Regex!3857)) )
))
(declare-datatypes ((String!17421 0))(
  ( (String!17422 (value!82122 String)) )
))
(declare-datatypes ((TokenValueInjection!4926 0))(
  ( (TokenValueInjection!4927 (toValue!3842 Int) (toChars!3701 Int)) )
))
(declare-datatypes ((Rule!4886 0))(
  ( (Rule!4887 (regex!2543 Regex!3857) (tag!2805 String!17421) (isSeparator!2543 Bool) (transformation!2543 TokenValueInjection!4926)) )
))
(declare-datatypes ((Token!4748 0))(
  ( (Token!4749 (value!82123 TokenValue!2633) (rule!4306 Rule!4886) (size!12046 Int) (originalCharacters!3405 List!14661)) )
))
(declare-datatypes ((List!14663 0))(
  ( (Nil!14597) (Cons!14597 (h!19998 Token!4748) (t!124458 List!14663)) )
))
(declare-datatypes ((IArray!9831 0))(
  ( (IArray!9832 (innerList!4973 List!14663)) )
))
(declare-datatypes ((Conc!4913 0))(
  ( (Node!4913 (left!12487 Conc!4913) (right!12817 Conc!4913) (csize!10056 Int) (cheight!5124 Int)) (Leaf!7386 (xs!7642 IArray!9831) (csize!10057 Int)) (Empty!4913) )
))
(declare-datatypes ((BalanceConc!9766 0))(
  ( (BalanceConc!9767 (c!233574 Conc!4913)) )
))
(declare-datatypes ((List!14664 0))(
  ( (Nil!14598) (Cons!14598 (h!19999 Rule!4886) (t!124459 List!14664)) )
))
(declare-datatypes ((PrintableTokens!868 0))(
  ( (PrintableTokens!869 (rules!11164 List!14664) (tokens!1856 BalanceConc!9766)) )
))
(declare-fun thiss!10022 () PrintableTokens!868)

(declare-fun other!32 () PrintableTokens!868)

(assert (=> start!130864 (= res!643309 (= (rules!11164 thiss!10022) (rules!11164 other!32)))))

(assert (=> start!130864 e!906883))

(declare-fun e!906882 () Bool)

(declare-fun inv!19319 (PrintableTokens!868) Bool)

(assert (=> start!130864 (and (inv!19319 thiss!10022) e!906882)))

(declare-fun e!906884 () Bool)

(assert (=> start!130864 (and (inv!19319 other!32) e!906884)))

(declare-fun b!1420851 () Bool)

(declare-fun e!906885 () Bool)

(assert (=> b!1420851 (= e!906883 e!906885)))

(declare-fun res!643310 () Bool)

(assert (=> b!1420851 (=> (not res!643310) (not e!906885))))

(declare-fun isEmpty!9004 (BalanceConc!9766) Bool)

(assert (=> b!1420851 (= res!643310 (isEmpty!9004 (tokens!1856 other!32)))))

(declare-datatypes ((Unit!21796 0))(
  ( (Unit!21797) )
))
(declare-fun lt!479665 () Unit!21796)

(declare-fun lemmaInvariant!239 (PrintableTokens!868) Unit!21796)

(assert (=> b!1420851 (= lt!479665 (lemmaInvariant!239 thiss!10022))))

(declare-fun lt!479664 () Unit!21796)

(assert (=> b!1420851 (= lt!479664 (lemmaInvariant!239 other!32))))

(declare-fun e!906881 () Bool)

(declare-fun b!1420852 () Bool)

(declare-fun tp!402760 () Bool)

(declare-fun inv!19320 (BalanceConc!9766) Bool)

(assert (=> b!1420852 (= e!906882 (and tp!402760 (inv!19320 (tokens!1856 thiss!10022)) e!906881))))

(declare-fun b!1420853 () Bool)

(declare-fun e!906880 () Bool)

(declare-fun tp!402762 () Bool)

(declare-fun inv!19321 (Conc!4913) Bool)

(assert (=> b!1420853 (= e!906880 (and (inv!19321 (c!233574 (tokens!1856 other!32))) tp!402762))))

(declare-fun tp!402761 () Bool)

(declare-fun b!1420854 () Bool)

(assert (=> b!1420854 (= e!906884 (and tp!402761 (inv!19320 (tokens!1856 other!32)) e!906880))))

(declare-fun b!1420855 () Bool)

(declare-fun tp!402759 () Bool)

(assert (=> b!1420855 (= e!906881 (and (inv!19321 (c!233574 (tokens!1856 thiss!10022))) tp!402759))))

(declare-fun b!1420856 () Bool)

(assert (=> b!1420856 (= e!906885 false)))

(declare-fun lt!479666 () List!14663)

(declare-fun list!5777 (BalanceConc!9766) List!14663)

(assert (=> b!1420856 (= lt!479666 (list!5777 (tokens!1856 thiss!10022)))))

(assert (= (and start!130864 res!643309) b!1420851))

(assert (= (and b!1420851 res!643310) b!1420856))

(assert (= b!1420852 b!1420855))

(assert (= start!130864 b!1420852))

(assert (= b!1420854 b!1420853))

(assert (= start!130864 b!1420854))

(declare-fun m!1610573 () Bool)

(assert (=> b!1420855 m!1610573))

(declare-fun m!1610575 () Bool)

(assert (=> b!1420856 m!1610575))

(declare-fun m!1610577 () Bool)

(assert (=> b!1420853 m!1610577))

(declare-fun m!1610579 () Bool)

(assert (=> b!1420851 m!1610579))

(declare-fun m!1610581 () Bool)

(assert (=> b!1420851 m!1610581))

(declare-fun m!1610583 () Bool)

(assert (=> b!1420851 m!1610583))

(declare-fun m!1610585 () Bool)

(assert (=> b!1420854 m!1610585))

(declare-fun m!1610587 () Bool)

(assert (=> b!1420852 m!1610587))

(declare-fun m!1610589 () Bool)

(assert (=> start!130864 m!1610589))

(declare-fun m!1610591 () Bool)

(assert (=> start!130864 m!1610591))

(check-sat (not b!1420854) (not start!130864) (not b!1420852) (not b!1420851) (not b!1420855) (not b!1420856) (not b!1420853))
(check-sat)
