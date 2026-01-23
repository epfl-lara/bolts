; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!408904 () Bool)

(assert start!408904)

(assert (=> start!408904 true))

(declare-fun b!4266926 () Bool)

(assert (=> b!4266926 true))

(assert (=> b!4266926 true))

(assert (=> b!4266926 true))

(declare-fun b!4266936 () Bool)

(declare-fun e!2649275 () Bool)

(declare-datatypes ((List!47396 0))(
  ( (Nil!47272) (Cons!47272 (h!52692 (_ BitVec 16)) (t!353507 List!47396)) )
))
(declare-datatypes ((IArray!28513 0))(
  ( (IArray!28514 (innerList!14314 List!47396)) )
))
(declare-datatypes ((Conc!14254 0))(
  ( (Node!14254 (left!35054 Conc!14254) (right!35384 Conc!14254) (csize!28738 Int) (cheight!14465 Int)) (Leaf!22037 (xs!17560 IArray!28513) (csize!28739 Int)) (Empty!14254) )
))
(declare-datatypes ((BalanceConc!28018 0))(
  ( (BalanceConc!28019 (c!725458 Conc!14254)) )
))
(declare-fun x!738475 () BalanceConc!28018)

(declare-fun tp!1307557 () Bool)

(declare-fun inv!62215 (Conc!14254) Bool)

(assert (=> b!4266936 (= e!2649275 (and (inv!62215 (c!725458 x!738475)) tp!1307557))))

(declare-datatypes ((OperatorValueInjection!36 0))(
  ( (OperatorValueInjection!37) )
))
(declare-fun thiss!2520 () OperatorValueInjection!36)

(declare-fun inst!1576 () Bool)

(declare-fun inv!62216 (BalanceConc!28018) Bool)

(declare-fun list!17085 (BalanceConc!28018) List!47396)

(declare-datatypes ((TokenValue!8227 0))(
  ( (FloatLiteralValue!16454 (text!58034 List!47396)) (TokenValueExt!8226 (__x!28673 Int)) (Broken!41135 (value!248493 List!47396)) (Object!8350) (End!8227) (Def!8227) (Underscore!8227) (Match!8227) (Else!8227) (Error!8227) (Case!8227) (If!8227) (Extends!8227) (Abstract!8227) (Class!8227) (Val!8227) (DelimiterValue!16454 (del!8287 List!47396)) (KeywordValue!8233 (value!248494 List!47396)) (CommentValue!16454 (value!248495 List!47396)) (WhitespaceValue!16454 (value!248496 List!47396)) (IndentationValue!8227 (value!248497 List!47396)) (String!55158) (Int32!8227) (Broken!41136 (value!248498 List!47396)) (Boolean!8228) (Unit!66161) (OperatorValue!8230 (op!8287 List!47396)) (IdentifierValue!16454 (value!248499 List!47396)) (IdentifierValue!16455 (value!248500 List!47396)) (WhitespaceValue!16455 (value!248501 List!47396)) (True!16454) (False!16454) (Broken!41137 (value!248502 List!47396)) (Broken!41138 (value!248503 List!47396)) (True!16455) (RightBrace!8227) (RightBracket!8227) (Colon!8227) (Null!8227) (Comma!8227) (LeftBracket!8227) (False!16455) (LeftBrace!8227) (ImaginaryLiteralValue!8227 (text!58035 List!47396)) (StringLiteralValue!24681 (value!248504 List!47396)) (EOFValue!8227 (value!248505 List!47396)) (IdentValue!8227 (value!248506 List!47396)) (DelimiterValue!16455 (value!248507 List!47396)) (DedentValue!8227 (value!248508 List!47396)) (NewLineValue!8227 (value!248509 List!47396)) (IntegerValue!24681 (value!248510 (_ BitVec 32)) (text!58036 List!47396)) (IntegerValue!24682 (value!248511 Int) (text!58037 List!47396)) (Times!8227) (Or!8227) (Equal!8227) (Minus!8227) (Broken!41139 (value!248512 List!47396)) (And!8227) (Div!8227) (LessEqual!8227) (Mod!8227) (Concat!21125) (Not!8227) (Plus!8227) (SpaceValue!8227 (value!248513 List!47396)) (IntegerValue!24683 (value!248514 Int) (text!58038 List!47396)) (StringLiteralValue!24682 (text!58039 List!47396)) (FloatLiteralValue!16455 (text!58040 List!47396)) (BytesLiteralValue!8227 (value!248515 List!47396)) (CommentValue!16455 (value!248516 List!47396)) (StringLiteralValue!24683 (value!248517 List!47396)) (ErrorTokenValue!8227 (msg!8288 List!47396)) )
))
(declare-fun toCharacters!10 (OperatorValueInjection!36 TokenValue!8227) BalanceConc!28018)

(declare-fun toValue!17 (OperatorValueInjection!36 BalanceConc!28018) TokenValue!8227)

(assert (=> start!408904 (= inst!1576 (=> (and (inv!62216 x!738475) e!2649275) (= (list!17085 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738475))) (list!17085 x!738475))))))

(assert (= start!408904 b!4266936))

(declare-fun m!4858805 () Bool)

(assert (=> b!4266936 m!4858805))

(declare-fun m!4858807 () Bool)

(assert (=> start!408904 m!4858807))

(assert (=> start!408904 m!4858807))

(declare-fun m!4858809 () Bool)

(assert (=> start!408904 m!4858809))

(declare-fun m!4858811 () Bool)

(assert (=> start!408904 m!4858811))

(declare-fun m!4858813 () Bool)

(assert (=> start!408904 m!4858813))

(assert (=> start!408904 m!4858809))

(declare-fun m!4858815 () Bool)

(assert (=> start!408904 m!4858815))

(declare-fun res!1753293 () Bool)

(declare-fun e!2649277 () Bool)

(assert (=> b!4266926 (=> res!1753293 e!2649277)))

(declare-fun x!738476 () BalanceConc!28018)

(declare-fun x!738477 () BalanceConc!28018)

(assert (=> b!4266926 (= res!1753293 (not (= (list!17085 x!738476) (list!17085 x!738477))))))

(declare-fun e!2649278 () Bool)

(declare-fun e!2649276 () Bool)

(declare-fun inst!1577 () Bool)

(assert (=> b!4266926 (= inst!1577 (=> (and (inv!62216 x!738476) e!2649278 (inv!62216 x!738477) e!2649276) e!2649277))))

(declare-fun b!4266937 () Bool)

(assert (=> b!4266937 (= e!2649277 (= (toValue!17 thiss!2520 x!738476) (toValue!17 thiss!2520 x!738477)))))

(declare-fun b!4266938 () Bool)

(declare-fun tp!1307559 () Bool)

(assert (=> b!4266938 (= e!2649278 (and (inv!62215 (c!725458 x!738476)) tp!1307559))))

(declare-fun b!4266939 () Bool)

(declare-fun tp!1307558 () Bool)

(assert (=> b!4266939 (= e!2649276 (and (inv!62215 (c!725458 x!738477)) tp!1307558))))

(assert (= (and b!4266926 (not res!1753293)) b!4266937))

(assert (= b!4266926 b!4266938))

(assert (= b!4266926 b!4266939))

(declare-fun m!4858817 () Bool)

(assert (=> b!4266926 m!4858817))

(declare-fun m!4858819 () Bool)

(assert (=> b!4266926 m!4858819))

(declare-fun m!4858821 () Bool)

(assert (=> b!4266926 m!4858821))

(declare-fun m!4858823 () Bool)

(assert (=> b!4266926 m!4858823))

(declare-fun m!4858825 () Bool)

(assert (=> b!4266937 m!4858825))

(declare-fun m!4858827 () Bool)

(assert (=> b!4266937 m!4858827))

(declare-fun m!4858829 () Bool)

(assert (=> b!4266938 m!4858829))

(declare-fun m!4858831 () Bool)

(assert (=> b!4266939 m!4858831))

(declare-fun bs!599478 () Bool)

(declare-fun neg-inst!1577 () Bool)

(declare-fun s!239172 () Bool)

(assert (= bs!599478 (and neg-inst!1577 s!239172)))

(assert (=> bs!599478 (=> true (= (list!17085 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738475))) (list!17085 x!738475)))))

(assert (=> m!4858813 m!4858807))

(assert (=> m!4858813 m!4858809))

(assert (=> m!4858813 m!4858815))

(assert (=> m!4858813 s!239172))

(assert (=> m!4858807 s!239172))

(declare-fun bs!599479 () Bool)

(assert (= bs!599479 (and neg-inst!1577 start!408904)))

(assert (=> bs!599479 (= true inst!1576)))

(declare-fun bs!599480 () Bool)

(declare-fun neg-inst!1576 () Bool)

(declare-fun s!239174 () Bool)

(assert (= bs!599480 (and neg-inst!1576 s!239174)))

