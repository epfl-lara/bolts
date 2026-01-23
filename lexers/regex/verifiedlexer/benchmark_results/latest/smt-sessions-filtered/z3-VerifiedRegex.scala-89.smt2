; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!652 () Bool)

(assert start!652)

(declare-datatypes ((List!71 0))(
  ( (Nil!69) (Cons!69 (h!5465 (_ BitVec 16)) (t!14550 List!71)) )
))
(declare-datatypes ((TokenValue!27 0))(
  ( (FloatLiteralValue!54 (text!634 List!71)) (TokenValueExt!26 (__x!320 Int)) (Broken!135 (value!3859 List!71)) (Object!28) (End!27) (Def!27) (Underscore!27) (Match!27) (Else!27) (Error!27) (Case!27) (If!27) (Extends!27) (Abstract!27) (Class!27) (Val!27) (DelimiterValue!54 (del!87 List!71)) (KeywordValue!33 (value!3860 List!71)) (CommentValue!54 (value!3861 List!71)) (WhitespaceValue!54 (value!3862 List!71)) (IndentationValue!27 (value!3863 List!71)) (String!388) (Int32!27) (Broken!136 (value!3864 List!71)) (Boolean!28) (Unit!28) (OperatorValue!30 (op!87 List!71)) (IdentifierValue!54 (value!3865 List!71)) (IdentifierValue!55 (value!3866 List!71)) (WhitespaceValue!55 (value!3867 List!71)) (True!54) (False!54) (Broken!137 (value!3868 List!71)) (Broken!138 (value!3869 List!71)) (True!55) (RightBrace!27) (RightBracket!27) (Colon!27) (Null!27) (Comma!27) (LeftBracket!27) (False!55) (LeftBrace!27) (ImaginaryLiteralValue!27 (text!635 List!71)) (StringLiteralValue!81 (value!3870 List!71)) (EOFValue!27 (value!3871 List!71)) (IdentValue!27 (value!3872 List!71)) (DelimiterValue!55 (value!3873 List!71)) (DedentValue!27 (value!3874 List!71)) (NewLineValue!27 (value!3875 List!71)) (IntegerValue!81 (value!3876 (_ BitVec 32)) (text!636 List!71)) (IntegerValue!82 (value!3877 Int) (text!637 List!71)) (Times!27) (Or!27) (Equal!27) (Minus!27) (Broken!139 (value!3878 List!71)) (And!27) (Div!27) (LessEqual!27) (Mod!27) (Concat!147) (Not!27) (Plus!27) (SpaceValue!27 (value!3879 List!71)) (IntegerValue!83 (value!3880 Int) (text!638 List!71)) (StringLiteralValue!82 (text!639 List!71)) (FloatLiteralValue!55 (text!640 List!71)) (BytesLiteralValue!27 (value!3881 List!71)) (CommentValue!55 (value!3882 List!71)) (StringLiteralValue!83 (value!3883 List!71)) (ErrorTokenValue!27 (msg!88 List!71)) )
))
(declare-fun inv!21 (TokenValue!27) Bool)

(assert (=> start!652 (not (inv!21 Equal!27))))

(declare-fun bs!277 () Bool)

(assert (= bs!277 start!652))

(declare-fun m!3755 () Bool)

(assert (=> bs!277 m!3755))

(check-sat (not start!652))
(check-sat)
(get-model)

(declare-fun b!26553 () Bool)

(declare-fun e!10401 () Bool)

(declare-fun inv!15 (TokenValue!27) Bool)

(assert (=> b!26553 (= e!10401 (inv!15 Equal!27))))

(declare-fun b!26554 () Bool)

(declare-fun e!10402 () Bool)

(declare-fun e!10400 () Bool)

(assert (=> b!26554 (= e!10402 e!10400)))

(declare-fun c!14428 () Bool)

(get-info :version)

(assert (=> b!26554 (= c!14428 ((_ is IntegerValue!82) Equal!27))))

(declare-fun d!1702 () Bool)

(declare-fun c!14427 () Bool)

(assert (=> d!1702 (= c!14427 ((_ is IntegerValue!81) Equal!27))))

(assert (=> d!1702 (= (inv!21 Equal!27) e!10402)))

(declare-fun b!26555 () Bool)

(declare-fun inv!17 (TokenValue!27) Bool)

(assert (=> b!26555 (= e!10400 (inv!17 Equal!27))))

(declare-fun b!26556 () Bool)

(declare-fun inv!16 (TokenValue!27) Bool)

(assert (=> b!26556 (= e!10402 (inv!16 Equal!27))))

(declare-fun b!26557 () Bool)

(declare-fun res!25471 () Bool)

(assert (=> b!26557 (=> res!25471 e!10401)))

(assert (=> b!26557 (= res!25471 (not ((_ is IntegerValue!83) Equal!27)))))

(assert (=> b!26557 (= e!10400 e!10401)))

(assert (= (and d!1702 c!14427) b!26556))

(assert (= (and d!1702 (not c!14427)) b!26554))

(assert (= (and b!26554 c!14428) b!26555))

(assert (= (and b!26554 (not c!14428)) b!26557))

(assert (= (and b!26557 (not res!25471)) b!26553))

(declare-fun m!3757 () Bool)

(assert (=> b!26553 m!3757))

(declare-fun m!3759 () Bool)

(assert (=> b!26555 m!3759))

(declare-fun m!3761 () Bool)

(assert (=> b!26556 m!3761))

(assert (=> start!652 d!1702))

(check-sat (not b!26556) (not b!26555) (not b!26553))
(check-sat)
