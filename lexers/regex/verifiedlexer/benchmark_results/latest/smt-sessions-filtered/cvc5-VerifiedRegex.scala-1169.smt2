; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!60584 () Bool)

(assert start!60584)

(assert (=> start!60584 true))

(declare-fun b!627621 () Bool)

(assert (=> b!627621 true))

(assert (=> b!627621 true))

(declare-fun b!627622 () Bool)

(assert (=> b!627622 true))

(declare-fun b!627631 () Bool)

(declare-fun e!380662 () Bool)

(declare-datatypes ((List!6455 0))(
  ( (Nil!6445) (Cons!6445 (h!11846 (_ BitVec 16)) (t!82450 List!6455)) )
))
(declare-datatypes ((IArray!4163 0))(
  ( (IArray!4164 (innerList!2139 List!6455)) )
))
(declare-datatypes ((Conc!2081 0))(
  ( (Node!2081 (left!5134 Conc!2081) (right!5464 Conc!2081) (csize!4392 Int) (cheight!2292 Int)) (Leaf!3251 (xs!4722 IArray!4163) (csize!4393 Int)) (Empty!2081) )
))
(declare-datatypes ((BalanceConc!4170 0))(
  ( (BalanceConc!4171 (c!115357 Conc!2081)) )
))
(declare-fun x!130371 () BalanceConc!4170)

(declare-fun tp!195944 () Bool)

(declare-fun inv!8266 (Conc!2081) Bool)

(assert (=> b!627631 (= e!380662 (and (inv!8266 (c!115357 x!130371)) tp!195944))))

(declare-fun inst!232 () Bool)

(declare-datatypes ((IdentValueInjection!12 0))(
  ( (IdentValueInjection!13) )
))
(declare-fun thiss!4294 () IdentValueInjection!12)

(declare-fun inv!8267 (BalanceConc!4170) Bool)

(declare-fun list!2730 (BalanceConc!4170) List!6455)

(declare-datatypes ((TokenValue!1346 0))(
  ( (FloatLiteralValue!2692 (text!9867 List!6455)) (TokenValueExt!1345 (__x!4588 Int)) (Broken!6730 (value!42508 List!6455)) (Object!1355) (End!1346) (Def!1346) (Underscore!1346) (Match!1346) (Else!1346) (Error!1346) (Case!1346) (If!1346) (Extends!1346) (Abstract!1346) (Class!1346) (Val!1346) (DelimiterValue!2692 (del!1406 List!6455)) (KeywordValue!1352 (value!42509 List!6455)) (CommentValue!2692 (value!42510 List!6455)) (WhitespaceValue!2692 (value!42511 List!6455)) (IndentationValue!1346 (value!42512 List!6455)) (String!8471) (Int32!1346) (Broken!6731 (value!42513 List!6455)) (Boolean!1347) (Unit!11530) (OperatorValue!1349 (op!1406 List!6455)) (IdentifierValue!2692 (value!42514 List!6455)) (IdentifierValue!2693 (value!42515 List!6455)) (WhitespaceValue!2693 (value!42516 List!6455)) (True!2692) (False!2692) (Broken!6732 (value!42517 List!6455)) (Broken!6733 (value!42518 List!6455)) (True!2693) (RightBrace!1346) (RightBracket!1346) (Colon!1346) (Null!1346) (Comma!1346) (LeftBracket!1346) (False!2693) (LeftBrace!1346) (ImaginaryLiteralValue!1346 (text!9868 List!6455)) (StringLiteralValue!4038 (value!42519 List!6455)) (EOFValue!1346 (value!42520 List!6455)) (IdentValue!1346 (value!42521 List!6455)) (DelimiterValue!2693 (value!42522 List!6455)) (DedentValue!1346 (value!42523 List!6455)) (NewLineValue!1346 (value!42524 List!6455)) (IntegerValue!4038 (value!42525 (_ BitVec 32)) (text!9869 List!6455)) (IntegerValue!4039 (value!42526 Int) (text!9870 List!6455)) (Times!1346) (Or!1346) (Equal!1346) (Minus!1346) (Broken!6734 (value!42527 List!6455)) (And!1346) (Div!1346) (LessEqual!1346) (Mod!1346) (Concat!2998) (Not!1346) (Plus!1346) (SpaceValue!1346 (value!42528 List!6455)) (IntegerValue!4040 (value!42529 Int) (text!9871 List!6455)) (StringLiteralValue!4039 (text!9872 List!6455)) (FloatLiteralValue!2693 (text!9873 List!6455)) (BytesLiteralValue!1346 (value!42530 List!6455)) (CommentValue!2693 (value!42531 List!6455)) (StringLiteralValue!4040 (value!42532 List!6455)) (ErrorTokenValue!1346 (msg!1407 List!6455)) )
))
(declare-fun toCharacters!16 (IdentValueInjection!12 TokenValue!1346) BalanceConc!4170)

(declare-fun toValue!23 (IdentValueInjection!12 BalanceConc!4170) TokenValue!1346)

(assert (=> start!60584 (= inst!232 (=> (and (inv!8267 x!130371) e!380662) (= (list!2730 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371))) (list!2730 x!130371))))))

(assert (= start!60584 b!627631))

(declare-fun m!895875 () Bool)

(assert (=> b!627631 m!895875))

(declare-fun m!895877 () Bool)

(assert (=> start!60584 m!895877))

(declare-fun m!895879 () Bool)

(assert (=> start!60584 m!895879))

(declare-fun m!895881 () Bool)

(assert (=> start!60584 m!895881))

(declare-fun m!895883 () Bool)

(assert (=> start!60584 m!895883))

(assert (=> start!60584 m!895879))

(declare-fun m!895885 () Bool)

(assert (=> start!60584 m!895885))

(assert (=> start!60584 m!895877))

(declare-fun res!272069 () Bool)

(declare-fun e!380664 () Bool)

(assert (=> b!627622 (=> res!272069 e!380664)))

(declare-fun x!130372 () BalanceConc!4170)

(declare-fun x!130373 () BalanceConc!4170)

(assert (=> b!627622 (= res!272069 (not (= (list!2730 x!130372) (list!2730 x!130373))))))

(declare-fun e!380665 () Bool)

(declare-fun e!380663 () Bool)

(declare-fun inst!233 () Bool)

(assert (=> b!627622 (= inst!233 (=> (and (inv!8267 x!130372) e!380663 (inv!8267 x!130373) e!380665) e!380664))))

(declare-fun b!627632 () Bool)

(assert (=> b!627632 (= e!380664 (= (toValue!23 thiss!4294 x!130372) (toValue!23 thiss!4294 x!130373)))))

(declare-fun b!627633 () Bool)

(declare-fun tp!195946 () Bool)

(assert (=> b!627633 (= e!380663 (and (inv!8266 (c!115357 x!130372)) tp!195946))))

(declare-fun b!627634 () Bool)

(declare-fun tp!195945 () Bool)

(assert (=> b!627634 (= e!380665 (and (inv!8266 (c!115357 x!130373)) tp!195945))))

(assert (= (and b!627622 (not res!272069)) b!627632))

(assert (= b!627622 b!627633))

(assert (= b!627622 b!627634))

(declare-fun m!895887 () Bool)

(assert (=> b!627622 m!895887))

(declare-fun m!895889 () Bool)

(assert (=> b!627622 m!895889))

(declare-fun m!895891 () Bool)

(assert (=> b!627622 m!895891))

(declare-fun m!895893 () Bool)

(assert (=> b!627622 m!895893))

(declare-fun m!895895 () Bool)

(assert (=> b!627632 m!895895))

(declare-fun m!895897 () Bool)

(assert (=> b!627632 m!895897))

(declare-fun m!895899 () Bool)

(assert (=> b!627633 m!895899))

(declare-fun m!895901 () Bool)

(assert (=> b!627634 m!895901))

(declare-fun bs!72331 () Bool)

(declare-fun neg-inst!232 () Bool)

(declare-fun s!19101 () Bool)

(assert (= bs!72331 (and neg-inst!232 s!19101)))

(assert (=> bs!72331 (=> true (= (list!2730 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371))) (list!2730 x!130371)))))

(assert (=> m!895881 m!895877))

(assert (=> m!895881 m!895879))

(assert (=> m!895881 m!895885))

(assert (=> m!895881 s!19101))

(assert (=> m!895877 s!19101))

(declare-fun bs!72332 () Bool)

(assert (= bs!72332 (and neg-inst!232 start!60584)))

(assert (=> bs!72332 (= true inst!232)))

(declare-fun bs!72333 () Bool)

(declare-fun neg-inst!233 () Bool)

(declare-fun s!19103 () Bool)

(assert (= bs!72333 (and neg-inst!233 s!19103)))

(declare-fun res!272070 () Bool)

(declare-fun e!380666 () Bool)

(assert (=> bs!72333 (=> res!272070 e!380666)))

(assert (=> bs!72333 (= res!272070 (not (= (list!2730 x!130373) (list!2730 x!130373))))))

(assert (=> bs!72333 (=> true e!380666)))

(declare-fun b!627635 () Bool)

(assert (=> b!627635 (= e!380666 (= (toValue!23 thiss!4294 x!130373) (toValue!23 thiss!4294 x!130373)))))

(assert (= (and bs!72333 (not res!272070)) b!627635))

(assert (=> m!895897 m!895889))

(assert (=> m!895897 m!895889))

(assert (=> m!895897 s!19103))

(assert (=> m!895897 s!19103))

(declare-fun bs!72334 () Bool)

(declare-fun s!19105 () Bool)

(assert (= bs!72334 (and neg-inst!233 s!19105)))

(declare-fun res!272071 () Bool)

(declare-fun e!380667 () Bool)

(assert (=> bs!72334 (=> res!272071 e!380667)))

(assert (=> bs!72334 (= res!272071 (not (= (list!2730 x!130373) (list!2730 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371))))))))

(assert (=> bs!72334 (=> true e!380667)))

(declare-fun b!627636 () Bool)

(assert (=> b!627636 (= e!380667 (= (toValue!23 thiss!4294 x!130373) (toValue!23 thiss!4294 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371)))))))

(assert (= (and bs!72334 (not res!272071)) b!627636))

(declare-fun bs!72335 () Bool)

(assert (= bs!72335 (and m!895885 m!895897)))

(assert (=> bs!72335 m!895889))

(assert (=> bs!72335 m!895885))

(assert (=> bs!72335 s!19105))

