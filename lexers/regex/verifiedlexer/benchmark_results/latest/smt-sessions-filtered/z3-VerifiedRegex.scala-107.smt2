; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!796 () Bool)

(assert start!796)

(declare-datatypes ((List!107 0))(
  ( (Nil!105) (Cons!105 (h!5501 (_ BitVec 16)) (t!14586 List!107)) )
))
(declare-datatypes ((TokenValue!63 0))(
  ( (FloatLiteralValue!126 (text!886 List!107)) (TokenValueExt!62 (__x!356 Int)) (Broken!315 (value!4813 List!107)) (Object!64) (End!63) (Def!63) (Underscore!63) (Match!63) (Else!63) (Error!63) (Case!63) (If!63) (Extends!63) (Abstract!63) (Class!63) (Val!63) (DelimiterValue!126 (del!123 List!107)) (KeywordValue!69 (value!4814 List!107)) (CommentValue!126 (value!4815 List!107)) (WhitespaceValue!126 (value!4816 List!107)) (IndentationValue!63 (value!4817 List!107)) (String!496) (Int32!63) (Broken!316 (value!4818 List!107)) (Boolean!64) (Unit!64) (OperatorValue!66 (op!123 List!107)) (IdentifierValue!126 (value!4819 List!107)) (IdentifierValue!127 (value!4820 List!107)) (WhitespaceValue!127 (value!4821 List!107)) (True!126) (False!126) (Broken!317 (value!4822 List!107)) (Broken!318 (value!4823 List!107)) (True!127) (RightBrace!63) (RightBracket!63) (Colon!63) (Null!63) (Comma!63) (LeftBracket!63) (False!127) (LeftBrace!63) (ImaginaryLiteralValue!63 (text!887 List!107)) (StringLiteralValue!189 (value!4824 List!107)) (EOFValue!63 (value!4825 List!107)) (IdentValue!63 (value!4826 List!107)) (DelimiterValue!127 (value!4827 List!107)) (DedentValue!63 (value!4828 List!107)) (NewLineValue!63 (value!4829 List!107)) (IntegerValue!189 (value!4830 (_ BitVec 32)) (text!888 List!107)) (IntegerValue!190 (value!4831 Int) (text!889 List!107)) (Times!63) (Or!63) (Equal!63) (Minus!63) (Broken!319 (value!4832 List!107)) (And!63) (Div!63) (LessEqual!63) (Mod!63) (Concat!183) (Not!63) (Plus!63) (SpaceValue!63 (value!4833 List!107)) (IntegerValue!191 (value!4834 Int) (text!890 List!107)) (StringLiteralValue!190 (text!891 List!107)) (FloatLiteralValue!127 (text!892 List!107)) (BytesLiteralValue!63 (value!4835 List!107)) (CommentValue!127 (value!4836 List!107)) (StringLiteralValue!191 (value!4837 List!107)) (ErrorTokenValue!63 (msg!124 List!107)) )
))
(declare-fun inv!21 (TokenValue!63) Bool)

(assert (=> start!796 (not (inv!21 RightBrace!63))))

(declare-fun bs!349 () Bool)

(assert (= bs!349 start!796))

(declare-fun m!4021 () Bool)

(assert (=> bs!349 m!4021))

(check-sat (not start!796))
(check-sat)
(get-model)

(declare-fun b!27093 () Bool)

(declare-fun e!10724 () Bool)

(declare-fun inv!15 (TokenValue!63) Bool)

(assert (=> b!27093 (= e!10724 (inv!15 RightBrace!63))))

(declare-fun b!27094 () Bool)

(declare-fun e!10725 () Bool)

(declare-fun e!10727 () Bool)

(assert (=> b!27094 (= e!10725 e!10727)))

(declare-fun c!14644 () Bool)

(get-info :version)

(assert (=> b!27094 (= c!14644 ((_ is IntegerValue!190) RightBrace!63))))

(declare-fun d!1790 () Bool)

(declare-fun c!14643 () Bool)

(assert (=> d!1790 (= c!14643 ((_ is IntegerValue!189) RightBrace!63))))

(assert (=> d!1790 (= (inv!21 RightBrace!63) e!10725)))

(declare-fun b!27095 () Bool)

(declare-fun inv!16 (TokenValue!63) Bool)

(assert (=> b!27095 (= e!10725 (inv!16 RightBrace!63))))

(declare-fun b!27096 () Bool)

(declare-fun res!25579 () Bool)

(assert (=> b!27096 (=> res!25579 e!10724)))

(assert (=> b!27096 (= res!25579 (not ((_ is IntegerValue!191) RightBrace!63)))))

(assert (=> b!27096 (= e!10727 e!10724)))

(declare-fun b!27097 () Bool)

(declare-fun inv!17 (TokenValue!63) Bool)

(assert (=> b!27097 (= e!10727 (inv!17 RightBrace!63))))

(assert (= (and d!1790 c!14643) b!27095))

(assert (= (and d!1790 (not c!14643)) b!27094))

(assert (= (and b!27094 c!14644) b!27097))

(assert (= (and b!27094 (not c!14644)) b!27096))

(assert (= (and b!27096 (not res!25579)) b!27093))

(declare-fun m!4024 () Bool)

(assert (=> b!27093 m!4024))

(declare-fun m!4029 () Bool)

(assert (=> b!27095 m!4029))

(declare-fun m!4033 () Bool)

(assert (=> b!27097 m!4033))

(assert (=> start!796 d!1790))

(check-sat (not b!27093) (not b!27097) (not b!27095))
(check-sat)
