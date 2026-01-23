; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!273098 () Bool)

(assert start!273098)

(assert (=> start!273098 true))

(declare-fun b!2816506 () Bool)

(assert (=> b!2816506 true))

(assert (=> b!2816506 true))

(assert (=> b!2816506 true))

(declare-fun b!2816516 () Bool)

(declare-fun e!1781087 () Bool)

(declare-datatypes ((List!33055 0))(
  ( (Nil!32931) (Cons!32931 (h!38351 (_ BitVec 16)) (t!230102 List!33055)) )
))
(declare-datatypes ((IArray!20441 0))(
  ( (IArray!20442 (innerList!10278 List!33055)) )
))
(declare-datatypes ((Conc!10218 0))(
  ( (Node!10218 (left!24878 Conc!10218) (right!25208 Conc!10218) (csize!20666 Int) (cheight!10429 Int)) (Leaf!15567 (xs!13330 IArray!20441) (csize!20667 Int)) (Empty!10218) )
))
(declare-datatypes ((BalanceConc!20074 0))(
  ( (BalanceConc!20075 (c!456695 Conc!10218)) )
))
(declare-fun x!519487 () BalanceConc!20074)

(declare-fun tp!899066 () Bool)

(declare-fun inv!44833 (Conc!10218) Bool)

(assert (=> b!2816516 (= e!1781087 (and (inv!44833 (c!456695 x!519487)) tp!899066))))

(declare-datatypes ((StringLiteralValueInjection!122 0))(
  ( (StringLiteralValueInjection!123) )
))
(declare-fun thiss!3195 () StringLiteralValueInjection!122)

(declare-fun inst!1552 () Bool)

(declare-fun inv!44834 (BalanceConc!20074) Bool)

(declare-fun list!12369 (BalanceConc!20074) List!33055)

(declare-datatypes ((TokenValue!5145 0))(
  ( (FloatLiteralValue!10290 (text!36460 List!33055)) (TokenValueExt!5144 (__x!21966 Int)) (Broken!25725 (value!158377 List!33055)) (Object!5268) (End!5145) (Def!5145) (Underscore!5145) (Match!5145) (Else!5145) (Error!5145) (Case!5145) (If!5145) (Extends!5145) (Abstract!5145) (Class!5145) (Val!5145) (DelimiterValue!10290 (del!5205 List!33055)) (KeywordValue!5151 (value!158378 List!33055)) (CommentValue!10290 (value!158379 List!33055)) (WhitespaceValue!10290 (value!158380 List!33055)) (IndentationValue!5145 (value!158381 List!33055)) (String!36186) (Int32!5145) (Broken!25726 (value!158382 List!33055)) (Boolean!5146) (Unit!46919) (OperatorValue!5148 (op!5205 List!33055)) (IdentifierValue!10290 (value!158383 List!33055)) (IdentifierValue!10291 (value!158384 List!33055)) (WhitespaceValue!10291 (value!158385 List!33055)) (True!10290) (False!10290) (Broken!25727 (value!158386 List!33055)) (Broken!25728 (value!158387 List!33055)) (True!10291) (RightBrace!5145) (RightBracket!5145) (Colon!5145) (Null!5145) (Comma!5145) (LeftBracket!5145) (False!10291) (LeftBrace!5145) (ImaginaryLiteralValue!5145 (text!36461 List!33055)) (StringLiteralValue!15435 (value!158388 List!33055)) (EOFValue!5145 (value!158389 List!33055)) (IdentValue!5145 (value!158390 List!33055)) (DelimiterValue!10291 (value!158391 List!33055)) (DedentValue!5145 (value!158392 List!33055)) (NewLineValue!5145 (value!158393 List!33055)) (IntegerValue!15435 (value!158394 (_ BitVec 32)) (text!36462 List!33055)) (IntegerValue!15436 (value!158395 Int) (text!36463 List!33055)) (Times!5145) (Or!5145) (Equal!5145) (Minus!5145) (Broken!25729 (value!158396 List!33055)) (And!5145) (Div!5145) (LessEqual!5145) (Mod!5145) (Concat!13453) (Not!5145) (Plus!5145) (SpaceValue!5145 (value!158397 List!33055)) (IntegerValue!15437 (value!158398 Int) (text!36464 List!33055)) (StringLiteralValue!15436 (text!36465 List!33055)) (FloatLiteralValue!10291 (text!36466 List!33055)) (BytesLiteralValue!5145 (value!158399 List!33055)) (CommentValue!10291 (value!158400 List!33055)) (StringLiteralValue!15437 (value!158401 List!33055)) (ErrorTokenValue!5145 (msg!5206 List!33055)) )
))
(declare-fun toCharacters!3 (StringLiteralValueInjection!122 TokenValue!5145) BalanceConc!20074)

(declare-fun toValue!10 (StringLiteralValueInjection!122 BalanceConc!20074) TokenValue!5145)

(assert (=> start!273098 (= inst!1552 (=> (and (inv!44834 x!519487) e!1781087) (= (list!12369 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519487))) (list!12369 x!519487))))))

(assert (= start!273098 b!2816516))

(declare-fun m!3247593 () Bool)

(assert (=> b!2816516 m!3247593))

(declare-fun m!3247595 () Bool)

(assert (=> start!273098 m!3247595))

(declare-fun m!3247597 () Bool)

(assert (=> start!273098 m!3247597))

(declare-fun m!3247599 () Bool)

(assert (=> start!273098 m!3247599))

(declare-fun m!3247601 () Bool)

(assert (=> start!273098 m!3247601))

(assert (=> start!273098 m!3247599))

(declare-fun m!3247603 () Bool)

(assert (=> start!273098 m!3247603))

(assert (=> start!273098 m!3247597))

(declare-fun res!1172086 () Bool)

(declare-fun e!1781088 () Bool)

(assert (=> b!2816506 (=> res!1172086 e!1781088)))

(declare-fun x!519488 () BalanceConc!20074)

(declare-fun x!519489 () BalanceConc!20074)

(assert (=> b!2816506 (= res!1172086 (not (= (list!12369 x!519488) (list!12369 x!519489))))))

(declare-fun e!1781090 () Bool)

(declare-fun inst!1553 () Bool)

(declare-fun e!1781089 () Bool)

(assert (=> b!2816506 (= inst!1553 (=> (and (inv!44834 x!519488) e!1781089 (inv!44834 x!519489) e!1781090) e!1781088))))

(declare-fun b!2816517 () Bool)

(assert (=> b!2816517 (= e!1781088 (= (toValue!10 thiss!3195 x!519488) (toValue!10 thiss!3195 x!519489)))))

(declare-fun b!2816518 () Bool)

(declare-fun tp!899067 () Bool)

(assert (=> b!2816518 (= e!1781089 (and (inv!44833 (c!456695 x!519488)) tp!899067))))

(declare-fun b!2816519 () Bool)

(declare-fun tp!899068 () Bool)

(assert (=> b!2816519 (= e!1781090 (and (inv!44833 (c!456695 x!519489)) tp!899068))))

