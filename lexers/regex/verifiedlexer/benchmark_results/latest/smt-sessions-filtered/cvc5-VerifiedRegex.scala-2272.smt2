; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!110988 () Bool)

(assert start!110988)

(assert (=> start!110988 true))

(declare-fun b!1257619 () Bool)

(assert (=> b!1257619 true))

(assert (=> b!1257619 true))

(declare-fun b!1257620 () Bool)

(assert (=> b!1257620 true))

(declare-fun b!1257629 () Bool)

(declare-fun e!800473 () Bool)

(declare-datatypes ((List!12644 0))(
  ( (Nil!12578) (Cons!12578 (h!17979 (_ BitVec 16)) (t!115808 List!12644)) )
))
(declare-datatypes ((IArray!8261 0))(
  ( (IArray!8262 (innerList!4188 List!12644)) )
))
(declare-datatypes ((Conc!4128 0))(
  ( (Node!4128 (left!10886 Conc!4128) (right!11216 Conc!4128) (csize!8486 Int) (cheight!4339 Int)) (Leaf!6401 (xs!6839 IArray!8261) (csize!8487 Int)) (Empty!4128) )
))
(declare-datatypes ((BalanceConc!8196 0))(
  ( (BalanceConc!8197 (c!208837 Conc!4128)) )
))
(declare-fun x!244351 () BalanceConc!8196)

(declare-fun tp!370657 () Bool)

(declare-fun inv!16954 (Conc!4128) Bool)

(assert (=> b!1257629 (= e!800473 (and (inv!16954 (c!208837 x!244351)) tp!370657))))

(declare-fun inst!916 () Bool)

(declare-datatypes ((KeywordValueInjection!130 0))(
  ( (KeywordValueInjection!131) )
))
(declare-fun thiss!4594 () KeywordValueInjection!130)

(declare-fun inv!16955 (BalanceConc!8196) Bool)

(declare-fun list!4691 (BalanceConc!8196) List!12644)

(declare-datatypes ((TokenValue!2244 0))(
  ( (FloatLiteralValue!4488 (text!16153 List!12644)) (TokenValueExt!2243 (__x!8211 Int)) (Broken!11220 (value!70702 List!12644)) (Object!2309) (End!2244) (Def!2244) (Underscore!2244) (Match!2244) (Else!2244) (Error!2244) (Case!2244) (If!2244) (Extends!2244) (Abstract!2244) (Class!2244) (Val!2244) (DelimiterValue!4488 (del!2304 List!12644)) (KeywordValue!2250 (value!70703 List!12644)) (CommentValue!4488 (value!70704 List!12644)) (WhitespaceValue!4488 (value!70705 List!12644)) (IndentationValue!2244 (value!70706 List!12644)) (String!15469) (Int32!2244) (Broken!11221 (value!70707 List!12644)) (Boolean!2245) (Unit!18864) (OperatorValue!2247 (op!2304 List!12644)) (IdentifierValue!4488 (value!70708 List!12644)) (IdentifierValue!4489 (value!70709 List!12644)) (WhitespaceValue!4489 (value!70710 List!12644)) (True!4488) (False!4488) (Broken!11222 (value!70711 List!12644)) (Broken!11223 (value!70712 List!12644)) (True!4489) (RightBrace!2244) (RightBracket!2244) (Colon!2244) (Null!2244) (Comma!2244) (LeftBracket!2244) (False!4489) (LeftBrace!2244) (ImaginaryLiteralValue!2244 (text!16154 List!12644)) (StringLiteralValue!6732 (value!70713 List!12644)) (EOFValue!2244 (value!70714 List!12644)) (IdentValue!2244 (value!70715 List!12644)) (DelimiterValue!4489 (value!70716 List!12644)) (DedentValue!2244 (value!70717 List!12644)) (NewLineValue!2244 (value!70718 List!12644)) (IntegerValue!6732 (value!70719 (_ BitVec 32)) (text!16155 List!12644)) (IntegerValue!6733 (value!70720 Int) (text!16156 List!12644)) (Times!2244) (Or!2244) (Equal!2244) (Minus!2244) (Broken!11224 (value!70721 List!12644)) (And!2244) (Div!2244) (LessEqual!2244) (Mod!2244) (Concat!5718) (Not!2244) (Plus!2244) (SpaceValue!2244 (value!70722 List!12644)) (IntegerValue!6734 (value!70723 Int) (text!16157 List!12644)) (StringLiteralValue!6733 (text!16158 List!12644)) (FloatLiteralValue!4489 (text!16159 List!12644)) (BytesLiteralValue!2244 (value!70724 List!12644)) (CommentValue!4489 (value!70725 List!12644)) (StringLiteralValue!6734 (value!70726 List!12644)) (ErrorTokenValue!2244 (msg!2305 List!12644)) )
))
(declare-fun toCharacters!20 (KeywordValueInjection!130 TokenValue!2244) BalanceConc!8196)

(declare-fun toValue!27 (KeywordValueInjection!130 BalanceConc!8196) TokenValue!2244)

(assert (=> start!110988 (= inst!916 (=> (and (inv!16955 x!244351) e!800473) (= (list!4691 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351))) (list!4691 x!244351))))))

(assert (= start!110988 b!1257629))

(declare-fun m!1415807 () Bool)

(assert (=> b!1257629 m!1415807))

(declare-fun m!1415809 () Bool)

(assert (=> start!110988 m!1415809))

(declare-fun m!1415811 () Bool)

(assert (=> start!110988 m!1415811))

(assert (=> start!110988 m!1415809))

(assert (=> start!110988 m!1415811))

(declare-fun m!1415813 () Bool)

(assert (=> start!110988 m!1415813))

(declare-fun m!1415815 () Bool)

(assert (=> start!110988 m!1415815))

(declare-fun m!1415817 () Bool)

(assert (=> start!110988 m!1415817))

(declare-fun res!556755 () Bool)

(declare-fun e!800475 () Bool)

(assert (=> b!1257620 (=> res!556755 e!800475)))

(declare-fun x!244352 () BalanceConc!8196)

(declare-fun x!244353 () BalanceConc!8196)

(assert (=> b!1257620 (= res!556755 (not (= (list!4691 x!244352) (list!4691 x!244353))))))

(declare-fun inst!917 () Bool)

(declare-fun e!800476 () Bool)

(declare-fun e!800474 () Bool)

(assert (=> b!1257620 (= inst!917 (=> (and (inv!16955 x!244352) e!800476 (inv!16955 x!244353) e!800474) e!800475))))

(declare-fun b!1257630 () Bool)

(assert (=> b!1257630 (= e!800475 (= (toValue!27 thiss!4594 x!244352) (toValue!27 thiss!4594 x!244353)))))

(declare-fun b!1257631 () Bool)

(declare-fun tp!370658 () Bool)

(assert (=> b!1257631 (= e!800476 (and (inv!16954 (c!208837 x!244352)) tp!370658))))

(declare-fun b!1257632 () Bool)

(declare-fun tp!370659 () Bool)

(assert (=> b!1257632 (= e!800474 (and (inv!16954 (c!208837 x!244353)) tp!370659))))

(assert (= (and b!1257620 (not res!556755)) b!1257630))

(assert (= b!1257620 b!1257631))

(assert (= b!1257620 b!1257632))

(declare-fun m!1415819 () Bool)

(assert (=> b!1257620 m!1415819))

(declare-fun m!1415821 () Bool)

(assert (=> b!1257620 m!1415821))

(declare-fun m!1415823 () Bool)

(assert (=> b!1257620 m!1415823))

(declare-fun m!1415825 () Bool)

(assert (=> b!1257620 m!1415825))

(declare-fun m!1415827 () Bool)

(assert (=> b!1257630 m!1415827))

(declare-fun m!1415829 () Bool)

(assert (=> b!1257630 m!1415829))

(declare-fun m!1415831 () Bool)

(assert (=> b!1257631 m!1415831))

(declare-fun m!1415833 () Bool)

(assert (=> b!1257632 m!1415833))

(declare-fun bs!290431 () Bool)

(declare-fun neg-inst!917 () Bool)

(declare-fun s!183493 () Bool)

(assert (= bs!290431 (and neg-inst!917 s!183493)))

(assert (=> bs!290431 (=> true (= (list!4691 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351))) (list!4691 x!244351)))))

(assert (=> m!1415809 m!1415811))

(assert (=> m!1415809 m!1415813))

(assert (=> m!1415809 m!1415817))

(assert (=> m!1415809 s!183493))

(assert (=> m!1415817 s!183493))

(declare-fun bs!290432 () Bool)

(assert (= bs!290432 (and neg-inst!917 start!110988)))

(assert (=> bs!290432 (= true inst!916)))

(declare-fun bs!290433 () Bool)

(declare-fun neg-inst!916 () Bool)

(declare-fun s!183495 () Bool)

(assert (= bs!290433 (and neg-inst!916 s!183495)))

(declare-fun res!556756 () Bool)

(declare-fun e!800477 () Bool)

(assert (=> bs!290433 (=> res!556756 e!800477)))

(assert (=> bs!290433 (= res!556756 (not (= (list!4691 x!244351) (list!4691 x!244351))))))

(assert (=> bs!290433 (=> true e!800477)))

(declare-fun b!1257633 () Bool)

(assert (=> b!1257633 (= e!800477 (= (toValue!27 thiss!4594 x!244351) (toValue!27 thiss!4594 x!244351)))))

(assert (= (and bs!290433 (not res!556756)) b!1257633))

(assert (=> m!1415809 m!1415817))

(assert (=> m!1415809 m!1415817))

(assert (=> m!1415809 s!183495))

(assert (=> m!1415809 s!183495))

(declare-fun bs!290434 () Bool)

(assert (= bs!290434 (and m!1415817 m!1415809)))

(assert (=> bs!290434 s!183495))

(assert (=> m!1415817 s!183495))

(assert (=> bs!290434 s!183495))

(assert (=> m!1415817 s!183495))

(declare-fun bs!290435 () Bool)

(declare-fun s!183497 () Bool)

(assert (= bs!290435 (and neg-inst!916 s!183497)))

(declare-fun res!556757 () Bool)

(declare-fun e!800478 () Bool)

(assert (=> bs!290435 (=> res!556757 e!800478)))

(assert (=> bs!290435 (= res!556757 (not (= (list!4691 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351))) (list!4691 x!244351))))))

(assert (=> bs!290435 (=> true e!800478)))

(declare-fun b!1257634 () Bool)

(assert (=> b!1257634 (= e!800478 (= (toValue!27 thiss!4594 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351))) (toValue!27 thiss!4594 x!244351)))))

(assert (= (and bs!290435 (not res!556757)) b!1257634))

(declare-fun bs!290436 () Bool)