(declare-fun bs!72336 () Bool)

(declare-fun s!19107 () Bool)

(assert (= bs!72336 (and neg-inst!233 s!19107)))

(declare-fun res!272072 () Bool)

(declare-fun e!380668 () Bool)

(assert (=> bs!72336 (=> res!272072 e!380668)))

(assert (=> bs!72336 (= res!272072 (not (= (list!2730 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371))) (list!2730 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371))))))))

(assert (=> bs!72336 (=> true e!380668)))

(declare-fun b!627637 () Bool)

(assert (=> b!627637 (= e!380668 (= (toValue!23 thiss!4294 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371))) (toValue!23 thiss!4294 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371)))))))

(assert (= (and bs!72336 (not res!272072)) b!627637))

(assert (=> m!895885 s!19107))

(declare-fun bs!72337 () Bool)

(declare-fun s!19109 () Bool)

(assert (= bs!72337 (and neg-inst!233 s!19109)))

(declare-fun res!272073 () Bool)

(declare-fun e!380669 () Bool)

(assert (=> bs!72337 (=> res!272073 e!380669)))

(assert (=> bs!72337 (= res!272073 (not (= (list!2730 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371))) (list!2730 x!130373))))))

(assert (=> bs!72337 (=> true e!380669)))

(declare-fun b!627638 () Bool)

(assert (=> b!627638 (= e!380669 (= (toValue!23 thiss!4294 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371))) (toValue!23 thiss!4294 x!130373)))))

(assert (= (and bs!72337 (not res!272073)) b!627638))

(assert (=> bs!72335 m!895885))

(assert (=> bs!72335 m!895889))

(assert (=> bs!72335 s!19109))

(assert (=> m!895885 s!19107))

(declare-fun bs!72338 () Bool)

(declare-fun s!19111 () Bool)

(assert (= bs!72338 (and neg-inst!233 s!19111)))

(declare-fun res!272074 () Bool)

(declare-fun e!380670 () Bool)

(assert (=> bs!72338 (=> res!272074 e!380670)))

(assert (=> bs!72338 (= res!272074 (not (= (list!2730 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371))) (list!2730 x!130372))))))

(assert (=> bs!72338 (=> true e!380670)))

(declare-fun b!627639 () Bool)

(assert (=> b!627639 (= e!380670 (= (toValue!23 thiss!4294 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371))) (toValue!23 thiss!4294 x!130372)))))

(assert (= (and bs!72338 (not res!272074)) b!627639))

(declare-fun bs!72339 () Bool)

(assert (= bs!72339 (and m!895895 m!895885)))

(assert (=> bs!72339 m!895885))

(assert (=> bs!72339 m!895887))

(assert (=> bs!72339 s!19111))

(declare-fun bs!72340 () Bool)

(declare-fun s!19113 () Bool)

(assert (= bs!72340 (and neg-inst!233 s!19113)))

(declare-fun res!272075 () Bool)

(declare-fun e!380671 () Bool)

(assert (=> bs!72340 (=> res!272075 e!380671)))

(assert (=> bs!72340 (= res!272075 (not (= (list!2730 x!130373) (list!2730 x!130372))))))

(assert (=> bs!72340 (=> true e!380671)))

(declare-fun b!627640 () Bool)

(assert (=> b!627640 (= e!380671 (= (toValue!23 thiss!4294 x!130373) (toValue!23 thiss!4294 x!130372)))))

(assert (= (and bs!72340 (not res!272075)) b!627640))

(declare-fun bs!72341 () Bool)

(assert (= bs!72341 (and m!895895 m!895897)))

(assert (=> bs!72341 m!895889))

(assert (=> bs!72341 m!895887))

(assert (=> bs!72341 s!19113))

(declare-fun bs!72342 () Bool)

(declare-fun s!19115 () Bool)

(assert (= bs!72342 (and neg-inst!233 s!19115)))

(declare-fun res!272076 () Bool)

(declare-fun e!380672 () Bool)

(assert (=> bs!72342 (=> res!272076 e!380672)))

(assert (=> bs!72342 (= res!272076 (not (= (list!2730 x!130372) (list!2730 x!130372))))))

(assert (=> bs!72342 (=> true e!380672)))

(declare-fun b!627641 () Bool)

(assert (=> b!627641 (= e!380672 (= (toValue!23 thiss!4294 x!130372) (toValue!23 thiss!4294 x!130372)))))

(assert (= (and bs!72342 (not res!272076)) b!627641))

(assert (=> m!895895 m!895887))

(assert (=> m!895895 m!895887))

(assert (=> m!895895 s!19115))

(declare-fun bs!72343 () Bool)

(declare-fun s!19117 () Bool)

(assert (= bs!72343 (and neg-inst!233 s!19117)))

(declare-fun res!272077 () Bool)

(declare-fun e!380673 () Bool)

(assert (=> bs!72343 (=> res!272077 e!380673)))

(assert (=> bs!72343 (= res!272077 (not (= (list!2730 x!130372) (list!2730 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371))))))))

(assert (=> bs!72343 (=> true e!380673)))

(declare-fun b!627642 () Bool)

(assert (=> b!627642 (= e!380673 (= (toValue!23 thiss!4294 x!130372) (toValue!23 thiss!4294 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371)))))))

(assert (= (and bs!72343 (not res!272077)) b!627642))

(assert (=> bs!72339 m!895887))

(assert (=> bs!72339 m!895885))

(assert (=> bs!72339 s!19117))

(declare-fun bs!72344 () Bool)

(declare-fun s!19119 () Bool)

(assert (= bs!72344 (and neg-inst!233 s!19119)))

(declare-fun res!272078 () Bool)

(declare-fun e!380674 () Bool)

(assert (=> bs!72344 (=> res!272078 e!380674)))

(assert (=> bs!72344 (= res!272078 (not (= (list!2730 x!130372) (list!2730 x!130373))))))

(assert (=> bs!72344 (=> true e!380674)))

(declare-fun b!627643 () Bool)

(assert (=> b!627643 (= e!380674 (= (toValue!23 thiss!4294 x!130372) (toValue!23 thiss!4294 x!130373)))))

(assert (= (and bs!72344 (not res!272078)) b!627643))

(assert (=> bs!72341 m!895887))

(assert (=> bs!72341 m!895889))

(assert (=> bs!72341 s!19119))

(assert (=> m!895895 s!19115))

(declare-fun bs!72345 () Bool)

(assert (= bs!72345 (and m!895889 m!895885)))

(assert (=> bs!72345 s!19109))

(declare-fun bs!72346 () Bool)

(assert (= bs!72346 (and m!895889 m!895897)))

(assert (=> bs!72346 s!19103))

(declare-fun bs!72347 () Bool)

(assert (= bs!72347 (and m!895889 m!895895)))

(assert (=> bs!72347 s!19119))

(assert (=> m!895889 s!19103))

(assert (=> bs!72345 s!19105))

(assert (=> bs!72346 s!19103))

(assert (=> bs!72347 s!19113))

(assert (=> m!895889 s!19103))

(declare-fun bs!72348 () Bool)

(declare-fun s!19121 () Bool)

(assert (= bs!72348 (and neg-inst!233 s!19121)))

(declare-fun res!272079 () Bool)

(declare-fun e!380675 () Bool)

(assert (=> bs!72348 (=> res!272079 e!380675)))

(assert (=> bs!72348 (= res!272079 (not (= (list!2730 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371))) (list!2730 x!130371))))))

(assert (=> bs!72348 (=> true e!380675)))

(declare-fun b!627644 () Bool)

(assert (=> b!627644 (= e!380675 (= (toValue!23 thiss!4294 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371))) (toValue!23 thiss!4294 x!130371)))))

(assert (= (and bs!72348 (not res!272079)) b!627644))

(declare-fun bs!72349 () Bool)

(assert (= bs!72349 (and m!895881 m!895885)))

(assert (=> bs!72349 m!895885))

(assert (=> bs!72349 m!895881))

(assert (=> bs!72349 s!19121))

(declare-fun bs!72350 () Bool)

(declare-fun s!19123 () Bool)

(assert (= bs!72350 (and neg-inst!233 s!19123)))

(declare-fun res!272080 () Bool)

(declare-fun e!380676 () Bool)

(assert (=> bs!72350 (=> res!272080 e!380676)))

(assert (=> bs!72350 (= res!272080 (not (= (list!2730 x!130373) (list!2730 x!130371))))))

(assert (=> bs!72350 (=> true e!380676)))

(declare-fun b!627645 () Bool)

(assert (=> b!627645 (= e!380676 (= (toValue!23 thiss!4294 x!130373) (toValue!23 thiss!4294 x!130371)))))

(assert (= (and bs!72350 (not res!272080)) b!627645))

(declare-fun bs!72351 () Bool)

(assert (= bs!72351 (and m!895881 m!895897 m!895889)))

(assert (=> bs!72351 m!895889))

(assert (=> bs!72351 m!895881))

(assert (=> bs!72351 s!19123))

(declare-fun bs!72352 () Bool)

(declare-fun s!19125 () Bool)

(assert (= bs!72352 (and neg-inst!233 s!19125)))

(declare-fun res!272081 () Bool)

(declare-fun e!380677 () Bool)

(assert (=> bs!72352 (=> res!272081 e!380677)))

(assert (=> bs!72352 (= res!272081 (not (= (list!2730 x!130372) (list!2730 x!130371))))))

(assert (=> bs!72352 (=> true e!380677)))

(declare-fun b!627646 () Bool)

(assert (=> b!627646 (= e!380677 (= (toValue!23 thiss!4294 x!130372) (toValue!23 thiss!4294 x!130371)))))

(assert (= (and bs!72352 (not res!272081)) b!627646))

(declare-fun bs!72353 () Bool)

(assert (= bs!72353 (and m!895881 m!895895)))

(assert (=> bs!72353 m!895887))

(assert (=> bs!72353 m!895881))

(assert (=> bs!72353 s!19125))

(declare-fun bs!72354 () Bool)

(declare-fun s!19127 () Bool)

(assert (= bs!72354 (and neg-inst!233 s!19127)))

(declare-fun res!272082 () Bool)

(declare-fun e!380678 () Bool)

(assert (=> bs!72354 (=> res!272082 e!380678)))

(assert (=> bs!72354 (= res!272082 (not (= (list!2730 x!130371) (list!2730 x!130371))))))

(assert (=> bs!72354 (=> true e!380678)))

(declare-fun b!627647 () Bool)

