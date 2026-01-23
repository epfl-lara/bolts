; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!345226 () Bool)

(assert start!345226)

(declare-fun b!3679428 () Bool)

(declare-fun b_free!97417 () Bool)

(declare-fun b_next!98121 () Bool)

(assert (=> b!3679428 (= b_free!97417 (not b_next!98121))))

(declare-fun tp!1118638 () Bool)

(declare-fun b_and!274747 () Bool)

(assert (=> b!3679428 (= tp!1118638 b_and!274747)))

(declare-fun b_free!97419 () Bool)

(declare-fun b_next!98123 () Bool)

(assert (=> b!3679428 (= b_free!97419 (not b_next!98123))))

(declare-fun tp!1118636 () Bool)

(declare-fun b_and!274749 () Bool)

(assert (=> b!3679428 (= tp!1118636 b_and!274749)))

(declare-fun b!3679456 () Bool)

(declare-fun b_free!97421 () Bool)

(declare-fun b_next!98125 () Bool)

(assert (=> b!3679456 (= b_free!97421 (not b_next!98125))))

(declare-fun tp!1118627 () Bool)

(declare-fun b_and!274751 () Bool)

(assert (=> b!3679456 (= tp!1118627 b_and!274751)))

(declare-fun b_free!97423 () Bool)

(declare-fun b_next!98127 () Bool)

(assert (=> b!3679456 (= b_free!97423 (not b_next!98127))))

(declare-fun tp!1118624 () Bool)

(declare-fun b_and!274753 () Bool)

(assert (=> b!3679456 (= tp!1118624 b_and!274753)))

(declare-fun b!3679470 () Bool)

(declare-fun b_free!97425 () Bool)

(declare-fun b_next!98129 () Bool)

(assert (=> b!3679470 (= b_free!97425 (not b_next!98129))))

(declare-fun tp!1118632 () Bool)

(declare-fun b_and!274755 () Bool)

(assert (=> b!3679470 (= tp!1118632 b_and!274755)))

(declare-fun b_free!97427 () Bool)

(declare-fun b_next!98131 () Bool)

(assert (=> b!3679470 (= b_free!97427 (not b_next!98131))))

(declare-fun tp!1118626 () Bool)

(declare-fun b_and!274757 () Bool)

(assert (=> b!3679470 (= tp!1118626 b_and!274757)))

(declare-fun b!3679448 () Bool)

(declare-fun b_free!97429 () Bool)

(declare-fun b_next!98133 () Bool)

(assert (=> b!3679448 (= b_free!97429 (not b_next!98133))))

(declare-fun tp!1118633 () Bool)

(declare-fun b_and!274759 () Bool)

(assert (=> b!3679448 (= tp!1118633 b_and!274759)))

(declare-fun b_free!97431 () Bool)

(declare-fun b_next!98135 () Bool)

(assert (=> b!3679448 (= b_free!97431 (not b_next!98135))))

(declare-fun tp!1118631 () Bool)

(declare-fun b_and!274761 () Bool)

(assert (=> b!3679448 (= tp!1118631 b_and!274761)))

(declare-fun b!3679417 () Bool)

(declare-datatypes ((Unit!56760 0))(
  ( (Unit!56761) )
))
(declare-fun e!2278353 () Unit!56760)

(declare-fun Unit!56762 () Unit!56760)

(assert (=> b!3679417 (= e!2278353 Unit!56762)))

(declare-fun b!3679418 () Bool)

(declare-fun e!2278366 () Unit!56760)

(declare-fun Unit!56763 () Unit!56760)

(assert (=> b!3679418 (= e!2278366 Unit!56763)))

(declare-fun b!3679419 () Bool)

(assert (=> b!3679419 false))

(declare-fun lt!1285742 () Unit!56760)

(declare-fun call!266499 () Unit!56760)

(assert (=> b!3679419 (= lt!1285742 call!266499)))

(declare-fun call!266504 () Bool)

(assert (=> b!3679419 (not call!266504)))

(declare-datatypes ((C!21388 0))(
  ( (C!21389 (val!12742 Int)) )
))
(declare-fun lt!1285713 () C!21388)

(declare-datatypes ((List!38929 0))(
  ( (Nil!38805) (Cons!38805 (h!44225 (_ BitVec 16)) (t!300544 List!38929)) )
))
(declare-datatypes ((TokenValue!6072 0))(
  ( (FloatLiteralValue!12144 (text!42949 List!38929)) (TokenValueExt!6071 (__x!24361 Int)) (Broken!30360 (value!186931 List!38929)) (Object!6195) (End!6072) (Def!6072) (Underscore!6072) (Match!6072) (Else!6072) (Error!6072) (Case!6072) (If!6072) (Extends!6072) (Abstract!6072) (Class!6072) (Val!6072) (DelimiterValue!12144 (del!6132 List!38929)) (KeywordValue!6078 (value!186932 List!38929)) (CommentValue!12144 (value!186933 List!38929)) (WhitespaceValue!12144 (value!186934 List!38929)) (IndentationValue!6072 (value!186935 List!38929)) (String!43693) (Int32!6072) (Broken!30361 (value!186936 List!38929)) (Boolean!6073) (Unit!56764) (OperatorValue!6075 (op!6132 List!38929)) (IdentifierValue!12144 (value!186937 List!38929)) (IdentifierValue!12145 (value!186938 List!38929)) (WhitespaceValue!12145 (value!186939 List!38929)) (True!12144) (False!12144) (Broken!30362 (value!186940 List!38929)) (Broken!30363 (value!186941 List!38929)) (True!12145) (RightBrace!6072) (RightBracket!6072) (Colon!6072) (Null!6072) (Comma!6072) (LeftBracket!6072) (False!12145) (LeftBrace!6072) (ImaginaryLiteralValue!6072 (text!42950 List!38929)) (StringLiteralValue!18216 (value!186942 List!38929)) (EOFValue!6072 (value!186943 List!38929)) (IdentValue!6072 (value!186944 List!38929)) (DelimiterValue!12145 (value!186945 List!38929)) (DedentValue!6072 (value!186946 List!38929)) (NewLineValue!6072 (value!186947 List!38929)) (IntegerValue!18216 (value!186948 (_ BitVec 32)) (text!42951 List!38929)) (IntegerValue!18217 (value!186949 Int) (text!42952 List!38929)) (Times!6072) (Or!6072) (Equal!6072) (Minus!6072) (Broken!30364 (value!186950 List!38929)) (And!6072) (Div!6072) (LessEqual!6072) (Mod!6072) (Concat!16673) (Not!6072) (Plus!6072) (SpaceValue!6072 (value!186951 List!38929)) (IntegerValue!18218 (value!186952 Int) (text!42953 List!38929)) (StringLiteralValue!18217 (text!42954 List!38929)) (FloatLiteralValue!12145 (text!42955 List!38929)) (BytesLiteralValue!6072 (value!186953 List!38929)) (CommentValue!12145 (value!186954 List!38929)) (StringLiteralValue!18218 (value!186955 List!38929)) (ErrorTokenValue!6072 (msg!6133 List!38929)) )
))
(declare-datatypes ((Regex!10601 0))(
  ( (ElementMatch!10601 (c!636416 C!21388)) (Concat!16674 (regOne!21714 Regex!10601) (regTwo!21714 Regex!10601)) (EmptyExpr!10601) (Star!10601 (reg!10930 Regex!10601)) (EmptyLang!10601) (Union!10601 (regOne!21715 Regex!10601) (regTwo!21715 Regex!10601)) )
))
(declare-datatypes ((String!43694 0))(
  ( (String!43695 (value!186956 String)) )
))
(declare-datatypes ((List!38930 0))(
  ( (Nil!38806) (Cons!38806 (h!44226 C!21388) (t!300545 List!38930)) )
))
(declare-datatypes ((IArray!23763 0))(
  ( (IArray!23764 (innerList!11939 List!38930)) )
))
(declare-datatypes ((Conc!11879 0))(
  ( (Node!11879 (left!30282 Conc!11879) (right!30612 Conc!11879) (csize!23988 Int) (cheight!12090 Int)) (Leaf!18411 (xs!15081 IArray!23763) (csize!23989 Int)) (Empty!11879) )
))
(declare-datatypes ((BalanceConc!23372 0))(
  ( (BalanceConc!23373 (c!636417 Conc!11879)) )
))
(declare-datatypes ((TokenValueInjection!11572 0))(
  ( (TokenValueInjection!11573 (toValue!8138 Int) (toChars!7997 Int)) )
))
(declare-datatypes ((Rule!11484 0))(
  ( (Rule!11485 (regex!5842 Regex!10601) (tag!6644 String!43694) (isSeparator!5842 Bool) (transformation!5842 TokenValueInjection!11572)) )
))
(declare-datatypes ((List!38931 0))(
  ( (Nil!38807) (Cons!38807 (h!44227 Rule!11484) (t!300546 List!38931)) )
))
(declare-fun rules!3307 () List!38931)

