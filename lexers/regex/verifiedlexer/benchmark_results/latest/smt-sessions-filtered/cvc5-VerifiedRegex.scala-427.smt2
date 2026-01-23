; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!12664 () Bool)

(assert start!12664)

(assert (=> start!12664 true))

(declare-fun b!124765 () Bool)

(assert (=> b!124765 true))

(assert (=> b!124765 true))

(declare-fun b!124766 () Bool)

(assert (=> b!124766 true))

(declare-fun b!124775 () Bool)

(declare-fun e!71767 () Bool)

(declare-datatypes ((List!2042 0))(
  ( (Nil!2036) (Cons!2036 (h!7433 (_ BitVec 16)) (t!22549 List!2042)) )
))
(declare-datatypes ((IArray!1133 0))(
  ( (IArray!1134 (innerList!624 List!2042)) )
))
(declare-datatypes ((Conc!566 0))(
  ( (Node!566 (left!1619 Conc!566) (right!1949 Conc!566) (csize!1362 Int) (cheight!777 Int)) (Leaf!994 (xs!3161 IArray!1133) (csize!1363 Int)) (Empty!566) )
))
(declare-datatypes ((BalanceConc!1136 0))(
  ( (BalanceConc!1137 (c!27530 Conc!566)) )
))
(declare-fun x!33225 () BalanceConc!1136)

(declare-fun tp!68260 () Bool)

(declare-fun inv!2585 (Conc!566) Bool)

(assert (=> b!124775 (= e!71767 (and (inv!2585 (c!27530 x!33225)) tp!68260))))

(declare-datatypes ((DedentValueInjection!12 0))(
  ( (DedentValueInjection!13) )
))
(declare-fun thiss!4219 () DedentValueInjection!12)

(declare-fun inst!160 () Bool)

(declare-fun inv!2586 (BalanceConc!1136) Bool)

(declare-fun list!780 (BalanceConc!1136) List!2042)

(declare-datatypes ((TokenValue!388 0))(
  ( (FloatLiteralValue!776 (text!3161 List!2042)) (TokenValueExt!387 (__x!2219 Int)) (Broken!1940 (value!14437 List!2042)) (Object!393) (End!388) (Def!388) (Underscore!388) (Match!388) (Else!388) (Error!388) (Case!388) (If!388) (Extends!388) (Abstract!388) (Class!388) (Val!388) (DelimiterValue!776 (del!448 List!2042)) (KeywordValue!394 (value!14438 List!2042)) (CommentValue!776 (value!14439 List!2042)) (WhitespaceValue!776 (value!14440 List!2042)) (IndentationValue!388 (value!14441 List!2042)) (String!2657) (Int32!388) (Broken!1941 (value!14442 List!2042)) (Boolean!389) (Unit!1599) (OperatorValue!391 (op!448 List!2042)) (IdentifierValue!776 (value!14443 List!2042)) (IdentifierValue!777 (value!14444 List!2042)) (WhitespaceValue!777 (value!14445 List!2042)) (True!776) (False!776) (Broken!1942 (value!14446 List!2042)) (Broken!1943 (value!14447 List!2042)) (True!777) (RightBrace!388) (RightBracket!388) (Colon!388) (Null!388) (Comma!388) (LeftBracket!388) (False!777) (LeftBrace!388) (ImaginaryLiteralValue!388 (text!3162 List!2042)) (StringLiteralValue!1164 (value!14448 List!2042)) (EOFValue!388 (value!14449 List!2042)) (IdentValue!388 (value!14450 List!2042)) (DelimiterValue!777 (value!14451 List!2042)) (DedentValue!388 (value!14452 List!2042)) (NewLineValue!388 (value!14453 List!2042)) (IntegerValue!1164 (value!14454 (_ BitVec 32)) (text!3163 List!2042)) (IntegerValue!1165 (value!14455 Int) (text!3164 List!2042)) (Times!388) (Or!388) (Equal!388) (Minus!388) (Broken!1944 (value!14456 List!2042)) (And!388) (Div!388) (LessEqual!388) (Mod!388) (Concat!952) (Not!388) (Plus!388) (SpaceValue!388 (value!14457 List!2042)) (IntegerValue!1166 (value!14458 Int) (text!3165 List!2042)) (StringLiteralValue!1165 (text!3166 List!2042)) (FloatLiteralValue!777 (text!3167 List!2042)) (BytesLiteralValue!388 (value!14459 List!2042)) (CommentValue!777 (value!14460 List!2042)) (StringLiteralValue!1166 (value!14461 List!2042)) (ErrorTokenValue!388 (msg!449 List!2042)) )
))
(declare-fun toCharacters!15 (DedentValueInjection!12 TokenValue!388) BalanceConc!1136)

(declare-fun toValue!22 (DedentValueInjection!12 BalanceConc!1136) TokenValue!388)

(assert (=> start!12664 (= inst!160 (=> (and (inv!2586 x!33225) e!71767) (= (list!780 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225))) (list!780 x!33225))))))

(assert (= start!12664 b!124775))

(declare-fun m!110397 () Bool)

(assert (=> b!124775 m!110397))

(declare-fun m!110399 () Bool)

(assert (=> start!12664 m!110399))

(declare-fun m!110401 () Bool)

(assert (=> start!12664 m!110401))

(assert (=> start!12664 m!110399))

(declare-fun m!110403 () Bool)

(assert (=> start!12664 m!110403))

(assert (=> start!12664 m!110401))

(declare-fun m!110405 () Bool)

(assert (=> start!12664 m!110405))

(declare-fun m!110407 () Bool)

(assert (=> start!12664 m!110407))

(declare-fun res!58013 () Bool)

(declare-fun e!71770 () Bool)

(assert (=> b!124766 (=> res!58013 e!71770)))

(declare-fun x!33226 () BalanceConc!1136)

(declare-fun x!33227 () BalanceConc!1136)

(assert (=> b!124766 (= res!58013 (not (= (list!780 x!33226) (list!780 x!33227))))))

(declare-fun e!71768 () Bool)

(declare-fun e!71769 () Bool)

(declare-fun inst!161 () Bool)

(assert (=> b!124766 (= inst!161 (=> (and (inv!2586 x!33226) e!71769 (inv!2586 x!33227) e!71768) e!71770))))

(declare-fun b!124776 () Bool)

(assert (=> b!124776 (= e!71770 (= (toValue!22 thiss!4219 x!33226) (toValue!22 thiss!4219 x!33227)))))

(declare-fun b!124777 () Bool)

(declare-fun tp!68261 () Bool)

(assert (=> b!124777 (= e!71769 (and (inv!2585 (c!27530 x!33226)) tp!68261))))

(declare-fun b!124778 () Bool)

(declare-fun tp!68262 () Bool)

(assert (=> b!124778 (= e!71768 (and (inv!2585 (c!27530 x!33227)) tp!68262))))

(assert (= (and b!124766 (not res!58013)) b!124776))

(assert (= b!124766 b!124777))

(assert (= b!124766 b!124778))

(declare-fun m!110409 () Bool)

(assert (=> b!124766 m!110409))

(declare-fun m!110411 () Bool)

(assert (=> b!124766 m!110411))

(declare-fun m!110413 () Bool)

(assert (=> b!124766 m!110413))

(declare-fun m!110415 () Bool)

(assert (=> b!124766 m!110415))

(declare-fun m!110417 () Bool)

(assert (=> b!124776 m!110417))

(declare-fun m!110419 () Bool)

(assert (=> b!124776 m!110419))

(declare-fun m!110421 () Bool)

(assert (=> b!124777 m!110421))

(declare-fun m!110423 () Bool)

(assert (=> b!124778 m!110423))

(declare-fun bs!12075 () Bool)

(declare-fun neg-inst!161 () Bool)

(declare-fun s!16865 () Bool)

(assert (= bs!12075 (and neg-inst!161 s!16865)))

(assert (=> bs!12075 (=> true (= (list!780 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225))) (list!780 x!33225)))))

(assert (=> m!110407 m!110399))

(assert (=> m!110407 m!110401))

(assert (=> m!110407 m!110405))

(assert (=> m!110407 s!16865))

(assert (=> m!110399 s!16865))

(declare-fun bs!12076 () Bool)

(assert (= bs!12076 (and neg-inst!161 start!12664)))

(assert (=> bs!12076 (= true inst!160)))

(declare-fun bs!12077 () Bool)

(declare-fun neg-inst!160 () Bool)

(declare-fun s!16867 () Bool)

(assert (= bs!12077 (and neg-inst!160 s!16867)))

(declare-fun res!58014 () Bool)

(declare-fun e!71771 () Bool)

(assert (=> bs!12077 (=> res!58014 e!71771)))

(assert (=> bs!12077 (= res!58014 (not (= (list!780 x!33225) (list!780 x!33225))))))

(assert (=> bs!12077 (=> true e!71771)))

(declare-fun b!124779 () Bool)

(assert (=> b!124779 (= e!71771 (= (toValue!22 thiss!4219 x!33225) (toValue!22 thiss!4219 x!33225)))))

(assert (= (and bs!12077 (not res!58014)) b!124779))

(assert (=> m!110407 s!16867))

(assert (=> m!110407 s!16867))

(declare-fun bs!12078 () Bool)

(declare-fun s!16869 () Bool)

(assert (= bs!12078 (and neg-inst!160 s!16869)))

(declare-fun res!58015 () Bool)

(declare-fun e!71772 () Bool)

(assert (=> bs!12078 (=> res!58015 e!71772)))

(assert (=> bs!12078 (= res!58015 (not (= (list!780 x!33226) (list!780 x!33225))))))

(assert (=> bs!12078 (=> true e!71772)))

(declare-fun b!124780 () Bool)

(assert (=> b!124780 (= e!71772 (= (toValue!22 thiss!4219 x!33226) (toValue!22 thiss!4219 x!33225)))))

(assert (= (and bs!12078 (not res!58015)) b!124780))

(declare-fun bs!12079 () Bool)

(assert (= bs!12079 (and m!110409 m!110407)))

(assert (=> bs!12079 m!110409))

(assert (=> bs!12079 m!110407))

(assert (=> bs!12079 s!16869))

(declare-fun bs!12080 () Bool)

(declare-fun s!16871 () Bool)

(assert (= bs!12080 (and neg-inst!160 s!16871)))

