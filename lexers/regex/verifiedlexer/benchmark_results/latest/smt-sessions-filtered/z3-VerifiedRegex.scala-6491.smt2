; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!341334 () Bool)

(assert start!341334)

(declare-fun b!3650306 () Bool)

(declare-fun b_free!95977 () Bool)

(declare-fun b_next!96681 () Bool)

(assert (=> b!3650306 (= b_free!95977 (not b_next!96681))))

(declare-fun tp!1112806 () Bool)

(declare-fun b_and!269955 () Bool)

(assert (=> b!3650306 (= tp!1112806 b_and!269955)))

(declare-fun b_free!95979 () Bool)

(declare-fun b_next!96683 () Bool)

(assert (=> b!3650306 (= b_free!95979 (not b_next!96683))))

(declare-fun tp!1112818 () Bool)

(declare-fun b_and!269957 () Bool)

(assert (=> b!3650306 (= tp!1112818 b_and!269957)))

(declare-fun b!3650298 () Bool)

(declare-fun b_free!95981 () Bool)

(declare-fun b_next!96685 () Bool)

(assert (=> b!3650298 (= b_free!95981 (not b_next!96685))))

(declare-fun tp!1112808 () Bool)

(declare-fun b_and!269959 () Bool)

(assert (=> b!3650298 (= tp!1112808 b_and!269959)))

(declare-fun b_free!95983 () Bool)

(declare-fun b_next!96687 () Bool)

(assert (=> b!3650298 (= b_free!95983 (not b_next!96687))))

(declare-fun tp!1112807 () Bool)

(declare-fun b_and!269961 () Bool)

(assert (=> b!3650298 (= tp!1112807 b_and!269961)))

(declare-fun b!3650316 () Bool)

(declare-fun b_free!95985 () Bool)

(declare-fun b_next!96689 () Bool)

(assert (=> b!3650316 (= b_free!95985 (not b_next!96689))))

(declare-fun tp!1112820 () Bool)

(declare-fun b_and!269963 () Bool)

(assert (=> b!3650316 (= tp!1112820 b_and!269963)))

(declare-fun b_free!95987 () Bool)

(declare-fun b_next!96691 () Bool)

(assert (=> b!3650316 (= b_free!95987 (not b_next!96691))))

(declare-fun tp!1112809 () Bool)

(declare-fun b_and!269965 () Bool)

(assert (=> b!3650316 (= tp!1112809 b_and!269965)))

(declare-fun b!3650315 () Bool)

(declare-fun b_free!95989 () Bool)

(declare-fun b_next!96693 () Bool)

(assert (=> b!3650315 (= b_free!95989 (not b_next!96693))))

(declare-fun tp!1112813 () Bool)

(declare-fun b_and!269967 () Bool)

(assert (=> b!3650315 (= tp!1112813 b_and!269967)))

(declare-fun b_free!95991 () Bool)

(declare-fun b_next!96695 () Bool)

(assert (=> b!3650315 (= b_free!95991 (not b_next!96695))))

(declare-fun tp!1112817 () Bool)

(declare-fun b_and!269969 () Bool)

(assert (=> b!3650315 (= tp!1112817 b_and!269969)))

(declare-fun b!3650275 () Bool)

(declare-fun e!2259945 () Bool)

(declare-fun e!2259930 () Bool)

(assert (=> b!3650275 (= e!2259945 e!2259930)))

(declare-fun res!1480803 () Bool)

(assert (=> b!3650275 (=> res!1480803 e!2259930)))

(declare-fun lt!1266118 () Int)

(declare-datatypes ((C!21228 0))(
  ( (C!21229 (val!12662 Int)) )
))
(declare-datatypes ((List!38613 0))(
  ( (Nil!38489) (Cons!38489 (h!43909 C!21228) (t!297476 List!38613)) )
))
(declare-datatypes ((IArray!23527 0))(
  ( (IArray!23528 (innerList!11821 List!38613)) )
))
(declare-datatypes ((Conc!11761 0))(
  ( (Node!11761 (left!30048 Conc!11761) (right!30378 Conc!11761) (csize!23752 Int) (cheight!11972 Int)) (Leaf!18253 (xs!14963 IArray!23527) (csize!23753 Int)) (Empty!11761) )
))
(declare-datatypes ((BalanceConc!23136 0))(
  ( (BalanceConc!23137 (c!630944 Conc!11761)) )
))
(declare-fun lt!1266136 () BalanceConc!23136)

(declare-fun size!29389 (BalanceConc!23136) Int)

(assert (=> b!3650275 (= res!1480803 (<= lt!1266118 (size!29389 lt!1266136)))))

(declare-datatypes ((Unit!55469 0))(
  ( (Unit!55470) )
))
(declare-fun lt!1266101 () Unit!55469)

(declare-fun e!2259935 () Unit!55469)

(assert (=> b!3650275 (= lt!1266101 e!2259935)))

(declare-fun c!630942 () Bool)

