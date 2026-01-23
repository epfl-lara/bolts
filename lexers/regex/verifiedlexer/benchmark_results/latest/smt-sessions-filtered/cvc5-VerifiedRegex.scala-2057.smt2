; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!104648 () Bool)

(assert start!104648)

(declare-fun b!1181631 () Bool)

(declare-fun b_free!28181 () Bool)

(declare-fun b_next!28885 () Bool)

(assert (=> b!1181631 (= b_free!28181 (not b_next!28885))))

(declare-fun tp!336650 () Bool)

(declare-fun b_and!81173 () Bool)

(assert (=> b!1181631 (= tp!336650 b_and!81173)))

(declare-fun b_free!28183 () Bool)

(declare-fun b_next!28887 () Bool)

(assert (=> b!1181631 (= b_free!28183 (not b_next!28887))))

(declare-fun tp!336651 () Bool)

(declare-fun b_and!81175 () Bool)

(assert (=> b!1181631 (= tp!336651 b_and!81175)))

(declare-fun b!1181636 () Bool)

(declare-fun b_free!28185 () Bool)

(declare-fun b_next!28889 () Bool)

(assert (=> b!1181636 (= b_free!28185 (not b_next!28889))))

(declare-fun tp!336653 () Bool)

(declare-fun b_and!81177 () Bool)

(assert (=> b!1181636 (= tp!336653 b_and!81177)))

(declare-fun b_free!28187 () Bool)

(declare-fun b_next!28891 () Bool)

(assert (=> b!1181636 (= b_free!28187 (not b_next!28891))))

(declare-fun tp!336647 () Bool)

(declare-fun b_and!81179 () Bool)

(assert (=> b!1181636 (= tp!336647 b_and!81179)))

(declare-fun b!1181653 () Bool)

(declare-fun e!758525 () Bool)

(assert (=> b!1181653 (= e!758525 true)))

(declare-fun b!1181652 () Bool)

(declare-fun e!758524 () Bool)

(assert (=> b!1181652 (= e!758524 e!758525)))

(declare-fun b!1181651 () Bool)

(declare-fun e!758523 () Bool)

(assert (=> b!1181651 (= e!758523 e!758524)))

(declare-fun b!1181637 () Bool)

(assert (=> b!1181637 e!758523))

(assert (= b!1181652 b!1181653))

(assert (= b!1181651 b!1181652))

