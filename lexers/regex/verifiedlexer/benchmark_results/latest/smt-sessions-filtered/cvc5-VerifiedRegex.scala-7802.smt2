; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!409896 () Bool)

(assert start!409896)

(assert (=> start!409896 true))

(declare-fun b!4271825 () Bool)

(assert (=> b!4271825 true))

(assert (=> b!4271825 true))

(assert (=> b!4271825 true))

(declare-fun b!4271835 () Bool)

(declare-fun e!2652285 () Bool)

(declare-datatypes ((List!47436 0))(
  ( (Nil!47312) (Cons!47312 (h!52732 (_ BitVec 16)) (t!353784 List!47436)) )
))
(declare-datatypes ((IArray!28593 0))(
  ( (IArray!28594 (innerList!14354 List!47436)) )
))
(declare-datatypes ((Conc!14294 0))(
  ( (Node!14294 (left!35174 Conc!14294) (right!35504 Conc!14294) (csize!28818 Int) (cheight!14505 Int)) (Leaf!22097 (xs!17600 IArray!28593) (csize!28819 Int)) (Empty!14294) )
))
(declare-datatypes ((BalanceConc!28098 0))(
  ( (BalanceConc!28099 (c!726879 Conc!14294)) )
))
(declare-fun x!741447 () BalanceConc!28098)

(declare-fun tp!1308149 () Bool)

(declare-fun inv!62457 (Conc!14294) Bool)

(assert (=> b!4271835 (= e!2652285 (and (inv!62457 (c!726879 x!741447)) tp!1308149))))

(declare-fun inst!1726 () Bool)

(declare-datatypes ((IntegerValueInjection!140 0))(
  ( (IntegerValueInjection!141) )
))
(declare-fun thiss!2185 () IntegerValueInjection!140)

(declare-fun inv!62458 (BalanceConc!28098) Bool)

(declare-fun list!17175 (BalanceConc!28098) List!47436)

(declare-datatypes ((TokenValue!8267 0))(
  ( (FloatLiteralValue!16534 (text!58314 List!47436)) (TokenValueExt!8266 (__x!28713 Int)) (Broken!41335 (value!249553 List!47436)) (Object!8390) (End!8267) (Def!8267) (Underscore!8267) (Match!8267) (Else!8267) (Error!8267) (Case!8267) (If!8267) (Extends!8267) (Abstract!8267) (Class!8267) (Val!8267) (DelimiterValue!16534 (del!8327 List!47436)) (KeywordValue!8273 (value!249554 List!47436)) (CommentValue!16534 (value!249555 List!47436)) (WhitespaceValue!16534 (value!249556 List!47436)) (IndentationValue!8267 (value!249557 List!47436)) (String!55278) (Int32!8267) (Broken!41336 (value!249558 List!47436)) (Boolean!8268) (Unit!66237) (OperatorValue!8270 (op!8327 List!47436)) (IdentifierValue!16534 (value!249559 List!47436)) (IdentifierValue!16535 (value!249560 List!47436)) (WhitespaceValue!16535 (value!249561 List!47436)) (True!16534) (False!16534) (Broken!41337 (value!249562 List!47436)) (Broken!41338 (value!249563 List!47436)) (True!16535) (RightBrace!8267) (RightBracket!8267) (Colon!8267) (Null!8267) (Comma!8267) (LeftBracket!8267) (False!16535) (LeftBrace!8267) (ImaginaryLiteralValue!8267 (text!58315 List!47436)) (StringLiteralValue!24801 (value!249564 List!47436)) (EOFValue!8267 (value!249565 List!47436)) (IdentValue!8267 (value!249566 List!47436)) (DelimiterValue!16535 (value!249567 List!47436)) (DedentValue!8267 (value!249568 List!47436)) (NewLineValue!8267 (value!249569 List!47436)) (IntegerValue!24801 (value!249570 (_ BitVec 32)) (text!58316 List!47436)) (IntegerValue!24802 (value!249571 Int) (text!58317 List!47436)) (Times!8267) (Or!8267) (Equal!8267) (Minus!8267) (Broken!41339 (value!249572 List!47436)) (And!8267) (Div!8267) (LessEqual!8267) (Mod!8267) (Concat!21165) (Not!8267) (Plus!8267) (SpaceValue!8267 (value!249573 List!47436)) (IntegerValue!24803 (value!249574 Int) (text!58318 List!47436)) (StringLiteralValue!24802 (text!58319 List!47436)) (FloatLiteralValue!16535 (text!58320 List!47436)) (BytesLiteralValue!8267 (value!249575 List!47436)) (CommentValue!16535 (value!249576 List!47436)) (StringLiteralValue!24803 (value!249577 List!47436)) (ErrorTokenValue!8267 (msg!8328 List!47436)) )
))
(declare-fun toCharacters!5 (IntegerValueInjection!140 TokenValue!8267) BalanceConc!28098)

(declare-fun toValue!12 (IntegerValueInjection!140 BalanceConc!28098) TokenValue!8267)

(assert (=> start!409896 (= inst!1726 (=> (and (inv!62458 x!741447) e!2652285) (= (list!17175 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741447))) (list!17175 x!741447))))))

(assert (= start!409896 b!4271835))

(declare-fun m!4865539 () Bool)

(assert (=> b!4271835 m!4865539))

(declare-fun m!4865541 () Bool)

(assert (=> start!409896 m!4865541))

(declare-fun m!4865543 () Bool)

(assert (=> start!409896 m!4865543))

(assert (=> start!409896 m!4865543))

(declare-fun m!4865545 () Bool)

(assert (=> start!409896 m!4865545))

(declare-fun m!4865547 () Bool)

(assert (=> start!409896 m!4865547))

(declare-fun m!4865549 () Bool)

(assert (=> start!409896 m!4865549))

(assert (=> start!409896 m!4865541))

(declare-fun res!1754687 () Bool)

(declare-fun e!2652287 () Bool)

(assert (=> b!4271825 (=> res!1754687 e!2652287)))

(declare-fun x!741448 () BalanceConc!28098)

(declare-fun x!741449 () BalanceConc!28098)

(assert (=> b!4271825 (= res!1754687 (not (= (list!17175 x!741448) (list!17175 x!741449))))))

(declare-fun e!2652288 () Bool)

(declare-fun inst!1727 () Bool)

(declare-fun e!2652286 () Bool)

(assert (=> b!4271825 (= inst!1727 (=> (and (inv!62458 x!741448) e!2652288 (inv!62458 x!741449) e!2652286) e!2652287))))

(declare-fun b!4271836 () Bool)

(assert (=> b!4271836 (= e!2652287 (= (toValue!12 thiss!2185 x!741448) (toValue!12 thiss!2185 x!741449)))))

(declare-fun b!4271837 () Bool)

(declare-fun tp!1308151 () Bool)

(assert (=> b!4271837 (= e!2652288 (and (inv!62457 (c!726879 x!741448)) tp!1308151))))

(declare-fun b!4271838 () Bool)

(declare-fun tp!1308150 () Bool)

(assert (=> b!4271838 (= e!2652286 (and (inv!62457 (c!726879 x!741449)) tp!1308150))))

(assert (= (and b!4271825 (not res!1754687)) b!4271836))

(assert (= b!4271825 b!4271837))

(assert (= b!4271825 b!4271838))

(declare-fun m!4865551 () Bool)

(assert (=> b!4271825 m!4865551))

