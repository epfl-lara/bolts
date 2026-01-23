; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!394190 () Bool)

(assert start!394190)

(declare-fun b!4144931 () Bool)

(declare-fun b_free!118203 () Bool)

(declare-fun b_next!118907 () Bool)

(assert (=> b!4144931 (= b_free!118203 (not b_next!118907))))

(declare-fun tp!1263413 () Bool)

(declare-fun b_and!322073 () Bool)

(assert (=> b!4144931 (= tp!1263413 b_and!322073)))

(declare-fun b_free!118205 () Bool)

(declare-fun b_next!118909 () Bool)

(assert (=> b!4144931 (= b_free!118205 (not b_next!118909))))

(declare-fun tp!1263405 () Bool)

(declare-fun b_and!322075 () Bool)

(assert (=> b!4144931 (= tp!1263405 b_and!322075)))

(declare-fun b!4144929 () Bool)

(declare-fun b_free!118207 () Bool)

(declare-fun b_next!118911 () Bool)

(assert (=> b!4144929 (= b_free!118207 (not b_next!118911))))

(declare-fun tp!1263407 () Bool)

(declare-fun b_and!322077 () Bool)

(assert (=> b!4144929 (= tp!1263407 b_and!322077)))

(declare-fun b_free!118209 () Bool)

(declare-fun b_next!118913 () Bool)

(assert (=> b!4144929 (= b_free!118209 (not b_next!118913))))

(declare-fun tp!1263409 () Bool)

(declare-fun b_and!322079 () Bool)

(assert (=> b!4144929 (= tp!1263409 b_and!322079)))

(declare-fun b!4144930 () Bool)

(declare-fun b_free!118211 () Bool)

(declare-fun b_next!118915 () Bool)

(assert (=> b!4144930 (= b_free!118211 (not b_next!118915))))

(declare-fun tp!1263414 () Bool)

(declare-fun b_and!322081 () Bool)

(assert (=> b!4144930 (= tp!1263414 b_and!322081)))

(declare-fun b_free!118213 () Bool)

(declare-fun b_next!118917 () Bool)

(assert (=> b!4144930 (= b_free!118213 (not b_next!118917))))

(declare-fun tp!1263415 () Bool)

(declare-fun b_and!322083 () Bool)

(assert (=> b!4144930 (= tp!1263415 b_and!322083)))

(declare-fun b!4144924 () Bool)

(declare-fun res!1696385 () Bool)

(declare-fun e!2571826 () Bool)

(assert (=> b!4144924 (=> (not res!1696385) (not e!2571826))))

(declare-datatypes ((List!45104 0))(
  ( (Nil!44980) (Cons!44980 (h!50400 (_ BitVec 16)) (t!342671 List!45104)) )
))
(declare-datatypes ((TokenValue!7626 0))(
  ( (FloatLiteralValue!15252 (text!53827 List!45104)) (TokenValueExt!7625 (__x!27469 Int)) (Broken!38130 (value!231314 List!45104)) (Object!7749) (End!7626) (Def!7626) (Underscore!7626) (Match!7626) (Else!7626) (Error!7626) (Case!7626) (If!7626) (Extends!7626) (Abstract!7626) (Class!7626) (Val!7626) (DelimiterValue!15252 (del!7686 List!45104)) (KeywordValue!7632 (value!231315 List!45104)) (CommentValue!15252 (value!231316 List!45104)) (WhitespaceValue!15252 (value!231317 List!45104)) (IndentationValue!7626 (value!231318 List!45104)) (String!51879) (Int32!7626) (Broken!38131 (value!231319 List!45104)) (Boolean!7627) (Unit!64270) (OperatorValue!7629 (op!7686 List!45104)) (IdentifierValue!15252 (value!231320 List!45104)) (IdentifierValue!15253 (value!231321 List!45104)) (WhitespaceValue!15253 (value!231322 List!45104)) (True!15252) (False!15252) (Broken!38132 (value!231323 List!45104)) (Broken!38133 (value!231324 List!45104)) (True!15253) (RightBrace!7626) (RightBracket!7626) (Colon!7626) (Null!7626) (Comma!7626) (LeftBracket!7626) (False!15253) (LeftBrace!7626) (ImaginaryLiteralValue!7626 (text!53828 List!45104)) (StringLiteralValue!22878 (value!231325 List!45104)) (EOFValue!7626 (value!231326 List!45104)) (IdentValue!7626 (value!231327 List!45104)) (DelimiterValue!15253 (value!231328 List!45104)) (DedentValue!7626 (value!231329 List!45104)) (NewLineValue!7626 (value!231330 List!45104)) (IntegerValue!22878 (value!231331 (_ BitVec 32)) (text!53829 List!45104)) (IntegerValue!22879 (value!231332 Int) (text!53830 List!45104)) (Times!7626) (Or!7626) (Equal!7626) (Minus!7626) (Broken!38134 (value!231333 List!45104)) (And!7626) (Div!7626) (LessEqual!7626) (Mod!7626) (Concat!19927) (Not!7626) (Plus!7626) (SpaceValue!7626 (value!231334 List!45104)) (IntegerValue!22880 (value!231335 Int) (text!53831 List!45104)) (StringLiteralValue!22879 (text!53832 List!45104)) (FloatLiteralValue!15253 (text!53833 List!45104)) (BytesLiteralValue!7626 (value!231336 List!45104)) (CommentValue!15253 (value!231337 List!45104)) (StringLiteralValue!22880 (value!231338 List!45104)) (ErrorTokenValue!7626 (msg!7687 List!45104)) )
))
(declare-datatypes ((C!24788 0))(
  ( (C!24789 (val!14504 Int)) )
))
(declare-datatypes ((List!45105 0))(
  ( (Nil!44981) (Cons!44981 (h!50401 C!24788) (t!342672 List!45105)) )
))
(declare-datatypes ((IArray!27219 0))(
  ( (IArray!27220 (innerList!13667 List!45105)) )
))
(declare-datatypes ((Conc!13607 0))(
  ( (Node!13607 (left!33679 Conc!13607) (right!34009 Conc!13607) (csize!27444 Int) (cheight!13818 Int)) (Leaf!21020 (xs!16913 IArray!27219) (csize!27445 Int)) (Empty!13607) )
))
(declare-datatypes ((BalanceConc!26808 0))(
  ( (BalanceConc!26809 (c!710288 Conc!13607)) )
))
(declare-datatypes ((Regex!12301 0))(
  ( (ElementMatch!12301 (c!710289 C!24788)) (Concat!19928 (regOne!25114 Regex!12301) (regTwo!25114 Regex!12301)) (EmptyExpr!12301) (Star!12301 (reg!12630 Regex!12301)) (EmptyLang!12301) (Union!12301 (regOne!25115 Regex!12301) (regTwo!25115 Regex!12301)) )
))
(declare-datatypes ((String!51880 0))(
  ( (String!51881 (value!231339 String)) )
))
(declare-datatypes ((TokenValueInjection!14680 0))(
  ( (TokenValueInjection!14681 (toValue!10060 Int) (toChars!9919 Int)) )
))
(declare-datatypes ((Rule!14592 0))(
  ( (Rule!14593 (regex!7396 Regex!12301) (tag!8256 String!51880) (isSeparator!7396 Bool) (transformation!7396 TokenValueInjection!14680)) )
))
(declare-datatypes ((List!45106 0))(
  ( (Nil!44982) (Cons!44982 (h!50402 Rule!14592) (t!342673 List!45106)) )
))
(declare-fun rules!3756 () List!45106)

(declare-fun isEmpty!26841 (List!45106) Bool)

(assert (=> b!4144924 (= res!1696385 (not (isEmpty!26841 rules!3756)))))

(declare-fun b!4144925 () Bool)

(declare-fun e!2571823 () Bool)

(declare-fun tp!1263412 () Bool)

(declare-fun e!2571817 () Bool)

(declare-fun r!4008 () Rule!14592)

(declare-fun inv!59585 (String!51880) Bool)

(declare-fun inv!59587 (TokenValueInjection!14680) Bool)

(assert (=> b!4144925 (= e!2571817 (and tp!1263412 (inv!59585 (tag!8256 r!4008)) (inv!59587 (transformation!7396 r!4008)) e!2571823))))

(declare-fun b!4144926 () Bool)

(declare-fun e!2571821 () Bool)

(declare-datatypes ((LexerInterface!6985 0))(
  ( (LexerInterfaceExt!6982 (__x!27470 Int)) (Lexer!6983) )
))
(declare-fun thiss!25645 () LexerInterface!6985)

(declare-datatypes ((List!45107 0))(
  ( (Nil!44983) (Cons!44983 (h!50403 String!51880) (t!342674 List!45107)) )
))
(declare-fun noDuplicateTag!2993 (LexerInterface!6985 List!45106 List!45107) Bool)

(declare-fun noDuplicateTag$default$2!16 (LexerInterface!6985) List!45107)

(assert (=> b!4144926 (= e!2571821 (noDuplicateTag!2993 thiss!25645 rules!3756 (noDuplicateTag$default$2!16 thiss!25645)))))

(declare-fun b!4144927 () Bool)

(declare-fun res!1696388 () Bool)

(assert (=> b!4144927 (=> (not res!1696388) (not e!2571826))))

(declare-fun p!2912 () List!45105)

(declare-fun isEmpty!26842 (List!45105) Bool)

(assert (=> b!4144927 (= res!1696388 (not (isEmpty!26842 p!2912)))))

(declare-fun b!4144928 () Bool)

(declare-fun res!1696393 () Bool)

(declare-fun e!2571811 () Bool)

(assert (=> b!4144928 (=> (not res!1696393) (not e!2571811))))

(declare-fun matchR!6130 (Regex!12301 List!45105) Bool)

(assert (=> b!4144928 (= res!1696393 (matchR!6130 (regex!7396 r!4008) p!2912))))

(declare-fun e!2571825 () Bool)

(assert (=> b!4144929 (= e!2571825 (and tp!1263407 tp!1263409))))

(assert (=> b!4144930 (= e!2571823 (and tp!1263414 tp!1263415))))

(declare-fun e!2571824 () Bool)

(assert (=> b!4144931 (= e!2571824 (and tp!1263413 tp!1263405))))

(declare-fun b!4144932 () Bool)

(declare-fun res!1696383 () Bool)

(assert (=> b!4144932 (=> (not res!1696383) (not e!2571826))))

(declare-fun rulesInvariant!6282 (LexerInterface!6985 List!45106) Bool)

(assert (=> b!4144932 (= res!1696383 (rulesInvariant!6282 thiss!25645 rules!3756))))

(declare-fun b!4144933 () Bool)

(declare-fun e!2571813 () Bool)

(declare-fun tp_is_empty!21525 () Bool)

(declare-fun tp!1263416 () Bool)

(assert (=> b!4144933 (= e!2571813 (and tp_is_empty!21525 tp!1263416))))

(declare-fun b!4144934 () Bool)

(declare-fun e!2571814 () Bool)

(assert (=> b!4144934 (= e!2571814 e!2571821)))

(declare-fun res!1696396 () Bool)

(assert (=> b!4144934 (=> res!1696396 e!2571821)))

(declare-fun lt!1478389 () Int)

(declare-fun lt!1478394 () Int)

(assert (=> b!4144934 (= res!1696396 (or (> lt!1478389 lt!1478394) (< lt!1478389 lt!1478394)))))

(declare-datatypes ((Token!13722 0))(
  ( (Token!13723 (value!231340 TokenValue!7626) (rule!10516 Rule!14592) (size!33338 Int) (originalCharacters!7892 List!45105)) )
))
(declare-datatypes ((tuple2!43354 0))(
  ( (tuple2!43355 (_1!24811 Token!13722) (_2!24811 List!45105)) )
))
(declare-datatypes ((Option!9702 0))(
  ( (None!9701) (Some!9701 (v!40349 tuple2!43354)) )
))
(declare-fun lt!1478387 () Option!9702)

(declare-fun size!33339 (BalanceConc!26808) Int)

(declare-fun charsOf!4995 (Token!13722) BalanceConc!26808)

(declare-fun get!14689 (Option!9702) tuple2!43354)

(assert (=> b!4144934 (= lt!1478389 (size!33339 (charsOf!4995 (_1!24811 (get!14689 lt!1478387)))))))

(declare-fun b!4144935 () Bool)

(declare-fun e!2571815 () Bool)

(assert (=> b!4144935 (= e!2571811 (not e!2571815))))

(declare-fun res!1696387 () Bool)

(assert (=> b!4144935 (=> res!1696387 e!2571815)))

(declare-fun rBis!149 () Rule!14592)

(get-info :version)

(assert (=> b!4144935 (= res!1696387 (or (not ((_ is Cons!44982) rules!3756)) (not (= (h!50402 rules!3756) rBis!149))))))

(declare-datatypes ((Unit!64271 0))(
  ( (Unit!64272) )
))
(declare-fun lt!1478391 () Unit!64271)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2242 (LexerInterface!6985 Rule!14592 List!45106) Unit!64271)

(assert (=> b!4144935 (= lt!1478391 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2242 thiss!25645 r!4008 rules!3756))))

(declare-fun ruleValid!3202 (LexerInterface!6985 Rule!14592) Bool)

