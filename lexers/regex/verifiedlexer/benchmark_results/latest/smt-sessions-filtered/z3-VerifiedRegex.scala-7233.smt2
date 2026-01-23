; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!385124 () Bool)

(assert start!385124)

(declare-fun b!4077785 () Bool)

(declare-fun b_free!113721 () Bool)

(declare-fun b_next!114425 () Bool)

(assert (=> b!4077785 (= b_free!113721 (not b_next!114425))))

(declare-fun tp!1234463 () Bool)

(declare-fun b_and!313571 () Bool)

(assert (=> b!4077785 (= tp!1234463 b_and!313571)))

(declare-fun b_free!113723 () Bool)

(declare-fun b_next!114427 () Bool)

(assert (=> b!4077785 (= b_free!113723 (not b_next!114427))))

(declare-fun tp!1234461 () Bool)

(declare-fun b_and!313573 () Bool)

(assert (=> b!4077785 (= tp!1234461 b_and!313573)))

(declare-fun b!4077782 () Bool)

(declare-fun b_free!113725 () Bool)

(declare-fun b_next!114429 () Bool)

(assert (=> b!4077782 (= b_free!113725 (not b_next!114429))))

(declare-fun tp!1234464 () Bool)

(declare-fun b_and!313575 () Bool)

(assert (=> b!4077782 (= tp!1234464 b_and!313575)))

(declare-fun b_free!113727 () Bool)

(declare-fun b_next!114431 () Bool)

(assert (=> b!4077782 (= b_free!113727 (not b_next!114431))))

(declare-fun tp!1234460 () Bool)

(declare-fun b_and!313577 () Bool)

(assert (=> b!4077782 (= tp!1234460 b_and!313577)))

(declare-fun b!4077772 () Bool)

(declare-fun res!1665681 () Bool)

(declare-fun e!2530964 () Bool)

(assert (=> b!4077772 (=> (not res!1665681) (not e!2530964))))

(declare-datatypes ((C!24072 0))(
  ( (C!24073 (val!14146 Int)) )
))
(declare-datatypes ((List!43783 0))(
  ( (Nil!43659) (Cons!43659 (h!49079 C!24072) (t!337470 List!43783)) )
))
(declare-fun suffix!1518 () List!43783)

(declare-fun p!2988 () List!43783)

(declare-fun input!3411 () List!43783)

(declare-fun ++!11444 (List!43783 List!43783) List!43783)

(assert (=> b!4077772 (= res!1665681 (= input!3411 (++!11444 p!2988 suffix!1518)))))

(declare-fun b!4077773 () Bool)

(declare-fun e!2530953 () Bool)

(declare-fun e!2530955 () Bool)

(declare-fun tp!1234458 () Bool)

(assert (=> b!4077773 (= e!2530953 (and e!2530955 tp!1234458))))

(declare-datatypes ((List!43784 0))(
  ( (Nil!43660) (Cons!43660 (h!49080 (_ BitVec 16)) (t!337471 List!43784)) )
))
(declare-datatypes ((TokenValue!7268 0))(
  ( (FloatLiteralValue!14536 (text!51321 List!43784)) (TokenValueExt!7267 (__x!26753 Int)) (Broken!36340 (value!221209 List!43784)) (Object!7391) (End!7268) (Def!7268) (Underscore!7268) (Match!7268) (Else!7268) (Error!7268) (Case!7268) (If!7268) (Extends!7268) (Abstract!7268) (Class!7268) (Val!7268) (DelimiterValue!14536 (del!7328 List!43784)) (KeywordValue!7274 (value!221210 List!43784)) (CommentValue!14536 (value!221211 List!43784)) (WhitespaceValue!14536 (value!221212 List!43784)) (IndentationValue!7268 (value!221213 List!43784)) (String!50089) (Int32!7268) (Broken!36341 (value!221214 List!43784)) (Boolean!7269) (Unit!63198) (OperatorValue!7271 (op!7328 List!43784)) (IdentifierValue!14536 (value!221215 List!43784)) (IdentifierValue!14537 (value!221216 List!43784)) (WhitespaceValue!14537 (value!221217 List!43784)) (True!14536) (False!14536) (Broken!36342 (value!221218 List!43784)) (Broken!36343 (value!221219 List!43784)) (True!14537) (RightBrace!7268) (RightBracket!7268) (Colon!7268) (Null!7268) (Comma!7268) (LeftBracket!7268) (False!14537) (LeftBrace!7268) (ImaginaryLiteralValue!7268 (text!51322 List!43784)) (StringLiteralValue!21804 (value!221220 List!43784)) (EOFValue!7268 (value!221221 List!43784)) (IdentValue!7268 (value!221222 List!43784)) (DelimiterValue!14537 (value!221223 List!43784)) (DedentValue!7268 (value!221224 List!43784)) (NewLineValue!7268 (value!221225 List!43784)) (IntegerValue!21804 (value!221226 (_ BitVec 32)) (text!51323 List!43784)) (IntegerValue!21805 (value!221227 Int) (text!51324 List!43784)) (Times!7268) (Or!7268) (Equal!7268) (Minus!7268) (Broken!36344 (value!221228 List!43784)) (And!7268) (Div!7268) (LessEqual!7268) (Mod!7268) (Concat!19211) (Not!7268) (Plus!7268) (SpaceValue!7268 (value!221229 List!43784)) (IntegerValue!21806 (value!221230 Int) (text!51325 List!43784)) (StringLiteralValue!21805 (text!51326 List!43784)) (FloatLiteralValue!14537 (text!51327 List!43784)) (BytesLiteralValue!7268 (value!221231 List!43784)) (CommentValue!14537 (value!221232 List!43784)) (StringLiteralValue!21806 (value!221233 List!43784)) (ErrorTokenValue!7268 (msg!7329 List!43784)) )
))
(declare-datatypes ((String!50090 0))(
  ( (String!50091 (value!221234 String)) )
))
(declare-datatypes ((Regex!11943 0))(
  ( (ElementMatch!11943 (c!703368 C!24072)) (Concat!19212 (regOne!24398 Regex!11943) (regTwo!24398 Regex!11943)) (EmptyExpr!11943) (Star!11943 (reg!12272 Regex!11943)) (EmptyLang!11943) (Union!11943 (regOne!24399 Regex!11943) (regTwo!24399 Regex!11943)) )
))
(declare-datatypes ((IArray!26503 0))(
  ( (IArray!26504 (innerList!13309 List!43783)) )
))
(declare-datatypes ((Conc!13249 0))(
  ( (Node!13249 (left!32814 Conc!13249) (right!33144 Conc!13249) (csize!26728 Int) (cheight!13460 Int)) (Leaf!20483 (xs!16555 IArray!26503) (csize!26729 Int)) (Empty!13249) )
))
(declare-datatypes ((BalanceConc!26092 0))(
  ( (BalanceConc!26093 (c!703369 Conc!13249)) )
))
(declare-datatypes ((TokenValueInjection!13964 0))(
  ( (TokenValueInjection!13965 (toValue!9606 Int) (toChars!9465 Int)) )
))
(declare-datatypes ((Rule!13876 0))(
  ( (Rule!13877 (regex!7038 Regex!11943) (tag!7898 String!50090) (isSeparator!7038 Bool) (transformation!7038 TokenValueInjection!13964)) )
))
(declare-datatypes ((List!43785 0))(
  ( (Nil!43661) (Cons!43661 (h!49081 Rule!13876) (t!337472 List!43785)) )
))
(declare-fun rules!3870 () List!43785)

(declare-fun e!2530959 () Bool)

(declare-fun tp!1234459 () Bool)

(declare-fun b!4077774 () Bool)

(declare-fun inv!58313 (String!50090) Bool)

(declare-fun inv!58315 (TokenValueInjection!13964) Bool)

(assert (=> b!4077774 (= e!2530955 (and tp!1234459 (inv!58313 (tag!7898 (h!49081 rules!3870))) (inv!58315 (transformation!7038 (h!49081 rules!3870))) e!2530959))))

(declare-fun res!1665676 () Bool)

(assert (=> start!385124 (=> (not res!1665676) (not e!2530964))))

(declare-datatypes ((LexerInterface!6627 0))(
  ( (LexerInterfaceExt!6624 (__x!26754 Int)) (Lexer!6625) )
))
(declare-fun thiss!26199 () LexerInterface!6627)

(get-info :version)

(assert (=> start!385124 (= res!1665676 ((_ is Lexer!6625) thiss!26199))))

(assert (=> start!385124 e!2530964))

(assert (=> start!385124 true))

(declare-fun e!2530966 () Bool)

(assert (=> start!385124 e!2530966))

(assert (=> start!385124 e!2530953))

(declare-fun e!2530962 () Bool)

(assert (=> start!385124 e!2530962))

(declare-fun e!2530963 () Bool)

(assert (=> start!385124 e!2530963))

(declare-fun e!2530954 () Bool)

(assert (=> start!385124 e!2530954))

(declare-fun b!4077775 () Bool)

(declare-fun res!1665680 () Bool)

(assert (=> b!4077775 (=> (not res!1665680) (not e!2530964))))

(declare-fun rulesInvariant!5970 (LexerInterface!6627 List!43785) Bool)

(assert (=> b!4077775 (= res!1665680 (rulesInvariant!5970 thiss!26199 rules!3870))))

(declare-fun b!4077776 () Bool)

(declare-fun res!1665678 () Bool)

(assert (=> b!4077776 (=> (not res!1665678) (not e!2530964))))

(declare-fun isEmpty!26079 (List!43785) Bool)

(assert (=> b!4077776 (= res!1665678 (not (isEmpty!26079 rules!3870)))))

(declare-fun b!4077777 () Bool)

(declare-fun res!1665675 () Bool)

(declare-fun e!2530957 () Bool)

(assert (=> b!4077777 (=> res!1665675 e!2530957)))

(declare-fun r!4213 () Rule!13876)

