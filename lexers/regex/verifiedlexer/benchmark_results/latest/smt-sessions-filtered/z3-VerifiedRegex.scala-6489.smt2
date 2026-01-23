; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!341150 () Bool)

(assert start!341150)

(declare-fun b!3648958 () Bool)

(declare-fun b_free!95905 () Bool)

(declare-fun b_next!96609 () Bool)

(assert (=> b!3648958 (= b_free!95905 (not b_next!96609))))

(declare-fun tp!1112525 () Bool)

(declare-fun b_and!269739 () Bool)

(assert (=> b!3648958 (= tp!1112525 b_and!269739)))

(declare-fun b_free!95907 () Bool)

(declare-fun b_next!96611 () Bool)

(assert (=> b!3648958 (= b_free!95907 (not b_next!96611))))

(declare-fun tp!1112530 () Bool)

(declare-fun b_and!269741 () Bool)

(assert (=> b!3648958 (= tp!1112530 b_and!269741)))

(declare-fun b!3648982 () Bool)

(declare-fun b_free!95909 () Bool)

(declare-fun b_next!96613 () Bool)

(assert (=> b!3648982 (= b_free!95909 (not b_next!96613))))

(declare-fun tp!1112527 () Bool)

(declare-fun b_and!269743 () Bool)

(assert (=> b!3648982 (= tp!1112527 b_and!269743)))

(declare-fun b_free!95911 () Bool)

(declare-fun b_next!96615 () Bool)

(assert (=> b!3648982 (= b_free!95911 (not b_next!96615))))

(declare-fun tp!1112537 () Bool)

(declare-fun b_and!269745 () Bool)

(assert (=> b!3648982 (= tp!1112537 b_and!269745)))

(declare-fun b!3648984 () Bool)

(declare-fun b_free!95913 () Bool)

(declare-fun b_next!96617 () Bool)

(assert (=> b!3648984 (= b_free!95913 (not b_next!96617))))

(declare-fun tp!1112538 () Bool)

(declare-fun b_and!269747 () Bool)

(assert (=> b!3648984 (= tp!1112538 b_and!269747)))

(declare-fun b_free!95915 () Bool)

(declare-fun b_next!96619 () Bool)

(assert (=> b!3648984 (= b_free!95915 (not b_next!96619))))

(declare-fun tp!1112536 () Bool)

(declare-fun b_and!269749 () Bool)

(assert (=> b!3648984 (= tp!1112536 b_and!269749)))

(declare-fun b!3648975 () Bool)

(declare-fun b_free!95917 () Bool)

(declare-fun b_next!96621 () Bool)

(assert (=> b!3648975 (= b_free!95917 (not b_next!96621))))

(declare-fun tp!1112532 () Bool)

(declare-fun b_and!269751 () Bool)

(assert (=> b!3648975 (= tp!1112532 b_and!269751)))

(declare-fun b_free!95919 () Bool)

(declare-fun b_next!96623 () Bool)

(assert (=> b!3648975 (= b_free!95919 (not b_next!96623))))

(declare-fun tp!1112535 () Bool)

(declare-fun b_and!269753 () Bool)

(assert (=> b!3648975 (= tp!1112535 b_and!269753)))

(declare-fun b!3648942 () Bool)

(declare-fun e!2259048 () Bool)

(declare-fun e!2259049 () Bool)

(assert (=> b!3648942 (= e!2259048 e!2259049)))

(declare-fun res!1480115 () Bool)

(assert (=> b!3648942 (=> res!1480115 e!2259049)))

(declare-datatypes ((List!38597 0))(
  ( (Nil!38473) (Cons!38473 (h!43893 (_ BitVec 16)) (t!297340 List!38597)) )
))
(declare-datatypes ((TokenValue!5988 0))(
  ( (FloatLiteralValue!11976 (text!42361 List!38597)) (TokenValueExt!5987 (__x!24193 Int)) (Broken!29940 (value!184537 List!38597)) (Object!6111) (End!5988) (Def!5988) (Underscore!5988) (Match!5988) (Else!5988) (Error!5988) (Case!5988) (If!5988) (Extends!5988) (Abstract!5988) (Class!5988) (Val!5988) (DelimiterValue!11976 (del!6048 List!38597)) (KeywordValue!5994 (value!184538 List!38597)) (CommentValue!11976 (value!184539 List!38597)) (WhitespaceValue!11976 (value!184540 List!38597)) (IndentationValue!5988 (value!184541 List!38597)) (String!43273) (Int32!5988) (Broken!29941 (value!184542 List!38597)) (Boolean!5989) (Unit!55427) (OperatorValue!5991 (op!6048 List!38597)) (IdentifierValue!11976 (value!184543 List!38597)) (IdentifierValue!11977 (value!184544 List!38597)) (WhitespaceValue!11977 (value!184545 List!38597)) (True!11976) (False!11976) (Broken!29942 (value!184546 List!38597)) (Broken!29943 (value!184547 List!38597)) (True!11977) (RightBrace!5988) (RightBracket!5988) (Colon!5988) (Null!5988) (Comma!5988) (LeftBracket!5988) (False!11977) (LeftBrace!5988) (ImaginaryLiteralValue!5988 (text!42362 List!38597)) (StringLiteralValue!17964 (value!184548 List!38597)) (EOFValue!5988 (value!184549 List!38597)) (IdentValue!5988 (value!184550 List!38597)) (DelimiterValue!11977 (value!184551 List!38597)) (DedentValue!5988 (value!184552 List!38597)) (NewLineValue!5988 (value!184553 List!38597)) (IntegerValue!17964 (value!184554 (_ BitVec 32)) (text!42363 List!38597)) (IntegerValue!17965 (value!184555 Int) (text!42364 List!38597)) (Times!5988) (Or!5988) (Equal!5988) (Minus!5988) (Broken!29944 (value!184556 List!38597)) (And!5988) (Div!5988) (LessEqual!5988) (Mod!5988) (Concat!16505) (Not!5988) (Plus!5988) (SpaceValue!5988 (value!184557 List!38597)) (IntegerValue!17966 (value!184558 Int) (text!42365 List!38597)) (StringLiteralValue!17965 (text!42366 List!38597)) (FloatLiteralValue!11977 (text!42367 List!38597)) (BytesLiteralValue!5988 (value!184559 List!38597)) (CommentValue!11977 (value!184560 List!38597)) (StringLiteralValue!17966 (value!184561 List!38597)) (ErrorTokenValue!5988 (msg!6049 List!38597)) )
))
(declare-datatypes ((C!21220 0))(
  ( (C!21221 (val!12658 Int)) )
))
(declare-datatypes ((Regex!10517 0))(
  ( (ElementMatch!10517 (c!630728 C!21220)) (Concat!16506 (regOne!21546 Regex!10517) (regTwo!21546 Regex!10517)) (EmptyExpr!10517) (Star!10517 (reg!10846 Regex!10517)) (EmptyLang!10517) (Union!10517 (regOne!21547 Regex!10517) (regTwo!21547 Regex!10517)) )
))
(declare-datatypes ((String!43274 0))(
  ( (String!43275 (value!184562 String)) )
))
(declare-datatypes ((List!38598 0))(
  ( (Nil!38474) (Cons!38474 (h!43894 C!21220) (t!297341 List!38598)) )
))
(declare-datatypes ((IArray!23515 0))(
  ( (IArray!23516 (innerList!11815 List!38598)) )
))
(declare-datatypes ((Conc!11755 0))(
  ( (Node!11755 (left!30036 Conc!11755) (right!30366 Conc!11755) (csize!23740 Int) (cheight!11966 Int)) (Leaf!18245 (xs!14957 IArray!23515) (csize!23741 Int)) (Empty!11755) )
))
(declare-datatypes ((BalanceConc!23124 0))(
  ( (BalanceConc!23125 (c!630729 Conc!11755)) )
))
(declare-datatypes ((TokenValueInjection!11404 0))(
  ( (TokenValueInjection!11405 (toValue!8050 Int) (toChars!7909 Int)) )
))
(declare-datatypes ((Rule!11316 0))(
  ( (Rule!11317 (regex!5758 Regex!10517) (tag!6520 String!43274) (isSeparator!5758 Bool) (transformation!5758 TokenValueInjection!11404)) )
))
(declare-fun rule!403 () Rule!11316)