(assert (=> b!4144935 (ruleValid!3202 thiss!25645 rBis!149)))

(declare-fun lt!1478386 () Unit!64271)

(assert (=> b!4144935 (= lt!1478386 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2242 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4144936 () Bool)

(declare-fun res!1696389 () Bool)

(assert (=> b!4144936 (=> (not res!1696389) (not e!2571811))))

(assert (=> b!4144936 (= res!1696389 (ruleValid!3202 thiss!25645 r!4008))))

(declare-fun e!2571822 () Bool)

(declare-fun b!4144937 () Bool)

(declare-fun tp!1263408 () Bool)

(assert (=> b!4144937 (= e!2571822 (and tp!1263408 (inv!59585 (tag!8256 (h!50402 rules!3756))) (inv!59587 (transformation!7396 (h!50402 rules!3756))) e!2571825))))

(declare-fun b!4144938 () Bool)

(declare-fun res!1696386 () Bool)

(assert (=> b!4144938 (=> (not res!1696386) (not e!2571826))))

(declare-fun input!3238 () List!45105)

(declare-fun isPrefix!4331 (List!45105 List!45105) Bool)

(assert (=> b!4144938 (= res!1696386 (isPrefix!4331 p!2912 input!3238))))

(declare-fun b!4144939 () Bool)

(declare-fun res!1696394 () Bool)

(assert (=> b!4144939 (=> (not res!1696394) (not e!2571826))))

(declare-fun contains!9076 (List!45106 Rule!14592) Bool)

(assert (=> b!4144939 (= res!1696394 (contains!9076 rules!3756 r!4008))))

(declare-fun res!1696392 () Bool)

(assert (=> start!394190 (=> (not res!1696392) (not e!2571826))))

(assert (=> start!394190 (= res!1696392 ((_ is Lexer!6983) thiss!25645))))

(assert (=> start!394190 e!2571826))

(declare-fun e!2571818 () Bool)

(assert (=> start!394190 e!2571818))

(declare-fun e!2571819 () Bool)

(assert (=> start!394190 e!2571819))

(assert (=> start!394190 true))

(assert (=> start!394190 e!2571817))

(assert (=> start!394190 e!2571813))

(declare-fun e!2571810 () Bool)

(assert (=> start!394190 e!2571810))

(declare-fun b!4144940 () Bool)

(assert (=> b!4144940 (= e!2571815 e!2571814)))

(declare-fun res!1696391 () Bool)

(assert (=> b!4144940 (=> res!1696391 e!2571814)))

(declare-fun isEmpty!26843 (Option!9702) Bool)

(assert (=> b!4144940 (= res!1696391 (isEmpty!26843 lt!1478387))))

(declare-fun maxPrefixOneRule!3114 (LexerInterface!6985 Rule!14592 List!45105) Option!9702)

(assert (=> b!4144940 (= lt!1478387 (maxPrefixOneRule!3114 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4144940 (not (= rBis!149 r!4008))))

(declare-fun lt!1478385 () Unit!64271)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!94 (LexerInterface!6985 List!45106 Rule!14592 Rule!14592) Unit!64271)

(assert (=> b!4144940 (= lt!1478385 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!94 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun tail!6577 (List!45106) List!45106)

(assert (=> b!4144940 (contains!9076 (tail!6577 rules!3756) r!4008)))

(declare-fun lt!1478390 () Unit!64271)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!100 (List!45106 Rule!14592 Rule!14592) Unit!64271)

(assert (=> b!4144940 (= lt!1478390 (lemmaGetIndexBiggerAndHeadEqThenTailContains!100 rules!3756 rBis!149 r!4008))))

(declare-fun tp!1263406 () Bool)

(declare-fun b!4144941 () Bool)

(assert (=> b!4144941 (= e!2571810 (and tp!1263406 (inv!59585 (tag!8256 rBis!149)) (inv!59587 (transformation!7396 rBis!149)) e!2571824))))

(declare-fun b!4144942 () Bool)

(declare-fun tp!1263411 () Bool)

(assert (=> b!4144942 (= e!2571819 (and tp_is_empty!21525 tp!1263411))))

(declare-fun b!4144943 () Bool)

(declare-fun res!1696384 () Bool)

(assert (=> b!4144943 (=> (not res!1696384) (not e!2571826))))

(assert (=> b!4144943 (= res!1696384 (contains!9076 rules!3756 rBis!149))))

(declare-fun b!4144944 () Bool)

(declare-fun res!1696395 () Bool)

(assert (=> b!4144944 (=> (not res!1696395) (not e!2571811))))

(declare-fun getIndex!742 (List!45106 Rule!14592) Int)

(assert (=> b!4144944 (= res!1696395 (< (getIndex!742 rules!3756 rBis!149) (getIndex!742 rules!3756 r!4008)))))

(declare-fun b!4144945 () Bool)

(assert (=> b!4144945 (= e!2571826 e!2571811)))

(declare-fun res!1696390 () Bool)

(assert (=> b!4144945 (=> (not res!1696390) (not e!2571811))))

(declare-fun lt!1478392 () TokenValue!7626)

(declare-fun maxPrefix!4175 (LexerInterface!6985 List!45106 List!45105) Option!9702)

(declare-fun getSuffix!2658 (List!45105 List!45105) List!45105)

(assert (=> b!4144945 (= res!1696390 (= (maxPrefix!4175 thiss!25645 rules!3756 input!3238) (Some!9701 (tuple2!43355 (Token!13723 lt!1478392 r!4008 lt!1478394 p!2912) (getSuffix!2658 input!3238 p!2912)))))))

(declare-fun size!33340 (List!45105) Int)

(assert (=> b!4144945 (= lt!1478394 (size!33340 p!2912))))

(declare-fun lt!1478393 () BalanceConc!26808)

(declare-fun apply!10469 (TokenValueInjection!14680 BalanceConc!26808) TokenValue!7626)

(assert (=> b!4144945 (= lt!1478392 (apply!10469 (transformation!7396 r!4008) lt!1478393))))

(declare-fun lt!1478388 () Unit!64271)

(declare-fun lemmaSemiInverse!2254 (TokenValueInjection!14680 BalanceConc!26808) Unit!64271)

(assert (=> b!4144945 (= lt!1478388 (lemmaSemiInverse!2254 (transformation!7396 r!4008) lt!1478393))))

(declare-fun seqFromList!5513 (List!45105) BalanceConc!26808)

(assert (=> b!4144945 (= lt!1478393 (seqFromList!5513 p!2912))))

(declare-fun b!4144946 () Bool)

(declare-fun tp!1263410 () Bool)

(assert (=> b!4144946 (= e!2571818 (and e!2571822 tp!1263410))))

(assert (= (and start!394190 res!1696392) b!4144938))

(assert (= (and b!4144938 res!1696386) b!4144924))

(assert (= (and b!4144924 res!1696385) b!4144932))

(assert (= (and b!4144932 res!1696383) b!4144939))

(assert (= (and b!4144939 res!1696394) b!4144943))

(assert (= (and b!4144943 res!1696384) b!4144927))

(assert (= (and b!4144927 res!1696388) b!4144945))

(assert (= (and b!4144945 res!1696390) b!4144928))

(assert (= (and b!4144928 res!1696393) b!4144944))

(assert (= (and b!4144944 res!1696395) b!4144936))

(assert (= (and b!4144936 res!1696389) b!4144935))

(assert (= (and b!4144935 (not res!1696387)) b!4144940))

(assert (= (and b!4144940 (not res!1696391)) b!4144934))

(assert (= (and b!4144934 (not res!1696396)) b!4144926))

(assert (= b!4144937 b!4144929))

(assert (= b!4144946 b!4144937))

(assert (= (and start!394190 ((_ is Cons!44982) rules!3756)) b!4144946))

(assert (= (and start!394190 ((_ is Cons!44981) p!2912)) b!4144942))

(assert (= b!4144925 b!4144930))

(assert (= start!394190 b!4144925))

(assert (= (and start!394190 ((_ is Cons!44981) input!3238)) b!4144933))

(assert (= b!4144941 b!4144931))

(assert (= start!394190 b!4144941))

(declare-fun m!4741057 () Bool)

(assert (=> b!4144935 m!4741057))

(declare-fun m!4741059 () Bool)

(assert (=> b!4144935 m!4741059))

(declare-fun m!4741061 () Bool)

(assert (=> b!4144935 m!4741061))

(declare-fun m!4741063 () Bool)

(assert (=> b!4144927 m!4741063))

(declare-fun m!4741065 () Bool)

(assert (=> b!4144940 m!4741065))

(declare-fun m!4741067 () Bool)

(assert (=> b!4144940 m!4741067))

(declare-fun m!4741069 () Bool)

(assert (=> b!4144940 m!4741069))

(declare-fun m!4741071 () Bool)

(assert (=> b!4144940 m!4741071))

(assert (=> b!4144940 m!4741067))

(declare-fun m!4741073 () Bool)

(assert (=> b!4144940 m!4741073))

(declare-fun m!4741075 () Bool)

(assert (=> b!4144940 m!4741075))

(declare-fun m!4741077 () Bool)

(assert (=> b!4144945 m!4741077))

(declare-fun m!4741079 () Bool)

(assert (=> b!4144945 m!4741079))

(declare-fun m!4741081 () Bool)

(assert (=> b!4144945 m!4741081))

(declare-fun m!4741083 () Bool)

(assert (=> b!4144945 m!4741083))

(declare-fun m!4741085 () Bool)

(assert (=> b!4144945 m!4741085))

(declare-fun m!4741087 () Bool)

(assert (=> b!4144945 m!4741087))

(declare-fun m!4741089 () Bool)

(assert (=> b!4144928 m!4741089))

(declare-fun m!4741091 () Bool)

(assert (=> b!4144932 m!4741091))

(declare-fun m!4741093 () Bool)

(assert (=> b!4144934 m!4741093))

(declare-fun m!4741095 () Bool)

(assert (=> b!4144934 m!4741095))

(assert (=> b!4144934 m!4741095))

(declare-fun m!4741097 () Bool)

(assert (=> b!4144934 m!4741097))

(declare-fun m!4741099 () Bool)

(assert (=> b!4144925 m!4741099))

(declare-fun m!4741101 () Bool)

(assert (=> b!4144925 m!4741101))

(declare-fun m!4741103 () Bool)

(assert (=> b!4144937 m!4741103))

(declare-fun m!4741105 () Bool)

(assert (=> b!4144937 m!4741105))

(declare-fun m!4741107 () Bool)

(assert (=> b!4144924 m!4741107))

(declare-fun m!4741109 () Bool)

(assert (=> b!4144939 m!4741109))

(declare-fun m!4741111 () Bool)

(assert (=> b!4144944 m!4741111))

(declare-fun m!4741113 () Bool)

(assert (=> b!4144944 m!4741113))

(declare-fun m!4741115 () Bool)

(assert (=> b!4144938 m!4741115))

(declare-fun m!4741117 () Bool)

(assert (=> b!4144926 m!4741117))

(assert (=> b!4144926 m!4741117))

(declare-fun m!4741119 () Bool)

(assert (=> b!4144926 m!4741119))

(declare-fun m!4741121 () Bool)

(assert (=> b!4144941 m!4741121))

(declare-fun m!4741123 () Bool)

(assert (=> b!4144941 m!4741123))

(declare-fun m!4741125 () Bool)

(assert (=> b!4144943 m!4741125))

(declare-fun m!4741127 () Bool)

(assert (=> b!4144936 m!4741127))

(check-sat (not b_next!118911) b_and!322077 (not b!4144946) (not b!4144932) b_and!322081 (not b!4144925) (not b!4144935) (not b!4144936) (not b!4144928) (not b!4144939) (not b!4144926) (not b!4144933) (not b_next!118917) (not b!4144940) b_and!322079 (not b_next!118909) (not b!4144941) tp_is_empty!21525 (not b_next!118915) (not b!4144943) (not b_next!118913) (not b!4144927) (not b!4144944) (not b!4144934) (not b!4144945) (not b!4144937) (not b!4144924) b_and!322075 b_and!322073 (not b_next!118907) b_and!322083 (not b!4144938) (not b!4144942))
(check-sat (not b_next!118917) (not b_next!118911) b_and!322077 b_and!322081 (not b_next!118915) (not b_next!118913) b_and!322075 b_and!322083 b_and!322079 (not b_next!118909) b_and!322073 (not b_next!118907))
(get-model)

(declare-fun b!4145045 () Bool)

(declare-fun e!2571889 () Bool)

(declare-fun head!8746 (List!45105) C!24788)

(assert (=> b!4145045 (= e!2571889 (not (= (head!8746 p!2912) (c!710289 (regex!7396 r!4008)))))))

(declare-fun b!4145046 () Bool)

(declare-fun res!1696469 () Bool)

(declare-fun e!2571886 () Bool)

(assert (=> b!4145046 (=> (not res!1696469) (not e!2571886))))

(declare-fun tail!6579 (List!45105) List!45105)

(assert (=> b!4145046 (= res!1696469 (isEmpty!26842 (tail!6579 p!2912)))))

(declare-fun d!1226713 () Bool)

(declare-fun e!2571891 () Bool)

(assert (=> d!1226713 e!2571891))

(declare-fun c!710305 () Bool)

(assert (=> d!1226713 (= c!710305 ((_ is EmptyExpr!12301) (regex!7396 r!4008)))))

(declare-fun lt!1478411 () Bool)

(declare-fun e!2571892 () Bool)

(assert (=> d!1226713 (= lt!1478411 e!2571892)))

(declare-fun c!710306 () Bool)

(assert (=> d!1226713 (= c!710306 (isEmpty!26842 p!2912))))

(declare-fun validRegex!5543 (Regex!12301) Bool)

(assert (=> d!1226713 (validRegex!5543 (regex!7396 r!4008))))

(assert (=> d!1226713 (= (matchR!6130 (regex!7396 r!4008) p!2912) lt!1478411)))

(declare-fun b!4145047 () Bool)

(declare-fun e!2571890 () Bool)

(assert (=> b!4145047 (= e!2571890 e!2571889)))

(declare-fun res!1696473 () Bool)

(assert (=> b!4145047 (=> res!1696473 e!2571889)))

(declare-fun call!290624 () Bool)

(assert (=> b!4145047 (= res!1696473 call!290624)))

(declare-fun b!4145048 () Bool)

(assert (=> b!4145048 (= e!2571891 (= lt!1478411 call!290624))))

(declare-fun b!4145049 () Bool)

(declare-fun e!2571887 () Bool)

(assert (=> b!4145049 (= e!2571891 e!2571887)))

(declare-fun c!710307 () Bool)

(assert (=> b!4145049 (= c!710307 ((_ is EmptyLang!12301) (regex!7396 r!4008)))))

(declare-fun bm!290619 () Bool)

(assert (=> bm!290619 (= call!290624 (isEmpty!26842 p!2912))))

(declare-fun b!4145050 () Bool)

(assert (=> b!4145050 (= e!2571886 (= (head!8746 p!2912) (c!710289 (regex!7396 r!4008))))))

(declare-fun b!4145051 () Bool)

(assert (=> b!4145051 (= e!2571887 (not lt!1478411))))

(declare-fun b!4145052 () Bool)

(declare-fun nullable!4333 (Regex!12301) Bool)

(assert (=> b!4145052 (= e!2571892 (nullable!4333 (regex!7396 r!4008)))))

(declare-fun b!4145053 () Bool)

(declare-fun res!1696468 () Bool)

(assert (=> b!4145053 (=> (not res!1696468) (not e!2571886))))

(assert (=> b!4145053 (= res!1696468 (not call!290624))))

(declare-fun b!4145054 () Bool)

(declare-fun derivativeStep!3727 (Regex!12301 C!24788) Regex!12301)

(assert (=> b!4145054 (= e!2571892 (matchR!6130 (derivativeStep!3727 (regex!7396 r!4008) (head!8746 p!2912)) (tail!6579 p!2912)))))

(declare-fun b!4145055 () Bool)

(declare-fun res!1696474 () Bool)

(declare-fun e!2571888 () Bool)

(assert (=> b!4145055 (=> res!1696474 e!2571888)))

(assert (=> b!4145055 (= res!1696474 e!2571886)))

(declare-fun res!1696471 () Bool)

(assert (=> b!4145055 (=> (not res!1696471) (not e!2571886))))

(assert (=> b!4145055 (= res!1696471 lt!1478411)))

(declare-fun b!4145056 () Bool)

(assert (=> b!4145056 (= e!2571888 e!2571890)))

(declare-fun res!1696470 () Bool)

(assert (=> b!4145056 (=> (not res!1696470) (not e!2571890))))

(assert (=> b!4145056 (= res!1696470 (not lt!1478411))))

(declare-fun b!4145057 () Bool)

(declare-fun res!1696472 () Bool)

(assert (=> b!4145057 (=> res!1696472 e!2571889)))

(assert (=> b!4145057 (= res!1696472 (not (isEmpty!26842 (tail!6579 p!2912))))))

(declare-fun b!4145058 () Bool)

(declare-fun res!1696467 () Bool)

(assert (=> b!4145058 (=> res!1696467 e!2571888)))

(assert (=> b!4145058 (= res!1696467 (not ((_ is ElementMatch!12301) (regex!7396 r!4008))))))

(assert (=> b!4145058 (= e!2571887 e!2571888)))

(assert (= (and d!1226713 c!710306) b!4145052))

(assert (= (and d!1226713 (not c!710306)) b!4145054))

(assert (= (and d!1226713 c!710305) b!4145048))

(assert (= (and d!1226713 (not c!710305)) b!4145049))

(assert (= (and b!4145049 c!710307) b!4145051))

(assert (= (and b!4145049 (not c!710307)) b!4145058))

(assert (= (and b!4145058 (not res!1696467)) b!4145055))

(assert (= (and b!4145055 res!1696471) b!4145053))

(assert (= (and b!4145053 res!1696468) b!4145046))

(assert (= (and b!4145046 res!1696469) b!4145050))

(assert (= (and b!4145055 (not res!1696474)) b!4145056))

(assert (= (and b!4145056 res!1696470) b!4145047))

(assert (= (and b!4145047 (not res!1696473)) b!4145057))

(assert (= (and b!4145057 (not res!1696472)) b!4145045))

(assert (= (or b!4145048 b!4145053 b!4145047) bm!290619))

(assert (=> d!1226713 m!4741063))

(declare-fun m!4741179 () Bool)

(assert (=> d!1226713 m!4741179))

(declare-fun m!4741181 () Bool)

(assert (=> b!4145045 m!4741181))

(assert (=> b!4145050 m!4741181))

(declare-fun m!4741183 () Bool)

(assert (=> b!4145057 m!4741183))

(assert (=> b!4145057 m!4741183))

(declare-fun m!4741185 () Bool)

(assert (=> b!4145057 m!4741185))

(declare-fun m!4741187 () Bool)

(assert (=> b!4145052 m!4741187))

(assert (=> bm!290619 m!4741063))

(assert (=> b!4145054 m!4741181))

(assert (=> b!4145054 m!4741181))

(declare-fun m!4741189 () Bool)

(assert (=> b!4145054 m!4741189))

(assert (=> b!4145054 m!4741183))

(assert (=> b!4145054 m!4741189))

(assert (=> b!4145054 m!4741183))

(declare-fun m!4741191 () Bool)

(assert (=> b!4145054 m!4741191))

(assert (=> b!4145046 m!4741183))

(assert (=> b!4145046 m!4741183))

(assert (=> b!4145046 m!4741185))

(assert (=> b!4144928 d!1226713))

(declare-fun d!1226731 () Bool)

(declare-fun lt!1478419 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6959 (List!45106) (InoxSet Rule!14592))

(assert (=> d!1226731 (= lt!1478419 (select (content!6959 rules!3756) r!4008))))

(declare-fun e!2571909 () Bool)

(assert (=> d!1226731 (= lt!1478419 e!2571909)))

(declare-fun res!1696495 () Bool)

(assert (=> d!1226731 (=> (not res!1696495) (not e!2571909))))

(assert (=> d!1226731 (= res!1696495 ((_ is Cons!44982) rules!3756))))

(assert (=> d!1226731 (= (contains!9076 rules!3756 r!4008) lt!1478419)))

(declare-fun b!4145078 () Bool)

(declare-fun e!2571908 () Bool)

(assert (=> b!4145078 (= e!2571909 e!2571908)))

(declare-fun res!1696494 () Bool)

(assert (=> b!4145078 (=> res!1696494 e!2571908)))

(assert (=> b!4145078 (= res!1696494 (= (h!50402 rules!3756) r!4008))))

(declare-fun b!4145079 () Bool)

(assert (=> b!4145079 (= e!2571908 (contains!9076 (t!342673 rules!3756) r!4008))))

(assert (= (and d!1226731 res!1696495) b!4145078))

(assert (= (and b!4145078 (not res!1696494)) b!4145079))

(declare-fun m!4741201 () Bool)

(assert (=> d!1226731 m!4741201))

(declare-fun m!4741203 () Bool)

(assert (=> d!1226731 m!4741203))

(declare-fun m!4741205 () Bool)

(assert (=> b!4145079 m!4741205))

(assert (=> b!4144939 d!1226731))

(declare-fun b!4145091 () Bool)

(declare-fun e!2571918 () Bool)

(assert (=> b!4145091 (= e!2571918 (>= (size!33340 input!3238) (size!33340 p!2912)))))

(declare-fun b!4145088 () Bool)

(declare-fun e!2571916 () Bool)

(declare-fun e!2571917 () Bool)

(assert (=> b!4145088 (= e!2571916 e!2571917)))

(declare-fun res!1696507 () Bool)

(assert (=> b!4145088 (=> (not res!1696507) (not e!2571917))))

(assert (=> b!4145088 (= res!1696507 (not ((_ is Nil!44981) input!3238)))))

(declare-fun b!4145090 () Bool)

(assert (=> b!4145090 (= e!2571917 (isPrefix!4331 (tail!6579 p!2912) (tail!6579 input!3238)))))

(declare-fun b!4145089 () Bool)

(declare-fun res!1696504 () Bool)

(assert (=> b!4145089 (=> (not res!1696504) (not e!2571917))))

(assert (=> b!4145089 (= res!1696504 (= (head!8746 p!2912) (head!8746 input!3238)))))

(declare-fun d!1226741 () Bool)

(assert (=> d!1226741 e!2571918))

(declare-fun res!1696505 () Bool)

(assert (=> d!1226741 (=> res!1696505 e!2571918)))

(declare-fun lt!1478422 () Bool)

(assert (=> d!1226741 (= res!1696505 (not lt!1478422))))

(assert (=> d!1226741 (= lt!1478422 e!2571916)))

(declare-fun res!1696506 () Bool)

(assert (=> d!1226741 (=> res!1696506 e!2571916)))

(assert (=> d!1226741 (= res!1696506 ((_ is Nil!44981) p!2912))))

(assert (=> d!1226741 (= (isPrefix!4331 p!2912 input!3238) lt!1478422)))

(assert (= (and d!1226741 (not res!1696506)) b!4145088))

(assert (= (and b!4145088 res!1696507) b!4145089))

(assert (= (and b!4145089 res!1696504) b!4145090))

(assert (= (and d!1226741 (not res!1696505)) b!4145091))

(declare-fun m!4741207 () Bool)

(assert (=> b!4145091 m!4741207))

(assert (=> b!4145091 m!4741077))

(assert (=> b!4145090 m!4741183))

(declare-fun m!4741209 () Bool)

(assert (=> b!4145090 m!4741209))

(assert (=> b!4145090 m!4741183))

(assert (=> b!4145090 m!4741209))

(declare-fun m!4741211 () Bool)

(assert (=> b!4145090 m!4741211))

(assert (=> b!4145089 m!4741181))

(declare-fun m!4741213 () Bool)

(assert (=> b!4145089 m!4741213))

(assert (=> b!4144938 d!1226741))

(declare-fun d!1226743 () Bool)

(assert (=> d!1226743 (= (isEmpty!26842 p!2912) ((_ is Nil!44981) p!2912))))

(assert (=> b!4144927 d!1226743))

(declare-fun d!1226745 () Bool)

(declare-fun res!1696512 () Bool)

(declare-fun e!2571923 () Bool)

(assert (=> d!1226745 (=> res!1696512 e!2571923)))

(assert (=> d!1226745 (= res!1696512 ((_ is Nil!44982) rules!3756))))

(assert (=> d!1226745 (= (noDuplicateTag!2993 thiss!25645 rules!3756 (noDuplicateTag$default$2!16 thiss!25645)) e!2571923)))

(declare-fun b!4145096 () Bool)

(declare-fun e!2571924 () Bool)

(assert (=> b!4145096 (= e!2571923 e!2571924)))

(declare-fun res!1696513 () Bool)

(assert (=> b!4145096 (=> (not res!1696513) (not e!2571924))))

(declare-fun contains!9078 (List!45107 String!51880) Bool)

(assert (=> b!4145096 (= res!1696513 (not (contains!9078 (noDuplicateTag$default$2!16 thiss!25645) (tag!8256 (h!50402 rules!3756)))))))

(declare-fun b!4145097 () Bool)

(assert (=> b!4145097 (= e!2571924 (noDuplicateTag!2993 thiss!25645 (t!342673 rules!3756) (Cons!44983 (tag!8256 (h!50402 rules!3756)) (noDuplicateTag$default$2!16 thiss!25645))))))

(assert (= (and d!1226745 (not res!1696512)) b!4145096))

(assert (= (and b!4145096 res!1696513) b!4145097))

(assert (=> b!4145096 m!4741117))

(declare-fun m!4741215 () Bool)

(assert (=> b!4145096 m!4741215))

(declare-fun m!4741217 () Bool)

(assert (=> b!4145097 m!4741217))

(assert (=> b!4144926 d!1226745))

(declare-fun d!1226747 () Bool)

(assert (=> d!1226747 (= (noDuplicateTag$default$2!16 thiss!25645) Nil!44983)))

(assert (=> b!4144926 d!1226747))

(declare-fun d!1226749 () Bool)

(assert (=> d!1226749 (= (inv!59585 (tag!8256 (h!50402 rules!3756))) (= (mod (str.len (value!231339 (tag!8256 (h!50402 rules!3756)))) 2) 0))))

(assert (=> b!4144937 d!1226749))

(declare-fun d!1226751 () Bool)

(declare-fun res!1696516 () Bool)

(declare-fun e!2571927 () Bool)

(assert (=> d!1226751 (=> (not res!1696516) (not e!2571927))))

(declare-fun semiInverseModEq!3197 (Int Int) Bool)

(assert (=> d!1226751 (= res!1696516 (semiInverseModEq!3197 (toChars!9919 (transformation!7396 (h!50402 rules!3756))) (toValue!10060 (transformation!7396 (h!50402 rules!3756)))))))

(assert (=> d!1226751 (= (inv!59587 (transformation!7396 (h!50402 rules!3756))) e!2571927)))

(declare-fun b!4145100 () Bool)

(declare-fun equivClasses!3096 (Int Int) Bool)

(assert (=> b!4145100 (= e!2571927 (equivClasses!3096 (toChars!9919 (transformation!7396 (h!50402 rules!3756))) (toValue!10060 (transformation!7396 (h!50402 rules!3756)))))))

(assert (= (and d!1226751 res!1696516) b!4145100))

(declare-fun m!4741219 () Bool)

(assert (=> d!1226751 m!4741219))

(declare-fun m!4741221 () Bool)

(assert (=> b!4145100 m!4741221))

(assert (=> b!4144937 d!1226751))

(declare-fun d!1226753 () Bool)

(assert (=> d!1226753 (= (inv!59585 (tag!8256 rBis!149)) (= (mod (str.len (value!231339 (tag!8256 rBis!149))) 2) 0))))

(assert (=> b!4144941 d!1226753))

(declare-fun d!1226755 () Bool)

(declare-fun res!1696517 () Bool)

(declare-fun e!2571928 () Bool)

(assert (=> d!1226755 (=> (not res!1696517) (not e!2571928))))

(assert (=> d!1226755 (= res!1696517 (semiInverseModEq!3197 (toChars!9919 (transformation!7396 rBis!149)) (toValue!10060 (transformation!7396 rBis!149))))))

(assert (=> d!1226755 (= (inv!59587 (transformation!7396 rBis!149)) e!2571928)))

(declare-fun b!4145101 () Bool)

(assert (=> b!4145101 (= e!2571928 (equivClasses!3096 (toChars!9919 (transformation!7396 rBis!149)) (toValue!10060 (transformation!7396 rBis!149))))))

(assert (= (and d!1226755 res!1696517) b!4145101))

(declare-fun m!4741223 () Bool)

(assert (=> d!1226755 m!4741223))

(declare-fun m!4741225 () Bool)

(assert (=> b!4145101 m!4741225))

(assert (=> b!4144941 d!1226755))

(declare-fun d!1226757 () Bool)

(declare-fun lt!1478423 () Bool)

(assert (=> d!1226757 (= lt!1478423 (select (content!6959 (tail!6577 rules!3756)) r!4008))))

(declare-fun e!2571930 () Bool)

(assert (=> d!1226757 (= lt!1478423 e!2571930)))

(declare-fun res!1696519 () Bool)

(assert (=> d!1226757 (=> (not res!1696519) (not e!2571930))))

(assert (=> d!1226757 (= res!1696519 ((_ is Cons!44982) (tail!6577 rules!3756)))))

(assert (=> d!1226757 (= (contains!9076 (tail!6577 rules!3756) r!4008) lt!1478423)))

(declare-fun b!4145102 () Bool)

(declare-fun e!2571929 () Bool)

(assert (=> b!4145102 (= e!2571930 e!2571929)))

(declare-fun res!1696518 () Bool)

(assert (=> b!4145102 (=> res!1696518 e!2571929)))

(assert (=> b!4145102 (= res!1696518 (= (h!50402 (tail!6577 rules!3756)) r!4008))))

(declare-fun b!4145103 () Bool)

(assert (=> b!4145103 (= e!2571929 (contains!9076 (t!342673 (tail!6577 rules!3756)) r!4008))))

(assert (= (and d!1226757 res!1696519) b!4145102))

(assert (= (and b!4145102 (not res!1696518)) b!4145103))

(assert (=> d!1226757 m!4741067))

(declare-fun m!4741227 () Bool)

(assert (=> d!1226757 m!4741227))

(declare-fun m!4741229 () Bool)

(assert (=> d!1226757 m!4741229))

(declare-fun m!4741231 () Bool)

(assert (=> b!4145103 m!4741231))

(assert (=> b!4144940 d!1226757))

(declare-fun d!1226759 () Bool)

(assert (=> d!1226759 (= (tail!6577 rules!3756) (t!342673 rules!3756))))

(assert (=> b!4144940 d!1226759))

(declare-fun d!1226761 () Bool)

(assert (=> d!1226761 (contains!9076 (tail!6577 rules!3756) r!4008)))

(declare-fun lt!1478426 () Unit!64271)

(declare-fun choose!25369 (List!45106 Rule!14592 Rule!14592) Unit!64271)

(assert (=> d!1226761 (= lt!1478426 (choose!25369 rules!3756 rBis!149 r!4008))))

(declare-fun e!2571933 () Bool)

(assert (=> d!1226761 e!2571933))

(declare-fun res!1696522 () Bool)

(assert (=> d!1226761 (=> (not res!1696522) (not e!2571933))))

(assert (=> d!1226761 (= res!1696522 (contains!9076 rules!3756 rBis!149))))

(assert (=> d!1226761 (= (lemmaGetIndexBiggerAndHeadEqThenTailContains!100 rules!3756 rBis!149 r!4008) lt!1478426)))

(declare-fun b!4145106 () Bool)

(assert (=> b!4145106 (= e!2571933 (contains!9076 rules!3756 r!4008))))

(assert (= (and d!1226761 res!1696522) b!4145106))

(assert (=> d!1226761 m!4741067))

(assert (=> d!1226761 m!4741067))

(assert (=> d!1226761 m!4741069))

(declare-fun m!4741233 () Bool)

(assert (=> d!1226761 m!4741233))

(assert (=> d!1226761 m!4741125))

(assert (=> b!4145106 m!4741109))

(assert (=> b!4144940 d!1226761))

(declare-fun d!1226763 () Bool)

(assert (=> d!1226763 (= (isEmpty!26843 lt!1478387) (not ((_ is Some!9701) lt!1478387)))))

(assert (=> b!4144940 d!1226763))

(declare-fun b!4145216 () Bool)

(declare-fun res!1696591 () Bool)

(declare-fun e!2571991 () Bool)

(assert (=> b!4145216 (=> (not res!1696591) (not e!2571991))))

(declare-fun lt!1478483 () Option!9702)

(declare-fun ++!11634 (List!45105 List!45105) List!45105)

(declare-fun list!16477 (BalanceConc!26808) List!45105)

(assert (=> b!4145216 (= res!1696591 (= (++!11634 (list!16477 (charsOf!4995 (_1!24811 (get!14689 lt!1478483)))) (_2!24811 (get!14689 lt!1478483))) input!3238))))

(declare-fun d!1226765 () Bool)

(declare-fun e!2571988 () Bool)

(assert (=> d!1226765 e!2571988))

(declare-fun res!1696590 () Bool)

(assert (=> d!1226765 (=> res!1696590 e!2571988)))

(assert (=> d!1226765 (= res!1696590 (isEmpty!26843 lt!1478483))))

(declare-fun e!2571990 () Option!9702)

(assert (=> d!1226765 (= lt!1478483 e!2571990)))

(declare-fun c!710331 () Bool)

(declare-datatypes ((tuple2!43358 0))(
  ( (tuple2!43359 (_1!24813 List!45105) (_2!24813 List!45105)) )
))
(declare-fun lt!1478485 () tuple2!43358)

(assert (=> d!1226765 (= c!710331 (isEmpty!26842 (_1!24813 lt!1478485)))))

(declare-fun findLongestMatch!1450 (Regex!12301 List!45105) tuple2!43358)

(assert (=> d!1226765 (= lt!1478485 (findLongestMatch!1450 (regex!7396 rBis!149) input!3238))))

(assert (=> d!1226765 (ruleValid!3202 thiss!25645 rBis!149)))

(assert (=> d!1226765 (= (maxPrefixOneRule!3114 thiss!25645 rBis!149 input!3238) lt!1478483)))

(declare-fun b!4145217 () Bool)

(declare-fun res!1696592 () Bool)

(assert (=> b!4145217 (=> (not res!1696592) (not e!2571991))))

(assert (=> b!4145217 (= res!1696592 (= (value!231340 (_1!24811 (get!14689 lt!1478483))) (apply!10469 (transformation!7396 (rule!10516 (_1!24811 (get!14689 lt!1478483)))) (seqFromList!5513 (originalCharacters!7892 (_1!24811 (get!14689 lt!1478483)))))))))

(declare-fun b!4145218 () Bool)

(declare-fun e!2571989 () Bool)

(declare-fun findLongestMatchInner!1537 (Regex!12301 List!45105 Int List!45105 List!45105 Int) tuple2!43358)

(assert (=> b!4145218 (= e!2571989 (matchR!6130 (regex!7396 rBis!149) (_1!24813 (findLongestMatchInner!1537 (regex!7396 rBis!149) Nil!44981 (size!33340 Nil!44981) input!3238 input!3238 (size!33340 input!3238)))))))

(declare-fun b!4145219 () Bool)

(assert (=> b!4145219 (= e!2571990 None!9701)))

(declare-fun b!4145220 () Bool)

(assert (=> b!4145220 (= e!2571991 (= (size!33338 (_1!24811 (get!14689 lt!1478483))) (size!33340 (originalCharacters!7892 (_1!24811 (get!14689 lt!1478483))))))))

(declare-fun b!4145221 () Bool)

(assert (=> b!4145221 (= e!2571990 (Some!9701 (tuple2!43355 (Token!13723 (apply!10469 (transformation!7396 rBis!149) (seqFromList!5513 (_1!24813 lt!1478485))) rBis!149 (size!33339 (seqFromList!5513 (_1!24813 lt!1478485))) (_1!24813 lt!1478485)) (_2!24813 lt!1478485))))))

(declare-fun lt!1478484 () Unit!64271)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1510 (Regex!12301 List!45105) Unit!64271)

(assert (=> b!4145221 (= lt!1478484 (longestMatchIsAcceptedByMatchOrIsEmpty!1510 (regex!7396 rBis!149) input!3238))))

(declare-fun res!1696589 () Bool)

(assert (=> b!4145221 (= res!1696589 (isEmpty!26842 (_1!24813 (findLongestMatchInner!1537 (regex!7396 rBis!149) Nil!44981 (size!33340 Nil!44981) input!3238 input!3238 (size!33340 input!3238)))))))

(assert (=> b!4145221 (=> res!1696589 e!2571989)))

(assert (=> b!4145221 e!2571989))

(declare-fun lt!1478486 () Unit!64271)

(assert (=> b!4145221 (= lt!1478486 lt!1478484)))

(declare-fun lt!1478487 () Unit!64271)

(assert (=> b!4145221 (= lt!1478487 (lemmaSemiInverse!2254 (transformation!7396 rBis!149) (seqFromList!5513 (_1!24813 lt!1478485))))))

(declare-fun b!4145222 () Bool)

(declare-fun res!1696588 () Bool)

(assert (=> b!4145222 (=> (not res!1696588) (not e!2571991))))

(assert (=> b!4145222 (= res!1696588 (= (rule!10516 (_1!24811 (get!14689 lt!1478483))) rBis!149))))

(declare-fun b!4145223 () Bool)

(assert (=> b!4145223 (= e!2571988 e!2571991)))

(declare-fun res!1696587 () Bool)

(assert (=> b!4145223 (=> (not res!1696587) (not e!2571991))))

(assert (=> b!4145223 (= res!1696587 (matchR!6130 (regex!7396 rBis!149) (list!16477 (charsOf!4995 (_1!24811 (get!14689 lt!1478483))))))))

(declare-fun b!4145224 () Bool)

(declare-fun res!1696586 () Bool)

(assert (=> b!4145224 (=> (not res!1696586) (not e!2571991))))

(assert (=> b!4145224 (= res!1696586 (< (size!33340 (_2!24811 (get!14689 lt!1478483))) (size!33340 input!3238)))))

(assert (= (and d!1226765 c!710331) b!4145219))

(assert (= (and d!1226765 (not c!710331)) b!4145221))

(assert (= (and b!4145221 (not res!1696589)) b!4145218))

(assert (= (and d!1226765 (not res!1696590)) b!4145223))

(assert (= (and b!4145223 res!1696587) b!4145216))

(assert (= (and b!4145216 res!1696591) b!4145224))

(assert (= (and b!4145224 res!1696586) b!4145222))

(assert (= (and b!4145222 res!1696588) b!4145217))

(assert (= (and b!4145217 res!1696592) b!4145220))

(assert (=> b!4145221 m!4741207))

(declare-fun m!4741343 () Bool)

(assert (=> b!4145221 m!4741343))

(assert (=> b!4145221 m!4741207))

(declare-fun m!4741345 () Bool)

(assert (=> b!4145221 m!4741345))

(assert (=> b!4145221 m!4741343))

(declare-fun m!4741347 () Bool)

(assert (=> b!4145221 m!4741347))

(declare-fun m!4741349 () Bool)

(assert (=> b!4145221 m!4741349))

(assert (=> b!4145221 m!4741347))

(declare-fun m!4741351 () Bool)

(assert (=> b!4145221 m!4741351))

(assert (=> b!4145221 m!4741347))

(declare-fun m!4741353 () Bool)

(assert (=> b!4145221 m!4741353))

(declare-fun m!4741355 () Bool)

(assert (=> b!4145221 m!4741355))

(assert (=> b!4145221 m!4741347))

(declare-fun m!4741357 () Bool)

(assert (=> b!4145221 m!4741357))

(declare-fun m!4741359 () Bool)

(assert (=> d!1226765 m!4741359))

(declare-fun m!4741361 () Bool)

(assert (=> d!1226765 m!4741361))

(declare-fun m!4741363 () Bool)

(assert (=> d!1226765 m!4741363))

(assert (=> d!1226765 m!4741059))

(assert (=> b!4145218 m!4741343))

(assert (=> b!4145218 m!4741207))

(assert (=> b!4145218 m!4741343))

(assert (=> b!4145218 m!4741207))

(assert (=> b!4145218 m!4741345))

(declare-fun m!4741365 () Bool)

(assert (=> b!4145218 m!4741365))

(declare-fun m!4741367 () Bool)

(assert (=> b!4145217 m!4741367))

(declare-fun m!4741369 () Bool)

(assert (=> b!4145217 m!4741369))

(assert (=> b!4145217 m!4741369))

(declare-fun m!4741371 () Bool)

(assert (=> b!4145217 m!4741371))

(assert (=> b!4145224 m!4741367))

(declare-fun m!4741373 () Bool)

(assert (=> b!4145224 m!4741373))

(assert (=> b!4145224 m!4741207))

(assert (=> b!4145220 m!4741367))

(declare-fun m!4741375 () Bool)

(assert (=> b!4145220 m!4741375))

(assert (=> b!4145223 m!4741367))

(declare-fun m!4741377 () Bool)

(assert (=> b!4145223 m!4741377))

(assert (=> b!4145223 m!4741377))

(declare-fun m!4741379 () Bool)

(assert (=> b!4145223 m!4741379))

(assert (=> b!4145223 m!4741379))

(declare-fun m!4741381 () Bool)

(assert (=> b!4145223 m!4741381))

(assert (=> b!4145216 m!4741367))

(assert (=> b!4145216 m!4741377))

(assert (=> b!4145216 m!4741377))

(assert (=> b!4145216 m!4741379))

(assert (=> b!4145216 m!4741379))

(declare-fun m!4741383 () Bool)

(assert (=> b!4145216 m!4741383))

(assert (=> b!4145222 m!4741367))

(assert (=> b!4144940 d!1226765))

(declare-fun d!1226801 () Bool)

(assert (=> d!1226801 (not (= rBis!149 r!4008))))

(declare-fun lt!1478490 () Unit!64271)

(declare-fun choose!25371 (LexerInterface!6985 List!45106 Rule!14592 Rule!14592) Unit!64271)

(assert (=> d!1226801 (= lt!1478490 (choose!25371 thiss!25645 rules!3756 rBis!149 r!4008))))

(assert (=> d!1226801 (contains!9076 rules!3756 rBis!149)))

(assert (=> d!1226801 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!94 thiss!25645 rules!3756 rBis!149 r!4008) lt!1478490)))

(declare-fun bs!595327 () Bool)

(assert (= bs!595327 d!1226801))

(declare-fun m!4741385 () Bool)

(assert (=> bs!595327 m!4741385))

(assert (=> bs!595327 m!4741125))

(assert (=> b!4144940 d!1226801))

(declare-fun b!4145234 () Bool)

(declare-fun e!2571998 () Int)

(declare-fun e!2571997 () Int)

(assert (=> b!4145234 (= e!2571998 e!2571997)))

(declare-fun c!710337 () Bool)

(assert (=> b!4145234 (= c!710337 (and ((_ is Cons!44982) rules!3756) (not (= (h!50402 rules!3756) rBis!149))))))

(declare-fun b!4145233 () Bool)

(assert (=> b!4145233 (= e!2571998 0)))

(declare-fun b!4145236 () Bool)

(assert (=> b!4145236 (= e!2571997 (- 1))))

(declare-fun d!1226803 () Bool)

(declare-fun lt!1478493 () Int)

(assert (=> d!1226803 (>= lt!1478493 0)))

(assert (=> d!1226803 (= lt!1478493 e!2571998)))

(declare-fun c!710336 () Bool)

(assert (=> d!1226803 (= c!710336 (and ((_ is Cons!44982) rules!3756) (= (h!50402 rules!3756) rBis!149)))))

(assert (=> d!1226803 (contains!9076 rules!3756 rBis!149)))

(assert (=> d!1226803 (= (getIndex!742 rules!3756 rBis!149) lt!1478493)))

(declare-fun b!4145235 () Bool)

(assert (=> b!4145235 (= e!2571997 (+ 1 (getIndex!742 (t!342673 rules!3756) rBis!149)))))

(assert (= (and d!1226803 c!710336) b!4145233))

(assert (= (and d!1226803 (not c!710336)) b!4145234))

(assert (= (and b!4145234 c!710337) b!4145235))

(assert (= (and b!4145234 (not c!710337)) b!4145236))

(assert (=> d!1226803 m!4741125))

(declare-fun m!4741387 () Bool)

(assert (=> b!4145235 m!4741387))

(assert (=> b!4144944 d!1226803))

(declare-fun b!4145238 () Bool)

(declare-fun e!2572000 () Int)

(declare-fun e!2571999 () Int)

(assert (=> b!4145238 (= e!2572000 e!2571999)))

(declare-fun c!710339 () Bool)

(assert (=> b!4145238 (= c!710339 (and ((_ is Cons!44982) rules!3756) (not (= (h!50402 rules!3756) r!4008))))))

(declare-fun b!4145237 () Bool)

(assert (=> b!4145237 (= e!2572000 0)))

(declare-fun b!4145240 () Bool)

(assert (=> b!4145240 (= e!2571999 (- 1))))

(declare-fun d!1226805 () Bool)

(declare-fun lt!1478494 () Int)

(assert (=> d!1226805 (>= lt!1478494 0)))

(assert (=> d!1226805 (= lt!1478494 e!2572000)))

(declare-fun c!710338 () Bool)

(assert (=> d!1226805 (= c!710338 (and ((_ is Cons!44982) rules!3756) (= (h!50402 rules!3756) r!4008)))))

(assert (=> d!1226805 (contains!9076 rules!3756 r!4008)))

(assert (=> d!1226805 (= (getIndex!742 rules!3756 r!4008) lt!1478494)))

(declare-fun b!4145239 () Bool)

(assert (=> b!4145239 (= e!2571999 (+ 1 (getIndex!742 (t!342673 rules!3756) r!4008)))))

(assert (= (and d!1226805 c!710338) b!4145237))

(assert (= (and d!1226805 (not c!710338)) b!4145238))

(assert (= (and b!4145238 c!710339) b!4145239))

(assert (= (and b!4145238 (not c!710339)) b!4145240))

(assert (=> d!1226805 m!4741109))

(declare-fun m!4741389 () Bool)

(assert (=> b!4145239 m!4741389))

(assert (=> b!4144944 d!1226805))

(declare-fun d!1226807 () Bool)

(declare-fun res!1696595 () Bool)

(declare-fun e!2572003 () Bool)

(assert (=> d!1226807 (=> (not res!1696595) (not e!2572003))))

(declare-fun rulesValid!2910 (LexerInterface!6985 List!45106) Bool)

(assert (=> d!1226807 (= res!1696595 (rulesValid!2910 thiss!25645 rules!3756))))

(assert (=> d!1226807 (= (rulesInvariant!6282 thiss!25645 rules!3756) e!2572003)))

(declare-fun b!4145243 () Bool)

(assert (=> b!4145243 (= e!2572003 (noDuplicateTag!2993 thiss!25645 rules!3756 Nil!44983))))

(assert (= (and d!1226807 res!1696595) b!4145243))

(declare-fun m!4741391 () Bool)

(assert (=> d!1226807 m!4741391))

(declare-fun m!4741393 () Bool)

(assert (=> b!4145243 m!4741393))

(assert (=> b!4144932 d!1226807))

(declare-fun d!1226809 () Bool)

(declare-fun lt!1478495 () Bool)

(assert (=> d!1226809 (= lt!1478495 (select (content!6959 rules!3756) rBis!149))))

(declare-fun e!2572005 () Bool)

(assert (=> d!1226809 (= lt!1478495 e!2572005)))

(declare-fun res!1696597 () Bool)

(assert (=> d!1226809 (=> (not res!1696597) (not e!2572005))))

(assert (=> d!1226809 (= res!1696597 ((_ is Cons!44982) rules!3756))))

(assert (=> d!1226809 (= (contains!9076 rules!3756 rBis!149) lt!1478495)))

(declare-fun b!4145244 () Bool)

(declare-fun e!2572004 () Bool)

(assert (=> b!4145244 (= e!2572005 e!2572004)))

(declare-fun res!1696596 () Bool)

(assert (=> b!4145244 (=> res!1696596 e!2572004)))

(assert (=> b!4145244 (= res!1696596 (= (h!50402 rules!3756) rBis!149))))

(declare-fun b!4145245 () Bool)

(assert (=> b!4145245 (= e!2572004 (contains!9076 (t!342673 rules!3756) rBis!149))))

(assert (= (and d!1226809 res!1696597) b!4145244))

(assert (= (and b!4145244 (not res!1696596)) b!4145245))

(assert (=> d!1226809 m!4741201))

(declare-fun m!4741395 () Bool)

(assert (=> d!1226809 m!4741395))

(declare-fun m!4741397 () Bool)

(assert (=> b!4145245 m!4741397))

(assert (=> b!4144943 d!1226809))

(declare-fun d!1226811 () Bool)

(declare-fun res!1696602 () Bool)

(declare-fun e!2572008 () Bool)

(assert (=> d!1226811 (=> (not res!1696602) (not e!2572008))))

(assert (=> d!1226811 (= res!1696602 (validRegex!5543 (regex!7396 r!4008)))))

(assert (=> d!1226811 (= (ruleValid!3202 thiss!25645 r!4008) e!2572008)))

(declare-fun b!4145250 () Bool)

(declare-fun res!1696603 () Bool)

(assert (=> b!4145250 (=> (not res!1696603) (not e!2572008))))

(assert (=> b!4145250 (= res!1696603 (not (nullable!4333 (regex!7396 r!4008))))))

(declare-fun b!4145251 () Bool)

(assert (=> b!4145251 (= e!2572008 (not (= (tag!8256 r!4008) (String!51881 ""))))))

(assert (= (and d!1226811 res!1696602) b!4145250))

(assert (= (and b!4145250 res!1696603) b!4145251))

(assert (=> d!1226811 m!4741179))

(assert (=> b!4145250 m!4741187))

(assert (=> b!4144936 d!1226811))

(declare-fun d!1226813 () Bool)

(assert (=> d!1226813 (= (inv!59585 (tag!8256 r!4008)) (= (mod (str.len (value!231339 (tag!8256 r!4008))) 2) 0))))

(assert (=> b!4144925 d!1226813))

(declare-fun d!1226815 () Bool)

(declare-fun res!1696604 () Bool)

(declare-fun e!2572009 () Bool)

(assert (=> d!1226815 (=> (not res!1696604) (not e!2572009))))

(assert (=> d!1226815 (= res!1696604 (semiInverseModEq!3197 (toChars!9919 (transformation!7396 r!4008)) (toValue!10060 (transformation!7396 r!4008))))))

(assert (=> d!1226815 (= (inv!59587 (transformation!7396 r!4008)) e!2572009)))

(declare-fun b!4145252 () Bool)

(assert (=> b!4145252 (= e!2572009 (equivClasses!3096 (toChars!9919 (transformation!7396 r!4008)) (toValue!10060 (transformation!7396 r!4008))))))

(assert (= (and d!1226815 res!1696604) b!4145252))

(declare-fun m!4741399 () Bool)

(assert (=> d!1226815 m!4741399))

(declare-fun m!4741401 () Bool)

(assert (=> b!4145252 m!4741401))

(assert (=> b!4144925 d!1226815))

(declare-fun d!1226817 () Bool)

(assert (=> d!1226817 (= (isEmpty!26841 rules!3756) ((_ is Nil!44982) rules!3756))))

(assert (=> b!4144924 d!1226817))

(declare-fun d!1226819 () Bool)

(assert (=> d!1226819 (ruleValid!3202 thiss!25645 r!4008)))

(declare-fun lt!1478498 () Unit!64271)

(declare-fun choose!25372 (LexerInterface!6985 Rule!14592 List!45106) Unit!64271)

(assert (=> d!1226819 (= lt!1478498 (choose!25372 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1226819 (contains!9076 rules!3756 r!4008)))

(assert (=> d!1226819 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2242 thiss!25645 r!4008 rules!3756) lt!1478498)))

(declare-fun bs!595328 () Bool)

(assert (= bs!595328 d!1226819))

(assert (=> bs!595328 m!4741127))

(declare-fun m!4741403 () Bool)

(assert (=> bs!595328 m!4741403))

(assert (=> bs!595328 m!4741109))

(assert (=> b!4144935 d!1226819))

(declare-fun d!1226821 () Bool)

(declare-fun res!1696605 () Bool)

(declare-fun e!2572010 () Bool)

(assert (=> d!1226821 (=> (not res!1696605) (not e!2572010))))

(assert (=> d!1226821 (= res!1696605 (validRegex!5543 (regex!7396 rBis!149)))))

(assert (=> d!1226821 (= (ruleValid!3202 thiss!25645 rBis!149) e!2572010)))

(declare-fun b!4145253 () Bool)

(declare-fun res!1696606 () Bool)

(assert (=> b!4145253 (=> (not res!1696606) (not e!2572010))))

(assert (=> b!4145253 (= res!1696606 (not (nullable!4333 (regex!7396 rBis!149))))))

(declare-fun b!4145254 () Bool)

(assert (=> b!4145254 (= e!2572010 (not (= (tag!8256 rBis!149) (String!51881 ""))))))

(assert (= (and d!1226821 res!1696605) b!4145253))

(assert (= (and b!4145253 res!1696606) b!4145254))

(declare-fun m!4741405 () Bool)

(assert (=> d!1226821 m!4741405))

(declare-fun m!4741407 () Bool)

(assert (=> b!4145253 m!4741407))

(assert (=> b!4144935 d!1226821))

(declare-fun d!1226823 () Bool)

(assert (=> d!1226823 (ruleValid!3202 thiss!25645 rBis!149)))

(declare-fun lt!1478499 () Unit!64271)

(assert (=> d!1226823 (= lt!1478499 (choose!25372 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1226823 (contains!9076 rules!3756 rBis!149)))

(assert (=> d!1226823 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2242 thiss!25645 rBis!149 rules!3756) lt!1478499)))

(declare-fun bs!595329 () Bool)

(assert (= bs!595329 d!1226823))

(assert (=> bs!595329 m!4741059))

(declare-fun m!4741409 () Bool)

(assert (=> bs!595329 m!4741409))

(assert (=> bs!595329 m!4741125))

(assert (=> b!4144935 d!1226823))

(declare-fun d!1226825 () Bool)

(declare-fun lt!1478502 () Int)

(assert (=> d!1226825 (= lt!1478502 (size!33340 (list!16477 (charsOf!4995 (_1!24811 (get!14689 lt!1478387))))))))

(declare-fun size!33342 (Conc!13607) Int)

(assert (=> d!1226825 (= lt!1478502 (size!33342 (c!710288 (charsOf!4995 (_1!24811 (get!14689 lt!1478387))))))))

(assert (=> d!1226825 (= (size!33339 (charsOf!4995 (_1!24811 (get!14689 lt!1478387)))) lt!1478502)))

(declare-fun bs!595330 () Bool)

(assert (= bs!595330 d!1226825))

(assert (=> bs!595330 m!4741095))

(declare-fun m!4741411 () Bool)

(assert (=> bs!595330 m!4741411))

(assert (=> bs!595330 m!4741411))

(declare-fun m!4741413 () Bool)

(assert (=> bs!595330 m!4741413))

(declare-fun m!4741415 () Bool)

(assert (=> bs!595330 m!4741415))

(assert (=> b!4144934 d!1226825))

(declare-fun d!1226827 () Bool)

(declare-fun lt!1478505 () BalanceConc!26808)

(assert (=> d!1226827 (= (list!16477 lt!1478505) (originalCharacters!7892 (_1!24811 (get!14689 lt!1478387))))))

(declare-fun dynLambda!19363 (Int TokenValue!7626) BalanceConc!26808)

(assert (=> d!1226827 (= lt!1478505 (dynLambda!19363 (toChars!9919 (transformation!7396 (rule!10516 (_1!24811 (get!14689 lt!1478387))))) (value!231340 (_1!24811 (get!14689 lt!1478387)))))))

(assert (=> d!1226827 (= (charsOf!4995 (_1!24811 (get!14689 lt!1478387))) lt!1478505)))

(declare-fun b_lambda!121855 () Bool)

(assert (=> (not b_lambda!121855) (not d!1226827)))

(declare-fun tb!248799 () Bool)

(declare-fun t!342688 () Bool)

(assert (=> (and b!4144931 (= (toChars!9919 (transformation!7396 rBis!149)) (toChars!9919 (transformation!7396 (rule!10516 (_1!24811 (get!14689 lt!1478387)))))) t!342688) tb!248799))

(declare-fun b!4145259 () Bool)

(declare-fun e!2572013 () Bool)

(declare-fun tp!1263422 () Bool)

(declare-fun inv!59590 (Conc!13607) Bool)

(assert (=> b!4145259 (= e!2572013 (and (inv!59590 (c!710288 (dynLambda!19363 (toChars!9919 (transformation!7396 (rule!10516 (_1!24811 (get!14689 lt!1478387))))) (value!231340 (_1!24811 (get!14689 lt!1478387)))))) tp!1263422))))

(declare-fun result!302580 () Bool)

(declare-fun inv!59591 (BalanceConc!26808) Bool)

(assert (=> tb!248799 (= result!302580 (and (inv!59591 (dynLambda!19363 (toChars!9919 (transformation!7396 (rule!10516 (_1!24811 (get!14689 lt!1478387))))) (value!231340 (_1!24811 (get!14689 lt!1478387))))) e!2572013))))

(assert (= tb!248799 b!4145259))

(declare-fun m!4741417 () Bool)

(assert (=> b!4145259 m!4741417))

(declare-fun m!4741419 () Bool)

(assert (=> tb!248799 m!4741419))

(assert (=> d!1226827 t!342688))

(declare-fun b_and!322097 () Bool)

(assert (= b_and!322075 (and (=> t!342688 result!302580) b_and!322097)))

(declare-fun tb!248801 () Bool)

(declare-fun t!342690 () Bool)

(assert (=> (and b!4144929 (= (toChars!9919 (transformation!7396 (h!50402 rules!3756))) (toChars!9919 (transformation!7396 (rule!10516 (_1!24811 (get!14689 lt!1478387)))))) t!342690) tb!248801))

(declare-fun result!302584 () Bool)

(assert (= result!302584 result!302580))

(assert (=> d!1226827 t!342690))

(declare-fun b_and!322099 () Bool)

(assert (= b_and!322079 (and (=> t!342690 result!302584) b_and!322099)))

(declare-fun tb!248803 () Bool)

(declare-fun t!342692 () Bool)

(assert (=> (and b!4144930 (= (toChars!9919 (transformation!7396 r!4008)) (toChars!9919 (transformation!7396 (rule!10516 (_1!24811 (get!14689 lt!1478387)))))) t!342692) tb!248803))

(declare-fun result!302586 () Bool)

(assert (= result!302586 result!302580))

(assert (=> d!1226827 t!342692))

(declare-fun b_and!322101 () Bool)

(assert (= b_and!322083 (and (=> t!342692 result!302586) b_and!322101)))

(declare-fun m!4741421 () Bool)

(assert (=> d!1226827 m!4741421))

(declare-fun m!4741423 () Bool)

(assert (=> d!1226827 m!4741423))

(assert (=> b!4144934 d!1226827))

(declare-fun d!1226829 () Bool)

(assert (=> d!1226829 (= (get!14689 lt!1478387) (v!40349 lt!1478387))))

(assert (=> b!4144934 d!1226829))

(declare-fun b!4145311 () Bool)

(declare-fun e!2572042 () Bool)

(assert (=> b!4145311 (= e!2572042 true)))

(declare-fun d!1226831 () Bool)

(assert (=> d!1226831 e!2572042))

(assert (= d!1226831 b!4145311))

(declare-fun order!23827 () Int)

(declare-fun order!23825 () Int)

(declare-fun lambda!128979 () Int)

(declare-fun dynLambda!19364 (Int Int) Int)

(declare-fun dynLambda!19365 (Int Int) Int)

(assert (=> b!4145311 (< (dynLambda!19364 order!23825 (toValue!10060 (transformation!7396 r!4008))) (dynLambda!19365 order!23827 lambda!128979))))

(declare-fun order!23829 () Int)

(declare-fun dynLambda!19366 (Int Int) Int)

(assert (=> b!4145311 (< (dynLambda!19366 order!23829 (toChars!9919 (transformation!7396 r!4008))) (dynLambda!19365 order!23827 lambda!128979))))

(declare-fun dynLambda!19367 (Int BalanceConc!26808) TokenValue!7626)

(assert (=> d!1226831 (= (list!16477 (dynLambda!19363 (toChars!9919 (transformation!7396 r!4008)) (dynLambda!19367 (toValue!10060 (transformation!7396 r!4008)) lt!1478393))) (list!16477 lt!1478393))))

(declare-fun lt!1478513 () Unit!64271)

(declare-fun ForallOf!980 (Int BalanceConc!26808) Unit!64271)

(assert (=> d!1226831 (= lt!1478513 (ForallOf!980 lambda!128979 lt!1478393))))

(assert (=> d!1226831 (= (lemmaSemiInverse!2254 (transformation!7396 r!4008) lt!1478393) lt!1478513)))

(declare-fun b_lambda!121867 () Bool)

(assert (=> (not b_lambda!121867) (not d!1226831)))

(declare-fun t!342706 () Bool)

(declare-fun tb!248817 () Bool)

(assert (=> (and b!4144931 (= (toChars!9919 (transformation!7396 rBis!149)) (toChars!9919 (transformation!7396 r!4008))) t!342706) tb!248817))

(declare-fun b!4145312 () Bool)

(declare-fun e!2572043 () Bool)

(declare-fun tp!1263465 () Bool)

(assert (=> b!4145312 (= e!2572043 (and (inv!59590 (c!710288 (dynLambda!19363 (toChars!9919 (transformation!7396 r!4008)) (dynLambda!19367 (toValue!10060 (transformation!7396 r!4008)) lt!1478393)))) tp!1263465))))

(declare-fun result!302606 () Bool)

(assert (=> tb!248817 (= result!302606 (and (inv!59591 (dynLambda!19363 (toChars!9919 (transformation!7396 r!4008)) (dynLambda!19367 (toValue!10060 (transformation!7396 r!4008)) lt!1478393))) e!2572043))))

(assert (= tb!248817 b!4145312))

(declare-fun m!4741449 () Bool)

(assert (=> b!4145312 m!4741449))

(declare-fun m!4741451 () Bool)

(assert (=> tb!248817 m!4741451))

(assert (=> d!1226831 t!342706))

(declare-fun b_and!322119 () Bool)

(assert (= b_and!322097 (and (=> t!342706 result!302606) b_and!322119)))

(declare-fun t!342708 () Bool)

(declare-fun tb!248819 () Bool)

(assert (=> (and b!4144929 (= (toChars!9919 (transformation!7396 (h!50402 rules!3756))) (toChars!9919 (transformation!7396 r!4008))) t!342708) tb!248819))

(declare-fun result!302608 () Bool)

(assert (= result!302608 result!302606))

(assert (=> d!1226831 t!342708))

(declare-fun b_and!322121 () Bool)

(assert (= b_and!322099 (and (=> t!342708 result!302608) b_and!322121)))

(declare-fun t!342710 () Bool)

(declare-fun tb!248821 () Bool)

(assert (=> (and b!4144930 (= (toChars!9919 (transformation!7396 r!4008)) (toChars!9919 (transformation!7396 r!4008))) t!342710) tb!248821))

(declare-fun result!302610 () Bool)

(assert (= result!302610 result!302606))

(assert (=> d!1226831 t!342710))

(declare-fun b_and!322123 () Bool)

(assert (= b_and!322101 (and (=> t!342710 result!302610) b_and!322123)))

(declare-fun b_lambda!121869 () Bool)

(assert (=> (not b_lambda!121869) (not d!1226831)))

(declare-fun tb!248823 () Bool)

(declare-fun t!342712 () Bool)

(assert (=> (and b!4144931 (= (toValue!10060 (transformation!7396 rBis!149)) (toValue!10060 (transformation!7396 r!4008))) t!342712) tb!248823))

(declare-fun result!302612 () Bool)

(declare-fun inv!21 (TokenValue!7626) Bool)

(assert (=> tb!248823 (= result!302612 (inv!21 (dynLambda!19367 (toValue!10060 (transformation!7396 r!4008)) lt!1478393)))))

(declare-fun m!4741453 () Bool)

(assert (=> tb!248823 m!4741453))

(assert (=> d!1226831 t!342712))

(declare-fun b_and!322125 () Bool)

(assert (= b_and!322073 (and (=> t!342712 result!302612) b_and!322125)))

(declare-fun t!342714 () Bool)

(declare-fun tb!248825 () Bool)

(assert (=> (and b!4144929 (= (toValue!10060 (transformation!7396 (h!50402 rules!3756))) (toValue!10060 (transformation!7396 r!4008))) t!342714) tb!248825))

(declare-fun result!302616 () Bool)

(assert (= result!302616 result!302612))

(assert (=> d!1226831 t!342714))

(declare-fun b_and!322127 () Bool)

(assert (= b_and!322077 (and (=> t!342714 result!302616) b_and!322127)))

(declare-fun t!342716 () Bool)

(declare-fun tb!248827 () Bool)

(assert (=> (and b!4144930 (= (toValue!10060 (transformation!7396 r!4008)) (toValue!10060 (transformation!7396 r!4008))) t!342716) tb!248827))

(declare-fun result!302618 () Bool)

(assert (= result!302618 result!302612))

(assert (=> d!1226831 t!342716))

(declare-fun b_and!322129 () Bool)

(assert (= b_and!322081 (and (=> t!342716 result!302618) b_and!322129)))

(declare-fun m!4741455 () Bool)

(assert (=> d!1226831 m!4741455))

(declare-fun m!4741457 () Bool)

(assert (=> d!1226831 m!4741457))

(declare-fun m!4741459 () Bool)

(assert (=> d!1226831 m!4741459))

(declare-fun m!4741461 () Bool)

(assert (=> d!1226831 m!4741461))

(assert (=> d!1226831 m!4741457))

(assert (=> d!1226831 m!4741459))

(declare-fun m!4741463 () Bool)

(assert (=> d!1226831 m!4741463))

(assert (=> b!4144945 d!1226831))

(declare-fun d!1226839 () Bool)

(declare-fun lt!1478516 () List!45105)

(assert (=> d!1226839 (= (++!11634 p!2912 lt!1478516) input!3238)))

(declare-fun e!2572049 () List!45105)

(assert (=> d!1226839 (= lt!1478516 e!2572049)))

(declare-fun c!710343 () Bool)

(assert (=> d!1226839 (= c!710343 ((_ is Cons!44981) p!2912))))

(assert (=> d!1226839 (>= (size!33340 input!3238) (size!33340 p!2912))))

(assert (=> d!1226839 (= (getSuffix!2658 input!3238 p!2912) lt!1478516)))

(declare-fun b!4145319 () Bool)

(assert (=> b!4145319 (= e!2572049 (getSuffix!2658 (tail!6579 input!3238) (t!342672 p!2912)))))

(declare-fun b!4145320 () Bool)

(assert (=> b!4145320 (= e!2572049 input!3238)))

(assert (= (and d!1226839 c!710343) b!4145319))

(assert (= (and d!1226839 (not c!710343)) b!4145320))

(declare-fun m!4741465 () Bool)

(assert (=> d!1226839 m!4741465))

(assert (=> d!1226839 m!4741207))

(assert (=> d!1226839 m!4741077))

(assert (=> b!4145319 m!4741209))

(assert (=> b!4145319 m!4741209))

(declare-fun m!4741467 () Bool)

(assert (=> b!4145319 m!4741467))

(assert (=> b!4144945 d!1226839))

(declare-fun b!4145339 () Bool)

(declare-fun res!1696624 () Bool)

(declare-fun e!2572057 () Bool)

(assert (=> b!4145339 (=> (not res!1696624) (not e!2572057))))

(declare-fun lt!1478531 () Option!9702)

(assert (=> b!4145339 (= res!1696624 (= (list!16477 (charsOf!4995 (_1!24811 (get!14689 lt!1478531)))) (originalCharacters!7892 (_1!24811 (get!14689 lt!1478531)))))))

(declare-fun b!4145340 () Bool)

(declare-fun res!1696625 () Bool)

(assert (=> b!4145340 (=> (not res!1696625) (not e!2572057))))

(assert (=> b!4145340 (= res!1696625 (= (value!231340 (_1!24811 (get!14689 lt!1478531))) (apply!10469 (transformation!7396 (rule!10516 (_1!24811 (get!14689 lt!1478531)))) (seqFromList!5513 (originalCharacters!7892 (_1!24811 (get!14689 lt!1478531)))))))))

(declare-fun b!4145341 () Bool)

(assert (=> b!4145341 (= e!2572057 (contains!9076 rules!3756 (rule!10516 (_1!24811 (get!14689 lt!1478531)))))))

(declare-fun b!4145342 () Bool)

(declare-fun e!2572058 () Option!9702)

(declare-fun call!290630 () Option!9702)

(assert (=> b!4145342 (= e!2572058 call!290630)))

(declare-fun bm!290625 () Bool)

(assert (=> bm!290625 (= call!290630 (maxPrefixOneRule!3114 thiss!25645 (h!50402 rules!3756) input!3238))))

(declare-fun b!4145344 () Bool)

(declare-fun e!2572056 () Bool)

(assert (=> b!4145344 (= e!2572056 e!2572057)))

(declare-fun res!1696628 () Bool)

(assert (=> b!4145344 (=> (not res!1696628) (not e!2572057))))

(declare-fun isDefined!7288 (Option!9702) Bool)

(assert (=> b!4145344 (= res!1696628 (isDefined!7288 lt!1478531))))

(declare-fun b!4145345 () Bool)

(declare-fun res!1696626 () Bool)

(assert (=> b!4145345 (=> (not res!1696626) (not e!2572057))))

(assert (=> b!4145345 (= res!1696626 (= (++!11634 (list!16477 (charsOf!4995 (_1!24811 (get!14689 lt!1478531)))) (_2!24811 (get!14689 lt!1478531))) input!3238))))

(declare-fun b!4145346 () Bool)

(declare-fun res!1696623 () Bool)

(assert (=> b!4145346 (=> (not res!1696623) (not e!2572057))))

(assert (=> b!4145346 (= res!1696623 (< (size!33340 (_2!24811 (get!14689 lt!1478531))) (size!33340 input!3238)))))

(declare-fun b!4145347 () Bool)

(declare-fun lt!1478529 () Option!9702)

(declare-fun lt!1478527 () Option!9702)

(assert (=> b!4145347 (= e!2572058 (ite (and ((_ is None!9701) lt!1478529) ((_ is None!9701) lt!1478527)) None!9701 (ite ((_ is None!9701) lt!1478527) lt!1478529 (ite ((_ is None!9701) lt!1478529) lt!1478527 (ite (>= (size!33338 (_1!24811 (v!40349 lt!1478529))) (size!33338 (_1!24811 (v!40349 lt!1478527)))) lt!1478529 lt!1478527)))))))

(assert (=> b!4145347 (= lt!1478529 call!290630)))

(assert (=> b!4145347 (= lt!1478527 (maxPrefix!4175 thiss!25645 (t!342673 rules!3756) input!3238))))

(declare-fun b!4145343 () Bool)

(declare-fun res!1696627 () Bool)

(assert (=> b!4145343 (=> (not res!1696627) (not e!2572057))))

(assert (=> b!4145343 (= res!1696627 (matchR!6130 (regex!7396 (rule!10516 (_1!24811 (get!14689 lt!1478531)))) (list!16477 (charsOf!4995 (_1!24811 (get!14689 lt!1478531))))))))

(declare-fun d!1226841 () Bool)

(assert (=> d!1226841 e!2572056))

(declare-fun res!1696629 () Bool)

(assert (=> d!1226841 (=> res!1696629 e!2572056)))

(assert (=> d!1226841 (= res!1696629 (isEmpty!26843 lt!1478531))))

(assert (=> d!1226841 (= lt!1478531 e!2572058)))

(declare-fun c!710346 () Bool)

(assert (=> d!1226841 (= c!710346 (and ((_ is Cons!44982) rules!3756) ((_ is Nil!44982) (t!342673 rules!3756))))))

(declare-fun lt!1478528 () Unit!64271)

(declare-fun lt!1478530 () Unit!64271)

(assert (=> d!1226841 (= lt!1478528 lt!1478530)))

(assert (=> d!1226841 (isPrefix!4331 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2796 (List!45105 List!45105) Unit!64271)

(assert (=> d!1226841 (= lt!1478530 (lemmaIsPrefixRefl!2796 input!3238 input!3238))))

(declare-fun rulesValidInductive!2748 (LexerInterface!6985 List!45106) Bool)

(assert (=> d!1226841 (rulesValidInductive!2748 thiss!25645 rules!3756)))

(assert (=> d!1226841 (= (maxPrefix!4175 thiss!25645 rules!3756 input!3238) lt!1478531)))

(assert (= (and d!1226841 c!710346) b!4145342))

(assert (= (and d!1226841 (not c!710346)) b!4145347))

(assert (= (or b!4145342 b!4145347) bm!290625))

(assert (= (and d!1226841 (not res!1696629)) b!4145344))

(assert (= (and b!4145344 res!1696628) b!4145339))

(assert (= (and b!4145339 res!1696624) b!4145346))

(assert (= (and b!4145346 res!1696623) b!4145345))

(assert (= (and b!4145345 res!1696626) b!4145340))

(assert (= (and b!4145340 res!1696625) b!4145343))

(assert (= (and b!4145343 res!1696627) b!4145341))

(declare-fun m!4741469 () Bool)

(assert (=> b!4145343 m!4741469))

(declare-fun m!4741471 () Bool)

(assert (=> b!4145343 m!4741471))

(assert (=> b!4145343 m!4741471))

(declare-fun m!4741473 () Bool)

(assert (=> b!4145343 m!4741473))

(assert (=> b!4145343 m!4741473))

(declare-fun m!4741475 () Bool)

(assert (=> b!4145343 m!4741475))

(assert (=> b!4145345 m!4741469))

(assert (=> b!4145345 m!4741471))

(assert (=> b!4145345 m!4741471))

(assert (=> b!4145345 m!4741473))

(assert (=> b!4145345 m!4741473))

(declare-fun m!4741477 () Bool)

(assert (=> b!4145345 m!4741477))

(declare-fun m!4741479 () Bool)

(assert (=> d!1226841 m!4741479))

(declare-fun m!4741481 () Bool)

(assert (=> d!1226841 m!4741481))

(declare-fun m!4741483 () Bool)

(assert (=> d!1226841 m!4741483))

(declare-fun m!4741485 () Bool)

(assert (=> d!1226841 m!4741485))

(assert (=> b!4145346 m!4741469))

(declare-fun m!4741487 () Bool)

(assert (=> b!4145346 m!4741487))

(assert (=> b!4145346 m!4741207))

(declare-fun m!4741489 () Bool)

(assert (=> b!4145344 m!4741489))

(assert (=> b!4145341 m!4741469))

(declare-fun m!4741491 () Bool)

(assert (=> b!4145341 m!4741491))

(assert (=> b!4145340 m!4741469))

(declare-fun m!4741493 () Bool)

(assert (=> b!4145340 m!4741493))

(assert (=> b!4145340 m!4741493))

(declare-fun m!4741495 () Bool)

(assert (=> b!4145340 m!4741495))

(assert (=> b!4145339 m!4741469))

(assert (=> b!4145339 m!4741471))

(assert (=> b!4145339 m!4741471))

(assert (=> b!4145339 m!4741473))

(declare-fun m!4741497 () Bool)

(assert (=> bm!290625 m!4741497))

(declare-fun m!4741499 () Bool)

(assert (=> b!4145347 m!4741499))

(assert (=> b!4144945 d!1226841))

(declare-fun d!1226843 () Bool)

(assert (=> d!1226843 (= (apply!10469 (transformation!7396 r!4008) lt!1478393) (dynLambda!19367 (toValue!10060 (transformation!7396 r!4008)) lt!1478393))))

(declare-fun b_lambda!121871 () Bool)

(assert (=> (not b_lambda!121871) (not d!1226843)))

(assert (=> d!1226843 t!342712))

(declare-fun b_and!322131 () Bool)

(assert (= b_and!322125 (and (=> t!342712 result!302612) b_and!322131)))

(assert (=> d!1226843 t!342714))

(declare-fun b_and!322133 () Bool)

(assert (= b_and!322127 (and (=> t!342714 result!302616) b_and!322133)))

(assert (=> d!1226843 t!342716))

(declare-fun b_and!322135 () Bool)

(assert (= b_and!322129 (and (=> t!342716 result!302618) b_and!322135)))

(assert (=> d!1226843 m!4741457))

(assert (=> b!4144945 d!1226843))

(declare-fun d!1226845 () Bool)

(declare-fun fromListB!2529 (List!45105) BalanceConc!26808)

(assert (=> d!1226845 (= (seqFromList!5513 p!2912) (fromListB!2529 p!2912))))

(declare-fun bs!595333 () Bool)

(assert (= bs!595333 d!1226845))

(declare-fun m!4741501 () Bool)

(assert (=> bs!595333 m!4741501))

(assert (=> b!4144945 d!1226845))

(declare-fun d!1226847 () Bool)

(declare-fun lt!1478534 () Int)

(assert (=> d!1226847 (>= lt!1478534 0)))

(declare-fun e!2572061 () Int)

(assert (=> d!1226847 (= lt!1478534 e!2572061)))

(declare-fun c!710349 () Bool)

(assert (=> d!1226847 (= c!710349 ((_ is Nil!44981) p!2912))))

(assert (=> d!1226847 (= (size!33340 p!2912) lt!1478534)))

(declare-fun b!4145352 () Bool)

(assert (=> b!4145352 (= e!2572061 0)))

(declare-fun b!4145353 () Bool)

(assert (=> b!4145353 (= e!2572061 (+ 1 (size!33340 (t!342672 p!2912))))))

(assert (= (and d!1226847 c!710349) b!4145352))

(assert (= (and d!1226847 (not c!710349)) b!4145353))

(declare-fun m!4741503 () Bool)

(assert (=> b!4145353 m!4741503))

(assert (=> b!4144945 d!1226847))

(declare-fun b!4145358 () Bool)

(declare-fun e!2572064 () Bool)

(declare-fun tp!1263468 () Bool)

(assert (=> b!4145358 (= e!2572064 (and tp_is_empty!21525 tp!1263468))))

(assert (=> b!4144933 (= tp!1263416 e!2572064)))

(assert (= (and b!4144933 ((_ is Cons!44981) (t!342672 input!3238))) b!4145358))

(declare-fun b!4145359 () Bool)

(declare-fun e!2572065 () Bool)

(declare-fun tp!1263469 () Bool)

(assert (=> b!4145359 (= e!2572065 (and tp_is_empty!21525 tp!1263469))))

(assert (=> b!4144942 (= tp!1263411 e!2572065)))

(assert (= (and b!4144942 ((_ is Cons!44981) (t!342672 p!2912))) b!4145359))

(declare-fun b!4145370 () Bool)

(declare-fun e!2572068 () Bool)

(assert (=> b!4145370 (= e!2572068 tp_is_empty!21525)))

(declare-fun b!4145372 () Bool)

(declare-fun tp!1263481 () Bool)

(assert (=> b!4145372 (= e!2572068 tp!1263481)))

(assert (=> b!4144937 (= tp!1263408 e!2572068)))

(declare-fun b!4145371 () Bool)

(declare-fun tp!1263482 () Bool)

(declare-fun tp!1263480 () Bool)

(assert (=> b!4145371 (= e!2572068 (and tp!1263482 tp!1263480))))

(declare-fun b!4145373 () Bool)

(declare-fun tp!1263484 () Bool)

(declare-fun tp!1263483 () Bool)

(assert (=> b!4145373 (= e!2572068 (and tp!1263484 tp!1263483))))

(assert (= (and b!4144937 ((_ is ElementMatch!12301) (regex!7396 (h!50402 rules!3756)))) b!4145370))

(assert (= (and b!4144937 ((_ is Concat!19928) (regex!7396 (h!50402 rules!3756)))) b!4145371))

(assert (= (and b!4144937 ((_ is Star!12301) (regex!7396 (h!50402 rules!3756)))) b!4145372))

(assert (= (and b!4144937 ((_ is Union!12301) (regex!7396 (h!50402 rules!3756)))) b!4145373))

(declare-fun b!4145384 () Bool)

(declare-fun b_free!118219 () Bool)

(declare-fun b_next!118923 () Bool)

(assert (=> b!4145384 (= b_free!118219 (not b_next!118923))))

(declare-fun t!342718 () Bool)

(declare-fun tb!248829 () Bool)

(assert (=> (and b!4145384 (= (toValue!10060 (transformation!7396 (h!50402 (t!342673 rules!3756)))) (toValue!10060 (transformation!7396 r!4008))) t!342718) tb!248829))

(declare-fun result!302626 () Bool)

(assert (= result!302626 result!302612))

(assert (=> d!1226831 t!342718))

(assert (=> d!1226843 t!342718))

(declare-fun b_and!322137 () Bool)

(declare-fun tp!1263495 () Bool)

(assert (=> b!4145384 (= tp!1263495 (and (=> t!342718 result!302626) b_and!322137))))

(declare-fun b_free!118221 () Bool)

(declare-fun b_next!118925 () Bool)

(assert (=> b!4145384 (= b_free!118221 (not b_next!118925))))

(declare-fun tb!248831 () Bool)

(declare-fun t!342720 () Bool)

(assert (=> (and b!4145384 (= (toChars!9919 (transformation!7396 (h!50402 (t!342673 rules!3756)))) (toChars!9919 (transformation!7396 (rule!10516 (_1!24811 (get!14689 lt!1478387)))))) t!342720) tb!248831))

(declare-fun result!302628 () Bool)

(assert (= result!302628 result!302580))

(assert (=> d!1226827 t!342720))

(declare-fun tb!248833 () Bool)

(declare-fun t!342722 () Bool)

(assert (=> (and b!4145384 (= (toChars!9919 (transformation!7396 (h!50402 (t!342673 rules!3756)))) (toChars!9919 (transformation!7396 r!4008))) t!342722) tb!248833))

(declare-fun result!302630 () Bool)

(assert (= result!302630 result!302606))

(assert (=> d!1226831 t!342722))

(declare-fun tp!1263493 () Bool)

(declare-fun b_and!322139 () Bool)

(assert (=> b!4145384 (= tp!1263493 (and (=> t!342720 result!302628) (=> t!342722 result!302630) b_and!322139))))

(declare-fun e!2572080 () Bool)

(assert (=> b!4145384 (= e!2572080 (and tp!1263495 tp!1263493))))

(declare-fun e!2572079 () Bool)

(declare-fun tp!1263494 () Bool)

(declare-fun b!4145383 () Bool)

(assert (=> b!4145383 (= e!2572079 (and tp!1263494 (inv!59585 (tag!8256 (h!50402 (t!342673 rules!3756)))) (inv!59587 (transformation!7396 (h!50402 (t!342673 rules!3756)))) e!2572080))))

(declare-fun b!4145382 () Bool)

(declare-fun e!2572077 () Bool)

(declare-fun tp!1263496 () Bool)

(assert (=> b!4145382 (= e!2572077 (and e!2572079 tp!1263496))))

(assert (=> b!4144946 (= tp!1263410 e!2572077)))

(assert (= b!4145383 b!4145384))

(assert (= b!4145382 b!4145383))

(assert (= (and b!4144946 ((_ is Cons!44982) (t!342673 rules!3756))) b!4145382))

(declare-fun m!4741505 () Bool)

(assert (=> b!4145383 m!4741505))

(declare-fun m!4741507 () Bool)

(assert (=> b!4145383 m!4741507))

(declare-fun b!4145385 () Bool)

(declare-fun e!2572081 () Bool)

(assert (=> b!4145385 (= e!2572081 tp_is_empty!21525)))

(declare-fun b!4145387 () Bool)

(declare-fun tp!1263498 () Bool)

(assert (=> b!4145387 (= e!2572081 tp!1263498)))

(assert (=> b!4144941 (= tp!1263406 e!2572081)))

(declare-fun b!4145386 () Bool)

(declare-fun tp!1263499 () Bool)

(declare-fun tp!1263497 () Bool)

(assert (=> b!4145386 (= e!2572081 (and tp!1263499 tp!1263497))))

(declare-fun b!4145388 () Bool)

(declare-fun tp!1263501 () Bool)

(declare-fun tp!1263500 () Bool)

(assert (=> b!4145388 (= e!2572081 (and tp!1263501 tp!1263500))))

(assert (= (and b!4144941 ((_ is ElementMatch!12301) (regex!7396 rBis!149))) b!4145385))

(assert (= (and b!4144941 ((_ is Concat!19928) (regex!7396 rBis!149))) b!4145386))

(assert (= (and b!4144941 ((_ is Star!12301) (regex!7396 rBis!149))) b!4145387))

(assert (= (and b!4144941 ((_ is Union!12301) (regex!7396 rBis!149))) b!4145388))

(declare-fun b!4145389 () Bool)

(declare-fun e!2572082 () Bool)

(assert (=> b!4145389 (= e!2572082 tp_is_empty!21525)))

(declare-fun b!4145391 () Bool)

(declare-fun tp!1263503 () Bool)

(assert (=> b!4145391 (= e!2572082 tp!1263503)))

(assert (=> b!4144925 (= tp!1263412 e!2572082)))

(declare-fun b!4145390 () Bool)

(declare-fun tp!1263504 () Bool)

(declare-fun tp!1263502 () Bool)

(assert (=> b!4145390 (= e!2572082 (and tp!1263504 tp!1263502))))

(declare-fun b!4145392 () Bool)

(declare-fun tp!1263506 () Bool)

(declare-fun tp!1263505 () Bool)

(assert (=> b!4145392 (= e!2572082 (and tp!1263506 tp!1263505))))

(assert (= (and b!4144925 ((_ is ElementMatch!12301) (regex!7396 r!4008))) b!4145389))

(assert (= (and b!4144925 ((_ is Concat!19928) (regex!7396 r!4008))) b!4145390))

(assert (= (and b!4144925 ((_ is Star!12301) (regex!7396 r!4008))) b!4145391))

(assert (= (and b!4144925 ((_ is Union!12301) (regex!7396 r!4008))) b!4145392))

(declare-fun b_lambda!121873 () Bool)

(assert (= b_lambda!121869 (or (and b!4144931 b_free!118203 (= (toValue!10060 (transformation!7396 rBis!149)) (toValue!10060 (transformation!7396 r!4008)))) (and b!4144929 b_free!118207 (= (toValue!10060 (transformation!7396 (h!50402 rules!3756))) (toValue!10060 (transformation!7396 r!4008)))) (and b!4144930 b_free!118211) (and b!4145384 b_free!118219 (= (toValue!10060 (transformation!7396 (h!50402 (t!342673 rules!3756)))) (toValue!10060 (transformation!7396 r!4008)))) b_lambda!121873)))

(declare-fun b_lambda!121875 () Bool)

(assert (= b_lambda!121871 (or (and b!4144931 b_free!118203 (= (toValue!10060 (transformation!7396 rBis!149)) (toValue!10060 (transformation!7396 r!4008)))) (and b!4144929 b_free!118207 (= (toValue!10060 (transformation!7396 (h!50402 rules!3756))) (toValue!10060 (transformation!7396 r!4008)))) (and b!4144930 b_free!118211) (and b!4145384 b_free!118219 (= (toValue!10060 (transformation!7396 (h!50402 (t!342673 rules!3756)))) (toValue!10060 (transformation!7396 r!4008)))) b_lambda!121875)))

(declare-fun b_lambda!121877 () Bool)

(assert (= b_lambda!121867 (or (and b!4144931 b_free!118205 (= (toChars!9919 (transformation!7396 rBis!149)) (toChars!9919 (transformation!7396 r!4008)))) (and b!4144929 b_free!118209 (= (toChars!9919 (transformation!7396 (h!50402 rules!3756))) (toChars!9919 (transformation!7396 r!4008)))) (and b!4144930 b_free!118213) (and b!4145384 b_free!118221 (= (toChars!9919 (transformation!7396 (h!50402 (t!342673 rules!3756)))) (toChars!9919 (transformation!7396 r!4008)))) b_lambda!121877)))

(check-sat (not b_next!118911) (not b!4145341) (not b!4145359) (not b!4145220) (not b!4145346) (not b!4145216) (not d!1226815) b_and!322133 (not b!4145217) (not b!4145382) (not b_next!118917) (not d!1226803) (not b_lambda!121873) (not b!4145224) (not d!1226825) (not tb!248799) (not b!4145054) (not b!4145358) (not b!4145339) (not bm!290625) (not d!1226751) (not b!4145103) (not b!4145221) (not b!4145345) (not b!4145222) (not b!4145079) (not d!1226761) (not b!4145106) (not d!1226757) (not b_lambda!121875) (not b!4145371) (not b!4145046) (not b!4145218) (not b!4145259) b_and!322121 (not d!1226827) (not b!4145245) (not b!4145243) (not d!1226807) (not b!4145387) (not b!4145344) (not b_next!118909) (not b!4145239) (not b!4145252) (not b!4145319) (not b!4145373) (not d!1226765) (not b!4145343) tp_is_empty!21525 (not b_next!118915) (not d!1226831) (not d!1226845) (not b!4145089) (not b!4145101) (not bm!290619) (not d!1226801) (not b!4145372) (not b_lambda!121877) (not b!4145045) b_and!322131 (not d!1226805) (not d!1226811) (not b_next!118913) (not b_next!118925) (not b!4145250) (not b!4145097) b_and!322119 (not b!4145392) (not b!4145057) (not d!1226821) (not d!1226823) (not b_lambda!121855) (not b!4145052) (not b!4145353) (not tb!248817) (not b!4145050) (not b_next!118923) b_and!322139 (not d!1226841) (not b!4145091) b_and!322135 (not b!4145312) (not d!1226809) (not d!1226819) b_and!322123 (not b!4145096) (not b!4145347) (not b_next!118907) (not b!4145235) b_and!322137 (not b!4145340) (not b!4145253) (not b!4145223) (not b!4145383) (not b!4145388) (not b!4145391) (not d!1226731) (not b!4145390) (not b!4145100) (not b!4145386) (not b!4145090) (not tb!248823) (not d!1226839) (not d!1226713) (not d!1226755))
(check-sat b_and!322133 (not b_next!118917) (not b_next!118911) b_and!322121 (not b_next!118909) (not b_next!118915) b_and!322131 b_and!322119 b_and!322135 (not b_next!118913) (not b_next!118925) (not b_next!118923) b_and!322139 b_and!322137 b_and!322123 (not b_next!118907))
