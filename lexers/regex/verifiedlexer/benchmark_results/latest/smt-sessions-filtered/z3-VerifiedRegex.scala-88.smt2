; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!644 () Bool)

(assert start!644)

(declare-datatypes ((List!69 0))(
  ( (Nil!67) (Cons!67 (h!5463 (_ BitVec 16)) (t!14548 List!69)) )
))
(declare-datatypes ((TokenValue!25 0))(
  ( (FloatLiteralValue!50 (text!620 List!69)) (TokenValueExt!24 (__x!318 Int)) (Broken!125 (value!3806 List!69)) (Object!26) (End!25) (Def!25) (Underscore!25) (Match!25) (Else!25) (Error!25) (Case!25) (If!25) (Extends!25) (Abstract!25) (Class!25) (Val!25) (DelimiterValue!50 (del!85 List!69)) (KeywordValue!31 (value!3807 List!69)) (CommentValue!50 (value!3808 List!69)) (WhitespaceValue!50 (value!3809 List!69)) (IndentationValue!25 (value!3810 List!69)) (String!382) (Int32!25) (Broken!126 (value!3811 List!69)) (Boolean!26) (Unit!26) (OperatorValue!28 (op!85 List!69)) (IdentifierValue!50 (value!3812 List!69)) (IdentifierValue!51 (value!3813 List!69)) (WhitespaceValue!51 (value!3814 List!69)) (True!50) (False!50) (Broken!127 (value!3815 List!69)) (Broken!128 (value!3816 List!69)) (True!51) (RightBrace!25) (RightBracket!25) (Colon!25) (Null!25) (Comma!25) (LeftBracket!25) (False!51) (LeftBrace!25) (ImaginaryLiteralValue!25 (text!621 List!69)) (StringLiteralValue!75 (value!3817 List!69)) (EOFValue!25 (value!3818 List!69)) (IdentValue!25 (value!3819 List!69)) (DelimiterValue!51 (value!3820 List!69)) (DedentValue!25 (value!3821 List!69)) (NewLineValue!25 (value!3822 List!69)) (IntegerValue!75 (value!3823 (_ BitVec 32)) (text!622 List!69)) (IntegerValue!76 (value!3824 Int) (text!623 List!69)) (Times!25) (Or!25) (Equal!25) (Minus!25) (Broken!129 (value!3825 List!69)) (And!25) (Div!25) (LessEqual!25) (Mod!25) (Concat!145) (Not!25) (Plus!25) (SpaceValue!25 (value!3826 List!69)) (IntegerValue!77 (value!3827 Int) (text!624 List!69)) (StringLiteralValue!76 (text!625 List!69)) (FloatLiteralValue!51 (text!626 List!69)) (BytesLiteralValue!25 (value!3828 List!69)) (CommentValue!51 (value!3829 List!69)) (StringLiteralValue!77 (value!3830 List!69)) (ErrorTokenValue!25 (msg!86 List!69)) )
))
(declare-fun inv!21 (TokenValue!25) Bool)

(assert (=> start!644 (not (inv!21 End!25))))

(declare-fun bs!273 () Bool)

(assert (= bs!273 start!644))

(declare-fun m!3739 () Bool)

(assert (=> bs!273 m!3739))

(check-sat (not start!644))
(check-sat)
(get-model)

(declare-fun b!26523 () Bool)

(declare-fun e!10384 () Bool)

(declare-fun e!10383 () Bool)

(assert (=> b!26523 (= e!10384 e!10383)))

(declare-fun c!14416 () Bool)

(get-info :version)

(assert (=> b!26523 (= c!14416 ((_ is IntegerValue!76) End!25))))

(declare-fun d!1697 () Bool)

(declare-fun c!14415 () Bool)

(assert (=> d!1697 (= c!14415 ((_ is IntegerValue!75) End!25))))

(assert (=> d!1697 (= (inv!21 End!25) e!10384)))

(declare-fun b!26524 () Bool)

(declare-fun inv!16 (TokenValue!25) Bool)

(assert (=> b!26524 (= e!10384 (inv!16 End!25))))

(declare-fun b!26525 () Bool)

(declare-fun e!10382 () Bool)

(declare-fun inv!15 (TokenValue!25) Bool)

(assert (=> b!26525 (= e!10382 (inv!15 End!25))))

(declare-fun b!26526 () Bool)

(declare-fun res!25465 () Bool)

(assert (=> b!26526 (=> res!25465 e!10382)))

(assert (=> b!26526 (= res!25465 (not ((_ is IntegerValue!77) End!25)))))

(assert (=> b!26526 (= e!10383 e!10382)))

(declare-fun b!26527 () Bool)

(declare-fun inv!17 (TokenValue!25) Bool)

(assert (=> b!26527 (= e!10383 (inv!17 End!25))))

(assert (= (and d!1697 c!14415) b!26524))

(assert (= (and d!1697 (not c!14415)) b!26523))

(assert (= (and b!26523 c!14416) b!26527))

(assert (= (and b!26523 (not c!14416)) b!26526))

(assert (= (and b!26526 (not res!25465)) b!26525))

(declare-fun m!3741 () Bool)

(assert (=> b!26524 m!3741))

(declare-fun m!3743 () Bool)

(assert (=> b!26525 m!3743))

(declare-fun m!3745 () Bool)

(assert (=> b!26527 m!3745))

(assert (=> start!644 d!1697))

(check-sat (not b!26527) (not b!26525) (not b!26524))
(check-sat)
