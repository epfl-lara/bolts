; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!218606 () Bool)

(assert start!218606)

(assert (=> start!218606 true))

(declare-fun b!2242967 () Bool)

(assert (=> b!2242967 true))

(assert (=> b!2242967 true))

(declare-fun b!2242968 () Bool)

(assert (=> b!2242968 true))

(declare-fun b!2242979 () Bool)

(declare-fun e!1434480 () Bool)

(declare-datatypes ((List!26583 0))(
  ( (Nil!26489) (Cons!26489 (h!31890 (_ BitVec 16)) (t!200099 List!26583)) )
))
(declare-datatypes ((IArray!17049 0))(
  ( (IArray!17050 (innerList!8582 List!26583)) )
))
(declare-datatypes ((Conc!8522 0))(
  ( (Node!8522 (left!20145 Conc!8522) (right!20475 Conc!8522) (csize!17274 Int) (cheight!8733 Int)) (Leaf!12600 (xs!11464 IArray!17049) (csize!17275 Int)) (Empty!8522) )
))
(declare-datatypes ((BalanceConc!16772 0))(
  ( (BalanceConc!16773 (c!357117 Conc!8522)) )
))
(declare-fun x!431104 () BalanceConc!16772)

(declare-fun tp!707400 () Bool)

(declare-fun inv!35999 (Conc!8522) Bool)

(assert (=> b!2242979 (= e!1434480 (and (inv!35999 (c!357117 x!431104)) tp!707400))))

(declare-fun inst!1294 () Bool)

(declare-datatypes ((FloatLiteralValueInjection!104 0))(
  ( (FloatLiteralValueInjection!105) )
))
(declare-fun thiss!4969 () FloatLiteralValueInjection!104)

(declare-fun inv!36000 (BalanceConc!16772) Bool)

(declare-fun list!10116 (BalanceConc!16772) List!26583)

(declare-datatypes ((TokenValue!4346 0))(
  ( (FloatLiteralValue!8692 (text!30867 List!26583)) (TokenValueExt!4345 (__x!17756 Int)) (Broken!21730 (value!133049 List!26583)) (Object!4439) (End!4346) (Def!4346) (Underscore!4346) (Match!4346) (Else!4346) (Error!4346) (Case!4346) (If!4346) (Extends!4346) (Abstract!4346) (Class!4346) (Val!4346) (DelimiterValue!8692 (del!4406 List!26583)) (KeywordValue!4352 (value!133050 List!26583)) (CommentValue!8692 (value!133051 List!26583)) (WhitespaceValue!8692 (value!133052 List!26583)) (IndentationValue!4346 (value!133053 List!26583)) (String!28843) (Int32!4346) (Broken!21731 (value!133054 List!26583)) (Boolean!4347) (Unit!39492) (OperatorValue!4349 (op!4406 List!26583)) (IdentifierValue!8692 (value!133055 List!26583)) (IdentifierValue!8693 (value!133056 List!26583)) (WhitespaceValue!8693 (value!133057 List!26583)) (True!8692) (False!8692) (Broken!21732 (value!133058 List!26583)) (Broken!21733 (value!133059 List!26583)) (True!8693) (RightBrace!4346) (RightBracket!4346) (Colon!4346) (Null!4346) (Comma!4346) (LeftBracket!4346) (False!8693) (LeftBrace!4346) (ImaginaryLiteralValue!4346 (text!30868 List!26583)) (StringLiteralValue!13038 (value!133060 List!26583)) (EOFValue!4346 (value!133061 List!26583)) (IdentValue!4346 (value!133062 List!26583)) (DelimiterValue!8693 (value!133063 List!26583)) (DedentValue!4346 (value!133064 List!26583)) (NewLineValue!4346 (value!133065 List!26583)) (IntegerValue!13038 (value!133066 (_ BitVec 32)) (text!30869 List!26583)) (IntegerValue!13039 (value!133067 Int) (text!30870 List!26583)) (Times!4346) (Or!4346) (Equal!4346) (Minus!4346) (Broken!21734 (value!133068 List!26583)) (And!4346) (Div!4346) (LessEqual!4346) (Mod!4346) (Concat!10882) (Not!4346) (Plus!4346) (SpaceValue!4346 (value!133069 List!26583)) (IntegerValue!13040 (value!133070 Int) (text!30871 List!26583)) (StringLiteralValue!13039 (text!30872 List!26583)) (FloatLiteralValue!8693 (text!30873 List!26583)) (BytesLiteralValue!4346 (value!133071 List!26583)) (CommentValue!8693 (value!133072 List!26583)) (StringLiteralValue!13040 (value!133073 List!26583)) (ErrorTokenValue!4346 (msg!4407 List!26583)) )
))
(declare-fun toCharacters!25 (FloatLiteralValueInjection!104 TokenValue!4346) BalanceConc!16772)

(declare-fun toValue!32 (FloatLiteralValueInjection!104 BalanceConc!16772) TokenValue!4346)

(assert (=> start!218606 (= inst!1294 (=> (and (inv!36000 x!431104) e!1434480) (= (list!10116 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!431104))) (list!10116 x!431104))))))

(assert (= start!218606 b!2242979))

(declare-fun m!2675247 () Bool)

(assert (=> b!2242979 m!2675247))

(declare-fun m!2675249 () Bool)

(assert (=> start!218606 m!2675249))

(declare-fun m!2675251 () Bool)

(assert (=> start!218606 m!2675251))

(declare-fun m!2675253 () Bool)

(assert (=> start!218606 m!2675253))

(declare-fun m!2675255 () Bool)

(assert (=> start!218606 m!2675255))

(assert (=> start!218606 m!2675253))

(assert (=> start!218606 m!2675249))

(declare-fun m!2675257 () Bool)

(assert (=> start!218606 m!2675257))

(declare-fun res!958366 () Bool)

(declare-fun e!1434483 () Bool)

(assert (=> b!2242968 (=> res!958366 e!1434483)))

(declare-fun x!431105 () BalanceConc!16772)

(declare-fun x!431106 () BalanceConc!16772)

(assert (=> b!2242968 (= res!958366 (not (= (list!10116 x!431105) (list!10116 x!431106))))))

(declare-fun inst!1295 () Bool)

(declare-fun e!1434482 () Bool)

(declare-fun e!1434481 () Bool)

(assert (=> b!2242968 (= inst!1295 (=> (and (inv!36000 x!431105) e!1434482 (inv!36000 x!431106) e!1434481) e!1434483))))

(declare-fun b!2242980 () Bool)

(assert (=> b!2242980 (= e!1434483 (= (toValue!32 thiss!4969 x!431105) (toValue!32 thiss!4969 x!431106)))))

(declare-fun b!2242981 () Bool)

(declare-fun tp!707402 () Bool)

(assert (=> b!2242981 (= e!1434482 (and (inv!35999 (c!357117 x!431105)) tp!707402))))

(declare-fun b!2242982 () Bool)

(declare-fun tp!707401 () Bool)

(assert (=> b!2242982 (= e!1434481 (and (inv!35999 (c!357117 x!431106)) tp!707401))))

(assert (= (and b!2242968 (not res!958366)) b!2242980))

(assert (= b!2242968 b!2242981))

(assert (= b!2242968 b!2242982))

