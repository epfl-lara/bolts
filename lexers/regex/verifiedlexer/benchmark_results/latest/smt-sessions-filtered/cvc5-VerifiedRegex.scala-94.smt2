; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!690 () Bool)

(assert start!690)

(declare-datatypes ((List!80 0))(
  ( (Nil!78) (Cons!78 (h!5474 (_ BitVec 16)) (t!14559 List!80)) )
))
(declare-datatypes ((TokenValue!36 0))(
  ( (FloatLiteralValue!72 (text!697 List!80)) (TokenValueExt!35 (__x!329 Int)) (Broken!180 (value!4099 List!80)) (Object!37) (End!36) (Def!36) (Underscore!36) (Match!36) (Else!36) (Error!36) (Case!36) (If!36) (Extends!36) (Abstract!36) (Class!36) (Val!36) (DelimiterValue!72 (del!96 List!80)) (KeywordValue!42 (value!4100 List!80)) (CommentValue!72 (value!4101 List!80)) (WhitespaceValue!72 (value!4102 List!80)) (IndentationValue!36 (value!4103 List!80)) (String!417) (Int32!36) (Broken!181 (value!4104 List!80)) (Boolean!37) (Unit!37) (OperatorValue!39 (op!96 List!80)) (IdentifierValue!72 (value!4105 List!80)) (IdentifierValue!73 (value!4106 List!80)) (WhitespaceValue!73 (value!4107 List!80)) (True!72) (False!72) (Broken!182 (value!4108 List!80)) (Broken!183 (value!4109 List!80)) (True!73) (RightBrace!36) (RightBracket!36) (Colon!36) (Null!36) (Comma!36) (LeftBracket!36) (False!73) (LeftBrace!36) (ImaginaryLiteralValue!36 (text!698 List!80)) (StringLiteralValue!108 (value!4110 List!80)) (EOFValue!36 (value!4111 List!80)) (IdentValue!36 (value!4112 List!80)) (DelimiterValue!73 (value!4113 List!80)) (DedentValue!36 (value!4114 List!80)) (NewLineValue!36 (value!4115 List!80)) (IntegerValue!108 (value!4116 (_ BitVec 32)) (text!699 List!80)) (IntegerValue!109 (value!4117 Int) (text!700 List!80)) (Times!36) (Or!36) (Equal!36) (Minus!36) (Broken!184 (value!4118 List!80)) (And!36) (Div!36) (LessEqual!36) (Mod!36) (Concat!156) (Not!36) (Plus!36) (SpaceValue!36 (value!4119 List!80)) (IntegerValue!110 (value!4120 Int) (text!701 List!80)) (StringLiteralValue!109 (text!702 List!80)) (FloatLiteralValue!73 (text!703 List!80)) (BytesLiteralValue!36 (value!4121 List!80)) (CommentValue!73 (value!4122 List!80)) (StringLiteralValue!110 (value!4123 List!80)) (ErrorTokenValue!36 (msg!97 List!80)) )
))
(declare-fun inv!21 (TokenValue!36) Bool)

(assert (=> start!690 (not (inv!21 If!36))))

(declare-fun bs!296 () Bool)

(assert (= bs!296 start!690))

(declare-fun m!3821 () Bool)

(assert (=> bs!296 m!3821))

(push 1)

(assert (not start!690))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!26697 () Bool)

(declare-fun res!25499 () Bool)

(declare-fun e!10488 () Bool)

(assert (=> b!26697 (=> res!25499 e!10488)))

(assert (=> b!26697 (= res!25499 (not (is-IntegerValue!110 If!36)))))

(declare-fun e!10486 () Bool)

(assert (=> b!26697 (= e!10486 e!10488)))

(declare-fun b!26698 () Bool)

(declare-fun e!10487 () Bool)

(assert (=> b!26698 (= e!10487 e!10486)))

(declare-fun c!14486 () Bool)

(assert (=> b!26698 (= c!14486 (is-IntegerValue!109 If!36))))

(declare-fun b!26699 () Bool)

(declare-fun inv!17 (TokenValue!36) Bool)

(assert (=> b!26699 (= e!10486 (inv!17 If!36))))

(declare-fun d!1725 () Bool)

(declare-fun c!14485 () Bool)

(assert (=> d!1725 (= c!14485 (is-IntegerValue!108 If!36))))

(assert (=> d!1725 (= (inv!21 If!36) e!10487)))

(declare-fun b!26700 () Bool)

(declare-fun inv!15 (TokenValue!36) Bool)

(assert (=> b!26700 (= e!10488 (inv!15 If!36))))

(declare-fun b!26701 () Bool)

(declare-fun inv!16 (TokenValue!36) Bool)

(assert (=> b!26701 (= e!10487 (inv!16 If!36))))

(assert (= (and d!1725 c!14485) b!26701))

(assert (= (and d!1725 (not c!14485)) b!26698))

(assert (= (and b!26698 c!14486) b!26699))

(assert (= (and b!26698 (not c!14486)) b!26697))

(assert (= (and b!26697 (not res!25499)) b!26700))

(declare-fun m!3825 () Bool)

(assert (=> b!26699 m!3825))

(declare-fun m!3827 () Bool)

(assert (=> b!26700 m!3827))

(declare-fun m!3829 () Bool)

(assert (=> b!26701 m!3829))

(assert (=> start!690 d!1725))

(push 1)

(assert (not b!26700))

(assert (not b!26701))

(assert (not b!26699))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