(assert (=> b!4077777 (= res!1665675 (or (and ((_ is Cons!43661) rules!3870) (= (h!49081 rules!3870) r!4213)) (not ((_ is Cons!43661) rules!3870)) (= (h!49081 rules!3870) r!4213)))))

(declare-fun b!4077778 () Bool)

(declare-fun tp_is_empty!20889 () Bool)

(declare-fun tp!1234465 () Bool)

(assert (=> b!4077778 (= e!2530962 (and tp_is_empty!20889 tp!1234465))))

(declare-fun b!4077779 () Bool)

(declare-fun e!2530952 () Bool)

(assert (=> b!4077779 (= e!2530964 e!2530952)))

(declare-fun res!1665672 () Bool)

(assert (=> b!4077779 (=> (not res!1665672) (not e!2530952))))

(declare-fun lt!1459084 () BalanceConc!26092)

(declare-datatypes ((Token!13202 0))(
  ( (Token!13203 (value!221235 TokenValue!7268) (rule!10148 Rule!13876) (size!32613 Int) (originalCharacters!7632 List!43783)) )
))
(declare-datatypes ((tuple2!42630 0))(
  ( (tuple2!42631 (_1!24449 Token!13202) (_2!24449 List!43783)) )
))
(declare-datatypes ((Option!9446 0))(
  ( (None!9445) (Some!9445 (v!39895 tuple2!42630)) )
))
(declare-fun maxPrefix!3919 (LexerInterface!6627 List!43785 List!43783) Option!9446)

(declare-fun apply!10221 (TokenValueInjection!13964 BalanceConc!26092) TokenValue!7268)

(declare-fun size!32614 (List!43783) Int)

(assert (=> b!4077779 (= res!1665672 (= (maxPrefix!3919 thiss!26199 rules!3870 input!3411) (Some!9445 (tuple2!42631 (Token!13203 (apply!10221 (transformation!7038 r!4213) lt!1459084) r!4213 (size!32614 p!2988) p!2988) suffix!1518))))))

(declare-datatypes ((Unit!63199 0))(
  ( (Unit!63200) )
))
(declare-fun lt!1459081 () Unit!63199)

(declare-fun lemmaSemiInverse!2005 (TokenValueInjection!13964 BalanceConc!26092) Unit!63199)

(assert (=> b!4077779 (= lt!1459081 (lemmaSemiInverse!2005 (transformation!7038 r!4213) lt!1459084))))

(declare-fun seqFromList!5255 (List!43783) BalanceConc!26092)

(assert (=> b!4077779 (= lt!1459084 (seqFromList!5255 p!2988))))

(declare-fun b!4077780 () Bool)

(declare-fun e!2530956 () Bool)

(declare-fun e!2530960 () Bool)

(assert (=> b!4077780 (= e!2530956 e!2530960)))

(declare-fun res!1665674 () Bool)

(assert (=> b!4077780 (=> res!1665674 e!2530960)))

(declare-fun lt!1459082 () tuple2!42630)

(assert (=> b!4077780 (= res!1665674 (or (not (= (rule!10148 (_1!24449 lt!1459082)) (h!49081 rules!3870))) (= (rule!10148 (_1!24449 lt!1459082)) r!4213)))))

(declare-fun lt!1459085 () Option!9446)

(declare-fun get!14315 (Option!9446) tuple2!42630)

(assert (=> b!4077780 (= lt!1459082 (get!14315 lt!1459085))))

(declare-fun b!4077781 () Bool)

(assert (=> b!4077781 (= e!2530952 (not e!2530957))))

(declare-fun res!1665679 () Bool)

(assert (=> b!4077781 (=> res!1665679 e!2530957)))

(declare-fun matchR!5888 (Regex!11943 List!43783) Bool)

(assert (=> b!4077781 (= res!1665679 (not (matchR!5888 (regex!7038 r!4213) p!2988)))))

(declare-fun ruleValid!2962 (LexerInterface!6627 Rule!13876) Bool)

(assert (=> b!4077781 (ruleValid!2962 thiss!26199 r!4213)))

(declare-fun lt!1459080 () Unit!63199)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2030 (LexerInterface!6627 Rule!13876 List!43785) Unit!63199)

(assert (=> b!4077781 (= lt!1459080 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2030 thiss!26199 r!4213 rules!3870))))

(assert (=> b!4077782 (= e!2530959 (and tp!1234464 tp!1234460))))

(declare-fun b!4077783 () Bool)

(declare-fun tp!1234462 () Bool)

(assert (=> b!4077783 (= e!2530966 (and tp_is_empty!20889 tp!1234462))))

(declare-fun b!4077784 () Bool)

(declare-fun res!1665673 () Bool)

(assert (=> b!4077784 (=> (not res!1665673) (not e!2530964))))

(declare-fun contains!8707 (List!43785 Rule!13876) Bool)

(assert (=> b!4077784 (= res!1665673 (contains!8707 rules!3870 r!4213))))

(declare-fun e!2530965 () Bool)

(assert (=> b!4077785 (= e!2530965 (and tp!1234463 tp!1234461))))

(declare-fun tp!1234457 () Bool)

(declare-fun b!4077786 () Bool)

(assert (=> b!4077786 (= e!2530954 (and tp!1234457 (inv!58313 (tag!7898 r!4213)) (inv!58315 (transformation!7038 r!4213)) e!2530965))))

(declare-fun b!4077787 () Bool)

(declare-fun isDefined!7156 (Option!9446) Bool)

(assert (=> b!4077787 (= e!2530960 (isDefined!7156 lt!1459085))))

(declare-fun b!4077788 () Bool)

(declare-fun tp!1234466 () Bool)

(assert (=> b!4077788 (= e!2530963 (and tp_is_empty!20889 tp!1234466))))

(declare-fun b!4077789 () Bool)

(assert (=> b!4077789 (= e!2530957 e!2530956)))

(declare-fun res!1665677 () Bool)

(assert (=> b!4077789 (=> res!1665677 e!2530956)))

(declare-fun isEmpty!26080 (Option!9446) Bool)

(assert (=> b!4077789 (= res!1665677 (isEmpty!26080 lt!1459085))))

(declare-fun maxPrefixOneRule!2913 (LexerInterface!6627 Rule!13876 List!43783) Option!9446)

(assert (=> b!4077789 (= lt!1459085 (maxPrefixOneRule!2913 thiss!26199 (h!49081 rules!3870) input!3411))))

(assert (=> b!4077789 (rulesInvariant!5970 thiss!26199 (t!337472 rules!3870))))

(declare-fun lt!1459083 () Unit!63199)

(declare-fun lemmaInvariantOnRulesThenOnTail!756 (LexerInterface!6627 Rule!13876 List!43785) Unit!63199)

(assert (=> b!4077789 (= lt!1459083 (lemmaInvariantOnRulesThenOnTail!756 thiss!26199 (h!49081 rules!3870) (t!337472 rules!3870)))))

(declare-fun b!4077790 () Bool)

(declare-fun res!1665671 () Bool)

(assert (=> b!4077790 (=> (not res!1665671) (not e!2530964))))

(declare-fun isEmpty!26081 (List!43783) Bool)

(assert (=> b!4077790 (= res!1665671 (not (isEmpty!26081 p!2988)))))

(assert (= (and start!385124 res!1665676) b!4077776))

(assert (= (and b!4077776 res!1665678) b!4077775))

(assert (= (and b!4077775 res!1665680) b!4077784))

(assert (= (and b!4077784 res!1665673) b!4077772))

(assert (= (and b!4077772 res!1665681) b!4077790))

(assert (= (and b!4077790 res!1665671) b!4077779))

(assert (= (and b!4077779 res!1665672) b!4077781))

(assert (= (and b!4077781 (not res!1665679)) b!4077777))

(assert (= (and b!4077777 (not res!1665675)) b!4077789))

(assert (= (and b!4077789 (not res!1665677)) b!4077780))

(assert (= (and b!4077780 (not res!1665674)) b!4077787))

(assert (= (and start!385124 ((_ is Cons!43659) suffix!1518)) b!4077783))

(assert (= b!4077774 b!4077782))

(assert (= b!4077773 b!4077774))

(assert (= (and start!385124 ((_ is Cons!43661) rules!3870)) b!4077773))

(assert (= (and start!385124 ((_ is Cons!43659) p!2988)) b!4077778))

(assert (= (and start!385124 ((_ is Cons!43659) input!3411)) b!4077788))

(assert (= b!4077786 b!4077785))

(assert (= start!385124 b!4077786))

(declare-fun m!4685831 () Bool)

(assert (=> b!4077775 m!4685831))

(declare-fun m!4685833 () Bool)

(assert (=> b!4077780 m!4685833))

(declare-fun m!4685835 () Bool)

(assert (=> b!4077787 m!4685835))

(declare-fun m!4685837 () Bool)

(assert (=> b!4077786 m!4685837))

(declare-fun m!4685839 () Bool)

(assert (=> b!4077786 m!4685839))

(declare-fun m!4685841 () Bool)

(assert (=> b!4077790 m!4685841))

(declare-fun m!4685843 () Bool)

(assert (=> b!4077781 m!4685843))

(declare-fun m!4685845 () Bool)

(assert (=> b!4077781 m!4685845))

(declare-fun m!4685847 () Bool)

(assert (=> b!4077781 m!4685847))

(declare-fun m!4685849 () Bool)

(assert (=> b!4077789 m!4685849))

(declare-fun m!4685851 () Bool)

(assert (=> b!4077789 m!4685851))

(declare-fun m!4685853 () Bool)

(assert (=> b!4077789 m!4685853))

(declare-fun m!4685855 () Bool)

(assert (=> b!4077789 m!4685855))

(declare-fun m!4685857 () Bool)

(assert (=> b!4077776 m!4685857))

(declare-fun m!4685859 () Bool)

(assert (=> b!4077779 m!4685859))

(declare-fun m!4685861 () Bool)

(assert (=> b!4077779 m!4685861))

(declare-fun m!4685863 () Bool)