(assert (= (and b!2816506 (not res!1172086)) b!2816517))

(assert (= b!2816506 b!2816518))

(assert (= b!2816506 b!2816519))

(declare-fun m!3247605 () Bool)

(assert (=> b!2816506 m!3247605))

(declare-fun m!3247607 () Bool)

(assert (=> b!2816506 m!3247607))

(declare-fun m!3247609 () Bool)

(assert (=> b!2816506 m!3247609))

(declare-fun m!3247611 () Bool)

(assert (=> b!2816506 m!3247611))

(declare-fun m!3247613 () Bool)

(assert (=> b!2816517 m!3247613))

(declare-fun m!3247615 () Bool)

(assert (=> b!2816517 m!3247615))

(declare-fun m!3247617 () Bool)

(assert (=> b!2816518 m!3247617))

(declare-fun m!3247619 () Bool)

(assert (=> b!2816519 m!3247619))

(declare-fun bs!516934 () Bool)

(declare-fun neg-inst!1552 () Bool)

(declare-fun s!229949 () Bool)

(assert (= bs!516934 (and neg-inst!1552 s!229949)))

(assert (=> bs!516934 (=> true (= (list!12369 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519487))) (list!12369 x!519487)))))

(assert (=> m!3247597 m!3247599))

(assert (=> m!3247597 m!3247603))

(assert (=> m!3247597 m!3247601))

(assert (=> m!3247597 s!229949))

(assert (=> m!3247601 s!229949))

(declare-fun bs!516935 () Bool)

(assert (= bs!516935 (and neg-inst!1552 start!273098)))

(assert (=> bs!516935 (= true inst!1552)))

(declare-fun bs!516936 () Bool)

(declare-fun neg-inst!1553 () Bool)

(declare-fun s!229951 () Bool)

(assert (= bs!516936 (and neg-inst!1553 s!229951)))

(declare-fun res!1172087 () Bool)

(declare-fun e!1781091 () Bool)

(assert (=> bs!516936 (=> res!1172087 e!1781091)))

(assert (=> bs!516936 (= res!1172087 (not (= (list!12369 x!519488) (list!12369 x!519488))))))

(assert (=> bs!516936 (=> true e!1781091)))

(declare-fun b!2816520 () Bool)

(assert (=> b!2816520 (= e!1781091 (= (toValue!10 thiss!3195 x!519488) (toValue!10 thiss!3195 x!519488)))))

(assert (= (and bs!516936 (not res!1172087)) b!2816520))

(assert (=> m!3247613 m!3247605))

(assert (=> m!3247613 m!3247605))

(assert (=> m!3247613 s!229951))

(assert (=> m!3247613 s!229951))

(declare-fun bs!516937 () Bool)

(declare-fun s!229953 () Bool)

(assert (= bs!516937 (and neg-inst!1553 s!229953)))

(declare-fun res!1172088 () Bool)

(declare-fun e!1781092 () Bool)

(assert (=> bs!516937 (=> res!1172088 e!1781092)))

(assert (=> bs!516937 (= res!1172088 (not (= (list!12369 x!519488) (list!12369 x!519489))))))

(assert (=> bs!516937 (=> true e!1781092)))

(declare-fun b!2816521 () Bool)

(assert (=> b!2816521 (= e!1781092 (= (toValue!10 thiss!3195 x!519488) (toValue!10 thiss!3195 x!519489)))))

(assert (= (and bs!516937 (not res!1172088)) b!2816521))

(declare-fun bs!516938 () Bool)

(assert (= bs!516938 (and m!3247607 m!3247613)))

(assert (=> bs!516938 m!3247605))

(assert (=> bs!516938 m!3247607))

(assert (=> bs!516938 s!229953))

(declare-fun bs!516939 () Bool)

(declare-fun s!229955 () Bool)

(assert (= bs!516939 (and neg-inst!1553 s!229955)))

(declare-fun res!1172089 () Bool)

(declare-fun e!1781093 () Bool)

(assert (=> bs!516939 (=> res!1172089 e!1781093)))

(assert (=> bs!516939 (= res!1172089 (not (= (list!12369 x!519489) (list!12369 x!519489))))))

(assert (=> bs!516939 (=> true e!1781093)))

(declare-fun b!2816522 () Bool)

(assert (=> b!2816522 (= e!1781093 (= (toValue!10 thiss!3195 x!519489) (toValue!10 thiss!3195 x!519489)))))

(assert (= (and bs!516939 (not res!1172089)) b!2816522))

(assert (=> m!3247607 s!229955))

(declare-fun bs!516940 () Bool)

(declare-fun s!229957 () Bool)

(assert (= bs!516940 (and neg-inst!1553 s!229957)))

(declare-fun res!1172090 () Bool)

(declare-fun e!1781094 () Bool)

(assert (=> bs!516940 (=> res!1172090 e!1781094)))

(assert (=> bs!516940 (= res!1172090 (not (= (list!12369 x!519489) (list!12369 x!519488))))))

(assert (=> bs!516940 (=> true e!1781094)))

(declare-fun b!2816523 () Bool)

(assert (=> b!2816523 (= e!1781094 (= (toValue!10 thiss!3195 x!519489) (toValue!10 thiss!3195 x!519488)))))

(assert (= (and bs!516940 (not res!1172090)) b!2816523))

(assert (=> bs!516938 m!3247607))

(assert (=> bs!516938 m!3247605))

(assert (=> bs!516938 s!229957))

(assert (=> m!3247607 s!229955))

(declare-fun bs!516941 () Bool)

(assert (= bs!516941 (and m!3247605 m!3247613)))

(assert (=> bs!516941 s!229951))

(declare-fun bs!516942 () Bool)

(assert (= bs!516942 (and m!3247605 m!3247607)))

(assert (=> bs!516942 s!229957))

(assert (=> m!3247605 s!229951))

(assert (=> bs!516941 s!229951))

(assert (=> bs!516942 s!229953))

(assert (=> m!3247605 s!229951))

(declare-fun bs!516943 () Bool)

(declare-fun s!229959 () Bool)

(assert (= bs!516943 (and neg-inst!1553 s!229959)))

(declare-fun res!1172091 () Bool)

(declare-fun e!1781095 () Bool)

(assert (=> bs!516943 (=> res!1172091 e!1781095)))

(assert (=> bs!516943 (= res!1172091 (not (= (list!12369 x!519488) (list!12369 x!519487))))))

(assert (=> bs!516943 (=> true e!1781095)))

(declare-fun b!2816524 () Bool)

(assert (=> b!2816524 (= e!1781095 (= (toValue!10 thiss!3195 x!519488) (toValue!10 thiss!3195 x!519487)))))

(assert (= (and bs!516943 (not res!1172091)) b!2816524))

(declare-fun bs!516944 () Bool)

(assert (= bs!516944 (and m!3247597 m!3247613 m!3247605)))

(assert (=> bs!516944 m!3247605))

(assert (=> bs!516944 m!3247601))

(assert (=> bs!516944 s!229959))

