; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!968 () Bool)

(assert start!968)

(assert (=> start!968 true))

(declare-fun b!28071 () Bool)

(assert (=> b!28071 true))

(assert (=> b!28071 true))

(declare-fun b!28072 () Bool)

(assert (=> b!28072 true))

(declare-fun b!28081 () Bool)

(declare-fun e!11283 () Bool)

(declare-datatypes ((List!137 0))(
  ( (Nil!135) (Cons!135 (h!5531 (_ BitVec 16)) (t!14647 List!137)) )
))
(declare-datatypes ((IArray!13 0))(
  ( (IArray!14 (innerList!64 List!137)) )
))
(declare-datatypes ((Conc!6 0))(
  ( (Node!6 (left!302 Conc!6) (right!632 Conc!6) (csize!242 Int) (cheight!217 Int)) (Leaf!129 (xs!2583 IArray!13) (csize!243 Int)) (Empty!6) )
))
(declare-datatypes ((BalanceConc!12 0))(
  ( (BalanceConc!13 (c!14823 Conc!6)) )
))
(declare-fun x!9717 () BalanceConc!12)

(declare-fun tp!19311 () Bool)

(declare-fun inv!407 (Conc!6) Bool)

(assert (=> b!28081 (= e!11283 (and (inv!407 (c!14823 x!9717)) tp!19311))))

(declare-fun inst!16 () Bool)

(declare-datatypes ((StringLiteralValueInjection!20 0))(
  ( (StringLiteralValueInjection!21) )
))
(declare-fun thiss!4744 () StringLiteralValueInjection!20)

(declare-fun inv!408 (BalanceConc!12) Bool)

(declare-fun list!63 (BalanceConc!12) List!137)

(declare-datatypes ((TokenValue!84 0))(
  ( (FloatLiteralValue!168 (text!1033 List!137)) (TokenValueExt!83 (__x!389 Int)) (Broken!420 (value!5383 List!137)) (Object!85) (End!84) (Def!84) (Underscore!84) (Match!84) (Else!84) (Error!84) (Case!84) (If!84) (Extends!84) (Abstract!84) (Class!84) (Val!84) (DelimiterValue!168 (del!144 List!137)) (KeywordValue!90 (value!5384 List!137)) (CommentValue!168 (value!5385 List!137)) (WhitespaceValue!168 (value!5386 List!137)) (IndentationValue!84 (value!5387 List!137)) (String!577) (Int32!84) (Broken!421 (value!5388 List!137)) (Boolean!85) (Unit!87) (OperatorValue!87 (op!144 List!137)) (IdentifierValue!168 (value!5389 List!137)) (IdentifierValue!169 (value!5390 List!137)) (WhitespaceValue!169 (value!5391 List!137)) (True!168) (False!168) (Broken!422 (value!5392 List!137)) (Broken!423 (value!5393 List!137)) (True!169) (RightBrace!84) (RightBracket!84) (Colon!84) (Null!84) (Comma!84) (LeftBracket!84) (False!169) (LeftBrace!84) (ImaginaryLiteralValue!84 (text!1034 List!137)) (StringLiteralValue!252 (value!5394 List!137)) (EOFValue!84 (value!5395 List!137)) (IdentValue!84 (value!5396 List!137)) (DelimiterValue!169 (value!5397 List!137)) (DedentValue!84 (value!5398 List!137)) (NewLineValue!84 (value!5399 List!137)) (IntegerValue!252 (value!5400 (_ BitVec 32)) (text!1035 List!137)) (IntegerValue!253 (value!5401 Int) (text!1036 List!137)) (Times!84) (Or!84) (Equal!84) (Minus!84) (Broken!424 (value!5402 List!137)) (And!84) (Div!84) (LessEqual!84) (Mod!84) (Concat!208) (Not!84) (Plus!84) (SpaceValue!84 (value!5403 List!137)) (IntegerValue!254 (value!5404 Int) (text!1037 List!137)) (StringLiteralValue!253 (text!1038 List!137)) (FloatLiteralValue!169 (text!1039 List!137)) (BytesLiteralValue!84 (value!5405 List!137)) (CommentValue!169 (value!5406 List!137)) (StringLiteralValue!254 (value!5407 List!137)) (ErrorTokenValue!84 (msg!145 List!137)) )
))
(declare-fun toCharacters!22 (StringLiteralValueInjection!20 TokenValue!84) BalanceConc!12)

(declare-fun toValue!29 (StringLiteralValueInjection!20 BalanceConc!12) TokenValue!84)

(assert (=> start!968 (= inst!16 (=> (and (inv!408 x!9717) e!11283) (= (list!63 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717))) (list!63 x!9717))))))

(assert (= start!968 b!28081))

(declare-fun m!4485 () Bool)

(assert (=> b!28081 m!4485))

(declare-fun m!4487 () Bool)

(assert (=> start!968 m!4487))

(declare-fun m!4489 () Bool)

(assert (=> start!968 m!4489))

(declare-fun m!4491 () Bool)

(assert (=> start!968 m!4491))

(declare-fun m!4493 () Bool)

(assert (=> start!968 m!4493))

(declare-fun m!4495 () Bool)

(assert (=> start!968 m!4495))

(assert (=> start!968 m!4493))

(assert (=> start!968 m!4487))

(declare-fun res!25757 () Bool)

(declare-fun e!11284 () Bool)

(assert (=> b!28072 (=> res!25757 e!11284)))

(declare-fun x!9718 () BalanceConc!12)

(declare-fun x!9719 () BalanceConc!12)

(assert (=> b!28072 (= res!25757 (not (= (list!63 x!9718) (list!63 x!9719))))))

(declare-fun e!11285 () Bool)

(declare-fun inst!17 () Bool)

(declare-fun e!11286 () Bool)

(assert (=> b!28072 (= inst!17 (=> (and (inv!408 x!9718) e!11285 (inv!408 x!9719) e!11286) e!11284))))

(declare-fun b!28082 () Bool)

(assert (=> b!28082 (= e!11284 (= (toValue!29 thiss!4744 x!9718) (toValue!29 thiss!4744 x!9719)))))

(declare-fun b!28083 () Bool)

(declare-fun tp!19313 () Bool)

(assert (=> b!28083 (= e!11285 (and (inv!407 (c!14823 x!9718)) tp!19313))))

(declare-fun b!28084 () Bool)

(declare-fun tp!19312 () Bool)

(assert (=> b!28084 (= e!11286 (and (inv!407 (c!14823 x!9719)) tp!19312))))

(assert (= (and b!28072 (not res!25757)) b!28082))

(assert (= b!28072 b!28083))

(assert (= b!28072 b!28084))

(declare-fun m!4497 () Bool)

(assert (=> b!28072 m!4497))

(declare-fun m!4499 () Bool)

(assert (=> b!28072 m!4499))

(declare-fun m!4501 () Bool)

(assert (=> b!28072 m!4501))

(declare-fun m!4503 () Bool)

(assert (=> b!28072 m!4503))

(declare-fun m!4505 () Bool)

(assert (=> b!28082 m!4505))

(declare-fun m!4507 () Bool)

(assert (=> b!28082 m!4507))

(declare-fun m!4509 () Bool)

(assert (=> b!28083 m!4509))

(declare-fun m!4511 () Bool)

(assert (=> b!28084 m!4511))

(declare-fun bs!431 () Bool)

(declare-fun neg-inst!16 () Bool)

(declare-fun s!15453 () Bool)

(assert (= bs!431 (and neg-inst!16 s!15453)))

(assert (=> bs!431 (=> true (= (list!63 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717))) (list!63 x!9717)))))

(assert (=> m!4493 m!4487))

(assert (=> m!4493 m!4489))

(assert (=> m!4493 m!4495))

(assert (=> m!4493 s!15453))

(assert (=> m!4495 s!15453))

(declare-fun bs!432 () Bool)

(assert (= bs!432 (and neg-inst!16 start!968)))

(assert (=> bs!432 (= true inst!16)))

(declare-fun bs!433 () Bool)

(declare-fun neg-inst!17 () Bool)

(declare-fun s!15455 () Bool)

(assert (= bs!433 (and neg-inst!17 s!15455)))

(declare-fun res!25758 () Bool)

(declare-fun e!11287 () Bool)

(assert (=> bs!433 (=> res!25758 e!11287)))

(assert (=> bs!433 (= res!25758 (not (= (list!63 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717))) (list!63 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717))))))))

(assert (=> bs!433 (=> true e!11287)))

(declare-fun b!28085 () Bool)

(assert (=> b!28085 (= e!11287 (= (toValue!29 thiss!4744 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717))) (toValue!29 thiss!4744 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717)))))))

(assert (= (and bs!433 (not res!25758)) b!28085))

(assert (=> m!4489 s!15455))

(assert (=> m!4489 s!15455))

(declare-fun bs!434 () Bool)

(declare-fun s!15457 () Bool)

(assert (= bs!434 (and neg-inst!17 s!15457)))

(declare-fun res!25759 () Bool)

(declare-fun e!11288 () Bool)

(assert (=> bs!434 (=> res!25759 e!11288)))

(assert (=> bs!434 (= res!25759 (not (= (list!63 x!9717) (list!63 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717))))))))

(assert (=> bs!434 (=> true e!11288)))

(declare-fun b!28086 () Bool)

(assert (=> b!28086 (= e!11288 (= (toValue!29 thiss!4744 x!9717) (toValue!29 thiss!4744 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717)))))))

(assert (= (and bs!434 (not res!25759)) b!28086))

(declare-fun bs!435 () Bool)

(assert (= bs!435 (and m!4493 m!4489)))

(assert (=> bs!435 m!4495))

(assert (=> bs!435 m!4489))

(assert (=> bs!435 s!15457))

(declare-fun bs!436 () Bool)

(declare-fun s!15459 () Bool)

(assert (= bs!436 (and neg-inst!17 s!15459)))

(declare-fun res!25760 () Bool)

(declare-fun e!11289 () Bool)

(assert (=> bs!436 (=> res!25760 e!11289)))

(assert (=> bs!436 (= res!25760 (not (= (list!63 x!9717) (list!63 x!9717))))))

