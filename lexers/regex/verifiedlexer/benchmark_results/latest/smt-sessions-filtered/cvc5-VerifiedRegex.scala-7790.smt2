; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!409318 () Bool)

(assert start!409318)

(assert (=> start!409318 true))

(declare-fun b!4269389 () Bool)

(assert (=> b!4269389 true))

(assert (=> b!4269389 true))

(assert (=> b!4269389 true))

(declare-fun b!4269399 () Bool)

(declare-fun e!2650741 () Bool)

(declare-datatypes ((List!47412 0))(
  ( (Nil!47288) (Cons!47288 (h!52708 (_ BitVec 16)) (t!353619 List!47412)) )
))
(declare-datatypes ((IArray!28545 0))(
  ( (IArray!28546 (innerList!14330 List!47412)) )
))
(declare-datatypes ((Conc!14270 0))(
  ( (Node!14270 (left!35102 Conc!14270) (right!35432 Conc!14270) (csize!28770 Int) (cheight!14481 Int)) (Leaf!22061 (xs!17576 IArray!28545) (csize!28771 Int)) (Empty!14270) )
))
(declare-datatypes ((BalanceConc!28050 0))(
  ( (BalanceConc!28051 (c!726225 Conc!14270)) )
))
(declare-fun x!739699 () BalanceConc!28050)

(declare-fun tp!1307805 () Bool)

(declare-fun inv!62311 (Conc!14270) Bool)

(assert (=> b!4269399 (= e!2650741 (and (inv!62311 (c!726225 x!739699)) tp!1307805))))

(declare-fun inst!1636 () Bool)

(declare-datatypes ((IdentifierValueInjection!36 0))(
  ( (IdentifierValueInjection!37) )
))
(declare-fun thiss!2252 () IdentifierValueInjection!36)

(declare-fun inv!62312 (BalanceConc!28050) Bool)

(declare-fun list!17121 (BalanceConc!28050) List!47412)

(declare-datatypes ((TokenValue!8243 0))(
  ( (FloatLiteralValue!16486 (text!58146 List!47412)) (TokenValueExt!8242 (__x!28689 Int)) (Broken!41215 (value!248917 List!47412)) (Object!8366) (End!8243) (Def!8243) (Underscore!8243) (Match!8243) (Else!8243) (Error!8243) (Case!8243) (If!8243) (Extends!8243) (Abstract!8243) (Class!8243) (Val!8243) (DelimiterValue!16486 (del!8303 List!47412)) (KeywordValue!8249 (value!248918 List!47412)) (CommentValue!16486 (value!248919 List!47412)) (WhitespaceValue!16486 (value!248920 List!47412)) (IndentationValue!8243 (value!248921 List!47412)) (String!55206) (Int32!8243) (Broken!41216 (value!248922 List!47412)) (Boolean!8244) (Unit!66193) (OperatorValue!8246 (op!8303 List!47412)) (IdentifierValue!16486 (value!248923 List!47412)) (IdentifierValue!16487 (value!248924 List!47412)) (WhitespaceValue!16487 (value!248925 List!47412)) (True!16486) (False!16486) (Broken!41217 (value!248926 List!47412)) (Broken!41218 (value!248927 List!47412)) (True!16487) (RightBrace!8243) (RightBracket!8243) (Colon!8243) (Null!8243) (Comma!8243) (LeftBracket!8243) (False!16487) (LeftBrace!8243) (ImaginaryLiteralValue!8243 (text!58147 List!47412)) (StringLiteralValue!24729 (value!248928 List!47412)) (EOFValue!8243 (value!248929 List!47412)) (IdentValue!8243 (value!248930 List!47412)) (DelimiterValue!16487 (value!248931 List!47412)) (DedentValue!8243 (value!248932 List!47412)) (NewLineValue!8243 (value!248933 List!47412)) (IntegerValue!24729 (value!248934 (_ BitVec 32)) (text!58148 List!47412)) (IntegerValue!24730 (value!248935 Int) (text!58149 List!47412)) (Times!8243) (Or!8243) (Equal!8243) (Minus!8243) (Broken!41219 (value!248936 List!47412)) (And!8243) (Div!8243) (LessEqual!8243) (Mod!8243) (Concat!21141) (Not!8243) (Plus!8243) (SpaceValue!8243 (value!248937 List!47412)) (IntegerValue!24731 (value!248938 Int) (text!58150 List!47412)) (StringLiteralValue!24730 (text!58151 List!47412)) (FloatLiteralValue!16487 (text!58152 List!47412)) (BytesLiteralValue!8243 (value!248939 List!47412)) (CommentValue!16487 (value!248940 List!47412)) (StringLiteralValue!24731 (value!248941 List!47412)) (ErrorTokenValue!8243 (msg!8304 List!47412)) )
))
(declare-fun toCharacters!6 (IdentifierValueInjection!36 TokenValue!8243) BalanceConc!28050)

(declare-fun toValue!13 (IdentifierValueInjection!36 BalanceConc!28050) TokenValue!8243)

(assert (=> start!409318 (= inst!1636 (=> (and (inv!62312 x!739699) e!2650741) (= (list!17121 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739699))) (list!17121 x!739699))))))

(assert (= start!409318 b!4269399))

(declare-fun m!4862241 () Bool)

(assert (=> b!4269399 m!4862241))

(declare-fun m!4862243 () Bool)

(assert (=> start!409318 m!4862243))

(declare-fun m!4862245 () Bool)

(assert (=> start!409318 m!4862245))

(declare-fun m!4862247 () Bool)

(assert (=> start!409318 m!4862247))

(assert (=> start!409318 m!4862247))

(declare-fun m!4862249 () Bool)

(assert (=> start!409318 m!4862249))

(declare-fun m!4862251 () Bool)

(assert (=> start!409318 m!4862251))

(assert (=> start!409318 m!4862245))

(declare-fun res!1753946 () Bool)

(declare-fun e!2650744 () Bool)

(assert (=> b!4269389 (=> res!1753946 e!2650744)))

(declare-fun x!739700 () BalanceConc!28050)

(declare-fun x!739701 () BalanceConc!28050)

(assert (=> b!4269389 (= res!1753946 (not (= (list!17121 x!739700) (list!17121 x!739701))))))

(declare-fun e!2650743 () Bool)

(declare-fun e!2650742 () Bool)

(declare-fun inst!1637 () Bool)

(assert (=> b!4269389 (= inst!1637 (=> (and (inv!62312 x!739700) e!2650743 (inv!62312 x!739701) e!2650742) e!2650744))))

(declare-fun b!4269400 () Bool)

(assert (=> b!4269400 (= e!2650744 (= (toValue!13 thiss!2252 x!739700) (toValue!13 thiss!2252 x!739701)))))

(declare-fun b!4269401 () Bool)

(declare-fun tp!1307806 () Bool)

(assert (=> b!4269401 (= e!2650743 (and (inv!62311 (c!726225 x!739700)) tp!1307806))))

(declare-fun b!4269402 () Bool)

(declare-fun tp!1307807 () Bool)

(assert (=> b!4269402 (= e!2650742 (and (inv!62311 (c!726225 x!739701)) tp!1307807))))

(assert (= (and b!4269389 (not res!1753946)) b!4269400))

(assert (= b!4269389 b!4269401))

