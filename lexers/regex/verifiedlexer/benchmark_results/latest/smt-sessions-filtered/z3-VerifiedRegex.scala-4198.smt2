; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!227990 () Bool)

(assert start!227990)

(assert (=> start!227990 true))

(declare-fun b!2311923 () Bool)

(assert (=> b!2311923 true))

(assert (=> b!2311923 true))

(declare-fun b!2311924 () Bool)

(assert (=> b!2311924 true))

(declare-fun b!2311934 () Bool)

(declare-fun e!1481662 () Bool)

(declare-datatypes ((List!27617 0))(
  ( (Nil!27519) (Cons!27519 (h!32920 (_ BitVec 16)) (t!207177 List!27617)) )
))
(declare-datatypes ((IArray!17979 0))(
  ( (IArray!17980 (innerList!9047 List!27617)) )
))
(declare-datatypes ((Conc!8987 0))(
  ( (Node!8987 (left!20869 Conc!8987) (right!21199 Conc!8987) (csize!18204 Int) (cheight!9198 Int)) (Leaf!13186 (xs!11929 IArray!17979) (csize!18205 Int)) (Empty!8987) )
))
(declare-datatypes ((BalanceConc!17706 0))(
  ( (BalanceConc!17707 (c!366592 Conc!8987)) )
))
(declare-fun x!441189 () BalanceConc!17706)

(declare-fun tp!733445 () Bool)

(declare-fun inv!37212 (Conc!8987) Bool)

(assert (=> b!2311934 (= e!1481662 (and (inv!37212 (c!366592 x!441189)) tp!733445))))

(declare-fun inst!1336 () Bool)

(declare-datatypes ((IntegerValueInjection!126 0))(
  ( (IntegerValueInjection!127) )
))
(declare-fun thiss!2978 () IntegerValueInjection!126)

(declare-fun inv!37213 (BalanceConc!17706) Bool)

(declare-fun list!10893 (BalanceConc!17706) List!27617)

(declare-datatypes ((TokenValue!4583 0))(
  ( (FloatLiteralValue!9166 (text!32526 List!27617)) (TokenValueExt!4582 (__x!18219 Int)) (Broken!22915 (value!139803 List!27617)) (Object!4680) (End!4583) (Def!4583) (Underscore!4583) (Match!4583) (Else!4583) (Error!4583) (Case!4583) (If!4583) (Extends!4583) (Abstract!4583) (Class!4583) (Val!4583) (DelimiterValue!9166 (del!4643 List!27617)) (KeywordValue!4589 (value!139804 List!27617)) (CommentValue!9166 (value!139805 List!27617)) (WhitespaceValue!9166 (value!139806 List!27617)) (IndentationValue!4583 (value!139807 List!27617)) (String!30016) (Int32!4583) (Broken!22916 (value!139808 List!27617)) (Boolean!4584) (Unit!40447) (OperatorValue!4586 (op!4643 List!27617)) (IdentifierValue!9166 (value!139809 List!27617)) (IdentifierValue!9167 (value!139810 List!27617)) (WhitespaceValue!9167 (value!139811 List!27617)) (True!9166) (False!9166) (Broken!22917 (value!139812 List!27617)) (Broken!22918 (value!139813 List!27617)) (True!9167) (RightBrace!4583) (RightBracket!4583) (Colon!4583) (Null!4583) (Comma!4583) (LeftBracket!4583) (False!9167) (LeftBrace!4583) (ImaginaryLiteralValue!4583 (text!32527 List!27617)) (StringLiteralValue!13749 (value!139814 List!27617)) (EOFValue!4583 (value!139815 List!27617)) (IdentValue!4583 (value!139816 List!27617)) (DelimiterValue!9167 (value!139817 List!27617)) (DedentValue!4583 (value!139818 List!27617)) (NewLineValue!4583 (value!139819 List!27617)) (IntegerValue!13749 (value!139820 (_ BitVec 32)) (text!32528 List!27617)) (IntegerValue!13750 (value!139821 Int) (text!32529 List!27617)) (Times!4583) (Or!4583) (Equal!4583) (Minus!4583) (Broken!22919 (value!139822 List!27617)) (And!4583) (Div!4583) (LessEqual!4583) (Mod!4583) (Concat!11347) (Not!4583) (Plus!4583) (SpaceValue!4583 (value!139823 List!27617)) (IntegerValue!13751 (value!139824 Int) (text!32530 List!27617)) (StringLiteralValue!13750 (text!32531 List!27617)) (FloatLiteralValue!9167 (text!32532 List!27617)) (BytesLiteralValue!4583 (value!139825 List!27617)) (CommentValue!9167 (value!139826 List!27617)) (StringLiteralValue!13751 (value!139827 List!27617)) (ErrorTokenValue!4583 (msg!4644 List!27617)) )
))
(declare-fun toCharacters!0 (IntegerValueInjection!126 TokenValue!4583) BalanceConc!17706)

