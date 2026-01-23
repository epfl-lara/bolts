; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1022 () Bool)

(assert start!1022)

(assert (=> start!1022 true))

(declare-fun b!28418 () Bool)

(assert (=> b!28418 true))

(assert (=> b!28418 true))

(declare-fun b!28419 () Bool)

(assert (=> b!28419 true))

(declare-fun b!28429 () Bool)

(declare-fun e!11519 () Bool)

(declare-datatypes ((List!140 0))(
  ( (Nil!138) (Cons!138 (h!5534 (_ BitVec 16)) (t!14684 List!140)) )
))
(declare-datatypes ((IArray!19 0))(
  ( (IArray!20 (innerList!67 List!140)) )
))
(declare-datatypes ((Conc!9 0))(
  ( (Node!9 (left!312 Conc!9) (right!642 Conc!9) (csize!248 Int) (cheight!220 Int)) (Leaf!133 (xs!2586 IArray!19) (csize!249 Int)) (Empty!9) )
))
(declare-datatypes ((BalanceConc!18 0))(
  ( (BalanceConc!19 (c!14904 Conc!9)) )
))
(declare-fun x!10044 () BalanceConc!18)

(declare-fun tp!19358 () Bool)

(declare-fun inv!421 (Conc!9) Bool)

(assert (=> b!28429 (= e!11519 (and (inv!421 (c!14904 x!10044)) tp!19358))))

(declare-fun inst!34 () Bool)

(declare-datatypes ((StringLiteralValueInjection!26 0))(
  ( (StringLiteralValueInjection!27) )
))
(declare-fun thiss!4744 () StringLiteralValueInjection!26)

(declare-fun inv!422 (BalanceConc!18) Bool)

(declare-fun list!70 (BalanceConc!18) List!140)

(declare-datatypes ((TokenValue!87 0))(
  ( (FloatLiteralValue!174 (text!1054 List!140)) (TokenValueExt!86 (__x!392 Int)) (Broken!435 (value!5461 List!140)) (Object!88) (End!87) (Def!87) (Underscore!87) (Match!87) (Else!87) (Error!87) (Case!87) (If!87) (Extends!87) (Abstract!87) (Class!87) (Val!87) (DelimiterValue!174 (del!147 List!140)) (KeywordValue!93 (value!5462 List!140)) (CommentValue!174 (value!5463 List!140)) (WhitespaceValue!174 (value!5464 List!140)) (IndentationValue!87 (value!5465 List!140)) (String!584) (Int32!87) (Broken!436 (value!5466 List!140)) (Boolean!88) (Unit!94) (OperatorValue!90 (op!147 List!140)) (IdentifierValue!174 (value!5467 List!140)) (IdentifierValue!175 (value!5468 List!140)) (WhitespaceValue!175 (value!5469 List!140)) (True!174) (False!174) (Broken!437 (value!5470 List!140)) (Broken!438 (value!5471 List!140)) (True!175) (RightBrace!87) (RightBracket!87) (Colon!87) (Null!87) (Comma!87) (LeftBracket!87) (False!175) (LeftBrace!87) (ImaginaryLiteralValue!87 (text!1055 List!140)) (StringLiteralValue!261 (value!5472 List!140)) (EOFValue!87 (value!5473 List!140)) (IdentValue!87 (value!5474 List!140)) (DelimiterValue!175 (value!5475 List!140)) (DedentValue!87 (value!5476 List!140)) (NewLineValue!87 (value!5477 List!140)) (IntegerValue!261 (value!5478 (_ BitVec 32)) (text!1056 List!140)) (IntegerValue!262 (value!5479 Int) (text!1057 List!140)) (Times!87) (Or!87) (Equal!87) (Minus!87) (Broken!439 (value!5480 List!140)) (And!87) (Div!87) (LessEqual!87) (Mod!87) (Concat!211) (Not!87) (Plus!87) (SpaceValue!87 (value!5481 List!140)) (IntegerValue!263 (value!5482 Int) (text!1058 List!140)) (StringLiteralValue!262 (text!1059 List!140)) (FloatLiteralValue!175 (text!1060 List!140)) (BytesLiteralValue!87 (value!5483 List!140)) (CommentValue!175 (value!5484 List!140)) (StringLiteralValue!263 (value!5485 List!140)) (ErrorTokenValue!87 (msg!148 List!140)) )
))
(declare-fun toCharacters!22 (StringLiteralValueInjection!26 TokenValue!87) BalanceConc!18)

