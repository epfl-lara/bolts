; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!684 () Bool)

(assert start!684)

(declare-datatypes ((List!79 0))(
  ( (Nil!77) (Cons!77 (h!5473 (_ BitVec 16)) (t!14558 List!79)) )
))
(declare-datatypes ((TokenValue!35 0))(
  ( (FloatLiteralValue!70 (text!690 List!79)) (TokenValueExt!34 (__x!328 Int)) (Broken!175 (value!4071 List!79)) (Object!36) (End!35) (Def!35) (Underscore!35) (Match!35) (Else!35) (Error!35) (Case!35) (If!35) (Extends!35) (Abstract!35) (Class!35) (Val!35) (DelimiterValue!70 (del!95 List!79)) (KeywordValue!41 (value!4072 List!79)) (CommentValue!70 (value!4073 List!79)) (WhitespaceValue!70 (value!4074 List!79)) (IndentationValue!35 (value!4075 List!79)) (String!412) (Int32!35) (Broken!176 (value!4076 List!79)) (Boolean!36) (Unit!36) (OperatorValue!38 (op!95 List!79)) (IdentifierValue!70 (value!4077 List!79)) (IdentifierValue!71 (value!4078 List!79)) (WhitespaceValue!71 (value!4079 List!79)) (True!70) (False!70) (Broken!177 (value!4080 List!79)) (Broken!178 (value!4081 List!79)) (True!71) (RightBrace!35) (RightBracket!35) (Colon!35) (Null!35) (Comma!35) (LeftBracket!35) (False!71) (LeftBrace!35) (ImaginaryLiteralValue!35 (text!691 List!79)) (StringLiteralValue!105 (value!4082 List!79)) (EOFValue!35 (value!4083 List!79)) (IdentValue!35 (value!4084 List!79)) (DelimiterValue!71 (value!4085 List!79)) (DedentValue!35 (value!4086 List!79)) (NewLineValue!35 (value!4087 List!79)) (IntegerValue!105 (value!4088 (_ BitVec 32)) (text!692 List!79)) (IntegerValue!106 (value!4089 Int) (text!693 List!79)) (Times!35) (Or!35) (Equal!35) (Minus!35) (Broken!179 (value!4090 List!79)) (And!35) (Div!35) (LessEqual!35) (Mod!35) (Concat!155) (Not!35) (Plus!35) (SpaceValue!35 (value!4091 List!79)) (IntegerValue!107 (value!4092 Int) (text!694 List!79)) (StringLiteralValue!106 (text!695 List!79)) (FloatLiteralValue!71 (text!696 List!79)) (BytesLiteralValue!35 (value!4093 List!79)) (CommentValue!71 (value!4094 List!79)) (StringLiteralValue!107 (value!4095 List!79)) (ErrorTokenValue!35 (msg!96 List!79)) )
))
(declare-fun inv!21 (TokenValue!35) Bool)

(assert (=> start!684 (not (inv!21 False!71))))

(declare-fun bs!293 () Bool)

(assert (= bs!293 start!684))

(declare-fun m!3813 () Bool)

(assert (=> bs!293 m!3813))

(check-sat (not start!684))
(check-sat)
(get-model)

(declare-fun d!1720 () Bool)

(declare-fun c!14471 () Bool)

(get-info :version)

(assert (=> d!1720 (= c!14471 ((_ is IntegerValue!105) False!71))))

(declare-fun e!10467 () Bool)

(assert (=> d!1720 (= (inv!21 False!71) e!10467)))

(declare-fun b!26663 () Bool)

(declare-fun res!25493 () Bool)

(declare-fun e!10466 () Bool)

(assert (=> b!26663 (=> res!25493 e!10466)))

(assert (=> b!26663 (= res!25493 (not ((_ is IntegerValue!107) False!71)))))

(declare-fun e!10468 () Bool)

(assert (=> b!26663 (= e!10468 e!10466)))

(declare-fun b!26664 () Bool)

(declare-fun inv!15 (TokenValue!35) Bool)

(assert (=> b!26664 (= e!10466 (inv!15 False!71))))

(declare-fun b!26665 () Bool)

(declare-fun inv!16 (TokenValue!35) Bool)

(assert (=> b!26665 (= e!10467 (inv!16 False!71))))

(declare-fun b!26666 () Bool)

(declare-fun inv!17 (TokenValue!35) Bool)

(assert (=> b!26666 (= e!10468 (inv!17 False!71))))

(declare-fun b!26667 () Bool)

(assert (=> b!26667 (= e!10467 e!10468)))

(declare-fun c!14472 () Bool)

(assert (=> b!26667 (= c!14472 ((_ is IntegerValue!106) False!71))))

(assert (= (and d!1720 c!14471) b!26665))

(assert (= (and d!1720 (not c!14471)) b!26667))

(assert (= (and b!26667 c!14472) b!26666))

(assert (= (and b!26667 (not c!14472)) b!26663))

(assert (= (and b!26663 (not res!25493)) b!26664))

(declare-fun m!3815 () Bool)

(assert (=> b!26664 m!3815))

(declare-fun m!3817 () Bool)

(assert (=> b!26665 m!3817))

(declare-fun m!3819 () Bool)

(assert (=> b!26666 m!3819))

(assert (=> start!684 d!1720))

(check-sat (not b!26666) (not b!26665) (not b!26664))
(check-sat)
