; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!409836 () Bool)

(assert start!409836)

(assert (=> start!409836 true))

(declare-fun b!4271537 () Bool)

(assert (=> b!4271537 true))

(assert (=> b!4271537 true))

(assert (=> b!4271537 true))

(declare-fun b!4271546 () Bool)

(declare-fun e!2652100 () Bool)

(declare-datatypes ((List!47434 0))(
  ( (Nil!47310) (Cons!47310 (h!52730 (_ BitVec 16)) (t!353762 List!47434)) )
))
(declare-datatypes ((IArray!28589 0))(
  ( (IArray!28590 (innerList!14352 List!47434)) )
))
(declare-datatypes ((Conc!14292 0))(
  ( (Node!14292 (left!35167 Conc!14292) (right!35497 Conc!14292) (csize!28814 Int) (cheight!14503 Int)) (Leaf!22094 (xs!17598 IArray!28589) (csize!28815 Int)) (Empty!14292) )
))
(declare-datatypes ((BalanceConc!28094 0))(
  ( (BalanceConc!28095 (c!726799 Conc!14292)) )
))
(declare-fun x!741185 () BalanceConc!28094)

(declare-fun tp!1308111 () Bool)

(declare-fun inv!62447 (Conc!14292) Bool)

(assert (=> b!4271546 (= e!2652100 (and (inv!62447 (c!726799 x!741185)) tp!1308111))))

(declare-fun inst!1714 () Bool)

(declare-datatypes ((IntegerValueInjection!136 0))(
  ( (IntegerValueInjection!137) )
))
(declare-fun thiss!2185 () IntegerValueInjection!136)

(declare-fun inv!62448 (BalanceConc!28094) Bool)

(declare-fun list!17169 (BalanceConc!28094) List!47434)

(declare-datatypes ((TokenValue!8265 0))(
  ( (FloatLiteralValue!16530 (text!58300 List!47434)) (TokenValueExt!8264 (__x!28711 Int)) (Broken!41325 (value!249500 List!47434)) (Object!8388) (End!8265) (Def!8265) (Underscore!8265) (Match!8265) (Else!8265) (Error!8265) (Case!8265) (If!8265) (Extends!8265) (Abstract!8265) (Class!8265) (Val!8265) (DelimiterValue!16530 (del!8325 List!47434)) (KeywordValue!8271 (value!249501 List!47434)) (CommentValue!16530 (value!249502 List!47434)) (WhitespaceValue!16530 (value!249503 List!47434)) (IndentationValue!8265 (value!249504 List!47434)) (String!55272) (Int32!8265) (Broken!41326 (value!249505 List!47434)) (Boolean!8266) (Unit!66233) (OperatorValue!8268 (op!8325 List!47434)) (IdentifierValue!16530 (value!249506 List!47434)) (IdentifierValue!16531 (value!249507 List!47434)) (WhitespaceValue!16531 (value!249508 List!47434)) (True!16530) (False!16530) (Broken!41327 (value!249509 List!47434)) (Broken!41328 (value!249510 List!47434)) (True!16531) (RightBrace!8265) (RightBracket!8265) (Colon!8265) (Null!8265) (Comma!8265) (LeftBracket!8265) (False!16531) (LeftBrace!8265) (ImaginaryLiteralValue!8265 (text!58301 List!47434)) (StringLiteralValue!24795 (value!249511 List!47434)) (EOFValue!8265 (value!249512 List!47434)) (IdentValue!8265 (value!249513 List!47434)) (DelimiterValue!16531 (value!249514 List!47434)) (DedentValue!8265 (value!249515 List!47434)) (NewLineValue!8265 (value!249516 List!47434)) (IntegerValue!24795 (value!249517 (_ BitVec 32)) (text!58302 List!47434)) (IntegerValue!24796 (value!249518 Int) (text!58303 List!47434)) (Times!8265) (Or!8265) (Equal!8265) (Minus!8265) (Broken!41329 (value!249519 List!47434)) (And!8265) (Div!8265) (LessEqual!8265) (Mod!8265) (Concat!21163) (Not!8265) (Plus!8265) (SpaceValue!8265 (value!249520 List!47434)) (IntegerValue!24797 (value!249521 Int) (text!58304 List!47434)) (StringLiteralValue!24796 (text!58305 List!47434)) (FloatLiteralValue!16531 (text!58306 List!47434)) (BytesLiteralValue!8265 (value!249522 List!47434)) (CommentValue!16531 (value!249523 List!47434)) (StringLiteralValue!24797 (value!249524 List!47434)) (ErrorTokenValue!8265 (msg!8326 List!47434)) )
))
(declare-fun toCharacters!5 (IntegerValueInjection!136 TokenValue!8265) BalanceConc!28094)

(declare-fun toValue!12 (IntegerValueInjection!136 BalanceConc!28094) TokenValue!8265)

(assert (=> start!409836 (= inst!1714 (=> (and (inv!62448 x!741185) e!2652100) (= (list!17169 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185))) (list!17169 x!741185))))))

(assert (= start!409836 b!4271546))

(declare-fun m!4865075 () Bool)

(assert (=> b!4271546 m!4865075))

(declare-fun m!4865077 () Bool)

(assert (=> start!409836 m!4865077))

(assert (=> start!409836 m!4865077))

(declare-fun m!4865079 () Bool)

(assert (=> start!409836 m!4865079))

(declare-fun m!4865081 () Bool)

(assert (=> start!409836 m!4865081))

(declare-fun m!4865083 () Bool)

(assert (=> start!409836 m!4865083))

(assert (=> start!409836 m!4865079))

(declare-fun m!4865085 () Bool)

(assert (=> start!409836 m!4865085))

(declare-fun res!1754592 () Bool)

(declare-fun e!2652101 () Bool)

(assert (=> b!4271537 (=> res!1754592 e!2652101)))

(declare-fun x!741186 () BalanceConc!28094)

(declare-fun x!741187 () BalanceConc!28094)

(assert (=> b!4271537 (= res!1754592 (not (= (list!17169 x!741186) (list!17169 x!741187))))))

(declare-fun inst!1715 () Bool)

(declare-fun e!2652103 () Bool)

(declare-fun e!2652102 () Bool)

(assert (=> b!4271537 (= inst!1715 (=> (and (inv!62448 x!741186) e!2652103 (inv!62448 x!741187) e!2652102) e!2652101))))

(declare-fun b!4271547 () Bool)

(assert (=> b!4271547 (= e!2652101 (= (toValue!12 thiss!2185 x!741186) (toValue!12 thiss!2185 x!741187)))))

(declare-fun b!4271548 () Bool)

(declare-fun tp!1308113 () Bool)

(assert (=> b!4271548 (= e!2652103 (and (inv!62447 (c!726799 x!741186)) tp!1308113))))

(declare-fun b!4271549 () Bool)

(declare-fun tp!1308112 () Bool)

(assert (=> b!4271549 (= e!2652102 (and (inv!62447 (c!726799 x!741187)) tp!1308112))))

(assert (= (and b!4271537 (not res!1754592)) b!4271547))

(assert (= b!4271537 b!4271548))

(assert (= b!4271537 b!4271549))

(declare-fun m!4865087 () Bool)

(assert (=> b!4271537 m!4865087))

(declare-fun m!4865089 () Bool)

(assert (=> b!4271537 m!4865089))

(declare-fun m!4865091 () Bool)

(assert (=> b!4271537 m!4865091))

(declare-fun m!4865093 () Bool)

(assert (=> b!4271537 m!4865093))

(declare-fun m!4865095 () Bool)

(assert (=> b!4271547 m!4865095))

(declare-fun m!4865097 () Bool)

(assert (=> b!4271547 m!4865097))

(declare-fun m!4865099 () Bool)

(assert (=> b!4271548 m!4865099))

(declare-fun m!4865101 () Bool)

(assert (=> b!4271549 m!4865101))

(declare-fun bs!600938 () Bool)

(declare-fun neg-inst!1714 () Bool)

(declare-fun s!239850 () Bool)

(assert (= bs!600938 (and neg-inst!1714 s!239850)))

(assert (=> bs!600938 (=> true (= (list!17169 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185))) (list!17169 x!741185)))))

(assert (=> m!4865081 m!4865077))

(assert (=> m!4865081 m!4865079))

(assert (=> m!4865081 m!4865085))

(assert (=> m!4865081 s!239850))

(assert (=> m!4865077 s!239850))

(declare-fun bs!600939 () Bool)

(assert (= bs!600939 (and neg-inst!1714 start!409836)))

(assert (=> bs!600939 (= true inst!1714)))

(declare-fun bs!600940 () Bool)

(declare-fun neg-inst!1715 () Bool)

(declare-fun s!239852 () Bool)

(assert (= bs!600940 (and neg-inst!1715 s!239852)))

(declare-fun res!1754593 () Bool)

(declare-fun e!2652104 () Bool)

(assert (=> bs!600940 (=> res!1754593 e!2652104)))

(assert (=> bs!600940 (= res!1754593 (not (= (list!17169 x!741186) (list!17169 x!741186))))))

(assert (=> bs!600940 (=> true e!2652104)))

(declare-fun b!4271550 () Bool)

(assert (=> b!4271550 (= e!2652104 (= (toValue!12 thiss!2185 x!741186) (toValue!12 thiss!2185 x!741186)))))

(assert (= (and bs!600940 (not res!1754593)) b!4271550))

(assert (=> m!4865087 s!239852))

(assert (=> m!4865087 s!239852))

(declare-fun bs!600941 () Bool)

(declare-fun s!239854 () Bool)

(assert (= bs!600941 (and neg-inst!1715 s!239854)))

(declare-fun res!1754594 () Bool)

(declare-fun e!2652105 () Bool)

(assert (=> bs!600941 (=> res!1754594 e!2652105)))

(assert (=> bs!600941 (= res!1754594 (not (= (list!17169 x!741185) (list!17169 x!741186))))))

(assert (=> bs!600941 (=> true e!2652105)))

(declare-fun b!4271551 () Bool)

(assert (=> b!4271551 (= e!2652105 (= (toValue!12 thiss!2185 x!741185) (toValue!12 thiss!2185 x!741186)))))

(assert (= (and bs!600941 (not res!1754594)) b!4271551))

(declare-fun bs!600942 () Bool)

(assert (= bs!600942 (and m!4865081 m!4865087)))

(assert (=> bs!600942 m!4865081))

(assert (=> bs!600942 m!4865087))

(assert (=> bs!600942 s!239854))

(declare-fun bs!600943 () Bool)

(declare-fun s!239856 () Bool)

(assert (= bs!600943 (and neg-inst!1715 s!239856)))

(declare-fun res!1754595 () Bool)

(declare-fun e!2652106 () Bool)

(assert (=> bs!600943 (=> res!1754595 e!2652106)))

(assert (=> bs!600943 (= res!1754595 (not (= (list!17169 x!741185) (list!17169 x!741185))))))

(assert (=> bs!600943 (=> true e!2652106)))

(declare-fun b!4271552 () Bool)

(assert (=> b!4271552 (= e!2652106 (= (toValue!12 thiss!2185 x!741185) (toValue!12 thiss!2185 x!741185)))))

(assert (= (and bs!600943 (not res!1754595)) b!4271552))

(assert (=> m!4865081 s!239856))