(assert (=> b!627647 (= e!380678 (= (toValue!23 thiss!4294 x!130371) (toValue!23 thiss!4294 x!130371)))))

(assert (= (and bs!72354 (not res!272082)) b!627647))

(assert (=> m!895881 s!19127))

(declare-fun bs!72355 () Bool)

(declare-fun s!19129 () Bool)

(assert (= bs!72355 (and neg-inst!233 s!19129)))

(declare-fun res!272083 () Bool)

(declare-fun e!380679 () Bool)

(assert (=> bs!72355 (=> res!272083 e!380679)))

(assert (=> bs!72355 (= res!272083 (not (= (list!2730 x!130371) (list!2730 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371))))))))

(assert (=> bs!72355 (=> true e!380679)))

(declare-fun b!627648 () Bool)

(assert (=> b!627648 (= e!380679 (= (toValue!23 thiss!4294 x!130371) (toValue!23 thiss!4294 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371)))))))

(assert (= (and bs!72355 (not res!272083)) b!627648))

(assert (=> bs!72349 m!895881))

(assert (=> bs!72349 m!895885))

(assert (=> bs!72349 s!19129))

(declare-fun bs!72356 () Bool)

(declare-fun s!19131 () Bool)

(assert (= bs!72356 (and neg-inst!233 s!19131)))

(declare-fun res!272084 () Bool)

(declare-fun e!380680 () Bool)

(assert (=> bs!72356 (=> res!272084 e!380680)))

(assert (=> bs!72356 (= res!272084 (not (= (list!2730 x!130371) (list!2730 x!130373))))))

(assert (=> bs!72356 (=> true e!380680)))

(declare-fun b!627649 () Bool)

(assert (=> b!627649 (= e!380680 (= (toValue!23 thiss!4294 x!130371) (toValue!23 thiss!4294 x!130373)))))

(assert (= (and bs!72356 (not res!272084)) b!627649))

(assert (=> bs!72351 m!895881))

(assert (=> bs!72351 m!895889))

(assert (=> bs!72351 s!19131))

(declare-fun bs!72357 () Bool)

(declare-fun s!19133 () Bool)

(assert (= bs!72357 (and neg-inst!233 s!19133)))

(declare-fun res!272085 () Bool)

(declare-fun e!380681 () Bool)

(assert (=> bs!72357 (=> res!272085 e!380681)))

(assert (=> bs!72357 (= res!272085 (not (= (list!2730 x!130371) (list!2730 x!130372))))))

(assert (=> bs!72357 (=> true e!380681)))

(declare-fun b!627650 () Bool)

(assert (=> b!627650 (= e!380681 (= (toValue!23 thiss!4294 x!130371) (toValue!23 thiss!4294 x!130372)))))

(assert (= (and bs!72357 (not res!272085)) b!627650))

(assert (=> bs!72353 m!895881))

(assert (=> bs!72353 m!895887))

(assert (=> bs!72353 s!19133))

(assert (=> m!895881 s!19127))

(declare-fun bs!72358 () Bool)

(assert (= bs!72358 (and m!895887 m!895897 m!895889)))

(assert (=> bs!72358 s!19113))

(declare-fun bs!72359 () Bool)

(assert (= bs!72359 (and m!895887 m!895881)))

(assert (=> bs!72359 s!19133))

(declare-fun bs!72360 () Bool)

(assert (= bs!72360 (and m!895887 m!895895)))

(assert (=> bs!72360 s!19115))

(declare-fun bs!72361 () Bool)

(assert (= bs!72361 (and m!895887 m!895885)))

(assert (=> bs!72361 s!19111))

(assert (=> m!895887 s!19115))

(assert (=> bs!72359 s!19125))

(assert (=> m!895887 s!19115))

(assert (=> bs!72360 s!19115))

(assert (=> bs!72358 s!19119))

(assert (=> bs!72361 s!19117))

(declare-fun bs!72362 () Bool)

(assert (= bs!72362 (and m!895877 m!895897 m!895889)))

(assert (=> bs!72362 s!19123))

(declare-fun bs!72363 () Bool)

(assert (= bs!72363 (and m!895877 m!895895 m!895887)))

(assert (=> bs!72363 s!19125))

(declare-fun bs!72364 () Bool)

(assert (= bs!72364 (and m!895877 m!895885)))

(assert (=> bs!72364 s!19121))

(assert (=> m!895877 s!19127))

(declare-fun bs!72365 () Bool)

(assert (= bs!72365 (and m!895877 m!895881)))

(assert (=> bs!72365 s!19127))

(assert (=> bs!72363 s!19133))

(assert (=> m!895877 s!19127))

(assert (=> bs!72362 s!19131))

(assert (=> bs!72364 s!19129))

(assert (=> bs!72365 s!19127))

(declare-fun bs!72366 () Bool)

(assert (= bs!72366 (and neg-inst!233 b!627622)))

(assert (=> bs!72366 (= true inst!233)))

(declare-fun res!272067 () Bool)

(declare-fun e!380660 () Bool)

(assert (=> start!60584 (=> res!272067 e!380660)))

(declare-fun lambda!16425 () Int)

(declare-fun Forall!324 (Int) Bool)

(assert (=> start!60584 (= res!272067 (not (Forall!324 lambda!16425)))))

(assert (=> start!60584 (= (Forall!324 lambda!16425) inst!232)))

(assert (=> start!60584 (not e!380660)))

(assert (=> start!60584 true))

(declare-fun e!380661 () Bool)

(assert (=> b!627621 (= e!380660 e!380661)))

(declare-fun res!272068 () Bool)

(assert (=> b!627621 (=> res!272068 e!380661)))

(declare-fun lambda!16426 () Int)

(declare-fun lambda!16427 () Int)

(declare-fun semiInverseModEq!531 (Int Int) Bool)

(assert (=> b!627621 (= res!272068 (not (semiInverseModEq!531 lambda!16426 lambda!16427)))))

(assert (=> b!627621 (= (semiInverseModEq!531 lambda!16426 lambda!16427) (Forall!324 lambda!16425))))

(declare-fun lambda!16428 () Int)

(declare-fun Forall2!246 (Int) Bool)

(assert (=> b!627622 (= e!380661 (Forall2!246 lambda!16428))))

(assert (=> b!627622 (= (Forall2!246 lambda!16428) inst!233)))

(assert (= neg-inst!232 inst!232))

(assert (= (and start!60584 (not res!272067)) b!627621))

(assert (= (and b!627621 (not res!272068)) b!627622))

(assert (= neg-inst!233 inst!233))

(declare-fun m!895903 () Bool)

(assert (=> start!60584 m!895903))

(assert (=> start!60584 m!895903))

(declare-fun m!895905 () Bool)

(assert (=> b!627621 m!895905))

(assert (=> b!627621 m!895905))

(assert (=> b!627621 m!895903))

(declare-fun m!895907 () Bool)

(assert (=> b!627622 m!895907))

(assert (=> b!627622 m!895907))

(push 1)

(assert (not bs!72334))

(assert (not bs!72343))

(assert (not b!627622))

(assert (not bs!72354))

(assert (not bs!72336))

(assert (not b!627650))

(assert (not b!627644))

(assert (not bs!72331))

(assert (not bs!72340))

(assert (not bs!72333))

(assert (not b!627641))

(assert (not bs!72338))

(assert (not bs!72357))

(assert (not start!60584))

(assert (not b!627638))

(assert (not b!627639))

(assert (not bs!72348))

(assert (not b!627633))

(assert (not b!627642))

(assert (not b!627646))

(assert (not b!627643))

(assert (not b!627621))

(assert (not b!627640))

(assert (not b!627649))

(assert (not bs!72344))

(assert (not bs!72350))

(assert (not bs!72356))

(assert (not b!627632))

(assert (not bs!72355))

(assert (not b!627648))

(assert (not b!627636))

(assert (not bs!72337))

(assert (not bs!72342))

(assert (not b!627634))

(assert (not b!627647))

(assert (not b!627631))

(assert (not b!627635))

(assert (not bs!72352))

(assert (not b!627645))

(assert (not b!627637))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!219574 () Bool)

(declare-fun efficientList!76 (BalanceConc!4170) List!6455)

(assert (=> d!219574 (= (toValue!23 thiss!4294 x!130372) (IdentValue!1346 (efficientList!76 x!130372)))))

(declare-fun bs!72401 () Bool)

(assert (= bs!72401 d!219574))

(declare-fun m!895943 () Bool)

(assert (=> bs!72401 m!895943))

(assert (=> b!627641 d!219574))

(declare-fun d!219576 () Bool)

(assert (=> d!219576 (= (toValue!23 thiss!4294 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371))) (IdentValue!1346 (efficientList!76 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371)))))))

(declare-fun bs!72402 () Bool)

(assert (= bs!72402 d!219576))

(assert (=> bs!72402 m!895879))

(declare-fun m!895945 () Bool)

(assert (=> bs!72402 m!895945))

(assert (=> b!627644 d!219576))

(declare-fun d!219578 () Bool)

(assert (=> d!219578 (= (toValue!23 thiss!4294 x!130371) (IdentValue!1346 (efficientList!76 x!130371)))))

(declare-fun bs!72403 () Bool)

(assert (= bs!72403 d!219578))

(declare-fun m!895947 () Bool)

(assert (=> bs!72403 m!895947))

(assert (=> b!627644 d!219578))

(assert (=> b!627647 d!219578))

(declare-fun d!219580 () Bool)

(declare-fun list!2732 (Conc!2081) List!6455)

(assert (=> d!219580 (= (list!2730 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371))) (list!2732 (c!115357 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371)))))))

(declare-fun bs!72404 () Bool)

(assert (= bs!72404 d!219580))

(declare-fun m!895949 () Bool)

(assert (=> bs!72404 m!895949))

(assert (=> bs!72337 d!219580))

(declare-fun d!219584 () Bool)

(assert (=> d!219584 (= (list!2730 x!130373) (list!2732 (c!115357 x!130373)))))

(declare-fun bs!72405 () Bool)

(assert (= bs!72405 d!219584))

(declare-fun m!895951 () Bool)

(assert (=> bs!72405 m!895951))

(assert (=> bs!72337 d!219584))

(declare-fun d!219586 () Bool)

(assert (=> d!219586 (= (list!2730 x!130372) (list!2732 (c!115357 x!130372)))))

(declare-fun bs!72406 () Bool)

(assert (= bs!72406 d!219586))

