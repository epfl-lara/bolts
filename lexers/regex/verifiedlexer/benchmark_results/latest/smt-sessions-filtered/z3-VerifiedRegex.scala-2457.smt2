; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129864 () Bool)

(assert start!129864)

(declare-fun b!1415630 () Bool)

(declare-fun res!641039 () Bool)

(declare-fun e!903684 () Bool)

(assert (=> b!1415630 (=> (not res!641039) (not e!903684))))

(declare-datatypes ((List!14565 0))(
  ( (Nil!14499) (Cons!14499 (h!19900 (_ BitVec 16)) (t!124010 List!14565)) )
))
(declare-datatypes ((TokenValue!2613 0))(
  ( (FloatLiteralValue!5226 (text!18736 List!14565)) (TokenValueExt!2612 (__x!9037 Int)) (Broken!13065 (value!81512 List!14565)) (Object!2678) (End!2613) (Def!2613) (Underscore!2613) (Match!2613) (Else!2613) (Error!2613) (Case!2613) (If!2613) (Extends!2613) (Abstract!2613) (Class!2613) (Val!2613) (DelimiterValue!5226 (del!2673 List!14565)) (KeywordValue!2619 (value!81513 List!14565)) (CommentValue!5226 (value!81514 List!14565)) (WhitespaceValue!5226 (value!81515 List!14565)) (IndentationValue!2613 (value!81516 List!14565)) (String!17300) (Int32!2613) (Broken!13066 (value!81517 List!14565)) (Boolean!2614) (Unit!21303) (OperatorValue!2616 (op!2673 List!14565)) (IdentifierValue!5226 (value!81518 List!14565)) (IdentifierValue!5227 (value!81519 List!14565)) (WhitespaceValue!5227 (value!81520 List!14565)) (True!5226) (False!5226) (Broken!13067 (value!81521 List!14565)) (Broken!13068 (value!81522 List!14565)) (True!5227) (RightBrace!2613) (RightBracket!2613) (Colon!2613) (Null!2613) (Comma!2613) (LeftBracket!2613) (False!5227) (LeftBrace!2613) (ImaginaryLiteralValue!2613 (text!18737 List!14565)) (StringLiteralValue!7839 (value!81523 List!14565)) (EOFValue!2613 (value!81524 List!14565)) (IdentValue!2613 (value!81525 List!14565)) (DelimiterValue!5227 (value!81526 List!14565)) (DedentValue!2613 (value!81527 List!14565)) (NewLineValue!2613 (value!81528 List!14565)) (IntegerValue!7839 (value!81529 (_ BitVec 32)) (text!18738 List!14565)) (IntegerValue!7840 (value!81530 Int) (text!18739 List!14565)) (Times!2613) (Or!2613) (Equal!2613) (Minus!2613) (Broken!13069 (value!81531 List!14565)) (And!2613) (Div!2613) (LessEqual!2613) (Mod!2613) (Concat!6450) (Not!2613) (Plus!2613) (SpaceValue!2613 (value!81532 List!14565)) (IntegerValue!7841 (value!81533 Int) (text!18740 List!14565)) (StringLiteralValue!7840 (text!18741 List!14565)) (FloatLiteralValue!5227 (text!18742 List!14565)) (BytesLiteralValue!2613 (value!81534 List!14565)) (CommentValue!5227 (value!81535 List!14565)) (StringLiteralValue!7841 (value!81536 List!14565)) (ErrorTokenValue!2613 (msg!2674 List!14565)) )
))
(declare-datatypes ((Regex!3837 0))(
  ( (ElementMatch!3837 (c!232658 (_ BitVec 16))) (Concat!6451 (regOne!8186 Regex!3837) (regTwo!8186 Regex!3837)) (EmptyExpr!3837) (Star!3837 (reg!4166 Regex!3837)) (EmptyLang!3837) (Union!3837 (regOne!8187 Regex!3837) (regTwo!8187 Regex!3837)) )
))
(declare-datatypes ((String!17301 0))(
  ( (String!17302 (value!81537 String)) )
))
(declare-datatypes ((IArray!9691 0))(
  ( (IArray!9692 (innerList!4903 List!14565)) )
))
(declare-datatypes ((Conc!4843 0))(
  ( (Node!4843 (left!12390 Conc!4843) (right!12720 Conc!4843) (csize!9916 Int) (cheight!5054 Int)) (Leaf!7301 (xs!7570 IArray!9691) (csize!9917 Int)) (Empty!4843) )
))
(declare-datatypes ((BalanceConc!9626 0))(
  ( (BalanceConc!9627 (c!232659 Conc!4843)) )
))
(declare-datatypes ((TokenValueInjection!4886 0))(
  ( (TokenValueInjection!4887 (toValue!3822 Int) (toChars!3681 Int)) )
))
(declare-datatypes ((Rule!4846 0))(
  ( (Rule!4847 (regex!2523 Regex!3837) (tag!2785 String!17301) (isSeparator!2523 Bool) (transformation!2523 TokenValueInjection!4886)) )
))
(declare-datatypes ((Token!4708 0))(
  ( (Token!4709 (value!81538 TokenValue!2613) (rule!4286 Rule!4846) (size!11955 Int) (originalCharacters!3385 List!14565)) )
))
(declare-datatypes ((List!14566 0))(
  ( (Nil!14500) (Cons!14500 (h!19901 Token!4708) (t!124011 List!14566)) )
))
(declare-datatypes ((IArray!9693 0))(
  ( (IArray!9694 (innerList!4904 List!14566)) )
))
(declare-datatypes ((Conc!4844 0))(
  ( (Node!4844 (left!12391 Conc!4844) (right!12721 Conc!4844) (csize!9918 Int) (cheight!5055 Int)) (Leaf!7302 (xs!7571 IArray!9693) (csize!9919 Int)) (Empty!4844) )
))
(declare-datatypes ((List!14567 0))(
  ( (Nil!14501) (Cons!14501 (h!19902 Rule!4846) (t!124012 List!14567)) )
))
(declare-datatypes ((BalanceConc!9628 0))(
  ( (BalanceConc!9629 (c!232660 Conc!4844)) )
))
(declare-datatypes ((PrintableTokens!828 0))(
  ( (PrintableTokens!829 (rules!11080 List!14567) (tokens!1798 BalanceConc!9628)) )
))
(declare-fun acc!229 () PrintableTokens!828)

