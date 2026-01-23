; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!248928 () Bool)

(assert start!248928)

(assert (=> start!248928 true))

(declare-fun b!2576444 () Bool)

(assert (=> b!2576444 true))

(assert (=> b!2576444 true))

(declare-fun b!2576445 () Bool)

(assert (=> b!2576445 true))

(declare-fun b!2576454 () Bool)

(declare-fun e!1625708 () Bool)

(declare-datatypes ((List!29737 0))(
  ( (Nil!29637) (Cons!29637 (h!35057 (_ BitVec 16)) (t!211465 List!29737)) )
))
(declare-datatypes ((IArray!18477 0))(
  ( (IArray!18478 (innerList!9296 List!29737)) )
))
(declare-datatypes ((Conc!9236 0))(
  ( (Node!9236 (left!22527 Conc!9236) (right!22857 Conc!9236) (csize!18702 Int) (cheight!9447 Int)) (Leaf!14086 (xs!12220 IArray!18477) (csize!18703 Int)) (Empty!9236) )
))
(declare-datatypes ((BalanceConc!18086 0))(
  ( (BalanceConc!18087 (c!414976 Conc!9236)) )
))
(declare-fun x!462656 () BalanceConc!18086)

(declare-fun tp!818941 () Bool)

(declare-fun inv!39888 (Conc!9236) Bool)

(assert (=> b!2576454 (= e!1625708 (and (inv!39888 (c!414976 x!462656)) tp!818941))))

(declare-fun inst!1414 () Bool)

(declare-datatypes ((NewLineValueInjection!12 0))(
  ( (NewLineValueInjection!13) )
))
(declare-fun thiss!4369 () NewLineValueInjection!12)

(declare-fun inv!39889 (BalanceConc!18086) Bool)

(declare-fun list!11170 (BalanceConc!18086) List!29737)

(declare-datatypes ((TokenValue!4700 0))(
  ( (FloatLiteralValue!9400 (text!33345 List!29737)) (TokenValueExt!4699 (__x!19219 Int)) (Broken!23500 (value!144877 List!29737)) (Object!4799) (End!4700) (Def!4700) (Underscore!4700) (Match!4700) (Else!4700) (Error!4700) (Case!4700) (If!4700) (Extends!4700) (Abstract!4700) (Class!4700) (Val!4700) (DelimiterValue!9400 (del!4760 List!29737)) (KeywordValue!4706 (value!144878 List!29737)) (CommentValue!9400 (value!144879 List!29737)) (WhitespaceValue!9400 (value!144880 List!29737)) (IndentationValue!4700 (value!144881 List!29737)) (String!32929) (Int32!4700) (Broken!23501 (value!144882 List!29737)) (Boolean!4701) (Unit!43483) (OperatorValue!4703 (op!4760 List!29737)) (IdentifierValue!9400 (value!144883 List!29737)) (IdentifierValue!9401 (value!144884 List!29737)) (WhitespaceValue!9401 (value!144885 List!29737)) (True!9400) (False!9400) (Broken!23502 (value!144886 List!29737)) (Broken!23503 (value!144887 List!29737)) (True!9401) (RightBrace!4700) (RightBracket!4700) (Colon!4700) (Null!4700) (Comma!4700) (LeftBracket!4700) (False!9401) (LeftBrace!4700) (ImaginaryLiteralValue!4700 (text!33346 List!29737)) (StringLiteralValue!14100 (value!144888 List!29737)) (EOFValue!4700 (value!144889 List!29737)) (IdentValue!4700 (value!144890 List!29737)) (DelimiterValue!9401 (value!144891 List!29737)) (DedentValue!4700 (value!144892 List!29737)) (NewLineValue!4700 (value!144893 List!29737)) (IntegerValue!14100 (value!144894 (_ BitVec 32)) (text!33347 List!29737)) (IntegerValue!14101 (value!144895 Int) (text!33348 List!29737)) (Times!4700) (Or!4700) (Equal!4700) (Minus!4700) (Broken!23504 (value!144896 List!29737)) (And!4700) (Div!4700) (LessEqual!4700) (Mod!4700) (Concat!12344) (Not!4700) (Plus!4700) (SpaceValue!4700 (value!144897 List!29737)) (IntegerValue!14102 (value!144898 Int) (text!33349 List!29737)) (StringLiteralValue!14101 (text!33350 List!29737)) (FloatLiteralValue!9401 (text!33351 List!29737)) (BytesLiteralValue!4700 (value!144899 List!29737)) (CommentValue!9401 (value!144900 List!29737)) (StringLiteralValue!14102 (value!144901 List!29737)) (ErrorTokenValue!4700 (msg!4761 List!29737)) )
))
(declare-fun toCharacters!17 (NewLineValueInjection!12 TokenValue!4700) BalanceConc!18086)

(declare-fun toValue!24 (NewLineValueInjection!12 BalanceConc!18086) TokenValue!4700)

(assert (=> start!248928 (= inst!1414 (=> (and (inv!39889 x!462656) e!1625708) (= (list!11170 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656))) (list!11170 x!462656))))))

(assert (= start!248928 b!2576454))

(declare-fun m!2910995 () Bool)

(assert (=> b!2576454 m!2910995))

(declare-fun m!2910997 () Bool)

(assert (=> start!248928 m!2910997))

(declare-fun m!2910999 () Bool)

(assert (=> start!248928 m!2910999))

(declare-fun m!2911001 () Bool)

(assert (=> start!248928 m!2911001))

(declare-fun m!2911003 () Bool)

(assert (=> start!248928 m!2911003))

(assert (=> start!248928 m!2910999))

(declare-fun m!2911005 () Bool)

(assert (=> start!248928 m!2911005))

(assert (=> start!248928 m!2911003))

(declare-fun res!1083720 () Bool)

(declare-fun e!1625710 () Bool)

(assert (=> b!2576445 (=> res!1083720 e!1625710)))

(declare-fun x!462657 () BalanceConc!18086)

(declare-fun x!462658 () BalanceConc!18086)

(assert (=> b!2576445 (= res!1083720 (not (= (list!11170 x!462657) (list!11170 x!462658))))))

(declare-fun e!1625709 () Bool)

(declare-fun e!1625711 () Bool)

(declare-fun inst!1415 () Bool)

(assert (=> b!2576445 (= inst!1415 (=> (and (inv!39889 x!462657) e!1625709 (inv!39889 x!462658) e!1625711) e!1625710))))

(declare-fun b!2576455 () Bool)

(assert (=> b!2576455 (= e!1625710 (= (toValue!24 thiss!4369 x!462657) (toValue!24 thiss!4369 x!462658)))))

(declare-fun b!2576456 () Bool)

(declare-fun tp!818942 () Bool)

(assert (=> b!2576456 (= e!1625709 (and (inv!39888 (c!414976 x!462657)) tp!818942))))

(declare-fun b!2576457 () Bool)

(declare-fun tp!818943 () Bool)

(assert (=> b!2576457 (= e!1625711 (and (inv!39888 (c!414976 x!462658)) tp!818943))))

(assert (= (and b!2576445 (not res!1083720)) b!2576455))

(assert (= b!2576445 b!2576456))

(assert (= b!2576445 b!2576457))

(declare-fun m!2911007 () Bool)

(assert (=> b!2576445 m!2911007))

(declare-fun m!2911009 () Bool)

(assert (=> b!2576445 m!2911009))

(declare-fun m!2911011 () Bool)

(assert (=> b!2576445 m!2911011))

(declare-fun m!2911013 () Bool)

(assert (=> b!2576445 m!2911013))

(declare-fun m!2911015 () Bool)

(assert (=> b!2576455 m!2911015))

(declare-fun m!2911017 () Bool)

(assert (=> b!2576455 m!2911017))

(declare-fun m!2911019 () Bool)

(assert (=> b!2576456 m!2911019))

(declare-fun m!2911021 () Bool)

(assert (=> b!2576457 m!2911021))

(declare-fun bs!470188 () Bool)

(declare-fun neg-inst!1414 () Bool)

(declare-fun s!228118 () Bool)

(assert (= bs!470188 (and neg-inst!1414 s!228118)))

(assert (=> bs!470188 (=> true (= (list!11170 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656))) (list!11170 x!462656)))))

(assert (=> m!2911003 m!2910999))

(assert (=> m!2911003 m!2911001))

(assert (=> m!2911003 m!2910997))

(assert (=> m!2911003 s!228118))

(assert (=> m!2910997 s!228118))

(declare-fun bs!470189 () Bool)

(assert (= bs!470189 (and neg-inst!1414 start!248928)))

(assert (=> bs!470189 (= true inst!1414)))

(declare-fun bs!470190 () Bool)

(declare-fun neg-inst!1415 () Bool)

(declare-fun s!228120 () Bool)

(assert (= bs!470190 (and neg-inst!1415 s!228120)))

(declare-fun res!1083721 () Bool)

(declare-fun e!1625712 () Bool)

(assert (=> bs!470190 (=> res!1083721 e!1625712)))

(assert (=> bs!470190 (= res!1083721 (not (= (list!11170 x!462656) (list!11170 x!462656))))))

(assert (=> bs!470190 (=> true e!1625712)))

(declare-fun b!2576458 () Bool)

(assert (=> b!2576458 (= e!1625712 (= (toValue!24 thiss!4369 x!462656) (toValue!24 thiss!4369 x!462656)))))

(assert (= (and bs!470190 (not res!1083721)) b!2576458))

(assert (=> m!2911003 m!2910997))

(assert (=> m!2911003 m!2910997))

(assert (=> m!2911003 s!228120))

(assert (=> m!2911003 s!228120))

(declare-fun bs!470191 () Bool)

(declare-fun s!228122 () Bool)

(assert (= bs!470191 (and neg-inst!1415 s!228122)))

(declare-fun res!1083722 () Bool)

(declare-fun e!1625713 () Bool)

(assert (=> bs!470191 (=> res!1083722 e!1625713)))

(assert (=> bs!470191 (= res!1083722 (not (= (list!11170 x!462656) (list!11170 x!462657))))))

(assert (=> bs!470191 (=> true e!1625713)))

(declare-fun b!2576459 () Bool)

(assert (=> b!2576459 (= e!1625713 (= (toValue!24 thiss!4369 x!462656) (toValue!24 thiss!4369 x!462657)))))

(assert (= (and bs!470191 (not res!1083722)) b!2576459))

(declare-fun bs!470192 () Bool)

(assert (= bs!470192 (and m!2911015 m!2911003)))

(assert (=> bs!470192 m!2910997))

(assert (=> bs!470192 m!2911007))

(assert (=> bs!470192 s!228122))

(declare-fun bs!470193 () Bool)

(declare-fun s!228124 () Bool)

(assert (= bs!470193 (and neg-inst!1415 s!228124)))

(declare-fun res!1083723 () Bool)