(declare-fun m!895953 () Bool)

(assert (=> bs!72406 m!895953))

(assert (=> bs!72343 d!219586))

(assert (=> bs!72343 d!219580))

(declare-fun d!219588 () Bool)

(assert (=> d!219588 (= (list!2730 x!130371) (list!2732 (c!115357 x!130371)))))

(declare-fun bs!72407 () Bool)

(assert (= bs!72407 d!219588))

(declare-fun m!895955 () Bool)

(assert (=> bs!72407 m!895955))

(assert (=> bs!72355 d!219588))

(assert (=> bs!72355 d!219580))

(assert (=> b!627638 d!219576))

(declare-fun d!219590 () Bool)

(assert (=> d!219590 (= (toValue!23 thiss!4294 x!130373) (IdentValue!1346 (efficientList!76 x!130373)))))

(declare-fun bs!72408 () Bool)

(assert (= bs!72408 d!219590))

(declare-fun m!895957 () Bool)

(assert (=> bs!72408 m!895957))

(assert (=> b!627638 d!219590))

(assert (=> bs!72333 d!219584))

(assert (=> bs!72357 d!219588))

(assert (=> bs!72357 d!219586))

(assert (=> b!627640 d!219590))

(assert (=> b!627640 d!219574))

(assert (=> bs!72342 d!219586))

(assert (=> bs!72348 d!219580))

(assert (=> bs!72348 d!219588))

(assert (=> bs!72354 d!219588))

(assert (=> b!627650 d!219578))

(assert (=> b!627650 d!219574))

(assert (=> b!627637 d!219576))

(assert (=> bs!72352 d!219586))

(assert (=> bs!72352 d!219588))

(assert (=> b!627636 d!219590))

(assert (=> b!627636 d!219576))

(assert (=> bs!72344 d!219586))

(assert (=> bs!72344 d!219584))

(assert (=> b!627646 d!219574))

(assert (=> b!627646 d!219578))

(assert (=> bs!72336 d!219580))

(assert (=> b!627643 d!219574))

(assert (=> b!627643 d!219590))

(assert (=> b!627649 d!219578))

(assert (=> b!627649 d!219590))

(assert (=> bs!72340 d!219584))

(assert (=> bs!72340 d!219586))

(assert (=> b!627648 d!219578))

(assert (=> b!627648 d!219576))

(assert (=> bs!72338 d!219580))

(assert (=> bs!72338 d!219586))

(assert (=> bs!72350 d!219584))

(assert (=> bs!72350 d!219588))

(assert (=> b!627635 d!219590))

(assert (=> bs!72356 d!219588))

(assert (=> bs!72356 d!219584))

(assert (=> b!627639 d!219576))

(assert (=> b!627639 d!219574))

(assert (=> b!627645 d!219590))

(assert (=> b!627645 d!219578))

(assert (=> bs!72334 d!219584))

(assert (=> bs!72334 d!219580))

(assert (=> b!627642 d!219574))

(assert (=> b!627642 d!219576))

(declare-fun bs!72409 () Bool)

(assert (= bs!72409 (and m!895897 b!627635)))

(assert (=> bs!72409 m!895897))

(assert (=> bs!72409 m!895897))

(declare-fun bs!72410 () Bool)

(assert (= bs!72410 (and m!895885 m!895897 b!627636)))

(assert (=> bs!72410 m!895897))

(declare-fun m!895959 () Bool)

(assert (=> bs!72410 m!895959))

(declare-fun bs!72411 () Bool)

(assert (= bs!72411 (and m!895885 b!627637)))

(assert (=> bs!72411 m!895959))

(assert (=> bs!72411 m!895959))

(declare-fun bs!72412 () Bool)

(assert (= bs!72412 (and m!895885 m!895897 b!627638)))

(assert (=> bs!72412 m!895959))

(assert (=> bs!72412 m!895897))

(declare-fun bs!72413 () Bool)

(assert (= bs!72413 (and m!895895 m!895885 b!627639)))

(assert (=> bs!72413 m!895959))

(assert (=> bs!72413 m!895895))

(declare-fun bs!72414 () Bool)

(assert (= bs!72414 (and m!895895 m!895897 b!627640)))

(assert (=> bs!72414 m!895897))

(assert (=> bs!72414 m!895895))

(declare-fun bs!72415 () Bool)

(assert (= bs!72415 (and m!895895 b!627641)))

(assert (=> bs!72415 m!895895))

(assert (=> bs!72415 m!895895))

(declare-fun bs!72416 () Bool)

(assert (= bs!72416 (and m!895895 m!895885 b!627642)))

(assert (=> bs!72416 m!895895))

(assert (=> bs!72416 m!895959))

(declare-fun bs!72417 () Bool)

(assert (= bs!72417 (and m!895895 m!895897 b!627643)))

(assert (=> bs!72417 m!895895))

(assert (=> bs!72417 m!895897))

(declare-fun bs!72418 () Bool)

(assert (= bs!72418 (and m!895881 m!895885 b!627644)))

(assert (=> bs!72418 m!895959))

(assert (=> bs!72418 m!895877))

(declare-fun bs!72419 () Bool)

(assert (= bs!72419 (and m!895881 m!895897 m!895889 b!627645)))

(assert (=> bs!72419 m!895897))

(assert (=> bs!72419 m!895877))

(declare-fun bs!72420 () Bool)

(assert (= bs!72420 (and m!895881 m!895895 b!627646)))

(assert (=> bs!72420 m!895895))

(assert (=> bs!72420 m!895877))

(declare-fun bs!72421 () Bool)

(assert (= bs!72421 (and m!895881 b!627647)))

(assert (=> bs!72421 m!895877))

(assert (=> bs!72421 m!895877))

(declare-fun bs!72422 () Bool)

(assert (= bs!72422 (and m!895881 m!895885 b!627648)))

(assert (=> bs!72422 m!895877))

(assert (=> bs!72422 m!895959))

(declare-fun bs!72423 () Bool)

(assert (= bs!72423 (and m!895881 m!895897 m!895889 b!627649)))

(assert (=> bs!72423 m!895877))

(assert (=> bs!72423 m!895897))

(declare-fun bs!72424 () Bool)

(assert (= bs!72424 (and m!895881 m!895895 b!627650)))

(assert (=> bs!72424 m!895877))

(assert (=> bs!72424 m!895895))

(push 1)

(assert (not d!219578))

(assert (not start!60584))

(assert (not b!627622))

(assert (not b!627633))

(assert (not d!219580))

(assert (not b!627632))

(assert (not bs!72331))

(assert (not d!219574))

(assert (not d!219576))

(assert (not b!627634))

(assert (not b!627631))

(assert (not d!219584))

(assert (not d!219586))

(assert (not d!219590))

(assert (not d!219588))

(assert (not b!627621))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!627708 () Bool)

(declare-fun e!380726 () List!6455)

(declare-fun e!380727 () List!6455)

(assert (=> b!627708 (= e!380726 e!380727)))

(declare-fun c!115364 () Bool)

(assert (=> b!627708 (= c!115364 (is-Leaf!3251 (c!115357 x!130373)))))

(declare-fun b!627709 () Bool)

(declare-fun list!2734 (IArray!4163) List!6455)

(assert (=> b!627709 (= e!380727 (list!2734 (xs!4722 (c!115357 x!130373))))))

(declare-fun d!219606 () Bool)

(declare-fun c!115363 () Bool)

(assert (=> d!219606 (= c!115363 (is-Empty!2081 (c!115357 x!130373)))))

(assert (=> d!219606 (= (list!2732 (c!115357 x!130373)) e!380726)))

(declare-fun b!627707 () Bool)

(assert (=> b!627707 (= e!380726 Nil!6445)))

(declare-fun b!627710 () Bool)

(declare-fun ++!1784 (List!6455 List!6455) List!6455)

(assert (=> b!627710 (= e!380727 (++!1784 (list!2732 (left!5134 (c!115357 x!130373))) (list!2732 (right!5464 (c!115357 x!130373)))))))

(assert (= (and d!219606 c!115363) b!627707))

(assert (= (and d!219606 (not c!115363)) b!627708))

(assert (= (and b!627708 c!115364) b!627709))

(assert (= (and b!627708 (not c!115364)) b!627710))

(declare-fun m!895979 () Bool)

(assert (=> b!627709 m!895979))

(declare-fun m!895981 () Bool)

(assert (=> b!627710 m!895981))

(declare-fun m!895983 () Bool)

(assert (=> b!627710 m!895983))

(assert (=> b!627710 m!895981))

(assert (=> b!627710 m!895983))

(declare-fun m!895985 () Bool)

(assert (=> b!627710 m!895985))

(assert (=> d!219584 d!219606))

(declare-fun d!219608 () Bool)

(declare-fun lt!266968 () List!6455)

(assert (=> d!219608 (= lt!266968 (list!2730 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371))))))

(declare-fun efficientList!78 (Conc!2081 List!6455) List!6455)

(declare-fun efficientList$default$2!26 (Conc!2081) List!6455)

(assert (=> d!219608 (= lt!266968 (efficientList!78 (c!115357 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371))) (efficientList$default$2!26 (c!115357 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371))))))))

(assert (=> d!219608 (= (efficientList!76 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371))) lt!266968)))

(declare-fun bs!72449 () Bool)

(assert (= bs!72449 d!219608))

(assert (=> bs!72449 m!895879))

(assert (=> bs!72449 m!895885))

(declare-fun m!895987 () Bool)

(assert (=> bs!72449 m!895987))

(assert (=> bs!72449 m!895987))

(declare-fun m!895989 () Bool)

(assert (=> bs!72449 m!895989))

(assert (=> d!219576 d!219608))

(declare-fun d!219610 () Bool)

(declare-fun lt!266969 () List!6455)

(assert (=> d!219610 (= lt!266969 (list!2730 x!130373))))

(assert (=> d!219610 (= lt!266969 (efficientList!78 (c!115357 x!130373) (efficientList$default$2!26 (c!115357 x!130373))))))

(assert (=> d!219610 (= (efficientList!76 x!130373) lt!266969)))

(declare-fun bs!72450 () Bool)

(assert (= bs!72450 d!219610))

(assert (=> bs!72450 m!895889))

(declare-fun m!895991 () Bool)

(assert (=> bs!72450 m!895991))

(assert (=> bs!72450 m!895991))

(declare-fun m!895993 () Bool)

(assert (=> bs!72450 m!895993))

(assert (=> d!219590 d!219610))