(declare-datatypes ((List!38614 0))(
  ( (Nil!38490) (Cons!38490 (h!43910 (_ BitVec 16)) (t!297477 List!38614)) )
))
(declare-datatypes ((TokenValue!5992 0))(
  ( (FloatLiteralValue!11984 (text!42389 List!38614)) (TokenValueExt!5991 (__x!24201 Int)) (Broken!29960 (value!184651 List!38614)) (Object!6115) (End!5992) (Def!5992) (Underscore!5992) (Match!5992) (Else!5992) (Error!5992) (Case!5992) (If!5992) (Extends!5992) (Abstract!5992) (Class!5992) (Val!5992) (DelimiterValue!11984 (del!6052 List!38614)) (KeywordValue!5998 (value!184652 List!38614)) (CommentValue!11984 (value!184653 List!38614)) (WhitespaceValue!11984 (value!184654 List!38614)) (IndentationValue!5992 (value!184655 List!38614)) (String!43293) (Int32!5992) (Broken!29961 (value!184656 List!38614)) (Boolean!5993) (Unit!55471) (OperatorValue!5995 (op!6052 List!38614)) (IdentifierValue!11984 (value!184657 List!38614)) (IdentifierValue!11985 (value!184658 List!38614)) (WhitespaceValue!11985 (value!184659 List!38614)) (True!11984) (False!11984) (Broken!29962 (value!184660 List!38614)) (Broken!29963 (value!184661 List!38614)) (True!11985) (RightBrace!5992) (RightBracket!5992) (Colon!5992) (Null!5992) (Comma!5992) (LeftBracket!5992) (False!11985) (LeftBrace!5992) (ImaginaryLiteralValue!5992 (text!42390 List!38614)) (StringLiteralValue!17976 (value!184662 List!38614)) (EOFValue!5992 (value!184663 List!38614)) (IdentValue!5992 (value!184664 List!38614)) (DelimiterValue!11985 (value!184665 List!38614)) (DedentValue!5992 (value!184666 List!38614)) (NewLineValue!5992 (value!184667 List!38614)) (IntegerValue!17976 (value!184668 (_ BitVec 32)) (text!42391 List!38614)) (IntegerValue!17977 (value!184669 Int) (text!42392 List!38614)) (Times!5992) (Or!5992) (Equal!5992) (Minus!5992) (Broken!29964 (value!184670 List!38614)) (And!5992) (Div!5992) (LessEqual!5992) (Mod!5992) (Concat!16513) (Not!5992) (Plus!5992) (SpaceValue!5992 (value!184671 List!38614)) (IntegerValue!17978 (value!184672 Int) (text!42393 List!38614)) (StringLiteralValue!17977 (text!42394 List!38614)) (FloatLiteralValue!11985 (text!42395 List!38614)) (BytesLiteralValue!5992 (value!184673 List!38614)) (CommentValue!11985 (value!184674 List!38614)) (StringLiteralValue!17978 (value!184675 List!38614)) (ErrorTokenValue!5992 (msg!6053 List!38614)) )
))
(declare-datatypes ((Regex!10521 0))(
  ( (ElementMatch!10521 (c!630945 C!21228)) (Concat!16514 (regOne!21554 Regex!10521) (regTwo!21554 Regex!10521)) (EmptyExpr!10521) (Star!10521 (reg!10850 Regex!10521)) (EmptyLang!10521) (Union!10521 (regOne!21555 Regex!10521) (regTwo!21555 Regex!10521)) )
))
(declare-datatypes ((String!43294 0))(
  ( (String!43295 (value!184676 String)) )
))
(declare-datatypes ((TokenValueInjection!11412 0))(
  ( (TokenValueInjection!11413 (toValue!8054 Int) (toChars!7913 Int)) )
))
(declare-datatypes ((Rule!11324 0))(
  ( (Rule!11325 (regex!5762 Regex!10521) (tag!6526 String!43294) (isSeparator!5762 Bool) (transformation!5762 TokenValueInjection!11412)) )
))
(declare-fun rule!403 () Rule!11324)

(assert (=> b!3650275 (= c!630942 (isSeparator!5762 rule!403))))

(declare-fun lt!1266112 () Unit!55469)

(declare-fun e!2259920 () Unit!55469)

(assert (=> b!3650275 (= lt!1266112 e!2259920)))

(declare-fun c!630941 () Bool)

(declare-fun lt!1266133 () List!38613)

(declare-fun lt!1266108 () C!21228)

(declare-fun contains!7589 (List!38613 C!21228) Bool)

(assert (=> b!3650275 (= c!630941 (not (contains!7589 lt!1266133 lt!1266108)))))

(declare-fun lt!1266131 () List!38613)

(declare-fun head!7776 (List!38613) C!21228)

(assert (=> b!3650275 (= lt!1266108 (head!7776 lt!1266131))))

(declare-fun b!3650276 () Bool)

(declare-fun Unit!55472 () Unit!55469)

(assert (=> b!3650276 (= e!2259920 Unit!55472)))

(declare-fun b!3650277 () Bool)

(declare-fun res!1480814 () Bool)

(declare-fun e!2259944 () Bool)

(assert (=> b!3650277 (=> res!1480814 e!2259944)))

(declare-datatypes ((List!38615 0))(
  ( (Nil!38491) (Cons!38491 (h!43911 Rule!11324) (t!297478 List!38615)) )
))
(declare-fun rules!3307 () List!38615)

(declare-fun sepAndNonSepRulesDisjointChars!1930 (List!38615 List!38615) Bool)

(assert (=> b!3650277 (= res!1480814 (not (sepAndNonSepRulesDisjointChars!1930 rules!3307 rules!3307)))))

(declare-fun b!3650279 () Bool)

(declare-fun e!2259950 () Bool)

(assert (=> b!3650279 (= e!2259950 e!2259945)))

(declare-fun res!1480805 () Bool)

(assert (=> b!3650279 (=> res!1480805 e!2259945)))

(declare-datatypes ((Token!10890 0))(
  ( (Token!10891 (value!184677 TokenValue!5992) (rule!8560 Rule!11324) (size!29390 Int) (originalCharacters!6476 List!38613)) )
))
(declare-datatypes ((tuple2!38360 0))(
  ( (tuple2!38361 (_1!22314 Token!10890) (_2!22314 List!38613)) )
))
(declare-datatypes ((Option!8152 0))(
  ( (None!8151) (Some!8151 (v!38011 tuple2!38360)) )
))
(declare-fun lt!1266107 () Option!8152)

(declare-fun lt!1266122 () List!38613)

(declare-fun lt!1266119 () tuple2!38360)

(assert (=> b!3650279 (= res!1480805 (or (not (= lt!1266122 (_2!22314 lt!1266119))) (not (= lt!1266107 (Some!8151 (tuple2!38361 (_1!22314 lt!1266119) lt!1266122))))))))

(assert (=> b!3650279 (= (_2!22314 lt!1266119) lt!1266122)))

(declare-fun lt!1266123 () List!38613)

(declare-fun lt!1266109 () Unit!55469)