(declare-fun m!2675259 () Bool)

(assert (=> b!2242968 m!2675259))

(declare-fun m!2675261 () Bool)

(assert (=> b!2242968 m!2675261))

(declare-fun m!2675263 () Bool)

(assert (=> b!2242968 m!2675263))

(declare-fun m!2675265 () Bool)

(assert (=> b!2242968 m!2675265))

(declare-fun m!2675267 () Bool)

(assert (=> b!2242980 m!2675267))

(declare-fun m!2675269 () Bool)

(assert (=> b!2242980 m!2675269))

(declare-fun m!2675271 () Bool)

(assert (=> b!2242981 m!2675271))

(declare-fun m!2675273 () Bool)

(assert (=> b!2242982 m!2675273))

(declare-fun bs!454603 () Bool)

(declare-fun neg-inst!1295 () Bool)

(declare-fun s!224311 () Bool)

(assert (= bs!454603 (and neg-inst!1295 s!224311)))

(assert (=> bs!454603 (=> true (= (list!10116 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!431104))) (list!10116 x!431104)))))

(assert (=> m!2675257 m!2675253))

(assert (=> m!2675257 m!2675249))

(assert (=> m!2675257 m!2675251))

(assert (=> m!2675257 s!224311))

(assert (=> m!2675253 s!224311))

(declare-fun bs!454604 () Bool)

(assert (= bs!454604 (and neg-inst!1295 start!218606)))

(assert (=> bs!454604 (= true inst!1294)))

(declare-fun bs!454605 () Bool)

(declare-fun neg-inst!1294 () Bool)

(declare-fun s!224313 () Bool)

(assert (= bs!454605 (and neg-inst!1294 s!224313)))

(declare-fun res!958367 () Bool)

(declare-fun e!1434484 () Bool)

(assert (=> bs!454605 (=> res!958367 e!1434484)))

(assert (=> bs!454605 (= res!958367 (not (= (list!10116 x!431105) (list!10116 x!431105))))))

(assert (=> bs!454605 (=> true e!1434484)))

(declare-fun b!2242983 () Bool)

(assert (=> b!2242983 (= e!1434484 (= (toValue!32 thiss!4969 x!431105) (toValue!32 thiss!4969 x!431105)))))

(assert (= (and bs!454605 (not res!958367)) b!2242983))

(assert (=> m!2675259 s!224313))

(assert (=> m!2675259 s!224313))

(declare-fun bs!454606 () Bool)

(assert (= bs!454606 (and m!2675267 m!2675259)))

(assert (=> bs!454606 s!224313))

(assert (=> m!2675267 s!224313))

(assert (=> bs!454606 s!224313))

(assert (=> m!2675267 s!224313))

(declare-fun bs!454607 () Bool)

(declare-fun s!224315 () Bool)

(assert (= bs!454607 (and neg-inst!1294 s!224315)))

(declare-fun res!958368 () Bool)

(declare-fun e!1434485 () Bool)

(assert (=> bs!454607 (=> res!958368 e!1434485)))

(assert (=> bs!454607 (= res!958368 (not (= (list!10116 x!431106) (list!10116 x!431105))))))

(assert (=> bs!454607 (=> true e!1434485)))

(declare-fun b!2242984 () Bool)

(assert (=> b!2242984 (= e!1434485 (= (toValue!32 thiss!4969 x!431106) (toValue!32 thiss!4969 x!431105)))))

(assert (= (and bs!454607 (not res!958368)) b!2242984))

(declare-fun bs!454608 () Bool)

(assert (= bs!454608 (and m!2675269 m!2675259 m!2675267)))

(assert (=> bs!454608 m!2675261))

(assert (=> bs!454608 m!2675259))

(assert (=> bs!454608 s!224315))

(declare-fun bs!454609 () Bool)

(declare-fun s!224317 () Bool)

(assert (= bs!454609 (and neg-inst!1294 s!224317)))

(declare-fun res!958369 () Bool)

(declare-fun e!1434486 () Bool)

(assert (=> bs!454609 (=> res!958369 e!1434486)))

(assert (=> bs!454609 (= res!958369 (not (= (list!10116 x!431106) (list!10116 x!431106))))))

(assert (=> bs!454609 (=> true e!1434486)))

(declare-fun b!2242985 () Bool)

(assert (=> b!2242985 (= e!1434486 (= (toValue!32 thiss!4969 x!431106) (toValue!32 thiss!4969 x!431106)))))

(assert (= (and bs!454609 (not res!958369)) b!2242985))

(assert (=> m!2675269 m!2675261))

(assert (=> m!2675269 m!2675261))

(assert (=> m!2675269 s!224317))

(declare-fun bs!454610 () Bool)

(declare-fun s!224319 () Bool)

(assert (= bs!454610 (and neg-inst!1294 s!224319)))

(declare-fun res!958370 () Bool)

(declare-fun e!1434487 () Bool)

(assert (=> bs!454610 (=> res!958370 e!1434487)))

(assert (=> bs!454610 (= res!958370 (not (= (list!10116 x!431105) (list!10116 x!431106))))))

(assert (=> bs!454610 (=> true e!1434487)))

(declare-fun b!2242986 () Bool)

(assert (=> b!2242986 (= e!1434487 (= (toValue!32 thiss!4969 x!431105) (toValue!32 thiss!4969 x!431106)))))

(assert (= (and bs!454610 (not res!958370)) b!2242986))

(assert (=> bs!454608 m!2675259))

(assert (=> bs!454608 m!2675261))

(assert (=> bs!454608 s!224319))

(assert (=> m!2675269 s!224317))

(declare-fun bs!454611 () Bool)

(declare-fun s!224321 () Bool)

(assert (= bs!454611 (and neg-inst!1294 s!224321)))

(declare-fun res!958371 () Bool)

(declare-fun e!1434488 () Bool)

(assert (=> bs!454611 (=> res!958371 e!1434488)))

(assert (=> bs!454611 (= res!958371 (not (= (list!10116 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!431104))) (list!10116 x!431106))))))

(assert (=> bs!454611 (=> true e!1434488)))

(declare-fun b!2242987 () Bool)

(assert (=> b!2242987 (= e!1434488 (= (toValue!32 thiss!4969 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!431104))) (toValue!32 thiss!4969 x!431106)))))

(assert (= (and bs!454611 (not res!958371)) b!2242987))

(declare-fun bs!454612 () Bool)

(assert (= bs!454612 (and m!2675251 m!2675269)))

(assert (=> bs!454612 m!2675251))

(assert (=> bs!454612 m!2675261))

(assert (=> bs!454612 s!224321))

(declare-fun bs!454613 () Bool)

(declare-fun s!224323 () Bool)

(assert (= bs!454613 (and neg-inst!1294 s!224323)))

(declare-fun res!958372 () Bool)

(declare-fun e!1434489 () Bool)

(assert (=> bs!454613 (=> res!958372 e!1434489)))

(assert (=> bs!454613 (= res!958372 (not (= (list!10116 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!431104))) (list!10116 x!431105))))))

(assert (=> bs!454613 (=> true e!1434489)))

(declare-fun b!2242988 () Bool)

(assert (=> b!2242988 (= e!1434489 (= (toValue!32 thiss!4969 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!431104))) (toValue!32 thiss!4969 x!431105)))))