(assert (= b!4269389 b!4269402))

(declare-fun m!4862253 () Bool)

(assert (=> b!4269389 m!4862253))

(declare-fun m!4862255 () Bool)

(assert (=> b!4269389 m!4862255))

(declare-fun m!4862257 () Bool)

(assert (=> b!4269389 m!4862257))

(declare-fun m!4862259 () Bool)

(assert (=> b!4269389 m!4862259))

(declare-fun m!4862261 () Bool)

(assert (=> b!4269400 m!4862261))

(declare-fun m!4862263 () Bool)

(assert (=> b!4269400 m!4862263))

(declare-fun m!4862265 () Bool)

(assert (=> b!4269401 m!4862265))

(declare-fun m!4862267 () Bool)

(assert (=> b!4269402 m!4862267))

(declare-fun bs!600132 () Bool)

(declare-fun neg-inst!1636 () Bool)

(declare-fun s!239472 () Bool)

(assert (= bs!600132 (and neg-inst!1636 s!239472)))

(assert (=> bs!600132 (=> true (= (list!17121 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739699))) (list!17121 x!739699)))))

(assert (=> m!4862251 m!4862245))

(assert (=> m!4862251 m!4862247))

(assert (=> m!4862251 m!4862249))

(assert (=> m!4862251 s!239472))

(assert (=> m!4862245 s!239472))

(declare-fun bs!600133 () Bool)

(assert (= bs!600133 (and neg-inst!1636 start!409318)))

(assert (=> bs!600133 (= true inst!1636)))

(declare-fun bs!600134 () Bool)

(declare-fun neg-inst!1637 () Bool)

(declare-fun s!239474 () Bool)

(assert (= bs!600134 (and neg-inst!1637 s!239474)))

(declare-fun res!1753947 () Bool)

(declare-fun e!2650745 () Bool)

(assert (=> bs!600134 (=> res!1753947 e!2650745)))

(assert (=> bs!600134 (= res!1753947 (not (= (list!17121 x!739699) (list!17121 x!739699))))))

(assert (=> bs!600134 (=> true e!2650745)))

(declare-fun b!4269403 () Bool)

(assert (=> b!4269403 (= e!2650745 (= (toValue!13 thiss!2252 x!739699) (toValue!13 thiss!2252 x!739699)))))

(assert (= (and bs!600134 (not res!1753947)) b!4269403))

(assert (=> m!4862251 s!239474))

(assert (=> m!4862251 s!239474))

(declare-fun bs!600135 () Bool)

(declare-fun s!239476 () Bool)

(assert (= bs!600135 (and neg-inst!1637 s!239476)))

(declare-fun res!1753948 () Bool)

(declare-fun e!2650746 () Bool)

(assert (=> bs!600135 (=> res!1753948 e!2650746)))

(assert (=> bs!600135 (= res!1753948 (not (= (list!17121 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739699))) (list!17121 x!739699))))))

(assert (=> bs!600135 (=> true e!2650746)))

(declare-fun b!4269404 () Bool)

(assert (=> b!4269404 (= e!2650746 (= (toValue!13 thiss!2252 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739699))) (toValue!13 thiss!2252 x!739699)))))

(assert (= (and bs!600135 (not res!1753948)) b!4269404))

(declare-fun bs!600136 () Bool)

(assert (= bs!600136 (and m!4862249 m!4862251)))

(assert (=> bs!600136 m!4862249))

(assert (=> bs!600136 m!4862251))

(assert (=> bs!600136 s!239476))

(declare-fun bs!600137 () Bool)

(declare-fun s!239478 () Bool)

(assert (= bs!600137 (and neg-inst!1637 s!239478)))

(declare-fun res!1753949 () Bool)

(declare-fun e!2650747 () Bool)

(assert (=> bs!600137 (=> res!1753949 e!2650747)))

(assert (=> bs!600137 (= res!1753949 (not (= (list!17121 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739699))) (list!17121 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739699))))))))

(assert (=> bs!600137 (=> true e!2650747)))

(declare-fun b!4269405 () Bool)

(assert (=> b!4269405 (= e!2650747 (= (toValue!13 thiss!2252 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739699))) (toValue!13 thiss!2252 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739699)))))))

(assert (= (and bs!600137 (not res!1753949)) b!4269405))

(assert (=> m!4862249 s!239478))

(declare-fun bs!600138 () Bool)

(declare-fun s!239480 () Bool)

(assert (= bs!600138 (and neg-inst!1637 s!239480)))

(declare-fun res!1753950 () Bool)

(declare-fun e!2650748 () Bool)

(assert (=> bs!600138 (=> res!1753950 e!2650748)))

(assert (=> bs!600138 (= res!1753950 (not (= (list!17121 x!739699) (list!17121 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739699))))))))

(assert (=> bs!600138 (=> true e!2650748)))

(declare-fun b!4269406 () Bool)

(assert (=> b!4269406 (= e!2650748 (= (toValue!13 thiss!2252 x!739699) (toValue!13 thiss!2252 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739699)))))))

(assert (= (and bs!600138 (not res!1753950)) b!4269406))

(assert (=> bs!600136 m!4862251))

(assert (=> bs!600136 m!4862249))

(assert (=> bs!600136 s!239480))

(assert (=> m!4862249 s!239478))

(declare-fun bs!600139 () Bool)

(declare-fun s!239482 () Bool)

(assert (= bs!600139 (and neg-inst!1637 s!239482)))

(declare-fun res!1753951 () Bool)

(declare-fun e!2650749 () Bool)

(assert (=> bs!600139 (=> res!1753951 e!2650749)))

(assert (=> bs!600139 (= res!1753951 (not (= (list!17121 x!739700) (list!17121 x!739699))))))

(assert (=> bs!600139 (=> true e!2650749)))

(declare-fun b!4269407 () Bool)

(assert (=> b!4269407 (= e!2650749 (= (toValue!13 thiss!2252 x!739700) (toValue!13 thiss!2252 x!739699)))))

(assert (= (and bs!600139 (not res!1753951)) b!4269407))

(declare-fun bs!600140 () Bool)

(assert (= bs!600140 (and m!4862261 m!4862251)))

(assert (=> bs!600140 m!4862253))

(assert (=> bs!600140 m!4862251))

(assert (=> bs!600140 s!239482))

(declare-fun bs!600141 () Bool)

(declare-fun s!239484 () Bool)

(assert (= bs!600141 (and neg-inst!1637 s!239484)))

(declare-fun res!1753952 () Bool)

(declare-fun e!2650750 () Bool)

(assert (=> bs!600141 (=> res!1753952 e!2650750)))

(assert (=> bs!600141 (= res!1753952 (not (= (list!17121 x!739700) (list!17121 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739699))))))))

(assert (=> bs!600141 (=> true e!2650750)))

(declare-fun b!4269408 () Bool)

(assert (=> b!4269408 (= e!2650750 (= (toValue!13 thiss!2252 x!739700) (toValue!13 thiss!2252 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739699)))))))

(assert (= (and bs!600141 (not res!1753952)) b!4269408))

(declare-fun bs!600142 () Bool)

(assert (= bs!600142 (and m!4862261 m!4862249)))

(assert (=> bs!600142 m!4862253))

(assert (=> bs!600142 m!4862249))

