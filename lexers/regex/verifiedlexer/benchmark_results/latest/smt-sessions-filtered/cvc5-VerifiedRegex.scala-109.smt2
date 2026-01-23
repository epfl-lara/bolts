; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!810 () Bool)

(assert start!810)

(declare-datatypes ((List!110 0))(
  ( (Nil!108) (Cons!108 (h!5504 (_ BitVec 16)) (t!14589 List!110)) )
))
(declare-datatypes ((TokenValue!66 0))(
  ( (FloatLiteralValue!132 (text!907 List!110)) (TokenValueExt!65 (__x!359 Int)) (Broken!330 (value!4894 List!110)) (Object!67) (End!66) (Def!66) (Underscore!66) (Match!66) (Else!66) (Error!66) (Case!66) (If!66) (Extends!66) (Abstract!66) (Class!66) (Val!66) (DelimiterValue!132 (del!126 List!110)) (KeywordValue!72 (value!4895 List!110)) (CommentValue!132 (value!4896 List!110)) (WhitespaceValue!132 (value!4897 List!110)) (IndentationValue!66 (value!4898 List!110)) (String!507) (Int32!66) (Broken!331 (value!4899 List!110)) (Boolean!67) (Unit!67) (OperatorValue!69 (op!126 List!110)) (IdentifierValue!132 (value!4900 List!110)) (IdentifierValue!133 (value!4901 List!110)) (WhitespaceValue!133 (value!4902 List!110)) (True!132) (False!132) (Broken!332 (value!4903 List!110)) (Broken!333 (value!4904 List!110)) (True!133) (RightBrace!66) (RightBracket!66) (Colon!66) (Null!66) (Comma!66) (LeftBracket!66) (False!133) (LeftBrace!66) (ImaginaryLiteralValue!66 (text!908 List!110)) (StringLiteralValue!198 (value!4905 List!110)) (EOFValue!66 (value!4906 List!110)) (IdentValue!66 (value!4907 List!110)) (DelimiterValue!133 (value!4908 List!110)) (DedentValue!66 (value!4909 List!110)) (NewLineValue!66 (value!4910 List!110)) (IntegerValue!198 (value!4911 (_ BitVec 32)) (text!909 List!110)) (IntegerValue!199 (value!4912 Int) (text!910 List!110)) (Times!66) (Or!66) (Equal!66) (Minus!66) (Broken!334 (value!4913 List!110)) (And!66) (Div!66) (LessEqual!66) (Mod!66) (Concat!186) (Not!66) (Plus!66) (SpaceValue!66 (value!4914 List!110)) (IntegerValue!200 (value!4915 Int) (text!911 List!110)) (StringLiteralValue!199 (text!912 List!110)) (FloatLiteralValue!133 (text!913 List!110)) (BytesLiteralValue!66 (value!4916 List!110)) (CommentValue!133 (value!4917 List!110)) (StringLiteralValue!200 (value!4918 List!110)) (ErrorTokenValue!66 (msg!127 List!110)) )
))
(declare-fun inv!21 (TokenValue!66) Bool)

(assert (=> start!810 (not (inv!21 String!507))))

(declare-fun bs!356 () Bool)

(assert (= bs!356 start!810))

(declare-fun m!4051 () Bool)

(assert (=> bs!356 m!4051))

(push 1)

(assert (not start!810))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!27153 () Bool)

(declare-fun e!10761 () Bool)

(declare-fun inv!16 (TokenValue!66) Bool)

(assert (=> b!27153 (= e!10761 (inv!16 String!507))))

(declare-fun b!27154 () Bool)

(declare-fun res!25591 () Bool)

(declare-fun e!10762 () Bool)

(assert (=> b!27154 (=> res!25591 e!10762)))

(assert (=> b!27154 (= res!25591 (not (is-IntegerValue!200 String!507)))))

(declare-fun e!10760 () Bool)

(assert (=> b!27154 (= e!10760 e!10762)))

(declare-fun b!27155 () Bool)

(declare-fun inv!17 (TokenValue!66) Bool)

(assert (=> b!27155 (= e!10760 (inv!17 String!507))))

(declare-fun d!1800 () Bool)

(declare-fun c!14667 () Bool)

(assert (=> d!1800 (= c!14667 (is-IntegerValue!198 String!507))))

(assert (=> d!1800 (= (inv!21 String!507) e!10761)))

(declare-fun b!27156 () Bool)

(assert (=> b!27156 (= e!10761 e!10760)))

(declare-fun c!14668 () Bool)

(assert (=> b!27156 (= c!14668 (is-IntegerValue!199 String!507))))

(declare-fun b!27157 () Bool)

(declare-fun inv!15 (TokenValue!66) Bool)

(assert (=> b!27157 (= e!10762 (inv!15 String!507))))

(assert (= (and d!1800 c!14667) b!27153))

(assert (= (and d!1800 (not c!14667)) b!27156))

(assert (= (and b!27156 c!14668) b!27155))

(assert (= (and b!27156 (not c!14668)) b!27154))

(assert (= (and b!27154 (not res!25591)) b!27157))

(declare-fun m!4055 () Bool)

(assert (=> b!27153 m!4055))

(declare-fun m!4057 () Bool)

(assert (=> b!27155 m!4057))

(declare-fun m!4059 () Bool)

(assert (=> b!27157 m!4059))

(assert (=> start!810 d!1800))

(push 1)

(assert (not b!27155))

(assert (not b!27153))

(assert (not b!27157))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

