; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!24250 () Bool)

(assert start!24250)

(declare-fun b!226422 () Bool)

(declare-fun b_free!8449 () Bool)

(declare-fun b_next!8449 () Bool)

(assert (=> b!226422 (= b_free!8449 (not b_next!8449))))

(declare-fun tp!93294 () Bool)

(declare-fun b_and!16801 () Bool)

(assert (=> b!226422 (= tp!93294 b_and!16801)))

(declare-fun b_free!8451 () Bool)

(declare-fun b_next!8451 () Bool)

(assert (=> b!226422 (= b_free!8451 (not b_next!8451))))

(declare-fun tp!93290 () Bool)

(declare-fun b_and!16803 () Bool)

(assert (=> b!226422 (= tp!93290 b_and!16803)))

(declare-fun b!226418 () Bool)

(declare-fun b_free!8453 () Bool)

(declare-fun b_next!8453 () Bool)

(assert (=> b!226418 (= b_free!8453 (not b_next!8453))))

(declare-fun tp!93291 () Bool)

(declare-fun b_and!16805 () Bool)

(assert (=> b!226418 (= tp!93291 b_and!16805)))

(declare-fun b_free!8455 () Bool)

(declare-fun b_next!8455 () Bool)

(assert (=> b!226418 (= b_free!8455 (not b_next!8455))))

(declare-fun tp!93298 () Bool)

(declare-fun b_and!16807 () Bool)

(assert (=> b!226418 (= tp!93298 b_and!16807)))

(declare-fun b!226439 () Bool)

(declare-fun b_free!8457 () Bool)

(declare-fun b_next!8457 () Bool)

(assert (=> b!226439 (= b_free!8457 (not b_next!8457))))

(declare-fun tp!93288 () Bool)

(declare-fun b_and!16809 () Bool)

(assert (=> b!226439 (= tp!93288 b_and!16809)))

(declare-fun b_free!8459 () Bool)

(declare-fun b_next!8459 () Bool)

(assert (=> b!226439 (= b_free!8459 (not b_next!8459))))

(declare-fun tp!93287 () Bool)

(declare-fun b_and!16811 () Bool)

(assert (=> b!226439 (= tp!93287 b_and!16811)))

(declare-fun bs!24140 () Bool)

(declare-fun b!226449 () Bool)

(declare-fun b!226450 () Bool)

(assert (= bs!24140 (and b!226449 b!226450)))

(declare-fun lambda!7082 () Int)

(declare-fun lambda!7081 () Int)

(assert (=> bs!24140 (not (= lambda!7082 lambda!7081))))

(declare-fun b!226462 () Bool)

(declare-fun e!139821 () Bool)

(assert (=> b!226462 (= e!139821 true)))

(declare-fun b!226461 () Bool)

(declare-fun e!139820 () Bool)

(assert (=> b!226461 (= e!139820 e!139821)))

(declare-fun b!226460 () Bool)

(declare-fun e!139819 () Bool)

(assert (=> b!226460 (= e!139819 e!139820)))

(assert (=> b!226449 e!139819))

(assert (= b!226461 b!226462))

(assert (= b!226460 b!226461))

(declare-datatypes ((List!3431 0))(
  ( (Nil!3421) (Cons!3421 (h!8818 (_ BitVec 16)) (t!33281 List!3431)) )
))
(declare-datatypes ((TokenValue!661 0))(
  ( (FloatLiteralValue!1322 (text!5072 List!3431)) (TokenValueExt!660 (__x!2809 Int)) (Broken!3305 (value!22501 List!3431)) (Object!670) (End!661) (Def!661) (Underscore!661) (Match!661) (Else!661) (Error!661) (Case!661) (If!661) (Extends!661) (Abstract!661) (Class!661) (Val!661) (DelimiterValue!1322 (del!721 List!3431)) (KeywordValue!667 (value!22502 List!3431)) (CommentValue!1322 (value!22503 List!3431)) (WhitespaceValue!1322 (value!22504 List!3431)) (IndentationValue!661 (value!22505 List!3431)) (String!4384) (Int32!661) (Broken!3306 (value!22506 List!3431)) (Boolean!662) (Unit!3869) (OperatorValue!664 (op!721 List!3431)) (IdentifierValue!1322 (value!22507 List!3431)) (IdentifierValue!1323 (value!22508 List!3431)) (WhitespaceValue!1323 (value!22509 List!3431)) (True!1322) (False!1322) (Broken!3307 (value!22510 List!3431)) (Broken!3308 (value!22511 List!3431)) (True!1323) (RightBrace!661) (RightBracket!661) (Colon!661) (Null!661) (Comma!661) (LeftBracket!661) (False!1323) (LeftBrace!661) (ImaginaryLiteralValue!661 (text!5073 List!3431)) (StringLiteralValue!1983 (value!22512 List!3431)) (EOFValue!661 (value!22513 List!3431)) (IdentValue!661 (value!22514 List!3431)) (DelimiterValue!1323 (value!22515 List!3431)) (DedentValue!661 (value!22516 List!3431)) (NewLineValue!661 (value!22517 List!3431)) (IntegerValue!1983 (value!22518 (_ BitVec 32)) (text!5074 List!3431)) (IntegerValue!1984 (value!22519 Int) (text!5075 List!3431)) (Times!661) (Or!661) (Equal!661) (Minus!661) (Broken!3309 (value!22520 List!3431)) (And!661) (Div!661) (LessEqual!661) (Mod!661) (Concat!1524) (Not!661) (Plus!661) (SpaceValue!661 (value!22521 List!3431)) (IntegerValue!1985 (value!22522 Int) (text!5076 List!3431)) (StringLiteralValue!1984 (text!5077 List!3431)) (FloatLiteralValue!1323 (text!5078 List!3431)) (BytesLiteralValue!661 (value!22523 List!3431)) (CommentValue!1323 (value!22524 List!3431)) (StringLiteralValue!1985 (value!22525 List!3431)) (ErrorTokenValue!661 (msg!722 List!3431)) )
))
(declare-datatypes ((C!2648 0))(
  ( (C!2649 (val!1210 Int)) )
))
(declare-datatypes ((List!3432 0))(
  ( (Nil!3422) (Cons!3422 (h!8819 C!2648) (t!33282 List!3432)) )
))
(declare-datatypes ((IArray!2201 0))(
  ( (IArray!2202 (innerList!1158 List!3432)) )
))
(declare-datatypes ((Conc!1100 0))(
  ( (Node!1100 (left!2754 Conc!1100) (right!3084 Conc!1100) (csize!2430 Int) (cheight!1311 Int)) (Leaf!1759 (xs!3695 IArray!2201) (csize!2431 Int)) (Empty!1100) )
))
(declare-datatypes ((BalanceConc!2208 0))(
  ( (BalanceConc!2209 (c!43501 Conc!1100)) )
))
(declare-datatypes ((TokenValueInjection!1094 0))(
  ( (TokenValueInjection!1095 (toValue!1334 Int) (toChars!1193 Int)) )
))
(declare-datatypes ((String!4385 0))(
  ( (String!4386 (value!22526 String)) )
))
(declare-datatypes ((Regex!863 0))(
  ( (ElementMatch!863 (c!43502 C!2648)) (Concat!1525 (regOne!2238 Regex!863) (regTwo!2238 Regex!863)) (EmptyExpr!863) (Star!863 (reg!1192 Regex!863)) (EmptyLang!863) (Union!863 (regOne!2239 Regex!863) (regTwo!2239 Regex!863)) )
))
(declare-datatypes ((Rule!1078 0))(
  ( (Rule!1079 (regex!639 Regex!863) (tag!837 String!4385) (isSeparator!639 Bool) (transformation!639 TokenValueInjection!1094)) )
))
(declare-datatypes ((List!3433 0))(
  ( (Nil!3423) (Cons!3423 (h!8820 Rule!1078) (t!33283 List!3433)) )
))
(declare-fun rules!1920 () List!3433)