(declare-fun toValue!29 (StringLiteralValueInjection!26 BalanceConc!18) TokenValue!87)

(assert (=> start!1022 (= inst!34 (=> (and (inv!422 x!10044) e!11519) (= (list!70 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!10044))) (list!70 x!10044))))))

(assert (= start!1022 b!28429))

(declare-fun m!4953 () Bool)

(assert (=> b!28429 m!4953))

(declare-fun m!4955 () Bool)

(assert (=> start!1022 m!4955))

(declare-fun m!4957 () Bool)

(assert (=> start!1022 m!4957))

(declare-fun m!4959 () Bool)

(assert (=> start!1022 m!4959))

(declare-fun m!4961 () Bool)

(assert (=> start!1022 m!4961))

(declare-fun m!4963 () Bool)

(assert (=> start!1022 m!4963))

(assert (=> start!1022 m!4955))

(assert (=> start!1022 m!4961))

(declare-fun res!25882 () Bool)

(declare-fun e!11520 () Bool)

(assert (=> b!28419 (=> res!25882 e!11520)))

(declare-fun x!10045 () BalanceConc!18)

(declare-fun x!10046 () BalanceConc!18)

(assert (=> b!28419 (= res!25882 (not (= (list!70 x!10045) (list!70 x!10046))))))

(declare-fun inst!35 () Bool)

(declare-fun e!11521 () Bool)

(declare-fun e!11522 () Bool)

(assert (=> b!28419 (= inst!35 (=> (and (inv!422 x!10045) e!11522 (inv!422 x!10046) e!11521) e!11520))))

(declare-fun b!28430 () Bool)

(assert (=> b!28430 (= e!11520 (= (toValue!29 thiss!4744 x!10045) (toValue!29 thiss!4744 x!10046)))))

(declare-fun b!28431 () Bool)

(declare-fun tp!19359 () Bool)

(assert (=> b!28431 (= e!11522 (and (inv!421 (c!14904 x!10045)) tp!19359))))

(declare-fun b!28432 () Bool)

(declare-fun tp!19360 () Bool)

(assert (=> b!28432 (= e!11521 (and (inv!421 (c!14904 x!10046)) tp!19360))))

(assert (= (and b!28419 (not res!25882)) b!28430))

(assert (= b!28419 b!28431))

(assert (= b!28419 b!28432))

(declare-fun m!4965 () Bool)

(assert (=> b!28419 m!4965))

(declare-fun m!4967 () Bool)

(assert (=> b!28419 m!4967))

(declare-fun m!4969 () Bool)

(assert (=> b!28419 m!4969))

(declare-fun m!4971 () Bool)

(assert (=> b!28419 m!4971))

(declare-fun m!4973 () Bool)

(assert (=> b!28430 m!4973))

(declare-fun m!4975 () Bool)

(assert (=> b!28430 m!4975))

(declare-fun m!4977 () Bool)

(assert (=> b!28431 m!4977))

(declare-fun m!4979 () Bool)

(assert (=> b!28432 m!4979))

(declare-fun bs!608 () Bool)

(declare-fun neg-inst!34 () Bool)

(declare-fun s!15557 () Bool)

(assert (= bs!608 (and neg-inst!34 s!15557)))

(assert (=> bs!608 (=> true (= (list!70 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!10044))) (list!70 x!10044)))))

(assert (=> m!4955 m!4961))

(assert (=> m!4955 m!4963))

(assert (=> m!4955 m!4959))

(assert (=> m!4955 s!15557))

(assert (=> m!4959 s!15557))