(assert (= (and bs!454613 (not res!958372)) b!2242988))

(declare-fun bs!454614 () Bool)

(assert (= bs!454614 (and m!2675251 m!2675259 m!2675267)))

(assert (=> bs!454614 m!2675251))

(assert (=> bs!454614 m!2675259))

(assert (=> bs!454614 s!224323))

(declare-fun bs!454615 () Bool)

(declare-fun s!224325 () Bool)

(assert (= bs!454615 (and neg-inst!1294 s!224325)))

(declare-fun res!958373 () Bool)

(declare-fun e!1434490 () Bool)

(assert (=> bs!454615 (=> res!958373 e!1434490)))

(assert (=> bs!454615 (= res!958373 (not (= (list!10116 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!431104))) (list!10116 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!431104))))))))

(assert (=> bs!454615 (=> true e!1434490)))

(declare-fun b!2242989 () Bool)

(assert (=> b!2242989 (= e!1434490 (= (toValue!32 thiss!4969 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!431104))) (toValue!32 thiss!4969 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!431104)))))))

(assert (= (and bs!454615 (not res!958373)) b!2242989))

(assert (=> m!2675251 s!224325))

(declare-fun bs!454616 () Bool)

(declare-fun s!224327 () Bool)

(assert (= bs!454616 (and neg-inst!1294 s!224327)))

(declare-fun res!958374 () Bool)

(declare-fun e!1434491 () Bool)

(assert (=> bs!454616 (=> res!958374 e!1434491)))

(assert (=> bs!454616 (= res!958374 (not (= (list!10116 x!431106) (list!10116 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!431104))))))))

(assert (=> bs!454616 (=> true e!1434491)))

(declare-fun b!2242990 () Bool)

(assert (=> b!2242990 (= e!1434491 (= (toValue!32 thiss!4969 x!431106) (toValue!32 thiss!4969 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!431104)))))))

(assert (= (and bs!454616 (not res!958374)) b!2242990))

(assert (=> bs!454612 m!2675261))

(assert (=> bs!454612 m!2675251))

(assert (=> bs!454612 s!224327))

(declare-fun bs!454617 () Bool)

(declare-fun s!224329 () Bool)

(assert (= bs!454617 (and neg-inst!1294 s!224329)))

(declare-fun res!958375 () Bool)

(declare-fun e!1434492 () Bool)

(assert (=> bs!454617 (=> res!958375 e!1434492)))

(assert (=> bs!454617 (= res!958375 (not (= (list!10116 x!431105) (list!10116 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!431104))))))))

(assert (=> bs!454617 (=> true e!1434492)))

(declare-fun b!2242991 () Bool)

(assert (=> b!2242991 (= e!1434492 (= (toValue!32 thiss!4969 x!431105) (toValue!32 thiss!4969 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!431104)))))))

(assert (= (and bs!454617 (not res!958375)) b!2242991))

(assert (=> bs!454614 m!2675259))

(assert (=> bs!454614 m!2675251))

(assert (=> bs!454614 s!224329))

(assert (=> m!2675251 s!224325))

(declare-fun bs!454618 () Bool)

(declare-fun s!224331 () Bool)

(assert (= bs!454618 (and neg-inst!1294 s!224331)))

(declare-fun res!958376 () Bool)

(declare-fun e!1434493 () Bool)

(assert (=> bs!454618 (=> res!958376 e!1434493)))

(assert (=> bs!454618 (= res!958376 (not (= (list!10116 x!431104) (list!10116 x!431106))))))

(assert (=> bs!454618 (=> true e!1434493)))

(declare-fun b!2242992 () Bool)

(assert (=> b!2242992 (= e!1434493 (= (toValue!32 thiss!4969 x!431104) (toValue!32 thiss!4969 x!431106)))))

(assert (= (and bs!454618 (not res!958376)) b!2242992))

(declare-fun bs!454619 () Bool)

(assert (= bs!454619 (and m!2675257 m!2675269)))

(assert (=> bs!454619 m!2675257))

(assert (=> bs!454619 m!2675261))

(assert (=> bs!454619 s!224331))

(declare-fun bs!454620 () Bool)

(declare-fun s!224333 () Bool)

(assert (= bs!454620 (and neg-inst!1294 s!224333)))

(declare-fun res!958377 () Bool)

(declare-fun e!1434494 () Bool)

(assert (=> bs!454620 (=> res!958377 e!1434494)))

(assert (=> bs!454620 (= res!958377 (not (= (list!10116 x!431104) (list!10116 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!431104))))))))

(assert (=> bs!454620 (=> true e!1434494)))

(declare-fun b!2242993 () Bool)

(assert (=> b!2242993 (= e!1434494 (= (toValue!32 thiss!4969 x!431104) (toValue!32 thiss!4969 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!431104)))))))

(assert (= (and bs!454620 (not res!958377)) b!2242993))

(declare-fun bs!454621 () Bool)

(assert (= bs!454621 (and m!2675257 m!2675251)))

(assert (=> bs!454621 m!2675257))

(assert (=> bs!454621 m!2675251))

(assert (=> bs!454621 s!224333))

(declare-fun bs!454622 () Bool)

(declare-fun s!224335 () Bool)

(assert (= bs!454622 (and neg-inst!1294 s!224335)))

(declare-fun res!958378 () Bool)

(declare-fun e!1434495 () Bool)

(assert (=> bs!454622 (=> res!958378 e!1434495)))

(assert (=> bs!454622 (= res!958378 (not (= (list!10116 x!431104) (list!10116 x!431105))))))

(assert (=> bs!454622 (=> true e!1434495)))

(declare-fun b!2242994 () Bool)

(assert (=> b!2242994 (= e!1434495 (= (toValue!32 thiss!4969 x!431104) (toValue!32 thiss!4969 x!431105)))))

(assert (= (and bs!454622 (not res!958378)) b!2242994))

(declare-fun bs!454623 () Bool)

(assert (= bs!454623 (and m!2675257 m!2675259 m!2675267)))

(assert (=> bs!454623 m!2675257))

(assert (=> bs!454623 m!2675259))

(assert (=> bs!454623 s!224335))

(declare-fun bs!454624 () Bool)

(declare-fun s!224337 () Bool)

(assert (= bs!454624 (and neg-inst!1294 s!224337)))

(declare-fun res!958379 () Bool)

(declare-fun e!1434496 () Bool)

(assert (=> bs!454624 (=> res!958379 e!1434496)))

(assert (=> bs!454624 (= res!958379 (not (= (list!10116 x!431104) (list!10116 x!431104))))))

(assert (=> bs!454624 (=> true e!1434496)))

(declare-fun b!2242995 () Bool)

(assert (=> b!2242995 (= e!1434496 (= (toValue!32 thiss!4969 x!431104) (toValue!32 thiss!4969 x!431104)))))

(assert (= (and bs!454624 (not res!958379)) b!2242995))

(assert (=> m!2675257 s!224337))

(declare-fun bs!454625 () Bool)

(declare-fun s!224339 () Bool)

(assert (= bs!454625 (and neg-inst!1294 s!224339)))

(declare-fun res!958380 () Bool)

(declare-fun e!1434497 () Bool)

(assert (=> bs!454625 (=> res!958380 e!1434497)))

