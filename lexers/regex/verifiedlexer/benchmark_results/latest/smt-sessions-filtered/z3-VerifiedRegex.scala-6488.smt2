; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!341146 () Bool)

(assert start!341146)

(declare-fun b!3648723 () Bool)

(declare-fun b_free!95873 () Bool)

(declare-fun b_next!96577 () Bool)

(assert (=> b!3648723 (= b_free!95873 (not b_next!96577))))

(declare-fun tp!1112446 () Bool)

(declare-fun b_and!269707 () Bool)

(assert (=> b!3648723 (= tp!1112446 b_and!269707)))

(declare-fun b_free!95875 () Bool)

(declare-fun b_next!96579 () Bool)

(assert (=> b!3648723 (= b_free!95875 (not b_next!96579))))

(declare-fun tp!1112441 () Bool)

(declare-fun b_and!269709 () Bool)

(assert (=> b!3648723 (= tp!1112441 b_and!269709)))

(declare-fun b!3648715 () Bool)

(declare-fun b_free!95877 () Bool)

(declare-fun b_next!96581 () Bool)

(assert (=> b!3648715 (= b_free!95877 (not b_next!96581))))

(declare-fun tp!1112438 () Bool)

(declare-fun b_and!269711 () Bool)

(assert (=> b!3648715 (= tp!1112438 b_and!269711)))

(declare-fun b_free!95879 () Bool)

(declare-fun b_next!96583 () Bool)

(assert (=> b!3648715 (= b_free!95879 (not b_next!96583))))

(declare-fun tp!1112448 () Bool)

(declare-fun b_and!269713 () Bool)

(assert (=> b!3648715 (= tp!1112448 b_and!269713)))

(declare-fun b!3648692 () Bool)

(declare-fun b_free!95881 () Bool)

(declare-fun b_next!96585 () Bool)

(assert (=> b!3648692 (= b_free!95881 (not b_next!96585))))

(declare-fun tp!1112434 () Bool)

(declare-fun b_and!269715 () Bool)

(assert (=> b!3648692 (= tp!1112434 b_and!269715)))

(declare-fun b_free!95883 () Bool)

(declare-fun b_next!96587 () Bool)

(assert (=> b!3648692 (= b_free!95883 (not b_next!96587))))

(declare-fun tp!1112439 () Bool)

(declare-fun b_and!269717 () Bool)

(assert (=> b!3648692 (= tp!1112439 b_and!269717)))

(declare-fun b!3648711 () Bool)

(declare-fun b_free!95885 () Bool)

(declare-fun b_next!96589 () Bool)

(assert (=> b!3648711 (= b_free!95885 (not b_next!96589))))

(declare-fun tp!1112443 () Bool)

(declare-fun b_and!269719 () Bool)

(assert (=> b!3648711 (= tp!1112443 b_and!269719)))

(declare-fun b_free!95887 () Bool)

(declare-fun b_next!96591 () Bool)

(assert (=> b!3648711 (= b_free!95887 (not b_next!96591))))

(declare-fun tp!1112447 () Bool)

(declare-fun b_and!269721 () Bool)

(assert (=> b!3648711 (= tp!1112447 b_and!269721)))

(declare-fun b!3648684 () Bool)

(declare-fun res!1479962 () Bool)

(declare-fun e!2258864 () Bool)

(assert (=> b!3648684 (=> (not res!1479962) (not e!2258864))))

(declare-datatypes ((LexerInterface!5345 0))(
  ( (LexerInterfaceExt!5342 (__x!24189 Int)) (Lexer!5343) )
))
(declare-fun thiss!23823 () LexerInterface!5345)

