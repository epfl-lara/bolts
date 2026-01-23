; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!818 () Bool)

(assert start!818)

(declare-datatypes ((List!112 0))(
  ( (Nil!110) (Cons!110 (h!5506 (_ BitVec 16)) (t!14591 List!112)) )
))
(declare-datatypes ((TokenValue!68 0))(
  ( (FloatLiteralValue!136 (text!921 List!112)) (TokenValueExt!67 (__x!361 Int)) (Broken!340 (value!4947 List!112)) (Object!69) (End!68) (Def!68) (Underscore!68) (Match!68) (Else!68) (Error!68) (Case!68) (If!68) (Extends!68) (Abstract!68) (Class!68) (Val!68) (DelimiterValue!136 (del!128 List!112)) (KeywordValue!74 (value!4948 List!112)) (CommentValue!136 (value!4949 List!112)) (WhitespaceValue!136 (value!4950 List!112)) (IndentationValue!68 (value!4951 List!112)) (String!513) (Int32!68) (Broken!341 (value!4952 List!112)) (Boolean!69) (Unit!69) (OperatorValue!71 (op!128 List!112)) (IdentifierValue!136 (value!4953 List!112)) (IdentifierValue!137 (value!4954 List!112)) (WhitespaceValue!137 (value!4955 List!112)) (True!136) (False!136) (Broken!342 (value!4956 List!112)) (Broken!343 (value!4957 List!112)) (True!137) (RightBrace!68) (RightBracket!68) (Colon!68) (Null!68) (Comma!68) (LeftBracket!68) (False!137) (LeftBrace!68) (ImaginaryLiteralValue!68 (text!922 List!112)) (StringLiteralValue!204 (value!4958 List!112)) (EOFValue!68 (value!4959 List!112)) (IdentValue!68 (value!4960 List!112)) (DelimiterValue!137 (value!4961 List!112)) (DedentValue!68 (value!4962 List!112)) (NewLineValue!68 (value!4963 List!112)) (IntegerValue!204 (value!4964 (_ BitVec 32)) (text!923 List!112)) (IntegerValue!205 (value!4965 Int) (text!924 List!112)) (Times!68) (Or!68) (Equal!68) (Minus!68) (Broken!344 (value!4966 List!112)) (And!68) (Div!68) (LessEqual!68) (Mod!68) (Concat!188) (Not!68) (Plus!68) (SpaceValue!68 (value!4967 List!112)) (IntegerValue!206 (value!4968 Int) (text!925 List!112)) (StringLiteralValue!205 (text!926 List!112)) (FloatLiteralValue!137 (text!927 List!112)) (BytesLiteralValue!68 (value!4969 List!112)) (CommentValue!137 (value!4970 List!112)) (StringLiteralValue!206 (value!4971 List!112)) (ErrorTokenValue!68 (msg!129 List!112)) )
))
(declare-fun inv!21 (TokenValue!68) Bool)

(assert (=> start!818 (not (inv!21 Times!68))))

(declare-fun bs!360 () Bool)

(assert (= bs!360 start!818))

(declare-fun m!4067 () Bool)

(assert (=> bs!360 m!4067))

(push 1)

(assert (not start!818))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!27183 () Bool)

(declare-fun res!25597 () Bool)

(declare-fun e!10778 () Bool)

(assert (=> b!27183 (=> res!25597 e!10778)))

(assert (=> b!27183 (= res!25597 (not (is-IntegerValue!206 Times!68)))))

(declare-fun e!10780 () Bool)

(assert (=> b!27183 (= e!10780 e!10778)))

(declare-fun d!1805 () Bool)

(declare-fun c!14680 () Bool)

(assert (=> d!1805 (= c!14680 (is-IntegerValue!204 Times!68))))

(declare-fun e!10779 () Bool)

(assert (=> d!1805 (= (inv!21 Times!68) e!10779)))

(declare-fun b!27184 () Bool)

(declare-fun inv!16 (TokenValue!68) Bool)

(assert (=> b!27184 (= e!10779 (inv!16 Times!68))))

(declare-fun b!27185 () Bool)

(assert (=> b!27185 (= e!10779 e!10780)))

(declare-fun c!14679 () Bool)

(assert (=> b!27185 (= c!14679 (is-IntegerValue!205 Times!68))))

(declare-fun b!27186 () Bool)

(declare-fun inv!15 (TokenValue!68) Bool)

(assert (=> b!27186 (= e!10778 (inv!15 Times!68))))

(declare-fun b!27187 () Bool)

(declare-fun inv!17 (TokenValue!68) Bool)

(assert (=> b!27187 (= e!10780 (inv!17 Times!68))))

(assert (= (and d!1805 c!14680) b!27184))

(assert (= (and d!1805 (not c!14680)) b!27185))

(assert (= (and b!27185 c!14679) b!27187))

(assert (= (and b!27185 (not c!14679)) b!27183))

(assert (= (and b!27183 (not res!25597)) b!27186))

(declare-fun m!4071 () Bool)

(assert (=> b!27184 m!4071))

(declare-fun m!4073 () Bool)

(assert (=> b!27186 m!4073))

(declare-fun m!4075 () Bool)

(assert (=> b!27187 m!4075))

(assert (=> start!818 d!1805))

(push 1)

(assert (not b!27184))

(assert (not b!27187))

(assert (not b!27186))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

