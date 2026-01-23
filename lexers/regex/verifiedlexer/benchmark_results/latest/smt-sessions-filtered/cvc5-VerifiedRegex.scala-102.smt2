; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!754 () Bool)

(assert start!754)

(declare-datatypes ((List!96 0))(
  ( (Nil!94) (Cons!94 (h!5490 (_ BitVec 16)) (t!14575 List!96)) )
))
(declare-datatypes ((TokenValue!52 0))(
  ( (FloatLiteralValue!104 (text!809 List!96)) (TokenValueExt!51 (__x!345 Int)) (Broken!260 (value!4523 List!96)) (Object!53) (End!52) (Def!52) (Underscore!52) (Match!52) (Else!52) (Error!52) (Case!52) (If!52) (Extends!52) (Abstract!52) (Class!52) (Val!52) (DelimiterValue!104 (del!112 List!96)) (KeywordValue!58 (value!4524 List!96)) (CommentValue!104 (value!4525 List!96)) (WhitespaceValue!104 (value!4526 List!96)) (IndentationValue!52 (value!4527 List!96)) (String!465) (Int32!52) (Broken!261 (value!4528 List!96)) (Boolean!53) (Unit!53) (OperatorValue!55 (op!112 List!96)) (IdentifierValue!104 (value!4529 List!96)) (IdentifierValue!105 (value!4530 List!96)) (WhitespaceValue!105 (value!4531 List!96)) (True!104) (False!104) (Broken!262 (value!4532 List!96)) (Broken!263 (value!4533 List!96)) (True!105) (RightBrace!52) (RightBracket!52) (Colon!52) (Null!52) (Comma!52) (LeftBracket!52) (False!105) (LeftBrace!52) (ImaginaryLiteralValue!52 (text!810 List!96)) (StringLiteralValue!156 (value!4534 List!96)) (EOFValue!52 (value!4535 List!96)) (IdentValue!52 (value!4536 List!96)) (DelimiterValue!105 (value!4537 List!96)) (DedentValue!52 (value!4538 List!96)) (NewLineValue!52 (value!4539 List!96)) (IntegerValue!156 (value!4540 (_ BitVec 32)) (text!811 List!96)) (IntegerValue!157 (value!4541 Int) (text!812 List!96)) (Times!52) (Or!52) (Equal!52) (Minus!52) (Broken!264 (value!4542 List!96)) (And!52) (Div!52) (LessEqual!52) (Mod!52) (Concat!172) (Not!52) (Plus!52) (SpaceValue!52 (value!4543 List!96)) (IntegerValue!158 (value!4544 Int) (text!813 List!96)) (StringLiteralValue!157 (text!814 List!96)) (FloatLiteralValue!105 (text!815 List!96)) (BytesLiteralValue!52 (value!4545 List!96)) (CommentValue!105 (value!4546 List!96)) (StringLiteralValue!158 (value!4547 List!96)) (ErrorTokenValue!52 (msg!113 List!96)) )
))
(declare-fun inv!21 (TokenValue!52) Bool)

(assert (=> start!754 (not (inv!21 Not!52))))

(declare-fun bs!328 () Bool)

(assert (= bs!328 start!754))

(declare-fun m!3943 () Bool)

(assert (=> bs!328 m!3943))

(push 1)

(assert (not start!754))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!26943 () Bool)

(declare-fun res!25549 () Bool)

(declare-fun e!10634 () Bool)

(assert (=> b!26943 (=> res!25549 e!10634)))

(assert (=> b!26943 (= res!25549 (not (is-IntegerValue!158 Not!52)))))

(declare-fun e!10636 () Bool)

(assert (=> b!26943 (= e!10636 e!10634)))

(declare-fun b!26944 () Bool)

(declare-fun e!10635 () Bool)

(declare-fun inv!16 (TokenValue!52) Bool)

(assert (=> b!26944 (= e!10635 (inv!16 Not!52))))

(declare-fun b!26945 () Bool)

(declare-fun inv!17 (TokenValue!52) Bool)

(assert (=> b!26945 (= e!10636 (inv!17 Not!52))))

(declare-fun b!26946 () Bool)

(declare-fun inv!15 (TokenValue!52) Bool)

(assert (=> b!26946 (= e!10634 (inv!15 Not!52))))

(declare-fun d!1765 () Bool)

(declare-fun c!14583 () Bool)

(assert (=> d!1765 (= c!14583 (is-IntegerValue!156 Not!52))))

(assert (=> d!1765 (= (inv!21 Not!52) e!10635)))

(declare-fun b!26947 () Bool)

(assert (=> b!26947 (= e!10635 e!10636)))

(declare-fun c!14584 () Bool)

(assert (=> b!26947 (= c!14584 (is-IntegerValue!157 Not!52))))

(assert (= (and d!1765 c!14583) b!26944))

(assert (= (and d!1765 (not c!14583)) b!26947))

(assert (= (and b!26947 c!14584) b!26945))

(assert (= (and b!26947 (not c!14584)) b!26943))

(assert (= (and b!26943 (not res!25549)) b!26946))

(declare-fun m!3947 () Bool)

(assert (=> b!26944 m!3947))

(declare-fun m!3949 () Bool)

(assert (=> b!26945 m!3949))

(declare-fun m!3951 () Bool)

(assert (=> b!26946 m!3951))

(assert (=> start!754 d!1765))

(push 1)

(assert (not b!26944))

(assert (not b!26945))

(assert (not b!26946))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

