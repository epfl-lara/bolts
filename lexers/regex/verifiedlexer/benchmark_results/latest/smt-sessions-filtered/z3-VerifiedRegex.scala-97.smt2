; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!716 () Bool)

(assert start!716)

(declare-datatypes ((List!87 0))(
  ( (Nil!85) (Cons!85 (h!5481 (_ BitVec 16)) (t!14566 List!87)) )
))
(declare-datatypes ((TokenValue!43 0))(
  ( (FloatLiteralValue!86 (text!746 List!87)) (TokenValueExt!42 (__x!336 Int)) (Broken!215 (value!4283 List!87)) (Object!44) (End!43) (Def!43) (Underscore!43) (Match!43) (Else!43) (Error!43) (Case!43) (If!43) (Extends!43) (Abstract!43) (Class!43) (Val!43) (DelimiterValue!86 (del!103 List!87)) (KeywordValue!49 (value!4284 List!87)) (CommentValue!86 (value!4285 List!87)) (WhitespaceValue!86 (value!4286 List!87)) (IndentationValue!43 (value!4287 List!87)) (String!436) (Int32!43) (Broken!216 (value!4288 List!87)) (Boolean!44) (Unit!44) (OperatorValue!46 (op!103 List!87)) (IdentifierValue!86 (value!4289 List!87)) (IdentifierValue!87 (value!4290 List!87)) (WhitespaceValue!87 (value!4291 List!87)) (True!86) (False!86) (Broken!217 (value!4292 List!87)) (Broken!218 (value!4293 List!87)) (True!87) (RightBrace!43) (RightBracket!43) (Colon!43) (Null!43) (Comma!43) (LeftBracket!43) (False!87) (LeftBrace!43) (ImaginaryLiteralValue!43 (text!747 List!87)) (StringLiteralValue!129 (value!4294 List!87)) (EOFValue!43 (value!4295 List!87)) (IdentValue!43 (value!4296 List!87)) (DelimiterValue!87 (value!4297 List!87)) (DedentValue!43 (value!4298 List!87)) (NewLineValue!43 (value!4299 List!87)) (IntegerValue!129 (value!4300 (_ BitVec 32)) (text!748 List!87)) (IntegerValue!130 (value!4301 Int) (text!749 List!87)) (Times!43) (Or!43) (Equal!43) (Minus!43) (Broken!219 (value!4302 List!87)) (And!43) (Div!43) (LessEqual!43) (Mod!43) (Concat!163) (Not!43) (Plus!43) (SpaceValue!43 (value!4303 List!87)) (IntegerValue!131 (value!4304 Int) (text!750 List!87)) (StringLiteralValue!130 (text!751 List!87)) (FloatLiteralValue!87 (text!752 List!87)) (BytesLiteralValue!43 (value!4305 List!87)) (CommentValue!87 (value!4306 List!87)) (StringLiteralValue!131 (value!4307 List!87)) (ErrorTokenValue!43 (msg!104 List!87)) )
))
(declare-fun inv!21 (TokenValue!43) Bool)

(assert (=> start!716 (not (inv!21 LeftBracket!43))))

(declare-fun bs!309 () Bool)

(assert (= bs!309 start!716))

(declare-fun m!3871 () Bool)

(assert (=> bs!309 m!3871))

(check-sat (not start!716))
(check-sat)
(get-model)

(declare-fun b!26798 () Bool)

(declare-fun res!25520 () Bool)

(declare-fun e!10547 () Bool)

(assert (=> b!26798 (=> res!25520 e!10547)))

(get-info :version)

(assert (=> b!26798 (= res!25520 (not ((_ is IntegerValue!131) LeftBracket!43)))))

(declare-fun e!10549 () Bool)

(assert (=> b!26798 (= e!10549 e!10547)))

(declare-fun b!26799 () Bool)

(declare-fun inv!15 (TokenValue!43) Bool)

(assert (=> b!26799 (= e!10547 (inv!15 LeftBracket!43))))

(declare-fun b!26800 () Bool)

(declare-fun e!10548 () Bool)

(declare-fun inv!16 (TokenValue!43) Bool)

(assert (=> b!26800 (= e!10548 (inv!16 LeftBracket!43))))

(declare-fun d!1741 () Bool)

(declare-fun c!14525 () Bool)

(assert (=> d!1741 (= c!14525 ((_ is IntegerValue!129) LeftBracket!43))))

(assert (=> d!1741 (= (inv!21 LeftBracket!43) e!10548)))

(declare-fun b!26801 () Bool)

(assert (=> b!26801 (= e!10548 e!10549)))

(declare-fun c!14526 () Bool)

(assert (=> b!26801 (= c!14526 ((_ is IntegerValue!130) LeftBracket!43))))

(declare-fun b!26802 () Bool)

(declare-fun inv!17 (TokenValue!43) Bool)

(assert (=> b!26802 (= e!10549 (inv!17 LeftBracket!43))))

(assert (= (and d!1741 c!14525) b!26800))

(assert (= (and d!1741 (not c!14525)) b!26801))

(assert (= (and b!26801 c!14526) b!26802))

(assert (= (and b!26801 (not c!14526)) b!26798))

(assert (= (and b!26798 (not res!25520)) b!26799))

(declare-fun m!3875 () Bool)

(assert (=> b!26799 m!3875))

(declare-fun m!3877 () Bool)

(assert (=> b!26800 m!3877))

(declare-fun m!3881 () Bool)

(assert (=> b!26802 m!3881))

(assert (=> start!716 d!1741))

(check-sat (not b!26802) (not b!26799) (not b!26800))
(check-sat)
