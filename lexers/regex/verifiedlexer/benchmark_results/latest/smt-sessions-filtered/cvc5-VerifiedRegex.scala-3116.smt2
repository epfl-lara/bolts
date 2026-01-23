; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!184248 () Bool)

(assert start!184248)

(assert (=> start!184248 true))

(declare-fun b!1846431 () Bool)

(assert (=> b!1846431 true))

(assert (=> b!1846431 true))

(declare-fun b!1846432 () Bool)

(assert (=> b!1846432 true))

(declare-fun b!1846441 () Bool)

(declare-fun e!1179976 () Bool)

(declare-datatypes ((List!20465 0))(
  ( (Nil!20393) (Cons!20393 (h!25794 (_ BitVec 16)) (t!172178 List!20465)) )
))
(declare-datatypes ((IArray!13513 0))(
  ( (IArray!13514 (innerList!6814 List!20465)) )
))
(declare-datatypes ((Conc!6754 0))(
  ( (Node!6754 (left!16346 Conc!6754) (right!16676 Conc!6754) (csize!13738 Int) (cheight!6965 Int)) (Leaf!9871 (xs!9630 IArray!13513) (csize!13739 Int)) (Empty!6754) )
))
(declare-datatypes ((BalanceConc!13430 0))(
  ( (BalanceConc!13431 (c!301495 Conc!6754)) )
))
(declare-fun x!369906 () BalanceConc!13430)

(declare-fun tp!522066 () Bool)

(declare-fun inv!26742 (Conc!6754) Bool)

(assert (=> b!1846441 (= e!1179976 (and (inv!26742 (c!301495 x!369906)) tp!522066))))

(declare-fun inst!1096 () Bool)

(declare-datatypes ((ImaginaryLiteralValueInjection!12 0))(
  ( (ImaginaryLiteralValueInjection!13) )
))
(declare-fun thiss!5044 () ImaginaryLiteralValueInjection!12)

(declare-fun inv!26743 (BalanceConc!13430) Bool)

(declare-fun list!8295 (BalanceConc!13430) List!20465)

(declare-datatypes ((TokenValue!3770 0))(
  ( (FloatLiteralValue!7540 (text!26835 List!20465)) (TokenValueExt!3769 (__x!12824 Int)) (Broken!18850 (value!114662 List!20465)) (Object!3841) (End!3770) (Def!3770) (Underscore!3770) (Match!3770) (Else!3770) (Error!3770) (Case!3770) (If!3770) (Extends!3770) (Abstract!3770) (Class!3770) (Val!3770) (DelimiterValue!7540 (del!3830 List!20465)) (KeywordValue!3776 (value!114663 List!20465)) (CommentValue!7540 (value!114664 List!20465)) (WhitespaceValue!7540 (value!114665 List!20465)) (IndentationValue!3770 (value!114666 List!20465)) (String!23371) (Int32!3770) (Broken!18851 (value!114667 List!20465)) (Boolean!3771) (Unit!35057) (OperatorValue!3773 (op!3830 List!20465)) (IdentifierValue!7540 (value!114668 List!20465)) (IdentifierValue!7541 (value!114669 List!20465)) (WhitespaceValue!7541 (value!114670 List!20465)) (True!7540) (False!7540) (Broken!18852 (value!114671 List!20465)) (Broken!18853 (value!114672 List!20465)) (True!7541) (RightBrace!3770) (RightBracket!3770) (Colon!3770) (Null!3770) (Comma!3770) (LeftBracket!3770) (False!7541) (LeftBrace!3770) (ImaginaryLiteralValue!3770 (text!26836 List!20465)) (StringLiteralValue!11310 (value!114673 List!20465)) (EOFValue!3770 (value!114674 List!20465)) (IdentValue!3770 (value!114675 List!20465)) (DelimiterValue!7541 (value!114676 List!20465)) (DedentValue!3770 (value!114677 List!20465)) (NewLineValue!3770 (value!114678 List!20465)) (IntegerValue!11310 (value!114679 (_ BitVec 32)) (text!26837 List!20465)) (IntegerValue!11311 (value!114680 Int) (text!26838 List!20465)) (Times!3770) (Or!3770) (Equal!3770) (Minus!3770) (Broken!18854 (value!114681 List!20465)) (And!3770) (Div!3770) (LessEqual!3770) (Mod!3770) (Concat!8762) (Not!3770) (Plus!3770) (SpaceValue!3770 (value!114682 List!20465)) (IntegerValue!11312 (value!114683 Int) (text!26839 List!20465)) (StringLiteralValue!11311 (text!26840 List!20465)) (FloatLiteralValue!7541 (text!26841 List!20465)) (BytesLiteralValue!3770 (value!114684 List!20465)) (CommentValue!7541 (value!114685 List!20465)) (StringLiteralValue!11312 (value!114686 List!20465)) (ErrorTokenValue!3770 (msg!3831 List!20465)) )
))
(declare-fun toCharacters!26 (ImaginaryLiteralValueInjection!12 TokenValue!3770) BalanceConc!13430)

(declare-fun toValue!33 (ImaginaryLiteralValueInjection!12 BalanceConc!13430) TokenValue!3770)

(assert (=> start!184248 (= inst!1096 (=> (and (inv!26743 x!369906) e!1179976) (= (list!8295 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906))) (list!8295 x!369906))))))

(assert (= start!184248 b!1846441))

(declare-fun m!2274771 () Bool)

(assert (=> b!1846441 m!2274771))

(declare-fun m!2274773 () Bool)

(assert (=> start!184248 m!2274773))

(declare-fun m!2274775 () Bool)

(assert (=> start!184248 m!2274775))

(assert (=> start!184248 m!2274773))

(assert (=> start!184248 m!2274775))

(declare-fun m!2274777 () Bool)

(assert (=> start!184248 m!2274777))

(declare-fun m!2274779 () Bool)

(assert (=> start!184248 m!2274779))

(declare-fun m!2274781 () Bool)

(assert (=> start!184248 m!2274781))

(declare-fun res!829065 () Bool)

(declare-fun e!1179979 () Bool)

(assert (=> b!1846432 (=> res!829065 e!1179979)))

(declare-fun x!369907 () BalanceConc!13430)

(declare-fun x!369908 () BalanceConc!13430)

(assert (=> b!1846432 (= res!829065 (not (= (list!8295 x!369907) (list!8295 x!369908))))))

(declare-fun e!1179978 () Bool)

(declare-fun e!1179977 () Bool)

(declare-fun inst!1097 () Bool)

(assert (=> b!1846432 (= inst!1097 (=> (and (inv!26743 x!369907) e!1179977 (inv!26743 x!369908) e!1179978) e!1179979))))

(declare-fun b!1846442 () Bool)

(assert (=> b!1846442 (= e!1179979 (= (toValue!33 thiss!5044 x!369907) (toValue!33 thiss!5044 x!369908)))))

(declare-fun b!1846443 () Bool)

(declare-fun tp!522068 () Bool)

(assert (=> b!1846443 (= e!1179977 (and (inv!26742 (c!301495 x!369907)) tp!522068))))

(declare-fun b!1846444 () Bool)

(declare-fun tp!522067 () Bool)

(assert (=> b!1846444 (= e!1179978 (and (inv!26742 (c!301495 x!369908)) tp!522067))))

(assert (= (and b!1846432 (not res!829065)) b!1846442))

(assert (= b!1846432 b!1846443))

(assert (= b!1846432 b!1846444))

(declare-fun m!2274783 () Bool)

(assert (=> b!1846432 m!2274783))

(declare-fun m!2274785 () Bool)

(assert (=> b!1846432 m!2274785))

(declare-fun m!2274787 () Bool)

(assert (=> b!1846432 m!2274787))

(declare-fun m!2274789 () Bool)

(assert (=> b!1846432 m!2274789))

(declare-fun m!2274791 () Bool)

(assert (=> b!1846442 m!2274791))

(declare-fun m!2274793 () Bool)

(assert (=> b!1846442 m!2274793))

(declare-fun m!2274795 () Bool)

(assert (=> b!1846443 m!2274795))

(declare-fun m!2274797 () Bool)

(assert (=> b!1846444 m!2274797))

(declare-fun bs!409352 () Bool)

(declare-fun neg-inst!1097 () Bool)

(declare-fun s!221048 () Bool)

(assert (= bs!409352 (and neg-inst!1097 s!221048)))

(assert (=> bs!409352 (=> true (= (list!8295 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906))) (list!8295 x!369906)))))

(assert (=> m!2274781 m!2274773))

(assert (=> m!2274781 m!2274775))

(assert (=> m!2274781 m!2274777))

(assert (=> m!2274781 s!221048))

(assert (=> m!2274773 s!221048))

(declare-fun bs!409353 () Bool)

(assert (= bs!409353 (and neg-inst!1097 start!184248)))

(assert (=> bs!409353 (= true inst!1096)))

(declare-fun bs!409354 () Bool)

(declare-fun neg-inst!1096 () Bool)

(declare-fun s!221050 () Bool)

(assert (= bs!409354 (and neg-inst!1096 s!221050)))

(declare-fun res!829066 () Bool)

(declare-fun e!1179980 () Bool)

(assert (=> bs!409354 (=> res!829066 e!1179980)))

(assert (=> bs!409354 (= res!829066 (not (= (list!8295 x!369906) (list!8295 x!369906))))))

(assert (=> bs!409354 (=> true e!1179980)))

(declare-fun b!1846445 () Bool)

(assert (=> b!1846445 (= e!1179980 (= (toValue!33 thiss!5044 x!369906) (toValue!33 thiss!5044 x!369906)))))

(assert (= (and bs!409354 (not res!829066)) b!1846445))

(assert (=> m!2274781 s!221050))

(assert (=> m!2274781 s!221050))

(declare-fun bs!409355 () Bool)

(declare-fun s!221052 () Bool)

(assert (= bs!409355 (and neg-inst!1096 s!221052)))

(declare-fun res!829067 () Bool)

(declare-fun e!1179981 () Bool)

(assert (=> bs!409355 (=> res!829067 e!1179981)))

(assert (=> bs!409355 (= res!829067 (not (= (list!8295 x!369906) (list!8295 x!369908))))))

(assert (=> bs!409355 (=> true e!1179981)))

(declare-fun b!1846446 () Bool)

(assert (=> b!1846446 (= e!1179981 (= (toValue!33 thiss!5044 x!369906) (toValue!33 thiss!5044 x!369908)))))

(assert (= (and bs!409355 (not res!829067)) b!1846446))

(declare-fun bs!409356 () Bool)

(assert (= bs!409356 (and m!2274785 m!2274781)))

(assert (=> bs!409356 m!2274781))

(assert (=> bs!409356 m!2274785))

(assert (=> bs!409356 s!221052))

(declare-fun bs!409357 () Bool)

