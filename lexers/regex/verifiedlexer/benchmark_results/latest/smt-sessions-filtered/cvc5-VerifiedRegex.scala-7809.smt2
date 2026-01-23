; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!410348 () Bool)

(assert start!410348)

(assert (=> start!410348 true))

(declare-fun b!4274649 () Bool)

(assert (=> b!4274649 true))

(assert (=> b!4274649 true))

(assert (=> b!4274649 true))

(declare-fun b!4274658 () Bool)

(declare-fun e!2653899 () Bool)

(declare-datatypes ((List!47450 0))(
  ( (Nil!47326) (Cons!47326 (h!52746 (_ BitVec 16)) (t!353883 List!47450)) )
))
(declare-datatypes ((IArray!28621 0))(
  ( (IArray!28622 (innerList!14368 List!47450)) )
))
(declare-datatypes ((Conc!14308 0))(
  ( (Node!14308 (left!35215 Conc!14308) (right!35545 Conc!14308) (csize!28846 Int) (cheight!14519 Int)) (Leaf!22118 (xs!17614 IArray!28621) (csize!28847 Int)) (Empty!14308) )
))
(declare-datatypes ((BalanceConc!28126 0))(
  ( (BalanceConc!28127 (c!727737 Conc!14308)) )
))
(declare-fun x!742393 () BalanceConc!28126)

(declare-fun tp!1308395 () Bool)

(declare-fun inv!62541 (Conc!14308) Bool)

(assert (=> b!4274658 (= e!2653899 (and (inv!62541 (c!727737 x!742393)) tp!1308395))))

(declare-datatypes ((KeywordValueInjection!192 0))(
  ( (KeywordValueInjection!193) )
))
(declare-fun thiss!2319 () KeywordValueInjection!192)

(declare-fun inst!1774 () Bool)

(declare-fun inv!62542 (BalanceConc!28126) Bool)

(declare-fun list!17208 (BalanceConc!28126) List!47450)

(declare-datatypes ((TokenValue!8281 0))(
  ( (FloatLiteralValue!16562 (text!58412 List!47450)) (TokenValueExt!8280 (__x!28727 Int)) (Broken!41405 (value!249924 List!47450)) (Object!8404) (End!8281) (Def!8281) (Underscore!8281) (Match!8281) (Else!8281) (Error!8281) (Case!8281) (If!8281) (Extends!8281) (Abstract!8281) (Class!8281) (Val!8281) (DelimiterValue!16562 (del!8341 List!47450)) (KeywordValue!8287 (value!249925 List!47450)) (CommentValue!16562 (value!249926 List!47450)) (WhitespaceValue!16562 (value!249927 List!47450)) (IndentationValue!8281 (value!249928 List!47450)) (String!55320) (Int32!8281) (Broken!41406 (value!249929 List!47450)) (Boolean!8282) (Unit!66263) (OperatorValue!8284 (op!8341 List!47450)) (IdentifierValue!16562 (value!249930 List!47450)) (IdentifierValue!16563 (value!249931 List!47450)) (WhitespaceValue!16563 (value!249932 List!47450)) (True!16562) (False!16562) (Broken!41407 (value!249933 List!47450)) (Broken!41408 (value!249934 List!47450)) (True!16563) (RightBrace!8281) (RightBracket!8281) (Colon!8281) (Null!8281) (Comma!8281) (LeftBracket!8281) (False!16563) (LeftBrace!8281) (ImaginaryLiteralValue!8281 (text!58413 List!47450)) (StringLiteralValue!24843 (value!249935 List!47450)) (EOFValue!8281 (value!249936 List!47450)) (IdentValue!8281 (value!249937 List!47450)) (DelimiterValue!16563 (value!249938 List!47450)) (DedentValue!8281 (value!249939 List!47450)) (NewLineValue!8281 (value!249940 List!47450)) (IntegerValue!24843 (value!249941 (_ BitVec 32)) (text!58414 List!47450)) (IntegerValue!24844 (value!249942 Int) (text!58415 List!47450)) (Times!8281) (Or!8281) (Equal!8281) (Minus!8281) (Broken!41409 (value!249943 List!47450)) (And!8281) (Div!8281) (LessEqual!8281) (Mod!8281) (Concat!21179) (Not!8281) (Plus!8281) (SpaceValue!8281 (value!249944 List!47450)) (IntegerValue!24845 (value!249945 Int) (text!58416 List!47450)) (StringLiteralValue!24844 (text!58417 List!47450)) (FloatLiteralValue!16563 (text!58418 List!47450)) (BytesLiteralValue!8281 (value!249946 List!47450)) (CommentValue!16563 (value!249947 List!47450)) (StringLiteralValue!24845 (value!249948 List!47450)) (ErrorTokenValue!8281 (msg!8342 List!47450)) )
))
(declare-fun toCharacters!7 (KeywordValueInjection!192 TokenValue!8281) BalanceConc!28126)

(declare-fun toValue!14 (KeywordValueInjection!192 BalanceConc!28126) TokenValue!8281)

(assert (=> start!410348 (= inst!1774 (=> (and (inv!62542 x!742393) e!2653899) (= (list!17208 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393))) (list!17208 x!742393))))))

(assert (= start!410348 b!4274658))

(declare-fun m!4870245 () Bool)

(assert (=> b!4274658 m!4870245))

(declare-fun m!4870247 () Bool)

(assert (=> start!410348 m!4870247))

(declare-fun m!4870249 () Bool)

(assert (=> start!410348 m!4870249))

(declare-fun m!4870251 () Bool)

(assert (=> start!410348 m!4870251))

(declare-fun m!4870253 () Bool)

(assert (=> start!410348 m!4870253))

(assert (=> start!410348 m!4870247))

(assert (=> start!410348 m!4870251))

(declare-fun m!4870255 () Bool)

(assert (=> start!410348 m!4870255))

(declare-fun res!1755550 () Bool)

(declare-fun e!2653902 () Bool)

(assert (=> b!4274649 (=> res!1755550 e!2653902)))

(declare-fun x!742394 () BalanceConc!28126)

(declare-fun x!742395 () BalanceConc!28126)

(assert (=> b!4274649 (= res!1755550 (not (= (list!17208 x!742394) (list!17208 x!742395))))))

(declare-fun e!2653900 () Bool)

(declare-fun e!2653901 () Bool)

(declare-fun inst!1775 () Bool)

(assert (=> b!4274649 (= inst!1775 (=> (and (inv!62542 x!742394) e!2653900 (inv!62542 x!742395) e!2653901) e!2653902))))

(declare-fun b!4274659 () Bool)

(assert (=> b!4274659 (= e!2653902 (= (toValue!14 thiss!2319 x!742394) (toValue!14 thiss!2319 x!742395)))))

(declare-fun b!4274660 () Bool)

(declare-fun tp!1308397 () Bool)

(assert (=> b!4274660 (= e!2653900 (and (inv!62541 (c!727737 x!742394)) tp!1308397))))

(declare-fun b!4274661 () Bool)

(declare-fun tp!1308396 () Bool)

(assert (=> b!4274661 (= e!2653901 (and (inv!62541 (c!727737 x!742395)) tp!1308396))))

(assert (= (and b!4274649 (not res!1755550)) b!4274659))

(assert (= b!4274649 b!4274660))

(assert (= b!4274649 b!4274661))

(declare-fun m!4870257 () Bool)

(assert (=> b!4274649 m!4870257))

(declare-fun m!4870259 () Bool)

(assert (=> b!4274649 m!4870259))

(declare-fun m!4870261 () Bool)

(assert (=> b!4274649 m!4870261))

(declare-fun m!4870263 () Bool)

(assert (=> b!4274649 m!4870263))

(declare-fun m!4870265 () Bool)

(assert (=> b!4274659 m!4870265))

(declare-fun m!4870267 () Bool)

(assert (=> b!4274659 m!4870267))

(declare-fun m!4870269 () Bool)

(assert (=> b!4274660 m!4870269))

(declare-fun m!4870271 () Bool)

(assert (=> b!4274661 m!4870271))

(declare-fun bs!601676 () Bool)

(declare-fun neg-inst!1774 () Bool)

(declare-fun s!240154 () Bool)

(assert (= bs!601676 (and neg-inst!1774 s!240154)))

(assert (=> bs!601676 (=> true (= (list!17208 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393))) (list!17208 x!742393)))))

(assert (=> m!4870247 m!4870251))

(assert (=> m!4870247 m!4870253))

(assert (=> m!4870247 m!4870255))

(assert (=> m!4870247 s!240154))

(assert (=> m!4870255 s!240154))

(declare-fun bs!601677 () Bool)

(assert (= bs!601677 (and neg-inst!1774 start!410348)))

(assert (=> bs!601677 (= true inst!1774)))

(declare-fun bs!601678 () Bool)

(declare-fun neg-inst!1775 () Bool)

(declare-fun s!240156 () Bool)

(assert (= bs!601678 (and neg-inst!1775 s!240156)))

(declare-fun res!1755551 () Bool)

(declare-fun e!2653903 () Bool)

(assert (=> bs!601678 (=> res!1755551 e!2653903)))

(assert (=> bs!601678 (= res!1755551 (not (= (list!17208 x!742395) (list!17208 x!742395))))))

(assert (=> bs!601678 (=> true e!2653903)))

(declare-fun b!4274662 () Bool)

(assert (=> b!4274662 (= e!2653903 (= (toValue!14 thiss!2319 x!742395) (toValue!14 thiss!2319 x!742395)))))

(assert (= (and bs!601678 (not res!1755551)) b!4274662))

(assert (=> m!4870259 s!240156))

(assert (=> m!4870259 s!240156))

(declare-fun bs!601679 () Bool)

(declare-fun s!240158 () Bool)

(assert (= bs!601679 (and neg-inst!1775 s!240158)))

(declare-fun res!1755552 () Bool)

(declare-fun e!2653904 () Bool)

(assert (=> bs!601679 (=> res!1755552 e!2653904)))

(assert (=> bs!601679 (= res!1755552 (not (= (list!17208 x!742394) (list!17208 x!742395))))))

(assert (=> bs!601679 (=> true e!2653904)))

(declare-fun b!4274663 () Bool)

(assert (=> b!4274663 (= e!2653904 (= (toValue!14 thiss!2319 x!742394) (toValue!14 thiss!2319 x!742395)))))

(assert (= (and bs!601679 (not res!1755552)) b!4274663))

(declare-fun bs!601680 () Bool)

(assert (= bs!601680 (and m!4870265 m!4870259)))

(assert (=> bs!601680 m!4870257))

(assert (=> bs!601680 m!4870259))

(assert (=> bs!601680 s!240158))

(declare-fun bs!601681 () Bool)

(declare-fun s!240160 () Bool)

(assert (= bs!601681 (and neg-inst!1775 s!240160)))

(declare-fun res!1755553 () Bool)

(declare-fun e!2653905 () Bool)

(assert (=> bs!601681 (=> res!1755553 e!2653905)))

(assert (=> bs!601681 (= res!1755553 (not (= (list!17208 x!742394) (list!17208 x!742394))))))

(assert (=> bs!601681 (=> true e!2653905)))

(declare-fun b!4274664 () Bool)

(assert (=> b!4274664 (= e!2653905 (= (toValue!14 thiss!2319 x!742394) (toValue!14 thiss!2319 x!742394)))))

(assert (= (and bs!601681 (not res!1755553)) b!4274664))

(assert (=> m!4870265 m!4870257))

(assert (=> m!4870265 m!4870257))

(assert (=> m!4870265 s!240160))

(declare-fun bs!601682 () Bool)

(declare-fun s!240162 () Bool)

(assert (= bs!601682 (and neg-inst!1775 s!240162)))

(declare-fun res!1755554 () Bool)

(declare-fun e!2653906 () Bool)

(assert (=> bs!601682 (=> res!1755554 e!2653906)))

(assert (=> bs!601682 (= res!1755554 (not (= (list!17208 x!742395) (list!17208 x!742394))))))

(assert (=> bs!601682 (=> true e!2653906)))

(declare-fun b!4274665 () Bool)

(assert (=> b!4274665 (= e!2653906 (= (toValue!14 thiss!2319 x!742395) (toValue!14 thiss!2319 x!742394)))))

(assert (= (and bs!601682 (not res!1755554)) b!4274665))

(assert (=> bs!601680 m!4870259))

(assert (=> bs!601680 m!4870257))

(assert (=> bs!601680 s!240162))

(assert (=> m!4870265 s!240160))

(declare-fun bs!601683 () Bool)

(declare-fun s!240164 () Bool)

(assert (= bs!601683 (and neg-inst!1775 s!240164)))

(declare-fun res!1755555 () Bool)

(declare-fun e!2653907 () Bool)

(assert (=> bs!601683 (=> res!1755555 e!2653907)))

(assert (=> bs!601683 (= res!1755555 (not (= (list!17208 x!742393) (list!17208 x!742394))))))

(assert (=> bs!601683 (=> true e!2653907)))

(declare-fun b!4274666 () Bool)

(assert (=> b!4274666 (= e!2653907 (= (toValue!14 thiss!2319 x!742393) (toValue!14 thiss!2319 x!742394)))))

(assert (= (and bs!601683 (not res!1755555)) b!4274666))

(declare-fun bs!601684 () Bool)

(assert (= bs!601684 (and m!4870247 m!4870265)))

(assert (=> bs!601684 m!4870255))

(assert (=> bs!601684 m!4870257))

