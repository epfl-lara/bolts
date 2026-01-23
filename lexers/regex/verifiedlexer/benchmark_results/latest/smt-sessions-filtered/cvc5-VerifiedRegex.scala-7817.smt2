; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!410672 () Bool)

(assert start!410672)

(assert (=> start!410672 true))

(declare-fun b!4276323 () Bool)

(assert (=> b!4276323 true))

(assert (=> b!4276323 true))

(assert (=> b!4276323 true))

(declare-fun b!4276332 () Bool)

(declare-fun e!2654955 () Bool)

(declare-datatypes ((List!47466 0))(
  ( (Nil!47342) (Cons!47342 (h!52762 (_ BitVec 16)) (t!353991 List!47466)) )
))
(declare-datatypes ((IArray!28653 0))(
  ( (IArray!28654 (innerList!14384 List!47466)) )
))
(declare-datatypes ((Conc!14324 0))(
  ( (Node!14324 (left!35263 Conc!14324) (right!35593 Conc!14324) (csize!28878 Int) (cheight!14535 Int)) (Leaf!22142 (xs!17630 IArray!28653) (csize!28879 Int)) (Empty!14324) )
))
(declare-datatypes ((BalanceConc!28158 0))(
  ( (BalanceConc!28159 (c!728260 Conc!14324)) )
))
(declare-fun x!743571 () BalanceConc!28158)

(declare-fun tp!1308609 () Bool)

(declare-fun inv!62638 (Conc!14324) Bool)

(assert (=> b!4276332 (= e!2654955 (and (inv!62638 (c!728260 x!743571)) tp!1308609))))

(declare-datatypes ((CommentValueInjection!32 0))(
  ( (CommentValueInjection!33) )
))
(declare-fun thiss!2788 () CommentValueInjection!32)

(declare-fun inst!1834 () Bool)

(declare-fun inv!62639 (BalanceConc!28158) Bool)

(declare-fun list!17245 (BalanceConc!28158) List!47466)

(declare-datatypes ((TokenValue!8297 0))(
  ( (FloatLiteralValue!16594 (text!58524 List!47466)) (TokenValueExt!8296 (__x!28743 Int)) (Broken!41485 (value!250348 List!47466)) (Object!8420) (End!8297) (Def!8297) (Underscore!8297) (Match!8297) (Else!8297) (Error!8297) (Case!8297) (If!8297) (Extends!8297) (Abstract!8297) (Class!8297) (Val!8297) (DelimiterValue!16594 (del!8357 List!47466)) (KeywordValue!8303 (value!250349 List!47466)) (CommentValue!16594 (value!250350 List!47466)) (WhitespaceValue!16594 (value!250351 List!47466)) (IndentationValue!8297 (value!250352 List!47466)) (String!55368) (Int32!8297) (Broken!41486 (value!250353 List!47466)) (Boolean!8298) (Unit!66293) (OperatorValue!8300 (op!8357 List!47466)) (IdentifierValue!16594 (value!250354 List!47466)) (IdentifierValue!16595 (value!250355 List!47466)) (WhitespaceValue!16595 (value!250356 List!47466)) (True!16594) (False!16594) (Broken!41487 (value!250357 List!47466)) (Broken!41488 (value!250358 List!47466)) (True!16595) (RightBrace!8297) (RightBracket!8297) (Colon!8297) (Null!8297) (Comma!8297) (LeftBracket!8297) (False!16595) (LeftBrace!8297) (ImaginaryLiteralValue!8297 (text!58525 List!47466)) (StringLiteralValue!24891 (value!250359 List!47466)) (EOFValue!8297 (value!250360 List!47466)) (IdentValue!8297 (value!250361 List!47466)) (DelimiterValue!16595 (value!250362 List!47466)) (DedentValue!8297 (value!250363 List!47466)) (NewLineValue!8297 (value!250364 List!47466)) (IntegerValue!24891 (value!250365 (_ BitVec 32)) (text!58526 List!47466)) (IntegerValue!24892 (value!250366 Int) (text!58527 List!47466)) (Times!8297) (Or!8297) (Equal!8297) (Minus!8297) (Broken!41489 (value!250367 List!47466)) (And!8297) (Div!8297) (LessEqual!8297) (Mod!8297) (Concat!21195) (Not!8297) (Plus!8297) (SpaceValue!8297 (value!250368 List!47466)) (IntegerValue!24893 (value!250369 Int) (text!58528 List!47466)) (StringLiteralValue!24892 (text!58529 List!47466)) (FloatLiteralValue!16595 (text!58530 List!47466)) (BytesLiteralValue!8297 (value!250370 List!47466)) (CommentValue!16595 (value!250371 List!47466)) (StringLiteralValue!24893 (value!250372 List!47466)) (ErrorTokenValue!8297 (msg!8358 List!47466)) )
))
(declare-fun toCharacters!14 (CommentValueInjection!32 TokenValue!8297) BalanceConc!28158)

(declare-fun toValue!21 (CommentValueInjection!32 BalanceConc!28158) TokenValue!8297)

(assert (=> start!410672 (= inst!1834 (=> (and (inv!62639 x!743571) e!2654955) (= (list!17245 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571))) (list!17245 x!743571))))))

(assert (= start!410672 b!4276332))

(declare-fun m!4872091 () Bool)

(assert (=> b!4276332 m!4872091))

(declare-fun m!4872093 () Bool)

(assert (=> start!410672 m!4872093))

(declare-fun m!4872095 () Bool)

(assert (=> start!410672 m!4872095))

(assert (=> start!410672 m!4872095))

(declare-fun m!4872097 () Bool)

(assert (=> start!410672 m!4872097))

(assert (=> start!410672 m!4872093))

(declare-fun m!4872099 () Bool)

(assert (=> start!410672 m!4872099))

(declare-fun m!4872101 () Bool)

(assert (=> start!410672 m!4872101))

(declare-fun res!1755962 () Bool)

(declare-fun e!2654957 () Bool)

(assert (=> b!4276323 (=> res!1755962 e!2654957)))

(declare-fun x!743572 () BalanceConc!28158)

(declare-fun x!743573 () BalanceConc!28158)

(assert (=> b!4276323 (= res!1755962 (not (= (list!17245 x!743572) (list!17245 x!743573))))))

(declare-fun e!2654956 () Bool)

(declare-fun inst!1835 () Bool)

(declare-fun e!2654958 () Bool)

(assert (=> b!4276323 (= inst!1835 (=> (and (inv!62639 x!743572) e!2654956 (inv!62639 x!743573) e!2654958) e!2654957))))

(declare-fun b!4276333 () Bool)

(assert (=> b!4276333 (= e!2654957 (= (toValue!21 thiss!2788 x!743572) (toValue!21 thiss!2788 x!743573)))))

(declare-fun b!4276334 () Bool)

(declare-fun tp!1308611 () Bool)

(assert (=> b!4276334 (= e!2654956 (and (inv!62638 (c!728260 x!743572)) tp!1308611))))

(declare-fun b!4276335 () Bool)

(declare-fun tp!1308610 () Bool)

(assert (=> b!4276335 (= e!2654958 (and (inv!62638 (c!728260 x!743573)) tp!1308610))))

(assert (= (and b!4276323 (not res!1755962)) b!4276333))

(assert (= b!4276323 b!4276334))

(assert (= b!4276323 b!4276335))

(declare-fun m!4872103 () Bool)

(assert (=> b!4276323 m!4872103))

(declare-fun m!4872105 () Bool)

(assert (=> b!4276323 m!4872105))

(declare-fun m!4872107 () Bool)

(assert (=> b!4276323 m!4872107))

(declare-fun m!4872109 () Bool)

(assert (=> b!4276323 m!4872109))

(declare-fun m!4872111 () Bool)

(assert (=> b!4276333 m!4872111))

(declare-fun m!4872113 () Bool)

(assert (=> b!4276333 m!4872113))

(declare-fun m!4872115 () Bool)

(assert (=> b!4276334 m!4872115))

(declare-fun m!4872117 () Bool)

(assert (=> b!4276335 m!4872117))

(declare-fun bs!602283 () Bool)

(declare-fun neg-inst!1834 () Bool)

(declare-fun s!240450 () Bool)

(assert (= bs!602283 (and neg-inst!1834 s!240450)))

(assert (=> bs!602283 (=> true (= (list!17245 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571))) (list!17245 x!743571)))))

(assert (=> m!4872101 m!4872093))

(assert (=> m!4872101 m!4872095))

(assert (=> m!4872101 m!4872097))

(assert (=> m!4872101 s!240450))

(assert (=> m!4872093 s!240450))

(declare-fun bs!602284 () Bool)

(assert (= bs!602284 (and neg-inst!1834 start!410672)))

(assert (=> bs!602284 (= true inst!1834)))

(declare-fun bs!602285 () Bool)

(declare-fun neg-inst!1835 () Bool)

(declare-fun s!240452 () Bool)

(assert (= bs!602285 (and neg-inst!1835 s!240452)))

(declare-fun res!1755963 () Bool)

(declare-fun e!2654959 () Bool)

(assert (=> bs!602285 (=> res!1755963 e!2654959)))

(assert (=> bs!602285 (= res!1755963 (not (= (list!17245 x!743572) (list!17245 x!743572))))))

(assert (=> bs!602285 (=> true e!2654959)))

(declare-fun b!4276336 () Bool)

(assert (=> b!4276336 (= e!2654959 (= (toValue!21 thiss!2788 x!743572) (toValue!21 thiss!2788 x!743572)))))

(assert (= (and bs!602285 (not res!1755963)) b!4276336))

(assert (=> m!4872103 s!240452))

(assert (=> m!4872103 s!240452))

(declare-fun bs!602286 () Bool)

(assert (= bs!602286 (and m!4872111 m!4872103)))

(assert (=> bs!602286 s!240452))

(assert (=> m!4872111 s!240452))

(assert (=> bs!602286 s!240452))

(assert (=> m!4872111 s!240452))

(declare-fun bs!602287 () Bool)

(declare-fun s!240454 () Bool)

(assert (= bs!602287 (and neg-inst!1835 s!240454)))

(declare-fun res!1755964 () Bool)

(declare-fun e!2654960 () Bool)

(assert (=> bs!602287 (=> res!1755964 e!2654960)))

(assert (=> bs!602287 (= res!1755964 (not (= (list!17245 x!743572) (list!17245 x!743573))))))

(assert (=> bs!602287 (=> true e!2654960)))

(declare-fun b!4276337 () Bool)

(assert (=> b!4276337 (= e!2654960 (= (toValue!21 thiss!2788 x!743572) (toValue!21 thiss!2788 x!743573)))))

(assert (= (and bs!602287 (not res!1755964)) b!4276337))

(declare-fun bs!602288 () Bool)

(assert (= bs!602288 (and m!4872105 m!4872103 m!4872111)))

