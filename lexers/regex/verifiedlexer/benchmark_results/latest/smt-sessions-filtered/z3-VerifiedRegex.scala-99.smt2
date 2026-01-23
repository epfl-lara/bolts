; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!732 () Bool)

(assert start!732)

(declare-datatypes ((List!91 0))(
  ( (Nil!89) (Cons!89 (h!5485 (_ BitVec 16)) (t!14570 List!91)) )
))
(declare-datatypes ((TokenValue!47 0))(
  ( (FloatLiteralValue!94 (text!774 List!91)) (TokenValueExt!46 (__x!340 Int)) (Broken!235 (value!4389 List!91)) (Object!48) (End!47) (Def!47) (Underscore!47) (Match!47) (Else!47) (Error!47) (Case!47) (If!47) (Extends!47) (Abstract!47) (Class!47) (Val!47) (DelimiterValue!94 (del!107 List!91)) (KeywordValue!53 (value!4390 List!91)) (CommentValue!94 (value!4391 List!91)) (WhitespaceValue!94 (value!4392 List!91)) (IndentationValue!47 (value!4393 List!91)) (String!448) (Int32!47) (Broken!236 (value!4394 List!91)) (Boolean!48) (Unit!48) (OperatorValue!50 (op!107 List!91)) (IdentifierValue!94 (value!4395 List!91)) (IdentifierValue!95 (value!4396 List!91)) (WhitespaceValue!95 (value!4397 List!91)) (True!94) (False!94) (Broken!237 (value!4398 List!91)) (Broken!238 (value!4399 List!91)) (True!95) (RightBrace!47) (RightBracket!47) (Colon!47) (Null!47) (Comma!47) (LeftBracket!47) (False!95) (LeftBrace!47) (ImaginaryLiteralValue!47 (text!775 List!91)) (StringLiteralValue!141 (value!4400 List!91)) (EOFValue!47 (value!4401 List!91)) (IdentValue!47 (value!4402 List!91)) (DelimiterValue!95 (value!4403 List!91)) (DedentValue!47 (value!4404 List!91)) (NewLineValue!47 (value!4405 List!91)) (IntegerValue!141 (value!4406 (_ BitVec 32)) (text!776 List!91)) (IntegerValue!142 (value!4407 Int) (text!777 List!91)) (Times!47) (Or!47) (Equal!47) (Minus!47) (Broken!239 (value!4408 List!91)) (And!47) (Div!47) (LessEqual!47) (Mod!47) (Concat!167) (Not!47) (Plus!47) (SpaceValue!47 (value!4409 List!91)) (IntegerValue!143 (value!4410 Int) (text!778 List!91)) (StringLiteralValue!142 (text!779 List!91)) (FloatLiteralValue!95 (text!780 List!91)) (BytesLiteralValue!47 (value!4411 List!91)) (CommentValue!95 (value!4412 List!91)) (StringLiteralValue!143 (value!4413 List!91)) (ErrorTokenValue!47 (msg!108 List!91)) )
))
(declare-fun inv!21 (TokenValue!47) Bool)

(assert (=> start!732 (not (inv!21 Match!47))))

(declare-fun bs!317 () Bool)

(assert (= bs!317 start!732))

(declare-fun m!3903 () Bool)

(assert (=> bs!317 m!3903))

(check-sat (not start!732))
(check-sat)
(get-model)

(declare-fun d!1752 () Bool)

(declare-fun c!14549 () Bool)

(get-info :version)

(assert (=> d!1752 (= c!14549 ((_ is IntegerValue!141) Match!47))))

(declare-fun e!10584 () Bool)

(assert (=> d!1752 (= (inv!21 Match!47) e!10584)))

(declare-fun b!26858 () Bool)

(declare-fun e!10583 () Bool)

(assert (=> b!26858 (= e!10584 e!10583)))

(declare-fun c!14550 () Bool)

(assert (=> b!26858 (= c!14550 ((_ is IntegerValue!142) Match!47))))

(declare-fun b!26859 () Bool)

(declare-fun e!10585 () Bool)

(declare-fun inv!15 (TokenValue!47) Bool)

(assert (=> b!26859 (= e!10585 (inv!15 Match!47))))

(declare-fun b!26860 () Bool)

(declare-fun inv!17 (TokenValue!47) Bool)

(assert (=> b!26860 (= e!10583 (inv!17 Match!47))))

(declare-fun b!26861 () Bool)

(declare-fun inv!16 (TokenValue!47) Bool)

(assert (=> b!26861 (= e!10584 (inv!16 Match!47))))

(declare-fun b!26862 () Bool)

(declare-fun res!25532 () Bool)

(assert (=> b!26862 (=> res!25532 e!10585)))

(assert (=> b!26862 (= res!25532 (not ((_ is IntegerValue!143) Match!47)))))

(assert (=> b!26862 (= e!10583 e!10585)))

(assert (= (and d!1752 c!14549) b!26861))

(assert (= (and d!1752 (not c!14549)) b!26858))

(assert (= (and b!26858 c!14550) b!26860))

(assert (= (and b!26858 (not c!14550)) b!26862))

(assert (= (and b!26862 (not res!25532)) b!26859))

(declare-fun m!3911 () Bool)

(assert (=> b!26859 m!3911))

(declare-fun m!3913 () Bool)

(assert (=> b!26860 m!3913))

(declare-fun m!3915 () Bool)

(assert (=> b!26861 m!3915))

(assert (=> start!732 d!1752))

(check-sat (not b!26861) (not b!26859) (not b!26860))
(check-sat)
