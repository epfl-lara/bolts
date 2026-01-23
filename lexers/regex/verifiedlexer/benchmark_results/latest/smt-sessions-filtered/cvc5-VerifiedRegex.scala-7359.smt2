; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!390996 () Bool)

(assert start!390996)

(declare-fun b!4122871 () Bool)

(declare-fun b_free!116663 () Bool)

(declare-fun b_next!117367 () Bool)

(assert (=> b!4122871 (= b_free!116663 (not b_next!117367))))

(declare-fun tp!1256387 () Bool)

(declare-fun b_and!319009 () Bool)

(assert (=> b!4122871 (= tp!1256387 b_and!319009)))

(declare-fun b_free!116665 () Bool)

(declare-fun b_next!117369 () Bool)

(assert (=> b!4122871 (= b_free!116665 (not b_next!117369))))

(declare-fun tp!1256390 () Bool)

(declare-fun b_and!319011 () Bool)

(assert (=> b!4122871 (= tp!1256390 b_and!319011)))

(declare-fun b!4122866 () Bool)

(declare-fun b_free!116667 () Bool)

(declare-fun b_next!117371 () Bool)

(assert (=> b!4122866 (= b_free!116667 (not b_next!117371))))

(declare-fun tp!1256381 () Bool)

(declare-fun b_and!319013 () Bool)

(assert (=> b!4122866 (= tp!1256381 b_and!319013)))

(declare-fun b_free!116669 () Bool)

(declare-fun b_next!117373 () Bool)

(assert (=> b!4122866 (= b_free!116669 (not b_next!117373))))

(declare-fun tp!1256382 () Bool)

(declare-fun b_and!319015 () Bool)

(assert (=> b!4122866 (= tp!1256382 b_and!319015)))

(declare-fun b!4122868 () Bool)

(declare-fun b_free!116671 () Bool)

(declare-fun b_next!117375 () Bool)

(assert (=> b!4122868 (= b_free!116671 (not b_next!117375))))

(declare-fun tp!1256386 () Bool)

(declare-fun b_and!319017 () Bool)

(assert (=> b!4122868 (= tp!1256386 b_and!319017)))

(declare-fun b_free!116673 () Bool)

(declare-fun b_next!117377 () Bool)

(assert (=> b!4122868 (= b_free!116673 (not b_next!117377))))

(declare-fun tp!1256389 () Bool)

(declare-fun b_and!319019 () Bool)

(assert (=> b!4122868 (= tp!1256389 b_and!319019)))

(declare-fun b!4122852 () Bool)

(declare-fun res!1684733 () Bool)

(declare-fun e!2558254 () Bool)

(assert (=> b!4122852 (=> (not res!1684733) (not e!2558254))))

(declare-datatypes ((List!44724 0))(
  ( (Nil!44600) (Cons!44600 (h!50020 (_ BitVec 16)) (t!340885 List!44724)) )
))
(declare-datatypes ((TokenValue!7519 0))(
  ( (FloatLiteralValue!15038 (text!53078 List!44724)) (TokenValueExt!7518 (__x!27255 Int)) (Broken!37595 (value!228266 List!44724)) (Object!7642) (End!7519) (Def!7519) (Underscore!7519) (Match!7519) (Else!7519) (Error!7519) (Case!7519) (If!7519) (Extends!7519) (Abstract!7519) (Class!7519) (Val!7519) (DelimiterValue!15038 (del!7579 List!44724)) (KeywordValue!7525 (value!228267 List!44724)) (CommentValue!15038 (value!228268 List!44724)) (WhitespaceValue!15038 (value!228269 List!44724)) (IndentationValue!7519 (value!228270 List!44724)) (String!51346) (Int32!7519) (Broken!37596 (value!228271 List!44724)) (Boolean!7520) (Unit!63943) (OperatorValue!7522 (op!7579 List!44724)) (IdentifierValue!15038 (value!228272 List!44724)) (IdentifierValue!15039 (value!228273 List!44724)) (WhitespaceValue!15039 (value!228274 List!44724)) (True!15038) (False!15038) (Broken!37597 (value!228275 List!44724)) (Broken!37598 (value!228276 List!44724)) (True!15039) (RightBrace!7519) (RightBracket!7519) (Colon!7519) (Null!7519) (Comma!7519) (LeftBracket!7519) (False!15039) (LeftBrace!7519) (ImaginaryLiteralValue!7519 (text!53079 List!44724)) (StringLiteralValue!22557 (value!228277 List!44724)) (EOFValue!7519 (value!228278 List!44724)) (IdentValue!7519 (value!228279 List!44724)) (DelimiterValue!15039 (value!228280 List!44724)) (DedentValue!7519 (value!228281 List!44724)) (NewLineValue!7519 (value!228282 List!44724)) (IntegerValue!22557 (value!228283 (_ BitVec 32)) (text!53080 List!44724)) (IntegerValue!22558 (value!228284 Int) (text!53081 List!44724)) (Times!7519) (Or!7519) (Equal!7519) (Minus!7519) (Broken!37599 (value!228285 List!44724)) (And!7519) (Div!7519) (LessEqual!7519) (Mod!7519) (Concat!19713) (Not!7519) (Plus!7519) (SpaceValue!7519 (value!228286 List!44724)) (IntegerValue!22559 (value!228287 Int) (text!53082 List!44724)) (StringLiteralValue!22558 (text!53083 List!44724)) (FloatLiteralValue!15039 (text!53084 List!44724)) (BytesLiteralValue!7519 (value!228288 List!44724)) (CommentValue!15039 (value!228289 List!44724)) (StringLiteralValue!22559 (value!228290 List!44724)) (ErrorTokenValue!7519 (msg!7580 List!44724)) )
))
(declare-datatypes ((C!24574 0))(
  ( (C!24575 (val!14397 Int)) )
))
(declare-datatypes ((List!44725 0))(
  ( (Nil!44601) (Cons!44601 (h!50021 C!24574) (t!340886 List!44725)) )
))
(declare-datatypes ((IArray!27005 0))(
  ( (IArray!27006 (innerList!13560 List!44725)) )
))
(declare-datatypes ((Conc!13500 0))(
  ( (Node!13500 (left!33403 Conc!13500) (right!33733 Conc!13500) (csize!27230 Int) (cheight!13711 Int)) (Leaf!20860 (xs!16806 IArray!27005) (csize!27231 Int)) (Empty!13500) )
))
(declare-datatypes ((BalanceConc!26594 0))(
  ( (BalanceConc!26595 (c!707789 Conc!13500)) )
))
(declare-datatypes ((String!51347 0))(
  ( (String!51348 (value!228291 String)) )
))
(declare-datatypes ((Regex!12194 0))(
  ( (ElementMatch!12194 (c!707790 C!24574)) (Concat!19714 (regOne!24900 Regex!12194) (regTwo!24900 Regex!12194)) (EmptyExpr!12194) (Star!12194 (reg!12523 Regex!12194)) (EmptyLang!12194) (Union!12194 (regOne!24901 Regex!12194) (regTwo!24901 Regex!12194)) )
))
(declare-datatypes ((TokenValueInjection!14466 0))(
  ( (TokenValueInjection!14467 (toValue!9941 Int) (toChars!9800 Int)) )
))
(declare-datatypes ((Rule!14378 0))(
  ( (Rule!14379 (regex!7289 Regex!12194) (tag!8149 String!51347) (isSeparator!7289 Bool) (transformation!7289 TokenValueInjection!14466)) )
))
(declare-datatypes ((List!44726 0))(
  ( (Nil!44602) (Cons!44602 (h!50022 Rule!14378) (t!340887 List!44726)) )
))
(declare-fun rules!3756 () List!44726)

(declare-fun rBis!149 () Rule!14378)

(declare-fun r!4008 () Rule!14378)

(declare-fun getIndex!637 (List!44726 Rule!14378) Int)

(assert (=> b!4122852 (= res!1684733 (< (getIndex!637 rules!3756 rBis!149) (getIndex!637 rules!3756 r!4008)))))

(declare-fun b!4122853 () Bool)

(declare-fun tp!1256388 () Bool)

(declare-fun e!2558267 () Bool)

(declare-fun e!2558263 () Bool)

(declare-fun inv!59180 (String!51347) Bool)

(declare-fun inv!59183 (TokenValueInjection!14466) Bool)

(assert (=> b!4122853 (= e!2558267 (and tp!1256388 (inv!59180 (tag!8149 r!4008)) (inv!59183 (transformation!7289 r!4008)) e!2558263))))

(declare-fun b!4122854 () Bool)

(declare-fun e!2558259 () Bool)

(declare-fun e!2558261 () Bool)

(declare-fun tp!1256384 () Bool)

(assert (=> b!4122854 (= e!2558259 (and e!2558261 tp!1256384))))

(declare-fun b!4122855 () Bool)

(declare-fun e!2558262 () Bool)

(declare-fun e!2558256 () Bool)

(assert (=> b!4122855 (= e!2558262 e!2558256)))

(declare-fun res!1684734 () Bool)

(assert (=> b!4122855 (=> res!1684734 e!2558256)))

(declare-fun lt!1470959 () Int)

(declare-fun lt!1470962 () Int)

(assert (=> b!4122855 (= res!1684734 (or (> lt!1470959 lt!1470962) (< lt!1470959 lt!1470962)))))

(declare-datatypes ((Token!13508 0))(
  ( (Token!13509 (value!228292 TokenValue!7519) (rule!10367 Rule!14378) (size!33019 Int) (originalCharacters!7785 List!44725)) )
))
(declare-datatypes ((tuple2!43060 0))(
  ( (tuple2!43061 (_1!24664 Token!13508) (_2!24664 List!44725)) )
))
(declare-datatypes ((Option!9597 0))(
  ( (None!9596) (Some!9596 (v!40186 tuple2!43060)) )
))
(declare-fun lt!1470960 () Option!9597)

(declare-fun size!33020 (BalanceConc!26594) Int)

(declare-fun charsOf!4911 (Token!13508) BalanceConc!26594)

(declare-fun get!14552 (Option!9597) tuple2!43060)

(assert (=> b!4122855 (= lt!1470959 (size!33020 (charsOf!4911 (_1!24664 (get!14552 lt!1470960)))))))

(declare-fun b!4122856 () Bool)

(declare-fun res!1684741 () Bool)

(declare-fun e!2558253 () Bool)

(assert (=> b!4122856 (=> (not res!1684741) (not e!2558253))))

(declare-fun p!2912 () List!44725)

(declare-fun input!3238 () List!44725)

(declare-fun isPrefix!4224 (List!44725 List!44725) Bool)

(assert (=> b!4122856 (= res!1684741 (isPrefix!4224 p!2912 input!3238))))

(declare-fun b!4122857 () Bool)

(declare-fun res!1684731 () Bool)

(assert (=> b!4122857 (=> (not res!1684731) (not e!2558253))))

(declare-fun contains!8961 (List!44726 Rule!14378) Bool)

(assert (=> b!4122857 (= res!1684731 (contains!8961 rules!3756 rBis!149))))

(declare-fun b!4122858 () Bool)

(declare-fun e!2558257 () Bool)

(declare-fun tp_is_empty!21311 () Bool)

(declare-fun tp!1256392 () Bool)

(assert (=> b!4122858 (= e!2558257 (and tp_is_empty!21311 tp!1256392))))

(declare-fun b!4122859 () Bool)

(declare-fun e!2558255 () Bool)

(assert (=> b!4122859 (= e!2558254 (not e!2558255))))

(declare-fun res!1684730 () Bool)

(assert (=> b!4122859 (=> res!1684730 e!2558255)))

(assert (=> b!4122859 (= res!1684730 (or (not (is-Cons!44602 rules!3756)) (not (= (h!50022 rules!3756) rBis!149))))))

(declare-datatypes ((Unit!63944 0))(
  ( (Unit!63945) )
))
(declare-fun lt!1470961 () Unit!63944)

(declare-datatypes ((LexerInterface!6878 0))(
  ( (LexerInterfaceExt!6875 (__x!27256 Int)) (Lexer!6876) )
))
(declare-fun thiss!25645 () LexerInterface!6878)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2141 (LexerInterface!6878 Rule!14378 List!44726) Unit!63944)

(assert (=> b!4122859 (= lt!1470961 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2141 thiss!25645 r!4008 rules!3756))))

(declare-fun ruleValid!3097 (LexerInterface!6878 Rule!14378) Bool)

(assert (=> b!4122859 (ruleValid!3097 thiss!25645 rBis!149)))

(declare-fun lt!1470969 () Unit!63944)

(assert (=> b!4122859 (= lt!1470969 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2141 thiss!25645 rBis!149 rules!3756))))

(declare-fun tp!1256385 () Bool)

(declare-fun e!2558260 () Bool)

(declare-fun b!4122860 () Bool)

(declare-fun e!2558265 () Bool)

(assert (=> b!4122860 (= e!2558265 (and tp!1256385 (inv!59180 (tag!8149 rBis!149)) (inv!59183 (transformation!7289 rBis!149)) e!2558260))))

(declare-fun b!4122861 () Bool)

(declare-fun res!1684732 () Bool)

(assert (=> b!4122861 (=> (not res!1684732) (not e!2558253))))

(assert (=> b!4122861 (= res!1684732 (contains!8961 rules!3756 r!4008))))

(declare-fun b!4122862 () Bool)

(declare-fun res!1684743 () Bool)

