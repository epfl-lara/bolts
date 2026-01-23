; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!409146 () Bool)

(assert start!409146)

(assert (=> start!409146 true))

(declare-fun b!4268641 () Bool)

(assert (=> b!4268641 true))

(assert (=> b!4268641 true))

(assert (=> b!4268641 true))

(declare-fun b!4268651 () Bool)

(declare-fun e!2650258 () Bool)

(declare-datatypes ((List!47404 0))(
  ( (Nil!47280) (Cons!47280 (h!52700 (_ BitVec 16)) (t!353564 List!47404)) )
))
(declare-datatypes ((IArray!28529 0))(
  ( (IArray!28530 (innerList!14322 List!47404)) )
))
(declare-datatypes ((Conc!14262 0))(
  ( (Node!14262 (left!35078 Conc!14262) (right!35408 Conc!14262) (csize!28754 Int) (cheight!14473 Int)) (Leaf!22049 (xs!17568 IArray!28529) (csize!28755 Int)) (Empty!14262) )
))
(declare-datatypes ((BalanceConc!28034 0))(
  ( (BalanceConc!28035 (c!726020 Conc!14262)) )
))
(declare-fun x!739121 () BalanceConc!28034)

(declare-fun tp!1307693 () Bool)

(declare-fun inv!62262 (Conc!14262) Bool)

(assert (=> b!4268651 (= e!2650258 (and (inv!62262 (c!726020 x!739121)) tp!1307693))))

(declare-datatypes ((PrimitiveTypeValueInjection!12 0))(
  ( (PrimitiveTypeValueInjection!13) )
))
(declare-fun thiss!2386 () PrimitiveTypeValueInjection!12)

(declare-fun inst!1606 () Bool)

(declare-fun inv!62263 (BalanceConc!28034) Bool)

(declare-fun list!17103 (BalanceConc!28034) List!47404)

(declare-datatypes ((TokenValue!8235 0))(
  ( (FloatLiteralValue!16470 (text!58090 List!47404)) (TokenValueExt!8234 (__x!28681 Int)) (Broken!41175 (value!248705 List!47404)) (Object!8358) (End!8235) (Def!8235) (Underscore!8235) (Match!8235) (Else!8235) (Error!8235) (Case!8235) (If!8235) (Extends!8235) (Abstract!8235) (Class!8235) (Val!8235) (DelimiterValue!16470 (del!8295 List!47404)) (KeywordValue!8241 (value!248706 List!47404)) (CommentValue!16470 (value!248707 List!47404)) (WhitespaceValue!16470 (value!248708 List!47404)) (IndentationValue!8235 (value!248709 List!47404)) (String!55182) (Int32!8235) (Broken!41176 (value!248710 List!47404)) (Boolean!8236) (Unit!66177) (OperatorValue!8238 (op!8295 List!47404)) (IdentifierValue!16470 (value!248711 List!47404)) (IdentifierValue!16471 (value!248712 List!47404)) (WhitespaceValue!16471 (value!248713 List!47404)) (True!16470) (False!16470) (Broken!41177 (value!248714 List!47404)) (Broken!41178 (value!248715 List!47404)) (True!16471) (RightBrace!8235) (RightBracket!8235) (Colon!8235) (Null!8235) (Comma!8235) (LeftBracket!8235) (False!16471) (LeftBrace!8235) (ImaginaryLiteralValue!8235 (text!58091 List!47404)) (StringLiteralValue!24705 (value!248716 List!47404)) (EOFValue!8235 (value!248717 List!47404)) (IdentValue!8235 (value!248718 List!47404)) (DelimiterValue!16471 (value!248719 List!47404)) (DedentValue!8235 (value!248720 List!47404)) (NewLineValue!8235 (value!248721 List!47404)) (IntegerValue!24705 (value!248722 (_ BitVec 32)) (text!58092 List!47404)) (IntegerValue!24706 (value!248723 Int) (text!58093 List!47404)) (Times!8235) (Or!8235) (Equal!8235) (Minus!8235) (Broken!41179 (value!248724 List!47404)) (And!8235) (Div!8235) (LessEqual!8235) (Mod!8235) (Concat!21133) (Not!8235) (Plus!8235) (SpaceValue!8235 (value!248725 List!47404)) (IntegerValue!24707 (value!248726 Int) (text!58094 List!47404)) (StringLiteralValue!24706 (text!58095 List!47404)) (FloatLiteralValue!16471 (text!58096 List!47404)) (BytesLiteralValue!8235 (value!248727 List!47404)) (CommentValue!16471 (value!248728 List!47404)) (StringLiteralValue!24707 (value!248729 List!47404)) (ErrorTokenValue!8235 (msg!8296 List!47404)) )
))
(declare-fun toCharacters!8 (PrimitiveTypeValueInjection!12 TokenValue!8235) BalanceConc!28034)

(declare-fun toValue!15 (PrimitiveTypeValueInjection!12 BalanceConc!28034) TokenValue!8235)

(assert (=> start!409146 (= inst!1606 (=> (and (inv!62263 x!739121) e!2650258) (= (list!17103 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!739121))) (list!17103 x!739121))))))

(assert (= start!409146 b!4268651))

(declare-fun m!4861349 () Bool)

(assert (=> b!4268651 m!4861349))

(declare-fun m!4861351 () Bool)

(assert (=> start!409146 m!4861351))

(declare-fun m!4861353 () Bool)

(assert (=> start!409146 m!4861353))

(declare-fun m!4861355 () Bool)

(assert (=> start!409146 m!4861355))

(declare-fun m!4861357 () Bool)

(assert (=> start!409146 m!4861357))

(declare-fun m!4861359 () Bool)

(assert (=> start!409146 m!4861359))

(assert (=> start!409146 m!4861355))

(assert (=> start!409146 m!4861351))

(declare-fun res!1753742 () Bool)

(declare-fun e!2650259 () Bool)

(assert (=> b!4268641 (=> res!1753742 e!2650259)))

(declare-fun x!739122 () BalanceConc!28034)

(declare-fun x!739123 () BalanceConc!28034)

(assert (=> b!4268641 (= res!1753742 (not (= (list!17103 x!739122) (list!17103 x!739123))))))

(declare-fun inst!1607 () Bool)

(declare-fun e!2650261 () Bool)

(declare-fun e!2650260 () Bool)

(assert (=> b!4268641 (= inst!1607 (=> (and (inv!62263 x!739122) e!2650260 (inv!62263 x!739123) e!2650261) e!2650259))))

(declare-fun b!4268652 () Bool)

(assert (=> b!4268652 (= e!2650259 (= (toValue!15 thiss!2386 x!739122) (toValue!15 thiss!2386 x!739123)))))

(declare-fun b!4268653 () Bool)

(declare-fun tp!1307694 () Bool)

(assert (=> b!4268653 (= e!2650260 (and (inv!62262 (c!726020 x!739122)) tp!1307694))))

(declare-fun b!4268654 () Bool)

(declare-fun tp!1307695 () Bool)

(assert (=> b!4268654 (= e!2650261 (and (inv!62262 (c!726020 x!739123)) tp!1307695))))

(assert (= (and b!4268641 (not res!1753742)) b!4268652))

(assert (= b!4268641 b!4268653))

(assert (= b!4268641 b!4268654))

(declare-fun m!4861361 () Bool)

(assert (=> b!4268641 m!4861361))

(declare-fun m!4861363 () Bool)

(assert (=> b!4268641 m!4861363))

(declare-fun m!4861365 () Bool)

(assert (=> b!4268641 m!4861365))

(declare-fun m!4861367 () Bool)

(assert (=> b!4268641 m!4861367))

(declare-fun m!4861369 () Bool)

(assert (=> b!4268652 m!4861369))

(declare-fun m!4861371 () Bool)

(assert (=> b!4268652 m!4861371))

(declare-fun m!4861373 () Bool)

(assert (=> b!4268653 m!4861373))

(declare-fun m!4861375 () Bool)

(assert (=> b!4268654 m!4861375))

(declare-fun bs!599823 () Bool)

(declare-fun neg-inst!1607 () Bool)

(declare-fun s!239324 () Bool)

(assert (= bs!599823 (and neg-inst!1607 s!239324)))