(declare-fun bs!516945 () Bool)

(declare-fun s!229961 () Bool)

(assert (= bs!516945 (and neg-inst!1553 s!229961)))

(declare-fun res!1172092 () Bool)

(declare-fun e!1781096 () Bool)

(assert (=> bs!516945 (=> res!1172092 e!1781096)))

(assert (=> bs!516945 (= res!1172092 (not (= (list!12369 x!519489) (list!12369 x!519487))))))

(assert (=> bs!516945 (=> true e!1781096)))

(declare-fun b!2816525 () Bool)

(assert (=> b!2816525 (= e!1781096 (= (toValue!10 thiss!3195 x!519489) (toValue!10 thiss!3195 x!519487)))))

(assert (= (and bs!516945 (not res!1172092)) b!2816525))

(declare-fun bs!516946 () Bool)

(assert (= bs!516946 (and m!3247597 m!3247607)))

(assert (=> bs!516946 m!3247607))

(assert (=> bs!516946 m!3247601))

(assert (=> bs!516946 s!229961))

(declare-fun bs!516947 () Bool)

(declare-fun s!229963 () Bool)

(assert (= bs!516947 (and neg-inst!1553 s!229963)))

(declare-fun res!1172093 () Bool)

(declare-fun e!1781097 () Bool)

(assert (=> bs!516947 (=> res!1172093 e!1781097)))

(assert (=> bs!516947 (= res!1172093 (not (= (list!12369 x!519487) (list!12369 x!519487))))))

(assert (=> bs!516947 (=> true e!1781097)))

(declare-fun b!2816526 () Bool)

(assert (=> b!2816526 (= e!1781097 (= (toValue!10 thiss!3195 x!519487) (toValue!10 thiss!3195 x!519487)))))

(assert (= (and bs!516947 (not res!1172093)) b!2816526))

(assert (=> m!3247597 m!3247601))

(assert (=> m!3247597 m!3247601))

(assert (=> m!3247597 s!229963))

(declare-fun bs!516948 () Bool)

(declare-fun s!229965 () Bool)

(assert (= bs!516948 (and neg-inst!1553 s!229965)))

(declare-fun res!1172094 () Bool)

(declare-fun e!1781098 () Bool)

(assert (=> bs!516948 (=> res!1172094 e!1781098)))

(assert (=> bs!516948 (= res!1172094 (not (= (list!12369 x!519487) (list!12369 x!519488))))))

(assert (=> bs!516948 (=> true e!1781098)))

(declare-fun b!2816527 () Bool)

(assert (=> b!2816527 (= e!1781098 (= (toValue!10 thiss!3195 x!519487) (toValue!10 thiss!3195 x!519488)))))

(assert (= (and bs!516948 (not res!1172094)) b!2816527))

(assert (=> bs!516944 m!3247601))

(assert (=> bs!516944 m!3247605))

(assert (=> bs!516944 s!229965))

(declare-fun bs!516949 () Bool)

(declare-fun s!229967 () Bool)

(assert (= bs!516949 (and neg-inst!1553 s!229967)))

(declare-fun res!1172095 () Bool)

(declare-fun e!1781099 () Bool)

(assert (=> bs!516949 (=> res!1172095 e!1781099)))

(assert (=> bs!516949 (= res!1172095 (not (= (list!12369 x!519487) (list!12369 x!519489))))))

(assert (=> bs!516949 (=> true e!1781099)))

(declare-fun b!2816528 () Bool)

(assert (=> b!2816528 (= e!1781099 (= (toValue!10 thiss!3195 x!519487) (toValue!10 thiss!3195 x!519489)))))

(assert (= (and bs!516949 (not res!1172095)) b!2816528))

(assert (=> bs!516946 m!3247601))

(assert (=> bs!516946 m!3247607))

(assert (=> bs!516946 s!229967))

(assert (=> m!3247597 s!229963))

(declare-fun bs!516950 () Bool)

(assert (= bs!516950 (and m!3247615 m!3247613 m!3247605)))

(assert (=> bs!516950 s!229953))

(declare-fun bs!516951 () Bool)

(assert (= bs!516951 (and m!3247615 m!3247597)))

(assert (=> bs!516951 s!229967))

(declare-fun bs!516952 () Bool)

(assert (= bs!516952 (and m!3247615 m!3247607)))

(assert (=> bs!516952 s!229955))

(assert (=> m!3247615 s!229955))

(assert (=> bs!516950 s!229957))

(assert (=> bs!516951 s!229961))

(assert (=> bs!516952 s!229955))

(assert (=> m!3247615 s!229955))

(declare-fun bs!516953 () Bool)

(declare-fun s!229969 () Bool)

(assert (= bs!516953 (and neg-inst!1553 s!229969)))

(declare-fun res!1172096 () Bool)

(declare-fun e!1781100 () Bool)

(assert (=> bs!516953 (=> res!1172096 e!1781100)))

(assert (=> bs!516953 (= res!1172096 (not (= (list!12369 x!519488) (list!12369 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519487))))))))

(assert (=> bs!516953 (=> true e!1781100)))

(declare-fun b!2816529 () Bool)

(assert (=> b!2816529 (= e!1781100 (= (toValue!10 thiss!3195 x!519488) (toValue!10 thiss!3195 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519487)))))))

(assert (= (and bs!516953 (not res!1172096)) b!2816529))

(declare-fun bs!516954 () Bool)

(assert (= bs!516954 (and m!3247603 m!3247613 m!3247605)))

(assert (=> bs!516954 m!3247605))

(assert (=> bs!516954 m!3247603))

(assert (=> bs!516954 s!229969))

(declare-fun bs!516955 () Bool)

(declare-fun s!229971 () Bool)

(assert (= bs!516955 (and neg-inst!1553 s!229971)))

(declare-fun res!1172097 () Bool)

(declare-fun e!1781101 () Bool)

(assert (=> bs!516955 (=> res!1172097 e!1781101)))

(assert (=> bs!516955 (= res!1172097 (not (= (list!12369 x!519487) (list!12369 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519487))))))))

(assert (=> bs!516955 (=> true e!1781101)))

(declare-fun b!2816530 () Bool)

(assert (=> b!2816530 (= e!1781101 (= (toValue!10 thiss!3195 x!519487) (toValue!10 thiss!3195 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519487)))))))

(assert (= (and bs!516955 (not res!1172097)) b!2816530))

(declare-fun bs!516956 () Bool)

(assert (= bs!516956 (and m!3247603 m!3247597)))

(assert (=> bs!516956 m!3247601))

(assert (=> bs!516956 m!3247603))

(assert (=> bs!516956 s!229971))

(declare-fun bs!516957 () Bool)

(declare-fun s!229973 () Bool)

(assert (= bs!516957 (and neg-inst!1553 s!229973)))

(declare-fun res!1172098 () Bool)

(declare-fun e!1781102 () Bool)

(assert (=> bs!516957 (=> res!1172098 e!1781102)))

(assert (=> bs!516957 (= res!1172098 (not (= (list!12369 x!519489) (list!12369 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519487))))))))

