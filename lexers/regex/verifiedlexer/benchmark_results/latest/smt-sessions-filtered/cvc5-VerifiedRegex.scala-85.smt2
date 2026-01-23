; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!618 () Bool)

(assert start!618)

(declare-datatypes ((List!62 0))(
  ( (Nil!60) (Cons!60 (h!5456 (_ BitVec 16)) (t!14541 List!62)) )
))
(declare-datatypes ((TokenValue!18 0))(
  ( (FloatLiteralValue!36 (text!571 List!62)) (TokenValueExt!17 (__x!311 Int)) (Broken!90 (value!3622 List!62)) (Object!19) (End!18) (Def!18) (Underscore!18) (Match!18) (Else!18) (Error!18) (Case!18) (If!18) (Extends!18) (Abstract!18) (Class!18) (Val!18) (DelimiterValue!36 (del!78 List!62)) (KeywordValue!24 (value!3623 List!62)) (CommentValue!36 (value!3624 List!62)) (WhitespaceValue!36 (value!3625 List!62)) (IndentationValue!18 (value!3626 List!62)) (String!363) (Int32!18) (Broken!91 (value!3627 List!62)) (Boolean!19) (Unit!19) (OperatorValue!21 (op!78 List!62)) (IdentifierValue!36 (value!3628 List!62)) (IdentifierValue!37 (value!3629 List!62)) (WhitespaceValue!37 (value!3630 List!62)) (True!36) (False!36) (Broken!92 (value!3631 List!62)) (Broken!93 (value!3632 List!62)) (True!37) (RightBrace!18) (RightBracket!18) (Colon!18) (Null!18) (Comma!18) (LeftBracket!18) (False!37) (LeftBrace!18) (ImaginaryLiteralValue!18 (text!572 List!62)) (StringLiteralValue!54 (value!3633 List!62)) (EOFValue!18 (value!3634 List!62)) (IdentValue!18 (value!3635 List!62)) (DelimiterValue!37 (value!3636 List!62)) (DedentValue!18 (value!3637 List!62)) (NewLineValue!18 (value!3638 List!62)) (IntegerValue!54 (value!3639 (_ BitVec 32)) (text!573 List!62)) (IntegerValue!55 (value!3640 Int) (text!574 List!62)) (Times!18) (Or!18) (Equal!18) (Minus!18) (Broken!94 (value!3641 List!62)) (And!18) (Div!18) (LessEqual!18) (Mod!18) (Concat!138) (Not!18) (Plus!18) (SpaceValue!18 (value!3642 List!62)) (IntegerValue!56 (value!3643 Int) (text!575 List!62)) (StringLiteralValue!55 (text!576 List!62)) (FloatLiteralValue!37 (text!577 List!62)) (BytesLiteralValue!18 (value!3644 List!62)) (CommentValue!37 (value!3645 List!62)) (StringLiteralValue!56 (value!3646 List!62)) (ErrorTokenValue!18 (msg!79 List!62)) )
))
(declare-fun inv!21 (TokenValue!18) Bool)

(assert (=> start!618 (not (inv!21 Def!18))))

(declare-fun bs!260 () Bool)

(assert (= bs!260 start!618))

(declare-fun m!3689 () Bool)

(assert (=> bs!260 m!3689))

(push 1)

(assert (not start!618))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!26433 () Bool)

(declare-fun e!10329 () Bool)

(declare-fun inv!15 (TokenValue!18) Bool)

(assert (=> b!26433 (= e!10329 (inv!15 Def!18))))

(declare-fun b!26434 () Bool)

(declare-fun e!10330 () Bool)

(declare-fun inv!17 (TokenValue!18) Bool)

(assert (=> b!26434 (= e!10330 (inv!17 Def!18))))

(declare-fun b!26435 () Bool)

(declare-fun e!10328 () Bool)

(declare-fun inv!16 (TokenValue!18) Bool)

(assert (=> b!26435 (= e!10328 (inv!16 Def!18))))

(declare-fun d!1680 () Bool)

(declare-fun c!14380 () Bool)

(assert (=> d!1680 (= c!14380 (is-IntegerValue!54 Def!18))))

(assert (=> d!1680 (= (inv!21 Def!18) e!10328)))

(declare-fun b!26436 () Bool)

(declare-fun res!25447 () Bool)

(assert (=> b!26436 (=> res!25447 e!10329)))

(assert (=> b!26436 (= res!25447 (not (is-IntegerValue!56 Def!18)))))

(assert (=> b!26436 (= e!10330 e!10329)))

(declare-fun b!26437 () Bool)

(assert (=> b!26437 (= e!10328 e!10330)))

(declare-fun c!14379 () Bool)

(assert (=> b!26437 (= c!14379 (is-IntegerValue!55 Def!18))))

(assert (= (and d!1680 c!14380) b!26435))

(assert (= (and d!1680 (not c!14380)) b!26437))

(assert (= (and b!26437 c!14379) b!26434))

(assert (= (and b!26437 (not c!14379)) b!26436))

(assert (= (and b!26436 (not res!25447)) b!26433))

(declare-fun m!3693 () Bool)

(assert (=> b!26433 m!3693))

(declare-fun m!3695 () Bool)

(assert (=> b!26434 m!3695))

(declare-fun m!3697 () Bool)

(assert (=> b!26435 m!3697))

(assert (=> start!618 d!1680))

(push 1)

(assert (not b!26433))

(assert (not b!26434))

(assert (not b!26435))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