(declare-datatypes ((Token!11050 0))(
  ( (Token!11051 (value!186957 TokenValue!6072) (rule!8678 Rule!11484) (size!29669 Int) (originalCharacters!6556 List!38930)) )
))
(declare-datatypes ((tuple2!38676 0))(
  ( (tuple2!38677 (_1!22472 Token!11050) (_2!22472 List!38930)) )
))
(declare-fun lt!1285734 () tuple2!38676)

(declare-datatypes ((LexerInterface!5431 0))(
  ( (LexerInterfaceExt!5428 (__x!24362 Int)) (Lexer!5429) )
))
(declare-fun thiss!23823 () LexerInterface!5431)

(declare-fun anOtherTypeRule!33 () Rule!11484)

(declare-fun lt!1285747 () Unit!56760)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!488 (LexerInterface!5431 List!38931 List!38931 Rule!11484 Rule!11484 C!21388) Unit!56760)

(assert (=> b!3679419 (= lt!1285747 (lemmaNonSepRuleNotContainsCharContainedInASepRule!488 thiss!23823 rules!3307 rules!3307 (rule!8678 (_1!22472 lt!1285734)) anOtherTypeRule!33 lt!1285713))))

(declare-fun e!2278341 () Unit!56760)

(declare-fun Unit!56765 () Unit!56760)

(assert (=> b!3679419 (= e!2278341 Unit!56765)))

(declare-fun b!3679420 () Bool)

(declare-fun res!1494817 () Bool)

(declare-fun e!2278356 () Bool)

(assert (=> b!3679420 (=> (not res!1494817) (not e!2278356))))

(declare-fun rule!403 () Rule!11484)

(assert (=> b!3679420 (= res!1494817 (not (= (isSeparator!5842 anOtherTypeRule!33) (isSeparator!5842 rule!403))))))

(declare-fun b!3679421 () Bool)

(declare-fun res!1494804 () Bool)

(declare-fun e!2278370 () Bool)

(assert (=> b!3679421 (=> res!1494804 e!2278370)))

(declare-fun contains!7751 (List!38930 C!21388) Bool)

(declare-fun usedCharacters!1054 (Regex!10601) List!38930)

(assert (=> b!3679421 (= res!1494804 (not (contains!7751 (usedCharacters!1054 (regex!5842 anOtherTypeRule!33)) lt!1285713)))))

(declare-fun b!3679422 () Bool)

(declare-fun e!2278364 () Unit!56760)

(declare-fun Unit!56766 () Unit!56760)

(assert (=> b!3679422 (= e!2278364 Unit!56766)))

(declare-fun b!3679423 () Bool)

(declare-fun e!2278362 () Unit!56760)

(declare-fun Unit!56767 () Unit!56760)

(assert (=> b!3679423 (= e!2278362 Unit!56767)))

(declare-fun b!3679424 () Bool)

(declare-fun e!2278371 () Unit!56760)

(declare-fun Unit!56768 () Unit!56760)

(assert (=> b!3679424 (= e!2278371 Unit!56768)))

(declare-fun b!3679425 () Bool)

(declare-fun e!2278339 () Bool)

(assert (=> b!3679425 (= e!2278370 e!2278339)))

(declare-fun res!1494810 () Bool)

(assert (=> b!3679425 (=> res!1494810 e!2278339)))

(declare-fun lt!1285723 () List!38930)

(declare-fun lt!1285725 () List!38930)

(declare-fun isPrefix!3205 (List!38930 List!38930) Bool)

(assert (=> b!3679425 (= res!1494810 (not (isPrefix!3205 lt!1285723 lt!1285725)))))

(declare-fun lt!1285712 () List!38930)

(assert (=> b!3679425 (isPrefix!3205 lt!1285723 lt!1285712)))

(declare-fun ++!9658 (List!38930 List!38930) List!38930)

(assert (=> b!3679425 (= lt!1285712 (++!9658 lt!1285723 (_2!22472 lt!1285734)))))

(declare-fun lt!1285714 () Unit!56760)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2124 (List!38930 List!38930) Unit!56760)

(assert (=> b!3679425 (= lt!1285714 (lemmaConcatTwoListThenFirstIsPrefix!2124 lt!1285723 (_2!22472 lt!1285734)))))

(declare-fun lt!1285737 () BalanceConc!23372)

(declare-fun list!14424 (BalanceConc!23372) List!38930)

(assert (=> b!3679425 (= lt!1285723 (list!14424 lt!1285737))))

(declare-fun charsOf!3856 (Token!11050) BalanceConc!23372)

(assert (=> b!3679425 (= lt!1285737 (charsOf!3856 (_1!22472 lt!1285734)))))

(declare-fun e!2278347 () Bool)

(assert (=> b!3679425 e!2278347))

(declare-fun res!1494820 () Bool)

(assert (=> b!3679425 (=> (not res!1494820) (not e!2278347))))

(declare-datatypes ((Option!8312 0))(
  ( (None!8311) (Some!8311 (v!38247 Rule!11484)) )
))
(declare-fun lt!1285748 () Option!8312)

(declare-fun isDefined!6544 (Option!8312) Bool)

(assert (=> b!3679425 (= res!1494820 (isDefined!6544 lt!1285748))))

(declare-fun getRuleFromTag!1446 (LexerInterface!5431 List!38931 String!43694) Option!8312)

(assert (=> b!3679425 (= lt!1285748 (getRuleFromTag!1446 thiss!23823 rules!3307 (tag!6644 (rule!8678 (_1!22472 lt!1285734)))))))

(declare-fun lt!1285745 () Unit!56760)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1446 (LexerInterface!5431 List!38931 List!38930 Token!11050) Unit!56760)

(assert (=> b!3679425 (= lt!1285745 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1446 thiss!23823 rules!3307 lt!1285725 (_1!22472 lt!1285734)))))