(declare-fun s!221054 () Bool)

(assert (= bs!409357 (and neg-inst!1096 s!221054)))

(declare-fun res!829068 () Bool)

(declare-fun e!1179982 () Bool)

(assert (=> bs!409357 (=> res!829068 e!1179982)))

(assert (=> bs!409357 (= res!829068 (not (= (list!8295 x!369908) (list!8295 x!369908))))))

(assert (=> bs!409357 (=> true e!1179982)))

(declare-fun b!1846447 () Bool)

(assert (=> b!1846447 (= e!1179982 (= (toValue!33 thiss!5044 x!369908) (toValue!33 thiss!5044 x!369908)))))

(assert (= (and bs!409357 (not res!829068)) b!1846447))

(assert (=> m!2274785 s!221054))

(declare-fun bs!409358 () Bool)

(declare-fun s!221056 () Bool)

(assert (= bs!409358 (and neg-inst!1096 s!221056)))

(declare-fun res!829069 () Bool)

(declare-fun e!1179983 () Bool)

(assert (=> bs!409358 (=> res!829069 e!1179983)))

(assert (=> bs!409358 (= res!829069 (not (= (list!8295 x!369908) (list!8295 x!369906))))))

(assert (=> bs!409358 (=> true e!1179983)))

(declare-fun b!1846448 () Bool)

(assert (=> b!1846448 (= e!1179983 (= (toValue!33 thiss!5044 x!369908) (toValue!33 thiss!5044 x!369906)))))

(assert (= (and bs!409358 (not res!829069)) b!1846448))

(assert (=> bs!409356 m!2274785))

(assert (=> bs!409356 m!2274781))

(assert (=> bs!409356 s!221056))

(assert (=> m!2274785 s!221054))

(declare-fun bs!409359 () Bool)

(declare-fun s!221058 () Bool)

(assert (= bs!409359 (and neg-inst!1096 s!221058)))

(declare-fun res!829070 () Bool)

(declare-fun e!1179984 () Bool)

(assert (=> bs!409359 (=> res!829070 e!1179984)))

(assert (=> bs!409359 (= res!829070 (not (= (list!8295 x!369908) (list!8295 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906))))))))

(assert (=> bs!409359 (=> true e!1179984)))

(declare-fun b!1846449 () Bool)

(assert (=> b!1846449 (= e!1179984 (= (toValue!33 thiss!5044 x!369908) (toValue!33 thiss!5044 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906)))))))

(assert (= (and bs!409359 (not res!829070)) b!1846449))

(declare-fun bs!409360 () Bool)

(assert (= bs!409360 (and m!2274777 m!2274785)))

(assert (=> bs!409360 m!2274785))

(assert (=> bs!409360 m!2274777))

(assert (=> bs!409360 s!221058))

(declare-fun bs!409361 () Bool)

(declare-fun s!221060 () Bool)

(assert (= bs!409361 (and neg-inst!1096 s!221060)))

(declare-fun res!829071 () Bool)

(declare-fun e!1179985 () Bool)

(assert (=> bs!409361 (=> res!829071 e!1179985)))

(assert (=> bs!409361 (= res!829071 (not (= (list!8295 x!369906) (list!8295 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906))))))))

(assert (=> bs!409361 (=> true e!1179985)))

(declare-fun b!1846450 () Bool)

(assert (=> b!1846450 (= e!1179985 (= (toValue!33 thiss!5044 x!369906) (toValue!33 thiss!5044 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906)))))))

(assert (= (and bs!409361 (not res!829071)) b!1846450))

(declare-fun bs!409362 () Bool)

(assert (= bs!409362 (and m!2274777 m!2274781)))

(assert (=> bs!409362 m!2274781))

(assert (=> bs!409362 m!2274777))

(assert (=> bs!409362 s!221060))

(declare-fun bs!409363 () Bool)

(declare-fun s!221062 () Bool)

(assert (= bs!409363 (and neg-inst!1096 s!221062)))

(declare-fun res!829072 () Bool)

(declare-fun e!1179986 () Bool)

(assert (=> bs!409363 (=> res!829072 e!1179986)))

(assert (=> bs!409363 (= res!829072 (not (= (list!8295 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906))) (list!8295 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906))))))))

(assert (=> bs!409363 (=> true e!1179986)))

(declare-fun b!1846451 () Bool)

(assert (=> b!1846451 (= e!1179986 (= (toValue!33 thiss!5044 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906))) (toValue!33 thiss!5044 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906)))))))

(assert (= (and bs!409363 (not res!829072)) b!1846451))

(assert (=> m!2274777 s!221062))

(declare-fun bs!409364 () Bool)

(declare-fun s!221064 () Bool)

(assert (= bs!409364 (and neg-inst!1096 s!221064)))

(declare-fun res!829073 () Bool)

(declare-fun e!1179987 () Bool)

(assert (=> bs!409364 (=> res!829073 e!1179987)))

(assert (=> bs!409364 (= res!829073 (not (= (list!8295 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906))) (list!8295 x!369908))))))

(assert (=> bs!409364 (=> true e!1179987)))

(declare-fun b!1846452 () Bool)

(assert (=> b!1846452 (= e!1179987 (= (toValue!33 thiss!5044 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906))) (toValue!33 thiss!5044 x!369908)))))

(assert (= (and bs!409364 (not res!829073)) b!1846452))

(assert (=> bs!409360 m!2274777))

(assert (=> bs!409360 m!2274785))

(assert (=> bs!409360 s!221064))

(declare-fun bs!409365 () Bool)

(declare-fun s!221066 () Bool)

(assert (= bs!409365 (and neg-inst!1096 s!221066)))

(declare-fun res!829074 () Bool)

(declare-fun e!1179988 () Bool)

(assert (=> bs!409365 (=> res!829074 e!1179988)))

(assert (=> bs!409365 (= res!829074 (not (= (list!8295 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906))) (list!8295 x!369906))))))

(assert (=> bs!409365 (=> true e!1179988)))

(declare-fun b!1846453 () Bool)

(assert (=> b!1846453 (= e!1179988 (= (toValue!33 thiss!5044 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906))) (toValue!33 thiss!5044 x!369906)))))

(assert (= (and bs!409365 (not res!829074)) b!1846453))

(assert (=> bs!409362 m!2274777))

(assert (=> bs!409362 m!2274781))

(assert (=> bs!409362 s!221066))

(assert (=> m!2274777 s!221062))

(declare-fun bs!409366 () Bool)

(declare-fun s!221068 () Bool)

(assert (= bs!409366 (and neg-inst!1096 s!221068)))

(declare-fun res!829075 () Bool)

(declare-fun e!1179989 () Bool)

(assert (=> bs!409366 (=> res!829075 e!1179989)))

(assert (=> bs!409366 (= res!829075 (not (= (list!8295 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906))) (list!8295 x!369907))))))

(assert (=> bs!409366 (=> true e!1179989)))

(declare-fun b!1846454 () Bool)

(assert (=> b!1846454 (= e!1179989 (= (toValue!33 thiss!5044 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906))) (toValue!33 thiss!5044 x!369907)))))

(assert (= (and bs!409366 (not res!829075)) b!1846454))

(declare-fun bs!409367 () Bool)

(assert (= bs!409367 (and m!2274791 m!2274777)))

(assert (=> bs!409367 m!2274777))

(assert (=> bs!409367 m!2274783))

(assert (=> bs!409367 s!221068))

(declare-fun bs!409368 () Bool)

(declare-fun s!221070 () Bool)

(assert (= bs!409368 (and neg-inst!1096 s!221070)))

(declare-fun res!829076 () Bool)

(declare-fun e!1179990 () Bool)

(assert (=> bs!409368 (=> res!829076 e!1179990)))

(assert (=> bs!409368 (= res!829076 (not (= (list!8295 x!369908) (list!8295 x!369907))))))

(assert (=> bs!409368 (=> true e!1179990)))

(declare-fun b!1846455 () Bool)

(assert (=> b!1846455 (= e!1179990 (= (toValue!33 thiss!5044 x!369908) (toValue!33 thiss!5044 x!369907)))))

(assert (= (and bs!409368 (not res!829076)) b!1846455))

(declare-fun bs!409369 () Bool)

(assert (= bs!409369 (and m!2274791 m!2274785)))

(assert (=> bs!409369 m!2274785))

(assert (=> bs!409369 m!2274783))

(assert (=> bs!409369 s!221070))

(declare-fun bs!409370 () Bool)

(declare-fun s!221072 () Bool)

(assert (= bs!409370 (and neg-inst!1096 s!221072)))

(declare-fun res!829077 () Bool)

(declare-fun e!1179991 () Bool)

(assert (=> bs!409370 (=> res!829077 e!1179991)))

(assert (=> bs!409370 (= res!829077 (not (= (list!8295 x!369906) (list!8295 x!369907))))))

(assert (=> bs!409370 (=> true e!1179991)))

(declare-fun b!1846456 () Bool)

(assert (=> b!1846456 (= e!1179991 (= (toValue!33 thiss!5044 x!369906) (toValue!33 thiss!5044 x!369907)))))

(assert (= (and bs!409370 (not res!829077)) b!1846456))

(declare-fun bs!409371 () Bool)

(assert (= bs!409371 (and m!2274791 m!2274781)))

(assert (=> bs!409371 m!2274781))

(assert (=> bs!409371 m!2274783))

(assert (=> bs!409371 s!221072))

(declare-fun bs!409372 () Bool)

(declare-fun s!221074 () Bool)

(assert (= bs!409372 (and neg-inst!1096 s!221074)))

(declare-fun res!829078 () Bool)

(declare-fun e!1179992 () Bool)

(assert (=> bs!409372 (=> res!829078 e!1179992)))

(assert (=> bs!409372 (= res!829078 (not (= (list!8295 x!369907) (list!8295 x!369907))))))

(assert (=> bs!409372 (=> true e!1179992)))

(declare-fun b!1846457 () Bool)

(assert (=> b!1846457 (= e!1179992 (= (toValue!33 thiss!5044 x!369907) (toValue!33 thiss!5044 x!369907)))))

(assert (= (and bs!409372 (not res!829078)) b!1846457))

(assert (=> m!2274791 m!2274783))

(assert (=> m!2274791 m!2274783))

(assert (=> m!2274791 s!221074))

(declare-fun bs!409373 () Bool)

(declare-fun s!221076 () Bool)

(assert (= bs!409373 (and neg-inst!1096 s!221076)))

(declare-fun res!829079 () Bool)

(declare-fun e!1179993 () Bool)

(assert (=> bs!409373 (=> res!829079 e!1179993)))

(assert (=> bs!409373 (= res!829079 (not (= (list!8295 x!369907) (list!8295 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906))))))))

(assert (=> bs!409373 (=> true e!1179993)))

(declare-fun b!1846458 () Bool)

