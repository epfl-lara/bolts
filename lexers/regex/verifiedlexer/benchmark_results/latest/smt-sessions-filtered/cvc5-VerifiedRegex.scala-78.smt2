; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!562 () Bool)

(assert start!562)

(declare-datatypes ((List!48 0))(
  ( (Nil!46) (Cons!46 (h!5442 (_ BitVec 16)) (t!14527 List!48)) )
))
(declare-datatypes ((TokenValue!4 0))(
  ( (FloatLiteralValue!8 (text!473 List!48)) (TokenValueExt!3 (__x!297 Int)) (Broken!20 (value!3251 List!48)) (Object!5) (End!4) (Def!4) (Underscore!4) (Match!4) (Else!4) (Error!4) (Case!4) (If!4) (Extends!4) (Abstract!4) (Class!4) (Val!4) (DelimiterValue!8 (del!64 List!48)) (KeywordValue!10 (value!3252 List!48)) (CommentValue!8 (value!3253 List!48)) (WhitespaceValue!8 (value!3254 List!48)) (IndentationValue!4 (value!3255 List!48)) (String!321) (Int32!4) (Broken!21 (value!3256 List!48)) (Boolean!5) (Unit!5) (OperatorValue!7 (op!64 List!48)) (IdentifierValue!8 (value!3257 List!48)) (IdentifierValue!9 (value!3258 List!48)) (WhitespaceValue!9 (value!3259 List!48)) (True!8) (False!8) (Broken!22 (value!3260 List!48)) (Broken!23 (value!3261 List!48)) (True!9) (RightBrace!4) (RightBracket!4) (Colon!4) (Null!4) (Comma!4) (LeftBracket!4) (False!9) (LeftBrace!4) (ImaginaryLiteralValue!4 (text!474 List!48)) (StringLiteralValue!12 (value!3262 List!48)) (EOFValue!4 (value!3263 List!48)) (IdentValue!4 (value!3264 List!48)) (DelimiterValue!9 (value!3265 List!48)) (DedentValue!4 (value!3266 List!48)) (NewLineValue!4 (value!3267 List!48)) (IntegerValue!12 (value!3268 (_ BitVec 32)) (text!475 List!48)) (IntegerValue!13 (value!3269 Int) (text!476 List!48)) (Times!4) (Or!4) (Equal!4) (Minus!4) (Broken!24 (value!3270 List!48)) (And!4) (Div!4) (LessEqual!4) (Mod!4) (Concat!124) (Not!4) (Plus!4) (SpaceValue!4 (value!3271 List!48)) (IntegerValue!14 (value!3272 Int) (text!477 List!48)) (StringLiteralValue!13 (text!478 List!48)) (FloatLiteralValue!9 (text!479 List!48)) (BytesLiteralValue!4 (value!3273 List!48)) (CommentValue!9 (value!3274 List!48)) (StringLiteralValue!14 (value!3275 List!48)) (ErrorTokenValue!4 (msg!65 List!48)) )
))
(declare-fun inv!21 (TokenValue!4) Bool)

(assert (=> start!562 (not (inv!21 And!4))))

(declare-fun bs!232 () Bool)

(assert (= bs!232 start!562))

(declare-fun m!3577 () Bool)

(assert (=> bs!232 m!3577))

(push 1)

(assert (not start!562))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!26223 () Bool)

(declare-fun e!10204 () Bool)

(declare-fun inv!16 (TokenValue!4) Bool)

(assert (=> b!26223 (= e!10204 (inv!16 And!4))))

(declare-fun b!26224 () Bool)

(declare-fun e!10203 () Bool)

(declare-fun inv!17 (TokenValue!4) Bool)

(assert (=> b!26224 (= e!10203 (inv!17 And!4))))

(declare-fun d!1645 () Bool)

(declare-fun c!14295 () Bool)

(assert (=> d!1645 (= c!14295 (is-IntegerValue!12 And!4))))

(assert (=> d!1645 (= (inv!21 And!4) e!10204)))

(declare-fun b!26225 () Bool)

(declare-fun e!10202 () Bool)

(declare-fun inv!15 (TokenValue!4) Bool)

(assert (=> b!26225 (= e!10202 (inv!15 And!4))))

(declare-fun b!26226 () Bool)

(assert (=> b!26226 (= e!10204 e!10203)))

(declare-fun c!14296 () Bool)

(assert (=> b!26226 (= c!14296 (is-IntegerValue!13 And!4))))

(declare-fun b!26227 () Bool)

(declare-fun res!25405 () Bool)

(assert (=> b!26227 (=> res!25405 e!10202)))

(assert (=> b!26227 (= res!25405 (not (is-IntegerValue!14 And!4)))))

(assert (=> b!26227 (= e!10203 e!10202)))

(assert (= (and d!1645 c!14295) b!26223))

(assert (= (and d!1645 (not c!14295)) b!26226))

(assert (= (and b!26226 c!14296) b!26224))

(assert (= (and b!26226 (not c!14296)) b!26227))

(assert (= (and b!26227 (not res!25405)) b!26225))

(declare-fun m!3581 () Bool)

(assert (=> b!26223 m!3581))

(declare-fun m!3583 () Bool)

(assert (=> b!26224 m!3583))

(declare-fun m!3585 () Bool)

(assert (=> b!26225 m!3585))

(assert (=> start!562 d!1645))

(push 1)

(assert (not b!26223))

(assert (not b!26225))

(assert (not b!26224))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

