; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!748 () Bool)

(assert start!748)

(declare-datatypes ((List!95 0))(
  ( (Nil!93) (Cons!93 (h!5489 (_ BitVec 16)) (t!14574 List!95)) )
))
(declare-datatypes ((TokenValue!51 0))(
  ( (FloatLiteralValue!102 (text!802 List!95)) (TokenValueExt!50 (__x!344 Int)) (Broken!255 (value!4495 List!95)) (Object!52) (End!51) (Def!51) (Underscore!51) (Match!51) (Else!51) (Error!51) (Case!51) (If!51) (Extends!51) (Abstract!51) (Class!51) (Val!51) (DelimiterValue!102 (del!111 List!95)) (KeywordValue!57 (value!4496 List!95)) (CommentValue!102 (value!4497 List!95)) (WhitespaceValue!102 (value!4498 List!95)) (IndentationValue!51 (value!4499 List!95)) (String!460) (Int32!51) (Broken!256 (value!4500 List!95)) (Boolean!52) (Unit!52) (OperatorValue!54 (op!111 List!95)) (IdentifierValue!102 (value!4501 List!95)) (IdentifierValue!103 (value!4502 List!95)) (WhitespaceValue!103 (value!4503 List!95)) (True!102) (False!102) (Broken!257 (value!4504 List!95)) (Broken!258 (value!4505 List!95)) (True!103) (RightBrace!51) (RightBracket!51) (Colon!51) (Null!51) (Comma!51) (LeftBracket!51) (False!103) (LeftBrace!51) (ImaginaryLiteralValue!51 (text!803 List!95)) (StringLiteralValue!153 (value!4506 List!95)) (EOFValue!51 (value!4507 List!95)) (IdentValue!51 (value!4508 List!95)) (DelimiterValue!103 (value!4509 List!95)) (DedentValue!51 (value!4510 List!95)) (NewLineValue!51 (value!4511 List!95)) (IntegerValue!153 (value!4512 (_ BitVec 32)) (text!804 List!95)) (IntegerValue!154 (value!4513 Int) (text!805 List!95)) (Times!51) (Or!51) (Equal!51) (Minus!51) (Broken!259 (value!4514 List!95)) (And!51) (Div!51) (LessEqual!51) (Mod!51) (Concat!171) (Not!51) (Plus!51) (SpaceValue!51 (value!4515 List!95)) (IntegerValue!155 (value!4516 Int) (text!806 List!95)) (StringLiteralValue!154 (text!807 List!95)) (FloatLiteralValue!103 (text!808 List!95)) (BytesLiteralValue!51 (value!4517 List!95)) (CommentValue!103 (value!4518 List!95)) (StringLiteralValue!155 (value!4519 List!95)) (ErrorTokenValue!51 (msg!112 List!95)) )
))
(declare-fun inv!21 (TokenValue!51) Bool)

(assert (=> start!748 (not (inv!21 Mod!51))))

(declare-fun bs!325 () Bool)

(assert (= bs!325 start!748))

(declare-fun m!3929 () Bool)

(assert (=> bs!325 m!3929))

(check-sat (not start!748))
(check-sat)
(get-model)

(declare-fun b!26914 () Bool)

(declare-fun e!10617 () Bool)

(declare-fun inv!17 (TokenValue!51) Bool)

(assert (=> b!26914 (= e!10617 (inv!17 Mod!51))))

(declare-fun b!26916 () Bool)

(declare-fun e!10616 () Bool)

(declare-fun inv!15 (TokenValue!51) Bool)

(assert (=> b!26916 (= e!10616 (inv!15 Mod!51))))

(declare-fun b!26918 () Bool)

(declare-fun e!10619 () Bool)

(declare-fun inv!16 (TokenValue!51) Bool)

(assert (=> b!26918 (= e!10619 (inv!16 Mod!51))))

(declare-fun d!1762 () Bool)

(declare-fun c!14574 () Bool)

(get-info :version)

(assert (=> d!1762 (= c!14574 ((_ is IntegerValue!153) Mod!51))))

(assert (=> d!1762 (= (inv!21 Mod!51) e!10619)))

(declare-fun b!26920 () Bool)

(assert (=> b!26920 (= e!10619 e!10617)))

(declare-fun c!14572 () Bool)

(assert (=> b!26920 (= c!14572 ((_ is IntegerValue!154) Mod!51))))

(declare-fun b!26922 () Bool)

(declare-fun res!25544 () Bool)

(assert (=> b!26922 (=> res!25544 e!10616)))

(assert (=> b!26922 (= res!25544 (not ((_ is IntegerValue!155) Mod!51)))))

(assert (=> b!26922 (= e!10617 e!10616)))

(assert (= (and d!1762 c!14574) b!26918))

(assert (= (and d!1762 (not c!14574)) b!26920))

(assert (= (and b!26920 c!14572) b!26914))

(assert (= (and b!26920 (not c!14572)) b!26922))

(assert (= (and b!26922 (not res!25544)) b!26916))

(declare-fun m!3932 () Bool)

(assert (=> b!26914 m!3932))

(declare-fun m!3937 () Bool)

(assert (=> b!26916 m!3937))

(declare-fun m!3941 () Bool)

(assert (=> b!26918 m!3941))

(assert (=> start!748 d!1762))

(check-sat (not b!26918) (not b!26914) (not b!26916))
(check-sat)