(assert (= bs!290436 (and m!1415813 m!1415809 m!1415817)))

(assert (=> bs!290436 m!1415813))

(assert (=> bs!290436 m!1415817))

(assert (=> bs!290436 s!183497))

(declare-fun bs!290437 () Bool)

(declare-fun s!183499 () Bool)

(assert (= bs!290437 (and neg-inst!916 s!183499)))

(declare-fun res!556758 () Bool)

(declare-fun e!800479 () Bool)

(assert (=> bs!290437 (=> res!556758 e!800479)))

(assert (=> bs!290437 (= res!556758 (not (= (list!4691 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351))) (list!4691 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351))))))))

(assert (=> bs!290437 (=> true e!800479)))

(declare-fun b!1257635 () Bool)

(assert (=> b!1257635 (= e!800479 (= (toValue!27 thiss!4594 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351))) (toValue!27 thiss!4594 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351)))))))

(assert (= (and bs!290437 (not res!556758)) b!1257635))

(assert (=> m!1415813 s!183499))

(declare-fun bs!290438 () Bool)

(declare-fun s!183501 () Bool)

(assert (= bs!290438 (and neg-inst!916 s!183501)))

(declare-fun res!556759 () Bool)

(declare-fun e!800480 () Bool)

(assert (=> bs!290438 (=> res!556759 e!800480)))

(assert (=> bs!290438 (= res!556759 (not (= (list!4691 x!244351) (list!4691 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351))))))))

(assert (=> bs!290438 (=> true e!800480)))

(declare-fun b!1257636 () Bool)

(assert (=> b!1257636 (= e!800480 (= (toValue!27 thiss!4594 x!244351) (toValue!27 thiss!4594 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351)))))))

(assert (= (and bs!290438 (not res!556759)) b!1257636))

(assert (=> bs!290436 m!1415817))

(assert (=> bs!290436 m!1415813))

(assert (=> bs!290436 s!183501))

(assert (=> m!1415813 s!183499))

(declare-fun bs!290439 () Bool)

(declare-fun s!183503 () Bool)

(assert (= bs!290439 (and neg-inst!916 s!183503)))

(declare-fun res!556760 () Bool)

(declare-fun e!800481 () Bool)

(assert (=> bs!290439 (=> res!556760 e!800481)))

(assert (=> bs!290439 (= res!556760 (not (= (list!4691 x!244352) (list!4691 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351))))))))

(assert (=> bs!290439 (=> true e!800481)))

(declare-fun b!1257637 () Bool)

(assert (=> b!1257637 (= e!800481 (= (toValue!27 thiss!4594 x!244352) (toValue!27 thiss!4594 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351)))))))

(assert (= (and bs!290439 (not res!556760)) b!1257637))

(declare-fun bs!290440 () Bool)

(assert (= bs!290440 (and m!1415819 m!1415813)))

(assert (=> bs!290440 m!1415819))

(assert (=> bs!290440 m!1415813))

(assert (=> bs!290440 s!183503))

(declare-fun bs!290441 () Bool)

(declare-fun s!183505 () Bool)

(assert (= bs!290441 (and neg-inst!916 s!183505)))

(declare-fun res!556761 () Bool)

(declare-fun e!800482 () Bool)

(assert (=> bs!290441 (=> res!556761 e!800482)))

(assert (=> bs!290441 (= res!556761 (not (= (list!4691 x!244352) (list!4691 x!244351))))))

(assert (=> bs!290441 (=> true e!800482)))

(declare-fun b!1257638 () Bool)

(assert (=> b!1257638 (= e!800482 (= (toValue!27 thiss!4594 x!244352) (toValue!27 thiss!4594 x!244351)))))

(assert (= (and bs!290441 (not res!556761)) b!1257638))

(declare-fun bs!290442 () Bool)

(assert (= bs!290442 (and m!1415819 m!1415809 m!1415817)))

(assert (=> bs!290442 m!1415819))

(assert (=> bs!290442 m!1415817))

(assert (=> bs!290442 s!183505))

(declare-fun bs!290443 () Bool)

(declare-fun s!183507 () Bool)

(assert (= bs!290443 (and neg-inst!916 s!183507)))

(declare-fun res!556762 () Bool)

(declare-fun e!800483 () Bool)

(assert (=> bs!290443 (=> res!556762 e!800483)))

(assert (=> bs!290443 (= res!556762 (not (= (list!4691 x!244352) (list!4691 x!244352))))))

(assert (=> bs!290443 (=> true e!800483)))

(declare-fun b!1257639 () Bool)

(assert (=> b!1257639 (= e!800483 (= (toValue!27 thiss!4594 x!244352) (toValue!27 thiss!4594 x!244352)))))

(assert (= (and bs!290443 (not res!556762)) b!1257639))

(assert (=> m!1415819 s!183507))

(declare-fun bs!290444 () Bool)

(declare-fun s!183509 () Bool)

(assert (= bs!290444 (and neg-inst!916 s!183509)))

(declare-fun res!556763 () Bool)

(declare-fun e!800484 () Bool)

(assert (=> bs!290444 (=> res!556763 e!800484)))

(assert (=> bs!290444 (= res!556763 (not (= (list!4691 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351))) (list!4691 x!244352))))))

(assert (=> bs!290444 (=> true e!800484)))

(declare-fun b!1257640 () Bool)

(assert (=> b!1257640 (= e!800484 (= (toValue!27 thiss!4594 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351))) (toValue!27 thiss!4594 x!244352)))))

(assert (= (and bs!290444 (not res!556763)) b!1257640))

(assert (=> bs!290440 m!1415813))

(assert (=> bs!290440 m!1415819))

(assert (=> bs!290440 s!183509))

(declare-fun bs!290445 () Bool)

(declare-fun s!183511 () Bool)

(assert (= bs!290445 (and neg-inst!916 s!183511)))

(declare-fun res!556764 () Bool)

(declare-fun e!800485 () Bool)

(assert (=> bs!290445 (=> res!556764 e!800485)))

(assert (=> bs!290445 (= res!556764 (not (= (list!4691 x!244351) (list!4691 x!244352))))))

(assert (=> bs!290445 (=> true e!800485)))

(declare-fun b!1257641 () Bool)

(assert (=> b!1257641 (= e!800485 (= (toValue!27 thiss!4594 x!244351) (toValue!27 thiss!4594 x!244352)))))

(assert (= (and bs!290445 (not res!556764)) b!1257641))

(assert (=> bs!290442 m!1415817))

(assert (=> bs!290442 m!1415819))

(assert (=> bs!290442 s!183511))

(assert (=> m!1415819 s!183507))

(declare-fun bs!290446 () Bool)

(declare-fun s!183513 () Bool)

(assert (= bs!290446 (and neg-inst!916 s!183513)))

(declare-fun res!556765 () Bool)

(declare-fun e!800486 () Bool)

(assert (=> bs!290446 (=> res!556765 e!800486)))

(assert (=> bs!290446 (= res!556765 (not (= (list!4691 x!244353) (list!4691 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351))))))))

(assert (=> bs!290446 (=> true e!800486)))

(declare-fun b!1257642 () Bool)

(assert (=> b!1257642 (= e!800486 (= (toValue!27 thiss!4594 x!244353) (toValue!27 thiss!4594 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351)))))))

(assert (= (and bs!290446 (not res!556765)) b!1257642))

(declare-fun bs!290447 () Bool)

(assert (= bs!290447 (and m!1415829 m!1415813)))

(assert (=> bs!290447 m!1415821))

(assert (=> bs!290447 m!1415813))

(assert (=> bs!290447 s!183513))

(declare-fun bs!290448 () Bool)

(declare-fun s!183515 () Bool)

(assert (= bs!290448 (and neg-inst!916 s!183515)))

(declare-fun res!556766 () Bool)

(declare-fun e!800487 () Bool)

(assert (=> bs!290448 (=> res!556766 e!800487)))

(assert (=> bs!290448 (= res!556766 (not (= (list!4691 x!244353) (list!4691 x!244351))))))

(assert (=> bs!290448 (=> true e!800487)))

(declare-fun b!1257643 () Bool)

(assert (=> b!1257643 (= e!800487 (= (toValue!27 thiss!4594 x!244353) (toValue!27 thiss!4594 x!244351)))))

(assert (= (and bs!290448 (not res!556766)) b!1257643))

(declare-fun bs!290449 () Bool)

(assert (= bs!290449 (and m!1415829 m!1415809 m!1415817)))

(assert (=> bs!290449 m!1415821))

(assert (=> bs!290449 m!1415817))

(assert (=> bs!290449 s!183515))

(declare-fun bs!290450 () Bool)

(declare-fun s!183517 () Bool)

(assert (= bs!290450 (and neg-inst!916 s!183517)))

(declare-fun res!556767 () Bool)

(declare-fun e!800488 () Bool)

(assert (=> bs!290450 (=> res!556767 e!800488)))

(assert (=> bs!290450 (= res!556767 (not (= (list!4691 x!244353) (list!4691 x!244352))))))

(assert (=> bs!290450 (=> true e!800488)))

(declare-fun b!1257644 () Bool)

(assert (=> b!1257644 (= e!800488 (= (toValue!27 thiss!4594 x!244353) (toValue!27 thiss!4594 x!244352)))))

(assert (= (and bs!290450 (not res!556767)) b!1257644))

(declare-fun bs!290451 () Bool)

(assert (= bs!290451 (and m!1415829 m!1415819)))

(assert (=> bs!290451 m!1415821))

(assert (=> bs!290451 m!1415819))

(assert (=> bs!290451 s!183517))

(declare-fun bs!290452 () Bool)

(declare-fun s!183519 () Bool)

(assert (= bs!290452 (and neg-inst!916 s!183519)))

(declare-fun res!556768 () Bool)

(declare-fun e!800489 () Bool)

(assert (=> bs!290452 (=> res!556768 e!800489)))

(assert (=> bs!290452 (= res!556768 (not (= (list!4691 x!244353) (list!4691 x!244353))))))

(assert (=> bs!290452 (=> true e!800489)))

(declare-fun b!1257645 () Bool)

(assert (=> b!1257645 (= e!800489 (= (toValue!27 thiss!4594 x!244353) (toValue!27 thiss!4594 x!244353)))))

(assert (= (and bs!290452 (not res!556768)) b!1257645))

(assert (=> m!1415829 m!1415821))

(assert (=> m!1415829 m!1415821))

(assert (=> m!1415829 s!183519))

(declare-fun bs!290453 () Bool)

(declare-fun s!183521 () Bool)

(assert (= bs!290453 (and neg-inst!916 s!183521)))

(declare-fun res!556769 () Bool)

(declare-fun e!800490 () Bool)