(assert (=> b!3648942 (= res!1480115 (not (isSeparator!5758 rule!403)))))

(declare-fun lt!1265309 () List!38598)

(declare-fun lt!1265305 () C!21220)

(declare-fun contains!7581 (List!38598 C!21220) Bool)

(assert (=> b!3648942 (contains!7581 lt!1265309 lt!1265305)))

(declare-fun lt!1265295 () List!38598)

(declare-fun suffix!1395 () List!38598)

(declare-datatypes ((Unit!55428 0))(
  ( (Unit!55429) )
))
(declare-fun lt!1265301 () Unit!55428)

(declare-fun lt!1265302 () List!38598)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!66 (List!38598 List!38598 List!38598 List!38598) Unit!55428)

(assert (=> b!3648942 (= lt!1265301 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!66 lt!1265295 suffix!1395 lt!1265309 lt!1265302))))

(declare-fun b!3648943 () Bool)

(declare-fun res!1480118 () Bool)

(declare-fun e!2259051 () Bool)

(assert (=> b!3648943 (=> res!1480118 e!2259051)))

(declare-datatypes ((List!38599 0))(
  ( (Nil!38475) (Cons!38475 (h!43895 Rule!11316) (t!297342 List!38599)) )
))
(declare-fun rules!3307 () List!38599)

(declare-fun sepAndNonSepRulesDisjointChars!1926 (List!38599 List!38599) Bool)

(assert (=> b!3648943 (= res!1480118 (not (sepAndNonSepRulesDisjointChars!1926 rules!3307 rules!3307)))))

(declare-fun b!3648944 () Bool)

(declare-fun e!2259068 () Bool)

(assert (=> b!3648944 (= e!2259051 e!2259068)))

(declare-fun res!1480103 () Bool)

(assert (=> b!3648944 (=> res!1480103 e!2259068)))

(declare-fun isPrefix!3121 (List!38598 List!38598) Bool)

(assert (=> b!3648944 (= res!1480103 (not (isPrefix!3121 lt!1265309 lt!1265302)))))

(declare-datatypes ((Token!10882 0))(
  ( (Token!10883 (value!184563 TokenValue!5988) (rule!8554 Rule!11316) (size!29375 Int) (originalCharacters!6472 List!38598)) )
))
(declare-datatypes ((tuple2!38344 0))(
  ( (tuple2!38345 (_1!22306 Token!10882) (_2!22306 List!38598)) )
))
(declare-fun lt!1265311 () tuple2!38344)

(declare-fun ++!9574 (List!38598 List!38598) List!38598)

(assert (=> b!3648944 (isPrefix!3121 lt!1265309 (++!9574 lt!1265309 (_2!22306 lt!1265311)))))

(declare-fun lt!1265314 () Unit!55428)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2040 (List!38598 List!38598) Unit!55428)

(assert (=> b!3648944 (= lt!1265314 (lemmaConcatTwoListThenFirstIsPrefix!2040 lt!1265309 (_2!22306 lt!1265311)))))

(declare-fun lt!1265283 () BalanceConc!23124)

(declare-fun list!14256 (BalanceConc!23124) List!38598)

(assert (=> b!3648944 (= lt!1265309 (list!14256 lt!1265283))))

(declare-fun charsOf!3772 (Token!10882) BalanceConc!23124)

(assert (=> b!3648944 (= lt!1265283 (charsOf!3772 (_1!22306 lt!1265311)))))

(declare-fun e!2259058 () Bool)

(assert (=> b!3648944 e!2259058))

(declare-fun res!1480112 () Bool)

