; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!249164 () Bool)

(assert start!249164)

(assert (=> start!249164 true))

(declare-fun b!2577684 () Bool)

(assert (=> b!2577684 true))

(assert (=> b!2577684 true))

(declare-fun b!2577685 () Bool)

(assert (=> b!2577685 true))

(declare-fun b!2577696 () Bool)

(declare-fun e!1626568 () Bool)

(declare-datatypes ((List!29755 0))(
  ( (Nil!29655) (Cons!29655 (h!35075 (_ BitVec 16)) (t!211618 List!29755)) )
))
(declare-datatypes ((IArray!18513 0))(
  ( (IArray!18514 (innerList!9314 List!29755)) )
))
(declare-datatypes ((Conc!9254 0))(
  ( (Node!9254 (left!22582 Conc!9254) (right!22912 Conc!9254) (csize!18738 Int) (cheight!9465 Int)) (Leaf!14113 (xs!12238 IArray!18513) (csize!18739 Int)) (Empty!9254) )
))
(declare-datatypes ((BalanceConc!18122 0))(
  ( (BalanceConc!18123 (c!415240 Conc!9254)) )
))
(declare-fun x!463816 () BalanceConc!18122)

(declare-fun tp!819141 () Bool)

(declare-fun inv!39981 (Conc!9254) Bool)

(assert (=> b!2577696 (= e!1626568 (and (inv!39981 (c!415240 x!463816)) tp!819141))))

(declare-datatypes ((IndentationValueInjection!20 0))(
  ( (IndentationValueInjection!21) )
))
(declare-fun thiss!5269 () IndentationValueInjection!20)

(declare-fun inst!1486 () Bool)

(declare-fun inv!39982 (BalanceConc!18122) Bool)

(declare-fun list!11203 (BalanceConc!18122) List!29755)

(declare-datatypes ((TokenValue!4718 0))(
  ( (FloatLiteralValue!9436 (text!33471 List!29755)) (TokenValueExt!4717 (__x!19237 Int)) (Broken!23590 (value!145354 List!29755)) (Object!4817) (End!4718) (Def!4718) (Underscore!4718) (Match!4718) (Else!4718) (Error!4718) (Case!4718) (If!4718) (Extends!4718) (Abstract!4718) (Class!4718) (Val!4718) (DelimiterValue!9436 (del!4778 List!29755)) (KeywordValue!4724 (value!145355 List!29755)) (CommentValue!9436 (value!145356 List!29755)) (WhitespaceValue!9436 (value!145357 List!29755)) (IndentationValue!4718 (value!145358 List!29755)) (String!32983) (Int32!4718) (Broken!23591 (value!145359 List!29755)) (Boolean!4719) (Unit!43509) (OperatorValue!4721 (op!4778 List!29755)) (IdentifierValue!9436 (value!145360 List!29755)) (IdentifierValue!9437 (value!145361 List!29755)) (WhitespaceValue!9437 (value!145362 List!29755)) (True!9436) (False!9436) (Broken!23592 (value!145363 List!29755)) (Broken!23593 (value!145364 List!29755)) (True!9437) (RightBrace!4718) (RightBracket!4718) (Colon!4718) (Null!4718) (Comma!4718) (LeftBracket!4718) (False!9437) (LeftBrace!4718) (ImaginaryLiteralValue!4718 (text!33472 List!29755)) (StringLiteralValue!14154 (value!145365 List!29755)) (EOFValue!4718 (value!145366 List!29755)) (IdentValue!4718 (value!145367 List!29755)) (DelimiterValue!9437 (value!145368 List!29755)) (DedentValue!4718 (value!145369 List!29755)) (NewLineValue!4718 (value!145370 List!29755)) (IntegerValue!14154 (value!145371 (_ BitVec 32)) (text!33473 List!29755)) (IntegerValue!14155 (value!145372 Int) (text!33474 List!29755)) (Times!4718) (Or!4718) (Equal!4718) (Minus!4718) (Broken!23594 (value!145373 List!29755)) (And!4718) (Div!4718) (LessEqual!4718) (Mod!4718) (Concat!12362) (Not!4718) (Plus!4718) (SpaceValue!4718 (value!145374 List!29755)) (IntegerValue!14156 (value!145375 Int) (text!33475 List!29755)) (StringLiteralValue!14155 (text!33476 List!29755)) (FloatLiteralValue!9437 (text!33477 List!29755)) (BytesLiteralValue!4718 (value!145376 List!29755)) (CommentValue!9437 (value!145377 List!29755)) (StringLiteralValue!14156 (value!145378 List!29755)) (ErrorTokenValue!4718 (msg!4779 List!29755)) )
))
(declare-fun toCharacters!29 (IndentationValueInjection!20 TokenValue!4718) BalanceConc!18122)

(declare-fun toValue!36 (IndentationValueInjection!20 BalanceConc!18122) TokenValue!4718)

(assert (=> start!249164 (= inst!1486 (=> (and (inv!39982 x!463816) e!1626568) (= (list!11203 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463816))) (list!11203 x!463816))))))

(assert (= start!249164 b!2577696))

(declare-fun m!2912431 () Bool)

(assert (=> b!2577696 m!2912431))

(declare-fun m!2912433 () Bool)

(assert (=> start!249164 m!2912433))

(declare-fun m!2912435 () Bool)

(assert (=> start!249164 m!2912435))

(declare-fun m!2912437 () Bool)

(assert (=> start!249164 m!2912437))

(declare-fun m!2912439 () Bool)

(assert (=> start!249164 m!2912439))

(assert (=> start!249164 m!2912435))

(declare-fun m!2912441 () Bool)

(assert (=> start!249164 m!2912441))

(assert (=> start!249164 m!2912433))

(declare-fun res!1084176 () Bool)

(declare-fun e!1626571 () Bool)

(assert (=> b!2577685 (=> res!1084176 e!1626571)))

(declare-fun x!463817 () BalanceConc!18122)

(declare-fun x!463818 () BalanceConc!18122)

(assert (=> b!2577685 (= res!1084176 (not (= (list!11203 x!463817) (list!11203 x!463818))))))

(declare-fun e!1626570 () Bool)

(declare-fun inst!1487 () Bool)

(declare-fun e!1626569 () Bool)

(assert (=> b!2577685 (= inst!1487 (=> (and (inv!39982 x!463817) e!1626570 (inv!39982 x!463818) e!1626569) e!1626571))))

(declare-fun b!2577697 () Bool)

(assert (=> b!2577697 (= e!1626571 (= (toValue!36 thiss!5269 x!463817) (toValue!36 thiss!5269 x!463818)))))

(declare-fun b!2577698 () Bool)

(declare-fun tp!819142 () Bool)

(assert (=> b!2577698 (= e!1626570 (and (inv!39981 (c!415240 x!463817)) tp!819142))))

(declare-fun b!2577699 () Bool)

(declare-fun tp!819143 () Bool)

(assert (=> b!2577699 (= e!1626569 (and (inv!39981 (c!415240 x!463818)) tp!819143))))

(assert (= (and b!2577685 (not res!1084176)) b!2577697))

(assert (= b!2577685 b!2577698))

(assert (= b!2577685 b!2577699))

(declare-fun m!2912443 () Bool)

(assert (=> b!2577685 m!2912443))