(assert (=> bs!454625 (= res!958380 (not (= (list!10116 x!431106) (list!10116 x!431104))))))

(assert (=> bs!454625 (=> true e!1434497)))

(declare-fun b!2242996 () Bool)

(assert (=> b!2242996 (= e!1434497 (= (toValue!32 thiss!4969 x!431106) (toValue!32 thiss!4969 x!431104)))))

(assert (= (and bs!454625 (not res!958380)) b!2242996))

(assert (=> bs!454619 m!2675261))

(assert (=> bs!454619 m!2675257))

(assert (=> bs!454619 s!224339))

(declare-fun bs!454626 () Bool)

(declare-fun s!224341 () Bool)

(assert (= bs!454626 (and neg-inst!1294 s!224341)))

(declare-fun res!958381 () Bool)

(declare-fun e!1434498 () Bool)

(assert (=> bs!454626 (=> res!958381 e!1434498)))

(assert (=> bs!454626 (= res!958381 (not (= (list!10116 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!431104))) (list!10116 x!431104))))))

(assert (=> bs!454626 (=> true e!1434498)))

(declare-fun b!2242997 () Bool)

(assert (=> b!2242997 (= e!1434498 (= (toValue!32 thiss!4969 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!431104))) (toValue!32 thiss!4969 x!431104)))))

(assert (= (and bs!454626 (not res!958381)) b!2242997))

(assert (=> bs!454621 m!2675251))

(assert (=> bs!454621 m!2675257))

(assert (=> bs!454621 s!224341))

(declare-fun bs!454627 () Bool)

(declare-fun s!224343 () Bool)

(assert (= bs!454627 (and neg-inst!1294 s!224343)))

(declare-fun res!958382 () Bool)

(declare-fun e!1434499 () Bool)

(assert (=> bs!454627 (=> res!958382 e!1434499)))

(assert (=> bs!454627 (= res!958382 (not (= (list!10116 x!431105) (list!10116 x!431104))))))

(assert (=> bs!454627 (=> true e!1434499)))

(declare-fun b!2242998 () Bool)

(assert (=> b!2242998 (= e!1434499 (= (toValue!32 thiss!4969 x!431105) (toValue!32 thiss!4969 x!431104)))))

(assert (= (and bs!454627 (not res!958382)) b!2242998))

(assert (=> bs!454623 m!2675259))

(assert (=> bs!454623 m!2675257))

(assert (=> bs!454623 s!224343))

(assert (=> m!2675257 s!224337))

(declare-fun bs!454628 () Bool)

(assert (= bs!454628 (and m!2675253 m!2675269)))

(assert (=> bs!454628 s!224331))

(declare-fun bs!454629 () Bool)

(assert (= bs!454629 (and m!2675253 m!2675257)))

(assert (=> bs!454629 s!224337))

(declare-fun bs!454630 () Bool)

(assert (= bs!454630 (and m!2675253 m!2675251)))

(assert (=> bs!454630 s!224333))

(assert (=> m!2675253 s!224337))

(declare-fun bs!454631 () Bool)

(assert (= bs!454631 (and m!2675253 m!2675259 m!2675267)))

(assert (=> bs!454631 s!224335))

(assert (=> bs!454631 s!224343))

(assert (=> bs!454629 s!224337))

(assert (=> m!2675253 s!224337))

(assert (=> bs!454628 s!224339))

(assert (=> bs!454630 s!224341))

(declare-fun bs!454632 () Bool)

(assert (= bs!454632 (and m!2675261 m!2675257 m!2675253)))

(assert (=> bs!454632 s!224339))

(declare-fun bs!454633 () Bool)

(assert (= bs!454633 (and m!2675261 m!2675269)))

(assert (=> bs!454633 s!224317))

(declare-fun bs!454634 () Bool)

(assert (= bs!454634 (and m!2675261 m!2675259 m!2675267)))

(assert (=> bs!454634 s!224315))

(declare-fun bs!454635 () Bool)

(assert (= bs!454635 (and m!2675261 m!2675251)))

(assert (=> bs!454635 s!224327))

(assert (=> m!2675261 s!224317))

(assert (=> bs!454634 s!224319))

(assert (=> bs!454632 s!224331))

(assert (=> bs!454633 s!224317))

(assert (=> bs!454635 s!224321))

(assert (=> m!2675261 s!224317))

(declare-fun bs!454636 () Bool)

(assert (= bs!454636 (and neg-inst!1294 b!2242968)))

(assert (=> bs!454636 (= true inst!1295)))

(declare-fun b!2242969 () Bool)

(declare-fun e!1434478 () Bool)

(declare-fun e!1434476 () Bool)

(assert (=> b!2242969 (= e!1434478 e!1434476)))

(declare-fun res!958363 () Bool)

(assert (=> b!2242969 (=> res!958363 e!1434476)))

(declare-fun lambda!85101 () Int)

(declare-fun lambda!85102 () Int)

(declare-fun equivClasses!1608 (Int Int) Bool)

(assert (=> b!2242969 (= res!958363 (not (equivClasses!1608 lambda!85101 lambda!85102)))))

(declare-fun lambda!85103 () Int)

(declare-fun Forall2!675 (Int) Bool)

(assert (=> b!2242969 (= (equivClasses!1608 lambda!85101 lambda!85102) (Forall2!675 lambda!85103))))

(declare-fun e!1434477 () Bool)

(assert (=> b!2242968 (= e!1434477 e!1434478)))

(declare-fun res!958364 () Bool)

(assert (=> b!2242968 (=> res!958364 e!1434478)))

(assert (=> b!2242968 (= res!958364 (not (Forall2!675 lambda!85103)))))

(assert (=> b!2242968 (= (Forall2!675 lambda!85103) inst!1295)))

(declare-fun b!2242970 () Bool)

(declare-datatypes ((TokenValueInjection!8236 0))(
  ( (TokenValueInjection!8237 (toValue!5912 Int) (toChars!5771 Int)) )
))
(declare-fun inv!36001 (TokenValueInjection!8236) Bool)

(assert (=> b!2242970 (= e!1434476 (inv!36001 (TokenValueInjection!8237 lambda!85102 lambda!85101)))))

(declare-fun res!958365 () Bool)

(declare-fun e!1434479 () Bool)

(assert (=> start!218606 (=> res!958365 e!1434479)))

(declare-fun lambda!85100 () Int)

(declare-fun Forall!1058 (Int) Bool)

(assert (=> start!218606 (= res!958365 (not (Forall!1058 lambda!85100)))))

(assert (=> start!218606 (= (Forall!1058 lambda!85100) inst!1294)))

(assert (=> start!218606 (not e!1434479)))

(assert (=> start!218606 true))

(assert (=> b!2242967 (= e!1434479 e!1434477)))

(declare-fun res!958362 () Bool)

(assert (=> b!2242967 (=> res!958362 e!1434477)))

(declare-fun semiInverseModEq!1689 (Int Int) Bool)

(assert (=> b!2242967 (= res!958362 (not (semiInverseModEq!1689 lambda!85101 lambda!85102)))))

(assert (=> b!2242967 (= (semiInverseModEq!1689 lambda!85101 lambda!85102) (Forall!1058 lambda!85100))))