(assert (=> b!3648944 (=> (not res!1480112) (not e!2259058))))

(declare-datatypes ((Option!8144 0))(
  ( (None!8143) (Some!8143 (v!37999 Rule!11316)) )
))
(declare-fun lt!1265312 () Option!8144)

(declare-fun isDefined!6376 (Option!8144) Bool)

(assert (=> b!3648944 (= res!1480112 (isDefined!6376 lt!1265312))))

(declare-datatypes ((LexerInterface!5347 0))(
  ( (LexerInterfaceExt!5344 (__x!24194 Int)) (Lexer!5345) )
))
(declare-fun thiss!23823 () LexerInterface!5347)

(declare-fun getRuleFromTag!1362 (LexerInterface!5347 List!38599 String!43274) Option!8144)

(assert (=> b!3648944 (= lt!1265312 (getRuleFromTag!1362 thiss!23823 rules!3307 (tag!6520 (rule!8554 (_1!22306 lt!1265311)))))))

(declare-fun lt!1265310 () Unit!55428)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1362 (LexerInterface!5347 List!38599 List!38598 Token!10882) Unit!55428)

(assert (=> b!3648944 (= lt!1265310 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1362 thiss!23823 rules!3307 lt!1265302 (_1!22306 lt!1265311)))))

(declare-datatypes ((Option!8145 0))(
  ( (None!8144) (Some!8144 (v!38000 tuple2!38344)) )
))
(declare-fun lt!1265320 () Option!8145)

(declare-fun get!12633 (Option!8145) tuple2!38344)

(assert (=> b!3648944 (= lt!1265311 (get!12633 lt!1265320))))

(declare-fun lt!1265313 () Unit!55428)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1025 (LexerInterface!5347 List!38599 List!38598 List!38598) Unit!55428)

(assert (=> b!3648944 (= lt!1265313 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1025 thiss!23823 rules!3307 lt!1265295 suffix!1395))))

(declare-fun maxPrefix!2881 (LexerInterface!5347 List!38599 List!38598) Option!8145)

(assert (=> b!3648944 (= lt!1265320 (maxPrefix!2881 thiss!23823 rules!3307 lt!1265302))))

(assert (=> b!3648944 (isPrefix!3121 lt!1265295 lt!1265302)))

(declare-fun lt!1265308 () Unit!55428)

(assert (=> b!3648944 (= lt!1265308 (lemmaConcatTwoListThenFirstIsPrefix!2040 lt!1265295 suffix!1395))))

(assert (=> b!3648944 (= lt!1265302 (++!9574 lt!1265295 suffix!1395))))

(declare-fun b!3648945 () Bool)

(declare-fun res!1480101 () Bool)

(declare-fun e!2259062 () Bool)

(assert (=> b!3648945 (=> res!1480101 e!2259062)))

(declare-fun isEmpty!22796 (List!38598) Bool)

(assert (=> b!3648945 (= res!1480101 (isEmpty!22796 suffix!1395))))

(declare-fun b!3648946 () Bool)

(declare-fun res!1480106 () Bool)

(declare-fun e!2259056 () Bool)

(assert (=> b!3648946 (=> (not res!1480106) (not e!2259056))))

(declare-fun anOtherTypeRule!33 () Rule!11316)

(declare-fun contains!7582 (List!38599 Rule!11316) Bool)