(declare-fun toValue!7 (IntegerValueInjection!126 BalanceConc!17706) TokenValue!4583)

(assert (=> start!227990 (= inst!1336 (=> (and (inv!37213 x!441189) e!1481662) (= (list!10893 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!441189))) (list!10893 x!441189))))))

(assert (= start!227990 b!2311934))

(declare-fun m!2739395 () Bool)

(assert (=> b!2311934 m!2739395))

(declare-fun m!2739397 () Bool)

(assert (=> start!227990 m!2739397))

(declare-fun m!2739399 () Bool)

(assert (=> start!227990 m!2739399))

(declare-fun m!2739401 () Bool)

(assert (=> start!227990 m!2739401))

(declare-fun m!2739403 () Bool)

(assert (=> start!227990 m!2739403))

(assert (=> start!227990 m!2739397))

(assert (=> start!227990 m!2739399))

(declare-fun m!2739405 () Bool)

(assert (=> start!227990 m!2739405))

(declare-fun res!988308 () Bool)

(declare-fun e!1481663 () Bool)

(assert (=> b!2311924 (=> res!988308 e!1481663)))

(declare-fun x!441190 () BalanceConc!17706)

(declare-fun x!441191 () BalanceConc!17706)

(assert (=> b!2311924 (= res!988308 (not (= (list!10893 x!441190) (list!10893 x!441191))))))

(declare-fun e!1481665 () Bool)

(declare-fun e!1481664 () Bool)

(declare-fun inst!1337 () Bool)

(assert (=> b!2311924 (= inst!1337 (=> (and (inv!37213 x!441190) e!1481665 (inv!37213 x!441191) e!1481664) e!1481663))))

(declare-fun b!2311935 () Bool)

(assert (=> b!2311935 (= e!1481663 (= (toValue!7 thiss!2978 x!441190) (toValue!7 thiss!2978 x!441191)))))

(declare-fun b!2311936 () Bool)

(declare-fun tp!733447 () Bool)

(assert (=> b!2311936 (= e!1481665 (and (inv!37212 (c!366592 x!441190)) tp!733447))))

(declare-fun b!2311937 () Bool)

(declare-fun tp!733446 () Bool)

(assert (=> b!2311937 (= e!1481664 (and (inv!37212 (c!366592 x!441191)) tp!733446))))

(assert (= (and b!2311924 (not res!988308)) b!2311935))

(assert (= b!2311924 b!2311936))

(assert (= b!2311924 b!2311937))

(declare-fun m!2739407 () Bool)

(assert (=> b!2311924 m!2739407))

(declare-fun m!2739409 () Bool)

(assert (=> b!2311924 m!2739409))

(declare-fun m!2739411 () Bool)

(assert (=> b!2311924 m!2739411))

(declare-fun m!2739413 () Bool)

(assert (=> b!2311924 m!2739413))