(declare-fun res!58016 () Bool)

(declare-fun e!71773 () Bool)

(assert (=> bs!12080 (=> res!58016 e!71773)))

(assert (=> bs!12080 (= res!58016 (not (= (list!780 x!33226) (list!780 x!33226))))))

(assert (=> bs!12080 (=> true e!71773)))

(declare-fun b!124781 () Bool)

(assert (=> b!124781 (= e!71773 (= (toValue!22 thiss!4219 x!33226) (toValue!22 thiss!4219 x!33226)))))

(assert (= (and bs!12080 (not res!58016)) b!124781))

(assert (=> m!110409 s!16871))

(declare-fun bs!12081 () Bool)

(declare-fun s!16873 () Bool)

(assert (= bs!12081 (and neg-inst!160 s!16873)))

(declare-fun res!58017 () Bool)

(declare-fun e!71774 () Bool)

(assert (=> bs!12081 (=> res!58017 e!71774)))

(assert (=> bs!12081 (= res!58017 (not (= (list!780 x!33225) (list!780 x!33226))))))

(assert (=> bs!12081 (=> true e!71774)))

(declare-fun b!124782 () Bool)

(assert (=> b!124782 (= e!71774 (= (toValue!22 thiss!4219 x!33225) (toValue!22 thiss!4219 x!33226)))))

(assert (= (and bs!12081 (not res!58017)) b!124782))

(assert (=> bs!12079 m!110407))

(assert (=> bs!12079 m!110409))

(assert (=> bs!12079 s!16873))

(assert (=> m!110409 s!16871))

(declare-fun bs!12082 () Bool)

(assert (= bs!12082 (and m!110399 m!110409)))

(assert (=> bs!12082 s!16873))

(declare-fun bs!12083 () Bool)

(assert (= bs!12083 (and m!110399 m!110407)))

(assert (=> bs!12083 s!16867))

(assert (=> m!110399 s!16867))

(assert (=> bs!12082 s!16869))

(assert (=> bs!12083 s!16867))

(assert (=> m!110399 s!16867))

(declare-fun bs!12084 () Bool)

(assert (= bs!12084 (and m!110417 m!110409)))

(assert (=> bs!12084 s!16871))

(declare-fun bs!12085 () Bool)

(assert (= bs!12085 (and m!110417 m!110407 m!110399)))

(assert (=> bs!12085 s!16869))

(assert (=> m!110417 s!16871))

(assert (=> bs!12084 s!16871))

(assert (=> bs!12085 s!16873))

(assert (=> m!110417 s!16871))

(declare-fun bs!12086 () Bool)

(declare-fun s!16875 () Bool)

(assert (= bs!12086 (and neg-inst!160 s!16875)))

(declare-fun res!58018 () Bool)

(declare-fun e!71775 () Bool)

(assert (=> bs!12086 (=> res!58018 e!71775)))

(assert (=> bs!12086 (= res!58018 (not (= (list!780 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225))) (list!780 x!33226))))))

(assert (=> bs!12086 (=> true e!71775)))

(declare-fun b!124783 () Bool)

(assert (=> b!124783 (= e!71775 (= (toValue!22 thiss!4219 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225))) (toValue!22 thiss!4219 x!33226)))))

(assert (= (and bs!12086 (not res!58018)) b!124783))

(declare-fun bs!12087 () Bool)

(assert (= bs!12087 (and m!110405 m!110409 m!110417)))

(assert (=> bs!12087 m!110405))

(assert (=> bs!12087 m!110409))

(assert (=> bs!12087 s!16875))

(declare-fun bs!12088 () Bool)

(declare-fun s!16877 () Bool)

(assert (= bs!12088 (and neg-inst!160 s!16877)))

(declare-fun res!58019 () Bool)

(declare-fun e!71776 () Bool)

(assert (=> bs!12088 (=> res!58019 e!71776)))

(assert (=> bs!12088 (= res!58019 (not (= (list!780 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225))) (list!780 x!33225))))))

(assert (=> bs!12088 (=> true e!71776)))

(declare-fun b!124784 () Bool)

(assert (=> b!124784 (= e!71776 (= (toValue!22 thiss!4219 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225))) (toValue!22 thiss!4219 x!33225)))))

(assert (= (and bs!12088 (not res!58019)) b!124784))

(declare-fun bs!12089 () Bool)

(assert (= bs!12089 (and m!110405 m!110407 m!110399)))

(assert (=> bs!12089 m!110405))

(assert (=> bs!12089 m!110407))

(assert (=> bs!12089 s!16877))

(declare-fun bs!12090 () Bool)

(declare-fun s!16879 () Bool)

(assert (= bs!12090 (and neg-inst!160 s!16879)))

(declare-fun res!58020 () Bool)

(declare-fun e!71777 () Bool)

(assert (=> bs!12090 (=> res!58020 e!71777)))

(assert (=> bs!12090 (= res!58020 (not (= (list!780 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225))) (list!780 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225))))))))

(assert (=> bs!12090 (=> true e!71777)))

(declare-fun b!124785 () Bool)

(assert (=> b!124785 (= e!71777 (= (toValue!22 thiss!4219 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225))) (toValue!22 thiss!4219 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225)))))))

(assert (= (and bs!12090 (not res!58020)) b!124785))

(assert (=> m!110405 s!16879))

(declare-fun bs!12091 () Bool)

(declare-fun s!16881 () Bool)

(assert (= bs!12091 (and neg-inst!160 s!16881)))

(declare-fun res!58021 () Bool)

(declare-fun e!71778 () Bool)

(assert (=> bs!12091 (=> res!58021 e!71778)))

(assert (=> bs!12091 (= res!58021 (not (= (list!780 x!33226) (list!780 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225))))))))

(assert (=> bs!12091 (=> true e!71778)))

(declare-fun b!124786 () Bool)

(assert (=> b!124786 (= e!71778 (= (toValue!22 thiss!4219 x!33226) (toValue!22 thiss!4219 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225)))))))

(assert (= (and bs!12091 (not res!58021)) b!124786))

(assert (=> bs!12087 m!110409))

(assert (=> bs!12087 m!110405))

(assert (=> bs!12087 s!16881))

(declare-fun bs!12092 () Bool)

(declare-fun s!16883 () Bool)

(assert (= bs!12092 (and neg-inst!160 s!16883)))

(declare-fun res!58022 () Bool)

(declare-fun e!71779 () Bool)

(assert (=> bs!12092 (=> res!58022 e!71779)))

(assert (=> bs!12092 (= res!58022 (not (= (list!780 x!33225) (list!780 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225))))))))

(assert (=> bs!12092 (=> true e!71779)))

(declare-fun b!124787 () Bool)

(assert (=> b!124787 (= e!71779 (= (toValue!22 thiss!4219 x!33225) (toValue!22 thiss!4219 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225)))))))

(assert (= (and bs!12092 (not res!58022)) b!124787))

(assert (=> bs!12089 m!110407))

(assert (=> bs!12089 m!110405))

(assert (=> bs!12089 s!16883))

(assert (=> m!110405 s!16879))

(declare-fun bs!12093 () Bool)

(declare-fun s!16885 () Bool)

(assert (= bs!12093 (and neg-inst!160 s!16885)))

(declare-fun res!58023 () Bool)

(declare-fun e!71780 () Bool)

(assert (=> bs!12093 (=> res!58023 e!71780)))

(assert (=> bs!12093 (= res!58023 (not (= (list!780 x!33227) (list!780 x!33226))))))

(assert (=> bs!12093 (=> true e!71780)))

(declare-fun b!124788 () Bool)

(assert (=> b!124788 (= e!71780 (= (toValue!22 thiss!4219 x!33227) (toValue!22 thiss!4219 x!33226)))))

(assert (= (and bs!12093 (not res!58023)) b!124788))

(declare-fun bs!12094 () Bool)

(assert (= bs!12094 (and m!110411 m!110409 m!110417)))

(assert (=> bs!12094 m!110411))

(assert (=> bs!12094 m!110409))

(assert (=> bs!12094 s!16885))

(declare-fun bs!12095 () Bool)

(declare-fun s!16887 () Bool)

(assert (= bs!12095 (and neg-inst!160 s!16887)))

(declare-fun res!58024 () Bool)

(declare-fun e!71781 () Bool)

(assert (=> bs!12095 (=> res!58024 e!71781)))

(assert (=> bs!12095 (= res!58024 (not (= (list!780 x!33227) (list!780 x!33225))))))

(assert (=> bs!12095 (=> true e!71781)))

(declare-fun b!124789 () Bool)

(assert (=> b!124789 (= e!71781 (= (toValue!22 thiss!4219 x!33227) (toValue!22 thiss!4219 x!33225)))))

(assert (= (and bs!12095 (not res!58024)) b!124789))

(declare-fun bs!12096 () Bool)

(assert (= bs!12096 (and m!110411 m!110407 m!110399)))

(assert (=> bs!12096 m!110411))

(assert (=> bs!12096 m!110407))

(assert (=> bs!12096 s!16887))

(declare-fun bs!12097 () Bool)

(declare-fun s!16889 () Bool)

(assert (= bs!12097 (and neg-inst!160 s!16889)))

(declare-fun res!58025 () Bool)

(declare-fun e!71782 () Bool)

(assert (=> bs!12097 (=> res!58025 e!71782)))

(assert (=> bs!12097 (= res!58025 (not (= (list!780 x!33227) (list!780 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225))))))))

(assert (=> bs!12097 (=> true e!71782)))

(declare-fun b!124790 () Bool)

(assert (=> b!124790 (= e!71782 (= (toValue!22 thiss!4219 x!33227) (toValue!22 thiss!4219 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225)))))))

(assert (= (and bs!12097 (not res!58025)) b!124790))

(declare-fun bs!12098 () Bool)

(assert (= bs!12098 (and m!110411 m!110405)))

(assert (=> bs!12098 m!110411))

(assert (=> bs!12098 m!110405))

(assert (=> bs!12098 s!16889))

(declare-fun bs!12099 () Bool)

(declare-fun s!16891 () Bool)

(assert (= bs!12099 (and neg-inst!160 s!16891)))

(declare-fun res!58026 () Bool)

(declare-fun e!71783 () Bool)

(assert (=> bs!12099 (=> res!58026 e!71783)))

