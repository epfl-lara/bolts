; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!594 () Bool)

(assert start!594)

(declare-datatypes ((List!56 0))(
  ( (Nil!54) (Cons!54 (h!5450 (_ BitVec 16)) (t!14535 List!56)) )
))
(declare-datatypes ((TokenValue!12 0))(
  ( (FloatLiteralValue!24 (text!529 List!56)) (TokenValueExt!11 (__x!305 Int)) (Broken!60 (value!3463 List!56)) (Object!13) (End!12) (Def!12) (Underscore!12) (Match!12) (Else!12) (Error!12) (Case!12) (If!12) (Extends!12) (Abstract!12) (Class!12) (Val!12) (DelimiterValue!24 (del!72 List!56)) (KeywordValue!18 (value!3464 List!56)) (CommentValue!24 (value!3465 List!56)) (WhitespaceValue!24 (value!3466 List!56)) (IndentationValue!12 (value!3467 List!56)) (String!345) (Int32!12) (Broken!61 (value!3468 List!56)) (Boolean!13) (Unit!13) (OperatorValue!15 (op!72 List!56)) (IdentifierValue!24 (value!3469 List!56)) (IdentifierValue!25 (value!3470 List!56)) (WhitespaceValue!25 (value!3471 List!56)) (True!24) (False!24) (Broken!62 (value!3472 List!56)) (Broken!63 (value!3473 List!56)) (True!25) (RightBrace!12) (RightBracket!12) (Colon!12) (Null!12) (Comma!12) (LeftBracket!12) (False!25) (LeftBrace!12) (ImaginaryLiteralValue!12 (text!530 List!56)) (StringLiteralValue!36 (value!3474 List!56)) (EOFValue!12 (value!3475 List!56)) (IdentValue!12 (value!3476 List!56)) (DelimiterValue!25 (value!3477 List!56)) (DedentValue!12 (value!3478 List!56)) (NewLineValue!12 (value!3479 List!56)) (IntegerValue!36 (value!3480 (_ BitVec 32)) (text!531 List!56)) (IntegerValue!37 (value!3481 Int) (text!532 List!56)) (Times!12) (Or!12) (Equal!12) (Minus!12) (Broken!64 (value!3482 List!56)) (And!12) (Div!12) (LessEqual!12) (Mod!12) (Concat!132) (Not!12) (Plus!12) (SpaceValue!12 (value!3483 List!56)) (IntegerValue!38 (value!3484 Int) (text!533 List!56)) (StringLiteralValue!37 (text!534 List!56)) (FloatLiteralValue!25 (text!535 List!56)) (BytesLiteralValue!12 (value!3485 List!56)) (CommentValue!25 (value!3486 List!56)) (StringLiteralValue!38 (value!3487 List!56)) (ErrorTokenValue!12 (msg!73 List!56)) )
))
(declare-fun inv!21 (TokenValue!12) Bool)

(assert (=> start!594 (not (inv!21 Colon!12))))

(declare-fun bs!248 () Bool)

(assert (= bs!248 start!594))

(declare-fun m!3641 () Bool)

(assert (=> bs!248 m!3641))

(push 1)

(assert (not start!594))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!26341 () Bool)

(declare-fun e!10274 () Bool)

(declare-fun inv!15 (TokenValue!12) Bool)

(assert (=> b!26341 (= e!10274 (inv!15 Colon!12))))

(declare-fun b!26342 () Bool)

(declare-fun e!10272 () Bool)

(declare-fun inv!17 (TokenValue!12) Bool)

(assert (=> b!26342 (= e!10272 (inv!17 Colon!12))))

(declare-fun b!26343 () Bool)

(declare-fun e!10273 () Bool)

(assert (=> b!26343 (= e!10273 e!10272)))

(declare-fun c!14343 () Bool)

(assert (=> b!26343 (= c!14343 (is-IntegerValue!37 Colon!12))))

(declare-fun b!26344 () Bool)

(declare-fun res!25427 () Bool)

(assert (=> b!26344 (=> res!25427 e!10274)))

(assert (=> b!26344 (= res!25427 (not (is-IntegerValue!38 Colon!12)))))

(assert (=> b!26344 (= e!10272 e!10274)))

(declare-fun b!26345 () Bool)

(declare-fun inv!16 (TokenValue!12) Bool)

(assert (=> b!26345 (= e!10273 (inv!16 Colon!12))))

(declare-fun d!1665 () Bool)

(declare-fun c!14344 () Bool)

(assert (=> d!1665 (= c!14344 (is-IntegerValue!36 Colon!12))))

(assert (=> d!1665 (= (inv!21 Colon!12) e!10273)))

(assert (= (and d!1665 c!14344) b!26345))

(assert (= (and d!1665 (not c!14344)) b!26343))

(assert (= (and b!26343 c!14343) b!26342))

(assert (= (and b!26343 (not c!14343)) b!26344))

(assert (= (and b!26344 (not res!25427)) b!26341))

(declare-fun m!3645 () Bool)

(assert (=> b!26341 m!3645))

(declare-fun m!3647 () Bool)

(assert (=> b!26342 m!3647))

(declare-fun m!3649 () Bool)

(assert (=> b!26345 m!3649))

(assert (=> start!594 d!1665))

(push 1)

(assert (not b!26342))

(assert (not b!26345))

(assert (not b!26341))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

