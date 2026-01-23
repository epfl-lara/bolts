; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!964 () Bool)

(assert start!964)

(assert (=> start!964 true))

(declare-fun b!28033 () Bool)

(assert (=> b!28033 true))

(assert (=> b!28033 true))

(declare-fun b!28040 () Bool)

(declare-fun e!11256 () Bool)

(declare-datatypes ((List!135 0))(
  ( (Nil!133) (Cons!133 (h!5529 (_ BitVec 16)) (t!14633 List!135)) )
))
(declare-datatypes ((IArray!9 0))(
  ( (IArray!10 (innerList!62 List!135)) )
))
(declare-datatypes ((Conc!4 0))(
  ( (Node!4 (left!295 Conc!4) (right!625 Conc!4) (csize!238 Int) (cheight!215 Int)) (Leaf!126 (xs!2581 IArray!9) (csize!239 Int)) (Empty!4) )
))
(declare-datatypes ((BalanceConc!8 0))(
  ( (BalanceConc!9 (c!14821 Conc!4)) )
))
(declare-fun x!9628 () BalanceConc!8)

(declare-fun tp!19301 () Bool)

(declare-fun inv!400 (Conc!4) Bool)

(assert (=> b!28040 (= e!11256 (and (inv!400 (c!14821 x!9628)) tp!19301))))

(declare-datatypes ((StringLiteralValueInjection!16 0))(
  ( (StringLiteralValueInjection!17) )
))
(declare-fun thiss!4744 () StringLiteralValueInjection!16)

(declare-fun inst!8 () Bool)

(declare-fun inv!401 (BalanceConc!8) Bool)

(declare-fun list!61 (BalanceConc!8) List!135)

(declare-datatypes ((TokenValue!82 0))(
  ( (FloatLiteralValue!164 (text!1019 List!135)) (TokenValueExt!81 (__x!387 Int)) (Broken!410 (value!5330 List!135)) (Object!83) (End!82) (Def!82) (Underscore!82) (Match!82) (Else!82) (Error!82) (Case!82) (If!82) (Extends!82) (Abstract!82) (Class!82) (Val!82) (DelimiterValue!164 (del!142 List!135)) (KeywordValue!88 (value!5331 List!135)) (CommentValue!164 (value!5332 List!135)) (WhitespaceValue!164 (value!5333 List!135)) (IndentationValue!82 (value!5334 List!135)) (String!571) (Int32!82) (Broken!411 (value!5335 List!135)) (Boolean!83) (Unit!85) (OperatorValue!85 (op!142 List!135)) (IdentifierValue!164 (value!5336 List!135)) (IdentifierValue!165 (value!5337 List!135)) (WhitespaceValue!165 (value!5338 List!135)) (True!164) (False!164) (Broken!412 (value!5339 List!135)) (Broken!413 (value!5340 List!135)) (True!165) (RightBrace!82) (RightBracket!82) (Colon!82) (Null!82) (Comma!82) (LeftBracket!82) (False!165) (LeftBrace!82) (ImaginaryLiteralValue!82 (text!1020 List!135)) (StringLiteralValue!246 (value!5341 List!135)) (EOFValue!82 (value!5342 List!135)) (IdentValue!82 (value!5343 List!135)) (DelimiterValue!165 (value!5344 List!135)) (DedentValue!82 (value!5345 List!135)) (NewLineValue!82 (value!5346 List!135)) (IntegerValue!246 (value!5347 (_ BitVec 32)) (text!1021 List!135)) (IntegerValue!247 (value!5348 Int) (text!1022 List!135)) (Times!82) (Or!82) (Equal!82) (Minus!82) (Broken!414 (value!5349 List!135)) (And!82) (Div!82) (LessEqual!82) (Mod!82) (Concat!206) (Not!82) (Plus!82) (SpaceValue!82 (value!5350 List!135)) (IntegerValue!248 (value!5351 Int) (text!1023 List!135)) (StringLiteralValue!247 (text!1024 List!135)) (FloatLiteralValue!165 (text!1025 List!135)) (BytesLiteralValue!82 (value!5352 List!135)) (CommentValue!165 (value!5353 List!135)) (StringLiteralValue!248 (value!5354 List!135)) (ErrorTokenValue!82 (msg!143 List!135)) )
))
(declare-fun toCharacters!22 (StringLiteralValueInjection!16 TokenValue!82) BalanceConc!8)

(declare-fun toValue!29 (StringLiteralValueInjection!16 BalanceConc!8) TokenValue!82)

(assert (=> start!964 (= inst!8 (=> (and (inv!401 x!9628) e!11256) (= (list!61 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9628))) (list!61 x!9628))))))

(assert (= start!964 b!28040))

(declare-fun m!4453 () Bool)

(assert (=> b!28040 m!4453))

(declare-fun m!4455 () Bool)

(assert (=> start!964 m!4455))

(declare-fun m!4457 () Bool)

(assert (=> start!964 m!4457))

(declare-fun m!4459 () Bool)

(assert (=> start!964 m!4459))

(declare-fun m!4461 () Bool)

(assert (=> start!964 m!4461))

(assert (=> start!964 m!4455))

(assert (=> start!964 m!4457))

(declare-fun m!4463 () Bool)

(assert (=> start!964 m!4463))

(declare-fun bs!425 () Bool)

(declare-fun neg-inst!8 () Bool)

(declare-fun s!15447 () Bool)

(assert (= bs!425 (and neg-inst!8 s!15447)))

(assert (=> bs!425 (=> true (= (list!61 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9628))) (list!61 x!9628)))))

(assert (=> m!4455 m!4457))

(assert (=> m!4455 m!4459))

(assert (=> m!4455 m!4461))

(assert (=> m!4455 s!15447))

(assert (=> m!4461 s!15447))

(declare-fun bs!426 () Bool)

(assert (= bs!426 (and neg-inst!8 start!964)))

(assert (=> bs!426 (= true inst!8)))

(declare-fun res!25739 () Bool)

(declare-fun e!11255 () Bool)

(assert (=> start!964 (=> res!25739 e!11255)))

(declare-fun lambda!41 () Int)

(declare-fun Forall!3 (Int) Bool)

(assert (=> start!964 (= res!25739 (not (Forall!3 lambda!41)))))

(assert (=> start!964 (= (Forall!3 lambda!41) inst!8)))

(assert (=> start!964 (not e!11255)))

(assert (=> start!964 true))

(declare-fun lambda!42 () Int)

(declare-fun lambda!43 () Int)

(declare-fun semiInverseModEq!1 (Int Int) Bool)

(assert (=> b!28033 (= e!11255 (semiInverseModEq!1 lambda!42 lambda!43))))

(assert (=> b!28033 (= (semiInverseModEq!1 lambda!42 lambda!43) (Forall!3 lambda!41))))

(assert (= neg-inst!8 inst!8))

(assert (= (and start!964 (not res!25739)) b!28033))

(declare-fun m!4465 () Bool)

(assert (=> start!964 m!4465))

(assert (=> start!964 m!4465))

(declare-fun m!4467 () Bool)

(assert (=> b!28033 m!4467))

(assert (=> b!28033 m!4467))

(assert (=> b!28033 m!4465))

(push 1)

(assert (not b!28040))

(assert (not start!964))

(assert (not b!28033))

(assert (not bs!425))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

