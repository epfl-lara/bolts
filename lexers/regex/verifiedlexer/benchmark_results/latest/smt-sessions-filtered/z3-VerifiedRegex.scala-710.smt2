; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30086 () Bool)

(assert start!30086)

(declare-fun b!278261 () Bool)

(declare-fun b_free!10289 () Bool)

(declare-fun b_next!10289 () Bool)

(assert (=> b!278261 (= b_free!10289 (not b_next!10289))))

(declare-fun tp!104021 () Bool)

(declare-fun b_and!22333 () Bool)

(assert (=> b!278261 (= tp!104021 b_and!22333)))

(declare-fun b_free!10291 () Bool)

(declare-fun b_next!10291 () Bool)

(assert (=> b!278261 (= b_free!10291 (not b_next!10291))))

(declare-fun tp!104016 () Bool)

(declare-fun b_and!22335 () Bool)

(assert (=> b!278261 (= tp!104016 b_and!22335)))

(declare-fun b!278258 () Bool)

(declare-fun b_free!10293 () Bool)

(declare-fun b_next!10293 () Bool)

(assert (=> b!278258 (= b_free!10293 (not b_next!10293))))

(declare-fun tp!104023 () Bool)

(declare-fun b_and!22337 () Bool)

(assert (=> b!278258 (= tp!104023 b_and!22337)))

(declare-fun b_free!10295 () Bool)

(declare-fun b_next!10295 () Bool)

(assert (=> b!278258 (= b_free!10295 (not b_next!10295))))

(declare-fun tp!104018 () Bool)

(declare-fun b_and!22339 () Bool)

(assert (=> b!278258 (= tp!104018 b_and!22339)))

(declare-fun b!278240 () Bool)

(declare-fun b_free!10297 () Bool)

(declare-fun b_next!10297 () Bool)

(assert (=> b!278240 (= b_free!10297 (not b_next!10297))))

(declare-fun tp!104020 () Bool)

(declare-fun b_and!22341 () Bool)

(assert (=> b!278240 (= tp!104020 b_and!22341)))

(declare-fun b_free!10299 () Bool)

(declare-fun b_next!10299 () Bool)

(assert (=> b!278240 (= b_free!10299 (not b_next!10299))))

(declare-fun tp!104022 () Bool)

(declare-fun b_and!22343 () Bool)

(assert (=> b!278240 (= tp!104022 b_and!22343)))

(declare-fun bs!31176 () Bool)

(declare-fun b!278282 () Bool)

(declare-fun b!278270 () Bool)

(assert (= bs!31176 (and b!278282 b!278270)))

(declare-fun lambda!9492 () Int)

(declare-fun lambda!9491 () Int)

(assert (=> bs!31176 (not (= lambda!9492 lambda!9491))))

(declare-fun b!278294 () Bool)

(declare-fun e!173136 () Bool)

(assert (=> b!278294 (= e!173136 true)))

(declare-fun b!278293 () Bool)

(declare-fun e!173135 () Bool)

(assert (=> b!278293 (= e!173135 e!173136)))

(declare-fun b!278292 () Bool)

(declare-fun e!173134 () Bool)

(assert (=> b!278292 (= e!173134 e!173135)))

(assert (=> b!278282 e!173134))

(assert (= b!278293 b!278294))

(assert (= b!278292 b!278293))

(declare-datatypes ((List!3894 0))(
  ( (Nil!3884) (Cons!3884 (h!9281 (_ BitVec 16)) (t!39200 List!3894)) )
))
(declare-datatypes ((TokenValue!765 0))(
  ( (FloatLiteralValue!1530 (text!5800 List!3894)) (TokenValueExt!764 (__x!3017 Int)) (Broken!3825 (value!25465 List!3894)) (Object!774) (End!765) (Def!765) (Underscore!765) (Match!765) (Else!765) (Error!765) (Case!765) (If!765) (Extends!765) (Abstract!765) (Class!765) (Val!765) (DelimiterValue!1530 (del!825 List!3894)) (KeywordValue!771 (value!25466 List!3894)) (CommentValue!1530 (value!25467 List!3894)) (WhitespaceValue!1530 (value!25468 List!3894)) (IndentationValue!765 (value!25469 List!3894)) (String!4904) (Int32!765) (Broken!3826 (value!25470 List!3894)) (Boolean!766) (Unit!5109) (OperatorValue!768 (op!825 List!3894)) (IdentifierValue!1530 (value!25471 List!3894)) (IdentifierValue!1531 (value!25472 List!3894)) (WhitespaceValue!1531 (value!25473 List!3894)) (True!1530) (False!1530) (Broken!3827 (value!25474 List!3894)) (Broken!3828 (value!25475 List!3894)) (True!1531) (RightBrace!765) (RightBracket!765) (Colon!765) (Null!765) (Comma!765) (LeftBracket!765) (False!1531) (LeftBrace!765) (ImaginaryLiteralValue!765 (text!5801 List!3894)) (StringLiteralValue!2295 (value!25476 List!3894)) (EOFValue!765 (value!25477 List!3894)) (IdentValue!765 (value!25478 List!3894)) (DelimiterValue!1531 (value!25479 List!3894)) (DedentValue!765 (value!25480 List!3894)) (NewLineValue!765 (value!25481 List!3894)) (IntegerValue!2295 (value!25482 (_ BitVec 32)) (text!5802 List!3894)) (IntegerValue!2296 (value!25483 Int) (text!5803 List!3894)) (Times!765) (Or!765) (Equal!765) (Minus!765) (Broken!3829 (value!25484 List!3894)) (And!765) (Div!765) (LessEqual!765) (Mod!765) (Concat!1732) (Not!765) (Plus!765) (SpaceValue!765 (value!25485 List!3894)) (IntegerValue!2297 (value!25486 Int) (text!5804 List!3894)) (StringLiteralValue!2296 (text!5805 List!3894)) (FloatLiteralValue!1531 (text!5806 List!3894)) (BytesLiteralValue!765 (value!25487 List!3894)) (CommentValue!1531 (value!25488 List!3894)) (StringLiteralValue!2297 (value!25489 List!3894)) (ErrorTokenValue!765 (msg!826 List!3894)) )
))
(declare-datatypes ((C!2856 0))(
  ( (C!2857 (val!1314 Int)) )
))
(declare-datatypes ((List!3895 0))(
  ( (Nil!3885) (Cons!3885 (h!9282 C!2856) (t!39201 List!3895)) )
))
(declare-datatypes ((IArray!2617 0))(
  ( (IArray!2618 (innerList!1366 List!3895)) )
))
(declare-datatypes ((Conc!1308 0))(
  ( (Node!1308 (left!3206 Conc!1308) (right!3536 Conc!1308) (csize!2846 Int) (cheight!1519 Int)) (Leaf!2019 (xs!3907 IArray!2617) (csize!2847 Int)) (Empty!1308) )
))
(declare-datatypes ((BalanceConc!2624 0))(
  ( (BalanceConc!2625 (c!52548 Conc!1308)) )
))
(declare-datatypes ((TokenValueInjection!1302 0))(
  ( (TokenValueInjection!1303 (toValue!1486 Int) (toChars!1345 Int)) )
))
(declare-datatypes ((String!4905 0))(
  ( (String!4906 (value!25490 String)) )
))
(declare-datatypes ((Regex!967 0))(
  ( (ElementMatch!967 (c!52549 C!2856)) (Concat!1733 (regOne!2446 Regex!967) (regTwo!2446 Regex!967)) (EmptyExpr!967) (Star!967 (reg!1296 Regex!967)) (EmptyLang!967) (Union!967 (regOne!2447 Regex!967) (regTwo!2447 Regex!967)) )
))
(declare-datatypes ((Rule!1286 0))(
  ( (Rule!1287 (regex!743 Regex!967) (tag!953 String!4905) (isSeparator!743 Bool) (transformation!743 TokenValueInjection!1302)) )
))
(declare-datatypes ((List!3896 0))(
  ( (Nil!3886) (Cons!3886 (h!9283 Rule!1286) (t!39202 List!3896)) )
))
(declare-fun rules!1920 () List!3896)