(assert (=> bs!290453 (=> res!556769 e!800490)))

(assert (=> bs!290453 (= res!556769 (not (= (list!4691 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351))) (list!4691 x!244353))))))

(assert (=> bs!290453 (=> true e!800490)))

(declare-fun b!1257646 () Bool)

(assert (=> b!1257646 (= e!800490 (= (toValue!27 thiss!4594 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351))) (toValue!27 thiss!4594 x!244353)))))

(assert (= (and bs!290453 (not res!556769)) b!1257646))

(assert (=> bs!290447 m!1415813))

(assert (=> bs!290447 m!1415821))

(assert (=> bs!290447 s!183521))

(declare-fun bs!290454 () Bool)

(declare-fun s!183523 () Bool)

(assert (= bs!290454 (and neg-inst!916 s!183523)))

(declare-fun res!556770 () Bool)

(declare-fun e!800491 () Bool)

(assert (=> bs!290454 (=> res!556770 e!800491)))

(assert (=> bs!290454 (= res!556770 (not (= (list!4691 x!244351) (list!4691 x!244353))))))

(assert (=> bs!290454 (=> true e!800491)))

(declare-fun b!1257647 () Bool)

(assert (=> b!1257647 (= e!800491 (= (toValue!27 thiss!4594 x!244351) (toValue!27 thiss!4594 x!244353)))))

(assert (= (and bs!290454 (not res!556770)) b!1257647))

(assert (=> bs!290449 m!1415817))

(assert (=> bs!290449 m!1415821))

(assert (=> bs!290449 s!183523))

(declare-fun bs!290455 () Bool)

(declare-fun s!183525 () Bool)

(assert (= bs!290455 (and neg-inst!916 s!183525)))

(declare-fun res!556771 () Bool)

(declare-fun e!800492 () Bool)

(assert (=> bs!290455 (=> res!556771 e!800492)))

(assert (=> bs!290455 (= res!556771 (not (= (list!4691 x!244352) (list!4691 x!244353))))))

(assert (=> bs!290455 (=> true e!800492)))

(declare-fun b!1257648 () Bool)

(assert (=> b!1257648 (= e!800492 (= (toValue!27 thiss!4594 x!244352) (toValue!27 thiss!4594 x!244353)))))

(assert (= (and bs!290455 (not res!556771)) b!1257648))

(assert (=> bs!290451 m!1415819))

(assert (=> bs!290451 m!1415821))

(assert (=> bs!290451 s!183525))

(assert (=> m!1415829 s!183519))

(declare-fun bs!290456 () Bool)

(assert (= bs!290456 (and m!1415827 m!1415819)))

(assert (=> bs!290456 s!183507))

(declare-fun bs!290457 () Bool)

(assert (= bs!290457 (and m!1415827 m!1415809 m!1415817)))

(assert (=> bs!290457 s!183505))

(declare-fun bs!290458 () Bool)

(assert (= bs!290458 (and m!1415827 m!1415813)))

(assert (=> bs!290458 s!183503))

(declare-fun bs!290459 () Bool)

(assert (= bs!290459 (and m!1415827 m!1415829)))

(assert (=> bs!290459 s!183525))

(assert (=> m!1415827 s!183507))

(assert (=> bs!290456 s!183507))

(assert (=> bs!290459 s!183517))

(assert (=> bs!290458 s!183509))

(assert (=> bs!290457 s!183511))

(assert (=> m!1415827 s!183507))

(declare-fun bs!290460 () Bool)

(assert (= bs!290460 (and m!1415821 m!1415813)))

(assert (=> bs!290460 s!183513))

(declare-fun bs!290461 () Bool)

(assert (= bs!290461 (and m!1415821 m!1415829)))

(assert (=> bs!290461 s!183519))

(declare-fun bs!290462 () Bool)

(assert (= bs!290462 (and m!1415821 m!1415819 m!1415827)))

(assert (=> bs!290462 s!183517))

(declare-fun bs!290463 () Bool)

(assert (= bs!290463 (and m!1415821 m!1415809 m!1415817)))

(assert (=> bs!290463 s!183515))

(assert (=> m!1415821 s!183519))

(assert (=> bs!290462 s!183525))

(assert (=> bs!290463 s!183523))

(assert (=> bs!290461 s!183519))

(assert (=> m!1415821 s!183519))

(assert (=> bs!290460 s!183521))

(declare-fun bs!290464 () Bool)

(assert (= bs!290464 (and neg-inst!916 b!1257620)))

(assert (=> bs!290464 (= true inst!917)))

(declare-fun res!556754 () Bool)

(declare-fun e!800472 () Bool)

(assert (=> start!110988 (=> res!556754 e!800472)))

(declare-fun lambda!49615 () Int)

(declare-fun Forall!477 (Int) Bool)

(assert (=> start!110988 (= res!556754 (not (Forall!477 lambda!49615)))))

(assert (=> start!110988 (= (Forall!477 lambda!49615) inst!916)))

(assert (=> start!110988 (not e!800472)))

(assert (=> start!110988 true))

(declare-fun e!800471 () Bool)

(assert (=> b!1257619 (= e!800472 e!800471)))

(declare-fun res!556753 () Bool)

(assert (=> b!1257619 (=> res!556753 e!800471)))

(declare-fun lambda!49616 () Int)

(declare-fun lambda!49617 () Int)

(declare-fun semiInverseModEq!809 (Int Int) Bool)

(assert (=> b!1257619 (= res!556753 (not (semiInverseModEq!809 lambda!49616 lambda!49617)))))

(assert (=> b!1257619 (= (semiInverseModEq!809 lambda!49616 lambda!49617) (Forall!477 lambda!49615))))

(declare-fun lambda!49618 () Int)

(declare-fun Forall2!379 (Int) Bool)

(assert (=> b!1257620 (= e!800471 (Forall2!379 lambda!49618))))

(assert (=> b!1257620 (= (Forall2!379 lambda!49618) inst!917)))

(assert (= neg-inst!917 inst!916))

(assert (= (and start!110988 (not res!556754)) b!1257619))

(assert (= (and b!1257619 (not res!556753)) b!1257620))

(assert (= neg-inst!916 inst!917))

(declare-fun m!1415835 () Bool)

(assert (=> start!110988 m!1415835))

(assert (=> start!110988 m!1415835))

(declare-fun m!1415837 () Bool)

(assert (=> b!1257619 m!1415837))

(assert (=> b!1257619 m!1415837))

(assert (=> b!1257619 m!1415835))

(declare-fun m!1415839 () Bool)

(assert (=> b!1257620 m!1415839))

(assert (=> b!1257620 m!1415839))

(push 1)

(assert (not bs!290441))

(assert (not b!1257644))

(assert (not bs!290450))

(assert (not b!1257630))

(assert (not b!1257648))

(assert (not bs!290438))

(assert (not bs!290446))

(assert (not bs!290433))

(assert (not b!1257637))

(assert (not bs!290437))

(assert (not bs!290448))

(assert (not b!1257634))

(assert (not b!1257641))

(assert (not b!1257640))

(assert (not b!1257619))

(assert (not bs!290452))

(assert (not bs!290455))

(assert (not b!1257647))

(assert (not bs!290444))

(assert (not b!1257620))

(assert (not b!1257638))

(assert (not bs!290439))

(assert (not b!1257643))

(assert (not b!1257639))

(assert (not bs!290443))

(assert (not bs!290435))

(assert (not start!110988))

(assert (not b!1257629))

(assert (not b!1257646))

(assert (not bs!290454))

(assert (not b!1257633))

(assert (not bs!290445))

(assert (not b!1257631))

(assert (not b!1257636))

(assert (not b!1257632))

(assert (not b!1257635))

(assert (not b!1257642))

(assert (not bs!290453))

(assert (not b!1257645))

(assert (not bs!290431))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!355391 () Bool)

(declare-fun list!4693 (Conc!4128) List!12644)

(assert (=> d!355391 (= (list!4691 x!244351) (list!4693 (c!208837 x!244351)))))

(declare-fun bs!290500 () Bool)

(assert (= bs!290500 d!355391))

(declare-fun m!1415875 () Bool)

(assert (=> bs!290500 m!1415875))

(assert (=> bs!290445 d!355391))

(declare-fun d!355393 () Bool)

(assert (=> d!355393 (= (list!4691 x!244352) (list!4693 (c!208837 x!244352)))))

(declare-fun bs!290501 () Bool)

(assert (= bs!290501 d!355393))

(declare-fun m!1415877 () Bool)

(assert (=> bs!290501 m!1415877))

(assert (=> bs!290445 d!355393))

(declare-fun d!355395 () Bool)

(declare-fun efficientList!174 (BalanceConc!8196) List!12644)

(assert (=> d!355395 (= (toValue!27 thiss!4594 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351))) (KeywordValue!2250 (efficientList!174 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351)))))))

(declare-fun bs!290502 () Bool)

(assert (= bs!290502 d!355395))

(assert (=> bs!290502 m!1415811))

(declare-fun m!1415879 () Bool)

(assert (=> bs!290502 m!1415879))

(assert (=> b!1257634 d!355395))

(declare-fun d!355397 () Bool)

(assert (=> d!355397 (= (toValue!27 thiss!4594 x!244351) (KeywordValue!2250 (efficientList!174 x!244351)))))

(declare-fun bs!290503 () Bool)

(assert (= bs!290503 d!355397))

(declare-fun m!1415881 () Bool)

(assert (=> bs!290503 m!1415881))

(assert (=> b!1257634 d!355397))

(declare-fun d!355399 () Bool)

(assert (=> d!355399 (= (toValue!27 thiss!4594 x!244352) (KeywordValue!2250 (efficientList!174 x!244352)))))

(declare-fun bs!290504 () Bool)

(assert (= bs!290504 d!355399))

(declare-fun m!1415883 () Bool)

(assert (=> bs!290504 m!1415883))

(assert (=> b!1257637 d!355399))

(assert (=> b!1257637 d!355395))

(declare-fun d!355401 () Bool)

(assert (=> d!355401 (= (list!4691 x!244353) (list!4693 (c!208837 x!244353)))))

(declare-fun bs!290505 () Bool)

(assert (= bs!290505 d!355401))

(declare-fun m!1415885 () Bool)

(assert (=> bs!290505 m!1415885))

(assert (=> bs!290450 d!355401))

(assert (=> bs!290450 d!355393))

(assert (=> b!1257647 d!355397))

(declare-fun d!355403 () Bool)

(assert (=> d!355403 (= (toValue!27 thiss!4594 x!244353) (KeywordValue!2250 (efficientList!174 x!244353)))))

(declare-fun bs!290506 () Bool)

(assert (= bs!290506 d!355403))

(declare-fun m!1415887 () Bool)

