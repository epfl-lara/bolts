; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!249834 () Bool)

(assert start!249834)

(assert (=> start!249834 true))

(declare-fun b!2581340 () Bool)

(assert (=> b!2581340 true))

(assert (=> b!2581340 true))

(assert (=> b!2581340 true))

(declare-fun b!2581350 () Bool)

(declare-fun e!1628804 () Bool)

(declare-datatypes ((List!29812 0))(
  ( (Nil!29712) (Cons!29712 (h!35132 (_ BitVec 16)) (t!211741 List!29812)) )
))
(declare-datatypes ((IArray!18549 0))(
  ( (IArray!18550 (innerList!9332 List!29812)) )
))
(declare-datatypes ((Conc!9272 0))(
  ( (Node!9272 (left!22646 Conc!9272) (right!22976 Conc!9272) (csize!18774 Int) (cheight!9483 Int)) (Leaf!14145 (xs!12256 IArray!18549) (csize!18775 Int)) (Empty!9272) )
))
(declare-datatypes ((BalanceConc!18158 0))(
  ( (BalanceConc!18159 (c!416167 Conc!9272)) )
))
(declare-fun x!465151 () BalanceConc!18158)

(declare-fun tp!819479 () Bool)

(declare-fun inv!40106 (Conc!9272) Bool)

(assert (=> b!2581350 (= e!1628804 (and (inv!40106 (c!416167 x!465151)) tp!819479))))

(declare-datatypes ((KeywordValueInjection!184 0))(
  ( (KeywordValueInjection!185) )
))
(declare-fun thiss!3262 () KeywordValueInjection!184)

(declare-fun inst!1516 () Bool)

(declare-fun inv!40107 (BalanceConc!18158) Bool)

(declare-fun list!11227 (BalanceConc!18158) List!29812)

(declare-datatypes ((TokenValue!4728 0))(
  ( (FloatLiteralValue!9456 (text!33541 List!29812)) (TokenValueExt!4727 (__x!19293 Int)) (Broken!23640 (value!145646 List!29812)) (Object!4827) (End!4728) (Def!4728) (Underscore!4728) (Match!4728) (Else!4728) (Error!4728) (Case!4728) (If!4728) (Extends!4728) (Abstract!4728) (Class!4728) (Val!4728) (DelimiterValue!9456 (del!4788 List!29812)) (KeywordValue!4734 (value!145647 List!29812)) (CommentValue!9456 (value!145648 List!29812)) (WhitespaceValue!9456 (value!145649 List!29812)) (IndentationValue!4728 (value!145650 List!29812)) (String!33049) (Int32!4728) (Broken!23641 (value!145651 List!29812)) (Boolean!4729) (Unit!43552) (OperatorValue!4731 (op!4788 List!29812)) (IdentifierValue!9456 (value!145652 List!29812)) (IdentifierValue!9457 (value!145653 List!29812)) (WhitespaceValue!9457 (value!145654 List!29812)) (True!9456) (False!9456) (Broken!23642 (value!145655 List!29812)) (Broken!23643 (value!145656 List!29812)) (True!9457) (RightBrace!4728) (RightBracket!4728) (Colon!4728) (Null!4728) (Comma!4728) (LeftBracket!4728) (False!9457) (LeftBrace!4728) (ImaginaryLiteralValue!4728 (text!33542 List!29812)) (StringLiteralValue!14184 (value!145657 List!29812)) (EOFValue!4728 (value!145658 List!29812)) (IdentValue!4728 (value!145659 List!29812)) (DelimiterValue!9457 (value!145660 List!29812)) (DedentValue!4728 (value!145661 List!29812)) (NewLineValue!4728 (value!145662 List!29812)) (IntegerValue!14184 (value!145663 (_ BitVec 32)) (text!33543 List!29812)) (IntegerValue!14185 (value!145664 Int) (text!33544 List!29812)) (Times!4728) (Or!4728) (Equal!4728) (Minus!4728) (Broken!23644 (value!145665 List!29812)) (And!4728) (Div!4728) (LessEqual!4728) (Mod!4728) (Concat!12382) (Not!4728) (Plus!4728) (SpaceValue!4728 (value!145666 List!29812)) (IntegerValue!14186 (value!145667 Int) (text!33545 List!29812)) (StringLiteralValue!14185 (text!33546 List!29812)) (FloatLiteralValue!9457 (text!33547 List!29812)) (BytesLiteralValue!4728 (value!145668 List!29812)) (CommentValue!9457 (value!145669 List!29812)) (StringLiteralValue!14186 (value!145670 List!29812)) (ErrorTokenValue!4728 (msg!4789 List!29812)) )
))
(declare-fun toCharacters!4 (KeywordValueInjection!184 TokenValue!4728) BalanceConc!18158)

(declare-fun toValue!11 (KeywordValueInjection!184 BalanceConc!18158) TokenValue!4728)

(assert (=> start!249834 (= inst!1516 (=> (and (inv!40107 x!465151) e!1628804) (= (list!11227 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!465151))) (list!11227 x!465151))))))

(assert (= start!249834 b!2581350))

(declare-fun m!2917921 () Bool)

(assert (=> b!2581350 m!2917921))

(declare-fun m!2917923 () Bool)

(assert (=> start!249834 m!2917923))

(declare-fun m!2917925 () Bool)

(assert (=> start!249834 m!2917925))

(declare-fun m!2917927 () Bool)

(assert (=> start!249834 m!2917927))

(declare-fun m!2917929 () Bool)

(assert (=> start!249834 m!2917929))

(assert (=> start!249834 m!2917925))

(assert (=> start!249834 m!2917929))

(declare-fun m!2917931 () Bool)

(assert (=> start!249834 m!2917931))

(declare-fun res!1085578 () Bool)

(declare-fun e!1628805 () Bool)

(assert (=> b!2581340 (=> res!1085578 e!1628805)))

(declare-fun x!465152 () BalanceConc!18158)

(declare-fun x!465153 () BalanceConc!18158)

(assert (=> b!2581340 (= res!1085578 (not (= (list!11227 x!465152) (list!11227 x!465153))))))

(declare-fun inst!1517 () Bool)

(declare-fun e!1628807 () Bool)

(declare-fun e!1628806 () Bool)

(assert (=> b!2581340 (= inst!1517 (=> (and (inv!40107 x!465152) e!1628806 (inv!40107 x!465153) e!1628807) e!1628805))))

(declare-fun b!2581351 () Bool)

(assert (=> b!2581351 (= e!1628805 (= (toValue!11 thiss!3262 x!465152) (toValue!11 thiss!3262 x!465153)))))

(declare-fun b!2581352 () Bool)

(declare-fun tp!819480 () Bool)

(assert (=> b!2581352 (= e!1628806 (and (inv!40106 (c!416167 x!465152)) tp!819480))))

(declare-fun b!2581353 () Bool)

(declare-fun tp!819481 () Bool)

(assert (=> b!2581353 (= e!1628807 (and (inv!40106 (c!416167 x!465153)) tp!819481))))

(assert (= (and b!2581340 (not res!1085578)) b!2581351))

(assert (= b!2581340 b!2581352))

(assert (= b!2581340 b!2581353))

(declare-fun m!2917933 () Bool)

(assert (=> b!2581340 m!2917933))

(declare-fun m!2917935 () Bool)

(assert (=> b!2581340 m!2917935))

(declare-fun m!2917937 () Bool)

(assert (=> b!2581340 m!2917937))

(declare-fun m!2917939 () Bool)

(assert (=> b!2581340 m!2917939))

(declare-fun m!2917941 () Bool)

(assert (=> b!2581351 m!2917941))

(declare-fun m!2917943 () Bool)

(assert (=> b!2581351 m!2917943))

(declare-fun m!2917945 () Bool)

(assert (=> b!2581352 m!2917945))

(declare-fun m!2917947 () Bool)

(assert (=> b!2581353 m!2917947))

(declare-fun bs!471361 () Bool)

(declare-fun neg-inst!1517 () Bool)

(declare-fun s!228658 () Bool)

(assert (= bs!471361 (and neg-inst!1517 s!228658)))

(assert (=> bs!471361 (=> true (= (list!11227 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!465151))) (list!11227 x!465151)))))

(assert (=> m!2917929 m!2917925))

(assert (=> m!2917929 m!2917927))

(assert (=> m!2917929 m!2917923))

(assert (=> m!2917929 s!228658))

(assert (=> m!2917923 s!228658))

(declare-fun bs!471362 () Bool)

(assert (= bs!471362 (and neg-inst!1517 start!249834)))

(assert (=> bs!471362 (= true inst!1516)))

(declare-fun bs!471363 () Bool)