(assert (=> bs!601684 s!240164))

(declare-fun bs!601685 () Bool)

(declare-fun s!240166 () Bool)

(assert (= bs!601685 (and neg-inst!1775 s!240166)))

(declare-fun res!1755556 () Bool)

(declare-fun e!2653908 () Bool)

(assert (=> bs!601685 (=> res!1755556 e!2653908)))

(assert (=> bs!601685 (= res!1755556 (not (= (list!17208 x!742393) (list!17208 x!742395))))))

(assert (=> bs!601685 (=> true e!2653908)))

(declare-fun b!4274667 () Bool)

(assert (=> b!4274667 (= e!2653908 (= (toValue!14 thiss!2319 x!742393) (toValue!14 thiss!2319 x!742395)))))

(assert (= (and bs!601685 (not res!1755556)) b!4274667))

(declare-fun bs!601686 () Bool)

(assert (= bs!601686 (and m!4870247 m!4870259)))

(assert (=> bs!601686 m!4870255))

(assert (=> bs!601686 m!4870259))

(assert (=> bs!601686 s!240166))

(declare-fun bs!601687 () Bool)

(declare-fun s!240168 () Bool)

(assert (= bs!601687 (and neg-inst!1775 s!240168)))

(declare-fun res!1755557 () Bool)

(declare-fun e!2653909 () Bool)

(assert (=> bs!601687 (=> res!1755557 e!2653909)))

(assert (=> bs!601687 (= res!1755557 (not (= (list!17208 x!742393) (list!17208 x!742393))))))

(assert (=> bs!601687 (=> true e!2653909)))

(declare-fun b!4274668 () Bool)

(assert (=> b!4274668 (= e!2653909 (= (toValue!14 thiss!2319 x!742393) (toValue!14 thiss!2319 x!742393)))))

(assert (= (and bs!601687 (not res!1755557)) b!4274668))

(assert (=> m!4870247 m!4870255))

(assert (=> m!4870247 m!4870255))

(assert (=> m!4870247 s!240168))

(declare-fun bs!601688 () Bool)

(declare-fun s!240170 () Bool)

(assert (= bs!601688 (and neg-inst!1775 s!240170)))

(declare-fun res!1755558 () Bool)

(declare-fun e!2653910 () Bool)

(assert (=> bs!601688 (=> res!1755558 e!2653910)))

(assert (=> bs!601688 (= res!1755558 (not (= (list!17208 x!742394) (list!17208 x!742393))))))

(assert (=> bs!601688 (=> true e!2653910)))

(declare-fun b!4274669 () Bool)

(assert (=> b!4274669 (= e!2653910 (= (toValue!14 thiss!2319 x!742394) (toValue!14 thiss!2319 x!742393)))))

(assert (= (and bs!601688 (not res!1755558)) b!4274669))

(assert (=> bs!601684 m!4870257))

(assert (=> bs!601684 m!4870255))

(assert (=> bs!601684 s!240170))

(declare-fun bs!601689 () Bool)

(declare-fun s!240172 () Bool)

(assert (= bs!601689 (and neg-inst!1775 s!240172)))

(declare-fun res!1755559 () Bool)

(declare-fun e!2653911 () Bool)

(assert (=> bs!601689 (=> res!1755559 e!2653911)))

(assert (=> bs!601689 (= res!1755559 (not (= (list!17208 x!742395) (list!17208 x!742393))))))

(assert (=> bs!601689 (=> true e!2653911)))

(declare-fun b!4274670 () Bool)

(assert (=> b!4274670 (= e!2653911 (= (toValue!14 thiss!2319 x!742395) (toValue!14 thiss!2319 x!742393)))))

(assert (= (and bs!601689 (not res!1755559)) b!4274670))

(assert (=> bs!601686 m!4870259))

(assert (=> bs!601686 m!4870255))

(assert (=> bs!601686 s!240172))

(assert (=> m!4870247 s!240168))

(declare-fun bs!601690 () Bool)

(assert (= bs!601690 (and m!4870255 m!4870265)))

(assert (=> bs!601690 s!240164))

(declare-fun bs!601691 () Bool)

(assert (= bs!601691 (and m!4870255 m!4870247)))

(assert (=> bs!601691 s!240168))

(declare-fun bs!601692 () Bool)

(assert (= bs!601692 (and m!4870255 m!4870259)))

(assert (=> bs!601692 s!240166))

(assert (=> m!4870255 s!240168))

(assert (=> bs!601690 s!240170))

(assert (=> bs!601691 s!240168))

(assert (=> bs!601692 s!240172))

(assert (=> m!4870255 s!240168))

(declare-fun bs!601693 () Bool)

(assert (= bs!601693 (and m!4870257 m!4870265)))

(assert (=> bs!601693 s!240160))

(declare-fun bs!601694 () Bool)

(assert (= bs!601694 (and m!4870257 m!4870247 m!4870255)))

(assert (=> bs!601694 s!240170))

(declare-fun bs!601695 () Bool)

(assert (= bs!601695 (and m!4870257 m!4870259)))

(assert (=> bs!601695 s!240158))

(assert (=> m!4870257 s!240160))

(assert (=> bs!601693 s!240160))

(assert (=> bs!601694 s!240164))

(assert (=> bs!601695 s!240162))

(assert (=> m!4870257 s!240160))

(declare-fun bs!601696 () Bool)

(declare-fun s!240174 () Bool)

(assert (= bs!601696 (and neg-inst!1775 s!240174)))

(declare-fun res!1755560 () Bool)

(declare-fun e!2653912 () Bool)

(assert (=> bs!601696 (=> res!1755560 e!2653912)))

(assert (=> bs!601696 (= res!1755560 (not (= (list!17208 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393))) (list!17208 x!742394))))))

(assert (=> bs!601696 (=> true e!2653912)))

(declare-fun b!4274671 () Bool)

(assert (=> b!4274671 (= e!2653912 (= (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393))) (toValue!14 thiss!2319 x!742394)))))

(assert (= (and bs!601696 (not res!1755560)) b!4274671))

(declare-fun bs!601697 () Bool)

(assert (= bs!601697 (and m!4870253 m!4870265 m!4870257)))

(assert (=> bs!601697 m!4870253))

(assert (=> bs!601697 m!4870257))

(assert (=> bs!601697 s!240174))

(declare-fun bs!601698 () Bool)

(declare-fun s!240176 () Bool)

(assert (= bs!601698 (and neg-inst!1775 s!240176)))

(declare-fun res!1755561 () Bool)

(declare-fun e!2653913 () Bool)

(assert (=> bs!601698 (=> res!1755561 e!2653913)))

(assert (=> bs!601698 (= res!1755561 (not (= (list!17208 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393))) (list!17208 x!742393))))))

(assert (=> bs!601698 (=> true e!2653913)))

(declare-fun b!4274672 () Bool)

(assert (=> b!4274672 (= e!2653913 (= (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393))) (toValue!14 thiss!2319 x!742393)))))

(assert (= (and bs!601698 (not res!1755561)) b!4274672))

(declare-fun bs!601699 () Bool)

(assert (= bs!601699 (and m!4870253 m!4870247 m!4870255)))

(assert (=> bs!601699 m!4870253))

(assert (=> bs!601699 m!4870255))

(assert (=> bs!601699 s!240176))

(declare-fun bs!601700 () Bool)

(declare-fun s!240178 () Bool)

(assert (= bs!601700 (and neg-inst!1775 s!240178)))

(declare-fun res!1755562 () Bool)

(declare-fun e!2653914 () Bool)

(assert (=> bs!601700 (=> res!1755562 e!2653914)))

(assert (=> bs!601700 (= res!1755562 (not (= (list!17208 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393))) (list!17208 x!742395))))))

(assert (=> bs!601700 (=> true e!2653914)))

(declare-fun b!4274673 () Bool)

(assert (=> b!4274673 (= e!2653914 (= (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393))) (toValue!14 thiss!2319 x!742395)))))

(assert (= (and bs!601700 (not res!1755562)) b!4274673))

(declare-fun bs!601701 () Bool)

(assert (= bs!601701 (and m!4870253 m!4870259)))

(assert (=> bs!601701 m!4870253))

(assert (=> bs!601701 m!4870259))

(assert (=> bs!601701 s!240178))

(declare-fun bs!601702 () Bool)

(declare-fun s!240180 () Bool)

(assert (= bs!601702 (and neg-inst!1775 s!240180)))

(declare-fun res!1755563 () Bool)

(declare-fun e!2653915 () Bool)

(assert (=> bs!601702 (=> res!1755563 e!2653915)))

(assert (=> bs!601702 (= res!1755563 (not (= (list!17208 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393))) (list!17208 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393))))))))

(assert (=> bs!601702 (=> true e!2653915)))

(declare-fun b!4274674 () Bool)

(assert (=> b!4274674 (= e!2653915 (= (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393))) (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393)))))))

(assert (= (and bs!601702 (not res!1755563)) b!4274674))

(assert (=> m!4870253 s!240180))

(declare-fun bs!601703 () Bool)

(declare-fun s!240182 () Bool)

(assert (= bs!601703 (and neg-inst!1775 s!240182)))

(declare-fun res!1755564 () Bool)

(declare-fun e!2653916 () Bool)

(assert (=> bs!601703 (=> res!1755564 e!2653916)))

(assert (=> bs!601703 (= res!1755564 (not (= (list!17208 x!742394) (list!17208 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393))))))))

(assert (=> bs!601703 (=> true e!2653916)))

(declare-fun b!4274675 () Bool)

(assert (=> b!4274675 (= e!2653916 (= (toValue!14 thiss!2319 x!742394) (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393)))))))

(assert (= (and bs!601703 (not res!1755564)) b!4274675))

(assert (=> bs!601697 m!4870257))

(assert (=> bs!601697 m!4870253))

(assert (=> bs!601697 s!240182))

(declare-fun bs!601704 () Bool)

(declare-fun s!240184 () Bool)

(assert (= bs!601704 (and neg-inst!1775 s!240184)))

(declare-fun res!1755565 () Bool)

(declare-fun e!2653917 () Bool)

(assert (=> bs!601704 (=> res!1755565 e!2653917)))

(assert (=> bs!601704 (= res!1755565 (not (= (list!17208 x!742393) (list!17208 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393))))))))

(assert (=> bs!601704 (=> true e!2653917)))

(declare-fun b!4274676 () Bool)

(assert (=> b!4274676 (= e!2653917 (= (toValue!14 thiss!2319 x!742393) (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393)))))))

(assert (= (and bs!601704 (not res!1755565)) b!4274676))

(assert (=> bs!601699 m!4870255))

(assert (=> bs!601699 m!4870253))

(assert (=> bs!601699 s!240184))

(declare-fun bs!601705 () Bool)

(declare-fun s!240186 () Bool)

(assert (= bs!601705 (and neg-inst!1775 s!240186)))

(declare-fun res!1755566 () Bool)

(declare-fun e!2653918 () Bool)

(assert (=> bs!601705 (=> res!1755566 e!2653918)))

(assert (=> bs!601705 (= res!1755566 (not (= (list!17208 x!742395) (list!17208 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393))))))))

(assert (=> bs!601705 (=> true e!2653918)))

(declare-fun b!4274677 () Bool)

(assert (=> b!4274677 (= e!2653918 (= (toValue!14 thiss!2319 x!742395) (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393)))))))

(assert (= (and bs!601705 (not res!1755566)) b!4274677))

(assert (=> bs!601701 m!4870259))

(assert (=> bs!601701 m!4870253))

(assert (=> bs!601701 s!240186))

(assert (=> m!4870253 s!240180))

(declare-fun bs!601706 () Bool)

(assert (= bs!601706 (and m!4870267 m!4870247 m!4870255)))

(assert (=> bs!601706 s!240172))

(declare-fun bs!601707 () Bool)

(assert (= bs!601707 (and m!4870267 m!4870265 m!4870257)))

(assert (=> bs!601707 s!240162))

(declare-fun bs!601708 () Bool)

(assert (= bs!601708 (and m!4870267 m!4870253)))

(assert (=> bs!601708 s!240186))

(assert (=> m!4870267 s!240156))

(declare-fun bs!601709 () Bool)

(assert (= bs!601709 (and m!4870267 m!4870259)))

(assert (=> bs!601709 s!240156))

(assert (=> bs!601708 s!240178))

(assert (=> bs!601707 s!240158))

(assert (=> bs!601706 s!240166))

(assert (=> m!4870267 s!240156))

(assert (=> bs!601709 s!240156))

(declare-fun bs!601710 () Bool)

(assert (= bs!601710 (and neg-inst!1775 b!4274649)))

(assert (=> bs!601710 (= true inst!1775)))

(declare-fun res!1755549 () Bool)

(declare-fun e!2653898 () Bool)

(assert (=> start!410348 (=> res!1755549 e!2653898)))

(declare-fun lambda!131148 () Int)

(declare-fun Forall!1651 (Int) Bool)

(assert (=> start!410348 (= res!1755549 (not (Forall!1651 lambda!131148)))))

(assert (=> start!410348 (= (Forall!1651 lambda!131148) inst!1774)))

(assert (=> start!410348 (not e!2653898)))

(assert (=> start!410348 true))

(declare-fun lambda!131151 () Int)

(declare-fun Forall2!1234 (Int) Bool)

(assert (=> b!4274649 (= e!2653898 (Forall2!1234 lambda!131151))))

