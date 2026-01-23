; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!398870 () Bool)

(assert start!398870)

(declare-fun b!4182261 () Bool)

(declare-fun b_free!121551 () Bool)

(declare-fun b_next!122255 () Bool)

(assert (=> b!4182261 (= b_free!121551 (not b_next!122255))))

(declare-fun tp!1278242 () Bool)

(declare-fun b_and!327217 () Bool)

(assert (=> b!4182261 (= tp!1278242 b_and!327217)))

(declare-fun b_free!121553 () Bool)

(declare-fun b_next!122257 () Bool)

(assert (=> b!4182261 (= b_free!121553 (not b_next!122257))))

(declare-fun tp!1278241 () Bool)

(declare-fun b_and!327219 () Bool)

(assert (=> b!4182261 (= tp!1278241 b_and!327219)))

(declare-fun b!4182252 () Bool)

(declare-fun b_free!121555 () Bool)

(declare-fun b_next!122259 () Bool)

(assert (=> b!4182252 (= b_free!121555 (not b_next!122259))))

(declare-fun tp!1278235 () Bool)

(declare-fun b_and!327221 () Bool)

(assert (=> b!4182252 (= tp!1278235 b_and!327221)))

(declare-fun b_free!121557 () Bool)

(declare-fun b_next!122261 () Bool)

(assert (=> b!4182252 (= b_free!121557 (not b_next!122261))))

(declare-fun tp!1278237 () Bool)

(declare-fun b_and!327223 () Bool)

(assert (=> b!4182252 (= tp!1278237 b_and!327223)))

(declare-fun b!4182260 () Bool)

(declare-fun b_free!121559 () Bool)

(declare-fun b_next!122263 () Bool)

(assert (=> b!4182260 (= b_free!121559 (not b_next!122263))))

(declare-fun tp!1278239 () Bool)

(declare-fun b_and!327225 () Bool)

(assert (=> b!4182260 (= tp!1278239 b_and!327225)))

(declare-fun b_free!121561 () Bool)

(declare-fun b_next!122265 () Bool)

(assert (=> b!4182260 (= b_free!121561 (not b_next!122265))))

(declare-fun tp!1278236 () Bool)

(declare-fun b_and!327227 () Bool)

(assert (=> b!4182260 (= tp!1278236 b_and!327227)))

(declare-fun e!2596406 () Bool)

(assert (=> b!4182252 (= e!2596406 (and tp!1278235 tp!1278237))))

(declare-fun b!4182253 () Bool)

(declare-fun res!1715041 () Bool)

(declare-fun e!2596419 () Bool)

(assert (=> b!4182253 (=> (not res!1715041) (not e!2596419))))

(declare-datatypes ((List!46035 0))(
  ( (Nil!45911) (Cons!45911 (h!51331 (_ BitVec 16)) (t!345172 List!46035)) )
))
(declare-datatypes ((TokenValue!7870 0))(
  ( (FloatLiteralValue!15740 (text!55535 List!46035)) (TokenValueExt!7869 (__x!27961 Int)) (Broken!39350 (value!238246 List!46035)) (Object!7993) (End!7870) (Def!7870) (Underscore!7870) (Match!7870) (Else!7870) (Error!7870) (Case!7870) (If!7870) (Extends!7870) (Abstract!7870) (Class!7870) (Val!7870) (DelimiterValue!15740 (del!7930 List!46035)) (KeywordValue!7876 (value!238247 List!46035)) (CommentValue!15740 (value!238248 List!46035)) (WhitespaceValue!15740 (value!238249 List!46035)) (IndentationValue!7870 (value!238250 List!46035)) (String!53215) (Int32!7870) (Broken!39351 (value!238251 List!46035)) (Boolean!7871) (Unit!64998) (OperatorValue!7873 (op!7930 List!46035)) (IdentifierValue!15740 (value!238252 List!46035)) (IdentifierValue!15741 (value!238253 List!46035)) (WhitespaceValue!15741 (value!238254 List!46035)) (True!15740) (False!15740) (Broken!39352 (value!238255 List!46035)) (Broken!39353 (value!238256 List!46035)) (True!15741) (RightBrace!7870) (RightBracket!7870) (Colon!7870) (Null!7870) (Comma!7870) (LeftBracket!7870) (False!15741) (LeftBrace!7870) (ImaginaryLiteralValue!7870 (text!55536 List!46035)) (StringLiteralValue!23610 (value!238257 List!46035)) (EOFValue!7870 (value!238258 List!46035)) (IdentValue!7870 (value!238259 List!46035)) (DelimiterValue!15741 (value!238260 List!46035)) (DedentValue!7870 (value!238261 List!46035)) (NewLineValue!7870 (value!238262 List!46035)) (IntegerValue!23610 (value!238263 (_ BitVec 32)) (text!55537 List!46035)) (IntegerValue!23611 (value!238264 Int) (text!55538 List!46035)) (Times!7870) (Or!7870) (Equal!7870) (Minus!7870) (Broken!39354 (value!238265 List!46035)) (And!7870) (Div!7870) (LessEqual!7870) (Mod!7870) (Concat!20415) (Not!7870) (Plus!7870) (SpaceValue!7870 (value!238266 List!46035)) (IntegerValue!23612 (value!238267 Int) (text!55539 List!46035)) (StringLiteralValue!23611 (text!55540 List!46035)) (FloatLiteralValue!15741 (text!55541 List!46035)) (BytesLiteralValue!7870 (value!238268 List!46035)) (CommentValue!15741 (value!238269 List!46035)) (StringLiteralValue!23612 (value!238270 List!46035)) (ErrorTokenValue!7870 (msg!7931 List!46035)) )
))
(declare-datatypes ((String!53216 0))(
  ( (String!53217 (value!238271 String)) )
))
(declare-datatypes ((C!25280 0))(
  ( (C!25281 (val!14802 Int)) )
))
(declare-datatypes ((List!46036 0))(
  ( (Nil!45912) (Cons!45912 (h!51332 C!25280) (t!345173 List!46036)) )
))
(declare-datatypes ((IArray!27707 0))(
  ( (IArray!27708 (innerList!13911 List!46036)) )
))
(declare-datatypes ((Conc!13851 0))(
  ( (Node!13851 (left!34201 Conc!13851) (right!34531 Conc!13851) (csize!27932 Int) (cheight!14062 Int)) (Leaf!21414 (xs!17157 IArray!27707) (csize!27933 Int)) (Empty!13851) )
))
(declare-datatypes ((BalanceConc!27296 0))(
  ( (BalanceConc!27297 (c!714108 Conc!13851)) )
))
(declare-datatypes ((Regex!12545 0))(
  ( (ElementMatch!12545 (c!714109 C!25280)) (Concat!20416 (regOne!25602 Regex!12545) (regTwo!25602 Regex!12545)) (EmptyExpr!12545) (Star!12545 (reg!12874 Regex!12545)) (EmptyLang!12545) (Union!12545 (regOne!25603 Regex!12545) (regTwo!25603 Regex!12545)) )
))
(declare-datatypes ((TokenValueInjection!15168 0))(
  ( (TokenValueInjection!15169 (toValue!10332 Int) (toChars!10191 Int)) )
))
(declare-datatypes ((Rule!15080 0))(
  ( (Rule!15081 (regex!7640 Regex!12545) (tag!8504 String!53216) (isSeparator!7640 Bool) (transformation!7640 TokenValueInjection!15168)) )
))
(declare-datatypes ((List!46037 0))(
  ( (Nil!45913) (Cons!45913 (h!51333 Rule!15080) (t!345174 List!46037)) )
))
(declare-fun rules!3843 () List!46037)

(declare-fun isEmpty!27166 (List!46037) Bool)

(assert (=> b!4182253 (= res!1715041 (not (isEmpty!27166 rules!3843)))))

(declare-fun b!4182254 () Bool)

(declare-fun res!1715043 () Bool)

(assert (=> b!4182254 (=> (not res!1715043) (not e!2596419))))

(declare-fun r!4142 () Rule!15080)

(declare-fun validRegex!5662 (Regex!12545) Bool)

(assert (=> b!4182254 (= res!1715043 (validRegex!5662 (regex!7640 r!4142)))))

(declare-fun b!4182255 () Bool)

(declare-fun res!1715036 () Bool)

(assert (=> b!4182255 (=> (not res!1715036) (not e!2596419))))

(declare-fun rBis!167 () Rule!15080)

(declare-fun contains!9447 (List!46037 Rule!15080) Bool)

(assert (=> b!4182255 (= res!1715036 (contains!9447 rules!3843 rBis!167))))

(declare-fun b!4182256 () Bool)

(declare-fun res!1715032 () Bool)

(declare-fun e!2596409 () Bool)

(assert (=> b!4182256 (=> res!1715032 e!2596409)))

(declare-datatypes ((LexerInterface!7233 0))(
  ( (LexerInterfaceExt!7230 (__x!27962 Int)) (Lexer!7231) )
))
(declare-fun thiss!25986 () LexerInterface!7233)

(declare-fun ruleValid!3358 (LexerInterface!7233 Rule!15080) Bool)

(assert (=> b!4182256 (= res!1715032 (not (ruleValid!3358 thiss!25986 rBis!167)))))

(declare-fun res!1715042 () Bool)

(assert (=> start!398870 (=> (not res!1715042) (not e!2596419))))

(get-info :version)

(assert (=> start!398870 (= res!1715042 ((_ is Lexer!7231) thiss!25986))))

(assert (=> start!398870 e!2596419))

(assert (=> start!398870 true))

(declare-fun e!2596412 () Bool)

(assert (=> start!398870 e!2596412))

(declare-fun e!2596420 () Bool)

(assert (=> start!398870 e!2596420))

(declare-fun e!2596417 () Bool)

(assert (=> start!398870 e!2596417))

(declare-fun e!2596410 () Bool)

(assert (=> start!398870 e!2596410))

(declare-fun e!2596415 () Bool)

(assert (=> start!398870 e!2596415))

(declare-fun e!2596416 () Bool)

(assert (=> start!398870 e!2596416))

(declare-fun b!4182257 () Bool)

(declare-fun tp!1278244 () Bool)

(declare-fun e!2596408 () Bool)

(declare-fun e!2596407 () Bool)

(declare-fun inv!60449 (String!53216) Bool)

(declare-fun inv!60451 (TokenValueInjection!15168) Bool)

(assert (=> b!4182257 (= e!2596408 (and tp!1278244 (inv!60449 (tag!8504 (h!51333 rules!3843))) (inv!60451 (transformation!7640 (h!51333 rules!3843))) e!2596407))))

(declare-fun b!4182258 () Bool)

(declare-fun e!2596404 () Bool)

(declare-fun tp!1278243 () Bool)

(assert (=> b!4182258 (= e!2596420 (and tp!1278243 (inv!60449 (tag!8504 r!4142)) (inv!60451 (transformation!7640 r!4142)) e!2596404))))

(declare-fun b!4182259 () Bool)

(declare-fun tp_is_empty!22053 () Bool)

(declare-fun tp!1278245 () Bool)

(assert (=> b!4182259 (= e!2596410 (and tp_is_empty!22053 tp!1278245))))

(assert (=> b!4182260 (= e!2596404 (and tp!1278239 tp!1278236))))

(assert (=> b!4182261 (= e!2596407 (and tp!1278242 tp!1278241))))

(declare-fun b!4182262 () Bool)

(declare-fun res!1715033 () Bool)

(assert (=> b!4182262 (=> (not res!1715033) (not e!2596419))))

(declare-fun p!2959 () List!46036)

(declare-fun input!3342 () List!46036)

(declare-fun isPrefix!4497 (List!46036 List!46036) Bool)

(assert (=> b!4182262 (= res!1715033 (isPrefix!4497 p!2959 input!3342))))

(declare-fun b!4182263 () Bool)

(declare-fun res!1715030 () Bool)

(assert (=> b!4182263 (=> (not res!1715030) (not e!2596419))))

(assert (=> b!4182263 (= res!1715030 (contains!9447 rules!3843 r!4142))))

(declare-fun b!4182264 () Bool)

(declare-fun tp!1278238 () Bool)

(assert (=> b!4182264 (= e!2596417 (and e!2596408 tp!1278238))))

(declare-fun b!4182265 () Bool)

(declare-fun e!2596413 () Bool)

(assert (=> b!4182265 (= e!2596409 e!2596413)))

(declare-fun res!1715037 () Bool)

(assert (=> b!4182265 (=> res!1715037 e!2596413)))

(declare-datatypes ((Token!13994 0))(
  ( (Token!13995 (value!238272 TokenValue!7870) (rule!10704 Rule!15080) (size!33717 Int) (originalCharacters!8028 List!46036)) )
))
(declare-datatypes ((tuple2!43722 0))(
  ( (tuple2!43723 (_1!24995 Token!13994) (_2!24995 List!46036)) )
))
(declare-datatypes ((Option!9834 0))(
  ( (None!9833) (Some!9833 (v!40645 tuple2!43722)) )
))
(declare-fun lt!1489350 () Option!9834)

(declare-fun isEmpty!27167 (Option!9834) Bool)

(assert (=> b!4182265 (= res!1715037 (not (isEmpty!27167 lt!1489350)))))

(declare-fun maxPrefixOneRule!3242 (LexerInterface!7233 Rule!15080 List!46036) Option!9834)

(assert (=> b!4182265 (= lt!1489350 (maxPrefixOneRule!3242 thiss!25986 rBis!167 input!3342))))

(declare-datatypes ((Unit!64999 0))(
  ( (Unit!65000) )
))
(declare-fun lt!1489349 () Unit!64999)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2364 (LexerInterface!7233 Rule!15080 List!46037) Unit!64999)

(assert (=> b!4182265 (= lt!1489349 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2364 thiss!25986 rBis!167 rules!3843))))

(declare-fun lt!1489354 () Int)

(declare-fun size!33718 (List!46036) Int)

(assert (=> b!4182265 (<= lt!1489354 (size!33718 input!3342))))