(assert (=> bs!599823 (=> true (= (list!17103 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!739121))) (list!17103 x!739121)))))

(assert (=> m!4861357 m!4861355))

(assert (=> m!4861357 m!4861351))

(assert (=> m!4861357 m!4861353))

(assert (=> m!4861357 s!239324))

(assert (=> m!4861355 s!239324))

(declare-fun bs!599824 () Bool)

(assert (= bs!599824 (and neg-inst!1607 start!409146)))

(assert (=> bs!599824 (= true inst!1606)))

(declare-fun bs!599825 () Bool)

(declare-fun neg-inst!1606 () Bool)

(declare-fun s!239326 () Bool)

(assert (= bs!599825 (and neg-inst!1606 s!239326)))

(declare-fun res!1753743 () Bool)

(declare-fun e!2650262 () Bool)

(assert (=> bs!599825 (=> res!1753743 e!2650262)))

(assert (=> bs!599825 (= res!1753743 (not (= (list!17103 x!739122) (list!17103 x!739122))))))

(assert (=> bs!599825 (=> true e!2650262)))

(declare-fun b!4268655 () Bool)

(assert (=> b!4268655 (= e!2650262 (= (toValue!15 thiss!2386 x!739122) (toValue!15 thiss!2386 x!739122)))))

(assert (= (and bs!599825 (not res!1753743)) b!4268655))

(assert (=> m!4861361 s!239326))

(assert (=> m!4861361 s!239326))

(declare-fun bs!599826 () Bool)

(declare-fun s!239328 () Bool)

(assert (= bs!599826 (and neg-inst!1606 s!239328)))

(declare-fun res!1753744 () Bool)

(declare-fun e!2650263 () Bool)

(assert (=> bs!599826 (=> res!1753744 e!2650263)))

(assert (=> bs!599826 (= res!1753744 (not (= (list!17103 x!739122) (list!17103 x!739123))))))

(assert (=> bs!599826 (=> true e!2650263)))

(declare-fun b!4268656 () Bool)

(assert (=> b!4268656 (= e!2650263 (= (toValue!15 thiss!2386 x!739122) (toValue!15 thiss!2386 x!739123)))))

(assert (= (and bs!599826 (not res!1753744)) b!4268656))

(declare-fun bs!599827 () Bool)

(assert (= bs!599827 (and m!4861363 m!4861361)))

(assert (=> bs!599827 m!4861361))

(assert (=> bs!599827 m!4861363))

(assert (=> bs!599827 s!239328))

(declare-fun bs!599828 () Bool)

(declare-fun s!239330 () Bool)

(assert (= bs!599828 (and neg-inst!1606 s!239330)))

(declare-fun res!1753745 () Bool)

(declare-fun e!2650264 () Bool)

(assert (=> bs!599828 (=> res!1753745 e!2650264)))

(assert (=> bs!599828 (= res!1753745 (not (= (list!17103 x!739123) (list!17103 x!739123))))))

(assert (=> bs!599828 (=> true e!2650264)))

(declare-fun b!4268657 () Bool)

(assert (=> b!4268657 (= e!2650264 (= (toValue!15 thiss!2386 x!739123) (toValue!15 thiss!2386 x!739123)))))

(assert (= (and bs!599828 (not res!1753745)) b!4268657))

(assert (=> m!4861363 s!239330))

(declare-fun bs!599829 () Bool)

(declare-fun s!239332 () Bool)

(assert (= bs!599829 (and neg-inst!1606 s!239332)))

(declare-fun res!1753746 () Bool)

(declare-fun e!2650265 () Bool)

(assert (=> bs!599829 (=> res!1753746 e!2650265)))

(assert (=> bs!599829 (= res!1753746 (not (= (list!17103 x!739123) (list!17103 x!739122))))))

(assert (=> bs!599829 (=> true e!2650265)))

(declare-fun b!4268658 () Bool)

(assert (=> b!4268658 (= e!2650265 (= (toValue!15 thiss!2386 x!739123) (toValue!15 thiss!2386 x!739122)))))

(assert (= (and bs!599829 (not res!1753746)) b!4268658))

(assert (=> bs!599827 m!4861363))

(assert (=> bs!599827 m!4861361))

(assert (=> bs!599827 s!239332))

(assert (=> m!4861363 s!239330))

(declare-fun bs!599830 () Bool)

(declare-fun s!239334 () Bool)

(assert (= bs!599830 (and neg-inst!1606 s!239334)))

(declare-fun res!1753747 () Bool)

(declare-fun e!2650266 () Bool)

(assert (=> bs!599830 (=> res!1753747 e!2650266)))

(assert (=> bs!599830 (= res!1753747 (not (= (list!17103 x!739122) (list!17103 x!739121))))))

(assert (=> bs!599830 (=> true e!2650266)))

(declare-fun b!4268659 () Bool)

(assert (=> b!4268659 (= e!2650266 (= (toValue!15 thiss!2386 x!739122) (toValue!15 thiss!2386 x!739121)))))

(assert (= (and bs!599830 (not res!1753747)) b!4268659))

(declare-fun bs!599831 () Bool)

(assert (= bs!599831 (and m!4861357 m!4861361)))

(assert (=> bs!599831 m!4861361))

(assert (=> bs!599831 m!4861357))

(assert (=> bs!599831 s!239334))

(declare-fun bs!599832 () Bool)

(declare-fun s!239336 () Bool)

(assert (= bs!599832 (and neg-inst!1606 s!239336)))

(declare-fun res!1753748 () Bool)

(declare-fun e!2650267 () Bool)

(assert (=> bs!599832 (=> res!1753748 e!2650267)))

(assert (=> bs!599832 (= res!1753748 (not (= (list!17103 x!739123) (list!17103 x!739121))))))

(assert (=> bs!599832 (=> true e!2650267)))

(declare-fun b!4268660 () Bool)

(assert (=> b!4268660 (= e!2650267 (= (toValue!15 thiss!2386 x!739123) (toValue!15 thiss!2386 x!739121)))))

(assert (= (and bs!599832 (not res!1753748)) b!4268660))

(declare-fun bs!599833 () Bool)

(assert (= bs!599833 (and m!4861357 m!4861363)))

(assert (=> bs!599833 m!4861363))

(assert (=> bs!599833 m!4861357))

(assert (=> bs!599833 s!239336))

(declare-fun bs!599834 () Bool)

(declare-fun s!239338 () Bool)

(assert (= bs!599834 (and neg-inst!1606 s!239338)))

(declare-fun res!1753749 () Bool)

(declare-fun e!2650268 () Bool)

(assert (=> bs!599834 (=> res!1753749 e!2650268)))

(assert (=> bs!599834 (= res!1753749 (not (= (list!17103 x!739121) (list!17103 x!739121))))))

(assert (=> bs!599834 (=> true e!2650268)))

(declare-fun b!4268661 () Bool)

(assert (=> b!4268661 (= e!2650268 (= (toValue!15 thiss!2386 x!739121) (toValue!15 thiss!2386 x!739121)))))

(assert (= (and bs!599834 (not res!1753749)) b!4268661))

(assert (=> m!4861357 s!239338))

(declare-fun bs!599835 () Bool)

(declare-fun s!239340 () Bool)

(assert (= bs!599835 (and neg-inst!1606 s!239340)))

(declare-fun res!1753750 () Bool)

(declare-fun e!2650269 () Bool)

(assert (=> bs!599835 (=> res!1753750 e!2650269)))

(assert (=> bs!599835 (= res!1753750 (not (= (list!17103 x!739121) (list!17103 x!739122))))))

(assert (=> bs!599835 (=> true e!2650269)))

(declare-fun b!4268662 () Bool)

(assert (=> b!4268662 (= e!2650269 (= (toValue!15 thiss!2386 x!739121) (toValue!15 thiss!2386 x!739122)))))

(assert (= (and bs!599835 (not res!1753750)) b!4268662))

(assert (=> bs!599831 m!4861357))

(assert (=> bs!599831 m!4861361))

(assert (=> bs!599831 s!239340))

(declare-fun bs!599836 () Bool)

(declare-fun s!239342 () Bool)

(assert (= bs!599836 (and neg-inst!1606 s!239342)))