(assert (=> b!4077779 m!4685863))

(declare-fun m!4685865 () Bool)

(assert (=> b!4077779 m!4685865))

(declare-fun m!4685867 () Bool)

(assert (=> b!4077779 m!4685867))

(declare-fun m!4685869 () Bool)

(assert (=> b!4077784 m!4685869))

(declare-fun m!4685871 () Bool)

(assert (=> b!4077774 m!4685871))

(declare-fun m!4685873 () Bool)

(assert (=> b!4077774 m!4685873))

(declare-fun m!4685875 () Bool)

(assert (=> b!4077772 m!4685875))

(check-sat (not b!4077773) (not b_next!114429) (not b!4077779) b_and!313571 (not b_next!114431) (not b!4077788) (not b!4077774) (not b!4077783) (not b!4077781) (not b!4077786) (not b!4077772) (not b!4077789) b_and!313577 (not b_next!114427) (not b!4077790) (not b_next!114425) b_and!313573 (not b!4077778) (not b!4077775) (not b!4077780) b_and!313575 (not b!4077787) tp_is_empty!20889 (not b!4077784) (not b!4077776))
(check-sat (not b_next!114425) b_and!313573 (not b_next!114429) b_and!313571 b_and!313575 (not b_next!114431) b_and!313577 (not b_next!114427))
(get-model)

(declare-fun b!4077884 () Bool)

(declare-fun e!2531014 () Bool)

(assert (=> b!4077884 (= e!2531014 true)))

(declare-fun d!1211410 () Bool)

(assert (=> d!1211410 e!2531014))

(assert (= d!1211410 b!4077884))

(declare-fun order!22825 () Int)

(declare-fun lambda!127720 () Int)

(declare-fun order!22823 () Int)

(declare-fun dynLambda!18561 (Int Int) Int)

(declare-fun dynLambda!18562 (Int Int) Int)

(assert (=> b!4077884 (< (dynLambda!18561 order!22823 (toValue!9606 (transformation!7038 r!4213))) (dynLambda!18562 order!22825 lambda!127720))))

(declare-fun order!22827 () Int)

(declare-fun dynLambda!18563 (Int Int) Int)

(assert (=> b!4077884 (< (dynLambda!18563 order!22827 (toChars!9465 (transformation!7038 r!4213))) (dynLambda!18562 order!22825 lambda!127720))))

(declare-fun list!16236 (BalanceConc!26092) List!43783)

(declare-fun dynLambda!18564 (Int TokenValue!7268) BalanceConc!26092)

(declare-fun dynLambda!18565 (Int BalanceConc!26092) TokenValue!7268)

(assert (=> d!1211410 (= (list!16236 (dynLambda!18564 (toChars!9465 (transformation!7038 r!4213)) (dynLambda!18565 (toValue!9606 (transformation!7038 r!4213)) lt!1459084))) (list!16236 lt!1459084))))

(declare-fun lt!1459114 () Unit!63199)

(declare-fun ForallOf!850 (Int BalanceConc!26092) Unit!63199)

(assert (=> d!1211410 (= lt!1459114 (ForallOf!850 lambda!127720 lt!1459084))))

(assert (=> d!1211410 (= (lemmaSemiInverse!2005 (transformation!7038 r!4213) lt!1459084) lt!1459114)))

(declare-fun b_lambda!119169 () Bool)

(assert (=> (not b_lambda!119169) (not d!1211410)))

(declare-fun t!337478 () Bool)

(declare-fun tb!244917 () Bool)

(assert (=> (and b!4077785 (= (toChars!9465 (transformation!7038 r!4213)) (toChars!9465 (transformation!7038 r!4213))) t!337478) tb!244917))

(declare-fun e!2531017 () Bool)

(declare-fun tp!1234469 () Bool)

(declare-fun b!4077889 () Bool)

(declare-fun inv!58316 (Conc!13249) Bool)

(assert (=> b!4077889 (= e!2531017 (and (inv!58316 (c!703369 (dynLambda!18564 (toChars!9465 (transformation!7038 r!4213)) (dynLambda!18565 (toValue!9606 (transformation!7038 r!4213)) lt!1459084)))) tp!1234469))))

(declare-fun result!297008 () Bool)

(declare-fun inv!58317 (BalanceConc!26092) Bool)

(assert (=> tb!244917 (= result!297008 (and (inv!58317 (dynLambda!18564 (toChars!9465 (transformation!7038 r!4213)) (dynLambda!18565 (toValue!9606 (transformation!7038 r!4213)) lt!1459084))) e!2531017))))

(assert (= tb!244917 b!4077889))

(declare-fun m!4685941 () Bool)

(assert (=> b!4077889 m!4685941))

(declare-fun m!4685943 () Bool)

(assert (=> tb!244917 m!4685943))

(assert (=> d!1211410 t!337478))

(declare-fun b_and!313583 () Bool)

(assert (= b_and!313573 (and (=> t!337478 result!297008) b_and!313583)))

(declare-fun tb!244919 () Bool)

(declare-fun t!337480 () Bool)

(assert (=> (and b!4077782 (= (toChars!9465 (transformation!7038 (h!49081 rules!3870))) (toChars!9465 (transformation!7038 r!4213))) t!337480) tb!244919))

(declare-fun result!297012 () Bool)

(assert (= result!297012 result!297008))

(assert (=> d!1211410 t!337480))

(declare-fun b_and!313585 () Bool)

(assert (= b_and!313577 (and (=> t!337480 result!297012) b_and!313585)))

(declare-fun b_lambda!119171 () Bool)

(assert (=> (not b_lambda!119171) (not d!1211410)))

(declare-fun t!337482 () Bool)

(declare-fun tb!244921 () Bool)

(assert (=> (and b!4077785 (= (toValue!9606 (transformation!7038 r!4213)) (toValue!9606 (transformation!7038 r!4213))) t!337482) tb!244921))

(declare-fun result!297014 () Bool)

(declare-fun inv!21 (TokenValue!7268) Bool)

(assert (=> tb!244921 (= result!297014 (inv!21 (dynLambda!18565 (toValue!9606 (transformation!7038 r!4213)) lt!1459084)))))

(declare-fun m!4685945 () Bool)

(assert (=> tb!244921 m!4685945))

(assert (=> d!1211410 t!337482))

(declare-fun b_and!313587 () Bool)

(assert (= b_and!313571 (and (=> t!337482 result!297014) b_and!313587)))

(declare-fun tb!244923 () Bool)

(declare-fun t!337484 () Bool)

(assert (=> (and b!4077782 (= (toValue!9606 (transformation!7038 (h!49081 rules!3870))) (toValue!9606 (transformation!7038 r!4213))) t!337484) tb!244923))

(declare-fun result!297018 () Bool)

(assert (= result!297018 result!297014))

(assert (=> d!1211410 t!337484))

(declare-fun b_and!313589 () Bool)

(assert (= b_and!313575 (and (=> t!337484 result!297018) b_and!313589)))

(declare-fun m!4685947 () Bool)

(assert (=> d!1211410 m!4685947))

(declare-fun m!4685949 () Bool)

(assert (=> d!1211410 m!4685949))

(declare-fun m!4685951 () Bool)

(assert (=> d!1211410 m!4685951))

(declare-fun m!4685953 () Bool)

(assert (=> d!1211410 m!4685953))

(assert (=> d!1211410 m!4685949))

(declare-fun m!4685955 () Bool)

(assert (=> d!1211410 m!4685955))

(assert (=> d!1211410 m!4685947))

(assert (=> b!4077779 d!1211410))

(declare-fun b!4077926 () Bool)

(declare-fun e!2531041 () Option!9446)

(declare-fun call!288533 () Option!9446)

(assert (=> b!4077926 (= e!2531041 call!288533)))

(declare-fun b!4077927 () Bool)

(declare-fun res!1665766 () Bool)

(declare-fun e!2531039 () Bool)

(assert (=> b!4077927 (=> (not res!1665766) (not e!2531039))))

(declare-fun lt!1459131 () Option!9446)

(assert (=> b!4077927 (= res!1665766 (< (size!32614 (_2!24449 (get!14315 lt!1459131))) (size!32614 input!3411)))))

(declare-fun b!4077928 () Bool)

(declare-fun lt!1459132 () Option!9446)

(declare-fun lt!1459129 () Option!9446)

(assert (=> b!4077928 (= e!2531041 (ite (and ((_ is None!9445) lt!1459132) ((_ is None!9445) lt!1459129)) None!9445 (ite ((_ is None!9445) lt!1459129) lt!1459132 (ite ((_ is None!9445) lt!1459132) lt!1459129 (ite (>= (size!32613 (_1!24449 (v!39895 lt!1459132))) (size!32613 (_1!24449 (v!39895 lt!1459129)))) lt!1459132 lt!1459129)))))))

(assert (=> b!4077928 (= lt!1459132 call!288533)))

(assert (=> b!4077928 (= lt!1459129 (maxPrefix!3919 thiss!26199 (t!337472 rules!3870) input!3411))))

(declare-fun b!4077929 () Bool)

(declare-fun res!1665767 () Bool)

(assert (=> b!4077929 (=> (not res!1665767) (not e!2531039))))

(declare-fun charsOf!4820 (Token!13202) BalanceConc!26092)

(assert (=> b!4077929 (= res!1665767 (matchR!5888 (regex!7038 (rule!10148 (_1!24449 (get!14315 lt!1459131)))) (list!16236 (charsOf!4820 (_1!24449 (get!14315 lt!1459131))))))))

(declare-fun b!4077930 () Bool)

(declare-fun e!2531040 () Bool)

(assert (=> b!4077930 (= e!2531040 e!2531039)))

(declare-fun res!1665772 () Bool)

(assert (=> b!4077930 (=> (not res!1665772) (not e!2531039))))

(assert (=> b!4077930 (= res!1665772 (isDefined!7156 lt!1459131))))

(declare-fun bm!288528 () Bool)