(declare-fun lt!1489352 () Unit!64999)

(declare-fun pBis!107 () List!46036)

(declare-fun lemmaIsPrefixThenSmallerEqSize!527 (List!46036 List!46036) Unit!64999)

(assert (=> b!4182265 (= lt!1489352 (lemmaIsPrefixThenSmallerEqSize!527 pBis!107 input!3342))))

(declare-fun b!4182266 () Bool)

(declare-fun res!1715038 () Bool)

(assert (=> b!4182266 (=> res!1715038 e!2596409)))

(declare-fun lt!1489356 () Option!9834)

(declare-fun maxPrefix!4281 (LexerInterface!7233 List!46037 List!46036) Option!9834)

(assert (=> b!4182266 (= res!1715038 (not (= (maxPrefix!4281 thiss!25986 rules!3843 input!3342) lt!1489356)))))

(declare-fun b!4182267 () Bool)

(declare-fun e!2596405 () Bool)

(assert (=> b!4182267 (= e!2596405 e!2596409)))

(declare-fun res!1715044 () Bool)

(assert (=> b!4182267 (=> res!1715044 e!2596409)))

(declare-fun lt!1489351 () Int)

(assert (=> b!4182267 (= res!1715044 (<= lt!1489354 lt!1489351))))

(assert (=> b!4182267 (= lt!1489354 (size!33718 pBis!107))))

(declare-fun b!4182268 () Bool)

(assert (=> b!4182268 (= e!2596413 (= lt!1489350 None!9833))))

(declare-fun b!4182269 () Bool)

(declare-fun res!1715040 () Bool)

(assert (=> b!4182269 (=> (not res!1715040) (not e!2596419))))

(assert (=> b!4182269 (= res!1715040 (isPrefix!4497 pBis!107 input!3342))))

(declare-fun b!4182270 () Bool)

(declare-fun res!1715034 () Bool)

(assert (=> b!4182270 (=> (not res!1715034) (not e!2596419))))

(assert (=> b!4182270 (= res!1715034 (ruleValid!3358 thiss!25986 r!4142))))

(declare-fun b!4182271 () Bool)

(assert (=> b!4182271 (= e!2596419 (not e!2596405))))

(declare-fun res!1715035 () Bool)

(assert (=> b!4182271 (=> res!1715035 e!2596405)))

(assert (=> b!4182271 (= res!1715035 (not (= (maxPrefixOneRule!3242 thiss!25986 r!4142 input!3342) lt!1489356)))))

(declare-fun lt!1489353 () TokenValue!7870)

(declare-fun getSuffix!2790 (List!46036 List!46036) List!46036)

(assert (=> b!4182271 (= lt!1489356 (Some!9833 (tuple2!43723 (Token!13995 lt!1489353 r!4142 lt!1489351 p!2959) (getSuffix!2790 input!3342 p!2959))))))

(assert (=> b!4182271 (= lt!1489351 (size!33718 p!2959))))

(declare-fun lt!1489355 () BalanceConc!27296)

(declare-fun apply!10605 (TokenValueInjection!15168 BalanceConc!27296) TokenValue!7870)

(assert (=> b!4182271 (= lt!1489353 (apply!10605 (transformation!7640 r!4142) lt!1489355))))

(assert (=> b!4182271 (isPrefix!4497 input!3342 input!3342)))

(declare-fun lt!1489358 () Unit!64999)

(declare-fun lemmaIsPrefixRefl!2926 (List!46036 List!46036) Unit!64999)

(assert (=> b!4182271 (= lt!1489358 (lemmaIsPrefixRefl!2926 input!3342 input!3342))))

(declare-fun lt!1489357 () Unit!64999)

(declare-fun lemmaSemiInverse!2406 (TokenValueInjection!15168 BalanceConc!27296) Unit!64999)

(assert (=> b!4182271 (= lt!1489357 (lemmaSemiInverse!2406 (transformation!7640 r!4142) lt!1489355))))

(declare-fun seqFromList!5665 (List!46036) BalanceConc!27296)

(assert (=> b!4182271 (= lt!1489355 (seqFromList!5665 p!2959))))

(declare-fun b!4182272 () Bool)

(declare-fun res!1715031 () Bool)

(assert (=> b!4182272 (=> (not res!1715031) (not e!2596419))))

(declare-fun rulesInvariant!6446 (LexerInterface!7233 List!46037) Bool)

(assert (=> b!4182272 (= res!1715031 (rulesInvariant!6446 thiss!25986 rules!3843))))

(declare-fun b!4182273 () Bool)

(declare-fun tp!1278246 () Bool)

(assert (=> b!4182273 (= e!2596416 (and tp_is_empty!22053 tp!1278246))))

(declare-fun b!4182274 () Bool)

(declare-fun res!1715039 () Bool)

(assert (=> b!4182274 (=> (not res!1715039) (not e!2596419))))

(declare-fun matchR!6284 (Regex!12545 List!46036) Bool)

(assert (=> b!4182274 (= res!1715039 (matchR!6284 (regex!7640 r!4142) p!2959))))

(declare-fun b!4182275 () Bool)

(declare-fun tp!1278234 () Bool)

(assert (=> b!4182275 (= e!2596415 (and tp_is_empty!22053 tp!1278234))))

(declare-fun tp!1278240 () Bool)

(declare-fun b!4182276 () Bool)

(assert (=> b!4182276 (= e!2596412 (and tp!1278240 (inv!60449 (tag!8504 rBis!167)) (inv!60451 (transformation!7640 rBis!167)) e!2596406))))

(assert (= (and start!398870 res!1715042) b!4182262))

(assert (= (and b!4182262 res!1715033) b!4182269))

(assert (= (and b!4182269 res!1715040) b!4182253))

(assert (= (and b!4182253 res!1715041) b!4182272))

(assert (= (and b!4182272 res!1715031) b!4182263))

(assert (= (and b!4182263 res!1715030) b!4182255))

(assert (= (and b!4182255 res!1715036) b!4182254))

(assert (= (and b!4182254 res!1715043) b!4182274))

(assert (= (and b!4182274 res!1715039) b!4182270))

(assert (= (and b!4182270 res!1715034) b!4182271))

(assert (= (and b!4182271 (not res!1715035)) b!4182267))

(assert (= (and b!4182267 (not res!1715044)) b!4182256))

(assert (= (and b!4182256 (not res!1715032)) b!4182266))

(assert (= (and b!4182266 (not res!1715038)) b!4182265))

(assert (= (and b!4182265 (not res!1715037)) b!4182268))

(assert (= b!4182276 b!4182252))

(assert (= start!398870 b!4182276))

(assert (= b!4182258 b!4182260))

(assert (= start!398870 b!4182258))

(assert (= b!4182257 b!4182261))

(assert (= b!4182264 b!4182257))

(assert (= (and start!398870 ((_ is Cons!45913) rules!3843)) b!4182264))

(assert (= (and start!398870 ((_ is Cons!45912) input!3342)) b!4182259))

(assert (= (and start!398870 ((_ is Cons!45912) pBis!107)) b!4182275))

(assert (= (and start!398870 ((_ is Cons!45912) p!2959)) b!4182273))

(declare-fun m!4771061 () Bool)

(assert (=> b!4182266 m!4771061))

(declare-fun m!4771063 () Bool)

(assert (=> b!4182271 m!4771063))

(declare-fun m!4771065 () Bool)

(assert (=> b!4182271 m!4771065))

(declare-fun m!4771067 () Bool)

(assert (=> b!4182271 m!4771067))

(declare-fun m!4771069 () Bool)

(assert (=> b!4182271 m!4771069))

(declare-fun m!4771071 () Bool)

(assert (=> b!4182271 m!4771071))

(declare-fun m!4771073 () Bool)

(assert (=> b!4182271 m!4771073))

(declare-fun m!4771075 () Bool)

(assert (=> b!4182271 m!4771075))

(declare-fun m!4771077 () Bool)

(assert (=> b!4182271 m!4771077))

(declare-fun m!4771079 () Bool)

(assert (=> b!4182255 m!4771079))

(declare-fun m!4771081 () Bool)

(assert (=> b!4182276 m!4771081))

(declare-fun m!4771083 () Bool)

(assert (=> b!4182276 m!4771083))

(declare-fun m!4771085 () Bool)

(assert (=> b!4182253 m!4771085))

(declare-fun m!4771087 () Bool)

(assert (=> b!4182256 m!4771087))

(declare-fun m!4771089 () Bool)

(assert (=> b!4182262 m!4771089))

(declare-fun m!4771091 () Bool)

(assert (=> b!4182258 m!4771091))

(declare-fun m!4771093 () Bool)

(assert (=> b!4182258 m!4771093))

(declare-fun m!4771095 () Bool)

(assert (=> b!4182272 m!4771095))

(declare-fun m!4771097 () Bool)

(assert (=> b!4182274 m!4771097))

(declare-fun m!4771099 () Bool)

(assert (=> b!4182265 m!4771099))

(declare-fun m!4771101 () Bool)

(assert (=> b!4182265 m!4771101))

(declare-fun m!4771103 () Bool)

(assert (=> b!4182265 m!4771103))

(declare-fun m!4771105 () Bool)

(assert (=> b!4182265 m!4771105))

(declare-fun m!4771107 () Bool)

(assert (=> b!4182265 m!4771107))

(declare-fun m!4771109 () Bool)

(assert (=> b!4182267 m!4771109))

(declare-fun m!4771111 () Bool)

(assert (=> b!4182270 m!4771111))

(declare-fun m!4771113 () Bool)

(assert (=> b!4182257 m!4771113))

(declare-fun m!4771115 () Bool)

(assert (=> b!4182257 m!4771115))

(declare-fun m!4771117 () Bool)

(assert (=> b!4182269 m!4771117))

(declare-fun m!4771119 () Bool)

(assert (=> b!4182254 m!4771119))

(declare-fun m!4771121 () Bool)

(assert (=> b!4182263 m!4771121))

(check-sat b_and!327225 (not b!4182269) (not b!4182255) (not b!4182275) (not b!4182256) (not b!4182272) (not b!4182257) (not b!4182253) (not b!4182262) b_and!327217 (not b!4182266) (not b!4182267) (not b_next!122259) b_and!327219 (not b_next!122263) b_and!327227 (not b!4182263) b_and!327221 (not b!4182265) (not b!4182259) (not b_next!122255) (not b!4182270) (not b!4182264) (not b_next!122257) (not b!4182276) b_and!327223 (not b!4182258) (not b!4182271) (not b!4182274) (not b_next!122261) (not b!4182273) (not b_next!122265) (not b!4182254) tp_is_empty!22053)
(check-sat b_and!327225 b_and!327221 (not b_next!122255) (not b_next!122257) b_and!327223 (not b_next!122261) (not b_next!122265) b_and!327217 (not b_next!122259) b_and!327219 (not b_next!122263) b_and!327227)
(get-model)

(declare-fun d!1234183 () Bool)

(assert (=> d!1234183 (ruleValid!3358 thiss!25986 rBis!167)))

(declare-fun lt!1489361 () Unit!64999)

(declare-fun choose!25597 (LexerInterface!7233 Rule!15080 List!46037) Unit!64999)

(assert (=> d!1234183 (= lt!1489361 (choose!25597 thiss!25986 rBis!167 rules!3843))))

(assert (=> d!1234183 (contains!9447 rules!3843 rBis!167)))

(assert (=> d!1234183 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2364 thiss!25986 rBis!167 rules!3843) lt!1489361)))

(declare-fun bs!596362 () Bool)

(assert (= bs!596362 d!1234183))

(assert (=> bs!596362 m!4771087))

(declare-fun m!4771123 () Bool)

(assert (=> bs!596362 m!4771123))

(assert (=> bs!596362 m!4771079))

(assert (=> b!4182265 d!1234183))

(declare-fun b!4182363 () Bool)

(declare-fun e!2596472 () Bool)

(declare-fun e!2596471 () Bool)

(assert (=> b!4182363 (= e!2596472 e!2596471)))

(declare-fun res!1715126 () Bool)

(assert (=> b!4182363 (=> (not res!1715126) (not e!2596471))))

(declare-fun lt!1489405 () Option!9834)

(declare-fun list!16583 (BalanceConc!27296) List!46036)

(declare-fun charsOf!5077 (Token!13994) BalanceConc!27296)

(declare-fun get!14921 (Option!9834) tuple2!43722)

(assert (=> b!4182363 (= res!1715126 (matchR!6284 (regex!7640 rBis!167) (list!16583 (charsOf!5077 (_1!24995 (get!14921 lt!1489405))))))))

(declare-fun b!4182364 () Bool)

(assert (=> b!4182364 (= e!2596471 (= (size!33717 (_1!24995 (get!14921 lt!1489405))) (size!33718 (originalCharacters!8028 (_1!24995 (get!14921 lt!1489405))))))))

(declare-fun d!1234187 () Bool)

(assert (=> d!1234187 e!2596472))

(declare-fun res!1715122 () Bool)

(assert (=> d!1234187 (=> res!1715122 e!2596472)))

(assert (=> d!1234187 (= res!1715122 (isEmpty!27167 lt!1489405))))

(declare-fun e!2596474 () Option!9834)

(assert (=> d!1234187 (= lt!1489405 e!2596474)))

(declare-fun c!714119 () Bool)

(declare-datatypes ((tuple2!43726 0))(
  ( (tuple2!43727 (_1!24997 List!46036) (_2!24997 List!46036)) )
))
(declare-fun lt!1489406 () tuple2!43726)

(declare-fun isEmpty!27169 (List!46036) Bool)

(assert (=> d!1234187 (= c!714119 (isEmpty!27169 (_1!24997 lt!1489406)))))

(declare-fun findLongestMatch!1502 (Regex!12545 List!46036) tuple2!43726)

(assert (=> d!1234187 (= lt!1489406 (findLongestMatch!1502 (regex!7640 rBis!167) input!3342))))

(assert (=> d!1234187 (ruleValid!3358 thiss!25986 rBis!167)))