(assert (=> bs!516957 (=> true e!1781102)))

(declare-fun b!2816531 () Bool)

(assert (=> b!2816531 (= e!1781102 (= (toValue!10 thiss!3195 x!519489) (toValue!10 thiss!3195 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519487)))))))

(assert (= (and bs!516957 (not res!1172098)) b!2816531))

(declare-fun bs!516958 () Bool)

(assert (= bs!516958 (and m!3247603 m!3247607 m!3247615)))

(assert (=> bs!516958 m!3247607))

(assert (=> bs!516958 m!3247603))

(assert (=> bs!516958 s!229973))

(declare-fun bs!516959 () Bool)

(declare-fun s!229975 () Bool)

(assert (= bs!516959 (and neg-inst!1553 s!229975)))

(declare-fun res!1172099 () Bool)

(declare-fun e!1781103 () Bool)

(assert (=> bs!516959 (=> res!1172099 e!1781103)))

(assert (=> bs!516959 (= res!1172099 (not (= (list!12369 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519487))) (list!12369 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519487))))))))

(assert (=> bs!516959 (=> true e!1781103)))

(declare-fun b!2816532 () Bool)

(assert (=> b!2816532 (= e!1781103 (= (toValue!10 thiss!3195 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519487))) (toValue!10 thiss!3195 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519487)))))))

(assert (= (and bs!516959 (not res!1172099)) b!2816532))

(assert (=> m!3247603 s!229975))

(declare-fun bs!516960 () Bool)

(declare-fun s!229977 () Bool)

(assert (= bs!516960 (and neg-inst!1553 s!229977)))

(declare-fun res!1172100 () Bool)

(declare-fun e!1781104 () Bool)

(assert (=> bs!516960 (=> res!1172100 e!1781104)))

(assert (=> bs!516960 (= res!1172100 (not (= (list!12369 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519487))) (list!12369 x!519488))))))

(assert (=> bs!516960 (=> true e!1781104)))

(declare-fun b!2816533 () Bool)

(assert (=> b!2816533 (= e!1781104 (= (toValue!10 thiss!3195 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519487))) (toValue!10 thiss!3195 x!519488)))))

(assert (= (and bs!516960 (not res!1172100)) b!2816533))

(assert (=> bs!516954 m!3247603))

(assert (=> bs!516954 m!3247605))

(assert (=> bs!516954 s!229977))

(declare-fun bs!516961 () Bool)

(declare-fun s!229979 () Bool)

(assert (= bs!516961 (and neg-inst!1553 s!229979)))

(declare-fun res!1172101 () Bool)

(declare-fun e!1781105 () Bool)

(assert (=> bs!516961 (=> res!1172101 e!1781105)))

(assert (=> bs!516961 (= res!1172101 (not (= (list!12369 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519487))) (list!12369 x!519487))))))

(assert (=> bs!516961 (=> true e!1781105)))

(declare-fun b!2816534 () Bool)

(assert (=> b!2816534 (= e!1781105 (= (toValue!10 thiss!3195 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519487))) (toValue!10 thiss!3195 x!519487)))))

(assert (= (and bs!516961 (not res!1172101)) b!2816534))

(assert (=> bs!516956 m!3247603))

(assert (=> bs!516956 m!3247601))

(assert (=> bs!516956 s!229979))

(declare-fun bs!516962 () Bool)

(declare-fun s!229981 () Bool)

(assert (= bs!516962 (and neg-inst!1553 s!229981)))

(declare-fun res!1172102 () Bool)

(declare-fun e!1781106 () Bool)

(assert (=> bs!516962 (=> res!1172102 e!1781106)))

(assert (=> bs!516962 (= res!1172102 (not (= (list!12369 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519487))) (list!12369 x!519489))))))

(assert (=> bs!516962 (=> true e!1781106)))

(declare-fun b!2816535 () Bool)

(assert (=> b!2816535 (= e!1781106 (= (toValue!10 thiss!3195 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519487))) (toValue!10 thiss!3195 x!519489)))))

(assert (= (and bs!516962 (not res!1172102)) b!2816535))

(assert (=> bs!516958 m!3247603))

(assert (=> bs!516958 m!3247607))

(assert (=> bs!516958 s!229981))

(assert (=> m!3247603 s!229975))

(declare-fun bs!516963 () Bool)

(assert (= bs!516963 (and m!3247601 m!3247603)))

(assert (=> bs!516963 s!229979))

(declare-fun bs!516964 () Bool)

(assert (= bs!516964 (and m!3247601 m!3247613 m!3247605)))

(assert (=> bs!516964 s!229959))

(declare-fun bs!516965 () Bool)

(assert (= bs!516965 (and m!3247601 m!3247597)))

(assert (=> bs!516965 s!229963))

(declare-fun bs!516966 () Bool)

(assert (= bs!516966 (and m!3247601 m!3247607 m!3247615)))

(assert (=> bs!516966 s!229961))

(assert (=> m!3247601 s!229963))

(assert (=> bs!516963 s!229971))

(assert (=> bs!516965 s!229963))

(assert (=> bs!516964 s!229965))

(assert (=> bs!516966 s!229967))

(assert (=> m!3247601 s!229963))

(declare-fun bs!516967 () Bool)

(assert (= bs!516967 (and neg-inst!1553 b!2816506)))

(assert (=> bs!516967 (= true inst!1553)))

(declare-fun res!1172085 () Bool)

(declare-fun e!1781085 () Bool)

(assert (=> start!273098 (=> res!1172085 e!1781085)))

(declare-fun lambda!103350 () Int)

(declare-fun Forall!1228 (Int) Bool)

(assert (=> start!273098 (= res!1172085 (not (Forall!1228 lambda!103350)))))

(assert (=> start!273098 (= (Forall!1228 lambda!103350) inst!1552)))

(assert (=> start!273098 (not e!1781085)))

(assert (=> start!273098 true))

(declare-fun e!1781086 () Bool)

(assert (=> b!2816506 (= e!1781085 e!1781086)))

(declare-fun res!1172084 () Bool)

(assert (=> b!2816506 (=> res!1172084 e!1781086)))

(declare-fun lambda!103353 () Int)

(declare-fun Forall2!825 (Int) Bool)

(assert (=> b!2816506 (= res!1172084 (not (Forall2!825 lambda!103353)))))

(assert (=> b!2816506 (= (Forall2!825 lambda!103353) inst!1553)))

(declare-fun lambda!103351 () Int)

(declare-fun lambda!103352 () Int)

(declare-fun semiInverseModEq!2040 (Int Int) Bool)

(assert (=> b!2816506 (= (semiInverseModEq!2040 lambda!103351 lambda!103352) (Forall!1228 lambda!103350))))

(declare-fun b!2816507 () Bool)

(declare-datatypes ((TokenValueInjection!9722 0))(
  ( (TokenValueInjection!9723 (toValue!6923 Int) (toChars!6782 Int)) )
))
(declare-fun inv!44835 (TokenValueInjection!9722) Bool)