(declare-fun bs!600944 () Bool)

(declare-fun s!239858 () Bool)

(assert (= bs!600944 (and neg-inst!1715 s!239858)))

(declare-fun res!1754596 () Bool)

(declare-fun e!2652107 () Bool)

(assert (=> bs!600944 (=> res!1754596 e!2652107)))

(assert (=> bs!600944 (= res!1754596 (not (= (list!17169 x!741186) (list!17169 x!741185))))))

(assert (=> bs!600944 (=> true e!2652107)))

(declare-fun b!4271553 () Bool)

(assert (=> b!4271553 (= e!2652107 (= (toValue!12 thiss!2185 x!741186) (toValue!12 thiss!2185 x!741185)))))

(assert (= (and bs!600944 (not res!1754596)) b!4271553))

(assert (=> bs!600942 m!4865087))

(assert (=> bs!600942 m!4865081))

(assert (=> bs!600942 s!239858))

(assert (=> m!4865081 s!239856))

(declare-fun bs!600945 () Bool)

(assert (= bs!600945 (and m!4865077 m!4865087)))

(assert (=> bs!600945 s!239854))

(declare-fun bs!600946 () Bool)

(assert (= bs!600946 (and m!4865077 m!4865081)))

(assert (=> bs!600946 s!239856))

(assert (=> m!4865077 s!239856))

(assert (=> bs!600945 s!239858))

(assert (=> bs!600946 s!239856))

(assert (=> m!4865077 s!239856))

(declare-fun bs!600947 () Bool)

(declare-fun s!239860 () Bool)

(assert (= bs!600947 (and neg-inst!1715 s!239860)))

(declare-fun res!1754597 () Bool)

(declare-fun e!2652108 () Bool)

(assert (=> bs!600947 (=> res!1754597 e!2652108)))

(assert (=> bs!600947 (= res!1754597 (not (= (list!17169 x!741187) (list!17169 x!741186))))))

(assert (=> bs!600947 (=> true e!2652108)))

(declare-fun b!4271554 () Bool)

(assert (=> b!4271554 (= e!2652108 (= (toValue!12 thiss!2185 x!741187) (toValue!12 thiss!2185 x!741186)))))

(assert (= (and bs!600947 (not res!1754597)) b!4271554))

(declare-fun bs!600948 () Bool)

(assert (= bs!600948 (and m!4865097 m!4865087)))

(assert (=> bs!600948 m!4865089))

(assert (=> bs!600948 m!4865087))

(assert (=> bs!600948 s!239860))

(declare-fun bs!600949 () Bool)

(declare-fun s!239862 () Bool)

(assert (= bs!600949 (and neg-inst!1715 s!239862)))

(declare-fun res!1754598 () Bool)

(declare-fun e!2652109 () Bool)

(assert (=> bs!600949 (=> res!1754598 e!2652109)))

(assert (=> bs!600949 (= res!1754598 (not (= (list!17169 x!741187) (list!17169 x!741185))))))

(assert (=> bs!600949 (=> true e!2652109)))

(declare-fun b!4271555 () Bool)

(assert (=> b!4271555 (= e!2652109 (= (toValue!12 thiss!2185 x!741187) (toValue!12 thiss!2185 x!741185)))))

(assert (= (and bs!600949 (not res!1754598)) b!4271555))

(declare-fun bs!600950 () Bool)

(assert (= bs!600950 (and m!4865097 m!4865081 m!4865077)))

(assert (=> bs!600950 m!4865089))

(assert (=> bs!600950 m!4865081))

(assert (=> bs!600950 s!239862))

(declare-fun bs!600951 () Bool)

(declare-fun s!239864 () Bool)

(assert (= bs!600951 (and neg-inst!1715 s!239864)))

(declare-fun res!1754599 () Bool)

(declare-fun e!2652110 () Bool)

(assert (=> bs!600951 (=> res!1754599 e!2652110)))

(assert (=> bs!600951 (= res!1754599 (not (= (list!17169 x!741187) (list!17169 x!741187))))))

(assert (=> bs!600951 (=> true e!2652110)))

(declare-fun b!4271556 () Bool)

(assert (=> b!4271556 (= e!2652110 (= (toValue!12 thiss!2185 x!741187) (toValue!12 thiss!2185 x!741187)))))

(assert (= (and bs!600951 (not res!1754599)) b!4271556))

(assert (=> m!4865097 m!4865089))

(assert (=> m!4865097 m!4865089))

(assert (=> m!4865097 s!239864))

(declare-fun bs!600952 () Bool)

(declare-fun s!239866 () Bool)

(assert (= bs!600952 (and neg-inst!1715 s!239866)))

(declare-fun res!1754600 () Bool)

(declare-fun e!2652111 () Bool)

(assert (=> bs!600952 (=> res!1754600 e!2652111)))

(assert (=> bs!600952 (= res!1754600 (not (= (list!17169 x!741186) (list!17169 x!741187))))))

(assert (=> bs!600952 (=> true e!2652111)))

(declare-fun b!4271557 () Bool)

(assert (=> b!4271557 (= e!2652111 (= (toValue!12 thiss!2185 x!741186) (toValue!12 thiss!2185 x!741187)))))

(assert (= (and bs!600952 (not res!1754600)) b!4271557))

(assert (=> bs!600948 m!4865087))

(assert (=> bs!600948 m!4865089))

(assert (=> bs!600948 s!239866))

(declare-fun bs!600953 () Bool)

(declare-fun s!239868 () Bool)

(assert (= bs!600953 (and neg-inst!1715 s!239868)))

(declare-fun res!1754601 () Bool)

(declare-fun e!2652112 () Bool)

(assert (=> bs!600953 (=> res!1754601 e!2652112)))

(assert (=> bs!600953 (= res!1754601 (not (= (list!17169 x!741185) (list!17169 x!741187))))))

(assert (=> bs!600953 (=> true e!2652112)))

(declare-fun b!4271558 () Bool)

(assert (=> b!4271558 (= e!2652112 (= (toValue!12 thiss!2185 x!741185) (toValue!12 thiss!2185 x!741187)))))

(assert (= (and bs!600953 (not res!1754601)) b!4271558))

(assert (=> bs!600950 m!4865081))

(assert (=> bs!600950 m!4865089))

(assert (=> bs!600950 s!239868))

(assert (=> m!4865097 s!239864))

(declare-fun bs!600954 () Bool)

(assert (= bs!600954 (and m!4865095 m!4865087)))

(assert (=> bs!600954 s!239852))

(declare-fun bs!600955 () Bool)

(assert (= bs!600955 (and m!4865095 m!4865097)))

(assert (=> bs!600955 s!239866))

(declare-fun bs!600956 () Bool)

(assert (= bs!600956 (and m!4865095 m!4865081 m!4865077)))

(assert (=> bs!600956 s!239858))

(assert (=> m!4865095 s!239852))

(assert (=> bs!600954 s!239852))

(assert (=> bs!600955 s!239860))

(assert (=> bs!600956 s!239854))

(assert (=> m!4865095 s!239852))

(declare-fun bs!600957 () Bool)

(declare-fun s!239870 () Bool)

(assert (= bs!600957 (and neg-inst!1715 s!239870)))

(declare-fun res!1754602 () Bool)

(declare-fun e!2652113 () Bool)

(assert (=> bs!600957 (=> res!1754602 e!2652113)))

(assert (=> bs!600957 (= res!1754602 (not (= (list!17169 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185))) (list!17169 x!741186))))))

(assert (=> bs!600957 (=> true e!2652113)))

(declare-fun b!4271559 () Bool)

(assert (=> b!4271559 (= e!2652113 (= (toValue!12 thiss!2185 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185))) (toValue!12 thiss!2185 x!741186)))))

(assert (= (and bs!600957 (not res!1754602)) b!4271559))

(declare-fun bs!600958 () Bool)

(assert (= bs!600958 (and m!4865085 m!4865087 m!4865095)))

(assert (=> bs!600958 m!4865085))

(assert (=> bs!600958 m!4865087))

(assert (=> bs!600958 s!239870))

(declare-fun bs!600959 () Bool)

(declare-fun s!239872 () Bool)

(assert (= bs!600959 (and neg-inst!1715 s!239872)))

(declare-fun res!1754603 () Bool)

(declare-fun e!2652114 () Bool)

(assert (=> bs!600959 (=> res!1754603 e!2652114)))

(assert (=> bs!600959 (= res!1754603 (not (= (list!17169 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185))) (list!17169 x!741187))))))

(assert (=> bs!600959 (=> true e!2652114)))

(declare-fun b!4271560 () Bool)

(assert (=> b!4271560 (= e!2652114 (= (toValue!12 thiss!2185 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185))) (toValue!12 thiss!2185 x!741187)))))

(assert (= (and bs!600959 (not res!1754603)) b!4271560))

(declare-fun bs!600960 () Bool)

(assert (= bs!600960 (and m!4865085 m!4865097)))

(assert (=> bs!600960 m!4865085))

(assert (=> bs!600960 m!4865089))

(assert (=> bs!600960 s!239872))

(declare-fun bs!600961 () Bool)

(declare-fun s!239874 () Bool)

(assert (= bs!600961 (and neg-inst!1715 s!239874)))

(declare-fun res!1754604 () Bool)

(declare-fun e!2652115 () Bool)

(assert (=> bs!600961 (=> res!1754604 e!2652115)))

(assert (=> bs!600961 (= res!1754604 (not (= (list!17169 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185))) (list!17169 x!741185))))))

(assert (=> bs!600961 (=> true e!2652115)))

(declare-fun b!4271561 () Bool)

(assert (=> b!4271561 (= e!2652115 (= (toValue!12 thiss!2185 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185))) (toValue!12 thiss!2185 x!741185)))))

(assert (= (and bs!600961 (not res!1754604)) b!4271561))

(declare-fun bs!600962 () Bool)

(assert (= bs!600962 (and m!4865085 m!4865081 m!4865077)))

(assert (=> bs!600962 m!4865085))

(assert (=> bs!600962 m!4865081))

(assert (=> bs!600962 s!239874))

(declare-fun bs!600963 () Bool)

(declare-fun s!239876 () Bool)

(assert (= bs!600963 (and neg-inst!1715 s!239876)))

(declare-fun res!1754605 () Bool)

(declare-fun e!2652116 () Bool)

(assert (=> bs!600963 (=> res!1754605 e!2652116)))

(assert (=> bs!600963 (= res!1754605 (not (= (list!17169 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185))) (list!17169 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185))))))))

(assert (=> bs!600963 (=> true e!2652116)))

(declare-fun b!4271562 () Bool)

(assert (=> b!4271562 (= e!2652116 (= (toValue!12 thiss!2185 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185))) (toValue!12 thiss!2185 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185)))))))

(assert (= (and bs!600963 (not res!1754605)) b!4271562))

(assert (=> m!4865085 s!239876))

(declare-fun bs!600964 () Bool)

(declare-fun s!239878 () Bool)

(assert (= bs!600964 (and neg-inst!1715 s!239878)))

(declare-fun res!1754606 () Bool)

(declare-fun e!2652117 () Bool)

(assert (=> bs!600964 (=> res!1754606 e!2652117)))

(assert (=> bs!600964 (= res!1754606 (not (= (list!17169 x!741186) (list!17169 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185))))))))