(declare-datatypes ((C!6966 0))(
  ( (C!6967 (val!3779 Int)) )
))
(declare-datatypes ((List!11804 0))(
  ( (Nil!11780) (Cons!11780 (h!17181 C!6966) (t!111476 List!11804)) )
))
(declare-datatypes ((IArray!7725 0))(
  ( (IArray!7726 (innerList!3920 List!11804)) )
))
(declare-datatypes ((Conc!3860 0))(
  ( (Node!3860 (left!10263 Conc!3860) (right!10593 Conc!3860) (csize!7950 Int) (cheight!4071 Int)) (Leaf!5918 (xs!6565 IArray!7725) (csize!7951 Int)) (Empty!3860) )
))
(declare-datatypes ((List!11805 0))(
  ( (Nil!11781) (Cons!11781 (h!17182 (_ BitVec 16)) (t!111477 List!11805)) )
))
(declare-datatypes ((BalanceConc!7742 0))(
  ( (BalanceConc!7743 (c!196806 Conc!3860)) )
))
(declare-datatypes ((TokenValue!2120 0))(
  ( (FloatLiteralValue!4240 (text!15285 List!11805)) (TokenValueExt!2119 (__x!7951 Int)) (Broken!10600 (value!66571 List!11805)) (Object!2143) (End!2120) (Def!2120) (Underscore!2120) (Match!2120) (Else!2120) (Error!2120) (Case!2120) (If!2120) (Extends!2120) (Abstract!2120) (Class!2120) (Val!2120) (DelimiterValue!4240 (del!2180 List!11805)) (KeywordValue!2126 (value!66572 List!11805)) (CommentValue!4240 (value!66573 List!11805)) (WhitespaceValue!4240 (value!66574 List!11805)) (IndentationValue!2120 (value!66575 List!11805)) (String!14269) (Int32!2120) (Broken!10601 (value!66576 List!11805)) (Boolean!2121) (Unit!18098) (OperatorValue!2123 (op!2180 List!11805)) (IdentifierValue!4240 (value!66577 List!11805)) (IdentifierValue!4241 (value!66578 List!11805)) (WhitespaceValue!4241 (value!66579 List!11805)) (True!4240) (False!4240) (Broken!10602 (value!66580 List!11805)) (Broken!10603 (value!66581 List!11805)) (True!4241) (RightBrace!2120) (RightBracket!2120) (Colon!2120) (Null!2120) (Comma!2120) (LeftBracket!2120) (False!4241) (LeftBrace!2120) (ImaginaryLiteralValue!2120 (text!15286 List!11805)) (StringLiteralValue!6360 (value!66582 List!11805)) (EOFValue!2120 (value!66583 List!11805)) (IdentValue!2120 (value!66584 List!11805)) (DelimiterValue!4241 (value!66585 List!11805)) (DedentValue!2120 (value!66586 List!11805)) (NewLineValue!2120 (value!66587 List!11805)) (IntegerValue!6360 (value!66588 (_ BitVec 32)) (text!15287 List!11805)) (IntegerValue!6361 (value!66589 Int) (text!15288 List!11805)) (Times!2120) (Or!2120) (Equal!2120) (Minus!2120) (Broken!10604 (value!66590 List!11805)) (And!2120) (Div!2120) (LessEqual!2120) (Mod!2120) (Concat!5444) (Not!2120) (Plus!2120) (SpaceValue!2120 (value!66591 List!11805)) (IntegerValue!6362 (value!66592 Int) (text!15289 List!11805)) (StringLiteralValue!6361 (text!15290 List!11805)) (FloatLiteralValue!4241 (text!15291 List!11805)) (BytesLiteralValue!2120 (value!66593 List!11805)) (CommentValue!4241 (value!66594 List!11805)) (StringLiteralValue!6362 (value!66595 List!11805)) (ErrorTokenValue!2120 (msg!2181 List!11805)) )
))
(declare-datatypes ((Regex!3324 0))(
  ( (ElementMatch!3324 (c!196807 C!6966)) (Concat!5445 (regOne!7160 Regex!3324) (regTwo!7160 Regex!3324)) (EmptyExpr!3324) (Star!3324 (reg!3653 Regex!3324)) (EmptyLang!3324) (Union!3324 (regOne!7161 Regex!3324) (regTwo!7161 Regex!3324)) )
))
(declare-datatypes ((String!14270 0))(
  ( (String!14271 (value!66596 String)) )
))
(declare-datatypes ((TokenValueInjection!3940 0))(
  ( (TokenValueInjection!3941 (toValue!3163 Int) (toChars!3022 Int)) )
))
(declare-datatypes ((Rule!3908 0))(
  ( (Rule!3909 (regex!2054 Regex!3324) (tag!2316 String!14270) (isSeparator!2054 Bool) (transformation!2054 TokenValueInjection!3940)) )
))
(declare-datatypes ((List!11806 0))(
  ( (Nil!11782) (Cons!11782 (h!17183 Rule!3908) (t!111478 List!11806)) )
))
(declare-fun rules!4386 () List!11806)

(assert (= (and b!1181637 (is-Cons!11782 rules!4386)) b!1181651))

(declare-fun order!7243 () Int)

(declare-fun order!7245 () Int)

(declare-fun lambda!48666 () Int)

(declare-fun dynLambda!5211 (Int Int) Int)

(declare-fun dynLambda!5212 (Int Int) Int)

(assert (=> b!1181653 (< (dynLambda!5211 order!7243 (toValue!3163 (transformation!2054 (h!17183 rules!4386)))) (dynLambda!5212 order!7245 lambda!48666))))

(declare-fun order!7247 () Int)

(declare-fun dynLambda!5213 (Int Int) Int)

(assert (=> b!1181653 (< (dynLambda!5213 order!7247 (toChars!3022 (transformation!2054 (h!17183 rules!4386)))) (dynLambda!5212 order!7245 lambda!48666))))

(declare-fun b!1181628 () Bool)

(declare-fun res!534070 () Bool)

(declare-fun e!758506 () Bool)

(assert (=> b!1181628 (=> (not res!534070) (not e!758506))))

(declare-datatypes ((Token!3770 0))(
  ( (Token!3771 (value!66597 TokenValue!2120) (rule!3475 Rule!3908) (size!9306 Int) (originalCharacters!2608 List!11804)) )
))
(declare-datatypes ((List!11807 0))(
  ( (Nil!11783) (Cons!11783 (h!17184 Token!3770) (t!111479 List!11807)) )
))
(declare-fun l!6534 () List!11807)

(declare-fun i!1621 () Int)

(assert (=> b!1181628 (= res!534070 (and (not (is-Nil!11783 l!6534)) (<= i!1621 0)))))

(declare-fun b!1181629 () Bool)

(declare-fun e!758504 () Bool)

(declare-fun e!758515 () Bool)

(assert (=> b!1181629 (= e!758504 e!758515)))

(declare-fun res!534068 () Bool)

(assert (=> b!1181629 (=> (not res!534068) (not e!758515))))

(declare-fun lt!406796 () List!11807)

(declare-datatypes ((LexerInterface!1749 0))(
  ( (LexerInterfaceExt!1746 (__x!7952 Int)) (Lexer!1747) )
))
(declare-fun thiss!27592 () LexerInterface!1749)