(declare-fun e!1625714 () Bool)

(assert (=> bs!470193 (=> res!1083723 e!1625714)))

(assert (=> bs!470193 (= res!1083723 (not (= (list!11170 x!462657) (list!11170 x!462657))))))

(assert (=> bs!470193 (=> true e!1625714)))

(declare-fun b!2576460 () Bool)

(assert (=> b!2576460 (= e!1625714 (= (toValue!24 thiss!4369 x!462657) (toValue!24 thiss!4369 x!462657)))))

(assert (= (and bs!470193 (not res!1083723)) b!2576460))

(assert (=> m!2911015 m!2911007))

(assert (=> m!2911015 m!2911007))

(assert (=> m!2911015 s!228124))

(declare-fun bs!470194 () Bool)

(declare-fun s!228126 () Bool)

(assert (= bs!470194 (and neg-inst!1415 s!228126)))

(declare-fun res!1083724 () Bool)

(declare-fun e!1625715 () Bool)

(assert (=> bs!470194 (=> res!1083724 e!1625715)))

(assert (=> bs!470194 (= res!1083724 (not (= (list!11170 x!462657) (list!11170 x!462656))))))

(assert (=> bs!470194 (=> true e!1625715)))

(declare-fun b!2576461 () Bool)

(assert (=> b!2576461 (= e!1625715 (= (toValue!24 thiss!4369 x!462657) (toValue!24 thiss!4369 x!462656)))))

(assert (= (and bs!470194 (not res!1083724)) b!2576461))

(assert (=> bs!470192 m!2911007))

(assert (=> bs!470192 m!2910997))

(assert (=> bs!470192 s!228126))

(assert (=> m!2911015 s!228124))

(declare-fun bs!470195 () Bool)

(declare-fun s!228128 () Bool)

(assert (= bs!470195 (and neg-inst!1415 s!228128)))

(declare-fun res!1083725 () Bool)

(declare-fun e!1625716 () Bool)

(assert (=> bs!470195 (=> res!1083725 e!1625716)))

(assert (=> bs!470195 (= res!1083725 (not (= (list!11170 x!462656) (list!11170 x!462658))))))

(assert (=> bs!470195 (=> true e!1625716)))

(declare-fun b!2576462 () Bool)

(assert (=> b!2576462 (= e!1625716 (= (toValue!24 thiss!4369 x!462656) (toValue!24 thiss!4369 x!462658)))))

(assert (= (and bs!470195 (not res!1083725)) b!2576462))

(declare-fun bs!470196 () Bool)

(assert (= bs!470196 (and m!2911017 m!2911003)))

(assert (=> bs!470196 m!2910997))

(assert (=> bs!470196 m!2911009))

(assert (=> bs!470196 s!228128))

(declare-fun bs!470197 () Bool)

(declare-fun s!228130 () Bool)

(assert (= bs!470197 (and neg-inst!1415 s!228130)))

(declare-fun res!1083726 () Bool)

(declare-fun e!1625717 () Bool)

(assert (=> bs!470197 (=> res!1083726 e!1625717)))

(assert (=> bs!470197 (= res!1083726 (not (= (list!11170 x!462657) (list!11170 x!462658))))))

(assert (=> bs!470197 (=> true e!1625717)))

(declare-fun b!2576463 () Bool)

(assert (=> b!2576463 (= e!1625717 (= (toValue!24 thiss!4369 x!462657) (toValue!24 thiss!4369 x!462658)))))

(assert (= (and bs!470197 (not res!1083726)) b!2576463))

(declare-fun bs!470198 () Bool)

(assert (= bs!470198 (and m!2911017 m!2911015)))

(assert (=> bs!470198 m!2911007))

(assert (=> bs!470198 m!2911009))

(assert (=> bs!470198 s!228130))

(declare-fun bs!470199 () Bool)

(declare-fun s!228132 () Bool)

(assert (= bs!470199 (and neg-inst!1415 s!228132)))

(declare-fun res!1083727 () Bool)

(declare-fun e!1625718 () Bool)

(assert (=> bs!470199 (=> res!1083727 e!1625718)))

(assert (=> bs!470199 (= res!1083727 (not (= (list!11170 x!462658) (list!11170 x!462658))))))

(assert (=> bs!470199 (=> true e!1625718)))

(declare-fun b!2576464 () Bool)

(assert (=> b!2576464 (= e!1625718 (= (toValue!24 thiss!4369 x!462658) (toValue!24 thiss!4369 x!462658)))))

(assert (= (and bs!470199 (not res!1083727)) b!2576464))

(assert (=> m!2911017 m!2911009))

(assert (=> m!2911017 m!2911009))

(assert (=> m!2911017 s!228132))

(declare-fun bs!470200 () Bool)

(declare-fun s!228134 () Bool)

(assert (= bs!470200 (and neg-inst!1415 s!228134)))

(declare-fun res!1083728 () Bool)

(declare-fun e!1625719 () Bool)

(assert (=> bs!470200 (=> res!1083728 e!1625719)))

(assert (=> bs!470200 (= res!1083728 (not (= (list!11170 x!462658) (list!11170 x!462656))))))

(assert (=> bs!470200 (=> true e!1625719)))

(declare-fun b!2576465 () Bool)

(assert (=> b!2576465 (= e!1625719 (= (toValue!24 thiss!4369 x!462658) (toValue!24 thiss!4369 x!462656)))))

(assert (= (and bs!470200 (not res!1083728)) b!2576465))

(assert (=> bs!470196 m!2911009))

(assert (=> bs!470196 m!2910997))

(assert (=> bs!470196 s!228134))

(declare-fun bs!470201 () Bool)

(declare-fun s!228136 () Bool)

(assert (= bs!470201 (and neg-inst!1415 s!228136)))

(declare-fun res!1083729 () Bool)

(declare-fun e!1625720 () Bool)

(assert (=> bs!470201 (=> res!1083729 e!1625720)))

(assert (=> bs!470201 (= res!1083729 (not (= (list!11170 x!462658) (list!11170 x!462657))))))

(assert (=> bs!470201 (=> true e!1625720)))

(declare-fun b!2576466 () Bool)

(assert (=> b!2576466 (= e!1625720 (= (toValue!24 thiss!4369 x!462658) (toValue!24 thiss!4369 x!462657)))))

(assert (= (and bs!470201 (not res!1083729)) b!2576466))

(assert (=> bs!470198 m!2911009))

(assert (=> bs!470198 m!2911007))

(assert (=> bs!470198 s!228136))

(assert (=> m!2911017 s!228132))

(declare-fun bs!470202 () Bool)

(assert (= bs!470202 (and m!2911009 m!2911003)))

(assert (=> bs!470202 s!228128))

(declare-fun bs!470203 () Bool)

(assert (= bs!470203 (and m!2911009 m!2911015)))

(assert (=> bs!470203 s!228130))

(declare-fun bs!470204 () Bool)

(assert (= bs!470204 (and m!2911009 m!2911017)))

(assert (=> bs!470204 s!228132))

(assert (=> m!2911009 s!228132))

(assert (=> bs!470202 s!228134))

(assert (=> bs!470203 s!228136))

(assert (=> bs!470204 s!228132))

(assert (=> m!2911009 s!228132))

(declare-fun bs!470205 () Bool)

(assert (= bs!470205 (and m!2910997 m!2911003)))

(assert (=> bs!470205 s!228120))

(declare-fun bs!470206 () Bool)

(assert (= bs!470206 (and m!2910997 m!2911015)))

(assert (=> bs!470206 s!228126))

(declare-fun bs!470207 () Bool)

(assert (= bs!470207 (and m!2910997 m!2911017 m!2911009)))

(assert (=> bs!470207 s!228134))

(assert (=> m!2910997 s!228120))

(assert (=> bs!470205 s!228120))

(assert (=> bs!470206 s!228122))

(assert (=> bs!470207 s!228128))

(assert (=> m!2910997 s!228120))

(declare-fun bs!470208 () Bool)

(declare-fun s!228138 () Bool)

(assert (= bs!470208 (and neg-inst!1415 s!228138)))

(declare-fun res!1083730 () Bool)

(declare-fun e!1625721 () Bool)

(assert (=> bs!470208 (=> res!1083730 e!1625721)))

(assert (=> bs!470208 (= res!1083730 (not (= (list!11170 x!462656) (list!11170 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656))))))))

(assert (=> bs!470208 (=> true e!1625721)))

(declare-fun b!2576467 () Bool)

(assert (=> b!2576467 (= e!1625721 (= (toValue!24 thiss!4369 x!462656) (toValue!24 thiss!4369 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656)))))))

(assert (= (and bs!470208 (not res!1083730)) b!2576467))

(declare-fun bs!470209 () Bool)

(assert (= bs!470209 (and m!2911001 m!2911003 m!2910997)))

(assert (=> bs!470209 m!2910997))

(assert (=> bs!470209 m!2911001))

(assert (=> bs!470209 s!228138))

(declare-fun bs!470210 () Bool)

(declare-fun s!228140 () Bool)

(assert (= bs!470210 (and neg-inst!1415 s!228140)))

(declare-fun res!1083731 () Bool)

(declare-fun e!1625722 () Bool)

(assert (=> bs!470210 (=> res!1083731 e!1625722)))

(assert (=> bs!470210 (= res!1083731 (not (= (list!11170 x!462657) (list!11170 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656))))))))

(assert (=> bs!470210 (=> true e!1625722)))

(declare-fun b!2576468 () Bool)

(assert (=> b!2576468 (= e!1625722 (= (toValue!24 thiss!4369 x!462657) (toValue!24 thiss!4369 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656)))))))

(assert (= (and bs!470210 (not res!1083731)) b!2576468))

(declare-fun bs!470211 () Bool)

(assert (= bs!470211 (and m!2911001 m!2911015)))

(assert (=> bs!470211 m!2911007))

(assert (=> bs!470211 m!2911001))

(assert (=> bs!470211 s!228140))

(declare-fun bs!470212 () Bool)

(declare-fun s!228142 () Bool)

(assert (= bs!470212 (and neg-inst!1415 s!228142)))

(declare-fun res!1083732 () Bool)

(declare-fun e!1625723 () Bool)

(assert (=> bs!470212 (=> res!1083732 e!1625723)))

(assert (=> bs!470212 (= res!1083732 (not (= (list!11170 x!462658) (list!11170 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656))))))))

(assert (=> bs!470212 (=> true e!1625723)))

(declare-fun b!2576469 () Bool)

(assert (=> b!2576469 (= e!1625723 (= (toValue!24 thiss!4369 x!462658) (toValue!24 thiss!4369 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656)))))))

(assert (= (and bs!470212 (not res!1083732)) b!2576469))

(declare-fun bs!470213 () Bool)

(assert (= bs!470213 (and m!2911001 m!2911017 m!2911009)))