(assert (= neg-inst!1295 inst!1294))

(assert (= (and start!218606 (not res!958365)) b!2242967))

(assert (= (and b!2242967 (not res!958362)) b!2242968))

(assert (= neg-inst!1294 inst!1295))

(assert (= (and b!2242968 (not res!958364)) b!2242969))

(assert (= (and b!2242969 (not res!958363)) b!2242970))

(declare-fun m!2675275 () Bool)

(assert (=> b!2242970 m!2675275))

(declare-fun m!2675277 () Bool)

(assert (=> b!2242968 m!2675277))

(assert (=> b!2242968 m!2675277))

(declare-fun m!2675279 () Bool)

(assert (=> start!218606 m!2675279))

(assert (=> start!218606 m!2675279))

(declare-fun m!2675281 () Bool)

(assert (=> b!2242967 m!2675281))

(assert (=> b!2242967 m!2675281))

(assert (=> b!2242967 m!2675279))

(declare-fun m!2675283 () Bool)

(assert (=> b!2242969 m!2675283))

(assert (=> b!2242969 m!2675283))

(assert (=> b!2242969 m!2675277))

(push 1)

(assert (not bs!454603))

(assert (not b!2242969))

(assert (not bs!454627))

(assert (not bs!454622))

(assert (not b!2242985))

(assert (not b!2242990))

(assert (not b!2242970))

(assert (not b!2242983))

(assert (not b!2242968))

(assert (not bs!454615))

(assert (not bs!454616))

(assert (not b!2242996))

(assert (not b!2242981))

(assert (not b!2242982))

(assert (not b!2242998))

(assert (not b!2242987))

(assert (not bs!454624))

(assert (not b!2242994))

(assert (not bs!454605))

(assert (not b!2242992))

(assert (not b!2242980))

(assert (not b!2242989))

(assert (not bs!454620))

(assert (not bs!454625))

(assert (not bs!454613))

(assert (not b!2242967))

(assert (not bs!454609))

(assert (not b!2242986))

(assert (not b!2242993))

(assert (not b!2242984))

(assert (not bs!454626))

(assert (not bs!454617))

(assert (not start!218606))

(assert (not b!2242979))

(assert (not bs!454611))

(assert (not bs!454607))

(assert (not bs!454618))

(assert (not bs!454610))

(assert (not b!2242988))

(assert (not b!2242991))

(assert (not b!2242997))

(assert (not b!2242995))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!454690 () Bool)

(assert (= bs!454690 (and m!2675259 b!2242983)))

(assert (=> bs!454690 m!2675267))

(assert (=> bs!454690 m!2675267))

(declare-fun bs!454691 () Bool)

(assert (= bs!454691 (and m!2675269 m!2675259 m!2675267 b!2242984)))

(assert (=> bs!454691 m!2675269))

(assert (=> bs!454691 m!2675267))

(declare-fun bs!454692 () Bool)

(assert (= bs!454692 (and m!2675269 b!2242985)))

(assert (=> bs!454692 m!2675269))

(assert (=> bs!454692 m!2675269))

(declare-fun bs!454693 () Bool)

(assert (= bs!454693 (and m!2675269 m!2675259 m!2675267 b!2242986)))

(assert (=> bs!454693 m!2675267))

(assert (=> bs!454693 m!2675269))

(declare-fun bs!454694 () Bool)

(assert (= bs!454694 (and m!2675251 m!2675269 b!2242987)))

(declare-fun m!2675325 () Bool)

(assert (=> bs!454694 m!2675325))

(assert (=> bs!454694 m!2675269))

(declare-fun bs!454695 () Bool)

(assert (= bs!454695 (and m!2675251 m!2675259 m!2675267 b!2242988)))

(assert (=> bs!454695 m!2675325))

(assert (=> bs!454695 m!2675267))

(declare-fun bs!454696 () Bool)

(assert (= bs!454696 (and m!2675251 b!2242989)))

(assert (=> bs!454696 m!2675325))

(assert (=> bs!454696 m!2675325))

(declare-fun bs!454697 () Bool)

(assert (= bs!454697 (and m!2675251 m!2675269 b!2242990)))

(assert (=> bs!454697 m!2675269))

(assert (=> bs!454697 m!2675325))

(declare-fun bs!454698 () Bool)

(assert (= bs!454698 (and m!2675251 m!2675259 m!2675267 b!2242991)))

(assert (=> bs!454698 m!2675267))

(assert (=> bs!454698 m!2675325))

(declare-fun bs!454699 () Bool)

(assert (= bs!454699 (and m!2675257 m!2675269 b!2242992)))

(assert (=> bs!454699 m!2675253))

(assert (=> bs!454699 m!2675269))

(declare-fun bs!454700 () Bool)

(assert (= bs!454700 (and m!2675257 m!2675251 b!2242993)))

(assert (=> bs!454700 m!2675253))

(assert (=> bs!454700 m!2675325))

(declare-fun bs!454701 () Bool)

(assert (= bs!454701 (and m!2675257 m!2675259 m!2675267 b!2242994)))

(assert (=> bs!454701 m!2675253))

(assert (=> bs!454701 m!2675267))

(declare-fun bs!454702 () Bool)

(assert (= bs!454702 (and m!2675257 b!2242995)))

(assert (=> bs!454702 m!2675253))

(assert (=> bs!454702 m!2675253))

(declare-fun bs!454703 () Bool)

(assert (= bs!454703 (and m!2675257 m!2675269 b!2242996)))

(assert (=> bs!454703 m!2675269))

(assert (=> bs!454703 m!2675253))

(declare-fun bs!454704 () Bool)

(assert (= bs!454704 (and m!2675257 m!2675251 b!2242997)))

(assert (=> bs!454704 m!2675325))

(assert (=> bs!454704 m!2675253))

(declare-fun bs!454705 () Bool)

(assert (= bs!454705 (and m!2675257 m!2675259 m!2675267 b!2242998)))

(assert (=> bs!454705 m!2675267))

(assert (=> bs!454705 m!2675253))

(push 1)

(assert (not bs!454603))

(assert (not b!2242969))

(assert (not bs!454627))

(assert (not bs!454622))

(assert (not b!2242985))

(assert (not b!2242990))

(assert (not b!2242970))

(assert (not b!2242983))

(assert (not b!2242968))

(assert (not bs!454615))

(assert (not bs!454616))

(assert (not b!2242996))

(assert (not b!2242981))

(assert (not b!2242982))

(assert (not b!2242998))

(assert (not b!2242987))

(assert (not bs!454624))

(assert (not b!2242994))

(assert (not bs!454605))

(assert (not b!2242992))

(assert (not b!2242980))

(assert (not b!2242989))

(assert (not bs!454620))

(assert (not bs!454625))

(assert (not bs!454613))

(assert (not b!2242967))

(assert (not bs!454609))

(assert (not b!2242986))

(assert (not b!2242993))

(assert (not b!2242984))

(assert (not bs!454626))

(assert (not bs!454617))

(assert (not start!218606))

(assert (not b!2242979))

(assert (not bs!454611))

(assert (not bs!454607))

(assert (not bs!454618))

(assert (not bs!454610))

(assert (not b!2242988))

(assert (not b!2242991))

(assert (not b!2242997))

(assert (not b!2242995))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!666118 () Bool)