(assert (=> bs!600142 s!239484))

(declare-fun bs!600143 () Bool)

(declare-fun s!239486 () Bool)

(assert (= bs!600143 (and neg-inst!1637 s!239486)))

(declare-fun res!1753953 () Bool)

(declare-fun e!2650751 () Bool)

(assert (=> bs!600143 (=> res!1753953 e!2650751)))

(assert (=> bs!600143 (= res!1753953 (not (= (list!17121 x!739700) (list!17121 x!739700))))))

(assert (=> bs!600143 (=> true e!2650751)))

(declare-fun b!4269409 () Bool)

(assert (=> b!4269409 (= e!2650751 (= (toValue!13 thiss!2252 x!739700) (toValue!13 thiss!2252 x!739700)))))

(assert (= (and bs!600143 (not res!1753953)) b!4269409))

(assert (=> m!4862261 m!4862253))

(assert (=> m!4862261 m!4862253))

(assert (=> m!4862261 s!239486))

(declare-fun bs!600144 () Bool)

(declare-fun s!239488 () Bool)

(assert (= bs!600144 (and neg-inst!1637 s!239488)))

(declare-fun res!1753954 () Bool)

(declare-fun e!2650752 () Bool)

(assert (=> bs!600144 (=> res!1753954 e!2650752)))

(assert (=> bs!600144 (= res!1753954 (not (= (list!17121 x!739699) (list!17121 x!739700))))))

(assert (=> bs!600144 (=> true e!2650752)))

(declare-fun b!4269410 () Bool)

(assert (=> b!4269410 (= e!2650752 (= (toValue!13 thiss!2252 x!739699) (toValue!13 thiss!2252 x!739700)))))

(assert (= (and bs!600144 (not res!1753954)) b!4269410))

(assert (=> bs!600140 m!4862251))

(assert (=> bs!600140 m!4862253))

(assert (=> bs!600140 s!239488))

(declare-fun bs!600145 () Bool)

(declare-fun s!239490 () Bool)

(assert (= bs!600145 (and neg-inst!1637 s!239490)))

(declare-fun res!1753955 () Bool)

(declare-fun e!2650753 () Bool)

(assert (=> bs!600145 (=> res!1753955 e!2650753)))

(assert (=> bs!600145 (= res!1753955 (not (= (list!17121 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739699))) (list!17121 x!739700))))))

(assert (=> bs!600145 (=> true e!2650753)))

(declare-fun b!4269411 () Bool)

(assert (=> b!4269411 (= e!2650753 (= (toValue!13 thiss!2252 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739699))) (toValue!13 thiss!2252 x!739700)))))

(assert (= (and bs!600145 (not res!1753955)) b!4269411))

(assert (=> bs!600142 m!4862249))

(assert (=> bs!600142 m!4862253))

(assert (=> bs!600142 s!239490))

(assert (=> m!4862261 s!239486))

(declare-fun bs!600146 () Bool)

(declare-fun s!239492 () Bool)

(assert (= bs!600146 (and neg-inst!1637 s!239492)))

(declare-fun res!1753956 () Bool)

(declare-fun e!2650754 () Bool)

(assert (=> bs!600146 (=> res!1753956 e!2650754)))

(assert (=> bs!600146 (= res!1753956 (not (= (list!17121 x!739701) (list!17121 x!739700))))))

(assert (=> bs!600146 (=> true e!2650754)))

(declare-fun b!4269412 () Bool)

(assert (=> b!4269412 (= e!2650754 (= (toValue!13 thiss!2252 x!739701) (toValue!13 thiss!2252 x!739700)))))

(assert (= (and bs!600146 (not res!1753956)) b!4269412))

(declare-fun bs!600147 () Bool)

(assert (= bs!600147 (and m!4862263 m!4862261)))

(assert (=> bs!600147 m!4862255))

(assert (=> bs!600147 m!4862253))

(assert (=> bs!600147 s!239492))

(declare-fun bs!600148 () Bool)

(declare-fun s!239494 () Bool)

(assert (= bs!600148 (and neg-inst!1637 s!239494)))

(declare-fun res!1753957 () Bool)

(declare-fun e!2650755 () Bool)

(assert (=> bs!600148 (=> res!1753957 e!2650755)))

(assert (=> bs!600148 (= res!1753957 (not (= (list!17121 x!739701) (list!17121 x!739699))))))

(assert (=> bs!600148 (=> true e!2650755)))

(declare-fun b!4269413 () Bool)

(assert (=> b!4269413 (= e!2650755 (= (toValue!13 thiss!2252 x!739701) (toValue!13 thiss!2252 x!739699)))))

(assert (= (and bs!600148 (not res!1753957)) b!4269413))

(declare-fun bs!600149 () Bool)

(assert (= bs!600149 (and m!4862263 m!4862251)))

(assert (=> bs!600149 m!4862255))

(assert (=> bs!600149 m!4862251))

(assert (=> bs!600149 s!239494))

(declare-fun bs!600150 () Bool)

(declare-fun s!239496 () Bool)

(assert (= bs!600150 (and neg-inst!1637 s!239496)))

(declare-fun res!1753958 () Bool)

(declare-fun e!2650756 () Bool)

(assert (=> bs!600150 (=> res!1753958 e!2650756)))

(assert (=> bs!600150 (= res!1753958 (not (= (list!17121 x!739701) (list!17121 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739699))))))))

(assert (=> bs!600150 (=> true e!2650756)))

(declare-fun b!4269414 () Bool)

(assert (=> b!4269414 (= e!2650756 (= (toValue!13 thiss!2252 x!739701) (toValue!13 thiss!2252 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739699)))))))

(assert (= (and bs!600150 (not res!1753958)) b!4269414))

(declare-fun bs!600151 () Bool)

(assert (= bs!600151 (and m!4862263 m!4862249)))

(assert (=> bs!600151 m!4862255))

(assert (=> bs!600151 m!4862249))

(assert (=> bs!600151 s!239496))

(declare-fun bs!600152 () Bool)

(declare-fun s!239498 () Bool)

(assert (= bs!600152 (and neg-inst!1637 s!239498)))

(declare-fun res!1753959 () Bool)

(declare-fun e!2650757 () Bool)

(assert (=> bs!600152 (=> res!1753959 e!2650757)))

(assert (=> bs!600152 (= res!1753959 (not (= (list!17121 x!739701) (list!17121 x!739701))))))

(assert (=> bs!600152 (=> true e!2650757)))

(declare-fun b!4269415 () Bool)

(assert (=> b!4269415 (= e!2650757 (= (toValue!13 thiss!2252 x!739701) (toValue!13 thiss!2252 x!739701)))))

(assert (= (and bs!600152 (not res!1753959)) b!4269415))

(assert (=> m!4862263 m!4862255))

(assert (=> m!4862263 m!4862255))

(assert (=> m!4862263 s!239498))

(declare-fun bs!600153 () Bool)

(declare-fun s!239500 () Bool)

(assert (= bs!600153 (and neg-inst!1637 s!239500)))

(declare-fun res!1753960 () Bool)

(declare-fun e!2650758 () Bool)

(assert (=> bs!600153 (=> res!1753960 e!2650758)))

(assert (=> bs!600153 (= res!1753960 (not (= (list!17121 x!739700) (list!17121 x!739701))))))