(get-info :version)

(assert (= (and b!278282 ((_ is Cons!3886) rules!1920)) b!278292))

(declare-fun order!3035 () Int)

(declare-fun order!3033 () Int)

(declare-fun dynLambda!2027 (Int Int) Int)

(declare-fun dynLambda!2028 (Int Int) Int)

(assert (=> b!278294 (< (dynLambda!2027 order!3033 (toValue!1486 (transformation!743 (h!9283 rules!1920)))) (dynLambda!2028 order!3035 lambda!9492))))

(declare-fun order!3037 () Int)

(declare-fun dynLambda!2029 (Int Int) Int)

(assert (=> b!278294 (< (dynLambda!2029 order!3037 (toChars!1345 (transformation!743 (h!9283 rules!1920)))) (dynLambda!2028 order!3035 lambda!9492))))

(assert (=> b!278282 true))

(declare-fun b!278236 () Bool)

(declare-fun e!173111 () Bool)

(declare-fun e!173099 () Bool)

(assert (=> b!278236 (= e!173111 e!173099)))

(declare-fun res!127197 () Bool)

(assert (=> b!278236 (=> (not res!127197) (not e!173099))))

(declare-fun lt!115989 () List!3895)

(declare-fun lt!115979 () List!3895)

(assert (=> b!278236 (= res!127197 (= lt!115989 lt!115979))))

(declare-datatypes ((Token!1230 0))(
  ( (Token!1231 (value!25491 TokenValue!765) (rule!1330 Rule!1286) (size!3102 Int) (originalCharacters!786 List!3895)) )
))
(declare-fun separatorToken!170 () Token!1230)

(declare-datatypes ((List!3897 0))(
  ( (Nil!3887) (Cons!3887 (h!9284 Token!1230) (t!39203 List!3897)) )
))
(declare-datatypes ((IArray!2619 0))(
  ( (IArray!2620 (innerList!1367 List!3897)) )
))
(declare-datatypes ((Conc!1309 0))(
  ( (Node!1309 (left!3207 Conc!1309) (right!3537 Conc!1309) (csize!2848 Int) (cheight!1520 Int)) (Leaf!2020 (xs!3908 IArray!2619) (csize!2849 Int)) (Empty!1309) )
))
(declare-datatypes ((BalanceConc!2626 0))(
  ( (BalanceConc!2627 (c!52550 Conc!1309)) )
))
(declare-fun lt!115971 () BalanceConc!2626)

(declare-datatypes ((LexerInterface!629 0))(
  ( (LexerInterfaceExt!626 (__x!3018 Int)) (Lexer!627) )
))
(declare-fun thiss!17480 () LexerInterface!629)

(declare-fun list!1604 (BalanceConc!2624) List!3895)

(declare-fun printWithSeparatorTokenWhenNeededRec!304 (LexerInterface!629 List!3896 BalanceConc!2626 Token!1230 Int) BalanceConc!2624)

(assert (=> b!278236 (= lt!115979 (list!1604 (printWithSeparatorTokenWhenNeededRec!304 thiss!17480 rules!1920 lt!115971 separatorToken!170 0)))))

(declare-fun tokens!465 () List!3897)

(declare-fun printWithSeparatorTokenWhenNeededList!312 (LexerInterface!629 List!3896 List!3897 Token!1230) List!3895)

(assert (=> b!278236 (= lt!115989 (printWithSeparatorTokenWhenNeededList!312 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!278237 () Bool)

(declare-fun res!127178 () Bool)

(assert (=> b!278237 (=> (not res!127178) (not e!173111))))

(assert (=> b!278237 (= res!127178 (isSeparator!743 (rule!1330 separatorToken!170)))))

(declare-fun b!278238 () Bool)

(declare-fun res!127203 () Bool)

(declare-fun e!173116 () Bool)

(assert (=> b!278238 (=> res!127203 e!173116)))

(declare-fun rulesProduceIndividualToken!378 (LexerInterface!629 List!3896 Token!1230) Bool)

(assert (=> b!278238 (= res!127203 (not (rulesProduceIndividualToken!378 thiss!17480 rules!1920 (h!9284 tokens!465))))))

(declare-fun lt!115960 () List!3895)

(declare-fun lt!115978 () List!3895)

(declare-fun e!173122 () Bool)

(declare-fun b!278239 () Bool)

(declare-fun ++!1028 (List!3895 List!3895) List!3895)

(assert (=> b!278239 (= e!173122 (not (= lt!115989 (++!1028 lt!115960 lt!115978))))))

(declare-fun e!173107 () Bool)

(assert (=> b!278240 (= e!173107 (and tp!104020 tp!104022))))

(declare-fun e!173093 () Bool)

(declare-fun b!278241 () Bool)

(declare-fun e!173091 () Bool)

(declare-fun tp!104019 () Bool)

(declare-fun inv!21 (TokenValue!765) Bool)

(assert (=> b!278241 (= e!173091 (and (inv!21 (value!25491 (h!9284 tokens!465))) e!173093 tp!104019))))

(declare-fun b!278242 () Bool)

(declare-datatypes ((Unit!5110 0))(
  ( (Unit!5111) )
))
(declare-fun e!173110 () Unit!5110)

(declare-fun Unit!5112 () Unit!5110)

(assert (=> b!278242 (= e!173110 Unit!5112)))

(declare-fun lt!115992 () Token!1230)

(declare-fun lt!116003 () Unit!5110)

(declare-fun lt!115993 () C!2856)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!66 (LexerInterface!629 List!3896 List!3896 Rule!1286 Rule!1286 C!2856) Unit!5110)

(assert (=> b!278242 (= lt!116003 (lemmaSepRuleNotContainsCharContainedInANonSepRule!66 thiss!17480 rules!1920 rules!1920 (rule!1330 lt!115992) (rule!1330 separatorToken!170) lt!115993))))

(assert (=> b!278242 false))

(declare-fun e!173103 () Bool)

(declare-fun b!278243 () Bool)

(declare-fun tp!104017 () Bool)

(declare-fun inv!4803 (String!4905) Bool)

(declare-fun inv!4806 (TokenValueInjection!1302) Bool)

(assert (=> b!278243 (= e!173103 (and tp!104017 (inv!4803 (tag!953 (rule!1330 separatorToken!170))) (inv!4806 (transformation!743 (rule!1330 separatorToken!170))) e!173107))))

(declare-fun res!127193 () Bool)

(declare-fun e!173096 () Bool)

(assert (=> start!30086 (=> (not res!127193) (not e!173096))))

(assert (=> start!30086 (= res!127193 ((_ is Lexer!627) thiss!17480))))

(assert (=> start!30086 e!173096))

(assert (=> start!30086 true))

(declare-fun e!173095 () Bool)

(assert (=> start!30086 e!173095))

(declare-fun e!173102 () Bool)

(declare-fun inv!4807 (Token!1230) Bool)

(assert (=> start!30086 (and (inv!4807 separatorToken!170) e!173102)))

(declare-fun e!173106 () Bool)

(assert (=> start!30086 e!173106))

(declare-fun b!278244 () Bool)

(declare-fun res!127191 () Bool)

(assert (=> b!278244 (=> (not res!127191) (not e!173096))))

(declare-fun isEmpty!2524 (List!3896) Bool)

(assert (=> b!278244 (= res!127191 (not (isEmpty!2524 rules!1920)))))

(declare-fun tp!104024 () Bool)

(declare-fun b!278245 () Bool)

(assert (=> b!278245 (= e!173102 (and (inv!21 (value!25491 separatorToken!170)) e!173103 tp!104024))))

(declare-fun b!278246 () Bool)

(declare-fun e!173126 () Unit!5110)

(declare-fun Unit!5113 () Unit!5110)

(assert (=> b!278246 (= e!173126 Unit!5113)))

(declare-fun lt!115957 () C!2856)

(declare-fun lt!115963 () Unit!5110)

(declare-fun lt!115965 () List!3895)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!72 (Regex!967 List!3895 C!2856) Unit!5110)

(assert (=> b!278246 (= lt!115963 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!72 (regex!743 (rule!1330 lt!115992)) lt!115965 lt!115957))))