(assert (=> b!4122862 (=> (not res!1684743) (not e!2558254))))

(declare-fun matchR!6025 (Regex!12194 List!44725) Bool)

(assert (=> b!4122862 (= res!1684743 (matchR!6025 (regex!7289 r!4008) p!2912))))

(declare-fun res!1684738 () Bool)

(assert (=> start!390996 (=> (not res!1684738) (not e!2558253))))

(assert (=> start!390996 (= res!1684738 (is-Lexer!6876 thiss!25645))))

(assert (=> start!390996 e!2558253))

(assert (=> start!390996 e!2558259))

(assert (=> start!390996 e!2558257))

(assert (=> start!390996 true))

(assert (=> start!390996 e!2558267))

(declare-fun e!2558269 () Bool)

(assert (=> start!390996 e!2558269))

(assert (=> start!390996 e!2558265))

(declare-fun b!4122851 () Bool)

(declare-fun res!1684742 () Bool)

(assert (=> b!4122851 (=> (not res!1684742) (not e!2558253))))

(declare-fun isEmpty!26541 (List!44726) Bool)

(assert (=> b!4122851 (= res!1684742 (not (isEmpty!26541 rules!3756)))))

(declare-fun b!4122863 () Bool)

(declare-fun res!1684736 () Bool)

(assert (=> b!4122863 (=> (not res!1684736) (not e!2558254))))

(assert (=> b!4122863 (= res!1684736 (ruleValid!3097 thiss!25645 r!4008))))

(declare-fun b!4122864 () Bool)

(declare-fun res!1684740 () Bool)

(assert (=> b!4122864 (=> (not res!1684740) (not e!2558253))))

(declare-fun rulesInvariant!6175 (LexerInterface!6878 List!44726) Bool)

(assert (=> b!4122864 (= res!1684740 (rulesInvariant!6175 thiss!25645 rules!3756))))

(declare-fun b!4122865 () Bool)

(declare-fun res!1684737 () Bool)

(assert (=> b!4122865 (=> (not res!1684737) (not e!2558253))))

(declare-fun isEmpty!26542 (List!44725) Bool)

(assert (=> b!4122865 (= res!1684737 (not (isEmpty!26542 p!2912)))))

(assert (=> b!4122866 (= e!2558260 (and tp!1256381 tp!1256382))))

(declare-fun b!4122867 () Bool)

(declare-fun tp!1256383 () Bool)

(declare-fun e!2558264 () Bool)

(assert (=> b!4122867 (= e!2558261 (and tp!1256383 (inv!59180 (tag!8149 (h!50022 rules!3756))) (inv!59183 (transformation!7289 (h!50022 rules!3756))) e!2558264))))

(assert (=> b!4122868 (= e!2558263 (and tp!1256386 tp!1256389))))

(declare-fun b!4122869 () Bool)

(declare-fun tp!1256391 () Bool)

(assert (=> b!4122869 (= e!2558269 (and tp_is_empty!21311 tp!1256391))))

(declare-fun b!4122870 () Bool)

(assert (=> b!4122870 (= e!2558255 e!2558262)))

(declare-fun res!1684739 () Bool)

(assert (=> b!4122870 (=> res!1684739 e!2558262)))

(declare-fun isEmpty!26543 (Option!9597) Bool)

(assert (=> b!4122870 (= res!1684739 (isEmpty!26543 lt!1470960))))

(declare-fun maxPrefixOneRule!3020 (LexerInterface!6878 Rule!14378 List!44725) Option!9597)