(declare-fun usesJsonRules!0 (PrintableTokens!828) Bool)

(assert (=> b!1415630 (= res!641039 (usesJsonRules!0 acc!229))))

(declare-fun b!1415631 () Bool)

(declare-fun e!903685 () Bool)

(declare-fun sep!3 () PrintableTokens!828)

(declare-fun tp!401650 () Bool)

(declare-fun inv!19031 (Conc!4844) Bool)

(assert (=> b!1415631 (= e!903685 (and (inv!19031 (c!232660 (tokens!1798 sep!3))) tp!401650))))

(declare-fun b!1415632 () Bool)

(declare-fun e!903686 () Bool)

(declare-fun tp!401646 () Bool)

(assert (=> b!1415632 (= e!903686 (and (inv!19031 (c!232660 (tokens!1798 acc!229))) tp!401646))))

(declare-fun b!1415633 () Bool)

(declare-fun res!641042 () Bool)

(assert (=> b!1415633 (=> (not res!641042) (not e!903684))))

(declare-datatypes ((List!14568 0))(
  ( (Nil!14502) (Cons!14502 (h!19903 PrintableTokens!828) (t!124013 List!14568)) )
))
(declare-datatypes ((IArray!9695 0))(
  ( (IArray!9696 (innerList!4905 List!14568)) )
))
(declare-datatypes ((Conc!4845 0))(
  ( (Node!4845 (left!12392 Conc!4845) (right!12722 Conc!4845) (csize!9920 Int) (cheight!5056 Int)) (Leaf!7303 (xs!7572 IArray!9695) (csize!9921 Int)) (Empty!4845) )
))
(declare-datatypes ((BalanceConc!9630 0))(
  ( (BalanceConc!9631 (c!232661 Conc!4845)) )
))
(declare-fun objs!24 () BalanceConc!9630)

(declare-fun isEmpty!8886 (BalanceConc!9630) Bool)

(assert (=> b!1415633 (= res!641042 (not (isEmpty!8886 objs!24)))))

(declare-fun b!1415634 () Bool)

(declare-fun res!641040 () Bool)

(assert (=> b!1415634 (=> (not res!641040) (not e!903684))))

(declare-fun size!11956 (BalanceConc!9630) Int)

(assert (=> b!1415634 (= res!641040 (not (= (size!11956 objs!24) 1)))))

(declare-fun b!1415635 () Bool)

(declare-fun e!903683 () Bool)

(declare-fun tp!401648 () Bool)

(declare-fun inv!19032 (BalanceConc!9628) Bool)