(assert (=> b!4274649 (= (Forall2!1234 lambda!131151) inst!1775)))

(declare-fun lambda!131149 () Int)

(declare-fun lambda!131150 () Int)

(declare-fun semiInverseModEq!3519 (Int Int) Bool)

(assert (=> b!4274649 (= (semiInverseModEq!3519 lambda!131149 lambda!131150) (Forall!1651 lambda!131148))))

(assert (= neg-inst!1774 inst!1774))

(assert (= (and start!410348 (not res!1755549)) b!4274649))

(assert (= neg-inst!1775 inst!1775))

(declare-fun m!4870273 () Bool)

(assert (=> start!410348 m!4870273))

(assert (=> start!410348 m!4870273))

(declare-fun m!4870275 () Bool)

(assert (=> b!4274649 m!4870275))

(assert (=> b!4274649 m!4870275))

(declare-fun m!4870277 () Bool)

(assert (=> b!4274649 m!4870277))

(assert (=> b!4274649 m!4870273))

(push 1)

(assert (not b!4274649))

(assert (not b!4274666))

(assert (not b!4274674))

(assert (not bs!601676))

(assert (not b!4274669))

(assert (not b!4274668))

(assert (not bs!601681))

(assert (not bs!601705))

(assert (not bs!601687))

(assert (not bs!601679))

(assert (not bs!601678))

(assert (not bs!601688))

(assert (not bs!601689))

(assert (not b!4274658))

(assert (not b!4274671))

(assert (not bs!601704))

(assert (not b!4274677))

(assert (not bs!601696))

(assert (not b!4274660))

(assert (not b!4274664))

(assert (not b!4274663))

(assert (not b!4274673))

(assert (not b!4274676))

(assert (not b!4274675))

(assert (not b!4274665))

(assert (not b!4274670))

(assert (not bs!601703))

(assert (not bs!601682))

(assert (not b!4274672))

(assert (not bs!601683))

(assert (not start!410348))

(assert (not b!4274661))

(assert (not b!4274662))

(assert (not b!4274659))

(assert (not b!4274667))

(assert (not bs!601700))

(assert (not bs!601685))

(assert (not bs!601698))

(assert (not bs!601702))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1261778 () Bool)

(declare-fun list!17210 (Conc!14308) List!47450)

(assert (=> d!1261778 (= (list!17208 x!742394) (list!17210 (c!727737 x!742394)))))

(declare-fun bs!601748 () Bool)

(assert (= bs!601748 d!1261778))

(declare-fun m!4870313 () Bool)

(assert (=> bs!601748 m!4870313))

(assert (=> bs!601703 d!1261778))

(declare-fun d!1261780 () Bool)

(assert (=> d!1261780 (= (list!17208 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393))) (list!17210 (c!727737 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393)))))))

(declare-fun bs!601749 () Bool)

(assert (= bs!601749 d!1261780))

(declare-fun m!4870315 () Bool)

(assert (=> bs!601749 m!4870315))

(assert (=> bs!601703 d!1261780))

(declare-fun d!1261782 () Bool)

(declare-fun lt!1513540 () List!47450)

(declare-fun efficientList!546 (BalanceConc!28126) List!47450)

(assert (=> d!1261782 (= lt!1513540 (efficientList!546 x!742394))))

