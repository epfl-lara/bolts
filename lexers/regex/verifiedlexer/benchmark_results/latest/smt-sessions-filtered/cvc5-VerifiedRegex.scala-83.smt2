; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!602 () Bool)

(assert start!602)

(declare-datatypes ((List!58 0))(
  ( (Nil!56) (Cons!56 (h!5452 (_ BitVec 16)) (t!14537 List!58)) )
))
(declare-datatypes ((TokenValue!14 0))(
  ( (FloatLiteralValue!28 (text!543 List!58)) (TokenValueExt!13 (__x!307 Int)) (Broken!70 (value!3516 List!58)) (Object!15) (End!14) (Def!14) (Underscore!14) (Match!14) (Else!14) (Error!14) (Case!14) (If!14) (Extends!14) (Abstract!14) (Class!14) (Val!14) (DelimiterValue!28 (del!74 List!58)) (KeywordValue!20 (value!3517 List!58)) (CommentValue!28 (value!3518 List!58)) (WhitespaceValue!28 (value!3519 List!58)) (IndentationValue!14 (value!3520 List!58)) (String!351) (Int32!14) (Broken!71 (value!3521 List!58)) (Boolean!15) (Unit!15) (OperatorValue!17 (op!74 List!58)) (IdentifierValue!28 (value!3522 List!58)) (IdentifierValue!29 (value!3523 List!58)) (WhitespaceValue!29 (value!3524 List!58)) (True!28) (False!28) (Broken!72 (value!3525 List!58)) (Broken!73 (value!3526 List!58)) (True!29) (RightBrace!14) (RightBracket!14) (Colon!14) (Null!14) (Comma!14) (LeftBracket!14) (False!29) (LeftBrace!14) (ImaginaryLiteralValue!14 (text!544 List!58)) (StringLiteralValue!42 (value!3527 List!58)) (EOFValue!14 (value!3528 List!58)) (IdentValue!14 (value!3529 List!58)) (DelimiterValue!29 (value!3530 List!58)) (DedentValue!14 (value!3531 List!58)) (NewLineValue!14 (value!3532 List!58)) (IntegerValue!42 (value!3533 (_ BitVec 32)) (text!545 List!58)) (IntegerValue!43 (value!3534 Int) (text!546 List!58)) (Times!14) (Or!14) (Equal!14) (Minus!14) (Broken!74 (value!3535 List!58)) (And!14) (Div!14) (LessEqual!14) (Mod!14) (Concat!134) (Not!14) (Plus!14) (SpaceValue!14 (value!3536 List!58)) (IntegerValue!44 (value!3537 Int) (text!547 List!58)) (StringLiteralValue!43 (text!548 List!58)) (FloatLiteralValue!29 (text!549 List!58)) (BytesLiteralValue!14 (value!3538 List!58)) (CommentValue!29 (value!3539 List!58)) (StringLiteralValue!44 (value!3540 List!58)) (ErrorTokenValue!14 (msg!75 List!58)) )
))
(declare-fun inv!21 (TokenValue!14) Bool)

(assert (=> start!602 (not (inv!21 Comma!14))))

(declare-fun bs!252 () Bool)

(assert (= bs!252 start!602))

(declare-fun m!3657 () Bool)

(assert (=> bs!252 m!3657))

(push 1)

(assert (not start!602))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!26373 () Bool)

(declare-fun res!25435 () Bool)

(declare-fun e!10294 () Bool)

(assert (=> b!26373 (=> res!25435 e!10294)))

(assert (=> b!26373 (= res!25435 (not (is-IntegerValue!44 Comma!14)))))

(declare-fun e!10292 () Bool)

(assert (=> b!26373 (= e!10292 e!10294)))

(declare-fun b!26374 () Bool)

(declare-fun e!10293 () Bool)

(assert (=> b!26374 (= e!10293 e!10292)))

(declare-fun c!14356 () Bool)

(assert (=> b!26374 (= c!14356 (is-IntegerValue!43 Comma!14))))

(declare-fun b!26375 () Bool)

(declare-fun inv!16 (TokenValue!14) Bool)

(assert (=> b!26375 (= e!10293 (inv!16 Comma!14))))

(declare-fun d!1670 () Bool)

(declare-fun c!14355 () Bool)

(assert (=> d!1670 (= c!14355 (is-IntegerValue!42 Comma!14))))

(assert (=> d!1670 (= (inv!21 Comma!14) e!10293)))

(declare-fun b!26376 () Bool)

(declare-fun inv!17 (TokenValue!14) Bool)

(assert (=> b!26376 (= e!10292 (inv!17 Comma!14))))

(declare-fun b!26377 () Bool)

(declare-fun inv!15 (TokenValue!14) Bool)

(assert (=> b!26377 (= e!10294 (inv!15 Comma!14))))

(assert (= (and d!1670 c!14355) b!26375))

(assert (= (and d!1670 (not c!14355)) b!26374))

(assert (= (and b!26374 c!14356) b!26376))

(assert (= (and b!26374 (not c!14356)) b!26373))

(assert (= (and b!26373 (not res!25435)) b!26377))

(declare-fun m!3661 () Bool)

(assert (=> b!26375 m!3661))

(declare-fun m!3663 () Bool)

(assert (=> b!26376 m!3663))

(declare-fun m!3665 () Bool)

(assert (=> b!26377 m!3665))

(assert (=> start!602 d!1670))

(push 1)

(assert (not b!26375))

(assert (not b!26376))

(assert (not b!26377))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

