; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!778 () Bool)

(assert start!778)

(declare-datatypes ((List!102 0))(
  ( (Nil!100) (Cons!100 (h!5496 (_ BitVec 16)) (t!14581 List!102)) )
))
(declare-datatypes ((TokenValue!58 0))(
  ( (FloatLiteralValue!116 (text!851 List!102)) (TokenValueExt!57 (__x!351 Int)) (Broken!290 (value!4682 List!102)) (Object!59) (End!58) (Def!58) (Underscore!58) (Match!58) (Else!58) (Error!58) (Case!58) (If!58) (Extends!58) (Abstract!58) (Class!58) (Val!58) (DelimiterValue!116 (del!118 List!102)) (KeywordValue!64 (value!4683 List!102)) (CommentValue!116 (value!4684 List!102)) (WhitespaceValue!116 (value!4685 List!102)) (IndentationValue!58 (value!4686 List!102)) (String!483) (Int32!58) (Broken!291 (value!4687 List!102)) (Boolean!59) (Unit!59) (OperatorValue!61 (op!118 List!102)) (IdentifierValue!116 (value!4688 List!102)) (IdentifierValue!117 (value!4689 List!102)) (WhitespaceValue!117 (value!4690 List!102)) (True!116) (False!116) (Broken!292 (value!4691 List!102)) (Broken!293 (value!4692 List!102)) (True!117) (RightBrace!58) (RightBracket!58) (Colon!58) (Null!58) (Comma!58) (LeftBracket!58) (False!117) (LeftBrace!58) (ImaginaryLiteralValue!58 (text!852 List!102)) (StringLiteralValue!174 (value!4693 List!102)) (EOFValue!58 (value!4694 List!102)) (IdentValue!58 (value!4695 List!102)) (DelimiterValue!117 (value!4696 List!102)) (DedentValue!58 (value!4697 List!102)) (NewLineValue!58 (value!4698 List!102)) (IntegerValue!174 (value!4699 (_ BitVec 32)) (text!853 List!102)) (IntegerValue!175 (value!4700 Int) (text!854 List!102)) (Times!58) (Or!58) (Equal!58) (Minus!58) (Broken!294 (value!4701 List!102)) (And!58) (Div!58) (LessEqual!58) (Mod!58) (Concat!178) (Not!58) (Plus!58) (SpaceValue!58 (value!4702 List!102)) (IntegerValue!176 (value!4703 Int) (text!855 List!102)) (StringLiteralValue!175 (text!856 List!102)) (FloatLiteralValue!117 (text!857 List!102)) (BytesLiteralValue!58 (value!4704 List!102)) (CommentValue!117 (value!4705 List!102)) (StringLiteralValue!176 (value!4706 List!102)) (ErrorTokenValue!58 (msg!119 List!102)) )
))
(declare-fun inv!21 (TokenValue!58) Bool)

(assert (=> start!778 (not (inv!21 Or!58))))

(declare-fun bs!340 () Bool)

(assert (= bs!340 start!778))

(declare-fun m!3987 () Bool)

(assert (=> bs!340 m!3987))

(push 1)

(assert (not start!778))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!27033 () Bool)

(declare-fun e!10690 () Bool)

(declare-fun e!10689 () Bool)

(assert (=> b!27033 (= e!10690 e!10689)))

(declare-fun c!14619 () Bool)

(assert (=> b!27033 (= c!14619 (is-IntegerValue!175 Or!58))))

(declare-fun b!27034 () Bool)

(declare-fun res!25567 () Bool)

(declare-fun e!10688 () Bool)

(assert (=> b!27034 (=> res!25567 e!10688)))

(assert (=> b!27034 (= res!25567 (not (is-IntegerValue!176 Or!58)))))

(assert (=> b!27034 (= e!10689 e!10688)))

(declare-fun b!27035 () Bool)

(declare-fun inv!16 (TokenValue!58) Bool)

(assert (=> b!27035 (= e!10690 (inv!16 Or!58))))

(declare-fun d!1780 () Bool)

(declare-fun c!14620 () Bool)

(assert (=> d!1780 (= c!14620 (is-IntegerValue!174 Or!58))))

(assert (=> d!1780 (= (inv!21 Or!58) e!10690)))

(declare-fun b!27036 () Bool)

(declare-fun inv!15 (TokenValue!58) Bool)

(assert (=> b!27036 (= e!10688 (inv!15 Or!58))))

(declare-fun b!27037 () Bool)

(declare-fun inv!17 (TokenValue!58) Bool)

(assert (=> b!27037 (= e!10689 (inv!17 Or!58))))

(assert (= (and d!1780 c!14620) b!27035))

(assert (= (and d!1780 (not c!14620)) b!27033))

(assert (= (and b!27033 c!14619) b!27037))

(assert (= (and b!27033 (not c!14619)) b!27034))

(assert (= (and b!27034 (not res!25567)) b!27036))

(declare-fun m!3991 () Bool)

(assert (=> b!27035 m!3991))

(declare-fun m!3993 () Bool)

(assert (=> b!27036 m!3993))

(declare-fun m!3995 () Bool)

(assert (=> b!27037 m!3995))

(assert (=> start!778 d!1780))

(push 1)

(assert (not b!27036))

(assert (not b!27037))

(assert (not b!27035))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

