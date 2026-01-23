; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!658 () Bool)

(assert start!658)

(declare-datatypes ((List!72 0))(
  ( (Nil!70) (Cons!70 (h!5466 (_ BitVec 16)) (t!14551 List!72)) )
))
(declare-datatypes ((TokenValue!28 0))(
  ( (FloatLiteralValue!56 (text!641 List!72)) (TokenValueExt!27 (__x!321 Int)) (Broken!140 (value!3887 List!72)) (Object!29) (End!28) (Def!28) (Underscore!28) (Match!28) (Else!28) (Error!28) (Case!28) (If!28) (Extends!28) (Abstract!28) (Class!28) (Val!28) (DelimiterValue!56 (del!88 List!72)) (KeywordValue!34 (value!3888 List!72)) (CommentValue!56 (value!3889 List!72)) (WhitespaceValue!56 (value!3890 List!72)) (IndentationValue!28 (value!3891 List!72)) (String!393) (Int32!28) (Broken!141 (value!3892 List!72)) (Boolean!29) (Unit!29) (OperatorValue!31 (op!88 List!72)) (IdentifierValue!56 (value!3893 List!72)) (IdentifierValue!57 (value!3894 List!72)) (WhitespaceValue!57 (value!3895 List!72)) (True!56) (False!56) (Broken!142 (value!3896 List!72)) (Broken!143 (value!3897 List!72)) (True!57) (RightBrace!28) (RightBracket!28) (Colon!28) (Null!28) (Comma!28) (LeftBracket!28) (False!57) (LeftBrace!28) (ImaginaryLiteralValue!28 (text!642 List!72)) (StringLiteralValue!84 (value!3898 List!72)) (EOFValue!28 (value!3899 List!72)) (IdentValue!28 (value!3900 List!72)) (DelimiterValue!57 (value!3901 List!72)) (DedentValue!28 (value!3902 List!72)) (NewLineValue!28 (value!3903 List!72)) (IntegerValue!84 (value!3904 (_ BitVec 32)) (text!643 List!72)) (IntegerValue!85 (value!3905 Int) (text!644 List!72)) (Times!28) (Or!28) (Equal!28) (Minus!28) (Broken!144 (value!3906 List!72)) (And!28) (Div!28) (LessEqual!28) (Mod!28) (Concat!148) (Not!28) (Plus!28) (SpaceValue!28 (value!3907 List!72)) (IntegerValue!86 (value!3908 Int) (text!645 List!72)) (StringLiteralValue!85 (text!646 List!72)) (FloatLiteralValue!57 (text!647 List!72)) (BytesLiteralValue!28 (value!3909 List!72)) (CommentValue!57 (value!3910 List!72)) (StringLiteralValue!86 (value!3911 List!72)) (ErrorTokenValue!28 (msg!89 List!72)) )
))
(declare-fun inv!21 (TokenValue!28) Bool)

(assert (=> start!658 (not (inv!21 Error!28))))

(declare-fun bs!280 () Bool)

(assert (= bs!280 start!658))

(declare-fun m!3769 () Bool)

(assert (=> bs!280 m!3769))

(push 1)

(assert (not start!658))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!26583 () Bool)

(declare-fun e!10418 () Bool)

(declare-fun inv!15 (TokenValue!28) Bool)

(assert (=> b!26583 (= e!10418 (inv!15 Error!28))))

(declare-fun d!1705 () Bool)

(declare-fun c!14439 () Bool)

(assert (=> d!1705 (= c!14439 (is-IntegerValue!84 Error!28))))

(declare-fun e!10419 () Bool)

(assert (=> d!1705 (= (inv!21 Error!28) e!10419)))

(declare-fun b!26584 () Bool)

(declare-fun e!10420 () Bool)

(declare-fun inv!17 (TokenValue!28) Bool)

(assert (=> b!26584 (= e!10420 (inv!17 Error!28))))

(declare-fun b!26585 () Bool)

(declare-fun res!25477 () Bool)

(assert (=> b!26585 (=> res!25477 e!10418)))

(assert (=> b!26585 (= res!25477 (not (is-IntegerValue!86 Error!28)))))

(assert (=> b!26585 (= e!10420 e!10418)))

(declare-fun b!26586 () Bool)

(assert (=> b!26586 (= e!10419 e!10420)))

(declare-fun c!14440 () Bool)

(assert (=> b!26586 (= c!14440 (is-IntegerValue!85 Error!28))))

(declare-fun b!26587 () Bool)

(declare-fun inv!16 (TokenValue!28) Bool)

(assert (=> b!26587 (= e!10419 (inv!16 Error!28))))

(assert (= (and d!1705 c!14439) b!26587))

(assert (= (and d!1705 (not c!14439)) b!26586))

(assert (= (and b!26586 c!14440) b!26584))

(assert (= (and b!26586 (not c!14440)) b!26585))

(assert (= (and b!26585 (not res!25477)) b!26583))

(declare-fun m!3773 () Bool)

(assert (=> b!26583 m!3773))

(declare-fun m!3775 () Bool)

(assert (=> b!26584 m!3775))

(declare-fun m!3777 () Bool)

(assert (=> b!26587 m!3777))

(assert (=> start!658 d!1705))

(push 1)

(assert (not b!26587))

(assert (not b!26584))

(assert (not b!26583))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