(declare-fun m!4865553 () Bool)

(assert (=> b!4271825 m!4865553))

(declare-fun m!4865555 () Bool)

(assert (=> b!4271825 m!4865555))

(declare-fun m!4865557 () Bool)

(assert (=> b!4271825 m!4865557))

(declare-fun m!4865559 () Bool)

(assert (=> b!4271836 m!4865559))

(declare-fun m!4865561 () Bool)

(assert (=> b!4271836 m!4865561))

(declare-fun m!4865563 () Bool)

(assert (=> b!4271837 m!4865563))

(declare-fun m!4865565 () Bool)

(assert (=> b!4271838 m!4865565))

(declare-fun bs!601089 () Bool)

(declare-fun neg-inst!1727 () Bool)

(declare-fun s!239920 () Bool)

(assert (= bs!601089 (and neg-inst!1727 s!239920)))

(assert (=> bs!601089 (=> true (= (list!17175 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741447))) (list!17175 x!741447)))))

(assert (=> m!4865541 m!4865543))

(assert (=> m!4865541 m!4865545))

(assert (=> m!4865541 m!4865547))

(assert (=> m!4865541 s!239920))

(assert (=> m!4865547 s!239920))

(declare-fun bs!601090 () Bool)

(assert (= bs!601090 (and neg-inst!1727 start!409896)))

(assert (=> bs!601090 (= true inst!1726)))

(declare-fun bs!601091 () Bool)

(declare-fun neg-inst!1726 () Bool)

(declare-fun s!239922 () Bool)

(assert (= bs!601091 (and neg-inst!1726 s!239922)))

(declare-fun res!1754688 () Bool)

(declare-fun e!2652289 () Bool)

(assert (=> bs!601091 (=> res!1754688 e!2652289)))

(assert (=> bs!601091 (= res!1754688 (not (= (list!17175 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741447))) (list!17175 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741447))))))))

(assert (=> bs!601091 (=> true e!2652289)))

(declare-fun b!4271839 () Bool)

(assert (=> b!4271839 (= e!2652289 (= (toValue!12 thiss!2185 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741447))) (toValue!12 thiss!2185 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741447)))))))

(assert (= (and bs!601091 (not res!1754688)) b!4271839))

(assert (=> m!4865545 s!239922))

(assert (=> m!4865545 s!239922))

(declare-fun bs!601092 () Bool)

(declare-fun s!239924 () Bool)

(assert (= bs!601092 (and neg-inst!1726 s!239924)))

(declare-fun res!1754689 () Bool)

(declare-fun e!2652290 () Bool)

(assert (=> bs!601092 (=> res!1754689 e!2652290)))

(assert (=> bs!601092 (= res!1754689 (not (= (list!17175 x!741448) (list!17175 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741447))))))))

(assert (=> bs!601092 (=> true e!2652290)))

(declare-fun b!4271840 () Bool)

(assert (=> b!4271840 (= e!2652290 (= (toValue!12 thiss!2185 x!741448) (toValue!12 thiss!2185 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741447)))))))

(assert (= (and bs!601092 (not res!1754689)) b!4271840))

(declare-fun bs!601093 () Bool)

(assert (= bs!601093 (and m!4865559 m!4865545)))

(assert (=> bs!601093 m!4865551))

(assert (=> bs!601093 m!4865545))

(assert (=> bs!601093 s!239924))

(declare-fun bs!601094 () Bool)

(declare-fun s!239926 () Bool)

(assert (= bs!601094 (and neg-inst!1726 s!239926)))

(declare-fun res!1754690 () Bool)

(declare-fun e!2652291 () Bool)

(assert (=> bs!601094 (=> res!1754690 e!2652291)))

(assert (=> bs!601094 (= res!1754690 (not (= (list!17175 x!741448) (list!17175 x!741448))))))

(assert (=> bs!601094 (=> true e!2652291)))

(declare-fun b!4271841 () Bool)

(assert (=> b!4271841 (= e!2652291 (= (toValue!12 thiss!2185 x!741448) (toValue!12 thiss!2185 x!741448)))))

(assert (= (and bs!601094 (not res!1754690)) b!4271841))

(assert (=> m!4865559 m!4865551))

(assert (=> m!4865559 m!4865551))

(assert (=> m!4865559 s!239926))

(declare-fun bs!601095 () Bool)

(declare-fun s!239928 () Bool)

(assert (= bs!601095 (and neg-inst!1726 s!239928)))

(declare-fun res!1754691 () Bool)

(declare-fun e!2652292 () Bool)

(assert (=> bs!601095 (=> res!1754691 e!2652292)))

(assert (=> bs!601095 (= res!1754691 (not (= (list!17175 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741447))) (list!17175 x!741448))))))

(assert (=> bs!601095 (=> true e!2652292)))

(declare-fun b!4271842 () Bool)

(assert (=> b!4271842 (= e!2652292 (= (toValue!12 thiss!2185 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741447))) (toValue!12 thiss!2185 x!741448)))))

(assert (= (and bs!601095 (not res!1754691)) b!4271842))

(assert (=> bs!601093 m!4865545))

(assert (=> bs!601093 m!4865551))

(assert (=> bs!601093 s!239928))

(assert (=> m!4865559 s!239926))

(declare-fun bs!601096 () Bool)

(declare-fun s!239930 () Bool)

(assert (= bs!601096 (and neg-inst!1726 s!239930)))

(declare-fun res!1754692 () Bool)

(declare-fun e!2652293 () Bool)

(assert (=> bs!601096 (=> res!1754692 e!2652293)))

(assert (=> bs!601096 (= res!1754692 (not (= (list!17175 x!741447) (list!17175 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741447))))))))

(assert (=> bs!601096 (=> true e!2652293)))

(declare-fun b!4271843 () Bool)

(assert (=> b!4271843 (= e!2652293 (= (toValue!12 thiss!2185 x!741447) (toValue!12 thiss!2185 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741447)))))))

(assert (= (and bs!601096 (not res!1754692)) b!4271843))

(declare-fun bs!601097 () Bool)

(assert (= bs!601097 (and m!4865541 m!4865545)))

(assert (=> bs!601097 m!4865547))

(assert (=> bs!601097 m!4865545))

(assert (=> bs!601097 s!239930))

(declare-fun bs!601098 () Bool)

(declare-fun s!239932 () Bool)

(assert (= bs!601098 (and neg-inst!1726 s!239932)))

(declare-fun res!1754693 () Bool)

(declare-fun e!2652294 () Bool)

(assert (=> bs!601098 (=> res!1754693 e!2652294)))

(assert (=> bs!601098 (= res!1754693 (not (= (list!17175 x!741447) (list!17175 x!741448))))))

(assert (=> bs!601098 (=> true e!2652294)))

(declare-fun b!4271844 () Bool)

(assert (=> b!4271844 (= e!2652294 (= (toValue!12 thiss!2185 x!741447) (toValue!12 thiss!2185 x!741448)))))

(assert (= (and bs!601098 (not res!1754693)) b!4271844))

(declare-fun bs!601099 () Bool)

(assert (= bs!601099 (and m!4865541 m!4865559)))

(assert (=> bs!601099 m!4865547))

(assert (=> bs!601099 m!4865551))

(assert (=> bs!601099 s!239932))

(declare-fun bs!601100 () Bool)

(declare-fun s!239934 () Bool)

(assert (= bs!601100 (and neg-inst!1726 s!239934)))