(assert (=> bs!470213 m!2911009))

(assert (=> bs!470213 m!2911001))

(assert (=> bs!470213 s!228142))

(declare-fun bs!470214 () Bool)

(declare-fun s!228144 () Bool)

(assert (= bs!470214 (and neg-inst!1415 s!228144)))

(declare-fun res!1083733 () Bool)

(declare-fun e!1625724 () Bool)

(assert (=> bs!470214 (=> res!1083733 e!1625724)))

(assert (=> bs!470214 (= res!1083733 (not (= (list!11170 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656))) (list!11170 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656))))))))

(assert (=> bs!470214 (=> true e!1625724)))

(declare-fun b!2576470 () Bool)

(assert (=> b!2576470 (= e!1625724 (= (toValue!24 thiss!4369 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656))) (toValue!24 thiss!4369 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656)))))))

(assert (= (and bs!470214 (not res!1083733)) b!2576470))

(assert (=> m!2911001 s!228144))

(declare-fun bs!470215 () Bool)

(declare-fun s!228146 () Bool)

(assert (= bs!470215 (and neg-inst!1415 s!228146)))

(declare-fun res!1083734 () Bool)

(declare-fun e!1625725 () Bool)

(assert (=> bs!470215 (=> res!1083734 e!1625725)))

(assert (=> bs!470215 (= res!1083734 (not (= (list!11170 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656))) (list!11170 x!462656))))))

(assert (=> bs!470215 (=> true e!1625725)))

(declare-fun b!2576471 () Bool)

(assert (=> b!2576471 (= e!1625725 (= (toValue!24 thiss!4369 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656))) (toValue!24 thiss!4369 x!462656)))))

(assert (= (and bs!470215 (not res!1083734)) b!2576471))

(assert (=> bs!470209 m!2911001))

(assert (=> bs!470209 m!2910997))

(assert (=> bs!470209 s!228146))

(declare-fun bs!470216 () Bool)

(declare-fun s!228148 () Bool)

(assert (= bs!470216 (and neg-inst!1415 s!228148)))

(declare-fun res!1083735 () Bool)

(declare-fun e!1625726 () Bool)

(assert (=> bs!470216 (=> res!1083735 e!1625726)))

(assert (=> bs!470216 (= res!1083735 (not (= (list!11170 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656))) (list!11170 x!462657))))))

(assert (=> bs!470216 (=> true e!1625726)))

(declare-fun b!2576472 () Bool)

(assert (=> b!2576472 (= e!1625726 (= (toValue!24 thiss!4369 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656))) (toValue!24 thiss!4369 x!462657)))))

(assert (= (and bs!470216 (not res!1083735)) b!2576472))

(assert (=> bs!470211 m!2911001))

(assert (=> bs!470211 m!2911007))

(assert (=> bs!470211 s!228148))

(declare-fun bs!470217 () Bool)

(declare-fun s!228150 () Bool)

(assert (= bs!470217 (and neg-inst!1415 s!228150)))

(declare-fun res!1083736 () Bool)

(declare-fun e!1625727 () Bool)

(assert (=> bs!470217 (=> res!1083736 e!1625727)))

(assert (=> bs!470217 (= res!1083736 (not (= (list!11170 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656))) (list!11170 x!462658))))))

(assert (=> bs!470217 (=> true e!1625727)))

(declare-fun b!2576473 () Bool)

(assert (=> b!2576473 (= e!1625727 (= (toValue!24 thiss!4369 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656))) (toValue!24 thiss!4369 x!462658)))))

(assert (= (and bs!470217 (not res!1083736)) b!2576473))

(assert (=> bs!470213 m!2911001))

(assert (=> bs!470213 m!2911009))

(assert (=> bs!470213 s!228150))

(assert (=> m!2911001 s!228144))

(declare-fun bs!470218 () Bool)

(assert (= bs!470218 (and m!2911007 m!2911001)))

(assert (=> bs!470218 s!228148))

(declare-fun bs!470219 () Bool)

(assert (= bs!470219 (and m!2911007 m!2911017 m!2911009)))

(assert (=> bs!470219 s!228136))

(assert (=> m!2911007 s!228124))

(declare-fun bs!470220 () Bool)

(assert (= bs!470220 (and m!2911007 m!2911003 m!2910997)))

(assert (=> bs!470220 s!228122))

(declare-fun bs!470221 () Bool)

(assert (= bs!470221 (and m!2911007 m!2911015)))

(assert (=> bs!470221 s!228124))

(assert (=> bs!470220 s!228126))

(assert (=> m!2911007 s!228124))

(assert (=> bs!470221 s!228124))

(assert (=> bs!470219 s!228130))

(assert (=> bs!470218 s!228140))

(declare-fun bs!470222 () Bool)

(assert (= bs!470222 (and neg-inst!1415 b!2576445)))

(assert (=> bs!470222 (= true inst!1415)))

(declare-fun res!1083719 () Bool)

(declare-fun e!1625707 () Bool)

(assert (=> start!248928 (=> res!1083719 e!1625707)))

(declare-fun lambda!94892 () Int)

(declare-fun Forall!1143 (Int) Bool)

(assert (=> start!248928 (= res!1083719 (not (Forall!1143 lambda!94892)))))

(assert (=> start!248928 (= (Forall!1143 lambda!94892) inst!1414)))

(assert (=> start!248928 (not e!1625707)))

(assert (=> start!248928 true))

(declare-fun e!1625706 () Bool)

(assert (=> b!2576444 (= e!1625707 e!1625706)))

(declare-fun res!1083718 () Bool)

(assert (=> b!2576444 (=> res!1083718 e!1625706)))

(declare-fun lambda!94893 () Int)

(declare-fun lambda!94894 () Int)

(declare-fun semiInverseModEq!1863 (Int Int) Bool)

(assert (=> b!2576444 (= res!1083718 (not (semiInverseModEq!1863 lambda!94893 lambda!94894)))))

(assert (=> b!2576444 (= (semiInverseModEq!1863 lambda!94893 lambda!94894) (Forall!1143 lambda!94892))))

(declare-fun lambda!94895 () Int)

(declare-fun Forall2!748 (Int) Bool)

(assert (=> b!2576445 (= e!1625706 (Forall2!748 lambda!94895))))

(assert (=> b!2576445 (= (Forall2!748 lambda!94895) inst!1415)))

(assert (= neg-inst!1414 inst!1414))

(assert (= (and start!248928 (not res!1083719)) b!2576444))

(assert (= (and b!2576444 (not res!1083718)) b!2576445))

(assert (= neg-inst!1415 inst!1415))

(declare-fun m!2911023 () Bool)

(assert (=> start!248928 m!2911023))

(assert (=> start!248928 m!2911023))

(declare-fun m!2911025 () Bool)

(assert (=> b!2576444 m!2911025))

(assert (=> b!2576444 m!2911025))

(assert (=> b!2576444 m!2911023))

(declare-fun m!2911027 () Bool)

(assert (=> b!2576445 m!2911027))

(assert (=> b!2576445 m!2911027))

(push 1)

(assert (not bs!470210))

(assert (not bs!470197))

(assert (not b!2576470))

(assert (not bs!470212))

(assert (not bs!470208))

(assert (not b!2576472))

(assert (not b!2576465))

(assert (not b!2576467))

(assert (not b!2576463))

(assert (not b!2576444))

(assert (not b!2576445))

(assert (not bs!470201))

(assert (not bs!470188))

(assert (not b!2576457))

(assert (not start!248928))

(assert (not b!2576455))

(assert (not b!2576466))

(assert (not b!2576454))

(assert (not b!2576460))

(assert (not b!2576464))

(assert (not b!2576473))

(assert (not b!2576461))

(assert (not b!2576456))

(assert (not b!2576462))

(assert (not bs!470215))

(assert (not bs!470216))

(assert (not bs!470200))

(assert (not bs!470217))

(assert (not b!2576468))

(assert (not b!2576458))

(assert (not bs!470195))

(assert (not bs!470194))

(assert (not bs!470199))

(assert (not bs!470214))

(assert (not bs!470190))

(assert (not bs!470191))

(assert (not b!2576459))

(assert (not bs!470193))

(assert (not b!2576471))

(assert (not b!2576469))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!728670 () Bool)

(declare-fun efficientList!348 (BalanceConc!18086) List!29737)

(assert (=> d!728670 (= (toValue!24 thiss!4369 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656))) (NewLineValue!4700 (efficientList!348 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656)))))))

(declare-fun bs!470258 () Bool)

(assert (= bs!470258 d!728670))

(assert (=> bs!470258 m!2910999))

(declare-fun m!2911063 () Bool)

(assert (=> bs!470258 m!2911063))

(assert (=> b!2576473 d!728670))

(declare-fun d!728672 () Bool)

(assert (=> d!728672 (= (toValue!24 thiss!4369 x!462658) (NewLineValue!4700 (efficientList!348 x!462658)))))

(declare-fun bs!470259 () Bool)

(assert (= bs!470259 d!728672))

(declare-fun m!2911065 () Bool)

(assert (=> bs!470259 m!2911065))

(assert (=> b!2576473 d!728672))

(declare-fun d!728674 () Bool)

(declare-fun list!11172 (Conc!9236) List!29737)

(assert (=> d!728674 (= (list!11170 x!462657) (list!11172 (c!414976 x!462657)))))

(declare-fun bs!470260 () Bool)

(assert (= bs!470260 d!728674))

(declare-fun m!2911067 () Bool)

(assert (=> bs!470260 m!2911067))

(assert (=> bs!470194 d!728674))

(declare-fun d!728676 () Bool)

(assert (=> d!728676 (= (list!11170 x!462656) (list!11172 (c!414976 x!462656)))))

(declare-fun bs!470261 () Bool)

(assert (= bs!470261 d!728676))

(declare-fun m!2911069 () Bool)

(assert (=> bs!470261 m!2911069))

(assert (=> bs!470194 d!728676))

(declare-fun d!728678 () Bool)

(assert (=> d!728678 (= (list!11170 x!462658) (list!11172 (c!414976 x!462658)))))

(declare-fun bs!470262 () Bool)

(assert (= bs!470262 d!728678))

(declare-fun m!2911071 () Bool)

(assert (=> bs!470262 m!2911071))

(assert (=> bs!470199 d!728678))

(declare-fun d!728680 () Bool)

(assert (=> d!728680 (= (list!11170 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656))) (list!11172 (c!414976 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656)))))))

(declare-fun bs!470263 () Bool)

(assert (= bs!470263 d!728680))

(declare-fun m!2911073 () Bool)

(assert (=> bs!470263 m!2911073))

(assert (=> bs!470217 d!728680))

(assert (=> bs!470217 d!728678))

(declare-fun d!728682 () Bool)

(assert (=> d!728682 (= (toValue!24 thiss!4369 x!462657) (NewLineValue!4700 (efficientList!348 x!462657)))))

