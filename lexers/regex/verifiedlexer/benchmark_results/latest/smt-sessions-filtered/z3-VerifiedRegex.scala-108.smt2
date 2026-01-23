; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!804 () Bool)

(assert start!804)

(declare-datatypes ((List!109 0))(
  ( (Nil!107) (Cons!107 (h!5503 (_ BitVec 16)) (t!14588 List!109)) )
))
(declare-datatypes ((TokenValue!65 0))(
  ( (FloatLiteralValue!130 (text!900 List!109)) (TokenValueExt!64 (__x!358 Int)) (Broken!325 (value!4866 List!109)) (Object!66) (End!65) (Def!65) (Underscore!65) (Match!65) (Else!65) (Error!65) (Case!65) (If!65) (Extends!65) (Abstract!65) (Class!65) (Val!65) (DelimiterValue!130 (del!125 List!109)) (KeywordValue!71 (value!4867 List!109)) (CommentValue!130 (value!4868 List!109)) (WhitespaceValue!130 (value!4869 List!109)) (IndentationValue!65 (value!4870 List!109)) (String!502) (Int32!65) (Broken!326 (value!4871 List!109)) (Boolean!66) (Unit!66) (OperatorValue!68 (op!125 List!109)) (IdentifierValue!130 (value!4872 List!109)) (IdentifierValue!131 (value!4873 List!109)) (WhitespaceValue!131 (value!4874 List!109)) (True!130) (False!130) (Broken!327 (value!4875 List!109)) (Broken!328 (value!4876 List!109)) (True!131) (RightBrace!65) (RightBracket!65) (Colon!65) (Null!65) (Comma!65) (LeftBracket!65) (False!131) (LeftBrace!65) (ImaginaryLiteralValue!65 (text!901 List!109)) (StringLiteralValue!195 (value!4877 List!109)) (EOFValue!65 (value!4878 List!109)) (IdentValue!65 (value!4879 List!109)) (DelimiterValue!131 (value!4880 List!109)) (DedentValue!65 (value!4881 List!109)) (NewLineValue!65 (value!4882 List!109)) (IntegerValue!195 (value!4883 (_ BitVec 32)) (text!902 List!109)) (IntegerValue!196 (value!4884 Int) (text!903 List!109)) (Times!65) (Or!65) (Equal!65) (Minus!65) (Broken!329 (value!4885 List!109)) (And!65) (Div!65) (LessEqual!65) (Mod!65) (Concat!185) (Not!65) (Plus!65) (SpaceValue!65 (value!4886 List!109)) (IntegerValue!197 (value!4887 Int) (text!904 List!109)) (StringLiteralValue!196 (text!905 List!109)) (FloatLiteralValue!131 (text!906 List!109)) (BytesLiteralValue!65 (value!4888 List!109)) (CommentValue!131 (value!4889 List!109)) (StringLiteralValue!197 (value!4890 List!109)) (ErrorTokenValue!65 (msg!126 List!109)) )
))
(declare-fun inv!21 (TokenValue!65) Bool)

(assert (=> start!804 (not (inv!21 RightBracket!65))))

(declare-fun bs!353 () Bool)

(assert (= bs!353 start!804))

(declare-fun m!4037 () Bool)

(assert (=> bs!353 m!4037))

(check-sat (not start!804))
(check-sat)
(get-model)

(declare-fun b!27123 () Bool)

(declare-fun e!10742 () Bool)

(declare-fun inv!15 (TokenValue!65) Bool)

(assert (=> b!27123 (= e!10742 (inv!15 RightBracket!65))))

(declare-fun b!27124 () Bool)

(declare-fun res!25585 () Bool)

(assert (=> b!27124 (=> res!25585 e!10742)))

(get-info :version)

(assert (=> b!27124 (= res!25585 (not ((_ is IntegerValue!197) RightBracket!65)))))

(declare-fun e!10744 () Bool)

(assert (=> b!27124 (= e!10744 e!10742)))

(declare-fun b!27125 () Bool)

(declare-fun e!10743 () Bool)

(assert (=> b!27125 (= e!10743 e!10744)))

(declare-fun c!14655 () Bool)

(assert (=> b!27125 (= c!14655 ((_ is IntegerValue!196) RightBracket!65))))

(declare-fun b!27126 () Bool)

(declare-fun inv!16 (TokenValue!65) Bool)

(assert (=> b!27126 (= e!10743 (inv!16 RightBracket!65))))

(declare-fun d!1797 () Bool)

(declare-fun c!14656 () Bool)

(assert (=> d!1797 (= c!14656 ((_ is IntegerValue!195) RightBracket!65))))

(assert (=> d!1797 (= (inv!21 RightBracket!65) e!10743)))

(declare-fun b!27127 () Bool)

(declare-fun inv!17 (TokenValue!65) Bool)

(assert (=> b!27127 (= e!10744 (inv!17 RightBracket!65))))

(assert (= (and d!1797 c!14656) b!27126))

(assert (= (and d!1797 (not c!14656)) b!27125))

(assert (= (and b!27125 c!14655) b!27127))

(assert (= (and b!27125 (not c!14655)) b!27124))

(assert (= (and b!27124 (not res!25585)) b!27123))

(declare-fun m!4039 () Bool)

(assert (=> b!27123 m!4039))

(declare-fun m!4041 () Bool)

(assert (=> b!27126 m!4041))

(declare-fun m!4043 () Bool)

(assert (=> b!27127 m!4043))

(assert (=> start!804 d!1797))

(check-sat (not b!27123) (not b!27127) (not b!27126))
(check-sat)
