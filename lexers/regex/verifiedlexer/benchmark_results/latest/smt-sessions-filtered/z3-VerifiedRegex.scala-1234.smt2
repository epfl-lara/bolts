; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64536 () Bool)

(assert start!64536)

(declare-fun res!293028 () Bool)

(declare-fun e!408247 () Bool)

(assert (=> start!64536 (=> (not res!293028) (not e!408247))))

(declare-datatypes ((List!7150 0))(
  ( (Nil!7136) (Cons!7136 (h!12537 (_ BitVec 16)) (t!86192 List!7150)) )
))
(declare-datatypes ((TokenValue!1472 0))(
  ( (FloatLiteralValue!2944 (text!10749 List!7150)) (TokenValueExt!1471 (__x!5051 Int)) (Broken!7360 (value!46108 List!7150)) (Object!1485) (End!1472) (Def!1472) (Underscore!1472) (Match!1472) (Else!1472) (Error!1472) (Case!1472) (If!1472) (Extends!1472) (Abstract!1472) (Class!1472) (Val!1472) (DelimiterValue!2944 (del!1532 List!7150)) (KeywordValue!1478 (value!46109 List!7150)) (CommentValue!2944 (value!46110 List!7150)) (WhitespaceValue!2944 (value!46111 List!7150)) (IndentationValue!1472 (value!46112 List!7150)) (String!9097) (Int32!1472) (Broken!7361 (value!46113 List!7150)) (Boolean!1473) (Unit!12362) (OperatorValue!1475 (op!1532 List!7150)) (IdentifierValue!2944 (value!46114 List!7150)) (IdentifierValue!2945 (value!46115 List!7150)) (WhitespaceValue!2945 (value!46116 List!7150)) (True!2944) (False!2944) (Broken!7362 (value!46117 List!7150)) (Broken!7363 (value!46118 List!7150)) (True!2945) (RightBrace!1472) (RightBracket!1472) (Colon!1472) (Null!1472) (Comma!1472) (LeftBracket!1472) (False!2945) (LeftBrace!1472) (ImaginaryLiteralValue!1472 (text!10750 List!7150)) (StringLiteralValue!4416 (value!46119 List!7150)) (EOFValue!1472 (value!46120 List!7150)) (IdentValue!1472 (value!46121 List!7150)) (DelimiterValue!2945 (value!46122 List!7150)) (DedentValue!1472 (value!46123 List!7150)) (NewLineValue!1472 (value!46124 List!7150)) (IntegerValue!4416 (value!46125 (_ BitVec 32)) (text!10751 List!7150)) (IntegerValue!4417 (value!46126 Int) (text!10752 List!7150)) (Times!1472) (Or!1472) (Equal!1472) (Minus!1472) (Broken!7364 (value!46127 List!7150)) (And!1472) (Div!1472) (LessEqual!1472) (Mod!1472) (Concat!3245) (Not!1472) (Plus!1472) (SpaceValue!1472 (value!46128 List!7150)) (IntegerValue!4418 (value!46129 Int) (text!10753 List!7150)) (StringLiteralValue!4417 (text!10754 List!7150)) (FloatLiteralValue!2945 (text!10755 List!7150)) (BytesLiteralValue!1472 (value!46130 List!7150)) (CommentValue!2945 (value!46131 List!7150)) (StringLiteralValue!4418 (value!46132 List!7150)) (ErrorTokenValue!1472 (msg!1533 List!7150)) )
))
(declare-datatypes ((Regex!1773 0))(
  ( (ElementMatch!1773 (c!118829 (_ BitVec 16))) (Concat!3246 (regOne!4058 Regex!1773) (regTwo!4058 Regex!1773)) (EmptyExpr!1773) (Star!1773 (reg!2102 Regex!1773)) (EmptyLang!1773) (Union!1773 (regOne!4059 Regex!1773) (regTwo!4059 Regex!1773)) )
))
(declare-datatypes ((String!9098 0))(
  ( (String!9099 (value!46133 String)) )
))
(declare-datatypes ((IArray!5035 0))(
  ( (IArray!5036 (innerList!2575 List!7150)) )
))
(declare-datatypes ((Conc!2517 0))(
  ( (Node!2517 (left!5785 Conc!2517) (right!6115 Conc!2517) (csize!5264 Int) (cheight!2728 Int)) (Leaf!3752 (xs!5166 IArray!5035) (csize!5265 Int)) (Empty!2517) )
))
(declare-datatypes ((BalanceConc!5046 0))(
  ( (BalanceConc!5047 (c!118830 Conc!2517)) )
))
(declare-datatypes ((TokenValueInjection!2696 0))(
  ( (TokenValueInjection!2697 (toValue!2379 Int) (toChars!2238 Int)) )
))
(declare-datatypes ((Rule!2676 0))(
  ( (Rule!2677 (regex!1438 Regex!1773) (tag!1700 String!9098) (isSeparator!1438 Bool) (transformation!1438 TokenValueInjection!2696)) )
))
(declare-datatypes ((Token!2598 0))(
  ( (Token!2599 (value!46134 TokenValue!1472) (rule!2233 Rule!2676) (size!5674 Int) (originalCharacters!1470 List!7150)) )
))
(declare-datatypes ((List!7151 0))(
  ( (Nil!7137) (Cons!7137 (h!12538 Token!2598) (t!86193 List!7151)) )
))
(declare-datatypes ((IArray!5037 0))(
  ( (IArray!5038 (innerList!2576 List!7151)) )
))
(declare-datatypes ((Conc!2518 0))(
  ( (Node!2518 (left!5786 Conc!2518) (right!6116 Conc!2518) (csize!5266 Int) (cheight!2729 Int)) (Leaf!3753 (xs!5167 IArray!5037) (csize!5267 Int)) (Empty!2518) )
))
(declare-datatypes ((List!7152 0))(
  ( (Nil!7138) (Cons!7138 (h!12539 Rule!2676) (t!86194 List!7152)) )
))
(declare-datatypes ((BalanceConc!5048 0))(
  ( (BalanceConc!5049 (c!118831 Conc!2518)) )
))
(declare-datatypes ((PrintableTokens!180 0))(
  ( (PrintableTokens!181 (rules!8273 List!7152) (tokens!1251 BalanceConc!5048)) )
))
(declare-fun objs!31 () PrintableTokens!180)

(declare-fun usesJsonRules!0 (PrintableTokens!180) Bool)

(assert (=> start!64536 (= res!293028 (usesJsonRules!0 objs!31))))

(assert (=> start!64536 e!408247))

(declare-fun e!408240 () Bool)

(declare-fun inv!9141 (PrintableTokens!180) Bool)

(assert (=> start!64536 (and (inv!9141 objs!31) e!408240)))

(declare-fun sepL!1 () PrintableTokens!180)

(declare-fun e!408239 () Bool)

(assert (=> start!64536 (and (inv!9141 sepL!1) e!408239)))

(declare-fun sepR!1 () PrintableTokens!180)

(declare-fun e!408245 () Bool)

(assert (=> start!64536 (and (inv!9141 sepR!1) e!408245)))

(declare-fun b!660122 () Bool)

(declare-fun e!408246 () Bool)

(declare-fun tp!201255 () Bool)

(declare-fun inv!9142 (Conc!2518) Bool)

(assert (=> b!660122 (= e!408246 (and (inv!9142 (c!118831 (tokens!1251 sepR!1))) tp!201255))))

(declare-fun b!660123 () Bool)

(declare-fun res!293029 () Bool)

(assert (=> b!660123 (=> (not res!293029) (not e!408247))))

(assert (=> b!660123 (= res!293029 (usesJsonRules!0 sepL!1))))

(declare-fun b!660124 () Bool)

(declare-fun e!408243 () Bool)

(declare-fun tp!201254 () Bool)

(assert (=> b!660124 (= e!408243 (and (inv!9142 (c!118831 (tokens!1251 sepL!1))) tp!201254))))

(declare-fun b!660125 () Bool)

(declare-fun e!408248 () Bool)

(declare-datatypes ((Option!1681 0))(
  ( (None!1680) (Some!1680 (v!17286 PrintableTokens!180)) )
))
(declare-fun lt!281025 () Option!1681)

(declare-fun isDefined!1430 (Option!1681) Bool)

(assert (=> b!660125 (= e!408248 (not (isDefined!1430 lt!281025)))))

(declare-fun b!660126 () Bool)

(declare-fun e!408244 () Bool)

(assert (=> b!660126 (= e!408244 e!408248)))

(declare-fun res!293032 () Bool)

(assert (=> b!660126 (=> (not res!293032) (not e!408248))))

(declare-fun isEmpty!4783 (Option!1681) Bool)

(assert (=> b!660126 (= res!293032 (not (isEmpty!4783 lt!281025)))))

(declare-fun lt!281023 () Option!1681)

(assert (=> b!660126 (= lt!281025 (Some!1680 (v!17286 lt!281023)))))

(declare-fun tp!201253 () Bool)

(declare-fun b!660127 () Bool)

(declare-fun inv!9143 (BalanceConc!5048) Bool)

(assert (=> b!660127 (= e!408245 (and tp!201253 (inv!9143 (tokens!1251 sepR!1)) e!408246))))

(declare-fun tp!201251 () Bool)

(declare-fun e!408241 () Bool)

(declare-fun b!660128 () Bool)

(assert (=> b!660128 (= e!408240 (and tp!201251 (inv!9143 (tokens!1251 objs!31)) e!408241))))

(declare-fun b!660129 () Bool)

(declare-fun tp!201252 () Bool)

(assert (=> b!660129 (= e!408241 (and (inv!9142 (c!118831 (tokens!1251 objs!31))) tp!201252))))

(declare-fun b!660130 () Bool)

(declare-fun e!408242 () Bool)

(assert (=> b!660130 (= e!408247 e!408242)))

(declare-fun res!293030 () Bool)

(assert (=> b!660130 (=> (not res!293030) (not e!408242))))

(declare-fun lt!281024 () Option!1681)

(get-info :version)

(assert (=> b!660130 (= res!293030 ((_ is Some!1680) lt!281024))))

(declare-fun append!262 (PrintableTokens!180 PrintableTokens!180) Option!1681)

(assert (=> b!660130 (= lt!281024 (append!262 sepL!1 objs!31))))

(declare-fun tp!201256 () Bool)

(declare-fun b!660131 () Bool)

(assert (=> b!660131 (= e!408239 (and tp!201256 (inv!9143 (tokens!1251 sepL!1)) e!408243))))

(declare-fun b!660132 () Bool)

(declare-fun res!293027 () Bool)

(assert (=> b!660132 (=> (not res!293027) (not e!408247))))

(assert (=> b!660132 (= res!293027 (usesJsonRules!0 sepR!1))))

(declare-fun b!660133 () Bool)

(assert (=> b!660133 (= e!408242 e!408244)))

(declare-fun res!293031 () Bool)

(assert (=> b!660133 (=> (not res!293031) (not e!408244))))

(assert (=> b!660133 (= res!293031 ((_ is Some!1680) lt!281023))))

(assert (=> b!660133 (= lt!281023 (append!262 (v!17286 lt!281024) sepR!1))))

(assert (= (and start!64536 res!293028) b!660123))

(assert (= (and b!660123 res!293029) b!660132))

(assert (= (and b!660132 res!293027) b!660130))

(assert (= (and b!660130 res!293030) b!660133))

(assert (= (and b!660133 res!293031) b!660126))

(assert (= (and b!660126 res!293032) b!660125))

(assert (= b!660128 b!660129))

(assert (= start!64536 b!660128))

(assert (= b!660131 b!660124))

(assert (= start!64536 b!660131))

(assert (= b!660127 b!660122))

(assert (= start!64536 b!660127))

(declare-fun m!925963 () Bool)

(assert (=> b!660130 m!925963))

(declare-fun m!925965 () Bool)

(assert (=> b!660126 m!925965))

(declare-fun m!925967 () Bool)

(assert (=> b!660133 m!925967))

(declare-fun m!925969 () Bool)

(assert (=> b!660131 m!925969))

(declare-fun m!925971 () Bool)

(assert (=> start!64536 m!925971))

(declare-fun m!925973 () Bool)

(assert (=> start!64536 m!925973))

(declare-fun m!925975 () Bool)

(assert (=> start!64536 m!925975))

(declare-fun m!925977 () Bool)

(assert (=> start!64536 m!925977))

(declare-fun m!925979 () Bool)

(assert (=> b!660122 m!925979))

(declare-fun m!925981 () Bool)

(assert (=> b!660128 m!925981))

(declare-fun m!925983 () Bool)

(assert (=> b!660127 m!925983))

(declare-fun m!925985 () Bool)

(assert (=> b!660124 m!925985))

(declare-fun m!925987 () Bool)

(assert (=> b!660125 m!925987))

(declare-fun m!925989 () Bool)

(assert (=> b!660123 m!925989))

(declare-fun m!925991 () Bool)

(assert (=> b!660132 m!925991))

(declare-fun m!925993 () Bool)

(assert (=> b!660129 m!925993))

(check-sat (not b!660123) (not b!660132) (not b!660125) (not b!660128) (not b!660124) (not b!660133) (not b!660127) (not b!660130) (not b!660122) (not b!660126) (not b!660131) (not start!64536) (not b!660129))
(check-sat)
(get-model)

(declare-fun d!225903 () Bool)

(declare-fun c!118834 () Bool)

(assert (=> d!225903 (= c!118834 ((_ is Node!2518) (c!118831 (tokens!1251 objs!31))))))

(declare-fun e!408253 () Bool)

(assert (=> d!225903 (= (inv!9142 (c!118831 (tokens!1251 objs!31))) e!408253)))

(declare-fun b!660140 () Bool)

(declare-fun inv!9146 (Conc!2518) Bool)

