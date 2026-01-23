; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!341338 () Bool)

(assert start!341338)

(declare-fun b!3650547 () Bool)

(declare-fun b_free!96009 () Bool)

(declare-fun b_next!96713 () Bool)

(assert (=> b!3650547 (= b_free!96009 (not b_next!96713))))

(declare-fun tp!1112902 () Bool)

(declare-fun b_and!269987 () Bool)

(assert (=> b!3650547 (= tp!1112902 b_and!269987)))

(declare-fun b_free!96011 () Bool)

(declare-fun b_next!96715 () Bool)

(assert (=> b!3650547 (= b_free!96011 (not b_next!96715))))

(declare-fun tp!1112898 () Bool)

(declare-fun b_and!269989 () Bool)

(assert (=> b!3650547 (= tp!1112898 b_and!269989)))

(declare-fun b!3650567 () Bool)

(declare-fun b_free!96013 () Bool)

(declare-fun b_next!96717 () Bool)

(assert (=> b!3650567 (= b_free!96013 (not b_next!96717))))

(declare-fun tp!1112908 () Bool)

(declare-fun b_and!269991 () Bool)

(assert (=> b!3650567 (= tp!1112908 b_and!269991)))

(declare-fun b_free!96015 () Bool)

(declare-fun b_next!96719 () Bool)

(assert (=> b!3650567 (= b_free!96015 (not b_next!96719))))

(declare-fun tp!1112896 () Bool)

(declare-fun b_and!269993 () Bool)

(assert (=> b!3650567 (= tp!1112896 b_and!269993)))

(declare-fun b!3650564 () Bool)

(declare-fun b_free!96017 () Bool)

(declare-fun b_next!96721 () Bool)

(assert (=> b!3650564 (= b_free!96017 (not b_next!96721))))

(declare-fun tp!1112904 () Bool)

(declare-fun b_and!269995 () Bool)

(assert (=> b!3650564 (= tp!1112904 b_and!269995)))

(declare-fun b_free!96019 () Bool)

(declare-fun b_next!96723 () Bool)

(assert (=> b!3650564 (= b_free!96019 (not b_next!96723))))

(declare-fun tp!1112899 () Bool)

(declare-fun b_and!269997 () Bool)

(assert (=> b!3650564 (= tp!1112899 b_and!269997)))

(declare-fun b!3650535 () Bool)

(declare-fun b_free!96021 () Bool)

(declare-fun b_next!96725 () Bool)

(assert (=> b!3650535 (= b_free!96021 (not b_next!96725))))

(declare-fun tp!1112907 () Bool)

(declare-fun b_and!269999 () Bool)

(assert (=> b!3650535 (= tp!1112907 b_and!269999)))

(declare-fun b_free!96023 () Bool)

(declare-fun b_next!96727 () Bool)

(assert (=> b!3650535 (= b_free!96023 (not b_next!96727))))

(declare-fun tp!1112900 () Bool)

(declare-fun b_and!270001 () Bool)

(assert (=> b!3650535 (= tp!1112900 b_and!270001)))

(declare-fun bm!263829 () Bool)

(declare-fun call!263836 () Bool)

(declare-datatypes ((C!21232 0))(
  ( (C!21233 (val!12664 Int)) )
))
(declare-datatypes ((List!38619 0))(
  ( (Nil!38495) (Cons!38495 (h!43915 C!21232) (t!297482 List!38619)) )
))
(declare-fun call!263835 () List!38619)

(declare-fun lt!1266332 () C!21232)

(declare-fun contains!7593 (List!38619 C!21232) Bool)

(assert (=> bm!263829 (= call!263836 (contains!7593 call!263835 lt!1266332))))

(declare-fun b!3650527 () Bool)

(declare-fun e!2260142 () Bool)

(declare-fun e!2260141 () Bool)

(assert (=> b!3650527 (= e!2260142 e!2260141)))

(declare-fun res!1480946 () Bool)

(assert (=> b!3650527 (=> (not res!1480946) (not e!2260141))))

(declare-datatypes ((List!38620 0))(
  ( (Nil!38496) (Cons!38496 (h!43916 (_ BitVec 16)) (t!297483 List!38620)) )
))
(declare-datatypes ((TokenValue!5994 0))(
  ( (FloatLiteralValue!11988 (text!42403 List!38620)) (TokenValueExt!5993 (__x!24205 Int)) (Broken!29970 (value!184708 List!38620)) (Object!6117) (End!5994) (Def!5994) (Underscore!5994) (Match!5994) (Else!5994) (Error!5994) (Case!5994) (If!5994) (Extends!5994) (Abstract!5994) (Class!5994) (Val!5994) (DelimiterValue!11988 (del!6054 List!38620)) (KeywordValue!6000 (value!184709 List!38620)) (CommentValue!11988 (value!184710 List!38620)) (WhitespaceValue!11988 (value!184711 List!38620)) (IndentationValue!5994 (value!184712 List!38620)) (String!43303) (Int32!5994) (Broken!29971 (value!184713 List!38620)) (Boolean!5995) (Unit!55487) (OperatorValue!5997 (op!6054 List!38620)) (IdentifierValue!11988 (value!184714 List!38620)) (IdentifierValue!11989 (value!184715 List!38620)) (WhitespaceValue!11989 (value!184716 List!38620)) (True!11988) (False!11988) (Broken!29972 (value!184717 List!38620)) (Broken!29973 (value!184718 List!38620)) (True!11989) (RightBrace!5994) (RightBracket!5994) (Colon!5994) (Null!5994) (Comma!5994) (LeftBracket!5994) (False!11989) (LeftBrace!5994) (ImaginaryLiteralValue!5994 (text!42404 List!38620)) (StringLiteralValue!17982 (value!184719 List!38620)) (EOFValue!5994 (value!184720 List!38620)) (IdentValue!5994 (value!184721 List!38620)) (DelimiterValue!11989 (value!184722 List!38620)) (DedentValue!5994 (value!184723 List!38620)) (NewLineValue!5994 (value!184724 List!38620)) (IntegerValue!17982 (value!184725 (_ BitVec 32)) (text!42405 List!38620)) (IntegerValue!17983 (value!184726 Int) (text!42406 List!38620)) (Times!5994) (Or!5994) (Equal!5994) (Minus!5994) (Broken!29974 (value!184727 List!38620)) (And!5994) (Div!5994) (LessEqual!5994) (Mod!5994) (Concat!16517) (Not!5994) (Plus!5994) (SpaceValue!5994 (value!184728 List!38620)) (IntegerValue!17984 (value!184729 Int) (text!42407 List!38620)) (StringLiteralValue!17983 (text!42408 List!38620)) (FloatLiteralValue!11989 (text!42409 List!38620)) (BytesLiteralValue!5994 (value!184730 List!38620)) (CommentValue!11989 (value!184731 List!38620)) (StringLiteralValue!17984 (value!184732 List!38620)) (ErrorTokenValue!5994 (msg!6055 List!38620)) )
))
(declare-datatypes ((String!43304 0))(
  ( (String!43305 (value!184733 String)) )
))
(declare-datatypes ((Regex!10523 0))(
  ( (ElementMatch!10523 (c!630974 C!21232)) (Concat!16518 (regOne!21558 Regex!10523) (regTwo!21558 Regex!10523)) (EmptyExpr!10523) (Star!10523 (reg!10852 Regex!10523)) (EmptyLang!10523) (Union!10523 (regOne!21559 Regex!10523) (regTwo!21559 Regex!10523)) )
))
(declare-datatypes ((IArray!23531 0))(
  ( (IArray!23532 (innerList!11823 List!38619)) )
))
(declare-datatypes ((Conc!11763 0))(
  ( (Node!11763 (left!30051 Conc!11763) (right!30381 Conc!11763) (csize!23756 Int) (cheight!11974 Int)) (Leaf!18256 (xs!14965 IArray!23531) (csize!23757 Int)) (Empty!11763) )
))
(declare-datatypes ((BalanceConc!23140 0))(
  ( (BalanceConc!23141 (c!630975 Conc!11763)) )
))
(declare-datatypes ((TokenValueInjection!11416 0))(
  ( (TokenValueInjection!11417 (toValue!8056 Int) (toChars!7915 Int)) )
))
(declare-datatypes ((Rule!11328 0))(
  ( (Rule!11329 (regex!5764 Regex!10523) (tag!6528 String!43304) (isSeparator!5764 Bool) (transformation!5764 TokenValueInjection!11416)) )
))
(declare-fun lt!1266327 () Rule!11328)

(declare-datatypes ((Token!10894 0))(
  ( (Token!10895 (value!184734 TokenValue!5994) (rule!8562 Rule!11328) (size!29395 Int) (originalCharacters!6478 List!38619)) )
))
(declare-datatypes ((tuple2!38364 0))(
  ( (tuple2!38365 (_1!22316 Token!10894) (_2!22316 List!38619)) )
))
(declare-fun lt!1266357 () tuple2!38364)

(declare-fun matchR!5092 (Regex!10523 List!38619) Bool)

(declare-fun list!14266 (BalanceConc!23140) List!38619)

(declare-fun charsOf!3778 (Token!10894) BalanceConc!23140)

(assert (=> b!3650527 (= res!1480946 (matchR!5092 (regex!5764 lt!1266327) (list!14266 (charsOf!3778 (_1!22316 lt!1266357)))))))

(declare-datatypes ((Option!8156 0))(
  ( (None!8155) (Some!8155 (v!38015 Rule!11328)) )
))
(declare-fun lt!1266346 () Option!8156)

(declare-fun get!12648 (Option!8156) Rule!11328)

(assert (=> b!3650527 (= lt!1266327 (get!12648 lt!1266346))))

(declare-fun b!3650528 () Bool)

(declare-fun e!2260139 () Bool)

(declare-fun e!2260130 () Bool)

(declare-fun tp!1112901 () Bool)

(assert (=> b!3650528 (= e!2260139 (and e!2260130 tp!1112901))))

(declare-fun b!3650529 () Bool)

(declare-fun res!1480944 () Bool)

(declare-fun e!2260140 () Bool)

(assert (=> b!3650529 (=> (not res!1480944) (not e!2260140))))

(declare-fun token!511 () Token!10894)

(declare-fun rule!403 () Rule!11328)

(assert (=> b!3650529 (= res!1480944 (= (rule!8562 token!511) rule!403))))

(declare-fun b!3650530 () Bool)

(declare-fun res!1480933 () Bool)

(declare-fun e!2260125 () Bool)

(assert (=> b!3650530 (=> (not res!1480933) (not e!2260125))))

(declare-datatypes ((List!38621 0))(
  ( (Nil!38497) (Cons!38497 (h!43917 Rule!11328) (t!297484 List!38621)) )
))
(declare-fun rules!3307 () List!38621)

(declare-fun contains!7594 (List!38621 Rule!11328) Bool)

(assert (=> b!3650530 (= res!1480933 (contains!7594 rules!3307 rule!403))))

(declare-fun b!3650531 () Bool)

(declare-datatypes ((Unit!55488 0))(
  ( (Unit!55489) )
))
(declare-fun e!2260113 () Unit!55488)

(declare-fun Unit!55490 () Unit!55488)

(assert (=> b!3650531 (= e!2260113 Unit!55490)))

(declare-fun lt!1266361 () Unit!55488)

(declare-fun lt!1266331 () List!38619)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!712 (Regex!10523 List!38619 C!21232) Unit!55488)

(assert (=> b!3650531 (= lt!1266361 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!712 (regex!5764 rule!403) lt!1266331 lt!1266332))))

(assert (=> b!3650531 false))

(declare-fun b!3650532 () Bool)

(declare-fun e!2260133 () Bool)

(assert (=> b!3650532 (= e!2260125 e!2260133)))

(declare-fun res!1480951 () Bool)

(assert (=> b!3650532 (=> (not res!1480951) (not e!2260133))))

(declare-datatypes ((Option!8157 0))(
  ( (None!8156) (Some!8156 (v!38016 tuple2!38364)) )
))
(declare-fun lt!1266330 () Option!8157)

(declare-fun isDefined!6388 (Option!8157) Bool)

(assert (=> b!3650532 (= res!1480951 (isDefined!6388 lt!1266330))))

(declare-datatypes ((LexerInterface!5353 0))(
  ( (LexerInterfaceExt!5350 (__x!24206 Int)) (Lexer!5351) )
))
(declare-fun thiss!23823 () LexerInterface!5353)

(declare-fun maxPrefix!2887 (LexerInterface!5353 List!38621 List!38619) Option!8157)

(assert (=> b!3650532 (= lt!1266330 (maxPrefix!2887 thiss!23823 rules!3307 lt!1266331))))

(declare-fun lt!1266338 () BalanceConc!23140)

(assert (=> b!3650532 (= lt!1266331 (list!14266 lt!1266338))))

(assert (=> b!3650532 (= lt!1266338 (charsOf!3778 token!511))))

(declare-fun bm!263830 () Bool)

(declare-fun usedCharacters!976 (Regex!10523) List!38619)

(assert (=> bm!263830 (= call!263835 (usedCharacters!976 (regex!5764 (rule!8562 (_1!22316 lt!1266357)))))))

(declare-fun b!3650533 () Bool)

(declare-fun e!2260134 () Bool)

(assert (=> b!3650533 (= e!2260140 (not e!2260134))))

(declare-fun res!1480947 () Bool)

(assert (=> b!3650533 (=> res!1480947 e!2260134)))

(assert (=> b!3650533 (= res!1480947 (not (matchR!5092 (regex!5764 rule!403) lt!1266331)))))

(declare-fun ruleValid!2028 (LexerInterface!5353 Rule!11328) Bool)

(assert (=> b!3650533 (ruleValid!2028 thiss!23823 rule!403)))

(declare-fun lt!1266363 () Unit!55488)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1182 (LexerInterface!5353 Rule!11328 List!38621) Unit!55488)

(assert (=> b!3650533 (= lt!1266363 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1182 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3650534 () Bool)

(assert (=> b!3650534 (= e!2260133 e!2260140)))

(declare-fun res!1480936 () Bool)

(assert (=> b!3650534 (=> (not res!1480936) (not e!2260140))))

(declare-fun lt!1266354 () tuple2!38364)

(assert (=> b!3650534 (= res!1480936 (= (_1!22316 lt!1266354) token!511))))

(declare-fun get!12649 (Option!8157) tuple2!38364)

(assert (=> b!3650534 (= lt!1266354 (get!12649 lt!1266330))))

(declare-fun e!2260112 () Bool)

(assert (=> b!3650535 (= e!2260112 (and tp!1112907 tp!1112900))))

(declare-fun tp!1112910 () Bool)

(declare-fun e!2260121 () Bool)

(declare-fun e!2260115 () Bool)

(declare-fun b!3650536 () Bool)

(declare-fun inv!21 (TokenValue!5994) Bool)

(assert (=> b!3650536 (= e!2260115 (and (inv!21 (value!184734 token!511)) e!2260121 tp!1112910))))

(declare-fun b!3650537 () Bool)

(declare-fun e!2260124 () Unit!55488)

(declare-fun e!2260138 () Unit!55488)

(assert (=> b!3650537 (= e!2260124 e!2260138)))

(declare-fun c!630970 () Bool)

(assert (=> b!3650537 (= c!630970 (not (isSeparator!5764 (rule!8562 (_1!22316 lt!1266357)))))))

(declare-fun b!3650538 () Bool)

(declare-fun res!1480940 () Bool)

(declare-fun e!2260123 () Bool)

(assert (=> b!3650538 (=> res!1480940 e!2260123)))

(declare-fun anOtherTypeRule!33 () Rule!11328)

(declare-fun lt!1266337 () C!21232)

(assert (=> b!3650538 (= res!1480940 (not (contains!7593 (usedCharacters!976 (regex!5764 anOtherTypeRule!33)) lt!1266337)))))

(declare-fun b!3650539 () Bool)

(declare-fun tp!1112906 () Bool)

(declare-fun inv!51943 (String!43304) Bool)

(declare-fun inv!51946 (TokenValueInjection!11416) Bool)

(assert (=> b!3650539 (= e!2260130 (and tp!1112906 (inv!51943 (tag!6528 (h!43917 rules!3307))) (inv!51946 (transformation!5764 (h!43917 rules!3307))) e!2260112))))

(declare-fun e!2260120 () Bool)

(declare-fun tp!1112909 () Bool)

(declare-fun b!3650540 () Bool)

(declare-fun e!2260132 () Bool)

(assert (=> b!3650540 (= e!2260132 (and tp!1112909 (inv!51943 (tag!6528 anOtherTypeRule!33)) (inv!51946 (transformation!5764 anOtherTypeRule!33)) e!2260120))))

(declare-fun b!3650541 () Bool)

(declare-fun e!2260118 () Bool)

(assert (=> b!3650541 (= e!2260123 e!2260118)))

(declare-fun res!1480948 () Bool)

(assert (=> b!3650541 (=> res!1480948 e!2260118)))

(declare-fun lt!1266343 () List!38619)

(declare-fun lt!1266344 () List!38619)

(declare-fun isPrefix!3127 (List!38619 List!38619) Bool)

(assert (=> b!3650541 (= res!1480948 (not (isPrefix!3127 lt!1266343 lt!1266344)))))

(declare-fun ++!9580 (List!38619 List!38619) List!38619)

(assert (=> b!3650541 (isPrefix!3127 lt!1266343 (++!9580 lt!1266343 (_2!22316 lt!1266357)))))

(declare-fun lt!1266341 () Unit!55488)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2046 (List!38619 List!38619) Unit!55488)

(assert (=> b!3650541 (= lt!1266341 (lemmaConcatTwoListThenFirstIsPrefix!2046 lt!1266343 (_2!22316 lt!1266357)))))

(declare-fun lt!1266349 () BalanceConc!23140)

(assert (=> b!3650541 (= lt!1266343 (list!14266 lt!1266349))))

(assert (=> b!3650541 (= lt!1266349 (charsOf!3778 (_1!22316 lt!1266357)))))

(assert (=> b!3650541 e!2260142))

(declare-fun res!1480955 () Bool)

(assert (=> b!3650541 (=> (not res!1480955) (not e!2260142))))

(declare-fun isDefined!6389 (Option!8156) Bool)

(assert (=> b!3650541 (= res!1480955 (isDefined!6389 lt!1266346))))

(declare-fun getRuleFromTag!1368 (LexerInterface!5353 List!38621 String!43304) Option!8156)

(assert (=> b!3650541 (= lt!1266346 (getRuleFromTag!1368 thiss!23823 rules!3307 (tag!6528 (rule!8562 (_1!22316 lt!1266357)))))))

(declare-fun lt!1266336 () Unit!55488)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1368 (LexerInterface!5353 List!38621 List!38619 Token!10894) Unit!55488)

(assert (=> b!3650541 (= lt!1266336 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1368 thiss!23823 rules!3307 lt!1266344 (_1!22316 lt!1266357)))))

(declare-fun lt!1266334 () Option!8157)

(assert (=> b!3650541 (= lt!1266357 (get!12649 lt!1266334))))

(declare-fun lt!1266340 () Unit!55488)

(declare-fun suffix!1395 () List!38619)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1031 (LexerInterface!5353 List!38621 List!38619 List!38619) Unit!55488)

(assert (=> b!3650541 (= lt!1266340 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1031 thiss!23823 rules!3307 lt!1266331 suffix!1395))))

(assert (=> b!3650541 (= lt!1266334 (maxPrefix!2887 thiss!23823 rules!3307 lt!1266344))))

(assert (=> b!3650541 (isPrefix!3127 lt!1266331 lt!1266344)))

(declare-fun lt!1266364 () Unit!55488)

(assert (=> b!3650541 (= lt!1266364 (lemmaConcatTwoListThenFirstIsPrefix!2046 lt!1266331 suffix!1395))))

(assert (=> b!3650541 (= lt!1266344 (++!9580 lt!1266331 suffix!1395))))

(declare-fun b!3650542 () Bool)

(declare-fun e!2260111 () Unit!55488)

(assert (=> b!3650542 (= e!2260124 e!2260111)))

(declare-fun c!630971 () Bool)

(assert (=> b!3650542 (= c!630971 (isSeparator!5764 (rule!8562 (_1!22316 lt!1266357))))))

(declare-fun b!3650543 () Bool)

(declare-fun res!1480937 () Bool)

(assert (=> b!3650543 (=> (not res!1480937) (not e!2260125))))

(declare-fun rulesInvariant!4750 (LexerInterface!5353 List!38621) Bool)

(assert (=> b!3650543 (= res!1480937 (rulesInvariant!4750 thiss!23823 rules!3307))))

(declare-fun b!3650544 () Bool)

(declare-fun res!1480934 () Bool)

(assert (=> b!3650544 (=> (not res!1480934) (not e!2260140))))

(declare-fun isEmpty!22812 (List!38619) Bool)

(assert (=> b!3650544 (= res!1480934 (isEmpty!22812 (_2!22316 lt!1266354)))))

(declare-fun b!3650545 () Bool)

(declare-fun e!2260127 () Bool)

(declare-fun e!2260135 () Bool)

(assert (=> b!3650545 (= e!2260127 e!2260135)))

(declare-fun res!1480941 () Bool)

(assert (=> b!3650545 (=> res!1480941 e!2260135)))

(assert (=> b!3650545 (= res!1480941 (isSeparator!5764 rule!403))))

(assert (=> b!3650545 (contains!7593 lt!1266343 lt!1266337)))

(declare-fun lt!1266347 () Unit!55488)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!72 (List!38619 List!38619 List!38619 List!38619) Unit!55488)

(assert (=> b!3650545 (= lt!1266347 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!72 lt!1266331 suffix!1395 lt!1266343 lt!1266344))))

(declare-fun b!3650546 () Bool)

(declare-fun res!1480942 () Bool)

(assert (=> b!3650546 (=> res!1480942 e!2260123)))

(declare-fun sepAndNonSepRulesDisjointChars!1932 (List!38621 List!38621) Bool)

(assert (=> b!3650546 (= res!1480942 (not (sepAndNonSepRulesDisjointChars!1932 rules!3307 rules!3307)))))

(declare-fun e!2260119 () Bool)

(assert (=> b!3650547 (= e!2260119 (and tp!1112902 tp!1112898))))

(declare-fun b!3650548 () Bool)

(declare-fun e!2260136 () Bool)

(declare-fun tp_is_empty!18129 () Bool)

(declare-fun tp!1112903 () Bool)

(assert (=> b!3650548 (= e!2260136 (and tp_is_empty!18129 tp!1112903))))

(declare-fun b!3650549 () Bool)

(assert (=> b!3650549 false))

(declare-fun lt!1266352 () Unit!55488)

(declare-fun call!263834 () Unit!55488)

(assert (=> b!3650549 (= lt!1266352 call!263834)))

(assert (=> b!3650549 (not call!263836)))

(declare-fun lt!1266351 () Unit!55488)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!292 (LexerInterface!5353 List!38621 List!38621 Rule!11328 Rule!11328 C!21232) Unit!55488)

(assert (=> b!3650549 (= lt!1266351 (lemmaSepRuleNotContainsCharContainedInANonSepRule!292 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8562 (_1!22316 lt!1266357)) lt!1266332))))

(declare-fun Unit!55491 () Unit!55488)

(assert (=> b!3650549 (= e!2260111 Unit!55491)))

(declare-fun b!3650550 () Bool)

(declare-fun e!2260128 () Bool)

(declare-fun e!2260126 () Bool)

(assert (=> b!3650550 (= e!2260128 e!2260126)))

(declare-fun res!1480945 () Bool)

(assert (=> b!3650550 (=> res!1480945 e!2260126)))

(declare-fun lt!1266358 () List!38619)

(declare-fun lt!1266329 () Option!8157)

(assert (=> b!3650550 (= res!1480945 (or (not (= lt!1266358 (_2!22316 lt!1266357))) (not (= lt!1266329 (Some!8156 (tuple2!38365 (_1!22316 lt!1266357) lt!1266358))))))))

(assert (=> b!3650550 (= (_2!22316 lt!1266357) lt!1266358)))

(declare-fun lt!1266339 () Unit!55488)

(declare-fun lemmaSamePrefixThenSameSuffix!1454 (List!38619 List!38619 List!38619 List!38619 List!38619) Unit!55488)

(assert (=> b!3650550 (= lt!1266339 (lemmaSamePrefixThenSameSuffix!1454 lt!1266343 (_2!22316 lt!1266357) lt!1266343 lt!1266358 lt!1266344))))

(declare-fun getSuffix!1680 (List!38619 List!38619) List!38619)

(assert (=> b!3650550 (= lt!1266358 (getSuffix!1680 lt!1266344 lt!1266343))))

(declare-fun lt!1266353 () Int)

(declare-fun lt!1266362 () TokenValue!5994)

(assert (=> b!3650550 (= lt!1266329 (Some!8156 (tuple2!38365 (Token!10895 lt!1266362 (rule!8562 (_1!22316 lt!1266357)) lt!1266353 lt!1266343) (_2!22316 lt!1266357))))))

(declare-fun maxPrefixOneRule!2025 (LexerInterface!5353 Rule!11328 List!38619) Option!8157)

(assert (=> b!3650550 (= lt!1266329 (maxPrefixOneRule!2025 thiss!23823 (rule!8562 (_1!22316 lt!1266357)) lt!1266344))))

(declare-fun size!29396 (List!38619) Int)

(assert (=> b!3650550 (= lt!1266353 (size!29396 lt!1266343))))

(declare-fun apply!9266 (TokenValueInjection!11416 BalanceConc!23140) TokenValue!5994)

(declare-fun seqFromList!4313 (List!38619) BalanceConc!23140)

(assert (=> b!3650550 (= lt!1266362 (apply!9266 (transformation!5764 (rule!8562 (_1!22316 lt!1266357))) (seqFromList!4313 lt!1266343)))))

(declare-fun lt!1266342 () Unit!55488)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1081 (LexerInterface!5353 List!38621 List!38619 List!38619 List!38619 Rule!11328) Unit!55488)

(assert (=> b!3650550 (= lt!1266342 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1081 thiss!23823 rules!3307 lt!1266343 lt!1266344 (_2!22316 lt!1266357) (rule!8562 (_1!22316 lt!1266357))))))

(declare-fun b!3650551 () Bool)

(assert (=> b!3650551 (= e!2260126 e!2260127)))

(declare-fun res!1480943 () Bool)

(assert (=> b!3650551 (=> res!1480943 e!2260127)))

(declare-fun lt!1266333 () Int)

(declare-fun size!29397 (BalanceConc!23140) Int)

(assert (=> b!3650551 (= res!1480943 (<= lt!1266333 (size!29397 lt!1266338)))))

(declare-fun lt!1266345 () Unit!55488)

(assert (=> b!3650551 (= lt!1266345 e!2260124)))

(declare-fun c!630973 () Bool)

(assert (=> b!3650551 (= c!630973 (isSeparator!5764 rule!403))))

(declare-fun lt!1266356 () Unit!55488)

(assert (=> b!3650551 (= lt!1266356 e!2260113)))

(declare-fun c!630972 () Bool)

(declare-fun lt!1266355 () List!38619)

(assert (=> b!3650551 (= c!630972 (not (contains!7593 lt!1266355 lt!1266332)))))

(declare-fun head!7778 (List!38619) C!21232)

(assert (=> b!3650551 (= lt!1266332 (head!7778 lt!1266343))))

(declare-fun e!2260116 () Bool)

(declare-fun tp!1112897 () Bool)

(declare-fun b!3650552 () Bool)

(declare-fun e!2260122 () Bool)

(assert (=> b!3650552 (= e!2260122 (and tp!1112897 (inv!51943 (tag!6528 rule!403)) (inv!51946 (transformation!5764 rule!403)) e!2260116))))

(declare-fun b!3650553 () Bool)

(declare-fun Unit!55492 () Unit!55488)

(assert (=> b!3650553 (= e!2260111 Unit!55492)))

(declare-fun b!3650554 () Bool)

(declare-fun Unit!55493 () Unit!55488)

(assert (=> b!3650554 (= e!2260138 Unit!55493)))

(declare-fun b!3650555 () Bool)

(assert (=> b!3650555 (= e!2260141 (= (rule!8562 (_1!22316 lt!1266357)) lt!1266327))))

(declare-fun b!3650556 () Bool)

(declare-fun Unit!55494 () Unit!55488)

(assert (=> b!3650556 (= e!2260113 Unit!55494)))

(declare-fun b!3650557 () Bool)

(declare-fun res!1480935 () Bool)

(assert (=> b!3650557 (=> (not res!1480935) (not e!2260125))))

(assert (=> b!3650557 (= res!1480935 (not (= (isSeparator!5764 anOtherTypeRule!33) (isSeparator!5764 rule!403))))))

(declare-fun b!3650558 () Bool)

(assert (=> b!3650558 (= e!2260134 e!2260123)))

(declare-fun res!1480952 () Bool)

(assert (=> b!3650558 (=> res!1480952 e!2260123)))

(assert (=> b!3650558 (= res!1480952 (contains!7593 lt!1266355 lt!1266337))))