(declare-fun res!1753294 () Bool)

(declare-fun e!2649279 () Bool)

(assert (=> bs!599480 (=> res!1753294 e!2649279)))

(assert (=> bs!599480 (= res!1753294 (not (= (list!17085 x!738475) (list!17085 x!738475))))))

(assert (=> bs!599480 (=> true e!2649279)))

(declare-fun b!4266940 () Bool)

(assert (=> b!4266940 (= e!2649279 (= (toValue!17 thiss!2520 x!738475) (toValue!17 thiss!2520 x!738475)))))

(assert (= (and bs!599480 (not res!1753294)) b!4266940))

(assert (=> m!4858813 s!239174))

(assert (=> m!4858813 s!239174))

(declare-fun bs!599481 () Bool)

(declare-fun s!239176 () Bool)

(assert (= bs!599481 (and neg-inst!1576 s!239176)))

(declare-fun res!1753295 () Bool)

(declare-fun e!2649280 () Bool)

(assert (=> bs!599481 (=> res!1753295 e!2649280)))

(assert (=> bs!599481 (= res!1753295 (not (= (list!17085 x!738477) (list!17085 x!738475))))))

(assert (=> bs!599481 (=> true e!2649280)))

(declare-fun b!4266941 () Bool)

(assert (=> b!4266941 (= e!2649280 (= (toValue!17 thiss!2520 x!738477) (toValue!17 thiss!2520 x!738475)))))

(assert (= (and bs!599481 (not res!1753295)) b!4266941))

(declare-fun bs!599482 () Bool)

(assert (= bs!599482 (and m!4858827 m!4858813)))

(assert (=> bs!599482 m!4858819))

(assert (=> bs!599482 m!4858813))

(assert (=> bs!599482 s!239176))

(declare-fun bs!599483 () Bool)

(declare-fun s!239178 () Bool)

(assert (= bs!599483 (and neg-inst!1576 s!239178)))

(declare-fun res!1753296 () Bool)

(declare-fun e!2649281 () Bool)

(assert (=> bs!599483 (=> res!1753296 e!2649281)))

(assert (=> bs!599483 (= res!1753296 (not (= (list!17085 x!738477) (list!17085 x!738477))))))

(assert (=> bs!599483 (=> true e!2649281)))

(declare-fun b!4266942 () Bool)

(assert (=> b!4266942 (= e!2649281 (= (toValue!17 thiss!2520 x!738477) (toValue!17 thiss!2520 x!738477)))))

(assert (= (and bs!599483 (not res!1753296)) b!4266942))

(assert (=> m!4858827 m!4858819))

(assert (=> m!4858827 m!4858819))

(assert (=> m!4858827 s!239178))

(declare-fun bs!599484 () Bool)

(declare-fun s!239180 () Bool)

(assert (= bs!599484 (and neg-inst!1576 s!239180)))

(declare-fun res!1753297 () Bool)

(declare-fun e!2649282 () Bool)

(assert (=> bs!599484 (=> res!1753297 e!2649282)))

(assert (=> bs!599484 (= res!1753297 (not (= (list!17085 x!738475) (list!17085 x!738477))))))

(assert (=> bs!599484 (=> true e!2649282)))

(declare-fun b!4266943 () Bool)

(assert (=> b!4266943 (= e!2649282 (= (toValue!17 thiss!2520 x!738475) (toValue!17 thiss!2520 x!738477)))))

(assert (= (and bs!599484 (not res!1753297)) b!4266943))

(assert (=> bs!599482 m!4858813))

(assert (=> bs!599482 m!4858819))

(assert (=> bs!599482 s!239180))

(assert (=> m!4858827 s!239178))

(declare-fun bs!599485 () Bool)

(assert (= bs!599485 (and m!4858819 m!4858827)))

(assert (=> bs!599485 s!239178))

(declare-fun bs!599486 () Bool)

(assert (= bs!599486 (and m!4858819 m!4858813)))

(assert (=> bs!599486 s!239176))

(assert (=> m!4858819 s!239178))

(assert (=> bs!599485 s!239178))

(assert (=> bs!599486 s!239180))

(assert (=> m!4858819 s!239178))

(declare-fun bs!599487 () Bool)

(declare-fun s!239182 () Bool)

(assert (= bs!599487 (and neg-inst!1576 s!239182)))

(declare-fun res!1753298 () Bool)

(declare-fun e!2649283 () Bool)

(assert (=> bs!599487 (=> res!1753298 e!2649283)))

(assert (=> bs!599487 (= res!1753298 (not (= (list!17085 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738475))) (list!17085 x!738477))))))

(assert (=> bs!599487 (=> true e!2649283)))

(declare-fun b!4266944 () Bool)

(assert (=> b!4266944 (= e!2649283 (= (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738475))) (toValue!17 thiss!2520 x!738477)))))

(assert (= (and bs!599487 (not res!1753298)) b!4266944))

(declare-fun bs!599488 () Bool)

(assert (= bs!599488 (and m!4858815 m!4858827 m!4858819)))

(assert (=> bs!599488 m!4858815))

(assert (=> bs!599488 m!4858819))

(assert (=> bs!599488 s!239182))

(declare-fun bs!599489 () Bool)

(declare-fun s!239184 () Bool)

(assert (= bs!599489 (and neg-inst!1576 s!239184)))

(declare-fun res!1753299 () Bool)

(declare-fun e!2649284 () Bool)

(assert (=> bs!599489 (=> res!1753299 e!2649284)))

(assert (=> bs!599489 (= res!1753299 (not (= (list!17085 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738475))) (list!17085 x!738475))))))

(assert (=> bs!599489 (=> true e!2649284)))

(declare-fun b!4266945 () Bool)

(assert (=> b!4266945 (= e!2649284 (= (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738475))) (toValue!17 thiss!2520 x!738475)))))

(assert (= (and bs!599489 (not res!1753299)) b!4266945))

(declare-fun bs!599490 () Bool)

(assert (= bs!599490 (and m!4858815 m!4858813)))

(assert (=> bs!599490 m!4858815))

(assert (=> bs!599490 m!4858813))

(assert (=> bs!599490 s!239184))

(declare-fun bs!599491 () Bool)

(declare-fun s!239186 () Bool)

(assert (= bs!599491 (and neg-inst!1576 s!239186)))

(declare-fun res!1753300 () Bool)

(declare-fun e!2649285 () Bool)

(assert (=> bs!599491 (=> res!1753300 e!2649285)))

(assert (=> bs!599491 (= res!1753300 (not (= (list!17085 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738475))) (list!17085 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738475))))))))

(assert (=> bs!599491 (=> true e!2649285)))

(declare-fun b!4266946 () Bool)

(assert (=> b!4266946 (= e!2649285 (= (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738475))) (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738475)))))))

(assert (= (and bs!599491 (not res!1753300)) b!4266946))

(assert (=> m!4858815 s!239186))

(declare-fun bs!599492 () Bool)

(declare-fun s!239188 () Bool)

(assert (= bs!599492 (and neg-inst!1576 s!239188)))

(declare-fun res!1753301 () Bool)

(declare-fun e!2649286 () Bool)

(assert (=> bs!599492 (=> res!1753301 e!2649286)))

(assert (=> bs!599492 (= res!1753301 (not (= (list!17085 x!738477) (list!17085 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738475))))))))

(assert (=> bs!599492 (=> true e!2649286)))

(declare-fun b!4266947 () Bool)

(assert (=> b!4266947 (= e!2649286 (= (toValue!17 thiss!2520 x!738477) (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738475)))))))

(assert (= (and bs!599492 (not res!1753301)) b!4266947))

(assert (=> bs!599488 m!4858819))

(assert (=> bs!599488 m!4858815))

(assert (=> bs!599488 s!239188))

(declare-fun bs!599493 () Bool)

(declare-fun s!239190 () Bool)

(assert (= bs!599493 (and neg-inst!1576 s!239190)))

(declare-fun res!1753302 () Bool)

(declare-fun e!2649287 () Bool)

(assert (=> bs!599493 (=> res!1753302 e!2649287)))

(assert (=> bs!599493 (= res!1753302 (not (= (list!17085 x!738475) (list!17085 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738475))))))))

(assert (=> bs!599493 (=> true e!2649287)))

(declare-fun b!4266948 () Bool)

(assert (=> b!4266948 (= e!2649287 (= (toValue!17 thiss!2520 x!738475) (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738475)))))))

(assert (= (and bs!599493 (not res!1753302)) b!4266948))

(assert (=> bs!599490 m!4858813))

(assert (=> bs!599490 m!4858815))

(assert (=> bs!599490 s!239190))

(assert (=> m!4858815 s!239186))

(declare-fun bs!599494 () Bool)

(assert (= bs!599494 (and m!4858807 m!4858827 m!4858819)))

(assert (=> bs!599494 s!239180))

(declare-fun bs!599495 () Bool)