(assert (=> bs!12099 (= res!58026 (not (= (list!780 x!33227) (list!780 x!33227))))))

(assert (=> bs!12099 (=> true e!71783)))

(declare-fun b!124791 () Bool)

(assert (=> b!124791 (= e!71783 (= (toValue!22 thiss!4219 x!33227) (toValue!22 thiss!4219 x!33227)))))

(assert (= (and bs!12099 (not res!58026)) b!124791))

(assert (=> m!110411 s!16891))

(declare-fun bs!12100 () Bool)

(declare-fun s!16893 () Bool)

(assert (= bs!12100 (and neg-inst!160 s!16893)))

(declare-fun res!58027 () Bool)

(declare-fun e!71784 () Bool)

(assert (=> bs!12100 (=> res!58027 e!71784)))

(assert (=> bs!12100 (= res!58027 (not (= (list!780 x!33226) (list!780 x!33227))))))

(assert (=> bs!12100 (=> true e!71784)))

(declare-fun b!124792 () Bool)

(assert (=> b!124792 (= e!71784 (= (toValue!22 thiss!4219 x!33226) (toValue!22 thiss!4219 x!33227)))))

(assert (= (and bs!12100 (not res!58027)) b!124792))

(assert (=> bs!12094 m!110409))

(assert (=> bs!12094 m!110411))

(assert (=> bs!12094 s!16893))

(declare-fun bs!12101 () Bool)

(declare-fun s!16895 () Bool)

(assert (= bs!12101 (and neg-inst!160 s!16895)))

(declare-fun res!58028 () Bool)

(declare-fun e!71785 () Bool)

(assert (=> bs!12101 (=> res!58028 e!71785)))

(assert (=> bs!12101 (= res!58028 (not (= (list!780 x!33225) (list!780 x!33227))))))

(assert (=> bs!12101 (=> true e!71785)))

(declare-fun b!124793 () Bool)

(assert (=> b!124793 (= e!71785 (= (toValue!22 thiss!4219 x!33225) (toValue!22 thiss!4219 x!33227)))))

(assert (= (and bs!12101 (not res!58028)) b!124793))

(assert (=> bs!12096 m!110407))

(assert (=> bs!12096 m!110411))

(assert (=> bs!12096 s!16895))

(declare-fun bs!12102 () Bool)

(declare-fun s!16897 () Bool)

(assert (= bs!12102 (and neg-inst!160 s!16897)))

(declare-fun res!58029 () Bool)

(declare-fun e!71786 () Bool)

(assert (=> bs!12102 (=> res!58029 e!71786)))

(assert (=> bs!12102 (= res!58029 (not (= (list!780 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225))) (list!780 x!33227))))))

(assert (=> bs!12102 (=> true e!71786)))

(declare-fun b!124794 () Bool)

(assert (=> b!124794 (= e!71786 (= (toValue!22 thiss!4219 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225))) (toValue!22 thiss!4219 x!33227)))))

(assert (= (and bs!12102 (not res!58029)) b!124794))

(assert (=> bs!12098 m!110405))

(assert (=> bs!12098 m!110411))

(assert (=> bs!12098 s!16897))

(assert (=> m!110411 s!16891))

(declare-fun bs!12103 () Bool)

(assert (= bs!12103 (and m!110419 m!110409 m!110417)))

(assert (=> bs!12103 s!16885))

(declare-fun bs!12104 () Bool)

(assert (= bs!12104 (and m!110419 m!110407 m!110399)))

(assert (=> bs!12104 s!16887))

(assert (=> m!110419 s!16891))

(declare-fun bs!12105 () Bool)

(assert (= bs!12105 (and m!110419 m!110411)))

(assert (=> bs!12105 s!16891))

(declare-fun bs!12106 () Bool)

(assert (= bs!12106 (and m!110419 m!110405)))

(assert (=> bs!12106 s!16889))

(assert (=> bs!12103 s!16893))

(assert (=> bs!12106 s!16897))

(assert (=> bs!12104 s!16895))

(assert (=> m!110419 s!16891))

(assert (=> bs!12105 s!16891))

(declare-fun bs!12107 () Bool)

(assert (= bs!12107 (and neg-inst!160 b!124766)))

(assert (=> bs!12107 (= true inst!161)))

(declare-fun res!58012 () Bool)

(declare-fun e!71766 () Bool)

(assert (=> start!12664 (=> res!58012 e!71766)))

(declare-fun lambda!3104 () Int)

(declare-fun Forall!103 (Int) Bool)

(assert (=> start!12664 (= res!58012 (not (Forall!103 lambda!3104)))))

(assert (=> start!12664 (= (Forall!103 lambda!3104) inst!160)))

(assert (=> start!12664 (not e!71766)))

(assert (=> start!12664 true))

(declare-fun e!71765 () Bool)

(assert (=> b!124765 (= e!71766 e!71765)))

(declare-fun res!58011 () Bool)

(assert (=> b!124765 (=> res!58011 e!71765)))

(declare-fun lambda!3105 () Int)

(declare-fun lambda!3106 () Int)

(declare-fun semiInverseModEq!118 (Int Int) Bool)

(assert (=> b!124765 (= res!58011 (not (semiInverseModEq!118 lambda!3105 lambda!3106)))))

(assert (=> b!124765 (= (semiInverseModEq!118 lambda!3105 lambda!3106) (Forall!103 lambda!3104))))

(declare-fun lambda!3107 () Int)

(declare-fun Forall2!79 (Int) Bool)

(assert (=> b!124766 (= e!71765 (Forall2!79 lambda!3107))))

(assert (=> b!124766 (= (Forall2!79 lambda!3107) inst!161)))

(assert (= neg-inst!161 inst!160))

(assert (= (and start!12664 (not res!58012)) b!124765))

(assert (= (and b!124765 (not res!58011)) b!124766))

(assert (= neg-inst!160 inst!161))

(declare-fun m!110425 () Bool)

(assert (=> start!12664 m!110425))

(assert (=> start!12664 m!110425))

(declare-fun m!110427 () Bool)

(assert (=> b!124765 m!110427))

(assert (=> b!124765 m!110427))

(assert (=> b!124765 m!110425))

(declare-fun m!110429 () Bool)

(assert (=> b!124766 m!110429))

(assert (=> b!124766 m!110429))

(push 1)

(assert (not b!124790))

(assert (not bs!12102))

(assert (not b!124783))

(assert (not b!124781))

(assert (not b!124777))

(assert (not b!124775))

(assert (not bs!12101))

(assert (not b!124789))

(assert (not b!124766))

(assert (not b!124793))

(assert (not bs!12075))

(assert (not bs!12088))

(assert (not bs!12080))

(assert (not b!124784))

(assert (not bs!12090))

(assert (not b!124786))

(assert (not bs!12077))

(assert (not bs!12091))

(assert (not bs!12086))

(assert (not bs!12100))

(assert (not bs!12081))

(assert (not bs!12097))

(assert (not b!124785))

(assert (not b!124765))

(assert (not b!124791))

(assert (not bs!12093))

(assert (not b!124787))

(assert (not b!124794))

(assert (not bs!12092))

(assert (not b!124780))

(assert (not bs!12099))

(assert (not b!124779))

(assert (not b!124776))

(assert (not start!12664))

(assert (not bs!12095))

(assert (not b!124778))

(assert (not b!124782))

(assert (not bs!12078))

(assert (not b!124788))

(assert (not b!124792))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!29546 () Bool)

(declare-fun list!782 (Conc!566) List!2042)

(assert (=> d!29546 (= (list!780 x!33226) (list!782 (c!27530 x!33226)))))

(declare-fun bs!12141 () Bool)

(assert (= bs!12141 d!29546))

(declare-fun m!110465 () Bool)

(assert (=> bs!12141 m!110465))

(assert (=> bs!12091 d!29546))

(declare-fun d!29548 () Bool)

(assert (=> d!29548 (= (list!780 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225))) (list!782 (c!27530 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225)))))))

(declare-fun bs!12142 () Bool)

(assert (= bs!12142 d!29548))

(declare-fun m!110467 () Bool)

(assert (=> bs!12142 m!110467))

(assert (=> bs!12091 d!29548))

(assert (=> bs!12078 d!29546))

(declare-fun d!29550 () Bool)

(assert (=> d!29550 (= (list!780 x!33225) (list!782 (c!27530 x!33225)))))

(declare-fun bs!12143 () Bool)

(assert (= bs!12143 d!29550))

(declare-fun m!110469 () Bool)

(assert (=> bs!12143 m!110469))

(assert (=> bs!12078 d!29550))

(declare-fun d!29552 () Bool)

(declare-fun efficientList!55 (BalanceConc!1136) List!2042)

(assert (=> d!29552 (= (toValue!22 thiss!4219 x!33227) (DedentValue!388 (efficientList!55 x!33227)))))

(declare-fun bs!12144 () Bool)

(assert (= bs!12144 d!29552))

(declare-fun m!110471 () Bool)

(assert (=> bs!12144 m!110471))

(assert (=> b!124789 d!29552))

(declare-fun d!29554 () Bool)

(assert (=> d!29554 (= (toValue!22 thiss!4219 x!33225) (DedentValue!388 (efficientList!55 x!33225)))))

(declare-fun bs!12145 () Bool)

(assert (= bs!12145 d!29554))

(declare-fun m!110473 () Bool)

(assert (=> bs!12145 m!110473))

(assert (=> b!124789 d!29554))

(declare-fun d!29556 () Bool)

(assert (=> d!29556 (= (toValue!22 thiss!4219 x!33226) (DedentValue!388 (efficientList!55 x!33226)))))

(declare-fun bs!12146 () Bool)

(assert (= bs!12146 d!29556))

(declare-fun m!110475 () Bool)

(assert (=> bs!12146 m!110475))

(assert (=> b!124792 d!29556))

(assert (=> b!124792 d!29552))

(declare-fun d!29558 () Bool)

(assert (=> d!29558 (= (toValue!22 thiss!4219 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225))) (DedentValue!388 (efficientList!55 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225)))))))

(declare-fun bs!12147 () Bool)

(assert (= bs!12147 d!29558))

(assert (=> bs!12147 m!110401))

(declare-fun m!110477 () Bool)

(assert (=> bs!12147 m!110477))

(assert (=> b!124785 d!29558))