(assert (=> bs!290506 m!1415887))

(assert (=> b!1257647 d!355403))

(assert (=> b!1257640 d!355395))

(assert (=> b!1257640 d!355399))

(declare-fun d!355405 () Bool)

(assert (=> d!355405 (= (list!4691 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351))) (list!4693 (c!208837 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351)))))))

(declare-fun bs!290507 () Bool)

(assert (= bs!290507 d!355405))

(declare-fun m!1415889 () Bool)

(assert (=> bs!290507 m!1415889))

(assert (=> bs!290435 d!355405))

(assert (=> bs!290435 d!355391))

(assert (=> bs!290454 d!355391))

(assert (=> bs!290454 d!355401))

(assert (=> b!1257643 d!355403))

(assert (=> b!1257643 d!355397))

(assert (=> bs!290439 d!355393))

(assert (=> bs!290439 d!355405))

(assert (=> b!1257646 d!355395))

(assert (=> b!1257646 d!355403))

(assert (=> b!1257633 d!355397))

(assert (=> bs!290444 d!355405))

(assert (=> bs!290444 d!355393))

(assert (=> bs!290448 d!355401))

(assert (=> bs!290448 d!355391))

(assert (=> b!1257636 d!355397))

(assert (=> b!1257636 d!355395))

(assert (=> bs!290453 d!355405))

(assert (=> bs!290453 d!355401))

(assert (=> bs!290433 d!355391))

(assert (=> b!1257639 d!355399))

(assert (=> bs!290438 d!355391))

(assert (=> bs!290438 d!355405))

(assert (=> b!1257642 d!355403))

(assert (=> b!1257642 d!355395))

(assert (=> bs!290443 d!355393))

(assert (=> b!1257635 d!355395))

(assert (=> b!1257645 d!355403))

(assert (=> b!1257638 d!355399))

(assert (=> b!1257638 d!355397))

(assert (=> b!1257648 d!355399))

(assert (=> b!1257648 d!355403))

(assert (=> bs!290452 d!355401))

(assert (=> bs!290446 d!355401))

(assert (=> bs!290446 d!355405))

(assert (=> bs!290437 d!355405))

(assert (=> bs!290441 d!355393))

(assert (=> bs!290441 d!355391))

(assert (=> bs!290455 d!355393))

(assert (=> bs!290455 d!355401))

(assert (=> b!1257641 d!355397))

(assert (=> b!1257641 d!355399))

(assert (=> b!1257644 d!355403))

(assert (=> b!1257644 d!355399))

(declare-fun bs!290508 () Bool)

(assert (= bs!290508 (and m!1415809 b!1257633)))

(assert (=> bs!290508 m!1415809))

(assert (=> bs!290508 m!1415809))

(declare-fun bs!290509 () Bool)

(assert (= bs!290509 (and m!1415813 m!1415809 m!1415817 b!1257634)))

(declare-fun m!1415891 () Bool)

(assert (=> bs!290509 m!1415891))

(assert (=> bs!290509 m!1415809))

(declare-fun bs!290510 () Bool)

(assert (= bs!290510 (and m!1415813 b!1257635)))

(assert (=> bs!290510 m!1415891))

(assert (=> bs!290510 m!1415891))

(declare-fun bs!290511 () Bool)

(assert (= bs!290511 (and m!1415813 m!1415809 m!1415817 b!1257636)))

(assert (=> bs!290511 m!1415809))

(assert (=> bs!290511 m!1415891))

(declare-fun bs!290512 () Bool)

(assert (= bs!290512 (and m!1415819 m!1415813 b!1257637)))

(assert (=> bs!290512 m!1415827))

(assert (=> bs!290512 m!1415891))

(declare-fun bs!290513 () Bool)

(assert (= bs!290513 (and m!1415819 m!1415809 m!1415817 b!1257638)))

(assert (=> bs!290513 m!1415827))

(assert (=> bs!290513 m!1415809))

(declare-fun bs!290514 () Bool)

(assert (= bs!290514 (and m!1415819 b!1257639)))

(assert (=> bs!290514 m!1415827))

(assert (=> bs!290514 m!1415827))

(declare-fun bs!290515 () Bool)

(assert (= bs!290515 (and m!1415819 m!1415813 b!1257640)))

(assert (=> bs!290515 m!1415891))

(assert (=> bs!290515 m!1415827))

(declare-fun bs!290516 () Bool)

(assert (= bs!290516 (and m!1415819 m!1415809 m!1415817 b!1257641)))

(assert (=> bs!290516 m!1415809))

(assert (=> bs!290516 m!1415827))

(declare-fun bs!290517 () Bool)

(assert (= bs!290517 (and m!1415829 m!1415813 b!1257642)))

(assert (=> bs!290517 m!1415829))

(assert (=> bs!290517 m!1415891))

(declare-fun bs!290518 () Bool)

(assert (= bs!290518 (and m!1415829 m!1415809 m!1415817 b!1257643)))

(assert (=> bs!290518 m!1415829))

(assert (=> bs!290518 m!1415809))

(declare-fun bs!290519 () Bool)

(assert (= bs!290519 (and m!1415829 m!1415819 b!1257644)))

(assert (=> bs!290519 m!1415829))

(assert (=> bs!290519 m!1415827))

(declare-fun bs!290520 () Bool)

(assert (= bs!290520 (and m!1415829 b!1257645)))

(assert (=> bs!290520 m!1415829))

(assert (=> bs!290520 m!1415829))

(declare-fun bs!290521 () Bool)

(assert (= bs!290521 (and m!1415829 m!1415813 b!1257646)))

(assert (=> bs!290521 m!1415891))

(assert (=> bs!290521 m!1415829))

(declare-fun bs!290522 () Bool)

(assert (= bs!290522 (and m!1415829 m!1415809 m!1415817 b!1257647)))

(assert (=> bs!290522 m!1415809))

(assert (=> bs!290522 m!1415829))

(declare-fun bs!290523 () Bool)

(assert (= bs!290523 (and m!1415829 m!1415819 b!1257648)))

(assert (=> bs!290523 m!1415827))

(assert (=> bs!290523 m!1415829))

(push 1)

(assert (not b!1257619))

(assert (not d!355393))

(assert (not b!1257620))

(assert (not d!355399))

(assert (not d!355405))

(assert (not b!1257630))

(assert (not d!355403))

(assert (not d!355401))

(assert (not d!355395))

(assert (not d!355391))

(assert (not bs!290431))

(assert (not start!110988))

(assert (not b!1257629))

(assert (not d!355397))

(assert (not b!1257631))

(assert (not b!1257632))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!355423 () Bool)

(declare-fun lt!420961 () List!12644)

(assert (=> d!355423 (= lt!420961 (list!4691 x!244352))))

(declare-fun efficientList!176 (Conc!4128 List!12644) List!12644)

(declare-fun efficientList$default$2!59 (Conc!4128) List!12644)

(assert (=> d!355423 (= lt!420961 (efficientList!176 (c!208837 x!244352) (efficientList$default$2!59 (c!208837 x!244352))))))

(assert (=> d!355423 (= (efficientList!174 x!244352) lt!420961)))

(declare-fun bs!290548 () Bool)

(assert (= bs!290548 d!355423))

(assert (=> bs!290548 m!1415819))

(declare-fun m!1415911 () Bool)

(assert (=> bs!290548 m!1415911))

(assert (=> bs!290548 m!1415911))

(declare-fun m!1415913 () Bool)

(assert (=> bs!290548 m!1415913))

(assert (=> d!355399 d!355423))

(declare-fun b!1257705 () Bool)

(declare-fun e!800537 () List!12644)

(assert (=> b!1257705 (= e!800537 Nil!12578)))

(declare-fun b!1257708 () Bool)

(declare-fun e!800538 () List!12644)

(declare-fun ++!3214 (List!12644 List!12644) List!12644)

(assert (=> b!1257708 (= e!800538 (++!3214 (list!4693 (left!10886 (c!208837 x!244352))) (list!4693 (right!11216 (c!208837 x!244352)))))))

(declare-fun b!1257706 () Bool)

(assert (=> b!1257706 (= e!800537 e!800538)))

(declare-fun c!208844 () Bool)

(assert (=> b!1257706 (= c!208844 (is-Leaf!6401 (c!208837 x!244352)))))

(declare-fun b!1257707 () Bool)

(declare-fun list!4695 (IArray!8261) List!12644)

(assert (=> b!1257707 (= e!800538 (list!4695 (xs!6839 (c!208837 x!244352))))))

(declare-fun d!355425 () Bool)

(declare-fun c!208843 () Bool)

(assert (=> d!355425 (= c!208843 (is-Empty!4128 (c!208837 x!244352)))))

(assert (=> d!355425 (= (list!4693 (c!208837 x!244352)) e!800537)))

(assert (= (and d!355425 c!208843) b!1257705))

(assert (= (and d!355425 (not c!208843)) b!1257706))

(assert (= (and b!1257706 c!208844) b!1257707))

(assert (= (and b!1257706 (not c!208844)) b!1257708))

(declare-fun m!1415915 () Bool)

(assert (=> b!1257708 m!1415915))

(declare-fun m!1415917 () Bool)

(assert (=> b!1257708 m!1415917))

(assert (=> b!1257708 m!1415915))

(assert (=> b!1257708 m!1415917))

(declare-fun m!1415919 () Bool)

(assert (=> b!1257708 m!1415919))

(declare-fun m!1415921 () Bool)

(assert (=> b!1257707 m!1415921))

(assert (=> d!355393 d!355425))

(declare-fun b!1257709 () Bool)

(declare-fun e!800539 () List!12644)

(assert (=> b!1257709 (= e!800539 Nil!12578)))

(declare-fun b!1257712 () Bool)

(declare-fun e!800540 () List!12644)

(assert (=> b!1257712 (= e!800540 (++!3214 (list!4693 (left!10886 (c!208837 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351))))) (list!4693 (right!11216 (c!208837 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351)))))))))

(declare-fun b!1257710 () Bool)

(assert (=> b!1257710 (= e!800539 e!800540)))

(declare-fun c!208846 () Bool)

(assert (=> b!1257710 (= c!208846 (is-Leaf!6401 (c!208837 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351)))))))

(declare-fun b!1257711 () Bool)

(assert (=> b!1257711 (= e!800540 (list!4695 (xs!6839 (c!208837 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351))))))))

(declare-fun d!355427 () Bool)

(declare-fun c!208845 () Bool)

(assert (=> d!355427 (= c!208845 (is-Empty!4128 (c!208837 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351)))))))

(assert (=> d!355427 (= (list!4693 (c!208837 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351)))) e!800539)))

(assert (= (and d!355427 c!208845) b!1257709))