(assert (=> d!1234187 (= (maxPrefixOneRule!3242 thiss!25986 rBis!167 input!3342) lt!1489405)))

(declare-fun b!4182365 () Bool)

(declare-fun res!1715121 () Bool)

(assert (=> b!4182365 (=> (not res!1715121) (not e!2596471))))

(assert (=> b!4182365 (= res!1715121 (= (rule!10704 (_1!24995 (get!14921 lt!1489405))) rBis!167))))

(declare-fun b!4182366 () Bool)

(declare-fun size!33720 (BalanceConc!27296) Int)

(assert (=> b!4182366 (= e!2596474 (Some!9833 (tuple2!43723 (Token!13995 (apply!10605 (transformation!7640 rBis!167) (seqFromList!5665 (_1!24997 lt!1489406))) rBis!167 (size!33720 (seqFromList!5665 (_1!24997 lt!1489406))) (_1!24997 lt!1489406)) (_2!24997 lt!1489406))))))

(declare-fun lt!1489403 () Unit!64999)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1562 (Regex!12545 List!46036) Unit!64999)

(assert (=> b!4182366 (= lt!1489403 (longestMatchIsAcceptedByMatchOrIsEmpty!1562 (regex!7640 rBis!167) input!3342))))

(declare-fun res!1715123 () Bool)

(declare-fun findLongestMatchInner!1589 (Regex!12545 List!46036 Int List!46036 List!46036 Int) tuple2!43726)

(assert (=> b!4182366 (= res!1715123 (isEmpty!27169 (_1!24997 (findLongestMatchInner!1589 (regex!7640 rBis!167) Nil!45912 (size!33718 Nil!45912) input!3342 input!3342 (size!33718 input!3342)))))))

(declare-fun e!2596473 () Bool)

(assert (=> b!4182366 (=> res!1715123 e!2596473)))

(assert (=> b!4182366 e!2596473))

(declare-fun lt!1489404 () Unit!64999)

(assert (=> b!4182366 (= lt!1489404 lt!1489403)))

(declare-fun lt!1489407 () Unit!64999)

(assert (=> b!4182366 (= lt!1489407 (lemmaSemiInverse!2406 (transformation!7640 rBis!167) (seqFromList!5665 (_1!24997 lt!1489406))))))

(declare-fun b!4182367 () Bool)

(declare-fun res!1715125 () Bool)

(assert (=> b!4182367 (=> (not res!1715125) (not e!2596471))))

(assert (=> b!4182367 (= res!1715125 (= (value!238272 (_1!24995 (get!14921 lt!1489405))) (apply!10605 (transformation!7640 (rule!10704 (_1!24995 (get!14921 lt!1489405)))) (seqFromList!5665 (originalCharacters!8028 (_1!24995 (get!14921 lt!1489405)))))))))

(declare-fun b!4182368 () Bool)

(assert (=> b!4182368 (= e!2596473 (matchR!6284 (regex!7640 rBis!167) (_1!24997 (findLongestMatchInner!1589 (regex!7640 rBis!167) Nil!45912 (size!33718 Nil!45912) input!3342 input!3342 (size!33718 input!3342)))))))

(declare-fun b!4182369 () Bool)

(assert (=> b!4182369 (= e!2596474 None!9833)))

(declare-fun b!4182370 () Bool)

(declare-fun res!1715127 () Bool)

(assert (=> b!4182370 (=> (not res!1715127) (not e!2596471))))

(assert (=> b!4182370 (= res!1715127 (< (size!33718 (_2!24995 (get!14921 lt!1489405))) (size!33718 input!3342)))))

(declare-fun b!4182371 () Bool)

(declare-fun res!1715124 () Bool)

(assert (=> b!4182371 (=> (not res!1715124) (not e!2596471))))

(declare-fun ++!11714 (List!46036 List!46036) List!46036)

(assert (=> b!4182371 (= res!1715124 (= (++!11714 (list!16583 (charsOf!5077 (_1!24995 (get!14921 lt!1489405)))) (_2!24995 (get!14921 lt!1489405))) input!3342))))

(assert (= (and d!1234187 c!714119) b!4182369))

(assert (= (and d!1234187 (not c!714119)) b!4182366))

(assert (= (and b!4182366 (not res!1715123)) b!4182368))

(assert (= (and d!1234187 (not res!1715122)) b!4182363))

(assert (= (and b!4182363 res!1715126) b!4182371))

(assert (= (and b!4182371 res!1715124) b!4182370))

(assert (= (and b!4182370 res!1715127) b!4182365))

(assert (= (and b!4182365 res!1715121) b!4182367))

(assert (= (and b!4182367 res!1715125) b!4182364))

(declare-fun m!4771209 () Bool)

(assert (=> b!4182364 m!4771209))

(declare-fun m!4771211 () Bool)

(assert (=> b!4182364 m!4771211))

(declare-fun m!4771213 () Bool)

(assert (=> b!4182366 m!4771213))

(declare-fun m!4771215 () Bool)

(assert (=> b!4182366 m!4771215))

(assert (=> b!4182366 m!4771101))

(declare-fun m!4771217 () Bool)

(assert (=> b!4182366 m!4771217))

(assert (=> b!4182366 m!4771213))

(declare-fun m!4771219 () Bool)

(assert (=> b!4182366 m!4771219))

(assert (=> b!4182366 m!4771213))

(declare-fun m!4771221 () Bool)

(assert (=> b!4182366 m!4771221))

(assert (=> b!4182366 m!4771213))

(declare-fun m!4771223 () Bool)

(assert (=> b!4182366 m!4771223))

(declare-fun m!4771225 () Bool)

(assert (=> b!4182366 m!4771225))

(assert (=> b!4182366 m!4771101))

(declare-fun m!4771227 () Bool)

(assert (=> b!4182366 m!4771227))

(assert (=> b!4182366 m!4771215))

(assert (=> b!4182367 m!4771209))

(declare-fun m!4771229 () Bool)

(assert (=> b!4182367 m!4771229))

(assert (=> b!4182367 m!4771229))

(declare-fun m!4771231 () Bool)

(assert (=> b!4182367 m!4771231))

(assert (=> b!4182371 m!4771209))

(declare-fun m!4771233 () Bool)

(assert (=> b!4182371 m!4771233))

(assert (=> b!4182371 m!4771233))

(declare-fun m!4771235 () Bool)

(assert (=> b!4182371 m!4771235))

(assert (=> b!4182371 m!4771235))

(declare-fun m!4771237 () Bool)

(assert (=> b!4182371 m!4771237))

(declare-fun m!4771239 () Bool)

(assert (=> d!1234187 m!4771239))

(declare-fun m!4771241 () Bool)

(assert (=> d!1234187 m!4771241))

(declare-fun m!4771243 () Bool)

(assert (=> d!1234187 m!4771243))

(assert (=> d!1234187 m!4771087))

(assert (=> b!4182370 m!4771209))

(declare-fun m!4771245 () Bool)

(assert (=> b!4182370 m!4771245))

(assert (=> b!4182370 m!4771101))

(assert (=> b!4182363 m!4771209))

(assert (=> b!4182363 m!4771233))

(assert (=> b!4182363 m!4771233))

(assert (=> b!4182363 m!4771235))

(assert (=> b!4182363 m!4771235))

(declare-fun m!4771247 () Bool)

(assert (=> b!4182363 m!4771247))

(assert (=> b!4182368 m!4771215))

(assert (=> b!4182368 m!4771101))

(assert (=> b!4182368 m!4771215))

(assert (=> b!4182368 m!4771101))

(assert (=> b!4182368 m!4771217))

(declare-fun m!4771249 () Bool)

(assert (=> b!4182368 m!4771249))

(assert (=> b!4182365 m!4771209))

(assert (=> b!4182265 d!1234187))

(declare-fun d!1234221 () Bool)

(assert (=> d!1234221 (<= (size!33718 pBis!107) (size!33718 input!3342))))

(declare-fun lt!1489410 () Unit!64999)

(declare-fun choose!25598 (List!46036 List!46036) Unit!64999)

(assert (=> d!1234221 (= lt!1489410 (choose!25598 pBis!107 input!3342))))

(assert (=> d!1234221 (isPrefix!4497 pBis!107 input!3342)))

(assert (=> d!1234221 (= (lemmaIsPrefixThenSmallerEqSize!527 pBis!107 input!3342) lt!1489410)))

(declare-fun bs!596365 () Bool)

(assert (= bs!596365 d!1234221))

(assert (=> bs!596365 m!4771109))

(assert (=> bs!596365 m!4771101))

(declare-fun m!4771251 () Bool)

(assert (=> bs!596365 m!4771251))

(assert (=> bs!596365 m!4771117))

(assert (=> b!4182265 d!1234221))

(declare-fun d!1234223 () Bool)

(declare-fun lt!1489423 () Int)

(assert (=> d!1234223 (>= lt!1489423 0)))

(declare-fun e!2596483 () Int)

(assert (=> d!1234223 (= lt!1489423 e!2596483)))

(declare-fun c!714124 () Bool)

(assert (=> d!1234223 (= c!714124 ((_ is Nil!45912) input!3342))))

(assert (=> d!1234223 (= (size!33718 input!3342) lt!1489423)))

(declare-fun b!4182394 () Bool)

(assert (=> b!4182394 (= e!2596483 0)))

(declare-fun b!4182395 () Bool)

(assert (=> b!4182395 (= e!2596483 (+ 1 (size!33718 (t!345173 input!3342))))))

(assert (= (and d!1234223 c!714124) b!4182394))

(assert (= (and d!1234223 (not c!714124)) b!4182395))

(declare-fun m!4771253 () Bool)

(assert (=> b!4182395 m!4771253))

(assert (=> b!4182265 d!1234223))

(declare-fun d!1234225 () Bool)

(assert (=> d!1234225 (= (isEmpty!27167 lt!1489350) (not ((_ is Some!9833) lt!1489350)))))

(assert (=> b!4182265 d!1234225))

(declare-fun b!4182427 () Bool)

(declare-fun res!1715165 () Bool)

(declare-fun e!2596507 () Bool)

(assert (=> b!4182427 (=> res!1715165 e!2596507)))

(assert (=> b!4182427 (= res!1715165 (not ((_ is Concat!20416) (regex!7640 r!4142))))))

(declare-fun e!2596508 () Bool)

(assert (=> b!4182427 (= e!2596508 e!2596507)))

(declare-fun b!4182428 () Bool)

(declare-fun e!2596510 () Bool)

(declare-fun e!2596509 () Bool)

(assert (=> b!4182428 (= e!2596510 e!2596509)))

(declare-fun c!714130 () Bool)

(assert (=> b!4182428 (= c!714130 ((_ is Star!12545) (regex!7640 r!4142)))))

(declare-fun b!4182429 () Bool)

(declare-fun e!2596506 () Bool)

(assert (=> b!4182429 (= e!2596509 e!2596506)))

(declare-fun res!1715166 () Bool)

(declare-fun nullable!4399 (Regex!12545) Bool)

(assert (=> b!4182429 (= res!1715166 (not (nullable!4399 (reg!12874 (regex!7640 r!4142)))))))

(assert (=> b!4182429 (=> (not res!1715166) (not e!2596506))))

(declare-fun b!4182430 () Bool)

(declare-fun call!291748 () Bool)

(assert (=> b!4182430 (= e!2596506 call!291748)))

(declare-fun b!4182431 () Bool)

(declare-fun res!1715167 () Bool)

(declare-fun e!2596505 () Bool)

(assert (=> b!4182431 (=> (not res!1715167) (not e!2596505))))

(declare-fun call!291747 () Bool)

(assert (=> b!4182431 (= res!1715167 call!291747)))

(assert (=> b!4182431 (= e!2596508 e!2596505)))

(declare-fun b!4182432 () Bool)

(declare-fun e!2596504 () Bool)

(declare-fun call!291746 () Bool)

(assert (=> b!4182432 (= e!2596504 call!291746)))

(declare-fun bm!291741 () Bool)

(assert (=> bm!291741 (= call!291746 call!291748)))

(declare-fun d!1234227 () Bool)

(declare-fun res!1715164 () Bool)

(assert (=> d!1234227 (=> res!1715164 e!2596510)))

(assert (=> d!1234227 (= res!1715164 ((_ is ElementMatch!12545) (regex!7640 r!4142)))))

(assert (=> d!1234227 (= (validRegex!5662 (regex!7640 r!4142)) e!2596510)))

(declare-fun bm!291742 () Bool)

(declare-fun c!714131 () Bool)

(assert (=> bm!291742 (= call!291747 (validRegex!5662 (ite c!714131 (regOne!25603 (regex!7640 r!4142)) (regOne!25602 (regex!7640 r!4142)))))))

(declare-fun b!4182433 () Bool)

(assert (=> b!4182433 (= e!2596509 e!2596508)))

(assert (=> b!4182433 (= c!714131 ((_ is Union!12545) (regex!7640 r!4142)))))

(declare-fun b!4182434 () Bool)

(assert (=> b!4182434 (= e!2596507 e!2596504)))

(declare-fun res!1715163 () Bool)

(assert (=> b!4182434 (=> (not res!1715163) (not e!2596504))))

(assert (=> b!4182434 (= res!1715163 call!291747)))

(declare-fun bm!291743 () Bool)

(assert (=> bm!291743 (= call!291748 (validRegex!5662 (ite c!714130 (reg!12874 (regex!7640 r!4142)) (ite c!714131 (regTwo!25603 (regex!7640 r!4142)) (regTwo!25602 (regex!7640 r!4142))))))))

(declare-fun b!4182435 () Bool)

(assert (=> b!4182435 (= e!2596505 call!291746)))

(assert (= (and d!1234227 (not res!1715164)) b!4182428))

(assert (= (and b!4182428 c!714130) b!4182429))

(assert (= (and b!4182428 (not c!714130)) b!4182433))

(assert (= (and b!4182429 res!1715166) b!4182430))

(assert (= (and b!4182433 c!714131) b!4182431))

