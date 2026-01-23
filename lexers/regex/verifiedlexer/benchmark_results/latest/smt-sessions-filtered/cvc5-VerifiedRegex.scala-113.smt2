; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!842 () Bool)

(assert start!842)

(declare-datatypes ((List!118 0))(
  ( (Nil!116) (Cons!116 (h!5512 (_ BitVec 16)) (t!14597 List!118)) )
))
(declare-datatypes ((TokenValue!74 0))(
  ( (FloatLiteralValue!148 (text!963 List!118)) (TokenValueExt!73 (__x!367 Int)) (Broken!370 (value!5106 List!118)) (Object!75) (End!74) (Def!74) (Underscore!74) (Match!74) (Else!74) (Error!74) (Case!74) (If!74) (Extends!74) (Abstract!74) (Class!74) (Val!74) (DelimiterValue!148 (del!134 List!118)) (KeywordValue!80 (value!5107 List!118)) (CommentValue!148 (value!5108 List!118)) (WhitespaceValue!148 (value!5109 List!118)) (IndentationValue!74 (value!5110 List!118)) (String!531) (Int32!74) (Broken!371 (value!5111 List!118)) (Boolean!75) (Unit!75) (OperatorValue!77 (op!134 List!118)) (IdentifierValue!148 (value!5112 List!118)) (IdentifierValue!149 (value!5113 List!118)) (WhitespaceValue!149 (value!5114 List!118)) (True!148) (False!148) (Broken!372 (value!5115 List!118)) (Broken!373 (value!5116 List!118)) (True!149) (RightBrace!74) (RightBracket!74) (Colon!74) (Null!74) (Comma!74) (LeftBracket!74) (False!149) (LeftBrace!74) (ImaginaryLiteralValue!74 (text!964 List!118)) (StringLiteralValue!222 (value!5117 List!118)) (EOFValue!74 (value!5118 List!118)) (IdentValue!74 (value!5119 List!118)) (DelimiterValue!149 (value!5120 List!118)) (DedentValue!74 (value!5121 List!118)) (NewLineValue!74 (value!5122 List!118)) (IntegerValue!222 (value!5123 (_ BitVec 32)) (text!965 List!118)) (IntegerValue!223 (value!5124 Int) (text!966 List!118)) (Times!74) (Or!74) (Equal!74) (Minus!74) (Broken!374 (value!5125 List!118)) (And!74) (Div!74) (LessEqual!74) (Mod!74) (Concat!194) (Not!74) (Plus!74) (SpaceValue!74 (value!5126 List!118)) (IntegerValue!224 (value!5127 Int) (text!967 List!118)) (StringLiteralValue!223 (text!968 List!118)) (FloatLiteralValue!149 (text!969 List!118)) (BytesLiteralValue!74 (value!5128 List!118)) (CommentValue!149 (value!5129 List!118)) (StringLiteralValue!224 (value!5130 List!118)) (ErrorTokenValue!74 (msg!135 List!118)) )
))
(declare-fun inv!21 (TokenValue!74) Bool)

(assert (=> start!842 (not (inv!21 Underscore!74))))

(declare-fun bs!372 () Bool)

(assert (= bs!372 start!842))

(declare-fun m!4115 () Bool)

(assert (=> bs!372 m!4115))

(push 1)

(assert (not start!842))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!27273 () Bool)

(declare-fun e!10833 () Bool)

(declare-fun inv!17 (TokenValue!74) Bool)

(assert (=> b!27273 (= e!10833 (inv!17 Underscore!74))))

(declare-fun d!1820 () Bool)

(declare-fun c!14716 () Bool)

(assert (=> d!1820 (= c!14716 (is-IntegerValue!222 Underscore!74))))

(declare-fun e!10832 () Bool)

(assert (=> d!1820 (= (inv!21 Underscore!74) e!10832)))

(declare-fun b!27274 () Bool)

(declare-fun res!25615 () Bool)

(declare-fun e!10834 () Bool)

(assert (=> b!27274 (=> res!25615 e!10834)))

(assert (=> b!27274 (= res!25615 (not (is-IntegerValue!224 Underscore!74)))))

(assert (=> b!27274 (= e!10833 e!10834)))

(declare-fun b!27275 () Bool)

(declare-fun inv!16 (TokenValue!74) Bool)

(assert (=> b!27275 (= e!10832 (inv!16 Underscore!74))))

(declare-fun b!27276 () Bool)

(assert (=> b!27276 (= e!10832 e!10833)))

(declare-fun c!14715 () Bool)

(assert (=> b!27276 (= c!14715 (is-IntegerValue!223 Underscore!74))))

(declare-fun b!27277 () Bool)

(declare-fun inv!15 (TokenValue!74) Bool)

(assert (=> b!27277 (= e!10834 (inv!15 Underscore!74))))

(assert (= (and d!1820 c!14716) b!27275))

(assert (= (and d!1820 (not c!14716)) b!27276))

(assert (= (and b!27276 c!14715) b!27273))

(assert (= (and b!27276 (not c!14715)) b!27274))

(assert (= (and b!27274 (not res!25615)) b!27277))

(declare-fun m!4119 () Bool)

(assert (=> b!27273 m!4119))

(declare-fun m!4121 () Bool)

(assert (=> b!27275 m!4121))

(declare-fun m!4123 () Bool)

(assert (=> b!27277 m!4123))

(assert (=> start!842 d!1820))

(push 1)

(assert (not b!27275))

(assert (not b!27273))

(assert (not b!27277))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