(assert (=> bs!600153 (=> true e!2650758)))

(declare-fun b!4269416 () Bool)

(assert (=> b!4269416 (= e!2650758 (= (toValue!13 thiss!2252 x!739700) (toValue!13 thiss!2252 x!739701)))))

(assert (= (and bs!600153 (not res!1753960)) b!4269416))

(assert (=> bs!600147 m!4862253))

(assert (=> bs!600147 m!4862255))

(assert (=> bs!600147 s!239500))

(declare-fun bs!600154 () Bool)

(declare-fun s!239502 () Bool)

(assert (= bs!600154 (and neg-inst!1637 s!239502)))

(declare-fun res!1753961 () Bool)

(declare-fun e!2650759 () Bool)

(assert (=> bs!600154 (=> res!1753961 e!2650759)))

(assert (=> bs!600154 (= res!1753961 (not (= (list!17121 x!739699) (list!17121 x!739701))))))

(assert (=> bs!600154 (=> true e!2650759)))

(declare-fun b!4269417 () Bool)

(assert (=> b!4269417 (= e!2650759 (= (toValue!13 thiss!2252 x!739699) (toValue!13 thiss!2252 x!739701)))))

(assert (= (and bs!600154 (not res!1753961)) b!4269417))

(assert (=> bs!600149 m!4862251))

(assert (=> bs!600149 m!4862255))

(assert (=> bs!600149 s!239502))

(declare-fun bs!600155 () Bool)

(declare-fun s!239504 () Bool)

(assert (= bs!600155 (and neg-inst!1637 s!239504)))

(declare-fun res!1753962 () Bool)

(declare-fun e!2650760 () Bool)

(assert (=> bs!600155 (=> res!1753962 e!2650760)))

(assert (=> bs!600155 (= res!1753962 (not (= (list!17121 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739699))) (list!17121 x!739701))))))

(assert (=> bs!600155 (=> true e!2650760)))

(declare-fun b!4269418 () Bool)

(assert (=> b!4269418 (= e!2650760 (= (toValue!13 thiss!2252 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739699))) (toValue!13 thiss!2252 x!739701)))))

(assert (= (and bs!600155 (not res!1753962)) b!4269418))

(assert (=> bs!600151 m!4862249))

(assert (=> bs!600151 m!4862255))

(assert (=> bs!600151 s!239504))

(assert (=> m!4862263 s!239498))

(declare-fun bs!600156 () Bool)

(assert (= bs!600156 (and m!4862245 m!4862261)))

(assert (=> bs!600156 s!239488))

(declare-fun bs!600157 () Bool)

(assert (= bs!600157 (and m!4862245 m!4862251)))

(assert (=> bs!600157 s!239474))

(assert (=> m!4862245 s!239474))

(declare-fun bs!600158 () Bool)

(assert (= bs!600158 (and m!4862245 m!4862249)))

(assert (=> bs!600158 s!239480))

(declare-fun bs!600159 () Bool)

(assert (= bs!600159 (and m!4862245 m!4862263)))

(assert (=> bs!600159 s!239502))

(assert (=> bs!600157 s!239474))

(assert (=> bs!600158 s!239476))

(assert (=> bs!600159 s!239494))

(assert (=> m!4862245 s!239474))

(assert (=> bs!600156 s!239482))

(declare-fun bs!600160 () Bool)

(assert (= bs!600160 (and m!4862255 m!4862249)))

(assert (=> bs!600160 s!239496))

(assert (=> m!4862255 s!239498))

(declare-fun bs!600161 () Bool)

(assert (= bs!600161 (and m!4862255 m!4862251 m!4862245)))

(assert (=> bs!600161 s!239494))

(declare-fun bs!600162 () Bool)

(assert (= bs!600162 (and m!4862255 m!4862261)))

(assert (=> bs!600162 s!239492))

(declare-fun bs!600163 () Bool)

(assert (= bs!600163 (and m!4862255 m!4862263)))

(assert (=> bs!600163 s!239498))

(assert (=> bs!600162 s!239500))

(assert (=> m!4862255 s!239498))

(assert (=> bs!600161 s!239502))

(assert (=> bs!600160 s!239504))

(assert (=> bs!600163 s!239498))

(declare-fun bs!600164 () Bool)

(assert (= bs!600164 (and m!4862253 m!4862263 m!4862255)))

(assert (=> bs!600164 s!239500))

(declare-fun bs!600165 () Bool)

(assert (= bs!600165 (and m!4862253 m!4862251 m!4862245)))

(assert (=> bs!600165 s!239482))

(declare-fun bs!600166 () Bool)

(assert (= bs!600166 (and m!4862253 m!4862249)))

(assert (=> bs!600166 s!239484))

(declare-fun bs!600167 () Bool)

(assert (= bs!600167 (and m!4862253 m!4862261)))

(assert (=> bs!600167 s!239486))

(assert (=> m!4862253 s!239486))

(assert (=> bs!600166 s!239490))

(assert (=> bs!600164 s!239492))

(assert (=> bs!600165 s!239488))

(assert (=> bs!600167 s!239486))

(assert (=> m!4862253 s!239486))

(declare-fun bs!600168 () Bool)

(assert (= bs!600168 (and neg-inst!1637 b!4269389)))

(assert (=> bs!600168 (= true inst!1637)))

(declare-fun res!1753944 () Bool)

(declare-fun e!2650739 () Bool)

(assert (=> start!409318 (=> res!1753944 e!2650739)))

(declare-fun lambda!130606 () Int)

(declare-fun Forall!1623 (Int) Bool)

(assert (=> start!409318 (= res!1753944 (not (Forall!1623 lambda!130606)))))

(assert (=> start!409318 (= (Forall!1623 lambda!130606) inst!1636)))

(assert (=> start!409318 (not e!2650739)))

(assert (=> start!409318 true))

(declare-fun e!2650740 () Bool)

(assert (=> b!4269389 (= e!2650739 e!2650740)))

(declare-fun res!1753945 () Bool)

(assert (=> b!4269389 (=> res!1753945 e!2650740)))

(declare-fun lambda!130609 () Int)

(declare-fun Forall2!1216 (Int) Bool)

(assert (=> b!4269389 (= res!1753945 (not (Forall2!1216 lambda!130609)))))

(assert (=> b!4269389 (= (Forall2!1216 lambda!130609) inst!1637)))

(declare-fun lambda!130607 () Int)

(declare-fun lambda!130608 () Int)

(declare-fun semiInverseModEq!3501 (Int Int) Bool)

(assert (=> b!4269389 (= (semiInverseModEq!3501 lambda!130607 lambda!130608) (Forall!1623 lambda!130606))))

(declare-fun b!4269390 () Bool)

(declare-datatypes ((TokenValueInjection!15882 0))(
  ( (TokenValueInjection!15883 (toValue!10787 Int) (toChars!10646 Int)) )
))
(declare-fun inv!62313 (TokenValueInjection!15882) Bool)

(assert (=> b!4269390 (= e!2650740 (inv!62313 (TokenValueInjection!15883 lambda!130608 lambda!130607)))))

(declare-fun equivClasses!3394 (Int Int) Bool)

(assert (=> b!4269390 (= (equivClasses!3394 lambda!130607 lambda!130608) (Forall2!1216 lambda!130609))))

