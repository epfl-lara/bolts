; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!23522 () Bool)

(assert start!23522)

(declare-fun b!219773 () Bool)

(declare-fun b_free!8305 () Bool)

(declare-fun b_next!8305 () Bool)

(assert (=> b!219773 (= b_free!8305 (not b_next!8305))))

(declare-fun tp!92487 () Bool)

(declare-fun b_and!16177 () Bool)

(assert (=> b!219773 (= tp!92487 b_and!16177)))

(declare-fun b_free!8307 () Bool)

(declare-fun b_next!8307 () Bool)

(assert (=> b!219773 (= b_free!8307 (not b_next!8307))))

(declare-fun tp!92485 () Bool)

(declare-fun b_and!16179 () Bool)

(assert (=> b!219773 (= tp!92485 b_and!16179)))

(declare-fun b!219772 () Bool)

(declare-fun b_free!8309 () Bool)

(declare-fun b_next!8309 () Bool)

(assert (=> b!219772 (= b_free!8309 (not b_next!8309))))

(declare-fun tp!92490 () Bool)

(declare-fun b_and!16181 () Bool)

(assert (=> b!219772 (= tp!92490 b_and!16181)))

(declare-fun b_free!8311 () Bool)

(declare-fun b_next!8311 () Bool)

(assert (=> b!219772 (= b_free!8311 (not b_next!8311))))

(declare-fun tp!92481 () Bool)

(declare-fun b_and!16183 () Bool)

(assert (=> b!219772 (= tp!92481 b_and!16183)))

(declare-fun b!219766 () Bool)

(declare-fun b_free!8313 () Bool)

(declare-fun b_next!8313 () Bool)

(assert (=> b!219766 (= b_free!8313 (not b_next!8313))))

(declare-fun tp!92480 () Bool)

(declare-fun b_and!16185 () Bool)

(assert (=> b!219766 (= tp!92480 b_and!16185)))

(declare-fun b_free!8315 () Bool)

(declare-fun b_next!8315 () Bool)

(assert (=> b!219766 (= b_free!8315 (not b_next!8315))))

(declare-fun tp!92491 () Bool)

(declare-fun b_and!16187 () Bool)

(assert (=> b!219766 (= tp!92491 b_and!16187)))

(declare-fun bs!23096 () Bool)

(declare-fun b!219784 () Bool)

(declare-fun b!219771 () Bool)

(assert (= bs!23096 (and b!219784 b!219771)))

(declare-fun lambda!6824 () Int)

(declare-fun lambda!6823 () Int)

(assert (=> bs!23096 (not (= lambda!6824 lambda!6823))))

(declare-fun b!219810 () Bool)

(declare-fun e!135623 () Bool)

(assert (=> b!219810 (= e!135623 true)))

(declare-fun b!219809 () Bool)

(declare-fun e!135622 () Bool)

(assert (=> b!219809 (= e!135622 e!135623)))

(declare-fun b!219808 () Bool)

(declare-fun e!135621 () Bool)

(assert (=> b!219808 (= e!135621 e!135622)))

(assert (=> b!219784 e!135621))

(assert (= b!219809 b!219810))

(assert (= b!219808 b!219809))

(declare-datatypes ((List!3395 0))(
  ( (Nil!3385) (Cons!3385 (h!8782 (_ BitVec 16)) (t!32515 List!3395)) )
))
(declare-datatypes ((TokenValue!653 0))(
  ( (FloatLiteralValue!1306 (text!5016 List!3395)) (TokenValueExt!652 (__x!2793 Int)) (Broken!3265 (value!22273 List!3395)) (Object!662) (End!653) (Def!653) (Underscore!653) (Match!653) (Else!653) (Error!653) (Case!653) (If!653) (Extends!653) (Abstract!653) (Class!653) (Val!653) (DelimiterValue!1306 (del!713 List!3395)) (KeywordValue!659 (value!22274 List!3395)) (CommentValue!1306 (value!22275 List!3395)) (WhitespaceValue!1306 (value!22276 List!3395)) (IndentationValue!653 (value!22277 List!3395)) (String!4344) (Int32!653) (Broken!3266 (value!22278 List!3395)) (Boolean!654) (Unit!3713) (OperatorValue!656 (op!713 List!3395)) (IdentifierValue!1306 (value!22279 List!3395)) (IdentifierValue!1307 (value!22280 List!3395)) (WhitespaceValue!1307 (value!22281 List!3395)) (True!1306) (False!1306) (Broken!3267 (value!22282 List!3395)) (Broken!3268 (value!22283 List!3395)) (True!1307) (RightBrace!653) (RightBracket!653) (Colon!653) (Null!653) (Comma!653) (LeftBracket!653) (False!1307) (LeftBrace!653) (ImaginaryLiteralValue!653 (text!5017 List!3395)) (StringLiteralValue!1959 (value!22284 List!3395)) (EOFValue!653 (value!22285 List!3395)) (IdentValue!653 (value!22286 List!3395)) (DelimiterValue!1307 (value!22287 List!3395)) (DedentValue!653 (value!22288 List!3395)) (NewLineValue!653 (value!22289 List!3395)) (IntegerValue!1959 (value!22290 (_ BitVec 32)) (text!5018 List!3395)) (IntegerValue!1960 (value!22291 Int) (text!5019 List!3395)) (Times!653) (Or!653) (Equal!653) (Minus!653) (Broken!3269 (value!22292 List!3395)) (And!653) (Div!653) (LessEqual!653) (Mod!653) (Concat!1508) (Not!653) (Plus!653) (SpaceValue!653 (value!22293 List!3395)) (IntegerValue!1961 (value!22294 Int) (text!5020 List!3395)) (StringLiteralValue!1960 (text!5021 List!3395)) (FloatLiteralValue!1307 (text!5022 List!3395)) (BytesLiteralValue!653 (value!22295 List!3395)) (CommentValue!1307 (value!22296 List!3395)) (StringLiteralValue!1961 (value!22297 List!3395)) (ErrorTokenValue!653 (msg!714 List!3395)) )
))
(declare-datatypes ((C!2632 0))(
  ( (C!2633 (val!1202 Int)) )
))
(declare-datatypes ((List!3396 0))(
  ( (Nil!3386) (Cons!3386 (h!8783 C!2632) (t!32516 List!3396)) )
))
(declare-datatypes ((IArray!2169 0))(
  ( (IArray!2170 (innerList!1142 List!3396)) )
))
(declare-datatypes ((Conc!1084 0))(
  ( (Node!1084 (left!2718 Conc!1084) (right!3048 Conc!1084) (csize!2398 Int) (cheight!1295 Int)) (Leaf!1739 (xs!3679 IArray!2169) (csize!2399 Int)) (Empty!1084) )
))
(declare-datatypes ((BalanceConc!2176 0))(
  ( (BalanceConc!2177 (c!42145 Conc!1084)) )
))
(declare-datatypes ((TokenValueInjection!1078 0))(
  ( (TokenValueInjection!1079 (toValue!1322 Int) (toChars!1181 Int)) )
))
(declare-datatypes ((String!4345 0))(
  ( (String!4346 (value!22298 String)) )
))
(declare-datatypes ((Regex!855 0))(
  ( (ElementMatch!855 (c!42146 C!2632)) (Concat!1509 (regOne!2222 Regex!855) (regTwo!2222 Regex!855)) (EmptyExpr!855) (Star!855 (reg!1184 Regex!855)) (EmptyLang!855) (Union!855 (regOne!2223 Regex!855) (regTwo!2223 Regex!855)) )
))
(declare-datatypes ((Rule!1062 0))(
  ( (Rule!1063 (regex!631 Regex!855) (tag!825 String!4345) (isSeparator!631 Bool) (transformation!631 TokenValueInjection!1078)) )
))
(declare-datatypes ((List!3397 0))(
  ( (Nil!3387) (Cons!3387 (h!8784 Rule!1062) (t!32517 List!3397)) )
))
(declare-fun rules!1920 () List!3397)