(declare-fun m!2739415 () Bool)

(assert (=> b!2311935 m!2739415))

(declare-fun m!2739417 () Bool)

(assert (=> b!2311935 m!2739417))

(declare-fun m!2739419 () Bool)

(assert (=> b!2311936 m!2739419))

(declare-fun m!2739421 () Bool)

(assert (=> b!2311937 m!2739421))

(declare-fun bs!458495 () Bool)

(declare-fun neg-inst!1337 () Bool)

(declare-fun s!224839 () Bool)

(assert (= bs!458495 (and neg-inst!1337 s!224839)))

(assert (=> bs!458495 (=> true (= (list!10893 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!441189))) (list!10893 x!441189)))))

(assert (=> m!2739401 m!2739397))

(assert (=> m!2739401 m!2739399))

(assert (=> m!2739401 m!2739405))

(assert (=> m!2739401 s!224839))

(assert (=> m!2739397 s!224839))

(declare-fun bs!458496 () Bool)

(assert (= bs!458496 (and neg-inst!1337 start!227990)))

(assert (=> bs!458496 (= true inst!1336)))

(declare-fun bs!458497 () Bool)

(declare-fun neg-inst!1336 () Bool)

(declare-fun s!224841 () Bool)

(assert (= bs!458497 (and neg-inst!1336 s!224841)))

(declare-fun res!988309 () Bool)

(declare-fun e!1481666 () Bool)

(assert (=> bs!458497 (=> res!988309 e!1481666)))

(assert (=> bs!458497 (= res!988309 (not (= (list!10893 x!441190) (list!10893 x!441190))))))

(assert (=> bs!458497 (=> true e!1481666)))

(declare-fun b!2311938 () Bool)

(assert (=> b!2311938 (= e!1481666 (= (toValue!7 thiss!2978 x!441190) (toValue!7 thiss!2978 x!441190)))))

(assert (= (and bs!458497 (not res!988309)) b!2311938))

(assert (=> m!2739415 m!2739407))

(assert (=> m!2739415 m!2739407))

(assert (=> m!2739415 s!224841))

(assert (=> m!2739415 s!224841))

(declare-fun bs!458498 () Bool)

(declare-fun s!224843 () Bool)

(assert (= bs!458498 (and neg-inst!1336 s!224843)))

(declare-fun res!988310 () Bool)

(declare-fun e!1481667 () Bool)

(assert (=> bs!458498 (=> res!988310 e!1481667)))

(assert (=> bs!458498 (= res!988310 (not (= (list!10893 x!441189) (list!10893 x!441190))))))

(assert (=> bs!458498 (=> true e!1481667)))

(declare-fun b!2311939 () Bool)

(assert (=> b!2311939 (= e!1481667 (= (toValue!7 thiss!2978 x!441189) (toValue!7 thiss!2978 x!441190)))))

(assert (= (and bs!458498 (not res!988310)) b!2311939))

(declare-fun bs!458499 () Bool)

(assert (= bs!458499 (and m!2739401 m!2739415)))

(assert (=> bs!458499 m!2739401))

(assert (=> bs!458499 m!2739407))

(assert (=> bs!458499 s!224843))

(declare-fun bs!458500 () Bool)

(declare-fun s!224845 () Bool)

(assert (= bs!458500 (and neg-inst!1336 s!224845)))

(declare-fun res!988311 () Bool)

(declare-fun e!1481668 () Bool)

(assert (=> bs!458500 (=> res!988311 e!1481668)))

(assert (=> bs!458500 (= res!988311 (not (= (list!10893 x!441189) (list!10893 x!441189))))))

(assert (=> bs!458500 (=> true e!1481668)))

(declare-fun b!2311940 () Bool)

(assert (=> b!2311940 (= e!1481668 (= (toValue!7 thiss!2978 x!441189) (toValue!7 thiss!2978 x!441189)))))

(assert (= (and bs!458500 (not res!988311)) b!2311940))