(get-info :version)

(assert (= (and b!226449 ((_ is Cons!3423) rules!1920)) b!226460))

(declare-fun order!2359 () Int)

(declare-fun order!2357 () Int)

(declare-fun dynLambda!1583 (Int Int) Int)

(declare-fun dynLambda!1584 (Int Int) Int)

(assert (=> b!226462 (< (dynLambda!1583 order!2357 (toValue!1334 (transformation!639 (h!8820 rules!1920)))) (dynLambda!1584 order!2359 lambda!7082))))

(declare-fun order!2361 () Int)

(declare-fun dynLambda!1585 (Int Int) Int)

(assert (=> b!226462 (< (dynLambda!1585 order!2361 (toChars!1193 (transformation!639 (h!8820 rules!1920)))) (dynLambda!1584 order!2359 lambda!7082))))

(assert (=> b!226449 true))

(declare-fun b!226402 () Bool)

(declare-fun res!104095 () Bool)

(declare-fun e!139782 () Bool)

(assert (=> b!226402 (=> (not res!104095) (not e!139782))))

(declare-datatypes ((Token!1022 0))(
  ( (Token!1023 (value!22527 TokenValue!661) (rule!1194 Rule!1078) (size!2746 Int) (originalCharacters!682 List!3432)) )
))
(declare-datatypes ((List!3434 0))(
  ( (Nil!3424) (Cons!3424 (h!8821 Token!1022) (t!33284 List!3434)) )
))
(declare-datatypes ((IArray!2203 0))(
  ( (IArray!2204 (innerList!1159 List!3434)) )
))
(declare-datatypes ((Conc!1101 0))(
  ( (Node!1101 (left!2755 Conc!1101) (right!3085 Conc!1101) (csize!2432 Int) (cheight!1312 Int)) (Leaf!1760 (xs!3696 IArray!2203) (csize!2433 Int)) (Empty!1101) )
))
(declare-datatypes ((BalanceConc!2210 0))(
  ( (BalanceConc!2211 (c!43503 Conc!1101)) )
))
(declare-datatypes ((tuple2!3666 0))(
  ( (tuple2!3667 (_1!2049 BalanceConc!2210) (_2!2049 BalanceConc!2208)) )
))
(declare-fun lt!87401 () tuple2!3666)

(declare-fun lt!87368 () Token!1022)

(declare-fun apply!610 (BalanceConc!2210 Int) Token!1022)

(assert (=> b!226402 (= res!104095 (= (apply!610 (_1!2049 lt!87401) 0) lt!87368))))

(declare-fun b!226403 () Bool)

(declare-fun tokens!465 () List!3434)

(declare-fun e!139798 () Bool)

(declare-fun tp!93296 () Bool)

(declare-fun e!139794 () Bool)

(declare-fun inv!4277 (Token!1022) Bool)

(assert (=> b!226403 (= e!139794 (and (inv!4277 (h!8821 tokens!465)) e!139798 tp!93296))))

(declare-fun b!226404 () Bool)

(declare-datatypes ((Unit!3870 0))(
  ( (Unit!3871) )
))
(declare-fun e!139790 () Unit!3870)

(declare-fun Unit!3872 () Unit!3870)

(assert (=> b!226404 (= e!139790 Unit!3872)))

(declare-fun separatorToken!170 () Token!1022)

(declare-fun lt!87383 () Unit!3870)

(declare-datatypes ((LexerInterface!525 0))(
  ( (LexerInterfaceExt!522 (__x!2810 Int)) (Lexer!523) )
))
(declare-fun thiss!17480 () LexerInterface!525)

(declare-fun lt!87394 () C!2648)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!32 (LexerInterface!525 List!3433 List!3433 Rule!1078 Rule!1078 C!2648) Unit!3870)

(assert (=> b!226404 (= lt!87383 (lemmaSepRuleNotContainsCharContainedInANonSepRule!32 thiss!17480 rules!1920 rules!1920 (rule!1194 lt!87368) (rule!1194 separatorToken!170) lt!87394))))

(assert (=> b!226404 false))

(declare-fun b!226405 () Bool)

(declare-fun lt!87386 () List!3432)

(declare-fun e!139789 () Bool)

(declare-fun lt!87367 () List!3432)

(declare-fun lt!87389 () List!3432)

(declare-fun ++!858 (List!3432 List!3432) List!3432)

(assert (=> b!226405 (= e!139789 (not (= lt!87367 (++!858 lt!87386 lt!87389))))))

(declare-fun b!226406 () Bool)

(declare-fun e!139796 () Bool)

(declare-fun e!139776 () Bool)

(assert (=> b!226406 (= e!139796 e!139776)))

(declare-fun res!104107 () Bool)

(assert (=> b!226406 (=> (not res!104107) (not e!139776))))

(declare-fun lt!87393 () Rule!1078)

(declare-fun lt!87369 () List!3432)

(declare-fun matchR!201 (Regex!863 List!3432) Bool)

(assert (=> b!226406 (= res!104107 (matchR!201 (regex!639 lt!87393) lt!87369))))

(declare-datatypes ((Option!609 0))(
  ( (None!608) (Some!608 (v!14291 Rule!1078)) )
))
(declare-fun lt!87376 () Option!609)

(declare-fun get!1072 (Option!609) Rule!1078)

(assert (=> b!226406 (= lt!87393 (get!1072 lt!87376))))

(declare-fun b!226407 () Bool)

(declare-fun e!139775 () Bool)

(declare-fun lt!87374 () tuple2!3666)

(declare-fun isEmpty!1938 (BalanceConc!2208) Bool)

(assert (=> b!226407 (= e!139775 (isEmpty!1938 (_2!2049 lt!87374)))))

(declare-fun b!226408 () Bool)

(declare-fun e!139812 () Bool)

(declare-fun e!139804 () Bool)

(assert (=> b!226408 (= e!139812 (not e!139804))))

(declare-fun res!104084 () Bool)

(assert (=> b!226408 (=> res!104084 e!139804)))

(declare-fun lt!87379 () BalanceConc!2208)

(declare-fun list!1312 (BalanceConc!2208) List!3432)

(assert (=> b!226408 (= res!104084 (not (= lt!87389 (list!1312 lt!87379))))))