(assert (= (and d!355427 (not c!208845)) b!1257710))

(assert (= (and b!1257710 c!208846) b!1257711))

(assert (= (and b!1257710 (not c!208846)) b!1257712))

(declare-fun m!1415923 () Bool)

(assert (=> b!1257712 m!1415923))

(declare-fun m!1415925 () Bool)

(assert (=> b!1257712 m!1415925))

(assert (=> b!1257712 m!1415923))

(assert (=> b!1257712 m!1415925))

(declare-fun m!1415927 () Bool)

(assert (=> b!1257712 m!1415927))

(declare-fun m!1415929 () Bool)

(assert (=> b!1257711 m!1415929))

(assert (=> d!355405 d!355427))

(declare-fun d!355429 () Bool)

(declare-fun lt!420962 () List!12644)

(assert (=> d!355429 (= lt!420962 (list!4691 x!244351))))

(assert (=> d!355429 (= lt!420962 (efficientList!176 (c!208837 x!244351) (efficientList$default$2!59 (c!208837 x!244351))))))

(assert (=> d!355429 (= (efficientList!174 x!244351) lt!420962)))

(declare-fun bs!290549 () Bool)

(assert (= bs!290549 d!355429))

(assert (=> bs!290549 m!1415817))

(declare-fun m!1415931 () Bool)

(assert (=> bs!290549 m!1415931))

(assert (=> bs!290549 m!1415931))

(declare-fun m!1415933 () Bool)

(assert (=> bs!290549 m!1415933))

(assert (=> d!355397 d!355429))

(declare-fun d!355431 () Bool)

(declare-fun lt!420963 () List!12644)

(assert (=> d!355431 (= lt!420963 (list!4691 x!244353))))

(assert (=> d!355431 (= lt!420963 (efficientList!176 (c!208837 x!244353) (efficientList$default$2!59 (c!208837 x!244353))))))

(assert (=> d!355431 (= (efficientList!174 x!244353) lt!420963)))

(declare-fun bs!290550 () Bool)

(assert (= bs!290550 d!355431))

(assert (=> bs!290550 m!1415821))

(declare-fun m!1415935 () Bool)

(assert (=> bs!290550 m!1415935))

(assert (=> bs!290550 m!1415935))

(declare-fun m!1415937 () Bool)

(assert (=> bs!290550 m!1415937))

(assert (=> d!355403 d!355431))

(declare-fun b!1257713 () Bool)

(declare-fun e!800541 () List!12644)

(assert (=> b!1257713 (= e!800541 Nil!12578)))

(declare-fun b!1257716 () Bool)

(declare-fun e!800542 () List!12644)

(assert (=> b!1257716 (= e!800542 (++!3214 (list!4693 (left!10886 (c!208837 x!244351))) (list!4693 (right!11216 (c!208837 x!244351)))))))

(declare-fun b!1257714 () Bool)

(assert (=> b!1257714 (= e!800541 e!800542)))

(declare-fun c!208848 () Bool)

(assert (=> b!1257714 (= c!208848 (is-Leaf!6401 (c!208837 x!244351)))))

(declare-fun b!1257715 () Bool)

(assert (=> b!1257715 (= e!800542 (list!4695 (xs!6839 (c!208837 x!244351))))))

(declare-fun d!355433 () Bool)

(declare-fun c!208847 () Bool)

(assert (=> d!355433 (= c!208847 (is-Empty!4128 (c!208837 x!244351)))))

(assert (=> d!355433 (= (list!4693 (c!208837 x!244351)) e!800541)))

(assert (= (and d!355433 c!208847) b!1257713))

(assert (= (and d!355433 (not c!208847)) b!1257714))

(assert (= (and b!1257714 c!208848) b!1257715))

(assert (= (and b!1257714 (not c!208848)) b!1257716))

(declare-fun m!1415939 () Bool)

(assert (=> b!1257716 m!1415939))

(declare-fun m!1415941 () Bool)

(assert (=> b!1257716 m!1415941))

(assert (=> b!1257716 m!1415939))

(assert (=> b!1257716 m!1415941))

(declare-fun m!1415943 () Bool)

(assert (=> b!1257716 m!1415943))

(declare-fun m!1415945 () Bool)

(assert (=> b!1257715 m!1415945))

(assert (=> d!355391 d!355433))

(declare-fun b!1257717 () Bool)

(declare-fun e!800543 () List!12644)

(assert (=> b!1257717 (= e!800543 Nil!12578)))

(declare-fun b!1257720 () Bool)

(declare-fun e!800544 () List!12644)

(assert (=> b!1257720 (= e!800544 (++!3214 (list!4693 (left!10886 (c!208837 x!244353))) (list!4693 (right!11216 (c!208837 x!244353)))))))

(declare-fun b!1257718 () Bool)

(assert (=> b!1257718 (= e!800543 e!800544)))

(declare-fun c!208850 () Bool)

(assert (=> b!1257718 (= c!208850 (is-Leaf!6401 (c!208837 x!244353)))))

(declare-fun b!1257719 () Bool)

(assert (=> b!1257719 (= e!800544 (list!4695 (xs!6839 (c!208837 x!244353))))))

(declare-fun d!355435 () Bool)

(declare-fun c!208849 () Bool)

(assert (=> d!355435 (= c!208849 (is-Empty!4128 (c!208837 x!244353)))))

(assert (=> d!355435 (= (list!4693 (c!208837 x!244353)) e!800543)))

(assert (= (and d!355435 c!208849) b!1257717))

(assert (= (and d!355435 (not c!208849)) b!1257718))

(assert (= (and b!1257718 c!208850) b!1257719))

(assert (= (and b!1257718 (not c!208850)) b!1257720))

(declare-fun m!1415947 () Bool)

(assert (=> b!1257720 m!1415947))

(declare-fun m!1415949 () Bool)

(assert (=> b!1257720 m!1415949))

(assert (=> b!1257720 m!1415947))

(assert (=> b!1257720 m!1415949))

(declare-fun m!1415951 () Bool)

(assert (=> b!1257720 m!1415951))

(declare-fun m!1415953 () Bool)

(assert (=> b!1257719 m!1415953))

(assert (=> d!355401 d!355435))

(declare-fun d!355437 () Bool)

(declare-fun lt!420964 () List!12644)

(assert (=> d!355437 (= lt!420964 (list!4691 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351))))))

(assert (=> d!355437 (= lt!420964 (efficientList!176 (c!208837 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351))) (efficientList$default$2!59 (c!208837 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351))))))))

(assert (=> d!355437 (= (efficientList!174 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351))) lt!420964)))

(declare-fun bs!290551 () Bool)

(assert (= bs!290551 d!355437))

(assert (=> bs!290551 m!1415811))

(assert (=> bs!290551 m!1415813))

(declare-fun m!1415955 () Bool)

(assert (=> bs!290551 m!1415955))

(assert (=> bs!290551 m!1415955))

(declare-fun m!1415957 () Bool)

(assert (=> bs!290551 m!1415957))

(assert (=> d!355395 d!355437))

(push 1)

(assert (not b!1257719))

(assert (not b!1257619))

(assert (not b!1257715))

(assert (not b!1257720))

(assert (not d!355423))

(assert (not d!355429))

(assert (not bs!290431))

(assert (not b!1257620))

(assert (not d!355437))

(assert (not b!1257707))

(assert (not start!110988))

(assert (not b!1257629))

(assert (not b!1257711))

(assert (not b!1257630))

(assert (not b!1257708))

(assert (not b!1257716))

(assert (not b!1257631))

(assert (not b!1257632))

(assert (not b!1257712))

(assert (not d!355431))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!355431 d!355401))

(declare-fun b!1257757 () Bool)

(declare-datatypes ((Unit!18866 0))(
  ( (Unit!18867) )
))
(declare-fun lt!420984 () Unit!18866)

(declare-fun lt!420982 () Unit!18866)

(assert (=> b!1257757 (= lt!420984 lt!420982)))

(declare-fun call!88274 () List!12644)

(declare-fun lt!420981 () List!12644)

(declare-fun lt!420985 () List!12644)

(assert (=> b!1257757 (= (++!3214 call!88274 (efficientList$default$2!59 (c!208837 x!244353))) (++!3214 lt!420985 (++!3214 lt!420981 (efficientList$default$2!59 (c!208837 x!244353)))))))

(declare-fun lemmaConcatAssociativity!806 (List!12644 List!12644 List!12644) Unit!18866)

(assert (=> b!1257757 (= lt!420982 (lemmaConcatAssociativity!806 lt!420985 lt!420981 (efficientList$default$2!59 (c!208837 x!244353))))))

(assert (=> b!1257757 (= lt!420981 (list!4693 (right!11216 (c!208837 x!244353))))))

(assert (=> b!1257757 (= lt!420985 (list!4693 (left!10886 (c!208837 x!244353))))))

(declare-fun e!800563 () List!12644)

(assert (=> b!1257757 (= e!800563 (efficientList!176 (left!10886 (c!208837 x!244353)) (efficientList!176 (right!11216 (c!208837 x!244353)) (efficientList$default$2!59 (c!208837 x!244353)))))))

(declare-fun b!1257758 () Bool)

(declare-fun e!800565 () List!12644)

(assert (=> b!1257758 (= e!800565 e!800563)))

(declare-fun c!208870 () Bool)

(assert (=> b!1257758 (= c!208870 (is-Leaf!6401 (c!208837 x!244353)))))

(declare-fun b!1257759 () Bool)

(declare-fun e!800564 () List!12644)

(declare-fun efficientList!178 (IArray!8261) List!12644)

(assert (=> b!1257759 (= e!800564 (efficientList!178 (xs!6839 (c!208837 x!244353))))))

(declare-fun d!355453 () Bool)

(declare-fun lt!420983 () List!12644)

(assert (=> d!355453 (= lt!420983 (++!3214 (list!4693 (c!208837 x!244353)) (efficientList$default$2!59 (c!208837 x!244353))))))

(assert (=> d!355453 (= lt!420983 e!800565)))

(declare-fun c!208871 () Bool)

(assert (=> d!355453 (= c!208871 (is-Empty!4128 (c!208837 x!244353)))))

(assert (=> d!355453 (= (efficientList!176 (c!208837 x!244353) (efficientList$default$2!59 (c!208837 x!244353))) lt!420983)))

(declare-fun b!1257760 () Bool)

(assert (=> b!1257760 (= e!800565 (efficientList$default$2!59 (c!208837 x!244353)))))

(declare-fun b!1257761 () Bool)

(assert (=> b!1257761 (= e!800564 lt!420985)))

(declare-fun b!1257762 () Bool)

(assert (=> b!1257762 (= e!800563 call!88274)))

(declare-fun bm!88269 () Bool)