(assert (=> d!1261782 (= (toValue!14 thiss!2319 x!742394) (ite (= lt!1513540 (Cons!47326 #x0061 (Cons!47326 #x0062 (Cons!47326 #x0073 (Cons!47326 #x0074 (Cons!47326 #x0072 (Cons!47326 #x0061 (Cons!47326 #x0063 (Cons!47326 #x0074 Nil!47326))))))))) Abstract!8281 (ite (= lt!1513540 (Cons!47326 #x0063 (Cons!47326 #x0061 (Cons!47326 #x0073 (Cons!47326 #x0065 Nil!47326))))) Case!8281 (ite (= lt!1513540 (Cons!47326 #x0063 (Cons!47326 #x006C (Cons!47326 #x0061 (Cons!47326 #x0073 (Cons!47326 #x0073 Nil!47326)))))) Class!8281 (ite (= lt!1513540 (Cons!47326 #x0064 (Cons!47326 #x0065 (Cons!47326 #x0066 Nil!47326)))) Def!8281 (ite (= lt!1513540 (Cons!47326 #x0065 (Cons!47326 #x006C (Cons!47326 #x0073 (Cons!47326 #x0065 Nil!47326))))) Else!8281 (ite (= lt!1513540 (Cons!47326 #x0065 (Cons!47326 #x0078 (Cons!47326 #x0074 (Cons!47326 #x0065 (Cons!47326 #x006E (Cons!47326 #x0064 (Cons!47326 #x0073 Nil!47326)))))))) Extends!8281 (ite (= lt!1513540 (Cons!47326 #x0069 (Cons!47326 #x0066 Nil!47326))) If!8281 (ite (= lt!1513540 (Cons!47326 #x006D (Cons!47326 #x0061 (Cons!47326 #x0074 (Cons!47326 #x0063 (Cons!47326 #x0068 Nil!47326)))))) Match!8281 (ite (= lt!1513540 (Cons!47326 #x006F (Cons!47326 #x0062 (Cons!47326 #x006A (Cons!47326 #x0065 (Cons!47326 #x0063 (Cons!47326 #x0074 Nil!47326))))))) Object!8404 (ite (= lt!1513540 (Cons!47326 #x0076 (Cons!47326 #x0061 (Cons!47326 #x006C Nil!47326)))) Val!8281 (ite (= lt!1513540 (Cons!47326 #x0065 (Cons!47326 #x0072 (Cons!47326 #x0072 (Cons!47326 #x006F (Cons!47326 #x0072 Nil!47326)))))) Error!8281 (ite (= lt!1513540 (Cons!47326 #x005F Nil!47326)) Underscore!8281 (ite (= lt!1513540 (Cons!47326 #x0065 (Cons!47326 #x006E (Cons!47326 #x0064 Nil!47326)))) End!8281 (Broken!41405 lt!1513540)))))))))))))))))

(declare-fun bs!601750 () Bool)

(assert (= bs!601750 d!1261782))

(declare-fun m!4870317 () Bool)

(assert (=> bs!601750 m!4870317))

(assert (=> b!4274669 d!1261782))

(declare-fun d!1261784 () Bool)

(declare-fun lt!1513541 () List!47450)

(assert (=> d!1261784 (= lt!1513541 (efficientList!546 x!742393))))

(assert (=> d!1261784 (= (toValue!14 thiss!2319 x!742393) (ite (= lt!1513541 (Cons!47326 #x0061 (Cons!47326 #x0062 (Cons!47326 #x0073 (Cons!47326 #x0074 (Cons!47326 #x0072 (Cons!47326 #x0061 (Cons!47326 #x0063 (Cons!47326 #x0074 Nil!47326))))))))) Abstract!8281 (ite (= lt!1513541 (Cons!47326 #x0063 (Cons!47326 #x0061 (Cons!47326 #x0073 (Cons!47326 #x0065 Nil!47326))))) Case!8281 (ite (= lt!1513541 (Cons!47326 #x0063 (Cons!47326 #x006C (Cons!47326 #x0061 (Cons!47326 #x0073 (Cons!47326 #x0073 Nil!47326)))))) Class!8281 (ite (= lt!1513541 (Cons!47326 #x0064 (Cons!47326 #x0065 (Cons!47326 #x0066 Nil!47326)))) Def!8281 (ite (= lt!1513541 (Cons!47326 #x0065 (Cons!47326 #x006C (Cons!47326 #x0073 (Cons!47326 #x0065 Nil!47326))))) Else!8281 (ite (= lt!1513541 (Cons!47326 #x0065 (Cons!47326 #x0078 (Cons!47326 #x0074 (Cons!47326 #x0065 (Cons!47326 #x006E (Cons!47326 #x0064 (Cons!47326 #x0073 Nil!47326)))))))) Extends!8281 (ite (= lt!1513541 (Cons!47326 #x0069 (Cons!47326 #x0066 Nil!47326))) If!8281 (ite (= lt!1513541 (Cons!47326 #x006D (Cons!47326 #x0061 (Cons!47326 #x0074 (Cons!47326 #x0063 (Cons!47326 #x0068 Nil!47326)))))) Match!8281 (ite (= lt!1513541 (Cons!47326 #x006F (Cons!47326 #x0062 (Cons!47326 #x006A (Cons!47326 #x0065 (Cons!47326 #x0063 (Cons!47326 #x0074 Nil!47326))))))) Object!8404 (ite (= lt!1513541 (Cons!47326 #x0076 (Cons!47326 #x0061 (Cons!47326 #x006C Nil!47326)))) Val!8281 (ite (= lt!1513541 (Cons!47326 #x0065 (Cons!47326 #x0072 (Cons!47326 #x0072 (Cons!47326 #x006F (Cons!47326 #x0072 Nil!47326)))))) Error!8281 (ite (= lt!1513541 (Cons!47326 #x005F Nil!47326)) Underscore!8281 (ite (= lt!1513541 (Cons!47326 #x0065 (Cons!47326 #x006E (Cons!47326 #x0064 Nil!47326)))) End!8281 (Broken!41405 lt!1513541)))))))))))))))))

(declare-fun bs!601751 () Bool)

(assert (= bs!601751 d!1261784))

(declare-fun m!4870319 () Bool)

(assert (=> bs!601751 m!4870319))

(assert (=> b!4274669 d!1261784))

(assert (=> bs!601679 d!1261778))

(declare-fun d!1261786 () Bool)

(assert (=> d!1261786 (= (list!17208 x!742395) (list!17210 (c!727737 x!742395)))))

(declare-fun bs!601752 () Bool)

(assert (= bs!601752 d!1261786))

(declare-fun m!4870321 () Bool)

(assert (=> bs!601752 m!4870321))

(assert (=> bs!601679 d!1261786))

(assert (=> bs!601698 d!1261780))

(declare-fun d!1261788 () Bool)

(assert (=> d!1261788 (= (list!17208 x!742393) (list!17210 (c!727737 x!742393)))))

(declare-fun bs!601753 () Bool)

(assert (= bs!601753 d!1261788))

(declare-fun m!4870323 () Bool)

(assert (=> bs!601753 m!4870323))

(assert (=> bs!601698 d!1261788))

(assert (=> b!4274666 d!1261784))

(assert (=> b!4274666 d!1261782))

(assert (=> b!4274675 d!1261782))

(declare-fun d!1261790 () Bool)

(declare-fun lt!1513542 () List!47450)

(assert (=> d!1261790 (= lt!1513542 (efficientList!546 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393))))))

(assert (=> d!1261790 (= (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393))) (ite (= lt!1513542 (Cons!47326 #x0061 (Cons!47326 #x0062 (Cons!47326 #x0073 (Cons!47326 #x0074 (Cons!47326 #x0072 (Cons!47326 #x0061 (Cons!47326 #x0063 (Cons!47326 #x0074 Nil!47326))))))))) Abstract!8281 (ite (= lt!1513542 (Cons!47326 #x0063 (Cons!47326 #x0061 (Cons!47326 #x0073 (Cons!47326 #x0065 Nil!47326))))) Case!8281 (ite (= lt!1513542 (Cons!47326 #x0063 (Cons!47326 #x006C (Cons!47326 #x0061 (Cons!47326 #x0073 (Cons!47326 #x0073 Nil!47326)))))) Class!8281 (ite (= lt!1513542 (Cons!47326 #x0064 (Cons!47326 #x0065 (Cons!47326 #x0066 Nil!47326)))) Def!8281 (ite (= lt!1513542 (Cons!47326 #x0065 (Cons!47326 #x006C (Cons!47326 #x0073 (Cons!47326 #x0065 Nil!47326))))) Else!8281 (ite (= lt!1513542 (Cons!47326 #x0065 (Cons!47326 #x0078 (Cons!47326 #x0074 (Cons!47326 #x0065 (Cons!47326 #x006E (Cons!47326 #x0064 (Cons!47326 #x0073 Nil!47326)))))))) Extends!8281 (ite (= lt!1513542 (Cons!47326 #x0069 (Cons!47326 #x0066 Nil!47326))) If!8281 (ite (= lt!1513542 (Cons!47326 #x006D (Cons!47326 #x0061 (Cons!47326 #x0074 (Cons!47326 #x0063 (Cons!47326 #x0068 Nil!47326)))))) Match!8281 (ite (= lt!1513542 (Cons!47326 #x006F (Cons!47326 #x0062 (Cons!47326 #x006A (Cons!47326 #x0065 (Cons!47326 #x0063 (Cons!47326 #x0074 Nil!47326))))))) Object!8404 (ite (= lt!1513542 (Cons!47326 #x0076 (Cons!47326 #x0061 (Cons!47326 #x006C Nil!47326)))) Val!8281 (ite (= lt!1513542 (Cons!47326 #x0065 (Cons!47326 #x0072 (Cons!47326 #x0072 (Cons!47326 #x006F (Cons!47326 #x0072 Nil!47326)))))) Error!8281 (ite (= lt!1513542 (Cons!47326 #x005F Nil!47326)) Underscore!8281 (ite (= lt!1513542 (Cons!47326 #x0065 (Cons!47326 #x006E (Cons!47326 #x0064 Nil!47326)))) End!8281 (Broken!41405 lt!1513542)))))))))))))))))

(declare-fun bs!601754 () Bool)

(assert (= bs!601754 d!1261790))

(assert (=> bs!601754 m!4870251))

(declare-fun m!4870325 () Bool)

(assert (=> bs!601754 m!4870325))

(assert (=> b!4274675 d!1261790))

(assert (=> bs!601689 d!1261786))

(assert (=> bs!601689 d!1261788))

(assert (=> b!4274663 d!1261782))

(declare-fun d!1261792 () Bool)

(declare-fun lt!1513543 () List!47450)

(assert (=> d!1261792 (= lt!1513543 (efficientList!546 x!742395))))

(assert (=> d!1261792 (= (toValue!14 thiss!2319 x!742395) (ite (= lt!1513543 (Cons!47326 #x0061 (Cons!47326 #x0062 (Cons!47326 #x0073 (Cons!47326 #x0074 (Cons!47326 #x0072 (Cons!47326 #x0061 (Cons!47326 #x0063 (Cons!47326 #x0074 Nil!47326))))))))) Abstract!8281 (ite (= lt!1513543 (Cons!47326 #x0063 (Cons!47326 #x0061 (Cons!47326 #x0073 (Cons!47326 #x0065 Nil!47326))))) Case!8281 (ite (= lt!1513543 (Cons!47326 #x0063 (Cons!47326 #x006C (Cons!47326 #x0061 (Cons!47326 #x0073 (Cons!47326 #x0073 Nil!47326)))))) Class!8281 (ite (= lt!1513543 (Cons!47326 #x0064 (Cons!47326 #x0065 (Cons!47326 #x0066 Nil!47326)))) Def!8281 (ite (= lt!1513543 (Cons!47326 #x0065 (Cons!47326 #x006C (Cons!47326 #x0073 (Cons!47326 #x0065 Nil!47326))))) Else!8281 (ite (= lt!1513543 (Cons!47326 #x0065 (Cons!47326 #x0078 (Cons!47326 #x0074 (Cons!47326 #x0065 (Cons!47326 #x006E (Cons!47326 #x0064 (Cons!47326 #x0073 Nil!47326)))))))) Extends!8281 (ite (= lt!1513543 (Cons!47326 #x0069 (Cons!47326 #x0066 Nil!47326))) If!8281 (ite (= lt!1513543 (Cons!47326 #x006D (Cons!47326 #x0061 (Cons!47326 #x0074 (Cons!47326 #x0063 (Cons!47326 #x0068 Nil!47326)))))) Match!8281 (ite (= lt!1513543 (Cons!47326 #x006F (Cons!47326 #x0062 (Cons!47326 #x006A (Cons!47326 #x0065 (Cons!47326 #x0063 (Cons!47326 #x0074 Nil!47326))))))) Object!8404 (ite (= lt!1513543 (Cons!47326 #x0076 (Cons!47326 #x0061 (Cons!47326 #x006C Nil!47326)))) Val!8281 (ite (= lt!1513543 (Cons!47326 #x0065 (Cons!47326 #x0072 (Cons!47326 #x0072 (Cons!47326 #x006F (Cons!47326 #x0072 Nil!47326)))))) Error!8281 (ite (= lt!1513543 (Cons!47326 #x005F Nil!47326)) Underscore!8281 (ite (= lt!1513543 (Cons!47326 #x0065 (Cons!47326 #x006E (Cons!47326 #x0064 Nil!47326)))) End!8281 (Broken!41405 lt!1513543)))))))))))))))))

(declare-fun bs!601755 () Bool)

(assert (= bs!601755 d!1261792))

(declare-fun m!4870327 () Bool)

(assert (=> bs!601755 m!4870327))

(assert (=> b!4274663 d!1261792))

(assert (=> b!4274672 d!1261790))

(assert (=> b!4274672 d!1261784))

(assert (=> bs!601685 d!1261788))

(assert (=> bs!601685 d!1261786))

(assert (=> bs!601704 d!1261788))

(assert (=> bs!601704 d!1261780))

(assert (=> b!4274670 d!1261792))

(assert (=> b!4274670 d!1261784))

(assert (=> bs!601681 d!1261778))

(assert (=> bs!601700 d!1261780))

(assert (=> bs!601700 d!1261786))

(assert (=> b!4274667 d!1261784))

(assert (=> b!4274667 d!1261792))

(assert (=> b!4274676 d!1261784))

(assert (=> b!4274676 d!1261790))

(assert (=> b!4274664 d!1261782))

(assert (=> b!4274673 d!1261790))

(assert (=> b!4274673 d!1261792))

(assert (=> bs!601705 d!1261786))

(assert (=> bs!601705 d!1261780))

(assert (=> bs!601687 d!1261788))

(assert (=> bs!601682 d!1261786))

(assert (=> bs!601682 d!1261778))

(assert (=> b!4274677 d!1261792))

(assert (=> b!4274677 d!1261790))

(assert (=> bs!601696 d!1261780))

(assert (=> bs!601696 d!1261778))

(assert (=> bs!601702 d!1261780))

(assert (=> b!4274668 d!1261784))

(assert (=> bs!601678 d!1261786))

(assert (=> b!4274665 d!1261792))

(assert (=> b!4274665 d!1261782))

(assert (=> b!4274674 d!1261790))

(assert (=> bs!601688 d!1261778))

(assert (=> bs!601688 d!1261788))

(assert (=> b!4274671 d!1261790))

(assert (=> b!4274671 d!1261782))

(assert (=> b!4274662 d!1261792))

(assert (=> bs!601683 d!1261788))

(assert (=> bs!601683 d!1261778))

(declare-fun bs!601756 () Bool)

(assert (= bs!601756 (and m!4870259 b!4274662)))

(assert (=> bs!601756 m!4870267))

(assert (=> bs!601756 m!4870267))

(declare-fun bs!601757 () Bool)

(assert (= bs!601757 (and m!4870265 m!4870259 b!4274663)))

(assert (=> bs!601757 m!4870265))

(assert (=> bs!601757 m!4870267))

(declare-fun bs!601758 () Bool)

(assert (= bs!601758 (and m!4870265 b!4274664)))

(assert (=> bs!601758 m!4870265))

(assert (=> bs!601758 m!4870265))

(declare-fun bs!601759 () Bool)

(assert (= bs!601759 (and m!4870265 m!4870259 b!4274665)))

(assert (=> bs!601759 m!4870267))

(assert (=> bs!601759 m!4870265))

(declare-fun bs!601760 () Bool)

(assert (= bs!601760 (and m!4870247 m!4870265 b!4274666)))

(assert (=> bs!601760 m!4870247))

(assert (=> bs!601760 m!4870265))

(declare-fun bs!601761 () Bool)

(assert (= bs!601761 (and m!4870247 m!4870259 b!4274667)))

(assert (=> bs!601761 m!4870247))

(assert (=> bs!601761 m!4870267))

(declare-fun bs!601762 () Bool)

(assert (= bs!601762 (and m!4870247 b!4274668)))

(assert (=> bs!601762 m!4870247))

(assert (=> bs!601762 m!4870247))

(declare-fun bs!601763 () Bool)

(assert (= bs!601763 (and m!4870247 m!4870265 b!4274669)))

(assert (=> bs!601763 m!4870265))

(assert (=> bs!601763 m!4870247))

(declare-fun bs!601764 () Bool)

(assert (= bs!601764 (and m!4870247 m!4870259 b!4274670)))

(assert (=> bs!601764 m!4870267))

(assert (=> bs!601764 m!4870247))

(declare-fun bs!601765 () Bool)

(assert (= bs!601765 (and m!4870253 m!4870265 m!4870257 b!4274671)))

(declare-fun m!4870329 () Bool)

(assert (=> bs!601765 m!4870329))

(assert (=> bs!601765 m!4870265))

(declare-fun bs!601766 () Bool)

(assert (= bs!601766 (and m!4870253 m!4870247 m!4870255 b!4274672)))

(assert (=> bs!601766 m!4870329))

(assert (=> bs!601766 m!4870247))

(declare-fun bs!601767 () Bool)

(assert (= bs!601767 (and m!4870253 m!4870259 b!4274673)))

(assert (=> bs!601767 m!4870329))

(assert (=> bs!601767 m!4870267))

(declare-fun bs!601768 () Bool)

(assert (= bs!601768 (and m!4870253 b!4274674)))

(assert (=> bs!601768 m!4870329))

(assert (=> bs!601768 m!4870329))

(declare-fun bs!601769 () Bool)

(assert (= bs!601769 (and m!4870253 m!4870265 m!4870257 b!4274675)))

(assert (=> bs!601769 m!4870265))

(assert (=> bs!601769 m!4870329))

(declare-fun bs!601770 () Bool)

(assert (= bs!601770 (and m!4870253 m!4870247 m!4870255 b!4274676)))

(assert (=> bs!601770 m!4870247))

(assert (=> bs!601770 m!4870329))

(declare-fun bs!601771 () Bool)

(assert (= bs!601771 (and m!4870253 m!4870259 b!4274677)))

(assert (=> bs!601771 m!4870267))

(assert (=> bs!601771 m!4870329))

(push 1)

(assert (not d!1261780))

(assert (not b!4274658))

(assert (not b!4274649))

(assert (not d!1261792))

(assert (not bs!601676))

(assert (not d!1261784))

(assert (not b!4274660))

(assert (not d!1261778))

(assert (not d!1261788))

(assert (not b!4274659))

(assert (not d!1261786))

(assert (not d!1261782))

(assert (not d!1261790))

(assert (not start!410348))

(assert (not b!4274661))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1261810 () Bool)

(declare-fun lt!1513552 () List!47450)

(assert (=> d!1261810 (= lt!1513552 (list!17208 x!742393))))

(declare-fun efficientList!548 (Conc!14308 List!47450) List!47450)

(declare-fun efficientList$default$2!190 (Conc!14308) List!47450)

(assert (=> d!1261810 (= lt!1513552 (efficientList!548 (c!727737 x!742393) (efficientList$default$2!190 (c!727737 x!742393))))))

(assert (=> d!1261810 (= (efficientList!546 x!742393) lt!1513552)))

(declare-fun bs!601796 () Bool)

(assert (= bs!601796 d!1261810))

(assert (=> bs!601796 m!4870255))

(declare-fun m!4870349 () Bool)

(assert (=> bs!601796 m!4870349))

(assert (=> bs!601796 m!4870349))

(declare-fun m!4870351 () Bool)

(assert (=> bs!601796 m!4870351))

(assert (=> d!1261784 d!1261810))

(declare-fun d!1261812 () Bool)

(declare-fun lt!1513553 () List!47450)

(assert (=> d!1261812 (= lt!1513553 (list!17208 x!742395))))

(assert (=> d!1261812 (= lt!1513553 (efficientList!548 (c!727737 x!742395) (efficientList$default$2!190 (c!727737 x!742395))))))

(assert (=> d!1261812 (= (efficientList!546 x!742395) lt!1513553)))

(declare-fun bs!601797 () Bool)

(assert (= bs!601797 d!1261812))

(assert (=> bs!601797 m!4870259))

(declare-fun m!4870353 () Bool)

(assert (=> bs!601797 m!4870353))

(assert (=> bs!601797 m!4870353))

(declare-fun m!4870355 () Bool)

(assert (=> bs!601797 m!4870355))

(assert (=> d!1261792 d!1261812))

(declare-fun d!1261814 () Bool)

(declare-fun c!727747 () Bool)

(assert (=> d!1261814 (= c!727747 (is-Empty!14308 (c!727737 x!742395)))))

(declare-fun e!2653960 () List!47450)

(assert (=> d!1261814 (= (list!17210 (c!727737 x!742395)) e!2653960)))

(declare-fun b!4274733 () Bool)

(declare-fun e!2653961 () List!47450)

(declare-fun list!17212 (IArray!28621) List!47450)

(assert (=> b!4274733 (= e!2653961 (list!17212 (xs!17614 (c!727737 x!742395))))))

(declare-fun b!4274732 () Bool)

(assert (=> b!4274732 (= e!2653960 e!2653961)))

(declare-fun c!727748 () Bool)

(assert (=> b!4274732 (= c!727748 (is-Leaf!22118 (c!727737 x!742395)))))

(declare-fun b!4274734 () Bool)

(declare-fun ++!12083 (List!47450 List!47450) List!47450)

(assert (=> b!4274734 (= e!2653961 (++!12083 (list!17210 (left!35215 (c!727737 x!742395))) (list!17210 (right!35545 (c!727737 x!742395)))))))

(declare-fun b!4274731 () Bool)

(assert (=> b!4274731 (= e!2653960 Nil!47326)))

(assert (= (and d!1261814 c!727747) b!4274731))

(assert (= (and d!1261814 (not c!727747)) b!4274732))

(assert (= (and b!4274732 c!727748) b!4274733))

(assert (= (and b!4274732 (not c!727748)) b!4274734))

(declare-fun m!4870357 () Bool)

(assert (=> b!4274733 m!4870357))

(declare-fun m!4870359 () Bool)

(assert (=> b!4274734 m!4870359))

(declare-fun m!4870361 () Bool)

(assert (=> b!4274734 m!4870361))

(assert (=> b!4274734 m!4870359))

(assert (=> b!4274734 m!4870361))

(declare-fun m!4870363 () Bool)

(assert (=> b!4274734 m!4870363))

(assert (=> d!1261786 d!1261814))

(declare-fun d!1261816 () Bool)

(declare-fun c!727749 () Bool)

(assert (=> d!1261816 (= c!727749 (is-Empty!14308 (c!727737 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393)))))))

(declare-fun e!2653962 () List!47450)

(assert (=> d!1261816 (= (list!17210 (c!727737 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393)))) e!2653962)))

(declare-fun b!4274737 () Bool)

(declare-fun e!2653963 () List!47450)

(assert (=> b!4274737 (= e!2653963 (list!17212 (xs!17614 (c!727737 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393))))))))

(declare-fun b!4274736 () Bool)

(assert (=> b!4274736 (= e!2653962 e!2653963)))

(declare-fun c!727750 () Bool)

(assert (=> b!4274736 (= c!727750 (is-Leaf!22118 (c!727737 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393)))))))

(declare-fun b!4274738 () Bool)

(assert (=> b!4274738 (= e!2653963 (++!12083 (list!17210 (left!35215 (c!727737 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393))))) (list!17210 (right!35545 (c!727737 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393)))))))))

(declare-fun b!4274735 () Bool)

(assert (=> b!4274735 (= e!2653962 Nil!47326)))

(assert (= (and d!1261816 c!727749) b!4274735))

(assert (= (and d!1261816 (not c!727749)) b!4274736))

(assert (= (and b!4274736 c!727750) b!4274737))

(assert (= (and b!4274736 (not c!727750)) b!4274738))

(declare-fun m!4870365 () Bool)

(assert (=> b!4274737 m!4870365))

(declare-fun m!4870367 () Bool)

(assert (=> b!4274738 m!4870367))

(declare-fun m!4870369 () Bool)

(assert (=> b!4274738 m!4870369))

(assert (=> b!4274738 m!4870367))

(assert (=> b!4274738 m!4870369))

(declare-fun m!4870371 () Bool)

(assert (=> b!4274738 m!4870371))

(assert (=> d!1261780 d!1261816))

(declare-fun d!1261818 () Bool)

(declare-fun c!727751 () Bool)

(assert (=> d!1261818 (= c!727751 (is-Empty!14308 (c!727737 x!742393)))))

(declare-fun e!2653964 () List!47450)

(assert (=> d!1261818 (= (list!17210 (c!727737 x!742393)) e!2653964)))

(declare-fun b!4274741 () Bool)

(declare-fun e!2653965 () List!47450)

(assert (=> b!4274741 (= e!2653965 (list!17212 (xs!17614 (c!727737 x!742393))))))

(declare-fun b!4274740 () Bool)

(assert (=> b!4274740 (= e!2653964 e!2653965)))

(declare-fun c!727752 () Bool)

(assert (=> b!4274740 (= c!727752 (is-Leaf!22118 (c!727737 x!742393)))))

(declare-fun b!4274742 () Bool)

(assert (=> b!4274742 (= e!2653965 (++!12083 (list!17210 (left!35215 (c!727737 x!742393))) (list!17210 (right!35545 (c!727737 x!742393)))))))

(declare-fun b!4274739 () Bool)

(assert (=> b!4274739 (= e!2653964 Nil!47326)))

(assert (= (and d!1261818 c!727751) b!4274739))

(assert (= (and d!1261818 (not c!727751)) b!4274740))

(assert (= (and b!4274740 c!727752) b!4274741))

(assert (= (and b!4274740 (not c!727752)) b!4274742))

(declare-fun m!4870373 () Bool)

(assert (=> b!4274741 m!4870373))

(declare-fun m!4870375 () Bool)

(assert (=> b!4274742 m!4870375))

(declare-fun m!4870377 () Bool)

(assert (=> b!4274742 m!4870377))

(assert (=> b!4274742 m!4870375))

(assert (=> b!4274742 m!4870377))

(declare-fun m!4870379 () Bool)

(assert (=> b!4274742 m!4870379))

(assert (=> d!1261788 d!1261818))

(declare-fun d!1261820 () Bool)

(declare-fun lt!1513554 () List!47450)

(assert (=> d!1261820 (= lt!1513554 (list!17208 x!742394))))

(assert (=> d!1261820 (= lt!1513554 (efficientList!548 (c!727737 x!742394) (efficientList$default$2!190 (c!727737 x!742394))))))

(assert (=> d!1261820 (= (efficientList!546 x!742394) lt!1513554)))

(declare-fun bs!601798 () Bool)

(assert (= bs!601798 d!1261820))

(assert (=> bs!601798 m!4870257))

(declare-fun m!4870381 () Bool)

(assert (=> bs!601798 m!4870381))

(assert (=> bs!601798 m!4870381))

(declare-fun m!4870383 () Bool)

(assert (=> bs!601798 m!4870383))

(assert (=> d!1261782 d!1261820))

(declare-fun d!1261822 () Bool)

(declare-fun c!727753 () Bool)

(assert (=> d!1261822 (= c!727753 (is-Empty!14308 (c!727737 x!742394)))))

(declare-fun e!2653966 () List!47450)

(assert (=> d!1261822 (= (list!17210 (c!727737 x!742394)) e!2653966)))

(declare-fun b!4274745 () Bool)

(declare-fun e!2653967 () List!47450)

(assert (=> b!4274745 (= e!2653967 (list!17212 (xs!17614 (c!727737 x!742394))))))

(declare-fun b!4274744 () Bool)

(assert (=> b!4274744 (= e!2653966 e!2653967)))

(declare-fun c!727754 () Bool)

(assert (=> b!4274744 (= c!727754 (is-Leaf!22118 (c!727737 x!742394)))))

(declare-fun b!4274746 () Bool)

(assert (=> b!4274746 (= e!2653967 (++!12083 (list!17210 (left!35215 (c!727737 x!742394))) (list!17210 (right!35545 (c!727737 x!742394)))))))

(declare-fun b!4274743 () Bool)

(assert (=> b!4274743 (= e!2653966 Nil!47326)))

(assert (= (and d!1261822 c!727753) b!4274743))

(assert (= (and d!1261822 (not c!727753)) b!4274744))

(assert (= (and b!4274744 c!727754) b!4274745))

(assert (= (and b!4274744 (not c!727754)) b!4274746))

(declare-fun m!4870385 () Bool)

(assert (=> b!4274745 m!4870385))

(declare-fun m!4870387 () Bool)

(assert (=> b!4274746 m!4870387))

(declare-fun m!4870389 () Bool)

(assert (=> b!4274746 m!4870389))

(assert (=> b!4274746 m!4870387))

(assert (=> b!4274746 m!4870389))

(declare-fun m!4870391 () Bool)

(assert (=> b!4274746 m!4870391))

(assert (=> d!1261778 d!1261822))

(declare-fun d!1261824 () Bool)

(declare-fun lt!1513555 () List!47450)

(assert (=> d!1261824 (= lt!1513555 (list!17208 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393))))))

(assert (=> d!1261824 (= lt!1513555 (efficientList!548 (c!727737 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393))) (efficientList$default$2!190 (c!727737 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393))))))))

(assert (=> d!1261824 (= (efficientList!546 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393))) lt!1513555)))

