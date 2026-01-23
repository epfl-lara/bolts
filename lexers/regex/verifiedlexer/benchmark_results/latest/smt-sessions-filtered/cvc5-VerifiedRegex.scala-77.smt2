; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!554 () Bool)

(assert start!554)

(declare-datatypes ((List!46 0))(
  ( (Nil!44) (Cons!44 (h!5440 (_ BitVec 16)) (t!14525 List!46)) )
))
(declare-datatypes ((TokenValue!2 0))(
  ( (FloatLiteralValue!4 (text!459 List!46)) (TokenValueExt!1 (__x!295 Int)) (Broken!10 (value!3198 List!46)) (Object!3) (End!2) (Def!2) (Underscore!2) (Match!2) (Else!2) (Error!2) (Case!2) (If!2) (Extends!2) (Abstract!2) (Class!2) (Val!2) (DelimiterValue!4 (del!62 List!46)) (KeywordValue!8 (value!3199 List!46)) (CommentValue!4 (value!3200 List!46)) (WhitespaceValue!4 (value!3201 List!46)) (IndentationValue!2 (value!3202 List!46)) (String!315) (Int32!2) (Broken!11 (value!3203 List!46)) (Boolean!3) (Unit!3) (OperatorValue!5 (op!62 List!46)) (IdentifierValue!4 (value!3204 List!46)) (IdentifierValue!5 (value!3205 List!46)) (WhitespaceValue!5 (value!3206 List!46)) (True!4) (False!4) (Broken!12 (value!3207 List!46)) (Broken!13 (value!3208 List!46)) (True!5) (RightBrace!2) (RightBracket!2) (Colon!2) (Null!2) (Comma!2) (LeftBracket!2) (False!5) (LeftBrace!2) (ImaginaryLiteralValue!2 (text!460 List!46)) (StringLiteralValue!6 (value!3209 List!46)) (EOFValue!2 (value!3210 List!46)) (IdentValue!2 (value!3211 List!46)) (DelimiterValue!5 (value!3212 List!46)) (DedentValue!2 (value!3213 List!46)) (NewLineValue!2 (value!3214 List!46)) (IntegerValue!6 (value!3215 (_ BitVec 32)) (text!461 List!46)) (IntegerValue!7 (value!3216 Int) (text!462 List!46)) (Times!2) (Or!2) (Equal!2) (Minus!2) (Broken!14 (value!3217 List!46)) (And!2) (Div!2) (LessEqual!2) (Mod!2) (Concat!122) (Not!2) (Plus!2) (SpaceValue!2 (value!3218 List!46)) (IntegerValue!8 (value!3219 Int) (text!463 List!46)) (StringLiteralValue!7 (text!464 List!46)) (FloatLiteralValue!5 (text!465 List!46)) (BytesLiteralValue!2 (value!3220 List!46)) (CommentValue!5 (value!3221 List!46)) (StringLiteralValue!8 (value!3222 List!46)) (ErrorTokenValue!2 (msg!63 List!46)) )
))
(declare-fun inv!21 (TokenValue!2) Bool)

(assert (=> start!554 (not (inv!21 Abstract!2))))

(declare-fun bs!228 () Bool)

(assert (= bs!228 start!554))

(declare-fun m!3561 () Bool)

(assert (=> bs!228 m!3561))

(push 1)

(assert (not start!554))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!26184 () Bool)

(declare-fun res!25397 () Bool)

(declare-fun e!10179 () Bool)

(assert (=> b!26184 (=> res!25397 e!10179)))

(assert (=> b!26184 (= res!25397 (not (is-IntegerValue!8 Abstract!2)))))

(declare-fun e!10178 () Bool)

(assert (=> b!26184 (= e!10178 e!10179)))

(declare-fun b!26185 () Bool)

(declare-fun inv!17 (TokenValue!2) Bool)

(assert (=> b!26185 (= e!10178 (inv!17 Abstract!2))))

(declare-fun b!26186 () Bool)

(declare-fun e!10180 () Bool)

(declare-fun inv!16 (TokenValue!2) Bool)

(assert (=> b!26186 (= e!10180 (inv!16 Abstract!2))))

(declare-fun b!26187 () Bool)

(declare-fun inv!15 (TokenValue!2) Bool)

(assert (=> b!26187 (= e!10179 (inv!15 Abstract!2))))

(declare-fun d!1640 () Bool)

(declare-fun c!14279 () Bool)

(assert (=> d!1640 (= c!14279 (is-IntegerValue!6 Abstract!2))))

(assert (=> d!1640 (= (inv!21 Abstract!2) e!10180)))

(declare-fun b!26183 () Bool)

(assert (=> b!26183 (= e!10180 e!10178)))

(declare-fun c!14280 () Bool)

(assert (=> b!26183 (= c!14280 (is-IntegerValue!7 Abstract!2))))

(assert (= (and d!1640 c!14279) b!26186))

(assert (= (and d!1640 (not c!14279)) b!26183))

(assert (= (and b!26183 c!14280) b!26185))

(assert (= (and b!26183 (not c!14280)) b!26184))

(assert (= (and b!26184 (not res!25397)) b!26187))

(declare-fun m!3565 () Bool)

(assert (=> b!26185 m!3565))

(declare-fun m!3567 () Bool)

(assert (=> b!26186 m!3567))

(declare-fun m!3569 () Bool)

(assert (=> b!26187 m!3569))

(assert (=> start!554 d!1640))

(push 1)

(assert (not b!26187))

(assert (not b!26186))

(assert (not b!26185))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