(declare-fun lemmaSamePrefixThenSameSuffix!1452 (List!38613 List!38613 List!38613 List!38613 List!38613) Unit!55469)

(assert (=> b!3650279 (= lt!1266109 (lemmaSamePrefixThenSameSuffix!1452 lt!1266131 (_2!22314 lt!1266119) lt!1266131 lt!1266122 lt!1266123))))

(declare-fun getSuffix!1678 (List!38613 List!38613) List!38613)

(assert (=> b!3650279 (= lt!1266122 (getSuffix!1678 lt!1266123 lt!1266131))))

(declare-fun lt!1266106 () Int)

(declare-fun lt!1266127 () TokenValue!5992)

(assert (=> b!3650279 (= lt!1266107 (Some!8151 (tuple2!38361 (Token!10891 lt!1266127 (rule!8560 (_1!22314 lt!1266119)) lt!1266106 lt!1266131) (_2!22314 lt!1266119))))))

(declare-datatypes ((LexerInterface!5351 0))(
  ( (LexerInterfaceExt!5348 (__x!24202 Int)) (Lexer!5349) )
))
(declare-fun thiss!23823 () LexerInterface!5351)

(declare-fun maxPrefixOneRule!2023 (LexerInterface!5351 Rule!11324 List!38613) Option!8152)

(assert (=> b!3650279 (= lt!1266107 (maxPrefixOneRule!2023 thiss!23823 (rule!8560 (_1!22314 lt!1266119)) lt!1266123))))

(declare-fun size!29391 (List!38613) Int)

(assert (=> b!3650279 (= lt!1266106 (size!29391 lt!1266131))))

(declare-fun apply!9264 (TokenValueInjection!11412 BalanceConc!23136) TokenValue!5992)

(declare-fun seqFromList!4311 (List!38613) BalanceConc!23136)

(assert (=> b!3650279 (= lt!1266127 (apply!9264 (transformation!5762 (rule!8560 (_1!22314 lt!1266119))) (seqFromList!4311 lt!1266131)))))

(declare-fun lt!1266104 () Unit!55469)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1079 (LexerInterface!5351 List!38615 List!38613 List!38613 List!38613 Rule!11324) Unit!55469)

(assert (=> b!3650279 (= lt!1266104 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1079 thiss!23823 rules!3307 lt!1266131 lt!1266123 (_2!22314 lt!1266119) (rule!8560 (_1!22314 lt!1266119))))))

(declare-fun b!3650280 () Bool)

(declare-fun res!1480808 () Bool)

(declare-fun e!2259931 () Bool)

(assert (=> b!3650280 (=> (not res!1480808) (not e!2259931))))

(declare-fun isEmpty!22808 (List!38615) Bool)

(assert (=> b!3650280 (= res!1480808 (not (isEmpty!22808 rules!3307)))))

(declare-fun b!3650281 () Bool)

(assert (=> b!3650281 false))

(declare-fun lt!1266111 () Unit!55469)

(declare-fun call!263818 () Unit!55469)

(assert (=> b!3650281 (= lt!1266111 call!263818)))

(declare-fun call!263816 () Bool)

(assert (=> b!3650281 (not call!263816)))

(declare-fun lt!1266120 () Unit!55469)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!408 (LexerInterface!5351 List!38615 List!38615 Rule!11324 Rule!11324 C!21228) Unit!55469)

(assert (=> b!3650281 (= lt!1266120 (lemmaNonSepRuleNotContainsCharContainedInASepRule!408 thiss!23823 rules!3307 rules!3307 (rule!8560 (_1!22314 lt!1266119)) rule!403 lt!1266108))))

(declare-fun e!2259924 () Unit!55469)

(declare-fun Unit!55473 () Unit!55469)

(assert (=> b!3650281 (= e!2259924 Unit!55473)))

(declare-fun bm!263811 () Bool)

(declare-fun call!263817 () List!38613)

(assert (=> bm!263811 (= call!263816 (contains!7589 call!263817 lt!1266108))))

(declare-fun e!2259919 () Bool)

(declare-fun b!3650282 () Bool)

(declare-fun e!2259946 () Bool)

(declare-fun tp!1112811 () Bool)

(declare-fun token!511 () Token!10890)

(declare-fun inv!51936 (String!43294) Bool)

(declare-fun inv!51939 (TokenValueInjection!11412) Bool)

(assert (=> b!3650282 (= e!2259946 (and tp!1112811 (inv!51936 (tag!6526 (rule!8560 token!511))) (inv!51939 (transformation!5762 (rule!8560 token!511))) e!2259919))))

(declare-fun b!3650283 () Bool)

(declare-fun e!2259923 () Bool)

(declare-fun e!2259942 () Bool)

(declare-fun tp!1112814 () Bool)

(assert (=> b!3650283 (= e!2259923 (and e!2259942 tp!1112814))))

(declare-fun b!3650284 () Bool)

(declare-fun Unit!55474 () Unit!55469)

(assert (=> b!3650284 (= e!2259920 Unit!55474)))

(declare-fun lt!1266134 () List!38613)

(declare-fun lt!1266102 () Unit!55469)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!710 (Regex!10521 List!38613 C!21228) Unit!55469)

(assert (=> b!3650284 (= lt!1266102 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!710 (regex!5762 rule!403) lt!1266134 lt!1266108))))

(assert (=> b!3650284 false))

(declare-fun b!3650285 () Bool)

(declare-fun e!2259936 () Bool)

(assert (=> b!3650285 (= e!2259930 e!2259936)))

(declare-fun res!1480812 () Bool)

(assert (=> b!3650285 (=> res!1480812 e!2259936)))

(assert (=> b!3650285 (= res!1480812 (not (isSeparator!5762 rule!403)))))

(declare-fun lt!1266116 () C!21228)

(assert (=> b!3650285 (contains!7589 lt!1266131 lt!1266116)))

(declare-fun lt!1266098 () Unit!55469)

(declare-fun suffix!1395 () List!38613)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!70 (List!38613 List!38613 List!38613 List!38613) Unit!55469)