(assert (=> b!1846458 (= e!1179993 (= (toValue!33 thiss!5044 x!369907) (toValue!33 thiss!5044 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906)))))))

(assert (= (and bs!409373 (not res!829079)) b!1846458))

(assert (=> bs!409367 m!2274783))

(assert (=> bs!409367 m!2274777))

(assert (=> bs!409367 s!221076))

(declare-fun bs!409374 () Bool)

(declare-fun s!221078 () Bool)

(assert (= bs!409374 (and neg-inst!1096 s!221078)))

(declare-fun res!829080 () Bool)

(declare-fun e!1179994 () Bool)

(assert (=> bs!409374 (=> res!829080 e!1179994)))

(assert (=> bs!409374 (= res!829080 (not (= (list!8295 x!369907) (list!8295 x!369908))))))

(assert (=> bs!409374 (=> true e!1179994)))

(declare-fun b!1846459 () Bool)

(assert (=> b!1846459 (= e!1179994 (= (toValue!33 thiss!5044 x!369907) (toValue!33 thiss!5044 x!369908)))))

(assert (= (and bs!409374 (not res!829080)) b!1846459))

(assert (=> bs!409369 m!2274783))

(assert (=> bs!409369 m!2274785))

(assert (=> bs!409369 s!221078))

(declare-fun bs!409375 () Bool)

(declare-fun s!221080 () Bool)

(assert (= bs!409375 (and neg-inst!1096 s!221080)))

(declare-fun res!829081 () Bool)

(declare-fun e!1179995 () Bool)

(assert (=> bs!409375 (=> res!829081 e!1179995)))

(assert (=> bs!409375 (= res!829081 (not (= (list!8295 x!369907) (list!8295 x!369906))))))

(assert (=> bs!409375 (=> true e!1179995)))

(declare-fun b!1846460 () Bool)

(assert (=> b!1846460 (= e!1179995 (= (toValue!33 thiss!5044 x!369907) (toValue!33 thiss!5044 x!369906)))))

(assert (= (and bs!409375 (not res!829081)) b!1846460))

(assert (=> bs!409371 m!2274783))

(assert (=> bs!409371 m!2274781))

(assert (=> bs!409371 s!221080))

(assert (=> m!2274791 s!221074))

(declare-fun bs!409376 () Bool)

(assert (= bs!409376 (and m!2274793 m!2274777)))

(assert (=> bs!409376 s!221064))

(declare-fun bs!409377 () Bool)

(assert (= bs!409377 (and m!2274793 m!2274781)))

(assert (=> bs!409377 s!221052))

(declare-fun bs!409378 () Bool)

(assert (= bs!409378 (and m!2274793 m!2274791)))

(assert (=> bs!409378 s!221078))

(assert (=> m!2274793 s!221054))

(declare-fun bs!409379 () Bool)

(assert (= bs!409379 (and m!2274793 m!2274785)))

(assert (=> bs!409379 s!221054))

(assert (=> bs!409376 s!221058))

(assert (=> m!2274793 s!221054))

(assert (=> bs!409379 s!221054))

(assert (=> bs!409378 s!221070))

(assert (=> bs!409377 s!221056))

(declare-fun bs!409380 () Bool)

(assert (= bs!409380 (and m!2274773 m!2274781)))

(assert (=> bs!409380 s!221050))

(assert (=> m!2274773 s!221050))

(declare-fun bs!409381 () Bool)

(assert (= bs!409381 (and m!2274773 m!2274777)))

(assert (=> bs!409381 s!221066))

(declare-fun bs!409382 () Bool)

(assert (= bs!409382 (and m!2274773 m!2274791)))

(assert (=> bs!409382 s!221080))

(declare-fun bs!409383 () Bool)

(assert (= bs!409383 (and m!2274773 m!2274785 m!2274793)))

(assert (=> bs!409383 s!221056))

(assert (=> bs!409382 s!221072))

(assert (=> bs!409381 s!221060))

(assert (=> m!2274773 s!221050))

(assert (=> bs!409380 s!221050))

(assert (=> bs!409383 s!221052))

(declare-fun bs!409384 () Bool)

(assert (= bs!409384 (and m!2274783 m!2274791)))

(assert (=> bs!409384 s!221074))

(declare-fun bs!409385 () Bool)

(assert (= bs!409385 (and m!2274783 m!2274785 m!2274793)))

(assert (=> bs!409385 s!221070))

(assert (=> m!2274783 s!221074))

(declare-fun bs!409386 () Bool)

(assert (= bs!409386 (and m!2274783 m!2274777)))

(assert (=> bs!409386 s!221068))

(declare-fun bs!409387 () Bool)

(assert (= bs!409387 (and m!2274783 m!2274781 m!2274773)))

(assert (=> bs!409387 s!221072))

(assert (=> m!2274783 s!221074))

(assert (=> bs!409384 s!221074))

(assert (=> bs!409387 s!221080))

(assert (=> bs!409386 s!221076))

(assert (=> bs!409385 s!221078))

(declare-fun bs!409388 () Bool)

(assert (= bs!409388 (and neg-inst!1096 b!1846432)))

(assert (=> bs!409388 (= true inst!1097)))

(declare-fun res!829063 () Bool)

(declare-fun e!1179975 () Bool)

(assert (=> start!184248 (=> res!829063 e!1179975)))

(declare-fun lambda!72783 () Int)

(declare-fun Forall!953 (Int) Bool)

(assert (=> start!184248 (= res!829063 (not (Forall!953 lambda!72783)))))

(assert (=> start!184248 (= (Forall!953 lambda!72783) inst!1096)))

(assert (=> start!184248 (not e!1179975)))

(assert (=> start!184248 true))

(declare-fun e!1179974 () Bool)

(assert (=> b!1846431 (= e!1179975 e!1179974)))

(declare-fun res!829064 () Bool)

(assert (=> b!1846431 (=> res!829064 e!1179974)))

(declare-fun lambda!72784 () Int)

(declare-fun lambda!72785 () Int)

(declare-fun semiInverseModEq!1483 (Int Int) Bool)

(assert (=> b!1846431 (= res!829064 (not (semiInverseModEq!1483 lambda!72784 lambda!72785)))))

(assert (=> b!1846431 (= (semiInverseModEq!1483 lambda!72784 lambda!72785) (Forall!953 lambda!72783))))

(declare-fun lambda!72786 () Int)

(declare-fun Forall2!584 (Int) Bool)

(assert (=> b!1846432 (= e!1179974 (Forall2!584 lambda!72786))))

(assert (=> b!1846432 (= (Forall2!584 lambda!72786) inst!1097)))

(assert (= neg-inst!1097 inst!1096))

(assert (= (and start!184248 (not res!829063)) b!1846431))

(assert (= (and b!1846431 (not res!829064)) b!1846432))

(assert (= neg-inst!1096 inst!1097))

(declare-fun m!2274799 () Bool)

(assert (=> start!184248 m!2274799))

(assert (=> start!184248 m!2274799))

(declare-fun m!2274801 () Bool)

(assert (=> b!1846431 m!2274801))

(assert (=> b!1846431 m!2274801))

(assert (=> b!1846431 m!2274799))

(declare-fun m!2274803 () Bool)

(assert (=> b!1846432 m!2274803))

(assert (=> b!1846432 m!2274803))

(push 1)

(assert (not bs!409361))

(assert (not start!184248))

(assert (not b!1846443))

(assert (not b!1846432))

(assert (not b!1846450))

(assert (not bs!409364))

(assert (not bs!409368))

(assert (not b!1846441))

(assert (not bs!409370))

(assert (not b!1846431))

(assert (not b!1846446))

(assert (not bs!409359))

(assert (not bs!409374))

(assert (not bs!409373))

(assert (not b!1846458))

(assert (not bs!409365))

(assert (not bs!409352))

(assert (not b!1846455))

(assert (not b!1846457))

(assert (not bs!409358))

(assert (not bs!409363))

(assert (not b!1846456))

(assert (not b!1846453))

(assert (not bs!409366))

(assert (not b!1846452))

(assert (not b!1846449))

(assert (not b!1846451))

(assert (not b!1846459))

(assert (not b!1846448))

(assert (not b!1846454))

(assert (not b!1846447))

(assert (not b!1846442))

(assert (not bs!409372))

(assert (not bs!409357))

(assert (not bs!409354))

(assert (not bs!409375))

(assert (not b!1846445))

(assert (not bs!409355))

(assert (not b!1846460))

(assert (not b!1846444))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!565205 () Bool)

(declare-fun list!8297 (Conc!6754) List!20465)

(assert (=> d!565205 (= (list!8295 x!369906) (list!8297 (c!301495 x!369906)))))

(declare-fun bs!409426 () Bool)

(assert (= bs!409426 d!565205))

(declare-fun m!2274839 () Bool)

(assert (=> bs!409426 m!2274839))

(assert (=> bs!409355 d!565205))

(declare-fun d!565207 () Bool)

(assert (=> d!565207 (= (list!8295 x!369908) (list!8297 (c!301495 x!369908)))))

(declare-fun bs!409427 () Bool)

(assert (= bs!409427 d!565207))

(declare-fun m!2274841 () Bool)

(assert (=> bs!409427 m!2274841))

(assert (=> bs!409355 d!565207))

(declare-fun d!565209 () Bool)

(declare-fun efficientList!222 (BalanceConc!13430) List!20465)

(assert (=> d!565209 (= (toValue!33 thiss!5044 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906))) (ImaginaryLiteralValue!3770 (efficientList!222 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906)))))))

(declare-fun bs!409428 () Bool)

(assert (= bs!409428 d!565209))

(assert (=> bs!409428 m!2274775))

(declare-fun m!2274843 () Bool)

(assert (=> bs!409428 m!2274843))

(assert (=> b!1846452 d!565209))

(declare-fun d!565211 () Bool)

(assert (=> d!565211 (= (toValue!33 thiss!5044 x!369908) (ImaginaryLiteralValue!3770 (efficientList!222 x!369908)))))

(declare-fun bs!409429 () Bool)

(assert (= bs!409429 d!565211))

(declare-fun m!2274845 () Bool)

(assert (=> bs!409429 m!2274845))

(assert (=> b!1846452 d!565211))

(assert (=> bs!409370 d!565205))

(declare-fun d!565213 () Bool)

(assert (=> d!565213 (= (list!8295 x!369907) (list!8297 (c!301495 x!369907)))))

(declare-fun bs!409430 () Bool)

(assert (= bs!409430 d!565213))

(declare-fun m!2274847 () Bool)

(assert (=> bs!409430 m!2274847))

(assert (=> bs!409370 d!565213))

(assert (=> b!1846449 d!565211))

(assert (=> b!1846449 d!565209))

(assert (=> b!1846455 d!565211))

(declare-fun d!565215 () Bool)