(declare-fun res!1753751 () Bool)

(declare-fun e!2650270 () Bool)

(assert (=> bs!599836 (=> res!1753751 e!2650270)))

(assert (=> bs!599836 (= res!1753751 (not (= (list!17103 x!739121) (list!17103 x!739123))))))

(assert (=> bs!599836 (=> true e!2650270)))

(declare-fun b!4268663 () Bool)

(assert (=> b!4268663 (= e!2650270 (= (toValue!15 thiss!2386 x!739121) (toValue!15 thiss!2386 x!739123)))))

(assert (= (and bs!599836 (not res!1753751)) b!4268663))

(assert (=> bs!599833 m!4861357))

(assert (=> bs!599833 m!4861363))

(assert (=> bs!599833 s!239342))

(assert (=> m!4861357 s!239338))

(declare-fun bs!599837 () Bool)

(declare-fun s!239344 () Bool)

(assert (= bs!599837 (and neg-inst!1606 s!239344)))

(declare-fun res!1753752 () Bool)

(declare-fun e!2650271 () Bool)

(assert (=> bs!599837 (=> res!1753752 e!2650271)))

(assert (=> bs!599837 (= res!1753752 (not (= (list!17103 x!739121) (list!17103 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!739121))))))))

(assert (=> bs!599837 (=> true e!2650271)))

(declare-fun b!4268664 () Bool)

(assert (=> b!4268664 (= e!2650271 (= (toValue!15 thiss!2386 x!739121) (toValue!15 thiss!2386 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!739121)))))))

(assert (= (and bs!599837 (not res!1753752)) b!4268664))

(declare-fun bs!599838 () Bool)

(assert (= bs!599838 (and m!4861353 m!4861357)))

(assert (=> bs!599838 m!4861357))

(assert (=> bs!599838 m!4861353))

(assert (=> bs!599838 s!239344))

(declare-fun bs!599839 () Bool)

(declare-fun s!239346 () Bool)

(assert (= bs!599839 (and neg-inst!1606 s!239346)))

(declare-fun res!1753753 () Bool)

(declare-fun e!2650272 () Bool)

(assert (=> bs!599839 (=> res!1753753 e!2650272)))

(assert (=> bs!599839 (= res!1753753 (not (= (list!17103 x!739122) (list!17103 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!739121))))))))

(assert (=> bs!599839 (=> true e!2650272)))

(declare-fun b!4268665 () Bool)

(assert (=> b!4268665 (= e!2650272 (= (toValue!15 thiss!2386 x!739122) (toValue!15 thiss!2386 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!739121)))))))

(assert (= (and bs!599839 (not res!1753753)) b!4268665))

(declare-fun bs!599840 () Bool)

(assert (= bs!599840 (and m!4861353 m!4861361)))

(assert (=> bs!599840 m!4861361))

(assert (=> bs!599840 m!4861353))

(assert (=> bs!599840 s!239346))

(declare-fun bs!599841 () Bool)

(declare-fun s!239348 () Bool)

(assert (= bs!599841 (and neg-inst!1606 s!239348)))

(declare-fun res!1753754 () Bool)

(declare-fun e!2650273 () Bool)

(assert (=> bs!599841 (=> res!1753754 e!2650273)))

(assert (=> bs!599841 (= res!1753754 (not (= (list!17103 x!739123) (list!17103 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!739121))))))))

(assert (=> bs!599841 (=> true e!2650273)))

(declare-fun b!4268666 () Bool)

(assert (=> b!4268666 (= e!2650273 (= (toValue!15 thiss!2386 x!739123) (toValue!15 thiss!2386 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!739121)))))))

(assert (= (and bs!599841 (not res!1753754)) b!4268666))

(declare-fun bs!599842 () Bool)

(assert (= bs!599842 (and m!4861353 m!4861363)))

(assert (=> bs!599842 m!4861363))

(assert (=> bs!599842 m!4861353))

(assert (=> bs!599842 s!239348))

(declare-fun bs!599843 () Bool)

(declare-fun s!239350 () Bool)

(assert (= bs!599843 (and neg-inst!1606 s!239350)))

(declare-fun res!1753755 () Bool)

(declare-fun e!2650274 () Bool)

(assert (=> bs!599843 (=> res!1753755 e!2650274)))

(assert (=> bs!599843 (= res!1753755 (not (= (list!17103 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!739121))) (list!17103 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!739121))))))))

(assert (=> bs!599843 (=> true e!2650274)))

(declare-fun b!4268667 () Bool)

(assert (=> b!4268667 (= e!2650274 (= (toValue!15 thiss!2386 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!739121))) (toValue!15 thiss!2386 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!739121)))))))

(assert (= (and bs!599843 (not res!1753755)) b!4268667))

(assert (=> m!4861353 s!239350))

(declare-fun bs!599844 () Bool)

(declare-fun s!239352 () Bool)

(assert (= bs!599844 (and neg-inst!1606 s!239352)))

(declare-fun res!1753756 () Bool)

(declare-fun e!2650275 () Bool)

(assert (=> bs!599844 (=> res!1753756 e!2650275)))

(assert (=> bs!599844 (= res!1753756 (not (= (list!17103 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!739121))) (list!17103 x!739121))))))

(assert (=> bs!599844 (=> true e!2650275)))

(declare-fun b!4268668 () Bool)

(assert (=> b!4268668 (= e!2650275 (= (toValue!15 thiss!2386 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!739121))) (toValue!15 thiss!2386 x!739121)))))

(assert (= (and bs!599844 (not res!1753756)) b!4268668))

(assert (=> bs!599838 m!4861353))

(assert (=> bs!599838 m!4861357))

(assert (=> bs!599838 s!239352))

(declare-fun bs!599845 () Bool)

(declare-fun s!239354 () Bool)

(assert (= bs!599845 (and neg-inst!1606 s!239354)))

(declare-fun res!1753757 () Bool)

(declare-fun e!2650276 () Bool)

(assert (=> bs!599845 (=> res!1753757 e!2650276)))

(assert (=> bs!599845 (= res!1753757 (not (= (list!17103 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!739121))) (list!17103 x!739122))))))

(assert (=> bs!599845 (=> true e!2650276)))

(declare-fun b!4268669 () Bool)

(assert (=> b!4268669 (= e!2650276 (= (toValue!15 thiss!2386 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!739121))) (toValue!15 thiss!2386 x!739122)))))

(assert (= (and bs!599845 (not res!1753757)) b!4268669))

(assert (=> bs!599840 m!4861353))

(assert (=> bs!599840 m!4861361))

(assert (=> bs!599840 s!239354))

(declare-fun bs!599846 () Bool)

(declare-fun s!239356 () Bool)

(assert (= bs!599846 (and neg-inst!1606 s!239356)))

(declare-fun res!1753758 () Bool)

(declare-fun e!2650277 () Bool)

(assert (=> bs!599846 (=> res!1753758 e!2650277)))

(assert (=> bs!599846 (= res!1753758 (not (= (list!17103 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!739121))) (list!17103 x!739123))))))

(assert (=> bs!599846 (=> true e!2650277)))

(declare-fun b!4268670 () Bool)

(assert (=> b!4268670 (= e!2650277 (= (toValue!15 thiss!2386 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!739121))) (toValue!15 thiss!2386 x!739123)))))

(assert (= (and bs!599846 (not res!1753758)) b!4268670))

(assert (=> bs!599842 m!4861353))

(assert (=> bs!599842 m!4861363))

(assert (=> bs!599842 s!239356))

(assert (=> m!4861353 s!239350))

(declare-fun bs!599847 () Bool)

(assert (= bs!599847 (and m!4861371 m!4861357)))

(assert (=> bs!599847 s!239342))

(declare-fun bs!599848 () Bool)

(assert (= bs!599848 (and m!4861371 m!4861353)))

(assert (=> bs!599848 s!239356))

(assert (=> m!4861371 s!239330))

(declare-fun bs!599849 () Bool)

(assert (= bs!599849 (and m!4861371 m!4861363)))

(assert (=> bs!599849 s!239330))

(declare-fun bs!599850 () Bool)

(assert (= bs!599850 (and m!4861371 m!4861361)))

(assert (=> bs!599850 s!239328))