(declare-fun m!2912445 () Bool)

(assert (=> b!2577685 m!2912445))

(declare-fun m!2912447 () Bool)

(assert (=> b!2577685 m!2912447))

(declare-fun m!2912449 () Bool)

(assert (=> b!2577685 m!2912449))

(declare-fun m!2912451 () Bool)

(assert (=> b!2577697 m!2912451))

(declare-fun m!2912453 () Bool)

(assert (=> b!2577697 m!2912453))

(declare-fun m!2912455 () Bool)

(assert (=> b!2577698 m!2912455))

(declare-fun m!2912457 () Bool)

(assert (=> b!2577699 m!2912457))

(declare-fun bs!470778 () Bool)

(declare-fun neg-inst!1487 () Bool)

(declare-fun s!228484 () Bool)

(assert (= bs!470778 (and neg-inst!1487 s!228484)))

(assert (=> bs!470778 (=> true (= (list!11203 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463816))) (list!11203 x!463816)))))

(assert (=> m!2912433 m!2912435))

(assert (=> m!2912433 m!2912441))

(assert (=> m!2912433 m!2912437))

(assert (=> m!2912433 s!228484))

(assert (=> m!2912437 s!228484))

(declare-fun bs!470779 () Bool)

(assert (= bs!470779 (and neg-inst!1487 start!249164)))

(assert (=> bs!470779 (= true inst!1486)))

(declare-fun bs!470780 () Bool)

(declare-fun neg-inst!1486 () Bool)

(declare-fun s!228486 () Bool)

(assert (= bs!470780 (and neg-inst!1486 s!228486)))

(declare-fun res!1084177 () Bool)

(declare-fun e!1626572 () Bool)

(assert (=> bs!470780 (=> res!1084177 e!1626572)))

(assert (=> bs!470780 (= res!1084177 (not (= (list!11203 x!463816) (list!11203 x!463816))))))

(assert (=> bs!470780 (=> true e!1626572)))

(declare-fun b!2577700 () Bool)

(assert (=> b!2577700 (= e!1626572 (= (toValue!36 thiss!5269 x!463816) (toValue!36 thiss!5269 x!463816)))))

(assert (= (and bs!470780 (not res!1084177)) b!2577700))

(assert (=> m!2912433 m!2912437))

(assert (=> m!2912433 m!2912437))

(assert (=> m!2912433 s!228486))

(assert (=> m!2912433 s!228486))

(declare-fun bs!470781 () Bool)

(declare-fun s!228488 () Bool)

(assert (= bs!470781 (and neg-inst!1486 s!228488)))

(declare-fun res!1084178 () Bool)

(declare-fun e!1626573 () Bool)

(assert (=> bs!470781 (=> res!1084178 e!1626573)))

(assert (=> bs!470781 (= res!1084178 (not (= (list!11203 x!463817) (list!11203 x!463816))))))

(assert (=> bs!470781 (=> true e!1626573)))

(declare-fun b!2577701 () Bool)

(assert (=> b!2577701 (= e!1626573 (= (toValue!36 thiss!5269 x!463817) (toValue!36 thiss!5269 x!463816)))))

(assert (= (and bs!470781 (not res!1084178)) b!2577701))

(declare-fun bs!470782 () Bool)

(assert (= bs!470782 (and m!2912451 m!2912433)))

(assert (=> bs!470782 m!2912443))

(assert (=> bs!470782 m!2912437))

(assert (=> bs!470782 s!228488))

(declare-fun bs!470783 () Bool)

(declare-fun s!228490 () Bool)

(assert (= bs!470783 (and neg-inst!1486 s!228490)))

(declare-fun res!1084179 () Bool)

(declare-fun e!1626574 () Bool)

(assert (=> bs!470783 (=> res!1084179 e!1626574)))

(assert (=> bs!470783 (= res!1084179 (not (= (list!11203 x!463817) (list!11203 x!463817))))))

(assert (=> bs!470783 (=> true e!1626574)))

(declare-fun b!2577702 () Bool)

(assert (=> b!2577702 (= e!1626574 (= (toValue!36 thiss!5269 x!463817) (toValue!36 thiss!5269 x!463817)))))

(assert (= (and bs!470783 (not res!1084179)) b!2577702))

(assert (=> m!2912451 m!2912443))

(assert (=> m!2912451 m!2912443))

(assert (=> m!2912451 s!228490))

(declare-fun bs!470784 () Bool)

(declare-fun s!228492 () Bool)

(assert (= bs!470784 (and neg-inst!1486 s!228492)))

(declare-fun res!1084180 () Bool)

(declare-fun e!1626575 () Bool)

(assert (=> bs!470784 (=> res!1084180 e!1626575)))

(assert (=> bs!470784 (= res!1084180 (not (= (list!11203 x!463816) (list!11203 x!463817))))))

(assert (=> bs!470784 (=> true e!1626575)))

(declare-fun b!2577703 () Bool)

(assert (=> b!2577703 (= e!1626575 (= (toValue!36 thiss!5269 x!463816) (toValue!36 thiss!5269 x!463817)))))

(assert (= (and bs!470784 (not res!1084180)) b!2577703))

(assert (=> bs!470782 m!2912437))

(assert (=> bs!470782 m!2912443))

(assert (=> bs!470782 s!228492))

(assert (=> m!2912451 s!228490))

(declare-fun bs!470785 () Bool)

(assert (= bs!470785 (and m!2912437 m!2912451)))

(assert (=> bs!470785 s!228492))

(declare-fun bs!470786 () Bool)

(assert (= bs!470786 (and m!2912437 m!2912433)))

(assert (=> bs!470786 s!228486))

(assert (=> m!2912437 s!228486))

(assert (=> bs!470785 s!228488))

(assert (=> bs!470786 s!228486))

(assert (=> m!2912437 s!228486))

(declare-fun bs!470787 () Bool)

(declare-fun s!228494 () Bool)

(assert (= bs!470787 (and neg-inst!1486 s!228494)))

(declare-fun res!1084181 () Bool)

(declare-fun e!1626576 () Bool)

(assert (=> bs!470787 (=> res!1084181 e!1626576)))

(assert (=> bs!470787 (= res!1084181 (not (= (list!11203 x!463818) (list!11203 x!463817))))))

(assert (=> bs!470787 (=> true e!1626576)))

(declare-fun b!2577704 () Bool)

(assert (=> b!2577704 (= e!1626576 (= (toValue!36 thiss!5269 x!463818) (toValue!36 thiss!5269 x!463817)))))

(assert (= (and bs!470787 (not res!1084181)) b!2577704))

(declare-fun bs!470788 () Bool)

(assert (= bs!470788 (and m!2912445 m!2912451)))

(assert (=> bs!470788 m!2912445))

(assert (=> bs!470788 m!2912443))

(assert (=> bs!470788 s!228494))

(declare-fun bs!470789 () Bool)

(declare-fun s!228496 () Bool)

(assert (= bs!470789 (and neg-inst!1486 s!228496)))

(declare-fun res!1084182 () Bool)

(declare-fun e!1626577 () Bool)

(assert (=> bs!470789 (=> res!1084182 e!1626577)))

(assert (=> bs!470789 (= res!1084182 (not (= (list!11203 x!463818) (list!11203 x!463816))))))

(assert (=> bs!470789 (=> true e!1626577)))