(declare-fun bs!470264 () Bool)

(assert (= bs!470264 d!728682))

(declare-fun m!2911075 () Bool)

(assert (=> bs!470264 m!2911075))

(assert (=> b!2576460 d!728682))

(assert (=> b!2576469 d!728672))

(assert (=> b!2576469 d!728670))

(assert (=> bs!470195 d!728676))

(assert (=> bs!470195 d!728678))

(declare-fun d!728684 () Bool)

(assert (=> d!728684 (= (toValue!24 thiss!4369 x!462656) (NewLineValue!4700 (efficientList!348 x!462656)))))

(declare-fun bs!470265 () Bool)

(assert (= bs!470265 d!728684))

(declare-fun m!2911077 () Bool)

(assert (=> bs!470265 m!2911077))

(assert (=> b!2576458 d!728684))

(assert (=> bs!470200 d!728678))

(assert (=> bs!470200 d!728676))

(assert (=> b!2576467 d!728684))

(assert (=> b!2576467 d!728670))

(assert (=> b!2576470 d!728670))

(assert (=> b!2576461 d!728682))

(assert (=> b!2576461 d!728684))

(assert (=> bs!470190 d!728676))

(assert (=> b!2576464 d!728672))

(assert (=> bs!470208 d!728676))

(assert (=> bs!470208 d!728680))

(assert (=> bs!470214 d!728680))

(assert (=> b!2576459 d!728684))

(assert (=> b!2576459 d!728682))

(assert (=> b!2576468 d!728682))

(assert (=> b!2576468 d!728670))

(assert (=> bs!470201 d!728678))

(assert (=> bs!470201 d!728674))

(assert (=> b!2576471 d!728670))

(assert (=> b!2576471 d!728684))

(assert (=> b!2576462 d!728684))

(assert (=> b!2576462 d!728672))

(assert (=> bs!470191 d!728676))

(assert (=> bs!470191 d!728674))

(assert (=> bs!470210 d!728674))

(assert (=> bs!470210 d!728680))

(assert (=> b!2576465 d!728672))

(assert (=> b!2576465 d!728684))

(assert (=> bs!470215 d!728680))

(assert (=> bs!470215 d!728676))

(assert (=> b!2576463 d!728682))

(assert (=> b!2576463 d!728672))

(assert (=> b!2576472 d!728670))

(assert (=> b!2576472 d!728682))

(assert (=> bs!470193 d!728674))

(assert (=> bs!470212 d!728678))

(assert (=> bs!470212 d!728680))

(assert (=> b!2576466 d!728672))

(assert (=> b!2576466 d!728682))

(assert (=> bs!470197 d!728674))

(assert (=> bs!470197 d!728678))

(assert (=> bs!470216 d!728680))

(assert (=> bs!470216 d!728674))

(declare-fun bs!470266 () Bool)

(assert (= bs!470266 (and m!2911003 b!2576458)))

(assert (=> bs!470266 m!2911003))

(assert (=> bs!470266 m!2911003))

(declare-fun bs!470267 () Bool)

(assert (= bs!470267 (and m!2911015 m!2911003 b!2576459)))

(assert (=> bs!470267 m!2911003))

(assert (=> bs!470267 m!2911015))

(declare-fun bs!470268 () Bool)

(assert (= bs!470268 (and m!2911015 b!2576460)))

(assert (=> bs!470268 m!2911015))

(assert (=> bs!470268 m!2911015))

(declare-fun bs!470269 () Bool)

(assert (= bs!470269 (and m!2911015 m!2911003 b!2576461)))

(assert (=> bs!470269 m!2911015))

(assert (=> bs!470269 m!2911003))

(declare-fun bs!470270 () Bool)

(assert (= bs!470270 (and m!2911017 m!2911003 b!2576462)))

(assert (=> bs!470270 m!2911003))

(assert (=> bs!470270 m!2911017))

(declare-fun bs!470271 () Bool)

(assert (= bs!470271 (and m!2911017 m!2911015 b!2576463)))

(assert (=> bs!470271 m!2911015))

(assert (=> bs!470271 m!2911017))

(declare-fun bs!470272 () Bool)

(assert (= bs!470272 (and m!2911017 b!2576464)))

(assert (=> bs!470272 m!2911017))

(assert (=> bs!470272 m!2911017))

(declare-fun bs!470273 () Bool)

(assert (= bs!470273 (and m!2911017 m!2911003 b!2576465)))

(assert (=> bs!470273 m!2911017))

(assert (=> bs!470273 m!2911003))

(declare-fun bs!470274 () Bool)

(assert (= bs!470274 (and m!2911017 m!2911015 b!2576466)))

(assert (=> bs!470274 m!2911017))

(assert (=> bs!470274 m!2911015))

(declare-fun bs!470275 () Bool)

(assert (= bs!470275 (and m!2911001 m!2911003 m!2910997 b!2576467)))

(assert (=> bs!470275 m!2911003))

(declare-fun m!2911079 () Bool)

(assert (=> bs!470275 m!2911079))

(declare-fun bs!470276 () Bool)

(assert (= bs!470276 (and m!2911001 m!2911015 b!2576468)))

(assert (=> bs!470276 m!2911015))

(assert (=> bs!470276 m!2911079))

(declare-fun bs!470277 () Bool)

(assert (= bs!470277 (and m!2911001 m!2911017 m!2911009 b!2576469)))

(assert (=> bs!470277 m!2911017))

(assert (=> bs!470277 m!2911079))

(declare-fun bs!470278 () Bool)

(assert (= bs!470278 (and m!2911001 b!2576470)))

(assert (=> bs!470278 m!2911079))

(assert (=> bs!470278 m!2911079))

(declare-fun bs!470279 () Bool)

(assert (= bs!470279 (and m!2911001 m!2911003 m!2910997 b!2576471)))

(assert (=> bs!470279 m!2911079))

(assert (=> bs!470279 m!2911003))

(declare-fun bs!470280 () Bool)

(assert (= bs!470280 (and m!2911001 m!2911015 b!2576472)))

(assert (=> bs!470280 m!2911079))

(assert (=> bs!470280 m!2911015))

(declare-fun bs!470281 () Bool)

(assert (= bs!470281 (and m!2911001 m!2911017 m!2911009 b!2576473)))

(assert (=> bs!470281 m!2911079))

(assert (=> bs!470281 m!2911017))

(push 1)

(assert (not d!728678))

(assert (not d!728672))

(assert (not b!2576454))

(assert (not b!2576456))

(assert (not d!728682))

(assert (not d!728674))

(assert (not d!728670))

(assert (not b!2576444))

(assert (not b!2576445))

(assert (not bs!470188))

(assert (not b!2576457))

(assert (not start!248928))

(assert (not b!2576455))

(assert (not d!728676))

(assert (not d!728680))

(assert (not d!728684))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!728702 () Bool)

(declare-fun lt!906663 () List!29737)

(assert (=> d!728702 (= lt!906663 (list!11170 x!462658))))

(declare-fun efficientList!350 (Conc!9236 List!29737) List!29737)

(declare-fun efficientList$default$2!120 (Conc!9236) List!29737)

(assert (=> d!728702 (= lt!906663 (efficientList!350 (c!414976 x!462658) (efficientList$default$2!120 (c!414976 x!462658))))))

(assert (=> d!728702 (= (efficientList!348 x!462658) lt!906663)))

(declare-fun bs!470306 () Bool)

(assert (= bs!470306 d!728702))

(assert (=> bs!470306 m!2911009))

(declare-fun m!2911099 () Bool)

(assert (=> bs!470306 m!2911099))

(assert (=> bs!470306 m!2911099))

(declare-fun m!2911101 () Bool)

(assert (=> bs!470306 m!2911101))

(assert (=> d!728672 d!728702))

(declare-fun b!2576531 () Bool)

(declare-fun e!1625772 () List!29737)

(declare-fun e!1625773 () List!29737)

(assert (=> b!2576531 (= e!1625772 e!1625773)))

(declare-fun c!414983 () Bool)

(assert (=> b!2576531 (= c!414983 (is-Leaf!14086 (c!414976 x!462658)))))

(declare-fun b!2576532 () Bool)

(declare-fun list!11174 (IArray!18477) List!29737)

(assert (=> b!2576532 (= e!1625773 (list!11174 (xs!12220 (c!414976 x!462658))))))

(declare-fun b!2576530 () Bool)

(assert (=> b!2576530 (= e!1625772 Nil!29637)))

(declare-fun b!2576533 () Bool)

(declare-fun ++!7285 (List!29737 List!29737) List!29737)

(assert (=> b!2576533 (= e!1625773 (++!7285 (list!11172 (left!22527 (c!414976 x!462658))) (list!11172 (right!22857 (c!414976 x!462658)))))))

(declare-fun d!728704 () Bool)

(declare-fun c!414982 () Bool)

(assert (=> d!728704 (= c!414982 (is-Empty!9236 (c!414976 x!462658)))))

(assert (=> d!728704 (= (list!11172 (c!414976 x!462658)) e!1625772)))

(assert (= (and d!728704 c!414982) b!2576530))

(assert (= (and d!728704 (not c!414982)) b!2576531))

(assert (= (and b!2576531 c!414983) b!2576532))

(assert (= (and b!2576531 (not c!414983)) b!2576533))

(declare-fun m!2911103 () Bool)

(assert (=> b!2576532 m!2911103))

(declare-fun m!2911105 () Bool)

(assert (=> b!2576533 m!2911105))

(declare-fun m!2911107 () Bool)

(assert (=> b!2576533 m!2911107))

(assert (=> b!2576533 m!2911105))

(assert (=> b!2576533 m!2911107))

(declare-fun m!2911109 () Bool)

(assert (=> b!2576533 m!2911109))

(assert (=> d!728678 d!728704))

(declare-fun d!728706 () Bool)

(declare-fun lt!906664 () List!29737)

(assert (=> d!728706 (= lt!906664 (list!11170 x!462657))))

(assert (=> d!728706 (= lt!906664 (efficientList!350 (c!414976 x!462657) (efficientList$default$2!120 (c!414976 x!462657))))))

(assert (=> d!728706 (= (efficientList!348 x!462657) lt!906664)))

(declare-fun bs!470307 () Bool)

(assert (= bs!470307 d!728706))

(assert (=> bs!470307 m!2911007))

(declare-fun m!2911111 () Bool)

(assert (=> bs!470307 m!2911111))

(assert (=> bs!470307 m!2911111))

(declare-fun m!2911113 () Bool)

(assert (=> bs!470307 m!2911113))

(assert (=> d!728682 d!728706))

(declare-fun d!728708 () Bool)

(declare-fun lt!906665 () List!29737)

(assert (=> d!728708 (= lt!906665 (list!11170 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656))))))