(assert (= bs!599495 (and m!4858807 m!4858815)))

(assert (=> bs!599495 s!239190))

(declare-fun bs!599496 () Bool)

(assert (= bs!599496 (and m!4858807 m!4858813)))

(assert (=> bs!599496 s!239174))

(assert (=> m!4858807 s!239174))

(assert (=> bs!599494 s!239176))

(assert (=> bs!599495 s!239184))

(assert (=> bs!599496 s!239174))

(assert (=> m!4858807 s!239174))

(declare-fun bs!599497 () Bool)

(declare-fun s!239192 () Bool)

(assert (= bs!599497 (and neg-inst!1576 s!239192)))

(declare-fun res!1753303 () Bool)

(declare-fun e!2649288 () Bool)

(assert (=> bs!599497 (=> res!1753303 e!2649288)))

(assert (=> bs!599497 (= res!1753303 (not (= (list!17085 x!738476) (list!17085 x!738477))))))

(assert (=> bs!599497 (=> true e!2649288)))

(declare-fun b!4266949 () Bool)

(assert (=> b!4266949 (= e!2649288 (= (toValue!17 thiss!2520 x!738476) (toValue!17 thiss!2520 x!738477)))))

(assert (= (and bs!599497 (not res!1753303)) b!4266949))

(declare-fun bs!599498 () Bool)

(assert (= bs!599498 (and m!4858817 m!4858827 m!4858819)))

(assert (=> bs!599498 m!4858817))

(assert (=> bs!599498 m!4858819))

(assert (=> bs!599498 s!239192))

(declare-fun bs!599499 () Bool)

(declare-fun s!239194 () Bool)

(assert (= bs!599499 (and neg-inst!1576 s!239194)))

(declare-fun res!1753304 () Bool)

(declare-fun e!2649289 () Bool)

(assert (=> bs!599499 (=> res!1753304 e!2649289)))

(assert (=> bs!599499 (= res!1753304 (not (= (list!17085 x!738476) (list!17085 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738475))))))))

(assert (=> bs!599499 (=> true e!2649289)))

(declare-fun b!4266950 () Bool)

(assert (=> b!4266950 (= e!2649289 (= (toValue!17 thiss!2520 x!738476) (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738475)))))))

(assert (= (and bs!599499 (not res!1753304)) b!4266950))

(declare-fun bs!599500 () Bool)

(assert (= bs!599500 (and m!4858817 m!4858815)))

(assert (=> bs!599500 m!4858817))

(assert (=> bs!599500 m!4858815))

(assert (=> bs!599500 s!239194))

(declare-fun bs!599501 () Bool)

(declare-fun s!239196 () Bool)

(assert (= bs!599501 (and neg-inst!1576 s!239196)))

(declare-fun res!1753305 () Bool)

(declare-fun e!2649290 () Bool)

(assert (=> bs!599501 (=> res!1753305 e!2649290)))

(assert (=> bs!599501 (= res!1753305 (not (= (list!17085 x!738476) (list!17085 x!738475))))))

(assert (=> bs!599501 (=> true e!2649290)))

(declare-fun b!4266951 () Bool)

(assert (=> b!4266951 (= e!2649290 (= (toValue!17 thiss!2520 x!738476) (toValue!17 thiss!2520 x!738475)))))

(assert (= (and bs!599501 (not res!1753305)) b!4266951))

(declare-fun bs!599502 () Bool)

(assert (= bs!599502 (and m!4858817 m!4858813 m!4858807)))

(assert (=> bs!599502 m!4858817))

(assert (=> bs!599502 m!4858813))

(assert (=> bs!599502 s!239196))

(declare-fun bs!599503 () Bool)

(declare-fun s!239198 () Bool)

(assert (= bs!599503 (and neg-inst!1576 s!239198)))

(declare-fun res!1753306 () Bool)

(declare-fun e!2649291 () Bool)

(assert (=> bs!599503 (=> res!1753306 e!2649291)))

(assert (=> bs!599503 (= res!1753306 (not (= (list!17085 x!738476) (list!17085 x!738476))))))

(assert (=> bs!599503 (=> true e!2649291)))

(declare-fun b!4266952 () Bool)

(assert (=> b!4266952 (= e!2649291 (= (toValue!17 thiss!2520 x!738476) (toValue!17 thiss!2520 x!738476)))))

(assert (= (and bs!599503 (not res!1753306)) b!4266952))

(assert (=> m!4858817 s!239198))

(declare-fun bs!599504 () Bool)

(declare-fun s!239200 () Bool)

(assert (= bs!599504 (and neg-inst!1576 s!239200)))

(declare-fun res!1753307 () Bool)

(declare-fun e!2649292 () Bool)

(assert (=> bs!599504 (=> res!1753307 e!2649292)))

(assert (=> bs!599504 (= res!1753307 (not (= (list!17085 x!738477) (list!17085 x!738476))))))

(assert (=> bs!599504 (=> true e!2649292)))

(declare-fun b!4266953 () Bool)

(assert (=> b!4266953 (= e!2649292 (= (toValue!17 thiss!2520 x!738477) (toValue!17 thiss!2520 x!738476)))))

(assert (= (and bs!599504 (not res!1753307)) b!4266953))

(assert (=> bs!599498 m!4858819))

(assert (=> bs!599498 m!4858817))

(assert (=> bs!599498 s!239200))

(declare-fun bs!599505 () Bool)

(declare-fun s!239202 () Bool)

(assert (= bs!599505 (and neg-inst!1576 s!239202)))

(declare-fun res!1753308 () Bool)

(declare-fun e!2649293 () Bool)

(assert (=> bs!599505 (=> res!1753308 e!2649293)))

(assert (=> bs!599505 (= res!1753308 (not (= (list!17085 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738475))) (list!17085 x!738476))))))

(assert (=> bs!599505 (=> true e!2649293)))

(declare-fun b!4266954 () Bool)

(assert (=> b!4266954 (= e!2649293 (= (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738475))) (toValue!17 thiss!2520 x!738476)))))

(assert (= (and bs!599505 (not res!1753308)) b!4266954))

(assert (=> bs!599500 m!4858815))

(assert (=> bs!599500 m!4858817))

(assert (=> bs!599500 s!239202))

(declare-fun bs!599506 () Bool)

(declare-fun s!239204 () Bool)

(assert (= bs!599506 (and neg-inst!1576 s!239204)))

(declare-fun res!1753309 () Bool)

(declare-fun e!2649294 () Bool)

(assert (=> bs!599506 (=> res!1753309 e!2649294)))

(assert (=> bs!599506 (= res!1753309 (not (= (list!17085 x!738475) (list!17085 x!738476))))))

(assert (=> bs!599506 (=> true e!2649294)))

(declare-fun b!4266955 () Bool)

(assert (=> b!4266955 (= e!2649294 (= (toValue!17 thiss!2520 x!738475) (toValue!17 thiss!2520 x!738476)))))

(assert (= (and bs!599506 (not res!1753309)) b!4266955))

(assert (=> bs!599502 m!4858813))

(assert (=> bs!599502 m!4858817))

(assert (=> bs!599502 s!239204))

(assert (=> m!4858817 s!239198))

(declare-fun bs!599507 () Bool)

(assert (= bs!599507 (and m!4858825 m!4858817)))

(assert (=> bs!599507 s!239198))

(declare-fun bs!599508 () Bool)

(assert (= bs!599508 (and m!4858825 m!4858815)))

(assert (=> bs!599508 s!239194))

(declare-fun bs!599509 () Bool)

(assert (= bs!599509 (and m!4858825 m!4858813 m!4858807)))

(assert (=> bs!599509 s!239196))

(assert (=> m!4858825 s!239198))

(declare-fun bs!599510 () Bool)

(assert (= bs!599510 (and m!4858825 m!4858827 m!4858819)))

(assert (=> bs!599510 s!239192))

(assert (=> bs!599507 s!239198))

(assert (=> bs!599509 s!239204))

(assert (=> bs!599510 s!239200))

(assert (=> bs!599508 s!239202))

(assert (=> m!4858825 s!239198))

(declare-fun bs!599511 () Bool)

(assert (= bs!599511 (and neg-inst!1576 b!4266926)))

(assert (=> bs!599511 (= true inst!1577)))

(declare-fun res!1753292 () Bool)

(declare-fun e!2649274 () Bool)

(assert (=> start!408904 (=> res!1753292 e!2649274)))

(declare-fun lambda!130366 () Int)

(declare-fun Forall!1611 (Int) Bool)

(assert (=> start!408904 (= res!1753292 (not (Forall!1611 lambda!130366)))))

(assert (=> start!408904 (= (Forall!1611 lambda!130366) inst!1576)))

(assert (=> start!408904 (not e!2649274)))

(assert (=> start!408904 true))

(declare-fun e!2649273 () Bool)