(declare-fun res!127204 () Bool)

(declare-fun matchR!289 (Regex!967 List!3895) Bool)

(assert (=> b!278246 (= res!127204 (not (matchR!289 (regex!743 (rule!1330 lt!115992)) lt!115965)))))

(declare-fun e!173112 () Bool)

(assert (=> b!278246 (=> (not res!127204) (not e!173112))))

(assert (=> b!278246 e!173112))

(declare-fun b!278247 () Bool)

(declare-fun e!173124 () Bool)

(declare-fun e!173119 () Bool)

(assert (=> b!278247 (= e!173124 e!173119)))

(declare-fun res!127180 () Bool)

(assert (=> b!278247 (=> res!127180 e!173119)))

(declare-fun lt!115964 () Bool)

(assert (=> b!278247 (= res!127180 (not lt!115964))))

(declare-fun e!173113 () Bool)

(assert (=> b!278247 e!173113))

(declare-fun res!127182 () Bool)

(assert (=> b!278247 (=> (not res!127182) (not e!173113))))

(declare-datatypes ((tuple2!4394 0))(
  ( (tuple2!4395 (_1!2413 Token!1230) (_2!2413 List!3895)) )
))
(declare-fun lt!115958 () tuple2!4394)

(assert (=> b!278247 (= res!127182 (= (_1!2413 lt!115958) (h!9284 tokens!465)))))

(declare-datatypes ((Option!843 0))(
  ( (None!842) (Some!842 (v!14743 tuple2!4394)) )
))
(declare-fun lt!115998 () Option!843)

(declare-fun get!1302 (Option!843) tuple2!4394)

(assert (=> b!278247 (= lt!115958 (get!1302 lt!115998))))

(declare-fun isDefined!686 (Option!843) Bool)

(assert (=> b!278247 (isDefined!686 lt!115998)))

(declare-fun maxPrefix!347 (LexerInterface!629 List!3896 List!3895) Option!843)

(assert (=> b!278247 (= lt!115998 (maxPrefix!347 thiss!17480 rules!1920 lt!115960))))

(declare-fun b!278248 () Bool)

(declare-fun e!173094 () Bool)

(declare-fun e!173105 () Bool)

(assert (=> b!278248 (= e!173094 e!173105)))

(declare-fun res!127200 () Bool)

(assert (=> b!278248 (=> res!127200 e!173105)))

(assert (=> b!278248 (= res!127200 e!173122)))

(declare-fun res!127198 () Bool)

(assert (=> b!278248 (=> (not res!127198) (not e!173122))))

(assert (=> b!278248 (= res!127198 (not lt!115964))))

(declare-fun lt!115996 () List!3895)

(assert (=> b!278248 (= lt!115964 (= lt!115989 lt!115996))))

(declare-fun b!278249 () Bool)

(declare-fun res!127188 () Bool)

(declare-fun e!173120 () Bool)

(assert (=> b!278249 (=> (not res!127188) (not e!173120))))

(declare-datatypes ((tuple2!4396 0))(
  ( (tuple2!4397 (_1!2414 BalanceConc!2626) (_2!2414 BalanceConc!2624)) )
))
(declare-fun lt!115983 () tuple2!4396)

(declare-fun apply!806 (BalanceConc!2626 Int) Token!1230)

(assert (=> b!278249 (= res!127188 (= (apply!806 (_1!2414 lt!115983) 0) lt!115992))))

(declare-fun b!278250 () Bool)

(declare-fun isEmpty!2525 (BalanceConc!2624) Bool)

(assert (=> b!278250 (= e!173120 (isEmpty!2525 (_2!2414 lt!115983)))))

(declare-fun b!278251 () Bool)

(declare-fun e!173125 () Bool)

(declare-fun lt!115997 () Rule!1286)

(assert (=> b!278251 (= e!173125 (= (rule!1330 lt!115992) lt!115997))))

(declare-fun b!278252 () Bool)

(declare-fun res!127183 () Bool)

(assert (=> b!278252 (=> (not res!127183) (not e!173096))))

(declare-fun rulesInvariant!595 (LexerInterface!629 List!3896) Bool)

(assert (=> b!278252 (= res!127183 (rulesInvariant!595 thiss!17480 rules!1920))))

(declare-fun b!278253 () Bool)

(assert (=> b!278253 (= e!173096 e!173111)))

(declare-fun res!127202 () Bool)

(assert (=> b!278253 (=> (not res!127202) (not e!173111))))

(declare-fun rulesProduceEachTokenIndividually!421 (LexerInterface!629 List!3896 BalanceConc!2626) Bool)

(assert (=> b!278253 (= res!127202 (rulesProduceEachTokenIndividually!421 thiss!17480 rules!1920 lt!115971))))

