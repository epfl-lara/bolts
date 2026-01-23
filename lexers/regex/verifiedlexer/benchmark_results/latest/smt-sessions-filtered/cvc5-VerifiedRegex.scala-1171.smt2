; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!60640 () Bool)

(assert start!60640)

(assert (=> start!60640 true))

(declare-fun b!628023 () Bool)

(assert (=> b!628023 true))

(assert (=> b!628023 true))

(declare-fun b!628024 () Bool)

(assert (=> b!628024 true))

(declare-fun b!628035 () Bool)

(declare-fun e!380946 () Bool)

(declare-datatypes ((List!6459 0))(
  ( (Nil!6449) (Cons!6449 (h!11850 (_ BitVec 16)) (t!82500 List!6459)) )
))
(declare-datatypes ((IArray!4171 0))(
  ( (IArray!4172 (innerList!2143 List!6459)) )
))
(declare-datatypes ((Conc!2085 0))(
  ( (Node!2085 (left!5148 Conc!2085) (right!5478 Conc!2085) (csize!4400 Int) (cheight!2296 Int)) (Leaf!3257 (xs!4726 IArray!4171) (csize!4401 Int)) (Empty!2085) )
))
(declare-datatypes ((BalanceConc!4178 0))(
  ( (BalanceConc!4179 (c!115439 Conc!2085)) )
))
(declare-fun x!130765 () BalanceConc!4178)

(declare-fun tp!196000 () Bool)

(declare-fun inv!8285 (Conc!2085) Bool)

(assert (=> b!628035 (= e!380946 (and (inv!8285 (c!115439 x!130765)) tp!196000))))

(declare-fun inst!256 () Bool)

(declare-datatypes ((IdentValueInjection!20 0))(
  ( (IdentValueInjection!21) )
))
(declare-fun thiss!4294 () IdentValueInjection!20)

(declare-fun inv!8286 (BalanceConc!4178) Bool)

(declare-fun list!2738 (BalanceConc!4178) List!6459)

(declare-datatypes ((TokenValue!1350 0))(
  ( (FloatLiteralValue!2700 (text!9895 List!6459)) (TokenValueExt!1349 (__x!4592 Int)) (Broken!6750 (value!42614 List!6459)) (Object!1359) (End!1350) (Def!1350) (Underscore!1350) (Match!1350) (Else!1350) (Error!1350) (Case!1350) (If!1350) (Extends!1350) (Abstract!1350) (Class!1350) (Val!1350) (DelimiterValue!2700 (del!1410 List!6459)) (KeywordValue!1356 (value!42615 List!6459)) (CommentValue!2700 (value!42616 List!6459)) (WhitespaceValue!2700 (value!42617 List!6459)) (IndentationValue!1350 (value!42618 List!6459)) (String!8483) (Int32!1350) (Broken!6751 (value!42619 List!6459)) (Boolean!1351) (Unit!11538) (OperatorValue!1353 (op!1410 List!6459)) (IdentifierValue!2700 (value!42620 List!6459)) (IdentifierValue!2701 (value!42621 List!6459)) (WhitespaceValue!2701 (value!42622 List!6459)) (True!2700) (False!2700) (Broken!6752 (value!42623 List!6459)) (Broken!6753 (value!42624 List!6459)) (True!2701) (RightBrace!1350) (RightBracket!1350) (Colon!1350) (Null!1350) (Comma!1350) (LeftBracket!1350) (False!2701) (LeftBrace!1350) (ImaginaryLiteralValue!1350 (text!9896 List!6459)) (StringLiteralValue!4050 (value!42625 List!6459)) (EOFValue!1350 (value!42626 List!6459)) (IdentValue!1350 (value!42627 List!6459)) (DelimiterValue!2701 (value!42628 List!6459)) (DedentValue!1350 (value!42629 List!6459)) (NewLineValue!1350 (value!42630 List!6459)) (IntegerValue!4050 (value!42631 (_ BitVec 32)) (text!9897 List!6459)) (IntegerValue!4051 (value!42632 Int) (text!9898 List!6459)) (Times!1350) (Or!1350) (Equal!1350) (Minus!1350) (Broken!6754 (value!42633 List!6459)) (And!1350) (Div!1350) (LessEqual!1350) (Mod!1350) (Concat!3002) (Not!1350) (Plus!1350) (SpaceValue!1350 (value!42634 List!6459)) (IntegerValue!4052 (value!42635 Int) (text!9899 List!6459)) (StringLiteralValue!4051 (text!9900 List!6459)) (FloatLiteralValue!2701 (text!9901 List!6459)) (BytesLiteralValue!1350 (value!42636 List!6459)) (CommentValue!2701 (value!42637 List!6459)) (StringLiteralValue!4052 (value!42638 List!6459)) (ErrorTokenValue!1350 (msg!1411 List!6459)) )
))
(declare-fun toCharacters!16 (IdentValueInjection!20 TokenValue!1350) BalanceConc!4178)

(declare-fun toValue!23 (IdentValueInjection!20 BalanceConc!4178) TokenValue!1350)

(assert (=> start!60640 (= inst!256 (=> (and (inv!8286 x!130765) e!380946) (= (list!2738 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130765))) (list!2738 x!130765))))))

(assert (= start!60640 b!628035))

(declare-fun m!896379 () Bool)

(assert (=> b!628035 m!896379))

(declare-fun m!896381 () Bool)

(assert (=> start!60640 m!896381))

(declare-fun m!896383 () Bool)

(assert (=> start!60640 m!896383))

(assert (=> start!60640 m!896383))

(declare-fun m!896385 () Bool)

(assert (=> start!60640 m!896385))

(assert (=> start!60640 m!896385))

(declare-fun m!896387 () Bool)

(assert (=> start!60640 m!896387))

(declare-fun m!896389 () Bool)

(assert (=> start!60640 m!896389))

(declare-fun res!272233 () Bool)

(declare-fun e!380948 () Bool)

(assert (=> b!628024 (=> res!272233 e!380948)))

(declare-fun x!130766 () BalanceConc!4178)

(declare-fun x!130767 () BalanceConc!4178)

(assert (=> b!628024 (= res!272233 (not (= (list!2738 x!130766) (list!2738 x!130767))))))

(declare-fun inst!257 () Bool)

(declare-fun e!380947 () Bool)

(declare-fun e!380949 () Bool)

(assert (=> b!628024 (= inst!257 (=> (and (inv!8286 x!130766) e!380947 (inv!8286 x!130767) e!380949) e!380948))))

(declare-fun b!628036 () Bool)

(assert (=> b!628036 (= e!380948 (= (toValue!23 thiss!4294 x!130766) (toValue!23 thiss!4294 x!130767)))))

(declare-fun b!628037 () Bool)

(declare-fun tp!196001 () Bool)

(assert (=> b!628037 (= e!380947 (and (inv!8285 (c!115439 x!130766)) tp!196001))))

(declare-fun b!628038 () Bool)

(declare-fun tp!196002 () Bool)

(assert (=> b!628038 (= e!380949 (and (inv!8285 (c!115439 x!130767)) tp!196002))))