(assert (=> d!728708 (= lt!906665 (efficientList!350 (c!414976 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656))) (efficientList$default$2!120 (c!414976 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656))))))))

(assert (=> d!728708 (= (efficientList!348 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656))) lt!906665)))

(declare-fun bs!470308 () Bool)

(assert (= bs!470308 d!728708))

(assert (=> bs!470308 m!2910999))

(assert (=> bs!470308 m!2911001))

(declare-fun m!2911115 () Bool)

(assert (=> bs!470308 m!2911115))

(assert (=> bs!470308 m!2911115))

(declare-fun m!2911117 () Bool)

(assert (=> bs!470308 m!2911117))

(assert (=> d!728670 d!728708))

(declare-fun b!2576535 () Bool)

(declare-fun e!1625774 () List!29737)

(declare-fun e!1625775 () List!29737)

(assert (=> b!2576535 (= e!1625774 e!1625775)))

(declare-fun c!414985 () Bool)

(assert (=> b!2576535 (= c!414985 (is-Leaf!14086 (c!414976 x!462657)))))

(declare-fun b!2576536 () Bool)

(assert (=> b!2576536 (= e!1625775 (list!11174 (xs!12220 (c!414976 x!462657))))))

(declare-fun b!2576534 () Bool)

(assert (=> b!2576534 (= e!1625774 Nil!29637)))

(declare-fun b!2576537 () Bool)

(assert (=> b!2576537 (= e!1625775 (++!7285 (list!11172 (left!22527 (c!414976 x!462657))) (list!11172 (right!22857 (c!414976 x!462657)))))))

(declare-fun d!728710 () Bool)

(declare-fun c!414984 () Bool)

(assert (=> d!728710 (= c!414984 (is-Empty!9236 (c!414976 x!462657)))))

(assert (=> d!728710 (= (list!11172 (c!414976 x!462657)) e!1625774)))

(assert (= (and d!728710 c!414984) b!2576534))

(assert (= (and d!728710 (not c!414984)) b!2576535))

(assert (= (and b!2576535 c!414985) b!2576536))

(assert (= (and b!2576535 (not c!414985)) b!2576537))

(declare-fun m!2911119 () Bool)

(assert (=> b!2576536 m!2911119))

(declare-fun m!2911121 () Bool)

(assert (=> b!2576537 m!2911121))

(declare-fun m!2911123 () Bool)

(assert (=> b!2576537 m!2911123))

(assert (=> b!2576537 m!2911121))

(assert (=> b!2576537 m!2911123))

(declare-fun m!2911125 () Bool)

(assert (=> b!2576537 m!2911125))

(assert (=> d!728674 d!728710))

(declare-fun b!2576539 () Bool)

(declare-fun e!1625776 () List!29737)

(declare-fun e!1625777 () List!29737)

(assert (=> b!2576539 (= e!1625776 e!1625777)))

(declare-fun c!414987 () Bool)

(assert (=> b!2576539 (= c!414987 (is-Leaf!14086 (c!414976 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656)))))))

(declare-fun b!2576540 () Bool)

(assert (=> b!2576540 (= e!1625777 (list!11174 (xs!12220 (c!414976 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656))))))))

(declare-fun b!2576538 () Bool)

(assert (=> b!2576538 (= e!1625776 Nil!29637)))

(declare-fun b!2576541 () Bool)

(assert (=> b!2576541 (= e!1625777 (++!7285 (list!11172 (left!22527 (c!414976 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656))))) (list!11172 (right!22857 (c!414976 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656)))))))))

(declare-fun d!728712 () Bool)

(declare-fun c!414986 () Bool)

(assert (=> d!728712 (= c!414986 (is-Empty!9236 (c!414976 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656)))))))

(assert (=> d!728712 (= (list!11172 (c!414976 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656)))) e!1625776)))

(assert (= (and d!728712 c!414986) b!2576538))

(assert (= (and d!728712 (not c!414986)) b!2576539))

(assert (= (and b!2576539 c!414987) b!2576540))

(assert (= (and b!2576539 (not c!414987)) b!2576541))

(declare-fun m!2911127 () Bool)

(assert (=> b!2576540 m!2911127))

(declare-fun m!2911129 () Bool)

(assert (=> b!2576541 m!2911129))

(declare-fun m!2911131 () Bool)

(assert (=> b!2576541 m!2911131))

(assert (=> b!2576541 m!2911129))

(assert (=> b!2576541 m!2911131))

(declare-fun m!2911133 () Bool)

(assert (=> b!2576541 m!2911133))

(assert (=> d!728680 d!728712))

(declare-fun d!728714 () Bool)

(declare-fun lt!906666 () List!29737)

(assert (=> d!728714 (= lt!906666 (list!11170 x!462656))))

(assert (=> d!728714 (= lt!906666 (efficientList!350 (c!414976 x!462656) (efficientList$default$2!120 (c!414976 x!462656))))))

(assert (=> d!728714 (= (efficientList!348 x!462656) lt!906666)))

(declare-fun bs!470309 () Bool)

(assert (= bs!470309 d!728714))

(assert (=> bs!470309 m!2910997))

(declare-fun m!2911135 () Bool)

(assert (=> bs!470309 m!2911135))

(assert (=> bs!470309 m!2911135))

(declare-fun m!2911137 () Bool)

(assert (=> bs!470309 m!2911137))

(assert (=> d!728684 d!728714))

(declare-fun b!2576543 () Bool)

(declare-fun e!1625778 () List!29737)

(declare-fun e!1625779 () List!29737)

(assert (=> b!2576543 (= e!1625778 e!1625779)))

(declare-fun c!414989 () Bool)

(assert (=> b!2576543 (= c!414989 (is-Leaf!14086 (c!414976 x!462656)))))

(declare-fun b!2576544 () Bool)

(assert (=> b!2576544 (= e!1625779 (list!11174 (xs!12220 (c!414976 x!462656))))))

(declare-fun b!2576542 () Bool)

(assert (=> b!2576542 (= e!1625778 Nil!29637)))

(declare-fun b!2576545 () Bool)

(assert (=> b!2576545 (= e!1625779 (++!7285 (list!11172 (left!22527 (c!414976 x!462656))) (list!11172 (right!22857 (c!414976 x!462656)))))))

(declare-fun d!728716 () Bool)

(declare-fun c!414988 () Bool)

(assert (=> d!728716 (= c!414988 (is-Empty!9236 (c!414976 x!462656)))))

(assert (=> d!728716 (= (list!11172 (c!414976 x!462656)) e!1625778)))

(assert (= (and d!728716 c!414988) b!2576542))

(assert (= (and d!728716 (not c!414988)) b!2576543))

(assert (= (and b!2576543 c!414989) b!2576544))

(assert (= (and b!2576543 (not c!414989)) b!2576545))

(declare-fun m!2911139 () Bool)

(assert (=> b!2576544 m!2911139))

(declare-fun m!2911141 () Bool)

(assert (=> b!2576545 m!2911141))

(declare-fun m!2911143 () Bool)

(assert (=> b!2576545 m!2911143))

(assert (=> b!2576545 m!2911141))

(assert (=> b!2576545 m!2911143))

(declare-fun m!2911145 () Bool)

(assert (=> b!2576545 m!2911145))

(assert (=> d!728676 d!728716))

(push 1)

(assert (not b!2576454))

(assert (not d!728702))

(assert (not b!2576545))

(assert (not b!2576541))

(assert (not d!728706))

(assert (not b!2576532))

(assert (not d!728708))

(assert (not d!728714))

(assert (not b!2576540))

(assert (not b!2576444))

(assert (not b!2576445))

(assert (not bs!470188))

(assert (not b!2576533))

(assert (not b!2576457))

(assert (not start!248928))

(assert (not b!2576455))

(assert (not b!2576544))

(assert (not b!2576456))

(assert (not b!2576537))

(assert (not b!2576536))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!728722 () Bool)

(declare-fun c!414996 () Bool)

(assert (=> d!728722 (= c!414996 (is-Node!9236 (c!414976 x!462658)))))

(declare-fun e!1625788 () Bool)

(assert (=> d!728722 (= (inv!39888 (c!414976 x!462658)) e!1625788)))

(declare-fun b!2576560 () Bool)

(declare-fun inv!39892 (Conc!9236) Bool)

(assert (=> b!2576560 (= e!1625788 (inv!39892 (c!414976 x!462658)))))

(declare-fun b!2576561 () Bool)

(declare-fun e!1625789 () Bool)

(assert (=> b!2576561 (= e!1625788 e!1625789)))

(declare-fun res!1083780 () Bool)

(assert (=> b!2576561 (= res!1083780 (not (is-Leaf!14086 (c!414976 x!462658))))))

(assert (=> b!2576561 (=> res!1083780 e!1625789)))

(declare-fun b!2576562 () Bool)

(declare-fun inv!39893 (Conc!9236) Bool)

(assert (=> b!2576562 (= e!1625789 (inv!39893 (c!414976 x!462658)))))

(assert (= (and d!728722 c!414996) b!2576560))

(assert (= (and d!728722 (not c!414996)) b!2576561))

(assert (= (and b!2576561 (not res!1083780)) b!2576562))

(declare-fun m!2911151 () Bool)

(assert (=> b!2576560 m!2911151))

(declare-fun m!2911153 () Bool)

(assert (=> b!2576562 m!2911153))

(assert (=> b!2576457 d!728722))

(declare-fun d!728724 () Bool)

(declare-fun c!414997 () Bool)

(assert (=> d!728724 (= c!414997 (is-Node!9236 (c!414976 x!462657)))))

(declare-fun e!1625790 () Bool)

(assert (=> d!728724 (= (inv!39888 (c!414976 x!462657)) e!1625790)))

(declare-fun b!2576563 () Bool)

(assert (=> b!2576563 (= e!1625790 (inv!39892 (c!414976 x!462657)))))

(declare-fun b!2576564 () Bool)

(declare-fun e!1625791 () Bool)

(assert (=> b!2576564 (= e!1625790 e!1625791)))

(declare-fun res!1083781 () Bool)

(assert (=> b!2576564 (= res!1083781 (not (is-Leaf!14086 (c!414976 x!462657))))))

(assert (=> b!2576564 (=> res!1083781 e!1625791)))

(declare-fun b!2576565 () Bool)

(assert (=> b!2576565 (= e!1625791 (inv!39893 (c!414976 x!462657)))))

(assert (= (and d!728724 c!414997) b!2576563))

(assert (= (and d!728724 (not c!414997)) b!2576564))

(assert (= (and b!2576564 (not res!1083781)) b!2576565))

(declare-fun m!2911155 () Bool)

(assert (=> b!2576563 m!2911155))

(declare-fun m!2911157 () Bool)

(assert (=> b!2576565 m!2911157))

(assert (=> b!2576456 d!728724))

(assert (=> b!2576455 d!728682))

(assert (=> b!2576455 d!728672))