(assert (=> b!660140 (= e!408253 (inv!9146 (c!118831 (tokens!1251 objs!31))))))

(declare-fun b!660141 () Bool)

(declare-fun e!408254 () Bool)

(assert (=> b!660141 (= e!408253 e!408254)))

(declare-fun res!293037 () Bool)

(assert (=> b!660141 (= res!293037 (not ((_ is Leaf!3753) (c!118831 (tokens!1251 objs!31)))))))

(assert (=> b!660141 (=> res!293037 e!408254)))

(declare-fun b!660142 () Bool)

(declare-fun inv!9147 (Conc!2518) Bool)

(assert (=> b!660142 (= e!408254 (inv!9147 (c!118831 (tokens!1251 objs!31))))))

(assert (= (and d!225903 c!118834) b!660140))

(assert (= (and d!225903 (not c!118834)) b!660141))

(assert (= (and b!660141 (not res!293037)) b!660142))

(declare-fun m!925997 () Bool)

(assert (=> b!660140 m!925997))

(declare-fun m!925999 () Bool)

(assert (=> b!660142 m!925999))

(assert (=> b!660129 d!225903))

(declare-fun d!225911 () Bool)

(declare-datatypes ((JsonLexer!226 0))(
  ( (JsonLexer!227) )
))
(declare-fun rules!109 (JsonLexer!226) List!7152)

(assert (=> d!225911 (= (usesJsonRules!0 objs!31) (= (rules!8273 objs!31) (rules!109 JsonLexer!227)))))

(declare-fun bs!94414 () Bool)

(assert (= bs!94414 d!225911))

(declare-fun m!926011 () Bool)

(assert (=> bs!94414 m!926011))

(assert (=> start!64536 d!225911))

(declare-fun d!225923 () Bool)

(declare-fun res!293064 () Bool)

(declare-fun e!408272 () Bool)

(assert (=> d!225923 (=> (not res!293064) (not e!408272))))

(declare-fun isEmpty!4786 (List!7152) Bool)

(assert (=> d!225923 (= res!293064 (not (isEmpty!4786 (rules!8273 objs!31))))))

(assert (=> d!225923 (= (inv!9141 objs!31) e!408272)))

(declare-fun b!660179 () Bool)

(declare-fun res!293065 () Bool)

(assert (=> b!660179 (=> (not res!293065) (not e!408272))))

(declare-datatypes ((LexerInterface!1271 0))(
  ( (LexerInterfaceExt!1268 (__x!5053 Int)) (Lexer!1269) )
))
(declare-fun rulesInvariant!1206 (LexerInterface!1271 List!7152) Bool)

(assert (=> b!660179 (= res!293065 (rulesInvariant!1206 Lexer!1269 (rules!8273 objs!31)))))

(declare-fun b!660180 () Bool)

(declare-fun res!293066 () Bool)

(assert (=> b!660180 (=> (not res!293066) (not e!408272))))

(declare-fun rulesProduceEachTokenIndividually!589 (LexerInterface!1271 List!7152 BalanceConc!5048) Bool)

(assert (=> b!660180 (= res!293066 (rulesProduceEachTokenIndividually!589 Lexer!1269 (rules!8273 objs!31) (tokens!1251 objs!31)))))

(declare-fun b!660181 () Bool)

(declare-fun separableTokens!39 (LexerInterface!1271 BalanceConc!5048 List!7152) Bool)

(assert (=> b!660181 (= e!408272 (separableTokens!39 Lexer!1269 (tokens!1251 objs!31) (rules!8273 objs!31)))))

(assert (= (and d!225923 res!293064) b!660179))

(assert (= (and b!660179 res!293065) b!660180))

(assert (= (and b!660180 res!293066) b!660181))

(declare-fun m!926041 () Bool)

(assert (=> d!225923 m!926041))

(declare-fun m!926043 () Bool)

(assert (=> b!660179 m!926043))

(declare-fun m!926045 () Bool)

(assert (=> b!660180 m!926045))

(declare-fun m!926047 () Bool)

(assert (=> b!660181 m!926047))

(assert (=> start!64536 d!225923))

(declare-fun d!225933 () Bool)

(declare-fun res!293067 () Bool)

(declare-fun e!408273 () Bool)

(assert (=> d!225933 (=> (not res!293067) (not e!408273))))

(assert (=> d!225933 (= res!293067 (not (isEmpty!4786 (rules!8273 sepL!1))))))

(assert (=> d!225933 (= (inv!9141 sepL!1) e!408273)))

(declare-fun b!660182 () Bool)

(declare-fun res!293068 () Bool)

(assert (=> b!660182 (=> (not res!293068) (not e!408273))))

(assert (=> b!660182 (= res!293068 (rulesInvariant!1206 Lexer!1269 (rules!8273 sepL!1)))))

(declare-fun b!660183 () Bool)

(declare-fun res!293069 () Bool)

(assert (=> b!660183 (=> (not res!293069) (not e!408273))))

(assert (=> b!660183 (= res!293069 (rulesProduceEachTokenIndividually!589 Lexer!1269 (rules!8273 sepL!1) (tokens!1251 sepL!1)))))

(declare-fun b!660184 () Bool)

(assert (=> b!660184 (= e!408273 (separableTokens!39 Lexer!1269 (tokens!1251 sepL!1) (rules!8273 sepL!1)))))

(assert (= (and d!225933 res!293067) b!660182))

(assert (= (and b!660182 res!293068) b!660183))

(assert (= (and b!660183 res!293069) b!660184))

(declare-fun m!926049 () Bool)

(assert (=> d!225933 m!926049))

(declare-fun m!926051 () Bool)

(assert (=> b!660182 m!926051))

(declare-fun m!926053 () Bool)

(assert (=> b!660183 m!926053))

(declare-fun m!926055 () Bool)

(assert (=> b!660184 m!926055))

(assert (=> start!64536 d!225933))

(declare-fun d!225935 () Bool)

(declare-fun res!293070 () Bool)

(declare-fun e!408274 () Bool)

(assert (=> d!225935 (=> (not res!293070) (not e!408274))))

(assert (=> d!225935 (= res!293070 (not (isEmpty!4786 (rules!8273 sepR!1))))))

(assert (=> d!225935 (= (inv!9141 sepR!1) e!408274)))

(declare-fun b!660185 () Bool)

(declare-fun res!293071 () Bool)

(assert (=> b!660185 (=> (not res!293071) (not e!408274))))

(assert (=> b!660185 (= res!293071 (rulesInvariant!1206 Lexer!1269 (rules!8273 sepR!1)))))

(declare-fun b!660186 () Bool)

(declare-fun res!293072 () Bool)

(assert (=> b!660186 (=> (not res!293072) (not e!408274))))

(assert (=> b!660186 (= res!293072 (rulesProduceEachTokenIndividually!589 Lexer!1269 (rules!8273 sepR!1) (tokens!1251 sepR!1)))))

(declare-fun b!660187 () Bool)

(assert (=> b!660187 (= e!408274 (separableTokens!39 Lexer!1269 (tokens!1251 sepR!1) (rules!8273 sepR!1)))))

(assert (= (and d!225935 res!293070) b!660185))

(assert (= (and b!660185 res!293071) b!660186))

(assert (= (and b!660186 res!293072) b!660187))

(declare-fun m!926057 () Bool)

(assert (=> d!225935 m!926057))

(declare-fun m!926059 () Bool)

(assert (=> b!660185 m!926059))

(declare-fun m!926061 () Bool)

(assert (=> b!660186 m!926061))

(declare-fun m!926063 () Bool)

(assert (=> b!660187 m!926063))

(assert (=> start!64536 d!225935))

(declare-fun d!225937 () Bool)

(declare-fun isBalanced!663 (Conc!2518) Bool)

(assert (=> d!225937 (= (inv!9143 (tokens!1251 objs!31)) (isBalanced!663 (c!118831 (tokens!1251 objs!31))))))

(declare-fun bs!94415 () Bool)

(assert (= bs!94415 d!225937))

(declare-fun m!926065 () Bool)

(assert (=> bs!94415 m!926065))

(assert (=> b!660128 d!225937))

(declare-fun bm!43020 () Bool)

(declare-fun lt!281448 () List!7151)

(declare-fun lt!281416 () List!7151)

(declare-fun call!43029 () BalanceConc!5046)

(declare-fun c!118888 () Bool)

(declare-fun charsOf!916 (Token!2598) BalanceConc!5046)

(assert (=> bm!43020 (= call!43029 (charsOf!916 (ite c!118888 (h!12538 lt!281416) (h!12538 lt!281448))))))

(declare-fun bm!43021 () Bool)

(declare-fun call!43062 () BalanceConc!5046)

(declare-fun printTailRec!456 (LexerInterface!1271 BalanceConc!5048 Int BalanceConc!5046) BalanceConc!5046)

(assert (=> bm!43021 (= call!43062 (printTailRec!456 Lexer!1269 (tokens!1251 objs!31) 0 (BalanceConc!5047 Empty!2517)))))

(declare-fun bm!43022 () Bool)

(declare-fun call!43054 () BalanceConc!5046)

(declare-fun print!520 (PrintableTokens!180) BalanceConc!5046)

(assert (=> bm!43022 (= call!43054 (print!520 objs!31))))

(declare-fun bm!43023 () Bool)

(declare-fun call!43057 () List!7150)

(declare-fun call!43055 () List!7150)

(assert (=> bm!43023 (= call!43057 call!43055)))

(declare-fun b!660328 () Bool)

(declare-fun c!118887 () Bool)

(declare-fun separableTokensPredicate!16 (LexerInterface!1271 Token!2598 Token!2598 List!7152) Bool)

(declare-fun last!52 (BalanceConc!5048) Token!2598)

(declare-fun head!1377 (BalanceConc!5048) Token!2598)

(assert (=> b!660328 (= c!118887 (separableTokensPredicate!16 Lexer!1269 (last!52 (tokens!1251 sepL!1)) (head!1377 (tokens!1251 objs!31)) (rules!8273 sepL!1)))))

(declare-datatypes ((Unit!12386 0))(
  ( (Unit!12387) )
))
(declare-fun lt!281419 () Unit!12386)

(declare-fun lt!281462 () Unit!12386)

(assert (=> b!660328 (= lt!281419 lt!281462)))

(declare-fun lt!281430 () LexerInterface!1271)

(declare-fun lt!281444 () Token!2598)

(declare-fun rulesProduceIndividualToken!526 (LexerInterface!1271 List!7152 Token!2598) Bool)

(assert (=> b!660328 (rulesProduceIndividualToken!526 lt!281430 (rules!8273 sepL!1) lt!281444)))

(declare-fun lt!281410 () List!7151)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!212 (LexerInterface!1271 List!7152 List!7151 Token!2598) Unit!12386)

(assert (=> b!660328 (= lt!281462 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!212 lt!281430 (rules!8273 sepL!1) lt!281410 lt!281444))))

(assert (=> b!660328 (= lt!281444 (head!1377 (tokens!1251 objs!31)))))

(declare-fun call!43041 () List!7151)

(assert (=> b!660328 (= lt!281410 call!43041)))

(assert (=> b!660328 (= lt!281430 Lexer!1269)))

(declare-fun lt!281467 () Unit!12386)

(declare-fun lt!281415 () Unit!12386)

(assert (=> b!660328 (= lt!281467 lt!281415)))

(declare-fun lt!281434 () LexerInterface!1271)

(declare-fun lt!281421 () Token!2598)

(assert (=> b!660328 (rulesProduceIndividualToken!526 lt!281434 (rules!8273 sepL!1) lt!281421)))

(declare-fun lt!281464 () List!7151)

(assert (=> b!660328 (= lt!281415 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!212 lt!281434 (rules!8273 sepL!1) lt!281464 lt!281421))))

(assert (=> b!660328 (= lt!281421 (last!52 (tokens!1251 sepL!1)))))

(declare-fun call!43035 () List!7151)

(assert (=> b!660328 (= lt!281464 call!43035)))

(assert (=> b!660328 (= lt!281434 Lexer!1269)))

(declare-fun e!408369 () Option!1681)

(declare-fun e!408368 () Option!1681)

(assert (=> b!660328 (= e!408369 e!408368)))

(declare-fun bm!43024 () Bool)

(declare-fun call!43061 () Unit!12386)

(declare-fun call!43042 () Unit!12386)

(assert (=> bm!43024 (= call!43061 call!43042)))

(declare-fun b!660329 () Bool)

(declare-fun e!408366 () List!7151)

(declare-fun call!43025 () List!7151)

(assert (=> b!660329 (= e!408366 call!43025)))

(declare-fun bm!43025 () Bool)

(declare-fun call!43028 () List!7150)

(declare-fun call!43040 () List!7150)

(assert (=> bm!43025 (= call!43028 call!43040)))

(declare-fun lt!281445 () LexerInterface!1271)

(declare-fun lt!281426 () List!7151)

(declare-fun call!43050 () List!7150)

(declare-fun lt!281420 () List!7151)

(declare-fun lt!281438 () LexerInterface!1271)

(declare-fun c!118886 () Bool)

(declare-fun bm!43026 () Bool)

(declare-fun printList!444 (LexerInterface!1271 List!7151) List!7150)

(assert (=> bm!43026 (= call!43050 (printList!444 (ite c!118888 lt!281438 (ite c!118886 Lexer!1269 lt!281445)) (ite c!118888 lt!281420 (ite c!118886 Nil!7137 lt!281426))))))

(declare-fun bm!43027 () Bool)

(declare-fun call!43047 () Unit!12386)

(declare-fun call!43059 () List!7151)

(declare-fun theoremInvertabilityWhenTokenListSeparable!12 (LexerInterface!1271 List!7152 List!7151) Unit!12386)

(assert (=> bm!43027 (= call!43047 (theoremInvertabilityWhenTokenListSeparable!12 Lexer!1269 (rules!8273 objs!31) (ite c!118888 call!43059 (ite c!118886 call!43035 call!43041))))))