(assert (=> b!3650285 (= lt!1266098 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!70 lt!1266134 suffix!1395 lt!1266131 lt!1266123))))

(declare-fun b!3650286 () Bool)

(declare-fun res!1480801 () Bool)

(assert (=> b!3650286 (=> (not res!1480801) (not e!2259931))))

(declare-fun anOtherTypeRule!33 () Rule!11324)

(assert (=> b!3650286 (= res!1480801 (not (= (isSeparator!5762 anOtherTypeRule!33) (isSeparator!5762 rule!403))))))

(declare-fun b!3650287 () Bool)

(declare-fun e!2259927 () Bool)

(declare-fun e!2259922 () Bool)

(declare-fun tp!1112815 () Bool)

(assert (=> b!3650287 (= e!2259922 (and tp!1112815 (inv!51936 (tag!6526 rule!403)) (inv!51939 (transformation!5762 rule!403)) e!2259927))))

(declare-fun b!3650288 () Bool)

(assert (=> b!3650288 false))

(declare-fun lt!1266100 () Unit!55469)

(assert (=> b!3650288 (= lt!1266100 call!263818)))

(assert (=> b!3650288 (not call!263816)))

(declare-fun lt!1266132 () Unit!55469)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!290 (LexerInterface!5351 List!38615 List!38615 Rule!11324 Rule!11324 C!21228) Unit!55469)

(assert (=> b!3650288 (= lt!1266132 (lemmaSepRuleNotContainsCharContainedInANonSepRule!290 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8560 (_1!22314 lt!1266119)) lt!1266108))))

(declare-fun e!2259939 () Unit!55469)

(declare-fun Unit!55475 () Unit!55469)

(assert (=> b!3650288 (= e!2259939 Unit!55475)))

(declare-fun b!3650289 () Bool)

(declare-fun e!2259937 () Bool)

(declare-fun e!2259921 () Bool)

(assert (=> b!3650289 (= e!2259937 (not e!2259921))))

(declare-fun res!1480813 () Bool)

(assert (=> b!3650289 (=> res!1480813 e!2259921)))

(declare-fun matchR!5090 (Regex!10521 List!38613) Bool)

(assert (=> b!3650289 (= res!1480813 (not (matchR!5090 (regex!5762 rule!403) lt!1266134)))))

(declare-fun ruleValid!2026 (LexerInterface!5351 Rule!11324) Bool)

(assert (=> b!3650289 (ruleValid!2026 thiss!23823 rule!403)))

(declare-fun lt!1266097 () Unit!55469)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1180 (LexerInterface!5351 Rule!11324 List!38615) Unit!55469)

(assert (=> b!3650289 (= lt!1266097 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1180 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3650290 () Bool)

(declare-fun e!2259934 () Bool)

(declare-fun tp_is_empty!18125 () Bool)

(declare-fun tp!1112812 () Bool)

(assert (=> b!3650290 (= e!2259934 (and tp_is_empty!18125 tp!1112812))))

(declare-fun b!3650291 () Bool)

(declare-fun Unit!55476 () Unit!55469)

(assert (=> b!3650291 (= e!2259939 Unit!55476)))

(declare-fun b!3650292 () Bool)

(declare-fun Unit!55477 () Unit!55469)

(assert (=> b!3650292 (= e!2259924 Unit!55477)))

(declare-fun bm!263812 () Bool)

(assert (=> bm!263812 (= call!263818 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!710 (regex!5762 (rule!8560 (_1!22314 lt!1266119))) lt!1266131 lt!1266108))))

(declare-fun b!3650293 () Bool)

(assert (=> b!3650293 (= e!2259935 e!2259939)))

(declare-fun c!630943 () Bool)

(assert (=> b!3650293 (= c!630943 (isSeparator!5762 (rule!8560 (_1!22314 lt!1266119))))))

(declare-fun b!3650294 () Bool)

(declare-fun e!2259928 () Bool)

(declare-fun tp!1112819 () Bool)

(declare-fun inv!21 (TokenValue!5992) Bool)

(assert (=> b!3650294 (= e!2259928 (and (inv!21 (value!184677 token!511)) e!2259946 tp!1112819))))

(declare-fun b!3650295 () Bool)

(declare-fun res!1480796 () Bool)

(assert (=> b!3650295 (=> res!1480796 e!2259944)))

(declare-fun usedCharacters!974 (Regex!10521) List!38613)

(assert (=> b!3650295 (= res!1480796 (not (contains!7589 (usedCharacters!974 (regex!5762 anOtherTypeRule!33)) lt!1266116)))))

(declare-fun b!3650278 () Bool)

(declare-fun e!2259938 () Bool)

(assert (=> b!3650278 (= e!2259931 e!2259938)))

(declare-fun res!1480807 () Bool)

(assert (=> b!3650278 (=> (not res!1480807) (not e!2259938))))

(declare-fun lt!1266121 () Option!8152)

(declare-fun isDefined!6384 (Option!8152) Bool)

(assert (=> b!3650278 (= res!1480807 (isDefined!6384 lt!1266121))))

(declare-fun maxPrefix!2885 (LexerInterface!5351 List!38615 List!38613) Option!8152)

(assert (=> b!3650278 (= lt!1266121 (maxPrefix!2885 thiss!23823 rules!3307 lt!1266134))))

(declare-fun list!14264 (BalanceConc!23136) List!38613)

(assert (=> b!3650278 (= lt!1266134 (list!14264 lt!1266136))))

(declare-fun charsOf!3776 (Token!10890) BalanceConc!23136)

(assert (=> b!3650278 (= lt!1266136 (charsOf!3776 token!511))))

(declare-fun res!1480806 () Bool)

(assert (=> start!341334 (=> (not res!1480806) (not e!2259931))))

(get-info :version)

(assert (=> start!341334 (= res!1480806 ((_ is Lexer!5349) thiss!23823))))

(assert (=> start!341334 e!2259931))

(assert (=> start!341334 e!2259923))

(assert (=> start!341334 e!2259934))

(assert (=> start!341334 true))

(declare-fun inv!51940 (Token!10890) Bool)

(assert (=> start!341334 (and (inv!51940 token!511) e!2259928)))

(assert (=> start!341334 e!2259922))

(declare-fun e!2259932 () Bool)

(assert (=> start!341334 e!2259932))

(declare-fun b!3650296 () Bool)

(declare-fun e!2259940 () Bool)

(assert (=> b!3650296 (= e!2259944 e!2259940)))

(declare-fun res!1480809 () Bool)

(assert (=> b!3650296 (=> res!1480809 e!2259940)))

(declare-fun isPrefix!3125 (List!38613 List!38613) Bool)

(assert (=> b!3650296 (= res!1480809 (not (isPrefix!3125 lt!1266131 lt!1266123)))))

(declare-fun ++!9578 (List!38613 List!38613) List!38613)

(assert (=> b!3650296 (isPrefix!3125 lt!1266131 (++!9578 lt!1266131 (_2!22314 lt!1266119)))))

(declare-fun lt!1266128 () Unit!55469)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2044 (List!38613 List!38613) Unit!55469)

