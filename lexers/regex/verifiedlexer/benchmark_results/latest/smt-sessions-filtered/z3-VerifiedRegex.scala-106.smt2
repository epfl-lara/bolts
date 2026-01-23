; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!788 () Bool)

(assert start!788)

(declare-datatypes ((List!105 0))(
  ( (Nil!103) (Cons!103 (h!5499 (_ BitVec 16)) (t!14584 List!105)) )
))
(declare-datatypes ((TokenValue!61 0))(
  ( (FloatLiteralValue!122 (text!872 List!105)) (TokenValueExt!60 (__x!354 Int)) (Broken!305 (value!4760 List!105)) (Object!62) (End!61) (Def!61) (Underscore!61) (Match!61) (Else!61) (Error!61) (Case!61) (If!61) (Extends!61) (Abstract!61) (Class!61) (Val!61) (DelimiterValue!122 (del!121 List!105)) (KeywordValue!67 (value!4761 List!105)) (CommentValue!122 (value!4762 List!105)) (WhitespaceValue!122 (value!4763 List!105)) (IndentationValue!61 (value!4764 List!105)) (String!490) (Int32!61) (Broken!306 (value!4765 List!105)) (Boolean!62) (Unit!62) (OperatorValue!64 (op!121 List!105)) (IdentifierValue!122 (value!4766 List!105)) (IdentifierValue!123 (value!4767 List!105)) (WhitespaceValue!123 (value!4768 List!105)) (True!122) (False!122) (Broken!307 (value!4769 List!105)) (Broken!308 (value!4770 List!105)) (True!123) (RightBrace!61) (RightBracket!61) (Colon!61) (Null!61) (Comma!61) (LeftBracket!61) (False!123) (LeftBrace!61) (ImaginaryLiteralValue!61 (text!873 List!105)) (StringLiteralValue!183 (value!4771 List!105)) (EOFValue!61 (value!4772 List!105)) (IdentValue!61 (value!4773 List!105)) (DelimiterValue!123 (value!4774 List!105)) (DedentValue!61 (value!4775 List!105)) (NewLineValue!61 (value!4776 List!105)) (IntegerValue!183 (value!4777 (_ BitVec 32)) (text!874 List!105)) (IntegerValue!184 (value!4778 Int) (text!875 List!105)) (Times!61) (Or!61) (Equal!61) (Minus!61) (Broken!309 (value!4779 List!105)) (And!61) (Div!61) (LessEqual!61) (Mod!61) (Concat!181) (Not!61) (Plus!61) (SpaceValue!61 (value!4780 List!105)) (IntegerValue!185 (value!4781 Int) (text!876 List!105)) (StringLiteralValue!184 (text!877 List!105)) (FloatLiteralValue!123 (text!878 List!105)) (BytesLiteralValue!61 (value!4782 List!105)) (CommentValue!123 (value!4783 List!105)) (StringLiteralValue!185 (value!4784 List!105)) (ErrorTokenValue!61 (msg!122 List!105)) )
))
(declare-fun inv!21 (TokenValue!61) Bool)

(assert (=> start!788 (not (inv!21 Plus!61))))

(declare-fun bs!345 () Bool)

(assert (= bs!345 start!788))

(declare-fun m!4005 () Bool)

(assert (=> bs!345 m!4005))

(check-sat (not start!788))
(check-sat)
(get-model)

(declare-fun b!27063 () Bool)

(declare-fun e!10708 () Bool)

(declare-fun e!10707 () Bool)

(assert (=> b!27063 (= e!10708 e!10707)))

(declare-fun c!14632 () Bool)

(get-info :version)

(assert (=> b!27063 (= c!14632 ((_ is IntegerValue!184) Plus!61))))

(declare-fun d!1787 () Bool)

(declare-fun c!14631 () Bool)

(assert (=> d!1787 (= c!14631 ((_ is IntegerValue!183) Plus!61))))

(assert (=> d!1787 (= (inv!21 Plus!61) e!10708)))

(declare-fun b!27064 () Bool)

(declare-fun inv!16 (TokenValue!61) Bool)

(assert (=> b!27064 (= e!10708 (inv!16 Plus!61))))

(declare-fun b!27065 () Bool)

(declare-fun res!25573 () Bool)

(declare-fun e!10706 () Bool)

(assert (=> b!27065 (=> res!25573 e!10706)))

(assert (=> b!27065 (= res!25573 (not ((_ is IntegerValue!185) Plus!61)))))

(assert (=> b!27065 (= e!10707 e!10706)))

(declare-fun b!27066 () Bool)

(declare-fun inv!17 (TokenValue!61) Bool)

(assert (=> b!27066 (= e!10707 (inv!17 Plus!61))))

(declare-fun b!27067 () Bool)

(declare-fun inv!15 (TokenValue!61) Bool)

(assert (=> b!27067 (= e!10706 (inv!15 Plus!61))))

(assert (= (and d!1787 c!14631) b!27064))

(assert (= (and d!1787 (not c!14631)) b!27063))

(assert (= (and b!27063 c!14632) b!27066))

(assert (= (and b!27063 (not c!14632)) b!27065))

(assert (= (and b!27065 (not res!25573)) b!27067))

(declare-fun m!4007 () Bool)

(assert (=> b!27064 m!4007))

(declare-fun m!4011 () Bool)

(assert (=> b!27066 m!4011))

(declare-fun m!4013 () Bool)

(assert (=> b!27067 m!4013))

(assert (=> start!788 d!1787))

(check-sat (not b!27066) (not b!27067) (not b!27064))
(check-sat)