(assert (=> b!4266926 (= e!2649274 e!2649273)))

(declare-fun res!1753291 () Bool)

(assert (=> b!4266926 (=> res!1753291 e!2649273)))

(declare-fun lambda!130369 () Int)

(declare-fun Forall2!1208 (Int) Bool)

(assert (=> b!4266926 (= res!1753291 (not (Forall2!1208 lambda!130369)))))

(assert (=> b!4266926 (= (Forall2!1208 lambda!130369) inst!1577)))

(declare-fun lambda!130367 () Int)

(declare-fun lambda!130368 () Int)

(declare-fun semiInverseModEq!3493 (Int Int) Bool)

(assert (=> b!4266926 (= (semiInverseModEq!3493 lambda!130367 lambda!130368) (Forall!1611 lambda!130366))))

(declare-fun b!4266927 () Bool)

(declare-datatypes ((TokenValueInjection!15874 0))(
  ( (TokenValueInjection!15875 (toValue!10771 Int) (toChars!10630 Int)) )
))
(declare-fun inv!62217 (TokenValueInjection!15874) Bool)

(assert (=> b!4266927 (= e!2649273 (inv!62217 (TokenValueInjection!15875 lambda!130368 lambda!130367)))))

(declare-fun equivClasses!3390 (Int Int) Bool)

(assert (=> b!4266927 (= (equivClasses!3390 lambda!130367 lambda!130368) (Forall2!1208 lambda!130369))))

(assert (= neg-inst!1577 inst!1576))

(assert (= (and start!408904 (not res!1753292)) b!4266926))

(assert (= neg-inst!1576 inst!1577))

(assert (= (and b!4266926 (not res!1753291)) b!4266927))

(declare-fun m!4858833 () Bool)

(assert (=> start!408904 m!4858833))

(assert (=> start!408904 m!4858833))

(declare-fun m!4858835 () Bool)

(assert (=> b!4266926 m!4858835))

(assert (=> b!4266926 m!4858835))

(declare-fun m!4858837 () Bool)

(assert (=> b!4266926 m!4858837))

(assert (=> b!4266926 m!4858833))

(declare-fun m!4858839 () Bool)

(assert (=> b!4266927 m!4858839))

(declare-fun m!4858841 () Bool)

(assert (=> b!4266927 m!4858841))

(assert (=> b!4266927 m!4858835))

(push 1)

(assert (not bs!599506))

(assert (not b!4266953))

(assert (not b!4266942))

(assert (not b!4266937))

(assert (not b!4266948))

(assert (not bs!599478))

(assert (not bs!599481))

(assert (not bs!599499))

(assert (not b!4266950))

(assert (not b!4266938))

(assert (not bs!599483))

(assert (not b!4266944))

(assert (not bs!599505))

(assert (not bs!599493))

(assert (not b!4266926))

(assert (not b!4266952))

(assert (not bs!599503))

(assert (not bs!599501))

(assert (not bs!599497))

(assert (not b!4266946))

(assert (not bs!599489))

(assert (not bs!599492))

(assert (not b!4266936))

(assert (not bs!599480))

(assert (not bs!599487))

(assert (not b!4266947))

(assert (not b!4266955))

(assert (not b!4266941))

(assert (not bs!599484))

(assert (not b!4266940))

(assert (not start!408904))

(assert (not b!4266939))

(assert (not b!4266927))

(assert (not bs!599504))

(assert (not b!4266943))

(assert (not b!4266951))

(assert (not b!4266945))

(assert (not b!4266949))

(assert (not bs!599491))

(assert (not b!4266954))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!599548 () Bool)

(assert (= bs!599548 (and m!4858813 b!4266940)))

(assert (=> bs!599548 m!4858807))

(assert (=> bs!599548 m!4858807))

(declare-fun bs!599549 () Bool)

(assert (= bs!599549 (and m!4858827 m!4858813 b!4266941)))

(assert (=> bs!599549 m!4858827))

(assert (=> bs!599549 m!4858807))

(declare-fun bs!599550 () Bool)

(assert (= bs!599550 (and m!4858827 b!4266942)))

(assert (=> bs!599550 m!4858827))

(assert (=> bs!599550 m!4858827))

(declare-fun bs!599551 () Bool)

(assert (= bs!599551 (and m!4858827 m!4858813 b!4266943)))

(assert (=> bs!599551 m!4858807))

(assert (=> bs!599551 m!4858827))

(declare-fun bs!599552 () Bool)

(assert (= bs!599552 (and m!4858815 m!4858827 m!4858819 b!4266944)))

(declare-fun m!4858881 () Bool)

(assert (=> bs!599552 m!4858881))

(assert (=> bs!599552 m!4858827))

(declare-fun bs!599553 () Bool)

(assert (= bs!599553 (and m!4858815 m!4858813 b!4266945)))

(assert (=> bs!599553 m!4858881))

(assert (=> bs!599553 m!4858807))

(declare-fun bs!599554 () Bool)

(assert (= bs!599554 (and m!4858815 b!4266946)))

(assert (=> bs!599554 m!4858881))

(assert (=> bs!599554 m!4858881))

(declare-fun bs!599555 () Bool)

(assert (= bs!599555 (and m!4858815 m!4858827 m!4858819 b!4266947)))

(assert (=> bs!599555 m!4858827))

(assert (=> bs!599555 m!4858881))

(declare-fun bs!599556 () Bool)

(assert (= bs!599556 (and m!4858815 m!4858813 b!4266948)))

(assert (=> bs!599556 m!4858807))

(assert (=> bs!599556 m!4858881))

(declare-fun bs!599557 () Bool)

(assert (= bs!599557 (and m!4858817 m!4858827 m!4858819 b!4266949)))

(assert (=> bs!599557 m!4858825))

(assert (=> bs!599557 m!4858827))

(declare-fun bs!599558 () Bool)

(assert (= bs!599558 (and m!4858817 m!4858815 b!4266950)))

(assert (=> bs!599558 m!4858825))

(assert (=> bs!599558 m!4858881))

(declare-fun bs!599559 () Bool)

(assert (= bs!599559 (and m!4858817 m!4858813 m!4858807 b!4266951)))

(assert (=> bs!599559 m!4858825))

(assert (=> bs!599559 m!4858807))

(declare-fun bs!599560 () Bool)

(assert (= bs!599560 (and m!4858817 b!4266952)))

(assert (=> bs!599560 m!4858825))

(assert (=> bs!599560 m!4858825))

(declare-fun bs!599561 () Bool)

(assert (= bs!599561 (and m!4858817 m!4858827 m!4858819 b!4266953)))

(assert (=> bs!599561 m!4858827))

(assert (=> bs!599561 m!4858825))

(declare-fun bs!599562 () Bool)

(assert (= bs!599562 (and m!4858817 m!4858815 b!4266954)))

(assert (=> bs!599562 m!4858881))

(assert (=> bs!599562 m!4858825))

(declare-fun bs!599563 () Bool)

(assert (= bs!599563 (and m!4858817 m!4858813 m!4858807 b!4266955)))

(assert (=> bs!599563 m!4858807))

(assert (=> bs!599563 m!4858825))

(push 1)

(assert (not bs!599506))

(assert (not b!4266953))

(assert (not b!4266942))

(assert (not b!4266937))

(assert (not b!4266948))

(assert (not bs!599478))

(assert (not bs!599481))

(assert (not bs!599499))

(assert (not b!4266950))

(assert (not b!4266938))

(assert (not bs!599483))

(assert (not b!4266944))

(assert (not bs!599505))

(assert (not bs!599493))

(assert (not b!4266926))

(assert (not b!4266952))

(assert (not bs!599503))

(assert (not bs!599501))

(assert (not bs!599497))

(assert (not b!4266946))

(assert (not bs!599489))

(assert (not bs!599492))

(assert (not b!4266936))

(assert (not bs!599480))

(assert (not bs!599487))

(assert (not b!4266947))

(assert (not b!4266955))

(assert (not b!4266941))

(assert (not bs!599484))

(assert (not b!4266940))

(assert (not start!408904))

(assert (not b!4266939))

(assert (not b!4266927))

(assert (not bs!599504))

(assert (not b!4266943))

(assert (not b!4266951))

(assert (not b!4266945))

(assert (not b!4266949))

(assert (not bs!599491))

(assert (not b!4266954))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1257839 () Bool)

(declare-fun list!17088 (Conc!14254) List!47396)

(assert (=> d!1257839 (= (list!17085 x!738476) (list!17088 (c!725458 x!738476)))))

(declare-fun bs!599584 () Bool)

(assert (= bs!599584 d!1257839))

(declare-fun m!4858893 () Bool)

(assert (=> bs!599584 m!4858893))

(assert (=> bs!599497 d!1257839))

(declare-fun d!1257841 () Bool)

(assert (=> d!1257841 (= (list!17085 x!738477) (list!17088 (c!725458 x!738477)))))