(assert (=> bs!470188 d!728680))

(declare-fun d!728726 () Bool)

(declare-fun c!415005 () Bool)

(assert (=> d!728726 (= c!415005 (is-NewLineValue!4700 (toValue!24 thiss!4369 x!462656)))))

(declare-fun e!1625798 () BalanceConc!18086)

(assert (=> d!728726 (= (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656)) e!1625798)))

(declare-fun b!2576578 () Bool)

(declare-fun seqFromList!3138 (List!29737) BalanceConc!18086)

(assert (=> b!2576578 (= e!1625798 (seqFromList!3138 (value!144893 (toValue!24 thiss!4369 x!462656))))))

(declare-fun b!2576579 () Bool)

(assert (=> b!2576579 (= e!1625798 (BalanceConc!18087 Empty!9236))))

(assert (= (and d!728726 c!415005) b!2576578))

(assert (= (and d!728726 (not c!415005)) b!2576579))

(declare-fun m!2911175 () Bool)

(assert (=> b!2576578 m!2911175))

(assert (=> bs!470188 d!728726))

(assert (=> bs!470188 d!728684))

(assert (=> bs!470188 d!728676))

(declare-fun d!728732 () Bool)

(declare-fun c!415008 () Bool)

(assert (=> d!728732 (= c!415008 (is-Node!9236 (c!414976 x!462656)))))

(declare-fun e!1625801 () Bool)

(assert (=> d!728732 (= (inv!39888 (c!414976 x!462656)) e!1625801)))

(declare-fun b!2576584 () Bool)

(assert (=> b!2576584 (= e!1625801 (inv!39892 (c!414976 x!462656)))))

(declare-fun b!2576585 () Bool)

(declare-fun e!1625802 () Bool)

(assert (=> b!2576585 (= e!1625801 e!1625802)))

(declare-fun res!1083782 () Bool)

(assert (=> b!2576585 (= res!1083782 (not (is-Leaf!14086 (c!414976 x!462656))))))

(assert (=> b!2576585 (=> res!1083782 e!1625802)))

(declare-fun b!2576586 () Bool)

(assert (=> b!2576586 (= e!1625802 (inv!39893 (c!414976 x!462656)))))

(assert (= (and d!728732 c!415008) b!2576584))

(assert (= (and d!728732 (not c!415008)) b!2576585))

(assert (= (and b!2576585 (not res!1083782)) b!2576586))

(declare-fun m!2911177 () Bool)

(assert (=> b!2576584 m!2911177))

(declare-fun m!2911179 () Bool)

(assert (=> b!2576586 m!2911179))

(assert (=> b!2576454 d!728732))

(assert (=> d!728714 d!728676))

(declare-fun bm!166667 () Bool)

(declare-fun c!415017 () Bool)

(declare-fun c!415019 () Bool)

(assert (=> bm!166667 (= c!415017 c!415019)))

(declare-fun call!166672 () List!29737)

(declare-fun e!1625811 () List!29737)

(declare-fun lt!906686 () List!29737)

(assert (=> bm!166667 (= call!166672 (++!7285 e!1625811 (ite c!415019 (efficientList$default$2!120 (c!414976 x!462656)) lt!906686)))))

(declare-fun b!2576603 () Bool)

(declare-fun lt!906687 () List!29737)

(assert (=> b!2576603 (= e!1625811 lt!906687)))

(declare-fun b!2576604 () Bool)

(declare-fun efficientList!352 (IArray!18477) List!29737)

(assert (=> b!2576604 (= e!1625811 (efficientList!352 (xs!12220 (c!414976 x!462656))))))

(declare-fun b!2576605 () Bool)

(declare-datatypes ((Unit!43485 0))(
  ( (Unit!43486) )
))
(declare-fun lt!906685 () Unit!43485)

(declare-fun lt!906683 () Unit!43485)

(assert (=> b!2576605 (= lt!906685 lt!906683)))

(assert (=> b!2576605 (= (++!7285 call!166672 (efficientList$default$2!120 (c!414976 x!462656))) (++!7285 lt!906687 (++!7285 lt!906686 (efficientList$default$2!120 (c!414976 x!462656)))))))

(declare-fun lemmaConcatAssociativity!1470 (List!29737 List!29737 List!29737) Unit!43485)

(assert (=> b!2576605 (= lt!906683 (lemmaConcatAssociativity!1470 lt!906687 lt!906686 (efficientList$default$2!120 (c!414976 x!462656))))))

(assert (=> b!2576605 (= lt!906686 (list!11172 (right!22857 (c!414976 x!462656))))))

(assert (=> b!2576605 (= lt!906687 (list!11172 (left!22527 (c!414976 x!462656))))))

(declare-fun e!1625812 () List!29737)

(assert (=> b!2576605 (= e!1625812 (efficientList!350 (left!22527 (c!414976 x!462656)) (efficientList!350 (right!22857 (c!414976 x!462656)) (efficientList$default$2!120 (c!414976 x!462656)))))))

(declare-fun b!2576606 () Bool)

(assert (=> b!2576606 (= e!1625812 call!166672)))

(declare-fun d!728734 () Bool)

(declare-fun lt!906684 () List!29737)

(assert (=> d!728734 (= lt!906684 (++!7285 (list!11172 (c!414976 x!462656)) (efficientList$default$2!120 (c!414976 x!462656))))))

(declare-fun e!1625813 () List!29737)

(assert (=> d!728734 (= lt!906684 e!1625813)))

(declare-fun c!415018 () Bool)

(assert (=> d!728734 (= c!415018 (is-Empty!9236 (c!414976 x!462656)))))

(assert (=> d!728734 (= (efficientList!350 (c!414976 x!462656) (efficientList$default$2!120 (c!414976 x!462656))) lt!906684)))

(declare-fun b!2576607 () Bool)

(assert (=> b!2576607 (= e!1625813 e!1625812)))

(assert (=> b!2576607 (= c!415019 (is-Leaf!14086 (c!414976 x!462656)))))

(declare-fun b!2576608 () Bool)

(assert (=> b!2576608 (= e!1625813 (efficientList$default$2!120 (c!414976 x!462656)))))

(assert (= (and d!728734 c!415018) b!2576608))

(assert (= (and d!728734 (not c!415018)) b!2576607))

(assert (= (and b!2576607 c!415019) b!2576606))

(assert (= (and b!2576607 (not c!415019)) b!2576605))

(assert (= (or b!2576606 b!2576605) bm!166667))

(assert (= (and bm!166667 c!415017) b!2576604))

(assert (= (and bm!166667 (not c!415017)) b!2576603))

(declare-fun m!2911209 () Bool)

(assert (=> bm!166667 m!2911209))

(declare-fun m!2911211 () Bool)

(assert (=> b!2576604 m!2911211))

(assert (=> b!2576605 m!2911135))

(declare-fun m!2911213 () Bool)

(assert (=> b!2576605 m!2911213))

(assert (=> b!2576605 m!2911213))

(declare-fun m!2911215 () Bool)

(assert (=> b!2576605 m!2911215))

(assert (=> b!2576605 m!2911135))

(declare-fun m!2911217 () Bool)

(assert (=> b!2576605 m!2911217))

(assert (=> b!2576605 m!2911135))

(declare-fun m!2911219 () Bool)

(assert (=> b!2576605 m!2911219))

(assert (=> b!2576605 m!2911135))

(declare-fun m!2911221 () Bool)

(assert (=> b!2576605 m!2911221))

(assert (=> b!2576605 m!2911143))

(assert (=> b!2576605 m!2911221))

(declare-fun m!2911223 () Bool)

(assert (=> b!2576605 m!2911223))

(assert (=> b!2576605 m!2911141))

(assert (=> d!728734 m!2911069))

(assert (=> d!728734 m!2911069))

(assert (=> d!728734 m!2911135))

(declare-fun m!2911225 () Bool)

(assert (=> d!728734 m!2911225))

(assert (=> d!728714 d!728734))

(declare-fun d!728744 () Bool)

(assert (=> d!728744 (= (efficientList$default$2!120 (c!414976 x!462656)) Nil!29637)))

(assert (=> d!728714 d!728744))

(declare-fun d!728746 () Bool)

(declare-fun choose!15194 (Int) Bool)

(assert (=> d!728746 (= (Forall2!748 lambda!94895) (choose!15194 lambda!94895))))

(declare-fun bs!470314 () Bool)

(assert (= bs!470314 d!728746))

(declare-fun m!2911227 () Bool)

(assert (=> bs!470314 m!2911227))

(assert (=> b!2576445 d!728746))

(assert (=> b!2576445 d!728678))

(assert (=> b!2576445 d!728674))

(declare-fun d!728748 () Bool)

(declare-fun isBalanced!2806 (Conc!9236) Bool)

(assert (=> d!728748 (= (inv!39889 x!462658) (isBalanced!2806 (c!414976 x!462658)))))

(declare-fun bs!470315 () Bool)

(assert (= bs!470315 d!728748))

(declare-fun m!2911229 () Bool)

(assert (=> bs!470315 m!2911229))

(assert (=> b!2576445 d!728748))

(declare-fun d!728750 () Bool)

(assert (=> d!728750 (= (inv!39889 x!462657) (isBalanced!2806 (c!414976 x!462657)))))

(declare-fun bs!470316 () Bool)

(assert (= bs!470316 d!728750))

(declare-fun m!2911231 () Bool)

(assert (=> bs!470316 m!2911231))

(assert (=> b!2576445 d!728750))

(declare-fun bs!470317 () Bool)

(declare-fun d!728752 () Bool)

(assert (= bs!470317 (and d!728752 start!248928)))

(declare-fun lambda!94920 () Int)

(assert (=> bs!470317 (not (= lambda!94920 lambda!94892))))

(assert (=> d!728752 true))

(declare-fun order!15751 () Int)

(declare-fun order!15749 () Int)

(declare-fun dynLambda!12516 (Int Int) Int)

(declare-fun dynLambda!12517 (Int Int) Int)

(assert (=> d!728752 (< (dynLambda!12516 order!15749 lambda!94893) (dynLambda!12517 order!15751 lambda!94920))))

(assert (=> d!728752 true))

(declare-fun order!15753 () Int)

(declare-fun dynLambda!12518 (Int Int) Int)

(assert (=> d!728752 (< (dynLambda!12518 order!15753 lambda!94894) (dynLambda!12517 order!15751 lambda!94920))))

(assert (=> d!728752 (= (semiInverseModEq!1863 lambda!94893 lambda!94894) (Forall!1143 lambda!94920))))

(declare-fun bs!470318 () Bool)

(assert (= bs!470318 d!728752))

(declare-fun m!2911233 () Bool)

(assert (=> bs!470318 m!2911233))

(assert (=> b!2576444 d!728752))

(declare-fun d!728754 () Bool)

(declare-fun choose!15195 (Int) Bool)