(assert (=> b!4122870 (= lt!1470960 (maxPrefixOneRule!3020 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4122870 (not (= rBis!149 r!4008))))

(declare-fun lt!1470966 () Unit!63944)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!29 (LexerInterface!6878 List!44726 Rule!14378 Rule!14378) Unit!63944)

(assert (=> b!4122870 (= lt!1470966 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!29 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun tail!6450 (List!44726) List!44726)

(assert (=> b!4122870 (contains!8961 (tail!6450 rules!3756) r!4008)))

(declare-fun lt!1470964 () Unit!63944)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!31 (List!44726 Rule!14378 Rule!14378) Unit!63944)

(assert (=> b!4122870 (= lt!1470964 (lemmaGetIndexBiggerAndHeadEqThenTailContains!31 rules!3756 rBis!149 r!4008))))

(assert (=> b!4122871 (= e!2558264 (and tp!1256387 tp!1256390))))

(declare-fun b!4122872 () Bool)

(declare-fun size!33021 (List!44725) Int)

(assert (=> b!4122872 (= e!2558256 (>= (size!33021 input!3238) lt!1470962))))

(assert (=> b!4122872 (not (= (tag!8149 rBis!149) (tag!8149 r!4008)))))

(declare-fun lt!1470963 () Unit!63944)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!47 (LexerInterface!6878 List!44726 Rule!14378 Rule!14378) Unit!63944)

(assert (=> b!4122872 (= lt!1470963 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!47 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun b!4122873 () Bool)

(assert (=> b!4122873 (= e!2558253 e!2558254)))

(declare-fun res!1684735 () Bool)

(assert (=> b!4122873 (=> (not res!1684735) (not e!2558254))))

(declare-fun lt!1470965 () TokenValue!7519)

(declare-fun maxPrefix!4070 (LexerInterface!6878 List!44726 List!44725) Option!9597)

(declare-fun getSuffix!2553 (List!44725 List!44725) List!44725)

(assert (=> b!4122873 (= res!1684735 (= (maxPrefix!4070 thiss!25645 rules!3756 input!3238) (Some!9596 (tuple2!43061 (Token!13509 lt!1470965 r!4008 lt!1470962 p!2912) (getSuffix!2553 input!3238 p!2912)))))))

(assert (=> b!4122873 (= lt!1470962 (size!33021 p!2912))))

(declare-fun lt!1470968 () BalanceConc!26594)

(declare-fun apply!10362 (TokenValueInjection!14466 BalanceConc!26594) TokenValue!7519)

(assert (=> b!4122873 (= lt!1470965 (apply!10362 (transformation!7289 r!4008) lt!1470968))))

(declare-fun lt!1470967 () Unit!63944)

(declare-fun lemmaSemiInverse!2147 (TokenValueInjection!14466 BalanceConc!26594) Unit!63944)

(assert (=> b!4122873 (= lt!1470967 (lemmaSemiInverse!2147 (transformation!7289 r!4008) lt!1470968))))

(declare-fun seqFromList!5406 (List!44725) BalanceConc!26594)

(assert (=> b!4122873 (= lt!1470968 (seqFromList!5406 p!2912))))

(assert (= (and start!390996 res!1684738) b!4122856))

(assert (= (and b!4122856 res!1684741) b!4122851))

(assert (= (and b!4122851 res!1684742) b!4122864))

(assert (= (and b!4122864 res!1684740) b!4122861))

(assert (= (and b!4122861 res!1684732) b!4122857))

(assert (= (and b!4122857 res!1684731) b!4122865))

(assert (= (and b!4122865 res!1684737) b!4122873))

(assert (= (and b!4122873 res!1684735) b!4122862))

(assert (= (and b!4122862 res!1684743) b!4122852))

(assert (= (and b!4122852 res!1684733) b!4122863))

(assert (= (and b!4122863 res!1684736) b!4122859))

(assert (= (and b!4122859 (not res!1684730)) b!4122870))

(assert (= (and b!4122870 (not res!1684739)) b!4122855))

(assert (= (and b!4122855 (not res!1684734)) b!4122872))

(assert (= b!4122867 b!4122871))

(assert (= b!4122854 b!4122867))

(assert (= (and start!390996 (is-Cons!44602 rules!3756)) b!4122854))

(assert (= (and start!390996 (is-Cons!44601 p!2912)) b!4122858))

(assert (= b!4122853 b!4122868))

(assert (= start!390996 b!4122853))

(assert (= (and start!390996 (is-Cons!44601 input!3238)) b!4122869))

(assert (= b!4122860 b!4122866))

(assert (= start!390996 b!4122860))

(declare-fun m!4721897 () Bool)

(assert (=> b!4122860 m!4721897))

(declare-fun m!4721899 () Bool)

(assert (=> b!4122860 m!4721899))

(declare-fun m!4721901 () Bool)

(assert (=> b!4122857 m!4721901))

(declare-fun m!4721903 () Bool)

(assert (=> b!4122861 m!4721903))

(declare-fun m!4721905 () Bool)

(assert (=> b!4122865 m!4721905))

(declare-fun m!4721907 () Bool)

(assert (=> b!4122864 m!4721907))

(declare-fun m!4721909 () Bool)

(assert (=> b!4122862 m!4721909))

(declare-fun m!4721911 () Bool)

(assert (=> b!4122853 m!4721911))

(declare-fun m!4721913 () Bool)

(assert (=> b!4122853 m!4721913))

(declare-fun m!4721915 () Bool)

(assert (=> b!4122872 m!4721915))

(declare-fun m!4721917 () Bool)

(assert (=> b!4122872 m!4721917))

(declare-fun m!4721919 () Bool)

(assert (=> b!4122873 m!4721919))

(declare-fun m!4721921 () Bool)

(assert (=> b!4122873 m!4721921))

(declare-fun m!4721923 () Bool)

(assert (=> b!4122873 m!4721923))

(declare-fun m!4721925 () Bool)

(assert (=> b!4122873 m!4721925))

(declare-fun m!4721927 () Bool)

(assert (=> b!4122873 m!4721927))

(declare-fun m!4721929 () Bool)

(assert (=> b!4122873 m!4721929))

(declare-fun m!4721931 () Bool)

(assert (=> b!4122855 m!4721931))

(declare-fun m!4721933 () Bool)

(assert (=> b!4122855 m!4721933))

(assert (=> b!4122855 m!4721933))

(declare-fun m!4721935 () Bool)

(assert (=> b!4122855 m!4721935))

(declare-fun m!4721937 () Bool)

(assert (=> b!4122870 m!4721937))

(declare-fun m!4721939 () Bool)

(assert (=> b!4122870 m!4721939))

(declare-fun m!4721941 () Bool)

(assert (=> b!4122870 m!4721941))

(assert (=> b!4122870 m!4721937))

(declare-fun m!4721943 () Bool)

(assert (=> b!4122870 m!4721943))

(declare-fun m!4721945 () Bool)

(assert (=> b!4122870 m!4721945))

(declare-fun m!4721947 () Bool)

(assert (=> b!4122870 m!4721947))

(declare-fun m!4721949 () Bool)

(assert (=> b!4122867 m!4721949))

(declare-fun m!4721951 () Bool)

(assert (=> b!4122867 m!4721951))

(declare-fun m!4721953 () Bool)

(assert (=> b!4122851 m!4721953))

(declare-fun m!4721955 () Bool)

(assert (=> b!4122852 m!4721955))

(declare-fun m!4721957 () Bool)

(assert (=> b!4122852 m!4721957))

(declare-fun m!4721959 () Bool)

(assert (=> b!4122859 m!4721959))

(declare-fun m!4721961 () Bool)

(assert (=> b!4122859 m!4721961))

(declare-fun m!4721963 () Bool)

(assert (=> b!4122859 m!4721963))

(declare-fun m!4721965 () Bool)

(assert (=> b!4122863 m!4721965))

(declare-fun m!4721967 () Bool)

(assert (=> b!4122856 m!4721967))

(push 1)

(assert (not b!4122851))

(assert (not b!4122861))

(assert (not b_next!117369))

(assert b_and!319019)

(assert b_and!319013)

(assert (not b!4122860))

(assert (not b!4122862))

(assert (not b!4122865))

(assert (not b!4122864))

(assert (not b_next!117367))

(assert (not b_next!117377))

(assert b_and!319009)

(assert b_and!319017)

(assert (not b!4122852))

(assert (not b!4122870))

(assert b_and!319015)

(assert (not b!4122857))

(assert (not b!4122867))

(assert (not b!4122869))

(assert (not b!4122872))

(assert (not b_next!117371))

(assert (not b!4122859))

(assert (not b!4122873))

(assert (not b_next!117375))

(assert (not b!4122858))

(assert tp_is_empty!21311)

(assert b_and!319011)

(assert (not b!4122863))

(assert (not b!4122856))

(assert (not b!4122855))

(assert (not b_next!117373))

(assert (not b!4122853))

(assert (not b!4122854))

(check-sat)

(pop 1)

(push 1)

(assert b_and!319015)

(assert (not b_next!117369))

(assert b_and!319019)

(assert b_and!319013)

(assert (not b_next!117371))

(assert (not b_next!117373))

(assert (not b_next!117367))

(assert (not b_next!117377))

(assert b_and!319009)

(assert b_and!319017)

(assert (not b_next!117375))

(assert b_and!319011)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1222028 () Bool)

(assert (=> d!1222028 (= (inv!59180 (tag!8149 rBis!149)) (= (mod (str.len (value!228291 (tag!8149 rBis!149))) 2) 0))))

(assert (=> b!4122860 d!1222028))

(declare-fun d!1222030 () Bool)

(declare-fun res!1684795 () Bool)

(declare-fun e!2558323 () Bool)

(assert (=> d!1222030 (=> (not res!1684795) (not e!2558323))))

(declare-fun semiInverseModEq!3139 (Int Int) Bool)

(assert (=> d!1222030 (= res!1684795 (semiInverseModEq!3139 (toChars!9800 (transformation!7289 rBis!149)) (toValue!9941 (transformation!7289 rBis!149))))))

(assert (=> d!1222030 (= (inv!59183 (transformation!7289 rBis!149)) e!2558323)))

(declare-fun b!4122945 () Bool)

(declare-fun equivClasses!3038 (Int Int) Bool)

(assert (=> b!4122945 (= e!2558323 (equivClasses!3038 (toChars!9800 (transformation!7289 rBis!149)) (toValue!9941 (transformation!7289 rBis!149))))))

(assert (= (and d!1222030 res!1684795) b!4122945))

(declare-fun m!4722041 () Bool)

(assert (=> d!1222030 m!4722041))

(declare-fun m!4722043 () Bool)

(assert (=> b!4122945 m!4722043))

(assert (=> b!4122860 d!1222030))

(declare-fun d!1222032 () Bool)

(declare-fun lt!1471005 () Bool)

(declare-fun content!6875 (List!44726) (Set Rule!14378))

(assert (=> d!1222032 (= lt!1471005 (set.member r!4008 (content!6875 (tail!6450 rules!3756))))))

(declare-fun e!2558328 () Bool)

(assert (=> d!1222032 (= lt!1471005 e!2558328)))

(declare-fun res!1684801 () Bool)

(assert (=> d!1222032 (=> (not res!1684801) (not e!2558328))))

(assert (=> d!1222032 (= res!1684801 (is-Cons!44602 (tail!6450 rules!3756)))))

(assert (=> d!1222032 (= (contains!8961 (tail!6450 rules!3756) r!4008) lt!1471005)))

(declare-fun b!4122950 () Bool)

(declare-fun e!2558329 () Bool)

(assert (=> b!4122950 (= e!2558328 e!2558329)))

(declare-fun res!1684800 () Bool)

(assert (=> b!4122950 (=> res!1684800 e!2558329)))

(assert (=> b!4122950 (= res!1684800 (= (h!50022 (tail!6450 rules!3756)) r!4008))))

(declare-fun b!4122951 () Bool)

(assert (=> b!4122951 (= e!2558329 (contains!8961 (t!340887 (tail!6450 rules!3756)) r!4008))))

(assert (= (and d!1222032 res!1684801) b!4122950))

(assert (= (and b!4122950 (not res!1684800)) b!4122951))

(assert (=> d!1222032 m!4721937))

(declare-fun m!4722045 () Bool)

(assert (=> d!1222032 m!4722045))

(declare-fun m!4722047 () Bool)

(assert (=> d!1222032 m!4722047))

(declare-fun m!4722049 () Bool)

(assert (=> b!4122951 m!4722049))

(assert (=> b!4122870 d!1222032))

(declare-fun d!1222034 () Bool)

(assert (=> d!1222034 (= (tail!6450 rules!3756) (t!340887 rules!3756))))

(assert (=> b!4122870 d!1222034))

(declare-fun d!1222036 () Bool)

(assert (=> d!1222036 (= (isEmpty!26543 lt!1470960) (not (is-Some!9596 lt!1470960)))))

(assert (=> b!4122870 d!1222036))

(declare-fun d!1222038 () Bool)

(assert (=> d!1222038 (contains!8961 (tail!6450 rules!3756) r!4008)))

(declare-fun lt!1471008 () Unit!63944)

(declare-fun choose!25200 (List!44726 Rule!14378 Rule!14378) Unit!63944)

(assert (=> d!1222038 (= lt!1471008 (choose!25200 rules!3756 rBis!149 r!4008))))

(declare-fun e!2558332 () Bool)

(assert (=> d!1222038 e!2558332))

(declare-fun res!1684804 () Bool)

(assert (=> d!1222038 (=> (not res!1684804) (not e!2558332))))

(assert (=> d!1222038 (= res!1684804 (contains!8961 rules!3756 rBis!149))))

(assert (=> d!1222038 (= (lemmaGetIndexBiggerAndHeadEqThenTailContains!31 rules!3756 rBis!149 r!4008) lt!1471008)))

(declare-fun b!4122954 () Bool)

(assert (=> b!4122954 (= e!2558332 (contains!8961 rules!3756 r!4008))))

(assert (= (and d!1222038 res!1684804) b!4122954))

(assert (=> d!1222038 m!4721937))

(assert (=> d!1222038 m!4721937))

(assert (=> d!1222038 m!4721939))

(declare-fun m!4722051 () Bool)

(assert (=> d!1222038 m!4722051))

(assert (=> d!1222038 m!4721901))

(assert (=> b!4122954 m!4721903))

(assert (=> b!4122870 d!1222038))

(declare-fun b!4122985 () Bool)

(declare-fun e!2558347 () Option!9597)

(assert (=> b!4122985 (= e!2558347 None!9596)))

(declare-fun b!4122986 () Bool)

(declare-fun e!2558349 () Bool)

(declare-fun e!2558348 () Bool)

(assert (=> b!4122986 (= e!2558349 e!2558348)))

(declare-fun res!1684825 () Bool)

(assert (=> b!4122986 (=> (not res!1684825) (not e!2558348))))

(declare-fun lt!1471032 () Option!9597)

(declare-fun list!16364 (BalanceConc!26594) List!44725)

(assert (=> b!4122986 (= res!1684825 (matchR!6025 (regex!7289 rBis!149) (list!16364 (charsOf!4911 (_1!24664 (get!14552 lt!1471032))))))))

(declare-fun b!4122987 () Bool)

(declare-fun res!1684829 () Bool)

(assert (=> b!4122987 (=> (not res!1684829) (not e!2558348))))

(assert (=> b!4122987 (= res!1684829 (= (value!228292 (_1!24664 (get!14552 lt!1471032))) (apply!10362 (transformation!7289 (rule!10367 (_1!24664 (get!14552 lt!1471032)))) (seqFromList!5406 (originalCharacters!7785 (_1!24664 (get!14552 lt!1471032)))))))))

(declare-fun b!4122988 () Bool)

(declare-fun res!1684828 () Bool)

(assert (=> b!4122988 (=> (not res!1684828) (not e!2558348))))

(assert (=> b!4122988 (= res!1684828 (= (rule!10367 (_1!24664 (get!14552 lt!1471032))) rBis!149))))

(declare-fun b!4122989 () Bool)

(assert (=> b!4122989 (= e!2558348 (= (size!33019 (_1!24664 (get!14552 lt!1471032))) (size!33021 (originalCharacters!7785 (_1!24664 (get!14552 lt!1471032))))))))

(declare-fun b!4122990 () Bool)

(declare-fun res!1684826 () Bool)

(assert (=> b!4122990 (=> (not res!1684826) (not e!2558348))))

(assert (=> b!4122990 (= res!1684826 (< (size!33021 (_2!24664 (get!14552 lt!1471032))) (size!33021 input!3238)))))

(declare-fun b!4122991 () Bool)

(declare-fun e!2558350 () Bool)

(declare-datatypes ((tuple2!43064 0))(
  ( (tuple2!43065 (_1!24666 List!44725) (_2!24666 List!44725)) )
))
(declare-fun findLongestMatchInner!1494 (Regex!12194 List!44725 Int List!44725 List!44725 Int) tuple2!43064)

(assert (=> b!4122991 (= e!2558350 (matchR!6025 (regex!7289 rBis!149) (_1!24666 (findLongestMatchInner!1494 (regex!7289 rBis!149) Nil!44601 (size!33021 Nil!44601) input!3238 input!3238 (size!33021 input!3238)))))))

(declare-fun d!1222040 () Bool)

(assert (=> d!1222040 e!2558349))

(declare-fun res!1684827 () Bool)

(assert (=> d!1222040 (=> res!1684827 e!2558349)))

(assert (=> d!1222040 (= res!1684827 (isEmpty!26543 lt!1471032))))

(assert (=> d!1222040 (= lt!1471032 e!2558347)))

(declare-fun c!707799 () Bool)

(declare-fun lt!1471029 () tuple2!43064)

(assert (=> d!1222040 (= c!707799 (isEmpty!26542 (_1!24666 lt!1471029)))))

(declare-fun findLongestMatch!1407 (Regex!12194 List!44725) tuple2!43064)

(assert (=> d!1222040 (= lt!1471029 (findLongestMatch!1407 (regex!7289 rBis!149) input!3238))))

(assert (=> d!1222040 (ruleValid!3097 thiss!25645 rBis!149)))

(assert (=> d!1222040 (= (maxPrefixOneRule!3020 thiss!25645 rBis!149 input!3238) lt!1471032)))

(declare-fun b!4122992 () Bool)

(declare-fun res!1684831 () Bool)

(assert (=> b!4122992 (=> (not res!1684831) (not e!2558348))))

(declare-fun ++!11559 (List!44725 List!44725) List!44725)

(assert (=> b!4122992 (= res!1684831 (= (++!11559 (list!16364 (charsOf!4911 (_1!24664 (get!14552 lt!1471032)))) (_2!24664 (get!14552 lt!1471032))) input!3238))))

(declare-fun b!4122993 () Bool)

(assert (=> b!4122993 (= e!2558347 (Some!9596 (tuple2!43061 (Token!13509 (apply!10362 (transformation!7289 rBis!149) (seqFromList!5406 (_1!24666 lt!1471029))) rBis!149 (size!33020 (seqFromList!5406 (_1!24666 lt!1471029))) (_1!24666 lt!1471029)) (_2!24666 lt!1471029))))))

(declare-fun lt!1471031 () Unit!63944)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1467 (Regex!12194 List!44725) Unit!63944)

(assert (=> b!4122993 (= lt!1471031 (longestMatchIsAcceptedByMatchOrIsEmpty!1467 (regex!7289 rBis!149) input!3238))))

(declare-fun res!1684830 () Bool)

(assert (=> b!4122993 (= res!1684830 (isEmpty!26542 (_1!24666 (findLongestMatchInner!1494 (regex!7289 rBis!149) Nil!44601 (size!33021 Nil!44601) input!3238 input!3238 (size!33021 input!3238)))))))

(assert (=> b!4122993 (=> res!1684830 e!2558350)))

(assert (=> b!4122993 e!2558350))

(declare-fun lt!1471033 () Unit!63944)

(assert (=> b!4122993 (= lt!1471033 lt!1471031)))

(declare-fun lt!1471030 () Unit!63944)

(assert (=> b!4122993 (= lt!1471030 (lemmaSemiInverse!2147 (transformation!7289 rBis!149) (seqFromList!5406 (_1!24666 lt!1471029))))))

(assert (= (and d!1222040 c!707799) b!4122985))

(assert (= (and d!1222040 (not c!707799)) b!4122993))

(assert (= (and b!4122993 (not res!1684830)) b!4122991))

(assert (= (and d!1222040 (not res!1684827)) b!4122986))

(assert (= (and b!4122986 res!1684825) b!4122992))

(assert (= (and b!4122992 res!1684831) b!4122990))

(assert (= (and b!4122990 res!1684826) b!4122988))

(assert (= (and b!4122988 res!1684828) b!4122987))

(assert (= (and b!4122987 res!1684829) b!4122989))

(declare-fun m!4722065 () Bool)

(assert (=> d!1222040 m!4722065))

(declare-fun m!4722067 () Bool)

(assert (=> d!1222040 m!4722067))

(declare-fun m!4722069 () Bool)

(assert (=> d!1222040 m!4722069))

(assert (=> d!1222040 m!4721961))

(declare-fun m!4722071 () Bool)

(assert (=> b!4122988 m!4722071))

(assert (=> b!4122987 m!4722071))

(declare-fun m!4722073 () Bool)

(assert (=> b!4122987 m!4722073))

(assert (=> b!4122987 m!4722073))

(declare-fun m!4722075 () Bool)

(assert (=> b!4122987 m!4722075))

(declare-fun m!4722077 () Bool)

(assert (=> b!4122993 m!4722077))

(assert (=> b!4122993 m!4721915))

(declare-fun m!4722079 () Bool)

(assert (=> b!4122993 m!4722079))

(declare-fun m!4722081 () Bool)

(assert (=> b!4122993 m!4722081))

(declare-fun m!4722083 () Bool)

(assert (=> b!4122993 m!4722083))

(assert (=> b!4122993 m!4722079))

(assert (=> b!4122993 m!4722077))

(assert (=> b!4122993 m!4721915))

(declare-fun m!4722085 () Bool)

(assert (=> b!4122993 m!4722085))

(assert (=> b!4122993 m!4722079))

(declare-fun m!4722087 () Bool)

(assert (=> b!4122993 m!4722087))

(declare-fun m!4722089 () Bool)

(assert (=> b!4122993 m!4722089))

(assert (=> b!4122993 m!4722079))

(declare-fun m!4722091 () Bool)

(assert (=> b!4122993 m!4722091))

(assert (=> b!4122986 m!4722071))

(declare-fun m!4722093 () Bool)

(assert (=> b!4122986 m!4722093))

(assert (=> b!4122986 m!4722093))

(declare-fun m!4722095 () Bool)

(assert (=> b!4122986 m!4722095))

(assert (=> b!4122986 m!4722095))

(declare-fun m!4722097 () Bool)

(assert (=> b!4122986 m!4722097))

(assert (=> b!4122989 m!4722071))

(declare-fun m!4722099 () Bool)

(assert (=> b!4122989 m!4722099))

(assert (=> b!4122990 m!4722071))

(declare-fun m!4722101 () Bool)

(assert (=> b!4122990 m!4722101))

(assert (=> b!4122990 m!4721915))

(assert (=> b!4122992 m!4722071))

(assert (=> b!4122992 m!4722093))

(assert (=> b!4122992 m!4722093))

(assert (=> b!4122992 m!4722095))

(assert (=> b!4122992 m!4722095))

(declare-fun m!4722103 () Bool)

(assert (=> b!4122992 m!4722103))

(assert (=> b!4122991 m!4722077))

(assert (=> b!4122991 m!4721915))

(assert (=> b!4122991 m!4722077))

(assert (=> b!4122991 m!4721915))

(assert (=> b!4122991 m!4722085))

(declare-fun m!4722105 () Bool)

(assert (=> b!4122991 m!4722105))

(assert (=> b!4122870 d!1222040))

(declare-fun d!1222054 () Bool)

(assert (=> d!1222054 (not (= rBis!149 r!4008))))

(declare-fun lt!1471038 () Unit!63944)

(declare-fun choose!25201 (LexerInterface!6878 List!44726 Rule!14378 Rule!14378) Unit!63944)

(assert (=> d!1222054 (= lt!1471038 (choose!25201 thiss!25645 rules!3756 rBis!149 r!4008))))

(assert (=> d!1222054 (contains!8961 rules!3756 rBis!149)))

(assert (=> d!1222054 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!29 thiss!25645 rules!3756 rBis!149 r!4008) lt!1471038)))

