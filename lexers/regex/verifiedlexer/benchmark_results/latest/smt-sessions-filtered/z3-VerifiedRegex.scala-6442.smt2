; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!336850 () Bool)

(assert start!336850)

(declare-fun b!3617374 () Bool)

(declare-fun b_free!94185 () Bool)

(declare-fun b_next!94889 () Bool)

(assert (=> b!3617374 (= b_free!94185 (not b_next!94889))))

(declare-fun tp!1105236 () Bool)

(declare-fun b_and!264235 () Bool)

(assert (=> b!3617374 (= tp!1105236 b_and!264235)))

(declare-fun b_free!94187 () Bool)

(declare-fun b_next!94891 () Bool)

(assert (=> b!3617374 (= b_free!94187 (not b_next!94891))))

(declare-fun tp!1105234 () Bool)

(declare-fun b_and!264237 () Bool)

(assert (=> b!3617374 (= tp!1105234 b_and!264237)))

(declare-fun b!3617388 () Bool)

(declare-fun b_free!94189 () Bool)

(declare-fun b_next!94893 () Bool)

(assert (=> b!3617388 (= b_free!94189 (not b_next!94893))))

(declare-fun tp!1105240 () Bool)

(declare-fun b_and!264239 () Bool)

(assert (=> b!3617388 (= tp!1105240 b_and!264239)))

(declare-fun b_free!94191 () Bool)

(declare-fun b_next!94895 () Bool)

(assert (=> b!3617388 (= b_free!94191 (not b_next!94895))))

(declare-fun tp!1105245 () Bool)

(declare-fun b_and!264241 () Bool)

(assert (=> b!3617388 (= tp!1105245 b_and!264241)))

(declare-fun b!3617390 () Bool)

(declare-fun b_free!94193 () Bool)

(declare-fun b_next!94897 () Bool)

(assert (=> b!3617390 (= b_free!94193 (not b_next!94897))))

(declare-fun tp!1105241 () Bool)

(declare-fun b_and!264243 () Bool)

(assert (=> b!3617390 (= tp!1105241 b_and!264243)))

(declare-fun b_free!94195 () Bool)

(declare-fun b_next!94899 () Bool)

(assert (=> b!3617390 (= b_free!94195 (not b_next!94899))))

(declare-fun tp!1105244 () Bool)

(declare-fun b_and!264245 () Bool)

(assert (=> b!3617390 (= tp!1105244 b_and!264245)))

(declare-fun b!3617411 () Bool)

(declare-fun b_free!94197 () Bool)

(declare-fun b_next!94901 () Bool)

(assert (=> b!3617411 (= b_free!94197 (not b_next!94901))))

(declare-fun tp!1105232 () Bool)

(declare-fun b_and!264247 () Bool)

(assert (=> b!3617411 (= tp!1105232 b_and!264247)))

(declare-fun b_free!94199 () Bool)

(declare-fun b_next!94903 () Bool)

(assert (=> b!3617411 (= b_free!94199 (not b_next!94903))))

(declare-fun tp!1105235 () Bool)

(declare-fun b_and!264249 () Bool)

(assert (=> b!3617411 (= tp!1105235 b_and!264249)))

(declare-fun b!3617372 () Bool)

(declare-datatypes ((Unit!54616 0))(
  ( (Unit!54617) )
))
(declare-fun e!2238976 () Unit!54616)

(declare-fun Unit!54618 () Unit!54616)

(assert (=> b!3617372 (= e!2238976 Unit!54618)))

(declare-fun b!3617373 () Bool)

(assert (=> b!3617373 false))

(declare-fun lt!1248474 () Unit!54616)

(declare-datatypes ((List!38217 0))(
  ( (Nil!38093) (Cons!38093 (h!43513 (_ BitVec 16)) (t!293868 List!38217)) )
))
(declare-datatypes ((TokenValue!5894 0))(
  ( (FloatLiteralValue!11788 (text!41703 List!38217)) (TokenValueExt!5893 (__x!24005 Int)) (Broken!29470 (value!181858 List!38217)) (Object!6017) (End!5894) (Def!5894) (Underscore!5894) (Match!5894) (Else!5894) (Error!5894) (Case!5894) (If!5894) (Extends!5894) (Abstract!5894) (Class!5894) (Val!5894) (DelimiterValue!11788 (del!5954 List!38217)) (KeywordValue!5900 (value!181859 List!38217)) (CommentValue!11788 (value!181860 List!38217)) (WhitespaceValue!11788 (value!181861 List!38217)) (IndentationValue!5894 (value!181862 List!38217)) (String!42803) (Int32!5894) (Broken!29471 (value!181863 List!38217)) (Boolean!5895) (Unit!54619) (OperatorValue!5897 (op!5954 List!38217)) (IdentifierValue!11788 (value!181864 List!38217)) (IdentifierValue!11789 (value!181865 List!38217)) (WhitespaceValue!11789 (value!181866 List!38217)) (True!11788) (False!11788) (Broken!29472 (value!181867 List!38217)) (Broken!29473 (value!181868 List!38217)) (True!11789) (RightBrace!5894) (RightBracket!5894) (Colon!5894) (Null!5894) (Comma!5894) (LeftBracket!5894) (False!11789) (LeftBrace!5894) (ImaginaryLiteralValue!5894 (text!41704 List!38217)) (StringLiteralValue!17682 (value!181869 List!38217)) (EOFValue!5894 (value!181870 List!38217)) (IdentValue!5894 (value!181871 List!38217)) (DelimiterValue!11789 (value!181872 List!38217)) (DedentValue!5894 (value!181873 List!38217)) (NewLineValue!5894 (value!181874 List!38217)) (IntegerValue!17682 (value!181875 (_ BitVec 32)) (text!41705 List!38217)) (IntegerValue!17683 (value!181876 Int) (text!41706 List!38217)) (Times!5894) (Or!5894) (Equal!5894) (Minus!5894) (Broken!29474 (value!181877 List!38217)) (And!5894) (Div!5894) (LessEqual!5894) (Mod!5894) (Concat!16317) (Not!5894) (Plus!5894) (SpaceValue!5894 (value!181878 List!38217)) (IntegerValue!17684 (value!181879 Int) (text!41707 List!38217)) (StringLiteralValue!17683 (text!41708 List!38217)) (FloatLiteralValue!11789 (text!41709 List!38217)) (BytesLiteralValue!5894 (value!181880 List!38217)) (CommentValue!11789 (value!181881 List!38217)) (StringLiteralValue!17684 (value!181882 List!38217)) (ErrorTokenValue!5894 (msg!5955 List!38217)) )
))
(declare-datatypes ((C!21032 0))(
  ( (C!21033 (val!12564 Int)) )
))
(declare-datatypes ((Regex!10423 0))(
  ( (ElementMatch!10423 (c!625918 C!21032)) (Concat!16318 (regOne!21358 Regex!10423) (regTwo!21358 Regex!10423)) (EmptyExpr!10423) (Star!10423 (reg!10752 Regex!10423)) (EmptyLang!10423) (Union!10423 (regOne!21359 Regex!10423) (regTwo!21359 Regex!10423)) )
))
(declare-datatypes ((String!42804 0))(
  ( (String!42805 (value!181883 String)) )
))
(declare-datatypes ((List!38218 0))(
  ( (Nil!38094) (Cons!38094 (h!43514 C!21032) (t!293869 List!38218)) )
))
(declare-datatypes ((IArray!23231 0))(
  ( (IArray!23232 (innerList!11673 List!38218)) )
))
(declare-datatypes ((Conc!11613 0))(
  ( (Node!11613 (left!29751 Conc!11613) (right!30081 Conc!11613) (csize!23456 Int) (cheight!11824 Int)) (Leaf!18056 (xs!14815 IArray!23231) (csize!23457 Int)) (Empty!11613) )
))
(declare-datatypes ((BalanceConc!22840 0))(
  ( (BalanceConc!22841 (c!625919 Conc!11613)) )
))
(declare-datatypes ((TokenValueInjection!11216 0))(
  ( (TokenValueInjection!11217 (toValue!7948 Int) (toChars!7807 Int)) )
))
(declare-datatypes ((Rule!11128 0))(
  ( (Rule!11129 (regex!5664 Regex!10423) (tag!6378 String!42804) (isSeparator!5664 Bool) (transformation!5664 TokenValueInjection!11216)) )
))
(declare-datatypes ((List!38219 0))(
  ( (Nil!38095) (Cons!38095 (h!43515 Rule!11128) (t!293870 List!38219)) )
))
(declare-fun rules!3307 () List!38219)

(declare-datatypes ((LexerInterface!5253 0))(
  ( (LexerInterfaceExt!5250 (__x!24006 Int)) (Lexer!5251) )
))
(declare-fun thiss!23823 () LexerInterface!5253)

(declare-fun lt!1248444 () List!38218)

(declare-fun rule!403 () Rule!11128)

(declare-fun lt!1248453 () List!38218)

(declare-datatypes ((Token!10694 0))(
  ( (Token!10695 (value!181884 TokenValue!5894) (rule!8422 Rule!11128) (size!29057 Int) (originalCharacters!6378 List!38218)) )
))
(declare-datatypes ((tuple2!37976 0))(
  ( (tuple2!37977 (_1!22122 Token!10694) (_2!22122 List!38218)) )
))
(declare-fun lt!1248468 () tuple2!37976)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!198 (LexerInterface!5253 List!38219 Rule!11128 List!38218 List!38218 Rule!11128) Unit!54616)

(assert (=> b!3617373 (= lt!1248474 (lemmaMaxPrefNoSmallerRuleMatches!198 thiss!23823 rules!3307 (rule!8422 (_1!22122 lt!1248468)) lt!1248444 lt!1248453 rule!403))))

(declare-fun Unit!54620 () Unit!54616)

(assert (=> b!3617373 (= e!2238976 Unit!54620)))

(declare-fun e!2238973 () Bool)

(assert (=> b!3617374 (= e!2238973 (and tp!1105236 tp!1105234))))

(declare-fun b!3617375 () Bool)

(declare-fun res!1463679 () Bool)

(declare-fun e!2238988 () Bool)

(assert (=> b!3617375 (=> res!1463679 e!2238988)))

(declare-fun anOtherTypeRule!33 () Rule!11128)

(declare-fun lt!1248470 () C!21032)

(declare-fun contains!7391 (List!38218 C!21032) Bool)

(declare-fun usedCharacters!878 (Regex!10423) List!38218)

(assert (=> b!3617375 (= res!1463679 (not (contains!7391 (usedCharacters!878 (regex!5664 anOtherTypeRule!33)) lt!1248470)))))

(declare-fun b!3617376 () Bool)

(declare-fun e!2238956 () Bool)

(assert (=> b!3617376 e!2238956))

(declare-fun res!1463684 () Bool)

(assert (=> b!3617376 (=> (not res!1463684) (not e!2238956))))

(declare-fun matchR!4992 (Regex!10423 List!38218) Bool)

(assert (=> b!3617376 (= res!1463684 (not (matchR!4992 (regex!5664 (rule!8422 (_1!22122 lt!1248468))) lt!1248444)))))

(declare-fun lt!1248472 () Unit!54616)

(assert (=> b!3617376 (= lt!1248472 (lemmaMaxPrefNoSmallerRuleMatches!198 thiss!23823 rules!3307 rule!403 lt!1248444 lt!1248444 (rule!8422 (_1!22122 lt!1248468))))))

(declare-fun isEmpty!22506 (List!38218) Bool)

(declare-fun getSuffix!1602 (List!38218 List!38218) List!38218)

(assert (=> b!3617376 (isEmpty!22506 (getSuffix!1602 lt!1248444 lt!1248444))))

(declare-fun lt!1248464 () Unit!54616)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!158 (List!38218) Unit!54616)

(assert (=> b!3617376 (= lt!1248464 (lemmaGetSuffixOnListWithItSelfIsEmpty!158 lt!1248444))))

(declare-fun e!2238967 () Unit!54616)

(declare-fun Unit!54621 () Unit!54616)

(assert (=> b!3617376 (= e!2238967 Unit!54621)))

(declare-fun b!3617377 () Bool)

(declare-fun e!2238968 () Bool)

(declare-fun lt!1248424 () Int)

(declare-fun size!29058 (List!38218) Int)

(assert (=> b!3617377 (= e!2238968 (>= (size!29058 lt!1248453) lt!1248424))))

(declare-fun lt!1248452 () TokenValue!5894)

(declare-fun lt!1248463 () List!38218)

(declare-datatypes ((Option!7958 0))(
  ( (None!7957) (Some!7957 (v!37715 tuple2!37976)) )
))
(declare-fun maxPrefixOneRule!1931 (LexerInterface!5253 Rule!11128 List!38218) Option!7958)

(assert (=> b!3617377 (= (maxPrefixOneRule!1931 thiss!23823 rule!403 lt!1248453) (Some!7957 (tuple2!37977 (Token!10695 lt!1248452 rule!403 lt!1248424 lt!1248444) lt!1248463)))))

(assert (=> b!3617377 (= lt!1248424 (size!29058 lt!1248444))))

(declare-fun apply!9170 (TokenValueInjection!11216 BalanceConc!22840) TokenValue!5894)

(declare-fun seqFromList!4217 (List!38218) BalanceConc!22840)

(assert (=> b!3617377 (= lt!1248452 (apply!9170 (transformation!5664 rule!403) (seqFromList!4217 lt!1248444)))))

(declare-fun lt!1248433 () Unit!54616)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1003 (LexerInterface!5253 List!38219 List!38218 List!38218 List!38218 Rule!11128) Unit!54616)

(assert (=> b!3617377 (= lt!1248433 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1003 thiss!23823 rules!3307 lt!1248444 lt!1248453 lt!1248463 rule!403))))

(assert (=> b!3617377 (= lt!1248463 (getSuffix!1602 lt!1248453 lt!1248444))))

(declare-fun lt!1248442 () Unit!54616)

(declare-fun e!2238978 () Unit!54616)

(assert (=> b!3617377 (= lt!1248442 e!2238978)))

(declare-fun c!625917 () Bool)

(declare-fun token!511 () Token!10694)

(assert (=> b!3617377 (= c!625917 (not (= (rule!8422 (_1!22122 lt!1248468)) (rule!8422 token!511))))))

(declare-fun lt!1248446 () List!38218)

(assert (=> b!3617377 (= lt!1248446 lt!1248444)))

(declare-fun lt!1248458 () Unit!54616)

(declare-fun lemmaIsPrefixSameLengthThenSameList!601 (List!38218 List!38218 List!38218) Unit!54616)

(assert (=> b!3617377 (= lt!1248458 (lemmaIsPrefixSameLengthThenSameList!601 lt!1248446 lt!1248444 lt!1248453))))

(declare-fun lt!1248429 () Unit!54616)

(declare-fun e!2238984 () Unit!54616)

(assert (=> b!3617377 (= lt!1248429 e!2238984)))

(declare-fun c!625908 () Bool)

(declare-fun lt!1248449 () Int)

(declare-fun lt!1248431 () Int)

(assert (=> b!3617377 (= c!625908 (< lt!1248449 lt!1248431))))

(declare-fun lt!1248469 () Unit!54616)

(declare-fun e!2238985 () Unit!54616)

(assert (=> b!3617377 (= lt!1248469 e!2238985)))

(declare-fun c!625913 () Bool)

(assert (=> b!3617377 (= c!625913 (> lt!1248449 lt!1248431))))

(declare-fun lt!1248437 () BalanceConc!22840)

(declare-fun size!29059 (BalanceConc!22840) Int)

(assert (=> b!3617377 (= lt!1248431 (size!29059 lt!1248437))))

(declare-fun lt!1248423 () Unit!54616)

(declare-fun e!2238991 () Unit!54616)

(assert (=> b!3617377 (= lt!1248423 e!2238991)))

(declare-fun c!625909 () Bool)

(assert (=> b!3617377 (= c!625909 (isSeparator!5664 rule!403))))

(declare-fun lt!1248420 () Unit!54616)

(declare-fun e!2238969 () Unit!54616)

(assert (=> b!3617377 (= lt!1248420 e!2238969)))

(declare-fun c!625910 () Bool)

(declare-fun lt!1248436 () List!38218)

(declare-fun lt!1248471 () C!21032)

(assert (=> b!3617377 (= c!625910 (not (contains!7391 lt!1248436 lt!1248471)))))

(declare-fun head!7630 (List!38218) C!21032)

(assert (=> b!3617377 (= lt!1248471 (head!7630 lt!1248446))))

(declare-fun b!3617378 () Bool)

(declare-fun res!1463689 () Bool)

(assert (=> b!3617378 (=> res!1463689 e!2238988)))

(declare-fun sepAndNonSepRulesDisjointChars!1834 (List!38219 List!38219) Bool)

(assert (=> b!3617378 (= res!1463689 (not (sepAndNonSepRulesDisjointChars!1834 rules!3307 rules!3307)))))

(declare-fun b!3617379 () Bool)

(declare-fun e!2238977 () Bool)

(assert (=> b!3617379 (= e!2238977 e!2238968)))

(declare-fun res!1463687 () Bool)

(assert (=> b!3617379 (=> res!1463687 e!2238968)))

(declare-fun lt!1248454 () Option!7958)

(declare-fun lt!1248460 () List!38218)

(assert (=> b!3617379 (= res!1463687 (or (not (= lt!1248460 (_2!22122 lt!1248468))) (not (= lt!1248454 (Some!7957 (tuple2!37977 (_1!22122 lt!1248468) lt!1248460))))))))

(assert (=> b!3617379 (= (_2!22122 lt!1248468) lt!1248460)))

(declare-fun lt!1248455 () Unit!54616)

(declare-fun lemmaSamePrefixThenSameSuffix!1382 (List!38218 List!38218 List!38218 List!38218 List!38218) Unit!54616)

(assert (=> b!3617379 (= lt!1248455 (lemmaSamePrefixThenSameSuffix!1382 lt!1248446 (_2!22122 lt!1248468) lt!1248446 lt!1248460 lt!1248453))))

(assert (=> b!3617379 (= lt!1248460 (getSuffix!1602 lt!1248453 lt!1248446))))

(declare-fun lt!1248419 () TokenValue!5894)

(declare-fun lt!1248478 () Int)

(assert (=> b!3617379 (= lt!1248454 (Some!7957 (tuple2!37977 (Token!10695 lt!1248419 (rule!8422 (_1!22122 lt!1248468)) lt!1248478 lt!1248446) (_2!22122 lt!1248468))))))

(assert (=> b!3617379 (= lt!1248454 (maxPrefixOneRule!1931 thiss!23823 (rule!8422 (_1!22122 lt!1248468)) lt!1248453))))

(assert (=> b!3617379 (= lt!1248478 (size!29058 lt!1248446))))

(assert (=> b!3617379 (= lt!1248419 (apply!9170 (transformation!5664 (rule!8422 (_1!22122 lt!1248468))) (seqFromList!4217 lt!1248446)))))

(declare-fun lt!1248430 () Unit!54616)

(assert (=> b!3617379 (= lt!1248430 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1003 thiss!23823 rules!3307 lt!1248446 lt!1248453 (_2!22122 lt!1248468) (rule!8422 (_1!22122 lt!1248468))))))

(declare-fun b!3617380 () Bool)

(assert (=> b!3617380 false))

(declare-fun lt!1248439 () Unit!54616)

(declare-fun call!261668 () Unit!54616)

(assert (=> b!3617380 (= lt!1248439 call!261668)))

(declare-fun call!261666 () Bool)

(assert (=> b!3617380 (not call!261666)))

(declare-fun lt!1248451 () Unit!54616)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!252 (LexerInterface!5253 List!38219 List!38219 Rule!11128 Rule!11128 C!21032) Unit!54616)

(assert (=> b!3617380 (= lt!1248451 (lemmaSepRuleNotContainsCharContainedInANonSepRule!252 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8422 (_1!22122 lt!1248468)) lt!1248470))))

(declare-fun e!2238963 () Unit!54616)

(declare-fun Unit!54622 () Unit!54616)

(assert (=> b!3617380 (= e!2238963 Unit!54622)))

(declare-fun bm!261660 () Bool)

(declare-fun call!261665 () List!38218)

(assert (=> bm!261660 (= call!261666 (contains!7391 call!261665 lt!1248470))))

(declare-fun bm!261661 () Bool)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!648 (Regex!10423 List!38218 C!21032) Unit!54616)

(assert (=> bm!261661 (= call!261668 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!648 (regex!5664 (rule!8422 (_1!22122 lt!1248468))) lt!1248446 lt!1248470))))

(declare-fun b!3617381 () Bool)

(declare-fun e!2238986 () Unit!54616)

(assert (=> b!3617381 (= e!2238991 e!2238986)))

(declare-fun c!625916 () Bool)

(assert (=> b!3617381 (= c!625916 (not (isSeparator!5664 (rule!8422 (_1!22122 lt!1248468)))))))

(declare-fun b!3617382 () Bool)

(assert (=> b!3617382 (= e!2238956 false)))

(declare-fun b!3617383 () Bool)

(declare-fun Unit!54623 () Unit!54616)

(assert (=> b!3617383 (= e!2238978 Unit!54623)))

(declare-fun bm!261662 () Bool)

(declare-fun call!261670 () Bool)

(declare-fun call!261667 () List!38218)

(assert (=> bm!261662 (= call!261670 (contains!7391 call!261667 lt!1248471))))

(declare-fun b!3617384 () Bool)

(declare-fun res!1463678 () Bool)

(declare-fun e!2238989 () Bool)

(assert (=> b!3617384 (=> (not res!1463678) (not e!2238989))))

(assert (=> b!3617384 (= res!1463678 (= (rule!8422 token!511) rule!403))))

(declare-fun b!3617385 () Bool)

(declare-fun res!1463680 () Bool)

(declare-fun e!2238958 () Bool)

(assert (=> b!3617385 (=> res!1463680 e!2238958)))

(declare-fun suffix!1395 () List!38218)

(assert (=> b!3617385 (= res!1463680 (isEmpty!22506 suffix!1395))))

(declare-fun b!3617386 () Bool)

(declare-fun Unit!54624 () Unit!54616)

(assert (=> b!3617386 (= e!2238986 Unit!54624)))

(declare-fun b!3617387 () Bool)

(declare-fun res!1463685 () Bool)

(declare-fun e!2238992 () Bool)

(assert (=> b!3617387 (=> (not res!1463685) (not e!2238992))))

(declare-fun contains!7392 (List!38219 Rule!11128) Bool)

(assert (=> b!3617387 (= res!1463685 (contains!7392 rules!3307 anOtherTypeRule!33))))

(declare-fun e!2238990 () Bool)

(assert (=> b!3617388 (= e!2238990 (and tp!1105240 tp!1105245))))

(declare-fun b!3617389 () Bool)

(declare-fun e!2238975 () Bool)

(assert (=> b!3617389 (= e!2238975 e!2238989)))

(declare-fun res!1463694 () Bool)

(assert (=> b!3617389 (=> (not res!1463694) (not e!2238989))))

(declare-fun lt!1248467 () tuple2!37976)

(assert (=> b!3617389 (= res!1463694 (= (_1!22122 lt!1248467) token!511))))

(declare-fun lt!1248448 () Option!7958)

(declare-fun get!12400 (Option!7958) tuple2!37976)

(assert (=> b!3617389 (= lt!1248467 (get!12400 lt!1248448))))

(declare-fun e!2238974 () Bool)

(assert (=> b!3617390 (= e!2238974 (and tp!1105241 tp!1105244))))

(declare-fun b!3617391 () Bool)

(declare-fun Unit!54625 () Unit!54616)

(assert (=> b!3617391 (= e!2238978 Unit!54625)))

(declare-fun lt!1248476 () Int)

(declare-fun getIndex!446 (List!38219 Rule!11128) Int)

(assert (=> b!3617391 (= lt!1248476 (getIndex!446 rules!3307 (rule!8422 (_1!22122 lt!1248468))))))

(declare-fun lt!1248425 () Int)

(assert (=> b!3617391 (= lt!1248425 (getIndex!446 rules!3307 rule!403))))

(declare-fun c!625912 () Bool)

(assert (=> b!3617391 (= c!625912 (< lt!1248476 lt!1248425))))

(declare-fun lt!1248422 () Unit!54616)

(assert (=> b!3617391 (= lt!1248422 e!2238967)))

(declare-fun c!625914 () Bool)

(assert (=> b!3617391 (= c!625914 (< lt!1248425 lt!1248476))))

(declare-fun lt!1248421 () Unit!54616)

(assert (=> b!3617391 (= lt!1248421 e!2238976)))

(declare-fun lt!1248435 () Unit!54616)

(declare-fun lemmaSameIndexThenSameElement!214 (List!38219 Rule!11128 Rule!11128) Unit!54616)

(assert (=> b!3617391 (= lt!1248435 (lemmaSameIndexThenSameElement!214 rules!3307 (rule!8422 (_1!22122 lt!1248468)) rule!403))))

(assert (=> b!3617391 false))

(declare-fun bm!261663 () Bool)

(assert (=> bm!261663 (= call!261667 (usedCharacters!878 (regex!5664 (rule!8422 (_1!22122 lt!1248468)))))))

(declare-fun b!3617392 () Bool)

(declare-fun e!2238962 () Bool)

(declare-fun tp_is_empty!17929 () Bool)

(declare-fun tp!1105243 () Bool)

(assert (=> b!3617392 (= e!2238962 (and tp_is_empty!17929 tp!1105243))))

(declare-fun b!3617393 () Bool)

(assert (=> b!3617393 (= e!2238985 e!2238963)))

(declare-fun lt!1248475 () Unit!54616)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!42 (List!38218 List!38218 List!38218 List!38218) Unit!54616)

(assert (=> b!3617393 (= lt!1248475 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!42 lt!1248444 suffix!1395 lt!1248446 lt!1248453))))

(assert (=> b!3617393 (contains!7391 lt!1248446 lt!1248470)))

(declare-fun c!625915 () Bool)

(assert (=> b!3617393 (= c!625915 (isSeparator!5664 rule!403))))

(declare-fun b!3617394 () Bool)

(declare-fun e!2238979 () Unit!54616)

(assert (=> b!3617394 (= e!2238991 e!2238979)))

(declare-fun c!625911 () Bool)

(assert (=> b!3617394 (= c!625911 (isSeparator!5664 (rule!8422 (_1!22122 lt!1248468))))))

(declare-fun b!3617395 () Bool)

(declare-fun e!2238971 () Bool)

(assert (=> b!3617395 (= e!2238971 e!2238977)))

(declare-fun res!1463681 () Bool)

(assert (=> b!3617395 (=> res!1463681 e!2238977)))

(declare-fun lt!1248450 () TokenValue!5894)

(declare-fun lt!1248466 () Option!7958)

(assert (=> b!3617395 (= res!1463681 (not (= lt!1248466 (Some!7957 (tuple2!37977 (Token!10695 lt!1248450 (rule!8422 (_1!22122 lt!1248468)) lt!1248449 lt!1248446) (_2!22122 lt!1248468))))))))

(declare-fun lt!1248441 () BalanceConc!22840)

(assert (=> b!3617395 (= lt!1248449 (size!29059 lt!1248441))))

(assert (=> b!3617395 (= lt!1248450 (apply!9170 (transformation!5664 (rule!8422 (_1!22122 lt!1248468))) lt!1248441))))

(declare-fun lt!1248477 () Unit!54616)

(declare-fun lemmaCharactersSize!717 (Token!10694) Unit!54616)

(assert (=> b!3617395 (= lt!1248477 (lemmaCharactersSize!717 (_1!22122 lt!1248468)))))

(declare-fun lt!1248428 () Unit!54616)

(declare-fun lemmaEqSameImage!855 (TokenValueInjection!11216 BalanceConc!22840 BalanceConc!22840) Unit!54616)

(assert (=> b!3617395 (= lt!1248428 (lemmaEqSameImage!855 (transformation!5664 (rule!8422 (_1!22122 lt!1248468))) lt!1248441 (seqFromList!4217 (originalCharacters!6378 (_1!22122 lt!1248468)))))))

(declare-fun lt!1248461 () Unit!54616)

(declare-fun lemmaSemiInverse!1421 (TokenValueInjection!11216 BalanceConc!22840) Unit!54616)

(assert (=> b!3617395 (= lt!1248461 (lemmaSemiInverse!1421 (transformation!5664 (rule!8422 (_1!22122 lt!1248468))) lt!1248441))))

(declare-fun b!3617396 () Bool)

(declare-fun Unit!54626 () Unit!54616)

(assert (=> b!3617396 (= e!2238967 Unit!54626)))

(declare-fun b!3617397 () Bool)

(assert (=> b!3617397 (= e!2238958 e!2238988)))

(declare-fun res!1463691 () Bool)

(assert (=> b!3617397 (=> res!1463691 e!2238988)))

(assert (=> b!3617397 (= res!1463691 (contains!7391 lt!1248436 lt!1248470))))

(assert (=> b!3617397 (= lt!1248470 (head!7630 suffix!1395))))

(assert (=> b!3617397 (= lt!1248436 (usedCharacters!878 (regex!5664 rule!403)))))

(declare-fun b!3617398 () Bool)

(assert (=> b!3617398 false))

(declare-fun lt!1248465 () Unit!54616)

(declare-fun call!261669 () Unit!54616)

(assert (=> b!3617398 (= lt!1248465 call!261669)))

(assert (=> b!3617398 (not call!261670)))

(declare-fun lt!1248432 () Unit!54616)

(assert (=> b!3617398 (= lt!1248432 (lemmaSepRuleNotContainsCharContainedInANonSepRule!252 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8422 (_1!22122 lt!1248468)) lt!1248471))))

(declare-fun Unit!54627 () Unit!54616)

(assert (=> b!3617398 (= e!2238979 Unit!54627)))

(declare-fun b!3617399 () Bool)

(declare-fun tp!1105238 () Bool)

(declare-fun e!2238972 () Bool)

(declare-fun e!2238957 () Bool)

(declare-fun inv!21 (TokenValue!5894) Bool)

(assert (=> b!3617399 (= e!2238957 (and (inv!21 (value!181884 token!511)) e!2238972 tp!1105238))))

(declare-fun b!3617400 () Bool)

(assert (=> b!3617400 false))

(declare-fun lt!1248459 () Unit!54616)

(assert (=> b!3617400 (= lt!1248459 call!261669)))

(assert (=> b!3617400 (not call!261670)))

(declare-fun lt!1248434 () Unit!54616)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!370 (LexerInterface!5253 List!38219 List!38219 Rule!11128 Rule!11128 C!21032) Unit!54616)

(assert (=> b!3617400 (= lt!1248434 (lemmaNonSepRuleNotContainsCharContainedInASepRule!370 thiss!23823 rules!3307 rules!3307 (rule!8422 (_1!22122 lt!1248468)) rule!403 lt!1248471))))

(declare-fun Unit!54628 () Unit!54616)

(assert (=> b!3617400 (= e!2238986 Unit!54628)))

(declare-fun b!3617401 () Bool)

(assert (=> b!3617401 (= e!2238989 (not e!2238958))))

(declare-fun res!1463688 () Bool)

(assert (=> b!3617401 (=> res!1463688 e!2238958)))

(assert (=> b!3617401 (= res!1463688 (not (matchR!4992 (regex!5664 rule!403) lt!1248444)))))

(declare-fun ruleValid!1929 (LexerInterface!5253 Rule!11128) Bool)

(assert (=> b!3617401 (ruleValid!1929 thiss!23823 rule!403)))

(declare-fun lt!1248462 () Unit!54616)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1084 (LexerInterface!5253 Rule!11128 List!38219) Unit!54616)

(assert (=> b!3617401 (= lt!1248462 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1084 thiss!23823 rule!403 rules!3307))))

(declare-fun bm!261664 () Bool)

(assert (=> bm!261664 (= call!261665 (usedCharacters!878 (regex!5664 (rule!8422 (_1!22122 lt!1248468)))))))

(declare-fun b!3617402 () Bool)

(declare-fun res!1463686 () Bool)

(assert (=> b!3617402 (=> res!1463686 e!2238971)))

(assert (=> b!3617402 (= res!1463686 (not (matchR!4992 (regex!5664 (rule!8422 (_1!22122 lt!1248468))) lt!1248446)))))

(declare-fun b!3617403 () Bool)

(declare-fun Unit!54629 () Unit!54616)

(assert (=> b!3617403 (= e!2238969 Unit!54629)))

(declare-fun lt!1248427 () Unit!54616)

(assert (=> b!3617403 (= lt!1248427 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!648 (regex!5664 rule!403) lt!1248444 lt!1248471))))

(assert (=> b!3617403 false))

(declare-fun b!3617404 () Bool)

(declare-fun res!1463683 () Bool)

(assert (=> b!3617404 (=> (not res!1463683) (not e!2238992))))

(declare-fun rulesInvariant!4650 (LexerInterface!5253 List!38219) Bool)

(assert (=> b!3617404 (= res!1463683 (rulesInvariant!4650 thiss!23823 rules!3307))))

(declare-fun b!3617405 () Bool)

(assert (=> b!3617405 false))

(declare-fun lt!1248456 () Unit!54616)

(assert (=> b!3617405 (= lt!1248456 call!261668)))

(assert (=> b!3617405 (not call!261666)))

(declare-fun lt!1248438 () Unit!54616)

(assert (=> b!3617405 (= lt!1248438 (lemmaNonSepRuleNotContainsCharContainedInASepRule!370 thiss!23823 rules!3307 rules!3307 (rule!8422 (_1!22122 lt!1248468)) anOtherTypeRule!33 lt!1248470))))

(declare-fun Unit!54630 () Unit!54616)

(assert (=> b!3617405 (= e!2238963 Unit!54630)))

(declare-fun tp!1105242 () Bool)

(declare-fun e!2238983 () Bool)

(declare-fun b!3617406 () Bool)

(declare-fun inv!51478 (String!42804) Bool)

(declare-fun inv!51481 (TokenValueInjection!11216) Bool)

(assert (=> b!3617406 (= e!2238983 (and tp!1105242 (inv!51478 (tag!6378 anOtherTypeRule!33)) (inv!51481 (transformation!5664 anOtherTypeRule!33)) e!2238990))))

(declare-fun b!3617407 () Bool)

(declare-fun res!1463677 () Bool)

(assert (=> b!3617407 (=> (not res!1463677) (not e!2238992))))

(assert (=> b!3617407 (= res!1463677 (not (= (isSeparator!5664 anOtherTypeRule!33) (isSeparator!5664 rule!403))))))

(declare-fun b!3617408 () Bool)

(assert (=> b!3617408 (= e!2238992 e!2238975)))

(declare-fun res!1463676 () Bool)

(assert (=> b!3617408 (=> (not res!1463676) (not e!2238975))))

(declare-fun isDefined!6190 (Option!7958) Bool)

(assert (=> b!3617408 (= res!1463676 (isDefined!6190 lt!1248448))))

(declare-fun maxPrefix!2787 (LexerInterface!5253 List!38219 List!38218) Option!7958)

(assert (=> b!3617408 (= lt!1248448 (maxPrefix!2787 thiss!23823 rules!3307 lt!1248444))))

(declare-fun list!14056 (BalanceConc!22840) List!38218)

(assert (=> b!3617408 (= lt!1248444 (list!14056 lt!1248437))))

(declare-fun charsOf!3678 (Token!10694) BalanceConc!22840)

(assert (=> b!3617408 (= lt!1248437 (charsOf!3678 token!511))))

(declare-fun b!3617409 () Bool)

(declare-fun Unit!54631 () Unit!54616)

(assert (=> b!3617409 (= e!2238984 Unit!54631)))

(declare-fun tp!1105233 () Bool)

(declare-fun e!2238961 () Bool)