(declare-fun bs!609 () Bool)

(assert (= bs!609 (and neg-inst!34 start!1022)))

(assert (=> bs!609 (= true inst!34)))

(declare-fun bs!610 () Bool)

(declare-fun neg-inst!35 () Bool)

(declare-fun s!15559 () Bool)

(assert (= bs!610 (and neg-inst!35 s!15559)))

(declare-fun res!25883 () Bool)

(declare-fun e!11523 () Bool)

(assert (=> bs!610 (=> res!25883 e!11523)))

(assert (=> bs!610 (= res!25883 (not (= (list!70 x!10046) (list!70 x!10046))))))

(assert (=> bs!610 (=> true e!11523)))

(declare-fun b!28433 () Bool)

(assert (=> b!28433 (= e!11523 (= (toValue!29 thiss!4744 x!10046) (toValue!29 thiss!4744 x!10046)))))

(assert (= (and bs!610 (not res!25883)) b!28433))

(assert (=> m!4967 s!15559))

(assert (=> m!4967 s!15559))

(declare-fun bs!611 () Bool)

(declare-fun s!15561 () Bool)

(assert (= bs!611 (and neg-inst!35 s!15561)))

(declare-fun res!25884 () Bool)

(declare-fun e!11524 () Bool)

(assert (=> bs!611 (=> res!25884 e!11524)))

(assert (=> bs!611 (= res!25884 (not (= (list!70 x!10044) (list!70 x!10046))))))

(assert (=> bs!611 (=> true e!11524)))

(declare-fun b!28434 () Bool)

(assert (=> b!28434 (= e!11524 (= (toValue!29 thiss!4744 x!10044) (toValue!29 thiss!4744 x!10046)))))

(assert (= (and bs!611 (not res!25884)) b!28434))

(declare-fun bs!612 () Bool)

(assert (= bs!612 (and m!4955 m!4967)))

(assert (=> bs!612 m!4959))

(assert (=> bs!612 m!4967))

(assert (=> bs!612 s!15561))

(declare-fun bs!613 () Bool)

(declare-fun s!15563 () Bool)

(assert (= bs!613 (and neg-inst!35 s!15563)))

(declare-fun res!25885 () Bool)

(declare-fun e!11525 () Bool)

(assert (=> bs!613 (=> res!25885 e!11525)))

(assert (=> bs!613 (= res!25885 (not (= (list!70 x!10044) (list!70 x!10044))))))

(assert (=> bs!613 (=> true e!11525)))

(declare-fun b!28435 () Bool)

(assert (=> b!28435 (= e!11525 (= (toValue!29 thiss!4744 x!10044) (toValue!29 thiss!4744 x!10044)))))

(assert (= (and bs!613 (not res!25885)) b!28435))

(assert (=> m!4955 m!4959))

(assert (=> m!4955 m!4959))

(assert (=> m!4955 s!15563))

(declare-fun bs!614 () Bool)

(declare-fun s!15565 () Bool)

(assert (= bs!614 (and neg-inst!35 s!15565)))

(declare-fun res!25886 () Bool)

(declare-fun e!11526 () Bool)

(assert (=> bs!614 (=> res!25886 e!11526)))

(assert (=> bs!614 (= res!25886 (not (= (list!70 x!10046) (list!70 x!10044))))))

(assert (=> bs!614 (=> true e!11526)))

(declare-fun b!28436 () Bool)

(assert (=> b!28436 (= e!11526 (= (toValue!29 thiss!4744 x!10046) (toValue!29 thiss!4744 x!10044)))))

(assert (= (and bs!614 (not res!25886)) b!28436))

(assert (=> bs!612 m!4967))

(assert (=> bs!612 m!4959))

(assert (=> bs!612 s!15565))

(assert (=> m!4955 s!15563))

(declare-fun bs!615 () Bool)

(assert (= bs!615 (and m!4975 m!4967)))

(assert (=> bs!615 s!15559))

(declare-fun bs!616 () Bool)

(assert (= bs!616 (and m!4975 m!4955)))