(declare-datatypes ((Option!8313 0))(
  ( (None!8312) (Some!8312 (v!38248 tuple2!38676)) )
))
(declare-fun lt!1285741 () Option!8313)

(declare-fun get!12843 (Option!8313) tuple2!38676)

(assert (=> b!3679425 (= lt!1285734 (get!12843 lt!1285741))))

(declare-fun lt!1285696 () Unit!56760)

(declare-fun suffix!1395 () List!38930)

(declare-fun lt!1285694 () List!38930)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1109 (LexerInterface!5431 List!38931 List!38930 List!38930) Unit!56760)

(assert (=> b!3679425 (= lt!1285696 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1109 thiss!23823 rules!3307 lt!1285694 suffix!1395))))

(declare-fun maxPrefix!2965 (LexerInterface!5431 List!38931 List!38930) Option!8313)

(assert (=> b!3679425 (= lt!1285741 (maxPrefix!2965 thiss!23823 rules!3307 lt!1285725))))

(assert (=> b!3679425 (isPrefix!3205 lt!1285694 lt!1285725)))

(declare-fun lt!1285724 () Unit!56760)

(assert (=> b!3679425 (= lt!1285724 (lemmaConcatTwoListThenFirstIsPrefix!2124 lt!1285694 suffix!1395))))

(assert (=> b!3679425 (= lt!1285725 (++!9658 lt!1285694 suffix!1395))))

(declare-fun b!3679426 () Bool)

(declare-fun e!2278352 () Bool)

(assert (=> b!3679426 (= e!2278356 e!2278352)))

(declare-fun res!1494814 () Bool)

(assert (=> b!3679426 (=> (not res!1494814) (not e!2278352))))

(declare-fun lt!1285730 () Option!8313)

(declare-fun isDefined!6545 (Option!8313) Bool)

(assert (=> b!3679426 (= res!1494814 (isDefined!6545 lt!1285730))))

(assert (=> b!3679426 (= lt!1285730 (maxPrefix!2965 thiss!23823 rules!3307 lt!1285694))))

(declare-fun lt!1285700 () BalanceConc!23372)

(assert (=> b!3679426 (= lt!1285694 (list!14424 lt!1285700))))

(declare-fun token!511 () Token!11050)

(assert (=> b!3679426 (= lt!1285700 (charsOf!3856 token!511))))

(declare-fun b!3679427 () Bool)

(declare-fun e!2278348 () Bool)

(assert (=> b!3679427 (= e!2278352 e!2278348)))

(declare-fun res!1494825 () Bool)

(assert (=> b!3679427 (=> (not res!1494825) (not e!2278348))))

(declare-fun lt!1285717 () tuple2!38676)

(assert (=> b!3679427 (= res!1494825 (= (_1!22472 lt!1285717) token!511))))

(assert (=> b!3679427 (= lt!1285717 (get!12843 lt!1285730))))

(declare-fun e!2278360 () Bool)

(assert (=> b!3679428 (= e!2278360 (and tp!1118638 tp!1118636))))

(declare-fun b!3679429 () Bool)

(declare-fun e!2278354 () Unit!56760)

(declare-fun e!2278349 () Unit!56760)

(assert (=> b!3679429 (= e!2278354 e!2278349)))

(declare-fun c!636407 () Bool)

(assert (=> b!3679429 (= c!636407 (not (isSeparator!5842 (rule!8678 (_1!22472 lt!1285734)))))))

(declare-fun b!3679430 () Bool)

(declare-fun Unit!56769 () Unit!56760)

(assert (=> b!3679430 (= e!2278349 Unit!56769)))

(declare-fun b!3679431 () Bool)

(declare-fun e!2278369 () Bool)

(declare-fun tp_is_empty!18285 () Bool)

(declare-fun tp!1118630 () Bool)

(assert (=> b!3679431 (= e!2278369 (and tp_is_empty!18285 tp!1118630))))

(declare-fun b!3679432 () Bool)

(declare-fun e!2278358 () Bool)

(assert (=> b!3679432 e!2278358))

(declare-fun res!1494824 () Bool)

(assert (=> b!3679432 (=> (not res!1494824) (not e!2278358))))

(declare-fun matchR!5170 (Regex!10601 List!38930) Bool)

(assert (=> b!3679432 (= res!1494824 (not (matchR!5170 (regex!5842 (rule!8678 (_1!22472 lt!1285734))) lt!1285694)))))

(declare-fun lt!1285736 () Unit!56760)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!250 (LexerInterface!5431 List!38931 Rule!11484 List!38930 List!38930 Rule!11484) Unit!56760)

(assert (=> b!3679432 (= lt!1285736 (lemmaMaxPrefNoSmallerRuleMatches!250 thiss!23823 rules!3307 rule!403 lt!1285694 lt!1285694 (rule!8678 (_1!22472 lt!1285734))))))

(declare-fun isEmpty!23046 (List!38930) Bool)

(declare-fun getSuffix!1758 (List!38930 List!38930) List!38930)

(assert (=> b!3679432 (isEmpty!23046 (getSuffix!1758 lt!1285694 lt!1285694))))

(declare-fun lt!1285699 () Unit!56760)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!222 (List!38930) Unit!56760)

(assert (=> b!3679432 (= lt!1285699 (lemmaGetSuffixOnListWithItSelfIsEmpty!222 lt!1285694))))

(declare-fun Unit!56770 () Unit!56760)

(assert (=> b!3679432 (= e!2278362 Unit!56770)))

(declare-fun bm!266494 () Bool)

(declare-fun call!266503 () List!38930)

(assert (=> bm!266494 (= call!266503 (usedCharacters!1054 (regex!5842 (rule!8678 (_1!22472 lt!1285734)))))))

(declare-fun res!1494812 () Bool)

(assert (=> start!345226 (=> (not res!1494812) (not e!2278356))))

(get-info :version)

(assert (=> start!345226 (= res!1494812 ((_ is Lexer!5429) thiss!23823))))

(assert (=> start!345226 e!2278356))

(declare-fun e!2278350 () Bool)

(assert (=> start!345226 e!2278350))

(assert (=> start!345226 e!2278369))

(assert (=> start!345226 true))

(declare-fun e!2278359 () Bool)

(declare-fun inv!52301 (Token!11050) Bool)

(assert (=> start!345226 (and (inv!52301 token!511) e!2278359)))

(declare-fun e!2278351 () Bool)

(assert (=> start!345226 e!2278351))

(declare-fun e!2278368 () Bool)

(assert (=> start!345226 e!2278368))

(declare-fun b!3679433 () Bool)

(declare-fun res!1494805 () Bool)

(assert (=> b!3679433 (=> res!1494805 e!2278370)))

(declare-fun sepAndNonSepRulesDisjointChars!2010 (List!38931 List!38931) Bool)

(assert (=> b!3679433 (= res!1494805 (not (sepAndNonSepRulesDisjointChars!2010 rules!3307 rules!3307)))))

(declare-fun bm!266495 () Bool)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!790 (Regex!10601 List!38930 C!21388) Unit!56760)

(assert (=> bm!266495 (= call!266499 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!790 (regex!5842 (rule!8678 (_1!22472 lt!1285734))) lt!1285723 lt!1285713))))

(declare-fun b!3679434 () Bool)

(declare-fun e!2278374 () Bool)

(declare-fun e!2278346 () Bool)

(assert (=> b!3679434 (= e!2278374 e!2278346)))

(declare-fun res!1494811 () Bool)

(assert (=> b!3679434 (=> res!1494811 e!2278346)))