(assert (=> bs!599847 s!239336))

(assert (=> bs!599850 s!239332))

(assert (=> bs!599848 s!239348))

(assert (=> bs!599849 s!239330))

(assert (=> m!4861371 s!239330))

(declare-fun bs!599851 () Bool)

(assert (= bs!599851 (and m!4861369 m!4861357)))

(assert (=> bs!599851 s!239340))

(assert (=> m!4861369 s!239326))

(declare-fun bs!599852 () Bool)

(assert (= bs!599852 (and m!4861369 m!4861361)))

(assert (=> bs!599852 s!239326))

(declare-fun bs!599853 () Bool)

(assert (= bs!599853 (and m!4861369 m!4861353)))

(assert (=> bs!599853 s!239354))

(declare-fun bs!599854 () Bool)

(assert (= bs!599854 (and m!4861369 m!4861363 m!4861371)))

(assert (=> bs!599854 s!239332))

(assert (=> bs!599853 s!239346))

(assert (=> m!4861369 s!239326))

(assert (=> bs!599852 s!239326))

(assert (=> bs!599851 s!239334))

(assert (=> bs!599854 s!239328))

(declare-fun bs!599855 () Bool)

(assert (= bs!599855 (and m!4861355 m!4861357)))

(assert (=> bs!599855 s!239338))

(assert (=> m!4861355 s!239338))

(declare-fun bs!599856 () Bool)

(assert (= bs!599856 (and m!4861355 m!4861363 m!4861371)))

(assert (=> bs!599856 s!239336))

(declare-fun bs!599857 () Bool)

(assert (= bs!599857 (and m!4861355 m!4861353)))

(assert (=> bs!599857 s!239352))

(declare-fun bs!599858 () Bool)

(assert (= bs!599858 (and m!4861355 m!4861361 m!4861369)))

(assert (=> bs!599858 s!239334))

(assert (=> bs!599857 s!239344))

(assert (=> bs!599856 s!239342))

(assert (=> bs!599855 s!239338))

(assert (=> m!4861355 s!239338))

(assert (=> bs!599858 s!239340))

(declare-fun bs!599859 () Bool)

(assert (= bs!599859 (and neg-inst!1606 b!4268641)))

(assert (=> bs!599859 (= true inst!1607)))

(declare-fun res!1753741 () Bool)

(declare-fun e!2650256 () Bool)

(assert (=> start!409146 (=> res!1753741 e!2650256)))

(declare-fun lambda!130486 () Int)

(declare-fun Forall!1617 (Int) Bool)

(assert (=> start!409146 (= res!1753741 (not (Forall!1617 lambda!130486)))))

(assert (=> start!409146 (= (Forall!1617 lambda!130486) inst!1606)))

(assert (=> start!409146 (not e!2650256)))

(assert (=> start!409146 true))

(declare-fun e!2650257 () Bool)

(assert (=> b!4268641 (= e!2650256 e!2650257)))

(declare-fun res!1753740 () Bool)

(assert (=> b!4268641 (=> res!1753740 e!2650257)))

(declare-fun lambda!130489 () Int)

(declare-fun Forall2!1212 (Int) Bool)

(assert (=> b!4268641 (= res!1753740 (not (Forall2!1212 lambda!130489)))))

(assert (=> b!4268641 (= (Forall2!1212 lambda!130489) inst!1607)))

(declare-fun lambda!130487 () Int)

(declare-fun lambda!130488 () Int)

(declare-fun semiInverseModEq!3497 (Int Int) Bool)

(assert (=> b!4268641 (= (semiInverseModEq!3497 lambda!130487 lambda!130488) (Forall!1617 lambda!130486))))

(declare-fun b!4268642 () Bool)

(declare-datatypes ((TokenValueInjection!15878 0))(
  ( (TokenValueInjection!15879 (toValue!10779 Int) (toChars!10638 Int)) )
))
(declare-fun inv!62264 (TokenValueInjection!15878) Bool)

(assert (=> b!4268642 (= e!2650257 (inv!62264 (TokenValueInjection!15879 lambda!130488 lambda!130487)))))

(declare-fun equivClasses!3392 (Int Int) Bool)

(assert (=> b!4268642 (= (equivClasses!3392 lambda!130487 lambda!130488) (Forall2!1212 lambda!130489))))

(assert (= neg-inst!1607 inst!1606))

(assert (= (and start!409146 (not res!1753741)) b!4268641))

(assert (= neg-inst!1606 inst!1607))

(assert (= (and b!4268641 (not res!1753740)) b!4268642))

(declare-fun m!4861377 () Bool)

(assert (=> start!409146 m!4861377))

(assert (=> start!409146 m!4861377))

(declare-fun m!4861379 () Bool)

(assert (=> b!4268641 m!4861379))

(assert (=> b!4268641 m!4861379))

(declare-fun m!4861381 () Bool)

(assert (=> b!4268641 m!4861381))

(assert (=> b!4268641 m!4861377))

(declare-fun m!4861383 () Bool)

(assert (=> b!4268642 m!4861383))

(declare-fun m!4861385 () Bool)

(assert (=> b!4268642 m!4861385))

(assert (=> b!4268642 m!4861379))

(push 1)

(assert (not bs!599829))

(assert (not b!4268651))

(assert (not b!4268654))

(assert (not bs!599845))

(assert (not bs!599843))

(assert (not b!4268665))

(assert (not b!4268657))

(assert (not b!4268655))

(assert (not bs!599828))

(assert (not b!4268670))

(assert (not b!4268656))

(assert (not b!4268669))

(assert (not bs!599844))

(assert (not b!4268659))

(assert (not b!4268641))

(assert (not bs!599835))

(assert (not bs!599837))

(assert (not bs!599839))

(assert (not b!4268662))

(assert (not bs!599826))

(assert (not b!4268667))

(assert (not b!4268642))

(assert (not bs!599834))

(assert (not b!4268653))

(assert (not bs!599846))

(assert (not b!4268658))

(assert (not b!4268666))

(assert (not b!4268652))

(assert (not b!4268663))

(assert (not bs!599841))

(assert (not b!4268664))

(assert (not start!409146))

(assert (not b!4268661))

(assert (not bs!599830))

(assert (not bs!599836))

(assert (not b!4268668))

(assert (not bs!599823))

(assert (not bs!599832))

(assert (not b!4268660))

(assert (not bs!599825))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!599897 () Bool)

(assert (= bs!599897 (and m!4861361 b!4268655)))

(assert (=> bs!599897 m!4861369))

(assert (=> bs!599897 m!4861369))

(declare-fun bs!599898 () Bool)

(assert (= bs!599898 (and m!4861363 m!4861361 b!4268656)))

(assert (=> bs!599898 m!4861369))

(assert (=> bs!599898 m!4861371))

(declare-fun bs!599899 () Bool)

(assert (= bs!599899 (and m!4861363 b!4268657)))

(assert (=> bs!599899 m!4861371))

(assert (=> bs!599899 m!4861371))

(declare-fun bs!599900 () Bool)

(assert (= bs!599900 (and m!4861363 m!4861361 b!4268658)))

(assert (=> bs!599900 m!4861371))

(assert (=> bs!599900 m!4861369))

(declare-fun bs!599901 () Bool)

(assert (= bs!599901 (and m!4861357 m!4861361 b!4268659)))

(assert (=> bs!599901 m!4861369))

(assert (=> bs!599901 m!4861355))

(declare-fun bs!599902 () Bool)

(assert (= bs!599902 (and m!4861357 m!4861363 b!4268660)))

(assert (=> bs!599902 m!4861371))

(assert (=> bs!599902 m!4861355))

(declare-fun bs!599903 () Bool)

(assert (= bs!599903 (and m!4861357 b!4268661)))

(assert (=> bs!599903 m!4861355))

(assert (=> bs!599903 m!4861355))

(declare-fun bs!599904 () Bool)

(assert (= bs!599904 (and m!4861357 m!4861361 b!4268662)))

(assert (=> bs!599904 m!4861355))

(assert (=> bs!599904 m!4861369))

(declare-fun bs!599905 () Bool)

(assert (= bs!599905 (and m!4861357 m!4861363 b!4268663)))

(assert (=> bs!599905 m!4861355))