(assert (=> bs!602288 m!4872103))

(assert (=> bs!602288 m!4872105))

(assert (=> bs!602288 s!240454))

(declare-fun bs!602289 () Bool)

(declare-fun s!240456 () Bool)

(assert (= bs!602289 (and neg-inst!1835 s!240456)))

(declare-fun res!1755965 () Bool)

(declare-fun e!2654961 () Bool)

(assert (=> bs!602289 (=> res!1755965 e!2654961)))

(assert (=> bs!602289 (= res!1755965 (not (= (list!17245 x!743573) (list!17245 x!743573))))))

(assert (=> bs!602289 (=> true e!2654961)))

(declare-fun b!4276338 () Bool)

(assert (=> b!4276338 (= e!2654961 (= (toValue!21 thiss!2788 x!743573) (toValue!21 thiss!2788 x!743573)))))

(assert (= (and bs!602289 (not res!1755965)) b!4276338))

(assert (=> m!4872105 s!240456))

(declare-fun bs!602290 () Bool)

(declare-fun s!240458 () Bool)

(assert (= bs!602290 (and neg-inst!1835 s!240458)))

(declare-fun res!1755966 () Bool)

(declare-fun e!2654962 () Bool)

(assert (=> bs!602290 (=> res!1755966 e!2654962)))

(assert (=> bs!602290 (= res!1755966 (not (= (list!17245 x!743573) (list!17245 x!743572))))))

(assert (=> bs!602290 (=> true e!2654962)))

(declare-fun b!4276339 () Bool)

(assert (=> b!4276339 (= e!2654962 (= (toValue!21 thiss!2788 x!743573) (toValue!21 thiss!2788 x!743572)))))

(assert (= (and bs!602290 (not res!1755966)) b!4276339))

(assert (=> bs!602288 m!4872105))

(assert (=> bs!602288 m!4872103))

(assert (=> bs!602288 s!240458))

(assert (=> m!4872105 s!240456))

(declare-fun bs!602291 () Bool)

(declare-fun s!240460 () Bool)

(assert (= bs!602291 (and neg-inst!1835 s!240460)))

(declare-fun res!1755967 () Bool)

(declare-fun e!2654963 () Bool)

(assert (=> bs!602291 (=> res!1755967 e!2654963)))

(assert (=> bs!602291 (= res!1755967 (not (= (list!17245 x!743573) (list!17245 x!743571))))))

(assert (=> bs!602291 (=> true e!2654963)))

(declare-fun b!4276340 () Bool)

(assert (=> b!4276340 (= e!2654963 (= (toValue!21 thiss!2788 x!743573) (toValue!21 thiss!2788 x!743571)))))

(assert (= (and bs!602291 (not res!1755967)) b!4276340))

(declare-fun bs!602292 () Bool)

(assert (= bs!602292 (and m!4872101 m!4872105)))

(assert (=> bs!602292 m!4872105))

(assert (=> bs!602292 m!4872101))

(assert (=> bs!602292 s!240460))

(declare-fun bs!602293 () Bool)

(declare-fun s!240462 () Bool)

(assert (= bs!602293 (and neg-inst!1835 s!240462)))

(declare-fun res!1755968 () Bool)

(declare-fun e!2654964 () Bool)

(assert (=> bs!602293 (=> res!1755968 e!2654964)))

(assert (=> bs!602293 (= res!1755968 (not (= (list!17245 x!743572) (list!17245 x!743571))))))

(assert (=> bs!602293 (=> true e!2654964)))

(declare-fun b!4276341 () Bool)

(assert (=> b!4276341 (= e!2654964 (= (toValue!21 thiss!2788 x!743572) (toValue!21 thiss!2788 x!743571)))))

(assert (= (and bs!602293 (not res!1755968)) b!4276341))

(declare-fun bs!602294 () Bool)

(assert (= bs!602294 (and m!4872101 m!4872103 m!4872111)))

(assert (=> bs!602294 m!4872103))

(assert (=> bs!602294 m!4872101))

(assert (=> bs!602294 s!240462))

(declare-fun bs!602295 () Bool)

(declare-fun s!240464 () Bool)

(assert (= bs!602295 (and neg-inst!1835 s!240464)))

(declare-fun res!1755969 () Bool)

(declare-fun e!2654965 () Bool)

(assert (=> bs!602295 (=> res!1755969 e!2654965)))

(assert (=> bs!602295 (= res!1755969 (not (= (list!17245 x!743571) (list!17245 x!743571))))))

(assert (=> bs!602295 (=> true e!2654965)))

(declare-fun b!4276342 () Bool)

(assert (=> b!4276342 (= e!2654965 (= (toValue!21 thiss!2788 x!743571) (toValue!21 thiss!2788 x!743571)))))

(assert (= (and bs!602295 (not res!1755969)) b!4276342))

(assert (=> m!4872101 s!240464))

(declare-fun bs!602296 () Bool)

(declare-fun s!240466 () Bool)

(assert (= bs!602296 (and neg-inst!1835 s!240466)))

(declare-fun res!1755970 () Bool)

(declare-fun e!2654966 () Bool)

(assert (=> bs!602296 (=> res!1755970 e!2654966)))

(assert (=> bs!602296 (= res!1755970 (not (= (list!17245 x!743571) (list!17245 x!743573))))))

(assert (=> bs!602296 (=> true e!2654966)))

(declare-fun b!4276343 () Bool)

(assert (=> b!4276343 (= e!2654966 (= (toValue!21 thiss!2788 x!743571) (toValue!21 thiss!2788 x!743573)))))

(assert (= (and bs!602296 (not res!1755970)) b!4276343))

(assert (=> bs!602292 m!4872101))

(assert (=> bs!602292 m!4872105))

(assert (=> bs!602292 s!240466))

(declare-fun bs!602297 () Bool)

(declare-fun s!240468 () Bool)

(assert (= bs!602297 (and neg-inst!1835 s!240468)))

(declare-fun res!1755971 () Bool)

(declare-fun e!2654967 () Bool)

(assert (=> bs!602297 (=> res!1755971 e!2654967)))

(assert (=> bs!602297 (= res!1755971 (not (= (list!17245 x!743571) (list!17245 x!743572))))))

(assert (=> bs!602297 (=> true e!2654967)))

(declare-fun b!4276344 () Bool)

(assert (=> b!4276344 (= e!2654967 (= (toValue!21 thiss!2788 x!743571) (toValue!21 thiss!2788 x!743572)))))

(assert (= (and bs!602297 (not res!1755971)) b!4276344))

(assert (=> bs!602294 m!4872101))

(assert (=> bs!602294 m!4872103))

(assert (=> bs!602294 s!240468))

(assert (=> m!4872101 s!240464))

(declare-fun bs!602298 () Bool)

(declare-fun s!240470 () Bool)

(assert (= bs!602298 (and neg-inst!1835 s!240470)))

(declare-fun res!1755972 () Bool)

(declare-fun e!2654968 () Bool)

(assert (=> bs!602298 (=> res!1755972 e!2654968)))

(assert (=> bs!602298 (= res!1755972 (not (= (list!17245 x!743571) (list!17245 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571))))))))

(assert (=> bs!602298 (=> true e!2654968)))

(declare-fun b!4276345 () Bool)

(assert (=> b!4276345 (= e!2654968 (= (toValue!21 thiss!2788 x!743571) (toValue!21 thiss!2788 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571)))))))

(assert (= (and bs!602298 (not res!1755972)) b!4276345))

(declare-fun bs!602299 () Bool)

(assert (= bs!602299 (and m!4872097 m!4872101)))

(assert (=> bs!602299 m!4872101))

(assert (=> bs!602299 m!4872097))

(assert (=> bs!602299 s!240470))

(declare-fun bs!602300 () Bool)

(declare-fun s!240472 () Bool)

(assert (= bs!602300 (and neg-inst!1835 s!240472)))

(declare-fun res!1755973 () Bool)

(declare-fun e!2654969 () Bool)

(assert (=> bs!602300 (=> res!1755973 e!2654969)))

(assert (=> bs!602300 (= res!1755973 (not (= (list!17245 x!743573) (list!17245 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571))))))))

(assert (=> bs!602300 (=> true e!2654969)))

(declare-fun b!4276346 () Bool)

(assert (=> b!4276346 (= e!2654969 (= (toValue!21 thiss!2788 x!743573) (toValue!21 thiss!2788 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571)))))))

(assert (= (and bs!602300 (not res!1755973)) b!4276346))

(declare-fun bs!602301 () Bool)

(assert (= bs!602301 (and m!4872097 m!4872105)))

(assert (=> bs!602301 m!4872105))

(assert (=> bs!602301 m!4872097))

(assert (=> bs!602301 s!240472))

(declare-fun bs!602302 () Bool)

(declare-fun s!240474 () Bool)

(assert (= bs!602302 (and neg-inst!1835 s!240474)))

(declare-fun res!1755974 () Bool)

(declare-fun e!2654970 () Bool)

(assert (=> bs!602302 (=> res!1755974 e!2654970)))

(assert (=> bs!602302 (= res!1755974 (not (= (list!17245 x!743572) (list!17245 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571))))))))

(assert (=> bs!602302 (=> true e!2654970)))

(declare-fun b!4276347 () Bool)

(assert (=> b!4276347 (= e!2654970 (= (toValue!21 thiss!2788 x!743572) (toValue!21 thiss!2788 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571)))))))

(assert (= (and bs!602302 (not res!1755974)) b!4276347))

(declare-fun bs!602303 () Bool)

(assert (= bs!602303 (and m!4872097 m!4872103 m!4872111)))

(assert (=> bs!602303 m!4872103))

(assert (=> bs!602303 m!4872097))

(assert (=> bs!602303 s!240474))

(declare-fun bs!602304 () Bool)

(declare-fun s!240476 () Bool)

(assert (= bs!602304 (and neg-inst!1835 s!240476)))

(declare-fun res!1755975 () Bool)

(declare-fun e!2654971 () Bool)

(assert (=> bs!602304 (=> res!1755975 e!2654971)))

(assert (=> bs!602304 (= res!1755975 (not (= (list!17245 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571))) (list!17245 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571))))))))

(assert (=> bs!602304 (=> true e!2654971)))

(declare-fun b!4276348 () Bool)

(assert (=> b!4276348 (= e!2654971 (= (toValue!21 thiss!2788 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571))) (toValue!21 thiss!2788 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571)))))))

(assert (= (and bs!602304 (not res!1755975)) b!4276348))

(assert (=> m!4872097 s!240476))

(declare-fun bs!602305 () Bool)

(declare-fun s!240478 () Bool)

(assert (= bs!602305 (and neg-inst!1835 s!240478)))

(declare-fun res!1755976 () Bool)

(declare-fun e!2654972 () Bool)