(assert (=> bs!436 (=> true e!11289)))

(declare-fun b!28087 () Bool)

(assert (=> b!28087 (= e!11289 (= (toValue!29 thiss!4744 x!9717) (toValue!29 thiss!4744 x!9717)))))

(assert (= (and bs!436 (not res!25760)) b!28087))

(assert (=> m!4493 m!4495))

(assert (=> m!4493 m!4495))

(assert (=> m!4493 s!15459))

(declare-fun bs!437 () Bool)

(declare-fun s!15461 () Bool)

(assert (= bs!437 (and neg-inst!17 s!15461)))

(declare-fun res!25761 () Bool)

(declare-fun e!11290 () Bool)

(assert (=> bs!437 (=> res!25761 e!11290)))

(assert (=> bs!437 (= res!25761 (not (= (list!63 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717))) (list!63 x!9717))))))

(assert (=> bs!437 (=> true e!11290)))

(declare-fun b!28088 () Bool)

(assert (=> b!28088 (= e!11290 (= (toValue!29 thiss!4744 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717))) (toValue!29 thiss!4744 x!9717)))))

(assert (= (and bs!437 (not res!25761)) b!28088))

(assert (=> bs!435 m!4489))

(assert (=> bs!435 m!4495))

(assert (=> bs!435 s!15461))

(assert (=> m!4493 s!15459))

(declare-fun bs!438 () Bool)

(declare-fun s!15463 () Bool)

(assert (= bs!438 (and neg-inst!17 s!15463)))

(declare-fun res!25762 () Bool)

(declare-fun e!11291 () Bool)

(assert (=> bs!438 (=> res!25762 e!11291)))

(assert (=> bs!438 (= res!25762 (not (= (list!63 x!9718) (list!63 x!9717))))))

(assert (=> bs!438 (=> true e!11291)))

(declare-fun b!28089 () Bool)

(assert (=> b!28089 (= e!11291 (= (toValue!29 thiss!4744 x!9718) (toValue!29 thiss!4744 x!9717)))))

(assert (= (and bs!438 (not res!25762)) b!28089))

(declare-fun bs!439 () Bool)

(assert (= bs!439 (and m!4505 m!4493)))

(assert (=> bs!439 m!4497))

(assert (=> bs!439 m!4495))

(assert (=> bs!439 s!15463))

(declare-fun bs!440 () Bool)

(declare-fun s!15465 () Bool)

(assert (= bs!440 (and neg-inst!17 s!15465)))

(declare-fun res!25763 () Bool)

(declare-fun e!11292 () Bool)

(assert (=> bs!440 (=> res!25763 e!11292)))

(assert (=> bs!440 (= res!25763 (not (= (list!63 x!9718) (list!63 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717))))))))

(assert (=> bs!440 (=> true e!11292)))

(declare-fun b!28090 () Bool)

(assert (=> b!28090 (= e!11292 (= (toValue!29 thiss!4744 x!9718) (toValue!29 thiss!4744 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717)))))))

(assert (= (and bs!440 (not res!25763)) b!28090))

(declare-fun bs!441 () Bool)

(assert (= bs!441 (and m!4505 m!4489)))

(assert (=> bs!441 m!4497))

(assert (=> bs!441 m!4489))

(assert (=> bs!441 s!15465))

(declare-fun bs!442 () Bool)

(declare-fun s!15467 () Bool)

(assert (= bs!442 (and neg-inst!17 s!15467)))

(declare-fun res!25764 () Bool)

(declare-fun e!11293 () Bool)

(assert (=> bs!442 (=> res!25764 e!11293)))

(assert (=> bs!442 (= res!25764 (not (= (list!63 x!9718) (list!63 x!9718))))))

(assert (=> bs!442 (=> true e!11293)))

(declare-fun b!28091 () Bool)

(assert (=> b!28091 (= e!11293 (= (toValue!29 thiss!4744 x!9718) (toValue!29 thiss!4744 x!9718)))))

(assert (= (and bs!442 (not res!25764)) b!28091))

(assert (=> m!4505 m!4497))

(assert (=> m!4505 m!4497))

(assert (=> m!4505 s!15467))

(declare-fun bs!443 () Bool)

(declare-fun s!15469 () Bool)

(assert (= bs!443 (and neg-inst!17 s!15469)))

(declare-fun res!25765 () Bool)

(declare-fun e!11294 () Bool)

(assert (=> bs!443 (=> res!25765 e!11294)))

(assert (=> bs!443 (= res!25765 (not (= (list!63 x!9717) (list!63 x!9718))))))

(assert (=> bs!443 (=> true e!11294)))

(declare-fun b!28092 () Bool)

(assert (=> b!28092 (= e!11294 (= (toValue!29 thiss!4744 x!9717) (toValue!29 thiss!4744 x!9718)))))

(assert (= (and bs!443 (not res!25765)) b!28092))

(assert (=> bs!439 m!4495))

(assert (=> bs!439 m!4497))

(assert (=> bs!439 s!15469))

(declare-fun bs!444 () Bool)

(declare-fun s!15471 () Bool)

(assert (= bs!444 (and neg-inst!17 s!15471)))

(declare-fun res!25766 () Bool)

(declare-fun e!11295 () Bool)

(assert (=> bs!444 (=> res!25766 e!11295)))

(assert (=> bs!444 (= res!25766 (not (= (list!63 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717))) (list!63 x!9718))))))

(assert (=> bs!444 (=> true e!11295)))

(declare-fun b!28093 () Bool)

(assert (=> b!28093 (= e!11295 (= (toValue!29 thiss!4744 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717))) (toValue!29 thiss!4744 x!9718)))))

(assert (= (and bs!444 (not res!25766)) b!28093))

(assert (=> bs!441 m!4489))

(assert (=> bs!441 m!4497))

(assert (=> bs!441 s!15471))

(assert (=> m!4505 s!15467))

(declare-fun bs!445 () Bool)

(assert (= bs!445 (and m!4497 m!4493)))

(assert (=> bs!445 s!15463))

(declare-fun bs!446 () Bool)

(assert (= bs!446 (and m!4497 m!4505)))

(assert (=> bs!446 s!15467))

(declare-fun bs!447 () Bool)

(assert (= bs!447 (and m!4497 m!4489)))

(assert (=> bs!447 s!15465))

(assert (=> m!4497 s!15467))

(assert (=> bs!445 s!15469))

(assert (=> bs!446 s!15467))

(assert (=> bs!447 s!15471))

(assert (=> m!4497 s!15467))

(declare-fun bs!448 () Bool)

(declare-fun s!15473 () Bool)

(assert (= bs!448 (and neg-inst!17 s!15473)))

(declare-fun res!25767 () Bool)

(declare-fun e!11296 () Bool)

(assert (=> bs!448 (=> res!25767 e!11296)))

(assert (=> bs!448 (= res!25767 (not (= (list!63 x!9719) (list!63 x!9717))))))

(assert (=> bs!448 (=> true e!11296)))

(declare-fun b!28094 () Bool)

(assert (=> b!28094 (= e!11296 (= (toValue!29 thiss!4744 x!9719) (toValue!29 thiss!4744 x!9717)))))

(assert (= (and bs!448 (not res!25767)) b!28094))

(declare-fun bs!449 () Bool)

(assert (= bs!449 (and m!4499 m!4493)))

(assert (=> bs!449 m!4499))

(assert (=> bs!449 m!4495))

(assert (=> bs!449 s!15473))

(declare-fun bs!450 () Bool)

(declare-fun s!15475 () Bool)

(assert (= bs!450 (and neg-inst!17 s!15475)))

(declare-fun res!25768 () Bool)

(declare-fun e!11297 () Bool)

(assert (=> bs!450 (=> res!25768 e!11297)))

(assert (=> bs!450 (= res!25768 (not (= (list!63 x!9719) (list!63 x!9718))))))

(assert (=> bs!450 (=> true e!11297)))

(declare-fun b!28095 () Bool)

(assert (=> b!28095 (= e!11297 (= (toValue!29 thiss!4744 x!9719) (toValue!29 thiss!4744 x!9718)))))

(assert (= (and bs!450 (not res!25768)) b!28095))

(declare-fun bs!451 () Bool)

(assert (= bs!451 (and m!4499 m!4505 m!4497)))

(assert (=> bs!451 m!4499))

(assert (=> bs!451 m!4497))

(assert (=> bs!451 s!15475))

(declare-fun bs!452 () Bool)

(declare-fun s!15477 () Bool)

(assert (= bs!452 (and neg-inst!17 s!15477)))

(declare-fun res!25769 () Bool)

(declare-fun e!11298 () Bool)

(assert (=> bs!452 (=> res!25769 e!11298)))

(assert (=> bs!452 (= res!25769 (not (= (list!63 x!9719) (list!63 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717))))))))

(assert (=> bs!452 (=> true e!11298)))

(declare-fun b!28096 () Bool)

(assert (=> b!28096 (= e!11298 (= (toValue!29 thiss!4744 x!9719) (toValue!29 thiss!4744 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717)))))))

(assert (= (and bs!452 (not res!25769)) b!28096))

(declare-fun bs!453 () Bool)

(assert (= bs!453 (and m!4499 m!4489)))

(assert (=> bs!453 m!4499))

(assert (=> bs!453 m!4489))

(assert (=> bs!453 s!15477))

(declare-fun bs!454 () Bool)

(declare-fun s!15479 () Bool)

(assert (= bs!454 (and neg-inst!17 s!15479)))

(declare-fun res!25770 () Bool)

(declare-fun e!11299 () Bool)

(assert (=> bs!454 (=> res!25770 e!11299)))

(assert (=> bs!454 (= res!25770 (not (= (list!63 x!9719) (list!63 x!9719))))))

(assert (=> bs!454 (=> true e!11299)))

(declare-fun b!28097 () Bool)

(assert (=> b!28097 (= e!11299 (= (toValue!29 thiss!4744 x!9719) (toValue!29 thiss!4744 x!9719)))))

(assert (= (and bs!454 (not res!25770)) b!28097))

(assert (=> m!4499 s!15479))

(declare-fun bs!455 () Bool)