(declare-fun b!2577705 () Bool)

(assert (=> b!2577705 (= e!1626577 (= (toValue!36 thiss!5269 x!463818) (toValue!36 thiss!5269 x!463816)))))

(assert (= (and bs!470789 (not res!1084182)) b!2577705))

(declare-fun bs!470790 () Bool)

(assert (= bs!470790 (and m!2912445 m!2912433 m!2912437)))

(assert (=> bs!470790 m!2912445))

(assert (=> bs!470790 m!2912437))

(assert (=> bs!470790 s!228496))

(declare-fun bs!470791 () Bool)

(declare-fun s!228498 () Bool)

(assert (= bs!470791 (and neg-inst!1486 s!228498)))

(declare-fun res!1084183 () Bool)

(declare-fun e!1626578 () Bool)

(assert (=> bs!470791 (=> res!1084183 e!1626578)))

(assert (=> bs!470791 (= res!1084183 (not (= (list!11203 x!463818) (list!11203 x!463818))))))

(assert (=> bs!470791 (=> true e!1626578)))

(declare-fun b!2577706 () Bool)

(assert (=> b!2577706 (= e!1626578 (= (toValue!36 thiss!5269 x!463818) (toValue!36 thiss!5269 x!463818)))))

(assert (= (and bs!470791 (not res!1084183)) b!2577706))

(assert (=> m!2912445 s!228498))

(declare-fun bs!470792 () Bool)

(declare-fun s!228500 () Bool)

(assert (= bs!470792 (and neg-inst!1486 s!228500)))

(declare-fun res!1084184 () Bool)

(declare-fun e!1626579 () Bool)

(assert (=> bs!470792 (=> res!1084184 e!1626579)))

(assert (=> bs!470792 (= res!1084184 (not (= (list!11203 x!463817) (list!11203 x!463818))))))

(assert (=> bs!470792 (=> true e!1626579)))

(declare-fun b!2577707 () Bool)

(assert (=> b!2577707 (= e!1626579 (= (toValue!36 thiss!5269 x!463817) (toValue!36 thiss!5269 x!463818)))))

(assert (= (and bs!470792 (not res!1084184)) b!2577707))

(assert (=> bs!470788 m!2912443))

(assert (=> bs!470788 m!2912445))

(assert (=> bs!470788 s!228500))

(declare-fun bs!470793 () Bool)

(declare-fun s!228502 () Bool)

(assert (= bs!470793 (and neg-inst!1486 s!228502)))

(declare-fun res!1084185 () Bool)

(declare-fun e!1626580 () Bool)

(assert (=> bs!470793 (=> res!1084185 e!1626580)))

(assert (=> bs!470793 (= res!1084185 (not (= (list!11203 x!463816) (list!11203 x!463818))))))

(assert (=> bs!470793 (=> true e!1626580)))

(declare-fun b!2577708 () Bool)

(assert (=> b!2577708 (= e!1626580 (= (toValue!36 thiss!5269 x!463816) (toValue!36 thiss!5269 x!463818)))))

(assert (= (and bs!470793 (not res!1084185)) b!2577708))

(assert (=> bs!470790 m!2912437))

(assert (=> bs!470790 m!2912445))

(assert (=> bs!470790 s!228502))

(assert (=> m!2912445 s!228498))

(declare-fun bs!470794 () Bool)

(declare-fun s!228504 () Bool)

(assert (= bs!470794 (and neg-inst!1486 s!228504)))

(declare-fun res!1084186 () Bool)

(declare-fun e!1626581 () Bool)

(assert (=> bs!470794 (=> res!1084186 e!1626581)))

(assert (=> bs!470794 (= res!1084186 (not (= (list!11203 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463816))) (list!11203 x!463817))))))

(assert (=> bs!470794 (=> true e!1626581)))

(declare-fun b!2577709 () Bool)

(assert (=> b!2577709 (= e!1626581 (= (toValue!36 thiss!5269 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463816))) (toValue!36 thiss!5269 x!463817)))))

(assert (= (and bs!470794 (not res!1084186)) b!2577709))

(declare-fun bs!470795 () Bool)

(assert (= bs!470795 (and m!2912441 m!2912451)))

(assert (=> bs!470795 m!2912441))

(assert (=> bs!470795 m!2912443))

(assert (=> bs!470795 s!228504))

(declare-fun bs!470796 () Bool)

(declare-fun s!228506 () Bool)

(assert (= bs!470796 (and neg-inst!1486 s!228506)))

(declare-fun res!1084187 () Bool)

(declare-fun e!1626582 () Bool)

(assert (=> bs!470796 (=> res!1084187 e!1626582)))

(assert (=> bs!470796 (= res!1084187 (not (= (list!11203 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463816))) (list!11203 x!463816))))))

(assert (=> bs!470796 (=> true e!1626582)))

(declare-fun b!2577710 () Bool)

(assert (=> b!2577710 (= e!1626582 (= (toValue!36 thiss!5269 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463816))) (toValue!36 thiss!5269 x!463816)))))

(assert (= (and bs!470796 (not res!1084187)) b!2577710))

(declare-fun bs!470797 () Bool)

(assert (= bs!470797 (and m!2912441 m!2912433 m!2912437)))

(assert (=> bs!470797 m!2912441))

(assert (=> bs!470797 m!2912437))

(assert (=> bs!470797 s!228506))

(declare-fun bs!470798 () Bool)

(declare-fun s!228508 () Bool)

(assert (= bs!470798 (and neg-inst!1486 s!228508)))

(declare-fun res!1084188 () Bool)

(declare-fun e!1626583 () Bool)

(assert (=> bs!470798 (=> res!1084188 e!1626583)))

(assert (=> bs!470798 (= res!1084188 (not (= (list!11203 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463816))) (list!11203 x!463818))))))

(assert (=> bs!470798 (=> true e!1626583)))

(declare-fun b!2577711 () Bool)

(assert (=> b!2577711 (= e!1626583 (= (toValue!36 thiss!5269 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463816))) (toValue!36 thiss!5269 x!463818)))))

(assert (= (and bs!470798 (not res!1084188)) b!2577711))

(declare-fun bs!470799 () Bool)

(assert (= bs!470799 (and m!2912441 m!2912445)))

(assert (=> bs!470799 m!2912441))

(assert (=> bs!470799 m!2912445))

(assert (=> bs!470799 s!228508))

(declare-fun bs!470800 () Bool)

(declare-fun s!228510 () Bool)

(assert (= bs!470800 (and neg-inst!1486 s!228510)))

(declare-fun res!1084189 () Bool)

(declare-fun e!1626584 () Bool)

(assert (=> bs!470800 (=> res!1084189 e!1626584)))

(assert (=> bs!470800 (= res!1084189 (not (= (list!11203 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463816))) (list!11203 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463816))))))))

(assert (=> bs!470800 (=> true e!1626584)))

(declare-fun b!2577712 () Bool)

(assert (=> b!2577712 (= e!1626584 (= (toValue!36 thiss!5269 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463816))) (toValue!36 thiss!5269 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463816)))))))

(assert (= (and bs!470800 (not res!1084189)) b!2577712))

(assert (=> m!2912441 s!228510))

(declare-fun bs!470801 () Bool)

(declare-fun s!228512 () Bool)