(assert (=> bs!602305 (=> res!1755976 e!2654972)))

(assert (=> bs!602305 (= res!1755976 (not (= (list!17245 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571))) (list!17245 x!743571))))))

(assert (=> bs!602305 (=> true e!2654972)))

(declare-fun b!4276349 () Bool)

(assert (=> b!4276349 (= e!2654972 (= (toValue!21 thiss!2788 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571))) (toValue!21 thiss!2788 x!743571)))))

(assert (= (and bs!602305 (not res!1755976)) b!4276349))

(assert (=> bs!602299 m!4872097))

(assert (=> bs!602299 m!4872101))

(assert (=> bs!602299 s!240478))

(declare-fun bs!602306 () Bool)

(declare-fun s!240480 () Bool)

(assert (= bs!602306 (and neg-inst!1835 s!240480)))

(declare-fun res!1755977 () Bool)

(declare-fun e!2654973 () Bool)

(assert (=> bs!602306 (=> res!1755977 e!2654973)))

(assert (=> bs!602306 (= res!1755977 (not (= (list!17245 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571))) (list!17245 x!743573))))))

(assert (=> bs!602306 (=> true e!2654973)))

(declare-fun b!4276350 () Bool)

(assert (=> b!4276350 (= e!2654973 (= (toValue!21 thiss!2788 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571))) (toValue!21 thiss!2788 x!743573)))))

(assert (= (and bs!602306 (not res!1755977)) b!4276350))

(assert (=> bs!602301 m!4872097))

(assert (=> bs!602301 m!4872105))

(assert (=> bs!602301 s!240480))

(declare-fun bs!602307 () Bool)

(declare-fun s!240482 () Bool)

(assert (= bs!602307 (and neg-inst!1835 s!240482)))

(declare-fun res!1755978 () Bool)

(declare-fun e!2654974 () Bool)

(assert (=> bs!602307 (=> res!1755978 e!2654974)))

(assert (=> bs!602307 (= res!1755978 (not (= (list!17245 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571))) (list!17245 x!743572))))))

(assert (=> bs!602307 (=> true e!2654974)))

(declare-fun b!4276351 () Bool)

(assert (=> b!4276351 (= e!2654974 (= (toValue!21 thiss!2788 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571))) (toValue!21 thiss!2788 x!743572)))))

(assert (= (and bs!602307 (not res!1755978)) b!4276351))

(assert (=> bs!602303 m!4872097))

(assert (=> bs!602303 m!4872103))

(assert (=> bs!602303 s!240482))

(assert (=> m!4872097 s!240476))

(declare-fun bs!602308 () Bool)

(assert (= bs!602308 (and m!4872093 m!4872097)))

(assert (=> bs!602308 s!240478))

(declare-fun bs!602309 () Bool)

(assert (= bs!602309 (and m!4872093 m!4872101)))

(assert (=> bs!602309 s!240464))

(declare-fun bs!602310 () Bool)

(assert (= bs!602310 (and m!4872093 m!4872103 m!4872111)))

(assert (=> bs!602310 s!240462))

(assert (=> m!4872093 s!240464))

(declare-fun bs!602311 () Bool)

(assert (= bs!602311 (and m!4872093 m!4872105)))

(assert (=> bs!602311 s!240460))

(assert (=> bs!602308 s!240470))

(assert (=> bs!602311 s!240466))

(assert (=> bs!602309 s!240464))

(assert (=> bs!602310 s!240468))

(assert (=> m!4872093 s!240464))

(declare-fun bs!602312 () Bool)

(assert (= bs!602312 (and m!4872113 m!4872101 m!4872093)))

(assert (=> bs!602312 s!240466))

(declare-fun bs!602313 () Bool)

(assert (= bs!602313 (and m!4872113 m!4872103 m!4872111)))

(assert (=> bs!602313 s!240454))

(declare-fun bs!602314 () Bool)

(assert (= bs!602314 (and m!4872113 m!4872097)))

(assert (=> bs!602314 s!240480))

(assert (=> m!4872113 s!240456))

(declare-fun bs!602315 () Bool)

(assert (= bs!602315 (and m!4872113 m!4872105)))

(assert (=> bs!602315 s!240456))

(assert (=> bs!602312 s!240460))

(assert (=> bs!602314 s!240472))

(assert (=> m!4872113 s!240456))

(assert (=> bs!602313 s!240458))

(assert (=> bs!602315 s!240456))

(declare-fun bs!602316 () Bool)

(assert (= bs!602316 (and neg-inst!1835 b!4276323)))

(assert (=> bs!602316 (= true inst!1835)))

(declare-fun res!1755961 () Bool)

(declare-fun e!2654954 () Bool)

(assert (=> start!410672 (=> res!1755961 e!2654954)))

(declare-fun lambda!131382 () Int)

(declare-fun Forall!1663 (Int) Bool)

(assert (=> start!410672 (= res!1755961 (not (Forall!1663 lambda!131382)))))

(assert (=> start!410672 (= (Forall!1663 lambda!131382) inst!1834)))

(assert (=> start!410672 (not e!2654954)))

(assert (=> start!410672 true))

(declare-fun lambda!131385 () Int)

(declare-fun Forall2!1242 (Int) Bool)

(assert (=> b!4276323 (= e!2654954 (Forall2!1242 lambda!131385))))

(assert (=> b!4276323 (= (Forall2!1242 lambda!131385) inst!1835)))

(declare-fun lambda!131383 () Int)

(declare-fun lambda!131384 () Int)

(declare-fun semiInverseModEq!3527 (Int Int) Bool)

(assert (=> b!4276323 (= (semiInverseModEq!3527 lambda!131383 lambda!131384) (Forall!1663 lambda!131382))))

(assert (= neg-inst!1834 inst!1834))

(assert (= (and start!410672 (not res!1755961)) b!4276323))

(assert (= neg-inst!1835 inst!1835))

(declare-fun m!4872119 () Bool)

(assert (=> start!410672 m!4872119))

(assert (=> start!410672 m!4872119))

(declare-fun m!4872121 () Bool)

(assert (=> b!4276323 m!4872121))

(assert (=> b!4276323 m!4872121))

(declare-fun m!4872123 () Bool)

(assert (=> b!4276323 m!4872123))

(assert (=> b!4276323 m!4872119))

(push 1)

(assert (not b!4276336))

(assert (not b!4276337))

(assert (not bs!602296))

(assert (not b!4276343))

(assert (not b!4276345))

(assert (not bs!602291))

(assert (not b!4276350))

(assert (not bs!602285))

(assert (not bs!602297))

(assert (not b!4276334))

(assert (not b!4276341))

(assert (not bs!602307))

(assert (not start!410672))

(assert (not b!4276342))

(assert (not bs!602289))

(assert (not bs!602302))

(assert (not bs!602305))

(assert (not b!4276346))

(assert (not bs!602304))

(assert (not b!4276332))

(assert (not bs!602298))

(assert (not bs!602287))

(assert (not b!4276333))

(assert (not b!4276351))

(assert (not b!4276344))

(assert (not bs!602293))

(assert (not b!4276348))

(assert (not b!4276339))

(assert (not b!4276349))

(assert (not bs!602295))

(assert (not bs!602283))

(assert (not b!4276340))

(assert (not b!4276338))

(assert (not b!4276323))

(assert (not b!4276347))

(assert (not bs!602306))

(assert (not bs!602290))

(assert (not b!4276335))

(assert (not bs!602300))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1262346 () Bool)

(declare-fun efficientList!583 (BalanceConc!28158) List!47466)

(assert (=> d!1262346 (= (toValue!21 thiss!2788 x!743573) (CommentValue!16594 (efficientList!583 x!743573)))))

(declare-fun bs!602354 () Bool)

(assert (= bs!602354 d!1262346))

(declare-fun m!4872159 () Bool)

(assert (=> bs!602354 m!4872159))

(assert (=> b!4276340 d!1262346))

(declare-fun d!1262348 () Bool)

(assert (=> d!1262348 (= (toValue!21 thiss!2788 x!743571) (CommentValue!16594 (efficientList!583 x!743571)))))

(declare-fun bs!602355 () Bool)

(assert (= bs!602355 d!1262348))

(declare-fun m!4872161 () Bool)

(assert (=> bs!602355 m!4872161))

(assert (=> b!4276340 d!1262348))

(declare-fun d!1262350 () Bool)

(declare-fun list!17247 (Conc!14324) List!47466)

(assert (=> d!1262350 (= (list!17245 x!743572) (list!17247 (c!728260 x!743572)))))

(declare-fun bs!602356 () Bool)

(assert (= bs!602356 d!1262350))

(declare-fun m!4872163 () Bool)

(assert (=> bs!602356 m!4872163))

(assert (=> bs!602302 d!1262350))

(declare-fun d!1262352 () Bool)

(assert (=> d!1262352 (= (list!17245 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571))) (list!17247 (c!728260 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571)))))))

(declare-fun bs!602357 () Bool)

(assert (= bs!602357 d!1262352))

(declare-fun m!4872165 () Bool)

(assert (=> bs!602357 m!4872165))

(assert (=> bs!602302 d!1262352))

(assert (=> b!4276343 d!1262348))

(assert (=> b!4276343 d!1262346))

(assert (=> bs!602287 d!1262350))

(declare-fun d!1262354 () Bool)

(assert (=> d!1262354 (= (list!17245 x!743573) (list!17247 (c!728260 x!743573)))))

(declare-fun bs!602358 () Bool)

(assert (= bs!602358 d!1262354))

(declare-fun m!4872167 () Bool)

(assert (=> bs!602358 m!4872167))

(assert (=> bs!602287 d!1262354))

(declare-fun d!1262356 () Bool)

(assert (=> d!1262356 (= (toValue!21 thiss!2788 x!743572) (CommentValue!16594 (efficientList!583 x!743572)))))

(declare-fun bs!602359 () Bool)

(assert (= bs!602359 d!1262356))

(declare-fun m!4872169 () Bool)

(assert (=> bs!602359 m!4872169))

(assert (=> b!4276337 d!1262356))

(assert (=> b!4276337 d!1262346))

(assert (=> b!4276347 d!1262356))

(declare-fun d!1262358 () Bool)

(assert (=> d!1262358 (= (toValue!21 thiss!2788 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571))) (CommentValue!16594 (efficientList!583 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571)))))))

(declare-fun bs!602360 () Bool)

(assert (= bs!602360 d!1262358))

(assert (=> bs!602360 m!4872095))

(declare-fun m!4872171 () Bool)

(assert (=> bs!602360 m!4872171))

(assert (=> b!4276347 d!1262358))

(assert (=> b!4276350 d!1262358))

(assert (=> b!4276350 d!1262346))

(declare-fun d!1262360 () Bool)

(assert (=> d!1262360 (= (list!17245 x!743571) (list!17247 (c!728260 x!743571)))))