(declare-fun s!15481 () Bool)

(assert (= bs!455 (and neg-inst!17 s!15481)))

(declare-fun res!25771 () Bool)

(declare-fun e!11300 () Bool)

(assert (=> bs!455 (=> res!25771 e!11300)))

(assert (=> bs!455 (= res!25771 (not (= (list!63 x!9717) (list!63 x!9719))))))

(assert (=> bs!455 (=> true e!11300)))

(declare-fun b!28098 () Bool)

(assert (=> b!28098 (= e!11300 (= (toValue!29 thiss!4744 x!9717) (toValue!29 thiss!4744 x!9719)))))

(assert (= (and bs!455 (not res!25771)) b!28098))

(assert (=> bs!449 m!4495))

(assert (=> bs!449 m!4499))

(assert (=> bs!449 s!15481))

(declare-fun bs!456 () Bool)

(declare-fun s!15483 () Bool)

(assert (= bs!456 (and neg-inst!17 s!15483)))

(declare-fun res!25772 () Bool)

(declare-fun e!11301 () Bool)

(assert (=> bs!456 (=> res!25772 e!11301)))

(assert (=> bs!456 (= res!25772 (not (= (list!63 x!9718) (list!63 x!9719))))))

(assert (=> bs!456 (=> true e!11301)))

(declare-fun b!28099 () Bool)

(assert (=> b!28099 (= e!11301 (= (toValue!29 thiss!4744 x!9718) (toValue!29 thiss!4744 x!9719)))))

(assert (= (and bs!456 (not res!25772)) b!28099))

(assert (=> bs!451 m!4497))

(assert (=> bs!451 m!4499))

(assert (=> bs!451 s!15483))

(declare-fun bs!457 () Bool)

(declare-fun s!15485 () Bool)

(assert (= bs!457 (and neg-inst!17 s!15485)))

(declare-fun res!25773 () Bool)

(declare-fun e!11302 () Bool)

(assert (=> bs!457 (=> res!25773 e!11302)))

(assert (=> bs!457 (= res!25773 (not (= (list!63 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717))) (list!63 x!9719))))))

(assert (=> bs!457 (=> true e!11302)))

(declare-fun b!28100 () Bool)

(assert (=> b!28100 (= e!11302 (= (toValue!29 thiss!4744 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717))) (toValue!29 thiss!4744 x!9719)))))

(assert (= (and bs!457 (not res!25773)) b!28100))

(assert (=> bs!453 m!4489))

(assert (=> bs!453 m!4499))

(assert (=> bs!453 s!15485))

(assert (=> m!4499 s!15479))

(declare-fun bs!458 () Bool)

(assert (= bs!458 (and m!4507 m!4493)))

(assert (=> bs!458 s!15473))

(declare-fun bs!459 () Bool)

(assert (= bs!459 (and m!4507 m!4499)))

(assert (=> bs!459 s!15479))

(declare-fun bs!460 () Bool)

(assert (= bs!460 (and m!4507 m!4505 m!4497)))

(assert (=> bs!460 s!15475))

(declare-fun bs!461 () Bool)

(assert (= bs!461 (and m!4507 m!4489)))

(assert (=> bs!461 s!15477))

(assert (=> m!4507 s!15479))

(assert (=> bs!461 s!15485))

(assert (=> bs!460 s!15483))

(assert (=> bs!458 s!15481))

(assert (=> bs!459 s!15479))

(assert (=> m!4507 s!15479))

(declare-fun bs!462 () Bool)

(assert (= bs!462 (and m!4495 m!4499 m!4507)))

(assert (=> bs!462 s!15481))

(declare-fun bs!463 () Bool)

(assert (= bs!463 (and m!4495 m!4505 m!4497)))

(assert (=> bs!463 s!15469))

(declare-fun bs!464 () Bool)

(assert (= bs!464 (and m!4495 m!4489)))

(assert (=> bs!464 s!15457))

(declare-fun bs!465 () Bool)

(assert (= bs!465 (and m!4495 m!4493)))

(assert (=> bs!465 s!15459))

(assert (=> m!4495 s!15459))

(assert (=> bs!463 s!15463))

(assert (=> bs!462 s!15473))

(assert (=> bs!464 s!15461))

(assert (=> bs!465 s!15459))

(assert (=> m!4495 s!15459))

(declare-fun bs!466 () Bool)

(assert (= bs!466 (and neg-inst!17 b!28072)))

(assert (=> bs!466 (= true inst!17)))

(declare-fun res!25755 () Bool)

(declare-fun e!11282 () Bool)

(assert (=> start!968 (=> res!25755 e!11282)))

(declare-fun lambda!79 () Int)

(declare-fun Forall!5 (Int) Bool)

(assert (=> start!968 (= res!25755 (not (Forall!5 lambda!79)))))

(assert (=> start!968 (= (Forall!5 lambda!79) inst!16)))

(assert (=> start!968 (not e!11282)))

(assert (=> start!968 true))

(declare-fun e!11281 () Bool)

(assert (=> b!28071 (= e!11282 e!11281)))

(declare-fun res!25756 () Bool)

(assert (=> b!28071 (=> res!25756 e!11281)))

(declare-fun lambda!80 () Int)

(declare-fun lambda!81 () Int)

(declare-fun semiInverseModEq!3 (Int Int) Bool)

(assert (=> b!28071 (= res!25756 (not (semiInverseModEq!3 lambda!80 lambda!81)))))

(assert (=> b!28071 (= (semiInverseModEq!3 lambda!80 lambda!81) (Forall!5 lambda!79))))

(declare-fun lambda!82 () Int)

(declare-fun Forall2!1 (Int) Bool)

(assert (=> b!28072 (= e!11281 (Forall2!1 lambda!82))))

(assert (=> b!28072 (= (Forall2!1 lambda!82) inst!17)))

(assert (= neg-inst!16 inst!16))

(assert (= (and start!968 (not res!25755)) b!28071))

(assert (= (and b!28071 (not res!25756)) b!28072))

(assert (= neg-inst!17 inst!17))

(declare-fun m!4513 () Bool)

(assert (=> start!968 m!4513))

(assert (=> start!968 m!4513))

(declare-fun m!4515 () Bool)

(assert (=> b!28071 m!4515))

(assert (=> b!28071 m!4515))

(assert (=> b!28071 m!4513))

(declare-fun m!4517 () Bool)

(assert (=> b!28072 m!4517))

(assert (=> b!28072 m!4517))

(push 1)

(assert (not bs!444))

(assert (not b!28088))

(assert (not bs!440))

(assert (not bs!433))

(assert (not b!28089))

(assert (not b!28084))

(assert (not bs!437))

(assert (not bs!456))

(assert (not b!28082))

(assert (not b!28097))

(assert (not start!968))

(assert (not b!28091))

(assert (not b!28071))

(assert (not bs!436))

(assert (not b!28081))

(assert (not b!28083))

(assert (not b!28098))

(assert (not b!28087))

(assert (not b!28096))

(assert (not bs!442))

(assert (not bs!455))

(assert (not b!28099))

(assert (not bs!434))

(assert (not bs!450))

(assert (not b!28090))

(assert (not b!28093))

(assert (not bs!452))

(assert (not bs!448))

(assert (not bs!457))

(assert (not b!28100))

(assert (not b!28086))

(assert (not bs!431))

(assert (not bs!443))

(assert (not b!28094))

(assert (not bs!438))

(assert (not b!28095))

(assert (not bs!454))

(assert (not b!28092))

(assert (not b!28085))

(assert (not b!28072))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1951 () Bool)

(declare-fun list!65 (Conc!6) List!137)

(assert (=> d!1951 (= (list!63 x!9718) (list!65 (c!14823 x!9718)))))

(declare-fun bs!502 () Bool)

(assert (= bs!502 d!1951))

(declare-fun m!4553 () Bool)

(assert (=> bs!502 m!4553))

(assert (=> bs!456 d!1951))

(declare-fun d!1953 () Bool)

(assert (=> d!1953 (= (list!63 x!9719) (list!65 (c!14823 x!9719)))))

(declare-fun bs!503 () Bool)

(assert (= bs!503 d!1953))

(declare-fun m!4555 () Bool)

(assert (=> bs!503 m!4555))

(assert (=> bs!456 d!1953))

(declare-fun d!1955 () Bool)

(assert (=> d!1955 (= (list!63 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717))) (list!65 (c!14823 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717)))))))

(declare-fun bs!504 () Bool)

(assert (= bs!504 d!1955))

(declare-fun m!4557 () Bool)

(assert (=> bs!504 m!4557))

(assert (=> bs!444 d!1955))

(assert (=> bs!444 d!1951))

(declare-fun d!1957 () Bool)

(declare-fun efficientList!9 (BalanceConc!12) List!137)

(assert (=> d!1957 (= (toValue!29 thiss!4744 x!9717) (StringLiteralValue!252 (efficientList!9 x!9717)))))

(declare-fun bs!505 () Bool)

(assert (= bs!505 d!1957))

(declare-fun m!4559 () Bool)

(assert (=> bs!505 m!4559))

(assert (=> b!28086 d!1957))

(declare-fun d!1959 () Bool)

(assert (=> d!1959 (= (toValue!29 thiss!4744 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717))) (StringLiteralValue!252 (efficientList!9 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717)))))))

(declare-fun bs!506 () Bool)

(assert (= bs!506 d!1959))

(assert (=> bs!506 m!4487))

(declare-fun m!4561 () Bool)

(assert (=> bs!506 m!4561))

(assert (=> b!28086 d!1959))

(assert (=> b!28098 d!1957))

(declare-fun d!1961 () Bool)

(assert (=> d!1961 (= (toValue!29 thiss!4744 x!9719) (StringLiteralValue!252 (efficientList!9 x!9719)))))

(declare-fun bs!507 () Bool)

(assert (= bs!507 d!1961))

(declare-fun m!4563 () Bool)

(assert (=> bs!507 m!4563))

(assert (=> b!28098 d!1961))

(assert (=> b!28092 d!1957))

(declare-fun d!1963 () Bool)