(declare-fun res!1754694 () Bool)

(declare-fun e!2652295 () Bool)

(assert (=> bs!601100 (=> res!1754694 e!2652295)))

(assert (=> bs!601100 (= res!1754694 (not (= (list!17175 x!741447) (list!17175 x!741447))))))

(assert (=> bs!601100 (=> true e!2652295)))

(declare-fun b!4271845 () Bool)

(assert (=> b!4271845 (= e!2652295 (= (toValue!12 thiss!2185 x!741447) (toValue!12 thiss!2185 x!741447)))))

(assert (= (and bs!601100 (not res!1754694)) b!4271845))

(assert (=> m!4865541 m!4865547))

(assert (=> m!4865541 m!4865547))

(assert (=> m!4865541 s!239934))

(declare-fun bs!601101 () Bool)

(declare-fun s!239936 () Bool)

(assert (= bs!601101 (and neg-inst!1726 s!239936)))

(declare-fun res!1754695 () Bool)

(declare-fun e!2652296 () Bool)

(assert (=> bs!601101 (=> res!1754695 e!2652296)))

(assert (=> bs!601101 (= res!1754695 (not (= (list!17175 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741447))) (list!17175 x!741447))))))

(assert (=> bs!601101 (=> true e!2652296)))

(declare-fun b!4271846 () Bool)

(assert (=> b!4271846 (= e!2652296 (= (toValue!12 thiss!2185 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741447))) (toValue!12 thiss!2185 x!741447)))))

(assert (= (and bs!601101 (not res!1754695)) b!4271846))

(assert (=> bs!601097 m!4865545))

(assert (=> bs!601097 m!4865547))

(assert (=> bs!601097 s!239936))

(declare-fun bs!601102 () Bool)

(declare-fun s!239938 () Bool)

(assert (= bs!601102 (and neg-inst!1726 s!239938)))

(declare-fun res!1754696 () Bool)

(declare-fun e!2652297 () Bool)

(assert (=> bs!601102 (=> res!1754696 e!2652297)))

(assert (=> bs!601102 (= res!1754696 (not (= (list!17175 x!741448) (list!17175 x!741447))))))

(assert (=> bs!601102 (=> true e!2652297)))

(declare-fun b!4271847 () Bool)

(assert (=> b!4271847 (= e!2652297 (= (toValue!12 thiss!2185 x!741448) (toValue!12 thiss!2185 x!741447)))))

(assert (= (and bs!601102 (not res!1754696)) b!4271847))

(assert (=> bs!601099 m!4865551))

(assert (=> bs!601099 m!4865547))

(assert (=> bs!601099 s!239938))

(assert (=> m!4865541 s!239934))

(declare-fun bs!601103 () Bool)

(declare-fun s!239940 () Bool)

(assert (= bs!601103 (and neg-inst!1726 s!239940)))

(declare-fun res!1754697 () Bool)

(declare-fun e!2652298 () Bool)

(assert (=> bs!601103 (=> res!1754697 e!2652298)))

(assert (=> bs!601103 (= res!1754697 (not (= (list!17175 x!741449) (list!17175 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741447))))))))

(assert (=> bs!601103 (=> true e!2652298)))

(declare-fun b!4271848 () Bool)

(assert (=> b!4271848 (= e!2652298 (= (toValue!12 thiss!2185 x!741449) (toValue!12 thiss!2185 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741447)))))))

(assert (= (and bs!601103 (not res!1754697)) b!4271848))

(declare-fun bs!601104 () Bool)

(assert (= bs!601104 (and m!4865553 m!4865545)))

(assert (=> bs!601104 m!4865553))

(assert (=> bs!601104 m!4865545))

(assert (=> bs!601104 s!239940))

(declare-fun bs!601105 () Bool)

(declare-fun s!239942 () Bool)

(assert (= bs!601105 (and neg-inst!1726 s!239942)))

(declare-fun res!1754698 () Bool)

(declare-fun e!2652299 () Bool)

(assert (=> bs!601105 (=> res!1754698 e!2652299)))

(assert (=> bs!601105 (= res!1754698 (not (= (list!17175 x!741449) (list!17175 x!741447))))))

(assert (=> bs!601105 (=> true e!2652299)))

(declare-fun b!4271849 () Bool)

(assert (=> b!4271849 (= e!2652299 (= (toValue!12 thiss!2185 x!741449) (toValue!12 thiss!2185 x!741447)))))

(assert (= (and bs!601105 (not res!1754698)) b!4271849))

(declare-fun bs!601106 () Bool)

(assert (= bs!601106 (and m!4865553 m!4865541)))

(assert (=> bs!601106 m!4865553))

(assert (=> bs!601106 m!4865547))

(assert (=> bs!601106 s!239942))

(declare-fun bs!601107 () Bool)

(declare-fun s!239944 () Bool)

(assert (= bs!601107 (and neg-inst!1726 s!239944)))

(declare-fun res!1754699 () Bool)

(declare-fun e!2652300 () Bool)

(assert (=> bs!601107 (=> res!1754699 e!2652300)))

(assert (=> bs!601107 (= res!1754699 (not (= (list!17175 x!741449) (list!17175 x!741448))))))

(assert (=> bs!601107 (=> true e!2652300)))

(declare-fun b!4271850 () Bool)

(assert (=> b!4271850 (= e!2652300 (= (toValue!12 thiss!2185 x!741449) (toValue!12 thiss!2185 x!741448)))))

(assert (= (and bs!601107 (not res!1754699)) b!4271850))

(declare-fun bs!601108 () Bool)

(assert (= bs!601108 (and m!4865553 m!4865559)))

(assert (=> bs!601108 m!4865553))

(assert (=> bs!601108 m!4865551))

(assert (=> bs!601108 s!239944))

(declare-fun bs!601109 () Bool)

(declare-fun s!239946 () Bool)

(assert (= bs!601109 (and neg-inst!1726 s!239946)))

(declare-fun res!1754700 () Bool)

(declare-fun e!2652301 () Bool)

(assert (=> bs!601109 (=> res!1754700 e!2652301)))

(assert (=> bs!601109 (= res!1754700 (not (= (list!17175 x!741449) (list!17175 x!741449))))))

(assert (=> bs!601109 (=> true e!2652301)))

(declare-fun b!4271851 () Bool)

(assert (=> b!4271851 (= e!2652301 (= (toValue!12 thiss!2185 x!741449) (toValue!12 thiss!2185 x!741449)))))

(assert (= (and bs!601109 (not res!1754700)) b!4271851))

(assert (=> m!4865553 s!239946))

(declare-fun bs!601110 () Bool)

(declare-fun s!239948 () Bool)

(assert (= bs!601110 (and neg-inst!1726 s!239948)))

(declare-fun res!1754701 () Bool)

(declare-fun e!2652302 () Bool)

(assert (=> bs!601110 (=> res!1754701 e!2652302)))

(assert (=> bs!601110 (= res!1754701 (not (= (list!17175 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741447))) (list!17175 x!741449))))))

(assert (=> bs!601110 (=> true e!2652302)))

(declare-fun b!4271852 () Bool)

(assert (=> b!4271852 (= e!2652302 (= (toValue!12 thiss!2185 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741447))) (toValue!12 thiss!2185 x!741449)))))

(assert (= (and bs!601110 (not res!1754701)) b!4271852))

(assert (=> bs!601104 m!4865545))