(declare-fun b!3617410 () Bool)

(assert (=> b!3617410 (= e!2238961 (and tp!1105233 (inv!51478 (tag!6378 (h!43515 rules!3307))) (inv!51481 (transformation!5664 (h!43515 rules!3307))) e!2238974))))

(declare-fun e!2238970 () Bool)

(assert (=> b!3617411 (= e!2238970 (and tp!1105232 tp!1105235))))

(declare-fun b!3617412 () Bool)

(declare-fun res!1463693 () Bool)

(assert (=> b!3617412 (=> (not res!1463693) (not e!2238992))))

(declare-fun isEmpty!22507 (List!38219) Bool)

(assert (=> b!3617412 (= res!1463693 (not (isEmpty!22507 rules!3307)))))

(declare-fun res!1463682 () Bool)

(assert (=> start!336850 (=> (not res!1463682) (not e!2238992))))

(get-info :version)

(assert (=> start!336850 (= res!1463682 ((_ is Lexer!5251) thiss!23823))))

(assert (=> start!336850 e!2238992))

(declare-fun e!2238960 () Bool)

(assert (=> start!336850 e!2238960))

(assert (=> start!336850 e!2238962))

(assert (=> start!336850 true))

(declare-fun inv!51482 (Token!10694) Bool)

(assert (=> start!336850 (and (inv!51482 token!511) e!2238957)))

(declare-fun e!2238987 () Bool)

(assert (=> start!336850 e!2238987))

(assert (=> start!336850 e!2238983))

(declare-fun b!3617413 () Bool)

(declare-fun Unit!54632 () Unit!54616)

(assert (=> b!3617413 (= e!2238979 Unit!54632)))

(declare-fun b!3617414 () Bool)

(declare-fun e!2238965 () Bool)

(declare-fun lt!1248426 () Rule!11128)

(assert (=> b!3617414 (= e!2238965 (= (rule!8422 (_1!22122 lt!1248468)) lt!1248426))))

(declare-fun b!3617415 () Bool)

(declare-fun tp!1105237 () Bool)

(assert (=> b!3617415 (= e!2238987 (and tp!1105237 (inv!51478 (tag!6378 rule!403)) (inv!51481 (transformation!5664 rule!403)) e!2238970))))

(declare-fun b!3617416 () Bool)

(declare-fun tp!1105246 () Bool)

(assert (=> b!3617416 (= e!2238960 (and e!2238961 tp!1105246))))

(declare-fun b!3617417 () Bool)

(assert (=> b!3617417 (= e!2238988 e!2238971)))

(declare-fun res!1463674 () Bool)

(assert (=> b!3617417 (=> res!1463674 e!2238971)))

(declare-fun isPrefix!3027 (List!38218 List!38218) Bool)

(assert (=> b!3617417 (= res!1463674 (not (isPrefix!3027 lt!1248446 lt!1248453)))))

(declare-fun ++!9480 (List!38218 List!38218) List!38218)

(assert (=> b!3617417 (isPrefix!3027 lt!1248446 (++!9480 lt!1248446 (_2!22122 lt!1248468)))))

(declare-fun lt!1248440 () Unit!54616)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1948 (List!38218 List!38218) Unit!54616)

(assert (=> b!3617417 (= lt!1248440 (lemmaConcatTwoListThenFirstIsPrefix!1948 lt!1248446 (_2!22122 lt!1248468)))))

(assert (=> b!3617417 (= lt!1248446 (list!14056 lt!1248441))))

(assert (=> b!3617417 (= lt!1248441 (charsOf!3678 (_1!22122 lt!1248468)))))

(declare-fun e!2238981 () Bool)

(assert (=> b!3617417 e!2238981))

(declare-fun res!1463675 () Bool)

(assert (=> b!3617417 (=> (not res!1463675) (not e!2238981))))

(declare-datatypes ((Option!7959 0))(
  ( (None!7958) (Some!7958 (v!37716 Rule!11128)) )
))
(declare-fun lt!1248445 () Option!7959)

(declare-fun isDefined!6191 (Option!7959) Bool)

(assert (=> b!3617417 (= res!1463675 (isDefined!6191 lt!1248445))))

(declare-fun getRuleFromTag!1270 (LexerInterface!5253 List!38219 String!42804) Option!7959)

(assert (=> b!3617417 (= lt!1248445 (getRuleFromTag!1270 thiss!23823 rules!3307 (tag!6378 (rule!8422 (_1!22122 lt!1248468)))))))

(declare-fun lt!1248457 () Unit!54616)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1270 (LexerInterface!5253 List!38219 List!38218 Token!10694) Unit!54616)

(assert (=> b!3617417 (= lt!1248457 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1270 thiss!23823 rules!3307 lt!1248453 (_1!22122 lt!1248468)))))

(assert (=> b!3617417 (= lt!1248468 (get!12400 lt!1248466))))

(declare-fun lt!1248473 () Unit!54616)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!933 (LexerInterface!5253 List!38219 List!38218 List!38218) Unit!54616)

(assert (=> b!3617417 (= lt!1248473 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!933 thiss!23823 rules!3307 lt!1248444 suffix!1395))))

(assert (=> b!3617417 (= lt!1248466 (maxPrefix!2787 thiss!23823 rules!3307 lt!1248453))))

(assert (=> b!3617417 (isPrefix!3027 lt!1248444 lt!1248453)))

(declare-fun lt!1248443 () Unit!54616)

(assert (=> b!3617417 (= lt!1248443 (lemmaConcatTwoListThenFirstIsPrefix!1948 lt!1248444 suffix!1395))))

(assert (=> b!3617417 (= lt!1248453 (++!9480 lt!1248444 suffix!1395))))

(declare-fun b!3617418 () Bool)

(declare-fun Unit!54633 () Unit!54616)

(assert (=> b!3617418 (= e!2238969 Unit!54633)))

(declare-fun b!3617419 () Bool)

(declare-fun res!1463692 () Bool)

(assert (=> b!3617419 (=> (not res!1463692) (not e!2238992))))

(assert (=> b!3617419 (= res!1463692 (contains!7392 rules!3307 rule!403))))

(declare-fun b!3617420 () Bool)

(declare-fun tp!1105239 () Bool)

(assert (=> b!3617420 (= e!2238972 (and tp!1105239 (inv!51478 (tag!6378 (rule!8422 token!511))) (inv!51481 (transformation!5664 (rule!8422 token!511))) e!2238973))))

(declare-fun b!3617421 () Bool)

(declare-fun res!1463690 () Bool)

(assert (=> b!3617421 (=> (not res!1463690) (not e!2238989))))

(assert (=> b!3617421 (= res!1463690 (isEmpty!22506 (_2!22122 lt!1248467)))))

(declare-fun b!3617422 () Bool)

(declare-fun Unit!54634 () Unit!54616)

(assert (=> b!3617422 (= e!2238985 Unit!54634)))

(declare-fun bm!261665 () Bool)

(assert (=> bm!261665 (= call!261669 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!648 (regex!5664 (rule!8422 (_1!22122 lt!1248468))) lt!1248446 lt!1248471))))

(declare-fun b!3617423 () Bool)

(assert (=> b!3617423 (= e!2238981 e!2238965)))

(declare-fun res!1463695 () Bool)

(assert (=> b!3617423 (=> (not res!1463695) (not e!2238965))))

(assert (=> b!3617423 (= res!1463695 (matchR!4992 (regex!5664 lt!1248426) (list!14056 (charsOf!3678 (_1!22122 lt!1248468)))))))

(declare-fun get!12401 (Option!7959) Rule!11128)

(assert (=> b!3617423 (= lt!1248426 (get!12401 lt!1248445))))

(declare-fun b!3617424 () Bool)

(declare-fun Unit!54635 () Unit!54616)

(assert (=> b!3617424 (= e!2238984 Unit!54635)))

(declare-fun lt!1248447 () Unit!54616)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!312 (LexerInterface!5253 List!38219 Rule!11128 List!38218 List!38218 List!38218 Rule!11128) Unit!54616)

(assert (=> b!3617424 (= lt!1248447 (lemmaMaxPrefixOutputsMaxPrefix!312 thiss!23823 rules!3307 (rule!8422 (_1!22122 lt!1248468)) lt!1248446 lt!1248453 lt!1248444 rule!403))))

(assert (=> b!3617424 false))

(assert (= (and start!336850 res!1463682) b!3617412))

(assert (= (and b!3617412 res!1463693) b!3617404))

(assert (= (and b!3617404 res!1463683) b!3617419))

(assert (= (and b!3617419 res!1463692) b!3617387))

(assert (= (and b!3617387 res!1463685) b!3617407))

(assert (= (and b!3617407 res!1463677) b!3617408))

(assert (= (and b!3617408 res!1463676) b!3617389))

(assert (= (and b!3617389 res!1463694) b!3617421))

(assert (= (and b!3617421 res!1463690) b!3617384))

(assert (= (and b!3617384 res!1463678) b!3617401))

(assert (= (and b!3617401 (not res!1463688)) b!3617385))

(assert (= (and b!3617385 (not res!1463680)) b!3617397))

(assert (= (and b!3617397 (not res!1463691)) b!3617375))

(assert (= (and b!3617375 (not res!1463679)) b!3617378))

(assert (= (and b!3617378 (not res!1463689)) b!3617417))

(assert (= (and b!3617417 res!1463675) b!3617423))

(assert (= (and b!3617423 res!1463695) b!3617414))

(assert (= (and b!3617417 (not res!1463674)) b!3617402))

(assert (= (and b!3617402 (not res!1463686)) b!3617395))

(assert (= (and b!3617395 (not res!1463681)) b!3617379))

(assert (= (and b!3617379 (not res!1463687)) b!3617377))

(assert (= (and b!3617377 c!625910) b!3617403))

(assert (= (and b!3617377 (not c!625910)) b!3617418))

(assert (= (and b!3617377 c!625909) b!3617381))

(assert (= (and b!3617377 (not c!625909)) b!3617394))

(assert (= (and b!3617381 c!625916) b!3617400))

(assert (= (and b!3617381 (not c!625916)) b!3617386))

(assert (= (and b!3617394 c!625911) b!3617398))

(assert (= (and b!3617394 (not c!625911)) b!3617413))

(assert (= (or b!3617400 b!3617398) bm!261665))

(assert (= (or b!3617400 b!3617398) bm!261663))

(assert (= (or b!3617400 b!3617398) bm!261662))

(assert (= (and b!3617377 c!625913) b!3617393))

(assert (= (and b!3617377 (not c!625913)) b!3617422))

(assert (= (and b!3617393 c!625915) b!3617380))

(assert (= (and b!3617393 (not c!625915)) b!3617405))

(assert (= (or b!3617380 b!3617405) bm!261661))

(assert (= (or b!3617380 b!3617405) bm!261664))

(assert (= (or b!3617380 b!3617405) bm!261660))

(assert (= (and b!3617377 c!625908) b!3617424))

(assert (= (and b!3617377 (not c!625908)) b!3617409))

(assert (= (and b!3617377 c!625917) b!3617391))

(assert (= (and b!3617377 (not c!625917)) b!3617383))

(assert (= (and b!3617391 c!625912) b!3617376))

(assert (= (and b!3617391 (not c!625912)) b!3617396))

(assert (= (and b!3617376 res!1463684) b!3617382))

(assert (= (and b!3617391 c!625914) b!3617373))

(assert (= (and b!3617391 (not c!625914)) b!3617372))

(assert (= b!3617410 b!3617390))

(assert (= b!3617416 b!3617410))

(assert (= (and start!336850 ((_ is Cons!38095) rules!3307)) b!3617416))

(assert (= (and start!336850 ((_ is Cons!38094) suffix!1395)) b!3617392))

(assert (= b!3617420 b!3617374))

(assert (= b!3617399 b!3617420))

(assert (= start!336850 b!3617399))

(assert (= b!3617415 b!3617411))

(assert (= start!336850 b!3617415))

(assert (= b!3617406 b!3617388))

(assert (= start!336850 b!3617406))

(declare-fun m!4116171 () Bool)

(assert (=> start!336850 m!4116171))

(declare-fun m!4116173 () Bool)

(assert (=> b!3617419 m!4116173))

(declare-fun m!4116175 () Bool)

(assert (=> b!3617404 m!4116175))

(declare-fun m!4116177 () Bool)

(assert (=> b!3617393 m!4116177))

(declare-fun m!4116179 () Bool)

(assert (=> b!3617393 m!4116179))

(declare-fun m!4116181 () Bool)

(assert (=> b!3617398 m!4116181))

(declare-fun m!4116183 () Bool)

(assert (=> b!3617389 m!4116183))

(declare-fun m!4116185 () Bool)

(assert (=> b!3617405 m!4116185))

(declare-fun m!4116187 () Bool)

(assert (=> b!3617391 m!4116187))

(declare-fun m!4116189 () Bool)

(assert (=> b!3617391 m!4116189))

(declare-fun m!4116191 () Bool)

(assert (=> b!3617391 m!4116191))

(declare-fun m!4116193 () Bool)

(assert (=> b!3617399 m!4116193))

(declare-fun m!4116195 () Bool)

(assert (=> b!3617378 m!4116195))

(declare-fun m!4116197 () Bool)

(assert (=> b!3617376 m!4116197))

(declare-fun m!4116199 () Bool)

(assert (=> b!3617376 m!4116199))

(declare-fun m!4116201 () Bool)

(assert (=> b!3617376 m!4116201))

(declare-fun m!4116203 () Bool)

(assert (=> b!3617376 m!4116203))

(assert (=> b!3617376 m!4116201))

(declare-fun m!4116205 () Bool)

(assert (=> b!3617376 m!4116205))

(declare-fun m!4116207 () Bool)

(assert (=> bm!261663 m!4116207))

(declare-fun m!4116209 () Bool)

(assert (=> b!3617387 m!4116209))

(declare-fun m!4116211 () Bool)

(assert (=> b!3617401 m!4116211))

(declare-fun m!4116213 () Bool)

(assert (=> b!3617401 m!4116213))

(declare-fun m!4116215 () Bool)

(assert (=> b!3617401 m!4116215))

(declare-fun m!4116217 () Bool)

(assert (=> b!3617415 m!4116217))

(declare-fun m!4116219 () Bool)

(assert (=> b!3617415 m!4116219))

(declare-fun m!4116221 () Bool)

(assert (=> b!3617379 m!4116221))

(declare-fun m!4116223 () Bool)

(assert (=> b!3617379 m!4116223))

(declare-fun m!4116225 () Bool)

(assert (=> b!3617379 m!4116225))

(declare-fun m!4116227 () Bool)

(assert (=> b!3617379 m!4116227))

(declare-fun m!4116229 () Bool)

(assert (=> b!3617379 m!4116229))

(assert (=> b!3617379 m!4116221))

(declare-fun m!4116231 () Bool)

(assert (=> b!3617379 m!4116231))

(declare-fun m!4116233 () Bool)

(assert (=> b!3617379 m!4116233))

(declare-fun m!4116235 () Bool)

(assert (=> b!3617410 m!4116235))

(declare-fun m!4116237 () Bool)

(assert (=> b!3617410 m!4116237))

(declare-fun m!4116239 () Bool)

(assert (=> b!3617408 m!4116239))

(declare-fun m!4116241 () Bool)

(assert (=> b!3617408 m!4116241))

(declare-fun m!4116243 () Bool)

(assert (=> b!3617408 m!4116243))

(declare-fun m!4116245 () Bool)

(assert (=> b!3617408 m!4116245))

(declare-fun m!4116247 () Bool)

(assert (=> bm!261665 m!4116247))

(declare-fun m!4116249 () Bool)

(assert (=> bm!261661 m!4116249))

(declare-fun m!4116251 () Bool)

(assert (=> bm!261662 m!4116251))

(assert (=> bm!261664 m!4116207))

(declare-fun m!4116253 () Bool)

(assert (=> b!3617423 m!4116253))

(assert (=> b!3617423 m!4116253))

(declare-fun m!4116255 () Bool)

(assert (=> b!3617423 m!4116255))

(assert (=> b!3617423 m!4116255))

(declare-fun m!4116257 () Bool)

(assert (=> b!3617423 m!4116257))

(declare-fun m!4116259 () Bool)

(assert (=> b!3617423 m!4116259))

(declare-fun m!4116261 () Bool)

(assert (=> b!3617395 m!4116261))

(assert (=> b!3617395 m!4116261))

(declare-fun m!4116263 () Bool)

(assert (=> b!3617395 m!4116263))

(declare-fun m!4116265 () Bool)

(assert (=> b!3617395 m!4116265))

(declare-fun m!4116267 () Bool)

(assert (=> b!3617395 m!4116267))

(declare-fun m!4116269 () Bool)

(assert (=> b!3617395 m!4116269))

(declare-fun m!4116271 () Bool)

(assert (=> b!3617395 m!4116271))

(declare-fun m!4116273 () Bool)

(assert (=> b!3617412 m!4116273))

(declare-fun m!4116275 () Bool)

(assert (=> b!3617377 m!4116275))

(declare-fun m!4116277 () Bool)

(assert (=> b!3617377 m!4116277))

(declare-fun m!4116279 () Bool)

(assert (=> b!3617377 m!4116279))

(declare-fun m!4116281 () Bool)

(assert (=> b!3617377 m!4116281))

(declare-fun m!4116283 () Bool)

(assert (=> b!3617377 m!4116283))

(declare-fun m!4116285 () Bool)

(assert (=> b!3617377 m!4116285))

(declare-fun m!4116287 () Bool)

(assert (=> b!3617377 m!4116287))

(declare-fun m!4116289 () Bool)

(assert (=> b!3617377 m!4116289))

(declare-fun m!4116291 () Bool)

(assert (=> b!3617377 m!4116291))

(declare-fun m!4116293 () Bool)

(assert (=> b!3617377 m!4116293))

(assert (=> b!3617377 m!4116287))

(declare-fun m!4116295 () Bool)

(assert (=> b!3617377 m!4116295))

(declare-fun m!4116297 () Bool)

(assert (=> b!3617417 m!4116297))

(declare-fun m!4116299 () Bool)

(assert (=> b!3617417 m!4116299))

(declare-fun m!4116301 () Bool)

(assert (=> b!3617417 m!4116301))

(declare-fun m!4116303 () Bool)

(assert (=> b!3617417 m!4116303))

(declare-fun m!4116305 () Bool)

(assert (=> b!3617417 m!4116305))

(declare-fun m!4116307 () Bool)

(assert (=> b!3617417 m!4116307))

(declare-fun m!4116309 () Bool)

(assert (=> b!3617417 m!4116309))

(assert (=> b!3617417 m!4116253))

(declare-fun m!4116311 () Bool)

(assert (=> b!3617417 m!4116311))

(declare-fun m!4116313 () Bool)

(assert (=> b!3617417 m!4116313))

(assert (=> b!3617417 m!4116305))

(declare-fun m!4116315 () Bool)

(assert (=> b!3617417 m!4116315))

(declare-fun m!4116317 () Bool)

(assert (=> b!3617417 m!4116317))

(declare-fun m!4116319 () Bool)

(assert (=> b!3617417 m!4116319))

(declare-fun m!4116321 () Bool)

(assert (=> b!3617417 m!4116321))

(declare-fun m!4116323 () Bool)

(assert (=> b!3617417 m!4116323))

(declare-fun m!4116325 () Bool)

(assert (=> b!3617402 m!4116325))

(declare-fun m!4116327 () Bool)

(assert (=> b!3617375 m!4116327))

(assert (=> b!3617375 m!4116327))

(declare-fun m!4116329 () Bool)

(assert (=> b!3617375 m!4116329))

(declare-fun m!4116331 () Bool)

(assert (=> b!3617400 m!4116331))

(declare-fun m!4116333 () Bool)

(assert (=> b!3617380 m!4116333))

(declare-fun m!4116335 () Bool)

(assert (=> b!3617385 m!4116335))

(declare-fun m!4116337 () Bool)

(assert (=> b!3617373 m!4116337))

(declare-fun m!4116339 () Bool)

(assert (=> bm!261660 m!4116339))

(declare-fun m!4116341 () Bool)

(assert (=> b!3617421 m!4116341))

(declare-fun m!4116343 () Bool)

(assert (=> b!3617403 m!4116343))

(declare-fun m!4116345 () Bool)

(assert (=> b!3617424 m!4116345))

(declare-fun m!4116347 () Bool)

(assert (=> b!3617420 m!4116347))

(declare-fun m!4116349 () Bool)

(assert (=> b!3617420 m!4116349))

(declare-fun m!4116351 () Bool)

(assert (=> b!3617397 m!4116351))

(declare-fun m!4116353 () Bool)

(assert (=> b!3617397 m!4116353))

(declare-fun m!4116355 () Bool)

(assert (=> b!3617397 m!4116355))

(declare-fun m!4116357 () Bool)

(assert (=> b!3617406 m!4116357))

(declare-fun m!4116359 () Bool)

(assert (=> b!3617406 m!4116359))

(check-sat (not b!3617421) (not bm!261661) (not b!3617408) b_and!264241 b_and!264237 (not b!3617375) (not bm!261665) (not b!3617377) (not b!3617416) (not b!3617406) (not b!3617401) (not b_next!94897) (not b!3617399) (not b!3617404) (not bm!261660) (not b!3617400) b_and!264243 b_and!264235 tp_is_empty!17929 (not bm!261664) (not b!3617405) (not b!3617423) (not bm!261662) (not b!3617389) b_and!264239 (not b!3617412) (not b!3617415) (not b!3617379) (not b!3617395) (not b!3617385) b_and!264247 (not start!336850) (not b_next!94903) (not b_next!94901) (not b_next!94891) (not b!3617410) (not b_next!94893) (not b!3617398) (not b_next!94895) b_and!264245 (not b!3617393) (not b!3617402) (not b!3617419) (not b_next!94889) (not b!3617373) (not b_next!94899) (not b!3617420) (not b!3617403) (not b!3617417) (not b!3617378) b_and!264249 (not b!3617376) (not b!3617392) (not b!3617387) (not b!3617397) (not b!3617380) (not b!3617391) (not bm!261663) (not b!3617424))
(check-sat b_and!264241 b_and!264237 (not b_next!94897) b_and!264243 b_and!264235 b_and!264239 b_and!264247 (not b_next!94891) b_and!264245 b_and!264249 (not b_next!94903) (not b_next!94901) (not b_next!94893) (not b_next!94895) (not b_next!94889) (not b_next!94899))
(get-model)

(declare-fun d!1064427 () Bool)

(assert (=> d!1064427 (not (matchR!4992 (regex!5664 rule!403) lt!1248444))))

(declare-fun lt!1248506 () Unit!54616)

(declare-fun choose!21200 (Regex!10423 List!38218 C!21032) Unit!54616)

(assert (=> d!1064427 (= lt!1248506 (choose!21200 (regex!5664 rule!403) lt!1248444 lt!1248471))))

(declare-fun validRegex!4769 (Regex!10423) Bool)

(assert (=> d!1064427 (validRegex!4769 (regex!5664 rule!403))))

(assert (=> d!1064427 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!648 (regex!5664 rule!403) lt!1248444 lt!1248471) lt!1248506)))

(declare-fun bs!571066 () Bool)

(assert (= bs!571066 d!1064427))

(assert (=> bs!571066 m!4116211))

(declare-fun m!4116407 () Bool)

(assert (=> bs!571066 m!4116407))

(declare-fun m!4116409 () Bool)

(assert (=> bs!571066 m!4116409))

(assert (=> b!3617403 d!1064427))

(declare-fun b!3617541 () Bool)

(declare-fun e!2239058 () Bool)

(declare-fun e!2239054 () Bool)

(assert (=> b!3617541 (= e!2239058 e!2239054)))

(declare-fun res!1463769 () Bool)

(assert (=> b!3617541 (=> (not res!1463769) (not e!2239054))))

(declare-fun lt!1248527 () Bool)

(assert (=> b!3617541 (= res!1463769 (not lt!1248527))))

(declare-fun b!3617542 () Bool)

(declare-fun e!2239057 () Bool)

(assert (=> b!3617542 (= e!2239054 e!2239057)))

(declare-fun res!1463774 () Bool)

(assert (=> b!3617542 (=> res!1463774 e!2239057)))

(declare-fun call!261676 () Bool)

(assert (=> b!3617542 (= res!1463774 call!261676)))

(declare-fun b!3617543 () Bool)

(declare-fun res!1463773 () Bool)

(declare-fun e!2239055 () Bool)

(assert (=> b!3617543 (=> (not res!1463773) (not e!2239055))))

(assert (=> b!3617543 (= res!1463773 (not call!261676))))

(declare-fun d!1064429 () Bool)

(declare-fun e!2239056 () Bool)

(assert (=> d!1064429 e!2239056))

(declare-fun c!625948 () Bool)

(assert (=> d!1064429 (= c!625948 ((_ is EmptyExpr!10423) (regex!5664 lt!1248426)))))

(declare-fun e!2239059 () Bool)

(assert (=> d!1064429 (= lt!1248527 e!2239059)))

(declare-fun c!625947 () Bool)

(assert (=> d!1064429 (= c!625947 (isEmpty!22506 (list!14056 (charsOf!3678 (_1!22122 lt!1248468)))))))

(assert (=> d!1064429 (validRegex!4769 (regex!5664 lt!1248426))))

(assert (=> d!1064429 (= (matchR!4992 (regex!5664 lt!1248426) (list!14056 (charsOf!3678 (_1!22122 lt!1248468)))) lt!1248527)))

(declare-fun bm!261671 () Bool)

(assert (=> bm!261671 (= call!261676 (isEmpty!22506 (list!14056 (charsOf!3678 (_1!22122 lt!1248468)))))))

(declare-fun b!3617544 () Bool)

(declare-fun derivativeStep!3156 (Regex!10423 C!21032) Regex!10423)

(declare-fun tail!5605 (List!38218) List!38218)

(assert (=> b!3617544 (= e!2239059 (matchR!4992 (derivativeStep!3156 (regex!5664 lt!1248426) (head!7630 (list!14056 (charsOf!3678 (_1!22122 lt!1248468))))) (tail!5605 (list!14056 (charsOf!3678 (_1!22122 lt!1248468))))))))

(declare-fun b!3617545 () Bool)

(declare-fun nullable!3607 (Regex!10423) Bool)

(assert (=> b!3617545 (= e!2239059 (nullable!3607 (regex!5664 lt!1248426)))))

(declare-fun b!3617546 () Bool)

(declare-fun res!1463770 () Bool)

(assert (=> b!3617546 (=> res!1463770 e!2239058)))

(assert (=> b!3617546 (= res!1463770 e!2239055)))

(declare-fun res!1463771 () Bool)

(assert (=> b!3617546 (=> (not res!1463771) (not e!2239055))))

(assert (=> b!3617546 (= res!1463771 lt!1248527)))

(declare-fun b!3617547 () Bool)

(declare-fun res!1463775 () Bool)

(assert (=> b!3617547 (=> (not res!1463775) (not e!2239055))))

(assert (=> b!3617547 (= res!1463775 (isEmpty!22506 (tail!5605 (list!14056 (charsOf!3678 (_1!22122 lt!1248468))))))))

(declare-fun b!3617548 () Bool)

(assert (=> b!3617548 (= e!2239057 (not (= (head!7630 (list!14056 (charsOf!3678 (_1!22122 lt!1248468)))) (c!625918 (regex!5664 lt!1248426)))))))

(declare-fun b!3617549 () Bool)

(declare-fun res!1463772 () Bool)

(assert (=> b!3617549 (=> res!1463772 e!2239057)))

(assert (=> b!3617549 (= res!1463772 (not (isEmpty!22506 (tail!5605 (list!14056 (charsOf!3678 (_1!22122 lt!1248468)))))))))

(declare-fun b!3617550 () Bool)

(declare-fun res!1463768 () Bool)

(assert (=> b!3617550 (=> res!1463768 e!2239058)))

(assert (=> b!3617550 (= res!1463768 (not ((_ is ElementMatch!10423) (regex!5664 lt!1248426))))))

(declare-fun e!2239053 () Bool)

(assert (=> b!3617550 (= e!2239053 e!2239058)))

(declare-fun b!3617551 () Bool)

(assert (=> b!3617551 (= e!2239056 e!2239053)))

(declare-fun c!625949 () Bool)

(assert (=> b!3617551 (= c!625949 ((_ is EmptyLang!10423) (regex!5664 lt!1248426)))))

(declare-fun b!3617552 () Bool)

(assert (=> b!3617552 (= e!2239056 (= lt!1248527 call!261676))))

(declare-fun b!3617553 () Bool)

(assert (=> b!3617553 (= e!2239055 (= (head!7630 (list!14056 (charsOf!3678 (_1!22122 lt!1248468)))) (c!625918 (regex!5664 lt!1248426))))))

(declare-fun b!3617554 () Bool)

(assert (=> b!3617554 (= e!2239053 (not lt!1248527))))

(assert (= (and d!1064429 c!625947) b!3617545))

(assert (= (and d!1064429 (not c!625947)) b!3617544))

(assert (= (and d!1064429 c!625948) b!3617552))

(assert (= (and d!1064429 (not c!625948)) b!3617551))

(assert (= (and b!3617551 c!625949) b!3617554))

(assert (= (and b!3617551 (not c!625949)) b!3617550))

(assert (= (and b!3617550 (not res!1463768)) b!3617546))

(assert (= (and b!3617546 res!1463771) b!3617543))

(assert (= (and b!3617543 res!1463773) b!3617547))

(assert (= (and b!3617547 res!1463775) b!3617553))

(assert (= (and b!3617546 (not res!1463770)) b!3617541))

(assert (= (and b!3617541 res!1463769) b!3617542))

(assert (= (and b!3617542 (not res!1463774)) b!3617549))

(assert (= (and b!3617549 (not res!1463772)) b!3617548))

(assert (= (or b!3617552 b!3617542 b!3617543) bm!261671))

(assert (=> d!1064429 m!4116255))

(declare-fun m!4116463 () Bool)

(assert (=> d!1064429 m!4116463))

(declare-fun m!4116465 () Bool)

(assert (=> d!1064429 m!4116465))

(assert (=> bm!261671 m!4116255))

(assert (=> bm!261671 m!4116463))

(assert (=> b!3617548 m!4116255))

(declare-fun m!4116467 () Bool)

(assert (=> b!3617548 m!4116467))

(declare-fun m!4116469 () Bool)

(assert (=> b!3617545 m!4116469))

(assert (=> b!3617547 m!4116255))

(declare-fun m!4116471 () Bool)

(assert (=> b!3617547 m!4116471))

(assert (=> b!3617547 m!4116471))

(declare-fun m!4116473 () Bool)

(assert (=> b!3617547 m!4116473))

(assert (=> b!3617553 m!4116255))

(assert (=> b!3617553 m!4116467))

(assert (=> b!3617549 m!4116255))

(assert (=> b!3617549 m!4116471))

(assert (=> b!3617549 m!4116471))

(assert (=> b!3617549 m!4116473))

(assert (=> b!3617544 m!4116255))

(assert (=> b!3617544 m!4116467))

(assert (=> b!3617544 m!4116467))

(declare-fun m!4116475 () Bool)

(assert (=> b!3617544 m!4116475))

(assert (=> b!3617544 m!4116255))

(assert (=> b!3617544 m!4116471))

(assert (=> b!3617544 m!4116475))

(assert (=> b!3617544 m!4116471))

(declare-fun m!4116477 () Bool)

(assert (=> b!3617544 m!4116477))

(assert (=> b!3617423 d!1064429))

(declare-fun d!1064439 () Bool)

(declare-fun list!14058 (Conc!11613) List!38218)

(assert (=> d!1064439 (= (list!14056 (charsOf!3678 (_1!22122 lt!1248468))) (list!14058 (c!625919 (charsOf!3678 (_1!22122 lt!1248468)))))))

(declare-fun bs!571069 () Bool)

(assert (= bs!571069 d!1064439))

(declare-fun m!4116487 () Bool)

(assert (=> bs!571069 m!4116487))

(assert (=> b!3617423 d!1064439))

(declare-fun d!1064445 () Bool)

(declare-fun lt!1248537 () BalanceConc!22840)

(assert (=> d!1064445 (= (list!14056 lt!1248537) (originalCharacters!6378 (_1!22122 lt!1248468)))))

(declare-fun dynLambda!16483 (Int TokenValue!5894) BalanceConc!22840)

(assert (=> d!1064445 (= lt!1248537 (dynLambda!16483 (toChars!7807 (transformation!5664 (rule!8422 (_1!22122 lt!1248468)))) (value!181884 (_1!22122 lt!1248468))))))

(assert (=> d!1064445 (= (charsOf!3678 (_1!22122 lt!1248468)) lt!1248537)))

(declare-fun b_lambda!106997 () Bool)

(assert (=> (not b_lambda!106997) (not d!1064445)))

(declare-fun tb!207425 () Bool)

(declare-fun t!293880 () Bool)

(assert (=> (and b!3617374 (= (toChars!7807 (transformation!5664 (rule!8422 token!511))) (toChars!7807 (transformation!5664 (rule!8422 (_1!22122 lt!1248468))))) t!293880) tb!207425))

(declare-fun b!3617585 () Bool)

(declare-fun e!2239078 () Bool)

(declare-fun tp!1105249 () Bool)

(declare-fun inv!51483 (Conc!11613) Bool)

(assert (=> b!3617585 (= e!2239078 (and (inv!51483 (c!625919 (dynLambda!16483 (toChars!7807 (transformation!5664 (rule!8422 (_1!22122 lt!1248468)))) (value!181884 (_1!22122 lt!1248468))))) tp!1105249))))

(declare-fun result!252768 () Bool)

(declare-fun inv!51484 (BalanceConc!22840) Bool)

(assert (=> tb!207425 (= result!252768 (and (inv!51484 (dynLambda!16483 (toChars!7807 (transformation!5664 (rule!8422 (_1!22122 lt!1248468)))) (value!181884 (_1!22122 lt!1248468)))) e!2239078))))

(assert (= tb!207425 b!3617585))

(declare-fun m!4116499 () Bool)

(assert (=> b!3617585 m!4116499))

(declare-fun m!4116501 () Bool)

(assert (=> tb!207425 m!4116501))

(assert (=> d!1064445 t!293880))

(declare-fun b_and!264259 () Bool)

(assert (= b_and!264237 (and (=> t!293880 result!252768) b_and!264259)))

(declare-fun tb!207427 () Bool)

(declare-fun t!293882 () Bool)

(assert (=> (and b!3617388 (= (toChars!7807 (transformation!5664 anOtherTypeRule!33)) (toChars!7807 (transformation!5664 (rule!8422 (_1!22122 lt!1248468))))) t!293882) tb!207427))

(declare-fun result!252772 () Bool)

(assert (= result!252772 result!252768))

(assert (=> d!1064445 t!293882))

(declare-fun b_and!264261 () Bool)

(assert (= b_and!264241 (and (=> t!293882 result!252772) b_and!264261)))

(declare-fun t!293884 () Bool)

(declare-fun tb!207429 () Bool)

(assert (=> (and b!3617390 (= (toChars!7807 (transformation!5664 (h!43515 rules!3307))) (toChars!7807 (transformation!5664 (rule!8422 (_1!22122 lt!1248468))))) t!293884) tb!207429))

(declare-fun result!252774 () Bool)

(assert (= result!252774 result!252768))

(assert (=> d!1064445 t!293884))

(declare-fun b_and!264263 () Bool)

(assert (= b_and!264245 (and (=> t!293884 result!252774) b_and!264263)))

(declare-fun t!293886 () Bool)

(declare-fun tb!207431 () Bool)

(assert (=> (and b!3617411 (= (toChars!7807 (transformation!5664 rule!403)) (toChars!7807 (transformation!5664 (rule!8422 (_1!22122 lt!1248468))))) t!293886) tb!207431))

