; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!185842 () Bool)

(assert start!185842)

(assert (=> start!185842 true))

(declare-fun b!1860012 () Bool)

(assert (=> b!1860012 true))

(assert (=> b!1860012 true))

(declare-fun b!1860019 () Bool)

(declare-fun e!1187851 () Bool)

(declare-datatypes ((List!20708 0))(
  ( (Nil!20628) (Cons!20628 (h!26029 (_ BitVec 16)) (t!172645 List!20708)) )
))
(declare-datatypes ((IArray!13655 0))(
  ( (IArray!13656 (innerList!6885 List!20708)) )
))
(declare-datatypes ((Conc!6825 0))(
  ( (Node!6825 (left!16577 Conc!6825) (right!16907 Conc!6825) (csize!13880 Int) (cheight!7036 Int)) (Leaf!10006 (xs!9701 IArray!13655) (csize!13881 Int)) (Empty!6825) )
))
(declare-datatypes ((BalanceConc!13580 0))(
  ( (BalanceConc!13581 (c!302927 Conc!6825)) )
))
(declare-fun x!373164 () BalanceConc!13580)

(declare-fun tp!530093 () Bool)

(declare-fun inv!27117 (Conc!6825) Bool)

(assert (=> b!1860019 (= e!1187851 (and (inv!27117 (c!302927 x!373164)) tp!530093))))

(declare-fun inst!1166 () Bool)

(declare-datatypes ((DelimiterValueInjection!12 0))(
  ( (DelimiterValueInjection!13) )
))
(declare-fun thiss!5194 () DelimiterValueInjection!12)

(declare-fun inv!27118 (BalanceConc!13580) Bool)

(declare-fun list!8380 (BalanceConc!13580) List!20708)

(declare-datatypes ((TokenValue!3809 0))(
  ( (FloatLiteralValue!7618 (text!27108 List!20708)) (TokenValueExt!3808 (__x!12998 Int)) (Broken!19045 (value!115902 List!20708)) (Object!3888) (End!3809) (Def!3809) (Underscore!3809) (Match!3809) (Else!3809) (Error!3809) (Case!3809) (If!3809) (Extends!3809) (Abstract!3809) (Class!3809) (Val!3809) (DelimiterValue!7618 (del!3869 List!20708)) (KeywordValue!3815 (value!115903 List!20708)) (CommentValue!7618 (value!115904 List!20708)) (WhitespaceValue!7618 (value!115905 List!20708)) (IndentationValue!3809 (value!115906 List!20708)) (String!23708) (Int32!3809) (Broken!19046 (value!115907 List!20708)) (Boolean!3810) (Unit!35245) (OperatorValue!3812 (op!3869 List!20708)) (IdentifierValue!7618 (value!115908 List!20708)) (IdentifierValue!7619 (value!115909 List!20708)) (WhitespaceValue!7619 (value!115910 List!20708)) (True!7618) (False!7618) (Broken!19047 (value!115911 List!20708)) (Broken!19048 (value!115912 List!20708)) (True!7619) (RightBrace!3809) (RightBracket!3809) (Colon!3809) (Null!3809) (Comma!3809) (LeftBracket!3809) (False!7619) (LeftBrace!3809) (ImaginaryLiteralValue!3809 (text!27109 List!20708)) (StringLiteralValue!11427 (value!115913 List!20708)) (EOFValue!3809 (value!115914 List!20708)) (IdentValue!3809 (value!115915 List!20708)) (DelimiterValue!7619 (value!115916 List!20708)) (DedentValue!3809 (value!115917 List!20708)) (NewLineValue!3809 (value!115918 List!20708)) (IntegerValue!11427 (value!115919 (_ BitVec 32)) (text!27110 List!20708)) (IntegerValue!11428 (value!115920 Int) (text!27111 List!20708)) (Times!3809) (Or!3809) (Equal!3809) (Minus!3809) (Broken!19049 (value!115921 List!20708)) (And!3809) (Div!3809) (LessEqual!3809) (Mod!3809) (Concat!8871) (Not!3809) (Plus!3809) (SpaceValue!3809 (value!115922 List!20708)) (IntegerValue!11429 (value!115923 Int) (text!27112 List!20708)) (StringLiteralValue!11428 (text!27113 List!20708)) (FloatLiteralValue!7619 (text!27114 List!20708)) (BytesLiteralValue!3809 (value!115924 List!20708)) (CommentValue!7619 (value!115925 List!20708)) (StringLiteralValue!11429 (value!115926 List!20708)) (ErrorTokenValue!3809 (msg!3870 List!20708)) )
))
(declare-fun toCharacters!28 (DelimiterValueInjection!12 TokenValue!3809) BalanceConc!13580)

