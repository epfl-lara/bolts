; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!60580 () Bool)

(assert start!60580)

(assert (=> start!60580 true))

(declare-fun b!627583 () Bool)

(assert (=> b!627583 true))

(assert (=> b!627583 true))

(declare-fun b!627590 () Bool)

(declare-fun e!380635 () Bool)

(declare-datatypes ((List!6453 0))(
  ( (Nil!6443) (Cons!6443 (h!11844 (_ BitVec 16)) (t!82436 List!6453)) )
))
(declare-datatypes ((IArray!4159 0))(
  ( (IArray!4160 (innerList!2137 List!6453)) )
))
(declare-datatypes ((Conc!2079 0))(
  ( (Node!2079 (left!5127 Conc!2079) (right!5457 Conc!2079) (csize!4388 Int) (cheight!2290 Int)) (Leaf!3248 (xs!4720 IArray!4159) (csize!4389 Int)) (Empty!2079) )
))
(declare-datatypes ((BalanceConc!4166 0))(
  ( (BalanceConc!4167 (c!115355 Conc!2079)) )
))
(declare-fun x!130283 () BalanceConc!4166)

(declare-fun tp!195934 () Bool)

(declare-fun inv!8259 (Conc!2079) Bool)

(assert (=> b!627590 (= e!380635 (and (inv!8259 (c!115355 x!130283)) tp!195934))))

(declare-fun inst!224 () Bool)

(declare-datatypes ((IdentValueInjection!8 0))(
  ( (IdentValueInjection!9) )
))
(declare-fun thiss!4294 () IdentValueInjection!8)

(declare-fun inv!8260 (BalanceConc!4166) Bool)

(declare-fun list!2728 (BalanceConc!4166) List!6453)

(declare-datatypes ((TokenValue!1344 0))(
  ( (FloatLiteralValue!2688 (text!9853 List!6453)) (TokenValueExt!1343 (__x!4586 Int)) (Broken!6720 (value!42455 List!6453)) (Object!1353) (End!1344) (Def!1344) (Underscore!1344) (Match!1344) (Else!1344) (Error!1344) (Case!1344) (If!1344) (Extends!1344) (Abstract!1344) (Class!1344) (Val!1344) (DelimiterValue!2688 (del!1404 List!6453)) (KeywordValue!1350 (value!42456 List!6453)) (CommentValue!2688 (value!42457 List!6453)) (WhitespaceValue!2688 (value!42458 List!6453)) (IndentationValue!1344 (value!42459 List!6453)) (String!8465) (Int32!1344) (Broken!6721 (value!42460 List!6453)) (Boolean!1345) (Unit!11528) (OperatorValue!1347 (op!1404 List!6453)) (IdentifierValue!2688 (value!42461 List!6453)) (IdentifierValue!2689 (value!42462 List!6453)) (WhitespaceValue!2689 (value!42463 List!6453)) (True!2688) (False!2688) (Broken!6722 (value!42464 List!6453)) (Broken!6723 (value!42465 List!6453)) (True!2689) (RightBrace!1344) (RightBracket!1344) (Colon!1344) (Null!1344) (Comma!1344) (LeftBracket!1344) (False!2689) (LeftBrace!1344) (ImaginaryLiteralValue!1344 (text!9854 List!6453)) (StringLiteralValue!4032 (value!42466 List!6453)) (EOFValue!1344 (value!42467 List!6453)) (IdentValue!1344 (value!42468 List!6453)) (DelimiterValue!2689 (value!42469 List!6453)) (DedentValue!1344 (value!42470 List!6453)) (NewLineValue!1344 (value!42471 List!6453)) (IntegerValue!4032 (value!42472 (_ BitVec 32)) (text!9855 List!6453)) (IntegerValue!4033 (value!42473 Int) (text!9856 List!6453)) (Times!1344) (Or!1344) (Equal!1344) (Minus!1344) (Broken!6724 (value!42474 List!6453)) (And!1344) (Div!1344) (LessEqual!1344) (Mod!1344) (Concat!2996) (Not!1344) (Plus!1344) (SpaceValue!1344 (value!42475 List!6453)) (IntegerValue!4034 (value!42476 Int) (text!9857 List!6453)) (StringLiteralValue!4033 (text!9858 List!6453)) (FloatLiteralValue!2689 (text!9859 List!6453)) (BytesLiteralValue!1344 (value!42477 List!6453)) (CommentValue!2689 (value!42478 List!6453)) (StringLiteralValue!4034 (value!42479 List!6453)) (ErrorTokenValue!1344 (msg!1405 List!6453)) )
))
(declare-fun toCharacters!16 (IdentValueInjection!8 TokenValue!1344) BalanceConc!4166)