(assert (= (and b!628024 (not res!272233)) b!628036))

(assert (= b!628024 b!628037))

(assert (= b!628024 b!628038))

(declare-fun m!896391 () Bool)

(assert (=> b!628024 m!896391))

(declare-fun m!896393 () Bool)

(assert (=> b!628024 m!896393))

(declare-fun m!896395 () Bool)

(assert (=> b!628024 m!896395))

(declare-fun m!896397 () Bool)

(assert (=> b!628024 m!896397))

(declare-fun m!896399 () Bool)

(assert (=> b!628036 m!896399))

(declare-fun m!896401 () Bool)

(assert (=> b!628036 m!896401))

(declare-fun m!896403 () Bool)

(assert (=> b!628037 m!896403))

(declare-fun m!896405 () Bool)

(assert (=> b!628038 m!896405))

(declare-fun bs!72547 () Bool)

(declare-fun neg-inst!257 () Bool)

(declare-fun s!19241 () Bool)

(assert (= bs!72547 (and neg-inst!257 s!19241)))

(assert (=> bs!72547 (=> true (= (list!2738 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130765))) (list!2738 x!130765)))))

(assert (=> m!896383 m!896385))

(assert (=> m!896383 m!896387))

(assert (=> m!896383 m!896389))

(assert (=> m!896383 s!19241))

(assert (=> m!896389 s!19241))

(declare-fun bs!72548 () Bool)

(assert (= bs!72548 (and neg-inst!257 start!60640)))

(assert (=> bs!72548 (= true inst!256)))

(declare-fun bs!72549 () Bool)

(declare-fun neg-inst!256 () Bool)

(declare-fun s!19243 () Bool)

(assert (= bs!72549 (and neg-inst!256 s!19243)))

(declare-fun res!272234 () Bool)

(declare-fun e!380950 () Bool)

(assert (=> bs!72549 (=> res!272234 e!380950)))

(assert (=> bs!72549 (= res!272234 (not (= (list!2738 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130765))) (list!2738 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130765))))))))

(assert (=> bs!72549 (=> true e!380950)))

(declare-fun b!628039 () Bool)

(assert (=> b!628039 (= e!380950 (= (toValue!23 thiss!4294 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130765))) (toValue!23 thiss!4294 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130765)))))))

(assert (= (and bs!72549 (not res!272234)) b!628039))

(assert (=> m!896387 s!19243))

(assert (=> m!896387 s!19243))

(declare-fun bs!72550 () Bool)

(declare-fun s!19245 () Bool)

(assert (= bs!72550 (and neg-inst!256 s!19245)))

(declare-fun res!272235 () Bool)

(declare-fun e!380951 () Bool)

(assert (=> bs!72550 (=> res!272235 e!380951)))

(assert (=> bs!72550 (= res!272235 (not (= (list!2738 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130765))) (list!2738 x!130765))))))

(assert (=> bs!72550 (=> true e!380951)))

(declare-fun b!628040 () Bool)

(assert (=> b!628040 (= e!380951 (= (toValue!23 thiss!4294 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130765))) (toValue!23 thiss!4294 x!130765)))))

(assert (= (and bs!72550 (not res!272235)) b!628040))

(declare-fun bs!72551 () Bool)

(assert (= bs!72551 (and m!896383 m!896387)))

(assert (=> bs!72551 m!896387))

(assert (=> bs!72551 m!896389))

(assert (=> bs!72551 s!19245))

(declare-fun bs!72552 () Bool)

(declare-fun s!19247 () Bool)

(assert (= bs!72552 (and neg-inst!256 s!19247)))

(declare-fun res!272236 () Bool)

(declare-fun e!380952 () Bool)

(assert (=> bs!72552 (=> res!272236 e!380952)))

(assert (=> bs!72552 (= res!272236 (not (= (list!2738 x!130765) (list!2738 x!130765))))))

(assert (=> bs!72552 (=> true e!380952)))

(declare-fun b!628041 () Bool)

(assert (=> b!628041 (= e!380952 (= (toValue!23 thiss!4294 x!130765) (toValue!23 thiss!4294 x!130765)))))

(assert (= (and bs!72552 (not res!272236)) b!628041))

(assert (=> m!896383 m!896389))

(assert (=> m!896383 m!896389))

(assert (=> m!896383 s!19247))

(declare-fun bs!72553 () Bool)

(declare-fun s!19249 () Bool)

(assert (= bs!72553 (and neg-inst!256 s!19249)))

(declare-fun res!272237 () Bool)

(declare-fun e!380953 () Bool)

(assert (=> bs!72553 (=> res!272237 e!380953)))

(assert (=> bs!72553 (= res!272237 (not (= (list!2738 x!130765) (list!2738 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130765))))))))

(assert (=> bs!72553 (=> true e!380953)))

(declare-fun b!628042 () Bool)

(assert (=> b!628042 (= e!380953 (= (toValue!23 thiss!4294 x!130765) (toValue!23 thiss!4294 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130765)))))))

(assert (= (and bs!72553 (not res!272237)) b!628042))

(assert (=> bs!72551 m!896389))

(assert (=> bs!72551 m!896387))

(assert (=> bs!72551 s!19249))

(assert (=> m!896383 s!19247))

(declare-fun bs!72554 () Bool)

(declare-fun s!19251 () Bool)

(assert (= bs!72554 (and neg-inst!256 s!19251)))

(declare-fun res!272238 () Bool)

(declare-fun e!380954 () Bool)

(assert (=> bs!72554 (=> res!272238 e!380954)))

(assert (=> bs!72554 (= res!272238 (not (= (list!2738 x!130765) (list!2738 x!130766))))))

(assert (=> bs!72554 (=> true e!380954)))

(declare-fun b!628043 () Bool)

(assert (=> b!628043 (= e!380954 (= (toValue!23 thiss!4294 x!130765) (toValue!23 thiss!4294 x!130766)))))

(assert (= (and bs!72554 (not res!272238)) b!628043))

(declare-fun bs!72555 () Bool)

(assert (= bs!72555 (and m!896399 m!896383)))

(assert (=> bs!72555 m!896389))

(assert (=> bs!72555 m!896391))

(assert (=> bs!72555 s!19251))

(declare-fun bs!72556 () Bool)

(declare-fun s!19253 () Bool)

(assert (= bs!72556 (and neg-inst!256 s!19253)))

(declare-fun res!272239 () Bool)

(declare-fun e!380955 () Bool)

(assert (=> bs!72556 (=> res!272239 e!380955)))

(assert (=> bs!72556 (= res!272239 (not (= (list!2738 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130765))) (list!2738 x!130766))))))

(assert (=> bs!72556 (=> true e!380955)))

(declare-fun b!628044 () Bool)

(assert (=> b!628044 (= e!380955 (= (toValue!23 thiss!4294 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130765))) (toValue!23 thiss!4294 x!130766)))))

(assert (= (and bs!72556 (not res!272239)) b!628044))

(declare-fun bs!72557 () Bool)

(assert (= bs!72557 (and m!896399 m!896387)))

(assert (=> bs!72557 m!896387))

