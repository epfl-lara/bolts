; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!738 () Bool)

(assert start!738)

(declare-datatypes ((List!92 0))(
  ( (Nil!90) (Cons!90 (h!5486 (_ BitVec 16)) (t!14571 List!92)) )
))
(declare-datatypes ((TokenValue!48 0))(
  ( (FloatLiteralValue!96 (text!781 List!92)) (TokenValueExt!47 (__x!341 Int)) (Broken!240 (value!4417 List!92)) (Object!49) (End!48) (Def!48) (Underscore!48) (Match!48) (Else!48) (Error!48) (Case!48) (If!48) (Extends!48) (Abstract!48) (Class!48) (Val!48) (DelimiterValue!96 (del!108 List!92)) (KeywordValue!54 (value!4418 List!92)) (CommentValue!96 (value!4419 List!92)) (WhitespaceValue!96 (value!4420 List!92)) (IndentationValue!48 (value!4421 List!92)) (String!453) (Int32!48) (Broken!241 (value!4422 List!92)) (Boolean!49) (Unit!49) (OperatorValue!51 (op!108 List!92)) (IdentifierValue!96 (value!4423 List!92)) (IdentifierValue!97 (value!4424 List!92)) (WhitespaceValue!97 (value!4425 List!92)) (True!96) (False!96) (Broken!242 (value!4426 List!92)) (Broken!243 (value!4427 List!92)) (True!97) (RightBrace!48) (RightBracket!48) (Colon!48) (Null!48) (Comma!48) (LeftBracket!48) (False!97) (LeftBrace!48) (ImaginaryLiteralValue!48 (text!782 List!92)) (StringLiteralValue!144 (value!4428 List!92)) (EOFValue!48 (value!4429 List!92)) (IdentValue!48 (value!4430 List!92)) (DelimiterValue!97 (value!4431 List!92)) (DedentValue!48 (value!4432 List!92)) (NewLineValue!48 (value!4433 List!92)) (IntegerValue!144 (value!4434 (_ BitVec 32)) (text!783 List!92)) (IntegerValue!145 (value!4435 Int) (text!784 List!92)) (Times!48) (Or!48) (Equal!48) (Minus!48) (Broken!244 (value!4436 List!92)) (And!48) (Div!48) (LessEqual!48) (Mod!48) (Concat!168) (Not!48) (Plus!48) (SpaceValue!48 (value!4437 List!92)) (IntegerValue!146 (value!4438 Int) (text!785 List!92)) (StringLiteralValue!145 (text!786 List!92)) (FloatLiteralValue!97 (text!787 List!92)) (BytesLiteralValue!48 (value!4439 List!92)) (CommentValue!97 (value!4440 List!92)) (StringLiteralValue!146 (value!4441 List!92)) (ErrorTokenValue!48 (msg!109 List!92)) )
))
(declare-fun inv!21 (TokenValue!48) Bool)

(assert (=> start!738 (not (inv!21 Minus!48))))

(declare-fun bs!320 () Bool)

(assert (= bs!320 start!738))

(declare-fun m!3917 () Bool)

(assert (=> bs!320 m!3917))

(push 1)

(assert (not start!738))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!26873 () Bool)

(declare-fun e!10594 () Bool)

(declare-fun inv!17 (TokenValue!48) Bool)

(assert (=> b!26873 (= e!10594 (inv!17 Minus!48))))

(declare-fun b!26874 () Bool)

(declare-fun e!10593 () Bool)

(assert (=> b!26874 (= e!10593 e!10594)))

(declare-fun c!14555 () Bool)

(assert (=> b!26874 (= c!14555 (is-IntegerValue!145 Minus!48))))

(declare-fun b!26876 () Bool)

(declare-fun inv!16 (TokenValue!48) Bool)

(assert (=> b!26876 (= e!10593 (inv!16 Minus!48))))

(declare-fun b!26877 () Bool)

(declare-fun res!25535 () Bool)

(declare-fun e!10592 () Bool)

(assert (=> b!26877 (=> res!25535 e!10592)))

(assert (=> b!26877 (= res!25535 (not (is-IntegerValue!146 Minus!48)))))

(assert (=> b!26877 (= e!10594 e!10592)))

(declare-fun d!1755 () Bool)

(declare-fun c!14556 () Bool)

(assert (=> d!1755 (= c!14556 (is-IntegerValue!144 Minus!48))))

(assert (=> d!1755 (= (inv!21 Minus!48) e!10593)))

(declare-fun b!26875 () Bool)

(declare-fun inv!15 (TokenValue!48) Bool)

(assert (=> b!26875 (= e!10592 (inv!15 Minus!48))))

(assert (= (and d!1755 c!14556) b!26876))

(assert (= (and d!1755 (not c!14556)) b!26874))

(assert (= (and b!26874 c!14555) b!26873))

(assert (= (and b!26874 (not c!14555)) b!26877))

(assert (= (and b!26877 (not res!25535)) b!26875))

(declare-fun m!3921 () Bool)

(assert (=> b!26873 m!3921))

(declare-fun m!3923 () Bool)

(assert (=> b!26876 m!3923))

(declare-fun m!3925 () Bool)

(assert (=> b!26875 m!3925))

(assert (=> start!738 d!1755))

(push 1)

(assert (not b!26876))

(assert (not b!26873))

(assert (not b!26875))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