(declare-fun c!208869 () Bool)

(assert (=> bm!88269 (= c!208869 c!208870)))

(assert (=> bm!88269 (= call!88274 (++!3214 e!800564 (ite c!208870 (efficientList$default$2!59 (c!208837 x!244353)) lt!420981)))))

(assert (= (and d!355453 c!208871) b!1257760))

(assert (= (and d!355453 (not c!208871)) b!1257758))

(assert (= (and b!1257758 c!208870) b!1257762))

(assert (= (and b!1257758 (not c!208870)) b!1257757))

(assert (= (or b!1257762 b!1257757) bm!88269))

(assert (= (and bm!88269 c!208869) b!1257759))

(assert (= (and bm!88269 (not c!208869)) b!1257761))

(assert (=> b!1257757 m!1415935))

(declare-fun m!1416007 () Bool)

(assert (=> b!1257757 m!1416007))

(declare-fun m!1416009 () Bool)

(assert (=> b!1257757 m!1416009))

(declare-fun m!1416011 () Bool)

(assert (=> b!1257757 m!1416011))

(assert (=> b!1257757 m!1415935))

(assert (=> b!1257757 m!1416009))

(assert (=> b!1257757 m!1415947))

(assert (=> b!1257757 m!1416007))

(declare-fun m!1416013 () Bool)

(assert (=> b!1257757 m!1416013))

(assert (=> b!1257757 m!1415949))

(assert (=> b!1257757 m!1415935))

(declare-fun m!1416015 () Bool)

(assert (=> b!1257757 m!1416015))

(assert (=> b!1257757 m!1415935))

(declare-fun m!1416017 () Bool)

(assert (=> b!1257757 m!1416017))

(declare-fun m!1416019 () Bool)

(assert (=> b!1257759 m!1416019))

(assert (=> d!355453 m!1415885))

(assert (=> d!355453 m!1415885))

(assert (=> d!355453 m!1415935))

(declare-fun m!1416021 () Bool)

(assert (=> d!355453 m!1416021))

(declare-fun m!1416023 () Bool)

(assert (=> bm!88269 m!1416023))

(assert (=> d!355431 d!355453))

(declare-fun d!355457 () Bool)

(assert (=> d!355457 (= (efficientList$default$2!59 (c!208837 x!244353)) Nil!12578)))

(assert (=> d!355431 d!355457))

(declare-fun d!355459 () Bool)

(declare-fun isBalanced!1205 (Conc!4128) Bool)

(assert (=> d!355459 (= (inv!16955 x!244351) (isBalanced!1205 (c!208837 x!244351)))))

(declare-fun bs!290556 () Bool)

(assert (= bs!290556 d!355459))

(declare-fun m!1416025 () Bool)

(assert (=> bs!290556 m!1416025))

(assert (=> start!110988 d!355459))

(assert (=> start!110988 d!355391))

(declare-fun d!355461 () Bool)

(declare-fun choose!7889 (Int) Bool)

(assert (=> d!355461 (= (Forall!477 lambda!49615) (choose!7889 lambda!49615))))

(declare-fun bs!290557 () Bool)

(assert (= bs!290557 d!355461))

(declare-fun m!1416027 () Bool)

(assert (=> bs!290557 m!1416027))

(assert (=> start!110988 d!355461))

(assert (=> start!110988 d!355405))

(assert (=> start!110988 d!355397))

(declare-fun d!355463 () Bool)

(declare-fun c!208875 () Bool)

(assert (=> d!355463 (= c!208875 (is-KeywordValue!2250 (toValue!27 thiss!4594 x!244351)))))

(declare-fun e!800568 () BalanceConc!8196)

(assert (=> d!355463 (= (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351)) e!800568)))

(declare-fun b!1257767 () Bool)

(declare-fun seqFromList!1580 (List!12644) BalanceConc!8196)

(assert (=> b!1257767 (= e!800568 (seqFromList!1580 (value!70703 (toValue!27 thiss!4594 x!244351))))))

(declare-fun b!1257768 () Bool)

(assert (=> b!1257768 (= e!800568 (BalanceConc!8197 Empty!4128))))

(assert (= (and d!355463 c!208875) b!1257767))

(assert (= (and d!355463 (not c!208875)) b!1257768))

(declare-fun m!1416029 () Bool)

(assert (=> b!1257767 m!1416029))

(assert (=> start!110988 d!355463))

(declare-fun d!355465 () Bool)

(assert (=> d!355465 (= (inv!16955 x!244353) (isBalanced!1205 (c!208837 x!244353)))))

(declare-fun bs!290558 () Bool)

(assert (= bs!290558 d!355465))

(declare-fun m!1416031 () Bool)

(assert (=> bs!290558 m!1416031))

(assert (=> b!1257620 d!355465))

(assert (=> b!1257620 d!355401))

(declare-fun d!355467 () Bool)

(declare-fun choose!7890 (Int) Bool)

(assert (=> d!355467 (= (Forall2!379 lambda!49618) (choose!7890 lambda!49618))))

(declare-fun bs!290559 () Bool)

(assert (= bs!290559 d!355467))

(declare-fun m!1416033 () Bool)

(assert (=> bs!290559 m!1416033))

(assert (=> b!1257620 d!355467))

(declare-fun d!355469 () Bool)

(assert (=> d!355469 (= (inv!16955 x!244352) (isBalanced!1205 (c!208837 x!244352)))))

(declare-fun bs!290560 () Bool)

(assert (= bs!290560 d!355469))

(declare-fun m!1416035 () Bool)

(assert (=> bs!290560 m!1416035))

(assert (=> b!1257620 d!355469))

(assert (=> b!1257620 d!355393))

(assert (=> d!355429 d!355391))

(declare-fun b!1257769 () Bool)

(declare-fun lt!420989 () Unit!18866)

(declare-fun lt!420987 () Unit!18866)

(assert (=> b!1257769 (= lt!420989 lt!420987)))

(declare-fun lt!420990 () List!12644)

(declare-fun call!88275 () List!12644)

(declare-fun lt!420986 () List!12644)

(assert (=> b!1257769 (= (++!3214 call!88275 (efficientList$default$2!59 (c!208837 x!244351))) (++!3214 lt!420990 (++!3214 lt!420986 (efficientList$default$2!59 (c!208837 x!244351)))))))

(assert (=> b!1257769 (= lt!420987 (lemmaConcatAssociativity!806 lt!420990 lt!420986 (efficientList$default$2!59 (c!208837 x!244351))))))

(assert (=> b!1257769 (= lt!420986 (list!4693 (right!11216 (c!208837 x!244351))))))

(assert (=> b!1257769 (= lt!420990 (list!4693 (left!10886 (c!208837 x!244351))))))

(declare-fun e!800569 () List!12644)

(assert (=> b!1257769 (= e!800569 (efficientList!176 (left!10886 (c!208837 x!244351)) (efficientList!176 (right!11216 (c!208837 x!244351)) (efficientList$default$2!59 (c!208837 x!244351)))))))

(declare-fun b!1257770 () Bool)

(declare-fun e!800571 () List!12644)

(assert (=> b!1257770 (= e!800571 e!800569)))

(declare-fun c!208877 () Bool)

(assert (=> b!1257770 (= c!208877 (is-Leaf!6401 (c!208837 x!244351)))))

(declare-fun b!1257771 () Bool)

(declare-fun e!800570 () List!12644)

(assert (=> b!1257771 (= e!800570 (efficientList!178 (xs!6839 (c!208837 x!244351))))))

(declare-fun d!355471 () Bool)

(declare-fun lt!420988 () List!12644)

(assert (=> d!355471 (= lt!420988 (++!3214 (list!4693 (c!208837 x!244351)) (efficientList$default$2!59 (c!208837 x!244351))))))

(assert (=> d!355471 (= lt!420988 e!800571)))

(declare-fun c!208878 () Bool)

(assert (=> d!355471 (= c!208878 (is-Empty!4128 (c!208837 x!244351)))))

(assert (=> d!355471 (= (efficientList!176 (c!208837 x!244351) (efficientList$default$2!59 (c!208837 x!244351))) lt!420988)))

(declare-fun b!1257772 () Bool)

(assert (=> b!1257772 (= e!800571 (efficientList$default$2!59 (c!208837 x!244351)))))

(declare-fun b!1257773 () Bool)

(assert (=> b!1257773 (= e!800570 lt!420990)))

(declare-fun b!1257774 () Bool)

(assert (=> b!1257774 (= e!800569 call!88275)))

(declare-fun bm!88270 () Bool)

(declare-fun c!208876 () Bool)

(assert (=> bm!88270 (= c!208876 c!208877)))

(assert (=> bm!88270 (= call!88275 (++!3214 e!800570 (ite c!208877 (efficientList$default$2!59 (c!208837 x!244351)) lt!420986)))))

(assert (= (and d!355471 c!208878) b!1257772))

(assert (= (and d!355471 (not c!208878)) b!1257770))

(assert (= (and b!1257770 c!208877) b!1257774))

(assert (= (and b!1257770 (not c!208877)) b!1257769))

(assert (= (or b!1257774 b!1257769) bm!88270))

(assert (= (and bm!88270 c!208876) b!1257771))

(assert (= (and bm!88270 (not c!208876)) b!1257773))

(assert (=> b!1257769 m!1415931))

(declare-fun m!1416037 () Bool)

(assert (=> b!1257769 m!1416037))

(declare-fun m!1416039 () Bool)

(assert (=> b!1257769 m!1416039))

(declare-fun m!1416041 () Bool)

(assert (=> b!1257769 m!1416041))

(assert (=> b!1257769 m!1415931))

(assert (=> b!1257769 m!1416039))

(assert (=> b!1257769 m!1415939))

(assert (=> b!1257769 m!1416037))

(declare-fun m!1416043 () Bool)

(assert (=> b!1257769 m!1416043))

(assert (=> b!1257769 m!1415941))

(assert (=> b!1257769 m!1415931))

(declare-fun m!1416045 () Bool)

(assert (=> b!1257769 m!1416045))

(assert (=> b!1257769 m!1415931))

(declare-fun m!1416047 () Bool)

(assert (=> b!1257769 m!1416047))

(declare-fun m!1416049 () Bool)

(assert (=> b!1257771 m!1416049))

(assert (=> d!355471 m!1415875))

(assert (=> d!355471 m!1415875))

(assert (=> d!355471 m!1415931))

(declare-fun m!1416051 () Bool)

(assert (=> d!355471 m!1416051))

(declare-fun m!1416053 () Bool)

(assert (=> bm!88270 m!1416053))

(assert (=> d!355429 d!355471))

(declare-fun d!355473 () Bool)

(assert (=> d!355473 (= (efficientList$default$2!59 (c!208837 x!244351)) Nil!12578)))