(assert (=> bs!601104 m!4865553))

(assert (=> bs!601104 s!239948))

(declare-fun bs!601111 () Bool)

(declare-fun s!239950 () Bool)

(assert (= bs!601111 (and neg-inst!1726 s!239950)))

(declare-fun res!1754702 () Bool)

(declare-fun e!2652303 () Bool)

(assert (=> bs!601111 (=> res!1754702 e!2652303)))

(assert (=> bs!601111 (= res!1754702 (not (= (list!17175 x!741447) (list!17175 x!741449))))))

(assert (=> bs!601111 (=> true e!2652303)))

(declare-fun b!4271853 () Bool)

(assert (=> b!4271853 (= e!2652303 (= (toValue!12 thiss!2185 x!741447) (toValue!12 thiss!2185 x!741449)))))

(assert (= (and bs!601111 (not res!1754702)) b!4271853))

(assert (=> bs!601106 m!4865547))

(assert (=> bs!601106 m!4865553))

(assert (=> bs!601106 s!239950))

(declare-fun bs!601112 () Bool)

(declare-fun s!239952 () Bool)

(assert (= bs!601112 (and neg-inst!1726 s!239952)))

(declare-fun res!1754703 () Bool)

(declare-fun e!2652304 () Bool)

(assert (=> bs!601112 (=> res!1754703 e!2652304)))

(assert (=> bs!601112 (= res!1754703 (not (= (list!17175 x!741448) (list!17175 x!741449))))))

(assert (=> bs!601112 (=> true e!2652304)))

(declare-fun b!4271854 () Bool)

(assert (=> b!4271854 (= e!2652304 (= (toValue!12 thiss!2185 x!741448) (toValue!12 thiss!2185 x!741449)))))

(assert (= (and bs!601112 (not res!1754703)) b!4271854))

(assert (=> bs!601108 m!4865551))

(assert (=> bs!601108 m!4865553))

(assert (=> bs!601108 s!239952))

(assert (=> m!4865553 s!239946))

(declare-fun bs!601113 () Bool)

(assert (= bs!601113 (and m!4865551 m!4865559)))

(assert (=> bs!601113 s!239926))

(declare-fun bs!601114 () Bool)

(assert (= bs!601114 (and m!4865551 m!4865553)))

(assert (=> bs!601114 s!239952))

(declare-fun bs!601115 () Bool)

(assert (= bs!601115 (and m!4865551 m!4865541)))

(assert (=> bs!601115 s!239938))

(assert (=> m!4865551 s!239926))

(declare-fun bs!601116 () Bool)

(assert (= bs!601116 (and m!4865551 m!4865545)))

(assert (=> bs!601116 s!239924))

(assert (=> bs!601113 s!239926))

(assert (=> bs!601115 s!239932))

(assert (=> m!4865551 s!239926))

(assert (=> bs!601114 s!239944))

(assert (=> bs!601116 s!239928))

(declare-fun bs!601117 () Bool)

(assert (= bs!601117 (and m!4865561 m!4865559 m!4865551)))

(assert (=> bs!601117 s!239944))

(assert (=> m!4865561 s!239946))

(declare-fun bs!601118 () Bool)

(assert (= bs!601118 (and m!4865561 m!4865553)))

(assert (=> bs!601118 s!239946))

(declare-fun bs!601119 () Bool)

(assert (= bs!601119 (and m!4865561 m!4865541)))

(assert (=> bs!601119 s!239942))

(declare-fun bs!601120 () Bool)

(assert (= bs!601120 (and m!4865561 m!4865545)))

(assert (=> bs!601120 s!239940))

(assert (=> bs!601120 s!239948))

(assert (=> m!4865561 s!239946))

(assert (=> bs!601117 s!239952))

(assert (=> bs!601119 s!239950))

(assert (=> bs!601118 s!239946))

(declare-fun bs!601121 () Bool)

(assert (= bs!601121 (and m!4865547 m!4865541)))

(assert (=> bs!601121 s!239934))

(declare-fun bs!601122 () Bool)

(assert (= bs!601122 (and m!4865547 m!4865559 m!4865551)))

(assert (=> bs!601122 s!239932))

(declare-fun bs!601123 () Bool)

(assert (= bs!601123 (and m!4865547 m!4865553 m!4865561)))

(assert (=> bs!601123 s!239950))

(assert (=> m!4865547 s!239934))

(declare-fun bs!601124 () Bool)

(assert (= bs!601124 (and m!4865547 m!4865545)))

(assert (=> bs!601124 s!239930))

(assert (=> bs!601121 s!239934))

(assert (=> bs!601124 s!239936))

(assert (=> bs!601123 s!239942))

(assert (=> bs!601122 s!239938))

(assert (=> m!4865547 s!239934))

(declare-fun bs!601125 () Bool)

(assert (= bs!601125 (and neg-inst!1726 b!4271825)))

(assert (=> bs!601125 (= true inst!1727)))

(declare-fun res!1754685 () Bool)

(declare-fun e!2652284 () Bool)

(assert (=> start!409896 (=> res!1754685 e!2652284)))

(declare-fun lambda!130966 () Int)

(declare-fun Forall!1641 (Int) Bool)

(assert (=> start!409896 (= res!1754685 (not (Forall!1641 lambda!130966)))))

(assert (=> start!409896 (= (Forall!1641 lambda!130966) inst!1726)))

(assert (=> start!409896 (not e!2652284)))

(assert (=> start!409896 true))

(declare-fun e!2652283 () Bool)

(assert (=> b!4271825 (= e!2652284 e!2652283)))

(declare-fun res!1754686 () Bool)

(assert (=> b!4271825 (=> res!1754686 e!2652283)))

(declare-fun lambda!130969 () Int)

(declare-fun Forall2!1228 (Int) Bool)

(assert (=> b!4271825 (= res!1754686 (not (Forall2!1228 lambda!130969)))))

(assert (=> b!4271825 (= (Forall2!1228 lambda!130969) inst!1727)))

(declare-fun lambda!130967 () Int)

(declare-fun lambda!130968 () Int)

(declare-fun semiInverseModEq!3513 (Int Int) Bool)

(assert (=> b!4271825 (= (semiInverseModEq!3513 lambda!130967 lambda!130968) (Forall!1641 lambda!130966))))

(declare-fun b!4271826 () Bool)

(declare-datatypes ((TokenValueInjection!15894 0))(
  ( (TokenValueInjection!15895 (toValue!10811 Int) (toChars!10670 Int)) )
))
(declare-fun inv!62459 (TokenValueInjection!15894) Bool)

(assert (=> b!4271826 (= e!2652283 (inv!62459 (TokenValueInjection!15895 lambda!130968 lambda!130967)))))

(declare-fun equivClasses!3400 (Int Int) Bool)

(assert (=> b!4271826 (= (equivClasses!3400 lambda!130967 lambda!130968) (Forall2!1228 lambda!130969))))

(assert (= neg-inst!1727 inst!1726))

(assert (= (and start!409896 (not res!1754685)) b!4271825))

(assert (= neg-inst!1726 inst!1727))

(assert (= (and b!4271825 (not res!1754686)) b!4271826))

(declare-fun m!4865567 () Bool)

(assert (=> start!409896 m!4865567))

(assert (=> start!409896 m!4865567))

(declare-fun m!4865569 () Bool)

(assert (=> b!4271825 m!4865569))

(assert (=> b!4271825 m!4865569))