(assert (=> d!728754 (= (Forall!1143 lambda!94892) (choose!15195 lambda!94892))))

(declare-fun bs!470319 () Bool)

(assert (= bs!470319 d!728754))

(declare-fun m!2911235 () Bool)

(assert (=> bs!470319 m!2911235))

(assert (=> b!2576444 d!728754))

(assert (=> d!728702 d!728678))

(declare-fun bm!166668 () Bool)

(declare-fun c!415020 () Bool)

(declare-fun c!415022 () Bool)

(assert (=> bm!166668 (= c!415020 c!415022)))

(declare-fun e!1625814 () List!29737)

(declare-fun lt!906691 () List!29737)

(declare-fun call!166673 () List!29737)

(assert (=> bm!166668 (= call!166673 (++!7285 e!1625814 (ite c!415022 (efficientList$default$2!120 (c!414976 x!462658)) lt!906691)))))

(declare-fun b!2576613 () Bool)

(declare-fun lt!906692 () List!29737)

(assert (=> b!2576613 (= e!1625814 lt!906692)))

(declare-fun b!2576614 () Bool)

(assert (=> b!2576614 (= e!1625814 (efficientList!352 (xs!12220 (c!414976 x!462658))))))

(declare-fun b!2576615 () Bool)

(declare-fun lt!906690 () Unit!43485)

(declare-fun lt!906688 () Unit!43485)

(assert (=> b!2576615 (= lt!906690 lt!906688)))

(assert (=> b!2576615 (= (++!7285 call!166673 (efficientList$default$2!120 (c!414976 x!462658))) (++!7285 lt!906692 (++!7285 lt!906691 (efficientList$default$2!120 (c!414976 x!462658)))))))

(assert (=> b!2576615 (= lt!906688 (lemmaConcatAssociativity!1470 lt!906692 lt!906691 (efficientList$default$2!120 (c!414976 x!462658))))))

(assert (=> b!2576615 (= lt!906691 (list!11172 (right!22857 (c!414976 x!462658))))))

(assert (=> b!2576615 (= lt!906692 (list!11172 (left!22527 (c!414976 x!462658))))))

(declare-fun e!1625815 () List!29737)

(assert (=> b!2576615 (= e!1625815 (efficientList!350 (left!22527 (c!414976 x!462658)) (efficientList!350 (right!22857 (c!414976 x!462658)) (efficientList$default$2!120 (c!414976 x!462658)))))))

(declare-fun b!2576616 () Bool)

(assert (=> b!2576616 (= e!1625815 call!166673)))

(declare-fun d!728756 () Bool)

(declare-fun lt!906689 () List!29737)

(assert (=> d!728756 (= lt!906689 (++!7285 (list!11172 (c!414976 x!462658)) (efficientList$default$2!120 (c!414976 x!462658))))))

(declare-fun e!1625816 () List!29737)

(assert (=> d!728756 (= lt!906689 e!1625816)))

(declare-fun c!415021 () Bool)

(assert (=> d!728756 (= c!415021 (is-Empty!9236 (c!414976 x!462658)))))

(assert (=> d!728756 (= (efficientList!350 (c!414976 x!462658) (efficientList$default$2!120 (c!414976 x!462658))) lt!906689)))

(declare-fun b!2576617 () Bool)

(assert (=> b!2576617 (= e!1625816 e!1625815)))

(assert (=> b!2576617 (= c!415022 (is-Leaf!14086 (c!414976 x!462658)))))

(declare-fun b!2576618 () Bool)

(assert (=> b!2576618 (= e!1625816 (efficientList$default$2!120 (c!414976 x!462658)))))

(assert (= (and d!728756 c!415021) b!2576618))

(assert (= (and d!728756 (not c!415021)) b!2576617))

(assert (= (and b!2576617 c!415022) b!2576616))

(assert (= (and b!2576617 (not c!415022)) b!2576615))

(assert (= (or b!2576616 b!2576615) bm!166668))

(assert (= (and bm!166668 c!415020) b!2576614))

(assert (= (and bm!166668 (not c!415020)) b!2576613))

(declare-fun m!2911237 () Bool)

(assert (=> bm!166668 m!2911237))

(declare-fun m!2911239 () Bool)

(assert (=> b!2576614 m!2911239))

(assert (=> b!2576615 m!2911099))

(declare-fun m!2911241 () Bool)

(assert (=> b!2576615 m!2911241))

(assert (=> b!2576615 m!2911241))

(declare-fun m!2911243 () Bool)

(assert (=> b!2576615 m!2911243))

(assert (=> b!2576615 m!2911099))

(declare-fun m!2911245 () Bool)

(assert (=> b!2576615 m!2911245))

(assert (=> b!2576615 m!2911099))

(declare-fun m!2911247 () Bool)

(assert (=> b!2576615 m!2911247))

(assert (=> b!2576615 m!2911099))

(declare-fun m!2911249 () Bool)

(assert (=> b!2576615 m!2911249))

(assert (=> b!2576615 m!2911107))

(assert (=> b!2576615 m!2911249))

(declare-fun m!2911251 () Bool)

(assert (=> b!2576615 m!2911251))

(assert (=> b!2576615 m!2911105))

(assert (=> d!728756 m!2911071))

(assert (=> d!728756 m!2911071))

(assert (=> d!728756 m!2911099))

(declare-fun m!2911253 () Bool)

(assert (=> d!728756 m!2911253))

(assert (=> d!728702 d!728756))

(declare-fun d!728758 () Bool)

(assert (=> d!728758 (= (efficientList$default$2!120 (c!414976 x!462658)) Nil!29637)))

(assert (=> d!728702 d!728758))

(assert (=> d!728706 d!728674))

(declare-fun bm!166669 () Bool)

(declare-fun c!415023 () Bool)

(declare-fun c!415025 () Bool)

(assert (=> bm!166669 (= c!415023 c!415025)))

(declare-fun call!166674 () List!29737)

(declare-fun e!1625817 () List!29737)

(declare-fun lt!906696 () List!29737)

(assert (=> bm!166669 (= call!166674 (++!7285 e!1625817 (ite c!415025 (efficientList$default$2!120 (c!414976 x!462657)) lt!906696)))))

(declare-fun b!2576619 () Bool)

(declare-fun lt!906697 () List!29737)

(assert (=> b!2576619 (= e!1625817 lt!906697)))

(declare-fun b!2576620 () Bool)

(assert (=> b!2576620 (= e!1625817 (efficientList!352 (xs!12220 (c!414976 x!462657))))))

(declare-fun b!2576621 () Bool)

(declare-fun lt!906695 () Unit!43485)

(declare-fun lt!906693 () Unit!43485)

(assert (=> b!2576621 (= lt!906695 lt!906693)))

(assert (=> b!2576621 (= (++!7285 call!166674 (efficientList$default$2!120 (c!414976 x!462657))) (++!7285 lt!906697 (++!7285 lt!906696 (efficientList$default$2!120 (c!414976 x!462657)))))))

(assert (=> b!2576621 (= lt!906693 (lemmaConcatAssociativity!1470 lt!906697 lt!906696 (efficientList$default$2!120 (c!414976 x!462657))))))

(assert (=> b!2576621 (= lt!906696 (list!11172 (right!22857 (c!414976 x!462657))))))

(assert (=> b!2576621 (= lt!906697 (list!11172 (left!22527 (c!414976 x!462657))))))

(declare-fun e!1625818 () List!29737)

(assert (=> b!2576621 (= e!1625818 (efficientList!350 (left!22527 (c!414976 x!462657)) (efficientList!350 (right!22857 (c!414976 x!462657)) (efficientList$default$2!120 (c!414976 x!462657)))))))

(declare-fun b!2576622 () Bool)

(assert (=> b!2576622 (= e!1625818 call!166674)))

(declare-fun d!728760 () Bool)

(declare-fun lt!906694 () List!29737)

(assert (=> d!728760 (= lt!906694 (++!7285 (list!11172 (c!414976 x!462657)) (efficientList$default$2!120 (c!414976 x!462657))))))

(declare-fun e!1625819 () List!29737)

(assert (=> d!728760 (= lt!906694 e!1625819)))

(declare-fun c!415024 () Bool)

(assert (=> d!728760 (= c!415024 (is-Empty!9236 (c!414976 x!462657)))))

(assert (=> d!728760 (= (efficientList!350 (c!414976 x!462657) (efficientList$default$2!120 (c!414976 x!462657))) lt!906694)))

(declare-fun b!2576623 () Bool)

(assert (=> b!2576623 (= e!1625819 e!1625818)))

(assert (=> b!2576623 (= c!415025 (is-Leaf!14086 (c!414976 x!462657)))))

(declare-fun b!2576624 () Bool)

(assert (=> b!2576624 (= e!1625819 (efficientList$default$2!120 (c!414976 x!462657)))))

(assert (= (and d!728760 c!415024) b!2576624))

(assert (= (and d!728760 (not c!415024)) b!2576623))

(assert (= (and b!2576623 c!415025) b!2576622))

(assert (= (and b!2576623 (not c!415025)) b!2576621))

(assert (= (or b!2576622 b!2576621) bm!166669))

(assert (= (and bm!166669 c!415023) b!2576620))

(assert (= (and bm!166669 (not c!415023)) b!2576619))

(declare-fun m!2911255 () Bool)

(assert (=> bm!166669 m!2911255))

(declare-fun m!2911257 () Bool)

(assert (=> b!2576620 m!2911257))

(assert (=> b!2576621 m!2911111))

(declare-fun m!2911259 () Bool)

(assert (=> b!2576621 m!2911259))

(assert (=> b!2576621 m!2911259))

(declare-fun m!2911261 () Bool)

(assert (=> b!2576621 m!2911261))

(assert (=> b!2576621 m!2911111))

(declare-fun m!2911263 () Bool)

(assert (=> b!2576621 m!2911263))

(assert (=> b!2576621 m!2911111))

(declare-fun m!2911265 () Bool)

(assert (=> b!2576621 m!2911265))

(assert (=> b!2576621 m!2911111))

(declare-fun m!2911267 () Bool)

(assert (=> b!2576621 m!2911267))

(assert (=> b!2576621 m!2911123))

(assert (=> b!2576621 m!2911267))

(declare-fun m!2911269 () Bool)

(assert (=> b!2576621 m!2911269))

(assert (=> b!2576621 m!2911121))

(assert (=> d!728760 m!2911067))

(assert (=> d!728760 m!2911067))

(assert (=> d!728760 m!2911111))

(declare-fun m!2911271 () Bool)

(assert (=> d!728760 m!2911271))

(assert (=> d!728706 d!728760))

(declare-fun d!728762 () Bool)

(assert (=> d!728762 (= (efficientList$default$2!120 (c!414976 x!462657)) Nil!29637)))

(assert (=> d!728706 d!728762))