(declare-fun bs!601799 () Bool)

(assert (= bs!601799 d!1261824))

(assert (=> bs!601799 m!4870251))

(assert (=> bs!601799 m!4870253))

(declare-fun m!4870393 () Bool)

(assert (=> bs!601799 m!4870393))

(assert (=> bs!601799 m!4870393))

(declare-fun m!4870395 () Bool)

(assert (=> bs!601799 m!4870395))

(assert (=> d!1261790 d!1261824))

(push 1)

(assert (not b!4274746))

(assert (not b!4274738))

(assert (not bs!601676))

(assert (not b!4274734))

(assert (not b!4274745))

(assert (not b!4274659))

(assert (not d!1261824))

(assert (not b!4274733))

(assert (not d!1261812))

(assert (not b!4274658))

(assert (not d!1261810))

(assert (not b!4274649))

(assert (not b!4274742))

(assert (not b!4274741))

(assert (not b!4274660))

(assert (not d!1261820))

(assert (not b!4274737))

(assert (not start!410348))

(assert (not b!4274661))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!1261820 d!1261778))

(declare-fun b!4274783 () Bool)

(declare-datatypes ((Unit!66265 0))(
  ( (Unit!66266) )
))
(declare-fun lt!1513576 () Unit!66265)

(declare-fun lt!1513575 () Unit!66265)

(assert (=> b!4274783 (= lt!1513576 lt!1513575)))

(declare-fun lt!1513572 () List!47450)

(declare-fun lt!1513574 () List!47450)

(declare-fun call!294214 () List!47450)

(assert (=> b!4274783 (= (++!12083 (++!12083 lt!1513572 lt!1513574) (efficientList$default$2!190 (c!727737 x!742394))) (++!12083 lt!1513572 call!294214))))

(declare-fun lemmaConcatAssociativity!2720 (List!47450 List!47450 List!47450) Unit!66265)

(assert (=> b!4274783 (= lt!1513575 (lemmaConcatAssociativity!2720 lt!1513572 lt!1513574 (efficientList$default$2!190 (c!727737 x!742394))))))

(assert (=> b!4274783 (= lt!1513574 (list!17210 (right!35545 (c!727737 x!742394))))))

(assert (=> b!4274783 (= lt!1513572 (list!17210 (left!35215 (c!727737 x!742394))))))

(declare-fun e!2653987 () List!47450)

(assert (=> b!4274783 (= e!2653987 (efficientList!548 (left!35215 (c!727737 x!742394)) (efficientList!548 (right!35545 (c!727737 x!742394)) (efficientList$default$2!190 (c!727737 x!742394)))))))

(declare-fun b!4274784 () Bool)

(declare-fun e!2653986 () List!47450)

(assert (=> b!4274784 (= e!2653986 lt!1513574)))

(declare-fun d!1261842 () Bool)

(declare-fun lt!1513573 () List!47450)

(assert (=> d!1261842 (= lt!1513573 (++!12083 (list!17210 (c!727737 x!742394)) (efficientList$default$2!190 (c!727737 x!742394))))))

(declare-fun e!2653988 () List!47450)

(assert (=> d!1261842 (= lt!1513573 e!2653988)))

(declare-fun c!727773 () Bool)

(assert (=> d!1261842 (= c!727773 (is-Empty!14308 (c!727737 x!742394)))))

(assert (=> d!1261842 (= (efficientList!548 (c!727737 x!742394) (efficientList$default$2!190 (c!727737 x!742394))) lt!1513573)))

(declare-fun bm!294209 () Bool)

(declare-fun c!727775 () Bool)

(declare-fun c!727774 () Bool)

(assert (=> bm!294209 (= c!727775 c!727774)))

(assert (=> bm!294209 (= call!294214 (++!12083 e!2653986 (efficientList$default$2!190 (c!727737 x!742394))))))

(declare-fun b!4274785 () Bool)

(assert (=> b!4274785 (= e!2653987 call!294214)))

(declare-fun b!4274786 () Bool)

(assert (=> b!4274786 (= e!2653988 e!2653987)))

(assert (=> b!4274786 (= c!727774 (is-Leaf!22118 (c!727737 x!742394)))))

(declare-fun b!4274787 () Bool)

(declare-fun efficientList!550 (IArray!28621) List!47450)

(assert (=> b!4274787 (= e!2653986 (efficientList!550 (xs!17614 (c!727737 x!742394))))))

(declare-fun b!4274788 () Bool)

(assert (=> b!4274788 (= e!2653988 (efficientList$default$2!190 (c!727737 x!742394)))))

(assert (= (and d!1261842 c!727773) b!4274788))

(assert (= (and d!1261842 (not c!727773)) b!4274786))

(assert (= (and b!4274786 c!727774) b!4274785))

(assert (= (and b!4274786 (not c!727774)) b!4274783))

(assert (= (or b!4274785 b!4274783) bm!294209))

(assert (= (and bm!294209 c!727775) b!4274787))

(assert (= (and bm!294209 (not c!727775)) b!4274784))

(assert (=> b!4274783 m!4870387))

(assert (=> b!4274783 m!4870389))

(assert (=> b!4274783 m!4870381))

(declare-fun m!4870445 () Bool)

(assert (=> b!4274783 m!4870445))

(declare-fun m!4870447 () Bool)

(assert (=> b!4274783 m!4870447))

(declare-fun m!4870449 () Bool)

(assert (=> b!4274783 m!4870449))

(declare-fun m!4870451 () Bool)

(assert (=> b!4274783 m!4870451))

(declare-fun m!4870453 () Bool)

(assert (=> b!4274783 m!4870453))

(assert (=> b!4274783 m!4870381))

(assert (=> b!4274783 m!4870449))

(assert (=> b!4274783 m!4870447))

(assert (=> b!4274783 m!4870381))

(declare-fun m!4870455 () Bool)

(assert (=> b!4274783 m!4870455))

(assert (=> d!1261842 m!4870313))

(assert (=> d!1261842 m!4870313))

(assert (=> d!1261842 m!4870381))

(declare-fun m!4870457 () Bool)

(assert (=> d!1261842 m!4870457))

(assert (=> bm!294209 m!4870381))

(declare-fun m!4870459 () Bool)

(assert (=> bm!294209 m!4870459))

(declare-fun m!4870461 () Bool)

(assert (=> b!4274787 m!4870461))

(assert (=> d!1261820 d!1261842))

(declare-fun d!1261844 () Bool)

(assert (=> d!1261844 (= (efficientList$default$2!190 (c!727737 x!742394)) Nil!47326)))

(assert (=> d!1261820 d!1261844))

(assert (=> d!1261812 d!1261786))