(declare-fun m!4865571 () Bool)

(assert (=> b!4271825 m!4865571))

(assert (=> b!4271825 m!4865567))

(declare-fun m!4865573 () Bool)

(assert (=> b!4271826 m!4865573))

(declare-fun m!4865575 () Bool)

(assert (=> b!4271826 m!4865575))

(assert (=> b!4271826 m!4865569))

(push 1)

(assert (not b!4271840))

(assert (not b!4271836))

(assert (not b!4271842))

(assert (not b!4271847))

(assert (not bs!601101))

(assert (not bs!601100))

(assert (not b!4271852))

(assert (not bs!601112))

(assert (not bs!601089))

(assert (not b!4271853))

(assert (not b!4271845))

(assert (not bs!601111))

(assert (not bs!601103))

(assert (not bs!601109))

(assert (not b!4271841))

(assert (not bs!601098))

(assert (not bs!601110))

(assert (not bs!601092))

(assert (not b!4271848))

(assert (not b!4271835))

(assert (not start!409896))

(assert (not bs!601096))

(assert (not bs!601105))

(assert (not b!4271838))

(assert (not b!4271850))

(assert (not bs!601091))

(assert (not b!4271837))

(assert (not bs!601095))

(assert (not b!4271826))

(assert (not b!4271843))

(assert (not b!4271849))

(assert (not b!4271844))

(assert (not b!4271846))

(assert (not b!4271851))

(assert (not bs!601102))

(assert (not b!4271839))

(assert (not bs!601094))

(assert (not b!4271854))

(assert (not bs!601107))

(assert (not b!4271825))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!601163 () Bool)

(assert (= bs!601163 (and m!4865545 b!4271839)))

(declare-fun m!4865615 () Bool)

(assert (=> bs!601163 m!4865615))

(assert (=> bs!601163 m!4865615))

(declare-fun bs!601164 () Bool)

(assert (= bs!601164 (and m!4865559 m!4865545 b!4271840)))

(assert (=> bs!601164 m!4865559))

(assert (=> bs!601164 m!4865615))

(declare-fun bs!601165 () Bool)

(assert (= bs!601165 (and m!4865559 b!4271841)))

(assert (=> bs!601165 m!4865559))

(assert (=> bs!601165 m!4865559))

(declare-fun bs!601166 () Bool)

(assert (= bs!601166 (and m!4865559 m!4865545 b!4271842)))

(assert (=> bs!601166 m!4865615))

(assert (=> bs!601166 m!4865559))

(declare-fun bs!601167 () Bool)

(assert (= bs!601167 (and m!4865541 m!4865545 b!4271843)))

(assert (=> bs!601167 m!4865541))

(assert (=> bs!601167 m!4865615))

(declare-fun bs!601168 () Bool)

(assert (= bs!601168 (and m!4865541 m!4865559 b!4271844)))

(assert (=> bs!601168 m!4865541))

(assert (=> bs!601168 m!4865559))

(declare-fun bs!601169 () Bool)

(assert (= bs!601169 (and m!4865541 b!4271845)))

(assert (=> bs!601169 m!4865541))

(assert (=> bs!601169 m!4865541))

(declare-fun bs!601170 () Bool)

(assert (= bs!601170 (and m!4865541 m!4865545 b!4271846)))

(assert (=> bs!601170 m!4865615))

(assert (=> bs!601170 m!4865541))

(declare-fun bs!601171 () Bool)

(assert (= bs!601171 (and m!4865541 m!4865559 b!4271847)))

(assert (=> bs!601171 m!4865559))

(assert (=> bs!601171 m!4865541))

(declare-fun bs!601172 () Bool)

(assert (= bs!601172 (and m!4865553 m!4865545 b!4271848)))

(assert (=> bs!601172 m!4865561))

(assert (=> bs!601172 m!4865615))

(declare-fun bs!601173 () Bool)

(assert (= bs!601173 (and m!4865553 m!4865541 b!4271849)))

(assert (=> bs!601173 m!4865561))

(assert (=> bs!601173 m!4865541))

(declare-fun bs!601174 () Bool)

(assert (= bs!601174 (and m!4865553 m!4865559 b!4271850)))

(assert (=> bs!601174 m!4865561))

(assert (=> bs!601174 m!4865559))

(declare-fun bs!601175 () Bool)

(assert (= bs!601175 (and m!4865553 b!4271851)))

(assert (=> bs!601175 m!4865561))

(assert (=> bs!601175 m!4865561))

(declare-fun bs!601176 () Bool)

(assert (= bs!601176 (and m!4865553 m!4865545 b!4271852)))

(assert (=> bs!601176 m!4865615))

(assert (=> bs!601176 m!4865561))

(declare-fun bs!601177 () Bool)

(assert (= bs!601177 (and m!4865553 m!4865541 b!4271853)))

(assert (=> bs!601177 m!4865541))

(assert (=> bs!601177 m!4865561))

(declare-fun bs!601178 () Bool)

(assert (= bs!601178 (and m!4865553 m!4865559 b!4271854)))

(assert (=> bs!601178 m!4865559))

(assert (=> bs!601178 m!4865561))

(push 1)

(assert (not b!4271840))

(assert (not b!4271836))

(assert (not b!4271842))

(assert (not b!4271847))

(assert (not bs!601101))

(assert (not bs!601100))

(assert (not b!4271852))

(assert (not bs!601112))

(assert (not bs!601089))

(assert (not b!4271853))

(assert (not b!4271845))

(assert (not bs!601111))

(assert (not bs!601103))

(assert (not bs!601109))

(assert (not b!4271841))

(assert (not bs!601098))

(assert (not bs!601110))

(assert (not bs!601092))

(assert (not b!4271848))

(assert (not b!4271835))

(assert (not start!409896))

(assert (not bs!601096))

(assert (not bs!601105))

(assert (not b!4271838))

(assert (not b!4271850))

(assert (not bs!601091))

(assert (not b!4271837))

(assert (not bs!601095))

(assert (not b!4271826))

(assert (not b!4271843))

(assert (not b!4271849))

(assert (not b!4271844))

(assert (not b!4271846))

(assert (not b!4271851))

(assert (not bs!601102))

(assert (not b!4271839))

(assert (not bs!601094))

(assert (not b!4271854))

(assert (not bs!601107))

(assert (not b!4271825))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1260115 () Bool)

(declare-fun list!17177 (Conc!14294) List!47436)

(assert (=> d!1260115 (= (list!17175 x!741447) (list!17177 (c!726879 x!741447)))))

(declare-fun bs!601195 () Bool)

(assert (= bs!601195 d!1260115))

(declare-fun m!4865619 () Bool)

(assert (=> bs!601195 m!4865619))

(assert (=> bs!601098 d!1260115))

(declare-fun d!1260117 () Bool)

(assert (=> d!1260117 (= (list!17175 x!741448) (list!17177 (c!726879 x!741448)))))

(declare-fun bs!601196 () Bool)

(assert (= bs!601196 d!1260117))

(declare-fun m!4865621 () Bool)

(assert (=> bs!601196 m!4865621))

(assert (=> bs!601098 d!1260117))

(assert (=> bs!601112 d!1260117))

(declare-fun d!1260119 () Bool)

(assert (=> d!1260119 (= (list!17175 x!741449) (list!17177 (c!726879 x!741449)))))

(declare-fun bs!601197 () Bool)

(assert (= bs!601197 d!1260119))