(assert (=> bs!599905 m!4861371))

(declare-fun bs!599906 () Bool)

(assert (= bs!599906 (and m!4861353 m!4861357 b!4268664)))

(assert (=> bs!599906 m!4861355))

(declare-fun m!4861425 () Bool)

(assert (=> bs!599906 m!4861425))

(declare-fun bs!599907 () Bool)

(assert (= bs!599907 (and m!4861353 m!4861361 b!4268665)))

(assert (=> bs!599907 m!4861369))

(assert (=> bs!599907 m!4861425))

(declare-fun bs!599908 () Bool)

(assert (= bs!599908 (and m!4861353 m!4861363 b!4268666)))

(assert (=> bs!599908 m!4861371))

(assert (=> bs!599908 m!4861425))

(declare-fun bs!599909 () Bool)

(assert (= bs!599909 (and m!4861353 b!4268667)))

(assert (=> bs!599909 m!4861425))

(assert (=> bs!599909 m!4861425))

(declare-fun bs!599910 () Bool)

(assert (= bs!599910 (and m!4861353 m!4861357 b!4268668)))

(assert (=> bs!599910 m!4861425))

(assert (=> bs!599910 m!4861355))

(declare-fun bs!599911 () Bool)

(assert (= bs!599911 (and m!4861353 m!4861361 b!4268669)))

(assert (=> bs!599911 m!4861425))

(assert (=> bs!599911 m!4861369))

(declare-fun bs!599912 () Bool)

(assert (= bs!599912 (and m!4861353 m!4861363 b!4268670)))

(assert (=> bs!599912 m!4861425))

(assert (=> bs!599912 m!4861371))

(push 1)

(assert (not bs!599829))

(assert (not b!4268651))

(assert (not b!4268654))

(assert (not bs!599845))

(assert (not bs!599843))

(assert (not b!4268665))

(assert (not b!4268657))

(assert (not b!4268655))

(assert (not bs!599828))

(assert (not b!4268670))

(assert (not b!4268656))

(assert (not b!4268669))

(assert (not bs!599844))

(assert (not b!4268659))

(assert (not b!4268641))

(assert (not bs!599835))

(assert (not bs!599837))

(assert (not bs!599839))

(assert (not b!4268662))

(assert (not bs!599826))

(assert (not b!4268667))

(assert (not b!4268642))

(assert (not bs!599834))

(assert (not b!4268653))

(assert (not bs!599846))

(assert (not b!4268658))

(assert (not b!4268666))

(assert (not b!4268652))

(assert (not b!4268663))

(assert (not bs!599841))

(assert (not b!4268664))

(assert (not start!409146))

(assert (not b!4268661))

(assert (not bs!599830))

(assert (not bs!599836))

(assert (not b!4268668))

(assert (not bs!599823))

(assert (not bs!599832))

(assert (not b!4268660))

(assert (not bs!599825))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1258713 () Bool)

(declare-fun lt!1512314 () List!47404)

(declare-fun efficientList!448 (BalanceConc!28034) List!47404)

(assert (=> d!1258713 (= lt!1512314 (efficientList!448 x!739123))))

