; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!230154 () Bool)

(assert start!230154)

(assert (=> start!230154 true))

(declare-fun b!2329449 () Bool)

(assert (=> b!2329449 true))

(assert (=> b!2329449 true))

(declare-fun b!2329456 () Bool)

(declare-fun e!1492542 () Bool)

(declare-datatypes ((List!27921 0))(
  ( (Nil!27823) (Cons!27823 (h!33224 (_ BitVec 16)) (t!207708 List!27921)) )
))
(declare-datatypes ((IArray!18261 0))(
  ( (IArray!18262 (innerList!9188 List!27921)) )
))
(declare-datatypes ((Conc!9128 0))(
  ( (Node!9128 (left!21122 Conc!9128) (right!21452 Conc!9128) (csize!18486 Int) (cheight!9339 Int)) (Leaf!13413 (xs!12108 IArray!18261) (csize!18487 Int)) (Empty!9128) )
))
(declare-datatypes ((BalanceConc!17868 0))(
  ( (BalanceConc!17869 (c!370024 Conc!9128)) )
))
(declare-fun x!442526 () BalanceConc!17868)

(declare-fun tp!738206 () Bool)

(declare-fun inv!37892 (Conc!9128) Bool)

(assert (=> b!2329456 (= e!1492542 (and (inv!37892 (c!370024 x!442526)) tp!738206))))

(declare-fun inst!1358 () Bool)

(declare-datatypes ((FloatLiteralValueInjection!112 0))(
  ( (FloatLiteralValueInjection!113) )
))
(declare-fun thiss!3053 () FloatLiteralValueInjection!112)

(declare-fun inv!37893 (BalanceConc!17868) Bool)

(declare-fun list!11060 (BalanceConc!17868) List!27921)

(declare-datatypes ((TokenValue!4612 0))(
  ( (FloatLiteralValue!9224 (text!32729 List!27921)) (TokenValueExt!4611 (__x!18381 Int)) (Broken!23060 (value!140830 List!27921)) (Object!4709) (End!4612) (Def!4612) (Underscore!4612) (Match!4612) (Else!4612) (Error!4612) (Case!4612) (If!4612) (Extends!4612) (Abstract!4612) (Class!4612) (Val!4612) (DelimiterValue!9224 (del!4672 List!27921)) (KeywordValue!4618 (value!140831 List!27921)) (CommentValue!9224 (value!140832 List!27921)) (WhitespaceValue!9224 (value!140833 List!27921)) (IndentationValue!4612 (value!140834 List!27921)) (String!30433) (Int32!4612) (Broken!23061 (value!140835 List!27921)) (Boolean!4613) (Unit!40586) (OperatorValue!4615 (op!4672 List!27921)) (IdentifierValue!9224 (value!140836 List!27921)) (IdentifierValue!9225 (value!140837 List!27921)) (WhitespaceValue!9225 (value!140838 List!27921)) (True!9224) (False!9224) (Broken!23062 (value!140839 List!27921)) (Broken!23063 (value!140840 List!27921)) (True!9225) (RightBrace!4612) (RightBracket!4612) (Colon!4612) (Null!4612) (Comma!4612) (LeftBracket!4612) (False!9225) (LeftBrace!4612) (ImaginaryLiteralValue!4612 (text!32730 List!27921)) (StringLiteralValue!13836 (value!140841 List!27921)) (EOFValue!4612 (value!140842 List!27921)) (IdentValue!4612 (value!140843 List!27921)) (DelimiterValue!9225 (value!140844 List!27921)) (DedentValue!4612 (value!140845 List!27921)) (NewLineValue!4612 (value!140846 List!27921)) (IntegerValue!13836 (value!140847 (_ BitVec 32)) (text!32731 List!27921)) (IntegerValue!13837 (value!140848 Int) (text!32732 List!27921)) (Times!4612) (Or!4612) (Equal!4612) (Minus!4612) (Broken!23064 (value!140849 List!27921)) (And!4612) (Div!4612) (LessEqual!4612) (Mod!4612) (Concat!11428) (Not!4612) (Plus!4612) (SpaceValue!4612 (value!140850 List!27921)) (IntegerValue!13838 (value!140851 Int) (text!32733 List!27921)) (StringLiteralValue!13837 (text!32734 List!27921)) (FloatLiteralValue!9225 (text!32735 List!27921)) (BytesLiteralValue!4612 (value!140852 List!27921)) (CommentValue!9225 (value!140853 List!27921)) (StringLiteralValue!13838 (value!140854 List!27921)) (ErrorTokenValue!4612 (msg!4673 List!27921)) )
))
(declare-fun toCharacters!1 (FloatLiteralValueInjection!112 TokenValue!4612) BalanceConc!17868)