(declare-fun neg-inst!1516 () Bool)

(declare-fun s!228660 () Bool)

(assert (= bs!471363 (and neg-inst!1516 s!228660)))

(declare-fun res!1085579 () Bool)

(declare-fun e!1628808 () Bool)

(assert (=> bs!471363 (=> res!1085579 e!1628808)))

(assert (=> bs!471363 (= res!1085579 (not (= (list!11227 x!465151) (list!11227 x!465151))))))

(assert (=> bs!471363 (=> true e!1628808)))

(declare-fun b!2581354 () Bool)

(assert (=> b!2581354 (= e!1628808 (= (toValue!11 thiss!3262 x!465151) (toValue!11 thiss!3262 x!465151)))))

(assert (= (and bs!471363 (not res!1085579)) b!2581354))

(assert (=> m!2917929 m!2917923))

(assert (=> m!2917929 m!2917923))

(assert (=> m!2917929 s!228660))

(assert (=> m!2917929 s!228660))

(declare-fun bs!471364 () Bool)

(declare-fun s!228662 () Bool)

(assert (= bs!471364 (and neg-inst!1516 s!228662)))

(declare-fun res!1085580 () Bool)

(declare-fun e!1628809 () Bool)

(assert (=> bs!471364 (=> res!1085580 e!1628809)))

(assert (=> bs!471364 (= res!1085580 (not (= (list!11227 x!465151) (list!11227 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!465151))))))))

(assert (=> bs!471364 (=> true e!1628809)))

(declare-fun b!2581355 () Bool)

(assert (=> b!2581355 (= e!1628809 (= (toValue!11 thiss!3262 x!465151) (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!465151)))))))

(assert (= (and bs!471364 (not res!1085580)) b!2581355))

(declare-fun bs!471365 () Bool)

(assert (= bs!471365 (and m!2917927 m!2917929)))

(assert (=> bs!471365 m!2917923))

(assert (=> bs!471365 m!2917927))

(assert (=> bs!471365 s!228662))

(declare-fun bs!471366 () Bool)

(declare-fun s!228664 () Bool)

(assert (= bs!471366 (and neg-inst!1516 s!228664)))

(declare-fun res!1085581 () Bool)

(declare-fun e!1628810 () Bool)

(assert (=> bs!471366 (=> res!1085581 e!1628810)))

(assert (=> bs!471366 (= res!1085581 (not (= (list!11227 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!465151))) (list!11227 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!465151))))))))

(assert (=> bs!471366 (=> true e!1628810)))

(declare-fun b!2581356 () Bool)

(assert (=> b!2581356 (= e!1628810 (= (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!465151))) (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!465151)))))))

(assert (= (and bs!471366 (not res!1085581)) b!2581356))

(assert (=> m!2917927 s!228664))

(declare-fun bs!471367 () Bool)

(declare-fun s!228666 () Bool)

(assert (= bs!471367 (and neg-inst!1516 s!228666)))

(declare-fun res!1085582 () Bool)

(declare-fun e!1628811 () Bool)

(assert (=> bs!471367 (=> res!1085582 e!1628811)))

(assert (=> bs!471367 (= res!1085582 (not (= (list!11227 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!465151))) (list!11227 x!465151))))))

(assert (=> bs!471367 (=> true e!1628811)))

(declare-fun b!2581357 () Bool)

(assert (=> b!2581357 (= e!1628811 (= (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!465151))) (toValue!11 thiss!3262 x!465151)))))

(assert (= (and bs!471367 (not res!1085582)) b!2581357))

(assert (=> bs!471365 m!2917927))

(assert (=> bs!471365 m!2917923))

(assert (=> bs!471365 s!228666))

(assert (=> m!2917927 s!228664))

(declare-fun bs!471368 () Bool)

(declare-fun s!228668 () Bool)

(assert (= bs!471368 (and neg-inst!1516 s!228668)))

(declare-fun res!1085583 () Bool)

(declare-fun e!1628812 () Bool)

(assert (=> bs!471368 (=> res!1085583 e!1628812)))

(assert (=> bs!471368 (= res!1085583 (not (= (list!11227 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!465151))) (list!11227 x!465153))))))

(assert (=> bs!471368 (=> true e!1628812)))

(declare-fun b!2581358 () Bool)

(assert (=> b!2581358 (= e!1628812 (= (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!465151))) (toValue!11 thiss!3262 x!465153)))))

(assert (= (and bs!471368 (not res!1085583)) b!2581358))

(declare-fun bs!471369 () Bool)

(assert (= bs!471369 (and m!2917943 m!2917927)))

(assert (=> bs!471369 m!2917927))

(assert (=> bs!471369 m!2917935))

(assert (=> bs!471369 s!228668))

(declare-fun bs!471370 () Bool)

(declare-fun s!228670 () Bool)

(assert (= bs!471370 (and neg-inst!1516 s!228670)))

(declare-fun res!1085584 () Bool)

(declare-fun e!1628813 () Bool)

(assert (=> bs!471370 (=> res!1085584 e!1628813)))

(assert (=> bs!471370 (= res!1085584 (not (= (list!11227 x!465151) (list!11227 x!465153))))))

(assert (=> bs!471370 (=> true e!1628813)))

(declare-fun b!2581359 () Bool)

(assert (=> b!2581359 (= e!1628813 (= (toValue!11 thiss!3262 x!465151) (toValue!11 thiss!3262 x!465153)))))

(assert (= (and bs!471370 (not res!1085584)) b!2581359))

(declare-fun bs!471371 () Bool)

(assert (= bs!471371 (and m!2917943 m!2917929)))

(assert (=> bs!471371 m!2917923))

(assert (=> bs!471371 m!2917935))

(assert (=> bs!471371 s!228670))

(declare-fun bs!471372 () Bool)

(declare-fun s!228672 () Bool)

(assert (= bs!471372 (and neg-inst!1516 s!228672)))

(declare-fun res!1085585 () Bool)

(declare-fun e!1628814 () Bool)

(assert (=> bs!471372 (=> res!1085585 e!1628814)))

(assert (=> bs!471372 (= res!1085585 (not (= (list!11227 x!465153) (list!11227 x!465153))))))

(assert (=> bs!471372 (=> true e!1628814)))

(declare-fun b!2581360 () Bool)

(assert (=> b!2581360 (= e!1628814 (= (toValue!11 thiss!3262 x!465153) (toValue!11 thiss!3262 x!465153)))))

(assert (= (and bs!471372 (not res!1085585)) b!2581360))

(assert (=> m!2917943 m!2917935))

(assert (=> m!2917943 m!2917935))

(assert (=> m!2917943 s!228672))

(declare-fun bs!471373 () Bool)

(declare-fun s!228674 () Bool)

(assert (= bs!471373 (and neg-inst!1516 s!228674)))

(declare-fun res!1085586 () Bool)

(declare-fun e!1628815 () Bool)

(assert (=> bs!471373 (=> res!1085586 e!1628815)))

(assert (=> bs!471373 (= res!1085586 (not (= (list!11227 x!465153) (list!11227 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!465151))))))))

(assert (=> bs!471373 (=> true e!1628815)))

(declare-fun b!2581361 () Bool)

(assert (=> b!2581361 (= e!1628815 (= (toValue!11 thiss!3262 x!465153) (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!465151)))))))

(assert (= (and bs!471373 (not res!1085586)) b!2581361))

(assert (=> bs!471369 m!2917935))

(assert (=> bs!471369 m!2917927))

(assert (=> bs!471369 s!228674))

(declare-fun bs!471374 () Bool)

(declare-fun s!228676 () Bool)

(assert (= bs!471374 (and neg-inst!1516 s!228676)))

(declare-fun res!1085587 () Bool)

(declare-fun e!1628816 () Bool)

(assert (=> bs!471374 (=> res!1085587 e!1628816)))

(assert (=> bs!471374 (= res!1085587 (not (= (list!11227 x!465153) (list!11227 x!465151))))))

(assert (=> bs!471374 (=> true e!1628816)))

(declare-fun b!2581362 () Bool)

(assert (=> b!2581362 (= e!1628816 (= (toValue!11 thiss!3262 x!465153) (toValue!11 thiss!3262 x!465151)))))

(assert (= (and bs!471374 (not res!1085587)) b!2581362))

(assert (=> bs!471371 m!2917935))

(assert (=> bs!471371 m!2917923))

(assert (=> bs!471371 s!228676))

(assert (=> m!2917943 s!228672))

(declare-fun bs!471375 () Bool)

(assert (= bs!471375 (and m!2917923 m!2917943)))

(assert (=> bs!471375 s!228676))

(declare-fun bs!471376 () Bool)

