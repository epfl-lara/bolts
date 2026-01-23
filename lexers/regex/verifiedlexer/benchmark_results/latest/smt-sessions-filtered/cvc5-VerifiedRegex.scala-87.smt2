; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!634 () Bool)

(assert start!634)

(declare-datatypes ((List!66 0))(
  ( (Nil!64) (Cons!64 (h!5460 (_ BitVec 16)) (t!14545 List!66)) )
))
(declare-datatypes ((TokenValue!22 0))(
  ( (FloatLiteralValue!44 (text!599 List!66)) (TokenValueExt!21 (__x!315 Int)) (Broken!110 (value!3728 List!66)) (Object!23) (End!22) (Def!22) (Underscore!22) (Match!22) (Else!22) (Error!22) (Case!22) (If!22) (Extends!22) (Abstract!22) (Class!22) (Val!22) (DelimiterValue!44 (del!82 List!66)) (KeywordValue!28 (value!3729 List!66)) (CommentValue!44 (value!3730 List!66)) (WhitespaceValue!44 (value!3731 List!66)) (IndentationValue!22 (value!3732 List!66)) (String!375) (Int32!22) (Broken!111 (value!3733 List!66)) (Boolean!23) (Unit!23) (OperatorValue!25 (op!82 List!66)) (IdentifierValue!44 (value!3734 List!66)) (IdentifierValue!45 (value!3735 List!66)) (WhitespaceValue!45 (value!3736 List!66)) (True!44) (False!44) (Broken!112 (value!3737 List!66)) (Broken!113 (value!3738 List!66)) (True!45) (RightBrace!22) (RightBracket!22) (Colon!22) (Null!22) (Comma!22) (LeftBracket!22) (False!45) (LeftBrace!22) (ImaginaryLiteralValue!22 (text!600 List!66)) (StringLiteralValue!66 (value!3739 List!66)) (EOFValue!22 (value!3740 List!66)) (IdentValue!22 (value!3741 List!66)) (DelimiterValue!45 (value!3742 List!66)) (DedentValue!22 (value!3743 List!66)) (NewLineValue!22 (value!3744 List!66)) (IntegerValue!66 (value!3745 (_ BitVec 32)) (text!601 List!66)) (IntegerValue!67 (value!3746 Int) (text!602 List!66)) (Times!22) (Or!22) (Equal!22) (Minus!22) (Broken!114 (value!3747 List!66)) (And!22) (Div!22) (LessEqual!22) (Mod!22) (Concat!142) (Not!22) (Plus!22) (SpaceValue!22 (value!3748 List!66)) (IntegerValue!68 (value!3749 Int) (text!603 List!66)) (StringLiteralValue!67 (text!604 List!66)) (FloatLiteralValue!45 (text!605 List!66)) (BytesLiteralValue!22 (value!3750 List!66)) (CommentValue!45 (value!3751 List!66)) (StringLiteralValue!68 (value!3752 List!66)) (ErrorTokenValue!22 (msg!83 List!66)) )
))
(declare-fun inv!21 (TokenValue!22) Bool)

(assert (=> start!634 (not (inv!21 Else!22))))

(declare-fun bs!268 () Bool)

(assert (= bs!268 start!634))

(declare-fun m!3721 () Bool)

(assert (=> bs!268 m!3721))

(push 1)

(assert (not start!634))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!26494 () Bool)

(declare-fun e!10365 () Bool)

(declare-fun inv!15 (TokenValue!22) Bool)

(assert (=> b!26494 (= e!10365 (inv!15 Else!22))))

(declare-fun b!26495 () Bool)

(declare-fun e!10366 () Bool)

(declare-fun inv!16 (TokenValue!22) Bool)

(assert (=> b!26495 (= e!10366 (inv!16 Else!22))))

(declare-fun b!26493 () Bool)

(declare-fun e!10364 () Bool)

(assert (=> b!26493 (= e!10366 e!10364)))

(declare-fun c!14403 () Bool)

(assert (=> b!26493 (= c!14403 (is-IntegerValue!67 Else!22))))

(declare-fun d!1690 () Bool)

(declare-fun c!14404 () Bool)

(assert (=> d!1690 (= c!14404 (is-IntegerValue!66 Else!22))))

(assert (=> d!1690 (= (inv!21 Else!22) e!10366)))

(declare-fun b!26496 () Bool)

(declare-fun res!25459 () Bool)

(assert (=> b!26496 (=> res!25459 e!10365)))

(assert (=> b!26496 (= res!25459 (not (is-IntegerValue!68 Else!22)))))

(assert (=> b!26496 (= e!10364 e!10365)))

(declare-fun b!26497 () Bool)

(declare-fun inv!17 (TokenValue!22) Bool)

(assert (=> b!26497 (= e!10364 (inv!17 Else!22))))

(assert (= (and d!1690 c!14404) b!26495))

(assert (= (and d!1690 (not c!14404)) b!26493))

(assert (= (and b!26493 c!14403) b!26497))

(assert (= (and b!26493 (not c!14403)) b!26496))

(assert (= (and b!26496 (not res!25459)) b!26494))

(declare-fun m!3725 () Bool)

(assert (=> b!26494 m!3725))

(declare-fun m!3727 () Bool)

(assert (=> b!26495 m!3727))

(declare-fun m!3729 () Bool)

(assert (=> b!26497 m!3729))

(assert (=> start!634 d!1690))

(push 1)

(assert (not b!26497))

(assert (not b!26495))

(assert (not b!26494))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