(declare-fun result!252776 () Bool)

(assert (= result!252776 result!252768))

(assert (=> d!1064445 t!293886))

(declare-fun b_and!264265 () Bool)

(assert (= b_and!264249 (and (=> t!293886 result!252776) b_and!264265)))

(declare-fun m!4116503 () Bool)

(assert (=> d!1064445 m!4116503))

(declare-fun m!4116505 () Bool)

(assert (=> d!1064445 m!4116505))

(assert (=> b!3617423 d!1064445))

(declare-fun d!1064455 () Bool)

(assert (=> d!1064455 (= (get!12401 lt!1248445) (v!37716 lt!1248445))))

(assert (=> b!3617423 d!1064455))

(declare-fun d!1064457 () Bool)

(assert (=> d!1064457 (not (matchR!4992 (regex!5664 rule!403) lt!1248444))))

(declare-fun lt!1248543 () Unit!54616)

(declare-fun choose!21202 (LexerInterface!5253 List!38219 Rule!11128 List!38218 List!38218 List!38218 Rule!11128) Unit!54616)

(assert (=> d!1064457 (= lt!1248543 (choose!21202 thiss!23823 rules!3307 (rule!8422 (_1!22122 lt!1248468)) lt!1248446 lt!1248453 lt!1248444 rule!403))))

(assert (=> d!1064457 (isPrefix!3027 lt!1248446 lt!1248453)))

(assert (=> d!1064457 (= (lemmaMaxPrefixOutputsMaxPrefix!312 thiss!23823 rules!3307 (rule!8422 (_1!22122 lt!1248468)) lt!1248446 lt!1248453 lt!1248444 rule!403) lt!1248543)))

(declare-fun bs!571071 () Bool)

(assert (= bs!571071 d!1064457))

(assert (=> bs!571071 m!4116211))

(declare-fun m!4116513 () Bool)

(assert (=> bs!571071 m!4116513))

(assert (=> bs!571071 m!4116311))

(assert (=> b!3617424 d!1064457))

(declare-fun d!1064461 () Bool)

(assert (=> d!1064461 (= (isEmpty!22506 suffix!1395) ((_ is Nil!38094) suffix!1395))))

(assert (=> b!3617385 d!1064461))

(declare-fun d!1064463 () Bool)

(declare-fun res!1463808 () Bool)

(declare-fun e!2239102 () Bool)

(assert (=> d!1064463 (=> (not res!1463808) (not e!2239102))))

(declare-fun rulesValid!2161 (LexerInterface!5253 List!38219) Bool)

(assert (=> d!1064463 (= res!1463808 (rulesValid!2161 thiss!23823 rules!3307))))

(assert (=> d!1064463 (= (rulesInvariant!4650 thiss!23823 rules!3307) e!2239102)))

(declare-fun b!3617628 () Bool)

(declare-datatypes ((List!38220 0))(
  ( (Nil!38096) (Cons!38096 (h!43516 String!42804) (t!294011 List!38220)) )
))
(declare-fun noDuplicateTag!2157 (LexerInterface!5253 List!38219 List!38220) Bool)

(assert (=> b!3617628 (= e!2239102 (noDuplicateTag!2157 thiss!23823 rules!3307 Nil!38096))))

(assert (= (and d!1064463 res!1463808) b!3617628))

(declare-fun m!4116535 () Bool)

(assert (=> d!1064463 m!4116535))

(declare-fun m!4116537 () Bool)

(assert (=> b!3617628 m!4116537))

(assert (=> b!3617404 d!1064463))

(declare-fun d!1064471 () Bool)

(assert (=> d!1064471 (not (contains!7391 (usedCharacters!878 (regex!5664 (rule!8422 (_1!22122 lt!1248468)))) lt!1248470))))

(declare-fun lt!1248552 () Unit!54616)

(declare-fun choose!21204 (LexerInterface!5253 List!38219 List!38219 Rule!11128 Rule!11128 C!21032) Unit!54616)

(assert (=> d!1064471 (= lt!1248552 (choose!21204 thiss!23823 rules!3307 rules!3307 (rule!8422 (_1!22122 lt!1248468)) anOtherTypeRule!33 lt!1248470))))

(assert (=> d!1064471 (rulesInvariant!4650 thiss!23823 rules!3307)))

(assert (=> d!1064471 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!370 thiss!23823 rules!3307 rules!3307 (rule!8422 (_1!22122 lt!1248468)) anOtherTypeRule!33 lt!1248470) lt!1248552)))

(declare-fun bs!571074 () Bool)

(assert (= bs!571074 d!1064471))

(assert (=> bs!571074 m!4116207))

(assert (=> bs!571074 m!4116207))

(declare-fun m!4116551 () Bool)

(assert (=> bs!571074 m!4116551))

(declare-fun m!4116553 () Bool)

(assert (=> bs!571074 m!4116553))

(assert (=> bs!571074 m!4116175))

(assert (=> b!3617405 d!1064471))

(declare-fun b!3617650 () Bool)

(declare-fun e!2239123 () Bool)

(declare-fun e!2239119 () Bool)

(assert (=> b!3617650 (= e!2239123 e!2239119)))

(declare-fun res!1463819 () Bool)

(assert (=> b!3617650 (=> (not res!1463819) (not e!2239119))))

(declare-fun lt!1248555 () Bool)

(assert (=> b!3617650 (= res!1463819 (not lt!1248555))))

(declare-fun b!3617651 () Bool)

(declare-fun e!2239122 () Bool)

(assert (=> b!3617651 (= e!2239119 e!2239122)))

(declare-fun res!1463824 () Bool)

(assert (=> b!3617651 (=> res!1463824 e!2239122)))

(declare-fun call!261691 () Bool)

(assert (=> b!3617651 (= res!1463824 call!261691)))

(declare-fun b!3617652 () Bool)

(declare-fun res!1463823 () Bool)

(declare-fun e!2239120 () Bool)

(assert (=> b!3617652 (=> (not res!1463823) (not e!2239120))))

(assert (=> b!3617652 (= res!1463823 (not call!261691))))

(declare-fun d!1064481 () Bool)

(declare-fun e!2239121 () Bool)

(assert (=> d!1064481 e!2239121))

(declare-fun c!625978 () Bool)

(assert (=> d!1064481 (= c!625978 ((_ is EmptyExpr!10423) (regex!5664 rule!403)))))

(declare-fun e!2239124 () Bool)

(assert (=> d!1064481 (= lt!1248555 e!2239124)))

(declare-fun c!625977 () Bool)

(assert (=> d!1064481 (= c!625977 (isEmpty!22506 lt!1248444))))

(assert (=> d!1064481 (validRegex!4769 (regex!5664 rule!403))))

(assert (=> d!1064481 (= (matchR!4992 (regex!5664 rule!403) lt!1248444) lt!1248555)))

(declare-fun bm!261686 () Bool)

(assert (=> bm!261686 (= call!261691 (isEmpty!22506 lt!1248444))))

(declare-fun b!3617653 () Bool)

(assert (=> b!3617653 (= e!2239124 (matchR!4992 (derivativeStep!3156 (regex!5664 rule!403) (head!7630 lt!1248444)) (tail!5605 lt!1248444)))))

(declare-fun b!3617654 () Bool)

(assert (=> b!3617654 (= e!2239124 (nullable!3607 (regex!5664 rule!403)))))

(declare-fun b!3617655 () Bool)

(declare-fun res!1463820 () Bool)

(assert (=> b!3617655 (=> res!1463820 e!2239123)))

(assert (=> b!3617655 (= res!1463820 e!2239120)))

(declare-fun res!1463821 () Bool)

(assert (=> b!3617655 (=> (not res!1463821) (not e!2239120))))

(assert (=> b!3617655 (= res!1463821 lt!1248555)))

(declare-fun b!3617656 () Bool)

(declare-fun res!1463825 () Bool)

(assert (=> b!3617656 (=> (not res!1463825) (not e!2239120))))

(assert (=> b!3617656 (= res!1463825 (isEmpty!22506 (tail!5605 lt!1248444)))))

(declare-fun b!3617657 () Bool)

(assert (=> b!3617657 (= e!2239122 (not (= (head!7630 lt!1248444) (c!625918 (regex!5664 rule!403)))))))

(declare-fun b!3617658 () Bool)

(declare-fun res!1463822 () Bool)

(assert (=> b!3617658 (=> res!1463822 e!2239122)))

(assert (=> b!3617658 (= res!1463822 (not (isEmpty!22506 (tail!5605 lt!1248444))))))

(declare-fun b!3617659 () Bool)

(declare-fun res!1463818 () Bool)

(assert (=> b!3617659 (=> res!1463818 e!2239123)))

(assert (=> b!3617659 (= res!1463818 (not ((_ is ElementMatch!10423) (regex!5664 rule!403))))))

(declare-fun e!2239118 () Bool)

(assert (=> b!3617659 (= e!2239118 e!2239123)))

(declare-fun b!3617660 () Bool)

(assert (=> b!3617660 (= e!2239121 e!2239118)))

(declare-fun c!625979 () Bool)

(assert (=> b!3617660 (= c!625979 ((_ is EmptyLang!10423) (regex!5664 rule!403)))))

(declare-fun b!3617661 () Bool)

(assert (=> b!3617661 (= e!2239121 (= lt!1248555 call!261691))))

(declare-fun b!3617662 () Bool)

(assert (=> b!3617662 (= e!2239120 (= (head!7630 lt!1248444) (c!625918 (regex!5664 rule!403))))))

(declare-fun b!3617663 () Bool)

(assert (=> b!3617663 (= e!2239118 (not lt!1248555))))

(assert (= (and d!1064481 c!625977) b!3617654))

(assert (= (and d!1064481 (not c!625977)) b!3617653))

(assert (= (and d!1064481 c!625978) b!3617661))

(assert (= (and d!1064481 (not c!625978)) b!3617660))

(assert (= (and b!3617660 c!625979) b!3617663))

(assert (= (and b!3617660 (not c!625979)) b!3617659))

(assert (= (and b!3617659 (not res!1463818)) b!3617655))

(assert (= (and b!3617655 res!1463821) b!3617652))

(assert (= (and b!3617652 res!1463823) b!3617656))

(assert (= (and b!3617656 res!1463825) b!3617662))

(assert (= (and b!3617655 (not res!1463820)) b!3617650))

(assert (= (and b!3617650 res!1463819) b!3617651))

(assert (= (and b!3617651 (not res!1463824)) b!3617658))

(assert (= (and b!3617658 (not res!1463822)) b!3617657))

(assert (= (or b!3617661 b!3617651 b!3617652) bm!261686))

(declare-fun m!4116561 () Bool)

(assert (=> d!1064481 m!4116561))

(assert (=> d!1064481 m!4116409))

(assert (=> bm!261686 m!4116561))

(declare-fun m!4116563 () Bool)

(assert (=> b!3617657 m!4116563))

(declare-fun m!4116565 () Bool)

(assert (=> b!3617654 m!4116565))

(declare-fun m!4116567 () Bool)

(assert (=> b!3617656 m!4116567))

(assert (=> b!3617656 m!4116567))

(declare-fun m!4116569 () Bool)

(assert (=> b!3617656 m!4116569))

(assert (=> b!3617662 m!4116563))

(assert (=> b!3617658 m!4116567))

(assert (=> b!3617658 m!4116567))

(assert (=> b!3617658 m!4116569))

(assert (=> b!3617653 m!4116563))

(assert (=> b!3617653 m!4116563))

(declare-fun m!4116571 () Bool)

(assert (=> b!3617653 m!4116571))

(assert (=> b!3617653 m!4116567))

(assert (=> b!3617653 m!4116571))

(assert (=> b!3617653 m!4116567))

(declare-fun m!4116573 () Bool)

(assert (=> b!3617653 m!4116573))

(assert (=> b!3617401 d!1064481))

(declare-fun d!1064487 () Bool)

(declare-fun res!1463842 () Bool)

(declare-fun e!2239136 () Bool)

(assert (=> d!1064487 (=> (not res!1463842) (not e!2239136))))

(assert (=> d!1064487 (= res!1463842 (validRegex!4769 (regex!5664 rule!403)))))

(assert (=> d!1064487 (= (ruleValid!1929 thiss!23823 rule!403) e!2239136)))

(declare-fun b!3617680 () Bool)

(declare-fun res!1463843 () Bool)

(assert (=> b!3617680 (=> (not res!1463843) (not e!2239136))))

(assert (=> b!3617680 (= res!1463843 (not (nullable!3607 (regex!5664 rule!403))))))

(declare-fun b!3617681 () Bool)

(assert (=> b!3617681 (= e!2239136 (not (= (tag!6378 rule!403) (String!42805 ""))))))

(assert (= (and d!1064487 res!1463842) b!3617680))

(assert (= (and b!3617680 res!1463843) b!3617681))

(assert (=> d!1064487 m!4116409))

(assert (=> b!3617680 m!4116565))

(assert (=> b!3617401 d!1064487))

(declare-fun d!1064491 () Bool)

(assert (=> d!1064491 (ruleValid!1929 thiss!23823 rule!403)))

(declare-fun lt!1248565 () Unit!54616)

(declare-fun choose!21205 (LexerInterface!5253 Rule!11128 List!38219) Unit!54616)

(assert (=> d!1064491 (= lt!1248565 (choose!21205 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1064491 (contains!7392 rules!3307 rule!403)))

(assert (=> d!1064491 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1084 thiss!23823 rule!403 rules!3307) lt!1248565)))

(declare-fun bs!571077 () Bool)

(assert (= bs!571077 d!1064491))

(assert (=> bs!571077 m!4116213))

(declare-fun m!4116589 () Bool)

(assert (=> bs!571077 m!4116589))

(assert (=> bs!571077 m!4116173))

(assert (=> b!3617401 d!1064491))

(declare-fun d!1064495 () Bool)

(declare-fun c!625991 () Bool)

(assert (=> d!1064495 (= c!625991 (or ((_ is EmptyExpr!10423) (regex!5664 (rule!8422 (_1!22122 lt!1248468)))) ((_ is EmptyLang!10423) (regex!5664 (rule!8422 (_1!22122 lt!1248468))))))))

(declare-fun e!2239154 () List!38218)

(assert (=> d!1064495 (= (usedCharacters!878 (regex!5664 (rule!8422 (_1!22122 lt!1248468)))) e!2239154)))

(declare-fun b!3617716 () Bool)

(assert (=> b!3617716 (= e!2239154 Nil!38094)))

(declare-fun b!3617717 () Bool)

(declare-fun c!625994 () Bool)

(assert (=> b!3617717 (= c!625994 ((_ is Star!10423) (regex!5664 (rule!8422 (_1!22122 lt!1248468)))))))

(declare-fun e!2239156 () List!38218)

(declare-fun e!2239157 () List!38218)

(assert (=> b!3617717 (= e!2239156 e!2239157)))

(declare-fun b!3617718 () Bool)

(assert (=> b!3617718 (= e!2239154 e!2239156)))

(declare-fun c!625992 () Bool)

(assert (=> b!3617718 (= c!625992 ((_ is ElementMatch!10423) (regex!5664 (rule!8422 (_1!22122 lt!1248468)))))))

(declare-fun c!625993 () Bool)

(declare-fun call!261700 () List!38218)

(declare-fun call!261703 () List!38218)

(declare-fun call!261702 () List!38218)

(declare-fun bm!261695 () Bool)

(assert (=> bm!261695 (= call!261702 (++!9480 (ite c!625993 call!261700 call!261703) (ite c!625993 call!261703 call!261700)))))

(declare-fun bm!261696 () Bool)

(assert (=> bm!261696 (= call!261700 (usedCharacters!878 (ite c!625993 (regOne!21359 (regex!5664 (rule!8422 (_1!22122 lt!1248468)))) (regTwo!21358 (regex!5664 (rule!8422 (_1!22122 lt!1248468)))))))))

(declare-fun b!3617719 () Bool)

(declare-fun e!2239155 () List!38218)

(assert (=> b!3617719 (= e!2239155 call!261702)))

(declare-fun b!3617720 () Bool)

(assert (=> b!3617720 (= e!2239155 call!261702)))

(declare-fun bm!261697 () Bool)

(declare-fun call!261701 () List!38218)

(assert (=> bm!261697 (= call!261701 (usedCharacters!878 (ite c!625994 (reg!10752 (regex!5664 (rule!8422 (_1!22122 lt!1248468)))) (ite c!625993 (regTwo!21359 (regex!5664 (rule!8422 (_1!22122 lt!1248468)))) (regOne!21358 (regex!5664 (rule!8422 (_1!22122 lt!1248468))))))))))

(declare-fun bm!261698 () Bool)

(assert (=> bm!261698 (= call!261703 call!261701)))

(declare-fun b!3617721 () Bool)

(assert (=> b!3617721 (= e!2239157 e!2239155)))

(assert (=> b!3617721 (= c!625993 ((_ is Union!10423) (regex!5664 (rule!8422 (_1!22122 lt!1248468)))))))

(declare-fun b!3617722 () Bool)

(assert (=> b!3617722 (= e!2239156 (Cons!38094 (c!625918 (regex!5664 (rule!8422 (_1!22122 lt!1248468)))) Nil!38094))))

(declare-fun b!3617723 () Bool)

(assert (=> b!3617723 (= e!2239157 call!261701)))

(assert (= (and d!1064495 c!625991) b!3617716))

(assert (= (and d!1064495 (not c!625991)) b!3617718))

(assert (= (and b!3617718 c!625992) b!3617722))

(assert (= (and b!3617718 (not c!625992)) b!3617717))

(assert (= (and b!3617717 c!625994) b!3617723))

(assert (= (and b!3617717 (not c!625994)) b!3617721))

(assert (= (and b!3617721 c!625993) b!3617719))

(assert (= (and b!3617721 (not c!625993)) b!3617720))

(assert (= (or b!3617719 b!3617720) bm!261696))

(assert (= (or b!3617719 b!3617720) bm!261698))

(assert (= (or b!3617719 b!3617720) bm!261695))

(assert (= (or b!3617723 bm!261698) bm!261697))

(declare-fun m!4116601 () Bool)

(assert (=> bm!261695 m!4116601))

(declare-fun m!4116603 () Bool)

(assert (=> bm!261696 m!4116603))

(declare-fun m!4116605 () Bool)

(assert (=> bm!261697 m!4116605))

(assert (=> bm!261664 d!1064495))

(declare-fun d!1064499 () Bool)

(assert (=> d!1064499 (not (matchR!4992 (regex!5664 (rule!8422 (_1!22122 lt!1248468))) lt!1248446))))

(declare-fun lt!1248569 () Unit!54616)

(assert (=> d!1064499 (= lt!1248569 (choose!21200 (regex!5664 (rule!8422 (_1!22122 lt!1248468))) lt!1248446 lt!1248471))))

(assert (=> d!1064499 (validRegex!4769 (regex!5664 (rule!8422 (_1!22122 lt!1248468))))))

(assert (=> d!1064499 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!648 (regex!5664 (rule!8422 (_1!22122 lt!1248468))) lt!1248446 lt!1248471) lt!1248569)))

(declare-fun bs!571078 () Bool)

(assert (= bs!571078 d!1064499))

(assert (=> bs!571078 m!4116325))

(declare-fun m!4116607 () Bool)

(assert (=> bs!571078 m!4116607))

(declare-fun m!4116609 () Bool)

(assert (=> bs!571078 m!4116609))

(assert (=> bm!261665 d!1064499))

(declare-fun d!1064501 () Bool)

(declare-fun lt!1248578 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5451 (List!38218) (InoxSet C!21032))

(assert (=> d!1064501 (= lt!1248578 (select (content!5451 call!261667) lt!1248471))))

(declare-fun e!2239170 () Bool)

(assert (=> d!1064501 (= lt!1248578 e!2239170)))

(declare-fun res!1463865 () Bool)

(assert (=> d!1064501 (=> (not res!1463865) (not e!2239170))))

(assert (=> d!1064501 (= res!1463865 ((_ is Cons!38094) call!261667))))

(assert (=> d!1064501 (= (contains!7391 call!261667 lt!1248471) lt!1248578)))

(declare-fun b!3617740 () Bool)

(declare-fun e!2239171 () Bool)

(assert (=> b!3617740 (= e!2239170 e!2239171)))

(declare-fun res!1463864 () Bool)

(assert (=> b!3617740 (=> res!1463864 e!2239171)))

(assert (=> b!3617740 (= res!1463864 (= (h!43514 call!261667) lt!1248471))))

(declare-fun b!3617741 () Bool)

(assert (=> b!3617741 (= e!2239171 (contains!7391 (t!293869 call!261667) lt!1248471))))

(assert (= (and d!1064501 res!1463865) b!3617740))

(assert (= (and b!3617740 (not res!1463864)) b!3617741))

(declare-fun m!4116611 () Bool)

(assert (=> d!1064501 m!4116611))

(declare-fun m!4116613 () Bool)

(assert (=> d!1064501 m!4116613))

(declare-fun m!4116615 () Bool)

(assert (=> b!3617741 m!4116615))

(assert (=> bm!261662 d!1064501))

(declare-fun b!3617748 () Bool)

(declare-fun e!2239181 () Bool)

(declare-fun e!2239177 () Bool)

(assert (=> b!3617748 (= e!2239181 e!2239177)))

(declare-fun res!1463869 () Bool)

(assert (=> b!3617748 (=> (not res!1463869) (not e!2239177))))

(declare-fun lt!1248582 () Bool)

(assert (=> b!3617748 (= res!1463869 (not lt!1248582))))

(declare-fun b!3617749 () Bool)

(declare-fun e!2239180 () Bool)

(assert (=> b!3617749 (= e!2239177 e!2239180)))

(declare-fun res!1463874 () Bool)

(assert (=> b!3617749 (=> res!1463874 e!2239180)))

(declare-fun call!261704 () Bool)

(assert (=> b!3617749 (= res!1463874 call!261704)))

(declare-fun b!3617750 () Bool)

(declare-fun res!1463873 () Bool)

(declare-fun e!2239178 () Bool)

(assert (=> b!3617750 (=> (not res!1463873) (not e!2239178))))

(assert (=> b!3617750 (= res!1463873 (not call!261704))))

(declare-fun d!1064503 () Bool)

(declare-fun e!2239179 () Bool)

(assert (=> d!1064503 e!2239179))

(declare-fun c!626002 () Bool)

(assert (=> d!1064503 (= c!626002 ((_ is EmptyExpr!10423) (regex!5664 (rule!8422 (_1!22122 lt!1248468)))))))

(declare-fun e!2239182 () Bool)

(assert (=> d!1064503 (= lt!1248582 e!2239182)))

(declare-fun c!626001 () Bool)

(assert (=> d!1064503 (= c!626001 (isEmpty!22506 lt!1248446))))

(assert (=> d!1064503 (validRegex!4769 (regex!5664 (rule!8422 (_1!22122 lt!1248468))))))

(assert (=> d!1064503 (= (matchR!4992 (regex!5664 (rule!8422 (_1!22122 lt!1248468))) lt!1248446) lt!1248582)))

(declare-fun bm!261699 () Bool)

(assert (=> bm!261699 (= call!261704 (isEmpty!22506 lt!1248446))))

(declare-fun b!3617751 () Bool)

(assert (=> b!3617751 (= e!2239182 (matchR!4992 (derivativeStep!3156 (regex!5664 (rule!8422 (_1!22122 lt!1248468))) (head!7630 lt!1248446)) (tail!5605 lt!1248446)))))

(declare-fun b!3617752 () Bool)

(assert (=> b!3617752 (= e!2239182 (nullable!3607 (regex!5664 (rule!8422 (_1!22122 lt!1248468)))))))

(declare-fun b!3617753 () Bool)

(declare-fun res!1463870 () Bool)

(assert (=> b!3617753 (=> res!1463870 e!2239181)))

(assert (=> b!3617753 (= res!1463870 e!2239178)))

(declare-fun res!1463871 () Bool)

(assert (=> b!3617753 (=> (not res!1463871) (not e!2239178))))

(assert (=> b!3617753 (= res!1463871 lt!1248582)))

(declare-fun b!3617754 () Bool)

(declare-fun res!1463875 () Bool)

(assert (=> b!3617754 (=> (not res!1463875) (not e!2239178))))

(assert (=> b!3617754 (= res!1463875 (isEmpty!22506 (tail!5605 lt!1248446)))))

(declare-fun b!3617755 () Bool)

(assert (=> b!3617755 (= e!2239180 (not (= (head!7630 lt!1248446) (c!625918 (regex!5664 (rule!8422 (_1!22122 lt!1248468)))))))))

(declare-fun b!3617756 () Bool)

(declare-fun res!1463872 () Bool)

(assert (=> b!3617756 (=> res!1463872 e!2239180)))

(assert (=> b!3617756 (= res!1463872 (not (isEmpty!22506 (tail!5605 lt!1248446))))))

(declare-fun b!3617757 () Bool)

(declare-fun res!1463868 () Bool)

(assert (=> b!3617757 (=> res!1463868 e!2239181)))

(assert (=> b!3617757 (= res!1463868 (not ((_ is ElementMatch!10423) (regex!5664 (rule!8422 (_1!22122 lt!1248468))))))))

(declare-fun e!2239176 () Bool)

(assert (=> b!3617757 (= e!2239176 e!2239181)))

(declare-fun b!3617758 () Bool)

(assert (=> b!3617758 (= e!2239179 e!2239176)))

(declare-fun c!626003 () Bool)

(assert (=> b!3617758 (= c!626003 ((_ is EmptyLang!10423) (regex!5664 (rule!8422 (_1!22122 lt!1248468)))))))

(declare-fun b!3617759 () Bool)

(assert (=> b!3617759 (= e!2239179 (= lt!1248582 call!261704))))

(declare-fun b!3617760 () Bool)

(assert (=> b!3617760 (= e!2239178 (= (head!7630 lt!1248446) (c!625918 (regex!5664 (rule!8422 (_1!22122 lt!1248468))))))))

(declare-fun b!3617761 () Bool)

(assert (=> b!3617761 (= e!2239176 (not lt!1248582))))

(assert (= (and d!1064503 c!626001) b!3617752))

(assert (= (and d!1064503 (not c!626001)) b!3617751))

(assert (= (and d!1064503 c!626002) b!3617759))

(assert (= (and d!1064503 (not c!626002)) b!3617758))

(assert (= (and b!3617758 c!626003) b!3617761))

(assert (= (and b!3617758 (not c!626003)) b!3617757))

(assert (= (and b!3617757 (not res!1463868)) b!3617753))

(assert (= (and b!3617753 res!1463871) b!3617750))

(assert (= (and b!3617750 res!1463873) b!3617754))

(assert (= (and b!3617754 res!1463875) b!3617760))

(assert (= (and b!3617753 (not res!1463870)) b!3617748))

(assert (= (and b!3617748 res!1463869) b!3617749))

(assert (= (and b!3617749 (not res!1463874)) b!3617756))

(assert (= (and b!3617756 (not res!1463872)) b!3617755))

(assert (= (or b!3617759 b!3617749 b!3617750) bm!261699))

(declare-fun m!4116641 () Bool)

(assert (=> d!1064503 m!4116641))

(assert (=> d!1064503 m!4116609))

(assert (=> bm!261699 m!4116641))

(assert (=> b!3617755 m!4116281))

(declare-fun m!4116643 () Bool)

(assert (=> b!3617752 m!4116643))

(declare-fun m!4116645 () Bool)

(assert (=> b!3617754 m!4116645))

(assert (=> b!3617754 m!4116645))

(declare-fun m!4116647 () Bool)

(assert (=> b!3617754 m!4116647))

(assert (=> b!3617760 m!4116281))

(assert (=> b!3617756 m!4116645))

(assert (=> b!3617756 m!4116645))

(assert (=> b!3617756 m!4116647))

(assert (=> b!3617751 m!4116281))

(assert (=> b!3617751 m!4116281))

(declare-fun m!4116649 () Bool)

(assert (=> b!3617751 m!4116649))

(assert (=> b!3617751 m!4116645))

(assert (=> b!3617751 m!4116649))

(assert (=> b!3617751 m!4116645))

(declare-fun m!4116651 () Bool)

(assert (=> b!3617751 m!4116651))

(assert (=> b!3617402 d!1064503))

(declare-fun d!1064509 () Bool)

(declare-fun lt!1248586 () Bool)

(declare-fun content!5452 (List!38219) (InoxSet Rule!11128))

(assert (=> d!1064509 (= lt!1248586 (select (content!5452 rules!3307) rule!403))))

(declare-fun e!2239189 () Bool)

(assert (=> d!1064509 (= lt!1248586 e!2239189)))

(declare-fun res!1463882 () Bool)

(assert (=> d!1064509 (=> (not res!1463882) (not e!2239189))))

(assert (=> d!1064509 (= res!1463882 ((_ is Cons!38095) rules!3307))))

(assert (=> d!1064509 (= (contains!7392 rules!3307 rule!403) lt!1248586)))

(declare-fun b!3617770 () Bool)

(declare-fun e!2239190 () Bool)

(assert (=> b!3617770 (= e!2239189 e!2239190)))

(declare-fun res!1463883 () Bool)

(assert (=> b!3617770 (=> res!1463883 e!2239190)))

(assert (=> b!3617770 (= res!1463883 (= (h!43515 rules!3307) rule!403))))

(declare-fun b!3617771 () Bool)

(assert (=> b!3617771 (= e!2239190 (contains!7392 (t!293870 rules!3307) rule!403))))

(assert (= (and d!1064509 res!1463882) b!3617770))

(assert (= (and b!3617770 (not res!1463883)) b!3617771))

(declare-fun m!4116653 () Bool)

(assert (=> d!1064509 m!4116653))

(declare-fun m!4116655 () Bool)

(assert (=> d!1064509 m!4116655))

(declare-fun m!4116657 () Bool)

(assert (=> b!3617771 m!4116657))

(assert (=> b!3617419 d!1064509))

(declare-fun d!1064511 () Bool)

(declare-fun lt!1248587 () Bool)

(assert (=> d!1064511 (= lt!1248587 (select (content!5451 call!261665) lt!1248470))))

(declare-fun e!2239191 () Bool)

(assert (=> d!1064511 (= lt!1248587 e!2239191)))

(declare-fun res!1463885 () Bool)

(assert (=> d!1064511 (=> (not res!1463885) (not e!2239191))))

(assert (=> d!1064511 (= res!1463885 ((_ is Cons!38094) call!261665))))

(assert (=> d!1064511 (= (contains!7391 call!261665 lt!1248470) lt!1248587)))

(declare-fun b!3617772 () Bool)

(declare-fun e!2239192 () Bool)

(assert (=> b!3617772 (= e!2239191 e!2239192)))

(declare-fun res!1463884 () Bool)

(assert (=> b!3617772 (=> res!1463884 e!2239192)))

(assert (=> b!3617772 (= res!1463884 (= (h!43514 call!261665) lt!1248470))))

(declare-fun b!3617773 () Bool)

(assert (=> b!3617773 (= e!2239192 (contains!7391 (t!293869 call!261665) lt!1248470))))

(assert (= (and d!1064511 res!1463885) b!3617772))

(assert (= (and b!3617772 (not res!1463884)) b!3617773))

(declare-fun m!4116659 () Bool)

(assert (=> d!1064511 m!4116659))

(declare-fun m!4116661 () Bool)

(assert (=> d!1064511 m!4116661))

(declare-fun m!4116663 () Bool)

(assert (=> b!3617773 m!4116663))

(assert (=> bm!261660 d!1064511))

(declare-fun d!1064513 () Bool)

(assert (=> d!1064513 (not (matchR!4992 (regex!5664 (rule!8422 (_1!22122 lt!1248468))) lt!1248446))))

(declare-fun lt!1248588 () Unit!54616)

(assert (=> d!1064513 (= lt!1248588 (choose!21200 (regex!5664 (rule!8422 (_1!22122 lt!1248468))) lt!1248446 lt!1248470))))

(assert (=> d!1064513 (validRegex!4769 (regex!5664 (rule!8422 (_1!22122 lt!1248468))))))

(assert (=> d!1064513 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!648 (regex!5664 (rule!8422 (_1!22122 lt!1248468))) lt!1248446 lt!1248470) lt!1248588)))

(declare-fun bs!571079 () Bool)

(assert (= bs!571079 d!1064513))

(assert (=> bs!571079 m!4116325))

(declare-fun m!4116665 () Bool)

(assert (=> bs!571079 m!4116665))

(assert (=> bs!571079 m!4116609))

(assert (=> bm!261661 d!1064513))

(declare-fun b!3617784 () Bool)

(declare-fun e!2239201 () Bool)

(declare-fun e!2239200 () Bool)

(assert (=> b!3617784 (= e!2239201 e!2239200)))

(declare-fun c!626010 () Bool)

(assert (=> b!3617784 (= c!626010 ((_ is IntegerValue!17683) (value!181884 token!511)))))

(declare-fun b!3617785 () Bool)

(declare-fun inv!17 (TokenValue!5894) Bool)

(assert (=> b!3617785 (= e!2239200 (inv!17 (value!181884 token!511)))))

(declare-fun b!3617786 () Bool)

(declare-fun e!2239199 () Bool)

(declare-fun inv!15 (TokenValue!5894) Bool)

(assert (=> b!3617786 (= e!2239199 (inv!15 (value!181884 token!511)))))

(declare-fun d!1064515 () Bool)

(declare-fun c!626009 () Bool)

(assert (=> d!1064515 (= c!626009 ((_ is IntegerValue!17682) (value!181884 token!511)))))

(assert (=> d!1064515 (= (inv!21 (value!181884 token!511)) e!2239201)))

(declare-fun b!3617787 () Bool)

(declare-fun inv!16 (TokenValue!5894) Bool)

(assert (=> b!3617787 (= e!2239201 (inv!16 (value!181884 token!511)))))

(declare-fun b!3617788 () Bool)

(declare-fun res!1463888 () Bool)

(assert (=> b!3617788 (=> res!1463888 e!2239199)))

(assert (=> b!3617788 (= res!1463888 (not ((_ is IntegerValue!17684) (value!181884 token!511))))))

(assert (=> b!3617788 (= e!2239200 e!2239199)))

(assert (= (and d!1064515 c!626009) b!3617787))

(assert (= (and d!1064515 (not c!626009)) b!3617784))

(assert (= (and b!3617784 c!626010) b!3617785))

(assert (= (and b!3617784 (not c!626010)) b!3617788))

(assert (= (and b!3617788 (not res!1463888)) b!3617786))

(declare-fun m!4116667 () Bool)

(assert (=> b!3617785 m!4116667))

(declare-fun m!4116669 () Bool)

(assert (=> b!3617786 m!4116669))

(declare-fun m!4116671 () Bool)

(assert (=> b!3617787 m!4116671))

(assert (=> b!3617399 d!1064515))

(declare-fun d!1064517 () Bool)

(assert (=> d!1064517 (not (contains!7391 (usedCharacters!878 (regex!5664 (rule!8422 (_1!22122 lt!1248468)))) lt!1248471))))

(declare-fun lt!1248589 () Unit!54616)

(assert (=> d!1064517 (= lt!1248589 (choose!21204 thiss!23823 rules!3307 rules!3307 (rule!8422 (_1!22122 lt!1248468)) rule!403 lt!1248471))))

(assert (=> d!1064517 (rulesInvariant!4650 thiss!23823 rules!3307)))

(assert (=> d!1064517 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!370 thiss!23823 rules!3307 rules!3307 (rule!8422 (_1!22122 lt!1248468)) rule!403 lt!1248471) lt!1248589)))

(declare-fun bs!571080 () Bool)

(assert (= bs!571080 d!1064517))