(declare-fun seqFromList!853 (List!3897) BalanceConc!2626)

(assert (=> b!278253 (= lt!115971 (seqFromList!853 tokens!465))))

(declare-fun b!278254 () Bool)

(declare-fun e!173104 () Bool)

(declare-fun e!173109 () Bool)

(assert (=> b!278254 (= e!173104 e!173109)))

(declare-fun res!127199 () Bool)

(assert (=> b!278254 (=> (not res!127199) (not e!173109))))

(declare-fun lt!115987 () Rule!1286)

(declare-fun lt!116001 () List!3895)

(assert (=> b!278254 (= res!127199 (matchR!289 (regex!743 lt!115987) lt!116001))))

(declare-datatypes ((Option!844 0))(
  ( (None!843) (Some!843 (v!14744 Rule!1286)) )
))
(declare-fun lt!115976 () Option!844)

(declare-fun get!1303 (Option!844) Rule!1286)

(assert (=> b!278254 (= lt!115987 (get!1303 lt!115976))))

(declare-fun b!278255 () Bool)

(assert (=> b!278255 (= e!173113 (matchR!289 (regex!743 (rule!1330 (h!9284 tokens!465))) lt!115960))))

(declare-fun b!278256 () Bool)

(declare-fun res!127205 () Bool)

(assert (=> b!278256 (=> res!127205 e!173116)))

(declare-fun isEmpty!2526 (BalanceConc!2626) Bool)

(declare-fun lex!421 (LexerInterface!629 List!3896 BalanceConc!2624) tuple2!4396)

(declare-fun seqFromList!854 (List!3895) BalanceConc!2624)

(assert (=> b!278256 (= res!127205 (isEmpty!2526 (_1!2414 (lex!421 thiss!17480 rules!1920 (seqFromList!854 lt!115960)))))))

(declare-fun b!278257 () Bool)

(declare-fun e!173117 () Unit!5110)

(declare-fun Unit!5114 () Unit!5110)

(assert (=> b!278257 (= e!173117 Unit!5114)))

(assert (=> b!278257 false))

(declare-fun e!173121 () Bool)

(assert (=> b!278258 (= e!173121 (and tp!104023 tp!104018))))

(declare-fun b!278259 () Bool)

(declare-fun res!127206 () Bool)

(declare-fun e!173098 () Bool)

(assert (=> b!278259 (=> (not res!127206) (not e!173098))))

(declare-fun lt!115955 () tuple2!4396)

(assert (=> b!278259 (= res!127206 (= (apply!806 (_1!2414 lt!115955) 0) separatorToken!170))))

(declare-fun b!278260 () Bool)

(declare-fun res!127190 () Bool)

(assert (=> b!278260 (=> (not res!127190) (not e!173111))))

(declare-fun sepAndNonSepRulesDisjointChars!332 (List!3896 List!3896) Bool)

(assert (=> b!278260 (= res!127190 (sepAndNonSepRulesDisjointChars!332 rules!1920 rules!1920))))

(declare-fun e!173092 () Bool)

(assert (=> b!278261 (= e!173092 (and tp!104021 tp!104016))))

(declare-fun b!278262 () Bool)

(assert (=> b!278262 (= e!173112 false)))

(declare-fun b!278263 () Bool)

(declare-fun res!127184 () Bool)

(assert (=> b!278263 (=> (not res!127184) (not e!173111))))