(declare-fun bs!602361 () Bool)

(assert (= bs!602361 d!1262360))

(declare-fun m!4872173 () Bool)

(assert (=> bs!602361 m!4872173))

(assert (=> bs!602297 d!1262360))

(assert (=> bs!602297 d!1262350))

(assert (=> b!4276336 d!1262356))

(assert (=> b!4276349 d!1262358))

(assert (=> b!4276349 d!1262348))

(assert (=> bs!602300 d!1262354))

(assert (=> bs!602300 d!1262352))

(assert (=> b!4276339 d!1262346))

(assert (=> b!4276339 d!1262356))

(assert (=> bs!602291 d!1262354))

(assert (=> bs!602291 d!1262360))

(assert (=> bs!602306 d!1262352))

(assert (=> bs!602306 d!1262354))

(assert (=> bs!602296 d!1262360))

(assert (=> bs!602296 d!1262354))

(assert (=> b!4276346 d!1262346))

(assert (=> b!4276346 d!1262358))

(assert (=> b!4276345 d!1262348))

(assert (=> b!4276345 d!1262358))

(assert (=> b!4276348 d!1262358))

(assert (=> bs!602295 d!1262360))

(assert (=> b!4276338 d!1262346))

(assert (=> bs!602305 d!1262352))

(assert (=> bs!602305 d!1262360))

(assert (=> b!4276342 d!1262348))

(assert (=> bs!602285 d!1262350))

(assert (=> bs!602290 d!1262354))

(assert (=> bs!602290 d!1262350))

(assert (=> bs!602293 d!1262350))

(assert (=> bs!602293 d!1262360))

(assert (=> bs!602307 d!1262352))

(assert (=> bs!602307 d!1262350))

(assert (=> b!4276344 d!1262348))

(assert (=> b!4276344 d!1262356))

(assert (=> bs!602298 d!1262360))

(assert (=> bs!602298 d!1262352))

(assert (=> bs!602289 d!1262354))

(assert (=> bs!602304 d!1262352))

(assert (=> b!4276341 d!1262356))

(assert (=> b!4276341 d!1262348))

(assert (=> b!4276351 d!1262358))

(assert (=> b!4276351 d!1262356))

(declare-fun bs!602362 () Bool)

(assert (= bs!602362 (and m!4872103 b!4276336)))

(assert (=> bs!602362 m!4872111))

(assert (=> bs!602362 m!4872111))

(declare-fun bs!602363 () Bool)

(assert (= bs!602363 (and m!4872105 m!4872103 m!4872111 b!4276337)))

(assert (=> bs!602363 m!4872111))

(assert (=> bs!602363 m!4872113))

(declare-fun bs!602364 () Bool)

(assert (= bs!602364 (and m!4872105 b!4276338)))

(assert (=> bs!602364 m!4872113))

(assert (=> bs!602364 m!4872113))

(declare-fun bs!602365 () Bool)

(assert (= bs!602365 (and m!4872105 m!4872103 m!4872111 b!4276339)))

(assert (=> bs!602365 m!4872113))

(assert (=> bs!602365 m!4872111))

(declare-fun bs!602366 () Bool)

(assert (= bs!602366 (and m!4872101 m!4872105 b!4276340)))

(assert (=> bs!602366 m!4872113))

(assert (=> bs!602366 m!4872093))

(declare-fun bs!602367 () Bool)

(assert (= bs!602367 (and m!4872101 m!4872103 m!4872111 b!4276341)))

(assert (=> bs!602367 m!4872111))

(assert (=> bs!602367 m!4872093))

(declare-fun bs!602368 () Bool)

(assert (= bs!602368 (and m!4872101 b!4276342)))

(assert (=> bs!602368 m!4872093))

(assert (=> bs!602368 m!4872093))

(declare-fun bs!602369 () Bool)

(assert (= bs!602369 (and m!4872101 m!4872105 b!4276343)))

(assert (=> bs!602369 m!4872093))

(assert (=> bs!602369 m!4872113))

(declare-fun bs!602370 () Bool)

(assert (= bs!602370 (and m!4872101 m!4872103 m!4872111 b!4276344)))

(assert (=> bs!602370 m!4872093))

(assert (=> bs!602370 m!4872111))

(declare-fun bs!602371 () Bool)

(assert (= bs!602371 (and m!4872097 m!4872101 b!4276345)))

(assert (=> bs!602371 m!4872093))

(declare-fun m!4872175 () Bool)

(assert (=> bs!602371 m!4872175))

(declare-fun bs!602372 () Bool)

(assert (= bs!602372 (and m!4872097 m!4872105 b!4276346)))

(assert (=> bs!602372 m!4872113))

(assert (=> bs!602372 m!4872175))

(declare-fun bs!602373 () Bool)

(assert (= bs!602373 (and m!4872097 m!4872103 m!4872111 b!4276347)))

(assert (=> bs!602373 m!4872111))

(assert (=> bs!602373 m!4872175))

(declare-fun bs!602374 () Bool)

(assert (= bs!602374 (and m!4872097 b!4276348)))

(assert (=> bs!602374 m!4872175))

(assert (=> bs!602374 m!4872175))

(declare-fun bs!602375 () Bool)

(assert (= bs!602375 (and m!4872097 m!4872101 b!4276349)))

(assert (=> bs!602375 m!4872175))

(assert (=> bs!602375 m!4872093))

(declare-fun bs!602376 () Bool)

(assert (= bs!602376 (and m!4872097 m!4872105 b!4276350)))

(assert (=> bs!602376 m!4872175))

(assert (=> bs!602376 m!4872113))

(declare-fun bs!602377 () Bool)

(assert (= bs!602377 (and m!4872097 m!4872103 m!4872111 b!4276351)))

(assert (=> bs!602377 m!4872175))

(assert (=> bs!602377 m!4872111))

(push 1)

(assert (not d!1262346))

(assert (not b!4276332))

(assert (not b!4276333))

(assert (not d!1262348))

(assert (not d!1262350))

(assert (not bs!602283))

(assert (not b!4276323))

(assert (not d!1262352))

(assert (not b!4276335))

(assert (not d!1262358))

(assert (not d!1262354))

(assert (not d!1262360))

(assert (not start!410672))

(assert (not d!1262356))

(assert (not b!4276334))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1262378 () Bool)

(declare-fun lt!1513839 () List!47466)

(assert (=> d!1262378 (= lt!1513839 (list!17245 x!743571))))

(declare-fun efficientList!585 (Conc!14324 List!47466) List!47466)

(declare-fun efficientList$default$2!203 (Conc!14324) List!47466)

(assert (=> d!1262378 (= lt!1513839 (efficientList!585 (c!728260 x!743571) (efficientList$default$2!203 (c!728260 x!743571))))))

(assert (=> d!1262378 (= (efficientList!583 x!743571) lt!1513839)))

(declare-fun bs!602402 () Bool)

(assert (= bs!602402 d!1262378))

(assert (=> bs!602402 m!4872101))

(declare-fun m!4872195 () Bool)

(assert (=> bs!602402 m!4872195))

(assert (=> bs!602402 m!4872195))

(declare-fun m!4872197 () Bool)

(assert (=> bs!602402 m!4872197))

(assert (=> d!1262348 d!1262378))

(declare-fun d!1262380 () Bool)

(declare-fun lt!1513840 () List!47466)

(assert (=> d!1262380 (= lt!1513840 (list!17245 x!743572))))

(assert (=> d!1262380 (= lt!1513840 (efficientList!585 (c!728260 x!743572) (efficientList$default$2!203 (c!728260 x!743572))))))

(assert (=> d!1262380 (= (efficientList!583 x!743572) lt!1513840)))

(declare-fun bs!602403 () Bool)

(assert (= bs!602403 d!1262380))

(assert (=> bs!602403 m!4872103))

(declare-fun m!4872199 () Bool)

(assert (=> bs!602403 m!4872199))

(assert (=> bs!602403 m!4872199))

(declare-fun m!4872201 () Bool)

(assert (=> bs!602403 m!4872201))

(assert (=> d!1262356 d!1262380))

(declare-fun b!4276407 () Bool)

(declare-fun e!2655017 () List!47466)

(declare-fun list!17249 (IArray!28653) List!47466)

(assert (=> b!4276407 (= e!2655017 (list!17249 (xs!17630 (c!728260 x!743573))))))

(declare-fun b!4276405 () Bool)

(declare-fun e!2655016 () List!47466)

(assert (=> b!4276405 (= e!2655016 Nil!47342)))

(declare-fun d!1262382 () Bool)

(declare-fun c!728266 () Bool)

(assert (=> d!1262382 (= c!728266 (is-Empty!14324 (c!728260 x!743573)))))

(assert (=> d!1262382 (= (list!17247 (c!728260 x!743573)) e!2655016)))

(declare-fun b!4276406 () Bool)

(assert (=> b!4276406 (= e!2655016 e!2655017)))

(declare-fun c!728267 () Bool)

(assert (=> b!4276406 (= c!728267 (is-Leaf!22142 (c!728260 x!743573)))))

(declare-fun b!4276408 () Bool)

(declare-fun ++!12092 (List!47466 List!47466) List!47466)

(assert (=> b!4276408 (= e!2655017 (++!12092 (list!17247 (left!35263 (c!728260 x!743573))) (list!17247 (right!35593 (c!728260 x!743573)))))))

(assert (= (and d!1262382 c!728266) b!4276405))

(assert (= (and d!1262382 (not c!728266)) b!4276406))

(assert (= (and b!4276406 c!728267) b!4276407))

(assert (= (and b!4276406 (not c!728267)) b!4276408))

(declare-fun m!4872203 () Bool)

(assert (=> b!4276407 m!4872203))

(declare-fun m!4872205 () Bool)

(assert (=> b!4276408 m!4872205))

(declare-fun m!4872207 () Bool)

(assert (=> b!4276408 m!4872207))

(assert (=> b!4276408 m!4872205))

(assert (=> b!4276408 m!4872207))

(declare-fun m!4872209 () Bool)

(assert (=> b!4276408 m!4872209))

(assert (=> d!1262354 d!1262382))

(declare-fun d!1262384 () Bool)

(declare-fun lt!1513841 () List!47466)

(assert (=> d!1262384 (= lt!1513841 (list!17245 x!743573))))

(assert (=> d!1262384 (= lt!1513841 (efficientList!585 (c!728260 x!743573) (efficientList$default$2!203 (c!728260 x!743573))))))

(assert (=> d!1262384 (= (efficientList!583 x!743573) lt!1513841)))

(declare-fun bs!602404 () Bool)

(assert (= bs!602404 d!1262384))

(assert (=> bs!602404 m!4872105))

(declare-fun m!4872211 () Bool)

(assert (=> bs!602404 m!4872211))