(assert (=> bm!288528 (= call!288533 (maxPrefixOneRule!2913 thiss!26199 (h!49081 rules!3870) input!3411))))

(declare-fun d!1211438 () Bool)

(assert (=> d!1211438 e!2531040))

(declare-fun res!1665770 () Bool)

(assert (=> d!1211438 (=> res!1665770 e!2531040)))

(assert (=> d!1211438 (= res!1665770 (isEmpty!26080 lt!1459131))))

(assert (=> d!1211438 (= lt!1459131 e!2531041)))

(declare-fun c!703389 () Bool)

(assert (=> d!1211438 (= c!703389 (and ((_ is Cons!43661) rules!3870) ((_ is Nil!43661) (t!337472 rules!3870))))))

(declare-fun lt!1459130 () Unit!63199)

(declare-fun lt!1459133 () Unit!63199)

(assert (=> d!1211438 (= lt!1459130 lt!1459133)))

(declare-fun isPrefix!4107 (List!43783 List!43783) Bool)

(assert (=> d!1211438 (isPrefix!4107 input!3411 input!3411)))

(declare-fun lemmaIsPrefixRefl!2658 (List!43783 List!43783) Unit!63199)

(assert (=> d!1211438 (= lt!1459133 (lemmaIsPrefixRefl!2658 input!3411 input!3411))))

(declare-fun rulesValidInductive!2587 (LexerInterface!6627 List!43785) Bool)

(assert (=> d!1211438 (rulesValidInductive!2587 thiss!26199 rules!3870)))

(assert (=> d!1211438 (= (maxPrefix!3919 thiss!26199 rules!3870 input!3411) lt!1459131)))

(declare-fun b!4077931 () Bool)

(declare-fun res!1665769 () Bool)

(assert (=> b!4077931 (=> (not res!1665769) (not e!2531039))))

(assert (=> b!4077931 (= res!1665769 (= (value!221235 (_1!24449 (get!14315 lt!1459131))) (apply!10221 (transformation!7038 (rule!10148 (_1!24449 (get!14315 lt!1459131)))) (seqFromList!5255 (originalCharacters!7632 (_1!24449 (get!14315 lt!1459131)))))))))

(declare-fun b!4077932 () Bool)

(declare-fun res!1665768 () Bool)

(assert (=> b!4077932 (=> (not res!1665768) (not e!2531039))))

(assert (=> b!4077932 (= res!1665768 (= (list!16236 (charsOf!4820 (_1!24449 (get!14315 lt!1459131)))) (originalCharacters!7632 (_1!24449 (get!14315 lt!1459131)))))))

(declare-fun b!4077933 () Bool)

(declare-fun res!1665771 () Bool)

(assert (=> b!4077933 (=> (not res!1665771) (not e!2531039))))

(assert (=> b!4077933 (= res!1665771 (= (++!11444 (list!16236 (charsOf!4820 (_1!24449 (get!14315 lt!1459131)))) (_2!24449 (get!14315 lt!1459131))) input!3411))))

(declare-fun b!4077934 () Bool)

(assert (=> b!4077934 (= e!2531039 (contains!8707 rules!3870 (rule!10148 (_1!24449 (get!14315 lt!1459131)))))))

(assert (= (and d!1211438 c!703389) b!4077926))

(assert (= (and d!1211438 (not c!703389)) b!4077928))

(assert (= (or b!4077926 b!4077928) bm!288528))

(assert (= (and d!1211438 (not res!1665770)) b!4077930))

(assert (= (and b!4077930 res!1665772) b!4077932))

(assert (= (and b!4077932 res!1665768) b!4077927))

(assert (= (and b!4077927 res!1665766) b!4077933))

(assert (= (and b!4077933 res!1665771) b!4077931))

(assert (= (and b!4077931 res!1665769) b!4077929))

(assert (= (and b!4077929 res!1665767) b!4077934))

(declare-fun m!4685975 () Bool)

(assert (=> b!4077933 m!4685975))

(declare-fun m!4685977 () Bool)

(assert (=> b!4077933 m!4685977))

(assert (=> b!4077933 m!4685977))

(declare-fun m!4685979 () Bool)

(assert (=> b!4077933 m!4685979))

(assert (=> b!4077933 m!4685979))

(declare-fun m!4685981 () Bool)

(assert (=> b!4077933 m!4685981))

(assert (=> b!4077934 m!4685975))

(declare-fun m!4685983 () Bool)

(assert (=> b!4077934 m!4685983))

(assert (=> b!4077929 m!4685975))

(assert (=> b!4077929 m!4685977))

(assert (=> b!4077929 m!4685977))

(assert (=> b!4077929 m!4685979))

(assert (=> b!4077929 m!4685979))

(declare-fun m!4685985 () Bool)

(assert (=> b!4077929 m!4685985))

(declare-fun m!4685987 () Bool)

(assert (=> b!4077930 m!4685987))

(assert (=> bm!288528 m!4685851))

(declare-fun m!4685989 () Bool)

(assert (=> b!4077928 m!4685989))

(assert (=> b!4077931 m!4685975))

(declare-fun m!4685991 () Bool)

(assert (=> b!4077931 m!4685991))

(assert (=> b!4077931 m!4685991))

(declare-fun m!4685993 () Bool)

(assert (=> b!4077931 m!4685993))

(assert (=> b!4077932 m!4685975))

(assert (=> b!4077932 m!4685977))

(assert (=> b!4077932 m!4685977))

(assert (=> b!4077932 m!4685979))

(assert (=> b!4077927 m!4685975))

(declare-fun m!4685995 () Bool)

(assert (=> b!4077927 m!4685995))

(declare-fun m!4685997 () Bool)

(assert (=> b!4077927 m!4685997))

(declare-fun m!4685999 () Bool)

(assert (=> d!1211438 m!4685999))

(declare-fun m!4686001 () Bool)

(assert (=> d!1211438 m!4686001))

(declare-fun m!4686003 () Bool)

(assert (=> d!1211438 m!4686003))

(declare-fun m!4686005 () Bool)

(assert (=> d!1211438 m!4686005))

(assert (=> b!4077779 d!1211438))

(declare-fun d!1211450 () Bool)

(declare-fun lt!1459136 () Int)

(assert (=> d!1211450 (>= lt!1459136 0)))

(declare-fun e!2531044 () Int)

(assert (=> d!1211450 (= lt!1459136 e!2531044)))

(declare-fun c!703392 () Bool)

(assert (=> d!1211450 (= c!703392 ((_ is Nil!43659) p!2988))))

(assert (=> d!1211450 (= (size!32614 p!2988) lt!1459136)))

(declare-fun b!4077939 () Bool)

(assert (=> b!4077939 (= e!2531044 0)))

(declare-fun b!4077940 () Bool)

(assert (=> b!4077940 (= e!2531044 (+ 1 (size!32614 (t!337470 p!2988))))))

(assert (= (and d!1211450 c!703392) b!4077939))

(assert (= (and d!1211450 (not c!703392)) b!4077940))

(declare-fun m!4686007 () Bool)

(assert (=> b!4077940 m!4686007))

(assert (=> b!4077779 d!1211450))

(declare-fun d!1211452 () Bool)

(declare-fun fromListB!2398 (List!43783) BalanceConc!26092)

(assert (=> d!1211452 (= (seqFromList!5255 p!2988) (fromListB!2398 p!2988))))

(declare-fun bs!592790 () Bool)

(assert (= bs!592790 d!1211452))

(declare-fun m!4686009 () Bool)

(assert (=> bs!592790 m!4686009))

(assert (=> b!4077779 d!1211452))

(declare-fun d!1211454 () Bool)

(assert (=> d!1211454 (= (apply!10221 (transformation!7038 r!4213) lt!1459084) (dynLambda!18565 (toValue!9606 (transformation!7038 r!4213)) lt!1459084))))

(declare-fun b_lambda!119177 () Bool)

(assert (=> (not b_lambda!119177) (not d!1211454)))

(assert (=> d!1211454 t!337482))

(declare-fun b_and!313599 () Bool)

(assert (= b_and!313587 (and (=> t!337482 result!297014) b_and!313599)))

(assert (=> d!1211454 t!337484))

(declare-fun b_and!313601 () Bool)

(assert (= b_and!313589 (and (=> t!337484 result!297018) b_and!313601)))

(assert (=> d!1211454 m!4685947))

(assert (=> b!4077779 d!1211454))

(declare-fun d!1211456 () Bool)

(assert (=> d!1211456 (= (isEmpty!26081 p!2988) ((_ is Nil!43659) p!2988))))

(assert (=> b!4077790 d!1211456))

(declare-fun d!1211458 () Bool)

(assert (=> d!1211458 (= (isEmpty!26080 lt!1459085) (not ((_ is Some!9445) lt!1459085)))))

(assert (=> b!4077789 d!1211458))

(declare-fun b!4078016 () Bool)

(declare-fun res!1665818 () Bool)

(declare-fun e!2531079 () Bool)

(assert (=> b!4078016 (=> (not res!1665818) (not e!2531079))))

(declare-fun lt!1459171 () Option!9446)

(assert (=> b!4078016 (= res!1665818 (= (value!221235 (_1!24449 (get!14315 lt!1459171))) (apply!10221 (transformation!7038 (rule!10148 (_1!24449 (get!14315 lt!1459171)))) (seqFromList!5255 (originalCharacters!7632 (_1!24449 (get!14315 lt!1459171)))))))))

(declare-fun b!4078017 () Bool)

(declare-fun e!2531082 () Bool)

(declare-datatypes ((tuple2!42634 0))(
  ( (tuple2!42635 (_1!24451 List!43783) (_2!24451 List!43783)) )
))
(declare-fun findLongestMatchInner!1431 (Regex!11943 List!43783 Int List!43783 List!43783 Int) tuple2!42634)

(assert (=> b!4078017 (= e!2531082 (matchR!5888 (regex!7038 (h!49081 rules!3870)) (_1!24451 (findLongestMatchInner!1431 (regex!7038 (h!49081 rules!3870)) Nil!43659 (size!32614 Nil!43659) input!3411 input!3411 (size!32614 input!3411)))))))