(assert (=> bs!616 s!15565))

(assert (=> m!4975 s!15559))

(assert (=> bs!615 s!15559))

(assert (=> bs!616 s!15561))

(assert (=> m!4975 s!15559))

(declare-fun bs!617 () Bool)

(assert (= bs!617 (and m!4959 m!4967 m!4975)))

(assert (=> bs!617 s!15561))

(declare-fun bs!618 () Bool)

(assert (= bs!618 (and m!4959 m!4955)))

(assert (=> bs!618 s!15563))

(assert (=> m!4959 s!15563))

(assert (=> bs!617 s!15565))

(assert (=> bs!618 s!15563))

(assert (=> m!4959 s!15563))

(declare-fun bs!619 () Bool)

(declare-fun s!15567 () Bool)

(assert (= bs!619 (and neg-inst!35 s!15567)))

(declare-fun res!25887 () Bool)

(declare-fun e!11527 () Bool)

(assert (=> bs!619 (=> res!25887 e!11527)))

(assert (=> bs!619 (= res!25887 (not (= (list!70 x!10045) (list!70 x!10046))))))

(assert (=> bs!619 (=> true e!11527)))

(declare-fun b!28437 () Bool)

(assert (=> b!28437 (= e!11527 (= (toValue!29 thiss!4744 x!10045) (toValue!29 thiss!4744 x!10046)))))

(assert (= (and bs!619 (not res!25887)) b!28437))

(declare-fun bs!620 () Bool)

(assert (= bs!620 (and m!4965 m!4967 m!4975)))

(assert (=> bs!620 m!4965))

(assert (=> bs!620 m!4967))

(assert (=> bs!620 s!15567))

(declare-fun bs!621 () Bool)

(declare-fun s!15569 () Bool)

(assert (= bs!621 (and neg-inst!35 s!15569)))

(declare-fun res!25888 () Bool)

(declare-fun e!11528 () Bool)

(assert (=> bs!621 (=> res!25888 e!11528)))

(assert (=> bs!621 (= res!25888 (not (= (list!70 x!10045) (list!70 x!10044))))))

(assert (=> bs!621 (=> true e!11528)))

(declare-fun b!28438 () Bool)

(assert (=> b!28438 (= e!11528 (= (toValue!29 thiss!4744 x!10045) (toValue!29 thiss!4744 x!10044)))))

(assert (= (and bs!621 (not res!25888)) b!28438))

(declare-fun bs!622 () Bool)

(assert (= bs!622 (and m!4965 m!4955 m!4959)))

(assert (=> bs!622 m!4965))

(assert (=> bs!622 m!4959))

(assert (=> bs!622 s!15569))

(declare-fun bs!623 () Bool)

(declare-fun s!15571 () Bool)

(assert (= bs!623 (and neg-inst!35 s!15571)))

(declare-fun res!25889 () Bool)

(declare-fun e!11529 () Bool)

(assert (=> bs!623 (=> res!25889 e!11529)))

(assert (=> bs!623 (= res!25889 (not (= (list!70 x!10045) (list!70 x!10045))))))

(assert (=> bs!623 (=> true e!11529)))

(declare-fun b!28439 () Bool)

(assert (=> b!28439 (= e!11529 (= (toValue!29 thiss!4744 x!10045) (toValue!29 thiss!4744 x!10045)))))

(assert (= (and bs!623 (not res!25889)) b!28439))

(assert (=> m!4965 s!15571))

(declare-fun bs!624 () Bool)

(declare-fun s!15573 () Bool)

(assert (= bs!624 (and neg-inst!35 s!15573)))

(declare-fun res!25890 () Bool)

(declare-fun e!11530 () Bool)

(assert (=> bs!624 (=> res!25890 e!11530)))

(assert (=> bs!624 (= res!25890 (not (= (list!70 x!10046) (list!70 x!10045))))))

(assert (=> bs!624 (=> true e!11530)))

(declare-fun b!28440 () Bool)