(assert (=> bs!602404 m!4872211))

(declare-fun m!4872213 () Bool)

(assert (=> bs!602404 m!4872213))

(assert (=> d!1262346 d!1262384))

(declare-fun b!4276411 () Bool)

(declare-fun e!2655019 () List!47466)

(assert (=> b!4276411 (= e!2655019 (list!17249 (xs!17630 (c!728260 x!743571))))))

(declare-fun b!4276409 () Bool)

(declare-fun e!2655018 () List!47466)

(assert (=> b!4276409 (= e!2655018 Nil!47342)))

(declare-fun d!1262386 () Bool)

(declare-fun c!728268 () Bool)

(assert (=> d!1262386 (= c!728268 (is-Empty!14324 (c!728260 x!743571)))))

(assert (=> d!1262386 (= (list!17247 (c!728260 x!743571)) e!2655018)))

(declare-fun b!4276410 () Bool)

(assert (=> b!4276410 (= e!2655018 e!2655019)))

(declare-fun c!728269 () Bool)

(assert (=> b!4276410 (= c!728269 (is-Leaf!22142 (c!728260 x!743571)))))

(declare-fun b!4276412 () Bool)

(assert (=> b!4276412 (= e!2655019 (++!12092 (list!17247 (left!35263 (c!728260 x!743571))) (list!17247 (right!35593 (c!728260 x!743571)))))))

(assert (= (and d!1262386 c!728268) b!4276409))

(assert (= (and d!1262386 (not c!728268)) b!4276410))

(assert (= (and b!4276410 c!728269) b!4276411))

(assert (= (and b!4276410 (not c!728269)) b!4276412))

(declare-fun m!4872215 () Bool)

(assert (=> b!4276411 m!4872215))

(declare-fun m!4872217 () Bool)

(assert (=> b!4276412 m!4872217))

(declare-fun m!4872219 () Bool)

(assert (=> b!4276412 m!4872219))

(assert (=> b!4276412 m!4872217))

(assert (=> b!4276412 m!4872219))

(declare-fun m!4872221 () Bool)

(assert (=> b!4276412 m!4872221))

(assert (=> d!1262360 d!1262386))

(declare-fun b!4276415 () Bool)

(declare-fun e!2655021 () List!47466)

(assert (=> b!4276415 (= e!2655021 (list!17249 (xs!17630 (c!728260 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571))))))))

(declare-fun b!4276413 () Bool)

(declare-fun e!2655020 () List!47466)

(assert (=> b!4276413 (= e!2655020 Nil!47342)))

(declare-fun d!1262388 () Bool)

(declare-fun c!728270 () Bool)

(assert (=> d!1262388 (= c!728270 (is-Empty!14324 (c!728260 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571)))))))

(assert (=> d!1262388 (= (list!17247 (c!728260 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571)))) e!2655020)))

(declare-fun b!4276414 () Bool)

(assert (=> b!4276414 (= e!2655020 e!2655021)))

(declare-fun c!728271 () Bool)

(assert (=> b!4276414 (= c!728271 (is-Leaf!22142 (c!728260 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571)))))))

(declare-fun b!4276416 () Bool)

(assert (=> b!4276416 (= e!2655021 (++!12092 (list!17247 (left!35263 (c!728260 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571))))) (list!17247 (right!35593 (c!728260 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571)))))))))

(assert (= (and d!1262388 c!728270) b!4276413))

(assert (= (and d!1262388 (not c!728270)) b!4276414))

(assert (= (and b!4276414 c!728271) b!4276415))

(assert (= (and b!4276414 (not c!728271)) b!4276416))

(declare-fun m!4872223 () Bool)

(assert (=> b!4276415 m!4872223))

(declare-fun m!4872225 () Bool)

(assert (=> b!4276416 m!4872225))

(declare-fun m!4872227 () Bool)

(assert (=> b!4276416 m!4872227))

(assert (=> b!4276416 m!4872225))

(assert (=> b!4276416 m!4872227))

(declare-fun m!4872229 () Bool)

(assert (=> b!4276416 m!4872229))

(assert (=> d!1262352 d!1262388))

(declare-fun d!1262390 () Bool)

(declare-fun lt!1513842 () List!47466)

(assert (=> d!1262390 (= lt!1513842 (list!17245 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571))))))

(assert (=> d!1262390 (= lt!1513842 (efficientList!585 (c!728260 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571))) (efficientList$default$2!203 (c!728260 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571))))))))

(assert (=> d!1262390 (= (efficientList!583 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571))) lt!1513842)))

(declare-fun bs!602405 () Bool)

(assert (= bs!602405 d!1262390))

(assert (=> bs!602405 m!4872095))

(assert (=> bs!602405 m!4872097))

(declare-fun m!4872231 () Bool)

(assert (=> bs!602405 m!4872231))

(assert (=> bs!602405 m!4872231))

(declare-fun m!4872233 () Bool)

(assert (=> bs!602405 m!4872233))

(assert (=> d!1262358 d!1262390))

(declare-fun b!4276419 () Bool)

(declare-fun e!2655023 () List!47466)

(assert (=> b!4276419 (= e!2655023 (list!17249 (xs!17630 (c!728260 x!743572))))))

(declare-fun b!4276417 () Bool)

(declare-fun e!2655022 () List!47466)

(assert (=> b!4276417 (= e!2655022 Nil!47342)))

(declare-fun d!1262392 () Bool)

(declare-fun c!728272 () Bool)

(assert (=> d!1262392 (= c!728272 (is-Empty!14324 (c!728260 x!743572)))))

(assert (=> d!1262392 (= (list!17247 (c!728260 x!743572)) e!2655022)))

(declare-fun b!4276418 () Bool)

(assert (=> b!4276418 (= e!2655022 e!2655023)))

(declare-fun c!728273 () Bool)

(assert (=> b!4276418 (= c!728273 (is-Leaf!22142 (c!728260 x!743572)))))

(declare-fun b!4276420 () Bool)

(assert (=> b!4276420 (= e!2655023 (++!12092 (list!17247 (left!35263 (c!728260 x!743572))) (list!17247 (right!35593 (c!728260 x!743572)))))))

(assert (= (and d!1262392 c!728272) b!4276417))

(assert (= (and d!1262392 (not c!728272)) b!4276418))

(assert (= (and b!4276418 c!728273) b!4276419))

(assert (= (and b!4276418 (not c!728273)) b!4276420))

(declare-fun m!4872235 () Bool)

(assert (=> b!4276419 m!4872235))

(declare-fun m!4872237 () Bool)

(assert (=> b!4276420 m!4872237))

(declare-fun m!4872239 () Bool)

(assert (=> b!4276420 m!4872239))

(assert (=> b!4276420 m!4872237))

(assert (=> b!4276420 m!4872239))

(declare-fun m!4872241 () Bool)

(assert (=> b!4276420 m!4872241))

(assert (=> d!1262350 d!1262392))

(push 1)

(assert (not b!4276419))

(assert (not start!410672))

(assert (not b!4276411))

(assert (not b!4276408))

(assert (not b!4276332))

(assert (not b!4276333))

(assert (not b!4276416))

(assert (not d!1262390))

(assert (not b!4276323))

(assert (not d!1262384))

(assert (not b!4276407))

(assert (not b!4276412))

(assert (not d!1262380))

(assert (not bs!602283))

(assert (not b!4276415))

(assert (not b!4276335))

(assert (not b!4276420))

(assert (not d!1262378))

(assert (not b!4276334))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!1262378 d!1262360))

(declare-fun bm!294245 () Bool)

(declare-fun c!728292 () Bool)

(declare-fun c!728293 () Bool)

(assert (=> bm!294245 (= c!728292 c!728293)))

(declare-fun call!294250 () List!47466)

(declare-fun e!2655044 () List!47466)

(assert (=> bm!294245 (= call!294250 (++!12092 e!2655044 (efficientList$default$2!203 (c!728260 x!743571))))))

(declare-fun b!4276457 () Bool)

(declare-fun lt!1513859 () List!47466)

(assert (=> b!4276457 (= e!2655044 lt!1513859)))

(declare-fun d!1262410 () Bool)

(declare-fun lt!1513863 () List!47466)

(assert (=> d!1262410 (= lt!1513863 (++!12092 (list!17247 (c!728260 x!743571)) (efficientList$default$2!203 (c!728260 x!743571))))))

(declare-fun e!2655042 () List!47466)

(assert (=> d!1262410 (= lt!1513863 e!2655042)))

(declare-fun c!728294 () Bool)

(assert (=> d!1262410 (= c!728294 (is-Empty!14324 (c!728260 x!743571)))))

(assert (=> d!1262410 (= (efficientList!585 (c!728260 x!743571) (efficientList$default$2!203 (c!728260 x!743571))) lt!1513863)))

(declare-fun b!4276458 () Bool)

(declare-fun e!2655043 () List!47466)

(assert (=> b!4276458 (= e!2655042 e!2655043)))

(assert (=> b!4276458 (= c!728293 (is-Leaf!22142 (c!728260 x!743571)))))

(declare-fun b!4276459 () Bool)

(declare-fun efficientList!587 (IArray!28653) List!47466)

(assert (=> b!4276459 (= e!2655044 (efficientList!587 (xs!17630 (c!728260 x!743571))))))

(declare-fun b!4276460 () Bool)

(declare-datatypes ((Unit!66295 0))(
  ( (Unit!66296) )
))
(declare-fun lt!1513862 () Unit!66295)

(declare-fun lt!1513860 () Unit!66295)

(assert (=> b!4276460 (= lt!1513862 lt!1513860)))

(declare-fun lt!1513861 () List!47466)

(assert (=> b!4276460 (= (++!12092 (++!12092 lt!1513861 lt!1513859) (efficientList$default$2!203 (c!728260 x!743571))) (++!12092 lt!1513861 call!294250))))

(declare-fun lemmaConcatAssociativity!2727 (List!47466 List!47466 List!47466) Unit!66295)

(assert (=> b!4276460 (= lt!1513860 (lemmaConcatAssociativity!2727 lt!1513861 lt!1513859 (efficientList$default$2!203 (c!728260 x!743571))))))

(assert (=> b!4276460 (= lt!1513859 (list!17247 (right!35593 (c!728260 x!743571))))))

(assert (=> b!4276460 (= lt!1513861 (list!17247 (left!35263 (c!728260 x!743571))))))

(assert (=> b!4276460 (= e!2655043 (efficientList!585 (left!35263 (c!728260 x!743571)) (efficientList!585 (right!35593 (c!728260 x!743571)) (efficientList$default$2!203 (c!728260 x!743571)))))))

(declare-fun b!4276461 () Bool)

(assert (=> b!4276461 (= e!2655043 call!294250)))

(declare-fun b!4276462 () Bool)

(assert (=> b!4276462 (= e!2655042 (efficientList$default$2!203 (c!728260 x!743571)))))