(assert (=> bs!571080 m!4116207))

(assert (=> bs!571080 m!4116207))

(declare-fun m!4116673 () Bool)

(assert (=> bs!571080 m!4116673))

(declare-fun m!4116675 () Bool)

(assert (=> bs!571080 m!4116675))

(assert (=> bs!571080 m!4116175))

(assert (=> b!3617400 d!1064517))

(declare-fun d!1064519 () Bool)

(assert (=> d!1064519 (= (inv!51478 (tag!6378 (rule!8422 token!511))) (= (mod (str.len (value!181883 (tag!6378 (rule!8422 token!511)))) 2) 0))))

(assert (=> b!3617420 d!1064519))

(declare-fun d!1064521 () Bool)

(declare-fun res!1463891 () Bool)

(declare-fun e!2239204 () Bool)

(assert (=> d!1064521 (=> (not res!1463891) (not e!2239204))))

(declare-fun semiInverseModEq!2405 (Int Int) Bool)

(assert (=> d!1064521 (= res!1463891 (semiInverseModEq!2405 (toChars!7807 (transformation!5664 (rule!8422 token!511))) (toValue!7948 (transformation!5664 (rule!8422 token!511)))))))

(assert (=> d!1064521 (= (inv!51481 (transformation!5664 (rule!8422 token!511))) e!2239204)))

(declare-fun b!3617791 () Bool)

(declare-fun equivClasses!2304 (Int Int) Bool)

(assert (=> b!3617791 (= e!2239204 (equivClasses!2304 (toChars!7807 (transformation!5664 (rule!8422 token!511))) (toValue!7948 (transformation!5664 (rule!8422 token!511)))))))

(assert (= (and d!1064521 res!1463891) b!3617791))

(declare-fun m!4116677 () Bool)

(assert (=> d!1064521 m!4116677))

(declare-fun m!4116679 () Bool)

(assert (=> b!3617791 m!4116679))

(assert (=> b!3617420 d!1064521))

(declare-fun d!1064523 () Bool)

(assert (=> d!1064523 (= (isEmpty!22506 (_2!22122 lt!1248467)) ((_ is Nil!38094) (_2!22122 lt!1248467)))))

(assert (=> b!3617421 d!1064523))

(assert (=> b!3617417 d!1064445))

(declare-fun b!3617821 () Bool)

(declare-fun e!2239217 () Bool)

(assert (=> b!3617821 (= e!2239217 (>= (size!29058 lt!1248453) (size!29058 lt!1248446)))))

(declare-fun b!3617818 () Bool)

(declare-fun e!2239218 () Bool)

(declare-fun e!2239219 () Bool)

(assert (=> b!3617818 (= e!2239218 e!2239219)))

(declare-fun res!1463916 () Bool)

(assert (=> b!3617818 (=> (not res!1463916) (not e!2239219))))

(assert (=> b!3617818 (= res!1463916 (not ((_ is Nil!38094) lt!1248453)))))

(declare-fun d!1064525 () Bool)

(assert (=> d!1064525 e!2239217))

(declare-fun res!1463915 () Bool)

(assert (=> d!1064525 (=> res!1463915 e!2239217)))

(declare-fun lt!1248602 () Bool)

(assert (=> d!1064525 (= res!1463915 (not lt!1248602))))

(assert (=> d!1064525 (= lt!1248602 e!2239218)))

(declare-fun res!1463917 () Bool)

(assert (=> d!1064525 (=> res!1463917 e!2239218)))

(assert (=> d!1064525 (= res!1463917 ((_ is Nil!38094) lt!1248446))))

(assert (=> d!1064525 (= (isPrefix!3027 lt!1248446 lt!1248453) lt!1248602)))

(declare-fun b!3617819 () Bool)

(declare-fun res!1463914 () Bool)

(assert (=> b!3617819 (=> (not res!1463914) (not e!2239219))))

(assert (=> b!3617819 (= res!1463914 (= (head!7630 lt!1248446) (head!7630 lt!1248453)))))

(declare-fun b!3617820 () Bool)

(assert (=> b!3617820 (= e!2239219 (isPrefix!3027 (tail!5605 lt!1248446) (tail!5605 lt!1248453)))))

(assert (= (and d!1064525 (not res!1463917)) b!3617818))

(assert (= (and b!3617818 res!1463916) b!3617819))

(assert (= (and b!3617819 res!1463914) b!3617820))

(assert (= (and d!1064525 (not res!1463915)) b!3617821))

(assert (=> b!3617821 m!4116295))

(assert (=> b!3617821 m!4116227))

(assert (=> b!3617819 m!4116281))

(declare-fun m!4116681 () Bool)

(assert (=> b!3617819 m!4116681))

(assert (=> b!3617820 m!4116645))

(declare-fun m!4116683 () Bool)

(assert (=> b!3617820 m!4116683))

(assert (=> b!3617820 m!4116645))

(assert (=> b!3617820 m!4116683))

(declare-fun m!4116685 () Bool)

(assert (=> b!3617820 m!4116685))

(assert (=> b!3617417 d!1064525))

(declare-fun b!3617862 () Bool)

(declare-fun res!1463950 () Bool)

(declare-fun e!2239238 () Bool)

(assert (=> b!3617862 (=> (not res!1463950) (not e!2239238))))

(declare-fun lt!1248624 () Option!7958)

(assert (=> b!3617862 (= res!1463950 (= (value!181884 (_1!22122 (get!12400 lt!1248624))) (apply!9170 (transformation!5664 (rule!8422 (_1!22122 (get!12400 lt!1248624)))) (seqFromList!4217 (originalCharacters!6378 (_1!22122 (get!12400 lt!1248624)))))))))

(declare-fun b!3617863 () Bool)

(declare-fun e!2239239 () Bool)

(assert (=> b!3617863 (= e!2239239 e!2239238)))

(declare-fun res!1463948 () Bool)

(assert (=> b!3617863 (=> (not res!1463948) (not e!2239238))))

(assert (=> b!3617863 (= res!1463948 (isDefined!6190 lt!1248624))))

(declare-fun b!3617864 () Bool)

(declare-fun e!2239240 () Option!7958)

(declare-fun lt!1248627 () Option!7958)

(declare-fun lt!1248625 () Option!7958)

(assert (=> b!3617864 (= e!2239240 (ite (and ((_ is None!7957) lt!1248627) ((_ is None!7957) lt!1248625)) None!7957 (ite ((_ is None!7957) lt!1248625) lt!1248627 (ite ((_ is None!7957) lt!1248627) lt!1248625 (ite (>= (size!29057 (_1!22122 (v!37715 lt!1248627))) (size!29057 (_1!22122 (v!37715 lt!1248625)))) lt!1248627 lt!1248625)))))))

(declare-fun call!261710 () Option!7958)

(assert (=> b!3617864 (= lt!1248627 call!261710)))

(assert (=> b!3617864 (= lt!1248625 (maxPrefix!2787 thiss!23823 (t!293870 rules!3307) lt!1248453))))

(declare-fun b!3617865 () Bool)

(assert (=> b!3617865 (= e!2239240 call!261710)))

(declare-fun b!3617866 () Bool)

(declare-fun res!1463952 () Bool)

(assert (=> b!3617866 (=> (not res!1463952) (not e!2239238))))

(assert (=> b!3617866 (= res!1463952 (matchR!4992 (regex!5664 (rule!8422 (_1!22122 (get!12400 lt!1248624)))) (list!14056 (charsOf!3678 (_1!22122 (get!12400 lt!1248624))))))))

(declare-fun b!3617867 () Bool)

(assert (=> b!3617867 (= e!2239238 (contains!7392 rules!3307 (rule!8422 (_1!22122 (get!12400 lt!1248624)))))))

(declare-fun b!3617868 () Bool)

(declare-fun res!1463949 () Bool)

(assert (=> b!3617868 (=> (not res!1463949) (not e!2239238))))

(assert (=> b!3617868 (= res!1463949 (= (list!14056 (charsOf!3678 (_1!22122 (get!12400 lt!1248624)))) (originalCharacters!6378 (_1!22122 (get!12400 lt!1248624)))))))

(declare-fun bm!261705 () Bool)

(assert (=> bm!261705 (= call!261710 (maxPrefixOneRule!1931 thiss!23823 (h!43515 rules!3307) lt!1248453))))

(declare-fun d!1064527 () Bool)

(assert (=> d!1064527 e!2239239))

(declare-fun res!1463951 () Bool)

(assert (=> d!1064527 (=> res!1463951 e!2239239)))

(declare-fun isEmpty!22510 (Option!7958) Bool)

(assert (=> d!1064527 (= res!1463951 (isEmpty!22510 lt!1248624))))

(assert (=> d!1064527 (= lt!1248624 e!2239240)))

(declare-fun c!626016 () Bool)

(assert (=> d!1064527 (= c!626016 (and ((_ is Cons!38095) rules!3307) ((_ is Nil!38095) (t!293870 rules!3307))))))

(declare-fun lt!1248626 () Unit!54616)

(declare-fun lt!1248623 () Unit!54616)

(assert (=> d!1064527 (= lt!1248626 lt!1248623)))

(assert (=> d!1064527 (isPrefix!3027 lt!1248453 lt!1248453)))

(declare-fun lemmaIsPrefixRefl!1926 (List!38218 List!38218) Unit!54616)

(assert (=> d!1064527 (= lt!1248623 (lemmaIsPrefixRefl!1926 lt!1248453 lt!1248453))))

(declare-fun rulesValidInductive!1989 (LexerInterface!5253 List!38219) Bool)

(assert (=> d!1064527 (rulesValidInductive!1989 thiss!23823 rules!3307)))

(assert (=> d!1064527 (= (maxPrefix!2787 thiss!23823 rules!3307 lt!1248453) lt!1248624)))

(declare-fun b!3617869 () Bool)

(declare-fun res!1463953 () Bool)

(assert (=> b!3617869 (=> (not res!1463953) (not e!2239238))))

(assert (=> b!3617869 (= res!1463953 (< (size!29058 (_2!22122 (get!12400 lt!1248624))) (size!29058 lt!1248453)))))

(declare-fun b!3617870 () Bool)

(declare-fun res!1463947 () Bool)

(assert (=> b!3617870 (=> (not res!1463947) (not e!2239238))))

(assert (=> b!3617870 (= res!1463947 (= (++!9480 (list!14056 (charsOf!3678 (_1!22122 (get!12400 lt!1248624)))) (_2!22122 (get!12400 lt!1248624))) lt!1248453))))

(assert (= (and d!1064527 c!626016) b!3617865))

(assert (= (and d!1064527 (not c!626016)) b!3617864))

(assert (= (or b!3617865 b!3617864) bm!261705))

(assert (= (and d!1064527 (not res!1463951)) b!3617863))

(assert (= (and b!3617863 res!1463948) b!3617868))

(assert (= (and b!3617868 res!1463949) b!3617869))

(assert (= (and b!3617869 res!1463953) b!3617870))

(assert (= (and b!3617870 res!1463947) b!3617862))

(assert (= (and b!3617862 res!1463950) b!3617866))

(assert (= (and b!3617866 res!1463952) b!3617867))

(declare-fun m!4116737 () Bool)

(assert (=> b!3617868 m!4116737))

(declare-fun m!4116739 () Bool)

(assert (=> b!3617868 m!4116739))

(assert (=> b!3617868 m!4116739))

(declare-fun m!4116741 () Bool)

(assert (=> b!3617868 m!4116741))

(assert (=> b!3617869 m!4116737))

(declare-fun m!4116743 () Bool)

(assert (=> b!3617869 m!4116743))

(assert (=> b!3617869 m!4116295))

(declare-fun m!4116745 () Bool)

(assert (=> b!3617863 m!4116745))

(declare-fun m!4116747 () Bool)

(assert (=> bm!261705 m!4116747))

(assert (=> b!3617867 m!4116737))

(declare-fun m!4116749 () Bool)

(assert (=> b!3617867 m!4116749))

(assert (=> b!3617870 m!4116737))

(assert (=> b!3617870 m!4116739))

(assert (=> b!3617870 m!4116739))

(assert (=> b!3617870 m!4116741))

(assert (=> b!3617870 m!4116741))

(declare-fun m!4116751 () Bool)

(assert (=> b!3617870 m!4116751))

(assert (=> b!3617862 m!4116737))

(declare-fun m!4116753 () Bool)

(assert (=> b!3617862 m!4116753))

(assert (=> b!3617862 m!4116753))

(declare-fun m!4116755 () Bool)

(assert (=> b!3617862 m!4116755))

(declare-fun m!4116757 () Bool)

(assert (=> d!1064527 m!4116757))

(declare-fun m!4116759 () Bool)

(assert (=> d!1064527 m!4116759))

(declare-fun m!4116761 () Bool)

(assert (=> d!1064527 m!4116761))

(declare-fun m!4116763 () Bool)

(assert (=> d!1064527 m!4116763))

(assert (=> b!3617866 m!4116737))

(assert (=> b!3617866 m!4116739))

(assert (=> b!3617866 m!4116739))

(assert (=> b!3617866 m!4116741))

(assert (=> b!3617866 m!4116741))

(declare-fun m!4116765 () Bool)

(assert (=> b!3617866 m!4116765))

(declare-fun m!4116767 () Bool)

(assert (=> b!3617864 m!4116767))

(assert (=> b!3617417 d!1064527))

(declare-fun b!3617883 () Bool)

(declare-fun e!2239252 () Bool)

(declare-fun lt!1248635 () Option!7959)

(assert (=> b!3617883 (= e!2239252 (= (tag!6378 (get!12401 lt!1248635)) (tag!6378 (rule!8422 (_1!22122 lt!1248468)))))))

(declare-fun b!3617884 () Bool)

(declare-fun e!2239249 () Bool)

(assert (=> b!3617884 (= e!2239249 e!2239252)))

(declare-fun res!1463958 () Bool)

(assert (=> b!3617884 (=> (not res!1463958) (not e!2239252))))

(assert (=> b!3617884 (= res!1463958 (contains!7392 rules!3307 (get!12401 lt!1248635)))))

(declare-fun d!1064537 () Bool)

(assert (=> d!1064537 e!2239249))

(declare-fun res!1463959 () Bool)

(assert (=> d!1064537 (=> res!1463959 e!2239249)))

(declare-fun isEmpty!22511 (Option!7959) Bool)

(assert (=> d!1064537 (= res!1463959 (isEmpty!22511 lt!1248635))))

(declare-fun e!2239251 () Option!7959)

(assert (=> d!1064537 (= lt!1248635 e!2239251)))

(declare-fun c!626022 () Bool)

(assert (=> d!1064537 (= c!626022 (and ((_ is Cons!38095) rules!3307) (= (tag!6378 (h!43515 rules!3307)) (tag!6378 (rule!8422 (_1!22122 lt!1248468))))))))

(assert (=> d!1064537 (rulesInvariant!4650 thiss!23823 rules!3307)))

(assert (=> d!1064537 (= (getRuleFromTag!1270 thiss!23823 rules!3307 (tag!6378 (rule!8422 (_1!22122 lt!1248468)))) lt!1248635)))

(declare-fun b!3617885 () Bool)

(declare-fun e!2239250 () Option!7959)

(assert (=> b!3617885 (= e!2239250 None!7958)))

(declare-fun b!3617886 () Bool)

(assert (=> b!3617886 (= e!2239251 e!2239250)))

(declare-fun c!626021 () Bool)

(assert (=> b!3617886 (= c!626021 (and ((_ is Cons!38095) rules!3307) (not (= (tag!6378 (h!43515 rules!3307)) (tag!6378 (rule!8422 (_1!22122 lt!1248468)))))))))

(declare-fun b!3617887 () Bool)

(declare-fun lt!1248634 () Unit!54616)

(declare-fun lt!1248636 () Unit!54616)

(assert (=> b!3617887 (= lt!1248634 lt!1248636)))

(assert (=> b!3617887 (rulesInvariant!4650 thiss!23823 (t!293870 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!537 (LexerInterface!5253 Rule!11128 List!38219) Unit!54616)

(assert (=> b!3617887 (= lt!1248636 (lemmaInvariantOnRulesThenOnTail!537 thiss!23823 (h!43515 rules!3307) (t!293870 rules!3307)))))

(assert (=> b!3617887 (= e!2239250 (getRuleFromTag!1270 thiss!23823 (t!293870 rules!3307) (tag!6378 (rule!8422 (_1!22122 lt!1248468)))))))

(declare-fun b!3617888 () Bool)

(assert (=> b!3617888 (= e!2239251 (Some!7958 (h!43515 rules!3307)))))

(assert (= (and d!1064537 c!626022) b!3617888))

(assert (= (and d!1064537 (not c!626022)) b!3617886))

(assert (= (and b!3617886 c!626021) b!3617887))

(assert (= (and b!3617886 (not c!626021)) b!3617885))

(assert (= (and d!1064537 (not res!1463959)) b!3617884))

(assert (= (and b!3617884 res!1463958) b!3617883))

(declare-fun m!4116769 () Bool)

(assert (=> b!3617883 m!4116769))

(assert (=> b!3617884 m!4116769))

(assert (=> b!3617884 m!4116769))

(declare-fun m!4116771 () Bool)

(assert (=> b!3617884 m!4116771))

(declare-fun m!4116773 () Bool)

(assert (=> d!1064537 m!4116773))

(assert (=> d!1064537 m!4116175))

(declare-fun m!4116775 () Bool)

(assert (=> b!3617887 m!4116775))

(declare-fun m!4116777 () Bool)

(assert (=> b!3617887 m!4116777))

(declare-fun m!4116779 () Bool)

(assert (=> b!3617887 m!4116779))

(assert (=> b!3617417 d!1064537))

(declare-fun d!1064539 () Bool)

(declare-fun e!2239255 () Bool)

(assert (=> d!1064539 e!2239255))

(declare-fun res!1463964 () Bool)

(assert (=> d!1064539 (=> (not res!1463964) (not e!2239255))))

(assert (=> d!1064539 (= res!1463964 (isDefined!6191 (getRuleFromTag!1270 thiss!23823 rules!3307 (tag!6378 (rule!8422 (_1!22122 lt!1248468))))))))

(declare-fun lt!1248639 () Unit!54616)

(declare-fun choose!21206 (LexerInterface!5253 List!38219 List!38218 Token!10694) Unit!54616)

(assert (=> d!1064539 (= lt!1248639 (choose!21206 thiss!23823 rules!3307 lt!1248453 (_1!22122 lt!1248468)))))

(assert (=> d!1064539 (rulesInvariant!4650 thiss!23823 rules!3307)))

(assert (=> d!1064539 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1270 thiss!23823 rules!3307 lt!1248453 (_1!22122 lt!1248468)) lt!1248639)))

(declare-fun b!3617893 () Bool)

(declare-fun res!1463965 () Bool)

(assert (=> b!3617893 (=> (not res!1463965) (not e!2239255))))

(assert (=> b!3617893 (= res!1463965 (matchR!4992 (regex!5664 (get!12401 (getRuleFromTag!1270 thiss!23823 rules!3307 (tag!6378 (rule!8422 (_1!22122 lt!1248468)))))) (list!14056 (charsOf!3678 (_1!22122 lt!1248468)))))))

(declare-fun b!3617894 () Bool)

(assert (=> b!3617894 (= e!2239255 (= (rule!8422 (_1!22122 lt!1248468)) (get!12401 (getRuleFromTag!1270 thiss!23823 rules!3307 (tag!6378 (rule!8422 (_1!22122 lt!1248468)))))))))

(assert (= (and d!1064539 res!1463964) b!3617893))

(assert (= (and b!3617893 res!1463965) b!3617894))

(assert (=> d!1064539 m!4116299))

(assert (=> d!1064539 m!4116299))

(declare-fun m!4116781 () Bool)

(assert (=> d!1064539 m!4116781))

(declare-fun m!4116783 () Bool)

(assert (=> d!1064539 m!4116783))

(assert (=> d!1064539 m!4116175))

(assert (=> b!3617893 m!4116299))

(declare-fun m!4116785 () Bool)

(assert (=> b!3617893 m!4116785))

(assert (=> b!3617893 m!4116253))

(assert (=> b!3617893 m!4116253))

(assert (=> b!3617893 m!4116255))

(assert (=> b!3617893 m!4116299))

(assert (=> b!3617893 m!4116255))

(declare-fun m!4116787 () Bool)

(assert (=> b!3617893 m!4116787))

(assert (=> b!3617894 m!4116299))

(assert (=> b!3617894 m!4116299))

(assert (=> b!3617894 m!4116785))

(assert (=> b!3617417 d!1064539))

(declare-fun b!3617934 () Bool)

(declare-fun e!2239276 () Unit!54616)

(declare-fun Unit!54638 () Unit!54616)

(assert (=> b!3617934 (= e!2239276 Unit!54638)))

(declare-fun b!3617931 () Bool)

(declare-fun res!1463983 () Bool)

(declare-fun e!2239277 () Bool)

(assert (=> b!3617931 (=> (not res!1463983) (not e!2239277))))

(declare-fun lt!1248740 () Token!10694)

(assert (=> b!3617931 (= res!1463983 (matchR!4992 (regex!5664 (get!12401 (getRuleFromTag!1270 thiss!23823 rules!3307 (tag!6378 (rule!8422 lt!1248740))))) (list!14056 (charsOf!3678 lt!1248740))))))

(declare-fun b!3617932 () Bool)

(assert (=> b!3617932 (= e!2239277 (= (rule!8422 lt!1248740) (get!12401 (getRuleFromTag!1270 thiss!23823 rules!3307 (tag!6378 (rule!8422 lt!1248740))))))))

(declare-fun d!1064541 () Bool)

(assert (=> d!1064541 (isDefined!6190 (maxPrefix!2787 thiss!23823 rules!3307 (++!9480 lt!1248444 suffix!1395)))))

(declare-fun lt!1248739 () Unit!54616)

(assert (=> d!1064541 (= lt!1248739 e!2239276)))

(declare-fun c!626032 () Bool)

(assert (=> d!1064541 (= c!626032 (isEmpty!22510 (maxPrefix!2787 thiss!23823 rules!3307 (++!9480 lt!1248444 suffix!1395))))))

(declare-fun lt!1248738 () Unit!54616)

(declare-fun lt!1248742 () Unit!54616)

(assert (=> d!1064541 (= lt!1248738 lt!1248742)))

(assert (=> d!1064541 e!2239277))

(declare-fun res!1463984 () Bool)

(assert (=> d!1064541 (=> (not res!1463984) (not e!2239277))))

(assert (=> d!1064541 (= res!1463984 (isDefined!6191 (getRuleFromTag!1270 thiss!23823 rules!3307 (tag!6378 (rule!8422 lt!1248740)))))))

(assert (=> d!1064541 (= lt!1248742 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1270 thiss!23823 rules!3307 lt!1248444 lt!1248740))))

(declare-fun lt!1248741 () Unit!54616)

(declare-fun lt!1248749 () Unit!54616)

(assert (=> d!1064541 (= lt!1248741 lt!1248749)))

(declare-fun lt!1248744 () List!38218)

(assert (=> d!1064541 (isPrefix!3027 lt!1248744 (++!9480 lt!1248444 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!458 (List!38218 List!38218 List!38218) Unit!54616)

(assert (=> d!1064541 (= lt!1248749 (lemmaPrefixStaysPrefixWhenAddingToSuffix!458 lt!1248744 lt!1248444 suffix!1395))))

(assert (=> d!1064541 (= lt!1248744 (list!14056 (charsOf!3678 lt!1248740)))))

(declare-fun lt!1248735 () Unit!54616)

(declare-fun lt!1248748 () Unit!54616)

(assert (=> d!1064541 (= lt!1248735 lt!1248748)))

(declare-fun lt!1248747 () List!38218)

(declare-fun lt!1248746 () List!38218)

(assert (=> d!1064541 (isPrefix!3027 lt!1248747 (++!9480 lt!1248747 lt!1248746))))

(assert (=> d!1064541 (= lt!1248748 (lemmaConcatTwoListThenFirstIsPrefix!1948 lt!1248747 lt!1248746))))

(assert (=> d!1064541 (= lt!1248746 (_2!22122 (get!12400 (maxPrefix!2787 thiss!23823 rules!3307 lt!1248444))))))

(assert (=> d!1064541 (= lt!1248747 (list!14056 (charsOf!3678 lt!1248740)))))

(declare-datatypes ((List!38222 0))(
  ( (Nil!38098) (Cons!38098 (h!43518 Token!10694) (t!294013 List!38222)) )
))
(declare-fun head!7632 (List!38222) Token!10694)

(declare-datatypes ((IArray!23235 0))(
  ( (IArray!23236 (innerList!11675 List!38222)) )
))
(declare-datatypes ((Conc!11615 0))(
  ( (Node!11615 (left!29757 Conc!11615) (right!30087 Conc!11615) (csize!23460 Int) (cheight!11826 Int)) (Leaf!18058 (xs!14817 IArray!23235) (csize!23461 Int)) (Empty!11615) )
))
(declare-datatypes ((BalanceConc!22844 0))(
  ( (BalanceConc!22845 (c!626095 Conc!11615)) )
))
(declare-fun list!14060 (BalanceConc!22844) List!38222)

(declare-datatypes ((tuple2!37982 0))(
  ( (tuple2!37983 (_1!22125 BalanceConc!22844) (_2!22125 BalanceConc!22840)) )
))
(declare-fun lex!2490 (LexerInterface!5253 List!38219 BalanceConc!22840) tuple2!37982)

(assert (=> d!1064541 (= lt!1248740 (head!7632 (list!14060 (_1!22125 (lex!2490 thiss!23823 rules!3307 (seqFromList!4217 lt!1248444))))))))

(assert (=> d!1064541 (not (isEmpty!22507 rules!3307))))

(assert (=> d!1064541 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!933 thiss!23823 rules!3307 lt!1248444 suffix!1395) lt!1248739)))

(declare-fun b!3617933 () Bool)

(declare-fun Unit!54639 () Unit!54616)

(assert (=> b!3617933 (= e!2239276 Unit!54639)))

(declare-fun lt!1248733 () List!38218)

(assert (=> b!3617933 (= lt!1248733 (++!9480 lt!1248444 suffix!1395))))

(declare-fun lt!1248736 () Unit!54616)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!494 (LexerInterface!5253 Rule!11128 List!38219 List!38218) Unit!54616)

(assert (=> b!3617933 (= lt!1248736 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!494 thiss!23823 (rule!8422 lt!1248740) rules!3307 lt!1248733))))

(assert (=> b!3617933 (isEmpty!22510 (maxPrefixOneRule!1931 thiss!23823 (rule!8422 lt!1248740) lt!1248733))))

(declare-fun lt!1248743 () Unit!54616)

(assert (=> b!3617933 (= lt!1248743 lt!1248736)))

(declare-fun lt!1248745 () List!38218)

(assert (=> b!3617933 (= lt!1248745 (list!14056 (charsOf!3678 lt!1248740)))))

(declare-fun lt!1248734 () Unit!54616)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!482 (LexerInterface!5253 Rule!11128 List!38218 List!38218) Unit!54616)

(assert (=> b!3617933 (= lt!1248734 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!482 thiss!23823 (rule!8422 lt!1248740) lt!1248745 (++!9480 lt!1248444 suffix!1395)))))

(assert (=> b!3617933 (not (matchR!4992 (regex!5664 (rule!8422 lt!1248740)) lt!1248745))))

(declare-fun lt!1248737 () Unit!54616)

(assert (=> b!3617933 (= lt!1248737 lt!1248734)))

(assert (=> b!3617933 false))

(assert (= (and d!1064541 res!1463984) b!3617931))

(assert (= (and b!3617931 res!1463983) b!3617932))

(assert (= (and d!1064541 c!626032) b!3617933))

(assert (= (and d!1064541 (not c!626032)) b!3617934))

(declare-fun m!4116875 () Bool)

(assert (=> b!3617931 m!4116875))

(declare-fun m!4116877 () Bool)

(assert (=> b!3617931 m!4116877))

(declare-fun m!4116879 () Bool)

(assert (=> b!3617931 m!4116879))

(declare-fun m!4116881 () Bool)

(assert (=> b!3617931 m!4116881))

(declare-fun m!4116883 () Bool)

(assert (=> b!3617931 m!4116883))

(assert (=> b!3617931 m!4116875))

(assert (=> b!3617931 m!4116883))

(assert (=> b!3617931 m!4116879))

(assert (=> b!3617932 m!4116879))

(assert (=> b!3617932 m!4116879))

(assert (=> b!3617932 m!4116881))

(assert (=> d!1064541 m!4116241))

(declare-fun m!4116885 () Bool)

(assert (=> d!1064541 m!4116885))

(assert (=> d!1064541 m!4116319))

(declare-fun m!4116887 () Bool)

(assert (=> d!1064541 m!4116887))

(declare-fun m!4116889 () Bool)

(assert (=> d!1064541 m!4116889))

(declare-fun m!4116891 () Bool)

(assert (=> d!1064541 m!4116891))

(assert (=> d!1064541 m!4116273))

(declare-fun m!4116893 () Bool)

(assert (=> d!1064541 m!4116893))

(assert (=> d!1064541 m!4116241))

(assert (=> d!1064541 m!4116893))

(declare-fun m!4116895 () Bool)

(assert (=> d!1064541 m!4116895))

(declare-fun m!4116897 () Bool)

(assert (=> d!1064541 m!4116897))

(assert (=> d!1064541 m!4116883))

(assert (=> d!1064541 m!4116875))

(declare-fun m!4116899 () Bool)

(assert (=> d!1064541 m!4116899))

(declare-fun m!4116901 () Bool)

(assert (=> d!1064541 m!4116901))

(assert (=> d!1064541 m!4116879))

(declare-fun m!4116903 () Bool)

(assert (=> d!1064541 m!4116903))

(assert (=> d!1064541 m!4116319))

(assert (=> d!1064541 m!4116899))

(declare-fun m!4116905 () Bool)

(assert (=> d!1064541 m!4116905))

(assert (=> d!1064541 m!4116889))

(declare-fun m!4116907 () Bool)

(assert (=> d!1064541 m!4116907))

(assert (=> d!1064541 m!4116879))

(declare-fun m!4116909 () Bool)

(assert (=> d!1064541 m!4116909))

(assert (=> d!1064541 m!4116319))

(assert (=> d!1064541 m!4116889))

(assert (=> d!1064541 m!4116287))

(assert (=> d!1064541 m!4116287))

(declare-fun m!4116911 () Bool)

(assert (=> d!1064541 m!4116911))

(assert (=> d!1064541 m!4116883))

(declare-fun m!4116913 () Bool)

(assert (=> b!3617933 m!4116913))

(declare-fun m!4116915 () Bool)

(assert (=> b!3617933 m!4116915))

(assert (=> b!3617933 m!4116913))

(declare-fun m!4116917 () Bool)

(assert (=> b!3617933 m!4116917))

(assert (=> b!3617933 m!4116883))

(assert (=> b!3617933 m!4116875))

(declare-fun m!4116919 () Bool)

(assert (=> b!3617933 m!4116919))

(assert (=> b!3617933 m!4116883))

(assert (=> b!3617933 m!4116319))

(assert (=> b!3617933 m!4116319))

(declare-fun m!4116921 () Bool)

(assert (=> b!3617933 m!4116921))

(assert (=> b!3617417 d!1064541))

(declare-fun b!3617945 () Bool)

(declare-fun res!1463990 () Bool)

(declare-fun e!2239282 () Bool)

(assert (=> b!3617945 (=> (not res!1463990) (not e!2239282))))

(declare-fun lt!1248752 () List!38218)

(assert (=> b!3617945 (= res!1463990 (= (size!29058 lt!1248752) (+ (size!29058 lt!1248444) (size!29058 suffix!1395))))))

(declare-fun d!1064569 () Bool)

(assert (=> d!1064569 e!2239282))

(declare-fun res!1463989 () Bool)

(assert (=> d!1064569 (=> (not res!1463989) (not e!2239282))))

(assert (=> d!1064569 (= res!1463989 (= (content!5451 lt!1248752) ((_ map or) (content!5451 lt!1248444) (content!5451 suffix!1395))))))

(declare-fun e!2239283 () List!38218)

(assert (=> d!1064569 (= lt!1248752 e!2239283)))

(declare-fun c!626035 () Bool)

(assert (=> d!1064569 (= c!626035 ((_ is Nil!38094) lt!1248444))))

(assert (=> d!1064569 (= (++!9480 lt!1248444 suffix!1395) lt!1248752)))

(declare-fun b!3617943 () Bool)

(assert (=> b!3617943 (= e!2239283 suffix!1395)))

(declare-fun b!3617946 () Bool)

(assert (=> b!3617946 (= e!2239282 (or (not (= suffix!1395 Nil!38094)) (= lt!1248752 lt!1248444)))))

(declare-fun b!3617944 () Bool)

(assert (=> b!3617944 (= e!2239283 (Cons!38094 (h!43514 lt!1248444) (++!9480 (t!293869 lt!1248444) suffix!1395)))))

(assert (= (and d!1064569 c!626035) b!3617943))

(assert (= (and d!1064569 (not c!626035)) b!3617944))

(assert (= (and d!1064569 res!1463989) b!3617945))

(assert (= (and b!3617945 res!1463990) b!3617946))

(declare-fun m!4116923 () Bool)

(assert (=> b!3617945 m!4116923))

(assert (=> b!3617945 m!4116291))

(declare-fun m!4116925 () Bool)

(assert (=> b!3617945 m!4116925))

(declare-fun m!4116927 () Bool)

(assert (=> d!1064569 m!4116927))

(declare-fun m!4116929 () Bool)

(assert (=> d!1064569 m!4116929))

(declare-fun m!4116931 () Bool)

(assert (=> d!1064569 m!4116931))

(declare-fun m!4116933 () Bool)

(assert (=> b!3617944 m!4116933))

(assert (=> b!3617417 d!1064569))

(declare-fun d!1064571 () Bool)

(assert (=> d!1064571 (= (get!12400 lt!1248466) (v!37715 lt!1248466))))

(assert (=> b!3617417 d!1064571))

(declare-fun b!3617950 () Bool)

(declare-fun e!2239284 () Bool)

(assert (=> b!3617950 (= e!2239284 (>= (size!29058 (++!9480 lt!1248446 (_2!22122 lt!1248468))) (size!29058 lt!1248446)))))

(declare-fun b!3617947 () Bool)

(declare-fun e!2239285 () Bool)

(declare-fun e!2239286 () Bool)

(assert (=> b!3617947 (= e!2239285 e!2239286)))

(declare-fun res!1463993 () Bool)

(assert (=> b!3617947 (=> (not res!1463993) (not e!2239286))))

(assert (=> b!3617947 (= res!1463993 (not ((_ is Nil!38094) (++!9480 lt!1248446 (_2!22122 lt!1248468)))))))

(declare-fun d!1064573 () Bool)

(assert (=> d!1064573 e!2239284))

(declare-fun res!1463992 () Bool)

(assert (=> d!1064573 (=> res!1463992 e!2239284)))

(declare-fun lt!1248753 () Bool)

(assert (=> d!1064573 (= res!1463992 (not lt!1248753))))

(assert (=> d!1064573 (= lt!1248753 e!2239285)))

(declare-fun res!1463994 () Bool)

(assert (=> d!1064573 (=> res!1463994 e!2239285)))

(assert (=> d!1064573 (= res!1463994 ((_ is Nil!38094) lt!1248446))))

(assert (=> d!1064573 (= (isPrefix!3027 lt!1248446 (++!9480 lt!1248446 (_2!22122 lt!1248468))) lt!1248753)))

(declare-fun b!3617948 () Bool)

(declare-fun res!1463991 () Bool)