(assert (=> bs!72557 m!896391))

(assert (=> bs!72557 s!19253))

(declare-fun bs!72558 () Bool)

(declare-fun s!19255 () Bool)

(assert (= bs!72558 (and neg-inst!256 s!19255)))

(declare-fun res!272240 () Bool)

(declare-fun e!380956 () Bool)

(assert (=> bs!72558 (=> res!272240 e!380956)))

(assert (=> bs!72558 (= res!272240 (not (= (list!2738 x!130766) (list!2738 x!130766))))))

(assert (=> bs!72558 (=> true e!380956)))

(declare-fun b!628045 () Bool)

(assert (=> b!628045 (= e!380956 (= (toValue!23 thiss!4294 x!130766) (toValue!23 thiss!4294 x!130766)))))

(assert (= (and bs!72558 (not res!272240)) b!628045))

(assert (=> m!896399 m!896391))

(assert (=> m!896399 m!896391))

(assert (=> m!896399 s!19255))

(declare-fun bs!72559 () Bool)

(declare-fun s!19257 () Bool)

(assert (= bs!72559 (and neg-inst!256 s!19257)))

(declare-fun res!272241 () Bool)

(declare-fun e!380957 () Bool)

(assert (=> bs!72559 (=> res!272241 e!380957)))

(assert (=> bs!72559 (= res!272241 (not (= (list!2738 x!130766) (list!2738 x!130765))))))

(assert (=> bs!72559 (=> true e!380957)))

(declare-fun b!628046 () Bool)

(assert (=> b!628046 (= e!380957 (= (toValue!23 thiss!4294 x!130766) (toValue!23 thiss!4294 x!130765)))))

(assert (= (and bs!72559 (not res!272241)) b!628046))

(assert (=> bs!72555 m!896391))

(assert (=> bs!72555 m!896389))

(assert (=> bs!72555 s!19257))

(declare-fun bs!72560 () Bool)

(declare-fun s!19259 () Bool)

(assert (= bs!72560 (and neg-inst!256 s!19259)))

(declare-fun res!272242 () Bool)

(declare-fun e!380958 () Bool)

(assert (=> bs!72560 (=> res!272242 e!380958)))

(assert (=> bs!72560 (= res!272242 (not (= (list!2738 x!130766) (list!2738 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130765))))))))

(assert (=> bs!72560 (=> true e!380958)))

(declare-fun b!628047 () Bool)

(assert (=> b!628047 (= e!380958 (= (toValue!23 thiss!4294 x!130766) (toValue!23 thiss!4294 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130765)))))))

(assert (= (and bs!72560 (not res!272242)) b!628047))

(assert (=> bs!72557 m!896391))

(assert (=> bs!72557 m!896387))

(assert (=> bs!72557 s!19259))

(assert (=> m!896399 s!19255))

(declare-fun bs!72561 () Bool)

(declare-fun s!19261 () Bool)

(assert (= bs!72561 (and neg-inst!256 s!19261)))

(declare-fun res!272243 () Bool)

(declare-fun e!380959 () Bool)

(assert (=> bs!72561 (=> res!272243 e!380959)))

(assert (=> bs!72561 (= res!272243 (not (= (list!2738 x!130766) (list!2738 x!130767))))))

(assert (=> bs!72561 (=> true e!380959)))

(declare-fun b!628048 () Bool)

(assert (=> b!628048 (= e!380959 (= (toValue!23 thiss!4294 x!130766) (toValue!23 thiss!4294 x!130767)))))

(assert (= (and bs!72561 (not res!272243)) b!628048))

(declare-fun bs!72562 () Bool)

(assert (= bs!72562 (and m!896393 m!896399)))

(assert (=> bs!72562 m!896391))

(assert (=> bs!72562 m!896393))

(assert (=> bs!72562 s!19261))

(declare-fun bs!72563 () Bool)

(declare-fun s!19263 () Bool)

(assert (= bs!72563 (and neg-inst!256 s!19263)))

(declare-fun res!272244 () Bool)

(declare-fun e!380960 () Bool)

(assert (=> bs!72563 (=> res!272244 e!380960)))

(assert (=> bs!72563 (= res!272244 (not (= (list!2738 x!130765) (list!2738 x!130767))))))

(assert (=> bs!72563 (=> true e!380960)))

(declare-fun b!628049 () Bool)

(assert (=> b!628049 (= e!380960 (= (toValue!23 thiss!4294 x!130765) (toValue!23 thiss!4294 x!130767)))))

(assert (= (and bs!72563 (not res!272244)) b!628049))

(declare-fun bs!72564 () Bool)

(assert (= bs!72564 (and m!896393 m!896383)))

(assert (=> bs!72564 m!896389))

(assert (=> bs!72564 m!896393))

(assert (=> bs!72564 s!19263))

(declare-fun bs!72565 () Bool)

(declare-fun s!19265 () Bool)

(assert (= bs!72565 (and neg-inst!256 s!19265)))

(declare-fun res!272245 () Bool)

(declare-fun e!380961 () Bool)

(assert (=> bs!72565 (=> res!272245 e!380961)))

(assert (=> bs!72565 (= res!272245 (not (= (list!2738 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130765))) (list!2738 x!130767))))))

(assert (=> bs!72565 (=> true e!380961)))

(declare-fun b!628050 () Bool)

(assert (=> b!628050 (= e!380961 (= (toValue!23 thiss!4294 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130765))) (toValue!23 thiss!4294 x!130767)))))

(assert (= (and bs!72565 (not res!272245)) b!628050))

(declare-fun bs!72566 () Bool)

(assert (= bs!72566 (and m!896393 m!896387)))

(assert (=> bs!72566 m!896387))

(assert (=> bs!72566 m!896393))

(assert (=> bs!72566 s!19265))

(declare-fun bs!72567 () Bool)

(declare-fun s!19267 () Bool)

(assert (= bs!72567 (and neg-inst!256 s!19267)))

(declare-fun res!272246 () Bool)

(declare-fun e!380962 () Bool)

(assert (=> bs!72567 (=> res!272246 e!380962)))

(assert (=> bs!72567 (= res!272246 (not (= (list!2738 x!130767) (list!2738 x!130767))))))

(assert (=> bs!72567 (=> true e!380962)))

(declare-fun b!628051 () Bool)

(assert (=> b!628051 (= e!380962 (= (toValue!23 thiss!4294 x!130767) (toValue!23 thiss!4294 x!130767)))))

(assert (= (and bs!72567 (not res!272246)) b!628051))

(assert (=> m!896393 s!19267))

(declare-fun bs!72568 () Bool)

(declare-fun s!19269 () Bool)

(assert (= bs!72568 (and neg-inst!256 s!19269)))

(declare-fun res!272247 () Bool)

(declare-fun e!380963 () Bool)

(assert (=> bs!72568 (=> res!272247 e!380963)))

(assert (=> bs!72568 (= res!272247 (not (= (list!2738 x!130767) (list!2738 x!130766))))))

(assert (=> bs!72568 (=> true e!380963)))

(declare-fun b!628052 () Bool)