(assert (= neg-inst!1636 inst!1636))

(assert (= (and start!409318 (not res!1753944)) b!4269389))

(assert (= neg-inst!1637 inst!1637))

(assert (= (and b!4269389 (not res!1753945)) b!4269390))

(declare-fun m!4862269 () Bool)

(assert (=> start!409318 m!4862269))

(assert (=> start!409318 m!4862269))

(declare-fun m!4862271 () Bool)

(assert (=> b!4269389 m!4862271))

(assert (=> b!4269389 m!4862271))

(declare-fun m!4862273 () Bool)

(assert (=> b!4269389 m!4862273))

(assert (=> b!4269389 m!4862269))

(declare-fun m!4862275 () Bool)

(assert (=> b!4269390 m!4862275))

(declare-fun m!4862277 () Bool)

(assert (=> b!4269390 m!4862277))

(assert (=> b!4269390 m!4862271))

(push 1)

(assert (not b!4269402))

(assert (not b!4269411))

(assert (not bs!600144))

(assert (not bs!600145))

(assert (not bs!600139))

(assert (not b!4269415))

(assert (not bs!600137))

(assert (not b!4269405))

(assert (not b!4269400))

(assert (not bs!600132))

(assert (not b!4269409))

(assert (not b!4269408))

(assert (not b!4269403))

(assert (not b!4269404))

(assert (not b!4269413))

(assert (not b!4269410))

(assert (not b!4269406))

(assert (not bs!600153))

(assert (not b!4269416))

(assert (not b!4269418))

(assert (not bs!600146))

(assert (not b!4269417))

(assert (not bs!600138))

(assert (not bs!600134))

(assert (not bs!600152))

(assert (not b!4269401))

(assert (not b!4269390))

(assert (not b!4269399))

(assert (not bs!600150))

(assert (not bs!600154))

(assert (not b!4269389))

(assert (not b!4269407))

(assert (not bs!600155))

(assert (not bs!600148))

(assert (not bs!600135))

(assert (not start!409318))

(assert (not bs!600143))

(assert (not b!4269412))

(assert (not b!4269414))

(assert (not bs!600141))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!600203 () Bool)

(assert (= bs!600203 (and m!4862251 b!4269403)))

(assert (=> bs!600203 m!4862245))

(assert (=> bs!600203 m!4862245))

(declare-fun bs!600204 () Bool)

(assert (= bs!600204 (and m!4862249 m!4862251 b!4269404)))

(declare-fun m!4862317 () Bool)

(assert (=> bs!600204 m!4862317))

(assert (=> bs!600204 m!4862245))

(declare-fun bs!600205 () Bool)

(assert (= bs!600205 (and m!4862249 b!4269405)))

(assert (=> bs!600205 m!4862317))

(assert (=> bs!600205 m!4862317))

(declare-fun bs!600206 () Bool)

(assert (= bs!600206 (and m!4862249 m!4862251 b!4269406)))

(assert (=> bs!600206 m!4862245))

(assert (=> bs!600206 m!4862317))

(declare-fun bs!600207 () Bool)

(assert (= bs!600207 (and m!4862261 m!4862251 b!4269407)))

(assert (=> bs!600207 m!4862261))

(assert (=> bs!600207 m!4862245))

(declare-fun bs!600208 () Bool)

(assert (= bs!600208 (and m!4862261 m!4862249 b!4269408)))

(assert (=> bs!600208 m!4862261))

(assert (=> bs!600208 m!4862317))

(declare-fun bs!600209 () Bool)

(assert (= bs!600209 (and m!4862261 b!4269409)))

(assert (=> bs!600209 m!4862261))

(assert (=> bs!600209 m!4862261))

(declare-fun bs!600210 () Bool)

(assert (= bs!600210 (and m!4862261 m!4862251 b!4269410)))

(assert (=> bs!600210 m!4862245))

(assert (=> bs!600210 m!4862261))

(declare-fun bs!600211 () Bool)

(assert (= bs!600211 (and m!4862261 m!4862249 b!4269411)))

(assert (=> bs!600211 m!4862317))

(assert (=> bs!600211 m!4862261))

(declare-fun bs!600212 () Bool)

(assert (= bs!600212 (and m!4862263 m!4862261 b!4269412)))

(assert (=> bs!600212 m!4862263))

(assert (=> bs!600212 m!4862261))

(declare-fun bs!600213 () Bool)

(assert (= bs!600213 (and m!4862263 m!4862251 b!4269413)))

(assert (=> bs!600213 m!4862263))

(assert (=> bs!600213 m!4862245))

(declare-fun bs!600214 () Bool)

(assert (= bs!600214 (and m!4862263 m!4862249 b!4269414)))

(assert (=> bs!600214 m!4862263))

(assert (=> bs!600214 m!4862317))

(declare-fun bs!600215 () Bool)

(assert (= bs!600215 (and m!4862263 b!4269415)))

(assert (=> bs!600215 m!4862263))

(assert (=> bs!600215 m!4862263))

(declare-fun bs!600216 () Bool)

(assert (= bs!600216 (and m!4862263 m!4862261 b!4269416)))

(assert (=> bs!600216 m!4862261))

(assert (=> bs!600216 m!4862263))

(declare-fun bs!600217 () Bool)

(assert (= bs!600217 (and m!4862263 m!4862251 b!4269417)))

(assert (=> bs!600217 m!4862245))

(assert (=> bs!600217 m!4862263))

(declare-fun bs!600218 () Bool)

(assert (= bs!600218 (and m!4862263 m!4862249 b!4269418)))

(assert (=> bs!600218 m!4862317))

(assert (=> bs!600218 m!4862263))

(push 1)

(assert (not b!4269402))

(assert (not b!4269411))

(assert (not bs!600144))

(assert (not bs!600145))

(assert (not bs!600139))

(assert (not b!4269415))

(assert (not bs!600137))

(assert (not b!4269405))

(assert (not b!4269400))

(assert (not bs!600132))

(assert (not b!4269409))

(assert (not b!4269408))

(assert (not b!4269403))

(assert (not b!4269404))

(assert (not b!4269413))

(assert (not b!4269410))

(assert (not b!4269406))

(assert (not bs!600153))

(assert (not b!4269416))

(assert (not b!4269418))

(assert (not bs!600146))

(assert (not b!4269417))

(assert (not bs!600138))

(assert (not bs!600134))

(assert (not bs!600152))

(assert (not b!4269401))

(assert (not b!4269390))

(assert (not b!4269399))

(assert (not bs!600150))

(assert (not bs!600154))

(assert (not b!4269389))

(assert (not b!4269407))

(assert (not bs!600155))

(assert (not bs!600148))

(assert (not bs!600135))

(assert (not start!409318))

(assert (not bs!600143))

(assert (not b!4269412))

(assert (not b!4269414))

(assert (not bs!600141))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1259001 () Bool)

(declare-fun efficientList!465 (BalanceConc!28050) List!47412)

(assert (=> d!1259001 (= (toValue!13 thiss!2252 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739699))) (IdentifierValue!16487 (efficientList!465 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739699)))))))

(declare-fun bs!600235 () Bool)

(assert (= bs!600235 d!1259001))

(assert (=> bs!600235 m!4862247))

(declare-fun m!4862321 () Bool)