(declare-fun b!4078018 () Bool)

(declare-fun e!2531081 () Option!9446)

(assert (=> b!4078018 (= e!2531081 None!9445)))

(declare-fun b!4078019 () Bool)

(declare-fun res!1665820 () Bool)

(assert (=> b!4078019 (=> (not res!1665820) (not e!2531079))))

(assert (=> b!4078019 (= res!1665820 (= (rule!10148 (_1!24449 (get!14315 lt!1459171))) (h!49081 rules!3870)))))

(declare-fun b!4078020 () Bool)

(declare-fun res!1665819 () Bool)

(assert (=> b!4078020 (=> (not res!1665819) (not e!2531079))))

(assert (=> b!4078020 (= res!1665819 (< (size!32614 (_2!24449 (get!14315 lt!1459171))) (size!32614 input!3411)))))

(declare-fun b!4078021 () Bool)

(declare-fun lt!1459168 () tuple2!42634)

(declare-fun size!32616 (BalanceConc!26092) Int)

(assert (=> b!4078021 (= e!2531081 (Some!9445 (tuple2!42631 (Token!13203 (apply!10221 (transformation!7038 (h!49081 rules!3870)) (seqFromList!5255 (_1!24451 lt!1459168))) (h!49081 rules!3870) (size!32616 (seqFromList!5255 (_1!24451 lt!1459168))) (_1!24451 lt!1459168)) (_2!24451 lt!1459168))))))

(declare-fun lt!1459170 () Unit!63199)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1404 (Regex!11943 List!43783) Unit!63199)

(assert (=> b!4078021 (= lt!1459170 (longestMatchIsAcceptedByMatchOrIsEmpty!1404 (regex!7038 (h!49081 rules!3870)) input!3411))))

(declare-fun res!1665821 () Bool)

(assert (=> b!4078021 (= res!1665821 (isEmpty!26081 (_1!24451 (findLongestMatchInner!1431 (regex!7038 (h!49081 rules!3870)) Nil!43659 (size!32614 Nil!43659) input!3411 input!3411 (size!32614 input!3411)))))))

(assert (=> b!4078021 (=> res!1665821 e!2531082)))

(assert (=> b!4078021 e!2531082))

(declare-fun lt!1459172 () Unit!63199)

(assert (=> b!4078021 (= lt!1459172 lt!1459170)))

(declare-fun lt!1459169 () Unit!63199)

(assert (=> b!4078021 (= lt!1459169 (lemmaSemiInverse!2005 (transformation!7038 (h!49081 rules!3870)) (seqFromList!5255 (_1!24451 lt!1459168))))))

(declare-fun b!4078022 () Bool)

(declare-fun res!1665816 () Bool)

(assert (=> b!4078022 (=> (not res!1665816) (not e!2531079))))

(assert (=> b!4078022 (= res!1665816 (= (++!11444 (list!16236 (charsOf!4820 (_1!24449 (get!14315 lt!1459171)))) (_2!24449 (get!14315 lt!1459171))) input!3411))))

(declare-fun b!4078023 () Bool)

(declare-fun e!2531080 () Bool)

(assert (=> b!4078023 (= e!2531080 e!2531079)))

(declare-fun res!1665822 () Bool)

(assert (=> b!4078023 (=> (not res!1665822) (not e!2531079))))

(assert (=> b!4078023 (= res!1665822 (matchR!5888 (regex!7038 (h!49081 rules!3870)) (list!16236 (charsOf!4820 (_1!24449 (get!14315 lt!1459171))))))))

(declare-fun d!1211460 () Bool)

(assert (=> d!1211460 e!2531080))

(declare-fun res!1665817 () Bool)

(assert (=> d!1211460 (=> res!1665817 e!2531080)))

(assert (=> d!1211460 (= res!1665817 (isEmpty!26080 lt!1459171))))

(assert (=> d!1211460 (= lt!1459171 e!2531081)))

(declare-fun c!703401 () Bool)

(assert (=> d!1211460 (= c!703401 (isEmpty!26081 (_1!24451 lt!1459168)))))

(declare-fun findLongestMatch!1344 (Regex!11943 List!43783) tuple2!42634)

(assert (=> d!1211460 (= lt!1459168 (findLongestMatch!1344 (regex!7038 (h!49081 rules!3870)) input!3411))))

(assert (=> d!1211460 (ruleValid!2962 thiss!26199 (h!49081 rules!3870))))

(assert (=> d!1211460 (= (maxPrefixOneRule!2913 thiss!26199 (h!49081 rules!3870) input!3411) lt!1459171)))

(declare-fun b!4078024 () Bool)

(assert (=> b!4078024 (= e!2531079 (= (size!32613 (_1!24449 (get!14315 lt!1459171))) (size!32614 (originalCharacters!7632 (_1!24449 (get!14315 lt!1459171))))))))

(assert (= (and d!1211460 c!703401) b!4078018))

(assert (= (and d!1211460 (not c!703401)) b!4078021))

(assert (= (and b!4078021 (not res!1665821)) b!4078017))

(assert (= (and d!1211460 (not res!1665817)) b!4078023))

(assert (= (and b!4078023 res!1665822) b!4078022))

(assert (= (and b!4078022 res!1665816) b!4078020))

(assert (= (and b!4078020 res!1665819) b!4078019))

(assert (= (and b!4078019 res!1665820) b!4078016))

(assert (= (and b!4078016 res!1665818) b!4078024))

(declare-fun m!4686079 () Bool)

(assert (=> d!1211460 m!4686079))

(declare-fun m!4686081 () Bool)

(assert (=> d!1211460 m!4686081))

(declare-fun m!4686083 () Bool)

(assert (=> d!1211460 m!4686083))

(declare-fun m!4686085 () Bool)

(assert (=> d!1211460 m!4686085))

(declare-fun m!4686087 () Bool)

(assert (=> b!4078016 m!4686087))

(declare-fun m!4686089 () Bool)

(assert (=> b!4078016 m!4686089))

(assert (=> b!4078016 m!4686089))

(declare-fun m!4686091 () Bool)

(assert (=> b!4078016 m!4686091))

(declare-fun m!4686093 () Bool)

(assert (=> b!4078021 m!4686093))

(declare-fun m!4686095 () Bool)

(assert (=> b!4078021 m!4686095))

(declare-fun m!4686097 () Bool)

(assert (=> b!4078021 m!4686097))

(declare-fun m!4686099 () Bool)

(assert (=> b!4078021 m!4686099))

(assert (=> b!4078021 m!4685997))

(assert (=> b!4078021 m!4686093))

(declare-fun m!4686101 () Bool)

(assert (=> b!4078021 m!4686101))

(assert (=> b!4078021 m!4686097))

(assert (=> b!4078021 m!4685997))

(declare-fun m!4686103 () Bool)

(assert (=> b!4078021 m!4686103))

(declare-fun m!4686105 () Bool)

(assert (=> b!4078021 m!4686105))

(assert (=> b!4078021 m!4686093))

(assert (=> b!4078021 m!4686093))

(declare-fun m!4686107 () Bool)

(assert (=> b!4078021 m!4686107))

(assert (=> b!4078022 m!4686087))

(declare-fun m!4686109 () Bool)

(assert (=> b!4078022 m!4686109))

(assert (=> b!4078022 m!4686109))

(declare-fun m!4686111 () Bool)

(assert (=> b!4078022 m!4686111))

(assert (=> b!4078022 m!4686111))

(declare-fun m!4686113 () Bool)

(assert (=> b!4078022 m!4686113))

(assert (=> b!4078023 m!4686087))

(assert (=> b!4078023 m!4686109))

(assert (=> b!4078023 m!4686109))

(assert (=> b!4078023 m!4686111))

(assert (=> b!4078023 m!4686111))

(declare-fun m!4686115 () Bool)

(assert (=> b!4078023 m!4686115))

(assert (=> b!4078019 m!4686087))

(assert (=> b!4078020 m!4686087))

(declare-fun m!4686121 () Bool)

(assert (=> b!4078020 m!4686121))

(assert (=> b!4078020 m!4685997))

(assert (=> b!4078024 m!4686087))

(declare-fun m!4686123 () Bool)

(assert (=> b!4078024 m!4686123))

(assert (=> b!4078017 m!4686097))

(assert (=> b!4078017 m!4685997))

(assert (=> b!4078017 m!4686097))

(assert (=> b!4078017 m!4685997))

(assert (=> b!4078017 m!4686103))

(declare-fun m!4686125 () Bool)

(assert (=> b!4078017 m!4686125))

(assert (=> b!4077789 d!1211460))

(declare-fun d!1211472 () Bool)

(declare-fun res!1665825 () Bool)

(declare-fun e!2531100 () Bool)

(assert (=> d!1211472 (=> (not res!1665825) (not e!2531100))))

(declare-fun rulesValid!2746 (LexerInterface!6627 List!43785) Bool)

(assert (=> d!1211472 (= res!1665825 (rulesValid!2746 thiss!26199 (t!337472 rules!3870)))))

(assert (=> d!1211472 (= (rulesInvariant!5970 thiss!26199 (t!337472 rules!3870)) e!2531100)))

(declare-fun b!4078047 () Bool)

(declare-datatypes ((List!43787 0))(
  ( (Nil!43663) (Cons!43663 (h!49083 String!50090) (t!337498 List!43787)) )
))
(declare-fun noDuplicateTag!2747 (LexerInterface!6627 List!43785 List!43787) Bool)

(assert (=> b!4078047 (= e!2531100 (noDuplicateTag!2747 thiss!26199 (t!337472 rules!3870) Nil!43663))))

(assert (= (and d!1211472 res!1665825) b!4078047))

(declare-fun m!4686127 () Bool)

(assert (=> d!1211472 m!4686127))

(declare-fun m!4686129 () Bool)