(assert (=> b!2816507 (= e!1781086 (inv!44835 (TokenValueInjection!9723 lambda!103352 lambda!103351)))))

(declare-fun equivClasses!1939 (Int Int) Bool)

(assert (=> b!2816507 (= (equivClasses!1939 lambda!103351 lambda!103352) (Forall2!825 lambda!103353))))

(assert (= neg-inst!1552 inst!1552))

(assert (= (and start!273098 (not res!1172085)) b!2816506))

(assert (= neg-inst!1553 inst!1553))

(assert (= (and b!2816506 (not res!1172084)) b!2816507))

(declare-fun m!3247621 () Bool)

(assert (=> start!273098 m!3247621))

(assert (=> start!273098 m!3247621))

(declare-fun m!3247623 () Bool)

(assert (=> b!2816506 m!3247623))

(assert (=> b!2816506 m!3247623))

(declare-fun m!3247625 () Bool)

(assert (=> b!2816506 m!3247625))

(assert (=> b!2816506 m!3247621))

(declare-fun m!3247627 () Bool)

(assert (=> b!2816507 m!3247627))

(declare-fun m!3247629 () Bool)

(assert (=> b!2816507 m!3247629))

(assert (=> b!2816507 m!3247623))

(check-sat (not bs!516939) (not bs!516947) (not b!2816517) (not b!2816532) (not start!273098) (not bs!516937) (not b!2816534) (not b!2816516) (not b!2816519) (not bs!516955) (not b!2816531) (not b!2816521) (not bs!516962) (not bs!516948) (not bs!516934) (not bs!516953) (not bs!516936) (not bs!516960) (not b!2816518) (not b!2816507) (not b!2816525) (not b!2816522) (not b!2816533) (not b!2816530) (not b!2816520) (not bs!516945) (not b!2816528) (not b!2816506) (not b!2816524) (not bs!516949) (not b!2816523) (not bs!516959) (not b!2816529) (not bs!516940) (not b!2816526) (not b!2816527) (not bs!516943) (not bs!516961) (not b!2816535) (not bs!516957))
(check-sat)
(get-model)

(declare-fun bs!516984 () Bool)

(assert (= bs!516984 (and m!3247613 b!2816520)))

(assert (=> bs!516984 m!3247613))

(assert (=> bs!516984 m!3247613))

(declare-fun bs!516985 () Bool)

(assert (= bs!516985 (and m!3247607 m!3247613 b!2816521)))

(assert (=> bs!516985 m!3247613))

(assert (=> bs!516985 m!3247615))

(declare-fun bs!516986 () Bool)

(assert (= bs!516986 (and m!3247607 b!2816522)))

(assert (=> bs!516986 m!3247615))

(assert (=> bs!516986 m!3247615))

(declare-fun bs!516987 () Bool)

(assert (= bs!516987 (and m!3247607 m!3247613 b!2816523)))

(assert (=> bs!516987 m!3247615))

(assert (=> bs!516987 m!3247613))

(declare-fun bs!516988 () Bool)

(assert (= bs!516988 (and m!3247597 m!3247613 m!3247605 b!2816524)))

(assert (=> bs!516988 m!3247613))

(assert (=> bs!516988 m!3247597))

(declare-fun bs!516989 () Bool)

(assert (= bs!516989 (and m!3247597 m!3247607 b!2816525)))

(assert (=> bs!516989 m!3247615))

(assert (=> bs!516989 m!3247597))

(declare-fun bs!516990 () Bool)

(assert (= bs!516990 (and m!3247597 b!2816526)))

(assert (=> bs!516990 m!3247597))

(assert (=> bs!516990 m!3247597))

(declare-fun bs!516991 () Bool)

(assert (= bs!516991 (and m!3247597 m!3247613 m!3247605 b!2816527)))

(assert (=> bs!516991 m!3247597))

(assert (=> bs!516991 m!3247613))

(declare-fun bs!516992 () Bool)

(assert (= bs!516992 (and m!3247597 m!3247607 b!2816528)))

(assert (=> bs!516992 m!3247597))

(assert (=> bs!516992 m!3247615))

(declare-fun bs!516993 () Bool)

(assert (= bs!516993 (and m!3247603 m!3247613 m!3247605 b!2816529)))

(assert (=> bs!516993 m!3247613))

(declare-fun m!3247633 () Bool)

(assert (=> bs!516993 m!3247633))

(declare-fun bs!516994 () Bool)

(assert (= bs!516994 (and m!3247603 m!3247597 b!2816530)))

(assert (=> bs!516994 m!3247597))

(assert (=> bs!516994 m!3247633))

(declare-fun bs!516995 () Bool)

(assert (= bs!516995 (and m!3247603 m!3247607 m!3247615 b!2816531)))

(assert (=> bs!516995 m!3247615))

(assert (=> bs!516995 m!3247633))

(declare-fun bs!516996 () Bool)

(assert (= bs!516996 (and m!3247603 b!2816532)))

(assert (=> bs!516996 m!3247633))

(assert (=> bs!516996 m!3247633))

(declare-fun bs!516997 () Bool)

(assert (= bs!516997 (and m!3247603 m!3247613 m!3247605 b!2816533)))

(assert (=> bs!516997 m!3247633))

(assert (=> bs!516997 m!3247613))

(declare-fun bs!516998 () Bool)

(assert (= bs!516998 (and m!3247603 m!3247597 b!2816534)))

(assert (=> bs!516998 m!3247633))

(assert (=> bs!516998 m!3247597))

(declare-fun bs!516999 () Bool)

(assert (= bs!516999 (and m!3247603 m!3247607 m!3247615 b!2816535)))

(assert (=> bs!516999 m!3247633))

(assert (=> bs!516999 m!3247615))

(check-sat (not bs!516939) (not bs!516947) (not b!2816517) (not b!2816532) (not start!273098) (not bs!516937) (not b!2816534) (not b!2816516) (not b!2816519) (not bs!516955) (not b!2816531) (not b!2816521) (not bs!516962) (not bs!516948) (not bs!516934) (not bs!516953) (not bs!516936) (not bs!516960) (not b!2816518) (not b!2816507) (not b!2816525) (not b!2816522) (not b!2816533) (not b!2816530) (not b!2816520) (not bs!516945) (not b!2816528) (not b!2816506) (not b!2816524) (not bs!516949) (not b!2816523) (not bs!516959) (not b!2816529) (not bs!516940) (not b!2816526) (not b!2816527) (not bs!516943) (not bs!516961) (not b!2816535) (not bs!516957))
(check-sat)
(get-model)

(declare-fun d!818093 () Bool)

(declare-fun efficientList!414 (BalanceConc!20074) List!33055)

(assert (=> d!818093 (= (toValue!10 thiss!3195 x!519487) (StringLiteralValue!15436 (efficientList!414 x!519487)))))

(declare-fun bs!517015 () Bool)

(assert (= bs!517015 d!818093))

(declare-fun m!3247677 () Bool)

(assert (=> bs!517015 m!3247677))

(assert (=> b!2816526 d!818093))