(assert (=> d!565215 (= (toValue!33 thiss!5044 x!369907) (ImaginaryLiteralValue!3770 (efficientList!222 x!369907)))))

(declare-fun bs!409431 () Bool)

(assert (= bs!409431 d!565215))

(declare-fun m!2274849 () Bool)

(assert (=> bs!409431 m!2274849))

(assert (=> b!1846455 d!565215))

(declare-fun d!565217 () Bool)

(assert (=> d!565217 (= (toValue!33 thiss!5044 x!369906) (ImaginaryLiteralValue!3770 (efficientList!222 x!369906)))))

(declare-fun bs!409432 () Bool)

(assert (= bs!409432 d!565217))

(declare-fun m!2274851 () Bool)

(assert (=> bs!409432 m!2274851))

(assert (=> b!1846445 d!565217))

(declare-fun d!565219 () Bool)

(assert (=> d!565219 (= (list!8295 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906))) (list!8297 (c!301495 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906)))))))

(declare-fun bs!409433 () Bool)

(assert (= bs!409433 d!565219))

(declare-fun m!2274853 () Bool)

(assert (=> bs!409433 m!2274853))

(assert (=> bs!409364 d!565219))

(assert (=> bs!409364 d!565207))

(assert (=> bs!409374 d!565213))

(assert (=> bs!409374 d!565207))

(assert (=> bs!409359 d!565207))

(assert (=> bs!409359 d!565219))

(assert (=> b!1846448 d!565211))

(assert (=> b!1846448 d!565217))

(assert (=> bs!409368 d!565207))

(assert (=> bs!409368 d!565213))

(assert (=> bs!409354 d!565205))

(assert (=> b!1846458 d!565215))

(assert (=> b!1846458 d!565209))

(assert (=> bs!409358 d!565207))

(assert (=> bs!409358 d!565205))

(assert (=> b!1846451 d!565209))

(assert (=> bs!409373 d!565213))

(assert (=> bs!409373 d!565219))

(assert (=> b!1846447 d!565211))

(assert (=> bs!409363 d!565219))

(assert (=> b!1846457 d!565215))

(assert (=> b!1846454 d!565209))

(assert (=> b!1846454 d!565215))

(assert (=> b!1846450 d!565217))

(assert (=> b!1846450 d!565209))

(assert (=> b!1846460 d!565215))

(assert (=> b!1846460 d!565217))

(assert (=> bs!409372 d!565213))

(assert (=> bs!409357 d!565207))

(assert (=> bs!409366 d!565219))

(assert (=> bs!409366 d!565213))

(assert (=> b!1846453 d!565209))

(assert (=> b!1846453 d!565217))

(assert (=> bs!409361 d!565205))

(assert (=> bs!409361 d!565219))

(assert (=> bs!409375 d!565213))

(assert (=> bs!409375 d!565205))

(assert (=> bs!409365 d!565219))

(assert (=> bs!409365 d!565205))

(assert (=> b!1846459 d!565215))

(assert (=> b!1846459 d!565211))

(assert (=> b!1846456 d!565217))

(assert (=> b!1846456 d!565215))

(assert (=> b!1846446 d!565217))

(assert (=> b!1846446 d!565211))

(declare-fun bs!409434 () Bool)

(assert (= bs!409434 (and m!2274781 b!1846445)))

(assert (=> bs!409434 m!2274773))

(assert (=> bs!409434 m!2274773))

(declare-fun bs!409435 () Bool)

(assert (= bs!409435 (and m!2274785 m!2274781 b!1846446)))

(assert (=> bs!409435 m!2274773))

(assert (=> bs!409435 m!2274793))

(declare-fun bs!409436 () Bool)

(assert (= bs!409436 (and m!2274785 b!1846447)))

(assert (=> bs!409436 m!2274793))

(assert (=> bs!409436 m!2274793))

(declare-fun bs!409437 () Bool)

(assert (= bs!409437 (and m!2274785 m!2274781 b!1846448)))

(assert (=> bs!409437 m!2274793))

(assert (=> bs!409437 m!2274773))

(declare-fun bs!409438 () Bool)

(assert (= bs!409438 (and m!2274777 m!2274785 b!1846449)))

(assert (=> bs!409438 m!2274793))

(declare-fun m!2274855 () Bool)

(assert (=> bs!409438 m!2274855))

(declare-fun bs!409439 () Bool)

(assert (= bs!409439 (and m!2274777 m!2274781 b!1846450)))

(assert (=> bs!409439 m!2274773))

(assert (=> bs!409439 m!2274855))

(declare-fun bs!409440 () Bool)

(assert (= bs!409440 (and m!2274777 b!1846451)))

(assert (=> bs!409440 m!2274855))

(assert (=> bs!409440 m!2274855))

(declare-fun bs!409441 () Bool)

(assert (= bs!409441 (and m!2274777 m!2274785 b!1846452)))

(assert (=> bs!409441 m!2274855))

(assert (=> bs!409441 m!2274793))

(declare-fun bs!409442 () Bool)

(assert (= bs!409442 (and m!2274777 m!2274781 b!1846453)))

(assert (=> bs!409442 m!2274855))

(assert (=> bs!409442 m!2274773))

(declare-fun bs!409443 () Bool)

(assert (= bs!409443 (and m!2274791 m!2274777 b!1846454)))

(assert (=> bs!409443 m!2274855))

(assert (=> bs!409443 m!2274791))

(declare-fun bs!409444 () Bool)

(assert (= bs!409444 (and m!2274791 m!2274785 b!1846455)))

(assert (=> bs!409444 m!2274793))

(assert (=> bs!409444 m!2274791))

(declare-fun bs!409445 () Bool)

(assert (= bs!409445 (and m!2274791 m!2274781 b!1846456)))

(assert (=> bs!409445 m!2274773))

(assert (=> bs!409445 m!2274791))

(declare-fun bs!409446 () Bool)

(assert (= bs!409446 (and m!2274791 b!1846457)))

(assert (=> bs!409446 m!2274791))

(assert (=> bs!409446 m!2274791))

(declare-fun bs!409447 () Bool)

(assert (= bs!409447 (and m!2274791 m!2274777 b!1846458)))

(assert (=> bs!409447 m!2274791))

(assert (=> bs!409447 m!2274855))

(declare-fun bs!409448 () Bool)

(assert (= bs!409448 (and m!2274791 m!2274785 b!1846459)))

(assert (=> bs!409448 m!2274791))

(assert (=> bs!409448 m!2274793))

(declare-fun bs!409449 () Bool)

(assert (= bs!409449 (and m!2274791 m!2274781 b!1846460)))

(assert (=> bs!409449 m!2274791))

(assert (=> bs!409449 m!2274773))

(push 1)

(assert (not d!565209))

(assert (not d!565205))

(assert (not b!1846442))

(assert (not d!565211))

(assert (not start!184248))

(assert (not b!1846443))

(assert (not b!1846432))

(assert (not d!565213))

(assert (not d!565217))

(assert (not b!1846441))

(assert (not d!565219))

(assert (not b!1846431))

(assert (not d!565215))

(assert (not bs!409352))

(assert (not d!565207))

(assert (not b!1846444))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1846517 () Bool)

(declare-fun e!1180040 () List!20465)

(assert (=> b!1846517 (= e!1180040 Nil!20393)))

(declare-fun d!565237 () Bool)

(declare-fun c!301501 () Bool)

(assert (=> d!565237 (= c!301501 (is-Empty!6754 (c!301495 x!369908)))))

(assert (=> d!565237 (= (list!8297 (c!301495 x!369908)) e!1180040)))

(declare-fun b!1846518 () Bool)

(declare-fun e!1180041 () List!20465)

(assert (=> b!1846518 (= e!1180040 e!1180041)))

(declare-fun c!301502 () Bool)

(assert (=> b!1846518 (= c!301502 (is-Leaf!9871 (c!301495 x!369908)))))

(declare-fun b!1846519 () Bool)

(declare-fun list!8299 (IArray!13513) List!20465)

(assert (=> b!1846519 (= e!1180041 (list!8299 (xs!9630 (c!301495 x!369908))))))

(declare-fun b!1846520 () Bool)

(declare-fun ++!5529 (List!20465 List!20465) List!20465)

(assert (=> b!1846520 (= e!1180041 (++!5529 (list!8297 (left!16346 (c!301495 x!369908))) (list!8297 (right!16676 (c!301495 x!369908)))))))

(assert (= (and d!565237 c!301501) b!1846517))

(assert (= (and d!565237 (not c!301501)) b!1846518))

(assert (= (and b!1846518 c!301502) b!1846519))

(assert (= (and b!1846518 (not c!301502)) b!1846520))

(declare-fun m!2274875 () Bool)

(assert (=> b!1846519 m!2274875))

(declare-fun m!2274877 () Bool)

(assert (=> b!1846520 m!2274877))

(declare-fun m!2274879 () Bool)

(assert (=> b!1846520 m!2274879))

(assert (=> b!1846520 m!2274877))

(assert (=> b!1846520 m!2274879))

(declare-fun m!2274881 () Bool)

(assert (=> b!1846520 m!2274881))

(assert (=> d!565207 d!565237))

(declare-fun b!1846521 () Bool)

(declare-fun e!1180042 () List!20465)

(assert (=> b!1846521 (= e!1180042 Nil!20393)))

(declare-fun d!565239 () Bool)

(declare-fun c!301503 () Bool)

(assert (=> d!565239 (= c!301503 (is-Empty!6754 (c!301495 x!369907)))))

(assert (=> d!565239 (= (list!8297 (c!301495 x!369907)) e!1180042)))

(declare-fun b!1846522 () Bool)

(declare-fun e!1180043 () List!20465)

(assert (=> b!1846522 (= e!1180042 e!1180043)))

(declare-fun c!301504 () Bool)

(assert (=> b!1846522 (= c!301504 (is-Leaf!9871 (c!301495 x!369907)))))

(declare-fun b!1846523 () Bool)

(assert (=> b!1846523 (= e!1180043 (list!8299 (xs!9630 (c!301495 x!369907))))))

(declare-fun b!1846524 () Bool)

(assert (=> b!1846524 (= e!1180043 (++!5529 (list!8297 (left!16346 (c!301495 x!369907))) (list!8297 (right!16676 (c!301495 x!369907)))))))

(assert (= (and d!565239 c!301503) b!1846521))

(assert (= (and d!565239 (not c!301503)) b!1846522))

(assert (= (and b!1846522 c!301504) b!1846523))

(assert (= (and b!1846522 (not c!301504)) b!1846524))

(declare-fun m!2274883 () Bool)

(assert (=> b!1846523 m!2274883))

(declare-fun m!2274885 () Bool)

(assert (=> b!1846524 m!2274885))

(declare-fun m!2274887 () Bool)

(assert (=> b!1846524 m!2274887))

(assert (=> b!1846524 m!2274885))

