; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!834 () Bool)

(assert start!834)

(declare-datatypes ((List!116 0))(
  ( (Nil!114) (Cons!114 (h!5510 (_ BitVec 16)) (t!14595 List!116)) )
))
(declare-datatypes ((TokenValue!72 0))(
  ( (FloatLiteralValue!144 (text!949 List!116)) (TokenValueExt!71 (__x!365 Int)) (Broken!360 (value!5053 List!116)) (Object!73) (End!72) (Def!72) (Underscore!72) (Match!72) (Else!72) (Error!72) (Case!72) (If!72) (Extends!72) (Abstract!72) (Class!72) (Val!72) (DelimiterValue!144 (del!132 List!116)) (KeywordValue!78 (value!5054 List!116)) (CommentValue!144 (value!5055 List!116)) (WhitespaceValue!144 (value!5056 List!116)) (IndentationValue!72 (value!5057 List!116)) (String!525) (Int32!72) (Broken!361 (value!5058 List!116)) (Boolean!73) (Unit!73) (OperatorValue!75 (op!132 List!116)) (IdentifierValue!144 (value!5059 List!116)) (IdentifierValue!145 (value!5060 List!116)) (WhitespaceValue!145 (value!5061 List!116)) (True!144) (False!144) (Broken!362 (value!5062 List!116)) (Broken!363 (value!5063 List!116)) (True!145) (RightBrace!72) (RightBracket!72) (Colon!72) (Null!72) (Comma!72) (LeftBracket!72) (False!145) (LeftBrace!72) (ImaginaryLiteralValue!72 (text!950 List!116)) (StringLiteralValue!216 (value!5064 List!116)) (EOFValue!72 (value!5065 List!116)) (IdentValue!72 (value!5066 List!116)) (DelimiterValue!145 (value!5067 List!116)) (DedentValue!72 (value!5068 List!116)) (NewLineValue!72 (value!5069 List!116)) (IntegerValue!216 (value!5070 (_ BitVec 32)) (text!951 List!116)) (IntegerValue!217 (value!5071 Int) (text!952 List!116)) (Times!72) (Or!72) (Equal!72) (Minus!72) (Broken!364 (value!5072 List!116)) (And!72) (Div!72) (LessEqual!72) (Mod!72) (Concat!192) (Not!72) (Plus!72) (SpaceValue!72 (value!5073 List!116)) (IntegerValue!218 (value!5074 Int) (text!953 List!116)) (StringLiteralValue!217 (text!954 List!116)) (FloatLiteralValue!145 (text!955 List!116)) (BytesLiteralValue!72 (value!5075 List!116)) (CommentValue!145 (value!5076 List!116)) (StringLiteralValue!218 (value!5077 List!116)) (ErrorTokenValue!72 (msg!133 List!116)) )
))
(declare-fun inv!21 (TokenValue!72) Bool)

(assert (=> start!834 (not (inv!21 True!145))))

(declare-fun bs!368 () Bool)

(assert (= bs!368 start!834))

(declare-fun m!4099 () Bool)

(assert (=> bs!368 m!4099))

(push 1)

(assert (not start!834))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!27241 () Bool)

(declare-fun e!10816 () Bool)

(declare-fun inv!15 (TokenValue!72) Bool)

(assert (=> b!27241 (= e!10816 (inv!15 True!145))))

(declare-fun b!27243 () Bool)

(declare-fun e!10814 () Bool)

(declare-fun inv!16 (TokenValue!72) Bool)

(assert (=> b!27243 (= e!10814 (inv!16 True!145))))

(declare-fun b!27245 () Bool)

(declare-fun e!10815 () Bool)

(assert (=> b!27245 (= e!10814 e!10815)))

(declare-fun c!14703 () Bool)

(assert (=> b!27245 (= c!14703 (is-IntegerValue!217 True!145))))

(declare-fun b!27246 () Bool)

(declare-fun inv!17 (TokenValue!72) Bool)

(assert (=> b!27246 (= e!10815 (inv!17 True!145))))

(declare-fun b!27247 () Bool)

(declare-fun res!25609 () Bool)

(assert (=> b!27247 (=> res!25609 e!10816)))

(assert (=> b!27247 (= res!25609 (not (is-IntegerValue!218 True!145)))))

(assert (=> b!27247 (= e!10815 e!10816)))

(declare-fun d!1815 () Bool)

(declare-fun c!14704 () Bool)

(assert (=> d!1815 (= c!14704 (is-IntegerValue!216 True!145))))

(assert (=> d!1815 (= (inv!21 True!145) e!10814)))

(assert (= (and d!1815 c!14704) b!27243))

(assert (= (and d!1815 (not c!14704)) b!27245))

(assert (= (and b!27245 c!14703) b!27246))

(assert (= (and b!27245 (not c!14703)) b!27247))

(assert (= (and b!27247 (not res!25609)) b!27241))

(declare-fun m!4103 () Bool)

(assert (=> b!27241 m!4103))

(declare-fun m!4105 () Bool)

(assert (=> b!27243 m!4105))

(declare-fun m!4107 () Bool)

(assert (=> b!27246 m!4107))

(assert (=> start!834 d!1815))

(push 1)

(assert (not b!27243))

(assert (not b!27246))

(assert (not b!27241))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