(declare-fun d!818101 () Bool)

(declare-fun res!1172121 () Bool)

(declare-fun e!1781125 () Bool)

(assert (=> d!818101 (=> (not res!1172121) (not e!1781125))))

(assert (=> d!818101 (= res!1172121 (semiInverseModEq!2040 (toChars!6782 (TokenValueInjection!9723 lambda!103352 lambda!103351)) (toValue!6923 (TokenValueInjection!9723 lambda!103352 lambda!103351))))))

(assert (=> d!818101 (= (inv!44835 (TokenValueInjection!9723 lambda!103352 lambda!103351)) e!1781125)))

(declare-fun b!2816566 () Bool)

(assert (=> b!2816566 (= e!1781125 (equivClasses!1939 (toChars!6782 (TokenValueInjection!9723 lambda!103352 lambda!103351)) (toValue!6923 (TokenValueInjection!9723 lambda!103352 lambda!103351))))))

(assert (= (and d!818101 res!1172121) b!2816566))

(declare-fun m!3247683 () Bool)

(assert (=> d!818101 m!3247683))

(declare-fun m!3247685 () Bool)

(assert (=> b!2816566 m!3247685))

(assert (=> b!2816507 d!818101))

(declare-fun bs!517018 () Bool)

(declare-fun d!818105 () Bool)

(assert (= bs!517018 (and d!818105 b!2816506)))

(declare-fun lambda!103362 () Int)

(assert (=> bs!517018 (not (= lambda!103362 lambda!103353))))

(assert (=> d!818105 true))

(declare-fun order!17427 () Int)

(declare-fun order!17425 () Int)

(declare-fun dynLambda!13746 (Int Int) Int)

(declare-fun dynLambda!13747 (Int Int) Int)

(assert (=> d!818105 (< (dynLambda!13746 order!17425 lambda!103352) (dynLambda!13747 order!17427 lambda!103362))))

(assert (=> d!818105 (= (equivClasses!1939 lambda!103351 lambda!103352) (Forall2!825 lambda!103362))))

(declare-fun bs!517019 () Bool)

(assert (= bs!517019 d!818105))

(declare-fun m!3247701 () Bool)

(assert (=> bs!517019 m!3247701))

(assert (=> b!2816507 d!818105))

(declare-fun d!818107 () Bool)

(declare-fun choose!16662 (Int) Bool)

(assert (=> d!818107 (= (Forall2!825 lambda!103353) (choose!16662 lambda!103353))))

(declare-fun bs!517020 () Bool)

(assert (= bs!517020 d!818107))

(declare-fun m!3247709 () Bool)

(assert (=> bs!517020 m!3247709))

(assert (=> b!2816507 d!818107))

(declare-fun d!818109 () Bool)

(assert (=> d!818109 (= (toValue!10 thiss!3195 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519487))) (StringLiteralValue!15436 (efficientList!414 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519487)))))))

(declare-fun bs!517021 () Bool)

(assert (= bs!517021 d!818109))

(assert (=> bs!517021 m!3247599))

(declare-fun m!3247711 () Bool)

(assert (=> bs!517021 m!3247711))

(assert (=> b!2816532 d!818109))

(declare-fun d!818111 () Bool)

(assert (=> d!818111 (= (toValue!10 thiss!3195 x!519489) (StringLiteralValue!15436 (efficientList!414 x!519489)))))

(declare-fun bs!517022 () Bool)

(assert (= bs!517022 d!818111))

(declare-fun m!3247713 () Bool)

(assert (=> bs!517022 m!3247713))

(assert (=> b!2816523 d!818111))

(declare-fun d!818113 () Bool)

(assert (=> d!818113 (= (toValue!10 thiss!3195 x!519488) (StringLiteralValue!15436 (efficientList!414 x!519488)))))

(declare-fun bs!517023 () Bool)

(assert (= bs!517023 d!818113))

(declare-fun m!3247715 () Bool)

(assert (=> bs!517023 m!3247715))

(assert (=> b!2816523 d!818113))

(assert (=> b!2816529 d!818113))

(assert (=> b!2816529 d!818109))

(declare-fun bs!517024 () Bool)

(declare-fun d!818115 () Bool)

(assert (= bs!517024 (and d!818115 start!273098)))

(declare-fun lambda!103365 () Int)

(assert (=> bs!517024 (not (= lambda!103365 lambda!103350))))

(assert (=> d!818115 true))

(declare-fun order!17429 () Int)

(declare-fun order!17431 () Int)

(declare-fun dynLambda!13748 (Int Int) Int)

(declare-fun dynLambda!13749 (Int Int) Int)

(assert (=> d!818115 (< (dynLambda!13748 order!17429 lambda!103351) (dynLambda!13749 order!17431 lambda!103365))))

(assert (=> d!818115 true))

(assert (=> d!818115 (< (dynLambda!13746 order!17425 lambda!103352) (dynLambda!13749 order!17431 lambda!103365))))

(assert (=> d!818115 (= (semiInverseModEq!2040 lambda!103351 lambda!103352) (Forall!1228 lambda!103365))))

(declare-fun bs!517025 () Bool)

(assert (= bs!517025 d!818115))

(declare-fun m!3247717 () Bool)

(assert (=> bs!517025 m!3247717))

(assert (=> b!2816506 d!818115))

(declare-fun d!818117 () Bool)

(declare-fun list!12371 (Conc!10218) List!33055)

(assert (=> d!818117 (= (list!12369 x!519489) (list!12371 (c!456695 x!519489)))))

(declare-fun bs!517026 () Bool)

(assert (= bs!517026 d!818117))

(declare-fun m!3247719 () Bool)

(assert (=> bs!517026 m!3247719))

(assert (=> b!2816506 d!818117))

(declare-fun d!818119 () Bool)

(declare-fun isBalanced!3105 (Conc!10218) Bool)

(assert (=> d!818119 (= (inv!44834 x!519488) (isBalanced!3105 (c!456695 x!519488)))))

(declare-fun bs!517027 () Bool)

(assert (= bs!517027 d!818119))

(declare-fun m!3247721 () Bool)

(assert (=> bs!517027 m!3247721))

(assert (=> b!2816506 d!818119))

(declare-fun d!818121 () Bool)

(assert (=> d!818121 (= (inv!44834 x!519489) (isBalanced!3105 (c!456695 x!519489)))))

(declare-fun bs!517028 () Bool)

(assert (= bs!517028 d!818121))

(declare-fun m!3247723 () Bool)

(assert (=> bs!517028 m!3247723))

(assert (=> b!2816506 d!818121))

(assert (=> b!2816506 d!818107))

(declare-fun d!818123 () Bool)

(assert (=> d!818123 (= (list!12369 x!519488) (list!12371 (c!456695 x!519488)))))

(declare-fun bs!517029 () Bool)

(assert (= bs!517029 d!818123))

(declare-fun m!3247725 () Bool)

(assert (=> bs!517029 m!3247725))

(assert (=> b!2816506 d!818123))

(declare-fun d!818125 () Bool)

