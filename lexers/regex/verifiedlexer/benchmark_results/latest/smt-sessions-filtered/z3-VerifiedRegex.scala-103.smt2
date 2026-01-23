; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!764 () Bool)

(assert start!764)

(declare-datatypes ((List!99 0))(
  ( (Nil!97) (Cons!97 (h!5493 (_ BitVec 16)) (t!14578 List!99)) )
))
(declare-datatypes ((TokenValue!55 0))(
  ( (FloatLiteralValue!110 (text!830 List!99)) (TokenValueExt!54 (__x!348 Int)) (Broken!275 (value!4601 List!99)) (Object!56) (End!55) (Def!55) (Underscore!55) (Match!55) (Else!55) (Error!55) (Case!55) (If!55) (Extends!55) (Abstract!55) (Class!55) (Val!55) (DelimiterValue!110 (del!115 List!99)) (KeywordValue!61 (value!4602 List!99)) (CommentValue!110 (value!4603 List!99)) (WhitespaceValue!110 (value!4604 List!99)) (IndentationValue!55 (value!4605 List!99)) (String!472) (Int32!55) (Broken!276 (value!4606 List!99)) (Boolean!56) (Unit!56) (OperatorValue!58 (op!115 List!99)) (IdentifierValue!110 (value!4607 List!99)) (IdentifierValue!111 (value!4608 List!99)) (WhitespaceValue!111 (value!4609 List!99)) (True!110) (False!110) (Broken!277 (value!4610 List!99)) (Broken!278 (value!4611 List!99)) (True!111) (RightBrace!55) (RightBracket!55) (Colon!55) (Null!55) (Comma!55) (LeftBracket!55) (False!111) (LeftBrace!55) (ImaginaryLiteralValue!55 (text!831 List!99)) (StringLiteralValue!165 (value!4612 List!99)) (EOFValue!55 (value!4613 List!99)) (IdentValue!55 (value!4614 List!99)) (DelimiterValue!111 (value!4615 List!99)) (DedentValue!55 (value!4616 List!99)) (NewLineValue!55 (value!4617 List!99)) (IntegerValue!165 (value!4618 (_ BitVec 32)) (text!832 List!99)) (IntegerValue!166 (value!4619 Int) (text!833 List!99)) (Times!55) (Or!55) (Equal!55) (Minus!55) (Broken!279 (value!4620 List!99)) (And!55) (Div!55) (LessEqual!55) (Mod!55) (Concat!175) (Not!55) (Plus!55) (SpaceValue!55 (value!4621 List!99)) (IntegerValue!167 (value!4622 Int) (text!834 List!99)) (StringLiteralValue!166 (text!835 List!99)) (FloatLiteralValue!111 (text!836 List!99)) (BytesLiteralValue!55 (value!4623 List!99)) (CommentValue!111 (value!4624 List!99)) (StringLiteralValue!167 (value!4625 List!99)) (ErrorTokenValue!55 (msg!116 List!99)) )
))
(declare-fun inv!21 (TokenValue!55) Bool)

(assert (=> start!764 (not (inv!21 Null!55))))

(declare-fun bs!333 () Bool)

(assert (= bs!333 start!764))

(declare-fun m!3961 () Bool)

(assert (=> bs!333 m!3961))

(check-sat (not start!764))
(check-sat)
(get-model)

(declare-fun b!26963 () Bool)

(declare-fun e!10647 () Bool)

(declare-fun inv!17 (TokenValue!55) Bool)

(assert (=> b!26963 (= e!10647 (inv!17 Null!55))))

(declare-fun d!1770 () Bool)

(declare-fun c!14592 () Bool)

(get-info :version)

(assert (=> d!1770 (= c!14592 ((_ is IntegerValue!165) Null!55))))

(declare-fun e!10646 () Bool)

(assert (=> d!1770 (= (inv!21 Null!55) e!10646)))

(declare-fun b!26964 () Bool)

(assert (=> b!26964 (= e!10646 e!10647)))

(declare-fun c!14591 () Bool)

(assert (=> b!26964 (= c!14591 ((_ is IntegerValue!166) Null!55))))

(declare-fun b!26965 () Bool)

(declare-fun res!25553 () Bool)

(declare-fun e!10648 () Bool)

(assert (=> b!26965 (=> res!25553 e!10648)))

(assert (=> b!26965 (= res!25553 (not ((_ is IntegerValue!167) Null!55)))))

(assert (=> b!26965 (= e!10647 e!10648)))

(declare-fun b!26966 () Bool)

(declare-fun inv!16 (TokenValue!55) Bool)

(assert (=> b!26966 (= e!10646 (inv!16 Null!55))))

(declare-fun b!26967 () Bool)

(declare-fun inv!15 (TokenValue!55) Bool)

(assert (=> b!26967 (= e!10648 (inv!15 Null!55))))

(assert (= (and d!1770 c!14592) b!26966))

(assert (= (and d!1770 (not c!14592)) b!26964))

(assert (= (and b!26964 c!14591) b!26963))

(assert (= (and b!26964 (not c!14591)) b!26965))

(assert (= (and b!26965 (not res!25553)) b!26967))

(declare-fun m!3963 () Bool)

(assert (=> b!26963 m!3963))

(declare-fun m!3965 () Bool)

(assert (=> b!26966 m!3965))

(declare-fun m!3967 () Bool)

(assert (=> b!26967 m!3967))

(assert (=> start!764 d!1770))

(check-sat (not b!26966) (not b!26967) (not b!26963))
(check-sat)
