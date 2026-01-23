; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!184244 () Bool)

(assert start!184244)

(assert (=> start!184244 true))

(declare-fun b!1846393 () Bool)

(assert (=> b!1846393 true))

(assert (=> b!1846393 true))

(declare-fun b!1846400 () Bool)

(declare-fun e!1179949 () Bool)

(declare-datatypes ((List!20463 0))(
  ( (Nil!20391) (Cons!20391 (h!25792 (_ BitVec 16)) (t!172164 List!20463)) )
))
(declare-datatypes ((IArray!13509 0))(
  ( (IArray!13510 (innerList!6812 List!20463)) )
))
(declare-datatypes ((Conc!6752 0))(
  ( (Node!6752 (left!16339 Conc!6752) (right!16669 Conc!6752) (csize!13734 Int) (cheight!6963 Int)) (Leaf!9868 (xs!9628 IArray!13509) (csize!13735 Int)) (Empty!6752) )
))
(declare-datatypes ((BalanceConc!13426 0))(
  ( (BalanceConc!13427 (c!301493 Conc!6752)) )
))
(declare-fun x!369818 () BalanceConc!13426)

(declare-fun tp!522056 () Bool)

(declare-fun inv!26735 (Conc!6752) Bool)

(assert (=> b!1846400 (= e!1179949 (and (inv!26735 (c!301493 x!369818)) tp!522056))))

(declare-datatypes ((ImaginaryLiteralValueInjection!8 0))(
  ( (ImaginaryLiteralValueInjection!9) )
))
(declare-fun thiss!5044 () ImaginaryLiteralValueInjection!8)

(declare-fun inst!1088 () Bool)

(declare-fun inv!26736 (BalanceConc!13426) Bool)

(declare-fun list!8293 (BalanceConc!13426) List!20463)

(declare-datatypes ((TokenValue!3768 0))(
  ( (FloatLiteralValue!7536 (text!26821 List!20463)) (TokenValueExt!3767 (__x!12822 Int)) (Broken!18840 (value!114609 List!20463)) (Object!3839) (End!3768) (Def!3768) (Underscore!3768) (Match!3768) (Else!3768) (Error!3768) (Case!3768) (If!3768) (Extends!3768) (Abstract!3768) (Class!3768) (Val!3768) (DelimiterValue!7536 (del!3828 List!20463)) (KeywordValue!3774 (value!114610 List!20463)) (CommentValue!7536 (value!114611 List!20463)) (WhitespaceValue!7536 (value!114612 List!20463)) (IndentationValue!3768 (value!114613 List!20463)) (String!23365) (Int32!3768) (Broken!18841 (value!114614 List!20463)) (Boolean!3769) (Unit!35055) (OperatorValue!3771 (op!3828 List!20463)) (IdentifierValue!7536 (value!114615 List!20463)) (IdentifierValue!7537 (value!114616 List!20463)) (WhitespaceValue!7537 (value!114617 List!20463)) (True!7536) (False!7536) (Broken!18842 (value!114618 List!20463)) (Broken!18843 (value!114619 List!20463)) (True!7537) (RightBrace!3768) (RightBracket!3768) (Colon!3768) (Null!3768) (Comma!3768) (LeftBracket!3768) (False!7537) (LeftBrace!3768) (ImaginaryLiteralValue!3768 (text!26822 List!20463)) (StringLiteralValue!11304 (value!114620 List!20463)) (EOFValue!3768 (value!114621 List!20463)) (IdentValue!3768 (value!114622 List!20463)) (DelimiterValue!7537 (value!114623 List!20463)) (DedentValue!3768 (value!114624 List!20463)) (NewLineValue!3768 (value!114625 List!20463)) (IntegerValue!11304 (value!114626 (_ BitVec 32)) (text!26823 List!20463)) (IntegerValue!11305 (value!114627 Int) (text!26824 List!20463)) (Times!3768) (Or!3768) (Equal!3768) (Minus!3768) (Broken!18844 (value!114628 List!20463)) (And!3768) (Div!3768) (LessEqual!3768) (Mod!3768) (Concat!8760) (Not!3768) (Plus!3768) (SpaceValue!3768 (value!114629 List!20463)) (IntegerValue!11306 (value!114630 Int) (text!26825 List!20463)) (StringLiteralValue!11305 (text!26826 List!20463)) (FloatLiteralValue!7537 (text!26827 List!20463)) (BytesLiteralValue!3768 (value!114631 List!20463)) (CommentValue!7537 (value!114632 List!20463)) (StringLiteralValue!11306 (value!114633 List!20463)) (ErrorTokenValue!3768 (msg!3829 List!20463)) )
))
(declare-fun toCharacters!26 (ImaginaryLiteralValueInjection!8 TokenValue!3768) BalanceConc!13426)

