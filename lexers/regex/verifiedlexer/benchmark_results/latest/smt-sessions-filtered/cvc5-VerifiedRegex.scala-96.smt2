; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!706 () Bool)

(assert start!706)

(declare-datatypes ((List!84 0))(
  ( (Nil!82) (Cons!82 (h!5478 (_ BitVec 16)) (t!14563 List!84)) )
))
(declare-datatypes ((TokenValue!40 0))(
  ( (FloatLiteralValue!80 (text!725 List!84)) (TokenValueExt!39 (__x!333 Int)) (Broken!200 (value!4205 List!84)) (Object!41) (End!40) (Def!40) (Underscore!40) (Match!40) (Else!40) (Error!40) (Case!40) (If!40) (Extends!40) (Abstract!40) (Class!40) (Val!40) (DelimiterValue!80 (del!100 List!84)) (KeywordValue!46 (value!4206 List!84)) (CommentValue!80 (value!4207 List!84)) (WhitespaceValue!80 (value!4208 List!84)) (IndentationValue!40 (value!4209 List!84)) (String!429) (Int32!40) (Broken!201 (value!4210 List!84)) (Boolean!41) (Unit!41) (OperatorValue!43 (op!100 List!84)) (IdentifierValue!80 (value!4211 List!84)) (IdentifierValue!81 (value!4212 List!84)) (WhitespaceValue!81 (value!4213 List!84)) (True!80) (False!80) (Broken!202 (value!4214 List!84)) (Broken!203 (value!4215 List!84)) (True!81) (RightBrace!40) (RightBracket!40) (Colon!40) (Null!40) (Comma!40) (LeftBracket!40) (False!81) (LeftBrace!40) (ImaginaryLiteralValue!40 (text!726 List!84)) (StringLiteralValue!120 (value!4216 List!84)) (EOFValue!40 (value!4217 List!84)) (IdentValue!40 (value!4218 List!84)) (DelimiterValue!81 (value!4219 List!84)) (DedentValue!40 (value!4220 List!84)) (NewLineValue!40 (value!4221 List!84)) (IntegerValue!120 (value!4222 (_ BitVec 32)) (text!727 List!84)) (IntegerValue!121 (value!4223 Int) (text!728 List!84)) (Times!40) (Or!40) (Equal!40) (Minus!40) (Broken!204 (value!4224 List!84)) (And!40) (Div!40) (LessEqual!40) (Mod!40) (Concat!160) (Not!40) (Plus!40) (SpaceValue!40 (value!4225 List!84)) (IntegerValue!122 (value!4226 Int) (text!729 List!84)) (StringLiteralValue!121 (text!730 List!84)) (FloatLiteralValue!81 (text!731 List!84)) (BytesLiteralValue!40 (value!4227 List!84)) (CommentValue!81 (value!4228 List!84)) (StringLiteralValue!122 (value!4229 List!84)) (ErrorTokenValue!40 (msg!101 List!84)) )
))
(declare-fun inv!21 (TokenValue!40) Bool)

(assert (=> start!706 (not (inv!21 LeftBrace!40))))

(declare-fun bs!304 () Bool)

(assert (= bs!304 start!706))

(declare-fun m!3853 () Bool)

(assert (=> bs!304 m!3853))

(push 1)

(assert (not start!706))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!26763 () Bool)

(declare-fun e!10526 () Bool)

(declare-fun inv!17 (TokenValue!40) Bool)

(assert (=> b!26763 (= e!10526 (inv!17 LeftBrace!40))))

(declare-fun b!26764 () Bool)

(declare-fun e!10527 () Bool)

(assert (=> b!26764 (= e!10527 e!10526)))

(declare-fun c!14512 () Bool)

(assert (=> b!26764 (= c!14512 (is-IntegerValue!121 LeftBrace!40))))

(declare-fun b!26765 () Bool)

(declare-fun e!10528 () Bool)

(declare-fun inv!15 (TokenValue!40) Bool)

(assert (=> b!26765 (= e!10528 (inv!15 LeftBrace!40))))

(declare-fun b!26766 () Bool)

(declare-fun res!25513 () Bool)

(assert (=> b!26766 (=> res!25513 e!10528)))

(assert (=> b!26766 (= res!25513 (not (is-IntegerValue!122 LeftBrace!40)))))

(assert (=> b!26766 (= e!10526 e!10528)))

(declare-fun d!1735 () Bool)

(declare-fun c!14511 () Bool)

(assert (=> d!1735 (= c!14511 (is-IntegerValue!120 LeftBrace!40))))

(assert (=> d!1735 (= (inv!21 LeftBrace!40) e!10527)))

(declare-fun b!26767 () Bool)

(declare-fun inv!16 (TokenValue!40) Bool)

(assert (=> b!26767 (= e!10527 (inv!16 LeftBrace!40))))

(assert (= (and d!1735 c!14511) b!26767))

(assert (= (and d!1735 (not c!14511)) b!26764))

(assert (= (and b!26764 c!14512) b!26763))

(assert (= (and b!26764 (not c!14512)) b!26766))

(assert (= (and b!26766 (not res!25513)) b!26765))

(declare-fun m!3857 () Bool)

(assert (=> b!26763 m!3857))

(declare-fun m!3859 () Bool)

(assert (=> b!26765 m!3859))

(declare-fun m!3861 () Bool)

(assert (=> b!26767 m!3861))

(assert (=> start!706 d!1735))

(push 1)

(assert (not b!26763))

(assert (not b!26767))

(assert (not b!26765))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