(declare-fun bs!594739 () Bool)

(assert (= bs!594739 d!1222054))

(declare-fun m!4722107 () Bool)

(assert (=> bs!594739 m!4722107))

(assert (=> bs!594739 m!4721901))

(assert (=> b!4122870 d!1222054))

(declare-fun d!1222056 () Bool)

(assert (=> d!1222056 (ruleValid!3097 thiss!25645 r!4008)))

(declare-fun lt!1471041 () Unit!63944)

(declare-fun choose!25202 (LexerInterface!6878 Rule!14378 List!44726) Unit!63944)

(assert (=> d!1222056 (= lt!1471041 (choose!25202 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1222056 (contains!8961 rules!3756 r!4008)))

(assert (=> d!1222056 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2141 thiss!25645 r!4008 rules!3756) lt!1471041)))

(declare-fun bs!594740 () Bool)

(assert (= bs!594740 d!1222056))

(assert (=> bs!594740 m!4721965))

(declare-fun m!4722109 () Bool)

(assert (=> bs!594740 m!4722109))

(assert (=> bs!594740 m!4721903))

(assert (=> b!4122859 d!1222056))

(declare-fun d!1222058 () Bool)

(declare-fun res!1684852 () Bool)

(declare-fun e!2558367 () Bool)

(assert (=> d!1222058 (=> (not res!1684852) (not e!2558367))))

(declare-fun validRegex!5483 (Regex!12194) Bool)

(assert (=> d!1222058 (= res!1684852 (validRegex!5483 (regex!7289 rBis!149)))))

(assert (=> d!1222058 (= (ruleValid!3097 thiss!25645 rBis!149) e!2558367)))

(declare-fun b!4123026 () Bool)

(declare-fun res!1684853 () Bool)

(assert (=> b!4123026 (=> (not res!1684853) (not e!2558367))))

(declare-fun nullable!4277 (Regex!12194) Bool)

(assert (=> b!4123026 (= res!1684853 (not (nullable!4277 (regex!7289 rBis!149))))))

(declare-fun b!4123027 () Bool)

(assert (=> b!4123027 (= e!2558367 (not (= (tag!8149 rBis!149) (String!51348 ""))))))

(assert (= (and d!1222058 res!1684852) b!4123026))

(assert (= (and b!4123026 res!1684853) b!4123027))

(declare-fun m!4722111 () Bool)

(assert (=> d!1222058 m!4722111))

(declare-fun m!4722113 () Bool)

(assert (=> b!4123026 m!4722113))

(assert (=> b!4122859 d!1222058))

(declare-fun d!1222060 () Bool)

(assert (=> d!1222060 (ruleValid!3097 thiss!25645 rBis!149)))

(declare-fun lt!1471042 () Unit!63944)

(assert (=> d!1222060 (= lt!1471042 (choose!25202 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1222060 (contains!8961 rules!3756 rBis!149)))

(assert (=> d!1222060 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2141 thiss!25645 rBis!149 rules!3756) lt!1471042)))

(declare-fun bs!594741 () Bool)

(assert (= bs!594741 d!1222060))

(assert (=> bs!594741 m!4721961))

(declare-fun m!4722115 () Bool)

(assert (=> bs!594741 m!4722115))

(assert (=> bs!594741 m!4721901))

(assert (=> b!4122859 d!1222060))

(declare-fun d!1222062 () Bool)

(declare-fun e!2558381 () Bool)

(assert (=> d!1222062 e!2558381))

(declare-fun res!1684872 () Bool)

(assert (=> d!1222062 (=> res!1684872 e!2558381)))

(declare-fun lt!1471046 () Bool)

(assert (=> d!1222062 (= res!1684872 (not lt!1471046))))

(declare-fun e!2558382 () Bool)

(assert (=> d!1222062 (= lt!1471046 e!2558382)))

(declare-fun res!1684873 () Bool)

(assert (=> d!1222062 (=> res!1684873 e!2558382)))

(assert (=> d!1222062 (= res!1684873 (is-Nil!44601 p!2912))))

(assert (=> d!1222062 (= (isPrefix!4224 p!2912 input!3238) lt!1471046)))

(declare-fun b!4123050 () Bool)

(declare-fun e!2558383 () Bool)

(assert (=> b!4123050 (= e!2558382 e!2558383)))

(declare-fun res!1684871 () Bool)

(assert (=> b!4123050 (=> (not res!1684871) (not e!2558383))))

(assert (=> b!4123050 (= res!1684871 (not (is-Nil!44601 input!3238)))))

(declare-fun b!4123053 () Bool)

(assert (=> b!4123053 (= e!2558381 (>= (size!33021 input!3238) (size!33021 p!2912)))))

(declare-fun b!4123051 () Bool)

(declare-fun res!1684870 () Bool)

(assert (=> b!4123051 (=> (not res!1684870) (not e!2558383))))

(declare-fun head!8685 (List!44725) C!24574)

(assert (=> b!4123051 (= res!1684870 (= (head!8685 p!2912) (head!8685 input!3238)))))

(declare-fun b!4123052 () Bool)

(declare-fun tail!6452 (List!44725) List!44725)

(assert (=> b!4123052 (= e!2558383 (isPrefix!4224 (tail!6452 p!2912) (tail!6452 input!3238)))))

(assert (= (and d!1222062 (not res!1684873)) b!4123050))

(assert (= (and b!4123050 res!1684871) b!4123051))

(assert (= (and b!4123051 res!1684870) b!4123052))

(assert (= (and d!1222062 (not res!1684872)) b!4123053))

(assert (=> b!4123053 m!4721915))

(assert (=> b!4123053 m!4721919))

(declare-fun m!4722117 () Bool)

(assert (=> b!4123051 m!4722117))

(declare-fun m!4722119 () Bool)

(assert (=> b!4123051 m!4722119))

(declare-fun m!4722121 () Bool)

(assert (=> b!4123052 m!4722121))

(declare-fun m!4722123 () Bool)

(assert (=> b!4123052 m!4722123))

(assert (=> b!4123052 m!4722121))

(assert (=> b!4123052 m!4722123))

(declare-fun m!4722125 () Bool)

(assert (=> b!4123052 m!4722125))

(assert (=> b!4122856 d!1222062))

(declare-fun d!1222064 () Bool)

(declare-fun lt!1471049 () Int)

(assert (=> d!1222064 (= lt!1471049 (size!33021 (list!16364 (charsOf!4911 (_1!24664 (get!14552 lt!1470960))))))))

(declare-fun size!33025 (Conc!13500) Int)

(assert (=> d!1222064 (= lt!1471049 (size!33025 (c!707789 (charsOf!4911 (_1!24664 (get!14552 lt!1470960))))))))

(assert (=> d!1222064 (= (size!33020 (charsOf!4911 (_1!24664 (get!14552 lt!1470960)))) lt!1471049)))

(declare-fun bs!594742 () Bool)

(assert (= bs!594742 d!1222064))

(assert (=> bs!594742 m!4721933))

(declare-fun m!4722141 () Bool)

(assert (=> bs!594742 m!4722141))

(assert (=> bs!594742 m!4722141))

(declare-fun m!4722143 () Bool)

(assert (=> bs!594742 m!4722143))

(declare-fun m!4722145 () Bool)

(assert (=> bs!594742 m!4722145))

(assert (=> b!4122855 d!1222064))

(declare-fun d!1222068 () Bool)

(declare-fun lt!1471052 () BalanceConc!26594)

(assert (=> d!1222068 (= (list!16364 lt!1471052) (originalCharacters!7785 (_1!24664 (get!14552 lt!1470960))))))

(declare-fun dynLambda!19058 (Int TokenValue!7519) BalanceConc!26594)

(assert (=> d!1222068 (= lt!1471052 (dynLambda!19058 (toChars!9800 (transformation!7289 (rule!10367 (_1!24664 (get!14552 lt!1470960))))) (value!228292 (_1!24664 (get!14552 lt!1470960)))))))

(assert (=> d!1222068 (= (charsOf!4911 (_1!24664 (get!14552 lt!1470960))) lt!1471052)))

(declare-fun b_lambda!120975 () Bool)

(assert (=> (not b_lambda!120975) (not d!1222068)))

(declare-fun t!340892 () Bool)

(declare-fun tb!247383 () Bool)

(assert (=> (and b!4122871 (= (toChars!9800 (transformation!7289 (h!50022 rules!3756))) (toChars!9800 (transformation!7289 (rule!10367 (_1!24664 (get!14552 lt!1470960)))))) t!340892) tb!247383))

(declare-fun b!4123058 () Bool)

(declare-fun e!2558386 () Bool)

(declare-fun tp!1256431 () Bool)

(declare-fun inv!59185 (Conc!13500) Bool)

(assert (=> b!4123058 (= e!2558386 (and (inv!59185 (c!707789 (dynLambda!19058 (toChars!9800 (transformation!7289 (rule!10367 (_1!24664 (get!14552 lt!1470960))))) (value!228292 (_1!24664 (get!14552 lt!1470960)))))) tp!1256431))))

(declare-fun result!300568 () Bool)

(declare-fun inv!59186 (BalanceConc!26594) Bool)

(assert (=> tb!247383 (= result!300568 (and (inv!59186 (dynLambda!19058 (toChars!9800 (transformation!7289 (rule!10367 (_1!24664 (get!14552 lt!1470960))))) (value!228292 (_1!24664 (get!14552 lt!1470960))))) e!2558386))))

(assert (= tb!247383 b!4123058))

(declare-fun m!4722147 () Bool)

(assert (=> b!4123058 m!4722147))

(declare-fun m!4722149 () Bool)

(assert (=> tb!247383 m!4722149))

(assert (=> d!1222068 t!340892))

(declare-fun b_and!319033 () Bool)

(assert (= b_and!319011 (and (=> t!340892 result!300568) b_and!319033)))

(declare-fun t!340894 () Bool)

(declare-fun tb!247385 () Bool)

(assert (=> (and b!4122866 (= (toChars!9800 (transformation!7289 rBis!149)) (toChars!9800 (transformation!7289 (rule!10367 (_1!24664 (get!14552 lt!1470960)))))) t!340894) tb!247385))

(declare-fun result!300572 () Bool)

(assert (= result!300572 result!300568))

(assert (=> d!1222068 t!340894))

(declare-fun b_and!319035 () Bool)

(assert (= b_and!319015 (and (=> t!340894 result!300572) b_and!319035)))

(declare-fun tb!247387 () Bool)

(declare-fun t!340896 () Bool)

(assert (=> (and b!4122868 (= (toChars!9800 (transformation!7289 r!4008)) (toChars!9800 (transformation!7289 (rule!10367 (_1!24664 (get!14552 lt!1470960)))))) t!340896) tb!247387))

(declare-fun result!300574 () Bool)

(assert (= result!300574 result!300568))

(assert (=> d!1222068 t!340896))

(declare-fun b_and!319037 () Bool)

(assert (= b_and!319019 (and (=> t!340896 result!300574) b_and!319037)))

(declare-fun m!4722151 () Bool)

(assert (=> d!1222068 m!4722151))

(declare-fun m!4722153 () Bool)

(assert (=> d!1222068 m!4722153))

(assert (=> b!4122855 d!1222068))

(declare-fun d!1222072 () Bool)

(assert (=> d!1222072 (= (get!14552 lt!1470960) (v!40186 lt!1470960))))

(assert (=> b!4122855 d!1222072))

(declare-fun d!1222074 () Bool)

(declare-fun lt!1471053 () Bool)

(assert (=> d!1222074 (= lt!1471053 (set.member rBis!149 (content!6875 rules!3756)))))

(declare-fun e!2558387 () Bool)

(assert (=> d!1222074 (= lt!1471053 e!2558387)))

(declare-fun res!1684875 () Bool)

(assert (=> d!1222074 (=> (not res!1684875) (not e!2558387))))

(assert (=> d!1222074 (= res!1684875 (is-Cons!44602 rules!3756))))

(assert (=> d!1222074 (= (contains!8961 rules!3756 rBis!149) lt!1471053)))

(declare-fun b!4123059 () Bool)