(assert (=> b!3648946 (= res!1480106 (contains!7582 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3648947 () Bool)

(declare-fun e!2259053 () Bool)

(assert (=> b!3648947 (= e!2259056 e!2259053)))

(declare-fun res!1480104 () Bool)

(assert (=> b!3648947 (=> (not res!1480104) (not e!2259053))))

(declare-fun lt!1265292 () Option!8145)

(declare-fun isDefined!6377 (Option!8145) Bool)

(assert (=> b!3648947 (= res!1480104 (isDefined!6377 lt!1265292))))

(assert (=> b!3648947 (= lt!1265292 (maxPrefix!2881 thiss!23823 rules!3307 lt!1265295))))

(declare-fun lt!1265285 () BalanceConc!23124)

(assert (=> b!3648947 (= lt!1265295 (list!14256 lt!1265285))))

(declare-fun token!511 () Token!10882)

(assert (=> b!3648947 (= lt!1265285 (charsOf!3772 token!511))))

(declare-fun b!3648948 () Bool)

(declare-fun e!2259069 () Bool)

(assert (=> b!3648948 (= e!2259069 (not e!2259062))))

(declare-fun res!1480109 () Bool)

(assert (=> b!3648948 (=> res!1480109 e!2259062)))

(declare-fun matchR!5086 (Regex!10517 List!38598) Bool)

(assert (=> b!3648948 (= res!1480109 (not (matchR!5086 (regex!5758 rule!403) lt!1265295)))))

(declare-fun ruleValid!2022 (LexerInterface!5347 Rule!11316) Bool)

(assert (=> b!3648948 (ruleValid!2022 thiss!23823 rule!403)))

(declare-fun lt!1265296 () Unit!55428)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1176 (LexerInterface!5347 Rule!11316 List!38599) Unit!55428)

(assert (=> b!3648948 (= lt!1265296 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1176 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3648949 () Bool)

(declare-fun e!2259066 () Bool)

(assert (=> b!3648949 (= e!2259068 e!2259066)))

(declare-fun res!1480117 () Bool)

(assert (=> b!3648949 (=> res!1480117 e!2259066)))

(declare-fun lt!1265304 () Int)

(declare-fun lt!1265293 () TokenValue!5988)

(assert (=> b!3648949 (= res!1480117 (not (= lt!1265320 (Some!8144 (tuple2!38345 (Token!10883 lt!1265293 (rule!8554 (_1!22306 lt!1265311)) lt!1265304 lt!1265309) (_2!22306 lt!1265311))))))))

(declare-fun size!29376 (BalanceConc!23124) Int)

(assert (=> b!3648949 (= lt!1265304 (size!29376 lt!1265283))))

(declare-fun apply!9260 (TokenValueInjection!11404 BalanceConc!23124) TokenValue!5988)

(assert (=> b!3648949 (= lt!1265293 (apply!9260 (transformation!5758 (rule!8554 (_1!22306 lt!1265311))) lt!1265283))))

(declare-fun lt!1265317 () Unit!55428)

(declare-fun lemmaCharactersSize!803 (Token!10882) Unit!55428)

(assert (=> b!3648949 (= lt!1265317 (lemmaCharactersSize!803 (_1!22306 lt!1265311)))))

(declare-fun lt!1265291 () Unit!55428)

(declare-fun lemmaEqSameImage!941 (TokenValueInjection!11404 BalanceConc!23124 BalanceConc!23124) Unit!55428)

(declare-fun seqFromList!4307 (List!38598) BalanceConc!23124)

(assert (=> b!3648949 (= lt!1265291 (lemmaEqSameImage!941 (transformation!5758 (rule!8554 (_1!22306 lt!1265311))) lt!1265283 (seqFromList!4307 (originalCharacters!6472 (_1!22306 lt!1265311)))))))

(declare-fun lt!1265286 () Unit!55428)

(declare-fun lemmaSemiInverse!1507 (TokenValueInjection!11404 BalanceConc!23124) Unit!55428)

(assert (=> b!3648949 (= lt!1265286 (lemmaSemiInverse!1507 (transformation!5758 (rule!8554 (_1!22306 lt!1265311))) lt!1265283))))

(declare-fun bm!263699 () Bool)

(declare-fun call!263704 () Bool)

(declare-fun call!263705 () List!38598)

(declare-fun lt!1265319 () C!21220)

(assert (=> bm!263699 (= call!263704 (contains!7581 call!263705 lt!1265319))))

(declare-fun b!3648950 () Bool)

(declare-fun e!2259070 () Unit!55428)

(declare-fun Unit!55430 () Unit!55428)

(assert (=> b!3648950 (= e!2259070 Unit!55430)))

(declare-fun lt!1265300 () Unit!55428)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!706 (Regex!10517 List!38598 C!21220) Unit!55428)

(assert (=> b!3648950 (= lt!1265300 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!706 (regex!5758 rule!403) lt!1265295 lt!1265319))))

(assert (=> b!3648950 false))

(declare-fun b!3648951 () Bool)

(declare-fun e!2259072 () Unit!55428)

(declare-fun e!2259067 () Unit!55428)

(assert (=> b!3648951 (= e!2259072 e!2259067)))

(declare-fun c!630724 () Bool)

(assert (=> b!3648951 (= c!630724 (isSeparator!5758 (rule!8554 (_1!22306 lt!1265311))))))

(declare-fun b!3648952 () Bool)

(declare-fun e!2259059 () Bool)

(assert (=> b!3648952 (= e!2259058 e!2259059)))

(declare-fun res!1480097 () Bool)

(assert (=> b!3648952 (=> (not res!1480097) (not e!2259059))))

(declare-fun lt!1265294 () Rule!11316)

(assert (=> b!3648952 (= res!1480097 (matchR!5086 (regex!5758 lt!1265294) (list!14256 (charsOf!3772 (_1!22306 lt!1265311)))))))

(declare-fun get!12634 (Option!8144) Rule!11316)

(assert (=> b!3648952 (= lt!1265294 (get!12634 lt!1265312))))

(declare-fun res!1480099 () Bool)

(assert (=> start!341150 (=> (not res!1480099) (not e!2259056))))

(get-info :version)

(assert (=> start!341150 (= res!1480099 ((_ is Lexer!5345) thiss!23823))))

(assert (=> start!341150 e!2259056))

(declare-fun e!2259073 () Bool)

(assert (=> start!341150 e!2259073))

(declare-fun e!2259077 () Bool)

(assert (=> start!341150 e!2259077))

(assert (=> start!341150 true))

(declare-fun e!2259063 () Bool)

(declare-fun inv!51921 (Token!10882) Bool)

(assert (=> start!341150 (and (inv!51921 token!511) e!2259063)))

(declare-fun e!2259076 () Bool)

(assert (=> start!341150 e!2259076))

(declare-fun e!2259060 () Bool)

(assert (=> start!341150 e!2259060))

(declare-fun e!2259054 () Bool)

(declare-fun e!2259057 () Bool)

(declare-fun b!3648953 () Bool)

(declare-fun tp!1112524 () Bool)

(declare-fun inv!51918 (String!43274) Bool)

(declare-fun inv!51922 (TokenValueInjection!11404) Bool)

(assert (=> b!3648953 (= e!2259054 (and tp!1112524 (inv!51918 (tag!6520 (rule!8554 token!511))) (inv!51922 (transformation!5758 (rule!8554 token!511))) e!2259057))))

(declare-fun b!3648954 () Bool)

(assert (=> b!3648954 (= e!2259053 e!2259069)))

(declare-fun res!1480102 () Bool)

(assert (=> b!3648954 (=> (not res!1480102) (not e!2259069))))

(declare-fun lt!1265284 () tuple2!38344)

(assert (=> b!3648954 (= res!1480102 (= (_1!22306 lt!1265284) token!511))))

(assert (=> b!3648954 (= lt!1265284 (get!12633 lt!1265292))))

(declare-fun b!3648955 () Bool)

(declare-fun tp!1112531 () Bool)

(declare-fun e!2259071 () Bool)

(assert (=> b!3648955 (= e!2259060 (and tp!1112531 (inv!51918 (tag!6520 anOtherTypeRule!33)) (inv!51922 (transformation!5758 anOtherTypeRule!33)) e!2259071))))

(declare-fun b!3648956 () Bool)

(assert (=> b!3648956 false))

(declare-fun lt!1265289 () Unit!55428)

(declare-fun call!263706 () Unit!55428)

(assert (=> b!3648956 (= lt!1265289 call!263706)))

(assert (=> b!3648956 (not call!263704)))

(declare-fun lt!1265307 () Unit!55428)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!286 (LexerInterface!5347 List!38599 List!38599 Rule!11316 Rule!11316 C!21220) Unit!55428)

(assert (=> b!3648956 (= lt!1265307 (lemmaSepRuleNotContainsCharContainedInANonSepRule!286 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8554 (_1!22306 lt!1265311)) lt!1265319))))