(declare-fun lt!281437 () Option!1681)

(declare-fun e!408370 () Bool)

(declare-fun b!660330 () Bool)

(declare-fun list!3048 (BalanceConc!5046) List!7150)

(declare-fun get!2525 (Option!1681) PrintableTokens!180)

(declare-fun ++!1912 (List!7150 List!7150) List!7150)

(assert (=> b!660330 (= e!408370 (= (list!3048 (print!520 (get!2525 lt!281437))) (++!1912 (list!3048 (print!520 sepL!1)) (list!3048 (print!520 objs!31)))))))

(declare-fun bm!43028 () Bool)

(declare-fun call!43038 () List!7150)

(declare-fun call!43053 () List!7150)

(assert (=> bm!43028 (= call!43038 call!43053)))

(declare-fun lt!281433 () List!7151)

(declare-fun call!43060 () List!7151)

(declare-fun lt!281429 () List!7151)

(declare-fun bm!43029 () Bool)

(declare-fun ++!1913 (List!7151 List!7151) List!7151)

(assert (=> bm!43029 (= call!43060 (++!1913 (ite c!118888 lt!281420 lt!281426) (ite c!118888 lt!281433 lt!281429)))))

(declare-fun bm!43030 () Bool)

(declare-fun call!43032 () BalanceConc!5046)

(declare-fun call!43043 () BalanceConc!5046)

(assert (=> bm!43030 (= call!43032 call!43043)))

(declare-fun bm!43031 () Bool)

(declare-fun call!43031 () BalanceConc!5046)

(declare-fun call!43051 () BalanceConc!5046)

(assert (=> bm!43031 (= call!43031 call!43051)))

(declare-fun b!660331 () Bool)

(declare-fun res!293091 () Bool)

(assert (=> b!660331 (=> (not res!293091) (not e!408370))))

(declare-fun list!3049 (BalanceConc!5048) List!7151)

(assert (=> b!660331 (= res!293091 (= (list!3049 (tokens!1251 (get!2525 lt!281437))) (++!1913 (list!3049 (tokens!1251 sepL!1)) (list!3049 (tokens!1251 objs!31)))))))

(declare-fun bm!43032 () Bool)

(declare-fun c!118892 () Bool)

(assert (=> bm!43032 (= c!118892 c!118886)))

(declare-fun call!43052 () List!7150)

(declare-fun call!43045 () List!7150)

(assert (=> bm!43032 (= call!43052 call!43045)))

(declare-fun bm!43033 () Bool)

(declare-fun call!43036 () List!7150)

(declare-fun call!43026 () List!7150)

(assert (=> bm!43033 (= call!43036 call!43026)))

(declare-fun bm!43034 () Bool)

(declare-fun call!43063 () List!7150)

(assert (=> bm!43034 (= call!43063 call!43050)))

(declare-fun bm!43035 () Bool)

(declare-fun c!118889 () Bool)

(assert (=> bm!43035 (= c!118889 c!118886)))

(declare-fun call!43049 () List!7150)

(declare-fun call!43039 () List!7150)

(assert (=> bm!43035 (= call!43049 call!43039)))

(declare-fun bm!43036 () Bool)

(declare-fun lt!281453 () LexerInterface!1271)

(declare-fun lt!281469 () LexerInterface!1271)

(declare-fun call!43033 () List!7150)

(assert (=> bm!43036 (= call!43033 (printList!444 (ite c!118888 Lexer!1269 (ite c!118886 lt!281453 lt!281469)) (ite c!118888 Nil!7137 e!408366)))))

(declare-fun bm!43037 () Bool)

(declare-fun print!521 (LexerInterface!1271 BalanceConc!5048) BalanceConc!5046)

(assert (=> bm!43037 (= call!43043 (print!521 Lexer!1269 (tokens!1251 objs!31)))))

(declare-fun bm!43038 () Bool)

(declare-fun c!118893 () Bool)

(assert (=> bm!43038 (= c!118893 c!118886)))

(declare-fun call!43046 () List!7150)

(assert (=> bm!43038 (= call!43046 call!43033)))

(declare-fun e!408365 () List!7151)

(declare-fun bm!43039 () Bool)

(assert (=> bm!43039 (= call!43039 (printList!444 (ite (or c!118888 c!118886) Lexer!1269 lt!281445) (ite c!118888 call!43059 e!408365)))))

(declare-fun bm!43040 () Bool)

(declare-fun call!43056 () List!7150)

(assert (=> bm!43040 (= call!43056 (list!3048 call!43029))))

(declare-fun d!225939 () Bool)

(declare-fun e!408367 () Bool)

(assert (=> d!225939 e!408367))

(declare-fun res!293092 () Bool)

(assert (=> d!225939 (=> res!293092 e!408367)))

(assert (=> d!225939 (= res!293092 (isEmpty!4783 lt!281437))))

(declare-fun e!408362 () Option!1681)

(assert (=> d!225939 (= lt!281437 e!408362)))

(declare-fun isEmpty!4787 (BalanceConc!5048) Bool)

(assert (=> d!225939 (= c!118888 (isEmpty!4787 (tokens!1251 objs!31)))))

(declare-fun lt!281459 () Unit!12386)

(declare-fun lemmaInvariant!82 (PrintableTokens!180) Unit!12386)

(assert (=> d!225939 (= lt!281459 (lemmaInvariant!82 sepL!1))))

(declare-fun lt!281436 () Unit!12386)

(assert (=> d!225939 (= lt!281436 (lemmaInvariant!82 objs!31))))

(assert (=> d!225939 (= (rules!8273 sepL!1) (rules!8273 objs!31))))

(assert (=> d!225939 (= (append!262 sepL!1 objs!31) lt!281437)))

(declare-fun bm!43041 () Bool)

(declare-fun lt!281468 () List!7151)

(assert (=> bm!43041 (= call!43053 (printList!444 (ite c!118888 lt!281438 (ite c!118886 Lexer!1269 lt!281469)) (ite c!118888 lt!281433 (ite c!118886 (t!86193 lt!281448) lt!281468))))))

(declare-fun b!660332 () Bool)

(declare-fun e!408363 () List!7150)

(assert (=> b!660332 (= e!408363 call!43045)))

(declare-fun bm!43042 () Bool)

(declare-fun call!43027 () BalanceConc!5046)

(assert (=> bm!43042 (= call!43027 (print!520 sepL!1))))

(declare-fun b!660333 () Bool)

(declare-fun e!408364 () List!7150)

(assert (=> b!660333 (= e!408364 call!43056)))

(declare-fun b!660334 () Bool)

(assert (=> b!660334 (= e!408364 call!43063)))

(declare-fun bm!43043 () Bool)

(declare-fun call!43048 () Unit!12386)

(assert (=> bm!43043 (= call!43048 call!43047)))

(declare-fun bm!43044 () Bool)

(assert (=> bm!43044 (= call!43041 call!43059)))

(declare-fun b!660335 () Bool)

(assert (=> b!660335 (= e!408362 (Some!1680 sepL!1))))

(assert (=> b!660335 (= lt!281438 Lexer!1269)))

(declare-fun call!43034 () List!7151)

(assert (=> b!660335 (= lt!281420 call!43034)))

(assert (=> b!660335 (= lt!281433 Nil!7137)))

(declare-fun lt!281441 () Unit!12386)

(declare-fun call!43044 () Unit!12386)

(assert (=> b!660335 (= lt!281441 call!43044)))

(assert (=> b!660335 (= call!43026 call!43040)))

(declare-fun lt!281424 () Unit!12386)

(assert (=> b!660335 (= lt!281424 lt!281441)))

(assert (=> b!660335 (= call!43033 Nil!7136)))

(declare-fun lt!281472 () Unit!12386)

(declare-fun Unit!12393 () Unit!12386)

(assert (=> b!660335 (= lt!281472 Unit!12393)))

(declare-fun lt!281457 () Unit!12386)

(assert (=> b!660335 (= lt!281457 call!43042)))

(assert (=> b!660335 (= call!43027 call!43051)))

(declare-fun lt!281435 () Unit!12386)

(declare-fun Unit!12394 () Unit!12386)

(assert (=> b!660335 (= lt!281435 Unit!12394)))

(declare-fun lt!281466 () Unit!12386)

(assert (=> b!660335 (= lt!281466 call!43047)))

(assert (=> b!660335 (= call!43054 call!43043)))

(declare-fun lt!281440 () Unit!12386)

(declare-fun Unit!12395 () Unit!12386)

(assert (=> b!660335 (= lt!281440 Unit!12395)))

(assert (=> b!660335 (= call!43043 call!43062)))

(declare-fun lt!281451 () Unit!12386)

(declare-fun Unit!12396 () Unit!12386)

(assert (=> b!660335 (= lt!281451 Unit!12396)))

(assert (=> b!660335 (= lt!281416 call!43059)))

(declare-fun c!118890 () Bool)

(assert (=> b!660335 (= c!118890 ((_ is Cons!7137) lt!281416))))

(assert (=> b!660335 (= call!43039 e!408363)))

(declare-fun lt!281460 () Unit!12386)

(declare-fun Unit!12397 () Unit!12386)

(assert (=> b!660335 (= lt!281460 Unit!12397)))

(declare-fun b!660336 () Bool)

(assert (=> b!660336 (= e!408365 call!43035)))

(declare-fun lt!281412 () List!7151)

(declare-fun lt!281431 () List!7151)

(declare-fun bm!43045 () Bool)

(declare-fun lt!281411 () List!7151)

(declare-fun lt!281439 () List!7151)

(assert (=> bm!43045 (= call!43025 (++!1913 (ite c!118886 lt!281431 lt!281411) (ite c!118886 lt!281412 lt!281439)))))

(declare-fun b!660337 () Bool)

(assert (=> b!660337 (= e!408365 call!43060)))

(declare-fun bm!43046 () Bool)

(declare-fun call!43037 () BalanceConc!5046)

(assert (=> bm!43046 (= call!43037 call!43054)))

(declare-fun bm!43047 () Bool)

(assert (=> bm!43047 (= call!43040 (++!1912 (ite c!118888 call!43050 call!43057) (ite c!118888 call!43053 (ite c!118886 call!43036 call!43038))))))

(declare-fun bm!43048 () Bool)

(assert (=> bm!43048 (= call!43042 (theoremInvertabilityWhenTokenListSeparable!12 Lexer!1269 (rules!8273 sepL!1) (ite c!118888 call!43034 (ite c!118886 call!43041 call!43035))))))

(declare-fun bm!43049 () Bool)

(assert (=> bm!43049 (= call!43034 (list!3049 (ite c!118888 (tokens!1251 sepL!1) (ite c!118886 (tokens!1251 objs!31) (tokens!1251 sepL!1)))))))

(declare-fun b!660338 () Bool)

(declare-fun e!408361 () List!7150)

(assert (=> b!660338 (= e!408361 call!43052)))

(declare-fun b!660339 () Bool)

(declare-fun lt!281413 () List!7151)

(assert (=> b!660339 (= e!408366 (++!1913 lt!281413 lt!281468))))

(declare-fun b!660340 () Bool)

(assert (=> b!660340 (= e!408362 e!408369)))

(assert (=> b!660340 (= c!118886 (isEmpty!4787 (tokens!1251 sepL!1)))))

(declare-fun bm!43050 () Bool)

(assert (=> bm!43050 (= call!43045 (++!1912 (ite c!118888 call!43056 e!408364) (ite c!118888 call!43055 (ite c!118886 call!43038 call!43036))))))

(declare-fun b!660341 () Bool)

(declare-fun lt!281414 () Unit!12386)

(declare-fun Unit!12398 () Unit!12386)

(assert (=> b!660341 (= lt!281414 Unit!12398)))

(assert (=> b!660341 (= call!43049 e!408361)))

(declare-fun c!118891 () Bool)

(assert (=> b!660341 (= c!118891 ((_ is Cons!7137) lt!281448))))

(assert (=> b!660341 (= lt!281448 call!43035)))

(declare-fun lt!281423 () Unit!12386)

(declare-fun Unit!12399 () Unit!12386)

(assert (=> b!660341 (= lt!281423 Unit!12399)))

(assert (=> b!660341 (= call!43032 call!43062)))

(declare-fun lt!281463 () Unit!12386)

(declare-fun Unit!12400 () Unit!12386)

(assert (=> b!660341 (= lt!281463 Unit!12400)))

(assert (=> b!660341 (= call!43037 call!43032)))

(declare-fun lt!281456 () Unit!12386)

(assert (=> b!660341 (= lt!281456 call!43048)))

(declare-fun lt!281454 () Unit!12386)

(declare-fun Unit!12401 () Unit!12386)

(assert (=> b!660341 (= lt!281454 Unit!12401)))

(declare-fun call!43058 () BalanceConc!5046)

(assert (=> b!660341 (= call!43058 call!43031)))

(declare-fun lt!281427 () Unit!12386)

(assert (=> b!660341 (= lt!281427 call!43061)))

(declare-fun lt!281418 () Unit!12386)

(declare-fun Unit!12402 () Unit!12386)

(assert (=> b!660341 (= lt!281418 Unit!12402)))

(assert (=> b!660341 (= call!43063 Nil!7136)))

(declare-fun lt!281417 () Unit!12386)

(declare-fun lt!281455 () Unit!12386)

(assert (=> b!660341 (= lt!281417 lt!281455)))

(assert (=> b!660341 (= call!43046 call!43028)))

(declare-fun call!43030 () Unit!12386)

(assert (=> b!660341 (= lt!281455 call!43030)))

(assert (=> b!660341 (= lt!281412 call!43035)))

(assert (=> b!660341 (= lt!281431 Nil!7137)))

(assert (=> b!660341 (= lt!281453 Lexer!1269)))