(assert (= (and b!4182433 (not c!714131)) b!4182427))

(assert (= (and b!4182431 res!1715167) b!4182435))

(assert (= (and b!4182427 (not res!1715165)) b!4182434))

(assert (= (and b!4182434 res!1715163) b!4182432))

(assert (= (or b!4182435 b!4182432) bm!291741))

(assert (= (or b!4182431 b!4182434) bm!291742))

(assert (= (or b!4182430 bm!291741) bm!291743))

(declare-fun m!4771289 () Bool)

(assert (=> b!4182429 m!4771289))

(declare-fun m!4771291 () Bool)

(assert (=> bm!291742 m!4771291))

(declare-fun m!4771293 () Bool)

(assert (=> bm!291743 m!4771293))

(assert (=> b!4182254 d!1234227))

(declare-fun d!1234233 () Bool)

(declare-fun lt!1489434 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7134 (List!46037) (InoxSet Rule!15080))

(assert (=> d!1234233 (= lt!1489434 (select (content!7134 rules!3843) r!4142))))

(declare-fun e!2596532 () Bool)

(assert (=> d!1234233 (= lt!1489434 e!2596532)))

(declare-fun res!1715188 () Bool)

(assert (=> d!1234233 (=> (not res!1715188) (not e!2596532))))

(assert (=> d!1234233 (= res!1715188 ((_ is Cons!45913) rules!3843))))

(assert (=> d!1234233 (= (contains!9447 rules!3843 r!4142) lt!1489434)))

(declare-fun b!4182468 () Bool)

(declare-fun e!2596531 () Bool)

(assert (=> b!4182468 (= e!2596532 e!2596531)))

(declare-fun res!1715190 () Bool)

(assert (=> b!4182468 (=> res!1715190 e!2596531)))

(assert (=> b!4182468 (= res!1715190 (= (h!51333 rules!3843) r!4142))))

(declare-fun b!4182469 () Bool)

(assert (=> b!4182469 (= e!2596531 (contains!9447 (t!345174 rules!3843) r!4142))))

(assert (= (and d!1234233 res!1715188) b!4182468))

(assert (= (and b!4182468 (not res!1715190)) b!4182469))

(declare-fun m!4771295 () Bool)

(assert (=> d!1234233 m!4771295))

(declare-fun m!4771297 () Bool)

(assert (=> d!1234233 m!4771297))

(declare-fun m!4771299 () Bool)

(assert (=> b!4182469 m!4771299))

(assert (=> b!4182263 d!1234233))

(declare-fun d!1234235 () Bool)

(assert (=> d!1234235 (= (isEmpty!27166 rules!3843) ((_ is Nil!45913) rules!3843))))

(assert (=> b!4182253 d!1234235))

(declare-fun bm!291758 () Bool)

(declare-fun call!291763 () Bool)

(assert (=> bm!291758 (= call!291763 (isEmpty!27169 p!2959))))

(declare-fun b!4182539 () Bool)

(declare-fun res!1715229 () Bool)

(declare-fun e!2596573 () Bool)

(assert (=> b!4182539 (=> res!1715229 e!2596573)))

(declare-fun tail!6723 (List!46036) List!46036)

(assert (=> b!4182539 (= res!1715229 (not (isEmpty!27169 (tail!6723 p!2959))))))

(declare-fun b!4182540 () Bool)

(declare-fun res!1715231 () Bool)

(declare-fun e!2596577 () Bool)

(assert (=> b!4182540 (=> (not res!1715231) (not e!2596577))))

(assert (=> b!4182540 (= res!1715231 (not call!291763))))

(declare-fun b!4182541 () Bool)

(declare-fun e!2596575 () Bool)

(assert (=> b!4182541 (= e!2596575 (nullable!4399 (regex!7640 r!4142)))))

(declare-fun b!4182542 () Bool)

(declare-fun res!1715235 () Bool)

(declare-fun e!2596579 () Bool)

(assert (=> b!4182542 (=> res!1715235 e!2596579)))

(assert (=> b!4182542 (= res!1715235 (not ((_ is ElementMatch!12545) (regex!7640 r!4142))))))

(declare-fun e!2596578 () Bool)

(assert (=> b!4182542 (= e!2596578 e!2596579)))

(declare-fun b!4182543 () Bool)

(declare-fun res!1715234 () Bool)

(assert (=> b!4182543 (=> res!1715234 e!2596579)))

(assert (=> b!4182543 (= res!1715234 e!2596577)))

(declare-fun res!1715230 () Bool)

(assert (=> b!4182543 (=> (not res!1715230) (not e!2596577))))

(declare-fun lt!1489440 () Bool)

(assert (=> b!4182543 (= res!1715230 lt!1489440)))

(declare-fun b!4182544 () Bool)

(declare-fun head!8876 (List!46036) C!25280)

(assert (=> b!4182544 (= e!2596573 (not (= (head!8876 p!2959) (c!714109 (regex!7640 r!4142)))))))

(declare-fun b!4182545 () Bool)

(assert (=> b!4182545 (= e!2596578 (not lt!1489440))))

(declare-fun b!4182546 () Bool)

(declare-fun derivativeStep!3789 (Regex!12545 C!25280) Regex!12545)

(assert (=> b!4182546 (= e!2596575 (matchR!6284 (derivativeStep!3789 (regex!7640 r!4142) (head!8876 p!2959)) (tail!6723 p!2959)))))

(declare-fun b!4182547 () Bool)

(assert (=> b!4182547 (= e!2596577 (= (head!8876 p!2959) (c!714109 (regex!7640 r!4142))))))

(declare-fun b!4182548 () Bool)

(declare-fun e!2596574 () Bool)

(assert (=> b!4182548 (= e!2596574 (= lt!1489440 call!291763))))

(declare-fun b!4182550 () Bool)

(declare-fun e!2596576 () Bool)

(assert (=> b!4182550 (= e!2596579 e!2596576)))

(declare-fun res!1715236 () Bool)

(assert (=> b!4182550 (=> (not res!1715236) (not e!2596576))))

(assert (=> b!4182550 (= res!1715236 (not lt!1489440))))

(declare-fun b!4182551 () Bool)

(assert (=> b!4182551 (= e!2596576 e!2596573)))

(declare-fun res!1715232 () Bool)

(assert (=> b!4182551 (=> res!1715232 e!2596573)))

(assert (=> b!4182551 (= res!1715232 call!291763)))

(declare-fun b!4182552 () Bool)

(declare-fun res!1715233 () Bool)

(assert (=> b!4182552 (=> (not res!1715233) (not e!2596577))))

(assert (=> b!4182552 (= res!1715233 (isEmpty!27169 (tail!6723 p!2959)))))

(declare-fun b!4182549 () Bool)

(assert (=> b!4182549 (= e!2596574 e!2596578)))

(declare-fun c!714156 () Bool)

(assert (=> b!4182549 (= c!714156 ((_ is EmptyLang!12545) (regex!7640 r!4142)))))

(declare-fun d!1234239 () Bool)

(assert (=> d!1234239 e!2596574))

(declare-fun c!714155 () Bool)

(assert (=> d!1234239 (= c!714155 ((_ is EmptyExpr!12545) (regex!7640 r!4142)))))

(assert (=> d!1234239 (= lt!1489440 e!2596575)))

(declare-fun c!714154 () Bool)

(assert (=> d!1234239 (= c!714154 (isEmpty!27169 p!2959))))

(assert (=> d!1234239 (validRegex!5662 (regex!7640 r!4142))))

(assert (=> d!1234239 (= (matchR!6284 (regex!7640 r!4142) p!2959) lt!1489440)))

(assert (= (and d!1234239 c!714154) b!4182541))

(assert (= (and d!1234239 (not c!714154)) b!4182546))

(assert (= (and d!1234239 c!714155) b!4182548))

(assert (= (and d!1234239 (not c!714155)) b!4182549))

(assert (= (and b!4182549 c!714156) b!4182545))

(assert (= (and b!4182549 (not c!714156)) b!4182542))

(assert (= (and b!4182542 (not res!1715235)) b!4182543))

(assert (= (and b!4182543 res!1715230) b!4182540))

(assert (= (and b!4182540 res!1715231) b!4182552))

(assert (= (and b!4182552 res!1715233) b!4182547))

(assert (= (and b!4182543 (not res!1715234)) b!4182550))

(assert (= (and b!4182550 res!1715236) b!4182551))

(assert (= (and b!4182551 (not res!1715232)) b!4182539))

(assert (= (and b!4182539 (not res!1715229)) b!4182544))

(assert (= (or b!4182548 b!4182540 b!4182551) bm!291758))

(declare-fun m!4771315 () Bool)

(assert (=> b!4182552 m!4771315))

(assert (=> b!4182552 m!4771315))

(declare-fun m!4771317 () Bool)

(assert (=> b!4182552 m!4771317))

(declare-fun m!4771319 () Bool)

(assert (=> d!1234239 m!4771319))

(assert (=> d!1234239 m!4771119))

(assert (=> b!4182539 m!4771315))

(assert (=> b!4182539 m!4771315))

(assert (=> b!4182539 m!4771317))

(declare-fun m!4771321 () Bool)

(assert (=> b!4182544 m!4771321))

(declare-fun m!4771323 () Bool)

(assert (=> b!4182541 m!4771323))

(assert (=> b!4182546 m!4771321))

(assert (=> b!4182546 m!4771321))

(declare-fun m!4771325 () Bool)

(assert (=> b!4182546 m!4771325))

(assert (=> b!4182546 m!4771315))

(assert (=> b!4182546 m!4771325))

(assert (=> b!4182546 m!4771315))

(declare-fun m!4771327 () Bool)

(assert (=> b!4182546 m!4771327))

(assert (=> b!4182547 m!4771321))

(assert (=> bm!291758 m!4771319))

(assert (=> b!4182274 d!1234239))

(declare-fun d!1234243 () Bool)

(declare-fun res!1715239 () Bool)

(declare-fun e!2596582 () Bool)

(assert (=> d!1234243 (=> (not res!1715239) (not e!2596582))))

(declare-fun rulesValid!2976 (LexerInterface!7233 List!46037) Bool)

(assert (=> d!1234243 (= res!1715239 (rulesValid!2976 thiss!25986 rules!3843))))

(assert (=> d!1234243 (= (rulesInvariant!6446 thiss!25986 rules!3843) e!2596582)))

(declare-fun b!4182555 () Bool)

(declare-datatypes ((List!46039 0))(
  ( (Nil!45915) (Cons!45915 (h!51335 String!53216) (t!345208 List!46039)) )
))
(declare-fun noDuplicateTag!3137 (LexerInterface!7233 List!46037 List!46039) Bool)

(assert (=> b!4182555 (= e!2596582 (noDuplicateTag!3137 thiss!25986 rules!3843 Nil!45915))))

(assert (= (and d!1234243 res!1715239) b!4182555))

(declare-fun m!4771329 () Bool)

(assert (=> d!1234243 m!4771329))

(declare-fun m!4771331 () Bool)

(assert (=> b!4182555 m!4771331))

(assert (=> b!4182272 d!1234243))

(declare-fun b!4182567 () Bool)

(declare-fun e!2596589 () Bool)

(assert (=> b!4182567 (= e!2596589 (>= (size!33718 input!3342) (size!33718 p!2959)))))

(declare-fun b!4182564 () Bool)

(declare-fun e!2596591 () Bool)

(declare-fun e!2596590 () Bool)

(assert (=> b!4182564 (= e!2596591 e!2596590)))

(declare-fun res!1715251 () Bool)

(assert (=> b!4182564 (=> (not res!1715251) (not e!2596590))))

(assert (=> b!4182564 (= res!1715251 (not ((_ is Nil!45912) input!3342)))))

(declare-fun b!4182566 () Bool)

(assert (=> b!4182566 (= e!2596590 (isPrefix!4497 (tail!6723 p!2959) (tail!6723 input!3342)))))

(declare-fun b!4182565 () Bool)

(declare-fun res!1715248 () Bool)

(assert (=> b!4182565 (=> (not res!1715248) (not e!2596590))))

(assert (=> b!4182565 (= res!1715248 (= (head!8876 p!2959) (head!8876 input!3342)))))

(declare-fun d!1234245 () Bool)

(assert (=> d!1234245 e!2596589))

(declare-fun res!1715249 () Bool)

(assert (=> d!1234245 (=> res!1715249 e!2596589)))

(declare-fun lt!1489443 () Bool)

(assert (=> d!1234245 (= res!1715249 (not lt!1489443))))

(assert (=> d!1234245 (= lt!1489443 e!2596591)))

(declare-fun res!1715250 () Bool)

(assert (=> d!1234245 (=> res!1715250 e!2596591)))

(assert (=> d!1234245 (= res!1715250 ((_ is Nil!45912) p!2959))))

(assert (=> d!1234245 (= (isPrefix!4497 p!2959 input!3342) lt!1489443)))

(assert (= (and d!1234245 (not res!1715250)) b!4182564))

(assert (= (and b!4182564 res!1715251) b!4182565))

(assert (= (and b!4182565 res!1715248) b!4182566))

(assert (= (and d!1234245 (not res!1715249)) b!4182567))

(assert (=> b!4182567 m!4771101))

(assert (=> b!4182567 m!4771069))

(assert (=> b!4182566 m!4771315))

(declare-fun m!4771333 () Bool)

(assert (=> b!4182566 m!4771333))

(assert (=> b!4182566 m!4771315))

(assert (=> b!4182566 m!4771333))

(declare-fun m!4771335 () Bool)

(assert (=> b!4182566 m!4771335))

(assert (=> b!4182565 m!4771321))

(declare-fun m!4771337 () Bool)

(assert (=> b!4182565 m!4771337))

(assert (=> b!4182262 d!1234245))

(declare-fun d!1234247 () Bool)

(declare-fun fromListB!2591 (List!46036) BalanceConc!27296)

(assert (=> d!1234247 (= (seqFromList!5665 p!2959) (fromListB!2591 p!2959))))

(declare-fun bs!596366 () Bool)