(declare-fun d!29560 () Bool)

(assert (=> d!29560 (= (list!780 x!33227) (list!782 (c!27530 x!33227)))))

(declare-fun bs!12148 () Bool)

(assert (= bs!12148 d!29560))

(declare-fun m!110479 () Bool)

(assert (=> bs!12148 m!110479))

(assert (=> bs!12095 d!29560))

(assert (=> bs!12095 d!29550))

(assert (=> b!124779 d!29554))

(assert (=> bs!12100 d!29546))

(assert (=> bs!12100 d!29560))

(assert (=> b!124793 d!29554))

(assert (=> b!124793 d!29552))

(assert (=> bs!12092 d!29550))

(assert (=> bs!12092 d!29548))

(assert (=> bs!12097 d!29560))

(assert (=> bs!12097 d!29548))

(assert (=> b!124783 d!29558))

(assert (=> b!124783 d!29556))

(assert (=> b!124780 d!29556))

(assert (=> b!124780 d!29554))

(assert (=> bs!12101 d!29550))

(assert (=> bs!12101 d!29560))

(assert (=> b!124786 d!29556))

(assert (=> b!124786 d!29558))

(assert (=> bs!12086 d!29548))

(assert (=> bs!12086 d!29546))

(assert (=> b!124784 d!29558))

(assert (=> b!124784 d!29554))

(assert (=> b!124794 d!29558))

(assert (=> b!124794 d!29552))

(assert (=> b!124787 d!29554))

(assert (=> b!124787 d!29558))

(assert (=> b!124781 d!29556))

(assert (=> b!124790 d!29552))

(assert (=> b!124790 d!29558))

(assert (=> bs!12088 d!29548))

(assert (=> bs!12088 d!29550))

(assert (=> bs!12102 d!29548))

(assert (=> bs!12102 d!29560))

(assert (=> bs!12080 d!29546))

(assert (=> b!124782 d!29554))

(assert (=> b!124782 d!29556))

(assert (=> b!124791 d!29552))

(assert (=> bs!12090 d!29548))

(assert (=> bs!12077 d!29550))

(assert (=> b!124788 d!29552))

(assert (=> b!124788 d!29556))

(assert (=> bs!12093 d!29560))

(assert (=> bs!12093 d!29546))

(assert (=> bs!12099 d!29560))

(assert (=> bs!12081 d!29550))

(assert (=> bs!12081 d!29546))

(declare-fun bs!12149 () Bool)

(assert (= bs!12149 (and m!110407 b!124779)))

(assert (=> bs!12149 m!110399))

(assert (=> bs!12149 m!110399))

(declare-fun bs!12150 () Bool)

(assert (= bs!12150 (and m!110409 m!110407 b!124780)))

(assert (=> bs!12150 m!110417))

(assert (=> bs!12150 m!110399))

(declare-fun bs!12151 () Bool)

(assert (= bs!12151 (and m!110409 b!124781)))

(assert (=> bs!12151 m!110417))

(assert (=> bs!12151 m!110417))

(declare-fun bs!12152 () Bool)

(assert (= bs!12152 (and m!110409 m!110407 b!124782)))

(assert (=> bs!12152 m!110399))

(assert (=> bs!12152 m!110417))

(declare-fun bs!12153 () Bool)

(assert (= bs!12153 (and m!110405 m!110409 m!110417 b!124783)))

(declare-fun m!110481 () Bool)

(assert (=> bs!12153 m!110481))

(assert (=> bs!12153 m!110417))

(declare-fun bs!12154 () Bool)

(assert (= bs!12154 (and m!110405 m!110407 m!110399 b!124784)))

(assert (=> bs!12154 m!110481))

(assert (=> bs!12154 m!110399))

(declare-fun bs!12155 () Bool)

(assert (= bs!12155 (and m!110405 b!124785)))

(assert (=> bs!12155 m!110481))

(assert (=> bs!12155 m!110481))

(declare-fun bs!12156 () Bool)

(assert (= bs!12156 (and m!110405 m!110409 m!110417 b!124786)))

(assert (=> bs!12156 m!110417))

(assert (=> bs!12156 m!110481))

(declare-fun bs!12157 () Bool)

(assert (= bs!12157 (and m!110405 m!110407 m!110399 b!124787)))

(assert (=> bs!12157 m!110399))

(assert (=> bs!12157 m!110481))

(declare-fun bs!12158 () Bool)

(assert (= bs!12158 (and m!110411 m!110409 m!110417 b!124788)))

(assert (=> bs!12158 m!110419))

(assert (=> bs!12158 m!110417))

(declare-fun bs!12159 () Bool)

(assert (= bs!12159 (and m!110411 m!110407 m!110399 b!124789)))

(assert (=> bs!12159 m!110419))

(assert (=> bs!12159 m!110399))

(declare-fun bs!12160 () Bool)

(assert (= bs!12160 (and m!110411 m!110405 b!124790)))

(assert (=> bs!12160 m!110419))

(assert (=> bs!12160 m!110481))

(declare-fun bs!12161 () Bool)

(assert (= bs!12161 (and m!110411 b!124791)))

(assert (=> bs!12161 m!110419))

(assert (=> bs!12161 m!110419))

(declare-fun bs!12162 () Bool)

(assert (= bs!12162 (and m!110411 m!110409 m!110417 b!124792)))

(assert (=> bs!12162 m!110417))

(assert (=> bs!12162 m!110419))

(declare-fun bs!12163 () Bool)

(assert (= bs!12163 (and m!110411 m!110407 m!110399 b!124793)))

(assert (=> bs!12163 m!110399))

(assert (=> bs!12163 m!110419))

(declare-fun bs!12164 () Bool)

(assert (= bs!12164 (and m!110411 m!110405 b!124794)))

(assert (=> bs!12164 m!110481))

(assert (=> bs!12164 m!110419))

(push 1)

(assert (not d!29556))

(assert (not d!29552))

(assert (not b!124777))

(assert (not b!124775))

(assert (not d!29560))

(assert (not d!29546))

(assert (not b!124765))

(assert (not bs!12075))

(assert (not b!124776))

(assert (not d!29554))

(assert (not b!124778))

(assert (not d!29548))

(assert (not b!124766))

(assert (not d!29558))

(assert (not start!12664))

(assert (not d!29550))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!29578 () Bool)

(declare-fun lt!37805 () List!2042)

(assert (=> d!29578 (= lt!37805 (list!780 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225))))))

(declare-fun efficientList!57 (Conc!566 List!2042) List!2042)

(declare-fun efficientList$default$2!18 (Conc!566) List!2042)

(assert (=> d!29578 (= lt!37805 (efficientList!57 (c!27530 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225))) (efficientList$default$2!18 (c!27530 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225))))))))

(assert (=> d!29578 (= (efficientList!55 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225))) lt!37805)))

(declare-fun bs!12189 () Bool)

(assert (= bs!12189 d!29578))

(assert (=> bs!12189 m!110401))

(assert (=> bs!12189 m!110405))

(declare-fun m!110501 () Bool)

(assert (=> bs!12189 m!110501))

(assert (=> bs!12189 m!110501))

(declare-fun m!110503 () Bool)

(assert (=> bs!12189 m!110503))

(assert (=> d!29558 d!29578))

(declare-fun b!124852 () Bool)

(declare-fun e!71831 () List!2042)

(declare-fun e!71832 () List!2042)

(assert (=> b!124852 (= e!71831 e!71832)))

(declare-fun c!27537 () Bool)

(assert (=> b!124852 (= c!27537 (is-Leaf!994 (c!27530 x!33225)))))

(declare-fun d!29580 () Bool)

(declare-fun c!27536 () Bool)

(assert (=> d!29580 (= c!27536 (is-Empty!566 (c!27530 x!33225)))))

(assert (=> d!29580 (= (list!782 (c!27530 x!33225)) e!71831)))

(declare-fun b!124851 () Bool)

(assert (=> b!124851 (= e!71831 Nil!2036)))

(declare-fun b!124853 () Bool)

(declare-fun list!784 (IArray!1133) List!2042)

(assert (=> b!124853 (= e!71832 (list!784 (xs!3161 (c!27530 x!33225))))))

(declare-fun b!124854 () Bool)

(declare-fun ++!390 (List!2042 List!2042) List!2042)

(assert (=> b!124854 (= e!71832 (++!390 (list!782 (left!1619 (c!27530 x!33225))) (list!782 (right!1949 (c!27530 x!33225)))))))

(assert (= (and d!29580 c!27536) b!124851))

(assert (= (and d!29580 (not c!27536)) b!124852))

(assert (= (and b!124852 c!27537) b!124853))

(assert (= (and b!124852 (not c!27537)) b!124854))

(declare-fun m!110505 () Bool)

(assert (=> b!124853 m!110505))

(declare-fun m!110507 () Bool)

(assert (=> b!124854 m!110507))

(declare-fun m!110509 () Bool)

(assert (=> b!124854 m!110509))

(assert (=> b!124854 m!110507))

(assert (=> b!124854 m!110509))

(declare-fun m!110511 () Bool)

(assert (=> b!124854 m!110511))

(assert (=> d!29550 d!29580))

(declare-fun b!124856 () Bool)

(declare-fun e!71833 () List!2042)

(declare-fun e!71834 () List!2042)

(assert (=> b!124856 (= e!71833 e!71834)))

(declare-fun c!27539 () Bool)

(assert (=> b!124856 (= c!27539 (is-Leaf!994 (c!27530 x!33227)))))

(declare-fun d!29582 () Bool)

(declare-fun c!27538 () Bool)

(assert (=> d!29582 (= c!27538 (is-Empty!566 (c!27530 x!33227)))))

(assert (=> d!29582 (= (list!782 (c!27530 x!33227)) e!71833)))

(declare-fun b!124855 () Bool)

(assert (=> b!124855 (= e!71833 Nil!2036)))

(declare-fun b!124857 () Bool)

(assert (=> b!124857 (= e!71834 (list!784 (xs!3161 (c!27530 x!33227))))))

(declare-fun b!124858 () Bool)

(assert (=> b!124858 (= e!71834 (++!390 (list!782 (left!1619 (c!27530 x!33227))) (list!782 (right!1949 (c!27530 x!33227)))))))

(assert (= (and d!29582 c!27538) b!124855))