(assert (= bs!471376 (and m!2917923 m!2917927)))

(assert (=> bs!471376 s!228666))

(declare-fun bs!471377 () Bool)

(assert (= bs!471377 (and m!2917923 m!2917929)))

(assert (=> bs!471377 s!228660))

(assert (=> m!2917923 s!228660))

(assert (=> bs!471375 s!228670))

(assert (=> bs!471376 s!228662))

(assert (=> bs!471377 s!228660))

(assert (=> m!2917923 s!228660))

(declare-fun bs!471378 () Bool)

(assert (= bs!471378 (and m!2917935 m!2917943)))

(assert (=> bs!471378 s!228672))

(declare-fun bs!471379 () Bool)

(assert (= bs!471379 (and m!2917935 m!2917927)))

(assert (=> bs!471379 s!228668))

(declare-fun bs!471380 () Bool)

(assert (= bs!471380 (and m!2917935 m!2917929 m!2917923)))

(assert (=> bs!471380 s!228670))

(assert (=> m!2917935 s!228672))

(assert (=> bs!471378 s!228672))

(assert (=> bs!471379 s!228674))

(assert (=> bs!471380 s!228676))

(assert (=> m!2917935 s!228672))

(declare-fun bs!471381 () Bool)

(declare-fun s!228678 () Bool)

(assert (= bs!471381 (and neg-inst!1516 s!228678)))

(declare-fun res!1085588 () Bool)

(declare-fun e!1628817 () Bool)

(assert (=> bs!471381 (=> res!1085588 e!1628817)))

(assert (=> bs!471381 (= res!1085588 (not (= (list!11227 x!465153) (list!11227 x!465152))))))

(assert (=> bs!471381 (=> true e!1628817)))

(declare-fun b!2581363 () Bool)

(assert (=> b!2581363 (= e!1628817 (= (toValue!11 thiss!3262 x!465153) (toValue!11 thiss!3262 x!465152)))))

(assert (= (and bs!471381 (not res!1085588)) b!2581363))

(declare-fun bs!471382 () Bool)

(assert (= bs!471382 (and m!2917941 m!2917943 m!2917935)))

(assert (=> bs!471382 m!2917935))

(assert (=> bs!471382 m!2917933))

(assert (=> bs!471382 s!228678))

(declare-fun bs!471383 () Bool)

(declare-fun s!228680 () Bool)

(assert (= bs!471383 (and neg-inst!1516 s!228680)))

(declare-fun res!1085589 () Bool)

(declare-fun e!1628818 () Bool)

(assert (=> bs!471383 (=> res!1085589 e!1628818)))

(assert (=> bs!471383 (= res!1085589 (not (= (list!11227 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!465151))) (list!11227 x!465152))))))

(assert (=> bs!471383 (=> true e!1628818)))

(declare-fun b!2581364 () Bool)

(assert (=> b!2581364 (= e!1628818 (= (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!465151))) (toValue!11 thiss!3262 x!465152)))))

(assert (= (and bs!471383 (not res!1085589)) b!2581364))

(declare-fun bs!471384 () Bool)

(assert (= bs!471384 (and m!2917941 m!2917927)))

(assert (=> bs!471384 m!2917927))

(assert (=> bs!471384 m!2917933))

(assert (=> bs!471384 s!228680))

(declare-fun bs!471385 () Bool)

(declare-fun s!228682 () Bool)

(assert (= bs!471385 (and neg-inst!1516 s!228682)))

(declare-fun res!1085590 () Bool)

(declare-fun e!1628819 () Bool)

(assert (=> bs!471385 (=> res!1085590 e!1628819)))

(assert (=> bs!471385 (= res!1085590 (not (= (list!11227 x!465151) (list!11227 x!465152))))))

(assert (=> bs!471385 (=> true e!1628819)))

(declare-fun b!2581365 () Bool)

(assert (=> b!2581365 (= e!1628819 (= (toValue!11 thiss!3262 x!465151) (toValue!11 thiss!3262 x!465152)))))

(assert (= (and bs!471385 (not res!1085590)) b!2581365))

(declare-fun bs!471386 () Bool)

(assert (= bs!471386 (and m!2917941 m!2917929 m!2917923)))

(assert (=> bs!471386 m!2917923))

(assert (=> bs!471386 m!2917933))

(assert (=> bs!471386 s!228682))

(declare-fun bs!471387 () Bool)

(declare-fun s!228684 () Bool)

(assert (= bs!471387 (and neg-inst!1516 s!228684)))

(declare-fun res!1085591 () Bool)

(declare-fun e!1628820 () Bool)

(assert (=> bs!471387 (=> res!1085591 e!1628820)))

(assert (=> bs!471387 (= res!1085591 (not (= (list!11227 x!465152) (list!11227 x!465152))))))

(assert (=> bs!471387 (=> true e!1628820)))

(declare-fun b!2581366 () Bool)

(assert (=> b!2581366 (= e!1628820 (= (toValue!11 thiss!3262 x!465152) (toValue!11 thiss!3262 x!465152)))))

(assert (= (and bs!471387 (not res!1085591)) b!2581366))

(assert (=> m!2917941 m!2917933))

(assert (=> m!2917941 m!2917933))

(assert (=> m!2917941 s!228684))

(declare-fun bs!471388 () Bool)

(declare-fun s!228686 () Bool)

(assert (= bs!471388 (and neg-inst!1516 s!228686)))

(declare-fun res!1085592 () Bool)

(declare-fun e!1628821 () Bool)

(assert (=> bs!471388 (=> res!1085592 e!1628821)))

(assert (=> bs!471388 (= res!1085592 (not (= (list!11227 x!465152) (list!11227 x!465153))))))

(assert (=> bs!471388 (=> true e!1628821)))

(declare-fun b!2581367 () Bool)

(assert (=> b!2581367 (= e!1628821 (= (toValue!11 thiss!3262 x!465152) (toValue!11 thiss!3262 x!465153)))))

(assert (= (and bs!471388 (not res!1085592)) b!2581367))

(assert (=> bs!471382 m!2917933))

(assert (=> bs!471382 m!2917935))

(assert (=> bs!471382 s!228686))

(declare-fun bs!471389 () Bool)

(declare-fun s!228688 () Bool)

(assert (= bs!471389 (and neg-inst!1516 s!228688)))

(declare-fun res!1085593 () Bool)

(declare-fun e!1628822 () Bool)

(assert (=> bs!471389 (=> res!1085593 e!1628822)))

(assert (=> bs!471389 (= res!1085593 (not (= (list!11227 x!465152) (list!11227 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!465151))))))))

(assert (=> bs!471389 (=> true e!1628822)))

(declare-fun b!2581368 () Bool)

(assert (=> b!2581368 (= e!1628822 (= (toValue!11 thiss!3262 x!465152) (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!465151)))))))

(assert (= (and bs!471389 (not res!1085593)) b!2581368))

(assert (=> bs!471384 m!2917933))

(assert (=> bs!471384 m!2917927))

(assert (=> bs!471384 s!228688))

(declare-fun bs!471390 () Bool)

(declare-fun s!228690 () Bool)

(assert (= bs!471390 (and neg-inst!1516 s!228690)))

(declare-fun res!1085594 () Bool)

(declare-fun e!1628823 () Bool)

(assert (=> bs!471390 (=> res!1085594 e!1628823)))

(assert (=> bs!471390 (= res!1085594 (not (= (list!11227 x!465152) (list!11227 x!465151))))))

(assert (=> bs!471390 (=> true e!1628823)))

(declare-fun b!2581369 () Bool)

(assert (=> b!2581369 (= e!1628823 (= (toValue!11 thiss!3262 x!465152) (toValue!11 thiss!3262 x!465151)))))

(assert (= (and bs!471390 (not res!1085594)) b!2581369))

(assert (=> bs!471386 m!2917933))

(assert (=> bs!471386 m!2917923))

(assert (=> bs!471386 s!228690))

(assert (=> m!2917941 s!228684))

(assert (=> m!2917933 s!228684))

(declare-fun bs!471391 () Bool)

(assert (= bs!471391 (and m!2917933 m!2917943 m!2917935)))

(assert (=> bs!471391 s!228678))

(declare-fun bs!471392 () Bool)

(assert (= bs!471392 (and m!2917933 m!2917927)))

(assert (=> bs!471392 s!228680))

(declare-fun bs!471393 () Bool)

(assert (= bs!471393 (and m!2917933 m!2917929 m!2917923)))

(assert (=> bs!471393 s!228682))

(declare-fun bs!471394 () Bool)

(assert (= bs!471394 (and m!2917933 m!2917941)))

(assert (=> bs!471394 s!228684))