(assert (=> b!278263 (= res!127184 (rulesProduceIndividualToken!378 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!278264 () Bool)

(assert (=> b!278264 (= e!173099 (not e!173094))))

(declare-fun res!127201 () Bool)

(assert (=> b!278264 (=> res!127201 e!173094)))

(declare-fun lt!115956 () BalanceConc!2624)

(assert (=> b!278264 (= res!127201 (not (= lt!115978 (list!1604 lt!115956))))))

(assert (=> b!278264 (= lt!115956 (printWithSeparatorTokenWhenNeededRec!304 thiss!17480 rules!1920 (seqFromList!853 (t!39203 tokens!465)) separatorToken!170 0))))

(declare-fun lt!115959 () List!3895)

(assert (=> b!278264 (= lt!115959 lt!115996)))

(declare-fun lt!116004 () List!3895)

(assert (=> b!278264 (= lt!115996 (++!1028 lt!115960 lt!116004))))

(assert (=> b!278264 (= lt!115959 (++!1028 (++!1028 lt!115960 lt!116001) lt!115978))))

(declare-fun lt!116000 () Unit!5110)

(declare-fun lemmaConcatAssociativity!444 (List!3895 List!3895 List!3895) Unit!5110)

(assert (=> b!278264 (= lt!116000 (lemmaConcatAssociativity!444 lt!115960 lt!116001 lt!115978))))

(declare-fun charsOf!388 (Token!1230) BalanceConc!2624)

(assert (=> b!278264 (= lt!115960 (list!1604 (charsOf!388 (h!9284 tokens!465))))))

(assert (=> b!278264 (= lt!116004 (++!1028 lt!116001 lt!115978))))

(assert (=> b!278264 (= lt!115978 (printWithSeparatorTokenWhenNeededList!312 thiss!17480 rules!1920 (t!39203 tokens!465) separatorToken!170))))

(assert (=> b!278264 (= lt!116001 (list!1604 (charsOf!388 separatorToken!170)))))

(declare-fun b!278265 () Bool)

(declare-fun e!173108 () Bool)

(declare-fun tp!104014 () Bool)

(assert (=> b!278265 (= e!173095 (and e!173108 tp!104014))))

(declare-fun tp!104013 () Bool)

(declare-fun b!278266 () Bool)

(assert (=> b!278266 (= e!173093 (and tp!104013 (inv!4803 (tag!953 (rule!1330 (h!9284 tokens!465)))) (inv!4806 (transformation!743 (rule!1330 (h!9284 tokens!465)))) e!173121))))

(declare-fun b!278267 () Bool)

(declare-fun res!127177 () Bool)

(assert (=> b!278267 (=> (not res!127177) (not e!173113))))

(declare-fun isEmpty!2527 (List!3895) Bool)

(assert (=> b!278267 (= res!127177 (isEmpty!2527 (_2!2413 lt!115958)))))

(declare-fun b!278268 () Bool)

(declare-fun e!173123 () Bool)

(declare-fun lt!115969 () Option!843)

(declare-fun head!913 (List!3897) Token!1230)

(assert (=> b!278268 (= e!173123 (= (_1!2413 (get!1302 lt!115969)) (head!913 tokens!465)))))

(declare-fun b!278269 () Bool)

(assert (=> b!278269 (= e!173098 (isEmpty!2525 (_2!2414 lt!115955)))))

(declare-fun res!127186 () Bool)

(assert (=> b!278270 (=> (not res!127186) (not e!173111))))

(declare-fun forall!990 (List!3897 Int) Bool)

(assert (=> b!278270 (= res!127186 (forall!990 tokens!465 lambda!9491))))

(declare-fun b!278271 () Bool)

(declare-fun Unit!5115 () Unit!5110)

(assert (=> b!278271 (= e!173126 Unit!5115)))

(declare-fun b!278272 () Bool)

(assert (=> b!278272 (= e!173109 (= (rule!1330 separatorToken!170) lt!115987))))

(declare-fun b!278273 () Bool)

(declare-fun Unit!5116 () Unit!5110)

(assert (=> b!278273 (= e!173110 Unit!5116)))

(declare-fun b!278274 () Bool)

(declare-fun tp!104025 () Bool)

(assert (=> b!278274 (= e!173108 (and tp!104025 (inv!4803 (tag!953 (h!9283 rules!1920))) (inv!4806 (transformation!743 (h!9283 rules!1920))) e!173092))))

(declare-fun b!278275 () Bool)

(declare-fun e!173097 () Bool)

(assert (=> b!278275 (= e!173097 e!173123)))

(declare-fun res!127208 () Bool)

(assert (=> b!278275 (=> (not res!127208) (not e!173123))))

(assert (=> b!278275 (= res!127208 (isDefined!686 lt!115969))))

(assert (=> b!278275 (= lt!115969 (maxPrefix!347 thiss!17480 rules!1920 lt!115989))))

(declare-fun b!278276 () Bool)

(assert (=> b!278276 (= e!173105 e!173116)))

(declare-fun res!127189 () Bool)

(assert (=> b!278276 (=> res!127189 e!173116)))

(declare-fun lt!115961 () List!3895)

(declare-fun lt!115995 () List!3895)

(assert (=> b!278276 (= res!127189 (or (not (= lt!115995 lt!115961)) (not (= lt!115961 lt!115960)) (not (= lt!115995 lt!115960))))))

(declare-fun printList!305 (LexerInterface!629 List!3897) List!3895)

(assert (=> b!278276 (= lt!115961 (printList!305 thiss!17480 (Cons!3887 (h!9284 tokens!465) Nil!3887)))))

(declare-fun lt!115981 () BalanceConc!2624)

(assert (=> b!278276 (= lt!115995 (list!1604 lt!115981))))

(declare-fun lt!115972 () BalanceConc!2626)

(declare-fun printTailRec!317 (LexerInterface!629 BalanceConc!2626 Int BalanceConc!2624) BalanceConc!2624)

(assert (=> b!278276 (= lt!115981 (printTailRec!317 thiss!17480 lt!115972 0 (BalanceConc!2625 Empty!1308)))))

(declare-fun print!354 (LexerInterface!629 BalanceConc!2626) BalanceConc!2624)

(assert (=> b!278276 (= lt!115981 (print!354 thiss!17480 lt!115972))))

(declare-fun singletonSeq!289 (Token!1230) BalanceConc!2626)

(assert (=> b!278276 (= lt!115972 (singletonSeq!289 (h!9284 tokens!465)))))

(declare-fun b!278277 () Bool)

(declare-fun e!173100 () Bool)

(assert (=> b!278277 (= e!173100 e!173125)))

(declare-fun res!127194 () Bool)

(assert (=> b!278277 (=> (not res!127194) (not e!173125))))

(assert (=> b!278277 (= res!127194 (matchR!289 (regex!743 lt!115997) lt!115965))))

(declare-fun lt!115966 () Option!844)

(assert (=> b!278277 (= lt!115997 (get!1303 lt!115966))))

(declare-fun b!278278 () Bool)

(declare-fun res!127195 () Bool)

(assert (=> b!278278 (=> (not res!127195) (not e!173099))))

(assert (=> b!278278 (= res!127195 (= (list!1604 (seqFromList!854 lt!115989)) lt!115979))))

(declare-fun lt!115994 () List!3897)

(declare-fun b!278279 () Bool)

(declare-fun filter!85 (List!3897 Int) List!3897)

(assert (=> b!278279 (= e!173119 (= (filter!85 lt!115994 lambda!9491) (t!39203 tokens!465)))))

(assert (=> b!278279 (= (filter!85 lt!115994 lambda!9491) (t!39203 tokens!465))))

(declare-fun list!1605 (BalanceConc!2626) List!3897)

(assert (=> b!278279 (= lt!115994 (list!1605 (_1!2414 (lex!421 thiss!17480 rules!1920 lt!115956))))))

(declare-fun lt!115970 () Unit!5110)

(declare-fun theoremInvertabilityFromTokensSepTokenWhenNeeded!76 (LexerInterface!629 List!3896 List!3897 Token!1230) Unit!5110)

(assert (=> b!278279 (= lt!115970 (theoremInvertabilityFromTokensSepTokenWhenNeeded!76 thiss!17480 rules!1920 (t!39203 tokens!465) separatorToken!170))))

(declare-fun lt!115973 () Option!843)

(assert (=> b!278279 (= lt!115973 (Some!842 (tuple2!4395 separatorToken!170 lt!115978)))))

(declare-fun lt!116002 () Unit!5110)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!62 (LexerInterface!629 List!3896 Token!1230 Rule!1286 List!3895 Rule!1286) Unit!5110)

(assert (=> b!278279 (= lt!116002 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!62 thiss!17480 rules!1920 separatorToken!170 (rule!1330 separatorToken!170) lt!115978 (rule!1330 lt!115992)))))

(declare-fun lt!115986 () Unit!5110)

(assert (=> b!278279 (= lt!115986 e!173110)))

(declare-fun c!52546 () Bool)

(declare-fun contains!747 (List!3895 C!2856) Bool)

(declare-fun usedCharacters!80 (Regex!967) List!3895)

(assert (=> b!278279 (= c!52546 (contains!747 (usedCharacters!80 (regex!743 (rule!1330 separatorToken!170))) lt!115993))))

(declare-fun head!914 (List!3895) C!2856)

(assert (=> b!278279 (= lt!115993 (head!914 lt!115978))))

(declare-fun lt!115982 () Unit!5110)

(assert (=> b!278279 (= lt!115982 e!173126)))

(declare-fun c!52545 () Bool)

(assert (=> b!278279 (= c!52545 (not (contains!747 (usedCharacters!80 (regex!743 (rule!1330 lt!115992))) lt!115957)))))

(assert (=> b!278279 (= lt!115957 (head!914 lt!115965))))

(assert (=> b!278279 e!173100))

(declare-fun res!127181 () Bool)

(assert (=> b!278279 (=> (not res!127181) (not e!173100))))

(declare-fun isDefined!687 (Option!844) Bool)

(assert (=> b!278279 (= res!127181 (isDefined!687 lt!115966))))

(declare-fun getRuleFromTag!130 (LexerInterface!629 List!3896 String!4905) Option!844)

(assert (=> b!278279 (= lt!115966 (getRuleFromTag!130 thiss!17480 rules!1920 (tag!953 (rule!1330 lt!115992))))))

(declare-fun lt!115991 () Unit!5110)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!130 (LexerInterface!629 List!3896 List!3895 Token!1230) Unit!5110)