(declare-fun m!4865623 () Bool)

(assert (=> bs!601197 m!4865623))

(assert (=> bs!601112 d!1260119))

(declare-fun d!1260121 () Bool)

(declare-fun lt!1512949 () List!47436)

(declare-fun efficientList!517 (BalanceConc!28098) List!47436)

(assert (=> d!1260121 (= lt!1512949 (efficientList!517 x!741449))))

(declare-fun charsToInt!0 (List!47436) (_ BitVec 32))

(assert (=> d!1260121 (= (toValue!12 thiss!2185 x!741449) (IntegerValue!24801 (charsToInt!0 lt!1512949) lt!1512949))))

(declare-fun bs!601198 () Bool)

(assert (= bs!601198 d!1260121))

(declare-fun m!4865625 () Bool)

(assert (=> bs!601198 m!4865625))

(declare-fun m!4865627 () Bool)

(assert (=> bs!601198 m!4865627))

(assert (=> b!4271850 d!1260121))

(declare-fun d!1260123 () Bool)

(declare-fun lt!1512950 () List!47436)

(assert (=> d!1260123 (= lt!1512950 (efficientList!517 x!741448))))

(assert (=> d!1260123 (= (toValue!12 thiss!2185 x!741448) (IntegerValue!24801 (charsToInt!0 lt!1512950) lt!1512950))))

(declare-fun bs!601199 () Bool)

(assert (= bs!601199 d!1260123))

(declare-fun m!4865629 () Bool)

(assert (=> bs!601199 m!4865629))

(declare-fun m!4865631 () Bool)

(assert (=> bs!601199 m!4865631))

(assert (=> b!4271850 d!1260123))

(assert (=> b!4271847 d!1260123))

(declare-fun d!1260125 () Bool)

(declare-fun lt!1512951 () List!47436)

(assert (=> d!1260125 (= lt!1512951 (efficientList!517 x!741447))))

(assert (=> d!1260125 (= (toValue!12 thiss!2185 x!741447) (IntegerValue!24801 (charsToInt!0 lt!1512951) lt!1512951))))

(declare-fun bs!601200 () Bool)

(assert (= bs!601200 d!1260125))

(declare-fun m!4865633 () Bool)

(assert (=> bs!601200 m!4865633))

(declare-fun m!4865635 () Bool)

(assert (=> bs!601200 m!4865635))

(assert (=> b!4271847 d!1260125))

(assert (=> b!4271844 d!1260125))

(assert (=> b!4271844 d!1260123))

(assert (=> b!4271854 d!1260123))

(assert (=> b!4271854 d!1260121))

(assert (=> bs!601094 d!1260117))

(assert (=> bs!601103 d!1260119))

(declare-fun d!1260127 () Bool)

(assert (=> d!1260127 (= (list!17175 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741447))) (list!17177 (c!726879 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741447)))))))

(declare-fun bs!601201 () Bool)

(assert (= bs!601201 d!1260127))

(declare-fun m!4865637 () Bool)

(assert (=> bs!601201 m!4865637))

(assert (=> bs!601103 d!1260127))

(assert (=> bs!601109 d!1260119))

(declare-fun d!1260129 () Bool)

(declare-fun lt!1512952 () List!47436)

(assert (=> d!1260129 (= lt!1512952 (efficientList!517 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741447))))))

(assert (=> d!1260129 (= (toValue!12 thiss!2185 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741447))) (IntegerValue!24801 (charsToInt!0 lt!1512952) lt!1512952))))

(declare-fun bs!601202 () Bool)

(assert (= bs!601202 d!1260129))

(assert (=> bs!601202 m!4865543))

(declare-fun m!4865639 () Bool)

(assert (=> bs!601202 m!4865639))

(declare-fun m!4865641 () Bool)

(assert (=> bs!601202 m!4865641))

(assert (=> b!4271846 d!1260129))

(assert (=> b!4271846 d!1260125))

(assert (=> bs!601111 d!1260115))

(assert (=> bs!601111 d!1260119))

(assert (=> bs!601107 d!1260119))

(assert (=> bs!601107 d!1260117))

(assert (=> b!4271843 d!1260125))

(assert (=> b!4271843 d!1260129))

(assert (=> bs!601092 d!1260117))

(assert (=> bs!601092 d!1260127))

(assert (=> bs!601102 d!1260117))

(assert (=> bs!601102 d!1260115))

(assert (=> b!4271853 d!1260125))

(assert (=> b!4271853 d!1260121))

(assert (=> b!4271840 d!1260123))

(assert (=> b!4271840 d!1260129))

(assert (=> b!4271825 d!1260117))

(declare-fun d!1260131 () Bool)

(declare-fun choose!26049 (Int) Bool)

(assert (=> d!1260131 (= (Forall2!1228 lambda!130969) (choose!26049 lambda!130969))))

(declare-fun bs!601203 () Bool)

(assert (= bs!601203 d!1260131))

(declare-fun m!4865643 () Bool)

(assert (=> bs!601203 m!4865643))

(assert (=> b!4271825 d!1260131))

(declare-fun d!1260133 () Bool)

(declare-fun isBalanced!3844 (Conc!14294) Bool)

(assert (=> d!1260133 (= (inv!62458 x!741449) (isBalanced!3844 (c!726879 x!741449)))))

(declare-fun bs!601204 () Bool)

(assert (= bs!601204 d!1260133))

(declare-fun m!4865645 () Bool)

(assert (=> bs!601204 m!4865645))

(assert (=> b!4271825 d!1260133))

(assert (=> b!4271825 d!1260119))

(declare-fun d!1260135 () Bool)

(declare-fun choose!26050 (Int) Bool)

(assert (=> d!1260135 (= (Forall!1641 lambda!130966) (choose!26050 lambda!130966))))

(declare-fun bs!601205 () Bool)

(assert (= bs!601205 d!1260135))

(declare-fun m!4865647 () Bool)

(assert (=> bs!601205 m!4865647))

(assert (=> b!4271825 d!1260135))

(declare-fun d!1260137 () Bool)

(assert (=> d!1260137 (= (inv!62458 x!741448) (isBalanced!3844 (c!726879 x!741448)))))

(declare-fun bs!601206 () Bool)

(assert (= bs!601206 d!1260137))

(declare-fun m!4865649 () Bool)

(assert (=> bs!601206 m!4865649))

(assert (=> b!4271825 d!1260137))

(declare-fun bs!601207 () Bool)

(declare-fun d!1260139 () Bool)

(assert (= bs!601207 (and d!1260139 start!409896)))

(declare-fun lambda!131000 () Int)

(assert (=> bs!601207 (not (= lambda!131000 lambda!130966))))

(assert (=> d!1260139 true))

(declare-fun order!24923 () Int)

(declare-fun order!24925 () Int)

(declare-fun dynLambda!20277 (Int Int) Int)

(declare-fun dynLambda!20278 (Int Int) Int)

(assert (=> d!1260139 (< (dynLambda!20277 order!24923 lambda!130967) (dynLambda!20278 order!24925 lambda!131000))))

(assert (=> d!1260139 true))

(declare-fun order!24927 () Int)

(declare-fun dynLambda!20279 (Int Int) Int)

(assert (=> d!1260139 (< (dynLambda!20279 order!24927 lambda!130968) (dynLambda!20278 order!24925 lambda!131000))))