(declare-fun b!4274789 () Bool)

(declare-fun lt!1513581 () Unit!66265)

(declare-fun lt!1513580 () Unit!66265)

(assert (=> b!4274789 (= lt!1513581 lt!1513580)))

(declare-fun lt!1513579 () List!47450)

(declare-fun call!294215 () List!47450)

(declare-fun lt!1513577 () List!47450)

(assert (=> b!4274789 (= (++!12083 (++!12083 lt!1513577 lt!1513579) (efficientList$default$2!190 (c!727737 x!742395))) (++!12083 lt!1513577 call!294215))))

(assert (=> b!4274789 (= lt!1513580 (lemmaConcatAssociativity!2720 lt!1513577 lt!1513579 (efficientList$default$2!190 (c!727737 x!742395))))))

(assert (=> b!4274789 (= lt!1513579 (list!17210 (right!35545 (c!727737 x!742395))))))

(assert (=> b!4274789 (= lt!1513577 (list!17210 (left!35215 (c!727737 x!742395))))))

(declare-fun e!2653990 () List!47450)

(assert (=> b!4274789 (= e!2653990 (efficientList!548 (left!35215 (c!727737 x!742395)) (efficientList!548 (right!35545 (c!727737 x!742395)) (efficientList$default$2!190 (c!727737 x!742395)))))))

(declare-fun b!4274790 () Bool)

(declare-fun e!2653989 () List!47450)

(assert (=> b!4274790 (= e!2653989 lt!1513579)))

(declare-fun d!1261846 () Bool)

(declare-fun lt!1513578 () List!47450)

(assert (=> d!1261846 (= lt!1513578 (++!12083 (list!17210 (c!727737 x!742395)) (efficientList$default$2!190 (c!727737 x!742395))))))

(declare-fun e!2653991 () List!47450)

(assert (=> d!1261846 (= lt!1513578 e!2653991)))

(declare-fun c!727776 () Bool)

(assert (=> d!1261846 (= c!727776 (is-Empty!14308 (c!727737 x!742395)))))

(assert (=> d!1261846 (= (efficientList!548 (c!727737 x!742395) (efficientList$default$2!190 (c!727737 x!742395))) lt!1513578)))

(declare-fun bm!294210 () Bool)

(declare-fun c!727778 () Bool)

(declare-fun c!727777 () Bool)

(assert (=> bm!294210 (= c!727778 c!727777)))

(assert (=> bm!294210 (= call!294215 (++!12083 e!2653989 (efficientList$default$2!190 (c!727737 x!742395))))))

(declare-fun b!4274791 () Bool)

(assert (=> b!4274791 (= e!2653990 call!294215)))

(declare-fun b!4274792 () Bool)

(assert (=> b!4274792 (= e!2653991 e!2653990)))

(assert (=> b!4274792 (= c!727777 (is-Leaf!22118 (c!727737 x!742395)))))

(declare-fun b!4274793 () Bool)

(assert (=> b!4274793 (= e!2653989 (efficientList!550 (xs!17614 (c!727737 x!742395))))))

(declare-fun b!4274794 () Bool)

(assert (=> b!4274794 (= e!2653991 (efficientList$default$2!190 (c!727737 x!742395)))))

(assert (= (and d!1261846 c!727776) b!4274794))

(assert (= (and d!1261846 (not c!727776)) b!4274792))

(assert (= (and b!4274792 c!727777) b!4274791))

(assert (= (and b!4274792 (not c!727777)) b!4274789))

(assert (= (or b!4274791 b!4274789) bm!294210))

(assert (= (and bm!294210 c!727778) b!4274793))

(assert (= (and bm!294210 (not c!727778)) b!4274790))

(assert (=> b!4274789 m!4870359))

(assert (=> b!4274789 m!4870361))

(assert (=> b!4274789 m!4870353))

(declare-fun m!4870463 () Bool)

(assert (=> b!4274789 m!4870463))

(declare-fun m!4870465 () Bool)

(assert (=> b!4274789 m!4870465))

(declare-fun m!4870467 () Bool)

(assert (=> b!4274789 m!4870467))

(declare-fun m!4870469 () Bool)

(assert (=> b!4274789 m!4870469))

(declare-fun m!4870471 () Bool)

(assert (=> b!4274789 m!4870471))

(assert (=> b!4274789 m!4870353))

(assert (=> b!4274789 m!4870467))

(assert (=> b!4274789 m!4870465))

(assert (=> b!4274789 m!4870353))

(declare-fun m!4870473 () Bool)

(assert (=> b!4274789 m!4870473))

(assert (=> d!1261846 m!4870321))

(assert (=> d!1261846 m!4870321))

(assert (=> d!1261846 m!4870353))

(declare-fun m!4870475 () Bool)

(assert (=> d!1261846 m!4870475))

(assert (=> bm!294210 m!4870353))

(declare-fun m!4870477 () Bool)

(assert (=> bm!294210 m!4870477))

(declare-fun m!4870479 () Bool)

(assert (=> b!4274793 m!4870479))

(assert (=> d!1261812 d!1261846))

(declare-fun d!1261848 () Bool)

(assert (=> d!1261848 (= (efficientList$default$2!190 (c!727737 x!742395)) Nil!47326)))

(assert (=> d!1261812 d!1261848))

(assert (=> d!1261824 d!1261780))

(declare-fun b!4274795 () Bool)

(declare-fun lt!1513586 () Unit!66265)

(declare-fun lt!1513585 () Unit!66265)

(assert (=> b!4274795 (= lt!1513586 lt!1513585)))

(declare-fun call!294216 () List!47450)

(declare-fun lt!1513582 () List!47450)

(declare-fun lt!1513584 () List!47450)

(assert (=> b!4274795 (= (++!12083 (++!12083 lt!1513582 lt!1513584) (efficientList$default$2!190 (c!727737 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393))))) (++!12083 lt!1513582 call!294216))))

(assert (=> b!4274795 (= lt!1513585 (lemmaConcatAssociativity!2720 lt!1513582 lt!1513584 (efficientList$default$2!190 (c!727737 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393))))))))

(assert (=> b!4274795 (= lt!1513584 (list!17210 (right!35545 (c!727737 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393))))))))

(assert (=> b!4274795 (= lt!1513582 (list!17210 (left!35215 (c!727737 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393))))))))

(declare-fun e!2653993 () List!47450)

(assert (=> b!4274795 (= e!2653993 (efficientList!548 (left!35215 (c!727737 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393)))) (efficientList!548 (right!35545 (c!727737 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393)))) (efficientList$default$2!190 (c!727737 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393)))))))))

(declare-fun b!4274796 () Bool)

(declare-fun e!2653992 () List!47450)

(assert (=> b!4274796 (= e!2653992 lt!1513584)))

(declare-fun d!1261850 () Bool)

(declare-fun lt!1513583 () List!47450)

(assert (=> d!1261850 (= lt!1513583 (++!12083 (list!17210 (c!727737 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393)))) (efficientList$default$2!190 (c!727737 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393))))))))

(declare-fun e!2653994 () List!47450)

(assert (=> d!1261850 (= lt!1513583 e!2653994)))

(declare-fun c!727779 () Bool)

(assert (=> d!1261850 (= c!727779 (is-Empty!14308 (c!727737 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393)))))))

(assert (=> d!1261850 (= (efficientList!548 (c!727737 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393))) (efficientList$default$2!190 (c!727737 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393))))) lt!1513583)))

(declare-fun bm!294211 () Bool)

(declare-fun c!727781 () Bool)

(declare-fun c!727780 () Bool)

(assert (=> bm!294211 (= c!727781 c!727780)))

(assert (=> bm!294211 (= call!294216 (++!12083 e!2653992 (efficientList$default$2!190 (c!727737 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393))))))))

(declare-fun b!4274797 () Bool)

(assert (=> b!4274797 (= e!2653993 call!294216)))

(declare-fun b!4274798 () Bool)

(assert (=> b!4274798 (= e!2653994 e!2653993)))

(assert (=> b!4274798 (= c!727780 (is-Leaf!22118 (c!727737 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393)))))))

(declare-fun b!4274799 () Bool)

(assert (=> b!4274799 (= e!2653992 (efficientList!550 (xs!17614 (c!727737 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393))))))))

(declare-fun b!4274800 () Bool)

(assert (=> b!4274800 (= e!2653994 (efficientList$default$2!190 (c!727737 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393)))))))

(assert (= (and d!1261850 c!727779) b!4274800))

(assert (= (and d!1261850 (not c!727779)) b!4274798))

(assert (= (and b!4274798 c!727780) b!4274797))

(assert (= (and b!4274798 (not c!727780)) b!4274795))

(assert (= (or b!4274797 b!4274795) bm!294211))

(assert (= (and bm!294211 c!727781) b!4274799))

(assert (= (and bm!294211 (not c!727781)) b!4274796))

(assert (=> b!4274795 m!4870367))

(assert (=> b!4274795 m!4870369))

(assert (=> b!4274795 m!4870393))

(declare-fun m!4870481 () Bool)

(assert (=> b!4274795 m!4870481))

(declare-fun m!4870483 () Bool)

(assert (=> b!4274795 m!4870483))

(declare-fun m!4870485 () Bool)

(assert (=> b!4274795 m!4870485))

(declare-fun m!4870487 () Bool)

(assert (=> b!4274795 m!4870487))

(declare-fun m!4870489 () Bool)

(assert (=> b!4274795 m!4870489))

(assert (=> b!4274795 m!4870393))

(assert (=> b!4274795 m!4870485))

(assert (=> b!4274795 m!4870483))

(assert (=> b!4274795 m!4870393))

(declare-fun m!4870491 () Bool)

(assert (=> b!4274795 m!4870491))

(assert (=> d!1261850 m!4870315))

(assert (=> d!1261850 m!4870315))

(assert (=> d!1261850 m!4870393))

(declare-fun m!4870493 () Bool)

(assert (=> d!1261850 m!4870493))

(assert (=> bm!294211 m!4870393))

(declare-fun m!4870495 () Bool)

(assert (=> bm!294211 m!4870495))

(declare-fun m!4870497 () Bool)

(assert (=> b!4274799 m!4870497))

(assert (=> d!1261824 d!1261850))

(declare-fun d!1261852 () Bool)

(assert (=> d!1261852 (= (efficientList$default$2!190 (c!727737 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393)))) Nil!47326)))

(assert (=> d!1261824 d!1261852))

(declare-fun d!1261854 () Bool)

(declare-fun c!727784 () Bool)

(assert (=> d!1261854 (= c!727784 (is-Node!14308 (c!727737 x!742393)))))

(declare-fun e!2653999 () Bool)

(assert (=> d!1261854 (= (inv!62541 (c!727737 x!742393)) e!2653999)))

(declare-fun b!4274807 () Bool)

(declare-fun inv!62545 (Conc!14308) Bool)

(assert (=> b!4274807 (= e!2653999 (inv!62545 (c!727737 x!742393)))))

(declare-fun b!4274808 () Bool)

(declare-fun e!2654000 () Bool)

(assert (=> b!4274808 (= e!2653999 e!2654000)))

(declare-fun res!1755607 () Bool)

(assert (=> b!4274808 (= res!1755607 (not (is-Leaf!22118 (c!727737 x!742393))))))

(assert (=> b!4274808 (=> res!1755607 e!2654000)))

(declare-fun b!4274809 () Bool)

(declare-fun inv!62546 (Conc!14308) Bool)

(assert (=> b!4274809 (= e!2654000 (inv!62546 (c!727737 x!742393)))))

(assert (= (and d!1261854 c!727784) b!4274807))

(assert (= (and d!1261854 (not c!727784)) b!4274808))

(assert (= (and b!4274808 (not res!1755607)) b!4274809))

(declare-fun m!4870499 () Bool)

(assert (=> b!4274807 m!4870499))

(declare-fun m!4870501 () Bool)

(assert (=> b!4274809 m!4870501))

(assert (=> b!4274658 d!1261854))

(assert (=> b!4274659 d!1261782))

(assert (=> b!4274659 d!1261792))

(assert (=> bs!601676 d!1261780))

(declare-fun b!4274866 () Bool)

(declare-fun e!2654041 () BalanceConc!28126)

(declare-fun stringClassConc!0 () BalanceConc!28126)

(assert (=> b!4274866 (= e!2654041 stringClassConc!0)))

(declare-fun b!4274867 () Bool)

(declare-fun e!2654033 () BalanceConc!28126)

(declare-fun stringAbstractConc!0 () BalanceConc!28126)

(assert (=> b!4274867 (= e!2654033 stringAbstractConc!0)))

(declare-fun b!4274868 () Bool)

(declare-fun e!2654034 () BalanceConc!28126)

(assert (=> b!4274868 (= e!2654033 e!2654034)))

(declare-fun c!727827 () Bool)

(assert (=> b!4274868 (= c!727827 (is-Case!8281 (toValue!14 thiss!2319 x!742393)))))

(declare-fun b!4274869 () Bool)

(declare-fun c!727814 () Bool)

(assert (=> b!4274869 (= c!727814 (is-End!8281 (toValue!14 thiss!2319 x!742393)))))

(declare-fun e!2654040 () BalanceConc!28126)

(declare-fun e!2654032 () BalanceConc!28126)

(assert (=> b!4274869 (= e!2654040 e!2654032)))

(declare-fun b!4274870 () Bool)

(declare-fun e!2654035 () BalanceConc!28126)