(assert (=> b!628052 (= e!380963 (= (toValue!23 thiss!4294 x!130767) (toValue!23 thiss!4294 x!130766)))))

(assert (= (and bs!72568 (not res!272247)) b!628052))

(assert (=> bs!72562 m!896393))

(assert (=> bs!72562 m!896391))

(assert (=> bs!72562 s!19269))

(declare-fun bs!72569 () Bool)

(declare-fun s!19271 () Bool)

(assert (= bs!72569 (and neg-inst!256 s!19271)))

(declare-fun res!272248 () Bool)

(declare-fun e!380964 () Bool)

(assert (=> bs!72569 (=> res!272248 e!380964)))

(assert (=> bs!72569 (= res!272248 (not (= (list!2738 x!130767) (list!2738 x!130765))))))

(assert (=> bs!72569 (=> true e!380964)))

(declare-fun b!628053 () Bool)

(assert (=> b!628053 (= e!380964 (= (toValue!23 thiss!4294 x!130767) (toValue!23 thiss!4294 x!130765)))))

(assert (= (and bs!72569 (not res!272248)) b!628053))

(assert (=> bs!72564 m!896393))

(assert (=> bs!72564 m!896389))

(assert (=> bs!72564 s!19271))

(declare-fun bs!72570 () Bool)

(declare-fun s!19273 () Bool)

(assert (= bs!72570 (and neg-inst!256 s!19273)))

(declare-fun res!272249 () Bool)

(declare-fun e!380965 () Bool)

(assert (=> bs!72570 (=> res!272249 e!380965)))

(assert (=> bs!72570 (= res!272249 (not (= (list!2738 x!130767) (list!2738 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130765))))))))

(assert (=> bs!72570 (=> true e!380965)))

(declare-fun b!628054 () Bool)

(assert (=> b!628054 (= e!380965 (= (toValue!23 thiss!4294 x!130767) (toValue!23 thiss!4294 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130765)))))))

(assert (= (and bs!72570 (not res!272249)) b!628054))

(assert (=> bs!72566 m!896393))

(assert (=> bs!72566 m!896387))

(assert (=> bs!72566 s!19273))

(assert (=> m!896393 s!19267))

(assert (=> m!896401 s!19267))

(declare-fun bs!72571 () Bool)

(assert (= bs!72571 (and m!896401 m!896399)))

(assert (=> bs!72571 s!19261))

(declare-fun bs!72572 () Bool)

(assert (= bs!72572 (and m!896401 m!896387)))

(assert (=> bs!72572 s!19265))

(declare-fun bs!72573 () Bool)

(assert (= bs!72573 (and m!896401 m!896383)))

(assert (=> bs!72573 s!19263))

(declare-fun bs!72574 () Bool)

(assert (= bs!72574 (and m!896401 m!896393)))

(assert (=> bs!72574 s!19267))

(assert (=> m!896401 s!19267))

(assert (=> bs!72573 s!19271))

(assert (=> bs!72574 s!19267))

(assert (=> bs!72571 s!19269))

(assert (=> bs!72572 s!19273))

(declare-fun bs!72575 () Bool)

(assert (= bs!72575 (and m!896389 m!896383)))

(assert (=> bs!72575 s!19247))

(declare-fun bs!72576 () Bool)

(assert (= bs!72576 (and m!896389 m!896387)))

(assert (=> bs!72576 s!19245))

(assert (=> m!896389 s!19247))

(declare-fun bs!72577 () Bool)

(assert (= bs!72577 (and m!896389 m!896399)))

(assert (=> bs!72577 s!19257))

(declare-fun bs!72578 () Bool)

(assert (= bs!72578 (and m!896389 m!896393 m!896401)))

(assert (=> bs!72578 s!19271))

(assert (=> bs!72575 s!19247))

(assert (=> bs!72578 s!19263))

(assert (=> m!896389 s!19247))

(assert (=> bs!72576 s!19249))

(assert (=> bs!72577 s!19251))

(assert (=> m!896391 s!19255))

(declare-fun bs!72579 () Bool)

(assert (= bs!72579 (and m!896391 m!896387)))

(assert (=> bs!72579 s!19253))

(declare-fun bs!72580 () Bool)

(assert (= bs!72580 (and m!896391 m!896383 m!896389)))

(assert (=> bs!72580 s!19251))

(declare-fun bs!72581 () Bool)

(assert (= bs!72581 (and m!896391 m!896399)))

(assert (=> bs!72581 s!19255))

(declare-fun bs!72582 () Bool)

(assert (= bs!72582 (and m!896391 m!896393 m!896401)))

(assert (=> bs!72582 s!19269))

(assert (=> m!896391 s!19255))

(assert (=> bs!72582 s!19261))

(assert (=> bs!72580 s!19257))

(assert (=> bs!72581 s!19255))

(assert (=> bs!72579 s!19259))

(declare-fun bs!72583 () Bool)

(assert (= bs!72583 (and neg-inst!256 b!628024)))

(assert (=> bs!72583 (= true inst!257)))

(declare-fun e!380944 () Bool)

(declare-fun e!380942 () Bool)

(assert (=> b!628023 (= e!380944 e!380942)))

(declare-fun res!272231 () Bool)

(assert (=> b!628023 (=> res!272231 e!380942)))

(declare-fun lambda!16554 () Int)

(declare-fun lambda!16555 () Int)

(declare-fun semiInverseModEq!535 (Int Int) Bool)

(assert (=> b!628023 (= res!272231 (not (semiInverseModEq!535 lambda!16554 lambda!16555)))))

(declare-fun lambda!16553 () Int)

(declare-fun Forall!328 (Int) Bool)

(assert (=> b!628023 (= (semiInverseModEq!535 lambda!16554 lambda!16555) (Forall!328 lambda!16553))))

(declare-fun b!628025 () Bool)

(declare-fun e!380945 () Bool)

(declare-fun e!380943 () Bool)

(assert (=> b!628025 (= e!380945 e!380943)))

(declare-fun res!272232 () Bool)

(assert (=> b!628025 (=> res!272232 e!380943)))

(declare-fun equivClasses!514 (Int Int) Bool)

(assert (=> b!628025 (= res!272232 (not (equivClasses!514 lambda!16554 lambda!16555)))))

(declare-fun lambda!16556 () Int)

(declare-fun Forall2!250 (Int) Bool)

(assert (=> b!628025 (= (equivClasses!514 lambda!16554 lambda!16555) (Forall2!250 lambda!16556))))

(declare-fun res!272229 () Bool)

(assert (=> start!60640 (=> res!272229 e!380944)))

(assert (=> start!60640 (= res!272229 (not (Forall!328 lambda!16553)))))

(assert (=> start!60640 (= (Forall!328 lambda!16553) inst!256)))

(assert (=> start!60640 (not e!380944)))

(assert (=> start!60640 true))

(assert (=> b!628024 (= e!380942 e!380945)))

(declare-fun res!272230 () Bool)

(assert (=> b!628024 (=> res!272230 e!380945)))

(assert (=> b!628024 (= res!272230 (not (Forall2!250 lambda!16556)))))

