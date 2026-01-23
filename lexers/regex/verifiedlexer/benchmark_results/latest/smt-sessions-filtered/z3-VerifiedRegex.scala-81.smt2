; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!588 () Bool)

(assert start!588)

(declare-datatypes ((List!55 0))(
  ( (Nil!53) (Cons!53 (h!5449 (_ BitVec 16)) (t!14534 List!55)) )
))
(declare-datatypes ((TokenValue!11 0))(
  ( (FloatLiteralValue!22 (text!522 List!55)) (TokenValueExt!10 (__x!304 Int)) (Broken!55 (value!3435 List!55)) (Object!12) (End!11) (Def!11) (Underscore!11) (Match!11) (Else!11) (Error!11) (Case!11) (If!11) (Extends!11) (Abstract!11) (Class!11) (Val!11) (DelimiterValue!22 (del!71 List!55)) (KeywordValue!17 (value!3436 List!55)) (CommentValue!22 (value!3437 List!55)) (WhitespaceValue!22 (value!3438 List!55)) (IndentationValue!11 (value!3439 List!55)) (String!340) (Int32!11) (Broken!56 (value!3440 List!55)) (Boolean!12) (Unit!12) (OperatorValue!14 (op!71 List!55)) (IdentifierValue!22 (value!3441 List!55)) (IdentifierValue!23 (value!3442 List!55)) (WhitespaceValue!23 (value!3443 List!55)) (True!22) (False!22) (Broken!57 (value!3444 List!55)) (Broken!58 (value!3445 List!55)) (True!23) (RightBrace!11) (RightBracket!11) (Colon!11) (Null!11) (Comma!11) (LeftBracket!11) (False!23) (LeftBrace!11) (ImaginaryLiteralValue!11 (text!523 List!55)) (StringLiteralValue!33 (value!3446 List!55)) (EOFValue!11 (value!3447 List!55)) (IdentValue!11 (value!3448 List!55)) (DelimiterValue!23 (value!3449 List!55)) (DedentValue!11 (value!3450 List!55)) (NewLineValue!11 (value!3451 List!55)) (IntegerValue!33 (value!3452 (_ BitVec 32)) (text!524 List!55)) (IntegerValue!34 (value!3453 Int) (text!525 List!55)) (Times!11) (Or!11) (Equal!11) (Minus!11) (Broken!59 (value!3454 List!55)) (And!11) (Div!11) (LessEqual!11) (Mod!11) (Concat!131) (Not!11) (Plus!11) (SpaceValue!11 (value!3455 List!55)) (IntegerValue!35 (value!3456 Int) (text!526 List!55)) (StringLiteralValue!34 (text!527 List!55)) (FloatLiteralValue!23 (text!528 List!55)) (BytesLiteralValue!11 (value!3457 List!55)) (CommentValue!23 (value!3458 List!55)) (StringLiteralValue!35 (value!3459 List!55)) (ErrorTokenValue!11 (msg!72 List!55)) )
))
(declare-fun inv!21 (TokenValue!11) Bool)

(assert (=> start!588 (not (inv!21 Class!11))))

(declare-fun bs!245 () Bool)

(assert (= bs!245 start!588))

(declare-fun m!3627 () Bool)

(assert (=> bs!245 m!3627))

(check-sat (not start!588))
(check-sat)
(get-model)

(declare-fun d!1662 () Bool)

(declare-fun c!14334 () Bool)

(get-info :version)

(assert (=> d!1662 (= c!14334 ((_ is IntegerValue!33) Class!11))))

(declare-fun e!10260 () Bool)

(assert (=> d!1662 (= (inv!21 Class!11) e!10260)))

(declare-fun b!26318 () Bool)

(declare-fun res!25424 () Bool)

(declare-fun e!10259 () Bool)

(assert (=> b!26318 (=> res!25424 e!10259)))

(assert (=> b!26318 (= res!25424 (not ((_ is IntegerValue!35) Class!11)))))

(declare-fun e!10261 () Bool)

(assert (=> b!26318 (= e!10261 e!10259)))

(declare-fun b!26319 () Bool)

(declare-fun inv!17 (TokenValue!11) Bool)

(assert (=> b!26319 (= e!10261 (inv!17 Class!11))))

(declare-fun b!26320 () Bool)

(assert (=> b!26320 (= e!10260 e!10261)))

(declare-fun c!14333 () Bool)

(assert (=> b!26320 (= c!14333 ((_ is IntegerValue!34) Class!11))))

(declare-fun b!26321 () Bool)

(declare-fun inv!16 (TokenValue!11) Bool)

(assert (=> b!26321 (= e!10260 (inv!16 Class!11))))

(declare-fun b!26322 () Bool)

(declare-fun inv!15 (TokenValue!11) Bool)

(assert (=> b!26322 (= e!10259 (inv!15 Class!11))))

(assert (= (and d!1662 c!14334) b!26321))

(assert (= (and d!1662 (not c!14334)) b!26320))

(assert (= (and b!26320 c!14333) b!26319))

(assert (= (and b!26320 (not c!14333)) b!26318))

(assert (= (and b!26318 (not res!25424)) b!26322))

(declare-fun m!3635 () Bool)

(assert (=> b!26319 m!3635))

(declare-fun m!3637 () Bool)

(assert (=> b!26321 m!3637))

(declare-fun m!3639 () Bool)

(assert (=> b!26322 m!3639))

(assert (=> start!588 d!1662))

(check-sat (not b!26319) (not b!26321) (not b!26322))
(check-sat)
