; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!110608 () Bool)

(assert start!110608)

(assert (=> start!110608 true))

(declare-fun b!1255599 () Bool)

(assert (=> b!1255599 true))

(assert (=> b!1255599 true))

(declare-fun b!1255606 () Bool)

(declare-fun e!799033 () Bool)

(declare-datatypes ((List!12601 0))(
  ( (Nil!12541) (Cons!12541 (h!17942 (_ BitVec 16)) (t!115663 List!12601)) )
))
(declare-datatypes ((IArray!8225 0))(
  ( (IArray!8226 (innerList!4170 List!12601)) )
))
(declare-datatypes ((Conc!4110 0))(
  ( (Node!4110 (left!10824 Conc!4110) (right!11154 Conc!4110) (csize!8450 Int) (cheight!4321 Int)) (Leaf!6363 (xs!6821 IArray!8225) (csize!8451 Int)) (Empty!4110) )
))
(declare-datatypes ((BalanceConc!8154 0))(
  ( (BalanceConc!8155 (c!208461 Conc!4110)) )
))
(declare-fun x!243352 () BalanceConc!8154)

(declare-fun tp!370332 () Bool)

(declare-fun inv!16850 (Conc!4110) Bool)

(assert (=> b!1255606 (= e!799033 (and (inv!16850 (c!208461 x!243352)) tp!370332))))

(declare-datatypes ((OperatorValueInjection!12 0))(
  ( (OperatorValueInjection!13) )
))
(declare-fun thiss!5119 () OperatorValueInjection!12)

(declare-fun inst!860 () Bool)

(declare-fun inv!16851 (BalanceConc!8154) Bool)

(declare-fun list!4663 (BalanceConc!8154) List!12601)

(declare-datatypes ((TokenValue!2232 0))(
  ( (FloatLiteralValue!4464 (text!16069 List!12601)) (TokenValueExt!2231 (__x!8177 Int)) (Broken!11160 (value!70316 List!12601)) (Object!2291) (End!2232) (Def!2232) (Underscore!2232) (Match!2232) (Else!2232) (Error!2232) (Case!2232) (If!2232) (Extends!2232) (Abstract!2232) (Class!2232) (Val!2232) (DelimiterValue!4464 (del!2292 List!12601)) (KeywordValue!2238 (value!70317 List!12601)) (CommentValue!4464 (value!70318 List!12601)) (WhitespaceValue!4464 (value!70319 List!12601)) (IndentationValue!2232 (value!70320 List!12601)) (String!15377) (Int32!2232) (Broken!11161 (value!70321 List!12601)) (Boolean!2233) (Unit!18822) (OperatorValue!2235 (op!2292 List!12601)) (IdentifierValue!4464 (value!70322 List!12601)) (IdentifierValue!4465 (value!70323 List!12601)) (WhitespaceValue!4465 (value!70324 List!12601)) (True!4464) (False!4464) (Broken!11162 (value!70325 List!12601)) (Broken!11163 (value!70326 List!12601)) (True!4465) (RightBrace!2232) (RightBracket!2232) (Colon!2232) (Null!2232) (Comma!2232) (LeftBracket!2232) (False!4465) (LeftBrace!2232) (ImaginaryLiteralValue!2232 (text!16070 List!12601)) (StringLiteralValue!6696 (value!70327 List!12601)) (EOFValue!2232 (value!70328 List!12601)) (IdentValue!2232 (value!70329 List!12601)) (DelimiterValue!4465 (value!70330 List!12601)) (DedentValue!2232 (value!70331 List!12601)) (NewLineValue!2232 (value!70332 List!12601)) (IntegerValue!6696 (value!70333 (_ BitVec 32)) (text!16071 List!12601)) (IntegerValue!6697 (value!70334 Int) (text!16072 List!12601)) (Times!2232) (Or!2232) (Equal!2232) (Minus!2232) (Broken!11164 (value!70335 List!12601)) (And!2232) (Div!2232) (LessEqual!2232) (Mod!2232) (Concat!5706) (Not!2232) (Plus!2232) (SpaceValue!2232 (value!70336 List!12601)) (IntegerValue!6698 (value!70337 Int) (text!16073 List!12601)) (StringLiteralValue!6697 (text!16074 List!12601)) (FloatLiteralValue!4465 (text!16075 List!12601)) (BytesLiteralValue!2232 (value!70338 List!12601)) (CommentValue!4465 (value!70339 List!12601)) (StringLiteralValue!6698 (value!70340 List!12601)) (ErrorTokenValue!2232 (msg!2293 List!12601)) )
))
(declare-fun toCharacters!27 (OperatorValueInjection!12 TokenValue!2232) BalanceConc!8154)