(declare-fun d!219612 () Bool)

(declare-fun lt!266970 () List!6455)

(assert (=> d!219612 (= lt!266970 (list!2730 x!130372))))

(assert (=> d!219612 (= lt!266970 (efficientList!78 (c!115357 x!130372) (efficientList$default$2!26 (c!115357 x!130372))))))

(assert (=> d!219612 (= (efficientList!76 x!130372) lt!266970)))

(declare-fun bs!72451 () Bool)

(assert (= bs!72451 d!219612))

(assert (=> bs!72451 m!895887))

(declare-fun m!895995 () Bool)

(assert (=> bs!72451 m!895995))

(assert (=> bs!72451 m!895995))

(declare-fun m!895997 () Bool)

(assert (=> bs!72451 m!895997))

(assert (=> d!219574 d!219612))

(declare-fun b!627712 () Bool)

(declare-fun e!380728 () List!6455)

(declare-fun e!380729 () List!6455)

(assert (=> b!627712 (= e!380728 e!380729)))

(declare-fun c!115366 () Bool)

(assert (=> b!627712 (= c!115366 (is-Leaf!3251 (c!115357 x!130371)))))

(declare-fun b!627713 () Bool)

(assert (=> b!627713 (= e!380729 (list!2734 (xs!4722 (c!115357 x!130371))))))

(declare-fun d!219614 () Bool)

(declare-fun c!115365 () Bool)

(assert (=> d!219614 (= c!115365 (is-Empty!2081 (c!115357 x!130371)))))

(assert (=> d!219614 (= (list!2732 (c!115357 x!130371)) e!380728)))

(declare-fun b!627711 () Bool)

(assert (=> b!627711 (= e!380728 Nil!6445)))

(declare-fun b!627714 () Bool)

(assert (=> b!627714 (= e!380729 (++!1784 (list!2732 (left!5134 (c!115357 x!130371))) (list!2732 (right!5464 (c!115357 x!130371)))))))

(assert (= (and d!219614 c!115365) b!627711))

(assert (= (and d!219614 (not c!115365)) b!627712))

(assert (= (and b!627712 c!115366) b!627713))

(assert (= (and b!627712 (not c!115366)) b!627714))

(declare-fun m!895999 () Bool)

(assert (=> b!627713 m!895999))

(declare-fun m!896001 () Bool)

(assert (=> b!627714 m!896001))

(declare-fun m!896003 () Bool)

(assert (=> b!627714 m!896003))

(assert (=> b!627714 m!896001))

(assert (=> b!627714 m!896003))

(declare-fun m!896005 () Bool)

(assert (=> b!627714 m!896005))

(assert (=> d!219588 d!219614))

(declare-fun b!627716 () Bool)

(declare-fun e!380730 () List!6455)

(declare-fun e!380731 () List!6455)

(assert (=> b!627716 (= e!380730 e!380731)))

(declare-fun c!115368 () Bool)

(assert (=> b!627716 (= c!115368 (is-Leaf!3251 (c!115357 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371)))))))

(declare-fun b!627717 () Bool)

(assert (=> b!627717 (= e!380731 (list!2734 (xs!4722 (c!115357 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371))))))))

(declare-fun d!219616 () Bool)

(declare-fun c!115367 () Bool)

(assert (=> d!219616 (= c!115367 (is-Empty!2081 (c!115357 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371)))))))

(assert (=> d!219616 (= (list!2732 (c!115357 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371)))) e!380730)))

(declare-fun b!627715 () Bool)

(assert (=> b!627715 (= e!380730 Nil!6445)))

(declare-fun b!627718 () Bool)

(assert (=> b!627718 (= e!380731 (++!1784 (list!2732 (left!5134 (c!115357 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371))))) (list!2732 (right!5464 (c!115357 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371)))))))))

(assert (= (and d!219616 c!115367) b!627715))

(assert (= (and d!219616 (not c!115367)) b!627716))

(assert (= (and b!627716 c!115368) b!627717))

(assert (= (and b!627716 (not c!115368)) b!627718))

(declare-fun m!896007 () Bool)

(assert (=> b!627717 m!896007))

(declare-fun m!896009 () Bool)

(assert (=> b!627718 m!896009))

(declare-fun m!896011 () Bool)

(assert (=> b!627718 m!896011))

(assert (=> b!627718 m!896009))

(assert (=> b!627718 m!896011))

(declare-fun m!896013 () Bool)

(assert (=> b!627718 m!896013))

(assert (=> d!219580 d!219616))

(declare-fun b!627720 () Bool)

(declare-fun e!380732 () List!6455)

(declare-fun e!380733 () List!6455)

(assert (=> b!627720 (= e!380732 e!380733)))

(declare-fun c!115370 () Bool)

(assert (=> b!627720 (= c!115370 (is-Leaf!3251 (c!115357 x!130372)))))

(declare-fun b!627721 () Bool)

(assert (=> b!627721 (= e!380733 (list!2734 (xs!4722 (c!115357 x!130372))))))

(declare-fun d!219618 () Bool)

(declare-fun c!115369 () Bool)

(assert (=> d!219618 (= c!115369 (is-Empty!2081 (c!115357 x!130372)))))

(assert (=> d!219618 (= (list!2732 (c!115357 x!130372)) e!380732)))

(declare-fun b!627719 () Bool)

(assert (=> b!627719 (= e!380732 Nil!6445)))

(declare-fun b!627722 () Bool)

(assert (=> b!627722 (= e!380733 (++!1784 (list!2732 (left!5134 (c!115357 x!130372))) (list!2732 (right!5464 (c!115357 x!130372)))))))

(assert (= (and d!219618 c!115369) b!627719))

(assert (= (and d!219618 (not c!115369)) b!627720))

(assert (= (and b!627720 c!115370) b!627721))

(assert (= (and b!627720 (not c!115370)) b!627722))

(declare-fun m!896015 () Bool)

(assert (=> b!627721 m!896015))

(declare-fun m!896017 () Bool)

(assert (=> b!627722 m!896017))

(declare-fun m!896019 () Bool)

(assert (=> b!627722 m!896019))

(assert (=> b!627722 m!896017))

(assert (=> b!627722 m!896019))

(declare-fun m!896021 () Bool)

(assert (=> b!627722 m!896021))

(assert (=> d!219586 d!219618))

(declare-fun d!219620 () Bool)

(declare-fun lt!266971 () List!6455)

(assert (=> d!219620 (= lt!266971 (list!2730 x!130371))))

(assert (=> d!219620 (= lt!266971 (efficientList!78 (c!115357 x!130371) (efficientList$default$2!26 (c!115357 x!130371))))))

(assert (=> d!219620 (= (efficientList!76 x!130371) lt!266971)))

(declare-fun bs!72452 () Bool)

(assert (= bs!72452 d!219620))

(assert (=> bs!72452 m!895881))

(declare-fun m!896023 () Bool)

(assert (=> bs!72452 m!896023))

(assert (=> bs!72452 m!896023))

(declare-fun m!896025 () Bool)

(assert (=> bs!72452 m!896025))

(assert (=> d!219578 d!219620))

(push 1)

(assert (not b!627717))

(assert (not start!60584))

(assert (not b!627713))

(assert (not b!627621))

(assert (not d!219610))

(assert (not b!627718))

(assert (not d!219608))

(assert (not d!219620))

(assert (not b!627632))

(assert (not bs!72331))

(assert (not b!627722))

(assert (not b!627714))

(assert (not b!627631))

(assert (not b!627710))

(assert (not b!627622))

(assert (not b!627721))

(assert (not b!627633))

(assert (not b!627709))

(assert (not b!627634))

(assert (not d!219612))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!219638 () Bool)

(declare-fun c!115385 () Bool)

(assert (=> d!219638 (= c!115385 (is-Node!2081 (c!115357 x!130373)))))

(declare-fun e!380750 () Bool)

(assert (=> d!219638 (= (inv!8266 (c!115357 x!130373)) e!380750)))

(declare-fun b!627753 () Bool)

(declare-fun inv!8270 (Conc!2081) Bool)

(assert (=> b!627753 (= e!380750 (inv!8270 (c!115357 x!130373)))))

(declare-fun b!627754 () Bool)

(declare-fun e!380751 () Bool)

(assert (=> b!627754 (= e!380750 e!380751)))

(declare-fun res!272129 () Bool)

(assert (=> b!627754 (= res!272129 (not (is-Leaf!3251 (c!115357 x!130373))))))

(assert (=> b!627754 (=> res!272129 e!380751)))

(declare-fun b!627755 () Bool)

(declare-fun inv!8271 (Conc!2081) Bool)

(assert (=> b!627755 (= e!380751 (inv!8271 (c!115357 x!130373)))))

(assert (= (and d!219638 c!115385) b!627753))

(assert (= (and d!219638 (not c!115385)) b!627754))

(assert (= (and b!627754 (not res!272129)) b!627755))

(declare-fun m!896075 () Bool)

(assert (=> b!627753 m!896075))

(declare-fun m!896077 () Bool)

(assert (=> b!627755 m!896077))

(assert (=> b!627634 d!219638))

(declare-fun d!219640 () Bool)

(declare-fun c!115386 () Bool)

(assert (=> d!219640 (= c!115386 (is-Node!2081 (c!115357 x!130372)))))

(declare-fun e!380752 () Bool)

(assert (=> d!219640 (= (inv!8266 (c!115357 x!130372)) e!380752)))

(declare-fun b!627756 () Bool)

(assert (=> b!627756 (= e!380752 (inv!8270 (c!115357 x!130372)))))

(declare-fun b!627757 () Bool)

(declare-fun e!380753 () Bool)

(assert (=> b!627757 (= e!380752 e!380753)))

(declare-fun res!272130 () Bool)

(assert (=> b!627757 (= res!272130 (not (is-Leaf!3251 (c!115357 x!130372))))))

(assert (=> b!627757 (=> res!272130 e!380753)))

(declare-fun b!627758 () Bool)

(assert (=> b!627758 (= e!380753 (inv!8271 (c!115357 x!130372)))))

(assert (= (and d!219640 c!115386) b!627756))

(assert (= (and d!219640 (not c!115386)) b!627757))

(assert (= (and b!627757 (not res!272130)) b!627758))

(declare-fun m!896079 () Bool)

(assert (=> b!627756 m!896079))

(declare-fun m!896081 () Bool)

(assert (=> b!627758 m!896081))

(assert (=> b!627633 d!219640))

