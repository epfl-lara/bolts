; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65508 () Bool)

(assert start!65508)

(assert (=> start!65508 true))

(declare-fun b!684768 () Bool)

(assert (=> b!684768 true))

(assert (=> b!684768 true))

(declare-fun b!684775 () Bool)

(declare-fun e!429933 () Bool)

(declare-datatypes ((List!7320 0))(
  ( (Nil!7306) (Cons!7306 (h!12707 (_ BitVec 16)) (t!87053 List!7320)) )
))
(declare-datatypes ((IArray!5197 0))(
  ( (IArray!5198 (innerList!2656 List!7320)) )
))
(declare-datatypes ((Conc!2598 0))(
  ( (Node!2598 (left!5912 Conc!2598) (right!6242 Conc!2598) (csize!5426 Int) (cheight!2809 Int)) (Leaf!3855 (xs!5247 IArray!5197) (csize!5427 Int)) (Empty!2598) )
))
(declare-datatypes ((BalanceConc!5208 0))(
  ( (BalanceConc!5209 (c!121115 Conc!2598)) )
))
(declare-fun x!149916 () BalanceConc!5208)

(declare-fun tp!203118 () Bool)

(declare-fun inv!9389 (Conc!2598) Bool)

(assert (=> b!684775 (= e!429933 (and (inv!9389 (c!121115 x!149916)) tp!203118))))

(declare-fun inst!431 () Bool)

(declare-datatypes ((SpaceValueInjection!10 0))(
  ( (SpaceValueInjection!11) )
))
(declare-fun thiss!4519 () SpaceValueInjection!10)

(declare-fun inv!9390 (BalanceConc!5208) Bool)

(declare-fun list!3084 (BalanceConc!5208) List!7320)

(declare-datatypes ((TokenValue!1515 0))(
  ( (FloatLiteralValue!3030 (text!11050 List!7320)) (TokenValueExt!1514 (__x!5174 Int)) (Broken!7575 (value!47583 List!7320)) (Object!1528) (End!1515) (Def!1515) (Underscore!1515) (Match!1515) (Else!1515) (Error!1515) (Case!1515) (If!1515) (Extends!1515) (Abstract!1515) (Class!1515) (Val!1515) (DelimiterValue!3030 (del!1575 List!7320)) (KeywordValue!1521 (value!47584 List!7320)) (CommentValue!3030 (value!47585 List!7320)) (WhitespaceValue!3030 (value!47586 List!7320)) (IndentationValue!1515 (value!47587 List!7320)) (String!9308) (Int32!1515) (Broken!7576 (value!47588 List!7320)) (Boolean!1516) (Unit!12601) (OperatorValue!1518 (op!1575 List!7320)) (IdentifierValue!3030 (value!47589 List!7320)) (IdentifierValue!3031 (value!47590 List!7320)) (WhitespaceValue!3031 (value!47591 List!7320)) (True!3030) (False!3030) (Broken!7577 (value!47592 List!7320)) (Broken!7578 (value!47593 List!7320)) (True!3031) (RightBrace!1515) (RightBracket!1515) (Colon!1515) (Null!1515) (Comma!1515) (LeftBracket!1515) (False!3031) (LeftBrace!1515) (ImaginaryLiteralValue!1515 (text!11051 List!7320)) (StringLiteralValue!4545 (value!47594 List!7320)) (EOFValue!1515 (value!47595 List!7320)) (IdentValue!1515 (value!47596 List!7320)) (DelimiterValue!3031 (value!47597 List!7320)) (DedentValue!1515 (value!47598 List!7320)) (NewLineValue!1515 (value!47599 List!7320)) (IntegerValue!4545 (value!47600 (_ BitVec 32)) (text!11052 List!7320)) (IntegerValue!4546 (value!47601 Int) (text!11053 List!7320)) (Times!1515) (Or!1515) (Equal!1515) (Minus!1515) (Broken!7579 (value!47602 List!7320)) (And!1515) (Div!1515) (LessEqual!1515) (Mod!1515) (Concat!3329) (Not!1515) (Plus!1515) (SpaceValue!1515 (value!47603 List!7320)) (IntegerValue!4547 (value!47604 Int) (text!11054 List!7320)) (StringLiteralValue!4546 (text!11055 List!7320)) (FloatLiteralValue!3031 (text!11056 List!7320)) (BytesLiteralValue!1515 (value!47605 List!7320)) (CommentValue!3031 (value!47606 List!7320)) (StringLiteralValue!4547 (value!47607 List!7320)) (ErrorTokenValue!1515 (msg!1576 List!7320)) )
))
(declare-fun toCharacters!19 (SpaceValueInjection!10 TokenValue!1515) BalanceConc!5208)

