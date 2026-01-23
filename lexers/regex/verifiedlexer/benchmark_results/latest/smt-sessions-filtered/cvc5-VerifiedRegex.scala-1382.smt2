; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!73484 () Bool)

(assert start!73484)

(assert (=> start!73484 true))

(declare-fun b!821614 () Bool)

(assert (=> b!821614 true))

(assert (=> b!821614 true))

(declare-fun b!821621 () Bool)

(declare-fun e!542845 () Bool)

(declare-datatypes ((List!8848 0))(
  ( (Nil!8832) (Cons!8832 (h!14233 (_ BitVec 16)) (t!93067 List!8848)) )
))
(declare-datatypes ((IArray!5905 0))(
  ( (IArray!5906 (innerList!3010 List!8848)) )
))
(declare-datatypes ((Conc!2950 0))(
  ( (Node!2950 (left!6568 Conc!2950) (right!6898 Conc!2950) (csize!6130 Int) (cheight!3161 Int)) (Leaf!4333 (xs!5639 IArray!5905) (csize!6131 Int)) (Empty!2950) )
))
(declare-datatypes ((BalanceConc!5914 0))(
  ( (BalanceConc!5915 (c!133191 Conc!2950)) )
))
(declare-fun x!177051 () BalanceConc!5914)

(declare-fun tp!256757 () Bool)

(declare-fun inv!11250 (Conc!2950) Bool)

(assert (=> b!821621 (= e!542845 (and (inv!11250 (c!133191 x!177051)) tp!256757))))

(declare-fun inst!692 () Bool)

(declare-datatypes ((CommentValueInjection!12 0))(
  ( (CommentValueInjection!13) )
))
(declare-fun thiss!4444 () CommentValueInjection!12)

(declare-fun inv!11251 (BalanceConc!5914) Bool)

(declare-fun list!3516 (BalanceConc!5914) List!8848)

(declare-datatypes ((TokenValue!1723 0))(
  ( (FloatLiteralValue!3446 (text!12506 List!8848)) (TokenValueExt!1722 (__x!7185 Int)) (Broken!8615 (value!53813 List!8848)) (Object!1738) (End!1723) (Def!1723) (Underscore!1723) (Match!1723) (Else!1723) (Error!1723) (Case!1723) (If!1723) (Extends!1723) (Abstract!1723) (Class!1723) (Val!1723) (DelimiterValue!3446 (del!1783 List!8848)) (KeywordValue!1729 (value!53814 List!8848)) (CommentValue!3446 (value!53815 List!8848)) (WhitespaceValue!3446 (value!53816 List!8848)) (IndentationValue!1723 (value!53817 List!8848)) (String!10394) (Int32!1723) (Broken!8616 (value!53818 List!8848)) (Boolean!1724) (Unit!13357) (OperatorValue!1726 (op!1783 List!8848)) (IdentifierValue!3446 (value!53819 List!8848)) (IdentifierValue!3447 (value!53820 List!8848)) (WhitespaceValue!3447 (value!53821 List!8848)) (True!3446) (False!3446) (Broken!8617 (value!53822 List!8848)) (Broken!8618 (value!53823 List!8848)) (True!3447) (RightBrace!1723) (RightBracket!1723) (Colon!1723) (Null!1723) (Comma!1723) (LeftBracket!1723) (False!3447) (LeftBrace!1723) (ImaginaryLiteralValue!1723 (text!12507 List!8848)) (StringLiteralValue!5169 (value!53824 List!8848)) (EOFValue!1723 (value!53825 List!8848)) (IdentValue!1723 (value!53826 List!8848)) (DelimiterValue!3447 (value!53827 List!8848)) (DedentValue!1723 (value!53828 List!8848)) (NewLineValue!1723 (value!53829 List!8848)) (IntegerValue!5169 (value!53830 (_ BitVec 32)) (text!12508 List!8848)) (IntegerValue!5170 (value!53831 Int) (text!12509 List!8848)) (Times!1723) (Or!1723) (Equal!1723) (Minus!1723) (Broken!8619 (value!53832 List!8848)) (And!1723) (Div!1723) (LessEqual!1723) (Mod!1723) (Concat!3753) (Not!1723) (Plus!1723) (SpaceValue!1723 (value!53833 List!8848)) (IntegerValue!5171 (value!53834 Int) (text!12510 List!8848)) (StringLiteralValue!5170 (text!12511 List!8848)) (FloatLiteralValue!3447 (text!12512 List!8848)) (BytesLiteralValue!1723 (value!53835 List!8848)) (CommentValue!3447 (value!53836 List!8848)) (StringLiteralValue!5171 (value!53837 List!8848)) (ErrorTokenValue!1723 (msg!1784 List!8848)) )
))
(declare-fun toCharacters!18 (CommentValueInjection!12 TokenValue!1723) BalanceConc!5914)