(declare-fun Unit!55431 () Unit!55428)

(assert (=> b!3648956 (= e!2259067 Unit!55431)))

(declare-fun b!3648957 () Bool)

(declare-fun Unit!55432 () Unit!55428)

(assert (=> b!3648957 (= e!2259067 Unit!55432)))

(declare-fun e!2259074 () Bool)

(assert (=> b!3648958 (= e!2259074 (and tp!1112525 tp!1112530))))

(declare-fun tp!1112526 () Bool)

(declare-fun b!3648959 () Bool)

(declare-fun inv!21 (TokenValue!5988) Bool)

(assert (=> b!3648959 (= e!2259063 (and (inv!21 (value!184563 token!511)) e!2259054 tp!1112526))))

(declare-fun b!3648960 () Bool)

(declare-fun Unit!55433 () Unit!55428)

(assert (=> b!3648960 (= e!2259070 Unit!55433)))

(declare-fun b!3648961 () Bool)

(assert (=> b!3648961 (= e!2259062 e!2259051)))

(declare-fun res!1480098 () Bool)

(assert (=> b!3648961 (=> res!1480098 e!2259051)))

(declare-fun lt!1265299 () List!38598)

(assert (=> b!3648961 (= res!1480098 (contains!7581 lt!1265299 lt!1265305))))

(declare-fun head!7770 (List!38598) C!21220)

(assert (=> b!3648961 (= lt!1265305 (head!7770 suffix!1395))))

(declare-fun usedCharacters!970 (Regex!10517) List!38598)

(assert (=> b!3648961 (= lt!1265299 (usedCharacters!970 (regex!5758 rule!403)))))

(declare-fun b!3648962 () Bool)

(declare-fun res!1480108 () Bool)

(assert (=> b!3648962 (=> (not res!1480108) (not e!2259069))))

(assert (=> b!3648962 (= res!1480108 (= (rule!8554 token!511) rule!403))))

(declare-fun b!3648963 () Bool)

(declare-fun res!1480111 () Bool)

(assert (=> b!3648963 (=> res!1480111 e!2259068)))

(assert (=> b!3648963 (= res!1480111 (not (matchR!5086 (regex!5758 (rule!8554 (_1!22306 lt!1265311))) lt!1265309)))))

(declare-fun b!3648964 () Bool)

(declare-fun e!2259047 () Unit!55428)

(assert (=> b!3648964 (= e!2259072 e!2259047)))

(declare-fun c!630727 () Bool)

(assert (=> b!3648964 (= c!630727 (not (isSeparator!5758 (rule!8554 (_1!22306 lt!1265311)))))))

(declare-fun b!3648965 () Bool)

(declare-fun res!1480116 () Bool)

(assert (=> b!3648965 (=> (not res!1480116) (not e!2259056))))

(declare-fun rulesInvariant!4744 (LexerInterface!5347 List!38599) Bool)

(assert (=> b!3648965 (= res!1480116 (rulesInvariant!4744 thiss!23823 rules!3307))))

(declare-fun bm!263700 () Bool)

(assert (=> bm!263700 (= call!263706 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!706 (regex!5758 (rule!8554 (_1!22306 lt!1265311))) lt!1265309 lt!1265319))))

(declare-fun b!3648966 () Bool)

(assert (=> b!3648966 (= e!2259059 (= (rule!8554 (_1!22306 lt!1265311)) lt!1265294))))

(declare-fun tp!1112533 () Bool)

(declare-fun b!3648967 () Bool)

(assert (=> b!3648967 (= e!2259076 (and tp!1112533 (inv!51918 (tag!6520 rule!403)) (inv!51922 (transformation!5758 rule!403)) e!2259074))))

(declare-fun b!3648968 () Bool)

(declare-fun res!1480110 () Bool)

(assert (=> b!3648968 (=> res!1480110 e!2259051)))

(assert (=> b!3648968 (= res!1480110 (not (contains!7581 (usedCharacters!970 (regex!5758 anOtherTypeRule!33)) lt!1265305)))))

(declare-fun b!3648969 () Bool)

(declare-fun Unit!55434 () Unit!55428)

(assert (=> b!3648969 (= e!2259047 Unit!55434)))

(declare-fun b!3648970 () Bool)

(assert (=> b!3648970 (= e!2259049 (or (isSeparator!5758 anOtherTypeRule!33) (isSeparator!5758 (rule!8554 (_1!22306 lt!1265311)))))))

(declare-fun b!3648971 () Bool)

(declare-fun e!2259065 () Bool)

(assert (=> b!3648971 (= e!2259065 e!2259048)))

(declare-fun res!1480107 () Bool)

(assert (=> b!3648971 (=> res!1480107 e!2259048)))

(assert (=> b!3648971 (= res!1480107 (<= lt!1265304 (size!29376 lt!1265285)))))

(declare-fun lt!1265288 () Unit!55428)

(assert (=> b!3648971 (= lt!1265288 e!2259072)))

(declare-fun c!630726 () Bool)

(assert (=> b!3648971 (= c!630726 (isSeparator!5758 rule!403))))

(declare-fun lt!1265306 () Unit!55428)

(assert (=> b!3648971 (= lt!1265306 e!2259070)))

(declare-fun c!630725 () Bool)

(assert (=> b!3648971 (= c!630725 (not (contains!7581 lt!1265299 lt!1265319)))))

(assert (=> b!3648971 (= lt!1265319 (head!7770 lt!1265309))))

(declare-fun b!3648972 () Bool)

(declare-fun res!1480100 () Bool)

