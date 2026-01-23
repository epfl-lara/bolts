; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!249104 () Bool)

(assert start!249104)

(assert (=> start!249104 true))

(declare-fun b!2577244 () Bool)

(assert (=> b!2577244 true))

(assert (=> b!2577244 true))

(declare-fun b!2577251 () Bool)

(declare-fun e!1626257 () Bool)

(declare-datatypes ((List!29749 0))(
  ( (Nil!29649) (Cons!29649 (h!35069 (_ BitVec 16)) (t!211554 List!29749)) )
))
(declare-datatypes ((IArray!18501 0))(
  ( (IArray!18502 (innerList!9308 List!29749)) )
))
(declare-datatypes ((Conc!9248 0))(
  ( (Node!9248 (left!22561 Conc!9248) (right!22891 Conc!9248) (csize!18726 Int) (cheight!9459 Int)) (Leaf!14104 (xs!12232 IArray!18501) (csize!18727 Int)) (Empty!9248) )
))
(declare-datatypes ((BalanceConc!18110 0))(
  ( (BalanceConc!18111 (c!415156 Conc!9248)) )
))
(declare-fun x!463334 () BalanceConc!18110)

(declare-fun tp!819075 () Bool)

(declare-fun inv!39955 (Conc!9248) Bool)

(assert (=> b!2577251 (= e!1626257 (and (inv!39955 (c!415156 x!463334)) tp!819075))))

(declare-fun inst!1454 () Bool)

(declare-datatypes ((IndentationValueInjection!8 0))(
  ( (IndentationValueInjection!9) )
))
(declare-fun thiss!5269 () IndentationValueInjection!8)

(declare-fun inv!39956 (BalanceConc!18110) Bool)

(declare-fun list!11193 (BalanceConc!18110) List!29749)

(declare-datatypes ((TokenValue!4712 0))(
  ( (FloatLiteralValue!9424 (text!33429 List!29749)) (TokenValueExt!4711 (__x!19231 Int)) (Broken!23560 (value!145195 List!29749)) (Object!4811) (End!4712) (Def!4712) (Underscore!4712) (Match!4712) (Else!4712) (Error!4712) (Case!4712) (If!4712) (Extends!4712) (Abstract!4712) (Class!4712) (Val!4712) (DelimiterValue!9424 (del!4772 List!29749)) (KeywordValue!4718 (value!145196 List!29749)) (CommentValue!9424 (value!145197 List!29749)) (WhitespaceValue!9424 (value!145198 List!29749)) (IndentationValue!4712 (value!145199 List!29749)) (String!32965) (Int32!4712) (Broken!23561 (value!145200 List!29749)) (Boolean!4713) (Unit!43501) (OperatorValue!4715 (op!4772 List!29749)) (IdentifierValue!9424 (value!145201 List!29749)) (IdentifierValue!9425 (value!145202 List!29749)) (WhitespaceValue!9425 (value!145203 List!29749)) (True!9424) (False!9424) (Broken!23562 (value!145204 List!29749)) (Broken!23563 (value!145205 List!29749)) (True!9425) (RightBrace!4712) (RightBracket!4712) (Colon!4712) (Null!4712) (Comma!4712) (LeftBracket!4712) (False!9425) (LeftBrace!4712) (ImaginaryLiteralValue!4712 (text!33430 List!29749)) (StringLiteralValue!14136 (value!145206 List!29749)) (EOFValue!4712 (value!145207 List!29749)) (IdentValue!4712 (value!145208 List!29749)) (DelimiterValue!9425 (value!145209 List!29749)) (DedentValue!4712 (value!145210 List!29749)) (NewLineValue!4712 (value!145211 List!29749)) (IntegerValue!14136 (value!145212 (_ BitVec 32)) (text!33431 List!29749)) (IntegerValue!14137 (value!145213 Int) (text!33432 List!29749)) (Times!4712) (Or!4712) (Equal!4712) (Minus!4712) (Broken!23564 (value!145214 List!29749)) (And!4712) (Div!4712) (LessEqual!4712) (Mod!4712) (Concat!12356) (Not!4712) (Plus!4712) (SpaceValue!4712 (value!145215 List!29749)) (IntegerValue!14138 (value!145216 Int) (text!33433 List!29749)) (StringLiteralValue!14137 (text!33434 List!29749)) (FloatLiteralValue!9425 (text!33435 List!29749)) (BytesLiteralValue!4712 (value!145217 List!29749)) (CommentValue!9425 (value!145218 List!29749)) (StringLiteralValue!14138 (value!145219 List!29749)) (ErrorTokenValue!4712 (msg!4773 List!29749)) )
))
(declare-fun toCharacters!29 (IndentationValueInjection!8 TokenValue!4712) BalanceConc!18110)