(assert (=> b!3617948 (=> (not res!1463991) (not e!2239286))))

(assert (=> b!3617948 (= res!1463991 (= (head!7630 lt!1248446) (head!7630 (++!9480 lt!1248446 (_2!22122 lt!1248468)))))))

(declare-fun b!3617949 () Bool)

(assert (=> b!3617949 (= e!2239286 (isPrefix!3027 (tail!5605 lt!1248446) (tail!5605 (++!9480 lt!1248446 (_2!22122 lt!1248468)))))))

(assert (= (and d!1064573 (not res!1463994)) b!3617947))

(assert (= (and b!3617947 res!1463993) b!3617948))

(assert (= (and b!3617948 res!1463991) b!3617949))

(assert (= (and d!1064573 (not res!1463992)) b!3617950))

(assert (=> b!3617950 m!4116305))

(declare-fun m!4116935 () Bool)

(assert (=> b!3617950 m!4116935))

(assert (=> b!3617950 m!4116227))

(assert (=> b!3617948 m!4116281))

(assert (=> b!3617948 m!4116305))

(declare-fun m!4116937 () Bool)

(assert (=> b!3617948 m!4116937))

(assert (=> b!3617949 m!4116645))

(assert (=> b!3617949 m!4116305))

(declare-fun m!4116939 () Bool)

(assert (=> b!3617949 m!4116939))

(assert (=> b!3617949 m!4116645))

(assert (=> b!3617949 m!4116939))

(declare-fun m!4116941 () Bool)

(assert (=> b!3617949 m!4116941))

(assert (=> b!3617417 d!1064573))

(declare-fun d!1064575 () Bool)

(assert (=> d!1064575 (= (list!14056 lt!1248441) (list!14058 (c!625919 lt!1248441)))))

(declare-fun bs!571086 () Bool)

(assert (= bs!571086 d!1064575))

(declare-fun m!4116943 () Bool)

(assert (=> bs!571086 m!4116943))

(assert (=> b!3617417 d!1064575))

(declare-fun b!3617954 () Bool)

(declare-fun e!2239287 () Bool)

(assert (=> b!3617954 (= e!2239287 (>= (size!29058 lt!1248453) (size!29058 lt!1248444)))))

(declare-fun b!3617951 () Bool)

(declare-fun e!2239288 () Bool)

(declare-fun e!2239289 () Bool)

(assert (=> b!3617951 (= e!2239288 e!2239289)))

(declare-fun res!1463997 () Bool)

(assert (=> b!3617951 (=> (not res!1463997) (not e!2239289))))

(assert (=> b!3617951 (= res!1463997 (not ((_ is Nil!38094) lt!1248453)))))

(declare-fun d!1064577 () Bool)

(assert (=> d!1064577 e!2239287))

(declare-fun res!1463996 () Bool)

(assert (=> d!1064577 (=> res!1463996 e!2239287)))

(declare-fun lt!1248754 () Bool)

(assert (=> d!1064577 (= res!1463996 (not lt!1248754))))

(assert (=> d!1064577 (= lt!1248754 e!2239288)))

(declare-fun res!1463998 () Bool)

(assert (=> d!1064577 (=> res!1463998 e!2239288)))

(assert (=> d!1064577 (= res!1463998 ((_ is Nil!38094) lt!1248444))))

(assert (=> d!1064577 (= (isPrefix!3027 lt!1248444 lt!1248453) lt!1248754)))

(declare-fun b!3617952 () Bool)

(declare-fun res!1463995 () Bool)

(assert (=> b!3617952 (=> (not res!1463995) (not e!2239289))))

(assert (=> b!3617952 (= res!1463995 (= (head!7630 lt!1248444) (head!7630 lt!1248453)))))

(declare-fun b!3617953 () Bool)

(assert (=> b!3617953 (= e!2239289 (isPrefix!3027 (tail!5605 lt!1248444) (tail!5605 lt!1248453)))))

(assert (= (and d!1064577 (not res!1463998)) b!3617951))

(assert (= (and b!3617951 res!1463997) b!3617952))

(assert (= (and b!3617952 res!1463995) b!3617953))

(assert (= (and d!1064577 (not res!1463996)) b!3617954))

(assert (=> b!3617954 m!4116295))

(assert (=> b!3617954 m!4116291))

(assert (=> b!3617952 m!4116563))

(assert (=> b!3617952 m!4116681))

(assert (=> b!3617953 m!4116567))

(assert (=> b!3617953 m!4116683))

(assert (=> b!3617953 m!4116567))

(assert (=> b!3617953 m!4116683))

(declare-fun m!4116945 () Bool)

(assert (=> b!3617953 m!4116945))

(assert (=> b!3617417 d!1064577))

(declare-fun b!3617957 () Bool)

(declare-fun res!1464000 () Bool)

(declare-fun e!2239290 () Bool)

(assert (=> b!3617957 (=> (not res!1464000) (not e!2239290))))

(declare-fun lt!1248755 () List!38218)

(assert (=> b!3617957 (= res!1464000 (= (size!29058 lt!1248755) (+ (size!29058 lt!1248446) (size!29058 (_2!22122 lt!1248468)))))))

(declare-fun d!1064579 () Bool)

(assert (=> d!1064579 e!2239290))

(declare-fun res!1463999 () Bool)

(assert (=> d!1064579 (=> (not res!1463999) (not e!2239290))))

(assert (=> d!1064579 (= res!1463999 (= (content!5451 lt!1248755) ((_ map or) (content!5451 lt!1248446) (content!5451 (_2!22122 lt!1248468)))))))

(declare-fun e!2239291 () List!38218)

(assert (=> d!1064579 (= lt!1248755 e!2239291)))

(declare-fun c!626036 () Bool)

(assert (=> d!1064579 (= c!626036 ((_ is Nil!38094) lt!1248446))))

(assert (=> d!1064579 (= (++!9480 lt!1248446 (_2!22122 lt!1248468)) lt!1248755)))

(declare-fun b!3617955 () Bool)

(assert (=> b!3617955 (= e!2239291 (_2!22122 lt!1248468))))

(declare-fun b!3617958 () Bool)

(assert (=> b!3617958 (= e!2239290 (or (not (= (_2!22122 lt!1248468) Nil!38094)) (= lt!1248755 lt!1248446)))))

(declare-fun b!3617956 () Bool)

(assert (=> b!3617956 (= e!2239291 (Cons!38094 (h!43514 lt!1248446) (++!9480 (t!293869 lt!1248446) (_2!22122 lt!1248468))))))

(assert (= (and d!1064579 c!626036) b!3617955))

(assert (= (and d!1064579 (not c!626036)) b!3617956))

(assert (= (and d!1064579 res!1463999) b!3617957))

(assert (= (and b!3617957 res!1464000) b!3617958))

(declare-fun m!4116947 () Bool)

(assert (=> b!3617957 m!4116947))

(assert (=> b!3617957 m!4116227))

(declare-fun m!4116949 () Bool)

(assert (=> b!3617957 m!4116949))

(declare-fun m!4116951 () Bool)

(assert (=> d!1064579 m!4116951))

(declare-fun m!4116953 () Bool)

(assert (=> d!1064579 m!4116953))

(declare-fun m!4116955 () Bool)

(assert (=> d!1064579 m!4116955))

(declare-fun m!4116957 () Bool)

(assert (=> b!3617956 m!4116957))

(assert (=> b!3617417 d!1064579))

(declare-fun d!1064581 () Bool)

(assert (=> d!1064581 (isPrefix!3027 lt!1248446 (++!9480 lt!1248446 (_2!22122 lt!1248468)))))

(declare-fun lt!1248758 () Unit!54616)

(declare-fun choose!21207 (List!38218 List!38218) Unit!54616)

(assert (=> d!1064581 (= lt!1248758 (choose!21207 lt!1248446 (_2!22122 lt!1248468)))))

(assert (=> d!1064581 (= (lemmaConcatTwoListThenFirstIsPrefix!1948 lt!1248446 (_2!22122 lt!1248468)) lt!1248758)))

(declare-fun bs!571087 () Bool)

(assert (= bs!571087 d!1064581))

(assert (=> bs!571087 m!4116305))

(assert (=> bs!571087 m!4116305))

(assert (=> bs!571087 m!4116307))

(declare-fun m!4116959 () Bool)

(assert (=> bs!571087 m!4116959))

(assert (=> b!3617417 d!1064581))

(declare-fun d!1064583 () Bool)

(assert (=> d!1064583 (= (isDefined!6191 lt!1248445) (not (isEmpty!22511 lt!1248445)))))

(declare-fun bs!571088 () Bool)

(assert (= bs!571088 d!1064583))

(declare-fun m!4116961 () Bool)

(assert (=> bs!571088 m!4116961))

(assert (=> b!3617417 d!1064583))

(declare-fun d!1064585 () Bool)

(assert (=> d!1064585 (isPrefix!3027 lt!1248444 (++!9480 lt!1248444 suffix!1395))))

(declare-fun lt!1248759 () Unit!54616)

(assert (=> d!1064585 (= lt!1248759 (choose!21207 lt!1248444 suffix!1395))))

(assert (=> d!1064585 (= (lemmaConcatTwoListThenFirstIsPrefix!1948 lt!1248444 suffix!1395) lt!1248759)))

(declare-fun bs!571089 () Bool)

(assert (= bs!571089 d!1064585))

(assert (=> bs!571089 m!4116319))

(assert (=> bs!571089 m!4116319))

(declare-fun m!4116963 () Bool)

(assert (=> bs!571089 m!4116963))

(declare-fun m!4116965 () Bool)

(assert (=> bs!571089 m!4116965))

(assert (=> b!3617417 d!1064585))

(declare-fun d!1064587 () Bool)

(assert (=> d!1064587 (= (_2!22122 lt!1248468) lt!1248460)))

(declare-fun lt!1248762 () Unit!54616)

(declare-fun choose!21208 (List!38218 List!38218 List!38218 List!38218 List!38218) Unit!54616)

(assert (=> d!1064587 (= lt!1248762 (choose!21208 lt!1248446 (_2!22122 lt!1248468) lt!1248446 lt!1248460 lt!1248453))))

(assert (=> d!1064587 (isPrefix!3027 lt!1248446 lt!1248453)))

(assert (=> d!1064587 (= (lemmaSamePrefixThenSameSuffix!1382 lt!1248446 (_2!22122 lt!1248468) lt!1248446 lt!1248460 lt!1248453) lt!1248762)))

(declare-fun bs!571090 () Bool)

(assert (= bs!571090 d!1064587))

(declare-fun m!4116967 () Bool)

(assert (=> bs!571090 m!4116967))

(assert (=> bs!571090 m!4116311))

(assert (=> b!3617379 d!1064587))

(declare-fun d!1064589 () Bool)

(declare-fun lt!1248765 () Int)

(assert (=> d!1064589 (>= lt!1248765 0)))

(declare-fun e!2239294 () Int)

(assert (=> d!1064589 (= lt!1248765 e!2239294)))

(declare-fun c!626039 () Bool)

(assert (=> d!1064589 (= c!626039 ((_ is Nil!38094) lt!1248446))))

(assert (=> d!1064589 (= (size!29058 lt!1248446) lt!1248765)))

(declare-fun b!3617963 () Bool)

(assert (=> b!3617963 (= e!2239294 0)))

(declare-fun b!3617964 () Bool)

(assert (=> b!3617964 (= e!2239294 (+ 1 (size!29058 (t!293869 lt!1248446))))))

(assert (= (and d!1064589 c!626039) b!3617963))

(assert (= (and d!1064589 (not c!626039)) b!3617964))

(declare-fun m!4116969 () Bool)

(assert (=> b!3617964 m!4116969))

(assert (=> b!3617379 d!1064589))

(declare-fun b!3617983 () Bool)

(declare-fun res!1464018 () Bool)

(declare-fun e!2239304 () Bool)

(assert (=> b!3617983 (=> (not res!1464018) (not e!2239304))))

(declare-fun lt!1248780 () Option!7958)

(assert (=> b!3617983 (= res!1464018 (= (rule!8422 (_1!22122 (get!12400 lt!1248780))) (rule!8422 (_1!22122 lt!1248468))))))

(declare-fun b!3617984 () Bool)

(assert (=> b!3617984 (= e!2239304 (= (size!29057 (_1!22122 (get!12400 lt!1248780))) (size!29058 (originalCharacters!6378 (_1!22122 (get!12400 lt!1248780))))))))

(declare-fun b!3617985 () Bool)

(declare-fun res!1464016 () Bool)

(assert (=> b!3617985 (=> (not res!1464016) (not e!2239304))))

(assert (=> b!3617985 (= res!1464016 (< (size!29058 (_2!22122 (get!12400 lt!1248780))) (size!29058 lt!1248453)))))

(declare-fun b!3617986 () Bool)

(declare-fun res!1464021 () Bool)

(assert (=> b!3617986 (=> (not res!1464021) (not e!2239304))))

(assert (=> b!3617986 (= res!1464021 (= (++!9480 (list!14056 (charsOf!3678 (_1!22122 (get!12400 lt!1248780)))) (_2!22122 (get!12400 lt!1248780))) lt!1248453))))

(declare-fun b!3617987 () Bool)

(declare-fun e!2239305 () Option!7958)

(assert (=> b!3617987 (= e!2239305 None!7957)))

(declare-fun d!1064591 () Bool)

(declare-fun e!2239306 () Bool)

(assert (=> d!1064591 e!2239306))

(declare-fun res!1464020 () Bool)

(assert (=> d!1064591 (=> res!1464020 e!2239306)))

(assert (=> d!1064591 (= res!1464020 (isEmpty!22510 lt!1248780))))

(assert (=> d!1064591 (= lt!1248780 e!2239305)))

(declare-fun c!626042 () Bool)

(declare-datatypes ((tuple2!37984 0))(
  ( (tuple2!37985 (_1!22126 List!38218) (_2!22126 List!38218)) )
))
(declare-fun lt!1248776 () tuple2!37984)

(assert (=> d!1064591 (= c!626042 (isEmpty!22506 (_1!22126 lt!1248776)))))

(declare-fun findLongestMatch!928 (Regex!10423 List!38218) tuple2!37984)

(assert (=> d!1064591 (= lt!1248776 (findLongestMatch!928 (regex!5664 (rule!8422 (_1!22122 lt!1248468))) lt!1248453))))

(assert (=> d!1064591 (ruleValid!1929 thiss!23823 (rule!8422 (_1!22122 lt!1248468)))))

(assert (=> d!1064591 (= (maxPrefixOneRule!1931 thiss!23823 (rule!8422 (_1!22122 lt!1248468)) lt!1248453) lt!1248780)))

(declare-fun b!3617988 () Bool)

(assert (=> b!3617988 (= e!2239305 (Some!7957 (tuple2!37977 (Token!10695 (apply!9170 (transformation!5664 (rule!8422 (_1!22122 lt!1248468))) (seqFromList!4217 (_1!22126 lt!1248776))) (rule!8422 (_1!22122 lt!1248468)) (size!29059 (seqFromList!4217 (_1!22126 lt!1248776))) (_1!22126 lt!1248776)) (_2!22126 lt!1248776))))))

(declare-fun lt!1248779 () Unit!54616)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!986 (Regex!10423 List!38218) Unit!54616)

(assert (=> b!3617988 (= lt!1248779 (longestMatchIsAcceptedByMatchOrIsEmpty!986 (regex!5664 (rule!8422 (_1!22122 lt!1248468))) lt!1248453))))

(declare-fun res!1464017 () Bool)

(declare-fun findLongestMatchInner!1013 (Regex!10423 List!38218 Int List!38218 List!38218 Int) tuple2!37984)

(assert (=> b!3617988 (= res!1464017 (isEmpty!22506 (_1!22126 (findLongestMatchInner!1013 (regex!5664 (rule!8422 (_1!22122 lt!1248468))) Nil!38094 (size!29058 Nil!38094) lt!1248453 lt!1248453 (size!29058 lt!1248453)))))))

(declare-fun e!2239303 () Bool)

(assert (=> b!3617988 (=> res!1464017 e!2239303)))

(assert (=> b!3617988 e!2239303))

(declare-fun lt!1248778 () Unit!54616)

(assert (=> b!3617988 (= lt!1248778 lt!1248779)))

(declare-fun lt!1248777 () Unit!54616)

(assert (=> b!3617988 (= lt!1248777 (lemmaSemiInverse!1421 (transformation!5664 (rule!8422 (_1!22122 lt!1248468))) (seqFromList!4217 (_1!22126 lt!1248776))))))

(declare-fun b!3617989 () Bool)

(declare-fun res!1464019 () Bool)

(assert (=> b!3617989 (=> (not res!1464019) (not e!2239304))))

(assert (=> b!3617989 (= res!1464019 (= (value!181884 (_1!22122 (get!12400 lt!1248780))) (apply!9170 (transformation!5664 (rule!8422 (_1!22122 (get!12400 lt!1248780)))) (seqFromList!4217 (originalCharacters!6378 (_1!22122 (get!12400 lt!1248780)))))))))

(declare-fun b!3617990 () Bool)

(assert (=> b!3617990 (= e!2239303 (matchR!4992 (regex!5664 (rule!8422 (_1!22122 lt!1248468))) (_1!22126 (findLongestMatchInner!1013 (regex!5664 (rule!8422 (_1!22122 lt!1248468))) Nil!38094 (size!29058 Nil!38094) lt!1248453 lt!1248453 (size!29058 lt!1248453)))))))

(declare-fun b!3617991 () Bool)

(assert (=> b!3617991 (= e!2239306 e!2239304)))

(declare-fun res!1464015 () Bool)

(assert (=> b!3617991 (=> (not res!1464015) (not e!2239304))))

(assert (=> b!3617991 (= res!1464015 (matchR!4992 (regex!5664 (rule!8422 (_1!22122 lt!1248468))) (list!14056 (charsOf!3678 (_1!22122 (get!12400 lt!1248780))))))))

(assert (= (and d!1064591 c!626042) b!3617987))

(assert (= (and d!1064591 (not c!626042)) b!3617988))

(assert (= (and b!3617988 (not res!1464017)) b!3617990))

(assert (= (and d!1064591 (not res!1464020)) b!3617991))

(assert (= (and b!3617991 res!1464015) b!3617986))

(assert (= (and b!3617986 res!1464021) b!3617985))

(assert (= (and b!3617985 res!1464016) b!3617983))

(assert (= (and b!3617983 res!1464018) b!3617989))

(assert (= (and b!3617989 res!1464019) b!3617984))

(declare-fun m!4116971 () Bool)

(assert (=> b!3617983 m!4116971))

(assert (=> b!3617985 m!4116971))

(declare-fun m!4116973 () Bool)

(assert (=> b!3617985 m!4116973))

(assert (=> b!3617985 m!4116295))

(assert (=> b!3617986 m!4116971))

(declare-fun m!4116975 () Bool)

(assert (=> b!3617986 m!4116975))

(assert (=> b!3617986 m!4116975))

(declare-fun m!4116977 () Bool)

(assert (=> b!3617986 m!4116977))

(assert (=> b!3617986 m!4116977))

(declare-fun m!4116979 () Bool)

(assert (=> b!3617986 m!4116979))

(assert (=> b!3617984 m!4116971))

(declare-fun m!4116981 () Bool)

(assert (=> b!3617984 m!4116981))

(declare-fun m!4116983 () Bool)

(assert (=> b!3617990 m!4116983))

(assert (=> b!3617990 m!4116295))

(assert (=> b!3617990 m!4116983))

(assert (=> b!3617990 m!4116295))

(declare-fun m!4116985 () Bool)

(assert (=> b!3617990 m!4116985))

(declare-fun m!4116987 () Bool)

(assert (=> b!3617990 m!4116987))

(assert (=> b!3617991 m!4116971))

(assert (=> b!3617991 m!4116975))

(assert (=> b!3617991 m!4116975))

(assert (=> b!3617991 m!4116977))

(assert (=> b!3617991 m!4116977))

(declare-fun m!4116989 () Bool)

(assert (=> b!3617991 m!4116989))

(declare-fun m!4116991 () Bool)

(assert (=> d!1064591 m!4116991))

(declare-fun m!4116993 () Bool)

(assert (=> d!1064591 m!4116993))

(declare-fun m!4116995 () Bool)

(assert (=> d!1064591 m!4116995))

(declare-fun m!4116997 () Bool)

(assert (=> d!1064591 m!4116997))

(assert (=> b!3617989 m!4116971))

(declare-fun m!4116999 () Bool)

(assert (=> b!3617989 m!4116999))

(assert (=> b!3617989 m!4116999))

(declare-fun m!4117001 () Bool)

(assert (=> b!3617989 m!4117001))

(declare-fun m!4117003 () Bool)

(assert (=> b!3617988 m!4117003))

(assert (=> b!3617988 m!4116983))

(assert (=> b!3617988 m!4116295))

(assert (=> b!3617988 m!4116985))

(assert (=> b!3617988 m!4117003))

(declare-fun m!4117005 () Bool)

(assert (=> b!3617988 m!4117005))

(assert (=> b!3617988 m!4116295))

(assert (=> b!3617988 m!4117003))

(declare-fun m!4117007 () Bool)

(assert (=> b!3617988 m!4117007))

(assert (=> b!3617988 m!4117003))

(declare-fun m!4117009 () Bool)

(assert (=> b!3617988 m!4117009))

(assert (=> b!3617988 m!4116983))

(declare-fun m!4117011 () Bool)

(assert (=> b!3617988 m!4117011))

(declare-fun m!4117013 () Bool)

(assert (=> b!3617988 m!4117013))

(assert (=> b!3617379 d!1064591))

(declare-fun d!1064593 () Bool)

(declare-fun dynLambda!16489 (Int BalanceConc!22840) TokenValue!5894)

(assert (=> d!1064593 (= (apply!9170 (transformation!5664 (rule!8422 (_1!22122 lt!1248468))) (seqFromList!4217 lt!1248446)) (dynLambda!16489 (toValue!7948 (transformation!5664 (rule!8422 (_1!22122 lt!1248468)))) (seqFromList!4217 lt!1248446)))))

(declare-fun b_lambda!107005 () Bool)

(assert (=> (not b_lambda!107005) (not d!1064593)))

(declare-fun tb!207457 () Bool)

(declare-fun t!293912 () Bool)

(assert (=> (and b!3617374 (= (toValue!7948 (transformation!5664 (rule!8422 token!511))) (toValue!7948 (transformation!5664 (rule!8422 (_1!22122 lt!1248468))))) t!293912) tb!207457))

(declare-fun result!252804 () Bool)

(assert (=> tb!207457 (= result!252804 (inv!21 (dynLambda!16489 (toValue!7948 (transformation!5664 (rule!8422 (_1!22122 lt!1248468)))) (seqFromList!4217 lt!1248446))))))

(declare-fun m!4117015 () Bool)

(assert (=> tb!207457 m!4117015))

(assert (=> d!1064593 t!293912))

(declare-fun b_and!264291 () Bool)

(assert (= b_and!264235 (and (=> t!293912 result!252804) b_and!264291)))

(declare-fun t!293914 () Bool)

(declare-fun tb!207459 () Bool)

(assert (=> (and b!3617388 (= (toValue!7948 (transformation!5664 anOtherTypeRule!33)) (toValue!7948 (transformation!5664 (rule!8422 (_1!22122 lt!1248468))))) t!293914) tb!207459))

(declare-fun result!252808 () Bool)

(assert (= result!252808 result!252804))

(assert (=> d!1064593 t!293914))

(declare-fun b_and!264293 () Bool)

(assert (= b_and!264239 (and (=> t!293914 result!252808) b_and!264293)))

(declare-fun t!293916 () Bool)

(declare-fun tb!207461 () Bool)

(assert (=> (and b!3617390 (= (toValue!7948 (transformation!5664 (h!43515 rules!3307))) (toValue!7948 (transformation!5664 (rule!8422 (_1!22122 lt!1248468))))) t!293916) tb!207461))

(declare-fun result!252810 () Bool)

(assert (= result!252810 result!252804))

(assert (=> d!1064593 t!293916))

(declare-fun b_and!264295 () Bool)

(assert (= b_and!264243 (and (=> t!293916 result!252810) b_and!264295)))

(declare-fun tb!207463 () Bool)

(declare-fun t!293918 () Bool)

(assert (=> (and b!3617411 (= (toValue!7948 (transformation!5664 rule!403)) (toValue!7948 (transformation!5664 (rule!8422 (_1!22122 lt!1248468))))) t!293918) tb!207463))

(declare-fun result!252812 () Bool)

(assert (= result!252812 result!252804))

(assert (=> d!1064593 t!293918))

(declare-fun b_and!264297 () Bool)

(assert (= b_and!264247 (and (=> t!293918 result!252812) b_and!264297)))

(assert (=> d!1064593 m!4116221))

(declare-fun m!4117017 () Bool)

(assert (=> d!1064593 m!4117017))

(assert (=> b!3617379 d!1064593))

(declare-fun d!1064595 () Bool)

(declare-fun fromListB!1945 (List!38218) BalanceConc!22840)

(assert (=> d!1064595 (= (seqFromList!4217 lt!1248446) (fromListB!1945 lt!1248446))))

(declare-fun bs!571091 () Bool)

(assert (= bs!571091 d!1064595))

(declare-fun m!4117019 () Bool)

(assert (=> bs!571091 m!4117019))

(assert (=> b!3617379 d!1064595))

(declare-fun d!1064597 () Bool)

(declare-fun lt!1248783 () List!38218)

(assert (=> d!1064597 (= (++!9480 lt!1248446 lt!1248783) lt!1248453)))

(declare-fun e!2239312 () List!38218)

(assert (=> d!1064597 (= lt!1248783 e!2239312)))

(declare-fun c!626045 () Bool)

(assert (=> d!1064597 (= c!626045 ((_ is Cons!38094) lt!1248446))))

(assert (=> d!1064597 (>= (size!29058 lt!1248453) (size!29058 lt!1248446))))

(assert (=> d!1064597 (= (getSuffix!1602 lt!1248453 lt!1248446) lt!1248783)))

(declare-fun b!3617998 () Bool)

(assert (=> b!3617998 (= e!2239312 (getSuffix!1602 (tail!5605 lt!1248453) (t!293869 lt!1248446)))))

(declare-fun b!3617999 () Bool)

(assert (=> b!3617999 (= e!2239312 lt!1248453)))

(assert (= (and d!1064597 c!626045) b!3617998))

(assert (= (and d!1064597 (not c!626045)) b!3617999))

(declare-fun m!4117021 () Bool)

(assert (=> d!1064597 m!4117021))

(assert (=> d!1064597 m!4116295))

(assert (=> d!1064597 m!4116227))

(assert (=> b!3617998 m!4116683))

(assert (=> b!3617998 m!4116683))

(declare-fun m!4117023 () Bool)

(assert (=> b!3617998 m!4117023))

(assert (=> b!3617379 d!1064597))

(declare-fun d!1064599 () Bool)

(assert (=> d!1064599 (= (maxPrefixOneRule!1931 thiss!23823 (rule!8422 (_1!22122 lt!1248468)) lt!1248453) (Some!7957 (tuple2!37977 (Token!10695 (apply!9170 (transformation!5664 (rule!8422 (_1!22122 lt!1248468))) (seqFromList!4217 lt!1248446)) (rule!8422 (_1!22122 lt!1248468)) (size!29058 lt!1248446) lt!1248446) (_2!22122 lt!1248468))))))

(declare-fun lt!1248786 () Unit!54616)

(declare-fun choose!21210 (LexerInterface!5253 List!38219 List!38218 List!38218 List!38218 Rule!11128) Unit!54616)

(assert (=> d!1064599 (= lt!1248786 (choose!21210 thiss!23823 rules!3307 lt!1248446 lt!1248453 (_2!22122 lt!1248468) (rule!8422 (_1!22122 lt!1248468))))))

(assert (=> d!1064599 (not (isEmpty!22507 rules!3307))))

(assert (=> d!1064599 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1003 thiss!23823 rules!3307 lt!1248446 lt!1248453 (_2!22122 lt!1248468) (rule!8422 (_1!22122 lt!1248468))) lt!1248786)))

(declare-fun bs!571092 () Bool)

(assert (= bs!571092 d!1064599))

(assert (=> bs!571092 m!4116221))

(assert (=> bs!571092 m!4116227))

(assert (=> bs!571092 m!4116233))

(assert (=> bs!571092 m!4116221))

(assert (=> bs!571092 m!4116231))

(assert (=> bs!571092 m!4116273))

(declare-fun m!4117025 () Bool)

(assert (=> bs!571092 m!4117025))

(assert (=> b!3617379 d!1064599))

(declare-fun d!1064601 () Bool)

(assert (=> d!1064601 (not (contains!7391 (usedCharacters!878 (regex!5664 (rule!8422 (_1!22122 lt!1248468)))) lt!1248470))))

(declare-fun lt!1248789 () Unit!54616)

(declare-fun choose!21211 (LexerInterface!5253 List!38219 List!38219 Rule!11128 Rule!11128 C!21032) Unit!54616)

(assert (=> d!1064601 (= lt!1248789 (choose!21211 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8422 (_1!22122 lt!1248468)) lt!1248470))))

(assert (=> d!1064601 (rulesInvariant!4650 thiss!23823 rules!3307)))

(assert (=> d!1064601 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!252 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8422 (_1!22122 lt!1248468)) lt!1248470) lt!1248789)))

(declare-fun bs!571093 () Bool)

(assert (= bs!571093 d!1064601))

(assert (=> bs!571093 m!4116207))

(assert (=> bs!571093 m!4116207))

(assert (=> bs!571093 m!4116551))

(declare-fun m!4117027 () Bool)

(assert (=> bs!571093 m!4117027))

(assert (=> bs!571093 m!4116175))

(assert (=> b!3617380 d!1064601))

(declare-fun d!1064603 () Bool)

(declare-fun lt!1248790 () Bool)

(assert (=> d!1064603 (= lt!1248790 (select (content!5451 lt!1248436) lt!1248470))))

(declare-fun e!2239313 () Bool)

(assert (=> d!1064603 (= lt!1248790 e!2239313)))

(declare-fun res!1464023 () Bool)

(assert (=> d!1064603 (=> (not res!1464023) (not e!2239313))))

(assert (=> d!1064603 (= res!1464023 ((_ is Cons!38094) lt!1248436))))

(assert (=> d!1064603 (= (contains!7391 lt!1248436 lt!1248470) lt!1248790)))

(declare-fun b!3618000 () Bool)

(declare-fun e!2239314 () Bool)

(assert (=> b!3618000 (= e!2239313 e!2239314)))

(declare-fun res!1464022 () Bool)

(assert (=> b!3618000 (=> res!1464022 e!2239314)))

(assert (=> b!3618000 (= res!1464022 (= (h!43514 lt!1248436) lt!1248470))))

(declare-fun b!3618001 () Bool)

(assert (=> b!3618001 (= e!2239314 (contains!7391 (t!293869 lt!1248436) lt!1248470))))

(assert (= (and d!1064603 res!1464023) b!3618000))

(assert (= (and b!3618000 (not res!1464022)) b!3618001))

(declare-fun m!4117029 () Bool)

(assert (=> d!1064603 m!4117029))

(declare-fun m!4117031 () Bool)

(assert (=> d!1064603 m!4117031))

(declare-fun m!4117033 () Bool)

(assert (=> b!3618001 m!4117033))

(assert (=> b!3617397 d!1064603))

(declare-fun d!1064605 () Bool)

(assert (=> d!1064605 (= (head!7630 suffix!1395) (h!43514 suffix!1395))))

(assert (=> b!3617397 d!1064605))

(declare-fun d!1064607 () Bool)

(declare-fun c!626047 () Bool)

(assert (=> d!1064607 (= c!626047 (or ((_ is EmptyExpr!10423) (regex!5664 rule!403)) ((_ is EmptyLang!10423) (regex!5664 rule!403))))))

(declare-fun e!2239315 () List!38218)

(assert (=> d!1064607 (= (usedCharacters!878 (regex!5664 rule!403)) e!2239315)))

(declare-fun b!3618002 () Bool)

(assert (=> b!3618002 (= e!2239315 Nil!38094)))

(declare-fun b!3618003 () Bool)

(declare-fun c!626050 () Bool)

(assert (=> b!3618003 (= c!626050 ((_ is Star!10423) (regex!5664 rule!403)))))

(declare-fun e!2239317 () List!38218)

(declare-fun e!2239318 () List!38218)

(assert (=> b!3618003 (= e!2239317 e!2239318)))

(declare-fun b!3618004 () Bool)

(assert (=> b!3618004 (= e!2239315 e!2239317)))

(declare-fun c!626048 () Bool)

(assert (=> b!3618004 (= c!626048 ((_ is ElementMatch!10423) (regex!5664 rule!403)))))

(declare-fun call!261717 () List!38218)

(declare-fun bm!261710 () Bool)

(declare-fun c!626049 () Bool)

(declare-fun call!261715 () List!38218)

(declare-fun call!261718 () List!38218)

(assert (=> bm!261710 (= call!261717 (++!9480 (ite c!626049 call!261715 call!261718) (ite c!626049 call!261718 call!261715)))))

(declare-fun bm!261711 () Bool)

(assert (=> bm!261711 (= call!261715 (usedCharacters!878 (ite c!626049 (regOne!21359 (regex!5664 rule!403)) (regTwo!21358 (regex!5664 rule!403)))))))

(declare-fun b!3618005 () Bool)

(declare-fun e!2239316 () List!38218)

(assert (=> b!3618005 (= e!2239316 call!261717)))

(declare-fun b!3618006 () Bool)

(assert (=> b!3618006 (= e!2239316 call!261717)))

(declare-fun call!261716 () List!38218)

(declare-fun bm!261712 () Bool)

(assert (=> bm!261712 (= call!261716 (usedCharacters!878 (ite c!626050 (reg!10752 (regex!5664 rule!403)) (ite c!626049 (regTwo!21359 (regex!5664 rule!403)) (regOne!21358 (regex!5664 rule!403))))))))

(declare-fun bm!261713 () Bool)

(assert (=> bm!261713 (= call!261718 call!261716)))

(declare-fun b!3618007 () Bool)

(assert (=> b!3618007 (= e!2239318 e!2239316)))

(assert (=> b!3618007 (= c!626049 ((_ is Union!10423) (regex!5664 rule!403)))))

(declare-fun b!3618008 () Bool)

(assert (=> b!3618008 (= e!2239317 (Cons!38094 (c!625918 (regex!5664 rule!403)) Nil!38094))))

(declare-fun b!3618009 () Bool)

(assert (=> b!3618009 (= e!2239318 call!261716)))

(assert (= (and d!1064607 c!626047) b!3618002))

(assert (= (and d!1064607 (not c!626047)) b!3618004))

(assert (= (and b!3618004 c!626048) b!3618008))

(assert (= (and b!3618004 (not c!626048)) b!3618003))

(assert (= (and b!3618003 c!626050) b!3618009))

(assert (= (and b!3618003 (not c!626050)) b!3618007))

(assert (= (and b!3618007 c!626049) b!3618005))

(assert (= (and b!3618007 (not c!626049)) b!3618006))

(assert (= (or b!3618005 b!3618006) bm!261711))

(assert (= (or b!3618005 b!3618006) bm!261713))

(assert (= (or b!3618005 b!3618006) bm!261710))

(assert (= (or b!3618009 bm!261713) bm!261712))

(declare-fun m!4117035 () Bool)

(assert (=> bm!261710 m!4117035))

(declare-fun m!4117037 () Bool)

(assert (=> bm!261711 m!4117037))

(declare-fun m!4117039 () Bool)

(assert (=> bm!261712 m!4117039))

(assert (=> b!3617397 d!1064607))

(declare-fun d!1064609 () Bool)