(assert (= bs!470801 (and neg-inst!1486 s!228512)))

(declare-fun res!1084190 () Bool)

(declare-fun e!1626585 () Bool)

(assert (=> bs!470801 (=> res!1084190 e!1626585)))

(assert (=> bs!470801 (= res!1084190 (not (= (list!11203 x!463817) (list!11203 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463816))))))))

(assert (=> bs!470801 (=> true e!1626585)))

(declare-fun b!2577713 () Bool)

(assert (=> b!2577713 (= e!1626585 (= (toValue!36 thiss!5269 x!463817) (toValue!36 thiss!5269 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463816)))))))

(assert (= (and bs!470801 (not res!1084190)) b!2577713))

(assert (=> bs!470795 m!2912443))

(assert (=> bs!470795 m!2912441))

(assert (=> bs!470795 s!228512))

(declare-fun bs!470802 () Bool)

(declare-fun s!228514 () Bool)

(assert (= bs!470802 (and neg-inst!1486 s!228514)))

(declare-fun res!1084191 () Bool)

(declare-fun e!1626586 () Bool)

(assert (=> bs!470802 (=> res!1084191 e!1626586)))

(assert (=> bs!470802 (= res!1084191 (not (= (list!11203 x!463816) (list!11203 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463816))))))))

(assert (=> bs!470802 (=> true e!1626586)))

(declare-fun b!2577714 () Bool)

(assert (=> b!2577714 (= e!1626586 (= (toValue!36 thiss!5269 x!463816) (toValue!36 thiss!5269 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463816)))))))

(assert (= (and bs!470802 (not res!1084191)) b!2577714))

(assert (=> bs!470797 m!2912437))

(assert (=> bs!470797 m!2912441))

(assert (=> bs!470797 s!228514))

(declare-fun bs!470803 () Bool)

(declare-fun s!228516 () Bool)

(assert (= bs!470803 (and neg-inst!1486 s!228516)))

(declare-fun res!1084192 () Bool)

(declare-fun e!1626587 () Bool)

(assert (=> bs!470803 (=> res!1084192 e!1626587)))

(assert (=> bs!470803 (= res!1084192 (not (= (list!11203 x!463818) (list!11203 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463816))))))))

(assert (=> bs!470803 (=> true e!1626587)))

(declare-fun b!2577715 () Bool)

(assert (=> b!2577715 (= e!1626587 (= (toValue!36 thiss!5269 x!463818) (toValue!36 thiss!5269 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463816)))))))

(assert (= (and bs!470803 (not res!1084192)) b!2577715))

(assert (=> bs!470799 m!2912445))

(assert (=> bs!470799 m!2912441))

(assert (=> bs!470799 s!228516))

(assert (=> m!2912441 s!228510))

(declare-fun bs!470804 () Bool)

(assert (= bs!470804 (and m!2912453 m!2912433 m!2912437)))

(assert (=> bs!470804 s!228496))

(assert (=> m!2912453 s!228498))

(declare-fun bs!470805 () Bool)

(assert (= bs!470805 (and m!2912453 m!2912451)))

(assert (=> bs!470805 s!228494))

(declare-fun bs!470806 () Bool)

(assert (= bs!470806 (and m!2912453 m!2912445)))

(assert (=> bs!470806 s!228498))

(declare-fun bs!470807 () Bool)

(assert (= bs!470807 (and m!2912453 m!2912441)))

(assert (=> bs!470807 s!228516))

(assert (=> bs!470804 s!228502))

(assert (=> bs!470806 s!228498))

(assert (=> bs!470807 s!228508))

(assert (=> m!2912453 s!228498))

(assert (=> bs!470805 s!228500))

(declare-fun bs!470808 () Bool)

(assert (= bs!470808 (and m!2912443 m!2912441)))

(assert (=> bs!470808 s!228512))

(declare-fun bs!470809 () Bool)

(assert (= bs!470809 (and m!2912443 m!2912445 m!2912453)))

(assert (=> bs!470809 s!228500))

(declare-fun bs!470810 () Bool)

(assert (= bs!470810 (and m!2912443 m!2912451)))

(assert (=> bs!470810 s!228490))

(declare-fun bs!470811 () Bool)

(assert (= bs!470811 (and m!2912443 m!2912433 m!2912437)))

(assert (=> bs!470811 s!228488))

(assert (=> m!2912443 s!228490))

(assert (=> m!2912443 s!228490))

(assert (=> bs!470809 s!228494))

(assert (=> bs!470811 s!228492))

(assert (=> bs!470808 s!228504))

(assert (=> bs!470810 s!228490))

(declare-fun bs!470812 () Bool)

(assert (= bs!470812 (and neg-inst!1486 b!2577685)))

(assert (=> bs!470812 (= true inst!1487)))

(declare-fun e!1626566 () Bool)

(declare-fun e!1626564 () Bool)

(assert (=> b!2577685 (= e!1626566 e!1626564)))

(declare-fun res!1084173 () Bool)

(assert (=> b!2577685 (=> res!1084173 e!1626564)))

(declare-fun lambda!95259 () Int)

(declare-fun Forall2!758 (Int) Bool)

(assert (=> b!2577685 (= res!1084173 (not (Forall2!758 lambda!95259)))))

(assert (=> b!2577685 (= (Forall2!758 lambda!95259) inst!1487)))

(declare-fun b!2577687 () Bool)

(declare-fun e!1626567 () Bool)

(declare-fun lambda!95258 () Int)

(declare-fun lambda!95257 () Int)

(declare-datatypes ((TokenValueInjection!8896 0))(
  ( (TokenValueInjection!8897 (toValue!6382 Int) (toChars!6241 Int)) )
))
(declare-fun inv!39983 (TokenValueInjection!8896) Bool)

(assert (=> b!2577687 (= e!1626567 (inv!39983 (TokenValueInjection!8897 lambda!95258 lambda!95257)))))

(declare-fun e!1626565 () Bool)

(assert (=> b!2577684 (= e!1626565 e!1626566)))

(declare-fun res!1084172 () Bool)

(assert (=> b!2577684 (=> res!1084172 e!1626566)))

(declare-fun semiInverseModEq!1875 (Int Int) Bool)

(assert (=> b!2577684 (= res!1084172 (not (semiInverseModEq!1875 lambda!95257 lambda!95258)))))

(declare-fun lambda!95256 () Int)

(declare-fun Forall!1157 (Int) Bool)

(assert (=> b!2577684 (= (semiInverseModEq!1875 lambda!95257 lambda!95258) (Forall!1157 lambda!95256))))

(declare-fun res!1084174 () Bool)

(assert (=> start!249164 (=> res!1084174 e!1626565)))

(assert (=> start!249164 (= res!1084174 (not (Forall!1157 lambda!95256)))))

(assert (=> start!249164 (= (Forall!1157 lambda!95256) inst!1486)))

(assert (=> start!249164 (not e!1626565)))

(assert (=> start!249164 true))

(declare-fun b!2577686 () Bool)

(assert (=> b!2577686 (= e!1626564 e!1626567)))

(declare-fun res!1084175 () Bool)

(assert (=> b!2577686 (=> res!1084175 e!1626567)))

(declare-fun equivClasses!1778 (Int Int) Bool)

(assert (=> b!2577686 (= res!1084175 (not (equivClasses!1778 lambda!95257 lambda!95258)))))

