; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!668 () Bool)

(assert start!668)

(declare-datatypes ((List!75 0))(
  ( (Nil!73) (Cons!73 (h!5469 (_ BitVec 16)) (t!14554 List!75)) )
))
(declare-datatypes ((TokenValue!31 0))(
  ( (FloatLiteralValue!62 (text!662 List!75)) (TokenValueExt!30 (__x!324 Int)) (Broken!155 (value!3965 List!75)) (Object!32) (End!31) (Def!31) (Underscore!31) (Match!31) (Else!31) (Error!31) (Case!31) (If!31) (Extends!31) (Abstract!31) (Class!31) (Val!31) (DelimiterValue!62 (del!91 List!75)) (KeywordValue!37 (value!3966 List!75)) (CommentValue!62 (value!3967 List!75)) (WhitespaceValue!62 (value!3968 List!75)) (IndentationValue!31 (value!3969 List!75)) (String!400) (Int32!31) (Broken!156 (value!3970 List!75)) (Boolean!32) (Unit!32) (OperatorValue!34 (op!91 List!75)) (IdentifierValue!62 (value!3971 List!75)) (IdentifierValue!63 (value!3972 List!75)) (WhitespaceValue!63 (value!3973 List!75)) (True!62) (False!62) (Broken!157 (value!3974 List!75)) (Broken!158 (value!3975 List!75)) (True!63) (RightBrace!31) (RightBracket!31) (Colon!31) (Null!31) (Comma!31) (LeftBracket!31) (False!63) (LeftBrace!31) (ImaginaryLiteralValue!31 (text!663 List!75)) (StringLiteralValue!93 (value!3976 List!75)) (EOFValue!31 (value!3977 List!75)) (IdentValue!31 (value!3978 List!75)) (DelimiterValue!63 (value!3979 List!75)) (DedentValue!31 (value!3980 List!75)) (NewLineValue!31 (value!3981 List!75)) (IntegerValue!93 (value!3982 (_ BitVec 32)) (text!664 List!75)) (IntegerValue!94 (value!3983 Int) (text!665 List!75)) (Times!31) (Or!31) (Equal!31) (Minus!31) (Broken!159 (value!3984 List!75)) (And!31) (Div!31) (LessEqual!31) (Mod!31) (Concat!151) (Not!31) (Plus!31) (SpaceValue!31 (value!3985 List!75)) (IntegerValue!95 (value!3986 Int) (text!666 List!75)) (StringLiteralValue!94 (text!667 List!75)) (FloatLiteralValue!63 (text!668 List!75)) (BytesLiteralValue!31 (value!3987 List!75)) (CommentValue!63 (value!3988 List!75)) (StringLiteralValue!95 (value!3989 List!75)) (ErrorTokenValue!31 (msg!92 List!75)) )
))
(declare-fun inv!21 (TokenValue!31) Bool)

(assert (=> start!668 (not (inv!21 Extends!31))))

(declare-fun bs!285 () Bool)

(assert (= bs!285 start!668))

(declare-fun m!3787 () Bool)

(assert (=> bs!285 m!3787))

(check-sat (not start!668))
(check-sat)
(get-model)

(declare-fun b!26613 () Bool)

(declare-fun e!10436 () Bool)

(declare-fun inv!15 (TokenValue!31) Bool)

(assert (=> b!26613 (= e!10436 (inv!15 Extends!31))))

(declare-fun b!26617 () Bool)

(declare-fun e!10437 () Bool)

(declare-fun inv!17 (TokenValue!31) Bool)

(assert (=> b!26617 (= e!10437 (inv!17 Extends!31))))

(declare-fun b!26619 () Bool)

(declare-fun res!25483 () Bool)

(assert (=> b!26619 (=> res!25483 e!10436)))

(get-info :version)

(assert (=> b!26619 (= res!25483 (not ((_ is IntegerValue!95) Extends!31)))))

(assert (=> b!26619 (= e!10437 e!10436)))

(declare-fun b!26621 () Bool)

(declare-fun e!10440 () Bool)

(assert (=> b!26621 (= e!10440 e!10437)))

(declare-fun c!14452 () Bool)

(assert (=> b!26621 (= c!14452 ((_ is IntegerValue!94) Extends!31))))

(declare-fun b!26615 () Bool)

(declare-fun inv!16 (TokenValue!31) Bool)

(assert (=> b!26615 (= e!10440 (inv!16 Extends!31))))

(declare-fun d!1710 () Bool)

(declare-fun c!14454 () Bool)

(assert (=> d!1710 (= c!14454 ((_ is IntegerValue!93) Extends!31))))

(assert (=> d!1710 (= (inv!21 Extends!31) e!10440)))

(assert (= (and d!1710 c!14454) b!26615))

(assert (= (and d!1710 (not c!14454)) b!26621))

(assert (= (and b!26621 c!14452) b!26617))

(assert (= (and b!26621 (not c!14452)) b!26619))

(assert (= (and b!26619 (not res!25483)) b!26613))

(declare-fun m!3791 () Bool)

(assert (=> b!26613 m!3791))

(declare-fun m!3797 () Bool)

(assert (=> b!26617 m!3797))

(declare-fun m!3799 () Bool)

(assert (=> b!26615 m!3799))

(assert (=> start!668 d!1710))

(check-sat (not b!26617) (not b!26615) (not b!26613))
(check-sat)