(assert (=> b!3648972 (=> (not res!1480100) (not e!2259056))))

(assert (=> b!3648972 (= res!1480100 (contains!7582 rules!3307 rule!403))))

(declare-fun b!3648973 () Bool)

(declare-fun tp_is_empty!18117 () Bool)

(declare-fun tp!1112534 () Bool)

(assert (=> b!3648973 (= e!2259077 (and tp_is_empty!18117 tp!1112534))))

(declare-fun bm!263701 () Bool)

(assert (=> bm!263701 (= call!263705 (usedCharacters!970 (regex!5758 (rule!8554 (_1!22306 lt!1265311)))))))

(declare-fun tp!1112528 () Bool)

(declare-fun e!2259052 () Bool)

(declare-fun b!3648974 () Bool)

(declare-fun e!2259055 () Bool)

(assert (=> b!3648974 (= e!2259055 (and tp!1112528 (inv!51918 (tag!6520 (h!43895 rules!3307))) (inv!51922 (transformation!5758 (h!43895 rules!3307))) e!2259052))))

(assert (=> b!3648975 (= e!2259057 (and tp!1112532 tp!1112535))))

(declare-fun b!3648976 () Bool)

(assert (=> b!3648976 (= e!2259066 e!2259065)))

(declare-fun res!1480113 () Bool)

(assert (=> b!3648976 (=> res!1480113 e!2259065)))

(declare-fun lt!1265290 () List!38598)

(declare-fun lt!1265287 () Option!8145)

(assert (=> b!3648976 (= res!1480113 (or (not (= lt!1265290 (_2!22306 lt!1265311))) (not (= lt!1265287 (Some!8144 (tuple2!38345 (_1!22306 lt!1265311) lt!1265290))))))))

(assert (=> b!3648976 (= (_2!22306 lt!1265311) lt!1265290)))

(declare-fun lt!1265298 () Unit!55428)

(declare-fun lemmaSamePrefixThenSameSuffix!1448 (List!38598 List!38598 List!38598 List!38598 List!38598) Unit!55428)

(assert (=> b!3648976 (= lt!1265298 (lemmaSamePrefixThenSameSuffix!1448 lt!1265309 (_2!22306 lt!1265311) lt!1265309 lt!1265290 lt!1265302))))

(declare-fun getSuffix!1674 (List!38598 List!38598) List!38598)

(assert (=> b!3648976 (= lt!1265290 (getSuffix!1674 lt!1265302 lt!1265309))))

(declare-fun lt!1265318 () Int)

(declare-fun lt!1265316 () TokenValue!5988)

(assert (=> b!3648976 (= lt!1265287 (Some!8144 (tuple2!38345 (Token!10883 lt!1265316 (rule!8554 (_1!22306 lt!1265311)) lt!1265318 lt!1265309) (_2!22306 lt!1265311))))))

(declare-fun maxPrefixOneRule!2019 (LexerInterface!5347 Rule!11316 List!38598) Option!8145)

(assert (=> b!3648976 (= lt!1265287 (maxPrefixOneRule!2019 thiss!23823 (rule!8554 (_1!22306 lt!1265311)) lt!1265302))))

(declare-fun size!29377 (List!38598) Int)

(assert (=> b!3648976 (= lt!1265318 (size!29377 lt!1265309))))

(assert (=> b!3648976 (= lt!1265316 (apply!9260 (transformation!5758 (rule!8554 (_1!22306 lt!1265311))) (seqFromList!4307 lt!1265309)))))

(declare-fun lt!1265297 () Unit!55428)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1075 (LexerInterface!5347 List!38599 List!38598 List!38598 List!38598 Rule!11316) Unit!55428)

(assert (=> b!3648976 (= lt!1265297 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1075 thiss!23823 rules!3307 lt!1265309 lt!1265302 (_2!22306 lt!1265311) (rule!8554 (_1!22306 lt!1265311))))))

(declare-fun b!3648977 () Bool)

(declare-fun res!1480096 () Bool)

(assert (=> b!3648977 (=> (not res!1480096) (not e!2259056))))

(declare-fun isEmpty!22797 (List!38599) Bool)

(assert (=> b!3648977 (= res!1480096 (not (isEmpty!22797 rules!3307)))))

(declare-fun b!3648978 () Bool)

(assert (=> b!3648978 false))

(declare-fun lt!1265303 () Unit!55428)

(assert (=> b!3648978 (= lt!1265303 call!263706)))

(assert (=> b!3648978 (not call!263704)))

(declare-fun lt!1265315 () Unit!55428)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!404 (LexerInterface!5347 List!38599 List!38599 Rule!11316 Rule!11316 C!21220) Unit!55428)

(assert (=> b!3648978 (= lt!1265315 (lemmaNonSepRuleNotContainsCharContainedInASepRule!404 thiss!23823 rules!3307 rules!3307 (rule!8554 (_1!22306 lt!1265311)) rule!403 lt!1265319))))

(declare-fun Unit!55435 () Unit!55428)

(assert (=> b!3648978 (= e!2259047 Unit!55435)))

(declare-fun b!3648979 () Bool)

(declare-fun res!1480095 () Bool)

(assert (=> b!3648979 (=> (not res!1480095) (not e!2259069))))

(assert (=> b!3648979 (= res!1480095 (isEmpty!22796 (_2!22306 lt!1265284)))))

(declare-fun b!3648980 () Bool)

(declare-fun res!1480105 () Bool)

(assert (=> b!3648980 (=> res!1480105 e!2259049)))

(assert (=> b!3648980 (= res!1480105 (not (contains!7582 rules!3307 (rule!8554 (_1!22306 lt!1265311)))))))

(declare-fun b!3648981 () Bool)

(declare-fun tp!1112529 () Bool)

(assert (=> b!3648981 (= e!2259073 (and e!2259055 tp!1112529))))

(assert (=> b!3648982 (= e!2259052 (and tp!1112527 tp!1112537))))

(declare-fun b!3648983 () Bool)