(assert (=> b!660341 (= e!408369 (Some!1680 objs!31))))

(declare-fun bm!43051 () Bool)

(assert (=> bm!43051 (= call!43059 (list!3049 (ite c!118888 (tokens!1251 objs!31) (ite c!118886 (tokens!1251 sepL!1) (tokens!1251 objs!31)))))))

(declare-fun b!660342 () Bool)

(assert (=> b!660342 (= e!408363 Nil!7136)))

(declare-fun b!660343 () Bool)

(declare-fun ++!1914 (BalanceConc!5048 BalanceConc!5048) BalanceConc!5048)

(assert (=> b!660343 (= e!408368 (Some!1680 (PrintableTokens!181 (rules!8273 sepL!1) (++!1914 (tokens!1251 sepL!1) (tokens!1251 objs!31)))))))

(declare-fun lt!281452 () LexerInterface!1271)

(assert (=> b!660343 (= lt!281452 Lexer!1269)))

(assert (=> b!660343 (= lt!281411 call!43035)))

(assert (=> b!660343 (= lt!281439 call!43041)))

(declare-fun lt!281450 () Unit!12386)

(declare-fun tokensListTwoByTwoPredicateConcatSeparableTokensList!7 (LexerInterface!1271 List!7151 List!7151 List!7152) Unit!12386)

(assert (=> b!660343 (= lt!281450 (tokensListTwoByTwoPredicateConcatSeparableTokensList!7 lt!281452 lt!281411 lt!281439 (rules!8273 sepL!1)))))

(declare-fun lt!281428 () Unit!12386)

(declare-fun lemmaRulesProduceEachTokenIndividuallyConcat!7 (LexerInterface!1271 List!7152 List!7151 List!7151) Unit!12386)

(assert (=> b!660343 (= lt!281428 (lemmaRulesProduceEachTokenIndividuallyConcat!7 lt!281452 (rules!8273 sepL!1) lt!281411 lt!281439))))

(declare-fun rulesProduceEachTokenIndividuallyList!345 (LexerInterface!1271 List!7152 List!7151) Bool)

(assert (=> b!660343 (rulesProduceEachTokenIndividuallyList!345 lt!281452 (rules!8273 sepL!1) call!43025)))

(declare-fun lt!281447 () Unit!12386)

(assert (=> b!660343 (= lt!281447 lt!281428)))

(declare-fun tokensListTwoByTwoPredicateSeparableList!14 (LexerInterface!1271 List!7151 List!7152) Bool)

(assert (=> b!660343 (tokensListTwoByTwoPredicateSeparableList!14 lt!281452 call!43025 (rules!8273 sepL!1))))

(declare-fun lt!281425 () Unit!12386)

(assert (=> b!660343 (= lt!281425 lt!281450)))

(assert (=> b!660343 (= lt!281469 Lexer!1269)))

(assert (=> b!660343 (= lt!281413 call!43035)))

(assert (=> b!660343 (= lt!281468 call!43041)))

(declare-fun lt!281422 () Unit!12386)

(assert (=> b!660343 (= lt!281422 call!43044)))

(assert (=> b!660343 (= call!43046 call!43028)))

(declare-fun lt!281442 () Unit!12386)

(assert (=> b!660343 (= lt!281442 lt!281422)))

(declare-fun lt!281449 () Unit!12386)

(assert (=> b!660343 (= lt!281449 call!43061)))

(assert (=> b!660343 (= call!43058 call!43031)))

(declare-fun lt!281443 () Unit!12386)

(declare-fun Unit!12403 () Unit!12386)

(assert (=> b!660343 (= lt!281443 Unit!12403)))

(declare-fun lt!281432 () Unit!12386)

(assert (=> b!660343 (= lt!281432 call!43048)))

(assert (=> b!660343 (= call!43037 call!43032)))

(declare-fun lt!281471 () Unit!12386)

(declare-fun Unit!12404 () Unit!12386)

(assert (=> b!660343 (= lt!281471 Unit!12404)))

(declare-fun lt!281446 () PrintableTokens!180)

(assert (=> b!660343 (= lt!281446 (PrintableTokens!181 (rules!8273 sepL!1) (++!1914 (tokens!1251 sepL!1) (tokens!1251 objs!31))))))

(declare-fun lt!281461 () BalanceConc!5048)

(assert (=> b!660343 (= lt!281461 (++!1914 (tokens!1251 sepL!1) (tokens!1251 objs!31)))))

(declare-fun lt!281465 () Unit!12386)

(assert (=> b!660343 (= lt!281465 (theoremInvertabilityWhenTokenListSeparable!12 Lexer!1269 (rules!8273 sepL!1) (list!3049 (++!1914 (tokens!1251 sepL!1) (tokens!1251 objs!31)))))))

(assert (=> b!660343 (= (print!520 (PrintableTokens!181 (rules!8273 sepL!1) (++!1914 (tokens!1251 sepL!1) (tokens!1251 objs!31)))) (print!521 Lexer!1269 (++!1914 (tokens!1251 sepL!1) (tokens!1251 objs!31))))))

(declare-fun lt!281458 () Unit!12386)

(declare-fun Unit!12405 () Unit!12386)

(assert (=> b!660343 (= lt!281458 Unit!12405)))

(assert (=> b!660343 (= lt!281445 Lexer!1269)))

(assert (=> b!660343 (= lt!281426 call!43035)))

(assert (=> b!660343 (= lt!281429 call!43041)))

(declare-fun lt!281470 () Unit!12386)

(assert (=> b!660343 (= lt!281470 call!43030)))

(assert (=> b!660343 (= call!43049 call!43052)))

(declare-fun lt!281473 () Unit!12386)

(assert (=> b!660343 (= lt!281473 lt!281470)))

(declare-fun b!660344 () Bool)

(assert (=> b!660344 (= e!408361 Nil!7136)))

(declare-fun bm!43052 () Bool)

(assert (=> bm!43052 (= call!43055 (printList!444 (ite c!118888 Lexer!1269 (ite c!118886 lt!281453 lt!281469)) (ite c!118888 (t!86193 lt!281416) (ite c!118886 lt!281431 lt!281413))))))

(declare-fun bm!43053 () Bool)

(declare-fun lemmaPrintConcatSameAsConcatPrint!7 (LexerInterface!1271 List!7151 List!7151) Unit!12386)

(assert (=> bm!43053 (= call!43030 (lemmaPrintConcatSameAsConcatPrint!7 (ite c!118886 lt!281453 lt!281445) (ite c!118886 lt!281431 lt!281426) (ite c!118886 lt!281412 lt!281429)))))

(declare-fun bm!43054 () Bool)

(assert (=> bm!43054 (= call!43035 call!43034)))

(declare-fun bm!43055 () Bool)

(assert (=> bm!43055 (= call!43051 (print!521 Lexer!1269 (tokens!1251 sepL!1)))))

(declare-fun bm!43056 () Bool)

(assert (=> bm!43056 (= call!43058 call!43027)))

(declare-fun bm!43057 () Bool)

(assert (=> bm!43057 (= call!43026 (printList!444 (ite c!118888 lt!281438 (ite c!118886 lt!281453 lt!281445)) (ite c!118888 call!43060 (ite c!118886 lt!281412 lt!281429))))))

(declare-fun b!660345 () Bool)

(assert (=> b!660345 (= e!408368 None!1680)))

(declare-fun b!660346 () Bool)

(assert (=> b!660346 (= e!408367 e!408370)))

(declare-fun res!293093 () Bool)

(assert (=> b!660346 (=> (not res!293093) (not e!408370))))

(assert (=> b!660346 (= res!293093 (= (rules!8273 (get!2525 lt!281437)) (rules!8273 sepL!1)))))

(declare-fun bm!43058 () Bool)

(assert (=> bm!43058 (= call!43044 (lemmaPrintConcatSameAsConcatPrint!7 (ite c!118888 lt!281438 lt!281469) (ite c!118888 lt!281420 lt!281413) (ite c!118888 lt!281433 lt!281468)))))

(assert (= (and d!225939 c!118888) b!660335))

(assert (= (and d!225939 (not c!118888)) b!660340))

(assert (= (and b!660335 c!118890) b!660332))

(assert (= (and b!660335 (not c!118890)) b!660342))

(assert (= (and b!660340 c!118886) b!660341))

(assert (= (and b!660340 (not c!118886)) b!660328))

(assert (= (and b!660341 c!118891) b!660338))

(assert (= (and b!660341 (not c!118891)) b!660344))

(assert (= (and b!660328 c!118887) b!660343))

(assert (= (and b!660328 (not c!118887)) b!660345))

(assert (= (or b!660341 b!660343) bm!43033))

(assert (= (or b!660341 b!660343) bm!43030))

(assert (= (or b!660341 b!660343) bm!43031))

(assert (= (or b!660341 b!660343) bm!43034))

(assert (= (or b!660338 b!660343) bm!43028))

(assert (= (or b!660341 b!660328 b!660343) bm!43044))

(assert (= (or b!660341 b!660328 b!660343) bm!43054))

(assert (= (or b!660341 b!660343) bm!43046))

(assert (= (or b!660341 b!660343) bm!43045))

(assert (= (or b!660341 b!660343) bm!43053))

(assert (= (or b!660341 b!660343) bm!43056))

(assert (= (or b!660341 b!660343) bm!43023))

(assert (= (or b!660341 b!660343) bm!43038))

(assert (= (and bm!43038 c!118893) b!660329))

(assert (= (and bm!43038 (not c!118893)) b!660339))

(assert (= (or b!660341 b!660343) bm!43043))

(assert (= (or b!660341 b!660343) bm!43024))

(assert (= (or b!660341 b!660343) bm!43035))

(assert (= (and bm!43035 c!118889) b!660336))

(assert (= (and bm!43035 (not c!118889)) b!660337))

(assert (= (or b!660341 b!660343) bm!43025))

(assert (= (or b!660338 b!660343) bm!43032))

(assert (= (and bm!43032 c!118892) b!660333))

(assert (= (and bm!43032 (not c!118892)) b!660334))

(assert (= (or b!660335 bm!43034) bm!43026))

(assert (= (or b!660335 bm!43038) bm!43036))

(assert (= (or b!660335 b!660343) bm!43058))

(assert (= (or b!660332 bm!43023) bm!43052))

(assert (= (or b!660335 b!660341) bm!43021))

(assert (= (or b!660335 bm!43046) bm!43022))

(assert (= (or b!660335 bm!43056) bm!43042))

(assert (= (or b!660335 bm!43030) bm!43037))

(assert (= (or b!660335 bm!43028) bm!43041))

(assert (= (or b!660335 bm!43054) bm!43049))

(assert (= (or b!660335 bm!43031) bm!43055))

(assert (= (or b!660335 bm!43044) bm!43051))

(assert (= (or b!660335 b!660337) bm!43029))

(assert (= (or b!660332 b!660333) bm!43020))

(assert (= (or b!660335 bm!43035) bm!43039))

(assert (= (or b!660335 bm!43033) bm!43057))

(assert (= (or b!660335 bm!43043) bm!43027))

(assert (= (or b!660335 bm!43024) bm!43048))

(assert (= (or b!660332 b!660333) bm!43040))

(assert (= (or b!660335 bm!43025) bm!43047))

(assert (= (or b!660332 bm!43032) bm!43050))

(assert (= (and d!225939 (not res!293092)) b!660346))

(assert (= (and b!660346 res!293093) b!660331))

(assert (= (and b!660331 res!293091) b!660330))

(declare-fun m!926321 () Bool)

(assert (=> b!660340 m!926321))

(declare-fun m!926323 () Bool)

(assert (=> bm!43040 m!926323))

(declare-fun m!926325 () Bool)

(assert (=> bm!43026 m!926325))

(declare-fun m!926327 () Bool)

(assert (=> bm!43058 m!926327))

(declare-fun m!926329 () Bool)

(assert (=> bm!43042 m!926329))

(declare-fun m!926331 () Bool)

(assert (=> b!660343 m!926331))

(declare-fun m!926333 () Bool)

(assert (=> b!660343 m!926333))

(declare-fun m!926335 () Bool)

(assert (=> b!660343 m!926335))

(declare-fun m!926337 () Bool)

(assert (=> b!660343 m!926337))

(declare-fun m!926339 () Bool)

(assert (=> b!660343 m!926339))

(declare-fun m!926341 () Bool)

(assert (=> b!660343 m!926341))

(assert (=> b!660343 m!926335))

(assert (=> b!660343 m!926335))

(declare-fun m!926343 () Bool)

(assert (=> b!660343 m!926343))

(declare-fun m!926345 () Bool)

(assert (=> b!660343 m!926345))

(assert (=> b!660343 m!926343))

(declare-fun m!926347 () Bool)

(assert (=> b!660343 m!926347))

(declare-fun m!926349 () Bool)

(assert (=> bm!43021 m!926349))

(declare-fun m!926351 () Bool)

(assert (=> bm!43049 m!926351))

(declare-fun m!926353 () Bool)

(assert (=> bm!43022 m!926353))

(declare-fun m!926355 () Bool)

(assert (=> bm!43029 m!926355))

(declare-fun m!926357 () Bool)

(assert (=> b!660328 m!926357))

(declare-fun m!926359 () Bool)

(assert (=> b!660328 m!926359))

(assert (=> b!660328 m!926357))

(assert (=> b!660328 m!926359))

(declare-fun m!926361 () Bool)

(assert (=> b!660328 m!926361))

(declare-fun m!926363 () Bool)

(assert (=> b!660328 m!926363))

(declare-fun m!926365 () Bool)

(assert (=> b!660328 m!926365))

(declare-fun m!926367 () Bool)

(assert (=> b!660328 m!926367))

(declare-fun m!926369 () Bool)

(assert (=> b!660328 m!926369))

(declare-fun m!926371 () Bool)