(declare-fun lt!1285703 () List!38930)

(assert (=> b!3679434 (= res!1494811 (not (= (++!9658 lt!1285694 lt!1285703) lt!1285725)))))

(declare-fun maxPrefixOneRule!2103 (LexerInterface!5431 Rule!11484 List!38930) Option!8313)

(declare-fun apply!9344 (TokenValueInjection!11572 BalanceConc!23372) TokenValue!6072)

(declare-fun seqFromList!4391 (List!38930) BalanceConc!23372)

(declare-fun size!29670 (List!38930) Int)

(assert (=> b!3679434 (= (maxPrefixOneRule!2103 thiss!23823 rule!403 lt!1285725) (Some!8312 (tuple2!38677 (Token!11051 (apply!9344 (transformation!5842 rule!403) (seqFromList!4391 lt!1285694)) rule!403 (size!29670 lt!1285694) lt!1285694) lt!1285703)))))

(declare-fun lt!1285722 () Unit!56760)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1159 (LexerInterface!5431 List!38931 List!38930 List!38930 List!38930 Rule!11484) Unit!56760)

(assert (=> b!3679434 (= lt!1285722 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1159 thiss!23823 rules!3307 lt!1285694 lt!1285725 lt!1285703 rule!403))))

(assert (=> b!3679434 (= lt!1285703 (getSuffix!1758 lt!1285725 lt!1285694))))

(declare-fun lt!1285706 () Unit!56760)

(assert (=> b!3679434 (= lt!1285706 e!2278364)))

(declare-fun c!636409 () Bool)

(assert (=> b!3679434 (= c!636409 (not (= (rule!8678 (_1!22472 lt!1285734)) (rule!8678 token!511))))))

(assert (=> b!3679434 (= lt!1285723 lt!1285694)))

(declare-fun lt!1285740 () Unit!56760)

(declare-fun lemmaIsPrefixSameLengthThenSameList!667 (List!38930 List!38930 List!38930) Unit!56760)

(assert (=> b!3679434 (= lt!1285740 (lemmaIsPrefixSameLengthThenSameList!667 lt!1285723 lt!1285694 lt!1285725))))

(declare-fun lt!1285708 () Unit!56760)

(assert (=> b!3679434 (= lt!1285708 e!2278371)))

(declare-fun c!636414 () Bool)

(declare-fun lt!1285711 () Int)

(declare-fun lt!1285739 () Int)

(assert (=> b!3679434 (= c!636414 (< lt!1285711 lt!1285739))))

(declare-fun lt!1285752 () Unit!56760)

(declare-fun e!2278340 () Unit!56760)

(assert (=> b!3679434 (= lt!1285752 e!2278340)))

(declare-fun c!636412 () Bool)

(assert (=> b!3679434 (= c!636412 (> lt!1285711 lt!1285739))))

(declare-fun size!29671 (BalanceConc!23372) Int)

(assert (=> b!3679434 (= lt!1285739 (size!29671 lt!1285700))))

(declare-fun lt!1285735 () Unit!56760)

(assert (=> b!3679434 (= lt!1285735 e!2278354)))

(declare-fun c!636406 () Bool)

(assert (=> b!3679434 (= c!636406 (isSeparator!5842 rule!403))))

(declare-fun lt!1285701 () Unit!56760)

(declare-fun e!2278345 () Unit!56760)

(assert (=> b!3679434 (= lt!1285701 e!2278345)))

(declare-fun c!636413 () Bool)

(declare-fun lt!1285704 () List!38930)

(declare-fun lt!1285721 () C!21388)

(assert (=> b!3679434 (= c!636413 (not (contains!7751 lt!1285704 lt!1285721)))))

(declare-fun head!7894 (List!38930) C!21388)

(assert (=> b!3679434 (= lt!1285721 (head!7894 lt!1285723))))

(declare-fun b!3679435 () Bool)

(assert (=> b!3679435 (= e!2278358 false)))

(declare-fun b!3679436 () Bool)

(declare-fun res!1494803 () Bool)

(assert (=> b!3679436 (=> (not res!1494803) (not e!2278356))))

(declare-fun contains!7752 (List!38931 Rule!11484) Bool)

(assert (=> b!3679436 (= res!1494803 (contains!7752 rules!3307 rule!403))))

(declare-fun b!3679437 () Bool)

(assert (=> b!3679437 false))

(declare-fun lt!1285727 () Unit!56760)

(assert (=> b!3679437 (= lt!1285727 (lemmaMaxPrefNoSmallerRuleMatches!250 thiss!23823 rules!3307 (rule!8678 (_1!22472 lt!1285734)) lt!1285694 lt!1285725 rule!403))))

(declare-fun Unit!56771 () Unit!56760)

(assert (=> b!3679437 (= e!2278353 Unit!56771)))

(declare-fun b!3679438 () Bool)

(declare-fun e!2278357 () Bool)

(assert (=> b!3679438 (= e!2278348 (not e!2278357))))

(declare-fun res!1494807 () Bool)

(assert (=> b!3679438 (=> res!1494807 e!2278357)))

(assert (=> b!3679438 (= res!1494807 (not (matchR!5170 (regex!5842 rule!403) lt!1285694)))))

(declare-fun ruleValid!2106 (LexerInterface!5431 Rule!11484) Bool)

(assert (=> b!3679438 (ruleValid!2106 thiss!23823 rule!403)))

(declare-fun lt!1285733 () Unit!56760)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1260 (LexerInterface!5431 Rule!11484 List!38931) Unit!56760)

(assert (=> b!3679438 (= lt!1285733 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1260 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3679439 () Bool)

(declare-fun res!1494815 () Bool)

(assert (=> b!3679439 (=> (not res!1494815) (not e!2278348))))

(assert (=> b!3679439 (= res!1494815 (isEmpty!23046 (_2!22472 lt!1285717)))))

(declare-fun b!3679440 () Bool)

(declare-fun res!1494816 () Bool)

(assert (=> b!3679440 (=> (not res!1494816) (not e!2278356))))

(declare-fun isEmpty!23047 (List!38931) Bool)

(assert (=> b!3679440 (= res!1494816 (not (isEmpty!23047 rules!3307)))))

(declare-fun b!3679441 () Bool)

(declare-fun res!1494822 () Bool)

(assert (=> b!3679441 (=> (not res!1494822) (not e!2278348))))

(assert (=> b!3679441 (= res!1494822 (= (rule!8678 token!511) rule!403))))

(declare-fun b!3679442 () Bool)

(declare-fun e!2278372 () Bool)

(declare-fun tp!1118625 () Bool)

(assert (=> b!3679442 (= e!2278350 (and e!2278372 tp!1118625))))

(declare-fun b!3679443 () Bool)

(assert (=> b!3679443 false))

(declare-fun lt!1285718 () Unit!56760)

(assert (=> b!3679443 (= lt!1285718 call!266499)))

(assert (=> b!3679443 (not call!266504)))

(declare-fun lt!1285729 () Unit!56760)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!370 (LexerInterface!5431 List!38931 List!38931 Rule!11484 Rule!11484 C!21388) Unit!56760)

(assert (=> b!3679443 (= lt!1285729 (lemmaSepRuleNotContainsCharContainedInANonSepRule!370 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8678 (_1!22472 lt!1285734)) lt!1285713))))

(declare-fun Unit!56772 () Unit!56760)

(assert (=> b!3679443 (= e!2278341 Unit!56772)))