(declare-datatypes ((List!38591 0))(
  ( (Nil!38467) (Cons!38467 (h!43887 (_ BitVec 16)) (t!297334 List!38591)) )
))
(declare-datatypes ((TokenValue!5986 0))(
  ( (FloatLiteralValue!11972 (text!42347 List!38591)) (TokenValueExt!5985 (__x!24190 Int)) (Broken!29930 (value!184480 List!38591)) (Object!6109) (End!5986) (Def!5986) (Underscore!5986) (Match!5986) (Else!5986) (Error!5986) (Case!5986) (If!5986) (Extends!5986) (Abstract!5986) (Class!5986) (Val!5986) (DelimiterValue!11972 (del!6046 List!38591)) (KeywordValue!5992 (value!184481 List!38591)) (CommentValue!11972 (value!184482 List!38591)) (WhitespaceValue!11972 (value!184483 List!38591)) (IndentationValue!5986 (value!184484 List!38591)) (String!43263) (Int32!5986) (Broken!29931 (value!184485 List!38591)) (Boolean!5987) (Unit!55409) (OperatorValue!5989 (op!6046 List!38591)) (IdentifierValue!11972 (value!184486 List!38591)) (IdentifierValue!11973 (value!184487 List!38591)) (WhitespaceValue!11973 (value!184488 List!38591)) (True!11972) (False!11972) (Broken!29932 (value!184489 List!38591)) (Broken!29933 (value!184490 List!38591)) (True!11973) (RightBrace!5986) (RightBracket!5986) (Colon!5986) (Null!5986) (Comma!5986) (LeftBracket!5986) (False!11973) (LeftBrace!5986) (ImaginaryLiteralValue!5986 (text!42348 List!38591)) (StringLiteralValue!17958 (value!184491 List!38591)) (EOFValue!5986 (value!184492 List!38591)) (IdentValue!5986 (value!184493 List!38591)) (DelimiterValue!11973 (value!184494 List!38591)) (DedentValue!5986 (value!184495 List!38591)) (NewLineValue!5986 (value!184496 List!38591)) (IntegerValue!17958 (value!184497 (_ BitVec 32)) (text!42349 List!38591)) (IntegerValue!17959 (value!184498 Int) (text!42350 List!38591)) (Times!5986) (Or!5986) (Equal!5986) (Minus!5986) (Broken!29934 (value!184499 List!38591)) (And!5986) (Div!5986) (LessEqual!5986) (Mod!5986) (Concat!16501) (Not!5986) (Plus!5986) (SpaceValue!5986 (value!184500 List!38591)) (IntegerValue!17960 (value!184501 Int) (text!42351 List!38591)) (StringLiteralValue!17959 (text!42352 List!38591)) (FloatLiteralValue!11973 (text!42353 List!38591)) (BytesLiteralValue!5986 (value!184502 List!38591)) (CommentValue!11973 (value!184503 List!38591)) (StringLiteralValue!17960 (value!184504 List!38591)) (ErrorTokenValue!5986 (msg!6047 List!38591)) )
))
(declare-datatypes ((C!21216 0))(
  ( (C!21217 (val!12656 Int)) )
))
(declare-datatypes ((Regex!10515 0))(
  ( (ElementMatch!10515 (c!630698 C!21216)) (Concat!16502 (regOne!21542 Regex!10515) (regTwo!21542 Regex!10515)) (EmptyExpr!10515) (Star!10515 (reg!10844 Regex!10515)) (EmptyLang!10515) (Union!10515 (regOne!21543 Regex!10515) (regTwo!21543 Regex!10515)) )
))
(declare-datatypes ((String!43264 0))(
  ( (String!43265 (value!184505 String)) )
))
(declare-datatypes ((List!38592 0))(
  ( (Nil!38468) (Cons!38468 (h!43888 C!21216) (t!297335 List!38592)) )
))
(declare-datatypes ((IArray!23511 0))(
  ( (IArray!23512 (innerList!11813 List!38592)) )
))
(declare-datatypes ((Conc!11753 0))(
  ( (Node!11753 (left!30033 Conc!11753) (right!30363 Conc!11753) (csize!23736 Int) (cheight!11964 Int)) (Leaf!18242 (xs!14955 IArray!23511) (csize!23737 Int)) (Empty!11753) )
))
(declare-datatypes ((BalanceConc!23120 0))(
  ( (BalanceConc!23121 (c!630699 Conc!11753)) )
))
(declare-datatypes ((TokenValueInjection!11400 0))(
  ( (TokenValueInjection!11401 (toValue!8048 Int) (toChars!7907 Int)) )
))
(declare-datatypes ((Rule!11312 0))(
  ( (Rule!11313 (regex!5756 Regex!10515) (tag!6518 String!43264) (isSeparator!5756 Bool) (transformation!5756 TokenValueInjection!11400)) )
))
(declare-datatypes ((List!38593 0))(
  ( (Nil!38469) (Cons!38469 (h!43889 Rule!11312) (t!297336 List!38593)) )
))
(declare-fun rules!3307 () List!38593)

(declare-fun rulesInvariant!4742 (LexerInterface!5345 List!38593) Bool)

(assert (=> b!3648684 (= res!1479962 (rulesInvariant!4742 thiss!23823 rules!3307))))

(declare-fun e!2258869 () Bool)

(declare-fun e!2258858 () Bool)

(declare-fun tp!1112435 () Bool)

(declare-fun b!3648685 () Bool)

(declare-fun inv!51911 (String!43264) Bool)

(declare-fun inv!51914 (TokenValueInjection!11400) Bool)

(assert (=> b!3648685 (= e!2258858 (and tp!1112435 (inv!51911 (tag!6518 (h!43889 rules!3307))) (inv!51914 (transformation!5756 (h!43889 rules!3307))) e!2258869))))

(declare-fun b!3648686 () Bool)

(declare-fun res!1479972 () Bool)

(assert (=> b!3648686 (=> (not res!1479972) (not e!2258864))))

(declare-fun anOtherTypeRule!33 () Rule!11312)

(declare-fun contains!7577 (List!38593 Rule!11312) Bool)

(assert (=> b!3648686 (= res!1479972 (contains!7577 rules!3307 anOtherTypeRule!33))))

(declare-datatypes ((Token!10878 0))(
  ( (Token!10879 (value!184506 TokenValue!5986) (rule!8552 Rule!11312) (size!29369 Int) (originalCharacters!6470 List!38592)) )
))
(declare-fun token!511 () Token!10878)

(declare-fun e!2258865 () Bool)

(declare-fun b!3648687 () Bool)

(declare-fun tp!1112445 () Bool)

(declare-fun e!2258859 () Bool)

(declare-fun inv!21 (TokenValue!5986) Bool)

(assert (=> b!3648687 (= e!2258859 (and (inv!21 (value!184506 token!511)) e!2258865 tp!1112445))))

(declare-fun b!3648688 () Bool)

(declare-fun e!2258873 () Bool)

(declare-fun e!2258855 () Bool)

(assert (=> b!3648688 (= e!2258873 e!2258855)))

(declare-fun res!1479955 () Bool)

(assert (=> b!3648688 (=> res!1479955 e!2258855)))

(declare-fun lt!1265082 () List!38592)

(declare-fun lt!1265056 () List!38592)

(declare-fun isPrefix!3119 (List!38592 List!38592) Bool)

(assert (=> b!3648688 (= res!1479955 (not (isPrefix!3119 lt!1265082 lt!1265056)))))

(declare-datatypes ((tuple2!38340 0))(
  ( (tuple2!38341 (_1!22304 Token!10878) (_2!22304 List!38592)) )
))
(declare-fun lt!1265072 () tuple2!38340)

(declare-fun ++!9572 (List!38592 List!38592) List!38592)

(assert (=> b!3648688 (isPrefix!3119 lt!1265082 (++!9572 lt!1265082 (_2!22304 lt!1265072)))))

(declare-datatypes ((Unit!55410 0))(
  ( (Unit!55411) )
))
(declare-fun lt!1265076 () Unit!55410)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2038 (List!38592 List!38592) Unit!55410)

(assert (=> b!3648688 (= lt!1265076 (lemmaConcatTwoListThenFirstIsPrefix!2038 lt!1265082 (_2!22304 lt!1265072)))))