(assert (=> bs!600964 (=> true e!2652117)))

(declare-fun b!4271563 () Bool)

(assert (=> b!4271563 (= e!2652117 (= (toValue!12 thiss!2185 x!741186) (toValue!12 thiss!2185 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185)))))))

(assert (= (and bs!600964 (not res!1754606)) b!4271563))

(assert (=> bs!600958 m!4865087))

(assert (=> bs!600958 m!4865085))

(assert (=> bs!600958 s!239878))

(declare-fun bs!600965 () Bool)

(declare-fun s!239880 () Bool)

(assert (= bs!600965 (and neg-inst!1715 s!239880)))

(declare-fun res!1754607 () Bool)

(declare-fun e!2652118 () Bool)

(assert (=> bs!600965 (=> res!1754607 e!2652118)))

(assert (=> bs!600965 (= res!1754607 (not (= (list!17169 x!741187) (list!17169 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185))))))))

(assert (=> bs!600965 (=> true e!2652118)))

(declare-fun b!4271564 () Bool)

(assert (=> b!4271564 (= e!2652118 (= (toValue!12 thiss!2185 x!741187) (toValue!12 thiss!2185 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185)))))))

(assert (= (and bs!600965 (not res!1754607)) b!4271564))

(assert (=> bs!600960 m!4865089))

(assert (=> bs!600960 m!4865085))

(assert (=> bs!600960 s!239880))

(declare-fun bs!600966 () Bool)

(declare-fun s!239882 () Bool)

(assert (= bs!600966 (and neg-inst!1715 s!239882)))

(declare-fun res!1754608 () Bool)

(declare-fun e!2652119 () Bool)

(assert (=> bs!600966 (=> res!1754608 e!2652119)))

(assert (=> bs!600966 (= res!1754608 (not (= (list!17169 x!741185) (list!17169 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185))))))))

(assert (=> bs!600966 (=> true e!2652119)))

(declare-fun b!4271565 () Bool)

(assert (=> b!4271565 (= e!2652119 (= (toValue!12 thiss!2185 x!741185) (toValue!12 thiss!2185 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185)))))))

(assert (= (and bs!600966 (not res!1754608)) b!4271565))

(assert (=> bs!600962 m!4865081))

(assert (=> bs!600962 m!4865085))

(assert (=> bs!600962 s!239882))

(assert (=> m!4865085 s!239876))

(declare-fun bs!600967 () Bool)

(assert (= bs!600967 (and m!4865089 m!4865087 m!4865095)))

(assert (=> bs!600967 s!239860))

(declare-fun bs!600968 () Bool)

(assert (= bs!600968 (and m!4865089 m!4865081 m!4865077)))

(assert (=> bs!600968 s!239862))

(assert (=> m!4865089 s!239864))

(declare-fun bs!600969 () Bool)

(assert (= bs!600969 (and m!4865089 m!4865097)))

(assert (=> bs!600969 s!239864))

(declare-fun bs!600970 () Bool)

(assert (= bs!600970 (and m!4865089 m!4865085)))

(assert (=> bs!600970 s!239880))

(assert (=> bs!600967 s!239866))

(assert (=> bs!600968 s!239868))

(assert (=> bs!600970 s!239872))

(assert (=> m!4865089 s!239864))

(assert (=> bs!600969 s!239864))

(declare-fun bs!600971 () Bool)

(assert (= bs!600971 (and neg-inst!1715 b!4271537)))

(assert (=> bs!600971 (= true inst!1715)))

(declare-fun res!1754591 () Bool)

(declare-fun e!2652099 () Bool)

(assert (=> start!409836 (=> res!1754591 e!2652099)))

(declare-fun lambda!130914 () Int)

(declare-fun Forall!1639 (Int) Bool)

(assert (=> start!409836 (= res!1754591 (not (Forall!1639 lambda!130914)))))

(assert (=> start!409836 (= (Forall!1639 lambda!130914) inst!1714)))

(assert (=> start!409836 (not e!2652099)))

(assert (=> start!409836 true))

(declare-fun lambda!130917 () Int)

(declare-fun Forall2!1226 (Int) Bool)

(assert (=> b!4271537 (= e!2652099 (Forall2!1226 lambda!130917))))

(assert (=> b!4271537 (= (Forall2!1226 lambda!130917) inst!1715)))

(declare-fun lambda!130915 () Int)

(declare-fun lambda!130916 () Int)

(declare-fun semiInverseModEq!3511 (Int Int) Bool)

(assert (=> b!4271537 (= (semiInverseModEq!3511 lambda!130915 lambda!130916) (Forall!1639 lambda!130914))))

(assert (= neg-inst!1714 inst!1714))

(assert (= (and start!409836 (not res!1754591)) b!4271537))

(assert (= neg-inst!1715 inst!1715))

(declare-fun m!4865103 () Bool)

(assert (=> start!409836 m!4865103))

(assert (=> start!409836 m!4865103))

(declare-fun m!4865105 () Bool)

(assert (=> b!4271537 m!4865105))

(assert (=> b!4271537 m!4865105))

(declare-fun m!4865107 () Bool)

(assert (=> b!4271537 m!4865107))

(assert (=> b!4271537 m!4865103))

(push 1)

(assert (not bs!600957))

(assert (not b!4271564))

(assert (not b!4271562))

(assert (not bs!600941))

(assert (not b!4271547))

(assert (not b!4271549))

(assert (not bs!600938))

(assert (not bs!600963))

(assert (not bs!600966))

(assert (not b!4271556))

(assert (not start!409836))

(assert (not bs!600944))

(assert (not b!4271559))

(assert (not bs!600953))

(assert (not bs!600959))

(assert (not bs!600951))

(assert (not bs!600940))

(assert (not b!4271551))

(assert (not bs!600952))

(assert (not b!4271546))

(assert (not b!4271558))

(assert (not b!4271561))

(assert (not b!4271537))

(assert (not b!4271553))

(assert (not b!4271555))

(assert (not bs!600947))

(assert (not bs!600949))

(assert (not bs!600964))

(assert (not b!4271557))

(assert (not b!4271560))

(assert (not b!4271565))

(assert (not b!4271563))

(assert (not b!4271550))

(assert (not b!4271548))

(assert (not bs!600961))

(assert (not bs!600965))

(assert (not bs!600943))

(assert (not b!4271554))

(assert (not b!4271552))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1259946 () Bool)

(declare-fun lt!1512865 () List!47434)

(declare-fun efficientList!512 (BalanceConc!28094) List!47434)

(assert (=> d!1259946 (= lt!1512865 (efficientList!512 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185))))))

(declare-fun charsToInt!0 (List!47434) (_ BitVec 32))

(assert (=> d!1259946 (= (toValue!12 thiss!2185 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185))) (IntegerValue!24795 (charsToInt!0 lt!1512865) lt!1512865))))

(declare-fun bs!601009 () Bool)

(assert (= bs!601009 d!1259946))

(assert (=> bs!601009 m!4865079))

(declare-fun m!4865143 () Bool)

(assert (=> bs!601009 m!4865143))

(declare-fun m!4865145 () Bool)

(assert (=> bs!601009 m!4865145))

(assert (=> b!4271559 d!1259946))

(declare-fun d!1259948 () Bool)

(declare-fun lt!1512866 () List!47434)

(assert (=> d!1259948 (= lt!1512866 (efficientList!512 x!741186))))

(assert (=> d!1259948 (= (toValue!12 thiss!2185 x!741186) (IntegerValue!24795 (charsToInt!0 lt!1512866) lt!1512866))))

(declare-fun bs!601010 () Bool)

(assert (= bs!601010 d!1259948))

(declare-fun m!4865147 () Bool)

(assert (=> bs!601010 m!4865147))

(declare-fun m!4865149 () Bool)

(assert (=> bs!601010 m!4865149))

(assert (=> b!4271559 d!1259948))

(declare-fun d!1259950 () Bool)

(declare-fun lt!1512867 () List!47434)

(assert (=> d!1259950 (= lt!1512867 (efficientList!512 x!741187))))

(assert (=> d!1259950 (= (toValue!12 thiss!2185 x!741187) (IntegerValue!24795 (charsToInt!0 lt!1512867) lt!1512867))))

(declare-fun bs!601011 () Bool)

(assert (= bs!601011 d!1259950))

(declare-fun m!4865151 () Bool)

(assert (=> bs!601011 m!4865151))

(declare-fun m!4865153 () Bool)

(assert (=> bs!601011 m!4865153))

(assert (=> b!4271556 d!1259950))

(assert (=> b!4271553 d!1259948))

(declare-fun d!1259952 () Bool)

(declare-fun lt!1512868 () List!47434)

(assert (=> d!1259952 (= lt!1512868 (efficientList!512 x!741185))))

(assert (=> d!1259952 (= (toValue!12 thiss!2185 x!741185) (IntegerValue!24795 (charsToInt!0 lt!1512868) lt!1512868))))

(declare-fun bs!601012 () Bool)

(assert (= bs!601012 d!1259952))

(declare-fun m!4865155 () Bool)

(assert (=> bs!601012 m!4865155))

(declare-fun m!4865157 () Bool)

(assert (=> bs!601012 m!4865157))

(assert (=> b!4271553 d!1259952))

(assert (=> b!4271562 d!1259946))

(declare-fun d!1259954 () Bool)

(declare-fun list!17171 (Conc!14292) List!47434)

(assert (=> d!1259954 (= (list!17169 x!741186) (list!17171 (c!726799 x!741186)))))

(declare-fun bs!601013 () Bool)

(assert (= bs!601013 d!1259954))

(declare-fun m!4865159 () Bool)

(assert (=> bs!601013 m!4865159))

(assert (=> bs!600940 d!1259954))

(assert (=> bs!600952 d!1259954))

(declare-fun d!1259956 () Bool)

(assert (=> d!1259956 (= (list!17169 x!741187) (list!17171 (c!726799 x!741187)))))

(declare-fun bs!601014 () Bool)

(assert (= bs!601014 d!1259956))

(declare-fun m!4865161 () Bool)

(assert (=> bs!601014 m!4865161))

(assert (=> bs!600952 d!1259956))

(assert (=> bs!600964 d!1259954))

(declare-fun d!1259958 () Bool)

(assert (=> d!1259958 (= (list!17169 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185))) (list!17171 (c!726799 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185)))))))

(declare-fun bs!601015 () Bool)

(assert (= bs!601015 d!1259958))

(declare-fun m!4865163 () Bool)

(assert (=> bs!601015 m!4865163))

(assert (=> bs!600964 d!1259958))

(assert (=> b!4271550 d!1259948))

(assert (=> b!4271555 d!1259950))

(assert (=> b!4271555 d!1259952))

(declare-fun d!1259960 () Bool)

(assert (=> d!1259960 (= (list!17169 x!741185) (list!17171 (c!726799 x!741185)))))

(declare-fun bs!601016 () Bool)

(assert (= bs!601016 d!1259960))

(declare-fun m!4865165 () Bool)

(assert (=> bs!601016 m!4865165))

(assert (=> bs!600966 d!1259960))

(assert (=> bs!600966 d!1259958))

(assert (=> b!4271552 d!1259952))

(assert (=> bs!600951 d!1259956))

(assert (=> bs!600944 d!1259954))

(assert (=> bs!600944 d!1259960))