(declare-fun res!1480114 () Bool)

(assert (=> b!3648983 (=> (not res!1480114) (not e!2259056))))

(assert (=> b!3648983 (= res!1480114 (not (= (isSeparator!5758 anOtherTypeRule!33) (isSeparator!5758 rule!403))))))

(assert (=> b!3648984 (= e!2259071 (and tp!1112538 tp!1112536))))

(assert (= (and start!341150 res!1480099) b!3648977))

(assert (= (and b!3648977 res!1480096) b!3648965))

(assert (= (and b!3648965 res!1480116) b!3648972))

(assert (= (and b!3648972 res!1480100) b!3648946))

(assert (= (and b!3648946 res!1480106) b!3648983))

(assert (= (and b!3648983 res!1480114) b!3648947))

(assert (= (and b!3648947 res!1480104) b!3648954))

(assert (= (and b!3648954 res!1480102) b!3648979))

(assert (= (and b!3648979 res!1480095) b!3648962))

(assert (= (and b!3648962 res!1480108) b!3648948))

(assert (= (and b!3648948 (not res!1480109)) b!3648945))

(assert (= (and b!3648945 (not res!1480101)) b!3648961))

(assert (= (and b!3648961 (not res!1480098)) b!3648968))

(assert (= (and b!3648968 (not res!1480110)) b!3648943))

(assert (= (and b!3648943 (not res!1480118)) b!3648944))

(assert (= (and b!3648944 res!1480112) b!3648952))

(assert (= (and b!3648952 res!1480097) b!3648966))

(assert (= (and b!3648944 (not res!1480103)) b!3648963))

(assert (= (and b!3648963 (not res!1480111)) b!3648949))

(assert (= (and b!3648949 (not res!1480117)) b!3648976))

(assert (= (and b!3648976 (not res!1480113)) b!3648971))

(assert (= (and b!3648971 c!630725) b!3648950))

(assert (= (and b!3648971 (not c!630725)) b!3648960))

(assert (= (and b!3648971 c!630726) b!3648964))

(assert (= (and b!3648971 (not c!630726)) b!3648951))

(assert (= (and b!3648964 c!630727) b!3648978))

(assert (= (and b!3648964 (not c!630727)) b!3648969))

(assert (= (and b!3648951 c!630724) b!3648956))

(assert (= (and b!3648951 (not c!630724)) b!3648957))

(assert (= (or b!3648978 b!3648956) bm!263700))

(assert (= (or b!3648978 b!3648956) bm!263701))

(assert (= (or b!3648978 b!3648956) bm!263699))

(assert (= (and b!3648971 (not res!1480107)) b!3648942))

(assert (= (and b!3648942 (not res!1480115)) b!3648980))

(assert (= (and b!3648980 (not res!1480105)) b!3648970))

(assert (= b!3648974 b!3648982))

(assert (= b!3648981 b!3648974))

(assert (= (and start!341150 ((_ is Cons!38475) rules!3307)) b!3648981))

(assert (= (and start!341150 ((_ is Cons!38474) suffix!1395)) b!3648973))

(assert (= b!3648953 b!3648975))

(assert (= b!3648959 b!3648953))

(assert (= start!341150 b!3648959))

(assert (= b!3648967 b!3648958))

(assert (= start!341150 b!3648967))

(assert (= b!3648955 b!3648984))

(assert (= start!341150 b!3648955))

(declare-fun m!4153201 () Bool)

(assert (=> b!3648963 m!4153201))

(declare-fun m!4153203 () Bool)

(assert (=> b!3648971 m!4153203))

(declare-fun m!4153205 () Bool)

(assert (=> b!3648971 m!4153205))

(declare-fun m!4153207 () Bool)

(assert (=> b!3648971 m!4153207))

(declare-fun m!4153209 () Bool)

(assert (=> bm!263701 m!4153209))

(declare-fun m!4153211 () Bool)

(assert (=> b!3648954 m!4153211))

(declare-fun m!4153213 () Bool)

(assert (=> b!3648943 m!4153213))

(declare-fun m!4153215 () Bool)

(assert (=> b!3648944 m!4153215))

(declare-fun m!4153217 () Bool)

(assert (=> b!3648944 m!4153217))

(declare-fun m!4153219 () Bool)

(assert (=> b!3648944 m!4153219))

(declare-fun m!4153221 () Bool)

(assert (=> b!3648944 m!4153221))

(declare-fun m!4153223 () Bool)

(assert (=> b!3648944 m!4153223))

(assert (=> b!3648944 m!4153221))

(declare-fun m!4153225 () Bool)

(assert (=> b!3648944 m!4153225))

(declare-fun m!4153227 () Bool)

(assert (=> b!3648944 m!4153227))

(declare-fun m!4153229 () Bool)

(assert (=> b!3648944 m!4153229))

(declare-fun m!4153231 () Bool)

(assert (=> b!3648944 m!4153231))

(declare-fun m!4153233 () Bool)

(assert (=> b!3648944 m!4153233))

(declare-fun m!4153235 () Bool)

(assert (=> b!3648944 m!4153235))

(declare-fun m!4153237 () Bool)

(assert (=> b!3648944 m!4153237))

(declare-fun m!4153239 () Bool)

(assert (=> b!3648944 m!4153239))

(declare-fun m!4153241 () Bool)

(assert (=> b!3648944 m!4153241))

(declare-fun m!4153243 () Bool)

(assert (=> b!3648944 m!4153243))

(declare-fun m!4153245 () Bool)

(assert (=> b!3648968 m!4153245))

(assert (=> b!3648968 m!4153245))

(declare-fun m!4153247 () Bool)

(assert (=> b!3648968 m!4153247))

(declare-fun m!4153249 () Bool)

(assert (=> b!3648953 m!4153249))

(declare-fun m!4153251 () Bool)

(assert (=> b!3648953 m!4153251))

(declare-fun m!4153253 () Bool)

(assert (=> b!3648978 m!4153253))