(assert (=> b!1415635 (= e!903683 (and tp!401648 (inv!19032 (tokens!1798 sep!3)) e!903685))))

(declare-fun b!1415636 () Bool)

(declare-fun e!903682 () Bool)

(declare-fun tp!401649 () Bool)

(declare-fun inv!19033 (Conc!4845) Bool)

(assert (=> b!1415636 (= e!903682 (and (inv!19033 (c!232661 objs!24)) tp!401649))))

(declare-fun res!641041 () Bool)

(assert (=> start!129864 (=> (not res!641041) (not e!903684))))

(declare-fun lambda!62539 () Int)

(declare-fun forall!3579 (BalanceConc!9630 Int) Bool)

(assert (=> start!129864 (= res!641041 (forall!3579 objs!24 lambda!62539))))

(assert (=> start!129864 e!903684))

(declare-fun inv!19034 (BalanceConc!9630) Bool)

(assert (=> start!129864 (and (inv!19034 objs!24) e!903682)))

(declare-fun e!903687 () Bool)

(declare-fun inv!19035 (PrintableTokens!828) Bool)

(assert (=> start!129864 (and (inv!19035 acc!229) e!903687)))

(assert (=> start!129864 (and (inv!19035 sep!3) e!903683)))

(declare-fun b!1415637 () Bool)

(declare-fun tp!401647 () Bool)

(assert (=> b!1415637 (= e!903687 (and tp!401647 (inv!19032 (tokens!1798 acc!229)) e!903686))))

(declare-fun b!1415638 () Bool)

(assert (=> b!1415638 (= e!903684 false)))

(declare-datatypes ((Option!2784 0))(
  ( (None!2783) (Some!2783 (v!22023 PrintableTokens!828)) )
))
(declare-fun lt!475840 () Option!2784)

(declare-fun append!442 (PrintableTokens!828 PrintableTokens!828) Option!2784)

(declare-fun head!2727 (BalanceConc!9630) PrintableTokens!828)

(assert (=> b!1415638 (= lt!475840 (append!442 (head!2727 objs!24) sep!3))))

(declare-fun b!1415639 () Bool)

(declare-fun res!641043 () Bool)

(assert (=> b!1415639 (=> (not res!641043) (not e!903684))))

(assert (=> b!1415639 (= res!641043 (usesJsonRules!0 sep!3))))

(assert (= (and start!129864 res!641041) b!1415630))

(assert (= (and b!1415630 res!641039) b!1415639))

(assert (= (and b!1415639 res!641043) b!1415633))

(assert (= (and b!1415633 res!641042) b!1415634))

(assert (= (and b!1415634 res!641040) b!1415638))

(assert (= start!129864 b!1415636))

(assert (= b!1415637 b!1415632))

(assert (= start!129864 b!1415637))

(assert (= b!1415635 b!1415631))

(assert (= start!129864 b!1415635))

(declare-fun m!1600537 () Bool)

(assert (=> start!129864 m!1600537))

(declare-fun m!1600539 () Bool)

(assert (=> start!129864 m!1600539))

(declare-fun m!1600541 () Bool)

(assert (=> start!129864 m!1600541))

(declare-fun m!1600543 () Bool)

(assert (=> start!129864 m!1600543))

(declare-fun m!1600545 () Bool)

(assert (=> b!1415634 m!1600545))

(declare-fun m!1600547 () Bool)

(assert (=> b!1415638 m!1600547))

(assert (=> b!1415638 m!1600547))

(declare-fun m!1600549 () Bool)

(assert (=> b!1415638 m!1600549))

(declare-fun m!1600551 () Bool)

(assert (=> b!1415639 m!1600551))

(declare-fun m!1600553 () Bool)

(assert (=> b!1415633 m!1600553))

(declare-fun m!1600555 () Bool)

(assert (=> b!1415636 m!1600555))

(declare-fun m!1600557 () Bool)

(assert (=> b!1415637 m!1600557))

(declare-fun m!1600559 () Bool)

(assert (=> b!1415631 m!1600559))

(declare-fun m!1600561 () Bool)

(assert (=> b!1415635 m!1600561))

(declare-fun m!1600563 () Bool)

(assert (=> b!1415630 m!1600563))

(declare-fun m!1600565 () Bool)

(assert (=> b!1415632 m!1600565))

(check-sat (not b!1415630) (not b!1415633) (not b!1415636) (not b!1415634) (not b!1415637) (not b!1415638) (not start!129864) (not b!1415639) (not b!1415631) (not b!1415632) (not b!1415635))
(check-sat)