(assert (= (and d!29582 (not c!27538)) b!124856))

(assert (= (and b!124856 c!27539) b!124857))

(assert (= (and b!124856 (not c!27539)) b!124858))

(declare-fun m!110513 () Bool)

(assert (=> b!124857 m!110513))

(declare-fun m!110515 () Bool)

(assert (=> b!124858 m!110515))

(declare-fun m!110517 () Bool)

(assert (=> b!124858 m!110517))

(assert (=> b!124858 m!110515))

(assert (=> b!124858 m!110517))

(declare-fun m!110519 () Bool)

(assert (=> b!124858 m!110519))

(assert (=> d!29560 d!29582))

(declare-fun b!124860 () Bool)

(declare-fun e!71835 () List!2042)

(declare-fun e!71836 () List!2042)

(assert (=> b!124860 (= e!71835 e!71836)))

(declare-fun c!27541 () Bool)

(assert (=> b!124860 (= c!27541 (is-Leaf!994 (c!27530 x!33226)))))

(declare-fun d!29584 () Bool)

(declare-fun c!27540 () Bool)

(assert (=> d!29584 (= c!27540 (is-Empty!566 (c!27530 x!33226)))))

(assert (=> d!29584 (= (list!782 (c!27530 x!33226)) e!71835)))

(declare-fun b!124859 () Bool)

(assert (=> b!124859 (= e!71835 Nil!2036)))

(declare-fun b!124861 () Bool)

(assert (=> b!124861 (= e!71836 (list!784 (xs!3161 (c!27530 x!33226))))))

(declare-fun b!124862 () Bool)

(assert (=> b!124862 (= e!71836 (++!390 (list!782 (left!1619 (c!27530 x!33226))) (list!782 (right!1949 (c!27530 x!33226)))))))

(assert (= (and d!29584 c!27540) b!124859))

(assert (= (and d!29584 (not c!27540)) b!124860))

(assert (= (and b!124860 c!27541) b!124861))

(assert (= (and b!124860 (not c!27541)) b!124862))

(declare-fun m!110521 () Bool)

(assert (=> b!124861 m!110521))

(declare-fun m!110523 () Bool)

(assert (=> b!124862 m!110523))

(declare-fun m!110525 () Bool)

(assert (=> b!124862 m!110525))

(assert (=> b!124862 m!110523))

(assert (=> b!124862 m!110525))

(declare-fun m!110527 () Bool)

(assert (=> b!124862 m!110527))

(assert (=> d!29546 d!29584))

(declare-fun d!29586 () Bool)

(declare-fun lt!37806 () List!2042)

(assert (=> d!29586 (= lt!37806 (list!780 x!33227))))

(assert (=> d!29586 (= lt!37806 (efficientList!57 (c!27530 x!33227) (efficientList$default$2!18 (c!27530 x!33227))))))

(assert (=> d!29586 (= (efficientList!55 x!33227) lt!37806)))

(declare-fun bs!12190 () Bool)

(assert (= bs!12190 d!29586))

(assert (=> bs!12190 m!110411))

(declare-fun m!110529 () Bool)

(assert (=> bs!12190 m!110529))

(assert (=> bs!12190 m!110529))

(declare-fun m!110531 () Bool)

(assert (=> bs!12190 m!110531))

(assert (=> d!29552 d!29586))

(declare-fun d!29588 () Bool)

(declare-fun lt!37807 () List!2042)

(assert (=> d!29588 (= lt!37807 (list!780 x!33225))))

(assert (=> d!29588 (= lt!37807 (efficientList!57 (c!27530 x!33225) (efficientList$default$2!18 (c!27530 x!33225))))))

(assert (=> d!29588 (= (efficientList!55 x!33225) lt!37807)))

(declare-fun bs!12191 () Bool)

(assert (= bs!12191 d!29588))

(assert (=> bs!12191 m!110407))

(declare-fun m!110533 () Bool)

(assert (=> bs!12191 m!110533))

(assert (=> bs!12191 m!110533))

(declare-fun m!110535 () Bool)

(assert (=> bs!12191 m!110535))

(assert (=> d!29554 d!29588))

(declare-fun d!29590 () Bool)

(declare-fun lt!37808 () List!2042)

(assert (=> d!29590 (= lt!37808 (list!780 x!33226))))

(assert (=> d!29590 (= lt!37808 (efficientList!57 (c!27530 x!33226) (efficientList$default$2!18 (c!27530 x!33226))))))

(assert (=> d!29590 (= (efficientList!55 x!33226) lt!37808)))

(declare-fun bs!12192 () Bool)

(assert (= bs!12192 d!29590))

(assert (=> bs!12192 m!110409))

(declare-fun m!110537 () Bool)

(assert (=> bs!12192 m!110537))

(assert (=> bs!12192 m!110537))

(declare-fun m!110539 () Bool)

(assert (=> bs!12192 m!110539))

(assert (=> d!29556 d!29590))

(declare-fun b!124864 () Bool)

(declare-fun e!71837 () List!2042)

(declare-fun e!71838 () List!2042)

(assert (=> b!124864 (= e!71837 e!71838)))

(declare-fun c!27543 () Bool)

(assert (=> b!124864 (= c!27543 (is-Leaf!994 (c!27530 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225)))))))

(declare-fun d!29592 () Bool)

(declare-fun c!27542 () Bool)

(assert (=> d!29592 (= c!27542 (is-Empty!566 (c!27530 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225)))))))

(assert (=> d!29592 (= (list!782 (c!27530 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225)))) e!71837)))

(declare-fun b!124863 () Bool)

(assert (=> b!124863 (= e!71837 Nil!2036)))

(declare-fun b!124865 () Bool)

(assert (=> b!124865 (= e!71838 (list!784 (xs!3161 (c!27530 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225))))))))

(declare-fun b!124866 () Bool)

(assert (=> b!124866 (= e!71838 (++!390 (list!782 (left!1619 (c!27530 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225))))) (list!782 (right!1949 (c!27530 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225)))))))))

(assert (= (and d!29592 c!27542) b!124863))

(assert (= (and d!29592 (not c!27542)) b!124864))

(assert (= (and b!124864 c!27543) b!124865))

(assert (= (and b!124864 (not c!27543)) b!124866))

(declare-fun m!110541 () Bool)

(assert (=> b!124865 m!110541))

(declare-fun m!110543 () Bool)

(assert (=> b!124866 m!110543))

(declare-fun m!110545 () Bool)

(assert (=> b!124866 m!110545))

(assert (=> b!124866 m!110543))

(assert (=> b!124866 m!110545))

(declare-fun m!110547 () Bool)

(assert (=> b!124866 m!110547))

(assert (=> d!29548 d!29592))

(push 1)

(assert (not b!124866))

(assert (not d!29590))

(assert (not b!124777))

(assert (not b!124766))

(assert (not d!29588))

(assert (not bs!12075))

(assert (not b!124776))

(assert (not start!12664))

(assert (not b!124778))

(assert (not b!124858))

(assert (not d!29586))

(assert (not b!124862))

(assert (not b!124853))

(assert (not b!124775))

(assert (not d!29578))

(assert (not b!124865))

(assert (not b!124861))

(assert (not b!124765))

(assert (not b!124857))

(assert (not b!124854))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> start!12664 d!29554))

(declare-fun d!29596 () Bool)

(declare-fun c!27547 () Bool)

(assert (=> d!29596 (= c!27547 (is-DedentValue!388 (toValue!22 thiss!4219 x!33225)))))

(declare-fun e!71841 () BalanceConc!1136)

(assert (=> d!29596 (= (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225)) e!71841)))

(declare-fun b!124871 () Bool)

(declare-fun seqFromList!218 (List!2042) BalanceConc!1136)

(assert (=> b!124871 (= e!71841 (seqFromList!218 (value!14452 (toValue!22 thiss!4219 x!33225))))))

(declare-fun b!124872 () Bool)

(assert (=> b!124872 (= e!71841 (BalanceConc!1137 Empty!566))))

(assert (= (and d!29596 c!27547) b!124871))

(assert (= (and d!29596 (not c!27547)) b!124872))

(declare-fun m!110549 () Bool)

(assert (=> b!124871 m!110549))

(assert (=> start!12664 d!29596))

(declare-fun d!29598 () Bool)

(declare-fun isBalanced!163 (Conc!566) Bool)

(assert (=> d!29598 (= (inv!2586 x!33225) (isBalanced!163 (c!27530 x!33225)))))

(declare-fun bs!12193 () Bool)

(assert (= bs!12193 d!29598))

(declare-fun m!110551 () Bool)

(assert (=> bs!12193 m!110551))

(assert (=> start!12664 d!29598))

(assert (=> start!12664 d!29548))

(declare-fun d!29600 () Bool)

(declare-fun choose!1619 (Int) Bool)

(assert (=> d!29600 (= (Forall!103 lambda!3104) (choose!1619 lambda!3104))))

(declare-fun bs!12194 () Bool)

(assert (= bs!12194 d!29600))

(declare-fun m!110553 () Bool)

(assert (=> bs!12194 m!110553))

(assert (=> start!12664 d!29600))

(assert (=> start!12664 d!29550))

(assert (=> d!29588 d!29550))

(declare-fun b!124901 () Bool)

(declare-fun e!71858 () List!2042)

(declare-fun efficientList!58 (IArray!1133) List!2042)

(assert (=> b!124901 (= e!71858 (efficientList!58 (xs!3161 (c!27530 x!33225))))))

(declare-fun bm!5411 () Bool)

(declare-fun c!27563 () Bool)

(declare-fun c!27564 () Bool)

(assert (=> bm!5411 (= c!27563 c!27564)))

(declare-fun lt!37819 () List!2042)

(declare-fun call!5416 () List!2042)

(assert (=> bm!5411 (= call!5416 (++!390 e!71858 (ite c!27564 (efficientList$default$2!18 (c!27530 x!33225)) lt!37819)))))

(declare-fun b!124902 () Bool)

(declare-fun e!71856 () List!2042)

(assert (=> b!124902 (= e!71856 call!5416)))

(declare-fun d!29602 () Bool)

(declare-fun lt!37822 () List!2042)

(assert (=> d!29602 (= lt!37822 (++!390 (list!782 (c!27530 x!33225)) (efficientList$default$2!18 (c!27530 x!33225))))))