(assert (=> d!1963 (= (toValue!29 thiss!4744 x!9718) (StringLiteralValue!252 (efficientList!9 x!9718)))))

(declare-fun bs!508 () Bool)

(assert (= bs!508 d!1963))

(declare-fun m!4565 () Bool)

(assert (=> bs!508 m!4565))

(assert (=> b!28092 d!1963))

(assert (=> b!28095 d!1961))

(assert (=> b!28095 d!1963))

(declare-fun d!1965 () Bool)

(assert (=> d!1965 (= (list!63 x!9717) (list!65 (c!14823 x!9717)))))

(declare-fun bs!509 () Bool)

(assert (= bs!509 d!1965))

(declare-fun m!4567 () Bool)

(assert (=> bs!509 m!4567))

(assert (=> bs!434 d!1965))

(assert (=> bs!434 d!1955))

(assert (=> b!28089 d!1963))

(assert (=> b!28089 d!1957))

(assert (=> b!28096 d!1961))

(assert (=> b!28096 d!1959))

(assert (=> bs!436 d!1965))

(assert (=> bs!457 d!1955))

(assert (=> bs!457 d!1953))

(assert (=> b!28090 d!1963))

(assert (=> b!28090 d!1959))

(assert (=> bs!452 d!1953))

(assert (=> bs!452 d!1955))

(assert (=> b!28099 d!1963))

(assert (=> b!28099 d!1961))

(assert (=> bs!440 d!1951))

(assert (=> bs!440 d!1955))

(assert (=> b!28093 d!1959))

(assert (=> b!28093 d!1963))

(assert (=> bs!437 d!1955))

(assert (=> bs!437 d!1965))

(assert (=> b!28097 d!1961))

(assert (=> b!28094 d!1961))

(assert (=> b!28094 d!1957))

(assert (=> b!28087 d!1957))

(assert (=> b!28100 d!1959))

(assert (=> b!28100 d!1961))

(assert (=> bs!454 d!1953))

(assert (=> bs!448 d!1953))

(assert (=> bs!448 d!1965))

(assert (=> bs!442 d!1951))

(assert (=> bs!443 d!1965))

(assert (=> bs!443 d!1951))

(assert (=> bs!450 d!1953))

(assert (=> bs!450 d!1951))

(assert (=> b!28085 d!1959))

(assert (=> bs!438 d!1951))

(assert (=> bs!438 d!1965))

(assert (=> b!28091 d!1963))

(assert (=> bs!433 d!1955))

(assert (=> b!28088 d!1959))

(assert (=> b!28088 d!1957))

(assert (=> bs!455 d!1965))

(assert (=> bs!455 d!1953))

(declare-fun bs!510 () Bool)

(assert (= bs!510 (and m!4489 b!28085)))

(declare-fun m!4569 () Bool)

(assert (=> bs!510 m!4569))

(assert (=> bs!510 m!4569))

(declare-fun bs!511 () Bool)

(assert (= bs!511 (and m!4493 m!4489 b!28086)))

(assert (=> bs!511 m!4493))

(assert (=> bs!511 m!4569))

(declare-fun bs!512 () Bool)

(assert (= bs!512 (and m!4493 b!28087)))

(assert (=> bs!512 m!4493))

(assert (=> bs!512 m!4493))

(declare-fun bs!513 () Bool)

(assert (= bs!513 (and m!4493 m!4489 b!28088)))

(assert (=> bs!513 m!4569))

(assert (=> bs!513 m!4493))

(declare-fun bs!514 () Bool)

(assert (= bs!514 (and m!4505 m!4493 b!28089)))

(assert (=> bs!514 m!4505))

(assert (=> bs!514 m!4493))

(declare-fun bs!515 () Bool)

(assert (= bs!515 (and m!4505 m!4489 b!28090)))

(assert (=> bs!515 m!4505))

(assert (=> bs!515 m!4569))

(declare-fun bs!516 () Bool)

(assert (= bs!516 (and m!4505 b!28091)))

(assert (=> bs!516 m!4505))

(assert (=> bs!516 m!4505))

(declare-fun bs!517 () Bool)

(assert (= bs!517 (and m!4505 m!4493 b!28092)))

(assert (=> bs!517 m!4493))

(assert (=> bs!517 m!4505))

(declare-fun bs!518 () Bool)

(assert (= bs!518 (and m!4505 m!4489 b!28093)))

(assert (=> bs!518 m!4569))

(assert (=> bs!518 m!4505))

(declare-fun bs!519 () Bool)

(assert (= bs!519 (and m!4499 m!4493 b!28094)))

(assert (=> bs!519 m!4507))

(assert (=> bs!519 m!4493))

(declare-fun bs!520 () Bool)

(assert (= bs!520 (and m!4499 m!4505 m!4497 b!28095)))

(assert (=> bs!520 m!4507))

(assert (=> bs!520 m!4505))

(declare-fun bs!521 () Bool)

(assert (= bs!521 (and m!4499 m!4489 b!28096)))

(assert (=> bs!521 m!4507))

(assert (=> bs!521 m!4569))

(declare-fun bs!522 () Bool)

(assert (= bs!522 (and m!4499 b!28097)))

(assert (=> bs!522 m!4507))

(assert (=> bs!522 m!4507))

(declare-fun bs!523 () Bool)

(assert (= bs!523 (and m!4499 m!4493 b!28098)))

(assert (=> bs!523 m!4493))

(assert (=> bs!523 m!4507))

(declare-fun bs!524 () Bool)

(assert (= bs!524 (and m!4499 m!4505 m!4497 b!28099)))

(assert (=> bs!524 m!4505))

(assert (=> bs!524 m!4507))

(declare-fun bs!525 () Bool)

(assert (= bs!525 (and m!4499 m!4489 b!28100)))

(assert (=> bs!525 m!4569))

(assert (=> bs!525 m!4507))

(push 1)

(assert (not start!968))

(assert (not d!1955))

(assert (not b!28071))

(assert (not d!1959))

(assert (not b!28083))

(assert (not d!1951))

(assert (not b!28084))

(assert (not d!1953))

(assert (not b!28072))

(assert (not b!28082))

(assert (not d!1965))

(assert (not b!28081))

(assert (not d!1963))

(assert (not bs!431))

(assert (not d!1957))

(assert (not d!1961))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1983 () Bool)

(declare-fun lt!1160 () List!137)

(assert (=> d!1983 (= lt!1160 (list!63 x!9718))))

(declare-fun efficientList!11 (Conc!6 List!137) List!137)

(declare-fun efficientList$default$2!3 (Conc!6) List!137)

(assert (=> d!1983 (= lt!1160 (efficientList!11 (c!14823 x!9718) (efficientList$default$2!3 (c!14823 x!9718))))))

(assert (=> d!1983 (= (efficientList!9 x!9718) lt!1160)))

(declare-fun bs!550 () Bool)

(assert (= bs!550 d!1983))

(assert (=> bs!550 m!4497))

(declare-fun m!4589 () Bool)

(assert (=> bs!550 m!4589))

(assert (=> bs!550 m!4589))

(declare-fun m!4591 () Bool)

(assert (=> bs!550 m!4591))

(assert (=> d!1963 d!1983))

(declare-fun b!28159 () Bool)

(declare-fun e!11348 () List!137)

(declare-fun list!67 (IArray!13) List!137)

(assert (=> b!28159 (= e!11348 (list!67 (xs!2583 (c!14823 x!9717))))))

(declare-fun b!28157 () Bool)

(declare-fun e!11347 () List!137)

(assert (=> b!28157 (= e!11347 Nil!135)))

(declare-fun b!28158 () Bool)

(assert (=> b!28158 (= e!11347 e!11348)))

(declare-fun c!14830 () Bool)

(assert (=> b!28158 (= c!14830 (is-Leaf!129 (c!14823 x!9717)))))

(declare-fun b!28160 () Bool)

(declare-fun ++!31 (List!137 List!137) List!137)

(assert (=> b!28160 (= e!11348 (++!31 (list!65 (left!302 (c!14823 x!9717))) (list!65 (right!632 (c!14823 x!9717)))))))

(declare-fun d!1985 () Bool)

(declare-fun c!14829 () Bool)

(assert (=> d!1985 (= c!14829 (is-Empty!6 (c!14823 x!9717)))))

(assert (=> d!1985 (= (list!65 (c!14823 x!9717)) e!11347)))

(assert (= (and d!1985 c!14829) b!28157))

(assert (= (and d!1985 (not c!14829)) b!28158))

(assert (= (and b!28158 c!14830) b!28159))

(assert (= (and b!28158 (not c!14830)) b!28160))

(declare-fun m!4593 () Bool)

(assert (=> b!28159 m!4593))

(declare-fun m!4595 () Bool)

(assert (=> b!28160 m!4595))

(declare-fun m!4597 () Bool)

(assert (=> b!28160 m!4597))

(assert (=> b!28160 m!4595))

(assert (=> b!28160 m!4597))

(declare-fun m!4599 () Bool)

(assert (=> b!28160 m!4599))

(assert (=> d!1965 d!1985))

(declare-fun b!28163 () Bool)

(declare-fun e!11350 () List!137)

(assert (=> b!28163 (= e!11350 (list!67 (xs!2583 (c!14823 x!9719))))))

(declare-fun b!28161 () Bool)

(declare-fun e!11349 () List!137)

(assert (=> b!28161 (= e!11349 Nil!135)))

(declare-fun b!28162 () Bool)

(assert (=> b!28162 (= e!11349 e!11350)))

(declare-fun c!14832 () Bool)

(assert (=> b!28162 (= c!14832 (is-Leaf!129 (c!14823 x!9719)))))

(declare-fun b!28164 () Bool)

(assert (=> b!28164 (= e!11350 (++!31 (list!65 (left!302 (c!14823 x!9719))) (list!65 (right!632 (c!14823 x!9719)))))))

(declare-fun d!1987 () Bool)

(declare-fun c!14831 () Bool)

(assert (=> d!1987 (= c!14831 (is-Empty!6 (c!14823 x!9719)))))

(assert (=> d!1987 (= (list!65 (c!14823 x!9719)) e!11349)))

(assert (= (and d!1987 c!14831) b!28161))