(declare-fun choose!13149 (Int) Bool)

(assert (=> d!666118 (= (Forall2!675 lambda!85103) (choose!13149 lambda!85103))))

(declare-fun bs!454706 () Bool)

(assert (= bs!454706 d!666118))

(declare-fun m!2675327 () Bool)

(assert (=> bs!454706 m!2675327))

(assert (=> b!2242968 d!666118))

(declare-fun d!666120 () Bool)

(declare-fun list!10118 (Conc!8522) List!26583)

(assert (=> d!666120 (= (list!10116 x!431105) (list!10118 (c!357117 x!431105)))))

(declare-fun bs!454707 () Bool)

(assert (= bs!454707 d!666120))

(declare-fun m!2675329 () Bool)

(assert (=> bs!454707 m!2675329))

(assert (=> b!2242968 d!666120))

(declare-fun d!666122 () Bool)

(assert (=> d!666122 (= (list!10116 x!431106) (list!10118 (c!357117 x!431106)))))

(declare-fun bs!454708 () Bool)

(assert (= bs!454708 d!666122))

(declare-fun m!2675331 () Bool)

(assert (=> bs!454708 m!2675331))

(assert (=> b!2242968 d!666122))

(declare-fun d!666124 () Bool)

(declare-fun isBalanced!2646 (Conc!8522) Bool)

(assert (=> d!666124 (= (inv!36000 x!431105) (isBalanced!2646 (c!357117 x!431105)))))

(declare-fun bs!454709 () Bool)

(assert (= bs!454709 d!666124))

(declare-fun m!2675333 () Bool)

(assert (=> bs!454709 m!2675333))

(assert (=> b!2242968 d!666124))

(declare-fun d!666126 () Bool)

(assert (=> d!666126 (= (inv!36000 x!431106) (isBalanced!2646 (c!357117 x!431106)))))

(declare-fun bs!454710 () Bool)

(assert (= bs!454710 d!666126))

(declare-fun m!2675335 () Bool)

(assert (=> bs!454710 m!2675335))

(assert (=> b!2242968 d!666126))

(declare-fun bs!454711 () Bool)

(declare-fun d!666128 () Bool)

(assert (= bs!454711 (and d!666128 start!218606)))

(declare-fun lambda!85142 () Int)

(assert (=> bs!454711 (not (= lambda!85142 lambda!85100))))

(assert (=> d!666128 true))

(declare-fun order!14871 () Int)

(declare-fun order!14869 () Int)

(declare-fun dynLambda!11551 (Int Int) Int)

(declare-fun dynLambda!11552 (Int Int) Int)

(assert (=> d!666128 (< (dynLambda!11551 order!14869 lambda!85101) (dynLambda!11552 order!14871 lambda!85142))))

(assert (=> d!666128 true))

(declare-fun order!14873 () Int)

(declare-fun dynLambda!11553 (Int Int) Int)

(assert (=> d!666128 (< (dynLambda!11553 order!14873 lambda!85102) (dynLambda!11552 order!14871 lambda!85142))))

(assert (=> d!666128 (= (semiInverseModEq!1689 lambda!85101 lambda!85102) (Forall!1058 lambda!85142))))

(declare-fun bs!454712 () Bool)

(assert (= bs!454712 d!666128))

(declare-fun m!2675337 () Bool)

(assert (=> bs!454712 m!2675337))

(assert (=> b!2242967 d!666128))

(declare-fun d!666132 () Bool)

(declare-fun choose!13150 (Int) Bool)

(assert (=> d!666132 (= (Forall!1058 lambda!85100) (choose!13150 lambda!85100))))

(declare-fun bs!454713 () Bool)

(assert (= bs!454713 d!666132))

(declare-fun m!2675339 () Bool)

(assert (=> bs!454713 m!2675339))

(assert (=> b!2242967 d!666132))

(declare-fun d!666134 () Bool)

(declare-fun c!357121 () Bool)

(assert (=> d!666134 (= c!357121 (is-Node!8522 (c!357117 x!431106)))))

(declare-fun e!1434552 () Bool)

(assert (=> d!666134 (= (inv!35999 (c!357117 x!431106)) e!1434552)))

(declare-fun b!2243065 () Bool)

(declare-fun inv!36005 (Conc!8522) Bool)

(assert (=> b!2243065 (= e!1434552 (inv!36005 (c!357117 x!431106)))))

(declare-fun b!2243066 () Bool)

(declare-fun e!1434553 () Bool)

(assert (=> b!2243066 (= e!1434552 e!1434553)))

(declare-fun res!958432 () Bool)

(assert (=> b!2243066 (= res!958432 (not (is-Leaf!12600 (c!357117 x!431106))))))

(assert (=> b!2243066 (=> res!958432 e!1434553)))

(declare-fun b!2243067 () Bool)

(declare-fun inv!36006 (Conc!8522) Bool)

(assert (=> b!2243067 (= e!1434553 (inv!36006 (c!357117 x!431106)))))

(assert (= (and d!666134 c!357121) b!2243065))

(assert (= (and d!666134 (not c!357121)) b!2243066))

(assert (= (and b!2243066 (not res!958432)) b!2243067))

(declare-fun m!2675345 () Bool)

(assert (=> b!2243065 m!2675345))

(declare-fun m!2675347 () Bool)

(assert (=> b!2243067 m!2675347))

(assert (=> b!2242982 d!666134))

(assert (=> bs!454610 d!666120))

(assert (=> bs!454610 d!666122))

(declare-fun d!666140 () Bool)

(declare-fun efficientList!300 (BalanceConc!16772) List!26583)

(assert (=> d!666140 (= (toValue!32 thiss!4969 x!431104) (FloatLiteralValue!8693 (efficientList!300 x!431104)))))

(declare-fun bs!454716 () Bool)

(assert (= bs!454716 d!666140))

(declare-fun m!2675349 () Bool)

(assert (=> bs!454716 m!2675349))

(assert (=> b!2242992 d!666140))

(declare-fun d!666142 () Bool)

(assert (=> d!666142 (= (toValue!32 thiss!4969 x!431106) (FloatLiteralValue!8693 (efficientList!300 x!431106)))))

(declare-fun bs!454717 () Bool)

(assert (= bs!454717 d!666142))

(declare-fun m!2675351 () Bool)

(assert (=> bs!454717 m!2675351))

(assert (=> b!2242992 d!666142))

(declare-fun d!666144 () Bool)

(assert (=> d!666144 (= (list!10116 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!431104))) (list!10118 (c!357117 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!431104)))))))

(declare-fun bs!454718 () Bool)

(assert (= bs!454718 d!666144))

(declare-fun m!2675353 () Bool)

(assert (=> bs!454718 m!2675353))

(assert (=> bs!454615 d!666144))

(declare-fun d!666146 () Bool)

(declare-fun c!357125 () Bool)

(assert (=> d!666146 (= c!357125 (is-Node!8522 (c!357117 x!431105)))))

(declare-fun e!1434560 () Bool)

(assert (=> d!666146 (= (inv!35999 (c!357117 x!431105)) e!1434560)))

(declare-fun b!2243077 () Bool)

(assert (=> b!2243077 (= e!1434560 (inv!36005 (c!357117 x!431105)))))