(assert (=> bs!600235 m!4862321))

(assert (=> b!4269411 d!1259001))

(declare-fun d!1259003 () Bool)

(assert (=> d!1259003 (= (toValue!13 thiss!2252 x!739700) (IdentifierValue!16487 (efficientList!465 x!739700)))))

(declare-fun bs!600236 () Bool)

(assert (= bs!600236 d!1259003))

(declare-fun m!4862323 () Bool)

(assert (=> bs!600236 m!4862323))

(assert (=> b!4269411 d!1259003))

(declare-fun d!1259005 () Bool)

(declare-fun list!17123 (Conc!14270) List!47412)

(assert (=> d!1259005 (= (list!17121 x!739700) (list!17123 (c!726225 x!739700)))))

(declare-fun bs!600237 () Bool)

(assert (= bs!600237 d!1259005))

(declare-fun m!4862325 () Bool)

(assert (=> bs!600237 m!4862325))

(assert (=> bs!600141 d!1259005))

(declare-fun d!1259007 () Bool)

(assert (=> d!1259007 (= (list!17121 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739699))) (list!17123 (c!726225 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739699)))))))

(declare-fun bs!600238 () Bool)

(assert (= bs!600238 d!1259007))

(declare-fun m!4862327 () Bool)

(assert (=> bs!600238 m!4862327))

(assert (=> bs!600141 d!1259007))

(assert (=> bs!600155 d!1259007))

(declare-fun d!1259009 () Bool)

(assert (=> d!1259009 (= (list!17121 x!739701) (list!17123 (c!726225 x!739701)))))

(declare-fun bs!600239 () Bool)

(assert (= bs!600239 d!1259009))

(declare-fun m!4862329 () Bool)

(assert (=> bs!600239 m!4862329))

(assert (=> bs!600155 d!1259009))

(declare-fun d!1259011 () Bool)

(assert (=> d!1259011 (= (toValue!13 thiss!2252 x!739701) (IdentifierValue!16487 (efficientList!465 x!739701)))))

(declare-fun bs!600240 () Bool)

(assert (= bs!600240 d!1259011))

(declare-fun m!4862331 () Bool)

(assert (=> bs!600240 m!4862331))

(assert (=> b!4269414 d!1259011))

(assert (=> b!4269414 d!1259001))

(assert (=> b!4269404 d!1259001))

(declare-fun d!1259013 () Bool)

(assert (=> d!1259013 (= (toValue!13 thiss!2252 x!739699) (IdentifierValue!16487 (efficientList!465 x!739699)))))

(declare-fun bs!600241 () Bool)

(assert (= bs!600241 d!1259013))

(declare-fun m!4862333 () Bool)

(assert (=> bs!600241 m!4862333))

(assert (=> b!4269404 d!1259013))

(assert (=> bs!600152 d!1259009))

(assert (=> b!4269408 d!1259003))

(assert (=> b!4269408 d!1259001))

(assert (=> b!4269418 d!1259001))

(assert (=> b!4269418 d!1259011))

(assert (=> bs!600137 d!1259007))

(assert (=> b!4269405 d!1259001))

(assert (=> bs!600146 d!1259009))

(assert (=> bs!600146 d!1259005))

(declare-fun d!1259015 () Bool)

(assert (=> d!1259015 (= (list!17121 x!739699) (list!17123 (c!726225 x!739699)))))

(declare-fun bs!600242 () Bool)

(assert (= bs!600242 d!1259015))

(declare-fun m!4862335 () Bool)

(assert (=> bs!600242 m!4862335))

(assert (=> bs!600138 d!1259015))

(assert (=> bs!600138 d!1259007))

(declare-fun d!1259017 () Bool)

(declare-fun c!726229 () Bool)

(assert (=> d!1259017 (= c!726229 (is-Node!14270 (c!726225 x!739700)))))

(declare-fun e!2650807 () Bool)

(assert (=> d!1259017 (= (inv!62311 (c!726225 x!739700)) e!2650807)))

(declare-fun b!4269475 () Bool)

(declare-fun inv!62317 (Conc!14270) Bool)

(assert (=> b!4269475 (= e!2650807 (inv!62317 (c!726225 x!739700)))))

(declare-fun b!4269476 () Bool)

(declare-fun e!2650808 () Bool)

(assert (=> b!4269476 (= e!2650807 e!2650808)))

(declare-fun res!1754004 () Bool)

(assert (=> b!4269476 (= res!1754004 (not (is-Leaf!22061 (c!726225 x!739700))))))

(assert (=> b!4269476 (=> res!1754004 e!2650808)))

(declare-fun b!4269477 () Bool)

(declare-fun inv!62318 (Conc!14270) Bool)

(assert (=> b!4269477 (= e!2650808 (inv!62318 (c!726225 x!739700)))))

(assert (= (and d!1259017 c!726229) b!4269475))

(assert (= (and d!1259017 (not c!726229)) b!4269476))

(assert (= (and b!4269476 (not res!1754004)) b!4269477))

(declare-fun m!4862337 () Bool)

(assert (=> b!4269475 m!4862337))

(declare-fun m!4862339 () Bool)

(assert (=> b!4269477 m!4862339))

(assert (=> b!4269401 d!1259017))

(assert (=> b!4269400 d!1259003))

(assert (=> b!4269400 d!1259011))

(assert (=> bs!600143 d!1259005))

(assert (=> bs!600132 d!1259007))

(declare-fun d!1259019 () Bool)

(declare-fun c!726233 () Bool)

(assert (=> d!1259019 (= c!726233 (is-IdentifierValue!16487 (toValue!13 thiss!2252 x!739699)))))

(declare-fun e!2650811 () BalanceConc!28050)

(assert (=> d!1259019 (= (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739699)) e!2650811)))

(declare-fun b!4269482 () Bool)

(declare-fun seqFromList!5860 (List!47412) BalanceConc!28050)

(assert (=> b!4269482 (= e!2650811 (seqFromList!5860 (value!248924 (toValue!13 thiss!2252 x!739699))))))

(declare-fun b!4269483 () Bool)

(assert (=> b!4269483 (= e!2650811 (BalanceConc!28051 Empty!14270))))

(assert (= (and d!1259019 c!726233) b!4269482))

(assert (= (and d!1259019 (not c!726233)) b!4269483))

(declare-fun m!4862341 () Bool)

(assert (=> b!4269482 m!4862341))

(assert (=> bs!600132 d!1259019))

(assert (=> bs!600132 d!1259013))

(assert (=> bs!600132 d!1259015))

(assert (=> b!4269412 d!1259011))

(assert (=> b!4269412 d!1259003))

(declare-fun d!1259021 () Bool)

(declare-fun c!726234 () Bool)

(assert (=> d!1259021 (= c!726234 (is-Node!14270 (c!726225 x!739699)))))

(declare-fun e!2650812 () Bool)

(assert (=> d!1259021 (= (inv!62311 (c!726225 x!739699)) e!2650812)))

(declare-fun b!4269484 () Bool)

(assert (=> b!4269484 (= e!2650812 (inv!62317 (c!726225 x!739699)))))

(declare-fun b!4269485 () Bool)

(declare-fun e!2650813 () Bool)

(assert (=> b!4269485 (= e!2650812 e!2650813)))