(assert (=> m!2739401 s!224845))

(declare-fun bs!458501 () Bool)

(declare-fun s!224847 () Bool)

(assert (= bs!458501 (and neg-inst!1336 s!224847)))

(declare-fun res!988312 () Bool)

(declare-fun e!1481669 () Bool)

(assert (=> bs!458501 (=> res!988312 e!1481669)))

(assert (=> bs!458501 (= res!988312 (not (= (list!10893 x!441190) (list!10893 x!441189))))))

(assert (=> bs!458501 (=> true e!1481669)))

(declare-fun b!2311941 () Bool)

(assert (=> b!2311941 (= e!1481669 (= (toValue!7 thiss!2978 x!441190) (toValue!7 thiss!2978 x!441189)))))

(assert (= (and bs!458501 (not res!988312)) b!2311941))

(assert (=> bs!458499 m!2739407))

(assert (=> bs!458499 m!2739401))

(assert (=> bs!458499 s!224847))

(assert (=> m!2739401 s!224845))

(declare-fun bs!458502 () Bool)

(declare-fun s!224849 () Bool)

(assert (= bs!458502 (and neg-inst!1336 s!224849)))

(declare-fun res!988313 () Bool)

(declare-fun e!1481670 () Bool)

(assert (=> bs!458502 (=> res!988313 e!1481670)))

(assert (=> bs!458502 (= res!988313 (not (= (list!10893 x!441191) (list!10893 x!441190))))))

(assert (=> bs!458502 (=> true e!1481670)))

(declare-fun b!2311942 () Bool)

(assert (=> b!2311942 (= e!1481670 (= (toValue!7 thiss!2978 x!441191) (toValue!7 thiss!2978 x!441190)))))

(assert (= (and bs!458502 (not res!988313)) b!2311942))

(declare-fun bs!458503 () Bool)

(assert (= bs!458503 (and m!2739417 m!2739415)))

(assert (=> bs!458503 m!2739409))

(assert (=> bs!458503 m!2739407))

(assert (=> bs!458503 s!224849))

(declare-fun bs!458504 () Bool)

(declare-fun s!224851 () Bool)

(assert (= bs!458504 (and neg-inst!1336 s!224851)))

(declare-fun res!988314 () Bool)

(declare-fun e!1481671 () Bool)

(assert (=> bs!458504 (=> res!988314 e!1481671)))

(assert (=> bs!458504 (= res!988314 (not (= (list!10893 x!441191) (list!10893 x!441189))))))

(assert (=> bs!458504 (=> true e!1481671)))

(declare-fun b!2311943 () Bool)

(assert (=> b!2311943 (= e!1481671 (= (toValue!7 thiss!2978 x!441191) (toValue!7 thiss!2978 x!441189)))))

(assert (= (and bs!458504 (not res!988314)) b!2311943))

(declare-fun bs!458505 () Bool)

(assert (= bs!458505 (and m!2739417 m!2739401)))

(assert (=> bs!458505 m!2739409))

(assert (=> bs!458505 m!2739401))

(assert (=> bs!458505 s!224851))

(declare-fun bs!458506 () Bool)

(declare-fun s!224853 () Bool)

(assert (= bs!458506 (and neg-inst!1336 s!224853)))

(declare-fun res!988315 () Bool)

(declare-fun e!1481672 () Bool)

(assert (=> bs!458506 (=> res!988315 e!1481672)))

(assert (=> bs!458506 (= res!988315 (not (= (list!10893 x!441191) (list!10893 x!441191))))))

(assert (=> bs!458506 (=> true e!1481672)))

(declare-fun b!2311944 () Bool)

(assert (=> b!2311944 (= e!1481672 (= (toValue!7 thiss!2978 x!441191) (toValue!7 thiss!2978 x!441191)))))

(assert (= (and bs!458506 (not res!988315)) b!2311944))

(assert (=> m!2739417 m!2739409))