(assert (=> b!627622 d!219584))

(declare-fun d!219642 () Bool)

(declare-fun isBalanced!554 (Conc!2081) Bool)

(assert (=> d!219642 (= (inv!8267 x!130372) (isBalanced!554 (c!115357 x!130372)))))

(declare-fun bs!72457 () Bool)

(assert (= bs!72457 d!219642))

(declare-fun m!896083 () Bool)

(assert (=> bs!72457 m!896083))

(assert (=> b!627622 d!219642))

(declare-fun d!219644 () Bool)

(assert (=> d!219644 (= (inv!8267 x!130373) (isBalanced!554 (c!115357 x!130373)))))

(declare-fun bs!72458 () Bool)

(assert (= bs!72458 d!219644))

(declare-fun m!896085 () Bool)

(assert (=> bs!72458 m!896085))

(assert (=> b!627622 d!219644))

(assert (=> b!627622 d!219586))

(declare-fun d!219646 () Bool)

(declare-fun choose!4554 (Int) Bool)

(assert (=> d!219646 (= (Forall2!246 lambda!16428) (choose!4554 lambda!16428))))

(declare-fun bs!72459 () Bool)

(assert (= bs!72459 d!219646))

(declare-fun m!896087 () Bool)

(assert (=> bs!72459 m!896087))

(assert (=> b!627622 d!219646))

(declare-fun bs!72460 () Bool)

(declare-fun d!219648 () Bool)

(assert (= bs!72460 (and d!219648 start!60584)))

(declare-fun lambda!16453 () Int)

(assert (=> bs!72460 (not (= lambda!16453 lambda!16425))))

(assert (=> d!219648 true))

(declare-fun order!4989 () Int)

(declare-fun order!4987 () Int)

(declare-fun dynLambda!3645 (Int Int) Int)

(declare-fun dynLambda!3646 (Int Int) Int)

(assert (=> d!219648 (< (dynLambda!3645 order!4987 lambda!16426) (dynLambda!3646 order!4989 lambda!16453))))

(assert (=> d!219648 true))

(declare-fun order!4991 () Int)

(declare-fun dynLambda!3647 (Int Int) Int)

(assert (=> d!219648 (< (dynLambda!3647 order!4991 lambda!16427) (dynLambda!3646 order!4989 lambda!16453))))

(assert (=> d!219648 (= (semiInverseModEq!531 lambda!16426 lambda!16427) (Forall!324 lambda!16453))))

(declare-fun bs!72461 () Bool)

(assert (= bs!72461 d!219648))

(declare-fun m!896089 () Bool)

(assert (=> bs!72461 m!896089))

(assert (=> b!627621 d!219648))

(declare-fun d!219650 () Bool)

(declare-fun choose!4555 (Int) Bool)

(assert (=> d!219650 (= (Forall!324 lambda!16425) (choose!4555 lambda!16425))))

(declare-fun bs!72462 () Bool)

(assert (= bs!72462 d!219650))

(declare-fun m!896091 () Bool)

(assert (=> bs!72462 m!896091))

(assert (=> b!627621 d!219650))

(assert (=> d!219612 d!219586))

(declare-fun b!627775 () Bool)

(declare-fun e!380762 () List!6455)

(declare-fun call!41314 () List!6455)

(assert (=> b!627775 (= e!380762 call!41314)))

(declare-fun b!627776 () Bool)

(declare-fun e!380760 () List!6455)

(assert (=> b!627776 (= e!380760 (efficientList$default$2!26 (c!115357 x!130372)))))

(declare-fun b!627778 () Bool)

(declare-datatypes ((Unit!11532 0))(
  ( (Unit!11533) )
))
(declare-fun lt!266989 () Unit!11532)

(declare-fun lt!266990 () Unit!11532)

(assert (=> b!627778 (= lt!266989 lt!266990)))

(declare-fun lt!266988 () List!6455)

(declare-fun lt!266992 () List!6455)

(assert (=> b!627778 (= (++!1784 call!41314 (efficientList$default$2!26 (c!115357 x!130372))) (++!1784 lt!266992 (++!1784 lt!266988 (efficientList$default$2!26 (c!115357 x!130372)))))))

(declare-fun lemmaConcatAssociativity!633 (List!6455 List!6455 List!6455) Unit!11532)

(assert (=> b!627778 (= lt!266990 (lemmaConcatAssociativity!633 lt!266992 lt!266988 (efficientList$default$2!26 (c!115357 x!130372))))))

(assert (=> b!627778 (= lt!266988 (list!2732 (right!5464 (c!115357 x!130372))))))

(assert (=> b!627778 (= lt!266992 (list!2732 (left!5134 (c!115357 x!130372))))))

(assert (=> b!627778 (= e!380762 (efficientList!78 (left!5134 (c!115357 x!130372)) (efficientList!78 (right!5464 (c!115357 x!130372)) (efficientList$default$2!26 (c!115357 x!130372)))))))

(declare-fun b!627779 () Bool)

(assert (=> b!627779 (= e!380760 e!380762)))

(declare-fun c!115395 () Bool)

(assert (=> b!627779 (= c!115395 (is-Leaf!3251 (c!115357 x!130372)))))

(declare-fun b!627780 () Bool)

(declare-fun e!380761 () List!6455)

(declare-fun efficientList!80 (IArray!4163) List!6455)

(assert (=> b!627780 (= e!380761 (efficientList!80 (xs!4722 (c!115357 x!130372))))))

(declare-fun bm!41309 () Bool)

(declare-fun c!115394 () Bool)

(assert (=> bm!41309 (= c!115394 c!115395)))

(assert (=> bm!41309 (= call!41314 (++!1784 e!380761 (ite c!115395 (efficientList$default$2!26 (c!115357 x!130372)) lt!266988)))))

(declare-fun d!219652 () Bool)

(declare-fun lt!266991 () List!6455)

(assert (=> d!219652 (= lt!266991 (++!1784 (list!2732 (c!115357 x!130372)) (efficientList$default$2!26 (c!115357 x!130372))))))

(assert (=> d!219652 (= lt!266991 e!380760)))

(declare-fun c!115393 () Bool)

(assert (=> d!219652 (= c!115393 (is-Empty!2081 (c!115357 x!130372)))))

(assert (=> d!219652 (= (efficientList!78 (c!115357 x!130372) (efficientList$default$2!26 (c!115357 x!130372))) lt!266991)))

(declare-fun b!627777 () Bool)

(assert (=> b!627777 (= e!380761 lt!266992)))

(assert (= (and d!219652 c!115393) b!627776))

(assert (= (and d!219652 (not c!115393)) b!627779))

(assert (= (and b!627779 c!115395) b!627775))

(assert (= (and b!627779 (not c!115395)) b!627778))

(assert (= (or b!627775 b!627778) bm!41309))

(assert (= (and bm!41309 c!115394) b!627780))

(assert (= (and bm!41309 (not c!115394)) b!627777))

(assert (=> b!627778 m!896019))

(assert (=> b!627778 m!895995))

(declare-fun m!896093 () Bool)

(assert (=> b!627778 m!896093))

(assert (=> b!627778 m!895995))

(declare-fun m!896095 () Bool)

(assert (=> b!627778 m!896095))

(assert (=> b!627778 m!896095))

(declare-fun m!896097 () Bool)

(assert (=> b!627778 m!896097))

(assert (=> b!627778 m!895995))

(declare-fun m!896099 () Bool)

(assert (=> b!627778 m!896099))

(assert (=> b!627778 m!896093))

(declare-fun m!896101 () Bool)

(assert (=> b!627778 m!896101))

(assert (=> b!627778 m!896017))

(assert (=> b!627778 m!895995))

(declare-fun m!896103 () Bool)

(assert (=> b!627778 m!896103))

(declare-fun m!896105 () Bool)

(assert (=> b!627780 m!896105))

(declare-fun m!896107 () Bool)

(assert (=> bm!41309 m!896107))

(assert (=> d!219652 m!895953))

(assert (=> d!219652 m!895953))

(assert (=> d!219652 m!895995))

(declare-fun m!896109 () Bool)

(assert (=> d!219652 m!896109))

(assert (=> d!219612 d!219652))

(declare-fun d!219654 () Bool)

(assert (=> d!219654 (= (efficientList$default$2!26 (c!115357 x!130372)) Nil!6445)))

(assert (=> d!219612 d!219654))

(assert (=> d!219608 d!219580))

(declare-fun b!627781 () Bool)

(declare-fun e!380765 () List!6455)

(declare-fun call!41315 () List!6455)

(assert (=> b!627781 (= e!380765 call!41315)))

(declare-fun b!627782 () Bool)

(declare-fun e!380763 () List!6455)

(assert (=> b!627782 (= e!380763 (efficientList$default$2!26 (c!115357 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371)))))))

(declare-fun b!627784 () Bool)

(declare-fun lt!266994 () Unit!11532)

(declare-fun lt!266995 () Unit!11532)

(assert (=> b!627784 (= lt!266994 lt!266995)))

(declare-fun lt!266997 () List!6455)

(declare-fun lt!266993 () List!6455)

(assert (=> b!627784 (= (++!1784 call!41315 (efficientList$default$2!26 (c!115357 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371))))) (++!1784 lt!266997 (++!1784 lt!266993 (efficientList$default$2!26 (c!115357 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371)))))))))

(assert (=> b!627784 (= lt!266995 (lemmaConcatAssociativity!633 lt!266997 lt!266993 (efficientList$default$2!26 (c!115357 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371))))))))

(assert (=> b!627784 (= lt!266993 (list!2732 (right!5464 (c!115357 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371))))))))

(assert (=> b!627784 (= lt!266997 (list!2732 (left!5134 (c!115357 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371))))))))

(assert (=> b!627784 (= e!380765 (efficientList!78 (left!5134 (c!115357 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371)))) (efficientList!78 (right!5464 (c!115357 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371)))) (efficientList$default$2!26 (c!115357 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371)))))))))

(declare-fun b!627785 () Bool)

(assert (=> b!627785 (= e!380763 e!380765)))

(declare-fun c!115398 () Bool)

(assert (=> b!627785 (= c!115398 (is-Leaf!3251 (c!115357 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371)))))))

(declare-fun b!627786 () Bool)

(declare-fun e!380764 () List!6455)

(assert (=> b!627786 (= e!380764 (efficientList!80 (xs!4722 (c!115357 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371))))))))

(declare-fun bm!41310 () Bool)