(assert (= (and d!1987 (not c!14831)) b!28162))

(assert (= (and b!28162 c!14832) b!28163))

(assert (= (and b!28162 (not c!14832)) b!28164))

(declare-fun m!4601 () Bool)

(assert (=> b!28163 m!4601))

(declare-fun m!4603 () Bool)

(assert (=> b!28164 m!4603))

(declare-fun m!4605 () Bool)

(assert (=> b!28164 m!4605))

(assert (=> b!28164 m!4603))

(assert (=> b!28164 m!4605))

(declare-fun m!4607 () Bool)

(assert (=> b!28164 m!4607))

(assert (=> d!1953 d!1987))

(declare-fun d!1989 () Bool)

(declare-fun lt!1161 () List!137)

(assert (=> d!1989 (= lt!1161 (list!63 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717))))))

(assert (=> d!1989 (= lt!1161 (efficientList!11 (c!14823 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717))) (efficientList$default$2!3 (c!14823 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717))))))))

(assert (=> d!1989 (= (efficientList!9 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717))) lt!1161)))

(declare-fun bs!551 () Bool)

(assert (= bs!551 d!1989))

(assert (=> bs!551 m!4487))

(assert (=> bs!551 m!4489))

(declare-fun m!4609 () Bool)

(assert (=> bs!551 m!4609))

(assert (=> bs!551 m!4609))

(declare-fun m!4611 () Bool)

(assert (=> bs!551 m!4611))

(assert (=> d!1959 d!1989))

(declare-fun b!28167 () Bool)

(declare-fun e!11352 () List!137)

(assert (=> b!28167 (= e!11352 (list!67 (xs!2583 (c!14823 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717))))))))

(declare-fun b!28165 () Bool)

(declare-fun e!11351 () List!137)

(assert (=> b!28165 (= e!11351 Nil!135)))

(declare-fun b!28166 () Bool)

(assert (=> b!28166 (= e!11351 e!11352)))

(declare-fun c!14834 () Bool)

(assert (=> b!28166 (= c!14834 (is-Leaf!129 (c!14823 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717)))))))

(declare-fun b!28168 () Bool)

(assert (=> b!28168 (= e!11352 (++!31 (list!65 (left!302 (c!14823 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717))))) (list!65 (right!632 (c!14823 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717)))))))))

(declare-fun d!1991 () Bool)

(declare-fun c!14833 () Bool)

(assert (=> d!1991 (= c!14833 (is-Empty!6 (c!14823 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717)))))))

(assert (=> d!1991 (= (list!65 (c!14823 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717)))) e!11351)))

(assert (= (and d!1991 c!14833) b!28165))

(assert (= (and d!1991 (not c!14833)) b!28166))

(assert (= (and b!28166 c!14834) b!28167))

(assert (= (and b!28166 (not c!14834)) b!28168))

(declare-fun m!4613 () Bool)

(assert (=> b!28167 m!4613))

(declare-fun m!4615 () Bool)

(assert (=> b!28168 m!4615))

(declare-fun m!4617 () Bool)

(assert (=> b!28168 m!4617))

(assert (=> b!28168 m!4615))

(assert (=> b!28168 m!4617))

(declare-fun m!4619 () Bool)

(assert (=> b!28168 m!4619))

(assert (=> d!1955 d!1991))

(declare-fun d!1993 () Bool)

(declare-fun lt!1162 () List!137)

(assert (=> d!1993 (= lt!1162 (list!63 x!9717))))

(assert (=> d!1993 (= lt!1162 (efficientList!11 (c!14823 x!9717) (efficientList$default$2!3 (c!14823 x!9717))))))

(assert (=> d!1993 (= (efficientList!9 x!9717) lt!1162)))

(declare-fun bs!552 () Bool)

(assert (= bs!552 d!1993))

(assert (=> bs!552 m!4495))

(declare-fun m!4621 () Bool)

(assert (=> bs!552 m!4621))

(assert (=> bs!552 m!4621))

(declare-fun m!4623 () Bool)

(assert (=> bs!552 m!4623))

(assert (=> d!1957 d!1993))

(declare-fun b!28171 () Bool)

(declare-fun e!11354 () List!137)

(assert (=> b!28171 (= e!11354 (list!67 (xs!2583 (c!14823 x!9718))))))

(declare-fun b!28169 () Bool)

(declare-fun e!11353 () List!137)

(assert (=> b!28169 (= e!11353 Nil!135)))

(declare-fun b!28170 () Bool)

(assert (=> b!28170 (= e!11353 e!11354)))

(declare-fun c!14836 () Bool)

(assert (=> b!28170 (= c!14836 (is-Leaf!129 (c!14823 x!9718)))))

(declare-fun b!28172 () Bool)

(assert (=> b!28172 (= e!11354 (++!31 (list!65 (left!302 (c!14823 x!9718))) (list!65 (right!632 (c!14823 x!9718)))))))

(declare-fun d!1995 () Bool)

(declare-fun c!14835 () Bool)

(assert (=> d!1995 (= c!14835 (is-Empty!6 (c!14823 x!9718)))))

(assert (=> d!1995 (= (list!65 (c!14823 x!9718)) e!11353)))

(assert (= (and d!1995 c!14835) b!28169))

(assert (= (and d!1995 (not c!14835)) b!28170))

(assert (= (and b!28170 c!14836) b!28171))

(assert (= (and b!28170 (not c!14836)) b!28172))

(declare-fun m!4625 () Bool)

(assert (=> b!28171 m!4625))

(declare-fun m!4627 () Bool)

(assert (=> b!28172 m!4627))

(declare-fun m!4629 () Bool)

(assert (=> b!28172 m!4629))

(assert (=> b!28172 m!4627))

(assert (=> b!28172 m!4629))

(declare-fun m!4631 () Bool)

(assert (=> b!28172 m!4631))

(assert (=> d!1951 d!1995))

(declare-fun d!1997 () Bool)

(declare-fun lt!1163 () List!137)

(assert (=> d!1997 (= lt!1163 (list!63 x!9719))))

(assert (=> d!1997 (= lt!1163 (efficientList!11 (c!14823 x!9719) (efficientList$default$2!3 (c!14823 x!9719))))))

(assert (=> d!1997 (= (efficientList!9 x!9719) lt!1163)))

(declare-fun bs!553 () Bool)

(assert (= bs!553 d!1997))

(assert (=> bs!553 m!4499))

(declare-fun m!4633 () Bool)

(assert (=> bs!553 m!4633))

(assert (=> bs!553 m!4633))

(declare-fun m!4635 () Bool)

(assert (=> bs!553 m!4635))

(assert (=> d!1961 d!1997))

(push 1)

(assert (not start!968))

(assert (not b!28071))

(assert (not b!28081))

(assert (not b!28163))

(assert (not d!1983))

(assert (not b!28083))

(assert (not d!1989))

(assert (not b!28164))

(assert (not b!28159))

(assert (not d!1993))

(assert (not b!28084))

(assert (not b!28171))

(assert (not b!28160))

(assert (not b!28167))

(assert (not b!28072))

(assert (not b!28082))

(assert (not d!1997))

(assert (not b!28172))

(assert (not b!28168))

(assert (not bs!431))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> start!968 d!1965))

(assert (=> start!968 d!1955))

(declare-fun d!2015 () Bool)

(declare-fun isBalanced!3 (Conc!6) Bool)

(assert (=> d!2015 (= (inv!408 x!9717) (isBalanced!3 (c!14823 x!9717)))))

(declare-fun bs!558 () Bool)

(assert (= bs!558 d!2015))

(declare-fun m!4685 () Bool)

(assert (=> bs!558 m!4685))

(assert (=> start!968 d!2015))

(declare-fun d!2017 () Bool)

(declare-fun c!14852 () Bool)

(assert (=> d!2017 (= c!14852 (is-StringLiteralValue!252 (toValue!29 thiss!4744 x!9717)))))

(declare-fun e!11369 () BalanceConc!12)

(assert (=> d!2017 (= (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717)) e!11369)))

(declare-fun b!28201 () Bool)

(declare-fun seqFromList!3 (List!137) BalanceConc!12)

(assert (=> b!28201 (= e!11369 (seqFromList!3 (value!5394 (toValue!29 thiss!4744 x!9717))))))

(declare-fun b!28202 () Bool)

(assert (=> b!28202 (= e!11369 (BalanceConc!13 Empty!6))))

(assert (= (and d!2017 c!14852) b!28201))

(assert (= (and d!2017 (not c!14852)) b!28202))

(declare-fun m!4687 () Bool)

(assert (=> b!28201 m!4687))

(assert (=> start!968 d!2017))

(declare-fun d!2019 () Bool)

(declare-fun choose!1123 (Int) Bool)

(assert (=> d!2019 (= (Forall!5 lambda!79) (choose!1123 lambda!79))))

(declare-fun bs!559 () Bool)

(assert (= bs!559 d!2019))

(declare-fun m!4689 () Bool)

(assert (=> bs!559 m!4689))

(assert (=> start!968 d!2019))

(assert (=> start!968 d!1957))

(assert (=> d!1993 d!1965))

(declare-fun b!28215 () Bool)

(declare-fun e!11377 () List!137)

(declare-fun call!2549 () List!137)

(assert (=> b!28215 (= e!11377 call!2549)))

(declare-fun b!28216 () Bool)

(declare-fun e!11378 () List!137)

(declare-fun lt!1181 () List!137)

(assert (=> b!28216 (= e!11378 lt!1181)))

(declare-fun b!28217 () Bool)

(declare-fun e!11376 () List!137)

(assert (=> b!28217 (= e!11376 e!11377)))

(declare-fun c!14860 () Bool)

(assert (=> b!28217 (= c!14860 (is-Leaf!129 (c!14823 x!9717)))))

(declare-fun b!28218 () Bool)

(declare-datatypes ((Unit!89 0))(
  ( (Unit!90) )
))
(declare-fun lt!1182 () Unit!89)

(declare-fun lt!1183 () Unit!89)

(assert (=> b!28218 (= lt!1182 lt!1183)))

(declare-fun lt!1180 () List!137)