(declare-fun bs!599585 () Bool)

(assert (= bs!599585 d!1257841))

(declare-fun m!4858895 () Bool)

(assert (=> bs!599585 m!4858895))

(assert (=> bs!599497 d!1257841))

(declare-fun d!1257843 () Bool)

(assert (=> d!1257843 (= (list!17085 x!738475) (list!17088 (c!725458 x!738475)))))

(declare-fun bs!599586 () Bool)

(assert (= bs!599586 d!1257843))

(declare-fun m!4858897 () Bool)

(assert (=> bs!599586 m!4858897))

(assert (=> bs!599484 d!1257843))

(assert (=> bs!599484 d!1257841))

(assert (=> bs!599503 d!1257839))

(declare-fun d!1257845 () Bool)

(declare-fun c!725462 () Bool)

(assert (=> d!1257845 (= c!725462 (is-Node!14254 (c!725458 x!738476)))))

(declare-fun e!2649341 () Bool)

(assert (=> d!1257845 (= (inv!62215 (c!725458 x!738476)) e!2649341)))

(declare-fun b!4267012 () Bool)

(declare-fun inv!62221 (Conc!14254) Bool)

(assert (=> b!4267012 (= e!2649341 (inv!62221 (c!725458 x!738476)))))

(declare-fun b!4267013 () Bool)

(declare-fun e!2649342 () Bool)

(assert (=> b!4267013 (= e!2649341 e!2649342)))

(declare-fun res!1753351 () Bool)

(assert (=> b!4267013 (= res!1753351 (not (is-Leaf!22037 (c!725458 x!738476))))))

(assert (=> b!4267013 (=> res!1753351 e!2649342)))

(declare-fun b!4267014 () Bool)

(declare-fun inv!62222 (Conc!14254) Bool)

(assert (=> b!4267014 (= e!2649342 (inv!62222 (c!725458 x!738476)))))

(assert (= (and d!1257845 c!725462) b!4267012))

(assert (= (and d!1257845 (not c!725462)) b!4267013))

(assert (= (and b!4267013 (not res!1753351)) b!4267014))

(declare-fun m!4858899 () Bool)

(assert (=> b!4267012 m!4858899))

(declare-fun m!4858901 () Bool)

(assert (=> b!4267014 m!4858901))

(assert (=> b!4266938 d!1257845))

(declare-fun d!1257847 () Bool)

(declare-fun lt!1511986 () List!47396)

(declare-fun efficientList!431 (BalanceConc!28018) List!47396)

(assert (=> d!1257847 (= lt!1511986 (efficientList!431 x!738475))))