(assert (=> m!2739417 m!2739409))

(assert (=> m!2739417 s!224853))

(declare-fun bs!458507 () Bool)

(declare-fun s!224855 () Bool)

(assert (= bs!458507 (and neg-inst!1336 s!224855)))

(declare-fun res!988316 () Bool)

(declare-fun e!1481673 () Bool)

(assert (=> bs!458507 (=> res!988316 e!1481673)))

(assert (=> bs!458507 (= res!988316 (not (= (list!10893 x!441190) (list!10893 x!441191))))))

(assert (=> bs!458507 (=> true e!1481673)))

(declare-fun b!2311945 () Bool)

(assert (=> b!2311945 (= e!1481673 (= (toValue!7 thiss!2978 x!441190) (toValue!7 thiss!2978 x!441191)))))

(assert (= (and bs!458507 (not res!988316)) b!2311945))

(assert (=> bs!458503 m!2739407))

(assert (=> bs!458503 m!2739409))

(assert (=> bs!458503 s!224855))

(declare-fun bs!458508 () Bool)

(declare-fun s!224857 () Bool)

(assert (= bs!458508 (and neg-inst!1336 s!224857)))

(declare-fun res!988317 () Bool)

(declare-fun e!1481674 () Bool)

(assert (=> bs!458508 (=> res!988317 e!1481674)))

(assert (=> bs!458508 (= res!988317 (not (= (list!10893 x!441189) (list!10893 x!441191))))))

(assert (=> bs!458508 (=> true e!1481674)))

(declare-fun b!2311946 () Bool)

(assert (=> b!2311946 (= e!1481674 (= (toValue!7 thiss!2978 x!441189) (toValue!7 thiss!2978 x!441191)))))

(assert (= (and bs!458508 (not res!988317)) b!2311946))

(assert (=> bs!458505 m!2739401))

(assert (=> bs!458505 m!2739409))

(assert (=> bs!458505 s!224857))

(assert (=> m!2739417 s!224853))

(declare-fun bs!458509 () Bool)

(declare-fun s!224859 () Bool)

(assert (= bs!458509 (and neg-inst!1336 s!224859)))

(declare-fun res!988318 () Bool)

(declare-fun e!1481675 () Bool)

(assert (=> bs!458509 (=> res!988318 e!1481675)))

(assert (=> bs!458509 (= res!988318 (not (= (list!10893 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!441189))) (list!10893 x!441190))))))

(assert (=> bs!458509 (=> true e!1481675)))

(declare-fun b!2311947 () Bool)

(assert (=> b!2311947 (= e!1481675 (= (toValue!7 thiss!2978 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!441189))) (toValue!7 thiss!2978 x!441190)))))

(assert (= (and bs!458509 (not res!988318)) b!2311947))

(declare-fun bs!458510 () Bool)

(assert (= bs!458510 (and m!2739405 m!2739415)))

(assert (=> bs!458510 m!2739405))

(assert (=> bs!458510 m!2739407))

(assert (=> bs!458510 s!224859))

(declare-fun bs!458511 () Bool)

(declare-fun s!224861 () Bool)

(assert (= bs!458511 (and neg-inst!1336 s!224861)))

(declare-fun res!988319 () Bool)

(declare-fun e!1481676 () Bool)

(assert (=> bs!458511 (=> res!988319 e!1481676)))

(assert (=> bs!458511 (= res!988319 (not (= (list!10893 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!441189))) (list!10893 x!441189))))))

(assert (=> bs!458511 (=> true e!1481676)))

(declare-fun b!2311948 () Bool)

(assert (=> b!2311948 (= e!1481676 (= (toValue!7 thiss!2978 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!441189))) (toValue!7 thiss!2978 x!441189)))))

(assert (= (and bs!458511 (not res!988319)) b!2311948))

(declare-fun bs!458512 () Bool)

(assert (= bs!458512 (and m!2739405 m!2739401)))

