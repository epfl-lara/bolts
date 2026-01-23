; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94598 () Bool)

(assert start!94598)

(declare-fun res!488309 () Bool)

(declare-fun e!697090 () Bool)

(assert (=> start!94598 (=> (not res!488309) (not e!697090))))

(declare-datatypes ((List!10623 0))(
  ( (Nil!10607) (Cons!10607 (h!16008 (_ BitVec 16)) (t!103891 List!10623)) )
))
(declare-datatypes ((TokenValue!1886 0))(
  ( (FloatLiteralValue!3772 (text!13647 List!10623)) (TokenValueExt!1885 (__x!7468 Int)) (Broken!9430 (value!59797 List!10623)) (Object!1901) (End!1886) (Def!1886) (Underscore!1886) (Match!1886) (Else!1886) (Error!1886) (Case!1886) (If!1886) (Extends!1886) (Abstract!1886) (Class!1886) (Val!1886) (DelimiterValue!3772 (del!1946 List!10623)) (KeywordValue!1892 (value!59798 List!10623)) (CommentValue!3772 (value!59799 List!10623)) (WhitespaceValue!3772 (value!59800 List!10623)) (IndentationValue!1886 (value!59801 List!10623)) (String!12999) (Int32!1886) (Broken!9431 (value!59802 List!10623)) (Boolean!1887) (Unit!16206) (OperatorValue!1889 (op!1946 List!10623)) (IdentifierValue!3772 (value!59803 List!10623)) (IdentifierValue!3773 (value!59804 List!10623)) (WhitespaceValue!3773 (value!59805 List!10623)) (True!3772) (False!3772) (Broken!9432 (value!59806 List!10623)) (Broken!9433 (value!59807 List!10623)) (True!3773) (RightBrace!1886) (RightBracket!1886) (Colon!1886) (Null!1886) (Comma!1886) (LeftBracket!1886) (False!3773) (LeftBrace!1886) (ImaginaryLiteralValue!1886 (text!13648 List!10623)) (StringLiteralValue!5658 (value!59808 List!10623)) (EOFValue!1886 (value!59809 List!10623)) (IdentValue!1886 (value!59810 List!10623)) (DelimiterValue!3773 (value!59811 List!10623)) (DedentValue!1886 (value!59812 List!10623)) (NewLineValue!1886 (value!59813 List!10623)) (IntegerValue!5658 (value!59814 (_ BitVec 32)) (text!13649 List!10623)) (IntegerValue!5659 (value!59815 Int) (text!13650 List!10623)) (Times!1886) (Or!1886) (Equal!1886) (Minus!1886) (Broken!9434 (value!59816 List!10623)) (And!1886) (Div!1886) (LessEqual!1886) (Mod!1886) (Concat!4975) (Not!1886) (Plus!1886) (SpaceValue!1886 (value!59817 List!10623)) (IntegerValue!5660 (value!59818 Int) (text!13651 List!10623)) (StringLiteralValue!5659 (text!13652 List!10623)) (FloatLiteralValue!3773 (text!13653 List!10623)) (BytesLiteralValue!1886 (value!59819 List!10623)) (CommentValue!3773 (value!59820 List!10623)) (StringLiteralValue!5660 (value!59821 List!10623)) (ErrorTokenValue!1886 (msg!1947 List!10623)) )
))
(declare-datatypes ((Regex!3089 0))(
  ( (ElementMatch!3089 (c!186872 (_ BitVec 16))) (Concat!4976 (regOne!6690 Regex!3089) (regTwo!6690 Regex!3089)) (EmptyExpr!3089) (Star!3089 (reg!3418 Regex!3089)) (EmptyLang!3089) (Union!3089 (regOne!6691 Regex!3089) (regTwo!6691 Regex!3089)) )
))
(declare-datatypes ((String!13000 0))(
  ( (String!13001 (value!59822 String)) )
))
(declare-datatypes ((IArray!6579 0))(
  ( (IArray!6580 (innerList!3347 List!10623)) )
))
(declare-datatypes ((Conc!3287 0))(
  ( (Node!3287 (left!9156 Conc!3287) (right!9486 Conc!3287) (csize!6804 Int) (cheight!3498 Int)) (Leaf!5203 (xs!5980 IArray!6579) (csize!6805 Int)) (Empty!3287) )
))
(declare-datatypes ((BalanceConc!6588 0))(
  ( (BalanceConc!6589 (c!186873 Conc!3287)) )
))
(declare-datatypes ((TokenValueInjection!3472 0))(
  ( (TokenValueInjection!3473 (toValue!2897 Int) (toChars!2756 Int)) )
))
(declare-datatypes ((Rule!3440 0))(
  ( (Rule!3441 (regex!1820 Regex!3089) (tag!2082 String!13000) (isSeparator!1820 Bool) (transformation!1820 TokenValueInjection!3472)) )
))
(declare-datatypes ((Token!3306 0))(
  ( (Token!3307 (value!59823 TokenValue!1886) (rule!3243 Rule!3440) (size!8231 Int) (originalCharacters!2376 List!10623)) )
))
(declare-datatypes ((List!10624 0))(
  ( (Nil!10608) (Cons!10608 (h!16009 Token!3306) (t!103892 List!10624)) )
))
(declare-datatypes ((IArray!6581 0))(
  ( (IArray!6582 (innerList!3348 List!10624)) )
))
(declare-datatypes ((Conc!3288 0))(
  ( (Node!3288 (left!9157 Conc!3288) (right!9487 Conc!3288) (csize!6806 Int) (cheight!3499 Int)) (Leaf!5204 (xs!5981 IArray!6581) (csize!6807 Int)) (Empty!3288) )
))
(declare-datatypes ((List!10625 0))(
  ( (Nil!10609) (Cons!10609 (h!16010 Rule!3440) (t!103893 List!10625)) )
))
(declare-datatypes ((BalanceConc!6590 0))(
  ( (BalanceConc!6591 (c!186874 Conc!3288)) )
))
(declare-datatypes ((PrintableTokens!356 0))(
  ( (PrintableTokens!357 (rules!9107 List!10625) (tokens!1379 BalanceConc!6590)) )
))
(declare-datatypes ((tuple2!11766 0))(
  ( (tuple2!11767 (_1!6709 Int) (_2!6709 PrintableTokens!356)) )
))
(declare-datatypes ((List!10626 0))(
  ( (Nil!10610) (Cons!10610 (h!16011 tuple2!11766) (t!103894 List!10626)) )
))
(declare-datatypes ((IArray!6583 0))(
  ( (IArray!6584 (innerList!3349 List!10626)) )
))
(declare-datatypes ((Conc!3289 0))(
  ( (Node!3289 (left!9158 Conc!3289) (right!9488 Conc!3289) (csize!6808 Int) (cheight!3500 Int)) (Leaf!5205 (xs!5982 IArray!6583) (csize!6809 Int)) (Empty!3289) )
))
(declare-datatypes ((BalanceConc!6592 0))(
  ( (BalanceConc!6593 (c!186875 Conc!3289)) )
))
(declare-fun objs!8 () BalanceConc!6592)