(declare-fun seqFromList!5881 (List!47450) BalanceConc!28126)

(assert (=> b!4274870 (= e!2654035 (seqFromList!5881 (value!249924 (toValue!14 thiss!2319 x!742393))))))

(declare-fun b!4274871 () Bool)

(declare-fun e!2654031 () BalanceConc!28126)

(declare-fun e!2654038 () BalanceConc!28126)

(assert (=> b!4274871 (= e!2654031 e!2654038)))

(declare-fun c!727816 () Bool)

(assert (=> b!4274871 (= c!727816 (is-Val!8281 (toValue!14 thiss!2319 x!742393)))))

(declare-fun b!4274872 () Bool)

(declare-fun e!2654029 () BalanceConc!28126)

(assert (=> b!4274872 (= e!2654041 e!2654029)))

(declare-fun c!727815 () Bool)

(assert (=> b!4274872 (= c!727815 (is-Def!8281 (toValue!14 thiss!2319 x!742393)))))

(declare-fun b!4274873 () Bool)

(declare-fun stringEndConc!0 () BalanceConc!28126)

(assert (=> b!4274873 (= e!2654032 stringEndConc!0)))

(declare-fun b!4274874 () Bool)

(declare-fun e!2654036 () BalanceConc!28126)

(declare-fun stringMatchConc!0 () BalanceConc!28126)

(assert (=> b!4274874 (= e!2654036 stringMatchConc!0)))

(declare-fun b!4274875 () Bool)

(declare-fun c!727822 () Bool)

(assert (=> b!4274875 (= c!727822 (is-Class!8281 (toValue!14 thiss!2319 x!742393)))))

(assert (=> b!4274875 (= e!2654034 e!2654041)))

(declare-fun b!4274876 () Bool)

(declare-fun c!727824 () Bool)

(assert (=> b!4274876 (= c!727824 (is-Error!8281 (toValue!14 thiss!2319 x!742393)))))

(declare-fun e!2654037 () BalanceConc!28126)

(assert (=> b!4274876 (= e!2654038 e!2654037)))

(declare-fun b!4274877 () Bool)

(declare-fun stringObjectConc!0 () BalanceConc!28126)

(assert (=> b!4274877 (= e!2654031 stringObjectConc!0)))

(declare-fun b!4274878 () Bool)

(assert (=> b!4274878 (= e!2654035 (BalanceConc!28127 Empty!14308))))

(declare-fun b!4274879 () Bool)

(declare-fun e!2654030 () BalanceConc!28126)

(declare-fun stringIfConc!0 () BalanceConc!28126)

(assert (=> b!4274879 (= e!2654030 stringIfConc!0)))

(declare-fun b!4274880 () Bool)

(declare-fun stringDefConc!0 () BalanceConc!28126)

(assert (=> b!4274880 (= e!2654029 stringDefConc!0)))

(declare-fun d!1261856 () Bool)

(declare-fun c!727818 () Bool)

(assert (=> d!1261856 (= c!727818 (is-Abstract!8281 (toValue!14 thiss!2319 x!742393)))))

(assert (=> d!1261856 (= (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742393)) e!2654033)))

(declare-fun b!4274881 () Bool)

(declare-fun e!2654042 () BalanceConc!28126)

(declare-fun e!2654039 () BalanceConc!28126)

(assert (=> b!4274881 (= e!2654042 e!2654039)))

(declare-fun c!727825 () Bool)

(assert (=> b!4274881 (= c!727825 (is-Extends!8281 (toValue!14 thiss!2319 x!742393)))))

(declare-fun b!4274882 () Bool)

(declare-fun c!727821 () Bool)

(assert (=> b!4274882 (= c!727821 (is-If!8281 (toValue!14 thiss!2319 x!742393)))))

(assert (=> b!4274882 (= e!2654039 e!2654030)))

(declare-fun b!4274883 () Bool)

(declare-fun stringErrorConc!0 () BalanceConc!28126)

(assert (=> b!4274883 (= e!2654037 stringErrorConc!0)))

(declare-fun b!4274884 () Bool)

(declare-fun c!727820 () Bool)

(assert (=> b!4274884 (= c!727820 (is-Object!8404 (toValue!14 thiss!2319 x!742393)))))

(assert (=> b!4274884 (= e!2654036 e!2654031)))

(declare-fun b!4274885 () Bool)

(assert (=> b!4274885 (= e!2654032 e!2654035)))

(declare-fun c!727826 () Bool)

(assert (=> b!4274885 (= c!727826 (is-Broken!41405 (toValue!14 thiss!2319 x!742393)))))

(declare-fun b!4274886 () Bool)

(declare-fun stringElseConc!0 () BalanceConc!28126)

(assert (=> b!4274886 (= e!2654042 stringElseConc!0)))

(declare-fun b!4274887 () Bool)

(declare-fun c!727819 () Bool)

(assert (=> b!4274887 (= c!727819 (is-Else!8281 (toValue!14 thiss!2319 x!742393)))))

(assert (=> b!4274887 (= e!2654029 e!2654042)))

(declare-fun b!4274888 () Bool)

(assert (=> b!4274888 (= e!2654030 e!2654036)))

(declare-fun c!727823 () Bool)

(assert (=> b!4274888 (= c!727823 (is-Match!8281 (toValue!14 thiss!2319 x!742393)))))

(declare-fun b!4274889 () Bool)

(declare-fun stringUnderscoreConc!0 () BalanceConc!28126)

(assert (=> b!4274889 (= e!2654040 stringUnderscoreConc!0)))

(declare-fun b!4274890 () Bool)

(assert (=> b!4274890 (= e!2654037 e!2654040)))

(declare-fun c!727817 () Bool)

(assert (=> b!4274890 (= c!727817 (is-Underscore!8281 (toValue!14 thiss!2319 x!742393)))))

(declare-fun b!4274891 () Bool)

(declare-fun stringCaseConc!0 () BalanceConc!28126)

(assert (=> b!4274891 (= e!2654034 stringCaseConc!0)))

(declare-fun b!4274892 () Bool)

(declare-fun stringValConc!0 () BalanceConc!28126)

(assert (=> b!4274892 (= e!2654038 stringValConc!0)))

(declare-fun b!4274893 () Bool)

(declare-fun stringExtendsConc!0 () BalanceConc!28126)

(assert (=> b!4274893 (= e!2654039 stringExtendsConc!0)))

(assert (= (and d!1261856 c!727818) b!4274867))

(assert (= (and d!1261856 (not c!727818)) b!4274868))

(assert (= (and b!4274868 c!727827) b!4274891))

(assert (= (and b!4274868 (not c!727827)) b!4274875))

(assert (= (and b!4274875 c!727822) b!4274866))

(assert (= (and b!4274875 (not c!727822)) b!4274872))

(assert (= (and b!4274872 c!727815) b!4274880))

(assert (= (and b!4274872 (not c!727815)) b!4274887))

(assert (= (and b!4274887 c!727819) b!4274886))

(assert (= (and b!4274887 (not c!727819)) b!4274881))

(assert (= (and b!4274881 c!727825) b!4274893))

(assert (= (and b!4274881 (not c!727825)) b!4274882))

(assert (= (and b!4274882 c!727821) b!4274879))

(assert (= (and b!4274882 (not c!727821)) b!4274888))

(assert (= (and b!4274888 c!727823) b!4274874))

(assert (= (and b!4274888 (not c!727823)) b!4274884))

(assert (= (and b!4274884 c!727820) b!4274877))

(assert (= (and b!4274884 (not c!727820)) b!4274871))

(assert (= (and b!4274871 c!727816) b!4274892))

(assert (= (and b!4274871 (not c!727816)) b!4274876))

(assert (= (and b!4274876 c!727824) b!4274883))

(assert (= (and b!4274876 (not c!727824)) b!4274890))

(assert (= (and b!4274890 c!727817) b!4274889))

(assert (= (and b!4274890 (not c!727817)) b!4274869))

(assert (= (and b!4274869 c!727814) b!4274873))

(assert (= (and b!4274869 (not c!727814)) b!4274885))

(assert (= (and b!4274885 c!727826) b!4274870))

(assert (= (and b!4274885 (not c!727826)) b!4274878))

(declare-fun m!4870503 () Bool)

(assert (=> b!4274867 m!4870503))

(declare-fun m!4870505 () Bool)

(assert (=> b!4274886 m!4870505))

(declare-fun m!4870507 () Bool)

(assert (=> b!4274874 m!4870507))

(declare-fun m!4870509 () Bool)

(assert (=> b!4274877 m!4870509))

(declare-fun m!4870511 () Bool)

(assert (=> b!4274873 m!4870511))

(declare-fun m!4870513 () Bool)

(assert (=> b!4274893 m!4870513))

(declare-fun m!4870515 () Bool)

(assert (=> b!4274870 m!4870515))

(declare-fun m!4870517 () Bool)

(assert (=> b!4274880 m!4870517))

(declare-fun m!4870519 () Bool)

(assert (=> b!4274866 m!4870519))

(declare-fun m!4870521 () Bool)

(assert (=> b!4274889 m!4870521))

(declare-fun m!4870523 () Bool)

(assert (=> b!4274891 m!4870523))

(declare-fun m!4870525 () Bool)

(assert (=> b!4274883 m!4870525))

(declare-fun m!4870527 () Bool)

(assert (=> b!4274879 m!4870527))

(declare-fun m!4870529 () Bool)

(assert (=> b!4274892 m!4870529))

(assert (=> bs!601676 d!1261856))

(assert (=> bs!601676 d!1261784))

(assert (=> bs!601676 d!1261788))

(declare-fun d!1261858 () Bool)

(declare-fun c!727828 () Bool)

(assert (=> d!1261858 (= c!727828 (is-Node!14308 (c!727737 x!742394)))))

(declare-fun e!2654043 () Bool)

(assert (=> d!1261858 (= (inv!62541 (c!727737 x!742394)) e!2654043)))

(declare-fun b!4274894 () Bool)

(assert (=> b!4274894 (= e!2654043 (inv!62545 (c!727737 x!742394)))))

(declare-fun b!4274895 () Bool)

(declare-fun e!2654044 () Bool)

(assert (=> b!4274895 (= e!2654043 e!2654044)))

(declare-fun res!1755608 () Bool)

(assert (=> b!4274895 (= res!1755608 (not (is-Leaf!22118 (c!727737 x!742394))))))

(assert (=> b!4274895 (=> res!1755608 e!2654044)))

(declare-fun b!4274896 () Bool)

(assert (=> b!4274896 (= e!2654044 (inv!62546 (c!727737 x!742394)))))

(assert (= (and d!1261858 c!727828) b!4274894))

(assert (= (and d!1261858 (not c!727828)) b!4274895))

(assert (= (and b!4274895 (not res!1755608)) b!4274896))

(declare-fun m!4870531 () Bool)

(assert (=> b!4274894 m!4870531))

(declare-fun m!4870533 () Bool)

(assert (=> b!4274896 m!4870533))

(assert (=> b!4274660 d!1261858))

(declare-fun d!1261860 () Bool)

(declare-fun c!727829 () Bool)

(assert (=> d!1261860 (= c!727829 (is-Node!14308 (c!727737 x!742395)))))

(declare-fun e!2654045 () Bool)

(assert (=> d!1261860 (= (inv!62541 (c!727737 x!742395)) e!2654045)))

(declare-fun b!4274897 () Bool)

(assert (=> b!4274897 (= e!2654045 (inv!62545 (c!727737 x!742395)))))

(declare-fun b!4274898 () Bool)

(declare-fun e!2654046 () Bool)

(assert (=> b!4274898 (= e!2654045 e!2654046)))

(declare-fun res!1755609 () Bool)

(assert (=> b!4274898 (= res!1755609 (not (is-Leaf!22118 (c!727737 x!742395))))))

(assert (=> b!4274898 (=> res!1755609 e!2654046)))

(declare-fun b!4274899 () Bool)

(assert (=> b!4274899 (= e!2654046 (inv!62546 (c!727737 x!742395)))))

(assert (= (and d!1261860 c!727829) b!4274897))

(assert (= (and d!1261860 (not c!727829)) b!4274898))

(assert (= (and b!4274898 (not res!1755609)) b!4274899))

(declare-fun m!4870535 () Bool)

(assert (=> b!4274897 m!4870535))

(declare-fun m!4870537 () Bool)

(assert (=> b!4274899 m!4870537))

(assert (=> b!4274661 d!1261860))

(assert (=> d!1261810 d!1261788))

(declare-fun b!4274900 () Bool)

(declare-fun lt!1513591 () Unit!66265)

(declare-fun lt!1513590 () Unit!66265)

(assert (=> b!4274900 (= lt!1513591 lt!1513590)))

(declare-fun lt!1513589 () List!47450)

(declare-fun lt!1513587 () List!47450)

(declare-fun call!294217 () List!47450)

(assert (=> b!4274900 (= (++!12083 (++!12083 lt!1513587 lt!1513589) (efficientList$default$2!190 (c!727737 x!742393))) (++!12083 lt!1513587 call!294217))))

(assert (=> b!4274900 (= lt!1513590 (lemmaConcatAssociativity!2720 lt!1513587 lt!1513589 (efficientList$default$2!190 (c!727737 x!742393))))))

(assert (=> b!4274900 (= lt!1513589 (list!17210 (right!35545 (c!727737 x!742393))))))

(assert (=> b!4274900 (= lt!1513587 (list!17210 (left!35215 (c!727737 x!742393))))))