(assert (=> bs!458512 m!2739405))

(assert (=> bs!458512 m!2739401))

(assert (=> bs!458512 s!224861))

(declare-fun bs!458513 () Bool)

(declare-fun s!224863 () Bool)

(assert (= bs!458513 (and neg-inst!1336 s!224863)))

(declare-fun res!988320 () Bool)

(declare-fun e!1481677 () Bool)

(assert (=> bs!458513 (=> res!988320 e!1481677)))

(assert (=> bs!458513 (= res!988320 (not (= (list!10893 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!441189))) (list!10893 x!441191))))))

(assert (=> bs!458513 (=> true e!1481677)))

(declare-fun b!2311949 () Bool)

(assert (=> b!2311949 (= e!1481677 (= (toValue!7 thiss!2978 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!441189))) (toValue!7 thiss!2978 x!441191)))))

(assert (= (and bs!458513 (not res!988320)) b!2311949))

(declare-fun bs!458514 () Bool)

(assert (= bs!458514 (and m!2739405 m!2739417)))

(assert (=> bs!458514 m!2739405))

(assert (=> bs!458514 m!2739409))

(assert (=> bs!458514 s!224863))

(declare-fun bs!458515 () Bool)

(declare-fun s!224865 () Bool)

(assert (= bs!458515 (and neg-inst!1336 s!224865)))

(declare-fun res!988321 () Bool)

(declare-fun e!1481678 () Bool)

(assert (=> bs!458515 (=> res!988321 e!1481678)))

(assert (=> bs!458515 (= res!988321 (not (= (list!10893 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!441189))) (list!10893 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!441189))))))))

(assert (=> bs!458515 (=> true e!1481678)))

(declare-fun b!2311950 () Bool)

(assert (=> b!2311950 (= e!1481678 (= (toValue!7 thiss!2978 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!441189))) (toValue!7 thiss!2978 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!441189)))))))

(assert (= (and bs!458515 (not res!988321)) b!2311950))

(assert (=> m!2739405 s!224865))

(declare-fun bs!458516 () Bool)

(declare-fun s!224867 () Bool)

(assert (= bs!458516 (and neg-inst!1336 s!224867)))

(declare-fun res!988322 () Bool)

(declare-fun e!1481679 () Bool)

(assert (=> bs!458516 (=> res!988322 e!1481679)))

(assert (=> bs!458516 (= res!988322 (not (= (list!10893 x!441190) (list!10893 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!441189))))))))

(assert (=> bs!458516 (=> true e!1481679)))

(declare-fun b!2311951 () Bool)

(assert (=> b!2311951 (= e!1481679 (= (toValue!7 thiss!2978 x!441190) (toValue!7 thiss!2978 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!441189)))))))

(assert (= (and bs!458516 (not res!988322)) b!2311951))

(assert (=> bs!458510 m!2739407))

(assert (=> bs!458510 m!2739405))

(assert (=> bs!458510 s!224867))

(declare-fun bs!458517 () Bool)

(declare-fun s!224869 () Bool)

(assert (= bs!458517 (and neg-inst!1336 s!224869)))

(declare-fun res!988323 () Bool)

(declare-fun e!1481680 () Bool)

(assert (=> bs!458517 (=> res!988323 e!1481680)))

(assert (=> bs!458517 (= res!988323 (not (= (list!10893 x!441189) (list!10893 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!441189))))))))

(assert (=> bs!458517 (=> true e!1481680)))

(declare-fun b!2311952 () Bool)

(assert (=> b!2311952 (= e!1481680 (= (toValue!7 thiss!2978 x!441189) (toValue!7 thiss!2978 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!441189)))))))

(assert (= (and bs!458517 (not res!988323)) b!2311952))

(assert (=> bs!458512 m!2739401))

(assert (=> bs!458512 m!2739405))

(assert (=> bs!458512 s!224869))

(declare-fun bs!458518 () Bool)