(assert (=> b!1846524 m!2274887))

(declare-fun m!2274889 () Bool)

(assert (=> b!1846524 m!2274889))

(assert (=> d!565213 d!565239))

(declare-fun b!1846525 () Bool)

(declare-fun e!1180044 () List!20465)

(assert (=> b!1846525 (= e!1180044 Nil!20393)))

(declare-fun d!565241 () Bool)

(declare-fun c!301505 () Bool)

(assert (=> d!565241 (= c!301505 (is-Empty!6754 (c!301495 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906)))))))

(assert (=> d!565241 (= (list!8297 (c!301495 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906)))) e!1180044)))

(declare-fun b!1846526 () Bool)

(declare-fun e!1180045 () List!20465)

(assert (=> b!1846526 (= e!1180044 e!1180045)))

(declare-fun c!301506 () Bool)

(assert (=> b!1846526 (= c!301506 (is-Leaf!9871 (c!301495 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906)))))))

(declare-fun b!1846527 () Bool)

(assert (=> b!1846527 (= e!1180045 (list!8299 (xs!9630 (c!301495 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906))))))))

(declare-fun b!1846528 () Bool)

(assert (=> b!1846528 (= e!1180045 (++!5529 (list!8297 (left!16346 (c!301495 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906))))) (list!8297 (right!16676 (c!301495 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906)))))))))

(assert (= (and d!565241 c!301505) b!1846525))

(assert (= (and d!565241 (not c!301505)) b!1846526))

(assert (= (and b!1846526 c!301506) b!1846527))

(assert (= (and b!1846526 (not c!301506)) b!1846528))

(declare-fun m!2274891 () Bool)

(assert (=> b!1846527 m!2274891))

(declare-fun m!2274893 () Bool)

(assert (=> b!1846528 m!2274893))

(declare-fun m!2274895 () Bool)

(assert (=> b!1846528 m!2274895))

(assert (=> b!1846528 m!2274893))

(assert (=> b!1846528 m!2274895))

(declare-fun m!2274897 () Bool)

(assert (=> b!1846528 m!2274897))

(assert (=> d!565219 d!565241))

(declare-fun d!565243 () Bool)

(declare-fun lt!714989 () List!20465)

(assert (=> d!565243 (= lt!714989 (list!8295 x!369908))))

(declare-fun efficientList!224 (Conc!6754 List!20465) List!20465)

(declare-fun efficientList$default$2!75 (Conc!6754) List!20465)

(assert (=> d!565243 (= lt!714989 (efficientList!224 (c!301495 x!369908) (efficientList$default$2!75 (c!301495 x!369908))))))

(assert (=> d!565243 (= (efficientList!222 x!369908) lt!714989)))

(declare-fun bs!409474 () Bool)

(assert (= bs!409474 d!565243))

(assert (=> bs!409474 m!2274785))

(declare-fun m!2274899 () Bool)

(assert (=> bs!409474 m!2274899))

(assert (=> bs!409474 m!2274899))

(declare-fun m!2274901 () Bool)

(assert (=> bs!409474 m!2274901))

(assert (=> d!565211 d!565243))

(declare-fun b!1846529 () Bool)

(declare-fun e!1180046 () List!20465)

(assert (=> b!1846529 (= e!1180046 Nil!20393)))

(declare-fun d!565245 () Bool)

(declare-fun c!301507 () Bool)

(assert (=> d!565245 (= c!301507 (is-Empty!6754 (c!301495 x!369906)))))

(assert (=> d!565245 (= (list!8297 (c!301495 x!369906)) e!1180046)))

(declare-fun b!1846530 () Bool)

(declare-fun e!1180047 () List!20465)

(assert (=> b!1846530 (= e!1180046 e!1180047)))

(declare-fun c!301508 () Bool)

(assert (=> b!1846530 (= c!301508 (is-Leaf!9871 (c!301495 x!369906)))))

(declare-fun b!1846531 () Bool)

(assert (=> b!1846531 (= e!1180047 (list!8299 (xs!9630 (c!301495 x!369906))))))

(declare-fun b!1846532 () Bool)

(assert (=> b!1846532 (= e!1180047 (++!5529 (list!8297 (left!16346 (c!301495 x!369906))) (list!8297 (right!16676 (c!301495 x!369906)))))))

(assert (= (and d!565245 c!301507) b!1846529))

(assert (= (and d!565245 (not c!301507)) b!1846530))

(assert (= (and b!1846530 c!301508) b!1846531))

(assert (= (and b!1846530 (not c!301508)) b!1846532))

(declare-fun m!2274903 () Bool)

(assert (=> b!1846531 m!2274903))

(declare-fun m!2274905 () Bool)

(assert (=> b!1846532 m!2274905))

(declare-fun m!2274907 () Bool)

(assert (=> b!1846532 m!2274907))

(assert (=> b!1846532 m!2274905))

(assert (=> b!1846532 m!2274907))

(declare-fun m!2274909 () Bool)

(assert (=> b!1846532 m!2274909))

(assert (=> d!565205 d!565245))

(declare-fun d!565247 () Bool)

(declare-fun lt!714990 () List!20465)

(assert (=> d!565247 (= lt!714990 (list!8295 x!369906))))

(assert (=> d!565247 (= lt!714990 (efficientList!224 (c!301495 x!369906) (efficientList$default$2!75 (c!301495 x!369906))))))

(assert (=> d!565247 (= (efficientList!222 x!369906) lt!714990)))

(declare-fun bs!409475 () Bool)

(assert (= bs!409475 d!565247))

(assert (=> bs!409475 m!2274781))

(declare-fun m!2274911 () Bool)

(assert (=> bs!409475 m!2274911))

(assert (=> bs!409475 m!2274911))

(declare-fun m!2274913 () Bool)

(assert (=> bs!409475 m!2274913))

(assert (=> d!565217 d!565247))

(declare-fun d!565249 () Bool)

(declare-fun lt!714991 () List!20465)

(assert (=> d!565249 (= lt!714991 (list!8295 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906))))))

(assert (=> d!565249 (= lt!714991 (efficientList!224 (c!301495 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906))) (efficientList$default$2!75 (c!301495 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906))))))))

(assert (=> d!565249 (= (efficientList!222 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906))) lt!714991)))

(declare-fun bs!409476 () Bool)

(assert (= bs!409476 d!565249))

(assert (=> bs!409476 m!2274775))

(assert (=> bs!409476 m!2274777))

(declare-fun m!2274915 () Bool)

(assert (=> bs!409476 m!2274915))

(assert (=> bs!409476 m!2274915))

(declare-fun m!2274917 () Bool)

(assert (=> bs!409476 m!2274917))

(assert (=> d!565209 d!565249))

(declare-fun d!565251 () Bool)

(declare-fun lt!714992 () List!20465)

(assert (=> d!565251 (= lt!714992 (list!8295 x!369907))))

(assert (=> d!565251 (= lt!714992 (efficientList!224 (c!301495 x!369907) (efficientList$default$2!75 (c!301495 x!369907))))))

(assert (=> d!565251 (= (efficientList!222 x!369907) lt!714992)))

(declare-fun bs!409477 () Bool)

(assert (= bs!409477 d!565251))

(assert (=> bs!409477 m!2274783))

(declare-fun m!2274919 () Bool)

(assert (=> bs!409477 m!2274919))

(assert (=> bs!409477 m!2274919))

(declare-fun m!2274921 () Bool)

(assert (=> bs!409477 m!2274921))

(assert (=> d!565215 d!565251))

(push 1)

(assert (not b!1846520))

(assert (not bs!409352))

(assert (not b!1846442))

(assert (not d!565249))

(assert (not b!1846444))

(assert (not b!1846443))

(assert (not b!1846432))

(assert (not d!565251))

(assert (not b!1846531))

(assert (not b!1846519))

(assert (not b!1846532))

(assert (not start!184248))

(assert (not b!1846528))

(assert (not b!1846523))

(assert (not b!1846524))

(assert (not b!1846441))

(assert (not b!1846527))

(assert (not b!1846431))

(assert (not d!565243))

(assert (not d!565247))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> start!184248 d!565205))

(assert (=> start!184248 d!565217))

(declare-fun d!565259 () Bool)

(declare-fun isBalanced!2108 (Conc!6754) Bool)

(assert (=> d!565259 (= (inv!26743 x!369906) (isBalanced!2108 (c!301495 x!369906)))))

(declare-fun bs!409481 () Bool)

(assert (= bs!409481 d!565259))

(declare-fun m!2274951 () Bool)

(assert (=> bs!409481 m!2274951))

(assert (=> start!184248 d!565259))

(declare-fun d!565267 () Bool)

(declare-fun c!301524 () Bool)

(assert (=> d!565267 (= c!301524 (is-ImaginaryLiteralValue!3770 (toValue!33 thiss!5044 x!369906)))))

(declare-fun e!1180062 () BalanceConc!13430)

(assert (=> d!565267 (= (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906)) e!1180062)))

(declare-fun b!1846561 () Bool)

(declare-fun seqFromList!2615 (List!20465) BalanceConc!13430)

(assert (=> b!1846561 (= e!1180062 (seqFromList!2615 (text!26836 (toValue!33 thiss!5044 x!369906))))))

(declare-fun b!1846562 () Bool)

(assert (=> b!1846562 (= e!1180062 (BalanceConc!13431 Empty!6754))))

(assert (= (and d!565267 c!301524) b!1846561))

(assert (= (and d!565267 (not c!301524)) b!1846562))

(declare-fun m!2274973 () Bool)

(assert (=> b!1846561 m!2274973))

(assert (=> start!184248 d!565267))

(assert (=> start!184248 d!565219))

(declare-fun d!565273 () Bool)

(declare-fun choose!11617 (Int) Bool)

(assert (=> d!565273 (= (Forall!953 lambda!72783) (choose!11617 lambda!72783))))

(declare-fun bs!409483 () Bool)

(assert (= bs!409483 d!565273))

(declare-fun m!2274975 () Bool)

(assert (=> bs!409483 m!2274975))

(assert (=> start!184248 d!565273))

(declare-fun bs!409484 () Bool)

(declare-fun d!565275 () Bool)

(assert (= bs!409484 (and d!565275 start!184248)))

(declare-fun lambda!72811 () Int)

(assert (=> bs!409484 (not (= lambda!72811 lambda!72783))))

(assert (=> d!565275 true))

(declare-fun order!13157 () Int)

(declare-fun order!13159 () Int)

(declare-fun dynLambda!10144 (Int Int) Int)

(declare-fun dynLambda!10145 (Int Int) Int)

(assert (=> d!565275 (< (dynLambda!10144 order!13157 lambda!72784) (dynLambda!10145 order!13159 lambda!72811))))

(assert (=> d!565275 true))

(declare-fun order!13161 () Int)