(declare-fun printWithSeparatorTokenWhenNeededRec!208 (LexerInterface!525 List!3433 BalanceConc!2210 Token!1022 Int) BalanceConc!2208)

(declare-fun seqFromList!655 (List!3434) BalanceConc!2210)

(assert (=> b!226408 (= lt!87379 (printWithSeparatorTokenWhenNeededRec!208 thiss!17480 rules!1920 (seqFromList!655 (t!33284 tokens!465)) separatorToken!170 0))))

(declare-fun lt!87398 () List!3432)

(declare-fun lt!87362 () List!3432)

(assert (=> b!226408 (= lt!87398 lt!87362)))

(declare-fun lt!87366 () List!3432)

(assert (=> b!226408 (= lt!87362 (++!858 lt!87386 lt!87366))))

(assert (=> b!226408 (= lt!87398 (++!858 (++!858 lt!87386 lt!87369) lt!87389))))

(declare-fun lt!87370 () Unit!3870)

(declare-fun lemmaConcatAssociativity!340 (List!3432 List!3432 List!3432) Unit!3870)

(assert (=> b!226408 (= lt!87370 (lemmaConcatAssociativity!340 lt!87386 lt!87369 lt!87389))))

(declare-fun charsOf!294 (Token!1022) BalanceConc!2208)

(assert (=> b!226408 (= lt!87386 (list!1312 (charsOf!294 (h!8821 tokens!465))))))

(assert (=> b!226408 (= lt!87366 (++!858 lt!87369 lt!87389))))

(declare-fun printWithSeparatorTokenWhenNeededList!218 (LexerInterface!525 List!3433 List!3434 Token!1022) List!3432)

(assert (=> b!226408 (= lt!87389 (printWithSeparatorTokenWhenNeededList!218 thiss!17480 rules!1920 (t!33284 tokens!465) separatorToken!170))))

(assert (=> b!226408 (= lt!87369 (list!1312 (charsOf!294 separatorToken!170)))))

(declare-fun b!226409 () Bool)

(declare-fun e!139786 () Bool)

(declare-fun e!139785 () Bool)

(assert (=> b!226409 (= e!139786 e!139785)))

(declare-fun res!104082 () Bool)

(assert (=> b!226409 (=> (not res!104082) (not e!139785))))

(declare-fun lt!87358 () Rule!1078)

(declare-fun lt!87381 () List!3432)

(assert (=> b!226409 (= res!104082 (matchR!201 (regex!639 lt!87358) lt!87381))))

(declare-fun lt!87365 () Option!609)

(assert (=> b!226409 (= lt!87358 (get!1072 lt!87365))))

(declare-fun b!226410 () Bool)

(declare-fun e!139784 () Bool)

(assert (=> b!226410 (= e!139804 e!139784)))

(declare-fun res!104091 () Bool)

(assert (=> b!226410 (=> res!104091 e!139784)))

(assert (=> b!226410 (= res!104091 e!139789)))

(declare-fun res!104113 () Bool)

(assert (=> b!226410 (=> (not res!104113) (not e!139789))))

(declare-fun lt!87354 () Bool)

(assert (=> b!226410 (= res!104113 (not lt!87354))))

(assert (=> b!226410 (= lt!87354 (= lt!87367 lt!87362))))

(declare-fun b!226411 () Bool)

(assert (=> b!226411 (= e!139785 (= (rule!1194 lt!87368) lt!87358))))

(declare-fun b!226412 () Bool)

(declare-fun res!104090 () Bool)

(declare-fun e!139795 () Bool)

(assert (=> b!226412 (=> res!104090 e!139795)))

(declare-fun isEmpty!1939 (BalanceConc!2210) Bool)

(declare-fun lex!325 (LexerInterface!525 List!3433 BalanceConc!2208) tuple2!3666)

(declare-fun seqFromList!656 (List!3432) BalanceConc!2208)

(assert (=> b!226412 (= res!104090 (isEmpty!1939 (_1!2049 (lex!325 thiss!17480 rules!1920 (seqFromList!656 lt!87386)))))))

(declare-fun b!226413 () Bool)

(declare-fun res!104098 () Bool)

(assert (=> b!226413 (=> (not res!104098) (not e!139812))))

(declare-fun lt!87404 () List!3432)

(assert (=> b!226413 (= res!104098 (= (list!1312 (seqFromList!656 lt!87367)) lt!87404))))

(declare-fun b!226414 () Bool)

(declare-fun e!139793 () Unit!3870)

(declare-fun Unit!3873 () Unit!3870)

(assert (=> b!226414 (= e!139793 Unit!3873)))

(assert (=> b!226414 false))

(declare-fun b!226415 () Bool)

(declare-fun res!104093 () Bool)

(declare-fun e!139802 () Bool)

(assert (=> b!226415 (=> res!104093 e!139802)))

(declare-fun rulesProduceEachTokenIndividuallyList!177 (LexerInterface!525 List!3433 List!3434) Bool)

(assert (=> b!226415 (= res!104093 (not (rulesProduceEachTokenIndividuallyList!177 thiss!17480 rules!1920 (t!33284 tokens!465))))))

(declare-fun b!226416 () Bool)

(declare-fun e!139792 () Bool)

(assert (=> b!226416 (= e!139792 e!139802)))

(declare-fun res!104094 () Bool)

(assert (=> b!226416 (=> res!104094 e!139802)))

(declare-fun lt!87403 () List!3434)

(declare-fun filter!33 (List!3434 Int) List!3434)

(assert (=> b!226416 (= res!104094 (not (= (filter!33 lt!87403 lambda!7081) (t!33284 tokens!465))))))

(assert (=> b!226416 (= (filter!33 lt!87403 lambda!7081) (t!33284 tokens!465))))

(declare-fun list!1313 (BalanceConc!2210) List!3434)

(assert (=> b!226416 (= lt!87403 (list!1313 (_1!2049 (lex!325 thiss!17480 rules!1920 lt!87379))))))

(declare-fun lt!87385 () Unit!3870)

(declare-fun theoremInvertabilityFromTokensSepTokenWhenNeeded!24 (LexerInterface!525 List!3433 List!3434 Token!1022) Unit!3870)

(assert (=> b!226416 (= lt!87385 (theoremInvertabilityFromTokensSepTokenWhenNeeded!24 thiss!17480 rules!1920 (t!33284 tokens!465) separatorToken!170))))

(declare-datatypes ((tuple2!3668 0))(
  ( (tuple2!3669 (_1!2050 Token!1022) (_2!2050 List!3432)) )
))
(declare-datatypes ((Option!610 0))(
  ( (None!609) (Some!609 (v!14292 tuple2!3668)) )
))
(declare-fun lt!87396 () Option!610)

(assert (=> b!226416 (= lt!87396 (Some!609 (tuple2!3669 separatorToken!170 lt!87389)))))

(declare-fun lt!87359 () Unit!3870)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!30 (LexerInterface!525 List!3433 Token!1022 Rule!1078 List!3432 Rule!1078) Unit!3870)

(assert (=> b!226416 (= lt!87359 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!30 thiss!17480 rules!1920 separatorToken!170 (rule!1194 separatorToken!170) lt!87389 (rule!1194 lt!87368)))))

