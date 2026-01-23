; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!850 () Bool)

(assert start!850)

(declare-datatypes ((List!120 0))(
  ( (Nil!118) (Cons!118 (h!5514 (_ BitVec 16)) (t!14599 List!120)) )
))
(declare-datatypes ((TokenValue!76 0))(
  ( (FloatLiteralValue!152 (text!977 List!120)) (TokenValueExt!75 (__x!369 Int)) (Broken!380 (value!5159 List!120)) (Object!77) (End!76) (Def!76) (Underscore!76) (Match!76) (Else!76) (Error!76) (Case!76) (If!76) (Extends!76) (Abstract!76) (Class!76) (Val!76) (DelimiterValue!152 (del!136 List!120)) (KeywordValue!82 (value!5160 List!120)) (CommentValue!152 (value!5161 List!120)) (WhitespaceValue!152 (value!5162 List!120)) (IndentationValue!76 (value!5163 List!120)) (String!537) (Int32!76) (Broken!381 (value!5164 List!120)) (Boolean!77) (Unit!77) (OperatorValue!79 (op!136 List!120)) (IdentifierValue!152 (value!5165 List!120)) (IdentifierValue!153 (value!5166 List!120)) (WhitespaceValue!153 (value!5167 List!120)) (True!152) (False!152) (Broken!382 (value!5168 List!120)) (Broken!383 (value!5169 List!120)) (True!153) (RightBrace!76) (RightBracket!76) (Colon!76) (Null!76) (Comma!76) (LeftBracket!76) (False!153) (LeftBrace!76) (ImaginaryLiteralValue!76 (text!978 List!120)) (StringLiteralValue!228 (value!5170 List!120)) (EOFValue!76 (value!5171 List!120)) (IdentValue!76 (value!5172 List!120)) (DelimiterValue!153 (value!5173 List!120)) (DedentValue!76 (value!5174 List!120)) (NewLineValue!76 (value!5175 List!120)) (IntegerValue!228 (value!5176 (_ BitVec 32)) (text!979 List!120)) (IntegerValue!229 (value!5177 Int) (text!980 List!120)) (Times!76) (Or!76) (Equal!76) (Minus!76) (Broken!384 (value!5178 List!120)) (And!76) (Div!76) (LessEqual!76) (Mod!76) (Concat!196) (Not!76) (Plus!76) (SpaceValue!76 (value!5179 List!120)) (IntegerValue!230 (value!5180 Int) (text!981 List!120)) (StringLiteralValue!229 (text!982 List!120)) (FloatLiteralValue!153 (text!983 List!120)) (BytesLiteralValue!76 (value!5181 List!120)) (CommentValue!153 (value!5182 List!120)) (StringLiteralValue!230 (value!5183 List!120)) (ErrorTokenValue!76 (msg!137 List!120)) )
))
(declare-fun inv!21 (TokenValue!76) Bool)

(assert (=> start!850 (not (inv!21 Unit!77))))

(declare-fun bs!376 () Bool)

(assert (= bs!376 start!850))

(declare-fun m!4131 () Bool)

(assert (=> bs!376 m!4131))

(push 1)

(assert (not start!850))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!27301 () Bool)

(declare-fun e!10848 () Bool)

(declare-fun inv!16 (TokenValue!76) Bool)

(assert (=> b!27301 (= e!10848 (inv!16 Unit!77))))

(declare-fun b!27302 () Bool)

(declare-fun e!10850 () Bool)

(declare-fun inv!15 (TokenValue!76) Bool)

(assert (=> b!27302 (= e!10850 (inv!15 Unit!77))))

(declare-fun d!1825 () Bool)

(declare-fun c!14728 () Bool)

(assert (=> d!1825 (= c!14728 (is-IntegerValue!228 Unit!77))))

(assert (=> d!1825 (= (inv!21 Unit!77) e!10848)))

(declare-fun b!27303 () Bool)

(declare-fun res!25619 () Bool)

(assert (=> b!27303 (=> res!25619 e!10850)))

(assert (=> b!27303 (= res!25619 (not (is-IntegerValue!230 Unit!77)))))

(declare-fun e!10849 () Bool)

(assert (=> b!27303 (= e!10849 e!10850)))

(declare-fun b!27304 () Bool)

(assert (=> b!27304 (= e!10848 e!10849)))

(declare-fun c!14727 () Bool)

(assert (=> b!27304 (= c!14727 (is-IntegerValue!229 Unit!77))))

(declare-fun b!27305 () Bool)

(declare-fun inv!17 (TokenValue!76) Bool)

(assert (=> b!27305 (= e!10849 (inv!17 Unit!77))))

(assert (= (and d!1825 c!14728) b!27301))

(assert (= (and d!1825 (not c!14728)) b!27304))

(assert (= (and b!27304 c!14727) b!27305))

(assert (= (and b!27304 (not c!14727)) b!27303))

(assert (= (and b!27303 (not res!25619)) b!27302))

(declare-fun m!4135 () Bool)

(assert (=> b!27301 m!4135))

(declare-fun m!4137 () Bool)

(assert (=> b!27302 m!4137))

(declare-fun m!4139 () Bool)

(assert (=> b!27305 m!4139))

(assert (=> start!850 d!1825))

(push 1)

(assert (not b!27302))

(assert (not b!27301))

(assert (not b!27305))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