(assert (=> d!355429 d!355473))

(declare-fun bs!290561 () Bool)

(declare-fun d!355475 () Bool)

(assert (= bs!290561 (and d!355475 start!110988)))

(declare-fun lambda!49643 () Int)

(assert (=> bs!290561 (not (= lambda!49643 lambda!49615))))

(assert (=> d!355475 true))

(declare-fun order!7649 () Int)

(declare-fun order!7647 () Int)

(declare-fun dynLambda!5496 (Int Int) Int)

(declare-fun dynLambda!5497 (Int Int) Int)

(assert (=> d!355475 (< (dynLambda!5496 order!7647 lambda!49616) (dynLambda!5497 order!7649 lambda!49643))))

(assert (=> d!355475 true))

(declare-fun order!7651 () Int)

(declare-fun dynLambda!5498 (Int Int) Int)

(assert (=> d!355475 (< (dynLambda!5498 order!7651 lambda!49617) (dynLambda!5497 order!7649 lambda!49643))))

(assert (=> d!355475 (= (semiInverseModEq!809 lambda!49616 lambda!49617) (Forall!477 lambda!49643))))

(declare-fun bs!290562 () Bool)

(assert (= bs!290562 d!355475))

(declare-fun m!1416055 () Bool)

(assert (=> bs!290562 m!1416055))

(assert (=> b!1257619 d!355475))

(assert (=> b!1257619 d!355461))

(declare-fun d!355477 () Bool)

(declare-fun c!208881 () Bool)

(assert (=> d!355477 (= c!208881 (is-Node!4128 (c!208837 x!244353)))))

(declare-fun e!800576 () Bool)

(assert (=> d!355477 (= (inv!16954 (c!208837 x!244353)) e!800576)))

(declare-fun b!1257785 () Bool)

(declare-fun inv!16958 (Conc!4128) Bool)

(assert (=> b!1257785 (= e!800576 (inv!16958 (c!208837 x!244353)))))

(declare-fun b!1257786 () Bool)

(declare-fun e!800577 () Bool)

(assert (=> b!1257786 (= e!800576 e!800577)))

(declare-fun res!556815 () Bool)

(assert (=> b!1257786 (= res!556815 (not (is-Leaf!6401 (c!208837 x!244353))))))

(assert (=> b!1257786 (=> res!556815 e!800577)))

(declare-fun b!1257787 () Bool)

(declare-fun inv!16959 (Conc!4128) Bool)

(assert (=> b!1257787 (= e!800577 (inv!16959 (c!208837 x!244353)))))

(assert (= (and d!355477 c!208881) b!1257785))

(assert (= (and d!355477 (not c!208881)) b!1257786))

(assert (= (and b!1257786 (not res!556815)) b!1257787))

(declare-fun m!1416057 () Bool)

(assert (=> b!1257785 m!1416057))

(declare-fun m!1416059 () Bool)

(assert (=> b!1257787 m!1416059))

(assert (=> b!1257632 d!355477))

(assert (=> d!355423 d!355393))

(declare-fun b!1257788 () Bool)

(declare-fun lt!420994 () Unit!18866)

(declare-fun lt!420992 () Unit!18866)

(assert (=> b!1257788 (= lt!420994 lt!420992)))

(declare-fun lt!420995 () List!12644)

(declare-fun call!88276 () List!12644)

(declare-fun lt!420991 () List!12644)

(assert (=> b!1257788 (= (++!3214 call!88276 (efficientList$default$2!59 (c!208837 x!244352))) (++!3214 lt!420995 (++!3214 lt!420991 (efficientList$default$2!59 (c!208837 x!244352)))))))

(assert (=> b!1257788 (= lt!420992 (lemmaConcatAssociativity!806 lt!420995 lt!420991 (efficientList$default$2!59 (c!208837 x!244352))))))

(assert (=> b!1257788 (= lt!420991 (list!4693 (right!11216 (c!208837 x!244352))))))

(assert (=> b!1257788 (= lt!420995 (list!4693 (left!10886 (c!208837 x!244352))))))

(declare-fun e!800578 () List!12644)

(assert (=> b!1257788 (= e!800578 (efficientList!176 (left!10886 (c!208837 x!244352)) (efficientList!176 (right!11216 (c!208837 x!244352)) (efficientList$default$2!59 (c!208837 x!244352)))))))

(declare-fun b!1257789 () Bool)

(declare-fun e!800580 () List!12644)

(assert (=> b!1257789 (= e!800580 e!800578)))

(declare-fun c!208883 () Bool)

(assert (=> b!1257789 (= c!208883 (is-Leaf!6401 (c!208837 x!244352)))))

(declare-fun b!1257790 () Bool)

(declare-fun e!800579 () List!12644)

(assert (=> b!1257790 (= e!800579 (efficientList!178 (xs!6839 (c!208837 x!244352))))))

(declare-fun d!355479 () Bool)

(declare-fun lt!420993 () List!12644)

(assert (=> d!355479 (= lt!420993 (++!3214 (list!4693 (c!208837 x!244352)) (efficientList$default$2!59 (c!208837 x!244352))))))

(assert (=> d!355479 (= lt!420993 e!800580)))

(declare-fun c!208884 () Bool)

(assert (=> d!355479 (= c!208884 (is-Empty!4128 (c!208837 x!244352)))))

(assert (=> d!355479 (= (efficientList!176 (c!208837 x!244352) (efficientList$default$2!59 (c!208837 x!244352))) lt!420993)))

(declare-fun b!1257791 () Bool)

(assert (=> b!1257791 (= e!800580 (efficientList$default$2!59 (c!208837 x!244352)))))

(declare-fun b!1257792 () Bool)

(assert (=> b!1257792 (= e!800579 lt!420995)))

(declare-fun b!1257793 () Bool)

(assert (=> b!1257793 (= e!800578 call!88276)))

(declare-fun bm!88271 () Bool)

(declare-fun c!208882 () Bool)

(assert (=> bm!88271 (= c!208882 c!208883)))

(assert (=> bm!88271 (= call!88276 (++!3214 e!800579 (ite c!208883 (efficientList$default$2!59 (c!208837 x!244352)) lt!420991)))))

(assert (= (and d!355479 c!208884) b!1257791))

(assert (= (and d!355479 (not c!208884)) b!1257789))

(assert (= (and b!1257789 c!208883) b!1257793))

(assert (= (and b!1257789 (not c!208883)) b!1257788))

(assert (= (or b!1257793 b!1257788) bm!88271))

(assert (= (and bm!88271 c!208882) b!1257790))

(assert (= (and bm!88271 (not c!208882)) b!1257792))

(assert (=> b!1257788 m!1415911))

(declare-fun m!1416061 () Bool)

(assert (=> b!1257788 m!1416061))

(declare-fun m!1416063 () Bool)

(assert (=> b!1257788 m!1416063))

(declare-fun m!1416065 () Bool)

(assert (=> b!1257788 m!1416065))

(assert (=> b!1257788 m!1415911))

(assert (=> b!1257788 m!1416063))

(assert (=> b!1257788 m!1415915))

(assert (=> b!1257788 m!1416061))

(declare-fun m!1416067 () Bool)

(assert (=> b!1257788 m!1416067))

(assert (=> b!1257788 m!1415917))

(assert (=> b!1257788 m!1415911))

(declare-fun m!1416069 () Bool)

(assert (=> b!1257788 m!1416069))

(assert (=> b!1257788 m!1415911))

(declare-fun m!1416071 () Bool)

(assert (=> b!1257788 m!1416071))

(declare-fun m!1416073 () Bool)

(assert (=> b!1257790 m!1416073))

(assert (=> d!355479 m!1415877))

(assert (=> d!355479 m!1415877))

(assert (=> d!355479 m!1415911))

(declare-fun m!1416075 () Bool)

(assert (=> d!355479 m!1416075))

(declare-fun m!1416077 () Bool)

(assert (=> bm!88271 m!1416077))

(assert (=> d!355423 d!355479))

(declare-fun d!355481 () Bool)

(assert (=> d!355481 (= (efficientList$default$2!59 (c!208837 x!244352)) Nil!12578)))

(assert (=> d!355423 d!355481))

(declare-fun d!355483 () Bool)

(declare-fun c!208885 () Bool)

(assert (=> d!355483 (= c!208885 (is-Node!4128 (c!208837 x!244352)))))

(declare-fun e!800581 () Bool)

(assert (=> d!355483 (= (inv!16954 (c!208837 x!244352)) e!800581)))

(declare-fun b!1257794 () Bool)

(assert (=> b!1257794 (= e!800581 (inv!16958 (c!208837 x!244352)))))

(declare-fun b!1257795 () Bool)

(declare-fun e!800582 () Bool)

(assert (=> b!1257795 (= e!800581 e!800582)))

(declare-fun res!556816 () Bool)

(assert (=> b!1257795 (= res!556816 (not (is-Leaf!6401 (c!208837 x!244352))))))

(assert (=> b!1257795 (=> res!556816 e!800582)))

(declare-fun b!1257796 () Bool)

(assert (=> b!1257796 (= e!800582 (inv!16959 (c!208837 x!244352)))))

(assert (= (and d!355483 c!208885) b!1257794))

(assert (= (and d!355483 (not c!208885)) b!1257795))

(assert (= (and b!1257795 (not res!556816)) b!1257796))

(declare-fun m!1416079 () Bool)

(assert (=> b!1257794 m!1416079))

(declare-fun m!1416081 () Bool)

(assert (=> b!1257796 m!1416081))

(assert (=> b!1257631 d!355483))

(declare-fun d!355485 () Bool)

(declare-fun c!208886 () Bool)

(assert (=> d!355485 (= c!208886 (is-Node!4128 (c!208837 x!244351)))))

(declare-fun e!800583 () Bool)

(assert (=> d!355485 (= (inv!16954 (c!208837 x!244351)) e!800583)))

(declare-fun b!1257797 () Bool)

(assert (=> b!1257797 (= e!800583 (inv!16958 (c!208837 x!244351)))))

(declare-fun b!1257798 () Bool)

(declare-fun e!800584 () Bool)

(assert (=> b!1257798 (= e!800583 e!800584)))

(declare-fun res!556817 () Bool)

(assert (=> b!1257798 (= res!556817 (not (is-Leaf!6401 (c!208837 x!244351))))))

(assert (=> b!1257798 (=> res!556817 e!800584)))

(declare-fun b!1257799 () Bool)

(assert (=> b!1257799 (= e!800584 (inv!16959 (c!208837 x!244351)))))

(assert (= (and d!355485 c!208886) b!1257797))

(assert (= (and d!355485 (not c!208886)) b!1257798))

