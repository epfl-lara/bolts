; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!570 () Bool)

(assert start!570)

(declare-datatypes ((List!50 0))(
  ( (Nil!48) (Cons!48 (h!5444 (_ BitVec 16)) (t!14529 List!50)) )
))
(declare-datatypes ((TokenValue!6 0))(
  ( (FloatLiteralValue!12 (text!487 List!50)) (TokenValueExt!5 (__x!299 Int)) (Broken!30 (value!3304 List!50)) (Object!7) (End!6) (Def!6) (Underscore!6) (Match!6) (Else!6) (Error!6) (Case!6) (If!6) (Extends!6) (Abstract!6) (Class!6) (Val!6) (DelimiterValue!12 (del!66 List!50)) (KeywordValue!12 (value!3305 List!50)) (CommentValue!12 (value!3306 List!50)) (WhitespaceValue!12 (value!3307 List!50)) (IndentationValue!6 (value!3308 List!50)) (String!327) (Int32!6) (Broken!31 (value!3309 List!50)) (Boolean!7) (Unit!7) (OperatorValue!9 (op!66 List!50)) (IdentifierValue!12 (value!3310 List!50)) (IdentifierValue!13 (value!3311 List!50)) (WhitespaceValue!13 (value!3312 List!50)) (True!12) (False!12) (Broken!32 (value!3313 List!50)) (Broken!33 (value!3314 List!50)) (True!13) (RightBrace!6) (RightBracket!6) (Colon!6) (Null!6) (Comma!6) (LeftBracket!6) (False!13) (LeftBrace!6) (ImaginaryLiteralValue!6 (text!488 List!50)) (StringLiteralValue!18 (value!3315 List!50)) (EOFValue!6 (value!3316 List!50)) (IdentValue!6 (value!3317 List!50)) (DelimiterValue!13 (value!3318 List!50)) (DedentValue!6 (value!3319 List!50)) (NewLineValue!6 (value!3320 List!50)) (IntegerValue!18 (value!3321 (_ BitVec 32)) (text!489 List!50)) (IntegerValue!19 (value!3322 Int) (text!490 List!50)) (Times!6) (Or!6) (Equal!6) (Minus!6) (Broken!34 (value!3323 List!50)) (And!6) (Div!6) (LessEqual!6) (Mod!6) (Concat!126) (Not!6) (Plus!6) (SpaceValue!6 (value!3324 List!50)) (IntegerValue!20 (value!3325 Int) (text!491 List!50)) (StringLiteralValue!19 (text!492 List!50)) (FloatLiteralValue!13 (text!493 List!50)) (BytesLiteralValue!6 (value!3326 List!50)) (CommentValue!13 (value!3327 List!50)) (StringLiteralValue!20 (value!3328 List!50)) (ErrorTokenValue!6 (msg!67 List!50)) )
))
(declare-fun inv!21 (TokenValue!6) Bool)

(assert (=> start!570 (not (inv!21 Boolean!7))))

(declare-fun bs!236 () Bool)

(assert (= bs!236 start!570))

(declare-fun m!3593 () Bool)

(assert (=> bs!236 m!3593))

(push 1)

(assert (not start!570))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!26251 () Bool)

(declare-fun e!10217 () Bool)

(declare-fun inv!17 (TokenValue!6) Bool)

(assert (=> b!26251 (= e!10217 (inv!17 Boolean!7))))

(declare-fun b!26252 () Bool)

(declare-fun e!10218 () Bool)

(assert (=> b!26252 (= e!10218 e!10217)))

(declare-fun c!14305 () Bool)

(assert (=> b!26252 (= c!14305 (is-IntegerValue!19 Boolean!7))))

(declare-fun b!26253 () Bool)

(declare-fun inv!16 (TokenValue!6) Bool)

(assert (=> b!26253 (= e!10218 (inv!16 Boolean!7))))

(declare-fun b!26255 () Bool)

(declare-fun res!25409 () Bool)

(declare-fun e!10216 () Bool)

(assert (=> b!26255 (=> res!25409 e!10216)))

(assert (=> b!26255 (= res!25409 (not (is-IntegerValue!20 Boolean!7)))))

(assert (=> b!26255 (= e!10217 e!10216)))

(declare-fun b!26254 () Bool)

(declare-fun inv!15 (TokenValue!6) Bool)

(assert (=> b!26254 (= e!10216 (inv!15 Boolean!7))))

(declare-fun d!1650 () Bool)

(declare-fun c!14306 () Bool)

(assert (=> d!1650 (= c!14306 (is-IntegerValue!18 Boolean!7))))

(assert (=> d!1650 (= (inv!21 Boolean!7) e!10218)))

(assert (= (and d!1650 c!14306) b!26253))

(assert (= (and d!1650 (not c!14306)) b!26252))

(assert (= (and b!26252 c!14305) b!26251))

(assert (= (and b!26252 (not c!14305)) b!26255))

(assert (= (and b!26255 (not res!25409)) b!26254))

(declare-fun m!3597 () Bool)

(assert (=> b!26251 m!3597))

(declare-fun m!3599 () Bool)

(assert (=> b!26253 m!3599))

(declare-fun m!3601 () Bool)

(assert (=> b!26254 m!3601))

(assert (=> start!570 d!1650))

(push 1)

(assert (not b!26253))

(assert (not b!26254))

(assert (not b!26251))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