(assert (=> b!628024 (= (Forall2!250 lambda!16556) inst!257)))

(declare-fun b!628026 () Bool)

(declare-datatypes ((TokenValueInjection!2452 0))(
  ( (TokenValueInjection!2453 (toValue!2253 Int) (toChars!2112 Int)) )
))
(declare-fun inv!8287 (TokenValueInjection!2452) Bool)

(assert (=> b!628026 (= e!380943 (inv!8287 (TokenValueInjection!2453 lambda!16555 lambda!16554)))))

(assert (= neg-inst!257 inst!256))

(assert (= (and start!60640 (not res!272229)) b!628023))

(assert (= (and b!628023 (not res!272231)) b!628024))

(assert (= neg-inst!256 inst!257))

(assert (= (and b!628024 (not res!272230)) b!628025))

(assert (= (and b!628025 (not res!272232)) b!628026))

(declare-fun m!896407 () Bool)

(assert (=> b!628025 m!896407))

(assert (=> b!628025 m!896407))

(declare-fun m!896409 () Bool)

(assert (=> b!628025 m!896409))

(declare-fun m!896411 () Bool)

(assert (=> start!60640 m!896411))

(assert (=> start!60640 m!896411))

(assert (=> b!628024 m!896409))

(assert (=> b!628024 m!896409))

(declare-fun m!896413 () Bool)

(assert (=> b!628023 m!896413))

(assert (=> b!628023 m!896413))

(assert (=> b!628023 m!896411))

(declare-fun m!896415 () Bool)

(assert (=> b!628026 m!896415))

(push 1)

(assert (not bs!72568))

(assert (not b!628050))

(assert (not bs!72558))

(assert (not bs!72550))

(assert (not bs!72560))

(assert (not bs!72559))

(assert (not b!628041))

(assert (not b!628035))

(assert (not start!60640))

(assert (not bs!72565))

(assert (not bs!72570))

(assert (not b!628053))

(assert (not bs!72547))

(assert (not bs!72549))

(assert (not b!628046))

(assert (not bs!72554))

(assert (not b!628051))

(assert (not b!628040))

(assert (not b!628039))

(assert (not b!628047))

(assert (not b!628048))

(assert (not b!628045))

(assert (not b!628042))

(assert (not b!628038))

(assert (not bs!72567))

(assert (not b!628026))

(assert (not bs!72556))

(assert (not b!628049))

(assert (not bs!72552))

(assert (not b!628024))

(assert (not b!628025))

(assert (not b!628044))

(assert (not bs!72553))

(assert (not b!628043))

(assert (not b!628037))

(assert (not b!628023))

(assert (not b!628052))

(assert (not b!628036))

(assert (not b!628054))

(assert (not bs!72561))

(assert (not bs!72569))

(assert (not bs!72563))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!72635 () Bool)

(assert (= bs!72635 (and m!896387 b!628039)))

(declare-fun m!896457 () Bool)

(assert (=> bs!72635 m!896457))

(assert (=> bs!72635 m!896457))

(declare-fun bs!72636 () Bool)

(assert (= bs!72636 (and m!896383 m!896387 b!628040)))

(assert (=> bs!72636 m!896457))

(assert (=> bs!72636 m!896383))

(declare-fun bs!72637 () Bool)

(assert (= bs!72637 (and m!896383 b!628041)))

(assert (=> bs!72637 m!896383))

(assert (=> bs!72637 m!896383))

(declare-fun bs!72638 () Bool)

(assert (= bs!72638 (and m!896383 m!896387 b!628042)))

(assert (=> bs!72638 m!896383))

(assert (=> bs!72638 m!896457))

(declare-fun bs!72639 () Bool)

(assert (= bs!72639 (and m!896399 m!896383 b!628043)))

(assert (=> bs!72639 m!896383))

(assert (=> bs!72639 m!896399))

(declare-fun bs!72640 () Bool)

(assert (= bs!72640 (and m!896399 m!896387 b!628044)))

(assert (=> bs!72640 m!896457))

(assert (=> bs!72640 m!896399))

(declare-fun bs!72641 () Bool)

(assert (= bs!72641 (and m!896399 b!628045)))

(assert (=> bs!72641 m!896399))

(assert (=> bs!72641 m!896399))

(declare-fun bs!72642 () Bool)

(assert (= bs!72642 (and m!896399 m!896383 b!628046)))

(assert (=> bs!72642 m!896399))

(assert (=> bs!72642 m!896383))

(declare-fun bs!72643 () Bool)

(assert (= bs!72643 (and m!896399 m!896387 b!628047)))

(assert (=> bs!72643 m!896399))

(assert (=> bs!72643 m!896457))

(declare-fun bs!72644 () Bool)

(assert (= bs!72644 (and m!896393 m!896399 b!628048)))

(assert (=> bs!72644 m!896399))

(assert (=> bs!72644 m!896401))

(declare-fun bs!72645 () Bool)

(assert (= bs!72645 (and m!896393 m!896383 b!628049)))

(assert (=> bs!72645 m!896383))

(assert (=> bs!72645 m!896401))

(declare-fun bs!72646 () Bool)

(assert (= bs!72646 (and m!896393 m!896387 b!628050)))

(assert (=> bs!72646 m!896457))

(assert (=> bs!72646 m!896401))

(declare-fun bs!72647 () Bool)

(assert (= bs!72647 (and m!896393 b!628051)))

(assert (=> bs!72647 m!896401))

(assert (=> bs!72647 m!896401))

(declare-fun bs!72648 () Bool)

(assert (= bs!72648 (and m!896393 m!896399 b!628052)))

(assert (=> bs!72648 m!896401))

(assert (=> bs!72648 m!896399))

(declare-fun bs!72649 () Bool)

(assert (= bs!72649 (and m!896393 m!896383 b!628053)))

(assert (=> bs!72649 m!896401))

(assert (=> bs!72649 m!896383))

(declare-fun bs!72650 () Bool)

(assert (= bs!72650 (and m!896393 m!896387 b!628054)))

(assert (=> bs!72650 m!896401))

(assert (=> bs!72650 m!896457))

(push 1)

(assert (not bs!72568))

(assert (not b!628050))

(assert (not bs!72558))

(assert (not bs!72550))

(assert (not bs!72560))

(assert (not bs!72559))

(assert (not b!628041))

(assert (not b!628035))

(assert (not start!60640))

(assert (not bs!72565))

(assert (not bs!72570))

(assert (not b!628053))

(assert (not bs!72547))

(assert (not bs!72549))

(assert (not b!628046))

(assert (not bs!72554))

(assert (not b!628051))

(assert (not b!628040))

(assert (not b!628039))

(assert (not b!628047))

(assert (not b!628048))

(assert (not b!628045))

(assert (not b!628042))

(assert (not b!628038))

(assert (not bs!72567))

(assert (not b!628026))

(assert (not bs!72556))

(assert (not b!628049))

(assert (not bs!72552))

(assert (not b!628024))

(assert (not b!628025))

(assert (not b!628044))

(assert (not bs!72553))

(assert (not b!628043))