(declare-fun b!2243078 () Bool)

(declare-fun e!1434561 () Bool)

(assert (=> b!2243078 (= e!1434560 e!1434561)))

(declare-fun res!958436 () Bool)

(assert (=> b!2243078 (= res!958436 (not (is-Leaf!12600 (c!357117 x!431105))))))

(assert (=> b!2243078 (=> res!958436 e!1434561)))

(declare-fun b!2243079 () Bool)

(assert (=> b!2243079 (= e!1434561 (inv!36006 (c!357117 x!431105)))))

(assert (= (and d!666146 c!357125) b!2243077))

(assert (= (and d!666146 (not c!357125)) b!2243078))

(assert (= (and b!2243078 (not res!958436)) b!2243079))

(declare-fun m!2675359 () Bool)

(assert (=> b!2243077 m!2675359))

(declare-fun m!2675361 () Bool)

(assert (=> b!2243079 m!2675361))

(assert (=> b!2242981 d!666146))

(declare-fun d!666148 () Bool)

(assert (=> d!666148 (= (toValue!32 thiss!4969 x!431105) (FloatLiteralValue!8693 (efficientList!300 x!431105)))))

(declare-fun bs!454719 () Bool)

(assert (= bs!454719 d!666148))

(declare-fun m!2675363 () Bool)

(assert (=> bs!454719 m!2675363))

(assert (=> b!2242980 d!666148))

(assert (=> b!2242980 d!666142))

(assert (=> b!2242995 d!666140))

(assert (=> b!2242985 d!666142))

(declare-fun d!666152 () Bool)

(declare-fun c!357127 () Bool)

(assert (=> d!666152 (= c!357127 (is-Node!8522 (c!357117 x!431104)))))

(declare-fun e!1434564 () Bool)

(assert (=> d!666152 (= (inv!35999 (c!357117 x!431104)) e!1434564)))

(declare-fun b!2243083 () Bool)

(assert (=> b!2243083 (= e!1434564 (inv!36005 (c!357117 x!431104)))))

(declare-fun b!2243084 () Bool)

(declare-fun e!1434565 () Bool)

(assert (=> b!2243084 (= e!1434564 e!1434565)))

(declare-fun res!958438 () Bool)

(assert (=> b!2243084 (= res!958438 (not (is-Leaf!12600 (c!357117 x!431104))))))

(assert (=> b!2243084 (=> res!958438 e!1434565)))

(declare-fun b!2243085 () Bool)

(assert (=> b!2243085 (= e!1434565 (inv!36006 (c!357117 x!431104)))))

(assert (= (and d!666152 c!357127) b!2243083))

(assert (= (and d!666152 (not c!357127)) b!2243084))

(assert (= (and b!2243084 (not res!958438)) b!2243085))

(declare-fun m!2675365 () Bool)

(assert (=> b!2243083 m!2675365))

(declare-fun m!2675367 () Bool)

(assert (=> b!2243085 m!2675367))

(assert (=> b!2242979 d!666152))

(assert (=> bs!454603 d!666144))

(declare-fun d!666154 () Bool)

(declare-fun c!357131 () Bool)

(assert (=> d!666154 (= c!357131 (is-FloatLiteralValue!8693 (toValue!32 thiss!4969 x!431104)))))

(declare-fun e!1434568 () BalanceConc!16772)

(assert (=> d!666154 (= (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!431104)) e!1434568)))

(declare-fun b!2243090 () Bool)

(declare-fun seqFromList!2890 (List!26583) BalanceConc!16772)

(assert (=> b!2243090 (= e!1434568 (seqFromList!2890 (text!30873 (toValue!32 thiss!4969 x!431104))))))

(declare-fun b!2243091 () Bool)

(assert (=> b!2243091 (= e!1434568 (BalanceConc!16773 Empty!8522))))

(assert (= (and d!666154 c!357131) b!2243090))

(assert (= (and d!666154 (not c!357131)) b!2243091))

(declare-fun m!2675373 () Bool)

(assert (=> b!2243090 m!2675373))

(assert (=> bs!454603 d!666154))

(assert (=> bs!454603 d!666140))

(declare-fun d!666158 () Bool)

(assert (=> d!666158 (= (list!10116 x!431104) (list!10118 (c!357117 x!431104)))))

(declare-fun bs!454720 () Bool)

(assert (= bs!454720 d!666158))

(declare-fun m!2675375 () Bool)

(assert (=> bs!454720 m!2675375))

(assert (=> bs!454603 d!666158))

(assert (=> bs!454624 d!666158))

(assert (=> bs!454618 d!666158))

(assert (=> bs!454618 d!666122))

(declare-fun d!666160 () Bool)

(assert (=> d!666160 (= (toValue!32 thiss!4969 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!431104))) (FloatLiteralValue!8693 (efficientList!300 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!431104)))))))

(declare-fun bs!454721 () Bool)

(assert (= bs!454721 d!666160))

(assert (=> bs!454721 m!2675249))

(declare-fun m!2675377 () Bool)

(assert (=> bs!454721 m!2675377))

(assert (=> b!2242988 d!666160))

(assert (=> b!2242988 d!666148))

(assert (=> b!2242998 d!666148))

(assert (=> b!2242998 d!666140))

(assert (=> bs!454609 d!666122))

(assert (=> b!2242991 d!666148))

(assert (=> b!2242991 d!666160))

(assert (=> bs!454613 d!666144))

(assert (=> bs!454613 d!666120))

(assert (=> bs!454627 d!666120))

(assert (=> bs!454627 d!666158))

(assert (=> b!2242994 d!666140))

(assert (=> b!2242994 d!666148))

(assert (=> b!2242984 d!666142))

(assert (=> b!2242984 d!666148))

(assert (=> bs!454617 d!666120))

(assert (=> bs!454617 d!666144))

(assert (=> b!2242997 d!666160))

(assert (=> b!2242997 d!666140))

(assert (=> b!2242987 d!666160))

(assert (=> b!2242987 d!666142))

(assert (=> start!218606 d!666154))

(assert (=> start!218606 d!666144))

(declare-fun d!666162 () Bool)

(assert (=> d!666162 (= (inv!36000 x!431104) (isBalanced!2646 (c!357117 x!431104)))))

(declare-fun bs!454722 () Bool)

(assert (= bs!454722 d!666162))

(declare-fun m!2675379 () Bool)

(assert (=> bs!454722 m!2675379))

(assert (=> start!218606 d!666162))

(assert (=> start!218606 d!666132))

(assert (=> start!218606 d!666158))

(assert (=> start!218606 d!666140))

(assert (=> bs!454622 d!666158))

(assert (=> bs!454622 d!666120))

(assert (=> bs!454607 d!666122))

(assert (=> bs!454607 d!666120))

(assert (=> b!2242990 d!666142))

(assert (=> b!2242990 d!666160))

(assert (=> bs!454626 d!666144))

(assert (=> bs!454626 d!666158))

(assert (=> bs!454611 d!666144))

(assert (=> bs!454611 d!666122))

(assert (=> b!2242993 d!666140))

(assert (=> b!2242993 d!666160))

(assert (=> b!2242983 d!666148))

(assert (=> bs!454616 d!666122))

(assert (=> bs!454616 d!666144))

(assert (=> b!2242996 d!666142))

