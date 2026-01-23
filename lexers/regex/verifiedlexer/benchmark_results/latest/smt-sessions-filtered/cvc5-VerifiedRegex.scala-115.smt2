; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!858 () Bool)

(assert start!858)

(declare-datatypes ((List!122 0))(
  ( (Nil!120) (Cons!120 (h!5516 (_ BitVec 16)) (t!14601 List!122)) )
))
(declare-datatypes ((TokenValue!78 0))(
  ( (FloatLiteralValue!156 (text!991 List!122)) (TokenValueExt!77 (__x!371 Int)) (Broken!390 (value!5212 List!122)) (Object!79) (End!78) (Def!78) (Underscore!78) (Match!78) (Else!78) (Error!78) (Case!78) (If!78) (Extends!78) (Abstract!78) (Class!78) (Val!78) (DelimiterValue!156 (del!138 List!122)) (KeywordValue!84 (value!5213 List!122)) (CommentValue!156 (value!5214 List!122)) (WhitespaceValue!156 (value!5215 List!122)) (IndentationValue!78 (value!5216 List!122)) (String!543) (Int32!78) (Broken!391 (value!5217 List!122)) (Boolean!79) (Unit!79) (OperatorValue!81 (op!138 List!122)) (IdentifierValue!156 (value!5218 List!122)) (IdentifierValue!157 (value!5219 List!122)) (WhitespaceValue!157 (value!5220 List!122)) (True!156) (False!156) (Broken!392 (value!5221 List!122)) (Broken!393 (value!5222 List!122)) (True!157) (RightBrace!78) (RightBracket!78) (Colon!78) (Null!78) (Comma!78) (LeftBracket!78) (False!157) (LeftBrace!78) (ImaginaryLiteralValue!78 (text!992 List!122)) (StringLiteralValue!234 (value!5223 List!122)) (EOFValue!78 (value!5224 List!122)) (IdentValue!78 (value!5225 List!122)) (DelimiterValue!157 (value!5226 List!122)) (DedentValue!78 (value!5227 List!122)) (NewLineValue!78 (value!5228 List!122)) (IntegerValue!234 (value!5229 (_ BitVec 32)) (text!993 List!122)) (IntegerValue!235 (value!5230 Int) (text!994 List!122)) (Times!78) (Or!78) (Equal!78) (Minus!78) (Broken!394 (value!5231 List!122)) (And!78) (Div!78) (LessEqual!78) (Mod!78) (Concat!198) (Not!78) (Plus!78) (SpaceValue!78 (value!5232 List!122)) (IntegerValue!236 (value!5233 Int) (text!995 List!122)) (StringLiteralValue!235 (text!996 List!122)) (FloatLiteralValue!157 (text!997 List!122)) (BytesLiteralValue!78 (value!5234 List!122)) (CommentValue!157 (value!5235 List!122)) (StringLiteralValue!236 (value!5236 List!122)) (ErrorTokenValue!78 (msg!139 List!122)) )
))
(declare-fun inv!21 (TokenValue!78) Bool)

(assert (=> start!858 (not (inv!21 Val!78))))

(declare-fun bs!380 () Bool)

(assert (= bs!380 start!858))

(declare-fun m!4147 () Bool)

(assert (=> bs!380 m!4147))

(push 1)

(assert (not start!858))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!27333 () Bool)

(declare-fun res!25627 () Bool)

(declare-fun e!10868 () Bool)

(assert (=> b!27333 (=> res!25627 e!10868)))

(assert (=> b!27333 (= res!25627 (not (is-IntegerValue!236 Val!78)))))

(declare-fun e!10870 () Bool)

(assert (=> b!27333 (= e!10870 e!10868)))

(declare-fun b!27334 () Bool)

(declare-fun e!10869 () Bool)

(assert (=> b!27334 (= e!10869 e!10870)))

(declare-fun c!14739 () Bool)

(assert (=> b!27334 (= c!14739 (is-IntegerValue!235 Val!78))))

(declare-fun b!27335 () Bool)

(declare-fun inv!15 (TokenValue!78) Bool)

(assert (=> b!27335 (= e!10868 (inv!15 Val!78))))

(declare-fun b!27336 () Bool)

(declare-fun inv!16 (TokenValue!78) Bool)

(assert (=> b!27336 (= e!10869 (inv!16 Val!78))))

(declare-fun b!27337 () Bool)

(declare-fun inv!17 (TokenValue!78) Bool)

(assert (=> b!27337 (= e!10870 (inv!17 Val!78))))

(declare-fun d!1830 () Bool)

(declare-fun c!14740 () Bool)

(assert (=> d!1830 (= c!14740 (is-IntegerValue!234 Val!78))))

(assert (=> d!1830 (= (inv!21 Val!78) e!10869)))

(assert (= (and d!1830 c!14740) b!27336))

(assert (= (and d!1830 (not c!14740)) b!27334))

(assert (= (and b!27334 c!14739) b!27337))

(assert (= (and b!27334 (not c!14739)) b!27333))

(assert (= (and b!27333 (not res!25627)) b!27335))

(declare-fun m!4151 () Bool)

(assert (=> b!27335 m!4151))

(declare-fun m!4153 () Bool)

(assert (=> b!27336 m!4153))

(declare-fun m!4155 () Bool)

(assert (=> b!27337 m!4155))

(assert (=> start!858 d!1830))

(push 1)

(assert (not b!27335))

(assert (not b!27336))

(assert (not b!27337))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