(declare-fun lt!1265086 () BalanceConc!23120)

(declare-fun list!14254 (BalanceConc!23120) List!38592)

(assert (=> b!3648688 (= lt!1265082 (list!14254 lt!1265086))))

(declare-fun charsOf!3770 (Token!10878) BalanceConc!23120)

(assert (=> b!3648688 (= lt!1265086 (charsOf!3770 (_1!22304 lt!1265072)))))

(declare-fun e!2258885 () Bool)

(assert (=> b!3648688 e!2258885))

(declare-fun res!1479970 () Bool)

(assert (=> b!3648688 (=> (not res!1479970) (not e!2258885))))

(declare-datatypes ((Option!8140 0))(
  ( (None!8139) (Some!8139 (v!37995 Rule!11312)) )
))
(declare-fun lt!1265077 () Option!8140)

(declare-fun isDefined!6372 (Option!8140) Bool)

(assert (=> b!3648688 (= res!1479970 (isDefined!6372 lt!1265077))))

(declare-fun getRuleFromTag!1360 (LexerInterface!5345 List!38593 String!43264) Option!8140)

(assert (=> b!3648688 (= lt!1265077 (getRuleFromTag!1360 thiss!23823 rules!3307 (tag!6518 (rule!8552 (_1!22304 lt!1265072)))))))

(declare-fun lt!1265063 () Unit!55410)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1360 (LexerInterface!5345 List!38593 List!38592 Token!10878) Unit!55410)

(assert (=> b!3648688 (= lt!1265063 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1360 thiss!23823 rules!3307 lt!1265056 (_1!22304 lt!1265072)))))

(declare-datatypes ((Option!8141 0))(
  ( (None!8140) (Some!8140 (v!37996 tuple2!38340)) )
))
(declare-fun lt!1265092 () Option!8141)

(declare-fun get!12628 (Option!8141) tuple2!38340)

(assert (=> b!3648688 (= lt!1265072 (get!12628 lt!1265092))))

(declare-fun suffix!1395 () List!38592)

(declare-fun lt!1265088 () List!38592)

(declare-fun lt!1265081 () Unit!55410)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1023 (LexerInterface!5345 List!38593 List!38592 List!38592) Unit!55410)

(assert (=> b!3648688 (= lt!1265081 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1023 thiss!23823 rules!3307 lt!1265088 suffix!1395))))

(declare-fun maxPrefix!2879 (LexerInterface!5345 List!38593 List!38592) Option!8141)

(assert (=> b!3648688 (= lt!1265092 (maxPrefix!2879 thiss!23823 rules!3307 lt!1265056))))

(assert (=> b!3648688 (isPrefix!3119 lt!1265088 lt!1265056)))

(declare-fun lt!1265089 () Unit!55410)

(assert (=> b!3648688 (= lt!1265089 (lemmaConcatTwoListThenFirstIsPrefix!2038 lt!1265088 suffix!1395))))

(assert (=> b!3648688 (= lt!1265056 (++!9572 lt!1265088 suffix!1395))))

(declare-fun b!3648689 () Bool)

(declare-fun res!1479954 () Bool)

(assert (=> b!3648689 (=> res!1479954 e!2258873)))

(declare-fun lt!1265058 () C!21216)

(declare-fun contains!7578 (List!38592 C!21216) Bool)

(declare-fun usedCharacters!968 (Regex!10515) List!38592)

(assert (=> b!3648689 (= res!1479954 (not (contains!7578 (usedCharacters!968 (regex!5756 anOtherTypeRule!33)) lt!1265058)))))

(declare-fun b!3648690 () Bool)

(declare-fun e!2258880 () Unit!55410)

(declare-fun Unit!55412 () Unit!55410)

(assert (=> b!3648690 (= e!2258880 Unit!55412)))

(declare-fun b!3648691 () Bool)

(declare-fun res!1479959 () Bool)

(assert (=> b!3648691 (=> res!1479959 e!2258855)))

(declare-fun matchR!5084 (Regex!10515 List!38592) Bool)

(assert (=> b!3648691 (= res!1479959 (not (matchR!5084 (regex!5756 (rule!8552 (_1!22304 lt!1265072))) lt!1265082)))))

(declare-fun e!2258863 () Bool)

(assert (=> b!3648692 (= e!2258863 (and tp!1112434 tp!1112439))))

(declare-fun b!3648693 () Bool)

(declare-fun e!2258871 () Bool)

(assert (=> b!3648693 (= e!2258871 e!2258873)))

(declare-fun res!1479961 () Bool)

(assert (=> b!3648693 (=> res!1479961 e!2258873)))

(declare-fun lt!1265066 () List!38592)

(assert (=> b!3648693 (= res!1479961 (contains!7578 lt!1265066 lt!1265058))))

(declare-fun head!7768 (List!38592) C!21216)

(assert (=> b!3648693 (= lt!1265058 (head!7768 suffix!1395))))

(declare-fun rule!403 () Rule!11312)

(assert (=> b!3648693 (= lt!1265066 (usedCharacters!968 (regex!5756 rule!403)))))

(declare-fun b!3648694 () Bool)

(declare-fun e!2258879 () Bool)

(assert (=> b!3648694 (= e!2258885 e!2258879)))

(declare-fun res!1479967 () Bool)

(assert (=> b!3648694 (=> (not res!1479967) (not e!2258879))))

(declare-fun lt!1265061 () Rule!11312)

(assert (=> b!3648694 (= res!1479967 (matchR!5084 (regex!5756 lt!1265061) (list!14254 (charsOf!3770 (_1!22304 lt!1265072)))))))

(declare-fun get!12629 (Option!8140) Rule!11312)

(assert (=> b!3648694 (= lt!1265061 (get!12629 lt!1265077))))

(declare-fun b!3648695 () Bool)

(declare-fun res!1479968 () Bool)

(assert (=> b!3648695 (=> res!1479968 e!2258871)))