(assert (=> b!2242996 d!666140))

(assert (=> b!2242986 d!666148))

(assert (=> b!2242986 d!666142))

(assert (=> bs!454620 d!666158))

(assert (=> bs!454620 d!666144))

(declare-fun d!666164 () Bool)

(declare-fun res!958441 () Bool)

(declare-fun e!1434571 () Bool)

(assert (=> d!666164 (=> (not res!958441) (not e!1434571))))

(assert (=> d!666164 (= res!958441 (semiInverseModEq!1689 (toChars!5771 (TokenValueInjection!8237 lambda!85102 lambda!85101)) (toValue!5912 (TokenValueInjection!8237 lambda!85102 lambda!85101))))))

(assert (=> d!666164 (= (inv!36001 (TokenValueInjection!8237 lambda!85102 lambda!85101)) e!1434571)))

(declare-fun b!2243098 () Bool)

(assert (=> b!2243098 (= e!1434571 (equivClasses!1608 (toChars!5771 (TokenValueInjection!8237 lambda!85102 lambda!85101)) (toValue!5912 (TokenValueInjection!8237 lambda!85102 lambda!85101))))))

(assert (= (and d!666164 res!958441) b!2243098))

(declare-fun m!2675385 () Bool)

(assert (=> d!666164 m!2675385))

(declare-fun m!2675387 () Bool)

(assert (=> b!2243098 m!2675387))

(assert (=> b!2242970 d!666164))

(assert (=> b!2242989 d!666160))

(declare-fun bs!454726 () Bool)

(declare-fun d!666170 () Bool)

(assert (= bs!454726 (and d!666170 b!2242968)))

(declare-fun lambda!85148 () Int)

(assert (=> bs!454726 (not (= lambda!85148 lambda!85103))))

(assert (=> d!666170 true))

(declare-fun order!14881 () Int)

(declare-fun dynLambda!11554 (Int Int) Int)

(assert (=> d!666170 (< (dynLambda!11553 order!14873 lambda!85102) (dynLambda!11554 order!14881 lambda!85148))))

(assert (=> d!666170 (= (equivClasses!1608 lambda!85101 lambda!85102) (Forall2!675 lambda!85148))))

(declare-fun bs!454727 () Bool)

(assert (= bs!454727 d!666170))

(declare-fun m!2675389 () Bool)

(assert (=> bs!454727 m!2675389))

(assert (=> b!2242969 d!666170))

(assert (=> b!2242969 d!666118))

(assert (=> bs!454625 d!666122))

(assert (=> bs!454625 d!666158))

(assert (=> bs!454605 d!666120))

(declare-fun tp!707416 () Bool)

(declare-fun tp!707417 () Bool)

(declare-fun b!2243109 () Bool)

(declare-fun e!1434578 () Bool)

(assert (=> b!2243109 (= e!1434578 (and (inv!35999 (left!20145 (c!357117 x!431106))) tp!707416 (inv!35999 (right!20475 (c!357117 x!431106))) tp!707417))))

(declare-fun b!2243110 () Bool)

(declare-fun inv!36009 (IArray!17049) Bool)

(assert (=> b!2243110 (= e!1434578 (inv!36009 (xs!11464 (c!357117 x!431106))))))

(assert (=> b!2242982 (= tp!707401 (and (inv!35999 (c!357117 x!431106)) e!1434578))))

(assert (= (and b!2242982 (is-Node!8522 (c!357117 x!431106))) b!2243109))

(assert (= (and b!2242982 (is-Leaf!12600 (c!357117 x!431106))) b!2243110))

(declare-fun m!2675391 () Bool)

(assert (=> b!2243109 m!2675391))

(declare-fun m!2675393 () Bool)

(assert (=> b!2243109 m!2675393))

(declare-fun m!2675395 () Bool)

(assert (=> b!2243110 m!2675395))

(assert (=> b!2242982 m!2675273))

(declare-fun b!2243111 () Bool)

(declare-fun e!1434580 () Bool)

(declare-fun tp!707419 () Bool)

(declare-fun tp!707418 () Bool)

(assert (=> b!2243111 (= e!1434580 (and (inv!35999 (left!20145 (c!357117 x!431105))) tp!707418 (inv!35999 (right!20475 (c!357117 x!431105))) tp!707419))))

(declare-fun b!2243112 () Bool)

(assert (=> b!2243112 (= e!1434580 (inv!36009 (xs!11464 (c!357117 x!431105))))))

(assert (=> b!2242981 (= tp!707402 (and (inv!35999 (c!357117 x!431105)) e!1434580))))

(assert (= (and b!2242981 (is-Node!8522 (c!357117 x!431105))) b!2243111))

(assert (= (and b!2242981 (is-Leaf!12600 (c!357117 x!431105))) b!2243112))

(declare-fun m!2675397 () Bool)

(assert (=> b!2243111 m!2675397))

(declare-fun m!2675399 () Bool)

(assert (=> b!2243111 m!2675399))

(declare-fun m!2675401 () Bool)

(assert (=> b!2243112 m!2675401))

(assert (=> b!2242981 m!2675271))

(declare-fun tp!707420 () Bool)

(declare-fun b!2243113 () Bool)

(declare-fun tp!707421 () Bool)

(declare-fun e!1434582 () Bool)

(assert (=> b!2243113 (= e!1434582 (and (inv!35999 (left!20145 (c!357117 x!431104))) tp!707420 (inv!35999 (right!20475 (c!357117 x!431104))) tp!707421))))

(declare-fun b!2243114 () Bool)

(assert (=> b!2243114 (= e!1434582 (inv!36009 (xs!11464 (c!357117 x!431104))))))

(assert (=> b!2242979 (= tp!707400 (and (inv!35999 (c!357117 x!431104)) e!1434582))))

(assert (= (and b!2242979 (is-Node!8522 (c!357117 x!431104))) b!2243113))

(assert (= (and b!2242979 (is-Leaf!12600 (c!357117 x!431104))) b!2243114))

(declare-fun m!2675403 () Bool)

(assert (=> b!2243113 m!2675403))

(declare-fun m!2675405 () Bool)

(assert (=> b!2243113 m!2675405))

(declare-fun m!2675407 () Bool)

(assert (=> b!2243114 m!2675407))

(assert (=> b!2242979 m!2675247))

(push 1)

(assert (not b!2243109))

(assert (not b!2243113))

(assert (not d!666170))

(assert (not d!666164))

(assert (not b!2243077))

(assert (not b!2243083))

(assert (not d!666126))

(assert (not b!2243114))

(assert (not b!2243079))

(assert (not d!666128))

(assert (not d!666142))

(assert (not d!666162))

(assert (not b!2242981))

(assert (not d!666118))

(assert (not b!2243111))

(assert (not b!2242982))

(assert (not d!666124))

(assert (not d!666132))

(assert (not d!666120))

(assert (not b!2243098))

(assert (not b!2243110))

(assert (not d!666160))

(assert (not d!666148))

(assert (not b!2243085))

(assert (not d!666140))

(assert (not d!666144))

(assert (not d!666158))

(assert (not b!2243090))

(assert (not d!666122))

(assert (not b!2243067))

(assert (not b!2242979))

(assert (not b!2243112))

(assert (not b!2243065))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