(declare-fun choose!16663 (Int) Bool)

(assert (=> d!818125 (= (Forall!1228 lambda!103350) (choose!16663 lambda!103350))))

(declare-fun bs!517030 () Bool)

(assert (= bs!517030 d!818125))

(declare-fun m!3247727 () Bool)

(assert (=> bs!517030 m!3247727))

(assert (=> b!2816506 d!818125))

(assert (=> bs!516936 d!818123))

(assert (=> bs!516953 d!818123))

(declare-fun d!818127 () Bool)

(assert (=> d!818127 (= (list!12369 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519487))) (list!12371 (c!456695 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519487)))))))

(declare-fun bs!517031 () Bool)

(assert (= bs!517031 d!818127))

(declare-fun m!3247729 () Bool)

(assert (=> bs!517031 m!3247729))

(assert (=> bs!516953 d!818127))

(declare-fun d!818129 () Bool)

(declare-fun c!456707 () Bool)

(get-info :version)

(assert (=> d!818129 (= c!456707 ((_ is Node!10218) (c!456695 x!519489)))))

(declare-fun e!1781144 () Bool)

(assert (=> d!818129 (= (inv!44833 (c!456695 x!519489)) e!1781144)))

(declare-fun b!2816597 () Bool)

(declare-fun inv!44838 (Conc!10218) Bool)

(assert (=> b!2816597 (= e!1781144 (inv!44838 (c!456695 x!519489)))))

(declare-fun b!2816598 () Bool)

(declare-fun e!1781145 () Bool)

(assert (=> b!2816598 (= e!1781144 e!1781145)))

(declare-fun res!1172128 () Bool)

(assert (=> b!2816598 (= res!1172128 (not ((_ is Leaf!15567) (c!456695 x!519489))))))

(assert (=> b!2816598 (=> res!1172128 e!1781145)))

(declare-fun b!2816599 () Bool)

(declare-fun inv!44839 (Conc!10218) Bool)

(assert (=> b!2816599 (= e!1781145 (inv!44839 (c!456695 x!519489)))))

(assert (= (and d!818129 c!456707) b!2816597))

(assert (= (and d!818129 (not c!456707)) b!2816598))

(assert (= (and b!2816598 (not res!1172128)) b!2816599))

(declare-fun m!3247731 () Bool)

(assert (=> b!2816597 m!3247731))

(declare-fun m!3247733 () Bool)

(assert (=> b!2816599 m!3247733))

(assert (=> b!2816519 d!818129))

(declare-fun d!818131 () Bool)

(assert (=> d!818131 (= (list!12369 x!519487) (list!12371 (c!456695 x!519487)))))

(declare-fun bs!517032 () Bool)

(assert (= bs!517032 d!818131))

(declare-fun m!3247735 () Bool)

(assert (=> bs!517032 m!3247735))

(assert (=> bs!516947 d!818131))

(assert (=> b!2816535 d!818109))

(assert (=> b!2816535 d!818111))

(declare-fun d!818133 () Bool)

(declare-fun c!456708 () Bool)

(assert (=> d!818133 (= c!456708 ((_ is Node!10218) (c!456695 x!519488)))))

(declare-fun e!1781146 () Bool)

(assert (=> d!818133 (= (inv!44833 (c!456695 x!519488)) e!1781146)))

(declare-fun b!2816600 () Bool)

(assert (=> b!2816600 (= e!1781146 (inv!44838 (c!456695 x!519488)))))

(declare-fun b!2816601 () Bool)

(declare-fun e!1781147 () Bool)

(assert (=> b!2816601 (= e!1781146 e!1781147)))

(declare-fun res!1172129 () Bool)

(assert (=> b!2816601 (= res!1172129 (not ((_ is Leaf!15567) (c!456695 x!519488))))))

(assert (=> b!2816601 (=> res!1172129 e!1781147)))

(declare-fun b!2816602 () Bool)

(assert (=> b!2816602 (= e!1781147 (inv!44839 (c!456695 x!519488)))))

(assert (= (and d!818133 c!456708) b!2816600))

(assert (= (and d!818133 (not c!456708)) b!2816601))

(assert (= (and b!2816601 (not res!1172129)) b!2816602))

(declare-fun m!3247737 () Bool)

(assert (=> b!2816600 m!3247737))

(declare-fun m!3247739 () Bool)

(assert (=> b!2816602 m!3247739))

(assert (=> b!2816518 d!818133))

(assert (=> bs!516959 d!818127))

(assert (=> bs!516940 d!818117))

(assert (=> bs!516940 d!818123))

(assert (=> b!2816527 d!818093))

(assert (=> b!2816527 d!818113))

(assert (=> b!2816533 d!818109))

(assert (=> b!2816533 d!818113))

(assert (=> bs!516937 d!818123))

(assert (=> bs!516937 d!818117))

(assert (=> bs!516943 d!818123))

(assert (=> bs!516943 d!818131))

(assert (=> bs!516955 d!818131))

(assert (=> bs!516955 d!818127))

(assert (=> bs!516948 d!818131))

(assert (=> bs!516948 d!818123))

(assert (=> start!273098 d!818131))

(assert (=> start!273098 d!818093))

(assert (=> start!273098 d!818127))

(declare-fun d!818135 () Bool)

(declare-fun c!456712 () Bool)

(assert (=> d!818135 (= c!456712 ((_ is StringLiteralValue!15436) (toValue!10 thiss!3195 x!519487)))))

(declare-fun e!1781150 () BalanceConc!20074)

(assert (=> d!818135 (= (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519487)) e!1781150)))

(declare-fun b!2816607 () Bool)

(declare-fun seqFromList!3232 (List!33055) BalanceConc!20074)

(assert (=> b!2816607 (= e!1781150 (seqFromList!3232 (text!36465 (toValue!10 thiss!3195 x!519487))))))

(declare-fun b!2816608 () Bool)

(assert (=> b!2816608 (= e!1781150 (BalanceConc!20075 Empty!10218))))

(assert (= (and d!818135 c!456712) b!2816607))

(assert (= (and d!818135 (not c!456712)) b!2816608))

(declare-fun m!3247741 () Bool)

(assert (=> b!2816607 m!3247741))

(assert (=> start!273098 d!818135))

(declare-fun d!818137 () Bool)

(assert (=> d!818137 (= (inv!44834 x!519487) (isBalanced!3105 (c!456695 x!519487)))))

(declare-fun bs!517033 () Bool)

(assert (= bs!517033 d!818137))

(declare-fun m!3247743 () Bool)

(assert (=> bs!517033 m!3247743))

(assert (=> start!273098 d!818137))

(assert (=> start!273098 d!818125))

(assert (=> bs!516960 d!818127))

(assert (=> bs!516960 d!818123))

(assert (=> b!2816520 d!818113))

(assert (=> b!2816534 d!818109))

(assert (=> b!2816534 d!818093))

(assert (=> bs!516945 d!818117))

(assert (=> bs!516945 d!818131))

(assert (=> bs!516939 d!818117))

(assert (=> bs!516957 d!818117))