(assert (=> bm!43041 m!926371))

(declare-fun m!926373 () Bool)

(assert (=> b!660330 m!926373))

(declare-fun m!926375 () Bool)

(assert (=> b!660330 m!926375))

(assert (=> b!660330 m!926329))

(declare-fun m!926377 () Bool)

(assert (=> b!660330 m!926377))

(assert (=> b!660330 m!926375))

(declare-fun m!926379 () Bool)

(assert (=> b!660330 m!926379))

(assert (=> b!660330 m!926329))

(assert (=> b!660330 m!926377))

(declare-fun m!926381 () Bool)

(assert (=> b!660330 m!926381))

(declare-fun m!926383 () Bool)

(assert (=> b!660330 m!926383))

(assert (=> b!660330 m!926373))

(assert (=> b!660330 m!926353))

(assert (=> b!660330 m!926381))

(assert (=> b!660330 m!926353))

(declare-fun m!926385 () Bool)

(assert (=> bm!43045 m!926385))

(declare-fun m!926387 () Bool)

(assert (=> bm!43048 m!926387))

(declare-fun m!926389 () Bool)

(assert (=> bm!43051 m!926389))

(declare-fun m!926391 () Bool)

(assert (=> d!225939 m!926391))

(declare-fun m!926393 () Bool)

(assert (=> d!225939 m!926393))

(declare-fun m!926395 () Bool)

(assert (=> d!225939 m!926395))

(declare-fun m!926397 () Bool)

(assert (=> d!225939 m!926397))

(declare-fun m!926399 () Bool)

(assert (=> bm!43053 m!926399))

(declare-fun m!926401 () Bool)

(assert (=> bm!43037 m!926401))

(declare-fun m!926403 () Bool)

(assert (=> bm!43027 m!926403))

(declare-fun m!926405 () Bool)

(assert (=> bm!43047 m!926405))

(declare-fun m!926407 () Bool)

(assert (=> b!660331 m!926407))

(declare-fun m!926409 () Bool)

(assert (=> b!660331 m!926409))

(assert (=> b!660331 m!926373))

(assert (=> b!660331 m!926407))

(assert (=> b!660331 m!926409))

(declare-fun m!926411 () Bool)

(assert (=> b!660331 m!926411))

(declare-fun m!926413 () Bool)

(assert (=> b!660331 m!926413))

(declare-fun m!926415 () Bool)

(assert (=> bm!43052 m!926415))

(declare-fun m!926417 () Bool)

(assert (=> bm!43057 m!926417))

(declare-fun m!926419 () Bool)

(assert (=> bm!43020 m!926419))

(declare-fun m!926421 () Bool)

(assert (=> bm!43036 m!926421))

(declare-fun m!926423 () Bool)

(assert (=> bm!43039 m!926423))

(declare-fun m!926425 () Bool)

(assert (=> bm!43050 m!926425))

(declare-fun m!926427 () Bool)

(assert (=> bm!43055 m!926427))

(declare-fun m!926429 () Bool)

(assert (=> b!660339 m!926429))

(assert (=> b!660346 m!926373))

(assert (=> b!660130 d!225939))

(declare-fun d!225947 () Bool)

(assert (=> d!225947 (= (inv!9143 (tokens!1251 sepL!1)) (isBalanced!663 (c!118831 (tokens!1251 sepL!1))))))

(declare-fun bs!94418 () Bool)

(assert (= bs!94418 d!225947))

(declare-fun m!926431 () Bool)

(assert (=> bs!94418 m!926431))

(assert (=> b!660131 d!225947))

(declare-fun lt!281512 () List!7151)

(declare-fun c!118896 () Bool)

(declare-fun call!43068 () BalanceConc!5046)

(declare-fun lt!281480 () List!7151)

(declare-fun bm!43059 () Bool)

(assert (=> bm!43059 (= call!43068 (charsOf!916 (ite c!118896 (h!12538 lt!281480) (h!12538 lt!281512))))))

(declare-fun bm!43060 () Bool)

(declare-fun call!43101 () BalanceConc!5046)

(assert (=> bm!43060 (= call!43101 (printTailRec!456 Lexer!1269 (tokens!1251 sepR!1) 0 (BalanceConc!5047 Empty!2517)))))

(declare-fun bm!43061 () Bool)

(declare-fun call!43093 () BalanceConc!5046)

(assert (=> bm!43061 (= call!43093 (print!520 sepR!1))))

(declare-fun bm!43062 () Bool)

(declare-fun call!43096 () List!7150)

(declare-fun call!43094 () List!7150)

(assert (=> bm!43062 (= call!43096 call!43094)))

(declare-fun b!660347 () Bool)

(declare-fun c!118895 () Bool)

(assert (=> b!660347 (= c!118895 (separableTokensPredicate!16 Lexer!1269 (last!52 (tokens!1251 (v!17286 lt!281024))) (head!1377 (tokens!1251 sepR!1)) (rules!8273 (v!17286 lt!281024))))))

(declare-fun lt!281483 () Unit!12386)

(declare-fun lt!281526 () Unit!12386)

(assert (=> b!660347 (= lt!281483 lt!281526)))

(declare-fun lt!281494 () LexerInterface!1271)

(declare-fun lt!281508 () Token!2598)

(assert (=> b!660347 (rulesProduceIndividualToken!526 lt!281494 (rules!8273 (v!17286 lt!281024)) lt!281508)))

(declare-fun lt!281474 () List!7151)

(assert (=> b!660347 (= lt!281526 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!212 lt!281494 (rules!8273 (v!17286 lt!281024)) lt!281474 lt!281508))))

(assert (=> b!660347 (= lt!281508 (head!1377 (tokens!1251 sepR!1)))))

(declare-fun call!43080 () List!7151)

(assert (=> b!660347 (= lt!281474 call!43080)))

(assert (=> b!660347 (= lt!281494 Lexer!1269)))

(declare-fun lt!281531 () Unit!12386)

(declare-fun lt!281479 () Unit!12386)

(assert (=> b!660347 (= lt!281531 lt!281479)))

(declare-fun lt!281498 () LexerInterface!1271)

(declare-fun lt!281485 () Token!2598)

(assert (=> b!660347 (rulesProduceIndividualToken!526 lt!281498 (rules!8273 (v!17286 lt!281024)) lt!281485)))

(declare-fun lt!281528 () List!7151)

(assert (=> b!660347 (= lt!281479 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!212 lt!281498 (rules!8273 (v!17286 lt!281024)) lt!281528 lt!281485))))

(assert (=> b!660347 (= lt!281485 (last!52 (tokens!1251 (v!17286 lt!281024))))))

(declare-fun call!43074 () List!7151)

(assert (=> b!660347 (= lt!281528 call!43074)))

(assert (=> b!660347 (= lt!281498 Lexer!1269)))

(declare-fun e!408379 () Option!1681)

(declare-fun e!408378 () Option!1681)

(assert (=> b!660347 (= e!408379 e!408378)))

(declare-fun bm!43063 () Bool)

(declare-fun call!43100 () Unit!12386)

(declare-fun call!43081 () Unit!12386)

(assert (=> bm!43063 (= call!43100 call!43081)))

(declare-fun b!660348 () Bool)

(declare-fun e!408376 () List!7151)

(declare-fun call!43064 () List!7151)

(assert (=> b!660348 (= e!408376 call!43064)))

(declare-fun bm!43064 () Bool)

(declare-fun call!43067 () List!7150)

(declare-fun call!43079 () List!7150)

(assert (=> bm!43064 (= call!43067 call!43079)))

(declare-fun c!118894 () Bool)

(declare-fun call!43089 () List!7150)

(declare-fun lt!281490 () List!7151)

(declare-fun lt!281509 () LexerInterface!1271)

(declare-fun bm!43065 () Bool)

(declare-fun lt!281502 () LexerInterface!1271)

(declare-fun lt!281484 () List!7151)

(assert (=> bm!43065 (= call!43089 (printList!444 (ite c!118896 lt!281502 (ite c!118894 Lexer!1269 lt!281509)) (ite c!118896 lt!281484 (ite c!118894 Nil!7137 lt!281490))))))

(declare-fun call!43086 () Unit!12386)

(declare-fun bm!43066 () Bool)

(declare-fun call!43098 () List!7151)

(assert (=> bm!43066 (= call!43086 (theoremInvertabilityWhenTokenListSeparable!12 Lexer!1269 (rules!8273 sepR!1) (ite c!118896 call!43098 (ite c!118894 call!43074 call!43080))))))

(declare-fun b!660349 () Bool)

(declare-fun e!408380 () Bool)

(declare-fun lt!281501 () Option!1681)

(assert (=> b!660349 (= e!408380 (= (list!3048 (print!520 (get!2525 lt!281501))) (++!1912 (list!3048 (print!520 (v!17286 lt!281024))) (list!3048 (print!520 sepR!1)))))))

(declare-fun bm!43067 () Bool)

(declare-fun call!43077 () List!7150)

(declare-fun call!43092 () List!7150)

(assert (=> bm!43067 (= call!43077 call!43092)))

(declare-fun bm!43068 () Bool)

(declare-fun call!43099 () List!7151)

(declare-fun lt!281493 () List!7151)

(declare-fun lt!281497 () List!7151)

(assert (=> bm!43068 (= call!43099 (++!1913 (ite c!118896 lt!281484 lt!281490) (ite c!118896 lt!281497 lt!281493)))))

(declare-fun bm!43069 () Bool)

(declare-fun call!43071 () BalanceConc!5046)

(declare-fun call!43082 () BalanceConc!5046)

(assert (=> bm!43069 (= call!43071 call!43082)))

(declare-fun bm!43070 () Bool)

(declare-fun call!43070 () BalanceConc!5046)

(declare-fun call!43090 () BalanceConc!5046)

(assert (=> bm!43070 (= call!43070 call!43090)))

(declare-fun b!660350 () Bool)

(declare-fun res!293094 () Bool)

(assert (=> b!660350 (=> (not res!293094) (not e!408380))))

(assert (=> b!660350 (= res!293094 (= (list!3049 (tokens!1251 (get!2525 lt!281501))) (++!1913 (list!3049 (tokens!1251 (v!17286 lt!281024))) (list!3049 (tokens!1251 sepR!1)))))))

(declare-fun bm!43071 () Bool)

(declare-fun c!118900 () Bool)

(assert (=> bm!43071 (= c!118900 c!118894)))

(declare-fun call!43091 () List!7150)

(declare-fun call!43084 () List!7150)

(assert (=> bm!43071 (= call!43091 call!43084)))

(declare-fun bm!43072 () Bool)

(declare-fun call!43075 () List!7150)

(declare-fun call!43065 () List!7150)

(assert (=> bm!43072 (= call!43075 call!43065)))

(declare-fun bm!43073 () Bool)

(declare-fun call!43102 () List!7150)

(assert (=> bm!43073 (= call!43102 call!43089)))

(declare-fun bm!43074 () Bool)

(declare-fun c!118897 () Bool)

(assert (=> bm!43074 (= c!118897 c!118894)))

(declare-fun call!43088 () List!7150)

(declare-fun call!43078 () List!7150)

(assert (=> bm!43074 (= call!43088 call!43078)))

(declare-fun bm!43075 () Bool)

(declare-fun lt!281533 () LexerInterface!1271)

(declare-fun call!43072 () List!7150)

(declare-fun lt!281517 () LexerInterface!1271)

(assert (=> bm!43075 (= call!43072 (printList!444 (ite c!118896 Lexer!1269 (ite c!118894 lt!281517 lt!281533)) (ite c!118896 Nil!7137 e!408376)))))

(declare-fun bm!43076 () Bool)

(assert (=> bm!43076 (= call!43082 (print!521 Lexer!1269 (tokens!1251 sepR!1)))))

(declare-fun bm!43077 () Bool)

(declare-fun c!118901 () Bool)

(assert (=> bm!43077 (= c!118901 c!118894)))

(declare-fun call!43085 () List!7150)

(assert (=> bm!43077 (= call!43085 call!43072)))

(declare-fun e!408375 () List!7151)

(declare-fun bm!43078 () Bool)

(assert (=> bm!43078 (= call!43078 (printList!444 (ite (or c!118896 c!118894) Lexer!1269 lt!281509) (ite c!118896 call!43098 e!408375)))))

(declare-fun bm!43079 () Bool)

(declare-fun call!43095 () List!7150)

(assert (=> bm!43079 (= call!43095 (list!3048 call!43068))))

(declare-fun d!225949 () Bool)

(declare-fun e!408377 () Bool)

(assert (=> d!225949 e!408377))

(declare-fun res!293095 () Bool)

(assert (=> d!225949 (=> res!293095 e!408377)))

(assert (=> d!225949 (= res!293095 (isEmpty!4783 lt!281501))))

(declare-fun e!408372 () Option!1681)

(assert (=> d!225949 (= lt!281501 e!408372)))

(assert (=> d!225949 (= c!118896 (isEmpty!4787 (tokens!1251 sepR!1)))))

(declare-fun lt!281523 () Unit!12386)

(assert (=> d!225949 (= lt!281523 (lemmaInvariant!82 (v!17286 lt!281024)))))

(declare-fun lt!281500 () Unit!12386)

(assert (=> d!225949 (= lt!281500 (lemmaInvariant!82 sepR!1))))

(assert (=> d!225949 (= (rules!8273 (v!17286 lt!281024)) (rules!8273 sepR!1))))

(assert (=> d!225949 (= (append!262 (v!17286 lt!281024) sepR!1) lt!281501)))

(declare-fun lt!281532 () List!7151)

(declare-fun bm!43080 () Bool)

(assert (=> bm!43080 (= call!43092 (printList!444 (ite c!118896 lt!281502 (ite c!118894 Lexer!1269 lt!281533)) (ite c!118896 lt!281497 (ite c!118894 (t!86193 lt!281512) lt!281532))))))