(assert (=> b!3650296 (= lt!1266128 (lemmaConcatTwoListThenFirstIsPrefix!2044 lt!1266131 (_2!22314 lt!1266119)))))

(declare-fun lt!1266105 () BalanceConc!23136)

(assert (=> b!3650296 (= lt!1266131 (list!14264 lt!1266105))))

(assert (=> b!3650296 (= lt!1266105 (charsOf!3776 (_1!22314 lt!1266119)))))

(declare-fun e!2259926 () Bool)

(assert (=> b!3650296 e!2259926))

(declare-fun res!1480795 () Bool)

(assert (=> b!3650296 (=> (not res!1480795) (not e!2259926))))

(declare-datatypes ((Option!8153 0))(
  ( (None!8152) (Some!8152 (v!38012 Rule!11324)) )
))
(declare-fun lt!1266124 () Option!8153)

(declare-fun isDefined!6385 (Option!8153) Bool)

(assert (=> b!3650296 (= res!1480795 (isDefined!6385 lt!1266124))))

(declare-fun getRuleFromTag!1366 (LexerInterface!5351 List!38615 String!43294) Option!8153)

(assert (=> b!3650296 (= lt!1266124 (getRuleFromTag!1366 thiss!23823 rules!3307 (tag!6526 (rule!8560 (_1!22314 lt!1266119)))))))

(declare-fun lt!1266103 () Unit!55469)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1366 (LexerInterface!5351 List!38615 List!38613 Token!10890) Unit!55469)

(assert (=> b!3650296 (= lt!1266103 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1366 thiss!23823 rules!3307 lt!1266123 (_1!22314 lt!1266119)))))

(declare-fun lt!1266130 () Option!8152)

(declare-fun get!12643 (Option!8152) tuple2!38360)

(assert (=> b!3650296 (= lt!1266119 (get!12643 lt!1266130))))

(declare-fun lt!1266125 () Unit!55469)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1029 (LexerInterface!5351 List!38615 List!38613 List!38613) Unit!55469)

(assert (=> b!3650296 (= lt!1266125 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1029 thiss!23823 rules!3307 lt!1266134 suffix!1395))))

(assert (=> b!3650296 (= lt!1266130 (maxPrefix!2885 thiss!23823 rules!3307 lt!1266123))))

(assert (=> b!3650296 (isPrefix!3125 lt!1266134 lt!1266123)))

(declare-fun lt!1266129 () Unit!55469)

(assert (=> b!3650296 (= lt!1266129 (lemmaConcatTwoListThenFirstIsPrefix!2044 lt!1266134 suffix!1395))))

(assert (=> b!3650296 (= lt!1266123 (++!9578 lt!1266134 suffix!1395))))

(declare-fun b!3650297 () Bool)

(assert (=> b!3650297 (= e!2259940 e!2259950)))

(declare-fun res!1480810 () Bool)

(assert (=> b!3650297 (=> res!1480810 e!2259950)))

(declare-fun lt!1266110 () TokenValue!5992)

(assert (=> b!3650297 (= res!1480810 (not (= lt!1266130 (Some!8151 (tuple2!38361 (Token!10891 lt!1266110 (rule!8560 (_1!22314 lt!1266119)) lt!1266118 lt!1266131) (_2!22314 lt!1266119))))))))

(assert (=> b!3650297 (= lt!1266118 (size!29389 lt!1266105))))

(assert (=> b!3650297 (= lt!1266110 (apply!9264 (transformation!5762 (rule!8560 (_1!22314 lt!1266119))) lt!1266105))))

(declare-fun lt!1266114 () Unit!55469)

(declare-fun lemmaCharactersSize!807 (Token!10890) Unit!55469)

(assert (=> b!3650297 (= lt!1266114 (lemmaCharactersSize!807 (_1!22314 lt!1266119)))))

(declare-fun lt!1266115 () Unit!55469)

(declare-fun lemmaEqSameImage!945 (TokenValueInjection!11412 BalanceConc!23136 BalanceConc!23136) Unit!55469)

(assert (=> b!3650297 (= lt!1266115 (lemmaEqSameImage!945 (transformation!5762 (rule!8560 (_1!22314 lt!1266119))) lt!1266105 (seqFromList!4311 (originalCharacters!6476 (_1!22314 lt!1266119)))))))

(declare-fun lt!1266135 () Unit!55469)

(declare-fun lemmaSemiInverse!1511 (TokenValueInjection!11412 BalanceConc!23136) Unit!55469)

(assert (=> b!3650297 (= lt!1266135 (lemmaSemiInverse!1511 (transformation!5762 (rule!8560 (_1!22314 lt!1266119))) lt!1266105))))

(declare-fun e!2259948 () Bool)

(assert (=> b!3650298 (= e!2259948 (and tp!1112808 tp!1112807))))

(declare-fun b!3650299 () Bool)

(declare-fun res!1480797 () Bool)