(assert (=> bs!600963 d!1259958))

(assert (=> bs!600957 d!1259958))

(assert (=> bs!600957 d!1259954))

(assert (=> b!4271565 d!1259952))

(assert (=> b!4271565 d!1259946))

(assert (=> bs!600949 d!1259956))

(assert (=> bs!600949 d!1259960))

(assert (=> b!4271564 d!1259950))

(assert (=> b!4271564 d!1259946))

(assert (=> bs!600961 d!1259958))

(assert (=> bs!600961 d!1259960))

(assert (=> bs!600953 d!1259960))

(assert (=> bs!600953 d!1259956))

(assert (=> b!4271561 d!1259946))

(assert (=> b!4271561 d!1259952))

(assert (=> bs!600943 d!1259960))

(assert (=> b!4271558 d!1259952))

(assert (=> b!4271558 d!1259950))

(assert (=> b!4271557 d!1259948))

(assert (=> b!4271557 d!1259950))

(assert (=> b!4271563 d!1259948))

(assert (=> b!4271563 d!1259946))

(assert (=> bs!600947 d!1259956))

(assert (=> bs!600947 d!1259954))

(assert (=> bs!600941 d!1259960))

(assert (=> bs!600941 d!1259954))

(assert (=> bs!600959 d!1259958))

(assert (=> bs!600959 d!1259956))

(assert (=> bs!600965 d!1259956))

(assert (=> bs!600965 d!1259958))

(assert (=> b!4271551 d!1259952))

(assert (=> b!4271551 d!1259948))

(assert (=> b!4271554 d!1259950))

(assert (=> b!4271554 d!1259948))

(assert (=> b!4271560 d!1259946))

(assert (=> b!4271560 d!1259950))

(declare-fun bs!601017 () Bool)

(assert (= bs!601017 (and m!4865087 b!4271550)))

(assert (=> bs!601017 m!4865095))

(assert (=> bs!601017 m!4865095))

(declare-fun bs!601018 () Bool)

(assert (= bs!601018 (and m!4865081 m!4865087 b!4271551)))

(assert (=> bs!601018 m!4865077))

(assert (=> bs!601018 m!4865095))

(declare-fun bs!601019 () Bool)

(assert (= bs!601019 (and m!4865081 b!4271552)))

(assert (=> bs!601019 m!4865077))

(assert (=> bs!601019 m!4865077))

(declare-fun bs!601020 () Bool)

(assert (= bs!601020 (and m!4865081 m!4865087 b!4271553)))

(assert (=> bs!601020 m!4865095))

(assert (=> bs!601020 m!4865077))

(declare-fun bs!601021 () Bool)

(assert (= bs!601021 (and m!4865097 m!4865087 b!4271554)))

(assert (=> bs!601021 m!4865097))

(assert (=> bs!601021 m!4865095))

(declare-fun bs!601022 () Bool)

(assert (= bs!601022 (and m!4865097 m!4865081 m!4865077 b!4271555)))

(assert (=> bs!601022 m!4865097))

(assert (=> bs!601022 m!4865077))

(declare-fun bs!601023 () Bool)

(assert (= bs!601023 (and m!4865097 b!4271556)))

(assert (=> bs!601023 m!4865097))

(assert (=> bs!601023 m!4865097))

(declare-fun bs!601024 () Bool)

(assert (= bs!601024 (and m!4865097 m!4865087 b!4271557)))

(assert (=> bs!601024 m!4865095))

(assert (=> bs!601024 m!4865097))

(declare-fun bs!601025 () Bool)

(assert (= bs!601025 (and m!4865097 m!4865081 m!4865077 b!4271558)))

(assert (=> bs!601025 m!4865077))

(assert (=> bs!601025 m!4865097))

(declare-fun bs!601026 () Bool)

(assert (= bs!601026 (and m!4865085 m!4865087 m!4865095 b!4271559)))

(declare-fun m!4865167 () Bool)

(assert (=> bs!601026 m!4865167))

(assert (=> bs!601026 m!4865095))

(declare-fun bs!601027 () Bool)

(assert (= bs!601027 (and m!4865085 m!4865097 b!4271560)))

(assert (=> bs!601027 m!4865167))

(assert (=> bs!601027 m!4865097))

(declare-fun bs!601028 () Bool)

(assert (= bs!601028 (and m!4865085 m!4865081 m!4865077 b!4271561)))

(assert (=> bs!601028 m!4865167))

(assert (=> bs!601028 m!4865077))

(declare-fun bs!601029 () Bool)

(assert (= bs!601029 (and m!4865085 b!4271562)))

(assert (=> bs!601029 m!4865167))

(assert (=> bs!601029 m!4865167))

(declare-fun bs!601030 () Bool)

(assert (= bs!601030 (and m!4865085 m!4865087 m!4865095 b!4271563)))

(assert (=> bs!601030 m!4865095))

(assert (=> bs!601030 m!4865167))

(declare-fun bs!601031 () Bool)

(assert (= bs!601031 (and m!4865085 m!4865097 b!4271564)))

(assert (=> bs!601031 m!4865097))

(assert (=> bs!601031 m!4865167))

(declare-fun bs!601032 () Bool)

(assert (= bs!601032 (and m!4865085 m!4865081 m!4865077 b!4271565)))

(assert (=> bs!601032 m!4865077))

(assert (=> bs!601032 m!4865167))

(push 1)

(assert (not start!409836))

(assert (not d!1259952))

(assert (not d!1259948))

(assert (not b!4271547))

(assert (not d!1259946))

(assert (not d!1259950))

(assert (not b!4271549))

(assert (not bs!600938))

(assert (not b!4271548))

(assert (not d!1259958))

(assert (not b!4271546))

(assert (not d!1259956))

(assert (not b!4271537))

(assert (not d!1259960))

(assert (not d!1259954))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1259978 () Bool)

(declare-fun c!726805 () Bool)

(assert (=> d!1259978 (= c!726805 (is-Empty!14292 (c!726799 x!741185)))))

(declare-fun e!2652161 () List!47434)

(assert (=> d!1259978 (= (list!17171 (c!726799 x!741185)) e!2652161)))

(declare-fun b!4271621 () Bool)

(declare-fun e!2652162 () List!47434)

(declare-fun list!17173 (IArray!28589) List!47434)

(assert (=> b!4271621 (= e!2652162 (list!17173 (xs!17598 (c!726799 x!741185))))))

(declare-fun b!4271619 () Bool)

(assert (=> b!4271619 (= e!2652161 Nil!47310)))

(declare-fun b!4271620 () Bool)

(assert (=> b!4271620 (= e!2652161 e!2652162)))

(declare-fun c!726806 () Bool)

(assert (=> b!4271620 (= c!726806 (is-Leaf!22094 (c!726799 x!741185)))))

(declare-fun b!4271622 () Bool)

(declare-fun ++!12073 (List!47434 List!47434) List!47434)

(assert (=> b!4271622 (= e!2652162 (++!12073 (list!17171 (left!35167 (c!726799 x!741185))) (list!17171 (right!35497 (c!726799 x!741185)))))))

(assert (= (and d!1259978 c!726805) b!4271619))

(assert (= (and d!1259978 (not c!726805)) b!4271620))

(assert (= (and b!4271620 c!726806) b!4271621))

(assert (= (and b!4271620 (not c!726806)) b!4271622))

(declare-fun m!4865195 () Bool)

(assert (=> b!4271621 m!4865195))

(declare-fun m!4865197 () Bool)

(assert (=> b!4271622 m!4865197))

(declare-fun m!4865199 () Bool)

(assert (=> b!4271622 m!4865199))

(assert (=> b!4271622 m!4865197))

(assert (=> b!4271622 m!4865199))

(declare-fun m!4865201 () Bool)

(assert (=> b!4271622 m!4865201))

(assert (=> d!1259960 d!1259978))

(declare-fun d!1259980 () Bool)

(declare-fun lt!1512877 () List!47434)

(assert (=> d!1259980 (= lt!1512877 (list!17169 x!741187))))

(declare-fun efficientList!514 (Conc!14292 List!47434) List!47434)

(declare-fun efficientList$default$2!178 (Conc!14292) List!47434)

(assert (=> d!1259980 (= lt!1512877 (efficientList!514 (c!726799 x!741187) (efficientList$default$2!178 (c!726799 x!741187))))))

(assert (=> d!1259980 (= (efficientList!512 x!741187) lt!1512877)))

(declare-fun bs!601057 () Bool)

(assert (= bs!601057 d!1259980))

(assert (=> bs!601057 m!4865089))

(declare-fun m!4865203 () Bool)

(assert (=> bs!601057 m!4865203))

(assert (=> bs!601057 m!4865203))

(declare-fun m!4865205 () Bool)

(assert (=> bs!601057 m!4865205))

(assert (=> d!1259950 d!1259980))

(declare-fun d!1259982 () Bool)

(declare-fun choose!625 (List!47434) (_ BitVec 32))

(assert (=> d!1259982 (= (charsToInt!0 lt!1512867) (choose!625 lt!1512867))))

(declare-fun bs!601058 () Bool)

(assert (= bs!601058 d!1259982))

(declare-fun m!4865207 () Bool)

(assert (=> bs!601058 m!4865207))

(assert (=> d!1259950 d!1259982))

(declare-fun d!1259984 () Bool)

(declare-fun lt!1512878 () List!47434)

(assert (=> d!1259984 (= lt!1512878 (list!17169 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185))))))

(assert (=> d!1259984 (= lt!1512878 (efficientList!514 (c!726799 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185))) (efficientList$default$2!178 (c!726799 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185))))))))

(assert (=> d!1259984 (= (efficientList!512 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185))) lt!1512878)))

(declare-fun bs!601059 () Bool)

(assert (= bs!601059 d!1259984))

(assert (=> bs!601059 m!4865079))

(assert (=> bs!601059 m!4865085))

(declare-fun m!4865209 () Bool)

(assert (=> bs!601059 m!4865209))

(assert (=> bs!601059 m!4865209))

(declare-fun m!4865211 () Bool)

(assert (=> bs!601059 m!4865211))

(assert (=> d!1259946 d!1259984))

(declare-fun d!1259986 () Bool)

(assert (=> d!1259986 (= (charsToInt!0 lt!1512865) (choose!625 lt!1512865))))

(declare-fun bs!601060 () Bool)

(assert (= bs!601060 d!1259986))

(declare-fun m!4865213 () Bool)

(assert (=> bs!601060 m!4865213))

(assert (=> d!1259946 d!1259986))

(declare-fun d!1259988 () Bool)

(declare-fun lt!1512879 () List!47434)

(assert (=> d!1259988 (= lt!1512879 (list!17169 x!741186))))

(assert (=> d!1259988 (= lt!1512879 (efficientList!514 (c!726799 x!741186) (efficientList$default$2!178 (c!726799 x!741186))))))

(assert (=> d!1259988 (= (efficientList!512 x!741186) lt!1512879)))

(declare-fun bs!601061 () Bool)

(assert (= bs!601061 d!1259988))

(assert (=> bs!601061 m!4865087))

(declare-fun m!4865215 () Bool)

(assert (=> bs!601061 m!4865215))

(assert (=> bs!601061 m!4865215))

(declare-fun m!4865217 () Bool)

(assert (=> bs!601061 m!4865217))