(declare-fun isEmpty!22792 (List!38592) Bool)

(assert (=> b!3648695 (= res!1479968 (isEmpty!22792 suffix!1395))))

(declare-fun res!1479952 () Bool)

(assert (=> start!341146 (=> (not res!1479952) (not e!2258864))))

(get-info :version)

(assert (=> start!341146 (= res!1479952 ((_ is Lexer!5343) thiss!23823))))

(assert (=> start!341146 e!2258864))

(declare-fun e!2258882 () Bool)

(assert (=> start!341146 e!2258882))

(declare-fun e!2258860 () Bool)

(assert (=> start!341146 e!2258860))

(assert (=> start!341146 true))

(declare-fun inv!51915 (Token!10878) Bool)

(assert (=> start!341146 (and (inv!51915 token!511) e!2258859)))

(declare-fun e!2258856 () Bool)

(assert (=> start!341146 e!2258856))

(declare-fun e!2258862 () Bool)

(assert (=> start!341146 e!2258862))

(declare-fun b!3648696 () Bool)

(declare-fun e!2258857 () Unit!55410)

(assert (=> b!3648696 (= e!2258857 e!2258880)))

(declare-fun c!630696 () Bool)

(assert (=> b!3648696 (= c!630696 (isSeparator!5756 (rule!8552 (_1!22304 lt!1265072))))))

(declare-fun b!3648697 () Bool)

(declare-fun e!2258870 () Bool)

(declare-fun e!2258883 () Bool)

(assert (=> b!3648697 (= e!2258870 e!2258883)))

(declare-fun res!1479963 () Bool)

(assert (=> b!3648697 (=> (not res!1479963) (not e!2258883))))

(declare-fun lt!1265071 () tuple2!38340)

(assert (=> b!3648697 (= res!1479963 (= (_1!22304 lt!1265071) token!511))))

(declare-fun lt!1265068 () Option!8141)

(assert (=> b!3648697 (= lt!1265071 (get!12628 lt!1265068))))

(declare-fun b!3648698 () Bool)

(assert (=> b!3648698 (= e!2258883 (not e!2258871))))

(declare-fun res!1479951 () Bool)

(assert (=> b!3648698 (=> res!1479951 e!2258871)))

(assert (=> b!3648698 (= res!1479951 (not (matchR!5084 (regex!5756 rule!403) lt!1265088)))))

(declare-fun ruleValid!2020 (LexerInterface!5345 Rule!11312) Bool)

(assert (=> b!3648698 (ruleValid!2020 thiss!23823 rule!403)))

(declare-fun lt!1265075 () Unit!55410)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1174 (LexerInterface!5345 Rule!11312 List!38593) Unit!55410)

(assert (=> b!3648698 (= lt!1265075 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1174 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3648699 () Bool)

(declare-fun tp_is_empty!18113 () Bool)

(declare-fun tp!1112444 () Bool)

(assert (=> b!3648699 (= e!2258860 (and tp_is_empty!18113 tp!1112444))))

(declare-fun b!3648700 () Bool)

(declare-fun e!2258884 () Bool)

(declare-fun e!2258878 () Bool)

(assert (=> b!3648700 (= e!2258884 e!2258878)))

(declare-fun res!1479969 () Bool)

(assert (=> b!3648700 (=> res!1479969 e!2258878)))

(declare-fun lt!1265079 () Option!8141)

(declare-fun lt!1265070 () List!38592)

(assert (=> b!3648700 (= res!1479969 (or (not (= lt!1265070 (_2!22304 lt!1265072))) (not (= lt!1265079 (Some!8140 (tuple2!38341 (_1!22304 lt!1265072) lt!1265070))))))))

(assert (=> b!3648700 (= (_2!22304 lt!1265072) lt!1265070)))

(declare-fun lt!1265055 () Unit!55410)

(declare-fun lemmaSamePrefixThenSameSuffix!1446 (List!38592 List!38592 List!38592 List!38592 List!38592) Unit!55410)

(assert (=> b!3648700 (= lt!1265055 (lemmaSamePrefixThenSameSuffix!1446 lt!1265082 (_2!22304 lt!1265072) lt!1265082 lt!1265070 lt!1265056))))

(declare-fun getSuffix!1672 (List!38592 List!38592) List!38592)

(assert (=> b!3648700 (= lt!1265070 (getSuffix!1672 lt!1265056 lt!1265082))))

(declare-fun lt!1265057 () TokenValue!5986)

(declare-fun lt!1265084 () Int)

(assert (=> b!3648700 (= lt!1265079 (Some!8140 (tuple2!38341 (Token!10879 lt!1265057 (rule!8552 (_1!22304 lt!1265072)) lt!1265084 lt!1265082) (_2!22304 lt!1265072))))))

(declare-fun maxPrefixOneRule!2017 (LexerInterface!5345 Rule!11312 List!38592) Option!8141)

(assert (=> b!3648700 (= lt!1265079 (maxPrefixOneRule!2017 thiss!23823 (rule!8552 (_1!22304 lt!1265072)) lt!1265056))))

(declare-fun size!29370 (List!38592) Int)

(assert (=> b!3648700 (= lt!1265084 (size!29370 lt!1265082))))

(declare-fun apply!9258 (TokenValueInjection!11400 BalanceConc!23120) TokenValue!5986)

(declare-fun seqFromList!4305 (List!38592) BalanceConc!23120)

(assert (=> b!3648700 (= lt!1265057 (apply!9258 (transformation!5756 (rule!8552 (_1!22304 lt!1265072))) (seqFromList!4305 lt!1265082)))))

(declare-fun lt!1265078 () Unit!55410)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1073 (LexerInterface!5345 List!38593 List!38592 List!38592 List!38592 Rule!11312) Unit!55410)

(assert (=> b!3648700 (= lt!1265078 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1073 thiss!23823 rules!3307 lt!1265082 lt!1265056 (_2!22304 lt!1265072) (rule!8552 (_1!22304 lt!1265072))))))