(assert (=> b!3650558 (= lt!1266337 (head!7778 suffix!1395))))

(assert (=> b!3650558 (= lt!1266355 (usedCharacters!976 (regex!5764 rule!403)))))

(declare-fun b!3650559 () Bool)

(assert (=> b!3650559 (= e!2260135 (contains!7594 rules!3307 (rule!8562 (_1!22316 lt!1266357))))))

(declare-fun b!3650560 () Bool)

(declare-fun res!1480949 () Bool)

(assert (=> b!3650560 (=> (not res!1480949) (not e!2260125))))

(assert (=> b!3650560 (= res!1480949 (contains!7594 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3650561 () Bool)

(declare-fun res!1480938 () Bool)

(assert (=> b!3650561 (=> res!1480938 e!2260118)))

(assert (=> b!3650561 (= res!1480938 (not (matchR!5092 (regex!5764 (rule!8562 (_1!22316 lt!1266357))) lt!1266343)))))

(declare-fun b!3650562 () Bool)

(declare-fun res!1480954 () Bool)

(assert (=> b!3650562 (=> res!1480954 e!2260134)))

(assert (=> b!3650562 (= res!1480954 (isEmpty!22812 suffix!1395))))

(declare-fun b!3650563 () Bool)

(assert (=> b!3650563 (= e!2260118 e!2260128)))

(declare-fun res!1480950 () Bool)

(assert (=> b!3650563 (=> res!1480950 e!2260128)))

(declare-fun lt!1266360 () TokenValue!5994)

(assert (=> b!3650563 (= res!1480950 (not (= lt!1266334 (Some!8156 (tuple2!38365 (Token!10895 lt!1266360 (rule!8562 (_1!22316 lt!1266357)) lt!1266333 lt!1266343) (_2!22316 lt!1266357))))))))

(assert (=> b!3650563 (= lt!1266333 (size!29397 lt!1266349))))

(assert (=> b!3650563 (= lt!1266360 (apply!9266 (transformation!5764 (rule!8562 (_1!22316 lt!1266357))) lt!1266349))))

(declare-fun lt!1266335 () Unit!55488)

(declare-fun lemmaCharactersSize!809 (Token!10894) Unit!55488)

(assert (=> b!3650563 (= lt!1266335 (lemmaCharactersSize!809 (_1!22316 lt!1266357)))))

(declare-fun lt!1266348 () Unit!55488)

(declare-fun lemmaEqSameImage!947 (TokenValueInjection!11416 BalanceConc!23140 BalanceConc!23140) Unit!55488)

(assert (=> b!3650563 (= lt!1266348 (lemmaEqSameImage!947 (transformation!5764 (rule!8562 (_1!22316 lt!1266357))) lt!1266349 (seqFromList!4313 (originalCharacters!6478 (_1!22316 lt!1266357)))))))

(declare-fun lt!1266350 () Unit!55488)

(declare-fun lemmaSemiInverse!1513 (TokenValueInjection!11416 BalanceConc!23140) Unit!55488)

(assert (=> b!3650563 (= lt!1266350 (lemmaSemiInverse!1513 (transformation!5764 (rule!8562 (_1!22316 lt!1266357))) lt!1266349))))

(declare-fun bm!263831 () Bool)

(assert (=> bm!263831 (= call!263834 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!712 (regex!5764 (rule!8562 (_1!22316 lt!1266357))) lt!1266343 lt!1266332))))

(declare-fun res!1480953 () Bool)

(assert (=> start!341338 (=> (not res!1480953) (not e!2260125))))

(get-info :version)

(assert (=> start!341338 (= res!1480953 ((_ is Lexer!5351) thiss!23823))))

(assert (=> start!341338 e!2260125))

(assert (=> start!341338 e!2260139))

(assert (=> start!341338 e!2260136))

(assert (=> start!341338 true))

(declare-fun inv!51947 (Token!10894) Bool)

(assert (=> start!341338 (and (inv!51947 token!511) e!2260115)))

(assert (=> start!341338 e!2260122))

(assert (=> start!341338 e!2260132))

(assert (=> b!3650564 (= e!2260116 (and tp!1112904 tp!1112899))))

(declare-fun b!3650565 () Bool)

(declare-fun tp!1112905 () Bool)

(assert (=> b!3650565 (= e!2260121 (and tp!1112905 (inv!51943 (tag!6528 (rule!8562 token!511))) (inv!51946 (transformation!5764 (rule!8562 token!511))) e!2260119))))

(declare-fun b!3650566 () Bool)

(declare-fun res!1480939 () Bool)

(assert (=> b!3650566 (=> (not res!1480939) (not e!2260125))))

(declare-fun isEmpty!22813 (List!38621) Bool)

(assert (=> b!3650566 (= res!1480939 (not (isEmpty!22813 rules!3307)))))

(assert (=> b!3650567 (= e!2260120 (and tp!1112908 tp!1112896))))

(declare-fun b!3650568 () Bool)

(assert (=> b!3650568 false))

(declare-fun lt!1266359 () Unit!55488)

(assert (=> b!3650568 (= lt!1266359 call!263834)))

(assert (=> b!3650568 (not call!263836)))

(declare-fun lt!1266328 () Unit!55488)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!410 (LexerInterface!5353 List!38621 List!38621 Rule!11328 Rule!11328 C!21232) Unit!55488)

(assert (=> b!3650568 (= lt!1266328 (lemmaNonSepRuleNotContainsCharContainedInASepRule!410 thiss!23823 rules!3307 rules!3307 (rule!8562 (_1!22316 lt!1266357)) rule!403 lt!1266332))))

(declare-fun Unit!55495 () Unit!55488)

(assert (=> b!3650568 (= e!2260138 Unit!55495)))

(assert (= (and start!341338 res!1480953) b!3650566))

(assert (= (and b!3650566 res!1480939) b!3650543))

(assert (= (and b!3650543 res!1480937) b!3650530))

(assert (= (and b!3650530 res!1480933) b!3650560))

(assert (= (and b!3650560 res!1480949) b!3650557))

(assert (= (and b!3650557 res!1480935) b!3650532))

(assert (= (and b!3650532 res!1480951) b!3650534))

(assert (= (and b!3650534 res!1480936) b!3650544))

(assert (= (and b!3650544 res!1480934) b!3650529))

(assert (= (and b!3650529 res!1480944) b!3650533))

(assert (= (and b!3650533 (not res!1480947)) b!3650562))

(assert (= (and b!3650562 (not res!1480954)) b!3650558))

(assert (= (and b!3650558 (not res!1480952)) b!3650538))

(assert (= (and b!3650538 (not res!1480940)) b!3650546))

(assert (= (and b!3650546 (not res!1480942)) b!3650541))

(assert (= (and b!3650541 res!1480955) b!3650527))

(assert (= (and b!3650527 res!1480946) b!3650555))

(assert (= (and b!3650541 (not res!1480948)) b!3650561))

(assert (= (and b!3650561 (not res!1480938)) b!3650563))

(assert (= (and b!3650563 (not res!1480950)) b!3650550))

(assert (= (and b!3650550 (not res!1480945)) b!3650551))

(assert (= (and b!3650551 c!630972) b!3650531))

(assert (= (and b!3650551 (not c!630972)) b!3650556))

(assert (= (and b!3650551 c!630973) b!3650537))

(assert (= (and b!3650551 (not c!630973)) b!3650542))

(assert (= (and b!3650537 c!630970) b!3650568))

(assert (= (and b!3650537 (not c!630970)) b!3650554))

(assert (= (and b!3650542 c!630971) b!3650549))

(assert (= (and b!3650542 (not c!630971)) b!3650553))

(assert (= (or b!3650568 b!3650549) bm!263831))

(assert (= (or b!3650568 b!3650549) bm!263830))

(assert (= (or b!3650568 b!3650549) bm!263829))

(assert (= (and b!3650551 (not res!1480943)) b!3650545))

(assert (= (and b!3650545 (not res!1480941)) b!3650559))

(assert (= b!3650539 b!3650535))

(assert (= b!3650528 b!3650539))

(assert (= (and start!341338 ((_ is Cons!38497) rules!3307)) b!3650528))

(assert (= (and start!341338 ((_ is Cons!38495) suffix!1395)) b!3650548))

(assert (= b!3650565 b!3650547))

(assert (= b!3650536 b!3650565))

(assert (= start!341338 b!3650536))

(assert (= b!3650552 b!3650564))

(assert (= start!341338 b!3650552))

(assert (= b!3650540 b!3650567))

(assert (= start!341338 b!3650540))

(declare-fun m!4155045 () Bool)

(assert (=> b!3650558 m!4155045))

(declare-fun m!4155047 () Bool)

(assert (=> b!3650558 m!4155047))

(declare-fun m!4155049 () Bool)

(assert (=> b!3650558 m!4155049))

(declare-fun m!4155051 () Bool)

(assert (=> b!3650543 m!4155051))

(declare-fun m!4155053 () Bool)

(assert (=> b!3650545 m!4155053))

(declare-fun m!4155055 () Bool)

(assert (=> b!3650545 m!4155055))

(declare-fun m!4155057 () Bool)

(assert (=> start!341338 m!4155057))

(declare-fun m!4155059 () Bool)

(assert (=> b!3650565 m!4155059))

(declare-fun m!4155061 () Bool)

(assert (=> b!3650565 m!4155061))

(declare-fun m!4155063 () Bool)

(assert (=> b!3650549 m!4155063))

(declare-fun m!4155065 () Bool)

(assert (=> b!3650552 m!4155065))

(declare-fun m!4155067 () Bool)

(assert (=> b!3650552 m!4155067))

(declare-fun m!4155069 () Bool)

(assert (=> bm!263829 m!4155069))

(declare-fun m!4155071 () Bool)

(assert (=> b!3650538 m!4155071))

(assert (=> b!3650538 m!4155071))

(declare-fun m!4155073 () Bool)

(assert (=> b!3650538 m!4155073))

(declare-fun m!4155075 () Bool)

(assert (=> b!3650559 m!4155075))

(declare-fun m!4155077 () Bool)

(assert (=> b!3650550 m!4155077))

(declare-fun m!4155079 () Bool)

(assert (=> b!3650550 m!4155079))

(declare-fun m!4155081 () Bool)

(assert (=> b!3650550 m!4155081))

(declare-fun m!4155083 () Bool)

(assert (=> b!3650550 m!4155083))

(declare-fun m!4155085 () Bool)

(assert (=> b!3650550 m!4155085))

(assert (=> b!3650550 m!4155079))

(declare-fun m!4155087 () Bool)

(assert (=> b!3650550 m!4155087))

(declare-fun m!4155089 () Bool)

(assert (=> b!3650550 m!4155089))

(declare-fun m!4155091 () Bool)

(assert (=> b!3650561 m!4155091))

(declare-fun m!4155093 () Bool)

(assert (=> b!3650531 m!4155093))

(declare-fun m!4155095 () Bool)

(assert (=> b!3650527 m!4155095))

(assert (=> b!3650527 m!4155095))

(declare-fun m!4155097 () Bool)

(assert (=> b!3650527 m!4155097))

(assert (=> b!3650527 m!4155097))

(declare-fun m!4155099 () Bool)

(assert (=> b!3650527 m!4155099))

(declare-fun m!4155101 () Bool)

(assert (=> b!3650527 m!4155101))

(declare-fun m!4155103 () Bool)

(assert (=> b!3650532 m!4155103))

(declare-fun m!4155105 () Bool)

(assert (=> b!3650532 m!4155105))

(declare-fun m!4155107 () Bool)

(assert (=> b!3650532 m!4155107))

(declare-fun m!4155109 () Bool)

(assert (=> b!3650532 m!4155109))

(declare-fun m!4155111 () Bool)

(assert (=> b!3650568 m!4155111))

(declare-fun m!4155113 () Bool)

(assert (=> b!3650533 m!4155113))

(declare-fun m!4155115 () Bool)

(assert (=> b!3650533 m!4155115))

(declare-fun m!4155117 () Bool)

(assert (=> b!3650533 m!4155117))

(declare-fun m!4155119 () Bool)

(assert (=> b!3650536 m!4155119))

(declare-fun m!4155121 () Bool)

(assert (=> bm!263830 m!4155121))

(declare-fun m!4155123 () Bool)

(assert (=> b!3650551 m!4155123))

(declare-fun m!4155125 () Bool)

(assert (=> b!3650551 m!4155125))

(declare-fun m!4155127 () Bool)

(assert (=> b!3650551 m!4155127))

(declare-fun m!4155129 () Bool)

(assert (=> b!3650539 m!4155129))

(declare-fun m!4155131 () Bool)

(assert (=> b!3650539 m!4155131))

(declare-fun m!4155133 () Bool)

(assert (=> b!3650534 m!4155133))

(declare-fun m!4155135 () Bool)

(assert (=> b!3650560 m!4155135))

(declare-fun m!4155137 () Bool)

(assert (=> b!3650540 m!4155137))

(declare-fun m!4155139 () Bool)

(assert (=> b!3650540 m!4155139))

(declare-fun m!4155141 () Bool)

(assert (=> b!3650546 m!4155141))

(declare-fun m!4155143 () Bool)

(assert (=> b!3650562 m!4155143))

(assert (=> b!3650541 m!4155095))

(declare-fun m!4155145 () Bool)

(assert (=> b!3650541 m!4155145))

(declare-fun m!4155147 () Bool)

(assert (=> b!3650541 m!4155147))

(declare-fun m!4155149 () Bool)

(assert (=> b!3650541 m!4155149))

(declare-fun m!4155151 () Bool)

(assert (=> b!3650541 m!4155151))

(declare-fun m!4155153 () Bool)

(assert (=> b!3650541 m!4155153))

(declare-fun m!4155155 () Bool)

(assert (=> b!3650541 m!4155155))

(declare-fun m!4155157 () Bool)

(assert (=> b!3650541 m!4155157))

(declare-fun m!4155159 () Bool)

(assert (=> b!3650541 m!4155159))

(declare-fun m!4155161 () Bool)

(assert (=> b!3650541 m!4155161))

(declare-fun m!4155163 () Bool)

(assert (=> b!3650541 m!4155163))

(assert (=> b!3650541 m!4155151))

(declare-fun m!4155165 () Bool)

(assert (=> b!3650541 m!4155165))

(declare-fun m!4155167 () Bool)

(assert (=> b!3650541 m!4155167))

(declare-fun m!4155169 () Bool)

(assert (=> b!3650541 m!4155169))

(declare-fun m!4155171 () Bool)

(assert (=> b!3650541 m!4155171))

(declare-fun m!4155173 () Bool)

(assert (=> b!3650530 m!4155173))

(declare-fun m!4155175 () Bool)

(assert (=> b!3650566 m!4155175))

(declare-fun m!4155177 () Bool)

(assert (=> b!3650563 m!4155177))

(declare-fun m!4155179 () Bool)

(assert (=> b!3650563 m!4155179))

(assert (=> b!3650563 m!4155177))

(declare-fun m!4155181 () Bool)

(assert (=> b!3650563 m!4155181))

(declare-fun m!4155183 () Bool)

(assert (=> b!3650563 m!4155183))

(declare-fun m!4155185 () Bool)

(assert (=> b!3650563 m!4155185))

(declare-fun m!4155187 () Bool)

(assert (=> b!3650563 m!4155187))

(declare-fun m!4155189 () Bool)

(assert (=> b!3650544 m!4155189))

(declare-fun m!4155191 () Bool)

(assert (=> bm!263831 m!4155191))

(check-sat b_and!269991 (not b!3650541) (not b!3650530) b_and!269997 (not b!3650528) (not b!3650562) (not b!3650543) (not start!341338) (not b!3650536) b_and!269987 (not b!3650548) (not b!3650534) (not b_next!96725) (not b!3650566) (not b!3650533) (not b!3650545) (not b!3650549) (not b!3650539) tp_is_empty!18129 (not b_next!96721) (not b!3650540) (not b!3650563) (not bm!263831) (not bm!263830) (not b!3650560) (not b!3650558) (not b_next!96717) (not b!3650565) (not b!3650544) b_and!269995 (not b_next!96719) (not b!3650561) (not b!3650552) (not b!3650551) (not bm!263829) b_and!269999 (not b!3650559) (not b!3650538) (not b_next!96727) (not b_next!96723) (not b!3650568) b_and!270001 b_and!269993 (not b_next!96715) (not b!3650531) (not b_next!96713) (not b!3650550) (not b!3650527) b_and!269989 (not b!3650532) (not b!3650546))
(check-sat b_and!269991 b_and!269987 (not b_next!96725) (not b_next!96721) (not b_next!96717) b_and!269999 b_and!269997 (not b_next!96727) (not b_next!96723) b_and!269989 b_and!269995 (not b_next!96719) b_and!270001 b_and!269993 (not b_next!96715) (not b_next!96713))
(get-model)

(declare-fun b!3650579 () Bool)

(declare-fun e!2260151 () Bool)

(declare-fun inv!15 (TokenValue!5994) Bool)

(assert (=> b!3650579 (= e!2260151 (inv!15 (value!184734 token!511)))))

(declare-fun b!3650580 () Bool)

(declare-fun e!2260150 () Bool)

(declare-fun inv!17 (TokenValue!5994) Bool)

(assert (=> b!3650580 (= e!2260150 (inv!17 (value!184734 token!511)))))

(declare-fun d!1072619 () Bool)

(declare-fun c!630981 () Bool)

(assert (=> d!1072619 (= c!630981 ((_ is IntegerValue!17982) (value!184734 token!511)))))

(declare-fun e!2260149 () Bool)

(assert (=> d!1072619 (= (inv!21 (value!184734 token!511)) e!2260149)))

(declare-fun b!3650581 () Bool)

(assert (=> b!3650581 (= e!2260149 e!2260150)))

(declare-fun c!630980 () Bool)

(assert (=> b!3650581 (= c!630980 ((_ is IntegerValue!17983) (value!184734 token!511)))))

(declare-fun b!3650582 () Bool)

(declare-fun inv!16 (TokenValue!5994) Bool)

(assert (=> b!3650582 (= e!2260149 (inv!16 (value!184734 token!511)))))

(declare-fun b!3650583 () Bool)

(declare-fun res!1480969 () Bool)

(assert (=> b!3650583 (=> res!1480969 e!2260151)))

(assert (=> b!3650583 (= res!1480969 (not ((_ is IntegerValue!17984) (value!184734 token!511))))))

(assert (=> b!3650583 (= e!2260150 e!2260151)))

(assert (= (and d!1072619 c!630981) b!3650582))

(assert (= (and d!1072619 (not c!630981)) b!3650581))

(assert (= (and b!3650581 c!630980) b!3650580))

(assert (= (and b!3650581 (not c!630980)) b!3650583))

(assert (= (and b!3650583 (not res!1480969)) b!3650579))

(declare-fun m!4155193 () Bool)

(assert (=> b!3650579 m!4155193))

(declare-fun m!4155195 () Bool)

(assert (=> b!3650580 m!4155195))

(declare-fun m!4155197 () Bool)

(assert (=> b!3650582 m!4155197))

(assert (=> b!3650536 d!1072619))

(declare-fun d!1072621 () Bool)

(assert (=> d!1072621 (= (get!12649 lt!1266330) (v!38016 lt!1266330))))

(assert (=> b!3650534 d!1072621))

(declare-fun d!1072623 () Bool)

(declare-fun lt!1266371 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5554 (List!38621) (InoxSet Rule!11328))

(assert (=> d!1072623 (= lt!1266371 (select (content!5554 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2260164 () Bool)

(assert (=> d!1072623 (= lt!1266371 e!2260164)))

(declare-fun res!1480983 () Bool)

(assert (=> d!1072623 (=> (not res!1480983) (not e!2260164))))

(assert (=> d!1072623 (= res!1480983 ((_ is Cons!38497) rules!3307))))

(assert (=> d!1072623 (= (contains!7594 rules!3307 anOtherTypeRule!33) lt!1266371)))

(declare-fun b!3650596 () Bool)

(declare-fun e!2260165 () Bool)

(assert (=> b!3650596 (= e!2260164 e!2260165)))

(declare-fun res!1480982 () Bool)

(assert (=> b!3650596 (=> res!1480982 e!2260165)))

(assert (=> b!3650596 (= res!1480982 (= (h!43917 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3650597 () Bool)

(assert (=> b!3650597 (= e!2260165 (contains!7594 (t!297484 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1072623 res!1480983) b!3650596))

(assert (= (and b!3650596 (not res!1480982)) b!3650597))

(declare-fun m!4155209 () Bool)

(assert (=> d!1072623 m!4155209))

(declare-fun m!4155211 () Bool)

(assert (=> d!1072623 m!4155211))

(declare-fun m!4155213 () Bool)

(assert (=> b!3650597 m!4155213))

(assert (=> b!3650560 d!1072623))

(declare-fun d!1072633 () Bool)

(assert (=> d!1072633 (= (inv!51943 (tag!6528 (h!43917 rules!3307))) (= (mod (str.len (value!184733 (tag!6528 (h!43917 rules!3307)))) 2) 0))))

(assert (=> b!3650539 d!1072633))

(declare-fun d!1072635 () Bool)

(declare-fun res!1480990 () Bool)

(declare-fun e!2260188 () Bool)

(assert (=> d!1072635 (=> (not res!1480990) (not e!2260188))))

(declare-fun semiInverseModEq!2457 (Int Int) Bool)

(assert (=> d!1072635 (= res!1480990 (semiInverseModEq!2457 (toChars!7915 (transformation!5764 (h!43917 rules!3307))) (toValue!8056 (transformation!5764 (h!43917 rules!3307)))))))

(assert (=> d!1072635 (= (inv!51946 (transformation!5764 (h!43917 rules!3307))) e!2260188)))

(declare-fun b!3650636 () Bool)

(declare-fun equivClasses!2356 (Int Int) Bool)

(assert (=> b!3650636 (= e!2260188 (equivClasses!2356 (toChars!7915 (transformation!5764 (h!43917 rules!3307))) (toValue!8056 (transformation!5764 (h!43917 rules!3307)))))))

(assert (= (and d!1072635 res!1480990) b!3650636))

(declare-fun m!4155227 () Bool)

(assert (=> d!1072635 m!4155227))

(declare-fun m!4155233 () Bool)

(assert (=> b!3650636 m!4155233))

(assert (=> b!3650539 d!1072635))

(declare-fun d!1072643 () Bool)

(declare-fun lt!1266378 () Bool)

(declare-fun content!5555 (List!38619) (InoxSet C!21232))

(assert (=> d!1072643 (= lt!1266378 (select (content!5555 (usedCharacters!976 (regex!5764 anOtherTypeRule!33))) lt!1266337))))

(declare-fun e!2260197 () Bool)

(assert (=> d!1072643 (= lt!1266378 e!2260197)))

(declare-fun res!1480996 () Bool)

(assert (=> d!1072643 (=> (not res!1480996) (not e!2260197))))

(assert (=> d!1072643 (= res!1480996 ((_ is Cons!38495) (usedCharacters!976 (regex!5764 anOtherTypeRule!33))))))

(assert (=> d!1072643 (= (contains!7593 (usedCharacters!976 (regex!5764 anOtherTypeRule!33)) lt!1266337) lt!1266378)))

(declare-fun b!3650646 () Bool)

(declare-fun e!2260196 () Bool)

(assert (=> b!3650646 (= e!2260197 e!2260196)))

(declare-fun res!1480997 () Bool)

(assert (=> b!3650646 (=> res!1480997 e!2260196)))

(assert (=> b!3650646 (= res!1480997 (= (h!43915 (usedCharacters!976 (regex!5764 anOtherTypeRule!33))) lt!1266337))))

(declare-fun b!3650647 () Bool)

(assert (=> b!3650647 (= e!2260196 (contains!7593 (t!297482 (usedCharacters!976 (regex!5764 anOtherTypeRule!33))) lt!1266337))))

(assert (= (and d!1072643 res!1480996) b!3650646))

(assert (= (and b!3650646 (not res!1480997)) b!3650647))

(assert (=> d!1072643 m!4155071))

(declare-fun m!4155239 () Bool)

(assert (=> d!1072643 m!4155239))

(declare-fun m!4155241 () Bool)

(assert (=> d!1072643 m!4155241))

(declare-fun m!4155243 () Bool)

(assert (=> b!3650647 m!4155243))

(assert (=> b!3650538 d!1072643))

(declare-fun b!3650681 () Bool)

(declare-fun e!2260220 () List!38619)

(declare-fun call!263864 () List!38619)

(assert (=> b!3650681 (= e!2260220 call!263864)))

(declare-fun b!3650682 () Bool)

(declare-fun e!2260222 () List!38619)

(assert (=> b!3650682 (= e!2260222 (Cons!38495 (c!630974 (regex!5764 anOtherTypeRule!33)) Nil!38495))))

(declare-fun b!3650683 () Bool)

(declare-fun e!2260221 () List!38619)

(assert (=> b!3650683 (= e!2260221 Nil!38495)))

(declare-fun bm!263856 () Bool)

(declare-fun call!263862 () List!38619)

(assert (=> bm!263856 (= call!263862 call!263864)))

(declare-fun d!1072649 () Bool)

(declare-fun c!631015 () Bool)

(assert (=> d!1072649 (= c!631015 (or ((_ is EmptyExpr!10523) (regex!5764 anOtherTypeRule!33)) ((_ is EmptyLang!10523) (regex!5764 anOtherTypeRule!33))))))

(assert (=> d!1072649 (= (usedCharacters!976 (regex!5764 anOtherTypeRule!33)) e!2260221)))

(declare-fun b!3650684 () Bool)

(assert (=> b!3650684 (= e!2260221 e!2260222)))

(declare-fun c!631016 () Bool)

(assert (=> b!3650684 (= c!631016 ((_ is ElementMatch!10523) (regex!5764 anOtherTypeRule!33)))))

(declare-fun b!3650685 () Bool)

(declare-fun e!2260219 () List!38619)

(declare-fun call!263863 () List!38619)

(assert (=> b!3650685 (= e!2260219 call!263863)))

(declare-fun bm!263857 () Bool)

(declare-fun call!263861 () List!38619)

(declare-fun c!631014 () Bool)

(assert (=> bm!263857 (= call!263861 (usedCharacters!976 (ite c!631014 (regOne!21559 (regex!5764 anOtherTypeRule!33)) (regTwo!21558 (regex!5764 anOtherTypeRule!33)))))))

(declare-fun bm!263858 () Bool)

(assert (=> bm!263858 (= call!263863 (++!9580 (ite c!631014 call!263861 call!263862) (ite c!631014 call!263862 call!263861)))))

(declare-fun b!3650686 () Bool)

(declare-fun c!631017 () Bool)

(assert (=> b!3650686 (= c!631017 ((_ is Star!10523) (regex!5764 anOtherTypeRule!33)))))

(assert (=> b!3650686 (= e!2260222 e!2260220)))

(declare-fun b!3650687 () Bool)

(assert (=> b!3650687 (= e!2260219 call!263863)))

(declare-fun bm!263859 () Bool)

(assert (=> bm!263859 (= call!263864 (usedCharacters!976 (ite c!631017 (reg!10852 (regex!5764 anOtherTypeRule!33)) (ite c!631014 (regTwo!21559 (regex!5764 anOtherTypeRule!33)) (regOne!21558 (regex!5764 anOtherTypeRule!33))))))))

(declare-fun b!3650688 () Bool)

(assert (=> b!3650688 (= e!2260220 e!2260219)))

(assert (=> b!3650688 (= c!631014 ((_ is Union!10523) (regex!5764 anOtherTypeRule!33)))))

(assert (= (and d!1072649 c!631015) b!3650683))

(assert (= (and d!1072649 (not c!631015)) b!3650684))

(assert (= (and b!3650684 c!631016) b!3650682))

(assert (= (and b!3650684 (not c!631016)) b!3650686))

(assert (= (and b!3650686 c!631017) b!3650681))

(assert (= (and b!3650686 (not c!631017)) b!3650688))

(assert (= (and b!3650688 c!631014) b!3650685))

(assert (= (and b!3650688 (not c!631014)) b!3650687))

(assert (= (or b!3650685 b!3650687) bm!263857))

(assert (= (or b!3650685 b!3650687) bm!263856))

(assert (= (or b!3650685 b!3650687) bm!263858))

(assert (= (or b!3650681 bm!263856) bm!263859))

(declare-fun m!4155267 () Bool)

(assert (=> bm!263857 m!4155267))

(declare-fun m!4155269 () Bool)

(assert (=> bm!263858 m!4155269))

(declare-fun m!4155271 () Bool)

(assert (=> bm!263859 m!4155271))

(assert (=> b!3650538 d!1072649))

(declare-fun d!1072667 () Bool)

(declare-fun lt!1266385 () Bool)

(assert (=> d!1072667 (= lt!1266385 (select (content!5554 rules!3307) (rule!8562 (_1!22316 lt!1266357))))))

(declare-fun e!2260223 () Bool)

(assert (=> d!1072667 (= lt!1266385 e!2260223)))

(declare-fun res!1481008 () Bool)

(assert (=> d!1072667 (=> (not res!1481008) (not e!2260223))))

(assert (=> d!1072667 (= res!1481008 ((_ is Cons!38497) rules!3307))))

(assert (=> d!1072667 (= (contains!7594 rules!3307 (rule!8562 (_1!22316 lt!1266357))) lt!1266385)))

(declare-fun b!3650689 () Bool)

(declare-fun e!2260224 () Bool)

(assert (=> b!3650689 (= e!2260223 e!2260224)))

(declare-fun res!1481007 () Bool)

(assert (=> b!3650689 (=> res!1481007 e!2260224)))

(assert (=> b!3650689 (= res!1481007 (= (h!43917 rules!3307) (rule!8562 (_1!22316 lt!1266357))))))

(declare-fun b!3650690 () Bool)

(assert (=> b!3650690 (= e!2260224 (contains!7594 (t!297484 rules!3307) (rule!8562 (_1!22316 lt!1266357))))))

(assert (= (and d!1072667 res!1481008) b!3650689))

(assert (= (and b!3650689 (not res!1481007)) b!3650690))

(assert (=> d!1072667 m!4155209))

(declare-fun m!4155273 () Bool)

(assert (=> d!1072667 m!4155273))

(declare-fun m!4155275 () Bool)

(assert (=> b!3650690 m!4155275))

(assert (=> b!3650559 d!1072667))

(declare-fun d!1072669 () Bool)

(declare-fun lt!1266386 () Bool)

(assert (=> d!1072669 (= lt!1266386 (select (content!5555 lt!1266355) lt!1266337))))

(declare-fun e!2260226 () Bool)

(assert (=> d!1072669 (= lt!1266386 e!2260226)))

(declare-fun res!1481009 () Bool)

(assert (=> d!1072669 (=> (not res!1481009) (not e!2260226))))

(assert (=> d!1072669 (= res!1481009 ((_ is Cons!38495) lt!1266355))))

(assert (=> d!1072669 (= (contains!7593 lt!1266355 lt!1266337) lt!1266386)))

(declare-fun b!3650691 () Bool)

(declare-fun e!2260225 () Bool)

(assert (=> b!3650691 (= e!2260226 e!2260225)))

(declare-fun res!1481010 () Bool)

(assert (=> b!3650691 (=> res!1481010 e!2260225)))

(assert (=> b!3650691 (= res!1481010 (= (h!43915 lt!1266355) lt!1266337))))

(declare-fun b!3650692 () Bool)

(assert (=> b!3650692 (= e!2260225 (contains!7593 (t!297482 lt!1266355) lt!1266337))))

(assert (= (and d!1072669 res!1481009) b!3650691))

(assert (= (and b!3650691 (not res!1481010)) b!3650692))

(declare-fun m!4155277 () Bool)

(assert (=> d!1072669 m!4155277))

(declare-fun m!4155279 () Bool)

(assert (=> d!1072669 m!4155279))

(declare-fun m!4155281 () Bool)

(assert (=> b!3650692 m!4155281))

(assert (=> b!3650558 d!1072669))

(declare-fun d!1072671 () Bool)

(assert (=> d!1072671 (= (head!7778 suffix!1395) (h!43915 suffix!1395))))

(assert (=> b!3650558 d!1072671))

(declare-fun b!3650693 () Bool)

(declare-fun e!2260228 () List!38619)

(declare-fun call!263868 () List!38619)

(assert (=> b!3650693 (= e!2260228 call!263868)))

(declare-fun b!3650694 () Bool)

(declare-fun e!2260230 () List!38619)

(assert (=> b!3650694 (= e!2260230 (Cons!38495 (c!630974 (regex!5764 rule!403)) Nil!38495))))

(declare-fun b!3650695 () Bool)

(declare-fun e!2260229 () List!38619)

(assert (=> b!3650695 (= e!2260229 Nil!38495)))

(declare-fun bm!263860 () Bool)

(declare-fun call!263866 () List!38619)

(assert (=> bm!263860 (= call!263866 call!263868)))

(declare-fun d!1072673 () Bool)

(declare-fun c!631019 () Bool)

(assert (=> d!1072673 (= c!631019 (or ((_ is EmptyExpr!10523) (regex!5764 rule!403)) ((_ is EmptyLang!10523) (regex!5764 rule!403))))))

(assert (=> d!1072673 (= (usedCharacters!976 (regex!5764 rule!403)) e!2260229)))

(declare-fun b!3650696 () Bool)

(assert (=> b!3650696 (= e!2260229 e!2260230)))

(declare-fun c!631020 () Bool)

(assert (=> b!3650696 (= c!631020 ((_ is ElementMatch!10523) (regex!5764 rule!403)))))

(declare-fun b!3650697 () Bool)

(declare-fun e!2260227 () List!38619)

(declare-fun call!263867 () List!38619)

(assert (=> b!3650697 (= e!2260227 call!263867)))

(declare-fun bm!263861 () Bool)

(declare-fun call!263865 () List!38619)

(declare-fun c!631018 () Bool)

(assert (=> bm!263861 (= call!263865 (usedCharacters!976 (ite c!631018 (regOne!21559 (regex!5764 rule!403)) (regTwo!21558 (regex!5764 rule!403)))))))

(declare-fun bm!263862 () Bool)

(assert (=> bm!263862 (= call!263867 (++!9580 (ite c!631018 call!263865 call!263866) (ite c!631018 call!263866 call!263865)))))

(declare-fun b!3650698 () Bool)

(declare-fun c!631021 () Bool)

(assert (=> b!3650698 (= c!631021 ((_ is Star!10523) (regex!5764 rule!403)))))

(assert (=> b!3650698 (= e!2260230 e!2260228)))

(declare-fun b!3650699 () Bool)

(assert (=> b!3650699 (= e!2260227 call!263867)))

(declare-fun bm!263863 () Bool)

(assert (=> bm!263863 (= call!263868 (usedCharacters!976 (ite c!631021 (reg!10852 (regex!5764 rule!403)) (ite c!631018 (regTwo!21559 (regex!5764 rule!403)) (regOne!21558 (regex!5764 rule!403))))))))

(declare-fun b!3650700 () Bool)

(assert (=> b!3650700 (= e!2260228 e!2260227)))

(assert (=> b!3650700 (= c!631018 ((_ is Union!10523) (regex!5764 rule!403)))))

(assert (= (and d!1072673 c!631019) b!3650695))

(assert (= (and d!1072673 (not c!631019)) b!3650696))

(assert (= (and b!3650696 c!631020) b!3650694))

(assert (= (and b!3650696 (not c!631020)) b!3650698))

(assert (= (and b!3650698 c!631021) b!3650693))

(assert (= (and b!3650698 (not c!631021)) b!3650700))

(assert (= (and b!3650700 c!631018) b!3650697))

(assert (= (and b!3650700 (not c!631018)) b!3650699))

(assert (= (or b!3650697 b!3650699) bm!263861))

(assert (= (or b!3650697 b!3650699) bm!263860))

(assert (= (or b!3650697 b!3650699) bm!263862))

(assert (= (or b!3650693 bm!263860) bm!263863))

(declare-fun m!4155283 () Bool)

(assert (=> bm!263861 m!4155283))

(declare-fun m!4155285 () Bool)

(assert (=> bm!263862 m!4155285))

(declare-fun m!4155287 () Bool)

(assert (=> bm!263863 m!4155287))

(assert (=> b!3650558 d!1072673))

(declare-fun b!3650852 () Bool)

(declare-fun e!2260310 () Bool)

(assert (=> b!3650852 (= e!2260310 true)))

(declare-fun d!1072675 () Bool)

(assert (=> d!1072675 e!2260310))

(assert (= d!1072675 b!3650852))

(declare-fun lambda!124478 () Int)

(declare-fun order!21203 () Int)

(declare-fun order!21205 () Int)

(declare-fun dynLambda!16783 (Int Int) Int)

(declare-fun dynLambda!16784 (Int Int) Int)

(assert (=> b!3650852 (< (dynLambda!16783 order!21203 (toValue!8056 (transformation!5764 (rule!8562 (_1!22316 lt!1266357))))) (dynLambda!16784 order!21205 lambda!124478))))

(declare-fun order!21207 () Int)

(declare-fun dynLambda!16785 (Int Int) Int)

(assert (=> b!3650852 (< (dynLambda!16785 order!21207 (toChars!7915 (transformation!5764 (rule!8562 (_1!22316 lt!1266357))))) (dynLambda!16784 order!21205 lambda!124478))))

(declare-fun dynLambda!16786 (Int BalanceConc!23140) TokenValue!5994)

(assert (=> d!1072675 (= (dynLambda!16786 (toValue!8056 (transformation!5764 (rule!8562 (_1!22316 lt!1266357)))) lt!1266349) (dynLambda!16786 (toValue!8056 (transformation!5764 (rule!8562 (_1!22316 lt!1266357)))) (seqFromList!4313 (originalCharacters!6478 (_1!22316 lt!1266357)))))))

(declare-fun lt!1266452 () Unit!55488)

(declare-fun Forall2of!371 (Int BalanceConc!23140 BalanceConc!23140) Unit!55488)

(assert (=> d!1072675 (= lt!1266452 (Forall2of!371 lambda!124478 lt!1266349 (seqFromList!4313 (originalCharacters!6478 (_1!22316 lt!1266357)))))))

(assert (=> d!1072675 (= (list!14266 lt!1266349) (list!14266 (seqFromList!4313 (originalCharacters!6478 (_1!22316 lt!1266357)))))))

(assert (=> d!1072675 (= (lemmaEqSameImage!947 (transformation!5764 (rule!8562 (_1!22316 lt!1266357))) lt!1266349 (seqFromList!4313 (originalCharacters!6478 (_1!22316 lt!1266357)))) lt!1266452)))

(declare-fun b_lambda!108259 () Bool)

(assert (=> (not b_lambda!108259) (not d!1072675)))

(declare-fun t!297518 () Bool)

(declare-fun tb!210653 () Bool)

(assert (=> (and b!3650547 (= (toValue!8056 (transformation!5764 (rule!8562 token!511))) (toValue!8056 (transformation!5764 (rule!8562 (_1!22316 lt!1266357))))) t!297518) tb!210653))

(declare-fun result!256518 () Bool)

(assert (=> tb!210653 (= result!256518 (inv!21 (dynLambda!16786 (toValue!8056 (transformation!5764 (rule!8562 (_1!22316 lt!1266357)))) lt!1266349)))))

(declare-fun m!4155469 () Bool)

(assert (=> tb!210653 m!4155469))

(assert (=> d!1072675 t!297518))

(declare-fun b_and!270035 () Bool)

(assert (= b_and!269987 (and (=> t!297518 result!256518) b_and!270035)))

(declare-fun t!297520 () Bool)

(declare-fun tb!210655 () Bool)

(assert (=> (and b!3650567 (= (toValue!8056 (transformation!5764 anOtherTypeRule!33)) (toValue!8056 (transformation!5764 (rule!8562 (_1!22316 lt!1266357))))) t!297520) tb!210655))

(declare-fun result!256522 () Bool)

(assert (= result!256522 result!256518))

(assert (=> d!1072675 t!297520))

(declare-fun b_and!270037 () Bool)

(assert (= b_and!269991 (and (=> t!297520 result!256522) b_and!270037)))

(declare-fun tb!210657 () Bool)

(declare-fun t!297522 () Bool)

(assert (=> (and b!3650564 (= (toValue!8056 (transformation!5764 rule!403)) (toValue!8056 (transformation!5764 (rule!8562 (_1!22316 lt!1266357))))) t!297522) tb!210657))

(declare-fun result!256524 () Bool)

(assert (= result!256524 result!256518))

(assert (=> d!1072675 t!297522))

(declare-fun b_and!270039 () Bool)

(assert (= b_and!269995 (and (=> t!297522 result!256524) b_and!270039)))

(declare-fun tb!210659 () Bool)

(declare-fun t!297524 () Bool)

(assert (=> (and b!3650535 (= (toValue!8056 (transformation!5764 (h!43917 rules!3307))) (toValue!8056 (transformation!5764 (rule!8562 (_1!22316 lt!1266357))))) t!297524) tb!210659))

(declare-fun result!256526 () Bool)

(assert (= result!256526 result!256518))

(assert (=> d!1072675 t!297524))

(declare-fun b_and!270041 () Bool)

(assert (= b_and!269999 (and (=> t!297524 result!256526) b_and!270041)))

(declare-fun b_lambda!108261 () Bool)

(assert (=> (not b_lambda!108261) (not d!1072675)))

(declare-fun t!297526 () Bool)

(declare-fun tb!210661 () Bool)

(assert (=> (and b!3650547 (= (toValue!8056 (transformation!5764 (rule!8562 token!511))) (toValue!8056 (transformation!5764 (rule!8562 (_1!22316 lt!1266357))))) t!297526) tb!210661))

(declare-fun result!256528 () Bool)

(assert (=> tb!210661 (= result!256528 (inv!21 (dynLambda!16786 (toValue!8056 (transformation!5764 (rule!8562 (_1!22316 lt!1266357)))) (seqFromList!4313 (originalCharacters!6478 (_1!22316 lt!1266357))))))))

(declare-fun m!4155471 () Bool)

(assert (=> tb!210661 m!4155471))

(assert (=> d!1072675 t!297526))

(declare-fun b_and!270043 () Bool)

(assert (= b_and!270035 (and (=> t!297526 result!256528) b_and!270043)))

(declare-fun tb!210663 () Bool)

(declare-fun t!297528 () Bool)

(assert (=> (and b!3650567 (= (toValue!8056 (transformation!5764 anOtherTypeRule!33)) (toValue!8056 (transformation!5764 (rule!8562 (_1!22316 lt!1266357))))) t!297528) tb!210663))

(declare-fun result!256530 () Bool)

(assert (= result!256530 result!256528))

(assert (=> d!1072675 t!297528))

(declare-fun b_and!270045 () Bool)

(assert (= b_and!270037 (and (=> t!297528 result!256530) b_and!270045)))

(declare-fun tb!210665 () Bool)

(declare-fun t!297530 () Bool)

(assert (=> (and b!3650564 (= (toValue!8056 (transformation!5764 rule!403)) (toValue!8056 (transformation!5764 (rule!8562 (_1!22316 lt!1266357))))) t!297530) tb!210665))

(declare-fun result!256532 () Bool)

(assert (= result!256532 result!256528))

(assert (=> d!1072675 t!297530))

(declare-fun b_and!270047 () Bool)

(assert (= b_and!270039 (and (=> t!297530 result!256532) b_and!270047)))

(declare-fun tb!210667 () Bool)

(declare-fun t!297532 () Bool)

(assert (=> (and b!3650535 (= (toValue!8056 (transformation!5764 (h!43917 rules!3307))) (toValue!8056 (transformation!5764 (rule!8562 (_1!22316 lt!1266357))))) t!297532) tb!210667))

(declare-fun result!256534 () Bool)

(assert (= result!256534 result!256528))

(assert (=> d!1072675 t!297532))

(declare-fun b_and!270049 () Bool)

(assert (= b_and!270041 (and (=> t!297532 result!256534) b_and!270049)))

(assert (=> d!1072675 m!4155177))

(declare-fun m!4155473 () Bool)

(assert (=> d!1072675 m!4155473))

(assert (=> d!1072675 m!4155177))

(declare-fun m!4155475 () Bool)

(assert (=> d!1072675 m!4155475))

(assert (=> d!1072675 m!4155177))

(declare-fun m!4155477 () Bool)

(assert (=> d!1072675 m!4155477))

(assert (=> d!1072675 m!4155149))

(declare-fun m!4155479 () Bool)

(assert (=> d!1072675 m!4155479))

(assert (=> b!3650563 d!1072675))

(declare-fun d!1072729 () Bool)

(declare-fun fromListB!1992 (List!38619) BalanceConc!23140)

(assert (=> d!1072729 (= (seqFromList!4313 (originalCharacters!6478 (_1!22316 lt!1266357))) (fromListB!1992 (originalCharacters!6478 (_1!22316 lt!1266357))))))

(declare-fun bs!572246 () Bool)

(assert (= bs!572246 d!1072729))

(declare-fun m!4155481 () Bool)

(assert (=> bs!572246 m!4155481))

(assert (=> b!3650563 d!1072729))

(declare-fun b!3650859 () Bool)

(declare-fun e!2260317 () Bool)

(assert (=> b!3650859 (= e!2260317 true)))

(declare-fun d!1072731 () Bool)

(assert (=> d!1072731 e!2260317))

(assert (= d!1072731 b!3650859))

(declare-fun order!21209 () Int)

(declare-fun lambda!124481 () Int)

(declare-fun dynLambda!16787 (Int Int) Int)

(assert (=> b!3650859 (< (dynLambda!16783 order!21203 (toValue!8056 (transformation!5764 (rule!8562 (_1!22316 lt!1266357))))) (dynLambda!16787 order!21209 lambda!124481))))

(assert (=> b!3650859 (< (dynLambda!16785 order!21207 (toChars!7915 (transformation!5764 (rule!8562 (_1!22316 lt!1266357))))) (dynLambda!16787 order!21209 lambda!124481))))

(declare-fun dynLambda!16788 (Int TokenValue!5994) BalanceConc!23140)

(assert (=> d!1072731 (= (list!14266 (dynLambda!16788 (toChars!7915 (transformation!5764 (rule!8562 (_1!22316 lt!1266357)))) (dynLambda!16786 (toValue!8056 (transformation!5764 (rule!8562 (_1!22316 lt!1266357)))) lt!1266349))) (list!14266 lt!1266349))))

(declare-fun lt!1266455 () Unit!55488)

(declare-fun ForallOf!713 (Int BalanceConc!23140) Unit!55488)

(assert (=> d!1072731 (= lt!1266455 (ForallOf!713 lambda!124481 lt!1266349))))

(assert (=> d!1072731 (= (lemmaSemiInverse!1513 (transformation!5764 (rule!8562 (_1!22316 lt!1266357))) lt!1266349) lt!1266455)))

(declare-fun b_lambda!108263 () Bool)

(assert (=> (not b_lambda!108263) (not d!1072731)))

(declare-fun t!297534 () Bool)

(declare-fun tb!210669 () Bool)

(assert (=> (and b!3650547 (= (toChars!7915 (transformation!5764 (rule!8562 token!511))) (toChars!7915 (transformation!5764 (rule!8562 (_1!22316 lt!1266357))))) t!297534) tb!210669))

(declare-fun e!2260320 () Bool)

(declare-fun b!3650864 () Bool)

(declare-fun tp!1112917 () Bool)

(declare-fun inv!51950 (Conc!11763) Bool)

(assert (=> b!3650864 (= e!2260320 (and (inv!51950 (c!630975 (dynLambda!16788 (toChars!7915 (transformation!5764 (rule!8562 (_1!22316 lt!1266357)))) (dynLambda!16786 (toValue!8056 (transformation!5764 (rule!8562 (_1!22316 lt!1266357)))) lt!1266349)))) tp!1112917))))

(declare-fun result!256536 () Bool)

(declare-fun inv!51951 (BalanceConc!23140) Bool)

(assert (=> tb!210669 (= result!256536 (and (inv!51951 (dynLambda!16788 (toChars!7915 (transformation!5764 (rule!8562 (_1!22316 lt!1266357)))) (dynLambda!16786 (toValue!8056 (transformation!5764 (rule!8562 (_1!22316 lt!1266357)))) lt!1266349))) e!2260320))))

(assert (= tb!210669 b!3650864))

(declare-fun m!4155483 () Bool)

(assert (=> b!3650864 m!4155483))

(declare-fun m!4155485 () Bool)

(assert (=> tb!210669 m!4155485))

(assert (=> d!1072731 t!297534))

(declare-fun b_and!270051 () Bool)

(assert (= b_and!269989 (and (=> t!297534 result!256536) b_and!270051)))

(declare-fun t!297536 () Bool)

(declare-fun tb!210671 () Bool)

(assert (=> (and b!3650567 (= (toChars!7915 (transformation!5764 anOtherTypeRule!33)) (toChars!7915 (transformation!5764 (rule!8562 (_1!22316 lt!1266357))))) t!297536) tb!210671))

(declare-fun result!256540 () Bool)

(assert (= result!256540 result!256536))

(assert (=> d!1072731 t!297536))

(declare-fun b_and!270053 () Bool)

(assert (= b_and!269993 (and (=> t!297536 result!256540) b_and!270053)))

(declare-fun tb!210673 () Bool)

(declare-fun t!297538 () Bool)

(assert (=> (and b!3650564 (= (toChars!7915 (transformation!5764 rule!403)) (toChars!7915 (transformation!5764 (rule!8562 (_1!22316 lt!1266357))))) t!297538) tb!210673))

(declare-fun result!256542 () Bool)

(assert (= result!256542 result!256536))

(assert (=> d!1072731 t!297538))

(declare-fun b_and!270055 () Bool)

(assert (= b_and!269997 (and (=> t!297538 result!256542) b_and!270055)))

(declare-fun t!297540 () Bool)

(declare-fun tb!210675 () Bool)

(assert (=> (and b!3650535 (= (toChars!7915 (transformation!5764 (h!43917 rules!3307))) (toChars!7915 (transformation!5764 (rule!8562 (_1!22316 lt!1266357))))) t!297540) tb!210675))

(declare-fun result!256544 () Bool)

(assert (= result!256544 result!256536))

(assert (=> d!1072731 t!297540))

(declare-fun b_and!270057 () Bool)

(assert (= b_and!270001 (and (=> t!297540 result!256544) b_and!270057)))

(declare-fun b_lambda!108265 () Bool)

(assert (=> (not b_lambda!108265) (not d!1072731)))

(assert (=> d!1072731 t!297518))

(declare-fun b_and!270059 () Bool)

(assert (= b_and!270043 (and (=> t!297518 result!256518) b_and!270059)))

(assert (=> d!1072731 t!297520))

(declare-fun b_and!270061 () Bool)

(assert (= b_and!270045 (and (=> t!297520 result!256522) b_and!270061)))

(assert (=> d!1072731 t!297522))

(declare-fun b_and!270063 () Bool)

(assert (= b_and!270047 (and (=> t!297522 result!256524) b_and!270063)))

(assert (=> d!1072731 t!297524))

(declare-fun b_and!270065 () Bool)

(assert (= b_and!270049 (and (=> t!297524 result!256526) b_and!270065)))

(assert (=> d!1072731 m!4155479))

(declare-fun m!4155487 () Bool)

(assert (=> d!1072731 m!4155487))

(declare-fun m!4155489 () Bool)

(assert (=> d!1072731 m!4155489))

(assert (=> d!1072731 m!4155487))

(declare-fun m!4155491 () Bool)

(assert (=> d!1072731 m!4155491))

(assert (=> d!1072731 m!4155149))

(assert (=> d!1072731 m!4155479))

(assert (=> b!3650563 d!1072731))

(declare-fun d!1072733 () Bool)

(declare-fun lt!1266458 () Int)

(assert (=> d!1072733 (= lt!1266458 (size!29396 (list!14266 lt!1266349)))))

(declare-fun size!29398 (Conc!11763) Int)

(assert (=> d!1072733 (= lt!1266458 (size!29398 (c!630975 lt!1266349)))))

(assert (=> d!1072733 (= (size!29397 lt!1266349) lt!1266458)))

(declare-fun bs!572247 () Bool)

(assert (= bs!572247 d!1072733))

(assert (=> bs!572247 m!4155149))

(assert (=> bs!572247 m!4155149))

(declare-fun m!4155493 () Bool)

(assert (=> bs!572247 m!4155493))

(declare-fun m!4155495 () Bool)

(assert (=> bs!572247 m!4155495))

(assert (=> b!3650563 d!1072733))

(declare-fun d!1072735 () Bool)

(assert (=> d!1072735 (= (size!29395 (_1!22316 lt!1266357)) (size!29396 (originalCharacters!6478 (_1!22316 lt!1266357))))))

(declare-fun Unit!55496 () Unit!55488)

(assert (=> d!1072735 (= (lemmaCharactersSize!809 (_1!22316 lt!1266357)) Unit!55496)))

(declare-fun bs!572248 () Bool)

(assert (= bs!572248 d!1072735))

(declare-fun m!4155497 () Bool)

(assert (=> bs!572248 m!4155497))

(assert (=> b!3650563 d!1072735))

(declare-fun d!1072737 () Bool)

(assert (=> d!1072737 (= (apply!9266 (transformation!5764 (rule!8562 (_1!22316 lt!1266357))) lt!1266349) (dynLambda!16786 (toValue!8056 (transformation!5764 (rule!8562 (_1!22316 lt!1266357)))) lt!1266349))))

(declare-fun b_lambda!108267 () Bool)

(assert (=> (not b_lambda!108267) (not d!1072737)))

(assert (=> d!1072737 t!297518))

(declare-fun b_and!270067 () Bool)

(assert (= b_and!270059 (and (=> t!297518 result!256518) b_and!270067)))

(assert (=> d!1072737 t!297520))

(declare-fun b_and!270069 () Bool)

(assert (= b_and!270061 (and (=> t!297520 result!256522) b_and!270069)))

(assert (=> d!1072737 t!297522))

(declare-fun b_and!270071 () Bool)

(assert (= b_and!270063 (and (=> t!297522 result!256524) b_and!270071)))

(assert (=> d!1072737 t!297524))

(declare-fun b_and!270073 () Bool)

(assert (= b_and!270065 (and (=> t!297524 result!256526) b_and!270073)))

(assert (=> d!1072737 m!4155479))

(assert (=> b!3650563 d!1072737))

(declare-fun d!1072739 () Bool)

(assert (=> d!1072739 (= (isEmpty!22812 suffix!1395) ((_ is Nil!38495) suffix!1395))))

(assert (=> b!3650562 d!1072739))

(declare-fun d!1072741 () Bool)

(declare-fun list!14268 (Conc!11763) List!38619)

(assert (=> d!1072741 (= (list!14266 lt!1266349) (list!14268 (c!630975 lt!1266349)))))

(declare-fun bs!572249 () Bool)

(assert (= bs!572249 d!1072741))

(declare-fun m!4155499 () Bool)

(assert (=> bs!572249 m!4155499))

(assert (=> b!3650541 d!1072741))

(declare-fun b!3650883 () Bool)

(declare-fun res!1481119 () Bool)

(declare-fun e!2260327 () Bool)

(assert (=> b!3650883 (=> (not res!1481119) (not e!2260327))))

(declare-fun lt!1266473 () Option!8157)

(assert (=> b!3650883 (= res!1481119 (< (size!29396 (_2!22316 (get!12649 lt!1266473))) (size!29396 lt!1266344)))))

(declare-fun b!3650884 () Bool)

(declare-fun e!2260328 () Option!8157)

(declare-fun call!263878 () Option!8157)

(assert (=> b!3650884 (= e!2260328 call!263878)))

(declare-fun b!3650885 () Bool)

(declare-fun res!1481122 () Bool)

(assert (=> b!3650885 (=> (not res!1481122) (not e!2260327))))

(assert (=> b!3650885 (= res!1481122 (= (list!14266 (charsOf!3778 (_1!22316 (get!12649 lt!1266473)))) (originalCharacters!6478 (_1!22316 (get!12649 lt!1266473)))))))

(declare-fun b!3650886 () Bool)

(assert (=> b!3650886 (= e!2260327 (contains!7594 rules!3307 (rule!8562 (_1!22316 (get!12649 lt!1266473)))))))

(declare-fun b!3650887 () Bool)

(declare-fun e!2260329 () Bool)

(assert (=> b!3650887 (= e!2260329 e!2260327)))

(declare-fun res!1481121 () Bool)

(assert (=> b!3650887 (=> (not res!1481121) (not e!2260327))))

(assert (=> b!3650887 (= res!1481121 (isDefined!6388 lt!1266473))))

(declare-fun b!3650888 () Bool)

(declare-fun res!1481120 () Bool)

(assert (=> b!3650888 (=> (not res!1481120) (not e!2260327))))

(assert (=> b!3650888 (= res!1481120 (= (++!9580 (list!14266 (charsOf!3778 (_1!22316 (get!12649 lt!1266473)))) (_2!22316 (get!12649 lt!1266473))) lt!1266344))))

(declare-fun b!3650889 () Bool)

(declare-fun res!1481117 () Bool)

(assert (=> b!3650889 (=> (not res!1481117) (not e!2260327))))

(assert (=> b!3650889 (= res!1481117 (= (value!184734 (_1!22316 (get!12649 lt!1266473))) (apply!9266 (transformation!5764 (rule!8562 (_1!22316 (get!12649 lt!1266473)))) (seqFromList!4313 (originalCharacters!6478 (_1!22316 (get!12649 lt!1266473)))))))))

(declare-fun bm!263873 () Bool)

(assert (=> bm!263873 (= call!263878 (maxPrefixOneRule!2025 thiss!23823 (h!43917 rules!3307) lt!1266344))))

(declare-fun d!1072743 () Bool)

(assert (=> d!1072743 e!2260329))

(declare-fun res!1481118 () Bool)

(assert (=> d!1072743 (=> res!1481118 e!2260329)))

(declare-fun isEmpty!22815 (Option!8157) Bool)

(assert (=> d!1072743 (= res!1481118 (isEmpty!22815 lt!1266473))))

(assert (=> d!1072743 (= lt!1266473 e!2260328)))

(declare-fun c!631050 () Bool)

(assert (=> d!1072743 (= c!631050 (and ((_ is Cons!38497) rules!3307) ((_ is Nil!38497) (t!297484 rules!3307))))))

(declare-fun lt!1266471 () Unit!55488)

(declare-fun lt!1266470 () Unit!55488)

(assert (=> d!1072743 (= lt!1266471 lt!1266470)))

(assert (=> d!1072743 (isPrefix!3127 lt!1266344 lt!1266344)))

(declare-fun lemmaIsPrefixRefl!1978 (List!38619 List!38619) Unit!55488)

(assert (=> d!1072743 (= lt!1266470 (lemmaIsPrefixRefl!1978 lt!1266344 lt!1266344))))

(declare-fun rulesValidInductive!2043 (LexerInterface!5353 List!38621) Bool)

(assert (=> d!1072743 (rulesValidInductive!2043 thiss!23823 rules!3307)))

(assert (=> d!1072743 (= (maxPrefix!2887 thiss!23823 rules!3307 lt!1266344) lt!1266473)))

(declare-fun b!3650890 () Bool)

(declare-fun res!1481116 () Bool)

(assert (=> b!3650890 (=> (not res!1481116) (not e!2260327))))

(assert (=> b!3650890 (= res!1481116 (matchR!5092 (regex!5764 (rule!8562 (_1!22316 (get!12649 lt!1266473)))) (list!14266 (charsOf!3778 (_1!22316 (get!12649 lt!1266473))))))))

(declare-fun b!3650891 () Bool)

(declare-fun lt!1266472 () Option!8157)

(declare-fun lt!1266469 () Option!8157)

(assert (=> b!3650891 (= e!2260328 (ite (and ((_ is None!8156) lt!1266472) ((_ is None!8156) lt!1266469)) None!8156 (ite ((_ is None!8156) lt!1266469) lt!1266472 (ite ((_ is None!8156) lt!1266472) lt!1266469 (ite (>= (size!29395 (_1!22316 (v!38016 lt!1266472))) (size!29395 (_1!22316 (v!38016 lt!1266469)))) lt!1266472 lt!1266469)))))))

(assert (=> b!3650891 (= lt!1266472 call!263878)))

(assert (=> b!3650891 (= lt!1266469 (maxPrefix!2887 thiss!23823 (t!297484 rules!3307) lt!1266344))))

(assert (= (and d!1072743 c!631050) b!3650884))

(assert (= (and d!1072743 (not c!631050)) b!3650891))

(assert (= (or b!3650884 b!3650891) bm!263873))

(assert (= (and d!1072743 (not res!1481118)) b!3650887))

(assert (= (and b!3650887 res!1481121) b!3650885))

(assert (= (and b!3650885 res!1481122) b!3650883))

(assert (= (and b!3650883 res!1481119) b!3650888))

(assert (= (and b!3650888 res!1481120) b!3650889))

(assert (= (and b!3650889 res!1481117) b!3650890))

(assert (= (and b!3650890 res!1481116) b!3650886))

(declare-fun m!4155501 () Bool)

(assert (=> b!3650885 m!4155501))

(declare-fun m!4155503 () Bool)

(assert (=> b!3650885 m!4155503))

(assert (=> b!3650885 m!4155503))

(declare-fun m!4155505 () Bool)

(assert (=> b!3650885 m!4155505))

(assert (=> b!3650886 m!4155501))

(declare-fun m!4155507 () Bool)

(assert (=> b!3650886 m!4155507))

(declare-fun m!4155509 () Bool)

(assert (=> b!3650891 m!4155509))

(assert (=> b!3650888 m!4155501))

(assert (=> b!3650888 m!4155503))

(assert (=> b!3650888 m!4155503))

(assert (=> b!3650888 m!4155505))

(assert (=> b!3650888 m!4155505))

(declare-fun m!4155511 () Bool)

(assert (=> b!3650888 m!4155511))

(declare-fun m!4155513 () Bool)

(assert (=> b!3650887 m!4155513))

(assert (=> b!3650883 m!4155501))

(declare-fun m!4155515 () Bool)

(assert (=> b!3650883 m!4155515))

(declare-fun m!4155517 () Bool)

(assert (=> b!3650883 m!4155517))

(declare-fun m!4155519 () Bool)

(assert (=> bm!263873 m!4155519))

(assert (=> b!3650890 m!4155501))

(assert (=> b!3650890 m!4155503))

(assert (=> b!3650890 m!4155503))

(assert (=> b!3650890 m!4155505))

(assert (=> b!3650890 m!4155505))

(declare-fun m!4155521 () Bool)

(assert (=> b!3650890 m!4155521))

(declare-fun m!4155523 () Bool)

(assert (=> d!1072743 m!4155523))

(declare-fun m!4155525 () Bool)

(assert (=> d!1072743 m!4155525))

(declare-fun m!4155527 () Bool)

(assert (=> d!1072743 m!4155527))

(declare-fun m!4155529 () Bool)

(assert (=> d!1072743 m!4155529))

(assert (=> b!3650889 m!4155501))

(declare-fun m!4155531 () Bool)

(assert (=> b!3650889 m!4155531))

(assert (=> b!3650889 m!4155531))

(declare-fun m!4155533 () Bool)

(assert (=> b!3650889 m!4155533))

(assert (=> b!3650541 d!1072743))

(declare-fun b!3650900 () Bool)

(declare-fun e!2260337 () Bool)

(declare-fun e!2260336 () Bool)

(assert (=> b!3650900 (= e!2260337 e!2260336)))

(declare-fun res!1481133 () Bool)

(assert (=> b!3650900 (=> (not res!1481133) (not e!2260336))))

(assert (=> b!3650900 (= res!1481133 (not ((_ is Nil!38495) lt!1266344)))))

(declare-fun b!3650902 () Bool)

(declare-fun tail!5655 (List!38619) List!38619)

(assert (=> b!3650902 (= e!2260336 (isPrefix!3127 (tail!5655 lt!1266343) (tail!5655 lt!1266344)))))

(declare-fun b!3650901 () Bool)

(declare-fun res!1481131 () Bool)

(assert (=> b!3650901 (=> (not res!1481131) (not e!2260336))))

(assert (=> b!3650901 (= res!1481131 (= (head!7778 lt!1266343) (head!7778 lt!1266344)))))

(declare-fun b!3650903 () Bool)

(declare-fun e!2260338 () Bool)

(assert (=> b!3650903 (= e!2260338 (>= (size!29396 lt!1266344) (size!29396 lt!1266343)))))

(declare-fun d!1072745 () Bool)

(assert (=> d!1072745 e!2260338))

(declare-fun res!1481134 () Bool)

(assert (=> d!1072745 (=> res!1481134 e!2260338)))

(declare-fun lt!1266476 () Bool)

(assert (=> d!1072745 (= res!1481134 (not lt!1266476))))

(assert (=> d!1072745 (= lt!1266476 e!2260337)))

(declare-fun res!1481132 () Bool)

(assert (=> d!1072745 (=> res!1481132 e!2260337)))

(assert (=> d!1072745 (= res!1481132 ((_ is Nil!38495) lt!1266343))))

(assert (=> d!1072745 (= (isPrefix!3127 lt!1266343 lt!1266344) lt!1266476)))

(assert (= (and d!1072745 (not res!1481132)) b!3650900))

(assert (= (and b!3650900 res!1481133) b!3650901))

(assert (= (and b!3650901 res!1481131) b!3650902))

(assert (= (and d!1072745 (not res!1481134)) b!3650903))

(declare-fun m!4155535 () Bool)

(assert (=> b!3650902 m!4155535))

(declare-fun m!4155537 () Bool)

(assert (=> b!3650902 m!4155537))

(assert (=> b!3650902 m!4155535))

(assert (=> b!3650902 m!4155537))

(declare-fun m!4155539 () Bool)

(assert (=> b!3650902 m!4155539))

(assert (=> b!3650901 m!4155127))

(declare-fun m!4155541 () Bool)

(assert (=> b!3650901 m!4155541))

(assert (=> b!3650903 m!4155517))

(assert (=> b!3650903 m!4155089))

(assert (=> b!3650541 d!1072745))

(declare-fun b!3650979 () Bool)

(declare-fun e!2260382 () Unit!55488)

(declare-fun Unit!55497 () Unit!55488)

(assert (=> b!3650979 (= e!2260382 Unit!55497)))

(declare-fun b!3650976 () Bool)

(declare-fun res!1481178 () Bool)

(declare-fun e!2260383 () Bool)

(assert (=> b!3650976 (=> (not res!1481178) (not e!2260383))))

(declare-fun lt!1266542 () Token!10894)

(assert (=> b!3650976 (= res!1481178 (matchR!5092 (regex!5764 (get!12648 (getRuleFromTag!1368 thiss!23823 rules!3307 (tag!6528 (rule!8562 lt!1266542))))) (list!14266 (charsOf!3778 lt!1266542))))))

(declare-fun d!1072747 () Bool)

(assert (=> d!1072747 (isDefined!6388 (maxPrefix!2887 thiss!23823 rules!3307 (++!9580 lt!1266331 suffix!1395)))))

(declare-fun lt!1266543 () Unit!55488)

(assert (=> d!1072747 (= lt!1266543 e!2260382)))

(declare-fun c!631060 () Bool)

(assert (=> d!1072747 (= c!631060 (isEmpty!22815 (maxPrefix!2887 thiss!23823 rules!3307 (++!9580 lt!1266331 suffix!1395))))))

(declare-fun lt!1266532 () Unit!55488)

(declare-fun lt!1266531 () Unit!55488)

(assert (=> d!1072747 (= lt!1266532 lt!1266531)))

(assert (=> d!1072747 e!2260383))

(declare-fun res!1481179 () Bool)

(assert (=> d!1072747 (=> (not res!1481179) (not e!2260383))))

(assert (=> d!1072747 (= res!1481179 (isDefined!6389 (getRuleFromTag!1368 thiss!23823 rules!3307 (tag!6528 (rule!8562 lt!1266542)))))))

(assert (=> d!1072747 (= lt!1266531 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1368 thiss!23823 rules!3307 lt!1266331 lt!1266542))))

(declare-fun lt!1266544 () Unit!55488)

(declare-fun lt!1266546 () Unit!55488)

(assert (=> d!1072747 (= lt!1266544 lt!1266546)))

(declare-fun lt!1266533 () List!38619)

(assert (=> d!1072747 (isPrefix!3127 lt!1266533 (++!9580 lt!1266331 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!507 (List!38619 List!38619 List!38619) Unit!55488)

(assert (=> d!1072747 (= lt!1266546 (lemmaPrefixStaysPrefixWhenAddingToSuffix!507 lt!1266533 lt!1266331 suffix!1395))))

(assert (=> d!1072747 (= lt!1266533 (list!14266 (charsOf!3778 lt!1266542)))))

(declare-fun lt!1266537 () Unit!55488)

(declare-fun lt!1266534 () Unit!55488)

(assert (=> d!1072747 (= lt!1266537 lt!1266534)))

(declare-fun lt!1266538 () List!38619)

(declare-fun lt!1266540 () List!38619)

(assert (=> d!1072747 (isPrefix!3127 lt!1266538 (++!9580 lt!1266538 lt!1266540))))

(assert (=> d!1072747 (= lt!1266534 (lemmaConcatTwoListThenFirstIsPrefix!2046 lt!1266538 lt!1266540))))

(assert (=> d!1072747 (= lt!1266540 (_2!22316 (get!12649 (maxPrefix!2887 thiss!23823 rules!3307 lt!1266331))))))

(assert (=> d!1072747 (= lt!1266538 (list!14266 (charsOf!3778 lt!1266542)))))

(declare-datatypes ((List!38622 0))(
  ( (Nil!38498) (Cons!38498 (h!43918 Token!10894) (t!297605 List!38622)) )
))
(declare-fun head!7779 (List!38622) Token!10894)

(declare-datatypes ((IArray!23533 0))(
  ( (IArray!23534 (innerList!11824 List!38622)) )
))
(declare-datatypes ((Conc!11764 0))(
  ( (Node!11764 (left!30056 Conc!11764) (right!30386 Conc!11764) (csize!23758 Int) (cheight!11975 Int)) (Leaf!18257 (xs!14966 IArray!23533) (csize!23759 Int)) (Empty!11764) )
))
(declare-datatypes ((BalanceConc!23142 0))(
  ( (BalanceConc!23143 (c!631118 Conc!11764)) )
))
(declare-fun list!14269 (BalanceConc!23142) List!38622)

(declare-datatypes ((tuple2!38368 0))(
  ( (tuple2!38369 (_1!22318 BalanceConc!23142) (_2!22318 BalanceConc!23140)) )
))
(declare-fun lex!2539 (LexerInterface!5353 List!38621 BalanceConc!23140) tuple2!38368)

(assert (=> d!1072747 (= lt!1266542 (head!7779 (list!14269 (_1!22318 (lex!2539 thiss!23823 rules!3307 (seqFromList!4313 lt!1266331))))))))

(assert (=> d!1072747 (not (isEmpty!22813 rules!3307))))

(assert (=> d!1072747 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1031 thiss!23823 rules!3307 lt!1266331 suffix!1395) lt!1266543)))

(declare-fun b!3650977 () Bool)

(assert (=> b!3650977 (= e!2260383 (= (rule!8562 lt!1266542) (get!12648 (getRuleFromTag!1368 thiss!23823 rules!3307 (tag!6528 (rule!8562 lt!1266542))))))))

(declare-fun b!3650978 () Bool)

(declare-fun Unit!55498 () Unit!55488)

(assert (=> b!3650978 (= e!2260382 Unit!55498)))

(declare-fun lt!1266541 () List!38619)

(assert (=> b!3650978 (= lt!1266541 (++!9580 lt!1266331 suffix!1395))))

(declare-fun lt!1266539 () Unit!55488)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!543 (LexerInterface!5353 Rule!11328 List!38621 List!38619) Unit!55488)

(assert (=> b!3650978 (= lt!1266539 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!543 thiss!23823 (rule!8562 lt!1266542) rules!3307 lt!1266541))))

(assert (=> b!3650978 (isEmpty!22815 (maxPrefixOneRule!2025 thiss!23823 (rule!8562 lt!1266542) lt!1266541))))

(declare-fun lt!1266545 () Unit!55488)

(assert (=> b!3650978 (= lt!1266545 lt!1266539)))

(declare-fun lt!1266535 () List!38619)

(assert (=> b!3650978 (= lt!1266535 (list!14266 (charsOf!3778 lt!1266542)))))

(declare-fun lt!1266536 () Unit!55488)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!531 (LexerInterface!5353 Rule!11328 List!38619 List!38619) Unit!55488)

(assert (=> b!3650978 (= lt!1266536 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!531 thiss!23823 (rule!8562 lt!1266542) lt!1266535 (++!9580 lt!1266331 suffix!1395)))))

(assert (=> b!3650978 (not (matchR!5092 (regex!5764 (rule!8562 lt!1266542)) lt!1266535))))

(declare-fun lt!1266547 () Unit!55488)

(assert (=> b!3650978 (= lt!1266547 lt!1266536)))

(assert (=> b!3650978 false))

(assert (= (and d!1072747 res!1481179) b!3650976))

(assert (= (and b!3650976 res!1481178) b!3650977))

(assert (= (and d!1072747 c!631060) b!3650978))

(assert (= (and d!1072747 (not c!631060)) b!3650979))

(declare-fun m!4155637 () Bool)

(assert (=> b!3650976 m!4155637))

(declare-fun m!4155639 () Bool)

(assert (=> b!3650976 m!4155639))

(declare-fun m!4155641 () Bool)

(assert (=> b!3650976 m!4155641))

(declare-fun m!4155643 () Bool)

(assert (=> b!3650976 m!4155643))

(declare-fun m!4155645 () Bool)

(assert (=> b!3650976 m!4155645))

(assert (=> b!3650976 m!4155641))

(assert (=> b!3650976 m!4155637))

(assert (=> b!3650976 m!4155645))

(declare-fun m!4155647 () Bool)

(assert (=> d!1072747 m!4155647))

(assert (=> d!1072747 m!4155637))

(declare-fun m!4155649 () Bool)

(assert (=> d!1072747 m!4155649))

(declare-fun m!4155651 () Bool)

(assert (=> d!1072747 m!4155651))

(declare-fun m!4155653 () Bool)

(assert (=> d!1072747 m!4155653))

(assert (=> d!1072747 m!4155105))

(declare-fun m!4155655 () Bool)

(assert (=> d!1072747 m!4155655))

(assert (=> d!1072747 m!4155651))

(declare-fun m!4155657 () Bool)

(assert (=> d!1072747 m!4155657))

(assert (=> d!1072747 m!4155645))

(declare-fun m!4155659 () Bool)

(assert (=> d!1072747 m!4155659))

(declare-fun m!4155661 () Bool)

(assert (=> d!1072747 m!4155661))

(declare-fun m!4155663 () Bool)

(assert (=> d!1072747 m!4155663))

(declare-fun m!4155665 () Bool)

(assert (=> d!1072747 m!4155665))

(declare-fun m!4155667 () Bool)

(assert (=> d!1072747 m!4155667))

(assert (=> d!1072747 m!4155167))

(assert (=> d!1072747 m!4155651))

(assert (=> d!1072747 m!4155175))

(declare-fun m!4155669 () Bool)

(assert (=> d!1072747 m!4155669))

(assert (=> d!1072747 m!4155167))

(declare-fun m!4155671 () Bool)

(assert (=> d!1072747 m!4155671))

(assert (=> d!1072747 m!4155105))

(assert (=> d!1072747 m!4155661))

(assert (=> d!1072747 m!4155645))

(assert (=> d!1072747 m!4155641))

(assert (=> d!1072747 m!4155665))

(declare-fun m!4155673 () Bool)

(assert (=> d!1072747 m!4155673))

(assert (=> d!1072747 m!4155167))

(assert (=> d!1072747 m!4155647))

(declare-fun m!4155675 () Bool)

(assert (=> d!1072747 m!4155675))

(assert (=> d!1072747 m!4155637))

(assert (=> b!3650977 m!4155637))

(assert (=> b!3650977 m!4155637))

(assert (=> b!3650977 m!4155639))

(declare-fun m!4155677 () Bool)

(assert (=> b!3650978 m!4155677))

(assert (=> b!3650978 m!4155677))

(declare-fun m!4155679 () Bool)

(assert (=> b!3650978 m!4155679))

(declare-fun m!4155681 () Bool)

(assert (=> b!3650978 m!4155681))

(declare-fun m!4155683 () Bool)

(assert (=> b!3650978 m!4155683))

(assert (=> b!3650978 m!4155645))

(assert (=> b!3650978 m!4155641))

(assert (=> b!3650978 m!4155167))

(assert (=> b!3650978 m!4155645))

(assert (=> b!3650978 m!4155167))

(declare-fun m!4155685 () Bool)

(assert (=> b!3650978 m!4155685))

(assert (=> b!3650541 d!1072747))

(declare-fun d!1072775 () Bool)

(declare-fun e!2260388 () Bool)

(assert (=> d!1072775 e!2260388))

(declare-fun res!1481184 () Bool)

(assert (=> d!1072775 (=> (not res!1481184) (not e!2260388))))

(declare-fun lt!1266550 () List!38619)

(assert (=> d!1072775 (= res!1481184 (= (content!5555 lt!1266550) ((_ map or) (content!5555 lt!1266331) (content!5555 suffix!1395))))))

(declare-fun e!2260389 () List!38619)

(assert (=> d!1072775 (= lt!1266550 e!2260389)))

(declare-fun c!631063 () Bool)

(assert (=> d!1072775 (= c!631063 ((_ is Nil!38495) lt!1266331))))

(assert (=> d!1072775 (= (++!9580 lt!1266331 suffix!1395) lt!1266550)))

(declare-fun b!3650988 () Bool)

(assert (=> b!3650988 (= e!2260389 suffix!1395)))

(declare-fun b!3650989 () Bool)

(assert (=> b!3650989 (= e!2260389 (Cons!38495 (h!43915 lt!1266331) (++!9580 (t!297482 lt!1266331) suffix!1395)))))

(declare-fun b!3650991 () Bool)

(assert (=> b!3650991 (= e!2260388 (or (not (= suffix!1395 Nil!38495)) (= lt!1266550 lt!1266331)))))

(declare-fun b!3650990 () Bool)

(declare-fun res!1481185 () Bool)

(assert (=> b!3650990 (=> (not res!1481185) (not e!2260388))))

(assert (=> b!3650990 (= res!1481185 (= (size!29396 lt!1266550) (+ (size!29396 lt!1266331) (size!29396 suffix!1395))))))

(assert (= (and d!1072775 c!631063) b!3650988))

(assert (= (and d!1072775 (not c!631063)) b!3650989))

(assert (= (and d!1072775 res!1481184) b!3650990))

(assert (= (and b!3650990 res!1481185) b!3650991))

(declare-fun m!4155687 () Bool)

(assert (=> d!1072775 m!4155687))

(declare-fun m!4155689 () Bool)

(assert (=> d!1072775 m!4155689))

(declare-fun m!4155691 () Bool)

(assert (=> d!1072775 m!4155691))

(declare-fun m!4155693 () Bool)

(assert (=> b!3650989 m!4155693))

(declare-fun m!4155695 () Bool)

(assert (=> b!3650990 m!4155695))

(declare-fun m!4155697 () Bool)

(assert (=> b!3650990 m!4155697))

(declare-fun m!4155699 () Bool)

(assert (=> b!3650990 m!4155699))

(assert (=> b!3650541 d!1072775))

(declare-fun b!3650992 () Bool)

(declare-fun e!2260391 () Bool)

(declare-fun e!2260390 () Bool)

(assert (=> b!3650992 (= e!2260391 e!2260390)))

(declare-fun res!1481188 () Bool)

(assert (=> b!3650992 (=> (not res!1481188) (not e!2260390))))

(assert (=> b!3650992 (= res!1481188 (not ((_ is Nil!38495) (++!9580 lt!1266343 (_2!22316 lt!1266357)))))))

(declare-fun b!3650994 () Bool)

(assert (=> b!3650994 (= e!2260390 (isPrefix!3127 (tail!5655 lt!1266343) (tail!5655 (++!9580 lt!1266343 (_2!22316 lt!1266357)))))))

(declare-fun b!3650993 () Bool)

(declare-fun res!1481186 () Bool)

(assert (=> b!3650993 (=> (not res!1481186) (not e!2260390))))

(assert (=> b!3650993 (= res!1481186 (= (head!7778 lt!1266343) (head!7778 (++!9580 lt!1266343 (_2!22316 lt!1266357)))))))

(declare-fun b!3650995 () Bool)

(declare-fun e!2260392 () Bool)

(assert (=> b!3650995 (= e!2260392 (>= (size!29396 (++!9580 lt!1266343 (_2!22316 lt!1266357))) (size!29396 lt!1266343)))))

(declare-fun d!1072777 () Bool)

(assert (=> d!1072777 e!2260392))

(declare-fun res!1481189 () Bool)

(assert (=> d!1072777 (=> res!1481189 e!2260392)))

(declare-fun lt!1266551 () Bool)

(assert (=> d!1072777 (= res!1481189 (not lt!1266551))))

(assert (=> d!1072777 (= lt!1266551 e!2260391)))

(declare-fun res!1481187 () Bool)

(assert (=> d!1072777 (=> res!1481187 e!2260391)))

(assert (=> d!1072777 (= res!1481187 ((_ is Nil!38495) lt!1266343))))

(assert (=> d!1072777 (= (isPrefix!3127 lt!1266343 (++!9580 lt!1266343 (_2!22316 lt!1266357))) lt!1266551)))

(assert (= (and d!1072777 (not res!1481187)) b!3650992))

(assert (= (and b!3650992 res!1481188) b!3650993))

(assert (= (and b!3650993 res!1481186) b!3650994))

(assert (= (and d!1072777 (not res!1481189)) b!3650995))

(assert (=> b!3650994 m!4155535))

(assert (=> b!3650994 m!4155151))

(declare-fun m!4155701 () Bool)

(assert (=> b!3650994 m!4155701))

(assert (=> b!3650994 m!4155535))

(assert (=> b!3650994 m!4155701))

(declare-fun m!4155703 () Bool)

(assert (=> b!3650994 m!4155703))

(assert (=> b!3650993 m!4155127))

(assert (=> b!3650993 m!4155151))

(declare-fun m!4155705 () Bool)

(assert (=> b!3650993 m!4155705))

(assert (=> b!3650995 m!4155151))

(declare-fun m!4155707 () Bool)

(assert (=> b!3650995 m!4155707))

(assert (=> b!3650995 m!4155089))

(assert (=> b!3650541 d!1072777))

(declare-fun d!1072779 () Bool)

(declare-fun e!2260395 () Bool)

(assert (=> d!1072779 e!2260395))

(declare-fun res!1481194 () Bool)

(assert (=> d!1072779 (=> (not res!1481194) (not e!2260395))))

(assert (=> d!1072779 (= res!1481194 (isDefined!6389 (getRuleFromTag!1368 thiss!23823 rules!3307 (tag!6528 (rule!8562 (_1!22316 lt!1266357))))))))

(declare-fun lt!1266554 () Unit!55488)

(declare-fun choose!21524 (LexerInterface!5353 List!38621 List!38619 Token!10894) Unit!55488)

(assert (=> d!1072779 (= lt!1266554 (choose!21524 thiss!23823 rules!3307 lt!1266344 (_1!22316 lt!1266357)))))

(assert (=> d!1072779 (rulesInvariant!4750 thiss!23823 rules!3307)))

(assert (=> d!1072779 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1368 thiss!23823 rules!3307 lt!1266344 (_1!22316 lt!1266357)) lt!1266554)))

(declare-fun b!3651000 () Bool)

(declare-fun res!1481195 () Bool)

(assert (=> b!3651000 (=> (not res!1481195) (not e!2260395))))

(assert (=> b!3651000 (= res!1481195 (matchR!5092 (regex!5764 (get!12648 (getRuleFromTag!1368 thiss!23823 rules!3307 (tag!6528 (rule!8562 (_1!22316 lt!1266357)))))) (list!14266 (charsOf!3778 (_1!22316 lt!1266357)))))))

(declare-fun b!3651001 () Bool)

(assert (=> b!3651001 (= e!2260395 (= (rule!8562 (_1!22316 lt!1266357)) (get!12648 (getRuleFromTag!1368 thiss!23823 rules!3307 (tag!6528 (rule!8562 (_1!22316 lt!1266357)))))))))

(assert (= (and d!1072779 res!1481194) b!3651000))

(assert (= (and b!3651000 res!1481195) b!3651001))

(assert (=> d!1072779 m!4155169))

(assert (=> d!1072779 m!4155169))

(declare-fun m!4155709 () Bool)

(assert (=> d!1072779 m!4155709))

(declare-fun m!4155711 () Bool)

(assert (=> d!1072779 m!4155711))

(assert (=> d!1072779 m!4155051))

(assert (=> b!3651000 m!4155095))

(assert (=> b!3651000 m!4155097))

(assert (=> b!3651000 m!4155169))

(assert (=> b!3651000 m!4155169))

(declare-fun m!4155713 () Bool)

(assert (=> b!3651000 m!4155713))

(assert (=> b!3651000 m!4155097))

(declare-fun m!4155715 () Bool)

(assert (=> b!3651000 m!4155715))

(assert (=> b!3651000 m!4155095))

(assert (=> b!3651001 m!4155169))

(assert (=> b!3651001 m!4155169))

(assert (=> b!3651001 m!4155713))

(assert (=> b!3650541 d!1072779))

(declare-fun b!3651002 () Bool)

(declare-fun e!2260397 () Bool)

(declare-fun e!2260396 () Bool)

(assert (=> b!3651002 (= e!2260397 e!2260396)))

(declare-fun res!1481198 () Bool)

(assert (=> b!3651002 (=> (not res!1481198) (not e!2260396))))

(assert (=> b!3651002 (= res!1481198 (not ((_ is Nil!38495) lt!1266344)))))

(declare-fun b!3651004 () Bool)

(assert (=> b!3651004 (= e!2260396 (isPrefix!3127 (tail!5655 lt!1266331) (tail!5655 lt!1266344)))))

(declare-fun b!3651003 () Bool)

(declare-fun res!1481196 () Bool)

(assert (=> b!3651003 (=> (not res!1481196) (not e!2260396))))

(assert (=> b!3651003 (= res!1481196 (= (head!7778 lt!1266331) (head!7778 lt!1266344)))))

(declare-fun b!3651005 () Bool)

(declare-fun e!2260398 () Bool)

(assert (=> b!3651005 (= e!2260398 (>= (size!29396 lt!1266344) (size!29396 lt!1266331)))))

(declare-fun d!1072781 () Bool)

(assert (=> d!1072781 e!2260398))

(declare-fun res!1481199 () Bool)

(assert (=> d!1072781 (=> res!1481199 e!2260398)))

(declare-fun lt!1266555 () Bool)

(assert (=> d!1072781 (= res!1481199 (not lt!1266555))))

(assert (=> d!1072781 (= lt!1266555 e!2260397)))

(declare-fun res!1481197 () Bool)

(assert (=> d!1072781 (=> res!1481197 e!2260397)))

(assert (=> d!1072781 (= res!1481197 ((_ is Nil!38495) lt!1266331))))

(assert (=> d!1072781 (= (isPrefix!3127 lt!1266331 lt!1266344) lt!1266555)))

(assert (= (and d!1072781 (not res!1481197)) b!3651002))

(assert (= (and b!3651002 res!1481198) b!3651003))

(assert (= (and b!3651003 res!1481196) b!3651004))

(assert (= (and d!1072781 (not res!1481199)) b!3651005))

(declare-fun m!4155717 () Bool)

(assert (=> b!3651004 m!4155717))

(assert (=> b!3651004 m!4155537))

(assert (=> b!3651004 m!4155717))

(assert (=> b!3651004 m!4155537))

(declare-fun m!4155719 () Bool)

(assert (=> b!3651004 m!4155719))

(declare-fun m!4155721 () Bool)

(assert (=> b!3651003 m!4155721))

(assert (=> b!3651003 m!4155541))

(assert (=> b!3651005 m!4155517))

(assert (=> b!3651005 m!4155697))

(assert (=> b!3650541 d!1072781))

(declare-fun d!1072783 () Bool)

(declare-fun lt!1266558 () BalanceConc!23140)

(assert (=> d!1072783 (= (list!14266 lt!1266558) (originalCharacters!6478 (_1!22316 lt!1266357)))))

(assert (=> d!1072783 (= lt!1266558 (dynLambda!16788 (toChars!7915 (transformation!5764 (rule!8562 (_1!22316 lt!1266357)))) (value!184734 (_1!22316 lt!1266357))))))

(assert (=> d!1072783 (= (charsOf!3778 (_1!22316 lt!1266357)) lt!1266558)))

(declare-fun b_lambda!108277 () Bool)

(assert (=> (not b_lambda!108277) (not d!1072783)))

(declare-fun tb!210693 () Bool)

(declare-fun t!297558 () Bool)

(assert (=> (and b!3650547 (= (toChars!7915 (transformation!5764 (rule!8562 token!511))) (toChars!7915 (transformation!5764 (rule!8562 (_1!22316 lt!1266357))))) t!297558) tb!210693))

(declare-fun b!3651006 () Bool)

(declare-fun e!2260399 () Bool)

(declare-fun tp!1112919 () Bool)

(assert (=> b!3651006 (= e!2260399 (and (inv!51950 (c!630975 (dynLambda!16788 (toChars!7915 (transformation!5764 (rule!8562 (_1!22316 lt!1266357)))) (value!184734 (_1!22316 lt!1266357))))) tp!1112919))))

(declare-fun result!256562 () Bool)

(assert (=> tb!210693 (= result!256562 (and (inv!51951 (dynLambda!16788 (toChars!7915 (transformation!5764 (rule!8562 (_1!22316 lt!1266357)))) (value!184734 (_1!22316 lt!1266357)))) e!2260399))))

(assert (= tb!210693 b!3651006))

(declare-fun m!4155723 () Bool)

(assert (=> b!3651006 m!4155723))

(declare-fun m!4155725 () Bool)

(assert (=> tb!210693 m!4155725))

(assert (=> d!1072783 t!297558))

(declare-fun b_and!270107 () Bool)

(assert (= b_and!270051 (and (=> t!297558 result!256562) b_and!270107)))

(declare-fun t!297560 () Bool)

(declare-fun tb!210695 () Bool)

(assert (=> (and b!3650567 (= (toChars!7915 (transformation!5764 anOtherTypeRule!33)) (toChars!7915 (transformation!5764 (rule!8562 (_1!22316 lt!1266357))))) t!297560) tb!210695))

(declare-fun result!256564 () Bool)

(assert (= result!256564 result!256562))

(assert (=> d!1072783 t!297560))

(declare-fun b_and!270109 () Bool)

(assert (= b_and!270053 (and (=> t!297560 result!256564) b_and!270109)))

(declare-fun t!297562 () Bool)

(declare-fun tb!210697 () Bool)

(assert (=> (and b!3650564 (= (toChars!7915 (transformation!5764 rule!403)) (toChars!7915 (transformation!5764 (rule!8562 (_1!22316 lt!1266357))))) t!297562) tb!210697))

(declare-fun result!256566 () Bool)

(assert (= result!256566 result!256562))

(assert (=> d!1072783 t!297562))

(declare-fun b_and!270111 () Bool)

(assert (= b_and!270055 (and (=> t!297562 result!256566) b_and!270111)))

(declare-fun tb!210699 () Bool)

(declare-fun t!297564 () Bool)

(assert (=> (and b!3650535 (= (toChars!7915 (transformation!5764 (h!43917 rules!3307))) (toChars!7915 (transformation!5764 (rule!8562 (_1!22316 lt!1266357))))) t!297564) tb!210699))

(declare-fun result!256568 () Bool)

(assert (= result!256568 result!256562))

(assert (=> d!1072783 t!297564))

(declare-fun b_and!270113 () Bool)

(assert (= b_and!270057 (and (=> t!297564 result!256568) b_and!270113)))

(declare-fun m!4155727 () Bool)

(assert (=> d!1072783 m!4155727))

(declare-fun m!4155729 () Bool)

(assert (=> d!1072783 m!4155729))

(assert (=> b!3650541 d!1072783))

(declare-fun d!1072785 () Bool)

(assert (=> d!1072785 (isPrefix!3127 lt!1266343 (++!9580 lt!1266343 (_2!22316 lt!1266357)))))

(declare-fun lt!1266561 () Unit!55488)

(declare-fun choose!21525 (List!38619 List!38619) Unit!55488)

(assert (=> d!1072785 (= lt!1266561 (choose!21525 lt!1266343 (_2!22316 lt!1266357)))))

(assert (=> d!1072785 (= (lemmaConcatTwoListThenFirstIsPrefix!2046 lt!1266343 (_2!22316 lt!1266357)) lt!1266561)))

(declare-fun bs!572254 () Bool)

(assert (= bs!572254 d!1072785))

(assert (=> bs!572254 m!4155151))

(assert (=> bs!572254 m!4155151))

(assert (=> bs!572254 m!4155153))

(declare-fun m!4155731 () Bool)

(assert (=> bs!572254 m!4155731))

(assert (=> b!3650541 d!1072785))

(declare-fun d!1072787 () Bool)

(assert (=> d!1072787 (isPrefix!3127 lt!1266331 (++!9580 lt!1266331 suffix!1395))))

(declare-fun lt!1266562 () Unit!55488)

(assert (=> d!1072787 (= lt!1266562 (choose!21525 lt!1266331 suffix!1395))))

(assert (=> d!1072787 (= (lemmaConcatTwoListThenFirstIsPrefix!2046 lt!1266331 suffix!1395) lt!1266562)))

(declare-fun bs!572255 () Bool)

(assert (= bs!572255 d!1072787))

(assert (=> bs!572255 m!4155167))

(assert (=> bs!572255 m!4155167))

(declare-fun m!4155733 () Bool)

(assert (=> bs!572255 m!4155733))

(declare-fun m!4155735 () Bool)

(assert (=> bs!572255 m!4155735))

(assert (=> b!3650541 d!1072787))

(declare-fun d!1072789 () Bool)

(assert (=> d!1072789 (= (get!12649 lt!1266334) (v!38016 lt!1266334))))

(assert (=> b!3650541 d!1072789))

(declare-fun b!3651019 () Bool)

(declare-fun e!2260409 () Bool)

(declare-fun lt!1266569 () Option!8156)

(assert (=> b!3651019 (= e!2260409 (= (tag!6528 (get!12648 lt!1266569)) (tag!6528 (rule!8562 (_1!22316 lt!1266357)))))))

(declare-fun b!3651020 () Bool)

(declare-fun lt!1266570 () Unit!55488)

(declare-fun lt!1266571 () Unit!55488)

(assert (=> b!3651020 (= lt!1266570 lt!1266571)))

(assert (=> b!3651020 (rulesInvariant!4750 thiss!23823 (t!297484 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!586 (LexerInterface!5353 Rule!11328 List!38621) Unit!55488)

(assert (=> b!3651020 (= lt!1266571 (lemmaInvariantOnRulesThenOnTail!586 thiss!23823 (h!43917 rules!3307) (t!297484 rules!3307)))))

(declare-fun e!2260408 () Option!8156)

(assert (=> b!3651020 (= e!2260408 (getRuleFromTag!1368 thiss!23823 (t!297484 rules!3307) (tag!6528 (rule!8562 (_1!22316 lt!1266357)))))))

(declare-fun b!3651021 () Bool)

(assert (=> b!3651021 (= e!2260408 None!8155)))

(declare-fun d!1072791 () Bool)

(declare-fun e!2260410 () Bool)

(assert (=> d!1072791 e!2260410))

(declare-fun res!1481205 () Bool)

(assert (=> d!1072791 (=> res!1481205 e!2260410)))

(declare-fun isEmpty!22816 (Option!8156) Bool)

(assert (=> d!1072791 (= res!1481205 (isEmpty!22816 lt!1266569))))

(declare-fun e!2260411 () Option!8156)

(assert (=> d!1072791 (= lt!1266569 e!2260411)))

(declare-fun c!631068 () Bool)

(assert (=> d!1072791 (= c!631068 (and ((_ is Cons!38497) rules!3307) (= (tag!6528 (h!43917 rules!3307)) (tag!6528 (rule!8562 (_1!22316 lt!1266357))))))))

(assert (=> d!1072791 (rulesInvariant!4750 thiss!23823 rules!3307)))

(assert (=> d!1072791 (= (getRuleFromTag!1368 thiss!23823 rules!3307 (tag!6528 (rule!8562 (_1!22316 lt!1266357)))) lt!1266569)))

(declare-fun b!3651022 () Bool)

(assert (=> b!3651022 (= e!2260411 e!2260408)))

(declare-fun c!631069 () Bool)

(assert (=> b!3651022 (= c!631069 (and ((_ is Cons!38497) rules!3307) (not (= (tag!6528 (h!43917 rules!3307)) (tag!6528 (rule!8562 (_1!22316 lt!1266357)))))))))

(declare-fun b!3651023 () Bool)

(assert (=> b!3651023 (= e!2260410 e!2260409)))

(declare-fun res!1481204 () Bool)

(assert (=> b!3651023 (=> (not res!1481204) (not e!2260409))))

(assert (=> b!3651023 (= res!1481204 (contains!7594 rules!3307 (get!12648 lt!1266569)))))

(declare-fun b!3651024 () Bool)

(assert (=> b!3651024 (= e!2260411 (Some!8155 (h!43917 rules!3307)))))

(assert (= (and d!1072791 c!631068) b!3651024))

(assert (= (and d!1072791 (not c!631068)) b!3651022))

(assert (= (and b!3651022 c!631069) b!3651020))

(assert (= (and b!3651022 (not c!631069)) b!3651021))

(assert (= (and d!1072791 (not res!1481205)) b!3651023))

(assert (= (and b!3651023 res!1481204) b!3651019))

(declare-fun m!4155737 () Bool)

(assert (=> b!3651019 m!4155737))

(declare-fun m!4155739 () Bool)

(assert (=> b!3651020 m!4155739))

(declare-fun m!4155741 () Bool)

(assert (=> b!3651020 m!4155741))

(declare-fun m!4155743 () Bool)

(assert (=> b!3651020 m!4155743))

(declare-fun m!4155745 () Bool)

(assert (=> d!1072791 m!4155745))

(assert (=> d!1072791 m!4155051))

(assert (=> b!3651023 m!4155737))

(assert (=> b!3651023 m!4155737))

(declare-fun m!4155747 () Bool)

(assert (=> b!3651023 m!4155747))

(assert (=> b!3650541 d!1072791))

(declare-fun d!1072793 () Bool)

(assert (=> d!1072793 (= (isDefined!6389 lt!1266346) (not (isEmpty!22816 lt!1266346)))))

(declare-fun bs!572256 () Bool)

(assert (= bs!572256 d!1072793))

(declare-fun m!4155749 () Bool)

(assert (=> bs!572256 m!4155749))

(assert (=> b!3650541 d!1072793))

(declare-fun d!1072795 () Bool)

(declare-fun e!2260412 () Bool)

(assert (=> d!1072795 e!2260412))

(declare-fun res!1481206 () Bool)

(assert (=> d!1072795 (=> (not res!1481206) (not e!2260412))))

(declare-fun lt!1266572 () List!38619)

(assert (=> d!1072795 (= res!1481206 (= (content!5555 lt!1266572) ((_ map or) (content!5555 lt!1266343) (content!5555 (_2!22316 lt!1266357)))))))

(declare-fun e!2260413 () List!38619)

(assert (=> d!1072795 (= lt!1266572 e!2260413)))

(declare-fun c!631070 () Bool)

(assert (=> d!1072795 (= c!631070 ((_ is Nil!38495) lt!1266343))))

(assert (=> d!1072795 (= (++!9580 lt!1266343 (_2!22316 lt!1266357)) lt!1266572)))

(declare-fun b!3651025 () Bool)

(assert (=> b!3651025 (= e!2260413 (_2!22316 lt!1266357))))

(declare-fun b!3651026 () Bool)

(assert (=> b!3651026 (= e!2260413 (Cons!38495 (h!43915 lt!1266343) (++!9580 (t!297482 lt!1266343) (_2!22316 lt!1266357))))))

(declare-fun b!3651028 () Bool)

(assert (=> b!3651028 (= e!2260412 (or (not (= (_2!22316 lt!1266357) Nil!38495)) (= lt!1266572 lt!1266343)))))

(declare-fun b!3651027 () Bool)

(declare-fun res!1481207 () Bool)

(assert (=> b!3651027 (=> (not res!1481207) (not e!2260412))))

(assert (=> b!3651027 (= res!1481207 (= (size!29396 lt!1266572) (+ (size!29396 lt!1266343) (size!29396 (_2!22316 lt!1266357)))))))

(assert (= (and d!1072795 c!631070) b!3651025))

(assert (= (and d!1072795 (not c!631070)) b!3651026))

(assert (= (and d!1072795 res!1481206) b!3651027))

(assert (= (and b!3651027 res!1481207) b!3651028))

(declare-fun m!4155751 () Bool)

(assert (=> d!1072795 m!4155751))

(declare-fun m!4155753 () Bool)

(assert (=> d!1072795 m!4155753))

(declare-fun m!4155755 () Bool)

(assert (=> d!1072795 m!4155755))

(declare-fun m!4155757 () Bool)

(assert (=> b!3651026 m!4155757))

(declare-fun m!4155759 () Bool)

(assert (=> b!3651027 m!4155759))

(assert (=> b!3651027 m!4155089))

(declare-fun m!4155761 () Bool)

(assert (=> b!3651027 m!4155761))

(assert (=> b!3650541 d!1072795))

(declare-fun d!1072797 () Bool)

(assert (=> d!1072797 (= (inv!51943 (tag!6528 anOtherTypeRule!33)) (= (mod (str.len (value!184733 (tag!6528 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3650540 d!1072797))

(declare-fun d!1072799 () Bool)

(declare-fun res!1481208 () Bool)

(declare-fun e!2260414 () Bool)

(assert (=> d!1072799 (=> (not res!1481208) (not e!2260414))))

(assert (=> d!1072799 (= res!1481208 (semiInverseModEq!2457 (toChars!7915 (transformation!5764 anOtherTypeRule!33)) (toValue!8056 (transformation!5764 anOtherTypeRule!33))))))

(assert (=> d!1072799 (= (inv!51946 (transformation!5764 anOtherTypeRule!33)) e!2260414)))

(declare-fun b!3651029 () Bool)

(assert (=> b!3651029 (= e!2260414 (equivClasses!2356 (toChars!7915 (transformation!5764 anOtherTypeRule!33)) (toValue!8056 (transformation!5764 anOtherTypeRule!33))))))

(assert (= (and d!1072799 res!1481208) b!3651029))

(declare-fun m!4155763 () Bool)

(assert (=> d!1072799 m!4155763))

(declare-fun m!4155765 () Bool)

(assert (=> b!3651029 m!4155765))

(assert (=> b!3650540 d!1072799))

(declare-fun b!3651058 () Bool)

(declare-fun e!2260429 () Bool)

(declare-fun nullable!3657 (Regex!10523) Bool)

(assert (=> b!3651058 (= e!2260429 (nullable!3657 (regex!5764 (rule!8562 (_1!22316 lt!1266357)))))))

(declare-fun b!3651059 () Bool)

(declare-fun res!1481231 () Bool)

(declare-fun e!2260435 () Bool)

(assert (=> b!3651059 (=> res!1481231 e!2260435)))

(declare-fun e!2260430 () Bool)

(assert (=> b!3651059 (= res!1481231 e!2260430)))

(declare-fun res!1481229 () Bool)

(assert (=> b!3651059 (=> (not res!1481229) (not e!2260430))))

(declare-fun lt!1266575 () Bool)

(assert (=> b!3651059 (= res!1481229 lt!1266575)))

(declare-fun b!3651060 () Bool)

(declare-fun res!1481226 () Bool)

(assert (=> b!3651060 (=> (not res!1481226) (not e!2260430))))

(declare-fun call!263883 () Bool)

(assert (=> b!3651060 (= res!1481226 (not call!263883))))

(declare-fun b!3651061 () Bool)

(declare-fun res!1481228 () Bool)

(assert (=> b!3651061 (=> res!1481228 e!2260435)))

(assert (=> b!3651061 (= res!1481228 (not ((_ is ElementMatch!10523) (regex!5764 (rule!8562 (_1!22316 lt!1266357))))))))

(declare-fun e!2260431 () Bool)

(assert (=> b!3651061 (= e!2260431 e!2260435)))

(declare-fun b!3651063 () Bool)

(assert (=> b!3651063 (= e!2260431 (not lt!1266575))))

(declare-fun b!3651064 () Bool)

(declare-fun e!2260432 () Bool)

(assert (=> b!3651064 (= e!2260432 (not (= (head!7778 lt!1266343) (c!630974 (regex!5764 (rule!8562 (_1!22316 lt!1266357)))))))))

(declare-fun b!3651065 () Bool)

(declare-fun e!2260433 () Bool)

(assert (=> b!3651065 (= e!2260435 e!2260433)))

(declare-fun res!1481227 () Bool)

(assert (=> b!3651065 (=> (not res!1481227) (not e!2260433))))

(assert (=> b!3651065 (= res!1481227 (not lt!1266575))))

(declare-fun b!3651066 () Bool)

(declare-fun res!1481230 () Bool)

(assert (=> b!3651066 (=> res!1481230 e!2260432)))

(assert (=> b!3651066 (= res!1481230 (not (isEmpty!22812 (tail!5655 lt!1266343))))))

(declare-fun b!3651067 () Bool)

(declare-fun derivativeStep!3206 (Regex!10523 C!21232) Regex!10523)

(assert (=> b!3651067 (= e!2260429 (matchR!5092 (derivativeStep!3206 (regex!5764 (rule!8562 (_1!22316 lt!1266357))) (head!7778 lt!1266343)) (tail!5655 lt!1266343)))))

(declare-fun b!3651068 () Bool)

(assert (=> b!3651068 (= e!2260430 (= (head!7778 lt!1266343) (c!630974 (regex!5764 (rule!8562 (_1!22316 lt!1266357))))))))

(declare-fun b!3651069 () Bool)

(declare-fun e!2260434 () Bool)

(assert (=> b!3651069 (= e!2260434 (= lt!1266575 call!263883))))

(declare-fun b!3651070 () Bool)

(assert (=> b!3651070 (= e!2260433 e!2260432)))

(declare-fun res!1481232 () Bool)

(assert (=> b!3651070 (=> res!1481232 e!2260432)))

(assert (=> b!3651070 (= res!1481232 call!263883)))

(declare-fun d!1072801 () Bool)

(assert (=> d!1072801 e!2260434))

(declare-fun c!631079 () Bool)

(assert (=> d!1072801 (= c!631079 ((_ is EmptyExpr!10523) (regex!5764 (rule!8562 (_1!22316 lt!1266357)))))))

(assert (=> d!1072801 (= lt!1266575 e!2260429)))

(declare-fun c!631077 () Bool)

(assert (=> d!1072801 (= c!631077 (isEmpty!22812 lt!1266343))))

(declare-fun validRegex!4819 (Regex!10523) Bool)

(assert (=> d!1072801 (validRegex!4819 (regex!5764 (rule!8562 (_1!22316 lt!1266357))))))

(assert (=> d!1072801 (= (matchR!5092 (regex!5764 (rule!8562 (_1!22316 lt!1266357))) lt!1266343) lt!1266575)))

(declare-fun b!3651062 () Bool)

(declare-fun res!1481225 () Bool)

(assert (=> b!3651062 (=> (not res!1481225) (not e!2260430))))

(assert (=> b!3651062 (= res!1481225 (isEmpty!22812 (tail!5655 lt!1266343)))))

(declare-fun bm!263878 () Bool)

(assert (=> bm!263878 (= call!263883 (isEmpty!22812 lt!1266343))))

(declare-fun b!3651071 () Bool)

(assert (=> b!3651071 (= e!2260434 e!2260431)))

(declare-fun c!631078 () Bool)

(assert (=> b!3651071 (= c!631078 ((_ is EmptyLang!10523) (regex!5764 (rule!8562 (_1!22316 lt!1266357)))))))

(assert (= (and d!1072801 c!631077) b!3651058))

(assert (= (and d!1072801 (not c!631077)) b!3651067))

(assert (= (and d!1072801 c!631079) b!3651069))

(assert (= (and d!1072801 (not c!631079)) b!3651071))

(assert (= (and b!3651071 c!631078) b!3651063))

(assert (= (and b!3651071 (not c!631078)) b!3651061))

(assert (= (and b!3651061 (not res!1481228)) b!3651059))

(assert (= (and b!3651059 res!1481229) b!3651060))

(assert (= (and b!3651060 res!1481226) b!3651062))

(assert (= (and b!3651062 res!1481225) b!3651068))

(assert (= (and b!3651059 (not res!1481231)) b!3651065))

(assert (= (and b!3651065 res!1481227) b!3651070))

(assert (= (and b!3651070 (not res!1481232)) b!3651066))

(assert (= (and b!3651066 (not res!1481230)) b!3651064))

(assert (= (or b!3651069 b!3651070 b!3651060) bm!263878))

(assert (=> b!3651062 m!4155535))

(assert (=> b!3651062 m!4155535))

(declare-fun m!4155767 () Bool)

(assert (=> b!3651062 m!4155767))

(declare-fun m!4155769 () Bool)

(assert (=> bm!263878 m!4155769))

(assert (=> b!3651068 m!4155127))

(assert (=> d!1072801 m!4155769))

(declare-fun m!4155771 () Bool)

(assert (=> d!1072801 m!4155771))

(assert (=> b!3651066 m!4155535))

(assert (=> b!3651066 m!4155535))

(assert (=> b!3651066 m!4155767))

(assert (=> b!3651067 m!4155127))

(assert (=> b!3651067 m!4155127))

(declare-fun m!4155773 () Bool)

(assert (=> b!3651067 m!4155773))

(assert (=> b!3651067 m!4155535))

(assert (=> b!3651067 m!4155773))

(assert (=> b!3651067 m!4155535))

(declare-fun m!4155775 () Bool)

(assert (=> b!3651067 m!4155775))

(assert (=> b!3651064 m!4155127))

(declare-fun m!4155777 () Bool)

(assert (=> b!3651058 m!4155777))

(assert (=> b!3650561 d!1072801))

(declare-fun d!1072803 () Bool)

(assert (=> d!1072803 (= (isEmpty!22812 (_2!22316 lt!1266354)) ((_ is Nil!38495) (_2!22316 lt!1266354)))))

(assert (=> b!3650544 d!1072803))

(declare-fun d!1072805 () Bool)

(assert (=> d!1072805 (= (inv!51943 (tag!6528 (rule!8562 token!511))) (= (mod (str.len (value!184733 (tag!6528 (rule!8562 token!511)))) 2) 0))))

(assert (=> b!3650565 d!1072805))

(declare-fun d!1072807 () Bool)

(declare-fun res!1481233 () Bool)

(declare-fun e!2260436 () Bool)

(assert (=> d!1072807 (=> (not res!1481233) (not e!2260436))))

(assert (=> d!1072807 (= res!1481233 (semiInverseModEq!2457 (toChars!7915 (transformation!5764 (rule!8562 token!511))) (toValue!8056 (transformation!5764 (rule!8562 token!511)))))))

(assert (=> d!1072807 (= (inv!51946 (transformation!5764 (rule!8562 token!511))) e!2260436)))

(declare-fun b!3651072 () Bool)

(assert (=> b!3651072 (= e!2260436 (equivClasses!2356 (toChars!7915 (transformation!5764 (rule!8562 token!511))) (toValue!8056 (transformation!5764 (rule!8562 token!511)))))))

(assert (= (and d!1072807 res!1481233) b!3651072))

(declare-fun m!4155779 () Bool)

(assert (=> d!1072807 m!4155779))

(declare-fun m!4155781 () Bool)

(assert (=> b!3651072 m!4155781))

(assert (=> b!3650565 d!1072807))

(declare-fun d!1072809 () Bool)

(declare-fun res!1481236 () Bool)

(declare-fun e!2260439 () Bool)

(assert (=> d!1072809 (=> (not res!1481236) (not e!2260439))))

(declare-fun rulesValid!2214 (LexerInterface!5353 List!38621) Bool)

(assert (=> d!1072809 (= res!1481236 (rulesValid!2214 thiss!23823 rules!3307))))

(assert (=> d!1072809 (= (rulesInvariant!4750 thiss!23823 rules!3307) e!2260439)))

(declare-fun b!3651075 () Bool)

(declare-datatypes ((List!38624 0))(
  ( (Nil!38500) (Cons!38500 (h!43920 String!43304) (t!297607 List!38624)) )
))
(declare-fun noDuplicateTag!2210 (LexerInterface!5353 List!38621 List!38624) Bool)

(assert (=> b!3651075 (= e!2260439 (noDuplicateTag!2210 thiss!23823 rules!3307 Nil!38500))))

(assert (= (and d!1072809 res!1481236) b!3651075))

(declare-fun m!4155783 () Bool)

(assert (=> d!1072809 m!4155783))

(declare-fun m!4155785 () Bool)

(assert (=> b!3651075 m!4155785))

(assert (=> b!3650543 d!1072809))

(declare-fun d!1072811 () Bool)

(assert (=> d!1072811 (not (contains!7593 (usedCharacters!976 (regex!5764 (rule!8562 (_1!22316 lt!1266357)))) lt!1266332))))

(declare-fun lt!1266578 () Unit!55488)

(declare-fun choose!21527 (LexerInterface!5353 List!38621 List!38621 Rule!11328 Rule!11328 C!21232) Unit!55488)

(assert (=> d!1072811 (= lt!1266578 (choose!21527 thiss!23823 rules!3307 rules!3307 (rule!8562 (_1!22316 lt!1266357)) rule!403 lt!1266332))))

(assert (=> d!1072811 (rulesInvariant!4750 thiss!23823 rules!3307)))

(assert (=> d!1072811 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!410 thiss!23823 rules!3307 rules!3307 (rule!8562 (_1!22316 lt!1266357)) rule!403 lt!1266332) lt!1266578)))

(declare-fun bs!572257 () Bool)

(assert (= bs!572257 d!1072811))

(assert (=> bs!572257 m!4155121))

(assert (=> bs!572257 m!4155121))

(declare-fun m!4155787 () Bool)

(assert (=> bs!572257 m!4155787))

(declare-fun m!4155789 () Bool)

(assert (=> bs!572257 m!4155789))

(assert (=> bs!572257 m!4155051))

(assert (=> b!3650568 d!1072811))

(declare-fun d!1072813 () Bool)

(declare-fun res!1481241 () Bool)

(declare-fun e!2260444 () Bool)

(assert (=> d!1072813 (=> res!1481241 e!2260444)))

(assert (=> d!1072813 (= res!1481241 (not ((_ is Cons!38497) rules!3307)))))

(assert (=> d!1072813 (= (sepAndNonSepRulesDisjointChars!1932 rules!3307 rules!3307) e!2260444)))

(declare-fun b!3651080 () Bool)

(declare-fun e!2260445 () Bool)

(assert (=> b!3651080 (= e!2260444 e!2260445)))

(declare-fun res!1481242 () Bool)

(assert (=> b!3651080 (=> (not res!1481242) (not e!2260445))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!881 (Rule!11328 List!38621) Bool)

(assert (=> b!3651080 (= res!1481242 (ruleDisjointCharsFromAllFromOtherType!881 (h!43917 rules!3307) rules!3307))))

(declare-fun b!3651081 () Bool)

(assert (=> b!3651081 (= e!2260445 (sepAndNonSepRulesDisjointChars!1932 rules!3307 (t!297484 rules!3307)))))

(assert (= (and d!1072813 (not res!1481241)) b!3651080))

(assert (= (and b!3651080 res!1481242) b!3651081))

(declare-fun m!4155791 () Bool)

(assert (=> b!3651080 m!4155791))

(declare-fun m!4155793 () Bool)

(assert (=> b!3651081 m!4155793))

(assert (=> b!3650546 d!1072813))

(declare-fun b!3651082 () Bool)

(declare-fun e!2260446 () Bool)

(assert (=> b!3651082 (= e!2260446 (nullable!3657 (regex!5764 lt!1266327)))))

(declare-fun b!3651083 () Bool)

(declare-fun res!1481249 () Bool)

(declare-fun e!2260452 () Bool)

(assert (=> b!3651083 (=> res!1481249 e!2260452)))

(declare-fun e!2260447 () Bool)

(assert (=> b!3651083 (= res!1481249 e!2260447)))

(declare-fun res!1481247 () Bool)

(assert (=> b!3651083 (=> (not res!1481247) (not e!2260447))))

(declare-fun lt!1266579 () Bool)

(assert (=> b!3651083 (= res!1481247 lt!1266579)))

(declare-fun b!3651084 () Bool)

(declare-fun res!1481244 () Bool)

(assert (=> b!3651084 (=> (not res!1481244) (not e!2260447))))

(declare-fun call!263884 () Bool)

(assert (=> b!3651084 (= res!1481244 (not call!263884))))

(declare-fun b!3651085 () Bool)

(declare-fun res!1481246 () Bool)

(assert (=> b!3651085 (=> res!1481246 e!2260452)))

(assert (=> b!3651085 (= res!1481246 (not ((_ is ElementMatch!10523) (regex!5764 lt!1266327))))))

(declare-fun e!2260448 () Bool)

(assert (=> b!3651085 (= e!2260448 e!2260452)))

(declare-fun b!3651087 () Bool)

(assert (=> b!3651087 (= e!2260448 (not lt!1266579))))

(declare-fun b!3651088 () Bool)

(declare-fun e!2260449 () Bool)

(assert (=> b!3651088 (= e!2260449 (not (= (head!7778 (list!14266 (charsOf!3778 (_1!22316 lt!1266357)))) (c!630974 (regex!5764 lt!1266327)))))))

(declare-fun b!3651089 () Bool)

(declare-fun e!2260450 () Bool)

(assert (=> b!3651089 (= e!2260452 e!2260450)))

(declare-fun res!1481245 () Bool)

(assert (=> b!3651089 (=> (not res!1481245) (not e!2260450))))

(assert (=> b!3651089 (= res!1481245 (not lt!1266579))))

(declare-fun b!3651090 () Bool)

(declare-fun res!1481248 () Bool)

(assert (=> b!3651090 (=> res!1481248 e!2260449)))

(assert (=> b!3651090 (= res!1481248 (not (isEmpty!22812 (tail!5655 (list!14266 (charsOf!3778 (_1!22316 lt!1266357)))))))))

(declare-fun b!3651091 () Bool)

(assert (=> b!3651091 (= e!2260446 (matchR!5092 (derivativeStep!3206 (regex!5764 lt!1266327) (head!7778 (list!14266 (charsOf!3778 (_1!22316 lt!1266357))))) (tail!5655 (list!14266 (charsOf!3778 (_1!22316 lt!1266357))))))))

(declare-fun b!3651092 () Bool)

(assert (=> b!3651092 (= e!2260447 (= (head!7778 (list!14266 (charsOf!3778 (_1!22316 lt!1266357)))) (c!630974 (regex!5764 lt!1266327))))))

(declare-fun b!3651093 () Bool)

(declare-fun e!2260451 () Bool)

(assert (=> b!3651093 (= e!2260451 (= lt!1266579 call!263884))))

(declare-fun b!3651094 () Bool)

(assert (=> b!3651094 (= e!2260450 e!2260449)))

(declare-fun res!1481250 () Bool)

(assert (=> b!3651094 (=> res!1481250 e!2260449)))

(assert (=> b!3651094 (= res!1481250 call!263884)))

(declare-fun d!1072815 () Bool)

(assert (=> d!1072815 e!2260451))

(declare-fun c!631083 () Bool)

(assert (=> d!1072815 (= c!631083 ((_ is EmptyExpr!10523) (regex!5764 lt!1266327)))))

(assert (=> d!1072815 (= lt!1266579 e!2260446)))

(declare-fun c!631081 () Bool)

(assert (=> d!1072815 (= c!631081 (isEmpty!22812 (list!14266 (charsOf!3778 (_1!22316 lt!1266357)))))))

(assert (=> d!1072815 (validRegex!4819 (regex!5764 lt!1266327))))

(assert (=> d!1072815 (= (matchR!5092 (regex!5764 lt!1266327) (list!14266 (charsOf!3778 (_1!22316 lt!1266357)))) lt!1266579)))

(declare-fun b!3651086 () Bool)

(declare-fun res!1481243 () Bool)

(assert (=> b!3651086 (=> (not res!1481243) (not e!2260447))))

(assert (=> b!3651086 (= res!1481243 (isEmpty!22812 (tail!5655 (list!14266 (charsOf!3778 (_1!22316 lt!1266357))))))))

(declare-fun bm!263879 () Bool)

(assert (=> bm!263879 (= call!263884 (isEmpty!22812 (list!14266 (charsOf!3778 (_1!22316 lt!1266357)))))))

(declare-fun b!3651095 () Bool)

(assert (=> b!3651095 (= e!2260451 e!2260448)))

(declare-fun c!631082 () Bool)

(assert (=> b!3651095 (= c!631082 ((_ is EmptyLang!10523) (regex!5764 lt!1266327)))))

(assert (= (and d!1072815 c!631081) b!3651082))

(assert (= (and d!1072815 (not c!631081)) b!3651091))

(assert (= (and d!1072815 c!631083) b!3651093))

(assert (= (and d!1072815 (not c!631083)) b!3651095))

(assert (= (and b!3651095 c!631082) b!3651087))

(assert (= (and b!3651095 (not c!631082)) b!3651085))

(assert (= (and b!3651085 (not res!1481246)) b!3651083))

(assert (= (and b!3651083 res!1481247) b!3651084))

(assert (= (and b!3651084 res!1481244) b!3651086))

(assert (= (and b!3651086 res!1481243) b!3651092))

(assert (= (and b!3651083 (not res!1481249)) b!3651089))

(assert (= (and b!3651089 res!1481245) b!3651094))

(assert (= (and b!3651094 (not res!1481250)) b!3651090))

(assert (= (and b!3651090 (not res!1481248)) b!3651088))

(assert (= (or b!3651093 b!3651094 b!3651084) bm!263879))

(assert (=> b!3651086 m!4155097))

(declare-fun m!4155795 () Bool)

(assert (=> b!3651086 m!4155795))

(assert (=> b!3651086 m!4155795))

(declare-fun m!4155797 () Bool)

(assert (=> b!3651086 m!4155797))

(assert (=> bm!263879 m!4155097))

(declare-fun m!4155799 () Bool)

(assert (=> bm!263879 m!4155799))

(assert (=> b!3651092 m!4155097))

(declare-fun m!4155801 () Bool)

(assert (=> b!3651092 m!4155801))

(assert (=> d!1072815 m!4155097))

(assert (=> d!1072815 m!4155799))

(declare-fun m!4155803 () Bool)

(assert (=> d!1072815 m!4155803))

(assert (=> b!3651090 m!4155097))

(assert (=> b!3651090 m!4155795))

(assert (=> b!3651090 m!4155795))

(assert (=> b!3651090 m!4155797))

(assert (=> b!3651091 m!4155097))

(assert (=> b!3651091 m!4155801))

(assert (=> b!3651091 m!4155801))

(declare-fun m!4155805 () Bool)

(assert (=> b!3651091 m!4155805))

(assert (=> b!3651091 m!4155097))

(assert (=> b!3651091 m!4155795))

(assert (=> b!3651091 m!4155805))

(assert (=> b!3651091 m!4155795))

(declare-fun m!4155807 () Bool)

(assert (=> b!3651091 m!4155807))

(assert (=> b!3651088 m!4155097))

(assert (=> b!3651088 m!4155801))

(declare-fun m!4155809 () Bool)

(assert (=> b!3651082 m!4155809))

(assert (=> b!3650527 d!1072815))

(declare-fun d!1072817 () Bool)

(assert (=> d!1072817 (= (list!14266 (charsOf!3778 (_1!22316 lt!1266357))) (list!14268 (c!630975 (charsOf!3778 (_1!22316 lt!1266357)))))))

(declare-fun bs!572258 () Bool)

(assert (= bs!572258 d!1072817))

(declare-fun m!4155811 () Bool)

(assert (=> bs!572258 m!4155811))

(assert (=> b!3650527 d!1072817))

(assert (=> b!3650527 d!1072783))

(declare-fun d!1072819 () Bool)

(assert (=> d!1072819 (= (get!12648 lt!1266346) (v!38015 lt!1266346))))

(assert (=> b!3650527 d!1072819))

(declare-fun d!1072821 () Bool)

(declare-fun lt!1266614 () Bool)

(assert (=> d!1072821 (= lt!1266614 (select (content!5555 call!263835) lt!1266332))))

(declare-fun e!2260458 () Bool)

(assert (=> d!1072821 (= lt!1266614 e!2260458)))

(declare-fun res!1481255 () Bool)

(assert (=> d!1072821 (=> (not res!1481255) (not e!2260458))))

(assert (=> d!1072821 (= res!1481255 ((_ is Cons!38495) call!263835))))

(assert (=> d!1072821 (= (contains!7593 call!263835 lt!1266332) lt!1266614)))

(declare-fun b!3651104 () Bool)

(declare-fun e!2260457 () Bool)

(assert (=> b!3651104 (= e!2260458 e!2260457)))

(declare-fun res!1481256 () Bool)

(assert (=> b!3651104 (=> res!1481256 e!2260457)))

(assert (=> b!3651104 (= res!1481256 (= (h!43915 call!263835) lt!1266332))))

(declare-fun b!3651105 () Bool)

(assert (=> b!3651105 (= e!2260457 (contains!7593 (t!297482 call!263835) lt!1266332))))

(assert (= (and d!1072821 res!1481255) b!3651104))

(assert (= (and b!3651104 (not res!1481256)) b!3651105))

(declare-fun m!4155813 () Bool)

(assert (=> d!1072821 m!4155813))

(declare-fun m!4155815 () Bool)

(assert (=> d!1072821 m!4155815))

(declare-fun m!4155817 () Bool)

(assert (=> b!3651105 m!4155817))

(assert (=> bm!263829 d!1072821))

(declare-fun d!1072823 () Bool)

(assert (=> d!1072823 (= (isEmpty!22813 rules!3307) ((_ is Nil!38497) rules!3307))))

(assert (=> b!3650566 d!1072823))

(declare-fun d!1072825 () Bool)

(declare-fun lt!1266615 () Bool)

(assert (=> d!1072825 (= lt!1266615 (select (content!5555 lt!1266343) lt!1266337))))

(declare-fun e!2260460 () Bool)

(assert (=> d!1072825 (= lt!1266615 e!2260460)))

(declare-fun res!1481257 () Bool)

(assert (=> d!1072825 (=> (not res!1481257) (not e!2260460))))

(assert (=> d!1072825 (= res!1481257 ((_ is Cons!38495) lt!1266343))))

(assert (=> d!1072825 (= (contains!7593 lt!1266343 lt!1266337) lt!1266615)))

(declare-fun b!3651106 () Bool)

(declare-fun e!2260459 () Bool)

(assert (=> b!3651106 (= e!2260460 e!2260459)))

(declare-fun res!1481258 () Bool)

(assert (=> b!3651106 (=> res!1481258 e!2260459)))

(assert (=> b!3651106 (= res!1481258 (= (h!43915 lt!1266343) lt!1266337))))

(declare-fun b!3651107 () Bool)

(assert (=> b!3651107 (= e!2260459 (contains!7593 (t!297482 lt!1266343) lt!1266337))))

(assert (= (and d!1072825 res!1481257) b!3651106))

(assert (= (and b!3651106 (not res!1481258)) b!3651107))

(assert (=> d!1072825 m!4155753))

(declare-fun m!4155819 () Bool)

(assert (=> d!1072825 m!4155819))

(declare-fun m!4155821 () Bool)

(assert (=> b!3651107 m!4155821))

(assert (=> b!3650545 d!1072825))

(declare-fun d!1072827 () Bool)

(assert (=> d!1072827 (contains!7593 lt!1266343 (head!7778 suffix!1395))))

(declare-fun lt!1266618 () Unit!55488)

(declare-fun choose!21528 (List!38619 List!38619 List!38619 List!38619) Unit!55488)

(assert (=> d!1072827 (= lt!1266618 (choose!21528 lt!1266331 suffix!1395 lt!1266343 lt!1266344))))

(assert (=> d!1072827 (isPrefix!3127 lt!1266343 lt!1266344)))

(assert (=> d!1072827 (= (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!72 lt!1266331 suffix!1395 lt!1266343 lt!1266344) lt!1266618)))

(declare-fun bs!572259 () Bool)

(assert (= bs!572259 d!1072827))

(assert (=> bs!572259 m!4155047))

(assert (=> bs!572259 m!4155047))

(declare-fun m!4155823 () Bool)

(assert (=> bs!572259 m!4155823))

(declare-fun m!4155825 () Bool)

(assert (=> bs!572259 m!4155825))

(assert (=> bs!572259 m!4155147))

(assert (=> b!3650545 d!1072827))

(declare-fun d!1072829 () Bool)

(declare-fun lt!1266619 () Bool)

(assert (=> d!1072829 (= lt!1266619 (select (content!5554 rules!3307) rule!403))))

(declare-fun e!2260461 () Bool)

(assert (=> d!1072829 (= lt!1266619 e!2260461)))

(declare-fun res!1481260 () Bool)

(assert (=> d!1072829 (=> (not res!1481260) (not e!2260461))))

(assert (=> d!1072829 (= res!1481260 ((_ is Cons!38497) rules!3307))))

(assert (=> d!1072829 (= (contains!7594 rules!3307 rule!403) lt!1266619)))

(declare-fun b!3651108 () Bool)

(declare-fun e!2260462 () Bool)

(assert (=> b!3651108 (= e!2260461 e!2260462)))

(declare-fun res!1481259 () Bool)

(assert (=> b!3651108 (=> res!1481259 e!2260462)))

(assert (=> b!3651108 (= res!1481259 (= (h!43917 rules!3307) rule!403))))

(declare-fun b!3651109 () Bool)

(assert (=> b!3651109 (= e!2260462 (contains!7594 (t!297484 rules!3307) rule!403))))

(assert (= (and d!1072829 res!1481260) b!3651108))

(assert (= (and b!3651108 (not res!1481259)) b!3651109))

(assert (=> d!1072829 m!4155209))

(declare-fun m!4155827 () Bool)

(assert (=> d!1072829 m!4155827))

(declare-fun m!4155829 () Bool)

(assert (=> b!3651109 m!4155829))

(assert (=> b!3650530 d!1072829))

(declare-fun d!1072831 () Bool)

(assert (=> d!1072831 (not (contains!7593 (usedCharacters!976 (regex!5764 (rule!8562 (_1!22316 lt!1266357)))) lt!1266332))))

(declare-fun lt!1266639 () Unit!55488)

(declare-fun choose!21529 (LexerInterface!5353 List!38621 List!38621 Rule!11328 Rule!11328 C!21232) Unit!55488)

(assert (=> d!1072831 (= lt!1266639 (choose!21529 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8562 (_1!22316 lt!1266357)) lt!1266332))))

(assert (=> d!1072831 (rulesInvariant!4750 thiss!23823 rules!3307)))

(assert (=> d!1072831 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!292 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8562 (_1!22316 lt!1266357)) lt!1266332) lt!1266639)))

(declare-fun bs!572260 () Bool)

(assert (= bs!572260 d!1072831))

(assert (=> bs!572260 m!4155121))

(assert (=> bs!572260 m!4155121))

(assert (=> bs!572260 m!4155787))

(declare-fun m!4155867 () Bool)

(assert (=> bs!572260 m!4155867))

(assert (=> bs!572260 m!4155051))

(assert (=> b!3650549 d!1072831))

(declare-fun d!1072833 () Bool)

(assert (=> d!1072833 (= (inv!51943 (tag!6528 rule!403)) (= (mod (str.len (value!184733 (tag!6528 rule!403))) 2) 0))))

(assert (=> b!3650552 d!1072833))

(declare-fun d!1072835 () Bool)

(declare-fun res!1481263 () Bool)

(declare-fun e!2260465 () Bool)

(assert (=> d!1072835 (=> (not res!1481263) (not e!2260465))))

(assert (=> d!1072835 (= res!1481263 (semiInverseModEq!2457 (toChars!7915 (transformation!5764 rule!403)) (toValue!8056 (transformation!5764 rule!403))))))

(assert (=> d!1072835 (= (inv!51946 (transformation!5764 rule!403)) e!2260465)))

(declare-fun b!3651114 () Bool)

(assert (=> b!3651114 (= e!2260465 (equivClasses!2356 (toChars!7915 (transformation!5764 rule!403)) (toValue!8056 (transformation!5764 rule!403))))))

(assert (= (and d!1072835 res!1481263) b!3651114))

(declare-fun m!4155879 () Bool)

(assert (=> d!1072835 m!4155879))

(declare-fun m!4155881 () Bool)

(assert (=> b!3651114 m!4155881))

(assert (=> b!3650552 d!1072835))

(declare-fun b!3651115 () Bool)

(declare-fun e!2260467 () List!38619)

(declare-fun call!263888 () List!38619)

(assert (=> b!3651115 (= e!2260467 call!263888)))

(declare-fun b!3651116 () Bool)

(declare-fun e!2260469 () List!38619)

(assert (=> b!3651116 (= e!2260469 (Cons!38495 (c!630974 (regex!5764 (rule!8562 (_1!22316 lt!1266357)))) Nil!38495))))

(declare-fun b!3651117 () Bool)

(declare-fun e!2260468 () List!38619)

(assert (=> b!3651117 (= e!2260468 Nil!38495)))

(declare-fun bm!263880 () Bool)

(declare-fun call!263886 () List!38619)

(assert (=> bm!263880 (= call!263886 call!263888)))

(declare-fun d!1072837 () Bool)

(declare-fun c!631089 () Bool)

(assert (=> d!1072837 (= c!631089 (or ((_ is EmptyExpr!10523) (regex!5764 (rule!8562 (_1!22316 lt!1266357)))) ((_ is EmptyLang!10523) (regex!5764 (rule!8562 (_1!22316 lt!1266357))))))))

(assert (=> d!1072837 (= (usedCharacters!976 (regex!5764 (rule!8562 (_1!22316 lt!1266357)))) e!2260468)))

(declare-fun b!3651118 () Bool)

(assert (=> b!3651118 (= e!2260468 e!2260469)))

(declare-fun c!631090 () Bool)

(assert (=> b!3651118 (= c!631090 ((_ is ElementMatch!10523) (regex!5764 (rule!8562 (_1!22316 lt!1266357)))))))

(declare-fun b!3651119 () Bool)

(declare-fun e!2260466 () List!38619)

(declare-fun call!263887 () List!38619)

(assert (=> b!3651119 (= e!2260466 call!263887)))

(declare-fun bm!263881 () Bool)

(declare-fun call!263885 () List!38619)

(declare-fun c!631088 () Bool)

(assert (=> bm!263881 (= call!263885 (usedCharacters!976 (ite c!631088 (regOne!21559 (regex!5764 (rule!8562 (_1!22316 lt!1266357)))) (regTwo!21558 (regex!5764 (rule!8562 (_1!22316 lt!1266357)))))))))

(declare-fun bm!263882 () Bool)

(assert (=> bm!263882 (= call!263887 (++!9580 (ite c!631088 call!263885 call!263886) (ite c!631088 call!263886 call!263885)))))

(declare-fun b!3651120 () Bool)

(declare-fun c!631091 () Bool)

(assert (=> b!3651120 (= c!631091 ((_ is Star!10523) (regex!5764 (rule!8562 (_1!22316 lt!1266357)))))))

(assert (=> b!3651120 (= e!2260469 e!2260467)))

(declare-fun b!3651121 () Bool)

(assert (=> b!3651121 (= e!2260466 call!263887)))

(declare-fun bm!263883 () Bool)

(assert (=> bm!263883 (= call!263888 (usedCharacters!976 (ite c!631091 (reg!10852 (regex!5764 (rule!8562 (_1!22316 lt!1266357)))) (ite c!631088 (regTwo!21559 (regex!5764 (rule!8562 (_1!22316 lt!1266357)))) (regOne!21558 (regex!5764 (rule!8562 (_1!22316 lt!1266357))))))))))

(declare-fun b!3651122 () Bool)

(assert (=> b!3651122 (= e!2260467 e!2260466)))

(assert (=> b!3651122 (= c!631088 ((_ is Union!10523) (regex!5764 (rule!8562 (_1!22316 lt!1266357)))))))

(assert (= (and d!1072837 c!631089) b!3651117))

(assert (= (and d!1072837 (not c!631089)) b!3651118))

(assert (= (and b!3651118 c!631090) b!3651116))

(assert (= (and b!3651118 (not c!631090)) b!3651120))

(assert (= (and b!3651120 c!631091) b!3651115))

(assert (= (and b!3651120 (not c!631091)) b!3651122))

(assert (= (and b!3651122 c!631088) b!3651119))

(assert (= (and b!3651122 (not c!631088)) b!3651121))

(assert (= (or b!3651119 b!3651121) bm!263881))

(assert (= (or b!3651119 b!3651121) bm!263880))

(assert (= (or b!3651119 b!3651121) bm!263882))

(assert (= (or b!3651115 bm!263880) bm!263883))

(declare-fun m!4155887 () Bool)

(assert (=> bm!263881 m!4155887))

(declare-fun m!4155889 () Bool)

(assert (=> bm!263882 m!4155889))

(declare-fun m!4155893 () Bool)

(assert (=> bm!263883 m!4155893))

(assert (=> bm!263830 d!1072837))

(declare-fun d!1072841 () Bool)

(assert (=> d!1072841 (= (isDefined!6388 lt!1266330) (not (isEmpty!22815 lt!1266330)))))

(declare-fun bs!572261 () Bool)

(assert (= bs!572261 d!1072841))

(declare-fun m!4155903 () Bool)

(assert (=> bs!572261 m!4155903))

(assert (=> b!3650532 d!1072841))

(declare-fun b!3651127 () Bool)

(declare-fun res!1481269 () Bool)

(declare-fun e!2260472 () Bool)

(assert (=> b!3651127 (=> (not res!1481269) (not e!2260472))))

(declare-fun lt!1266645 () Option!8157)

(assert (=> b!3651127 (= res!1481269 (< (size!29396 (_2!22316 (get!12649 lt!1266645))) (size!29396 lt!1266331)))))

(declare-fun b!3651128 () Bool)

(declare-fun e!2260473 () Option!8157)

(declare-fun call!263889 () Option!8157)

(assert (=> b!3651128 (= e!2260473 call!263889)))

(declare-fun b!3651129 () Bool)

(declare-fun res!1481272 () Bool)

(assert (=> b!3651129 (=> (not res!1481272) (not e!2260472))))

(assert (=> b!3651129 (= res!1481272 (= (list!14266 (charsOf!3778 (_1!22316 (get!12649 lt!1266645)))) (originalCharacters!6478 (_1!22316 (get!12649 lt!1266645)))))))

(declare-fun b!3651130 () Bool)

(assert (=> b!3651130 (= e!2260472 (contains!7594 rules!3307 (rule!8562 (_1!22316 (get!12649 lt!1266645)))))))

(declare-fun b!3651131 () Bool)

(declare-fun e!2260474 () Bool)

(assert (=> b!3651131 (= e!2260474 e!2260472)))

(declare-fun res!1481271 () Bool)

(assert (=> b!3651131 (=> (not res!1481271) (not e!2260472))))

(assert (=> b!3651131 (= res!1481271 (isDefined!6388 lt!1266645))))

(declare-fun b!3651132 () Bool)

(declare-fun res!1481270 () Bool)

(assert (=> b!3651132 (=> (not res!1481270) (not e!2260472))))

(assert (=> b!3651132 (= res!1481270 (= (++!9580 (list!14266 (charsOf!3778 (_1!22316 (get!12649 lt!1266645)))) (_2!22316 (get!12649 lt!1266645))) lt!1266331))))

(declare-fun b!3651133 () Bool)

(declare-fun res!1481267 () Bool)

(assert (=> b!3651133 (=> (not res!1481267) (not e!2260472))))

(assert (=> b!3651133 (= res!1481267 (= (value!184734 (_1!22316 (get!12649 lt!1266645))) (apply!9266 (transformation!5764 (rule!8562 (_1!22316 (get!12649 lt!1266645)))) (seqFromList!4313 (originalCharacters!6478 (_1!22316 (get!12649 lt!1266645)))))))))

(declare-fun bm!263884 () Bool)

(assert (=> bm!263884 (= call!263889 (maxPrefixOneRule!2025 thiss!23823 (h!43917 rules!3307) lt!1266331))))

(declare-fun d!1072845 () Bool)

(assert (=> d!1072845 e!2260474))

(declare-fun res!1481268 () Bool)

(assert (=> d!1072845 (=> res!1481268 e!2260474)))

(assert (=> d!1072845 (= res!1481268 (isEmpty!22815 lt!1266645))))

(assert (=> d!1072845 (= lt!1266645 e!2260473)))

(declare-fun c!631093 () Bool)

(assert (=> d!1072845 (= c!631093 (and ((_ is Cons!38497) rules!3307) ((_ is Nil!38497) (t!297484 rules!3307))))))

(declare-fun lt!1266643 () Unit!55488)

(declare-fun lt!1266642 () Unit!55488)

(assert (=> d!1072845 (= lt!1266643 lt!1266642)))

(assert (=> d!1072845 (isPrefix!3127 lt!1266331 lt!1266331)))

(assert (=> d!1072845 (= lt!1266642 (lemmaIsPrefixRefl!1978 lt!1266331 lt!1266331))))

(assert (=> d!1072845 (rulesValidInductive!2043 thiss!23823 rules!3307)))

(assert (=> d!1072845 (= (maxPrefix!2887 thiss!23823 rules!3307 lt!1266331) lt!1266645)))

(declare-fun b!3651134 () Bool)

(declare-fun res!1481266 () Bool)

(assert (=> b!3651134 (=> (not res!1481266) (not e!2260472))))

(assert (=> b!3651134 (= res!1481266 (matchR!5092 (regex!5764 (rule!8562 (_1!22316 (get!12649 lt!1266645)))) (list!14266 (charsOf!3778 (_1!22316 (get!12649 lt!1266645))))))))

(declare-fun b!3651135 () Bool)

(declare-fun lt!1266644 () Option!8157)

(declare-fun lt!1266641 () Option!8157)

(assert (=> b!3651135 (= e!2260473 (ite (and ((_ is None!8156) lt!1266644) ((_ is None!8156) lt!1266641)) None!8156 (ite ((_ is None!8156) lt!1266641) lt!1266644 (ite ((_ is None!8156) lt!1266644) lt!1266641 (ite (>= (size!29395 (_1!22316 (v!38016 lt!1266644))) (size!29395 (_1!22316 (v!38016 lt!1266641)))) lt!1266644 lt!1266641)))))))

(assert (=> b!3651135 (= lt!1266644 call!263889)))

(assert (=> b!3651135 (= lt!1266641 (maxPrefix!2887 thiss!23823 (t!297484 rules!3307) lt!1266331))))

(assert (= (and d!1072845 c!631093) b!3651128))

(assert (= (and d!1072845 (not c!631093)) b!3651135))

(assert (= (or b!3651128 b!3651135) bm!263884))

(assert (= (and d!1072845 (not res!1481268)) b!3651131))

(assert (= (and b!3651131 res!1481271) b!3651129))

(assert (= (and b!3651129 res!1481272) b!3651127))

(assert (= (and b!3651127 res!1481269) b!3651132))

(assert (= (and b!3651132 res!1481270) b!3651133))

(assert (= (and b!3651133 res!1481267) b!3651134))

(assert (= (and b!3651134 res!1481266) b!3651130))

(declare-fun m!4155905 () Bool)

(assert (=> b!3651129 m!4155905))

(declare-fun m!4155907 () Bool)

(assert (=> b!3651129 m!4155907))

(assert (=> b!3651129 m!4155907))

(declare-fun m!4155909 () Bool)

(assert (=> b!3651129 m!4155909))

(assert (=> b!3651130 m!4155905))

(declare-fun m!4155911 () Bool)

(assert (=> b!3651130 m!4155911))

(declare-fun m!4155913 () Bool)

(assert (=> b!3651135 m!4155913))

(assert (=> b!3651132 m!4155905))

(assert (=> b!3651132 m!4155907))

(assert (=> b!3651132 m!4155907))

(assert (=> b!3651132 m!4155909))

(assert (=> b!3651132 m!4155909))

(declare-fun m!4155915 () Bool)

(assert (=> b!3651132 m!4155915))

(declare-fun m!4155917 () Bool)

(assert (=> b!3651131 m!4155917))

(assert (=> b!3651127 m!4155905))

(declare-fun m!4155919 () Bool)

(assert (=> b!3651127 m!4155919))

(assert (=> b!3651127 m!4155697))

(declare-fun m!4155921 () Bool)

(assert (=> bm!263884 m!4155921))

(assert (=> b!3651134 m!4155905))

(assert (=> b!3651134 m!4155907))

(assert (=> b!3651134 m!4155907))

(assert (=> b!3651134 m!4155909))

(assert (=> b!3651134 m!4155909))

(declare-fun m!4155923 () Bool)

(assert (=> b!3651134 m!4155923))

(declare-fun m!4155925 () Bool)

(assert (=> d!1072845 m!4155925))

(declare-fun m!4155927 () Bool)

(assert (=> d!1072845 m!4155927))

(declare-fun m!4155929 () Bool)

(assert (=> d!1072845 m!4155929))

(assert (=> d!1072845 m!4155529))

(assert (=> b!3651133 m!4155905))

(declare-fun m!4155931 () Bool)

(assert (=> b!3651133 m!4155931))

(assert (=> b!3651133 m!4155931))

(declare-fun m!4155933 () Bool)

(assert (=> b!3651133 m!4155933))

(assert (=> b!3650532 d!1072845))

(declare-fun d!1072847 () Bool)

(assert (=> d!1072847 (= (list!14266 lt!1266338) (list!14268 (c!630975 lt!1266338)))))

(declare-fun bs!572262 () Bool)

(assert (= bs!572262 d!1072847))

(declare-fun m!4155935 () Bool)

(assert (=> bs!572262 m!4155935))

(assert (=> b!3650532 d!1072847))

(declare-fun d!1072849 () Bool)

(declare-fun lt!1266646 () BalanceConc!23140)

(assert (=> d!1072849 (= (list!14266 lt!1266646) (originalCharacters!6478 token!511))))

(assert (=> d!1072849 (= lt!1266646 (dynLambda!16788 (toChars!7915 (transformation!5764 (rule!8562 token!511))) (value!184734 token!511)))))

(assert (=> d!1072849 (= (charsOf!3778 token!511) lt!1266646)))

(declare-fun b_lambda!108279 () Bool)

(assert (=> (not b_lambda!108279) (not d!1072849)))

(declare-fun t!297566 () Bool)

(declare-fun tb!210701 () Bool)

(assert (=> (and b!3650547 (= (toChars!7915 (transformation!5764 (rule!8562 token!511))) (toChars!7915 (transformation!5764 (rule!8562 token!511)))) t!297566) tb!210701))

(declare-fun b!3651136 () Bool)

(declare-fun e!2260475 () Bool)

(declare-fun tp!1112920 () Bool)

(assert (=> b!3651136 (= e!2260475 (and (inv!51950 (c!630975 (dynLambda!16788 (toChars!7915 (transformation!5764 (rule!8562 token!511))) (value!184734 token!511)))) tp!1112920))))

(declare-fun result!256570 () Bool)

(assert (=> tb!210701 (= result!256570 (and (inv!51951 (dynLambda!16788 (toChars!7915 (transformation!5764 (rule!8562 token!511))) (value!184734 token!511))) e!2260475))))

(assert (= tb!210701 b!3651136))

(declare-fun m!4155937 () Bool)

(assert (=> b!3651136 m!4155937))

(declare-fun m!4155939 () Bool)

(assert (=> tb!210701 m!4155939))

(assert (=> d!1072849 t!297566))

(declare-fun b_and!270115 () Bool)

(assert (= b_and!270107 (and (=> t!297566 result!256570) b_and!270115)))

(declare-fun t!297568 () Bool)

(declare-fun tb!210703 () Bool)

(assert (=> (and b!3650567 (= (toChars!7915 (transformation!5764 anOtherTypeRule!33)) (toChars!7915 (transformation!5764 (rule!8562 token!511)))) t!297568) tb!210703))

(declare-fun result!256572 () Bool)

(assert (= result!256572 result!256570))

(assert (=> d!1072849 t!297568))

(declare-fun b_and!270117 () Bool)

(assert (= b_and!270109 (and (=> t!297568 result!256572) b_and!270117)))

(declare-fun tb!210705 () Bool)

(declare-fun t!297570 () Bool)

(assert (=> (and b!3650564 (= (toChars!7915 (transformation!5764 rule!403)) (toChars!7915 (transformation!5764 (rule!8562 token!511)))) t!297570) tb!210705))

(declare-fun result!256574 () Bool)

(assert (= result!256574 result!256570))

(assert (=> d!1072849 t!297570))

(declare-fun b_and!270119 () Bool)

(assert (= b_and!270111 (and (=> t!297570 result!256574) b_and!270119)))

(declare-fun tb!210707 () Bool)

(declare-fun t!297572 () Bool)

(assert (=> (and b!3650535 (= (toChars!7915 (transformation!5764 (h!43917 rules!3307))) (toChars!7915 (transformation!5764 (rule!8562 token!511)))) t!297572) tb!210707))

(declare-fun result!256576 () Bool)

(assert (= result!256576 result!256570))

(assert (=> d!1072849 t!297572))

(declare-fun b_and!270121 () Bool)

(assert (= b_and!270113 (and (=> t!297572 result!256576) b_and!270121)))

(declare-fun m!4155941 () Bool)

(assert (=> d!1072849 m!4155941))

(declare-fun m!4155943 () Bool)

(assert (=> d!1072849 m!4155943))

(assert (=> b!3650532 d!1072849))

(declare-fun d!1072851 () Bool)

(declare-fun lt!1266647 () Int)

(assert (=> d!1072851 (= lt!1266647 (size!29396 (list!14266 lt!1266338)))))

(assert (=> d!1072851 (= lt!1266647 (size!29398 (c!630975 lt!1266338)))))

(assert (=> d!1072851 (= (size!29397 lt!1266338) lt!1266647)))

(declare-fun bs!572263 () Bool)

(assert (= bs!572263 d!1072851))

(assert (=> bs!572263 m!4155107))

(assert (=> bs!572263 m!4155107))

(declare-fun m!4155945 () Bool)

(assert (=> bs!572263 m!4155945))

(declare-fun m!4155947 () Bool)

(assert (=> bs!572263 m!4155947))

(assert (=> b!3650551 d!1072851))

(declare-fun d!1072853 () Bool)

(declare-fun lt!1266648 () Bool)

(assert (=> d!1072853 (= lt!1266648 (select (content!5555 lt!1266355) lt!1266332))))

(declare-fun e!2260477 () Bool)

(assert (=> d!1072853 (= lt!1266648 e!2260477)))

(declare-fun res!1481273 () Bool)

(assert (=> d!1072853 (=> (not res!1481273) (not e!2260477))))

(assert (=> d!1072853 (= res!1481273 ((_ is Cons!38495) lt!1266355))))

(assert (=> d!1072853 (= (contains!7593 lt!1266355 lt!1266332) lt!1266648)))

(declare-fun b!3651137 () Bool)

(declare-fun e!2260476 () Bool)

(assert (=> b!3651137 (= e!2260477 e!2260476)))

(declare-fun res!1481274 () Bool)

(assert (=> b!3651137 (=> res!1481274 e!2260476)))

(assert (=> b!3651137 (= res!1481274 (= (h!43915 lt!1266355) lt!1266332))))

(declare-fun b!3651138 () Bool)

(assert (=> b!3651138 (= e!2260476 (contains!7593 (t!297482 lt!1266355) lt!1266332))))

(assert (= (and d!1072853 res!1481273) b!3651137))

(assert (= (and b!3651137 (not res!1481274)) b!3651138))

(assert (=> d!1072853 m!4155277))

(declare-fun m!4155949 () Bool)

(assert (=> d!1072853 m!4155949))

(declare-fun m!4155951 () Bool)

(assert (=> b!3651138 m!4155951))

(assert (=> b!3650551 d!1072853))

(declare-fun d!1072855 () Bool)

(assert (=> d!1072855 (= (head!7778 lt!1266343) (h!43915 lt!1266343))))

(assert (=> b!3650551 d!1072855))

(declare-fun d!1072857 () Bool)

(assert (=> d!1072857 (= (maxPrefixOneRule!2025 thiss!23823 (rule!8562 (_1!22316 lt!1266357)) lt!1266344) (Some!8156 (tuple2!38365 (Token!10895 (apply!9266 (transformation!5764 (rule!8562 (_1!22316 lt!1266357))) (seqFromList!4313 lt!1266343)) (rule!8562 (_1!22316 lt!1266357)) (size!29396 lt!1266343) lt!1266343) (_2!22316 lt!1266357))))))

(declare-fun lt!1266662 () Unit!55488)

(declare-fun choose!21531 (LexerInterface!5353 List!38621 List!38619 List!38619 List!38619 Rule!11328) Unit!55488)

(assert (=> d!1072857 (= lt!1266662 (choose!21531 thiss!23823 rules!3307 lt!1266343 lt!1266344 (_2!22316 lt!1266357) (rule!8562 (_1!22316 lt!1266357))))))

(assert (=> d!1072857 (not (isEmpty!22813 rules!3307))))

(assert (=> d!1072857 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1081 thiss!23823 rules!3307 lt!1266343 lt!1266344 (_2!22316 lt!1266357) (rule!8562 (_1!22316 lt!1266357))) lt!1266662)))

(declare-fun bs!572266 () Bool)

(assert (= bs!572266 d!1072857))

(assert (=> bs!572266 m!4155079))

(assert (=> bs!572266 m!4155079))

(assert (=> bs!572266 m!4155087))

(assert (=> bs!572266 m!4155175))

(assert (=> bs!572266 m!4155077))

(declare-fun m!4155979 () Bool)

(assert (=> bs!572266 m!4155979))

(assert (=> bs!572266 m!4155089))

(assert (=> b!3650550 d!1072857))

(declare-fun d!1072869 () Bool)

(declare-fun lt!1266667 () Int)

(assert (=> d!1072869 (>= lt!1266667 0)))

(declare-fun e!2260500 () Int)

(assert (=> d!1072869 (= lt!1266667 e!2260500)))

(declare-fun c!631102 () Bool)

(assert (=> d!1072869 (= c!631102 ((_ is Nil!38495) lt!1266343))))

(assert (=> d!1072869 (= (size!29396 lt!1266343) lt!1266667)))

(declare-fun b!3651173 () Bool)

(assert (=> b!3651173 (= e!2260500 0)))

(declare-fun b!3651174 () Bool)

(assert (=> b!3651174 (= e!2260500 (+ 1 (size!29396 (t!297482 lt!1266343))))))

(assert (= (and d!1072869 c!631102) b!3651173))

(assert (= (and d!1072869 (not c!631102)) b!3651174))

(declare-fun m!4155981 () Bool)

(assert (=> b!3651174 m!4155981))

(assert (=> b!3650550 d!1072869))

(declare-fun d!1072871 () Bool)

(assert (=> d!1072871 (= (seqFromList!4313 lt!1266343) (fromListB!1992 lt!1266343))))

(declare-fun bs!572267 () Bool)

(assert (= bs!572267 d!1072871))

(declare-fun m!4155983 () Bool)

(assert (=> bs!572267 m!4155983))

(assert (=> b!3650550 d!1072871))

(declare-fun b!3651259 () Bool)

(declare-fun res!1481324 () Bool)

(declare-fun e!2260548 () Bool)

(assert (=> b!3651259 (=> (not res!1481324) (not e!2260548))))

(declare-fun lt!1266689 () Option!8157)

(assert (=> b!3651259 (= res!1481324 (< (size!29396 (_2!22316 (get!12649 lt!1266689))) (size!29396 lt!1266344)))))

(declare-fun b!3651260 () Bool)

(declare-fun e!2260546 () Option!8157)

(declare-datatypes ((tuple2!38372 0))(
  ( (tuple2!38373 (_1!22320 List!38619) (_2!22320 List!38619)) )
))
(declare-fun lt!1266686 () tuple2!38372)

(assert (=> b!3651260 (= e!2260546 (Some!8156 (tuple2!38365 (Token!10895 (apply!9266 (transformation!5764 (rule!8562 (_1!22316 lt!1266357))) (seqFromList!4313 (_1!22320 lt!1266686))) (rule!8562 (_1!22316 lt!1266357)) (size!29397 (seqFromList!4313 (_1!22320 lt!1266686))) (_1!22320 lt!1266686)) (_2!22320 lt!1266686))))))

(declare-fun lt!1266688 () Unit!55488)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1026 (Regex!10523 List!38619) Unit!55488)

(assert (=> b!3651260 (= lt!1266688 (longestMatchIsAcceptedByMatchOrIsEmpty!1026 (regex!5764 (rule!8562 (_1!22316 lt!1266357))) lt!1266344))))

(declare-fun res!1481322 () Bool)

(declare-fun findLongestMatchInner!1053 (Regex!10523 List!38619 Int List!38619 List!38619 Int) tuple2!38372)

(assert (=> b!3651260 (= res!1481322 (isEmpty!22812 (_1!22320 (findLongestMatchInner!1053 (regex!5764 (rule!8562 (_1!22316 lt!1266357))) Nil!38495 (size!29396 Nil!38495) lt!1266344 lt!1266344 (size!29396 lt!1266344)))))))

(declare-fun e!2260549 () Bool)

(assert (=> b!3651260 (=> res!1481322 e!2260549)))

(assert (=> b!3651260 e!2260549))

(declare-fun lt!1266687 () Unit!55488)

(assert (=> b!3651260 (= lt!1266687 lt!1266688)))

(declare-fun lt!1266690 () Unit!55488)

(assert (=> b!3651260 (= lt!1266690 (lemmaSemiInverse!1513 (transformation!5764 (rule!8562 (_1!22316 lt!1266357))) (seqFromList!4313 (_1!22320 lt!1266686))))))

(declare-fun b!3651261 () Bool)

(declare-fun res!1481326 () Bool)

(assert (=> b!3651261 (=> (not res!1481326) (not e!2260548))))

(assert (=> b!3651261 (= res!1481326 (= (++!9580 (list!14266 (charsOf!3778 (_1!22316 (get!12649 lt!1266689)))) (_2!22316 (get!12649 lt!1266689))) lt!1266344))))

(declare-fun b!3651262 () Bool)

(declare-fun res!1481323 () Bool)

(assert (=> b!3651262 (=> (not res!1481323) (not e!2260548))))

(assert (=> b!3651262 (= res!1481323 (= (value!184734 (_1!22316 (get!12649 lt!1266689))) (apply!9266 (transformation!5764 (rule!8562 (_1!22316 (get!12649 lt!1266689)))) (seqFromList!4313 (originalCharacters!6478 (_1!22316 (get!12649 lt!1266689)))))))))

(declare-fun b!3651263 () Bool)

(assert (=> b!3651263 (= e!2260548 (= (size!29395 (_1!22316 (get!12649 lt!1266689))) (size!29396 (originalCharacters!6478 (_1!22316 (get!12649 lt!1266689))))))))

(declare-fun b!3651264 () Bool)

(declare-fun e!2260547 () Bool)

(assert (=> b!3651264 (= e!2260547 e!2260548)))

(declare-fun res!1481325 () Bool)

(assert (=> b!3651264 (=> (not res!1481325) (not e!2260548))))

(assert (=> b!3651264 (= res!1481325 (matchR!5092 (regex!5764 (rule!8562 (_1!22316 lt!1266357))) (list!14266 (charsOf!3778 (_1!22316 (get!12649 lt!1266689))))))))

(declare-fun b!3651266 () Bool)

(assert (=> b!3651266 (= e!2260546 None!8156)))

(declare-fun b!3651267 () Bool)

(assert (=> b!3651267 (= e!2260549 (matchR!5092 (regex!5764 (rule!8562 (_1!22316 lt!1266357))) (_1!22320 (findLongestMatchInner!1053 (regex!5764 (rule!8562 (_1!22316 lt!1266357))) Nil!38495 (size!29396 Nil!38495) lt!1266344 lt!1266344 (size!29396 lt!1266344)))))))

(declare-fun b!3651265 () Bool)

(declare-fun res!1481327 () Bool)

(assert (=> b!3651265 (=> (not res!1481327) (not e!2260548))))

(assert (=> b!3651265 (= res!1481327 (= (rule!8562 (_1!22316 (get!12649 lt!1266689))) (rule!8562 (_1!22316 lt!1266357))))))

(declare-fun d!1072873 () Bool)

(assert (=> d!1072873 e!2260547))

(declare-fun res!1481328 () Bool)

(assert (=> d!1072873 (=> res!1481328 e!2260547)))

(assert (=> d!1072873 (= res!1481328 (isEmpty!22815 lt!1266689))))

(assert (=> d!1072873 (= lt!1266689 e!2260546)))

(declare-fun c!631110 () Bool)

(assert (=> d!1072873 (= c!631110 (isEmpty!22812 (_1!22320 lt!1266686)))))

(declare-fun findLongestMatch!968 (Regex!10523 List!38619) tuple2!38372)

(assert (=> d!1072873 (= lt!1266686 (findLongestMatch!968 (regex!5764 (rule!8562 (_1!22316 lt!1266357))) lt!1266344))))

(assert (=> d!1072873 (ruleValid!2028 thiss!23823 (rule!8562 (_1!22316 lt!1266357)))))

(assert (=> d!1072873 (= (maxPrefixOneRule!2025 thiss!23823 (rule!8562 (_1!22316 lt!1266357)) lt!1266344) lt!1266689)))

(assert (= (and d!1072873 c!631110) b!3651266))

(assert (= (and d!1072873 (not c!631110)) b!3651260))

(assert (= (and b!3651260 (not res!1481322)) b!3651267))

(assert (= (and d!1072873 (not res!1481328)) b!3651264))

(assert (= (and b!3651264 res!1481325) b!3651261))

(assert (= (and b!3651261 res!1481326) b!3651259))

(assert (= (and b!3651259 res!1481324) b!3651265))

(assert (= (and b!3651265 res!1481327) b!3651262))

(assert (= (and b!3651262 res!1481323) b!3651263))

(declare-fun m!4156035 () Bool)

(assert (=> b!3651264 m!4156035))

(declare-fun m!4156037 () Bool)

(assert (=> b!3651264 m!4156037))

(assert (=> b!3651264 m!4156037))

(declare-fun m!4156039 () Bool)

(assert (=> b!3651264 m!4156039))

(assert (=> b!3651264 m!4156039))

(declare-fun m!4156041 () Bool)

(assert (=> b!3651264 m!4156041))

(assert (=> b!3651263 m!4156035))

(declare-fun m!4156043 () Bool)

(assert (=> b!3651263 m!4156043))

(assert (=> b!3651265 m!4156035))

(assert (=> b!3651259 m!4156035))

(declare-fun m!4156045 () Bool)

(assert (=> b!3651259 m!4156045))

(assert (=> b!3651259 m!4155517))

(assert (=> b!3651261 m!4156035))

(assert (=> b!3651261 m!4156037))

(assert (=> b!3651261 m!4156037))

(assert (=> b!3651261 m!4156039))

(assert (=> b!3651261 m!4156039))

(declare-fun m!4156047 () Bool)

(assert (=> b!3651261 m!4156047))

(assert (=> b!3651262 m!4156035))

(declare-fun m!4156049 () Bool)

(assert (=> b!3651262 m!4156049))

(assert (=> b!3651262 m!4156049))

(declare-fun m!4156051 () Bool)

(assert (=> b!3651262 m!4156051))

(declare-fun m!4156053 () Bool)

(assert (=> b!3651267 m!4156053))

(assert (=> b!3651267 m!4155517))

(assert (=> b!3651267 m!4156053))

(assert (=> b!3651267 m!4155517))

(declare-fun m!4156055 () Bool)

(assert (=> b!3651267 m!4156055))

(declare-fun m!4156057 () Bool)

(assert (=> b!3651267 m!4156057))

(declare-fun m!4156059 () Bool)

(assert (=> d!1072873 m!4156059))

(declare-fun m!4156061 () Bool)

(assert (=> d!1072873 m!4156061))

(declare-fun m!4156063 () Bool)

(assert (=> d!1072873 m!4156063))

(declare-fun m!4156065 () Bool)

(assert (=> d!1072873 m!4156065))

(declare-fun m!4156067 () Bool)

(assert (=> b!3651260 m!4156067))

(declare-fun m!4156069 () Bool)

(assert (=> b!3651260 m!4156069))

(assert (=> b!3651260 m!4156067))

(declare-fun m!4156071 () Bool)

(assert (=> b!3651260 m!4156071))

(assert (=> b!3651260 m!4156053))

(assert (=> b!3651260 m!4155517))

(assert (=> b!3651260 m!4156055))

(assert (=> b!3651260 m!4156067))

(declare-fun m!4156073 () Bool)

(assert (=> b!3651260 m!4156073))

(declare-fun m!4156075 () Bool)

(assert (=> b!3651260 m!4156075))

(assert (=> b!3651260 m!4155517))

(declare-fun m!4156077 () Bool)

(assert (=> b!3651260 m!4156077))

(assert (=> b!3651260 m!4156053))

(assert (=> b!3651260 m!4156067))

(assert (=> b!3650550 d!1072873))

(declare-fun d!1072897 () Bool)

(assert (=> d!1072897 (= (apply!9266 (transformation!5764 (rule!8562 (_1!22316 lt!1266357))) (seqFromList!4313 lt!1266343)) (dynLambda!16786 (toValue!8056 (transformation!5764 (rule!8562 (_1!22316 lt!1266357)))) (seqFromList!4313 lt!1266343)))))

(declare-fun b_lambda!108287 () Bool)

(assert (=> (not b_lambda!108287) (not d!1072897)))

(declare-fun t!297586 () Bool)

(declare-fun tb!210721 () Bool)

(assert (=> (and b!3650547 (= (toValue!8056 (transformation!5764 (rule!8562 token!511))) (toValue!8056 (transformation!5764 (rule!8562 (_1!22316 lt!1266357))))) t!297586) tb!210721))

(declare-fun result!256596 () Bool)

(assert (=> tb!210721 (= result!256596 (inv!21 (dynLambda!16786 (toValue!8056 (transformation!5764 (rule!8562 (_1!22316 lt!1266357)))) (seqFromList!4313 lt!1266343))))))

(declare-fun m!4156079 () Bool)

(assert (=> tb!210721 m!4156079))

(assert (=> d!1072897 t!297586))

(declare-fun b_and!270135 () Bool)

(assert (= b_and!270067 (and (=> t!297586 result!256596) b_and!270135)))

(declare-fun t!297588 () Bool)

(declare-fun tb!210723 () Bool)

(assert (=> (and b!3650567 (= (toValue!8056 (transformation!5764 anOtherTypeRule!33)) (toValue!8056 (transformation!5764 (rule!8562 (_1!22316 lt!1266357))))) t!297588) tb!210723))

(declare-fun result!256598 () Bool)

(assert (= result!256598 result!256596))

(assert (=> d!1072897 t!297588))

(declare-fun b_and!270137 () Bool)

(assert (= b_and!270069 (and (=> t!297588 result!256598) b_and!270137)))

(declare-fun t!297590 () Bool)

(declare-fun tb!210725 () Bool)

(assert (=> (and b!3650564 (= (toValue!8056 (transformation!5764 rule!403)) (toValue!8056 (transformation!5764 (rule!8562 (_1!22316 lt!1266357))))) t!297590) tb!210725))

(declare-fun result!256600 () Bool)

(assert (= result!256600 result!256596))

(assert (=> d!1072897 t!297590))

(declare-fun b_and!270139 () Bool)

(assert (= b_and!270071 (and (=> t!297590 result!256600) b_and!270139)))

(declare-fun t!297592 () Bool)

(declare-fun tb!210727 () Bool)

(assert (=> (and b!3650535 (= (toValue!8056 (transformation!5764 (h!43917 rules!3307))) (toValue!8056 (transformation!5764 (rule!8562 (_1!22316 lt!1266357))))) t!297592) tb!210727))

(declare-fun result!256602 () Bool)

(assert (= result!256602 result!256596))

(assert (=> d!1072897 t!297592))

(declare-fun b_and!270141 () Bool)

(assert (= b_and!270073 (and (=> t!297592 result!256602) b_and!270141)))

(assert (=> d!1072897 m!4155079))

(declare-fun m!4156081 () Bool)

(assert (=> d!1072897 m!4156081))

(assert (=> b!3650550 d!1072897))

(declare-fun d!1072899 () Bool)

(assert (=> d!1072899 (= (_2!22316 lt!1266357) lt!1266358)))

(declare-fun lt!1266693 () Unit!55488)

(declare-fun choose!21532 (List!38619 List!38619 List!38619 List!38619 List!38619) Unit!55488)

(assert (=> d!1072899 (= lt!1266693 (choose!21532 lt!1266343 (_2!22316 lt!1266357) lt!1266343 lt!1266358 lt!1266344))))

(assert (=> d!1072899 (isPrefix!3127 lt!1266343 lt!1266344)))

(assert (=> d!1072899 (= (lemmaSamePrefixThenSameSuffix!1454 lt!1266343 (_2!22316 lt!1266357) lt!1266343 lt!1266358 lt!1266344) lt!1266693)))

(declare-fun bs!572270 () Bool)

(assert (= bs!572270 d!1072899))

(declare-fun m!4156083 () Bool)

(assert (=> bs!572270 m!4156083))

(assert (=> bs!572270 m!4155147))

(assert (=> b!3650550 d!1072899))

(declare-fun d!1072901 () Bool)

(declare-fun lt!1266696 () List!38619)

(assert (=> d!1072901 (= (++!9580 lt!1266343 lt!1266696) lt!1266344)))

(declare-fun e!2260553 () List!38619)

(assert (=> d!1072901 (= lt!1266696 e!2260553)))

(declare-fun c!631113 () Bool)

(assert (=> d!1072901 (= c!631113 ((_ is Cons!38495) lt!1266343))))

(assert (=> d!1072901 (>= (size!29396 lt!1266344) (size!29396 lt!1266343))))

(assert (=> d!1072901 (= (getSuffix!1680 lt!1266344 lt!1266343) lt!1266696)))

(declare-fun b!3651272 () Bool)

(assert (=> b!3651272 (= e!2260553 (getSuffix!1680 (tail!5655 lt!1266344) (t!297482 lt!1266343)))))

(declare-fun b!3651273 () Bool)

(assert (=> b!3651273 (= e!2260553 lt!1266344)))

(assert (= (and d!1072901 c!631113) b!3651272))

(assert (= (and d!1072901 (not c!631113)) b!3651273))

(declare-fun m!4156085 () Bool)

(assert (=> d!1072901 m!4156085))

(assert (=> d!1072901 m!4155517))

(assert (=> d!1072901 m!4155089))

(assert (=> b!3651272 m!4155537))

(assert (=> b!3651272 m!4155537))

(declare-fun m!4156087 () Bool)

(assert (=> b!3651272 m!4156087))

(assert (=> b!3650550 d!1072901))

(declare-fun d!1072903 () Bool)

(assert (=> d!1072903 (not (matchR!5092 (regex!5764 rule!403) lt!1266331))))

(declare-fun lt!1266699 () Unit!55488)

(declare-fun choose!21534 (Regex!10523 List!38619 C!21232) Unit!55488)

(assert (=> d!1072903 (= lt!1266699 (choose!21534 (regex!5764 rule!403) lt!1266331 lt!1266332))))

(assert (=> d!1072903 (validRegex!4819 (regex!5764 rule!403))))

(assert (=> d!1072903 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!712 (regex!5764 rule!403) lt!1266331 lt!1266332) lt!1266699)))

(declare-fun bs!572271 () Bool)

(assert (= bs!572271 d!1072903))

(assert (=> bs!572271 m!4155113))

(declare-fun m!4156089 () Bool)

(assert (=> bs!572271 m!4156089))

(declare-fun m!4156091 () Bool)

(assert (=> bs!572271 m!4156091))

(assert (=> b!3650531 d!1072903))

(declare-fun d!1072905 () Bool)

(declare-fun res!1481333 () Bool)

(declare-fun e!2260556 () Bool)

(assert (=> d!1072905 (=> (not res!1481333) (not e!2260556))))

(assert (=> d!1072905 (= res!1481333 (not (isEmpty!22812 (originalCharacters!6478 token!511))))))

(assert (=> d!1072905 (= (inv!51947 token!511) e!2260556)))

(declare-fun b!3651278 () Bool)

(declare-fun res!1481334 () Bool)

(assert (=> b!3651278 (=> (not res!1481334) (not e!2260556))))

(assert (=> b!3651278 (= res!1481334 (= (originalCharacters!6478 token!511) (list!14266 (dynLambda!16788 (toChars!7915 (transformation!5764 (rule!8562 token!511))) (value!184734 token!511)))))))

(declare-fun b!3651279 () Bool)

(assert (=> b!3651279 (= e!2260556 (= (size!29395 token!511) (size!29396 (originalCharacters!6478 token!511))))))

(assert (= (and d!1072905 res!1481333) b!3651278))

(assert (= (and b!3651278 res!1481334) b!3651279))

(declare-fun b_lambda!108289 () Bool)

(assert (=> (not b_lambda!108289) (not b!3651278)))

(assert (=> b!3651278 t!297566))

(declare-fun b_and!270143 () Bool)

(assert (= b_and!270115 (and (=> t!297566 result!256570) b_and!270143)))

(assert (=> b!3651278 t!297568))

(declare-fun b_and!270145 () Bool)

(assert (= b_and!270117 (and (=> t!297568 result!256572) b_and!270145)))

(assert (=> b!3651278 t!297570))

(declare-fun b_and!270147 () Bool)

(assert (= b_and!270119 (and (=> t!297570 result!256574) b_and!270147)))

(assert (=> b!3651278 t!297572))

(declare-fun b_and!270149 () Bool)

(assert (= b_and!270121 (and (=> t!297572 result!256576) b_and!270149)))

(declare-fun m!4156093 () Bool)

(assert (=> d!1072905 m!4156093))

(assert (=> b!3651278 m!4155943))

(assert (=> b!3651278 m!4155943))

(declare-fun m!4156095 () Bool)

(assert (=> b!3651278 m!4156095))

(declare-fun m!4156097 () Bool)

(assert (=> b!3651279 m!4156097))

(assert (=> start!341338 d!1072905))

(declare-fun b!3651280 () Bool)

(declare-fun e!2260557 () Bool)

(assert (=> b!3651280 (= e!2260557 (nullable!3657 (regex!5764 rule!403)))))

(declare-fun b!3651281 () Bool)

(declare-fun res!1481341 () Bool)

(declare-fun e!2260563 () Bool)

(assert (=> b!3651281 (=> res!1481341 e!2260563)))

(declare-fun e!2260558 () Bool)

(assert (=> b!3651281 (= res!1481341 e!2260558)))

(declare-fun res!1481339 () Bool)

(assert (=> b!3651281 (=> (not res!1481339) (not e!2260558))))

(declare-fun lt!1266700 () Bool)

(assert (=> b!3651281 (= res!1481339 lt!1266700)))

(declare-fun b!3651282 () Bool)

(declare-fun res!1481336 () Bool)

(assert (=> b!3651282 (=> (not res!1481336) (not e!2260558))))

(declare-fun call!263894 () Bool)

(assert (=> b!3651282 (= res!1481336 (not call!263894))))

(declare-fun b!3651283 () Bool)

(declare-fun res!1481338 () Bool)

(assert (=> b!3651283 (=> res!1481338 e!2260563)))

(assert (=> b!3651283 (= res!1481338 (not ((_ is ElementMatch!10523) (regex!5764 rule!403))))))

(declare-fun e!2260559 () Bool)

(assert (=> b!3651283 (= e!2260559 e!2260563)))

(declare-fun b!3651285 () Bool)

(assert (=> b!3651285 (= e!2260559 (not lt!1266700))))

(declare-fun b!3651286 () Bool)

(declare-fun e!2260560 () Bool)

(assert (=> b!3651286 (= e!2260560 (not (= (head!7778 lt!1266331) (c!630974 (regex!5764 rule!403)))))))

(declare-fun b!3651287 () Bool)

(declare-fun e!2260561 () Bool)

(assert (=> b!3651287 (= e!2260563 e!2260561)))

(declare-fun res!1481337 () Bool)

(assert (=> b!3651287 (=> (not res!1481337) (not e!2260561))))

(assert (=> b!3651287 (= res!1481337 (not lt!1266700))))

(declare-fun b!3651288 () Bool)

(declare-fun res!1481340 () Bool)

(assert (=> b!3651288 (=> res!1481340 e!2260560)))

(assert (=> b!3651288 (= res!1481340 (not (isEmpty!22812 (tail!5655 lt!1266331))))))

(declare-fun b!3651289 () Bool)

(assert (=> b!3651289 (= e!2260557 (matchR!5092 (derivativeStep!3206 (regex!5764 rule!403) (head!7778 lt!1266331)) (tail!5655 lt!1266331)))))

(declare-fun b!3651290 () Bool)

(assert (=> b!3651290 (= e!2260558 (= (head!7778 lt!1266331) (c!630974 (regex!5764 rule!403))))))

(declare-fun b!3651291 () Bool)

(declare-fun e!2260562 () Bool)

(assert (=> b!3651291 (= e!2260562 (= lt!1266700 call!263894))))

(declare-fun b!3651292 () Bool)

(assert (=> b!3651292 (= e!2260561 e!2260560)))

(declare-fun res!1481342 () Bool)

(assert (=> b!3651292 (=> res!1481342 e!2260560)))

(assert (=> b!3651292 (= res!1481342 call!263894)))

(declare-fun d!1072907 () Bool)

(assert (=> d!1072907 e!2260562))

(declare-fun c!631117 () Bool)

(assert (=> d!1072907 (= c!631117 ((_ is EmptyExpr!10523) (regex!5764 rule!403)))))

(assert (=> d!1072907 (= lt!1266700 e!2260557)))

(declare-fun c!631115 () Bool)

(assert (=> d!1072907 (= c!631115 (isEmpty!22812 lt!1266331))))

(assert (=> d!1072907 (validRegex!4819 (regex!5764 rule!403))))

(assert (=> d!1072907 (= (matchR!5092 (regex!5764 rule!403) lt!1266331) lt!1266700)))

(declare-fun b!3651284 () Bool)

(declare-fun res!1481335 () Bool)

(assert (=> b!3651284 (=> (not res!1481335) (not e!2260558))))

(assert (=> b!3651284 (= res!1481335 (isEmpty!22812 (tail!5655 lt!1266331)))))

(declare-fun bm!263889 () Bool)

(assert (=> bm!263889 (= call!263894 (isEmpty!22812 lt!1266331))))

(declare-fun b!3651293 () Bool)

(assert (=> b!3651293 (= e!2260562 e!2260559)))

(declare-fun c!631116 () Bool)

(assert (=> b!3651293 (= c!631116 ((_ is EmptyLang!10523) (regex!5764 rule!403)))))

(assert (= (and d!1072907 c!631115) b!3651280))

(assert (= (and d!1072907 (not c!631115)) b!3651289))

(assert (= (and d!1072907 c!631117) b!3651291))

(assert (= (and d!1072907 (not c!631117)) b!3651293))

(assert (= (and b!3651293 c!631116) b!3651285))

(assert (= (and b!3651293 (not c!631116)) b!3651283))

(assert (= (and b!3651283 (not res!1481338)) b!3651281))

(assert (= (and b!3651281 res!1481339) b!3651282))

(assert (= (and b!3651282 res!1481336) b!3651284))

(assert (= (and b!3651284 res!1481335) b!3651290))

(assert (= (and b!3651281 (not res!1481341)) b!3651287))

(assert (= (and b!3651287 res!1481337) b!3651292))

(assert (= (and b!3651292 (not res!1481342)) b!3651288))

(assert (= (and b!3651288 (not res!1481340)) b!3651286))

(assert (= (or b!3651291 b!3651292 b!3651282) bm!263889))

(assert (=> b!3651284 m!4155717))

(assert (=> b!3651284 m!4155717))

(declare-fun m!4156099 () Bool)

(assert (=> b!3651284 m!4156099))

(declare-fun m!4156101 () Bool)

(assert (=> bm!263889 m!4156101))

(assert (=> b!3651290 m!4155721))

(assert (=> d!1072907 m!4156101))

(assert (=> d!1072907 m!4156091))

(assert (=> b!3651288 m!4155717))

(assert (=> b!3651288 m!4155717))

(assert (=> b!3651288 m!4156099))

(assert (=> b!3651289 m!4155721))

(assert (=> b!3651289 m!4155721))

(declare-fun m!4156103 () Bool)

(assert (=> b!3651289 m!4156103))

(assert (=> b!3651289 m!4155717))

(assert (=> b!3651289 m!4156103))

(assert (=> b!3651289 m!4155717))

(declare-fun m!4156105 () Bool)

(assert (=> b!3651289 m!4156105))

(assert (=> b!3651286 m!4155721))

(declare-fun m!4156107 () Bool)

(assert (=> b!3651280 m!4156107))

(assert (=> b!3650533 d!1072907))

(declare-fun d!1072909 () Bool)

(declare-fun res!1481347 () Bool)

(declare-fun e!2260566 () Bool)

(assert (=> d!1072909 (=> (not res!1481347) (not e!2260566))))

(assert (=> d!1072909 (= res!1481347 (validRegex!4819 (regex!5764 rule!403)))))

(assert (=> d!1072909 (= (ruleValid!2028 thiss!23823 rule!403) e!2260566)))

(declare-fun b!3651298 () Bool)

(declare-fun res!1481348 () Bool)

(assert (=> b!3651298 (=> (not res!1481348) (not e!2260566))))

(assert (=> b!3651298 (= res!1481348 (not (nullable!3657 (regex!5764 rule!403))))))

(declare-fun b!3651299 () Bool)

(assert (=> b!3651299 (= e!2260566 (not (= (tag!6528 rule!403) (String!43305 ""))))))

(assert (= (and d!1072909 res!1481347) b!3651298))

(assert (= (and b!3651298 res!1481348) b!3651299))

(assert (=> d!1072909 m!4156091))

(assert (=> b!3651298 m!4156107))

(assert (=> b!3650533 d!1072909))

(declare-fun d!1072911 () Bool)

(assert (=> d!1072911 (ruleValid!2028 thiss!23823 rule!403)))

(declare-fun lt!1266703 () Unit!55488)

(declare-fun choose!21535 (LexerInterface!5353 Rule!11328 List!38621) Unit!55488)

(assert (=> d!1072911 (= lt!1266703 (choose!21535 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1072911 (contains!7594 rules!3307 rule!403)))

(assert (=> d!1072911 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1182 thiss!23823 rule!403 rules!3307) lt!1266703)))

(declare-fun bs!572272 () Bool)

(assert (= bs!572272 d!1072911))

(assert (=> bs!572272 m!4155115))

(declare-fun m!4156109 () Bool)

(assert (=> bs!572272 m!4156109))

(assert (=> bs!572272 m!4155173))

(assert (=> b!3650533 d!1072911))

(declare-fun d!1072913 () Bool)

(assert (=> d!1072913 (not (matchR!5092 (regex!5764 (rule!8562 (_1!22316 lt!1266357))) lt!1266343))))

(declare-fun lt!1266704 () Unit!55488)

(assert (=> d!1072913 (= lt!1266704 (choose!21534 (regex!5764 (rule!8562 (_1!22316 lt!1266357))) lt!1266343 lt!1266332))))

(assert (=> d!1072913 (validRegex!4819 (regex!5764 (rule!8562 (_1!22316 lt!1266357))))))

(assert (=> d!1072913 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!712 (regex!5764 (rule!8562 (_1!22316 lt!1266357))) lt!1266343 lt!1266332) lt!1266704)))

(declare-fun bs!572273 () Bool)

(assert (= bs!572273 d!1072913))

(assert (=> bs!572273 m!4155091))

(declare-fun m!4156111 () Bool)

(assert (=> bs!572273 m!4156111))

(assert (=> bs!572273 m!4155771))

(assert (=> bm!263831 d!1072913))

(declare-fun b!3651310 () Bool)

(declare-fun e!2260569 () Bool)

(assert (=> b!3651310 (= e!2260569 tp_is_empty!18129)))

(declare-fun b!3651311 () Bool)

(declare-fun tp!1112977 () Bool)

(declare-fun tp!1112978 () Bool)

(assert (=> b!3651311 (= e!2260569 (and tp!1112977 tp!1112978))))

(declare-fun b!3651313 () Bool)

(declare-fun tp!1112981 () Bool)

(declare-fun tp!1112979 () Bool)

(assert (=> b!3651313 (= e!2260569 (and tp!1112981 tp!1112979))))

(assert (=> b!3650552 (= tp!1112897 e!2260569)))

(declare-fun b!3651312 () Bool)

(declare-fun tp!1112980 () Bool)

(assert (=> b!3651312 (= e!2260569 tp!1112980)))

(assert (= (and b!3650552 ((_ is ElementMatch!10523) (regex!5764 rule!403))) b!3651310))

(assert (= (and b!3650552 ((_ is Concat!16518) (regex!5764 rule!403))) b!3651311))

(assert (= (and b!3650552 ((_ is Star!10523) (regex!5764 rule!403))) b!3651312))

(assert (= (and b!3650552 ((_ is Union!10523) (regex!5764 rule!403))) b!3651313))

(declare-fun b!3651318 () Bool)

(declare-fun e!2260572 () Bool)

(declare-fun tp!1112984 () Bool)

(assert (=> b!3651318 (= e!2260572 (and tp_is_empty!18129 tp!1112984))))

(assert (=> b!3650536 (= tp!1112910 e!2260572)))

(assert (= (and b!3650536 ((_ is Cons!38495) (originalCharacters!6478 token!511))) b!3651318))

(declare-fun b!3651319 () Bool)

(declare-fun e!2260573 () Bool)

(assert (=> b!3651319 (= e!2260573 tp_is_empty!18129)))

(declare-fun b!3651320 () Bool)

(declare-fun tp!1112985 () Bool)

(declare-fun tp!1112986 () Bool)

(assert (=> b!3651320 (= e!2260573 (and tp!1112985 tp!1112986))))

(declare-fun b!3651322 () Bool)

(declare-fun tp!1112989 () Bool)

(declare-fun tp!1112987 () Bool)

(assert (=> b!3651322 (= e!2260573 (and tp!1112989 tp!1112987))))

(assert (=> b!3650540 (= tp!1112909 e!2260573)))

(declare-fun b!3651321 () Bool)

(declare-fun tp!1112988 () Bool)

(assert (=> b!3651321 (= e!2260573 tp!1112988)))

(assert (= (and b!3650540 ((_ is ElementMatch!10523) (regex!5764 anOtherTypeRule!33))) b!3651319))

(assert (= (and b!3650540 ((_ is Concat!16518) (regex!5764 anOtherTypeRule!33))) b!3651320))

(assert (= (and b!3650540 ((_ is Star!10523) (regex!5764 anOtherTypeRule!33))) b!3651321))

(assert (= (and b!3650540 ((_ is Union!10523) (regex!5764 anOtherTypeRule!33))) b!3651322))

(declare-fun b!3651323 () Bool)

(declare-fun e!2260574 () Bool)

(assert (=> b!3651323 (= e!2260574 tp_is_empty!18129)))

(declare-fun b!3651324 () Bool)

(declare-fun tp!1112990 () Bool)

(declare-fun tp!1112991 () Bool)

(assert (=> b!3651324 (= e!2260574 (and tp!1112990 tp!1112991))))

(declare-fun b!3651326 () Bool)

(declare-fun tp!1112994 () Bool)

(declare-fun tp!1112992 () Bool)

(assert (=> b!3651326 (= e!2260574 (and tp!1112994 tp!1112992))))

(assert (=> b!3650539 (= tp!1112906 e!2260574)))

(declare-fun b!3651325 () Bool)

(declare-fun tp!1112993 () Bool)

(assert (=> b!3651325 (= e!2260574 tp!1112993)))

(assert (= (and b!3650539 ((_ is ElementMatch!10523) (regex!5764 (h!43917 rules!3307)))) b!3651323))

(assert (= (and b!3650539 ((_ is Concat!16518) (regex!5764 (h!43917 rules!3307)))) b!3651324))

(assert (= (and b!3650539 ((_ is Star!10523) (regex!5764 (h!43917 rules!3307)))) b!3651325))

(assert (= (and b!3650539 ((_ is Union!10523) (regex!5764 (h!43917 rules!3307)))) b!3651326))

(declare-fun b!3651327 () Bool)

(declare-fun e!2260575 () Bool)

(assert (=> b!3651327 (= e!2260575 tp_is_empty!18129)))

(declare-fun b!3651328 () Bool)

(declare-fun tp!1112995 () Bool)

(declare-fun tp!1112996 () Bool)

(assert (=> b!3651328 (= e!2260575 (and tp!1112995 tp!1112996))))

(declare-fun b!3651330 () Bool)

(declare-fun tp!1112999 () Bool)

(declare-fun tp!1112997 () Bool)

(assert (=> b!3651330 (= e!2260575 (and tp!1112999 tp!1112997))))

(assert (=> b!3650565 (= tp!1112905 e!2260575)))

(declare-fun b!3651329 () Bool)

(declare-fun tp!1112998 () Bool)

(assert (=> b!3651329 (= e!2260575 tp!1112998)))

(assert (= (and b!3650565 ((_ is ElementMatch!10523) (regex!5764 (rule!8562 token!511)))) b!3651327))

(assert (= (and b!3650565 ((_ is Concat!16518) (regex!5764 (rule!8562 token!511)))) b!3651328))

(assert (= (and b!3650565 ((_ is Star!10523) (regex!5764 (rule!8562 token!511)))) b!3651329))

(assert (= (and b!3650565 ((_ is Union!10523) (regex!5764 (rule!8562 token!511)))) b!3651330))

(declare-fun b!3651331 () Bool)

(declare-fun e!2260576 () Bool)

(declare-fun tp!1113000 () Bool)

(assert (=> b!3651331 (= e!2260576 (and tp_is_empty!18129 tp!1113000))))

(assert (=> b!3650548 (= tp!1112903 e!2260576)))

(assert (= (and b!3650548 ((_ is Cons!38495) (t!297482 suffix!1395))) b!3651331))

(declare-fun b!3651342 () Bool)

(declare-fun b_free!96029 () Bool)

(declare-fun b_next!96733 () Bool)

(assert (=> b!3651342 (= b_free!96029 (not b_next!96733))))

(declare-fun t!297594 () Bool)

(declare-fun tb!210729 () Bool)

(assert (=> (and b!3651342 (= (toValue!8056 (transformation!5764 (h!43917 (t!297484 rules!3307)))) (toValue!8056 (transformation!5764 (rule!8562 (_1!22316 lt!1266357))))) t!297594) tb!210729))

(declare-fun result!256610 () Bool)

(assert (= result!256610 result!256528))

(assert (=> d!1072675 t!297594))

(declare-fun t!297596 () Bool)

(declare-fun tb!210731 () Bool)

(assert (=> (and b!3651342 (= (toValue!8056 (transformation!5764 (h!43917 (t!297484 rules!3307)))) (toValue!8056 (transformation!5764 (rule!8562 (_1!22316 lt!1266357))))) t!297596) tb!210731))

(declare-fun result!256612 () Bool)

(assert (= result!256612 result!256518))

(assert (=> d!1072731 t!297596))

(declare-fun tb!210733 () Bool)

(declare-fun t!297598 () Bool)

(assert (=> (and b!3651342 (= (toValue!8056 (transformation!5764 (h!43917 (t!297484 rules!3307)))) (toValue!8056 (transformation!5764 (rule!8562 (_1!22316 lt!1266357))))) t!297598) tb!210733))

(declare-fun result!256614 () Bool)

(assert (= result!256614 result!256596))

(assert (=> d!1072897 t!297598))

(assert (=> d!1072675 t!297596))

(assert (=> d!1072737 t!297596))

(declare-fun tp!1113011 () Bool)

(declare-fun b_and!270151 () Bool)

(assert (=> b!3651342 (= tp!1113011 (and (=> t!297598 result!256614) (=> t!297596 result!256612) (=> t!297594 result!256610) b_and!270151))))

(declare-fun b_free!96031 () Bool)

(declare-fun b_next!96735 () Bool)

(assert (=> b!3651342 (= b_free!96031 (not b_next!96735))))

(declare-fun tb!210735 () Bool)

(declare-fun t!297600 () Bool)

(assert (=> (and b!3651342 (= (toChars!7915 (transformation!5764 (h!43917 (t!297484 rules!3307)))) (toChars!7915 (transformation!5764 (rule!8562 (_1!22316 lt!1266357))))) t!297600) tb!210735))

(declare-fun result!256616 () Bool)

(assert (= result!256616 result!256536))

(assert (=> d!1072731 t!297600))

(declare-fun tb!210737 () Bool)

(declare-fun t!297602 () Bool)

(assert (=> (and b!3651342 (= (toChars!7915 (transformation!5764 (h!43917 (t!297484 rules!3307)))) (toChars!7915 (transformation!5764 (rule!8562 (_1!22316 lt!1266357))))) t!297602) tb!210737))

(declare-fun result!256618 () Bool)

(assert (= result!256618 result!256562))

(assert (=> d!1072783 t!297602))

(declare-fun t!297604 () Bool)

(declare-fun tb!210739 () Bool)

(assert (=> (and b!3651342 (= (toChars!7915 (transformation!5764 (h!43917 (t!297484 rules!3307)))) (toChars!7915 (transformation!5764 (rule!8562 token!511)))) t!297604) tb!210739))

(declare-fun result!256620 () Bool)

(assert (= result!256620 result!256570))

(assert (=> d!1072849 t!297604))

(assert (=> b!3651278 t!297604))

(declare-fun b_and!270153 () Bool)

(declare-fun tp!1113009 () Bool)

(assert (=> b!3651342 (= tp!1113009 (and (=> t!297600 result!256616) (=> t!297602 result!256618) (=> t!297604 result!256620) b_and!270153))))

(declare-fun e!2260588 () Bool)

(assert (=> b!3651342 (= e!2260588 (and tp!1113011 tp!1113009))))

(declare-fun e!2260586 () Bool)

(declare-fun b!3651341 () Bool)

(declare-fun tp!1113010 () Bool)

(assert (=> b!3651341 (= e!2260586 (and tp!1113010 (inv!51943 (tag!6528 (h!43917 (t!297484 rules!3307)))) (inv!51946 (transformation!5764 (h!43917 (t!297484 rules!3307)))) e!2260588))))

(declare-fun b!3651340 () Bool)

(declare-fun e!2260587 () Bool)

(declare-fun tp!1113012 () Bool)

(assert (=> b!3651340 (= e!2260587 (and e!2260586 tp!1113012))))

(assert (=> b!3650528 (= tp!1112901 e!2260587)))

(assert (= b!3651341 b!3651342))

(assert (= b!3651340 b!3651341))

(assert (= (and b!3650528 ((_ is Cons!38497) (t!297484 rules!3307))) b!3651340))

(declare-fun m!4156113 () Bool)

(assert (=> b!3651341 m!4156113))

(declare-fun m!4156115 () Bool)

(assert (=> b!3651341 m!4156115))

(declare-fun b_lambda!108291 () Bool)

(assert (= b_lambda!108279 (or (and b!3650564 b_free!96019 (= (toChars!7915 (transformation!5764 rule!403)) (toChars!7915 (transformation!5764 (rule!8562 token!511))))) (and b!3650535 b_free!96023 (= (toChars!7915 (transformation!5764 (h!43917 rules!3307))) (toChars!7915 (transformation!5764 (rule!8562 token!511))))) (and b!3651342 b_free!96031 (= (toChars!7915 (transformation!5764 (h!43917 (t!297484 rules!3307)))) (toChars!7915 (transformation!5764 (rule!8562 token!511))))) (and b!3650547 b_free!96011) (and b!3650567 b_free!96015 (= (toChars!7915 (transformation!5764 anOtherTypeRule!33)) (toChars!7915 (transformation!5764 (rule!8562 token!511))))) b_lambda!108291)))

(declare-fun b_lambda!108293 () Bool)

(assert (= b_lambda!108289 (or (and b!3650564 b_free!96019 (= (toChars!7915 (transformation!5764 rule!403)) (toChars!7915 (transformation!5764 (rule!8562 token!511))))) (and b!3650535 b_free!96023 (= (toChars!7915 (transformation!5764 (h!43917 rules!3307))) (toChars!7915 (transformation!5764 (rule!8562 token!511))))) (and b!3651342 b_free!96031 (= (toChars!7915 (transformation!5764 (h!43917 (t!297484 rules!3307)))) (toChars!7915 (transformation!5764 (rule!8562 token!511))))) (and b!3650547 b_free!96011) (and b!3650567 b_free!96015 (= (toChars!7915 (transformation!5764 anOtherTypeRule!33)) (toChars!7915 (transformation!5764 (rule!8562 token!511))))) b_lambda!108293)))

(check-sat (not bm!263857) (not b!3650990) (not b!3651320) (not b!3651029) (not bm!263878) (not b!3651330) (not b!3651075) (not bm!263862) (not d!1072787) b_and!270143 (not b!3651132) (not b!3651090) (not d!1072835) (not d!1072899) (not d!1072811) (not b!3651328) (not b_lambda!108287) (not b!3650885) (not b!3651272) (not b!3650597) (not d!1072841) b_and!270139 b_and!270151 (not b!3651329) (not b!3651324) (not b_next!96725) (not b!3651313) (not d!1072643) (not d!1072793) (not b!3651107) (not b!3650690) (not bm!263863) b_and!270135 tp_is_empty!18129 (not b!3651290) (not b!3651105) (not b!3651174) (not b!3650978) (not b!3650647) (not b_next!96721) b_and!270147 (not d!1072821) (not b!3651331) (not d!1072831) (not b!3650976) (not b!3651318) (not bm!263884) (not d!1072849) (not d!1072845) (not b!3651279) (not b!3651072) (not b!3651312) (not d!1072807) (not b!3651064) (not d!1072851) (not b!3650889) (not b!3651261) (not b_lambda!108267) (not d!1072743) (not d!1072675) (not b!3651020) (not b!3650989) (not b!3650890) (not b!3650977) (not d!1072775) (not d!1072817) (not b!3651134) b_and!270149 (not b!3651259) (not b_next!96717) (not b!3651086) (not b!3651265) (not d!1072791) (not b!3651109) (not b!3650636) (not b_next!96719) (not b!3651000) (not b_lambda!108259) (not d!1072635) (not b!3651325) (not b!3651023) (not b_next!96733) (not bm!263882) (not d!1072801) (not b!3651135) (not b!3651263) (not b!3651289) (not b!3651004) (not b!3651322) (not bm!263881) (not d!1072909) (not b!3650902) (not b!3651130) (not b!3651133) (not b!3651267) (not b!3651058) (not b!3651006) (not b!3650995) (not d!1072735) (not b!3651129) b_and!270145 b_and!270141 (not d!1072871) (not b_next!96727) (not d!1072829) (not d!1072779) (not d!1072827) (not b!3651026) (not b!3651288) (not d!1072913) (not b!3651280) (not b_next!96723) (not b!3651080) (not d!1072907) (not b!3650883) (not b!3651019) (not b!3651311) (not d!1072905) (not b!3651341) (not tb!210669) (not d!1072815) (not b_lambda!108261) (not b!3650579) (not d!1072623) (not b!3650993) (not b!3650888) (not b_lambda!108291) (not b!3650864) (not b!3650887) (not b!3650580) (not b!3651131) (not b!3651136) (not b!3651081) (not b!3651082) (not b!3651278) (not d!1072825) (not bm!263858) (not b!3651005) (not b_lambda!108265) (not d!1072731) (not b!3650582) (not d!1072667) (not d!1072747) (not b!3651003) (not b!3650692) (not b!3651067) (not b!3651264) (not d!1072809) (not b!3651260) (not b_next!96735) (not b!3651138) (not b!3651298) (not b!3651262) (not d!1072873) (not d!1072903) (not b!3651092) (not d!1072799) (not b!3651340) (not b!3651066) (not d!1072729) (not d!1072853) (not b!3650891) (not d!1072795) (not b!3651001) b_and!270137 (not b_lambda!108263) (not b!3651321) (not d!1072901) (not tb!210661) (not d!1072857) (not tb!210693) (not b_next!96715) (not b_lambda!108293) (not b_next!96713) (not b!3651284) b_and!270153 (not b!3651286) (not tb!210721) (not b!3651326) (not d!1072785) (not b!3651088) (not bm!263859) (not b!3651062) (not d!1072741) (not d!1072733) (not d!1072669) (not bm!263879) (not b!3650903) (not b!3650886) (not bm!263861) (not d!1072847) (not b!3651027) (not b!3650901) (not b!3651114) (not b!3650994) (not tb!210653) (not bm!263883) (not bm!263889) (not bm!263873) (not b!3651068) (not d!1072783) (not b!3651091) (not d!1072911) (not b!3651127) (not tb!210701) (not b_lambda!108277))
(check-sat b_and!270143 b_and!270135 (not b_next!96719) (not b_next!96733) (not b_next!96723) (not b_next!96735) b_and!270137 b_and!270153 b_and!270139 b_and!270151 (not b_next!96725) (not b_next!96721) b_and!270147 b_and!270149 (not b_next!96717) b_and!270145 b_and!270141 (not b_next!96727) (not b_next!96715) (not b_next!96713))