(get-info :version)

(assert (= (and b!219784 ((_ is Cons!3387) rules!1920)) b!219808))

(declare-fun order!2301 () Int)

(declare-fun order!2303 () Int)

(declare-fun dynLambda!1545 (Int Int) Int)

(declare-fun dynLambda!1546 (Int Int) Int)

(assert (=> b!219810 (< (dynLambda!1545 order!2301 (toValue!1322 (transformation!631 (h!8784 rules!1920)))) (dynLambda!1546 order!2303 lambda!6824))))

(declare-fun order!2305 () Int)

(declare-fun dynLambda!1547 (Int Int) Int)

(assert (=> b!219810 (< (dynLambda!1547 order!2305 (toChars!1181 (transformation!631 (h!8784 rules!1920)))) (dynLambda!1546 order!2303 lambda!6824))))

(assert (=> b!219784 true))

(declare-fun b!219752 () Bool)

(declare-datatypes ((Unit!3714 0))(
  ( (Unit!3715) )
))
(declare-fun e!135598 () Unit!3714)

(declare-fun Unit!3716 () Unit!3714)

(assert (=> b!219752 (= e!135598 Unit!3716)))

(declare-datatypes ((Token!1006 0))(
  ( (Token!1007 (value!22299 TokenValue!653) (rule!1176 Rule!1062) (size!2712 Int) (originalCharacters!674 List!3396)) )
))
(declare-fun lt!83335 () Token!1006)

(declare-fun lt!83349 () List!3396)

(declare-fun lt!83330 () Unit!3714)

(declare-fun lt!83356 () C!2632)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!30 (Regex!855 List!3396 C!2632) Unit!3714)

(assert (=> b!219752 (= lt!83330 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!30 (regex!631 (rule!1176 lt!83335)) lt!83349 lt!83356))))

(declare-fun res!101006 () Bool)

(declare-fun matchR!193 (Regex!855 List!3396) Bool)

(assert (=> b!219752 (= res!101006 (not (matchR!193 (regex!631 (rule!1176 lt!83335)) lt!83349)))))

(declare-fun e!135591 () Bool)

(assert (=> b!219752 (=> (not res!101006) (not e!135591))))

(assert (=> b!219752 e!135591))

(declare-fun b!219753 () Bool)

(declare-fun e!135581 () Bool)

(declare-fun e!135586 () Bool)

(assert (=> b!219753 (= e!135581 e!135586)))

(declare-fun res!101013 () Bool)

(assert (=> b!219753 (=> (not res!101013) (not e!135586))))

(declare-fun lt!83329 () Rule!1062)

(declare-fun lt!83333 () List!3396)

(assert (=> b!219753 (= res!101013 (matchR!193 (regex!631 lt!83329) lt!83333))))

(declare-datatypes ((Option!585 0))(
  ( (None!584) (Some!584 (v!14223 Rule!1062)) )
))
(declare-fun lt!83344 () Option!585)

(declare-fun get!1048 (Option!585) Rule!1062)

(assert (=> b!219753 (= lt!83329 (get!1048 lt!83344))))

(declare-fun b!219754 () Bool)

(declare-fun res!101000 () Bool)

(declare-fun e!135587 () Bool)

(assert (=> b!219754 (=> res!101000 e!135587)))

(declare-fun lt!83324 () List!3396)

(declare-datatypes ((LexerInterface!517 0))(
  ( (LexerInterfaceExt!514 (__x!2794 Int)) (Lexer!515) )
))
(declare-fun thiss!17480 () LexerInterface!517)

(declare-datatypes ((List!3398 0))(
  ( (Nil!3388) (Cons!3388 (h!8785 Token!1006) (t!32518 List!3398)) )
))
(declare-datatypes ((IArray!2171 0))(
  ( (IArray!2172 (innerList!1143 List!3398)) )
))
(declare-datatypes ((Conc!1085 0))(
  ( (Node!1085 (left!2719 Conc!1085) (right!3049 Conc!1085) (csize!2400 Int) (cheight!1296 Int)) (Leaf!1740 (xs!3680 IArray!2171) (csize!2401 Int)) (Empty!1085) )
))
(declare-datatypes ((BalanceConc!2178 0))(
  ( (BalanceConc!2179 (c!42147 Conc!1085)) )
))
(declare-fun isEmpty!1878 (BalanceConc!2178) Bool)

(declare-datatypes ((tuple2!3602 0))(
  ( (tuple2!3603 (_1!2017 BalanceConc!2178) (_2!2017 BalanceConc!2176)) )
))
(declare-fun lex!317 (LexerInterface!517 List!3397 BalanceConc!2176) tuple2!3602)

(declare-fun seqFromList!639 (List!3396) BalanceConc!2176)

(assert (=> b!219754 (= res!101000 (isEmpty!1878 (_1!2017 (lex!317 thiss!17480 rules!1920 (seqFromList!639 lt!83324)))))))

(declare-fun b!219755 () Bool)

(declare-fun e!135612 () Bool)

(declare-datatypes ((tuple2!3604 0))(
  ( (tuple2!3605 (_1!2018 Token!1006) (_2!2018 List!3396)) )
))
(declare-datatypes ((Option!586 0))(
  ( (None!585) (Some!585 (v!14224 tuple2!3604)) )
))
(declare-fun lt!83326 () Option!586)

(declare-fun tokens!465 () List!3398)

(declare-fun get!1049 (Option!586) tuple2!3604)

(declare-fun head!757 (List!3398) Token!1006)

(assert (=> b!219755 (= e!135612 (= (_1!2018 (get!1049 lt!83326)) (head!757 tokens!465)))))

(declare-fun e!135580 () Bool)

(declare-fun b!219756 () Bool)

(declare-fun tp!92482 () Bool)

(declare-fun e!135609 () Bool)

(declare-fun inv!21 (TokenValue!653) Bool)

(assert (=> b!219756 (= e!135580 (and (inv!21 (value!22299 (h!8785 tokens!465))) e!135609 tp!92482))))