(declare-fun bm!263681 () Bool)

(declare-fun call!263686 () List!38592)

(assert (=> bm!263681 (= call!263686 (usedCharacters!968 (regex!5756 (rule!8552 (_1!22304 lt!1265072)))))))

(declare-fun b!3648701 () Bool)

(declare-fun res!1479960 () Bool)

(assert (=> b!3648701 (=> (not res!1479960) (not e!2258883))))

(assert (=> b!3648701 (= res!1479960 (= (rule!8552 token!511) rule!403))))

(declare-fun b!3648702 () Bool)

(declare-fun res!1479956 () Bool)

(assert (=> b!3648702 (=> (not res!1479956) (not e!2258864))))

(assert (=> b!3648702 (= res!1479956 (not (= (isSeparator!5756 anOtherTypeRule!33) (isSeparator!5756 rule!403))))))

(declare-fun b!3648703 () Bool)

(assert (=> b!3648703 false))

(declare-fun lt!1265067 () Unit!55410)

(declare-fun call!263688 () Unit!55410)

(assert (=> b!3648703 (= lt!1265067 call!263688)))

(declare-fun call!263687 () Bool)

(assert (=> b!3648703 (not call!263687)))

(declare-fun lt!1265080 () Unit!55410)

(declare-fun lt!1265065 () C!21216)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!402 (LexerInterface!5345 List!38593 List!38593 Rule!11312 Rule!11312 C!21216) Unit!55410)

(assert (=> b!3648703 (= lt!1265080 (lemmaNonSepRuleNotContainsCharContainedInASepRule!402 thiss!23823 rules!3307 rules!3307 (rule!8552 (_1!22304 lt!1265072)) rule!403 lt!1265065))))

(declare-fun e!2258866 () Unit!55410)

(declare-fun Unit!55413 () Unit!55410)

(assert (=> b!3648703 (= e!2258866 Unit!55413)))

(declare-fun b!3648704 () Bool)

(declare-fun res!1479964 () Bool)

(declare-fun e!2258872 () Bool)

(assert (=> b!3648704 (=> res!1479964 e!2258872)))

(assert (=> b!3648704 (= res!1479964 (not (contains!7577 rules!3307 (rule!8552 (_1!22304 lt!1265072)))))))

(declare-fun b!3648705 () Bool)

(assert (=> b!3648705 (= e!2258879 (= (rule!8552 (_1!22304 lt!1265072)) lt!1265061))))

(declare-fun b!3648706 () Bool)

(declare-fun e!2258861 () Bool)

(assert (=> b!3648706 (= e!2258878 e!2258861)))

(declare-fun res!1479953 () Bool)

(assert (=> b!3648706 (=> res!1479953 e!2258861)))

(declare-fun lt!1265064 () Int)

(declare-fun lt!1265091 () BalanceConc!23120)

(declare-fun size!29371 (BalanceConc!23120) Int)

(assert (=> b!3648706 (= res!1479953 (<= lt!1265064 (size!29371 lt!1265091)))))

(declare-fun lt!1265062 () Unit!55410)

(assert (=> b!3648706 (= lt!1265062 e!2258857)))

(declare-fun c!630697 () Bool)

(assert (=> b!3648706 (= c!630697 (isSeparator!5756 rule!403))))

(declare-fun lt!1265069 () Unit!55410)

(declare-fun e!2258886 () Unit!55410)

(assert (=> b!3648706 (= lt!1265069 e!2258886)))

(declare-fun c!630694 () Bool)

(assert (=> b!3648706 (= c!630694 (not (contains!7578 lt!1265066 lt!1265065)))))

(assert (=> b!3648706 (= lt!1265065 (head!7768 lt!1265082))))

(declare-fun b!3648707 () Bool)

(declare-fun res!1479971 () Bool)

(assert (=> b!3648707 (=> res!1479971 e!2258873)))

(declare-fun sepAndNonSepRulesDisjointChars!1924 (List!38593 List!38593) Bool)

(assert (=> b!3648707 (= res!1479971 (not (sepAndNonSepRulesDisjointChars!1924 rules!3307 rules!3307)))))

(declare-fun b!3648708 () Bool)

(declare-fun tp!1112440 () Bool)

(assert (=> b!3648708 (= e!2258865 (and tp!1112440 (inv!51911 (tag!6518 (rule!8552 token!511))) (inv!51914 (transformation!5756 (rule!8552 token!511))) e!2258863))))

(declare-fun b!3648709 () Bool)

(declare-fun res!1479965 () Bool)

(assert (=> b!3648709 (=> (not res!1479965) (not e!2258864))))

(declare-fun isEmpty!22793 (List!38593) Bool)

(assert (=> b!3648709 (= res!1479965 (not (isEmpty!22793 rules!3307)))))

(declare-fun b!3648710 () Bool)

(declare-fun res!1479966 () Bool)

(assert (=> b!3648710 (=> (not res!1479966) (not e!2258864))))

(assert (=> b!3648710 (= res!1479966 (contains!7577 rules!3307 rule!403))))

(declare-fun e!2258881 () Bool)

(assert (=> b!3648711 (= e!2258881 (and tp!1112443 tp!1112447))))

(declare-fun b!3648712 () Bool)

(assert (=> b!3648712 (= e!2258872 (not (isSeparator!5756 anOtherTypeRule!33)))))

(declare-fun b!3648713 () Bool)

(declare-fun res!1479958 () Bool)

(assert (=> b!3648713 (=> (not res!1479958) (not e!2258883))))

(assert (=> b!3648713 (= res!1479958 (isEmpty!22792 (_2!22304 lt!1265071)))))

(declare-fun b!3648714 () Bool)

(assert (=> b!3648714 (= e!2258857 e!2258866)))

(declare-fun c!630695 () Bool)

(assert (=> b!3648714 (= c!630695 (not (isSeparator!5756 (rule!8552 (_1!22304 lt!1265072)))))))