(declare-fun toValue!35 (DelimiterValueInjection!12 BalanceConc!13580) TokenValue!3809)

(assert (=> start!185842 (= inst!1166 (=> (and (inv!27118 x!373164) e!1187851) (= (list!8380 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373164))) (list!8380 x!373164))))))

(assert (= start!185842 b!1860019))

(declare-fun m!2283601 () Bool)

(assert (=> b!1860019 m!2283601))

(declare-fun m!2283603 () Bool)

(assert (=> start!185842 m!2283603))

(declare-fun m!2283605 () Bool)

(assert (=> start!185842 m!2283605))

(declare-fun m!2283607 () Bool)

(assert (=> start!185842 m!2283607))

(declare-fun m!2283609 () Bool)

(assert (=> start!185842 m!2283609))

(declare-fun m!2283611 () Bool)

(assert (=> start!185842 m!2283611))

(assert (=> start!185842 m!2283605))

(assert (=> start!185842 m!2283611))

(declare-fun bs!411114 () Bool)

(declare-fun neg-inst!1166 () Bool)

(declare-fun s!221696 () Bool)

(assert (= bs!411114 (and neg-inst!1166 s!221696)))

(assert (=> bs!411114 (=> true (= (list!8380 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373164))) (list!8380 x!373164)))))

(assert (=> m!2283611 m!2283605))

(assert (=> m!2283611 m!2283607))

(assert (=> m!2283611 m!2283603))

(assert (=> m!2283611 s!221696))

(assert (=> m!2283603 s!221696))

(declare-fun bs!411115 () Bool)

(assert (= bs!411115 (and neg-inst!1166 start!185842)))

(assert (=> bs!411115 (= true inst!1166)))

(declare-fun res!832924 () Bool)

(declare-fun e!1187850 () Bool)

(assert (=> start!185842 (=> res!832924 e!1187850)))

(declare-fun lambda!73519 () Int)

(declare-fun Forall!973 (Int) Bool)

(assert (=> start!185842 (= res!832924 (not (Forall!973 lambda!73519)))))

(assert (=> start!185842 (= (Forall!973 lambda!73519) inst!1166)))

(assert (=> start!185842 (not e!1187850)))

(assert (=> start!185842 true))

(declare-fun lambda!73520 () Int)

(declare-fun lambda!73521 () Int)

(declare-fun semiInverseModEq!1501 (Int Int) Bool)

(assert (=> b!1860012 (= e!1187850 (semiInverseModEq!1501 lambda!73520 lambda!73521))))

(assert (=> b!1860012 (= (semiInverseModEq!1501 lambda!73520 lambda!73521) (Forall!973 lambda!73519))))

(assert (= neg-inst!1166 inst!1166))

(assert (= (and start!185842 (not res!832924)) b!1860012))

(declare-fun m!2283613 () Bool)

(assert (=> start!185842 m!2283613))

(assert (=> start!185842 m!2283613))

(declare-fun m!2283615 () Bool)

(assert (=> b!1860012 m!2283615))

(assert (=> b!1860012 m!2283615))

(assert (=> b!1860012 m!2283613))

(push 1)

(assert (not b!1860012))

(assert (not start!185842))

(assert (not b!1860019))

(assert (not bs!411114))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