(assert (= bs!596366 d!1234247))

(declare-fun m!4771339 () Bool)

(assert (=> bs!596366 m!4771339))

(assert (=> b!4182271 d!1234247))

(declare-fun d!1234249 () Bool)

(assert (=> d!1234249 (isPrefix!4497 input!3342 input!3342)))

(declare-fun lt!1489446 () Unit!64999)

(declare-fun choose!25600 (List!46036 List!46036) Unit!64999)

(assert (=> d!1234249 (= lt!1489446 (choose!25600 input!3342 input!3342))))

(assert (=> d!1234249 (= (lemmaIsPrefixRefl!2926 input!3342 input!3342) lt!1489446)))

(declare-fun bs!596367 () Bool)

(assert (= bs!596367 d!1234249))

(assert (=> bs!596367 m!4771065))

(declare-fun m!4771341 () Bool)

(assert (=> bs!596367 m!4771341))

(assert (=> b!4182271 d!1234249))

(declare-fun b!4182568 () Bool)

(declare-fun e!2596593 () Bool)

(declare-fun e!2596592 () Bool)

(assert (=> b!4182568 (= e!2596593 e!2596592)))

(declare-fun res!1715257 () Bool)

(assert (=> b!4182568 (=> (not res!1715257) (not e!2596592))))

(declare-fun lt!1489449 () Option!9834)

(assert (=> b!4182568 (= res!1715257 (matchR!6284 (regex!7640 r!4142) (list!16583 (charsOf!5077 (_1!24995 (get!14921 lt!1489449))))))))

(declare-fun b!4182569 () Bool)

(assert (=> b!4182569 (= e!2596592 (= (size!33717 (_1!24995 (get!14921 lt!1489449))) (size!33718 (originalCharacters!8028 (_1!24995 (get!14921 lt!1489449))))))))

(declare-fun d!1234251 () Bool)

(assert (=> d!1234251 e!2596593))

(declare-fun res!1715253 () Bool)

(assert (=> d!1234251 (=> res!1715253 e!2596593)))

(assert (=> d!1234251 (= res!1715253 (isEmpty!27167 lt!1489449))))

(declare-fun e!2596595 () Option!9834)

(assert (=> d!1234251 (= lt!1489449 e!2596595)))

(declare-fun c!714157 () Bool)

(declare-fun lt!1489450 () tuple2!43726)

(assert (=> d!1234251 (= c!714157 (isEmpty!27169 (_1!24997 lt!1489450)))))

(assert (=> d!1234251 (= lt!1489450 (findLongestMatch!1502 (regex!7640 r!4142) input!3342))))

(assert (=> d!1234251 (ruleValid!3358 thiss!25986 r!4142)))

(assert (=> d!1234251 (= (maxPrefixOneRule!3242 thiss!25986 r!4142 input!3342) lt!1489449)))

(declare-fun b!4182570 () Bool)

(declare-fun res!1715252 () Bool)

(assert (=> b!4182570 (=> (not res!1715252) (not e!2596592))))

(assert (=> b!4182570 (= res!1715252 (= (rule!10704 (_1!24995 (get!14921 lt!1489449))) r!4142))))

(declare-fun b!4182571 () Bool)

(assert (=> b!4182571 (= e!2596595 (Some!9833 (tuple2!43723 (Token!13995 (apply!10605 (transformation!7640 r!4142) (seqFromList!5665 (_1!24997 lt!1489450))) r!4142 (size!33720 (seqFromList!5665 (_1!24997 lt!1489450))) (_1!24997 lt!1489450)) (_2!24997 lt!1489450))))))

(declare-fun lt!1489447 () Unit!64999)

(assert (=> b!4182571 (= lt!1489447 (longestMatchIsAcceptedByMatchOrIsEmpty!1562 (regex!7640 r!4142) input!3342))))

(declare-fun res!1715254 () Bool)

(assert (=> b!4182571 (= res!1715254 (isEmpty!27169 (_1!24997 (findLongestMatchInner!1589 (regex!7640 r!4142) Nil!45912 (size!33718 Nil!45912) input!3342 input!3342 (size!33718 input!3342)))))))

(declare-fun e!2596594 () Bool)

(assert (=> b!4182571 (=> res!1715254 e!2596594)))

(assert (=> b!4182571 e!2596594))

(declare-fun lt!1489448 () Unit!64999)

(assert (=> b!4182571 (= lt!1489448 lt!1489447)))

(declare-fun lt!1489451 () Unit!64999)

(assert (=> b!4182571 (= lt!1489451 (lemmaSemiInverse!2406 (transformation!7640 r!4142) (seqFromList!5665 (_1!24997 lt!1489450))))))

(declare-fun b!4182572 () Bool)

(declare-fun res!1715256 () Bool)

(assert (=> b!4182572 (=> (not res!1715256) (not e!2596592))))

(assert (=> b!4182572 (= res!1715256 (= (value!238272 (_1!24995 (get!14921 lt!1489449))) (apply!10605 (transformation!7640 (rule!10704 (_1!24995 (get!14921 lt!1489449)))) (seqFromList!5665 (originalCharacters!8028 (_1!24995 (get!14921 lt!1489449)))))))))

(declare-fun b!4182573 () Bool)

(assert (=> b!4182573 (= e!2596594 (matchR!6284 (regex!7640 r!4142) (_1!24997 (findLongestMatchInner!1589 (regex!7640 r!4142) Nil!45912 (size!33718 Nil!45912) input!3342 input!3342 (size!33718 input!3342)))))))

(declare-fun b!4182574 () Bool)

(assert (=> b!4182574 (= e!2596595 None!9833)))

(declare-fun b!4182575 () Bool)

(declare-fun res!1715258 () Bool)

(assert (=> b!4182575 (=> (not res!1715258) (not e!2596592))))

(assert (=> b!4182575 (= res!1715258 (< (size!33718 (_2!24995 (get!14921 lt!1489449))) (size!33718 input!3342)))))

(declare-fun b!4182576 () Bool)

(declare-fun res!1715255 () Bool)

(assert (=> b!4182576 (=> (not res!1715255) (not e!2596592))))

(assert (=> b!4182576 (= res!1715255 (= (++!11714 (list!16583 (charsOf!5077 (_1!24995 (get!14921 lt!1489449)))) (_2!24995 (get!14921 lt!1489449))) input!3342))))

(assert (= (and d!1234251 c!714157) b!4182574))

(assert (= (and d!1234251 (not c!714157)) b!4182571))

(assert (= (and b!4182571 (not res!1715254)) b!4182573))

(assert (= (and d!1234251 (not res!1715253)) b!4182568))

(assert (= (and b!4182568 res!1715257) b!4182576))

(assert (= (and b!4182576 res!1715255) b!4182575))

(assert (= (and b!4182575 res!1715258) b!4182570))

(assert (= (and b!4182570 res!1715252) b!4182572))

(assert (= (and b!4182572 res!1715256) b!4182569))

(declare-fun m!4771343 () Bool)

(assert (=> b!4182569 m!4771343))

(declare-fun m!4771345 () Bool)

(assert (=> b!4182569 m!4771345))

(declare-fun m!4771347 () Bool)

(assert (=> b!4182571 m!4771347))

(assert (=> b!4182571 m!4771215))

(assert (=> b!4182571 m!4771101))

(declare-fun m!4771349 () Bool)

(assert (=> b!4182571 m!4771349))

(assert (=> b!4182571 m!4771347))

(declare-fun m!4771351 () Bool)

(assert (=> b!4182571 m!4771351))

(assert (=> b!4182571 m!4771347))

(declare-fun m!4771353 () Bool)

(assert (=> b!4182571 m!4771353))

(assert (=> b!4182571 m!4771347))

(declare-fun m!4771355 () Bool)

(assert (=> b!4182571 m!4771355))

(declare-fun m!4771357 () Bool)

(assert (=> b!4182571 m!4771357))

(assert (=> b!4182571 m!4771101))

(declare-fun m!4771359 () Bool)

(assert (=> b!4182571 m!4771359))

(assert (=> b!4182571 m!4771215))

(assert (=> b!4182572 m!4771343))

(declare-fun m!4771361 () Bool)

(assert (=> b!4182572 m!4771361))

(assert (=> b!4182572 m!4771361))

(declare-fun m!4771363 () Bool)

(assert (=> b!4182572 m!4771363))

(assert (=> b!4182576 m!4771343))

(declare-fun m!4771365 () Bool)

(assert (=> b!4182576 m!4771365))

(assert (=> b!4182576 m!4771365))

(declare-fun m!4771367 () Bool)

(assert (=> b!4182576 m!4771367))

(assert (=> b!4182576 m!4771367))

(declare-fun m!4771369 () Bool)

(assert (=> b!4182576 m!4771369))

(declare-fun m!4771371 () Bool)

(assert (=> d!1234251 m!4771371))

(declare-fun m!4771373 () Bool)

(assert (=> d!1234251 m!4771373))

(declare-fun m!4771375 () Bool)

(assert (=> d!1234251 m!4771375))

(assert (=> d!1234251 m!4771111))

(assert (=> b!4182575 m!4771343))

(declare-fun m!4771377 () Bool)

(assert (=> b!4182575 m!4771377))

(assert (=> b!4182575 m!4771101))

(assert (=> b!4182568 m!4771343))

(assert (=> b!4182568 m!4771365))

(assert (=> b!4182568 m!4771365))

(assert (=> b!4182568 m!4771367))

(assert (=> b!4182568 m!4771367))

(declare-fun m!4771379 () Bool)

(assert (=> b!4182568 m!4771379))

(assert (=> b!4182573 m!4771215))

(assert (=> b!4182573 m!4771101))

(assert (=> b!4182573 m!4771215))

(assert (=> b!4182573 m!4771101))

(assert (=> b!4182573 m!4771349))

(declare-fun m!4771381 () Bool)

(assert (=> b!4182573 m!4771381))

(assert (=> b!4182570 m!4771343))

(assert (=> b!4182271 d!1234251))

(declare-fun d!1234253 () Bool)

(declare-fun lt!1489452 () Int)

(assert (=> d!1234253 (>= lt!1489452 0)))

(declare-fun e!2596596 () Int)

(assert (=> d!1234253 (= lt!1489452 e!2596596)))

(declare-fun c!714158 () Bool)

(assert (=> d!1234253 (= c!714158 ((_ is Nil!45912) p!2959))))

(assert (=> d!1234253 (= (size!33718 p!2959) lt!1489452)))

(declare-fun b!4182577 () Bool)

(assert (=> b!4182577 (= e!2596596 0)))

(declare-fun b!4182578 () Bool)

(assert (=> b!4182578 (= e!2596596 (+ 1 (size!33718 (t!345173 p!2959))))))

(assert (= (and d!1234253 c!714158) b!4182577))

(assert (= (and d!1234253 (not c!714158)) b!4182578))

(declare-fun m!4771383 () Bool)

(assert (=> b!4182578 m!4771383))

(assert (=> b!4182271 d!1234253))

(declare-fun d!1234255 () Bool)

(declare-fun lt!1489455 () List!46036)

(assert (=> d!1234255 (= (++!11714 p!2959 lt!1489455) input!3342)))

(declare-fun e!2596599 () List!46036)

(assert (=> d!1234255 (= lt!1489455 e!2596599)))

(declare-fun c!714161 () Bool)

(assert (=> d!1234255 (= c!714161 ((_ is Cons!45912) p!2959))))

(assert (=> d!1234255 (>= (size!33718 input!3342) (size!33718 p!2959))))

(assert (=> d!1234255 (= (getSuffix!2790 input!3342 p!2959) lt!1489455)))

(declare-fun b!4182583 () Bool)

(assert (=> b!4182583 (= e!2596599 (getSuffix!2790 (tail!6723 input!3342) (t!345173 p!2959)))))

(declare-fun b!4182584 () Bool)

(assert (=> b!4182584 (= e!2596599 input!3342)))

(assert (= (and d!1234255 c!714161) b!4182583))

(assert (= (and d!1234255 (not c!714161)) b!4182584))

(declare-fun m!4771385 () Bool)

(assert (=> d!1234255 m!4771385))

(assert (=> d!1234255 m!4771101))

(assert (=> d!1234255 m!4771069))

(assert (=> b!4182583 m!4771333))

(assert (=> b!4182583 m!4771333))

(declare-fun m!4771387 () Bool)

(assert (=> b!4182583 m!4771387))

(assert (=> b!4182271 d!1234255))

(declare-fun d!1234257 () Bool)

(declare-fun dynLambda!19711 (Int BalanceConc!27296) TokenValue!7870)

(assert (=> d!1234257 (= (apply!10605 (transformation!7640 r!4142) lt!1489355) (dynLambda!19711 (toValue!10332 (transformation!7640 r!4142)) lt!1489355))))

(declare-fun b_lambda!122891 () Bool)

(assert (=> (not b_lambda!122891) (not d!1234257)))

(declare-fun t!345176 () Bool)

(declare-fun tb!250355 () Bool)

(assert (=> (and b!4182261 (= (toValue!10332 (transformation!7640 (h!51333 rules!3843))) (toValue!10332 (transformation!7640 r!4142))) t!345176) tb!250355))

(declare-fun result!305076 () Bool)

(declare-fun inv!21 (TokenValue!7870) Bool)

(assert (=> tb!250355 (= result!305076 (inv!21 (dynLambda!19711 (toValue!10332 (transformation!7640 r!4142)) lt!1489355)))))

(declare-fun m!4771389 () Bool)

(assert (=> tb!250355 m!4771389))

(assert (=> d!1234257 t!345176))

(declare-fun b_and!327229 () Bool)

(assert (= b_and!327217 (and (=> t!345176 result!305076) b_and!327229)))

(declare-fun tb!250357 () Bool)

(declare-fun t!345178 () Bool)

(assert (=> (and b!4182252 (= (toValue!10332 (transformation!7640 rBis!167)) (toValue!10332 (transformation!7640 r!4142))) t!345178) tb!250357))