(assert (=> d!1258713 (= (toValue!15 thiss!2386 x!739123) (ite (= lt!1512314 (Cons!47280 #x0049 (Cons!47280 #x006E (Cons!47280 #x0074 (Cons!47280 #x0028 (Cons!47280 #x0033 (Cons!47280 #x0032 (Cons!47280 #x0029 Nil!47280)))))))) Int32!8235 (ite (= lt!1512314 (Cons!47280 #x0055 (Cons!47280 #x006E (Cons!47280 #x0069 (Cons!47280 #x0074 Nil!47280))))) Unit!66177 (ite (= lt!1512314 (Cons!47280 #x0042 (Cons!47280 #x006F (Cons!47280 #x006F (Cons!47280 #x006C (Cons!47280 #x0065 (Cons!47280 #x0061 (Cons!47280 #x006E Nil!47280)))))))) Boolean!8236 (ite (= lt!1512314 (Cons!47280 #x0053 (Cons!47280 #x0074 (Cons!47280 #x0072 (Cons!47280 #x0069 (Cons!47280 #x006E (Cons!47280 #x0067 Nil!47280))))))) String!55182 (Broken!41176 lt!1512314))))))))

(declare-fun bs!599933 () Bool)

(assert (= bs!599933 d!1258713))

(declare-fun m!4861437 () Bool)

(assert (=> bs!599933 m!4861437))

(assert (=> b!4268657 d!1258713))

(declare-fun d!1258715 () Bool)

(declare-fun list!17106 (Conc!14262) List!47404)

(assert (=> d!1258715 (= (list!17103 x!739121) (list!17106 (c!726020 x!739121)))))

(declare-fun bs!599934 () Bool)

(assert (= bs!599934 d!1258715))

(declare-fun m!4861439 () Bool)

(assert (=> bs!599934 m!4861439))

(assert (=> bs!599837 d!1258715))

(declare-fun d!1258717 () Bool)

(assert (=> d!1258717 (= (list!17103 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!739121))) (list!17106 (c!726020 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!739121)))))))

(declare-fun bs!599935 () Bool)

(assert (= bs!599935 d!1258717))

(declare-fun m!4861441 () Bool)

(assert (=> bs!599935 m!4861441))

(assert (=> bs!599837 d!1258717))

(declare-fun d!1258719 () Bool)

(assert (=> d!1258719 (= (list!17103 x!739123) (list!17106 (c!726020 x!739123)))))

(declare-fun bs!599936 () Bool)

(assert (= bs!599936 d!1258719))

(declare-fun m!4861443 () Bool)

(assert (=> bs!599936 m!4861443))

(assert (=> bs!599828 d!1258719))

(assert (=> bs!599843 d!1258717))

(assert (=> b!4268660 d!1258713))

(declare-fun d!1258721 () Bool)

(declare-fun lt!1512315 () List!47404)

(assert (=> d!1258721 (= lt!1512315 (efficientList!448 x!739121))))

(assert (=> d!1258721 (= (toValue!15 thiss!2386 x!739121) (ite (= lt!1512315 (Cons!47280 #x0049 (Cons!47280 #x006E (Cons!47280 #x0074 (Cons!47280 #x0028 (Cons!47280 #x0033 (Cons!47280 #x0032 (Cons!47280 #x0029 Nil!47280)))))))) Int32!8235 (ite (= lt!1512315 (Cons!47280 #x0055 (Cons!47280 #x006E (Cons!47280 #x0069 (Cons!47280 #x0074 Nil!47280))))) Unit!66177 (ite (= lt!1512315 (Cons!47280 #x0042 (Cons!47280 #x006F (Cons!47280 #x006F (Cons!47280 #x006C (Cons!47280 #x0065 (Cons!47280 #x0061 (Cons!47280 #x006E Nil!47280)))))))) Boolean!8236 (ite (= lt!1512315 (Cons!47280 #x0053 (Cons!47280 #x0074 (Cons!47280 #x0072 (Cons!47280 #x0069 (Cons!47280 #x006E (Cons!47280 #x0067 Nil!47280))))))) String!55182 (Broken!41176 lt!1512315))))))))

(declare-fun bs!599937 () Bool)

(assert (= bs!599937 d!1258721))

(declare-fun m!4861445 () Bool)

(assert (=> bs!599937 m!4861445))

(assert (=> b!4268660 d!1258721))

(declare-fun d!1258723 () Bool)

(declare-fun lt!1512316 () List!47404)

(assert (=> d!1258723 (= lt!1512316 (efficientList!448 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!739121))))))

(assert (=> d!1258723 (= (toValue!15 thiss!2386 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!739121))) (ite (= lt!1512316 (Cons!47280 #x0049 (Cons!47280 #x006E (Cons!47280 #x0074 (Cons!47280 #x0028 (Cons!47280 #x0033 (Cons!47280 #x0032 (Cons!47280 #x0029 Nil!47280)))))))) Int32!8235 (ite (= lt!1512316 (Cons!47280 #x0055 (Cons!47280 #x006E (Cons!47280 #x0069 (Cons!47280 #x0074 Nil!47280))))) Unit!66177 (ite (= lt!1512316 (Cons!47280 #x0042 (Cons!47280 #x006F (Cons!47280 #x006F (Cons!47280 #x006C (Cons!47280 #x0065 (Cons!47280 #x0061 (Cons!47280 #x006E Nil!47280)))))))) Boolean!8236 (ite (= lt!1512316 (Cons!47280 #x0053 (Cons!47280 #x0074 (Cons!47280 #x0072 (Cons!47280 #x0069 (Cons!47280 #x006E (Cons!47280 #x0067 Nil!47280))))))) String!55182 (Broken!41176 lt!1512316))))))))

(declare-fun bs!599938 () Bool)

(assert (= bs!599938 d!1258723))

(assert (=> bs!599938 m!4861351))

(declare-fun m!4861447 () Bool)

(assert (=> bs!599938 m!4861447))

(assert (=> b!4268670 d!1258723))

(assert (=> b!4268670 d!1258713))

(declare-fun d!1258725 () Bool)

(assert (=> d!1258725 (= (list!17103 x!739122) (list!17106 (c!726020 x!739122)))))

(declare-fun bs!599939 () Bool)

(assert (= bs!599939 d!1258725))

(declare-fun m!4861449 () Bool)

(assert (=> bs!599939 m!4861449))

(assert (=> bs!599825 d!1258725))

(assert (=> bs!599839 d!1258725))

(assert (=> bs!599839 d!1258717))

(assert (=> b!4268658 d!1258713))

(declare-fun d!1258727 () Bool)

(declare-fun lt!1512317 () List!47404)

(assert (=> d!1258727 (= lt!1512317 (efficientList!448 x!739122))))

(assert (=> d!1258727 (= (toValue!15 thiss!2386 x!739122) (ite (= lt!1512317 (Cons!47280 #x0049 (Cons!47280 #x006E (Cons!47280 #x0074 (Cons!47280 #x0028 (Cons!47280 #x0033 (Cons!47280 #x0032 (Cons!47280 #x0029 Nil!47280)))))))) Int32!8235 (ite (= lt!1512317 (Cons!47280 #x0055 (Cons!47280 #x006E (Cons!47280 #x0069 (Cons!47280 #x0074 Nil!47280))))) Unit!66177 (ite (= lt!1512317 (Cons!47280 #x0042 (Cons!47280 #x006F (Cons!47280 #x006F (Cons!47280 #x006C (Cons!47280 #x0065 (Cons!47280 #x0061 (Cons!47280 #x006E Nil!47280)))))))) Boolean!8236 (ite (= lt!1512317 (Cons!47280 #x0053 (Cons!47280 #x0074 (Cons!47280 #x0072 (Cons!47280 #x0069 (Cons!47280 #x006E (Cons!47280 #x0067 Nil!47280))))))) String!55182 (Broken!41176 lt!1512317))))))))

(declare-fun bs!599940 () Bool)

(assert (= bs!599940 d!1258727))

(declare-fun m!4861451 () Bool)

(assert (=> bs!599940 m!4861451))

(assert (=> b!4268658 d!1258727))

(declare-fun bs!599941 () Bool)

(declare-fun d!1258729 () Bool)

(assert (= bs!599941 (and d!1258729 start!409146)))

(declare-fun lambda!130520 () Int)

(assert (=> bs!599941 (not (= lambda!130520 lambda!130486))))

(assert (=> d!1258729 true))

(declare-fun order!24811 () Int)

(declare-fun order!24813 () Int)

(declare-fun dynLambda!20242 (Int Int) Int)

(declare-fun dynLambda!20243 (Int Int) Int)

(assert (=> d!1258729 (< (dynLambda!20242 order!24811 lambda!130487) (dynLambda!20243 order!24813 lambda!130520))))

(assert (=> d!1258729 true))

(declare-fun order!24815 () Int)

(declare-fun dynLambda!20244 (Int Int) Int)

(assert (=> d!1258729 (< (dynLambda!20244 order!24815 lambda!130488) (dynLambda!20243 order!24813 lambda!130520))))

(assert (=> d!1258729 (= (semiInverseModEq!3497 lambda!130487 lambda!130488) (Forall!1617 lambda!130520))))

(declare-fun bs!599942 () Bool)

(assert (= bs!599942 d!1258729))

(declare-fun m!4861453 () Bool)

(assert (=> bs!599942 m!4861453))

(assert (=> b!4268641 d!1258729))

(assert (=> b!4268641 d!1258719))

(declare-fun d!1258731 () Bool)

(declare-fun isBalanced!3819 (Conc!14262) Bool)

(assert (=> d!1258731 (= (inv!62263 x!739123) (isBalanced!3819 (c!726020 x!739123)))))

(declare-fun bs!599943 () Bool)

(assert (= bs!599943 d!1258731))

(declare-fun m!4861455 () Bool)

(assert (=> bs!599943 m!4861455))

(assert (=> b!4268641 d!1258731))

(declare-fun d!1258733 () Bool)

(declare-fun choose!26018 (Int) Bool)

(assert (=> d!1258733 (= (Forall2!1212 lambda!130489) (choose!26018 lambda!130489))))

(declare-fun bs!599944 () Bool)

(assert (= bs!599944 d!1258733))

(declare-fun m!4861457 () Bool)

(assert (=> bs!599944 m!4861457))

(assert (=> b!4268641 d!1258733))

(declare-fun d!1258735 () Bool)

(assert (=> d!1258735 (= (inv!62263 x!739122) (isBalanced!3819 (c!726020 x!739122)))))

(declare-fun bs!599945 () Bool)

(assert (= bs!599945 d!1258735))

(declare-fun m!4861459 () Bool)

(assert (=> bs!599945 m!4861459))

(assert (=> b!4268641 d!1258735))

(assert (=> b!4268641 d!1258725))

(declare-fun d!1258737 () Bool)

(declare-fun choose!26019 (Int) Bool)

(assert (=> d!1258737 (= (Forall!1617 lambda!130486) (choose!26019 lambda!130486))))

(declare-fun bs!599946 () Bool)

(assert (= bs!599946 d!1258737))

(declare-fun m!4861461 () Bool)

(assert (=> bs!599946 m!4861461))

(assert (=> b!4268641 d!1258737))

(assert (=> bs!599844 d!1258717))

(assert (=> bs!599844 d!1258715))

(declare-fun d!1258739 () Bool)

(declare-fun c!726024 () Bool)

(assert (=> d!1258739 (= c!726024 (is-Node!14262 (c!726020 x!739123)))))

(declare-fun e!2650324 () Bool)

(assert (=> d!1258739 (= (inv!62262 (c!726020 x!739123)) e!2650324)))

(declare-fun b!4268731 () Bool)

(declare-fun inv!62268 (Conc!14262) Bool)

(assert (=> b!4268731 (= e!2650324 (inv!62268 (c!726020 x!739123)))))

(declare-fun b!4268732 () Bool)

(declare-fun e!2650325 () Bool)

(assert (=> b!4268732 (= e!2650324 e!2650325)))

(declare-fun res!1753800 () Bool)

(assert (=> b!4268732 (= res!1753800 (not (is-Leaf!22049 (c!726020 x!739123))))))

(assert (=> b!4268732 (=> res!1753800 e!2650325)))

(declare-fun b!4268733 () Bool)

(declare-fun inv!62269 (Conc!14262) Bool)

(assert (=> b!4268733 (= e!2650325 (inv!62269 (c!726020 x!739123)))))

(assert (= (and d!1258739 c!726024) b!4268731))

(assert (= (and d!1258739 (not c!726024)) b!4268732))

(assert (= (and b!4268732 (not res!1753800)) b!4268733))

(declare-fun m!4861463 () Bool)

(assert (=> b!4268731 m!4861463))

(declare-fun m!4861465 () Bool)

(assert (=> b!4268733 m!4861465))

(assert (=> b!4268654 d!1258739))

(assert (=> b!4268661 d!1258721))

(declare-fun d!1258741 () Bool)

(declare-fun c!726025 () Bool)

(assert (=> d!1258741 (= c!726025 (is-Node!14262 (c!726020 x!739122)))))

(declare-fun e!2650326 () Bool)

(assert (=> d!1258741 (= (inv!62262 (c!726020 x!739122)) e!2650326)))

(declare-fun b!4268734 () Bool)

(assert (=> b!4268734 (= e!2650326 (inv!62268 (c!726020 x!739122)))))

(declare-fun b!4268735 () Bool)

(declare-fun e!2650327 () Bool)

(assert (=> b!4268735 (= e!2650326 e!2650327)))

(declare-fun res!1753801 () Bool)

(assert (=> b!4268735 (= res!1753801 (not (is-Leaf!22049 (c!726020 x!739122))))))

(assert (=> b!4268735 (=> res!1753801 e!2650327)))

(declare-fun b!4268736 () Bool)

(assert (=> b!4268736 (= e!2650327 (inv!62269 (c!726020 x!739122)))))

(assert (= (and d!1258741 c!726025) b!4268734))

(assert (= (and d!1258741 (not c!726025)) b!4268735))

(assert (= (and b!4268735 (not res!1753801)) b!4268736))

(declare-fun m!4861467 () Bool)

(assert (=> b!4268734 m!4861467))

(declare-fun m!4861469 () Bool)

(assert (=> b!4268736 m!4861469))

(assert (=> b!4268653 d!1258741))

(assert (=> bs!599829 d!1258719))

(assert (=> bs!599829 d!1258725))

(assert (=> bs!599823 d!1258717))

(declare-fun b!4268757 () Bool)

(declare-fun e!2650341 () BalanceConc!28034)

(declare-fun stringBooleanConc!0 () BalanceConc!28034)

(assert (=> b!4268757 (= e!2650341 stringBooleanConc!0)))

(declare-fun b!4268758 () Bool)

(declare-fun c!726040 () Bool)

(assert (=> b!4268758 (= c!726040 (is-Boolean!8236 (toValue!15 thiss!2386 x!739121)))))

(declare-fun e!2650342 () BalanceConc!28034)

(assert (=> b!4268758 (= e!2650342 e!2650341)))

(declare-fun b!4268759 () Bool)

(declare-fun c!726037 () Bool)

(assert (=> b!4268759 (= c!726037 (is-Broken!41176 (toValue!15 thiss!2386 x!739121)))))

(declare-fun e!2650338 () BalanceConc!28034)

(declare-fun e!2650339 () BalanceConc!28034)

(assert (=> b!4268759 (= e!2650338 e!2650339)))

(declare-fun b!4268760 () Bool)

(declare-fun e!2650340 () BalanceConc!28034)

(declare-fun stringInt32Conc!0 () BalanceConc!28034)

(assert (=> b!4268760 (= e!2650340 stringInt32Conc!0)))

(declare-fun b!4268762 () Bool)

(assert (=> b!4268762 (= e!2650340 e!2650342)))

(declare-fun c!726041 () Bool)

(assert (=> b!4268762 (= c!726041 (is-Unit!66177 (toValue!15 thiss!2386 x!739121)))))

(declare-fun b!4268763 () Bool)

(declare-fun stringStringConc!0 () BalanceConc!28034)

(assert (=> b!4268763 (= e!2650338 stringStringConc!0)))

(declare-fun b!4268764 () Bool)

(declare-fun seqFromList!5855 (List!47404) BalanceConc!28034)

(assert (=> b!4268764 (= e!2650339 (seqFromList!5855 (value!248710 (toValue!15 thiss!2386 x!739121))))))

(declare-fun b!4268765 () Bool)

(assert (=> b!4268765 (= e!2650339 (BalanceConc!28035 Empty!14262))))

(declare-fun b!4268766 () Bool)

(assert (=> b!4268766 (= e!2650341 e!2650338)))

(declare-fun c!726038 () Bool)

(assert (=> b!4268766 (= c!726038 (is-String!55182 (toValue!15 thiss!2386 x!739121)))))

(declare-fun d!1258743 () Bool)

(declare-fun c!726039 () Bool)

(assert (=> d!1258743 (= c!726039 (is-Int32!8235 (toValue!15 thiss!2386 x!739121)))))

(assert (=> d!1258743 (= (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!739121)) e!2650340)))

(declare-fun b!4268761 () Bool)

(declare-fun stringUnitConc!0 () BalanceConc!28034)

(assert (=> b!4268761 (= e!2650342 stringUnitConc!0)))

(assert (= (and d!1258743 c!726039) b!4268760))

(assert (= (and d!1258743 (not c!726039)) b!4268762))

(assert (= (and b!4268762 c!726041) b!4268761))

(assert (= (and b!4268762 (not c!726041)) b!4268758))

(assert (= (and b!4268758 c!726040) b!4268757))

(assert (= (and b!4268758 (not c!726040)) b!4268766))

(assert (= (and b!4268766 c!726038) b!4268763))

(assert (= (and b!4268766 (not c!726038)) b!4268759))

(assert (= (and b!4268759 c!726037) b!4268764))

(assert (= (and b!4268759 (not c!726037)) b!4268765))

(declare-fun m!4861471 () Bool)

(assert (=> b!4268760 m!4861471))

(declare-fun m!4861473 () Bool)

(assert (=> b!4268761 m!4861473))

(declare-fun m!4861475 () Bool)

(assert (=> b!4268757 m!4861475))

(declare-fun m!4861477 () Bool)

(assert (=> b!4268763 m!4861477))

(declare-fun m!4861479 () Bool)

(assert (=> b!4268764 m!4861479))

(assert (=> bs!599823 d!1258743))

(assert (=> bs!599823 d!1258721))

(assert (=> bs!599823 d!1258715))

(assert (=> b!4268664 d!1258721))

(assert (=> b!4268664 d!1258723))

(assert (=> b!4268667 d!1258723))

(declare-fun d!1258745 () Bool)

(declare-fun c!726042 () Bool)

(assert (=> d!1258745 (= c!726042 (is-Node!14262 (c!726020 x!739121)))))

(declare-fun e!2650343 () Bool)

(assert (=> d!1258745 (= (inv!62262 (c!726020 x!739121)) e!2650343)))

(declare-fun b!4268767 () Bool)

(assert (=> b!4268767 (= e!2650343 (inv!62268 (c!726020 x!739121)))))

(declare-fun b!4268768 () Bool)

(declare-fun e!2650344 () Bool)

(assert (=> b!4268768 (= e!2650343 e!2650344)))

(declare-fun res!1753802 () Bool)

(assert (=> b!4268768 (= res!1753802 (not (is-Leaf!22049 (c!726020 x!739121))))))

(assert (=> b!4268768 (=> res!1753802 e!2650344)))

(declare-fun b!4268769 () Bool)

(assert (=> b!4268769 (= e!2650344 (inv!62269 (c!726020 x!739121)))))

(assert (= (and d!1258745 c!726042) b!4268767))

(assert (= (and d!1258745 (not c!726042)) b!4268768))

(assert (= (and b!4268768 (not res!1753802)) b!4268769))

(declare-fun m!4861481 () Bool)

(assert (=> b!4268767 m!4861481))

(declare-fun m!4861483 () Bool)

(assert (=> b!4268769 m!4861483))

(assert (=> b!4268651 d!1258745))

(assert (=> bs!599834 d!1258715))

(assert (=> b!4268652 d!1258727))

(assert (=> b!4268652 d!1258713))

(assert (=> b!4268662 d!1258721))

(assert (=> b!4268662 d!1258727))

(assert (=> bs!599826 d!1258725))

(assert (=> bs!599826 d!1258719))

(assert (=> bs!599830 d!1258725))

(assert (=> bs!599830 d!1258715))

(assert (=> bs!599845 d!1258717))

(assert (=> bs!599845 d!1258725))

(assert (=> bs!599835 d!1258715))

(assert (=> bs!599835 d!1258725))

(declare-fun d!1258747 () Bool)

(assert (=> d!1258747 (= (inv!62263 x!739121) (isBalanced!3819 (c!726020 x!739121)))))

(declare-fun bs!599947 () Bool)

(assert (= bs!599947 d!1258747))

(declare-fun m!4861485 () Bool)

(assert (=> bs!599947 m!4861485))

(assert (=> start!409146 d!1258747))

(assert (=> start!409146 d!1258717))

(assert (=> start!409146 d!1258715))

(assert (=> start!409146 d!1258721))

(assert (=> start!409146 d!1258737))

(assert (=> start!409146 d!1258743))

(assert (=> b!4268655 d!1258727))

(assert (=> b!4268665 d!1258727))

(assert (=> b!4268665 d!1258723))

(declare-fun d!1258749 () Bool)

(declare-fun res!1753805 () Bool)

(declare-fun e!2650347 () Bool)

(assert (=> d!1258749 (=> (not res!1753805) (not e!2650347))))

(assert (=> d!1258749 (= res!1753805 (semiInverseModEq!3497 (toChars!10638 (TokenValueInjection!15879 lambda!130488 lambda!130487)) (toValue!10779 (TokenValueInjection!15879 lambda!130488 lambda!130487))))))

(assert (=> d!1258749 (= (inv!62264 (TokenValueInjection!15879 lambda!130488 lambda!130487)) e!2650347)))

(declare-fun b!4268772 () Bool)

(assert (=> b!4268772 (= e!2650347 (equivClasses!3392 (toChars!10638 (TokenValueInjection!15879 lambda!130488 lambda!130487)) (toValue!10779 (TokenValueInjection!15879 lambda!130488 lambda!130487))))))

(assert (= (and d!1258749 res!1753805) b!4268772))

(declare-fun m!4861487 () Bool)

(assert (=> d!1258749 m!4861487))

(declare-fun m!4861489 () Bool)

(assert (=> b!4268772 m!4861489))

(assert (=> b!4268642 d!1258749))

(declare-fun bs!599948 () Bool)

(declare-fun d!1258751 () Bool)

(assert (= bs!599948 (and d!1258751 b!4268641)))

(declare-fun lambda!130523 () Int)

(assert (=> bs!599948 (not (= lambda!130523 lambda!130489))))

(assert (=> d!1258751 true))

(declare-fun order!24817 () Int)

(declare-fun dynLambda!20245 (Int Int) Int)

(assert (=> d!1258751 (< (dynLambda!20244 order!24815 lambda!130488) (dynLambda!20245 order!24817 lambda!130523))))

(assert (=> d!1258751 (= (equivClasses!3392 lambda!130487 lambda!130488) (Forall2!1212 lambda!130523))))

(declare-fun bs!599949 () Bool)

(assert (= bs!599949 d!1258751))

(declare-fun m!4861491 () Bool)

(assert (=> bs!599949 m!4861491))

(assert (=> b!4268642 d!1258751))

(assert (=> b!4268642 d!1258733))

(assert (=> b!4268668 d!1258723))

(assert (=> b!4268668 d!1258721))

(assert (=> bs!599832 d!1258719))

(assert (=> bs!599832 d!1258715))

(assert (=> bs!599846 d!1258717))

(assert (=> bs!599846 d!1258719))

(assert (=> b!4268663 d!1258721))

(assert (=> b!4268663 d!1258713))

(assert (=> b!4268656 d!1258727))

(assert (=> b!4268656 d!1258713))

(assert (=> b!4268666 d!1258713))

(assert (=> b!4268666 d!1258723))

(assert (=> b!4268669 d!1258723))

(assert (=> b!4268669 d!1258727))

(assert (=> bs!599836 d!1258715))

(assert (=> bs!599836 d!1258719))

(assert (=> b!4268659 d!1258727))

(assert (=> b!4268659 d!1258721))

(assert (=> bs!599841 d!1258719))

(assert (=> bs!599841 d!1258717))

(declare-fun b!4268783 () Bool)

(declare-fun e!2650354 () Bool)

(declare-fun tp!1307710 () Bool)

(declare-fun tp!1307709 () Bool)

(assert (=> b!4268783 (= e!2650354 (and (inv!62262 (left!35078 (c!726020 x!739123))) tp!1307709 (inv!62262 (right!35408 (c!726020 x!739123))) tp!1307710))))

(declare-fun b!4268784 () Bool)

(declare-fun inv!62270 (IArray!28529) Bool)

(assert (=> b!4268784 (= e!2650354 (inv!62270 (xs!17568 (c!726020 x!739123))))))

(assert (=> b!4268654 (= tp!1307695 (and (inv!62262 (c!726020 x!739123)) e!2650354))))

(assert (= (and b!4268654 (is-Node!14262 (c!726020 x!739123))) b!4268783))

(assert (= (and b!4268654 (is-Leaf!22049 (c!726020 x!739123))) b!4268784))

(declare-fun m!4861493 () Bool)

(assert (=> b!4268783 m!4861493))

(declare-fun m!4861495 () Bool)

(assert (=> b!4268783 m!4861495))

(declare-fun m!4861497 () Bool)

(assert (=> b!4268784 m!4861497))

(assert (=> b!4268654 m!4861375))

(declare-fun b!4268785 () Bool)

(declare-fun e!2650356 () Bool)

(declare-fun tp!1307712 () Bool)

(declare-fun tp!1307711 () Bool)

(assert (=> b!4268785 (= e!2650356 (and (inv!62262 (left!35078 (c!726020 x!739122))) tp!1307711 (inv!62262 (right!35408 (c!726020 x!739122))) tp!1307712))))

(declare-fun b!4268786 () Bool)

(assert (=> b!4268786 (= e!2650356 (inv!62270 (xs!17568 (c!726020 x!739122))))))

(assert (=> b!4268653 (= tp!1307694 (and (inv!62262 (c!726020 x!739122)) e!2650356))))

(assert (= (and b!4268653 (is-Node!14262 (c!726020 x!739122))) b!4268785))

(assert (= (and b!4268653 (is-Leaf!22049 (c!726020 x!739122))) b!4268786))

(declare-fun m!4861499 () Bool)

(assert (=> b!4268785 m!4861499))

(declare-fun m!4861501 () Bool)

(assert (=> b!4268785 m!4861501))

(declare-fun m!4861503 () Bool)

(assert (=> b!4268786 m!4861503))

(assert (=> b!4268653 m!4861373))

(declare-fun tp!1307713 () Bool)

(declare-fun tp!1307714 () Bool)

(declare-fun b!4268787 () Bool)

(declare-fun e!2650358 () Bool)

(assert (=> b!4268787 (= e!2650358 (and (inv!62262 (left!35078 (c!726020 x!739121))) tp!1307713 (inv!62262 (right!35408 (c!726020 x!739121))) tp!1307714))))

(declare-fun b!4268788 () Bool)

(assert (=> b!4268788 (= e!2650358 (inv!62270 (xs!17568 (c!726020 x!739121))))))

(assert (=> b!4268651 (= tp!1307693 (and (inv!62262 (c!726020 x!739121)) e!2650358))))

(assert (= (and b!4268651 (is-Node!14262 (c!726020 x!739121))) b!4268787))

(assert (= (and b!4268651 (is-Leaf!22049 (c!726020 x!739121))) b!4268788))

(declare-fun m!4861505 () Bool)

(assert (=> b!4268787 m!4861505))

(declare-fun m!4861507 () Bool)

(assert (=> b!4268787 m!4861507))

(declare-fun m!4861509 () Bool)

(assert (=> b!4268788 m!4861509))

(assert (=> b!4268651 m!4861349))

(push 1)

(assert (not b!4268760))

(assert (not b!4268783))

(assert (not b!4268651))

(assert (not b!4268654))

(assert (not b!4268734))

(assert (not d!1258737))

(assert (not b!4268769))

(assert (not d!1258733))

(assert (not d!1258719))

(assert (not b!4268736))

(assert (not b!4268772))

(assert (not d!1258725))

(assert (not b!4268788))

(assert (not b!4268787))

(assert (not d!1258747))

(assert (not b!4268731))

(assert (not d!1258751))

(assert (not b!4268763))

(assert (not d!1258715))

(assert (not b!4268733))

(assert (not b!4268653))

(assert (not d!1258713))

(assert (not d!1258723))

(assert (not d!1258721))

(assert (not b!4268757))

(assert (not d!1258731))

(assert (not b!4268785))

(assert (not b!4268786))

(assert (not b!4268761))

(assert (not d!1258729))

(assert (not d!1258717))

(assert (not b!4268764))

(assert (not d!1258749))

(assert (not d!1258735))

(assert (not d!1258727))

(assert (not b!4268767))

(assert (not b!4268784))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