(declare-fun res!1754006 () Bool)

(assert (=> b!4269485 (= res!1754006 (not (is-Leaf!22061 (c!726225 x!739699))))))

(assert (=> b!4269485 (=> res!1754006 e!2650813)))

(declare-fun b!4269486 () Bool)

(assert (=> b!4269486 (= e!2650813 (inv!62318 (c!726225 x!739699)))))

(assert (= (and d!1259021 c!726234) b!4269484))

(assert (= (and d!1259021 (not c!726234)) b!4269485))

(assert (= (and b!4269485 (not res!1754006)) b!4269486))

(declare-fun m!4862343 () Bool)

(assert (=> b!4269484 m!4862343))

(declare-fun m!4862345 () Bool)

(assert (=> b!4269486 m!4862345))

(assert (=> b!4269399 d!1259021))

(assert (=> b!4269415 d!1259011))

(assert (=> b!4269406 d!1259013))

(assert (=> b!4269406 d!1259001))

(assert (=> b!4269389 d!1259009))

(declare-fun d!1259023 () Bool)

(declare-fun choose!26026 (Int) Bool)

(assert (=> d!1259023 (= (Forall2!1216 lambda!130609) (choose!26026 lambda!130609))))

(declare-fun bs!600243 () Bool)

(assert (= bs!600243 d!1259023))

(declare-fun m!4862347 () Bool)

(assert (=> bs!600243 m!4862347))

(assert (=> b!4269389 d!1259023))

(assert (=> b!4269389 d!1259005))

(declare-fun d!1259025 () Bool)

(declare-fun isBalanced!3826 (Conc!14270) Bool)

(assert (=> d!1259025 (= (inv!62312 x!739701) (isBalanced!3826 (c!726225 x!739701)))))

(declare-fun bs!600244 () Bool)

(assert (= bs!600244 d!1259025))

(declare-fun m!4862349 () Bool)

(assert (=> bs!600244 m!4862349))

(assert (=> b!4269389 d!1259025))

(declare-fun d!1259027 () Bool)

(declare-fun choose!26027 (Int) Bool)

(assert (=> d!1259027 (= (Forall!1623 lambda!130606) (choose!26027 lambda!130606))))

(declare-fun bs!600245 () Bool)

(assert (= bs!600245 d!1259027))

(declare-fun m!4862351 () Bool)

(assert (=> bs!600245 m!4862351))

(assert (=> b!4269389 d!1259027))

(declare-fun bs!600246 () Bool)

(declare-fun d!1259029 () Bool)

(assert (= bs!600246 (and d!1259029 start!409318)))

(declare-fun lambda!130640 () Int)

(assert (=> bs!600246 (not (= lambda!130640 lambda!130606))))

(assert (=> d!1259029 true))

(declare-fun order!24841 () Int)

(declare-fun order!24839 () Int)

(declare-fun dynLambda!20252 (Int Int) Int)

(declare-fun dynLambda!20253 (Int Int) Int)

(assert (=> d!1259029 (< (dynLambda!20252 order!24839 lambda!130607) (dynLambda!20253 order!24841 lambda!130640))))

(assert (=> d!1259029 true))

(declare-fun order!24843 () Int)

(declare-fun dynLambda!20254 (Int Int) Int)

(assert (=> d!1259029 (< (dynLambda!20254 order!24843 lambda!130608) (dynLambda!20253 order!24841 lambda!130640))))

(assert (=> d!1259029 (= (semiInverseModEq!3501 lambda!130607 lambda!130608) (Forall!1623 lambda!130640))))

(declare-fun bs!600247 () Bool)

(assert (= bs!600247 d!1259029))

(declare-fun m!4862353 () Bool)

(assert (=> bs!600247 m!4862353))

(assert (=> b!4269389 d!1259029))

(declare-fun d!1259031 () Bool)

(assert (=> d!1259031 (= (inv!62312 x!739700) (isBalanced!3826 (c!726225 x!739700)))))

(declare-fun bs!600248 () Bool)

(assert (= bs!600248 d!1259031))

(declare-fun m!4862355 () Bool)

(assert (=> bs!600248 m!4862355))

(assert (=> b!4269389 d!1259031))

(assert (=> bs!600134 d!1259015))

(assert (=> bs!600148 d!1259009))

(assert (=> bs!600148 d!1259015))

(assert (=> b!4269409 d!1259003))

(assert (=> bs!600153 d!1259005))

(assert (=> bs!600153 d!1259009))

(declare-fun d!1259033 () Bool)

(declare-fun c!726235 () Bool)

(assert (=> d!1259033 (= c!726235 (is-Node!14270 (c!726225 x!739701)))))

(declare-fun e!2650814 () Bool)

(assert (=> d!1259033 (= (inv!62311 (c!726225 x!739701)) e!2650814)))

(declare-fun b!4269491 () Bool)

(assert (=> b!4269491 (= e!2650814 (inv!62317 (c!726225 x!739701)))))

(declare-fun b!4269492 () Bool)

(declare-fun e!2650815 () Bool)

(assert (=> b!4269492 (= e!2650814 e!2650815)))

(declare-fun res!1754008 () Bool)

(assert (=> b!4269492 (= res!1754008 (not (is-Leaf!22061 (c!726225 x!739701))))))

(assert (=> b!4269492 (=> res!1754008 e!2650815)))

(declare-fun b!4269493 () Bool)

(assert (=> b!4269493 (= e!2650815 (inv!62318 (c!726225 x!739701)))))

(assert (= (and d!1259033 c!726235) b!4269491))

(assert (= (and d!1259033 (not c!726235)) b!4269492))

(assert (= (and b!4269492 (not res!1754008)) b!4269493))

(declare-fun m!4862357 () Bool)

(assert (=> b!4269491 m!4862357))

(declare-fun m!4862359 () Bool)

(assert (=> b!4269493 m!4862359))

(assert (=> b!4269402 d!1259033))

(assert (=> start!409318 d!1259007))

(assert (=> start!409318 d!1259027))

(assert (=> start!409318 d!1259019))

(assert (=> start!409318 d!1259015))

(declare-fun d!1259035 () Bool)

(assert (=> d!1259035 (= (inv!62312 x!739699) (isBalanced!3826 (c!726225 x!739699)))))

(declare-fun bs!600249 () Bool)

(assert (= bs!600249 d!1259035))

(declare-fun m!4862361 () Bool)

(assert (=> bs!600249 m!4862361))

(assert (=> start!409318 d!1259035))

(assert (=> start!409318 d!1259013))

(assert (=> b!4269403 d!1259013))

(assert (=> b!4269413 d!1259011))

(assert (=> b!4269413 d!1259013))

(assert (=> bs!600144 d!1259015))

(assert (=> bs!600144 d!1259005))

(assert (=> b!4269416 d!1259003))

(assert (=> b!4269416 d!1259011))

(declare-fun d!1259037 () Bool)

(declare-fun res!1754011 () Bool)

(declare-fun e!2650818 () Bool)

(assert (=> d!1259037 (=> (not res!1754011) (not e!2650818))))

(assert (=> d!1259037 (= res!1754011 (semiInverseModEq!3501 (toChars!10646 (TokenValueInjection!15883 lambda!130608 lambda!130607)) (toValue!10787 (TokenValueInjection!15883 lambda!130608 lambda!130607))))))