(assert (=> b!2577686 (= (equivClasses!1778 lambda!95257 lambda!95258) (Forall2!758 lambda!95259))))

(assert (= neg-inst!1487 inst!1486))

(assert (= (and start!249164 (not res!1084174)) b!2577684))

(assert (= (and b!2577684 (not res!1084172)) b!2577685))

(assert (= neg-inst!1486 inst!1487))

(assert (= (and b!2577685 (not res!1084173)) b!2577686))

(assert (= (and b!2577686 (not res!1084175)) b!2577687))

(declare-fun m!2912459 () Bool)

(assert (=> start!249164 m!2912459))

(assert (=> start!249164 m!2912459))

(declare-fun m!2912461 () Bool)

(assert (=> b!2577685 m!2912461))

(assert (=> b!2577685 m!2912461))

(declare-fun m!2912463 () Bool)

(assert (=> b!2577686 m!2912463))

(assert (=> b!2577686 m!2912463))

(assert (=> b!2577686 m!2912461))

(declare-fun m!2912465 () Bool)

(assert (=> b!2577684 m!2912465))

(assert (=> b!2577684 m!2912465))

(assert (=> b!2577684 m!2912459))

(declare-fun m!2912467 () Bool)

(assert (=> b!2577687 m!2912467))

(push 1)

(assert (not b!2577696))

(assert (not b!2577709))

(assert (not b!2577684))

(assert (not bs!470802))

(assert (not bs!470792))

(assert (not b!2577706))

(assert (not b!2577713))

(assert (not bs!470800))

(assert (not bs!470803))

(assert (not start!249164))

(assert (not bs!470783))

(assert (not bs!470796))

(assert (not b!2577701))

(assert (not bs!470781))

(assert (not b!2577699))

(assert (not b!2577715))

(assert (not b!2577714))

(assert (not bs!470793))

(assert (not b!2577697))

(assert (not b!2577707))

(assert (not b!2577685))

(assert (not b!2577712))

(assert (not b!2577687))

(assert (not b!2577702))

(assert (not bs!470801))

(assert (not b!2577703))

(assert (not b!2577711))

(assert (not bs!470798))

(assert (not b!2577708))

(assert (not bs!470787))

(assert (not bs!470780))

(assert (not b!2577698))

(assert (not bs!470784))

(assert (not bs!470778))

(assert (not b!2577700))

(assert (not bs!470794))

(assert (not b!2577710))

(assert (not b!2577705))

(assert (not b!2577704))

(assert (not bs!470789))

(assert (not b!2577686))

(assert (not bs!470791))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!470846 () Bool)

(assert (= bs!470846 (and m!2912433 b!2577700)))

(assert (=> bs!470846 m!2912433))

(assert (=> bs!470846 m!2912433))

(declare-fun bs!470847 () Bool)

(assert (= bs!470847 (and m!2912451 m!2912433 b!2577701)))

(assert (=> bs!470847 m!2912451))

(assert (=> bs!470847 m!2912433))

(declare-fun bs!470848 () Bool)

(assert (= bs!470848 (and m!2912451 b!2577702)))

(assert (=> bs!470848 m!2912451))

(assert (=> bs!470848 m!2912451))

(declare-fun bs!470849 () Bool)

(assert (= bs!470849 (and m!2912451 m!2912433 b!2577703)))

(assert (=> bs!470849 m!2912433))

(assert (=> bs!470849 m!2912451))

(declare-fun bs!470850 () Bool)

(assert (= bs!470850 (and m!2912445 m!2912451 b!2577704)))

(assert (=> bs!470850 m!2912453))

(assert (=> bs!470850 m!2912451))

(declare-fun bs!470851 () Bool)

(assert (= bs!470851 (and m!2912445 m!2912433 m!2912437 b!2577705)))

(assert (=> bs!470851 m!2912453))

(assert (=> bs!470851 m!2912433))

(declare-fun bs!470852 () Bool)

(assert (= bs!470852 (and m!2912445 b!2577706)))

(assert (=> bs!470852 m!2912453))

(assert (=> bs!470852 m!2912453))

(declare-fun bs!470853 () Bool)

(assert (= bs!470853 (and m!2912445 m!2912451 b!2577707)))

(assert (=> bs!470853 m!2912451))

(assert (=> bs!470853 m!2912453))

(declare-fun bs!470854 () Bool)

(assert (= bs!470854 (and m!2912445 m!2912433 m!2912437 b!2577708)))

(assert (=> bs!470854 m!2912433))

(assert (=> bs!470854 m!2912453))

(declare-fun bs!470855 () Bool)

(assert (= bs!470855 (and m!2912441 m!2912451 b!2577709)))

(declare-fun m!2912507 () Bool)

(assert (=> bs!470855 m!2912507))

(assert (=> bs!470855 m!2912451))

(declare-fun bs!470856 () Bool)

(assert (= bs!470856 (and m!2912441 m!2912433 m!2912437 b!2577710)))

(assert (=> bs!470856 m!2912507))

(assert (=> bs!470856 m!2912433))

(declare-fun bs!470857 () Bool)

(assert (= bs!470857 (and m!2912441 m!2912445 b!2577711)))

(assert (=> bs!470857 m!2912507))

(assert (=> bs!470857 m!2912453))

(declare-fun bs!470858 () Bool)

(assert (= bs!470858 (and m!2912441 b!2577712)))

(assert (=> bs!470858 m!2912507))

(assert (=> bs!470858 m!2912507))

(declare-fun bs!470859 () Bool)

(assert (= bs!470859 (and m!2912441 m!2912451 b!2577713)))

(assert (=> bs!470859 m!2912451))

(assert (=> bs!470859 m!2912507))

(declare-fun bs!470860 () Bool)

(assert (= bs!470860 (and m!2912441 m!2912433 m!2912437 b!2577714)))

(assert (=> bs!470860 m!2912433))

(assert (=> bs!470860 m!2912507))

(declare-fun bs!470861 () Bool)

(assert (= bs!470861 (and m!2912441 m!2912445 b!2577715)))

(assert (=> bs!470861 m!2912453))

(assert (=> bs!470861 m!2912507))

(push 1)

(assert (not b!2577696))

(assert (not b!2577709))

(assert (not b!2577684))

(assert (not bs!470802))

(assert (not bs!470792))

(assert (not b!2577706))

(assert (not b!2577713))

(assert (not bs!470800))

(assert (not bs!470803))

(assert (not start!249164))

(assert (not bs!470783))

(assert (not bs!470796))

(assert (not b!2577701))

(assert (not bs!470781))

(assert (not b!2577699))

(assert (not b!2577715))

(assert (not b!2577714))

(assert (not bs!470793))

(assert (not b!2577697))

(assert (not b!2577707))

(assert (not b!2577685))

(assert (not b!2577712))

(assert (not b!2577687))

(assert (not b!2577702))

(assert (not bs!470801))

(assert (not b!2577703))

(assert (not b!2577711))

(assert (not bs!470798))

(assert (not b!2577708))

(assert (not bs!470787))

(assert (not bs!470780))

(assert (not b!2577698))

(assert (not bs!470784))

(assert (not bs!470778))

(assert (not b!2577700))

(assert (not bs!470794))

(assert (not b!2577710))

(assert (not b!2577705))