(assert (not b!628037))

(assert (not b!628023))

(assert (not b!628052))

(assert (not b!628036))

(assert (not b!628054))

(assert (not bs!72561))

(assert (not bs!72569))

(assert (not bs!72563))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!219712 () Bool)

(declare-fun list!2740 (Conc!2085) List!6459)

(assert (=> d!219712 (= (list!2738 x!130765) (list!2740 (c!115439 x!130765)))))

(declare-fun bs!72651 () Bool)

(assert (= bs!72651 d!219712))

(declare-fun m!896459 () Bool)

(assert (=> bs!72651 m!896459))

(assert (=> bs!72563 d!219712))

(declare-fun d!219714 () Bool)

(assert (=> d!219714 (= (list!2738 x!130767) (list!2740 (c!115439 x!130767)))))

(declare-fun bs!72652 () Bool)

(assert (= bs!72652 d!219714))

(declare-fun m!896461 () Bool)

(assert (=> bs!72652 m!896461))

(assert (=> bs!72563 d!219714))

(declare-fun d!219716 () Bool)

(assert (=> d!219716 (= (list!2738 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130765))) (list!2740 (c!115439 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130765)))))))

(declare-fun bs!72653 () Bool)

(assert (= bs!72653 d!219716))

(declare-fun m!896463 () Bool)

(assert (=> bs!72653 m!896463))

(assert (=> bs!72549 d!219716))

(declare-fun bs!72654 () Bool)

(declare-fun d!219718 () Bool)

(assert (= bs!72654 (and d!219718 b!628024)))

(declare-fun lambda!16595 () Int)

(assert (=> bs!72654 (not (= lambda!16595 lambda!16556))))

(assert (=> d!219718 true))

(declare-fun order!4999 () Int)

(declare-fun order!5001 () Int)

(declare-fun dynLambda!3648 (Int Int) Int)

(declare-fun dynLambda!3649 (Int Int) Int)

(assert (=> d!219718 (< (dynLambda!3648 order!4999 lambda!16555) (dynLambda!3649 order!5001 lambda!16595))))

(assert (=> d!219718 (= (equivClasses!514 lambda!16554 lambda!16555) (Forall2!250 lambda!16595))))

(declare-fun bs!72655 () Bool)

(assert (= bs!72655 d!219718))

(declare-fun m!896465 () Bool)

(assert (=> bs!72655 m!896465))

(assert (=> b!628025 d!219718))

(declare-fun d!219720 () Bool)

(declare-fun choose!4557 (Int) Bool)

(assert (=> d!219720 (= (Forall2!250 lambda!16556) (choose!4557 lambda!16556))))

(declare-fun bs!72656 () Bool)

(assert (= bs!72656 d!219720))

(declare-fun m!896467 () Bool)

(assert (=> bs!72656 m!896467))

(assert (=> b!628025 d!219720))

(declare-fun d!219722 () Bool)

(declare-fun efficientList!82 (BalanceConc!4178) List!6459)

(assert (=> d!219722 (= (toValue!23 thiss!4294 x!130765) (IdentValue!1350 (efficientList!82 x!130765)))))

(declare-fun bs!72657 () Bool)

(assert (= bs!72657 d!219722))

(declare-fun m!896469 () Bool)

(assert (=> bs!72657 m!896469))

(assert (=> b!628042 d!219722))

(declare-fun d!219724 () Bool)

(assert (=> d!219724 (= (toValue!23 thiss!4294 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130765))) (IdentValue!1350 (efficientList!82 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130765)))))))

(declare-fun bs!72658 () Bool)

(assert (= bs!72658 d!219724))

(assert (=> bs!72658 m!896385))

(declare-fun m!896471 () Bool)

(assert (=> bs!72658 m!896471))

(assert (=> b!628042 d!219724))

(declare-fun d!219726 () Bool)

(declare-fun c!115443 () Bool)

(assert (=> d!219726 (= c!115443 (is-Node!2085 (c!115439 x!130767)))))

(declare-fun e!381020 () Bool)

(assert (=> d!219726 (= (inv!8285 (c!115439 x!130767)) e!381020)))

(declare-fun b!628121 () Bool)

(declare-fun inv!8291 (Conc!2085) Bool)

(assert (=> b!628121 (= e!381020 (inv!8291 (c!115439 x!130767)))))

(declare-fun b!628122 () Bool)

(declare-fun e!381021 () Bool)

(assert (=> b!628122 (= e!381020 e!381021)))

(declare-fun res!272301 () Bool)

(assert (=> b!628122 (= res!272301 (not (is-Leaf!3257 (c!115439 x!130767))))))

(assert (=> b!628122 (=> res!272301 e!381021)))

(declare-fun b!628123 () Bool)

(declare-fun inv!8292 (Conc!2085) Bool)

(assert (=> b!628123 (= e!381021 (inv!8292 (c!115439 x!130767)))))

(assert (= (and d!219726 c!115443) b!628121))

(assert (= (and d!219726 (not c!115443)) b!628122))

(assert (= (and b!628122 (not res!272301)) b!628123))

(declare-fun m!896473 () Bool)

(assert (=> b!628121 m!896473))

(declare-fun m!896475 () Bool)

(assert (=> b!628123 m!896475))

(assert (=> b!628038 d!219726))

(declare-fun bs!72659 () Bool)

(declare-fun d!219728 () Bool)

(assert (= bs!72659 (and d!219728 start!60640)))

(declare-fun lambda!16598 () Int)

(assert (=> bs!72659 (not (= lambda!16598 lambda!16553))))

(assert (=> d!219728 true))

(declare-fun order!5003 () Int)

(declare-fun order!5005 () Int)

(declare-fun dynLambda!3650 (Int Int) Int)

(declare-fun dynLambda!3651 (Int Int) Int)

(assert (=> d!219728 (< (dynLambda!3650 order!5003 lambda!16554) (dynLambda!3651 order!5005 lambda!16598))))

(assert (=> d!219728 true))

(assert (=> d!219728 (< (dynLambda!3648 order!4999 lambda!16555) (dynLambda!3651 order!5005 lambda!16598))))

(assert (=> d!219728 (= (semiInverseModEq!535 lambda!16554 lambda!16555) (Forall!328 lambda!16598))))

(declare-fun bs!72660 () Bool)

(assert (= bs!72660 d!219728))

(declare-fun m!896477 () Bool)

(assert (=> bs!72660 m!896477))

(assert (=> b!628023 d!219728))

(declare-fun d!219730 () Bool)

(declare-fun choose!4558 (Int) Bool)

(assert (=> d!219730 (= (Forall!328 lambda!16553) (choose!4558 lambda!16553))))

(declare-fun bs!72661 () Bool)

(assert (= bs!72661 d!219730))

(declare-fun m!896479 () Bool)

(assert (=> bs!72661 m!896479))

(assert (=> b!628023 d!219730))

(assert (=> bs!72568 d!219714))

(declare-fun d!219732 () Bool)

(assert (=> d!219732 (= (list!2738 x!130766) (list!2740 (c!115439 x!130766)))))

(declare-fun bs!72662 () Bool)