(assert (=> d!1260139 (= (semiInverseModEq!3513 lambda!130967 lambda!130968) (Forall!1641 lambda!131000))))

(declare-fun bs!601208 () Bool)

(assert (= bs!601208 d!1260139))

(declare-fun m!4865651 () Bool)

(assert (=> bs!601208 m!4865651))

(assert (=> b!4271825 d!1260139))

(assert (=> bs!601091 d!1260127))

(assert (=> bs!601105 d!1260119))

(assert (=> bs!601105 d!1260115))

(assert (=> b!4271845 d!1260125))

(assert (=> b!4271852 d!1260129))

(assert (=> b!4271852 d!1260121))

(declare-fun d!1260141 () Bool)

(declare-fun res!1754745 () Bool)

(declare-fun e!2652349 () Bool)

(assert (=> d!1260141 (=> (not res!1754745) (not e!2652349))))

(assert (=> d!1260141 (= res!1754745 (semiInverseModEq!3513 (toChars!10670 (TokenValueInjection!15895 lambda!130968 lambda!130967)) (toValue!10811 (TokenValueInjection!15895 lambda!130968 lambda!130967))))))

(assert (=> d!1260141 (= (inv!62459 (TokenValueInjection!15895 lambda!130968 lambda!130967)) e!2652349)))

(declare-fun b!4271911 () Bool)

(assert (=> b!4271911 (= e!2652349 (equivClasses!3400 (toChars!10670 (TokenValueInjection!15895 lambda!130968 lambda!130967)) (toValue!10811 (TokenValueInjection!15895 lambda!130968 lambda!130967))))))

(assert (= (and d!1260141 res!1754745) b!4271911))

(declare-fun m!4865653 () Bool)

(assert (=> d!1260141 m!4865653))

(declare-fun m!4865655 () Bool)

(assert (=> b!4271911 m!4865655))

(assert (=> b!4271826 d!1260141))

(declare-fun bs!601209 () Bool)

(declare-fun d!1260143 () Bool)

(assert (= bs!601209 (and d!1260143 b!4271825)))

(declare-fun lambda!131003 () Int)

(assert (=> bs!601209 (not (= lambda!131003 lambda!130969))))

(assert (=> d!1260143 true))

(declare-fun order!24929 () Int)

(declare-fun dynLambda!20280 (Int Int) Int)

(assert (=> d!1260143 (< (dynLambda!20279 order!24927 lambda!130968) (dynLambda!20280 order!24929 lambda!131003))))

(assert (=> d!1260143 (= (equivClasses!3400 lambda!130967 lambda!130968) (Forall2!1228 lambda!131003))))

(declare-fun bs!601210 () Bool)

(assert (= bs!601210 d!1260143))

(declare-fun m!4865657 () Bool)

(assert (=> bs!601210 m!4865657))

(assert (=> b!4271826 d!1260143))

(assert (=> b!4271826 d!1260131))

(assert (=> b!4271842 d!1260129))

(assert (=> b!4271842 d!1260123))

(assert (=> b!4271839 d!1260129))

(assert (=> b!4271849 d!1260121))

(assert (=> b!4271849 d!1260125))

(assert (=> bs!601101 d!1260127))

(assert (=> bs!601101 d!1260115))

(assert (=> bs!601096 d!1260115))

(assert (=> bs!601096 d!1260127))

(assert (=> start!409896 d!1260127))

(declare-fun d!1260145 () Bool)

(assert (=> d!1260145 (= (inv!62458 x!741447) (isBalanced!3844 (c!726879 x!741447)))))

(declare-fun bs!601211 () Bool)

(assert (= bs!601211 d!1260145))

(declare-fun m!4865659 () Bool)

(assert (=> bs!601211 m!4865659))

(assert (=> start!409896 d!1260145))

(declare-fun d!1260147 () Bool)

(declare-fun c!726884 () Bool)

(assert (=> d!1260147 (= c!726884 (is-IntegerValue!24801 (toValue!12 thiss!2185 x!741447)))))

(declare-fun e!2652354 () BalanceConc!28098)

(assert (=> d!1260147 (= (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741447)) e!2652354)))

(declare-fun b!4271920 () Bool)

(declare-fun seqFromList!5874 (List!47436) BalanceConc!28098)

(assert (=> b!4271920 (= e!2652354 (seqFromList!5874 (text!58316 (toValue!12 thiss!2185 x!741447))))))

(declare-fun b!4271921 () Bool)

(assert (=> b!4271921 (= e!2652354 (BalanceConc!28099 Empty!14294))))

(assert (= (and d!1260147 c!726884) b!4271920))

(assert (= (and d!1260147 (not c!726884)) b!4271921))

(declare-fun m!4865661 () Bool)

(assert (=> b!4271920 m!4865661))

(assert (=> start!409896 d!1260147))

(assert (=> start!409896 d!1260125))

(assert (=> start!409896 d!1260135))

(assert (=> start!409896 d!1260115))

(assert (=> b!4271841 d!1260123))

(assert (=> b!4271836 d!1260123))

(assert (=> b!4271836 d!1260121))

(assert (=> bs!601100 d!1260115))

(assert (=> bs!601089 d!1260127))

(assert (=> bs!601089 d!1260147))

(assert (=> bs!601089 d!1260125))

(assert (=> bs!601089 d!1260115))

(assert (=> b!4271848 d!1260121))

(assert (=> b!4271848 d!1260129))

(declare-fun d!1260149 () Bool)

(declare-fun c!726887 () Bool)

(assert (=> d!1260149 (= c!726887 (is-Node!14294 (c!726879 x!741447)))))

(declare-fun e!2652359 () Bool)

(assert (=> d!1260149 (= (inv!62457 (c!726879 x!741447)) e!2652359)))

(declare-fun b!4271928 () Bool)

(declare-fun inv!62463 (Conc!14294) Bool)

(assert (=> b!4271928 (= e!2652359 (inv!62463 (c!726879 x!741447)))))

(declare-fun b!4271929 () Bool)

(declare-fun e!2652360 () Bool)

(assert (=> b!4271929 (= e!2652359 e!2652360)))

(declare-fun res!1754752 () Bool)

(assert (=> b!4271929 (= res!1754752 (not (is-Leaf!22097 (c!726879 x!741447))))))

(assert (=> b!4271929 (=> res!1754752 e!2652360)))

(declare-fun b!4271930 () Bool)

(declare-fun inv!62464 (Conc!14294) Bool)

(assert (=> b!4271930 (= e!2652360 (inv!62464 (c!726879 x!741447)))))

(assert (= (and d!1260149 c!726887) b!4271928))

(assert (= (and d!1260149 (not c!726887)) b!4271929))

(assert (= (and b!4271929 (not res!1754752)) b!4271930))

(declare-fun m!4865663 () Bool)

(assert (=> b!4271928 m!4865663))

(declare-fun m!4865665 () Bool)

(assert (=> b!4271930 m!4865665))

(assert (=> b!4271835 d!1260149))

(assert (=> b!4271851 d!1260121))

(assert (=> bs!601095 d!1260127))

(assert (=> bs!601095 d!1260117))

(declare-fun d!1260151 () Bool)

(declare-fun c!726888 () Bool)

(assert (=> d!1260151 (= c!726888 (is-Node!14294 (c!726879 x!741448)))))

(declare-fun e!2652361 () Bool)

(assert (=> d!1260151 (= (inv!62457 (c!726879 x!741448)) e!2652361)))

(declare-fun b!4271931 () Bool)