(declare-fun rulesProduceIndividualToken!780 (LexerInterface!1749 List!11806 Token!3770) Bool)

(assert (=> b!1181629 (= res!534068 (rulesProduceIndividualToken!780 thiss!27592 rules!4386 (h!17184 lt!406796)))))

(declare-fun b!1181630 () Bool)

(declare-fun e!758507 () Bool)

(declare-fun e!758505 () Bool)

(declare-fun tp!336648 () Bool)

(assert (=> b!1181630 (= e!758507 (and e!758505 tp!336648))))

(declare-fun e!758512 () Bool)

(assert (=> b!1181631 (= e!758512 (and tp!336650 tp!336651))))

(declare-fun b!1181632 () Bool)

(declare-fun res!534064 () Bool)

(assert (=> b!1181632 (=> (not res!534064) (not e!758506))))

(declare-fun rulesProduceEachTokenIndividuallyList!615 (LexerInterface!1749 List!11806 List!11807) Bool)

(assert (=> b!1181632 (= res!534064 (rulesProduceEachTokenIndividuallyList!615 thiss!27592 rules!4386 l!6534))))

(declare-fun res!534071 () Bool)

(assert (=> start!104648 (=> (not res!534071) (not e!758506))))

(assert (=> start!104648 (= res!534071 (is-Lexer!1747 thiss!27592))))

(assert (=> start!104648 e!758506))

(assert (=> start!104648 true))

(assert (=> start!104648 e!758507))

(declare-fun e!758511 () Bool)

(assert (=> start!104648 e!758511))

(declare-fun b!1181633 () Bool)

(declare-fun tp!336652 () Bool)

(declare-fun e!758509 () Bool)

(declare-fun e!758516 () Bool)

(declare-fun inv!21 (TokenValue!2120) Bool)

(assert (=> b!1181633 (= e!758516 (and (inv!21 (value!66597 (h!17184 l!6534))) e!758509 tp!336652))))

(declare-fun b!1181634 () Bool)

(assert (=> b!1181634 (= e!758515 (rulesProduceEachTokenIndividuallyList!615 thiss!27592 rules!4386 (t!111479 lt!406796)))))

(declare-fun b!1181635 () Bool)

(declare-fun res!534067 () Bool)

(assert (=> b!1181635 (=> (not res!534067) (not e!758506))))

(declare-fun rulesInvariant!1623 (LexerInterface!1749 List!11806) Bool)

(assert (=> b!1181635 (= res!534067 (rulesInvariant!1623 thiss!27592 rules!4386))))

(declare-fun e!758514 () Bool)

(assert (=> b!1181636 (= e!758514 (and tp!336653 tp!336647))))

(assert (=> b!1181637 (= e!758506 (not true))))

(declare-fun forall!3117 (List!11807 Int) Bool)

(assert (=> b!1181637 (forall!3117 lt!406796 lambda!48666)))

(declare-datatypes ((Unit!18099 0))(
  ( (Unit!18100) )
))
(declare-fun lt!406795 () Unit!18099)

(declare-fun lemmaForallSubseq!174 (List!11807 List!11807 Int) Unit!18099)

(assert (=> b!1181637 (= lt!406795 (lemmaForallSubseq!174 lt!406796 l!6534 lambda!48666))))

(declare-fun subseq!310 (List!11807 List!11807) Bool)

(assert (=> b!1181637 (subseq!310 lt!406796 l!6534)))

(declare-fun lt!406797 () Unit!18099)

(declare-fun lemmaDropSubseq!73 (List!11807 Int) Unit!18099)

(assert (=> b!1181637 (= lt!406797 (lemmaDropSubseq!73 l!6534 i!1621))))

(assert (=> b!1181637 (= (rulesProduceEachTokenIndividuallyList!615 thiss!27592 rules!4386 lt!406796) e!758504)))

(declare-fun res!534066 () Bool)

(assert (=> b!1181637 (=> res!534066 e!758504)))

(assert (=> b!1181637 (= res!534066 (not (is-Cons!11783 lt!406796)))))

(declare-fun drop!534 (List!11807 Int) List!11807)

(assert (=> b!1181637 (= lt!406796 (drop!534 l!6534 i!1621))))

(declare-fun b!1181638 () Bool)

(declare-fun res!534065 () Bool)

(assert (=> b!1181638 (=> (not res!534065) (not e!758506))))

(declare-fun isEmpty!7107 (List!11806) Bool)

(assert (=> b!1181638 (= res!534065 (not (isEmpty!7107 rules!4386)))))

(declare-fun tp!336654 () Bool)

(declare-fun b!1181639 () Bool)

(declare-fun inv!15603 (Token!3770) Bool)

(assert (=> b!1181639 (= e!758511 (and (inv!15603 (h!17184 l!6534)) e!758516 tp!336654))))