(declare-fun c!115397 () Bool)

(assert (=> bm!41310 (= c!115397 c!115398)))

(assert (=> bm!41310 (= call!41315 (++!1784 e!380764 (ite c!115398 (efficientList$default$2!26 (c!115357 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371)))) lt!266993)))))

(declare-fun d!219656 () Bool)

(declare-fun lt!266996 () List!6455)

(assert (=> d!219656 (= lt!266996 (++!1784 (list!2732 (c!115357 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371)))) (efficientList$default$2!26 (c!115357 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371))))))))

(assert (=> d!219656 (= lt!266996 e!380763)))

(declare-fun c!115396 () Bool)

(assert (=> d!219656 (= c!115396 (is-Empty!2081 (c!115357 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371)))))))

(assert (=> d!219656 (= (efficientList!78 (c!115357 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371))) (efficientList$default$2!26 (c!115357 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371))))) lt!266996)))

(declare-fun b!627783 () Bool)

(assert (=> b!627783 (= e!380764 lt!266997)))

(assert (= (and d!219656 c!115396) b!627782))

(assert (= (and d!219656 (not c!115396)) b!627785))

(assert (= (and b!627785 c!115398) b!627781))

(assert (= (and b!627785 (not c!115398)) b!627784))

(assert (= (or b!627781 b!627784) bm!41310))

(assert (= (and bm!41310 c!115397) b!627786))

(assert (= (and bm!41310 (not c!115397)) b!627783))

(assert (=> b!627784 m!896011))

(assert (=> b!627784 m!895987))

(declare-fun m!896111 () Bool)

(assert (=> b!627784 m!896111))

(assert (=> b!627784 m!895987))

(declare-fun m!896113 () Bool)

(assert (=> b!627784 m!896113))

(assert (=> b!627784 m!896113))

(declare-fun m!896115 () Bool)

(assert (=> b!627784 m!896115))

(assert (=> b!627784 m!895987))

(declare-fun m!896117 () Bool)

(assert (=> b!627784 m!896117))

(assert (=> b!627784 m!896111))

(declare-fun m!896119 () Bool)

(assert (=> b!627784 m!896119))

(assert (=> b!627784 m!896009))

(assert (=> b!627784 m!895987))

(declare-fun m!896121 () Bool)

(assert (=> b!627784 m!896121))

(declare-fun m!896123 () Bool)

(assert (=> b!627786 m!896123))

(declare-fun m!896125 () Bool)

(assert (=> bm!41310 m!896125))

(assert (=> d!219656 m!895949))

(assert (=> d!219656 m!895949))

(assert (=> d!219656 m!895987))

(declare-fun m!896127 () Bool)

(assert (=> d!219656 m!896127))

(assert (=> d!219608 d!219656))

(declare-fun d!219658 () Bool)

(assert (=> d!219658 (= (efficientList$default$2!26 (c!115357 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371)))) Nil!6445)))

(assert (=> d!219608 d!219658))

(assert (=> b!627632 d!219574))

(assert (=> b!627632 d!219590))

(assert (=> bs!72331 d!219580))

(declare-fun d!219660 () Bool)

(declare-fun c!115402 () Bool)

(assert (=> d!219660 (= c!115402 (is-IdentValue!1346 (toValue!23 thiss!4294 x!130371)))))

(declare-fun e!380768 () BalanceConc!4170)

(assert (=> d!219660 (= (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130371)) e!380768)))

(declare-fun b!627791 () Bool)

(declare-fun seqFromList!1449 (List!6455) BalanceConc!4170)

(assert (=> b!627791 (= e!380768 (seqFromList!1449 (value!42521 (toValue!23 thiss!4294 x!130371))))))

(declare-fun b!627792 () Bool)

(assert (=> b!627792 (= e!380768 (BalanceConc!4171 Empty!2081))))

(assert (= (and d!219660 c!115402) b!627791))

(assert (= (and d!219660 (not c!115402)) b!627792))

(declare-fun m!896129 () Bool)

(assert (=> b!627791 m!896129))

(assert (=> bs!72331 d!219660))

(assert (=> bs!72331 d!219578))

(assert (=> bs!72331 d!219588))

(declare-fun d!219662 () Bool)

(declare-fun c!115403 () Bool)

(assert (=> d!219662 (= c!115403 (is-Node!2081 (c!115357 x!130371)))))

(declare-fun e!380769 () Bool)

(assert (=> d!219662 (= (inv!8266 (c!115357 x!130371)) e!380769)))

(declare-fun b!627793 () Bool)

(assert (=> b!627793 (= e!380769 (inv!8270 (c!115357 x!130371)))))

(declare-fun b!627794 () Bool)

(declare-fun e!380770 () Bool)

(assert (=> b!627794 (= e!380769 e!380770)))

(declare-fun res!272131 () Bool)

(assert (=> b!627794 (= res!272131 (not (is-Leaf!3251 (c!115357 x!130371))))))

(assert (=> b!627794 (=> res!272131 e!380770)))

(declare-fun b!627795 () Bool)

(assert (=> b!627795 (= e!380770 (inv!8271 (c!115357 x!130371)))))

(assert (= (and d!219662 c!115403) b!627793))

(assert (= (and d!219662 (not c!115403)) b!627794))

(assert (= (and b!627794 (not res!272131)) b!627795))

(declare-fun m!896131 () Bool)

(assert (=> b!627793 m!896131))

(declare-fun m!896133 () Bool)

(assert (=> b!627795 m!896133))

(assert (=> b!627631 d!219662))

(assert (=> d!219620 d!219588))

(declare-fun b!627796 () Bool)

(declare-fun e!380773 () List!6455)

(declare-fun call!41316 () List!6455)

(assert (=> b!627796 (= e!380773 call!41316)))

(declare-fun b!627797 () Bool)

(declare-fun e!380771 () List!6455)

(assert (=> b!627797 (= e!380771 (efficientList$default$2!26 (c!115357 x!130371)))))

(declare-fun b!627799 () Bool)

(declare-fun lt!266999 () Unit!11532)

(declare-fun lt!267000 () Unit!11532)

(assert (=> b!627799 (= lt!266999 lt!267000)))

(declare-fun lt!267002 () List!6455)

(declare-fun lt!266998 () List!6455)

(assert (=> b!627799 (= (++!1784 call!41316 (efficientList$default$2!26 (c!115357 x!130371))) (++!1784 lt!267002 (++!1784 lt!266998 (efficientList$default$2!26 (c!115357 x!130371)))))))

(assert (=> b!627799 (= lt!267000 (lemmaConcatAssociativity!633 lt!267002 lt!266998 (efficientList$default$2!26 (c!115357 x!130371))))))

(assert (=> b!627799 (= lt!266998 (list!2732 (right!5464 (c!115357 x!130371))))))

(assert (=> b!627799 (= lt!267002 (list!2732 (left!5134 (c!115357 x!130371))))))

(assert (=> b!627799 (= e!380773 (efficientList!78 (left!5134 (c!115357 x!130371)) (efficientList!78 (right!5464 (c!115357 x!130371)) (efficientList$default$2!26 (c!115357 x!130371)))))))

(declare-fun b!627800 () Bool)

(assert (=> b!627800 (= e!380771 e!380773)))

(declare-fun c!115406 () Bool)

(assert (=> b!627800 (= c!115406 (is-Leaf!3251 (c!115357 x!130371)))))

(declare-fun b!627801 () Bool)

(declare-fun e!380772 () List!6455)

(assert (=> b!627801 (= e!380772 (efficientList!80 (xs!4722 (c!115357 x!130371))))))

(declare-fun bm!41311 () Bool)

(declare-fun c!115405 () Bool)

(assert (=> bm!41311 (= c!115405 c!115406)))

(assert (=> bm!41311 (= call!41316 (++!1784 e!380772 (ite c!115406 (efficientList$default$2!26 (c!115357 x!130371)) lt!266998)))))

(declare-fun d!219664 () Bool)

(declare-fun lt!267001 () List!6455)

(assert (=> d!219664 (= lt!267001 (++!1784 (list!2732 (c!115357 x!130371)) (efficientList$default$2!26 (c!115357 x!130371))))))

(assert (=> d!219664 (= lt!267001 e!380771)))

(declare-fun c!115404 () Bool)

(assert (=> d!219664 (= c!115404 (is-Empty!2081 (c!115357 x!130371)))))

(assert (=> d!219664 (= (efficientList!78 (c!115357 x!130371) (efficientList$default$2!26 (c!115357 x!130371))) lt!267001)))

(declare-fun b!627798 () Bool)

(assert (=> b!627798 (= e!380772 lt!267002)))

(assert (= (and d!219664 c!115404) b!627797))

(assert (= (and d!219664 (not c!115404)) b!627800))

(assert (= (and b!627800 c!115406) b!627796))

(assert (= (and b!627800 (not c!115406)) b!627799))

(assert (= (or b!627796 b!627799) bm!41311))

(assert (= (and bm!41311 c!115405) b!627801))

(assert (= (and bm!41311 (not c!115405)) b!627798))

(assert (=> b!627799 m!896003))

(assert (=> b!627799 m!896023))

(declare-fun m!896135 () Bool)

(assert (=> b!627799 m!896135))

(assert (=> b!627799 m!896023))

(declare-fun m!896137 () Bool)

(assert (=> b!627799 m!896137))

(assert (=> b!627799 m!896137))

(declare-fun m!896139 () Bool)

(assert (=> b!627799 m!896139))

(assert (=> b!627799 m!896023))

(declare-fun m!896141 () Bool)

(assert (=> b!627799 m!896141))

(assert (=> b!627799 m!896135))

(declare-fun m!896143 () Bool)

(assert (=> b!627799 m!896143))

(assert (=> b!627799 m!896001))

(assert (=> b!627799 m!896023))

(declare-fun m!896145 () Bool)

(assert (=> b!627799 m!896145))

(declare-fun m!896147 () Bool)

(assert (=> b!627801 m!896147))

(declare-fun m!896149 () Bool)

(assert (=> bm!41311 m!896149))

(assert (=> d!219664 m!895955))

(assert (=> d!219664 m!895955))

(assert (=> d!219664 m!896023))

(declare-fun m!896151 () Bool)

(assert (=> d!219664 m!896151))

(assert (=> d!219620 d!219664))

(declare-fun d!219666 () Bool)

(assert (=> d!219666 (= (efficientList$default$2!26 (c!115357 x!130371)) Nil!6445)))