(declare-fun b!660351 () Bool)

(declare-fun e!408373 () List!7150)

(assert (=> b!660351 (= e!408373 call!43084)))

(declare-fun bm!43081 () Bool)

(declare-fun call!43066 () BalanceConc!5046)

(assert (=> bm!43081 (= call!43066 (print!520 (v!17286 lt!281024)))))

(declare-fun b!660352 () Bool)

(declare-fun e!408374 () List!7150)

(assert (=> b!660352 (= e!408374 call!43095)))

(declare-fun b!660353 () Bool)

(assert (=> b!660353 (= e!408374 call!43102)))

(declare-fun bm!43082 () Bool)

(declare-fun call!43087 () Unit!12386)

(assert (=> bm!43082 (= call!43087 call!43086)))

(declare-fun bm!43083 () Bool)

(assert (=> bm!43083 (= call!43080 call!43098)))

(declare-fun b!660354 () Bool)

(assert (=> b!660354 (= e!408372 (Some!1680 (v!17286 lt!281024)))))

(assert (=> b!660354 (= lt!281502 Lexer!1269)))

(declare-fun call!43073 () List!7151)

(assert (=> b!660354 (= lt!281484 call!43073)))

(assert (=> b!660354 (= lt!281497 Nil!7137)))

(declare-fun lt!281505 () Unit!12386)

(declare-fun call!43083 () Unit!12386)

(assert (=> b!660354 (= lt!281505 call!43083)))

(assert (=> b!660354 (= call!43065 call!43079)))

(declare-fun lt!281488 () Unit!12386)

(assert (=> b!660354 (= lt!281488 lt!281505)))

(assert (=> b!660354 (= call!43072 Nil!7136)))

(declare-fun lt!281536 () Unit!12386)

(declare-fun Unit!12406 () Unit!12386)

(assert (=> b!660354 (= lt!281536 Unit!12406)))

(declare-fun lt!281521 () Unit!12386)

(assert (=> b!660354 (= lt!281521 call!43081)))

(assert (=> b!660354 (= call!43066 call!43090)))

(declare-fun lt!281499 () Unit!12386)

(declare-fun Unit!12407 () Unit!12386)

(assert (=> b!660354 (= lt!281499 Unit!12407)))

(declare-fun lt!281530 () Unit!12386)

(assert (=> b!660354 (= lt!281530 call!43086)))

(assert (=> b!660354 (= call!43093 call!43082)))

(declare-fun lt!281504 () Unit!12386)

(declare-fun Unit!12408 () Unit!12386)

(assert (=> b!660354 (= lt!281504 Unit!12408)))

(assert (=> b!660354 (= call!43082 call!43101)))

(declare-fun lt!281515 () Unit!12386)

(declare-fun Unit!12409 () Unit!12386)

(assert (=> b!660354 (= lt!281515 Unit!12409)))

(assert (=> b!660354 (= lt!281480 call!43098)))

(declare-fun c!118898 () Bool)

(assert (=> b!660354 (= c!118898 ((_ is Cons!7137) lt!281480))))

(assert (=> b!660354 (= call!43078 e!408373)))

(declare-fun lt!281524 () Unit!12386)

(declare-fun Unit!12410 () Unit!12386)

(assert (=> b!660354 (= lt!281524 Unit!12410)))

(declare-fun b!660355 () Bool)

(assert (=> b!660355 (= e!408375 call!43074)))

(declare-fun lt!281495 () List!7151)

(declare-fun lt!281503 () List!7151)

(declare-fun lt!281476 () List!7151)

(declare-fun bm!43084 () Bool)

(declare-fun lt!281475 () List!7151)

(assert (=> bm!43084 (= call!43064 (++!1913 (ite c!118894 lt!281495 lt!281475) (ite c!118894 lt!281476 lt!281503)))))

(declare-fun b!660356 () Bool)

(assert (=> b!660356 (= e!408375 call!43099)))

(declare-fun bm!43085 () Bool)

(declare-fun call!43076 () BalanceConc!5046)

(assert (=> bm!43085 (= call!43076 call!43093)))

(declare-fun bm!43086 () Bool)

(assert (=> bm!43086 (= call!43079 (++!1912 (ite c!118896 call!43089 call!43096) (ite c!118896 call!43092 (ite c!118894 call!43075 call!43077))))))

(declare-fun bm!43087 () Bool)

(assert (=> bm!43087 (= call!43081 (theoremInvertabilityWhenTokenListSeparable!12 Lexer!1269 (rules!8273 (v!17286 lt!281024)) (ite c!118896 call!43073 (ite c!118894 call!43080 call!43074))))))

(declare-fun bm!43088 () Bool)

(assert (=> bm!43088 (= call!43073 (list!3049 (ite c!118896 (tokens!1251 (v!17286 lt!281024)) (ite c!118894 (tokens!1251 sepR!1) (tokens!1251 (v!17286 lt!281024))))))))

(declare-fun b!660357 () Bool)

(declare-fun e!408371 () List!7150)

(assert (=> b!660357 (= e!408371 call!43091)))

(declare-fun b!660358 () Bool)

(declare-fun lt!281477 () List!7151)

(assert (=> b!660358 (= e!408376 (++!1913 lt!281477 lt!281532))))

(declare-fun b!660359 () Bool)

(assert (=> b!660359 (= e!408372 e!408379)))

(assert (=> b!660359 (= c!118894 (isEmpty!4787 (tokens!1251 (v!17286 lt!281024))))))

(declare-fun bm!43089 () Bool)

(assert (=> bm!43089 (= call!43084 (++!1912 (ite c!118896 call!43095 e!408374) (ite c!118896 call!43094 (ite c!118894 call!43077 call!43075))))))

(declare-fun b!660360 () Bool)

(declare-fun lt!281478 () Unit!12386)

(declare-fun Unit!12411 () Unit!12386)

(assert (=> b!660360 (= lt!281478 Unit!12411)))

(assert (=> b!660360 (= call!43088 e!408371)))

(declare-fun c!118899 () Bool)

(assert (=> b!660360 (= c!118899 ((_ is Cons!7137) lt!281512))))

(assert (=> b!660360 (= lt!281512 call!43074)))

(declare-fun lt!281487 () Unit!12386)

(declare-fun Unit!12412 () Unit!12386)

(assert (=> b!660360 (= lt!281487 Unit!12412)))

(assert (=> b!660360 (= call!43071 call!43101)))

(declare-fun lt!281527 () Unit!12386)

(declare-fun Unit!12413 () Unit!12386)

(assert (=> b!660360 (= lt!281527 Unit!12413)))

(assert (=> b!660360 (= call!43076 call!43071)))

(declare-fun lt!281520 () Unit!12386)

(assert (=> b!660360 (= lt!281520 call!43087)))

(declare-fun lt!281518 () Unit!12386)

(declare-fun Unit!12414 () Unit!12386)

(assert (=> b!660360 (= lt!281518 Unit!12414)))

(declare-fun call!43097 () BalanceConc!5046)

(assert (=> b!660360 (= call!43097 call!43070)))

(declare-fun lt!281491 () Unit!12386)

(assert (=> b!660360 (= lt!281491 call!43100)))

(declare-fun lt!281482 () Unit!12386)

(declare-fun Unit!12415 () Unit!12386)

(assert (=> b!660360 (= lt!281482 Unit!12415)))

(assert (=> b!660360 (= call!43102 Nil!7136)))

(declare-fun lt!281481 () Unit!12386)

(declare-fun lt!281519 () Unit!12386)

(assert (=> b!660360 (= lt!281481 lt!281519)))

(assert (=> b!660360 (= call!43085 call!43067)))

(declare-fun call!43069 () Unit!12386)

(assert (=> b!660360 (= lt!281519 call!43069)))

(assert (=> b!660360 (= lt!281476 call!43074)))

(assert (=> b!660360 (= lt!281495 Nil!7137)))

(assert (=> b!660360 (= lt!281517 Lexer!1269)))

(assert (=> b!660360 (= e!408379 (Some!1680 sepR!1))))

(declare-fun bm!43090 () Bool)

(assert (=> bm!43090 (= call!43098 (list!3049 (ite c!118896 (tokens!1251 sepR!1) (ite c!118894 (tokens!1251 (v!17286 lt!281024)) (tokens!1251 sepR!1)))))))

(declare-fun b!660361 () Bool)

(assert (=> b!660361 (= e!408373 Nil!7136)))

(declare-fun b!660362 () Bool)

(assert (=> b!660362 (= e!408378 (Some!1680 (PrintableTokens!181 (rules!8273 (v!17286 lt!281024)) (++!1914 (tokens!1251 (v!17286 lt!281024)) (tokens!1251 sepR!1)))))))

(declare-fun lt!281516 () LexerInterface!1271)

(assert (=> b!660362 (= lt!281516 Lexer!1269)))

(assert (=> b!660362 (= lt!281475 call!43074)))

(assert (=> b!660362 (= lt!281503 call!43080)))

(declare-fun lt!281514 () Unit!12386)

(assert (=> b!660362 (= lt!281514 (tokensListTwoByTwoPredicateConcatSeparableTokensList!7 lt!281516 lt!281475 lt!281503 (rules!8273 (v!17286 lt!281024))))))

(declare-fun lt!281492 () Unit!12386)

(assert (=> b!660362 (= lt!281492 (lemmaRulesProduceEachTokenIndividuallyConcat!7 lt!281516 (rules!8273 (v!17286 lt!281024)) lt!281475 lt!281503))))

(assert (=> b!660362 (rulesProduceEachTokenIndividuallyList!345 lt!281516 (rules!8273 (v!17286 lt!281024)) call!43064)))

(declare-fun lt!281511 () Unit!12386)

(assert (=> b!660362 (= lt!281511 lt!281492)))

(assert (=> b!660362 (tokensListTwoByTwoPredicateSeparableList!14 lt!281516 call!43064 (rules!8273 (v!17286 lt!281024)))))

(declare-fun lt!281489 () Unit!12386)

(assert (=> b!660362 (= lt!281489 lt!281514)))

(assert (=> b!660362 (= lt!281533 Lexer!1269)))

(assert (=> b!660362 (= lt!281477 call!43074)))

(assert (=> b!660362 (= lt!281532 call!43080)))

(declare-fun lt!281486 () Unit!12386)

(assert (=> b!660362 (= lt!281486 call!43083)))

(assert (=> b!660362 (= call!43085 call!43067)))

(declare-fun lt!281506 () Unit!12386)

(assert (=> b!660362 (= lt!281506 lt!281486)))

(declare-fun lt!281513 () Unit!12386)

(assert (=> b!660362 (= lt!281513 call!43100)))

(assert (=> b!660362 (= call!43097 call!43070)))

(declare-fun lt!281507 () Unit!12386)

(declare-fun Unit!12416 () Unit!12386)

(assert (=> b!660362 (= lt!281507 Unit!12416)))

(declare-fun lt!281496 () Unit!12386)

(assert (=> b!660362 (= lt!281496 call!43087)))

(assert (=> b!660362 (= call!43076 call!43071)))

(declare-fun lt!281535 () Unit!12386)

(declare-fun Unit!12417 () Unit!12386)

(assert (=> b!660362 (= lt!281535 Unit!12417)))

(declare-fun lt!281510 () PrintableTokens!180)

(assert (=> b!660362 (= lt!281510 (PrintableTokens!181 (rules!8273 (v!17286 lt!281024)) (++!1914 (tokens!1251 (v!17286 lt!281024)) (tokens!1251 sepR!1))))))

(declare-fun lt!281525 () BalanceConc!5048)

(assert (=> b!660362 (= lt!281525 (++!1914 (tokens!1251 (v!17286 lt!281024)) (tokens!1251 sepR!1)))))

(declare-fun lt!281529 () Unit!12386)

(assert (=> b!660362 (= lt!281529 (theoremInvertabilityWhenTokenListSeparable!12 Lexer!1269 (rules!8273 (v!17286 lt!281024)) (list!3049 (++!1914 (tokens!1251 (v!17286 lt!281024)) (tokens!1251 sepR!1)))))))

(assert (=> b!660362 (= (print!520 (PrintableTokens!181 (rules!8273 (v!17286 lt!281024)) (++!1914 (tokens!1251 (v!17286 lt!281024)) (tokens!1251 sepR!1)))) (print!521 Lexer!1269 (++!1914 (tokens!1251 (v!17286 lt!281024)) (tokens!1251 sepR!1))))))

(declare-fun lt!281522 () Unit!12386)

(declare-fun Unit!12418 () Unit!12386)

(assert (=> b!660362 (= lt!281522 Unit!12418)))

(assert (=> b!660362 (= lt!281509 Lexer!1269)))

(assert (=> b!660362 (= lt!281490 call!43074)))

(assert (=> b!660362 (= lt!281493 call!43080)))

(declare-fun lt!281534 () Unit!12386)

(assert (=> b!660362 (= lt!281534 call!43069)))

(assert (=> b!660362 (= call!43088 call!43091)))

(declare-fun lt!281537 () Unit!12386)

(assert (=> b!660362 (= lt!281537 lt!281534)))

(declare-fun b!660363 () Bool)

(assert (=> b!660363 (= e!408371 Nil!7136)))

(declare-fun bm!43091 () Bool)

(assert (=> bm!43091 (= call!43094 (printList!444 (ite c!118896 Lexer!1269 (ite c!118894 lt!281517 lt!281533)) (ite c!118896 (t!86193 lt!281480) (ite c!118894 lt!281495 lt!281477))))))

(declare-fun bm!43092 () Bool)

(assert (=> bm!43092 (= call!43069 (lemmaPrintConcatSameAsConcatPrint!7 (ite c!118894 lt!281517 lt!281509) (ite c!118894 lt!281495 lt!281490) (ite c!118894 lt!281476 lt!281493)))))