(declare-fun m!4153255 () Bool)

(assert (=> b!3648979 m!4153255))

(assert (=> b!3648952 m!4153243))

(assert (=> b!3648952 m!4153243))

(declare-fun m!4153257 () Bool)

(assert (=> b!3648952 m!4153257))

(assert (=> b!3648952 m!4153257))

(declare-fun m!4153259 () Bool)

(assert (=> b!3648952 m!4153259))

(declare-fun m!4153261 () Bool)

(assert (=> b!3648952 m!4153261))

(declare-fun m!4153263 () Bool)

(assert (=> b!3648955 m!4153263))

(declare-fun m!4153265 () Bool)

(assert (=> b!3648955 m!4153265))

(declare-fun m!4153267 () Bool)

(assert (=> b!3648967 m!4153267))

(declare-fun m!4153269 () Bool)

(assert (=> b!3648967 m!4153269))

(declare-fun m!4153271 () Bool)

(assert (=> b!3648942 m!4153271))

(declare-fun m!4153273 () Bool)

(assert (=> b!3648942 m!4153273))

(declare-fun m!4153275 () Bool)

(assert (=> b!3648948 m!4153275))

(declare-fun m!4153277 () Bool)

(assert (=> b!3648948 m!4153277))

(declare-fun m!4153279 () Bool)

(assert (=> b!3648948 m!4153279))

(declare-fun m!4153281 () Bool)

(assert (=> b!3648980 m!4153281))

(declare-fun m!4153283 () Bool)

(assert (=> b!3648961 m!4153283))

(declare-fun m!4153285 () Bool)

(assert (=> b!3648961 m!4153285))

(declare-fun m!4153287 () Bool)

(assert (=> b!3648961 m!4153287))

(declare-fun m!4153289 () Bool)

(assert (=> b!3648945 m!4153289))

(declare-fun m!4153291 () Bool)

(assert (=> b!3648965 m!4153291))

(declare-fun m!4153293 () Bool)

(assert (=> b!3648976 m!4153293))

(declare-fun m!4153295 () Bool)

(assert (=> b!3648976 m!4153295))

(declare-fun m!4153297 () Bool)

(assert (=> b!3648976 m!4153297))

(declare-fun m!4153299 () Bool)

(assert (=> b!3648976 m!4153299))

(declare-fun m!4153301 () Bool)

(assert (=> b!3648976 m!4153301))

(declare-fun m!4153303 () Bool)

(assert (=> b!3648976 m!4153303))

(assert (=> b!3648976 m!4153303))

(declare-fun m!4153305 () Bool)

(assert (=> b!3648976 m!4153305))

(declare-fun m!4153307 () Bool)

(assert (=> b!3648972 m!4153307))

(declare-fun m!4153309 () Bool)

(assert (=> bm!263699 m!4153309))

(declare-fun m!4153311 () Bool)

(assert (=> b!3648950 m!4153311))

(declare-fun m!4153313 () Bool)

(assert (=> bm!263700 m!4153313))

(declare-fun m!4153315 () Bool)

(assert (=> b!3648956 m!4153315))

(declare-fun m!4153317 () Bool)

(assert (=> b!3648949 m!4153317))

(declare-fun m!4153319 () Bool)

(assert (=> b!3648949 m!4153319))

(declare-fun m!4153321 () Bool)

(assert (=> b!3648949 m!4153321))

(declare-fun m!4153323 () Bool)

(assert (=> b!3648949 m!4153323))

(declare-fun m!4153325 () Bool)

(assert (=> b!3648949 m!4153325))

(declare-fun m!4153327 () Bool)

(assert (=> b!3648949 m!4153327))

(assert (=> b!3648949 m!4153323))

(declare-fun m!4153329 () Bool)

(assert (=> b!3648959 m!4153329))

(declare-fun m!4153331 () Bool)

(assert (=> b!3648974 m!4153331))

(declare-fun m!4153333 () Bool)

(assert (=> b!3648974 m!4153333))

(declare-fun m!4153335 () Bool)

(assert (=> b!3648977 m!4153335))

(declare-fun m!4153337 () Bool)

(assert (=> b!3648946 m!4153337))

(declare-fun m!4153339 () Bool)

(assert (=> b!3648947 m!4153339))

(declare-fun m!4153341 () Bool)

(assert (=> b!3648947 m!4153341))

(declare-fun m!4153343 () Bool)

(assert (=> b!3648947 m!4153343))

(declare-fun m!4153345 () Bool)

(assert (=> b!3648947 m!4153345))

(declare-fun m!4153347 () Bool)

(assert (=> start!341150 m!4153347))

(check-sat tp_is_empty!18117 (not b_next!96619) b_and!269753 (not b_next!96609) (not b!3648978) (not b!3648977) (not b!3648967) b_and!269741 (not b!3648954) (not bm!263699) (not b_next!96615) (not b!3648980) b_and!269743 (not b!3648961) b_and!269745 (not start!341150) (not b!3648946) (not b!3648981) (not b!3648971) (not b!3648943) (not b_next!96623) (not b!3648973) (not b!3648959) (not b!3648950) (not b!3648952) (not b!3648972) b_and!269749 (not b!3648976) b_and!269747 (not b!3648945) (not b!3648944) (not b!3648948) (not b!3648963) (not b!3648947) (not b_next!96613) (not bm!263700) (not b!3648968) (not b_next!96611) (not b!3648942) (not b!3648974) (not b!3648953) b_and!269739 (not bm!263701) (not b_next!96621) b_and!269751 (not b_next!96617) (not b!3648965) (not b!3648949) (not b!3648955) (not b!3648979) (not b!3648956))
(check-sat (not b_next!96615) b_and!269743 b_and!269745 (not b_next!96623) (not b_next!96619) b_and!269753 (not b_next!96609) (not b_next!96613) (not b_next!96611) b_and!269739 (not b_next!96617) b_and!269741 b_and!269749 b_and!269747 (not b_next!96621) b_and!269751)