(declare-fun e!2558389 () Bool)

(assert (=> b!4123059 (= e!2558387 e!2558389)))

(declare-fun res!1684874 () Bool)

(assert (=> b!4123059 (=> res!1684874 e!2558389)))

(assert (=> b!4123059 (= res!1684874 (= (h!50022 rules!3756) rBis!149))))

(declare-fun b!4123060 () Bool)

(assert (=> b!4123060 (= e!2558389 (contains!8961 (t!340887 rules!3756) rBis!149))))

(assert (= (and d!1222074 res!1684875) b!4123059))

(assert (= (and b!4123059 (not res!1684874)) b!4123060))

(declare-fun m!4722155 () Bool)

(assert (=> d!1222074 m!4722155))

(declare-fun m!4722157 () Bool)

(assert (=> d!1222074 m!4722157))

(declare-fun m!4722159 () Bool)

(assert (=> b!4123060 m!4722159))

(assert (=> b!4122857 d!1222074))

(declare-fun d!1222076 () Bool)

(assert (=> d!1222076 (= (inv!59180 (tag!8149 (h!50022 rules!3756))) (= (mod (str.len (value!228291 (tag!8149 (h!50022 rules!3756)))) 2) 0))))

(assert (=> b!4122867 d!1222076))

(declare-fun d!1222078 () Bool)

(declare-fun res!1684878 () Bool)

(declare-fun e!2558391 () Bool)

(assert (=> d!1222078 (=> (not res!1684878) (not e!2558391))))

(assert (=> d!1222078 (= res!1684878 (semiInverseModEq!3139 (toChars!9800 (transformation!7289 (h!50022 rules!3756))) (toValue!9941 (transformation!7289 (h!50022 rules!3756)))))))

(assert (=> d!1222078 (= (inv!59183 (transformation!7289 (h!50022 rules!3756))) e!2558391)))

(declare-fun b!4123063 () Bool)

(assert (=> b!4123063 (= e!2558391 (equivClasses!3038 (toChars!9800 (transformation!7289 (h!50022 rules!3756))) (toValue!9941 (transformation!7289 (h!50022 rules!3756)))))))

(assert (= (and d!1222078 res!1684878) b!4123063))

(declare-fun m!4722161 () Bool)

(assert (=> d!1222078 m!4722161))

(declare-fun m!4722163 () Bool)

(assert (=> b!4123063 m!4722163))

(assert (=> b!4122867 d!1222078))

(declare-fun d!1222080 () Bool)

(declare-fun res!1684882 () Bool)

(declare-fun e!2558395 () Bool)

(assert (=> d!1222080 (=> (not res!1684882) (not e!2558395))))

(declare-fun rulesValid!2853 (LexerInterface!6878 List!44726) Bool)

(assert (=> d!1222080 (= res!1684882 (rulesValid!2853 thiss!25645 rules!3756))))

(assert (=> d!1222080 (= (rulesInvariant!6175 thiss!25645 rules!3756) e!2558395)))

(declare-fun b!4123067 () Bool)

(declare-datatypes ((List!44730 0))(
  ( (Nil!44606) (Cons!44606 (h!50026 String!51347) (t!340927 List!44730)) )
))
(declare-fun noDuplicateTag!2934 (LexerInterface!6878 List!44726 List!44730) Bool)

(assert (=> b!4123067 (= e!2558395 (noDuplicateTag!2934 thiss!25645 rules!3756 Nil!44606))))

(assert (= (and d!1222080 res!1684882) b!4123067))

(declare-fun m!4722169 () Bool)

(assert (=> d!1222080 m!4722169))

(declare-fun m!4722171 () Bool)

(assert (=> b!4123067 m!4722171))

(assert (=> b!4122864 d!1222080))

(declare-fun d!1222084 () Bool)

(assert (=> d!1222084 (= (inv!59180 (tag!8149 r!4008)) (= (mod (str.len (value!228291 (tag!8149 r!4008))) 2) 0))))

(assert (=> b!4122853 d!1222084))

(declare-fun d!1222086 () Bool)

(declare-fun res!1684883 () Bool)

(declare-fun e!2558396 () Bool)

(assert (=> d!1222086 (=> (not res!1684883) (not e!2558396))))

(assert (=> d!1222086 (= res!1684883 (semiInverseModEq!3139 (toChars!9800 (transformation!7289 r!4008)) (toValue!9941 (transformation!7289 r!4008))))))

(assert (=> d!1222086 (= (inv!59183 (transformation!7289 r!4008)) e!2558396)))

(declare-fun b!4123068 () Bool)

(assert (=> b!4123068 (= e!2558396 (equivClasses!3038 (toChars!9800 (transformation!7289 r!4008)) (toValue!9941 (transformation!7289 r!4008))))))

(assert (= (and d!1222086 res!1684883) b!4123068))

(declare-fun m!4722173 () Bool)

(assert (=> d!1222086 m!4722173))

(declare-fun m!4722175 () Bool)

(assert (=> b!4123068 m!4722175))

(assert (=> b!4122853 d!1222086))

(declare-fun d!1222088 () Bool)

(declare-fun res!1684884 () Bool)

(declare-fun e!2558397 () Bool)

(assert (=> d!1222088 (=> (not res!1684884) (not e!2558397))))

(assert (=> d!1222088 (= res!1684884 (validRegex!5483 (regex!7289 r!4008)))))

(assert (=> d!1222088 (= (ruleValid!3097 thiss!25645 r!4008) e!2558397)))

(declare-fun b!4123069 () Bool)

(declare-fun res!1684885 () Bool)

(assert (=> b!4123069 (=> (not res!1684885) (not e!2558397))))

(assert (=> b!4123069 (= res!1684885 (not (nullable!4277 (regex!7289 r!4008))))))

(declare-fun b!4123070 () Bool)

(assert (=> b!4123070 (= e!2558397 (not (= (tag!8149 r!4008) (String!51348 ""))))))

(assert (= (and d!1222088 res!1684884) b!4123069))

(assert (= (and b!4123069 res!1684885) b!4123070))

(declare-fun m!4722177 () Bool)

(assert (=> d!1222088 m!4722177))

(declare-fun m!4722179 () Bool)

(assert (=> b!4123069 m!4722179))

(assert (=> b!4122863 d!1222088))

(declare-fun d!1222090 () Bool)

(assert (=> d!1222090 (= (isEmpty!26542 p!2912) (is-Nil!44601 p!2912))))

(assert (=> b!4122865 d!1222090))

(declare-fun d!1222092 () Bool)

(declare-fun lt!1471058 () Int)

(assert (=> d!1222092 (>= lt!1471058 0)))

(declare-fun e!2558400 () Int)

(assert (=> d!1222092 (= lt!1471058 e!2558400)))

(declare-fun c!707811 () Bool)

(assert (=> d!1222092 (= c!707811 (is-Nil!44601 input!3238))))

(assert (=> d!1222092 (= (size!33021 input!3238) lt!1471058)))

(declare-fun b!4123075 () Bool)

(assert (=> b!4123075 (= e!2558400 0)))

(declare-fun b!4123076 () Bool)

(assert (=> b!4123076 (= e!2558400 (+ 1 (size!33021 (t!340886 input!3238))))))

(assert (= (and d!1222092 c!707811) b!4123075))

(assert (= (and d!1222092 (not c!707811)) b!4123076))

(declare-fun m!4722181 () Bool)

(assert (=> b!4123076 m!4722181))

(assert (=> b!4122872 d!1222092))

(declare-fun d!1222094 () Bool)

(assert (=> d!1222094 (not (= (tag!8149 rBis!149) (tag!8149 r!4008)))))

(declare-fun lt!1471062 () Unit!63944)

(declare-fun choose!25203 (LexerInterface!6878 List!44726 Rule!14378 Rule!14378) Unit!63944)

(assert (=> d!1222094 (= lt!1471062 (choose!25203 thiss!25645 rules!3756 rBis!149 r!4008))))

(assert (=> d!1222094 (contains!8961 rules!3756 rBis!149)))

(assert (=> d!1222094 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!47 thiss!25645 rules!3756 rBis!149 r!4008) lt!1471062)))

(declare-fun bs!594744 () Bool)

(assert (= bs!594744 d!1222094))

(declare-fun m!4722189 () Bool)

(assert (=> bs!594744 m!4722189))

(assert (=> bs!594744 m!4721901))

(assert (=> b!4122872 d!1222094))

(declare-fun d!1222098 () Bool)

(declare-fun lt!1471063 () Bool)

(assert (=> d!1222098 (= lt!1471063 (set.member r!4008 (content!6875 rules!3756)))))

(declare-fun e!2558401 () Bool)

(assert (=> d!1222098 (= lt!1471063 e!2558401)))

(declare-fun res!1684887 () Bool)

(assert (=> d!1222098 (=> (not res!1684887) (not e!2558401))))

(assert (=> d!1222098 (= res!1684887 (is-Cons!44602 rules!3756))))

(assert (=> d!1222098 (= (contains!8961 rules!3756 r!4008) lt!1471063)))

(declare-fun b!4123077 () Bool)

(declare-fun e!2558402 () Bool)

(assert (=> b!4123077 (= e!2558401 e!2558402)))

(declare-fun res!1684886 () Bool)

(assert (=> b!4123077 (=> res!1684886 e!2558402)))

(assert (=> b!4123077 (= res!1684886 (= (h!50022 rules!3756) r!4008))))

(declare-fun b!4123078 () Bool)

(assert (=> b!4123078 (= e!2558402 (contains!8961 (t!340887 rules!3756) r!4008))))

(assert (= (and d!1222098 res!1684887) b!4123077))

(assert (= (and b!4123077 (not res!1684886)) b!4123078))

(assert (=> d!1222098 m!4722155))

(declare-fun m!4722191 () Bool)

(assert (=> d!1222098 m!4722191))

(declare-fun m!4722193 () Bool)

(assert (=> b!4123078 m!4722193))

(assert (=> b!4122861 d!1222098))

(declare-fun b!4123094 () Bool)

(declare-fun e!2558411 () Int)

(assert (=> b!4123094 (= e!2558411 (- 1))))

(declare-fun b!4123091 () Bool)

(declare-fun e!2558410 () Int)

(assert (=> b!4123091 (= e!2558410 0)))

(declare-fun b!4123093 () Bool)

(assert (=> b!4123093 (= e!2558411 (+ 1 (getIndex!637 (t!340887 rules!3756) rBis!149)))))

(declare-fun b!4123092 () Bool)

(assert (=> b!4123092 (= e!2558410 e!2558411)))

(declare-fun c!707817 () Bool)

(assert (=> b!4123092 (= c!707817 (and (is-Cons!44602 rules!3756) (not (= (h!50022 rules!3756) rBis!149))))))

(declare-fun d!1222100 () Bool)

(declare-fun lt!1471069 () Int)

(assert (=> d!1222100 (>= lt!1471069 0)))

(assert (=> d!1222100 (= lt!1471069 e!2558410)))

(declare-fun c!707816 () Bool)

(assert (=> d!1222100 (= c!707816 (and (is-Cons!44602 rules!3756) (= (h!50022 rules!3756) rBis!149)))))

(assert (=> d!1222100 (contains!8961 rules!3756 rBis!149)))

(assert (=> d!1222100 (= (getIndex!637 rules!3756 rBis!149) lt!1471069)))

(assert (= (and d!1222100 c!707816) b!4123091))

(assert (= (and d!1222100 (not c!707816)) b!4123092))

(assert (= (and b!4123092 c!707817) b!4123093))

(assert (= (and b!4123092 (not c!707817)) b!4123094))

(declare-fun m!4722195 () Bool)

(assert (=> b!4123093 m!4722195))

(assert (=> d!1222100 m!4721901))

(assert (=> b!4122852 d!1222100))

(declare-fun b!4123098 () Bool)

(declare-fun e!2558413 () Int)

(assert (=> b!4123098 (= e!2558413 (- 1))))

(declare-fun b!4123095 () Bool)

(declare-fun e!2558412 () Int)

(assert (=> b!4123095 (= e!2558412 0)))

(declare-fun b!4123097 () Bool)

(assert (=> b!4123097 (= e!2558413 (+ 1 (getIndex!637 (t!340887 rules!3756) r!4008)))))

(declare-fun b!4123096 () Bool)

(assert (=> b!4123096 (= e!2558412 e!2558413)))

(declare-fun c!707819 () Bool)

(assert (=> b!4123096 (= c!707819 (and (is-Cons!44602 rules!3756) (not (= (h!50022 rules!3756) r!4008))))))

(declare-fun d!1222102 () Bool)

(declare-fun lt!1471070 () Int)

(assert (=> d!1222102 (>= lt!1471070 0)))

(assert (=> d!1222102 (= lt!1471070 e!2558412)))

(declare-fun c!707818 () Bool)

(assert (=> d!1222102 (= c!707818 (and (is-Cons!44602 rules!3756) (= (h!50022 rules!3756) r!4008)))))

(assert (=> d!1222102 (contains!8961 rules!3756 r!4008)))

(assert (=> d!1222102 (= (getIndex!637 rules!3756 r!4008) lt!1471070)))

(assert (= (and d!1222102 c!707818) b!4123095))

(assert (= (and d!1222102 (not c!707818)) b!4123096))

(assert (= (and b!4123096 c!707819) b!4123097))

(assert (= (and b!4123096 (not c!707819)) b!4123098))