(declare-fun toValue!34 (OperatorValueInjection!12 BalanceConc!8154) TokenValue!2232)

(assert (=> start!110608 (= inst!860 (=> (and (inv!16851 x!243352) e!799033) (= (list!4663 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243352))) (list!4663 x!243352))))))

(assert (= start!110608 b!1255606))

(declare-fun m!1413887 () Bool)

(assert (=> b!1255606 m!1413887))

(declare-fun m!1413889 () Bool)

(assert (=> start!110608 m!1413889))

(declare-fun m!1413891 () Bool)

(assert (=> start!110608 m!1413891))

(assert (=> start!110608 m!1413891))

(declare-fun m!1413893 () Bool)

(assert (=> start!110608 m!1413893))

(assert (=> start!110608 m!1413893))

(declare-fun m!1413895 () Bool)

(assert (=> start!110608 m!1413895))

(declare-fun m!1413897 () Bool)

(assert (=> start!110608 m!1413897))

(declare-fun bs!289979 () Bool)

(declare-fun neg-inst!860 () Bool)

(declare-fun s!183237 () Bool)

(assert (= bs!289979 (and neg-inst!860 s!183237)))

(assert (=> bs!289979 (=> true (= (list!4663 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243352))) (list!4663 x!243352)))))

(assert (=> m!1413897 m!1413891))

(assert (=> m!1413897 m!1413893))

(assert (=> m!1413897 m!1413895))

(assert (=> m!1413897 s!183237))

(assert (=> m!1413891 s!183237))

(declare-fun bs!289980 () Bool)

(assert (= bs!289980 (and neg-inst!860 start!110608)))

(assert (=> bs!289980 (= true inst!860)))

(declare-fun res!555978 () Bool)

(declare-fun e!799032 () Bool)

(assert (=> start!110608 (=> res!555978 e!799032)))

(declare-fun lambda!49335 () Int)

(declare-fun Forall!465 (Int) Bool)

(assert (=> start!110608 (= res!555978 (not (Forall!465 lambda!49335)))))

(assert (=> start!110608 (= (Forall!465 lambda!49335) inst!860)))

(assert (=> start!110608 (not e!799032)))

(assert (=> start!110608 true))

(declare-fun lambda!49336 () Int)

(declare-fun lambda!49337 () Int)

(declare-fun semiInverseModEq!799 (Int Int) Bool)

(assert (=> b!1255599 (= e!799032 (semiInverseModEq!799 lambda!49336 lambda!49337))))

(assert (=> b!1255599 (= (semiInverseModEq!799 lambda!49336 lambda!49337) (Forall!465 lambda!49335))))

(assert (= neg-inst!860 inst!860))

(assert (= (and start!110608 (not res!555978)) b!1255599))

(declare-fun m!1413899 () Bool)

(assert (=> start!110608 m!1413899))

(assert (=> start!110608 m!1413899))

(declare-fun m!1413901 () Bool)

(assert (=> b!1255599 m!1413901))

(assert (=> b!1255599 m!1413901))

(assert (=> b!1255599 m!1413899))

(push 1)

(assert (not b!1255606))

(assert (not bs!289979))

(assert (not start!110608))

(assert (not b!1255599))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