(declare-fun toValue!33 (ImaginaryLiteralValueInjection!8 BalanceConc!13426) TokenValue!3768)

(assert (=> start!184244 (= inst!1088 (=> (and (inv!26736 x!369818) e!1179949) (= (list!8293 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369818))) (list!8293 x!369818))))))

(assert (= start!184244 b!1846400))

(declare-fun m!2274739 () Bool)

(assert (=> b!1846400 m!2274739))

(declare-fun m!2274741 () Bool)

(assert (=> start!184244 m!2274741))

(declare-fun m!2274743 () Bool)

(assert (=> start!184244 m!2274743))

(declare-fun m!2274745 () Bool)

(assert (=> start!184244 m!2274745))

(assert (=> start!184244 m!2274741))

(declare-fun m!2274747 () Bool)

(assert (=> start!184244 m!2274747))

(assert (=> start!184244 m!2274743))

(declare-fun m!2274749 () Bool)

(assert (=> start!184244 m!2274749))

(declare-fun bs!409346 () Bool)

(declare-fun neg-inst!1088 () Bool)

(declare-fun s!221042 () Bool)

(assert (= bs!409346 (and neg-inst!1088 s!221042)))

(assert (=> bs!409346 (=> true (= (list!8293 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369818))) (list!8293 x!369818)))))

(assert (=> m!2274741 m!2274743))

(assert (=> m!2274741 m!2274749))

(assert (=> m!2274741 m!2274747))

(assert (=> m!2274741 s!221042))

(assert (=> m!2274747 s!221042))

(declare-fun bs!409347 () Bool)

(assert (= bs!409347 (and neg-inst!1088 start!184244)))

(assert (=> bs!409347 (= true inst!1088)))

(declare-fun res!829047 () Bool)

(declare-fun e!1179948 () Bool)

(assert (=> start!184244 (=> res!829047 e!1179948)))

(declare-fun lambda!72745 () Int)

(declare-fun Forall!951 (Int) Bool)

(assert (=> start!184244 (= res!829047 (not (Forall!951 lambda!72745)))))

(assert (=> start!184244 (= (Forall!951 lambda!72745) inst!1088)))

(assert (=> start!184244 (not e!1179948)))

(assert (=> start!184244 true))

(declare-fun lambda!72746 () Int)

(declare-fun lambda!72747 () Int)

(declare-fun semiInverseModEq!1481 (Int Int) Bool)

(assert (=> b!1846393 (= e!1179948 (semiInverseModEq!1481 lambda!72746 lambda!72747))))

(assert (=> b!1846393 (= (semiInverseModEq!1481 lambda!72746 lambda!72747) (Forall!951 lambda!72745))))

(assert (= neg-inst!1088 inst!1088))

(assert (= (and start!184244 (not res!829047)) b!1846393))

(declare-fun m!2274751 () Bool)

(assert (=> start!184244 m!2274751))

(assert (=> start!184244 m!2274751))

(declare-fun m!2274753 () Bool)

(assert (=> b!1846393 m!2274753))

(assert (=> b!1846393 m!2274753))

(assert (=> b!1846393 m!2274751))

(push 1)

(assert (not start!184244))

(assert (not b!1846393))

(assert (not b!1846400))

(assert (not bs!409346))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