(assert (=> b!28218 (= (++!31 (++!31 lt!1180 lt!1181) (efficientList$default$2!3 (c!14823 x!9717))) (++!31 lt!1180 call!2549))))

(declare-fun lemmaConcatAssociativity!4 (List!137 List!137 List!137) Unit!89)

(assert (=> b!28218 (= lt!1183 (lemmaConcatAssociativity!4 lt!1180 lt!1181 (efficientList$default$2!3 (c!14823 x!9717))))))

(assert (=> b!28218 (= lt!1181 (list!65 (right!632 (c!14823 x!9717))))))

(assert (=> b!28218 (= lt!1180 (list!65 (left!302 (c!14823 x!9717))))))

(assert (=> b!28218 (= e!11377 (efficientList!11 (left!302 (c!14823 x!9717)) (efficientList!11 (right!632 (c!14823 x!9717)) (efficientList$default$2!3 (c!14823 x!9717)))))))

(declare-fun b!28219 () Bool)

(assert (=> b!28219 (= e!11376 (efficientList$default$2!3 (c!14823 x!9717)))))

(declare-fun b!28220 () Bool)

(declare-fun efficientList!13 (IArray!13) List!137)

(assert (=> b!28220 (= e!11378 (efficientList!13 (xs!2583 (c!14823 x!9717))))))

(declare-fun bm!2544 () Bool)

(declare-fun c!14861 () Bool)

(assert (=> bm!2544 (= c!14861 c!14860)))

(assert (=> bm!2544 (= call!2549 (++!31 e!11378 (efficientList$default$2!3 (c!14823 x!9717))))))

(declare-fun d!2021 () Bool)

(declare-fun lt!1184 () List!137)

(assert (=> d!2021 (= lt!1184 (++!31 (list!65 (c!14823 x!9717)) (efficientList$default$2!3 (c!14823 x!9717))))))

(assert (=> d!2021 (= lt!1184 e!11376)))

(declare-fun c!14859 () Bool)

(assert (=> d!2021 (= c!14859 (is-Empty!6 (c!14823 x!9717)))))

(assert (=> d!2021 (= (efficientList!11 (c!14823 x!9717) (efficientList$default$2!3 (c!14823 x!9717))) lt!1184)))

(assert (= (and d!2021 c!14859) b!28219))

(assert (= (and d!2021 (not c!14859)) b!28217))

(assert (= (and b!28217 c!14860) b!28215))

(assert (= (and b!28217 (not c!14860)) b!28218))

(assert (= (or b!28215 b!28218) bm!2544))

(assert (= (and bm!2544 c!14861) b!28220))

(assert (= (and bm!2544 (not c!14861)) b!28216))

(assert (=> b!28218 m!4621))

(declare-fun m!4691 () Bool)

(assert (=> b!28218 m!4691))

(declare-fun m!4693 () Bool)

(assert (=> b!28218 m!4693))

(assert (=> b!28218 m!4621))

(declare-fun m!4695 () Bool)

(assert (=> b!28218 m!4695))

(assert (=> b!28218 m!4693))

(declare-fun m!4697 () Bool)

(assert (=> b!28218 m!4697))

(assert (=> b!28218 m!4595))

(declare-fun m!4699 () Bool)

(assert (=> b!28218 m!4699))

(declare-fun m!4701 () Bool)

(assert (=> b!28218 m!4701))

(assert (=> b!28218 m!4597))

(assert (=> b!28218 m!4621))

(assert (=> b!28218 m!4699))

(declare-fun m!4703 () Bool)

(assert (=> b!28220 m!4703))

(assert (=> bm!2544 m!4621))

(declare-fun m!4705 () Bool)

(assert (=> bm!2544 m!4705))

(assert (=> d!2021 m!4567))

(assert (=> d!2021 m!4567))

(assert (=> d!2021 m!4621))

(declare-fun m!4707 () Bool)

(assert (=> d!2021 m!4707))

(assert (=> d!1993 d!2021))

(declare-fun d!2023 () Bool)

(assert (=> d!2023 (= (efficientList$default$2!3 (c!14823 x!9717)) Nil!135)))

(assert (=> d!1993 d!2023))

(assert (=> d!1997 d!1953))

(declare-fun b!28221 () Bool)

(declare-fun e!11380 () List!137)

(declare-fun call!2550 () List!137)

(assert (=> b!28221 (= e!11380 call!2550)))

(declare-fun b!28222 () Bool)

(declare-fun e!11381 () List!137)

(declare-fun lt!1186 () List!137)

(assert (=> b!28222 (= e!11381 lt!1186)))

(declare-fun b!28223 () Bool)

(declare-fun e!11379 () List!137)

(assert (=> b!28223 (= e!11379 e!11380)))

(declare-fun c!14863 () Bool)

(assert (=> b!28223 (= c!14863 (is-Leaf!129 (c!14823 x!9719)))))

(declare-fun b!28224 () Bool)

(declare-fun lt!1187 () Unit!89)

(declare-fun lt!1188 () Unit!89)

(assert (=> b!28224 (= lt!1187 lt!1188)))

(declare-fun lt!1185 () List!137)

(assert (=> b!28224 (= (++!31 (++!31 lt!1185 lt!1186) (efficientList$default$2!3 (c!14823 x!9719))) (++!31 lt!1185 call!2550))))

(assert (=> b!28224 (= lt!1188 (lemmaConcatAssociativity!4 lt!1185 lt!1186 (efficientList$default$2!3 (c!14823 x!9719))))))

(assert (=> b!28224 (= lt!1186 (list!65 (right!632 (c!14823 x!9719))))))

(assert (=> b!28224 (= lt!1185 (list!65 (left!302 (c!14823 x!9719))))))

(assert (=> b!28224 (= e!11380 (efficientList!11 (left!302 (c!14823 x!9719)) (efficientList!11 (right!632 (c!14823 x!9719)) (efficientList$default$2!3 (c!14823 x!9719)))))))

(declare-fun b!28225 () Bool)

(assert (=> b!28225 (= e!11379 (efficientList$default$2!3 (c!14823 x!9719)))))

(declare-fun b!28226 () Bool)

(assert (=> b!28226 (= e!11381 (efficientList!13 (xs!2583 (c!14823 x!9719))))))

(declare-fun bm!2545 () Bool)

(declare-fun c!14864 () Bool)

(assert (=> bm!2545 (= c!14864 c!14863)))

(assert (=> bm!2545 (= call!2550 (++!31 e!11381 (efficientList$default$2!3 (c!14823 x!9719))))))

(declare-fun d!2025 () Bool)

(declare-fun lt!1189 () List!137)

(assert (=> d!2025 (= lt!1189 (++!31 (list!65 (c!14823 x!9719)) (efficientList$default$2!3 (c!14823 x!9719))))))

(assert (=> d!2025 (= lt!1189 e!11379)))

(declare-fun c!14862 () Bool)

(assert (=> d!2025 (= c!14862 (is-Empty!6 (c!14823 x!9719)))))

(assert (=> d!2025 (= (efficientList!11 (c!14823 x!9719) (efficientList$default$2!3 (c!14823 x!9719))) lt!1189)))

(assert (= (and d!2025 c!14862) b!28225))

(assert (= (and d!2025 (not c!14862)) b!28223))

(assert (= (and b!28223 c!14863) b!28221))

(assert (= (and b!28223 (not c!14863)) b!28224))

(assert (= (or b!28221 b!28224) bm!2545))

(assert (= (and bm!2545 c!14864) b!28226))

(assert (= (and bm!2545 (not c!14864)) b!28222))

(assert (=> b!28224 m!4633))

(declare-fun m!4709 () Bool)

(assert (=> b!28224 m!4709))

(declare-fun m!4711 () Bool)

(assert (=> b!28224 m!4711))

(assert (=> b!28224 m!4633))

(declare-fun m!4713 () Bool)

(assert (=> b!28224 m!4713))

(assert (=> b!28224 m!4711))

(declare-fun m!4715 () Bool)

(assert (=> b!28224 m!4715))

(assert (=> b!28224 m!4603))

(declare-fun m!4717 () Bool)

(assert (=> b!28224 m!4717))

(declare-fun m!4719 () Bool)

(assert (=> b!28224 m!4719))

(assert (=> b!28224 m!4605))

(assert (=> b!28224 m!4633))

(assert (=> b!28224 m!4717))

(declare-fun m!4721 () Bool)

(assert (=> b!28226 m!4721))

(assert (=> bm!2545 m!4633))

(declare-fun m!4723 () Bool)

(assert (=> bm!2545 m!4723))

(assert (=> d!2025 m!4555))

(assert (=> d!2025 m!4555))

(assert (=> d!2025 m!4633))

(declare-fun m!4725 () Bool)

(assert (=> d!2025 m!4725))

(assert (=> d!1997 d!2025))

(declare-fun d!2027 () Bool)

(assert (=> d!2027 (= (efficientList$default$2!3 (c!14823 x!9719)) Nil!135)))

(assert (=> d!1997 d!2027))

(declare-fun d!2029 () Bool)

(declare-fun c!14867 () Bool)

(assert (=> d!2029 (= c!14867 (is-Node!6 (c!14823 x!9718)))))

(declare-fun e!11386 () Bool)

(assert (=> d!2029 (= (inv!407 (c!14823 x!9718)) e!11386)))

(declare-fun b!28233 () Bool)

(declare-fun inv!411 (Conc!6) Bool)

(assert (=> b!28233 (= e!11386 (inv!411 (c!14823 x!9718)))))

(declare-fun b!28234 () Bool)

(declare-fun e!11387 () Bool)

(assert (=> b!28234 (= e!11386 e!11387)))

(declare-fun res!25817 () Bool)

(assert (=> b!28234 (= res!25817 (not (is-Leaf!129 (c!14823 x!9718))))))

(assert (=> b!28234 (=> res!25817 e!11387)))

(declare-fun b!28235 () Bool)

(declare-fun inv!412 (Conc!6) Bool)

(assert (=> b!28235 (= e!11387 (inv!412 (c!14823 x!9718)))))

(assert (= (and d!2029 c!14867) b!28233))

