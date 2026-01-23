; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!828 () Bool)

(assert start!828)

(declare-datatypes ((List!115 0))(
  ( (Nil!113) (Cons!113 (h!5509 (_ BitVec 16)) (t!14594 List!115)) )
))
(declare-datatypes ((TokenValue!71 0))(
  ( (FloatLiteralValue!142 (text!942 List!115)) (TokenValueExt!70 (__x!364 Int)) (Broken!355 (value!5025 List!115)) (Object!72) (End!71) (Def!71) (Underscore!71) (Match!71) (Else!71) (Error!71) (Case!71) (If!71) (Extends!71) (Abstract!71) (Class!71) (Val!71) (DelimiterValue!142 (del!131 List!115)) (KeywordValue!77 (value!5026 List!115)) (CommentValue!142 (value!5027 List!115)) (WhitespaceValue!142 (value!5028 List!115)) (IndentationValue!71 (value!5029 List!115)) (String!520) (Int32!71) (Broken!356 (value!5030 List!115)) (Boolean!72) (Unit!72) (OperatorValue!74 (op!131 List!115)) (IdentifierValue!142 (value!5031 List!115)) (IdentifierValue!143 (value!5032 List!115)) (WhitespaceValue!143 (value!5033 List!115)) (True!142) (False!142) (Broken!357 (value!5034 List!115)) (Broken!358 (value!5035 List!115)) (True!143) (RightBrace!71) (RightBracket!71) (Colon!71) (Null!71) (Comma!71) (LeftBracket!71) (False!143) (LeftBrace!71) (ImaginaryLiteralValue!71 (text!943 List!115)) (StringLiteralValue!213 (value!5036 List!115)) (EOFValue!71 (value!5037 List!115)) (IdentValue!71 (value!5038 List!115)) (DelimiterValue!143 (value!5039 List!115)) (DedentValue!71 (value!5040 List!115)) (NewLineValue!71 (value!5041 List!115)) (IntegerValue!213 (value!5042 (_ BitVec 32)) (text!944 List!115)) (IntegerValue!214 (value!5043 Int) (text!945 List!115)) (Times!71) (Or!71) (Equal!71) (Minus!71) (Broken!359 (value!5044 List!115)) (And!71) (Div!71) (LessEqual!71) (Mod!71) (Concat!191) (Not!71) (Plus!71) (SpaceValue!71 (value!5045 List!115)) (IntegerValue!215 (value!5046 Int) (text!946 List!115)) (StringLiteralValue!214 (text!947 List!115)) (FloatLiteralValue!143 (text!948 List!115)) (BytesLiteralValue!71 (value!5047 List!115)) (CommentValue!143 (value!5048 List!115)) (StringLiteralValue!215 (value!5049 List!115)) (ErrorTokenValue!71 (msg!132 List!115)) )
))
(declare-fun inv!21 (TokenValue!71) Bool)

(assert (=> start!828 (not (inv!21 True!142))))

(declare-fun bs!365 () Bool)

(assert (= bs!365 start!828))

(declare-fun m!4085 () Bool)

(assert (=> bs!365 m!4085))

(check-sat (not start!828))
(check-sat)
(get-model)

(declare-fun b!27218 () Bool)

(declare-fun e!10801 () Bool)

(declare-fun e!10800 () Bool)

(assert (=> b!27218 (= e!10801 e!10800)))

(declare-fun c!14694 () Bool)

(get-info :version)

(assert (=> b!27218 (= c!14694 ((_ is IntegerValue!214) True!142))))

(declare-fun b!27219 () Bool)

(declare-fun inv!17 (TokenValue!71) Bool)

(assert (=> b!27219 (= e!10800 (inv!17 True!142))))

(declare-fun b!27220 () Bool)

(declare-fun inv!16 (TokenValue!71) Bool)

(assert (=> b!27220 (= e!10801 (inv!16 True!142))))

(declare-fun b!27222 () Bool)

(declare-fun e!10799 () Bool)

(declare-fun inv!15 (TokenValue!71) Bool)

(assert (=> b!27222 (= e!10799 (inv!15 True!142))))

(declare-fun b!27221 () Bool)

(declare-fun res!25604 () Bool)

(assert (=> b!27221 (=> res!25604 e!10799)))

(assert (=> b!27221 (= res!25604 (not ((_ is IntegerValue!215) True!142)))))

(assert (=> b!27221 (= e!10800 e!10799)))

(declare-fun d!1812 () Bool)

(declare-fun c!14693 () Bool)

(assert (=> d!1812 (= c!14693 ((_ is IntegerValue!213) True!142))))

(assert (=> d!1812 (= (inv!21 True!142) e!10801)))

(assert (= (and d!1812 c!14693) b!27220))

(assert (= (and d!1812 (not c!14693)) b!27218))

(assert (= (and b!27218 c!14694) b!27219))

(assert (= (and b!27218 (not c!14694)) b!27221))

(assert (= (and b!27221 (not res!25604)) b!27222))

(declare-fun m!4093 () Bool)

(assert (=> b!27219 m!4093))

(declare-fun m!4095 () Bool)

(assert (=> b!27220 m!4095))

(declare-fun m!4097 () Bool)

(assert (=> b!27222 m!4097))

(assert (=> start!828 d!1812))

(check-sat (not b!27219) (not b!27222) (not b!27220))
(check-sat)