(assert (= (and d!1262410 c!728294) b!4276462))

(assert (= (and d!1262410 (not c!728294)) b!4276458))

(assert (= (and b!4276458 c!728293) b!4276461))

(assert (= (and b!4276458 (not c!728293)) b!4276460))

(assert (= (or b!4276461 b!4276460) bm!294245))

(assert (= (and bm!294245 c!728292) b!4276459))

(assert (= (and bm!294245 (not c!728292)) b!4276457))

(assert (=> bm!294245 m!4872195))

(declare-fun m!4872291 () Bool)

(assert (=> bm!294245 m!4872291))

(assert (=> d!1262410 m!4872173))

(assert (=> d!1262410 m!4872173))

(assert (=> d!1262410 m!4872195))

(declare-fun m!4872293 () Bool)

(assert (=> d!1262410 m!4872293))

(declare-fun m!4872295 () Bool)

(assert (=> b!4276459 m!4872295))

(assert (=> b!4276460 m!4872217))

(declare-fun m!4872297 () Bool)

(assert (=> b!4276460 m!4872297))

(assert (=> b!4276460 m!4872297))

(assert (=> b!4276460 m!4872195))

(declare-fun m!4872299 () Bool)

(assert (=> b!4276460 m!4872299))

(declare-fun m!4872301 () Bool)

(assert (=> b!4276460 m!4872301))

(declare-fun m!4872303 () Bool)

(assert (=> b!4276460 m!4872303))

(assert (=> b!4276460 m!4872195))

(assert (=> b!4276460 m!4872301))

(declare-fun m!4872305 () Bool)

(assert (=> b!4276460 m!4872305))

(assert (=> b!4276460 m!4872219))

(assert (=> b!4276460 m!4872195))

(declare-fun m!4872307 () Bool)

(assert (=> b!4276460 m!4872307))

(assert (=> d!1262378 d!1262410))

(declare-fun d!1262412 () Bool)

(assert (=> d!1262412 (= (efficientList$default$2!203 (c!728260 x!743571)) Nil!47342)))

(assert (=> d!1262378 d!1262412))

(declare-fun d!1262414 () Bool)

(declare-fun choose!26077 (Int) Bool)

(assert (=> d!1262414 (= (Forall!1663 lambda!131382) (choose!26077 lambda!131382))))

(declare-fun bs!602410 () Bool)

(assert (= bs!602410 d!1262414))

(declare-fun m!4872309 () Bool)

(assert (=> bs!602410 m!4872309))

(assert (=> b!4276323 d!1262414))

(assert (=> b!4276323 d!1262354))

(assert (=> b!4276323 d!1262350))

(declare-fun bs!602411 () Bool)

(declare-fun d!1262416 () Bool)

(assert (= bs!602411 (and d!1262416 start!410672)))

(declare-fun lambda!131406 () Int)

(assert (=> bs!602411 (not (= lambda!131406 lambda!131382))))

(assert (=> d!1262416 true))

(declare-fun order!25005 () Int)

(declare-fun order!25007 () Int)

(declare-fun dynLambda!20306 (Int Int) Int)

(declare-fun dynLambda!20307 (Int Int) Int)

(assert (=> d!1262416 (< (dynLambda!20306 order!25005 lambda!131383) (dynLambda!20307 order!25007 lambda!131406))))

(assert (=> d!1262416 true))

(declare-fun order!25009 () Int)

(declare-fun dynLambda!20308 (Int Int) Int)

(assert (=> d!1262416 (< (dynLambda!20308 order!25009 lambda!131384) (dynLambda!20307 order!25007 lambda!131406))))

(assert (=> d!1262416 (= (semiInverseModEq!3527 lambda!131383 lambda!131384) (Forall!1663 lambda!131406))))

(declare-fun bs!602412 () Bool)

(assert (= bs!602412 d!1262416))

(declare-fun m!4872311 () Bool)

(assert (=> bs!602412 m!4872311))

(assert (=> b!4276323 d!1262416))

(declare-fun d!1262418 () Bool)

(declare-fun isBalanced!3866 (Conc!14324) Bool)

(assert (=> d!1262418 (= (inv!62639 x!743573) (isBalanced!3866 (c!728260 x!743573)))))

(declare-fun bs!602413 () Bool)

(assert (= bs!602413 d!1262418))

(declare-fun m!4872313 () Bool)

(assert (=> bs!602413 m!4872313))

(assert (=> b!4276323 d!1262418))

(declare-fun d!1262420 () Bool)

(declare-fun choose!26078 (Int) Bool)

(assert (=> d!1262420 (= (Forall2!1242 lambda!131385) (choose!26078 lambda!131385))))

(declare-fun bs!602414 () Bool)

(assert (= bs!602414 d!1262420))

(declare-fun m!4872315 () Bool)

(assert (=> bs!602414 m!4872315))

(assert (=> b!4276323 d!1262420))

(declare-fun d!1262422 () Bool)

(assert (=> d!1262422 (= (inv!62639 x!743572) (isBalanced!3866 (c!728260 x!743572)))))

(declare-fun bs!602415 () Bool)

(assert (= bs!602415 d!1262422))

(declare-fun m!4872317 () Bool)

(assert (=> bs!602415 m!4872317))

(assert (=> b!4276323 d!1262422))

(assert (=> start!410672 d!1262352))

(assert (=> start!410672 d!1262414))

(declare-fun d!1262424 () Bool)

(assert (=> d!1262424 (= (inv!62639 x!743571) (isBalanced!3866 (c!728260 x!743571)))))

(declare-fun bs!602416 () Bool)

(assert (= bs!602416 d!1262424))

(declare-fun m!4872319 () Bool)

(assert (=> bs!602416 m!4872319))

(assert (=> start!410672 d!1262424))

(assert (=> start!410672 d!1262348))

(declare-fun d!1262426 () Bool)

(declare-fun c!728298 () Bool)

(assert (=> d!1262426 (= c!728298 (is-CommentValue!16594 (toValue!21 thiss!2788 x!743571)))))

(declare-fun e!2655047 () BalanceConc!28158)

(assert (=> d!1262426 (= (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571)) e!2655047)))

(declare-fun b!4276471 () Bool)

(declare-fun seqFromList!5890 (List!47466) BalanceConc!28158)

(assert (=> b!4276471 (= e!2655047 (seqFromList!5890 (value!250350 (toValue!21 thiss!2788 x!743571))))))

(declare-fun b!4276472 () Bool)

(assert (=> b!4276472 (= e!2655047 (BalanceConc!28159 Empty!14324))))

(assert (= (and d!1262426 c!728298) b!4276471))

(assert (= (and d!1262426 (not c!728298)) b!4276472))

(declare-fun m!4872321 () Bool)

(assert (=> b!4276471 m!4872321))

(assert (=> start!410672 d!1262426))

(assert (=> start!410672 d!1262360))

(assert (=> d!1262390 d!1262352))

(declare-fun bm!294246 () Bool)

(declare-fun c!728299 () Bool)

(declare-fun c!728300 () Bool)

(assert (=> bm!294246 (= c!728299 c!728300)))

(declare-fun call!294251 () List!47466)

(declare-fun e!2655050 () List!47466)

(assert (=> bm!294246 (= call!294251 (++!12092 e!2655050 (efficientList$default$2!203 (c!728260 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571))))))))

(declare-fun b!4276473 () Bool)

(declare-fun lt!1513864 () List!47466)

(assert (=> b!4276473 (= e!2655050 lt!1513864)))

(declare-fun d!1262428 () Bool)

(declare-fun lt!1513868 () List!47466)

(assert (=> d!1262428 (= lt!1513868 (++!12092 (list!17247 (c!728260 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571)))) (efficientList$default$2!203 (c!728260 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571))))))))

(declare-fun e!2655048 () List!47466)

(assert (=> d!1262428 (= lt!1513868 e!2655048)))

(declare-fun c!728301 () Bool)

(assert (=> d!1262428 (= c!728301 (is-Empty!14324 (c!728260 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571)))))))

(assert (=> d!1262428 (= (efficientList!585 (c!728260 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571))) (efficientList$default$2!203 (c!728260 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571))))) lt!1513868)))

(declare-fun b!4276474 () Bool)

(declare-fun e!2655049 () List!47466)

(assert (=> b!4276474 (= e!2655048 e!2655049)))

(assert (=> b!4276474 (= c!728300 (is-Leaf!22142 (c!728260 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571)))))))

(declare-fun b!4276475 () Bool)

(assert (=> b!4276475 (= e!2655050 (efficientList!587 (xs!17630 (c!728260 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571))))))))

(declare-fun b!4276476 () Bool)

(declare-fun lt!1513867 () Unit!66295)

(declare-fun lt!1513865 () Unit!66295)

(assert (=> b!4276476 (= lt!1513867 lt!1513865)))

(declare-fun lt!1513866 () List!47466)

(assert (=> b!4276476 (= (++!12092 (++!12092 lt!1513866 lt!1513864) (efficientList$default$2!203 (c!728260 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571))))) (++!12092 lt!1513866 call!294251))))

(assert (=> b!4276476 (= lt!1513865 (lemmaConcatAssociativity!2727 lt!1513866 lt!1513864 (efficientList$default$2!203 (c!728260 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571))))))))

(assert (=> b!4276476 (= lt!1513864 (list!17247 (right!35593 (c!728260 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571))))))))

(assert (=> b!4276476 (= lt!1513866 (list!17247 (left!35263 (c!728260 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571))))))))

(assert (=> b!4276476 (= e!2655049 (efficientList!585 (left!35263 (c!728260 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571)))) (efficientList!585 (right!35593 (c!728260 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571)))) (efficientList$default$2!203 (c!728260 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571)))))))))

(declare-fun b!4276477 () Bool)

(assert (=> b!4276477 (= e!2655049 call!294251)))

(declare-fun b!4276478 () Bool)

(assert (=> b!4276478 (= e!2655048 (efficientList$default$2!203 (c!728260 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571)))))))

(assert (= (and d!1262428 c!728301) b!4276478))

(assert (= (and d!1262428 (not c!728301)) b!4276474))

(assert (= (and b!4276474 c!728300) b!4276477))

(assert (= (and b!4276474 (not c!728300)) b!4276476))

(assert (= (or b!4276477 b!4276476) bm!294246))

(assert (= (and bm!294246 c!728299) b!4276475))

(assert (= (and bm!294246 (not c!728299)) b!4276473))

(assert (=> bm!294246 m!4872231))

(declare-fun m!4872323 () Bool)

(assert (=> bm!294246 m!4872323))

(assert (=> d!1262428 m!4872165))

(assert (=> d!1262428 m!4872165))

(assert (=> d!1262428 m!4872231))

(declare-fun m!4872325 () Bool)