(assert (=> b!4078047 m!4686129))

(assert (=> b!4077789 d!1211472))

(declare-fun d!1211474 () Bool)

(assert (=> d!1211474 (rulesInvariant!5970 thiss!26199 (t!337472 rules!3870))))

(declare-fun lt!1459175 () Unit!63199)

(declare-fun choose!24895 (LexerInterface!6627 Rule!13876 List!43785) Unit!63199)

(assert (=> d!1211474 (= lt!1459175 (choose!24895 thiss!26199 (h!49081 rules!3870) (t!337472 rules!3870)))))

(assert (=> d!1211474 (rulesInvariant!5970 thiss!26199 (Cons!43661 (h!49081 rules!3870) (t!337472 rules!3870)))))

(assert (=> d!1211474 (= (lemmaInvariantOnRulesThenOnTail!756 thiss!26199 (h!49081 rules!3870) (t!337472 rules!3870)) lt!1459175)))

(declare-fun bs!592792 () Bool)

(assert (= bs!592792 d!1211474))

(assert (=> bs!592792 m!4685853))

(declare-fun m!4686131 () Bool)

(assert (=> bs!592792 m!4686131))

(declare-fun m!4686133 () Bool)

(assert (=> bs!592792 m!4686133))

(assert (=> b!4077789 d!1211474))

(declare-fun d!1211476 () Bool)

(assert (=> d!1211476 (= (isEmpty!26079 rules!3870) ((_ is Nil!43661) rules!3870))))

(assert (=> b!4077776 d!1211476))

(declare-fun d!1211478 () Bool)

(assert (=> d!1211478 (= (isDefined!7156 lt!1459085) (not (isEmpty!26080 lt!1459085)))))

(declare-fun bs!592793 () Bool)

(assert (= bs!592793 d!1211478))

(assert (=> bs!592793 m!4685849))

(assert (=> b!4077787 d!1211478))

(declare-fun d!1211480 () Bool)

(declare-fun res!1665826 () Bool)

(declare-fun e!2531101 () Bool)

(assert (=> d!1211480 (=> (not res!1665826) (not e!2531101))))

(assert (=> d!1211480 (= res!1665826 (rulesValid!2746 thiss!26199 rules!3870))))

(assert (=> d!1211480 (= (rulesInvariant!5970 thiss!26199 rules!3870) e!2531101)))

(declare-fun b!4078048 () Bool)

(assert (=> b!4078048 (= e!2531101 (noDuplicateTag!2747 thiss!26199 rules!3870 Nil!43663))))

(assert (= (and d!1211480 res!1665826) b!4078048))

(declare-fun m!4686135 () Bool)

(assert (=> d!1211480 m!4686135))

(declare-fun m!4686137 () Bool)

(assert (=> b!4078048 m!4686137))

(assert (=> b!4077775 d!1211480))

(declare-fun d!1211482 () Bool)

(assert (=> d!1211482 (= (inv!58313 (tag!7898 r!4213)) (= (mod (str.len (value!221234 (tag!7898 r!4213))) 2) 0))))

(assert (=> b!4077786 d!1211482))

(declare-fun d!1211484 () Bool)

(declare-fun res!1665829 () Bool)

(declare-fun e!2531104 () Bool)

(assert (=> d!1211484 (=> (not res!1665829) (not e!2531104))))

(declare-fun semiInverseModEq!3012 (Int Int) Bool)

(assert (=> d!1211484 (= res!1665829 (semiInverseModEq!3012 (toChars!9465 (transformation!7038 r!4213)) (toValue!9606 (transformation!7038 r!4213))))))

(assert (=> d!1211484 (= (inv!58315 (transformation!7038 r!4213)) e!2531104)))

(declare-fun b!4078051 () Bool)

(declare-fun equivClasses!2911 (Int Int) Bool)

(assert (=> b!4078051 (= e!2531104 (equivClasses!2911 (toChars!9465 (transformation!7038 r!4213)) (toValue!9606 (transformation!7038 r!4213))))))

(assert (= (and d!1211484 res!1665829) b!4078051))

(declare-fun m!4686139 () Bool)

(assert (=> d!1211484 m!4686139))

(declare-fun m!4686141 () Bool)

(assert (=> b!4078051 m!4686141))

(assert (=> b!4077786 d!1211484))

(declare-fun d!1211486 () Bool)

(declare-fun lt!1459178 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6686 (List!43785) (InoxSet Rule!13876))

(assert (=> d!1211486 (= lt!1459178 (select (content!6686 rules!3870) r!4213))))

(declare-fun e!2531109 () Bool)

(assert (=> d!1211486 (= lt!1459178 e!2531109)))

(declare-fun res!1665835 () Bool)

(assert (=> d!1211486 (=> (not res!1665835) (not e!2531109))))

(assert (=> d!1211486 (= res!1665835 ((_ is Cons!43661) rules!3870))))

(assert (=> d!1211486 (= (contains!8707 rules!3870 r!4213) lt!1459178)))

(declare-fun b!4078056 () Bool)

(declare-fun e!2531110 () Bool)

(assert (=> b!4078056 (= e!2531109 e!2531110)))

(declare-fun res!1665834 () Bool)

(assert (=> b!4078056 (=> res!1665834 e!2531110)))

(assert (=> b!4078056 (= res!1665834 (= (h!49081 rules!3870) r!4213))))

(declare-fun b!4078057 () Bool)

(assert (=> b!4078057 (= e!2531110 (contains!8707 (t!337472 rules!3870) r!4213))))

(assert (= (and d!1211486 res!1665835) b!4078056))

(assert (= (and b!4078056 (not res!1665834)) b!4078057))

(declare-fun m!4686143 () Bool)

(assert (=> d!1211486 m!4686143))

(declare-fun m!4686145 () Bool)

(assert (=> d!1211486 m!4686145))

(declare-fun m!4686147 () Bool)

(assert (=> b!4078057 m!4686147))

(assert (=> b!4077784 d!1211486))

(declare-fun d!1211488 () Bool)

(assert (=> d!1211488 (= (inv!58313 (tag!7898 (h!49081 rules!3870))) (= (mod (str.len (value!221234 (tag!7898 (h!49081 rules!3870)))) 2) 0))))

(assert (=> b!4077774 d!1211488))

(declare-fun d!1211490 () Bool)

(declare-fun res!1665836 () Bool)

(declare-fun e!2531111 () Bool)

(assert (=> d!1211490 (=> (not res!1665836) (not e!2531111))))

(assert (=> d!1211490 (= res!1665836 (semiInverseModEq!3012 (toChars!9465 (transformation!7038 (h!49081 rules!3870))) (toValue!9606 (transformation!7038 (h!49081 rules!3870)))))))

(assert (=> d!1211490 (= (inv!58315 (transformation!7038 (h!49081 rules!3870))) e!2531111)))

(declare-fun b!4078058 () Bool)

(assert (=> b!4078058 (= e!2531111 (equivClasses!2911 (toChars!9465 (transformation!7038 (h!49081 rules!3870))) (toValue!9606 (transformation!7038 (h!49081 rules!3870)))))))

(assert (= (and d!1211490 res!1665836) b!4078058))

(declare-fun m!4686149 () Bool)

(assert (=> d!1211490 m!4686149))

(declare-fun m!4686151 () Bool)

(assert (=> b!4078058 m!4686151))

(assert (=> b!4077774 d!1211490))

(declare-fun b!4078068 () Bool)

(declare-fun e!2531117 () List!43783)

(assert (=> b!4078068 (= e!2531117 (Cons!43659 (h!49079 p!2988) (++!11444 (t!337470 p!2988) suffix!1518)))))

(declare-fun b!4078067 () Bool)

(assert (=> b!4078067 (= e!2531117 suffix!1518)))

(declare-fun lt!1459181 () List!43783)

(declare-fun b!4078070 () Bool)

(declare-fun e!2531116 () Bool)

(assert (=> b!4078070 (= e!2531116 (or (not (= suffix!1518 Nil!43659)) (= lt!1459181 p!2988)))))

(declare-fun b!4078069 () Bool)

(declare-fun res!1665842 () Bool)

(assert (=> b!4078069 (=> (not res!1665842) (not e!2531116))))

(assert (=> b!4078069 (= res!1665842 (= (size!32614 lt!1459181) (+ (size!32614 p!2988) (size!32614 suffix!1518))))))

(declare-fun d!1211492 () Bool)

(assert (=> d!1211492 e!2531116))

(declare-fun res!1665841 () Bool)

(assert (=> d!1211492 (=> (not res!1665841) (not e!2531116))))

(declare-fun content!6687 (List!43783) (InoxSet C!24072))

(assert (=> d!1211492 (= res!1665841 (= (content!6687 lt!1459181) ((_ map or) (content!6687 p!2988) (content!6687 suffix!1518))))))

(assert (=> d!1211492 (= lt!1459181 e!2531117)))

(declare-fun c!703404 () Bool)

(assert (=> d!1211492 (= c!703404 ((_ is Nil!43659) p!2988))))

(assert (=> d!1211492 (= (++!11444 p!2988 suffix!1518) lt!1459181)))

(assert (= (and d!1211492 c!703404) b!4078067))

(assert (= (and d!1211492 (not c!703404)) b!4078068))

(assert (= (and d!1211492 res!1665841) b!4078069))

(assert (= (and b!4078069 res!1665842) b!4078070))

(declare-fun m!4686153 () Bool)

(assert (=> b!4078068 m!4686153))

(declare-fun m!4686155 () Bool)

(assert (=> b!4078069 m!4686155))

(assert (=> b!4078069 m!4685867))

(declare-fun m!4686157 () Bool)

(assert (=> b!4078069 m!4686157))

(declare-fun m!4686159 () Bool)

(assert (=> d!1211492 m!4686159))

(declare-fun m!4686161 () Bool)

(assert (=> d!1211492 m!4686161))

(declare-fun m!4686163 () Bool)

(assert (=> d!1211492 m!4686163))