(declare-fun toValue!36 (IndentationValueInjection!8 BalanceConc!18110) TokenValue!4712)

(assert (=> start!249104 (= inst!1454 (=> (and (inv!39956 x!463334) e!1626257) (= (list!11193 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463334))) (list!11193 x!463334))))))

(assert (= start!249104 b!2577251))

(declare-fun m!2911895 () Bool)

(assert (=> b!2577251 m!2911895))

(declare-fun m!2911897 () Bool)

(assert (=> start!249104 m!2911897))

(declare-fun m!2911899 () Bool)

(assert (=> start!249104 m!2911899))

(declare-fun m!2911901 () Bool)

(assert (=> start!249104 m!2911901))

(assert (=> start!249104 m!2911901))

(declare-fun m!2911903 () Bool)

(assert (=> start!249104 m!2911903))

(assert (=> start!249104 m!2911903))

(declare-fun m!2911905 () Bool)

(assert (=> start!249104 m!2911905))

(declare-fun bs!470555 () Bool)

(declare-fun neg-inst!1454 () Bool)

(declare-fun s!228338 () Bool)

(assert (= bs!470555 (and neg-inst!1454 s!228338)))

(assert (=> bs!470555 (=> true (= (list!11193 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463334))) (list!11193 x!463334)))))

(assert (=> m!2911901 m!2911903))

(assert (=> m!2911901 m!2911905))

(assert (=> m!2911901 m!2911897))

(assert (=> m!2911901 s!228338))

(assert (=> m!2911897 s!228338))

(declare-fun bs!470556 () Bool)

(assert (= bs!470556 (and neg-inst!1454 start!249104)))

(assert (=> bs!470556 (= true inst!1454)))

(declare-fun res!1083994 () Bool)

(declare-fun e!1626256 () Bool)

(assert (=> start!249104 (=> res!1083994 e!1626256)))

(declare-fun lambda!95090 () Int)

(declare-fun Forall!1151 (Int) Bool)

(assert (=> start!249104 (= res!1083994 (not (Forall!1151 lambda!95090)))))

(assert (=> start!249104 (= (Forall!1151 lambda!95090) inst!1454)))

(assert (=> start!249104 (not e!1626256)))

(assert (=> start!249104 true))

(declare-fun lambda!95091 () Int)

(declare-fun lambda!95092 () Int)

(declare-fun semiInverseModEq!1869 (Int Int) Bool)

(assert (=> b!2577244 (= e!1626256 (semiInverseModEq!1869 lambda!95091 lambda!95092))))

(assert (=> b!2577244 (= (semiInverseModEq!1869 lambda!95091 lambda!95092) (Forall!1151 lambda!95090))))

(assert (= neg-inst!1454 inst!1454))

(assert (= (and start!249104 (not res!1083994)) b!2577244))

(declare-fun m!2911907 () Bool)

(assert (=> start!249104 m!2911907))

(assert (=> start!249104 m!2911907))

(declare-fun m!2911909 () Bool)

(assert (=> b!2577244 m!2911909))

(assert (=> b!2577244 m!2911909))

(assert (=> b!2577244 m!2911907))

(push 1)

(assert (not bs!470555))

(assert (not b!2577251))

(assert (not start!249104))

(assert (not b!2577244))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