(declare-fun dynLambda!10146 (Int Int) Int)

(assert (=> d!565275 (< (dynLambda!10146 order!13161 lambda!72785) (dynLambda!10145 order!13159 lambda!72811))))

(assert (=> d!565275 (= (semiInverseModEq!1483 lambda!72784 lambda!72785) (Forall!953 lambda!72811))))

(declare-fun bs!409485 () Bool)

(assert (= bs!409485 d!565275))

(declare-fun m!2274977 () Bool)

(assert (=> bs!409485 m!2274977))

(assert (=> b!1846431 d!565275))

(assert (=> b!1846431 d!565273))

(assert (=> d!565247 d!565205))

(declare-fun b!1846579 () Bool)

(declare-fun e!1180070 () List!20465)

(declare-fun lt!715012 () List!20465)

(assert (=> b!1846579 (= e!1180070 lt!715012)))

(declare-fun b!1846580 () Bool)

(declare-datatypes ((Unit!35059 0))(
  ( (Unit!35060) )
))
(declare-fun lt!715010 () Unit!35059)

(declare-fun lt!715011 () Unit!35059)

(assert (=> b!1846580 (= lt!715010 lt!715011)))

(declare-fun lt!715009 () List!20465)

(declare-fun call!115121 () List!20465)

(assert (=> b!1846580 (= (++!5529 (++!5529 lt!715009 lt!715012) (efficientList$default$2!75 (c!301495 x!369906))) (++!5529 lt!715009 call!115121))))

(declare-fun lemmaConcatAssociativity!1090 (List!20465 List!20465 List!20465) Unit!35059)

(assert (=> b!1846580 (= lt!715011 (lemmaConcatAssociativity!1090 lt!715009 lt!715012 (efficientList$default$2!75 (c!301495 x!369906))))))

(assert (=> b!1846580 (= lt!715012 (list!8297 (right!16676 (c!301495 x!369906))))))

(assert (=> b!1846580 (= lt!715009 (list!8297 (left!16346 (c!301495 x!369906))))))

(declare-fun e!1180069 () List!20465)

(assert (=> b!1846580 (= e!1180069 (efficientList!224 (left!16346 (c!301495 x!369906)) (efficientList!224 (right!16676 (c!301495 x!369906)) (efficientList$default$2!75 (c!301495 x!369906)))))))

(declare-fun b!1846581 () Bool)

(assert (=> b!1846581 (= e!1180069 call!115121)))

(declare-fun b!1846582 () Bool)

(declare-fun efficientList!226 (IArray!13513) List!20465)

(assert (=> b!1846582 (= e!1180070 (efficientList!226 (xs!9630 (c!301495 x!369906))))))

(declare-fun b!1846583 () Bool)

(declare-fun e!1180071 () List!20465)

(assert (=> b!1846583 (= e!1180071 (efficientList$default$2!75 (c!301495 x!369906)))))

(declare-fun bm!115116 () Bool)

(declare-fun c!301531 () Bool)

(declare-fun c!301532 () Bool)

(assert (=> bm!115116 (= c!301531 c!301532)))

(assert (=> bm!115116 (= call!115121 (++!5529 e!1180070 (efficientList$default$2!75 (c!301495 x!369906))))))

(declare-fun d!565277 () Bool)

(declare-fun lt!715013 () List!20465)

(assert (=> d!565277 (= lt!715013 (++!5529 (list!8297 (c!301495 x!369906)) (efficientList$default$2!75 (c!301495 x!369906))))))

(assert (=> d!565277 (= lt!715013 e!1180071)))

(declare-fun c!301533 () Bool)

(assert (=> d!565277 (= c!301533 (is-Empty!6754 (c!301495 x!369906)))))

(assert (=> d!565277 (= (efficientList!224 (c!301495 x!369906) (efficientList$default$2!75 (c!301495 x!369906))) lt!715013)))

(declare-fun b!1846584 () Bool)

(assert (=> b!1846584 (= e!1180071 e!1180069)))

(assert (=> b!1846584 (= c!301532 (is-Leaf!9871 (c!301495 x!369906)))))

(assert (= (and d!565277 c!301533) b!1846583))

(assert (= (and d!565277 (not c!301533)) b!1846584))

(assert (= (and b!1846584 c!301532) b!1846581))

(assert (= (and b!1846584 (not c!301532)) b!1846580))

(assert (= (or b!1846581 b!1846580) bm!115116))

(assert (= (and bm!115116 c!301531) b!1846582))

(assert (= (and bm!115116 (not c!301531)) b!1846579))

(declare-fun m!2274979 () Bool)

(assert (=> b!1846580 m!2274979))

(assert (=> b!1846580 m!2274907))

(assert (=> b!1846580 m!2274905))

(assert (=> b!1846580 m!2274911))

(declare-fun m!2274981 () Bool)

(assert (=> b!1846580 m!2274981))

(declare-fun m!2274983 () Bool)

(assert (=> b!1846580 m!2274983))

(assert (=> b!1846580 m!2274911))

(declare-fun m!2274985 () Bool)

(assert (=> b!1846580 m!2274985))

(assert (=> b!1846580 m!2274911))

(declare-fun m!2274987 () Bool)

(assert (=> b!1846580 m!2274987))

(assert (=> b!1846580 m!2274983))

(assert (=> b!1846580 m!2274981))

(declare-fun m!2274989 () Bool)

(assert (=> b!1846580 m!2274989))

(declare-fun m!2274991 () Bool)

(assert (=> b!1846582 m!2274991))

(assert (=> bm!115116 m!2274911))

(declare-fun m!2274993 () Bool)

(assert (=> bm!115116 m!2274993))

(assert (=> d!565277 m!2274839))

(assert (=> d!565277 m!2274839))

(assert (=> d!565277 m!2274911))

(declare-fun m!2274995 () Bool)

(assert (=> d!565277 m!2274995))

(assert (=> d!565247 d!565277))

(declare-fun d!565279 () Bool)

(assert (=> d!565279 (= (efficientList$default$2!75 (c!301495 x!369906)) Nil!20393)))

(assert (=> d!565247 d!565279))

(assert (=> b!1846432 d!565213))

(assert (=> b!1846432 d!565207))

(declare-fun d!565281 () Bool)

(assert (=> d!565281 (= (inv!26743 x!369907) (isBalanced!2108 (c!301495 x!369907)))))

(declare-fun bs!409486 () Bool)

(assert (= bs!409486 d!565281))

(declare-fun m!2274997 () Bool)

(assert (=> bs!409486 m!2274997))

(assert (=> b!1846432 d!565281))

(declare-fun d!565283 () Bool)

(declare-fun choose!11618 (Int) Bool)

(assert (=> d!565283 (= (Forall2!584 lambda!72786) (choose!11618 lambda!72786))))

(declare-fun bs!409487 () Bool)

(assert (= bs!409487 d!565283))

(declare-fun m!2274999 () Bool)

(assert (=> bs!409487 m!2274999))

(assert (=> b!1846432 d!565283))

(declare-fun d!565285 () Bool)

(assert (=> d!565285 (= (inv!26743 x!369908) (isBalanced!2108 (c!301495 x!369908)))))

(declare-fun bs!409488 () Bool)

(assert (= bs!409488 d!565285))

(declare-fun m!2275001 () Bool)

(assert (=> bs!409488 m!2275001))

(assert (=> b!1846432 d!565285))

(declare-fun d!565287 () Bool)

(declare-fun c!301536 () Bool)

(assert (=> d!565287 (= c!301536 (is-Node!6754 (c!301495 x!369907)))))

(declare-fun e!1180076 () Bool)

(assert (=> d!565287 (= (inv!26742 (c!301495 x!369907)) e!1180076)))

(declare-fun b!1846591 () Bool)

(declare-fun inv!26746 (Conc!6754) Bool)

(assert (=> b!1846591 (= e!1180076 (inv!26746 (c!301495 x!369907)))))

(declare-fun b!1846592 () Bool)

(declare-fun e!1180077 () Bool)

(assert (=> b!1846592 (= e!1180076 e!1180077)))

(declare-fun res!829125 () Bool)

(assert (=> b!1846592 (= res!829125 (not (is-Leaf!9871 (c!301495 x!369907))))))

(assert (=> b!1846592 (=> res!829125 e!1180077)))

(declare-fun b!1846593 () Bool)

(declare-fun inv!26747 (Conc!6754) Bool)

(assert (=> b!1846593 (= e!1180077 (inv!26747 (c!301495 x!369907)))))

(assert (= (and d!565287 c!301536) b!1846591))

(assert (= (and d!565287 (not c!301536)) b!1846592))

(assert (= (and b!1846592 (not res!829125)) b!1846593))

(declare-fun m!2275003 () Bool)

(assert (=> b!1846591 m!2275003))

(declare-fun m!2275005 () Bool)

(assert (=> b!1846593 m!2275005))

(assert (=> b!1846443 d!565287))

(declare-fun d!565289 () Bool)

(declare-fun c!301537 () Bool)

(assert (=> d!565289 (= c!301537 (is-Node!6754 (c!301495 x!369908)))))

(declare-fun e!1180078 () Bool)

(assert (=> d!565289 (= (inv!26742 (c!301495 x!369908)) e!1180078)))

(declare-fun b!1846594 () Bool)

(assert (=> b!1846594 (= e!1180078 (inv!26746 (c!301495 x!369908)))))

(declare-fun b!1846595 () Bool)

(declare-fun e!1180079 () Bool)

(assert (=> b!1846595 (= e!1180078 e!1180079)))

(declare-fun res!829126 () Bool)

(assert (=> b!1846595 (= res!829126 (not (is-Leaf!9871 (c!301495 x!369908))))))

(assert (=> b!1846595 (=> res!829126 e!1180079)))

(declare-fun b!1846596 () Bool)

(assert (=> b!1846596 (= e!1180079 (inv!26747 (c!301495 x!369908)))))

(assert (= (and d!565289 c!301537) b!1846594))

(assert (= (and d!565289 (not c!301537)) b!1846595))

(assert (= (and b!1846595 (not res!829126)) b!1846596))

(declare-fun m!2275007 () Bool)

(assert (=> b!1846594 m!2275007))

(declare-fun m!2275009 () Bool)

(assert (=> b!1846596 m!2275009))

(assert (=> b!1846444 d!565289))

(assert (=> d!565251 d!565213))

(declare-fun b!1846597 () Bool)

(declare-fun e!1180081 () List!20465)

(declare-fun lt!715017 () List!20465)

(assert (=> b!1846597 (= e!1180081 lt!715017)))

(declare-fun b!1846598 () Bool)

(declare-fun lt!715015 () Unit!35059)

(declare-fun lt!715016 () Unit!35059)

(assert (=> b!1846598 (= lt!715015 lt!715016)))

(declare-fun call!115122 () List!20465)