(assert (=> b!28440 (= e!11530 (= (toValue!29 thiss!4744 x!10046) (toValue!29 thiss!4744 x!10045)))))

(assert (= (and bs!624 (not res!25890)) b!28440))

(assert (=> bs!620 m!4967))

(assert (=> bs!620 m!4965))

(assert (=> bs!620 s!15573))

(declare-fun bs!625 () Bool)

(declare-fun s!15575 () Bool)

(assert (= bs!625 (and neg-inst!35 s!15575)))

(declare-fun res!25891 () Bool)

(declare-fun e!11531 () Bool)

(assert (=> bs!625 (=> res!25891 e!11531)))

(assert (=> bs!625 (= res!25891 (not (= (list!70 x!10044) (list!70 x!10045))))))

(assert (=> bs!625 (=> true e!11531)))

(declare-fun b!28441 () Bool)

(assert (=> b!28441 (= e!11531 (= (toValue!29 thiss!4744 x!10044) (toValue!29 thiss!4744 x!10045)))))

(assert (= (and bs!625 (not res!25891)) b!28441))

(assert (=> bs!622 m!4959))

(assert (=> bs!622 m!4965))

(assert (=> bs!622 s!15575))

(assert (=> m!4965 s!15571))

(declare-fun bs!626 () Bool)

(assert (= bs!626 (and m!4973 m!4965)))

(assert (=> bs!626 s!15571))

(declare-fun bs!627 () Bool)

(assert (= bs!627 (and m!4973 m!4967 m!4975)))

(assert (=> bs!627 s!15567))

(declare-fun bs!628 () Bool)

(assert (= bs!628 (and m!4973 m!4955 m!4959)))

(assert (=> bs!628 s!15569))

(assert (=> m!4973 s!15571))

(assert (=> bs!626 s!15571))

(assert (=> bs!627 s!15573))

(assert (=> bs!628 s!15575))

(assert (=> m!4973 s!15571))

(declare-fun bs!629 () Bool)

(declare-fun s!15577 () Bool)

(assert (= bs!629 (and neg-inst!35 s!15577)))

(declare-fun res!25892 () Bool)

(declare-fun e!11532 () Bool)

(assert (=> bs!629 (=> res!25892 e!11532)))

(assert (=> bs!629 (= res!25892 (not (= (list!70 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!10044))) (list!70 x!10045))))))

(assert (=> bs!629 (=> true e!11532)))

(declare-fun b!28442 () Bool)

(assert (=> b!28442 (= e!11532 (= (toValue!29 thiss!4744 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!10044))) (toValue!29 thiss!4744 x!10045)))))

(assert (= (and bs!629 (not res!25892)) b!28442))

(declare-fun bs!630 () Bool)

(assert (= bs!630 (and m!4963 m!4965 m!4973)))

(assert (=> bs!630 m!4963))

(assert (=> bs!630 m!4965))

(assert (=> bs!630 s!15577))

(declare-fun bs!631 () Bool)

(declare-fun s!15579 () Bool)

(assert (= bs!631 (and neg-inst!35 s!15579)))

(declare-fun res!25893 () Bool)

(declare-fun e!11533 () Bool)

(assert (=> bs!631 (=> res!25893 e!11533)))

(assert (=> bs!631 (= res!25893 (not (= (list!70 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!10044))) (list!70 x!10046))))))

(assert (=> bs!631 (=> true e!11533)))

(declare-fun b!28443 () Bool)

(assert (=> b!28443 (= e!11533 (= (toValue!29 thiss!4744 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!10044))) (toValue!29 thiss!4744 x!10046)))))

(assert (= (and bs!631 (not res!25893)) b!28443))

(declare-fun bs!632 () Bool)

(assert (= bs!632 (and m!4963 m!4967 m!4975)))

(assert (=> bs!632 m!4963))

(assert (=> bs!632 m!4967))

(assert (=> bs!632 s!15579))

(declare-fun bs!633 () Bool)

(declare-fun s!15581 () Bool)

(assert (= bs!633 (and neg-inst!35 s!15581)))