(assert (=> bs!516957 d!818127))

(assert (=> bs!516949 d!818131))

(assert (=> bs!516949 d!818117))

(assert (=> bs!516961 d!818127))

(assert (=> bs!516961 d!818131))

(assert (=> b!2816524 d!818113))

(assert (=> b!2816524 d!818093))

(assert (=> b!2816521 d!818113))

(assert (=> b!2816521 d!818111))

(assert (=> b!2816530 d!818093))

(assert (=> b!2816530 d!818109))

(assert (=> bs!516934 d!818127))

(assert (=> bs!516934 d!818135))

(assert (=> bs!516934 d!818093))

(assert (=> bs!516934 d!818131))

(assert (=> b!2816517 d!818113))

(assert (=> b!2816517 d!818111))

(declare-fun d!818139 () Bool)

(declare-fun c!456713 () Bool)

(assert (=> d!818139 (= c!456713 ((_ is Node!10218) (c!456695 x!519487)))))

(declare-fun e!1781151 () Bool)

(assert (=> d!818139 (= (inv!44833 (c!456695 x!519487)) e!1781151)))

(declare-fun b!2816609 () Bool)

(assert (=> b!2816609 (= e!1781151 (inv!44838 (c!456695 x!519487)))))

(declare-fun b!2816610 () Bool)

(declare-fun e!1781152 () Bool)

(assert (=> b!2816610 (= e!1781151 e!1781152)))

(declare-fun res!1172130 () Bool)

(assert (=> b!2816610 (= res!1172130 (not ((_ is Leaf!15567) (c!456695 x!519487))))))

(assert (=> b!2816610 (=> res!1172130 e!1781152)))

(declare-fun b!2816611 () Bool)

(assert (=> b!2816611 (= e!1781152 (inv!44839 (c!456695 x!519487)))))

(assert (= (and d!818139 c!456713) b!2816609))

(assert (= (and d!818139 (not c!456713)) b!2816610))

(assert (= (and b!2816610 (not res!1172130)) b!2816611))

(declare-fun m!3247745 () Bool)

(assert (=> b!2816609 m!3247745))

(declare-fun m!3247747 () Bool)

(assert (=> b!2816611 m!3247747))

(assert (=> b!2816516 d!818139))

(assert (=> b!2816522 d!818111))

(assert (=> bs!516962 d!818127))

(assert (=> bs!516962 d!818117))

(assert (=> b!2816525 d!818111))

(assert (=> b!2816525 d!818093))

(assert (=> b!2816531 d!818111))

(assert (=> b!2816531 d!818109))

(assert (=> b!2816528 d!818093))

(assert (=> b!2816528 d!818111))

(declare-fun tp!899083 () Bool)

(declare-fun tp!899084 () Bool)

(declare-fun e!1781157 () Bool)

(declare-fun b!2816618 () Bool)

(assert (=> b!2816618 (= e!1781157 (and (inv!44833 (left!24878 (c!456695 x!519487))) tp!899083 (inv!44833 (right!25208 (c!456695 x!519487))) tp!899084))))

(declare-fun b!2816619 () Bool)

(declare-fun inv!44841 (IArray!20441) Bool)

(assert (=> b!2816619 (= e!1781157 (inv!44841 (xs!13330 (c!456695 x!519487))))))

(assert (=> b!2816516 (= tp!899066 (and (inv!44833 (c!456695 x!519487)) e!1781157))))

(assert (= (and b!2816516 ((_ is Node!10218) (c!456695 x!519487))) b!2816618))

(assert (= (and b!2816516 ((_ is Leaf!15567) (c!456695 x!519487))) b!2816619))

(declare-fun m!3247749 () Bool)

(assert (=> b!2816618 m!3247749))

(declare-fun m!3247751 () Bool)

(assert (=> b!2816618 m!3247751))

(declare-fun m!3247753 () Bool)

(assert (=> b!2816619 m!3247753))

(assert (=> b!2816516 m!3247593))

(declare-fun tp!899085 () Bool)

(declare-fun b!2816620 () Bool)

(declare-fun e!1781159 () Bool)

(declare-fun tp!899086 () Bool)

(assert (=> b!2816620 (= e!1781159 (and (inv!44833 (left!24878 (c!456695 x!519489))) tp!899085 (inv!44833 (right!25208 (c!456695 x!519489))) tp!899086))))

(declare-fun b!2816621 () Bool)

(assert (=> b!2816621 (= e!1781159 (inv!44841 (xs!13330 (c!456695 x!519489))))))

(assert (=> b!2816519 (= tp!899068 (and (inv!44833 (c!456695 x!519489)) e!1781159))))

(assert (= (and b!2816519 ((_ is Node!10218) (c!456695 x!519489))) b!2816620))

(assert (= (and b!2816519 ((_ is Leaf!15567) (c!456695 x!519489))) b!2816621))

(declare-fun m!3247755 () Bool)

(assert (=> b!2816620 m!3247755))

(declare-fun m!3247757 () Bool)

(assert (=> b!2816620 m!3247757))

(declare-fun m!3247759 () Bool)

(assert (=> b!2816621 m!3247759))

(assert (=> b!2816519 m!3247619))

(declare-fun tp!899088 () Bool)

(declare-fun tp!899087 () Bool)

(declare-fun e!1781161 () Bool)

(declare-fun b!2816622 () Bool)

(assert (=> b!2816622 (= e!1781161 (and (inv!44833 (left!24878 (c!456695 x!519488))) tp!899087 (inv!44833 (right!25208 (c!456695 x!519488))) tp!899088))))

(declare-fun b!2816623 () Bool)

(assert (=> b!2816623 (= e!1781161 (inv!44841 (xs!13330 (c!456695 x!519488))))))

(assert (=> b!2816518 (= tp!899067 (and (inv!44833 (c!456695 x!519488)) e!1781161))))

(assert (= (and b!2816518 ((_ is Node!10218) (c!456695 x!519488))) b!2816622))

(assert (= (and b!2816518 ((_ is Leaf!15567) (c!456695 x!519488))) b!2816623))

(declare-fun m!3247761 () Bool)

(assert (=> b!2816622 m!3247761))

(declare-fun m!3247763 () Bool)

(assert (=> b!2816622 m!3247763))

(declare-fun m!3247765 () Bool)

(assert (=> b!2816623 m!3247765))

(assert (=> b!2816518 m!3247617))

(check-sat (not d!818107) (not b!2816600) (not b!2816623) (not b!2816518) (not d!818113) (not d!818101) (not d!818105) (not d!818127) (not d!818115) (not b!2816516) (not b!2816618) (not b!2816566) (not d!818131) (not b!2816621) (not d!818111) (not d!818123) (not d!818137) (not b!2816611) (not b!2816620) (not d!818119) (not b!2816602) (not b!2816622) (not b!2816619) (not d!818093) (not b!2816607) (not b!2816609) (not b!2816519) (not d!818117) (not d!818121) (not b!2816597) (not d!818109) (not d!818125) (not b!2816599))
(check-sat)