(declare-fun b!219757 () Bool)

(declare-fun res!101016 () Bool)

(declare-fun e!135597 () Bool)

(assert (=> b!219757 (=> (not res!101016) (not e!135597))))

(declare-fun separatorToken!170 () Token!1006)

(declare-fun rulesProduceIndividualToken!266 (LexerInterface!517 List!3397 Token!1006) Bool)

(assert (=> b!219757 (= res!101016 (rulesProduceIndividualToken!266 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!219758 () Bool)

(declare-fun res!101009 () Bool)

(declare-fun e!135601 () Bool)

(assert (=> b!219758 (=> (not res!101009) (not e!135601))))

(declare-fun lt!83328 () tuple2!3604)

(declare-fun isEmpty!1879 (List!3396) Bool)

(assert (=> b!219758 (= res!101009 (isEmpty!1879 (_2!2018 lt!83328)))))

(declare-fun b!219759 () Bool)

(declare-fun e!135594 () Bool)

(declare-fun lt!83308 () tuple2!3602)

(declare-fun isEmpty!1880 (BalanceConc!2176) Bool)

(assert (=> b!219759 (= e!135594 (isEmpty!1880 (_2!2017 lt!83308)))))

(declare-fun b!219760 () Bool)

(assert (=> b!219760 (= e!135591 false)))

(declare-fun b!219761 () Bool)

(declare-fun e!135613 () Bool)

(assert (=> b!219761 (= e!135613 true)))

(declare-fun lt!83348 () List!3398)

(declare-fun lt!83313 () List!3398)

(declare-fun filter!25 (List!3398 Int) List!3398)

(assert (=> b!219761 (= lt!83348 (filter!25 lt!83313 lambda!6823))))

(assert (=> b!219761 (= (filter!25 lt!83313 lambda!6823) (t!32518 tokens!465))))

(declare-fun lt!83342 () BalanceConc!2176)

(declare-fun list!1284 (BalanceConc!2178) List!3398)

(assert (=> b!219761 (= lt!83313 (list!1284 (_1!2017 (lex!317 thiss!17480 rules!1920 lt!83342))))))

(declare-fun lt!83337 () Unit!3714)

(declare-fun theoremInvertabilityFromTokensSepTokenWhenNeeded!16 (LexerInterface!517 List!3397 List!3398 Token!1006) Unit!3714)

(assert (=> b!219761 (= lt!83337 (theoremInvertabilityFromTokensSepTokenWhenNeeded!16 thiss!17480 rules!1920 (t!32518 tokens!465) separatorToken!170))))

(declare-fun lt!83353 () Option!586)

(declare-fun lt!83354 () List!3396)

(assert (=> b!219761 (= lt!83353 (Some!585 (tuple2!3605 separatorToken!170 lt!83354)))))

(declare-fun lt!83314 () Unit!3714)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!22 (LexerInterface!517 List!3397 Token!1006 Rule!1062 List!3396 Rule!1062) Unit!3714)

(assert (=> b!219761 (= lt!83314 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!22 thiss!17480 rules!1920 separatorToken!170 (rule!1176 separatorToken!170) lt!83354 (rule!1176 lt!83335)))))

(declare-fun lt!83345 () Unit!3714)

(declare-fun e!135583 () Unit!3714)

(assert (=> b!219761 (= lt!83345 e!135583)))

(declare-fun c!42143 () Bool)

(declare-fun lt!83322 () C!2632)

(declare-fun contains!592 (List!3396 C!2632) Bool)

(declare-fun usedCharacters!36 (Regex!855) List!3396)

(assert (=> b!219761 (= c!42143 (contains!592 (usedCharacters!36 (regex!631 (rule!1176 separatorToken!170))) lt!83322))))

(declare-fun head!758 (List!3396) C!2632)

(assert (=> b!219761 (= lt!83322 (head!758 lt!83354))))

(declare-fun lt!83339 () Unit!3714)

(assert (=> b!219761 (= lt!83339 e!135598)))

(declare-fun c!42142 () Bool)

(assert (=> b!219761 (= c!42142 (not (contains!592 (usedCharacters!36 (regex!631 (rule!1176 lt!83335))) lt!83356)))))

(assert (=> b!219761 (= lt!83356 (head!758 lt!83349))))

(declare-fun e!135610 () Bool)

(assert (=> b!219761 e!135610))

(declare-fun res!101005 () Bool)

(assert (=> b!219761 (=> (not res!101005) (not e!135610))))

(declare-fun lt!83327 () Option!585)

(declare-fun isDefined!436 (Option!585) Bool)

(assert (=> b!219761 (= res!101005 (isDefined!436 lt!83327))))

(declare-fun getRuleFromTag!72 (LexerInterface!517 List!3397 String!4345) Option!585)

(assert (=> b!219761 (= lt!83327 (getRuleFromTag!72 thiss!17480 rules!1920 (tag!825 (rule!1176 lt!83335))))))

(declare-fun lt!83310 () Unit!3714)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!72 (LexerInterface!517 List!3397 List!3396 Token!1006) Unit!3714)

(assert (=> b!219761 (= lt!83310 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!72 thiss!17480 rules!1920 lt!83349 lt!83335))))

(declare-fun list!1285 (BalanceConc!2176) List!3396)

(declare-fun charsOf!286 (Token!1006) BalanceConc!2176)

(assert (=> b!219761 (= lt!83349 (list!1285 (charsOf!286 lt!83335)))))

(declare-fun lt!83340 () Unit!3714)

(declare-fun forallContained!198 (List!3398 Int Token!1006) Unit!3714)

(assert (=> b!219761 (= lt!83340 (forallContained!198 tokens!465 lambda!6824 lt!83335))))

(assert (=> b!219761 e!135594))

(declare-fun res!100998 () Bool)

(assert (=> b!219761 (=> (not res!100998) (not e!135594))))

(declare-fun size!2713 (BalanceConc!2178) Int)

(assert (=> b!219761 (= res!100998 (= (size!2713 (_1!2017 lt!83308)) 1))))

(declare-fun lt!83320 () BalanceConc!2176)

(assert (=> b!219761 (= lt!83308 (lex!317 thiss!17480 rules!1920 lt!83320))))

(declare-fun lt!83318 () BalanceConc!2178)

(declare-fun printTailRec!211 (LexerInterface!517 BalanceConc!2178 Int BalanceConc!2176) BalanceConc!2176)

(assert (=> b!219761 (= lt!83320 (printTailRec!211 thiss!17480 lt!83318 0 (BalanceConc!2177 Empty!1084)))))

(declare-fun print!248 (LexerInterface!517 BalanceConc!2178) BalanceConc!2176)

(assert (=> b!219761 (= lt!83320 (print!248 thiss!17480 lt!83318))))

(declare-fun singletonSeq!183 (Token!1006) BalanceConc!2178)

(assert (=> b!219761 (= lt!83318 (singletonSeq!183 lt!83335))))

(assert (=> b!219761 e!135581))