(assert (= (and b!1257798 (not res!556817)) b!1257799))

(declare-fun m!1416083 () Bool)

(assert (=> b!1257797 m!1416083))

(declare-fun m!1416085 () Bool)

(assert (=> b!1257799 m!1416085))

(assert (=> b!1257629 d!355485))

(assert (=> bs!290431 d!355405))

(assert (=> bs!290431 d!355463))

(assert (=> bs!290431 d!355397))

(assert (=> bs!290431 d!355391))

(assert (=> b!1257630 d!355399))

(assert (=> b!1257630 d!355403))

(assert (=> d!355437 d!355405))

(declare-fun b!1257800 () Bool)

(declare-fun lt!420999 () Unit!18866)

(declare-fun lt!420997 () Unit!18866)

(assert (=> b!1257800 (= lt!420999 lt!420997)))

(declare-fun call!88277 () List!12644)

(declare-fun lt!420996 () List!12644)

(declare-fun lt!421000 () List!12644)

(assert (=> b!1257800 (= (++!3214 call!88277 (efficientList$default$2!59 (c!208837 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351))))) (++!3214 lt!421000 (++!3214 lt!420996 (efficientList$default$2!59 (c!208837 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351)))))))))

(assert (=> b!1257800 (= lt!420997 (lemmaConcatAssociativity!806 lt!421000 lt!420996 (efficientList$default$2!59 (c!208837 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351))))))))

(assert (=> b!1257800 (= lt!420996 (list!4693 (right!11216 (c!208837 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351))))))))

(assert (=> b!1257800 (= lt!421000 (list!4693 (left!10886 (c!208837 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351))))))))

(declare-fun e!800585 () List!12644)

(assert (=> b!1257800 (= e!800585 (efficientList!176 (left!10886 (c!208837 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351)))) (efficientList!176 (right!11216 (c!208837 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351)))) (efficientList$default$2!59 (c!208837 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351)))))))))

(declare-fun b!1257801 () Bool)

(declare-fun e!800587 () List!12644)

(assert (=> b!1257801 (= e!800587 e!800585)))

(declare-fun c!208888 () Bool)

(assert (=> b!1257801 (= c!208888 (is-Leaf!6401 (c!208837 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351)))))))

(declare-fun b!1257802 () Bool)

(declare-fun e!800586 () List!12644)

(assert (=> b!1257802 (= e!800586 (efficientList!178 (xs!6839 (c!208837 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351))))))))

(declare-fun d!355487 () Bool)

(declare-fun lt!420998 () List!12644)

(assert (=> d!355487 (= lt!420998 (++!3214 (list!4693 (c!208837 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351)))) (efficientList$default$2!59 (c!208837 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351))))))))

(assert (=> d!355487 (= lt!420998 e!800587)))

(declare-fun c!208889 () Bool)

(assert (=> d!355487 (= c!208889 (is-Empty!4128 (c!208837 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351)))))))

(assert (=> d!355487 (= (efficientList!176 (c!208837 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351))) (efficientList$default$2!59 (c!208837 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351))))) lt!420998)))

(declare-fun b!1257803 () Bool)

(assert (=> b!1257803 (= e!800587 (efficientList$default$2!59 (c!208837 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351)))))))

(declare-fun b!1257804 () Bool)

(assert (=> b!1257804 (= e!800586 lt!421000)))

(declare-fun b!1257805 () Bool)

(assert (=> b!1257805 (= e!800585 call!88277)))

(declare-fun bm!88272 () Bool)

(declare-fun c!208887 () Bool)

(assert (=> bm!88272 (= c!208887 c!208888)))

(assert (=> bm!88272 (= call!88277 (++!3214 e!800586 (ite c!208888 (efficientList$default$2!59 (c!208837 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351)))) lt!420996)))))

(assert (= (and d!355487 c!208889) b!1257803))

(assert (= (and d!355487 (not c!208889)) b!1257801))

(assert (= (and b!1257801 c!208888) b!1257805))

(assert (= (and b!1257801 (not c!208888)) b!1257800))

(assert (= (or b!1257805 b!1257800) bm!88272))

(assert (= (and bm!88272 c!208887) b!1257802))

(assert (= (and bm!88272 (not c!208887)) b!1257804))

(assert (=> b!1257800 m!1415955))

(declare-fun m!1416087 () Bool)

(assert (=> b!1257800 m!1416087))

(declare-fun m!1416089 () Bool)

(assert (=> b!1257800 m!1416089))

(declare-fun m!1416091 () Bool)

(assert (=> b!1257800 m!1416091))

(assert (=> b!1257800 m!1415955))

(assert (=> b!1257800 m!1416089))

(assert (=> b!1257800 m!1415923))

(assert (=> b!1257800 m!1416087))

(declare-fun m!1416093 () Bool)

(assert (=> b!1257800 m!1416093))

(assert (=> b!1257800 m!1415925))

(assert (=> b!1257800 m!1415955))

(declare-fun m!1416095 () Bool)

(assert (=> b!1257800 m!1416095))

(assert (=> b!1257800 m!1415955))

(declare-fun m!1416097 () Bool)

(assert (=> b!1257800 m!1416097))

(declare-fun m!1416099 () Bool)

(assert (=> b!1257802 m!1416099))

(assert (=> d!355487 m!1415889))

(assert (=> d!355487 m!1415889))

(assert (=> d!355487 m!1415955))

(declare-fun m!1416101 () Bool)

(assert (=> d!355487 m!1416101))

(declare-fun m!1416103 () Bool)

(assert (=> bm!88272 m!1416103))

(assert (=> d!355437 d!355487))

(declare-fun d!355489 () Bool)

(assert (=> d!355489 (= (efficientList$default$2!59 (c!208837 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244351)))) Nil!12578)))

(assert (=> d!355437 d!355489))

(declare-fun tp!370673 () Bool)

(declare-fun tp!370674 () Bool)

(declare-fun b!1257812 () Bool)

(declare-fun e!800592 () Bool)

(assert (=> b!1257812 (= e!800592 (and (inv!16954 (left!10886 (c!208837 x!244353))) tp!370673 (inv!16954 (right!11216 (c!208837 x!244353))) tp!370674))))

(declare-fun b!1257813 () Bool)

(declare-fun inv!16960 (IArray!8261) Bool)

(assert (=> b!1257813 (= e!800592 (inv!16960 (xs!6839 (c!208837 x!244353))))))

(assert (=> b!1257632 (= tp!370659 (and (inv!16954 (c!208837 x!244353)) e!800592))))

(assert (= (and b!1257632 (is-Node!4128 (c!208837 x!244353))) b!1257812))

(assert (= (and b!1257632 (is-Leaf!6401 (c!208837 x!244353))) b!1257813))

(declare-fun m!1416105 () Bool)

(assert (=> b!1257812 m!1416105))

(declare-fun m!1416107 () Bool)

(assert (=> b!1257812 m!1416107))

(declare-fun m!1416109 () Bool)

(assert (=> b!1257813 m!1416109))

(assert (=> b!1257632 m!1415833))

(declare-fun tp!370676 () Bool)

(declare-fun b!1257814 () Bool)

(declare-fun tp!370675 () Bool)

(declare-fun e!800594 () Bool)

(assert (=> b!1257814 (= e!800594 (and (inv!16954 (left!10886 (c!208837 x!244352))) tp!370675 (inv!16954 (right!11216 (c!208837 x!244352))) tp!370676))))

(declare-fun b!1257815 () Bool)

(assert (=> b!1257815 (= e!800594 (inv!16960 (xs!6839 (c!208837 x!244352))))))

(assert (=> b!1257631 (= tp!370658 (and (inv!16954 (c!208837 x!244352)) e!800594))))

(assert (= (and b!1257631 (is-Node!4128 (c!208837 x!244352))) b!1257814))

(assert (= (and b!1257631 (is-Leaf!6401 (c!208837 x!244352))) b!1257815))

(declare-fun m!1416111 () Bool)

(assert (=> b!1257814 m!1416111))

(declare-fun m!1416113 () Bool)

(assert (=> b!1257814 m!1416113))

(declare-fun m!1416115 () Bool)

(assert (=> b!1257815 m!1416115))

(assert (=> b!1257631 m!1415831))

(declare-fun tp!370678 () Bool)

(declare-fun tp!370677 () Bool)

(declare-fun b!1257816 () Bool)

(declare-fun e!800596 () Bool)

(assert (=> b!1257816 (= e!800596 (and (inv!16954 (left!10886 (c!208837 x!244351))) tp!370677 (inv!16954 (right!11216 (c!208837 x!244351))) tp!370678))))

(declare-fun b!1257817 () Bool)

(assert (=> b!1257817 (= e!800596 (inv!16960 (xs!6839 (c!208837 x!244351))))))

(assert (=> b!1257629 (= tp!370657 (and (inv!16954 (c!208837 x!244351)) e!800596))))

(assert (= (and b!1257629 (is-Node!4128 (c!208837 x!244351))) b!1257816))

(assert (= (and b!1257629 (is-Leaf!6401 (c!208837 x!244351))) b!1257817))

(declare-fun m!1416117 () Bool)

(assert (=> b!1257816 m!1416117))

(declare-fun m!1416119 () Bool)

(assert (=> b!1257816 m!1416119))

(declare-fun m!1416121 () Bool)

(assert (=> b!1257817 m!1416121))

(assert (=> b!1257629 m!1415807))

(push 1)

(assert (not b!1257719))

(assert (not d!355487))

(assert (not b!1257707))

(assert (not b!1257790))

(assert (not b!1257816))

(assert (not b!1257785))

(assert (not bm!88270))

(assert (not b!1257767))

(assert (not b!1257812))

(assert (not d!355459))

(assert (not b!1257787))

(assert (not d!355479))

(assert (not d!355471))

(assert (not b!1257815))

(assert (not b!1257788))

(assert (not bm!88269))

(assert (not b!1257759))

(assert (not b!1257629))

(assert (not b!1257799))

(assert (not d!355469))

(assert (not b!1257771))

(assert (not d!355467))

(assert (not b!1257769))

(assert (not b!1257711))

(assert (not b!1257708))

(assert (not b!1257715))

(assert (not b!1257757))

(assert (not b!1257794))

(assert (not b!1257797))

(assert (not b!1257817))

(assert (not b!1257716))

(assert (not b!1257631))

(assert (not b!1257632))

(assert (not bm!88271))

(assert (not bm!88272))

(assert (not b!1257796))

(assert (not b!1257712))

(assert (not d!355475))

(assert (not d!355461))

(assert (not b!1257813))

(assert (not b!1257720))

(assert (not d!355465))

(assert (not b!1257800))

(assert (not b!1257802))

(assert (not b!1257814))

(assert (not d!355453))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