(assert (=> m!2917933 s!228684))

(assert (=> bs!471392 s!228688))

(assert (=> bs!471394 s!228684))

(assert (=> bs!471393 s!228690))

(assert (=> bs!471391 s!228686))

(declare-fun bs!471395 () Bool)

(assert (= bs!471395 (and neg-inst!1516 b!2581340)))

(assert (=> bs!471395 (= true inst!1517)))

(declare-fun res!1085576 () Bool)

(declare-fun e!1628803 () Bool)

(assert (=> start!249834 (=> res!1085576 e!1628803)))

(declare-fun lambda!95649 () Int)

(declare-fun Forall!1163 (Int) Bool)

(assert (=> start!249834 (= res!1085576 (not (Forall!1163 lambda!95649)))))

(assert (=> start!249834 (= (Forall!1163 lambda!95649) inst!1516)))

(assert (=> start!249834 (not e!1628803)))

(assert (=> start!249834 true))

(declare-fun e!1628802 () Bool)

(assert (=> b!2581340 (= e!1628803 e!1628802)))

(declare-fun res!1085577 () Bool)

(assert (=> b!2581340 (=> res!1085577 e!1628802)))

(declare-fun lambda!95652 () Int)

(declare-fun Forall2!762 (Int) Bool)

(assert (=> b!2581340 (= res!1085577 (not (Forall2!762 lambda!95652)))))

(assert (=> b!2581340 (= (Forall2!762 lambda!95652) inst!1517)))

(declare-fun lambda!95650 () Int)

(declare-fun lambda!95651 () Int)

(declare-fun semiInverseModEq!1879 (Int Int) Bool)

(assert (=> b!2581340 (= (semiInverseModEq!1879 lambda!95650 lambda!95651) (Forall!1163 lambda!95649))))

(declare-fun b!2581341 () Bool)

(declare-datatypes ((TokenValueInjection!8900 0))(
  ( (TokenValueInjection!8901 (toValue!6390 Int) (toChars!6249 Int)) )
))
(declare-fun inv!40108 (TokenValueInjection!8900) Bool)

(assert (=> b!2581341 (= e!1628802 (inv!40108 (TokenValueInjection!8901 lambda!95651 lambda!95650)))))

(declare-fun equivClasses!1780 (Int Int) Bool)

(assert (=> b!2581341 (= (equivClasses!1780 lambda!95650 lambda!95651) (Forall2!762 lambda!95652))))

(assert (= neg-inst!1517 inst!1516))

(assert (= (and start!249834 (not res!1085576)) b!2581340))

(assert (= neg-inst!1516 inst!1517))

(assert (= (and b!2581340 (not res!1085577)) b!2581341))

(declare-fun m!2917949 () Bool)

(assert (=> start!249834 m!2917949))

(assert (=> start!249834 m!2917949))

(declare-fun m!2917951 () Bool)

(assert (=> b!2581340 m!2917951))

(assert (=> b!2581340 m!2917951))

(declare-fun m!2917953 () Bool)

(assert (=> b!2581340 m!2917953))

(assert (=> b!2581340 m!2917949))

(declare-fun m!2917955 () Bool)

(assert (=> b!2581341 m!2917955))

(declare-fun m!2917957 () Bool)

(assert (=> b!2581341 m!2917957))

(assert (=> b!2581341 m!2917951))

(push 1)

(assert (not b!2581340))

(assert (not b!2581341))

(assert (not b!2581369))

(assert (not b!2581350))

(assert (not start!249834))

(assert (not b!2581357))

(assert (not b!2581368))

(assert (not b!2581364))

(assert (not b!2581359))

(assert (not b!2581353))

(assert (not bs!471364))

(assert (not b!2581358))

(assert (not bs!471361))

(assert (not bs!471383))

(assert (not bs!471389))

(assert (not b!2581352))

(assert (not bs!471385))

(assert (not b!2581363))

(assert (not b!2581365))

(assert (not bs!471387))

(assert (not b!2581354))

(assert (not bs!471366))

(assert (not bs!471368))

(assert (not b!2581361))

(assert (not bs!471374))

(assert (not b!2581360))

(assert (not bs!471373))

(assert (not bs!471370))

(assert (not b!2581351))

(assert (not bs!471372))

(assert (not b!2581366))

(assert (not bs!471390))

(assert (not b!2581355))

(assert (not bs!471381))

(assert (not b!2581362))

(assert (not b!2581356))

(assert (not b!2581367))

(assert (not bs!471363))

(assert (not bs!471367))

(assert (not bs!471388))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!471433 () Bool)

(assert (= bs!471433 (and m!2917929 b!2581354)))

(assert (=> bs!471433 m!2917929))

(assert (=> bs!471433 m!2917929))

(declare-fun bs!471434 () Bool)

(assert (= bs!471434 (and m!2917927 m!2917929 b!2581355)))

(assert (=> bs!471434 m!2917929))

(declare-fun m!2917997 () Bool)

(assert (=> bs!471434 m!2917997))

(declare-fun bs!471435 () Bool)

(assert (= bs!471435 (and m!2917927 b!2581356)))

(assert (=> bs!471435 m!2917997))

(assert (=> bs!471435 m!2917997))

(declare-fun bs!471436 () Bool)

(assert (= bs!471436 (and m!2917927 m!2917929 b!2581357)))

(assert (=> bs!471436 m!2917997))

(assert (=> bs!471436 m!2917929))

(declare-fun bs!471437 () Bool)

(assert (= bs!471437 (and m!2917943 m!2917927 b!2581358)))

(assert (=> bs!471437 m!2917997))

(assert (=> bs!471437 m!2917943))

(declare-fun bs!471438 () Bool)

(assert (= bs!471438 (and m!2917943 m!2917929 b!2581359)))

(assert (=> bs!471438 m!2917929))

(assert (=> bs!471438 m!2917943))

(declare-fun bs!471439 () Bool)

(assert (= bs!471439 (and m!2917943 b!2581360)))

(assert (=> bs!471439 m!2917943))

(assert (=> bs!471439 m!2917943))

(declare-fun bs!471440 () Bool)

(assert (= bs!471440 (and m!2917943 m!2917927 b!2581361)))

(assert (=> bs!471440 m!2917943))

(assert (=> bs!471440 m!2917997))

(declare-fun bs!471441 () Bool)

(assert (= bs!471441 (and m!2917943 m!2917929 b!2581362)))

(assert (=> bs!471441 m!2917943))

(assert (=> bs!471441 m!2917929))

(declare-fun bs!471442 () Bool)

(assert (= bs!471442 (and m!2917941 m!2917943 m!2917935 b!2581363)))

(assert (=> bs!471442 m!2917943))

(assert (=> bs!471442 m!2917941))

(declare-fun bs!471443 () Bool)

(assert (= bs!471443 (and m!2917941 m!2917927 b!2581364)))

(assert (=> bs!471443 m!2917997))

(assert (=> bs!471443 m!2917941))

(declare-fun bs!471444 () Bool)

(assert (= bs!471444 (and m!2917941 m!2917929 m!2917923 b!2581365)))

(assert (=> bs!471444 m!2917929))

(assert (=> bs!471444 m!2917941))

(declare-fun bs!471445 () Bool)

(assert (= bs!471445 (and m!2917941 b!2581366)))

(assert (=> bs!471445 m!2917941))

(assert (=> bs!471445 m!2917941))

(declare-fun bs!471446 () Bool)

(assert (= bs!471446 (and m!2917941 m!2917943 m!2917935 b!2581367)))

(assert (=> bs!471446 m!2917941))

(assert (=> bs!471446 m!2917943))

(declare-fun bs!471447 () Bool)

(assert (= bs!471447 (and m!2917941 m!2917927 b!2581368)))

(assert (=> bs!471447 m!2917941))

(assert (=> bs!471447 m!2917997))

(declare-fun bs!471448 () Bool)

(assert (= bs!471448 (and m!2917941 m!2917929 m!2917923 b!2581369)))

(assert (=> bs!471448 m!2917941))

(assert (=> bs!471448 m!2917929))

(push 1)

(assert (not b!2581340))

(assert (not b!2581341))

(assert (not b!2581369))

(assert (not b!2581350))

(assert (not start!249834))

(assert (not b!2581357))

(assert (not b!2581368))

(assert (not b!2581364))

(assert (not b!2581359))

(assert (not b!2581353))

(assert (not bs!471364))

(assert (not b!2581358))

(assert (not bs!471361))

(assert (not bs!471383))

(assert (not bs!471389))

(assert (not b!2581352))

(assert (not bs!471385))

(assert (not b!2581363))

(assert (not b!2581365))

(assert (not bs!471387))