(declare-fun e!71857 () List!2042)

(assert (=> d!29602 (= lt!37822 e!71857)))

(declare-fun c!27562 () Bool)

(assert (=> d!29602 (= c!27562 (is-Empty!566 (c!27530 x!33225)))))

(assert (=> d!29602 (= (efficientList!57 (c!27530 x!33225) (efficientList$default$2!18 (c!27530 x!33225))) lt!37822)))

(declare-fun b!124903 () Bool)

(assert (=> b!124903 (= e!71857 (efficientList$default$2!18 (c!27530 x!33225)))))

(declare-fun b!124904 () Bool)

(declare-datatypes ((Unit!1601 0))(
  ( (Unit!1602) )
))
(declare-fun lt!37823 () Unit!1601)

(declare-fun lt!37820 () Unit!1601)

(assert (=> b!124904 (= lt!37823 lt!37820)))

(declare-fun lt!37821 () List!2042)

(assert (=> b!124904 (= (++!390 call!5416 (efficientList$default$2!18 (c!27530 x!33225))) (++!390 lt!37821 (++!390 lt!37819 (efficientList$default$2!18 (c!27530 x!33225)))))))

(declare-fun lemmaConcatAssociativity!118 (List!2042 List!2042 List!2042) Unit!1601)

(assert (=> b!124904 (= lt!37820 (lemmaConcatAssociativity!118 lt!37821 lt!37819 (efficientList$default$2!18 (c!27530 x!33225))))))

(assert (=> b!124904 (= lt!37819 (list!782 (right!1949 (c!27530 x!33225))))))

(assert (=> b!124904 (= lt!37821 (list!782 (left!1619 (c!27530 x!33225))))))

(assert (=> b!124904 (= e!71856 (efficientList!57 (left!1619 (c!27530 x!33225)) (efficientList!57 (right!1949 (c!27530 x!33225)) (efficientList$default$2!18 (c!27530 x!33225)))))))

(declare-fun b!124905 () Bool)

(assert (=> b!124905 (= e!71858 lt!37821)))

(declare-fun b!124906 () Bool)

(assert (=> b!124906 (= e!71857 e!71856)))

(assert (=> b!124906 (= c!27564 (is-Leaf!994 (c!27530 x!33225)))))

(assert (= (and d!29602 c!27562) b!124903))

(assert (= (and d!29602 (not c!27562)) b!124906))

(assert (= (and b!124906 c!27564) b!124902))

(assert (= (and b!124906 (not c!27564)) b!124904))

(assert (= (or b!124902 b!124904) bm!5411))

(assert (= (and bm!5411 c!27563) b!124901))

(assert (= (and bm!5411 (not c!27563)) b!124905))

(declare-fun m!110571 () Bool)

(assert (=> b!124901 m!110571))

(declare-fun m!110573 () Bool)

(assert (=> bm!5411 m!110573))

(assert (=> d!29602 m!110469))

(assert (=> d!29602 m!110469))

(assert (=> d!29602 m!110533))

(declare-fun m!110575 () Bool)

(assert (=> d!29602 m!110575))

(declare-fun m!110577 () Bool)

(assert (=> b!124904 m!110577))

(declare-fun m!110579 () Bool)

(assert (=> b!124904 m!110579))

(assert (=> b!124904 m!110533))

(declare-fun m!110581 () Bool)

(assert (=> b!124904 m!110581))

(assert (=> b!124904 m!110533))

(declare-fun m!110583 () Bool)

(assert (=> b!124904 m!110583))

(assert (=> b!124904 m!110581))

(declare-fun m!110585 () Bool)

(assert (=> b!124904 m!110585))

(assert (=> b!124904 m!110533))

(assert (=> b!124904 m!110577))

(assert (=> b!124904 m!110507))

(assert (=> b!124904 m!110509))

(assert (=> b!124904 m!110533))

(declare-fun m!110587 () Bool)

(assert (=> b!124904 m!110587))

(assert (=> d!29588 d!29602))

(declare-fun d!29608 () Bool)

(assert (=> d!29608 (= (efficientList$default$2!18 (c!27530 x!33225)) Nil!2036)))

(assert (=> d!29588 d!29608))

(assert (=> d!29590 d!29546))

(declare-fun b!124907 () Bool)

(declare-fun e!71861 () List!2042)

(assert (=> b!124907 (= e!71861 (efficientList!58 (xs!3161 (c!27530 x!33226))))))

(declare-fun bm!5412 () Bool)

(declare-fun c!27566 () Bool)

(declare-fun c!27567 () Bool)

(assert (=> bm!5412 (= c!27566 c!27567)))

(declare-fun call!5417 () List!2042)

(declare-fun lt!37824 () List!2042)

(assert (=> bm!5412 (= call!5417 (++!390 e!71861 (ite c!27567 (efficientList$default$2!18 (c!27530 x!33226)) lt!37824)))))

(declare-fun b!124908 () Bool)

(declare-fun e!71859 () List!2042)

(assert (=> b!124908 (= e!71859 call!5417)))

(declare-fun d!29610 () Bool)

(declare-fun lt!37827 () List!2042)

(assert (=> d!29610 (= lt!37827 (++!390 (list!782 (c!27530 x!33226)) (efficientList$default$2!18 (c!27530 x!33226))))))

(declare-fun e!71860 () List!2042)

(assert (=> d!29610 (= lt!37827 e!71860)))

(declare-fun c!27565 () Bool)

(assert (=> d!29610 (= c!27565 (is-Empty!566 (c!27530 x!33226)))))

(assert (=> d!29610 (= (efficientList!57 (c!27530 x!33226) (efficientList$default$2!18 (c!27530 x!33226))) lt!37827)))

(declare-fun b!124909 () Bool)

(assert (=> b!124909 (= e!71860 (efficientList$default$2!18 (c!27530 x!33226)))))

(declare-fun b!124910 () Bool)

(declare-fun lt!37828 () Unit!1601)

(declare-fun lt!37825 () Unit!1601)

(assert (=> b!124910 (= lt!37828 lt!37825)))

(declare-fun lt!37826 () List!2042)

(assert (=> b!124910 (= (++!390 call!5417 (efficientList$default$2!18 (c!27530 x!33226))) (++!390 lt!37826 (++!390 lt!37824 (efficientList$default$2!18 (c!27530 x!33226)))))))

(assert (=> b!124910 (= lt!37825 (lemmaConcatAssociativity!118 lt!37826 lt!37824 (efficientList$default$2!18 (c!27530 x!33226))))))

(assert (=> b!124910 (= lt!37824 (list!782 (right!1949 (c!27530 x!33226))))))

(assert (=> b!124910 (= lt!37826 (list!782 (left!1619 (c!27530 x!33226))))))

(assert (=> b!124910 (= e!71859 (efficientList!57 (left!1619 (c!27530 x!33226)) (efficientList!57 (right!1949 (c!27530 x!33226)) (efficientList$default$2!18 (c!27530 x!33226)))))))

(declare-fun b!124911 () Bool)

(assert (=> b!124911 (= e!71861 lt!37826)))

(declare-fun b!124912 () Bool)

(assert (=> b!124912 (= e!71860 e!71859)))

(assert (=> b!124912 (= c!27567 (is-Leaf!994 (c!27530 x!33226)))))

(assert (= (and d!29610 c!27565) b!124909))

(assert (= (and d!29610 (not c!27565)) b!124912))

(assert (= (and b!124912 c!27567) b!124908))

(assert (= (and b!124912 (not c!27567)) b!124910))

(assert (= (or b!124908 b!124910) bm!5412))

(assert (= (and bm!5412 c!27566) b!124907))

(assert (= (and bm!5412 (not c!27566)) b!124911))

(declare-fun m!110589 () Bool)

(assert (=> b!124907 m!110589))

(declare-fun m!110591 () Bool)

(assert (=> bm!5412 m!110591))

(assert (=> d!29610 m!110465))

(assert (=> d!29610 m!110465))

(assert (=> d!29610 m!110537))

(declare-fun m!110593 () Bool)

(assert (=> d!29610 m!110593))

(declare-fun m!110595 () Bool)

(assert (=> b!124910 m!110595))

(declare-fun m!110597 () Bool)

(assert (=> b!124910 m!110597))

(assert (=> b!124910 m!110537))

(declare-fun m!110599 () Bool)

(assert (=> b!124910 m!110599))

(assert (=> b!124910 m!110537))

(declare-fun m!110601 () Bool)

(assert (=> b!124910 m!110601))

(assert (=> b!124910 m!110599))

(declare-fun m!110603 () Bool)

(assert (=> b!124910 m!110603))

(assert (=> b!124910 m!110537))

(assert (=> b!124910 m!110595))

(assert (=> b!124910 m!110523))

(assert (=> b!124910 m!110525))

(assert (=> b!124910 m!110537))

(declare-fun m!110605 () Bool)

(assert (=> b!124910 m!110605))

(assert (=> d!29590 d!29610))

(declare-fun d!29612 () Bool)

(assert (=> d!29612 (= (efficientList$default$2!18 (c!27530 x!33226)) Nil!2036)))

(assert (=> d!29590 d!29612))

(declare-fun d!29614 () Bool)

(declare-fun c!27570 () Bool)

(assert (=> d!29614 (= c!27570 (is-Node!566 (c!27530 x!33225)))))

(declare-fun e!71866 () Bool)

(assert (=> d!29614 (= (inv!2585 (c!27530 x!33225)) e!71866)))

(declare-fun b!124919 () Bool)

(declare-fun inv!2589 (Conc!566) Bool)

(assert (=> b!124919 (= e!71866 (inv!2589 (c!27530 x!33225)))))

(declare-fun b!124920 () Bool)

(declare-fun e!71867 () Bool)

(assert (=> b!124920 (= e!71866 e!71867)))

(declare-fun res!58073 () Bool)

(assert (=> b!124920 (= res!58073 (not (is-Leaf!994 (c!27530 x!33225))))))

(assert (=> b!124920 (=> res!58073 e!71867)))

(declare-fun b!124921 () Bool)

(declare-fun inv!2590 (Conc!566) Bool)

(assert (=> b!124921 (= e!71867 (inv!2590 (c!27530 x!33225)))))

(assert (= (and d!29614 c!27570) b!124919))

(assert (= (and d!29614 (not c!27570)) b!124920))