(declare-fun bm!43093 () Bool)

(assert (=> bm!43093 (= call!43074 call!43073)))

(declare-fun bm!43094 () Bool)

(assert (=> bm!43094 (= call!43090 (print!521 Lexer!1269 (tokens!1251 (v!17286 lt!281024))))))

(declare-fun bm!43095 () Bool)

(assert (=> bm!43095 (= call!43097 call!43066)))

(declare-fun bm!43096 () Bool)

(assert (=> bm!43096 (= call!43065 (printList!444 (ite c!118896 lt!281502 (ite c!118894 lt!281517 lt!281509)) (ite c!118896 call!43099 (ite c!118894 lt!281476 lt!281493))))))

(declare-fun b!660364 () Bool)

(assert (=> b!660364 (= e!408378 None!1680)))

(declare-fun b!660365 () Bool)

(assert (=> b!660365 (= e!408377 e!408380)))

(declare-fun res!293096 () Bool)

(assert (=> b!660365 (=> (not res!293096) (not e!408380))))

(assert (=> b!660365 (= res!293096 (= (rules!8273 (get!2525 lt!281501)) (rules!8273 (v!17286 lt!281024))))))

(declare-fun bm!43097 () Bool)

(assert (=> bm!43097 (= call!43083 (lemmaPrintConcatSameAsConcatPrint!7 (ite c!118896 lt!281502 lt!281533) (ite c!118896 lt!281484 lt!281477) (ite c!118896 lt!281497 lt!281532)))))

(assert (= (and d!225949 c!118896) b!660354))

(assert (= (and d!225949 (not c!118896)) b!660359))

(assert (= (and b!660354 c!118898) b!660351))

(assert (= (and b!660354 (not c!118898)) b!660361))

(assert (= (and b!660359 c!118894) b!660360))

(assert (= (and b!660359 (not c!118894)) b!660347))

(assert (= (and b!660360 c!118899) b!660357))

(assert (= (and b!660360 (not c!118899)) b!660363))

(assert (= (and b!660347 c!118895) b!660362))

(assert (= (and b!660347 (not c!118895)) b!660364))

(assert (= (or b!660360 b!660362) bm!43072))

(assert (= (or b!660360 b!660362) bm!43069))

(assert (= (or b!660360 b!660362) bm!43070))

(assert (= (or b!660360 b!660362) bm!43073))

(assert (= (or b!660357 b!660362) bm!43067))

(assert (= (or b!660360 b!660347 b!660362) bm!43083))

(assert (= (or b!660360 b!660347 b!660362) bm!43093))

(assert (= (or b!660360 b!660362) bm!43085))

(assert (= (or b!660360 b!660362) bm!43084))

(assert (= (or b!660360 b!660362) bm!43092))

(assert (= (or b!660360 b!660362) bm!43095))

(assert (= (or b!660360 b!660362) bm!43062))

(assert (= (or b!660360 b!660362) bm!43077))

(assert (= (and bm!43077 c!118901) b!660348))

(assert (= (and bm!43077 (not c!118901)) b!660358))

(assert (= (or b!660360 b!660362) bm!43082))

(assert (= (or b!660360 b!660362) bm!43063))

(assert (= (or b!660360 b!660362) bm!43074))

(assert (= (and bm!43074 c!118897) b!660355))

(assert (= (and bm!43074 (not c!118897)) b!660356))

(assert (= (or b!660360 b!660362) bm!43064))

(assert (= (or b!660357 b!660362) bm!43071))

(assert (= (and bm!43071 c!118900) b!660352))

(assert (= (and bm!43071 (not c!118900)) b!660353))

(assert (= (or b!660354 bm!43073) bm!43065))

(assert (= (or b!660354 bm!43077) bm!43075))

(assert (= (or b!660354 b!660362) bm!43097))

(assert (= (or b!660351 bm!43062) bm!43091))

(assert (= (or b!660354 b!660360) bm!43060))

(assert (= (or b!660354 bm!43085) bm!43061))

(assert (= (or b!660354 bm!43095) bm!43081))

(assert (= (or b!660354 bm!43069) bm!43076))

(assert (= (or b!660354 bm!43067) bm!43080))

(assert (= (or b!660354 bm!43093) bm!43088))

(assert (= (or b!660354 bm!43070) bm!43094))

(assert (= (or b!660354 bm!43083) bm!43090))

(assert (= (or b!660354 b!660356) bm!43068))

(assert (= (or b!660351 b!660352) bm!43059))

(assert (= (or b!660354 bm!43074) bm!43078))

(assert (= (or b!660354 bm!43072) bm!43096))

(assert (= (or b!660354 bm!43082) bm!43066))

(assert (= (or b!660354 bm!43063) bm!43087))

(assert (= (or b!660351 b!660352) bm!43079))

(assert (= (or b!660354 bm!43064) bm!43086))

(assert (= (or b!660351 bm!43071) bm!43089))

(assert (= (and d!225949 (not res!293095)) b!660365))

(assert (= (and b!660365 res!293096) b!660350))

(assert (= (and b!660350 res!293094) b!660349))

(declare-fun m!926433 () Bool)

(assert (=> b!660359 m!926433))

(declare-fun m!926435 () Bool)

(assert (=> bm!43079 m!926435))

(declare-fun m!926437 () Bool)

(assert (=> bm!43065 m!926437))

(declare-fun m!926439 () Bool)

(assert (=> bm!43097 m!926439))

(declare-fun m!926441 () Bool)

(assert (=> bm!43081 m!926441))

(declare-fun m!926443 () Bool)

(assert (=> b!660362 m!926443))

(declare-fun m!926445 () Bool)

(assert (=> b!660362 m!926445))

(declare-fun m!926447 () Bool)

(assert (=> b!660362 m!926447))

(declare-fun m!926449 () Bool)

(assert (=> b!660362 m!926449))

(declare-fun m!926451 () Bool)

(assert (=> b!660362 m!926451))

(declare-fun m!926453 () Bool)

(assert (=> b!660362 m!926453))

(assert (=> b!660362 m!926447))

(assert (=> b!660362 m!926447))

(declare-fun m!926455 () Bool)

(assert (=> b!660362 m!926455))

(declare-fun m!926457 () Bool)

(assert (=> b!660362 m!926457))

(assert (=> b!660362 m!926455))

(declare-fun m!926459 () Bool)

(assert (=> b!660362 m!926459))

(declare-fun m!926461 () Bool)

(assert (=> bm!43060 m!926461))

(declare-fun m!926463 () Bool)

(assert (=> bm!43088 m!926463))

(declare-fun m!926465 () Bool)

(assert (=> bm!43061 m!926465))

(declare-fun m!926467 () Bool)

(assert (=> bm!43068 m!926467))

(declare-fun m!926469 () Bool)

(assert (=> b!660347 m!926469))

(declare-fun m!926471 () Bool)

(assert (=> b!660347 m!926471))

(assert (=> b!660347 m!926469))

(assert (=> b!660347 m!926471))

(declare-fun m!926473 () Bool)

(assert (=> b!660347 m!926473))

(declare-fun m!926475 () Bool)

(assert (=> b!660347 m!926475))

(declare-fun m!926477 () Bool)

(assert (=> b!660347 m!926477))

(declare-fun m!926479 () Bool)

(assert (=> b!660347 m!926479))

(declare-fun m!926481 () Bool)

(assert (=> b!660347 m!926481))

(declare-fun m!926483 () Bool)

(assert (=> bm!43080 m!926483))

(declare-fun m!926485 () Bool)

(assert (=> b!660349 m!926485))

(declare-fun m!926487 () Bool)

(assert (=> b!660349 m!926487))

(assert (=> b!660349 m!926441))

(declare-fun m!926489 () Bool)

(assert (=> b!660349 m!926489))

(assert (=> b!660349 m!926487))

(declare-fun m!926491 () Bool)

(assert (=> b!660349 m!926491))

(assert (=> b!660349 m!926441))

(assert (=> b!660349 m!926489))

(declare-fun m!926493 () Bool)

(assert (=> b!660349 m!926493))

(declare-fun m!926495 () Bool)

(assert (=> b!660349 m!926495))

(assert (=> b!660349 m!926485))

(assert (=> b!660349 m!926465))

(assert (=> b!660349 m!926493))

(assert (=> b!660349 m!926465))

(declare-fun m!926497 () Bool)

(assert (=> bm!43084 m!926497))

(declare-fun m!926499 () Bool)

(assert (=> bm!43087 m!926499))

(declare-fun m!926501 () Bool)

(assert (=> bm!43090 m!926501))

(declare-fun m!926503 () Bool)

(assert (=> d!225949 m!926503))

(declare-fun m!926505 () Bool)

(assert (=> d!225949 m!926505))

(declare-fun m!926507 () Bool)

(assert (=> d!225949 m!926507))

(declare-fun m!926509 () Bool)

(assert (=> d!225949 m!926509))

(declare-fun m!926511 () Bool)

(assert (=> bm!43092 m!926511))

(declare-fun m!926513 () Bool)

(assert (=> bm!43076 m!926513))

(declare-fun m!926515 () Bool)

(assert (=> bm!43066 m!926515))

(declare-fun m!926517 () Bool)

(assert (=> bm!43086 m!926517))

(declare-fun m!926519 () Bool)

(assert (=> b!660350 m!926519))

(declare-fun m!926521 () Bool)

(assert (=> b!660350 m!926521))

(assert (=> b!660350 m!926485))

(assert (=> b!660350 m!926519))

(assert (=> b!660350 m!926521))

(declare-fun m!926523 () Bool)

(assert (=> b!660350 m!926523))

(declare-fun m!926525 () Bool)

(assert (=> b!660350 m!926525))

(declare-fun m!926527 () Bool)

(assert (=> bm!43091 m!926527))

(declare-fun m!926529 () Bool)

(assert (=> bm!43096 m!926529))

(declare-fun m!926531 () Bool)

(assert (=> bm!43059 m!926531))

(declare-fun m!926533 () Bool)

(assert (=> bm!43075 m!926533))

(declare-fun m!926535 () Bool)

(assert (=> bm!43078 m!926535))

(declare-fun m!926537 () Bool)

(assert (=> bm!43089 m!926537))

(declare-fun m!926539 () Bool)

(assert (=> bm!43094 m!926539))

(declare-fun m!926541 () Bool)

(assert (=> b!660358 m!926541))

(assert (=> b!660365 m!926485))

(assert (=> b!660133 d!225949))

(declare-fun d!225951 () Bool)

(declare-fun c!118902 () Bool)

(assert (=> d!225951 (= c!118902 ((_ is Node!2518) (c!118831 (tokens!1251 sepR!1))))))

(declare-fun e!408381 () Bool)

(assert (=> d!225951 (= (inv!9142 (c!118831 (tokens!1251 sepR!1))) e!408381)))

(declare-fun b!660366 () Bool)

(assert (=> b!660366 (= e!408381 (inv!9146 (c!118831 (tokens!1251 sepR!1))))))

(declare-fun b!660367 () Bool)

(declare-fun e!408382 () Bool)

(assert (=> b!660367 (= e!408381 e!408382)))

(declare-fun res!293097 () Bool)

(assert (=> b!660367 (= res!293097 (not ((_ is Leaf!3753) (c!118831 (tokens!1251 sepR!1)))))))

(assert (=> b!660367 (=> res!293097 e!408382)))

(declare-fun b!660368 () Bool)

(assert (=> b!660368 (= e!408382 (inv!9147 (c!118831 (tokens!1251 sepR!1))))))

(assert (= (and d!225951 c!118902) b!660366))

(assert (= (and d!225951 (not c!118902)) b!660367))

(assert (= (and b!660367 (not res!293097)) b!660368))

(declare-fun m!926543 () Bool)

(assert (=> b!660366 m!926543))

(declare-fun m!926545 () Bool)

(assert (=> b!660368 m!926545))

(assert (=> b!660122 d!225951))

(declare-fun d!225953 () Bool)

(assert (=> d!225953 (= (usesJsonRules!0 sepR!1) (= (rules!8273 sepR!1) (rules!109 JsonLexer!227)))))

(declare-fun bs!94419 () Bool)

(assert (= bs!94419 d!225953))

(assert (=> bs!94419 m!926011))

(assert (=> b!660132 d!225953))

(declare-fun d!225955 () Bool)

(assert (=> d!225955 (= (usesJsonRules!0 sepL!1) (= (rules!8273 sepL!1) (rules!109 JsonLexer!227)))))

(declare-fun bs!94420 () Bool)

(assert (= bs!94420 d!225955))

(assert (=> bs!94420 m!926011))

(assert (=> b!660123 d!225955))

(declare-fun d!225957 () Bool)

(assert (=> d!225957 (= (isDefined!1430 lt!281025) (not (isEmpty!4783 lt!281025)))))

(declare-fun bs!94421 () Bool)

(assert (= bs!94421 d!225957))

(assert (=> bs!94421 m!925965))

(assert (=> b!660125 d!225957))

(declare-fun d!225959 () Bool)

(declare-fun c!118903 () Bool)

(assert (=> d!225959 (= c!118903 ((_ is Node!2518) (c!118831 (tokens!1251 sepL!1))))))

(declare-fun e!408383 () Bool)

(assert (=> d!225959 (= (inv!9142 (c!118831 (tokens!1251 sepL!1))) e!408383)))

(declare-fun b!660369 () Bool)

(assert (=> b!660369 (= e!408383 (inv!9146 (c!118831 (tokens!1251 sepL!1))))))

(declare-fun b!660370 () Bool)

(declare-fun e!408384 () Bool)

(assert (=> b!660370 (= e!408383 e!408384)))

(declare-fun res!293098 () Bool)

(assert (=> b!660370 (= res!293098 (not ((_ is Leaf!3753) (c!118831 (tokens!1251 sepL!1)))))))