(assert (not b!2577704))

(assert (not bs!470789))

(assert (not b!2577686))

(assert (not bs!470791))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!729079 () Bool)

(declare-fun efficientList!375 (BalanceConc!18122) List!29755)

(assert (=> d!729079 (= (toValue!36 thiss!5269 x!463818) (IndentationValue!4718 (efficientList!375 x!463818)))))

(declare-fun bs!470878 () Bool)

(assert (= bs!470878 d!729079))

(declare-fun m!2912511 () Bool)

(assert (=> bs!470878 m!2912511))

(assert (=> b!2577705 d!729079))

(declare-fun d!729081 () Bool)

(assert (=> d!729081 (= (toValue!36 thiss!5269 x!463816) (IndentationValue!4718 (efficientList!375 x!463816)))))

(declare-fun bs!470879 () Bool)

(assert (= bs!470879 d!729081))

(declare-fun m!2912513 () Bool)

(assert (=> bs!470879 m!2912513))

(assert (=> b!2577705 d!729081))

(assert (=> b!2577715 d!729079))

(declare-fun d!729083 () Bool)

(assert (=> d!729083 (= (toValue!36 thiss!5269 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463816))) (IndentationValue!4718 (efficientList!375 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463816)))))))

(declare-fun bs!470880 () Bool)

(assert (= bs!470880 d!729083))

(assert (=> bs!470880 m!2912435))

(declare-fun m!2912515 () Bool)

(assert (=> bs!470880 m!2912515))

(assert (=> b!2577715 d!729083))

(declare-fun d!729085 () Bool)

(assert (=> d!729085 (= (toValue!36 thiss!5269 x!463817) (IndentationValue!4718 (efficientList!375 x!463817)))))

(declare-fun bs!470881 () Bool)

(assert (= bs!470881 d!729085))

(declare-fun m!2912517 () Bool)

(assert (=> bs!470881 m!2912517))

(assert (=> b!2577702 d!729085))

(declare-fun d!729087 () Bool)

(declare-fun list!11205 (Conc!9254) List!29755)

(assert (=> d!729087 (= (list!11203 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463816))) (list!11205 (c!415240 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463816)))))))

(declare-fun bs!470882 () Bool)

(assert (= bs!470882 d!729087))

(declare-fun m!2912519 () Bool)

(assert (=> bs!470882 m!2912519))

(assert (=> bs!470800 d!729087))

(assert (=> bs!470794 d!729087))

(declare-fun d!729089 () Bool)

(assert (=> d!729089 (= (list!11203 x!463817) (list!11205 (c!415240 x!463817)))))

(declare-fun bs!470883 () Bool)

(assert (= bs!470883 d!729089))

(declare-fun m!2912521 () Bool)

(assert (=> bs!470883 m!2912521))

(assert (=> bs!470794 d!729089))

(declare-fun d!729091 () Bool)

(declare-fun c!415244 () Bool)

(assert (=> d!729091 (= c!415244 (is-Node!9254 (c!415240 x!463817)))))

(declare-fun e!1626640 () Bool)

(assert (=> d!729091 (= (inv!39981 (c!415240 x!463817)) e!1626640)))

(declare-fun b!2577778 () Bool)

(declare-fun inv!39987 (Conc!9254) Bool)

(assert (=> b!2577778 (= e!1626640 (inv!39987 (c!415240 x!463817)))))

(declare-fun b!2577779 () Bool)

(declare-fun e!1626641 () Bool)

(assert (=> b!2577779 (= e!1626640 e!1626641)))

(declare-fun res!1084242 () Bool)

(assert (=> b!2577779 (= res!1084242 (not (is-Leaf!14113 (c!415240 x!463817))))))

(assert (=> b!2577779 (=> res!1084242 e!1626641)))

(declare-fun b!2577780 () Bool)

(declare-fun inv!39988 (Conc!9254) Bool)

(assert (=> b!2577780 (= e!1626641 (inv!39988 (c!415240 x!463817)))))

(assert (= (and d!729091 c!415244) b!2577778))

(assert (= (and d!729091 (not c!415244)) b!2577779))

(assert (= (and b!2577779 (not res!1084242)) b!2577780))

(declare-fun m!2912523 () Bool)

(assert (=> b!2577778 m!2912523))

(declare-fun m!2912525 () Bool)

(assert (=> b!2577780 m!2912525))

(assert (=> b!2577698 d!729091))

(declare-fun d!729093 () Bool)

(assert (=> d!729093 (= (list!11203 x!463816) (list!11205 (c!415240 x!463816)))))

(declare-fun bs!470884 () Bool)

(assert (= bs!470884 d!729093))

(declare-fun m!2912527 () Bool)

(assert (=> bs!470884 m!2912527))

(assert (=> bs!470784 d!729093))

(assert (=> bs!470784 d!729089))

(assert (=> b!2577712 d!729083))

(assert (=> b!2577709 d!729083))

(assert (=> b!2577709 d!729085))

(declare-fun d!729095 () Bool)

(declare-fun c!415245 () Bool)

(assert (=> d!729095 (= c!415245 (is-Node!9254 (c!415240 x!463816)))))

(declare-fun e!1626642 () Bool)

(assert (=> d!729095 (= (inv!39981 (c!415240 x!463816)) e!1626642)))

(declare-fun b!2577781 () Bool)

(assert (=> b!2577781 (= e!1626642 (inv!39987 (c!415240 x!463816)))))

(declare-fun b!2577782 () Bool)

(declare-fun e!1626643 () Bool)

(assert (=> b!2577782 (= e!1626642 e!1626643)))

(declare-fun res!1084243 () Bool)

(assert (=> b!2577782 (= res!1084243 (not (is-Leaf!14113 (c!415240 x!463816))))))

(assert (=> b!2577782 (=> res!1084243 e!1626643)))

(declare-fun b!2577783 () Bool)

(assert (=> b!2577783 (= e!1626643 (inv!39988 (c!415240 x!463816)))))

(assert (= (and d!729095 c!415245) b!2577781))

(assert (= (and d!729095 (not c!415245)) b!2577782))

(assert (= (and b!2577782 (not res!1084243)) b!2577783))

(declare-fun m!2912529 () Bool)

(assert (=> b!2577781 m!2912529))

(declare-fun m!2912531 () Bool)

(assert (=> b!2577783 m!2912531))

(assert (=> b!2577696 d!729095))

(assert (=> bs!470778 d!729087))

(declare-fun d!729097 () Bool)

(declare-fun c!415249 () Bool)

(assert (=> d!729097 (= c!415249 (is-IndentationValue!4718 (toValue!36 thiss!5269 x!463816)))))

(declare-fun e!1626646 () BalanceConc!18122)

(assert (=> d!729097 (= (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463816)) e!1626646)))

(declare-fun b!2577788 () Bool)

(declare-fun seqFromList!3144 (List!29755) BalanceConc!18122)

(assert (=> b!2577788 (= e!1626646 (seqFromList!3144 (value!145358 (toValue!36 thiss!5269 x!463816))))))

(declare-fun b!2577789 () Bool)

(assert (=> b!2577789 (= e!1626646 (BalanceConc!18123 Empty!9254))))

(assert (= (and d!729097 c!415249) b!2577788))

(assert (= (and d!729097 (not c!415249)) b!2577789))