(assert (= bs!72662 d!219732))

(declare-fun m!896481 () Bool)

(assert (=> bs!72662 m!896481))

(assert (=> bs!72568 d!219732))

(declare-fun d!219734 () Bool)

(assert (=> d!219734 (= (toValue!23 thiss!4294 x!130766) (IdentValue!1350 (efficientList!82 x!130766)))))

(declare-fun bs!72663 () Bool)

(assert (= bs!72663 d!219734))

(declare-fun m!896483 () Bool)

(assert (=> bs!72663 m!896483))

(assert (=> b!628045 d!219734))

(assert (=> b!628024 d!219714))

(declare-fun d!219736 () Bool)

(declare-fun isBalanced!556 (Conc!2085) Bool)

(assert (=> d!219736 (= (inv!8286 x!130767) (isBalanced!556 (c!115439 x!130767)))))

(declare-fun bs!72664 () Bool)

(assert (= bs!72664 d!219736))

(declare-fun m!896485 () Bool)

(assert (=> bs!72664 m!896485))

(assert (=> b!628024 d!219736))

(assert (=> b!628024 d!219732))

(declare-fun d!219738 () Bool)

(assert (=> d!219738 (= (inv!8286 x!130766) (isBalanced!556 (c!115439 x!130766)))))

(declare-fun bs!72665 () Bool)

(assert (= bs!72665 d!219738))

(declare-fun m!896487 () Bool)

(assert (=> bs!72665 m!896487))

(assert (=> b!628024 d!219738))

(assert (=> b!628024 d!219720))

(assert (=> bs!72559 d!219732))

(assert (=> bs!72559 d!219712))

(assert (=> b!628049 d!219722))

(declare-fun d!219740 () Bool)

(assert (=> d!219740 (= (toValue!23 thiss!4294 x!130767) (IdentValue!1350 (efficientList!82 x!130767)))))

(declare-fun bs!72666 () Bool)

(assert (= bs!72666 d!219740))

(declare-fun m!896489 () Bool)

(assert (=> bs!72666 m!896489))

(assert (=> b!628049 d!219740))

(assert (=> b!628039 d!219724))

(declare-fun d!219742 () Bool)

(declare-fun res!272304 () Bool)

(declare-fun e!381024 () Bool)

(assert (=> d!219742 (=> (not res!272304) (not e!381024))))

(assert (=> d!219742 (= res!272304 (semiInverseModEq!535 (toChars!2112 (TokenValueInjection!2453 lambda!16555 lambda!16554)) (toValue!2253 (TokenValueInjection!2453 lambda!16555 lambda!16554))))))

(assert (=> d!219742 (= (inv!8287 (TokenValueInjection!2453 lambda!16555 lambda!16554)) e!381024)))

(declare-fun b!628130 () Bool)

(assert (=> b!628130 (= e!381024 (equivClasses!514 (toChars!2112 (TokenValueInjection!2453 lambda!16555 lambda!16554)) (toValue!2253 (TokenValueInjection!2453 lambda!16555 lambda!16554))))))

(assert (= (and d!219742 res!272304) b!628130))

(declare-fun m!896491 () Bool)

(assert (=> d!219742 m!896491))

(declare-fun m!896493 () Bool)

(assert (=> b!628130 m!896493))

(assert (=> b!628026 d!219742))

(assert (=> b!628052 d!219740))

(assert (=> b!628052 d!219734))

(assert (=> b!628041 d!219722))

(assert (=> bs!72561 d!219732))

(assert (=> bs!72561 d!219714))

(declare-fun d!219746 () Bool)

(declare-fun c!115444 () Bool)

(assert (=> d!219746 (= c!115444 (is-Node!2085 (c!115439 x!130766)))))

(declare-fun e!381025 () Bool)

(assert (=> d!219746 (= (inv!8285 (c!115439 x!130766)) e!381025)))

(declare-fun b!628131 () Bool)

(assert (=> b!628131 (= e!381025 (inv!8291 (c!115439 x!130766)))))

(declare-fun b!628132 () Bool)

(declare-fun e!381026 () Bool)

(assert (=> b!628132 (= e!381025 e!381026)))

(declare-fun res!272305 () Bool)

(assert (=> b!628132 (= res!272305 (not (is-Leaf!3257 (c!115439 x!130766))))))

(assert (=> b!628132 (=> res!272305 e!381026)))

(declare-fun b!628133 () Bool)

(assert (=> b!628133 (= e!381026 (inv!8292 (c!115439 x!130766)))))

(assert (= (and d!219746 c!115444) b!628131))

(assert (= (and d!219746 (not c!115444)) b!628132))

(assert (= (and b!628132 (not res!272305)) b!628133))

(declare-fun m!896495 () Bool)

(assert (=> b!628131 m!896495))

(declare-fun m!896497 () Bool)

(assert (=> b!628133 m!896497))

(assert (=> b!628037 d!219746))

(assert (=> bs!72553 d!219712))

(assert (=> bs!72553 d!219716))

(assert (=> b!628051 d!219740))

(declare-fun d!219748 () Bool)

(declare-fun c!115445 () Bool)

(assert (=> d!219748 (= c!115445 (is-Node!2085 (c!115439 x!130765)))))

(declare-fun e!381027 () Bool)

(assert (=> d!219748 (= (inv!8285 (c!115439 x!130765)) e!381027)))

(declare-fun b!628134 () Bool)

(assert (=> b!628134 (= e!381027 (inv!8291 (c!115439 x!130765)))))

(declare-fun b!628135 () Bool)

(declare-fun e!381028 () Bool)

(assert (=> b!628135 (= e!381027 e!381028)))

(declare-fun res!272306 () Bool)

(assert (=> b!628135 (= res!272306 (not (is-Leaf!3257 (c!115439 x!130765))))))

(assert (=> b!628135 (=> res!272306 e!381028)))

(declare-fun b!628136 () Bool)

(assert (=> b!628136 (= e!381028 (inv!8292 (c!115439 x!130765)))))

(assert (= (and d!219748 c!115445) b!628134))

(assert (= (and d!219748 (not c!115445)) b!628135))

(assert (= (and b!628135 (not res!272306)) b!628136))

(declare-fun m!896499 () Bool)

(assert (=> b!628134 m!896499))

(declare-fun m!896501 () Bool)

(assert (=> b!628136 m!896501))

(assert (=> b!628035 d!219748))

(assert (=> b!628048 d!219734))

(assert (=> b!628048 d!219740))

(assert (=> bs!72547 d!219716))

(declare-fun d!219750 () Bool)

(declare-fun c!115449 () Bool)

(assert (=> d!219750 (= c!115449 (is-IdentValue!1350 (toValue!23 thiss!4294 x!130765)))))

(declare-fun e!381031 () BalanceConc!4178)

(assert (=> d!219750 (= (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130765)) e!381031)))

(declare-fun b!628141 () Bool)

(declare-fun seqFromList!1451 (List!6459) BalanceConc!4178)

(assert (=> b!628141 (= e!381031 (seqFromList!1451 (value!42627 (toValue!23 thiss!4294 x!130765))))))