(assert (= (and b!124920 (not res!58073)) b!124921))

(declare-fun m!110607 () Bool)

(assert (=> b!124919 m!110607))

(declare-fun m!110609 () Bool)

(assert (=> b!124921 m!110609))

(assert (=> b!124775 d!29614))

(assert (=> d!29586 d!29560))

(declare-fun b!124922 () Bool)

(declare-fun e!71870 () List!2042)

(assert (=> b!124922 (= e!71870 (efficientList!58 (xs!3161 (c!27530 x!33227))))))

(declare-fun bm!5413 () Bool)

(declare-fun c!27572 () Bool)

(declare-fun c!27573 () Bool)

(assert (=> bm!5413 (= c!27572 c!27573)))

(declare-fun call!5418 () List!2042)

(declare-fun lt!37831 () List!2042)

(assert (=> bm!5413 (= call!5418 (++!390 e!71870 (ite c!27573 (efficientList$default$2!18 (c!27530 x!33227)) lt!37831)))))

(declare-fun b!124923 () Bool)

(declare-fun e!71868 () List!2042)

(assert (=> b!124923 (= e!71868 call!5418)))

(declare-fun d!29616 () Bool)

(declare-fun lt!37834 () List!2042)

(assert (=> d!29616 (= lt!37834 (++!390 (list!782 (c!27530 x!33227)) (efficientList$default$2!18 (c!27530 x!33227))))))

(declare-fun e!71869 () List!2042)

(assert (=> d!29616 (= lt!37834 e!71869)))

(declare-fun c!27571 () Bool)

(assert (=> d!29616 (= c!27571 (is-Empty!566 (c!27530 x!33227)))))

(assert (=> d!29616 (= (efficientList!57 (c!27530 x!33227) (efficientList$default$2!18 (c!27530 x!33227))) lt!37834)))

(declare-fun b!124924 () Bool)

(assert (=> b!124924 (= e!71869 (efficientList$default$2!18 (c!27530 x!33227)))))

(declare-fun b!124925 () Bool)

(declare-fun lt!37835 () Unit!1601)

(declare-fun lt!37832 () Unit!1601)

(assert (=> b!124925 (= lt!37835 lt!37832)))

(declare-fun lt!37833 () List!2042)

(assert (=> b!124925 (= (++!390 call!5418 (efficientList$default$2!18 (c!27530 x!33227))) (++!390 lt!37833 (++!390 lt!37831 (efficientList$default$2!18 (c!27530 x!33227)))))))

(assert (=> b!124925 (= lt!37832 (lemmaConcatAssociativity!118 lt!37833 lt!37831 (efficientList$default$2!18 (c!27530 x!33227))))))

(assert (=> b!124925 (= lt!37831 (list!782 (right!1949 (c!27530 x!33227))))))

(assert (=> b!124925 (= lt!37833 (list!782 (left!1619 (c!27530 x!33227))))))

(assert (=> b!124925 (= e!71868 (efficientList!57 (left!1619 (c!27530 x!33227)) (efficientList!57 (right!1949 (c!27530 x!33227)) (efficientList$default$2!18 (c!27530 x!33227)))))))

(declare-fun b!124926 () Bool)

(assert (=> b!124926 (= e!71870 lt!37833)))

(declare-fun b!124927 () Bool)

(assert (=> b!124927 (= e!71869 e!71868)))

(assert (=> b!124927 (= c!27573 (is-Leaf!994 (c!27530 x!33227)))))

(assert (= (and d!29616 c!27571) b!124924))

(assert (= (and d!29616 (not c!27571)) b!124927))

(assert (= (and b!124927 c!27573) b!124923))

(assert (= (and b!124927 (not c!27573)) b!124925))

(assert (= (or b!124923 b!124925) bm!5413))

(assert (= (and bm!5413 c!27572) b!124922))

(assert (= (and bm!5413 (not c!27572)) b!124926))

(declare-fun m!110611 () Bool)

(assert (=> b!124922 m!110611))

(declare-fun m!110615 () Bool)

(assert (=> bm!5413 m!110615))

(assert (=> d!29616 m!110479))

(assert (=> d!29616 m!110479))

(assert (=> d!29616 m!110529))

(declare-fun m!110617 () Bool)

(assert (=> d!29616 m!110617))

(declare-fun m!110619 () Bool)

(assert (=> b!124925 m!110619))

(declare-fun m!110623 () Bool)

(assert (=> b!124925 m!110623))

(assert (=> b!124925 m!110529))

(declare-fun m!110625 () Bool)

(assert (=> b!124925 m!110625))

(assert (=> b!124925 m!110529))

(declare-fun m!110627 () Bool)

(assert (=> b!124925 m!110627))

(assert (=> b!124925 m!110625))

(declare-fun m!110629 () Bool)

(assert (=> b!124925 m!110629))

(assert (=> b!124925 m!110529))

(assert (=> b!124925 m!110619))

(assert (=> b!124925 m!110515))

(assert (=> b!124925 m!110517))

(assert (=> b!124925 m!110529))

(declare-fun m!110631 () Bool)

(assert (=> b!124925 m!110631))

(assert (=> d!29586 d!29616))

(declare-fun d!29620 () Bool)

(assert (=> d!29620 (= (efficientList$default$2!18 (c!27530 x!33227)) Nil!2036)))

(assert (=> d!29586 d!29620))

(assert (=> b!124776 d!29556))

(assert (=> b!124776 d!29552))

(assert (=> bs!12075 d!29548))

(assert (=> bs!12075 d!29596))

(assert (=> bs!12075 d!29554))

(assert (=> bs!12075 d!29550))

(assert (=> d!29578 d!29548))

(declare-fun b!124932 () Bool)

(declare-fun e!71875 () List!2042)

(assert (=> b!124932 (= e!71875 (efficientList!58 (xs!3161 (c!27530 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225))))))))

(declare-fun bm!5414 () Bool)

(declare-fun c!27577 () Bool)

(declare-fun c!27578 () Bool)

(assert (=> bm!5414 (= c!27577 c!27578)))

(declare-fun lt!37837 () List!2042)

(declare-fun call!5419 () List!2042)

(assert (=> bm!5414 (= call!5419 (++!390 e!71875 (ite c!27578 (efficientList$default$2!18 (c!27530 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225)))) lt!37837)))))

(declare-fun b!124933 () Bool)

(declare-fun e!71873 () List!2042)

(assert (=> b!124933 (= e!71873 call!5419)))

(declare-fun d!29622 () Bool)

(declare-fun lt!37840 () List!2042)

(assert (=> d!29622 (= lt!37840 (++!390 (list!782 (c!27530 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225)))) (efficientList$default$2!18 (c!27530 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225))))))))

(declare-fun e!71874 () List!2042)

(assert (=> d!29622 (= lt!37840 e!71874)))

(declare-fun c!27576 () Bool)

(assert (=> d!29622 (= c!27576 (is-Empty!566 (c!27530 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225)))))))

(assert (=> d!29622 (= (efficientList!57 (c!27530 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225))) (efficientList$default$2!18 (c!27530 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225))))) lt!37840)))

(declare-fun b!124934 () Bool)

(assert (=> b!124934 (= e!71874 (efficientList$default$2!18 (c!27530 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225)))))))

(declare-fun b!124935 () Bool)

(declare-fun lt!37841 () Unit!1601)

(declare-fun lt!37838 () Unit!1601)

(assert (=> b!124935 (= lt!37841 lt!37838)))

(declare-fun lt!37839 () List!2042)

(assert (=> b!124935 (= (++!390 call!5419 (efficientList$default$2!18 (c!27530 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225))))) (++!390 lt!37839 (++!390 lt!37837 (efficientList$default$2!18 (c!27530 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225)))))))))

(assert (=> b!124935 (= lt!37838 (lemmaConcatAssociativity!118 lt!37839 lt!37837 (efficientList$default$2!18 (c!27530 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225))))))))

(assert (=> b!124935 (= lt!37837 (list!782 (right!1949 (c!27530 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225))))))))

(assert (=> b!124935 (= lt!37839 (list!782 (left!1619 (c!27530 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225))))))))

(assert (=> b!124935 (= e!71873 (efficientList!57 (left!1619 (c!27530 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225)))) (efficientList!57 (right!1949 (c!27530 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225)))) (efficientList$default$2!18 (c!27530 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225)))))))))

(declare-fun b!124936 () Bool)

(assert (=> b!124936 (= e!71875 lt!37839)))

(declare-fun b!124937 () Bool)

(assert (=> b!124937 (= e!71874 e!71873)))

(assert (=> b!124937 (= c!27578 (is-Leaf!994 (c!27530 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225)))))))

(assert (= (and d!29622 c!27576) b!124934))

(assert (= (and d!29622 (not c!27576)) b!124937))

(assert (= (and b!124937 c!27578) b!124933))

(assert (= (and b!124937 (not c!27578)) b!124935))

(assert (= (or b!124933 b!124935) bm!5414))

(assert (= (and bm!5414 c!27577) b!124932))

(assert (= (and bm!5414 (not c!27577)) b!124936))

(declare-fun m!110639 () Bool)

(assert (=> b!124932 m!110639))

(declare-fun m!110643 () Bool)

(assert (=> bm!5414 m!110643))

(assert (=> d!29622 m!110467))

(assert (=> d!29622 m!110467))

(assert (=> d!29622 m!110501))

(declare-fun m!110645 () Bool)

(assert (=> d!29622 m!110645))

(declare-fun m!110647 () Bool)

(assert (=> b!124935 m!110647))

(declare-fun m!110649 () Bool)

(assert (=> b!124935 m!110649))

(assert (=> b!124935 m!110501))

(declare-fun m!110651 () Bool)

(assert (=> b!124935 m!110651))

(assert (=> b!124935 m!110501))

(declare-fun m!110653 () Bool)

(assert (=> b!124935 m!110653))

(assert (=> b!124935 m!110651))

(declare-fun m!110655 () Bool)

(assert (=> b!124935 m!110655))

(assert (=> b!124935 m!110501))

(assert (=> b!124935 m!110647))

(assert (=> b!124935 m!110543))

(assert (=> b!124935 m!110545))

(assert (=> b!124935 m!110501))

(declare-fun m!110659 () Bool)

(assert (=> b!124935 m!110659))