(assert (=> b!3650299 (=> res!1480797 e!2259921)))

(declare-fun isEmpty!22809 (List!38613) Bool)

(assert (=> b!3650299 (= res!1480797 (isEmpty!22809 suffix!1395))))

(declare-fun b!3650300 () Bool)

(assert (=> b!3650300 (= e!2259935 e!2259924)))

(declare-fun c!630940 () Bool)

(assert (=> b!3650300 (= c!630940 (not (isSeparator!5762 (rule!8560 (_1!22314 lt!1266119)))))))

(declare-fun b!3650301 () Bool)

(declare-fun res!1480816 () Bool)

(assert (=> b!3650301 (=> (not res!1480816) (not e!2259931))))

(declare-fun contains!7590 (List!38615 Rule!11324) Bool)

(assert (=> b!3650301 (= res!1480816 (contains!7590 rules!3307 rule!403))))

(declare-fun b!3650302 () Bool)

(assert (=> b!3650302 (= e!2259921 e!2259944)))

(declare-fun res!1480815 () Bool)

(assert (=> b!3650302 (=> res!1480815 e!2259944)))

(assert (=> b!3650302 (= res!1480815 (contains!7589 lt!1266133 lt!1266116))))

(assert (=> b!3650302 (= lt!1266116 (head!7776 suffix!1395))))

(assert (=> b!3650302 (= lt!1266133 (usedCharacters!974 (regex!5762 rule!403)))))

(declare-fun b!3650303 () Bool)

(declare-fun res!1480800 () Bool)

(assert (=> b!3650303 (=> (not res!1480800) (not e!2259931))))

(declare-fun rulesInvariant!4748 (LexerInterface!5351 List!38615) Bool)

(assert (=> b!3650303 (= res!1480800 (rulesInvariant!4748 thiss!23823 rules!3307))))

(declare-fun b!3650304 () Bool)

(assert (=> b!3650304 (= e!2259936 true)))

(assert (=> b!3650304 false))

(declare-fun lt!1266126 () Unit!55469)

(assert (=> b!3650304 (= lt!1266126 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!710 (regex!5762 (rule!8560 (_1!22314 lt!1266119))) lt!1266131 lt!1266116))))

(assert (=> b!3650304 (not (contains!7589 (usedCharacters!974 (regex!5762 (rule!8560 (_1!22314 lt!1266119)))) lt!1266116))))

(declare-fun lt!1266099 () Unit!55469)

(assert (=> b!3650304 (= lt!1266099 (lemmaSepRuleNotContainsCharContainedInANonSepRule!290 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8560 (_1!22314 lt!1266119)) lt!1266116))))

(declare-fun b!3650305 () Bool)

(declare-fun e!2259933 () Bool)

(declare-fun lt!1266113 () Rule!11324)

(assert (=> b!3650305 (= e!2259933 (= (rule!8560 (_1!22314 lt!1266119)) lt!1266113))))

(declare-fun e!2259941 () Bool)

(assert (=> b!3650306 (= e!2259941 (and tp!1112806 tp!1112818))))

(declare-fun b!3650307 () Bool)

(declare-fun res!1480799 () Bool)

(assert (=> b!3650307 (=> res!1480799 e!2259940)))

(assert (=> b!3650307 (= res!1480799 (not (matchR!5090 (regex!5762 (rule!8560 (_1!22314 lt!1266119))) lt!1266131)))))

(declare-fun b!3650308 () Bool)

(assert (=> b!3650308 (= e!2259926 e!2259933)))

(declare-fun res!1480817 () Bool)

(assert (=> b!3650308 (=> (not res!1480817) (not e!2259933))))

(assert (=> b!3650308 (= res!1480817 (matchR!5090 (regex!5762 lt!1266113) (list!14264 (charsOf!3776 (_1!22314 lt!1266119)))))))

(declare-fun get!12644 (Option!8153) Rule!11324)

(assert (=> b!3650308 (= lt!1266113 (get!12644 lt!1266124))))

(declare-fun b!3650309 () Bool)

(declare-fun res!1480804 () Bool)

(assert (=> b!3650309 (=> (not res!1480804) (not e!2259937))))

(assert (=> b!3650309 (= res!1480804 (= (rule!8560 token!511) rule!403))))

(declare-fun b!3650310 () Bool)

(declare-fun tp!1112816 () Bool)

(assert (=> b!3650310 (= e!2259942 (and tp!1112816 (inv!51936 (tag!6526 (h!43911 rules!3307))) (inv!51939 (transformation!5762 (h!43911 rules!3307))) e!2259948))))

(declare-fun b!3650311 () Bool)

(assert (=> b!3650311 (= e!2259938 e!2259937)))

(declare-fun res!1480811 () Bool)

(assert (=> b!3650311 (=> (not res!1480811) (not e!2259937))))

(declare-fun lt!1266117 () tuple2!38360)

(assert (=> b!3650311 (= res!1480811 (= (_1!22314 lt!1266117) token!511))))

(assert (=> b!3650311 (= lt!1266117 (get!12643 lt!1266121))))

(declare-fun b!3650312 () Bool)

(declare-fun res!1480798 () Bool)

(assert (=> b!3650312 (=> (not res!1480798) (not e!2259937))))

(assert (=> b!3650312 (= res!1480798 (isEmpty!22809 (_2!22314 lt!1266117)))))

(declare-fun b!3650313 () Bool)

(declare-fun tp!1112810 () Bool)

(assert (=> b!3650313 (= e!2259932 (and tp!1112810 (inv!51936 (tag!6526 anOtherTypeRule!33)) (inv!51939 (transformation!5762 anOtherTypeRule!33)) e!2259941))))

(declare-fun b!3650314 () Bool)

(declare-fun res!1480802 () Bool)

(assert (=> b!3650314 (=> (not res!1480802) (not e!2259931))))

(assert (=> b!3650314 (= res!1480802 (contains!7590 rules!3307 anOtherTypeRule!33))))

(assert (=> b!3650315 (= e!2259919 (and tp!1112813 tp!1112817))))