(declare-fun m!4722197 () Bool)

(assert (=> b!4123097 m!4722197))

(assert (=> d!1222102 m!4721903))

(assert (=> b!4122852 d!1222102))

(declare-fun d!1222104 () Bool)

(declare-fun dynLambda!19059 (Int BalanceConc!26594) TokenValue!7519)

(assert (=> d!1222104 (= (apply!10362 (transformation!7289 r!4008) lt!1470968) (dynLambda!19059 (toValue!9941 (transformation!7289 r!4008)) lt!1470968))))

(declare-fun b_lambda!120979 () Bool)

(assert (=> (not b_lambda!120979) (not d!1222104)))

(declare-fun t!340900 () Bool)

(declare-fun tb!247391 () Bool)

(assert (=> (and b!4122871 (= (toValue!9941 (transformation!7289 (h!50022 rules!3756))) (toValue!9941 (transformation!7289 r!4008))) t!340900) tb!247391))

(declare-fun result!300580 () Bool)

(declare-fun inv!21 (TokenValue!7519) Bool)

(assert (=> tb!247391 (= result!300580 (inv!21 (dynLambda!19059 (toValue!9941 (transformation!7289 r!4008)) lt!1470968)))))

(declare-fun m!4722203 () Bool)

(assert (=> tb!247391 m!4722203))

(assert (=> d!1222104 t!340900))

(declare-fun b_and!319041 () Bool)

(assert (= b_and!319009 (and (=> t!340900 result!300580) b_and!319041)))

(declare-fun t!340904 () Bool)

(declare-fun tb!247395 () Bool)

(assert (=> (and b!4122866 (= (toValue!9941 (transformation!7289 rBis!149)) (toValue!9941 (transformation!7289 r!4008))) t!340904) tb!247395))

(declare-fun result!300586 () Bool)

(assert (= result!300586 result!300580))

(assert (=> d!1222104 t!340904))

(declare-fun b_and!319045 () Bool)

(assert (= b_and!319013 (and (=> t!340904 result!300586) b_and!319045)))

(declare-fun t!340908 () Bool)

(declare-fun tb!247399 () Bool)

(assert (=> (and b!4122868 (= (toValue!9941 (transformation!7289 r!4008)) (toValue!9941 (transformation!7289 r!4008))) t!340908) tb!247399))

(declare-fun result!300590 () Bool)

(assert (= result!300590 result!300580))

(assert (=> d!1222104 t!340908))

(declare-fun b_and!319049 () Bool)

(assert (= b_and!319017 (and (=> t!340908 result!300590) b_and!319049)))

(declare-fun m!4722207 () Bool)

(assert (=> d!1222104 m!4722207))

(assert (=> b!4122873 d!1222104))

(declare-fun d!1222106 () Bool)

(declare-fun lt!1471073 () List!44725)

(assert (=> d!1222106 (= (++!11559 p!2912 lt!1471073) input!3238)))

(declare-fun e!2558421 () List!44725)

(assert (=> d!1222106 (= lt!1471073 e!2558421)))

(declare-fun c!707822 () Bool)

(assert (=> d!1222106 (= c!707822 (is-Cons!44601 p!2912))))

(assert (=> d!1222106 (>= (size!33021 input!3238) (size!33021 p!2912))))

(assert (=> d!1222106 (= (getSuffix!2553 input!3238 p!2912) lt!1471073)))

(declare-fun b!4123108 () Bool)

(assert (=> b!4123108 (= e!2558421 (getSuffix!2553 (tail!6452 input!3238) (t!340886 p!2912)))))

(declare-fun b!4123109 () Bool)

(assert (=> b!4123109 (= e!2558421 input!3238)))

(assert (= (and d!1222106 c!707822) b!4123108))

(assert (= (and d!1222106 (not c!707822)) b!4123109))

(declare-fun m!4722211 () Bool)

(assert (=> d!1222106 m!4722211))

(assert (=> d!1222106 m!4721915))

(assert (=> d!1222106 m!4721919))

(assert (=> b!4123108 m!4722123))

(assert (=> b!4123108 m!4722123))

(declare-fun m!4722213 () Bool)

(assert (=> b!4123108 m!4722213))

(assert (=> b!4122873 d!1222106))

(declare-fun b!4123162 () Bool)

(declare-fun res!1684925 () Bool)

(declare-fun e!2558453 () Bool)

(assert (=> b!4123162 (=> (not res!1684925) (not e!2558453))))

(declare-fun lt!1471095 () Option!9597)

(assert (=> b!4123162 (= res!1684925 (< (size!33021 (_2!24664 (get!14552 lt!1471095))) (size!33021 input!3238)))))

(declare-fun b!4123163 () Bool)

(assert (=> b!4123163 (= e!2558453 (contains!8961 rules!3756 (rule!10367 (_1!24664 (get!14552 lt!1471095)))))))

(declare-fun b!4123164 () Bool)

(declare-fun res!1684927 () Bool)

(assert (=> b!4123164 (=> (not res!1684927) (not e!2558453))))

(assert (=> b!4123164 (= res!1684927 (= (list!16364 (charsOf!4911 (_1!24664 (get!14552 lt!1471095)))) (originalCharacters!7785 (_1!24664 (get!14552 lt!1471095)))))))

(declare-fun d!1222116 () Bool)

(declare-fun e!2558452 () Bool)

(assert (=> d!1222116 e!2558452))

(declare-fun res!1684926 () Bool)

(assert (=> d!1222116 (=> res!1684926 e!2558452)))

(assert (=> d!1222116 (= res!1684926 (isEmpty!26543 lt!1471095))))

(declare-fun e!2558454 () Option!9597)

(assert (=> d!1222116 (= lt!1471095 e!2558454)))

(declare-fun c!707833 () Bool)

(assert (=> d!1222116 (= c!707833 (and (is-Cons!44602 rules!3756) (is-Nil!44602 (t!340887 rules!3756))))))

(declare-fun lt!1471096 () Unit!63944)

(declare-fun lt!1471098 () Unit!63944)

(assert (=> d!1222116 (= lt!1471096 lt!1471098)))