(declare-fun b!3679444 () Bool)

(declare-fun Unit!56773 () Unit!56760)

(assert (=> b!3679444 (= e!2278371 Unit!56773)))

(declare-fun lt!1285732 () Unit!56760)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!384 (LexerInterface!5431 List!38931 Rule!11484 List!38930 List!38930 List!38930 Rule!11484) Unit!56760)

(assert (=> b!3679444 (= lt!1285732 (lemmaMaxPrefixOutputsMaxPrefix!384 thiss!23823 rules!3307 (rule!8678 (_1!22472 lt!1285734)) lt!1285723 lt!1285725 lt!1285694 rule!403))))

(assert (=> b!3679444 false))

(declare-fun b!3679445 () Bool)

(assert (=> b!3679445 (= e!2278357 e!2278370)))

(declare-fun res!1494809 () Bool)

(assert (=> b!3679445 (=> res!1494809 e!2278370)))

(assert (=> b!3679445 (= res!1494809 (contains!7751 lt!1285704 lt!1285713))))

(assert (=> b!3679445 (= lt!1285713 (head!7894 suffix!1395))))

(assert (=> b!3679445 (= lt!1285704 (usedCharacters!1054 (regex!5842 rule!403)))))

(declare-fun b!3679446 () Bool)

(declare-fun res!1494806 () Bool)

(assert (=> b!3679446 (=> (not res!1494806) (not e!2278356))))

(declare-fun rulesInvariant!4828 (LexerInterface!5431 List!38931) Bool)

(assert (=> b!3679446 (= res!1494806 (rulesInvariant!4828 thiss!23823 rules!3307))))

(declare-fun b!3679447 () Bool)

(declare-fun e!2278355 () Bool)

(declare-fun lt!1285716 () Rule!11484)

(assert (=> b!3679447 (= e!2278355 (= (rule!8678 (_1!22472 lt!1285734)) lt!1285716))))

(declare-fun e!2278344 () Bool)

(assert (=> b!3679448 (= e!2278344 (and tp!1118633 tp!1118631))))

(declare-fun b!3679449 () Bool)

(declare-fun e!2278361 () Bool)

(declare-fun tp!1118628 () Bool)

(declare-fun inv!21 (TokenValue!6072) Bool)

(assert (=> b!3679449 (= e!2278359 (and (inv!21 (value!186957 token!511)) e!2278361 tp!1118628))))

(declare-fun b!3679450 () Bool)

(declare-fun Unit!56774 () Unit!56760)

(assert (=> b!3679450 (= e!2278340 Unit!56774)))

(declare-fun b!3679451 () Bool)

(declare-fun Unit!56775 () Unit!56760)

(assert (=> b!3679451 (= e!2278345 Unit!56775)))

(declare-fun tp!1118629 () Bool)

(declare-fun e!2278342 () Bool)

(declare-fun b!3679452 () Bool)

(declare-fun inv!52298 (String!43694) Bool)

(declare-fun inv!52302 (TokenValueInjection!11572) Bool)

(assert (=> b!3679452 (= e!2278372 (and tp!1118629 (inv!52298 (tag!6644 (h!44227 rules!3307))) (inv!52302 (transformation!5842 (h!44227 rules!3307))) e!2278342))))

(declare-fun b!3679453 () Bool)

(assert (=> b!3679453 (= e!2278347 e!2278355)))

(declare-fun res!1494813 () Bool)

(assert (=> b!3679453 (=> (not res!1494813) (not e!2278355))))

(assert (=> b!3679453 (= res!1494813 (matchR!5170 (regex!5842 lt!1285716) (list!14424 (charsOf!3856 (_1!22472 lt!1285734)))))))

(declare-fun get!12844 (Option!8312) Rule!11484)

(assert (=> b!3679453 (= lt!1285716 (get!12844 lt!1285748))))

(declare-fun b!3679454 () Bool)

(declare-fun res!1494808 () Bool)

(assert (=> b!3679454 (=> (not res!1494808) (not e!2278356))))