(assert (=> d!728708 d!728680))

(declare-fun bm!166670 () Bool)

(declare-fun c!415026 () Bool)

(declare-fun c!415028 () Bool)

(assert (=> bm!166670 (= c!415026 c!415028)))

(declare-fun e!1625820 () List!29737)

(declare-fun call!166675 () List!29737)

(declare-fun lt!906701 () List!29737)

(assert (=> bm!166670 (= call!166675 (++!7285 e!1625820 (ite c!415028 (efficientList$default$2!120 (c!414976 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656)))) lt!906701)))))

(declare-fun b!2576625 () Bool)

(declare-fun lt!906702 () List!29737)

(assert (=> b!2576625 (= e!1625820 lt!906702)))

(declare-fun b!2576626 () Bool)

(assert (=> b!2576626 (= e!1625820 (efficientList!352 (xs!12220 (c!414976 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656))))))))

(declare-fun b!2576627 () Bool)

(declare-fun lt!906700 () Unit!43485)

(declare-fun lt!906698 () Unit!43485)

(assert (=> b!2576627 (= lt!906700 lt!906698)))

(assert (=> b!2576627 (= (++!7285 call!166675 (efficientList$default$2!120 (c!414976 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656))))) (++!7285 lt!906702 (++!7285 lt!906701 (efficientList$default$2!120 (c!414976 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656)))))))))

(assert (=> b!2576627 (= lt!906698 (lemmaConcatAssociativity!1470 lt!906702 lt!906701 (efficientList$default$2!120 (c!414976 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656))))))))

(assert (=> b!2576627 (= lt!906701 (list!11172 (right!22857 (c!414976 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656))))))))

(assert (=> b!2576627 (= lt!906702 (list!11172 (left!22527 (c!414976 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656))))))))

(declare-fun e!1625821 () List!29737)

(assert (=> b!2576627 (= e!1625821 (efficientList!350 (left!22527 (c!414976 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656)))) (efficientList!350 (right!22857 (c!414976 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656)))) (efficientList$default$2!120 (c!414976 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656)))))))))

(declare-fun b!2576628 () Bool)

(assert (=> b!2576628 (= e!1625821 call!166675)))

(declare-fun d!728764 () Bool)

(declare-fun lt!906699 () List!29737)

(assert (=> d!728764 (= lt!906699 (++!7285 (list!11172 (c!414976 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656)))) (efficientList$default$2!120 (c!414976 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656))))))))

(declare-fun e!1625822 () List!29737)

(assert (=> d!728764 (= lt!906699 e!1625822)))

(declare-fun c!415027 () Bool)

(assert (=> d!728764 (= c!415027 (is-Empty!9236 (c!414976 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656)))))))

(assert (=> d!728764 (= (efficientList!350 (c!414976 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656))) (efficientList$default$2!120 (c!414976 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656))))) lt!906699)))

(declare-fun b!2576629 () Bool)

(assert (=> b!2576629 (= e!1625822 e!1625821)))

(assert (=> b!2576629 (= c!415028 (is-Leaf!14086 (c!414976 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656)))))))

(declare-fun b!2576630 () Bool)

(assert (=> b!2576630 (= e!1625822 (efficientList$default$2!120 (c!414976 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656)))))))

(assert (= (and d!728764 c!415027) b!2576630))

(assert (= (and d!728764 (not c!415027)) b!2576629))

(assert (= (and b!2576629 c!415028) b!2576628))

(assert (= (and b!2576629 (not c!415028)) b!2576627))

(assert (= (or b!2576628 b!2576627) bm!166670))

(assert (= (and bm!166670 c!415026) b!2576626))

(assert (= (and bm!166670 (not c!415026)) b!2576625))

(declare-fun m!2911273 () Bool)

(assert (=> bm!166670 m!2911273))

(declare-fun m!2911275 () Bool)

(assert (=> b!2576626 m!2911275))

(assert (=> b!2576627 m!2911115))

(declare-fun m!2911277 () Bool)

(assert (=> b!2576627 m!2911277))

(assert (=> b!2576627 m!2911277))

(declare-fun m!2911279 () Bool)

(assert (=> b!2576627 m!2911279))

(assert (=> b!2576627 m!2911115))

(declare-fun m!2911281 () Bool)

(assert (=> b!2576627 m!2911281))

(assert (=> b!2576627 m!2911115))

(declare-fun m!2911283 () Bool)

(assert (=> b!2576627 m!2911283))

(assert (=> b!2576627 m!2911115))

(declare-fun m!2911285 () Bool)

(assert (=> b!2576627 m!2911285))

(assert (=> b!2576627 m!2911131))

(assert (=> b!2576627 m!2911285))

(declare-fun m!2911287 () Bool)

(assert (=> b!2576627 m!2911287))

(assert (=> b!2576627 m!2911129))

(assert (=> d!728764 m!2911073))

(assert (=> d!728764 m!2911073))

(assert (=> d!728764 m!2911115))

(declare-fun m!2911289 () Bool)

(assert (=> d!728764 m!2911289))

(assert (=> d!728708 d!728764))

(declare-fun d!728766 () Bool)

(assert (=> d!728766 (= (efficientList$default$2!120 (c!414976 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462656)))) Nil!29637)))

(assert (=> d!728708 d!728766))

(assert (=> start!248928 d!728726))

(assert (=> start!248928 d!728684))

(assert (=> start!248928 d!728676))

(assert (=> start!248928 d!728680))

(assert (=> start!248928 d!728754))

(declare-fun d!728768 () Bool)

(assert (=> d!728768 (= (inv!39889 x!462656) (isBalanced!2806 (c!414976 x!462656)))))

(declare-fun bs!470320 () Bool)

(assert (= bs!470320 d!728768))

(declare-fun m!2911291 () Bool)

(assert (=> bs!470320 m!2911291))

(assert (=> start!248928 d!728768))

(declare-fun tp!818957 () Bool)

(declare-fun e!1625827 () Bool)

(declare-fun tp!818958 () Bool)

(declare-fun b!2576637 () Bool)

(assert (=> b!2576637 (= e!1625827 (and (inv!39888 (left!22527 (c!414976 x!462658))) tp!818957 (inv!39888 (right!22857 (c!414976 x!462658))) tp!818958))))

(declare-fun b!2576638 () Bool)

(declare-fun inv!39894 (IArray!18477) Bool)

(assert (=> b!2576638 (= e!1625827 (inv!39894 (xs!12220 (c!414976 x!462658))))))

(assert (=> b!2576457 (= tp!818943 (and (inv!39888 (c!414976 x!462658)) e!1625827))))

(assert (= (and b!2576457 (is-Node!9236 (c!414976 x!462658))) b!2576637))

(assert (= (and b!2576457 (is-Leaf!14086 (c!414976 x!462658))) b!2576638))

(declare-fun m!2911293 () Bool)

(assert (=> b!2576637 m!2911293))

(declare-fun m!2911295 () Bool)

(assert (=> b!2576637 m!2911295))

(declare-fun m!2911297 () Bool)

(assert (=> b!2576638 m!2911297))

(assert (=> b!2576457 m!2911021))

(declare-fun tp!818959 () Bool)

(declare-fun e!1625829 () Bool)

(declare-fun tp!818960 () Bool)

(declare-fun b!2576639 () Bool)

(assert (=> b!2576639 (= e!1625829 (and (inv!39888 (left!22527 (c!414976 x!462657))) tp!818959 (inv!39888 (right!22857 (c!414976 x!462657))) tp!818960))))

(declare-fun b!2576640 () Bool)

(assert (=> b!2576640 (= e!1625829 (inv!39894 (xs!12220 (c!414976 x!462657))))))

(assert (=> b!2576456 (= tp!818942 (and (inv!39888 (c!414976 x!462657)) e!1625829))))

(assert (= (and b!2576456 (is-Node!9236 (c!414976 x!462657))) b!2576639))

(assert (= (and b!2576456 (is-Leaf!14086 (c!414976 x!462657))) b!2576640))

(declare-fun m!2911299 () Bool)

(assert (=> b!2576639 m!2911299))

(declare-fun m!2911301 () Bool)

(assert (=> b!2576639 m!2911301))

(declare-fun m!2911303 () Bool)

(assert (=> b!2576640 m!2911303))

(assert (=> b!2576456 m!2911019))

(declare-fun tp!818961 () Bool)

(declare-fun tp!818962 () Bool)

(declare-fun e!1625831 () Bool)

(declare-fun b!2576641 () Bool)

(assert (=> b!2576641 (= e!1625831 (and (inv!39888 (left!22527 (c!414976 x!462656))) tp!818961 (inv!39888 (right!22857 (c!414976 x!462656))) tp!818962))))

(declare-fun b!2576642 () Bool)

(assert (=> b!2576642 (= e!1625831 (inv!39894 (xs!12220 (c!414976 x!462656))))))

(assert (=> b!2576454 (= tp!818941 (and (inv!39888 (c!414976 x!462656)) e!1625831))))

(assert (= (and b!2576454 (is-Node!9236 (c!414976 x!462656))) b!2576641))

(assert (= (and b!2576454 (is-Leaf!14086 (c!414976 x!462656))) b!2576642))

(declare-fun m!2911305 () Bool)

(assert (=> b!2576641 m!2911305))

(declare-fun m!2911307 () Bool)

(assert (=> b!2576641 m!2911307))

(declare-fun m!2911309 () Bool)

(assert (=> b!2576642 m!2911309))

(assert (=> b!2576454 m!2910995))

(push 1)

(assert (not b!2576578))

(assert (not d!728756))

(assert (not b!2576620))

(assert (not b!2576586))

(assert (not bm!166667))

(assert (not b!2576626))

(assert (not b!2576637))

(assert (not b!2576604))

(assert (not b!2576532))

(assert (not d!728768))

(assert (not b!2576640))

(assert (not b!2576540))

(assert (not b!2576614))

(assert (not b!2576533))

(assert (not b!2576457))

(assert (not bm!166670))

(assert (not d!728748))

(assert (not b!2576639))

(assert (not bm!166668))

(assert (not b!2576642))

(assert (not d!728734))

(assert (not d!728764))

(assert (not bm!166669))

(assert (not b!2576454))

(assert (not d!728752))

(assert (not b!2576544))

(assert (not b!2576456))

(assert (not b!2576560))

(assert (not b!2576545))

(assert (not b!2576621))

(assert (not d!728760))

(assert (not d!728754))

(assert (not b!2576536))

(assert (not b!2576627))

(assert (not b!2576537))

(assert (not b!2576615))

(assert (not b!2576541))

(assert (not d!728746))

(assert (not b!2576562))

(assert (not b!2576584))

(assert (not d!728750))

(assert (not b!2576638))

(assert (not b!2576565))

(assert (not b!2576605))

(assert (not b!2576563))

(assert (not b!2576641))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

