; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!410444 () Bool)

(assert start!410444)

(declare-fun b!4275428 () Bool)

(declare-fun e!2654368 () Bool)

(declare-fun e!2654369 () Bool)

(assert (=> b!4275428 (= e!2654368 e!2654369)))

(declare-fun res!1755722 () Bool)

(assert (=> b!4275428 (=> (not res!1755722) (not e!2654369))))

(declare-datatypes ((List!47454 0))(
  ( (Nil!47330) (Cons!47330 (h!52750 (_ BitVec 16)) (t!353917 List!47454)) )
))
(declare-fun lt!1513646 () List!47454)

(declare-fun lt!1513648 () List!47454)

(assert (=> b!4275428 (= res!1755722 (not (= lt!1513646 (Cons!47330 #x0063 (Cons!47330 #x0061 lt!1513648)))))))

(assert (=> b!4275428 (= lt!1513648 (Cons!47330 #x0073 (Cons!47330 #x0065 Nil!47330)))))

(declare-fun b!4275429 () Bool)

(declare-fun e!2654371 () Bool)

(declare-datatypes ((IArray!28629 0))(
  ( (IArray!28630 (innerList!14372 List!47454)) )
))
(declare-datatypes ((Conc!14312 0))(
  ( (Node!14312 (left!35227 Conc!14312) (right!35557 Conc!14312) (csize!28854 Int) (cheight!14523 Int)) (Leaf!22124 (xs!17618 IArray!28629) (csize!28855 Int)) (Empty!14312) )
))
(declare-datatypes ((BalanceConc!28134 0))(
  ( (BalanceConc!28135 (c!728011 Conc!14312)) )
))
(declare-fun c!5192 () BalanceConc!28134)

(declare-fun tp!1308467 () Bool)

(declare-fun inv!62567 (Conc!14312) Bool)

(assert (=> b!4275429 (= e!2654371 (and (inv!62567 (c!728011 c!5192)) tp!1308467))))

(declare-fun b!4275430 () Bool)

(declare-fun e!2654370 () Bool)

(declare-fun e!2654372 () Bool)

(assert (=> b!4275430 (= e!2654370 e!2654372)))

(declare-fun res!1755721 () Bool)

(assert (=> b!4275430 (=> (not res!1755721) (not e!2654372))))

(declare-fun lt!1513647 () List!47454)

(declare-fun lt!1513644 () List!47454)

(declare-fun lt!1513645 () List!47454)

(assert (=> b!4275430 (= res!1755721 (and (not (= lt!1513646 (Cons!47330 #x0064 (Cons!47330 #x0065 lt!1513644)))) (not (= lt!1513646 (Cons!47330 #x0065 (Cons!47330 #x006C lt!1513648)))) (not (= lt!1513646 (Cons!47330 #x0065 (Cons!47330 #x0078 (Cons!47330 #x0074 (Cons!47330 #x0065 (Cons!47330 #x006E (Cons!47330 #x0064 lt!1513645)))))))) (not (= lt!1513646 (Cons!47330 #x0069 lt!1513644))) (not (= lt!1513646 (Cons!47330 #x006D (Cons!47330 #x0061 (Cons!47330 #x0074 (Cons!47330 #x0063 (Cons!47330 #x0068 Nil!47330))))))) (not (= lt!1513646 (Cons!47330 #x006F (Cons!47330 #x0062 (Cons!47330 #x006A (Cons!47330 #x0065 lt!1513647)))))) (not (= lt!1513646 (Cons!47330 #x0076 (Cons!47330 #x0061 (Cons!47330 #x006C Nil!47330))))) (not (= lt!1513646 (Cons!47330 #x0065 (Cons!47330 #x0072 (Cons!47330 #x0072 (Cons!47330 #x006F (Cons!47330 #x0072 Nil!47330))))))) (not (= lt!1513646 (Cons!47330 #x005F Nil!47330))) (not (= lt!1513646 (Cons!47330 #x0065 (Cons!47330 #x006E (Cons!47330 #x0064 Nil!47330)))))))))

(assert (=> b!4275430 (= lt!1513644 (Cons!47330 #x0066 Nil!47330))))

(declare-fun b!4275431 () Bool)

(assert (=> b!4275431 (= e!2654369 e!2654370)))

(declare-fun res!1755719 () Bool)

(assert (=> b!4275431 (=> (not res!1755719) (not e!2654370))))

(assert (=> b!4275431 (= res!1755719 (not (= lt!1513646 (Cons!47330 #x0063 (Cons!47330 #x006C (Cons!47330 #x0061 (Cons!47330 #x0073 lt!1513645)))))))))

(assert (=> b!4275431 (= lt!1513645 (Cons!47330 #x0073 Nil!47330))))

(declare-fun b!4275427 () Bool)

(declare-datatypes ((TokenValue!8285 0))(
  ( (FloatLiteralValue!16570 (text!58440 List!47454)) (TokenValueExt!8284 (__x!28731 Int)) (Broken!41425 (value!250030 List!47454)) (Object!8408) (End!8285) (Def!8285) (Underscore!8285) (Match!8285) (Else!8285) (Error!8285) (Case!8285) (If!8285) (Extends!8285) (Abstract!8285) (Class!8285) (Val!8285) (DelimiterValue!16570 (del!8345 List!47454)) (KeywordValue!8291 (value!250031 List!47454)) (CommentValue!16570 (value!250032 List!47454)) (WhitespaceValue!16570 (value!250033 List!47454)) (IndentationValue!8285 (value!250034 List!47454)) (String!55332) (Int32!8285) (Broken!41426 (value!250035 List!47454)) (Boolean!8286) (Unit!66271) (OperatorValue!8288 (op!8345 List!47454)) (IdentifierValue!16570 (value!250036 List!47454)) (IdentifierValue!16571 (value!250037 List!47454)) (WhitespaceValue!16571 (value!250038 List!47454)) (True!16570) (False!16570) (Broken!41427 (value!250039 List!47454)) (Broken!41428 (value!250040 List!47454)) (True!16571) (RightBrace!8285) (RightBracket!8285) (Colon!8285) (Null!8285) (Comma!8285) (LeftBracket!8285) (False!16571) (LeftBrace!8285) (ImaginaryLiteralValue!8285 (text!58441 List!47454)) (StringLiteralValue!24855 (value!250041 List!47454)) (EOFValue!8285 (value!250042 List!47454)) (IdentValue!8285 (value!250043 List!47454)) (DelimiterValue!16571 (value!250044 List!47454)) (DedentValue!8285 (value!250045 List!47454)) (NewLineValue!8285 (value!250046 List!47454)) (IntegerValue!24855 (value!250047 (_ BitVec 32)) (text!58442 List!47454)) (IntegerValue!24856 (value!250048 Int) (text!58443 List!47454)) (Times!8285) (Or!8285) (Equal!8285) (Minus!8285) (Broken!41429 (value!250049 List!47454)) (And!8285) (Div!8285) (LessEqual!8285) (Mod!8285) (Concat!21183) (Not!8285) (Plus!8285) (SpaceValue!8285 (value!250050 List!47454)) (IntegerValue!24857 (value!250051 Int) (text!58444 List!47454)) (StringLiteralValue!24856 (text!58445 List!47454)) (FloatLiteralValue!16571 (text!58446 List!47454)) (BytesLiteralValue!8285 (value!250052 List!47454)) (CommentValue!16571 (value!250053 List!47454)) (StringLiteralValue!24857 (value!250054 List!47454)) (ErrorTokenValue!8285 (msg!8346 List!47454)) )
))
(declare-fun inv!21 (TokenValue!8285) Bool)

(assert (=> b!4275427 (= e!2654372 (not (inv!21 (Broken!41425 lt!1513646))))))

(declare-fun res!1755720 () Bool)

(assert (=> start!410444 (=> (not res!1755720) (not e!2654368))))

(assert (=> start!410444 (= res!1755720 (not (= lt!1513646 (Cons!47330 #x0061 (Cons!47330 #x0062 (Cons!47330 #x0073 (Cons!47330 #x0074 (Cons!47330 #x0072 (Cons!47330 #x0061 lt!1513647)))))))))))

(assert (=> start!410444 (= lt!1513647 (Cons!47330 #x0063 (Cons!47330 #x0074 Nil!47330)))))

(declare-fun efficientList!554 (BalanceConc!28134) List!47454)

(assert (=> start!410444 (= lt!1513646 (efficientList!554 c!5192))))

(assert (=> start!410444 e!2654368))

(declare-fun inv!62568 (BalanceConc!28134) Bool)

(assert (=> start!410444 (and (inv!62568 c!5192) e!2654371)))

(assert (= (and start!410444 res!1755720) b!4275428))

(assert (= (and b!4275428 res!1755722) b!4275431))

(assert (= (and b!4275431 res!1755719) b!4275430))

(assert (= (and b!4275430 res!1755721) b!4275427))

(assert (= start!410444 b!4275429))

(declare-fun m!4870993 () Bool)

(assert (=> b!4275429 m!4870993))

(declare-fun m!4870995 () Bool)

(assert (=> b!4275427 m!4870995))

(declare-fun m!4870997 () Bool)

(assert (=> start!410444 m!4870997))

(declare-fun m!4870999 () Bool)

(assert (=> start!410444 m!4870999))

(push 1)

(assert (not b!4275429))

(assert (not b!4275427))

(assert (not start!410444))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1261996 () Bool)

(declare-fun c!728015 () Bool)

(assert (=> d!1261996 (= c!728015 (is-Node!14312 (c!728011 c!5192)))))

(declare-fun e!2654392 () Bool)

(assert (=> d!1261996 (= (inv!62567 (c!728011 c!5192)) e!2654392)))

(declare-fun b!4275453 () Bool)

(declare-fun inv!62571 (Conc!14312) Bool)

(assert (=> b!4275453 (= e!2654392 (inv!62571 (c!728011 c!5192)))))

(declare-fun b!4275454 () Bool)

(declare-fun e!2654393 () Bool)

(assert (=> b!4275454 (= e!2654392 e!2654393)))

(declare-fun res!1755737 () Bool)

(assert (=> b!4275454 (= res!1755737 (not (is-Leaf!22124 (c!728011 c!5192))))))

(assert (=> b!4275454 (=> res!1755737 e!2654393)))

(declare-fun b!4275455 () Bool)

(declare-fun inv!62572 (Conc!14312) Bool)

(assert (=> b!4275455 (= e!2654393 (inv!62572 (c!728011 c!5192)))))

(assert (= (and d!1261996 c!728015) b!4275453))

(assert (= (and d!1261996 (not c!728015)) b!4275454))

(assert (= (and b!4275454 (not res!1755737)) b!4275455))

(declare-fun m!4871009 () Bool)

(assert (=> b!4275453 m!4871009))

(declare-fun m!4871011 () Bool)

(assert (=> b!4275455 m!4871011))

(assert (=> b!4275429 d!1261996))

(declare-fun b!4275475 () Bool)

(declare-fun e!2654408 () Bool)

(declare-fun inv!15 (TokenValue!8285) Bool)

(assert (=> b!4275475 (= e!2654408 (inv!15 (Broken!41425 lt!1513646)))))

(declare-fun b!4275476 () Bool)

(declare-fun e!2654407 () Bool)

(declare-fun inv!16 (TokenValue!8285) Bool)

(assert (=> b!4275476 (= e!2654407 (inv!16 (Broken!41425 lt!1513646)))))

(declare-fun b!4275477 () Bool)

(declare-fun e!2654406 () Bool)

(assert (=> b!4275477 (= e!2654407 e!2654406)))

(declare-fun c!728024 () Bool)

(assert (=> b!4275477 (= c!728024 (is-IntegerValue!24856 (Broken!41425 lt!1513646)))))

(declare-fun d!1262000 () Bool)

(declare-fun c!728023 () Bool)

(assert (=> d!1262000 (= c!728023 (is-IntegerValue!24855 (Broken!41425 lt!1513646)))))

(assert (=> d!1262000 (= (inv!21 (Broken!41425 lt!1513646)) e!2654407)))

(declare-fun b!4275478 () Bool)

(declare-fun res!1755743 () Bool)

(assert (=> b!4275478 (=> res!1755743 e!2654408)))

(assert (=> b!4275478 (= res!1755743 (not (is-IntegerValue!24857 (Broken!41425 lt!1513646))))))

(assert (=> b!4275478 (= e!2654406 e!2654408)))

(declare-fun b!4275479 () Bool)

(declare-fun inv!17 (TokenValue!8285) Bool)

(assert (=> b!4275479 (= e!2654406 (inv!17 (Broken!41425 lt!1513646)))))

(assert (= (and d!1262000 c!728023) b!4275476))

(assert (= (and d!1262000 (not c!728023)) b!4275477))

(assert (= (and b!4275477 c!728024) b!4275479))

(assert (= (and b!4275477 (not c!728024)) b!4275478))

(assert (= (and b!4275478 (not res!1755743)) b!4275475))

(declare-fun m!4871017 () Bool)

(assert (=> b!4275475 m!4871017))

(declare-fun m!4871019 () Bool)

(assert (=> b!4275476 m!4871019))

(declare-fun m!4871021 () Bool)

(assert (=> b!4275479 m!4871021))

(assert (=> b!4275427 d!1262000))

(declare-fun d!1262004 () Bool)

(declare-fun lt!1513666 () List!47454)

(declare-fun list!17218 (BalanceConc!28134) List!47454)

(assert (=> d!1262004 (= lt!1513666 (list!17218 c!5192))))

(declare-fun efficientList!556 (Conc!14312 List!47454) List!47454)

(declare-fun efficientList$default$2!192 (Conc!14312) List!47454)

(assert (=> d!1262004 (= lt!1513666 (efficientList!556 (c!728011 c!5192) (efficientList$default$2!192 (c!728011 c!5192))))))

(assert (=> d!1262004 (= (efficientList!554 c!5192) lt!1513666)))

(declare-fun bs!601959 () Bool)

(assert (= bs!601959 d!1262004))

(declare-fun m!4871029 () Bool)

(assert (=> bs!601959 m!4871029))

(declare-fun m!4871031 () Bool)

(assert (=> bs!601959 m!4871031))

(assert (=> bs!601959 m!4871031))

(declare-fun m!4871033 () Bool)

(assert (=> bs!601959 m!4871033))

(assert (=> start!410444 d!1262004))

(declare-fun d!1262008 () Bool)

(declare-fun isBalanced!3857 (Conc!14312) Bool)

(assert (=> d!1262008 (= (inv!62568 c!5192) (isBalanced!3857 (c!728011 c!5192)))))

(declare-fun bs!601960 () Bool)

(assert (= bs!601960 d!1262008))

(declare-fun m!4871035 () Bool)

(assert (=> bs!601960 m!4871035))

(assert (=> start!410444 d!1262008))

(declare-fun e!2654422 () Bool)

(declare-fun tp!1308476 () Bool)

(declare-fun tp!1308475 () Bool)

(declare-fun b!4275501 () Bool)

(assert (=> b!4275501 (= e!2654422 (and (inv!62567 (left!35227 (c!728011 c!5192))) tp!1308475 (inv!62567 (right!35557 (c!728011 c!5192))) tp!1308476))))

(declare-fun b!4275502 () Bool)

(declare-fun inv!62575 (IArray!28629) Bool)

(assert (=> b!4275502 (= e!2654422 (inv!62575 (xs!17618 (c!728011 c!5192))))))

(assert (=> b!4275429 (= tp!1308467 (and (inv!62567 (c!728011 c!5192)) e!2654422))))

(assert (= (and b!4275429 (is-Node!14312 (c!728011 c!5192))) b!4275501))

(assert (= (and b!4275429 (is-Leaf!22124 (c!728011 c!5192))) b!4275502))

(declare-fun m!4871037 () Bool)

(assert (=> b!4275501 m!4871037))

(declare-fun m!4871039 () Bool)

(assert (=> b!4275501 m!4871039))

(declare-fun m!4871041 () Bool)

(assert (=> b!4275502 m!4871041))

(assert (=> b!4275429 m!4870993))

(push 1)

(assert (not b!4275455))

(assert (not b!4275502))

(assert (not b!4275429))

(assert (not d!1262008))

(assert (not b!4275453))

(assert (not b!4275476))

(assert (not d!1262004))

(assert (not b!4275479))

(assert (not b!4275501))

(assert (not b!4275475))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