(assert (=> b!3679454 (= res!1494808 (contains!7752 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3679455 () Bool)

(declare-fun Unit!56776 () Unit!56760)

(assert (=> b!3679455 (= e!2278345 Unit!56776)))

(declare-fun lt!1285743 () Unit!56760)

(assert (=> b!3679455 (= lt!1285743 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!790 (regex!5842 rule!403) lt!1285694 lt!1285721))))

(assert (=> b!3679455 false))

(declare-fun e!2278343 () Bool)

(assert (=> b!3679456 (= e!2278343 (and tp!1118627 tp!1118624))))

(declare-fun b!3679457 () Bool)

(assert (=> b!3679457 (= e!2278346 (= lt!1285712 lt!1285725))))

(declare-fun bm!266496 () Bool)

(assert (=> bm!266496 (= call!266504 (contains!7751 call!266503 lt!1285713))))

(declare-fun tp!1118635 () Bool)

(declare-fun b!3679458 () Bool)

(assert (=> b!3679458 (= e!2278361 (and tp!1118635 (inv!52298 (tag!6644 (rule!8678 token!511))) (inv!52302 (transformation!5842 (rule!8678 token!511))) e!2278343))))

(declare-fun b!3679459 () Bool)

(declare-fun tp!1118637 () Bool)

(assert (=> b!3679459 (= e!2278351 (and tp!1118637 (inv!52298 (tag!6644 rule!403)) (inv!52302 (transformation!5842 rule!403)) e!2278360))))

(declare-fun b!3679460 () Bool)

(declare-fun e!2278363 () Bool)

(assert (=> b!3679460 (= e!2278339 e!2278363)))

(declare-fun res!1494823 () Bool)

(assert (=> b!3679460 (=> res!1494823 e!2278363)))

(declare-fun lt!1285751 () TokenValue!6072)

(assert (=> b!3679460 (= res!1494823 (not (= lt!1285741 (Some!8312 (tuple2!38677 (Token!11051 lt!1285751 (rule!8678 (_1!22472 lt!1285734)) lt!1285711 lt!1285723) (_2!22472 lt!1285734))))))))

(assert (=> b!3679460 (= lt!1285711 (size!29671 lt!1285737))))

(assert (=> b!3679460 (= lt!1285751 (apply!9344 (transformation!5842 (rule!8678 (_1!22472 lt!1285734))) lt!1285737))))

(declare-fun lt!1285715 () Unit!56760)

(declare-fun lemmaCharactersSize!887 (Token!11050) Unit!56760)

(assert (=> b!3679460 (= lt!1285715 (lemmaCharactersSize!887 (_1!22472 lt!1285734)))))

(declare-fun lt!1285697 () Unit!56760)

(declare-fun lemmaEqSameImage!1025 (TokenValueInjection!11572 BalanceConc!23372 BalanceConc!23372) Unit!56760)

(assert (=> b!3679460 (= lt!1285697 (lemmaEqSameImage!1025 (transformation!5842 (rule!8678 (_1!22472 lt!1285734))) lt!1285737 (seqFromList!4391 (originalCharacters!6556 (_1!22472 lt!1285734)))))))

(declare-fun lt!1285728 () Unit!56760)

(declare-fun lemmaSemiInverse!1591 (TokenValueInjection!11572 BalanceConc!23372) Unit!56760)

(assert (=> b!3679460 (= lt!1285728 (lemmaSemiInverse!1591 (transformation!5842 (rule!8678 (_1!22472 lt!1285734))) lt!1285737))))

(declare-fun b!3679461 () Bool)

(assert (=> b!3679461 (= e!2278354 e!2278366)))

(declare-fun c!636410 () Bool)

(assert (=> b!3679461 (= c!636410 (isSeparator!5842 (rule!8678 (_1!22472 lt!1285734))))))

(declare-fun bm!266497 () Bool)

(declare-fun call!266500 () List!38930)

(assert (=> bm!266497 (= call!266500 (usedCharacters!1054 (regex!5842 (rule!8678 (_1!22472 lt!1285734)))))))

(declare-fun b!3679462 () Bool)

(assert (=> b!3679462 false))

(declare-fun lt!1285749 () Unit!56760)

(declare-fun call!266501 () Unit!56760)

(assert (=> b!3679462 (= lt!1285749 call!266501)))

(declare-fun call!266502 () Bool)

(assert (=> b!3679462 (not call!266502)))

(declare-fun lt!1285750 () Unit!56760)

(assert (=> b!3679462 (= lt!1285750 (lemmaSepRuleNotContainsCharContainedInANonSepRule!370 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8678 (_1!22472 lt!1285734)) lt!1285721))))

(declare-fun Unit!56777 () Unit!56760)

(assert (=> b!3679462 (= e!2278366 Unit!56777)))

(declare-fun b!3679463 () Bool)

(assert (=> b!3679463 false))

(declare-fun lt!1285709 () Unit!56760)

(assert (=> b!3679463 (= lt!1285709 call!266501)))

(assert (=> b!3679463 (not call!266502)))

(declare-fun lt!1285705 () Unit!56760)

(assert (=> b!3679463 (= lt!1285705 (lemmaNonSepRuleNotContainsCharContainedInASepRule!488 thiss!23823 rules!3307 rules!3307 (rule!8678 (_1!22472 lt!1285734)) rule!403 lt!1285721))))

(declare-fun Unit!56778 () Unit!56760)

(assert (=> b!3679463 (= e!2278349 Unit!56778)))

(declare-fun b!3679464 () Bool)

(declare-fun res!1494819 () Bool)

(assert (=> b!3679464 (=> res!1494819 e!2278357)))

(assert (=> b!3679464 (= res!1494819 (isEmpty!23046 suffix!1395))))

(declare-fun b!3679465 () Bool)

(declare-fun Unit!56779 () Unit!56760)

(assert (=> b!3679465 (= e!2278364 Unit!56779)))

(declare-fun lt!1285738 () Int)

(declare-fun getIndex!510 (List!38931 Rule!11484) Int)

(assert (=> b!3679465 (= lt!1285738 (getIndex!510 rules!3307 (rule!8678 (_1!22472 lt!1285734))))))

(declare-fun lt!1285744 () Int)

(assert (=> b!3679465 (= lt!1285744 (getIndex!510 rules!3307 rule!403))))

(declare-fun c!636411 () Bool)

(assert (=> b!3679465 (= c!636411 (< lt!1285738 lt!1285744))))

(declare-fun lt!1285731 () Unit!56760)

(assert (=> b!3679465 (= lt!1285731 e!2278362)))

(declare-fun c!636408 () Bool)

(assert (=> b!3679465 (= c!636408 (< lt!1285744 lt!1285738))))

(declare-fun lt!1285698 () Unit!56760)

(assert (=> b!3679465 (= lt!1285698 e!2278353)))

(declare-fun lt!1285695 () Unit!56760)

(declare-fun lemmaSameIndexThenSameElement!242 (List!38931 Rule!11484 Rule!11484) Unit!56760)

(assert (=> b!3679465 (= lt!1285695 (lemmaSameIndexThenSameElement!242 rules!3307 (rule!8678 (_1!22472 lt!1285734)) rule!403))))

(assert (=> b!3679465 false))

(declare-fun b!3679466 () Bool)

(assert (=> b!3679466 (= e!2278340 e!2278341)))

(declare-fun lt!1285710 () Unit!56760)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!150 (List!38930 List!38930 List!38930 List!38930) Unit!56760)

(assert (=> b!3679466 (= lt!1285710 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!150 lt!1285694 suffix!1395 lt!1285723 lt!1285725))))

(assert (=> b!3679466 (contains!7751 lt!1285723 lt!1285713)))

(declare-fun c!636415 () Bool)

(assert (=> b!3679466 (= c!636415 (isSeparator!5842 rule!403))))

(declare-fun b!3679467 () Bool)

(declare-fun res!1494821 () Bool)

(assert (=> b!3679467 (=> res!1494821 e!2278339)))

(assert (=> b!3679467 (= res!1494821 (not (matchR!5170 (regex!5842 (rule!8678 (_1!22472 lt!1285734))) lt!1285723)))))

(declare-fun b!3679468 () Bool)

(assert (=> b!3679468 (= e!2278363 e!2278374)))

(declare-fun res!1494818 () Bool)

(assert (=> b!3679468 (=> res!1494818 e!2278374)))

(declare-fun lt!1285726 () Option!8313)

(declare-fun lt!1285702 () List!38930)

(assert (=> b!3679468 (= res!1494818 (or (not (= lt!1285702 (_2!22472 lt!1285734))) (not (= lt!1285726 (Some!8312 (tuple2!38677 (_1!22472 lt!1285734) lt!1285702))))))))

(assert (=> b!3679468 (= (_2!22472 lt!1285734) lt!1285702)))

(declare-fun lt!1285719 () Unit!56760)

(declare-fun lemmaSamePrefixThenSameSuffix!1532 (List!38930 List!38930 List!38930 List!38930 List!38930) Unit!56760)

(assert (=> b!3679468 (= lt!1285719 (lemmaSamePrefixThenSameSuffix!1532 lt!1285723 (_2!22472 lt!1285734) lt!1285723 lt!1285702 lt!1285725))))

(assert (=> b!3679468 (= lt!1285702 (getSuffix!1758 lt!1285725 lt!1285723))))

(declare-fun lt!1285707 () Int)

(declare-fun lt!1285746 () TokenValue!6072)

(assert (=> b!3679468 (= lt!1285726 (Some!8312 (tuple2!38677 (Token!11051 lt!1285746 (rule!8678 (_1!22472 lt!1285734)) lt!1285707 lt!1285723) (_2!22472 lt!1285734))))))

(assert (=> b!3679468 (= lt!1285726 (maxPrefixOneRule!2103 thiss!23823 (rule!8678 (_1!22472 lt!1285734)) lt!1285725))))

(assert (=> b!3679468 (= lt!1285707 (size!29670 lt!1285723))))

(assert (=> b!3679468 (= lt!1285746 (apply!9344 (transformation!5842 (rule!8678 (_1!22472 lt!1285734))) (seqFromList!4391 lt!1285723)))))

(declare-fun lt!1285720 () Unit!56760)

(assert (=> b!3679468 (= lt!1285720 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1159 thiss!23823 rules!3307 lt!1285723 lt!1285725 (_2!22472 lt!1285734) (rule!8678 (_1!22472 lt!1285734))))))

(declare-fun b!3679469 () Bool)

(declare-fun tp!1118634 () Bool)

(assert (=> b!3679469 (= e!2278368 (and tp!1118634 (inv!52298 (tag!6644 anOtherTypeRule!33)) (inv!52302 (transformation!5842 anOtherTypeRule!33)) e!2278344))))

(declare-fun bm!266498 () Bool)

(assert (=> bm!266498 (= call!266502 (contains!7751 call!266500 lt!1285721))))