(declare-fun res!101001 () Bool)

(assert (=> b!219761 (=> (not res!101001) (not e!135581))))

(assert (=> b!219761 (= res!101001 (isDefined!436 lt!83344))))

(assert (=> b!219761 (= lt!83344 (getRuleFromTag!72 thiss!17480 rules!1920 (tag!825 (rule!1176 separatorToken!170))))))

(declare-fun lt!83309 () Unit!3714)

(assert (=> b!219761 (= lt!83309 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!72 thiss!17480 rules!1920 lt!83333 separatorToken!170))))

(declare-fun e!135588 () Bool)

(assert (=> b!219761 e!135588))

(declare-fun res!101004 () Bool)

(assert (=> b!219761 (=> (not res!101004) (not e!135588))))

(declare-fun lt!83315 () tuple2!3602)

(assert (=> b!219761 (= res!101004 (= (size!2713 (_1!2017 lt!83315)) 1))))

(declare-fun lt!83355 () BalanceConc!2176)

(assert (=> b!219761 (= lt!83315 (lex!317 thiss!17480 rules!1920 lt!83355))))

(declare-fun lt!83307 () BalanceConc!2178)

(assert (=> b!219761 (= lt!83355 (printTailRec!211 thiss!17480 lt!83307 0 (BalanceConc!2177 Empty!1084)))))

(assert (=> b!219761 (= lt!83355 (print!248 thiss!17480 lt!83307))))

(assert (=> b!219761 (= lt!83307 (singletonSeq!183 separatorToken!170))))

(assert (=> b!219761 (rulesProduceIndividualToken!266 thiss!17480 rules!1920 lt!83335)))

(declare-fun lt!83325 () Unit!3714)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!84 (LexerInterface!517 List!3397 List!3398 Token!1006) Unit!3714)

(assert (=> b!219761 (= lt!83325 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!84 thiss!17480 rules!1920 tokens!465 lt!83335))))

(assert (=> b!219761 (= lt!83335 (head!757 (t!32518 tokens!465)))))

(declare-fun lt!83351 () Unit!3714)

(declare-fun e!135589 () Unit!3714)

(assert (=> b!219761 (= lt!83351 e!135589)))

(declare-fun c!42144 () Bool)

(declare-fun isEmpty!1881 (List!3398) Bool)

(assert (=> b!219761 (= c!42144 (isEmpty!1881 (t!32518 tokens!465)))))

(declare-fun lt!83311 () List!3396)

(declare-fun maxPrefix!247 (LexerInterface!517 List!3397 List!3396) Option!586)

(assert (=> b!219761 (= lt!83353 (maxPrefix!247 thiss!17480 rules!1920 lt!83311))))

(declare-fun lt!83350 () tuple2!3604)

(assert (=> b!219761 (= lt!83311 (_2!2018 lt!83350))))

(declare-fun lt!83347 () Unit!3714)

(declare-fun lt!83338 () List!3396)

(declare-fun lemmaSamePrefixThenSameSuffix!152 (List!3396 List!3396 List!3396 List!3396 List!3396) Unit!3714)

(assert (=> b!219761 (= lt!83347 (lemmaSamePrefixThenSameSuffix!152 lt!83324 lt!83311 lt!83324 (_2!2018 lt!83350) lt!83338))))

(assert (=> b!219761 (= lt!83350 (get!1049 (maxPrefix!247 thiss!17480 rules!1920 lt!83338)))))

(declare-fun lt!83317 () List!3396)

(declare-fun isPrefix!327 (List!3396 List!3396) Bool)

(assert (=> b!219761 (isPrefix!327 lt!83324 lt!83317)))

(declare-fun lt!83343 () Unit!3714)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!222 (List!3396 List!3396) Unit!3714)

(assert (=> b!219761 (= lt!83343 (lemmaConcatTwoListThenFirstIsPrefix!222 lt!83324 lt!83311))))

(declare-fun e!135596 () Bool)

(assert (=> b!219761 e!135596))

(declare-fun res!101008 () Bool)

(assert (=> b!219761 (=> res!101008 e!135596)))

(assert (=> b!219761 (= res!101008 (isEmpty!1881 tokens!465))))

(declare-fun lt!83352 () Unit!3714)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!92 (LexerInterface!517 List!3397 List!3398 Token!1006) Unit!3714)