(assert (not b!2581354))

(assert (not bs!471366))

(assert (not bs!471368))

(assert (not b!2581361))

(assert (not bs!471374))

(assert (not b!2581360))

(assert (not bs!471373))

(assert (not bs!471370))

(assert (not b!2581351))

(assert (not bs!471372))

(assert (not b!2581366))

(assert (not bs!471390))

(assert (not b!2581355))

(assert (not bs!471381))

(assert (not b!2581362))

(assert (not b!2581356))

(assert (not b!2581367))

(assert (not bs!471363))

(assert (not bs!471367))

(assert (not bs!471388))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!731061 () Bool)

(declare-fun list!11229 (Conc!9272) List!29812)

(assert (=> d!731061 (= (list!11227 x!465153) (list!11229 (c!416167 x!465153)))))

(declare-fun bs!471465 () Bool)

(assert (= bs!471465 d!731061))

(declare-fun m!2918001 () Bool)

(assert (=> bs!471465 m!2918001))

(assert (=> bs!471374 d!731061))

(declare-fun d!731063 () Bool)

(assert (=> d!731063 (= (list!11227 x!465151) (list!11229 (c!416167 x!465151)))))

(declare-fun bs!471466 () Bool)

(assert (= bs!471466 d!731063))

(declare-fun m!2918003 () Bool)

(assert (=> bs!471466 m!2918003))

(assert (=> bs!471374 d!731063))

(declare-fun d!731065 () Bool)

(declare-fun lt!908098 () List!29812)

(declare-fun efficientList!397 (BalanceConc!18158) List!29812)

(assert (=> d!731065 (= lt!908098 (efficientList!397 x!465151))))