(assert (=> b!3648715 (= e!2258869 (and tp!1112438 tp!1112448))))

(declare-fun bm!263682 () Bool)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!704 (Regex!10515 List!38592 C!21216) Unit!55410)

(assert (=> bm!263682 (= call!263688 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!704 (regex!5756 (rule!8552 (_1!22304 lt!1265072))) lt!1265082 lt!1265065))))

(declare-fun b!3648716 () Bool)

(assert (=> b!3648716 false))

(declare-fun lt!1265085 () Unit!55410)

(assert (=> b!3648716 (= lt!1265085 call!263688)))

(assert (=> b!3648716 (not call!263687)))

(declare-fun lt!1265059 () Unit!55410)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!284 (LexerInterface!5345 List!38593 List!38593 Rule!11312 Rule!11312 C!21216) Unit!55410)

(assert (=> b!3648716 (= lt!1265059 (lemmaSepRuleNotContainsCharContainedInANonSepRule!284 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8552 (_1!22304 lt!1265072)) lt!1265065))))

(declare-fun Unit!55414 () Unit!55410)

(assert (=> b!3648716 (= e!2258880 Unit!55414)))

(declare-fun bm!263683 () Bool)

(assert (=> bm!263683 (= call!263687 (contains!7578 call!263686 lt!1265065))))

(declare-fun b!3648717 () Bool)

(assert (=> b!3648717 (= e!2258864 e!2258870)))

(declare-fun res!1479957 () Bool)

(assert (=> b!3648717 (=> (not res!1479957) (not e!2258870))))

(declare-fun isDefined!6373 (Option!8141) Bool)

(assert (=> b!3648717 (= res!1479957 (isDefined!6373 lt!1265068))))

(assert (=> b!3648717 (= lt!1265068 (maxPrefix!2879 thiss!23823 rules!3307 lt!1265088))))

(assert (=> b!3648717 (= lt!1265088 (list!14254 lt!1265091))))

(assert (=> b!3648717 (= lt!1265091 (charsOf!3770 token!511))))

(declare-fun b!3648718 () Bool)

(declare-fun Unit!55415 () Unit!55410)

(assert (=> b!3648718 (= e!2258886 Unit!55415)))

(declare-fun lt!1265060 () Unit!55410)

(assert (=> b!3648718 (= lt!1265060 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!704 (regex!5756 rule!403) lt!1265088 lt!1265065))))

(assert (=> b!3648718 false))

(declare-fun b!3648719 () Bool)

(assert (=> b!3648719 (= e!2258861 e!2258872)))

(declare-fun res!1479974 () Bool)

(assert (=> b!3648719 (=> res!1479974 e!2258872)))

(assert (=> b!3648719 (= res!1479974 (not (isSeparator!5756 rule!403)))))

(assert (=> b!3648719 (contains!7578 lt!1265082 lt!1265058)))

(declare-fun lt!1265083 () Unit!55410)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!64 (List!38592 List!38592 List!38592 List!38592) Unit!55410)

(assert (=> b!3648719 (= lt!1265083 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!64 lt!1265088 suffix!1395 lt!1265082 lt!1265056))))

(declare-fun b!3648720 () Bool)

(declare-fun tp!1112442 () Bool)

(assert (=> b!3648720 (= e!2258862 (and tp!1112442 (inv!51911 (tag!6518 anOtherTypeRule!33)) (inv!51914 (transformation!5756 anOtherTypeRule!33)) e!2258881))))

(declare-fun b!3648721 () Bool)

(declare-fun Unit!55416 () Unit!55410)

(assert (=> b!3648721 (= e!2258886 Unit!55416)))

(declare-fun b!3648722 () Bool)

(declare-fun tp!1112437 () Bool)

(assert (=> b!3648722 (= e!2258882 (and e!2258858 tp!1112437))))

(declare-fun e!2258868 () Bool)

(assert (=> b!3648723 (= e!2258868 (and tp!1112446 tp!1112441))))

(declare-fun b!3648724 () Bool)

(assert (=> b!3648724 (= e!2258855 e!2258884)))

(declare-fun res!1479973 () Bool)

(assert (=> b!3648724 (=> res!1479973 e!2258884)))

(declare-fun lt!1265087 () TokenValue!5986)

(assert (=> b!3648724 (= res!1479973 (not (= lt!1265092 (Some!8140 (tuple2!38341 (Token!10879 lt!1265087 (rule!8552 (_1!22304 lt!1265072)) lt!1265064 lt!1265082) (_2!22304 lt!1265072))))))))

(assert (=> b!3648724 (= lt!1265064 (size!29371 lt!1265086))))

(assert (=> b!3648724 (= lt!1265087 (apply!9258 (transformation!5756 (rule!8552 (_1!22304 lt!1265072))) lt!1265086))))

(declare-fun lt!1265074 () Unit!55410)

(declare-fun lemmaCharactersSize!801 (Token!10878) Unit!55410)

(assert (=> b!3648724 (= lt!1265074 (lemmaCharactersSize!801 (_1!22304 lt!1265072)))))

(declare-fun lt!1265090 () Unit!55410)

(declare-fun lemmaEqSameImage!939 (TokenValueInjection!11400 BalanceConc!23120 BalanceConc!23120) Unit!55410)

(assert (=> b!3648724 (= lt!1265090 (lemmaEqSameImage!939 (transformation!5756 (rule!8552 (_1!22304 lt!1265072))) lt!1265086 (seqFromList!4305 (originalCharacters!6470 (_1!22304 lt!1265072)))))))

(declare-fun lt!1265073 () Unit!55410)

(declare-fun lemmaSemiInverse!1505 (TokenValueInjection!11400 BalanceConc!23120) Unit!55410)

(assert (=> b!3648724 (= lt!1265073 (lemmaSemiInverse!1505 (transformation!5756 (rule!8552 (_1!22304 lt!1265072))) lt!1265086))))

(declare-fun b!3648725 () Bool)

(declare-fun tp!1112436 () Bool)