(assert (=> b!660370 (=> res!293098 e!408384)))

(declare-fun b!660371 () Bool)

(assert (=> b!660371 (= e!408384 (inv!9147 (c!118831 (tokens!1251 sepL!1))))))

(assert (= (and d!225959 c!118903) b!660369))

(assert (= (and d!225959 (not c!118903)) b!660370))

(assert (= (and b!660370 (not res!293098)) b!660371))

(declare-fun m!926547 () Bool)

(assert (=> b!660369 m!926547))

(declare-fun m!926549 () Bool)

(assert (=> b!660371 m!926549))

(assert (=> b!660124 d!225959))

(declare-fun d!225961 () Bool)

(assert (=> d!225961 (= (isEmpty!4783 lt!281025) (not ((_ is Some!1680) lt!281025)))))

(assert (=> b!660126 d!225961))

(declare-fun d!225963 () Bool)

(assert (=> d!225963 (= (inv!9143 (tokens!1251 sepR!1)) (isBalanced!663 (c!118831 (tokens!1251 sepR!1))))))

(declare-fun bs!94422 () Bool)

(assert (= bs!94422 d!225963))

(declare-fun m!926551 () Bool)

(assert (=> bs!94422 m!926551))

(assert (=> b!660127 d!225963))

(declare-fun e!408389 () Bool)

(declare-fun tp!201295 () Bool)

(declare-fun tp!201293 () Bool)

(declare-fun b!660380 () Bool)

(assert (=> b!660380 (= e!408389 (and (inv!9142 (left!5786 (c!118831 (tokens!1251 objs!31)))) tp!201295 (inv!9142 (right!6116 (c!118831 (tokens!1251 objs!31)))) tp!201293))))

(declare-fun b!660382 () Bool)

(declare-fun e!408390 () Bool)

(declare-fun tp!201294 () Bool)

(assert (=> b!660382 (= e!408390 tp!201294)))

(declare-fun b!660381 () Bool)

(declare-fun inv!9150 (IArray!5037) Bool)

(assert (=> b!660381 (= e!408389 (and (inv!9150 (xs!5167 (c!118831 (tokens!1251 objs!31)))) e!408390))))

(assert (=> b!660129 (= tp!201252 (and (inv!9142 (c!118831 (tokens!1251 objs!31))) e!408389))))

(assert (= (and b!660129 ((_ is Node!2518) (c!118831 (tokens!1251 objs!31)))) b!660380))

(assert (= b!660381 b!660382))

(assert (= (and b!660129 ((_ is Leaf!3753) (c!118831 (tokens!1251 objs!31)))) b!660381))

(declare-fun m!926553 () Bool)

(assert (=> b!660380 m!926553))

(declare-fun m!926555 () Bool)

(assert (=> b!660380 m!926555))

(declare-fun m!926557 () Bool)

(assert (=> b!660381 m!926557))

(assert (=> b!660129 m!925993))

(declare-fun b!660393 () Bool)

(declare-fun b_free!19053 () Bool)

(declare-fun b_next!19117 () Bool)

(assert (=> b!660393 (= b_free!19053 (not b_next!19117))))

(declare-fun tp!201304 () Bool)

(declare-fun b_and!62847 () Bool)

(assert (=> b!660393 (= tp!201304 b_and!62847)))

(declare-fun b_free!19055 () Bool)

(declare-fun b_next!19119 () Bool)

(assert (=> b!660393 (= b_free!19055 (not b_next!19119))))

(declare-fun tp!201302 () Bool)

(declare-fun b_and!62849 () Bool)

(assert (=> b!660393 (= tp!201302 b_and!62849)))

(declare-fun e!408399 () Bool)

(assert (=> b!660393 (= e!408399 (and tp!201304 tp!201302))))

(declare-fun b!660392 () Bool)

(declare-fun e!408400 () Bool)

(declare-fun inv!9137 (String!9098) Bool)

(declare-fun inv!9151 (TokenValueInjection!2696) Bool)

(assert (=> b!660392 (= e!408400 (and (inv!9137 (tag!1700 (h!12539 (rules!8273 objs!31)))) (inv!9151 (transformation!1438 (h!12539 (rules!8273 objs!31)))) e!408399))))

(declare-fun b!660391 () Bool)

(declare-fun e!408402 () Bool)

(declare-fun tp!201303 () Bool)

(assert (=> b!660391 (= e!408402 (and e!408400 tp!201303))))

(assert (=> b!660128 (= tp!201251 e!408402)))

(assert (= b!660392 b!660393))

(assert (= b!660391 b!660392))

(assert (= (and b!660128 ((_ is Cons!7138) (rules!8273 objs!31))) b!660391))

(declare-fun m!926559 () Bool)

(assert (=> b!660392 m!926559))

(declare-fun m!926561 () Bool)

(assert (=> b!660392 m!926561))

(declare-fun tp!201307 () Bool)

(declare-fun e!408403 () Bool)

(declare-fun b!660394 () Bool)

(declare-fun tp!201305 () Bool)

(assert (=> b!660394 (= e!408403 (and (inv!9142 (left!5786 (c!118831 (tokens!1251 sepL!1)))) tp!201307 (inv!9142 (right!6116 (c!118831 (tokens!1251 sepL!1)))) tp!201305))))

(declare-fun b!660396 () Bool)

(declare-fun e!408404 () Bool)

(declare-fun tp!201306 () Bool)

(assert (=> b!660396 (= e!408404 tp!201306)))

(declare-fun b!660395 () Bool)

(assert (=> b!660395 (= e!408403 (and (inv!9150 (xs!5167 (c!118831 (tokens!1251 sepL!1)))) e!408404))))

(assert (=> b!660124 (= tp!201254 (and (inv!9142 (c!118831 (tokens!1251 sepL!1))) e!408403))))

(assert (= (and b!660124 ((_ is Node!2518) (c!118831 (tokens!1251 sepL!1)))) b!660394))

(assert (= b!660395 b!660396))

(assert (= (and b!660124 ((_ is Leaf!3753) (c!118831 (tokens!1251 sepL!1)))) b!660395))

(declare-fun m!926563 () Bool)

(assert (=> b!660394 m!926563))

(declare-fun m!926565 () Bool)

(assert (=> b!660394 m!926565))

(declare-fun m!926567 () Bool)

(assert (=> b!660395 m!926567))

(assert (=> b!660124 m!925985))

(declare-fun b!660399 () Bool)

(declare-fun b_free!19057 () Bool)

(declare-fun b_next!19121 () Bool)

(assert (=> b!660399 (= b_free!19057 (not b_next!19121))))

(declare-fun tp!201310 () Bool)

(declare-fun b_and!62851 () Bool)

(assert (=> b!660399 (= tp!201310 b_and!62851)))

(declare-fun b_free!19059 () Bool)

(declare-fun b_next!19123 () Bool)

(assert (=> b!660399 (= b_free!19059 (not b_next!19123))))

(declare-fun tp!201308 () Bool)

(declare-fun b_and!62853 () Bool)

(assert (=> b!660399 (= tp!201308 b_and!62853)))

(declare-fun e!408405 () Bool)

(assert (=> b!660399 (= e!408405 (and tp!201310 tp!201308))))

(declare-fun b!660398 () Bool)

(declare-fun e!408406 () Bool)

(assert (=> b!660398 (= e!408406 (and (inv!9137 (tag!1700 (h!12539 (rules!8273 sepL!1)))) (inv!9151 (transformation!1438 (h!12539 (rules!8273 sepL!1)))) e!408405))))

(declare-fun b!660397 () Bool)

(declare-fun e!408408 () Bool)

(declare-fun tp!201309 () Bool)

(assert (=> b!660397 (= e!408408 (and e!408406 tp!201309))))

(assert (=> b!660131 (= tp!201256 e!408408)))

(assert (= b!660398 b!660399))

(assert (= b!660397 b!660398))

(assert (= (and b!660131 ((_ is Cons!7138) (rules!8273 sepL!1))) b!660397))

(declare-fun m!926569 () Bool)

(assert (=> b!660398 m!926569))

(declare-fun m!926571 () Bool)

(assert (=> b!660398 m!926571))

(declare-fun b!660400 () Bool)

(declare-fun tp!201313 () Bool)

(declare-fun tp!201311 () Bool)

(declare-fun e!408409 () Bool)

(assert (=> b!660400 (= e!408409 (and (inv!9142 (left!5786 (c!118831 (tokens!1251 sepR!1)))) tp!201313 (inv!9142 (right!6116 (c!118831 (tokens!1251 sepR!1)))) tp!201311))))

(declare-fun b!660402 () Bool)

(declare-fun e!408410 () Bool)

(declare-fun tp!201312 () Bool)

(assert (=> b!660402 (= e!408410 tp!201312)))

(declare-fun b!660401 () Bool)

(assert (=> b!660401 (= e!408409 (and (inv!9150 (xs!5167 (c!118831 (tokens!1251 sepR!1)))) e!408410))))

(assert (=> b!660122 (= tp!201255 (and (inv!9142 (c!118831 (tokens!1251 sepR!1))) e!408409))))

(assert (= (and b!660122 ((_ is Node!2518) (c!118831 (tokens!1251 sepR!1)))) b!660400))

(assert (= b!660401 b!660402))

(assert (= (and b!660122 ((_ is Leaf!3753) (c!118831 (tokens!1251 sepR!1)))) b!660401))

(declare-fun m!926573 () Bool)

(assert (=> b!660400 m!926573))

(declare-fun m!926575 () Bool)

(assert (=> b!660400 m!926575))

(declare-fun m!926577 () Bool)

(assert (=> b!660401 m!926577))

(assert (=> b!660122 m!925979))

(declare-fun b!660405 () Bool)

(declare-fun b_free!19061 () Bool)

(declare-fun b_next!19125 () Bool)

(assert (=> b!660405 (= b_free!19061 (not b_next!19125))))

(declare-fun tp!201316 () Bool)

(declare-fun b_and!62855 () Bool)

(assert (=> b!660405 (= tp!201316 b_and!62855)))

(declare-fun b_free!19063 () Bool)

(declare-fun b_next!19127 () Bool)

(assert (=> b!660405 (= b_free!19063 (not b_next!19127))))

(declare-fun tp!201314 () Bool)

(declare-fun b_and!62857 () Bool)

(assert (=> b!660405 (= tp!201314 b_and!62857)))

(declare-fun e!408411 () Bool)

(assert (=> b!660405 (= e!408411 (and tp!201316 tp!201314))))

(declare-fun b!660404 () Bool)

(declare-fun e!408412 () Bool)

(assert (=> b!660404 (= e!408412 (and (inv!9137 (tag!1700 (h!12539 (rules!8273 sepR!1)))) (inv!9151 (transformation!1438 (h!12539 (rules!8273 sepR!1)))) e!408411))))

(declare-fun b!660403 () Bool)

(declare-fun e!408414 () Bool)

(declare-fun tp!201315 () Bool)

(assert (=> b!660403 (= e!408414 (and e!408412 tp!201315))))

(assert (=> b!660127 (= tp!201253 e!408414)))

(assert (= b!660404 b!660405))

(assert (= b!660403 b!660404))

(assert (= (and b!660127 ((_ is Cons!7138) (rules!8273 sepR!1))) b!660403))

(declare-fun m!926579 () Bool)

(assert (=> b!660404 m!926579))

(declare-fun m!926581 () Bool)

(assert (=> b!660404 m!926581))

(check-sat (not bm!43087) (not b!660392) (not b!660183) (not b!660397) (not d!225957) (not bm!43048) b_and!62853 b_and!62847 (not b!660358) (not bm!43053) (not b!660346) (not d!225911) (not bm!43086) (not b!660382) (not b!660142) (not bm!43079) (not bm!43090) (not bm!43068) (not d!225953) (not d!225949) (not b!660362) (not b!660396) (not bm!43039) (not b!660186) (not d!225937) (not b!660359) (not b!660330) (not bm!43055) (not b!660403) (not b_next!19121) (not b_next!19125) (not b!660185) (not b!660179) (not bm!43021) (not bm!43047) (not b!660368) (not b!660395) (not bm!43089) (not b_next!19117) (not bm!43094) (not bm!43049) (not b!660400) (not bm!43065) (not bm!43084) (not b!660365) (not b!660328) (not d!225933) (not b!660340) (not bm!43059) (not bm!43041) (not b_next!19123) (not bm!43050) (not b!660184) (not b!660182) (not b!660129) (not b!660404) (not bm!43096) (not d!225935) (not b!660331) (not bm!43020) b_and!62849 (not bm!43081) (not b!660401) (not b!660343) (not b!660380) (not b!660124) (not b!660402) (not b!660180) (not bm!43075) (not bm!43058) (not b!660347) (not b!660391) (not b!660398) (not b!660381) (not bm!43022) (not bm!43027) (not bm!43091) (not b!660339) (not bm!43076) (not bm!43051) (not bm!43029) b_and!62855 (not bm!43052) (not bm!43026) (not b!660371) (not d!225947) (not bm!43037) b_and!62851 (not bm!43040) b_and!62857 (not bm!43060) (not bm!43092) (not b!660187) (not b!660394) (not d!225923) (not bm!43045) (not b!660369) (not bm!43057) (not b!660350) (not d!225939) (not bm!43061) (not bm!43036) (not bm!43097) (not b!660181) (not b_next!19119) (not b!660349) (not bm!43066) (not b!660122) (not bm!43088) (not d!225955) (not bm!43078) (not b!660366) (not b!660140) (not bm!43042) (not bm!43080) (not b_next!19127) (not d!225963))
(check-sat b_and!62853 b_and!62847 (not b_next!19117) (not b_next!19123) b_and!62849 b_and!62855 b_and!62851 b_and!62857 (not b_next!19119) (not b_next!19127) (not b_next!19121) (not b_next!19125))