(assert (=> d!29578 d!29622))

(declare-fun d!29626 () Bool)

(assert (=> d!29626 (= (efficientList$default$2!18 (c!27530 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33225)))) Nil!2036)))

(assert (=> d!29578 d!29626))

(declare-fun d!29628 () Bool)

(assert (=> d!29628 (= (inv!2586 x!33227) (isBalanced!163 (c!27530 x!33227)))))

(declare-fun bs!12197 () Bool)

(assert (= bs!12197 d!29628))

(declare-fun m!110663 () Bool)

(assert (=> bs!12197 m!110663))

(assert (=> b!124766 d!29628))

(declare-fun d!29632 () Bool)

(declare-fun choose!1620 (Int) Bool)

(assert (=> d!29632 (= (Forall2!79 lambda!3107) (choose!1620 lambda!3107))))

(declare-fun bs!12199 () Bool)

(assert (= bs!12199 d!29632))

(declare-fun m!110669 () Bool)

(assert (=> bs!12199 m!110669))

(assert (=> b!124766 d!29632))

(declare-fun d!29636 () Bool)

(assert (=> d!29636 (= (inv!2586 x!33226) (isBalanced!163 (c!27530 x!33226)))))

(declare-fun bs!12200 () Bool)

(assert (= bs!12200 d!29636))

(declare-fun m!110671 () Bool)

(assert (=> bs!12200 m!110671))

(assert (=> b!124766 d!29636))

(assert (=> b!124766 d!29546))

(assert (=> b!124766 d!29560))

(declare-fun bs!12202 () Bool)

(declare-fun d!29638 () Bool)

(assert (= bs!12202 (and d!29638 start!12664)))

(declare-fun lambda!3132 () Int)

(assert (=> bs!12202 (not (= lambda!3132 lambda!3104))))

(assert (=> d!29638 true))

(declare-fun order!1129 () Int)

(declare-fun order!1131 () Int)

(declare-fun dynLambda!745 (Int Int) Int)

(declare-fun dynLambda!746 (Int Int) Int)

(assert (=> d!29638 (< (dynLambda!745 order!1129 lambda!3105) (dynLambda!746 order!1131 lambda!3132))))

(assert (=> d!29638 true))

(declare-fun order!1133 () Int)

(declare-fun dynLambda!747 (Int Int) Int)

(assert (=> d!29638 (< (dynLambda!747 order!1133 lambda!3106) (dynLambda!746 order!1131 lambda!3132))))

(assert (=> d!29638 (= (semiInverseModEq!118 lambda!3105 lambda!3106) (Forall!103 lambda!3132))))

(declare-fun bs!12203 () Bool)

(assert (= bs!12203 d!29638))

(declare-fun m!110685 () Bool)

(assert (=> bs!12203 m!110685))

(assert (=> b!124765 d!29638))

(assert (=> b!124765 d!29600))

(declare-fun d!29642 () Bool)

(declare-fun c!27581 () Bool)

(assert (=> d!29642 (= c!27581 (is-Node!566 (c!27530 x!33227)))))

(declare-fun e!71878 () Bool)

(assert (=> d!29642 (= (inv!2585 (c!27530 x!33227)) e!71878)))

(declare-fun b!124946 () Bool)

(assert (=> b!124946 (= e!71878 (inv!2589 (c!27530 x!33227)))))

(declare-fun b!124947 () Bool)

(declare-fun e!71879 () Bool)

(assert (=> b!124947 (= e!71878 e!71879)))

(declare-fun res!58074 () Bool)

(assert (=> b!124947 (= res!58074 (not (is-Leaf!994 (c!27530 x!33227))))))

(assert (=> b!124947 (=> res!58074 e!71879)))

(declare-fun b!124948 () Bool)

(assert (=> b!124948 (= e!71879 (inv!2590 (c!27530 x!33227)))))

(assert (= (and d!29642 c!27581) b!124946))

(assert (= (and d!29642 (not c!27581)) b!124947))

(assert (= (and b!124947 (not res!58074)) b!124948))

(declare-fun m!110687 () Bool)

(assert (=> b!124946 m!110687))

(declare-fun m!110689 () Bool)

(assert (=> b!124948 m!110689))

(assert (=> b!124778 d!29642))

(declare-fun d!29644 () Bool)

(declare-fun c!27582 () Bool)

(assert (=> d!29644 (= c!27582 (is-Node!566 (c!27530 x!33226)))))

(declare-fun e!71880 () Bool)

(assert (=> d!29644 (= (inv!2585 (c!27530 x!33226)) e!71880)))

(declare-fun b!124949 () Bool)

(assert (=> b!124949 (= e!71880 (inv!2589 (c!27530 x!33226)))))

(declare-fun b!124950 () Bool)

(declare-fun e!71881 () Bool)

(assert (=> b!124950 (= e!71880 e!71881)))

(declare-fun res!58075 () Bool)

(assert (=> b!124950 (= res!58075 (not (is-Leaf!994 (c!27530 x!33226))))))

(assert (=> b!124950 (=> res!58075 e!71881)))

(declare-fun b!124951 () Bool)

(assert (=> b!124951 (= e!71881 (inv!2590 (c!27530 x!33226)))))

(assert (= (and d!29644 c!27582) b!124949))

(assert (= (and d!29644 (not c!27582)) b!124950))

(assert (= (and b!124950 (not res!58075)) b!124951))

(declare-fun m!110691 () Bool)

(assert (=> b!124949 m!110691))

(declare-fun m!110693 () Bool)

(assert (=> b!124951 m!110693))

(assert (=> b!124777 d!29644))

(declare-fun tp!68277 () Bool)

(declare-fun b!124958 () Bool)

(declare-fun tp!68276 () Bool)

(declare-fun e!71886 () Bool)

(assert (=> b!124958 (= e!71886 (and (inv!2585 (left!1619 (c!27530 x!33225))) tp!68276 (inv!2585 (right!1949 (c!27530 x!33225))) tp!68277))))

(declare-fun b!124959 () Bool)

(declare-fun inv!2591 (IArray!1133) Bool)

(assert (=> b!124959 (= e!71886 (inv!2591 (xs!3161 (c!27530 x!33225))))))

(assert (=> b!124775 (= tp!68260 (and (inv!2585 (c!27530 x!33225)) e!71886))))

(assert (= (and b!124775 (is-Node!566 (c!27530 x!33225))) b!124958))

(assert (= (and b!124775 (is-Leaf!994 (c!27530 x!33225))) b!124959))

(declare-fun m!110695 () Bool)

(assert (=> b!124958 m!110695))

(declare-fun m!110697 () Bool)

(assert (=> b!124958 m!110697))

(declare-fun m!110699 () Bool)

(assert (=> b!124959 m!110699))

(assert (=> b!124775 m!110397))

(declare-fun e!71888 () Bool)

(declare-fun tp!68279 () Bool)

(declare-fun tp!68278 () Bool)

(declare-fun b!124960 () Bool)

(assert (=> b!124960 (= e!71888 (and (inv!2585 (left!1619 (c!27530 x!33227))) tp!68278 (inv!2585 (right!1949 (c!27530 x!33227))) tp!68279))))

(declare-fun b!124961 () Bool)

(assert (=> b!124961 (= e!71888 (inv!2591 (xs!3161 (c!27530 x!33227))))))

(assert (=> b!124778 (= tp!68262 (and (inv!2585 (c!27530 x!33227)) e!71888))))

(assert (= (and b!124778 (is-Node!566 (c!27530 x!33227))) b!124960))

(assert (= (and b!124778 (is-Leaf!994 (c!27530 x!33227))) b!124961))

(declare-fun m!110701 () Bool)

(assert (=> b!124960 m!110701))

(declare-fun m!110703 () Bool)

(assert (=> b!124960 m!110703))

(declare-fun m!110705 () Bool)

(assert (=> b!124961 m!110705))

(assert (=> b!124778 m!110423))

(declare-fun b!124962 () Bool)

(declare-fun tp!68280 () Bool)

(declare-fun tp!68281 () Bool)

(declare-fun e!71890 () Bool)

(assert (=> b!124962 (= e!71890 (and (inv!2585 (left!1619 (c!27530 x!33226))) tp!68280 (inv!2585 (right!1949 (c!27530 x!33226))) tp!68281))))

(declare-fun b!124963 () Bool)

(assert (=> b!124963 (= e!71890 (inv!2591 (xs!3161 (c!27530 x!33226))))))

(assert (=> b!124777 (= tp!68261 (and (inv!2585 (c!27530 x!33226)) e!71890))))

(assert (= (and b!124777 (is-Node!566 (c!27530 x!33226))) b!124962))

(assert (= (and b!124777 (is-Leaf!994 (c!27530 x!33226))) b!124963))

(declare-fun m!110707 () Bool)

(assert (=> b!124962 m!110707))

(declare-fun m!110709 () Bool)

(assert (=> b!124962 m!110709))

(declare-fun m!110711 () Bool)

(assert (=> b!124963 m!110711))

(assert (=> b!124777 m!110421))

(push 1)

(assert (not b!124866))

(assert (not b!124951))

(assert (not b!124958))

(assert (not b!124935))

(assert (not b!124925))

(assert (not b!124775))

(assert (not b!124871))

(assert (not b!124948))

(assert (not d!29622))

(assert (not b!124778))

(assert (not b!124907))

(assert (not bm!5411))

(assert (not d!29598))

(assert (not d!29610))

(assert (not b!124949))

(assert (not b!124922))

(assert (not d!29636))

(assert (not b!124862))

(assert (not b!124853))

(assert (not b!124963))

(assert (not b!124961))

(assert (not b!124959))

(assert (not b!124777))

(assert (not d!29638))

(assert (not d!29628))

(assert (not b!124904))

(assert (not b!124865))

(assert (not b!124861))

(assert (not bm!5414))

(assert (not b!124921))

(assert (not bm!5413))

(assert (not b!124946))

(assert (not d!29632))

(assert (not b!124932))

(assert (not bm!5412))

(assert (not b!124962))

(assert (not b!124858))

(assert (not b!124901))

(assert (not b!124960))

(assert (not d!29616))

(assert (not b!124857))

(assert (not d!29602))

(assert (not b!124854))

(assert (not b!124910))

(assert (not d!29600))

(assert (not b!124919))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