(declare-fun e!2654048 () List!47450)

(assert (=> b!4274900 (= e!2654048 (efficientList!548 (left!35215 (c!727737 x!742393)) (efficientList!548 (right!35545 (c!727737 x!742393)) (efficientList$default$2!190 (c!727737 x!742393)))))))

(declare-fun b!4274901 () Bool)

(declare-fun e!2654047 () List!47450)

(assert (=> b!4274901 (= e!2654047 lt!1513589)))

(declare-fun d!1261862 () Bool)

(declare-fun lt!1513588 () List!47450)

(assert (=> d!1261862 (= lt!1513588 (++!12083 (list!17210 (c!727737 x!742393)) (efficientList$default$2!190 (c!727737 x!742393))))))

(declare-fun e!2654049 () List!47450)

(assert (=> d!1261862 (= lt!1513588 e!2654049)))

(declare-fun c!727830 () Bool)

(assert (=> d!1261862 (= c!727830 (is-Empty!14308 (c!727737 x!742393)))))

(assert (=> d!1261862 (= (efficientList!548 (c!727737 x!742393) (efficientList$default$2!190 (c!727737 x!742393))) lt!1513588)))

(declare-fun bm!294212 () Bool)

(declare-fun c!727832 () Bool)

(declare-fun c!727831 () Bool)

(assert (=> bm!294212 (= c!727832 c!727831)))

(assert (=> bm!294212 (= call!294217 (++!12083 e!2654047 (efficientList$default$2!190 (c!727737 x!742393))))))

(declare-fun b!4274902 () Bool)

(assert (=> b!4274902 (= e!2654048 call!294217)))

(declare-fun b!4274903 () Bool)

(assert (=> b!4274903 (= e!2654049 e!2654048)))

(assert (=> b!4274903 (= c!727831 (is-Leaf!22118 (c!727737 x!742393)))))

(declare-fun b!4274904 () Bool)

(assert (=> b!4274904 (= e!2654047 (efficientList!550 (xs!17614 (c!727737 x!742393))))))

(declare-fun b!4274905 () Bool)

(assert (=> b!4274905 (= e!2654049 (efficientList$default$2!190 (c!727737 x!742393)))))

(assert (= (and d!1261862 c!727830) b!4274905))

(assert (= (and d!1261862 (not c!727830)) b!4274903))

(assert (= (and b!4274903 c!727831) b!4274902))

(assert (= (and b!4274903 (not c!727831)) b!4274900))

(assert (= (or b!4274902 b!4274900) bm!294212))

(assert (= (and bm!294212 c!727832) b!4274904))

(assert (= (and bm!294212 (not c!727832)) b!4274901))

(assert (=> b!4274900 m!4870375))

(assert (=> b!4274900 m!4870377))

(assert (=> b!4274900 m!4870349))

(declare-fun m!4870539 () Bool)

(assert (=> b!4274900 m!4870539))

(declare-fun m!4870541 () Bool)

(assert (=> b!4274900 m!4870541))

(declare-fun m!4870543 () Bool)

(assert (=> b!4274900 m!4870543))

(declare-fun m!4870545 () Bool)

(assert (=> b!4274900 m!4870545))

(declare-fun m!4870547 () Bool)

(assert (=> b!4274900 m!4870547))

(assert (=> b!4274900 m!4870349))

(assert (=> b!4274900 m!4870543))

(assert (=> b!4274900 m!4870541))

(assert (=> b!4274900 m!4870349))

(declare-fun m!4870549 () Bool)

(assert (=> b!4274900 m!4870549))

(assert (=> d!1261862 m!4870323))

(assert (=> d!1261862 m!4870323))

(assert (=> d!1261862 m!4870349))

(declare-fun m!4870551 () Bool)

(assert (=> d!1261862 m!4870551))

(assert (=> bm!294212 m!4870349))

(declare-fun m!4870553 () Bool)

(assert (=> bm!294212 m!4870553))

(declare-fun m!4870555 () Bool)

(assert (=> b!4274904 m!4870555))

(assert (=> d!1261810 d!1261862))

(declare-fun d!1261864 () Bool)

(assert (=> d!1261864 (= (efficientList$default$2!190 (c!727737 x!742393)) Nil!47326)))

(assert (=> d!1261810 d!1261864))

(declare-fun bs!601804 () Bool)

(declare-fun d!1261866 () Bool)

(assert (= bs!601804 (and d!1261866 start!410348)))

(declare-fun lambda!131172 () Int)

(assert (=> bs!601804 (not (= lambda!131172 lambda!131148))))

(assert (=> d!1261866 true))

(declare-fun order!24957 () Int)

(declare-fun order!24959 () Int)

(declare-fun dynLambda!20288 (Int Int) Int)

(declare-fun dynLambda!20289 (Int Int) Int)

(assert (=> d!1261866 (< (dynLambda!20288 order!24957 lambda!131149) (dynLambda!20289 order!24959 lambda!131172))))

(assert (=> d!1261866 true))

(declare-fun order!24961 () Int)

(declare-fun dynLambda!20290 (Int Int) Int)

(assert (=> d!1261866 (< (dynLambda!20290 order!24961 lambda!131150) (dynLambda!20289 order!24959 lambda!131172))))

(assert (=> d!1261866 (= (semiInverseModEq!3519 lambda!131149 lambda!131150) (Forall!1651 lambda!131172))))

(declare-fun bs!601805 () Bool)

(assert (= bs!601805 d!1261866))

(declare-fun m!4870557 () Bool)

(assert (=> bs!601805 m!4870557))

(assert (=> b!4274649 d!1261866))

(assert (=> b!4274649 d!1261786))

(declare-fun d!1261868 () Bool)

(declare-fun isBalanced!3854 (Conc!14308) Bool)

(assert (=> d!1261868 (= (inv!62542 x!742395) (isBalanced!3854 (c!727737 x!742395)))))

(declare-fun bs!601806 () Bool)

(assert (= bs!601806 d!1261868))

(declare-fun m!4870559 () Bool)

(assert (=> bs!601806 m!4870559))

(assert (=> b!4274649 d!1261868))

(declare-fun d!1261870 () Bool)

(declare-fun choose!26064 (Int) Bool)

(assert (=> d!1261870 (= (Forall2!1234 lambda!131151) (choose!26064 lambda!131151))))

(declare-fun bs!601807 () Bool)

(assert (= bs!601807 d!1261870))

(declare-fun m!4870561 () Bool)

(assert (=> bs!601807 m!4870561))

(assert (=> b!4274649 d!1261870))

(declare-fun d!1261872 () Bool)

(assert (=> d!1261872 (= (inv!62542 x!742394) (isBalanced!3854 (c!727737 x!742394)))))

(declare-fun bs!601808 () Bool)

(assert (= bs!601808 d!1261872))

(declare-fun m!4870563 () Bool)

(assert (=> bs!601808 m!4870563))

(assert (=> b!4274649 d!1261872))

(declare-fun d!1261874 () Bool)

(declare-fun choose!26065 (Int) Bool)

(assert (=> d!1261874 (= (Forall!1651 lambda!131148) (choose!26065 lambda!131148))))

(declare-fun bs!601809 () Bool)

(assert (= bs!601809 d!1261874))

(declare-fun m!4870565 () Bool)

(assert (=> bs!601809 m!4870565))

(assert (=> b!4274649 d!1261874))

(assert (=> b!4274649 d!1261778))

(assert (=> start!410348 d!1261856))

(assert (=> start!410348 d!1261784))

(assert (=> start!410348 d!1261788))

(assert (=> start!410348 d!1261874))

(assert (=> start!410348 d!1261780))

(declare-fun d!1261876 () Bool)

(assert (=> d!1261876 (= (inv!62542 x!742393) (isBalanced!3854 (c!727737 x!742393)))))

(declare-fun bs!601810 () Bool)

(assert (= bs!601810 d!1261876))

(declare-fun m!4870567 () Bool)

(assert (=> bs!601810 m!4870567))

(assert (=> start!410348 d!1261876))

(declare-fun tp!1308411 () Bool)

(declare-fun e!2654054 () Bool)

(declare-fun b!4274916 () Bool)

(declare-fun tp!1308412 () Bool)

(assert (=> b!4274916 (= e!2654054 (and (inv!62541 (left!35215 (c!727737 x!742393))) tp!1308411 (inv!62541 (right!35545 (c!727737 x!742393))) tp!1308412))))

(declare-fun b!4274917 () Bool)

(declare-fun inv!62547 (IArray!28621) Bool)

(assert (=> b!4274917 (= e!2654054 (inv!62547 (xs!17614 (c!727737 x!742393))))))

(assert (=> b!4274658 (= tp!1308395 (and (inv!62541 (c!727737 x!742393)) e!2654054))))

(assert (= (and b!4274658 (is-Node!14308 (c!727737 x!742393))) b!4274916))

(assert (= (and b!4274658 (is-Leaf!22118 (c!727737 x!742393))) b!4274917))

(declare-fun m!4870569 () Bool)

(assert (=> b!4274916 m!4870569))

(declare-fun m!4870571 () Bool)

(assert (=> b!4274916 m!4870571))

(declare-fun m!4870573 () Bool)

(assert (=> b!4274917 m!4870573))

(assert (=> b!4274658 m!4870245))

(declare-fun e!2654056 () Bool)

(declare-fun tp!1308414 () Bool)

(declare-fun tp!1308413 () Bool)

(declare-fun b!4274918 () Bool)

(assert (=> b!4274918 (= e!2654056 (and (inv!62541 (left!35215 (c!727737 x!742394))) tp!1308413 (inv!62541 (right!35545 (c!727737 x!742394))) tp!1308414))))

(declare-fun b!4274919 () Bool)

(assert (=> b!4274919 (= e!2654056 (inv!62547 (xs!17614 (c!727737 x!742394))))))

(assert (=> b!4274660 (= tp!1308397 (and (inv!62541 (c!727737 x!742394)) e!2654056))))

(assert (= (and b!4274660 (is-Node!14308 (c!727737 x!742394))) b!4274918))

(assert (= (and b!4274660 (is-Leaf!22118 (c!727737 x!742394))) b!4274919))

(declare-fun m!4870575 () Bool)

(assert (=> b!4274918 m!4870575))

(declare-fun m!4870577 () Bool)

(assert (=> b!4274918 m!4870577))

(declare-fun m!4870579 () Bool)

(assert (=> b!4274919 m!4870579))

(assert (=> b!4274660 m!4870269))

(declare-fun e!2654058 () Bool)

(declare-fun tp!1308416 () Bool)

(declare-fun b!4274920 () Bool)

(declare-fun tp!1308415 () Bool)

(assert (=> b!4274920 (= e!2654058 (and (inv!62541 (left!35215 (c!727737 x!742395))) tp!1308415 (inv!62541 (right!35545 (c!727737 x!742395))) tp!1308416))))

(declare-fun b!4274921 () Bool)

(assert (=> b!4274921 (= e!2654058 (inv!62547 (xs!17614 (c!727737 x!742395))))))

(assert (=> b!4274661 (= tp!1308396 (and (inv!62541 (c!727737 x!742395)) e!2654058))))

(assert (= (and b!4274661 (is-Node!14308 (c!727737 x!742395))) b!4274920))

(assert (= (and b!4274661 (is-Leaf!22118 (c!727737 x!742395))) b!4274921))

(declare-fun m!4870581 () Bool)

(assert (=> b!4274920 m!4870581))

(declare-fun m!4870583 () Bool)

(assert (=> b!4274920 m!4870583))

(declare-fun m!4870585 () Bool)

(assert (=> b!4274921 m!4870585))

(assert (=> b!4274661 m!4870271))

(push 1)

(assert (not b!4274742))

(assert (not d!1261866))

(assert (not b!4274734))

(assert (not b!4274894))

(assert (not b!4274793))

(assert (not b!4274879))

(assert (not b!4274877))

(assert (not bm!294210))

(assert (not b!4274866))

(assert (not b!4274789))

(assert (not b!4274921))

(assert (not b!4274874))

(assert (not b!4274746))

(assert (not bm!294209))

(assert (not b!4274886))

(assert (not b!4274658))

(assert (not b!4274799))

(assert (not d!1261868))

(assert (not b!4274899))

(assert (not b!4274892))

(assert (not bm!294212))

(assert (not b!4274738))

(assert (not b!4274867))

(assert (not b!4274918))

(assert (not d!1261872))

(assert (not b!4274893))

(assert (not b!4274783))

(assert (not b!4274900))

(assert (not d!1261862))

(assert (not b!4274807))

(assert (not b!4274787))

(assert (not b!4274891))

(assert (not b!4274917))

(assert (not bm!294211))

(assert (not b!4274896))

(assert (not d!1261850))

(assert (not b!4274873))

(assert (not b!4274741))

(assert (not b!4274660))

(assert (not d!1261870))

(assert (not b!4274870))

(assert (not b!4274809))

(assert (not b!4274920))

(assert (not b!4274904))

(assert (not b!4274889))

(assert (not b!4274916))

(assert (not b!4274737))

(assert (not b!4274897))

(assert (not b!4274919))

(assert (not b!4274795))

(assert (not b!4274661))

(assert (not b!4274880))

(assert (not b!4274883))

(assert (not b!4274745))

(assert (not b!4274733))

(assert (not d!1261876))

(assert (not d!1261842))

(assert (not d!1261846))

(assert (not d!1261874))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