(declare-fun toValue!23 (IdentValueInjection!8 BalanceConc!4166) TokenValue!1344)

(assert (=> start!60580 (= inst!224 (=> (and (inv!8260 x!130283) e!380635) (= (list!2728 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130283))) (list!2728 x!130283))))))

(assert (= start!60580 b!627590))

(declare-fun m!895843 () Bool)

(assert (=> b!627590 m!895843))

(declare-fun m!895845 () Bool)

(assert (=> start!60580 m!895845))

(declare-fun m!895847 () Bool)

(assert (=> start!60580 m!895847))

(declare-fun m!895849 () Bool)

(assert (=> start!60580 m!895849))

(assert (=> start!60580 m!895847))

(declare-fun m!895851 () Bool)

(assert (=> start!60580 m!895851))

(assert (=> start!60580 m!895851))

(declare-fun m!895853 () Bool)

(assert (=> start!60580 m!895853))

(declare-fun bs!72325 () Bool)

(declare-fun neg-inst!224 () Bool)

(declare-fun s!19095 () Bool)

(assert (= bs!72325 (and neg-inst!224 s!19095)))

(assert (=> bs!72325 (=> true (= (list!2728 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130283))) (list!2728 x!130283)))))

(assert (=> m!895847 m!895851))

(assert (=> m!895847 m!895853))

(assert (=> m!895847 m!895849))

(assert (=> m!895847 s!19095))

(assert (=> m!895849 s!19095))

(declare-fun bs!72326 () Bool)

(assert (= bs!72326 (and neg-inst!224 start!60580)))

(assert (=> bs!72326 (= true inst!224)))

(declare-fun res!272051 () Bool)

(declare-fun e!380634 () Bool)

(assert (=> start!60580 (=> res!272051 e!380634)))

(declare-fun lambda!16387 () Int)

(declare-fun Forall!322 (Int) Bool)

(assert (=> start!60580 (= res!272051 (not (Forall!322 lambda!16387)))))

(assert (=> start!60580 (= (Forall!322 lambda!16387) inst!224)))

(assert (=> start!60580 (not e!380634)))

(assert (=> start!60580 true))

(declare-fun lambda!16388 () Int)

(declare-fun lambda!16389 () Int)

(declare-fun semiInverseModEq!529 (Int Int) Bool)

(assert (=> b!627583 (= e!380634 (semiInverseModEq!529 lambda!16388 lambda!16389))))

(assert (=> b!627583 (= (semiInverseModEq!529 lambda!16388 lambda!16389) (Forall!322 lambda!16387))))

(assert (= neg-inst!224 inst!224))

(assert (= (and start!60580 (not res!272051)) b!627583))

(declare-fun m!895855 () Bool)

(assert (=> start!60580 m!895855))

(assert (=> start!60580 m!895855))

(declare-fun m!895857 () Bool)

(assert (=> b!627583 m!895857))

(assert (=> b!627583 m!895857))

(assert (=> b!627583 m!895855))

(push 1)

(assert (not b!627583))

(assert (not start!60580))

(assert (not bs!72325))

(assert (not b!627590))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