(assert (=> b!4077772 d!1211492))

(declare-fun d!1211494 () Bool)

(assert (=> d!1211494 (= (get!14315 lt!1459085) (v!39895 lt!1459085))))

(assert (=> b!4077780 d!1211494))

(declare-fun b!4078099 () Bool)

(declare-fun e!2531136 () Bool)

(declare-fun derivativeStep!3605 (Regex!11943 C!24072) Regex!11943)

(declare-fun head!8615 (List!43783) C!24072)

(declare-fun tail!6349 (List!43783) List!43783)

(assert (=> b!4078099 (= e!2531136 (matchR!5888 (derivativeStep!3605 (regex!7038 r!4213) (head!8615 p!2988)) (tail!6349 p!2988)))))

(declare-fun b!4078100 () Bool)

(declare-fun res!1665864 () Bool)

(declare-fun e!2531132 () Bool)

(assert (=> b!4078100 (=> res!1665864 e!2531132)))

(assert (=> b!4078100 (= res!1665864 (not ((_ is ElementMatch!11943) (regex!7038 r!4213))))))

(declare-fun e!2531138 () Bool)

(assert (=> b!4078100 (= e!2531138 e!2531132)))

(declare-fun b!4078101 () Bool)

(declare-fun e!2531134 () Bool)

(assert (=> b!4078101 (= e!2531134 (= (head!8615 p!2988) (c!703368 (regex!7038 r!4213))))))

(declare-fun bm!288531 () Bool)

(declare-fun call!288536 () Bool)

(assert (=> bm!288531 (= call!288536 (isEmpty!26081 p!2988))))

(declare-fun b!4078102 () Bool)

(declare-fun e!2531133 () Bool)

(assert (=> b!4078102 (= e!2531133 e!2531138)))

(declare-fun c!703412 () Bool)

(assert (=> b!4078102 (= c!703412 ((_ is EmptyLang!11943) (regex!7038 r!4213)))))

(declare-fun b!4078103 () Bool)

(declare-fun res!1665866 () Bool)

(declare-fun e!2531137 () Bool)

(assert (=> b!4078103 (=> res!1665866 e!2531137)))

(assert (=> b!4078103 (= res!1665866 (not (isEmpty!26081 (tail!6349 p!2988))))))

(declare-fun b!4078104 () Bool)

(declare-fun e!2531135 () Bool)

(assert (=> b!4078104 (= e!2531135 e!2531137)))

(declare-fun res!1665860 () Bool)

(assert (=> b!4078104 (=> res!1665860 e!2531137)))

(assert (=> b!4078104 (= res!1665860 call!288536)))

(declare-fun b!4078105 () Bool)

(declare-fun lt!1459184 () Bool)

(assert (=> b!4078105 (= e!2531138 (not lt!1459184))))

(declare-fun b!4078106 () Bool)

(declare-fun res!1665859 () Bool)

(assert (=> b!4078106 (=> res!1665859 e!2531132)))

(assert (=> b!4078106 (= res!1665859 e!2531134)))

(declare-fun res!1665863 () Bool)

(assert (=> b!4078106 (=> (not res!1665863) (not e!2531134))))

(assert (=> b!4078106 (= res!1665863 lt!1459184)))

(declare-fun b!4078107 () Bool)

(assert (=> b!4078107 (= e!2531137 (not (= (head!8615 p!2988) (c!703368 (regex!7038 r!4213)))))))

(declare-fun b!4078108 () Bool)

(declare-fun res!1665861 () Bool)

(assert (=> b!4078108 (=> (not res!1665861) (not e!2531134))))

(assert (=> b!4078108 (= res!1665861 (not call!288536))))

(declare-fun b!4078109 () Bool)

(assert (=> b!4078109 (= e!2531132 e!2531135)))

(declare-fun res!1665862 () Bool)

(assert (=> b!4078109 (=> (not res!1665862) (not e!2531135))))

(assert (=> b!4078109 (= res!1665862 (not lt!1459184))))

(declare-fun b!4078110 () Bool)

(declare-fun nullable!4204 (Regex!11943) Bool)

(assert (=> b!4078110 (= e!2531136 (nullable!4204 (regex!7038 r!4213)))))

(declare-fun d!1211496 () Bool)

(assert (=> d!1211496 e!2531133))

(declare-fun c!703411 () Bool)

(assert (=> d!1211496 (= c!703411 ((_ is EmptyExpr!11943) (regex!7038 r!4213)))))

(assert (=> d!1211496 (= lt!1459184 e!2531136)))

(declare-fun c!703413 () Bool)

(assert (=> d!1211496 (= c!703413 (isEmpty!26081 p!2988))))

(declare-fun validRegex!5404 (Regex!11943) Bool)

(assert (=> d!1211496 (validRegex!5404 (regex!7038 r!4213))))

(assert (=> d!1211496 (= (matchR!5888 (regex!7038 r!4213) p!2988) lt!1459184)))

(declare-fun b!4078111 () Bool)

(assert (=> b!4078111 (= e!2531133 (= lt!1459184 call!288536))))

(declare-fun b!4078112 () Bool)

(declare-fun res!1665865 () Bool)

(assert (=> b!4078112 (=> (not res!1665865) (not e!2531134))))

(assert (=> b!4078112 (= res!1665865 (isEmpty!26081 (tail!6349 p!2988)))))

(assert (= (and d!1211496 c!703413) b!4078110))

(assert (= (and d!1211496 (not c!703413)) b!4078099))

(assert (= (and d!1211496 c!703411) b!4078111))

(assert (= (and d!1211496 (not c!703411)) b!4078102))

(assert (= (and b!4078102 c!703412) b!4078105))

(assert (= (and b!4078102 (not c!703412)) b!4078100))

(assert (= (and b!4078100 (not res!1665864)) b!4078106))

(assert (= (and b!4078106 res!1665863) b!4078108))

(assert (= (and b!4078108 res!1665861) b!4078112))

(assert (= (and b!4078112 res!1665865) b!4078101))

(assert (= (and b!4078106 (not res!1665859)) b!4078109))

(assert (= (and b!4078109 res!1665862) b!4078104))

(assert (= (and b!4078104 (not res!1665860)) b!4078103))

(assert (= (and b!4078103 (not res!1665866)) b!4078107))

(assert (= (or b!4078111 b!4078104 b!4078108) bm!288531))

(declare-fun m!4686165 () Bool)

(assert (=> b!4078107 m!4686165))

(assert (=> b!4078099 m!4686165))

(assert (=> b!4078099 m!4686165))

(declare-fun m!4686167 () Bool)

(assert (=> b!4078099 m!4686167))

(declare-fun m!4686169 () Bool)

(assert (=> b!4078099 m!4686169))

(assert (=> b!4078099 m!4686167))

(assert (=> b!4078099 m!4686169))

(declare-fun m!4686171 () Bool)

(assert (=> b!4078099 m!4686171))

(assert (=> bm!288531 m!4685841))

(declare-fun m!4686173 () Bool)

(assert (=> b!4078110 m!4686173))

(assert (=> b!4078103 m!4686169))

(assert (=> b!4078103 m!4686169))

(declare-fun m!4686175 () Bool)

(assert (=> b!4078103 m!4686175))

(assert (=> d!1211496 m!4685841))

(declare-fun m!4686177 () Bool)

(assert (=> d!1211496 m!4686177))

(assert (=> b!4078101 m!4686165))

(assert (=> b!4078112 m!4686169))

(assert (=> b!4078112 m!4686169))

(assert (=> b!4078112 m!4686175))

(assert (=> b!4077781 d!1211496))

(declare-fun d!1211498 () Bool)

(declare-fun res!1665871 () Bool)

(declare-fun e!2531141 () Bool)

(assert (=> d!1211498 (=> (not res!1665871) (not e!2531141))))

(assert (=> d!1211498 (= res!1665871 (validRegex!5404 (regex!7038 r!4213)))))

(assert (=> d!1211498 (= (ruleValid!2962 thiss!26199 r!4213) e!2531141)))

(declare-fun b!4078117 () Bool)

(declare-fun res!1665872 () Bool)

(assert (=> b!4078117 (=> (not res!1665872) (not e!2531141))))

(assert (=> b!4078117 (= res!1665872 (not (nullable!4204 (regex!7038 r!4213))))))

(declare-fun b!4078118 () Bool)

(assert (=> b!4078118 (= e!2531141 (not (= (tag!7898 r!4213) (String!50091 ""))))))

(assert (= (and d!1211498 res!1665871) b!4078117))

(assert (= (and b!4078117 res!1665872) b!4078118))

(assert (=> d!1211498 m!4686177))

(assert (=> b!4078117 m!4686173))

(assert (=> b!4077781 d!1211498))

(declare-fun d!1211500 () Bool)

(assert (=> d!1211500 (ruleValid!2962 thiss!26199 r!4213)))

(declare-fun lt!1459187 () Unit!63199)

(declare-fun choose!24896 (LexerInterface!6627 Rule!13876 List!43785) Unit!63199)

(assert (=> d!1211500 (= lt!1459187 (choose!24896 thiss!26199 r!4213 rules!3870))))

(assert (=> d!1211500 (contains!8707 rules!3870 r!4213)))

(assert (=> d!1211500 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2030 thiss!26199 r!4213 rules!3870) lt!1459187)))

(declare-fun bs!592794 () Bool)

(assert (= bs!592794 d!1211500))

(assert (=> bs!592794 m!4685845))

(declare-fun m!4686179 () Bool)

(assert (=> bs!592794 m!4686179))

(assert (=> bs!592794 m!4685869))

(assert (=> b!4077781 d!1211500))

(declare-fun b!4078132 () Bool)

(declare-fun e!2531144 () Bool)

(declare-fun tp!1234524 () Bool)

(declare-fun tp!1234520 () Bool)

(assert (=> b!4078132 (= e!2531144 (and tp!1234524 tp!1234520))))

(declare-fun b!4078130 () Bool)