(assert (=> d!1262428 m!4872325))

(declare-fun m!4872327 () Bool)

(assert (=> b!4276475 m!4872327))

(assert (=> b!4276476 m!4872225))

(declare-fun m!4872329 () Bool)

(assert (=> b!4276476 m!4872329))

(assert (=> b!4276476 m!4872329))

(assert (=> b!4276476 m!4872231))

(declare-fun m!4872331 () Bool)

(assert (=> b!4276476 m!4872331))

(declare-fun m!4872333 () Bool)

(assert (=> b!4276476 m!4872333))

(declare-fun m!4872335 () Bool)

(assert (=> b!4276476 m!4872335))

(assert (=> b!4276476 m!4872231))

(assert (=> b!4276476 m!4872333))

(declare-fun m!4872337 () Bool)

(assert (=> b!4276476 m!4872337))

(assert (=> b!4276476 m!4872227))

(assert (=> b!4276476 m!4872231))

(declare-fun m!4872339 () Bool)

(assert (=> b!4276476 m!4872339))

(assert (=> d!1262390 d!1262428))

(declare-fun d!1262430 () Bool)

(assert (=> d!1262430 (= (efficientList$default$2!203 (c!728260 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743571)))) Nil!47342)))

(assert (=> d!1262390 d!1262430))

(declare-fun d!1262432 () Bool)

(declare-fun c!728304 () Bool)

(assert (=> d!1262432 (= c!728304 (is-Node!14324 (c!728260 x!743572)))))

(declare-fun e!2655055 () Bool)

(assert (=> d!1262432 (= (inv!62638 (c!728260 x!743572)) e!2655055)))

(declare-fun b!4276485 () Bool)

(declare-fun inv!62642 (Conc!14324) Bool)

(assert (=> b!4276485 (= e!2655055 (inv!62642 (c!728260 x!743572)))))

(declare-fun b!4276486 () Bool)

(declare-fun e!2655056 () Bool)

(assert (=> b!4276486 (= e!2655055 e!2655056)))

(declare-fun res!1756019 () Bool)

(assert (=> b!4276486 (= res!1756019 (not (is-Leaf!22142 (c!728260 x!743572))))))

(assert (=> b!4276486 (=> res!1756019 e!2655056)))

(declare-fun b!4276487 () Bool)

(declare-fun inv!62643 (Conc!14324) Bool)

(assert (=> b!4276487 (= e!2655056 (inv!62643 (c!728260 x!743572)))))

(assert (= (and d!1262432 c!728304) b!4276485))

(assert (= (and d!1262432 (not c!728304)) b!4276486))

(assert (= (and b!4276486 (not res!1756019)) b!4276487))

(declare-fun m!4872341 () Bool)

(assert (=> b!4276485 m!4872341))

(declare-fun m!4872343 () Bool)

(assert (=> b!4276487 m!4872343))

(assert (=> b!4276334 d!1262432))

(declare-fun d!1262434 () Bool)

(declare-fun c!728305 () Bool)

(assert (=> d!1262434 (= c!728305 (is-Node!14324 (c!728260 x!743571)))))

(declare-fun e!2655057 () Bool)

(assert (=> d!1262434 (= (inv!62638 (c!728260 x!743571)) e!2655057)))

(declare-fun b!4276488 () Bool)

(assert (=> b!4276488 (= e!2655057 (inv!62642 (c!728260 x!743571)))))

(declare-fun b!4276489 () Bool)

(declare-fun e!2655058 () Bool)

(assert (=> b!4276489 (= e!2655057 e!2655058)))

(declare-fun res!1756020 () Bool)

(assert (=> b!4276489 (= res!1756020 (not (is-Leaf!22142 (c!728260 x!743571))))))

(assert (=> b!4276489 (=> res!1756020 e!2655058)))

(declare-fun b!4276490 () Bool)

(assert (=> b!4276490 (= e!2655058 (inv!62643 (c!728260 x!743571)))))

(assert (= (and d!1262434 c!728305) b!4276488))

(assert (= (and d!1262434 (not c!728305)) b!4276489))

(assert (= (and b!4276489 (not res!1756020)) b!4276490))

(declare-fun m!4872345 () Bool)

(assert (=> b!4276488 m!4872345))

(declare-fun m!4872347 () Bool)

(assert (=> b!4276490 m!4872347))

(assert (=> b!4276332 d!1262434))

(assert (=> b!4276333 d!1262356))

(assert (=> b!4276333 d!1262346))

(assert (=> d!1262384 d!1262354))

(declare-fun bm!294247 () Bool)

(declare-fun c!728306 () Bool)

(declare-fun c!728307 () Bool)

(assert (=> bm!294247 (= c!728306 c!728307)))

(declare-fun call!294252 () List!47466)

(declare-fun e!2655061 () List!47466)

(assert (=> bm!294247 (= call!294252 (++!12092 e!2655061 (efficientList$default$2!203 (c!728260 x!743573))))))

(declare-fun b!4276491 () Bool)

(declare-fun lt!1513869 () List!47466)

(assert (=> b!4276491 (= e!2655061 lt!1513869)))

(declare-fun d!1262436 () Bool)

(declare-fun lt!1513873 () List!47466)

(assert (=> d!1262436 (= lt!1513873 (++!12092 (list!17247 (c!728260 x!743573)) (efficientList$default$2!203 (c!728260 x!743573))))))

(declare-fun e!2655059 () List!47466)

(assert (=> d!1262436 (= lt!1513873 e!2655059)))

(declare-fun c!728308 () Bool)

(assert (=> d!1262436 (= c!728308 (is-Empty!14324 (c!728260 x!743573)))))

(assert (=> d!1262436 (= (efficientList!585 (c!728260 x!743573) (efficientList$default$2!203 (c!728260 x!743573))) lt!1513873)))

(declare-fun b!4276492 () Bool)

(declare-fun e!2655060 () List!47466)

(assert (=> b!4276492 (= e!2655059 e!2655060)))

(assert (=> b!4276492 (= c!728307 (is-Leaf!22142 (c!728260 x!743573)))))

(declare-fun b!4276493 () Bool)

(assert (=> b!4276493 (= e!2655061 (efficientList!587 (xs!17630 (c!728260 x!743573))))))

(declare-fun b!4276494 () Bool)

(declare-fun lt!1513872 () Unit!66295)

(declare-fun lt!1513870 () Unit!66295)

(assert (=> b!4276494 (= lt!1513872 lt!1513870)))

(declare-fun lt!1513871 () List!47466)

(assert (=> b!4276494 (= (++!12092 (++!12092 lt!1513871 lt!1513869) (efficientList$default$2!203 (c!728260 x!743573))) (++!12092 lt!1513871 call!294252))))

(assert (=> b!4276494 (= lt!1513870 (lemmaConcatAssociativity!2727 lt!1513871 lt!1513869 (efficientList$default$2!203 (c!728260 x!743573))))))

(assert (=> b!4276494 (= lt!1513869 (list!17247 (right!35593 (c!728260 x!743573))))))

(assert (=> b!4276494 (= lt!1513871 (list!17247 (left!35263 (c!728260 x!743573))))))

(assert (=> b!4276494 (= e!2655060 (efficientList!585 (left!35263 (c!728260 x!743573)) (efficientList!585 (right!35593 (c!728260 x!743573)) (efficientList$default$2!203 (c!728260 x!743573)))))))

(declare-fun b!4276495 () Bool)

(assert (=> b!4276495 (= e!2655060 call!294252)))

(declare-fun b!4276496 () Bool)

(assert (=> b!4276496 (= e!2655059 (efficientList$default$2!203 (c!728260 x!743573)))))

(assert (= (and d!1262436 c!728308) b!4276496))

(assert (= (and d!1262436 (not c!728308)) b!4276492))

(assert (= (and b!4276492 c!728307) b!4276495))

(assert (= (and b!4276492 (not c!728307)) b!4276494))

(assert (= (or b!4276495 b!4276494) bm!294247))

(assert (= (and bm!294247 c!728306) b!4276493))

(assert (= (and bm!294247 (not c!728306)) b!4276491))

(assert (=> bm!294247 m!4872211))

(declare-fun m!4872349 () Bool)

(assert (=> bm!294247 m!4872349))

(assert (=> d!1262436 m!4872167))

(assert (=> d!1262436 m!4872167))

(assert (=> d!1262436 m!4872211))

(declare-fun m!4872351 () Bool)

(assert (=> d!1262436 m!4872351))

(declare-fun m!4872353 () Bool)

(assert (=> b!4276493 m!4872353))

(assert (=> b!4276494 m!4872205))

(declare-fun m!4872355 () Bool)

(assert (=> b!4276494 m!4872355))

(assert (=> b!4276494 m!4872355))

(assert (=> b!4276494 m!4872211))

(declare-fun m!4872357 () Bool)

(assert (=> b!4276494 m!4872357))

(declare-fun m!4872359 () Bool)

(assert (=> b!4276494 m!4872359))

(declare-fun m!4872361 () Bool)

(assert (=> b!4276494 m!4872361))

(assert (=> b!4276494 m!4872211))

(assert (=> b!4276494 m!4872359))

(declare-fun m!4872363 () Bool)

(assert (=> b!4276494 m!4872363))

(assert (=> b!4276494 m!4872207))

(assert (=> b!4276494 m!4872211))

(declare-fun m!4872365 () Bool)

(assert (=> b!4276494 m!4872365))

(assert (=> d!1262384 d!1262436))

(declare-fun d!1262438 () Bool)

(assert (=> d!1262438 (= (efficientList$default$2!203 (c!728260 x!743573)) Nil!47342)))

(assert (=> d!1262384 d!1262438))

(assert (=> bs!602283 d!1262352))

(assert (=> bs!602283 d!1262426))

(assert (=> bs!602283 d!1262348))

(assert (=> bs!602283 d!1262360))

(declare-fun d!1262440 () Bool)

(declare-fun c!728309 () Bool)

(assert (=> d!1262440 (= c!728309 (is-Node!14324 (c!728260 x!743573)))))

(declare-fun e!2655062 () Bool)

(assert (=> d!1262440 (= (inv!62638 (c!728260 x!743573)) e!2655062)))

(declare-fun b!4276497 () Bool)

(assert (=> b!4276497 (= e!2655062 (inv!62642 (c!728260 x!743573)))))

(declare-fun b!4276498 () Bool)

(declare-fun e!2655063 () Bool)

(assert (=> b!4276498 (= e!2655062 e!2655063)))

(declare-fun res!1756021 () Bool)

(assert (=> b!4276498 (= res!1756021 (not (is-Leaf!22142 (c!728260 x!743573))))))

(assert (=> b!4276498 (=> res!1756021 e!2655063)))

(declare-fun b!4276499 () Bool)

(assert (=> b!4276499 (= e!2655063 (inv!62643 (c!728260 x!743573)))))