(assert (=> b!219761 (= lt!83352 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!92 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!219762 () Bool)

(declare-fun e!135593 () Bool)

(declare-fun lt!83334 () Rule!1062)

(assert (=> b!219762 (= e!135593 (= (rule!1176 lt!83335) lt!83334))))

(declare-fun b!219763 () Bool)

(declare-fun Unit!3717 () Unit!3714)

(assert (=> b!219763 (= e!135589 Unit!3717)))

(declare-fun b!219764 () Bool)

(declare-fun res!101027 () Bool)

(assert (=> b!219764 (=> (not res!101027) (not e!135594))))

(declare-fun apply!588 (BalanceConc!2178 Int) Token!1006)

(assert (=> b!219764 (= res!101027 (= (apply!588 (_1!2017 lt!83308) 0) lt!83335))))

(declare-fun b!219765 () Bool)

(declare-fun res!100999 () Bool)

(assert (=> b!219765 (=> (not res!100999) (not e!135597))))

(assert (=> b!219765 (= res!100999 ((_ is Cons!3388) tokens!465))))

(declare-fun e!135582 () Bool)

(assert (=> b!219766 (= e!135582 (and tp!92480 tp!92491))))

(declare-fun b!219767 () Bool)

(declare-fun e!135606 () Bool)

(declare-fun e!135592 () Bool)

(assert (=> b!219767 (= e!135606 e!135592)))

(declare-fun res!101014 () Bool)

(assert (=> b!219767 (=> res!101014 e!135592)))

(declare-fun e!135595 () Bool)

(assert (=> b!219767 (= res!101014 e!135595)))

(declare-fun res!101025 () Bool)

(assert (=> b!219767 (=> (not res!101025) (not e!135595))))

(declare-fun lt!83341 () Bool)

(assert (=> b!219767 (= res!101025 (not lt!83341))))

(assert (=> b!219767 (= lt!83341 (= lt!83338 lt!83317))))

(declare-fun b!219768 () Bool)

(declare-fun tp!92489 () Bool)

(declare-fun e!135590 () Bool)

(declare-fun inv!4232 (String!4345) Bool)

(declare-fun inv!4235 (TokenValueInjection!1078) Bool)

(assert (=> b!219768 (= e!135609 (and tp!92489 (inv!4232 (tag!825 (rule!1176 (h!8785 tokens!465)))) (inv!4235 (transformation!631 (rule!1176 (h!8785 tokens!465)))) e!135590))))

(declare-fun b!219769 () Bool)

(declare-fun Unit!3718 () Unit!3714)

(assert (=> b!219769 (= e!135589 Unit!3718)))

(assert (=> b!219769 false))

(declare-fun b!219770 () Bool)

(assert (=> b!219770 (= e!135601 (matchR!193 (regex!631 (rule!1176 (h!8785 tokens!465))) lt!83324))))

(declare-fun res!101024 () Bool)

(assert (=> b!219771 (=> (not res!101024) (not e!135597))))

(declare-fun forall!753 (List!3398 Int) Bool)

(assert (=> b!219771 (= res!101024 (forall!753 tokens!465 lambda!6823))))

(assert (=> b!219772 (= e!135590 (and tp!92490 tp!92481))))

(declare-fun e!135578 () Bool)

(assert (=> b!219773 (= e!135578 (and tp!92487 tp!92485))))

(declare-fun b!219774 () Bool)

(assert (=> b!219774 (= e!135588 (isEmpty!1880 (_2!2017 lt!83315)))))

(declare-fun b!219775 () Bool)

(declare-fun res!101019 () Bool)

(declare-fun e!135603 () Bool)

(assert (=> b!219775 (=> (not res!101019) (not e!135603))))

(declare-fun isEmpty!1882 (List!3397) Bool)

(assert (=> b!219775 (= res!101019 (not (isEmpty!1882 rules!1920)))))

(declare-fun b!219776 () Bool)

(declare-fun res!101023 () Bool)

(assert (=> b!219776 (=> (not res!101023) (not e!135597))))

(declare-fun sepAndNonSepRulesDisjointChars!220 (List!3397 List!3397) Bool)

(assert (=> b!219776 (= res!101023 (sepAndNonSepRulesDisjointChars!220 rules!1920 rules!1920))))

(declare-fun b!219777 () Bool)

(declare-fun e!135600 () Bool)

(declare-fun e!135579 () Bool)

(declare-fun tp!92488 () Bool)

(assert (=> b!219777 (= e!135600 (and e!135579 tp!92488))))

(declare-fun b!219778 () Bool)

(assert (=> b!219778 (= e!135586 (= (rule!1176 separatorToken!170) lt!83329))))

(declare-fun b!219779 () Bool)

(declare-fun tp!92479 () Bool)

(assert (=> b!219779 (= e!135579 (and tp!92479 (inv!4232 (tag!825 (h!8784 rules!1920))) (inv!4235 (transformation!631 (h!8784 rules!1920))) e!135578))))

(declare-fun b!219780 () Bool)

(assert (=> b!219780 (= e!135603 e!135597)))

(declare-fun res!101015 () Bool)

(assert (=> b!219780 (=> (not res!101015) (not e!135597))))

(declare-fun lt!83306 () BalanceConc!2178)

(declare-fun rulesProduceEachTokenIndividually!309 (LexerInterface!517 List!3397 BalanceConc!2178) Bool)

(assert (=> b!219780 (= res!101015 (rulesProduceEachTokenIndividually!309 thiss!17480 rules!1920 lt!83306))))

(declare-fun seqFromList!640 (List!3398) BalanceConc!2178)

(assert (=> b!219780 (= lt!83306 (seqFromList!640 tokens!465))))

(declare-fun b!219781 () Bool)

(assert (=> b!219781 (= e!135596 e!135612)))

(declare-fun res!101028 () Bool)

(assert (=> b!219781 (=> (not res!101028) (not e!135612))))

(declare-fun isDefined!437 (Option!586) Bool)

(assert (=> b!219781 (= res!101028 (isDefined!437 lt!83326))))

(assert (=> b!219781 (= lt!83326 (maxPrefix!247 thiss!17480 rules!1920 lt!83338))))

(declare-fun tp!92484 () Bool)

(declare-fun e!135585 () Bool)

(declare-fun b!219782 () Bool)

(assert (=> b!219782 (= e!135585 (and tp!92484 (inv!4232 (tag!825 (rule!1176 separatorToken!170))) (inv!4235 (transformation!631 (rule!1176 separatorToken!170))) e!135582))))

(declare-fun e!135614 () Bool)

(declare-fun tp!92483 () Bool)

(declare-fun b!219783 () Bool)

(declare-fun inv!4236 (Token!1006) Bool)

(assert (=> b!219783 (= e!135614 (and (inv!4236 (h!8785 tokens!465)) e!135580 tp!92483))))

(declare-fun e!135607 () Bool)

(assert (=> b!219784 (= e!135587 e!135607)))

(declare-fun res!101017 () Bool)

(assert (=> b!219784 (=> res!101017 e!135607)))

(declare-datatypes ((tuple2!3606 0))(
  ( (tuple2!3607 (_1!2019 Token!1006) (_2!2019 BalanceConc!2176)) )
))
(declare-datatypes ((Option!587 0))(
  ( (None!586) (Some!586 (v!14225 tuple2!3606)) )
))
(declare-fun isDefined!438 (Option!587) Bool)

(declare-fun maxPrefixZipperSequence!210 (LexerInterface!517 List!3397 BalanceConc!2176) Option!587)

(assert (=> b!219784 (= res!101017 (not (isDefined!438 (maxPrefixZipperSequence!210 thiss!17480 rules!1920 (seqFromList!639 (originalCharacters!674 (h!8785 tokens!465)))))))))

(declare-fun lt!83331 () Unit!3714)

(assert (=> b!219784 (= lt!83331 (forallContained!198 tokens!465 lambda!6824 (h!8785 tokens!465)))))

(assert (=> b!219784 (= lt!83324 (originalCharacters!674 (h!8785 tokens!465)))))

(declare-fun b!219785 () Bool)

(assert (=> b!219785 (= e!135592 e!135587)))

(declare-fun res!101022 () Bool)

(assert (=> b!219785 (=> res!101022 e!135587)))

(declare-fun lt!83321 () List!3396)

(declare-fun lt!83305 () List!3396)

(assert (=> b!219785 (= res!101022 (or (not (= lt!83305 lt!83321)) (not (= lt!83321 lt!83324)) (not (= lt!83305 lt!83324))))))

(declare-fun printList!201 (LexerInterface!517 List!3398) List!3396)

(assert (=> b!219785 (= lt!83321 (printList!201 thiss!17480 (Cons!3388 (h!8785 tokens!465) Nil!3388)))))

(declare-fun lt!83312 () BalanceConc!2176)

(assert (=> b!219785 (= lt!83305 (list!1285 lt!83312))))

(declare-fun lt!83319 () BalanceConc!2178)

(assert (=> b!219785 (= lt!83312 (printTailRec!211 thiss!17480 lt!83319 0 (BalanceConc!2177 Empty!1084)))))

(assert (=> b!219785 (= lt!83312 (print!248 thiss!17480 lt!83319))))

(assert (=> b!219785 (= lt!83319 (singletonSeq!183 (h!8785 tokens!465)))))

(declare-fun b!219786 () Bool)

(declare-fun Unit!3719 () Unit!3714)

(assert (=> b!219786 (= e!135583 Unit!3719)))

(declare-fun b!219787 () Bool)

(declare-fun res!101011 () Bool)

(assert (=> b!219787 (=> (not res!101011) (not e!135588))))

(assert (=> b!219787 (= res!101011 (= (apply!588 (_1!2017 lt!83315) 0) separatorToken!170))))

(declare-fun b!219788 () Bool)

(declare-fun res!101007 () Bool)

(declare-fun e!135604 () Bool)

(assert (=> b!219788 (=> (not res!101007) (not e!135604))))

(declare-fun lt!83323 () List!3396)

(assert (=> b!219788 (= res!101007 (= (list!1285 (seqFromList!639 lt!83338)) lt!83323))))

(declare-fun b!219789 () Bool)

(declare-fun ++!842 (List!3396 List!3396) List!3396)

(assert (=> b!219789 (= e!135595 (not (= lt!83338 (++!842 lt!83324 lt!83354))))))

(declare-fun b!219790 () Bool)

(declare-fun res!101021 () Bool)

(assert (=> b!219790 (=> (not res!101021) (not e!135597))))

(assert (=> b!219790 (= res!101021 (isSeparator!631 (rule!1176 separatorToken!170)))))

(declare-fun b!219791 () Bool)

(declare-fun Unit!3720 () Unit!3714)

(assert (=> b!219791 (= e!135583 Unit!3720)))

(declare-fun lt!83332 () Unit!3714)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!24 (LexerInterface!517 List!3397 List!3397 Rule!1062 Rule!1062 C!2632) Unit!3714)

(assert (=> b!219791 (= lt!83332 (lemmaSepRuleNotContainsCharContainedInANonSepRule!24 thiss!17480 rules!1920 rules!1920 (rule!1176 lt!83335) (rule!1176 separatorToken!170) lt!83322))))

(assert (=> b!219791 false))

(declare-fun b!219792 () Bool)

(assert (=> b!219792 (= e!135610 e!135593)))

(declare-fun res!101020 () Bool)

(assert (=> b!219792 (=> (not res!101020) (not e!135593))))

(assert (=> b!219792 (= res!101020 (matchR!193 (regex!631 lt!83334) lt!83349))))

(assert (=> b!219792 (= lt!83334 (get!1048 lt!83327))))

(declare-fun e!135584 () Bool)

(declare-fun tp!92486 () Bool)

(declare-fun b!219793 () Bool)

(assert (=> b!219793 (= e!135584 (and (inv!21 (value!22299 separatorToken!170)) e!135585 tp!92486))))

(declare-fun b!219794 () Bool)

(declare-fun res!101018 () Bool)

(assert (=> b!219794 (=> (not res!101018) (not e!135603))))

(declare-fun rulesInvariant!483 (LexerInterface!517 List!3397) Bool)

(assert (=> b!219794 (= res!101018 (rulesInvariant!483 thiss!17480 rules!1920))))

(declare-fun b!219795 () Bool)

(assert (=> b!219795 (= e!135607 e!135613)))

(declare-fun res!101003 () Bool)

(assert (=> b!219795 (=> res!101003 e!135613)))

(assert (=> b!219795 (= res!101003 (not lt!83341))))

(assert (=> b!219795 e!135601))

(declare-fun res!101026 () Bool)

(assert (=> b!219795 (=> (not res!101026) (not e!135601))))

(assert (=> b!219795 (= res!101026 (= (_1!2018 lt!83328) (h!8785 tokens!465)))))

(declare-fun lt!83336 () Option!586)

(assert (=> b!219795 (= lt!83328 (get!1049 lt!83336))))

(assert (=> b!219795 (isDefined!437 lt!83336)))

(assert (=> b!219795 (= lt!83336 (maxPrefix!247 thiss!17480 rules!1920 lt!83324))))

(declare-fun b!219796 () Bool)

(declare-fun res!101002 () Bool)

(assert (=> b!219796 (=> res!101002 e!135587)))

(assert (=> b!219796 (= res!101002 (not (rulesProduceIndividualToken!266 thiss!17480 rules!1920 (h!8785 tokens!465))))))

(declare-fun b!219797 () Bool)

(assert (=> b!219797 (= e!135597 e!135604)))

(declare-fun res!101010 () Bool)

(assert (=> b!219797 (=> (not res!101010) (not e!135604))))

(assert (=> b!219797 (= res!101010 (= lt!83338 lt!83323))))

(declare-fun printWithSeparatorTokenWhenNeededRec!200 (LexerInterface!517 List!3397 BalanceConc!2178 Token!1006 Int) BalanceConc!2176)

(assert (=> b!219797 (= lt!83323 (list!1285 (printWithSeparatorTokenWhenNeededRec!200 thiss!17480 rules!1920 lt!83306 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!210 (LexerInterface!517 List!3397 List!3398 Token!1006) List!3396)

(assert (=> b!219797 (= lt!83338 (printWithSeparatorTokenWhenNeededList!210 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun res!101012 () Bool)

(assert (=> start!23522 (=> (not res!101012) (not e!135603))))

(assert (=> start!23522 (= res!101012 ((_ is Lexer!515) thiss!17480))))

(assert (=> start!23522 e!135603))

(assert (=> start!23522 true))

(assert (=> start!23522 e!135600))

(assert (=> start!23522 (and (inv!4236 separatorToken!170) e!135584)))

(assert (=> start!23522 e!135614))

(declare-fun b!219798 () Bool)

(declare-fun Unit!3721 () Unit!3714)

(assert (=> b!219798 (= e!135598 Unit!3721)))

(declare-fun b!219799 () Bool)

(assert (=> b!219799 (= e!135604 (not e!135606))))

(declare-fun res!100997 () Bool)

(assert (=> b!219799 (=> res!100997 e!135606)))

(assert (=> b!219799 (= res!100997 (not (= lt!83354 (list!1285 lt!83342))))))

(assert (=> b!219799 (= lt!83342 (printWithSeparatorTokenWhenNeededRec!200 thiss!17480 rules!1920 (seqFromList!640 (t!32518 tokens!465)) separatorToken!170 0))))

(declare-fun lt!83316 () List!3396)

(assert (=> b!219799 (= lt!83316 lt!83317)))

(assert (=> b!219799 (= lt!83317 (++!842 lt!83324 lt!83311))))

(assert (=> b!219799 (= lt!83316 (++!842 (++!842 lt!83324 lt!83333) lt!83354))))

(declare-fun lt!83346 () Unit!3714)

(declare-fun lemmaConcatAssociativity!330 (List!3396 List!3396 List!3396) Unit!3714)

(assert (=> b!219799 (= lt!83346 (lemmaConcatAssociativity!330 lt!83324 lt!83333 lt!83354))))

(assert (=> b!219799 (= lt!83324 (list!1285 (charsOf!286 (h!8785 tokens!465))))))

(assert (=> b!219799 (= lt!83311 (++!842 lt!83333 lt!83354))))

(assert (=> b!219799 (= lt!83354 (printWithSeparatorTokenWhenNeededList!210 thiss!17480 rules!1920 (t!32518 tokens!465) separatorToken!170))))

(assert (=> b!219799 (= lt!83333 (list!1285 (charsOf!286 separatorToken!170)))))

(assert (= (and start!23522 res!101012) b!219775))

(assert (= (and b!219775 res!101019) b!219794))

(assert (= (and b!219794 res!101018) b!219780))

(assert (= (and b!219780 res!101015) b!219757))

(assert (= (and b!219757 res!101016) b!219790))

(assert (= (and b!219790 res!101021) b!219771))

(assert (= (and b!219771 res!101024) b!219776))

(assert (= (and b!219776 res!101023) b!219765))

(assert (= (and b!219765 res!100999) b!219797))

(assert (= (and b!219797 res!101010) b!219788))

(assert (= (and b!219788 res!101007) b!219799))

(assert (= (and b!219799 (not res!100997)) b!219767))

(assert (= (and b!219767 res!101025) b!219789))

(assert (= (and b!219767 (not res!101014)) b!219785))

(assert (= (and b!219785 (not res!101022)) b!219796))

(assert (= (and b!219796 (not res!101002)) b!219754))

(assert (= (and b!219754 (not res!101000)) b!219784))

(assert (= (and b!219784 (not res!101017)) b!219795))

(assert (= (and b!219795 res!101026) b!219758))

(assert (= (and b!219758 res!101009) b!219770))

(assert (= (and b!219795 (not res!101003)) b!219761))

(assert (= (and b!219761 (not res!101008)) b!219781))

(assert (= (and b!219781 res!101028) b!219755))

(assert (= (and b!219761 c!42144) b!219769))

(assert (= (and b!219761 (not c!42144)) b!219763))

(assert (= (and b!219761 res!101004) b!219787))

(assert (= (and b!219787 res!101011) b!219774))

(assert (= (and b!219761 res!101001) b!219753))

(assert (= (and b!219753 res!101013) b!219778))

(assert (= (and b!219761 res!100998) b!219764))

(assert (= (and b!219764 res!101027) b!219759))

(assert (= (and b!219761 res!101005) b!219792))

(assert (= (and b!219792 res!101020) b!219762))

(assert (= (and b!219761 c!42142) b!219752))

(assert (= (and b!219761 (not c!42142)) b!219798))

(assert (= (and b!219752 res!101006) b!219760))

(assert (= (and b!219761 c!42143) b!219791))

(assert (= (and b!219761 (not c!42143)) b!219786))

(assert (= b!219779 b!219773))

(assert (= b!219777 b!219779))

(assert (= (and start!23522 ((_ is Cons!3387) rules!1920)) b!219777))

(assert (= b!219782 b!219766))

(assert (= b!219793 b!219782))

(assert (= start!23522 b!219793))

(assert (= b!219768 b!219772))

(assert (= b!219756 b!219768))

(assert (= b!219783 b!219756))

(assert (= (and start!23522 ((_ is Cons!3388) tokens!465)) b!219783))

(declare-fun m!253295 () Bool)

(assert (=> b!219794 m!253295))

(declare-fun m!253297 () Bool)

(assert (=> b!219780 m!253297))

(declare-fun m!253299 () Bool)

(assert (=> b!219780 m!253299))

(declare-fun m!253301 () Bool)

(assert (=> b!219764 m!253301))

(declare-fun m!253303 () Bool)

(assert (=> b!219771 m!253303))

(declare-fun m!253305 () Bool)

(assert (=> b!219782 m!253305))

(declare-fun m!253307 () Bool)

(assert (=> b!219782 m!253307))

(declare-fun m!253309 () Bool)

(assert (=> start!23522 m!253309))

(declare-fun m!253311 () Bool)

(assert (=> b!219759 m!253311))

(declare-fun m!253313 () Bool)

(assert (=> b!219768 m!253313))

(declare-fun m!253315 () Bool)

(assert (=> b!219768 m!253315))

(declare-fun m!253317 () Bool)

(assert (=> b!219791 m!253317))

(declare-fun m!253319 () Bool)

(assert (=> b!219779 m!253319))

(declare-fun m!253321 () Bool)

(assert (=> b!219779 m!253321))

(declare-fun m!253323 () Bool)

(assert (=> b!219754 m!253323))

(assert (=> b!219754 m!253323))

(declare-fun m!253325 () Bool)

(assert (=> b!219754 m!253325))

(declare-fun m!253327 () Bool)

(assert (=> b!219754 m!253327))

(declare-fun m!253329 () Bool)

(assert (=> b!219775 m!253329))

(declare-fun m!253331 () Bool)

(assert (=> b!219758 m!253331))

(declare-fun m!253333 () Bool)

(assert (=> b!219797 m!253333))

(assert (=> b!219797 m!253333))

(declare-fun m!253335 () Bool)

(assert (=> b!219797 m!253335))

(declare-fun m!253337 () Bool)

(assert (=> b!219797 m!253337))

(declare-fun m!253339 () Bool)

(assert (=> b!219752 m!253339))

(declare-fun m!253341 () Bool)

(assert (=> b!219752 m!253341))

(declare-fun m!253343 () Bool)

(assert (=> b!219776 m!253343))

(declare-fun m!253345 () Bool)

(assert (=> b!219770 m!253345))

(declare-fun m!253347 () Bool)

(assert (=> b!219795 m!253347))

(declare-fun m!253349 () Bool)

(assert (=> b!219795 m!253349))

(declare-fun m!253351 () Bool)

(assert (=> b!219795 m!253351))

(declare-fun m!253353 () Bool)

(assert (=> b!219757 m!253353))

(declare-fun m!253355 () Bool)

(assert (=> b!219761 m!253355))

(declare-fun m!253357 () Bool)

(assert (=> b!219761 m!253357))

(declare-fun m!253359 () Bool)

(assert (=> b!219761 m!253359))

(declare-fun m!253361 () Bool)

(assert (=> b!219761 m!253361))

(declare-fun m!253363 () Bool)

(assert (=> b!219761 m!253363))

(declare-fun m!253365 () Bool)

(assert (=> b!219761 m!253365))

(declare-fun m!253367 () Bool)

(assert (=> b!219761 m!253367))

(declare-fun m!253369 () Bool)

(assert (=> b!219761 m!253369))

(declare-fun m!253371 () Bool)

(assert (=> b!219761 m!253371))

(declare-fun m!253373 () Bool)

(assert (=> b!219761 m!253373))

(declare-fun m!253375 () Bool)

(assert (=> b!219761 m!253375))

(declare-fun m!253377 () Bool)

(assert (=> b!219761 m!253377))

(declare-fun m!253379 () Bool)

(assert (=> b!219761 m!253379))

(declare-fun m!253381 () Bool)

(assert (=> b!219761 m!253381))

(declare-fun m!253383 () Bool)

(assert (=> b!219761 m!253383))

(assert (=> b!219761 m!253361))

(declare-fun m!253385 () Bool)

(assert (=> b!219761 m!253385))

(declare-fun m!253387 () Bool)

(assert (=> b!219761 m!253387))

(declare-fun m!253389 () Bool)

(assert (=> b!219761 m!253389))

(declare-fun m!253391 () Bool)

(assert (=> b!219761 m!253391))

(declare-fun m!253393 () Bool)

(assert (=> b!219761 m!253393))

(declare-fun m!253395 () Bool)

(assert (=> b!219761 m!253395))

(assert (=> b!219761 m!253379))

(declare-fun m!253397 () Bool)

(assert (=> b!219761 m!253397))

(declare-fun m!253399 () Bool)

(assert (=> b!219761 m!253399))

(declare-fun m!253401 () Bool)

(assert (=> b!219761 m!253401))

(declare-fun m!253403 () Bool)

(assert (=> b!219761 m!253403))

(declare-fun m!253405 () Bool)

(assert (=> b!219761 m!253405))

(declare-fun m!253407 () Bool)

(assert (=> b!219761 m!253407))

(declare-fun m!253409 () Bool)

(assert (=> b!219761 m!253409))

(assert (=> b!219761 m!253397))

(declare-fun m!253411 () Bool)

(assert (=> b!219761 m!253411))

(declare-fun m!253413 () Bool)

(assert (=> b!219761 m!253413))

(declare-fun m!253415 () Bool)

(assert (=> b!219761 m!253415))

(declare-fun m!253417 () Bool)

(assert (=> b!219761 m!253417))

(declare-fun m!253419 () Bool)

(assert (=> b!219761 m!253419))

(declare-fun m!253421 () Bool)

(assert (=> b!219761 m!253421))

(declare-fun m!253423 () Bool)

(assert (=> b!219761 m!253423))

(declare-fun m!253425 () Bool)

(assert (=> b!219761 m!253425))

(declare-fun m!253427 () Bool)

(assert (=> b!219761 m!253427))

(declare-fun m!253429 () Bool)

(assert (=> b!219761 m!253429))

(assert (=> b!219761 m!253413))

(declare-fun m!253431 () Bool)

(assert (=> b!219761 m!253431))

(declare-fun m!253433 () Bool)

(assert (=> b!219761 m!253433))

(assert (=> b!219761 m!253423))

(declare-fun m!253435 () Bool)

(assert (=> b!219761 m!253435))

(declare-fun m!253437 () Bool)

(assert (=> b!219761 m!253437))

(declare-fun m!253439 () Bool)

(assert (=> b!219788 m!253439))

(assert (=> b!219788 m!253439))

(declare-fun m!253441 () Bool)

(assert (=> b!219788 m!253441))

(declare-fun m!253443 () Bool)

(assert (=> b!219785 m!253443))

(declare-fun m!253445 () Bool)

(assert (=> b!219785 m!253445))

(declare-fun m!253447 () Bool)

(assert (=> b!219785 m!253447))

(declare-fun m!253449 () Bool)

(assert (=> b!219785 m!253449))

(declare-fun m!253451 () Bool)

(assert (=> b!219785 m!253451))

(declare-fun m!253453 () Bool)

(assert (=> b!219793 m!253453))

(declare-fun m!253455 () Bool)

(assert (=> b!219783 m!253455))

(declare-fun m!253457 () Bool)

(assert (=> b!219755 m!253457))

(declare-fun m!253459 () Bool)

(assert (=> b!219755 m!253459))

(declare-fun m!253461 () Bool)

(assert (=> b!219774 m!253461))

(declare-fun m!253463 () Bool)

(assert (=> b!219781 m!253463))

(assert (=> b!219781 m!253413))

(declare-fun m!253465 () Bool)

(assert (=> b!219799 m!253465))

(declare-fun m!253467 () Bool)

(assert (=> b!219799 m!253467))

(declare-fun m!253469 () Bool)

(assert (=> b!219799 m!253469))

(declare-fun m!253471 () Bool)

(assert (=> b!219799 m!253471))

(declare-fun m!253473 () Bool)

(assert (=> b!219799 m!253473))

(declare-fun m!253475 () Bool)

(assert (=> b!219799 m!253475))

(assert (=> b!219799 m!253471))

(assert (=> b!219799 m!253475))

(declare-fun m!253477 () Bool)

(assert (=> b!219799 m!253477))

(declare-fun m!253479 () Bool)

(assert (=> b!219799 m!253479))

(declare-fun m!253481 () Bool)

(assert (=> b!219799 m!253481))

(assert (=> b!219799 m!253467))

(declare-fun m!253483 () Bool)

(assert (=> b!219799 m!253483))

(declare-fun m!253485 () Bool)

(assert (=> b!219799 m!253485))

(assert (=> b!219799 m!253479))

(declare-fun m!253487 () Bool)

(assert (=> b!219799 m!253487))

(declare-fun m!253489 () Bool)

(assert (=> b!219799 m!253489))

(declare-fun m!253491 () Bool)

(assert (=> b!219789 m!253491))

(declare-fun m!253493 () Bool)

(assert (=> b!219796 m!253493))

(declare-fun m!253495 () Bool)

(assert (=> b!219792 m!253495))

(declare-fun m!253497 () Bool)

(assert (=> b!219792 m!253497))

(declare-fun m!253499 () Bool)

(assert (=> b!219784 m!253499))

(assert (=> b!219784 m!253499))

(declare-fun m!253501 () Bool)

(assert (=> b!219784 m!253501))

(assert (=> b!219784 m!253501))

(declare-fun m!253503 () Bool)

(assert (=> b!219784 m!253503))

(declare-fun m!253505 () Bool)

(assert (=> b!219784 m!253505))

(declare-fun m!253507 () Bool)

(assert (=> b!219756 m!253507))

(declare-fun m!253509 () Bool)

(assert (=> b!219753 m!253509))

(declare-fun m!253511 () Bool)

(assert (=> b!219753 m!253511))

(declare-fun m!253513 () Bool)

(assert (=> b!219787 m!253513))

(check-sat (not b!219793) (not b!219808) (not b!219781) (not b!219756) b_and!16183 (not b!219799) b_and!16179 (not b!219783) (not b!219771) (not b!219776) (not b!219754) (not b!219795) (not b_next!8315) (not b!219759) (not start!23522) (not b_next!8305) (not b!219768) (not b!219794) (not b!219787) (not b!219780) (not b!219752) (not b!219777) (not b!219792) (not b!219796) (not b_next!8313) (not b!219755) (not b!219797) (not b!219753) (not b!219785) (not b_next!8307) (not b!219774) (not b!219789) b_and!16181 (not b!219761) (not b!219775) (not b_next!8309) (not b_next!8311) b_and!16187 (not b!219782) (not b!219779) (not b!219758) (not b!219757) (not b!219764) (not b!219770) b_and!16177 (not b!219788) (not b!219791) (not b!219784) b_and!16185)
(check-sat (not b_next!8315) (not b_next!8305) b_and!16183 (not b_next!8313) b_and!16179 (not b_next!8307) b_and!16181 b_and!16187 b_and!16177 b_and!16185 (not b_next!8309) (not b_next!8311))