(assert (=> d!1259948 d!1259988))

(declare-fun d!1259990 () Bool)

(assert (=> d!1259990 (= (charsToInt!0 lt!1512866) (choose!625 lt!1512866))))

(declare-fun bs!601062 () Bool)

(assert (= bs!601062 d!1259990))

(declare-fun m!4865219 () Bool)

(assert (=> bs!601062 m!4865219))

(assert (=> d!1259948 d!1259990))

(declare-fun d!1259992 () Bool)

(declare-fun c!726807 () Bool)

(assert (=> d!1259992 (= c!726807 (is-Empty!14292 (c!726799 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185)))))))

(declare-fun e!2652163 () List!47434)

(assert (=> d!1259992 (= (list!17171 (c!726799 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185)))) e!2652163)))

(declare-fun b!4271625 () Bool)

(declare-fun e!2652164 () List!47434)

(assert (=> b!4271625 (= e!2652164 (list!17173 (xs!17598 (c!726799 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185))))))))

(declare-fun b!4271623 () Bool)

(assert (=> b!4271623 (= e!2652163 Nil!47310)))

(declare-fun b!4271624 () Bool)

(assert (=> b!4271624 (= e!2652163 e!2652164)))

(declare-fun c!726808 () Bool)

(assert (=> b!4271624 (= c!726808 (is-Leaf!22094 (c!726799 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185)))))))

(declare-fun b!4271626 () Bool)

(assert (=> b!4271626 (= e!2652164 (++!12073 (list!17171 (left!35167 (c!726799 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185))))) (list!17171 (right!35497 (c!726799 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185)))))))))

(assert (= (and d!1259992 c!726807) b!4271623))

(assert (= (and d!1259992 (not c!726807)) b!4271624))

(assert (= (and b!4271624 c!726808) b!4271625))

(assert (= (and b!4271624 (not c!726808)) b!4271626))

(declare-fun m!4865221 () Bool)

(assert (=> b!4271625 m!4865221))

(declare-fun m!4865223 () Bool)

(assert (=> b!4271626 m!4865223))

(declare-fun m!4865225 () Bool)

(assert (=> b!4271626 m!4865225))

(assert (=> b!4271626 m!4865223))

(assert (=> b!4271626 m!4865225))

(declare-fun m!4865227 () Bool)

(assert (=> b!4271626 m!4865227))

(assert (=> d!1259958 d!1259992))

(declare-fun d!1259994 () Bool)

(declare-fun c!726809 () Bool)

(assert (=> d!1259994 (= c!726809 (is-Empty!14292 (c!726799 x!741186)))))

(declare-fun e!2652165 () List!47434)

(assert (=> d!1259994 (= (list!17171 (c!726799 x!741186)) e!2652165)))

(declare-fun b!4271629 () Bool)

(declare-fun e!2652166 () List!47434)

(assert (=> b!4271629 (= e!2652166 (list!17173 (xs!17598 (c!726799 x!741186))))))

(declare-fun b!4271627 () Bool)

(assert (=> b!4271627 (= e!2652165 Nil!47310)))

(declare-fun b!4271628 () Bool)

(assert (=> b!4271628 (= e!2652165 e!2652166)))

(declare-fun c!726810 () Bool)

(assert (=> b!4271628 (= c!726810 (is-Leaf!22094 (c!726799 x!741186)))))

(declare-fun b!4271630 () Bool)

(assert (=> b!4271630 (= e!2652166 (++!12073 (list!17171 (left!35167 (c!726799 x!741186))) (list!17171 (right!35497 (c!726799 x!741186)))))))

(assert (= (and d!1259994 c!726809) b!4271627))

(assert (= (and d!1259994 (not c!726809)) b!4271628))

(assert (= (and b!4271628 c!726810) b!4271629))

(assert (= (and b!4271628 (not c!726810)) b!4271630))

(declare-fun m!4865229 () Bool)

(assert (=> b!4271629 m!4865229))

(declare-fun m!4865231 () Bool)

(assert (=> b!4271630 m!4865231))

(declare-fun m!4865233 () Bool)

(assert (=> b!4271630 m!4865233))

(assert (=> b!4271630 m!4865231))

(assert (=> b!4271630 m!4865233))

(declare-fun m!4865235 () Bool)

(assert (=> b!4271630 m!4865235))

(assert (=> d!1259954 d!1259994))

(declare-fun d!1259996 () Bool)

(declare-fun lt!1512880 () List!47434)

(assert (=> d!1259996 (= lt!1512880 (list!17169 x!741185))))

(assert (=> d!1259996 (= lt!1512880 (efficientList!514 (c!726799 x!741185) (efficientList$default$2!178 (c!726799 x!741185))))))

(assert (=> d!1259996 (= (efficientList!512 x!741185) lt!1512880)))

(declare-fun bs!601063 () Bool)

(assert (= bs!601063 d!1259996))

(assert (=> bs!601063 m!4865081))

(declare-fun m!4865237 () Bool)

(assert (=> bs!601063 m!4865237))

(assert (=> bs!601063 m!4865237))

(declare-fun m!4865239 () Bool)

(assert (=> bs!601063 m!4865239))

(assert (=> d!1259952 d!1259996))

(declare-fun d!1259998 () Bool)

(assert (=> d!1259998 (= (charsToInt!0 lt!1512868) (choose!625 lt!1512868))))

(declare-fun bs!601064 () Bool)

(assert (= bs!601064 d!1259998))

(declare-fun m!4865241 () Bool)

(assert (=> bs!601064 m!4865241))

(assert (=> d!1259952 d!1259998))

(declare-fun d!1260000 () Bool)

(declare-fun c!726811 () Bool)

(assert (=> d!1260000 (= c!726811 (is-Empty!14292 (c!726799 x!741187)))))

(declare-fun e!2652167 () List!47434)

(assert (=> d!1260000 (= (list!17171 (c!726799 x!741187)) e!2652167)))

(declare-fun b!4271633 () Bool)

(declare-fun e!2652168 () List!47434)

(assert (=> b!4271633 (= e!2652168 (list!17173 (xs!17598 (c!726799 x!741187))))))

(declare-fun b!4271631 () Bool)

(assert (=> b!4271631 (= e!2652167 Nil!47310)))

(declare-fun b!4271632 () Bool)

(assert (=> b!4271632 (= e!2652167 e!2652168)))

(declare-fun c!726812 () Bool)

(assert (=> b!4271632 (= c!726812 (is-Leaf!22094 (c!726799 x!741187)))))

(declare-fun b!4271634 () Bool)

(assert (=> b!4271634 (= e!2652168 (++!12073 (list!17171 (left!35167 (c!726799 x!741187))) (list!17171 (right!35497 (c!726799 x!741187)))))))

(assert (= (and d!1260000 c!726811) b!4271631))

(assert (= (and d!1260000 (not c!726811)) b!4271632))

(assert (= (and b!4271632 c!726812) b!4271633))

(assert (= (and b!4271632 (not c!726812)) b!4271634))

(declare-fun m!4865243 () Bool)

(assert (=> b!4271633 m!4865243))

(declare-fun m!4865245 () Bool)

(assert (=> b!4271634 m!4865245))

(declare-fun m!4865247 () Bool)

(assert (=> b!4271634 m!4865247))

(assert (=> b!4271634 m!4865245))

(assert (=> b!4271634 m!4865247))

(declare-fun m!4865249 () Bool)

(assert (=> b!4271634 m!4865249))

(assert (=> d!1259956 d!1260000))

(push 1)

(assert (not b!4271630))

(assert (not b!4271622))

(assert (not d!1259986))

(assert (not b!4271629))

(assert (not d!1259982))

(assert (not b!4271537))

(assert (not b!4271634))

(assert (not d!1259998))

(assert (not b!4271547))

(assert (not b!4271625))

(assert (not b!4271633))

(assert (not b!4271549))

(assert (not bs!600938))

(assert (not b!4271548))

(assert (not d!1259984))

(assert (not b!4271621))

(assert (not d!1259980))

(assert (not d!1259988))

(assert (not start!409836))

(assert (not d!1259990))

(assert (not d!1259996))

(assert (not b!4271546))

(assert (not b!4271626))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1260018 () Bool)

(declare-fun choose!26047 (Int) Bool)

(assert (=> d!1260018 (= (Forall2!1226 lambda!130917) (choose!26047 lambda!130917))))

(declare-fun bs!601071 () Bool)

(assert (= bs!601071 d!1260018))

(declare-fun m!4865285 () Bool)

(assert (=> bs!601071 m!4865285))

(assert (=> b!4271537 d!1260018))

(declare-fun bs!601074 () Bool)

(declare-fun d!1260022 () Bool)

(assert (= bs!601074 (and d!1260022 start!409836)))

(declare-fun lambda!130938 () Int)

(assert (=> bs!601074 (not (= lambda!130938 lambda!130914))))

(assert (=> d!1260022 true))

(declare-fun order!24911 () Int)

(declare-fun order!24913 () Int)

(declare-fun dynLambda!20274 (Int Int) Int)

(declare-fun dynLambda!20275 (Int Int) Int)

(assert (=> d!1260022 (< (dynLambda!20274 order!24911 lambda!130915) (dynLambda!20275 order!24913 lambda!130938))))

(assert (=> d!1260022 true))

(declare-fun order!24915 () Int)

(declare-fun dynLambda!20276 (Int Int) Int)

(assert (=> d!1260022 (< (dynLambda!20276 order!24915 lambda!130916) (dynLambda!20275 order!24913 lambda!130938))))

(assert (=> d!1260022 (= (semiInverseModEq!3511 lambda!130915 lambda!130916) (Forall!1639 lambda!130938))))

(declare-fun bs!601075 () Bool)

(assert (= bs!601075 d!1260022))

(declare-fun m!4865309 () Bool)

(assert (=> bs!601075 m!4865309))

(assert (=> b!4271537 d!1260022))

(declare-fun d!1260030 () Bool)

(declare-fun choose!26048 (Int) Bool)

(assert (=> d!1260030 (= (Forall!1639 lambda!130914) (choose!26048 lambda!130914))))

(declare-fun bs!601076 () Bool)

(assert (= bs!601076 d!1260030))

(declare-fun m!4865311 () Bool)

(assert (=> bs!601076 m!4865311))

(assert (=> b!4271537 d!1260030))

(assert (=> b!4271537 d!1259956))

(declare-fun d!1260032 () Bool)

(declare-fun isBalanced!3843 (Conc!14292) Bool)

(assert (=> d!1260032 (= (inv!62448 x!741186) (isBalanced!3843 (c!726799 x!741186)))))

(declare-fun bs!601077 () Bool)

(assert (= bs!601077 d!1260032))

(declare-fun m!4865313 () Bool)

(assert (=> bs!601077 m!4865313))

(assert (=> b!4271537 d!1260032))

(declare-fun d!1260034 () Bool)

(assert (=> d!1260034 (= (inv!62448 x!741187) (isBalanced!3843 (c!726799 x!741187)))))

(declare-fun bs!601078 () Bool)

(assert (= bs!601078 d!1260034))

(declare-fun m!4865315 () Bool)

(assert (=> bs!601078 m!4865315))

(assert (=> b!4271537 d!1260034))

(assert (=> b!4271537 d!1259954))

(assert (=> d!1259996 d!1259960))