(assert (= (and d!2029 (not c!14867)) b!28234))

(assert (= (and b!28234 (not res!25817)) b!28235))

(declare-fun m!4727 () Bool)

(assert (=> b!28233 m!4727))

(declare-fun m!4729 () Bool)

(assert (=> b!28235 m!4729))

(assert (=> b!28083 d!2029))

(declare-fun d!2031 () Bool)

(declare-fun c!14868 () Bool)

(assert (=> d!2031 (= c!14868 (is-Node!6 (c!14823 x!9719)))))

(declare-fun e!11388 () Bool)

(assert (=> d!2031 (= (inv!407 (c!14823 x!9719)) e!11388)))

(declare-fun b!28236 () Bool)

(assert (=> b!28236 (= e!11388 (inv!411 (c!14823 x!9719)))))

(declare-fun b!28237 () Bool)

(declare-fun e!11389 () Bool)

(assert (=> b!28237 (= e!11388 e!11389)))

(declare-fun res!25818 () Bool)

(assert (=> b!28237 (= res!25818 (not (is-Leaf!129 (c!14823 x!9719))))))

(assert (=> b!28237 (=> res!25818 e!11389)))

(declare-fun b!28238 () Bool)

(assert (=> b!28238 (= e!11389 (inv!412 (c!14823 x!9719)))))

(assert (= (and d!2031 c!14868) b!28236))

(assert (= (and d!2031 (not c!14868)) b!28237))

(assert (= (and b!28237 (not res!25818)) b!28238))

(declare-fun m!4731 () Bool)

(assert (=> b!28236 m!4731))

(declare-fun m!4733 () Bool)

(assert (=> b!28238 m!4733))

(assert (=> b!28084 d!2031))

(declare-fun d!2033 () Bool)

(declare-fun c!14869 () Bool)

(assert (=> d!2033 (= c!14869 (is-Node!6 (c!14823 x!9717)))))

(declare-fun e!11390 () Bool)

(assert (=> d!2033 (= (inv!407 (c!14823 x!9717)) e!11390)))

(declare-fun b!28239 () Bool)

(assert (=> b!28239 (= e!11390 (inv!411 (c!14823 x!9717)))))

(declare-fun b!28240 () Bool)

(declare-fun e!11391 () Bool)

(assert (=> b!28240 (= e!11390 e!11391)))

(declare-fun res!25819 () Bool)

(assert (=> b!28240 (= res!25819 (not (is-Leaf!129 (c!14823 x!9717))))))

(assert (=> b!28240 (=> res!25819 e!11391)))

(declare-fun b!28241 () Bool)

(assert (=> b!28241 (= e!11391 (inv!412 (c!14823 x!9717)))))

(assert (= (and d!2033 c!14869) b!28239))

(assert (= (and d!2033 (not c!14869)) b!28240))

(assert (= (and b!28240 (not res!25819)) b!28241))

(declare-fun m!4735 () Bool)

(assert (=> b!28239 m!4735))

(declare-fun m!4737 () Bool)

(assert (=> b!28241 m!4737))

(assert (=> b!28081 d!2033))

(assert (=> bs!431 d!1955))

(assert (=> bs!431 d!2017))

(assert (=> bs!431 d!1957))

(assert (=> bs!431 d!1965))

(assert (=> b!28082 d!1963))

(assert (=> b!28082 d!1961))

(assert (=> d!1983 d!1951))

(declare-fun b!28242 () Bool)

(declare-fun e!11393 () List!137)

(declare-fun call!2551 () List!137)

(assert (=> b!28242 (= e!11393 call!2551)))

(declare-fun b!28243 () Bool)

(declare-fun e!11394 () List!137)

(declare-fun lt!1191 () List!137)

(assert (=> b!28243 (= e!11394 lt!1191)))

(declare-fun b!28244 () Bool)

(declare-fun e!11392 () List!137)

(assert (=> b!28244 (= e!11392 e!11393)))

(declare-fun c!14871 () Bool)

(assert (=> b!28244 (= c!14871 (is-Leaf!129 (c!14823 x!9718)))))

(declare-fun b!28245 () Bool)

(declare-fun lt!1192 () Unit!89)

(declare-fun lt!1193 () Unit!89)

(assert (=> b!28245 (= lt!1192 lt!1193)))

(declare-fun lt!1190 () List!137)

(assert (=> b!28245 (= (++!31 (++!31 lt!1190 lt!1191) (efficientList$default$2!3 (c!14823 x!9718))) (++!31 lt!1190 call!2551))))

(assert (=> b!28245 (= lt!1193 (lemmaConcatAssociativity!4 lt!1190 lt!1191 (efficientList$default$2!3 (c!14823 x!9718))))))

(assert (=> b!28245 (= lt!1191 (list!65 (right!632 (c!14823 x!9718))))))

(assert (=> b!28245 (= lt!1190 (list!65 (left!302 (c!14823 x!9718))))))

(assert (=> b!28245 (= e!11393 (efficientList!11 (left!302 (c!14823 x!9718)) (efficientList!11 (right!632 (c!14823 x!9718)) (efficientList$default$2!3 (c!14823 x!9718)))))))

(declare-fun b!28246 () Bool)

(assert (=> b!28246 (= e!11392 (efficientList$default$2!3 (c!14823 x!9718)))))

(declare-fun b!28247 () Bool)

(assert (=> b!28247 (= e!11394 (efficientList!13 (xs!2583 (c!14823 x!9718))))))

(declare-fun bm!2546 () Bool)

(declare-fun c!14872 () Bool)

(assert (=> bm!2546 (= c!14872 c!14871)))

(assert (=> bm!2546 (= call!2551 (++!31 e!11394 (efficientList$default$2!3 (c!14823 x!9718))))))

(declare-fun d!2035 () Bool)

(declare-fun lt!1194 () List!137)

(assert (=> d!2035 (= lt!1194 (++!31 (list!65 (c!14823 x!9718)) (efficientList$default$2!3 (c!14823 x!9718))))))

(assert (=> d!2035 (= lt!1194 e!11392)))

(declare-fun c!14870 () Bool)

(assert (=> d!2035 (= c!14870 (is-Empty!6 (c!14823 x!9718)))))

(assert (=> d!2035 (= (efficientList!11 (c!14823 x!9718) (efficientList$default$2!3 (c!14823 x!9718))) lt!1194)))

(assert (= (and d!2035 c!14870) b!28246))

(assert (= (and d!2035 (not c!14870)) b!28244))

(assert (= (and b!28244 c!14871) b!28242))

(assert (= (and b!28244 (not c!14871)) b!28245))

(assert (= (or b!28242 b!28245) bm!2546))

(assert (= (and bm!2546 c!14872) b!28247))

(assert (= (and bm!2546 (not c!14872)) b!28243))

(assert (=> b!28245 m!4589))

(declare-fun m!4739 () Bool)

(assert (=> b!28245 m!4739))

(declare-fun m!4741 () Bool)

(assert (=> b!28245 m!4741))

(assert (=> b!28245 m!4589))

(declare-fun m!4743 () Bool)

(assert (=> b!28245 m!4743))

(assert (=> b!28245 m!4741))

(declare-fun m!4745 () Bool)

(assert (=> b!28245 m!4745))

(assert (=> b!28245 m!4627))

(declare-fun m!4747 () Bool)

(assert (=> b!28245 m!4747))

(declare-fun m!4749 () Bool)

(assert (=> b!28245 m!4749))

(assert (=> b!28245 m!4629))

(assert (=> b!28245 m!4589))

(assert (=> b!28245 m!4747))

(declare-fun m!4751 () Bool)

(assert (=> b!28247 m!4751))

(assert (=> bm!2546 m!4589))

(declare-fun m!4753 () Bool)

(assert (=> bm!2546 m!4753))

(assert (=> d!2035 m!4553))

(assert (=> d!2035 m!4553))

(assert (=> d!2035 m!4589))

(declare-fun m!4755 () Bool)

(assert (=> d!2035 m!4755))

(assert (=> d!1983 d!2035))

(declare-fun d!2037 () Bool)

(assert (=> d!2037 (= (efficientList$default$2!3 (c!14823 x!9718)) Nil!135)))

(assert (=> d!1983 d!2037))

(assert (=> d!1989 d!1955))

(declare-fun b!28248 () Bool)

(declare-fun e!11396 () List!137)

(declare-fun call!2552 () List!137)

(assert (=> b!28248 (= e!11396 call!2552)))

(declare-fun b!28249 () Bool)

(declare-fun e!11397 () List!137)

(declare-fun lt!1196 () List!137)

(assert (=> b!28249 (= e!11397 lt!1196)))

(declare-fun b!28250 () Bool)

(declare-fun e!11395 () List!137)

(assert (=> b!28250 (= e!11395 e!11396)))

(declare-fun c!14874 () Bool)

(assert (=> b!28250 (= c!14874 (is-Leaf!129 (c!14823 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717)))))))

(declare-fun b!28251 () Bool)

(declare-fun lt!1197 () Unit!89)

(declare-fun lt!1198 () Unit!89)

(assert (=> b!28251 (= lt!1197 lt!1198)))

(declare-fun lt!1195 () List!137)

(assert (=> b!28251 (= (++!31 (++!31 lt!1195 lt!1196) (efficientList$default$2!3 (c!14823 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717))))) (++!31 lt!1195 call!2552))))

(assert (=> b!28251 (= lt!1198 (lemmaConcatAssociativity!4 lt!1195 lt!1196 (efficientList$default$2!3 (c!14823 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717))))))))

(assert (=> b!28251 (= lt!1196 (list!65 (right!632 (c!14823 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717))))))))

(assert (=> b!28251 (= lt!1195 (list!65 (left!302 (c!14823 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717))))))))

(assert (=> b!28251 (= e!11396 (efficientList!11 (left!302 (c!14823 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717)))) (efficientList!11 (right!632 (c!14823 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717)))) (efficientList$default$2!3 (c!14823 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717)))))))))

(declare-fun b!28252 () Bool)

(assert (=> b!28252 (= e!11395 (efficientList$default$2!3 (c!14823 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717)))))))