(assert (=> b!278279 (= lt!115991 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!130 thiss!17480 rules!1920 lt!115965 lt!115992))))

(assert (=> b!278279 (= lt!115965 (list!1604 (charsOf!388 lt!115992)))))

(declare-fun lt!115984 () Unit!5110)

(declare-fun forallContained!298 (List!3897 Int Token!1230) Unit!5110)

(assert (=> b!278279 (= lt!115984 (forallContained!298 tokens!465 lambda!9492 lt!115992))))

(assert (=> b!278279 e!173120))

(declare-fun res!127192 () Bool)

(assert (=> b!278279 (=> (not res!127192) (not e!173120))))

(declare-fun size!3103 (BalanceConc!2626) Int)

(assert (=> b!278279 (= res!127192 (= (size!3103 (_1!2414 lt!115983)) 1))))

(declare-fun lt!115988 () BalanceConc!2624)

(assert (=> b!278279 (= lt!115983 (lex!421 thiss!17480 rules!1920 lt!115988))))

(declare-fun lt!115999 () BalanceConc!2626)

(assert (=> b!278279 (= lt!115988 (printTailRec!317 thiss!17480 lt!115999 0 (BalanceConc!2625 Empty!1308)))))

(assert (=> b!278279 (= lt!115988 (print!354 thiss!17480 lt!115999))))

(assert (=> b!278279 (= lt!115999 (singletonSeq!289 lt!115992))))

(assert (=> b!278279 e!173104))

(declare-fun res!127196 () Bool)

(assert (=> b!278279 (=> (not res!127196) (not e!173104))))

(assert (=> b!278279 (= res!127196 (isDefined!687 lt!115976))))

(assert (=> b!278279 (= lt!115976 (getRuleFromTag!130 thiss!17480 rules!1920 (tag!953 (rule!1330 separatorToken!170))))))

(declare-fun lt!115954 () Unit!5110)

(assert (=> b!278279 (= lt!115954 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!130 thiss!17480 rules!1920 lt!116001 separatorToken!170))))

(assert (=> b!278279 e!173098))

(declare-fun res!127207 () Bool)

(assert (=> b!278279 (=> (not res!127207) (not e!173098))))

(assert (=> b!278279 (= res!127207 (= (size!3103 (_1!2414 lt!115955)) 1))))

(declare-fun lt!115974 () BalanceConc!2624)

(assert (=> b!278279 (= lt!115955 (lex!421 thiss!17480 rules!1920 lt!115974))))

(declare-fun lt!115985 () BalanceConc!2626)

(assert (=> b!278279 (= lt!115974 (printTailRec!317 thiss!17480 lt!115985 0 (BalanceConc!2625 Empty!1308)))))

(assert (=> b!278279 (= lt!115974 (print!354 thiss!17480 lt!115985))))

(assert (=> b!278279 (= lt!115985 (singletonSeq!289 separatorToken!170))))

(assert (=> b!278279 (rulesProduceIndividualToken!378 thiss!17480 rules!1920 lt!115992)))

(declare-fun lt!115990 () Unit!5110)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!126 (LexerInterface!629 List!3896 List!3897 Token!1230) Unit!5110)

(assert (=> b!278279 (= lt!115990 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!126 thiss!17480 rules!1920 tokens!465 lt!115992))))

(assert (=> b!278279 (= lt!115992 (head!913 (t!39203 tokens!465)))))

(declare-fun lt!115980 () Unit!5110)

(assert (=> b!278279 (= lt!115980 e!173117)))

(declare-fun c!52547 () Bool)

(declare-fun isEmpty!2528 (List!3897) Bool)

(assert (=> b!278279 (= c!52547 (isEmpty!2528 (t!39203 tokens!465)))))

(assert (=> b!278279 (= lt!115973 (maxPrefix!347 thiss!17480 rules!1920 lt!116004))))

(declare-fun lt!115975 () tuple2!4394)

(assert (=> b!278279 (= lt!116004 (_2!2413 lt!115975))))

(declare-fun lt!115977 () Unit!5110)

(declare-fun lemmaSamePrefixThenSameSuffix!212 (List!3895 List!3895 List!3895 List!3895 List!3895) Unit!5110)

(assert (=> b!278279 (= lt!115977 (lemmaSamePrefixThenSameSuffix!212 lt!115960 lt!116004 lt!115960 (_2!2413 lt!115975) lt!115989))))

(assert (=> b!278279 (= lt!115975 (get!1302 (maxPrefix!347 thiss!17480 rules!1920 lt!115989)))))

(declare-fun isPrefix!411 (List!3895 List!3895) Bool)

(assert (=> b!278279 (isPrefix!411 lt!115960 lt!115996)))

(declare-fun lt!115967 () Unit!5110)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!306 (List!3895 List!3895) Unit!5110)

(assert (=> b!278279 (= lt!115967 (lemmaConcatTwoListThenFirstIsPrefix!306 lt!115960 lt!116004))))

(assert (=> b!278279 e!173097))

(declare-fun res!127179 () Bool)

(assert (=> b!278279 (=> res!127179 e!173097)))

(assert (=> b!278279 (= res!127179 (isEmpty!2528 tokens!465))))

(declare-fun lt!115968 () Unit!5110)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!168 (LexerInterface!629 List!3896 List!3897 Token!1230) Unit!5110)