(declare-fun b!4271675 () Bool)

(declare-fun e!2652187 () List!47434)

(declare-fun e!2652188 () List!47434)

(assert (=> b!4271675 (= e!2652187 e!2652188)))

(declare-fun c!726831 () Bool)

(assert (=> b!4271675 (= c!726831 (is-Leaf!22094 (c!726799 x!741185)))))

(declare-fun b!4271676 () Bool)

(declare-datatypes ((Unit!66235 0))(
  ( (Unit!66236) )
))
(declare-fun lt!1512901 () Unit!66235)

(declare-fun lt!1512899 () Unit!66235)

(assert (=> b!4271676 (= lt!1512901 lt!1512899)))

(declare-fun lt!1512898 () List!47434)

(declare-fun call!294161 () List!47434)

(declare-fun lt!1512897 () List!47434)

(assert (=> b!4271676 (= (++!12073 (++!12073 lt!1512898 lt!1512897) (efficientList$default$2!178 (c!726799 x!741185))) (++!12073 lt!1512898 call!294161))))

(declare-fun lemmaConcatAssociativity!2713 (List!47434 List!47434 List!47434) Unit!66235)

(assert (=> b!4271676 (= lt!1512899 (lemmaConcatAssociativity!2713 lt!1512898 lt!1512897 (efficientList$default$2!178 (c!726799 x!741185))))))

(assert (=> b!4271676 (= lt!1512897 (list!17171 (right!35497 (c!726799 x!741185))))))

(assert (=> b!4271676 (= lt!1512898 (list!17171 (left!35167 (c!726799 x!741185))))))

(assert (=> b!4271676 (= e!2652188 (efficientList!514 (left!35167 (c!726799 x!741185)) (efficientList!514 (right!35497 (c!726799 x!741185)) (efficientList$default$2!178 (c!726799 x!741185)))))))

(declare-fun b!4271677 () Bool)

(declare-fun e!2652189 () List!47434)

(assert (=> b!4271677 (= e!2652189 lt!1512897)))

(declare-fun b!4271678 () Bool)

(declare-fun efficientList!516 (IArray!28589) List!47434)

(assert (=> b!4271678 (= e!2652189 (efficientList!516 (xs!17598 (c!726799 x!741185))))))

(declare-fun b!4271679 () Bool)

(assert (=> b!4271679 (= e!2652187 (efficientList$default$2!178 (c!726799 x!741185)))))

(declare-fun bm!294156 () Bool)

(declare-fun c!726833 () Bool)

(assert (=> bm!294156 (= c!726833 c!726831)))

(assert (=> bm!294156 (= call!294161 (++!12073 e!2652189 (efficientList$default$2!178 (c!726799 x!741185))))))

(declare-fun b!4271680 () Bool)

(assert (=> b!4271680 (= e!2652188 call!294161)))

(declare-fun d!1260036 () Bool)

(declare-fun lt!1512900 () List!47434)

(assert (=> d!1260036 (= lt!1512900 (++!12073 (list!17171 (c!726799 x!741185)) (efficientList$default$2!178 (c!726799 x!741185))))))

(assert (=> d!1260036 (= lt!1512900 e!2652187)))

(declare-fun c!726832 () Bool)

(assert (=> d!1260036 (= c!726832 (is-Empty!14292 (c!726799 x!741185)))))

(assert (=> d!1260036 (= (efficientList!514 (c!726799 x!741185) (efficientList$default$2!178 (c!726799 x!741185))) lt!1512900)))

(assert (= (and d!1260036 c!726832) b!4271679))

(assert (= (and d!1260036 (not c!726832)) b!4271675))

(assert (= (and b!4271675 c!726831) b!4271680))

(assert (= (and b!4271675 (not c!726831)) b!4271676))

(assert (= (or b!4271680 b!4271676) bm!294156))

(assert (= (and bm!294156 c!726833) b!4271678))

(assert (= (and bm!294156 (not c!726833)) b!4271677))

(assert (=> b!4271676 m!4865199))

(declare-fun m!4865317 () Bool)

(assert (=> b!4271676 m!4865317))

(assert (=> b!4271676 m!4865237))

(declare-fun m!4865319 () Bool)

(assert (=> b!4271676 m!4865319))

(assert (=> b!4271676 m!4865317))

(assert (=> b!4271676 m!4865237))

(declare-fun m!4865321 () Bool)

(assert (=> b!4271676 m!4865321))

(assert (=> b!4271676 m!4865197))

(declare-fun m!4865323 () Bool)

(assert (=> b!4271676 m!4865323))

(assert (=> b!4271676 m!4865321))

(declare-fun m!4865325 () Bool)

(assert (=> b!4271676 m!4865325))

(assert (=> b!4271676 m!4865237))

(declare-fun m!4865327 () Bool)

(assert (=> b!4271676 m!4865327))

(declare-fun m!4865329 () Bool)

(assert (=> b!4271678 m!4865329))

(assert (=> bm!294156 m!4865237))

(declare-fun m!4865331 () Bool)

(assert (=> bm!294156 m!4865331))

(assert (=> d!1260036 m!4865165))

(assert (=> d!1260036 m!4865165))

(assert (=> d!1260036 m!4865237))

(declare-fun m!4865333 () Bool)

(assert (=> d!1260036 m!4865333))

(assert (=> d!1259996 d!1260036))

(declare-fun d!1260038 () Bool)

(assert (=> d!1260038 (= (efficientList$default$2!178 (c!726799 x!741185)) Nil!47310)))

(assert (=> d!1259996 d!1260038))

(assert (=> start!409836 d!1259952))

(assert (=> start!409836 d!1259958))

(declare-fun d!1260040 () Bool)

(assert (=> d!1260040 (= (inv!62448 x!741185) (isBalanced!3843 (c!726799 x!741185)))))

(declare-fun bs!601079 () Bool)

(assert (= bs!601079 d!1260040))

(declare-fun m!4865335 () Bool)

(assert (=> bs!601079 m!4865335))

(assert (=> start!409836 d!1260040))

(declare-fun d!1260042 () Bool)

(declare-fun c!726837 () Bool)

(assert (=> d!1260042 (= c!726837 (is-IntegerValue!24795 (toValue!12 thiss!2185 x!741185)))))

(declare-fun e!2652192 () BalanceConc!28094)

(assert (=> d!1260042 (= (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185)) e!2652192)))

(declare-fun b!4271685 () Bool)

(declare-fun seqFromList!5873 (List!47434) BalanceConc!28094)

(assert (=> b!4271685 (= e!2652192 (seqFromList!5873 (text!58302 (toValue!12 thiss!2185 x!741185))))))

(declare-fun b!4271686 () Bool)

(assert (=> b!4271686 (= e!2652192 (BalanceConc!28095 Empty!14292))))

(assert (= (and d!1260042 c!726837) b!4271685))

(assert (= (and d!1260042 (not c!726837)) b!4271686))

(declare-fun m!4865337 () Bool)

(assert (=> b!4271685 m!4865337))

(assert (=> start!409836 d!1260042))

(assert (=> start!409836 d!1260030))

(assert (=> start!409836 d!1259960))

(assert (=> d!1259984 d!1259958))

(declare-fun b!4271687 () Bool)

(declare-fun e!2652193 () List!47434)

(declare-fun e!2652194 () List!47434)

(assert (=> b!4271687 (= e!2652193 e!2652194)))

(declare-fun c!726838 () Bool)

(assert (=> b!4271687 (= c!726838 (is-Leaf!22094 (c!726799 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185)))))))

(declare-fun b!4271688 () Bool)

(declare-fun lt!1512906 () Unit!66235)

(declare-fun lt!1512904 () Unit!66235)

(assert (=> b!4271688 (= lt!1512906 lt!1512904)))

(declare-fun call!294162 () List!47434)

(declare-fun lt!1512903 () List!47434)

(declare-fun lt!1512902 () List!47434)

(assert (=> b!4271688 (= (++!12073 (++!12073 lt!1512903 lt!1512902) (efficientList$default$2!178 (c!726799 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185))))) (++!12073 lt!1512903 call!294162))))

(assert (=> b!4271688 (= lt!1512904 (lemmaConcatAssociativity!2713 lt!1512903 lt!1512902 (efficientList$default$2!178 (c!726799 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185))))))))

(assert (=> b!4271688 (= lt!1512902 (list!17171 (right!35497 (c!726799 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185))))))))

(assert (=> b!4271688 (= lt!1512903 (list!17171 (left!35167 (c!726799 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185))))))))

(assert (=> b!4271688 (= e!2652194 (efficientList!514 (left!35167 (c!726799 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185)))) (efficientList!514 (right!35497 (c!726799 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185)))) (efficientList$default$2!178 (c!726799 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185)))))))))

(declare-fun b!4271689 () Bool)

(declare-fun e!2652195 () List!47434)

(assert (=> b!4271689 (= e!2652195 lt!1512902)))

(declare-fun b!4271690 () Bool)

(assert (=> b!4271690 (= e!2652195 (efficientList!516 (xs!17598 (c!726799 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185))))))))

(declare-fun b!4271691 () Bool)

(assert (=> b!4271691 (= e!2652193 (efficientList$default$2!178 (c!726799 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185)))))))

(declare-fun bm!294157 () Bool)

(declare-fun c!726840 () Bool)

(assert (=> bm!294157 (= c!726840 c!726838)))

(assert (=> bm!294157 (= call!294162 (++!12073 e!2652195 (efficientList$default$2!178 (c!726799 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185))))))))

(declare-fun b!4271692 () Bool)

(assert (=> b!4271692 (= e!2652194 call!294162)))

(declare-fun d!1260044 () Bool)

(declare-fun lt!1512905 () List!47434)

(assert (=> d!1260044 (= lt!1512905 (++!12073 (list!17171 (c!726799 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185)))) (efficientList$default$2!178 (c!726799 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185))))))))

(assert (=> d!1260044 (= lt!1512905 e!2652193)))

(declare-fun c!726839 () Bool)

(assert (=> d!1260044 (= c!726839 (is-Empty!14292 (c!726799 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185)))))))

(assert (=> d!1260044 (= (efficientList!514 (c!726799 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185))) (efficientList$default$2!178 (c!726799 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185))))) lt!1512905)))

(assert (= (and d!1260044 c!726839) b!4271691))

(assert (= (and d!1260044 (not c!726839)) b!4271687))

(assert (= (and b!4271687 c!726838) b!4271692))

(assert (= (and b!4271687 (not c!726838)) b!4271688))

(assert (= (or b!4271692 b!4271688) bm!294157))

(assert (= (and bm!294157 c!726840) b!4271690))

(assert (= (and bm!294157 (not c!726840)) b!4271689))

(assert (=> b!4271688 m!4865225))

(declare-fun m!4865339 () Bool)

(assert (=> b!4271688 m!4865339))

(assert (=> b!4271688 m!4865209))

(declare-fun m!4865341 () Bool)

(assert (=> b!4271688 m!4865341))

(assert (=> b!4271688 m!4865339))

(assert (=> b!4271688 m!4865209))

(declare-fun m!4865343 () Bool)

(assert (=> b!4271688 m!4865343))

(assert (=> b!4271688 m!4865223))

(declare-fun m!4865345 () Bool)

(assert (=> b!4271688 m!4865345))