(declare-fun lt!87364 () Unit!3870)

(assert (=> b!226416 (= lt!87364 e!139790)))

(declare-fun c!43500 () Bool)

(declare-fun contains!610 (List!3432 C!2648) Bool)

(declare-fun usedCharacters!44 (Regex!863) List!3432)

(assert (=> b!226416 (= c!43500 (contains!610 (usedCharacters!44 (regex!639 (rule!1194 separatorToken!170))) lt!87394))))

(declare-fun head!773 (List!3432) C!2648)

(assert (=> b!226416 (= lt!87394 (head!773 lt!87389))))

(declare-fun lt!87384 () Unit!3870)

(declare-fun e!139787 () Unit!3870)

(assert (=> b!226416 (= lt!87384 e!139787)))

(declare-fun c!43498 () Bool)

(declare-fun lt!87375 () C!2648)

(assert (=> b!226416 (= c!43498 (not (contains!610 (usedCharacters!44 (regex!639 (rule!1194 lt!87368))) lt!87375)))))

(assert (=> b!226416 (= lt!87375 (head!773 lt!87381))))

(assert (=> b!226416 e!139786))

(declare-fun res!104096 () Bool)

(assert (=> b!226416 (=> (not res!104096) (not e!139786))))

(declare-fun isDefined!460 (Option!609) Bool)

(assert (=> b!226416 (= res!104096 (isDefined!460 lt!87365))))

(declare-fun getRuleFromTag!80 (LexerInterface!525 List!3433 String!4385) Option!609)

(assert (=> b!226416 (= lt!87365 (getRuleFromTag!80 thiss!17480 rules!1920 (tag!837 (rule!1194 lt!87368))))))

(declare-fun lt!87392 () Unit!3870)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!80 (LexerInterface!525 List!3433 List!3432 Token!1022) Unit!3870)

(assert (=> b!226416 (= lt!87392 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!80 thiss!17480 rules!1920 lt!87381 lt!87368))))

(assert (=> b!226416 (= lt!87381 (list!1312 (charsOf!294 lt!87368)))))

(declare-fun lt!87380 () Unit!3870)

(declare-fun forallContained!206 (List!3434 Int Token!1022) Unit!3870)

(assert (=> b!226416 (= lt!87380 (forallContained!206 tokens!465 lambda!7082 lt!87368))))

(assert (=> b!226416 e!139782))

(declare-fun res!104102 () Bool)

(assert (=> b!226416 (=> (not res!104102) (not e!139782))))

(declare-fun size!2747 (BalanceConc!2210) Int)

(assert (=> b!226416 (= res!104102 (= (size!2747 (_1!2049 lt!87401)) 1))))

(declare-fun lt!87395 () BalanceConc!2208)

(assert (=> b!226416 (= lt!87401 (lex!325 thiss!17480 rules!1920 lt!87395))))

(declare-fun lt!87360 () BalanceConc!2210)

(declare-fun printTailRec!219 (LexerInterface!525 BalanceConc!2210 Int BalanceConc!2208) BalanceConc!2208)

(assert (=> b!226416 (= lt!87395 (printTailRec!219 thiss!17480 lt!87360 0 (BalanceConc!2209 Empty!1100)))))

(declare-fun print!256 (LexerInterface!525 BalanceConc!2210) BalanceConc!2208)

(assert (=> b!226416 (= lt!87395 (print!256 thiss!17480 lt!87360))))

(declare-fun singletonSeq!191 (Token!1022) BalanceConc!2210)

(assert (=> b!226416 (= lt!87360 (singletonSeq!191 lt!87368))))

(assert (=> b!226416 e!139796))

(declare-fun res!104101 () Bool)

(assert (=> b!226416 (=> (not res!104101) (not e!139796))))

(assert (=> b!226416 (= res!104101 (isDefined!460 lt!87376))))

(assert (=> b!226416 (= lt!87376 (getRuleFromTag!80 thiss!17480 rules!1920 (tag!837 (rule!1194 separatorToken!170))))))

(declare-fun lt!87399 () Unit!3870)

(assert (=> b!226416 (= lt!87399 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!80 thiss!17480 rules!1920 lt!87369 separatorToken!170))))

(assert (=> b!226416 e!139775))

(declare-fun res!104106 () Bool)

(assert (=> b!226416 (=> (not res!104106) (not e!139775))))

(assert (=> b!226416 (= res!104106 (= (size!2747 (_1!2049 lt!87374)) 1))))

(declare-fun lt!87391 () BalanceConc!2208)

(assert (=> b!226416 (= lt!87374 (lex!325 thiss!17480 rules!1920 lt!87391))))

(declare-fun lt!87400 () BalanceConc!2210)

(assert (=> b!226416 (= lt!87391 (printTailRec!219 thiss!17480 lt!87400 0 (BalanceConc!2209 Empty!1100)))))

(assert (=> b!226416 (= lt!87391 (print!256 thiss!17480 lt!87400))))

(assert (=> b!226416 (= lt!87400 (singletonSeq!191 separatorToken!170))))

(declare-fun rulesProduceIndividualToken!274 (LexerInterface!525 List!3433 Token!1022) Bool)

(assert (=> b!226416 (rulesProduceIndividualToken!274 thiss!17480 rules!1920 lt!87368)))

(declare-fun lt!87356 () Unit!3870)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!92 (LexerInterface!525 List!3433 List!3434 Token!1022) Unit!3870)

(assert (=> b!226416 (= lt!87356 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!92 thiss!17480 rules!1920 tokens!465 lt!87368))))

(declare-fun head!774 (List!3434) Token!1022)

(assert (=> b!226416 (= lt!87368 (head!774 (t!33284 tokens!465)))))

(declare-fun lt!87363 () Unit!3870)

(assert (=> b!226416 (= lt!87363 e!139793)))

(declare-fun c!43499 () Bool)

(declare-fun isEmpty!1940 (List!3434) Bool)

(assert (=> b!226416 (= c!43499 (isEmpty!1940 (t!33284 tokens!465)))))

(declare-fun maxPrefix!255 (LexerInterface!525 List!3433 List!3432) Option!610)

(assert (=> b!226416 (= lt!87396 (maxPrefix!255 thiss!17480 rules!1920 lt!87366))))

(declare-fun lt!87371 () tuple2!3668)

(assert (=> b!226416 (= lt!87366 (_2!2050 lt!87371))))

(declare-fun lt!87390 () Unit!3870)

(declare-fun lemmaSamePrefixThenSameSuffix!160 (List!3432 List!3432 List!3432 List!3432 List!3432) Unit!3870)

(assert (=> b!226416 (= lt!87390 (lemmaSamePrefixThenSameSuffix!160 lt!87386 lt!87366 lt!87386 (_2!2050 lt!87371) lt!87367))))

(declare-fun get!1073 (Option!610) tuple2!3668)

(assert (=> b!226416 (= lt!87371 (get!1073 (maxPrefix!255 thiss!17480 rules!1920 lt!87367)))))