(assert (=> d!1064609 (not (contains!7391 (usedCharacters!878 (regex!5664 (rule!8422 (_1!22122 lt!1248468)))) lt!1248471))))

(declare-fun lt!1248791 () Unit!54616)

(assert (=> d!1064609 (= lt!1248791 (choose!21211 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8422 (_1!22122 lt!1248468)) lt!1248471))))

(assert (=> d!1064609 (rulesInvariant!4650 thiss!23823 rules!3307)))

(assert (=> d!1064609 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!252 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8422 (_1!22122 lt!1248468)) lt!1248471) lt!1248791)))

(declare-fun bs!571094 () Bool)

(assert (= bs!571094 d!1064609))

(assert (=> bs!571094 m!4116207))

(assert (=> bs!571094 m!4116207))

(assert (=> bs!571094 m!4116673))

(declare-fun m!4117041 () Bool)

(assert (=> bs!571094 m!4117041))

(assert (=> bs!571094 m!4116175))

(assert (=> b!3617398 d!1064609))

(declare-fun d!1064611 () Bool)

(declare-fun res!1464028 () Bool)

(declare-fun e!2239321 () Bool)

(assert (=> d!1064611 (=> (not res!1464028) (not e!2239321))))

(assert (=> d!1064611 (= res!1464028 (not (isEmpty!22506 (originalCharacters!6378 token!511))))))

(assert (=> d!1064611 (= (inv!51482 token!511) e!2239321)))

(declare-fun b!3618014 () Bool)

(declare-fun res!1464029 () Bool)

(assert (=> b!3618014 (=> (not res!1464029) (not e!2239321))))

(assert (=> b!3618014 (= res!1464029 (= (originalCharacters!6378 token!511) (list!14056 (dynLambda!16483 (toChars!7807 (transformation!5664 (rule!8422 token!511))) (value!181884 token!511)))))))

(declare-fun b!3618015 () Bool)

(assert (=> b!3618015 (= e!2239321 (= (size!29057 token!511) (size!29058 (originalCharacters!6378 token!511))))))

(assert (= (and d!1064611 res!1464028) b!3618014))

(assert (= (and b!3618014 res!1464029) b!3618015))

(declare-fun b_lambda!107007 () Bool)

(assert (=> (not b_lambda!107007) (not b!3618014)))

(declare-fun t!293920 () Bool)

(declare-fun tb!207465 () Bool)

(assert (=> (and b!3617374 (= (toChars!7807 (transformation!5664 (rule!8422 token!511))) (toChars!7807 (transformation!5664 (rule!8422 token!511)))) t!293920) tb!207465))

(declare-fun b!3618016 () Bool)

(declare-fun e!2239322 () Bool)

(declare-fun tp!1105254 () Bool)

(assert (=> b!3618016 (= e!2239322 (and (inv!51483 (c!625919 (dynLambda!16483 (toChars!7807 (transformation!5664 (rule!8422 token!511))) (value!181884 token!511)))) tp!1105254))))

(declare-fun result!252814 () Bool)

(assert (=> tb!207465 (= result!252814 (and (inv!51484 (dynLambda!16483 (toChars!7807 (transformation!5664 (rule!8422 token!511))) (value!181884 token!511))) e!2239322))))

(assert (= tb!207465 b!3618016))

(declare-fun m!4117043 () Bool)

(assert (=> b!3618016 m!4117043))

(declare-fun m!4117045 () Bool)

(assert (=> tb!207465 m!4117045))

(assert (=> b!3618014 t!293920))

(declare-fun b_and!264299 () Bool)

(assert (= b_and!264259 (and (=> t!293920 result!252814) b_and!264299)))

(declare-fun tb!207467 () Bool)

(declare-fun t!293922 () Bool)

(assert (=> (and b!3617388 (= (toChars!7807 (transformation!5664 anOtherTypeRule!33)) (toChars!7807 (transformation!5664 (rule!8422 token!511)))) t!293922) tb!207467))

(declare-fun result!252816 () Bool)

(assert (= result!252816 result!252814))

(assert (=> b!3618014 t!293922))

(declare-fun b_and!264301 () Bool)

(assert (= b_and!264261 (and (=> t!293922 result!252816) b_and!264301)))

(declare-fun tb!207469 () Bool)

(declare-fun t!293924 () Bool)

(assert (=> (and b!3617390 (= (toChars!7807 (transformation!5664 (h!43515 rules!3307))) (toChars!7807 (transformation!5664 (rule!8422 token!511)))) t!293924) tb!207469))

(declare-fun result!252818 () Bool)

(assert (= result!252818 result!252814))

(assert (=> b!3618014 t!293924))

(declare-fun b_and!264303 () Bool)

(assert (= b_and!264263 (and (=> t!293924 result!252818) b_and!264303)))

(declare-fun tb!207471 () Bool)

(declare-fun t!293926 () Bool)

(assert (=> (and b!3617411 (= (toChars!7807 (transformation!5664 rule!403)) (toChars!7807 (transformation!5664 (rule!8422 token!511)))) t!293926) tb!207471))

(declare-fun result!252820 () Bool)

(assert (= result!252820 result!252814))

(assert (=> b!3618014 t!293926))

(declare-fun b_and!264305 () Bool)

(assert (= b_and!264265 (and (=> t!293926 result!252820) b_and!264305)))

(declare-fun m!4117047 () Bool)

(assert (=> d!1064611 m!4117047))

(declare-fun m!4117049 () Bool)

(assert (=> b!3618014 m!4117049))

(assert (=> b!3618014 m!4117049))

(declare-fun m!4117051 () Bool)

(assert (=> b!3618014 m!4117051))

(declare-fun m!4117053 () Bool)

(assert (=> b!3618015 m!4117053))

(assert (=> start!336850 d!1064611))

(declare-fun d!1064613 () Bool)

(declare-fun lt!1248792 () List!38218)

(assert (=> d!1064613 (= (++!9480 lt!1248444 lt!1248792) lt!1248444)))

(declare-fun e!2239323 () List!38218)

(assert (=> d!1064613 (= lt!1248792 e!2239323)))

(declare-fun c!626051 () Bool)

(assert (=> d!1064613 (= c!626051 ((_ is Cons!38094) lt!1248444))))

(assert (=> d!1064613 (>= (size!29058 lt!1248444) (size!29058 lt!1248444))))

(assert (=> d!1064613 (= (getSuffix!1602 lt!1248444 lt!1248444) lt!1248792)))

(declare-fun b!3618017 () Bool)

(assert (=> b!3618017 (= e!2239323 (getSuffix!1602 (tail!5605 lt!1248444) (t!293869 lt!1248444)))))

(declare-fun b!3618018 () Bool)

(assert (=> b!3618018 (= e!2239323 lt!1248444)))

(assert (= (and d!1064613 c!626051) b!3618017))

(assert (= (and d!1064613 (not c!626051)) b!3618018))

(declare-fun m!4117055 () Bool)

(assert (=> d!1064613 m!4117055))

(assert (=> d!1064613 m!4116291))

(assert (=> d!1064613 m!4116291))

(assert (=> b!3618017 m!4116567))

(assert (=> b!3618017 m!4116567))

(declare-fun m!4117057 () Bool)

(assert (=> b!3618017 m!4117057))

(assert (=> b!3617376 d!1064613))

(declare-fun b!3618019 () Bool)

(declare-fun e!2239329 () Bool)

(declare-fun e!2239325 () Bool)

(assert (=> b!3618019 (= e!2239329 e!2239325)))

(declare-fun res!1464031 () Bool)

(assert (=> b!3618019 (=> (not res!1464031) (not e!2239325))))

(declare-fun lt!1248793 () Bool)

(assert (=> b!3618019 (= res!1464031 (not lt!1248793))))

(declare-fun b!3618020 () Bool)

(declare-fun e!2239328 () Bool)

(assert (=> b!3618020 (= e!2239325 e!2239328)))

(declare-fun res!1464036 () Bool)

(assert (=> b!3618020 (=> res!1464036 e!2239328)))

(declare-fun call!261719 () Bool)

(assert (=> b!3618020 (= res!1464036 call!261719)))

(declare-fun b!3618021 () Bool)

(declare-fun res!1464035 () Bool)

(declare-fun e!2239326 () Bool)

(assert (=> b!3618021 (=> (not res!1464035) (not e!2239326))))

(assert (=> b!3618021 (= res!1464035 (not call!261719))))

(declare-fun d!1064615 () Bool)

(declare-fun e!2239327 () Bool)

(assert (=> d!1064615 e!2239327))

(declare-fun c!626053 () Bool)

(assert (=> d!1064615 (= c!626053 ((_ is EmptyExpr!10423) (regex!5664 (rule!8422 (_1!22122 lt!1248468)))))))

(declare-fun e!2239330 () Bool)

(assert (=> d!1064615 (= lt!1248793 e!2239330)))

(declare-fun c!626052 () Bool)

(assert (=> d!1064615 (= c!626052 (isEmpty!22506 lt!1248444))))

(assert (=> d!1064615 (validRegex!4769 (regex!5664 (rule!8422 (_1!22122 lt!1248468))))))

(assert (=> d!1064615 (= (matchR!4992 (regex!5664 (rule!8422 (_1!22122 lt!1248468))) lt!1248444) lt!1248793)))

(declare-fun bm!261714 () Bool)

(assert (=> bm!261714 (= call!261719 (isEmpty!22506 lt!1248444))))

(declare-fun b!3618022 () Bool)

(assert (=> b!3618022 (= e!2239330 (matchR!4992 (derivativeStep!3156 (regex!5664 (rule!8422 (_1!22122 lt!1248468))) (head!7630 lt!1248444)) (tail!5605 lt!1248444)))))

(declare-fun b!3618023 () Bool)

(assert (=> b!3618023 (= e!2239330 (nullable!3607 (regex!5664 (rule!8422 (_1!22122 lt!1248468)))))))

(declare-fun b!3618024 () Bool)

(declare-fun res!1464032 () Bool)

(assert (=> b!3618024 (=> res!1464032 e!2239329)))

(assert (=> b!3618024 (= res!1464032 e!2239326)))

(declare-fun res!1464033 () Bool)

(assert (=> b!3618024 (=> (not res!1464033) (not e!2239326))))

(assert (=> b!3618024 (= res!1464033 lt!1248793)))

(declare-fun b!3618025 () Bool)

(declare-fun res!1464037 () Bool)

(assert (=> b!3618025 (=> (not res!1464037) (not e!2239326))))

(assert (=> b!3618025 (= res!1464037 (isEmpty!22506 (tail!5605 lt!1248444)))))

(declare-fun b!3618026 () Bool)

(assert (=> b!3618026 (= e!2239328 (not (= (head!7630 lt!1248444) (c!625918 (regex!5664 (rule!8422 (_1!22122 lt!1248468)))))))))

(declare-fun b!3618027 () Bool)

(declare-fun res!1464034 () Bool)

(assert (=> b!3618027 (=> res!1464034 e!2239328)))

(assert (=> b!3618027 (= res!1464034 (not (isEmpty!22506 (tail!5605 lt!1248444))))))

(declare-fun b!3618028 () Bool)

(declare-fun res!1464030 () Bool)

(assert (=> b!3618028 (=> res!1464030 e!2239329)))

(assert (=> b!3618028 (= res!1464030 (not ((_ is ElementMatch!10423) (regex!5664 (rule!8422 (_1!22122 lt!1248468))))))))

(declare-fun e!2239324 () Bool)

(assert (=> b!3618028 (= e!2239324 e!2239329)))

(declare-fun b!3618029 () Bool)

(assert (=> b!3618029 (= e!2239327 e!2239324)))

(declare-fun c!626054 () Bool)

(assert (=> b!3618029 (= c!626054 ((_ is EmptyLang!10423) (regex!5664 (rule!8422 (_1!22122 lt!1248468)))))))

(declare-fun b!3618030 () Bool)

(assert (=> b!3618030 (= e!2239327 (= lt!1248793 call!261719))))

(declare-fun b!3618031 () Bool)

(assert (=> b!3618031 (= e!2239326 (= (head!7630 lt!1248444) (c!625918 (regex!5664 (rule!8422 (_1!22122 lt!1248468))))))))

(declare-fun b!3618032 () Bool)

(assert (=> b!3618032 (= e!2239324 (not lt!1248793))))

(assert (= (and d!1064615 c!626052) b!3618023))

(assert (= (and d!1064615 (not c!626052)) b!3618022))

(assert (= (and d!1064615 c!626053) b!3618030))

(assert (= (and d!1064615 (not c!626053)) b!3618029))

(assert (= (and b!3618029 c!626054) b!3618032))

(assert (= (and b!3618029 (not c!626054)) b!3618028))

(assert (= (and b!3618028 (not res!1464030)) b!3618024))

(assert (= (and b!3618024 res!1464033) b!3618021))

(assert (= (and b!3618021 res!1464035) b!3618025))

(assert (= (and b!3618025 res!1464037) b!3618031))

(assert (= (and b!3618024 (not res!1464032)) b!3618019))

(assert (= (and b!3618019 res!1464031) b!3618020))

(assert (= (and b!3618020 (not res!1464036)) b!3618027))

(assert (= (and b!3618027 (not res!1464034)) b!3618026))

(assert (= (or b!3618030 b!3618020 b!3618021) bm!261714))

(assert (=> d!1064615 m!4116561))

(assert (=> d!1064615 m!4116609))

(assert (=> bm!261714 m!4116561))

(assert (=> b!3618026 m!4116563))

(assert (=> b!3618023 m!4116643))

(assert (=> b!3618025 m!4116567))

(assert (=> b!3618025 m!4116567))

(assert (=> b!3618025 m!4116569))

(assert (=> b!3618031 m!4116563))

(assert (=> b!3618027 m!4116567))

(assert (=> b!3618027 m!4116567))

(assert (=> b!3618027 m!4116569))

(assert (=> b!3618022 m!4116563))

(assert (=> b!3618022 m!4116563))

(declare-fun m!4117059 () Bool)

(assert (=> b!3618022 m!4117059))

(assert (=> b!3618022 m!4116567))

(assert (=> b!3618022 m!4117059))

(assert (=> b!3618022 m!4116567))

(declare-fun m!4117061 () Bool)

(assert (=> b!3618022 m!4117061))

(assert (=> b!3617376 d!1064615))

(declare-fun d!1064617 () Bool)

(assert (=> d!1064617 (isEmpty!22506 (getSuffix!1602 lt!1248444 lt!1248444))))

(declare-fun lt!1248796 () Unit!54616)

(declare-fun choose!21213 (List!38218) Unit!54616)

(assert (=> d!1064617 (= lt!1248796 (choose!21213 lt!1248444))))

(assert (=> d!1064617 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!158 lt!1248444) lt!1248796)))

(declare-fun bs!571095 () Bool)

(assert (= bs!571095 d!1064617))

(assert (=> bs!571095 m!4116201))

(assert (=> bs!571095 m!4116201))

(assert (=> bs!571095 m!4116205))

(declare-fun m!4117063 () Bool)

(assert (=> bs!571095 m!4117063))

(assert (=> b!3617376 d!1064617))

(declare-fun d!1064619 () Bool)

(assert (=> d!1064619 (= (isEmpty!22506 (getSuffix!1602 lt!1248444 lt!1248444)) ((_ is Nil!38094) (getSuffix!1602 lt!1248444 lt!1248444)))))

(assert (=> b!3617376 d!1064619))

(declare-fun d!1064621 () Bool)

(assert (=> d!1064621 (not (matchR!4992 (regex!5664 (rule!8422 (_1!22122 lt!1248468))) lt!1248444))))

(declare-fun lt!1248799 () Unit!54616)

(declare-fun choose!21214 (LexerInterface!5253 List!38219 Rule!11128 List!38218 List!38218 Rule!11128) Unit!54616)

(assert (=> d!1064621 (= lt!1248799 (choose!21214 thiss!23823 rules!3307 rule!403 lt!1248444 lt!1248444 (rule!8422 (_1!22122 lt!1248468))))))

(assert (=> d!1064621 (isPrefix!3027 lt!1248444 lt!1248444)))

(assert (=> d!1064621 (= (lemmaMaxPrefNoSmallerRuleMatches!198 thiss!23823 rules!3307 rule!403 lt!1248444 lt!1248444 (rule!8422 (_1!22122 lt!1248468))) lt!1248799)))

(declare-fun bs!571096 () Bool)

(assert (= bs!571096 d!1064621))

(assert (=> bs!571096 m!4116203))

(declare-fun m!4117065 () Bool)

(assert (=> bs!571096 m!4117065))

(declare-fun m!4117067 () Bool)

(assert (=> bs!571096 m!4117067))

(assert (=> b!3617376 d!1064621))

(declare-fun d!1064623 () Bool)

(assert (=> d!1064623 (contains!7391 lt!1248446 (head!7630 suffix!1395))))

(declare-fun lt!1248802 () Unit!54616)

(declare-fun choose!21215 (List!38218 List!38218 List!38218 List!38218) Unit!54616)

(assert (=> d!1064623 (= lt!1248802 (choose!21215 lt!1248444 suffix!1395 lt!1248446 lt!1248453))))

(assert (=> d!1064623 (isPrefix!3027 lt!1248446 lt!1248453)))

(assert (=> d!1064623 (= (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!42 lt!1248444 suffix!1395 lt!1248446 lt!1248453) lt!1248802)))

(declare-fun bs!571097 () Bool)

(assert (= bs!571097 d!1064623))

(assert (=> bs!571097 m!4116353))

(assert (=> bs!571097 m!4116353))

(declare-fun m!4117069 () Bool)

(assert (=> bs!571097 m!4117069))

(declare-fun m!4117071 () Bool)

(assert (=> bs!571097 m!4117071))

(assert (=> bs!571097 m!4116311))

(assert (=> b!3617393 d!1064623))

(declare-fun d!1064625 () Bool)

(declare-fun lt!1248803 () Bool)

(assert (=> d!1064625 (= lt!1248803 (select (content!5451 lt!1248446) lt!1248470))))

(declare-fun e!2239331 () Bool)

(assert (=> d!1064625 (= lt!1248803 e!2239331)))

(declare-fun res!1464039 () Bool)

(assert (=> d!1064625 (=> (not res!1464039) (not e!2239331))))

(assert (=> d!1064625 (= res!1464039 ((_ is Cons!38094) lt!1248446))))

(assert (=> d!1064625 (= (contains!7391 lt!1248446 lt!1248470) lt!1248803)))

(declare-fun b!3618033 () Bool)

(declare-fun e!2239332 () Bool)

(assert (=> b!3618033 (= e!2239331 e!2239332)))

(declare-fun res!1464038 () Bool)

(assert (=> b!3618033 (=> res!1464038 e!2239332)))

(assert (=> b!3618033 (= res!1464038 (= (h!43514 lt!1248446) lt!1248470))))

(declare-fun b!3618034 () Bool)

(assert (=> b!3618034 (= e!2239332 (contains!7391 (t!293869 lt!1248446) lt!1248470))))

(assert (= (and d!1064625 res!1464039) b!3618033))

(assert (= (and b!3618033 (not res!1464038)) b!3618034))

(assert (=> d!1064625 m!4116953))

(declare-fun m!4117073 () Bool)

(assert (=> d!1064625 m!4117073))

(declare-fun m!4117075 () Bool)

(assert (=> b!3618034 m!4117075))

(assert (=> b!3617393 d!1064625))

(declare-fun d!1064627 () Bool)

(assert (=> d!1064627 (= (inv!51478 (tag!6378 rule!403)) (= (mod (str.len (value!181883 (tag!6378 rule!403))) 2) 0))))

(assert (=> b!3617415 d!1064627))

(declare-fun d!1064629 () Bool)

(declare-fun res!1464040 () Bool)

(declare-fun e!2239333 () Bool)

(assert (=> d!1064629 (=> (not res!1464040) (not e!2239333))))

(assert (=> d!1064629 (= res!1464040 (semiInverseModEq!2405 (toChars!7807 (transformation!5664 rule!403)) (toValue!7948 (transformation!5664 rule!403))))))

(assert (=> d!1064629 (= (inv!51481 (transformation!5664 rule!403)) e!2239333)))

(declare-fun b!3618035 () Bool)

(assert (=> b!3618035 (= e!2239333 (equivClasses!2304 (toChars!7807 (transformation!5664 rule!403)) (toValue!7948 (transformation!5664 rule!403))))))

(assert (= (and d!1064629 res!1464040) b!3618035))

(declare-fun m!4117077 () Bool)

(assert (=> d!1064629 m!4117077))

(declare-fun m!4117079 () Bool)

(assert (=> b!3618035 m!4117079))

(assert (=> b!3617415 d!1064629))

(declare-fun d!1064631 () Bool)

(declare-fun lt!1248806 () Int)

(assert (=> d!1064631 (= lt!1248806 (size!29058 (list!14056 lt!1248437)))))

(declare-fun size!29061 (Conc!11613) Int)

(assert (=> d!1064631 (= lt!1248806 (size!29061 (c!625919 lt!1248437)))))

(assert (=> d!1064631 (= (size!29059 lt!1248437) lt!1248806)))

(declare-fun bs!571098 () Bool)

(assert (= bs!571098 d!1064631))

(assert (=> bs!571098 m!4116243))

(assert (=> bs!571098 m!4116243))

(declare-fun m!4117081 () Bool)

(assert (=> bs!571098 m!4117081))

(declare-fun m!4117083 () Bool)

(assert (=> bs!571098 m!4117083))

(assert (=> b!3617377 d!1064631))

(declare-fun d!1064633 () Bool)

(declare-fun lt!1248807 () Int)

(assert (=> d!1064633 (>= lt!1248807 0)))

(declare-fun e!2239334 () Int)

(assert (=> d!1064633 (= lt!1248807 e!2239334)))

(declare-fun c!626055 () Bool)

(assert (=> d!1064633 (= c!626055 ((_ is Nil!38094) lt!1248453))))

(assert (=> d!1064633 (= (size!29058 lt!1248453) lt!1248807)))

(declare-fun b!3618036 () Bool)

(assert (=> b!3618036 (= e!2239334 0)))

(declare-fun b!3618037 () Bool)

(assert (=> b!3618037 (= e!2239334 (+ 1 (size!29058 (t!293869 lt!1248453))))))

(assert (= (and d!1064633 c!626055) b!3618036))

(assert (= (and d!1064633 (not c!626055)) b!3618037))

(declare-fun m!4117085 () Bool)

(assert (=> b!3618037 m!4117085))

(assert (=> b!3617377 d!1064633))

(declare-fun d!1064635 () Bool)

(declare-fun lt!1248808 () Int)

(assert (=> d!1064635 (>= lt!1248808 0)))

(declare-fun e!2239335 () Int)

(assert (=> d!1064635 (= lt!1248808 e!2239335)))

(declare-fun c!626056 () Bool)

(assert (=> d!1064635 (= c!626056 ((_ is Nil!38094) lt!1248444))))

(assert (=> d!1064635 (= (size!29058 lt!1248444) lt!1248808)))

(declare-fun b!3618038 () Bool)

(assert (=> b!3618038 (= e!2239335 0)))

(declare-fun b!3618039 () Bool)

(assert (=> b!3618039 (= e!2239335 (+ 1 (size!29058 (t!293869 lt!1248444))))))

(assert (= (and d!1064635 c!626056) b!3618038))

(assert (= (and d!1064635 (not c!626056)) b!3618039))

(declare-fun m!4117087 () Bool)

(assert (=> b!3618039 m!4117087))

(assert (=> b!3617377 d!1064635))

(declare-fun d!1064637 () Bool)

(assert (=> d!1064637 (= (seqFromList!4217 lt!1248444) (fromListB!1945 lt!1248444))))

(declare-fun bs!571099 () Bool)

(assert (= bs!571099 d!1064637))

(declare-fun m!4117089 () Bool)

(assert (=> bs!571099 m!4117089))

(assert (=> b!3617377 d!1064637))

(declare-fun d!1064639 () Bool)

(declare-fun lt!1248809 () Bool)

(assert (=> d!1064639 (= lt!1248809 (select (content!5451 lt!1248436) lt!1248471))))

(declare-fun e!2239336 () Bool)

(assert (=> d!1064639 (= lt!1248809 e!2239336)))

(declare-fun res!1464042 () Bool)

(assert (=> d!1064639 (=> (not res!1464042) (not e!2239336))))

(assert (=> d!1064639 (= res!1464042 ((_ is Cons!38094) lt!1248436))))

(assert (=> d!1064639 (= (contains!7391 lt!1248436 lt!1248471) lt!1248809)))

(declare-fun b!3618040 () Bool)

(declare-fun e!2239337 () Bool)

(assert (=> b!3618040 (= e!2239336 e!2239337)))

(declare-fun res!1464041 () Bool)

(assert (=> b!3618040 (=> res!1464041 e!2239337)))

(assert (=> b!3618040 (= res!1464041 (= (h!43514 lt!1248436) lt!1248471))))

(declare-fun b!3618041 () Bool)

(assert (=> b!3618041 (= e!2239337 (contains!7391 (t!293869 lt!1248436) lt!1248471))))

(assert (= (and d!1064639 res!1464042) b!3618040))

(assert (= (and b!3618040 (not res!1464041)) b!3618041))

(assert (=> d!1064639 m!4117029))

(declare-fun m!4117091 () Bool)

(assert (=> d!1064639 m!4117091))

(declare-fun m!4117093 () Bool)

(assert (=> b!3618041 m!4117093))

(assert (=> b!3617377 d!1064639))

(declare-fun d!1064641 () Bool)

(assert (=> d!1064641 (= (maxPrefixOneRule!1931 thiss!23823 rule!403 lt!1248453) (Some!7957 (tuple2!37977 (Token!10695 (apply!9170 (transformation!5664 rule!403) (seqFromList!4217 lt!1248444)) rule!403 (size!29058 lt!1248444) lt!1248444) lt!1248463)))))

(declare-fun lt!1248810 () Unit!54616)

(assert (=> d!1064641 (= lt!1248810 (choose!21210 thiss!23823 rules!3307 lt!1248444 lt!1248453 lt!1248463 rule!403))))

(assert (=> d!1064641 (not (isEmpty!22507 rules!3307))))

(assert (=> d!1064641 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1003 thiss!23823 rules!3307 lt!1248444 lt!1248453 lt!1248463 rule!403) lt!1248810)))

(declare-fun bs!571100 () Bool)

(assert (= bs!571100 d!1064641))

(assert (=> bs!571100 m!4116287))

(assert (=> bs!571100 m!4116291))

(assert (=> bs!571100 m!4116285))

(assert (=> bs!571100 m!4116287))

(assert (=> bs!571100 m!4116289))

(assert (=> bs!571100 m!4116273))

(declare-fun m!4117095 () Bool)

(assert (=> bs!571100 m!4117095))

(assert (=> b!3617377 d!1064641))

(declare-fun d!1064643 () Bool)

(assert (=> d!1064643 (= (apply!9170 (transformation!5664 rule!403) (seqFromList!4217 lt!1248444)) (dynLambda!16489 (toValue!7948 (transformation!5664 rule!403)) (seqFromList!4217 lt!1248444)))))

(declare-fun b_lambda!107009 () Bool)

(assert (=> (not b_lambda!107009) (not d!1064643)))

(declare-fun t!293928 () Bool)

(declare-fun tb!207473 () Bool)

(assert (=> (and b!3617374 (= (toValue!7948 (transformation!5664 (rule!8422 token!511))) (toValue!7948 (transformation!5664 rule!403))) t!293928) tb!207473))

(declare-fun result!252822 () Bool)

(assert (=> tb!207473 (= result!252822 (inv!21 (dynLambda!16489 (toValue!7948 (transformation!5664 rule!403)) (seqFromList!4217 lt!1248444))))))

(declare-fun m!4117097 () Bool)

(assert (=> tb!207473 m!4117097))

(assert (=> d!1064643 t!293928))

(declare-fun b_and!264307 () Bool)

(assert (= b_and!264291 (and (=> t!293928 result!252822) b_and!264307)))

(declare-fun t!293930 () Bool)

(declare-fun tb!207475 () Bool)

(assert (=> (and b!3617388 (= (toValue!7948 (transformation!5664 anOtherTypeRule!33)) (toValue!7948 (transformation!5664 rule!403))) t!293930) tb!207475))

(declare-fun result!252824 () Bool)

(assert (= result!252824 result!252822))

(assert (=> d!1064643 t!293930))

(declare-fun b_and!264309 () Bool)

(assert (= b_and!264293 (and (=> t!293930 result!252824) b_and!264309)))

(declare-fun t!293932 () Bool)

(declare-fun tb!207477 () Bool)

(assert (=> (and b!3617390 (= (toValue!7948 (transformation!5664 (h!43515 rules!3307))) (toValue!7948 (transformation!5664 rule!403))) t!293932) tb!207477))

(declare-fun result!252826 () Bool)

(assert (= result!252826 result!252822))

(assert (=> d!1064643 t!293932))

(declare-fun b_and!264311 () Bool)

(assert (= b_and!264295 (and (=> t!293932 result!252826) b_and!264311)))

(declare-fun t!293934 () Bool)

(declare-fun tb!207479 () Bool)

(assert (=> (and b!3617411 (= (toValue!7948 (transformation!5664 rule!403)) (toValue!7948 (transformation!5664 rule!403))) t!293934) tb!207479))

(declare-fun result!252828 () Bool)

(assert (= result!252828 result!252822))

(assert (=> d!1064643 t!293934))

(declare-fun b_and!264313 () Bool)

(assert (= b_and!264297 (and (=> t!293934 result!252828) b_and!264313)))

(assert (=> d!1064643 m!4116287))

(declare-fun m!4117099 () Bool)

(assert (=> d!1064643 m!4117099))

(assert (=> b!3617377 d!1064643))

(declare-fun d!1064645 () Bool)

(assert (=> d!1064645 (= lt!1248446 lt!1248444)))

(declare-fun lt!1248813 () Unit!54616)

(declare-fun choose!21217 (List!38218 List!38218 List!38218) Unit!54616)

(assert (=> d!1064645 (= lt!1248813 (choose!21217 lt!1248446 lt!1248444 lt!1248453))))

(assert (=> d!1064645 (isPrefix!3027 lt!1248446 lt!1248453)))

(assert (=> d!1064645 (= (lemmaIsPrefixSameLengthThenSameList!601 lt!1248446 lt!1248444 lt!1248453) lt!1248813)))

(declare-fun bs!571101 () Bool)

(assert (= bs!571101 d!1064645))

(declare-fun m!4117101 () Bool)

(assert (=> bs!571101 m!4117101))

(assert (=> bs!571101 m!4116311))

(assert (=> b!3617377 d!1064645))

(declare-fun b!3618042 () Bool)

(declare-fun res!1464046 () Bool)

(declare-fun e!2239340 () Bool)

(assert (=> b!3618042 (=> (not res!1464046) (not e!2239340))))

(declare-fun lt!1248818 () Option!7958)

(assert (=> b!3618042 (= res!1464046 (= (rule!8422 (_1!22122 (get!12400 lt!1248818))) rule!403))))

(declare-fun b!3618043 () Bool)

(assert (=> b!3618043 (= e!2239340 (= (size!29057 (_1!22122 (get!12400 lt!1248818))) (size!29058 (originalCharacters!6378 (_1!22122 (get!12400 lt!1248818))))))))

(declare-fun b!3618044 () Bool)

(declare-fun res!1464044 () Bool)

(assert (=> b!3618044 (=> (not res!1464044) (not e!2239340))))

(assert (=> b!3618044 (= res!1464044 (< (size!29058 (_2!22122 (get!12400 lt!1248818))) (size!29058 lt!1248453)))))

(declare-fun b!3618045 () Bool)

(declare-fun res!1464049 () Bool)

(assert (=> b!3618045 (=> (not res!1464049) (not e!2239340))))

(assert (=> b!3618045 (= res!1464049 (= (++!9480 (list!14056 (charsOf!3678 (_1!22122 (get!12400 lt!1248818)))) (_2!22122 (get!12400 lt!1248818))) lt!1248453))))

(declare-fun b!3618046 () Bool)

(declare-fun e!2239341 () Option!7958)

(assert (=> b!3618046 (= e!2239341 None!7957)))

(declare-fun d!1064647 () Bool)

(declare-fun e!2239342 () Bool)

(assert (=> d!1064647 e!2239342))

(declare-fun res!1464048 () Bool)

(assert (=> d!1064647 (=> res!1464048 e!2239342)))

(assert (=> d!1064647 (= res!1464048 (isEmpty!22510 lt!1248818))))

(assert (=> d!1064647 (= lt!1248818 e!2239341)))

(declare-fun c!626057 () Bool)

(declare-fun lt!1248814 () tuple2!37984)

(assert (=> d!1064647 (= c!626057 (isEmpty!22506 (_1!22126 lt!1248814)))))

(assert (=> d!1064647 (= lt!1248814 (findLongestMatch!928 (regex!5664 rule!403) lt!1248453))))

(assert (=> d!1064647 (ruleValid!1929 thiss!23823 rule!403)))

(assert (=> d!1064647 (= (maxPrefixOneRule!1931 thiss!23823 rule!403 lt!1248453) lt!1248818)))

(declare-fun b!3618047 () Bool)

(assert (=> b!3618047 (= e!2239341 (Some!7957 (tuple2!37977 (Token!10695 (apply!9170 (transformation!5664 rule!403) (seqFromList!4217 (_1!22126 lt!1248814))) rule!403 (size!29059 (seqFromList!4217 (_1!22126 lt!1248814))) (_1!22126 lt!1248814)) (_2!22126 lt!1248814))))))

(declare-fun lt!1248817 () Unit!54616)

(assert (=> b!3618047 (= lt!1248817 (longestMatchIsAcceptedByMatchOrIsEmpty!986 (regex!5664 rule!403) lt!1248453))))

(declare-fun res!1464045 () Bool)

(assert (=> b!3618047 (= res!1464045 (isEmpty!22506 (_1!22126 (findLongestMatchInner!1013 (regex!5664 rule!403) Nil!38094 (size!29058 Nil!38094) lt!1248453 lt!1248453 (size!29058 lt!1248453)))))))

(declare-fun e!2239339 () Bool)

(assert (=> b!3618047 (=> res!1464045 e!2239339)))

(assert (=> b!3618047 e!2239339))

(declare-fun lt!1248816 () Unit!54616)

(assert (=> b!3618047 (= lt!1248816 lt!1248817)))

(declare-fun lt!1248815 () Unit!54616)

(assert (=> b!3618047 (= lt!1248815 (lemmaSemiInverse!1421 (transformation!5664 rule!403) (seqFromList!4217 (_1!22126 lt!1248814))))))

(declare-fun b!3618048 () Bool)

(declare-fun res!1464047 () Bool)

(assert (=> b!3618048 (=> (not res!1464047) (not e!2239340))))

(assert (=> b!3618048 (= res!1464047 (= (value!181884 (_1!22122 (get!12400 lt!1248818))) (apply!9170 (transformation!5664 (rule!8422 (_1!22122 (get!12400 lt!1248818)))) (seqFromList!4217 (originalCharacters!6378 (_1!22122 (get!12400 lt!1248818)))))))))

(declare-fun b!3618049 () Bool)

(assert (=> b!3618049 (= e!2239339 (matchR!4992 (regex!5664 rule!403) (_1!22126 (findLongestMatchInner!1013 (regex!5664 rule!403) Nil!38094 (size!29058 Nil!38094) lt!1248453 lt!1248453 (size!29058 lt!1248453)))))))

(declare-fun b!3618050 () Bool)

(assert (=> b!3618050 (= e!2239342 e!2239340)))

(declare-fun res!1464043 () Bool)

(assert (=> b!3618050 (=> (not res!1464043) (not e!2239340))))