(assert (=> b!4271688 m!4865343))

(declare-fun m!4865347 () Bool)

(assert (=> b!4271688 m!4865347))

(assert (=> b!4271688 m!4865209))

(declare-fun m!4865349 () Bool)

(assert (=> b!4271688 m!4865349))

(declare-fun m!4865351 () Bool)

(assert (=> b!4271690 m!4865351))

(assert (=> bm!294157 m!4865209))

(declare-fun m!4865353 () Bool)

(assert (=> bm!294157 m!4865353))

(assert (=> d!1260044 m!4865163))

(assert (=> d!1260044 m!4865163))

(assert (=> d!1260044 m!4865209))

(declare-fun m!4865355 () Bool)

(assert (=> d!1260044 m!4865355))

(assert (=> d!1259984 d!1260044))

(declare-fun d!1260046 () Bool)

(assert (=> d!1260046 (= (efficientList$default$2!178 (c!726799 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741185)))) Nil!47310)))

(assert (=> d!1259984 d!1260046))

(declare-fun d!1260048 () Bool)

(assert (=> d!1260048 true))

(assert (=> d!1260048 true))

(declare-fun res!1754649 () (_ BitVec 32))

(assert (=> d!1260048 (= (choose!625 lt!1512866) res!1754649)))

(assert (=> d!1259990 d!1260048))

(assert (=> d!1259980 d!1259956))

(declare-fun b!4271693 () Bool)

(declare-fun e!2652196 () List!47434)

(declare-fun e!2652197 () List!47434)

(assert (=> b!4271693 (= e!2652196 e!2652197)))

(declare-fun c!726841 () Bool)

(assert (=> b!4271693 (= c!726841 (is-Leaf!22094 (c!726799 x!741187)))))

(declare-fun b!4271694 () Bool)

(declare-fun lt!1512911 () Unit!66235)

(declare-fun lt!1512909 () Unit!66235)

(assert (=> b!4271694 (= lt!1512911 lt!1512909)))

(declare-fun lt!1512908 () List!47434)

(declare-fun lt!1512907 () List!47434)

(declare-fun call!294163 () List!47434)

(assert (=> b!4271694 (= (++!12073 (++!12073 lt!1512908 lt!1512907) (efficientList$default$2!178 (c!726799 x!741187))) (++!12073 lt!1512908 call!294163))))

(assert (=> b!4271694 (= lt!1512909 (lemmaConcatAssociativity!2713 lt!1512908 lt!1512907 (efficientList$default$2!178 (c!726799 x!741187))))))

(assert (=> b!4271694 (= lt!1512907 (list!17171 (right!35497 (c!726799 x!741187))))))

(assert (=> b!4271694 (= lt!1512908 (list!17171 (left!35167 (c!726799 x!741187))))))

(assert (=> b!4271694 (= e!2652197 (efficientList!514 (left!35167 (c!726799 x!741187)) (efficientList!514 (right!35497 (c!726799 x!741187)) (efficientList$default$2!178 (c!726799 x!741187)))))))

(declare-fun b!4271695 () Bool)

(declare-fun e!2652198 () List!47434)

(assert (=> b!4271695 (= e!2652198 lt!1512907)))

(declare-fun b!4271696 () Bool)

(assert (=> b!4271696 (= e!2652198 (efficientList!516 (xs!17598 (c!726799 x!741187))))))

(declare-fun b!4271697 () Bool)

(assert (=> b!4271697 (= e!2652196 (efficientList$default$2!178 (c!726799 x!741187)))))

(declare-fun bm!294158 () Bool)

(declare-fun c!726843 () Bool)

(assert (=> bm!294158 (= c!726843 c!726841)))

(assert (=> bm!294158 (= call!294163 (++!12073 e!2652198 (efficientList$default$2!178 (c!726799 x!741187))))))

(declare-fun b!4271698 () Bool)

(assert (=> b!4271698 (= e!2652197 call!294163)))

(declare-fun d!1260050 () Bool)

(declare-fun lt!1512910 () List!47434)

(assert (=> d!1260050 (= lt!1512910 (++!12073 (list!17171 (c!726799 x!741187)) (efficientList$default$2!178 (c!726799 x!741187))))))

(assert (=> d!1260050 (= lt!1512910 e!2652196)))

(declare-fun c!726842 () Bool)

(assert (=> d!1260050 (= c!726842 (is-Empty!14292 (c!726799 x!741187)))))

(assert (=> d!1260050 (= (efficientList!514 (c!726799 x!741187) (efficientList$default$2!178 (c!726799 x!741187))) lt!1512910)))

(assert (= (and d!1260050 c!726842) b!4271697))

(assert (= (and d!1260050 (not c!726842)) b!4271693))

(assert (= (and b!4271693 c!726841) b!4271698))

(assert (= (and b!4271693 (not c!726841)) b!4271694))

(assert (= (or b!4271698 b!4271694) bm!294158))

(assert (= (and bm!294158 c!726843) b!4271696))

(assert (= (and bm!294158 (not c!726843)) b!4271695))

(assert (=> b!4271694 m!4865247))

(declare-fun m!4865357 () Bool)

(assert (=> b!4271694 m!4865357))

(assert (=> b!4271694 m!4865203))

(declare-fun m!4865359 () Bool)

(assert (=> b!4271694 m!4865359))

(assert (=> b!4271694 m!4865357))

(assert (=> b!4271694 m!4865203))

(declare-fun m!4865361 () Bool)

(assert (=> b!4271694 m!4865361))

(assert (=> b!4271694 m!4865245))

(declare-fun m!4865363 () Bool)

(assert (=> b!4271694 m!4865363))

(assert (=> b!4271694 m!4865361))

(declare-fun m!4865365 () Bool)

(assert (=> b!4271694 m!4865365))

(assert (=> b!4271694 m!4865203))

(declare-fun m!4865367 () Bool)

(assert (=> b!4271694 m!4865367))

(declare-fun m!4865369 () Bool)

(assert (=> b!4271696 m!4865369))

(assert (=> bm!294158 m!4865203))

(declare-fun m!4865371 () Bool)

(assert (=> bm!294158 m!4865371))

(assert (=> d!1260050 m!4865161))

(assert (=> d!1260050 m!4865161))

(assert (=> d!1260050 m!4865203))

(declare-fun m!4865373 () Bool)

(assert (=> d!1260050 m!4865373))

(assert (=> d!1259980 d!1260050))

(declare-fun d!1260052 () Bool)

(assert (=> d!1260052 (= (efficientList$default$2!178 (c!726799 x!741187)) Nil!47310)))

(assert (=> d!1259980 d!1260052))

(assert (=> b!4271547 d!1259948))

(assert (=> b!4271547 d!1259950))

(declare-fun d!1260054 () Bool)

(declare-fun c!726846 () Bool)

(assert (=> d!1260054 (= c!726846 (is-Node!14292 (c!726799 x!741185)))))

(declare-fun e!2652203 () Bool)

(assert (=> d!1260054 (= (inv!62447 (c!726799 x!741185)) e!2652203)))

(declare-fun b!4271705 () Bool)

(declare-fun inv!62451 (Conc!14292) Bool)

(assert (=> b!4271705 (= e!2652203 (inv!62451 (c!726799 x!741185)))))

(declare-fun b!4271706 () Bool)

(declare-fun e!2652204 () Bool)

(assert (=> b!4271706 (= e!2652203 e!2652204)))

(declare-fun res!1754652 () Bool)

(assert (=> b!4271706 (= res!1754652 (not (is-Leaf!22094 (c!726799 x!741185))))))

(assert (=> b!4271706 (=> res!1754652 e!2652204)))

(declare-fun b!4271707 () Bool)

(declare-fun inv!62452 (Conc!14292) Bool)

(assert (=> b!4271707 (= e!2652204 (inv!62452 (c!726799 x!741185)))))

(assert (= (and d!1260054 c!726846) b!4271705))

(assert (= (and d!1260054 (not c!726846)) b!4271706))

(assert (= (and b!4271706 (not res!1754652)) b!4271707))

(declare-fun m!4865375 () Bool)

(assert (=> b!4271705 m!4865375))

(declare-fun m!4865377 () Bool)

(assert (=> b!4271707 m!4865377))

(assert (=> b!4271546 d!1260054))

(assert (=> bs!600938 d!1259958))

(assert (=> bs!600938 d!1260042))

(assert (=> bs!600938 d!1259952))

(assert (=> bs!600938 d!1259960))

(declare-fun d!1260056 () Bool)

(assert (=> d!1260056 true))

(assert (=> d!1260056 true))

(declare-fun res!1754653 () (_ BitVec 32))

(assert (=> d!1260056 (= (choose!625 lt!1512867) res!1754653)))

(assert (=> d!1259982 d!1260056))

(assert (=> d!1259988 d!1259954))

(declare-fun b!4271708 () Bool)

(declare-fun e!2652205 () List!47434)

(declare-fun e!2652206 () List!47434)

(assert (=> b!4271708 (= e!2652205 e!2652206)))

(declare-fun c!726847 () Bool)

(assert (=> b!4271708 (= c!726847 (is-Leaf!22094 (c!726799 x!741186)))))

(declare-fun b!4271709 () Bool)

(declare-fun lt!1512916 () Unit!66235)

(declare-fun lt!1512914 () Unit!66235)

(assert (=> b!4271709 (= lt!1512916 lt!1512914)))

(declare-fun lt!1512912 () List!47434)

(declare-fun call!294164 () List!47434)

(declare-fun lt!1512913 () List!47434)

(assert (=> b!4271709 (= (++!12073 (++!12073 lt!1512913 lt!1512912) (efficientList$default$2!178 (c!726799 x!741186))) (++!12073 lt!1512913 call!294164))))

(assert (=> b!4271709 (= lt!1512914 (lemmaConcatAssociativity!2713 lt!1512913 lt!1512912 (efficientList$default$2!178 (c!726799 x!741186))))))

(assert (=> b!4271709 (= lt!1512912 (list!17171 (right!35497 (c!726799 x!741186))))))

(assert (=> b!4271709 (= lt!1512913 (list!17171 (left!35167 (c!726799 x!741186))))))

(assert (=> b!4271709 (= e!2652206 (efficientList!514 (left!35167 (c!726799 x!741186)) (efficientList!514 (right!35497 (c!726799 x!741186)) (efficientList$default$2!178 (c!726799 x!741186)))))))

(declare-fun b!4271710 () Bool)

(declare-fun e!2652207 () List!47434)

(assert (=> b!4271710 (= e!2652207 lt!1512912)))

(declare-fun b!4271711 () Bool)

(assert (=> b!4271711 (= e!2652207 (efficientList!516 (xs!17598 (c!726799 x!741186))))))

(declare-fun b!4271712 () Bool)

(assert (=> b!4271712 (= e!2652205 (efficientList$default$2!178 (c!726799 x!741186)))))

(declare-fun bm!294159 () Bool)

(declare-fun c!726849 () Bool)

(assert (=> bm!294159 (= c!726849 c!726847)))

(assert (=> bm!294159 (= call!294164 (++!12073 e!2652207 (efficientList$default$2!178 (c!726799 x!741186))))))

(declare-fun b!4271713 () Bool)

(assert (=> b!4271713 (= e!2652206 call!294164)))

(declare-fun d!1260058 () Bool)