(declare-fun toValue!8 (FloatLiteralValueInjection!112 BalanceConc!17868) TokenValue!4612)

(assert (=> start!230154 (= inst!1358 (=> (and (inv!37893 x!442526) e!1492542) (= (list!11060 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442526))) (list!11060 x!442526))))))

(assert (= start!230154 b!2329456))

(declare-fun m!2759695 () Bool)

(assert (=> b!2329456 m!2759695))

(declare-fun m!2759697 () Bool)

(assert (=> start!230154 m!2759697))

(declare-fun m!2759699 () Bool)

(assert (=> start!230154 m!2759699))

(declare-fun m!2759701 () Bool)

(assert (=> start!230154 m!2759701))

(declare-fun m!2759703 () Bool)

(assert (=> start!230154 m!2759703))

(declare-fun m!2759705 () Bool)

(assert (=> start!230154 m!2759705))

(assert (=> start!230154 m!2759699))

(assert (=> start!230154 m!2759705))

(declare-fun bs!459416 () Bool)

(declare-fun neg-inst!1358 () Bool)

(declare-fun s!225126 () Bool)

(assert (= bs!459416 (and neg-inst!1358 s!225126)))

(assert (=> bs!459416 (=> true (= (list!11060 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442526))) (list!11060 x!442526)))))

(assert (=> m!2759705 m!2759699))

(assert (=> m!2759705 m!2759701))

(assert (=> m!2759705 m!2759697))

(assert (=> m!2759705 s!225126))

(assert (=> m!2759697 s!225126))

(declare-fun bs!459417 () Bool)

(assert (= bs!459417 (and neg-inst!1358 start!230154)))

(assert (=> bs!459417 (= true inst!1358)))

(declare-fun res!994554 () Bool)

(declare-fun e!1492541 () Bool)

(assert (=> start!230154 (=> res!994554 e!1492541)))

(declare-fun lambda!86464 () Int)

(declare-fun Forall!1118 (Int) Bool)

(assert (=> start!230154 (= res!994554 (not (Forall!1118 lambda!86464)))))

(assert (=> start!230154 (= (Forall!1118 lambda!86464) inst!1358)))

(assert (=> start!230154 (not e!1492541)))

(assert (=> start!230154 true))

(declare-fun lambda!86465 () Int)

(declare-fun lambda!86466 () Int)

(declare-fun semiInverseModEq!1813 (Int Int) Bool)

(assert (=> b!2329449 (= e!1492541 (semiInverseModEq!1813 lambda!86465 lambda!86466))))

(assert (=> b!2329449 (= (semiInverseModEq!1813 lambda!86465 lambda!86466) (Forall!1118 lambda!86464))))

(assert (= neg-inst!1358 inst!1358))

(assert (= (and start!230154 (not res!994554)) b!2329449))

(declare-fun m!2759707 () Bool)

(assert (=> start!230154 m!2759707))

(assert (=> start!230154 m!2759707))

(declare-fun m!2759709 () Bool)

(assert (=> b!2329449 m!2759709))

(assert (=> b!2329449 m!2759709))

(assert (=> b!2329449 m!2759707))

(push 1)

(assert (not b!2329449))

(assert (not b!2329456))

(assert (not bs!459416))

(assert (not start!230154))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