(declare-fun bm!266499 () Bool)

(assert (=> bm!266499 (= call!266501 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!790 (regex!5842 (rule!8678 (_1!22472 lt!1285734))) lt!1285723 lt!1285721))))

(assert (=> b!3679470 (= e!2278342 (and tp!1118632 tp!1118626))))

(assert (= (and start!345226 res!1494812) b!3679440))

(assert (= (and b!3679440 res!1494816) b!3679446))

(assert (= (and b!3679446 res!1494806) b!3679436))

(assert (= (and b!3679436 res!1494803) b!3679454))

(assert (= (and b!3679454 res!1494808) b!3679420))

(assert (= (and b!3679420 res!1494817) b!3679426))

(assert (= (and b!3679426 res!1494814) b!3679427))

(assert (= (and b!3679427 res!1494825) b!3679439))

(assert (= (and b!3679439 res!1494815) b!3679441))

(assert (= (and b!3679441 res!1494822) b!3679438))

(assert (= (and b!3679438 (not res!1494807)) b!3679464))

(assert (= (and b!3679464 (not res!1494819)) b!3679445))

(assert (= (and b!3679445 (not res!1494809)) b!3679421))

(assert (= (and b!3679421 (not res!1494804)) b!3679433))

(assert (= (and b!3679433 (not res!1494805)) b!3679425))

(assert (= (and b!3679425 res!1494820) b!3679453))

(assert (= (and b!3679453 res!1494813) b!3679447))

(assert (= (and b!3679425 (not res!1494810)) b!3679467))

(assert (= (and b!3679467 (not res!1494821)) b!3679460))

(assert (= (and b!3679460 (not res!1494823)) b!3679468))

(assert (= (and b!3679468 (not res!1494818)) b!3679434))

(assert (= (and b!3679434 c!636413) b!3679455))

(assert (= (and b!3679434 (not c!636413)) b!3679451))

(assert (= (and b!3679434 c!636406) b!3679429))

(assert (= (and b!3679434 (not c!636406)) b!3679461))

(assert (= (and b!3679429 c!636407) b!3679463))

(assert (= (and b!3679429 (not c!636407)) b!3679430))

(assert (= (and b!3679461 c!636410) b!3679462))

(assert (= (and b!3679461 (not c!636410)) b!3679418))

(assert (= (or b!3679463 b!3679462) bm!266499))

(assert (= (or b!3679463 b!3679462) bm!266497))

(assert (= (or b!3679463 b!3679462) bm!266498))

(assert (= (and b!3679434 c!636412) b!3679466))

(assert (= (and b!3679434 (not c!636412)) b!3679450))

(assert (= (and b!3679466 c!636415) b!3679443))

(assert (= (and b!3679466 (not c!636415)) b!3679419))

(assert (= (or b!3679443 b!3679419) bm!266495))

(assert (= (or b!3679443 b!3679419) bm!266494))

(assert (= (or b!3679443 b!3679419) bm!266496))

(assert (= (and b!3679434 c!636414) b!3679444))

(assert (= (and b!3679434 (not c!636414)) b!3679424))

(assert (= (and b!3679434 c!636409) b!3679465))

(assert (= (and b!3679434 (not c!636409)) b!3679422))

(assert (= (and b!3679465 c!636411) b!3679432))

(assert (= (and b!3679465 (not c!636411)) b!3679423))

(assert (= (and b!3679432 res!1494824) b!3679435))

(assert (= (and b!3679465 c!636408) b!3679437))

(assert (= (and b!3679465 (not c!636408)) b!3679417))

(assert (= (and b!3679434 (not res!1494811)) b!3679457))

(assert (= b!3679452 b!3679470))

(assert (= b!3679442 b!3679452))

(assert (= (and start!345226 ((_ is Cons!38807) rules!3307)) b!3679442))

(assert (= (and start!345226 ((_ is Cons!38806) suffix!1395)) b!3679431))

(assert (= b!3679458 b!3679456))

(assert (= b!3679449 b!3679458))

(assert (= start!345226 b!3679449))

(assert (= b!3679459 b!3679428))

(assert (= start!345226 b!3679459))

(assert (= b!3679469 b!3679448))

(assert (= start!345226 b!3679469))

(declare-fun m!4189607 () Bool)

(assert (=> b!3679459 m!4189607))

(declare-fun m!4189609 () Bool)

(assert (=> b!3679459 m!4189609))

(declare-fun m!4189611 () Bool)

(assert (=> b!3679427 m!4189611))

(declare-fun m!4189613 () Bool)

(assert (=> b!3679463 m!4189613))

(declare-fun m!4189615 () Bool)

(assert (=> start!345226 m!4189615))

(declare-fun m!4189617 () Bool)

(assert (=> b!3679452 m!4189617))

(declare-fun m!4189619 () Bool)

(assert (=> b!3679452 m!4189619))

(declare-fun m!4189621 () Bool)

(assert (=> b!3679468 m!4189621))

(declare-fun m!4189623 () Bool)

(assert (=> b!3679468 m!4189623))

(declare-fun m!4189625 () Bool)

(assert (=> b!3679468 m!4189625))

(declare-fun m!4189627 () Bool)

(assert (=> b!3679468 m!4189627))

(assert (=> b!3679468 m!4189627))

(declare-fun m!4189629 () Bool)

(assert (=> b!3679468 m!4189629))

(declare-fun m!4189631 () Bool)

(assert (=> b!3679468 m!4189631))

(declare-fun m!4189633 () Bool)

(assert (=> b!3679468 m!4189633))

(declare-fun m!4189635 () Bool)

(assert (=> b!3679467 m!4189635))

(declare-fun m!4189637 () Bool)

(assert (=> b!3679464 m!4189637))

(declare-fun m!4189639 () Bool)

(assert (=> b!3679465 m!4189639))

(declare-fun m!4189641 () Bool)

(assert (=> b!3679465 m!4189641))

(declare-fun m!4189643 () Bool)

(assert (=> b!3679465 m!4189643))

(declare-fun m!4189645 () Bool)

(assert (=> b!3679454 m!4189645))

(declare-fun m!4189647 () Bool)

(assert (=> b!3679433 m!4189647))

(declare-fun m!4189649 () Bool)

(assert (=> b!3679462 m!4189649))

(declare-fun m!4189651 () Bool)

(assert (=> b!3679425 m!4189651))

(declare-fun m!4189653 () Bool)

(assert (=> b!3679425 m!4189653))

(declare-fun m!4189655 () Bool)

(assert (=> b!3679425 m!4189655))

(declare-fun m!4189657 () Bool)

(assert (=> b!3679425 m!4189657))

(declare-fun m!4189659 () Bool)

(assert (=> b!3679425 m!4189659))

(declare-fun m!4189661 () Bool)

(assert (=> b!3679425 m!4189661))

(declare-fun m!4189663 () Bool)

(assert (=> b!3679425 m!4189663))

(declare-fun m!4189665 () Bool)

(assert (=> b!3679425 m!4189665))

(declare-fun m!4189667 () Bool)

(assert (=> b!3679425 m!4189667))

(declare-fun m!4189669 () Bool)

(assert (=> b!3679425 m!4189669))

(declare-fun m!4189671 () Bool)

(assert (=> b!3679425 m!4189671))

(declare-fun m!4189673 () Bool)

(assert (=> b!3679425 m!4189673))

(declare-fun m!4189675 () Bool)

(assert (=> b!3679425 m!4189675))