(declare-fun m!2912533 () Bool)

(assert (=> b!2577788 m!2912533))

(assert (=> bs!470778 d!729097))

(assert (=> bs!470778 d!729081))

(assert (=> bs!470778 d!729093))

(assert (=> b!2577697 d!729085))

(assert (=> b!2577697 d!729079))

(assert (=> bs!470780 d!729093))

(declare-fun bs!470885 () Bool)

(declare-fun d!729099 () Bool)

(assert (= bs!470885 (and d!729099 b!2577685)))

(declare-fun lambda!95298 () Int)

(assert (=> bs!470885 (not (= lambda!95298 lambda!95259))))

(assert (=> d!729099 true))

(declare-fun order!15783 () Int)

(declare-fun order!15781 () Int)

(declare-fun dynLambda!12526 (Int Int) Int)

(declare-fun dynLambda!12527 (Int Int) Int)

(assert (=> d!729099 (< (dynLambda!12526 order!15781 lambda!95258) (dynLambda!12527 order!15783 lambda!95298))))

(assert (=> d!729099 (= (equivClasses!1778 lambda!95257 lambda!95258) (Forall2!758 lambda!95298))))

(declare-fun bs!470886 () Bool)

(assert (= bs!470886 d!729099))

(declare-fun m!2912535 () Bool)

(assert (=> bs!470886 m!2912535))

(assert (=> b!2577686 d!729099))

(declare-fun d!729101 () Bool)

(declare-fun choose!15202 (Int) Bool)

(assert (=> d!729101 (= (Forall2!758 lambda!95259) (choose!15202 lambda!95259))))

(declare-fun bs!470887 () Bool)

(assert (= bs!470887 d!729101))

(declare-fun m!2912537 () Bool)

(assert (=> bs!470887 m!2912537))

(assert (=> b!2577686 d!729101))

(assert (=> b!2577703 d!729081))

(assert (=> b!2577703 d!729085))

(assert (=> bs!470801 d!729089))

(assert (=> bs!470801 d!729087))

(declare-fun bs!470888 () Bool)

(declare-fun d!729103 () Bool)

(assert (= bs!470888 (and d!729103 start!249164)))

(declare-fun lambda!95301 () Int)

(assert (=> bs!470888 (not (= lambda!95301 lambda!95256))))

(assert (=> d!729103 true))

(declare-fun order!15787 () Int)

(declare-fun order!15785 () Int)

(declare-fun dynLambda!12528 (Int Int) Int)

(declare-fun dynLambda!12529 (Int Int) Int)

(assert (=> d!729103 (< (dynLambda!12528 order!15785 lambda!95257) (dynLambda!12529 order!15787 lambda!95301))))

(assert (=> d!729103 true))

(assert (=> d!729103 (< (dynLambda!12526 order!15781 lambda!95258) (dynLambda!12529 order!15787 lambda!95301))))

(assert (=> d!729103 (= (semiInverseModEq!1875 lambda!95257 lambda!95258) (Forall!1157 lambda!95301))))

(declare-fun bs!470889 () Bool)

(assert (= bs!470889 d!729103))

(declare-fun m!2912539 () Bool)

(assert (=> bs!470889 m!2912539))

(assert (=> b!2577684 d!729103))

(declare-fun d!729107 () Bool)

(declare-fun choose!15203 (Int) Bool)

(assert (=> d!729107 (= (Forall!1157 lambda!95256) (choose!15203 lambda!95256))))

(declare-fun bs!470890 () Bool)

(assert (= bs!470890 d!729107))

(declare-fun m!2912541 () Bool)

(assert (=> bs!470890 m!2912541))

(assert (=> b!2577684 d!729107))

(declare-fun d!729109 () Bool)

(declare-fun c!415250 () Bool)

(assert (=> d!729109 (= c!415250 (is-Node!9254 (c!415240 x!463818)))))

(declare-fun e!1626649 () Bool)

(assert (=> d!729109 (= (inv!39981 (c!415240 x!463818)) e!1626649)))

(declare-fun b!2577798 () Bool)

(assert (=> b!2577798 (= e!1626649 (inv!39987 (c!415240 x!463818)))))

(declare-fun b!2577799 () Bool)

(declare-fun e!1626650 () Bool)

(assert (=> b!2577799 (= e!1626649 e!1626650)))

(declare-fun res!1084246 () Bool)

(assert (=> b!2577799 (= res!1084246 (not (is-Leaf!14113 (c!415240 x!463818))))))

(assert (=> b!2577799 (=> res!1084246 e!1626650)))

(declare-fun b!2577800 () Bool)

(assert (=> b!2577800 (= e!1626650 (inv!39988 (c!415240 x!463818)))))

(assert (= (and d!729109 c!415250) b!2577798))

(assert (= (and d!729109 (not c!415250)) b!2577799))

(assert (= (and b!2577799 (not res!1084246)) b!2577800))

(declare-fun m!2912543 () Bool)

(assert (=> b!2577798 m!2912543))

(declare-fun m!2912545 () Bool)

(assert (=> b!2577800 m!2912545))

(assert (=> b!2577699 d!729109))

(declare-fun d!729111 () Bool)

(assert (=> d!729111 (= (list!11203 x!463818) (list!11205 (c!415240 x!463818)))))

(declare-fun bs!470891 () Bool)

(assert (= bs!470891 d!729111))

(declare-fun m!2912547 () Bool)

(assert (=> bs!470891 m!2912547))

(assert (=> bs!470791 d!729111))

(declare-fun d!729113 () Bool)

(declare-fun isBalanced!2815 (Conc!9254) Bool)

(assert (=> d!729113 (= (inv!39982 x!463818) (isBalanced!2815 (c!415240 x!463818)))))

(declare-fun bs!470892 () Bool)

(assert (= bs!470892 d!729113))

(declare-fun m!2912549 () Bool)

(assert (=> bs!470892 m!2912549))

(assert (=> b!2577685 d!729113))

(declare-fun d!729115 () Bool)

(assert (=> d!729115 (= (inv!39982 x!463817) (isBalanced!2815 (c!415240 x!463817)))))

(declare-fun bs!470893 () Bool)

(assert (= bs!470893 d!729115))

(declare-fun m!2912551 () Bool)

(assert (=> bs!470893 m!2912551))

(assert (=> b!2577685 d!729115))

(assert (=> b!2577685 d!729089))

(assert (=> b!2577685 d!729111))

(assert (=> b!2577685 d!729101))

(assert (=> b!2577700 d!729081))

(declare-fun d!729117 () Bool)

(declare-fun res!1084249 () Bool)

(declare-fun e!1626653 () Bool)

(assert (=> d!729117 (=> (not res!1084249) (not e!1626653))))

(assert (=> d!729117 (= res!1084249 (semiInverseModEq!1875 (toChars!6241 (TokenValueInjection!8897 lambda!95258 lambda!95257)) (toValue!6382 (TokenValueInjection!8897 lambda!95258 lambda!95257))))))

(assert (=> d!729117 (= (inv!39983 (TokenValueInjection!8897 lambda!95258 lambda!95257)) e!1626653)))

(declare-fun b!2577803 () Bool)

(assert (=> b!2577803 (= e!1626653 (equivClasses!1778 (toChars!6241 (TokenValueInjection!8897 lambda!95258 lambda!95257)) (toValue!6382 (TokenValueInjection!8897 lambda!95258 lambda!95257))))))