(declare-fun bm!263813 () Bool)

(assert (=> bm!263813 (= call!263817 (usedCharacters!974 (regex!5762 (rule!8560 (_1!22314 lt!1266119)))))))

(assert (=> b!3650316 (= e!2259927 (and tp!1112820 tp!1112809))))

(assert (= (and start!341334 res!1480806) b!3650280))

(assert (= (and b!3650280 res!1480808) b!3650303))

(assert (= (and b!3650303 res!1480800) b!3650301))

(assert (= (and b!3650301 res!1480816) b!3650314))

(assert (= (and b!3650314 res!1480802) b!3650286))

(assert (= (and b!3650286 res!1480801) b!3650278))

(assert (= (and b!3650278 res!1480807) b!3650311))

(assert (= (and b!3650311 res!1480811) b!3650312))

(assert (= (and b!3650312 res!1480798) b!3650309))

(assert (= (and b!3650309 res!1480804) b!3650289))

(assert (= (and b!3650289 (not res!1480813)) b!3650299))

(assert (= (and b!3650299 (not res!1480797)) b!3650302))

(assert (= (and b!3650302 (not res!1480815)) b!3650295))

(assert (= (and b!3650295 (not res!1480796)) b!3650277))

(assert (= (and b!3650277 (not res!1480814)) b!3650296))

(assert (= (and b!3650296 res!1480795) b!3650308))

(assert (= (and b!3650308 res!1480817) b!3650305))

(assert (= (and b!3650296 (not res!1480809)) b!3650307))

(assert (= (and b!3650307 (not res!1480799)) b!3650297))

(assert (= (and b!3650297 (not res!1480810)) b!3650279))

(assert (= (and b!3650279 (not res!1480805)) b!3650275))

(assert (= (and b!3650275 c!630941) b!3650284))

(assert (= (and b!3650275 (not c!630941)) b!3650276))

(assert (= (and b!3650275 c!630942) b!3650300))

(assert (= (and b!3650275 (not c!630942)) b!3650293))

(assert (= (and b!3650300 c!630940) b!3650281))

(assert (= (and b!3650300 (not c!630940)) b!3650292))

(assert (= (and b!3650293 c!630943) b!3650288))

(assert (= (and b!3650293 (not c!630943)) b!3650291))

(assert (= (or b!3650281 b!3650288) bm!263812))

(assert (= (or b!3650281 b!3650288) bm!263813))

(assert (= (or b!3650281 b!3650288) bm!263811))

(assert (= (and b!3650275 (not res!1480803)) b!3650285))

(assert (= (and b!3650285 (not res!1480812)) b!3650304))

(assert (= b!3650310 b!3650298))

(assert (= b!3650283 b!3650310))

(assert (= (and start!341334 ((_ is Cons!38491) rules!3307)) b!3650283))

(assert (= (and start!341334 ((_ is Cons!38489) suffix!1395)) b!3650290))

(assert (= b!3650282 b!3650315))

(assert (= b!3650294 b!3650282))

(assert (= start!341334 b!3650294))

(assert (= b!3650287 b!3650316))

(assert (= start!341334 b!3650287))

(assert (= b!3650313 b!3650306))

(assert (= start!341334 b!3650313))

(declare-fun m!4154745 () Bool)

(assert (=> b!3650297 m!4154745))

(declare-fun m!4154747 () Bool)

(assert (=> b!3650297 m!4154747))

(assert (=> b!3650297 m!4154745))

(declare-fun m!4154749 () Bool)

(assert (=> b!3650297 m!4154749))

(declare-fun m!4154751 () Bool)

(assert (=> b!3650297 m!4154751))

(declare-fun m!4154753 () Bool)

(assert (=> b!3650297 m!4154753))

(declare-fun m!4154755 () Bool)

(assert (=> b!3650297 m!4154755))

(declare-fun m!4154757 () Bool)

(assert (=> b!3650281 m!4154757))

(declare-fun m!4154759 () Bool)

(assert (=> bm!263812 m!4154759))

(declare-fun m!4154761 () Bool)

(assert (=> b!3650308 m!4154761))

(assert (=> b!3650308 m!4154761))

(declare-fun m!4154763 () Bool)

(assert (=> b!3650308 m!4154763))

(assert (=> b!3650308 m!4154763))

(declare-fun m!4154765 () Bool)

(assert (=> b!3650308 m!4154765))

(declare-fun m!4154767 () Bool)

(assert (=> b!3650308 m!4154767))

(declare-fun m!4154769 () Bool)

(assert (=> b!3650285 m!4154769))

(declare-fun m!4154771 () Bool)

(assert (=> b!3650285 m!4154771))

(declare-fun m!4154773 () Bool)

(assert (=> b!3650307 m!4154773))

(declare-fun m!4154775 () Bool)

(assert (=> b!3650288 m!4154775))

(declare-fun m!4154777 () Bool)

(assert (=> b!3650303 m!4154777))

(declare-fun m!4154779 () Bool)

(assert (=> b!3650310 m!4154779))

(declare-fun m!4154781 () Bool)

(assert (=> b!3650310 m!4154781))

(declare-fun m!4154783 () Bool)

(assert (=> b!3650284 m!4154783))

(declare-fun m!4154785 () Bool)

(assert (=> b!3650302 m!4154785))

(declare-fun m!4154787 () Bool)

(assert (=> b!3650302 m!4154787))

(declare-fun m!4154789 () Bool)

(assert (=> b!3650302 m!4154789))

(declare-fun m!4154791 () Bool)

(assert (=> b!3650280 m!4154791))

(declare-fun m!4154793 () Bool)

(assert (=> start!341334 m!4154793))

(declare-fun m!4154795 () Bool)

(assert (=> b!3650277 m!4154795))

(declare-fun m!4154797 () Bool)

(assert (=> bm!263813 m!4154797))

(declare-fun m!4154799 () Bool)

(assert (=> b!3650311 m!4154799))

(declare-fun m!4154801 () Bool)

(assert (=> b!3650313 m!4154801))