(declare-fun result!305080 () Bool)

(assert (= result!305080 result!305076))

(assert (=> d!1234257 t!345178))

(declare-fun b_and!327231 () Bool)

(assert (= b_and!327221 (and (=> t!345178 result!305080) b_and!327231)))

(declare-fun t!345180 () Bool)

(declare-fun tb!250359 () Bool)

(assert (=> (and b!4182260 (= (toValue!10332 (transformation!7640 r!4142)) (toValue!10332 (transformation!7640 r!4142))) t!345180) tb!250359))

(declare-fun result!305082 () Bool)

(assert (= result!305082 result!305076))

(assert (=> d!1234257 t!345180))

(declare-fun b_and!327233 () Bool)

(assert (= b_and!327225 (and (=> t!345180 result!305082) b_and!327233)))

(declare-fun m!4771391 () Bool)

(assert (=> d!1234257 m!4771391))

(assert (=> b!4182271 d!1234257))

(declare-fun b!4182590 () Bool)

(declare-fun e!2596603 () Bool)

(assert (=> b!4182590 (= e!2596603 (>= (size!33718 input!3342) (size!33718 input!3342)))))

(declare-fun b!4182587 () Bool)

(declare-fun e!2596605 () Bool)

(declare-fun e!2596604 () Bool)

(assert (=> b!4182587 (= e!2596605 e!2596604)))

(declare-fun res!1715262 () Bool)

(assert (=> b!4182587 (=> (not res!1715262) (not e!2596604))))

(assert (=> b!4182587 (= res!1715262 (not ((_ is Nil!45912) input!3342)))))

(declare-fun b!4182589 () Bool)

(assert (=> b!4182589 (= e!2596604 (isPrefix!4497 (tail!6723 input!3342) (tail!6723 input!3342)))))

(declare-fun b!4182588 () Bool)

(declare-fun res!1715259 () Bool)

(assert (=> b!4182588 (=> (not res!1715259) (not e!2596604))))

(assert (=> b!4182588 (= res!1715259 (= (head!8876 input!3342) (head!8876 input!3342)))))

(declare-fun d!1234259 () Bool)

(assert (=> d!1234259 e!2596603))

(declare-fun res!1715260 () Bool)

(assert (=> d!1234259 (=> res!1715260 e!2596603)))

(declare-fun lt!1489456 () Bool)

(assert (=> d!1234259 (= res!1715260 (not lt!1489456))))

(assert (=> d!1234259 (= lt!1489456 e!2596605)))

(declare-fun res!1715261 () Bool)

(assert (=> d!1234259 (=> res!1715261 e!2596605)))

(assert (=> d!1234259 (= res!1715261 ((_ is Nil!45912) input!3342))))

(assert (=> d!1234259 (= (isPrefix!4497 input!3342 input!3342) lt!1489456)))

(assert (= (and d!1234259 (not res!1715261)) b!4182587))

(assert (= (and b!4182587 res!1715262) b!4182588))

(assert (= (and b!4182588 res!1715259) b!4182589))

(assert (= (and d!1234259 (not res!1715260)) b!4182590))

(assert (=> b!4182590 m!4771101))

(assert (=> b!4182590 m!4771101))

(assert (=> b!4182589 m!4771333))

(assert (=> b!4182589 m!4771333))

(assert (=> b!4182589 m!4771333))

(assert (=> b!4182589 m!4771333))

(declare-fun m!4771393 () Bool)

(assert (=> b!4182589 m!4771393))

(assert (=> b!4182588 m!4771337))

(assert (=> b!4182588 m!4771337))

(assert (=> b!4182271 d!1234259))

(declare-fun b!4182671 () Bool)

(declare-fun e!2596653 () Bool)

(assert (=> b!4182671 (= e!2596653 true)))

(declare-fun d!1234261 () Bool)

(assert (=> d!1234261 e!2596653))

(assert (= d!1234261 b!4182671))

(declare-fun order!24237 () Int)

(declare-fun order!24239 () Int)

(declare-fun lambda!129391 () Int)

(declare-fun dynLambda!19712 (Int Int) Int)

(declare-fun dynLambda!19713 (Int Int) Int)

(assert (=> b!4182671 (< (dynLambda!19712 order!24237 (toValue!10332 (transformation!7640 r!4142))) (dynLambda!19713 order!24239 lambda!129391))))

(declare-fun order!24241 () Int)

(declare-fun dynLambda!19714 (Int Int) Int)

(assert (=> b!4182671 (< (dynLambda!19714 order!24241 (toChars!10191 (transformation!7640 r!4142))) (dynLambda!19713 order!24239 lambda!129391))))

(declare-fun dynLambda!19715 (Int TokenValue!7870) BalanceConc!27296)

(assert (=> d!1234261 (= (list!16583 (dynLambda!19715 (toChars!10191 (transformation!7640 r!4142)) (dynLambda!19711 (toValue!10332 (transformation!7640 r!4142)) lt!1489355))) (list!16583 lt!1489355))))

(declare-fun lt!1489474 () Unit!64999)

(declare-fun ForallOf!1042 (Int BalanceConc!27296) Unit!64999)

(assert (=> d!1234261 (= lt!1489474 (ForallOf!1042 lambda!129391 lt!1489355))))

(assert (=> d!1234261 (= (lemmaSemiInverse!2406 (transformation!7640 r!4142) lt!1489355) lt!1489474)))

(declare-fun b_lambda!122905 () Bool)

(assert (=> (not b_lambda!122905) (not d!1234261)))

(declare-fun tb!250377 () Bool)

(declare-fun t!345198 () Bool)

(assert (=> (and b!4182261 (= (toChars!10191 (transformation!7640 (h!51333 rules!3843))) (toChars!10191 (transformation!7640 r!4142))) t!345198) tb!250377))

(declare-fun b!4182676 () Bool)

(declare-fun tp!1278294 () Bool)

(declare-fun e!2596656 () Bool)

(declare-fun inv!60454 (Conc!13851) Bool)

(assert (=> b!4182676 (= e!2596656 (and (inv!60454 (c!714108 (dynLambda!19715 (toChars!10191 (transformation!7640 r!4142)) (dynLambda!19711 (toValue!10332 (transformation!7640 r!4142)) lt!1489355)))) tp!1278294))))

(declare-fun result!305110 () Bool)

(declare-fun inv!60455 (BalanceConc!27296) Bool)

(assert (=> tb!250377 (= result!305110 (and (inv!60455 (dynLambda!19715 (toChars!10191 (transformation!7640 r!4142)) (dynLambda!19711 (toValue!10332 (transformation!7640 r!4142)) lt!1489355))) e!2596656))))

(assert (= tb!250377 b!4182676))

(declare-fun m!4771475 () Bool)

(assert (=> b!4182676 m!4771475))

(declare-fun m!4771477 () Bool)

(assert (=> tb!250377 m!4771477))

(assert (=> d!1234261 t!345198))

(declare-fun b_and!327257 () Bool)

(assert (= b_and!327219 (and (=> t!345198 result!305110) b_and!327257)))

(declare-fun tb!250379 () Bool)

(declare-fun t!345200 () Bool)

(assert (=> (and b!4182252 (= (toChars!10191 (transformation!7640 rBis!167)) (toChars!10191 (transformation!7640 r!4142))) t!345200) tb!250379))

(declare-fun result!305114 () Bool)

(assert (= result!305114 result!305110))

(assert (=> d!1234261 t!345200))

(declare-fun b_and!327259 () Bool)

(assert (= b_and!327223 (and (=> t!345200 result!305114) b_and!327259)))

(declare-fun t!345202 () Bool)

(declare-fun tb!250381 () Bool)

(assert (=> (and b!4182260 (= (toChars!10191 (transformation!7640 r!4142)) (toChars!10191 (transformation!7640 r!4142))) t!345202) tb!250381))

(declare-fun result!305116 () Bool)

(assert (= result!305116 result!305110))

(assert (=> d!1234261 t!345202))

(declare-fun b_and!327261 () Bool)

(assert (= b_and!327227 (and (=> t!345202 result!305116) b_and!327261)))

(declare-fun b_lambda!122907 () Bool)

(assert (=> (not b_lambda!122907) (not d!1234261)))

(assert (=> d!1234261 t!345176))

(declare-fun b_and!327263 () Bool)

(assert (= b_and!327229 (and (=> t!345176 result!305076) b_and!327263)))

(assert (=> d!1234261 t!345178))

(declare-fun b_and!327265 () Bool)

(assert (= b_and!327231 (and (=> t!345178 result!305080) b_and!327265)))

(assert (=> d!1234261 t!345180))

(declare-fun b_and!327267 () Bool)

(assert (= b_and!327233 (and (=> t!345180 result!305082) b_and!327267)))

(assert (=> d!1234261 m!4771391))

(declare-fun m!4771479 () Bool)

(assert (=> d!1234261 m!4771479))

(declare-fun m!4771481 () Bool)

(assert (=> d!1234261 m!4771481))

(declare-fun m!4771483 () Bool)

(assert (=> d!1234261 m!4771483))

(declare-fun m!4771485 () Bool)

(assert (=> d!1234261 m!4771485))

(assert (=> d!1234261 m!4771391))

(assert (=> d!1234261 m!4771481))

(assert (=> b!4182271 d!1234261))

(declare-fun d!1234283 () Bool)

(declare-fun res!1715281 () Bool)

(declare-fun e!2596659 () Bool)

(assert (=> d!1234283 (=> (not res!1715281) (not e!2596659))))

(assert (=> d!1234283 (= res!1715281 (validRegex!5662 (regex!7640 r!4142)))))

(assert (=> d!1234283 (= (ruleValid!3358 thiss!25986 r!4142) e!2596659)))

(declare-fun b!4182681 () Bool)

(declare-fun res!1715282 () Bool)

(assert (=> b!4182681 (=> (not res!1715282) (not e!2596659))))

(assert (=> b!4182681 (= res!1715282 (not (nullable!4399 (regex!7640 r!4142))))))

(declare-fun b!4182682 () Bool)

(assert (=> b!4182682 (= e!2596659 (not (= (tag!8504 r!4142) (String!53217 ""))))))

(assert (= (and d!1234283 res!1715281) b!4182681))

(assert (= (and b!4182681 res!1715282) b!4182682))

(assert (=> d!1234283 m!4771119))

(assert (=> b!4182681 m!4771323))

(assert (=> b!4182270 d!1234283))

(declare-fun b!4182686 () Bool)

(declare-fun e!2596660 () Bool)

(assert (=> b!4182686 (= e!2596660 (>= (size!33718 input!3342) (size!33718 pBis!107)))))

(declare-fun b!4182683 () Bool)

(declare-fun e!2596662 () Bool)

(declare-fun e!2596661 () Bool)

(assert (=> b!4182683 (= e!2596662 e!2596661)))

(declare-fun res!1715286 () Bool)

(assert (=> b!4182683 (=> (not res!1715286) (not e!2596661))))

(assert (=> b!4182683 (= res!1715286 (not ((_ is Nil!45912) input!3342)))))

(declare-fun b!4182685 () Bool)

(assert (=> b!4182685 (= e!2596661 (isPrefix!4497 (tail!6723 pBis!107) (tail!6723 input!3342)))))

(declare-fun b!4182684 () Bool)

(declare-fun res!1715283 () Bool)

(assert (=> b!4182684 (=> (not res!1715283) (not e!2596661))))

(assert (=> b!4182684 (= res!1715283 (= (head!8876 pBis!107) (head!8876 input!3342)))))

(declare-fun d!1234285 () Bool)

(assert (=> d!1234285 e!2596660))

(declare-fun res!1715284 () Bool)

(assert (=> d!1234285 (=> res!1715284 e!2596660)))

(declare-fun lt!1489475 () Bool)

(assert (=> d!1234285 (= res!1715284 (not lt!1489475))))

(assert (=> d!1234285 (= lt!1489475 e!2596662)))

(declare-fun res!1715285 () Bool)

(assert (=> d!1234285 (=> res!1715285 e!2596662)))

(assert (=> d!1234285 (= res!1715285 ((_ is Nil!45912) pBis!107))))

(assert (=> d!1234285 (= (isPrefix!4497 pBis!107 input!3342) lt!1489475)))

(assert (= (and d!1234285 (not res!1715285)) b!4182683))

(assert (= (and b!4182683 res!1715286) b!4182684))

(assert (= (and b!4182684 res!1715283) b!4182685))

(assert (= (and d!1234285 (not res!1715284)) b!4182686))

(assert (=> b!4182686 m!4771101))

(assert (=> b!4182686 m!4771109))

(declare-fun m!4771487 () Bool)

(assert (=> b!4182685 m!4771487))

(assert (=> b!4182685 m!4771333))

(assert (=> b!4182685 m!4771487))

(assert (=> b!4182685 m!4771333))

(declare-fun m!4771489 () Bool)

(assert (=> b!4182685 m!4771489))

(declare-fun m!4771491 () Bool)

(assert (=> b!4182684 m!4771491))

(assert (=> b!4182684 m!4771337))

(assert (=> b!4182269 d!1234285))

(declare-fun d!1234287 () Bool)

(assert (=> d!1234287 (= (inv!60449 (tag!8504 r!4142)) (= (mod (str.len (value!238271 (tag!8504 r!4142))) 2) 0))))

(assert (=> b!4182258 d!1234287))

(declare-fun d!1234289 () Bool)

(declare-fun res!1715289 () Bool)

(declare-fun e!2596665 () Bool)

(assert (=> d!1234289 (=> (not res!1715289) (not e!2596665))))

(declare-fun semiInverseModEq!3308 (Int Int) Bool)

(assert (=> d!1234289 (= res!1715289 (semiInverseModEq!3308 (toChars!10191 (transformation!7640 r!4142)) (toValue!10332 (transformation!7640 r!4142))))))

(assert (=> d!1234289 (= (inv!60451 (transformation!7640 r!4142)) e!2596665)))

(declare-fun b!4182689 () Bool)

(declare-fun equivClasses!3207 (Int Int) Bool)