(declare-fun lt!715014 () List!20465)

(assert (=> b!1846598 (= (++!5529 (++!5529 lt!715014 lt!715017) (efficientList$default$2!75 (c!301495 x!369907))) (++!5529 lt!715014 call!115122))))

(assert (=> b!1846598 (= lt!715016 (lemmaConcatAssociativity!1090 lt!715014 lt!715017 (efficientList$default$2!75 (c!301495 x!369907))))))

(assert (=> b!1846598 (= lt!715017 (list!8297 (right!16676 (c!301495 x!369907))))))

(assert (=> b!1846598 (= lt!715014 (list!8297 (left!16346 (c!301495 x!369907))))))

(declare-fun e!1180080 () List!20465)

(assert (=> b!1846598 (= e!1180080 (efficientList!224 (left!16346 (c!301495 x!369907)) (efficientList!224 (right!16676 (c!301495 x!369907)) (efficientList$default$2!75 (c!301495 x!369907)))))))

(declare-fun b!1846599 () Bool)

(assert (=> b!1846599 (= e!1180080 call!115122)))

(declare-fun b!1846600 () Bool)

(assert (=> b!1846600 (= e!1180081 (efficientList!226 (xs!9630 (c!301495 x!369907))))))

(declare-fun b!1846601 () Bool)

(declare-fun e!1180082 () List!20465)

(assert (=> b!1846601 (= e!1180082 (efficientList$default$2!75 (c!301495 x!369907)))))

(declare-fun bm!115117 () Bool)

(declare-fun c!301538 () Bool)

(declare-fun c!301539 () Bool)

(assert (=> bm!115117 (= c!301538 c!301539)))

(assert (=> bm!115117 (= call!115122 (++!5529 e!1180081 (efficientList$default$2!75 (c!301495 x!369907))))))

(declare-fun d!565291 () Bool)

(declare-fun lt!715018 () List!20465)

(assert (=> d!565291 (= lt!715018 (++!5529 (list!8297 (c!301495 x!369907)) (efficientList$default$2!75 (c!301495 x!369907))))))

(assert (=> d!565291 (= lt!715018 e!1180082)))

(declare-fun c!301540 () Bool)

(assert (=> d!565291 (= c!301540 (is-Empty!6754 (c!301495 x!369907)))))

(assert (=> d!565291 (= (efficientList!224 (c!301495 x!369907) (efficientList$default$2!75 (c!301495 x!369907))) lt!715018)))

(declare-fun b!1846602 () Bool)

(assert (=> b!1846602 (= e!1180082 e!1180080)))

(assert (=> b!1846602 (= c!301539 (is-Leaf!9871 (c!301495 x!369907)))))

(assert (= (and d!565291 c!301540) b!1846601))

(assert (= (and d!565291 (not c!301540)) b!1846602))

(assert (= (and b!1846602 c!301539) b!1846599))

(assert (= (and b!1846602 (not c!301539)) b!1846598))

(assert (= (or b!1846599 b!1846598) bm!115117))

(assert (= (and bm!115117 c!301538) b!1846600))

(assert (= (and bm!115117 (not c!301538)) b!1846597))

(declare-fun m!2275011 () Bool)

(assert (=> b!1846598 m!2275011))

(assert (=> b!1846598 m!2274887))

(assert (=> b!1846598 m!2274885))

(assert (=> b!1846598 m!2274919))

(declare-fun m!2275013 () Bool)

(assert (=> b!1846598 m!2275013))

(declare-fun m!2275015 () Bool)

(assert (=> b!1846598 m!2275015))

(assert (=> b!1846598 m!2274919))

(declare-fun m!2275017 () Bool)

(assert (=> b!1846598 m!2275017))

(assert (=> b!1846598 m!2274919))

(declare-fun m!2275019 () Bool)

(assert (=> b!1846598 m!2275019))

(assert (=> b!1846598 m!2275015))

(assert (=> b!1846598 m!2275013))

(declare-fun m!2275021 () Bool)

(assert (=> b!1846598 m!2275021))

(declare-fun m!2275023 () Bool)

(assert (=> b!1846600 m!2275023))

(assert (=> bm!115117 m!2274919))

(declare-fun m!2275025 () Bool)

(assert (=> bm!115117 m!2275025))

(assert (=> d!565291 m!2274847))

(assert (=> d!565291 m!2274847))

(assert (=> d!565291 m!2274919))

(declare-fun m!2275027 () Bool)

(assert (=> d!565291 m!2275027))

(assert (=> d!565251 d!565291))

(declare-fun d!565293 () Bool)

(assert (=> d!565293 (= (efficientList$default$2!75 (c!301495 x!369907)) Nil!20393)))

(assert (=> d!565251 d!565293))

(assert (=> b!1846442 d!565215))

(assert (=> b!1846442 d!565211))

(declare-fun d!565295 () Bool)

(declare-fun c!301541 () Bool)

(assert (=> d!565295 (= c!301541 (is-Node!6754 (c!301495 x!369906)))))

(declare-fun e!1180083 () Bool)

(assert (=> d!565295 (= (inv!26742 (c!301495 x!369906)) e!1180083)))

(declare-fun b!1846603 () Bool)

(assert (=> b!1846603 (= e!1180083 (inv!26746 (c!301495 x!369906)))))

(declare-fun b!1846604 () Bool)

(declare-fun e!1180084 () Bool)

(assert (=> b!1846604 (= e!1180083 e!1180084)))

(declare-fun res!829127 () Bool)

(assert (=> b!1846604 (= res!829127 (not (is-Leaf!9871 (c!301495 x!369906))))))

(assert (=> b!1846604 (=> res!829127 e!1180084)))

(declare-fun b!1846605 () Bool)

(assert (=> b!1846605 (= e!1180084 (inv!26747 (c!301495 x!369906)))))

(assert (= (and d!565295 c!301541) b!1846603))

(assert (= (and d!565295 (not c!301541)) b!1846604))

(assert (= (and b!1846604 (not res!829127)) b!1846605))

(declare-fun m!2275029 () Bool)

(assert (=> b!1846603 m!2275029))

(declare-fun m!2275031 () Bool)

(assert (=> b!1846605 m!2275031))

(assert (=> b!1846441 d!565295))

(assert (=> bs!409352 d!565219))

(assert (=> bs!409352 d!565267))

(assert (=> bs!409352 d!565217))

(assert (=> bs!409352 d!565205))

(assert (=> d!565243 d!565207))

(declare-fun b!1846606 () Bool)

(declare-fun e!1180086 () List!20465)

(declare-fun lt!715022 () List!20465)

(assert (=> b!1846606 (= e!1180086 lt!715022)))

(declare-fun b!1846607 () Bool)

(declare-fun lt!715020 () Unit!35059)

(declare-fun lt!715021 () Unit!35059)

(assert (=> b!1846607 (= lt!715020 lt!715021)))

(declare-fun call!115123 () List!20465)

(declare-fun lt!715019 () List!20465)

(assert (=> b!1846607 (= (++!5529 (++!5529 lt!715019 lt!715022) (efficientList$default$2!75 (c!301495 x!369908))) (++!5529 lt!715019 call!115123))))

(assert (=> b!1846607 (= lt!715021 (lemmaConcatAssociativity!1090 lt!715019 lt!715022 (efficientList$default$2!75 (c!301495 x!369908))))))

(assert (=> b!1846607 (= lt!715022 (list!8297 (right!16676 (c!301495 x!369908))))))

(assert (=> b!1846607 (= lt!715019 (list!8297 (left!16346 (c!301495 x!369908))))))

(declare-fun e!1180085 () List!20465)

(assert (=> b!1846607 (= e!1180085 (efficientList!224 (left!16346 (c!301495 x!369908)) (efficientList!224 (right!16676 (c!301495 x!369908)) (efficientList$default$2!75 (c!301495 x!369908)))))))

(declare-fun b!1846608 () Bool)

(assert (=> b!1846608 (= e!1180085 call!115123)))

(declare-fun b!1846609 () Bool)

(assert (=> b!1846609 (= e!1180086 (efficientList!226 (xs!9630 (c!301495 x!369908))))))

(declare-fun b!1846610 () Bool)

(declare-fun e!1180087 () List!20465)

(assert (=> b!1846610 (= e!1180087 (efficientList$default$2!75 (c!301495 x!369908)))))

(declare-fun bm!115118 () Bool)

(declare-fun c!301542 () Bool)

(declare-fun c!301543 () Bool)

(assert (=> bm!115118 (= c!301542 c!301543)))

(assert (=> bm!115118 (= call!115123 (++!5529 e!1180086 (efficientList$default$2!75 (c!301495 x!369908))))))

(declare-fun d!565297 () Bool)

(declare-fun lt!715023 () List!20465)

(assert (=> d!565297 (= lt!715023 (++!5529 (list!8297 (c!301495 x!369908)) (efficientList$default$2!75 (c!301495 x!369908))))))

(assert (=> d!565297 (= lt!715023 e!1180087)))

(declare-fun c!301544 () Bool)

(assert (=> d!565297 (= c!301544 (is-Empty!6754 (c!301495 x!369908)))))

(assert (=> d!565297 (= (efficientList!224 (c!301495 x!369908) (efficientList$default$2!75 (c!301495 x!369908))) lt!715023)))

(declare-fun b!1846611 () Bool)

(assert (=> b!1846611 (= e!1180087 e!1180085)))

(assert (=> b!1846611 (= c!301543 (is-Leaf!9871 (c!301495 x!369908)))))

(assert (= (and d!565297 c!301544) b!1846610))

(assert (= (and d!565297 (not c!301544)) b!1846611))

(assert (= (and b!1846611 c!301543) b!1846608))

(assert (= (and b!1846611 (not c!301543)) b!1846607))

(assert (= (or b!1846608 b!1846607) bm!115118))

(assert (= (and bm!115118 c!301542) b!1846609))

(assert (= (and bm!115118 (not c!301542)) b!1846606))

(declare-fun m!2275033 () Bool)

(assert (=> b!1846607 m!2275033))

(assert (=> b!1846607 m!2274879))

(assert (=> b!1846607 m!2274877))

(assert (=> b!1846607 m!2274899))

(declare-fun m!2275035 () Bool)

(assert (=> b!1846607 m!2275035))

(declare-fun m!2275037 () Bool)

(assert (=> b!1846607 m!2275037))

(assert (=> b!1846607 m!2274899))

(declare-fun m!2275039 () Bool)

(assert (=> b!1846607 m!2275039))

(assert (=> b!1846607 m!2274899))

(declare-fun m!2275041 () Bool)

(assert (=> b!1846607 m!2275041))

(assert (=> b!1846607 m!2275037))

(assert (=> b!1846607 m!2275035))

(declare-fun m!2275043 () Bool)

(assert (=> b!1846607 m!2275043))

(declare-fun m!2275045 () Bool)