(declare-fun tp!1234521 () Bool)

(declare-fun tp!1234522 () Bool)

(assert (=> b!4078130 (= e!2531144 (and tp!1234521 tp!1234522))))

(declare-fun b!4078129 () Bool)

(assert (=> b!4078129 (= e!2531144 tp_is_empty!20889)))

(assert (=> b!4077774 (= tp!1234459 e!2531144)))

(declare-fun b!4078131 () Bool)

(declare-fun tp!1234523 () Bool)

(assert (=> b!4078131 (= e!2531144 tp!1234523)))

(assert (= (and b!4077774 ((_ is ElementMatch!11943) (regex!7038 (h!49081 rules!3870)))) b!4078129))

(assert (= (and b!4077774 ((_ is Concat!19212) (regex!7038 (h!49081 rules!3870)))) b!4078130))

(assert (= (and b!4077774 ((_ is Star!11943) (regex!7038 (h!49081 rules!3870)))) b!4078131))

(assert (= (and b!4077774 ((_ is Union!11943) (regex!7038 (h!49081 rules!3870)))) b!4078132))

(declare-fun b!4078137 () Bool)

(declare-fun e!2531147 () Bool)

(declare-fun tp!1234527 () Bool)

(assert (=> b!4078137 (= e!2531147 (and tp_is_empty!20889 tp!1234527))))

(assert (=> b!4077788 (= tp!1234466 e!2531147)))

(assert (= (and b!4077788 ((_ is Cons!43659) (t!337470 input!3411))) b!4078137))

(declare-fun b!4078138 () Bool)

(declare-fun e!2531148 () Bool)

(declare-fun tp!1234528 () Bool)

(assert (=> b!4078138 (= e!2531148 (and tp_is_empty!20889 tp!1234528))))

(assert (=> b!4077783 (= tp!1234462 e!2531148)))

(assert (= (and b!4077783 ((_ is Cons!43659) (t!337470 suffix!1518))) b!4078138))

(declare-fun b!4078139 () Bool)

(declare-fun e!2531149 () Bool)

(declare-fun tp!1234529 () Bool)

(assert (=> b!4078139 (= e!2531149 (and tp_is_empty!20889 tp!1234529))))

(assert (=> b!4077778 (= tp!1234465 e!2531149)))

(assert (= (and b!4077778 ((_ is Cons!43659) (t!337470 p!2988))) b!4078139))

(declare-fun b!4078150 () Bool)

(declare-fun b_free!113733 () Bool)

(declare-fun b_next!114437 () Bool)

(assert (=> b!4078150 (= b_free!113733 (not b_next!114437))))

(declare-fun t!337495 () Bool)

(declare-fun tb!244933 () Bool)

(assert (=> (and b!4078150 (= (toValue!9606 (transformation!7038 (h!49081 (t!337472 rules!3870)))) (toValue!9606 (transformation!7038 r!4213))) t!337495) tb!244933))

(declare-fun result!297042 () Bool)

(assert (= result!297042 result!297014))

(assert (=> d!1211410 t!337495))

(assert (=> d!1211454 t!337495))

(declare-fun tp!1234540 () Bool)

(declare-fun b_and!313607 () Bool)

(assert (=> b!4078150 (= tp!1234540 (and (=> t!337495 result!297042) b_and!313607))))

(declare-fun b_free!113735 () Bool)

(declare-fun b_next!114439 () Bool)

(assert (=> b!4078150 (= b_free!113735 (not b_next!114439))))

(declare-fun tb!244935 () Bool)

(declare-fun t!337497 () Bool)

(assert (=> (and b!4078150 (= (toChars!9465 (transformation!7038 (h!49081 (t!337472 rules!3870)))) (toChars!9465 (transformation!7038 r!4213))) t!337497) tb!244935))

(declare-fun result!297044 () Bool)

(assert (= result!297044 result!297008))

(assert (=> d!1211410 t!337497))

(declare-fun b_and!313609 () Bool)

(declare-fun tp!1234539 () Bool)

(assert (=> b!4078150 (= tp!1234539 (and (=> t!337497 result!297044) b_and!313609))))

(declare-fun e!2531159 () Bool)

(assert (=> b!4078150 (= e!2531159 (and tp!1234540 tp!1234539))))

(declare-fun tp!1234541 () Bool)

(declare-fun b!4078149 () Bool)

(declare-fun e!2531161 () Bool)

(assert (=> b!4078149 (= e!2531161 (and tp!1234541 (inv!58313 (tag!7898 (h!49081 (t!337472 rules!3870)))) (inv!58315 (transformation!7038 (h!49081 (t!337472 rules!3870)))) e!2531159))))

(declare-fun b!4078148 () Bool)

(declare-fun e!2531158 () Bool)

(declare-fun tp!1234538 () Bool)

(assert (=> b!4078148 (= e!2531158 (and e!2531161 tp!1234538))))

(assert (=> b!4077773 (= tp!1234458 e!2531158)))

(assert (= b!4078149 b!4078150))

(assert (= b!4078148 b!4078149))

(assert (= (and b!4077773 ((_ is Cons!43661) (t!337472 rules!3870))) b!4078148))

(declare-fun m!4686181 () Bool)

(assert (=> b!4078149 m!4686181))

(declare-fun m!4686183 () Bool)

(assert (=> b!4078149 m!4686183))

(declare-fun b!4078154 () Bool)

(declare-fun e!2531162 () Bool)

(declare-fun tp!1234546 () Bool)

(declare-fun tp!1234542 () Bool)

(assert (=> b!4078154 (= e!2531162 (and tp!1234546 tp!1234542))))

(declare-fun b!4078152 () Bool)

(declare-fun tp!1234543 () Bool)

(declare-fun tp!1234544 () Bool)

(assert (=> b!4078152 (= e!2531162 (and tp!1234543 tp!1234544))))

(declare-fun b!4078151 () Bool)

(assert (=> b!4078151 (= e!2531162 tp_is_empty!20889)))

(assert (=> b!4077786 (= tp!1234457 e!2531162)))

(declare-fun b!4078153 () Bool)

(declare-fun tp!1234545 () Bool)

(assert (=> b!4078153 (= e!2531162 tp!1234545)))

(assert (= (and b!4077786 ((_ is ElementMatch!11943) (regex!7038 r!4213))) b!4078151))

(assert (= (and b!4077786 ((_ is Concat!19212) (regex!7038 r!4213))) b!4078152))

(assert (= (and b!4077786 ((_ is Star!11943) (regex!7038 r!4213))) b!4078153))

(assert (= (and b!4077786 ((_ is Union!11943) (regex!7038 r!4213))) b!4078154))

(declare-fun b_lambda!119185 () Bool)

(assert (= b_lambda!119169 (or (and b!4077785 b_free!113723) (and b!4077782 b_free!113727 (= (toChars!9465 (transformation!7038 (h!49081 rules!3870))) (toChars!9465 (transformation!7038 r!4213)))) (and b!4078150 b_free!113735 (= (toChars!9465 (transformation!7038 (h!49081 (t!337472 rules!3870)))) (toChars!9465 (transformation!7038 r!4213)))) b_lambda!119185)))

(declare-fun b_lambda!119187 () Bool)

(assert (= b_lambda!119177 (or (and b!4077785 b_free!113721) (and b!4077782 b_free!113725 (= (toValue!9606 (transformation!7038 (h!49081 rules!3870))) (toValue!9606 (transformation!7038 r!4213)))) (and b!4078150 b_free!113733 (= (toValue!9606 (transformation!7038 (h!49081 (t!337472 rules!3870)))) (toValue!9606 (transformation!7038 r!4213)))) b_lambda!119187)))

(declare-fun b_lambda!119189 () Bool)

(assert (= b_lambda!119171 (or (and b!4077785 b_free!113721) (and b!4077782 b_free!113725 (= (toValue!9606 (transformation!7038 (h!49081 rules!3870))) (toValue!9606 (transformation!7038 r!4213)))) (and b!4078150 b_free!113733 (= (toValue!9606 (transformation!7038 (h!49081 (t!337472 rules!3870)))) (toValue!9606 (transformation!7038 r!4213)))) b_lambda!119189)))

(check-sat (not b!4078139) (not b!4078110) (not b!4077927) (not b!4077931) (not tb!244921) (not b!4077889) (not b!4078137) (not b!4078131) (not b_next!114427) (not b!4078138) (not b!4078057) (not b_next!114425) (not d!1211484) (not d!1211496) b_and!313585 (not d!1211410) (not b!4078019) (not d!1211438) (not b!4078048) (not d!1211452) (not d!1211490) (not b!4078117) (not d!1211480) (not b!4077932) (not b_next!114429) (not d!1211500) (not d!1211472) (not bm!288531) (not b!4078022) b_and!313583 (not b!4078103) b_and!313609 b_and!313607 (not b!4078069) (not b!4078024) (not d!1211498) (not b_lambda!119189) (not b!4078112) (not b!4077929) (not tb!244917) (not b!4078023) (not d!1211474) (not b!4078021) (not b!4078132) tp_is_empty!20889 (not b!4078058) (not b!4078148) (not b!4078020) (not b_lambda!119185) (not b_next!114431) (not b!4078152) (not d!1211460) (not b!4077933) (not b!4078047) (not b_next!114439) (not b!4078017) (not b_lambda!119187) (not b!4077928) (not d!1211492) (not d!1211486) (not bm!288528) (not b!4078130) (not b!4078099) b_and!313601 (not b!4077940) b_and!313599 (not b!4078107) (not d!1211478) (not b!4078016) (not b!4078154) (not b!4077934) (not b!4078051) (not b!4077930) (not b!4078153) (not b!4078068) (not b!4078149) (not b!4078101) (not b_next!114437))
(check-sat (not b_next!114427) (not b_next!114425) b_and!313585 (not b_next!114429) (not b_next!114431) (not b_next!114439) (not b_next!114437) b_and!313583 b_and!313609 b_and!313607 b_and!313601 b_and!313599)