(declare-fun m!4154803 () Bool)

(assert (=> b!3650313 m!4154803))

(declare-fun m!4154805 () Bool)

(assert (=> b!3650312 m!4154805))

(declare-fun m!4154807 () Bool)

(assert (=> b!3650296 m!4154807))

(declare-fun m!4154809 () Bool)

(assert (=> b!3650296 m!4154809))

(declare-fun m!4154811 () Bool)

(assert (=> b!3650296 m!4154811))

(declare-fun m!4154813 () Bool)

(assert (=> b!3650296 m!4154813))

(declare-fun m!4154815 () Bool)

(assert (=> b!3650296 m!4154815))

(declare-fun m!4154817 () Bool)

(assert (=> b!3650296 m!4154817))

(declare-fun m!4154819 () Bool)

(assert (=> b!3650296 m!4154819))

(declare-fun m!4154821 () Bool)

(assert (=> b!3650296 m!4154821))

(assert (=> b!3650296 m!4154811))

(declare-fun m!4154823 () Bool)

(assert (=> b!3650296 m!4154823))

(declare-fun m!4154825 () Bool)

(assert (=> b!3650296 m!4154825))

(declare-fun m!4154827 () Bool)

(assert (=> b!3650296 m!4154827))

(declare-fun m!4154829 () Bool)

(assert (=> b!3650296 m!4154829))

(declare-fun m!4154831 () Bool)

(assert (=> b!3650296 m!4154831))

(assert (=> b!3650296 m!4154761))

(declare-fun m!4154833 () Bool)

(assert (=> b!3650296 m!4154833))

(declare-fun m!4154835 () Bool)

(assert (=> b!3650301 m!4154835))

(declare-fun m!4154837 () Bool)

(assert (=> b!3650299 m!4154837))

(declare-fun m!4154839 () Bool)

(assert (=> b!3650275 m!4154839))

(declare-fun m!4154841 () Bool)

(assert (=> b!3650275 m!4154841))

(declare-fun m!4154843 () Bool)

(assert (=> b!3650275 m!4154843))

(declare-fun m!4154845 () Bool)

(assert (=> b!3650289 m!4154845))

(declare-fun m!4154847 () Bool)

(assert (=> b!3650289 m!4154847))

(declare-fun m!4154849 () Bool)

(assert (=> b!3650289 m!4154849))

(declare-fun m!4154851 () Bool)

(assert (=> bm!263811 m!4154851))

(declare-fun m!4154853 () Bool)

(assert (=> b!3650278 m!4154853))

(declare-fun m!4154855 () Bool)

(assert (=> b!3650278 m!4154855))

(declare-fun m!4154857 () Bool)

(assert (=> b!3650278 m!4154857))

(declare-fun m!4154859 () Bool)

(assert (=> b!3650278 m!4154859))

(declare-fun m!4154861 () Bool)

(assert (=> b!3650314 m!4154861))

(declare-fun m!4154863 () Bool)

(assert (=> b!3650304 m!4154863))

(assert (=> b!3650304 m!4154797))

(assert (=> b!3650304 m!4154797))

(declare-fun m!4154865 () Bool)

(assert (=> b!3650304 m!4154865))

(declare-fun m!4154867 () Bool)

(assert (=> b!3650304 m!4154867))

(declare-fun m!4154869 () Bool)

(assert (=> b!3650287 m!4154869))

(declare-fun m!4154871 () Bool)

(assert (=> b!3650287 m!4154871))

(declare-fun m!4154873 () Bool)

(assert (=> b!3650294 m!4154873))

(declare-fun m!4154875 () Bool)

(assert (=> b!3650295 m!4154875))

(assert (=> b!3650295 m!4154875))

(declare-fun m!4154877 () Bool)

(assert (=> b!3650295 m!4154877))

(declare-fun m!4154879 () Bool)

(assert (=> b!3650282 m!4154879))

(declare-fun m!4154881 () Bool)

(assert (=> b!3650282 m!4154881))

(declare-fun m!4154883 () Bool)

(assert (=> b!3650279 m!4154883))

(declare-fun m!4154885 () Bool)

(assert (=> b!3650279 m!4154885))

(declare-fun m!4154887 () Bool)

(assert (=> b!3650279 m!4154887))

(declare-fun m!4154889 () Bool)

(assert (=> b!3650279 m!4154889))

(declare-fun m!4154891 () Bool)

(assert (=> b!3650279 m!4154891))

(declare-fun m!4154893 () Bool)

(assert (=> b!3650279 m!4154893))

(declare-fun m!4154895 () Bool)

(assert (=> b!3650279 m!4154895))

(assert (=> b!3650279 m!4154891))

(check-sat (not b!3650280) (not b_next!96681) (not b!3650284) (not b!3650290) (not b!3650313) b_and!269957 b_and!269967 (not b!3650311) (not b!3650289) (not b!3650297) b_and!269963 (not b!3650282) (not b!3650307) (not b!3650285) b_and!269961 (not b!3650277) (not b!3650299) (not b!3650287) (not bm!263812) (not b_next!96691) (not b!3650278) (not b_next!96687) b_and!269955 (not b_next!96689) (not b!3650275) (not b!3650301) tp_is_empty!18125 (not b!3650294) (not b_next!96683) (not b_next!96695) b_and!269969 (not b_next!96685) (not b!3650279) (not bm!263811) (not bm!263813) b_and!269959 (not b!3650296) (not b!3650312) (not b!3650310) (not b!3650308) (not b!3650281) (not b!3650295) b_and!269965 (not b!3650303) (not b!3650314) (not start!341334) (not b_next!96693) (not b!3650304) (not b!3650302) (not b!3650283) (not b!3650288))
(check-sat (not b_next!96681) b_and!269961 (not b_next!96683) (not b_next!96685) b_and!269957 b_and!269959 b_and!269967 b_and!269965 (not b_next!96693) b_and!269963 (not b_next!96691) (not b_next!96687) b_and!269955 (not b_next!96689) (not b_next!96695) b_and!269969)
