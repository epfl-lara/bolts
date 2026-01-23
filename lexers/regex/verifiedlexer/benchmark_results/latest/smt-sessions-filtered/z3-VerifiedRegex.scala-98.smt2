; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!724 () Bool)

(assert start!724)

(declare-datatypes ((List!89 0))(
  ( (Nil!87) (Cons!87 (h!5483 (_ BitVec 16)) (t!14568 List!89)) )
))
(declare-datatypes ((TokenValue!45 0))(
  ( (FloatLiteralValue!90 (text!760 List!89)) (TokenValueExt!44 (__x!338 Int)) (Broken!225 (value!4336 List!89)) (Object!46) (End!45) (Def!45) (Underscore!45) (Match!45) (Else!45) (Error!45) (Case!45) (If!45) (Extends!45) (Abstract!45) (Class!45) (Val!45) (DelimiterValue!90 (del!105 List!89)) (KeywordValue!51 (value!4337 List!89)) (CommentValue!90 (value!4338 List!89)) (WhitespaceValue!90 (value!4339 List!89)) (IndentationValue!45 (value!4340 List!89)) (String!442) (Int32!45) (Broken!226 (value!4341 List!89)) (Boolean!46) (Unit!46) (OperatorValue!48 (op!105 List!89)) (IdentifierValue!90 (value!4342 List!89)) (IdentifierValue!91 (value!4343 List!89)) (WhitespaceValue!91 (value!4344 List!89)) (True!90) (False!90) (Broken!227 (value!4345 List!89)) (Broken!228 (value!4346 List!89)) (True!91) (RightBrace!45) (RightBracket!45) (Colon!45) (Null!45) (Comma!45) (LeftBracket!45) (False!91) (LeftBrace!45) (ImaginaryLiteralValue!45 (text!761 List!89)) (StringLiteralValue!135 (value!4347 List!89)) (EOFValue!45 (value!4348 List!89)) (IdentValue!45 (value!4349 List!89)) (DelimiterValue!91 (value!4350 List!89)) (DedentValue!45 (value!4351 List!89)) (NewLineValue!45 (value!4352 List!89)) (IntegerValue!135 (value!4353 (_ BitVec 32)) (text!762 List!89)) (IntegerValue!136 (value!4354 Int) (text!763 List!89)) (Times!45) (Or!45) (Equal!45) (Minus!45) (Broken!229 (value!4355 List!89)) (And!45) (Div!45) (LessEqual!45) (Mod!45) (Concat!165) (Not!45) (Plus!45) (SpaceValue!45 (value!4356 List!89)) (IntegerValue!137 (value!4357 Int) (text!764 List!89)) (StringLiteralValue!136 (text!765 List!89)) (FloatLiteralValue!91 (text!766 List!89)) (BytesLiteralValue!45 (value!4358 List!89)) (CommentValue!91 (value!4359 List!89)) (StringLiteralValue!137 (value!4360 List!89)) (ErrorTokenValue!45 (msg!106 List!89)) )
))
(declare-fun inv!21 (TokenValue!45) Bool)

(assert (=> start!724 (not (inv!21 LessEqual!45))))

(declare-fun bs!313 () Bool)

(assert (= bs!313 start!724))

(declare-fun m!3887 () Bool)

(assert (=> bs!313 m!3887))

(check-sat (not start!724))
(check-sat)
(get-model)

(declare-fun b!26828 () Bool)

(declare-fun e!10566 () Bool)

(declare-fun inv!17 (TokenValue!45) Bool)

(assert (=> b!26828 (= e!10566 (inv!17 LessEqual!45))))

(declare-fun b!26829 () Bool)

(declare-fun e!10567 () Bool)

(assert (=> b!26829 (= e!10567 e!10566)))

(declare-fun c!14538 () Bool)

(get-info :version)

(assert (=> b!26829 (= c!14538 ((_ is IntegerValue!136) LessEqual!45))))

(declare-fun d!1747 () Bool)

(declare-fun c!14537 () Bool)

(assert (=> d!1747 (= c!14537 ((_ is IntegerValue!135) LessEqual!45))))

(assert (=> d!1747 (= (inv!21 LessEqual!45) e!10567)))

(declare-fun b!26830 () Bool)

(declare-fun res!25526 () Bool)

(declare-fun e!10565 () Bool)

(assert (=> b!26830 (=> res!25526 e!10565)))

(assert (=> b!26830 (= res!25526 (not ((_ is IntegerValue!137) LessEqual!45)))))

(assert (=> b!26830 (= e!10566 e!10565)))

(declare-fun b!26831 () Bool)

(declare-fun inv!15 (TokenValue!45) Bool)

(assert (=> b!26831 (= e!10565 (inv!15 LessEqual!45))))

(declare-fun b!26832 () Bool)

(declare-fun inv!16 (TokenValue!45) Bool)

(assert (=> b!26832 (= e!10567 (inv!16 LessEqual!45))))

(assert (= (and d!1747 c!14537) b!26832))

(assert (= (and d!1747 (not c!14537)) b!26829))

(assert (= (and b!26829 c!14538) b!26828))

(assert (= (and b!26829 (not c!14538)) b!26830))

(assert (= (and b!26830 (not res!25526)) b!26831))

(declare-fun m!3895 () Bool)

(assert (=> b!26828 m!3895))

(declare-fun m!3897 () Bool)

(assert (=> b!26831 m!3897))

(declare-fun m!3899 () Bool)

(assert (=> b!26832 m!3899))

(assert (=> start!724 d!1747))

(check-sat (not b!26831) (not b!26832) (not b!26828))
(check-sat)