(assert (=> d!1257847 (= (toValue!17 thiss!2520 x!738475) (ite (= lt!1511986 (Cons!47272 #x002B Nil!47272)) Plus!8227 (ite (= lt!1511986 (Cons!47272 #x002D Nil!47272)) Minus!8227 (ite (= lt!1511986 (Cons!47272 #x002A Nil!47272)) Times!8227 (ite (= lt!1511986 (Cons!47272 #x002F Nil!47272)) Div!8227 (ite (= lt!1511986 (Cons!47272 #x0025 Nil!47272)) Mod!8227 (ite (= lt!1511986 (Cons!47272 #x0021 Nil!47272)) Not!8227 (ite (= lt!1511986 (Cons!47272 #x003D Nil!47272)) Equal!8227 (ite (= lt!1511986 (Cons!47272 #x003C (Cons!47272 #x003D Nil!47272))) LessEqual!8227 (ite (= lt!1511986 (Cons!47272 #x0026 (Cons!47272 #x0026 Nil!47272))) And!8227 (ite (= lt!1511986 (Cons!47272 #x007C (Cons!47272 #x007C Nil!47272))) Or!8227 (ite (= lt!1511986 (Cons!47272 #x002B (Cons!47272 #x002B Nil!47272))) Concat!21125 (Broken!41139 lt!1511986)))))))))))))))

(declare-fun bs!599587 () Bool)

(assert (= bs!599587 d!1257847))

(declare-fun m!4858903 () Bool)

(assert (=> bs!599587 m!4858903))

(assert (=> b!4266955 d!1257847))

(declare-fun d!1257849 () Bool)

(declare-fun lt!1511987 () List!47396)

(assert (=> d!1257849 (= lt!1511987 (efficientList!431 x!738476))))

(assert (=> d!1257849 (= (toValue!17 thiss!2520 x!738476) (ite (= lt!1511987 (Cons!47272 #x002B Nil!47272)) Plus!8227 (ite (= lt!1511987 (Cons!47272 #x002D Nil!47272)) Minus!8227 (ite (= lt!1511987 (Cons!47272 #x002A Nil!47272)) Times!8227 (ite (= lt!1511987 (Cons!47272 #x002F Nil!47272)) Div!8227 (ite (= lt!1511987 (Cons!47272 #x0025 Nil!47272)) Mod!8227 (ite (= lt!1511987 (Cons!47272 #x0021 Nil!47272)) Not!8227 (ite (= lt!1511987 (Cons!47272 #x003D Nil!47272)) Equal!8227 (ite (= lt!1511987 (Cons!47272 #x003C (Cons!47272 #x003D Nil!47272))) LessEqual!8227 (ite (= lt!1511987 (Cons!47272 #x0026 (Cons!47272 #x0026 Nil!47272))) And!8227 (ite (= lt!1511987 (Cons!47272 #x007C (Cons!47272 #x007C Nil!47272))) Or!8227 (ite (= lt!1511987 (Cons!47272 #x002B (Cons!47272 #x002B Nil!47272))) Concat!21125 (Broken!41139 lt!1511987)))))))))))))))

(declare-fun bs!599588 () Bool)

(assert (= bs!599588 d!1257849))

(declare-fun m!4858905 () Bool)

(assert (=> bs!599588 m!4858905))

(assert (=> b!4266955 d!1257849))

(assert (=> b!4266937 d!1257849))

(declare-fun d!1257851 () Bool)

(declare-fun lt!1511988 () List!47396)

(assert (=> d!1257851 (= lt!1511988 (efficientList!431 x!738477))))

(assert (=> d!1257851 (= (toValue!17 thiss!2520 x!738477) (ite (= lt!1511988 (Cons!47272 #x002B Nil!47272)) Plus!8227 (ite (= lt!1511988 (Cons!47272 #x002D Nil!47272)) Minus!8227 (ite (= lt!1511988 (Cons!47272 #x002A Nil!47272)) Times!8227 (ite (= lt!1511988 (Cons!47272 #x002F Nil!47272)) Div!8227 (ite (= lt!1511988 (Cons!47272 #x0025 Nil!47272)) Mod!8227 (ite (= lt!1511988 (Cons!47272 #x0021 Nil!47272)) Not!8227 (ite (= lt!1511988 (Cons!47272 #x003D Nil!47272)) Equal!8227 (ite (= lt!1511988 (Cons!47272 #x003C (Cons!47272 #x003D Nil!47272))) LessEqual!8227 (ite (= lt!1511988 (Cons!47272 #x0026 (Cons!47272 #x0026 Nil!47272))) And!8227 (ite (= lt!1511988 (Cons!47272 #x007C (Cons!47272 #x007C Nil!47272))) Or!8227 (ite (= lt!1511988 (Cons!47272 #x002B (Cons!47272 #x002B Nil!47272))) Concat!21125 (Broken!41139 lt!1511988)))))))))))))))

(declare-fun bs!599589 () Bool)

(assert (= bs!599589 d!1257851))

(declare-fun m!4858907 () Bool)

(assert (=> bs!599589 m!4858907))

(assert (=> b!4266937 d!1257851))

(declare-fun d!1257853 () Bool)

(assert (=> d!1257853 (= (list!17085 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738475))) (list!17088 (c!725458 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738475)))))))

(declare-fun bs!599590 () Bool)

(assert (= bs!599590 d!1257853))

(declare-fun m!4858909 () Bool)

(assert (=> bs!599590 m!4858909))

(assert (=> bs!599478 d!1257853))

(declare-fun b!4267063 () Bool)

(declare-fun e!2649368 () BalanceConc!28018)

(declare-fun stringOrConc!0 () BalanceConc!28018)

(assert (=> b!4267063 (= e!2649368 stringOrConc!0)))

(declare-fun b!4267064 () Bool)

(declare-fun e!2649375 () BalanceConc!28018)

(declare-fun stringNotConc!0 () BalanceConc!28018)

(assert (=> b!4267064 (= e!2649375 stringNotConc!0)))

(declare-fun b!4267065 () Bool)

(declare-fun e!2649377 () BalanceConc!28018)

(declare-fun e!2649373 () BalanceConc!28018)

(assert (=> b!4267065 (= e!2649377 e!2649373)))

(declare-fun c!725499 () Bool)

(assert (=> b!4267065 (= c!725499 (is-Broken!41139 (toValue!17 thiss!2520 x!738475)))))

(declare-fun b!4267066 () Bool)

(declare-fun e!2649376 () BalanceConc!28018)

(assert (=> b!4267066 (= e!2649376 e!2649368)))

(declare-fun c!725492 () Bool)

(assert (=> b!4267066 (= c!725492 (is-Or!8227 (toValue!17 thiss!2520 x!738475)))))

(declare-fun b!4267067 () Bool)

(assert (=> b!4267067 (= e!2649373 (BalanceConc!28019 Empty!14254))))

(declare-fun b!4267068 () Bool)

(declare-fun c!725489 () Bool)

(assert (=> b!4267068 (= c!725489 (is-Mod!8227 (toValue!17 thiss!2520 x!738475)))))

(declare-fun e!2649367 () BalanceConc!28018)

(declare-fun e!2649369 () BalanceConc!28018)

(assert (=> b!4267068 (= e!2649367 e!2649369)))

(declare-fun d!1257855 () Bool)

(declare-fun c!725494 () Bool)

(assert (=> d!1257855 (= c!725494 (is-Plus!8227 (toValue!17 thiss!2520 x!738475)))))

(declare-fun e!2649374 () BalanceConc!28018)

(assert (=> d!1257855 (= (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738475)) e!2649374)))

(declare-fun b!4267069 () Bool)

(declare-fun stringPlusConc!0 () BalanceConc!28018)

(assert (=> b!4267069 (= e!2649374 stringPlusConc!0)))

(declare-fun b!4267070 () Bool)

(declare-fun e!2649371 () BalanceConc!28018)

(declare-fun stringTimesConc!0 () BalanceConc!28018)

(assert (=> b!4267070 (= e!2649371 stringTimesConc!0)))

(declare-fun b!4267071 () Bool)

(declare-fun stringModConc!0 () BalanceConc!28018)

(assert (=> b!4267071 (= e!2649369 stringModConc!0)))

(declare-fun b!4267072 () Bool)

(declare-fun e!2649372 () BalanceConc!28018)

(declare-fun stringMinusConc!0 () BalanceConc!28018)

(assert (=> b!4267072 (= e!2649372 stringMinusConc!0)))

(declare-fun b!4267073 () Bool)

(assert (=> b!4267073 (= e!2649369 e!2649375)))

(declare-fun c!725491 () Bool)

(assert (=> b!4267073 (= c!725491 (is-Not!8227 (toValue!17 thiss!2520 x!738475)))))

(declare-fun b!4267074 () Bool)

(assert (=> b!4267074 (= e!2649374 e!2649372)))

(declare-fun c!725495 () Bool)

(assert (=> b!4267074 (= c!725495 (is-Minus!8227 (toValue!17 thiss!2520 x!738475)))))

(declare-fun b!4267075 () Bool)

(declare-fun c!725493 () Bool)

(assert (=> b!4267075 (= c!725493 (is-And!8227 (toValue!17 thiss!2520 x!738475)))))

(declare-fun e!2649370 () BalanceConc!28018)

(assert (=> b!4267075 (= e!2649370 e!2649376)))

(declare-fun b!4267076 () Bool)

(declare-fun stringLessEqualConc!0 () BalanceConc!28018)

(assert (=> b!4267076 (= e!2649370 stringLessEqualConc!0)))

(declare-fun b!4267077 () Bool)

(declare-fun c!725496 () Bool)

(assert (=> b!4267077 (= c!725496 (is-Equal!8227 (toValue!17 thiss!2520 x!738475)))))

(declare-fun e!2649378 () BalanceConc!28018)

(assert (=> b!4267077 (= e!2649375 e!2649378)))

(declare-fun b!4267078 () Bool)

(declare-fun stringDivConc!0 () BalanceConc!28018)

(assert (=> b!4267078 (= e!2649367 stringDivConc!0)))

(declare-fun b!4267079 () Bool)

(declare-fun stringEqualConc!0 () BalanceConc!28018)

(assert (=> b!4267079 (= e!2649378 stringEqualConc!0)))

(declare-fun b!4267080 () Bool)

(declare-fun c!725498 () Bool)

(assert (=> b!4267080 (= c!725498 (is-Concat!21125 (toValue!17 thiss!2520 x!738475)))))

(assert (=> b!4267080 (= e!2649368 e!2649377)))

(declare-fun b!4267081 () Bool)

(declare-fun seqFromList!5850 (List!47396) BalanceConc!28018)

(assert (=> b!4267081 (= e!2649373 (seqFromList!5850 (value!248512 (toValue!17 thiss!2520 x!738475))))))

(declare-fun b!4267082 () Bool)

(declare-fun stringConcatConc!0 () BalanceConc!28018)

(assert (=> b!4267082 (= e!2649377 stringConcatConc!0)))

(declare-fun b!4267083 () Bool)

(declare-fun c!725497 () Bool)

(assert (=> b!4267083 (= c!725497 (is-Times!8227 (toValue!17 thiss!2520 x!738475)))))

(assert (=> b!4267083 (= e!2649372 e!2649371)))

(declare-fun b!4267084 () Bool)

(declare-fun stringAndConc!0 () BalanceConc!28018)

(assert (=> b!4267084 (= e!2649376 stringAndConc!0)))

(declare-fun b!4267085 () Bool)

(assert (=> b!4267085 (= e!2649371 e!2649367)))

(declare-fun c!725490 () Bool)

(assert (=> b!4267085 (= c!725490 (is-Div!8227 (toValue!17 thiss!2520 x!738475)))))

(declare-fun b!4267086 () Bool)

(assert (=> b!4267086 (= e!2649378 e!2649370)))

(declare-fun c!725488 () Bool)

(assert (=> b!4267086 (= c!725488 (is-LessEqual!8227 (toValue!17 thiss!2520 x!738475)))))

(assert (= (and d!1257855 c!725494) b!4267069))

(assert (= (and d!1257855 (not c!725494)) b!4267074))

(assert (= (and b!4267074 c!725495) b!4267072))

(assert (= (and b!4267074 (not c!725495)) b!4267083))

(assert (= (and b!4267083 c!725497) b!4267070))

(assert (= (and b!4267083 (not c!725497)) b!4267085))

(assert (= (and b!4267085 c!725490) b!4267078))

(assert (= (and b!4267085 (not c!725490)) b!4267068))

(assert (= (and b!4267068 c!725489) b!4267071))

(assert (= (and b!4267068 (not c!725489)) b!4267073))

(assert (= (and b!4267073 c!725491) b!4267064))

(assert (= (and b!4267073 (not c!725491)) b!4267077))

(assert (= (and b!4267077 c!725496) b!4267079))

(assert (= (and b!4267077 (not c!725496)) b!4267086))

(assert (= (and b!4267086 c!725488) b!4267076))

(assert (= (and b!4267086 (not c!725488)) b!4267075))

(assert (= (and b!4267075 c!725493) b!4267084))

(assert (= (and b!4267075 (not c!725493)) b!4267066))

(assert (= (and b!4267066 c!725492) b!4267063))

(assert (= (and b!4267066 (not c!725492)) b!4267080))

(assert (= (and b!4267080 c!725498) b!4267082))

(assert (= (and b!4267080 (not c!725498)) b!4267065))

(assert (= (and b!4267065 c!725499) b!4267081))

(assert (= (and b!4267065 (not c!725499)) b!4267067))

(declare-fun m!4858911 () Bool)

(assert (=> b!4267063 m!4858911))

(declare-fun m!4858913 () Bool)

(assert (=> b!4267064 m!4858913))

(declare-fun m!4858915 () Bool)

(assert (=> b!4267079 m!4858915))

(declare-fun m!4858917 () Bool)

(assert (=> b!4267081 m!4858917))

(declare-fun m!4858919 () Bool)

(assert (=> b!4267072 m!4858919))

(declare-fun m!4858921 () Bool)

(assert (=> b!4267078 m!4858921))

(declare-fun m!4858923 () Bool)

(assert (=> b!4267084 m!4858923))

(declare-fun m!4858925 () Bool)

(assert (=> b!4267076 m!4858925))

(declare-fun m!4858927 () Bool)

(assert (=> b!4267069 m!4858927))

(declare-fun m!4858929 () Bool)

(assert (=> b!4267071 m!4858929))

(declare-fun m!4858931 () Bool)

(assert (=> b!4267082 m!4858931))

(declare-fun m!4858933 () Bool)

(assert (=> b!4267070 m!4858933))

(assert (=> bs!599478 d!1257855))

(assert (=> bs!599478 d!1257847))

(assert (=> bs!599478 d!1257843))

(declare-fun d!1257857 () Bool)

(declare-fun c!725500 () Bool)

(assert (=> d!1257857 (= c!725500 (is-Node!14254 (c!725458 x!738475)))))

(declare-fun e!2649379 () Bool)

(assert (=> d!1257857 (= (inv!62215 (c!725458 x!738475)) e!2649379)))

(declare-fun b!4267087 () Bool)

(assert (=> b!4267087 (= e!2649379 (inv!62221 (c!725458 x!738475)))))

(declare-fun b!4267088 () Bool)

(declare-fun e!2649380 () Bool)

(assert (=> b!4267088 (= e!2649379 e!2649380)))

(declare-fun res!1753352 () Bool)

(assert (=> b!4267088 (= res!1753352 (not (is-Leaf!22037 (c!725458 x!738475))))))

(assert (=> b!4267088 (=> res!1753352 e!2649380)))

(declare-fun b!4267089 () Bool)

(assert (=> b!4267089 (= e!2649380 (inv!62222 (c!725458 x!738475)))))

(assert (= (and d!1257857 c!725500) b!4267087))

(assert (= (and d!1257857 (not c!725500)) b!4267088))

(assert (= (and b!4267088 (not res!1753352)) b!4267089))

(declare-fun m!4858935 () Bool)

(assert (=> b!4267087 m!4858935))

(declare-fun m!4858937 () Bool)

(assert (=> b!4267089 m!4858937))

(assert (=> b!4266936 d!1257857))

(assert (=> b!4266943 d!1257847))

(assert (=> b!4266943 d!1257851))

(assert (=> b!4266952 d!1257849))

(declare-fun d!1257859 () Bool)

(declare-fun isBalanced!3813 (Conc!14254) Bool)

(assert (=> d!1257859 (= (inv!62216 x!738476) (isBalanced!3813 (c!725458 x!738476)))))

(declare-fun bs!599591 () Bool)

(assert (= bs!599591 d!1257859))

(declare-fun m!4858939 () Bool)

(assert (=> bs!599591 m!4858939))

(assert (=> b!4266926 d!1257859))

(declare-fun d!1257861 () Bool)

(declare-fun choose!26006 (Int) Bool)

(assert (=> d!1257861 (= (Forall2!1208 lambda!130369) (choose!26006 lambda!130369))))

(declare-fun bs!599592 () Bool)

(assert (= bs!599592 d!1257861))

(declare-fun m!4858941 () Bool)

(assert (=> bs!599592 m!4858941))

(assert (=> b!4266926 d!1257861))

(declare-fun bs!599593 () Bool)

(declare-fun d!1257863 () Bool)

(assert (= bs!599593 (and d!1257863 start!408904)))

(declare-fun lambda!130400 () Int)

(assert (=> bs!599593 (not (= lambda!130400 lambda!130366))))

(assert (=> d!1257863 true))

(declare-fun order!24783 () Int)

(declare-fun order!24785 () Int)

(declare-fun dynLambda!20232 (Int Int) Int)

(declare-fun dynLambda!20233 (Int Int) Int)

(assert (=> d!1257863 (< (dynLambda!20232 order!24783 lambda!130367) (dynLambda!20233 order!24785 lambda!130400))))

(assert (=> d!1257863 true))

(declare-fun order!24787 () Int)

(declare-fun dynLambda!20234 (Int Int) Int)

(assert (=> d!1257863 (< (dynLambda!20234 order!24787 lambda!130368) (dynLambda!20233 order!24785 lambda!130400))))

(assert (=> d!1257863 (= (semiInverseModEq!3493 lambda!130367 lambda!130368) (Forall!1611 lambda!130400))))

(declare-fun bs!599594 () Bool)

(assert (= bs!599594 d!1257863))

(declare-fun m!4858943 () Bool)

(assert (=> bs!599594 m!4858943))

(assert (=> b!4266926 d!1257863))

(declare-fun d!1257865 () Bool)

(assert (=> d!1257865 (= (inv!62216 x!738477) (isBalanced!3813 (c!725458 x!738477)))))

(declare-fun bs!599595 () Bool)

(assert (= bs!599595 d!1257865))

(declare-fun m!4858945 () Bool)

(assert (=> bs!599595 m!4858945))

(assert (=> b!4266926 d!1257865))

(declare-fun d!1257867 () Bool)

(declare-fun choose!26007 (Int) Bool)

(assert (=> d!1257867 (= (Forall!1611 lambda!130366) (choose!26007 lambda!130366))))

(declare-fun bs!599596 () Bool)

(assert (= bs!599596 d!1257867))

(declare-fun m!4858947 () Bool)

(assert (=> bs!599596 m!4858947))

(assert (=> b!4266926 d!1257867))

(assert (=> b!4266926 d!1257839))

(assert (=> b!4266926 d!1257841))

(assert (=> bs!599480 d!1257843))

(assert (=> bs!599491 d!1257853))

(declare-fun d!1257869 () Bool)

(declare-fun c!725501 () Bool)

(assert (=> d!1257869 (= c!725501 (is-Node!14254 (c!725458 x!738477)))))

(declare-fun e!2649381 () Bool)

(assert (=> d!1257869 (= (inv!62215 (c!725458 x!738477)) e!2649381)))

(declare-fun b!4267094 () Bool)

(assert (=> b!4267094 (= e!2649381 (inv!62221 (c!725458 x!738477)))))

(declare-fun b!4267095 () Bool)

(declare-fun e!2649382 () Bool)

(assert (=> b!4267095 (= e!2649381 e!2649382)))

(declare-fun res!1753353 () Bool)

(assert (=> b!4267095 (= res!1753353 (not (is-Leaf!22037 (c!725458 x!738477))))))

(assert (=> b!4267095 (=> res!1753353 e!2649382)))

(declare-fun b!4267096 () Bool)

(assert (=> b!4267096 (= e!2649382 (inv!62222 (c!725458 x!738477)))))

(assert (= (and d!1257869 c!725501) b!4267094))

(assert (= (and d!1257869 (not c!725501)) b!4267095))

(assert (= (and b!4267095 (not res!1753353)) b!4267096))

(declare-fun m!4858949 () Bool)

(assert (=> b!4267094 m!4858949))

(declare-fun m!4858951 () Bool)

(assert (=> b!4267096 m!4858951))

(assert (=> b!4266939 d!1257869))

(assert (=> b!4266948 d!1257847))

(declare-fun d!1257871 () Bool)

(declare-fun lt!1511989 () List!47396)

(assert (=> d!1257871 (= lt!1511989 (efficientList!431 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738475))))))

(assert (=> d!1257871 (= (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738475))) (ite (= lt!1511989 (Cons!47272 #x002B Nil!47272)) Plus!8227 (ite (= lt!1511989 (Cons!47272 #x002D Nil!47272)) Minus!8227 (ite (= lt!1511989 (Cons!47272 #x002A Nil!47272)) Times!8227 (ite (= lt!1511989 (Cons!47272 #x002F Nil!47272)) Div!8227 (ite (= lt!1511989 (Cons!47272 #x0025 Nil!47272)) Mod!8227 (ite (= lt!1511989 (Cons!47272 #x0021 Nil!47272)) Not!8227 (ite (= lt!1511989 (Cons!47272 #x003D Nil!47272)) Equal!8227 (ite (= lt!1511989 (Cons!47272 #x003C (Cons!47272 #x003D Nil!47272))) LessEqual!8227 (ite (= lt!1511989 (Cons!47272 #x0026 (Cons!47272 #x0026 Nil!47272))) And!8227 (ite (= lt!1511989 (Cons!47272 #x007C (Cons!47272 #x007C Nil!47272))) Or!8227 (ite (= lt!1511989 (Cons!47272 #x002B (Cons!47272 #x002B Nil!47272))) Concat!21125 (Broken!41139 lt!1511989)))))))))))))))

(declare-fun bs!599597 () Bool)

(assert (= bs!599597 d!1257871))

(assert (=> bs!599597 m!4858809))

(declare-fun m!4858953 () Bool)

(assert (=> bs!599597 m!4858953))

(assert (=> b!4266948 d!1257871))

(assert (=> bs!599483 d!1257841))

(assert (=> bs!599489 d!1257853))

(assert (=> bs!599489 d!1257843))

(assert (=> b!4266954 d!1257871))

(assert (=> b!4266954 d!1257849))

(assert (=> bs!599501 d!1257839))

(assert (=> bs!599501 d!1257843))

(assert (=> b!4266942 d!1257851))

(assert (=> b!4266945 d!1257871))

(assert (=> b!4266945 d!1257847))

(assert (=> bs!599506 d!1257843))

(assert (=> bs!599506 d!1257839))

(assert (=> b!4266951 d!1257849))

(assert (=> b!4266951 d!1257847))

(assert (=> b!4266944 d!1257871))

(assert (=> b!4266944 d!1257851))

(assert (=> b!4266950 d!1257849))

(assert (=> b!4266950 d!1257871))

(assert (=> b!4266947 d!1257851))

(assert (=> b!4266947 d!1257871))

(assert (=> b!4266953 d!1257851))

(assert (=> b!4266953 d!1257849))

(assert (=> bs!599493 d!1257843))

(assert (=> bs!599493 d!1257853))

(assert (=> bs!599505 d!1257853))

(assert (=> bs!599505 d!1257839))

(assert (=> b!4266941 d!1257851))

(assert (=> b!4266941 d!1257847))

(assert (=> start!408904 d!1257867))

(assert (=> start!408904 d!1257855))

(assert (=> start!408904 d!1257853))

(assert (=> start!408904 d!1257847))

(assert (=> start!408904 d!1257843))

(declare-fun d!1257873 () Bool)

(assert (=> d!1257873 (= (inv!62216 x!738475) (isBalanced!3813 (c!725458 x!738475)))))

(declare-fun bs!599598 () Bool)

(assert (= bs!599598 d!1257873))

(declare-fun m!4858955 () Bool)

(assert (=> bs!599598 m!4858955))

(assert (=> start!408904 d!1257873))

(assert (=> b!4266940 d!1257847))

(assert (=> b!4266946 d!1257871))

(declare-fun d!1257875 () Bool)

(declare-fun res!1753356 () Bool)

(declare-fun e!2649385 () Bool)

(assert (=> d!1257875 (=> (not res!1753356) (not e!2649385))))

(assert (=> d!1257875 (= res!1753356 (semiInverseModEq!3493 (toChars!10630 (TokenValueInjection!15875 lambda!130368 lambda!130367)) (toValue!10771 (TokenValueInjection!15875 lambda!130368 lambda!130367))))))

(assert (=> d!1257875 (= (inv!62217 (TokenValueInjection!15875 lambda!130368 lambda!130367)) e!2649385)))

(declare-fun b!4267099 () Bool)

(assert (=> b!4267099 (= e!2649385 (equivClasses!3390 (toChars!10630 (TokenValueInjection!15875 lambda!130368 lambda!130367)) (toValue!10771 (TokenValueInjection!15875 lambda!130368 lambda!130367))))))

(assert (= (and d!1257875 res!1753356) b!4267099))

(declare-fun m!4858957 () Bool)

(assert (=> d!1257875 m!4858957))

(declare-fun m!4858959 () Bool)

(assert (=> b!4267099 m!4858959))

(assert (=> b!4266927 d!1257875))

(declare-fun bs!599599 () Bool)

(declare-fun d!1257877 () Bool)

(assert (= bs!599599 (and d!1257877 b!4266926)))

(declare-fun lambda!130403 () Int)

(assert (=> bs!599599 (not (= lambda!130403 lambda!130369))))

(assert (=> d!1257877 true))

(declare-fun order!24789 () Int)

(declare-fun dynLambda!20235 (Int Int) Int)

(assert (=> d!1257877 (< (dynLambda!20234 order!24787 lambda!130368) (dynLambda!20235 order!24789 lambda!130403))))

(assert (=> d!1257877 (= (equivClasses!3390 lambda!130367 lambda!130368) (Forall2!1208 lambda!130403))))

(declare-fun bs!599600 () Bool)

(assert (= bs!599600 d!1257877))

(declare-fun m!4858961 () Bool)

(assert (=> bs!599600 m!4858961))

(assert (=> b!4266927 d!1257877))

(assert (=> b!4266927 d!1257861))

(assert (=> b!4266949 d!1257849))

(assert (=> b!4266949 d!1257851))

(assert (=> bs!599481 d!1257841))

(assert (=> bs!599481 d!1257843))

(assert (=> bs!599487 d!1257853))

(assert (=> bs!599487 d!1257841))

(assert (=> bs!599499 d!1257839))

(assert (=> bs!599499 d!1257853))

(assert (=> bs!599492 d!1257841))

(assert (=> bs!599492 d!1257853))

(assert (=> bs!599504 d!1257841))

(assert (=> bs!599504 d!1257839))

(declare-fun tp!1307573 () Bool)

(declare-fun tp!1307574 () Bool)

(declare-fun b!4267110 () Bool)

(declare-fun e!2649392 () Bool)

(assert (=> b!4267110 (= e!2649392 (and (inv!62215 (left!35054 (c!725458 x!738476))) tp!1307573 (inv!62215 (right!35384 (c!725458 x!738476))) tp!1307574))))

(declare-fun b!4267111 () Bool)

(declare-fun inv!62223 (IArray!28513) Bool)

(assert (=> b!4267111 (= e!2649392 (inv!62223 (xs!17560 (c!725458 x!738476))))))

(assert (=> b!4266938 (= tp!1307559 (and (inv!62215 (c!725458 x!738476)) e!2649392))))

(assert (= (and b!4266938 (is-Node!14254 (c!725458 x!738476))) b!4267110))

(assert (= (and b!4266938 (is-Leaf!22037 (c!725458 x!738476))) b!4267111))

(declare-fun m!4858963 () Bool)

(assert (=> b!4267110 m!4858963))

(declare-fun m!4858965 () Bool)

(assert (=> b!4267110 m!4858965))

(declare-fun m!4858967 () Bool)

(assert (=> b!4267111 m!4858967))

(assert (=> b!4266938 m!4858829))

(declare-fun tp!1307576 () Bool)

(declare-fun e!2649394 () Bool)

(declare-fun b!4267112 () Bool)

(declare-fun tp!1307575 () Bool)

(assert (=> b!4267112 (= e!2649394 (and (inv!62215 (left!35054 (c!725458 x!738475))) tp!1307575 (inv!62215 (right!35384 (c!725458 x!738475))) tp!1307576))))

(declare-fun b!4267113 () Bool)

(assert (=> b!4267113 (= e!2649394 (inv!62223 (xs!17560 (c!725458 x!738475))))))

(assert (=> b!4266936 (= tp!1307557 (and (inv!62215 (c!725458 x!738475)) e!2649394))))

(assert (= (and b!4266936 (is-Node!14254 (c!725458 x!738475))) b!4267112))

(assert (= (and b!4266936 (is-Leaf!22037 (c!725458 x!738475))) b!4267113))

(declare-fun m!4858969 () Bool)

(assert (=> b!4267112 m!4858969))

(declare-fun m!4858971 () Bool)

(assert (=> b!4267112 m!4858971))

(declare-fun m!4858973 () Bool)

(assert (=> b!4267113 m!4858973))

(assert (=> b!4266936 m!4858805))

(declare-fun tp!1307578 () Bool)

(declare-fun e!2649396 () Bool)

(declare-fun b!4267114 () Bool)

(declare-fun tp!1307577 () Bool)

(assert (=> b!4267114 (= e!2649396 (and (inv!62215 (left!35054 (c!725458 x!738477))) tp!1307577 (inv!62215 (right!35384 (c!725458 x!738477))) tp!1307578))))

(declare-fun b!4267115 () Bool)

(assert (=> b!4267115 (= e!2649396 (inv!62223 (xs!17560 (c!725458 x!738477))))))

(assert (=> b!4266939 (= tp!1307558 (and (inv!62215 (c!725458 x!738477)) e!2649396))))

(assert (= (and b!4266939 (is-Node!14254 (c!725458 x!738477))) b!4267114))

(assert (= (and b!4266939 (is-Leaf!22037 (c!725458 x!738477))) b!4267115))

(declare-fun m!4858975 () Bool)

(assert (=> b!4267114 m!4858975))

(declare-fun m!4858977 () Bool)

(assert (=> b!4267114 m!4858977))

(declare-fun m!4858979 () Bool)

(assert (=> b!4267115 m!4858979))

(assert (=> b!4266939 m!4858831))

(push 1)

(assert (not b!4267014))

(assert (not b!4267115))

(assert (not d!1257861))

(assert (not b!4267072))

(assert (not b!4267094))

(assert (not b!4267110))

(assert (not b!4267064))

(assert (not b!4267012))

(assert (not b!4267087))

(assert (not b!4267070))

(assert (not b!4267063))

(assert (not b!4267078))

(assert (not d!1257841))

(assert (not d!1257853))

(assert (not b!4267084))

(assert (not d!1257871))

(assert (not b!4267113))

(assert (not d!1257859))

(assert (not b!4266936))

(assert (not d!1257877))

(assert (not d!1257863))

(assert (not b!4267069))

(assert (not d!1257843))

(assert (not b!4266939))

(assert (not b!4267079))

(assert (not d!1257867))

(assert (not b!4267076))

(assert (not d!1257851))

(assert (not d!1257839))

(assert (not b!4267081))

(assert (not d!1257875))

(assert (not b!4267111))

(assert (not b!4267082))

(assert (not b!4267114))

(assert (not b!4267089))

(assert (not d!1257849))

(assert (not d!1257873))

(assert (not b!4267096))

(assert (not b!4267099))

(assert (not d!1257865))

(assert (not b!4267112))

(assert (not b!4267071))

(assert (not d!1257847))

(assert (not b!4266938))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