(assert (=> d!1222116 (isPrefix!4224 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2739 (List!44725 List!44725) Unit!63944)

(assert (=> d!1222116 (= lt!1471098 (lemmaIsPrefixRefl!2739 input!3238 input!3238))))

(declare-fun rulesValidInductive!2690 (LexerInterface!6878 List!44726) Bool)

(assert (=> d!1222116 (rulesValidInductive!2690 thiss!25645 rules!3756)))

(assert (=> d!1222116 (= (maxPrefix!4070 thiss!25645 rules!3756 input!3238) lt!1471095)))

(declare-fun b!4123165 () Bool)

(declare-fun lt!1471094 () Option!9597)

(declare-fun lt!1471097 () Option!9597)

(assert (=> b!4123165 (= e!2558454 (ite (and (is-None!9596 lt!1471094) (is-None!9596 lt!1471097)) None!9596 (ite (is-None!9596 lt!1471097) lt!1471094 (ite (is-None!9596 lt!1471094) lt!1471097 (ite (>= (size!33019 (_1!24664 (v!40186 lt!1471094))) (size!33019 (_1!24664 (v!40186 lt!1471097)))) lt!1471094 lt!1471097)))))))

(declare-fun call!290004 () Option!9597)

(assert (=> b!4123165 (= lt!1471094 call!290004)))

(assert (=> b!4123165 (= lt!1471097 (maxPrefix!4070 thiss!25645 (t!340887 rules!3756) input!3238))))

(declare-fun b!4123166 () Bool)

(assert (=> b!4123166 (= e!2558454 call!290004)))

(declare-fun b!4123167 () Bool)

(assert (=> b!4123167 (= e!2558452 e!2558453)))

(declare-fun res!1684922 () Bool)

(assert (=> b!4123167 (=> (not res!1684922) (not e!2558453))))

(declare-fun isDefined!7233 (Option!9597) Bool)

(assert (=> b!4123167 (= res!1684922 (isDefined!7233 lt!1471095))))

(declare-fun bm!289999 () Bool)

(assert (=> bm!289999 (= call!290004 (maxPrefixOneRule!3020 thiss!25645 (h!50022 rules!3756) input!3238))))

(declare-fun b!4123168 () Bool)

(declare-fun res!1684923 () Bool)

(assert (=> b!4123168 (=> (not res!1684923) (not e!2558453))))

(assert (=> b!4123168 (= res!1684923 (= (++!11559 (list!16364 (charsOf!4911 (_1!24664 (get!14552 lt!1471095)))) (_2!24664 (get!14552 lt!1471095))) input!3238))))

(declare-fun b!4123169 () Bool)

(declare-fun res!1684924 () Bool)

(assert (=> b!4123169 (=> (not res!1684924) (not e!2558453))))

(assert (=> b!4123169 (= res!1684924 (= (value!228292 (_1!24664 (get!14552 lt!1471095))) (apply!10362 (transformation!7289 (rule!10367 (_1!24664 (get!14552 lt!1471095)))) (seqFromList!5406 (originalCharacters!7785 (_1!24664 (get!14552 lt!1471095)))))))))

(declare-fun b!4123170 () Bool)

(declare-fun res!1684928 () Bool)

(assert (=> b!4123170 (=> (not res!1684928) (not e!2558453))))

(assert (=> b!4123170 (= res!1684928 (matchR!6025 (regex!7289 (rule!10367 (_1!24664 (get!14552 lt!1471095)))) (list!16364 (charsOf!4911 (_1!24664 (get!14552 lt!1471095))))))))

(assert (= (and d!1222116 c!707833) b!4123166))

(assert (= (and d!1222116 (not c!707833)) b!4123165))

(assert (= (or b!4123166 b!4123165) bm!289999))

(assert (= (and d!1222116 (not res!1684926)) b!4123167))

(assert (= (and b!4123167 res!1684922) b!4123164))

(assert (= (and b!4123164 res!1684927) b!4123162))

(assert (= (and b!4123162 res!1684925) b!4123168))

(assert (= (and b!4123168 res!1684923) b!4123169))

(assert (= (and b!4123169 res!1684924) b!4123170))

(assert (= (and b!4123170 res!1684928) b!4123163))

(declare-fun m!4722231 () Bool)

(assert (=> bm!289999 m!4722231))

(declare-fun m!4722233 () Bool)

(assert (=> b!4123162 m!4722233))

(declare-fun m!4722235 () Bool)

(assert (=> b!4123162 m!4722235))

(assert (=> b!4123162 m!4721915))

(assert (=> b!4123170 m!4722233))

(declare-fun m!4722237 () Bool)

(assert (=> b!4123170 m!4722237))

(assert (=> b!4123170 m!4722237))

(declare-fun m!4722239 () Bool)

(assert (=> b!4123170 m!4722239))

(assert (=> b!4123170 m!4722239))

(declare-fun m!4722241 () Bool)

(assert (=> b!4123170 m!4722241))

(declare-fun m!4722243 () Bool)

(assert (=> b!4123167 m!4722243))

(declare-fun m!4722245 () Bool)

(assert (=> b!4123165 m!4722245))

(declare-fun m!4722247 () Bool)

(assert (=> d!1222116 m!4722247))

(declare-fun m!4722249 () Bool)

(assert (=> d!1222116 m!4722249))

(declare-fun m!4722251 () Bool)

(assert (=> d!1222116 m!4722251))

(declare-fun m!4722253 () Bool)

(assert (=> d!1222116 m!4722253))

(assert (=> b!4123169 m!4722233))

(declare-fun m!4722255 () Bool)

(assert (=> b!4123169 m!4722255))

(assert (=> b!4123169 m!4722255))

(declare-fun m!4722257 () Bool)

(assert (=> b!4123169 m!4722257))

(assert (=> b!4123168 m!4722233))

(assert (=> b!4123168 m!4722237))

(assert (=> b!4123168 m!4722237))

(assert (=> b!4123168 m!4722239))

(assert (=> b!4123168 m!4722239))

(declare-fun m!4722259 () Bool)

(assert (=> b!4123168 m!4722259))

(assert (=> b!4123164 m!4722233))

(assert (=> b!4123164 m!4722237))

(assert (=> b!4123164 m!4722237))

(assert (=> b!4123164 m!4722239))

(assert (=> b!4123163 m!4722233))

(declare-fun m!4722261 () Bool)

(assert (=> b!4123163 m!4722261))

(assert (=> b!4122873 d!1222116))

(declare-fun b!4123244 () Bool)

(declare-fun e!2558490 () Bool)

(assert (=> b!4123244 (= e!2558490 true)))

(declare-fun d!1222128 () Bool)

(assert (=> d!1222128 e!2558490))

(assert (= d!1222128 b!4123244))

(declare-fun order!23459 () Int)

(declare-fun lambda!128688 () Int)

(declare-fun order!23461 () Int)

(declare-fun dynLambda!19060 (Int Int) Int)

(declare-fun dynLambda!19061 (Int Int) Int)

(assert (=> b!4123244 (< (dynLambda!19060 order!23459 (toValue!9941 (transformation!7289 r!4008))) (dynLambda!19061 order!23461 lambda!128688))))

(declare-fun order!23463 () Int)

(declare-fun dynLambda!19062 (Int Int) Int)

(assert (=> b!4123244 (< (dynLambda!19062 order!23463 (toChars!9800 (transformation!7289 r!4008))) (dynLambda!19061 order!23461 lambda!128688))))

(assert (=> d!1222128 (= (list!16364 (dynLambda!19058 (toChars!9800 (transformation!7289 r!4008)) (dynLambda!19059 (toValue!9941 (transformation!7289 r!4008)) lt!1470968))) (list!16364 lt!1470968))))

(declare-fun lt!1471144 () Unit!63944)

(declare-fun ForallOf!922 (Int BalanceConc!26594) Unit!63944)

(assert (=> d!1222128 (= lt!1471144 (ForallOf!922 lambda!128688 lt!1470968))))

(assert (=> d!1222128 (= (lemmaSemiInverse!2147 (transformation!7289 r!4008) lt!1470968) lt!1471144)))

(declare-fun b_lambda!120983 () Bool)

(assert (=> (not b_lambda!120983) (not d!1222128)))

(declare-fun tb!247407 () Bool)

(declare-fun t!340916 () Bool)

(assert (=> (and b!4122871 (= (toChars!9800 (transformation!7289 (h!50022 rules!3756))) (toChars!9800 (transformation!7289 r!4008))) t!340916) tb!247407))

(declare-fun b!4123245 () Bool)

(declare-fun tp!1256435 () Bool)

(declare-fun e!2558491 () Bool)

(assert (=> b!4123245 (= e!2558491 (and (inv!59185 (c!707789 (dynLambda!19058 (toChars!9800 (transformation!7289 r!4008)) (dynLambda!19059 (toValue!9941 (transformation!7289 r!4008)) lt!1470968)))) tp!1256435))))

(declare-fun result!300600 () Bool)

(assert (=> tb!247407 (= result!300600 (and (inv!59186 (dynLambda!19058 (toChars!9800 (transformation!7289 r!4008)) (dynLambda!19059 (toValue!9941 (transformation!7289 r!4008)) lt!1470968))) e!2558491))))

(assert (= tb!247407 b!4123245))

(declare-fun m!4722359 () Bool)

(assert (=> b!4123245 m!4722359))

(declare-fun m!4722361 () Bool)

(assert (=> tb!247407 m!4722361))

(assert (=> d!1222128 t!340916))

(declare-fun b_and!319057 () Bool)

(assert (= b_and!319033 (and (=> t!340916 result!300600) b_and!319057)))

(declare-fun t!340918 () Bool)

(declare-fun tb!247409 () Bool)

(assert (=> (and b!4122866 (= (toChars!9800 (transformation!7289 rBis!149)) (toChars!9800 (transformation!7289 r!4008))) t!340918) tb!247409))

(declare-fun result!300602 () Bool)

(assert (= result!300602 result!300600))

(assert (=> d!1222128 t!340918))

(declare-fun b_and!319059 () Bool)

(assert (= b_and!319035 (and (=> t!340918 result!300602) b_and!319059)))

(declare-fun t!340920 () Bool)

(declare-fun tb!247411 () Bool)

(assert (=> (and b!4122868 (= (toChars!9800 (transformation!7289 r!4008)) (toChars!9800 (transformation!7289 r!4008))) t!340920) tb!247411))

(declare-fun result!300604 () Bool)

(assert (= result!300604 result!300600))

(assert (=> d!1222128 t!340920))

(declare-fun b_and!319061 () Bool)

(assert (= b_and!319037 (and (=> t!340920 result!300604) b_and!319061)))

(declare-fun b_lambda!120985 () Bool)

(assert (=> (not b_lambda!120985) (not d!1222128)))

(assert (=> d!1222128 t!340900))

(declare-fun b_and!319063 () Bool)

(assert (= b_and!319041 (and (=> t!340900 result!300580) b_and!319063)))

(assert (=> d!1222128 t!340904))

(declare-fun b_and!319065 () Bool)

(assert (= b_and!319045 (and (=> t!340904 result!300586) b_and!319065)))

(assert (=> d!1222128 t!340908))

(declare-fun b_and!319067 () Bool)

(assert (= b_and!319049 (and (=> t!340908 result!300590) b_and!319067)))

(assert (=> d!1222128 m!4722207))

(assert (=> d!1222128 m!4722207))

(declare-fun m!4722363 () Bool)

(assert (=> d!1222128 m!4722363))

(assert (=> d!1222128 m!4722363))

(declare-fun m!4722365 () Bool)

(assert (=> d!1222128 m!4722365))

(declare-fun m!4722367 () Bool)

(assert (=> d!1222128 m!4722367))

(declare-fun m!4722369 () Bool)

(assert (=> d!1222128 m!4722369))

(assert (=> b!4122873 d!1222128))

(declare-fun d!1222150 () Bool)

(declare-fun fromListB!2472 (List!44725) BalanceConc!26594)

(assert (=> d!1222150 (= (seqFromList!5406 p!2912) (fromListB!2472 p!2912))))

(declare-fun bs!594747 () Bool)

(assert (= bs!594747 d!1222150))

(declare-fun m!4722371 () Bool)

(assert (=> bs!594747 m!4722371))

(assert (=> b!4122873 d!1222150))

(declare-fun d!1222152 () Bool)

(declare-fun lt!1471145 () Int)

(assert (=> d!1222152 (>= lt!1471145 0)))

(declare-fun e!2558492 () Int)

(assert (=> d!1222152 (= lt!1471145 e!2558492)))

(declare-fun c!707846 () Bool)

(assert (=> d!1222152 (= c!707846 (is-Nil!44601 p!2912))))

(assert (=> d!1222152 (= (size!33021 p!2912) lt!1471145)))

(declare-fun b!4123246 () Bool)

(assert (=> b!4123246 (= e!2558492 0)))

(declare-fun b!4123247 () Bool)

(assert (=> b!4123247 (= e!2558492 (+ 1 (size!33021 (t!340886 p!2912))))))

(assert (= (and d!1222152 c!707846) b!4123246))

(assert (= (and d!1222152 (not c!707846)) b!4123247))

(declare-fun m!4722373 () Bool)

(assert (=> b!4123247 m!4722373))

(assert (=> b!4122873 d!1222152))

(declare-fun b!4123276 () Bool)

(declare-fun res!1684999 () Bool)

(declare-fun e!2558510 () Bool)

(assert (=> b!4123276 (=> res!1684999 e!2558510)))

(declare-fun e!2558509 () Bool)

(assert (=> b!4123276 (= res!1684999 e!2558509)))

(declare-fun res!1684996 () Bool)

(assert (=> b!4123276 (=> (not res!1684996) (not e!2558509))))

(declare-fun lt!1471148 () Bool)

(assert (=> b!4123276 (= res!1684996 lt!1471148)))

(declare-fun b!4123277 () Bool)

(declare-fun res!1684997 () Bool)

(declare-fun e!2558513 () Bool)

(assert (=> b!4123277 (=> res!1684997 e!2558513)))

(assert (=> b!4123277 (= res!1684997 (not (isEmpty!26542 (tail!6452 p!2912))))))

(declare-fun b!4123278 () Bool)

(declare-fun e!2558512 () Bool)

(declare-fun e!2558508 () Bool)

(assert (=> b!4123278 (= e!2558512 e!2558508)))

(declare-fun c!707855 () Bool)

(assert (=> b!4123278 (= c!707855 (is-EmptyLang!12194 (regex!7289 r!4008)))))

(declare-fun d!1222154 () Bool)

(assert (=> d!1222154 e!2558512))

(declare-fun c!707853 () Bool)

(assert (=> d!1222154 (= c!707853 (is-EmptyExpr!12194 (regex!7289 r!4008)))))

(declare-fun e!2558511 () Bool)

(assert (=> d!1222154 (= lt!1471148 e!2558511)))

(declare-fun c!707854 () Bool)

(assert (=> d!1222154 (= c!707854 (isEmpty!26542 p!2912))))

(assert (=> d!1222154 (validRegex!5483 (regex!7289 r!4008))))

(assert (=> d!1222154 (= (matchR!6025 (regex!7289 r!4008) p!2912) lt!1471148)))

(declare-fun bm!290005 () Bool)

(declare-fun call!290010 () Bool)

(assert (=> bm!290005 (= call!290010 (isEmpty!26542 p!2912))))

(declare-fun b!4123279 () Bool)

(declare-fun res!1684998 () Bool)

(assert (=> b!4123279 (=> res!1684998 e!2558510)))

(assert (=> b!4123279 (= res!1684998 (not (is-ElementMatch!12194 (regex!7289 r!4008))))))

(assert (=> b!4123279 (= e!2558508 e!2558510)))

(declare-fun b!4123280 () Bool)

(assert (=> b!4123280 (= e!2558509 (= (head!8685 p!2912) (c!707790 (regex!7289 r!4008))))))

(declare-fun b!4123281 () Bool)

(assert (=> b!4123281 (= e!2558508 (not lt!1471148))))

(declare-fun b!4123282 () Bool)

(assert (=> b!4123282 (= e!2558513 (not (= (head!8685 p!2912) (c!707790 (regex!7289 r!4008)))))))

(declare-fun b!4123283 () Bool)

(declare-fun e!2558507 () Bool)

(assert (=> b!4123283 (= e!2558510 e!2558507)))

(declare-fun res!1684992 () Bool)

(assert (=> b!4123283 (=> (not res!1684992) (not e!2558507))))

(assert (=> b!4123283 (= res!1684992 (not lt!1471148))))

(declare-fun b!4123284 () Bool)

(assert (=> b!4123284 (= e!2558511 (nullable!4277 (regex!7289 r!4008)))))

(declare-fun b!4123285 () Bool)

(assert (=> b!4123285 (= e!2558507 e!2558513)))

(declare-fun res!1684995 () Bool)

(assert (=> b!4123285 (=> res!1684995 e!2558513)))

(assert (=> b!4123285 (= res!1684995 call!290010)))

(declare-fun b!4123286 () Bool)

(declare-fun res!1684994 () Bool)

(assert (=> b!4123286 (=> (not res!1684994) (not e!2558509))))

(assert (=> b!4123286 (= res!1684994 (not call!290010))))

(declare-fun b!4123287 () Bool)

(declare-fun res!1684993 () Bool)

(assert (=> b!4123287 (=> (not res!1684993) (not e!2558509))))

(assert (=> b!4123287 (= res!1684993 (isEmpty!26542 (tail!6452 p!2912)))))

(declare-fun b!4123288 () Bool)

(declare-fun derivativeStep!3672 (Regex!12194 C!24574) Regex!12194)

(assert (=> b!4123288 (= e!2558511 (matchR!6025 (derivativeStep!3672 (regex!7289 r!4008) (head!8685 p!2912)) (tail!6452 p!2912)))))

(declare-fun b!4123289 () Bool)

(assert (=> b!4123289 (= e!2558512 (= lt!1471148 call!290010))))

(assert (= (and d!1222154 c!707854) b!4123284))

(assert (= (and d!1222154 (not c!707854)) b!4123288))

(assert (= (and d!1222154 c!707853) b!4123289))

(assert (= (and d!1222154 (not c!707853)) b!4123278))

(assert (= (and b!4123278 c!707855) b!4123281))

(assert (= (and b!4123278 (not c!707855)) b!4123279))

(assert (= (and b!4123279 (not res!1684998)) b!4123276))

(assert (= (and b!4123276 res!1684996) b!4123286))

(assert (= (and b!4123286 res!1684994) b!4123287))

(assert (= (and b!4123287 res!1684993) b!4123280))

(assert (= (and b!4123276 (not res!1684999)) b!4123283))

(assert (= (and b!4123283 res!1684992) b!4123285))

(assert (= (and b!4123285 (not res!1684995)) b!4123277))

(assert (= (and b!4123277 (not res!1684997)) b!4123282))

(assert (= (or b!4123289 b!4123285 b!4123286) bm!290005))

(assert (=> b!4123282 m!4722117))

(assert (=> bm!290005 m!4721905))

(assert (=> b!4123287 m!4722121))

(assert (=> b!4123287 m!4722121))

(declare-fun m!4722375 () Bool)

(assert (=> b!4123287 m!4722375))

(assert (=> b!4123288 m!4722117))

(assert (=> b!4123288 m!4722117))

(declare-fun m!4722377 () Bool)

(assert (=> b!4123288 m!4722377))

(assert (=> b!4123288 m!4722121))

(assert (=> b!4123288 m!4722377))

(assert (=> b!4123288 m!4722121))

(declare-fun m!4722379 () Bool)

(assert (=> b!4123288 m!4722379))

(assert (=> b!4123280 m!4722117))

(assert (=> d!1222154 m!4721905))

(assert (=> d!1222154 m!4722177))

(assert (=> b!4123277 m!4722121))

(assert (=> b!4123277 m!4722121))

(assert (=> b!4123277 m!4722375))

(assert (=> b!4123284 m!4722179))

(assert (=> b!4122862 d!1222154))

(declare-fun d!1222156 () Bool)

(assert (=> d!1222156 (= (isEmpty!26541 rules!3756) (is-Nil!44602 rules!3756))))

(assert (=> b!4122851 d!1222156))

(declare-fun b!4123302 () Bool)

(declare-fun e!2558516 () Bool)

(declare-fun tp!1256448 () Bool)

(assert (=> b!4123302 (= e!2558516 tp!1256448)))

(assert (=> b!4122853 (= tp!1256388 e!2558516)))

(declare-fun b!4123303 () Bool)

(declare-fun tp!1256450 () Bool)

(declare-fun tp!1256447 () Bool)

(assert (=> b!4123303 (= e!2558516 (and tp!1256450 tp!1256447))))

(declare-fun b!4123300 () Bool)

(assert (=> b!4123300 (= e!2558516 tp_is_empty!21311)))

(declare-fun b!4123301 () Bool)

(declare-fun tp!1256446 () Bool)

(declare-fun tp!1256449 () Bool)

(assert (=> b!4123301 (= e!2558516 (and tp!1256446 tp!1256449))))

(assert (= (and b!4122853 (is-ElementMatch!12194 (regex!7289 r!4008))) b!4123300))

(assert (= (and b!4122853 (is-Concat!19714 (regex!7289 r!4008))) b!4123301))

(assert (= (and b!4122853 (is-Star!12194 (regex!7289 r!4008))) b!4123302))

(assert (= (and b!4122853 (is-Union!12194 (regex!7289 r!4008))) b!4123303))

(declare-fun b!4123308 () Bool)

(declare-fun e!2558519 () Bool)

(declare-fun tp!1256453 () Bool)

(assert (=> b!4123308 (= e!2558519 (and tp_is_empty!21311 tp!1256453))))

(assert (=> b!4122869 (= tp!1256391 e!2558519)))

(assert (= (and b!4122869 (is-Cons!44601 (t!340886 input!3238))) b!4123308))

(declare-fun b!4123309 () Bool)

(declare-fun e!2558520 () Bool)

(declare-fun tp!1256454 () Bool)

(assert (=> b!4123309 (= e!2558520 (and tp_is_empty!21311 tp!1256454))))

(assert (=> b!4122858 (= tp!1256392 e!2558520)))

(assert (= (and b!4122858 (is-Cons!44601 (t!340886 p!2912))) b!4123309))

(declare-fun b!4123312 () Bool)

(declare-fun e!2558521 () Bool)

(declare-fun tp!1256457 () Bool)

(assert (=> b!4123312 (= e!2558521 tp!1256457)))

(assert (=> b!4122860 (= tp!1256385 e!2558521)))

(declare-fun b!4123313 () Bool)

(declare-fun tp!1256459 () Bool)

(declare-fun tp!1256456 () Bool)

(assert (=> b!4123313 (= e!2558521 (and tp!1256459 tp!1256456))))

(declare-fun b!4123310 () Bool)

(assert (=> b!4123310 (= e!2558521 tp_is_empty!21311)))

(declare-fun b!4123311 () Bool)

(declare-fun tp!1256455 () Bool)

(declare-fun tp!1256458 () Bool)

(assert (=> b!4123311 (= e!2558521 (and tp!1256455 tp!1256458))))

(assert (= (and b!4122860 (is-ElementMatch!12194 (regex!7289 rBis!149))) b!4123310))

(assert (= (and b!4122860 (is-Concat!19714 (regex!7289 rBis!149))) b!4123311))

(assert (= (and b!4122860 (is-Star!12194 (regex!7289 rBis!149))) b!4123312))

(assert (= (and b!4122860 (is-Union!12194 (regex!7289 rBis!149))) b!4123313))

(declare-fun b!4123324 () Bool)

(declare-fun b_free!116687 () Bool)

(declare-fun b_next!117391 () Bool)

(assert (=> b!4123324 (= b_free!116687 (not b_next!117391))))

(declare-fun t!340922 () Bool)

(declare-fun tb!247413 () Bool)

(assert (=> (and b!4123324 (= (toValue!9941 (transformation!7289 (h!50022 (t!340887 rules!3756)))) (toValue!9941 (transformation!7289 r!4008))) t!340922) tb!247413))

(declare-fun result!300612 () Bool)

(assert (= result!300612 result!300580))

(assert (=> d!1222104 t!340922))

(assert (=> d!1222128 t!340922))

(declare-fun tp!1256470 () Bool)

(declare-fun b_and!319069 () Bool)

(assert (=> b!4123324 (= tp!1256470 (and (=> t!340922 result!300612) b_and!319069))))

(declare-fun b_free!116689 () Bool)

(declare-fun b_next!117393 () Bool)

(assert (=> b!4123324 (= b_free!116689 (not b_next!117393))))

(declare-fun t!340924 () Bool)

(declare-fun tb!247415 () Bool)

(assert (=> (and b!4123324 (= (toChars!9800 (transformation!7289 (h!50022 (t!340887 rules!3756)))) (toChars!9800 (transformation!7289 (rule!10367 (_1!24664 (get!14552 lt!1470960)))))) t!340924) tb!247415))

(declare-fun result!300614 () Bool)

(assert (= result!300614 result!300568))

(assert (=> d!1222068 t!340924))

(declare-fun t!340926 () Bool)

(declare-fun tb!247417 () Bool)

(assert (=> (and b!4123324 (= (toChars!9800 (transformation!7289 (h!50022 (t!340887 rules!3756)))) (toChars!9800 (transformation!7289 r!4008))) t!340926) tb!247417))

(declare-fun result!300616 () Bool)

(assert (= result!300616 result!300600))

(assert (=> d!1222128 t!340926))

(declare-fun tp!1256471 () Bool)

(declare-fun b_and!319071 () Bool)

(assert (=> b!4123324 (= tp!1256471 (and (=> t!340924 result!300614) (=> t!340926 result!300616) b_and!319071))))

(declare-fun e!2558533 () Bool)

(assert (=> b!4123324 (= e!2558533 (and tp!1256470 tp!1256471))))

(declare-fun e!2558530 () Bool)

(declare-fun tp!1256469 () Bool)

(declare-fun b!4123323 () Bool)

(assert (=> b!4123323 (= e!2558530 (and tp!1256469 (inv!59180 (tag!8149 (h!50022 (t!340887 rules!3756)))) (inv!59183 (transformation!7289 (h!50022 (t!340887 rules!3756)))) e!2558533))))

(declare-fun b!4123322 () Bool)

(declare-fun e!2558531 () Bool)

(declare-fun tp!1256468 () Bool)

(assert (=> b!4123322 (= e!2558531 (and e!2558530 tp!1256468))))

(assert (=> b!4122854 (= tp!1256384 e!2558531)))

(assert (= b!4123323 b!4123324))

(assert (= b!4123322 b!4123323))

(assert (= (and b!4122854 (is-Cons!44602 (t!340887 rules!3756))) b!4123322))

(declare-fun m!4722381 () Bool)

(assert (=> b!4123323 m!4722381))

(declare-fun m!4722383 () Bool)

(assert (=> b!4123323 m!4722383))

(declare-fun b!4123327 () Bool)

(declare-fun e!2558534 () Bool)

(declare-fun tp!1256474 () Bool)

(assert (=> b!4123327 (= e!2558534 tp!1256474)))

(assert (=> b!4122867 (= tp!1256383 e!2558534)))

(declare-fun b!4123328 () Bool)

(declare-fun tp!1256476 () Bool)

(declare-fun tp!1256473 () Bool)

(assert (=> b!4123328 (= e!2558534 (and tp!1256476 tp!1256473))))

(declare-fun b!4123325 () Bool)

(assert (=> b!4123325 (= e!2558534 tp_is_empty!21311)))

(declare-fun b!4123326 () Bool)

(declare-fun tp!1256472 () Bool)

(declare-fun tp!1256475 () Bool)

(assert (=> b!4123326 (= e!2558534 (and tp!1256472 tp!1256475))))

(assert (= (and b!4122867 (is-ElementMatch!12194 (regex!7289 (h!50022 rules!3756)))) b!4123325))

(assert (= (and b!4122867 (is-Concat!19714 (regex!7289 (h!50022 rules!3756)))) b!4123326))

(assert (= (and b!4122867 (is-Star!12194 (regex!7289 (h!50022 rules!3756)))) b!4123327))

(assert (= (and b!4122867 (is-Union!12194 (regex!7289 (h!50022 rules!3756)))) b!4123328))

(declare-fun b_lambda!120987 () Bool)

(assert (= b_lambda!120979 (or (and b!4122871 b_free!116663 (= (toValue!9941 (transformation!7289 (h!50022 rules!3756))) (toValue!9941 (transformation!7289 r!4008)))) (and b!4122866 b_free!116667 (= (toValue!9941 (transformation!7289 rBis!149)) (toValue!9941 (transformation!7289 r!4008)))) (and b!4122868 b_free!116671) (and b!4123324 b_free!116687 (= (toValue!9941 (transformation!7289 (h!50022 (t!340887 rules!3756)))) (toValue!9941 (transformation!7289 r!4008)))) b_lambda!120987)))

(declare-fun b_lambda!120989 () Bool)

(assert (= b_lambda!120983 (or (and b!4122871 b_free!116665 (= (toChars!9800 (transformation!7289 (h!50022 rules!3756))) (toChars!9800 (transformation!7289 r!4008)))) (and b!4122866 b_free!116669 (= (toChars!9800 (transformation!7289 rBis!149)) (toChars!9800 (transformation!7289 r!4008)))) (and b!4122868 b_free!116673) (and b!4123324 b_free!116689 (= (toChars!9800 (transformation!7289 (h!50022 (t!340887 rules!3756)))) (toChars!9800 (transformation!7289 r!4008)))) b_lambda!120989)))

(declare-fun b_lambda!120991 () Bool)

(assert (= b_lambda!120985 (or (and b!4122871 b_free!116663 (= (toValue!9941 (transformation!7289 (h!50022 rules!3756))) (toValue!9941 (transformation!7289 r!4008)))) (and b!4122866 b_free!116667 (= (toValue!9941 (transformation!7289 rBis!149)) (toValue!9941 (transformation!7289 r!4008)))) (and b!4122868 b_free!116671) (and b!4123324 b_free!116687 (= (toValue!9941 (transformation!7289 (h!50022 (t!340887 rules!3756)))) (toValue!9941 (transformation!7289 r!4008)))) b_lambda!120991)))

(push 1)

(assert (not b!4123067))

(assert (not b!4122988))

(assert (not b!4123026))

(assert b_and!319065)

(assert (not b!4123313))

(assert (not b!4123170))

(assert (not b_next!117391))

(assert (not d!1222100))

(assert (not b_lambda!120991))

(assert (not b!4123280))

(assert (not b!4123308))

(assert (not b!4123053))

(assert (not d!1222054))

(assert (not b!4123163))

(assert (not d!1222068))

(assert b_and!319063)

(assert (not b!4123097))

(assert (not b!4123078))

(assert (not b!4123063))

(assert (not d!1222032))

(assert (not d!1222060))

(assert (not b!4123288))

(assert (not b!4123287))

(assert (not d!1222078))

(assert (not b!4122954))

(assert (not b!4123284))

(assert (not d!1222116))

(assert (not d!1222038))

(assert (not b!4122951))

(assert (not d!1222094))

(assert (not b!4123165))

(assert (not d!1222128))

(assert (not b!4123076))

(assert (not b!4122986))

(assert (not b!4123068))

(assert (not d!1222086))

(assert (not b_next!117369))

(assert (not b_next!117393))

(assert (not d!1222064))

(assert (not b!4123277))

(assert (not d!1222058))

(assert (not b!4123322))

(assert (not d!1222106))

(assert (not b!4123312))

(assert (not b!4122992))

(assert (not b!4123282))

(assert (not d!1222040))

(assert (not b!4122945))

(assert (not tb!247383))

(assert (not b!4123245))

(assert (not b!4123052))

(assert (not b!4122991))

(assert (not b!4123168))

(assert (not b!4123323))

(assert (not tb!247391))

(assert (not b!4123058))

(assert (not b_next!117371))

(assert (not b!4123309))

(assert (not b!4123164))

(assert (not b!4122987))

(assert (not b!4123069))

(assert (not b!4122990))

(assert (not d!1222030))

(assert (not b!4123051))

(assert (not b!4123167))

(assert b_and!319059)

(assert (not b!4123301))

(assert (not d!1222074))

(assert b_and!319061)

(assert (not b_next!117375))

(assert (not b!4123247))

(assert (not b_lambda!120989))

(assert tp_is_empty!21311)

(assert b_and!319069)

(assert (not b!4122993))

(assert (not d!1222154))

(assert (not b!4123162))

(assert b_and!319067)

(assert (not d!1222056))

(assert (not b!4123093))

(assert (not b!4123303))

(assert (not b_next!117373))

(assert (not b!4122989))

(assert (not b!4123302))

(assert (not bm!290005))

(assert (not b!4123328))

(assert (not d!1222102))

(assert (not d!1222098))

(assert (not b!4123327))

(assert (not d!1222150))

(assert (not d!1222088))

(assert (not b!4123311))

(assert (not b_lambda!120987))

(assert (not b!4123326))

(assert (not b_next!117367))

(assert (not b_lambda!120975))

(assert (not bm!289999))

(assert (not d!1222080))

(assert (not b!4123169))

(assert (not b_next!117377))

(assert (not b!4123108))

(assert (not tb!247407))

(assert (not b!4123060))

(assert b_and!319071)

(assert b_and!319057)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!117391))

(assert b_and!319063)

(assert (not b_next!117371))

(assert b_and!319059)

(assert b_and!319067)

(assert b_and!319065)

(assert (not b_next!117373))

(assert (not b_next!117367))

(assert (not b_next!117377))

(assert (not b_next!117369))

(assert (not b_next!117393))

(assert b_and!319061)

(assert (not b_next!117375))

(assert b_and!319069)

(assert b_and!319071)

(assert b_and!319057)

(check-sat)

(pop 1)