(declare-fun b!628142 () Bool)

(assert (=> b!628142 (= e!381031 (BalanceConc!4179 Empty!2085))))

(assert (= (and d!219750 c!115449) b!628141))

(assert (= (and d!219750 (not c!115449)) b!628142))

(declare-fun m!896507 () Bool)

(assert (=> b!628141 m!896507))

(assert (=> bs!72547 d!219750))

(assert (=> bs!72547 d!219722))

(assert (=> bs!72547 d!219712))

(assert (=> bs!72558 d!219732))

(assert (=> b!628036 d!219734))

(assert (=> b!628036 d!219740))

(assert (=> bs!72570 d!219714))

(assert (=> bs!72570 d!219716))

(assert (=> bs!72556 d!219716))

(assert (=> bs!72556 d!219732))

(assert (=> b!628047 d!219734))

(assert (=> b!628047 d!219724))

(assert (=> b!628040 d!219724))

(assert (=> b!628040 d!219722))

(assert (=> b!628050 d!219724))

(assert (=> b!628050 d!219740))

(assert (=> bs!72552 d!219712))

(assert (=> b!628054 d!219740))

(assert (=> b!628054 d!219724))

(assert (=> b!628044 d!219724))

(assert (=> b!628044 d!219734))

(assert (=> bs!72567 d!219714))

(assert (=> b!628046 d!219734))

(assert (=> b!628046 d!219722))

(assert (=> bs!72550 d!219716))

(assert (=> bs!72550 d!219712))

(assert (=> bs!72554 d!219712))

(assert (=> bs!72554 d!219732))

(assert (=> bs!72569 d!219714))

(assert (=> bs!72569 d!219712))

(assert (=> b!628053 d!219740))

(assert (=> b!628053 d!219722))

(declare-fun d!219756 () Bool)

(assert (=> d!219756 (= (inv!8286 x!130765) (isBalanced!556 (c!115439 x!130765)))))

(declare-fun bs!72669 () Bool)

(assert (= bs!72669 d!219756))

(declare-fun m!896509 () Bool)

(assert (=> bs!72669 m!896509))

(assert (=> start!60640 d!219756))

(assert (=> start!60640 d!219722))

(assert (=> start!60640 d!219716))

(assert (=> start!60640 d!219712))

(assert (=> start!60640 d!219750))

(assert (=> start!60640 d!219730))

(assert (=> bs!72560 d!219732))

(assert (=> bs!72560 d!219716))

(assert (=> b!628043 d!219722))

(assert (=> b!628043 d!219734))

(assert (=> bs!72565 d!219716))

(assert (=> bs!72565 d!219714))

(declare-fun tp!196016 () Bool)

(declare-fun b!628149 () Bool)

(declare-fun tp!196017 () Bool)

(declare-fun e!381036 () Bool)

(assert (=> b!628149 (= e!381036 (and (inv!8285 (left!5148 (c!115439 x!130767))) tp!196016 (inv!8285 (right!5478 (c!115439 x!130767))) tp!196017))))

(declare-fun b!628150 () Bool)

(declare-fun inv!8293 (IArray!4171) Bool)

(assert (=> b!628150 (= e!381036 (inv!8293 (xs!4726 (c!115439 x!130767))))))

(assert (=> b!628038 (= tp!196002 (and (inv!8285 (c!115439 x!130767)) e!381036))))

(assert (= (and b!628038 (is-Node!2085 (c!115439 x!130767))) b!628149))

(assert (= (and b!628038 (is-Leaf!3257 (c!115439 x!130767))) b!628150))

(declare-fun m!896511 () Bool)

(assert (=> b!628149 m!896511))

(declare-fun m!896513 () Bool)

(assert (=> b!628149 m!896513))

(declare-fun m!896515 () Bool)

(assert (=> b!628150 m!896515))

(assert (=> b!628038 m!896405))

(declare-fun b!628151 () Bool)

(declare-fun tp!196018 () Bool)

(declare-fun tp!196019 () Bool)

(declare-fun e!381038 () Bool)

(assert (=> b!628151 (= e!381038 (and (inv!8285 (left!5148 (c!115439 x!130766))) tp!196018 (inv!8285 (right!5478 (c!115439 x!130766))) tp!196019))))

(declare-fun b!628152 () Bool)

(assert (=> b!628152 (= e!381038 (inv!8293 (xs!4726 (c!115439 x!130766))))))

(assert (=> b!628037 (= tp!196001 (and (inv!8285 (c!115439 x!130766)) e!381038))))

(assert (= (and b!628037 (is-Node!2085 (c!115439 x!130766))) b!628151))

(assert (= (and b!628037 (is-Leaf!3257 (c!115439 x!130766))) b!628152))

(declare-fun m!896517 () Bool)

(assert (=> b!628151 m!896517))

(declare-fun m!896519 () Bool)

(assert (=> b!628151 m!896519))

(declare-fun m!896521 () Bool)

(assert (=> b!628152 m!896521))

(assert (=> b!628037 m!896403))

(declare-fun tp!196020 () Bool)

(declare-fun b!628153 () Bool)

(declare-fun e!381040 () Bool)

(declare-fun tp!196021 () Bool)

(assert (=> b!628153 (= e!381040 (and (inv!8285 (left!5148 (c!115439 x!130765))) tp!196020 (inv!8285 (right!5478 (c!115439 x!130765))) tp!196021))))

(declare-fun b!628154 () Bool)

(assert (=> b!628154 (= e!381040 (inv!8293 (xs!4726 (c!115439 x!130765))))))

(assert (=> b!628035 (= tp!196000 (and (inv!8285 (c!115439 x!130765)) e!381040))))

(assert (= (and b!628035 (is-Node!2085 (c!115439 x!130765))) b!628153))

(assert (= (and b!628035 (is-Leaf!3257 (c!115439 x!130765))) b!628154))

(declare-fun m!896523 () Bool)

(assert (=> b!628153 m!896523))

(declare-fun m!896525 () Bool)

(assert (=> b!628153 m!896525))

(declare-fun m!896527 () Bool)

(assert (=> b!628154 m!896527))

(assert (=> b!628035 m!896379))

(push 1)

(assert (not b!628149))

(assert (not d!219740))

(assert (not d!219732))

(assert (not d!219718))

(assert (not d!219742))

(assert (not b!628154))

(assert (not d!219730))

(assert (not b!628131))

(assert (not d!219756))

(assert (not b!628130))

(assert (not b!628136))

(assert (not d!219728))

(assert (not b!628121))

(assert (not d!219724))

(assert (not b!628153))

(assert (not b!628134))

(assert (not b!628141))

(assert (not d!219734))

(assert (not d!219738))

(assert (not d!219714))

(assert (not b!628123))

(assert (not d!219720))

(assert (not b!628150))

(assert (not d!219736))

(assert (not b!628038))

(assert (not b!628152))

(assert (not b!628151))

(assert (not d!219716))

(assert (not d!219712))

(assert (not d!219722))

(assert (not b!628037))

(assert (not b!628133))

(assert (not b!628035))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