(declare-fun res!25894 () Bool)

(declare-fun e!11534 () Bool)

(assert (=> bs!633 (=> res!25894 e!11534)))

(assert (=> bs!633 (= res!25894 (not (= (list!70 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!10044))) (list!70 x!10044))))))

(assert (=> bs!633 (=> true e!11534)))

(declare-fun b!28444 () Bool)

(assert (=> b!28444 (= e!11534 (= (toValue!29 thiss!4744 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!10044))) (toValue!29 thiss!4744 x!10044)))))

(assert (= (and bs!633 (not res!25894)) b!28444))

(declare-fun bs!634 () Bool)

(assert (= bs!634 (and m!4963 m!4955 m!4959)))

(assert (=> bs!634 m!4963))

(assert (=> bs!634 m!4959))

(assert (=> bs!634 s!15581))

(declare-fun bs!635 () Bool)

(declare-fun s!15583 () Bool)

(assert (= bs!635 (and neg-inst!35 s!15583)))

(declare-fun res!25895 () Bool)

(declare-fun e!11535 () Bool)

(assert (=> bs!635 (=> res!25895 e!11535)))

(assert (=> bs!635 (= res!25895 (not (= (list!70 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!10044))) (list!70 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!10044))))))))

(assert (=> bs!635 (=> true e!11535)))

(declare-fun b!28445 () Bool)

(assert (=> b!28445 (= e!11535 (= (toValue!29 thiss!4744 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!10044))) (toValue!29 thiss!4744 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!10044)))))))

(assert (= (and bs!635 (not res!25895)) b!28445))

(assert (=> m!4963 s!15583))

(declare-fun bs!636 () Bool)

(declare-fun s!15585 () Bool)

(assert (= bs!636 (and neg-inst!35 s!15585)))

(declare-fun res!25896 () Bool)

(declare-fun e!11536 () Bool)

(assert (=> bs!636 (=> res!25896 e!11536)))

(assert (=> bs!636 (= res!25896 (not (= (list!70 x!10045) (list!70 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!10044))))))))

(assert (=> bs!636 (=> true e!11536)))

(declare-fun b!28446 () Bool)

(assert (=> b!28446 (= e!11536 (= (toValue!29 thiss!4744 x!10045) (toValue!29 thiss!4744 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!10044)))))))

(assert (= (and bs!636 (not res!25896)) b!28446))

(assert (=> bs!630 m!4965))

(assert (=> bs!630 m!4963))

(assert (=> bs!630 s!15585))

(declare-fun bs!637 () Bool)

(declare-fun s!15587 () Bool)

(assert (= bs!637 (and neg-inst!35 s!15587)))

(declare-fun res!25897 () Bool)

(declare-fun e!11537 () Bool)

(assert (=> bs!637 (=> res!25897 e!11537)))

(assert (=> bs!637 (= res!25897 (not (= (list!70 x!10046) (list!70 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!10044))))))))

(assert (=> bs!637 (=> true e!11537)))

(declare-fun b!28447 () Bool)

(assert (=> b!28447 (= e!11537 (= (toValue!29 thiss!4744 x!10046) (toValue!29 thiss!4744 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!10044)))))))

(assert (= (and bs!637 (not res!25897)) b!28447))

(assert (=> bs!632 m!4967))

(assert (=> bs!632 m!4963))

(assert (=> bs!632 s!15587))

(declare-fun bs!638 () Bool)

(declare-fun s!15589 () Bool)

(assert (= bs!638 (and neg-inst!35 s!15589)))

(declare-fun res!25898 () Bool)

(declare-fun e!11538 () Bool)

(assert (=> bs!638 (=> res!25898 e!11538)))

(assert (=> bs!638 (= res!25898 (not (= (list!70 x!10044) (list!70 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!10044))))))))

(assert (=> bs!638 (=> true e!11538)))

(declare-fun b!28448 () Bool)

(assert (=> b!28448 (= e!11538 (= (toValue!29 thiss!4744 x!10044) (toValue!29 thiss!4744 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!10044)))))))