(assert (=> b!3618050 (= res!1464043 (matchR!4992 (regex!5664 rule!403) (list!14056 (charsOf!3678 (_1!22122 (get!12400 lt!1248818))))))))

(assert (= (and d!1064647 c!626057) b!3618046))

(assert (= (and d!1064647 (not c!626057)) b!3618047))

(assert (= (and b!3618047 (not res!1464045)) b!3618049))

(assert (= (and d!1064647 (not res!1464048)) b!3618050))

(assert (= (and b!3618050 res!1464043) b!3618045))

(assert (= (and b!3618045 res!1464049) b!3618044))

(assert (= (and b!3618044 res!1464044) b!3618042))

(assert (= (and b!3618042 res!1464046) b!3618048))

(assert (= (and b!3618048 res!1464047) b!3618043))

(declare-fun m!4117103 () Bool)

(assert (=> b!3618042 m!4117103))

(assert (=> b!3618044 m!4117103))

(declare-fun m!4117105 () Bool)

(assert (=> b!3618044 m!4117105))

(assert (=> b!3618044 m!4116295))

(assert (=> b!3618045 m!4117103))

(declare-fun m!4117107 () Bool)

(assert (=> b!3618045 m!4117107))

(assert (=> b!3618045 m!4117107))

(declare-fun m!4117109 () Bool)

(assert (=> b!3618045 m!4117109))

(assert (=> b!3618045 m!4117109))

(declare-fun m!4117111 () Bool)

(assert (=> b!3618045 m!4117111))

(assert (=> b!3618043 m!4117103))

(declare-fun m!4117113 () Bool)

(assert (=> b!3618043 m!4117113))

(assert (=> b!3618049 m!4116983))

(assert (=> b!3618049 m!4116295))

(assert (=> b!3618049 m!4116983))

(assert (=> b!3618049 m!4116295))

(declare-fun m!4117115 () Bool)

(assert (=> b!3618049 m!4117115))

(declare-fun m!4117117 () Bool)

(assert (=> b!3618049 m!4117117))

(assert (=> b!3618050 m!4117103))

(assert (=> b!3618050 m!4117107))

(assert (=> b!3618050 m!4117107))

(assert (=> b!3618050 m!4117109))

(assert (=> b!3618050 m!4117109))

(declare-fun m!4117119 () Bool)

(assert (=> b!3618050 m!4117119))

(declare-fun m!4117121 () Bool)

(assert (=> d!1064647 m!4117121))

(declare-fun m!4117123 () Bool)

(assert (=> d!1064647 m!4117123))

(declare-fun m!4117125 () Bool)

(assert (=> d!1064647 m!4117125))

(assert (=> d!1064647 m!4116213))

(assert (=> b!3618048 m!4117103))

(declare-fun m!4117127 () Bool)

(assert (=> b!3618048 m!4117127))

(assert (=> b!3618048 m!4117127))

(declare-fun m!4117129 () Bool)

(assert (=> b!3618048 m!4117129))

(declare-fun m!4117131 () Bool)

(assert (=> b!3618047 m!4117131))

(assert (=> b!3618047 m!4116983))

(assert (=> b!3618047 m!4116295))

(assert (=> b!3618047 m!4117115))

(assert (=> b!3618047 m!4117131))

(declare-fun m!4117133 () Bool)

(assert (=> b!3618047 m!4117133))

(assert (=> b!3618047 m!4116295))

(assert (=> b!3618047 m!4117131))

(declare-fun m!4117135 () Bool)

(assert (=> b!3618047 m!4117135))

(assert (=> b!3618047 m!4117131))

(declare-fun m!4117137 () Bool)

(assert (=> b!3618047 m!4117137))

(assert (=> b!3618047 m!4116983))

(declare-fun m!4117139 () Bool)

(assert (=> b!3618047 m!4117139))

(declare-fun m!4117141 () Bool)

(assert (=> b!3618047 m!4117141))

(assert (=> b!3617377 d!1064647))

(declare-fun d!1064649 () Bool)

(declare-fun lt!1248819 () List!38218)

(assert (=> d!1064649 (= (++!9480 lt!1248444 lt!1248819) lt!1248453)))

(declare-fun e!2239343 () List!38218)

(assert (=> d!1064649 (= lt!1248819 e!2239343)))

(declare-fun c!626058 () Bool)

(assert (=> d!1064649 (= c!626058 ((_ is Cons!38094) lt!1248444))))

(assert (=> d!1064649 (>= (size!29058 lt!1248453) (size!29058 lt!1248444))))

(assert (=> d!1064649 (= (getSuffix!1602 lt!1248453 lt!1248444) lt!1248819)))

(declare-fun b!3618051 () Bool)

(assert (=> b!3618051 (= e!2239343 (getSuffix!1602 (tail!5605 lt!1248453) (t!293869 lt!1248444)))))

(declare-fun b!3618052 () Bool)

(assert (=> b!3618052 (= e!2239343 lt!1248453)))

(assert (= (and d!1064649 c!626058) b!3618051))

(assert (= (and d!1064649 (not c!626058)) b!3618052))

(declare-fun m!4117143 () Bool)

(assert (=> d!1064649 m!4117143))

(assert (=> d!1064649 m!4116295))

(assert (=> d!1064649 m!4116291))

(assert (=> b!3618051 m!4116683))

(assert (=> b!3618051 m!4116683))

(declare-fun m!4117145 () Bool)

(assert (=> b!3618051 m!4117145))

(assert (=> b!3617377 d!1064649))

(declare-fun d!1064651 () Bool)

(assert (=> d!1064651 (= (head!7630 lt!1248446) (h!43514 lt!1248446))))

(assert (=> b!3617377 d!1064651))

(declare-fun d!1064653 () Bool)

(declare-fun res!1464054 () Bool)

(declare-fun e!2239348 () Bool)

(assert (=> d!1064653 (=> res!1464054 e!2239348)))

(assert (=> d!1064653 (= res!1464054 (not ((_ is Cons!38095) rules!3307)))))

(assert (=> d!1064653 (= (sepAndNonSepRulesDisjointChars!1834 rules!3307 rules!3307) e!2239348)))

(declare-fun b!3618057 () Bool)

(declare-fun e!2239349 () Bool)

(assert (=> b!3618057 (= e!2239348 e!2239349)))

(declare-fun res!1464055 () Bool)