(declare-fun toValue!25 (CommentValueInjection!12 BalanceConc!5914) TokenValue!1723)

(assert (=> start!73484 (= inst!692 (=> (and (inv!11251 x!177051) e!542845) (= (list!3516 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177051))) (list!3516 x!177051))))))

(assert (= start!73484 b!821621))

(declare-fun m!1062733 () Bool)

(assert (=> b!821621 m!1062733))

(declare-fun m!1062735 () Bool)

(assert (=> start!73484 m!1062735))

(declare-fun m!1062737 () Bool)

(assert (=> start!73484 m!1062737))

(declare-fun m!1062739 () Bool)

(assert (=> start!73484 m!1062739))

(declare-fun m!1062741 () Bool)

(assert (=> start!73484 m!1062741))

(declare-fun m!1062743 () Bool)

(assert (=> start!73484 m!1062743))

(assert (=> start!73484 m!1062739))

(assert (=> start!73484 m!1062741))

(declare-fun bs!229180 () Bool)

(declare-fun neg-inst!692 () Bool)

(declare-fun s!151431 () Bool)

(assert (= bs!229180 (and neg-inst!692 s!151431)))

(assert (=> bs!229180 (=> true (= (list!3516 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177051))) (list!3516 x!177051)))))

(assert (=> m!1062739 m!1062741))

(assert (=> m!1062739 m!1062743))

(assert (=> m!1062739 m!1062737))

(assert (=> m!1062739 s!151431))

(assert (=> m!1062737 s!151431))

(declare-fun bs!229181 () Bool)

(assert (= bs!229181 (and neg-inst!692 start!73484)))

(assert (=> bs!229181 (= true inst!692)))

(declare-fun res!379124 () Bool)

(declare-fun e!542844 () Bool)

(assert (=> start!73484 (=> res!379124 e!542844)))

(declare-fun lambda!24649 () Int)

(declare-fun Forall!392 (Int) Bool)

(assert (=> start!73484 (= res!379124 (not (Forall!392 lambda!24649)))))

(assert (=> start!73484 (= (Forall!392 lambda!24649) inst!692)))

(assert (=> start!73484 (not e!542844)))

(assert (=> start!73484 true))

(declare-fun lambda!24650 () Int)

(declare-fun lambda!24651 () Int)

(declare-fun semiInverseModEq!635 (Int Int) Bool)

(assert (=> b!821614 (= e!542844 (semiInverseModEq!635 lambda!24650 lambda!24651))))

(assert (=> b!821614 (= (semiInverseModEq!635 lambda!24650 lambda!24651) (Forall!392 lambda!24649))))

(assert (= neg-inst!692 inst!692))

(assert (= (and start!73484 (not res!379124)) b!821614))

(declare-fun m!1062745 () Bool)

(assert (=> start!73484 m!1062745))

(assert (=> start!73484 m!1062745))

(declare-fun m!1062747 () Bool)

(assert (=> b!821614 m!1062747))

(assert (=> b!821614 m!1062747))

(assert (=> b!821614 m!1062745))

(push 1)

(assert (not b!821614))

(assert (not start!73484))

(assert (not b!821621))

(assert (not bs!229180))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

