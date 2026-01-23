; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!580 () Bool)

(assert start!580)

(declare-datatypes ((List!53 0))(
  ( (Nil!51) (Cons!51 (h!5447 (_ BitVec 16)) (t!14532 List!53)) )
))
(declare-datatypes ((TokenValue!9 0))(
  ( (FloatLiteralValue!18 (text!508 List!53)) (TokenValueExt!8 (__x!302 Int)) (Broken!45 (value!3382 List!53)) (Object!10) (End!9) (Def!9) (Underscore!9) (Match!9) (Else!9) (Error!9) (Case!9) (If!9) (Extends!9) (Abstract!9) (Class!9) (Val!9) (DelimiterValue!18 (del!69 List!53)) (KeywordValue!15 (value!3383 List!53)) (CommentValue!18 (value!3384 List!53)) (WhitespaceValue!18 (value!3385 List!53)) (IndentationValue!9 (value!3386 List!53)) (String!334) (Int32!9) (Broken!46 (value!3387 List!53)) (Boolean!10) (Unit!10) (OperatorValue!12 (op!69 List!53)) (IdentifierValue!18 (value!3388 List!53)) (IdentifierValue!19 (value!3389 List!53)) (WhitespaceValue!19 (value!3390 List!53)) (True!18) (False!18) (Broken!47 (value!3391 List!53)) (Broken!48 (value!3392 List!53)) (True!19) (RightBrace!9) (RightBracket!9) (Colon!9) (Null!9) (Comma!9) (LeftBracket!9) (False!19) (LeftBrace!9) (ImaginaryLiteralValue!9 (text!509 List!53)) (StringLiteralValue!27 (value!3393 List!53)) (EOFValue!9 (value!3394 List!53)) (IdentValue!9 (value!3395 List!53)) (DelimiterValue!19 (value!3396 List!53)) (DedentValue!9 (value!3397 List!53)) (NewLineValue!9 (value!3398 List!53)) (IntegerValue!27 (value!3399 (_ BitVec 32)) (text!510 List!53)) (IntegerValue!28 (value!3400 Int) (text!511 List!53)) (Times!9) (Or!9) (Equal!9) (Minus!9) (Broken!49 (value!3401 List!53)) (And!9) (Div!9) (LessEqual!9) (Mod!9) (Concat!129) (Not!9) (Plus!9) (SpaceValue!9 (value!3402 List!53)) (IntegerValue!29 (value!3403 Int) (text!512 List!53)) (StringLiteralValue!28 (text!513 List!53)) (FloatLiteralValue!19 (text!514 List!53)) (BytesLiteralValue!9 (value!3404 List!53)) (CommentValue!19 (value!3405 List!53)) (StringLiteralValue!29 (value!3406 List!53)) (ErrorTokenValue!9 (msg!70 List!53)) )
))
(declare-fun inv!21 (TokenValue!9) Bool)

(assert (=> start!580 (not (inv!21 Case!9))))

(declare-fun bs!241 () Bool)

(assert (= bs!241 start!580))

(declare-fun m!3611 () Bool)

(assert (=> bs!241 m!3611))

(check-sat (not start!580))
(check-sat)
(get-model)

(declare-fun b!26288 () Bool)

(declare-fun e!10241 () Bool)

(declare-fun e!10243 () Bool)

(assert (=> b!26288 (= e!10241 e!10243)))

(declare-fun c!14321 () Bool)

(get-info :version)

(assert (=> b!26288 (= c!14321 ((_ is IntegerValue!28) Case!9))))

(declare-fun b!26289 () Bool)

(declare-fun res!25418 () Bool)

(declare-fun e!10242 () Bool)

(assert (=> b!26289 (=> res!25418 e!10242)))

(assert (=> b!26289 (= res!25418 (not ((_ is IntegerValue!29) Case!9)))))

(assert (=> b!26289 (= e!10243 e!10242)))

(declare-fun b!26290 () Bool)

(declare-fun inv!16 (TokenValue!9) Bool)

(assert (=> b!26290 (= e!10241 (inv!16 Case!9))))

(declare-fun b!26291 () Bool)

(declare-fun inv!17 (TokenValue!9) Bool)

(assert (=> b!26291 (= e!10243 (inv!17 Case!9))))

(declare-fun b!26292 () Bool)

(declare-fun inv!15 (TokenValue!9) Bool)

(assert (=> b!26292 (= e!10242 (inv!15 Case!9))))

(declare-fun d!1657 () Bool)

(declare-fun c!14322 () Bool)

(assert (=> d!1657 (= c!14322 ((_ is IntegerValue!27) Case!9))))

(assert (=> d!1657 (= (inv!21 Case!9) e!10241)))

(assert (= (and d!1657 c!14322) b!26290))

(assert (= (and d!1657 (not c!14322)) b!26288))

(assert (= (and b!26288 c!14321) b!26291))

(assert (= (and b!26288 (not c!14321)) b!26289))

(assert (= (and b!26289 (not res!25418)) b!26292))

(declare-fun m!3619 () Bool)

(assert (=> b!26290 m!3619))

(declare-fun m!3621 () Bool)

(assert (=> b!26291 m!3621))

(declare-fun m!3623 () Bool)

(assert (=> b!26292 m!3623))

(assert (=> start!580 d!1657))

(check-sat (not b!26292) (not b!26290) (not b!26291))
(check-sat)