(assert (=> d!1259037 (= (inv!62313 (TokenValueInjection!15883 lambda!130608 lambda!130607)) e!2650818)))

(declare-fun b!4269496 () Bool)

(assert (=> b!4269496 (= e!2650818 (equivClasses!3394 (toChars!10646 (TokenValueInjection!15883 lambda!130608 lambda!130607)) (toValue!10787 (TokenValueInjection!15883 lambda!130608 lambda!130607))))))

(assert (= (and d!1259037 res!1754011) b!4269496))

(declare-fun m!4862363 () Bool)

(assert (=> d!1259037 m!4862363))

(declare-fun m!4862365 () Bool)

(assert (=> b!4269496 m!4862365))

(assert (=> b!4269390 d!1259037))

(declare-fun bs!600250 () Bool)

(declare-fun d!1259039 () Bool)

(assert (= bs!600250 (and d!1259039 b!4269389)))

(declare-fun lambda!130643 () Int)

(assert (=> bs!600250 (not (= lambda!130643 lambda!130609))))

(assert (=> d!1259039 true))

(declare-fun order!24845 () Int)

(declare-fun dynLambda!20255 (Int Int) Int)

(assert (=> d!1259039 (< (dynLambda!20254 order!24843 lambda!130608) (dynLambda!20255 order!24845 lambda!130643))))

(assert (=> d!1259039 (= (equivClasses!3394 lambda!130607 lambda!130608) (Forall2!1216 lambda!130643))))

(declare-fun bs!600251 () Bool)

(assert (= bs!600251 d!1259039))

(declare-fun m!4862367 () Bool)

(assert (=> bs!600251 m!4862367))

(assert (=> b!4269390 d!1259039))

(assert (=> b!4269390 d!1259023))

(assert (=> bs!600135 d!1259007))

(assert (=> bs!600135 d!1259015))

(assert (=> b!4269410 d!1259013))

(assert (=> b!4269410 d!1259003))

(assert (=> bs!600154 d!1259015))

(assert (=> bs!600154 d!1259009))

(assert (=> bs!600139 d!1259005))

(assert (=> bs!600139 d!1259015))

(assert (=> bs!600145 d!1259007))

(assert (=> bs!600145 d!1259005))

(assert (=> b!4269417 d!1259013))

(assert (=> b!4269417 d!1259011))

(assert (=> bs!600150 d!1259009))

(assert (=> bs!600150 d!1259007))

(assert (=> b!4269407 d!1259003))

(assert (=> b!4269407 d!1259013))

(declare-fun b!4269507 () Bool)

(declare-fun tp!1307822 () Bool)

(declare-fun tp!1307821 () Bool)

(declare-fun e!2650825 () Bool)

(assert (=> b!4269507 (= e!2650825 (and (inv!62311 (left!35102 (c!726225 x!739701))) tp!1307821 (inv!62311 (right!35432 (c!726225 x!739701))) tp!1307822))))

(declare-fun b!4269508 () Bool)

(declare-fun inv!62319 (IArray!28545) Bool)

(assert (=> b!4269508 (= e!2650825 (inv!62319 (xs!17576 (c!726225 x!739701))))))

(assert (=> b!4269402 (= tp!1307807 (and (inv!62311 (c!726225 x!739701)) e!2650825))))

(assert (= (and b!4269402 (is-Node!14270 (c!726225 x!739701))) b!4269507))

(assert (= (and b!4269402 (is-Leaf!22061 (c!726225 x!739701))) b!4269508))

(declare-fun m!4862369 () Bool)

(assert (=> b!4269507 m!4862369))

(declare-fun m!4862371 () Bool)

(assert (=> b!4269507 m!4862371))

(declare-fun m!4862373 () Bool)

(assert (=> b!4269508 m!4862373))

(assert (=> b!4269402 m!4862267))

(declare-fun e!2650827 () Bool)

(declare-fun b!4269509 () Bool)

(declare-fun tp!1307824 () Bool)

(declare-fun tp!1307823 () Bool)

(assert (=> b!4269509 (= e!2650827 (and (inv!62311 (left!35102 (c!726225 x!739700))) tp!1307823 (inv!62311 (right!35432 (c!726225 x!739700))) tp!1307824))))

(declare-fun b!4269510 () Bool)

(assert (=> b!4269510 (= e!2650827 (inv!62319 (xs!17576 (c!726225 x!739700))))))

(assert (=> b!4269401 (= tp!1307806 (and (inv!62311 (c!726225 x!739700)) e!2650827))))

(assert (= (and b!4269401 (is-Node!14270 (c!726225 x!739700))) b!4269509))

(assert (= (and b!4269401 (is-Leaf!22061 (c!726225 x!739700))) b!4269510))

(declare-fun m!4862375 () Bool)

(assert (=> b!4269509 m!4862375))

(declare-fun m!4862377 () Bool)

(assert (=> b!4269509 m!4862377))

(declare-fun m!4862379 () Bool)

(assert (=> b!4269510 m!4862379))

(assert (=> b!4269401 m!4862265))

(declare-fun e!2650829 () Bool)

(declare-fun b!4269511 () Bool)

(declare-fun tp!1307825 () Bool)

(declare-fun tp!1307826 () Bool)

(assert (=> b!4269511 (= e!2650829 (and (inv!62311 (left!35102 (c!726225 x!739699))) tp!1307825 (inv!62311 (right!35432 (c!726225 x!739699))) tp!1307826))))

(declare-fun b!4269512 () Bool)

(assert (=> b!4269512 (= e!2650829 (inv!62319 (xs!17576 (c!726225 x!739699))))))

(assert (=> b!4269399 (= tp!1307805 (and (inv!62311 (c!726225 x!739699)) e!2650829))))

(assert (= (and b!4269399 (is-Node!14270 (c!726225 x!739699))) b!4269511))

(assert (= (and b!4269399 (is-Leaf!22061 (c!726225 x!739699))) b!4269512))

(declare-fun m!4862381 () Bool)

(assert (=> b!4269511 m!4862381))

(declare-fun m!4862383 () Bool)

(assert (=> b!4269511 m!4862383))

(declare-fun m!4862385 () Bool)

(assert (=> b!4269512 m!4862385))

(assert (=> b!4269399 m!4862241))

(push 1)

(assert (not d!1259023))

(assert (not d!1259011))

(assert (not d!1259013))

(assert (not d!1259025))

(assert (not d!1259029))

(assert (not b!4269401))

(assert (not d!1259027))

(assert (not b!4269509))

(assert (not b!4269475))

(assert (not b!4269402))

(assert (not b!4269493))

(assert (not d!1259007))

(assert (not d!1259003))

(assert (not b!4269507))

(assert (not d!1259001))

(assert (not b!4269510))

(assert (not d!1259037))

(assert (not b!4269477))

(assert (not d!1259015))

(assert (not b!4269482))

(assert (not d!1259009))

(assert (not d!1259035))

(assert (not b!4269508))

(assert (not b!4269486))

(assert (not b!4269496))

(assert (not b!4269491))

(assert (not b!4269511))

(assert (not b!4269399))

(assert (not d!1259005))

(assert (not d!1259039))

(assert (not b!4269484))

(assert (not d!1259031))

(assert (not b!4269512))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