(assert (= (and bs!638 (not res!25898)) b!28448))

(assert (=> bs!634 m!4959))

(assert (=> bs!634 m!4963))

(assert (=> bs!634 s!15589))

(assert (=> m!4963 s!15583))

(declare-fun bs!639 () Bool)

(assert (= bs!639 (and neg-inst!35 b!28419)))

(assert (=> bs!639 (= true inst!35)))

(declare-fun res!25879 () Bool)

(declare-fun e!11517 () Bool)

(assert (=> start!1022 (=> res!25879 e!11517)))

(declare-fun lambda!171 () Int)

(declare-fun Forall!8 (Int) Bool)

(assert (=> start!1022 (= res!25879 (not (Forall!8 lambda!171)))))

(assert (=> start!1022 (= (Forall!8 lambda!171) inst!34)))

(assert (=> start!1022 (not e!11517)))

(assert (=> start!1022 true))

(declare-fun e!11516 () Bool)

(assert (=> b!28418 (= e!11517 e!11516)))

(declare-fun res!25880 () Bool)

(assert (=> b!28418 (=> res!25880 e!11516)))

(declare-fun lambda!172 () Int)

(declare-fun lambda!173 () Int)

(declare-fun semiInverseModEq!6 (Int Int) Bool)

(assert (=> b!28418 (= res!25880 (not (semiInverseModEq!6 lambda!172 lambda!173)))))

(assert (=> b!28418 (= (semiInverseModEq!6 lambda!172 lambda!173) (Forall!8 lambda!171))))

(declare-fun e!11518 () Bool)

(assert (=> b!28419 (= e!11516 e!11518)))

(declare-fun res!25881 () Bool)

(assert (=> b!28419 (=> res!25881 e!11518)))

(declare-fun lambda!174 () Int)

(declare-fun Forall2!4 (Int) Bool)

(assert (=> b!28419 (= res!25881 (not (Forall2!4 lambda!174)))))

(assert (=> b!28419 (= (Forall2!4 lambda!174) inst!35)))

(declare-fun b!28420 () Bool)

(declare-fun equivClasses!2 (Int Int) Bool)

(assert (=> b!28420 (= e!11518 (equivClasses!2 lambda!172 lambda!173))))

(assert (=> b!28420 (= (equivClasses!2 lambda!172 lambda!173) (Forall2!4 lambda!174))))

(assert (= neg-inst!34 inst!34))

(assert (= (and start!1022 (not res!25879)) b!28418))

(assert (= (and b!28418 (not res!25880)) b!28419))

(assert (= neg-inst!35 inst!35))

(assert (= (and b!28419 (not res!25881)) b!28420))

(declare-fun m!4981 () Bool)

(assert (=> start!1022 m!4981))

(assert (=> start!1022 m!4981))

(declare-fun m!4983 () Bool)

(assert (=> b!28418 m!4983))

(assert (=> b!28418 m!4983))

(assert (=> b!28418 m!4981))

(declare-fun m!4985 () Bool)

(assert (=> b!28419 m!4985))

(assert (=> b!28419 m!4985))

(declare-fun m!4987 () Bool)

(assert (=> b!28420 m!4987))

(assert (=> b!28420 m!4987))

(assert (=> b!28420 m!4985))

(check-sat (not b!28440) (not bs!631) (not bs!619) (not b!28448) (not b!28432) (not b!28430) (not b!28437) (not b!28439) (not bs!610) (not b!28445) (not b!28441) (not bs!635) (not bs!633) (not bs!611) (not b!28418) (not bs!608) (not bs!636) (not bs!623) (not b!28438) (not b!28429) (not start!1022) (not b!28443) (not bs!614) (not b!28431) (not bs!625) (not b!28447) (not bs!613) (not b!28420) (not bs!621) (not b!28444) (not bs!637) (not b!28442) (not b!28419) (not b!28434) (not bs!629) (not bs!624) (not b!28433) (not b!28446) (not b!28436) (not b!28435) (not bs!638))
(check-sat)