(declare-fun s!224871 () Bool)

(assert (= bs!458518 (and neg-inst!1336 s!224871)))

(declare-fun res!988324 () Bool)

(declare-fun e!1481681 () Bool)

(assert (=> bs!458518 (=> res!988324 e!1481681)))

(assert (=> bs!458518 (= res!988324 (not (= (list!10893 x!441191) (list!10893 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!441189))))))))

(assert (=> bs!458518 (=> true e!1481681)))

(declare-fun b!2311953 () Bool)

(assert (=> b!2311953 (= e!1481681 (= (toValue!7 thiss!2978 x!441191) (toValue!7 thiss!2978 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!441189)))))))

(assert (= (and bs!458518 (not res!988324)) b!2311953))

(assert (=> bs!458514 m!2739409))

(assert (=> bs!458514 m!2739405))

(assert (=> bs!458514 s!224871))

(assert (=> m!2739405 s!224865))

(assert (=> m!2739397 s!224845))

(declare-fun bs!458519 () Bool)

(assert (= bs!458519 (and m!2739397 m!2739401)))

(assert (=> bs!458519 s!224845))

(declare-fun bs!458520 () Bool)

(assert (= bs!458520 (and m!2739397 m!2739415)))

(assert (=> bs!458520 s!224843))

(declare-fun bs!458521 () Bool)

(assert (= bs!458521 (and m!2739397 m!2739417)))

(assert (=> bs!458521 s!224857))

(declare-fun bs!458522 () Bool)

(assert (= bs!458522 (and m!2739397 m!2739405)))

(assert (=> bs!458522 s!224869))

(assert (=> m!2739397 s!224845))

(assert (=> bs!458520 s!224847))

(assert (=> bs!458519 s!224845))

(assert (=> bs!458521 s!224851))

(assert (=> bs!458522 s!224861))

(declare-fun bs!458523 () Bool)

(assert (= bs!458523 (and m!2739407 m!2739401 m!2739397)))

(assert (=> bs!458523 s!224847))

(assert (=> m!2739407 s!224841))

(declare-fun bs!458524 () Bool)

(assert (= bs!458524 (and m!2739407 m!2739415)))

(assert (=> bs!458524 s!224841))

(declare-fun bs!458525 () Bool)

(assert (= bs!458525 (and m!2739407 m!2739405)))

(assert (=> bs!458525 s!224867))

(declare-fun bs!458526 () Bool)

(assert (= bs!458526 (and m!2739407 m!2739417)))

(assert (=> bs!458526 s!224855))

(assert (=> bs!458525 s!224859))

(assert (=> bs!458526 s!224849))

(assert (=> bs!458523 s!224843))

(assert (=> m!2739407 s!224841))

(assert (=> bs!458524 s!224841))

(declare-fun bs!458527 () Bool)

(assert (= bs!458527 (and m!2739409 m!2739401 m!2739397)))

(assert (=> bs!458527 s!224851))

(declare-fun bs!458528 () Bool)

(assert (= bs!458528 (and m!2739409 m!2739405)))

(assert (=> bs!458528 s!224871))

(declare-fun bs!458529 () Bool)

(assert (= bs!458529 (and m!2739409 m!2739415 m!2739407)))

(assert (=> bs!458529 s!224849))

(assert (=> m!2739409 s!224853))

(declare-fun bs!458530 () Bool)

(assert (= bs!458530 (and m!2739409 m!2739417)))

(assert (=> bs!458530 s!224853))

(assert (=> bs!458527 s!224857))

(assert (=> bs!458528 s!224863))

(assert (=> bs!458529 s!224855))

(assert (=> m!2739409 s!224853))

(assert (=> bs!458530 s!224853))

(declare-fun bs!458531 () Bool)

(assert (= bs!458531 (and neg-inst!1336 b!2311924)))

(assert (=> bs!458531 (= true inst!1337)))