(assert (= (and d!1262440 c!728309) b!4276497))

(assert (= (and d!1262440 (not c!728309)) b!4276498))

(assert (= (and b!4276498 (not res!1756021)) b!4276499))

(declare-fun m!4872367 () Bool)

(assert (=> b!4276497 m!4872367))

(declare-fun m!4872369 () Bool)

(assert (=> b!4276499 m!4872369))

(assert (=> b!4276335 d!1262440))

(assert (=> d!1262380 d!1262350))

(declare-fun bm!294248 () Bool)

(declare-fun c!728310 () Bool)

(declare-fun c!728311 () Bool)

(assert (=> bm!294248 (= c!728310 c!728311)))

(declare-fun call!294253 () List!47466)

(declare-fun e!2655066 () List!47466)

(assert (=> bm!294248 (= call!294253 (++!12092 e!2655066 (efficientList$default$2!203 (c!728260 x!743572))))))

(declare-fun b!4276500 () Bool)

(declare-fun lt!1513874 () List!47466)

(assert (=> b!4276500 (= e!2655066 lt!1513874)))

(declare-fun d!1262442 () Bool)

(declare-fun lt!1513878 () List!47466)

(assert (=> d!1262442 (= lt!1513878 (++!12092 (list!17247 (c!728260 x!743572)) (efficientList$default$2!203 (c!728260 x!743572))))))

(declare-fun e!2655064 () List!47466)

(assert (=> d!1262442 (= lt!1513878 e!2655064)))

(declare-fun c!728312 () Bool)

(assert (=> d!1262442 (= c!728312 (is-Empty!14324 (c!728260 x!743572)))))

(assert (=> d!1262442 (= (efficientList!585 (c!728260 x!743572) (efficientList$default$2!203 (c!728260 x!743572))) lt!1513878)))

(declare-fun b!4276501 () Bool)

(declare-fun e!2655065 () List!47466)

(assert (=> b!4276501 (= e!2655064 e!2655065)))

(assert (=> b!4276501 (= c!728311 (is-Leaf!22142 (c!728260 x!743572)))))

(declare-fun b!4276502 () Bool)

(assert (=> b!4276502 (= e!2655066 (efficientList!587 (xs!17630 (c!728260 x!743572))))))

(declare-fun b!4276503 () Bool)

(declare-fun lt!1513877 () Unit!66295)

(declare-fun lt!1513875 () Unit!66295)

(assert (=> b!4276503 (= lt!1513877 lt!1513875)))

(declare-fun lt!1513876 () List!47466)

(assert (=> b!4276503 (= (++!12092 (++!12092 lt!1513876 lt!1513874) (efficientList$default$2!203 (c!728260 x!743572))) (++!12092 lt!1513876 call!294253))))

(assert (=> b!4276503 (= lt!1513875 (lemmaConcatAssociativity!2727 lt!1513876 lt!1513874 (efficientList$default$2!203 (c!728260 x!743572))))))

(assert (=> b!4276503 (= lt!1513874 (list!17247 (right!35593 (c!728260 x!743572))))))

(assert (=> b!4276503 (= lt!1513876 (list!17247 (left!35263 (c!728260 x!743572))))))

(assert (=> b!4276503 (= e!2655065 (efficientList!585 (left!35263 (c!728260 x!743572)) (efficientList!585 (right!35593 (c!728260 x!743572)) (efficientList$default$2!203 (c!728260 x!743572)))))))

(declare-fun b!4276504 () Bool)

(assert (=> b!4276504 (= e!2655065 call!294253)))

(declare-fun b!4276505 () Bool)

(assert (=> b!4276505 (= e!2655064 (efficientList$default$2!203 (c!728260 x!743572)))))

(assert (= (and d!1262442 c!728312) b!4276505))

(assert (= (and d!1262442 (not c!728312)) b!4276501))

(assert (= (and b!4276501 c!728311) b!4276504))

(assert (= (and b!4276501 (not c!728311)) b!4276503))

(assert (= (or b!4276504 b!4276503) bm!294248))

(assert (= (and bm!294248 c!728310) b!4276502))

(assert (= (and bm!294248 (not c!728310)) b!4276500))

(assert (=> bm!294248 m!4872199))

(declare-fun m!4872371 () Bool)

(assert (=> bm!294248 m!4872371))

(assert (=> d!1262442 m!4872163))

(assert (=> d!1262442 m!4872163))

(assert (=> d!1262442 m!4872199))

(declare-fun m!4872373 () Bool)

(assert (=> d!1262442 m!4872373))

(declare-fun m!4872375 () Bool)

(assert (=> b!4276502 m!4872375))

(assert (=> b!4276503 m!4872237))

(declare-fun m!4872377 () Bool)

(assert (=> b!4276503 m!4872377))

(assert (=> b!4276503 m!4872377))

(assert (=> b!4276503 m!4872199))

(declare-fun m!4872379 () Bool)

(assert (=> b!4276503 m!4872379))

(declare-fun m!4872381 () Bool)

(assert (=> b!4276503 m!4872381))

(declare-fun m!4872383 () Bool)

(assert (=> b!4276503 m!4872383))

(assert (=> b!4276503 m!4872199))

(assert (=> b!4276503 m!4872381))

(declare-fun m!4872385 () Bool)

(assert (=> b!4276503 m!4872385))

(assert (=> b!4276503 m!4872239))

(assert (=> b!4276503 m!4872199))

(declare-fun m!4872387 () Bool)

(assert (=> b!4276503 m!4872387))

(assert (=> d!1262380 d!1262442))

(declare-fun d!1262444 () Bool)

(assert (=> d!1262444 (= (efficientList$default$2!203 (c!728260 x!743572)) Nil!47342)))

(assert (=> d!1262380 d!1262444))

(declare-fun tp!1308625 () Bool)

(declare-fun e!2655071 () Bool)

(declare-fun tp!1308626 () Bool)

(declare-fun b!4276512 () Bool)

(assert (=> b!4276512 (= e!2655071 (and (inv!62638 (left!35263 (c!728260 x!743572))) tp!1308625 (inv!62638 (right!35593 (c!728260 x!743572))) tp!1308626))))

(declare-fun b!4276513 () Bool)

(declare-fun inv!62644 (IArray!28653) Bool)

(assert (=> b!4276513 (= e!2655071 (inv!62644 (xs!17630 (c!728260 x!743572))))))

(assert (=> b!4276334 (= tp!1308611 (and (inv!62638 (c!728260 x!743572)) e!2655071))))

(assert (= (and b!4276334 (is-Node!14324 (c!728260 x!743572))) b!4276512))

(assert (= (and b!4276334 (is-Leaf!22142 (c!728260 x!743572))) b!4276513))

(declare-fun m!4872389 () Bool)

(assert (=> b!4276512 m!4872389))

(declare-fun m!4872391 () Bool)

(assert (=> b!4276512 m!4872391))

(declare-fun m!4872393 () Bool)

(assert (=> b!4276513 m!4872393))

(assert (=> b!4276334 m!4872115))

(declare-fun tp!1308628 () Bool)

(declare-fun b!4276514 () Bool)

(declare-fun tp!1308627 () Bool)

(declare-fun e!2655073 () Bool)

(assert (=> b!4276514 (= e!2655073 (and (inv!62638 (left!35263 (c!728260 x!743571))) tp!1308627 (inv!62638 (right!35593 (c!728260 x!743571))) tp!1308628))))

(declare-fun b!4276515 () Bool)

(assert (=> b!4276515 (= e!2655073 (inv!62644 (xs!17630 (c!728260 x!743571))))))

(assert (=> b!4276332 (= tp!1308609 (and (inv!62638 (c!728260 x!743571)) e!2655073))))

(assert (= (and b!4276332 (is-Node!14324 (c!728260 x!743571))) b!4276514))

(assert (= (and b!4276332 (is-Leaf!22142 (c!728260 x!743571))) b!4276515))

(declare-fun m!4872395 () Bool)

(assert (=> b!4276514 m!4872395))

(declare-fun m!4872397 () Bool)

(assert (=> b!4276514 m!4872397))

(declare-fun m!4872399 () Bool)

(assert (=> b!4276515 m!4872399))

(assert (=> b!4276332 m!4872091))

(declare-fun e!2655075 () Bool)

(declare-fun b!4276516 () Bool)

(declare-fun tp!1308630 () Bool)

(declare-fun tp!1308629 () Bool)

(assert (=> b!4276516 (= e!2655075 (and (inv!62638 (left!35263 (c!728260 x!743573))) tp!1308629 (inv!62638 (right!35593 (c!728260 x!743573))) tp!1308630))))

(declare-fun b!4276517 () Bool)

(assert (=> b!4276517 (= e!2655075 (inv!62644 (xs!17630 (c!728260 x!743573))))))

(assert (=> b!4276335 (= tp!1308610 (and (inv!62638 (c!728260 x!743573)) e!2655075))))

(assert (= (and b!4276335 (is-Node!14324 (c!728260 x!743573))) b!4276516))

(assert (= (and b!4276335 (is-Leaf!22142 (c!728260 x!743573))) b!4276517))

(declare-fun m!4872401 () Bool)

(assert (=> b!4276516 m!4872401))

(declare-fun m!4872403 () Bool)

(assert (=> b!4276516 m!4872403))

(declare-fun m!4872405 () Bool)

(assert (=> b!4276517 m!4872405))

(assert (=> b!4276335 m!4872117))

(push 1)

(assert (not d!1262436))

(assert (not b!4276411))

(assert (not bm!294245))

(assert (not b!4276408))

(assert (not d!1262422))

(assert (not b!4276412))

(assert (not b!4276503))

(assert (not d!1262414))

(assert (not b!4276475))

(assert (not bm!294247))

(assert (not b!4276334))

(assert (not d!1262410))

(assert (not b!4276419))

(assert (not b!4276512))

(assert (not d!1262416))

(assert (not b!4276493))

(assert (not b!4276502))

(assert (not b!4276460))

(assert (not b!4276471))

(assert (not b!4276513))

(assert (not b!4276485))

(assert (not d!1262424))

(assert (not b!4276332))

(assert (not b!4276416))

(assert (not d!1262418))

(assert (not b!4276494))

(assert (not b!4276516))

(assert (not b!4276499))

(assert (not b!4276490))

(assert (not b!4276497))

(assert (not b!4276515))

(assert (not b!4276517))

(assert (not b!4276415))

(assert (not b!4276476))

(assert (not d!1262442))

(assert (not d!1262428))

(assert (not b!4276514))

(assert (not b!4276335))

(assert (not b!4276420))

(assert (not bm!294248))

(assert (not b!4276488))

(assert (not d!1262420))

(assert (not bm!294246))

(assert (not b!4276407))

(assert (not b!4276487))

(assert (not b!4276459))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

