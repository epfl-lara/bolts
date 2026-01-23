; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99182 () Bool)

(assert start!99182)

(declare-fun b!1145223 () Bool)

(assert (=> b!1145223 true))

(declare-fun b!1145218 () Bool)

(declare-datatypes ((List!11074 0))(
  ( (Nil!11050) (Cons!11050 (h!16451 (_ BitVec 16)) (t!107996 List!11074)) )
))
(declare-datatypes ((TokenValue!1971 0))(
  ( (FloatLiteralValue!3942 (text!14242 List!11074)) (TokenValueExt!1970 (__x!7656 Int)) (Broken!9855 (value!62263 List!11074)) (Object!1994) (End!1971) (Def!1971) (Underscore!1971) (Match!1971) (Else!1971) (Error!1971) (Case!1971) (If!1971) (Extends!1971) (Abstract!1971) (Class!1971) (Val!1971) (DelimiterValue!3942 (del!2031 List!11074)) (KeywordValue!1977 (value!62264 List!11074)) (CommentValue!3942 (value!62265 List!11074)) (WhitespaceValue!3942 (value!62266 List!11074)) (IndentationValue!1971 (value!62267 List!11074)) (String!13442) (Int32!1971) (Broken!9856 (value!62268 List!11074)) (Boolean!1972) (Unit!16972) (OperatorValue!1974 (op!2031 List!11074)) (IdentifierValue!3942 (value!62269 List!11074)) (IdentifierValue!3943 (value!62270 List!11074)) (WhitespaceValue!3943 (value!62271 List!11074)) (True!3942) (False!3942) (Broken!9857 (value!62272 List!11074)) (Broken!9858 (value!62273 List!11074)) (True!3943) (RightBrace!1971) (RightBracket!1971) (Colon!1971) (Null!1971) (Comma!1971) (LeftBracket!1971) (False!3943) (LeftBrace!1971) (ImaginaryLiteralValue!1971 (text!14243 List!11074)) (StringLiteralValue!5913 (value!62274 List!11074)) (EOFValue!1971 (value!62275 List!11074)) (IdentValue!1971 (value!62276 List!11074)) (DelimiterValue!3943 (value!62277 List!11074)) (DedentValue!1971 (value!62278 List!11074)) (NewLineValue!1971 (value!62279 List!11074)) (IntegerValue!5913 (value!62280 (_ BitVec 32)) (text!14244 List!11074)) (IntegerValue!5914 (value!62281 Int) (text!14245 List!11074)) (Times!1971) (Or!1971) (Equal!1971) (Minus!1971) (Broken!9859 (value!62282 List!11074)) (And!1971) (Div!1971) (LessEqual!1971) (Mod!1971) (Concat!5146) (Not!1971) (Plus!1971) (SpaceValue!1971 (value!62283 List!11074)) (IntegerValue!5915 (value!62284 Int) (text!14246 List!11074)) (StringLiteralValue!5914 (text!14247 List!11074)) (FloatLiteralValue!3943 (text!14248 List!11074)) (BytesLiteralValue!1971 (value!62285 List!11074)) (CommentValue!3943 (value!62286 List!11074)) (StringLiteralValue!5915 (value!62287 List!11074)) (ErrorTokenValue!1971 (msg!2032 List!11074)) )
))
(declare-datatypes ((Regex!3175 0))(
  ( (ElementMatch!3175 (c!192325 (_ BitVec 16))) (Concat!5147 (regOne!6862 Regex!3175) (regTwo!6862 Regex!3175)) (EmptyExpr!3175) (Star!3175 (reg!3504 Regex!3175)) (EmptyLang!3175) (Union!3175 (regOne!6863 Regex!3175) (regTwo!6863 Regex!3175)) )
))
(declare-datatypes ((String!13443 0))(
  ( (String!13444 (value!62288 String)) )
))
(declare-datatypes ((IArray!7113 0))(
  ( (IArray!7114 (innerList!3614 List!11074)) )
))
(declare-datatypes ((Conc!3554 0))(
  ( (Node!3554 (left!9612 Conc!3554) (right!9942 Conc!3554) (csize!7338 Int) (cheight!3765 Int)) (Leaf!5517 (xs!6255 IArray!7113) (csize!7339 Int)) (Empty!3554) )
))
(declare-datatypes ((BalanceConc!7130 0))(
  ( (BalanceConc!7131 (c!192326 Conc!3554)) )
))
(declare-datatypes ((TokenValueInjection!3642 0))(
  ( (TokenValueInjection!3643 (toValue!3002 Int) (toChars!2861 Int)) )
))
(declare-datatypes ((Rule!3610 0))(
  ( (Rule!3611 (regex!1905 Regex!3175) (tag!2167 String!13443) (isSeparator!1905 Bool) (transformation!1905 TokenValueInjection!3642)) )
))
(declare-datatypes ((Token!3472 0))(
  ( (Token!3473 (value!62289 TokenValue!1971) (rule!3326 Rule!3610) (size!8665 Int) (originalCharacters!2459 List!11074)) )
))
(declare-datatypes ((List!11075 0))(
  ( (Nil!11051) (Cons!11051 (h!16452 Token!3472) (t!107997 List!11075)) )
))
(declare-datatypes ((IArray!7115 0))(
  ( (IArray!7116 (innerList!3615 List!11075)) )
))
(declare-datatypes ((Conc!3555 0))(
  ( (Node!3555 (left!9613 Conc!3555) (right!9943 Conc!3555) (csize!7340 Int) (cheight!3766 Int)) (Leaf!5518 (xs!6256 IArray!7115) (csize!7341 Int)) (Empty!3555) )
))
(declare-datatypes ((List!11076 0))(
  ( (Nil!11052) (Cons!11052 (h!16453 Rule!3610) (t!107998 List!11076)) )
))
(declare-datatypes ((BalanceConc!7132 0))(
  ( (BalanceConc!7133 (c!192327 Conc!3555)) )
))
(declare-datatypes ((PrintableTokens!496 0))(
  ( (PrintableTokens!497 (rules!9316 List!11076) (tokens!1490 BalanceConc!7132)) )
))
(declare-fun e!731999 () PrintableTokens!496)

(declare-fun call!81582 () PrintableTokens!496)

(assert (=> b!1145218 (= e!731999 call!81582)))

(declare-fun b!1145219 () Bool)

(declare-fun e!731998 () Bool)

(declare-datatypes ((List!11077 0))(
  ( (Nil!11053) (Cons!11053 (h!16454 PrintableTokens!496) (t!107999 List!11077)) )
))
(declare-datatypes ((IArray!7117 0))(
  ( (IArray!7118 (innerList!3616 List!11077)) )
))
(declare-datatypes ((Conc!3556 0))(
  ( (Node!3556 (left!9614 Conc!3556) (right!9944 Conc!3556) (csize!7342 Int) (cheight!3767 Int)) (Leaf!5519 (xs!6257 IArray!7117) (csize!7343 Int)) (Empty!3556) )
))
(declare-datatypes ((BalanceConc!7134 0))(
  ( (BalanceConc!7135 (c!192328 Conc!3556)) )
))
(declare-fun acc!225 () BalanceConc!7134)

(declare-fun tp!331932 () Bool)

(declare-fun inv!14414 (Conc!3556) Bool)

(assert (=> b!1145219 (= e!731998 (and (inv!14414 (c!192328 acc!225)) tp!331932))))

(declare-fun b!1145220 () Bool)

(declare-fun res!514987 () Bool)

(declare-fun e!732002 () Bool)

(assert (=> b!1145220 (=> (not res!514987) (not e!732002))))

(declare-fun lambda!46085 () Int)

(declare-fun forall!2746 (BalanceConc!7134 Int) Bool)

(assert (=> b!1145220 (= res!514987 (forall!2746 acc!225 lambda!46085))))

(declare-fun b!1145221 () Bool)

(declare-fun e!732001 () Bool)

(declare-fun pt!21 () PrintableTokens!496)

(declare-fun tp!331930 () Bool)

(declare-fun inv!14415 (Conc!3555) Bool)

(assert (=> b!1145221 (= e!732001 (and (inv!14415 (c!192327 (tokens!1490 pt!21))) tp!331930))))

(declare-fun b!1145222 () Bool)

(declare-fun e!731997 () Bool)

(assert (=> b!1145222 (= e!732002 e!731997)))

(declare-fun res!514989 () Bool)

(assert (=> b!1145222 (=> (not res!514989) (not e!731997))))

(declare-fun lt!387686 () PrintableTokens!496)

(declare-fun usesJsonRules!0 (PrintableTokens!496) Bool)

(assert (=> b!1145222 (= res!514989 (usesJsonRules!0 lt!387686))))

(assert (=> b!1145222 (= lt!387686 e!731999)))

(declare-fun c!192324 () Bool)

(declare-fun lt!387689 () Int)

(declare-fun lt!387688 () Int)

(assert (=> b!1145222 (= c!192324 (<= lt!387689 lt!387688))))

(declare-datatypes ((List!11078 0))(
  ( (Nil!11054) (Cons!11054 (h!16455 Int) (t!108000 List!11078)) )
))
(declare-datatypes ((IArray!7119 0))(
  ( (IArray!7120 (innerList!3617 List!11078)) )
))
(declare-datatypes ((Conc!3557 0))(
  ( (Node!3557 (left!9615 Conc!3557) (right!9945 Conc!3557) (csize!7344 Int) (cheight!3768 Int)) (Leaf!5520 (xs!6258 IArray!7119) (csize!7345 Int)) (Empty!3557) )
))
(declare-datatypes ((BalanceConc!7136 0))(
  ( (BalanceConc!7137 (c!192329 Conc!3557)) )
))
(declare-fun indices!2 () BalanceConc!7136)

(declare-fun apply!2346 (BalanceConc!7136 Int) Int)

(assert (=> b!1145222 (= lt!387688 (apply!2346 indices!2 1))))

(assert (=> b!1145222 (= lt!387689 (apply!2346 indices!2 0))))

(declare-fun res!514984 () Bool)

(assert (=> b!1145223 (=> (not res!514984) (not e!732002))))

(declare-fun lambda!46084 () Int)

(declare-fun forall!2747 (BalanceConc!7136 Int) Bool)

(assert (=> b!1145223 (= res!514984 (forall!2747 indices!2 lambda!46084))))

(declare-fun b!1145224 () Bool)

(declare-fun res!514988 () Bool)

(assert (=> b!1145224 (=> (not res!514988) (not e!732002))))

(assert (=> b!1145224 (= res!514988 (usesJsonRules!0 pt!21))))

(declare-fun e!732003 () Bool)

(declare-fun tp!331931 () Bool)

(declare-fun b!1145225 () Bool)

(declare-fun inv!14416 (BalanceConc!7132) Bool)

(assert (=> b!1145225 (= e!732003 (and tp!331931 (inv!14416 (tokens!1490 pt!21)) e!732001))))

(declare-fun b!1145226 () Bool)

(declare-fun append!358 (BalanceConc!7134 PrintableTokens!496) BalanceConc!7134)

(assert (=> b!1145226 (= e!731997 (not (forall!2746 (append!358 acc!225 lt!387686) lambda!46085)))))

(declare-datatypes ((Unit!16973 0))(
  ( (Unit!16974) )
))
(declare-fun lt!387687 () Unit!16973)

(declare-fun lemmaConcatPreservesForall!116 (List!11077 List!11077 Int) Unit!16973)

(declare-fun list!4044 (BalanceConc!7134) List!11077)

(assert (=> b!1145226 (= lt!387687 (lemmaConcatPreservesForall!116 (list!4044 acc!225) (Cons!11053 lt!387686 Nil!11053) lambda!46085))))

(declare-fun b!1145227 () Bool)

(declare-fun e!732000 () Bool)

(declare-fun tp!331929 () Bool)

(declare-fun inv!14417 (Conc!3557) Bool)

(assert (=> b!1145227 (= e!732000 (and (inv!14417 (c!192329 indices!2)) tp!331929))))

(declare-fun b!1145228 () Bool)

(assert (=> b!1145228 (= e!731999 call!81582)))

(declare-fun res!514985 () Bool)

(assert (=> start!99182 (=> (not res!514985) (not e!732002))))

(declare-fun size!108 () Int)

(declare-fun size!8666 (PrintableTokens!496) Int)

(assert (=> start!99182 (= res!514985 (= (size!8666 pt!21) size!108))))

(assert (=> start!99182 e!732002))

(declare-fun inv!14418 (PrintableTokens!496) Bool)

(assert (=> start!99182 (and (inv!14418 pt!21) e!732003)))

(assert (=> start!99182 true))

(declare-fun inv!14419 (BalanceConc!7136) Bool)

(assert (=> start!99182 (and (inv!14419 indices!2) e!732000)))

(declare-fun inv!14420 (BalanceConc!7134) Bool)

(assert (=> start!99182 (and (inv!14420 acc!225) e!731998)))

(declare-fun bm!81577 () Bool)

(declare-fun slice!111 (PrintableTokens!496 Int Int) PrintableTokens!496)

(assert (=> bm!81577 (= call!81582 (slice!111 pt!21 (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689))))))

(declare-fun b!1145229 () Bool)

(declare-fun res!514986 () Bool)

(assert (=> b!1145229 (=> (not res!514986) (not e!732002))))

(declare-fun size!8667 (BalanceConc!7136) Int)

(assert (=> b!1145229 (= res!514986 (>= (size!8667 indices!2) 2))))

(assert (= (and start!99182 res!514985) b!1145223))

(assert (= (and b!1145223 res!514984) b!1145224))

(assert (= (and b!1145224 res!514988) b!1145220))

(assert (= (and b!1145220 res!514987) b!1145229))

(assert (= (and b!1145229 res!514986) b!1145222))

(assert (= (and b!1145222 c!192324) b!1145218))

(assert (= (and b!1145222 (not c!192324)) b!1145228))

(assert (= (or b!1145218 b!1145228) bm!81577))

(assert (= (and b!1145222 res!514989) b!1145226))

(assert (= b!1145225 b!1145221))

(assert (= start!99182 b!1145225))

(assert (= start!99182 b!1145227))

(assert (= start!99182 b!1145219))

(declare-fun m!1306033 () Bool)

(assert (=> b!1145222 m!1306033))

(declare-fun m!1306035 () Bool)

(assert (=> b!1145222 m!1306035))

(declare-fun m!1306037 () Bool)

(assert (=> b!1145222 m!1306037))

(declare-fun m!1306039 () Bool)

(assert (=> b!1145225 m!1306039))

(declare-fun m!1306041 () Bool)

(assert (=> b!1145219 m!1306041))

(declare-fun m!1306043 () Bool)

(assert (=> b!1145224 m!1306043))

(declare-fun m!1306045 () Bool)

(assert (=> b!1145226 m!1306045))

(assert (=> b!1145226 m!1306045))

(declare-fun m!1306047 () Bool)

(assert (=> b!1145226 m!1306047))

(declare-fun m!1306049 () Bool)

(assert (=> b!1145226 m!1306049))

(assert (=> b!1145226 m!1306049))

(declare-fun m!1306051 () Bool)

(assert (=> b!1145226 m!1306051))

(declare-fun m!1306053 () Bool)

(assert (=> b!1145221 m!1306053))

(declare-fun m!1306055 () Bool)

(assert (=> start!99182 m!1306055))

(declare-fun m!1306057 () Bool)

(assert (=> start!99182 m!1306057))

(declare-fun m!1306059 () Bool)

(assert (=> start!99182 m!1306059))

(declare-fun m!1306061 () Bool)

(assert (=> start!99182 m!1306061))

(declare-fun m!1306063 () Bool)

(assert (=> bm!81577 m!1306063))

(declare-fun m!1306065 () Bool)

(assert (=> b!1145220 m!1306065))

(declare-fun m!1306067 () Bool)

(assert (=> b!1145223 m!1306067))

(declare-fun m!1306069 () Bool)

(assert (=> b!1145229 m!1306069))

(declare-fun m!1306071 () Bool)

(assert (=> b!1145227 m!1306071))

(check-sat (not b!1145222) (not bm!81577) (not b!1145226) (not b!1145220) (not b!1145225) (not b!1145219) (not b!1145229) (not b!1145227) (not b!1145224) (not b!1145221) (not start!99182) (not b!1145223))
(check-sat)
(get-model)

(declare-fun d!325919 () Bool)

(declare-fun c!192332 () Bool)

(get-info :version)

(assert (=> d!325919 (= c!192332 ((_ is Node!3555) (c!192327 (tokens!1490 pt!21))))))

(declare-fun e!732008 () Bool)

(assert (=> d!325919 (= (inv!14415 (c!192327 (tokens!1490 pt!21))) e!732008)))

(declare-fun b!1145238 () Bool)

(declare-fun inv!14425 (Conc!3555) Bool)

(assert (=> b!1145238 (= e!732008 (inv!14425 (c!192327 (tokens!1490 pt!21))))))

(declare-fun b!1145239 () Bool)

(declare-fun e!732009 () Bool)

(assert (=> b!1145239 (= e!732008 e!732009)))

(declare-fun res!514992 () Bool)

(assert (=> b!1145239 (= res!514992 (not ((_ is Leaf!5518) (c!192327 (tokens!1490 pt!21)))))))

(assert (=> b!1145239 (=> res!514992 e!732009)))

(declare-fun b!1145240 () Bool)

(declare-fun inv!14426 (Conc!3555) Bool)

(assert (=> b!1145240 (= e!732009 (inv!14426 (c!192327 (tokens!1490 pt!21))))))

(assert (= (and d!325919 c!192332) b!1145238))

(assert (= (and d!325919 (not c!192332)) b!1145239))

(assert (= (and b!1145239 (not res!514992)) b!1145240))

(declare-fun m!1306075 () Bool)

(assert (=> b!1145238 m!1306075))

(declare-fun m!1306077 () Bool)

(assert (=> b!1145240 m!1306077))

(assert (=> b!1145221 d!325919))

(declare-fun d!325921 () Bool)

(declare-datatypes ((JsonLexer!326 0))(
  ( (JsonLexer!327) )
))
(declare-fun rules!109 (JsonLexer!326) List!11076)

(assert (=> d!325921 (= (usesJsonRules!0 lt!387686) (= (rules!9316 lt!387686) (rules!109 JsonLexer!327)))))

(declare-fun bs!280962 () Bool)

(assert (= bs!280962 d!325921))

(declare-fun m!1306095 () Bool)

(assert (=> bs!280962 m!1306095))

(assert (=> b!1145222 d!325921))

(declare-fun d!325931 () Bool)

(declare-fun lt!387692 () Int)

(declare-fun apply!2351 (List!11078 Int) Int)

(declare-fun list!4047 (BalanceConc!7136) List!11078)

(assert (=> d!325931 (= lt!387692 (apply!2351 (list!4047 indices!2) 1))))

(declare-fun apply!2352 (Conc!3557 Int) Int)

(assert (=> d!325931 (= lt!387692 (apply!2352 (c!192329 indices!2) 1))))

(declare-fun e!732021 () Bool)

(assert (=> d!325931 e!732021))

(declare-fun res!515007 () Bool)

(assert (=> d!325931 (=> (not res!515007) (not e!732021))))

(assert (=> d!325931 (= res!515007 (<= 0 1))))

(assert (=> d!325931 (= (apply!2346 indices!2 1) lt!387692)))

(declare-fun b!1145261 () Bool)

(assert (=> b!1145261 (= e!732021 (< 1 (size!8667 indices!2)))))

(assert (= (and d!325931 res!515007) b!1145261))

(declare-fun m!1306097 () Bool)

(assert (=> d!325931 m!1306097))

(assert (=> d!325931 m!1306097))

(declare-fun m!1306099 () Bool)

(assert (=> d!325931 m!1306099))

(declare-fun m!1306101 () Bool)

(assert (=> d!325931 m!1306101))

(assert (=> b!1145261 m!1306069))

(assert (=> b!1145222 d!325931))

(declare-fun d!325933 () Bool)

(declare-fun lt!387693 () Int)

(assert (=> d!325933 (= lt!387693 (apply!2351 (list!4047 indices!2) 0))))

(assert (=> d!325933 (= lt!387693 (apply!2352 (c!192329 indices!2) 0))))

(declare-fun e!732022 () Bool)

(assert (=> d!325933 e!732022))

(declare-fun res!515008 () Bool)

(assert (=> d!325933 (=> (not res!515008) (not e!732022))))

(assert (=> d!325933 (= res!515008 (<= 0 0))))

(assert (=> d!325933 (= (apply!2346 indices!2 0) lt!387693)))

(declare-fun b!1145262 () Bool)

(assert (=> b!1145262 (= e!732022 (< 0 (size!8667 indices!2)))))

(assert (= (and d!325933 res!515008) b!1145262))

(assert (=> d!325933 m!1306097))

(assert (=> d!325933 m!1306097))

(declare-fun m!1306103 () Bool)

(assert (=> d!325933 m!1306103))

(declare-fun m!1306105 () Bool)

(assert (=> d!325933 m!1306105))

(assert (=> b!1145262 m!1306069))

(assert (=> b!1145222 d!325933))

(declare-fun b!1145371 () Bool)

(declare-fun e!732124 () Bool)

(assert (=> b!1145371 (= e!732124 true)))

(declare-fun b!1145370 () Bool)

(declare-fun e!732123 () Bool)

(assert (=> b!1145370 (= e!732123 e!732124)))

(declare-fun d!325935 () Bool)

(assert (=> d!325935 e!732123))

(assert (= b!1145370 b!1145371))

(assert (= d!325935 b!1145370))

(declare-fun lt!388067 () Int)

(declare-datatypes ((LexerInterface!1604 0))(
  ( (LexerInterfaceExt!1601 (__x!7658 Int)) (Lexer!1602) )
))
(declare-fun lt!388058 () LexerInterface!1604)

(declare-fun e!732108 () Bool)

(declare-fun b!1145350 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!33 (LexerInterface!1604 BalanceConc!7132 Int List!11076) Bool)

(assert (=> b!1145350 (= e!732108 (tokensListTwoByTwoPredicateSeparable!33 lt!388058 (tokens!1490 pt!21) (+ lt!388067 1) (rules!9316 pt!21)))))

(declare-fun b!1145351 () Bool)

(declare-fun e!732117 () Bool)

(declare-fun e!732109 () Bool)

(assert (=> b!1145351 (= e!732117 e!732109)))

(declare-fun res!515093 () Bool)

(assert (=> b!1145351 (=> (not res!515093) (not e!732109))))

(declare-fun lt!388115 () LexerInterface!1604)

(declare-fun lt!388101 () List!11075)

(declare-fun rulesProduceIndividualToken!651 (LexerInterface!1604 List!11076 Token!3472) Bool)

(assert (=> b!1145351 (= res!515093 (rulesProduceIndividualToken!651 lt!388115 (rules!9316 pt!21) (h!16452 lt!388101)))))

(declare-fun lt!388114 () List!11075)

(declare-fun lt!388077 () LexerInterface!1604)

(declare-fun e!732118 () Bool)

(declare-fun b!1145352 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!78 (LexerInterface!1604 List!11075 List!11076) Bool)

(declare-fun drop!430 (List!11075 Int) List!11075)

(assert (=> b!1145352 (= e!732118 (tokensListTwoByTwoPredicateSeparableList!78 lt!388077 (drop!430 lt!388114 (ite c!192324 lt!387689 lt!387688)) (rules!9316 pt!21)))))

(declare-fun lt!388098 () Unit!16973)

(declare-fun lt!388094 () Unit!16973)

(assert (=> b!1145352 (= lt!388098 lt!388094)))

(declare-fun lt!388066 () List!11075)

(declare-fun lambda!46111 () Int)

(declare-fun forall!2752 (List!11075 Int) Bool)

(assert (=> b!1145352 (forall!2752 lt!388066 lambda!46111)))

(declare-fun lemmaForallSubseq!81 (List!11075 List!11075 Int) Unit!16973)

(assert (=> b!1145352 (= lt!388094 (lemmaForallSubseq!81 lt!388066 lt!388114 lambda!46111))))

(assert (=> b!1145352 (= lt!388066 (drop!430 lt!388114 (ite c!192324 lt!387689 lt!387688)))))

(declare-fun lt!388076 () Unit!16973)

(declare-fun lt!388119 () Unit!16973)

(assert (=> b!1145352 (= lt!388076 lt!388119)))

(declare-fun subseq!181 (List!11075 List!11075) Bool)

(assert (=> b!1145352 (subseq!181 (drop!430 lt!388114 (ite c!192324 lt!387689 lt!387688)) lt!388114)))

(declare-fun lemmaDropSubseq!22 (List!11075 Int) Unit!16973)

(assert (=> b!1145352 (= lt!388119 (lemmaDropSubseq!22 lt!388114 (ite c!192324 lt!387689 lt!387688)))))

(declare-fun b!1145353 () Bool)

(declare-fun e!732105 () Bool)

(declare-fun size!8670 (BalanceConc!7132) Int)

(assert (=> b!1145353 (= e!732105 (<= (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689)) (size!8670 (tokens!1490 pt!21))))))

(declare-fun b!1145354 () Bool)

(declare-fun lt!388109 () List!11075)

(declare-fun lt!388125 () Int)

(declare-fun e!732114 () Bool)

(declare-fun lt!388069 () LexerInterface!1604)

(declare-fun take!28 (List!11075 Int) List!11075)

(assert (=> b!1145354 (= e!732114 (tokensListTwoByTwoPredicateSeparableList!78 lt!388069 (take!28 lt!388109 lt!388125) (rules!9316 pt!21)))))

(declare-fun lt!388074 () Unit!16973)

(declare-fun lt!388085 () Unit!16973)

(assert (=> b!1145354 (= lt!388074 lt!388085)))

(declare-fun lt!388061 () List!11075)

(assert (=> b!1145354 (forall!2752 lt!388061 lambda!46111)))

(assert (=> b!1145354 (= lt!388085 (lemmaForallSubseq!81 lt!388061 lt!388109 lambda!46111))))

(assert (=> b!1145354 (= lt!388061 (take!28 lt!388109 lt!388125))))

(declare-fun b!1145355 () Bool)

(declare-fun lt!388118 () PrintableTokens!496)

(declare-fun e!732115 () Bool)

(declare-fun list!4049 (BalanceConc!7132) List!11075)

(declare-fun slice!114 (BalanceConc!7132 Int Int) BalanceConc!7132)

(assert (=> b!1145355 (= e!732115 (= (list!4049 (tokens!1490 lt!388118)) (list!4049 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689))))))))

(declare-fun b!1145356 () Bool)

(declare-fun e!732106 () Bool)

(declare-fun e!732107 () Bool)

(assert (=> b!1145356 (= e!732106 e!732107)))

(declare-fun res!515088 () Bool)

(assert (=> b!1145356 (=> (not res!515088) (not e!732107))))

(declare-fun lt!388112 () List!11075)

(declare-fun lt!388120 () LexerInterface!1604)

(assert (=> b!1145356 (= res!515088 (rulesProduceIndividualToken!651 lt!388120 (rules!9316 pt!21) (h!16452 lt!388112)))))

(declare-fun lt!388111 () List!11075)

(declare-fun e!732110 () Bool)

(declare-fun b!1145357 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!479 (LexerInterface!1604 List!11076 List!11075) Bool)

(assert (=> b!1145357 (= e!732110 (rulesProduceEachTokenIndividuallyList!479 lt!388069 (rules!9316 pt!21) (t!107997 lt!388111)))))

(assert (=> d!325935 e!732115))

(declare-fun res!515084 () Bool)

(assert (=> d!325935 (=> (not res!515084) (not e!732115))))

(assert (=> d!325935 (= res!515084 (= (rules!9316 lt!388118) (rules!9316 pt!21)))))

(assert (=> d!325935 (= lt!388118 (PrintableTokens!497 (rules!9316 pt!21) (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689)))))))

(declare-fun lt!388088 () Unit!16973)

(declare-fun lt!388068 () Unit!16973)

(assert (=> d!325935 (= lt!388088 lt!388068)))

(assert (=> d!325935 e!732114))

(declare-fun res!515087 () Bool)

(assert (=> d!325935 (=> (not res!515087) (not e!732114))))

(declare-fun e!732116 () Bool)

(assert (=> d!325935 (= res!515087 (= (rulesProduceEachTokenIndividuallyList!479 lt!388069 (rules!9316 pt!21) (take!28 lt!388109 lt!388125)) e!732116))))

(declare-fun res!515094 () Bool)

(assert (=> d!325935 (=> res!515094 e!732116)))

(assert (=> d!325935 (= res!515094 (not ((_ is Cons!11051) lt!388111)))))

(assert (=> d!325935 (= lt!388111 (take!28 lt!388109 lt!388125))))

(declare-fun tokensListTwoByTwoPredicateSeparableTokensTakeList!22 (LexerInterface!1604 List!11075 Int List!11076) Unit!16973)

(assert (=> d!325935 (= lt!388068 (tokensListTwoByTwoPredicateSeparableTokensTakeList!22 lt!388069 lt!388109 lt!388125 (rules!9316 pt!21)))))

(assert (=> d!325935 (= lt!388125 (- (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689)) (ite c!192324 lt!387689 lt!387688)))))

(assert (=> d!325935 (= lt!388109 (drop!430 (list!4049 (tokens!1490 pt!21)) (ite c!192324 lt!387689 lt!387688)))))

(assert (=> d!325935 (= lt!388069 Lexer!1602)))

(declare-fun lt!388127 () Unit!16973)

(declare-fun lt!388104 () Unit!16973)

(assert (=> d!325935 (= lt!388127 lt!388104)))

(declare-fun lt!388080 () List!11075)

(assert (=> d!325935 (forall!2752 lt!388080 lambda!46111)))

(declare-fun lt!388100 () List!11075)

(assert (=> d!325935 (= lt!388104 (lemmaForallSubseq!81 lt!388080 lt!388100 lambda!46111))))

(assert (=> d!325935 (= lt!388100 (list!4049 (tokens!1490 pt!21)))))

(assert (=> d!325935 (= lt!388080 (drop!430 (list!4049 (tokens!1490 pt!21)) (ite c!192324 lt!387689 lt!387688)))))

(declare-fun lt!388060 () Unit!16973)

(declare-fun lt!388093 () Unit!16973)

(assert (=> d!325935 (= lt!388060 lt!388093)))

(declare-fun lt!388107 () List!11075)

(assert (=> d!325935 (subseq!181 (drop!430 lt!388107 (ite c!192324 lt!387689 lt!387688)) lt!388107)))

(assert (=> d!325935 (= lt!388093 (lemmaDropSubseq!22 lt!388107 (ite c!192324 lt!387689 lt!387688)))))

(assert (=> d!325935 (= lt!388107 (list!4049 (tokens!1490 pt!21)))))

(declare-fun lt!388113 () Unit!16973)

(declare-fun lt!388089 () Unit!16973)

(assert (=> d!325935 (= lt!388113 lt!388089)))

(assert (=> d!325935 e!732118))

(declare-fun res!515095 () Bool)

(assert (=> d!325935 (=> (not res!515095) (not e!732118))))

(declare-fun e!732111 () Bool)

(assert (=> d!325935 (= res!515095 (= (rulesProduceEachTokenIndividuallyList!479 lt!388077 (rules!9316 pt!21) (drop!430 lt!388114 (ite c!192324 lt!387689 lt!387688))) e!732111))))

(declare-fun res!515083 () Bool)

(assert (=> d!325935 (=> res!515083 e!732111)))

(declare-fun lt!388110 () List!11075)

(assert (=> d!325935 (= res!515083 (not ((_ is Cons!11051) lt!388110)))))

(assert (=> d!325935 (= lt!388110 (drop!430 lt!388114 (ite c!192324 lt!387689 lt!387688)))))

(declare-fun tokensListTwoByTwoPredicateSeparableTokensDropList!22 (LexerInterface!1604 List!11075 Int List!11076) Unit!16973)

(assert (=> d!325935 (= lt!388089 (tokensListTwoByTwoPredicateSeparableTokensDropList!22 lt!388077 lt!388114 (ite c!192324 lt!387689 lt!387688) (rules!9316 pt!21)))))

(assert (=> d!325935 (= lt!388114 (list!4049 (tokens!1490 pt!21)))))

(assert (=> d!325935 (= lt!388077 Lexer!1602)))

(declare-fun lt!388062 () Unit!16973)

(declare-fun Unit!16984 () Unit!16973)

(assert (=> d!325935 (= lt!388062 Unit!16984)))

(declare-fun e!732112 () Bool)

(assert (=> d!325935 (= (tokensListTwoByTwoPredicateSeparable!33 Lexer!1602 (tokens!1490 pt!21) 0 (rules!9316 pt!21)) e!732112)))

(declare-fun res!515085 () Bool)

(assert (=> d!325935 (=> res!515085 e!732112)))

(assert (=> d!325935 (= res!515085 (not (< lt!388067 (- (size!8670 (tokens!1490 pt!21)) 1))))))

(assert (=> d!325935 (= lt!388067 0)))

(assert (=> d!325935 (= lt!388058 Lexer!1602)))

(declare-fun lt!388057 () Unit!16973)

(declare-fun Unit!16985 () Unit!16973)

(assert (=> d!325935 (= lt!388057 Unit!16985)))

(declare-fun separableTokens!73 (LexerInterface!1604 BalanceConc!7132 List!11076) Bool)

(assert (=> d!325935 (= (separableTokens!73 Lexer!1602 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689))) (rules!9316 pt!21)) (tokensListTwoByTwoPredicateSeparable!33 Lexer!1602 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689))) 0 (rules!9316 pt!21)))))

(declare-fun lt!388105 () Unit!16973)

(declare-fun Unit!16986 () Unit!16973)

(assert (=> d!325935 (= lt!388105 Unit!16986)))

(assert (=> d!325935 (= (rulesProduceEachTokenIndividuallyList!479 Lexer!1602 (rules!9316 pt!21) (list!4049 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689))))) e!732117)))

(declare-fun res!515082 () Bool)

(assert (=> d!325935 (=> res!515082 e!732117)))

(assert (=> d!325935 (= res!515082 (not ((_ is Cons!11051) lt!388101)))))

(assert (=> d!325935 (= lt!388101 (list!4049 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689)))))))

(assert (=> d!325935 (= lt!388115 Lexer!1602)))

(declare-fun lt!388078 () Unit!16973)

(declare-fun Unit!16987 () Unit!16973)

(assert (=> d!325935 (= lt!388078 Unit!16987)))

(declare-fun rulesProduceEachTokenIndividually!646 (LexerInterface!1604 List!11076 BalanceConc!7132) Bool)

(declare-fun forall!2755 (BalanceConc!7132 Int) Bool)

(assert (=> d!325935 (= (rulesProduceEachTokenIndividually!646 Lexer!1602 (rules!9316 pt!21) (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689)))) (forall!2755 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689))) lambda!46111))))

(declare-fun lt!388116 () Unit!16973)

(declare-fun lt!388064 () Unit!16973)

(assert (=> d!325935 (= lt!388116 lt!388064)))

(declare-fun lt!388099 () List!11075)

(assert (=> d!325935 (forall!2752 lt!388099 lambda!46111)))

(declare-fun lt!388075 () List!11075)

(assert (=> d!325935 (= lt!388064 (lemmaForallSubseq!81 lt!388099 lt!388075 lambda!46111))))

(assert (=> d!325935 (= lt!388075 (list!4049 (tokens!1490 pt!21)))))

(assert (=> d!325935 (= lt!388099 (list!4049 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689)))))))

(declare-fun lt!388103 () Unit!16973)

(declare-fun lt!388083 () Unit!16973)

(assert (=> d!325935 (= lt!388103 lt!388083)))

(declare-fun lt!388124 () List!11075)

(declare-fun slice!115 (List!11075 Int Int) List!11075)

(assert (=> d!325935 (subseq!181 (slice!115 lt!388124 (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689))) lt!388124)))

(declare-fun lemmaSliceSubseq!22 (List!11075 Int Int) Unit!16973)

(assert (=> d!325935 (= lt!388083 (lemmaSliceSubseq!22 lt!388124 (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689))))))

(assert (=> d!325935 (= lt!388124 (list!4049 (tokens!1490 pt!21)))))

(declare-fun lt!388121 () Unit!16973)

(declare-fun Unit!16988 () Unit!16973)

(assert (=> d!325935 (= lt!388121 Unit!16988)))

(assert (=> d!325935 (= (rulesProduceEachTokenIndividuallyList!479 Lexer!1602 (rules!9316 pt!21) (list!4049 (tokens!1490 pt!21))) e!732106)))

(declare-fun res!515092 () Bool)

(assert (=> d!325935 (=> res!515092 e!732106)))

(assert (=> d!325935 (= res!515092 (not ((_ is Cons!11051) lt!388112)))))

(assert (=> d!325935 (= lt!388112 (list!4049 (tokens!1490 pt!21)))))

(assert (=> d!325935 (= lt!388120 Lexer!1602)))

(declare-fun lt!388073 () Unit!16973)

(declare-fun Unit!16989 () Unit!16973)

(assert (=> d!325935 (= lt!388073 Unit!16989)))

(assert (=> d!325935 (= (rulesProduceEachTokenIndividually!646 Lexer!1602 (rules!9316 pt!21) (tokens!1490 pt!21)) (forall!2755 (tokens!1490 pt!21) lambda!46111))))

(declare-fun lt!388128 () Unit!16973)

(declare-fun lemmaInvariant!96 (PrintableTokens!496) Unit!16973)

(assert (=> d!325935 (= lt!388128 (lemmaInvariant!96 pt!21))))

(assert (=> d!325935 e!732105))

(declare-fun res!515086 () Bool)

(assert (=> d!325935 (=> (not res!515086) (not e!732105))))

(assert (=> d!325935 (= res!515086 (and (<= 0 (ite c!192324 lt!387689 lt!387688)) (<= (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689)))))))

(assert (=> d!325935 (= (slice!111 pt!21 (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689))) lt!388118)))

(declare-fun b!1145358 () Bool)

(assert (=> b!1145358 (= e!732109 (rulesProduceEachTokenIndividuallyList!479 lt!388115 (rules!9316 pt!21) (t!107997 lt!388101)))))

(declare-fun b!1145359 () Bool)

(assert (=> b!1145359 (= e!732116 e!732110)))

(declare-fun res!515089 () Bool)

(assert (=> b!1145359 (=> (not res!515089) (not e!732110))))

(assert (=> b!1145359 (= res!515089 (rulesProduceIndividualToken!651 lt!388069 (rules!9316 pt!21) (h!16452 lt!388111)))))

(declare-fun b!1145360 () Bool)

(declare-fun e!732113 () Bool)

(assert (=> b!1145360 (= e!732111 e!732113)))

(declare-fun res!515091 () Bool)

(assert (=> b!1145360 (=> (not res!515091) (not e!732113))))

(assert (=> b!1145360 (= res!515091 (rulesProduceIndividualToken!651 lt!388077 (rules!9316 pt!21) (h!16452 lt!388110)))))

(declare-fun b!1145361 () Bool)

(assert (=> b!1145361 (= e!732112 e!732108)))

(declare-fun res!515090 () Bool)

(assert (=> b!1145361 (=> (not res!515090) (not e!732108))))

(declare-fun separableTokensPredicate!102 (LexerInterface!1604 Token!3472 Token!3472 List!11076) Bool)

(declare-fun apply!2353 (BalanceConc!7132 Int) Token!3472)

(assert (=> b!1145361 (= res!515090 (separableTokensPredicate!102 lt!388058 (apply!2353 (tokens!1490 pt!21) lt!388067) (apply!2353 (tokens!1490 pt!21) (+ lt!388067 1)) (rules!9316 pt!21)))))

(declare-fun lt!388122 () Unit!16973)

(declare-fun Unit!16990 () Unit!16973)

(assert (=> b!1145361 (= lt!388122 Unit!16990)))

(declare-fun size!8673 (BalanceConc!7130) Int)

(declare-fun charsOf!1040 (Token!3472) BalanceConc!7130)

(assert (=> b!1145361 (> (size!8673 (charsOf!1040 (apply!2353 (tokens!1490 pt!21) (+ lt!388067 1)))) 0)))

(declare-fun lt!388072 () Unit!16973)

(declare-fun Unit!16991 () Unit!16973)

(assert (=> b!1145361 (= lt!388072 Unit!16991)))

(assert (=> b!1145361 (rulesProduceIndividualToken!651 lt!388058 (rules!9316 pt!21) (apply!2353 (tokens!1490 pt!21) (+ lt!388067 1)))))

(declare-fun lt!388087 () Unit!16973)

(declare-fun Unit!16992 () Unit!16973)

(assert (=> b!1145361 (= lt!388087 Unit!16992)))

(assert (=> b!1145361 (rulesProduceIndividualToken!651 lt!388058 (rules!9316 pt!21) (apply!2353 (tokens!1490 pt!21) lt!388067))))

(declare-fun lt!388070 () Unit!16973)

(declare-fun lt!388092 () Unit!16973)

(assert (=> b!1145361 (= lt!388070 lt!388092)))

(declare-fun lt!388059 () Token!3472)

(assert (=> b!1145361 (rulesProduceIndividualToken!651 lt!388058 (rules!9316 pt!21) lt!388059)))

(declare-fun lt!388082 () List!11075)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!261 (LexerInterface!1604 List!11076 List!11075 Token!3472) Unit!16973)

(assert (=> b!1145361 (= lt!388092 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!261 lt!388058 (rules!9316 pt!21) lt!388082 lt!388059))))

(assert (=> b!1145361 (= lt!388059 (apply!2353 (tokens!1490 pt!21) (+ lt!388067 1)))))

(assert (=> b!1145361 (= lt!388082 (list!4049 (tokens!1490 pt!21)))))

(declare-fun lt!388126 () Unit!16973)

(declare-fun lt!388097 () Unit!16973)

(assert (=> b!1145361 (= lt!388126 lt!388097)))

(declare-fun lt!388090 () Token!3472)

(assert (=> b!1145361 (rulesProduceIndividualToken!651 lt!388058 (rules!9316 pt!21) lt!388090)))

(declare-fun lt!388117 () List!11075)

(assert (=> b!1145361 (= lt!388097 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!261 lt!388058 (rules!9316 pt!21) lt!388117 lt!388090))))

(assert (=> b!1145361 (= lt!388090 (apply!2353 (tokens!1490 pt!21) lt!388067))))

(assert (=> b!1145361 (= lt!388117 (list!4049 (tokens!1490 pt!21)))))

(declare-fun lt!388086 () Unit!16973)

(declare-fun lt!388063 () Unit!16973)

(assert (=> b!1145361 (= lt!388086 lt!388063)))

(declare-fun lt!388079 () List!11075)

(declare-fun lt!388106 () Int)

(declare-fun tail!1644 (List!11075) List!11075)

(assert (=> b!1145361 (= (tail!1644 (drop!430 lt!388079 lt!388106)) (drop!430 lt!388079 (+ lt!388106 1)))))

(declare-fun lemmaDropTail!331 (List!11075 Int) Unit!16973)

(assert (=> b!1145361 (= lt!388063 (lemmaDropTail!331 lt!388079 lt!388106))))

(assert (=> b!1145361 (= lt!388106 (+ lt!388067 1))))

(assert (=> b!1145361 (= lt!388079 (list!4049 (tokens!1490 pt!21)))))

(declare-fun lt!388091 () Unit!16973)

(declare-fun lt!388108 () Unit!16973)

(assert (=> b!1145361 (= lt!388091 lt!388108)))

(declare-fun lt!388096 () List!11075)

(assert (=> b!1145361 (= (tail!1644 (drop!430 lt!388096 lt!388067)) (drop!430 lt!388096 (+ lt!388067 1)))))

(assert (=> b!1145361 (= lt!388108 (lemmaDropTail!331 lt!388096 lt!388067))))

(assert (=> b!1145361 (= lt!388096 (list!4049 (tokens!1490 pt!21)))))

(declare-fun lt!388102 () Unit!16973)

(declare-fun lt!388081 () Unit!16973)

(assert (=> b!1145361 (= lt!388102 lt!388081)))

(declare-fun lt!388123 () List!11075)

(declare-fun lt!388084 () Int)

(declare-fun head!2070 (List!11075) Token!3472)

(declare-fun apply!2354 (List!11075 Int) Token!3472)

(assert (=> b!1145361 (= (head!2070 (drop!430 lt!388123 lt!388084)) (apply!2354 lt!388123 lt!388084))))

(declare-fun lemmaDropApply!343 (List!11075 Int) Unit!16973)

(assert (=> b!1145361 (= lt!388081 (lemmaDropApply!343 lt!388123 lt!388084))))

(assert (=> b!1145361 (= lt!388084 (+ lt!388067 1))))

(assert (=> b!1145361 (= lt!388123 (list!4049 (tokens!1490 pt!21)))))

(declare-fun lt!388095 () Unit!16973)

(declare-fun lt!388065 () Unit!16973)

(assert (=> b!1145361 (= lt!388095 lt!388065)))

(declare-fun lt!388071 () List!11075)

(assert (=> b!1145361 (= (head!2070 (drop!430 lt!388071 lt!388067)) (apply!2354 lt!388071 lt!388067))))

(assert (=> b!1145361 (= lt!388065 (lemmaDropApply!343 lt!388071 lt!388067))))

(assert (=> b!1145361 (= lt!388071 (list!4049 (tokens!1490 pt!21)))))

(declare-fun b!1145362 () Bool)

(assert (=> b!1145362 (= e!732113 (rulesProduceEachTokenIndividuallyList!479 lt!388077 (rules!9316 pt!21) (t!107997 lt!388110)))))

(declare-fun b!1145363 () Bool)

(assert (=> b!1145363 (= e!732107 (rulesProduceEachTokenIndividuallyList!479 lt!388120 (rules!9316 pt!21) (t!107997 lt!388112)))))

(assert (= (and d!325935 res!515086) b!1145353))

(assert (= (and d!325935 (not res!515092)) b!1145356))

(assert (= (and b!1145356 res!515088) b!1145363))

(assert (= (and d!325935 (not res!515082)) b!1145351))

(assert (= (and b!1145351 res!515093) b!1145358))

(assert (= (and d!325935 (not res!515085)) b!1145361))

(assert (= (and b!1145361 res!515090) b!1145350))

(assert (= (and d!325935 (not res!515083)) b!1145360))

(assert (= (and b!1145360 res!515091) b!1145362))

(assert (= (and d!325935 res!515095) b!1145352))

(assert (= (and d!325935 (not res!515094)) b!1145359))

(assert (= (and b!1145359 res!515089) b!1145357))

(assert (= (and d!325935 res!515087) b!1145354))

(assert (= (and d!325935 res!515084) b!1145355))

(declare-fun m!1306265 () Bool)

(assert (=> b!1145353 m!1306265))

(declare-fun m!1306267 () Bool)

(assert (=> d!325935 m!1306267))

(declare-fun m!1306269 () Bool)

(assert (=> d!325935 m!1306269))

(assert (=> d!325935 m!1306267))

(declare-fun m!1306271 () Bool)

(assert (=> d!325935 m!1306271))

(declare-fun m!1306273 () Bool)

(assert (=> d!325935 m!1306273))

(assert (=> d!325935 m!1306267))

(declare-fun m!1306275 () Bool)

(assert (=> d!325935 m!1306275))

(declare-fun m!1306277 () Bool)

(assert (=> d!325935 m!1306277))

(assert (=> d!325935 m!1306277))

(declare-fun m!1306279 () Bool)

(assert (=> d!325935 m!1306279))

(declare-fun m!1306281 () Bool)

(assert (=> d!325935 m!1306281))

(declare-fun m!1306283 () Bool)

(assert (=> d!325935 m!1306283))

(declare-fun m!1306285 () Bool)

(assert (=> d!325935 m!1306285))

(declare-fun m!1306287 () Bool)

(assert (=> d!325935 m!1306287))

(declare-fun m!1306289 () Bool)

(assert (=> d!325935 m!1306289))

(declare-fun m!1306291 () Bool)

(assert (=> d!325935 m!1306291))

(assert (=> d!325935 m!1306267))

(assert (=> d!325935 m!1306281))

(assert (=> d!325935 m!1306267))

(declare-fun m!1306293 () Bool)

(assert (=> d!325935 m!1306293))

(declare-fun m!1306295 () Bool)

(assert (=> d!325935 m!1306295))

(declare-fun m!1306297 () Bool)

(assert (=> d!325935 m!1306297))

(declare-fun m!1306299 () Bool)

(assert (=> d!325935 m!1306299))

(assert (=> d!325935 m!1306281))

(declare-fun m!1306301 () Bool)

(assert (=> d!325935 m!1306301))

(assert (=> d!325935 m!1306267))

(declare-fun m!1306303 () Bool)

(assert (=> d!325935 m!1306303))

(declare-fun m!1306305 () Bool)

(assert (=> d!325935 m!1306305))

(declare-fun m!1306307 () Bool)

(assert (=> d!325935 m!1306307))

(declare-fun m!1306309 () Bool)

(assert (=> d!325935 m!1306309))

(declare-fun m!1306311 () Bool)

(assert (=> d!325935 m!1306311))

(assert (=> d!325935 m!1306285))

(declare-fun m!1306313 () Bool)

(assert (=> d!325935 m!1306313))

(assert (=> d!325935 m!1306265))

(declare-fun m!1306315 () Bool)

(assert (=> d!325935 m!1306315))

(assert (=> d!325935 m!1306315))

(declare-fun m!1306317 () Bool)

(assert (=> d!325935 m!1306317))

(declare-fun m!1306319 () Bool)

(assert (=> d!325935 m!1306319))

(declare-fun m!1306321 () Bool)

(assert (=> d!325935 m!1306321))

(assert (=> d!325935 m!1306319))

(declare-fun m!1306323 () Bool)

(assert (=> d!325935 m!1306323))

(assert (=> d!325935 m!1306293))

(declare-fun m!1306325 () Bool)

(assert (=> d!325935 m!1306325))

(declare-fun m!1306327 () Bool)

(assert (=> b!1145357 m!1306327))

(declare-fun m!1306329 () Bool)

(assert (=> b!1145356 m!1306329))

(declare-fun m!1306331 () Bool)

(assert (=> b!1145351 m!1306331))

(declare-fun m!1306333 () Bool)

(assert (=> b!1145352 m!1306333))

(declare-fun m!1306335 () Bool)

(assert (=> b!1145352 m!1306335))

(assert (=> b!1145352 m!1306319))

(declare-fun m!1306337 () Bool)

(assert (=> b!1145352 m!1306337))

(assert (=> b!1145352 m!1306319))

(declare-fun m!1306339 () Bool)

(assert (=> b!1145352 m!1306339))

(assert (=> b!1145352 m!1306319))

(declare-fun m!1306341 () Bool)

(assert (=> b!1145352 m!1306341))

(declare-fun m!1306343 () Bool)

(assert (=> b!1145358 m!1306343))

(declare-fun m!1306345 () Bool)

(assert (=> b!1145363 m!1306345))

(assert (=> b!1145354 m!1306315))

(assert (=> b!1145354 m!1306315))

(declare-fun m!1306347 () Bool)

(assert (=> b!1145354 m!1306347))

(declare-fun m!1306349 () Bool)

(assert (=> b!1145354 m!1306349))

(declare-fun m!1306351 () Bool)

(assert (=> b!1145354 m!1306351))

(declare-fun m!1306353 () Bool)

(assert (=> b!1145360 m!1306353))

(declare-fun m!1306355 () Bool)

(assert (=> b!1145359 m!1306355))

(declare-fun m!1306357 () Bool)

(assert (=> b!1145355 m!1306357))

(assert (=> b!1145355 m!1306267))

(assert (=> b!1145355 m!1306267))

(assert (=> b!1145355 m!1306293))

(declare-fun m!1306359 () Bool)

(assert (=> b!1145361 m!1306359))

(declare-fun m!1306361 () Bool)

(assert (=> b!1145361 m!1306361))

(assert (=> b!1145361 m!1306359))

(declare-fun m!1306363 () Bool)

(assert (=> b!1145361 m!1306363))

(assert (=> b!1145361 m!1306359))

(declare-fun m!1306365 () Bool)

(assert (=> b!1145361 m!1306365))

(declare-fun m!1306367 () Bool)

(assert (=> b!1145361 m!1306367))

(assert (=> b!1145361 m!1306361))

(declare-fun m!1306369 () Bool)

(assert (=> b!1145361 m!1306369))

(assert (=> b!1145361 m!1306365))

(declare-fun m!1306371 () Bool)

(assert (=> b!1145361 m!1306371))

(declare-fun m!1306373 () Bool)

(assert (=> b!1145361 m!1306373))

(declare-fun m!1306375 () Bool)

(assert (=> b!1145361 m!1306375))

(declare-fun m!1306377 () Bool)

(assert (=> b!1145361 m!1306377))

(declare-fun m!1306379 () Bool)

(assert (=> b!1145361 m!1306379))

(declare-fun m!1306381 () Bool)

(assert (=> b!1145361 m!1306381))

(assert (=> b!1145361 m!1306281))

(declare-fun m!1306383 () Bool)

(assert (=> b!1145361 m!1306383))

(declare-fun m!1306385 () Bool)

(assert (=> b!1145361 m!1306385))

(declare-fun m!1306387 () Bool)

(assert (=> b!1145361 m!1306387))

(declare-fun m!1306389 () Bool)

(assert (=> b!1145361 m!1306389))

(declare-fun m!1306391 () Bool)

(assert (=> b!1145361 m!1306391))

(declare-fun m!1306393 () Bool)

(assert (=> b!1145361 m!1306393))

(declare-fun m!1306395 () Bool)

(assert (=> b!1145361 m!1306395))

(declare-fun m!1306397 () Bool)

(assert (=> b!1145361 m!1306397))

(declare-fun m!1306399 () Bool)

(assert (=> b!1145361 m!1306399))

(declare-fun m!1306401 () Bool)

(assert (=> b!1145361 m!1306401))

(assert (=> b!1145361 m!1306395))

(assert (=> b!1145361 m!1306387))

(assert (=> b!1145361 m!1306365))

(assert (=> b!1145361 m!1306399))

(assert (=> b!1145361 m!1306365))

(declare-fun m!1306403 () Bool)

(assert (=> b!1145361 m!1306403))

(declare-fun m!1306405 () Bool)

(assert (=> b!1145361 m!1306405))

(declare-fun m!1306407 () Bool)

(assert (=> b!1145361 m!1306407))

(declare-fun m!1306409 () Bool)

(assert (=> b!1145361 m!1306409))

(assert (=> b!1145361 m!1306407))

(declare-fun m!1306411 () Bool)

(assert (=> b!1145361 m!1306411))

(declare-fun m!1306413 () Bool)

(assert (=> b!1145350 m!1306413))

(declare-fun m!1306415 () Bool)

(assert (=> b!1145362 m!1306415))

(assert (=> bm!81577 d!325935))

(declare-fun d!325945 () Bool)

(declare-fun lt!388131 () Int)

(declare-fun size!8674 (List!11078) Int)

(assert (=> d!325945 (= lt!388131 (size!8674 (list!4047 indices!2)))))

(declare-fun size!8675 (Conc!3557) Int)

(assert (=> d!325945 (= lt!388131 (size!8675 (c!192329 indices!2)))))

(assert (=> d!325945 (= (size!8667 indices!2) lt!388131)))

(declare-fun bs!280966 () Bool)

(assert (= bs!280966 d!325945))

(assert (=> bs!280966 m!1306097))

(assert (=> bs!280966 m!1306097))

(declare-fun m!1306419 () Bool)

(assert (=> bs!280966 m!1306419))

(declare-fun m!1306421 () Bool)

(assert (=> bs!280966 m!1306421))

(assert (=> b!1145229 d!325945))

(declare-fun d!325949 () Bool)

(declare-fun c!192341 () Bool)

(assert (=> d!325949 (= c!192341 ((_ is Node!3556) (c!192328 acc!225)))))

(declare-fun e!732133 () Bool)

(assert (=> d!325949 (= (inv!14414 (c!192328 acc!225)) e!732133)))

(declare-fun b!1145382 () Bool)

(declare-fun inv!14433 (Conc!3556) Bool)

(assert (=> b!1145382 (= e!732133 (inv!14433 (c!192328 acc!225)))))

(declare-fun b!1145383 () Bool)

(declare-fun e!732134 () Bool)

(assert (=> b!1145383 (= e!732133 e!732134)))

(declare-fun res!515102 () Bool)

(assert (=> b!1145383 (= res!515102 (not ((_ is Leaf!5519) (c!192328 acc!225))))))

(assert (=> b!1145383 (=> res!515102 e!732134)))

(declare-fun b!1145384 () Bool)

(declare-fun inv!14434 (Conc!3556) Bool)

(assert (=> b!1145384 (= e!732134 (inv!14434 (c!192328 acc!225)))))

(assert (= (and d!325949 c!192341) b!1145382))

(assert (= (and d!325949 (not c!192341)) b!1145383))

(assert (= (and b!1145383 (not res!515102)) b!1145384))

(declare-fun m!1306439 () Bool)

(assert (=> b!1145382 m!1306439))

(declare-fun m!1306441 () Bool)

(assert (=> b!1145384 m!1306441))

(assert (=> b!1145219 d!325949))

(declare-fun d!325957 () Bool)

(declare-fun lt!388139 () Bool)

(declare-fun forall!2756 (List!11077 Int) Bool)

(assert (=> d!325957 (= lt!388139 (forall!2756 (list!4044 acc!225) lambda!46085))))

(declare-fun forall!2757 (Conc!3556 Int) Bool)

(assert (=> d!325957 (= lt!388139 (forall!2757 (c!192328 acc!225) lambda!46085))))

(assert (=> d!325957 (= (forall!2746 acc!225 lambda!46085) lt!388139)))

(declare-fun bs!280968 () Bool)

(assert (= bs!280968 d!325957))

(assert (=> bs!280968 m!1306049))

(assert (=> bs!280968 m!1306049))

(declare-fun m!1306443 () Bool)

(assert (=> bs!280968 m!1306443))

(declare-fun m!1306445 () Bool)

(assert (=> bs!280968 m!1306445))

(assert (=> b!1145220 d!325957))

(declare-fun lt!388140 () Bool)

(declare-fun d!325959 () Bool)

(assert (=> d!325959 (= lt!388140 (forall!2756 (list!4044 (append!358 acc!225 lt!387686)) lambda!46085))))

(assert (=> d!325959 (= lt!388140 (forall!2757 (c!192328 (append!358 acc!225 lt!387686)) lambda!46085))))

(assert (=> d!325959 (= (forall!2746 (append!358 acc!225 lt!387686) lambda!46085) lt!388140)))

(declare-fun bs!280969 () Bool)

(assert (= bs!280969 d!325959))

(assert (=> bs!280969 m!1306045))

(declare-fun m!1306447 () Bool)

(assert (=> bs!280969 m!1306447))

(assert (=> bs!280969 m!1306447))

(declare-fun m!1306449 () Bool)

(assert (=> bs!280969 m!1306449))

(declare-fun m!1306451 () Bool)

(assert (=> bs!280969 m!1306451))

(assert (=> b!1145226 d!325959))

(declare-fun d!325961 () Bool)

(declare-fun e!732140 () Bool)

(assert (=> d!325961 e!732140))

(declare-fun res!515108 () Bool)

(assert (=> d!325961 (=> (not res!515108) (not e!732140))))

(declare-fun isBalanced!996 (Conc!3556) Bool)

(declare-fun append!360 (Conc!3556 PrintableTokens!496) Conc!3556)

(assert (=> d!325961 (= res!515108 (isBalanced!996 (append!360 (c!192328 acc!225) lt!387686)))))

(declare-fun lt!388149 () BalanceConc!7134)

(assert (=> d!325961 (= lt!388149 (BalanceConc!7135 (append!360 (c!192328 acc!225) lt!387686)))))

(assert (=> d!325961 (= (append!358 acc!225 lt!387686) lt!388149)))

(declare-fun b!1145390 () Bool)

(declare-fun $colon+!79 (List!11077 PrintableTokens!496) List!11077)

(assert (=> b!1145390 (= e!732140 (= (list!4044 lt!388149) ($colon+!79 (list!4044 acc!225) lt!387686)))))

(assert (= (and d!325961 res!515108) b!1145390))

(declare-fun m!1306467 () Bool)

(assert (=> d!325961 m!1306467))

(assert (=> d!325961 m!1306467))

(declare-fun m!1306469 () Bool)

(assert (=> d!325961 m!1306469))

(declare-fun m!1306471 () Bool)

(assert (=> b!1145390 m!1306471))

(assert (=> b!1145390 m!1306049))

(assert (=> b!1145390 m!1306049))

(declare-fun m!1306473 () Bool)

(assert (=> b!1145390 m!1306473))

(assert (=> b!1145226 d!325961))

(declare-fun d!325967 () Bool)

(declare-fun ++!2950 (List!11077 List!11077) List!11077)

(assert (=> d!325967 (forall!2756 (++!2950 (list!4044 acc!225) (Cons!11053 lt!387686 Nil!11053)) lambda!46085)))

(declare-fun lt!388152 () Unit!16973)

(declare-fun choose!7348 (List!11077 List!11077 Int) Unit!16973)

(assert (=> d!325967 (= lt!388152 (choose!7348 (list!4044 acc!225) (Cons!11053 lt!387686 Nil!11053) lambda!46085))))

(assert (=> d!325967 (forall!2756 (list!4044 acc!225) lambda!46085)))

(assert (=> d!325967 (= (lemmaConcatPreservesForall!116 (list!4044 acc!225) (Cons!11053 lt!387686 Nil!11053) lambda!46085) lt!388152)))

(declare-fun bs!280973 () Bool)

(assert (= bs!280973 d!325967))

(assert (=> bs!280973 m!1306049))

(declare-fun m!1306477 () Bool)

(assert (=> bs!280973 m!1306477))

(assert (=> bs!280973 m!1306477))

(declare-fun m!1306479 () Bool)

(assert (=> bs!280973 m!1306479))

(assert (=> bs!280973 m!1306049))

(declare-fun m!1306481 () Bool)

(assert (=> bs!280973 m!1306481))

(assert (=> bs!280973 m!1306049))

(assert (=> bs!280973 m!1306443))

(assert (=> b!1145226 d!325967))

(declare-fun d!325973 () Bool)

(declare-fun list!4050 (Conc!3556) List!11077)

(assert (=> d!325973 (= (list!4044 acc!225) (list!4050 (c!192328 acc!225)))))

(declare-fun bs!280974 () Bool)

(assert (= bs!280974 d!325973))

(declare-fun m!1306487 () Bool)

(assert (=> bs!280974 m!1306487))

(assert (=> b!1145226 d!325973))

(declare-fun d!325977 () Bool)

(declare-fun c!192349 () Bool)

(assert (=> d!325977 (= c!192349 ((_ is Node!3557) (c!192329 indices!2)))))

(declare-fun e!732151 () Bool)

(assert (=> d!325977 (= (inv!14417 (c!192329 indices!2)) e!732151)))

(declare-fun b!1145406 () Bool)

(declare-fun inv!14435 (Conc!3557) Bool)

(assert (=> b!1145406 (= e!732151 (inv!14435 (c!192329 indices!2)))))

(declare-fun b!1145407 () Bool)

(declare-fun e!732152 () Bool)

(assert (=> b!1145407 (= e!732151 e!732152)))

(declare-fun res!515114 () Bool)

(assert (=> b!1145407 (= res!515114 (not ((_ is Leaf!5520) (c!192329 indices!2))))))

(assert (=> b!1145407 (=> res!515114 e!732152)))

(declare-fun b!1145408 () Bool)

(declare-fun inv!14436 (Conc!3557) Bool)

(assert (=> b!1145408 (= e!732152 (inv!14436 (c!192329 indices!2)))))

(assert (= (and d!325977 c!192349) b!1145406))

(assert (= (and d!325977 (not c!192349)) b!1145407))

(assert (= (and b!1145407 (not res!515114)) b!1145408))

(declare-fun m!1306493 () Bool)

(assert (=> b!1145406 m!1306493))

(declare-fun m!1306495 () Bool)

(assert (=> b!1145408 m!1306495))

(assert (=> b!1145227 d!325977))

(declare-fun d!325981 () Bool)

(declare-fun lt!388161 () Bool)

(declare-fun forall!2758 (List!11078 Int) Bool)

(assert (=> d!325981 (= lt!388161 (forall!2758 (list!4047 indices!2) lambda!46084))))

(declare-fun forall!2759 (Conc!3557 Int) Bool)

(assert (=> d!325981 (= lt!388161 (forall!2759 (c!192329 indices!2) lambda!46084))))

(assert (=> d!325981 (= (forall!2747 indices!2 lambda!46084) lt!388161)))

(declare-fun bs!280977 () Bool)

(assert (= bs!280977 d!325981))

(assert (=> bs!280977 m!1306097))

(assert (=> bs!280977 m!1306097))

(declare-fun m!1306501 () Bool)

(assert (=> bs!280977 m!1306501))

(declare-fun m!1306503 () Bool)

(assert (=> bs!280977 m!1306503))

(assert (=> b!1145223 d!325981))

(declare-fun d!325983 () Bool)

(assert (=> d!325983 (= (size!8666 pt!21) (size!8670 (tokens!1490 pt!21)))))

(declare-fun bs!280978 () Bool)

(assert (= bs!280978 d!325983))

(assert (=> bs!280978 m!1306265))

(assert (=> start!99182 d!325983))

(declare-fun d!325985 () Bool)

(declare-fun res!515121 () Bool)

(declare-fun e!732185 () Bool)

(assert (=> d!325985 (=> (not res!515121) (not e!732185))))

(declare-fun isEmpty!6858 (List!11076) Bool)

(assert (=> d!325985 (= res!515121 (not (isEmpty!6858 (rules!9316 pt!21))))))

(assert (=> d!325985 (= (inv!14418 pt!21) e!732185)))

(declare-fun b!1145456 () Bool)

(declare-fun res!515122 () Bool)

(assert (=> b!1145456 (=> (not res!515122) (not e!732185))))

(declare-fun rulesInvariant!1478 (LexerInterface!1604 List!11076) Bool)

(assert (=> b!1145456 (= res!515122 (rulesInvariant!1478 Lexer!1602 (rules!9316 pt!21)))))

(declare-fun b!1145457 () Bool)

(declare-fun res!515123 () Bool)

(assert (=> b!1145457 (=> (not res!515123) (not e!732185))))

(assert (=> b!1145457 (= res!515123 (rulesProduceEachTokenIndividually!646 Lexer!1602 (rules!9316 pt!21) (tokens!1490 pt!21)))))

(declare-fun b!1145458 () Bool)

(assert (=> b!1145458 (= e!732185 (separableTokens!73 Lexer!1602 (tokens!1490 pt!21) (rules!9316 pt!21)))))

(assert (= (and d!325985 res!515121) b!1145456))

(assert (= (and b!1145456 res!515122) b!1145457))

(assert (= (and b!1145457 res!515123) b!1145458))

(declare-fun m!1306527 () Bool)

(assert (=> d!325985 m!1306527))

(declare-fun m!1306529 () Bool)

(assert (=> b!1145456 m!1306529))

(assert (=> b!1145457 m!1306299))

(declare-fun m!1306531 () Bool)

(assert (=> b!1145458 m!1306531))

(assert (=> start!99182 d!325985))

(declare-fun d!325987 () Bool)

(declare-fun isBalanced!997 (Conc!3557) Bool)

(assert (=> d!325987 (= (inv!14419 indices!2) (isBalanced!997 (c!192329 indices!2)))))

(declare-fun bs!280979 () Bool)

(assert (= bs!280979 d!325987))

(declare-fun m!1306533 () Bool)

(assert (=> bs!280979 m!1306533))

(assert (=> start!99182 d!325987))

(declare-fun d!325989 () Bool)

(assert (=> d!325989 (= (inv!14420 acc!225) (isBalanced!996 (c!192328 acc!225)))))

(declare-fun bs!280980 () Bool)

(assert (= bs!280980 d!325989))

(declare-fun m!1306535 () Bool)

(assert (=> bs!280980 m!1306535))

(assert (=> start!99182 d!325989))

(declare-fun d!325991 () Bool)

(assert (=> d!325991 (= (usesJsonRules!0 pt!21) (= (rules!9316 pt!21) (rules!109 JsonLexer!327)))))

(declare-fun bs!280981 () Bool)

(assert (= bs!280981 d!325991))

(assert (=> bs!280981 m!1306095))

(assert (=> b!1145224 d!325991))

(declare-fun d!325993 () Bool)

(declare-fun isBalanced!998 (Conc!3555) Bool)

(assert (=> d!325993 (= (inv!14416 (tokens!1490 pt!21)) (isBalanced!998 (c!192327 (tokens!1490 pt!21))))))

(declare-fun bs!280982 () Bool)

(assert (= bs!280982 d!325993))

(declare-fun m!1306537 () Bool)

(assert (=> bs!280982 m!1306537))

(assert (=> b!1145225 d!325993))

(declare-fun e!732190 () Bool)

(declare-fun tp!331972 () Bool)

(declare-fun b!1145467 () Bool)

(declare-fun tp!331974 () Bool)

(assert (=> b!1145467 (= e!732190 (and (inv!14415 (left!9613 (c!192327 (tokens!1490 pt!21)))) tp!331974 (inv!14415 (right!9943 (c!192327 (tokens!1490 pt!21)))) tp!331972))))

(declare-fun b!1145469 () Bool)

(declare-fun e!732191 () Bool)

(declare-fun tp!331973 () Bool)

(assert (=> b!1145469 (= e!732191 tp!331973)))

(declare-fun b!1145468 () Bool)

(declare-fun inv!14437 (IArray!7115) Bool)

(assert (=> b!1145468 (= e!732190 (and (inv!14437 (xs!6256 (c!192327 (tokens!1490 pt!21)))) e!732191))))

(assert (=> b!1145221 (= tp!331930 (and (inv!14415 (c!192327 (tokens!1490 pt!21))) e!732190))))

(assert (= (and b!1145221 ((_ is Node!3555) (c!192327 (tokens!1490 pt!21)))) b!1145467))

(assert (= b!1145468 b!1145469))

(assert (= (and b!1145221 ((_ is Leaf!5518) (c!192327 (tokens!1490 pt!21)))) b!1145468))

(declare-fun m!1306539 () Bool)

(assert (=> b!1145467 m!1306539))

(declare-fun m!1306541 () Bool)

(assert (=> b!1145467 m!1306541))

(declare-fun m!1306543 () Bool)

(assert (=> b!1145468 m!1306543))

(assert (=> b!1145221 m!1306053))

(declare-fun tp!331980 () Bool)

(declare-fun e!732196 () Bool)

(declare-fun b!1145476 () Bool)

(declare-fun tp!331979 () Bool)

(assert (=> b!1145476 (= e!732196 (and (inv!14417 (left!9615 (c!192329 indices!2))) tp!331979 (inv!14417 (right!9945 (c!192329 indices!2))) tp!331980))))

(declare-fun b!1145477 () Bool)

(declare-fun inv!14438 (IArray!7119) Bool)

(assert (=> b!1145477 (= e!732196 (inv!14438 (xs!6258 (c!192329 indices!2))))))

(assert (=> b!1145227 (= tp!331929 (and (inv!14417 (c!192329 indices!2)) e!732196))))

(assert (= (and b!1145227 ((_ is Node!3557) (c!192329 indices!2))) b!1145476))

(assert (= (and b!1145227 ((_ is Leaf!5520) (c!192329 indices!2))) b!1145477))

(declare-fun m!1306545 () Bool)

(assert (=> b!1145476 m!1306545))

(declare-fun m!1306547 () Bool)

(assert (=> b!1145476 m!1306547))

(declare-fun m!1306549 () Bool)

(assert (=> b!1145477 m!1306549))

(assert (=> b!1145227 m!1306071))

(declare-fun e!732203 () Bool)

(declare-fun b!1145486 () Bool)

(declare-fun tp!331989 () Bool)

(declare-fun tp!331988 () Bool)

(assert (=> b!1145486 (= e!732203 (and (inv!14414 (left!9614 (c!192328 acc!225))) tp!331988 (inv!14414 (right!9944 (c!192328 acc!225))) tp!331989))))

(declare-fun b!1145488 () Bool)

(declare-fun e!732202 () Bool)

(declare-fun tp!331987 () Bool)

(assert (=> b!1145488 (= e!732202 tp!331987)))

(declare-fun b!1145487 () Bool)

(declare-fun inv!14439 (IArray!7117) Bool)

(assert (=> b!1145487 (= e!732203 (and (inv!14439 (xs!6257 (c!192328 acc!225))) e!732202))))

(assert (=> b!1145219 (= tp!331932 (and (inv!14414 (c!192328 acc!225)) e!732203))))

(assert (= (and b!1145219 ((_ is Node!3556) (c!192328 acc!225))) b!1145486))

(assert (= b!1145487 b!1145488))

(assert (= (and b!1145219 ((_ is Leaf!5519) (c!192328 acc!225))) b!1145487))

(declare-fun m!1306551 () Bool)

(assert (=> b!1145486 m!1306551))

(declare-fun m!1306553 () Bool)

(assert (=> b!1145486 m!1306553))

(declare-fun m!1306555 () Bool)

(assert (=> b!1145487 m!1306555))

(assert (=> b!1145219 m!1306041))

(declare-fun b!1145499 () Bool)

(declare-fun b_free!27501 () Bool)

(declare-fun b_next!28205 () Bool)

(assert (=> b!1145499 (= b_free!27501 (not b_next!28205))))

(declare-fun tp!331998 () Bool)

(declare-fun b_and!80285 () Bool)

(assert (=> b!1145499 (= tp!331998 b_and!80285)))

(declare-fun b_free!27503 () Bool)

(declare-fun b_next!28207 () Bool)

(assert (=> b!1145499 (= b_free!27503 (not b_next!28207))))

(declare-fun tp!331997 () Bool)

(declare-fun b_and!80287 () Bool)

(assert (=> b!1145499 (= tp!331997 b_and!80287)))

(declare-fun e!732212 () Bool)

(assert (=> b!1145499 (= e!732212 (and tp!331998 tp!331997))))

(declare-fun b!1145498 () Bool)

(declare-fun e!732214 () Bool)

(declare-fun inv!14406 (String!13443) Bool)

(declare-fun inv!14440 (TokenValueInjection!3642) Bool)

(assert (=> b!1145498 (= e!732214 (and (inv!14406 (tag!2167 (h!16453 (rules!9316 pt!21)))) (inv!14440 (transformation!1905 (h!16453 (rules!9316 pt!21)))) e!732212))))

(declare-fun b!1145497 () Bool)

(declare-fun e!732215 () Bool)

(declare-fun tp!331996 () Bool)

(assert (=> b!1145497 (= e!732215 (and e!732214 tp!331996))))

(assert (=> b!1145225 (= tp!331931 e!732215)))

(assert (= b!1145498 b!1145499))

(assert (= b!1145497 b!1145498))

(assert (= (and b!1145225 ((_ is Cons!11052) (rules!9316 pt!21))) b!1145497))

(declare-fun m!1306557 () Bool)

(assert (=> b!1145498 m!1306557))

(declare-fun m!1306559 () Bool)

(assert (=> b!1145498 m!1306559))

(check-sat (not d!325921) (not b!1145238) (not b!1145361) (not b!1145406) (not b!1145262) (not b!1145498) (not d!325945) (not b!1145497) (not b!1145384) (not b!1145359) (not b!1145261) (not d!325931) (not b!1145370) (not b!1145371) (not b!1145467) b_and!80287 (not b!1145360) (not b!1145358) (not b!1145458) (not d!325933) (not d!325967) (not b!1145468) (not b!1145408) (not b!1145487) (not b!1145350) (not d!325989) (not b_next!28205) (not b!1145355) (not b!1145357) (not b!1145240) (not d!325983) (not b!1145353) (not b!1145476) (not d!325961) (not d!325987) (not b!1145219) (not b!1145356) (not b!1145362) (not b!1145488) (not d!325993) (not b!1145354) (not b!1145456) (not b!1145457) (not b!1145363) (not d!325985) (not b!1145227) (not d!325957) (not b_next!28207) (not d!325981) (not d!325991) (not b!1145469) (not b!1145382) b_and!80285 (not b!1145352) (not b!1145390) (not d!325973) (not b!1145486) (not d!325935) (not b!1145221) (not b!1145351) (not b!1145477) (not d!325959))
(check-sat b_and!80287 b_and!80285 (not b_next!28205) (not b_next!28207))
(get-model)

(declare-fun d!326009 () Bool)

(declare-fun lt!388176 () Int)

(declare-fun contains!1976 (List!11078 Int) Bool)

(assert (=> d!326009 (contains!1976 (list!4047 indices!2) lt!388176)))

(declare-fun e!732260 () Int)

(assert (=> d!326009 (= lt!388176 e!732260)))

(declare-fun c!192367 () Bool)

(assert (=> d!326009 (= c!192367 (= 1 0))))

(declare-fun e!732259 () Bool)

(assert (=> d!326009 e!732259))

(declare-fun res!515176 () Bool)

(assert (=> d!326009 (=> (not res!515176) (not e!732259))))

(assert (=> d!326009 (= res!515176 (<= 0 1))))

(assert (=> d!326009 (= (apply!2351 (list!4047 indices!2) 1) lt!388176)))

(declare-fun b!1145581 () Bool)

(assert (=> b!1145581 (= e!732259 (< 1 (size!8674 (list!4047 indices!2))))))

(declare-fun b!1145582 () Bool)

(declare-fun head!2072 (List!11078) Int)

(assert (=> b!1145582 (= e!732260 (head!2072 (list!4047 indices!2)))))

(declare-fun b!1145583 () Bool)

(declare-fun tail!1646 (List!11078) List!11078)

(assert (=> b!1145583 (= e!732260 (apply!2351 (tail!1646 (list!4047 indices!2)) (- 1 1)))))

(assert (= (and d!326009 res!515176) b!1145581))

(assert (= (and d!326009 c!192367) b!1145582))

(assert (= (and d!326009 (not c!192367)) b!1145583))

(assert (=> d!326009 m!1306097))

(declare-fun m!1306619 () Bool)

(assert (=> d!326009 m!1306619))

(assert (=> b!1145581 m!1306097))

(assert (=> b!1145581 m!1306419))

(assert (=> b!1145582 m!1306097))

(declare-fun m!1306621 () Bool)

(assert (=> b!1145582 m!1306621))

(assert (=> b!1145583 m!1306097))

(declare-fun m!1306623 () Bool)

(assert (=> b!1145583 m!1306623))

(assert (=> b!1145583 m!1306623))

(declare-fun m!1306625 () Bool)

(assert (=> b!1145583 m!1306625))

(assert (=> d!325931 d!326009))

(declare-fun d!326013 () Bool)

(declare-fun list!4052 (Conc!3557) List!11078)

(assert (=> d!326013 (= (list!4047 indices!2) (list!4052 (c!192329 indices!2)))))

(declare-fun bs!280985 () Bool)

(assert (= bs!280985 d!326013))

(declare-fun m!1306631 () Bool)

(assert (=> bs!280985 m!1306631))

(assert (=> d!325931 d!326013))

(declare-fun b!1145618 () Bool)

(declare-fun e!732283 () Int)

(assert (=> b!1145618 (= e!732283 (- 1 (size!8675 (left!9615 (c!192329 indices!2)))))))

(declare-fun bm!81583 () Bool)

(declare-fun c!192375 () Bool)

(declare-fun c!192376 () Bool)

(assert (=> bm!81583 (= c!192375 c!192376)))

(declare-fun call!81588 () Int)

(assert (=> bm!81583 (= call!81588 (apply!2352 (ite c!192376 (left!9615 (c!192329 indices!2)) (right!9945 (c!192329 indices!2))) e!732283))))

(declare-fun b!1145619 () Bool)

(declare-fun e!732282 () Bool)

(assert (=> b!1145619 (= e!732282 (< 1 (size!8675 (c!192329 indices!2))))))

(declare-fun b!1145621 () Bool)

(declare-fun e!732281 () Int)

(declare-fun apply!2356 (IArray!7119 Int) Int)

(assert (=> b!1145621 (= e!732281 (apply!2356 (xs!6258 (c!192329 indices!2)) 1))))

(declare-fun b!1145622 () Bool)

(declare-fun e!732280 () Int)

(assert (=> b!1145622 (= e!732280 call!81588)))

(declare-fun d!326019 () Bool)

(declare-fun lt!388182 () Int)

(assert (=> d!326019 (= lt!388182 (apply!2351 (list!4052 (c!192329 indices!2)) 1))))

(assert (=> d!326019 (= lt!388182 e!732281)))

(declare-fun c!192374 () Bool)

(assert (=> d!326019 (= c!192374 ((_ is Leaf!5520) (c!192329 indices!2)))))

(assert (=> d!326019 e!732282))

(declare-fun res!515199 () Bool)

(assert (=> d!326019 (=> (not res!515199) (not e!732282))))

(assert (=> d!326019 (= res!515199 (<= 0 1))))

(assert (=> d!326019 (= (apply!2352 (c!192329 indices!2) 1) lt!388182)))

(declare-fun b!1145620 () Bool)

(assert (=> b!1145620 (= e!732283 1)))

(declare-fun b!1145623 () Bool)

(assert (=> b!1145623 (= e!732281 e!732280)))

(declare-fun lt!388181 () Bool)

(declare-fun appendIndex!105 (List!11078 List!11078 Int) Bool)

(assert (=> b!1145623 (= lt!388181 (appendIndex!105 (list!4052 (left!9615 (c!192329 indices!2))) (list!4052 (right!9945 (c!192329 indices!2))) 1))))

(assert (=> b!1145623 (= c!192376 (< 1 (size!8675 (left!9615 (c!192329 indices!2)))))))

(declare-fun b!1145624 () Bool)

(assert (=> b!1145624 (= e!732280 call!81588)))

(assert (= (and d!326019 res!515199) b!1145619))

(assert (= (and d!326019 c!192374) b!1145621))

(assert (= (and d!326019 (not c!192374)) b!1145623))

(assert (= (and b!1145623 c!192376) b!1145622))

(assert (= (and b!1145623 (not c!192376)) b!1145624))

(assert (= (or b!1145622 b!1145624) bm!81583))

(assert (= (and bm!81583 c!192375) b!1145620))

(assert (= (and bm!81583 (not c!192375)) b!1145618))

(declare-fun m!1306653 () Bool)

(assert (=> b!1145621 m!1306653))

(assert (=> b!1145619 m!1306421))

(declare-fun m!1306655 () Bool)

(assert (=> bm!81583 m!1306655))

(assert (=> d!326019 m!1306631))

(assert (=> d!326019 m!1306631))

(declare-fun m!1306657 () Bool)

(assert (=> d!326019 m!1306657))

(declare-fun m!1306659 () Bool)

(assert (=> b!1145618 m!1306659))

(declare-fun m!1306661 () Bool)

(assert (=> b!1145623 m!1306661))

(declare-fun m!1306663 () Bool)

(assert (=> b!1145623 m!1306663))

(assert (=> b!1145623 m!1306661))

(assert (=> b!1145623 m!1306663))

(declare-fun m!1306665 () Bool)

(assert (=> b!1145623 m!1306665))

(assert (=> b!1145623 m!1306659))

(assert (=> d!325931 d!326019))

(declare-fun d!326031 () Bool)

(declare-fun res!515204 () Bool)

(declare-fun e!732288 () Bool)

(assert (=> d!326031 (=> res!515204 e!732288)))

(assert (=> d!326031 (= res!515204 ((_ is Nil!11054) (list!4047 indices!2)))))

(assert (=> d!326031 (= (forall!2758 (list!4047 indices!2) lambda!46084) e!732288)))

(declare-fun b!1145629 () Bool)

(declare-fun e!732289 () Bool)

(assert (=> b!1145629 (= e!732288 e!732289)))

(declare-fun res!515205 () Bool)

(assert (=> b!1145629 (=> (not res!515205) (not e!732289))))

(declare-fun dynLambda!4880 (Int Int) Bool)

(assert (=> b!1145629 (= res!515205 (dynLambda!4880 lambda!46084 (h!16455 (list!4047 indices!2))))))

(declare-fun b!1145630 () Bool)

(assert (=> b!1145630 (= e!732289 (forall!2758 (t!108000 (list!4047 indices!2)) lambda!46084))))

(assert (= (and d!326031 (not res!515204)) b!1145629))

(assert (= (and b!1145629 res!515205) b!1145630))

(declare-fun b_lambda!34095 () Bool)

(assert (=> (not b_lambda!34095) (not b!1145629)))

(declare-fun m!1306669 () Bool)

(assert (=> b!1145629 m!1306669))

(declare-fun m!1306671 () Bool)

(assert (=> b!1145630 m!1306671))

(assert (=> d!325981 d!326031))

(assert (=> d!325981 d!326013))

(declare-fun b!1145641 () Bool)

(declare-fun e!732297 () Bool)

(declare-fun e!732296 () Bool)

(assert (=> b!1145641 (= e!732297 e!732296)))

(declare-fun lt!388187 () Unit!16973)

(declare-fun lemmaForallConcat!102 (List!11078 List!11078 Int) Unit!16973)

(assert (=> b!1145641 (= lt!388187 (lemmaForallConcat!102 (list!4052 (left!9615 (c!192329 indices!2))) (list!4052 (right!9945 (c!192329 indices!2))) lambda!46084))))

(declare-fun res!515211 () Bool)

(assert (=> b!1145641 (= res!515211 (forall!2759 (left!9615 (c!192329 indices!2)) lambda!46084))))

(assert (=> b!1145641 (=> (not res!515211) (not e!732296))))

(declare-fun b!1145640 () Bool)

(declare-fun forall!2760 (IArray!7119 Int) Bool)

(assert (=> b!1145640 (= e!732297 (forall!2760 (xs!6258 (c!192329 indices!2)) lambda!46084))))

(declare-fun b!1145639 () Bool)

(declare-fun e!732298 () Bool)

(assert (=> b!1145639 (= e!732298 e!732297)))

(declare-fun c!192379 () Bool)

(assert (=> b!1145639 (= c!192379 ((_ is Leaf!5520) (c!192329 indices!2)))))

(declare-fun d!326035 () Bool)

(declare-fun lt!388188 () Bool)

(assert (=> d!326035 (= lt!388188 (forall!2758 (list!4052 (c!192329 indices!2)) lambda!46084))))

(assert (=> d!326035 (= lt!388188 e!732298)))

(declare-fun res!515210 () Bool)

(assert (=> d!326035 (=> res!515210 e!732298)))

(assert (=> d!326035 (= res!515210 ((_ is Empty!3557) (c!192329 indices!2)))))

(assert (=> d!326035 (= (forall!2759 (c!192329 indices!2) lambda!46084) lt!388188)))

(declare-fun b!1145642 () Bool)

(assert (=> b!1145642 (= e!732296 (forall!2759 (right!9945 (c!192329 indices!2)) lambda!46084))))

(assert (= (and d!326035 (not res!515210)) b!1145639))

(assert (= (and b!1145639 c!192379) b!1145640))

(assert (= (and b!1145639 (not c!192379)) b!1145641))

(assert (= (and b!1145641 res!515211) b!1145642))

(assert (=> b!1145641 m!1306661))

(assert (=> b!1145641 m!1306663))

(assert (=> b!1145641 m!1306661))

(assert (=> b!1145641 m!1306663))

(declare-fun m!1306673 () Bool)

(assert (=> b!1145641 m!1306673))

(declare-fun m!1306675 () Bool)

(assert (=> b!1145641 m!1306675))

(declare-fun m!1306677 () Bool)

(assert (=> b!1145640 m!1306677))

(assert (=> d!326035 m!1306631))

(assert (=> d!326035 m!1306631))

(declare-fun m!1306679 () Bool)

(assert (=> d!326035 m!1306679))

(declare-fun m!1306681 () Bool)

(assert (=> b!1145642 m!1306681))

(assert (=> d!325981 d!326035))

(declare-fun d!326037 () Bool)

(declare-fun res!515218 () Bool)

(declare-fun e!732301 () Bool)

(assert (=> d!326037 (=> (not res!515218) (not e!732301))))

(declare-fun size!8678 (Conc!3556) Int)

(assert (=> d!326037 (= res!515218 (= (csize!7342 (c!192328 acc!225)) (+ (size!8678 (left!9614 (c!192328 acc!225))) (size!8678 (right!9944 (c!192328 acc!225))))))))

(assert (=> d!326037 (= (inv!14433 (c!192328 acc!225)) e!732301)))

(declare-fun b!1145649 () Bool)

(declare-fun res!515219 () Bool)

(assert (=> b!1145649 (=> (not res!515219) (not e!732301))))

(assert (=> b!1145649 (= res!515219 (and (not (= (left!9614 (c!192328 acc!225)) Empty!3556)) (not (= (right!9944 (c!192328 acc!225)) Empty!3556))))))

(declare-fun b!1145650 () Bool)

(declare-fun res!515220 () Bool)

(assert (=> b!1145650 (=> (not res!515220) (not e!732301))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!477 (Conc!3556) Int)

(assert (=> b!1145650 (= res!515220 (= (cheight!3767 (c!192328 acc!225)) (+ (max!0 (height!477 (left!9614 (c!192328 acc!225))) (height!477 (right!9944 (c!192328 acc!225)))) 1)))))

(declare-fun b!1145651 () Bool)

(assert (=> b!1145651 (= e!732301 (<= 0 (cheight!3767 (c!192328 acc!225))))))

(assert (= (and d!326037 res!515218) b!1145649))

(assert (= (and b!1145649 res!515219) b!1145650))

(assert (= (and b!1145650 res!515220) b!1145651))

(declare-fun m!1306683 () Bool)

(assert (=> d!326037 m!1306683))

(declare-fun m!1306685 () Bool)

(assert (=> d!326037 m!1306685))

(declare-fun m!1306687 () Bool)

(assert (=> b!1145650 m!1306687))

(declare-fun m!1306689 () Bool)

(assert (=> b!1145650 m!1306689))

(assert (=> b!1145650 m!1306687))

(assert (=> b!1145650 m!1306689))

(declare-fun m!1306691 () Bool)

(assert (=> b!1145650 m!1306691))

(assert (=> b!1145382 d!326037))

(declare-fun bs!280988 () Bool)

(declare-fun d!326039 () Bool)

(assert (= bs!280988 (and d!326039 d!325935)))

(declare-fun lambda!46114 () Int)

(assert (=> bs!280988 (= (= lt!388077 Lexer!1602) (= lambda!46114 lambda!46111))))

(declare-fun b!1145695 () Bool)

(declare-fun e!732334 () Bool)

(assert (=> b!1145695 (= e!732334 true)))

(declare-fun b!1145694 () Bool)

(declare-fun e!732333 () Bool)

(assert (=> b!1145694 (= e!732333 e!732334)))

(declare-fun b!1145693 () Bool)

(declare-fun e!732332 () Bool)

(assert (=> b!1145693 (= e!732332 e!732333)))

(assert (=> d!326039 e!732332))

(assert (= b!1145694 b!1145695))

(assert (= b!1145693 b!1145694))

(assert (= (and d!326039 ((_ is Cons!11052) (rules!9316 pt!21))) b!1145693))

(declare-fun order!6753 () Int)

(declare-fun order!6751 () Int)

(declare-fun dynLambda!4881 (Int Int) Int)

(declare-fun dynLambda!4882 (Int Int) Int)

(assert (=> b!1145695 (< (dynLambda!4881 order!6751 (toValue!3002 (transformation!1905 (h!16453 (rules!9316 pt!21))))) (dynLambda!4882 order!6753 lambda!46114))))

(declare-fun order!6755 () Int)

(declare-fun dynLambda!4883 (Int Int) Int)

(assert (=> b!1145695 (< (dynLambda!4883 order!6755 (toChars!2861 (transformation!1905 (h!16453 (rules!9316 pt!21))))) (dynLambda!4882 order!6753 lambda!46114))))

(assert (=> d!326039 true))

(declare-fun lt!388214 () Bool)

(assert (=> d!326039 (= lt!388214 (forall!2752 (t!107997 lt!388110) lambda!46114))))

(declare-fun e!732320 () Bool)

(assert (=> d!326039 (= lt!388214 e!732320)))

(declare-fun res!515233 () Bool)

(assert (=> d!326039 (=> res!515233 e!732320)))

(assert (=> d!326039 (= res!515233 (not ((_ is Cons!11051) (t!107997 lt!388110))))))

(assert (=> d!326039 (not (isEmpty!6858 (rules!9316 pt!21)))))

(assert (=> d!326039 (= (rulesProduceEachTokenIndividuallyList!479 lt!388077 (rules!9316 pt!21) (t!107997 lt!388110)) lt!388214)))

(declare-fun b!1145676 () Bool)

(declare-fun e!732321 () Bool)

(assert (=> b!1145676 (= e!732320 e!732321)))

(declare-fun res!515234 () Bool)

(assert (=> b!1145676 (=> (not res!515234) (not e!732321))))

(assert (=> b!1145676 (= res!515234 (rulesProduceIndividualToken!651 lt!388077 (rules!9316 pt!21) (h!16452 (t!107997 lt!388110))))))

(declare-fun b!1145677 () Bool)

(assert (=> b!1145677 (= e!732321 (rulesProduceEachTokenIndividuallyList!479 lt!388077 (rules!9316 pt!21) (t!107997 (t!107997 lt!388110))))))

(assert (= (and d!326039 (not res!515233)) b!1145676))

(assert (= (and b!1145676 res!515234) b!1145677))

(declare-fun m!1306719 () Bool)

(assert (=> d!326039 m!1306719))

(assert (=> d!326039 m!1306527))

(declare-fun m!1306721 () Bool)

(assert (=> b!1145676 m!1306721))

(declare-fun m!1306723 () Bool)

(assert (=> b!1145677 m!1306723))

(assert (=> b!1145362 d!326039))

(declare-fun d!326045 () Bool)

(assert (=> d!326045 (= (isEmpty!6858 (rules!9316 pt!21)) ((_ is Nil!11052) (rules!9316 pt!21)))))

(assert (=> d!325985 d!326045))

(declare-fun d!326047 () Bool)

(assert (=> d!326047 (= (inv!14438 (xs!6258 (c!192329 indices!2))) (<= (size!8674 (innerList!3617 (xs!6258 (c!192329 indices!2)))) 2147483647))))

(declare-fun bs!280989 () Bool)

(assert (= bs!280989 d!326047))

(declare-fun m!1306729 () Bool)

(assert (=> bs!280989 m!1306729))

(assert (=> b!1145477 d!326047))

(declare-fun d!326051 () Bool)

(declare-fun res!515248 () Bool)

(declare-fun e!732346 () Bool)

(assert (=> d!326051 (=> (not res!515248) (not e!732346))))

(assert (=> d!326051 (= res!515248 (= (csize!7344 (c!192329 indices!2)) (+ (size!8675 (left!9615 (c!192329 indices!2))) (size!8675 (right!9945 (c!192329 indices!2))))))))

(assert (=> d!326051 (= (inv!14435 (c!192329 indices!2)) e!732346)))

(declare-fun b!1145716 () Bool)

(declare-fun res!515249 () Bool)

(assert (=> b!1145716 (=> (not res!515249) (not e!732346))))

(assert (=> b!1145716 (= res!515249 (and (not (= (left!9615 (c!192329 indices!2)) Empty!3557)) (not (= (right!9945 (c!192329 indices!2)) Empty!3557))))))

(declare-fun b!1145717 () Bool)

(declare-fun res!515250 () Bool)

(assert (=> b!1145717 (=> (not res!515250) (not e!732346))))

(declare-fun height!479 (Conc!3557) Int)

(assert (=> b!1145717 (= res!515250 (= (cheight!3768 (c!192329 indices!2)) (+ (max!0 (height!479 (left!9615 (c!192329 indices!2))) (height!479 (right!9945 (c!192329 indices!2)))) 1)))))

(declare-fun b!1145718 () Bool)

(assert (=> b!1145718 (= e!732346 (<= 0 (cheight!3768 (c!192329 indices!2))))))

(assert (= (and d!326051 res!515248) b!1145716))

(assert (= (and b!1145716 res!515249) b!1145717))

(assert (= (and b!1145717 res!515250) b!1145718))

(assert (=> d!326051 m!1306659))

(declare-fun m!1306737 () Bool)

(assert (=> d!326051 m!1306737))

(declare-fun m!1306739 () Bool)

(assert (=> b!1145717 m!1306739))

(declare-fun m!1306741 () Bool)

(assert (=> b!1145717 m!1306741))

(assert (=> b!1145717 m!1306739))

(assert (=> b!1145717 m!1306741))

(declare-fun m!1306743 () Bool)

(assert (=> b!1145717 m!1306743))

(assert (=> b!1145406 d!326051))

(declare-fun b!1145731 () Bool)

(declare-fun res!515267 () Bool)

(declare-fun e!732352 () Bool)

(assert (=> b!1145731 (=> (not res!515267) (not e!732352))))

(assert (=> b!1145731 (= res!515267 (<= (- (height!477 (left!9614 (append!360 (c!192328 acc!225) lt!387686))) (height!477 (right!9944 (append!360 (c!192328 acc!225) lt!387686)))) 1))))

(declare-fun b!1145732 () Bool)

(declare-fun e!732351 () Bool)

(assert (=> b!1145732 (= e!732351 e!732352)))

(declare-fun res!515264 () Bool)

(assert (=> b!1145732 (=> (not res!515264) (not e!732352))))

(assert (=> b!1145732 (= res!515264 (<= (- 1) (- (height!477 (left!9614 (append!360 (c!192328 acc!225) lt!387686))) (height!477 (right!9944 (append!360 (c!192328 acc!225) lt!387686))))))))

(declare-fun b!1145733 () Bool)

(declare-fun res!515266 () Bool)

(assert (=> b!1145733 (=> (not res!515266) (not e!732352))))

(assert (=> b!1145733 (= res!515266 (isBalanced!996 (right!9944 (append!360 (c!192328 acc!225) lt!387686))))))

(declare-fun b!1145734 () Bool)

(declare-fun res!515268 () Bool)

(assert (=> b!1145734 (=> (not res!515268) (not e!732352))))

(declare-fun isEmpty!6860 (Conc!3556) Bool)

(assert (=> b!1145734 (= res!515268 (not (isEmpty!6860 (left!9614 (append!360 (c!192328 acc!225) lt!387686)))))))

(declare-fun b!1145735 () Bool)

(declare-fun res!515265 () Bool)

(assert (=> b!1145735 (=> (not res!515265) (not e!732352))))

(assert (=> b!1145735 (= res!515265 (isBalanced!996 (left!9614 (append!360 (c!192328 acc!225) lt!387686))))))

(declare-fun b!1145736 () Bool)

(assert (=> b!1145736 (= e!732352 (not (isEmpty!6860 (right!9944 (append!360 (c!192328 acc!225) lt!387686)))))))

(declare-fun d!326057 () Bool)

(declare-fun res!515263 () Bool)

(assert (=> d!326057 (=> res!515263 e!732351)))

(assert (=> d!326057 (= res!515263 (not ((_ is Node!3556) (append!360 (c!192328 acc!225) lt!387686))))))

(assert (=> d!326057 (= (isBalanced!996 (append!360 (c!192328 acc!225) lt!387686)) e!732351)))

(assert (= (and d!326057 (not res!515263)) b!1145732))

(assert (= (and b!1145732 res!515264) b!1145731))

(assert (= (and b!1145731 res!515267) b!1145735))

(assert (= (and b!1145735 res!515265) b!1145733))

(assert (= (and b!1145733 res!515266) b!1145734))

(assert (= (and b!1145734 res!515268) b!1145736))

(declare-fun m!1306747 () Bool)

(assert (=> b!1145732 m!1306747))

(declare-fun m!1306749 () Bool)

(assert (=> b!1145732 m!1306749))

(declare-fun m!1306751 () Bool)

(assert (=> b!1145735 m!1306751))

(declare-fun m!1306753 () Bool)

(assert (=> b!1145736 m!1306753))

(declare-fun m!1306755 () Bool)

(assert (=> b!1145734 m!1306755))

(assert (=> b!1145731 m!1306747))

(assert (=> b!1145731 m!1306749))

(declare-fun m!1306757 () Bool)

(assert (=> b!1145733 m!1306757))

(assert (=> d!325961 d!326057))

(declare-fun b!1145763 () Bool)

(declare-fun e!732366 () Conc!3556)

(declare-fun call!81618 () Conc!3556)

(assert (=> b!1145763 (= e!732366 call!81618)))

(declare-fun lt!388262 () List!11077)

(assert (=> b!1145763 (= lt!388262 (list!4050 (left!9614 (c!192328 acc!225))))))

(declare-fun lt!388277 () List!11077)

(declare-fun lt!388276 () Conc!3556)

(assert (=> b!1145763 (= lt!388277 (list!4050 (left!9614 lt!388276)))))

(declare-fun lt!388270 () List!11077)

(declare-fun call!81613 () List!11077)

(assert (=> b!1145763 (= lt!388270 call!81613)))

(declare-fun lt!388261 () Unit!16973)

(declare-fun lemmaConcatAssociativity!792 (List!11077 List!11077 List!11077) Unit!16973)

(assert (=> b!1145763 (= lt!388261 (lemmaConcatAssociativity!792 lt!388262 lt!388277 lt!388270))))

(declare-fun call!81614 () List!11077)

(declare-fun call!81611 () List!11077)

(assert (=> b!1145763 (= (++!2950 call!81614 lt!388270) (++!2950 lt!388262 call!81611))))

(declare-fun lt!388265 () Unit!16973)

(assert (=> b!1145763 (= lt!388265 lt!388261)))

(declare-fun lt!388278 () List!11077)

(assert (=> b!1145763 (= lt!388278 (list!4050 (left!9614 (c!192328 acc!225))))))

(declare-fun lt!388266 () List!11077)

(declare-fun call!81616 () List!11077)

(assert (=> b!1145763 (= lt!388266 call!81616)))

(declare-fun lt!388273 () List!11077)

(assert (=> b!1145763 (= lt!388273 (Cons!11053 lt!387686 Nil!11053))))

(declare-fun lt!388263 () Unit!16973)

(declare-fun call!81610 () Unit!16973)

(assert (=> b!1145763 (= lt!388263 call!81610)))

(declare-fun call!81612 () List!11077)

(declare-fun call!81609 () List!11077)

(assert (=> b!1145763 (= (++!2950 call!81609 lt!388273) (++!2950 lt!388278 call!81612))))

(declare-fun lt!388271 () Unit!16973)

(assert (=> b!1145763 (= lt!388271 lt!388263)))

(declare-fun b!1145764 () Bool)

(declare-fun c!192404 () Bool)

(assert (=> b!1145764 (= c!192404 (< (csize!7343 (c!192328 acc!225)) 512))))

(declare-fun e!732369 () Conc!3556)

(declare-fun e!732370 () Conc!3556)

(assert (=> b!1145764 (= e!732369 e!732370)))

(declare-fun b!1145765 () Bool)

(declare-fun e!732367 () Conc!3556)

(assert (=> b!1145765 (= e!732367 (right!9944 lt!388276))))

(declare-fun c!192406 () Bool)

(declare-fun bm!81605 () Bool)

(assert (=> bm!81605 (= call!81613 (list!4050 (ite c!192406 (right!9944 (c!192328 acc!225)) (right!9944 lt!388276))))))

(declare-fun b!1145766 () Bool)

(declare-fun call!81617 () Conc!3556)

(assert (=> b!1145766 (= e!732366 call!81617)))

(declare-fun lt!388274 () List!11077)

(assert (=> b!1145766 (= lt!388274 call!81616)))

(declare-fun lt!388268 () List!11077)

(assert (=> b!1145766 (= lt!388268 call!81613)))

(declare-fun lt!388275 () List!11077)

(assert (=> b!1145766 (= lt!388275 (Cons!11053 lt!387686 Nil!11053))))

(declare-fun lt!388267 () Unit!16973)

(assert (=> b!1145766 (= lt!388267 call!81610)))

(assert (=> b!1145766 (= call!81611 call!81609)))

(declare-fun lt!388264 () Unit!16973)

(assert (=> b!1145766 (= lt!388264 lt!388267)))

(declare-fun b!1145767 () Bool)

(declare-fun call!81615 () IArray!7117)

(assert (=> b!1145767 (= e!732367 (Leaf!5519 call!81615 1))))

(declare-fun bm!81606 () Bool)

(declare-fun <>!74 (Conc!3556 Conc!3556) Conc!3556)

(assert (=> bm!81606 (= call!81617 (<>!74 (left!9614 (c!192328 acc!225)) (ite c!192406 lt!388276 (left!9614 lt!388276))))))

(declare-fun bm!81607 () Bool)

(assert (=> bm!81607 (= call!81609 (++!2950 (ite c!192406 lt!388274 lt!388278) (ite c!192406 call!81612 lt!388266)))))

(declare-fun bm!81608 () Bool)

(declare-fun c!192402 () Bool)

(declare-fun c!192405 () Bool)

(assert (=> bm!81608 (= c!192402 c!192405)))

(assert (=> bm!81608 (= call!81618 (<>!74 (ite c!192405 call!81617 (c!192328 acc!225)) e!732367))))

(declare-fun b!1145768 () Bool)

(declare-fun res!515276 () Bool)

(declare-fun e!732368 () Bool)

(assert (=> b!1145768 (=> (not res!515276) (not e!732368))))

(declare-fun lt!388272 () Conc!3556)

(assert (=> b!1145768 (= res!515276 (<= (height!477 lt!388272) (+ (height!477 (c!192328 acc!225)) 1)))))

(declare-fun bm!81609 () Bool)

(assert (=> bm!81609 (= call!81616 (list!4050 (ite c!192406 (left!9614 (c!192328 acc!225)) (right!9944 (c!192328 acc!225)))))))

(declare-fun bm!81604 () Bool)

(declare-fun fill!53 (Int PrintableTokens!496) IArray!7117)

(assert (=> bm!81604 (= call!81615 (fill!53 1 lt!387686))))

(declare-fun d!326061 () Bool)

(assert (=> d!326061 e!732368))

(declare-fun res!515275 () Bool)

(assert (=> d!326061 (=> (not res!515275) (not e!732368))))

(assert (=> d!326061 (= res!515275 (isBalanced!996 lt!388272))))

(declare-fun e!732365 () Conc!3556)

(assert (=> d!326061 (= lt!388272 e!732365)))

(declare-fun c!192403 () Bool)

(assert (=> d!326061 (= c!192403 ((_ is Empty!3556) (c!192328 acc!225)))))

(assert (=> d!326061 (isBalanced!996 (c!192328 acc!225))))

(assert (=> d!326061 (= (append!360 (c!192328 acc!225) lt!387686) lt!388272)))

(declare-fun bm!81610 () Bool)

(assert (=> bm!81610 (= call!81614 (++!2950 (ite c!192406 lt!388274 lt!388262) (ite c!192406 lt!388268 lt!388277)))))

(declare-fun bm!81611 () Bool)

(assert (=> bm!81611 (= call!81610 (lemmaConcatAssociativity!792 (ite c!192406 lt!388274 lt!388278) (ite c!192406 lt!388268 lt!388266) (ite c!192406 lt!388275 lt!388273)))))

(declare-fun b!1145769 () Bool)

(assert (=> b!1145769 (= e!732365 (Leaf!5519 call!81615 1))))

(declare-fun bm!81612 () Bool)

(assert (=> bm!81612 (= call!81612 (++!2950 (ite c!192406 lt!388268 lt!388266) (ite c!192406 lt!388275 lt!388273)))))

(declare-fun b!1145770 () Bool)

(assert (=> b!1145770 (= e!732368 (= (list!4050 lt!388272) ($colon+!79 (list!4050 (c!192328 acc!225)) lt!387686)))))

(declare-fun b!1145771 () Bool)

(declare-fun res!515277 () Bool)

(assert (=> b!1145771 (=> (not res!515277) (not e!732368))))

(assert (=> b!1145771 (= res!515277 (<= (height!477 (c!192328 acc!225)) (height!477 lt!388272)))))

(declare-fun b!1145772 () Bool)

(assert (=> b!1145772 (= e!732365 e!732369)))

(assert (=> b!1145772 (= c!192405 ((_ is Node!3556) (c!192328 acc!225)))))

(declare-fun bm!81613 () Bool)

(assert (=> bm!81613 (= call!81611 (++!2950 (ite c!192406 call!81614 lt!388277) (ite c!192406 lt!388275 lt!388270)))))

(declare-fun b!1145773 () Bool)

(assert (=> b!1145773 (= c!192406 (<= (height!477 lt!388276) (+ (height!477 (left!9614 (c!192328 acc!225))) 1)))))

(assert (=> b!1145773 (= lt!388276 (append!360 (right!9944 (c!192328 acc!225)) lt!387686))))

(assert (=> b!1145773 (= e!732369 e!732366)))

(declare-fun b!1145774 () Bool)

(declare-fun append!361 (IArray!7117 PrintableTokens!496) IArray!7117)

(assert (=> b!1145774 (= e!732370 (Leaf!5519 (append!361 (xs!6257 (c!192328 acc!225)) lt!387686) (+ (csize!7343 (c!192328 acc!225)) 1)))))

(declare-fun lt!388269 () List!11077)

(declare-fun list!4054 (IArray!7117) List!11077)

(assert (=> b!1145774 (= lt!388269 ($colon+!79 (list!4054 (xs!6257 (c!192328 acc!225))) lt!387686))))

(declare-fun b!1145775 () Bool)

(assert (=> b!1145775 (= e!732370 call!81618)))

(assert (= (and d!326061 c!192403) b!1145769))

(assert (= (and d!326061 (not c!192403)) b!1145772))

(assert (= (and b!1145772 c!192405) b!1145773))

(assert (= (and b!1145772 (not c!192405)) b!1145764))

(assert (= (and b!1145773 c!192406) b!1145766))

(assert (= (and b!1145773 (not c!192406)) b!1145763))

(assert (= (or b!1145766 b!1145763) bm!81611))

(assert (= (or b!1145766 b!1145763) bm!81609))

(assert (= (or b!1145766 b!1145763) bm!81610))

(assert (= (or b!1145766 b!1145763) bm!81612))

(assert (= (or b!1145766 b!1145763) bm!81605))

(assert (= (or b!1145766 b!1145763) bm!81606))

(assert (= (or b!1145766 b!1145763) bm!81613))

(assert (= (or b!1145766 b!1145763) bm!81607))

(assert (= (and b!1145764 c!192404) b!1145774))

(assert (= (and b!1145764 (not c!192404)) b!1145775))

(assert (= (or b!1145763 b!1145775) bm!81608))

(assert (= (and bm!81608 c!192402) b!1145765))

(assert (= (and bm!81608 (not c!192402)) b!1145767))

(assert (= (or b!1145769 b!1145767) bm!81604))

(assert (= (and d!326061 res!515275) b!1145771))

(assert (= (and b!1145771 res!515277) b!1145768))

(assert (= (and b!1145768 res!515276) b!1145770))

(declare-fun m!1306759 () Bool)

(assert (=> b!1145770 m!1306759))

(assert (=> b!1145770 m!1306487))

(assert (=> b!1145770 m!1306487))

(declare-fun m!1306761 () Bool)

(assert (=> b!1145770 m!1306761))

(declare-fun m!1306763 () Bool)

(assert (=> bm!81609 m!1306763))

(declare-fun m!1306765 () Bool)

(assert (=> bm!81605 m!1306765))

(declare-fun m!1306767 () Bool)

(assert (=> b!1145774 m!1306767))

(declare-fun m!1306769 () Bool)

(assert (=> b!1145774 m!1306769))

(assert (=> b!1145774 m!1306769))

(declare-fun m!1306771 () Bool)

(assert (=> b!1145774 m!1306771))

(declare-fun m!1306773 () Bool)

(assert (=> bm!81610 m!1306773))

(declare-fun m!1306775 () Bool)

(assert (=> d!326061 m!1306775))

(assert (=> d!326061 m!1306535))

(declare-fun m!1306777 () Bool)

(assert (=> bm!81612 m!1306777))

(declare-fun m!1306779 () Bool)

(assert (=> b!1145763 m!1306779))

(declare-fun m!1306781 () Bool)

(assert (=> b!1145763 m!1306781))

(declare-fun m!1306783 () Bool)

(assert (=> b!1145763 m!1306783))

(declare-fun m!1306785 () Bool)

(assert (=> b!1145763 m!1306785))

(declare-fun m!1306787 () Bool)

(assert (=> b!1145763 m!1306787))

(declare-fun m!1306789 () Bool)

(assert (=> b!1145763 m!1306789))

(declare-fun m!1306791 () Bool)

(assert (=> b!1145763 m!1306791))

(declare-fun m!1306793 () Bool)

(assert (=> b!1145768 m!1306793))

(declare-fun m!1306795 () Bool)

(assert (=> b!1145768 m!1306795))

(declare-fun m!1306797 () Bool)

(assert (=> b!1145773 m!1306797))

(assert (=> b!1145773 m!1306687))

(declare-fun m!1306799 () Bool)

(assert (=> b!1145773 m!1306799))

(declare-fun m!1306801 () Bool)

(assert (=> bm!81606 m!1306801))

(declare-fun m!1306803 () Bool)

(assert (=> bm!81604 m!1306803))

(declare-fun m!1306805 () Bool)

(assert (=> bm!81607 m!1306805))

(assert (=> b!1145771 m!1306795))

(assert (=> b!1145771 m!1306793))

(declare-fun m!1306807 () Bool)

(assert (=> bm!81613 m!1306807))

(declare-fun m!1306809 () Bool)

(assert (=> bm!81611 m!1306809))

(declare-fun m!1306811 () Bool)

(assert (=> bm!81608 m!1306811))

(assert (=> d!325961 d!326061))

(declare-fun d!326063 () Bool)

(declare-fun lt!388298 () Bool)

(declare-fun e!732402 () Bool)

(assert (=> d!326063 (= lt!388298 e!732402)))

(declare-fun res!515312 () Bool)

(assert (=> d!326063 (=> (not res!515312) (not e!732402))))

(declare-datatypes ((tuple2!11942 0))(
  ( (tuple2!11943 (_1!6818 BalanceConc!7132) (_2!6818 BalanceConc!7130)) )
))
(declare-fun lex!666 (LexerInterface!1604 List!11076 BalanceConc!7130) tuple2!11942)

(declare-fun print!603 (LexerInterface!1604 BalanceConc!7132) BalanceConc!7130)

(declare-fun singletonSeq!617 (Token!3472) BalanceConc!7132)

(assert (=> d!326063 (= res!515312 (= (list!4049 (_1!6818 (lex!666 lt!388077 (rules!9316 pt!21) (print!603 lt!388077 (singletonSeq!617 (h!16452 lt!388110)))))) (list!4049 (singletonSeq!617 (h!16452 lt!388110)))))))

(declare-fun e!732403 () Bool)

(assert (=> d!326063 (= lt!388298 e!732403)))

(declare-fun res!515313 () Bool)

(assert (=> d!326063 (=> (not res!515313) (not e!732403))))

(declare-fun lt!388297 () tuple2!11942)

(assert (=> d!326063 (= res!515313 (= (size!8670 (_1!6818 lt!388297)) 1))))

(assert (=> d!326063 (= lt!388297 (lex!666 lt!388077 (rules!9316 pt!21) (print!603 lt!388077 (singletonSeq!617 (h!16452 lt!388110)))))))

(assert (=> d!326063 (not (isEmpty!6858 (rules!9316 pt!21)))))

(assert (=> d!326063 (= (rulesProduceIndividualToken!651 lt!388077 (rules!9316 pt!21) (h!16452 lt!388110)) lt!388298)))

(declare-fun b!1145834 () Bool)

(declare-fun res!515314 () Bool)

(assert (=> b!1145834 (=> (not res!515314) (not e!732403))))

(assert (=> b!1145834 (= res!515314 (= (apply!2353 (_1!6818 lt!388297) 0) (h!16452 lt!388110)))))

(declare-fun b!1145835 () Bool)

(declare-fun isEmpty!6862 (BalanceConc!7130) Bool)

(assert (=> b!1145835 (= e!732403 (isEmpty!6862 (_2!6818 lt!388297)))))

(declare-fun b!1145836 () Bool)

(assert (=> b!1145836 (= e!732402 (isEmpty!6862 (_2!6818 (lex!666 lt!388077 (rules!9316 pt!21) (print!603 lt!388077 (singletonSeq!617 (h!16452 lt!388110)))))))))

(assert (= (and d!326063 res!515313) b!1145834))

(assert (= (and b!1145834 res!515314) b!1145835))

(assert (= (and d!326063 res!515312) b!1145836))

(declare-fun m!1306883 () Bool)

(assert (=> d!326063 m!1306883))

(assert (=> d!326063 m!1306883))

(declare-fun m!1306885 () Bool)

(assert (=> d!326063 m!1306885))

(declare-fun m!1306887 () Bool)

(assert (=> d!326063 m!1306887))

(assert (=> d!326063 m!1306527))

(assert (=> d!326063 m!1306883))

(declare-fun m!1306889 () Bool)

(assert (=> d!326063 m!1306889))

(assert (=> d!326063 m!1306885))

(declare-fun m!1306891 () Bool)

(assert (=> d!326063 m!1306891))

(declare-fun m!1306893 () Bool)

(assert (=> d!326063 m!1306893))

(declare-fun m!1306895 () Bool)

(assert (=> b!1145834 m!1306895))

(declare-fun m!1306897 () Bool)

(assert (=> b!1145835 m!1306897))

(assert (=> b!1145836 m!1306883))

(assert (=> b!1145836 m!1306883))

(assert (=> b!1145836 m!1306885))

(assert (=> b!1145836 m!1306885))

(assert (=> b!1145836 m!1306891))

(declare-fun m!1306899 () Bool)

(assert (=> b!1145836 m!1306899))

(assert (=> b!1145360 d!326063))

(declare-fun d!326081 () Bool)

(declare-fun list!4055 (Conc!3555) List!11075)

(assert (=> d!326081 (= (list!4049 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689)))) (list!4055 (c!192327 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689))))))))

(declare-fun bs!280993 () Bool)

(assert (= bs!280993 d!326081))

(declare-fun m!1306901 () Bool)

(assert (=> bs!280993 m!1306901))

(assert (=> d!325935 d!326081))

(declare-fun bs!280995 () Bool)

(declare-fun b!1145847 () Bool)

(assert (= bs!280995 (and b!1145847 d!325935)))

(declare-fun lambda!46117 () Int)

(assert (=> bs!280995 (= lambda!46117 lambda!46111)))

(declare-fun bs!280996 () Bool)

(assert (= bs!280996 (and b!1145847 d!326039)))

(assert (=> bs!280996 (= (= Lexer!1602 lt!388077) (= lambda!46117 lambda!46114))))

(declare-fun b!1145851 () Bool)

(declare-fun e!732418 () Bool)

(assert (=> b!1145851 (= e!732418 true)))

(declare-fun b!1145850 () Bool)

(declare-fun e!732417 () Bool)

(assert (=> b!1145850 (= e!732417 e!732418)))

(declare-fun b!1145849 () Bool)

(declare-fun e!732416 () Bool)

(assert (=> b!1145849 (= e!732416 e!732417)))

(assert (=> b!1145847 e!732416))

(assert (= b!1145850 b!1145851))

(assert (= b!1145849 b!1145850))

(assert (= (and b!1145847 ((_ is Cons!11052) (rules!9316 pt!21))) b!1145849))

(assert (=> b!1145851 (< (dynLambda!4881 order!6751 (toValue!3002 (transformation!1905 (h!16453 (rules!9316 pt!21))))) (dynLambda!4882 order!6753 lambda!46117))))

(assert (=> b!1145851 (< (dynLambda!4883 order!6755 (toChars!2861 (transformation!1905 (h!16453 (rules!9316 pt!21))))) (dynLambda!4882 order!6753 lambda!46117))))

(declare-fun b!1145845 () Bool)

(declare-fun e!732415 () Bool)

(declare-fun e!732414 () Bool)

(assert (=> b!1145845 (= e!732415 e!732414)))

(declare-fun res!515326 () Bool)

(assert (=> b!1145845 (=> (not res!515326) (not e!732414))))

(declare-fun lt!388312 () List!11075)

(assert (=> b!1145845 (= res!515326 (rulesProduceIndividualToken!651 lt!388069 (rules!9316 pt!21) (h!16452 lt!388312)))))

(declare-fun b!1145846 () Bool)

(assert (=> b!1145846 (= e!732414 (rulesProduceEachTokenIndividuallyList!479 lt!388069 (rules!9316 pt!21) (t!107997 lt!388312)))))

(declare-fun b!1145848 () Bool)

(declare-fun e!732413 () Bool)

(declare-fun lt!388309 () List!11075)

(assert (=> b!1145848 (= e!732413 (subseq!181 lt!388309 lt!388109))))

(declare-fun d!326083 () Bool)

(declare-fun e!732412 () Bool)

(assert (=> d!326083 e!732412))

(declare-fun res!515324 () Bool)

(assert (=> d!326083 (=> (not res!515324) (not e!732412))))

(assert (=> d!326083 (= res!515324 (= (rulesProduceEachTokenIndividuallyList!479 lt!388069 (rules!9316 pt!21) (take!28 lt!388109 lt!388125)) e!732415))))

(declare-fun res!515323 () Bool)

(assert (=> d!326083 (=> res!515323 e!732415)))

(assert (=> d!326083 (= res!515323 (not ((_ is Cons!11051) lt!388312)))))

(assert (=> d!326083 (= lt!388312 (take!28 lt!388109 lt!388125))))

(declare-fun lt!388310 () Unit!16973)

(declare-fun choose!7350 (LexerInterface!1604 List!11075 Int List!11076) Unit!16973)

(assert (=> d!326083 (= lt!388310 (choose!7350 lt!388069 lt!388109 lt!388125 (rules!9316 pt!21)))))

(assert (=> d!326083 (not (isEmpty!6858 (rules!9316 pt!21)))))

(assert (=> d!326083 (= (tokensListTwoByTwoPredicateSeparableTokensTakeList!22 lt!388069 lt!388109 lt!388125 (rules!9316 pt!21)) lt!388310)))

(assert (=> b!1145847 (= e!732412 (tokensListTwoByTwoPredicateSeparableList!78 lt!388069 (take!28 lt!388109 lt!388125) (rules!9316 pt!21)))))

(declare-fun lt!388313 () Unit!16973)

(declare-fun lt!388311 () Unit!16973)

(assert (=> b!1145847 (= lt!388313 lt!388311)))

(assert (=> b!1145847 (forall!2752 lt!388309 lambda!46117)))

(assert (=> b!1145847 (= lt!388311 (lemmaForallSubseq!81 lt!388309 lt!388109 lambda!46117))))

(assert (=> b!1145847 e!732413))

(declare-fun res!515325 () Bool)

(assert (=> b!1145847 (=> (not res!515325) (not e!732413))))

(assert (=> b!1145847 (= res!515325 (forall!2752 lt!388109 lambda!46117))))

(assert (=> b!1145847 (= lt!388309 (take!28 lt!388109 lt!388125))))

(assert (= (and d!326083 (not res!515323)) b!1145845))

(assert (= (and b!1145845 res!515326) b!1145846))

(assert (= (and d!326083 res!515324) b!1145847))

(assert (= (and b!1145847 res!515325) b!1145848))

(declare-fun m!1306903 () Bool)

(assert (=> b!1145845 m!1306903))

(assert (=> d!326083 m!1306315))

(assert (=> d!326083 m!1306315))

(assert (=> d!326083 m!1306317))

(declare-fun m!1306905 () Bool)

(assert (=> d!326083 m!1306905))

(assert (=> d!326083 m!1306527))

(declare-fun m!1306907 () Bool)

(assert (=> b!1145846 m!1306907))

(assert (=> b!1145847 m!1306315))

(declare-fun m!1306909 () Bool)

(assert (=> b!1145847 m!1306909))

(assert (=> b!1145847 m!1306315))

(assert (=> b!1145847 m!1306347))

(declare-fun m!1306911 () Bool)

(assert (=> b!1145847 m!1306911))

(declare-fun m!1306913 () Bool)

(assert (=> b!1145847 m!1306913))

(declare-fun m!1306915 () Bool)

(assert (=> b!1145848 m!1306915))

(assert (=> d!325935 d!326083))

(declare-fun bs!281000 () Bool)

(declare-fun b!1145950 () Bool)

(assert (= bs!281000 (and b!1145950 d!325935)))

(declare-fun lambda!46123 () Int)

(assert (=> bs!281000 (= lambda!46123 lambda!46111)))

(declare-fun bs!281001 () Bool)

(assert (= bs!281001 (and b!1145950 d!326039)))

(assert (=> bs!281001 (= (= Lexer!1602 lt!388077) (= lambda!46123 lambda!46114))))

(declare-fun bs!281002 () Bool)

(assert (= bs!281002 (and b!1145950 b!1145847)))

(assert (=> bs!281002 (= lambda!46123 lambda!46117)))

(declare-fun b!1145954 () Bool)

(declare-fun e!732481 () Bool)

(assert (=> b!1145954 (= e!732481 true)))

(declare-fun b!1145953 () Bool)

(declare-fun e!732480 () Bool)

(assert (=> b!1145953 (= e!732480 e!732481)))

(declare-fun b!1145952 () Bool)

(declare-fun e!732479 () Bool)

(assert (=> b!1145952 (= e!732479 e!732480)))

(assert (=> b!1145950 e!732479))

(assert (= b!1145953 b!1145954))

(assert (= b!1145952 b!1145953))

(assert (= (and b!1145950 ((_ is Cons!11052) (rules!9316 pt!21))) b!1145952))

(assert (=> b!1145954 (< (dynLambda!4881 order!6751 (toValue!3002 (transformation!1905 (h!16453 (rules!9316 pt!21))))) (dynLambda!4882 order!6753 lambda!46123))))

(assert (=> b!1145954 (< (dynLambda!4883 order!6755 (toChars!2861 (transformation!1905 (h!16453 (rules!9316 pt!21))))) (dynLambda!4882 order!6753 lambda!46123))))

(declare-fun b!1145949 () Bool)

(declare-fun e!732478 () Bool)

(declare-fun lt!388392 () List!11075)

(assert (=> b!1145949 (= e!732478 (rulesProduceEachTokenIndividuallyList!479 lt!388077 (rules!9316 pt!21) (t!107997 lt!388392)))))

(declare-fun e!732475 () Bool)

(assert (=> b!1145950 (= e!732475 (tokensListTwoByTwoPredicateSeparableList!78 lt!388077 (drop!430 lt!388114 (ite c!192324 lt!387689 lt!387688)) (rules!9316 pt!21)))))

(declare-fun lt!388393 () Unit!16973)

(declare-fun lt!388389 () Unit!16973)

(assert (=> b!1145950 (= lt!388393 lt!388389)))

(declare-fun lt!388388 () List!11075)

(assert (=> b!1145950 (forall!2752 lt!388388 lambda!46123)))

(assert (=> b!1145950 (= lt!388389 (lemmaForallSubseq!81 lt!388388 lt!388114 lambda!46123))))

(declare-fun e!732477 () Bool)

(assert (=> b!1145950 e!732477))

(declare-fun res!515380 () Bool)

(assert (=> b!1145950 (=> (not res!515380) (not e!732477))))

(assert (=> b!1145950 (= res!515380 (forall!2752 lt!388114 lambda!46123))))

(assert (=> b!1145950 (= lt!388388 (drop!430 lt!388114 (ite c!192324 lt!387689 lt!387688)))))

(declare-fun lt!388394 () Unit!16973)

(declare-fun lt!388390 () Unit!16973)

(assert (=> b!1145950 (= lt!388394 lt!388390)))

(assert (=> b!1145950 (subseq!181 (drop!430 lt!388114 (ite c!192324 lt!387689 lt!387688)) lt!388114)))

(assert (=> b!1145950 (= lt!388390 (lemmaDropSubseq!22 lt!388114 (ite c!192324 lt!387689 lt!387688)))))

(declare-fun d!326087 () Bool)

(assert (=> d!326087 e!732475))

(declare-fun res!515381 () Bool)

(assert (=> d!326087 (=> (not res!515381) (not e!732475))))

(declare-fun e!732476 () Bool)

(assert (=> d!326087 (= res!515381 (= (rulesProduceEachTokenIndividuallyList!479 lt!388077 (rules!9316 pt!21) (drop!430 lt!388114 (ite c!192324 lt!387689 lt!387688))) e!732476))))

(declare-fun res!515383 () Bool)

(assert (=> d!326087 (=> res!515383 e!732476)))

(assert (=> d!326087 (= res!515383 (not ((_ is Cons!11051) lt!388392)))))

(assert (=> d!326087 (= lt!388392 (drop!430 lt!388114 (ite c!192324 lt!387689 lt!387688)))))

(declare-fun lt!388391 () Unit!16973)

(declare-fun choose!7351 (LexerInterface!1604 List!11075 Int List!11076) Unit!16973)

(assert (=> d!326087 (= lt!388391 (choose!7351 lt!388077 lt!388114 (ite c!192324 lt!387689 lt!387688) (rules!9316 pt!21)))))

(assert (=> d!326087 (not (isEmpty!6858 (rules!9316 pt!21)))))

(assert (=> d!326087 (= (tokensListTwoByTwoPredicateSeparableTokensDropList!22 lt!388077 lt!388114 (ite c!192324 lt!387689 lt!387688) (rules!9316 pt!21)) lt!388391)))

(declare-fun b!1145948 () Bool)

(assert (=> b!1145948 (= e!732476 e!732478)))

(declare-fun res!515382 () Bool)

(assert (=> b!1145948 (=> (not res!515382) (not e!732478))))

(assert (=> b!1145948 (= res!515382 (rulesProduceIndividualToken!651 lt!388077 (rules!9316 pt!21) (h!16452 lt!388392)))))

(declare-fun b!1145951 () Bool)

(assert (=> b!1145951 (= e!732477 (subseq!181 lt!388388 lt!388114))))

(assert (= (and d!326087 (not res!515383)) b!1145948))

(assert (= (and b!1145948 res!515382) b!1145949))

(assert (= (and d!326087 res!515381) b!1145950))

(assert (= (and b!1145950 res!515380) b!1145951))

(declare-fun m!1306963 () Bool)

(assert (=> b!1145949 m!1306963))

(assert (=> d!326087 m!1306319))

(assert (=> d!326087 m!1306319))

(assert (=> d!326087 m!1306323))

(declare-fun m!1306971 () Bool)

(assert (=> d!326087 m!1306971))

(assert (=> d!326087 m!1306527))

(declare-fun m!1306975 () Bool)

(assert (=> b!1145951 m!1306975))

(assert (=> b!1145950 m!1306319))

(assert (=> b!1145950 m!1306341))

(assert (=> b!1145950 m!1306319))

(assert (=> b!1145950 m!1306337))

(declare-fun m!1306985 () Bool)

(assert (=> b!1145950 m!1306985))

(assert (=> b!1145950 m!1306339))

(declare-fun m!1306991 () Bool)

(assert (=> b!1145950 m!1306991))

(declare-fun m!1306995 () Bool)

(assert (=> b!1145950 m!1306995))

(assert (=> b!1145950 m!1306319))

(declare-fun m!1307001 () Bool)

(assert (=> b!1145948 m!1307001))

(assert (=> d!325935 d!326087))

(declare-fun d!326101 () Bool)

(declare-fun e!732502 () Bool)

(assert (=> d!326101 e!732502))

(declare-fun res!515396 () Bool)

(assert (=> d!326101 (=> (not res!515396) (not e!732502))))

(declare-fun slice!116 (Conc!3555 Int Int) Conc!3555)

(assert (=> d!326101 (= res!515396 (isBalanced!998 (slice!116 (c!192327 (tokens!1490 pt!21)) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689)))))))

(declare-fun lt!388399 () BalanceConc!7132)

(assert (=> d!326101 (= lt!388399 (BalanceConc!7133 (slice!116 (c!192327 (tokens!1490 pt!21)) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689)))))))

(declare-fun e!732503 () Bool)

(assert (=> d!326101 e!732503))

(declare-fun res!515395 () Bool)

(assert (=> d!326101 (=> (not res!515395) (not e!732503))))

(assert (=> d!326101 (= res!515395 (and (<= 0 (ite c!192324 lt!387689 lt!387688)) (<= (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689)))))))

(assert (=> d!326101 (= (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689))) lt!388399)))

(declare-fun b!1145983 () Bool)

(declare-fun res!515394 () Bool)

(assert (=> b!1145983 (=> (not res!515394) (not e!732503))))

(assert (=> b!1145983 (= res!515394 (<= (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689)) (size!8670 (tokens!1490 pt!21))))))

(declare-fun b!1145984 () Bool)

(assert (=> b!1145984 (= e!732503 (isBalanced!998 (c!192327 (tokens!1490 pt!21))))))

(declare-fun b!1145985 () Bool)

(assert (=> b!1145985 (= e!732502 (= (list!4049 lt!388399) (slice!115 (list!4049 (tokens!1490 pt!21)) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689)))))))

(assert (= (and d!326101 res!515395) b!1145983))

(assert (= (and b!1145983 res!515394) b!1145984))

(assert (= (and d!326101 res!515396) b!1145985))

(declare-fun m!1307035 () Bool)

(assert (=> d!326101 m!1307035))

(assert (=> d!326101 m!1307035))

(declare-fun m!1307037 () Bool)

(assert (=> d!326101 m!1307037))

(assert (=> b!1145983 m!1306265))

(assert (=> b!1145984 m!1306537))

(declare-fun m!1307039 () Bool)

(assert (=> b!1145985 m!1307039))

(assert (=> b!1145985 m!1306281))

(assert (=> b!1145985 m!1306281))

(declare-fun m!1307041 () Bool)

(assert (=> b!1145985 m!1307041))

(assert (=> d!325935 d!326101))

(declare-fun b!1146004 () Bool)

(declare-fun e!732515 () List!11075)

(declare-fun e!732516 () List!11075)

(assert (=> b!1146004 (= e!732515 e!732516)))

(declare-fun c!192452 () Bool)

(assert (=> b!1146004 (= c!192452 (<= (ite c!192324 lt!387689 lt!387688) 0))))

(declare-fun b!1146005 () Bool)

(assert (=> b!1146005 (= e!732515 Nil!11051)))

(declare-fun b!1146006 () Bool)

(assert (=> b!1146006 (= e!732516 lt!388114)))

(declare-fun b!1146007 () Bool)

(declare-fun e!732518 () Bool)

(declare-fun lt!388402 () List!11075)

(declare-fun e!732517 () Int)

(declare-fun size!8680 (List!11075) Int)

(assert (=> b!1146007 (= e!732518 (= (size!8680 lt!388402) e!732517))))

(declare-fun c!192450 () Bool)

(assert (=> b!1146007 (= c!192450 (<= (ite c!192324 lt!387689 lt!387688) 0))))

(declare-fun b!1146008 () Bool)

(declare-fun e!732514 () Int)

(assert (=> b!1146008 (= e!732514 0)))

(declare-fun bm!81653 () Bool)

(declare-fun call!81658 () Int)

(assert (=> bm!81653 (= call!81658 (size!8680 lt!388114))))

(declare-fun b!1146009 () Bool)

(assert (=> b!1146009 (= e!732516 (drop!430 (t!107997 lt!388114) (- (ite c!192324 lt!387689 lt!387688) 1)))))

(declare-fun b!1146010 () Bool)

(assert (=> b!1146010 (= e!732517 call!81658)))

(declare-fun d!326113 () Bool)

(assert (=> d!326113 e!732518))

(declare-fun res!515399 () Bool)

(assert (=> d!326113 (=> (not res!515399) (not e!732518))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1591 (List!11075) (InoxSet Token!3472))

(assert (=> d!326113 (= res!515399 (= ((_ map implies) (content!1591 lt!388402) (content!1591 lt!388114)) ((as const (InoxSet Token!3472)) true)))))

(assert (=> d!326113 (= lt!388402 e!732515)))

(declare-fun c!192451 () Bool)

(assert (=> d!326113 (= c!192451 ((_ is Nil!11051) lt!388114))))

(assert (=> d!326113 (= (drop!430 lt!388114 (ite c!192324 lt!387689 lt!387688)) lt!388402)))

(declare-fun b!1146011 () Bool)

(assert (=> b!1146011 (= e!732517 e!732514)))

(declare-fun c!192453 () Bool)

(assert (=> b!1146011 (= c!192453 (>= (ite c!192324 lt!387689 lt!387688) call!81658))))

(declare-fun b!1146012 () Bool)

(assert (=> b!1146012 (= e!732514 (- call!81658 (ite c!192324 lt!387689 lt!387688)))))

(assert (= (and d!326113 c!192451) b!1146005))

(assert (= (and d!326113 (not c!192451)) b!1146004))

(assert (= (and b!1146004 c!192452) b!1146006))

(assert (= (and b!1146004 (not c!192452)) b!1146009))

(assert (= (and d!326113 res!515399) b!1146007))

(assert (= (and b!1146007 c!192450) b!1146010))

(assert (= (and b!1146007 (not c!192450)) b!1146011))

(assert (= (and b!1146011 c!192453) b!1146008))

(assert (= (and b!1146011 (not c!192453)) b!1146012))

(assert (= (or b!1146010 b!1146011 b!1146012) bm!81653))

(declare-fun m!1307043 () Bool)

(assert (=> b!1146007 m!1307043))

(declare-fun m!1307045 () Bool)

(assert (=> bm!81653 m!1307045))

(declare-fun m!1307047 () Bool)

(assert (=> b!1146009 m!1307047))

(declare-fun m!1307049 () Bool)

(assert (=> d!326113 m!1307049))

(declare-fun m!1307051 () Bool)

(assert (=> d!326113 m!1307051))

(assert (=> d!325935 d!326113))

(declare-fun d!326115 () Bool)

(declare-fun lt!388405 () Bool)

(assert (=> d!326115 (= lt!388405 (forall!2752 (list!4049 (tokens!1490 pt!21)) lambda!46111))))

(declare-fun forall!2761 (Conc!3555 Int) Bool)

(assert (=> d!326115 (= lt!388405 (forall!2761 (c!192327 (tokens!1490 pt!21)) lambda!46111))))

(assert (=> d!326115 (= (forall!2755 (tokens!1490 pt!21) lambda!46111) lt!388405)))

(declare-fun bs!281008 () Bool)

(assert (= bs!281008 d!326115))

(assert (=> bs!281008 m!1306281))

(assert (=> bs!281008 m!1306281))

(declare-fun m!1307053 () Bool)

(assert (=> bs!281008 m!1307053))

(declare-fun m!1307055 () Bool)

(assert (=> bs!281008 m!1307055))

(assert (=> d!325935 d!326115))

(declare-fun b!1146024 () Bool)

(declare-fun e!732529 () Bool)

(assert (=> b!1146024 (= e!732529 (subseq!181 (slice!115 lt!388124 (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689))) (t!107997 lt!388124)))))

(declare-fun b!1146022 () Bool)

(declare-fun e!732528 () Bool)

(assert (=> b!1146022 (= e!732528 e!732529)))

(declare-fun res!515411 () Bool)

(assert (=> b!1146022 (=> res!515411 e!732529)))

(declare-fun e!732530 () Bool)

(assert (=> b!1146022 (= res!515411 e!732530)))

(declare-fun res!515409 () Bool)

(assert (=> b!1146022 (=> (not res!515409) (not e!732530))))

(assert (=> b!1146022 (= res!515409 (= (h!16452 (slice!115 lt!388124 (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689)))) (h!16452 lt!388124)))))

(declare-fun b!1146023 () Bool)

(assert (=> b!1146023 (= e!732530 (subseq!181 (t!107997 (slice!115 lt!388124 (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689)))) (t!107997 lt!388124)))))

(declare-fun b!1146021 () Bool)

(declare-fun e!732527 () Bool)

(assert (=> b!1146021 (= e!732527 e!732528)))

(declare-fun res!515408 () Bool)

(assert (=> b!1146021 (=> (not res!515408) (not e!732528))))

(assert (=> b!1146021 (= res!515408 ((_ is Cons!11051) lt!388124))))

(declare-fun d!326117 () Bool)

(declare-fun res!515410 () Bool)

(assert (=> d!326117 (=> res!515410 e!732527)))

(assert (=> d!326117 (= res!515410 ((_ is Nil!11051) (slice!115 lt!388124 (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689)))))))

(assert (=> d!326117 (= (subseq!181 (slice!115 lt!388124 (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689))) lt!388124) e!732527)))

(assert (= (and d!326117 (not res!515410)) b!1146021))

(assert (= (and b!1146021 res!515408) b!1146022))

(assert (= (and b!1146022 res!515409) b!1146023))

(assert (= (and b!1146022 (not res!515411)) b!1146024))

(assert (=> b!1146024 m!1306277))

(declare-fun m!1307057 () Bool)

(assert (=> b!1146024 m!1307057))

(declare-fun m!1307059 () Bool)

(assert (=> b!1146023 m!1307059))

(assert (=> d!325935 d!326117))

(declare-fun d!326119 () Bool)

(assert (=> d!326119 (subseq!181 (drop!430 lt!388107 (ite c!192324 lt!387689 lt!387688)) lt!388107)))

(declare-fun lt!388408 () Unit!16973)

(declare-fun choose!7352 (List!11075 Int) Unit!16973)

(assert (=> d!326119 (= lt!388408 (choose!7352 lt!388107 (ite c!192324 lt!387689 lt!387688)))))

(assert (=> d!326119 (= (lemmaDropSubseq!22 lt!388107 (ite c!192324 lt!387689 lt!387688)) lt!388408)))

(declare-fun bs!281009 () Bool)

(assert (= bs!281009 d!326119))

(assert (=> bs!281009 m!1306285))

(assert (=> bs!281009 m!1306285))

(assert (=> bs!281009 m!1306313))

(declare-fun m!1307061 () Bool)

(assert (=> bs!281009 m!1307061))

(assert (=> d!325935 d!326119))

(declare-fun bs!281010 () Bool)

(declare-fun d!326121 () Bool)

(assert (= bs!281010 (and d!326121 d!325935)))

(declare-fun lambda!46126 () Int)

(assert (=> bs!281010 (= (= lt!388069 Lexer!1602) (= lambda!46126 lambda!46111))))

(declare-fun bs!281011 () Bool)

(assert (= bs!281011 (and d!326121 d!326039)))

(assert (=> bs!281011 (= (= lt!388069 lt!388077) (= lambda!46126 lambda!46114))))

(declare-fun bs!281012 () Bool)

(assert (= bs!281012 (and d!326121 b!1145847)))

(assert (=> bs!281012 (= (= lt!388069 Lexer!1602) (= lambda!46126 lambda!46117))))

(declare-fun bs!281013 () Bool)

(assert (= bs!281013 (and d!326121 b!1145950)))

(assert (=> bs!281013 (= (= lt!388069 Lexer!1602) (= lambda!46126 lambda!46123))))

(declare-fun b!1146029 () Bool)

(declare-fun e!732535 () Bool)

(assert (=> b!1146029 (= e!732535 true)))

(declare-fun b!1146028 () Bool)

(declare-fun e!732534 () Bool)

(assert (=> b!1146028 (= e!732534 e!732535)))

(declare-fun b!1146027 () Bool)

(declare-fun e!732533 () Bool)

(assert (=> b!1146027 (= e!732533 e!732534)))

(assert (=> d!326121 e!732533))

(assert (= b!1146028 b!1146029))

(assert (= b!1146027 b!1146028))

(assert (= (and d!326121 ((_ is Cons!11052) (rules!9316 pt!21))) b!1146027))

(assert (=> b!1146029 (< (dynLambda!4881 order!6751 (toValue!3002 (transformation!1905 (h!16453 (rules!9316 pt!21))))) (dynLambda!4882 order!6753 lambda!46126))))

(assert (=> b!1146029 (< (dynLambda!4883 order!6755 (toChars!2861 (transformation!1905 (h!16453 (rules!9316 pt!21))))) (dynLambda!4882 order!6753 lambda!46126))))

(assert (=> d!326121 true))

(declare-fun lt!388409 () Bool)

(assert (=> d!326121 (= lt!388409 (forall!2752 (take!28 lt!388109 lt!388125) lambda!46126))))

(declare-fun e!732531 () Bool)

(assert (=> d!326121 (= lt!388409 e!732531)))

(declare-fun res!515412 () Bool)

(assert (=> d!326121 (=> res!515412 e!732531)))

(assert (=> d!326121 (= res!515412 (not ((_ is Cons!11051) (take!28 lt!388109 lt!388125))))))

(assert (=> d!326121 (not (isEmpty!6858 (rules!9316 pt!21)))))

(assert (=> d!326121 (= (rulesProduceEachTokenIndividuallyList!479 lt!388069 (rules!9316 pt!21) (take!28 lt!388109 lt!388125)) lt!388409)))

(declare-fun b!1146025 () Bool)

(declare-fun e!732532 () Bool)

(assert (=> b!1146025 (= e!732531 e!732532)))

(declare-fun res!515413 () Bool)

(assert (=> b!1146025 (=> (not res!515413) (not e!732532))))

(assert (=> b!1146025 (= res!515413 (rulesProduceIndividualToken!651 lt!388069 (rules!9316 pt!21) (h!16452 (take!28 lt!388109 lt!388125))))))

(declare-fun b!1146026 () Bool)

(assert (=> b!1146026 (= e!732532 (rulesProduceEachTokenIndividuallyList!479 lt!388069 (rules!9316 pt!21) (t!107997 (take!28 lt!388109 lt!388125))))))

(assert (= (and d!326121 (not res!515412)) b!1146025))

(assert (= (and b!1146025 res!515413) b!1146026))

(assert (=> d!326121 m!1306315))

(declare-fun m!1307063 () Bool)

(assert (=> d!326121 m!1307063))

(assert (=> d!326121 m!1306527))

(declare-fun m!1307065 () Bool)

(assert (=> b!1146025 m!1307065))

(declare-fun m!1307067 () Bool)

(assert (=> b!1146026 m!1307067))

(assert (=> d!325935 d!326121))

(declare-fun d!326123 () Bool)

(assert (=> d!326123 (= (separableTokens!73 Lexer!1602 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689))) (rules!9316 pt!21)) (tokensListTwoByTwoPredicateSeparable!33 Lexer!1602 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689))) 0 (rules!9316 pt!21)))))

(declare-fun bs!281016 () Bool)

(assert (= bs!281016 d!326123))

(assert (=> bs!281016 m!1306267))

(assert (=> bs!281016 m!1306269))

(assert (=> d!325935 d!326123))

(declare-fun d!326139 () Bool)

(declare-fun e!732620 () Bool)

(assert (=> d!326139 e!732620))

(declare-fun res!515491 () Bool)

(assert (=> d!326139 (=> (not res!515491) (not e!732620))))

(assert (=> d!326139 (= res!515491 (rulesInvariant!1478 Lexer!1602 (rules!9316 pt!21)))))

(declare-fun Unit!16996 () Unit!16973)

(assert (=> d!326139 (= (lemmaInvariant!96 pt!21) Unit!16996)))

(declare-fun b!1146154 () Bool)

(declare-fun res!515492 () Bool)

(assert (=> b!1146154 (=> (not res!515492) (not e!732620))))

(assert (=> b!1146154 (= res!515492 (rulesProduceEachTokenIndividually!646 Lexer!1602 (rules!9316 pt!21) (tokens!1490 pt!21)))))

(declare-fun b!1146155 () Bool)

(assert (=> b!1146155 (= e!732620 (separableTokens!73 Lexer!1602 (tokens!1490 pt!21) (rules!9316 pt!21)))))

(assert (= (and d!326139 res!515491) b!1146154))

(assert (= (and b!1146154 res!515492) b!1146155))

(assert (=> d!326139 m!1306529))

(assert (=> b!1146154 m!1306299))

(assert (=> b!1146155 m!1306531))

(assert (=> d!325935 d!326139))

(declare-fun d!326169 () Bool)

(declare-fun res!515497 () Bool)

(declare-fun e!732625 () Bool)

(assert (=> d!326169 (=> res!515497 e!732625)))

(assert (=> d!326169 (= res!515497 ((_ is Nil!11051) lt!388080))))

(assert (=> d!326169 (= (forall!2752 lt!388080 lambda!46111) e!732625)))

(declare-fun b!1146160 () Bool)

(declare-fun e!732626 () Bool)

(assert (=> b!1146160 (= e!732625 e!732626)))

(declare-fun res!515498 () Bool)

(assert (=> b!1146160 (=> (not res!515498) (not e!732626))))

(declare-fun dynLambda!4888 (Int Token!3472) Bool)

(assert (=> b!1146160 (= res!515498 (dynLambda!4888 lambda!46111 (h!16452 lt!388080)))))

(declare-fun b!1146161 () Bool)

(assert (=> b!1146161 (= e!732626 (forall!2752 (t!107997 lt!388080) lambda!46111))))

(assert (= (and d!326169 (not res!515497)) b!1146160))

(assert (= (and b!1146160 res!515498) b!1146161))

(declare-fun b_lambda!34105 () Bool)

(assert (=> (not b_lambda!34105) (not b!1146160)))

(declare-fun m!1307223 () Bool)

(assert (=> b!1146160 m!1307223))

(declare-fun m!1307225 () Bool)

(assert (=> b!1146161 m!1307225))

(assert (=> d!325935 d!326169))

(declare-fun b!1146176 () Bool)

(declare-fun e!732637 () List!11075)

(assert (=> b!1146176 (= e!732637 Nil!11051)))

(declare-fun b!1146177 () Bool)

(declare-fun e!732636 () Int)

(declare-fun e!732638 () Int)

(assert (=> b!1146177 (= e!732636 e!732638)))

(declare-fun c!192484 () Bool)

(assert (=> b!1146177 (= c!192484 (>= lt!388125 (size!8680 lt!388109)))))

(declare-fun b!1146178 () Bool)

(assert (=> b!1146178 (= e!732638 lt!388125)))

(declare-fun b!1146179 () Bool)

(assert (=> b!1146179 (= e!732638 (size!8680 lt!388109))))

(declare-fun b!1146180 () Bool)

(assert (=> b!1146180 (= e!732637 (Cons!11051 (h!16452 lt!388109) (take!28 (t!107997 lt!388109) (- lt!388125 1))))))

(declare-fun d!326171 () Bool)

(declare-fun e!732635 () Bool)

(assert (=> d!326171 e!732635))

(declare-fun res!515501 () Bool)

(assert (=> d!326171 (=> (not res!515501) (not e!732635))))

(declare-fun lt!388446 () List!11075)

(assert (=> d!326171 (= res!515501 (= ((_ map implies) (content!1591 lt!388446) (content!1591 lt!388109)) ((as const (InoxSet Token!3472)) true)))))

(assert (=> d!326171 (= lt!388446 e!732637)))

(declare-fun c!192483 () Bool)

(assert (=> d!326171 (= c!192483 (or ((_ is Nil!11051) lt!388109) (<= lt!388125 0)))))

(assert (=> d!326171 (= (take!28 lt!388109 lt!388125) lt!388446)))

(declare-fun b!1146181 () Bool)

(assert (=> b!1146181 (= e!732636 0)))

(declare-fun b!1146182 () Bool)

(assert (=> b!1146182 (= e!732635 (= (size!8680 lt!388446) e!732636))))

(declare-fun c!192482 () Bool)

(assert (=> b!1146182 (= c!192482 (<= lt!388125 0))))

(assert (= (and d!326171 c!192483) b!1146176))

(assert (= (and d!326171 (not c!192483)) b!1146180))

(assert (= (and d!326171 res!515501) b!1146182))

(assert (= (and b!1146182 c!192482) b!1146181))

(assert (= (and b!1146182 (not c!192482)) b!1146177))

(assert (= (and b!1146177 c!192484) b!1146179))

(assert (= (and b!1146177 (not c!192484)) b!1146178))

(declare-fun m!1307227 () Bool)

(assert (=> d!326171 m!1307227))

(declare-fun m!1307229 () Bool)

(assert (=> d!326171 m!1307229))

(declare-fun m!1307231 () Bool)

(assert (=> b!1146179 m!1307231))

(declare-fun m!1307233 () Bool)

(assert (=> b!1146180 m!1307233))

(declare-fun m!1307235 () Bool)

(assert (=> b!1146182 m!1307235))

(assert (=> b!1146177 m!1307231))

(assert (=> d!325935 d!326171))

(declare-fun d!326173 () Bool)

(assert (=> d!326173 (forall!2752 lt!388080 lambda!46111)))

(declare-fun lt!388449 () Unit!16973)

(declare-fun choose!7353 (List!11075 List!11075 Int) Unit!16973)

(assert (=> d!326173 (= lt!388449 (choose!7353 lt!388080 lt!388100 lambda!46111))))

(assert (=> d!326173 (forall!2752 lt!388100 lambda!46111)))

(assert (=> d!326173 (= (lemmaForallSubseq!81 lt!388080 lt!388100 lambda!46111) lt!388449)))

(declare-fun bs!281024 () Bool)

(assert (= bs!281024 d!326173))

(assert (=> bs!281024 m!1306311))

(declare-fun m!1307237 () Bool)

(assert (=> bs!281024 m!1307237))

(declare-fun m!1307239 () Bool)

(assert (=> bs!281024 m!1307239))

(assert (=> d!325935 d!326173))

(declare-fun b!1146255 () Bool)

(declare-fun e!732689 () Bool)

(declare-fun lt!388658 () List!11075)

(assert (=> b!1146255 (= e!732689 (<= 0 (size!8680 lt!388658)))))

(declare-fun lt!388657 () Bool)

(declare-fun d!326175 () Bool)

(declare-fun dropList!301 (BalanceConc!7132 Int) List!11075)

(assert (=> d!326175 (= lt!388657 (tokensListTwoByTwoPredicateSeparableList!78 Lexer!1602 (dropList!301 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689))) 0) (rules!9316 pt!21)))))

(declare-fun lt!388652 () Unit!16973)

(declare-fun lt!388645 () Unit!16973)

(assert (=> d!326175 (= lt!388652 lt!388645)))

(declare-fun lt!388638 () List!11075)

(assert (=> d!326175 (rulesProduceEachTokenIndividuallyList!479 Lexer!1602 (rules!9316 pt!21) lt!388638)))

(declare-fun lt!388631 () List!11075)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!13 (LexerInterface!1604 List!11076 List!11075 List!11075) Unit!16973)

(assert (=> d!326175 (= lt!388645 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!13 Lexer!1602 (rules!9316 pt!21) lt!388631 lt!388638))))

(declare-fun e!732688 () Bool)

(assert (=> d!326175 e!732688))

(declare-fun res!515562 () Bool)

(assert (=> d!326175 (=> (not res!515562) (not e!732688))))

(assert (=> d!326175 (= res!515562 ((_ is Lexer!1602) Lexer!1602))))

(assert (=> d!326175 (= lt!388638 (dropList!301 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689))) 0))))

(assert (=> d!326175 (= lt!388631 (list!4049 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689)))))))

(declare-fun lt!388656 () Unit!16973)

(declare-fun lt!388634 () Unit!16973)

(assert (=> d!326175 (= lt!388656 lt!388634)))

(assert (=> d!326175 (subseq!181 (drop!430 lt!388658 0) lt!388658)))

(declare-fun lemmaDropSubSeq!13 (List!11075 Int) Unit!16973)

(assert (=> d!326175 (= lt!388634 (lemmaDropSubSeq!13 lt!388658 0))))

(assert (=> d!326175 e!732689))

(declare-fun res!515560 () Bool)

(assert (=> d!326175 (=> (not res!515560) (not e!732689))))

(assert (=> d!326175 (= res!515560 (>= 0 0))))

(assert (=> d!326175 (= lt!388658 (list!4049 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689)))))))

(declare-fun e!732685 () Bool)

(assert (=> d!326175 (= lt!388657 e!732685)))

(declare-fun res!515561 () Bool)

(assert (=> d!326175 (=> res!515561 e!732685)))

(assert (=> d!326175 (= res!515561 (not (< 0 (- (size!8670 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689)))) 1))))))

(declare-fun e!732686 () Bool)

(assert (=> d!326175 e!732686))

(declare-fun res!515558 () Bool)

(assert (=> d!326175 (=> (not res!515558) (not e!732686))))

(assert (=> d!326175 (= res!515558 (>= 0 0))))

(assert (=> d!326175 (= (tokensListTwoByTwoPredicateSeparable!33 Lexer!1602 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689))) 0 (rules!9316 pt!21)) lt!388657)))

(declare-fun b!1146256 () Bool)

(declare-fun res!515564 () Bool)

(assert (=> b!1146256 (=> (not res!515564) (not e!732688))))

(assert (=> b!1146256 (= res!515564 (rulesInvariant!1478 Lexer!1602 (rules!9316 pt!21)))))

(declare-fun b!1146257 () Bool)

(assert (=> b!1146257 (= e!732688 (rulesProduceEachTokenIndividuallyList!479 Lexer!1602 (rules!9316 pt!21) lt!388631))))

(declare-fun b!1146258 () Bool)

(assert (=> b!1146258 (= e!732686 (<= 0 (size!8670 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689))))))))

(declare-fun b!1146259 () Bool)

(declare-fun e!732687 () Bool)

(assert (=> b!1146259 (= e!732685 e!732687)))

(declare-fun res!515565 () Bool)

(assert (=> b!1146259 (=> (not res!515565) (not e!732687))))

(assert (=> b!1146259 (= res!515565 (separableTokensPredicate!102 Lexer!1602 (apply!2353 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689))) 0) (apply!2353 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689))) (+ 0 1)) (rules!9316 pt!21)))))

(declare-fun lt!388633 () Unit!16973)

(declare-fun Unit!16997 () Unit!16973)

(assert (=> b!1146259 (= lt!388633 Unit!16997)))

(assert (=> b!1146259 (> (size!8673 (charsOf!1040 (apply!2353 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689))) (+ 0 1)))) 0)))

(declare-fun lt!388630 () Unit!16973)

(declare-fun Unit!16998 () Unit!16973)

(assert (=> b!1146259 (= lt!388630 Unit!16998)))

(assert (=> b!1146259 (rulesProduceIndividualToken!651 Lexer!1602 (rules!9316 pt!21) (apply!2353 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689))) (+ 0 1)))))

(declare-fun lt!388644 () Unit!16973)

(declare-fun Unit!16999 () Unit!16973)

(assert (=> b!1146259 (= lt!388644 Unit!16999)))

(assert (=> b!1146259 (rulesProduceIndividualToken!651 Lexer!1602 (rules!9316 pt!21) (apply!2353 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689))) 0))))

(declare-fun lt!388639 () Unit!16973)

(declare-fun lt!388653 () Unit!16973)

(assert (=> b!1146259 (= lt!388639 lt!388653)))

(declare-fun lt!388654 () Token!3472)

(assert (=> b!1146259 (rulesProduceIndividualToken!651 Lexer!1602 (rules!9316 pt!21) lt!388654)))

(declare-fun lt!388649 () List!11075)

(assert (=> b!1146259 (= lt!388653 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!261 Lexer!1602 (rules!9316 pt!21) lt!388649 lt!388654))))

(assert (=> b!1146259 (= lt!388654 (apply!2353 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689))) (+ 0 1)))))

(assert (=> b!1146259 (= lt!388649 (list!4049 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689)))))))

(declare-fun lt!388641 () Unit!16973)

(declare-fun lt!388651 () Unit!16973)

(assert (=> b!1146259 (= lt!388641 lt!388651)))

(declare-fun lt!388626 () Token!3472)

(assert (=> b!1146259 (rulesProduceIndividualToken!651 Lexer!1602 (rules!9316 pt!21) lt!388626)))

(declare-fun lt!388632 () List!11075)

(assert (=> b!1146259 (= lt!388651 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!261 Lexer!1602 (rules!9316 pt!21) lt!388632 lt!388626))))

(assert (=> b!1146259 (= lt!388626 (apply!2353 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689))) 0))))

(assert (=> b!1146259 (= lt!388632 (list!4049 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689)))))))

(declare-fun lt!388655 () Unit!16973)

(declare-fun lt!388642 () Unit!16973)

(assert (=> b!1146259 (= lt!388655 lt!388642)))

(declare-fun lt!388635 () List!11075)

(declare-fun lt!388646 () Int)

(assert (=> b!1146259 (= (tail!1644 (drop!430 lt!388635 lt!388646)) (drop!430 lt!388635 (+ lt!388646 1)))))

(assert (=> b!1146259 (= lt!388642 (lemmaDropTail!331 lt!388635 lt!388646))))

(assert (=> b!1146259 (= lt!388646 (+ 0 1))))

(assert (=> b!1146259 (= lt!388635 (list!4049 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689)))))))

(declare-fun lt!388650 () Unit!16973)

(declare-fun lt!388643 () Unit!16973)

(assert (=> b!1146259 (= lt!388650 lt!388643)))

(declare-fun lt!388629 () List!11075)

(assert (=> b!1146259 (= (tail!1644 (drop!430 lt!388629 0)) (drop!430 lt!388629 (+ 0 1)))))

(assert (=> b!1146259 (= lt!388643 (lemmaDropTail!331 lt!388629 0))))

(assert (=> b!1146259 (= lt!388629 (list!4049 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689)))))))

(declare-fun lt!388636 () Unit!16973)

(declare-fun lt!388637 () Unit!16973)

(assert (=> b!1146259 (= lt!388636 lt!388637)))

(declare-fun lt!388627 () List!11075)

(declare-fun lt!388640 () Int)

(assert (=> b!1146259 (= (head!2070 (drop!430 lt!388627 lt!388640)) (apply!2354 lt!388627 lt!388640))))

(assert (=> b!1146259 (= lt!388637 (lemmaDropApply!343 lt!388627 lt!388640))))

(assert (=> b!1146259 (= lt!388640 (+ 0 1))))

(assert (=> b!1146259 (= lt!388627 (list!4049 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689)))))))

(declare-fun lt!388648 () Unit!16973)

(declare-fun lt!388628 () Unit!16973)

(assert (=> b!1146259 (= lt!388648 lt!388628)))

(declare-fun lt!388647 () List!11075)

(assert (=> b!1146259 (= (head!2070 (drop!430 lt!388647 0)) (apply!2354 lt!388647 0))))

(assert (=> b!1146259 (= lt!388628 (lemmaDropApply!343 lt!388647 0))))

(assert (=> b!1146259 (= lt!388647 (list!4049 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689)))))))

(declare-fun b!1146260 () Bool)

(declare-fun res!515563 () Bool)

(assert (=> b!1146260 (=> (not res!515563) (not e!732688))))

(assert (=> b!1146260 (= res!515563 (subseq!181 lt!388638 lt!388631))))

(declare-fun b!1146261 () Bool)

(declare-fun res!515559 () Bool)

(assert (=> b!1146261 (=> (not res!515559) (not e!732688))))

(assert (=> b!1146261 (= res!515559 (not (isEmpty!6858 (rules!9316 pt!21))))))

(declare-fun b!1146262 () Bool)

(assert (=> b!1146262 (= e!732687 (tokensListTwoByTwoPredicateSeparable!33 Lexer!1602 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689))) (+ 0 1) (rules!9316 pt!21)))))

(assert (= (and d!326175 res!515558) b!1146258))

(assert (= (and d!326175 (not res!515561)) b!1146259))

(assert (= (and b!1146259 res!515565) b!1146262))

(assert (= (and d!326175 res!515560) b!1146255))

(assert (= (and d!326175 res!515562) b!1146261))

(assert (= (and b!1146261 res!515559) b!1146256))

(assert (= (and b!1146256 res!515564) b!1146260))

(assert (= (and b!1146260 res!515563) b!1146257))

(assert (=> b!1146256 m!1306529))

(assert (=> b!1146259 m!1306267))

(declare-fun m!1307379 () Bool)

(assert (=> b!1146259 m!1307379))

(declare-fun m!1307381 () Bool)

(assert (=> b!1146259 m!1307381))

(declare-fun m!1307383 () Bool)

(assert (=> b!1146259 m!1307383))

(declare-fun m!1307385 () Bool)

(assert (=> b!1146259 m!1307385))

(declare-fun m!1307387 () Bool)

(assert (=> b!1146259 m!1307387))

(assert (=> b!1146259 m!1307387))

(declare-fun m!1307389 () Bool)

(assert (=> b!1146259 m!1307389))

(declare-fun m!1307391 () Bool)

(assert (=> b!1146259 m!1307391))

(declare-fun m!1307393 () Bool)

(assert (=> b!1146259 m!1307393))

(declare-fun m!1307395 () Bool)

(assert (=> b!1146259 m!1307395))

(declare-fun m!1307397 () Bool)

(assert (=> b!1146259 m!1307397))

(declare-fun m!1307399 () Bool)

(assert (=> b!1146259 m!1307399))

(declare-fun m!1307401 () Bool)

(assert (=> b!1146259 m!1307401))

(declare-fun m!1307403 () Bool)

(assert (=> b!1146259 m!1307403))

(declare-fun m!1307405 () Bool)

(assert (=> b!1146259 m!1307405))

(declare-fun m!1307407 () Bool)

(assert (=> b!1146259 m!1307407))

(assert (=> b!1146259 m!1307379))

(declare-fun m!1307409 () Bool)

(assert (=> b!1146259 m!1307409))

(assert (=> b!1146259 m!1307403))

(declare-fun m!1307411 () Bool)

(assert (=> b!1146259 m!1307411))

(declare-fun m!1307413 () Bool)

(assert (=> b!1146259 m!1307413))

(declare-fun m!1307415 () Bool)

(assert (=> b!1146259 m!1307415))

(declare-fun m!1307417 () Bool)

(assert (=> b!1146259 m!1307417))

(declare-fun m!1307419 () Bool)

(assert (=> b!1146259 m!1307419))

(declare-fun m!1307421 () Bool)

(assert (=> b!1146259 m!1307421))

(assert (=> b!1146259 m!1307391))

(declare-fun m!1307423 () Bool)

(assert (=> b!1146259 m!1307423))

(assert (=> b!1146259 m!1307411))

(declare-fun m!1307425 () Bool)

(assert (=> b!1146259 m!1307425))

(assert (=> b!1146259 m!1306267))

(assert (=> b!1146259 m!1306293))

(declare-fun m!1307427 () Bool)

(assert (=> b!1146259 m!1307427))

(assert (=> b!1146259 m!1307379))

(assert (=> b!1146259 m!1307403))

(declare-fun m!1307429 () Bool)

(assert (=> b!1146259 m!1307429))

(assert (=> b!1146259 m!1306267))

(assert (=> b!1146259 m!1307403))

(assert (=> b!1146259 m!1307413))

(declare-fun m!1307431 () Bool)

(assert (=> b!1146259 m!1307431))

(assert (=> b!1146259 m!1307397))

(declare-fun m!1307433 () Bool)

(assert (=> b!1146255 m!1307433))

(declare-fun m!1307435 () Bool)

(assert (=> b!1146257 m!1307435))

(assert (=> b!1146258 m!1306267))

(declare-fun m!1307437 () Bool)

(assert (=> b!1146258 m!1307437))

(declare-fun m!1307439 () Bool)

(assert (=> b!1146260 m!1307439))

(assert (=> d!326175 m!1306267))

(assert (=> d!326175 m!1307437))

(declare-fun m!1307441 () Bool)

(assert (=> d!326175 m!1307441))

(declare-fun m!1307443 () Bool)

(assert (=> d!326175 m!1307443))

(declare-fun m!1307445 () Bool)

(assert (=> d!326175 m!1307445))

(assert (=> d!326175 m!1306267))

(assert (=> d!326175 m!1306293))

(assert (=> d!326175 m!1307443))

(declare-fun m!1307447 () Bool)

(assert (=> d!326175 m!1307447))

(assert (=> d!326175 m!1306267))

(declare-fun m!1307449 () Bool)

(assert (=> d!326175 m!1307449))

(declare-fun m!1307451 () Bool)

(assert (=> d!326175 m!1307451))

(assert (=> d!326175 m!1307449))

(declare-fun m!1307453 () Bool)

(assert (=> d!326175 m!1307453))

(assert (=> b!1146262 m!1306267))

(declare-fun m!1307455 () Bool)

(assert (=> b!1146262 m!1307455))

(assert (=> b!1146261 m!1306527))

(assert (=> d!325935 d!326175))

(declare-fun bs!281031 () Bool)

(declare-fun d!326195 () Bool)

(assert (= bs!281031 (and d!326195 d!326121)))

(declare-fun lambda!46133 () Int)

(assert (=> bs!281031 (= (= Lexer!1602 lt!388069) (= lambda!46133 lambda!46126))))

(declare-fun bs!281032 () Bool)

(assert (= bs!281032 (and d!326195 d!325935)))

(assert (=> bs!281032 (= lambda!46133 lambda!46111)))

(declare-fun bs!281033 () Bool)

(assert (= bs!281033 (and d!326195 b!1145950)))

(assert (=> bs!281033 (= lambda!46133 lambda!46123)))

(declare-fun bs!281034 () Bool)

(assert (= bs!281034 (and d!326195 b!1145847)))

(assert (=> bs!281034 (= lambda!46133 lambda!46117)))

(declare-fun bs!281035 () Bool)

(assert (= bs!281035 (and d!326195 d!326039)))

(assert (=> bs!281035 (= (= Lexer!1602 lt!388077) (= lambda!46133 lambda!46114))))

(declare-fun b!1146267 () Bool)

(declare-fun e!732694 () Bool)

(assert (=> b!1146267 (= e!732694 true)))

(declare-fun b!1146266 () Bool)

(declare-fun e!732693 () Bool)

(assert (=> b!1146266 (= e!732693 e!732694)))

(declare-fun b!1146265 () Bool)

(declare-fun e!732692 () Bool)

(assert (=> b!1146265 (= e!732692 e!732693)))

(assert (=> d!326195 e!732692))

(assert (= b!1146266 b!1146267))

(assert (= b!1146265 b!1146266))

(assert (= (and d!326195 ((_ is Cons!11052) (rules!9316 pt!21))) b!1146265))

(assert (=> b!1146267 (< (dynLambda!4881 order!6751 (toValue!3002 (transformation!1905 (h!16453 (rules!9316 pt!21))))) (dynLambda!4882 order!6753 lambda!46133))))

(assert (=> b!1146267 (< (dynLambda!4883 order!6755 (toChars!2861 (transformation!1905 (h!16453 (rules!9316 pt!21))))) (dynLambda!4882 order!6753 lambda!46133))))

(assert (=> d!326195 true))

(declare-fun lt!388659 () Bool)

(assert (=> d!326195 (= lt!388659 (forall!2752 (list!4049 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689)))) lambda!46133))))

(declare-fun e!732690 () Bool)

(assert (=> d!326195 (= lt!388659 e!732690)))

(declare-fun res!515566 () Bool)

(assert (=> d!326195 (=> res!515566 e!732690)))

(assert (=> d!326195 (= res!515566 (not ((_ is Cons!11051) (list!4049 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689)))))))))

(assert (=> d!326195 (not (isEmpty!6858 (rules!9316 pt!21)))))

(assert (=> d!326195 (= (rulesProduceEachTokenIndividuallyList!479 Lexer!1602 (rules!9316 pt!21) (list!4049 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689))))) lt!388659)))

(declare-fun b!1146263 () Bool)

(declare-fun e!732691 () Bool)

(assert (=> b!1146263 (= e!732690 e!732691)))

(declare-fun res!515567 () Bool)

(assert (=> b!1146263 (=> (not res!515567) (not e!732691))))

(assert (=> b!1146263 (= res!515567 (rulesProduceIndividualToken!651 Lexer!1602 (rules!9316 pt!21) (h!16452 (list!4049 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689)))))))))

(declare-fun b!1146264 () Bool)

(assert (=> b!1146264 (= e!732691 (rulesProduceEachTokenIndividuallyList!479 Lexer!1602 (rules!9316 pt!21) (t!107997 (list!4049 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689)))))))))

(assert (= (and d!326195 (not res!515566)) b!1146263))

(assert (= (and b!1146263 res!515567) b!1146264))

(assert (=> d!326195 m!1306293))

(declare-fun m!1307457 () Bool)

(assert (=> d!326195 m!1307457))

(assert (=> d!326195 m!1306527))

(declare-fun m!1307459 () Bool)

(assert (=> b!1146263 m!1307459))

(declare-fun m!1307461 () Bool)

(assert (=> b!1146264 m!1307461))

(assert (=> d!325935 d!326195))

(declare-fun d!326197 () Bool)

(declare-fun res!515568 () Bool)

(declare-fun e!732695 () Bool)

(assert (=> d!326197 (=> res!515568 e!732695)))

(assert (=> d!326197 (= res!515568 ((_ is Nil!11051) lt!388099))))

(assert (=> d!326197 (= (forall!2752 lt!388099 lambda!46111) e!732695)))

(declare-fun b!1146268 () Bool)

(declare-fun e!732696 () Bool)

(assert (=> b!1146268 (= e!732695 e!732696)))

(declare-fun res!515569 () Bool)

(assert (=> b!1146268 (=> (not res!515569) (not e!732696))))

(assert (=> b!1146268 (= res!515569 (dynLambda!4888 lambda!46111 (h!16452 lt!388099)))))

(declare-fun b!1146269 () Bool)

(assert (=> b!1146269 (= e!732696 (forall!2752 (t!107997 lt!388099) lambda!46111))))

(assert (= (and d!326197 (not res!515568)) b!1146268))

(assert (= (and b!1146268 res!515569) b!1146269))

(declare-fun b_lambda!34109 () Bool)

(assert (=> (not b_lambda!34109) (not b!1146268)))

(declare-fun m!1307463 () Bool)

(assert (=> b!1146268 m!1307463))

(declare-fun m!1307465 () Bool)

(assert (=> b!1146269 m!1307465))

(assert (=> d!325935 d!326197))

(declare-fun bs!281039 () Bool)

(declare-fun d!326199 () Bool)

(assert (= bs!281039 (and d!326199 d!326121)))

(declare-fun lambda!46138 () Int)

(assert (=> bs!281039 (= (= Lexer!1602 lt!388069) (= lambda!46138 lambda!46126))))

(declare-fun bs!281040 () Bool)

(assert (= bs!281040 (and d!326199 d!325935)))

(assert (=> bs!281040 (= lambda!46138 lambda!46111)))

(declare-fun bs!281041 () Bool)

(assert (= bs!281041 (and d!326199 b!1145847)))

(assert (=> bs!281041 (= lambda!46138 lambda!46117)))

(declare-fun bs!281042 () Bool)

(assert (= bs!281042 (and d!326199 d!326039)))

(assert (=> bs!281042 (= (= Lexer!1602 lt!388077) (= lambda!46138 lambda!46114))))

(declare-fun bs!281043 () Bool)

(assert (= bs!281043 (and d!326199 b!1145950)))

(assert (=> bs!281043 (= lambda!46138 lambda!46123)))

(declare-fun bs!281044 () Bool)

(assert (= bs!281044 (and d!326199 d!326195)))

(assert (=> bs!281044 (= lambda!46138 lambda!46133)))

(declare-fun b!1146344 () Bool)

(declare-fun e!732747 () Bool)

(assert (=> b!1146344 (= e!732747 true)))

(declare-fun b!1146343 () Bool)

(declare-fun e!732746 () Bool)

(assert (=> b!1146343 (= e!732746 e!732747)))

(declare-fun b!1146342 () Bool)

(declare-fun e!732745 () Bool)

(assert (=> b!1146342 (= e!732745 e!732746)))

(assert (=> d!326199 e!732745))

(assert (= b!1146343 b!1146344))

(assert (= b!1146342 b!1146343))

(assert (= (and d!326199 ((_ is Cons!11052) (rules!9316 pt!21))) b!1146342))

(assert (=> b!1146344 (< (dynLambda!4881 order!6751 (toValue!3002 (transformation!1905 (h!16453 (rules!9316 pt!21))))) (dynLambda!4882 order!6753 lambda!46138))))

(assert (=> b!1146344 (< (dynLambda!4883 order!6755 (toChars!2861 (transformation!1905 (h!16453 (rules!9316 pt!21))))) (dynLambda!4882 order!6753 lambda!46138))))

(assert (=> d!326199 true))

(declare-fun e!732744 () Bool)

(assert (=> d!326199 e!732744))

(declare-fun res!515599 () Bool)

(assert (=> d!326199 (=> (not res!515599) (not e!732744))))

(declare-fun lt!388693 () Bool)

(assert (=> d!326199 (= res!515599 (= lt!388693 (forall!2752 (list!4049 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689)))) lambda!46138)))))

(assert (=> d!326199 (= lt!388693 (forall!2755 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689))) lambda!46138))))

(assert (=> d!326199 (not (isEmpty!6858 (rules!9316 pt!21)))))

(assert (=> d!326199 (= (rulesProduceEachTokenIndividually!646 Lexer!1602 (rules!9316 pt!21) (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689)))) lt!388693)))

(declare-fun b!1146341 () Bool)

(assert (=> b!1146341 (= e!732744 (= lt!388693 (rulesProduceEachTokenIndividuallyList!479 Lexer!1602 (rules!9316 pt!21) (list!4049 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689)))))))))

(assert (= (and d!326199 res!515599) b!1146341))

(assert (=> d!326199 m!1306267))

(assert (=> d!326199 m!1306293))

(assert (=> d!326199 m!1306293))

(declare-fun m!1307607 () Bool)

(assert (=> d!326199 m!1307607))

(assert (=> d!326199 m!1306267))

(declare-fun m!1307609 () Bool)

(assert (=> d!326199 m!1307609))

(assert (=> d!326199 m!1306527))

(assert (=> b!1146341 m!1306267))

(assert (=> b!1146341 m!1306293))

(assert (=> b!1146341 m!1306293))

(assert (=> b!1146341 m!1306325))

(assert (=> d!325935 d!326199))

(declare-fun d!326243 () Bool)

(assert (=> d!326243 (subseq!181 (slice!115 lt!388124 (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689))) lt!388124)))

(declare-fun lt!388697 () Unit!16973)

(declare-fun choose!7354 (List!11075 Int Int) Unit!16973)

(assert (=> d!326243 (= lt!388697 (choose!7354 lt!388124 (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689))))))

(declare-fun e!732758 () Bool)

(assert (=> d!326243 e!732758))

(declare-fun res!515609 () Bool)

(assert (=> d!326243 (=> (not res!515609) (not e!732758))))

(assert (=> d!326243 (= res!515609 (and (>= (ite c!192324 lt!387689 lt!387688) 0) (>= (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689)) (ite c!192324 lt!387689 lt!387688))))))

(assert (=> d!326243 (= (lemmaSliceSubseq!22 lt!388124 (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689))) lt!388697)))

(declare-fun b!1146362 () Bool)

(assert (=> b!1146362 (= e!732758 (<= (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689)) (size!8680 lt!388124)))))

(assert (= (and d!326243 res!515609) b!1146362))

(assert (=> d!326243 m!1306277))

(assert (=> d!326243 m!1306277))

(assert (=> d!326243 m!1306279))

(declare-fun m!1307627 () Bool)

(assert (=> d!326243 m!1307627))

(declare-fun m!1307629 () Bool)

(assert (=> b!1146362 m!1307629))

(assert (=> d!325935 d!326243))

(declare-fun bs!281047 () Bool)

(declare-fun d!326253 () Bool)

(assert (= bs!281047 (and d!326253 d!326121)))

(declare-fun lambda!46139 () Int)

(assert (=> bs!281047 (= (= Lexer!1602 lt!388069) (= lambda!46139 lambda!46126))))

(declare-fun bs!281048 () Bool)

(assert (= bs!281048 (and d!326253 d!325935)))

(assert (=> bs!281048 (= lambda!46139 lambda!46111)))

(declare-fun bs!281049 () Bool)

(assert (= bs!281049 (and d!326253 d!326039)))

(assert (=> bs!281049 (= (= Lexer!1602 lt!388077) (= lambda!46139 lambda!46114))))

(declare-fun bs!281050 () Bool)

(assert (= bs!281050 (and d!326253 b!1145950)))

(assert (=> bs!281050 (= lambda!46139 lambda!46123)))

(declare-fun bs!281051 () Bool)

(assert (= bs!281051 (and d!326253 d!326195)))

(assert (=> bs!281051 (= lambda!46139 lambda!46133)))

(declare-fun bs!281052 () Bool)

(assert (= bs!281052 (and d!326253 b!1145847)))

(assert (=> bs!281052 (= lambda!46139 lambda!46117)))

(declare-fun bs!281053 () Bool)

(assert (= bs!281053 (and d!326253 d!326199)))

(assert (=> bs!281053 (= lambda!46139 lambda!46138)))

(declare-fun b!1146367 () Bool)

(declare-fun e!732763 () Bool)

(assert (=> b!1146367 (= e!732763 true)))

(declare-fun b!1146366 () Bool)

(declare-fun e!732762 () Bool)

(assert (=> b!1146366 (= e!732762 e!732763)))

(declare-fun b!1146365 () Bool)

(declare-fun e!732761 () Bool)

(assert (=> b!1146365 (= e!732761 e!732762)))

(assert (=> d!326253 e!732761))

(assert (= b!1146366 b!1146367))

(assert (= b!1146365 b!1146366))

(assert (= (and d!326253 ((_ is Cons!11052) (rules!9316 pt!21))) b!1146365))

(assert (=> b!1146367 (< (dynLambda!4881 order!6751 (toValue!3002 (transformation!1905 (h!16453 (rules!9316 pt!21))))) (dynLambda!4882 order!6753 lambda!46139))))

(assert (=> b!1146367 (< (dynLambda!4883 order!6755 (toChars!2861 (transformation!1905 (h!16453 (rules!9316 pt!21))))) (dynLambda!4882 order!6753 lambda!46139))))

(assert (=> d!326253 true))

(declare-fun lt!388698 () Bool)

(assert (=> d!326253 (= lt!388698 (forall!2752 (list!4049 (tokens!1490 pt!21)) lambda!46139))))

(declare-fun e!732759 () Bool)

(assert (=> d!326253 (= lt!388698 e!732759)))

(declare-fun res!515610 () Bool)

(assert (=> d!326253 (=> res!515610 e!732759)))

(assert (=> d!326253 (= res!515610 (not ((_ is Cons!11051) (list!4049 (tokens!1490 pt!21)))))))

(assert (=> d!326253 (not (isEmpty!6858 (rules!9316 pt!21)))))

(assert (=> d!326253 (= (rulesProduceEachTokenIndividuallyList!479 Lexer!1602 (rules!9316 pt!21) (list!4049 (tokens!1490 pt!21))) lt!388698)))

(declare-fun b!1146363 () Bool)

(declare-fun e!732760 () Bool)

(assert (=> b!1146363 (= e!732759 e!732760)))

(declare-fun res!515611 () Bool)

(assert (=> b!1146363 (=> (not res!515611) (not e!732760))))

(assert (=> b!1146363 (= res!515611 (rulesProduceIndividualToken!651 Lexer!1602 (rules!9316 pt!21) (h!16452 (list!4049 (tokens!1490 pt!21)))))))

(declare-fun b!1146364 () Bool)

(assert (=> b!1146364 (= e!732760 (rulesProduceEachTokenIndividuallyList!479 Lexer!1602 (rules!9316 pt!21) (t!107997 (list!4049 (tokens!1490 pt!21)))))))

(assert (= (and d!326253 (not res!515610)) b!1146363))

(assert (= (and b!1146363 res!515611) b!1146364))

(assert (=> d!326253 m!1306281))

(declare-fun m!1307631 () Bool)

(assert (=> d!326253 m!1307631))

(assert (=> d!326253 m!1306527))

(declare-fun m!1307633 () Bool)

(assert (=> b!1146363 m!1307633))

(declare-fun m!1307635 () Bool)

(assert (=> b!1146364 m!1307635))

(assert (=> d!325935 d!326253))

(declare-fun b!1146368 () Bool)

(declare-fun e!732765 () List!11075)

(declare-fun e!732766 () List!11075)

(assert (=> b!1146368 (= e!732765 e!732766)))

(declare-fun c!192516 () Bool)

(assert (=> b!1146368 (= c!192516 (<= (ite c!192324 lt!387689 lt!387688) 0))))

(declare-fun b!1146369 () Bool)

(assert (=> b!1146369 (= e!732765 Nil!11051)))

(declare-fun b!1146370 () Bool)

(assert (=> b!1146370 (= e!732766 (list!4049 (tokens!1490 pt!21)))))

(declare-fun b!1146371 () Bool)

(declare-fun e!732768 () Bool)

(declare-fun lt!388699 () List!11075)

(declare-fun e!732767 () Int)

(assert (=> b!1146371 (= e!732768 (= (size!8680 lt!388699) e!732767))))

(declare-fun c!192514 () Bool)

(assert (=> b!1146371 (= c!192514 (<= (ite c!192324 lt!387689 lt!387688) 0))))

(declare-fun b!1146372 () Bool)

(declare-fun e!732764 () Int)

(assert (=> b!1146372 (= e!732764 0)))

(declare-fun bm!81663 () Bool)

(declare-fun call!81668 () Int)

(assert (=> bm!81663 (= call!81668 (size!8680 (list!4049 (tokens!1490 pt!21))))))

(declare-fun b!1146373 () Bool)

(assert (=> b!1146373 (= e!732766 (drop!430 (t!107997 (list!4049 (tokens!1490 pt!21))) (- (ite c!192324 lt!387689 lt!387688) 1)))))

(declare-fun b!1146374 () Bool)

(assert (=> b!1146374 (= e!732767 call!81668)))

(declare-fun d!326255 () Bool)

(assert (=> d!326255 e!732768))

(declare-fun res!515612 () Bool)

(assert (=> d!326255 (=> (not res!515612) (not e!732768))))

(assert (=> d!326255 (= res!515612 (= ((_ map implies) (content!1591 lt!388699) (content!1591 (list!4049 (tokens!1490 pt!21)))) ((as const (InoxSet Token!3472)) true)))))

(assert (=> d!326255 (= lt!388699 e!732765)))

(declare-fun c!192515 () Bool)

(assert (=> d!326255 (= c!192515 ((_ is Nil!11051) (list!4049 (tokens!1490 pt!21))))))

(assert (=> d!326255 (= (drop!430 (list!4049 (tokens!1490 pt!21)) (ite c!192324 lt!387689 lt!387688)) lt!388699)))

(declare-fun b!1146375 () Bool)

(assert (=> b!1146375 (= e!732767 e!732764)))

(declare-fun c!192517 () Bool)

(assert (=> b!1146375 (= c!192517 (>= (ite c!192324 lt!387689 lt!387688) call!81668))))

(declare-fun b!1146376 () Bool)

(assert (=> b!1146376 (= e!732764 (- call!81668 (ite c!192324 lt!387689 lt!387688)))))

(assert (= (and d!326255 c!192515) b!1146369))

(assert (= (and d!326255 (not c!192515)) b!1146368))

(assert (= (and b!1146368 c!192516) b!1146370))

(assert (= (and b!1146368 (not c!192516)) b!1146373))

(assert (= (and d!326255 res!515612) b!1146371))

(assert (= (and b!1146371 c!192514) b!1146374))

(assert (= (and b!1146371 (not c!192514)) b!1146375))

(assert (= (and b!1146375 c!192517) b!1146372))

(assert (= (and b!1146375 (not c!192517)) b!1146376))

(assert (= (or b!1146374 b!1146375 b!1146376) bm!81663))

(declare-fun m!1307637 () Bool)

(assert (=> b!1146371 m!1307637))

(assert (=> bm!81663 m!1306281))

(declare-fun m!1307639 () Bool)

(assert (=> bm!81663 m!1307639))

(declare-fun m!1307641 () Bool)

(assert (=> b!1146373 m!1307641))

(declare-fun m!1307643 () Bool)

(assert (=> d!326255 m!1307643))

(assert (=> d!326255 m!1306281))

(declare-fun m!1307645 () Bool)

(assert (=> d!326255 m!1307645))

(assert (=> d!325935 d!326255))

(declare-fun d!326257 () Bool)

(declare-fun lt!388703 () Int)

(assert (=> d!326257 (= lt!388703 (size!8680 (list!4049 (tokens!1490 pt!21))))))

(declare-fun size!8681 (Conc!3555) Int)

(assert (=> d!326257 (= lt!388703 (size!8681 (c!192327 (tokens!1490 pt!21))))))

(assert (=> d!326257 (= (size!8670 (tokens!1490 pt!21)) lt!388703)))

(declare-fun bs!281054 () Bool)

(assert (= bs!281054 d!326257))

(assert (=> bs!281054 m!1306281))

(assert (=> bs!281054 m!1306281))

(assert (=> bs!281054 m!1307639))

(declare-fun m!1307653 () Bool)

(assert (=> bs!281054 m!1307653))

(assert (=> d!325935 d!326257))

(declare-fun d!326261 () Bool)

(assert (=> d!326261 (forall!2752 lt!388099 lambda!46111)))

(declare-fun lt!388704 () Unit!16973)

(assert (=> d!326261 (= lt!388704 (choose!7353 lt!388099 lt!388075 lambda!46111))))

(assert (=> d!326261 (forall!2752 lt!388075 lambda!46111)))

(assert (=> d!326261 (= (lemmaForallSubseq!81 lt!388099 lt!388075 lambda!46111) lt!388704)))

(declare-fun bs!281055 () Bool)

(assert (= bs!281055 d!326261))

(assert (=> bs!281055 m!1306289))

(declare-fun m!1307659 () Bool)

(assert (=> bs!281055 m!1307659))

(declare-fun m!1307665 () Bool)

(assert (=> bs!281055 m!1307665))

(assert (=> d!325935 d!326261))

(declare-fun e!732779 () Bool)

(declare-fun b!1146398 () Bool)

(assert (=> b!1146398 (= e!732779 (subseq!181 (drop!430 lt!388107 (ite c!192324 lt!387689 lt!387688)) (t!107997 lt!388107)))))

(declare-fun b!1146396 () Bool)

(declare-fun e!732778 () Bool)

(assert (=> b!1146396 (= e!732778 e!732779)))

(declare-fun res!515626 () Bool)

(assert (=> b!1146396 (=> res!515626 e!732779)))

(declare-fun e!732780 () Bool)

(assert (=> b!1146396 (= res!515626 e!732780)))

(declare-fun res!515624 () Bool)

(assert (=> b!1146396 (=> (not res!515624) (not e!732780))))

(assert (=> b!1146396 (= res!515624 (= (h!16452 (drop!430 lt!388107 (ite c!192324 lt!387689 lt!387688))) (h!16452 lt!388107)))))

(declare-fun b!1146397 () Bool)

(assert (=> b!1146397 (= e!732780 (subseq!181 (t!107997 (drop!430 lt!388107 (ite c!192324 lt!387689 lt!387688))) (t!107997 lt!388107)))))

(declare-fun b!1146395 () Bool)

(declare-fun e!732777 () Bool)

(assert (=> b!1146395 (= e!732777 e!732778)))

(declare-fun res!515623 () Bool)

(assert (=> b!1146395 (=> (not res!515623) (not e!732778))))

(assert (=> b!1146395 (= res!515623 ((_ is Cons!11051) lt!388107))))

(declare-fun d!326263 () Bool)

(declare-fun res!515625 () Bool)

(assert (=> d!326263 (=> res!515625 e!732777)))

(assert (=> d!326263 (= res!515625 ((_ is Nil!11051) (drop!430 lt!388107 (ite c!192324 lt!387689 lt!387688))))))

(assert (=> d!326263 (= (subseq!181 (drop!430 lt!388107 (ite c!192324 lt!387689 lt!387688)) lt!388107) e!732777)))

(assert (= (and d!326263 (not res!515625)) b!1146395))

(assert (= (and b!1146395 res!515623) b!1146396))

(assert (= (and b!1146396 res!515624) b!1146397))

(assert (= (and b!1146396 (not res!515626)) b!1146398))

(assert (=> b!1146398 m!1306285))

(declare-fun m!1307669 () Bool)

(assert (=> b!1146398 m!1307669))

(declare-fun m!1307671 () Bool)

(assert (=> b!1146397 m!1307671))

(assert (=> d!325935 d!326263))

(declare-fun b!1146399 () Bool)

(declare-fun e!732782 () List!11075)

(declare-fun e!732783 () List!11075)

(assert (=> b!1146399 (= e!732782 e!732783)))

(declare-fun c!192524 () Bool)

(assert (=> b!1146399 (= c!192524 (<= (ite c!192324 lt!387689 lt!387688) 0))))

(declare-fun b!1146400 () Bool)

(assert (=> b!1146400 (= e!732782 Nil!11051)))

(declare-fun b!1146401 () Bool)

(assert (=> b!1146401 (= e!732783 lt!388107)))

(declare-fun b!1146402 () Bool)

(declare-fun e!732785 () Bool)

(declare-fun lt!388705 () List!11075)

(declare-fun e!732784 () Int)

(assert (=> b!1146402 (= e!732785 (= (size!8680 lt!388705) e!732784))))

(declare-fun c!192522 () Bool)

(assert (=> b!1146402 (= c!192522 (<= (ite c!192324 lt!387689 lt!387688) 0))))

(declare-fun b!1146403 () Bool)

(declare-fun e!732781 () Int)

(assert (=> b!1146403 (= e!732781 0)))

(declare-fun bm!81665 () Bool)

(declare-fun call!81670 () Int)

(assert (=> bm!81665 (= call!81670 (size!8680 lt!388107))))

(declare-fun b!1146404 () Bool)

(assert (=> b!1146404 (= e!732783 (drop!430 (t!107997 lt!388107) (- (ite c!192324 lt!387689 lt!387688) 1)))))

(declare-fun b!1146405 () Bool)

(assert (=> b!1146405 (= e!732784 call!81670)))

(declare-fun d!326267 () Bool)

(assert (=> d!326267 e!732785))

(declare-fun res!515627 () Bool)

(assert (=> d!326267 (=> (not res!515627) (not e!732785))))

(assert (=> d!326267 (= res!515627 (= ((_ map implies) (content!1591 lt!388705) (content!1591 lt!388107)) ((as const (InoxSet Token!3472)) true)))))

(assert (=> d!326267 (= lt!388705 e!732782)))

(declare-fun c!192523 () Bool)

(assert (=> d!326267 (= c!192523 ((_ is Nil!11051) lt!388107))))

(assert (=> d!326267 (= (drop!430 lt!388107 (ite c!192324 lt!387689 lt!387688)) lt!388705)))

(declare-fun b!1146406 () Bool)

(assert (=> b!1146406 (= e!732784 e!732781)))

(declare-fun c!192525 () Bool)

(assert (=> b!1146406 (= c!192525 (>= (ite c!192324 lt!387689 lt!387688) call!81670))))

(declare-fun b!1146407 () Bool)

(assert (=> b!1146407 (= e!732781 (- call!81670 (ite c!192324 lt!387689 lt!387688)))))

(assert (= (and d!326267 c!192523) b!1146400))

(assert (= (and d!326267 (not c!192523)) b!1146399))

(assert (= (and b!1146399 c!192524) b!1146401))

(assert (= (and b!1146399 (not c!192524)) b!1146404))

(assert (= (and d!326267 res!515627) b!1146402))

(assert (= (and b!1146402 c!192522) b!1146405))

(assert (= (and b!1146402 (not c!192522)) b!1146406))

(assert (= (and b!1146406 c!192525) b!1146403))

(assert (= (and b!1146406 (not c!192525)) b!1146407))

(assert (= (or b!1146405 b!1146406 b!1146407) bm!81665))

(declare-fun m!1307673 () Bool)

(assert (=> b!1146402 m!1307673))

(declare-fun m!1307675 () Bool)

(assert (=> bm!81665 m!1307675))

(declare-fun m!1307677 () Bool)

(assert (=> b!1146404 m!1307677))

(declare-fun m!1307679 () Bool)

(assert (=> d!326267 m!1307679))

(declare-fun m!1307681 () Bool)

(assert (=> d!326267 m!1307681))

(assert (=> d!325935 d!326267))

(declare-fun lt!388706 () Bool)

(declare-fun d!326269 () Bool)

(assert (=> d!326269 (= lt!388706 (forall!2752 (list!4049 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689)))) lambda!46111))))

(assert (=> d!326269 (= lt!388706 (forall!2761 (c!192327 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689)))) lambda!46111))))

(assert (=> d!326269 (= (forall!2755 (slice!114 (tokens!1490 pt!21) (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689))) lambda!46111) lt!388706)))

(declare-fun bs!281056 () Bool)

(assert (= bs!281056 d!326269))

(assert (=> bs!281056 m!1306267))

(assert (=> bs!281056 m!1306293))

(assert (=> bs!281056 m!1306293))

(declare-fun m!1307683 () Bool)

(assert (=> bs!281056 m!1307683))

(declare-fun m!1307685 () Bool)

(assert (=> bs!281056 m!1307685))

(assert (=> d!325935 d!326269))

(declare-fun bs!281057 () Bool)

(declare-fun d!326271 () Bool)

(assert (= bs!281057 (and d!326271 d!326121)))

(declare-fun lambda!46140 () Int)

(assert (=> bs!281057 (= (= Lexer!1602 lt!388069) (= lambda!46140 lambda!46126))))

(declare-fun bs!281058 () Bool)

(assert (= bs!281058 (and d!326271 d!326253)))

(assert (=> bs!281058 (= lambda!46140 lambda!46139)))

(declare-fun bs!281059 () Bool)

(assert (= bs!281059 (and d!326271 d!325935)))

(assert (=> bs!281059 (= lambda!46140 lambda!46111)))

(declare-fun bs!281060 () Bool)

(assert (= bs!281060 (and d!326271 d!326039)))

(assert (=> bs!281060 (= (= Lexer!1602 lt!388077) (= lambda!46140 lambda!46114))))

(declare-fun bs!281061 () Bool)

(assert (= bs!281061 (and d!326271 b!1145950)))

(assert (=> bs!281061 (= lambda!46140 lambda!46123)))

(declare-fun bs!281062 () Bool)

(assert (= bs!281062 (and d!326271 d!326195)))

(assert (=> bs!281062 (= lambda!46140 lambda!46133)))

(declare-fun bs!281063 () Bool)

(assert (= bs!281063 (and d!326271 b!1145847)))

(assert (=> bs!281063 (= lambda!46140 lambda!46117)))

(declare-fun bs!281065 () Bool)

(assert (= bs!281065 (and d!326271 d!326199)))

(assert (=> bs!281065 (= lambda!46140 lambda!46138)))

(declare-fun b!1146411 () Bool)

(declare-fun e!732789 () Bool)

(assert (=> b!1146411 (= e!732789 true)))

(declare-fun b!1146410 () Bool)

(declare-fun e!732788 () Bool)

(assert (=> b!1146410 (= e!732788 e!732789)))

(declare-fun b!1146409 () Bool)

(declare-fun e!732787 () Bool)

(assert (=> b!1146409 (= e!732787 e!732788)))

(assert (=> d!326271 e!732787))

(assert (= b!1146410 b!1146411))

(assert (= b!1146409 b!1146410))

(assert (= (and d!326271 ((_ is Cons!11052) (rules!9316 pt!21))) b!1146409))

(assert (=> b!1146411 (< (dynLambda!4881 order!6751 (toValue!3002 (transformation!1905 (h!16453 (rules!9316 pt!21))))) (dynLambda!4882 order!6753 lambda!46140))))

(assert (=> b!1146411 (< (dynLambda!4883 order!6755 (toChars!2861 (transformation!1905 (h!16453 (rules!9316 pt!21))))) (dynLambda!4882 order!6753 lambda!46140))))

(assert (=> d!326271 true))

(declare-fun e!732786 () Bool)

(assert (=> d!326271 e!732786))

(declare-fun res!515628 () Bool)

(assert (=> d!326271 (=> (not res!515628) (not e!732786))))

(declare-fun lt!388707 () Bool)

(assert (=> d!326271 (= res!515628 (= lt!388707 (forall!2752 (list!4049 (tokens!1490 pt!21)) lambda!46140)))))

(assert (=> d!326271 (= lt!388707 (forall!2755 (tokens!1490 pt!21) lambda!46140))))

(assert (=> d!326271 (not (isEmpty!6858 (rules!9316 pt!21)))))

(assert (=> d!326271 (= (rulesProduceEachTokenIndividually!646 Lexer!1602 (rules!9316 pt!21) (tokens!1490 pt!21)) lt!388707)))

(declare-fun b!1146408 () Bool)

(assert (=> b!1146408 (= e!732786 (= lt!388707 (rulesProduceEachTokenIndividuallyList!479 Lexer!1602 (rules!9316 pt!21) (list!4049 (tokens!1490 pt!21)))))))

(assert (= (and d!326271 res!515628) b!1146408))

(assert (=> d!326271 m!1306281))

(assert (=> d!326271 m!1306281))

(declare-fun m!1307695 () Bool)

(assert (=> d!326271 m!1307695))

(declare-fun m!1307697 () Bool)

(assert (=> d!326271 m!1307697))

(assert (=> d!326271 m!1306527))

(assert (=> b!1146408 m!1306281))

(assert (=> b!1146408 m!1306281))

(assert (=> b!1146408 m!1306301))

(assert (=> d!325935 d!326271))

(declare-fun bs!281067 () Bool)

(declare-fun d!326277 () Bool)

(assert (= bs!281067 (and d!326277 d!326121)))

(declare-fun lambda!46141 () Int)

(assert (=> bs!281067 (= (= lt!388077 lt!388069) (= lambda!46141 lambda!46126))))

(declare-fun bs!281068 () Bool)

(assert (= bs!281068 (and d!326277 d!326253)))

(assert (=> bs!281068 (= (= lt!388077 Lexer!1602) (= lambda!46141 lambda!46139))))

(declare-fun bs!281069 () Bool)

(assert (= bs!281069 (and d!326277 d!325935)))

(assert (=> bs!281069 (= (= lt!388077 Lexer!1602) (= lambda!46141 lambda!46111))))

(declare-fun bs!281070 () Bool)

(assert (= bs!281070 (and d!326277 d!326271)))

(assert (=> bs!281070 (= (= lt!388077 Lexer!1602) (= lambda!46141 lambda!46140))))

(declare-fun bs!281071 () Bool)

(assert (= bs!281071 (and d!326277 d!326039)))

(assert (=> bs!281071 (= lambda!46141 lambda!46114)))

(declare-fun bs!281072 () Bool)

(assert (= bs!281072 (and d!326277 b!1145950)))

(assert (=> bs!281072 (= (= lt!388077 Lexer!1602) (= lambda!46141 lambda!46123))))

(declare-fun bs!281074 () Bool)

(assert (= bs!281074 (and d!326277 d!326195)))

(assert (=> bs!281074 (= (= lt!388077 Lexer!1602) (= lambda!46141 lambda!46133))))

(declare-fun bs!281075 () Bool)

(assert (= bs!281075 (and d!326277 b!1145847)))

(assert (=> bs!281075 (= (= lt!388077 Lexer!1602) (= lambda!46141 lambda!46117))))

(declare-fun bs!281077 () Bool)

(assert (= bs!281077 (and d!326277 d!326199)))

(assert (=> bs!281077 (= (= lt!388077 Lexer!1602) (= lambda!46141 lambda!46138))))

(declare-fun b!1146418 () Bool)

(declare-fun e!732796 () Bool)

(assert (=> b!1146418 (= e!732796 true)))

(declare-fun b!1146417 () Bool)

(declare-fun e!732795 () Bool)

(assert (=> b!1146417 (= e!732795 e!732796)))

(declare-fun b!1146416 () Bool)

(declare-fun e!732794 () Bool)

(assert (=> b!1146416 (= e!732794 e!732795)))

(assert (=> d!326277 e!732794))

(assert (= b!1146417 b!1146418))

(assert (= b!1146416 b!1146417))

(assert (= (and d!326277 ((_ is Cons!11052) (rules!9316 pt!21))) b!1146416))

(assert (=> b!1146418 (< (dynLambda!4881 order!6751 (toValue!3002 (transformation!1905 (h!16453 (rules!9316 pt!21))))) (dynLambda!4882 order!6753 lambda!46141))))

(assert (=> b!1146418 (< (dynLambda!4883 order!6755 (toChars!2861 (transformation!1905 (h!16453 (rules!9316 pt!21))))) (dynLambda!4882 order!6753 lambda!46141))))

(assert (=> d!326277 true))

(declare-fun lt!388712 () Bool)

(assert (=> d!326277 (= lt!388712 (forall!2752 (drop!430 lt!388114 (ite c!192324 lt!387689 lt!387688)) lambda!46141))))

(declare-fun e!732792 () Bool)

(assert (=> d!326277 (= lt!388712 e!732792)))

(declare-fun res!515631 () Bool)

(assert (=> d!326277 (=> res!515631 e!732792)))

(assert (=> d!326277 (= res!515631 (not ((_ is Cons!11051) (drop!430 lt!388114 (ite c!192324 lt!387689 lt!387688)))))))

(assert (=> d!326277 (not (isEmpty!6858 (rules!9316 pt!21)))))

(assert (=> d!326277 (= (rulesProduceEachTokenIndividuallyList!479 lt!388077 (rules!9316 pt!21) (drop!430 lt!388114 (ite c!192324 lt!387689 lt!387688))) lt!388712)))

(declare-fun b!1146414 () Bool)

(declare-fun e!732793 () Bool)

(assert (=> b!1146414 (= e!732792 e!732793)))

(declare-fun res!515632 () Bool)

(assert (=> b!1146414 (=> (not res!515632) (not e!732793))))

(assert (=> b!1146414 (= res!515632 (rulesProduceIndividualToken!651 lt!388077 (rules!9316 pt!21) (h!16452 (drop!430 lt!388114 (ite c!192324 lt!387689 lt!387688)))))))

(declare-fun b!1146415 () Bool)

(assert (=> b!1146415 (= e!732793 (rulesProduceEachTokenIndividuallyList!479 lt!388077 (rules!9316 pt!21) (t!107997 (drop!430 lt!388114 (ite c!192324 lt!387689 lt!387688)))))))

(assert (= (and d!326277 (not res!515631)) b!1146414))

(assert (= (and b!1146414 res!515632) b!1146415))

(assert (=> d!326277 m!1306319))

(declare-fun m!1307703 () Bool)

(assert (=> d!326277 m!1307703))

(assert (=> d!326277 m!1306527))

(declare-fun m!1307705 () Bool)

(assert (=> b!1146414 m!1307705))

(declare-fun m!1307707 () Bool)

(assert (=> b!1146415 m!1307707))

(assert (=> d!325935 d!326277))

(declare-fun d!326281 () Bool)

(assert (=> d!326281 (= (slice!115 lt!388124 (ite c!192324 lt!387689 lt!387688) (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689))) (take!28 (drop!430 lt!388124 (ite c!192324 lt!387689 lt!387688)) (- (ite c!192324 (+ 1 lt!387688) (+ 1 lt!387689)) (ite c!192324 lt!387689 lt!387688))))))

(declare-fun bs!281084 () Bool)

(assert (= bs!281084 d!326281))

(declare-fun m!1307723 () Bool)

(assert (=> bs!281084 m!1307723))

(assert (=> bs!281084 m!1307723))

(declare-fun m!1307727 () Bool)

(assert (=> bs!281084 m!1307727))

(assert (=> d!325935 d!326281))

(declare-fun d!326291 () Bool)

(assert (=> d!326291 (= (list!4049 (tokens!1490 pt!21)) (list!4055 (c!192327 (tokens!1490 pt!21))))))

(declare-fun bs!281085 () Bool)

(assert (= bs!281085 d!326291))

(declare-fun m!1307729 () Bool)

(assert (=> bs!281085 m!1307729))

(assert (=> d!325935 d!326291))

(declare-fun b!1146433 () Bool)

(declare-fun e!732815 () Bool)

(declare-fun lt!388749 () List!11075)

(assert (=> b!1146433 (= e!732815 (<= 0 (size!8680 lt!388749)))))

(declare-fun d!326293 () Bool)

(declare-fun lt!388748 () Bool)

(assert (=> d!326293 (= lt!388748 (tokensListTwoByTwoPredicateSeparableList!78 Lexer!1602 (dropList!301 (tokens!1490 pt!21) 0) (rules!9316 pt!21)))))

(declare-fun lt!388743 () Unit!16973)

(declare-fun lt!388736 () Unit!16973)

(assert (=> d!326293 (= lt!388743 lt!388736)))

(declare-fun lt!388729 () List!11075)

(assert (=> d!326293 (rulesProduceEachTokenIndividuallyList!479 Lexer!1602 (rules!9316 pt!21) lt!388729)))

(declare-fun lt!388722 () List!11075)

(assert (=> d!326293 (= lt!388736 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!13 Lexer!1602 (rules!9316 pt!21) lt!388722 lt!388729))))

(declare-fun e!732814 () Bool)

(assert (=> d!326293 e!732814))

(declare-fun res!515645 () Bool)

(assert (=> d!326293 (=> (not res!515645) (not e!732814))))

(assert (=> d!326293 (= res!515645 ((_ is Lexer!1602) Lexer!1602))))

(assert (=> d!326293 (= lt!388729 (dropList!301 (tokens!1490 pt!21) 0))))

(assert (=> d!326293 (= lt!388722 (list!4049 (tokens!1490 pt!21)))))

(declare-fun lt!388747 () Unit!16973)

(declare-fun lt!388725 () Unit!16973)

(assert (=> d!326293 (= lt!388747 lt!388725)))

(assert (=> d!326293 (subseq!181 (drop!430 lt!388749 0) lt!388749)))

(assert (=> d!326293 (= lt!388725 (lemmaDropSubSeq!13 lt!388749 0))))

(assert (=> d!326293 e!732815))

(declare-fun res!515643 () Bool)

(assert (=> d!326293 (=> (not res!515643) (not e!732815))))

(assert (=> d!326293 (= res!515643 (>= 0 0))))

(assert (=> d!326293 (= lt!388749 (list!4049 (tokens!1490 pt!21)))))

(declare-fun e!732809 () Bool)

(assert (=> d!326293 (= lt!388748 e!732809)))

(declare-fun res!515644 () Bool)

(assert (=> d!326293 (=> res!515644 e!732809)))

(assert (=> d!326293 (= res!515644 (not (< 0 (- (size!8670 (tokens!1490 pt!21)) 1))))))

(declare-fun e!732812 () Bool)

(assert (=> d!326293 e!732812))

(declare-fun res!515641 () Bool)

(assert (=> d!326293 (=> (not res!515641) (not e!732812))))

(assert (=> d!326293 (= res!515641 (>= 0 0))))

(assert (=> d!326293 (= (tokensListTwoByTwoPredicateSeparable!33 Lexer!1602 (tokens!1490 pt!21) 0 (rules!9316 pt!21)) lt!388748)))

(declare-fun b!1146434 () Bool)

(declare-fun res!515647 () Bool)

(assert (=> b!1146434 (=> (not res!515647) (not e!732814))))

(assert (=> b!1146434 (= res!515647 (rulesInvariant!1478 Lexer!1602 (rules!9316 pt!21)))))

(declare-fun b!1146435 () Bool)

(assert (=> b!1146435 (= e!732814 (rulesProduceEachTokenIndividuallyList!479 Lexer!1602 (rules!9316 pt!21) lt!388722))))

(declare-fun b!1146436 () Bool)

(assert (=> b!1146436 (= e!732812 (<= 0 (size!8670 (tokens!1490 pt!21))))))

(declare-fun b!1146437 () Bool)

(declare-fun e!732813 () Bool)

(assert (=> b!1146437 (= e!732809 e!732813)))

(declare-fun res!515648 () Bool)

(assert (=> b!1146437 (=> (not res!515648) (not e!732813))))

(assert (=> b!1146437 (= res!515648 (separableTokensPredicate!102 Lexer!1602 (apply!2353 (tokens!1490 pt!21) 0) (apply!2353 (tokens!1490 pt!21) (+ 0 1)) (rules!9316 pt!21)))))

(declare-fun lt!388724 () Unit!16973)

(declare-fun Unit!17003 () Unit!16973)

(assert (=> b!1146437 (= lt!388724 Unit!17003)))

(assert (=> b!1146437 (> (size!8673 (charsOf!1040 (apply!2353 (tokens!1490 pt!21) (+ 0 1)))) 0)))

(declare-fun lt!388721 () Unit!16973)

(declare-fun Unit!17004 () Unit!16973)

(assert (=> b!1146437 (= lt!388721 Unit!17004)))

(assert (=> b!1146437 (rulesProduceIndividualToken!651 Lexer!1602 (rules!9316 pt!21) (apply!2353 (tokens!1490 pt!21) (+ 0 1)))))

(declare-fun lt!388735 () Unit!16973)

(declare-fun Unit!17005 () Unit!16973)

(assert (=> b!1146437 (= lt!388735 Unit!17005)))

(assert (=> b!1146437 (rulesProduceIndividualToken!651 Lexer!1602 (rules!9316 pt!21) (apply!2353 (tokens!1490 pt!21) 0))))

(declare-fun lt!388730 () Unit!16973)

(declare-fun lt!388744 () Unit!16973)

(assert (=> b!1146437 (= lt!388730 lt!388744)))

(declare-fun lt!388745 () Token!3472)

(assert (=> b!1146437 (rulesProduceIndividualToken!651 Lexer!1602 (rules!9316 pt!21) lt!388745)))

(declare-fun lt!388740 () List!11075)

(assert (=> b!1146437 (= lt!388744 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!261 Lexer!1602 (rules!9316 pt!21) lt!388740 lt!388745))))

(assert (=> b!1146437 (= lt!388745 (apply!2353 (tokens!1490 pt!21) (+ 0 1)))))

(assert (=> b!1146437 (= lt!388740 (list!4049 (tokens!1490 pt!21)))))

(declare-fun lt!388732 () Unit!16973)

(declare-fun lt!388742 () Unit!16973)

(assert (=> b!1146437 (= lt!388732 lt!388742)))

(declare-fun lt!388717 () Token!3472)

(assert (=> b!1146437 (rulesProduceIndividualToken!651 Lexer!1602 (rules!9316 pt!21) lt!388717)))

(declare-fun lt!388723 () List!11075)

(assert (=> b!1146437 (= lt!388742 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!261 Lexer!1602 (rules!9316 pt!21) lt!388723 lt!388717))))

(assert (=> b!1146437 (= lt!388717 (apply!2353 (tokens!1490 pt!21) 0))))

(assert (=> b!1146437 (= lt!388723 (list!4049 (tokens!1490 pt!21)))))

(declare-fun lt!388746 () Unit!16973)

(declare-fun lt!388733 () Unit!16973)

(assert (=> b!1146437 (= lt!388746 lt!388733)))

(declare-fun lt!388726 () List!11075)

(declare-fun lt!388737 () Int)

(assert (=> b!1146437 (= (tail!1644 (drop!430 lt!388726 lt!388737)) (drop!430 lt!388726 (+ lt!388737 1)))))

(assert (=> b!1146437 (= lt!388733 (lemmaDropTail!331 lt!388726 lt!388737))))

(assert (=> b!1146437 (= lt!388737 (+ 0 1))))

(assert (=> b!1146437 (= lt!388726 (list!4049 (tokens!1490 pt!21)))))

(declare-fun lt!388741 () Unit!16973)

(declare-fun lt!388734 () Unit!16973)

(assert (=> b!1146437 (= lt!388741 lt!388734)))

(declare-fun lt!388720 () List!11075)

(assert (=> b!1146437 (= (tail!1644 (drop!430 lt!388720 0)) (drop!430 lt!388720 (+ 0 1)))))

(assert (=> b!1146437 (= lt!388734 (lemmaDropTail!331 lt!388720 0))))

(assert (=> b!1146437 (= lt!388720 (list!4049 (tokens!1490 pt!21)))))

(declare-fun lt!388727 () Unit!16973)

(declare-fun lt!388728 () Unit!16973)

(assert (=> b!1146437 (= lt!388727 lt!388728)))

(declare-fun lt!388718 () List!11075)

(declare-fun lt!388731 () Int)

(assert (=> b!1146437 (= (head!2070 (drop!430 lt!388718 lt!388731)) (apply!2354 lt!388718 lt!388731))))

(assert (=> b!1146437 (= lt!388728 (lemmaDropApply!343 lt!388718 lt!388731))))

(assert (=> b!1146437 (= lt!388731 (+ 0 1))))

(assert (=> b!1146437 (= lt!388718 (list!4049 (tokens!1490 pt!21)))))

(declare-fun lt!388739 () Unit!16973)

(declare-fun lt!388719 () Unit!16973)

(assert (=> b!1146437 (= lt!388739 lt!388719)))

(declare-fun lt!388738 () List!11075)

(assert (=> b!1146437 (= (head!2070 (drop!430 lt!388738 0)) (apply!2354 lt!388738 0))))

(assert (=> b!1146437 (= lt!388719 (lemmaDropApply!343 lt!388738 0))))

(assert (=> b!1146437 (= lt!388738 (list!4049 (tokens!1490 pt!21)))))

(declare-fun b!1146438 () Bool)

(declare-fun res!515646 () Bool)

(assert (=> b!1146438 (=> (not res!515646) (not e!732814))))

(assert (=> b!1146438 (= res!515646 (subseq!181 lt!388729 lt!388722))))

(declare-fun b!1146439 () Bool)

(declare-fun res!515642 () Bool)

(assert (=> b!1146439 (=> (not res!515642) (not e!732814))))

(assert (=> b!1146439 (= res!515642 (not (isEmpty!6858 (rules!9316 pt!21))))))

(declare-fun b!1146440 () Bool)

(assert (=> b!1146440 (= e!732813 (tokensListTwoByTwoPredicateSeparable!33 Lexer!1602 (tokens!1490 pt!21) (+ 0 1) (rules!9316 pt!21)))))

(assert (= (and d!326293 res!515641) b!1146436))

(assert (= (and d!326293 (not res!515644)) b!1146437))

(assert (= (and b!1146437 res!515648) b!1146440))

(assert (= (and d!326293 res!515643) b!1146433))

(assert (= (and d!326293 res!515645) b!1146439))

(assert (= (and b!1146439 res!515642) b!1146434))

(assert (= (and b!1146434 res!515647) b!1146438))

(assert (= (and b!1146438 res!515646) b!1146435))

(assert (=> b!1146434 m!1306529))

(declare-fun m!1307735 () Bool)

(assert (=> b!1146437 m!1307735))

(declare-fun m!1307737 () Bool)

(assert (=> b!1146437 m!1307737))

(declare-fun m!1307739 () Bool)

(assert (=> b!1146437 m!1307739))

(declare-fun m!1307741 () Bool)

(assert (=> b!1146437 m!1307741))

(declare-fun m!1307743 () Bool)

(assert (=> b!1146437 m!1307743))

(assert (=> b!1146437 m!1307743))

(declare-fun m!1307745 () Bool)

(assert (=> b!1146437 m!1307745))

(declare-fun m!1307747 () Bool)

(assert (=> b!1146437 m!1307747))

(declare-fun m!1307749 () Bool)

(assert (=> b!1146437 m!1307749))

(declare-fun m!1307751 () Bool)

(assert (=> b!1146437 m!1307751))

(declare-fun m!1307753 () Bool)

(assert (=> b!1146437 m!1307753))

(declare-fun m!1307755 () Bool)

(assert (=> b!1146437 m!1307755))

(declare-fun m!1307757 () Bool)

(assert (=> b!1146437 m!1307757))

(declare-fun m!1307759 () Bool)

(assert (=> b!1146437 m!1307759))

(declare-fun m!1307761 () Bool)

(assert (=> b!1146437 m!1307761))

(declare-fun m!1307763 () Bool)

(assert (=> b!1146437 m!1307763))

(assert (=> b!1146437 m!1307735))

(declare-fun m!1307765 () Bool)

(assert (=> b!1146437 m!1307765))

(assert (=> b!1146437 m!1307759))

(declare-fun m!1307767 () Bool)

(assert (=> b!1146437 m!1307767))

(declare-fun m!1307769 () Bool)

(assert (=> b!1146437 m!1307769))

(declare-fun m!1307771 () Bool)

(assert (=> b!1146437 m!1307771))

(declare-fun m!1307773 () Bool)

(assert (=> b!1146437 m!1307773))

(declare-fun m!1307775 () Bool)

(assert (=> b!1146437 m!1307775))

(declare-fun m!1307777 () Bool)

(assert (=> b!1146437 m!1307777))

(assert (=> b!1146437 m!1307747))

(declare-fun m!1307779 () Bool)

(assert (=> b!1146437 m!1307779))

(assert (=> b!1146437 m!1307767))

(declare-fun m!1307781 () Bool)

(assert (=> b!1146437 m!1307781))

(assert (=> b!1146437 m!1306281))

(declare-fun m!1307783 () Bool)

(assert (=> b!1146437 m!1307783))

(assert (=> b!1146437 m!1307735))

(assert (=> b!1146437 m!1307759))

(declare-fun m!1307785 () Bool)

(assert (=> b!1146437 m!1307785))

(assert (=> b!1146437 m!1307759))

(assert (=> b!1146437 m!1307769))

(declare-fun m!1307787 () Bool)

(assert (=> b!1146437 m!1307787))

(assert (=> b!1146437 m!1307753))

(declare-fun m!1307789 () Bool)

(assert (=> b!1146433 m!1307789))

(declare-fun m!1307791 () Bool)

(assert (=> b!1146435 m!1307791))

(assert (=> b!1146436 m!1306265))

(declare-fun m!1307793 () Bool)

(assert (=> b!1146438 m!1307793))

(assert (=> d!326293 m!1306265))

(declare-fun m!1307795 () Bool)

(assert (=> d!326293 m!1307795))

(declare-fun m!1307797 () Bool)

(assert (=> d!326293 m!1307797))

(declare-fun m!1307799 () Bool)

(assert (=> d!326293 m!1307799))

(assert (=> d!326293 m!1306281))

(assert (=> d!326293 m!1307797))

(declare-fun m!1307801 () Bool)

(assert (=> d!326293 m!1307801))

(declare-fun m!1307803 () Bool)

(assert (=> d!326293 m!1307803))

(declare-fun m!1307805 () Bool)

(assert (=> d!326293 m!1307805))

(assert (=> d!326293 m!1307803))

(declare-fun m!1307807 () Bool)

(assert (=> d!326293 m!1307807))

(declare-fun m!1307809 () Bool)

(assert (=> b!1146440 m!1307809))

(assert (=> b!1146439 m!1306527))

(assert (=> d!325935 d!326293))

(declare-fun d!326297 () Bool)

(declare-fun res!515658 () Bool)

(declare-fun e!732826 () Bool)

(assert (=> d!326297 (=> (not res!515658) (not e!732826))))

(declare-fun list!4058 (IArray!7119) List!11078)

(assert (=> d!326297 (= res!515658 (<= (size!8674 (list!4058 (xs!6258 (c!192329 indices!2)))) 512))))

(assert (=> d!326297 (= (inv!14436 (c!192329 indices!2)) e!732826)))

(declare-fun b!1146453 () Bool)

(declare-fun res!515659 () Bool)

(assert (=> b!1146453 (=> (not res!515659) (not e!732826))))

(assert (=> b!1146453 (= res!515659 (= (csize!7345 (c!192329 indices!2)) (size!8674 (list!4058 (xs!6258 (c!192329 indices!2))))))))

(declare-fun b!1146454 () Bool)

(assert (=> b!1146454 (= e!732826 (and (> (csize!7345 (c!192329 indices!2)) 0) (<= (csize!7345 (c!192329 indices!2)) 512)))))

(assert (= (and d!326297 res!515658) b!1146453))

(assert (= (and b!1146453 res!515659) b!1146454))

(declare-fun m!1307815 () Bool)

(assert (=> d!326297 m!1307815))

(assert (=> d!326297 m!1307815))

(declare-fun m!1307817 () Bool)

(assert (=> d!326297 m!1307817))

(assert (=> b!1146453 m!1307815))

(assert (=> b!1146453 m!1307815))

(assert (=> b!1146453 m!1307817))

(assert (=> b!1145408 d!326297))

(declare-fun d!326301 () Bool)

(assert (=> d!326301 (= (list!4044 lt!388149) (list!4050 (c!192328 lt!388149)))))

(declare-fun bs!281098 () Bool)

(assert (= bs!281098 d!326301))

(declare-fun m!1307819 () Bool)

(assert (=> bs!281098 m!1307819))

(assert (=> b!1145390 d!326301))

(declare-fun b!1146485 () Bool)

(declare-fun e!732845 () Bool)

(declare-fun call!81675 () (_ BitVec 32))

(declare-fun call!81676 () (_ BitVec 32))

(assert (=> b!1146485 (= e!732845 (= call!81675 (bvadd call!81676 #b00000000000000000000000000000001)))))

(declare-fun b!1146486 () Bool)

(declare-fun e!732844 () List!11077)

(assert (=> b!1146486 (= e!732844 (Cons!11053 lt!387686 (list!4044 acc!225)))))

(declare-fun e!732846 () Bool)

(declare-fun b!1146487 () Bool)

(declare-fun lt!388791 () List!11077)

(assert (=> b!1146487 (= e!732846 (= lt!388791 (++!2950 (list!4044 acc!225) (Cons!11053 lt!387686 Nil!11053))))))

(declare-fun b!1146488 () Bool)

(declare-fun res!515682 () Bool)

(assert (=> b!1146488 (=> (not res!515682) (not e!732846))))

(declare-fun size!8682 (List!11077) Int)

(assert (=> b!1146488 (= res!515682 (= (size!8682 lt!388791) (+ (size!8682 (list!4044 acc!225)) 1)))))

(declare-fun d!326303 () Bool)

(assert (=> d!326303 e!732846))

(declare-fun res!515679 () Bool)

(assert (=> d!326303 (=> (not res!515679) (not e!732846))))

(assert (=> d!326303 (= res!515679 ((_ is Cons!11053) lt!388791))))

(assert (=> d!326303 (= lt!388791 e!732844)))

(declare-fun c!192531 () Bool)

(assert (=> d!326303 (= c!192531 ((_ is Nil!11053) (list!4044 acc!225)))))

(assert (=> d!326303 (= ($colon+!79 (list!4044 acc!225) lt!387686) lt!388791)))

(declare-fun bm!81670 () Bool)

(declare-fun isize!23 (List!11077) (_ BitVec 32))

(assert (=> bm!81670 (= call!81676 (isize!23 (list!4044 acc!225)))))

(declare-fun b!1146489 () Bool)

(assert (=> b!1146489 (= e!732844 (Cons!11053 (h!16454 (list!4044 acc!225)) ($colon+!79 (t!107999 (list!4044 acc!225)) lt!387686)))))

(declare-fun bm!81671 () Bool)

(assert (=> bm!81671 (= call!81675 (isize!23 lt!388791))))

(declare-fun b!1146490 () Bool)

(assert (=> b!1146490 (= e!732845 (= call!81675 call!81676))))

(declare-fun b!1146491 () Bool)

(declare-fun res!515681 () Bool)

(assert (=> b!1146491 (=> (not res!515681) (not e!732846))))

(declare-fun content!1592 (List!11077) (InoxSet PrintableTokens!496))

(assert (=> b!1146491 (= res!515681 (= (content!1592 lt!388791) ((_ map or) (content!1592 (list!4044 acc!225)) (store ((as const (Array PrintableTokens!496 Bool)) false) lt!387686 true))))))

(declare-fun b!1146492 () Bool)

(declare-fun res!515680 () Bool)

(assert (=> b!1146492 (=> (not res!515680) (not e!732846))))

(assert (=> b!1146492 (= res!515680 e!732845)))

(declare-fun c!192530 () Bool)

(assert (=> b!1146492 (= c!192530 (bvslt (isize!23 (list!4044 acc!225)) #b01111111111111111111111111111111))))

(assert (= (and d!326303 c!192531) b!1146486))

(assert (= (and d!326303 (not c!192531)) b!1146489))

(assert (= (and d!326303 res!515679) b!1146488))

(assert (= (and b!1146488 res!515682) b!1146492))

(assert (= (and b!1146492 c!192530) b!1146485))

(assert (= (and b!1146492 (not c!192530)) b!1146490))

(assert (= (or b!1146485 b!1146490) bm!81670))

(assert (= (or b!1146485 b!1146490) bm!81671))

(assert (= (and b!1146492 res!515680) b!1146491))

(assert (= (and b!1146491 res!515681) b!1146487))

(assert (=> b!1146487 m!1306049))

(assert (=> b!1146487 m!1306477))

(assert (=> b!1146492 m!1306049))

(declare-fun m!1307925 () Bool)

(assert (=> b!1146492 m!1307925))

(declare-fun m!1307927 () Bool)

(assert (=> b!1146489 m!1307927))

(declare-fun m!1307929 () Bool)

(assert (=> b!1146488 m!1307929))

(assert (=> b!1146488 m!1306049))

(declare-fun m!1307931 () Bool)

(assert (=> b!1146488 m!1307931))

(assert (=> bm!81670 m!1306049))

(assert (=> bm!81670 m!1307925))

(declare-fun m!1307933 () Bool)

(assert (=> bm!81671 m!1307933))

(declare-fun m!1307935 () Bool)

(assert (=> b!1146491 m!1307935))

(assert (=> b!1146491 m!1306049))

(declare-fun m!1307937 () Bool)

(assert (=> b!1146491 m!1307937))

(declare-fun m!1307939 () Bool)

(assert (=> b!1146491 m!1307939))

(assert (=> b!1145390 d!326303))

(assert (=> b!1145390 d!325973))

(declare-fun d!326321 () Bool)

(assert (=> d!326321 (= (inv!14406 (tag!2167 (h!16453 (rules!9316 pt!21)))) (= (mod (str.len (value!62288 (tag!2167 (h!16453 (rules!9316 pt!21))))) 2) 0))))

(assert (=> b!1145498 d!326321))

(declare-fun d!326323 () Bool)

(declare-fun res!515689 () Bool)

(declare-fun e!732853 () Bool)

(assert (=> d!326323 (=> (not res!515689) (not e!732853))))

(declare-fun semiInverseModEq!725 (Int Int) Bool)

(assert (=> d!326323 (= res!515689 (semiInverseModEq!725 (toChars!2861 (transformation!1905 (h!16453 (rules!9316 pt!21)))) (toValue!3002 (transformation!1905 (h!16453 (rules!9316 pt!21))))))))

(assert (=> d!326323 (= (inv!14440 (transformation!1905 (h!16453 (rules!9316 pt!21)))) e!732853)))

(declare-fun b!1146499 () Bool)

(declare-fun equivClasses!692 (Int Int) Bool)

(assert (=> b!1146499 (= e!732853 (equivClasses!692 (toChars!2861 (transformation!1905 (h!16453 (rules!9316 pt!21)))) (toValue!3002 (transformation!1905 (h!16453 (rules!9316 pt!21))))))))

(assert (= (and d!326323 res!515689) b!1146499))

(declare-fun m!1307941 () Bool)

(assert (=> d!326323 m!1307941))

(declare-fun m!1307943 () Bool)

(assert (=> b!1146499 m!1307943))

(assert (=> b!1145498 d!326323))

(declare-fun bs!281114 () Bool)

(declare-fun d!326325 () Bool)

(assert (= bs!281114 (and d!326325 d!326121)))

(declare-fun lambda!46146 () Int)

(assert (=> bs!281114 (= (= lt!388115 lt!388069) (= lambda!46146 lambda!46126))))

(declare-fun bs!281115 () Bool)

(assert (= bs!281115 (and d!326325 d!326253)))

(assert (=> bs!281115 (= (= lt!388115 Lexer!1602) (= lambda!46146 lambda!46139))))

(declare-fun bs!281116 () Bool)

(assert (= bs!281116 (and d!326325 d!325935)))

(assert (=> bs!281116 (= (= lt!388115 Lexer!1602) (= lambda!46146 lambda!46111))))

(declare-fun bs!281117 () Bool)

(assert (= bs!281117 (and d!326325 d!326271)))

(assert (=> bs!281117 (= (= lt!388115 Lexer!1602) (= lambda!46146 lambda!46140))))

(declare-fun bs!281118 () Bool)

(assert (= bs!281118 (and d!326325 d!326039)))

(assert (=> bs!281118 (= (= lt!388115 lt!388077) (= lambda!46146 lambda!46114))))

(declare-fun bs!281119 () Bool)

(assert (= bs!281119 (and d!326325 d!326277)))

(assert (=> bs!281119 (= (= lt!388115 lt!388077) (= lambda!46146 lambda!46141))))

(declare-fun bs!281120 () Bool)

(assert (= bs!281120 (and d!326325 b!1145950)))

(assert (=> bs!281120 (= (= lt!388115 Lexer!1602) (= lambda!46146 lambda!46123))))

(declare-fun bs!281121 () Bool)

(assert (= bs!281121 (and d!326325 d!326195)))

(assert (=> bs!281121 (= (= lt!388115 Lexer!1602) (= lambda!46146 lambda!46133))))

(declare-fun bs!281122 () Bool)

(assert (= bs!281122 (and d!326325 b!1145847)))

(assert (=> bs!281122 (= (= lt!388115 Lexer!1602) (= lambda!46146 lambda!46117))))

(declare-fun bs!281123 () Bool)

(assert (= bs!281123 (and d!326325 d!326199)))

(assert (=> bs!281123 (= (= lt!388115 Lexer!1602) (= lambda!46146 lambda!46138))))

(declare-fun b!1146504 () Bool)

(declare-fun e!732858 () Bool)

(assert (=> b!1146504 (= e!732858 true)))

(declare-fun b!1146503 () Bool)

(declare-fun e!732857 () Bool)

(assert (=> b!1146503 (= e!732857 e!732858)))

(declare-fun b!1146502 () Bool)

(declare-fun e!732856 () Bool)

(assert (=> b!1146502 (= e!732856 e!732857)))

(assert (=> d!326325 e!732856))

(assert (= b!1146503 b!1146504))

(assert (= b!1146502 b!1146503))

(assert (= (and d!326325 ((_ is Cons!11052) (rules!9316 pt!21))) b!1146502))

(assert (=> b!1146504 (< (dynLambda!4881 order!6751 (toValue!3002 (transformation!1905 (h!16453 (rules!9316 pt!21))))) (dynLambda!4882 order!6753 lambda!46146))))

(assert (=> b!1146504 (< (dynLambda!4883 order!6755 (toChars!2861 (transformation!1905 (h!16453 (rules!9316 pt!21))))) (dynLambda!4882 order!6753 lambda!46146))))

(assert (=> d!326325 true))

(declare-fun lt!388792 () Bool)

(assert (=> d!326325 (= lt!388792 (forall!2752 (t!107997 lt!388101) lambda!46146))))

(declare-fun e!732854 () Bool)

(assert (=> d!326325 (= lt!388792 e!732854)))

(declare-fun res!515690 () Bool)

(assert (=> d!326325 (=> res!515690 e!732854)))

(assert (=> d!326325 (= res!515690 (not ((_ is Cons!11051) (t!107997 lt!388101))))))

(assert (=> d!326325 (not (isEmpty!6858 (rules!9316 pt!21)))))

(assert (=> d!326325 (= (rulesProduceEachTokenIndividuallyList!479 lt!388115 (rules!9316 pt!21) (t!107997 lt!388101)) lt!388792)))

(declare-fun b!1146500 () Bool)

(declare-fun e!732855 () Bool)

(assert (=> b!1146500 (= e!732854 e!732855)))

(declare-fun res!515691 () Bool)

(assert (=> b!1146500 (=> (not res!515691) (not e!732855))))

(assert (=> b!1146500 (= res!515691 (rulesProduceIndividualToken!651 lt!388115 (rules!9316 pt!21) (h!16452 (t!107997 lt!388101))))))

(declare-fun b!1146501 () Bool)

(assert (=> b!1146501 (= e!732855 (rulesProduceEachTokenIndividuallyList!479 lt!388115 (rules!9316 pt!21) (t!107997 (t!107997 lt!388101))))))

(assert (= (and d!326325 (not res!515690)) b!1146500))

(assert (= (and b!1146500 res!515691) b!1146501))

(declare-fun m!1307945 () Bool)

(assert (=> d!326325 m!1307945))

(assert (=> d!326325 m!1306527))

(declare-fun m!1307947 () Bool)

(assert (=> b!1146500 m!1307947))

(declare-fun m!1307949 () Bool)

(assert (=> b!1146501 m!1307949))

(assert (=> b!1145358 d!326325))

(declare-fun d!326327 () Bool)

(assert (=> d!326327 (= (inv!14439 (xs!6257 (c!192328 acc!225))) (<= (size!8682 (innerList!3616 (xs!6257 (c!192328 acc!225)))) 2147483647))))

(declare-fun bs!281124 () Bool)

(assert (= bs!281124 d!326327))

(declare-fun m!1307951 () Bool)

(assert (=> bs!281124 m!1307951))

(assert (=> b!1145487 d!326327))

(declare-fun d!326329 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!326) Rule!3610)

(declare-fun integerLiteralRule!0 (JsonLexer!326) Rule!3610)

(declare-fun floatLiteralRule!0 (JsonLexer!326) Rule!3610)

(declare-fun trueRule!0 (JsonLexer!326) Rule!3610)

(declare-fun falseRule!0 (JsonLexer!326) Rule!3610)

(declare-fun nullRule!0 (JsonLexer!326) Rule!3610)

(declare-fun jsonstringRule!0 (JsonLexer!326) Rule!3610)

(declare-fun lBraceRule!0 (JsonLexer!326) Rule!3610)

(declare-fun rBraceRule!0 (JsonLexer!326) Rule!3610)

(declare-fun lBracketRule!0 (JsonLexer!326) Rule!3610)

(declare-fun rBracketRule!0 (JsonLexer!326) Rule!3610)

(declare-fun colonRule!0 (JsonLexer!326) Rule!3610)

(declare-fun commaRule!0 (JsonLexer!326) Rule!3610)

(declare-fun eofRule!0 (JsonLexer!326) Rule!3610)

(assert (=> d!326329 (= (rules!109 JsonLexer!327) (Cons!11052 (whitespaceRule!0 JsonLexer!327) (Cons!11052 (integerLiteralRule!0 JsonLexer!327) (Cons!11052 (floatLiteralRule!0 JsonLexer!327) (Cons!11052 (trueRule!0 JsonLexer!327) (Cons!11052 (falseRule!0 JsonLexer!327) (Cons!11052 (nullRule!0 JsonLexer!327) (Cons!11052 (jsonstringRule!0 JsonLexer!327) (Cons!11052 (lBraceRule!0 JsonLexer!327) (Cons!11052 (rBraceRule!0 JsonLexer!327) (Cons!11052 (lBracketRule!0 JsonLexer!327) (Cons!11052 (rBracketRule!0 JsonLexer!327) (Cons!11052 (colonRule!0 JsonLexer!327) (Cons!11052 (commaRule!0 JsonLexer!327) (Cons!11052 (eofRule!0 JsonLexer!327) Nil!11052)))))))))))))))))

(declare-fun bs!281125 () Bool)

(assert (= bs!281125 d!326329))

(declare-fun m!1307953 () Bool)

(assert (=> bs!281125 m!1307953))

(declare-fun m!1307955 () Bool)

(assert (=> bs!281125 m!1307955))

(declare-fun m!1307957 () Bool)

(assert (=> bs!281125 m!1307957))

(declare-fun m!1307959 () Bool)

(assert (=> bs!281125 m!1307959))

(declare-fun m!1307961 () Bool)

(assert (=> bs!281125 m!1307961))

(declare-fun m!1307963 () Bool)

(assert (=> bs!281125 m!1307963))

(declare-fun m!1307965 () Bool)

(assert (=> bs!281125 m!1307965))

(declare-fun m!1307967 () Bool)

(assert (=> bs!281125 m!1307967))

(declare-fun m!1307969 () Bool)

(assert (=> bs!281125 m!1307969))

(declare-fun m!1307971 () Bool)

(assert (=> bs!281125 m!1307971))

(declare-fun m!1307973 () Bool)

(assert (=> bs!281125 m!1307973))

(declare-fun m!1307975 () Bool)

(assert (=> bs!281125 m!1307975))

(declare-fun m!1307977 () Bool)

(assert (=> bs!281125 m!1307977))

(declare-fun m!1307979 () Bool)

(assert (=> bs!281125 m!1307979))

(assert (=> d!325991 d!326329))

(declare-fun d!326331 () Bool)

(declare-fun res!515708 () Bool)

(declare-fun e!732879 () Bool)

(assert (=> d!326331 (=> res!515708 e!732879)))

(assert (=> d!326331 (= res!515708 (or (not ((_ is Cons!11051) (take!28 lt!388109 lt!388125))) (not ((_ is Cons!11051) (t!107997 (take!28 lt!388109 lt!388125))))))))

(assert (=> d!326331 (= (tokensListTwoByTwoPredicateSeparableList!78 lt!388069 (take!28 lt!388109 lt!388125) (rules!9316 pt!21)) e!732879)))

(declare-fun b!1146524 () Bool)

(declare-fun e!732878 () Bool)

(assert (=> b!1146524 (= e!732879 e!732878)))

(declare-fun res!515709 () Bool)

(assert (=> b!1146524 (=> (not res!515709) (not e!732878))))

(assert (=> b!1146524 (= res!515709 (separableTokensPredicate!102 lt!388069 (h!16452 (take!28 lt!388109 lt!388125)) (h!16452 (t!107997 (take!28 lt!388109 lt!388125))) (rules!9316 pt!21)))))

(declare-fun lt!388827 () Unit!16973)

(declare-fun Unit!17009 () Unit!16973)

(assert (=> b!1146524 (= lt!388827 Unit!17009)))

(assert (=> b!1146524 (> (size!8673 (charsOf!1040 (h!16452 (t!107997 (take!28 lt!388109 lt!388125))))) 0)))

(declare-fun lt!388824 () Unit!16973)

(declare-fun Unit!17010 () Unit!16973)

(assert (=> b!1146524 (= lt!388824 Unit!17010)))

(assert (=> b!1146524 (rulesProduceIndividualToken!651 lt!388069 (rules!9316 pt!21) (h!16452 (t!107997 (take!28 lt!388109 lt!388125))))))

(declare-fun lt!388826 () Unit!16973)

(declare-fun Unit!17011 () Unit!16973)

(assert (=> b!1146524 (= lt!388826 Unit!17011)))

(assert (=> b!1146524 (rulesProduceIndividualToken!651 lt!388069 (rules!9316 pt!21) (h!16452 (take!28 lt!388109 lt!388125)))))

(declare-fun lt!388822 () Unit!16973)

(declare-fun lt!388828 () Unit!16973)

(assert (=> b!1146524 (= lt!388822 lt!388828)))

(assert (=> b!1146524 (rulesProduceIndividualToken!651 lt!388069 (rules!9316 pt!21) (h!16452 (t!107997 (take!28 lt!388109 lt!388125))))))

(assert (=> b!1146524 (= lt!388828 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!261 lt!388069 (rules!9316 pt!21) (take!28 lt!388109 lt!388125) (h!16452 (t!107997 (take!28 lt!388109 lt!388125)))))))

(declare-fun lt!388823 () Unit!16973)

(declare-fun lt!388825 () Unit!16973)

(assert (=> b!1146524 (= lt!388823 lt!388825)))

(assert (=> b!1146524 (rulesProduceIndividualToken!651 lt!388069 (rules!9316 pt!21) (h!16452 (take!28 lt!388109 lt!388125)))))

(assert (=> b!1146524 (= lt!388825 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!261 lt!388069 (rules!9316 pt!21) (take!28 lt!388109 lt!388125) (h!16452 (take!28 lt!388109 lt!388125))))))

(declare-fun b!1146525 () Bool)

(assert (=> b!1146525 (= e!732878 (tokensListTwoByTwoPredicateSeparableList!78 lt!388069 (Cons!11051 (h!16452 (t!107997 (take!28 lt!388109 lt!388125))) (t!107997 (t!107997 (take!28 lt!388109 lt!388125)))) (rules!9316 pt!21)))))

(assert (= (and d!326331 (not res!515708)) b!1146524))

(assert (= (and b!1146524 res!515709) b!1146525))

(assert (=> b!1146524 m!1306315))

(declare-fun m!1307995 () Bool)

(assert (=> b!1146524 m!1307995))

(assert (=> b!1146524 m!1306315))

(declare-fun m!1307997 () Bool)

(assert (=> b!1146524 m!1307997))

(assert (=> b!1146524 m!1307065))

(declare-fun m!1307999 () Bool)

(assert (=> b!1146524 m!1307999))

(declare-fun m!1308001 () Bool)

(assert (=> b!1146524 m!1308001))

(declare-fun m!1308003 () Bool)

(assert (=> b!1146524 m!1308003))

(assert (=> b!1146524 m!1307999))

(declare-fun m!1308005 () Bool)

(assert (=> b!1146524 m!1308005))

(declare-fun m!1308007 () Bool)

(assert (=> b!1146525 m!1308007))

(assert (=> b!1145354 d!326331))

(assert (=> b!1145354 d!326171))

(declare-fun d!326335 () Bool)

(declare-fun res!515710 () Bool)

(declare-fun e!732880 () Bool)

(assert (=> d!326335 (=> res!515710 e!732880)))

(assert (=> d!326335 (= res!515710 ((_ is Nil!11051) lt!388061))))

(assert (=> d!326335 (= (forall!2752 lt!388061 lambda!46111) e!732880)))

(declare-fun b!1146526 () Bool)

(declare-fun e!732881 () Bool)

(assert (=> b!1146526 (= e!732880 e!732881)))

(declare-fun res!515711 () Bool)

(assert (=> b!1146526 (=> (not res!515711) (not e!732881))))

(assert (=> b!1146526 (= res!515711 (dynLambda!4888 lambda!46111 (h!16452 lt!388061)))))

(declare-fun b!1146527 () Bool)

(assert (=> b!1146527 (= e!732881 (forall!2752 (t!107997 lt!388061) lambda!46111))))

(assert (= (and d!326335 (not res!515710)) b!1146526))

(assert (= (and b!1146526 res!515711) b!1146527))

(declare-fun b_lambda!34115 () Bool)

(assert (=> (not b_lambda!34115) (not b!1146526)))

(declare-fun m!1308009 () Bool)

(assert (=> b!1146526 m!1308009))

(declare-fun m!1308011 () Bool)

(assert (=> b!1146527 m!1308011))

(assert (=> b!1145354 d!326335))

(declare-fun d!326337 () Bool)

(assert (=> d!326337 (forall!2752 lt!388061 lambda!46111)))

(declare-fun lt!388829 () Unit!16973)

(assert (=> d!326337 (= lt!388829 (choose!7353 lt!388061 lt!388109 lambda!46111))))

(assert (=> d!326337 (forall!2752 lt!388109 lambda!46111)))

(assert (=> d!326337 (= (lemmaForallSubseq!81 lt!388061 lt!388109 lambda!46111) lt!388829)))

(declare-fun bs!281136 () Bool)

(assert (= bs!281136 d!326337))

(assert (=> bs!281136 m!1306349))

(declare-fun m!1308013 () Bool)

(assert (=> bs!281136 m!1308013))

(declare-fun m!1308015 () Bool)

(assert (=> bs!281136 m!1308015))

(assert (=> b!1145354 d!326337))

(assert (=> b!1145262 d!325945))

(declare-fun d!326339 () Bool)

(declare-fun lt!388831 () Bool)

(declare-fun e!732882 () Bool)

(assert (=> d!326339 (= lt!388831 e!732882)))

(declare-fun res!515712 () Bool)

(assert (=> d!326339 (=> (not res!515712) (not e!732882))))

(assert (=> d!326339 (= res!515712 (= (list!4049 (_1!6818 (lex!666 lt!388120 (rules!9316 pt!21) (print!603 lt!388120 (singletonSeq!617 (h!16452 lt!388112)))))) (list!4049 (singletonSeq!617 (h!16452 lt!388112)))))))

(declare-fun e!732883 () Bool)

(assert (=> d!326339 (= lt!388831 e!732883)))

(declare-fun res!515713 () Bool)

(assert (=> d!326339 (=> (not res!515713) (not e!732883))))

(declare-fun lt!388830 () tuple2!11942)

(assert (=> d!326339 (= res!515713 (= (size!8670 (_1!6818 lt!388830)) 1))))

(assert (=> d!326339 (= lt!388830 (lex!666 lt!388120 (rules!9316 pt!21) (print!603 lt!388120 (singletonSeq!617 (h!16452 lt!388112)))))))

(assert (=> d!326339 (not (isEmpty!6858 (rules!9316 pt!21)))))

(assert (=> d!326339 (= (rulesProduceIndividualToken!651 lt!388120 (rules!9316 pt!21) (h!16452 lt!388112)) lt!388831)))

(declare-fun b!1146528 () Bool)

(declare-fun res!515714 () Bool)

(assert (=> b!1146528 (=> (not res!515714) (not e!732883))))

(assert (=> b!1146528 (= res!515714 (= (apply!2353 (_1!6818 lt!388830) 0) (h!16452 lt!388112)))))

(declare-fun b!1146529 () Bool)

(assert (=> b!1146529 (= e!732883 (isEmpty!6862 (_2!6818 lt!388830)))))

(declare-fun b!1146530 () Bool)

(assert (=> b!1146530 (= e!732882 (isEmpty!6862 (_2!6818 (lex!666 lt!388120 (rules!9316 pt!21) (print!603 lt!388120 (singletonSeq!617 (h!16452 lt!388112)))))))))

(assert (= (and d!326339 res!515713) b!1146528))

(assert (= (and b!1146528 res!515714) b!1146529))

(assert (= (and d!326339 res!515712) b!1146530))

(declare-fun m!1308017 () Bool)

(assert (=> d!326339 m!1308017))

(assert (=> d!326339 m!1308017))

(declare-fun m!1308019 () Bool)

(assert (=> d!326339 m!1308019))

(declare-fun m!1308021 () Bool)

(assert (=> d!326339 m!1308021))

(assert (=> d!326339 m!1306527))

(assert (=> d!326339 m!1308017))

(declare-fun m!1308023 () Bool)

(assert (=> d!326339 m!1308023))

(assert (=> d!326339 m!1308019))

(declare-fun m!1308025 () Bool)

(assert (=> d!326339 m!1308025))

(declare-fun m!1308027 () Bool)

(assert (=> d!326339 m!1308027))

(declare-fun m!1308029 () Bool)

(assert (=> b!1146528 m!1308029))

(declare-fun m!1308031 () Bool)

(assert (=> b!1146529 m!1308031))

(assert (=> b!1146530 m!1308017))

(assert (=> b!1146530 m!1308017))

(assert (=> b!1146530 m!1308019))

(assert (=> b!1146530 m!1308019))

(assert (=> b!1146530 m!1308025))

(declare-fun m!1308033 () Bool)

(assert (=> b!1146530 m!1308033))

(assert (=> b!1145356 d!326339))

(assert (=> d!325921 d!326329))

(declare-fun d!326341 () Bool)

(declare-fun res!515715 () Bool)

(declare-fun e!732884 () Bool)

(assert (=> d!326341 (=> res!515715 e!732884)))

(assert (=> d!326341 (= res!515715 ((_ is Nil!11051) lt!388066))))

(assert (=> d!326341 (= (forall!2752 lt!388066 lambda!46111) e!732884)))

(declare-fun b!1146531 () Bool)

(declare-fun e!732885 () Bool)

(assert (=> b!1146531 (= e!732884 e!732885)))

(declare-fun res!515716 () Bool)

(assert (=> b!1146531 (=> (not res!515716) (not e!732885))))

(assert (=> b!1146531 (= res!515716 (dynLambda!4888 lambda!46111 (h!16452 lt!388066)))))

(declare-fun b!1146532 () Bool)

(assert (=> b!1146532 (= e!732885 (forall!2752 (t!107997 lt!388066) lambda!46111))))

(assert (= (and d!326341 (not res!515715)) b!1146531))

(assert (= (and b!1146531 res!515716) b!1146532))

(declare-fun b_lambda!34117 () Bool)

(assert (=> (not b_lambda!34117) (not b!1146531)))

(declare-fun m!1308035 () Bool)

(assert (=> b!1146531 m!1308035))

(declare-fun m!1308037 () Bool)

(assert (=> b!1146532 m!1308037))

(assert (=> b!1145352 d!326341))

(declare-fun d!326343 () Bool)

(declare-fun res!515717 () Bool)

(declare-fun e!732887 () Bool)

(assert (=> d!326343 (=> res!515717 e!732887)))

(assert (=> d!326343 (= res!515717 (or (not ((_ is Cons!11051) (drop!430 lt!388114 (ite c!192324 lt!387689 lt!387688)))) (not ((_ is Cons!11051) (t!107997 (drop!430 lt!388114 (ite c!192324 lt!387689 lt!387688)))))))))

(assert (=> d!326343 (= (tokensListTwoByTwoPredicateSeparableList!78 lt!388077 (drop!430 lt!388114 (ite c!192324 lt!387689 lt!387688)) (rules!9316 pt!21)) e!732887)))

(declare-fun b!1146533 () Bool)

(declare-fun e!732886 () Bool)

(assert (=> b!1146533 (= e!732887 e!732886)))

(declare-fun res!515718 () Bool)

(assert (=> b!1146533 (=> (not res!515718) (not e!732886))))

(assert (=> b!1146533 (= res!515718 (separableTokensPredicate!102 lt!388077 (h!16452 (drop!430 lt!388114 (ite c!192324 lt!387689 lt!387688))) (h!16452 (t!107997 (drop!430 lt!388114 (ite c!192324 lt!387689 lt!387688)))) (rules!9316 pt!21)))))

(declare-fun lt!388837 () Unit!16973)

(declare-fun Unit!17012 () Unit!16973)

(assert (=> b!1146533 (= lt!388837 Unit!17012)))

(assert (=> b!1146533 (> (size!8673 (charsOf!1040 (h!16452 (t!107997 (drop!430 lt!388114 (ite c!192324 lt!387689 lt!387688)))))) 0)))

(declare-fun lt!388834 () Unit!16973)

(declare-fun Unit!17013 () Unit!16973)

(assert (=> b!1146533 (= lt!388834 Unit!17013)))

(assert (=> b!1146533 (rulesProduceIndividualToken!651 lt!388077 (rules!9316 pt!21) (h!16452 (t!107997 (drop!430 lt!388114 (ite c!192324 lt!387689 lt!387688)))))))

(declare-fun lt!388836 () Unit!16973)

(declare-fun Unit!17014 () Unit!16973)

(assert (=> b!1146533 (= lt!388836 Unit!17014)))

(assert (=> b!1146533 (rulesProduceIndividualToken!651 lt!388077 (rules!9316 pt!21) (h!16452 (drop!430 lt!388114 (ite c!192324 lt!387689 lt!387688))))))

(declare-fun lt!388832 () Unit!16973)

(declare-fun lt!388838 () Unit!16973)

(assert (=> b!1146533 (= lt!388832 lt!388838)))

(assert (=> b!1146533 (rulesProduceIndividualToken!651 lt!388077 (rules!9316 pt!21) (h!16452 (t!107997 (drop!430 lt!388114 (ite c!192324 lt!387689 lt!387688)))))))

(assert (=> b!1146533 (= lt!388838 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!261 lt!388077 (rules!9316 pt!21) (drop!430 lt!388114 (ite c!192324 lt!387689 lt!387688)) (h!16452 (t!107997 (drop!430 lt!388114 (ite c!192324 lt!387689 lt!387688))))))))

(declare-fun lt!388833 () Unit!16973)

(declare-fun lt!388835 () Unit!16973)

(assert (=> b!1146533 (= lt!388833 lt!388835)))

(assert (=> b!1146533 (rulesProduceIndividualToken!651 lt!388077 (rules!9316 pt!21) (h!16452 (drop!430 lt!388114 (ite c!192324 lt!387689 lt!387688))))))

(assert (=> b!1146533 (= lt!388835 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!261 lt!388077 (rules!9316 pt!21) (drop!430 lt!388114 (ite c!192324 lt!387689 lt!387688)) (h!16452 (drop!430 lt!388114 (ite c!192324 lt!387689 lt!387688)))))))

(declare-fun b!1146534 () Bool)

(assert (=> b!1146534 (= e!732886 (tokensListTwoByTwoPredicateSeparableList!78 lt!388077 (Cons!11051 (h!16452 (t!107997 (drop!430 lt!388114 (ite c!192324 lt!387689 lt!387688)))) (t!107997 (t!107997 (drop!430 lt!388114 (ite c!192324 lt!387689 lt!387688))))) (rules!9316 pt!21)))))

(assert (= (and d!326343 (not res!515717)) b!1146533))

(assert (= (and b!1146533 res!515718) b!1146534))

(assert (=> b!1146533 m!1306319))

(declare-fun m!1308039 () Bool)

(assert (=> b!1146533 m!1308039))

(assert (=> b!1146533 m!1306319))

(declare-fun m!1308041 () Bool)

(assert (=> b!1146533 m!1308041))

(assert (=> b!1146533 m!1307705))

(declare-fun m!1308043 () Bool)

(assert (=> b!1146533 m!1308043))

(declare-fun m!1308045 () Bool)

(assert (=> b!1146533 m!1308045))

(declare-fun m!1308047 () Bool)

(assert (=> b!1146533 m!1308047))

(assert (=> b!1146533 m!1308043))

(declare-fun m!1308049 () Bool)

(assert (=> b!1146533 m!1308049))

(declare-fun m!1308051 () Bool)

(assert (=> b!1146534 m!1308051))

(assert (=> b!1145352 d!326343))

(declare-fun d!326345 () Bool)

(assert (=> d!326345 (forall!2752 lt!388066 lambda!46111)))

(declare-fun lt!388839 () Unit!16973)

(assert (=> d!326345 (= lt!388839 (choose!7353 lt!388066 lt!388114 lambda!46111))))

(assert (=> d!326345 (forall!2752 lt!388114 lambda!46111)))

(assert (=> d!326345 (= (lemmaForallSubseq!81 lt!388066 lt!388114 lambda!46111) lt!388839)))

(declare-fun bs!281137 () Bool)

(assert (= bs!281137 d!326345))

(assert (=> bs!281137 m!1306333))

(declare-fun m!1308053 () Bool)

(assert (=> bs!281137 m!1308053))

(declare-fun m!1308055 () Bool)

(assert (=> bs!281137 m!1308055))

(assert (=> b!1145352 d!326345))

(declare-fun b!1146538 () Bool)

(declare-fun e!732890 () Bool)

(assert (=> b!1146538 (= e!732890 (subseq!181 (drop!430 lt!388114 (ite c!192324 lt!387689 lt!387688)) (t!107997 lt!388114)))))

(declare-fun b!1146536 () Bool)

(declare-fun e!732889 () Bool)

(assert (=> b!1146536 (= e!732889 e!732890)))

(declare-fun res!515722 () Bool)

(assert (=> b!1146536 (=> res!515722 e!732890)))

(declare-fun e!732891 () Bool)

(assert (=> b!1146536 (= res!515722 e!732891)))

(declare-fun res!515720 () Bool)

(assert (=> b!1146536 (=> (not res!515720) (not e!732891))))

(assert (=> b!1146536 (= res!515720 (= (h!16452 (drop!430 lt!388114 (ite c!192324 lt!387689 lt!387688))) (h!16452 lt!388114)))))

(declare-fun b!1146537 () Bool)

(assert (=> b!1146537 (= e!732891 (subseq!181 (t!107997 (drop!430 lt!388114 (ite c!192324 lt!387689 lt!387688))) (t!107997 lt!388114)))))

(declare-fun b!1146535 () Bool)

(declare-fun e!732888 () Bool)

(assert (=> b!1146535 (= e!732888 e!732889)))

(declare-fun res!515719 () Bool)

(assert (=> b!1146535 (=> (not res!515719) (not e!732889))))

(assert (=> b!1146535 (= res!515719 ((_ is Cons!11051) lt!388114))))

(declare-fun d!326347 () Bool)

(declare-fun res!515721 () Bool)

(assert (=> d!326347 (=> res!515721 e!732888)))

(assert (=> d!326347 (= res!515721 ((_ is Nil!11051) (drop!430 lt!388114 (ite c!192324 lt!387689 lt!387688))))))

(assert (=> d!326347 (= (subseq!181 (drop!430 lt!388114 (ite c!192324 lt!387689 lt!387688)) lt!388114) e!732888)))

(assert (= (and d!326347 (not res!515721)) b!1146535))

(assert (= (and b!1146535 res!515719) b!1146536))

(assert (= (and b!1146536 res!515720) b!1146537))

(assert (= (and b!1146536 (not res!515722)) b!1146538))

(assert (=> b!1146538 m!1306319))

(declare-fun m!1308057 () Bool)

(assert (=> b!1146538 m!1308057))

(declare-fun m!1308059 () Bool)

(assert (=> b!1146537 m!1308059))

(assert (=> b!1145352 d!326347))

(declare-fun d!326349 () Bool)

(assert (=> d!326349 (subseq!181 (drop!430 lt!388114 (ite c!192324 lt!387689 lt!387688)) lt!388114)))

(declare-fun lt!388840 () Unit!16973)

(assert (=> d!326349 (= lt!388840 (choose!7352 lt!388114 (ite c!192324 lt!387689 lt!387688)))))

(assert (=> d!326349 (= (lemmaDropSubseq!22 lt!388114 (ite c!192324 lt!387689 lt!387688)) lt!388840)))

(declare-fun bs!281138 () Bool)

(assert (= bs!281138 d!326349))

(assert (=> bs!281138 m!1306319))

(assert (=> bs!281138 m!1306319))

(assert (=> bs!281138 m!1306341))

(declare-fun m!1308061 () Bool)

(assert (=> bs!281138 m!1308061))

(assert (=> b!1145352 d!326349))

(assert (=> b!1145352 d!326113))

(assert (=> b!1145457 d!326271))

(declare-fun d!326351 () Bool)

(declare-fun res!515727 () Bool)

(declare-fun e!732896 () Bool)

(assert (=> d!326351 (=> res!515727 e!732896)))

(assert (=> d!326351 (= res!515727 ((_ is Nil!11053) (list!4044 (append!358 acc!225 lt!387686))))))

(assert (=> d!326351 (= (forall!2756 (list!4044 (append!358 acc!225 lt!387686)) lambda!46085) e!732896)))

(declare-fun b!1146543 () Bool)

(declare-fun e!732897 () Bool)

(assert (=> b!1146543 (= e!732896 e!732897)))

(declare-fun res!515728 () Bool)

(assert (=> b!1146543 (=> (not res!515728) (not e!732897))))

(declare-fun dynLambda!4891 (Int PrintableTokens!496) Bool)

(assert (=> b!1146543 (= res!515728 (dynLambda!4891 lambda!46085 (h!16454 (list!4044 (append!358 acc!225 lt!387686)))))))

(declare-fun b!1146544 () Bool)

(assert (=> b!1146544 (= e!732897 (forall!2756 (t!107999 (list!4044 (append!358 acc!225 lt!387686))) lambda!46085))))

(assert (= (and d!326351 (not res!515727)) b!1146543))

(assert (= (and b!1146543 res!515728) b!1146544))

(declare-fun b_lambda!34119 () Bool)

(assert (=> (not b_lambda!34119) (not b!1146543)))

(declare-fun m!1308063 () Bool)

(assert (=> b!1146543 m!1308063))

(declare-fun m!1308065 () Bool)

(assert (=> b!1146544 m!1308065))

(assert (=> d!325959 d!326351))

(declare-fun d!326353 () Bool)

(assert (=> d!326353 (= (list!4044 (append!358 acc!225 lt!387686)) (list!4050 (c!192328 (append!358 acc!225 lt!387686))))))

(declare-fun bs!281139 () Bool)

(assert (= bs!281139 d!326353))

(declare-fun m!1308067 () Bool)

(assert (=> bs!281139 m!1308067))

(assert (=> d!325959 d!326353))

(declare-fun b!1146554 () Bool)

(declare-fun e!732906 () Bool)

(declare-fun forall!2764 (IArray!7117 Int) Bool)

(assert (=> b!1146554 (= e!732906 (forall!2764 (xs!6257 (c!192328 (append!358 acc!225 lt!387686))) lambda!46085))))

(declare-fun b!1146553 () Bool)

(declare-fun e!732905 () Bool)

(assert (=> b!1146553 (= e!732905 e!732906)))

(declare-fun c!192534 () Bool)

(assert (=> b!1146553 (= c!192534 ((_ is Leaf!5519) (c!192328 (append!358 acc!225 lt!387686))))))

(declare-fun b!1146556 () Bool)

(declare-fun e!732904 () Bool)

(assert (=> b!1146556 (= e!732904 (forall!2757 (right!9944 (c!192328 (append!358 acc!225 lt!387686))) lambda!46085))))

(declare-fun b!1146555 () Bool)

(assert (=> b!1146555 (= e!732906 e!732904)))

(declare-fun lt!388846 () Unit!16973)

(declare-fun lemmaForallConcat!105 (List!11077 List!11077 Int) Unit!16973)

(assert (=> b!1146555 (= lt!388846 (lemmaForallConcat!105 (list!4050 (left!9614 (c!192328 (append!358 acc!225 lt!387686)))) (list!4050 (right!9944 (c!192328 (append!358 acc!225 lt!387686)))) lambda!46085))))

(declare-fun res!515733 () Bool)

(assert (=> b!1146555 (= res!515733 (forall!2757 (left!9614 (c!192328 (append!358 acc!225 lt!387686))) lambda!46085))))

(assert (=> b!1146555 (=> (not res!515733) (not e!732904))))

(declare-fun d!326355 () Bool)

(declare-fun lt!388845 () Bool)

(assert (=> d!326355 (= lt!388845 (forall!2756 (list!4050 (c!192328 (append!358 acc!225 lt!387686))) lambda!46085))))

(assert (=> d!326355 (= lt!388845 e!732905)))

(declare-fun res!515734 () Bool)

(assert (=> d!326355 (=> res!515734 e!732905)))

(assert (=> d!326355 (= res!515734 ((_ is Empty!3556) (c!192328 (append!358 acc!225 lt!387686))))))

(assert (=> d!326355 (= (forall!2757 (c!192328 (append!358 acc!225 lt!387686)) lambda!46085) lt!388845)))

(assert (= (and d!326355 (not res!515734)) b!1146553))

(assert (= (and b!1146553 c!192534) b!1146554))

(assert (= (and b!1146553 (not c!192534)) b!1146555))

(assert (= (and b!1146555 res!515733) b!1146556))

(declare-fun m!1308069 () Bool)

(assert (=> b!1146554 m!1308069))

(declare-fun m!1308071 () Bool)

(assert (=> b!1146556 m!1308071))

(declare-fun m!1308073 () Bool)

(assert (=> b!1146555 m!1308073))

(declare-fun m!1308075 () Bool)

(assert (=> b!1146555 m!1308075))

(assert (=> b!1146555 m!1308073))

(assert (=> b!1146555 m!1308075))

(declare-fun m!1308077 () Bool)

(assert (=> b!1146555 m!1308077))

(declare-fun m!1308079 () Bool)

(assert (=> b!1146555 m!1308079))

(assert (=> d!326355 m!1308067))

(assert (=> d!326355 m!1308067))

(declare-fun m!1308081 () Bool)

(assert (=> d!326355 m!1308081))

(assert (=> d!325959 d!326355))

(declare-fun d!326357 () Bool)

(declare-fun c!192535 () Bool)

(assert (=> d!326357 (= c!192535 ((_ is Node!3555) (left!9613 (c!192327 (tokens!1490 pt!21)))))))

(declare-fun e!732907 () Bool)

(assert (=> d!326357 (= (inv!14415 (left!9613 (c!192327 (tokens!1490 pt!21)))) e!732907)))

(declare-fun b!1146557 () Bool)

(assert (=> b!1146557 (= e!732907 (inv!14425 (left!9613 (c!192327 (tokens!1490 pt!21)))))))

(declare-fun b!1146558 () Bool)

(declare-fun e!732908 () Bool)

(assert (=> b!1146558 (= e!732907 e!732908)))

(declare-fun res!515735 () Bool)

(assert (=> b!1146558 (= res!515735 (not ((_ is Leaf!5518) (left!9613 (c!192327 (tokens!1490 pt!21))))))))

(assert (=> b!1146558 (=> res!515735 e!732908)))

(declare-fun b!1146559 () Bool)

(assert (=> b!1146559 (= e!732908 (inv!14426 (left!9613 (c!192327 (tokens!1490 pt!21)))))))

(assert (= (and d!326357 c!192535) b!1146557))

(assert (= (and d!326357 (not c!192535)) b!1146558))

(assert (= (and b!1146558 (not res!515735)) b!1146559))

(declare-fun m!1308083 () Bool)

(assert (=> b!1146557 m!1308083))

(declare-fun m!1308085 () Bool)

(assert (=> b!1146559 m!1308085))

(assert (=> b!1145467 d!326357))

(declare-fun d!326359 () Bool)

(declare-fun c!192536 () Bool)

(assert (=> d!326359 (= c!192536 ((_ is Node!3555) (right!9943 (c!192327 (tokens!1490 pt!21)))))))

(declare-fun e!732909 () Bool)

(assert (=> d!326359 (= (inv!14415 (right!9943 (c!192327 (tokens!1490 pt!21)))) e!732909)))

(declare-fun b!1146560 () Bool)

(assert (=> b!1146560 (= e!732909 (inv!14425 (right!9943 (c!192327 (tokens!1490 pt!21)))))))

(declare-fun b!1146561 () Bool)

(declare-fun e!732910 () Bool)

(assert (=> b!1146561 (= e!732909 e!732910)))

(declare-fun res!515736 () Bool)

(assert (=> b!1146561 (= res!515736 (not ((_ is Leaf!5518) (right!9943 (c!192327 (tokens!1490 pt!21))))))))

(assert (=> b!1146561 (=> res!515736 e!732910)))

(declare-fun b!1146562 () Bool)

(assert (=> b!1146562 (= e!732910 (inv!14426 (right!9943 (c!192327 (tokens!1490 pt!21)))))))

(assert (= (and d!326359 c!192536) b!1146560))

(assert (= (and d!326359 (not c!192536)) b!1146561))

(assert (= (and b!1146561 (not res!515736)) b!1146562))

(declare-fun m!1308087 () Bool)

(assert (=> b!1146560 m!1308087))

(declare-fun m!1308089 () Bool)

(assert (=> b!1146562 m!1308089))

(assert (=> b!1145467 d!326359))

(declare-fun b!1146563 () Bool)

(declare-fun e!732915 () Bool)

(declare-fun lt!388879 () List!11075)

(assert (=> b!1146563 (= e!732915 (<= (+ lt!388067 1) (size!8680 lt!388879)))))

(declare-fun lt!388878 () Bool)

(declare-fun d!326361 () Bool)

(assert (=> d!326361 (= lt!388878 (tokensListTwoByTwoPredicateSeparableList!78 lt!388058 (dropList!301 (tokens!1490 pt!21) (+ lt!388067 1)) (rules!9316 pt!21)))))

(declare-fun lt!388873 () Unit!16973)

(declare-fun lt!388866 () Unit!16973)

(assert (=> d!326361 (= lt!388873 lt!388866)))

(declare-fun lt!388859 () List!11075)

(assert (=> d!326361 (rulesProduceEachTokenIndividuallyList!479 lt!388058 (rules!9316 pt!21) lt!388859)))

(declare-fun lt!388852 () List!11075)

(assert (=> d!326361 (= lt!388866 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!13 lt!388058 (rules!9316 pt!21) lt!388852 lt!388859))))

(declare-fun e!732914 () Bool)

(assert (=> d!326361 e!732914))

(declare-fun res!515741 () Bool)

(assert (=> d!326361 (=> (not res!515741) (not e!732914))))

(assert (=> d!326361 (= res!515741 ((_ is Lexer!1602) lt!388058))))

(assert (=> d!326361 (= lt!388859 (dropList!301 (tokens!1490 pt!21) (+ lt!388067 1)))))

(assert (=> d!326361 (= lt!388852 (list!4049 (tokens!1490 pt!21)))))

(declare-fun lt!388877 () Unit!16973)

(declare-fun lt!388855 () Unit!16973)

(assert (=> d!326361 (= lt!388877 lt!388855)))

(assert (=> d!326361 (subseq!181 (drop!430 lt!388879 (+ lt!388067 1)) lt!388879)))

(assert (=> d!326361 (= lt!388855 (lemmaDropSubSeq!13 lt!388879 (+ lt!388067 1)))))

(assert (=> d!326361 e!732915))

(declare-fun res!515739 () Bool)

(assert (=> d!326361 (=> (not res!515739) (not e!732915))))

(assert (=> d!326361 (= res!515739 (>= (+ lt!388067 1) 0))))

(assert (=> d!326361 (= lt!388879 (list!4049 (tokens!1490 pt!21)))))

(declare-fun e!732911 () Bool)

(assert (=> d!326361 (= lt!388878 e!732911)))

(declare-fun res!515740 () Bool)

(assert (=> d!326361 (=> res!515740 e!732911)))

(assert (=> d!326361 (= res!515740 (not (< (+ lt!388067 1) (- (size!8670 (tokens!1490 pt!21)) 1))))))

(declare-fun e!732912 () Bool)

(assert (=> d!326361 e!732912))

(declare-fun res!515737 () Bool)

(assert (=> d!326361 (=> (not res!515737) (not e!732912))))

(assert (=> d!326361 (= res!515737 (>= (+ lt!388067 1) 0))))

(assert (=> d!326361 (= (tokensListTwoByTwoPredicateSeparable!33 lt!388058 (tokens!1490 pt!21) (+ lt!388067 1) (rules!9316 pt!21)) lt!388878)))

(declare-fun b!1146564 () Bool)

(declare-fun res!515743 () Bool)

(assert (=> b!1146564 (=> (not res!515743) (not e!732914))))

(assert (=> b!1146564 (= res!515743 (rulesInvariant!1478 lt!388058 (rules!9316 pt!21)))))

(declare-fun b!1146565 () Bool)

(assert (=> b!1146565 (= e!732914 (rulesProduceEachTokenIndividuallyList!479 lt!388058 (rules!9316 pt!21) lt!388852))))

(declare-fun b!1146566 () Bool)

(assert (=> b!1146566 (= e!732912 (<= (+ lt!388067 1) (size!8670 (tokens!1490 pt!21))))))

(declare-fun b!1146567 () Bool)

(declare-fun e!732913 () Bool)

(assert (=> b!1146567 (= e!732911 e!732913)))

(declare-fun res!515744 () Bool)

(assert (=> b!1146567 (=> (not res!515744) (not e!732913))))

(assert (=> b!1146567 (= res!515744 (separableTokensPredicate!102 lt!388058 (apply!2353 (tokens!1490 pt!21) (+ lt!388067 1)) (apply!2353 (tokens!1490 pt!21) (+ lt!388067 1 1)) (rules!9316 pt!21)))))

(declare-fun lt!388854 () Unit!16973)

(declare-fun Unit!17015 () Unit!16973)

(assert (=> b!1146567 (= lt!388854 Unit!17015)))

(assert (=> b!1146567 (> (size!8673 (charsOf!1040 (apply!2353 (tokens!1490 pt!21) (+ lt!388067 1 1)))) 0)))

(declare-fun lt!388851 () Unit!16973)

(declare-fun Unit!17016 () Unit!16973)

(assert (=> b!1146567 (= lt!388851 Unit!17016)))

(assert (=> b!1146567 (rulesProduceIndividualToken!651 lt!388058 (rules!9316 pt!21) (apply!2353 (tokens!1490 pt!21) (+ lt!388067 1 1)))))

(declare-fun lt!388865 () Unit!16973)

(declare-fun Unit!17017 () Unit!16973)

(assert (=> b!1146567 (= lt!388865 Unit!17017)))

(assert (=> b!1146567 (rulesProduceIndividualToken!651 lt!388058 (rules!9316 pt!21) (apply!2353 (tokens!1490 pt!21) (+ lt!388067 1)))))

(declare-fun lt!388860 () Unit!16973)

(declare-fun lt!388874 () Unit!16973)

(assert (=> b!1146567 (= lt!388860 lt!388874)))

(declare-fun lt!388875 () Token!3472)

(assert (=> b!1146567 (rulesProduceIndividualToken!651 lt!388058 (rules!9316 pt!21) lt!388875)))

(declare-fun lt!388870 () List!11075)

(assert (=> b!1146567 (= lt!388874 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!261 lt!388058 (rules!9316 pt!21) lt!388870 lt!388875))))

(assert (=> b!1146567 (= lt!388875 (apply!2353 (tokens!1490 pt!21) (+ lt!388067 1 1)))))

(assert (=> b!1146567 (= lt!388870 (list!4049 (tokens!1490 pt!21)))))

(declare-fun lt!388862 () Unit!16973)

(declare-fun lt!388872 () Unit!16973)

(assert (=> b!1146567 (= lt!388862 lt!388872)))

(declare-fun lt!388847 () Token!3472)

(assert (=> b!1146567 (rulesProduceIndividualToken!651 lt!388058 (rules!9316 pt!21) lt!388847)))

(declare-fun lt!388853 () List!11075)

(assert (=> b!1146567 (= lt!388872 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!261 lt!388058 (rules!9316 pt!21) lt!388853 lt!388847))))

(assert (=> b!1146567 (= lt!388847 (apply!2353 (tokens!1490 pt!21) (+ lt!388067 1)))))

(assert (=> b!1146567 (= lt!388853 (list!4049 (tokens!1490 pt!21)))))

(declare-fun lt!388876 () Unit!16973)

(declare-fun lt!388863 () Unit!16973)

(assert (=> b!1146567 (= lt!388876 lt!388863)))

(declare-fun lt!388856 () List!11075)

(declare-fun lt!388867 () Int)

(assert (=> b!1146567 (= (tail!1644 (drop!430 lt!388856 lt!388867)) (drop!430 lt!388856 (+ lt!388867 1)))))

(assert (=> b!1146567 (= lt!388863 (lemmaDropTail!331 lt!388856 lt!388867))))

(assert (=> b!1146567 (= lt!388867 (+ lt!388067 1 1))))

(assert (=> b!1146567 (= lt!388856 (list!4049 (tokens!1490 pt!21)))))

(declare-fun lt!388871 () Unit!16973)

(declare-fun lt!388864 () Unit!16973)

(assert (=> b!1146567 (= lt!388871 lt!388864)))

(declare-fun lt!388850 () List!11075)

(assert (=> b!1146567 (= (tail!1644 (drop!430 lt!388850 (+ lt!388067 1))) (drop!430 lt!388850 (+ lt!388067 1 1)))))

(assert (=> b!1146567 (= lt!388864 (lemmaDropTail!331 lt!388850 (+ lt!388067 1)))))

(assert (=> b!1146567 (= lt!388850 (list!4049 (tokens!1490 pt!21)))))

(declare-fun lt!388857 () Unit!16973)

(declare-fun lt!388858 () Unit!16973)

(assert (=> b!1146567 (= lt!388857 lt!388858)))

(declare-fun lt!388848 () List!11075)

(declare-fun lt!388861 () Int)

(assert (=> b!1146567 (= (head!2070 (drop!430 lt!388848 lt!388861)) (apply!2354 lt!388848 lt!388861))))

(assert (=> b!1146567 (= lt!388858 (lemmaDropApply!343 lt!388848 lt!388861))))

(assert (=> b!1146567 (= lt!388861 (+ lt!388067 1 1))))

(assert (=> b!1146567 (= lt!388848 (list!4049 (tokens!1490 pt!21)))))

(declare-fun lt!388869 () Unit!16973)

(declare-fun lt!388849 () Unit!16973)

(assert (=> b!1146567 (= lt!388869 lt!388849)))

(declare-fun lt!388868 () List!11075)

(assert (=> b!1146567 (= (head!2070 (drop!430 lt!388868 (+ lt!388067 1))) (apply!2354 lt!388868 (+ lt!388067 1)))))

(assert (=> b!1146567 (= lt!388849 (lemmaDropApply!343 lt!388868 (+ lt!388067 1)))))

(assert (=> b!1146567 (= lt!388868 (list!4049 (tokens!1490 pt!21)))))

(declare-fun b!1146568 () Bool)

(declare-fun res!515742 () Bool)

(assert (=> b!1146568 (=> (not res!515742) (not e!732914))))

(assert (=> b!1146568 (= res!515742 (subseq!181 lt!388859 lt!388852))))

(declare-fun b!1146569 () Bool)

(declare-fun res!515738 () Bool)

(assert (=> b!1146569 (=> (not res!515738) (not e!732914))))

(assert (=> b!1146569 (= res!515738 (not (isEmpty!6858 (rules!9316 pt!21))))))

(declare-fun b!1146570 () Bool)

(assert (=> b!1146570 (= e!732913 (tokensListTwoByTwoPredicateSeparable!33 lt!388058 (tokens!1490 pt!21) (+ lt!388067 1 1) (rules!9316 pt!21)))))

(assert (= (and d!326361 res!515737) b!1146566))

(assert (= (and d!326361 (not res!515740)) b!1146567))

(assert (= (and b!1146567 res!515744) b!1146570))

(assert (= (and d!326361 res!515739) b!1146563))

(assert (= (and d!326361 res!515741) b!1146569))

(assert (= (and b!1146569 res!515738) b!1146564))

(assert (= (and b!1146564 res!515743) b!1146568))

(assert (= (and b!1146568 res!515742) b!1146565))

(declare-fun m!1308091 () Bool)

(assert (=> b!1146564 m!1308091))

(assert (=> b!1146567 m!1306365))

(declare-fun m!1308093 () Bool)

(assert (=> b!1146567 m!1308093))

(declare-fun m!1308095 () Bool)

(assert (=> b!1146567 m!1308095))

(declare-fun m!1308097 () Bool)

(assert (=> b!1146567 m!1308097))

(declare-fun m!1308099 () Bool)

(assert (=> b!1146567 m!1308099))

(assert (=> b!1146567 m!1308099))

(declare-fun m!1308101 () Bool)

(assert (=> b!1146567 m!1308101))

(declare-fun m!1308103 () Bool)

(assert (=> b!1146567 m!1308103))

(declare-fun m!1308105 () Bool)

(assert (=> b!1146567 m!1308105))

(declare-fun m!1308107 () Bool)

(assert (=> b!1146567 m!1308107))

(declare-fun m!1308109 () Bool)

(assert (=> b!1146567 m!1308109))

(declare-fun m!1308111 () Bool)

(assert (=> b!1146567 m!1308111))

(declare-fun m!1308113 () Bool)

(assert (=> b!1146567 m!1308113))

(declare-fun m!1308115 () Bool)

(assert (=> b!1146567 m!1308115))

(declare-fun m!1308117 () Bool)

(assert (=> b!1146567 m!1308117))

(declare-fun m!1308119 () Bool)

(assert (=> b!1146567 m!1308119))

(assert (=> b!1146567 m!1306365))

(assert (=> b!1146567 m!1306371))

(assert (=> b!1146567 m!1308115))

(declare-fun m!1308121 () Bool)

(assert (=> b!1146567 m!1308121))

(declare-fun m!1308123 () Bool)

(assert (=> b!1146567 m!1308123))

(declare-fun m!1308125 () Bool)

(assert (=> b!1146567 m!1308125))

(declare-fun m!1308127 () Bool)

(assert (=> b!1146567 m!1308127))

(declare-fun m!1308129 () Bool)

(assert (=> b!1146567 m!1308129))

(declare-fun m!1308131 () Bool)

(assert (=> b!1146567 m!1308131))

(assert (=> b!1146567 m!1308103))

(declare-fun m!1308133 () Bool)

(assert (=> b!1146567 m!1308133))

(assert (=> b!1146567 m!1308121))

(declare-fun m!1308135 () Bool)

(assert (=> b!1146567 m!1308135))

(assert (=> b!1146567 m!1306281))

(declare-fun m!1308137 () Bool)

(assert (=> b!1146567 m!1308137))

(assert (=> b!1146567 m!1306365))

(assert (=> b!1146567 m!1308115))

(declare-fun m!1308139 () Bool)

(assert (=> b!1146567 m!1308139))

(assert (=> b!1146567 m!1308115))

(assert (=> b!1146567 m!1308123))

(declare-fun m!1308141 () Bool)

(assert (=> b!1146567 m!1308141))

(assert (=> b!1146567 m!1308109))

(declare-fun m!1308143 () Bool)

(assert (=> b!1146563 m!1308143))

(declare-fun m!1308145 () Bool)

(assert (=> b!1146565 m!1308145))

(assert (=> b!1146566 m!1306265))

(declare-fun m!1308147 () Bool)

(assert (=> b!1146568 m!1308147))

(assert (=> d!326361 m!1306265))

(declare-fun m!1308149 () Bool)

(assert (=> d!326361 m!1308149))

(declare-fun m!1308151 () Bool)

(assert (=> d!326361 m!1308151))

(declare-fun m!1308153 () Bool)

(assert (=> d!326361 m!1308153))

(assert (=> d!326361 m!1306281))

(assert (=> d!326361 m!1308151))

(declare-fun m!1308155 () Bool)

(assert (=> d!326361 m!1308155))

(declare-fun m!1308157 () Bool)

(assert (=> d!326361 m!1308157))

(declare-fun m!1308159 () Bool)

(assert (=> d!326361 m!1308159))

(assert (=> d!326361 m!1308157))

(declare-fun m!1308161 () Bool)

(assert (=> d!326361 m!1308161))

(declare-fun m!1308163 () Bool)

(assert (=> b!1146570 m!1308163))

(assert (=> b!1146569 m!1306527))

(assert (=> b!1145350 d!326361))

(declare-fun d!326363 () Bool)

(declare-fun lt!388880 () Int)

(assert (=> d!326363 (contains!1976 (list!4047 indices!2) lt!388880)))

(declare-fun e!732917 () Int)

(assert (=> d!326363 (= lt!388880 e!732917)))

(declare-fun c!192537 () Bool)

(assert (=> d!326363 (= c!192537 (= 0 0))))

(declare-fun e!732916 () Bool)

(assert (=> d!326363 e!732916))

(declare-fun res!515745 () Bool)

(assert (=> d!326363 (=> (not res!515745) (not e!732916))))

(assert (=> d!326363 (= res!515745 (<= 0 0))))

(assert (=> d!326363 (= (apply!2351 (list!4047 indices!2) 0) lt!388880)))

(declare-fun b!1146571 () Bool)

(assert (=> b!1146571 (= e!732916 (< 0 (size!8674 (list!4047 indices!2))))))

(declare-fun b!1146572 () Bool)

(assert (=> b!1146572 (= e!732917 (head!2072 (list!4047 indices!2)))))

(declare-fun b!1146573 () Bool)

(assert (=> b!1146573 (= e!732917 (apply!2351 (tail!1646 (list!4047 indices!2)) (- 0 1)))))

(assert (= (and d!326363 res!515745) b!1146571))

(assert (= (and d!326363 c!192537) b!1146572))

(assert (= (and d!326363 (not c!192537)) b!1146573))

(assert (=> d!326363 m!1306097))

(declare-fun m!1308165 () Bool)

(assert (=> d!326363 m!1308165))

(assert (=> b!1146571 m!1306097))

(assert (=> b!1146571 m!1306419))

(assert (=> b!1146572 m!1306097))

(assert (=> b!1146572 m!1306621))

(assert (=> b!1146573 m!1306097))

(assert (=> b!1146573 m!1306623))

(assert (=> b!1146573 m!1306623))

(declare-fun m!1308167 () Bool)

(assert (=> b!1146573 m!1308167))

(assert (=> d!325933 d!326363))

(assert (=> d!325933 d!326013))

(declare-fun b!1146574 () Bool)

(declare-fun e!732921 () Int)

(assert (=> b!1146574 (= e!732921 (- 0 (size!8675 (left!9615 (c!192329 indices!2)))))))

(declare-fun bm!81672 () Bool)

(declare-fun c!192539 () Bool)

(declare-fun c!192540 () Bool)

(assert (=> bm!81672 (= c!192539 c!192540)))

(declare-fun call!81677 () Int)

(assert (=> bm!81672 (= call!81677 (apply!2352 (ite c!192540 (left!9615 (c!192329 indices!2)) (right!9945 (c!192329 indices!2))) e!732921))))

(declare-fun b!1146575 () Bool)

(declare-fun e!732920 () Bool)

(assert (=> b!1146575 (= e!732920 (< 0 (size!8675 (c!192329 indices!2))))))

(declare-fun b!1146577 () Bool)

(declare-fun e!732919 () Int)

(assert (=> b!1146577 (= e!732919 (apply!2356 (xs!6258 (c!192329 indices!2)) 0))))

(declare-fun b!1146578 () Bool)

(declare-fun e!732918 () Int)

(assert (=> b!1146578 (= e!732918 call!81677)))

(declare-fun d!326365 () Bool)

(declare-fun lt!388882 () Int)

(assert (=> d!326365 (= lt!388882 (apply!2351 (list!4052 (c!192329 indices!2)) 0))))

(assert (=> d!326365 (= lt!388882 e!732919)))

(declare-fun c!192538 () Bool)

(assert (=> d!326365 (= c!192538 ((_ is Leaf!5520) (c!192329 indices!2)))))

(assert (=> d!326365 e!732920))

(declare-fun res!515746 () Bool)

(assert (=> d!326365 (=> (not res!515746) (not e!732920))))

(assert (=> d!326365 (= res!515746 (<= 0 0))))

(assert (=> d!326365 (= (apply!2352 (c!192329 indices!2) 0) lt!388882)))

(declare-fun b!1146576 () Bool)

(assert (=> b!1146576 (= e!732921 0)))

(declare-fun b!1146579 () Bool)

(assert (=> b!1146579 (= e!732919 e!732918)))

(declare-fun lt!388881 () Bool)

(assert (=> b!1146579 (= lt!388881 (appendIndex!105 (list!4052 (left!9615 (c!192329 indices!2))) (list!4052 (right!9945 (c!192329 indices!2))) 0))))

(assert (=> b!1146579 (= c!192540 (< 0 (size!8675 (left!9615 (c!192329 indices!2)))))))

(declare-fun b!1146580 () Bool)

(assert (=> b!1146580 (= e!732918 call!81677)))

(assert (= (and d!326365 res!515746) b!1146575))

(assert (= (and d!326365 c!192538) b!1146577))

(assert (= (and d!326365 (not c!192538)) b!1146579))

(assert (= (and b!1146579 c!192540) b!1146578))

(assert (= (and b!1146579 (not c!192540)) b!1146580))

(assert (= (or b!1146578 b!1146580) bm!81672))

(assert (= (and bm!81672 c!192539) b!1146576))

(assert (= (and bm!81672 (not c!192539)) b!1146574))

(declare-fun m!1308169 () Bool)

(assert (=> b!1146577 m!1308169))

(assert (=> b!1146575 m!1306421))

(declare-fun m!1308171 () Bool)

(assert (=> bm!81672 m!1308171))

(assert (=> d!326365 m!1306631))

(assert (=> d!326365 m!1306631))

(declare-fun m!1308173 () Bool)

(assert (=> d!326365 m!1308173))

(assert (=> b!1146574 m!1306659))

(assert (=> b!1146579 m!1306661))

(assert (=> b!1146579 m!1306663))

(assert (=> b!1146579 m!1306661))

(assert (=> b!1146579 m!1306663))

(declare-fun m!1308175 () Bool)

(assert (=> b!1146579 m!1308175))

(assert (=> b!1146579 m!1306659))

(assert (=> d!325933 d!326365))

(declare-fun d!326367 () Bool)

(declare-fun res!515751 () Bool)

(declare-fun e!732924 () Bool)

(assert (=> d!326367 (=> (not res!515751) (not e!732924))))

(declare-fun list!4060 (IArray!7115) List!11075)

(assert (=> d!326367 (= res!515751 (<= (size!8680 (list!4060 (xs!6256 (c!192327 (tokens!1490 pt!21))))) 512))))

(assert (=> d!326367 (= (inv!14426 (c!192327 (tokens!1490 pt!21))) e!732924)))

(declare-fun b!1146585 () Bool)

(declare-fun res!515752 () Bool)

(assert (=> b!1146585 (=> (not res!515752) (not e!732924))))

(assert (=> b!1146585 (= res!515752 (= (csize!7341 (c!192327 (tokens!1490 pt!21))) (size!8680 (list!4060 (xs!6256 (c!192327 (tokens!1490 pt!21)))))))))

(declare-fun b!1146586 () Bool)

(assert (=> b!1146586 (= e!732924 (and (> (csize!7341 (c!192327 (tokens!1490 pt!21))) 0) (<= (csize!7341 (c!192327 (tokens!1490 pt!21))) 512)))))

(assert (= (and d!326367 res!515751) b!1146585))

(assert (= (and b!1146585 res!515752) b!1146586))

(declare-fun m!1308177 () Bool)

(assert (=> d!326367 m!1308177))

(assert (=> d!326367 m!1308177))

(declare-fun m!1308179 () Bool)

(assert (=> d!326367 m!1308179))

(assert (=> b!1146585 m!1308177))

(assert (=> b!1146585 m!1308177))

(assert (=> b!1146585 m!1308179))

(assert (=> b!1145240 d!326367))

(declare-fun d!326369 () Bool)

(declare-fun res!515753 () Bool)

(declare-fun e!732925 () Bool)

(assert (=> d!326369 (=> res!515753 e!732925)))

(assert (=> d!326369 (= res!515753 ((_ is Nil!11053) (++!2950 (list!4044 acc!225) (Cons!11053 lt!387686 Nil!11053))))))

(assert (=> d!326369 (= (forall!2756 (++!2950 (list!4044 acc!225) (Cons!11053 lt!387686 Nil!11053)) lambda!46085) e!732925)))

(declare-fun b!1146587 () Bool)

(declare-fun e!732926 () Bool)

(assert (=> b!1146587 (= e!732925 e!732926)))

(declare-fun res!515754 () Bool)

(assert (=> b!1146587 (=> (not res!515754) (not e!732926))))

(assert (=> b!1146587 (= res!515754 (dynLambda!4891 lambda!46085 (h!16454 (++!2950 (list!4044 acc!225) (Cons!11053 lt!387686 Nil!11053)))))))

(declare-fun b!1146588 () Bool)

(assert (=> b!1146588 (= e!732926 (forall!2756 (t!107999 (++!2950 (list!4044 acc!225) (Cons!11053 lt!387686 Nil!11053))) lambda!46085))))

(assert (= (and d!326369 (not res!515753)) b!1146587))

(assert (= (and b!1146587 res!515754) b!1146588))

(declare-fun b_lambda!34121 () Bool)

(assert (=> (not b_lambda!34121) (not b!1146587)))

(declare-fun m!1308181 () Bool)

(assert (=> b!1146587 m!1308181))

(declare-fun m!1308183 () Bool)

(assert (=> b!1146588 m!1308183))

(assert (=> d!325967 d!326369))

(declare-fun b!1146599 () Bool)

(declare-fun res!515760 () Bool)

(declare-fun e!732931 () Bool)

(assert (=> b!1146599 (=> (not res!515760) (not e!732931))))

(declare-fun lt!388885 () List!11077)

(assert (=> b!1146599 (= res!515760 (= (size!8682 lt!388885) (+ (size!8682 (list!4044 acc!225)) (size!8682 (Cons!11053 lt!387686 Nil!11053)))))))

(declare-fun b!1146598 () Bool)

(declare-fun e!732932 () List!11077)

(assert (=> b!1146598 (= e!732932 (Cons!11053 (h!16454 (list!4044 acc!225)) (++!2950 (t!107999 (list!4044 acc!225)) (Cons!11053 lt!387686 Nil!11053))))))

(declare-fun b!1146597 () Bool)

(assert (=> b!1146597 (= e!732932 (Cons!11053 lt!387686 Nil!11053))))

(declare-fun d!326371 () Bool)

(assert (=> d!326371 e!732931))

(declare-fun res!515759 () Bool)

(assert (=> d!326371 (=> (not res!515759) (not e!732931))))

(assert (=> d!326371 (= res!515759 (= (content!1592 lt!388885) ((_ map or) (content!1592 (list!4044 acc!225)) (content!1592 (Cons!11053 lt!387686 Nil!11053)))))))

(assert (=> d!326371 (= lt!388885 e!732932)))

(declare-fun c!192543 () Bool)

(assert (=> d!326371 (= c!192543 ((_ is Nil!11053) (list!4044 acc!225)))))

(assert (=> d!326371 (= (++!2950 (list!4044 acc!225) (Cons!11053 lt!387686 Nil!11053)) lt!388885)))

(declare-fun b!1146600 () Bool)

(assert (=> b!1146600 (= e!732931 (or (not (= (Cons!11053 lt!387686 Nil!11053) Nil!11053)) (= lt!388885 (list!4044 acc!225))))))

(assert (= (and d!326371 c!192543) b!1146597))

(assert (= (and d!326371 (not c!192543)) b!1146598))

(assert (= (and d!326371 res!515759) b!1146599))

(assert (= (and b!1146599 res!515760) b!1146600))

(declare-fun m!1308185 () Bool)

(assert (=> b!1146599 m!1308185))

(assert (=> b!1146599 m!1306049))

(assert (=> b!1146599 m!1307931))

(declare-fun m!1308187 () Bool)

(assert (=> b!1146599 m!1308187))

(declare-fun m!1308189 () Bool)

(assert (=> b!1146598 m!1308189))

(declare-fun m!1308191 () Bool)

(assert (=> d!326371 m!1308191))

(assert (=> d!326371 m!1306049))

(assert (=> d!326371 m!1307937))

(declare-fun m!1308193 () Bool)

(assert (=> d!326371 m!1308193))

(assert (=> d!325967 d!326371))

(declare-fun d!326373 () Bool)

(assert (=> d!326373 (forall!2756 (++!2950 (list!4044 acc!225) (Cons!11053 lt!387686 Nil!11053)) lambda!46085)))

(assert (=> d!326373 true))

(declare-fun _$78!254 () Unit!16973)

(assert (=> d!326373 (= (choose!7348 (list!4044 acc!225) (Cons!11053 lt!387686 Nil!11053) lambda!46085) _$78!254)))

(declare-fun bs!281140 () Bool)

(assert (= bs!281140 d!326373))

(assert (=> bs!281140 m!1306049))

(assert (=> bs!281140 m!1306477))

(assert (=> bs!281140 m!1306477))

(assert (=> bs!281140 m!1306479))

(assert (=> d!325967 d!326373))

(declare-fun d!326375 () Bool)

(declare-fun res!515761 () Bool)

(declare-fun e!732933 () Bool)

(assert (=> d!326375 (=> res!515761 e!732933)))

(assert (=> d!326375 (= res!515761 ((_ is Nil!11053) (list!4044 acc!225)))))

(assert (=> d!326375 (= (forall!2756 (list!4044 acc!225) lambda!46085) e!732933)))

(declare-fun b!1146601 () Bool)

(declare-fun e!732934 () Bool)

(assert (=> b!1146601 (= e!732933 e!732934)))

(declare-fun res!515762 () Bool)

(assert (=> b!1146601 (=> (not res!515762) (not e!732934))))

(assert (=> b!1146601 (= res!515762 (dynLambda!4891 lambda!46085 (h!16454 (list!4044 acc!225))))))

(declare-fun b!1146602 () Bool)

(assert (=> b!1146602 (= e!732934 (forall!2756 (t!107999 (list!4044 acc!225)) lambda!46085))))

(assert (= (and d!326375 (not res!515761)) b!1146601))

(assert (= (and b!1146601 res!515762) b!1146602))

(declare-fun b_lambda!34123 () Bool)

(assert (=> (not b_lambda!34123) (not b!1146601)))

(declare-fun m!1308195 () Bool)

(assert (=> b!1146601 m!1308195))

(declare-fun m!1308197 () Bool)

(assert (=> b!1146602 m!1308197))

(assert (=> d!325967 d!326375))

(declare-fun d!326377 () Bool)

(declare-fun res!515769 () Bool)

(declare-fun e!732937 () Bool)

(assert (=> d!326377 (=> (not res!515769) (not e!732937))))

(assert (=> d!326377 (= res!515769 (= (csize!7340 (c!192327 (tokens!1490 pt!21))) (+ (size!8681 (left!9613 (c!192327 (tokens!1490 pt!21)))) (size!8681 (right!9943 (c!192327 (tokens!1490 pt!21)))))))))

(assert (=> d!326377 (= (inv!14425 (c!192327 (tokens!1490 pt!21))) e!732937)))

(declare-fun b!1146609 () Bool)

(declare-fun res!515770 () Bool)

(assert (=> b!1146609 (=> (not res!515770) (not e!732937))))

(assert (=> b!1146609 (= res!515770 (and (not (= (left!9613 (c!192327 (tokens!1490 pt!21))) Empty!3555)) (not (= (right!9943 (c!192327 (tokens!1490 pt!21))) Empty!3555))))))

(declare-fun b!1146610 () Bool)

(declare-fun res!515771 () Bool)

(assert (=> b!1146610 (=> (not res!515771) (not e!732937))))

(declare-fun height!481 (Conc!3555) Int)

(assert (=> b!1146610 (= res!515771 (= (cheight!3766 (c!192327 (tokens!1490 pt!21))) (+ (max!0 (height!481 (left!9613 (c!192327 (tokens!1490 pt!21)))) (height!481 (right!9943 (c!192327 (tokens!1490 pt!21))))) 1)))))

(declare-fun b!1146611 () Bool)

(assert (=> b!1146611 (= e!732937 (<= 0 (cheight!3766 (c!192327 (tokens!1490 pt!21)))))))

(assert (= (and d!326377 res!515769) b!1146609))

(assert (= (and b!1146609 res!515770) b!1146610))

(assert (= (and b!1146610 res!515771) b!1146611))

(declare-fun m!1308199 () Bool)

(assert (=> d!326377 m!1308199))

(declare-fun m!1308201 () Bool)

(assert (=> d!326377 m!1308201))

(declare-fun m!1308203 () Bool)

(assert (=> b!1146610 m!1308203))

(declare-fun m!1308205 () Bool)

(assert (=> b!1146610 m!1308205))

(assert (=> b!1146610 m!1308203))

(assert (=> b!1146610 m!1308205))

(declare-fun m!1308207 () Bool)

(assert (=> b!1146610 m!1308207))

(assert (=> b!1145238 d!326377))

(declare-fun d!326379 () Bool)

(declare-fun c!192548 () Bool)

(assert (=> d!326379 (= c!192548 ((_ is Empty!3556) (c!192328 acc!225)))))

(declare-fun e!732942 () List!11077)

(assert (=> d!326379 (= (list!4050 (c!192328 acc!225)) e!732942)))

(declare-fun b!1146620 () Bool)

(assert (=> b!1146620 (= e!732942 Nil!11053)))

(declare-fun b!1146621 () Bool)

(declare-fun e!732943 () List!11077)

(assert (=> b!1146621 (= e!732942 e!732943)))

(declare-fun c!192549 () Bool)

(assert (=> b!1146621 (= c!192549 ((_ is Leaf!5519) (c!192328 acc!225)))))

(declare-fun b!1146623 () Bool)

(assert (=> b!1146623 (= e!732943 (++!2950 (list!4050 (left!9614 (c!192328 acc!225))) (list!4050 (right!9944 (c!192328 acc!225)))))))

(declare-fun b!1146622 () Bool)

(assert (=> b!1146622 (= e!732943 (list!4054 (xs!6257 (c!192328 acc!225))))))

(assert (= (and d!326379 c!192548) b!1146620))

(assert (= (and d!326379 (not c!192548)) b!1146621))

(assert (= (and b!1146621 c!192549) b!1146622))

(assert (= (and b!1146621 (not c!192549)) b!1146623))

(assert (=> b!1146623 m!1306781))

(declare-fun m!1308209 () Bool)

(assert (=> b!1146623 m!1308209))

(assert (=> b!1146623 m!1306781))

(assert (=> b!1146623 m!1308209))

(declare-fun m!1308211 () Bool)

(assert (=> b!1146623 m!1308211))

(assert (=> b!1146622 m!1306769))

(assert (=> d!325973 d!326379))

(declare-fun b!1146624 () Bool)

(declare-fun res!515776 () Bool)

(declare-fun e!732945 () Bool)

(assert (=> b!1146624 (=> (not res!515776) (not e!732945))))

(assert (=> b!1146624 (= res!515776 (<= (- (height!477 (left!9614 (c!192328 acc!225))) (height!477 (right!9944 (c!192328 acc!225)))) 1))))

(declare-fun b!1146625 () Bool)

(declare-fun e!732944 () Bool)

(assert (=> b!1146625 (= e!732944 e!732945)))

(declare-fun res!515773 () Bool)

(assert (=> b!1146625 (=> (not res!515773) (not e!732945))))

(assert (=> b!1146625 (= res!515773 (<= (- 1) (- (height!477 (left!9614 (c!192328 acc!225))) (height!477 (right!9944 (c!192328 acc!225))))))))

(declare-fun b!1146626 () Bool)

(declare-fun res!515775 () Bool)

(assert (=> b!1146626 (=> (not res!515775) (not e!732945))))

(assert (=> b!1146626 (= res!515775 (isBalanced!996 (right!9944 (c!192328 acc!225))))))

(declare-fun b!1146627 () Bool)

(declare-fun res!515777 () Bool)

(assert (=> b!1146627 (=> (not res!515777) (not e!732945))))

(assert (=> b!1146627 (= res!515777 (not (isEmpty!6860 (left!9614 (c!192328 acc!225)))))))

(declare-fun b!1146628 () Bool)

(declare-fun res!515774 () Bool)

(assert (=> b!1146628 (=> (not res!515774) (not e!732945))))

(assert (=> b!1146628 (= res!515774 (isBalanced!996 (left!9614 (c!192328 acc!225))))))

(declare-fun b!1146629 () Bool)

(assert (=> b!1146629 (= e!732945 (not (isEmpty!6860 (right!9944 (c!192328 acc!225)))))))

(declare-fun d!326381 () Bool)

(declare-fun res!515772 () Bool)

(assert (=> d!326381 (=> res!515772 e!732944)))

(assert (=> d!326381 (= res!515772 (not ((_ is Node!3556) (c!192328 acc!225))))))

(assert (=> d!326381 (= (isBalanced!996 (c!192328 acc!225)) e!732944)))

(assert (= (and d!326381 (not res!515772)) b!1146625))

(assert (= (and b!1146625 res!515773) b!1146624))

(assert (= (and b!1146624 res!515776) b!1146628))

(assert (= (and b!1146628 res!515774) b!1146626))

(assert (= (and b!1146626 res!515775) b!1146627))

(assert (= (and b!1146627 res!515777) b!1146629))

(assert (=> b!1146625 m!1306687))

(assert (=> b!1146625 m!1306689))

(declare-fun m!1308213 () Bool)

(assert (=> b!1146628 m!1308213))

(declare-fun m!1308215 () Bool)

(assert (=> b!1146629 m!1308215))

(declare-fun m!1308217 () Bool)

(assert (=> b!1146627 m!1308217))

(assert (=> b!1146624 m!1306687))

(assert (=> b!1146624 m!1306689))

(declare-fun m!1308219 () Bool)

(assert (=> b!1146626 m!1308219))

(assert (=> d!325989 d!326381))

(declare-fun bs!281141 () Bool)

(declare-fun d!326383 () Bool)

(assert (= bs!281141 (and d!326383 d!326121)))

(declare-fun lambda!46150 () Int)

(assert (=> bs!281141 (= (= lt!388120 lt!388069) (= lambda!46150 lambda!46126))))

(declare-fun bs!281142 () Bool)

(assert (= bs!281142 (and d!326383 d!326253)))

(assert (=> bs!281142 (= (= lt!388120 Lexer!1602) (= lambda!46150 lambda!46139))))

(declare-fun bs!281143 () Bool)

(assert (= bs!281143 (and d!326383 d!325935)))

(assert (=> bs!281143 (= (= lt!388120 Lexer!1602) (= lambda!46150 lambda!46111))))

(declare-fun bs!281144 () Bool)

(assert (= bs!281144 (and d!326383 d!326271)))

(assert (=> bs!281144 (= (= lt!388120 Lexer!1602) (= lambda!46150 lambda!46140))))

(declare-fun bs!281145 () Bool)

(assert (= bs!281145 (and d!326383 d!326039)))

(assert (=> bs!281145 (= (= lt!388120 lt!388077) (= lambda!46150 lambda!46114))))

(declare-fun bs!281146 () Bool)

(assert (= bs!281146 (and d!326383 d!326277)))

(assert (=> bs!281146 (= (= lt!388120 lt!388077) (= lambda!46150 lambda!46141))))

(declare-fun bs!281147 () Bool)

(assert (= bs!281147 (and d!326383 d!326325)))

(assert (=> bs!281147 (= (= lt!388120 lt!388115) (= lambda!46150 lambda!46146))))

(declare-fun bs!281148 () Bool)

(assert (= bs!281148 (and d!326383 b!1145950)))

(assert (=> bs!281148 (= (= lt!388120 Lexer!1602) (= lambda!46150 lambda!46123))))

(declare-fun bs!281149 () Bool)

(assert (= bs!281149 (and d!326383 d!326195)))

(assert (=> bs!281149 (= (= lt!388120 Lexer!1602) (= lambda!46150 lambda!46133))))

(declare-fun bs!281150 () Bool)

(assert (= bs!281150 (and d!326383 b!1145847)))

(assert (=> bs!281150 (= (= lt!388120 Lexer!1602) (= lambda!46150 lambda!46117))))

(declare-fun bs!281151 () Bool)

(assert (= bs!281151 (and d!326383 d!326199)))

(assert (=> bs!281151 (= (= lt!388120 Lexer!1602) (= lambda!46150 lambda!46138))))

(declare-fun b!1146634 () Bool)

(declare-fun e!732950 () Bool)

(assert (=> b!1146634 (= e!732950 true)))

(declare-fun b!1146633 () Bool)

(declare-fun e!732949 () Bool)

(assert (=> b!1146633 (= e!732949 e!732950)))

(declare-fun b!1146632 () Bool)

(declare-fun e!732948 () Bool)

(assert (=> b!1146632 (= e!732948 e!732949)))

(assert (=> d!326383 e!732948))

(assert (= b!1146633 b!1146634))

(assert (= b!1146632 b!1146633))

(assert (= (and d!326383 ((_ is Cons!11052) (rules!9316 pt!21))) b!1146632))

(assert (=> b!1146634 (< (dynLambda!4881 order!6751 (toValue!3002 (transformation!1905 (h!16453 (rules!9316 pt!21))))) (dynLambda!4882 order!6753 lambda!46150))))

(assert (=> b!1146634 (< (dynLambda!4883 order!6755 (toChars!2861 (transformation!1905 (h!16453 (rules!9316 pt!21))))) (dynLambda!4882 order!6753 lambda!46150))))

(assert (=> d!326383 true))

(declare-fun lt!388886 () Bool)

(assert (=> d!326383 (= lt!388886 (forall!2752 (t!107997 lt!388112) lambda!46150))))

(declare-fun e!732946 () Bool)

(assert (=> d!326383 (= lt!388886 e!732946)))

(declare-fun res!515778 () Bool)

(assert (=> d!326383 (=> res!515778 e!732946)))

(assert (=> d!326383 (= res!515778 (not ((_ is Cons!11051) (t!107997 lt!388112))))))

(assert (=> d!326383 (not (isEmpty!6858 (rules!9316 pt!21)))))

(assert (=> d!326383 (= (rulesProduceEachTokenIndividuallyList!479 lt!388120 (rules!9316 pt!21) (t!107997 lt!388112)) lt!388886)))

(declare-fun b!1146630 () Bool)

(declare-fun e!732947 () Bool)

(assert (=> b!1146630 (= e!732946 e!732947)))

(declare-fun res!515779 () Bool)

(assert (=> b!1146630 (=> (not res!515779) (not e!732947))))

(assert (=> b!1146630 (= res!515779 (rulesProduceIndividualToken!651 lt!388120 (rules!9316 pt!21) (h!16452 (t!107997 lt!388112))))))

(declare-fun b!1146631 () Bool)

(assert (=> b!1146631 (= e!732947 (rulesProduceEachTokenIndividuallyList!479 lt!388120 (rules!9316 pt!21) (t!107997 (t!107997 lt!388112))))))

(assert (= (and d!326383 (not res!515778)) b!1146630))

(assert (= (and b!1146630 res!515779) b!1146631))

(declare-fun m!1308221 () Bool)

(assert (=> d!326383 m!1308221))

(assert (=> d!326383 m!1306527))

(declare-fun m!1308223 () Bool)

(assert (=> b!1146630 m!1308223))

(declare-fun m!1308225 () Bool)

(assert (=> b!1146631 m!1308225))

(assert (=> b!1145363 d!326383))

(assert (=> b!1145227 d!325977))

(assert (=> b!1145261 d!325945))

(declare-fun d!326385 () Bool)

(declare-fun c!192550 () Bool)

(assert (=> d!326385 (= c!192550 ((_ is Node!3557) (left!9615 (c!192329 indices!2))))))

(declare-fun e!732951 () Bool)

(assert (=> d!326385 (= (inv!14417 (left!9615 (c!192329 indices!2))) e!732951)))

(declare-fun b!1146635 () Bool)

(assert (=> b!1146635 (= e!732951 (inv!14435 (left!9615 (c!192329 indices!2))))))

(declare-fun b!1146636 () Bool)

(declare-fun e!732952 () Bool)

(assert (=> b!1146636 (= e!732951 e!732952)))

(declare-fun res!515780 () Bool)

(assert (=> b!1146636 (= res!515780 (not ((_ is Leaf!5520) (left!9615 (c!192329 indices!2)))))))

(assert (=> b!1146636 (=> res!515780 e!732952)))

(declare-fun b!1146637 () Bool)

(assert (=> b!1146637 (= e!732952 (inv!14436 (left!9615 (c!192329 indices!2))))))

(assert (= (and d!326385 c!192550) b!1146635))

(assert (= (and d!326385 (not c!192550)) b!1146636))

(assert (= (and b!1146636 (not res!515780)) b!1146637))

(declare-fun m!1308227 () Bool)

(assert (=> b!1146635 m!1308227))

(declare-fun m!1308229 () Bool)

(assert (=> b!1146637 m!1308229))

(assert (=> b!1145476 d!326385))

(declare-fun d!326387 () Bool)

(declare-fun c!192551 () Bool)

(assert (=> d!326387 (= c!192551 ((_ is Node!3557) (right!9945 (c!192329 indices!2))))))

(declare-fun e!732953 () Bool)

(assert (=> d!326387 (= (inv!14417 (right!9945 (c!192329 indices!2))) e!732953)))

(declare-fun b!1146638 () Bool)

(assert (=> b!1146638 (= e!732953 (inv!14435 (right!9945 (c!192329 indices!2))))))

(declare-fun b!1146639 () Bool)

(declare-fun e!732954 () Bool)

(assert (=> b!1146639 (= e!732953 e!732954)))

(declare-fun res!515781 () Bool)

(assert (=> b!1146639 (= res!515781 (not ((_ is Leaf!5520) (right!9945 (c!192329 indices!2)))))))

(assert (=> b!1146639 (=> res!515781 e!732954)))

(declare-fun b!1146640 () Bool)

(assert (=> b!1146640 (= e!732954 (inv!14436 (right!9945 (c!192329 indices!2))))))

(assert (= (and d!326387 c!192551) b!1146638))

(assert (= (and d!326387 (not c!192551)) b!1146639))

(assert (= (and b!1146639 (not res!515781)) b!1146640))

(declare-fun m!1308231 () Bool)

(assert (=> b!1146638 m!1308231))

(declare-fun m!1308233 () Bool)

(assert (=> b!1146640 m!1308233))

(assert (=> b!1145476 d!326387))

(declare-fun b!1146653 () Bool)

(declare-fun res!515797 () Bool)

(declare-fun e!732959 () Bool)

(assert (=> b!1146653 (=> (not res!515797) (not e!732959))))

(assert (=> b!1146653 (= res!515797 (isBalanced!997 (right!9945 (c!192329 indices!2))))))

(declare-fun b!1146654 () Bool)

(declare-fun e!732960 () Bool)

(assert (=> b!1146654 (= e!732960 e!732959)))

(declare-fun res!515796 () Bool)

(assert (=> b!1146654 (=> (not res!515796) (not e!732959))))

(assert (=> b!1146654 (= res!515796 (<= (- 1) (- (height!479 (left!9615 (c!192329 indices!2))) (height!479 (right!9945 (c!192329 indices!2))))))))

(declare-fun d!326389 () Bool)

(declare-fun res!515799 () Bool)

(assert (=> d!326389 (=> res!515799 e!732960)))

(assert (=> d!326389 (= res!515799 (not ((_ is Node!3557) (c!192329 indices!2))))))

(assert (=> d!326389 (= (isBalanced!997 (c!192329 indices!2)) e!732960)))

(declare-fun b!1146655 () Bool)

(declare-fun isEmpty!6865 (Conc!3557) Bool)

(assert (=> b!1146655 (= e!732959 (not (isEmpty!6865 (right!9945 (c!192329 indices!2)))))))

(declare-fun b!1146656 () Bool)

(declare-fun res!515794 () Bool)

(assert (=> b!1146656 (=> (not res!515794) (not e!732959))))

(assert (=> b!1146656 (= res!515794 (isBalanced!997 (left!9615 (c!192329 indices!2))))))

(declare-fun b!1146657 () Bool)

(declare-fun res!515798 () Bool)

(assert (=> b!1146657 (=> (not res!515798) (not e!732959))))

(assert (=> b!1146657 (= res!515798 (<= (- (height!479 (left!9615 (c!192329 indices!2))) (height!479 (right!9945 (c!192329 indices!2)))) 1))))

(declare-fun b!1146658 () Bool)

(declare-fun res!515795 () Bool)

(assert (=> b!1146658 (=> (not res!515795) (not e!732959))))

(assert (=> b!1146658 (= res!515795 (not (isEmpty!6865 (left!9615 (c!192329 indices!2)))))))

(assert (= (and d!326389 (not res!515799)) b!1146654))

(assert (= (and b!1146654 res!515796) b!1146657))

(assert (= (and b!1146657 res!515798) b!1146656))

(assert (= (and b!1146656 res!515794) b!1146653))

(assert (= (and b!1146653 res!515797) b!1146658))

(assert (= (and b!1146658 res!515795) b!1146655))

(declare-fun m!1308235 () Bool)

(assert (=> b!1146658 m!1308235))

(declare-fun m!1308237 () Bool)

(assert (=> b!1146653 m!1308237))

(assert (=> b!1146657 m!1306739))

(assert (=> b!1146657 m!1306741))

(assert (=> b!1146654 m!1306739))

(assert (=> b!1146654 m!1306741))

(declare-fun m!1308239 () Bool)

(assert (=> b!1146656 m!1308239))

(declare-fun m!1308241 () Bool)

(assert (=> b!1146655 m!1308241))

(assert (=> d!325987 d!326389))

(declare-fun b!1146659 () Bool)

(declare-fun e!732962 () List!11075)

(declare-fun e!732963 () List!11075)

(assert (=> b!1146659 (= e!732962 e!732963)))

(declare-fun c!192554 () Bool)

(assert (=> b!1146659 (= c!192554 (<= lt!388067 0))))

(declare-fun b!1146660 () Bool)

(assert (=> b!1146660 (= e!732962 Nil!11051)))

(declare-fun b!1146661 () Bool)

(assert (=> b!1146661 (= e!732963 lt!388071)))

(declare-fun b!1146662 () Bool)

(declare-fun e!732965 () Bool)

(declare-fun lt!388887 () List!11075)

(declare-fun e!732964 () Int)

(assert (=> b!1146662 (= e!732965 (= (size!8680 lt!388887) e!732964))))

(declare-fun c!192552 () Bool)

(assert (=> b!1146662 (= c!192552 (<= lt!388067 0))))

(declare-fun b!1146663 () Bool)

(declare-fun e!732961 () Int)

(assert (=> b!1146663 (= e!732961 0)))

(declare-fun bm!81673 () Bool)

(declare-fun call!81678 () Int)

(assert (=> bm!81673 (= call!81678 (size!8680 lt!388071))))

(declare-fun b!1146664 () Bool)

(assert (=> b!1146664 (= e!732963 (drop!430 (t!107997 lt!388071) (- lt!388067 1)))))

(declare-fun b!1146665 () Bool)

(assert (=> b!1146665 (= e!732964 call!81678)))

(declare-fun d!326391 () Bool)

(assert (=> d!326391 e!732965))

(declare-fun res!515800 () Bool)

(assert (=> d!326391 (=> (not res!515800) (not e!732965))))

(assert (=> d!326391 (= res!515800 (= ((_ map implies) (content!1591 lt!388887) (content!1591 lt!388071)) ((as const (InoxSet Token!3472)) true)))))

(assert (=> d!326391 (= lt!388887 e!732962)))

(declare-fun c!192553 () Bool)

(assert (=> d!326391 (= c!192553 ((_ is Nil!11051) lt!388071))))

(assert (=> d!326391 (= (drop!430 lt!388071 lt!388067) lt!388887)))

(declare-fun b!1146666 () Bool)

(assert (=> b!1146666 (= e!732964 e!732961)))

(declare-fun c!192555 () Bool)

(assert (=> b!1146666 (= c!192555 (>= lt!388067 call!81678))))

(declare-fun b!1146667 () Bool)

(assert (=> b!1146667 (= e!732961 (- call!81678 lt!388067))))

(assert (= (and d!326391 c!192553) b!1146660))

(assert (= (and d!326391 (not c!192553)) b!1146659))

(assert (= (and b!1146659 c!192554) b!1146661))

(assert (= (and b!1146659 (not c!192554)) b!1146664))

(assert (= (and d!326391 res!515800) b!1146662))

(assert (= (and b!1146662 c!192552) b!1146665))

(assert (= (and b!1146662 (not c!192552)) b!1146666))

(assert (= (and b!1146666 c!192555) b!1146663))

(assert (= (and b!1146666 (not c!192555)) b!1146667))

(assert (= (or b!1146665 b!1146666 b!1146667) bm!81673))

(declare-fun m!1308243 () Bool)

(assert (=> b!1146662 m!1308243))

(declare-fun m!1308245 () Bool)

(assert (=> bm!81673 m!1308245))

(declare-fun m!1308247 () Bool)

(assert (=> b!1146664 m!1308247))

(declare-fun m!1308249 () Bool)

(assert (=> d!326391 m!1308249))

(declare-fun m!1308251 () Bool)

(assert (=> d!326391 m!1308251))

(assert (=> b!1145361 d!326391))

(declare-fun d!326393 () Bool)

(declare-fun lt!388890 () Int)

(declare-fun size!8686 (List!11074) Int)

(declare-fun list!4062 (BalanceConc!7130) List!11074)

(assert (=> d!326393 (= lt!388890 (size!8686 (list!4062 (charsOf!1040 (apply!2353 (tokens!1490 pt!21) (+ lt!388067 1))))))))

(declare-fun size!8687 (Conc!3554) Int)

(assert (=> d!326393 (= lt!388890 (size!8687 (c!192326 (charsOf!1040 (apply!2353 (tokens!1490 pt!21) (+ lt!388067 1))))))))

(assert (=> d!326393 (= (size!8673 (charsOf!1040 (apply!2353 (tokens!1490 pt!21) (+ lt!388067 1)))) lt!388890)))

(declare-fun bs!281152 () Bool)

(assert (= bs!281152 d!326393))

(assert (=> bs!281152 m!1306399))

(declare-fun m!1308253 () Bool)

(assert (=> bs!281152 m!1308253))

(assert (=> bs!281152 m!1308253))

(declare-fun m!1308255 () Bool)

(assert (=> bs!281152 m!1308255))

(declare-fun m!1308257 () Bool)

(assert (=> bs!281152 m!1308257))

(assert (=> b!1145361 d!326393))

(declare-fun d!326395 () Bool)

(assert (=> d!326395 (= (tail!1644 (drop!430 lt!388096 lt!388067)) (drop!430 lt!388096 (+ lt!388067 1)))))

(declare-fun lt!388893 () Unit!16973)

(declare-fun choose!7359 (List!11075 Int) Unit!16973)

(assert (=> d!326395 (= lt!388893 (choose!7359 lt!388096 lt!388067))))

(declare-fun e!732968 () Bool)

(assert (=> d!326395 e!732968))

(declare-fun res!515803 () Bool)

(assert (=> d!326395 (=> (not res!515803) (not e!732968))))

(assert (=> d!326395 (= res!515803 (>= lt!388067 0))))

(assert (=> d!326395 (= (lemmaDropTail!331 lt!388096 lt!388067) lt!388893)))

(declare-fun b!1146670 () Bool)

(assert (=> b!1146670 (= e!732968 (< lt!388067 (size!8680 lt!388096)))))

(assert (= (and d!326395 res!515803) b!1146670))

(assert (=> d!326395 m!1306407))

(assert (=> d!326395 m!1306407))

(assert (=> d!326395 m!1306411))

(assert (=> d!326395 m!1306391))

(declare-fun m!1308259 () Bool)

(assert (=> d!326395 m!1308259))

(declare-fun m!1308261 () Bool)

(assert (=> b!1146670 m!1308261))

(assert (=> b!1145361 d!326395))

(declare-fun d!326397 () Bool)

(assert (=> d!326397 (= (tail!1644 (drop!430 lt!388096 lt!388067)) (t!107997 (drop!430 lt!388096 lt!388067)))))

(assert (=> b!1145361 d!326397))

(declare-fun d!326399 () Bool)

(declare-fun lt!388895 () Bool)

(declare-fun e!732969 () Bool)

(assert (=> d!326399 (= lt!388895 e!732969)))

(declare-fun res!515804 () Bool)

(assert (=> d!326399 (=> (not res!515804) (not e!732969))))

(assert (=> d!326399 (= res!515804 (= (list!4049 (_1!6818 (lex!666 lt!388058 (rules!9316 pt!21) (print!603 lt!388058 (singletonSeq!617 lt!388059))))) (list!4049 (singletonSeq!617 lt!388059))))))

(declare-fun e!732970 () Bool)

(assert (=> d!326399 (= lt!388895 e!732970)))

(declare-fun res!515805 () Bool)

(assert (=> d!326399 (=> (not res!515805) (not e!732970))))

(declare-fun lt!388894 () tuple2!11942)

(assert (=> d!326399 (= res!515805 (= (size!8670 (_1!6818 lt!388894)) 1))))

(assert (=> d!326399 (= lt!388894 (lex!666 lt!388058 (rules!9316 pt!21) (print!603 lt!388058 (singletonSeq!617 lt!388059))))))

(assert (=> d!326399 (not (isEmpty!6858 (rules!9316 pt!21)))))

(assert (=> d!326399 (= (rulesProduceIndividualToken!651 lt!388058 (rules!9316 pt!21) lt!388059) lt!388895)))

(declare-fun b!1146671 () Bool)

(declare-fun res!515806 () Bool)

(assert (=> b!1146671 (=> (not res!515806) (not e!732970))))

(assert (=> b!1146671 (= res!515806 (= (apply!2353 (_1!6818 lt!388894) 0) lt!388059))))

(declare-fun b!1146672 () Bool)

(assert (=> b!1146672 (= e!732970 (isEmpty!6862 (_2!6818 lt!388894)))))

(declare-fun b!1146673 () Bool)

(assert (=> b!1146673 (= e!732969 (isEmpty!6862 (_2!6818 (lex!666 lt!388058 (rules!9316 pt!21) (print!603 lt!388058 (singletonSeq!617 lt!388059))))))))

(assert (= (and d!326399 res!515805) b!1146671))

(assert (= (and b!1146671 res!515806) b!1146672))

(assert (= (and d!326399 res!515804) b!1146673))

(declare-fun m!1308263 () Bool)

(assert (=> d!326399 m!1308263))

(assert (=> d!326399 m!1308263))

(declare-fun m!1308265 () Bool)

(assert (=> d!326399 m!1308265))

(declare-fun m!1308267 () Bool)

(assert (=> d!326399 m!1308267))

(assert (=> d!326399 m!1306527))

(assert (=> d!326399 m!1308263))

(declare-fun m!1308269 () Bool)

(assert (=> d!326399 m!1308269))

(assert (=> d!326399 m!1308265))

(declare-fun m!1308271 () Bool)

(assert (=> d!326399 m!1308271))

(declare-fun m!1308273 () Bool)

(assert (=> d!326399 m!1308273))

(declare-fun m!1308275 () Bool)

(assert (=> b!1146671 m!1308275))

(declare-fun m!1308277 () Bool)

(assert (=> b!1146672 m!1308277))

(assert (=> b!1146673 m!1308263))

(assert (=> b!1146673 m!1308263))

(assert (=> b!1146673 m!1308265))

(assert (=> b!1146673 m!1308265))

(assert (=> b!1146673 m!1308271))

(declare-fun m!1308279 () Bool)

(assert (=> b!1146673 m!1308279))

(assert (=> b!1145361 d!326399))

(declare-fun d!326401 () Bool)

(assert (=> d!326401 (rulesProduceIndividualToken!651 lt!388058 (rules!9316 pt!21) lt!388059)))

(declare-fun lt!388920 () Unit!16973)

(declare-fun choose!7360 (LexerInterface!1604 List!11076 List!11075 Token!3472) Unit!16973)

(assert (=> d!326401 (= lt!388920 (choose!7360 lt!388058 (rules!9316 pt!21) lt!388082 lt!388059))))

(assert (=> d!326401 (not (isEmpty!6858 (rules!9316 pt!21)))))

(assert (=> d!326401 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!261 lt!388058 (rules!9316 pt!21) lt!388082 lt!388059) lt!388920)))

(declare-fun bs!281176 () Bool)

(assert (= bs!281176 d!326401))

(assert (=> bs!281176 m!1306379))

(declare-fun m!1308299 () Bool)

(assert (=> bs!281176 m!1308299))

(assert (=> bs!281176 m!1306527))

(assert (=> b!1145361 d!326401))

(declare-fun d!326407 () Bool)

(declare-fun lt!388923 () BalanceConc!7130)

(assert (=> d!326407 (= (list!4062 lt!388923) (originalCharacters!2459 (apply!2353 (tokens!1490 pt!21) (+ lt!388067 1))))))

(declare-fun dynLambda!4892 (Int TokenValue!1971) BalanceConc!7130)

(assert (=> d!326407 (= lt!388923 (dynLambda!4892 (toChars!2861 (transformation!1905 (rule!3326 (apply!2353 (tokens!1490 pt!21) (+ lt!388067 1))))) (value!62289 (apply!2353 (tokens!1490 pt!21) (+ lt!388067 1)))))))

(assert (=> d!326407 (= (charsOf!1040 (apply!2353 (tokens!1490 pt!21) (+ lt!388067 1))) lt!388923)))

(declare-fun b_lambda!34125 () Bool)

(assert (=> (not b_lambda!34125) (not d!326407)))

(declare-fun t!108100 () Bool)

(declare-fun tb!65567 () Bool)

(assert (=> (and b!1145499 (= (toChars!2861 (transformation!1905 (h!16453 (rules!9316 pt!21)))) (toChars!2861 (transformation!1905 (rule!3326 (apply!2353 (tokens!1490 pt!21) (+ lt!388067 1)))))) t!108100) tb!65567))

(declare-fun b!1146698 () Bool)

(declare-fun tp!332004 () Bool)

(declare-fun e!732993 () Bool)

(declare-fun inv!14443 (Conc!3554) Bool)

(assert (=> b!1146698 (= e!732993 (and (inv!14443 (c!192326 (dynLambda!4892 (toChars!2861 (transformation!1905 (rule!3326 (apply!2353 (tokens!1490 pt!21) (+ lt!388067 1))))) (value!62289 (apply!2353 (tokens!1490 pt!21) (+ lt!388067 1)))))) tp!332004))))

(declare-fun result!78238 () Bool)

(declare-fun inv!14444 (BalanceConc!7130) Bool)

(assert (=> tb!65567 (= result!78238 (and (inv!14444 (dynLambda!4892 (toChars!2861 (transformation!1905 (rule!3326 (apply!2353 (tokens!1490 pt!21) (+ lt!388067 1))))) (value!62289 (apply!2353 (tokens!1490 pt!21) (+ lt!388067 1))))) e!732993))))

(assert (= tb!65567 b!1146698))

(declare-fun m!1308301 () Bool)

(assert (=> b!1146698 m!1308301))

(declare-fun m!1308303 () Bool)

(assert (=> tb!65567 m!1308303))

(assert (=> d!326407 t!108100))

(declare-fun b_and!80291 () Bool)

(assert (= b_and!80287 (and (=> t!108100 result!78238) b_and!80291)))

(declare-fun m!1308305 () Bool)

(assert (=> d!326407 m!1308305))

(declare-fun m!1308307 () Bool)

(assert (=> d!326407 m!1308307))

(assert (=> b!1145361 d!326407))

(declare-fun d!326409 () Bool)

(declare-fun lt!388926 () Token!3472)

(assert (=> d!326409 (= lt!388926 (apply!2354 (list!4049 (tokens!1490 pt!21)) (+ lt!388067 1)))))

(declare-fun apply!2359 (Conc!3555 Int) Token!3472)

(assert (=> d!326409 (= lt!388926 (apply!2359 (c!192327 (tokens!1490 pt!21)) (+ lt!388067 1)))))

(declare-fun e!732996 () Bool)

(assert (=> d!326409 e!732996))

(declare-fun res!515823 () Bool)

(assert (=> d!326409 (=> (not res!515823) (not e!732996))))

(assert (=> d!326409 (= res!515823 (<= 0 (+ lt!388067 1)))))

(assert (=> d!326409 (= (apply!2353 (tokens!1490 pt!21) (+ lt!388067 1)) lt!388926)))

(declare-fun b!1146701 () Bool)

(assert (=> b!1146701 (= e!732996 (< (+ lt!388067 1) (size!8670 (tokens!1490 pt!21))))))

(assert (= (and d!326409 res!515823) b!1146701))

(assert (=> d!326409 m!1306281))

(assert (=> d!326409 m!1306281))

(declare-fun m!1308309 () Bool)

(assert (=> d!326409 m!1308309))

(declare-fun m!1308311 () Bool)

(assert (=> d!326409 m!1308311))

(assert (=> b!1146701 m!1306265))

(assert (=> b!1145361 d!326409))

(declare-fun d!326411 () Bool)

(assert (=> d!326411 (rulesProduceIndividualToken!651 lt!388058 (rules!9316 pt!21) lt!388090)))

(declare-fun lt!388927 () Unit!16973)

(assert (=> d!326411 (= lt!388927 (choose!7360 lt!388058 (rules!9316 pt!21) lt!388117 lt!388090))))

(assert (=> d!326411 (not (isEmpty!6858 (rules!9316 pt!21)))))

(assert (=> d!326411 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!261 lt!388058 (rules!9316 pt!21) lt!388117 lt!388090) lt!388927)))

(declare-fun bs!281177 () Bool)

(assert (= bs!281177 d!326411))

(assert (=> bs!281177 m!1306375))

(declare-fun m!1308313 () Bool)

(assert (=> bs!281177 m!1308313))

(assert (=> bs!281177 m!1306527))

(assert (=> b!1145361 d!326411))

(declare-fun d!326413 () Bool)

(declare-fun lt!388929 () Bool)

(declare-fun e!732997 () Bool)

(assert (=> d!326413 (= lt!388929 e!732997)))

(declare-fun res!515824 () Bool)

(assert (=> d!326413 (=> (not res!515824) (not e!732997))))

(assert (=> d!326413 (= res!515824 (= (list!4049 (_1!6818 (lex!666 lt!388058 (rules!9316 pt!21) (print!603 lt!388058 (singletonSeq!617 (apply!2353 (tokens!1490 pt!21) (+ lt!388067 1))))))) (list!4049 (singletonSeq!617 (apply!2353 (tokens!1490 pt!21) (+ lt!388067 1))))))))

(declare-fun e!732998 () Bool)

(assert (=> d!326413 (= lt!388929 e!732998)))

(declare-fun res!515825 () Bool)

(assert (=> d!326413 (=> (not res!515825) (not e!732998))))

(declare-fun lt!388928 () tuple2!11942)

(assert (=> d!326413 (= res!515825 (= (size!8670 (_1!6818 lt!388928)) 1))))

(assert (=> d!326413 (= lt!388928 (lex!666 lt!388058 (rules!9316 pt!21) (print!603 lt!388058 (singletonSeq!617 (apply!2353 (tokens!1490 pt!21) (+ lt!388067 1))))))))

(assert (=> d!326413 (not (isEmpty!6858 (rules!9316 pt!21)))))

(assert (=> d!326413 (= (rulesProduceIndividualToken!651 lt!388058 (rules!9316 pt!21) (apply!2353 (tokens!1490 pt!21) (+ lt!388067 1))) lt!388929)))

(declare-fun b!1146702 () Bool)

(declare-fun res!515826 () Bool)

(assert (=> b!1146702 (=> (not res!515826) (not e!732998))))

(assert (=> b!1146702 (= res!515826 (= (apply!2353 (_1!6818 lt!388928) 0) (apply!2353 (tokens!1490 pt!21) (+ lt!388067 1))))))

(declare-fun b!1146703 () Bool)

(assert (=> b!1146703 (= e!732998 (isEmpty!6862 (_2!6818 lt!388928)))))

(declare-fun b!1146704 () Bool)

(assert (=> b!1146704 (= e!732997 (isEmpty!6862 (_2!6818 (lex!666 lt!388058 (rules!9316 pt!21) (print!603 lt!388058 (singletonSeq!617 (apply!2353 (tokens!1490 pt!21) (+ lt!388067 1))))))))))

(assert (= (and d!326413 res!515825) b!1146702))

(assert (= (and b!1146702 res!515826) b!1146703))

(assert (= (and d!326413 res!515824) b!1146704))

(assert (=> d!326413 m!1306365))

(declare-fun m!1308315 () Bool)

(assert (=> d!326413 m!1308315))

(assert (=> d!326413 m!1308315))

(declare-fun m!1308317 () Bool)

(assert (=> d!326413 m!1308317))

(declare-fun m!1308319 () Bool)

(assert (=> d!326413 m!1308319))

(assert (=> d!326413 m!1306527))

(assert (=> d!326413 m!1308315))

(declare-fun m!1308321 () Bool)

(assert (=> d!326413 m!1308321))

(assert (=> d!326413 m!1308317))

(declare-fun m!1308323 () Bool)

(assert (=> d!326413 m!1308323))

(declare-fun m!1308325 () Bool)

(assert (=> d!326413 m!1308325))

(declare-fun m!1308327 () Bool)

(assert (=> b!1146702 m!1308327))

(declare-fun m!1308329 () Bool)

(assert (=> b!1146703 m!1308329))

(assert (=> b!1146704 m!1306365))

(assert (=> b!1146704 m!1308315))

(assert (=> b!1146704 m!1308315))

(assert (=> b!1146704 m!1308317))

(assert (=> b!1146704 m!1308317))

(assert (=> b!1146704 m!1308323))

(declare-fun m!1308331 () Bool)

(assert (=> b!1146704 m!1308331))

(assert (=> b!1145361 d!326413))

(assert (=> b!1145361 d!326291))

(declare-fun d!326415 () Bool)

(declare-fun lt!388931 () Bool)

(declare-fun e!732999 () Bool)

(assert (=> d!326415 (= lt!388931 e!732999)))

(declare-fun res!515827 () Bool)

(assert (=> d!326415 (=> (not res!515827) (not e!732999))))

(assert (=> d!326415 (= res!515827 (= (list!4049 (_1!6818 (lex!666 lt!388058 (rules!9316 pt!21) (print!603 lt!388058 (singletonSeq!617 (apply!2353 (tokens!1490 pt!21) lt!388067)))))) (list!4049 (singletonSeq!617 (apply!2353 (tokens!1490 pt!21) lt!388067)))))))

(declare-fun e!733000 () Bool)

(assert (=> d!326415 (= lt!388931 e!733000)))

(declare-fun res!515828 () Bool)

(assert (=> d!326415 (=> (not res!515828) (not e!733000))))

(declare-fun lt!388930 () tuple2!11942)

(assert (=> d!326415 (= res!515828 (= (size!8670 (_1!6818 lt!388930)) 1))))

(assert (=> d!326415 (= lt!388930 (lex!666 lt!388058 (rules!9316 pt!21) (print!603 lt!388058 (singletonSeq!617 (apply!2353 (tokens!1490 pt!21) lt!388067)))))))

(assert (=> d!326415 (not (isEmpty!6858 (rules!9316 pt!21)))))

(assert (=> d!326415 (= (rulesProduceIndividualToken!651 lt!388058 (rules!9316 pt!21) (apply!2353 (tokens!1490 pt!21) lt!388067)) lt!388931)))

(declare-fun b!1146705 () Bool)

(declare-fun res!515829 () Bool)

(assert (=> b!1146705 (=> (not res!515829) (not e!733000))))

(assert (=> b!1146705 (= res!515829 (= (apply!2353 (_1!6818 lt!388930) 0) (apply!2353 (tokens!1490 pt!21) lt!388067)))))

(declare-fun b!1146706 () Bool)

(assert (=> b!1146706 (= e!733000 (isEmpty!6862 (_2!6818 lt!388930)))))

(declare-fun b!1146707 () Bool)

(assert (=> b!1146707 (= e!732999 (isEmpty!6862 (_2!6818 (lex!666 lt!388058 (rules!9316 pt!21) (print!603 lt!388058 (singletonSeq!617 (apply!2353 (tokens!1490 pt!21) lt!388067)))))))))

(assert (= (and d!326415 res!515828) b!1146705))

(assert (= (and b!1146705 res!515829) b!1146706))

(assert (= (and d!326415 res!515827) b!1146707))

(assert (=> d!326415 m!1306359))

(declare-fun m!1308333 () Bool)

(assert (=> d!326415 m!1308333))

(assert (=> d!326415 m!1308333))

(declare-fun m!1308335 () Bool)

(assert (=> d!326415 m!1308335))

(declare-fun m!1308337 () Bool)

(assert (=> d!326415 m!1308337))

(assert (=> d!326415 m!1306527))

(assert (=> d!326415 m!1308333))

(declare-fun m!1308339 () Bool)

(assert (=> d!326415 m!1308339))

(assert (=> d!326415 m!1308335))

(declare-fun m!1308341 () Bool)

(assert (=> d!326415 m!1308341))

(declare-fun m!1308343 () Bool)

(assert (=> d!326415 m!1308343))

(declare-fun m!1308345 () Bool)

(assert (=> b!1146705 m!1308345))

(declare-fun m!1308347 () Bool)

(assert (=> b!1146706 m!1308347))

(assert (=> b!1146707 m!1306359))

(assert (=> b!1146707 m!1308333))

(assert (=> b!1146707 m!1308333))

(assert (=> b!1146707 m!1308335))

(assert (=> b!1146707 m!1308335))

(assert (=> b!1146707 m!1308341))

(declare-fun m!1308349 () Bool)

(assert (=> b!1146707 m!1308349))

(assert (=> b!1145361 d!326415))

(declare-fun b!1146708 () Bool)

(declare-fun e!733002 () List!11075)

(declare-fun e!733003 () List!11075)

(assert (=> b!1146708 (= e!733002 e!733003)))

(declare-fun c!192558 () Bool)

(assert (=> b!1146708 (= c!192558 (<= lt!388084 0))))

(declare-fun b!1146709 () Bool)

(assert (=> b!1146709 (= e!733002 Nil!11051)))

(declare-fun b!1146710 () Bool)

(assert (=> b!1146710 (= e!733003 lt!388123)))

(declare-fun b!1146711 () Bool)

(declare-fun e!733005 () Bool)

(declare-fun lt!388932 () List!11075)

(declare-fun e!733004 () Int)

(assert (=> b!1146711 (= e!733005 (= (size!8680 lt!388932) e!733004))))

(declare-fun c!192556 () Bool)

(assert (=> b!1146711 (= c!192556 (<= lt!388084 0))))

(declare-fun b!1146712 () Bool)

(declare-fun e!733001 () Int)

(assert (=> b!1146712 (= e!733001 0)))

(declare-fun bm!81674 () Bool)

(declare-fun call!81679 () Int)

(assert (=> bm!81674 (= call!81679 (size!8680 lt!388123))))

(declare-fun b!1146713 () Bool)

(assert (=> b!1146713 (= e!733003 (drop!430 (t!107997 lt!388123) (- lt!388084 1)))))

(declare-fun b!1146714 () Bool)

(assert (=> b!1146714 (= e!733004 call!81679)))

(declare-fun d!326417 () Bool)

(assert (=> d!326417 e!733005))

(declare-fun res!515830 () Bool)

(assert (=> d!326417 (=> (not res!515830) (not e!733005))))

(assert (=> d!326417 (= res!515830 (= ((_ map implies) (content!1591 lt!388932) (content!1591 lt!388123)) ((as const (InoxSet Token!3472)) true)))))

(assert (=> d!326417 (= lt!388932 e!733002)))

(declare-fun c!192557 () Bool)

(assert (=> d!326417 (= c!192557 ((_ is Nil!11051) lt!388123))))

(assert (=> d!326417 (= (drop!430 lt!388123 lt!388084) lt!388932)))

(declare-fun b!1146715 () Bool)

(assert (=> b!1146715 (= e!733004 e!733001)))

(declare-fun c!192559 () Bool)

(assert (=> b!1146715 (= c!192559 (>= lt!388084 call!81679))))

(declare-fun b!1146716 () Bool)

(assert (=> b!1146716 (= e!733001 (- call!81679 lt!388084))))

(assert (= (and d!326417 c!192557) b!1146709))

(assert (= (and d!326417 (not c!192557)) b!1146708))

(assert (= (and b!1146708 c!192558) b!1146710))

(assert (= (and b!1146708 (not c!192558)) b!1146713))

(assert (= (and d!326417 res!515830) b!1146711))

(assert (= (and b!1146711 c!192556) b!1146714))

(assert (= (and b!1146711 (not c!192556)) b!1146715))

(assert (= (and b!1146715 c!192559) b!1146712))

(assert (= (and b!1146715 (not c!192559)) b!1146716))

(assert (= (or b!1146714 b!1146715 b!1146716) bm!81674))

(declare-fun m!1308351 () Bool)

(assert (=> b!1146711 m!1308351))

(declare-fun m!1308353 () Bool)

(assert (=> bm!81674 m!1308353))

(declare-fun m!1308355 () Bool)

(assert (=> b!1146713 m!1308355))

(declare-fun m!1308357 () Bool)

(assert (=> d!326417 m!1308357))

(declare-fun m!1308359 () Bool)

(assert (=> d!326417 m!1308359))

(assert (=> b!1145361 d!326417))

(declare-fun d!326419 () Bool)

(declare-fun lt!388935 () Token!3472)

(declare-fun contains!1978 (List!11075 Token!3472) Bool)

(assert (=> d!326419 (contains!1978 lt!388071 lt!388935)))

(declare-fun e!733011 () Token!3472)

(assert (=> d!326419 (= lt!388935 e!733011)))

(declare-fun c!192562 () Bool)

(assert (=> d!326419 (= c!192562 (= lt!388067 0))))

(declare-fun e!733010 () Bool)

(assert (=> d!326419 e!733010))

(declare-fun res!515833 () Bool)

(assert (=> d!326419 (=> (not res!515833) (not e!733010))))

(assert (=> d!326419 (= res!515833 (<= 0 lt!388067))))

(assert (=> d!326419 (= (apply!2354 lt!388071 lt!388067) lt!388935)))

(declare-fun b!1146723 () Bool)

(assert (=> b!1146723 (= e!733010 (< lt!388067 (size!8680 lt!388071)))))

(declare-fun b!1146724 () Bool)

(assert (=> b!1146724 (= e!733011 (head!2070 lt!388071))))

(declare-fun b!1146725 () Bool)

(assert (=> b!1146725 (= e!733011 (apply!2354 (tail!1644 lt!388071) (- lt!388067 1)))))

(assert (= (and d!326419 res!515833) b!1146723))

(assert (= (and d!326419 c!192562) b!1146724))

(assert (= (and d!326419 (not c!192562)) b!1146725))

(declare-fun m!1308361 () Bool)

(assert (=> d!326419 m!1308361))

(assert (=> b!1146723 m!1308245))

(declare-fun m!1308363 () Bool)

(assert (=> b!1146724 m!1308363))

(declare-fun m!1308365 () Bool)

(assert (=> b!1146725 m!1308365))

(assert (=> b!1146725 m!1308365))

(declare-fun m!1308367 () Bool)

(assert (=> b!1146725 m!1308367))

(assert (=> b!1145361 d!326419))

(declare-fun d!326421 () Bool)

(assert (=> d!326421 (= (head!2070 (drop!430 lt!388123 lt!388084)) (h!16452 (drop!430 lt!388123 lt!388084)))))

(assert (=> b!1145361 d!326421))

(declare-fun d!326423 () Bool)

(assert (=> d!326423 (= (tail!1644 (drop!430 lt!388079 lt!388106)) (drop!430 lt!388079 (+ lt!388106 1)))))

(declare-fun lt!388936 () Unit!16973)

(assert (=> d!326423 (= lt!388936 (choose!7359 lt!388079 lt!388106))))

(declare-fun e!733012 () Bool)

(assert (=> d!326423 e!733012))

(declare-fun res!515834 () Bool)

(assert (=> d!326423 (=> (not res!515834) (not e!733012))))

(assert (=> d!326423 (= res!515834 (>= lt!388106 0))))

(assert (=> d!326423 (= (lemmaDropTail!331 lt!388079 lt!388106) lt!388936)))

(declare-fun b!1146726 () Bool)

(assert (=> b!1146726 (= e!733012 (< lt!388106 (size!8680 lt!388079)))))

(assert (= (and d!326423 res!515834) b!1146726))

(assert (=> d!326423 m!1306387))

(assert (=> d!326423 m!1306387))

(assert (=> d!326423 m!1306389))

(assert (=> d!326423 m!1306403))

(declare-fun m!1308369 () Bool)

(assert (=> d!326423 m!1308369))

(declare-fun m!1308371 () Bool)

(assert (=> b!1146726 m!1308371))

(assert (=> b!1145361 d!326423))

(declare-fun d!326425 () Bool)

(assert (=> d!326425 (= (tail!1644 (drop!430 lt!388079 lt!388106)) (t!107997 (drop!430 lt!388079 lt!388106)))))

(assert (=> b!1145361 d!326425))

(declare-fun b!1146727 () Bool)

(declare-fun e!733014 () List!11075)

(declare-fun e!733015 () List!11075)

(assert (=> b!1146727 (= e!733014 e!733015)))

(declare-fun c!192565 () Bool)

(assert (=> b!1146727 (= c!192565 (<= (+ lt!388067 1) 0))))

(declare-fun b!1146728 () Bool)

(assert (=> b!1146728 (= e!733014 Nil!11051)))

(declare-fun b!1146729 () Bool)

(assert (=> b!1146729 (= e!733015 lt!388096)))

(declare-fun b!1146730 () Bool)

(declare-fun e!733017 () Bool)

(declare-fun lt!388937 () List!11075)

(declare-fun e!733016 () Int)

(assert (=> b!1146730 (= e!733017 (= (size!8680 lt!388937) e!733016))))

(declare-fun c!192563 () Bool)

(assert (=> b!1146730 (= c!192563 (<= (+ lt!388067 1) 0))))

(declare-fun b!1146731 () Bool)

(declare-fun e!733013 () Int)

(assert (=> b!1146731 (= e!733013 0)))

(declare-fun bm!81675 () Bool)

(declare-fun call!81680 () Int)

(assert (=> bm!81675 (= call!81680 (size!8680 lt!388096))))

(declare-fun b!1146732 () Bool)

(assert (=> b!1146732 (= e!733015 (drop!430 (t!107997 lt!388096) (- (+ lt!388067 1) 1)))))

(declare-fun b!1146733 () Bool)

(assert (=> b!1146733 (= e!733016 call!81680)))

(declare-fun d!326427 () Bool)

(assert (=> d!326427 e!733017))

(declare-fun res!515835 () Bool)

(assert (=> d!326427 (=> (not res!515835) (not e!733017))))

(assert (=> d!326427 (= res!515835 (= ((_ map implies) (content!1591 lt!388937) (content!1591 lt!388096)) ((as const (InoxSet Token!3472)) true)))))

(assert (=> d!326427 (= lt!388937 e!733014)))

(declare-fun c!192564 () Bool)

(assert (=> d!326427 (= c!192564 ((_ is Nil!11051) lt!388096))))

(assert (=> d!326427 (= (drop!430 lt!388096 (+ lt!388067 1)) lt!388937)))

(declare-fun b!1146734 () Bool)

(assert (=> b!1146734 (= e!733016 e!733013)))

(declare-fun c!192566 () Bool)

(assert (=> b!1146734 (= c!192566 (>= (+ lt!388067 1) call!81680))))

(declare-fun b!1146735 () Bool)

(assert (=> b!1146735 (= e!733013 (- call!81680 (+ lt!388067 1)))))

(assert (= (and d!326427 c!192564) b!1146728))

(assert (= (and d!326427 (not c!192564)) b!1146727))

(assert (= (and b!1146727 c!192565) b!1146729))

(assert (= (and b!1146727 (not c!192565)) b!1146732))

(assert (= (and d!326427 res!515835) b!1146730))

(assert (= (and b!1146730 c!192563) b!1146733))

(assert (= (and b!1146730 (not c!192563)) b!1146734))

(assert (= (and b!1146734 c!192566) b!1146731))

(assert (= (and b!1146734 (not c!192566)) b!1146735))

(assert (= (or b!1146733 b!1146734 b!1146735) bm!81675))

(declare-fun m!1308373 () Bool)

(assert (=> b!1146730 m!1308373))

(assert (=> bm!81675 m!1308261))

(declare-fun m!1308375 () Bool)

(assert (=> b!1146732 m!1308375))

(declare-fun m!1308377 () Bool)

(assert (=> d!326427 m!1308377))

(declare-fun m!1308379 () Bool)

(assert (=> d!326427 m!1308379))

(assert (=> b!1145361 d!326427))

(declare-fun b!1146736 () Bool)

(declare-fun e!733019 () List!11075)

(declare-fun e!733020 () List!11075)

(assert (=> b!1146736 (= e!733019 e!733020)))

(declare-fun c!192569 () Bool)

(assert (=> b!1146736 (= c!192569 (<= (+ lt!388106 1) 0))))

(declare-fun b!1146737 () Bool)

(assert (=> b!1146737 (= e!733019 Nil!11051)))

(declare-fun b!1146738 () Bool)

(assert (=> b!1146738 (= e!733020 lt!388079)))

(declare-fun b!1146739 () Bool)

(declare-fun e!733022 () Bool)

(declare-fun lt!388938 () List!11075)

(declare-fun e!733021 () Int)

(assert (=> b!1146739 (= e!733022 (= (size!8680 lt!388938) e!733021))))

(declare-fun c!192567 () Bool)

(assert (=> b!1146739 (= c!192567 (<= (+ lt!388106 1) 0))))

(declare-fun b!1146740 () Bool)

(declare-fun e!733018 () Int)

(assert (=> b!1146740 (= e!733018 0)))

(declare-fun bm!81676 () Bool)

(declare-fun call!81681 () Int)

(assert (=> bm!81676 (= call!81681 (size!8680 lt!388079))))

(declare-fun b!1146741 () Bool)

(assert (=> b!1146741 (= e!733020 (drop!430 (t!107997 lt!388079) (- (+ lt!388106 1) 1)))))

(declare-fun b!1146742 () Bool)

(assert (=> b!1146742 (= e!733021 call!81681)))

(declare-fun d!326429 () Bool)

(assert (=> d!326429 e!733022))

(declare-fun res!515836 () Bool)

(assert (=> d!326429 (=> (not res!515836) (not e!733022))))

(assert (=> d!326429 (= res!515836 (= ((_ map implies) (content!1591 lt!388938) (content!1591 lt!388079)) ((as const (InoxSet Token!3472)) true)))))

(assert (=> d!326429 (= lt!388938 e!733019)))

(declare-fun c!192568 () Bool)

(assert (=> d!326429 (= c!192568 ((_ is Nil!11051) lt!388079))))

(assert (=> d!326429 (= (drop!430 lt!388079 (+ lt!388106 1)) lt!388938)))

(declare-fun b!1146743 () Bool)

(assert (=> b!1146743 (= e!733021 e!733018)))

(declare-fun c!192570 () Bool)

(assert (=> b!1146743 (= c!192570 (>= (+ lt!388106 1) call!81681))))

(declare-fun b!1146744 () Bool)

(assert (=> b!1146744 (= e!733018 (- call!81681 (+ lt!388106 1)))))

(assert (= (and d!326429 c!192568) b!1146737))

(assert (= (and d!326429 (not c!192568)) b!1146736))

(assert (= (and b!1146736 c!192569) b!1146738))

(assert (= (and b!1146736 (not c!192569)) b!1146741))

(assert (= (and d!326429 res!515836) b!1146739))

(assert (= (and b!1146739 c!192567) b!1146742))

(assert (= (and b!1146739 (not c!192567)) b!1146743))

(assert (= (and b!1146743 c!192570) b!1146740))

(assert (= (and b!1146743 (not c!192570)) b!1146744))

(assert (= (or b!1146742 b!1146743 b!1146744) bm!81676))

(declare-fun m!1308381 () Bool)

(assert (=> b!1146739 m!1308381))

(assert (=> bm!81676 m!1308371))

(declare-fun m!1308383 () Bool)

(assert (=> b!1146741 m!1308383))

(declare-fun m!1308385 () Bool)

(assert (=> d!326429 m!1308385))

(declare-fun m!1308387 () Bool)

(assert (=> d!326429 m!1308387))

(assert (=> b!1145361 d!326429))

(declare-fun d!326431 () Bool)

(assert (=> d!326431 (= (head!2070 (drop!430 lt!388123 lt!388084)) (apply!2354 lt!388123 lt!388084))))

(declare-fun lt!388941 () Unit!16973)

(declare-fun choose!7362 (List!11075 Int) Unit!16973)

(assert (=> d!326431 (= lt!388941 (choose!7362 lt!388123 lt!388084))))

(declare-fun e!733025 () Bool)

(assert (=> d!326431 e!733025))

(declare-fun res!515839 () Bool)

(assert (=> d!326431 (=> (not res!515839) (not e!733025))))

(assert (=> d!326431 (= res!515839 (>= lt!388084 0))))

(assert (=> d!326431 (= (lemmaDropApply!343 lt!388123 lt!388084) lt!388941)))

(declare-fun b!1146747 () Bool)

(assert (=> b!1146747 (= e!733025 (< lt!388084 (size!8680 lt!388123)))))

(assert (= (and d!326431 res!515839) b!1146747))

(assert (=> d!326431 m!1306361))

(assert (=> d!326431 m!1306361))

(assert (=> d!326431 m!1306369))

(assert (=> d!326431 m!1306393))

(declare-fun m!1308389 () Bool)

(assert (=> d!326431 m!1308389))

(assert (=> b!1146747 m!1308353))

(assert (=> b!1145361 d!326431))

(declare-fun d!326433 () Bool)

(declare-fun lt!388942 () Token!3472)

(assert (=> d!326433 (= lt!388942 (apply!2354 (list!4049 (tokens!1490 pt!21)) lt!388067))))

(assert (=> d!326433 (= lt!388942 (apply!2359 (c!192327 (tokens!1490 pt!21)) lt!388067))))

(declare-fun e!733026 () Bool)

(assert (=> d!326433 e!733026))

(declare-fun res!515840 () Bool)

(assert (=> d!326433 (=> (not res!515840) (not e!733026))))

(assert (=> d!326433 (= res!515840 (<= 0 lt!388067))))

(assert (=> d!326433 (= (apply!2353 (tokens!1490 pt!21) lt!388067) lt!388942)))

(declare-fun b!1146748 () Bool)

(assert (=> b!1146748 (= e!733026 (< lt!388067 (size!8670 (tokens!1490 pt!21))))))

(assert (= (and d!326433 res!515840) b!1146748))

(assert (=> d!326433 m!1306281))

(assert (=> d!326433 m!1306281))

(declare-fun m!1308391 () Bool)

(assert (=> d!326433 m!1308391))

(declare-fun m!1308393 () Bool)

(assert (=> d!326433 m!1308393))

(assert (=> b!1146748 m!1306265))

(assert (=> b!1145361 d!326433))

(declare-fun d!326435 () Bool)

(declare-fun lt!388944 () Bool)

(declare-fun e!733027 () Bool)

(assert (=> d!326435 (= lt!388944 e!733027)))

(declare-fun res!515841 () Bool)

(assert (=> d!326435 (=> (not res!515841) (not e!733027))))

(assert (=> d!326435 (= res!515841 (= (list!4049 (_1!6818 (lex!666 lt!388058 (rules!9316 pt!21) (print!603 lt!388058 (singletonSeq!617 lt!388090))))) (list!4049 (singletonSeq!617 lt!388090))))))

(declare-fun e!733028 () Bool)

(assert (=> d!326435 (= lt!388944 e!733028)))

(declare-fun res!515842 () Bool)

(assert (=> d!326435 (=> (not res!515842) (not e!733028))))

(declare-fun lt!388943 () tuple2!11942)

(assert (=> d!326435 (= res!515842 (= (size!8670 (_1!6818 lt!388943)) 1))))

(assert (=> d!326435 (= lt!388943 (lex!666 lt!388058 (rules!9316 pt!21) (print!603 lt!388058 (singletonSeq!617 lt!388090))))))

(assert (=> d!326435 (not (isEmpty!6858 (rules!9316 pt!21)))))

(assert (=> d!326435 (= (rulesProduceIndividualToken!651 lt!388058 (rules!9316 pt!21) lt!388090) lt!388944)))

(declare-fun b!1146749 () Bool)

(declare-fun res!515843 () Bool)

(assert (=> b!1146749 (=> (not res!515843) (not e!733028))))

(assert (=> b!1146749 (= res!515843 (= (apply!2353 (_1!6818 lt!388943) 0) lt!388090))))

(declare-fun b!1146750 () Bool)

(assert (=> b!1146750 (= e!733028 (isEmpty!6862 (_2!6818 lt!388943)))))

(declare-fun b!1146751 () Bool)

(assert (=> b!1146751 (= e!733027 (isEmpty!6862 (_2!6818 (lex!666 lt!388058 (rules!9316 pt!21) (print!603 lt!388058 (singletonSeq!617 lt!388090))))))))

(assert (= (and d!326435 res!515842) b!1146749))

(assert (= (and b!1146749 res!515843) b!1146750))

(assert (= (and d!326435 res!515841) b!1146751))

(declare-fun m!1308395 () Bool)

(assert (=> d!326435 m!1308395))

(assert (=> d!326435 m!1308395))

(declare-fun m!1308397 () Bool)

(assert (=> d!326435 m!1308397))

(declare-fun m!1308399 () Bool)

(assert (=> d!326435 m!1308399))

(assert (=> d!326435 m!1306527))

(assert (=> d!326435 m!1308395))

(declare-fun m!1308401 () Bool)

(assert (=> d!326435 m!1308401))

(assert (=> d!326435 m!1308397))

(declare-fun m!1308403 () Bool)

(assert (=> d!326435 m!1308403))

(declare-fun m!1308405 () Bool)

(assert (=> d!326435 m!1308405))

(declare-fun m!1308407 () Bool)

(assert (=> b!1146749 m!1308407))

(declare-fun m!1308409 () Bool)

(assert (=> b!1146750 m!1308409))

(assert (=> b!1146751 m!1308395))

(assert (=> b!1146751 m!1308395))

(assert (=> b!1146751 m!1308397))

(assert (=> b!1146751 m!1308397))

(assert (=> b!1146751 m!1308403))

(declare-fun m!1308411 () Bool)

(assert (=> b!1146751 m!1308411))

(assert (=> b!1145361 d!326435))

(declare-fun d!326437 () Bool)

(declare-fun prefixMatchZipperSequence!77 (Regex!3175 BalanceConc!7130) Bool)

(declare-fun rulesRegex!54 (LexerInterface!1604 List!11076) Regex!3175)

(declare-fun ++!2952 (BalanceConc!7130 BalanceConc!7130) BalanceConc!7130)

(declare-fun singletonSeq!619 ((_ BitVec 16)) BalanceConc!7130)

(declare-fun apply!2360 (BalanceConc!7130 Int) (_ BitVec 16))

(assert (=> d!326437 (= (separableTokensPredicate!102 lt!388058 (apply!2353 (tokens!1490 pt!21) lt!388067) (apply!2353 (tokens!1490 pt!21) (+ lt!388067 1)) (rules!9316 pt!21)) (not (prefixMatchZipperSequence!77 (rulesRegex!54 lt!388058 (rules!9316 pt!21)) (++!2952 (charsOf!1040 (apply!2353 (tokens!1490 pt!21) lt!388067)) (singletonSeq!619 (apply!2360 (charsOf!1040 (apply!2353 (tokens!1490 pt!21) (+ lt!388067 1))) 0))))))))

(declare-fun bs!281178 () Bool)

(assert (= bs!281178 d!326437))

(declare-fun m!1308539 () Bool)

(assert (=> bs!281178 m!1308539))

(declare-fun m!1308541 () Bool)

(assert (=> bs!281178 m!1308541))

(assert (=> bs!281178 m!1306399))

(assert (=> bs!281178 m!1308539))

(declare-fun m!1308543 () Bool)

(assert (=> bs!281178 m!1308543))

(assert (=> bs!281178 m!1306365))

(assert (=> bs!281178 m!1306399))

(assert (=> bs!281178 m!1306359))

(declare-fun m!1308545 () Bool)

(assert (=> bs!281178 m!1308545))

(assert (=> bs!281178 m!1308543))

(declare-fun m!1308547 () Bool)

(assert (=> bs!281178 m!1308547))

(declare-fun m!1308549 () Bool)

(assert (=> bs!281178 m!1308549))

(assert (=> bs!281178 m!1308545))

(assert (=> bs!281178 m!1308541))

(assert (=> bs!281178 m!1308547))

(assert (=> b!1145361 d!326437))

(declare-fun d!326445 () Bool)

(declare-fun lt!388981 () Token!3472)

(assert (=> d!326445 (contains!1978 lt!388123 lt!388981)))

(declare-fun e!733058 () Token!3472)

(assert (=> d!326445 (= lt!388981 e!733058)))

(declare-fun c!192575 () Bool)

(assert (=> d!326445 (= c!192575 (= lt!388084 0))))

(declare-fun e!733057 () Bool)

(assert (=> d!326445 e!733057))

(declare-fun res!515862 () Bool)

(assert (=> d!326445 (=> (not res!515862) (not e!733057))))

(assert (=> d!326445 (= res!515862 (<= 0 lt!388084))))

(assert (=> d!326445 (= (apply!2354 lt!388123 lt!388084) lt!388981)))

(declare-fun b!1146795 () Bool)

(assert (=> b!1146795 (= e!733057 (< lt!388084 (size!8680 lt!388123)))))

(declare-fun b!1146796 () Bool)

(assert (=> b!1146796 (= e!733058 (head!2070 lt!388123))))

(declare-fun b!1146797 () Bool)

(assert (=> b!1146797 (= e!733058 (apply!2354 (tail!1644 lt!388123) (- lt!388084 1)))))

(assert (= (and d!326445 res!515862) b!1146795))

(assert (= (and d!326445 c!192575) b!1146796))

(assert (= (and d!326445 (not c!192575)) b!1146797))

(declare-fun m!1308551 () Bool)

(assert (=> d!326445 m!1308551))

(assert (=> b!1146795 m!1308353))

(declare-fun m!1308553 () Bool)

(assert (=> b!1146796 m!1308553))

(declare-fun m!1308555 () Bool)

(assert (=> b!1146797 m!1308555))

(assert (=> b!1146797 m!1308555))

(declare-fun m!1308557 () Bool)

(assert (=> b!1146797 m!1308557))

(assert (=> b!1145361 d!326445))

(declare-fun d!326447 () Bool)

(assert (=> d!326447 (= (head!2070 (drop!430 lt!388071 lt!388067)) (apply!2354 lt!388071 lt!388067))))

(declare-fun lt!388982 () Unit!16973)

(assert (=> d!326447 (= lt!388982 (choose!7362 lt!388071 lt!388067))))

(declare-fun e!733059 () Bool)

(assert (=> d!326447 e!733059))

(declare-fun res!515863 () Bool)

(assert (=> d!326447 (=> (not res!515863) (not e!733059))))

(assert (=> d!326447 (= res!515863 (>= lt!388067 0))))

(assert (=> d!326447 (= (lemmaDropApply!343 lt!388071 lt!388067) lt!388982)))

(declare-fun b!1146798 () Bool)

(assert (=> b!1146798 (= e!733059 (< lt!388067 (size!8680 lt!388071)))))

(assert (= (and d!326447 res!515863) b!1146798))

(assert (=> d!326447 m!1306395))

(assert (=> d!326447 m!1306395))

(assert (=> d!326447 m!1306397))

(assert (=> d!326447 m!1306409))

(declare-fun m!1308559 () Bool)

(assert (=> d!326447 m!1308559))

(assert (=> b!1146798 m!1308245))

(assert (=> b!1145361 d!326447))

(declare-fun d!326449 () Bool)

(assert (=> d!326449 (= (head!2070 (drop!430 lt!388071 lt!388067)) (h!16452 (drop!430 lt!388071 lt!388067)))))

(assert (=> b!1145361 d!326449))

(declare-fun b!1146803 () Bool)

(declare-fun e!733065 () List!11075)

(declare-fun e!733066 () List!11075)

(assert (=> b!1146803 (= e!733065 e!733066)))

(declare-fun c!192578 () Bool)

(assert (=> b!1146803 (= c!192578 (<= lt!388106 0))))

(declare-fun b!1146804 () Bool)

(assert (=> b!1146804 (= e!733065 Nil!11051)))

(declare-fun b!1146805 () Bool)

(assert (=> b!1146805 (= e!733066 lt!388079)))

(declare-fun b!1146806 () Bool)

(declare-fun e!733068 () Bool)

(declare-fun lt!388983 () List!11075)

(declare-fun e!733067 () Int)

(assert (=> b!1146806 (= e!733068 (= (size!8680 lt!388983) e!733067))))

(declare-fun c!192576 () Bool)

(assert (=> b!1146806 (= c!192576 (<= lt!388106 0))))

(declare-fun b!1146807 () Bool)

(declare-fun e!733064 () Int)

(assert (=> b!1146807 (= e!733064 0)))

(declare-fun bm!81678 () Bool)

(declare-fun call!81683 () Int)

(assert (=> bm!81678 (= call!81683 (size!8680 lt!388079))))

(declare-fun b!1146808 () Bool)

(assert (=> b!1146808 (= e!733066 (drop!430 (t!107997 lt!388079) (- lt!388106 1)))))

(declare-fun b!1146809 () Bool)

(assert (=> b!1146809 (= e!733067 call!81683)))

(declare-fun d!326451 () Bool)

(assert (=> d!326451 e!733068))

(declare-fun res!515864 () Bool)

(assert (=> d!326451 (=> (not res!515864) (not e!733068))))

(assert (=> d!326451 (= res!515864 (= ((_ map implies) (content!1591 lt!388983) (content!1591 lt!388079)) ((as const (InoxSet Token!3472)) true)))))

(assert (=> d!326451 (= lt!388983 e!733065)))

(declare-fun c!192577 () Bool)

(assert (=> d!326451 (= c!192577 ((_ is Nil!11051) lt!388079))))

(assert (=> d!326451 (= (drop!430 lt!388079 lt!388106) lt!388983)))

(declare-fun b!1146810 () Bool)

(assert (=> b!1146810 (= e!733067 e!733064)))

(declare-fun c!192579 () Bool)

(assert (=> b!1146810 (= c!192579 (>= lt!388106 call!81683))))

(declare-fun b!1146811 () Bool)

(assert (=> b!1146811 (= e!733064 (- call!81683 lt!388106))))

(assert (= (and d!326451 c!192577) b!1146804))

(assert (= (and d!326451 (not c!192577)) b!1146803))

(assert (= (and b!1146803 c!192578) b!1146805))

(assert (= (and b!1146803 (not c!192578)) b!1146808))

(assert (= (and d!326451 res!515864) b!1146806))

(assert (= (and b!1146806 c!192576) b!1146809))

(assert (= (and b!1146806 (not c!192576)) b!1146810))

(assert (= (and b!1146810 c!192579) b!1146807))

(assert (= (and b!1146810 (not c!192579)) b!1146811))

(assert (= (or b!1146809 b!1146810 b!1146811) bm!81678))

(declare-fun m!1308561 () Bool)

(assert (=> b!1146806 m!1308561))

(assert (=> bm!81678 m!1308371))

(declare-fun m!1308563 () Bool)

(assert (=> b!1146808 m!1308563))

(declare-fun m!1308565 () Bool)

(assert (=> d!326451 m!1308565))

(assert (=> d!326451 m!1308387))

(assert (=> b!1145361 d!326451))

(declare-fun b!1146812 () Bool)

(declare-fun e!733070 () List!11075)

(declare-fun e!733071 () List!11075)

(assert (=> b!1146812 (= e!733070 e!733071)))

(declare-fun c!192582 () Bool)

(assert (=> b!1146812 (= c!192582 (<= lt!388067 0))))

(declare-fun b!1146813 () Bool)

(assert (=> b!1146813 (= e!733070 Nil!11051)))

(declare-fun b!1146814 () Bool)

(assert (=> b!1146814 (= e!733071 lt!388096)))

(declare-fun b!1146815 () Bool)

(declare-fun e!733073 () Bool)

(declare-fun lt!388984 () List!11075)

(declare-fun e!733072 () Int)

(assert (=> b!1146815 (= e!733073 (= (size!8680 lt!388984) e!733072))))

(declare-fun c!192580 () Bool)

(assert (=> b!1146815 (= c!192580 (<= lt!388067 0))))

(declare-fun b!1146816 () Bool)

(declare-fun e!733069 () Int)

(assert (=> b!1146816 (= e!733069 0)))

(declare-fun bm!81679 () Bool)

(declare-fun call!81684 () Int)

(assert (=> bm!81679 (= call!81684 (size!8680 lt!388096))))

(declare-fun b!1146817 () Bool)

(assert (=> b!1146817 (= e!733071 (drop!430 (t!107997 lt!388096) (- lt!388067 1)))))

(declare-fun b!1146818 () Bool)

(assert (=> b!1146818 (= e!733072 call!81684)))

(declare-fun d!326453 () Bool)

(assert (=> d!326453 e!733073))

(declare-fun res!515865 () Bool)

(assert (=> d!326453 (=> (not res!515865) (not e!733073))))

(assert (=> d!326453 (= res!515865 (= ((_ map implies) (content!1591 lt!388984) (content!1591 lt!388096)) ((as const (InoxSet Token!3472)) true)))))

(assert (=> d!326453 (= lt!388984 e!733070)))

(declare-fun c!192581 () Bool)

(assert (=> d!326453 (= c!192581 ((_ is Nil!11051) lt!388096))))

(assert (=> d!326453 (= (drop!430 lt!388096 lt!388067) lt!388984)))

(declare-fun b!1146819 () Bool)

(assert (=> b!1146819 (= e!733072 e!733069)))

(declare-fun c!192583 () Bool)

(assert (=> b!1146819 (= c!192583 (>= lt!388067 call!81684))))

(declare-fun b!1146820 () Bool)

(assert (=> b!1146820 (= e!733069 (- call!81684 lt!388067))))

(assert (= (and d!326453 c!192581) b!1146813))

(assert (= (and d!326453 (not c!192581)) b!1146812))

(assert (= (and b!1146812 c!192582) b!1146814))

(assert (= (and b!1146812 (not c!192582)) b!1146817))

(assert (= (and d!326453 res!515865) b!1146815))

(assert (= (and b!1146815 c!192580) b!1146818))

(assert (= (and b!1146815 (not c!192580)) b!1146819))

(assert (= (and b!1146819 c!192583) b!1146816))

(assert (= (and b!1146819 (not c!192583)) b!1146820))

(assert (= (or b!1146818 b!1146819 b!1146820) bm!81679))

(declare-fun m!1308567 () Bool)

(assert (=> b!1146815 m!1308567))

(assert (=> bm!81679 m!1308261))

(declare-fun m!1308569 () Bool)

(assert (=> b!1146817 m!1308569))

(declare-fun m!1308571 () Bool)

(assert (=> d!326453 m!1308571))

(assert (=> d!326453 m!1308379))

(assert (=> b!1145361 d!326453))

(declare-fun bs!281179 () Bool)

(declare-fun d!326455 () Bool)

(assert (= bs!281179 (and d!326455 d!326121)))

(declare-fun lambda!46155 () Int)

(assert (=> bs!281179 (= lambda!46155 lambda!46126)))

(declare-fun bs!281180 () Bool)

(assert (= bs!281180 (and d!326455 d!326253)))

(assert (=> bs!281180 (= (= lt!388069 Lexer!1602) (= lambda!46155 lambda!46139))))

(declare-fun bs!281181 () Bool)

(assert (= bs!281181 (and d!326455 d!325935)))

(assert (=> bs!281181 (= (= lt!388069 Lexer!1602) (= lambda!46155 lambda!46111))))

(declare-fun bs!281182 () Bool)

(assert (= bs!281182 (and d!326455 d!326271)))

(assert (=> bs!281182 (= (= lt!388069 Lexer!1602) (= lambda!46155 lambda!46140))))

(declare-fun bs!281183 () Bool)

(assert (= bs!281183 (and d!326455 d!326039)))

(assert (=> bs!281183 (= (= lt!388069 lt!388077) (= lambda!46155 lambda!46114))))

(declare-fun bs!281184 () Bool)

(assert (= bs!281184 (and d!326455 d!326277)))

(assert (=> bs!281184 (= (= lt!388069 lt!388077) (= lambda!46155 lambda!46141))))

(declare-fun bs!281185 () Bool)

(assert (= bs!281185 (and d!326455 d!326383)))

(assert (=> bs!281185 (= (= lt!388069 lt!388120) (= lambda!46155 lambda!46150))))

(declare-fun bs!281186 () Bool)

(assert (= bs!281186 (and d!326455 d!326325)))

(assert (=> bs!281186 (= (= lt!388069 lt!388115) (= lambda!46155 lambda!46146))))

(declare-fun bs!281187 () Bool)

(assert (= bs!281187 (and d!326455 b!1145950)))

(assert (=> bs!281187 (= (= lt!388069 Lexer!1602) (= lambda!46155 lambda!46123))))

(declare-fun bs!281188 () Bool)

(assert (= bs!281188 (and d!326455 d!326195)))

(assert (=> bs!281188 (= (= lt!388069 Lexer!1602) (= lambda!46155 lambda!46133))))

(declare-fun bs!281189 () Bool)

(assert (= bs!281189 (and d!326455 b!1145847)))

(assert (=> bs!281189 (= (= lt!388069 Lexer!1602) (= lambda!46155 lambda!46117))))

(declare-fun bs!281190 () Bool)

(assert (= bs!281190 (and d!326455 d!326199)))

(assert (=> bs!281190 (= (= lt!388069 Lexer!1602) (= lambda!46155 lambda!46138))))

(declare-fun b!1146831 () Bool)

(declare-fun e!733083 () Bool)

(assert (=> b!1146831 (= e!733083 true)))

(declare-fun b!1146830 () Bool)

(declare-fun e!733082 () Bool)

(assert (=> b!1146830 (= e!733082 e!733083)))

(declare-fun b!1146829 () Bool)

(declare-fun e!733081 () Bool)

(assert (=> b!1146829 (= e!733081 e!733082)))

(assert (=> d!326455 e!733081))

(assert (= b!1146830 b!1146831))

(assert (= b!1146829 b!1146830))

(assert (= (and d!326455 ((_ is Cons!11052) (rules!9316 pt!21))) b!1146829))

(assert (=> b!1146831 (< (dynLambda!4881 order!6751 (toValue!3002 (transformation!1905 (h!16453 (rules!9316 pt!21))))) (dynLambda!4882 order!6753 lambda!46155))))

(assert (=> b!1146831 (< (dynLambda!4883 order!6755 (toChars!2861 (transformation!1905 (h!16453 (rules!9316 pt!21))))) (dynLambda!4882 order!6753 lambda!46155))))

(assert (=> d!326455 true))

(declare-fun lt!388985 () Bool)

(assert (=> d!326455 (= lt!388985 (forall!2752 (t!107997 lt!388111) lambda!46155))))

(declare-fun e!733077 () Bool)

(assert (=> d!326455 (= lt!388985 e!733077)))

(declare-fun res!515866 () Bool)

(assert (=> d!326455 (=> res!515866 e!733077)))

(assert (=> d!326455 (= res!515866 (not ((_ is Cons!11051) (t!107997 lt!388111))))))

(assert (=> d!326455 (not (isEmpty!6858 (rules!9316 pt!21)))))

(assert (=> d!326455 (= (rulesProduceEachTokenIndividuallyList!479 lt!388069 (rules!9316 pt!21) (t!107997 lt!388111)) lt!388985)))

(declare-fun b!1146824 () Bool)

(declare-fun e!733078 () Bool)

(assert (=> b!1146824 (= e!733077 e!733078)))

(declare-fun res!515867 () Bool)

(assert (=> b!1146824 (=> (not res!515867) (not e!733078))))

(assert (=> b!1146824 (= res!515867 (rulesProduceIndividualToken!651 lt!388069 (rules!9316 pt!21) (h!16452 (t!107997 lt!388111))))))

(declare-fun b!1146825 () Bool)

(assert (=> b!1146825 (= e!733078 (rulesProduceEachTokenIndividuallyList!479 lt!388069 (rules!9316 pt!21) (t!107997 (t!107997 lt!388111))))))

(assert (= (and d!326455 (not res!515866)) b!1146824))

(assert (= (and b!1146824 res!515867) b!1146825))

(declare-fun m!1308591 () Bool)

(assert (=> d!326455 m!1308591))

(assert (=> d!326455 m!1306527))

(declare-fun m!1308593 () Bool)

(assert (=> b!1146824 m!1308593))

(declare-fun m!1308595 () Bool)

(assert (=> b!1146825 m!1308595))

(assert (=> b!1145357 d!326455))

(assert (=> b!1145221 d!325919))

(declare-fun d!326457 () Bool)

(declare-fun lt!388987 () Bool)

(declare-fun e!733092 () Bool)

(assert (=> d!326457 (= lt!388987 e!733092)))

(declare-fun res!515868 () Bool)

(assert (=> d!326457 (=> (not res!515868) (not e!733092))))

(assert (=> d!326457 (= res!515868 (= (list!4049 (_1!6818 (lex!666 lt!388069 (rules!9316 pt!21) (print!603 lt!388069 (singletonSeq!617 (h!16452 lt!388111)))))) (list!4049 (singletonSeq!617 (h!16452 lt!388111)))))))

(declare-fun e!733093 () Bool)

(assert (=> d!326457 (= lt!388987 e!733093)))

(declare-fun res!515869 () Bool)

(assert (=> d!326457 (=> (not res!515869) (not e!733093))))

(declare-fun lt!388986 () tuple2!11942)

(assert (=> d!326457 (= res!515869 (= (size!8670 (_1!6818 lt!388986)) 1))))

(assert (=> d!326457 (= lt!388986 (lex!666 lt!388069 (rules!9316 pt!21) (print!603 lt!388069 (singletonSeq!617 (h!16452 lt!388111)))))))

(assert (=> d!326457 (not (isEmpty!6858 (rules!9316 pt!21)))))

(assert (=> d!326457 (= (rulesProduceIndividualToken!651 lt!388069 (rules!9316 pt!21) (h!16452 lt!388111)) lt!388987)))

(declare-fun b!1146841 () Bool)

(declare-fun res!515870 () Bool)

(assert (=> b!1146841 (=> (not res!515870) (not e!733093))))

(assert (=> b!1146841 (= res!515870 (= (apply!2353 (_1!6818 lt!388986) 0) (h!16452 lt!388111)))))

(declare-fun b!1146842 () Bool)

(assert (=> b!1146842 (= e!733093 (isEmpty!6862 (_2!6818 lt!388986)))))

(declare-fun b!1146843 () Bool)

(assert (=> b!1146843 (= e!733092 (isEmpty!6862 (_2!6818 (lex!666 lt!388069 (rules!9316 pt!21) (print!603 lt!388069 (singletonSeq!617 (h!16452 lt!388111)))))))))

(assert (= (and d!326457 res!515869) b!1146841))

(assert (= (and b!1146841 res!515870) b!1146842))

(assert (= (and d!326457 res!515868) b!1146843))

(declare-fun m!1308597 () Bool)

(assert (=> d!326457 m!1308597))

(assert (=> d!326457 m!1308597))

(declare-fun m!1308599 () Bool)

(assert (=> d!326457 m!1308599))

(declare-fun m!1308601 () Bool)

(assert (=> d!326457 m!1308601))

(assert (=> d!326457 m!1306527))

(assert (=> d!326457 m!1308597))

(declare-fun m!1308603 () Bool)

(assert (=> d!326457 m!1308603))

(assert (=> d!326457 m!1308599))

(declare-fun m!1308605 () Bool)

(assert (=> d!326457 m!1308605))

(declare-fun m!1308607 () Bool)

(assert (=> d!326457 m!1308607))

(declare-fun m!1308609 () Bool)

(assert (=> b!1146841 m!1308609))

(declare-fun m!1308611 () Bool)

(assert (=> b!1146842 m!1308611))

(assert (=> b!1146843 m!1308597))

(assert (=> b!1146843 m!1308597))

(assert (=> b!1146843 m!1308599))

(assert (=> b!1146843 m!1308599))

(assert (=> b!1146843 m!1308605))

(declare-fun m!1308613 () Bool)

(assert (=> b!1146843 m!1308613))

(assert (=> b!1145359 d!326457))

(declare-fun d!326459 () Bool)

(assert (=> d!326459 (= (list!4049 (tokens!1490 lt!388118)) (list!4055 (c!192327 (tokens!1490 lt!388118))))))

(declare-fun bs!281191 () Bool)

(assert (= bs!281191 d!326459))

(declare-fun m!1308615 () Bool)

(assert (=> bs!281191 m!1308615))

(assert (=> b!1145355 d!326459))

(assert (=> b!1145355 d!326081))

(assert (=> b!1145355 d!326101))

(assert (=> b!1145219 d!325949))

(declare-fun b!1146878 () Bool)

(declare-fun res!515888 () Bool)

(declare-fun e!733120 () Bool)

(assert (=> b!1146878 (=> (not res!515888) (not e!733120))))

(assert (=> b!1146878 (= res!515888 (isBalanced!998 (left!9613 (c!192327 (tokens!1490 pt!21)))))))

(declare-fun b!1146879 () Bool)

(declare-fun res!515883 () Bool)

(assert (=> b!1146879 (=> (not res!515883) (not e!733120))))

(assert (=> b!1146879 (= res!515883 (<= (- (height!481 (left!9613 (c!192327 (tokens!1490 pt!21)))) (height!481 (right!9943 (c!192327 (tokens!1490 pt!21))))) 1))))

(declare-fun b!1146880 () Bool)

(declare-fun isEmpty!6866 (Conc!3555) Bool)

(assert (=> b!1146880 (= e!733120 (not (isEmpty!6866 (right!9943 (c!192327 (tokens!1490 pt!21))))))))

(declare-fun b!1146881 () Bool)

(declare-fun res!515884 () Bool)

(assert (=> b!1146881 (=> (not res!515884) (not e!733120))))

(assert (=> b!1146881 (= res!515884 (not (isEmpty!6866 (left!9613 (c!192327 (tokens!1490 pt!21))))))))

(declare-fun d!326461 () Bool)

(declare-fun res!515885 () Bool)

(declare-fun e!733121 () Bool)

(assert (=> d!326461 (=> res!515885 e!733121)))

(assert (=> d!326461 (= res!515885 (not ((_ is Node!3555) (c!192327 (tokens!1490 pt!21)))))))

(assert (=> d!326461 (= (isBalanced!998 (c!192327 (tokens!1490 pt!21))) e!733121)))

(declare-fun b!1146882 () Bool)

(declare-fun res!515886 () Bool)

(assert (=> b!1146882 (=> (not res!515886) (not e!733120))))

(assert (=> b!1146882 (= res!515886 (isBalanced!998 (right!9943 (c!192327 (tokens!1490 pt!21)))))))

(declare-fun b!1146883 () Bool)

(assert (=> b!1146883 (= e!733121 e!733120)))

(declare-fun res!515887 () Bool)

(assert (=> b!1146883 (=> (not res!515887) (not e!733120))))

(assert (=> b!1146883 (= res!515887 (<= (- 1) (- (height!481 (left!9613 (c!192327 (tokens!1490 pt!21)))) (height!481 (right!9943 (c!192327 (tokens!1490 pt!21)))))))))

(assert (= (and d!326461 (not res!515885)) b!1146883))

(assert (= (and b!1146883 res!515887) b!1146879))

(assert (= (and b!1146879 res!515883) b!1146878))

(assert (= (and b!1146878 res!515888) b!1146882))

(assert (= (and b!1146882 res!515886) b!1146881))

(assert (= (and b!1146881 res!515884) b!1146880))

(declare-fun m!1308643 () Bool)

(assert (=> b!1146881 m!1308643))

(declare-fun m!1308645 () Bool)

(assert (=> b!1146880 m!1308645))

(assert (=> b!1146879 m!1308203))

(assert (=> b!1146879 m!1308205))

(assert (=> b!1146883 m!1308203))

(assert (=> b!1146883 m!1308205))

(declare-fun m!1308647 () Bool)

(assert (=> b!1146882 m!1308647))

(declare-fun m!1308649 () Bool)

(assert (=> b!1146878 m!1308649))

(assert (=> d!325993 d!326461))

(assert (=> d!325957 d!326375))

(assert (=> d!325957 d!325973))

(declare-fun b!1146885 () Bool)

(declare-fun e!733124 () Bool)

(assert (=> b!1146885 (= e!733124 (forall!2764 (xs!6257 (c!192328 acc!225)) lambda!46085))))

(declare-fun b!1146884 () Bool)

(declare-fun e!733123 () Bool)

(assert (=> b!1146884 (= e!733123 e!733124)))

(declare-fun c!192584 () Bool)

(assert (=> b!1146884 (= c!192584 ((_ is Leaf!5519) (c!192328 acc!225)))))

(declare-fun b!1146887 () Bool)

(declare-fun e!733122 () Bool)

(assert (=> b!1146887 (= e!733122 (forall!2757 (right!9944 (c!192328 acc!225)) lambda!46085))))

(declare-fun b!1146886 () Bool)

(assert (=> b!1146886 (= e!733124 e!733122)))

(declare-fun lt!388989 () Unit!16973)

(assert (=> b!1146886 (= lt!388989 (lemmaForallConcat!105 (list!4050 (left!9614 (c!192328 acc!225))) (list!4050 (right!9944 (c!192328 acc!225))) lambda!46085))))

(declare-fun res!515889 () Bool)

(assert (=> b!1146886 (= res!515889 (forall!2757 (left!9614 (c!192328 acc!225)) lambda!46085))))

(assert (=> b!1146886 (=> (not res!515889) (not e!733122))))

(declare-fun d!326479 () Bool)

(declare-fun lt!388988 () Bool)

(assert (=> d!326479 (= lt!388988 (forall!2756 (list!4050 (c!192328 acc!225)) lambda!46085))))

(assert (=> d!326479 (= lt!388988 e!733123)))

(declare-fun res!515890 () Bool)

(assert (=> d!326479 (=> res!515890 e!733123)))

(assert (=> d!326479 (= res!515890 ((_ is Empty!3556) (c!192328 acc!225)))))

(assert (=> d!326479 (= (forall!2757 (c!192328 acc!225) lambda!46085) lt!388988)))

(assert (= (and d!326479 (not res!515890)) b!1146884))

(assert (= (and b!1146884 c!192584) b!1146885))

(assert (= (and b!1146884 (not c!192584)) b!1146886))

(assert (= (and b!1146886 res!515889) b!1146887))

(declare-fun m!1308651 () Bool)

(assert (=> b!1146885 m!1308651))

(declare-fun m!1308653 () Bool)

(assert (=> b!1146887 m!1308653))

(assert (=> b!1146886 m!1306781))

(assert (=> b!1146886 m!1308209))

(assert (=> b!1146886 m!1306781))

(assert (=> b!1146886 m!1308209))

(declare-fun m!1308655 () Bool)

(assert (=> b!1146886 m!1308655))

(declare-fun m!1308657 () Bool)

(assert (=> b!1146886 m!1308657))

(assert (=> d!326479 m!1306487))

(assert (=> d!326479 m!1306487))

(declare-fun m!1308659 () Bool)

(assert (=> d!326479 m!1308659))

(assert (=> d!325957 d!326479))

(declare-fun d!326481 () Bool)

(declare-fun res!515895 () Bool)

(declare-fun e!733127 () Bool)

(assert (=> d!326481 (=> (not res!515895) (not e!733127))))

(assert (=> d!326481 (= res!515895 (<= (size!8682 (list!4054 (xs!6257 (c!192328 acc!225)))) 512))))

(assert (=> d!326481 (= (inv!14434 (c!192328 acc!225)) e!733127)))

(declare-fun b!1146892 () Bool)

(declare-fun res!515896 () Bool)

(assert (=> b!1146892 (=> (not res!515896) (not e!733127))))

(assert (=> b!1146892 (= res!515896 (= (csize!7343 (c!192328 acc!225)) (size!8682 (list!4054 (xs!6257 (c!192328 acc!225))))))))

(declare-fun b!1146893 () Bool)

(assert (=> b!1146893 (= e!733127 (and (> (csize!7343 (c!192328 acc!225)) 0) (<= (csize!7343 (c!192328 acc!225)) 512)))))

(assert (= (and d!326481 res!515895) b!1146892))

(assert (= (and b!1146892 res!515896) b!1146893))

(assert (=> d!326481 m!1306769))

(assert (=> d!326481 m!1306769))

(declare-fun m!1308661 () Bool)

(assert (=> d!326481 m!1308661))

(assert (=> b!1146892 m!1306769))

(assert (=> b!1146892 m!1306769))

(assert (=> b!1146892 m!1308661))

(assert (=> b!1145384 d!326481))

(declare-fun d!326483 () Bool)

(assert (=> d!326483 (= (inv!14437 (xs!6256 (c!192327 (tokens!1490 pt!21)))) (<= (size!8680 (innerList!3615 (xs!6256 (c!192327 (tokens!1490 pt!21))))) 2147483647))))

(declare-fun bs!281200 () Bool)

(assert (= bs!281200 d!326483))

(declare-fun m!1308663 () Bool)

(assert (=> bs!281200 m!1308663))

(assert (=> b!1145468 d!326483))

(declare-fun d!326485 () Bool)

(declare-fun lt!388992 () Int)

(assert (=> d!326485 (>= lt!388992 0)))

(declare-fun e!733130 () Int)

(assert (=> d!326485 (= lt!388992 e!733130)))

(declare-fun c!192587 () Bool)

(assert (=> d!326485 (= c!192587 ((_ is Nil!11054) (list!4047 indices!2)))))

(assert (=> d!326485 (= (size!8674 (list!4047 indices!2)) lt!388992)))

(declare-fun b!1146898 () Bool)

(assert (=> b!1146898 (= e!733130 0)))

(declare-fun b!1146899 () Bool)

(assert (=> b!1146899 (= e!733130 (+ 1 (size!8674 (t!108000 (list!4047 indices!2)))))))

(assert (= (and d!326485 c!192587) b!1146898))

(assert (= (and d!326485 (not c!192587)) b!1146899))

(declare-fun m!1308665 () Bool)

(assert (=> b!1146899 m!1308665))

(assert (=> d!325945 d!326485))

(assert (=> d!325945 d!326013))

(declare-fun d!326487 () Bool)

(declare-fun lt!388995 () Int)

(assert (=> d!326487 (= lt!388995 (size!8674 (list!4052 (c!192329 indices!2))))))

(assert (=> d!326487 (= lt!388995 (ite ((_ is Empty!3557) (c!192329 indices!2)) 0 (ite ((_ is Leaf!5520) (c!192329 indices!2)) (csize!7345 (c!192329 indices!2)) (csize!7344 (c!192329 indices!2)))))))

(assert (=> d!326487 (= (size!8675 (c!192329 indices!2)) lt!388995)))

(declare-fun bs!281201 () Bool)

(assert (= bs!281201 d!326487))

(assert (=> bs!281201 m!1306631))

(assert (=> bs!281201 m!1306631))

(declare-fun m!1308667 () Bool)

(assert (=> bs!281201 m!1308667))

(assert (=> d!325945 d!326487))

(assert (=> b!1145353 d!326257))

(declare-fun d!326489 () Bool)

(declare-fun res!515899 () Bool)

(declare-fun e!733133 () Bool)

(assert (=> d!326489 (=> (not res!515899) (not e!733133))))

(declare-fun rulesValid!656 (LexerInterface!1604 List!11076) Bool)

(assert (=> d!326489 (= res!515899 (rulesValid!656 Lexer!1602 (rules!9316 pt!21)))))

(assert (=> d!326489 (= (rulesInvariant!1478 Lexer!1602 (rules!9316 pt!21)) e!733133)))

(declare-fun b!1146902 () Bool)

(declare-datatypes ((List!11080 0))(
  ( (Nil!11056) (Cons!11056 (h!16457 String!13443) (t!108112 List!11080)) )
))
(declare-fun noDuplicateTag!656 (LexerInterface!1604 List!11076 List!11080) Bool)

(assert (=> b!1146902 (= e!733133 (noDuplicateTag!656 Lexer!1602 (rules!9316 pt!21) Nil!11056))))

(assert (= (and d!326489 res!515899) b!1146902))

(declare-fun m!1308669 () Bool)

(assert (=> d!326489 m!1308669))

(declare-fun m!1308671 () Bool)

(assert (=> b!1146902 m!1308671))

(assert (=> b!1145456 d!326489))

(declare-fun d!326491 () Bool)

(declare-fun c!192588 () Bool)

(assert (=> d!326491 (= c!192588 ((_ is Node!3556) (left!9614 (c!192328 acc!225))))))

(declare-fun e!733134 () Bool)

(assert (=> d!326491 (= (inv!14414 (left!9614 (c!192328 acc!225))) e!733134)))

(declare-fun b!1146903 () Bool)

(assert (=> b!1146903 (= e!733134 (inv!14433 (left!9614 (c!192328 acc!225))))))

(declare-fun b!1146904 () Bool)

(declare-fun e!733135 () Bool)

(assert (=> b!1146904 (= e!733134 e!733135)))

(declare-fun res!515900 () Bool)

(assert (=> b!1146904 (= res!515900 (not ((_ is Leaf!5519) (left!9614 (c!192328 acc!225)))))))

(assert (=> b!1146904 (=> res!515900 e!733135)))

(declare-fun b!1146905 () Bool)

(assert (=> b!1146905 (= e!733135 (inv!14434 (left!9614 (c!192328 acc!225))))))

(assert (= (and d!326491 c!192588) b!1146903))

(assert (= (and d!326491 (not c!192588)) b!1146904))

(assert (= (and b!1146904 (not res!515900)) b!1146905))

(declare-fun m!1308673 () Bool)

(assert (=> b!1146903 m!1308673))

(declare-fun m!1308675 () Bool)

(assert (=> b!1146905 m!1308675))

(assert (=> b!1145486 d!326491))

(declare-fun d!326493 () Bool)

(declare-fun c!192589 () Bool)

(assert (=> d!326493 (= c!192589 ((_ is Node!3556) (right!9944 (c!192328 acc!225))))))

(declare-fun e!733136 () Bool)

(assert (=> d!326493 (= (inv!14414 (right!9944 (c!192328 acc!225))) e!733136)))

(declare-fun b!1146906 () Bool)

(assert (=> b!1146906 (= e!733136 (inv!14433 (right!9944 (c!192328 acc!225))))))

(declare-fun b!1146907 () Bool)

(declare-fun e!733137 () Bool)

(assert (=> b!1146907 (= e!733136 e!733137)))

(declare-fun res!515901 () Bool)

(assert (=> b!1146907 (= res!515901 (not ((_ is Leaf!5519) (right!9944 (c!192328 acc!225)))))))

(assert (=> b!1146907 (=> res!515901 e!733137)))

(declare-fun b!1146908 () Bool)

(assert (=> b!1146908 (= e!733137 (inv!14434 (right!9944 (c!192328 acc!225))))))

(assert (= (and d!326493 c!192589) b!1146906))

(assert (= (and d!326493 (not c!192589)) b!1146907))

(assert (= (and b!1146907 (not res!515901)) b!1146908))

(declare-fun m!1308677 () Bool)

(assert (=> b!1146906 m!1308677))

(declare-fun m!1308679 () Bool)

(assert (=> b!1146908 m!1308679))

(assert (=> b!1145486 d!326493))

(assert (=> d!325983 d!326257))

(declare-fun d!326495 () Bool)

(declare-fun lt!388997 () Bool)

(declare-fun e!733138 () Bool)

(assert (=> d!326495 (= lt!388997 e!733138)))

(declare-fun res!515902 () Bool)

(assert (=> d!326495 (=> (not res!515902) (not e!733138))))

(assert (=> d!326495 (= res!515902 (= (list!4049 (_1!6818 (lex!666 lt!388115 (rules!9316 pt!21) (print!603 lt!388115 (singletonSeq!617 (h!16452 lt!388101)))))) (list!4049 (singletonSeq!617 (h!16452 lt!388101)))))))

(declare-fun e!733139 () Bool)

(assert (=> d!326495 (= lt!388997 e!733139)))

(declare-fun res!515903 () Bool)

(assert (=> d!326495 (=> (not res!515903) (not e!733139))))

(declare-fun lt!388996 () tuple2!11942)

(assert (=> d!326495 (= res!515903 (= (size!8670 (_1!6818 lt!388996)) 1))))

(assert (=> d!326495 (= lt!388996 (lex!666 lt!388115 (rules!9316 pt!21) (print!603 lt!388115 (singletonSeq!617 (h!16452 lt!388101)))))))

(assert (=> d!326495 (not (isEmpty!6858 (rules!9316 pt!21)))))

(assert (=> d!326495 (= (rulesProduceIndividualToken!651 lt!388115 (rules!9316 pt!21) (h!16452 lt!388101)) lt!388997)))

(declare-fun b!1146909 () Bool)

(declare-fun res!515904 () Bool)

(assert (=> b!1146909 (=> (not res!515904) (not e!733139))))

(assert (=> b!1146909 (= res!515904 (= (apply!2353 (_1!6818 lt!388996) 0) (h!16452 lt!388101)))))

(declare-fun b!1146910 () Bool)

(assert (=> b!1146910 (= e!733139 (isEmpty!6862 (_2!6818 lt!388996)))))

(declare-fun b!1146911 () Bool)

(assert (=> b!1146911 (= e!733138 (isEmpty!6862 (_2!6818 (lex!666 lt!388115 (rules!9316 pt!21) (print!603 lt!388115 (singletonSeq!617 (h!16452 lt!388101)))))))))

(assert (= (and d!326495 res!515903) b!1146909))

(assert (= (and b!1146909 res!515904) b!1146910))

(assert (= (and d!326495 res!515902) b!1146911))

(declare-fun m!1308681 () Bool)

(assert (=> d!326495 m!1308681))

(assert (=> d!326495 m!1308681))

(declare-fun m!1308683 () Bool)

(assert (=> d!326495 m!1308683))

(declare-fun m!1308685 () Bool)

(assert (=> d!326495 m!1308685))

(assert (=> d!326495 m!1306527))

(assert (=> d!326495 m!1308681))

(declare-fun m!1308687 () Bool)

(assert (=> d!326495 m!1308687))

(assert (=> d!326495 m!1308683))

(declare-fun m!1308689 () Bool)

(assert (=> d!326495 m!1308689))

(declare-fun m!1308691 () Bool)

(assert (=> d!326495 m!1308691))

(declare-fun m!1308693 () Bool)

(assert (=> b!1146909 m!1308693))

(declare-fun m!1308695 () Bool)

(assert (=> b!1146910 m!1308695))

(assert (=> b!1146911 m!1308681))

(assert (=> b!1146911 m!1308681))

(assert (=> b!1146911 m!1308683))

(assert (=> b!1146911 m!1308683))

(assert (=> b!1146911 m!1308689))

(declare-fun m!1308697 () Bool)

(assert (=> b!1146911 m!1308697))

(assert (=> b!1145351 d!326495))

(declare-fun d!326497 () Bool)

(assert (=> d!326497 (= (separableTokens!73 Lexer!1602 (tokens!1490 pt!21) (rules!9316 pt!21)) (tokensListTwoByTwoPredicateSeparable!33 Lexer!1602 (tokens!1490 pt!21) 0 (rules!9316 pt!21)))))

(declare-fun bs!281202 () Bool)

(assert (= bs!281202 d!326497))

(assert (=> bs!281202 m!1306295))

(assert (=> b!1145458 d!326497))

(declare-fun b!1146922 () Bool)

(declare-fun e!733146 () Bool)

(declare-fun tp!332049 () Bool)

(assert (=> b!1146922 (= e!733146 (and (inv!14415 (c!192327 (tokens!1490 (h!16454 (innerList!3616 (xs!6257 (c!192328 acc!225))))))) tp!332049))))

(declare-fun b!1146921 () Bool)

(declare-fun tp!332050 () Bool)

(declare-fun e!733148 () Bool)

(assert (=> b!1146921 (= e!733148 (and tp!332050 (inv!14416 (tokens!1490 (h!16454 (innerList!3616 (xs!6257 (c!192328 acc!225)))))) e!733146))))

(declare-fun e!733147 () Bool)

(declare-fun b!1146920 () Bool)

(declare-fun tp!332048 () Bool)

(assert (=> b!1146920 (= e!733147 (and (inv!14418 (h!16454 (innerList!3616 (xs!6257 (c!192328 acc!225))))) e!733148 tp!332048))))

(assert (=> b!1145488 (= tp!331987 e!733147)))

(assert (= b!1146921 b!1146922))

(assert (= b!1146920 b!1146921))

(assert (= (and b!1145488 ((_ is Cons!11053) (innerList!3616 (xs!6257 (c!192328 acc!225))))) b!1146920))

(declare-fun m!1308699 () Bool)

(assert (=> b!1146922 m!1308699))

(declare-fun m!1308701 () Bool)

(assert (=> b!1146921 m!1308701))

(declare-fun m!1308703 () Bool)

(assert (=> b!1146920 m!1308703))

(declare-fun b!1146925 () Bool)

(declare-fun b_free!27513 () Bool)

(declare-fun b_next!28217 () Bool)

(assert (=> b!1146925 (= b_free!27513 (not b_next!28217))))

(declare-fun tp!332053 () Bool)

(declare-fun b_and!80301 () Bool)

(assert (=> b!1146925 (= tp!332053 b_and!80301)))

(declare-fun b_free!27515 () Bool)

(declare-fun b_next!28219 () Bool)

(assert (=> b!1146925 (= b_free!27515 (not b_next!28219))))

(declare-fun t!108108 () Bool)

(declare-fun tb!65573 () Bool)

(assert (=> (and b!1146925 (= (toChars!2861 (transformation!1905 (h!16453 (t!107998 (rules!9316 pt!21))))) (toChars!2861 (transformation!1905 (rule!3326 (apply!2353 (tokens!1490 pt!21) (+ lt!388067 1)))))) t!108108) tb!65573))

(declare-fun result!78252 () Bool)

(assert (= result!78252 result!78238))

(assert (=> d!326407 t!108108))

(declare-fun tp!332052 () Bool)

(declare-fun b_and!80303 () Bool)

(assert (=> b!1146925 (= tp!332052 (and (=> t!108108 result!78252) b_and!80303))))

(declare-fun e!733149 () Bool)

(assert (=> b!1146925 (= e!733149 (and tp!332053 tp!332052))))

(declare-fun b!1146924 () Bool)

(declare-fun e!733151 () Bool)

(assert (=> b!1146924 (= e!733151 (and (inv!14406 (tag!2167 (h!16453 (t!107998 (rules!9316 pt!21))))) (inv!14440 (transformation!1905 (h!16453 (t!107998 (rules!9316 pt!21))))) e!733149))))

(declare-fun b!1146923 () Bool)

(declare-fun e!733152 () Bool)

(declare-fun tp!332051 () Bool)

(assert (=> b!1146923 (= e!733152 (and e!733151 tp!332051))))

(assert (=> b!1145497 (= tp!331996 e!733152)))

(assert (= b!1146924 b!1146925))

(assert (= b!1146923 b!1146924))

(assert (= (and b!1145497 ((_ is Cons!11052) (t!107998 (rules!9316 pt!21)))) b!1146923))

(declare-fun m!1308705 () Bool)

(assert (=> b!1146924 m!1308705))

(declare-fun m!1308707 () Bool)

(assert (=> b!1146924 m!1308707))

(declare-fun b!1146934 () Bool)

(declare-fun e!733157 () Bool)

(assert (=> b!1146934 (= e!733157 true)))

(declare-fun b!1146936 () Bool)

(declare-fun e!733158 () Bool)

(assert (=> b!1146936 (= e!733158 true)))

(declare-fun b!1146935 () Bool)

(assert (=> b!1146935 (= e!733157 e!733158)))

(assert (=> b!1145371 e!733157))

(assert (= (and b!1145371 ((_ is Node!3555) (c!192327 (tokens!1490 pt!21)))) b!1146934))

(assert (= b!1146935 b!1146936))

(assert (= (and b!1145371 ((_ is Leaf!5518) (c!192327 (tokens!1490 pt!21)))) b!1146935))

(declare-fun e!733159 () Bool)

(declare-fun tp!332056 () Bool)

(declare-fun b!1146937 () Bool)

(declare-fun tp!332054 () Bool)

(assert (=> b!1146937 (= e!733159 (and (inv!14415 (left!9613 (left!9613 (c!192327 (tokens!1490 pt!21))))) tp!332056 (inv!14415 (right!9943 (left!9613 (c!192327 (tokens!1490 pt!21))))) tp!332054))))

(declare-fun b!1146939 () Bool)

(declare-fun e!733160 () Bool)

(declare-fun tp!332055 () Bool)

(assert (=> b!1146939 (= e!733160 tp!332055)))

(declare-fun b!1146938 () Bool)

(assert (=> b!1146938 (= e!733159 (and (inv!14437 (xs!6256 (left!9613 (c!192327 (tokens!1490 pt!21))))) e!733160))))

(assert (=> b!1145467 (= tp!331974 (and (inv!14415 (left!9613 (c!192327 (tokens!1490 pt!21)))) e!733159))))

(assert (= (and b!1145467 ((_ is Node!3555) (left!9613 (c!192327 (tokens!1490 pt!21))))) b!1146937))

(assert (= b!1146938 b!1146939))

(assert (= (and b!1145467 ((_ is Leaf!5518) (left!9613 (c!192327 (tokens!1490 pt!21))))) b!1146938))

(declare-fun m!1308709 () Bool)

(assert (=> b!1146937 m!1308709))

(declare-fun m!1308711 () Bool)

(assert (=> b!1146937 m!1308711))

(declare-fun m!1308713 () Bool)

(assert (=> b!1146938 m!1308713))

(assert (=> b!1145467 m!1306539))

(declare-fun tp!332059 () Bool)

(declare-fun e!733161 () Bool)

(declare-fun b!1146940 () Bool)

(declare-fun tp!332057 () Bool)

(assert (=> b!1146940 (= e!733161 (and (inv!14415 (left!9613 (right!9943 (c!192327 (tokens!1490 pt!21))))) tp!332059 (inv!14415 (right!9943 (right!9943 (c!192327 (tokens!1490 pt!21))))) tp!332057))))

(declare-fun b!1146942 () Bool)

(declare-fun e!733162 () Bool)

(declare-fun tp!332058 () Bool)

(assert (=> b!1146942 (= e!733162 tp!332058)))

(declare-fun b!1146941 () Bool)

(assert (=> b!1146941 (= e!733161 (and (inv!14437 (xs!6256 (right!9943 (c!192327 (tokens!1490 pt!21))))) e!733162))))

(assert (=> b!1145467 (= tp!331972 (and (inv!14415 (right!9943 (c!192327 (tokens!1490 pt!21)))) e!733161))))

(assert (= (and b!1145467 ((_ is Node!3555) (right!9943 (c!192327 (tokens!1490 pt!21))))) b!1146940))

(assert (= b!1146941 b!1146942))

(assert (= (and b!1145467 ((_ is Leaf!5518) (right!9943 (c!192327 (tokens!1490 pt!21))))) b!1146941))

(declare-fun m!1308715 () Bool)

(assert (=> b!1146940 m!1308715))

(declare-fun m!1308717 () Bool)

(assert (=> b!1146940 m!1308717))

(declare-fun m!1308719 () Bool)

(assert (=> b!1146941 m!1308719))

(assert (=> b!1145467 m!1306541))

(declare-fun tp!332060 () Bool)

(declare-fun e!733163 () Bool)

(declare-fun tp!332061 () Bool)

(declare-fun b!1146943 () Bool)

(assert (=> b!1146943 (= e!733163 (and (inv!14417 (left!9615 (left!9615 (c!192329 indices!2)))) tp!332060 (inv!14417 (right!9945 (left!9615 (c!192329 indices!2)))) tp!332061))))

(declare-fun b!1146944 () Bool)

(assert (=> b!1146944 (= e!733163 (inv!14438 (xs!6258 (left!9615 (c!192329 indices!2)))))))

(assert (=> b!1145476 (= tp!331979 (and (inv!14417 (left!9615 (c!192329 indices!2))) e!733163))))

(assert (= (and b!1145476 ((_ is Node!3557) (left!9615 (c!192329 indices!2)))) b!1146943))

(assert (= (and b!1145476 ((_ is Leaf!5520) (left!9615 (c!192329 indices!2)))) b!1146944))

(declare-fun m!1308721 () Bool)

(assert (=> b!1146943 m!1308721))

(declare-fun m!1308723 () Bool)

(assert (=> b!1146943 m!1308723))

(declare-fun m!1308725 () Bool)

(assert (=> b!1146944 m!1308725))

(assert (=> b!1145476 m!1306545))

(declare-fun tp!332062 () Bool)

(declare-fun e!733165 () Bool)

(declare-fun tp!332063 () Bool)

(declare-fun b!1146945 () Bool)

(assert (=> b!1146945 (= e!733165 (and (inv!14417 (left!9615 (right!9945 (c!192329 indices!2)))) tp!332062 (inv!14417 (right!9945 (right!9945 (c!192329 indices!2)))) tp!332063))))

(declare-fun b!1146946 () Bool)

(assert (=> b!1146946 (= e!733165 (inv!14438 (xs!6258 (right!9945 (c!192329 indices!2)))))))

(assert (=> b!1145476 (= tp!331980 (and (inv!14417 (right!9945 (c!192329 indices!2))) e!733165))))

(assert (= (and b!1145476 ((_ is Node!3557) (right!9945 (c!192329 indices!2)))) b!1146945))

(assert (= (and b!1145476 ((_ is Leaf!5520) (right!9945 (c!192329 indices!2)))) b!1146946))

(declare-fun m!1308727 () Bool)

(assert (=> b!1146945 m!1308727))

(declare-fun m!1308729 () Bool)

(assert (=> b!1146945 m!1308729))

(declare-fun m!1308731 () Bool)

(assert (=> b!1146946 m!1308731))

(assert (=> b!1145476 m!1306547))

(declare-fun b!1146947 () Bool)

(declare-fun e!733168 () Bool)

(declare-fun tp!332065 () Bool)

(declare-fun tp!332066 () Bool)

(assert (=> b!1146947 (= e!733168 (and (inv!14414 (left!9614 (left!9614 (c!192328 acc!225)))) tp!332065 (inv!14414 (right!9944 (left!9614 (c!192328 acc!225)))) tp!332066))))

(declare-fun b!1146949 () Bool)

(declare-fun e!733167 () Bool)

(declare-fun tp!332064 () Bool)

(assert (=> b!1146949 (= e!733167 tp!332064)))

(declare-fun b!1146948 () Bool)

(assert (=> b!1146948 (= e!733168 (and (inv!14439 (xs!6257 (left!9614 (c!192328 acc!225)))) e!733167))))

(assert (=> b!1145486 (= tp!331988 (and (inv!14414 (left!9614 (c!192328 acc!225))) e!733168))))

(assert (= (and b!1145486 ((_ is Node!3556) (left!9614 (c!192328 acc!225)))) b!1146947))

(assert (= b!1146948 b!1146949))

(assert (= (and b!1145486 ((_ is Leaf!5519) (left!9614 (c!192328 acc!225)))) b!1146948))

(declare-fun m!1308733 () Bool)

(assert (=> b!1146947 m!1308733))

(declare-fun m!1308735 () Bool)

(assert (=> b!1146947 m!1308735))

(declare-fun m!1308737 () Bool)

(assert (=> b!1146948 m!1308737))

(assert (=> b!1145486 m!1306551))

(declare-fun b!1146950 () Bool)

(declare-fun tp!332068 () Bool)

(declare-fun e!733170 () Bool)

(declare-fun tp!332069 () Bool)

(assert (=> b!1146950 (= e!733170 (and (inv!14414 (left!9614 (right!9944 (c!192328 acc!225)))) tp!332068 (inv!14414 (right!9944 (right!9944 (c!192328 acc!225)))) tp!332069))))

(declare-fun b!1146952 () Bool)

(declare-fun e!733169 () Bool)

(declare-fun tp!332067 () Bool)

(assert (=> b!1146952 (= e!733169 tp!332067)))

(declare-fun b!1146951 () Bool)

(assert (=> b!1146951 (= e!733170 (and (inv!14439 (xs!6257 (right!9944 (c!192328 acc!225)))) e!733169))))

(assert (=> b!1145486 (= tp!331989 (and (inv!14414 (right!9944 (c!192328 acc!225))) e!733170))))

(assert (= (and b!1145486 ((_ is Node!3556) (right!9944 (c!192328 acc!225)))) b!1146950))

(assert (= b!1146951 b!1146952))

(assert (= (and b!1145486 ((_ is Leaf!5519) (right!9944 (c!192328 acc!225)))) b!1146951))

(declare-fun m!1308739 () Bool)

(assert (=> b!1146950 m!1308739))

(declare-fun m!1308741 () Bool)

(assert (=> b!1146950 m!1308741))

(declare-fun m!1308743 () Bool)

(assert (=> b!1146951 m!1308743))

(assert (=> b!1145486 m!1306553))

(declare-fun b!1146955 () Bool)

(declare-fun e!733173 () Bool)

(assert (=> b!1146955 (= e!733173 true)))

(declare-fun b!1146954 () Bool)

(declare-fun e!733172 () Bool)

(assert (=> b!1146954 (= e!733172 e!733173)))

(declare-fun b!1146953 () Bool)

(declare-fun e!733171 () Bool)

(assert (=> b!1146953 (= e!733171 e!733172)))

(assert (=> b!1145370 e!733171))

(assert (= b!1146954 b!1146955))

(assert (= b!1146953 b!1146954))

(assert (= (and b!1145370 ((_ is Cons!11052) (rules!9316 pt!21))) b!1146953))

(assert (=> b!1146955 (< (dynLambda!4881 order!6751 (toValue!3002 (transformation!1905 (h!16453 (rules!9316 pt!21))))) (dynLambda!4882 order!6753 lambda!46111))))

(assert (=> b!1146955 (< (dynLambda!4883 order!6755 (toChars!2861 (transformation!1905 (h!16453 (rules!9316 pt!21))))) (dynLambda!4882 order!6753 lambda!46111))))

(declare-fun b!1146969 () Bool)

(declare-fun b_free!27517 () Bool)

(declare-fun b_next!28221 () Bool)

(assert (=> b!1146969 (= b_free!27517 (not b_next!28221))))

(declare-fun tp!332076 () Bool)

(declare-fun b_and!80305 () Bool)

(assert (=> b!1146969 (= tp!332076 b_and!80305)))

(declare-fun b_free!27519 () Bool)

(declare-fun b_next!28223 () Bool)

(assert (=> b!1146969 (= b_free!27519 (not b_next!28223))))

(declare-fun t!108110 () Bool)

(declare-fun tb!65575 () Bool)

(assert (=> (and b!1146969 (= (toChars!2861 (transformation!1905 (rule!3326 (h!16452 (innerList!3615 (xs!6256 (c!192327 (tokens!1490 pt!21)))))))) (toChars!2861 (transformation!1905 (rule!3326 (apply!2353 (tokens!1490 pt!21) (+ lt!388067 1)))))) t!108110) tb!65575))

(declare-fun result!78256 () Bool)

(assert (= result!78256 result!78238))

(assert (=> d!326407 t!108110))

(declare-fun tp!332078 () Bool)

(declare-fun b_and!80307 () Bool)

(assert (=> b!1146969 (= tp!332078 (and (=> t!108110 result!78256) b_and!80307))))

(declare-fun e!733189 () Bool)

(assert (=> b!1146969 (= e!733189 (and tp!332076 tp!332078))))

(declare-fun b!1146968 () Bool)

(declare-fun e!733186 () Bool)

(assert (=> b!1146968 (= e!733186 (and (inv!14406 (tag!2167 (rule!3326 (h!16452 (innerList!3615 (xs!6256 (c!192327 (tokens!1490 pt!21)))))))) (inv!14440 (transformation!1905 (rule!3326 (h!16452 (innerList!3615 (xs!6256 (c!192327 (tokens!1490 pt!21)))))))) e!733189))))

(declare-fun e!733190 () Bool)

(assert (=> b!1145469 (= tp!331973 e!733190)))

(declare-fun b!1146966 () Bool)

(declare-fun e!733187 () Bool)

(declare-fun tp!332077 () Bool)

(declare-fun inv!14445 (Token!3472) Bool)

(assert (=> b!1146966 (= e!733190 (and (inv!14445 (h!16452 (innerList!3615 (xs!6256 (c!192327 (tokens!1490 pt!21)))))) e!733187 tp!332077))))

(declare-fun b!1146967 () Bool)

(declare-fun inv!21 (TokenValue!1971) Bool)

(assert (=> b!1146967 (= e!733187 (and (inv!21 (value!62289 (h!16452 (innerList!3615 (xs!6256 (c!192327 (tokens!1490 pt!21))))))) e!733186))))

(assert (= b!1146968 b!1146969))

(assert (= b!1146967 b!1146968))

(assert (= b!1146966 b!1146967))

(assert (= (and b!1145469 ((_ is Cons!11051) (innerList!3615 (xs!6256 (c!192327 (tokens!1490 pt!21)))))) b!1146966))

(declare-fun m!1308745 () Bool)

(assert (=> b!1146968 m!1308745))

(declare-fun m!1308747 () Bool)

(assert (=> b!1146968 m!1308747))

(declare-fun m!1308749 () Bool)

(assert (=> b!1146966 m!1308749))

(declare-fun m!1308751 () Bool)

(assert (=> b!1146967 m!1308751))

(declare-fun b_lambda!34143 () Bool)

(assert (= b_lambda!34123 (or b!1145220 b_lambda!34143)))

(declare-fun bs!281203 () Bool)

(declare-fun d!326499 () Bool)

(assert (= bs!281203 (and d!326499 b!1145220)))

(assert (=> bs!281203 (= (dynLambda!4891 lambda!46085 (h!16454 (list!4044 acc!225))) (usesJsonRules!0 (h!16454 (list!4044 acc!225))))))

(declare-fun m!1308753 () Bool)

(assert (=> bs!281203 m!1308753))

(assert (=> b!1146601 d!326499))

(declare-fun b_lambda!34145 () Bool)

(assert (= b_lambda!34115 (or d!325935 b_lambda!34145)))

(declare-fun bs!281204 () Bool)

(declare-fun d!326501 () Bool)

(assert (= bs!281204 (and d!326501 d!325935)))

(assert (=> bs!281204 (= (dynLambda!4888 lambda!46111 (h!16452 lt!388061)) (rulesProduceIndividualToken!651 Lexer!1602 (rules!9316 pt!21) (h!16452 lt!388061)))))

(declare-fun m!1308755 () Bool)

(assert (=> bs!281204 m!1308755))

(assert (=> b!1146526 d!326501))

(declare-fun b_lambda!34147 () Bool)

(assert (= b_lambda!34105 (or d!325935 b_lambda!34147)))

(declare-fun bs!281205 () Bool)

(declare-fun d!326503 () Bool)

(assert (= bs!281205 (and d!326503 d!325935)))

(assert (=> bs!281205 (= (dynLambda!4888 lambda!46111 (h!16452 lt!388080)) (rulesProduceIndividualToken!651 Lexer!1602 (rules!9316 pt!21) (h!16452 lt!388080)))))

(declare-fun m!1308757 () Bool)

(assert (=> bs!281205 m!1308757))

(assert (=> b!1146160 d!326503))

(declare-fun b_lambda!34149 () Bool)

(assert (= b_lambda!34109 (or d!325935 b_lambda!34149)))

(declare-fun bs!281206 () Bool)

(declare-fun d!326505 () Bool)

(assert (= bs!281206 (and d!326505 d!325935)))

(assert (=> bs!281206 (= (dynLambda!4888 lambda!46111 (h!16452 lt!388099)) (rulesProduceIndividualToken!651 Lexer!1602 (rules!9316 pt!21) (h!16452 lt!388099)))))

(declare-fun m!1308759 () Bool)

(assert (=> bs!281206 m!1308759))

(assert (=> b!1146268 d!326505))

(declare-fun b_lambda!34151 () Bool)

(assert (= b_lambda!34119 (or b!1145220 b_lambda!34151)))

(declare-fun bs!281207 () Bool)

(declare-fun d!326507 () Bool)

(assert (= bs!281207 (and d!326507 b!1145220)))

(assert (=> bs!281207 (= (dynLambda!4891 lambda!46085 (h!16454 (list!4044 (append!358 acc!225 lt!387686)))) (usesJsonRules!0 (h!16454 (list!4044 (append!358 acc!225 lt!387686)))))))

(declare-fun m!1308761 () Bool)

(assert (=> bs!281207 m!1308761))

(assert (=> b!1146543 d!326507))

(declare-fun b_lambda!34153 () Bool)

(assert (= b_lambda!34121 (or b!1145220 b_lambda!34153)))

(declare-fun bs!281208 () Bool)

(declare-fun d!326509 () Bool)

(assert (= bs!281208 (and d!326509 b!1145220)))

(assert (=> bs!281208 (= (dynLambda!4891 lambda!46085 (h!16454 (++!2950 (list!4044 acc!225) (Cons!11053 lt!387686 Nil!11053)))) (usesJsonRules!0 (h!16454 (++!2950 (list!4044 acc!225) (Cons!11053 lt!387686 Nil!11053)))))))

(declare-fun m!1308763 () Bool)

(assert (=> bs!281208 m!1308763))

(assert (=> b!1146587 d!326509))

(declare-fun b_lambda!34155 () Bool)

(assert (= b_lambda!34117 (or d!325935 b_lambda!34155)))

(declare-fun bs!281209 () Bool)

(declare-fun d!326511 () Bool)

(assert (= bs!281209 (and d!326511 d!325935)))

(assert (=> bs!281209 (= (dynLambda!4888 lambda!46111 (h!16452 lt!388066)) (rulesProduceIndividualToken!651 Lexer!1602 (rules!9316 pt!21) (h!16452 lt!388066)))))

(declare-fun m!1308765 () Bool)

(assert (=> bs!281209 m!1308765))

(assert (=> b!1146531 d!326511))

(declare-fun b_lambda!34157 () Bool)

(assert (= b_lambda!34095 (or b!1145223 b_lambda!34157)))

(declare-fun bs!281210 () Bool)

(declare-fun d!326513 () Bool)

(assert (= bs!281210 (and d!326513 b!1145223)))

(assert (=> bs!281210 (= (dynLambda!4880 lambda!46084 (h!16455 (list!4047 indices!2))) (and (<= 0 (h!16455 (list!4047 indices!2))) (< (h!16455 (list!4047 indices!2)) size!108)))))

(assert (=> b!1145629 d!326513))

(check-sat (not b!1146567) (not b!1146748) (not bm!81608) (not b!1146882) (not d!326297) (not d!326063) (not d!326417) (not b!1146416) (not d!326039) (not d!326393) (not b!1146627) (not bm!81605) (not b!1146027) (not b!1145836) (not b!1146936) (not b!1146626) (not b!1145770) (not d!326409) (not b!1146365) (not bm!81604) (not b!1146259) (not b!1146023) (not b!1145948) (not b!1145846) (not b!1146672) (not b_next!28217) (not b!1146885) (not b!1146886) (not b!1146585) (not d!326445) (not d!326261) (not b!1146177) (not b!1146533) (not b!1146632) (not b!1146556) (not b!1146260) (not b!1146265) (not d!326483) (not d!326367) (not bm!81611) (not b!1146922) (not b!1145618) (not b!1146363) (not b!1146538) (not b!1145835) (not d!326087) (not b!1146749) (not b!1146630) (not d!326115) (not bm!81671) (not b!1145773) (not b!1146921) (not d!326353) (not b!1145630) (not b!1146342) (not bs!281206) (not b!1146656) (not b!1146364) (not b!1146579) (not b!1146808) (not d!326035) (not b!1145732) (not b!1145984) (not d!326051) (not d!326489) (not b!1146500) (not bs!281203) (not b!1146924) (not d!326479) (not b!1146436) (not b!1146968) (not b!1146948) (not b!1146433) (not d!326395) (not b!1146487) (not b!1146009) (not b!1146911) (not d!326329) (not b!1145736) (not b!1146554) (not b!1146628) (not b!1145467) (not b!1146534) (not d!326199) (not d!326497) (not b!1146892) (not b!1146887) (not d!326243) (not b!1146747) (not b!1146673) (not b_lambda!34149) (not b!1146880) (not b!1145731) (not b!1146577) (not d!326453) (not d!326291) (not b!1146658) (not b!1146623) (not b!1146707) (not b!1145845) (not b!1145952) (not d!326255) (not bm!81676) (not b!1146902) (not b!1146950) (not d!326391) (not b!1146949) (not b!1146910) (not b_next!28223) (not d!326337) (not d!326253) (not b!1146572) (not b!1145985) (not d!326383) (not tb!65567) (not b!1145771) (not b!1146409) (not d!326459) (not b!1145677) b_and!80291 (not d!326371) (not b!1146610) (not d!326171) (not b!1146258) (not b!1146635) (not bs!281209) (not b!1146257) (not d!326447) (not b!1146923) (not b!1146524) (not b!1146563) (not d!326013) (not d!326355) (not bm!81675) b_and!80301 (not b!1146671) (not b!1146528) (not bs!281208) (not b!1146701) (not b!1146440) (not b!1146705) (not b!1146491) (not d!326173) (not b!1146730) (not b!1146402) (not b!1146439) (not b!1146415) (not b!1146798) (not b!1146942) (not b_lambda!34157) (not b!1146953) (not b!1145582) (not b!1145951) (not b!1146653) (not d!326419) (not d!326019) (not b!1146952) (not b!1146829) (not b!1146751) (not b!1145949) (not b!1146489) (not b!1146569) (not bm!81670) (not b!1146940) (not b!1146966) (not b!1146797) (not b!1145847) (not d!326365) (not bs!281204) (not b!1146263) (not b!1145693) (not b!1146841) (not b_lambda!34153) (not b!1146824) (not b!1146025) (not b!1146817) (not b!1146903) (not b!1146906) (not d!326455) (not b!1146264) (not d!326061) (not d!326431) (not bm!81607) (not b!1146920) (not b!1146371) (not d!326437) (not b!1146698) (not b!1146179) (not b!1146588) (not b_next!28205) (not b!1146269) (not b!1146622) (not b!1146564) (not b_lambda!34155) (not b!1146341) (not b!1146741) (not d!326433) (not b!1146713) b_and!80307 (not b!1146947) (not b!1145623) (not d!326377) (not b!1145640) (not d!326339) (not b!1146664) (not d!326037) (not b!1146750) (not b!1145834) (not b!1146566) (not d!326413) (not b!1146437) (not b!1146560) (not d!326083) (not d!326407) (not b!1146945) (not b!1146883) (not b_lambda!34151) (not bm!81663) (not b!1145476) (not bs!281207) (not bm!81678) (not b!1145768) (not b!1146825) (not d!326119) (not b!1146662) (not b!1146527) (not d!326411) (not d!326325) (not b!1146806) (not b!1146944) (not b!1146939) (not b!1146638) (not b!1146796) (not b!1146732) (not b!1146640) (not d!326345) (not b!1146631) (not b!1145983) (not b_lambda!34143) (not b!1146951) (not d!326277) (not b!1146934) (not b!1146739) (not b!1146529) (not b!1146256) (not b!1146899) (not b!1146598) (not b!1146654) b_and!80305 (not b!1146941) (not b!1146373) b_and!80303 (not b!1146537) (not b!1146573) (not b!1146255) (not d!326271) (not b!1146525) (not bm!81583) (not bm!81609) (not bm!81672) (not b!1145774) (not b!1145733) (not b!1146967) (not b_lambda!34145) (not d!326451) (not d!326435) (not b!1146938) (not d!326293) (not b!1146599) (not b!1146555) (not d!326175) (not b!1146007) (not b!1145641) (not b!1146502) (not b!1146726) (not bm!81673) (not d!326401) (not bm!81665) (not b!1146434) (not d!326363) (not bm!81606) (not b!1146435) (not b!1146154) (not b!1146843) (not b!1146937) (not b_lambda!34147) (not bs!281205) (not b!1146408) (not d!326139) (not bm!81613) (not b_next!28221) (not b!1146182) (not d!326123) (not b!1146565) (not b!1146575) (not d!326361) (not b!1146905) (not bm!81674) (not d!326113) (not b!1146706) (not d!326009) (not b!1146544) (not b!1145619) (not b!1145763) (not b!1146492) (not b!1145950) (not b!1146943) (not b!1146908) (not b!1146842) (not b!1146362) (not b!1145734) (not b!1145849) (not b!1146703) (not b!1146155) (not b!1146879) (not b!1146724) (not bm!81610) (not b!1146488) (not b!1146909) (not d!326121) (not b!1145848) (not d!326423) (not b_next!28207) (not b!1146571) (not b!1146655) (not b!1146532) (not b!1145621) (not b!1146602) (not b!1145650) (not b!1146881) (not b!1146438) (not b!1146530) (not b!1146562) (not bm!81653) (not b!1146262) (not b!1146878) (not d!326429) (not d!326427) (not b_lambda!34125) (not b!1146568) (not b!1146161) (not d!326267) (not b!1146501) (not d!326415) (not b!1146725) (not d!326269) (not b!1145642) b_and!80285 (not d!326399) (not d!326457) (not b!1146670) (not b!1146453) (not bm!81612) (not b!1146815) (not b!1146624) (not b_next!28219) (not b!1146261) (not b!1146574) (not bm!81679) (not b!1146397) (not d!326327) (not b!1146704) (not d!326481) (not b!1146946) (not b!1145717) (not d!326081) (not d!326349) (not b!1146398) (not d!326495) (not b!1146795) (not d!326323) (not b!1146024) (not b!1145486) (not b!1146711) (not b!1146657) (not b!1146702) (not b!1146559) (not b!1145581) (not b!1146625) (not b!1146026) (not b!1145735) (not b!1146499) (not d!326373) (not d!326257) (not b!1145583) (not d!326281) (not d!326301) (not b!1146637) (not d!326195) (not b!1145676) (not d!326487) (not b!1146723) (not d!326101) (not d!326047) (not b!1146570) (not b!1146414) (not b!1146557) (not b!1146180) (not b!1146404) (not b!1146629))
(check-sat (not b_next!28217) (not b_next!28223) b_and!80291 b_and!80301 b_and!80305 b_and!80303 (not b_next!28221) (not b_next!28207) b_and!80285 (not b_next!28219) (not b_next!28205) b_and!80307)