(declare-fun m!4189677 () Bool)

(assert (=> b!3679425 m!4189677))

(declare-fun m!4189679 () Bool)

(assert (=> b!3679425 m!4189679))

(declare-fun m!4189681 () Bool)

(assert (=> b!3679440 m!4189681))

(declare-fun m!4189683 () Bool)

(assert (=> b!3679439 m!4189683))

(declare-fun m!4189685 () Bool)

(assert (=> bm!266495 m!4189685))

(declare-fun m!4189687 () Bool)

(assert (=> b!3679446 m!4189687))

(declare-fun m!4189689 () Bool)

(assert (=> b!3679443 m!4189689))

(declare-fun m!4189691 () Bool)

(assert (=> bm!266496 m!4189691))

(declare-fun m!4189693 () Bool)

(assert (=> b!3679460 m!4189693))

(declare-fun m!4189695 () Bool)

(assert (=> b!3679460 m!4189695))

(declare-fun m!4189697 () Bool)

(assert (=> b!3679460 m!4189697))

(declare-fun m!4189699 () Bool)

(assert (=> b!3679460 m!4189699))

(declare-fun m!4189701 () Bool)

(assert (=> b!3679460 m!4189701))

(assert (=> b!3679460 m!4189697))

(declare-fun m!4189703 () Bool)

(assert (=> b!3679460 m!4189703))

(declare-fun m!4189705 () Bool)

(assert (=> b!3679455 m!4189705))

(declare-fun m!4189707 () Bool)

(assert (=> b!3679449 m!4189707))

(declare-fun m!4189709 () Bool)

(assert (=> b!3679437 m!4189709))

(declare-fun m!4189711 () Bool)

(assert (=> bm!266497 m!4189711))

(declare-fun m!4189713 () Bool)

(assert (=> b!3679421 m!4189713))

(assert (=> b!3679421 m!4189713))

(declare-fun m!4189715 () Bool)

(assert (=> b!3679421 m!4189715))

(declare-fun m!4189717 () Bool)

(assert (=> b!3679436 m!4189717))

(declare-fun m!4189719 () Bool)

(assert (=> b!3679469 m!4189719))

(declare-fun m!4189721 () Bool)

(assert (=> b!3679469 m!4189721))

(declare-fun m!4189723 () Bool)

(assert (=> b!3679458 m!4189723))

(declare-fun m!4189725 () Bool)

(assert (=> b!3679458 m!4189725))

(assert (=> bm!266494 m!4189711))

(declare-fun m!4189727 () Bool)

(assert (=> b!3679438 m!4189727))

(declare-fun m!4189729 () Bool)

(assert (=> b!3679438 m!4189729))

(declare-fun m!4189731 () Bool)

(assert (=> b!3679438 m!4189731))

(assert (=> b!3679453 m!4189679))

(assert (=> b!3679453 m!4189679))

(declare-fun m!4189733 () Bool)

(assert (=> b!3679453 m!4189733))

(assert (=> b!3679453 m!4189733))

(declare-fun m!4189735 () Bool)

(assert (=> b!3679453 m!4189735))

(declare-fun m!4189737 () Bool)

(assert (=> b!3679453 m!4189737))

(declare-fun m!4189739 () Bool)

(assert (=> b!3679426 m!4189739))

(declare-fun m!4189741 () Bool)

(assert (=> b!3679426 m!4189741))

(declare-fun m!4189743 () Bool)

(assert (=> b!3679426 m!4189743))

(declare-fun m!4189745 () Bool)

(assert (=> b!3679426 m!4189745))

(declare-fun m!4189747 () Bool)

(assert (=> b!3679444 m!4189747))

(declare-fun m!4189749 () Bool)

(assert (=> b!3679466 m!4189749))

(declare-fun m!4189751 () Bool)

(assert (=> b!3679466 m!4189751))

(declare-fun m!4189753 () Bool)

(assert (=> bm!266498 m!4189753))

(declare-fun m!4189755 () Bool)

(assert (=> b!3679445 m!4189755))

(declare-fun m!4189757 () Bool)

(assert (=> b!3679445 m!4189757))

(declare-fun m!4189759 () Bool)

(assert (=> b!3679445 m!4189759))

(declare-fun m!4189761 () Bool)

(assert (=> b!3679419 m!4189761))

(declare-fun m!4189763 () Bool)

(assert (=> bm!266499 m!4189763))

(declare-fun m!4189765 () Bool)

(assert (=> b!3679432 m!4189765))

(declare-fun m!4189767 () Bool)

(assert (=> b!3679432 m!4189767))

(assert (=> b!3679432 m!4189765))

(declare-fun m!4189769 () Bool)

(assert (=> b!3679432 m!4189769))

(declare-fun m!4189771 () Bool)

(assert (=> b!3679432 m!4189771))

(declare-fun m!4189773 () Bool)

(assert (=> b!3679432 m!4189773))

(declare-fun m!4189775 () Bool)

(assert (=> b!3679434 m!4189775))

(declare-fun m!4189777 () Bool)

(assert (=> b!3679434 m!4189777))

(declare-fun m!4189779 () Bool)

(assert (=> b!3679434 m!4189779))

(declare-fun m!4189781 () Bool)

(assert (=> b!3679434 m!4189781))

(declare-fun m!4189783 () Bool)

(assert (=> b!3679434 m!4189783))

(declare-fun m!4189785 () Bool)

(assert (=> b!3679434 m!4189785))

(declare-fun m!4189787 () Bool)

(assert (=> b!3679434 m!4189787))

(declare-fun m!4189789 () Bool)

(assert (=> b!3679434 m!4189789))

(assert (=> b!3679434 m!4189777))

(declare-fun m!4189791 () Bool)

(assert (=> b!3679434 m!4189791))

(declare-fun m!4189793 () Bool)

(assert (=> b!3679434 m!4189793))

(declare-fun m!4189795 () Bool)

(assert (=> b!3679434 m!4189795))

(check-sat (not b!3679458) (not b!3679460) (not bm!266494) b_and!274753 (not bm!266499) (not b!3679467) b_and!274759 (not b!3679442) (not b!3679446) (not b!3679465) (not b!3679438) (not b!3679444) (not b!3679466) (not b!3679421) (not b!3679462) (not bm!266495) (not b!3679436) b_and!274751 (not b_next!98121) (not b!3679433) (not b!3679431) (not b!3679453) (not b_next!98129) (not b!3679427) (not b!3679454) b_and!274747 (not b_next!98123) (not start!345226) (not b!3679437) (not b!3679425) (not b!3679464) (not b!3679432) (not b!3679445) (not b_next!98131) (not b!3679419) (not b_next!98135) (not b!3679455) (not b_next!98133) (not b!3679440) (not b_next!98125) (not b!3679434) (not b!3679426) b_and!274749 b_and!274757 (not bm!266498) (not b!3679463) (not b!3679439) (not b!3679469) (not b!3679449) tp_is_empty!18285 (not b!3679452) (not b!3679459) b_and!274761 (not bm!266497) (not b!3679443) b_and!274755 (not bm!266496) (not b_next!98127) (not b!3679468))
(check-sat b_and!274751 (not b_next!98121) (not b_next!98129) (not b_next!98131) (not b_next!98135) b_and!274753 b_and!274749 b_and!274757 b_and!274759 b_and!274761 b_and!274755 (not b_next!98127) b_and!274747 (not b_next!98123) (not b_next!98133) (not b_next!98125))