(assert (=> b!1846609 m!2275045))

(assert (=> bm!115118 m!2274899))

(declare-fun m!2275047 () Bool)

(assert (=> bm!115118 m!2275047))

(assert (=> d!565297 m!2274841))

(assert (=> d!565297 m!2274841))

(assert (=> d!565297 m!2274899))

(declare-fun m!2275049 () Bool)

(assert (=> d!565297 m!2275049))

(assert (=> d!565243 d!565297))

(declare-fun d!565299 () Bool)

(assert (=> d!565299 (= (efficientList$default$2!75 (c!301495 x!369908)) Nil!20393)))

(assert (=> d!565243 d!565299))

(assert (=> d!565249 d!565219))

(declare-fun b!1846612 () Bool)

(declare-fun e!1180089 () List!20465)

(declare-fun lt!715027 () List!20465)

(assert (=> b!1846612 (= e!1180089 lt!715027)))

(declare-fun b!1846613 () Bool)

(declare-fun lt!715025 () Unit!35059)

(declare-fun lt!715026 () Unit!35059)

(assert (=> b!1846613 (= lt!715025 lt!715026)))

(declare-fun call!115124 () List!20465)

(declare-fun lt!715024 () List!20465)

(assert (=> b!1846613 (= (++!5529 (++!5529 lt!715024 lt!715027) (efficientList$default$2!75 (c!301495 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906))))) (++!5529 lt!715024 call!115124))))

(assert (=> b!1846613 (= lt!715026 (lemmaConcatAssociativity!1090 lt!715024 lt!715027 (efficientList$default$2!75 (c!301495 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906))))))))

(assert (=> b!1846613 (= lt!715027 (list!8297 (right!16676 (c!301495 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906))))))))

(assert (=> b!1846613 (= lt!715024 (list!8297 (left!16346 (c!301495 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906))))))))

(declare-fun e!1180088 () List!20465)

(assert (=> b!1846613 (= e!1180088 (efficientList!224 (left!16346 (c!301495 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906)))) (efficientList!224 (right!16676 (c!301495 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906)))) (efficientList$default$2!75 (c!301495 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906)))))))))

(declare-fun b!1846614 () Bool)

(assert (=> b!1846614 (= e!1180088 call!115124)))

(declare-fun b!1846615 () Bool)

(assert (=> b!1846615 (= e!1180089 (efficientList!226 (xs!9630 (c!301495 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906))))))))

(declare-fun b!1846616 () Bool)

(declare-fun e!1180090 () List!20465)

(assert (=> b!1846616 (= e!1180090 (efficientList$default$2!75 (c!301495 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906)))))))

(declare-fun bm!115119 () Bool)

(declare-fun c!301545 () Bool)

(declare-fun c!301546 () Bool)

(assert (=> bm!115119 (= c!301545 c!301546)))

(assert (=> bm!115119 (= call!115124 (++!5529 e!1180089 (efficientList$default$2!75 (c!301495 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906))))))))

(declare-fun d!565301 () Bool)

(declare-fun lt!715028 () List!20465)

(assert (=> d!565301 (= lt!715028 (++!5529 (list!8297 (c!301495 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906)))) (efficientList$default$2!75 (c!301495 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906))))))))

(assert (=> d!565301 (= lt!715028 e!1180090)))

(declare-fun c!301547 () Bool)

(assert (=> d!565301 (= c!301547 (is-Empty!6754 (c!301495 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906)))))))

(assert (=> d!565301 (= (efficientList!224 (c!301495 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906))) (efficientList$default$2!75 (c!301495 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906))))) lt!715028)))

(declare-fun b!1846617 () Bool)

(assert (=> b!1846617 (= e!1180090 e!1180088)))

(assert (=> b!1846617 (= c!301546 (is-Leaf!9871 (c!301495 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906)))))))

(assert (= (and d!565301 c!301547) b!1846616))

(assert (= (and d!565301 (not c!301547)) b!1846617))

(assert (= (and b!1846617 c!301546) b!1846614))

(assert (= (and b!1846617 (not c!301546)) b!1846613))

(assert (= (or b!1846614 b!1846613) bm!115119))

(assert (= (and bm!115119 c!301545) b!1846615))

(assert (= (and bm!115119 (not c!301545)) b!1846612))

(declare-fun m!2275051 () Bool)

(assert (=> b!1846613 m!2275051))

(assert (=> b!1846613 m!2274895))

(assert (=> b!1846613 m!2274893))

(assert (=> b!1846613 m!2274915))

(declare-fun m!2275053 () Bool)

(assert (=> b!1846613 m!2275053))

(declare-fun m!2275055 () Bool)

(assert (=> b!1846613 m!2275055))

(assert (=> b!1846613 m!2274915))

(declare-fun m!2275057 () Bool)

(assert (=> b!1846613 m!2275057))

(assert (=> b!1846613 m!2274915))

(declare-fun m!2275059 () Bool)

(assert (=> b!1846613 m!2275059))

(assert (=> b!1846613 m!2275055))

(assert (=> b!1846613 m!2275053))

(declare-fun m!2275061 () Bool)

(assert (=> b!1846613 m!2275061))

(declare-fun m!2275063 () Bool)

(assert (=> b!1846615 m!2275063))

(assert (=> bm!115119 m!2274915))

(declare-fun m!2275065 () Bool)

(assert (=> bm!115119 m!2275065))

(assert (=> d!565301 m!2274853))

(assert (=> d!565301 m!2274853))

(assert (=> d!565301 m!2274915))

(declare-fun m!2275067 () Bool)

(assert (=> d!565301 m!2275067))

(assert (=> d!565249 d!565301))

(declare-fun d!565303 () Bool)

(assert (=> d!565303 (= (efficientList$default$2!75 (c!301495 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369906)))) Nil!20393)))

(assert (=> d!565249 d!565303))

(declare-fun e!1180095 () Bool)

(declare-fun tp!522082 () Bool)

(declare-fun tp!522083 () Bool)

(declare-fun b!1846624 () Bool)

(assert (=> b!1846624 (= e!1180095 (and (inv!26742 (left!16346 (c!301495 x!369906))) tp!522082 (inv!26742 (right!16676 (c!301495 x!369906))) tp!522083))))

(declare-fun b!1846625 () Bool)

(declare-fun inv!26748 (IArray!13513) Bool)

(assert (=> b!1846625 (= e!1180095 (inv!26748 (xs!9630 (c!301495 x!369906))))))

(assert (=> b!1846441 (= tp!522066 (and (inv!26742 (c!301495 x!369906)) e!1180095))))

(assert (= (and b!1846441 (is-Node!6754 (c!301495 x!369906))) b!1846624))

(assert (= (and b!1846441 (is-Leaf!9871 (c!301495 x!369906))) b!1846625))

(declare-fun m!2275069 () Bool)

(assert (=> b!1846624 m!2275069))

(declare-fun m!2275071 () Bool)

(assert (=> b!1846624 m!2275071))

(declare-fun m!2275073 () Bool)

(assert (=> b!1846625 m!2275073))

(assert (=> b!1846441 m!2274771))

(declare-fun b!1846626 () Bool)

(declare-fun e!1180097 () Bool)

(declare-fun tp!522084 () Bool)

(declare-fun tp!522085 () Bool)

(assert (=> b!1846626 (= e!1180097 (and (inv!26742 (left!16346 (c!301495 x!369907))) tp!522084 (inv!26742 (right!16676 (c!301495 x!369907))) tp!522085))))

(declare-fun b!1846627 () Bool)

(assert (=> b!1846627 (= e!1180097 (inv!26748 (xs!9630 (c!301495 x!369907))))))

(assert (=> b!1846443 (= tp!522068 (and (inv!26742 (c!301495 x!369907)) e!1180097))))

(assert (= (and b!1846443 (is-Node!6754 (c!301495 x!369907))) b!1846626))

(assert (= (and b!1846443 (is-Leaf!9871 (c!301495 x!369907))) b!1846627))

(declare-fun m!2275075 () Bool)

(assert (=> b!1846626 m!2275075))

(declare-fun m!2275077 () Bool)

(assert (=> b!1846626 m!2275077))

(declare-fun m!2275079 () Bool)

(assert (=> b!1846627 m!2275079))

(assert (=> b!1846443 m!2274795))

(declare-fun e!1180099 () Bool)

(declare-fun tp!522086 () Bool)

(declare-fun b!1846628 () Bool)

(declare-fun tp!522087 () Bool)

(assert (=> b!1846628 (= e!1180099 (and (inv!26742 (left!16346 (c!301495 x!369908))) tp!522086 (inv!26742 (right!16676 (c!301495 x!369908))) tp!522087))))

(declare-fun b!1846629 () Bool)

(assert (=> b!1846629 (= e!1180099 (inv!26748 (xs!9630 (c!301495 x!369908))))))

(assert (=> b!1846444 (= tp!522067 (and (inv!26742 (c!301495 x!369908)) e!1180099))))

(assert (= (and b!1846444 (is-Node!6754 (c!301495 x!369908))) b!1846628))

(assert (= (and b!1846444 (is-Leaf!9871 (c!301495 x!369908))) b!1846629))

(declare-fun m!2275081 () Bool)

(assert (=> b!1846628 m!2275081))

(declare-fun m!2275083 () Bool)

(assert (=> b!1846628 m!2275083))

(declare-fun m!2275085 () Bool)

(assert (=> b!1846629 m!2275085))

(assert (=> b!1846444 m!2274797))

(push 1)

(assert (not d!565301))

(assert (not d!565285))

(assert (not b!1846596))

(assert (not b!1846444))

(assert (not d!565259))

(assert (not b!1846613))

(assert (not b!1846605))

(assert (not b!1846531))

(assert (not b!1846519))

(assert (not b!1846532))

(assert (not b!1846520))

(assert (not d!565281))

(assert (not d!565283))

(assert (not b!1846593))

(assert (not b!1846582))

(assert (not d!565277))

(assert (not b!1846600))

(assert (not d!565273))

(assert (not b!1846626))

(assert (not b!1846580))

(assert (not b!1846624))

(assert (not bm!115116))

(assert (not b!1846591))

(assert (not b!1846625))

(assert (not bm!115119))

(assert (not b!1846528))

(assert (not b!1846627))

(assert (not b!1846443))

(assert (not d!565297))

(assert (not b!1846629))

(assert (not b!1846523))

(assert (not d!565275))

(assert (not b!1846524))

(assert (not b!1846603))

(assert (not b!1846609))

(assert (not b!1846615))

(assert (not b!1846441))

(assert (not b!1846527))

(assert (not b!1846561))

(assert (not b!1846628))

(assert (not b!1846607))

(assert (not bm!115117))

(assert (not b!1846598))

(assert (not b!1846594))

(assert (not d!565291))

(assert (not bm!115118))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