(assert (=> b!3648725 (= e!2258856 (and tp!1112436 (inv!51911 (tag!6518 rule!403)) (inv!51914 (transformation!5756 rule!403)) e!2258868))))

(declare-fun b!3648726 () Bool)

(declare-fun Unit!55417 () Unit!55410)

(assert (=> b!3648726 (= e!2258866 Unit!55417)))

(assert (= (and start!341146 res!1479952) b!3648709))

(assert (= (and b!3648709 res!1479965) b!3648684))

(assert (= (and b!3648684 res!1479962) b!3648710))

(assert (= (and b!3648710 res!1479966) b!3648686))

(assert (= (and b!3648686 res!1479972) b!3648702))

(assert (= (and b!3648702 res!1479956) b!3648717))

(assert (= (and b!3648717 res!1479957) b!3648697))

(assert (= (and b!3648697 res!1479963) b!3648713))

(assert (= (and b!3648713 res!1479958) b!3648701))

(assert (= (and b!3648701 res!1479960) b!3648698))

(assert (= (and b!3648698 (not res!1479951)) b!3648695))

(assert (= (and b!3648695 (not res!1479968)) b!3648693))

(assert (= (and b!3648693 (not res!1479961)) b!3648689))

(assert (= (and b!3648689 (not res!1479954)) b!3648707))

(assert (= (and b!3648707 (not res!1479971)) b!3648688))

(assert (= (and b!3648688 res!1479970) b!3648694))

(assert (= (and b!3648694 res!1479967) b!3648705))

(assert (= (and b!3648688 (not res!1479955)) b!3648691))

(assert (= (and b!3648691 (not res!1479959)) b!3648724))

(assert (= (and b!3648724 (not res!1479973)) b!3648700))

(assert (= (and b!3648700 (not res!1479969)) b!3648706))

(assert (= (and b!3648706 c!630694) b!3648718))

(assert (= (and b!3648706 (not c!630694)) b!3648721))

(assert (= (and b!3648706 c!630697) b!3648714))

(assert (= (and b!3648706 (not c!630697)) b!3648696))

(assert (= (and b!3648714 c!630695) b!3648703))

(assert (= (and b!3648714 (not c!630695)) b!3648726))

(assert (= (and b!3648696 c!630696) b!3648716))

(assert (= (and b!3648696 (not c!630696)) b!3648690))

(assert (= (or b!3648703 b!3648716) bm!263682))

(assert (= (or b!3648703 b!3648716) bm!263681))

(assert (= (or b!3648703 b!3648716) bm!263683))

(assert (= (and b!3648706 (not res!1479953)) b!3648719))

(assert (= (and b!3648719 (not res!1479974)) b!3648704))

(assert (= (and b!3648704 (not res!1479964)) b!3648712))

(assert (= b!3648685 b!3648715))

(assert (= b!3648722 b!3648685))

(assert (= (and start!341146 ((_ is Cons!38469) rules!3307)) b!3648722))

(assert (= (and start!341146 ((_ is Cons!38468) suffix!1395)) b!3648699))

(assert (= b!3648708 b!3648692))

(assert (= b!3648687 b!3648708))

(assert (= start!341146 b!3648687))

(assert (= b!3648725 b!3648723))

(assert (= start!341146 b!3648725))

(assert (= b!3648720 b!3648711))

(assert (= start!341146 b!3648720))

(declare-fun m!4152905 () Bool)

(assert (=> b!3648698 m!4152905))

(declare-fun m!4152907 () Bool)

(assert (=> b!3648698 m!4152907))

(declare-fun m!4152909 () Bool)

(assert (=> b!3648698 m!4152909))

(declare-fun m!4152911 () Bool)

(assert (=> b!3648704 m!4152911))

(declare-fun m!4152913 () Bool)

(assert (=> b!3648720 m!4152913))

(declare-fun m!4152915 () Bool)

(assert (=> b!3648720 m!4152915))

(declare-fun m!4152917 () Bool)

(assert (=> b!3648718 m!4152917))

(declare-fun m!4152919 () Bool)

(assert (=> b!3648694 m!4152919))

(assert (=> b!3648694 m!4152919))

(declare-fun m!4152921 () Bool)

(assert (=> b!3648694 m!4152921))

(assert (=> b!3648694 m!4152921))

(declare-fun m!4152923 () Bool)

(assert (=> b!3648694 m!4152923))

(declare-fun m!4152925 () Bool)

(assert (=> b!3648694 m!4152925))

(declare-fun m!4152927 () Bool)

(assert (=> b!3648707 m!4152927))

(declare-fun m!4152929 () Bool)

(assert (=> b!3648724 m!4152929))

(declare-fun m!4152931 () Bool)

(assert (=> b!3648724 m!4152931))

(declare-fun m!4152933 () Bool)

(assert (=> b!3648724 m!4152933))

(declare-fun m!4152935 () Bool)

(assert (=> b!3648724 m!4152935))

(declare-fun m!4152937 () Bool)

(assert (=> b!3648724 m!4152937))

(declare-fun m!4152939 () Bool)

(assert (=> b!3648724 m!4152939))

(assert (=> b!3648724 m!4152931))

(declare-fun m!4152941 () Bool)

(assert (=> b!3648691 m!4152941))

(declare-fun m!4152943 () Bool)

(assert (=> b!3648693 m!4152943))

(declare-fun m!4152945 () Bool)

(assert (=> b!3648693 m!4152945))

(declare-fun m!4152947 () Bool)

(assert (=> b!3648693 m!4152947))

(declare-fun m!4152949 () Bool)

(assert (=> b!3648697 m!4152949))

(declare-fun m!4152951 () Bool)

(assert (=> b!3648709 m!4152951))

(declare-fun m!4152953 () Bool)

(assert (=> b!3648686 m!4152953))

(declare-fun m!4152955 () Bool)

(assert (=> b!3648687 m!4152955))

(declare-fun m!4152957 () Bool)