(declare-fun b!28253 () Bool)

(assert (=> b!28253 (= e!11397 (efficientList!13 (xs!2583 (c!14823 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717))))))))

(declare-fun bm!2547 () Bool)

(declare-fun c!14875 () Bool)

(assert (=> bm!2547 (= c!14875 c!14874)))

(assert (=> bm!2547 (= call!2552 (++!31 e!11397 (efficientList$default$2!3 (c!14823 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717))))))))

(declare-fun d!2039 () Bool)

(declare-fun lt!1199 () List!137)

(assert (=> d!2039 (= lt!1199 (++!31 (list!65 (c!14823 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717)))) (efficientList$default$2!3 (c!14823 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717))))))))

(assert (=> d!2039 (= lt!1199 e!11395)))

(declare-fun c!14873 () Bool)

(assert (=> d!2039 (= c!14873 (is-Empty!6 (c!14823 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717)))))))

(assert (=> d!2039 (= (efficientList!11 (c!14823 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717))) (efficientList$default$2!3 (c!14823 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717))))) lt!1199)))

(assert (= (and d!2039 c!14873) b!28252))

(assert (= (and d!2039 (not c!14873)) b!28250))

(assert (= (and b!28250 c!14874) b!28248))

(assert (= (and b!28250 (not c!14874)) b!28251))

(assert (= (or b!28248 b!28251) bm!2547))

(assert (= (and bm!2547 c!14875) b!28253))

(assert (= (and bm!2547 (not c!14875)) b!28249))

(assert (=> b!28251 m!4609))

(declare-fun m!4757 () Bool)

(assert (=> b!28251 m!4757))

(declare-fun m!4759 () Bool)

(assert (=> b!28251 m!4759))

(assert (=> b!28251 m!4609))

(declare-fun m!4761 () Bool)

(assert (=> b!28251 m!4761))

(assert (=> b!28251 m!4759))

(declare-fun m!4763 () Bool)

(assert (=> b!28251 m!4763))

(assert (=> b!28251 m!4615))

(declare-fun m!4765 () Bool)

(assert (=> b!28251 m!4765))

(declare-fun m!4767 () Bool)

(assert (=> b!28251 m!4767))

(assert (=> b!28251 m!4617))

(assert (=> b!28251 m!4609))

(assert (=> b!28251 m!4765))

(declare-fun m!4769 () Bool)

(assert (=> b!28253 m!4769))

(assert (=> bm!2547 m!4609))

(declare-fun m!4771 () Bool)

(assert (=> bm!2547 m!4771))

(assert (=> d!2039 m!4557))

(assert (=> d!2039 m!4557))

(assert (=> d!2039 m!4609))

(declare-fun m!4773 () Bool)

(assert (=> d!2039 m!4773))

(assert (=> d!1989 d!2039))

(declare-fun d!2041 () Bool)

(assert (=> d!2041 (= (efficientList$default$2!3 (c!14823 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9717)))) Nil!135)))

(assert (=> d!1989 d!2041))

(declare-fun bs!560 () Bool)

(declare-fun d!2043 () Bool)

(assert (= bs!560 (and d!2043 start!968)))

(declare-fun lambda!107 () Int)

(assert (=> bs!560 (not (= lambda!107 lambda!79))))

(assert (=> d!2043 true))

(declare-fun order!3 () Int)

(declare-fun order!1 () Int)

(declare-fun dynLambda!2 (Int Int) Int)

(declare-fun dynLambda!3 (Int Int) Int)

(assert (=> d!2043 (< (dynLambda!2 order!1 lambda!80) (dynLambda!3 order!3 lambda!107))))

(assert (=> d!2043 true))

(declare-fun order!5 () Int)

(declare-fun dynLambda!4 (Int Int) Int)

(assert (=> d!2043 (< (dynLambda!4 order!5 lambda!81) (dynLambda!3 order!3 lambda!107))))

(assert (=> d!2043 (= (semiInverseModEq!3 lambda!80 lambda!81) (Forall!5 lambda!107))))

(declare-fun bs!561 () Bool)

(assert (= bs!561 d!2043))

(declare-fun m!4775 () Bool)

(assert (=> bs!561 m!4775))

(assert (=> b!28071 d!2043))

(assert (=> b!28071 d!2019))

(assert (=> b!28072 d!1953))

(declare-fun d!2045 () Bool)

(declare-fun choose!1124 (Int) Bool)

(assert (=> d!2045 (= (Forall2!1 lambda!82) (choose!1124 lambda!82))))

(declare-fun bs!562 () Bool)

(assert (= bs!562 d!2045))

(declare-fun m!4777 () Bool)

(assert (=> bs!562 m!4777))

(assert (=> b!28072 d!2045))

(declare-fun d!2047 () Bool)

(assert (=> d!2047 (= (inv!408 x!9719) (isBalanced!3 (c!14823 x!9719)))))

(declare-fun bs!563 () Bool)

(assert (= bs!563 d!2047))

(declare-fun m!4779 () Bool)

(assert (=> bs!563 m!4779))

(assert (=> b!28072 d!2047))

(declare-fun d!2049 () Bool)

(assert (=> d!2049 (= (inv!408 x!9718) (isBalanced!3 (c!14823 x!9718)))))

(declare-fun bs!564 () Bool)

(assert (= bs!564 d!2049))

(declare-fun m!4781 () Bool)

(assert (=> bs!564 m!4781))

(assert (=> b!28072 d!2049))

(assert (=> b!28072 d!1951))

(declare-fun e!11402 () Bool)

(declare-fun b!28264 () Bool)

(declare-fun tp!19328 () Bool)

(declare-fun tp!19327 () Bool)

(assert (=> b!28264 (= e!11402 (and (inv!407 (left!302 (c!14823 x!9718))) tp!19327 (inv!407 (right!632 (c!14823 x!9718))) tp!19328))))

(declare-fun b!28265 () Bool)

(declare-fun inv!413 (IArray!13) Bool)

(assert (=> b!28265 (= e!11402 (inv!413 (xs!2583 (c!14823 x!9718))))))

(assert (=> b!28083 (= tp!19313 (and (inv!407 (c!14823 x!9718)) e!11402))))

(assert (= (and b!28083 (is-Node!6 (c!14823 x!9718))) b!28264))

(assert (= (and b!28083 (is-Leaf!129 (c!14823 x!9718))) b!28265))

(declare-fun m!4783 () Bool)

(assert (=> b!28264 m!4783))

(declare-fun m!4785 () Bool)

(assert (=> b!28264 m!4785))

(declare-fun m!4787 () Bool)

(assert (=> b!28265 m!4787))

(assert (=> b!28083 m!4509))

(declare-fun e!11404 () Bool)

(declare-fun b!28266 () Bool)

(declare-fun tp!19329 () Bool)

(declare-fun tp!19330 () Bool)

(assert (=> b!28266 (= e!11404 (and (inv!407 (left!302 (c!14823 x!9719))) tp!19329 (inv!407 (right!632 (c!14823 x!9719))) tp!19330))))

(declare-fun b!28267 () Bool)

(assert (=> b!28267 (= e!11404 (inv!413 (xs!2583 (c!14823 x!9719))))))

(assert (=> b!28084 (= tp!19312 (and (inv!407 (c!14823 x!9719)) e!11404))))

(assert (= (and b!28084 (is-Node!6 (c!14823 x!9719))) b!28266))

(assert (= (and b!28084 (is-Leaf!129 (c!14823 x!9719))) b!28267))

(declare-fun m!4789 () Bool)

(assert (=> b!28266 m!4789))

(declare-fun m!4791 () Bool)

(assert (=> b!28266 m!4791))

(declare-fun m!4793 () Bool)

(assert (=> b!28267 m!4793))

(assert (=> b!28084 m!4511))

(declare-fun e!11406 () Bool)

(declare-fun b!28268 () Bool)

(declare-fun tp!19332 () Bool)

(declare-fun tp!19331 () Bool)

(assert (=> b!28268 (= e!11406 (and (inv!407 (left!302 (c!14823 x!9717))) tp!19331 (inv!407 (right!632 (c!14823 x!9717))) tp!19332))))

(declare-fun b!28269 () Bool)

(assert (=> b!28269 (= e!11406 (inv!413 (xs!2583 (c!14823 x!9717))))))

(assert (=> b!28081 (= tp!19311 (and (inv!407 (c!14823 x!9717)) e!11406))))

(assert (= (and b!28081 (is-Node!6 (c!14823 x!9717))) b!28268))

(assert (= (and b!28081 (is-Leaf!129 (c!14823 x!9717))) b!28269))

(declare-fun m!4795 () Bool)

(assert (=> b!28268 m!4795))

(declare-fun m!4797 () Bool)

(assert (=> b!28268 m!4797))

(declare-fun m!4799 () Bool)

(assert (=> b!28269 m!4799))

(assert (=> b!28081 m!4485))

(push 1)

(assert (not bm!2544))

(assert (not b!28236))

(assert (not b!28233))

(assert (not b!28164))

(assert (not d!2035))

(assert (not b!28159))

(assert (not bm!2545))

(assert (not b!28171))

(assert (not b!28268))

(assert (not b!28241))

(assert (not b!28253))

(assert (not b!28251))

(assert (not b!28266))

(assert (not d!2043))

(assert (not b!28081))

(assert (not b!28220))

(assert (not d!2019))

(assert (not b!28163))

(assert (not b!28269))

(assert (not b!28218))

(assert (not d!2047))

(assert (not b!28224))

(assert (not b!28083))

(assert (not b!28226))

(assert (not d!2039))

(assert (not b!28267))

(assert (not bm!2546))

(assert (not b!28265))

(assert (not b!28235))

(assert (not d!2021))

(assert (not b!28247))

(assert (not b!28172))

(assert (not d!2015))

(assert (not b!28239))

(assert (not d!2025))

(assert (not b!28084))

(assert (not b!28168))

(assert (not b!28245))

(assert (not b!28264))

(assert (not b!28160))

(assert (not b!28238))

(assert (not b!28201))

(assert (not bm!2547))

(assert (not d!2049))

(assert (not d!2045))

(assert (not b!28167))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