(assert (=> b!4182689 (= e!2596665 (equivClasses!3207 (toChars!10191 (transformation!7640 r!4142)) (toValue!10332 (transformation!7640 r!4142))))))

(assert (= (and d!1234289 res!1715289) b!4182689))

(declare-fun m!4771493 () Bool)

(assert (=> d!1234289 m!4771493))

(declare-fun m!4771495 () Bool)

(assert (=> b!4182689 m!4771495))

(assert (=> b!4182258 d!1234289))

(declare-fun d!1234291 () Bool)

(declare-fun lt!1489476 () Int)

(assert (=> d!1234291 (>= lt!1489476 0)))

(declare-fun e!2596666 () Int)

(assert (=> d!1234291 (= lt!1489476 e!2596666)))

(declare-fun c!714168 () Bool)

(assert (=> d!1234291 (= c!714168 ((_ is Nil!45912) pBis!107))))

(assert (=> d!1234291 (= (size!33718 pBis!107) lt!1489476)))

(declare-fun b!4182690 () Bool)

(assert (=> b!4182690 (= e!2596666 0)))

(declare-fun b!4182691 () Bool)

(assert (=> b!4182691 (= e!2596666 (+ 1 (size!33718 (t!345173 pBis!107))))))

(assert (= (and d!1234291 c!714168) b!4182690))

(assert (= (and d!1234291 (not c!714168)) b!4182691))

(declare-fun m!4771497 () Bool)

(assert (=> b!4182691 m!4771497))

(assert (=> b!4182267 d!1234291))

(declare-fun d!1234293 () Bool)

(declare-fun res!1715290 () Bool)

(declare-fun e!2596667 () Bool)

(assert (=> d!1234293 (=> (not res!1715290) (not e!2596667))))

(assert (=> d!1234293 (= res!1715290 (validRegex!5662 (regex!7640 rBis!167)))))

(assert (=> d!1234293 (= (ruleValid!3358 thiss!25986 rBis!167) e!2596667)))

(declare-fun b!4182692 () Bool)

(declare-fun res!1715291 () Bool)

(assert (=> b!4182692 (=> (not res!1715291) (not e!2596667))))

(assert (=> b!4182692 (= res!1715291 (not (nullable!4399 (regex!7640 rBis!167))))))

(declare-fun b!4182693 () Bool)

(assert (=> b!4182693 (= e!2596667 (not (= (tag!8504 rBis!167) (String!53217 ""))))))

(assert (= (and d!1234293 res!1715290) b!4182692))

(assert (= (and b!4182692 res!1715291) b!4182693))

(declare-fun m!4771499 () Bool)

(assert (=> d!1234293 m!4771499))

(declare-fun m!4771501 () Bool)

(assert (=> b!4182692 m!4771501))

(assert (=> b!4182256 d!1234293))

(declare-fun d!1234295 () Bool)

(assert (=> d!1234295 (= (inv!60449 (tag!8504 (h!51333 rules!3843))) (= (mod (str.len (value!238271 (tag!8504 (h!51333 rules!3843)))) 2) 0))))

(assert (=> b!4182257 d!1234295))

(declare-fun d!1234297 () Bool)

(declare-fun res!1715292 () Bool)

(declare-fun e!2596668 () Bool)

(assert (=> d!1234297 (=> (not res!1715292) (not e!2596668))))

(assert (=> d!1234297 (= res!1715292 (semiInverseModEq!3308 (toChars!10191 (transformation!7640 (h!51333 rules!3843))) (toValue!10332 (transformation!7640 (h!51333 rules!3843)))))))

(assert (=> d!1234297 (= (inv!60451 (transformation!7640 (h!51333 rules!3843))) e!2596668)))

(declare-fun b!4182694 () Bool)

(assert (=> b!4182694 (= e!2596668 (equivClasses!3207 (toChars!10191 (transformation!7640 (h!51333 rules!3843))) (toValue!10332 (transformation!7640 (h!51333 rules!3843)))))))

(assert (= (and d!1234297 res!1715292) b!4182694))

(declare-fun m!4771503 () Bool)

(assert (=> d!1234297 m!4771503))

(declare-fun m!4771505 () Bool)

(assert (=> b!4182694 m!4771505))

(assert (=> b!4182257 d!1234297))

(declare-fun d!1234299 () Bool)

(declare-fun lt!1489477 () Bool)

(assert (=> d!1234299 (= lt!1489477 (select (content!7134 rules!3843) rBis!167))))

(declare-fun e!2596670 () Bool)

(assert (=> d!1234299 (= lt!1489477 e!2596670)))

(declare-fun res!1715293 () Bool)

(assert (=> d!1234299 (=> (not res!1715293) (not e!2596670))))

(assert (=> d!1234299 (= res!1715293 ((_ is Cons!45913) rules!3843))))

(assert (=> d!1234299 (= (contains!9447 rules!3843 rBis!167) lt!1489477)))

(declare-fun b!4182695 () Bool)

(declare-fun e!2596669 () Bool)

(assert (=> b!4182695 (= e!2596670 e!2596669)))

(declare-fun res!1715294 () Bool)

(assert (=> b!4182695 (=> res!1715294 e!2596669)))

(assert (=> b!4182695 (= res!1715294 (= (h!51333 rules!3843) rBis!167))))

(declare-fun b!4182696 () Bool)

(assert (=> b!4182696 (= e!2596669 (contains!9447 (t!345174 rules!3843) rBis!167))))

(assert (= (and d!1234299 res!1715293) b!4182695))

(assert (= (and b!4182695 (not res!1715294)) b!4182696))

(assert (=> d!1234299 m!4771295))

(declare-fun m!4771507 () Bool)

(assert (=> d!1234299 m!4771507))

(declare-fun m!4771509 () Bool)

(assert (=> b!4182696 m!4771509))

(assert (=> b!4182255 d!1234299))

(declare-fun d!1234301 () Bool)

(assert (=> d!1234301 (= (inv!60449 (tag!8504 rBis!167)) (= (mod (str.len (value!238271 (tag!8504 rBis!167))) 2) 0))))

(assert (=> b!4182276 d!1234301))

(declare-fun d!1234303 () Bool)

(declare-fun res!1715295 () Bool)

(declare-fun e!2596671 () Bool)

(assert (=> d!1234303 (=> (not res!1715295) (not e!2596671))))

(assert (=> d!1234303 (= res!1715295 (semiInverseModEq!3308 (toChars!10191 (transformation!7640 rBis!167)) (toValue!10332 (transformation!7640 rBis!167))))))

(assert (=> d!1234303 (= (inv!60451 (transformation!7640 rBis!167)) e!2596671)))

(declare-fun b!4182697 () Bool)

(assert (=> b!4182697 (= e!2596671 (equivClasses!3207 (toChars!10191 (transformation!7640 rBis!167)) (toValue!10332 (transformation!7640 rBis!167))))))

(assert (= (and d!1234303 res!1715295) b!4182697))

(declare-fun m!4771511 () Bool)

(assert (=> d!1234303 m!4771511))

(declare-fun m!4771513 () Bool)

(assert (=> b!4182697 m!4771513))

(assert (=> b!4182276 d!1234303))

(declare-fun b!4182717 () Bool)

(declare-fun res!1715311 () Bool)

(declare-fun e!2596680 () Bool)

(assert (=> b!4182717 (=> (not res!1715311) (not e!2596680))))

(declare-fun lt!1489492 () Option!9834)

(assert (=> b!4182717 (= res!1715311 (= (list!16583 (charsOf!5077 (_1!24995 (get!14921 lt!1489492)))) (originalCharacters!8028 (_1!24995 (get!14921 lt!1489492)))))))

(declare-fun b!4182718 () Bool)

(declare-fun res!1715312 () Bool)

(assert (=> b!4182718 (=> (not res!1715312) (not e!2596680))))

(assert (=> b!4182718 (= res!1715312 (= (value!238272 (_1!24995 (get!14921 lt!1489492))) (apply!10605 (transformation!7640 (rule!10704 (_1!24995 (get!14921 lt!1489492)))) (seqFromList!5665 (originalCharacters!8028 (_1!24995 (get!14921 lt!1489492)))))))))

(declare-fun b!4182719 () Bool)

(declare-fun e!2596678 () Option!9834)

(declare-fun call!291766 () Option!9834)

(assert (=> b!4182719 (= e!2596678 call!291766)))

(declare-fun b!4182720 () Bool)

(assert (=> b!4182720 (= e!2596680 (contains!9447 rules!3843 (rule!10704 (_1!24995 (get!14921 lt!1489492)))))))

(declare-fun b!4182721 () Bool)

(declare-fun res!1715313 () Bool)

(assert (=> b!4182721 (=> (not res!1715313) (not e!2596680))))

(assert (=> b!4182721 (= res!1715313 (= (++!11714 (list!16583 (charsOf!5077 (_1!24995 (get!14921 lt!1489492)))) (_2!24995 (get!14921 lt!1489492))) input!3342))))

(declare-fun b!4182716 () Bool)

(declare-fun res!1715310 () Bool)

(assert (=> b!4182716 (=> (not res!1715310) (not e!2596680))))

(assert (=> b!4182716 (= res!1715310 (< (size!33718 (_2!24995 (get!14921 lt!1489492))) (size!33718 input!3342)))))

(declare-fun d!1234305 () Bool)

(declare-fun e!2596679 () Bool)

(assert (=> d!1234305 e!2596679))

(declare-fun res!1715314 () Bool)

(assert (=> d!1234305 (=> res!1715314 e!2596679)))

(assert (=> d!1234305 (= res!1715314 (isEmpty!27167 lt!1489492))))

(assert (=> d!1234305 (= lt!1489492 e!2596678)))

(declare-fun c!714171 () Bool)

(assert (=> d!1234305 (= c!714171 (and ((_ is Cons!45913) rules!3843) ((_ is Nil!45913) (t!345174 rules!3843))))))

(declare-fun lt!1489490 () Unit!64999)

(declare-fun lt!1489488 () Unit!64999)

(assert (=> d!1234305 (= lt!1489490 lt!1489488)))

(assert (=> d!1234305 (isPrefix!4497 input!3342 input!3342)))

(assert (=> d!1234305 (= lt!1489488 (lemmaIsPrefixRefl!2926 input!3342 input!3342))))

(declare-fun rulesValidInductive!2814 (LexerInterface!7233 List!46037) Bool)

(assert (=> d!1234305 (rulesValidInductive!2814 thiss!25986 rules!3843)))

(assert (=> d!1234305 (= (maxPrefix!4281 thiss!25986 rules!3843 input!3342) lt!1489492)))

(declare-fun b!4182722 () Bool)

(assert (=> b!4182722 (= e!2596679 e!2596680)))

(declare-fun res!1715316 () Bool)

(assert (=> b!4182722 (=> (not res!1715316) (not e!2596680))))

(declare-fun isDefined!7330 (Option!9834) Bool)

(assert (=> b!4182722 (= res!1715316 (isDefined!7330 lt!1489492))))

(declare-fun b!4182723 () Bool)

(declare-fun lt!1489491 () Option!9834)

(declare-fun lt!1489489 () Option!9834)

(assert (=> b!4182723 (= e!2596678 (ite (and ((_ is None!9833) lt!1489491) ((_ is None!9833) lt!1489489)) None!9833 (ite ((_ is None!9833) lt!1489489) lt!1489491 (ite ((_ is None!9833) lt!1489491) lt!1489489 (ite (>= (size!33717 (_1!24995 (v!40645 lt!1489491))) (size!33717 (_1!24995 (v!40645 lt!1489489)))) lt!1489491 lt!1489489)))))))

(assert (=> b!4182723 (= lt!1489491 call!291766)))

(assert (=> b!4182723 (= lt!1489489 (maxPrefix!4281 thiss!25986 (t!345174 rules!3843) input!3342))))

(declare-fun bm!291761 () Bool)

(assert (=> bm!291761 (= call!291766 (maxPrefixOneRule!3242 thiss!25986 (h!51333 rules!3843) input!3342))))

(declare-fun b!4182724 () Bool)

(declare-fun res!1715315 () Bool)

(assert (=> b!4182724 (=> (not res!1715315) (not e!2596680))))

(assert (=> b!4182724 (= res!1715315 (matchR!6284 (regex!7640 (rule!10704 (_1!24995 (get!14921 lt!1489492)))) (list!16583 (charsOf!5077 (_1!24995 (get!14921 lt!1489492))))))))

(assert (= (and d!1234305 c!714171) b!4182719))

(assert (= (and d!1234305 (not c!714171)) b!4182723))

(assert (= (or b!4182719 b!4182723) bm!291761))

(assert (= (and d!1234305 (not res!1715314)) b!4182722))

(assert (= (and b!4182722 res!1715316) b!4182717))

(assert (= (and b!4182717 res!1715311) b!4182716))

(assert (= (and b!4182716 res!1715310) b!4182721))

(assert (= (and b!4182721 res!1715313) b!4182718))

(assert (= (and b!4182718 res!1715312) b!4182724))

(assert (= (and b!4182724 res!1715315) b!4182720))

(declare-fun m!4771515 () Bool)

(assert (=> b!4182717 m!4771515))

(declare-fun m!4771517 () Bool)

(assert (=> b!4182717 m!4771517))

(assert (=> b!4182717 m!4771517))

(declare-fun m!4771519 () Bool)

(assert (=> b!4182717 m!4771519))

(declare-fun m!4771521 () Bool)

(assert (=> b!4182722 m!4771521))

(assert (=> b!4182720 m!4771515))

(declare-fun m!4771523 () Bool)

(assert (=> b!4182720 m!4771523))

(assert (=> b!4182716 m!4771515))

(declare-fun m!4771525 () Bool)

(assert (=> b!4182716 m!4771525))

(assert (=> b!4182716 m!4771101))

(declare-fun m!4771527 () Bool)

(assert (=> bm!291761 m!4771527))

(assert (=> b!4182721 m!4771515))

(assert (=> b!4182721 m!4771517))