(assert (= (and d!729117 res!1084249) b!2577803))

(declare-fun m!2912557 () Bool)

(assert (=> d!729117 m!2912557))

(declare-fun m!2912559 () Bool)

(assert (=> b!2577803 m!2912559))

(assert (=> b!2577687 d!729117))

(assert (=> b!2577706 d!729079))

(assert (=> bs!470796 d!729087))

(assert (=> bs!470796 d!729093))

(assert (=> b!2577710 d!729083))

(assert (=> b!2577710 d!729081))

(assert (=> bs!470787 d!729111))

(assert (=> bs!470787 d!729089))

(assert (=> bs!470781 d!729089))

(assert (=> bs!470781 d!729093))

(assert (=> b!2577713 d!729085))

(assert (=> b!2577713 d!729083))

(assert (=> bs!470792 d!729089))

(assert (=> bs!470792 d!729111))

(assert (=> start!249164 d!729097))

(assert (=> start!249164 d!729087))

(declare-fun d!729123 () Bool)

(assert (=> d!729123 (= (inv!39982 x!463816) (isBalanced!2815 (c!415240 x!463816)))))

(declare-fun bs!470896 () Bool)

(assert (= bs!470896 d!729123))

(declare-fun m!2912561 () Bool)

(assert (=> bs!470896 m!2912561))

(assert (=> start!249164 d!729123))

(assert (=> start!249164 d!729093))

(assert (=> start!249164 d!729081))

(assert (=> start!249164 d!729107))

(assert (=> b!2577704 d!729079))

(assert (=> b!2577704 d!729085))

(assert (=> bs!470802 d!729093))

(assert (=> bs!470802 d!729087))

(assert (=> b!2577707 d!729085))

(assert (=> b!2577707 d!729079))

(assert (=> bs!470793 d!729093))

(assert (=> bs!470793 d!729111))

(assert (=> b!2577701 d!729085))

(assert (=> b!2577701 d!729081))

(assert (=> bs!470798 d!729087))

(assert (=> bs!470798 d!729111))

(assert (=> b!2577714 d!729081))

(assert (=> b!2577714 d!729083))

(assert (=> bs!470783 d!729089))

(assert (=> b!2577708 d!729081))

(assert (=> b!2577708 d!729079))

(assert (=> b!2577711 d!729083))

(assert (=> b!2577711 d!729079))

(assert (=> bs!470789 d!729111))

(assert (=> bs!470789 d!729093))

(assert (=> bs!470803 d!729111))

(assert (=> bs!470803 d!729087))

(declare-fun tp!819158 () Bool)

(declare-fun b!2577810 () Bool)

(declare-fun tp!819157 () Bool)

(declare-fun e!1626658 () Bool)

(assert (=> b!2577810 (= e!1626658 (and (inv!39981 (left!22582 (c!415240 x!463818))) tp!819157 (inv!39981 (right!22912 (c!415240 x!463818))) tp!819158))))

(declare-fun b!2577811 () Bool)

(declare-fun inv!39989 (IArray!18513) Bool)

(assert (=> b!2577811 (= e!1626658 (inv!39989 (xs!12238 (c!415240 x!463818))))))

(assert (=> b!2577699 (= tp!819143 (and (inv!39981 (c!415240 x!463818)) e!1626658))))

(assert (= (and b!2577699 (is-Node!9254 (c!415240 x!463818))) b!2577810))

(assert (= (and b!2577699 (is-Leaf!14113 (c!415240 x!463818))) b!2577811))

(declare-fun m!2912573 () Bool)

(assert (=> b!2577810 m!2912573))

(declare-fun m!2912577 () Bool)

(assert (=> b!2577810 m!2912577))

(declare-fun m!2912579 () Bool)

(assert (=> b!2577811 m!2912579))

(assert (=> b!2577699 m!2912457))

(declare-fun e!1626660 () Bool)

(declare-fun b!2577812 () Bool)

(declare-fun tp!819160 () Bool)

(declare-fun tp!819159 () Bool)

(assert (=> b!2577812 (= e!1626660 (and (inv!39981 (left!22582 (c!415240 x!463817))) tp!819159 (inv!39981 (right!22912 (c!415240 x!463817))) tp!819160))))

(declare-fun b!2577813 () Bool)

(assert (=> b!2577813 (= e!1626660 (inv!39989 (xs!12238 (c!415240 x!463817))))))

(assert (=> b!2577698 (= tp!819142 (and (inv!39981 (c!415240 x!463817)) e!1626660))))

(assert (= (and b!2577698 (is-Node!9254 (c!415240 x!463817))) b!2577812))

(assert (= (and b!2577698 (is-Leaf!14113 (c!415240 x!463817))) b!2577813))

(declare-fun m!2912581 () Bool)

(assert (=> b!2577812 m!2912581))

(declare-fun m!2912583 () Bool)

(assert (=> b!2577812 m!2912583))

(declare-fun m!2912585 () Bool)

(assert (=> b!2577813 m!2912585))

(assert (=> b!2577698 m!2912455))

(declare-fun tp!819161 () Bool)

(declare-fun tp!819162 () Bool)

(declare-fun e!1626662 () Bool)

(declare-fun b!2577814 () Bool)

(assert (=> b!2577814 (= e!1626662 (and (inv!39981 (left!22582 (c!415240 x!463816))) tp!819161 (inv!39981 (right!22912 (c!415240 x!463816))) tp!819162))))

(declare-fun b!2577815 () Bool)

(assert (=> b!2577815 (= e!1626662 (inv!39989 (xs!12238 (c!415240 x!463816))))))

(assert (=> b!2577696 (= tp!819141 (and (inv!39981 (c!415240 x!463816)) e!1626662))))

(assert (= (and b!2577696 (is-Node!9254 (c!415240 x!463816))) b!2577814))

(assert (= (and b!2577696 (is-Leaf!14113 (c!415240 x!463816))) b!2577815))

(declare-fun m!2912587 () Bool)

(assert (=> b!2577814 m!2912587))

(declare-fun m!2912589 () Bool)

(assert (=> b!2577814 m!2912589))

(declare-fun m!2912591 () Bool)

(assert (=> b!2577815 m!2912591))

(assert (=> b!2577696 m!2912431))

(push 1)

(assert (not b!2577803))

(assert (not d!729111))

(assert (not d!729101))

(assert (not d!729081))

(assert (not d!729115))

(assert (not d!729099))

(assert (not d!729087))

(assert (not d!729089))

(assert (not b!2577814))

(assert (not b!2577699))

(assert (not d!729093))

(assert (not b!2577783))

(assert (not b!2577696))

(assert (not d!729107))

(assert (not b!2577812))

(assert (not d!729085))

(assert (not b!2577780))

(assert (not d!729103))

(assert (not b!2577811))

(assert (not b!2577810))

(assert (not b!2577778))

(assert (not b!2577781))

(assert (not d!729113))

(assert (not b!2577698))

(assert (not b!2577813))

(assert (not b!2577788))

(assert (not b!2577800))

(assert (not d!729117))

(assert (not d!729123))

(assert (not b!2577798))

(assert (not b!2577815))

(assert (not d!729083))

(assert (not d!729079))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