(assert (=> b!3618057 (=> (not res!1464055) (not e!2239349))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!831 (Rule!11128 List!38219) Bool)

(assert (=> b!3618057 (= res!1464055 (ruleDisjointCharsFromAllFromOtherType!831 (h!43515 rules!3307) rules!3307))))

(declare-fun b!3618058 () Bool)

(assert (=> b!3618058 (= e!2239349 (sepAndNonSepRulesDisjointChars!1834 rules!3307 (t!293870 rules!3307)))))

(assert (= (and d!1064653 (not res!1464054)) b!3618057))

(assert (= (and b!3618057 res!1464055) b!3618058))

(declare-fun m!4117147 () Bool)

(assert (=> b!3618057 m!4117147))

(declare-fun m!4117149 () Bool)

(assert (=> b!3618058 m!4117149))

(assert (=> b!3617378 d!1064653))

(declare-fun d!1064655 () Bool)

(assert (=> d!1064655 (= (apply!9170 (transformation!5664 (rule!8422 (_1!22122 lt!1248468))) lt!1248441) (dynLambda!16489 (toValue!7948 (transformation!5664 (rule!8422 (_1!22122 lt!1248468)))) lt!1248441))))

(declare-fun b_lambda!107011 () Bool)

(assert (=> (not b_lambda!107011) (not d!1064655)))

(declare-fun tb!207481 () Bool)

(declare-fun t!293936 () Bool)

(assert (=> (and b!3617374 (= (toValue!7948 (transformation!5664 (rule!8422 token!511))) (toValue!7948 (transformation!5664 (rule!8422 (_1!22122 lt!1248468))))) t!293936) tb!207481))

(declare-fun result!252830 () Bool)

(assert (=> tb!207481 (= result!252830 (inv!21 (dynLambda!16489 (toValue!7948 (transformation!5664 (rule!8422 (_1!22122 lt!1248468)))) lt!1248441)))))

(declare-fun m!4117151 () Bool)

(assert (=> tb!207481 m!4117151))

(assert (=> d!1064655 t!293936))

(declare-fun b_and!264315 () Bool)

(assert (= b_and!264307 (and (=> t!293936 result!252830) b_and!264315)))

(declare-fun t!293938 () Bool)

(declare-fun tb!207483 () Bool)

(assert (=> (and b!3617388 (= (toValue!7948 (transformation!5664 anOtherTypeRule!33)) (toValue!7948 (transformation!5664 (rule!8422 (_1!22122 lt!1248468))))) t!293938) tb!207483))

(declare-fun result!252832 () Bool)

(assert (= result!252832 result!252830))

(assert (=> d!1064655 t!293938))

(declare-fun b_and!264317 () Bool)

(assert (= b_and!264309 (and (=> t!293938 result!252832) b_and!264317)))

(declare-fun t!293940 () Bool)

(declare-fun tb!207485 () Bool)

(assert (=> (and b!3617390 (= (toValue!7948 (transformation!5664 (h!43515 rules!3307))) (toValue!7948 (transformation!5664 (rule!8422 (_1!22122 lt!1248468))))) t!293940) tb!207485))

(declare-fun result!252834 () Bool)

(assert (= result!252834 result!252830))

(assert (=> d!1064655 t!293940))

(declare-fun b_and!264319 () Bool)

(assert (= b_and!264311 (and (=> t!293940 result!252834) b_and!264319)))

(declare-fun t!293942 () Bool)

(declare-fun tb!207487 () Bool)

(assert (=> (and b!3617411 (= (toValue!7948 (transformation!5664 rule!403)) (toValue!7948 (transformation!5664 (rule!8422 (_1!22122 lt!1248468))))) t!293942) tb!207487))

(declare-fun result!252836 () Bool)

(assert (= result!252836 result!252830))

(assert (=> d!1064655 t!293942))

(declare-fun b_and!264321 () Bool)

(assert (= b_and!264313 (and (=> t!293942 result!252836) b_and!264321)))

(declare-fun m!4117153 () Bool)

(assert (=> d!1064655 m!4117153))

(assert (=> b!3617395 d!1064655))

(declare-fun d!1064657 () Bool)

(declare-fun lt!1248820 () Int)

(assert (=> d!1064657 (= lt!1248820 (size!29058 (list!14056 lt!1248441)))))

(assert (=> d!1064657 (= lt!1248820 (size!29061 (c!625919 lt!1248441)))))

(assert (=> d!1064657 (= (size!29059 lt!1248441) lt!1248820)))

(declare-fun bs!571102 () Bool)

(assert (= bs!571102 d!1064657))

(assert (=> bs!571102 m!4116323))

(assert (=> bs!571102 m!4116323))

(declare-fun m!4117155 () Bool)

(assert (=> bs!571102 m!4117155))

(declare-fun m!4117157 () Bool)

(assert (=> bs!571102 m!4117157))

(assert (=> b!3617395 d!1064657))

(declare-fun b!3618202 () Bool)

(declare-fun e!2239437 () Bool)

(assert (=> b!3618202 (= e!2239437 true)))

(declare-fun d!1064659 () Bool)

(assert (=> d!1064659 e!2239437))

(assert (= d!1064659 b!3618202))

(declare-fun lambda!124110 () Int)

(declare-fun order!20827 () Int)

(declare-fun order!20829 () Int)

(declare-fun dynLambda!16490 (Int Int) Int)

(declare-fun dynLambda!16491 (Int Int) Int)

(assert (=> b!3618202 (< (dynLambda!16490 order!20827 (toValue!7948 (transformation!5664 (rule!8422 (_1!22122 lt!1248468))))) (dynLambda!16491 order!20829 lambda!124110))))

(declare-fun order!20831 () Int)

(declare-fun dynLambda!16492 (Int Int) Int)

(assert (=> b!3618202 (< (dynLambda!16492 order!20831 (toChars!7807 (transformation!5664 (rule!8422 (_1!22122 lt!1248468))))) (dynLambda!16491 order!20829 lambda!124110))))

(assert (=> d!1064659 (= (list!14056 (dynLambda!16483 (toChars!7807 (transformation!5664 (rule!8422 (_1!22122 lt!1248468)))) (dynLambda!16489 (toValue!7948 (transformation!5664 (rule!8422 (_1!22122 lt!1248468)))) lt!1248441))) (list!14056 lt!1248441))))

(declare-fun lt!1248867 () Unit!54616)

(declare-fun ForallOf!666 (Int BalanceConc!22840) Unit!54616)

(assert (=> d!1064659 (= lt!1248867 (ForallOf!666 lambda!124110 lt!1248441))))

(assert (=> d!1064659 (= (lemmaSemiInverse!1421 (transformation!5664 (rule!8422 (_1!22122 lt!1248468))) lt!1248441) lt!1248867)))

(declare-fun b_lambda!107031 () Bool)

(assert (=> (not b_lambda!107031) (not d!1064659)))

(declare-fun t!293982 () Bool)

(declare-fun tb!207527 () Bool)

(assert (=> (and b!3617374 (= (toChars!7807 (transformation!5664 (rule!8422 token!511))) (toChars!7807 (transformation!5664 (rule!8422 (_1!22122 lt!1248468))))) t!293982) tb!207527))

(declare-fun b!3618203 () Bool)

(declare-fun e!2239438 () Bool)

(declare-fun tp!1105302 () Bool)

(assert (=> b!3618203 (= e!2239438 (and (inv!51483 (c!625919 (dynLambda!16483 (toChars!7807 (transformation!5664 (rule!8422 (_1!22122 lt!1248468)))) (dynLambda!16489 (toValue!7948 (transformation!5664 (rule!8422 (_1!22122 lt!1248468)))) lt!1248441)))) tp!1105302))))

(declare-fun result!252882 () Bool)

(assert (=> tb!207527 (= result!252882 (and (inv!51484 (dynLambda!16483 (toChars!7807 (transformation!5664 (rule!8422 (_1!22122 lt!1248468)))) (dynLambda!16489 (toValue!7948 (transformation!5664 (rule!8422 (_1!22122 lt!1248468)))) lt!1248441))) e!2239438))))

(assert (= tb!207527 b!3618203))

(declare-fun m!4117363 () Bool)

(assert (=> b!3618203 m!4117363))

(declare-fun m!4117365 () Bool)

(assert (=> tb!207527 m!4117365))

(assert (=> d!1064659 t!293982))

(declare-fun b_and!264375 () Bool)

(assert (= b_and!264299 (and (=> t!293982 result!252882) b_and!264375)))

(declare-fun tb!207529 () Bool)

(declare-fun t!293984 () Bool)

(assert (=> (and b!3617388 (= (toChars!7807 (transformation!5664 anOtherTypeRule!33)) (toChars!7807 (transformation!5664 (rule!8422 (_1!22122 lt!1248468))))) t!293984) tb!207529))

(declare-fun result!252884 () Bool)

(assert (= result!252884 result!252882))

(assert (=> d!1064659 t!293984))

(declare-fun b_and!264377 () Bool)

(assert (= b_and!264301 (and (=> t!293984 result!252884) b_and!264377)))

(declare-fun tb!207531 () Bool)

(declare-fun t!293986 () Bool)

(assert (=> (and b!3617390 (= (toChars!7807 (transformation!5664 (h!43515 rules!3307))) (toChars!7807 (transformation!5664 (rule!8422 (_1!22122 lt!1248468))))) t!293986) tb!207531))

(declare-fun result!252886 () Bool)

(assert (= result!252886 result!252882))

(assert (=> d!1064659 t!293986))

(declare-fun b_and!264379 () Bool)

(assert (= b_and!264303 (and (=> t!293986 result!252886) b_and!264379)))

(declare-fun t!293988 () Bool)

(declare-fun tb!207533 () Bool)

(assert (=> (and b!3617411 (= (toChars!7807 (transformation!5664 rule!403)) (toChars!7807 (transformation!5664 (rule!8422 (_1!22122 lt!1248468))))) t!293988) tb!207533))

(declare-fun result!252888 () Bool)

(assert (= result!252888 result!252882))

(assert (=> d!1064659 t!293988))

(declare-fun b_and!264381 () Bool)

(assert (= b_and!264305 (and (=> t!293988 result!252888) b_and!264381)))

(declare-fun b_lambda!107033 () Bool)

(assert (=> (not b_lambda!107033) (not d!1064659)))

(assert (=> d!1064659 t!293936))

(declare-fun b_and!264383 () Bool)

(assert (= b_and!264315 (and (=> t!293936 result!252830) b_and!264383)))

(assert (=> d!1064659 t!293938))

(declare-fun b_and!264385 () Bool)

(assert (= b_and!264317 (and (=> t!293938 result!252832) b_and!264385)))

(assert (=> d!1064659 t!293940))

(declare-fun b_and!264387 () Bool)

(assert (= b_and!264319 (and (=> t!293940 result!252834) b_and!264387)))

(assert (=> d!1064659 t!293942))

(declare-fun b_and!264389 () Bool)

(assert (= b_and!264321 (and (=> t!293942 result!252836) b_and!264389)))

(assert (=> d!1064659 m!4117153))

(declare-fun m!4117367 () Bool)

(assert (=> d!1064659 m!4117367))

(assert (=> d!1064659 m!4117367))

(declare-fun m!4117369 () Bool)

(assert (=> d!1064659 m!4117369))

(assert (=> d!1064659 m!4116323))

(assert (=> d!1064659 m!4117153))

(declare-fun m!4117371 () Bool)

(assert (=> d!1064659 m!4117371))

(assert (=> b!3617395 d!1064659))

(declare-fun d!1064741 () Bool)

(assert (=> d!1064741 (= (size!29057 (_1!22122 lt!1248468)) (size!29058 (originalCharacters!6378 (_1!22122 lt!1248468))))))

(declare-fun Unit!54641 () Unit!54616)

(assert (=> d!1064741 (= (lemmaCharactersSize!717 (_1!22122 lt!1248468)) Unit!54641)))

(declare-fun bs!571116 () Bool)

(assert (= bs!571116 d!1064741))

(declare-fun m!4117373 () Bool)

(assert (=> bs!571116 m!4117373))

(assert (=> b!3617395 d!1064741))

(declare-fun b!3618210 () Bool)

(declare-fun e!2239443 () Bool)

(assert (=> b!3618210 (= e!2239443 true)))

(declare-fun d!1064743 () Bool)

(assert (=> d!1064743 e!2239443))

(assert (= d!1064743 b!3618210))

(declare-fun order!20833 () Int)

(declare-fun lambda!124113 () Int)

(declare-fun dynLambda!16493 (Int Int) Int)

(assert (=> b!3618210 (< (dynLambda!16490 order!20827 (toValue!7948 (transformation!5664 (rule!8422 (_1!22122 lt!1248468))))) (dynLambda!16493 order!20833 lambda!124113))))

(assert (=> b!3618210 (< (dynLambda!16492 order!20831 (toChars!7807 (transformation!5664 (rule!8422 (_1!22122 lt!1248468))))) (dynLambda!16493 order!20833 lambda!124113))))

(assert (=> d!1064743 (= (dynLambda!16489 (toValue!7948 (transformation!5664 (rule!8422 (_1!22122 lt!1248468)))) lt!1248441) (dynLambda!16489 (toValue!7948 (transformation!5664 (rule!8422 (_1!22122 lt!1248468)))) (seqFromList!4217 (originalCharacters!6378 (_1!22122 lt!1248468)))))))

(declare-fun lt!1248870 () Unit!54616)

(declare-fun Forall2of!324 (Int BalanceConc!22840 BalanceConc!22840) Unit!54616)

(assert (=> d!1064743 (= lt!1248870 (Forall2of!324 lambda!124113 lt!1248441 (seqFromList!4217 (originalCharacters!6378 (_1!22122 lt!1248468)))))))

(assert (=> d!1064743 (= (list!14056 lt!1248441) (list!14056 (seqFromList!4217 (originalCharacters!6378 (_1!22122 lt!1248468)))))))

(assert (=> d!1064743 (= (lemmaEqSameImage!855 (transformation!5664 (rule!8422 (_1!22122 lt!1248468))) lt!1248441 (seqFromList!4217 (originalCharacters!6378 (_1!22122 lt!1248468)))) lt!1248870)))

(declare-fun b_lambda!107035 () Bool)

(assert (=> (not b_lambda!107035) (not d!1064743)))

(assert (=> d!1064743 t!293936))

(declare-fun b_and!264391 () Bool)

(assert (= b_and!264383 (and (=> t!293936 result!252830) b_and!264391)))

(assert (=> d!1064743 t!293938))

(declare-fun b_and!264393 () Bool)

(assert (= b_and!264385 (and (=> t!293938 result!252832) b_and!264393)))

(assert (=> d!1064743 t!293940))

(declare-fun b_and!264395 () Bool)

(assert (= b_and!264387 (and (=> t!293940 result!252834) b_and!264395)))

(assert (=> d!1064743 t!293942))

(declare-fun b_and!264397 () Bool)

(assert (= b_and!264389 (and (=> t!293942 result!252836) b_and!264397)))

(declare-fun b_lambda!107037 () Bool)

(assert (=> (not b_lambda!107037) (not d!1064743)))

(declare-fun tb!207535 () Bool)

(declare-fun t!293990 () Bool)

(assert (=> (and b!3617374 (= (toValue!7948 (transformation!5664 (rule!8422 token!511))) (toValue!7948 (transformation!5664 (rule!8422 (_1!22122 lt!1248468))))) t!293990) tb!207535))

(declare-fun result!252890 () Bool)

(assert (=> tb!207535 (= result!252890 (inv!21 (dynLambda!16489 (toValue!7948 (transformation!5664 (rule!8422 (_1!22122 lt!1248468)))) (seqFromList!4217 (originalCharacters!6378 (_1!22122 lt!1248468))))))))

(declare-fun m!4117375 () Bool)

(assert (=> tb!207535 m!4117375))

(assert (=> d!1064743 t!293990))

(declare-fun b_and!264399 () Bool)

(assert (= b_and!264391 (and (=> t!293990 result!252890) b_and!264399)))

(declare-fun tb!207537 () Bool)

(declare-fun t!293992 () Bool)

(assert (=> (and b!3617388 (= (toValue!7948 (transformation!5664 anOtherTypeRule!33)) (toValue!7948 (transformation!5664 (rule!8422 (_1!22122 lt!1248468))))) t!293992) tb!207537))

(declare-fun result!252892 () Bool)

(assert (= result!252892 result!252890))

(assert (=> d!1064743 t!293992))

(declare-fun b_and!264401 () Bool)

(assert (= b_and!264393 (and (=> t!293992 result!252892) b_and!264401)))

(declare-fun tb!207539 () Bool)

(declare-fun t!293994 () Bool)

(assert (=> (and b!3617390 (= (toValue!7948 (transformation!5664 (h!43515 rules!3307))) (toValue!7948 (transformation!5664 (rule!8422 (_1!22122 lt!1248468))))) t!293994) tb!207539))

(declare-fun result!252894 () Bool)

(assert (= result!252894 result!252890))

(assert (=> d!1064743 t!293994))

(declare-fun b_and!264403 () Bool)

(assert (= b_and!264395 (and (=> t!293994 result!252894) b_and!264403)))

(declare-fun tb!207541 () Bool)

(declare-fun t!293996 () Bool)

(assert (=> (and b!3617411 (= (toValue!7948 (transformation!5664 rule!403)) (toValue!7948 (transformation!5664 (rule!8422 (_1!22122 lt!1248468))))) t!293996) tb!207541))

(declare-fun result!252896 () Bool)

(assert (= result!252896 result!252890))

(assert (=> d!1064743 t!293996))

(declare-fun b_and!264405 () Bool)

(assert (= b_and!264397 (and (=> t!293996 result!252896) b_and!264405)))

(assert (=> d!1064743 m!4117153))

(assert (=> d!1064743 m!4116261))

(declare-fun m!4117377 () Bool)

(assert (=> d!1064743 m!4117377))

(assert (=> d!1064743 m!4116261))

(declare-fun m!4117379 () Bool)

(assert (=> d!1064743 m!4117379))

(assert (=> d!1064743 m!4116261))

(declare-fun m!4117381 () Bool)

(assert (=> d!1064743 m!4117381))

(assert (=> d!1064743 m!4116323))

(assert (=> b!3617395 d!1064743))

(declare-fun d!1064745 () Bool)

(assert (=> d!1064745 (= (seqFromList!4217 (originalCharacters!6378 (_1!22122 lt!1248468))) (fromListB!1945 (originalCharacters!6378 (_1!22122 lt!1248468))))))

(declare-fun bs!571117 () Bool)

(assert (= bs!571117 d!1064745))

(declare-fun m!4117383 () Bool)

(assert (=> bs!571117 m!4117383))

(assert (=> b!3617395 d!1064745))

(declare-fun d!1064747 () Bool)

(assert (=> d!1064747 (not (matchR!4992 (regex!5664 rule!403) lt!1248444))))

(declare-fun lt!1248871 () Unit!54616)

(assert (=> d!1064747 (= lt!1248871 (choose!21214 thiss!23823 rules!3307 (rule!8422 (_1!22122 lt!1248468)) lt!1248444 lt!1248453 rule!403))))

(assert (=> d!1064747 (isPrefix!3027 lt!1248444 lt!1248453)))

(assert (=> d!1064747 (= (lemmaMaxPrefNoSmallerRuleMatches!198 thiss!23823 rules!3307 (rule!8422 (_1!22122 lt!1248468)) lt!1248444 lt!1248453 rule!403) lt!1248871)))

(declare-fun bs!571118 () Bool)

(assert (= bs!571118 d!1064747))

(assert (=> bs!571118 m!4116211))

(declare-fun m!4117385 () Bool)

(assert (=> bs!571118 m!4117385))

(assert (=> bs!571118 m!4116309))

(assert (=> b!3617373 d!1064747))

(assert (=> bm!261663 d!1064495))

(declare-fun d!1064749 () Bool)

(assert (=> d!1064749 (= (isEmpty!22507 rules!3307) ((_ is Nil!38095) rules!3307))))

(assert (=> b!3617412 d!1064749))

(declare-fun d!1064751 () Bool)

(declare-fun lt!1248872 () Bool)

(assert (=> d!1064751 (= lt!1248872 (select (content!5451 (usedCharacters!878 (regex!5664 anOtherTypeRule!33))) lt!1248470))))

(declare-fun e!2239445 () Bool)

(assert (=> d!1064751 (= lt!1248872 e!2239445)))

(declare-fun res!1464104 () Bool)

(assert (=> d!1064751 (=> (not res!1464104) (not e!2239445))))

(assert (=> d!1064751 (= res!1464104 ((_ is Cons!38094) (usedCharacters!878 (regex!5664 anOtherTypeRule!33))))))

(assert (=> d!1064751 (= (contains!7391 (usedCharacters!878 (regex!5664 anOtherTypeRule!33)) lt!1248470) lt!1248872)))

(declare-fun b!3618211 () Bool)

(declare-fun e!2239446 () Bool)

(assert (=> b!3618211 (= e!2239445 e!2239446)))

(declare-fun res!1464103 () Bool)

(assert (=> b!3618211 (=> res!1464103 e!2239446)))

(assert (=> b!3618211 (= res!1464103 (= (h!43514 (usedCharacters!878 (regex!5664 anOtherTypeRule!33))) lt!1248470))))

(declare-fun b!3618212 () Bool)

(assert (=> b!3618212 (= e!2239446 (contains!7391 (t!293869 (usedCharacters!878 (regex!5664 anOtherTypeRule!33))) lt!1248470))))

(assert (= (and d!1064751 res!1464104) b!3618211))

(assert (= (and b!3618211 (not res!1464103)) b!3618212))

(assert (=> d!1064751 m!4116327))

(declare-fun m!4117387 () Bool)

(assert (=> d!1064751 m!4117387))

(declare-fun m!4117389 () Bool)

(assert (=> d!1064751 m!4117389))

(declare-fun m!4117391 () Bool)

(assert (=> b!3618212 m!4117391))

(assert (=> b!3617375 d!1064751))

(declare-fun d!1064753 () Bool)

(declare-fun c!626081 () Bool)

(assert (=> d!1064753 (= c!626081 (or ((_ is EmptyExpr!10423) (regex!5664 anOtherTypeRule!33)) ((_ is EmptyLang!10423) (regex!5664 anOtherTypeRule!33))))))

(declare-fun e!2239447 () List!38218)

(assert (=> d!1064753 (= (usedCharacters!878 (regex!5664 anOtherTypeRule!33)) e!2239447)))

(declare-fun b!3618213 () Bool)

(assert (=> b!3618213 (= e!2239447 Nil!38094)))

(declare-fun b!3618214 () Bool)

(declare-fun c!626084 () Bool)

(assert (=> b!3618214 (= c!626084 ((_ is Star!10423) (regex!5664 anOtherTypeRule!33)))))

(declare-fun e!2239449 () List!38218)

(declare-fun e!2239450 () List!38218)

(assert (=> b!3618214 (= e!2239449 e!2239450)))

(declare-fun b!3618215 () Bool)

(assert (=> b!3618215 (= e!2239447 e!2239449)))

(declare-fun c!626082 () Bool)

(assert (=> b!3618215 (= c!626082 ((_ is ElementMatch!10423) (regex!5664 anOtherTypeRule!33)))))

(declare-fun c!626083 () Bool)

(declare-fun call!261728 () List!38218)

(declare-fun call!261726 () List!38218)

(declare-fun call!261729 () List!38218)

(declare-fun bm!261721 () Bool)

(assert (=> bm!261721 (= call!261728 (++!9480 (ite c!626083 call!261726 call!261729) (ite c!626083 call!261729 call!261726)))))

(declare-fun bm!261722 () Bool)

(assert (=> bm!261722 (= call!261726 (usedCharacters!878 (ite c!626083 (regOne!21359 (regex!5664 anOtherTypeRule!33)) (regTwo!21358 (regex!5664 anOtherTypeRule!33)))))))

(declare-fun b!3618216 () Bool)

(declare-fun e!2239448 () List!38218)

(assert (=> b!3618216 (= e!2239448 call!261728)))

(declare-fun b!3618217 () Bool)

(assert (=> b!3618217 (= e!2239448 call!261728)))

(declare-fun bm!261723 () Bool)

(declare-fun call!261727 () List!38218)

(assert (=> bm!261723 (= call!261727 (usedCharacters!878 (ite c!626084 (reg!10752 (regex!5664 anOtherTypeRule!33)) (ite c!626083 (regTwo!21359 (regex!5664 anOtherTypeRule!33)) (regOne!21358 (regex!5664 anOtherTypeRule!33))))))))

(declare-fun bm!261724 () Bool)

(assert (=> bm!261724 (= call!261729 call!261727)))

(declare-fun b!3618218 () Bool)

(assert (=> b!3618218 (= e!2239450 e!2239448)))

(assert (=> b!3618218 (= c!626083 ((_ is Union!10423) (regex!5664 anOtherTypeRule!33)))))

(declare-fun b!3618219 () Bool)

(assert (=> b!3618219 (= e!2239449 (Cons!38094 (c!625918 (regex!5664 anOtherTypeRule!33)) Nil!38094))))

(declare-fun b!3618220 () Bool)

(assert (=> b!3618220 (= e!2239450 call!261727)))

(assert (= (and d!1064753 c!626081) b!3618213))

(assert (= (and d!1064753 (not c!626081)) b!3618215))

(assert (= (and b!3618215 c!626082) b!3618219))

(assert (= (and b!3618215 (not c!626082)) b!3618214))

(assert (= (and b!3618214 c!626084) b!3618220))

(assert (= (and b!3618214 (not c!626084)) b!3618218))

(assert (= (and b!3618218 c!626083) b!3618216))

(assert (= (and b!3618218 (not c!626083)) b!3618217))

(assert (= (or b!3618216 b!3618217) bm!261722))

(assert (= (or b!3618216 b!3618217) bm!261724))

(assert (= (or b!3618216 b!3618217) bm!261721))

(assert (= (or b!3618220 bm!261724) bm!261723))

(declare-fun m!4117393 () Bool)

(assert (=> bm!261721 m!4117393))

(declare-fun m!4117395 () Bool)

(assert (=> bm!261722 m!4117395))

(declare-fun m!4117397 () Bool)

(assert (=> bm!261723 m!4117397))

(assert (=> b!3617375 d!1064753))

(declare-fun d!1064755 () Bool)

(assert (=> d!1064755 (= (get!12400 lt!1248448) (v!37715 lt!1248448))))

(assert (=> b!3617389 d!1064755))

(declare-fun d!1064757 () Bool)

(assert (=> d!1064757 (= (isDefined!6190 lt!1248448) (not (isEmpty!22510 lt!1248448)))))

(declare-fun bs!571119 () Bool)

(assert (= bs!571119 d!1064757))

(declare-fun m!4117399 () Bool)

(assert (=> bs!571119 m!4117399))

(assert (=> b!3617408 d!1064757))

(declare-fun b!3618221 () Bool)

(declare-fun res!1464108 () Bool)

(declare-fun e!2239451 () Bool)

(assert (=> b!3618221 (=> (not res!1464108) (not e!2239451))))

(declare-fun lt!1248874 () Option!7958)

(assert (=> b!3618221 (= res!1464108 (= (value!181884 (_1!22122 (get!12400 lt!1248874))) (apply!9170 (transformation!5664 (rule!8422 (_1!22122 (get!12400 lt!1248874)))) (seqFromList!4217 (originalCharacters!6378 (_1!22122 (get!12400 lt!1248874)))))))))

(declare-fun b!3618222 () Bool)

(declare-fun e!2239452 () Bool)

(assert (=> b!3618222 (= e!2239452 e!2239451)))

(declare-fun res!1464106 () Bool)

(assert (=> b!3618222 (=> (not res!1464106) (not e!2239451))))

(assert (=> b!3618222 (= res!1464106 (isDefined!6190 lt!1248874))))

(declare-fun b!3618223 () Bool)

(declare-fun e!2239453 () Option!7958)

(declare-fun lt!1248877 () Option!7958)

(declare-fun lt!1248875 () Option!7958)

(assert (=> b!3618223 (= e!2239453 (ite (and ((_ is None!7957) lt!1248877) ((_ is None!7957) lt!1248875)) None!7957 (ite ((_ is None!7957) lt!1248875) lt!1248877 (ite ((_ is None!7957) lt!1248877) lt!1248875 (ite (>= (size!29057 (_1!22122 (v!37715 lt!1248877))) (size!29057 (_1!22122 (v!37715 lt!1248875)))) lt!1248877 lt!1248875)))))))

(declare-fun call!261730 () Option!7958)

(assert (=> b!3618223 (= lt!1248877 call!261730)))

(assert (=> b!3618223 (= lt!1248875 (maxPrefix!2787 thiss!23823 (t!293870 rules!3307) lt!1248444))))

(declare-fun b!3618224 () Bool)

(assert (=> b!3618224 (= e!2239453 call!261730)))

(declare-fun b!3618225 () Bool)

(declare-fun res!1464110 () Bool)

(assert (=> b!3618225 (=> (not res!1464110) (not e!2239451))))

(assert (=> b!3618225 (= res!1464110 (matchR!4992 (regex!5664 (rule!8422 (_1!22122 (get!12400 lt!1248874)))) (list!14056 (charsOf!3678 (_1!22122 (get!12400 lt!1248874))))))))

(declare-fun b!3618226 () Bool)

(assert (=> b!3618226 (= e!2239451 (contains!7392 rules!3307 (rule!8422 (_1!22122 (get!12400 lt!1248874)))))))

(declare-fun b!3618227 () Bool)

(declare-fun res!1464107 () Bool)

(assert (=> b!3618227 (=> (not res!1464107) (not e!2239451))))

(assert (=> b!3618227 (= res!1464107 (= (list!14056 (charsOf!3678 (_1!22122 (get!12400 lt!1248874)))) (originalCharacters!6378 (_1!22122 (get!12400 lt!1248874)))))))

(declare-fun bm!261725 () Bool)

(assert (=> bm!261725 (= call!261730 (maxPrefixOneRule!1931 thiss!23823 (h!43515 rules!3307) lt!1248444))))

(declare-fun d!1064759 () Bool)

(assert (=> d!1064759 e!2239452))

(declare-fun res!1464109 () Bool)

(assert (=> d!1064759 (=> res!1464109 e!2239452)))

(assert (=> d!1064759 (= res!1464109 (isEmpty!22510 lt!1248874))))

(assert (=> d!1064759 (= lt!1248874 e!2239453)))

(declare-fun c!626085 () Bool)

(assert (=> d!1064759 (= c!626085 (and ((_ is Cons!38095) rules!3307) ((_ is Nil!38095) (t!293870 rules!3307))))))

(declare-fun lt!1248876 () Unit!54616)

(declare-fun lt!1248873 () Unit!54616)

(assert (=> d!1064759 (= lt!1248876 lt!1248873)))

(assert (=> d!1064759 (isPrefix!3027 lt!1248444 lt!1248444)))

(assert (=> d!1064759 (= lt!1248873 (lemmaIsPrefixRefl!1926 lt!1248444 lt!1248444))))

(assert (=> d!1064759 (rulesValidInductive!1989 thiss!23823 rules!3307)))

(assert (=> d!1064759 (= (maxPrefix!2787 thiss!23823 rules!3307 lt!1248444) lt!1248874)))

(declare-fun b!3618228 () Bool)

(declare-fun res!1464111 () Bool)

(assert (=> b!3618228 (=> (not res!1464111) (not e!2239451))))

(assert (=> b!3618228 (= res!1464111 (< (size!29058 (_2!22122 (get!12400 lt!1248874))) (size!29058 lt!1248444)))))

(declare-fun b!3618229 () Bool)

(declare-fun res!1464105 () Bool)

(assert (=> b!3618229 (=> (not res!1464105) (not e!2239451))))

(assert (=> b!3618229 (= res!1464105 (= (++!9480 (list!14056 (charsOf!3678 (_1!22122 (get!12400 lt!1248874)))) (_2!22122 (get!12400 lt!1248874))) lt!1248444))))

(assert (= (and d!1064759 c!626085) b!3618224))

(assert (= (and d!1064759 (not c!626085)) b!3618223))

(assert (= (or b!3618224 b!3618223) bm!261725))

(assert (= (and d!1064759 (not res!1464109)) b!3618222))

(assert (= (and b!3618222 res!1464106) b!3618227))

(assert (= (and b!3618227 res!1464107) b!3618228))

(assert (= (and b!3618228 res!1464111) b!3618229))

(assert (= (and b!3618229 res!1464105) b!3618221))

(assert (= (and b!3618221 res!1464108) b!3618225))

(assert (= (and b!3618225 res!1464110) b!3618226))

(declare-fun m!4117401 () Bool)

(assert (=> b!3618227 m!4117401))

(declare-fun m!4117403 () Bool)

(assert (=> b!3618227 m!4117403))

(assert (=> b!3618227 m!4117403))

(declare-fun m!4117405 () Bool)

(assert (=> b!3618227 m!4117405))

(assert (=> b!3618228 m!4117401))

(declare-fun m!4117407 () Bool)

(assert (=> b!3618228 m!4117407))

(assert (=> b!3618228 m!4116291))

(declare-fun m!4117409 () Bool)

(assert (=> b!3618222 m!4117409))

(declare-fun m!4117411 () Bool)

(assert (=> bm!261725 m!4117411))

(assert (=> b!3618226 m!4117401))

(declare-fun m!4117413 () Bool)

(assert (=> b!3618226 m!4117413))

(assert (=> b!3618229 m!4117401))

(assert (=> b!3618229 m!4117403))

(assert (=> b!3618229 m!4117403))

(assert (=> b!3618229 m!4117405))

(assert (=> b!3618229 m!4117405))

(declare-fun m!4117415 () Bool)

(assert (=> b!3618229 m!4117415))

(assert (=> b!3618221 m!4117401))

(declare-fun m!4117417 () Bool)

(assert (=> b!3618221 m!4117417))

(assert (=> b!3618221 m!4117417))

(declare-fun m!4117419 () Bool)

(assert (=> b!3618221 m!4117419))

(declare-fun m!4117421 () Bool)

(assert (=> d!1064759 m!4117421))

(assert (=> d!1064759 m!4117067))

(declare-fun m!4117423 () Bool)

(assert (=> d!1064759 m!4117423))

(assert (=> d!1064759 m!4116763))

(assert (=> b!3618225 m!4117401))

(assert (=> b!3618225 m!4117403))

(assert (=> b!3618225 m!4117403))

(assert (=> b!3618225 m!4117405))

(assert (=> b!3618225 m!4117405))

(declare-fun m!4117425 () Bool)

(assert (=> b!3618225 m!4117425))

(declare-fun m!4117427 () Bool)

(assert (=> b!3618223 m!4117427))

(assert (=> b!3617408 d!1064759))

(declare-fun d!1064761 () Bool)

(assert (=> d!1064761 (= (list!14056 lt!1248437) (list!14058 (c!625919 lt!1248437)))))

(declare-fun bs!571120 () Bool)

(assert (= bs!571120 d!1064761))

(declare-fun m!4117429 () Bool)

(assert (=> bs!571120 m!4117429))

(assert (=> b!3617408 d!1064761))

(declare-fun d!1064763 () Bool)

(declare-fun lt!1248878 () BalanceConc!22840)

(assert (=> d!1064763 (= (list!14056 lt!1248878) (originalCharacters!6378 token!511))))

(assert (=> d!1064763 (= lt!1248878 (dynLambda!16483 (toChars!7807 (transformation!5664 (rule!8422 token!511))) (value!181884 token!511)))))

(assert (=> d!1064763 (= (charsOf!3678 token!511) lt!1248878)))

(declare-fun b_lambda!107039 () Bool)

(assert (=> (not b_lambda!107039) (not d!1064763)))

(assert (=> d!1064763 t!293920))

(declare-fun b_and!264407 () Bool)

(assert (= b_and!264375 (and (=> t!293920 result!252814) b_and!264407)))

(assert (=> d!1064763 t!293922))

(declare-fun b_and!264409 () Bool)

(assert (= b_and!264377 (and (=> t!293922 result!252816) b_and!264409)))

(assert (=> d!1064763 t!293924))

(declare-fun b_and!264411 () Bool)

(assert (= b_and!264379 (and (=> t!293924 result!252818) b_and!264411)))

(assert (=> d!1064763 t!293926))

(declare-fun b_and!264413 () Bool)

(assert (= b_and!264381 (and (=> t!293926 result!252820) b_and!264413)))

(declare-fun m!4117431 () Bool)

(assert (=> d!1064763 m!4117431))

(assert (=> d!1064763 m!4117049))

(assert (=> b!3617408 d!1064763))

(declare-fun b!3618239 () Bool)

(declare-fun e!2239460 () Int)

(declare-fun e!2239459 () Int)

(assert (=> b!3618239 (= e!2239460 e!2239459)))

(declare-fun c!626091 () Bool)

(assert (=> b!3618239 (= c!626091 (and ((_ is Cons!38095) rules!3307) (not (= (h!43515 rules!3307) (rule!8422 (_1!22122 lt!1248468))))))))

(declare-fun b!3618241 () Bool)

(assert (=> b!3618241 (= e!2239459 (- 1))))

(declare-fun b!3618240 () Bool)

(assert (=> b!3618240 (= e!2239459 (+ 1 (getIndex!446 (t!293870 rules!3307) (rule!8422 (_1!22122 lt!1248468)))))))

(declare-fun d!1064765 () Bool)

(declare-fun lt!1248881 () Int)

(assert (=> d!1064765 (>= lt!1248881 0)))

(assert (=> d!1064765 (= lt!1248881 e!2239460)))

(declare-fun c!626090 () Bool)

(assert (=> d!1064765 (= c!626090 (and ((_ is Cons!38095) rules!3307) (= (h!43515 rules!3307) (rule!8422 (_1!22122 lt!1248468)))))))

(assert (=> d!1064765 (contains!7392 rules!3307 (rule!8422 (_1!22122 lt!1248468)))))

(assert (=> d!1064765 (= (getIndex!446 rules!3307 (rule!8422 (_1!22122 lt!1248468))) lt!1248881)))

(declare-fun b!3618238 () Bool)

(assert (=> b!3618238 (= e!2239460 0)))

(assert (= (and d!1064765 c!626090) b!3618238))

(assert (= (and d!1064765 (not c!626090)) b!3618239))

(assert (= (and b!3618239 c!626091) b!3618240))

(assert (= (and b!3618239 (not c!626091)) b!3618241))

(declare-fun m!4117433 () Bool)

(assert (=> b!3618240 m!4117433))

(declare-fun m!4117435 () Bool)

(assert (=> d!1064765 m!4117435))

(assert (=> b!3617391 d!1064765))

(declare-fun b!3618243 () Bool)

(declare-fun e!2239462 () Int)

(declare-fun e!2239461 () Int)

(assert (=> b!3618243 (= e!2239462 e!2239461)))

(declare-fun c!626093 () Bool)

(assert (=> b!3618243 (= c!626093 (and ((_ is Cons!38095) rules!3307) (not (= (h!43515 rules!3307) rule!403))))))

(declare-fun b!3618245 () Bool)

(assert (=> b!3618245 (= e!2239461 (- 1))))

(declare-fun b!3618244 () Bool)

(assert (=> b!3618244 (= e!2239461 (+ 1 (getIndex!446 (t!293870 rules!3307) rule!403)))))

(declare-fun d!1064767 () Bool)

(declare-fun lt!1248882 () Int)

(assert (=> d!1064767 (>= lt!1248882 0)))

(assert (=> d!1064767 (= lt!1248882 e!2239462)))

(declare-fun c!626092 () Bool)

(assert (=> d!1064767 (= c!626092 (and ((_ is Cons!38095) rules!3307) (= (h!43515 rules!3307) rule!403)))))

(assert (=> d!1064767 (contains!7392 rules!3307 rule!403)))

(assert (=> d!1064767 (= (getIndex!446 rules!3307 rule!403) lt!1248882)))

(declare-fun b!3618242 () Bool)

(assert (=> b!3618242 (= e!2239462 0)))

(assert (= (and d!1064767 c!626092) b!3618242))

(assert (= (and d!1064767 (not c!626092)) b!3618243))

(assert (= (and b!3618243 c!626093) b!3618244))

(assert (= (and b!3618243 (not c!626093)) b!3618245))

(declare-fun m!4117437 () Bool)

(assert (=> b!3618244 m!4117437))

(assert (=> d!1064767 m!4116173))

(assert (=> b!3617391 d!1064767))

(declare-fun d!1064769 () Bool)

(assert (=> d!1064769 (= (rule!8422 (_1!22122 lt!1248468)) rule!403)))

(declare-fun lt!1248885 () Unit!54616)

(declare-fun choose!21218 (List!38219 Rule!11128 Rule!11128) Unit!54616)

(assert (=> d!1064769 (= lt!1248885 (choose!21218 rules!3307 (rule!8422 (_1!22122 lt!1248468)) rule!403))))

(assert (=> d!1064769 (contains!7392 rules!3307 (rule!8422 (_1!22122 lt!1248468)))))

(assert (=> d!1064769 (= (lemmaSameIndexThenSameElement!214 rules!3307 (rule!8422 (_1!22122 lt!1248468)) rule!403) lt!1248885)))

(declare-fun bs!571121 () Bool)

(assert (= bs!571121 d!1064769))

(declare-fun m!4117439 () Bool)

(assert (=> bs!571121 m!4117439))

(assert (=> bs!571121 m!4117435))

(assert (=> b!3617391 d!1064769))

(declare-fun d!1064771 () Bool)

(assert (=> d!1064771 (= (inv!51478 (tag!6378 (h!43515 rules!3307))) (= (mod (str.len (value!181883 (tag!6378 (h!43515 rules!3307)))) 2) 0))))

(assert (=> b!3617410 d!1064771))

(declare-fun d!1064773 () Bool)

(declare-fun res!1464112 () Bool)

(declare-fun e!2239463 () Bool)

(assert (=> d!1064773 (=> (not res!1464112) (not e!2239463))))

(assert (=> d!1064773 (= res!1464112 (semiInverseModEq!2405 (toChars!7807 (transformation!5664 (h!43515 rules!3307))) (toValue!7948 (transformation!5664 (h!43515 rules!3307)))))))

(assert (=> d!1064773 (= (inv!51481 (transformation!5664 (h!43515 rules!3307))) e!2239463)))

(declare-fun b!3618246 () Bool)

(assert (=> b!3618246 (= e!2239463 (equivClasses!2304 (toChars!7807 (transformation!5664 (h!43515 rules!3307))) (toValue!7948 (transformation!5664 (h!43515 rules!3307)))))))

(assert (= (and d!1064773 res!1464112) b!3618246))

(declare-fun m!4117441 () Bool)

(assert (=> d!1064773 m!4117441))

(declare-fun m!4117443 () Bool)

(assert (=> b!3618246 m!4117443))

(assert (=> b!3617410 d!1064773))

(declare-fun d!1064775 () Bool)

(declare-fun lt!1248886 () Bool)

(assert (=> d!1064775 (= lt!1248886 (select (content!5452 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2239464 () Bool)

(assert (=> d!1064775 (= lt!1248886 e!2239464)))

(declare-fun res!1464113 () Bool)

(assert (=> d!1064775 (=> (not res!1464113) (not e!2239464))))

(assert (=> d!1064775 (= res!1464113 ((_ is Cons!38095) rules!3307))))

(assert (=> d!1064775 (= (contains!7392 rules!3307 anOtherTypeRule!33) lt!1248886)))

(declare-fun b!3618247 () Bool)

(declare-fun e!2239465 () Bool)

(assert (=> b!3618247 (= e!2239464 e!2239465)))

(declare-fun res!1464114 () Bool)

(assert (=> b!3618247 (=> res!1464114 e!2239465)))

(assert (=> b!3618247 (= res!1464114 (= (h!43515 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3618248 () Bool)

(assert (=> b!3618248 (= e!2239465 (contains!7392 (t!293870 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1064775 res!1464113) b!3618247))

(assert (= (and b!3618247 (not res!1464114)) b!3618248))

(assert (=> d!1064775 m!4116653))

(declare-fun m!4117445 () Bool)

(assert (=> d!1064775 m!4117445))

(declare-fun m!4117447 () Bool)

(assert (=> b!3618248 m!4117447))

(assert (=> b!3617387 d!1064775))

(declare-fun d!1064777 () Bool)

(assert (=> d!1064777 (= (inv!51478 (tag!6378 anOtherTypeRule!33)) (= (mod (str.len (value!181883 (tag!6378 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3617406 d!1064777))

(declare-fun d!1064779 () Bool)

(declare-fun res!1464115 () Bool)

(declare-fun e!2239466 () Bool)

(assert (=> d!1064779 (=> (not res!1464115) (not e!2239466))))

(assert (=> d!1064779 (= res!1464115 (semiInverseModEq!2405 (toChars!7807 (transformation!5664 anOtherTypeRule!33)) (toValue!7948 (transformation!5664 anOtherTypeRule!33))))))

(assert (=> d!1064779 (= (inv!51481 (transformation!5664 anOtherTypeRule!33)) e!2239466)))

(declare-fun b!3618249 () Bool)

(assert (=> b!3618249 (= e!2239466 (equivClasses!2304 (toChars!7807 (transformation!5664 anOtherTypeRule!33)) (toValue!7948 (transformation!5664 anOtherTypeRule!33))))))

(assert (= (and d!1064779 res!1464115) b!3618249))

(declare-fun m!4117449 () Bool)

(assert (=> d!1064779 m!4117449))

(declare-fun m!4117451 () Bool)

(assert (=> b!3618249 m!4117451))

(assert (=> b!3617406 d!1064779))

(declare-fun b!3618254 () Bool)

(declare-fun e!2239469 () Bool)

(declare-fun tp!1105305 () Bool)

(assert (=> b!3618254 (= e!2239469 (and tp_is_empty!17929 tp!1105305))))

(assert (=> b!3617399 (= tp!1105238 e!2239469)))

(assert (= (and b!3617399 ((_ is Cons!38094) (originalCharacters!6378 token!511))) b!3618254))

(declare-fun b!3618265 () Bool)

(declare-fun e!2239472 () Bool)

(assert (=> b!3618265 (= e!2239472 tp_is_empty!17929)))

(declare-fun b!3618266 () Bool)

(declare-fun tp!1105316 () Bool)

(declare-fun tp!1105318 () Bool)

(assert (=> b!3618266 (= e!2239472 (and tp!1105316 tp!1105318))))

(assert (=> b!3617415 (= tp!1105237 e!2239472)))

(declare-fun b!3618268 () Bool)

(declare-fun tp!1105319 () Bool)

(declare-fun tp!1105320 () Bool)

(assert (=> b!3618268 (= e!2239472 (and tp!1105319 tp!1105320))))

(declare-fun b!3618267 () Bool)

(declare-fun tp!1105317 () Bool)

(assert (=> b!3618267 (= e!2239472 tp!1105317)))

(assert (= (and b!3617415 ((_ is ElementMatch!10423) (regex!5664 rule!403))) b!3618265))

(assert (= (and b!3617415 ((_ is Concat!16318) (regex!5664 rule!403))) b!3618266))

(assert (= (and b!3617415 ((_ is Star!10423) (regex!5664 rule!403))) b!3618267))

(assert (= (and b!3617415 ((_ is Union!10423) (regex!5664 rule!403))) b!3618268))

(declare-fun b!3618269 () Bool)

(declare-fun e!2239473 () Bool)

(assert (=> b!3618269 (= e!2239473 tp_is_empty!17929)))

(declare-fun b!3618270 () Bool)

(declare-fun tp!1105321 () Bool)

(declare-fun tp!1105323 () Bool)

(assert (=> b!3618270 (= e!2239473 (and tp!1105321 tp!1105323))))

(assert (=> b!3617420 (= tp!1105239 e!2239473)))

(declare-fun b!3618272 () Bool)

(declare-fun tp!1105324 () Bool)

(declare-fun tp!1105325 () Bool)

(assert (=> b!3618272 (= e!2239473 (and tp!1105324 tp!1105325))))

(declare-fun b!3618271 () Bool)

(declare-fun tp!1105322 () Bool)

(assert (=> b!3618271 (= e!2239473 tp!1105322)))

(assert (= (and b!3617420 ((_ is ElementMatch!10423) (regex!5664 (rule!8422 token!511)))) b!3618269))

(assert (= (and b!3617420 ((_ is Concat!16318) (regex!5664 (rule!8422 token!511)))) b!3618270))

(assert (= (and b!3617420 ((_ is Star!10423) (regex!5664 (rule!8422 token!511)))) b!3618271))

(assert (= (and b!3617420 ((_ is Union!10423) (regex!5664 (rule!8422 token!511)))) b!3618272))

(declare-fun b!3618273 () Bool)

(declare-fun e!2239474 () Bool)

(assert (=> b!3618273 (= e!2239474 tp_is_empty!17929)))

(declare-fun b!3618274 () Bool)

(declare-fun tp!1105326 () Bool)

(declare-fun tp!1105328 () Bool)

(assert (=> b!3618274 (= e!2239474 (and tp!1105326 tp!1105328))))

(assert (=> b!3617410 (= tp!1105233 e!2239474)))

(declare-fun b!3618276 () Bool)

(declare-fun tp!1105329 () Bool)

(declare-fun tp!1105330 () Bool)

(assert (=> b!3618276 (= e!2239474 (and tp!1105329 tp!1105330))))

(declare-fun b!3618275 () Bool)

(declare-fun tp!1105327 () Bool)

(assert (=> b!3618275 (= e!2239474 tp!1105327)))

(assert (= (and b!3617410 ((_ is ElementMatch!10423) (regex!5664 (h!43515 rules!3307)))) b!3618273))

(assert (= (and b!3617410 ((_ is Concat!16318) (regex!5664 (h!43515 rules!3307)))) b!3618274))

(assert (= (and b!3617410 ((_ is Star!10423) (regex!5664 (h!43515 rules!3307)))) b!3618275))

(assert (= (and b!3617410 ((_ is Union!10423) (regex!5664 (h!43515 rules!3307)))) b!3618276))

(declare-fun b!3618287 () Bool)

(declare-fun b_free!94205 () Bool)

(declare-fun b_next!94909 () Bool)

(assert (=> b!3618287 (= b_free!94205 (not b_next!94909))))

(declare-fun t!293998 () Bool)

(declare-fun tb!207543 () Bool)

(assert (=> (and b!3618287 (= (toValue!7948 (transformation!5664 (h!43515 (t!293870 rules!3307)))) (toValue!7948 (transformation!5664 (rule!8422 (_1!22122 lt!1248468))))) t!293998) tb!207543))

(declare-fun result!252904 () Bool)

(assert (= result!252904 result!252890))

(assert (=> d!1064743 t!293998))

(declare-fun t!294000 () Bool)

(declare-fun tb!207545 () Bool)

(assert (=> (and b!3618287 (= (toValue!7948 (transformation!5664 (h!43515 (t!293870 rules!3307)))) (toValue!7948 (transformation!5664 rule!403))) t!294000) tb!207545))

(declare-fun result!252906 () Bool)

(assert (= result!252906 result!252822))

(assert (=> d!1064643 t!294000))

(declare-fun t!294002 () Bool)

(declare-fun tb!207547 () Bool)

(assert (=> (and b!3618287 (= (toValue!7948 (transformation!5664 (h!43515 (t!293870 rules!3307)))) (toValue!7948 (transformation!5664 (rule!8422 (_1!22122 lt!1248468))))) t!294002) tb!207547))

(declare-fun result!252908 () Bool)

(assert (= result!252908 result!252804))

(assert (=> d!1064593 t!294002))

(declare-fun t!294004 () Bool)

(declare-fun tb!207549 () Bool)

(assert (=> (and b!3618287 (= (toValue!7948 (transformation!5664 (h!43515 (t!293870 rules!3307)))) (toValue!7948 (transformation!5664 (rule!8422 (_1!22122 lt!1248468))))) t!294004) tb!207549))

(declare-fun result!252910 () Bool)

(assert (= result!252910 result!252830))

(assert (=> d!1064743 t!294004))

(assert (=> d!1064655 t!294004))

(assert (=> d!1064659 t!294004))

(declare-fun tp!1105342 () Bool)

(declare-fun b_and!264415 () Bool)

(assert (=> b!3618287 (= tp!1105342 (and (=> t!294002 result!252908) (=> t!294004 result!252910) (=> t!294000 result!252906) (=> t!293998 result!252904) b_and!264415))))

(declare-fun b_free!94207 () Bool)

(declare-fun b_next!94911 () Bool)

(assert (=> b!3618287 (= b_free!94207 (not b_next!94911))))

(declare-fun tb!207551 () Bool)

(declare-fun t!294006 () Bool)

(assert (=> (and b!3618287 (= (toChars!7807 (transformation!5664 (h!43515 (t!293870 rules!3307)))) (toChars!7807 (transformation!5664 (rule!8422 (_1!22122 lt!1248468))))) t!294006) tb!207551))

(declare-fun result!252912 () Bool)

(assert (= result!252912 result!252768))

(assert (=> d!1064445 t!294006))

(declare-fun t!294008 () Bool)

(declare-fun tb!207553 () Bool)

(assert (=> (and b!3618287 (= (toChars!7807 (transformation!5664 (h!43515 (t!293870 rules!3307)))) (toChars!7807 (transformation!5664 (rule!8422 token!511)))) t!294008) tb!207553))

(declare-fun result!252914 () Bool)

(assert (= result!252914 result!252814))

(assert (=> b!3618014 t!294008))

(declare-fun t!294010 () Bool)

(declare-fun tb!207555 () Bool)

(assert (=> (and b!3618287 (= (toChars!7807 (transformation!5664 (h!43515 (t!293870 rules!3307)))) (toChars!7807 (transformation!5664 (rule!8422 (_1!22122 lt!1248468))))) t!294010) tb!207555))

(declare-fun result!252916 () Bool)

(assert (= result!252916 result!252882))

(assert (=> d!1064659 t!294010))

(assert (=> d!1064763 t!294008))

(declare-fun b_and!264417 () Bool)

(declare-fun tp!1105339 () Bool)

(assert (=> b!3618287 (= tp!1105339 (and (=> t!294006 result!252912) (=> t!294008 result!252914) (=> t!294010 result!252916) b_and!264417))))

(declare-fun e!2239484 () Bool)

(assert (=> b!3618287 (= e!2239484 (and tp!1105342 tp!1105339))))

(declare-fun tp!1105341 () Bool)

(declare-fun e!2239485 () Bool)

(declare-fun b!3618286 () Bool)

(assert (=> b!3618286 (= e!2239485 (and tp!1105341 (inv!51478 (tag!6378 (h!43515 (t!293870 rules!3307)))) (inv!51481 (transformation!5664 (h!43515 (t!293870 rules!3307)))) e!2239484))))

(declare-fun b!3618285 () Bool)

(declare-fun e!2239486 () Bool)

(declare-fun tp!1105340 () Bool)

(assert (=> b!3618285 (= e!2239486 (and e!2239485 tp!1105340))))

(assert (=> b!3617416 (= tp!1105246 e!2239486)))

(assert (= b!3618286 b!3618287))

(assert (= b!3618285 b!3618286))

(assert (= (and b!3617416 ((_ is Cons!38095) (t!293870 rules!3307))) b!3618285))

(declare-fun m!4117453 () Bool)

(assert (=> b!3618286 m!4117453))

(declare-fun m!4117455 () Bool)

(assert (=> b!3618286 m!4117455))

(declare-fun b!3618288 () Bool)

(declare-fun e!2239487 () Bool)

(assert (=> b!3618288 (= e!2239487 tp_is_empty!17929)))

(declare-fun b!3618289 () Bool)

(declare-fun tp!1105343 () Bool)

(declare-fun tp!1105345 () Bool)

(assert (=> b!3618289 (= e!2239487 (and tp!1105343 tp!1105345))))

(assert (=> b!3617406 (= tp!1105242 e!2239487)))

(declare-fun b!3618291 () Bool)

(declare-fun tp!1105346 () Bool)

(declare-fun tp!1105347 () Bool)

(assert (=> b!3618291 (= e!2239487 (and tp!1105346 tp!1105347))))

(declare-fun b!3618290 () Bool)

(declare-fun tp!1105344 () Bool)

(assert (=> b!3618290 (= e!2239487 tp!1105344)))

(assert (= (and b!3617406 ((_ is ElementMatch!10423) (regex!5664 anOtherTypeRule!33))) b!3618288))

(assert (= (and b!3617406 ((_ is Concat!16318) (regex!5664 anOtherTypeRule!33))) b!3618289))

(assert (= (and b!3617406 ((_ is Star!10423) (regex!5664 anOtherTypeRule!33))) b!3618290))

(assert (= (and b!3617406 ((_ is Union!10423) (regex!5664 anOtherTypeRule!33))) b!3618291))

(declare-fun b!3618292 () Bool)

(declare-fun e!2239488 () Bool)

(declare-fun tp!1105348 () Bool)

(assert (=> b!3618292 (= e!2239488 (and tp_is_empty!17929 tp!1105348))))

(assert (=> b!3617392 (= tp!1105243 e!2239488)))

(assert (= (and b!3617392 ((_ is Cons!38094) (t!293869 suffix!1395))) b!3618292))

(declare-fun b_lambda!107041 () Bool)

(assert (= b_lambda!107009 (or (and b!3617411 b_free!94197) (and b!3618287 b_free!94205 (= (toValue!7948 (transformation!5664 (h!43515 (t!293870 rules!3307)))) (toValue!7948 (transformation!5664 rule!403)))) (and b!3617390 b_free!94193 (= (toValue!7948 (transformation!5664 (h!43515 rules!3307))) (toValue!7948 (transformation!5664 rule!403)))) (and b!3617388 b_free!94189 (= (toValue!7948 (transformation!5664 anOtherTypeRule!33)) (toValue!7948 (transformation!5664 rule!403)))) (and b!3617374 b_free!94185 (= (toValue!7948 (transformation!5664 (rule!8422 token!511))) (toValue!7948 (transformation!5664 rule!403)))) b_lambda!107041)))

(declare-fun b_lambda!107043 () Bool)

(assert (= b_lambda!107007 (or (and b!3617374 b_free!94187) (and b!3617411 b_free!94199 (= (toChars!7807 (transformation!5664 rule!403)) (toChars!7807 (transformation!5664 (rule!8422 token!511))))) (and b!3618287 b_free!94207 (= (toChars!7807 (transformation!5664 (h!43515 (t!293870 rules!3307)))) (toChars!7807 (transformation!5664 (rule!8422 token!511))))) (and b!3617390 b_free!94195 (= (toChars!7807 (transformation!5664 (h!43515 rules!3307))) (toChars!7807 (transformation!5664 (rule!8422 token!511))))) (and b!3617388 b_free!94191 (= (toChars!7807 (transformation!5664 anOtherTypeRule!33)) (toChars!7807 (transformation!5664 (rule!8422 token!511))))) b_lambda!107043)))

(declare-fun b_lambda!107045 () Bool)

(assert (= b_lambda!107039 (or (and b!3617374 b_free!94187) (and b!3617411 b_free!94199 (= (toChars!7807 (transformation!5664 rule!403)) (toChars!7807 (transformation!5664 (rule!8422 token!511))))) (and b!3618287 b_free!94207 (= (toChars!7807 (transformation!5664 (h!43515 (t!293870 rules!3307)))) (toChars!7807 (transformation!5664 (rule!8422 token!511))))) (and b!3617390 b_free!94195 (= (toChars!7807 (transformation!5664 (h!43515 rules!3307))) (toChars!7807 (transformation!5664 (rule!8422 token!511))))) (and b!3617388 b_free!94191 (= (toChars!7807 (transformation!5664 anOtherTypeRule!33)) (toChars!7807 (transformation!5664 (rule!8422 token!511))))) b_lambda!107045)))

(check-sat (not b!3618027) (not d!1064427) (not d!1064445) (not b!3617933) (not bm!261711) (not b!3618034) (not b!3618276) (not b!3617944) (not b!3618017) (not d!1064773) (not b_lambda!107005) (not b!3618286) (not b!3618266) (not d!1064579) (not d!1064457) (not b!3617867) (not b!3617931) (not b!3618044) (not d!1064583) (not b!3618043) (not b!3617957) (not d!1064487) (not b!3618203) (not d!1064617) (not d!1064779) (not d!1064501) (not b!3617887) (not b!3617654) (not b!3617680) (not b!3618041) (not tb!207425) (not b!3617755) (not b!3617773) (not d!1064615) (not b!3618248) (not b!3618014) (not bm!261671) (not d!1064747) (not d!1064775) b_and!264403 (not b!3618244) (not d!1064541) (not tb!207481) (not d!1064517) (not d!1064751) (not b!3617998) (not bm!261712) (not b!3618035) (not b!3618274) (not b!3617949) (not b!3617754) (not b!3618042) (not d!1064521) (not d!1064623) (not b_next!94897) (not b_next!94909) (not b!3618291) (not b_lambda!107011) (not b!3618212) (not tb!207465) (not d!1064763) (not b!3618226) (not d!1064595) (not b!3617658) (not b!3617864) (not b_lambda!107033) (not b!3617988) (not d!1064639) (not b!3618023) (not b!3617952) b_and!264407 (not b!3618016) (not b!3618221) b_and!264399 (not d!1064647) (not bm!261725) b_and!264401 tp_is_empty!17929 (not b!3618290) (not d!1064569) (not b!3617893) (not d!1064769) (not b!3618267) (not d!1064765) (not d!1064585) (not b!3617756) (not bm!261699) (not b!3617741) (not d!1064757) (not b!3617954) (not d!1064657) (not b!3617544) (not b!3618292) (not b!3618246) (not b!3617991) (not b!3617548) (not b!3617870) (not bm!261710) b_and!264409 (not d!1064513) (not b!3617948) (not b!3617989) b_and!264417 (not b!3617585) (not b!3618045) (not b!3617884) (not tb!207457) (not b_next!94903) (not d!1064481) (not b!3617751) (not d!1064625) (not d!1064601) (not b_next!94901) (not d!1064599) (not b!3617863) (not tb!207535) (not b!3617956) (not b!3617760) (not b!3618225) (not b!3617990) (not b_next!94891) (not b!3617953) (not b_next!94893) (not b_next!94895) (not d!1064613) (not b!3617657) (not d!1064537) (not b!3617950) (not bm!261714) (not d!1064621) (not b_lambda!107041) (not bm!261686) (not b!3617820) (not b!3618039) (not b!3617785) (not d!1064591) (not b!3618026) (not d!1064527) (not b!3617662) (not b!3617985) (not b!3618268) (not d!1064659) (not tb!207473) (not d!1064581) (not b!3618051) (not b!3617787) (not b!3618229) (not d!1064759) (not b!3618031) (not b!3617869) (not d!1064767) (not b!3618048) (not b!3617866) (not b!3618025) b_and!264413 (not b_lambda!106997) (not b!3617791) (not b!3617545) b_and!264405 (not d!1064645) (not bm!261697) (not b!3618057) (not b!3617984) (not b!3617945) (not d!1064745) (not d!1064587) b_and!264411 (not d!1064631) (not b!3618058) (not b!3617821) (not b!3618254) (not b!3617983) (not d!1064611) (not b!3618228) (not bm!261721) (not b!3617628) (not bm!261723) (not d!1064439) (not d!1064761) (not b_next!94899) (not b!3617932) (not b_next!94889) (not b!3618001) (not b!3618275) (not b!3617752) (not d!1064629) (not d!1064743) (not b!3618285) (not d!1064539) (not b!3617771) (not d!1064597) (not d!1064471) (not b!3617553) (not b_lambda!107045) (not b!3618249) (not b!3618222) (not b!3618223) (not b!3617986) (not bm!261695) (not d!1064509) (not b_lambda!107035) (not bm!261705) (not b!3618022) (not tb!207527) (not d!1064511) (not b!3617549) (not b_next!94911) (not d!1064741) (not b_lambda!107043) (not b!3618240) (not d!1064491) (not b!3617819) (not b!3617883) (not b!3618050) (not d!1064641) b_and!264415 (not b!3618015) (not d!1064637) (not b!3618270) (not b!3617894) (not b!3618049) (not d!1064499) (not b!3617862) (not b!3618289) (not d!1064603) (not b!3617868) (not b!3617653) (not b!3618272) (not b!3618047) (not b_lambda!107031) (not bm!261696) (not b!3618037) (not d!1064429) (not b!3617656) (not b!3618227) (not b!3618271) (not d!1064649) (not b!3617547) (not b_lambda!107037) (not b!3617786) (not b!3617964) (not bm!261722) (not d!1064575) (not d!1064503) (not d!1064463) (not d!1064609))
(check-sat b_and!264403 b_and!264407 b_and!264399 b_and!264401 b_and!264409 b_and!264417 (not b_next!94891) b_and!264411 (not b_next!94911) b_and!264415 (not b_next!94897) (not b_next!94909) (not b_next!94903) (not b_next!94901) (not b_next!94893) (not b_next!94895) b_and!264413 b_and!264405 (not b_next!94889) (not b_next!94899))