(assert (=> d!731065 (= (toValue!11 thiss!3262 x!465151) (ite (= lt!908098 (Cons!29712 #x006E (Cons!29712 #x0075 (Cons!29712 #x006C (Cons!29712 #x006C Nil!29712))))) Null!4728 (ite (= lt!908098 (Cons!29712 #x0074 (Cons!29712 #x0072 (Cons!29712 #x0075 (Cons!29712 #x0065 Nil!29712))))) True!9457 (ite (= lt!908098 (Cons!29712 #x0066 (Cons!29712 #x0061 (Cons!29712 #x006C (Cons!29712 #x0073 (Cons!29712 #x0065 Nil!29712)))))) False!9457 (ite (= lt!908098 (Cons!29712 #x003A Nil!29712)) Colon!4728 (ite (= lt!908098 (Cons!29712 #x002C Nil!29712)) Comma!4728 (ite (= lt!908098 (Cons!29712 #x007B Nil!29712)) LeftBrace!4728 (ite (= lt!908098 (Cons!29712 #x007D Nil!29712)) RightBrace!4728 (ite (= lt!908098 (Cons!29712 #x005B Nil!29712)) LeftBracket!4728 (ite (= lt!908098 (Cons!29712 #x005D Nil!29712)) RightBracket!4728 (Broken!23643 lt!908098)))))))))))))

(declare-fun bs!471467 () Bool)

(assert (= bs!471467 d!731065))

(declare-fun m!2918005 () Bool)

(assert (=> bs!471467 m!2918005))

(assert (=> b!2581355 d!731065))

(declare-fun d!731067 () Bool)

(declare-fun lt!908099 () List!29812)

(assert (=> d!731067 (= lt!908099 (efficientList!397 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!465151))))))

(assert (=> d!731067 (= (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!465151))) (ite (= lt!908099 (Cons!29712 #x006E (Cons!29712 #x0075 (Cons!29712 #x006C (Cons!29712 #x006C Nil!29712))))) Null!4728 (ite (= lt!908099 (Cons!29712 #x0074 (Cons!29712 #x0072 (Cons!29712 #x0075 (Cons!29712 #x0065 Nil!29712))))) True!9457 (ite (= lt!908099 (Cons!29712 #x0066 (Cons!29712 #x0061 (Cons!29712 #x006C (Cons!29712 #x0073 (Cons!29712 #x0065 Nil!29712)))))) False!9457 (ite (= lt!908099 (Cons!29712 #x003A Nil!29712)) Colon!4728 (ite (= lt!908099 (Cons!29712 #x002C Nil!29712)) Comma!4728 (ite (= lt!908099 (Cons!29712 #x007B Nil!29712)) LeftBrace!4728 (ite (= lt!908099 (Cons!29712 #x007D Nil!29712)) RightBrace!4728 (ite (= lt!908099 (Cons!29712 #x005B Nil!29712)) LeftBracket!4728 (ite (= lt!908099 (Cons!29712 #x005D Nil!29712)) RightBracket!4728 (Broken!23643 lt!908099)))))))))))))

(declare-fun bs!471468 () Bool)

(assert (= bs!471468 d!731067))

(assert (=> bs!471468 m!2917925))

(declare-fun m!2918007 () Bool)

(assert (=> bs!471468 m!2918007))

(assert (=> b!2581355 d!731067))

(declare-fun d!731069 () Bool)

(declare-fun lt!908100 () List!29812)

(assert (=> d!731069 (= lt!908100 (efficientList!397 x!465152))))

(assert (=> d!731069 (= (toValue!11 thiss!3262 x!465152) (ite (= lt!908100 (Cons!29712 #x006E (Cons!29712 #x0075 (Cons!29712 #x006C (Cons!29712 #x006C Nil!29712))))) Null!4728 (ite (= lt!908100 (Cons!29712 #x0074 (Cons!29712 #x0072 (Cons!29712 #x0075 (Cons!29712 #x0065 Nil!29712))))) True!9457 (ite (= lt!908100 (Cons!29712 #x0066 (Cons!29712 #x0061 (Cons!29712 #x006C (Cons!29712 #x0073 (Cons!29712 #x0065 Nil!29712)))))) False!9457 (ite (= lt!908100 (Cons!29712 #x003A Nil!29712)) Colon!4728 (ite (= lt!908100 (Cons!29712 #x002C Nil!29712)) Comma!4728 (ite (= lt!908100 (Cons!29712 #x007B Nil!29712)) LeftBrace!4728 (ite (= lt!908100 (Cons!29712 #x007D Nil!29712)) RightBrace!4728 (ite (= lt!908100 (Cons!29712 #x005B Nil!29712)) LeftBracket!4728 (ite (= lt!908100 (Cons!29712 #x005D Nil!29712)) RightBracket!4728 (Broken!23643 lt!908100)))))))))))))

(declare-fun bs!471469 () Bool)

(assert (= bs!471469 d!731069))

(declare-fun m!2918009 () Bool)

(assert (=> bs!471469 m!2918009))

(assert (=> b!2581367 d!731069))

(declare-fun d!731071 () Bool)

(declare-fun lt!908101 () List!29812)

(assert (=> d!731071 (= lt!908101 (efficientList!397 x!465153))))

(assert (=> d!731071 (= (toValue!11 thiss!3262 x!465153) (ite (= lt!908101 (Cons!29712 #x006E (Cons!29712 #x0075 (Cons!29712 #x006C (Cons!29712 #x006C Nil!29712))))) Null!4728 (ite (= lt!908101 (Cons!29712 #x0074 (Cons!29712 #x0072 (Cons!29712 #x0075 (Cons!29712 #x0065 Nil!29712))))) True!9457 (ite (= lt!908101 (Cons!29712 #x0066 (Cons!29712 #x0061 (Cons!29712 #x006C (Cons!29712 #x0073 (Cons!29712 #x0065 Nil!29712)))))) False!9457 (ite (= lt!908101 (Cons!29712 #x003A Nil!29712)) Colon!4728 (ite (= lt!908101 (Cons!29712 #x002C Nil!29712)) Comma!4728 (ite (= lt!908101 (Cons!29712 #x007B Nil!29712)) LeftBrace!4728 (ite (= lt!908101 (Cons!29712 #x007D Nil!29712)) RightBrace!4728 (ite (= lt!908101 (Cons!29712 #x005B Nil!29712)) LeftBracket!4728 (ite (= lt!908101 (Cons!29712 #x005D Nil!29712)) RightBracket!4728 (Broken!23643 lt!908101)))))))))))))

(declare-fun bs!471470 () Bool)

(assert (= bs!471470 d!731071))

(declare-fun m!2918011 () Bool)

(assert (=> bs!471470 m!2918011))

(assert (=> b!2581367 d!731071))

(assert (=> b!2581364 d!731067))

(assert (=> b!2581364 d!731069))

(assert (=> bs!471364 d!731063))

(declare-fun d!731073 () Bool)

(assert (=> d!731073 (= (list!11227 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!465151))) (list!11229 (c!416167 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!465151)))))))

(declare-fun bs!471471 () Bool)

(assert (= bs!471471 d!731073))

(declare-fun m!2918013 () Bool)

(assert (=> bs!471471 m!2918013))

(assert (=> bs!471364 d!731073))

(assert (=> b!2581361 d!731071))

(assert (=> b!2581361 d!731067))

(declare-fun d!731075 () Bool)

(assert (=> d!731075 (= (list!11227 x!465152) (list!11229 (c!416167 x!465152)))))

(declare-fun bs!471472 () Bool)

(assert (= bs!471472 d!731075))

(declare-fun m!2918015 () Bool)

(assert (=> bs!471472 m!2918015))

(assert (=> bs!471388 d!731075))

(assert (=> bs!471388 d!731061))

(assert (=> b!2581358 d!731067))

(assert (=> b!2581358 d!731071))

(assert (=> bs!471383 d!731073))

(assert (=> bs!471383 d!731075))

(assert (=> b!2581359 d!731065))

(assert (=> b!2581359 d!731071))

(assert (=> b!2581368 d!731069))

(assert (=> b!2581368 d!731067))

(assert (=> bs!471385 d!731063))

(assert (=> bs!471385 d!731075))

(assert (=> bs!471366 d!731073))

(assert (=> bs!471370 d!731063))

(assert (=> bs!471370 d!731061))

(assert (=> bs!471389 d!731075))

(assert (=> bs!471389 d!731073))

(assert (=> b!2581362 d!731071))

(assert (=> b!2581362 d!731065))

(assert (=> bs!471367 d!731073))

(assert (=> bs!471367 d!731063))

(declare-fun d!731077 () Bool)

(declare-fun c!416178 () Bool)

(assert (=> d!731077 (= c!416178 (is-Node!9272 (c!416167 x!465153)))))

(declare-fun e!1628870 () Bool)

(assert (=> d!731077 (= (inv!40106 (c!416167 x!465153)) e!1628870)))

(declare-fun b!2581426 () Bool)

(declare-fun inv!40112 (Conc!9272) Bool)

(assert (=> b!2581426 (= e!1628870 (inv!40112 (c!416167 x!465153)))))

(declare-fun b!2581427 () Bool)

(declare-fun e!1628871 () Bool)

(assert (=> b!2581427 (= e!1628870 e!1628871)))

(declare-fun res!1085636 () Bool)

(assert (=> b!2581427 (= res!1085636 (not (is-Leaf!14145 (c!416167 x!465153))))))

(assert (=> b!2581427 (=> res!1085636 e!1628871)))

(declare-fun b!2581428 () Bool)

(declare-fun inv!40113 (Conc!9272) Bool)

(assert (=> b!2581428 (= e!1628871 (inv!40113 (c!416167 x!465153)))))

(assert (= (and d!731077 c!416178) b!2581426))

(assert (= (and d!731077 (not c!416178)) b!2581427))

(assert (= (and b!2581427 (not res!1085636)) b!2581428))

(declare-fun m!2918017 () Bool)

(assert (=> b!2581426 m!2918017))

(declare-fun m!2918019 () Bool)

(assert (=> b!2581428 m!2918019))

(assert (=> b!2581353 d!731077))

(assert (=> bs!471381 d!731061))

(assert (=> bs!471381 d!731075))

(assert (=> bs!471387 d!731075))

(declare-fun d!731079 () Bool)

(declare-fun c!416179 () Bool)

(assert (=> d!731079 (= c!416179 (is-Node!9272 (c!416167 x!465152)))))

(declare-fun e!1628872 () Bool)

(assert (=> d!731079 (= (inv!40106 (c!416167 x!465152)) e!1628872)))

(declare-fun b!2581429 () Bool)

(assert (=> b!2581429 (= e!1628872 (inv!40112 (c!416167 x!465152)))))

(declare-fun b!2581430 () Bool)

(declare-fun e!1628873 () Bool)

(assert (=> b!2581430 (= e!1628872 e!1628873)))

(declare-fun res!1085637 () Bool)

(assert (=> b!2581430 (= res!1085637 (not (is-Leaf!14145 (c!416167 x!465152))))))

(assert (=> b!2581430 (=> res!1085637 e!1628873)))

(declare-fun b!2581431 () Bool)

(assert (=> b!2581431 (= e!1628873 (inv!40113 (c!416167 x!465152)))))

(assert (= (and d!731079 c!416179) b!2581429))

(assert (= (and d!731079 (not c!416179)) b!2581430))

(assert (= (and b!2581430 (not res!1085637)) b!2581431))

(declare-fun m!2918021 () Bool)

(assert (=> b!2581429 m!2918021))

(declare-fun m!2918023 () Bool)

(assert (=> b!2581431 m!2918023))

(assert (=> b!2581352 d!731079))

(assert (=> b!2581369 d!731069))

(assert (=> b!2581369 d!731065))

(declare-fun d!731081 () Bool)

(declare-fun c!416180 () Bool)

(assert (=> d!731081 (= c!416180 (is-Node!9272 (c!416167 x!465151)))))

(declare-fun e!1628874 () Bool)

(assert (=> d!731081 (= (inv!40106 (c!416167 x!465151)) e!1628874)))

(declare-fun b!2581432 () Bool)

(assert (=> b!2581432 (= e!1628874 (inv!40112 (c!416167 x!465151)))))

(declare-fun b!2581433 () Bool)

(declare-fun e!1628875 () Bool)

(assert (=> b!2581433 (= e!1628874 e!1628875)))

(declare-fun res!1085638 () Bool)

(assert (=> b!2581433 (= res!1085638 (not (is-Leaf!14145 (c!416167 x!465151))))))

(assert (=> b!2581433 (=> res!1085638 e!1628875)))

(declare-fun b!2581434 () Bool)

(assert (=> b!2581434 (= e!1628875 (inv!40113 (c!416167 x!465151)))))

(assert (= (and d!731081 c!416180) b!2581432))

(assert (= (and d!731081 (not c!416180)) b!2581433))

(assert (= (and b!2581433 (not res!1085638)) b!2581434))

(declare-fun m!2918025 () Bool)

(assert (=> b!2581432 m!2918025))

(declare-fun m!2918027 () Bool)

(assert (=> b!2581434 m!2918027))

(assert (=> b!2581350 d!731081))

(assert (=> b!2581365 d!731065))

(assert (=> b!2581365 d!731069))

(assert (=> bs!471361 d!731073))

(declare-fun b!2581476 () Bool)

(declare-fun e!1628896 () BalanceConc!18158)

(declare-fun e!1628900 () BalanceConc!18158)

(assert (=> b!2581476 (= e!1628896 e!1628900)))

(declare-fun c!416210 () Bool)

(assert (=> b!2581476 (= c!416210 (is-LeftBrace!4728 (toValue!11 thiss!3262 x!465151)))))

(declare-fun b!2581477 () Bool)

(declare-fun c!416202 () Bool)

(assert (=> b!2581477 (= c!416202 (is-False!9457 (toValue!11 thiss!3262 x!465151)))))

(declare-fun e!1628903 () BalanceConc!18158)

(declare-fun e!1628898 () BalanceConc!18158)

(assert (=> b!2581477 (= e!1628903 e!1628898)))

(declare-fun b!2581478 () Bool)

(declare-fun e!1628901 () BalanceConc!18158)

(declare-fun e!1628897 () BalanceConc!18158)

(assert (=> b!2581478 (= e!1628901 e!1628897)))

(declare-fun c!416204 () Bool)

(assert (=> b!2581478 (= c!416204 (is-Broken!23643 (toValue!11 thiss!3262 x!465151)))))

(declare-fun b!2581479 () Bool)

(declare-fun commaStringConc!0 () BalanceConc!18158)

(assert (=> b!2581479 (= e!1628896 commaStringConc!0)))

(declare-fun b!2581480 () Bool)

(assert (=> b!2581480 (= e!1628897 (BalanceConc!18159 Empty!9272))))

(declare-fun b!2581481 () Bool)

(declare-fun e!1628905 () BalanceConc!18158)

(declare-fun e!1628902 () BalanceConc!18158)

(assert (=> b!2581481 (= e!1628905 e!1628902)))

(declare-fun c!416206 () Bool)

(assert (=> b!2581481 (= c!416206 (is-LeftBracket!4728 (toValue!11 thiss!3262 x!465151)))))

(declare-fun b!2581482 () Bool)

(declare-fun seqFromList!3149 (List!29812) BalanceConc!18158)

(assert (=> b!2581482 (= e!1628897 (seqFromList!3149 (value!145656 (toValue!11 thiss!3262 x!465151))))))

(declare-fun b!2581483 () Bool)

(declare-fun e!1628904 () BalanceConc!18158)

(declare-fun colonStringConc!0 () BalanceConc!18158)

(assert (=> b!2581483 (= e!1628904 colonStringConc!0)))

(declare-fun b!2581484 () Bool)

(assert (=> b!2581484 (= e!1628898 e!1628904)))

(declare-fun c!416205 () Bool)

(assert (=> b!2581484 (= c!416205 (is-Colon!4728 (toValue!11 thiss!3262 x!465151)))))

(declare-fun b!2581485 () Bool)

(declare-fun c!416208 () Bool)

(assert (=> b!2581485 (= c!416208 (is-RightBrace!4728 (toValue!11 thiss!3262 x!465151)))))

(assert (=> b!2581485 (= e!1628900 e!1628905)))

(declare-fun b!2581486 () Bool)

(declare-fun c!416203 () Bool)

(assert (=> b!2581486 (= c!416203 (is-Comma!4728 (toValue!11 thiss!3262 x!465151)))))

(assert (=> b!2581486 (= e!1628904 e!1628896)))

(declare-fun b!2581487 () Bool)

(declare-fun trueStringConc!0 () BalanceConc!18158)

(assert (=> b!2581487 (= e!1628903 trueStringConc!0)))

(declare-fun b!2581488 () Bool)

(declare-fun c!416207 () Bool)

(assert (=> b!2581488 (= c!416207 (is-RightBracket!4728 (toValue!11 thiss!3262 x!465151)))))

(assert (=> b!2581488 (= e!1628902 e!1628901)))

(declare-fun d!731083 () Bool)

(declare-fun c!416209 () Bool)

(assert (=> d!731083 (= c!416209 (is-Null!4728 (toValue!11 thiss!3262 x!465151)))))

(declare-fun e!1628899 () BalanceConc!18158)

(assert (=> d!731083 (= (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!465151)) e!1628899)))

(declare-fun b!2581475 () Bool)

(declare-fun nullStringConc!0 () BalanceConc!18158)

(assert (=> b!2581475 (= e!1628899 nullStringConc!0)))

(declare-fun b!2581489 () Bool)

(declare-fun rightBraceStringConc!0 () BalanceConc!18158)

(assert (=> b!2581489 (= e!1628905 rightBraceStringConc!0)))

(declare-fun b!2581490 () Bool)

(declare-fun falseStringConc!0 () BalanceConc!18158)

(assert (=> b!2581490 (= e!1628898 falseStringConc!0)))

(declare-fun b!2581491 () Bool)

(declare-fun rightBracketStringConc!0 () BalanceConc!18158)

(assert (=> b!2581491 (= e!1628901 rightBracketStringConc!0)))

(declare-fun b!2581492 () Bool)

(declare-fun leftBracketStringConc!0 () BalanceConc!18158)

(assert (=> b!2581492 (= e!1628902 leftBracketStringConc!0)))

(declare-fun b!2581493 () Bool)

(declare-fun leftBraceStringConc!0 () BalanceConc!18158)

(assert (=> b!2581493 (= e!1628900 leftBraceStringConc!0)))

(declare-fun b!2581494 () Bool)

(assert (=> b!2581494 (= e!1628899 e!1628903)))

(declare-fun c!416211 () Bool)

(assert (=> b!2581494 (= c!416211 (is-True!9457 (toValue!11 thiss!3262 x!465151)))))

(assert (= (and d!731083 c!416209) b!2581475))

(assert (= (and d!731083 (not c!416209)) b!2581494))

(assert (= (and b!2581494 c!416211) b!2581487))

(assert (= (and b!2581494 (not c!416211)) b!2581477))

(assert (= (and b!2581477 c!416202) b!2581490))

(assert (= (and b!2581477 (not c!416202)) b!2581484))

(assert (= (and b!2581484 c!416205) b!2581483))

(assert (= (and b!2581484 (not c!416205)) b!2581486))

(assert (= (and b!2581486 c!416203) b!2581479))

(assert (= (and b!2581486 (not c!416203)) b!2581476))

(assert (= (and b!2581476 c!416210) b!2581493))

(assert (= (and b!2581476 (not c!416210)) b!2581485))

(assert (= (and b!2581485 c!416208) b!2581489))

(assert (= (and b!2581485 (not c!416208)) b!2581481))

(assert (= (and b!2581481 c!416206) b!2581492))

(assert (= (and b!2581481 (not c!416206)) b!2581488))

(assert (= (and b!2581488 c!416207) b!2581491))

(assert (= (and b!2581488 (not c!416207)) b!2581478))

(assert (= (and b!2581478 c!416204) b!2581482))

(assert (= (and b!2581478 (not c!416204)) b!2581480))

(declare-fun m!2918029 () Bool)

(assert (=> b!2581487 m!2918029))

(declare-fun m!2918031 () Bool)

(assert (=> b!2581493 m!2918031))

(declare-fun m!2918033 () Bool)

(assert (=> b!2581489 m!2918033))

(declare-fun m!2918035 () Bool)

(assert (=> b!2581483 m!2918035))

(declare-fun m!2918037 () Bool)

(assert (=> b!2581490 m!2918037))

(declare-fun m!2918039 () Bool)

(assert (=> b!2581482 m!2918039))

(declare-fun m!2918041 () Bool)

(assert (=> b!2581491 m!2918041))

(declare-fun m!2918043 () Bool)

(assert (=> b!2581479 m!2918043))

(declare-fun m!2918045 () Bool)

(assert (=> b!2581492 m!2918045))

(declare-fun m!2918047 () Bool)

(assert (=> b!2581475 m!2918047))

(assert (=> bs!471361 d!731083))

(assert (=> bs!471361 d!731065))

(assert (=> bs!471361 d!731063))

(assert (=> b!2581351 d!731069))

(assert (=> b!2581351 d!731071))

(assert (=> bs!471372 d!731061))

(assert (=> b!2581356 d!731067))

(assert (=> bs!471390 d!731075))

(assert (=> bs!471390 d!731063))

(assert (=> start!249834 d!731083))

(assert (=> start!249834 d!731073))

(declare-fun d!731085 () Bool)

(declare-fun isBalanced!2828 (Conc!9272) Bool)

(assert (=> d!731085 (= (inv!40107 x!465151) (isBalanced!2828 (c!416167 x!465151)))))

(declare-fun bs!471473 () Bool)

(assert (= bs!471473 d!731085))

(declare-fun m!2918049 () Bool)

(assert (=> bs!471473 m!2918049))

(assert (=> start!249834 d!731085))

(declare-fun d!731087 () Bool)

(declare-fun choose!15215 (Int) Bool)

(assert (=> d!731087 (= (Forall!1163 lambda!95649) (choose!15215 lambda!95649))))

(declare-fun bs!471474 () Bool)

(assert (= bs!471474 d!731087))

(declare-fun m!2918051 () Bool)

(assert (=> bs!471474 m!2918051))

(assert (=> start!249834 d!731087))

(assert (=> start!249834 d!731063))

(assert (=> start!249834 d!731065))

(assert (=> bs!471373 d!731061))

(assert (=> bs!471373 d!731073))

(assert (=> b!2581363 d!731071))

(assert (=> b!2581363 d!731069))

(assert (=> bs!471368 d!731073))

(assert (=> bs!471368 d!731061))

(assert (=> b!2581354 d!731065))

(declare-fun d!731089 () Bool)

(declare-fun res!1085643 () Bool)

(declare-fun e!1628908 () Bool)

(assert (=> d!731089 (=> (not res!1085643) (not e!1628908))))

(assert (=> d!731089 (= res!1085643 (semiInverseModEq!1879 (toChars!6249 (TokenValueInjection!8901 lambda!95651 lambda!95650)) (toValue!6390 (TokenValueInjection!8901 lambda!95651 lambda!95650))))))

(assert (=> d!731089 (= (inv!40108 (TokenValueInjection!8901 lambda!95651 lambda!95650)) e!1628908)))

(declare-fun b!2581497 () Bool)

(assert (=> b!2581497 (= e!1628908 (equivClasses!1780 (toChars!6249 (TokenValueInjection!8901 lambda!95651 lambda!95650)) (toValue!6390 (TokenValueInjection!8901 lambda!95651 lambda!95650))))))

(assert (= (and d!731089 res!1085643) b!2581497))

(declare-fun m!2918053 () Bool)

(assert (=> d!731089 m!2918053))

(declare-fun m!2918055 () Bool)

(assert (=> b!2581497 m!2918055))

(assert (=> b!2581341 d!731089))

(declare-fun bs!471475 () Bool)

(declare-fun d!731091 () Bool)

(assert (= bs!471475 (and d!731091 b!2581340)))

(declare-fun lambda!95683 () Int)

(assert (=> bs!471475 (not (= lambda!95683 lambda!95652))))

(assert (=> d!731091 true))

(declare-fun order!15809 () Int)

(declare-fun order!15811 () Int)

(declare-fun dynLambda!12543 (Int Int) Int)

(declare-fun dynLambda!12544 (Int Int) Int)

(assert (=> d!731091 (< (dynLambda!12543 order!15809 lambda!95651) (dynLambda!12544 order!15811 lambda!95683))))

(assert (=> d!731091 (= (equivClasses!1780 lambda!95650 lambda!95651) (Forall2!762 lambda!95683))))

(declare-fun bs!471476 () Bool)

(assert (= bs!471476 d!731091))

(declare-fun m!2918057 () Bool)

(assert (=> bs!471476 m!2918057))

(assert (=> b!2581341 d!731091))

(declare-fun d!731093 () Bool)

(declare-fun choose!15216 (Int) Bool)

(assert (=> d!731093 (= (Forall2!762 lambda!95652) (choose!15216 lambda!95652))))

(declare-fun bs!471477 () Bool)

(assert (= bs!471477 d!731093))

(declare-fun m!2918059 () Bool)

(assert (=> bs!471477 m!2918059))

(assert (=> b!2581341 d!731093))

(assert (=> b!2581360 d!731071))

(assert (=> b!2581366 d!731069))

(assert (=> bs!471363 d!731063))

(assert (=> b!2581340 d!731061))

(assert (=> b!2581340 d!731075))

(declare-fun bs!471478 () Bool)

(declare-fun d!731095 () Bool)

(assert (= bs!471478 (and d!731095 start!249834)))

(declare-fun lambda!95686 () Int)

(assert (=> bs!471478 (not (= lambda!95686 lambda!95649))))

(assert (=> d!731095 true))

(declare-fun order!15813 () Int)

(declare-fun order!15815 () Int)

(declare-fun dynLambda!12545 (Int Int) Int)

(declare-fun dynLambda!12546 (Int Int) Int)

(assert (=> d!731095 (< (dynLambda!12545 order!15813 lambda!95650) (dynLambda!12546 order!15815 lambda!95686))))

(assert (=> d!731095 true))

(assert (=> d!731095 (< (dynLambda!12543 order!15809 lambda!95651) (dynLambda!12546 order!15815 lambda!95686))))

(assert (=> d!731095 (= (semiInverseModEq!1879 lambda!95650 lambda!95651) (Forall!1163 lambda!95686))))

(declare-fun bs!471479 () Bool)

(assert (= bs!471479 d!731095))

(declare-fun m!2918061 () Bool)

(assert (=> bs!471479 m!2918061))

(assert (=> b!2581340 d!731095))

(declare-fun d!731099 () Bool)

(assert (=> d!731099 (= (inv!40107 x!465152) (isBalanced!2828 (c!416167 x!465152)))))

(declare-fun bs!471480 () Bool)

(assert (= bs!471480 d!731099))

(declare-fun m!2918063 () Bool)

(assert (=> bs!471480 m!2918063))

(assert (=> b!2581340 d!731099))

(assert (=> b!2581340 d!731093))

(assert (=> b!2581340 d!731087))

(declare-fun d!731101 () Bool)

(assert (=> d!731101 (= (inv!40107 x!465153) (isBalanced!2828 (c!416167 x!465153)))))

(declare-fun bs!471481 () Bool)

(assert (= bs!471481 d!731101))

(declare-fun m!2918065 () Bool)

(assert (=> bs!471481 m!2918065))

(assert (=> b!2581340 d!731101))

(assert (=> b!2581357 d!731067))

(assert (=> b!2581357 d!731065))

(declare-fun tp!819495 () Bool)

(declare-fun e!1628915 () Bool)

(declare-fun b!2581512 () Bool)

(declare-fun tp!819496 () Bool)

(assert (=> b!2581512 (= e!1628915 (and (inv!40106 (left!22646 (c!416167 x!465153))) tp!819495 (inv!40106 (right!22976 (c!416167 x!465153))) tp!819496))))

(declare-fun b!2581513 () Bool)

(declare-fun inv!40114 (IArray!18549) Bool)

(assert (=> b!2581513 (= e!1628915 (inv!40114 (xs!12256 (c!416167 x!465153))))))

(assert (=> b!2581353 (= tp!819481 (and (inv!40106 (c!416167 x!465153)) e!1628915))))

(assert (= (and b!2581353 (is-Node!9272 (c!416167 x!465153))) b!2581512))

(assert (= (and b!2581353 (is-Leaf!14145 (c!416167 x!465153))) b!2581513))

(declare-fun m!2918067 () Bool)

(assert (=> b!2581512 m!2918067))

(declare-fun m!2918069 () Bool)

(assert (=> b!2581512 m!2918069))

(declare-fun m!2918071 () Bool)

(assert (=> b!2581513 m!2918071))

(assert (=> b!2581353 m!2917947))

(declare-fun tp!819497 () Bool)

(declare-fun tp!819498 () Bool)

(declare-fun e!1628917 () Bool)

(declare-fun b!2581514 () Bool)

(assert (=> b!2581514 (= e!1628917 (and (inv!40106 (left!22646 (c!416167 x!465152))) tp!819497 (inv!40106 (right!22976 (c!416167 x!465152))) tp!819498))))

(declare-fun b!2581515 () Bool)

(assert (=> b!2581515 (= e!1628917 (inv!40114 (xs!12256 (c!416167 x!465152))))))

(assert (=> b!2581352 (= tp!819480 (and (inv!40106 (c!416167 x!465152)) e!1628917))))

(assert (= (and b!2581352 (is-Node!9272 (c!416167 x!465152))) b!2581514))

(assert (= (and b!2581352 (is-Leaf!14145 (c!416167 x!465152))) b!2581515))

(declare-fun m!2918073 () Bool)

(assert (=> b!2581514 m!2918073))

(declare-fun m!2918075 () Bool)

(assert (=> b!2581514 m!2918075))

(declare-fun m!2918077 () Bool)

(assert (=> b!2581515 m!2918077))

(assert (=> b!2581352 m!2917945))

(declare-fun e!1628919 () Bool)

(declare-fun tp!819499 () Bool)

(declare-fun tp!819500 () Bool)

(declare-fun b!2581516 () Bool)

(assert (=> b!2581516 (= e!1628919 (and (inv!40106 (left!22646 (c!416167 x!465151))) tp!819499 (inv!40106 (right!22976 (c!416167 x!465151))) tp!819500))))

(declare-fun b!2581517 () Bool)

(assert (=> b!2581517 (= e!1628919 (inv!40114 (xs!12256 (c!416167 x!465151))))))

(assert (=> b!2581350 (= tp!819479 (and (inv!40106 (c!416167 x!465151)) e!1628919))))

(assert (= (and b!2581350 (is-Node!9272 (c!416167 x!465151))) b!2581516))

(assert (= (and b!2581350 (is-Leaf!14145 (c!416167 x!465151))) b!2581517))

(declare-fun m!2918079 () Bool)

(assert (=> b!2581516 m!2918079))

(declare-fun m!2918081 () Bool)

(assert (=> b!2581516 m!2918081))

(declare-fun m!2918083 () Bool)

(assert (=> b!2581517 m!2918083))

(assert (=> b!2581350 m!2917921))

(push 1)

(assert (not b!2581426))

(assert (not d!731091))

(assert (not d!731061))

(assert (not b!2581483))

(assert (not d!731089))

(assert (not b!2581492))

(assert (not b!2581487))

(assert (not d!731093))

(assert (not b!2581514))

(assert (not b!2581352))

(assert (not d!731067))

(assert (not b!2581350))

(assert (not d!731085))

(assert (not b!2581512))

(assert (not b!2581432))

(assert (not b!2581517))

(assert (not b!2581491))

(assert (not d!731063))

(assert (not b!2581513))

(assert (not d!731069))

(assert (not b!2581482))

(assert (not d!731101))

(assert (not b!2581434))

(assert (not d!731087))

(assert (not d!731071))

(assert (not b!2581490))

(assert (not b!2581475))

(assert (not b!2581429))

(assert (not b!2581353))

(assert (not d!731075))

(assert (not b!2581431))

(assert (not b!2581515))

(assert (not d!731095))

(assert (not d!731065))

(assert (not b!2581497))

(assert (not b!2581489))

(assert (not b!2581428))

(assert (not b!2581479))

(assert (not d!731099))

(assert (not b!2581493))

(assert (not d!731073))

(assert (not b!2581516))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