(assert (=> b!278279 (= lt!115968 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!168 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!278280 () Bool)

(declare-fun Unit!5117 () Unit!5110)

(assert (=> b!278280 (= e!173117 Unit!5117)))

(declare-fun tp!104015 () Bool)

(declare-fun b!278281 () Bool)

(assert (=> b!278281 (= e!173106 (and (inv!4807 (h!9284 tokens!465)) e!173091 tp!104015))))

(assert (=> b!278282 (= e!173116 e!173124)))

(declare-fun res!127185 () Bool)

(assert (=> b!278282 (=> res!127185 e!173124)))

(declare-datatypes ((tuple2!4398 0))(
  ( (tuple2!4399 (_1!2415 Token!1230) (_2!2415 BalanceConc!2624)) )
))
(declare-datatypes ((Option!845 0))(
  ( (None!844) (Some!844 (v!14745 tuple2!4398)) )
))
(declare-fun isDefined!688 (Option!845) Bool)

(declare-fun maxPrefixZipperSequence!310 (LexerInterface!629 List!3896 BalanceConc!2624) Option!845)

(assert (=> b!278282 (= res!127185 (not (isDefined!688 (maxPrefixZipperSequence!310 thiss!17480 rules!1920 (seqFromList!854 (originalCharacters!786 (h!9284 tokens!465)))))))))

(declare-fun lt!115962 () Unit!5110)

(assert (=> b!278282 (= lt!115962 (forallContained!298 tokens!465 lambda!9492 (h!9284 tokens!465)))))

(assert (=> b!278282 (= lt!115960 (originalCharacters!786 (h!9284 tokens!465)))))

(declare-fun b!278283 () Bool)

(declare-fun res!127187 () Bool)

(assert (=> b!278283 (=> (not res!127187) (not e!173111))))

(assert (=> b!278283 (= res!127187 ((_ is Cons!3887) tokens!465))))

(assert (= (and start!30086 res!127193) b!278244))

(assert (= (and b!278244 res!127191) b!278252))

(assert (= (and b!278252 res!127183) b!278253))

(assert (= (and b!278253 res!127202) b!278263))

(assert (= (and b!278263 res!127184) b!278237))

(assert (= (and b!278237 res!127178) b!278270))

(assert (= (and b!278270 res!127186) b!278260))

(assert (= (and b!278260 res!127190) b!278283))

(assert (= (and b!278283 res!127187) b!278236))

(assert (= (and b!278236 res!127197) b!278278))

(assert (= (and b!278278 res!127195) b!278264))

(assert (= (and b!278264 (not res!127201)) b!278248))

(assert (= (and b!278248 res!127198) b!278239))

(assert (= (and b!278248 (not res!127200)) b!278276))

(assert (= (and b!278276 (not res!127189)) b!278238))

(assert (= (and b!278238 (not res!127203)) b!278256))

(assert (= (and b!278256 (not res!127205)) b!278282))

(assert (= (and b!278282 (not res!127185)) b!278247))

(assert (= (and b!278247 res!127182) b!278267))

(assert (= (and b!278267 res!127177) b!278255))

(assert (= (and b!278247 (not res!127180)) b!278279))

(assert (= (and b!278279 (not res!127179)) b!278275))

(assert (= (and b!278275 res!127208) b!278268))

(assert (= (and b!278279 c!52547) b!278257))

(assert (= (and b!278279 (not c!52547)) b!278280))

(assert (= (and b!278279 res!127207) b!278259))

(assert (= (and b!278259 res!127206) b!278269))

(assert (= (and b!278279 res!127196) b!278254))

(assert (= (and b!278254 res!127199) b!278272))

(assert (= (and b!278279 res!127192) b!278249))

(assert (= (and b!278249 res!127188) b!278250))

(assert (= (and b!278279 res!127181) b!278277))

(assert (= (and b!278277 res!127194) b!278251))

(assert (= (and b!278279 c!52545) b!278246))

(assert (= (and b!278279 (not c!52545)) b!278271))

(assert (= (and b!278246 res!127204) b!278262))

(assert (= (and b!278279 c!52546) b!278242))

(assert (= (and b!278279 (not c!52546)) b!278273))

(assert (= b!278274 b!278261))

(assert (= b!278265 b!278274))

(assert (= (and start!30086 ((_ is Cons!3886) rules!1920)) b!278265))

(assert (= b!278243 b!278240))

(assert (= b!278245 b!278243))

(assert (= start!30086 b!278245))

(assert (= b!278266 b!278258))

(assert (= b!278241 b!278266))

(assert (= b!278281 b!278241))

(assert (= (and start!30086 ((_ is Cons!3887) tokens!465)) b!278281))

(declare-fun m!355271 () Bool)

(assert (=> b!278268 m!355271))

(declare-fun m!355273 () Bool)

(assert (=> b!278268 m!355273))

(declare-fun m!355275 () Bool)

(assert (=> b!278278 m!355275))

(assert (=> b!278278 m!355275))

(declare-fun m!355277 () Bool)

(assert (=> b!278278 m!355277))

(declare-fun m!355279 () Bool)

(assert (=> b!278236 m!355279))

(assert (=> b!278236 m!355279))

(declare-fun m!355281 () Bool)

(assert (=> b!278236 m!355281))

(declare-fun m!355283 () Bool)

(assert (=> b!278236 m!355283))

(declare-fun m!355285 () Bool)

(assert (=> b!278255 m!355285))

(declare-fun m!355287 () Bool)

(assert (=> start!30086 m!355287))

(declare-fun m!355289 () Bool)

(assert (=> b!278241 m!355289))

(declare-fun m!355291 () Bool)

(assert (=> b!278256 m!355291))

(assert (=> b!278256 m!355291))

(declare-fun m!355293 () Bool)

(assert (=> b!278256 m!355293))

(declare-fun m!355295 () Bool)

(assert (=> b!278256 m!355295))

(declare-fun m!355297 () Bool)

(assert (=> b!278243 m!355297))

(declare-fun m!355299 () Bool)

(assert (=> b!278243 m!355299))

(declare-fun m!355301 () Bool)

(assert (=> b!278259 m!355301))

(declare-fun m!355303 () Bool)

(assert (=> b!278275 m!355303))

(declare-fun m!355305 () Bool)

(assert (=> b!278275 m!355305))

(declare-fun m!355307 () Bool)

(assert (=> b!278260 m!355307))

(declare-fun m!355309 () Bool)

(assert (=> b!278242 m!355309))

(declare-fun m!355311 () Bool)

(assert (=> b!278270 m!355311))

(declare-fun m!355313 () Bool)

(assert (=> b!278269 m!355313))

(declare-fun m!355315 () Bool)

(assert (=> b!278245 m!355315))

(declare-fun m!355317 () Bool)

(assert (=> b!278252 m!355317))

(declare-fun m!355319 () Bool)

(assert (=> b!278238 m!355319))

(declare-fun m!355321 () Bool)

(assert (=> b!278266 m!355321))

(declare-fun m!355323 () Bool)

(assert (=> b!278266 m!355323))

(declare-fun m!355325 () Bool)

(assert (=> b!278274 m!355325))

(declare-fun m!355327 () Bool)

(assert (=> b!278274 m!355327))

(declare-fun m!355329 () Bool)

(assert (=> b!278244 m!355329))

(declare-fun m!355331 () Bool)

(assert (=> b!278250 m!355331))

(declare-fun m!355333 () Bool)

(assert (=> b!278276 m!355333))

(declare-fun m!355335 () Bool)

(assert (=> b!278276 m!355335))

(declare-fun m!355337 () Bool)

(assert (=> b!278276 m!355337))

(declare-fun m!355339 () Bool)

(assert (=> b!278276 m!355339))

(declare-fun m!355341 () Bool)

(assert (=> b!278276 m!355341))

(declare-fun m!355343 () Bool)

(assert (=> b!278249 m!355343))

(declare-fun m!355345 () Bool)

(assert (=> b!278254 m!355345))

(declare-fun m!355347 () Bool)

(assert (=> b!278254 m!355347))

(declare-fun m!355349 () Bool)

(assert (=> b!278267 m!355349))

(declare-fun m!355351 () Bool)

(assert (=> b!278247 m!355351))

(declare-fun m!355353 () Bool)

(assert (=> b!278247 m!355353))

(declare-fun m!355355 () Bool)

(assert (=> b!278247 m!355355))

(declare-fun m!355357 () Bool)

(assert (=> b!278246 m!355357))

(declare-fun m!355359 () Bool)

(assert (=> b!278246 m!355359))

(declare-fun m!355361 () Bool)

(assert (=> b!278279 m!355361))

(assert (=> b!278279 m!355305))

(declare-fun m!355363 () Bool)

(assert (=> b!278279 m!355363))

(declare-fun m!355365 () Bool)

(assert (=> b!278279 m!355365))

(declare-fun m!355367 () Bool)

(assert (=> b!278279 m!355367))

(declare-fun m!355369 () Bool)

(assert (=> b!278279 m!355369))

(declare-fun m!355371 () Bool)

(assert (=> b!278279 m!355371))

(declare-fun m!355373 () Bool)

(assert (=> b!278279 m!355373))

(declare-fun m!355375 () Bool)

(assert (=> b!278279 m!355375))

(declare-fun m!355377 () Bool)

(assert (=> b!278279 m!355377))

(declare-fun m!355379 () Bool)

(assert (=> b!278279 m!355379))

(declare-fun m!355381 () Bool)

(assert (=> b!278279 m!355381))

(declare-fun m!355383 () Bool)

(assert (=> b!278279 m!355383))

(declare-fun m!355385 () Bool)

(assert (=> b!278279 m!355385))

(declare-fun m!355387 () Bool)

(assert (=> b!278279 m!355387))

(declare-fun m!355389 () Bool)

(assert (=> b!278279 m!355389))

(declare-fun m!355391 () Bool)

(assert (=> b!278279 m!355391))

(declare-fun m!355393 () Bool)

(assert (=> b!278279 m!355393))

(declare-fun m!355395 () Bool)

(assert (=> b!278279 m!355395))

(declare-fun m!355397 () Bool)

(assert (=> b!278279 m!355397))

(declare-fun m!355399 () Bool)

(assert (=> b!278279 m!355399))

(declare-fun m!355401 () Bool)

(assert (=> b!278279 m!355401))

(declare-fun m!355403 () Bool)

(assert (=> b!278279 m!355403))

(declare-fun m!355405 () Bool)

(assert (=> b!278279 m!355405))

(declare-fun m!355407 () Bool)

(assert (=> b!278279 m!355407))

(declare-fun m!355409 () Bool)

(assert (=> b!278279 m!355409))

(declare-fun m!355411 () Bool)

(assert (=> b!278279 m!355411))

(declare-fun m!355413 () Bool)

(assert (=> b!278279 m!355413))

(declare-fun m!355415 () Bool)

(assert (=> b!278279 m!355415))

(declare-fun m!355417 () Bool)

(assert (=> b!278279 m!355417))

(declare-fun m!355419 () Bool)

(assert (=> b!278279 m!355419))

(assert (=> b!278279 m!355393))

(declare-fun m!355421 () Bool)

(assert (=> b!278279 m!355421))

(declare-fun m!355423 () Bool)

(assert (=> b!278279 m!355423))

(declare-fun m!355425 () Bool)

(assert (=> b!278279 m!355425))

(declare-fun m!355427 () Bool)

(assert (=> b!278279 m!355427))

(assert (=> b!278279 m!355361))

(declare-fun m!355429 () Bool)

(assert (=> b!278279 m!355429))

(declare-fun m!355431 () Bool)

(assert (=> b!278279 m!355431))

(declare-fun m!355433 () Bool)

(assert (=> b!278279 m!355433))

(declare-fun m!355435 () Bool)

(assert (=> b!278279 m!355435))

(assert (=> b!278279 m!355375))

(declare-fun m!355437 () Bool)

(assert (=> b!278279 m!355437))

(declare-fun m!355439 () Bool)

(assert (=> b!278279 m!355439))

(assert (=> b!278279 m!355305))

(declare-fun m!355441 () Bool)

(assert (=> b!278279 m!355441))

(assert (=> b!278279 m!355405))

(declare-fun m!355443 () Bool)

(assert (=> b!278263 m!355443))

(declare-fun m!355445 () Bool)

(assert (=> b!278277 m!355445))

(declare-fun m!355447 () Bool)

(assert (=> b!278277 m!355447))

(declare-fun m!355449 () Bool)

(assert (=> b!278253 m!355449))

(declare-fun m!355451 () Bool)

(assert (=> b!278253 m!355451))

(declare-fun m!355453 () Bool)

(assert (=> b!278282 m!355453))

(assert (=> b!278282 m!355453))

(declare-fun m!355455 () Bool)

(assert (=> b!278282 m!355455))

(assert (=> b!278282 m!355455))

(declare-fun m!355457 () Bool)

(assert (=> b!278282 m!355457))

(declare-fun m!355459 () Bool)

(assert (=> b!278282 m!355459))

(declare-fun m!355461 () Bool)

(assert (=> b!278281 m!355461))

(declare-fun m!355463 () Bool)

(assert (=> b!278264 m!355463))

(declare-fun m!355465 () Bool)

(assert (=> b!278264 m!355465))

(declare-fun m!355467 () Bool)

(assert (=> b!278264 m!355467))

(declare-fun m!355469 () Bool)

(assert (=> b!278264 m!355469))

(declare-fun m!355471 () Bool)

(assert (=> b!278264 m!355471))

(declare-fun m!355473 () Bool)

(assert (=> b!278264 m!355473))

(declare-fun m!355475 () Bool)

(assert (=> b!278264 m!355475))

(assert (=> b!278264 m!355473))

(declare-fun m!355477 () Bool)

(assert (=> b!278264 m!355477))

(declare-fun m!355479 () Bool)

(assert (=> b!278264 m!355479))

(declare-fun m!355481 () Bool)

(assert (=> b!278264 m!355481))

(declare-fun m!355483 () Bool)

(assert (=> b!278264 m!355483))

(declare-fun m!355485 () Bool)

(assert (=> b!278264 m!355485))

(assert (=> b!278264 m!355479))

(assert (=> b!278264 m!355463))

(assert (=> b!278264 m!355483))

(declare-fun m!355487 () Bool)

(assert (=> b!278264 m!355487))

(declare-fun m!355489 () Bool)

(assert (=> b!278239 m!355489))

(check-sat (not b_next!10289) (not b_next!10291) (not b!278276) (not b_next!10293) (not b!278241) (not b!278236) (not b!278265) b_and!22343 (not b!278264) (not b!278281) (not b!278246) (not b!278267) (not b!278274) (not b!278247) (not b!278263) b_and!22333 b_and!22339 (not b!278278) (not b!278252) (not b!278269) (not b!278253) (not b!278249) (not b!278282) (not b!278244) b_and!22341 b_and!22337 (not start!30086) (not b!278275) (not b!278242) (not b!278254) (not b!278256) (not b!278268) (not b!278243) (not b_next!10295) (not b!278259) (not b!278270) (not b!278239) (not b_next!10299) (not b!278279) b_and!22335 (not b!278277) (not b!278250) (not b!278260) (not b!278292) (not b_next!10297) (not b!278238) (not b!278245) (not b!278266) (not b!278255))
(check-sat (not b_next!10289) (not b_next!10291) (not b_next!10293) b_and!22343 (not b_next!10295) (not b_next!10299) b_and!22335 (not b_next!10297) b_and!22333 b_and!22339 b_and!22341 b_and!22337)