(declare-fun toValue!26 (SpaceValueInjection!10 BalanceConc!5208) TokenValue!1515)

(assert (=> start!65508 (= inst!431 (=> (and (inv!9390 x!149916) e!429933) (= (list!3084 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149916))) (list!3084 x!149916))))))

(assert (= start!65508 b!684775))

(declare-fun m!941567 () Bool)

(assert (=> b!684775 m!941567))

(declare-fun m!941569 () Bool)

(assert (=> start!65508 m!941569))

(declare-fun m!941571 () Bool)

(assert (=> start!65508 m!941571))

(declare-fun m!941573 () Bool)

(assert (=> start!65508 m!941573))

(assert (=> start!65508 m!941569))

(declare-fun m!941575 () Bool)

(assert (=> start!65508 m!941575))

(assert (=> start!65508 m!941571))

(declare-fun m!941577 () Bool)

(assert (=> start!65508 m!941577))

(declare-fun bs!131045 () Bool)

(declare-fun neg-inst!431 () Bool)

(declare-fun s!77531 () Bool)

(assert (= bs!131045 (and neg-inst!431 s!77531)))

(assert (=> bs!131045 (=> true (= (list!3084 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149916))) (list!3084 x!149916)))))

(assert (=> m!941575 m!941569))

(assert (=> m!941575 m!941571))

(assert (=> m!941575 m!941577))

(assert (=> m!941575 s!77531))

(assert (=> m!941569 s!77531))

(declare-fun bs!131046 () Bool)

(assert (= bs!131046 (and neg-inst!431 start!65508)))

(assert (=> bs!131046 (= true inst!431)))

(declare-fun res!311777 () Bool)

(declare-fun e!429932 () Bool)

(assert (=> start!65508 (=> res!311777 e!429932)))

(declare-fun lambda!21017 () Int)

(declare-fun Forall!345 (Int) Bool)

(assert (=> start!65508 (= res!311777 (not (Forall!345 lambda!21017)))))

(assert (=> start!65508 (= (Forall!345 lambda!21017) inst!431)))

(assert (=> start!65508 (not e!429932)))

(assert (=> start!65508 true))

(declare-fun lambda!21018 () Int)

(declare-fun lambda!21019 () Int)

(declare-fun semiInverseModEq!558 (Int Int) Bool)

(assert (=> b!684768 (= e!429932 (semiInverseModEq!558 lambda!21018 lambda!21019))))

(assert (=> b!684768 (= (semiInverseModEq!558 lambda!21018 lambda!21019) (Forall!345 lambda!21017))))

(assert (= neg-inst!431 inst!431))

(assert (= (and start!65508 (not res!311777)) b!684768))

(declare-fun m!941579 () Bool)

(assert (=> start!65508 m!941579))

(assert (=> start!65508 m!941579))

(declare-fun m!941581 () Bool)

(assert (=> b!684768 m!941581))

(assert (=> b!684768 m!941581))

(assert (=> b!684768 m!941579))

(check-sat (not b!684768) (not start!65508) (not bs!131045) (not b!684775))
(check-sat)