(declare-fun tp!336649 () Bool)

(declare-fun b!1181640 () Bool)

(declare-fun inv!15600 (String!14270) Bool)

(declare-fun inv!15604 (TokenValueInjection!3940) Bool)

(assert (=> b!1181640 (= e!758509 (and tp!336649 (inv!15600 (tag!2316 (rule!3475 (h!17184 l!6534)))) (inv!15604 (transformation!2054 (rule!3475 (h!17184 l!6534)))) e!758512))))

(declare-fun b!1181641 () Bool)

(declare-fun tp!336655 () Bool)

(assert (=> b!1181641 (= e!758505 (and tp!336655 (inv!15600 (tag!2316 (h!17183 rules!4386))) (inv!15604 (transformation!2054 (h!17183 rules!4386))) e!758514))))

(declare-fun b!1181642 () Bool)

(declare-fun res!534069 () Bool)

(assert (=> b!1181642 (=> (not res!534069) (not e!758506))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!143 (LexerInterface!1749 List!11807 List!11806) Bool)

(assert (=> b!1181642 (= res!534069 (tokensListTwoByTwoPredicateSeparableList!143 thiss!27592 l!6534 rules!4386))))

(assert (= (and start!104648 res!534071) b!1181638))

(assert (= (and b!1181638 res!534065) b!1181635))

(assert (= (and b!1181635 res!534067) b!1181632))

(assert (= (and b!1181632 res!534064) b!1181642))

(assert (= (and b!1181642 res!534069) b!1181628))

(assert (= (and b!1181628 res!534070) b!1181637))

(assert (= (and b!1181637 (not res!534066)) b!1181629))

(assert (= (and b!1181629 res!534068) b!1181634))

(assert (= b!1181641 b!1181636))

(assert (= b!1181630 b!1181641))

(assert (= (and start!104648 (is-Cons!11782 rules!4386)) b!1181630))

(assert (= b!1181640 b!1181631))

(assert (= b!1181633 b!1181640))

(assert (= b!1181639 b!1181633))

(assert (= (and start!104648 (is-Cons!11783 l!6534)) b!1181639))

(declare-fun m!1357717 () Bool)

(assert (=> b!1181634 m!1357717))

(declare-fun m!1357719 () Bool)

(assert (=> b!1181641 m!1357719))

(declare-fun m!1357721 () Bool)

(assert (=> b!1181641 m!1357721))

(declare-fun m!1357723 () Bool)

(assert (=> b!1181642 m!1357723))

(declare-fun m!1357725 () Bool)

(assert (=> b!1181632 m!1357725))

(declare-fun m!1357727 () Bool)

(assert (=> b!1181635 m!1357727))

(declare-fun m!1357729 () Bool)

(assert (=> b!1181640 m!1357729))

(declare-fun m!1357731 () Bool)

(assert (=> b!1181640 m!1357731))

(declare-fun m!1357733 () Bool)

(assert (=> b!1181638 m!1357733))

(declare-fun m!1357735 () Bool)

(assert (=> b!1181629 m!1357735))

(declare-fun m!1357737 () Bool)

(assert (=> b!1181637 m!1357737))

(declare-fun m!1357739 () Bool)

(assert (=> b!1181637 m!1357739))

(declare-fun m!1357741 () Bool)

(assert (=> b!1181637 m!1357741))

(declare-fun m!1357743 () Bool)

(assert (=> b!1181637 m!1357743))

(declare-fun m!1357745 () Bool)

(assert (=> b!1181637 m!1357745))

(declare-fun m!1357747 () Bool)

(assert (=> b!1181637 m!1357747))

(declare-fun m!1357749 () Bool)

(assert (=> b!1181639 m!1357749))

(declare-fun m!1357751 () Bool)

(assert (=> b!1181633 m!1357751))

(push 1)

(assert b_and!81173)

(assert (not b!1181640))

(assert (not b_next!28887))

(assert (not b!1181632))

(assert (not b_next!28891))

(assert (not b!1181629))

(assert (not b_next!28889))

(assert b_and!81175)

(assert b_and!81179)

(assert (not b!1181630))

(assert b_and!81177)

(assert (not b!1181638))

(assert (not b!1181642))

(assert (not b!1181651))

(assert (not b!1181635))

(assert (not b!1181637))

(assert (not b!1181641))

(assert (not b!1181633))

(assert (not b!1181639))

(assert (not b!1181634))

(assert (not b_next!28885))

(check-sat)

(pop 1)

(push 1)

(assert b_and!81173)

(assert (not b_next!28887))

(assert (not b_next!28891))

(assert (not b_next!28889))

(assert b_and!81175)

(assert b_and!81179)

(assert (not b_next!28885))

(assert b_and!81177)

(check-sat)

(pop 1)