(assert (=> b!4182721 m!4771517))

(assert (=> b!4182721 m!4771519))

(assert (=> b!4182721 m!4771519))

(declare-fun m!4771529 () Bool)

(assert (=> b!4182721 m!4771529))

(declare-fun m!4771531 () Bool)

(assert (=> d!1234305 m!4771531))

(assert (=> d!1234305 m!4771065))

(assert (=> d!1234305 m!4771077))

(declare-fun m!4771533 () Bool)

(assert (=> d!1234305 m!4771533))

(assert (=> b!4182724 m!4771515))

(assert (=> b!4182724 m!4771517))

(assert (=> b!4182724 m!4771517))

(assert (=> b!4182724 m!4771519))

(assert (=> b!4182724 m!4771519))

(declare-fun m!4771535 () Bool)

(assert (=> b!4182724 m!4771535))

(assert (=> b!4182718 m!4771515))

(declare-fun m!4771537 () Bool)

(assert (=> b!4182718 m!4771537))

(assert (=> b!4182718 m!4771537))

(declare-fun m!4771539 () Bool)

(assert (=> b!4182718 m!4771539))

(declare-fun m!4771541 () Bool)

(assert (=> b!4182723 m!4771541))

(assert (=> b!4182266 d!1234305))

(declare-fun b!4182729 () Bool)

(declare-fun e!2596683 () Bool)

(declare-fun tp!1278297 () Bool)

(assert (=> b!4182729 (= e!2596683 (and tp_is_empty!22053 tp!1278297))))

(assert (=> b!4182259 (= tp!1278245 e!2596683)))

(assert (= (and b!4182259 ((_ is Cons!45912) (t!345173 input!3342))) b!4182729))

(declare-fun b!4182740 () Bool)

(declare-fun b_free!121567 () Bool)

(declare-fun b_next!122271 () Bool)

(assert (=> b!4182740 (= b_free!121567 (not b_next!122271))))

(declare-fun tb!250383 () Bool)

(declare-fun t!345205 () Bool)

(assert (=> (and b!4182740 (= (toValue!10332 (transformation!7640 (h!51333 (t!345174 rules!3843)))) (toValue!10332 (transformation!7640 r!4142))) t!345205) tb!250383))

(declare-fun result!305122 () Bool)

(assert (= result!305122 result!305076))

(assert (=> d!1234257 t!345205))

(assert (=> d!1234261 t!345205))

(declare-fun tp!1278309 () Bool)

(declare-fun b_and!327269 () Bool)

(assert (=> b!4182740 (= tp!1278309 (and (=> t!345205 result!305122) b_and!327269))))

(declare-fun b_free!121569 () Bool)

(declare-fun b_next!122273 () Bool)

(assert (=> b!4182740 (= b_free!121569 (not b_next!122273))))

(declare-fun tb!250385 () Bool)

(declare-fun t!345207 () Bool)

(assert (=> (and b!4182740 (= (toChars!10191 (transformation!7640 (h!51333 (t!345174 rules!3843)))) (toChars!10191 (transformation!7640 r!4142))) t!345207) tb!250385))

(declare-fun result!305124 () Bool)

(assert (= result!305124 result!305110))

(assert (=> d!1234261 t!345207))

(declare-fun tp!1278306 () Bool)

(declare-fun b_and!327271 () Bool)

(assert (=> b!4182740 (= tp!1278306 (and (=> t!345207 result!305124) b_and!327271))))

(declare-fun e!2596694 () Bool)

(assert (=> b!4182740 (= e!2596694 (and tp!1278309 tp!1278306))))

(declare-fun b!4182739 () Bool)

(declare-fun tp!1278308 () Bool)

(declare-fun e!2596692 () Bool)

(assert (=> b!4182739 (= e!2596692 (and tp!1278308 (inv!60449 (tag!8504 (h!51333 (t!345174 rules!3843)))) (inv!60451 (transformation!7640 (h!51333 (t!345174 rules!3843)))) e!2596694))))

(declare-fun b!4182738 () Bool)

(declare-fun e!2596695 () Bool)

(declare-fun tp!1278307 () Bool)

(assert (=> b!4182738 (= e!2596695 (and e!2596692 tp!1278307))))

(assert (=> b!4182264 (= tp!1278238 e!2596695)))

(assert (= b!4182739 b!4182740))

(assert (= b!4182738 b!4182739))

(assert (= (and b!4182264 ((_ is Cons!45913) (t!345174 rules!3843))) b!4182738))

(declare-fun m!4771543 () Bool)

(assert (=> b!4182739 m!4771543))

(declare-fun m!4771545 () Bool)

(assert (=> b!4182739 m!4771545))

(declare-fun b!4182741 () Bool)

(declare-fun e!2596696 () Bool)

(declare-fun tp!1278310 () Bool)

(assert (=> b!4182741 (= e!2596696 (and tp_is_empty!22053 tp!1278310))))

(assert (=> b!4182275 (= tp!1278234 e!2596696)))

(assert (= (and b!4182275 ((_ is Cons!45912) (t!345173 pBis!107))) b!4182741))

(declare-fun b!4182752 () Bool)

(declare-fun e!2596699 () Bool)

(assert (=> b!4182752 (= e!2596699 tp_is_empty!22053)))

(assert (=> b!4182258 (= tp!1278243 e!2596699)))

(declare-fun b!4182754 () Bool)

(declare-fun tp!1278325 () Bool)

(assert (=> b!4182754 (= e!2596699 tp!1278325)))

(declare-fun b!4182753 () Bool)

(declare-fun tp!1278322 () Bool)

(declare-fun tp!1278323 () Bool)

(assert (=> b!4182753 (= e!2596699 (and tp!1278322 tp!1278323))))

(declare-fun b!4182755 () Bool)

(declare-fun tp!1278324 () Bool)

(declare-fun tp!1278321 () Bool)

(assert (=> b!4182755 (= e!2596699 (and tp!1278324 tp!1278321))))

(assert (= (and b!4182258 ((_ is ElementMatch!12545) (regex!7640 r!4142))) b!4182752))

(assert (= (and b!4182258 ((_ is Concat!20416) (regex!7640 r!4142))) b!4182753))

(assert (= (and b!4182258 ((_ is Star!12545) (regex!7640 r!4142))) b!4182754))

(assert (= (and b!4182258 ((_ is Union!12545) (regex!7640 r!4142))) b!4182755))

(declare-fun b!4182756 () Bool)

(declare-fun e!2596700 () Bool)

(assert (=> b!4182756 (= e!2596700 tp_is_empty!22053)))

(assert (=> b!4182257 (= tp!1278244 e!2596700)))

(declare-fun b!4182758 () Bool)

(declare-fun tp!1278330 () Bool)

(assert (=> b!4182758 (= e!2596700 tp!1278330)))

(declare-fun b!4182757 () Bool)

(declare-fun tp!1278327 () Bool)

(declare-fun tp!1278328 () Bool)

(assert (=> b!4182757 (= e!2596700 (and tp!1278327 tp!1278328))))

(declare-fun b!4182759 () Bool)

(declare-fun tp!1278329 () Bool)

(declare-fun tp!1278326 () Bool)

(assert (=> b!4182759 (= e!2596700 (and tp!1278329 tp!1278326))))

(assert (= (and b!4182257 ((_ is ElementMatch!12545) (regex!7640 (h!51333 rules!3843)))) b!4182756))

(assert (= (and b!4182257 ((_ is Concat!20416) (regex!7640 (h!51333 rules!3843)))) b!4182757))

(assert (= (and b!4182257 ((_ is Star!12545) (regex!7640 (h!51333 rules!3843)))) b!4182758))

(assert (= (and b!4182257 ((_ is Union!12545) (regex!7640 (h!51333 rules!3843)))) b!4182759))

(declare-fun b!4182760 () Bool)

(declare-fun e!2596701 () Bool)

(declare-fun tp!1278331 () Bool)

(assert (=> b!4182760 (= e!2596701 (and tp_is_empty!22053 tp!1278331))))

(assert (=> b!4182273 (= tp!1278246 e!2596701)))

(assert (= (and b!4182273 ((_ is Cons!45912) (t!345173 p!2959))) b!4182760))

(declare-fun b!4182761 () Bool)

(declare-fun e!2596702 () Bool)

(assert (=> b!4182761 (= e!2596702 tp_is_empty!22053)))

(assert (=> b!4182276 (= tp!1278240 e!2596702)))

(declare-fun b!4182763 () Bool)

(declare-fun tp!1278336 () Bool)

(assert (=> b!4182763 (= e!2596702 tp!1278336)))

(declare-fun b!4182762 () Bool)

(declare-fun tp!1278333 () Bool)

(declare-fun tp!1278334 () Bool)

(assert (=> b!4182762 (= e!2596702 (and tp!1278333 tp!1278334))))

(declare-fun b!4182764 () Bool)

(declare-fun tp!1278335 () Bool)

(declare-fun tp!1278332 () Bool)

(assert (=> b!4182764 (= e!2596702 (and tp!1278335 tp!1278332))))

(assert (= (and b!4182276 ((_ is ElementMatch!12545) (regex!7640 rBis!167))) b!4182761))

(assert (= (and b!4182276 ((_ is Concat!20416) (regex!7640 rBis!167))) b!4182762))

(assert (= (and b!4182276 ((_ is Star!12545) (regex!7640 rBis!167))) b!4182763))

(assert (= (and b!4182276 ((_ is Union!12545) (regex!7640 rBis!167))) b!4182764))

(declare-fun b_lambda!122909 () Bool)

(assert (= b_lambda!122907 (or (and b!4182261 b_free!121551 (= (toValue!10332 (transformation!7640 (h!51333 rules!3843))) (toValue!10332 (transformation!7640 r!4142)))) (and b!4182252 b_free!121555 (= (toValue!10332 (transformation!7640 rBis!167)) (toValue!10332 (transformation!7640 r!4142)))) (and b!4182260 b_free!121559) (and b!4182740 b_free!121567 (= (toValue!10332 (transformation!7640 (h!51333 (t!345174 rules!3843)))) (toValue!10332 (transformation!7640 r!4142)))) b_lambda!122909)))

(declare-fun b_lambda!122911 () Bool)

(assert (= b_lambda!122891 (or (and b!4182261 b_free!121551 (= (toValue!10332 (transformation!7640 (h!51333 rules!3843))) (toValue!10332 (transformation!7640 r!4142)))) (and b!4182252 b_free!121555 (= (toValue!10332 (transformation!7640 rBis!167)) (toValue!10332 (transformation!7640 r!4142)))) (and b!4182260 b_free!121559) (and b!4182740 b_free!121567 (= (toValue!10332 (transformation!7640 (h!51333 (t!345174 rules!3843)))) (toValue!10332 (transformation!7640 r!4142)))) b_lambda!122911)))

(declare-fun b_lambda!122913 () Bool)

(assert (= b_lambda!122905 (or (and b!4182261 b_free!121553 (= (toChars!10191 (transformation!7640 (h!51333 rules!3843))) (toChars!10191 (transformation!7640 r!4142)))) (and b!4182252 b_free!121557 (= (toChars!10191 (transformation!7640 rBis!167)) (toChars!10191 (transformation!7640 r!4142)))) (and b!4182260 b_free!121561) (and b!4182740 b_free!121569 (= (toChars!10191 (transformation!7640 (h!51333 (t!345174 rules!3843)))) (toChars!10191 (transformation!7640 r!4142)))) b_lambda!122913)))

(check-sat (not b_next!122255) (not d!1234289) (not b!4182364) (not b_next!122259) (not b!4182363) (not b!4182762) (not b_lambda!122913) (not b!4182764) (not b!4182717) (not b!4182565) (not d!1234249) (not b!4182571) (not b!4182578) (not b_next!122263) (not b!4182684) (not b!4182741) (not b!4182691) (not b!4182366) (not d!1234305) (not b!4182694) (not b!4182575) (not b!4182429) b_and!327261 (not d!1234283) (not b!4182570) (not b!4182566) (not b!4182739) b_and!327257 (not b!4182583) (not d!1234303) (not b!4182567) (not b!4182696) (not b_lambda!122911) b_and!327259 (not b!4182573) (not b!4182757) (not d!1234243) (not b!4182738) (not b_lambda!122909) (not b!4182759) (not d!1234255) (not b!4182718) (not d!1234233) (not b!4182569) (not b!4182588) (not b!4182720) (not b_next!122257) (not b!4182541) (not d!1234187) (not b!4182723) (not b!4182546) (not b!4182555) (not b!4182371) b_and!327267 b_and!327263 (not d!1234261) (not bm!291742) (not b!4182716) (not b_next!122261) (not b!4182681) (not b!4182576) (not d!1234293) (not bm!291761) (not b!4182589) (not b_next!122265) (not b!4182544) (not b!4182760) (not b!4182572) (not b!4182685) b_and!327265 (not b!4182368) (not b!4182722) (not b!4182729) (not b!4182686) (not d!1234247) (not b!4182758) (not b_next!122271) (not b!4182697) (not b!4182365) (not tb!250377) (not b!4182692) (not tb!250355) (not b!4182689) (not b!4182469) (not b!4182552) (not b!4182753) (not b!4182763) (not b!4182721) (not bm!291743) (not b!4182367) (not d!1234299) (not b!4182547) tp_is_empty!22053 (not b!4182676) (not b!4182568) b_and!327271 (not d!1234239) (not b!4182395) (not b!4182724) (not d!1234251) (not d!1234221) (not d!1234297) b_and!327269 (not b!4182755) (not b_next!122273) (not b!4182539) (not b!4182754) (not d!1234183) (not b!4182370) (not b!4182590) (not bm!291758))
(check-sat (not b_next!122263) b_and!327261 (not b_next!122255) b_and!327257 b_and!327259 (not b_next!122257) b_and!327267 b_and!327263 (not b_next!122261) (not b_next!122265) b_and!327265 (not b_next!122271) b_and!327271 (not b_next!122259) b_and!327269 (not b_next!122273))