(declare-fun lambda!43258 () Int)

(declare-fun forall!2438 (BalanceConc!6592 Int) Bool)

(assert (=> start!94598 (= res!488309 (forall!2438 objs!8 lambda!43258))))

(assert (=> start!94598 e!697090))

(declare-fun e!697089 () Bool)

(declare-fun inv!13632 (BalanceConc!6592) Bool)

(assert (=> start!94598 (and (inv!13632 objs!8) e!697089)))

(declare-fun b!1100760 () Bool)

(assert (=> b!1100760 (= e!697090 false)))

(declare-fun lt!371825 () Int)

(declare-fun size!8232 (BalanceConc!6592) Int)

(assert (=> b!1100760 (= lt!371825 (size!8232 objs!8))))

(declare-fun b!1100761 () Bool)

(declare-fun tp!326990 () Bool)

(declare-fun inv!13633 (Conc!3289) Bool)

(assert (=> b!1100761 (= e!697089 (and (inv!13633 (c!186875 objs!8)) tp!326990))))

(assert (= (and start!94598 res!488309) b!1100760))

(assert (= start!94598 b!1100761))

(declare-fun m!1256711 () Bool)

(assert (=> start!94598 m!1256711))

(declare-fun m!1256713 () Bool)

(assert (=> start!94598 m!1256713))

(declare-fun m!1256715 () Bool)

(assert (=> b!1100760 m!1256715))

(declare-fun m!1256717 () Bool)

(assert (=> b!1100761 m!1256717))

(check-sat (not start!94598) (not b!1100760) (not b!1100761))
(check-sat)