(declare-fun res!988305 () Bool)

(declare-fun e!1481660 () Bool)

(assert (=> start!227990 (=> res!988305 e!1481660)))

(declare-fun lambda!86234 () Int)

(declare-fun Forall!1113 (Int) Bool)

(assert (=> start!227990 (= res!988305 (not (Forall!1113 lambda!86234)))))

(assert (=> start!227990 (= (Forall!1113 lambda!86234) inst!1336)))

(assert (=> start!227990 (not e!1481660)))

(assert (=> start!227990 true))

(declare-fun e!1481659 () Bool)

(assert (=> b!2311923 (= e!1481660 e!1481659)))

(declare-fun res!988307 () Bool)

(assert (=> b!2311923 (=> res!988307 e!1481659)))

(declare-fun lambda!86235 () Int)

(declare-fun lambda!86236 () Int)

(declare-fun semiInverseModEq!1804 (Int Int) Bool)

(assert (=> b!2311923 (= res!988307 (not (semiInverseModEq!1804 lambda!86235 lambda!86236)))))

(assert (=> b!2311923 (= (semiInverseModEq!1804 lambda!86235 lambda!86236) (Forall!1113 lambda!86234))))

(declare-fun e!1481661 () Bool)

(assert (=> b!2311924 (= e!1481659 e!1481661)))

(declare-fun res!988306 () Bool)

(assert (=> b!2311924 (=> res!988306 e!1481661)))

(declare-fun lambda!86237 () Int)

(declare-fun Forall2!726 (Int) Bool)

(assert (=> b!2311924 (= res!988306 (not (Forall2!726 lambda!86237)))))

(assert (=> b!2311924 (= (Forall2!726 lambda!86237) inst!1337)))

(declare-fun b!2311925 () Bool)

(declare-fun equivClasses!1719 (Int Int) Bool)

(assert (=> b!2311925 (= e!1481661 (equivClasses!1719 lambda!86235 lambda!86236))))

(assert (=> b!2311925 (= (equivClasses!1719 lambda!86235 lambda!86236) (Forall2!726 lambda!86237))))

(assert (= neg-inst!1337 inst!1336))

(assert (= (and start!227990 (not res!988305)) b!2311923))

(assert (= (and b!2311923 (not res!988307)) b!2311924))

(assert (= neg-inst!1336 inst!1337))

(assert (= (and b!2311924 (not res!988306)) b!2311925))

(declare-fun m!2739423 () Bool)

(assert (=> start!227990 m!2739423))

(assert (=> start!227990 m!2739423))

(declare-fun m!2739425 () Bool)

(assert (=> b!2311923 m!2739425))

(assert (=> b!2311923 m!2739425))

(assert (=> b!2311923 m!2739423))

(declare-fun m!2739427 () Bool)

(assert (=> b!2311924 m!2739427))

(assert (=> b!2311924 m!2739427))

(declare-fun m!2739429 () Bool)

(assert (=> b!2311925 m!2739429))

(assert (=> b!2311925 m!2739429))

(assert (=> b!2311925 m!2739427))

(check-sat (not bs!458495) (not b!2311952) (not bs!458506) (not bs!458511) (not bs!458504) (not b!2311949) (not bs!458515) (not bs!458497) (not bs!458513) (not bs!458501) (not b!2311951) (not b!2311947) (not b!2311934) (not b!2311937) (not b!2311944) (not bs!458507) (not bs!458500) (not b!2311939) (not b!2311923) (not bs!458508) (not b!2311946) (not bs!458498) (not b!2311925) (not b!2311935) (not b!2311941) (not b!2311950) (not b!2311924) (not b!2311940) (not bs!458518) (not b!2311938) (not bs!458502) (not b!2311948) (not b!2311945) (not start!227990) (not b!2311936) (not b!2311943) (not bs!458516) (not bs!458509) (not b!2311953) (not b!2311942) (not bs!458517))
(check-sat)
