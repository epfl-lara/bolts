; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!698 () Bool)

(assert start!698)

(declare-datatypes ((List!82 0))(
  ( (Nil!80) (Cons!80 (h!5476 (_ BitVec 16)) (t!14561 List!82)) )
))
(declare-datatypes ((TokenValue!38 0))(
  ( (FloatLiteralValue!76 (text!711 List!82)) (TokenValueExt!37 (__x!331 Int)) (Broken!190 (value!4152 List!82)) (Object!39) (End!38) (Def!38) (Underscore!38) (Match!38) (Else!38) (Error!38) (Case!38) (If!38) (Extends!38) (Abstract!38) (Class!38) (Val!38) (DelimiterValue!76 (del!98 List!82)) (KeywordValue!44 (value!4153 List!82)) (CommentValue!76 (value!4154 List!82)) (WhitespaceValue!76 (value!4155 List!82)) (IndentationValue!38 (value!4156 List!82)) (String!423) (Int32!38) (Broken!191 (value!4157 List!82)) (Boolean!39) (Unit!39) (OperatorValue!41 (op!98 List!82)) (IdentifierValue!76 (value!4158 List!82)) (IdentifierValue!77 (value!4159 List!82)) (WhitespaceValue!77 (value!4160 List!82)) (True!76) (False!76) (Broken!192 (value!4161 List!82)) (Broken!193 (value!4162 List!82)) (True!77) (RightBrace!38) (RightBracket!38) (Colon!38) (Null!38) (Comma!38) (LeftBracket!38) (False!77) (LeftBrace!38) (ImaginaryLiteralValue!38 (text!712 List!82)) (StringLiteralValue!114 (value!4163 List!82)) (EOFValue!38 (value!4164 List!82)) (IdentValue!38 (value!4165 List!82)) (DelimiterValue!77 (value!4166 List!82)) (DedentValue!38 (value!4167 List!82)) (NewLineValue!38 (value!4168 List!82)) (IntegerValue!114 (value!4169 (_ BitVec 32)) (text!713 List!82)) (IntegerValue!115 (value!4170 Int) (text!714 List!82)) (Times!38) (Or!38) (Equal!38) (Minus!38) (Broken!194 (value!4171 List!82)) (And!38) (Div!38) (LessEqual!38) (Mod!38) (Concat!158) (Not!38) (Plus!38) (SpaceValue!38 (value!4172 List!82)) (IntegerValue!116 (value!4173 Int) (text!715 List!82)) (StringLiteralValue!115 (text!716 List!82)) (FloatLiteralValue!77 (text!717 List!82)) (BytesLiteralValue!38 (value!4174 List!82)) (CommentValue!77 (value!4175 List!82)) (StringLiteralValue!116 (value!4176 List!82)) (ErrorTokenValue!38 (msg!99 List!82)) )
))
(declare-fun inv!21 (TokenValue!38) Bool)

(assert (=> start!698 (not (inv!21 Int32!38))))

(declare-fun bs!300 () Bool)

(assert (= bs!300 start!698))

(declare-fun m!3837 () Bool)

(assert (=> bs!300 m!3837))

(push 1)

(assert (not start!698))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!26734 () Bool)

(declare-fun e!10508 () Bool)

(declare-fun inv!15 (TokenValue!38) Bool)

(assert (=> b!26734 (= e!10508 (inv!15 Int32!38))))

(declare-fun b!26735 () Bool)

(declare-fun e!10509 () Bool)

(declare-fun e!10510 () Bool)

(assert (=> b!26735 (= e!10509 e!10510)))

(declare-fun c!14499 () Bool)

(assert (=> b!26735 (= c!14499 (is-IntegerValue!115 Int32!38))))

(declare-fun d!1730 () Bool)

(declare-fun c!14500 () Bool)

(assert (=> d!1730 (= c!14500 (is-IntegerValue!114 Int32!38))))

(assert (=> d!1730 (= (inv!21 Int32!38) e!10509)))

(declare-fun b!26733 () Bool)

(declare-fun inv!16 (TokenValue!38) Bool)

(assert (=> b!26733 (= e!10509 (inv!16 Int32!38))))

(declare-fun b!26736 () Bool)

(declare-fun res!25507 () Bool)

(assert (=> b!26736 (=> res!25507 e!10508)))

(assert (=> b!26736 (= res!25507 (not (is-IntegerValue!116 Int32!38)))))

(assert (=> b!26736 (= e!10510 e!10508)))

(declare-fun b!26737 () Bool)

(declare-fun inv!17 (TokenValue!38) Bool)

(assert (=> b!26737 (= e!10510 (inv!17 Int32!38))))

(assert (= (and d!1730 c!14500) b!26733))

(assert (= (and d!1730 (not c!14500)) b!26735))

(assert (= (and b!26735 c!14499) b!26737))

(assert (= (and b!26735 (not c!14499)) b!26736))

(assert (= (and b!26736 (not res!25507)) b!26734))

(declare-fun m!3841 () Bool)

(assert (=> b!26734 m!3841))

(declare-fun m!3843 () Bool)

(assert (=> b!26733 m!3843))

(declare-fun m!3845 () Bool)

(assert (=> b!26737 m!3845))

(assert (=> start!698 d!1730))

(push 1)

(assert (not b!26733))

(assert (not b!26737))

(assert (not b!26734))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