(declare-fun lt!1512915 () List!47434)

(assert (=> d!1260058 (= lt!1512915 (++!12073 (list!17171 (c!726799 x!741186)) (efficientList$default$2!178 (c!726799 x!741186))))))

(assert (=> d!1260058 (= lt!1512915 e!2652205)))

(declare-fun c!726848 () Bool)

(assert (=> d!1260058 (= c!726848 (is-Empty!14292 (c!726799 x!741186)))))

(assert (=> d!1260058 (= (efficientList!514 (c!726799 x!741186) (efficientList$default$2!178 (c!726799 x!741186))) lt!1512915)))

(assert (= (and d!1260058 c!726848) b!4271712))

(assert (= (and d!1260058 (not c!726848)) b!4271708))

(assert (= (and b!4271708 c!726847) b!4271713))

(assert (= (and b!4271708 (not c!726847)) b!4271709))

(assert (= (or b!4271713 b!4271709) bm!294159))

(assert (= (and bm!294159 c!726849) b!4271711))

(assert (= (and bm!294159 (not c!726849)) b!4271710))

(assert (=> b!4271709 m!4865233))

(declare-fun m!4865379 () Bool)

(assert (=> b!4271709 m!4865379))

(assert (=> b!4271709 m!4865215))

(declare-fun m!4865381 () Bool)

(assert (=> b!4271709 m!4865381))

(assert (=> b!4271709 m!4865379))

(assert (=> b!4271709 m!4865215))

(declare-fun m!4865383 () Bool)

(assert (=> b!4271709 m!4865383))

(assert (=> b!4271709 m!4865231))

(declare-fun m!4865385 () Bool)

(assert (=> b!4271709 m!4865385))

(assert (=> b!4271709 m!4865383))

(declare-fun m!4865387 () Bool)

(assert (=> b!4271709 m!4865387))

(assert (=> b!4271709 m!4865215))

(declare-fun m!4865389 () Bool)

(assert (=> b!4271709 m!4865389))

(declare-fun m!4865391 () Bool)

(assert (=> b!4271711 m!4865391))

(assert (=> bm!294159 m!4865215))

(declare-fun m!4865393 () Bool)

(assert (=> bm!294159 m!4865393))

(assert (=> d!1260058 m!4865159))

(assert (=> d!1260058 m!4865159))

(assert (=> d!1260058 m!4865215))

(declare-fun m!4865395 () Bool)

(assert (=> d!1260058 m!4865395))

(assert (=> d!1259988 d!1260058))

(declare-fun d!1260060 () Bool)

(assert (=> d!1260060 (= (efficientList$default$2!178 (c!726799 x!741186)) Nil!47310)))

(assert (=> d!1259988 d!1260060))

(declare-fun d!1260062 () Bool)

(declare-fun c!726850 () Bool)

(assert (=> d!1260062 (= c!726850 (is-Node!14292 (c!726799 x!741187)))))

(declare-fun e!2652208 () Bool)

(assert (=> d!1260062 (= (inv!62447 (c!726799 x!741187)) e!2652208)))

(declare-fun b!4271714 () Bool)

(assert (=> b!4271714 (= e!2652208 (inv!62451 (c!726799 x!741187)))))

(declare-fun b!4271715 () Bool)

(declare-fun e!2652209 () Bool)

(assert (=> b!4271715 (= e!2652208 e!2652209)))

(declare-fun res!1754654 () Bool)

(assert (=> b!4271715 (= res!1754654 (not (is-Leaf!22094 (c!726799 x!741187))))))

(assert (=> b!4271715 (=> res!1754654 e!2652209)))

(declare-fun b!4271716 () Bool)

(assert (=> b!4271716 (= e!2652209 (inv!62452 (c!726799 x!741187)))))

(assert (= (and d!1260062 c!726850) b!4271714))

(assert (= (and d!1260062 (not c!726850)) b!4271715))

(assert (= (and b!4271715 (not res!1754654)) b!4271716))

(declare-fun m!4865397 () Bool)

(assert (=> b!4271714 m!4865397))

(declare-fun m!4865399 () Bool)

(assert (=> b!4271716 m!4865399))

(assert (=> b!4271549 d!1260062))

(declare-fun d!1260064 () Bool)

(declare-fun c!726851 () Bool)

(assert (=> d!1260064 (= c!726851 (is-Node!14292 (c!726799 x!741186)))))

(declare-fun e!2652210 () Bool)

(assert (=> d!1260064 (= (inv!62447 (c!726799 x!741186)) e!2652210)))

(declare-fun b!4271717 () Bool)

(assert (=> b!4271717 (= e!2652210 (inv!62451 (c!726799 x!741186)))))

(declare-fun b!4271718 () Bool)

(declare-fun e!2652211 () Bool)

(assert (=> b!4271718 (= e!2652210 e!2652211)))

(declare-fun res!1754655 () Bool)

(assert (=> b!4271718 (= res!1754655 (not (is-Leaf!22094 (c!726799 x!741186))))))

(assert (=> b!4271718 (=> res!1754655 e!2652211)))

(declare-fun b!4271719 () Bool)

(assert (=> b!4271719 (= e!2652211 (inv!62452 (c!726799 x!741186)))))

(assert (= (and d!1260064 c!726851) b!4271717))

(assert (= (and d!1260064 (not c!726851)) b!4271718))

(assert (= (and b!4271718 (not res!1754655)) b!4271719))

(declare-fun m!4865401 () Bool)

(assert (=> b!4271717 m!4865401))

(declare-fun m!4865403 () Bool)

(assert (=> b!4271719 m!4865403))

(assert (=> b!4271548 d!1260064))

(declare-fun d!1260066 () Bool)

(assert (=> d!1260066 true))

(assert (=> d!1260066 true))

(declare-fun res!1754656 () (_ BitVec 32))

(assert (=> d!1260066 (= (choose!625 lt!1512865) res!1754656)))

(assert (=> d!1259986 d!1260066))

(declare-fun d!1260068 () Bool)

(assert (=> d!1260068 true))

(assert (=> d!1260068 true))

(declare-fun res!1754657 () (_ BitVec 32))

(assert (=> d!1260068 (= (choose!625 lt!1512868) res!1754657)))

(assert (=> d!1259998 d!1260068))

(declare-fun b!4271726 () Bool)

(declare-fun tp!1308128 () Bool)

(declare-fun e!2652216 () Bool)

(declare-fun tp!1308127 () Bool)

(assert (=> b!4271726 (= e!2652216 (and (inv!62447 (left!35167 (c!726799 x!741185))) tp!1308127 (inv!62447 (right!35497 (c!726799 x!741185))) tp!1308128))))

(declare-fun b!4271727 () Bool)

(declare-fun inv!62453 (IArray!28589) Bool)

(assert (=> b!4271727 (= e!2652216 (inv!62453 (xs!17598 (c!726799 x!741185))))))

(assert (=> b!4271546 (= tp!1308111 (and (inv!62447 (c!726799 x!741185)) e!2652216))))

(assert (= (and b!4271546 (is-Node!14292 (c!726799 x!741185))) b!4271726))

(assert (= (and b!4271546 (is-Leaf!22094 (c!726799 x!741185))) b!4271727))

(declare-fun m!4865405 () Bool)

(assert (=> b!4271726 m!4865405))

(declare-fun m!4865407 () Bool)

(assert (=> b!4271726 m!4865407))

(declare-fun m!4865409 () Bool)

(assert (=> b!4271727 m!4865409))

(assert (=> b!4271546 m!4865075))

(declare-fun tp!1308129 () Bool)

(declare-fun b!4271728 () Bool)

(declare-fun tp!1308130 () Bool)

(declare-fun e!2652218 () Bool)

(assert (=> b!4271728 (= e!2652218 (and (inv!62447 (left!35167 (c!726799 x!741187))) tp!1308129 (inv!62447 (right!35497 (c!726799 x!741187))) tp!1308130))))

(declare-fun b!4271729 () Bool)

(assert (=> b!4271729 (= e!2652218 (inv!62453 (xs!17598 (c!726799 x!741187))))))

(assert (=> b!4271549 (= tp!1308112 (and (inv!62447 (c!726799 x!741187)) e!2652218))))

(assert (= (and b!4271549 (is-Node!14292 (c!726799 x!741187))) b!4271728))

(assert (= (and b!4271549 (is-Leaf!22094 (c!726799 x!741187))) b!4271729))

(declare-fun m!4865411 () Bool)

(assert (=> b!4271728 m!4865411))

(declare-fun m!4865413 () Bool)

(assert (=> b!4271728 m!4865413))

(declare-fun m!4865415 () Bool)

(assert (=> b!4271729 m!4865415))

(assert (=> b!4271549 m!4865101))

(declare-fun tp!1308132 () Bool)

(declare-fun tp!1308131 () Bool)

(declare-fun b!4271730 () Bool)

(declare-fun e!2652220 () Bool)

(assert (=> b!4271730 (= e!2652220 (and (inv!62447 (left!35167 (c!726799 x!741186))) tp!1308131 (inv!62447 (right!35497 (c!726799 x!741186))) tp!1308132))))

(declare-fun b!4271731 () Bool)

(assert (=> b!4271731 (= e!2652220 (inv!62453 (xs!17598 (c!726799 x!741186))))))

(assert (=> b!4271548 (= tp!1308113 (and (inv!62447 (c!726799 x!741186)) e!2652220))))

(assert (= (and b!4271548 (is-Node!14292 (c!726799 x!741186))) b!4271730))

(assert (= (and b!4271548 (is-Leaf!22094 (c!726799 x!741186))) b!4271731))

(declare-fun m!4865417 () Bool)

(assert (=> b!4271730 m!4865417))

(declare-fun m!4865419 () Bool)

(assert (=> b!4271730 m!4865419))

(declare-fun m!4865421 () Bool)

(assert (=> b!4271731 m!4865421))

(assert (=> b!4271548 m!4865099))

(push 1)

(assert (not d!1260032))

(assert (not b!4271690))

(assert (not b!4271678))

(assert (not b!4271630))

(assert (not bm!294156))

(assert (not b!4271634))

(assert (not bm!294159))

(assert (not b!4271729))

(assert (not b!4271676))

(assert (not d!1260058))

(assert (not bm!294158))

(assert (not b!4271625))

(assert (not d!1260036))

(assert (not b!4271705))

(assert (not d!1260050))

(assert (not b!4271727))

(assert (not b!4271696))

(assert (not b!4271719))

(assert (not bm!294157))

(assert (not b!4271716))

(assert (not b!4271622))

(assert (not b!4271707))

(assert (not d!1260018))

(assert (not d!1260022))

(assert (not b!4271731))

(assert (not b!4271717))

(assert (not b!4271629))

(assert (not b!4271694))

(assert (not b!4271709))

(assert (not d!1260040))

(assert (not d!1260030))

(assert (not b!4271546))

(assert (not b!4271626))

(assert (not b!4271688))

(assert (not b!4271685))

(assert (not b!4271633))

(assert (not b!4271730))

(assert (not d!1260034))

(assert (not b!4271549))

(assert (not b!4271726))

(assert (not b!4271548))

(assert (not d!1260044))

(assert (not b!4271728))

(assert (not b!4271711))

(assert (not b!4271621))

(assert (not b!4271714))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