(assert (=> d!219620 d!219666))

(assert (=> d!219610 d!219584))

(declare-fun b!627802 () Bool)

(declare-fun e!380776 () List!6455)

(declare-fun call!41317 () List!6455)

(assert (=> b!627802 (= e!380776 call!41317)))

(declare-fun b!627803 () Bool)

(declare-fun e!380774 () List!6455)

(assert (=> b!627803 (= e!380774 (efficientList$default$2!26 (c!115357 x!130373)))))

(declare-fun b!627805 () Bool)

(declare-fun lt!267004 () Unit!11532)

(declare-fun lt!267005 () Unit!11532)

(assert (=> b!627805 (= lt!267004 lt!267005)))

(declare-fun lt!267007 () List!6455)

(declare-fun lt!267003 () List!6455)

(assert (=> b!627805 (= (++!1784 call!41317 (efficientList$default$2!26 (c!115357 x!130373))) (++!1784 lt!267007 (++!1784 lt!267003 (efficientList$default$2!26 (c!115357 x!130373)))))))

(assert (=> b!627805 (= lt!267005 (lemmaConcatAssociativity!633 lt!267007 lt!267003 (efficientList$default$2!26 (c!115357 x!130373))))))

(assert (=> b!627805 (= lt!267003 (list!2732 (right!5464 (c!115357 x!130373))))))

(assert (=> b!627805 (= lt!267007 (list!2732 (left!5134 (c!115357 x!130373))))))

(assert (=> b!627805 (= e!380776 (efficientList!78 (left!5134 (c!115357 x!130373)) (efficientList!78 (right!5464 (c!115357 x!130373)) (efficientList$default$2!26 (c!115357 x!130373)))))))

(declare-fun b!627806 () Bool)

(assert (=> b!627806 (= e!380774 e!380776)))

(declare-fun c!115409 () Bool)

(assert (=> b!627806 (= c!115409 (is-Leaf!3251 (c!115357 x!130373)))))

(declare-fun b!627807 () Bool)

(declare-fun e!380775 () List!6455)

(assert (=> b!627807 (= e!380775 (efficientList!80 (xs!4722 (c!115357 x!130373))))))

(declare-fun bm!41312 () Bool)

(declare-fun c!115408 () Bool)

(assert (=> bm!41312 (= c!115408 c!115409)))

(assert (=> bm!41312 (= call!41317 (++!1784 e!380775 (ite c!115409 (efficientList$default$2!26 (c!115357 x!130373)) lt!267003)))))

(declare-fun d!219668 () Bool)

(declare-fun lt!267006 () List!6455)

(assert (=> d!219668 (= lt!267006 (++!1784 (list!2732 (c!115357 x!130373)) (efficientList$default$2!26 (c!115357 x!130373))))))

(assert (=> d!219668 (= lt!267006 e!380774)))

(declare-fun c!115407 () Bool)

(assert (=> d!219668 (= c!115407 (is-Empty!2081 (c!115357 x!130373)))))

(assert (=> d!219668 (= (efficientList!78 (c!115357 x!130373) (efficientList$default$2!26 (c!115357 x!130373))) lt!267006)))

(declare-fun b!627804 () Bool)

(assert (=> b!627804 (= e!380775 lt!267007)))

(assert (= (and d!219668 c!115407) b!627803))

(assert (= (and d!219668 (not c!115407)) b!627806))

(assert (= (and b!627806 c!115409) b!627802))

(assert (= (and b!627806 (not c!115409)) b!627805))

(assert (= (or b!627802 b!627805) bm!41312))

(assert (= (and bm!41312 c!115408) b!627807))

(assert (= (and bm!41312 (not c!115408)) b!627804))

(assert (=> b!627805 m!895983))

(assert (=> b!627805 m!895991))

(declare-fun m!896153 () Bool)

(assert (=> b!627805 m!896153))

(assert (=> b!627805 m!895991))

(declare-fun m!896155 () Bool)

(assert (=> b!627805 m!896155))

(assert (=> b!627805 m!896155))

(declare-fun m!896157 () Bool)

(assert (=> b!627805 m!896157))

(assert (=> b!627805 m!895991))

(declare-fun m!896159 () Bool)

(assert (=> b!627805 m!896159))

(assert (=> b!627805 m!896153))

(declare-fun m!896161 () Bool)

(assert (=> b!627805 m!896161))

(assert (=> b!627805 m!895981))

(assert (=> b!627805 m!895991))

(declare-fun m!896163 () Bool)

(assert (=> b!627805 m!896163))

(declare-fun m!896165 () Bool)

(assert (=> b!627807 m!896165))

(declare-fun m!896167 () Bool)

(assert (=> bm!41312 m!896167))

(assert (=> d!219668 m!895951))

(assert (=> d!219668 m!895951))

(assert (=> d!219668 m!895991))

(declare-fun m!896169 () Bool)

(assert (=> d!219668 m!896169))

(assert (=> d!219610 d!219668))

(declare-fun d!219670 () Bool)

(assert (=> d!219670 (= (efficientList$default$2!26 (c!115357 x!130373)) Nil!6445)))

(assert (=> d!219610 d!219670))

(assert (=> start!60584 d!219660))

(assert (=> start!60584 d!219580))

(assert (=> start!60584 d!219578))

(assert (=> start!60584 d!219650))

(declare-fun d!219672 () Bool)

(assert (=> d!219672 (= (inv!8267 x!130371) (isBalanced!554 (c!115357 x!130371)))))

(declare-fun bs!72463 () Bool)

(assert (= bs!72463 d!219672))

(declare-fun m!896171 () Bool)

(assert (=> bs!72463 m!896171))

(assert (=> start!60584 d!219672))

(assert (=> start!60584 d!219588))

(declare-fun e!380781 () Bool)

(declare-fun tp!195961 () Bool)

(declare-fun b!627814 () Bool)

(declare-fun tp!195960 () Bool)

(assert (=> b!627814 (= e!380781 (and (inv!8266 (left!5134 (c!115357 x!130373))) tp!195960 (inv!8266 (right!5464 (c!115357 x!130373))) tp!195961))))

(declare-fun b!627815 () Bool)

(declare-fun inv!8272 (IArray!4163) Bool)

(assert (=> b!627815 (= e!380781 (inv!8272 (xs!4722 (c!115357 x!130373))))))

(assert (=> b!627634 (= tp!195945 (and (inv!8266 (c!115357 x!130373)) e!380781))))

(assert (= (and b!627634 (is-Node!2081 (c!115357 x!130373))) b!627814))

(assert (= (and b!627634 (is-Leaf!3251 (c!115357 x!130373))) b!627815))

(declare-fun m!896173 () Bool)

(assert (=> b!627814 m!896173))

(declare-fun m!896175 () Bool)

(assert (=> b!627814 m!896175))

(declare-fun m!896177 () Bool)

(assert (=> b!627815 m!896177))

(assert (=> b!627634 m!895901))

(declare-fun tp!195963 () Bool)

(declare-fun tp!195962 () Bool)

(declare-fun e!380783 () Bool)

(declare-fun b!627816 () Bool)

(assert (=> b!627816 (= e!380783 (and (inv!8266 (left!5134 (c!115357 x!130372))) tp!195962 (inv!8266 (right!5464 (c!115357 x!130372))) tp!195963))))

(declare-fun b!627817 () Bool)

(assert (=> b!627817 (= e!380783 (inv!8272 (xs!4722 (c!115357 x!130372))))))

(assert (=> b!627633 (= tp!195946 (and (inv!8266 (c!115357 x!130372)) e!380783))))

(assert (= (and b!627633 (is-Node!2081 (c!115357 x!130372))) b!627816))

(assert (= (and b!627633 (is-Leaf!3251 (c!115357 x!130372))) b!627817))

(declare-fun m!896179 () Bool)

(assert (=> b!627816 m!896179))

(declare-fun m!896181 () Bool)

(assert (=> b!627816 m!896181))

(declare-fun m!896183 () Bool)

(assert (=> b!627817 m!896183))

(assert (=> b!627633 m!895899))

(declare-fun tp!195965 () Bool)

(declare-fun b!627818 () Bool)

(declare-fun e!380785 () Bool)

(declare-fun tp!195964 () Bool)

(assert (=> b!627818 (= e!380785 (and (inv!8266 (left!5134 (c!115357 x!130371))) tp!195964 (inv!8266 (right!5464 (c!115357 x!130371))) tp!195965))))

(declare-fun b!627819 () Bool)

(assert (=> b!627819 (= e!380785 (inv!8272 (xs!4722 (c!115357 x!130371))))))

(assert (=> b!627631 (= tp!195944 (and (inv!8266 (c!115357 x!130371)) e!380785))))

(assert (= (and b!627631 (is-Node!2081 (c!115357 x!130371))) b!627818))

(assert (= (and b!627631 (is-Leaf!3251 (c!115357 x!130371))) b!627819))

(declare-fun m!896185 () Bool)

(assert (=> b!627818 m!896185))

(declare-fun m!896187 () Bool)

(assert (=> b!627818 m!896187))

(declare-fun m!896189 () Bool)

(assert (=> b!627819 m!896189))

(assert (=> b!627631 m!895875))

(push 1)

(assert (not b!627780))

(assert (not b!627713))

(assert (not d!219664))

(assert (not bm!41310))

(assert (not b!627799))

(assert (not b!627758))

(assert (not b!627816))

(assert (not d!219650))

(assert (not b!627814))

(assert (not b!627634))

(assert (not bm!41312))

(assert (not b!627753))

(assert (not b!627819))

(assert (not b!627755))

(assert (not d!219668))

(assert (not b!627717))

(assert (not b!627807))

(assert (not d!219646))

(assert (not d!219672))

(assert (not b!627817))

(assert (not b!627721))

(assert (not b!627633))

(assert (not b!627709))

(assert (not d!219656))

(assert (not b!627818))

(assert (not b!627791))

(assert (not d!219648))

(assert (not b!627801))

(assert (not b!627718))

(assert (not b!627778))

(assert (not d!219642))

(assert (not d!219652))

(assert (not b!627722))

(assert (not b!627714))

(assert (not b!627795))

(assert (not d!219644))

(assert (not b!627815))

(assert (not b!627793))

(assert (not bm!41309))

(assert (not b!627631))

(assert (not bm!41311))

(assert (not b!627710))

(assert (not b!627786))

(assert (not b!627805))

(assert (not b!627756))

(assert (not b!627784))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