(assert (=> b!3648719 m!4152957))

(declare-fun m!4152959 () Bool)

(assert (=> b!3648719 m!4152959))

(declare-fun m!4152961 () Bool)

(assert (=> b!3648700 m!4152961))

(declare-fun m!4152963 () Bool)

(assert (=> b!3648700 m!4152963))

(declare-fun m!4152965 () Bool)

(assert (=> b!3648700 m!4152965))

(assert (=> b!3648700 m!4152965))

(declare-fun m!4152967 () Bool)

(assert (=> b!3648700 m!4152967))

(declare-fun m!4152969 () Bool)

(assert (=> b!3648700 m!4152969))

(declare-fun m!4152971 () Bool)

(assert (=> b!3648700 m!4152971))

(declare-fun m!4152973 () Bool)

(assert (=> b!3648700 m!4152973))

(declare-fun m!4152975 () Bool)

(assert (=> bm!263681 m!4152975))

(declare-fun m!4152977 () Bool)

(assert (=> b!3648725 m!4152977))

(declare-fun m!4152979 () Bool)

(assert (=> b!3648725 m!4152979))

(declare-fun m!4152981 () Bool)

(assert (=> bm!263682 m!4152981))

(declare-fun m!4152983 () Bool)

(assert (=> start!341146 m!4152983))

(declare-fun m!4152985 () Bool)

(assert (=> b!3648688 m!4152985))

(declare-fun m!4152987 () Bool)

(assert (=> b!3648688 m!4152987))

(declare-fun m!4152989 () Bool)

(assert (=> b!3648688 m!4152989))

(declare-fun m!4152991 () Bool)

(assert (=> b!3648688 m!4152991))

(declare-fun m!4152993 () Bool)

(assert (=> b!3648688 m!4152993))

(assert (=> b!3648688 m!4152919))

(declare-fun m!4152995 () Bool)

(assert (=> b!3648688 m!4152995))

(declare-fun m!4152997 () Bool)

(assert (=> b!3648688 m!4152997))

(declare-fun m!4152999 () Bool)

(assert (=> b!3648688 m!4152999))

(declare-fun m!4153001 () Bool)

(assert (=> b!3648688 m!4153001))

(declare-fun m!4153003 () Bool)

(assert (=> b!3648688 m!4153003))

(declare-fun m!4153005 () Bool)

(assert (=> b!3648688 m!4153005))

(declare-fun m!4153007 () Bool)

(assert (=> b!3648688 m!4153007))

(assert (=> b!3648688 m!4153003))

(declare-fun m!4153009 () Bool)

(assert (=> b!3648688 m!4153009))

(declare-fun m!4153011 () Bool)

(assert (=> b!3648688 m!4153011))

(declare-fun m!4153013 () Bool)

(assert (=> b!3648685 m!4153013))

(declare-fun m!4153015 () Bool)

(assert (=> b!3648685 m!4153015))

(declare-fun m!4153017 () Bool)

(assert (=> b!3648716 m!4153017))

(declare-fun m!4153019 () Bool)

(assert (=> b!3648708 m!4153019))

(declare-fun m!4153021 () Bool)

(assert (=> b!3648708 m!4153021))

(declare-fun m!4153023 () Bool)

(assert (=> b!3648684 m!4153023))

(declare-fun m!4153025 () Bool)

(assert (=> bm!263683 m!4153025))

(declare-fun m!4153027 () Bool)

(assert (=> b!3648695 m!4153027))

(declare-fun m!4153029 () Bool)

(assert (=> b!3648710 m!4153029))

(declare-fun m!4153031 () Bool)

(assert (=> b!3648703 m!4153031))

(declare-fun m!4153033 () Bool)

(assert (=> b!3648706 m!4153033))

(declare-fun m!4153035 () Bool)

(assert (=> b!3648706 m!4153035))

(declare-fun m!4153037 () Bool)

(assert (=> b!3648706 m!4153037))

(declare-fun m!4153039 () Bool)

(assert (=> b!3648713 m!4153039))

(declare-fun m!4153041 () Bool)

(assert (=> b!3648689 m!4153041))

(assert (=> b!3648689 m!4153041))

(declare-fun m!4153043 () Bool)

(assert (=> b!3648689 m!4153043))

(declare-fun m!4153045 () Bool)

(assert (=> b!3648717 m!4153045))

(declare-fun m!4153047 () Bool)

(assert (=> b!3648717 m!4153047))

(declare-fun m!4153049 () Bool)

(assert (=> b!3648717 m!4153049))

(declare-fun m!4153051 () Bool)

(assert (=> b!3648717 m!4153051))

(check-sat (not b!3648691) (not bm!263683) b_and!269715 (not b!3648717) (not b!3648704) (not b!3648693) (not b!3648689) (not b_next!96587) (not b!3648685) (not start!341146) (not b_next!96585) (not b!3648720) (not b!3648722) (not bm!263682) (not b!3648684) (not b_next!96591) (not b!3648699) (not b_next!96589) b_and!269713 (not b!3648698) (not b_next!96581) (not b!3648710) (not b!3648706) (not bm!263681) (not b!3648703) b_and!269709 (not b!3648700) (not b!3648713) (not b_next!96579) b_and!269707 (not b!3648686) (not b!3648708) (not b_next!96577) (not b!3648694) b_and!269711 (not b!3648725) tp_is_empty!18113 (not b!3648718) b_and!269719 (not b_next!96583) (not b!3648719) (not b!3648724) (not b!3648687) b_and!269721 b_and!269717 (not b!3648688) (not b!3648709) (not b!3648716) (not b!3648697) (not b!3648707) (not b!3648695))
(check-sat b_and!269709 b_and!269715 (not b_next!96587) (not b_next!96577) b_and!269711 (not b_next!96585) b_and!269721 b_and!269717 (not b_next!96591) (not b_next!96589) b_and!269713 (not b_next!96581) (not b_next!96579) b_and!269707 b_and!269719 (not b_next!96583))