(assert (=> b!4271931 (= e!2652361 (inv!62463 (c!726879 x!741448)))))

(declare-fun b!4271932 () Bool)

(declare-fun e!2652362 () Bool)

(assert (=> b!4271932 (= e!2652361 e!2652362)))

(declare-fun res!1754753 () Bool)

(assert (=> b!4271932 (= res!1754753 (not (is-Leaf!22097 (c!726879 x!741448))))))

(assert (=> b!4271932 (=> res!1754753 e!2652362)))

(declare-fun b!4271933 () Bool)

(assert (=> b!4271933 (= e!2652362 (inv!62464 (c!726879 x!741448)))))

(assert (= (and d!1260151 c!726888) b!4271931))

(assert (= (and d!1260151 (not c!726888)) b!4271932))

(assert (= (and b!4271932 (not res!1754753)) b!4271933))

(declare-fun m!4865667 () Bool)

(assert (=> b!4271931 m!4865667))

(declare-fun m!4865669 () Bool)

(assert (=> b!4271933 m!4865669))

(assert (=> b!4271837 d!1260151))

(assert (=> bs!601110 d!1260127))

(assert (=> bs!601110 d!1260119))

(declare-fun d!1260153 () Bool)

(declare-fun c!726889 () Bool)

(assert (=> d!1260153 (= c!726889 (is-Node!14294 (c!726879 x!741449)))))

(declare-fun e!2652363 () Bool)

(assert (=> d!1260153 (= (inv!62457 (c!726879 x!741449)) e!2652363)))

(declare-fun b!4271934 () Bool)

(assert (=> b!4271934 (= e!2652363 (inv!62463 (c!726879 x!741449)))))

(declare-fun b!4271935 () Bool)

(declare-fun e!2652364 () Bool)

(assert (=> b!4271935 (= e!2652363 e!2652364)))

(declare-fun res!1754754 () Bool)

(assert (=> b!4271935 (= res!1754754 (not (is-Leaf!22097 (c!726879 x!741449))))))

(assert (=> b!4271935 (=> res!1754754 e!2652364)))

(declare-fun b!4271936 () Bool)

(assert (=> b!4271936 (= e!2652364 (inv!62464 (c!726879 x!741449)))))

(assert (= (and d!1260153 c!726889) b!4271934))

(assert (= (and d!1260153 (not c!726889)) b!4271935))

(assert (= (and b!4271935 (not res!1754754)) b!4271936))

(declare-fun m!4865671 () Bool)

(assert (=> b!4271934 m!4865671))

(declare-fun m!4865673 () Bool)

(assert (=> b!4271936 m!4865673))

(assert (=> b!4271838 d!1260153))

(declare-fun tp!1308166 () Bool)

(declare-fun tp!1308165 () Bool)

(declare-fun b!4271943 () Bool)

(declare-fun e!2652369 () Bool)

(assert (=> b!4271943 (= e!2652369 (and (inv!62457 (left!35174 (c!726879 x!741447))) tp!1308165 (inv!62457 (right!35504 (c!726879 x!741447))) tp!1308166))))

(declare-fun b!4271944 () Bool)

(declare-fun inv!62465 (IArray!28593) Bool)

(assert (=> b!4271944 (= e!2652369 (inv!62465 (xs!17600 (c!726879 x!741447))))))

(assert (=> b!4271835 (= tp!1308149 (and (inv!62457 (c!726879 x!741447)) e!2652369))))

(assert (= (and b!4271835 (is-Node!14294 (c!726879 x!741447))) b!4271943))

(assert (= (and b!4271835 (is-Leaf!22097 (c!726879 x!741447))) b!4271944))

(declare-fun m!4865675 () Bool)

(assert (=> b!4271943 m!4865675))

(declare-fun m!4865677 () Bool)

(assert (=> b!4271943 m!4865677))

(declare-fun m!4865679 () Bool)

(assert (=> b!4271944 m!4865679))

(assert (=> b!4271835 m!4865539))

(declare-fun b!4271945 () Bool)

(declare-fun tp!1308168 () Bool)

(declare-fun tp!1308167 () Bool)

(declare-fun e!2652371 () Bool)

(assert (=> b!4271945 (= e!2652371 (and (inv!62457 (left!35174 (c!726879 x!741448))) tp!1308167 (inv!62457 (right!35504 (c!726879 x!741448))) tp!1308168))))

(declare-fun b!4271946 () Bool)

(assert (=> b!4271946 (= e!2652371 (inv!62465 (xs!17600 (c!726879 x!741448))))))

(assert (=> b!4271837 (= tp!1308151 (and (inv!62457 (c!726879 x!741448)) e!2652371))))

(assert (= (and b!4271837 (is-Node!14294 (c!726879 x!741448))) b!4271945))

(assert (= (and b!4271837 (is-Leaf!22097 (c!726879 x!741448))) b!4271946))

(declare-fun m!4865681 () Bool)

(assert (=> b!4271945 m!4865681))

(declare-fun m!4865683 () Bool)

(assert (=> b!4271945 m!4865683))

(declare-fun m!4865685 () Bool)

(assert (=> b!4271946 m!4865685))

(assert (=> b!4271837 m!4865563))

(declare-fun tp!1308169 () Bool)

(declare-fun b!4271947 () Bool)

(declare-fun tp!1308170 () Bool)

(declare-fun e!2652373 () Bool)

(assert (=> b!4271947 (= e!2652373 (and (inv!62457 (left!35174 (c!726879 x!741449))) tp!1308169 (inv!62457 (right!35504 (c!726879 x!741449))) tp!1308170))))

(declare-fun b!4271948 () Bool)

(assert (=> b!4271948 (= e!2652373 (inv!62465 (xs!17600 (c!726879 x!741449))))))

(assert (=> b!4271838 (= tp!1308150 (and (inv!62457 (c!726879 x!741449)) e!2652373))))

(assert (= (and b!4271838 (is-Node!14294 (c!726879 x!741449))) b!4271947))

(assert (= (and b!4271838 (is-Leaf!22097 (c!726879 x!741449))) b!4271948))

(declare-fun m!4865687 () Bool)

(assert (=> b!4271947 m!4865687))

(declare-fun m!4865689 () Bool)

(assert (=> b!4271947 m!4865689))

(declare-fun m!4865691 () Bool)

(assert (=> b!4271948 m!4865691))

(assert (=> b!4271838 m!4865565))

(push 1)

(assert (not b!4271911))

(assert (not b!4271946))

(assert (not b!4271934))

(assert (not d!1260117))

(assert (not b!4271933))

(assert (not d!1260127))

(assert (not b!4271944))

(assert (not b!4271838))

(assert (not d!1260143))

(assert (not b!4271945))

(assert (not d!1260135))

(assert (not b!4271920))

(assert (not b!4271943))

(assert (not d!1260123))

(assert (not b!4271928))

(assert (not d!1260131))

(assert (not d!1260133))

(assert (not d!1260141))

(assert (not d!1260129))

(assert (not b!4271947))

(assert (not d!1260115))

(assert (not b!4271835))

(assert (not d!1260139))

(assert (not d!1260119))

(assert (not b!4271936))

(assert (not d!1260125))

(assert (not d!1260137))

(assert (not d!1260121))

(assert (not b!4271837))

(assert (not b!4271948))

(assert (not d!1260145))

(assert (not b!4271931))

(assert (not b!4271930))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