(declare-fun isPrefix!335 (List!3432 List!3432) Bool)

(assert (=> b!226416 (isPrefix!335 lt!87386 lt!87362)))

(declare-fun lt!87388 () Unit!3870)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!230 (List!3432 List!3432) Unit!3870)

(assert (=> b!226416 (= lt!87388 (lemmaConcatTwoListThenFirstIsPrefix!230 lt!87386 lt!87366))))

(declare-fun e!139780 () Bool)

(assert (=> b!226416 e!139780))

(declare-fun res!104085 () Bool)

(assert (=> b!226416 (=> res!104085 e!139780)))

(assert (=> b!226416 (= res!104085 (isEmpty!1940 tokens!465))))

(declare-fun lt!87382 () Unit!3870)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!100 (LexerInterface!525 List!3433 List!3434 Token!1022) Unit!3870)

(assert (=> b!226416 (= lt!87382 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!100 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!226417 () Bool)

(declare-fun res!104083 () Bool)

(declare-fun e!139797 () Bool)

(assert (=> b!226417 (=> (not res!104083) (not e!139797))))

(declare-fun rulesInvariant!491 (LexerInterface!525 List!3433) Bool)

(assert (=> b!226417 (= res!104083 (rulesInvariant!491 thiss!17480 rules!1920))))

(declare-fun e!139791 () Bool)

(assert (=> b!226418 (= e!139791 (and tp!93291 tp!93298))))

(declare-fun e!139777 () Bool)

(declare-fun tp!93295 () Bool)

(declare-fun b!226419 () Bool)

(declare-fun e!139807 () Bool)

(declare-fun inv!4274 (String!4385) Bool)

(declare-fun inv!4278 (TokenValueInjection!1094) Bool)

(assert (=> b!226419 (= e!139807 (and tp!93295 (inv!4274 (tag!837 (rule!1194 separatorToken!170))) (inv!4278 (transformation!639 (rule!1194 separatorToken!170))) e!139777))))

(declare-fun b!226420 () Bool)

(declare-fun e!139811 () Bool)

(assert (=> b!226420 (= e!139811 e!139792)))

(declare-fun res!104092 () Bool)

(assert (=> b!226420 (=> res!104092 e!139792)))

(assert (=> b!226420 (= res!104092 (not lt!87354))))

(declare-fun e!139810 () Bool)

(assert (=> b!226420 e!139810))

(declare-fun res!104097 () Bool)

(assert (=> b!226420 (=> (not res!104097) (not e!139810))))

(declare-fun lt!87361 () tuple2!3668)

(assert (=> b!226420 (= res!104097 (= (_1!2050 lt!87361) (h!8821 tokens!465)))))

(declare-fun lt!87387 () Option!610)

(assert (=> b!226420 (= lt!87361 (get!1073 lt!87387))))

(declare-fun isDefined!461 (Option!610) Bool)

(assert (=> b!226420 (isDefined!461 lt!87387)))

(assert (=> b!226420 (= lt!87387 (maxPrefix!255 thiss!17480 rules!1920 lt!87386))))

(declare-fun b!226421 () Bool)

(declare-fun e!139781 () Bool)

(assert (=> b!226421 (= e!139797 e!139781)))

(declare-fun res!104103 () Bool)

(assert (=> b!226421 (=> (not res!104103) (not e!139781))))

(declare-fun lt!87357 () BalanceConc!2210)

(declare-fun rulesProduceEachTokenIndividually!317 (LexerInterface!525 List!3433 BalanceConc!2210) Bool)

(assert (=> b!226421 (= res!104103 (rulesProduceEachTokenIndividually!317 thiss!17480 rules!1920 lt!87357))))

(assert (=> b!226421 (= lt!87357 (seqFromList!655 tokens!465))))

(declare-fun e!139799 () Bool)

(assert (=> b!226422 (= e!139799 (and tp!93294 tp!93290))))

(declare-fun b!226423 () Bool)

(declare-fun res!104081 () Bool)

(assert (=> b!226423 (=> (not res!104081) (not e!139781))))

(assert (=> b!226423 (= res!104081 ((_ is Cons!3424) tokens!465))))

(declare-fun b!226424 () Bool)

(assert (=> b!226424 (= e!139776 (= (rule!1194 separatorToken!170) lt!87393))))

(declare-fun b!226425 () Bool)

(assert (=> b!226425 (= e!139802 true)))

(declare-fun b!226426 () Bool)

(assert (=> b!226426 (= e!139781 e!139812)))

(declare-fun res!104087 () Bool)

(assert (=> b!226426 (=> (not res!104087) (not e!139812))))

(assert (=> b!226426 (= res!104087 (= lt!87367 lt!87404))))

(assert (=> b!226426 (= lt!87404 (list!1312 (printWithSeparatorTokenWhenNeededRec!208 thiss!17480 rules!1920 lt!87357 separatorToken!170 0)))))

(assert (=> b!226426 (= lt!87367 (printWithSeparatorTokenWhenNeededList!218 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun tp!93299 () Bool)

(declare-fun b!226427 () Bool)

(declare-fun e!139800 () Bool)

(declare-fun inv!21 (TokenValue!661) Bool)

(assert (=> b!226427 (= e!139800 (and (inv!21 (value!22527 separatorToken!170)) e!139807 tp!93299))))

(declare-fun b!226428 () Bool)

(assert (=> b!226428 (= e!139810 (matchR!201 (regex!639 (rule!1194 (h!8821 tokens!465))) lt!87386))))

(declare-fun b!226429 () Bool)

(declare-fun res!104086 () Bool)

(assert (=> b!226429 (=> (not res!104086) (not e!139781))))

(assert (=> b!226429 (= res!104086 (isSeparator!639 (rule!1194 separatorToken!170)))))

(declare-fun b!226430 () Bool)

(declare-fun res!104099 () Bool)

(assert (=> b!226430 (=> (not res!104099) (not e!139810))))

(declare-fun isEmpty!1941 (List!3432) Bool)

(assert (=> b!226430 (= res!104099 (isEmpty!1941 (_2!2050 lt!87361)))))

(declare-fun b!226431 () Bool)

(declare-fun res!104088 () Bool)

(assert (=> b!226431 (=> res!104088 e!139795)))

(assert (=> b!226431 (= res!104088 (not (rulesProduceIndividualToken!274 thiss!17480 rules!1920 (h!8821 tokens!465))))))

(declare-fun b!226432 () Bool)

(assert (=> b!226432 (= e!139782 (isEmpty!1938 (_2!2049 lt!87401)))))

(declare-fun b!226433 () Bool)

(declare-fun e!139783 () Bool)

(declare-fun e!139808 () Bool)

(declare-fun tp!93292 () Bool)

(assert (=> b!226433 (= e!139783 (and e!139808 tp!93292))))

(declare-fun b!226434 () Bool)

(declare-fun e!139779 () Bool)

(assert (=> b!226434 (= e!139779 false)))

(declare-fun tp!93297 () Bool)

(declare-fun b!226435 () Bool)

(assert (=> b!226435 (= e!139808 (and tp!93297 (inv!4274 (tag!837 (h!8820 rules!1920))) (inv!4278 (transformation!639 (h!8820 rules!1920))) e!139799))))

(declare-fun b!226436 () Bool)

(declare-fun e!139788 () Bool)

(declare-fun lt!87355 () Option!610)

(assert (=> b!226436 (= e!139788 (= (_1!2050 (get!1073 lt!87355)) (head!774 tokens!465)))))

(declare-fun b!226437 () Bool)

(declare-fun res!104080 () Bool)

(assert (=> b!226437 (=> (not res!104080) (not e!139781))))

(assert (=> b!226437 (= res!104080 (rulesProduceIndividualToken!274 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun e!139806 () Bool)

(declare-fun b!226438 () Bool)

(declare-fun tp!93289 () Bool)

(assert (=> b!226438 (= e!139806 (and tp!93289 (inv!4274 (tag!837 (rule!1194 (h!8821 tokens!465)))) (inv!4278 (transformation!639 (rule!1194 (h!8821 tokens!465)))) e!139791))))

(assert (=> b!226439 (= e!139777 (and tp!93288 tp!93287))))

(declare-fun b!226440 () Bool)

(declare-fun Unit!3874 () Unit!3870)

(assert (=> b!226440 (= e!139787 Unit!3874)))

(declare-fun lt!87377 () Unit!3870)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!38 (Regex!863 List!3432 C!2648) Unit!3870)

(assert (=> b!226440 (= lt!87377 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!38 (regex!639 (rule!1194 lt!87368)) lt!87381 lt!87375))))

(declare-fun res!104089 () Bool)

(assert (=> b!226440 (= res!104089 (not (matchR!201 (regex!639 (rule!1194 lt!87368)) lt!87381)))))

(assert (=> b!226440 (=> (not res!104089) (not e!139779))))

(assert (=> b!226440 e!139779))

(declare-fun b!226441 () Bool)

(assert (=> b!226441 (= e!139780 e!139788)))

(declare-fun res!104104 () Bool)

(assert (=> b!226441 (=> (not res!104104) (not e!139788))))

(assert (=> b!226441 (= res!104104 (isDefined!461 lt!87355))))

(assert (=> b!226441 (= lt!87355 (maxPrefix!255 thiss!17480 rules!1920 lt!87367))))

(declare-fun b!226442 () Bool)

(declare-fun res!104110 () Bool)

(assert (=> b!226442 (=> (not res!104110) (not e!139797))))

(declare-fun isEmpty!1942 (List!3433) Bool)

(assert (=> b!226442 (= res!104110 (not (isEmpty!1942 rules!1920)))))

(declare-fun b!226443 () Bool)

(declare-fun res!104100 () Bool)

(assert (=> b!226443 (=> (not res!104100) (not e!139775))))

(assert (=> b!226443 (= res!104100 (= (apply!610 (_1!2049 lt!87374) 0) separatorToken!170))))

(declare-fun b!226444 () Bool)

(declare-fun Unit!3875 () Unit!3870)

(assert (=> b!226444 (= e!139787 Unit!3875)))

(declare-fun res!104112 () Bool)

(assert (=> start!24250 (=> (not res!104112) (not e!139797))))

(assert (=> start!24250 (= res!104112 ((_ is Lexer!523) thiss!17480))))

(assert (=> start!24250 e!139797))

(assert (=> start!24250 true))

(assert (=> start!24250 e!139783))

(assert (=> start!24250 (and (inv!4277 separatorToken!170) e!139800)))

(assert (=> start!24250 e!139794))

(declare-fun b!226445 () Bool)

(declare-fun Unit!3876 () Unit!3870)

(assert (=> b!226445 (= e!139793 Unit!3876)))

(declare-fun b!226446 () Bool)

(assert (=> b!226446 (= e!139784 e!139795)))

(declare-fun res!104109 () Bool)

(assert (=> b!226446 (=> res!104109 e!139795)))

(declare-fun lt!87378 () List!3432)

(declare-fun lt!87397 () List!3432)

(assert (=> b!226446 (= res!104109 (or (not (= lt!87378 lt!87397)) (not (= lt!87397 lt!87386)) (not (= lt!87378 lt!87386))))))

(declare-fun printList!209 (LexerInterface!525 List!3434) List!3432)

(assert (=> b!226446 (= lt!87397 (printList!209 thiss!17480 (Cons!3424 (h!8821 tokens!465) Nil!3424)))))

(declare-fun lt!87373 () BalanceConc!2208)

(assert (=> b!226446 (= lt!87378 (list!1312 lt!87373))))

(declare-fun lt!87372 () BalanceConc!2210)

(assert (=> b!226446 (= lt!87373 (printTailRec!219 thiss!17480 lt!87372 0 (BalanceConc!2209 Empty!1100)))))

(assert (=> b!226446 (= lt!87373 (print!256 thiss!17480 lt!87372))))

(assert (=> b!226446 (= lt!87372 (singletonSeq!191 (h!8821 tokens!465)))))

(declare-fun b!226447 () Bool)

(declare-fun Unit!3877 () Unit!3870)

(assert (=> b!226447 (= e!139790 Unit!3877)))

(declare-fun b!226448 () Bool)

(declare-fun tp!93293 () Bool)

(assert (=> b!226448 (= e!139798 (and (inv!21 (value!22527 (h!8821 tokens!465))) e!139806 tp!93293))))

(assert (=> b!226449 (= e!139795 e!139811)))

(declare-fun res!104105 () Bool)

(assert (=> b!226449 (=> res!104105 e!139811)))

(declare-datatypes ((tuple2!3670 0))(
  ( (tuple2!3671 (_1!2051 Token!1022) (_2!2051 BalanceConc!2208)) )
))
(declare-datatypes ((Option!611 0))(
  ( (None!610) (Some!610 (v!14293 tuple2!3670)) )
))
(declare-fun isDefined!462 (Option!611) Bool)

(declare-fun maxPrefixZipperSequence!218 (LexerInterface!525 List!3433 BalanceConc!2208) Option!611)

(assert (=> b!226449 (= res!104105 (not (isDefined!462 (maxPrefixZipperSequence!218 thiss!17480 rules!1920 (seqFromList!656 (originalCharacters!682 (h!8821 tokens!465)))))))))

(declare-fun lt!87402 () Unit!3870)

(assert (=> b!226449 (= lt!87402 (forallContained!206 tokens!465 lambda!7082 (h!8821 tokens!465)))))

(assert (=> b!226449 (= lt!87386 (originalCharacters!682 (h!8821 tokens!465)))))

(declare-fun res!104108 () Bool)

(assert (=> b!226450 (=> (not res!104108) (not e!139781))))

(declare-fun forall!769 (List!3434 Int) Bool)

(assert (=> b!226450 (= res!104108 (forall!769 tokens!465 lambda!7081))))

(declare-fun b!226451 () Bool)

(declare-fun res!104111 () Bool)

(assert (=> b!226451 (=> (not res!104111) (not e!139781))))

(declare-fun sepAndNonSepRulesDisjointChars!228 (List!3433 List!3433) Bool)

(assert (=> b!226451 (= res!104111 (sepAndNonSepRulesDisjointChars!228 rules!1920 rules!1920))))

(assert (= (and start!24250 res!104112) b!226442))

(assert (= (and b!226442 res!104110) b!226417))

(assert (= (and b!226417 res!104083) b!226421))

(assert (= (and b!226421 res!104103) b!226437))

(assert (= (and b!226437 res!104080) b!226429))

(assert (= (and b!226429 res!104086) b!226450))

(assert (= (and b!226450 res!104108) b!226451))

(assert (= (and b!226451 res!104111) b!226423))

(assert (= (and b!226423 res!104081) b!226426))

(assert (= (and b!226426 res!104087) b!226413))

(assert (= (and b!226413 res!104098) b!226408))

(assert (= (and b!226408 (not res!104084)) b!226410))

(assert (= (and b!226410 res!104113) b!226405))

(assert (= (and b!226410 (not res!104091)) b!226446))

(assert (= (and b!226446 (not res!104109)) b!226431))

(assert (= (and b!226431 (not res!104088)) b!226412))

(assert (= (and b!226412 (not res!104090)) b!226449))

(assert (= (and b!226449 (not res!104105)) b!226420))

(assert (= (and b!226420 res!104097) b!226430))

(assert (= (and b!226430 res!104099) b!226428))

(assert (= (and b!226420 (not res!104092)) b!226416))

(assert (= (and b!226416 (not res!104085)) b!226441))

(assert (= (and b!226441 res!104104) b!226436))

(assert (= (and b!226416 c!43499) b!226414))

(assert (= (and b!226416 (not c!43499)) b!226445))

(assert (= (and b!226416 res!104106) b!226443))

(assert (= (and b!226443 res!104100) b!226407))

(assert (= (and b!226416 res!104101) b!226406))

(assert (= (and b!226406 res!104107) b!226424))

(assert (= (and b!226416 res!104102) b!226402))

(assert (= (and b!226402 res!104095) b!226432))

(assert (= (and b!226416 res!104096) b!226409))

(assert (= (and b!226409 res!104082) b!226411))

(assert (= (and b!226416 c!43498) b!226440))

(assert (= (and b!226416 (not c!43498)) b!226444))

(assert (= (and b!226440 res!104089) b!226434))

(assert (= (and b!226416 c!43500) b!226404))

(assert (= (and b!226416 (not c!43500)) b!226447))

(assert (= (and b!226416 (not res!104094)) b!226415))

(assert (= (and b!226415 (not res!104093)) b!226425))

(assert (= b!226435 b!226422))

(assert (= b!226433 b!226435))

(assert (= (and start!24250 ((_ is Cons!3423) rules!1920)) b!226433))

(assert (= b!226419 b!226439))

(assert (= b!226427 b!226419))

(assert (= start!24250 b!226427))

(assert (= b!226438 b!226418))

(assert (= b!226448 b!226438))

(assert (= b!226403 b!226448))

(assert (= (and start!24250 ((_ is Cons!3424) tokens!465)) b!226403))

(declare-fun m!266125 () Bool)

(assert (=> b!226450 m!266125))

(declare-fun m!266127 () Bool)

(assert (=> b!226419 m!266127))

(declare-fun m!266129 () Bool)

(assert (=> b!226419 m!266129))

(declare-fun m!266131 () Bool)

(assert (=> b!226421 m!266131))

(declare-fun m!266133 () Bool)

(assert (=> b!226421 m!266133))

(declare-fun m!266135 () Bool)

(assert (=> b!226448 m!266135))

(declare-fun m!266137 () Bool)

(assert (=> b!226436 m!266137))

(declare-fun m!266139 () Bool)

(assert (=> b!226436 m!266139))

(declare-fun m!266141 () Bool)

(assert (=> b!226443 m!266141))

(declare-fun m!266143 () Bool)

(assert (=> b!226441 m!266143))

(declare-fun m!266145 () Bool)

(assert (=> b!226441 m!266145))

(declare-fun m!266147 () Bool)

(assert (=> b!226440 m!266147))

(declare-fun m!266149 () Bool)

(assert (=> b!226440 m!266149))

(declare-fun m!266151 () Bool)

(assert (=> b!226427 m!266151))

(declare-fun m!266153 () Bool)

(assert (=> b!226415 m!266153))

(declare-fun m!266155 () Bool)

(assert (=> b!226408 m!266155))

(declare-fun m!266157 () Bool)

(assert (=> b!226408 m!266157))

(declare-fun m!266159 () Bool)

(assert (=> b!226408 m!266159))

(declare-fun m!266161 () Bool)

(assert (=> b!226408 m!266161))

(declare-fun m!266163 () Bool)

(assert (=> b!226408 m!266163))

(assert (=> b!226408 m!266159))

(declare-fun m!266165 () Bool)

(assert (=> b!226408 m!266165))

(declare-fun m!266167 () Bool)

(assert (=> b!226408 m!266167))

(declare-fun m!266169 () Bool)

(assert (=> b!226408 m!266169))

(assert (=> b!226408 m!266155))

(declare-fun m!266171 () Bool)

(assert (=> b!226408 m!266171))

(assert (=> b!226408 m!266167))

(declare-fun m!266173 () Bool)

(assert (=> b!226408 m!266173))

(declare-fun m!266175 () Bool)

(assert (=> b!226408 m!266175))

(declare-fun m!266177 () Bool)

(assert (=> b!226408 m!266177))

(assert (=> b!226408 m!266157))

(declare-fun m!266179 () Bool)

(assert (=> b!226408 m!266179))

(declare-fun m!266181 () Bool)

(assert (=> b!226428 m!266181))

(declare-fun m!266183 () Bool)

(assert (=> b!226431 m!266183))

(declare-fun m!266185 () Bool)

(assert (=> b!226449 m!266185))

(assert (=> b!226449 m!266185))

(declare-fun m!266187 () Bool)

(assert (=> b!226449 m!266187))

(assert (=> b!226449 m!266187))

(declare-fun m!266189 () Bool)

(assert (=> b!226449 m!266189))

(declare-fun m!266191 () Bool)

(assert (=> b!226449 m!266191))

(declare-fun m!266193 () Bool)

(assert (=> b!226417 m!266193))

(declare-fun m!266195 () Bool)

(assert (=> b!226437 m!266195))

(declare-fun m!266197 () Bool)

(assert (=> b!226407 m!266197))

(declare-fun m!266199 () Bool)

(assert (=> b!226442 m!266199))

(declare-fun m!266201 () Bool)

(assert (=> b!226413 m!266201))

(assert (=> b!226413 m!266201))

(declare-fun m!266203 () Bool)

(assert (=> b!226413 m!266203))

(declare-fun m!266205 () Bool)

(assert (=> b!226416 m!266205))

(declare-fun m!266207 () Bool)

(assert (=> b!226416 m!266207))

(declare-fun m!266209 () Bool)

(assert (=> b!226416 m!266209))

(declare-fun m!266211 () Bool)

(assert (=> b!226416 m!266211))

(assert (=> b!226416 m!266145))

(declare-fun m!266213 () Bool)

(assert (=> b!226416 m!266213))

(declare-fun m!266215 () Bool)

(assert (=> b!226416 m!266215))

(declare-fun m!266217 () Bool)

(assert (=> b!226416 m!266217))

(declare-fun m!266219 () Bool)

(assert (=> b!226416 m!266219))

(declare-fun m!266221 () Bool)

(assert (=> b!226416 m!266221))

(declare-fun m!266223 () Bool)

(assert (=> b!226416 m!266223))

(declare-fun m!266225 () Bool)

(assert (=> b!226416 m!266225))

(declare-fun m!266227 () Bool)

(assert (=> b!226416 m!266227))

(declare-fun m!266229 () Bool)

(assert (=> b!226416 m!266229))

(declare-fun m!266231 () Bool)

(assert (=> b!226416 m!266231))

(declare-fun m!266233 () Bool)

(assert (=> b!226416 m!266233))

(declare-fun m!266235 () Bool)

(assert (=> b!226416 m!266235))

(declare-fun m!266237 () Bool)

(assert (=> b!226416 m!266237))

(declare-fun m!266239 () Bool)

(assert (=> b!226416 m!266239))

(declare-fun m!266241 () Bool)

(assert (=> b!226416 m!266241))

(declare-fun m!266243 () Bool)

(assert (=> b!226416 m!266243))

(declare-fun m!266245 () Bool)

(assert (=> b!226416 m!266245))

(declare-fun m!266247 () Bool)

(assert (=> b!226416 m!266247))

(declare-fun m!266249 () Bool)

(assert (=> b!226416 m!266249))

(declare-fun m!266251 () Bool)

(assert (=> b!226416 m!266251))

(declare-fun m!266253 () Bool)

(assert (=> b!226416 m!266253))

(declare-fun m!266255 () Bool)

(assert (=> b!226416 m!266255))

(declare-fun m!266257 () Bool)

(assert (=> b!226416 m!266257))

(assert (=> b!226416 m!266205))

(declare-fun m!266259 () Bool)

(assert (=> b!226416 m!266259))

(declare-fun m!266261 () Bool)

(assert (=> b!226416 m!266261))

(declare-fun m!266263 () Bool)

(assert (=> b!226416 m!266263))

(declare-fun m!266265 () Bool)

(assert (=> b!226416 m!266265))

(assert (=> b!226416 m!266231))

(declare-fun m!266267 () Bool)

(assert (=> b!226416 m!266267))

(declare-fun m!266269 () Bool)

(assert (=> b!226416 m!266269))

(declare-fun m!266271 () Bool)

(assert (=> b!226416 m!266271))

(assert (=> b!226416 m!266145))

(assert (=> b!226416 m!266219))

(declare-fun m!266273 () Bool)

(assert (=> b!226416 m!266273))

(declare-fun m!266275 () Bool)

(assert (=> b!226416 m!266275))

(assert (=> b!226416 m!266271))

(declare-fun m!266277 () Bool)

(assert (=> b!226416 m!266277))

(declare-fun m!266279 () Bool)

(assert (=> b!226416 m!266279))

(declare-fun m!266281 () Bool)

(assert (=> b!226416 m!266281))

(declare-fun m!266283 () Bool)

(assert (=> b!226416 m!266283))

(declare-fun m!266285 () Bool)

(assert (=> b!226416 m!266285))

(declare-fun m!266287 () Bool)

(assert (=> b!226404 m!266287))

(declare-fun m!266289 () Bool)

(assert (=> b!226420 m!266289))

(declare-fun m!266291 () Bool)

(assert (=> b!226420 m!266291))

(declare-fun m!266293 () Bool)

(assert (=> b!226420 m!266293))

(declare-fun m!266295 () Bool)

(assert (=> b!226435 m!266295))

(declare-fun m!266297 () Bool)

(assert (=> b!226435 m!266297))

(declare-fun m!266299 () Bool)

(assert (=> b!226403 m!266299))

(declare-fun m!266301 () Bool)

(assert (=> b!226409 m!266301))

(declare-fun m!266303 () Bool)

(assert (=> b!226409 m!266303))

(declare-fun m!266305 () Bool)

(assert (=> b!226402 m!266305))

(declare-fun m!266307 () Bool)

(assert (=> b!226406 m!266307))

(declare-fun m!266309 () Bool)

(assert (=> b!226406 m!266309))

(declare-fun m!266311 () Bool)

(assert (=> b!226432 m!266311))

(declare-fun m!266313 () Bool)

(assert (=> b!226412 m!266313))

(assert (=> b!226412 m!266313))

(declare-fun m!266315 () Bool)

(assert (=> b!226412 m!266315))

(declare-fun m!266317 () Bool)

(assert (=> b!226412 m!266317))

(declare-fun m!266319 () Bool)

(assert (=> b!226426 m!266319))

(assert (=> b!226426 m!266319))

(declare-fun m!266321 () Bool)

(assert (=> b!226426 m!266321))

(declare-fun m!266323 () Bool)

(assert (=> b!226426 m!266323))

(declare-fun m!266325 () Bool)

(assert (=> b!226451 m!266325))

(declare-fun m!266327 () Bool)

(assert (=> b!226446 m!266327))

(declare-fun m!266329 () Bool)

(assert (=> b!226446 m!266329))

(declare-fun m!266331 () Bool)

(assert (=> b!226446 m!266331))

(declare-fun m!266333 () Bool)

(assert (=> b!226446 m!266333))

(declare-fun m!266335 () Bool)

(assert (=> b!226446 m!266335))

(declare-fun m!266337 () Bool)

(assert (=> start!24250 m!266337))

(declare-fun m!266339 () Bool)

(assert (=> b!226430 m!266339))

(declare-fun m!266341 () Bool)

(assert (=> b!226438 m!266341))

(declare-fun m!266343 () Bool)

(assert (=> b!226438 m!266343))

(declare-fun m!266345 () Bool)

(assert (=> b!226405 m!266345))

(check-sat (not b!226431) (not b!226417) (not b!226406) (not b!226407) (not b!226408) (not b!226448) (not b_next!8457) b_and!16811 (not b!226435) (not b!226421) (not b!226442) (not b!226402) (not b!226419) (not b!226404) b_and!16807 (not b!226433) (not b!226443) (not b!226449) (not b!226413) (not b!226432) (not b!226438) (not b_next!8459) b_and!16801 (not b!226430) (not b_next!8453) (not b!226440) (not b_next!8451) (not b_next!8455) (not b!226412) (not b!226437) (not b!226403) b_and!16805 (not b!226428) b_and!16809 (not b!226415) (not b!226416) (not b!226450) (not b!226460) (not b!226441) (not b!226446) (not b!226409) (not b_next!8449) (not b!226451) (not b!226426) (not b!226405) (not start!24250) (not b!226436) (not b!226427) (not b!226420) b_and!16803)
(check-sat b_and!16807 (not b_next!8453) b_and!16805 b_and!16809 (not b_next!8449) b_and!16803 (not b_next!8457) b_and!16811 (not b_next!8459) b_and!16801 (not b_next!8451) (not b_next!8455))
