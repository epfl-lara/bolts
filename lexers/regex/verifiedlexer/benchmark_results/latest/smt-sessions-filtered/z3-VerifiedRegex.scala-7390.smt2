; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!392862 () Bool)

(assert start!392862)

(declare-fun b!4136201 () Bool)

(declare-fun b_free!117587 () Bool)

(declare-fun b_next!118291 () Bool)

(assert (=> b!4136201 (= b_free!117587 (not b_next!118291))))

(declare-fun tp!1260831 () Bool)

(declare-fun b_and!320929 () Bool)

(assert (=> b!4136201 (= tp!1260831 b_and!320929)))

(declare-fun b_free!117589 () Bool)

(declare-fun b_next!118293 () Bool)

(assert (=> b!4136201 (= b_free!117589 (not b_next!118293))))

(declare-fun tp!1260839 () Bool)

(declare-fun b_and!320931 () Bool)

(assert (=> b!4136201 (= tp!1260839 b_and!320931)))

(declare-fun b!4136209 () Bool)

(declare-fun b_free!117591 () Bool)

(declare-fun b_next!118295 () Bool)

(assert (=> b!4136209 (= b_free!117591 (not b_next!118295))))

(declare-fun tp!1260838 () Bool)

(declare-fun b_and!320933 () Bool)

(assert (=> b!4136209 (= tp!1260838 b_and!320933)))

(declare-fun b_free!117593 () Bool)

(declare-fun b_next!118297 () Bool)

(assert (=> b!4136209 (= b_free!117593 (not b_next!118297))))

(declare-fun tp!1260835 () Bool)

(declare-fun b_and!320935 () Bool)

(assert (=> b!4136209 (= tp!1260835 b_and!320935)))

(declare-fun b!4136206 () Bool)

(declare-fun b_free!117595 () Bool)

(declare-fun b_next!118299 () Bool)

(assert (=> b!4136206 (= b_free!117595 (not b_next!118299))))

(declare-fun tp!1260840 () Bool)

(declare-fun b_and!320937 () Bool)

(assert (=> b!4136206 (= tp!1260840 b_and!320937)))

(declare-fun b_free!117597 () Bool)

(declare-fun b_next!118301 () Bool)

(assert (=> b!4136206 (= b_free!117597 (not b_next!118301))))

(declare-fun tp!1260841 () Bool)

(declare-fun b_and!320939 () Bool)

(assert (=> b!4136206 (= tp!1260841 b_and!320939)))

(declare-fun b!4136189 () Bool)

(declare-fun e!2566363 () Bool)

(declare-fun e!2566374 () Bool)

(assert (=> b!4136189 (= e!2566363 e!2566374)))

(declare-fun res!1691449 () Bool)

(assert (=> b!4136189 (=> res!1691449 e!2566374)))

(declare-datatypes ((C!24700 0))(
  ( (C!24701 (val!14460 Int)) )
))
(declare-datatypes ((List!44950 0))(
  ( (Nil!44826) (Cons!44826 (h!50246 C!24700) (t!341987 List!44950)) )
))
(declare-fun input!3238 () List!44950)

(declare-fun p!2912 () List!44950)

(declare-fun lt!1474727 () List!44950)

(declare-fun ++!11596 (List!44950 List!44950) List!44950)

(assert (=> b!4136189 (= res!1691449 (not (= (++!11596 p!2912 lt!1474727) input!3238)))))

(declare-fun lt!1474725 () List!44950)

(declare-fun lt!1474734 () List!44950)

(declare-fun getSuffix!2614 (List!44950 List!44950) List!44950)

(assert (=> b!4136189 (= lt!1474725 (getSuffix!2614 input!3238 lt!1474734))))

(declare-datatypes ((IArray!27131 0))(
  ( (IArray!27132 (innerList!13623 List!44950)) )
))
(declare-datatypes ((Conc!13563 0))(
  ( (Node!13563 (left!33569 Conc!13563) (right!33899 Conc!13563) (csize!27356 Int) (cheight!13774 Int)) (Leaf!20954 (xs!16869 IArray!27131) (csize!27357 Int)) (Empty!13563) )
))
(declare-datatypes ((BalanceConc!26720 0))(
  ( (BalanceConc!26721 (c!709356 Conc!13563)) )
))
(declare-fun lt!1474732 () BalanceConc!26720)

(declare-fun list!16413 (BalanceConc!26720) List!44950)

(assert (=> b!4136189 (= lt!1474734 (list!16413 lt!1474732))))

(declare-fun b!4136190 () Bool)

(declare-fun res!1691453 () Bool)

(declare-fun e!2566368 () Bool)

(assert (=> b!4136190 (=> (not res!1691453) (not e!2566368))))

(declare-datatypes ((LexerInterface!6941 0))(
  ( (LexerInterfaceExt!6938 (__x!27381 Int)) (Lexer!6939) )
))
(declare-fun thiss!25645 () LexerInterface!6941)

(declare-datatypes ((List!44951 0))(
  ( (Nil!44827) (Cons!44827 (h!50247 (_ BitVec 16)) (t!341988 List!44951)) )
))
(declare-datatypes ((TokenValue!7582 0))(
  ( (FloatLiteralValue!15164 (text!53519 List!44951)) (TokenValueExt!7581 (__x!27382 Int)) (Broken!37910 (value!230060 List!44951)) (Object!7705) (End!7582) (Def!7582) (Underscore!7582) (Match!7582) (Else!7582) (Error!7582) (Case!7582) (If!7582) (Extends!7582) (Abstract!7582) (Class!7582) (Val!7582) (DelimiterValue!15164 (del!7642 List!44951)) (KeywordValue!7588 (value!230061 List!44951)) (CommentValue!15164 (value!230062 List!44951)) (WhitespaceValue!15164 (value!230063 List!44951)) (IndentationValue!7582 (value!230064 List!44951)) (String!51659) (Int32!7582) (Broken!37911 (value!230065 List!44951)) (Boolean!7583) (Unit!64138) (OperatorValue!7585 (op!7642 List!44951)) (IdentifierValue!15164 (value!230066 List!44951)) (IdentifierValue!15165 (value!230067 List!44951)) (WhitespaceValue!15165 (value!230068 List!44951)) (True!15164) (False!15164) (Broken!37912 (value!230069 List!44951)) (Broken!37913 (value!230070 List!44951)) (True!15165) (RightBrace!7582) (RightBracket!7582) (Colon!7582) (Null!7582) (Comma!7582) (LeftBracket!7582) (False!15165) (LeftBrace!7582) (ImaginaryLiteralValue!7582 (text!53520 List!44951)) (StringLiteralValue!22746 (value!230071 List!44951)) (EOFValue!7582 (value!230072 List!44951)) (IdentValue!7582 (value!230073 List!44951)) (DelimiterValue!15165 (value!230074 List!44951)) (DedentValue!7582 (value!230075 List!44951)) (NewLineValue!7582 (value!230076 List!44951)) (IntegerValue!22746 (value!230077 (_ BitVec 32)) (text!53521 List!44951)) (IntegerValue!22747 (value!230078 Int) (text!53522 List!44951)) (Times!7582) (Or!7582) (Equal!7582) (Minus!7582) (Broken!37914 (value!230079 List!44951)) (And!7582) (Div!7582) (LessEqual!7582) (Mod!7582) (Concat!19839) (Not!7582) (Plus!7582) (SpaceValue!7582 (value!230080 List!44951)) (IntegerValue!22748 (value!230081 Int) (text!53523 List!44951)) (StringLiteralValue!22747 (text!53524 List!44951)) (FloatLiteralValue!15165 (text!53525 List!44951)) (BytesLiteralValue!7582 (value!230082 List!44951)) (CommentValue!15165 (value!230083 List!44951)) (StringLiteralValue!22748 (value!230084 List!44951)) (ErrorTokenValue!7582 (msg!7643 List!44951)) )
))
(declare-datatypes ((Regex!12257 0))(
  ( (ElementMatch!12257 (c!709357 C!24700)) (Concat!19840 (regOne!25026 Regex!12257) (regTwo!25026 Regex!12257)) (EmptyExpr!12257) (Star!12257 (reg!12586 Regex!12257)) (EmptyLang!12257) (Union!12257 (regOne!25027 Regex!12257) (regTwo!25027 Regex!12257)) )
))
(declare-datatypes ((String!51660 0))(
  ( (String!51661 (value!230085 String)) )
))
(declare-datatypes ((TokenValueInjection!14592 0))(
  ( (TokenValueInjection!14593 (toValue!10016 Int) (toChars!9875 Int)) )
))
(declare-datatypes ((Rule!14504 0))(
  ( (Rule!14505 (regex!7352 Regex!12257) (tag!8212 String!51660) (isSeparator!7352 Bool) (transformation!7352 TokenValueInjection!14592)) )
))
(declare-fun r!4008 () Rule!14504)

(declare-fun ruleValid!3158 (LexerInterface!6941 Rule!14504) Bool)

(assert (=> b!4136190 (= res!1691453 (ruleValid!3158 thiss!25645 r!4008))))

(declare-fun b!4136191 () Bool)

(declare-fun res!1691451 () Bool)

(declare-fun e!2566376 () Bool)

(assert (=> b!4136191 (=> (not res!1691451) (not e!2566376))))

(declare-datatypes ((List!44952 0))(
  ( (Nil!44828) (Cons!44828 (h!50248 Rule!14504) (t!341989 List!44952)) )
))
(declare-fun rules!3756 () List!44952)

(declare-fun contains!9032 (List!44952 Rule!14504) Bool)

(assert (=> b!4136191 (= res!1691451 (contains!9032 rules!3756 r!4008))))

(declare-fun b!4136192 () Bool)

(declare-fun res!1691455 () Bool)

(assert (=> b!4136192 (=> (not res!1691455) (not e!2566376))))

(declare-fun isEmpty!26709 (List!44950) Bool)

(assert (=> b!4136192 (= res!1691455 (not (isEmpty!26709 p!2912)))))

(declare-fun b!4136193 () Bool)

(declare-fun res!1691452 () Bool)

(assert (=> b!4136193 (=> (not res!1691452) (not e!2566368))))

(declare-fun rBis!149 () Rule!14504)

(declare-fun getIndex!698 (List!44952 Rule!14504) Int)

(assert (=> b!4136193 (= res!1691452 (< (getIndex!698 rules!3756 rBis!149) (getIndex!698 rules!3756 r!4008)))))

(declare-fun b!4136194 () Bool)

(declare-fun res!1691448 () Bool)

(assert (=> b!4136194 (=> (not res!1691448) (not e!2566376))))

(declare-fun isEmpty!26710 (List!44952) Bool)

(assert (=> b!4136194 (= res!1691448 (not (isEmpty!26710 rules!3756)))))

(declare-fun b!4136196 () Bool)

(declare-fun e!2566379 () Bool)

(declare-fun tp_is_empty!21437 () Bool)

(declare-fun tp!1260837 () Bool)

(assert (=> b!4136196 (= e!2566379 (and tp_is_empty!21437 tp!1260837))))

(declare-fun b!4136197 () Bool)

(declare-fun e!2566380 () Bool)

(declare-fun e!2566371 () Bool)

(declare-fun tp!1260834 () Bool)

(declare-fun inv!59431 (String!51660) Bool)

(declare-fun inv!59433 (TokenValueInjection!14592) Bool)

(assert (=> b!4136197 (= e!2566380 (and tp!1260834 (inv!59431 (tag!8212 r!4008)) (inv!59433 (transformation!7352 r!4008)) e!2566371))))

(declare-fun b!4136198 () Bool)

(declare-fun e!2566372 () Bool)

(declare-fun e!2566365 () Bool)

(assert (=> b!4136198 (= e!2566372 e!2566365)))

(declare-fun res!1691450 () Bool)

(assert (=> b!4136198 (=> res!1691450 e!2566365)))

(declare-datatypes ((Token!13634 0))(
  ( (Token!13635 (value!230086 TokenValue!7582) (rule!10450 Rule!14504) (size!33184 Int) (originalCharacters!7848 List!44950)) )
))
(declare-datatypes ((tuple2!43222 0))(
  ( (tuple2!43223 (_1!24745 Token!13634) (_2!24745 List!44950)) )
))
(declare-datatypes ((Option!9658 0))(
  ( (None!9657) (Some!9657 (v!40283 tuple2!43222)) )
))
(declare-fun lt!1474724 () Option!9658)

(declare-fun isEmpty!26711 (Option!9658) Bool)

(assert (=> b!4136198 (= res!1691450 (isEmpty!26711 lt!1474724))))

(declare-fun maxPrefixOneRule!3070 (LexerInterface!6941 Rule!14504 List!44950) Option!9658)

(assert (=> b!4136198 (= lt!1474724 (maxPrefixOneRule!3070 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4136198 (not (= rBis!149 r!4008))))

(declare-datatypes ((Unit!64139 0))(
  ( (Unit!64140) )
))
(declare-fun lt!1474733 () Unit!64139)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!50 (LexerInterface!6941 List!44952 Rule!14504 Rule!14504) Unit!64139)

(assert (=> b!4136198 (= lt!1474733 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!50 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun tail!6511 (List!44952) List!44952)

(assert (=> b!4136198 (contains!9032 (tail!6511 rules!3756) r!4008)))

(declare-fun lt!1474722 () Unit!64139)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!56 (List!44952 Rule!14504 Rule!14504) Unit!64139)

(assert (=> b!4136198 (= lt!1474722 (lemmaGetIndexBiggerAndHeadEqThenTailContains!56 rules!3756 rBis!149 r!4008))))

(declare-fun b!4136199 () Bool)

(assert (=> b!4136199 (= e!2566376 e!2566368)))

(declare-fun res!1691443 () Bool)

(assert (=> b!4136199 (=> (not res!1691443) (not e!2566368))))

(declare-fun lt!1474731 () TokenValue!7582)

(declare-fun lt!1474730 () Int)

(declare-fun maxPrefix!4131 (LexerInterface!6941 List!44952 List!44950) Option!9658)

(assert (=> b!4136199 (= res!1691443 (= (maxPrefix!4131 thiss!25645 rules!3756 input!3238) (Some!9657 (tuple2!43223 (Token!13635 lt!1474731 r!4008 lt!1474730 p!2912) lt!1474727))))))

(assert (=> b!4136199 (= lt!1474727 (getSuffix!2614 input!3238 p!2912))))

(declare-fun size!33185 (List!44950) Int)

(assert (=> b!4136199 (= lt!1474730 (size!33185 p!2912))))

(declare-fun lt!1474726 () BalanceConc!26720)

(declare-fun apply!10425 (TokenValueInjection!14592 BalanceConc!26720) TokenValue!7582)

(assert (=> b!4136199 (= lt!1474731 (apply!10425 (transformation!7352 r!4008) lt!1474726))))

(declare-fun lt!1474729 () Unit!64139)

(declare-fun lemmaSemiInverse!2210 (TokenValueInjection!14592 BalanceConc!26720) Unit!64139)

(assert (=> b!4136199 (= lt!1474729 (lemmaSemiInverse!2210 (transformation!7352 r!4008) lt!1474726))))

(declare-fun seqFromList!5469 (List!44950) BalanceConc!26720)

(assert (=> b!4136199 (= lt!1474726 (seqFromList!5469 p!2912))))

(declare-fun b!4136200 () Bool)

(declare-fun res!1691446 () Bool)

(assert (=> b!4136200 (=> (not res!1691446) (not e!2566368))))

(declare-fun matchR!6086 (Regex!12257 List!44950) Bool)

(assert (=> b!4136200 (= res!1691446 (matchR!6086 (regex!7352 r!4008) p!2912))))

(assert (=> b!4136201 (= e!2566371 (and tp!1260831 tp!1260839))))

(declare-fun b!4136202 () Bool)

(declare-fun e!2566364 () Bool)

(declare-fun tp!1260833 () Bool)

(assert (=> b!4136202 (= e!2566364 (and tp_is_empty!21437 tp!1260833))))

(declare-fun b!4136203 () Bool)

(declare-fun isPrefix!4287 (List!44950 List!44950) Bool)

(assert (=> b!4136203 (= e!2566374 (isPrefix!4287 lt!1474734 input!3238))))

(declare-fun b!4136204 () Bool)

(declare-fun e!2566370 () Bool)

(declare-fun e!2566369 () Bool)

(declare-fun tp!1260832 () Bool)

(assert (=> b!4136204 (= e!2566370 (and e!2566369 tp!1260832))))

(declare-fun b!4136195 () Bool)

(declare-fun res!1691447 () Bool)

(assert (=> b!4136195 (=> (not res!1691447) (not e!2566376))))

(assert (=> b!4136195 (= res!1691447 (isPrefix!4287 p!2912 input!3238))))

(declare-fun res!1691441 () Bool)

(assert (=> start!392862 (=> (not res!1691441) (not e!2566376))))

(get-info :version)

(assert (=> start!392862 (= res!1691441 ((_ is Lexer!6939) thiss!25645))))

(assert (=> start!392862 e!2566376))

(assert (=> start!392862 e!2566370))

(assert (=> start!392862 e!2566379))

(assert (=> start!392862 true))

(assert (=> start!392862 e!2566380))

(assert (=> start!392862 e!2566364))

(declare-fun e!2566375 () Bool)

(assert (=> start!392862 e!2566375))

(declare-fun b!4136205 () Bool)

(declare-fun res!1691444 () Bool)

(assert (=> b!4136205 (=> (not res!1691444) (not e!2566376))))

(assert (=> b!4136205 (= res!1691444 (contains!9032 rules!3756 rBis!149))))

(declare-fun e!2566366 () Bool)

(assert (=> b!4136206 (= e!2566366 (and tp!1260840 tp!1260841))))

(declare-fun e!2566378 () Bool)

(declare-fun b!4136207 () Bool)

(declare-fun tp!1260842 () Bool)

(assert (=> b!4136207 (= e!2566375 (and tp!1260842 (inv!59431 (tag!8212 rBis!149)) (inv!59433 (transformation!7352 rBis!149)) e!2566378))))

(declare-fun b!4136208 () Bool)

(declare-fun res!1691442 () Bool)

(assert (=> b!4136208 (=> (not res!1691442) (not e!2566376))))

(declare-fun rulesInvariant!6238 (LexerInterface!6941 List!44952) Bool)

(assert (=> b!4136208 (= res!1691442 (rulesInvariant!6238 thiss!25645 rules!3756))))

(assert (=> b!4136209 (= e!2566378 (and tp!1260838 tp!1260835))))

(declare-fun b!4136210 () Bool)

(assert (=> b!4136210 (= e!2566368 (not e!2566372))))

(declare-fun res!1691445 () Bool)

(assert (=> b!4136210 (=> res!1691445 e!2566372)))

(assert (=> b!4136210 (= res!1691445 (or (not ((_ is Cons!44828) rules!3756)) (not (= (h!50248 rules!3756) rBis!149))))))

(declare-fun lt!1474723 () Unit!64139)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2198 (LexerInterface!6941 Rule!14504 List!44952) Unit!64139)

(assert (=> b!4136210 (= lt!1474723 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2198 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4136210 (ruleValid!3158 thiss!25645 rBis!149)))

(declare-fun lt!1474728 () Unit!64139)

(assert (=> b!4136210 (= lt!1474728 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2198 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4136211 () Bool)

(assert (=> b!4136211 (= e!2566365 e!2566363)))

(declare-fun res!1691454 () Bool)

(assert (=> b!4136211 (=> res!1691454 e!2566363)))

(declare-fun size!33186 (BalanceConc!26720) Int)

(assert (=> b!4136211 (= res!1691454 (<= (size!33186 lt!1474732) lt!1474730))))

(declare-fun charsOf!4951 (Token!13634) BalanceConc!26720)

(declare-fun get!14623 (Option!9658) tuple2!43222)

(assert (=> b!4136211 (= lt!1474732 (charsOf!4951 (_1!24745 (get!14623 lt!1474724))))))

(declare-fun tp!1260836 () Bool)

(declare-fun b!4136212 () Bool)

(assert (=> b!4136212 (= e!2566369 (and tp!1260836 (inv!59431 (tag!8212 (h!50248 rules!3756))) (inv!59433 (transformation!7352 (h!50248 rules!3756))) e!2566366))))

(assert (= (and start!392862 res!1691441) b!4136195))

(assert (= (and b!4136195 res!1691447) b!4136194))

(assert (= (and b!4136194 res!1691448) b!4136208))

(assert (= (and b!4136208 res!1691442) b!4136191))

(assert (= (and b!4136191 res!1691451) b!4136205))

(assert (= (and b!4136205 res!1691444) b!4136192))

(assert (= (and b!4136192 res!1691455) b!4136199))

(assert (= (and b!4136199 res!1691443) b!4136200))

(assert (= (and b!4136200 res!1691446) b!4136193))

(assert (= (and b!4136193 res!1691452) b!4136190))

(assert (= (and b!4136190 res!1691453) b!4136210))

(assert (= (and b!4136210 (not res!1691445)) b!4136198))

(assert (= (and b!4136198 (not res!1691450)) b!4136211))

(assert (= (and b!4136211 (not res!1691454)) b!4136189))

(assert (= (and b!4136189 (not res!1691449)) b!4136203))

(assert (= b!4136212 b!4136206))

(assert (= b!4136204 b!4136212))

(assert (= (and start!392862 ((_ is Cons!44828) rules!3756)) b!4136204))

(assert (= (and start!392862 ((_ is Cons!44826) p!2912)) b!4136196))

(assert (= b!4136197 b!4136201))

(assert (= start!392862 b!4136197))

(assert (= (and start!392862 ((_ is Cons!44826) input!3238)) b!4136202))

(assert (= b!4136207 b!4136209))

(assert (= start!392862 b!4136207))

(declare-fun m!4732797 () Bool)

(assert (=> b!4136190 m!4732797))

(declare-fun m!4732799 () Bool)

(assert (=> b!4136191 m!4732799))

(declare-fun m!4732801 () Bool)

(assert (=> b!4136205 m!4732801))

(declare-fun m!4732803 () Bool)

(assert (=> b!4136212 m!4732803))

(declare-fun m!4732805 () Bool)

(assert (=> b!4136212 m!4732805))

(declare-fun m!4732807 () Bool)

(assert (=> b!4136195 m!4732807))

(declare-fun m!4732809 () Bool)

(assert (=> b!4136210 m!4732809))

(declare-fun m!4732811 () Bool)

(assert (=> b!4136210 m!4732811))

(declare-fun m!4732813 () Bool)

(assert (=> b!4136210 m!4732813))

(declare-fun m!4732815 () Bool)

(assert (=> b!4136211 m!4732815))

(declare-fun m!4732817 () Bool)

(assert (=> b!4136211 m!4732817))

(declare-fun m!4732819 () Bool)

(assert (=> b!4136211 m!4732819))

(declare-fun m!4732821 () Bool)

(assert (=> b!4136192 m!4732821))

(declare-fun m!4732823 () Bool)

(assert (=> b!4136194 m!4732823))

(declare-fun m!4732825 () Bool)

(assert (=> b!4136199 m!4732825))

(declare-fun m!4732827 () Bool)

(assert (=> b!4136199 m!4732827))

(declare-fun m!4732829 () Bool)

(assert (=> b!4136199 m!4732829))

(declare-fun m!4732831 () Bool)

(assert (=> b!4136199 m!4732831))

(declare-fun m!4732833 () Bool)

(assert (=> b!4136199 m!4732833))

(declare-fun m!4732835 () Bool)

(assert (=> b!4136199 m!4732835))

(declare-fun m!4732837 () Bool)

(assert (=> b!4136200 m!4732837))

(declare-fun m!4732839 () Bool)

(assert (=> b!4136207 m!4732839))

(declare-fun m!4732841 () Bool)

(assert (=> b!4136207 m!4732841))

(declare-fun m!4732843 () Bool)

(assert (=> b!4136208 m!4732843))

(declare-fun m!4732845 () Bool)

(assert (=> b!4136197 m!4732845))

(declare-fun m!4732847 () Bool)

(assert (=> b!4136197 m!4732847))

(declare-fun m!4732849 () Bool)

(assert (=> b!4136198 m!4732849))

(declare-fun m!4732851 () Bool)

(assert (=> b!4136198 m!4732851))

(declare-fun m!4732853 () Bool)

(assert (=> b!4136198 m!4732853))

(assert (=> b!4136198 m!4732849))

(declare-fun m!4732855 () Bool)

(assert (=> b!4136198 m!4732855))

(declare-fun m!4732857 () Bool)

(assert (=> b!4136198 m!4732857))

(declare-fun m!4732859 () Bool)

(assert (=> b!4136198 m!4732859))

(declare-fun m!4732861 () Bool)

(assert (=> b!4136193 m!4732861))

(declare-fun m!4732863 () Bool)

(assert (=> b!4136193 m!4732863))

(declare-fun m!4732865 () Bool)

(assert (=> b!4136203 m!4732865))

(declare-fun m!4732867 () Bool)

(assert (=> b!4136189 m!4732867))

(declare-fun m!4732869 () Bool)

(assert (=> b!4136189 m!4732869))

(declare-fun m!4732871 () Bool)

(assert (=> b!4136189 m!4732871))

(check-sat b_and!320939 (not b!4136190) (not b!4136199) (not b_next!118297) (not b!4136203) (not b!4136212) (not b!4136195) b_and!320937 b_and!320931 (not b!4136204) (not b!4136198) (not b!4136210) (not b!4136207) tp_is_empty!21437 (not b_next!118291) (not b!4136202) (not b!4136211) b_and!320933 (not b!4136200) (not b_next!118293) b_and!320929 (not b_next!118295) (not b!4136192) (not b!4136205) (not b!4136208) (not b!4136193) (not b_next!118301) (not b!4136191) (not b!4136189) (not b!4136197) (not b!4136196) (not b!4136194) (not b_next!118299) b_and!320935)
(check-sat b_and!320939 (not b_next!118291) (not b_next!118297) b_and!320933 b_and!320937 (not b_next!118301) b_and!320931 (not b_next!118293) b_and!320929 (not b_next!118295) (not b_next!118299) b_and!320935)
(get-model)

(declare-fun d!1224901 () Bool)

(declare-fun e!2566400 () Bool)

(assert (=> d!1224901 e!2566400))

(declare-fun res!1691473 () Bool)

(assert (=> d!1224901 (=> res!1691473 e!2566400)))

(declare-fun lt!1474747 () Bool)

(assert (=> d!1224901 (= res!1691473 (not lt!1474747))))

(declare-fun e!2566401 () Bool)

(assert (=> d!1224901 (= lt!1474747 e!2566401)))

(declare-fun res!1691472 () Bool)

(assert (=> d!1224901 (=> res!1691472 e!2566401)))

(assert (=> d!1224901 (= res!1691472 ((_ is Nil!44826) lt!1474734))))

(assert (=> d!1224901 (= (isPrefix!4287 lt!1474734 input!3238) lt!1474747)))

(declare-fun b!4136245 () Bool)

(assert (=> b!4136245 (= e!2566400 (>= (size!33185 input!3238) (size!33185 lt!1474734)))))

(declare-fun b!4136243 () Bool)

(declare-fun res!1691474 () Bool)

(declare-fun e!2566399 () Bool)

(assert (=> b!4136243 (=> (not res!1691474) (not e!2566399))))

(declare-fun head!8723 (List!44950) C!24700)

(assert (=> b!4136243 (= res!1691474 (= (head!8723 lt!1474734) (head!8723 input!3238)))))

(declare-fun b!4136242 () Bool)

(assert (=> b!4136242 (= e!2566401 e!2566399)))

(declare-fun res!1691471 () Bool)

(assert (=> b!4136242 (=> (not res!1691471) (not e!2566399))))

(assert (=> b!4136242 (= res!1691471 (not ((_ is Nil!44826) input!3238)))))

(declare-fun b!4136244 () Bool)

(declare-fun tail!6512 (List!44950) List!44950)

(assert (=> b!4136244 (= e!2566399 (isPrefix!4287 (tail!6512 lt!1474734) (tail!6512 input!3238)))))

(assert (= (and d!1224901 (not res!1691472)) b!4136242))

(assert (= (and b!4136242 res!1691471) b!4136243))

(assert (= (and b!4136243 res!1691474) b!4136244))

(assert (= (and d!1224901 (not res!1691473)) b!4136245))

(declare-fun m!4732889 () Bool)

(assert (=> b!4136245 m!4732889))

(declare-fun m!4732891 () Bool)

(assert (=> b!4136245 m!4732891))

(declare-fun m!4732893 () Bool)

(assert (=> b!4136243 m!4732893))

(declare-fun m!4732895 () Bool)

(assert (=> b!4136243 m!4732895))

(declare-fun m!4732897 () Bool)

(assert (=> b!4136244 m!4732897))

(declare-fun m!4732899 () Bool)

(assert (=> b!4136244 m!4732899))

(assert (=> b!4136244 m!4732897))

(assert (=> b!4136244 m!4732899))

(declare-fun m!4732901 () Bool)

(assert (=> b!4136244 m!4732901))

(assert (=> b!4136203 d!1224901))

(declare-fun b!4136263 () Bool)

(declare-fun e!2566415 () Int)

(declare-fun e!2566416 () Int)

(assert (=> b!4136263 (= e!2566415 e!2566416)))

(declare-fun c!709370 () Bool)

(assert (=> b!4136263 (= c!709370 (and ((_ is Cons!44828) rules!3756) (not (= (h!50248 rules!3756) rBis!149))))))

(declare-fun d!1224913 () Bool)

(declare-fun lt!1474755 () Int)

(assert (=> d!1224913 (>= lt!1474755 0)))

(assert (=> d!1224913 (= lt!1474755 e!2566415)))

(declare-fun c!709371 () Bool)

(assert (=> d!1224913 (= c!709371 (and ((_ is Cons!44828) rules!3756) (= (h!50248 rules!3756) rBis!149)))))

(assert (=> d!1224913 (contains!9032 rules!3756 rBis!149)))

(assert (=> d!1224913 (= (getIndex!698 rules!3756 rBis!149) lt!1474755)))

(declare-fun b!4136264 () Bool)

(assert (=> b!4136264 (= e!2566416 (+ 1 (getIndex!698 (t!341989 rules!3756) rBis!149)))))

(declare-fun b!4136262 () Bool)

(assert (=> b!4136262 (= e!2566415 0)))

(declare-fun b!4136265 () Bool)

(assert (=> b!4136265 (= e!2566416 (- 1))))

(assert (= (and d!1224913 c!709371) b!4136262))

(assert (= (and d!1224913 (not c!709371)) b!4136263))

(assert (= (and b!4136263 c!709370) b!4136264))

(assert (= (and b!4136263 (not c!709370)) b!4136265))

(assert (=> d!1224913 m!4732801))

(declare-fun m!4732909 () Bool)

(assert (=> b!4136264 m!4732909))

(assert (=> b!4136193 d!1224913))

(declare-fun b!4136268 () Bool)

(declare-fun e!2566418 () Int)

(declare-fun e!2566419 () Int)

(assert (=> b!4136268 (= e!2566418 e!2566419)))

(declare-fun c!709372 () Bool)

(assert (=> b!4136268 (= c!709372 (and ((_ is Cons!44828) rules!3756) (not (= (h!50248 rules!3756) r!4008))))))

(declare-fun d!1224919 () Bool)

(declare-fun lt!1474757 () Int)

(assert (=> d!1224919 (>= lt!1474757 0)))

(assert (=> d!1224919 (= lt!1474757 e!2566418)))

(declare-fun c!709373 () Bool)

(assert (=> d!1224919 (= c!709373 (and ((_ is Cons!44828) rules!3756) (= (h!50248 rules!3756) r!4008)))))

(assert (=> d!1224919 (contains!9032 rules!3756 r!4008)))

(assert (=> d!1224919 (= (getIndex!698 rules!3756 r!4008) lt!1474757)))

(declare-fun b!4136269 () Bool)

(assert (=> b!4136269 (= e!2566419 (+ 1 (getIndex!698 (t!341989 rules!3756) r!4008)))))

(declare-fun b!4136267 () Bool)

(assert (=> b!4136267 (= e!2566418 0)))

(declare-fun b!4136270 () Bool)

(assert (=> b!4136270 (= e!2566419 (- 1))))

(assert (= (and d!1224919 c!709373) b!4136267))

(assert (= (and d!1224919 (not c!709373)) b!4136268))

(assert (= (and b!4136268 c!709372) b!4136269))

(assert (= (and b!4136268 (not c!709372)) b!4136270))

(assert (=> d!1224919 m!4732799))

(declare-fun m!4732913 () Bool)

(assert (=> b!4136269 m!4732913))

(assert (=> b!4136193 d!1224919))

(declare-fun d!1224923 () Bool)

(declare-fun lt!1474760 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6917 (List!44952) (InoxSet Rule!14504))

(assert (=> d!1224923 (= lt!1474760 (select (content!6917 rules!3756) r!4008))))

(declare-fun e!2566425 () Bool)

(assert (=> d!1224923 (= lt!1474760 e!2566425)))

(declare-fun res!1691489 () Bool)

(assert (=> d!1224923 (=> (not res!1691489) (not e!2566425))))

(assert (=> d!1224923 (= res!1691489 ((_ is Cons!44828) rules!3756))))

(assert (=> d!1224923 (= (contains!9032 rules!3756 r!4008) lt!1474760)))

(declare-fun b!4136275 () Bool)

(declare-fun e!2566424 () Bool)

(assert (=> b!4136275 (= e!2566425 e!2566424)))

(declare-fun res!1691488 () Bool)

(assert (=> b!4136275 (=> res!1691488 e!2566424)))

(assert (=> b!4136275 (= res!1691488 (= (h!50248 rules!3756) r!4008))))

(declare-fun b!4136276 () Bool)

(assert (=> b!4136276 (= e!2566424 (contains!9032 (t!341989 rules!3756) r!4008))))

(assert (= (and d!1224923 res!1691489) b!4136275))

(assert (= (and b!4136275 (not res!1691488)) b!4136276))

(declare-fun m!4732915 () Bool)

(assert (=> d!1224923 m!4732915))

(declare-fun m!4732917 () Bool)

(assert (=> d!1224923 m!4732917))

(declare-fun m!4732919 () Bool)

(assert (=> b!4136276 m!4732919))

(assert (=> b!4136191 d!1224923))

(declare-fun d!1224927 () Bool)

(assert (=> d!1224927 (= (isEmpty!26709 p!2912) ((_ is Nil!44826) p!2912))))

(assert (=> b!4136192 d!1224927))

(declare-fun d!1224929 () Bool)

(declare-fun lt!1474763 () Int)

(assert (=> d!1224929 (= lt!1474763 (size!33185 (list!16413 lt!1474732)))))

(declare-fun size!33188 (Conc!13563) Int)

(assert (=> d!1224929 (= lt!1474763 (size!33188 (c!709356 lt!1474732)))))

(assert (=> d!1224929 (= (size!33186 lt!1474732) lt!1474763)))

(declare-fun bs!595127 () Bool)

(assert (= bs!595127 d!1224929))

(assert (=> bs!595127 m!4732871))

(assert (=> bs!595127 m!4732871))

(declare-fun m!4732921 () Bool)

(assert (=> bs!595127 m!4732921))

(declare-fun m!4732923 () Bool)

(assert (=> bs!595127 m!4732923))

(assert (=> b!4136211 d!1224929))

(declare-fun d!1224931 () Bool)

(declare-fun lt!1474766 () BalanceConc!26720)

(assert (=> d!1224931 (= (list!16413 lt!1474766) (originalCharacters!7848 (_1!24745 (get!14623 lt!1474724))))))

(declare-fun dynLambda!19249 (Int TokenValue!7582) BalanceConc!26720)

(assert (=> d!1224931 (= lt!1474766 (dynLambda!19249 (toChars!9875 (transformation!7352 (rule!10450 (_1!24745 (get!14623 lt!1474724))))) (value!230086 (_1!24745 (get!14623 lt!1474724)))))))

(assert (=> d!1224931 (= (charsOf!4951 (_1!24745 (get!14623 lt!1474724))) lt!1474766)))

(declare-fun b_lambda!121545 () Bool)

(assert (=> (not b_lambda!121545) (not d!1224931)))

(declare-fun tb!248265 () Bool)

(declare-fun t!341997 () Bool)

(assert (=> (and b!4136201 (= (toChars!9875 (transformation!7352 r!4008)) (toChars!9875 (transformation!7352 (rule!10450 (_1!24745 (get!14623 lt!1474724)))))) t!341997) tb!248265))

(declare-fun b!4136281 () Bool)

(declare-fun e!2566428 () Bool)

(declare-fun tp!1260848 () Bool)

(declare-fun inv!59436 (Conc!13563) Bool)

(assert (=> b!4136281 (= e!2566428 (and (inv!59436 (c!709356 (dynLambda!19249 (toChars!9875 (transformation!7352 (rule!10450 (_1!24745 (get!14623 lt!1474724))))) (value!230086 (_1!24745 (get!14623 lt!1474724)))))) tp!1260848))))

(declare-fun result!301824 () Bool)

(declare-fun inv!59437 (BalanceConc!26720) Bool)

(assert (=> tb!248265 (= result!301824 (and (inv!59437 (dynLambda!19249 (toChars!9875 (transformation!7352 (rule!10450 (_1!24745 (get!14623 lt!1474724))))) (value!230086 (_1!24745 (get!14623 lt!1474724))))) e!2566428))))

(assert (= tb!248265 b!4136281))

(declare-fun m!4732925 () Bool)

(assert (=> b!4136281 m!4732925))

(declare-fun m!4732927 () Bool)

(assert (=> tb!248265 m!4732927))

(assert (=> d!1224931 t!341997))

(declare-fun b_and!320947 () Bool)

(assert (= b_and!320931 (and (=> t!341997 result!301824) b_and!320947)))

(declare-fun t!341999 () Bool)

(declare-fun tb!248267 () Bool)

(assert (=> (and b!4136209 (= (toChars!9875 (transformation!7352 rBis!149)) (toChars!9875 (transformation!7352 (rule!10450 (_1!24745 (get!14623 lt!1474724)))))) t!341999) tb!248267))

(declare-fun result!301828 () Bool)

(assert (= result!301828 result!301824))

(assert (=> d!1224931 t!341999))

(declare-fun b_and!320949 () Bool)

(assert (= b_and!320935 (and (=> t!341999 result!301828) b_and!320949)))

(declare-fun tb!248269 () Bool)

(declare-fun t!342001 () Bool)

(assert (=> (and b!4136206 (= (toChars!9875 (transformation!7352 (h!50248 rules!3756))) (toChars!9875 (transformation!7352 (rule!10450 (_1!24745 (get!14623 lt!1474724)))))) t!342001) tb!248269))

(declare-fun result!301830 () Bool)

(assert (= result!301830 result!301824))

(assert (=> d!1224931 t!342001))

(declare-fun b_and!320951 () Bool)

(assert (= b_and!320939 (and (=> t!342001 result!301830) b_and!320951)))

(declare-fun m!4732929 () Bool)

(assert (=> d!1224931 m!4732929))

(declare-fun m!4732931 () Bool)

(assert (=> d!1224931 m!4732931))

(assert (=> b!4136211 d!1224931))

(declare-fun d!1224933 () Bool)

(assert (=> d!1224933 (= (get!14623 lt!1474724) (v!40283 lt!1474724))))

(assert (=> b!4136211 d!1224933))

(declare-fun d!1224935 () Bool)

(declare-fun res!1691494 () Bool)

(declare-fun e!2566431 () Bool)

(assert (=> d!1224935 (=> (not res!1691494) (not e!2566431))))

(declare-fun validRegex!5519 (Regex!12257) Bool)

(assert (=> d!1224935 (= res!1691494 (validRegex!5519 (regex!7352 r!4008)))))

(assert (=> d!1224935 (= (ruleValid!3158 thiss!25645 r!4008) e!2566431)))

(declare-fun b!4136286 () Bool)

(declare-fun res!1691495 () Bool)

(assert (=> b!4136286 (=> (not res!1691495) (not e!2566431))))

(declare-fun nullable!4311 (Regex!12257) Bool)

(assert (=> b!4136286 (= res!1691495 (not (nullable!4311 (regex!7352 r!4008))))))

(declare-fun b!4136287 () Bool)

(assert (=> b!4136287 (= e!2566431 (not (= (tag!8212 r!4008) (String!51661 ""))))))

(assert (= (and d!1224935 res!1691494) b!4136286))

(assert (= (and b!4136286 res!1691495) b!4136287))

(declare-fun m!4732933 () Bool)

(assert (=> d!1224935 m!4732933))

(declare-fun m!4732935 () Bool)

(assert (=> b!4136286 m!4732935))

(assert (=> b!4136190 d!1224935))

(declare-fun d!1224937 () Bool)

(assert (=> d!1224937 (= (inv!59431 (tag!8212 (h!50248 rules!3756))) (= (mod (str.len (value!230085 (tag!8212 (h!50248 rules!3756)))) 2) 0))))

(assert (=> b!4136212 d!1224937))

(declare-fun d!1224939 () Bool)

(declare-fun res!1691498 () Bool)

(declare-fun e!2566434 () Bool)

(assert (=> d!1224939 (=> (not res!1691498) (not e!2566434))))

(declare-fun semiInverseModEq!3175 (Int Int) Bool)

(assert (=> d!1224939 (= res!1691498 (semiInverseModEq!3175 (toChars!9875 (transformation!7352 (h!50248 rules!3756))) (toValue!10016 (transformation!7352 (h!50248 rules!3756)))))))

(assert (=> d!1224939 (= (inv!59433 (transformation!7352 (h!50248 rules!3756))) e!2566434)))

(declare-fun b!4136290 () Bool)

(declare-fun equivClasses!3074 (Int Int) Bool)

(assert (=> b!4136290 (= e!2566434 (equivClasses!3074 (toChars!9875 (transformation!7352 (h!50248 rules!3756))) (toValue!10016 (transformation!7352 (h!50248 rules!3756)))))))

(assert (= (and d!1224939 res!1691498) b!4136290))

(declare-fun m!4732937 () Bool)

(assert (=> d!1224939 m!4732937))

(declare-fun m!4732939 () Bool)

(assert (=> b!4136290 m!4732939))

(assert (=> b!4136212 d!1224939))

(declare-fun d!1224941 () Bool)

(declare-fun dynLambda!19254 (Int BalanceConc!26720) TokenValue!7582)

(assert (=> d!1224941 (= (apply!10425 (transformation!7352 r!4008) lt!1474726) (dynLambda!19254 (toValue!10016 (transformation!7352 r!4008)) lt!1474726))))

(declare-fun b_lambda!121547 () Bool)

(assert (=> (not b_lambda!121547) (not d!1224941)))

(declare-fun t!342003 () Bool)

(declare-fun tb!248271 () Bool)

(assert (=> (and b!4136201 (= (toValue!10016 (transformation!7352 r!4008)) (toValue!10016 (transformation!7352 r!4008))) t!342003) tb!248271))

(declare-fun result!301832 () Bool)

(declare-fun inv!21 (TokenValue!7582) Bool)

(assert (=> tb!248271 (= result!301832 (inv!21 (dynLambda!19254 (toValue!10016 (transformation!7352 r!4008)) lt!1474726)))))

(declare-fun m!4732941 () Bool)

(assert (=> tb!248271 m!4732941))

(assert (=> d!1224941 t!342003))

(declare-fun b_and!320953 () Bool)

(assert (= b_and!320929 (and (=> t!342003 result!301832) b_and!320953)))

(declare-fun t!342005 () Bool)

(declare-fun tb!248273 () Bool)

(assert (=> (and b!4136209 (= (toValue!10016 (transformation!7352 rBis!149)) (toValue!10016 (transformation!7352 r!4008))) t!342005) tb!248273))

(declare-fun result!301836 () Bool)

(assert (= result!301836 result!301832))

(assert (=> d!1224941 t!342005))

(declare-fun b_and!320955 () Bool)

(assert (= b_and!320933 (and (=> t!342005 result!301836) b_and!320955)))

(declare-fun t!342007 () Bool)

(declare-fun tb!248275 () Bool)

(assert (=> (and b!4136206 (= (toValue!10016 (transformation!7352 (h!50248 rules!3756))) (toValue!10016 (transformation!7352 r!4008))) t!342007) tb!248275))

(declare-fun result!301838 () Bool)

(assert (= result!301838 result!301832))

(assert (=> d!1224941 t!342007))

(declare-fun b_and!320957 () Bool)

(assert (= b_and!320937 (and (=> t!342007 result!301838) b_and!320957)))

(declare-fun m!4732943 () Bool)

(assert (=> d!1224941 m!4732943))

(assert (=> b!4136199 d!1224941))

(declare-fun b!4136373 () Bool)

(declare-fun e!2566477 () Bool)

(assert (=> b!4136373 (= e!2566477 true)))

(declare-fun d!1224943 () Bool)

(assert (=> d!1224943 e!2566477))

(assert (= d!1224943 b!4136373))

(declare-fun order!23687 () Int)

(declare-fun lambda!128910 () Int)

(declare-fun order!23689 () Int)

(declare-fun dynLambda!19255 (Int Int) Int)

(declare-fun dynLambda!19256 (Int Int) Int)

(assert (=> b!4136373 (< (dynLambda!19255 order!23687 (toValue!10016 (transformation!7352 r!4008))) (dynLambda!19256 order!23689 lambda!128910))))

(declare-fun order!23691 () Int)

(declare-fun dynLambda!19257 (Int Int) Int)

(assert (=> b!4136373 (< (dynLambda!19257 order!23691 (toChars!9875 (transformation!7352 r!4008))) (dynLambda!19256 order!23689 lambda!128910))))

(assert (=> d!1224943 (= (list!16413 (dynLambda!19249 (toChars!9875 (transformation!7352 r!4008)) (dynLambda!19254 (toValue!10016 (transformation!7352 r!4008)) lt!1474726))) (list!16413 lt!1474726))))

(declare-fun lt!1474812 () Unit!64139)

(declare-fun ForallOf!958 (Int BalanceConc!26720) Unit!64139)

(assert (=> d!1224943 (= lt!1474812 (ForallOf!958 lambda!128910 lt!1474726))))

(assert (=> d!1224943 (= (lemmaSemiInverse!2210 (transformation!7352 r!4008) lt!1474726) lt!1474812)))

(declare-fun b_lambda!121549 () Bool)

(assert (=> (not b_lambda!121549) (not d!1224943)))

(declare-fun t!342009 () Bool)

(declare-fun tb!248277 () Bool)

(assert (=> (and b!4136201 (= (toChars!9875 (transformation!7352 r!4008)) (toChars!9875 (transformation!7352 r!4008))) t!342009) tb!248277))

(declare-fun tp!1260849 () Bool)

(declare-fun e!2566478 () Bool)

(declare-fun b!4136374 () Bool)

(assert (=> b!4136374 (= e!2566478 (and (inv!59436 (c!709356 (dynLambda!19249 (toChars!9875 (transformation!7352 r!4008)) (dynLambda!19254 (toValue!10016 (transformation!7352 r!4008)) lt!1474726)))) tp!1260849))))

(declare-fun result!301840 () Bool)

(assert (=> tb!248277 (= result!301840 (and (inv!59437 (dynLambda!19249 (toChars!9875 (transformation!7352 r!4008)) (dynLambda!19254 (toValue!10016 (transformation!7352 r!4008)) lt!1474726))) e!2566478))))

(assert (= tb!248277 b!4136374))

(declare-fun m!4733059 () Bool)

(assert (=> b!4136374 m!4733059))

(declare-fun m!4733061 () Bool)

(assert (=> tb!248277 m!4733061))

(assert (=> d!1224943 t!342009))

(declare-fun b_and!320959 () Bool)

(assert (= b_and!320947 (and (=> t!342009 result!301840) b_and!320959)))

(declare-fun tb!248279 () Bool)

(declare-fun t!342011 () Bool)

(assert (=> (and b!4136209 (= (toChars!9875 (transformation!7352 rBis!149)) (toChars!9875 (transformation!7352 r!4008))) t!342011) tb!248279))

(declare-fun result!301842 () Bool)

(assert (= result!301842 result!301840))

(assert (=> d!1224943 t!342011))

(declare-fun b_and!320961 () Bool)

(assert (= b_and!320949 (and (=> t!342011 result!301842) b_and!320961)))

(declare-fun tb!248281 () Bool)

(declare-fun t!342013 () Bool)

(assert (=> (and b!4136206 (= (toChars!9875 (transformation!7352 (h!50248 rules!3756))) (toChars!9875 (transformation!7352 r!4008))) t!342013) tb!248281))

(declare-fun result!301844 () Bool)

(assert (= result!301844 result!301840))

(assert (=> d!1224943 t!342013))

(declare-fun b_and!320963 () Bool)

(assert (= b_and!320951 (and (=> t!342013 result!301844) b_and!320963)))

(declare-fun b_lambda!121551 () Bool)

(assert (=> (not b_lambda!121551) (not d!1224943)))

(assert (=> d!1224943 t!342003))

(declare-fun b_and!320965 () Bool)

(assert (= b_and!320953 (and (=> t!342003 result!301832) b_and!320965)))

(assert (=> d!1224943 t!342005))

(declare-fun b_and!320967 () Bool)

(assert (= b_and!320955 (and (=> t!342005 result!301836) b_and!320967)))

(assert (=> d!1224943 t!342007))

(declare-fun b_and!320969 () Bool)

(assert (= b_and!320957 (and (=> t!342007 result!301838) b_and!320969)))

(assert (=> d!1224943 m!4732943))

(declare-fun m!4733063 () Bool)

(assert (=> d!1224943 m!4733063))

(declare-fun m!4733065 () Bool)

(assert (=> d!1224943 m!4733065))

(assert (=> d!1224943 m!4732943))

(assert (=> d!1224943 m!4733063))

(declare-fun m!4733067 () Bool)

(assert (=> d!1224943 m!4733067))

(declare-fun m!4733069 () Bool)

(assert (=> d!1224943 m!4733069))

(assert (=> b!4136199 d!1224943))

(declare-fun d!1224975 () Bool)

(declare-fun lt!1474815 () List!44950)

(assert (=> d!1224975 (= (++!11596 p!2912 lt!1474815) input!3238)))

(declare-fun e!2566481 () List!44950)

(assert (=> d!1224975 (= lt!1474815 e!2566481)))

(declare-fun c!709387 () Bool)

(assert (=> d!1224975 (= c!709387 ((_ is Cons!44826) p!2912))))

(assert (=> d!1224975 (>= (size!33185 input!3238) (size!33185 p!2912))))

(assert (=> d!1224975 (= (getSuffix!2614 input!3238 p!2912) lt!1474815)))

(declare-fun b!4136379 () Bool)

(assert (=> b!4136379 (= e!2566481 (getSuffix!2614 (tail!6512 input!3238) (t!341987 p!2912)))))

(declare-fun b!4136380 () Bool)

(assert (=> b!4136380 (= e!2566481 input!3238)))

(assert (= (and d!1224975 c!709387) b!4136379))

(assert (= (and d!1224975 (not c!709387)) b!4136380))

(declare-fun m!4733071 () Bool)

(assert (=> d!1224975 m!4733071))

(assert (=> d!1224975 m!4732889))

(assert (=> d!1224975 m!4732825))

(assert (=> b!4136379 m!4732899))

(assert (=> b!4136379 m!4732899))

(declare-fun m!4733073 () Bool)

(assert (=> b!4136379 m!4733073))

(assert (=> b!4136199 d!1224975))

(declare-fun b!4136413 () Bool)

(declare-fun res!1691571 () Bool)

(declare-fun e!2566500 () Bool)

(assert (=> b!4136413 (=> (not res!1691571) (not e!2566500))))

(declare-fun lt!1474834 () Option!9658)

(assert (=> b!4136413 (= res!1691571 (= (value!230086 (_1!24745 (get!14623 lt!1474834))) (apply!10425 (transformation!7352 (rule!10450 (_1!24745 (get!14623 lt!1474834)))) (seqFromList!5469 (originalCharacters!7848 (_1!24745 (get!14623 lt!1474834)))))))))

(declare-fun b!4136414 () Bool)

(declare-fun e!2566499 () Option!9658)

(declare-fun lt!1474830 () Option!9658)

(declare-fun lt!1474833 () Option!9658)

(assert (=> b!4136414 (= e!2566499 (ite (and ((_ is None!9657) lt!1474830) ((_ is None!9657) lt!1474833)) None!9657 (ite ((_ is None!9657) lt!1474833) lt!1474830 (ite ((_ is None!9657) lt!1474830) lt!1474833 (ite (>= (size!33184 (_1!24745 (v!40283 lt!1474830))) (size!33184 (_1!24745 (v!40283 lt!1474833)))) lt!1474830 lt!1474833)))))))

(declare-fun call!290434 () Option!9658)

(assert (=> b!4136414 (= lt!1474830 call!290434)))

(assert (=> b!4136414 (= lt!1474833 (maxPrefix!4131 thiss!25645 (t!341989 rules!3756) input!3238))))

(declare-fun b!4136415 () Bool)

(assert (=> b!4136415 (= e!2566500 (contains!9032 rules!3756 (rule!10450 (_1!24745 (get!14623 lt!1474834)))))))

(declare-fun b!4136416 () Bool)

(declare-fun res!1691574 () Bool)

(assert (=> b!4136416 (=> (not res!1691574) (not e!2566500))))

(assert (=> b!4136416 (= res!1691574 (matchR!6086 (regex!7352 (rule!10450 (_1!24745 (get!14623 lt!1474834)))) (list!16413 (charsOf!4951 (_1!24745 (get!14623 lt!1474834))))))))

(declare-fun b!4136417 () Bool)

(declare-fun e!2566498 () Bool)

(assert (=> b!4136417 (= e!2566498 e!2566500)))

(declare-fun res!1691575 () Bool)

(assert (=> b!4136417 (=> (not res!1691575) (not e!2566500))))

(declare-fun isDefined!7266 (Option!9658) Bool)

(assert (=> b!4136417 (= res!1691575 (isDefined!7266 lt!1474834))))

(declare-fun b!4136418 () Bool)

(assert (=> b!4136418 (= e!2566499 call!290434)))

(declare-fun b!4136420 () Bool)

(declare-fun res!1691576 () Bool)

(assert (=> b!4136420 (=> (not res!1691576) (not e!2566500))))

(assert (=> b!4136420 (= res!1691576 (= (++!11596 (list!16413 (charsOf!4951 (_1!24745 (get!14623 lt!1474834)))) (_2!24745 (get!14623 lt!1474834))) input!3238))))

(declare-fun bm!290429 () Bool)

(assert (=> bm!290429 (= call!290434 (maxPrefixOneRule!3070 thiss!25645 (h!50248 rules!3756) input!3238))))

(declare-fun b!4136421 () Bool)

(declare-fun res!1691573 () Bool)

(assert (=> b!4136421 (=> (not res!1691573) (not e!2566500))))

(assert (=> b!4136421 (= res!1691573 (= (list!16413 (charsOf!4951 (_1!24745 (get!14623 lt!1474834)))) (originalCharacters!7848 (_1!24745 (get!14623 lt!1474834)))))))

(declare-fun d!1224977 () Bool)

(assert (=> d!1224977 e!2566498))

(declare-fun res!1691572 () Bool)

(assert (=> d!1224977 (=> res!1691572 e!2566498)))

(assert (=> d!1224977 (= res!1691572 (isEmpty!26711 lt!1474834))))

(assert (=> d!1224977 (= lt!1474834 e!2566499)))

(declare-fun c!709393 () Bool)

(assert (=> d!1224977 (= c!709393 (and ((_ is Cons!44828) rules!3756) ((_ is Nil!44828) (t!341989 rules!3756))))))

(declare-fun lt!1474832 () Unit!64139)

(declare-fun lt!1474831 () Unit!64139)

(assert (=> d!1224977 (= lt!1474832 lt!1474831)))

(assert (=> d!1224977 (isPrefix!4287 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2772 (List!44950 List!44950) Unit!64139)

(assert (=> d!1224977 (= lt!1474831 (lemmaIsPrefixRefl!2772 input!3238 input!3238))))

(declare-fun rulesValidInductive!2726 (LexerInterface!6941 List!44952) Bool)

(assert (=> d!1224977 (rulesValidInductive!2726 thiss!25645 rules!3756)))

(assert (=> d!1224977 (= (maxPrefix!4131 thiss!25645 rules!3756 input!3238) lt!1474834)))

(declare-fun b!4136419 () Bool)

(declare-fun res!1691577 () Bool)

(assert (=> b!4136419 (=> (not res!1691577) (not e!2566500))))

(assert (=> b!4136419 (= res!1691577 (< (size!33185 (_2!24745 (get!14623 lt!1474834))) (size!33185 input!3238)))))

(assert (= (and d!1224977 c!709393) b!4136418))

(assert (= (and d!1224977 (not c!709393)) b!4136414))

(assert (= (or b!4136418 b!4136414) bm!290429))

(assert (= (and d!1224977 (not res!1691572)) b!4136417))

(assert (= (and b!4136417 res!1691575) b!4136421))

(assert (= (and b!4136421 res!1691573) b!4136419))

(assert (= (and b!4136419 res!1691577) b!4136420))

(assert (= (and b!4136420 res!1691576) b!4136413))

(assert (= (and b!4136413 res!1691571) b!4136416))

(assert (= (and b!4136416 res!1691574) b!4136415))

(declare-fun m!4733095 () Bool)

(assert (=> b!4136415 m!4733095))

(declare-fun m!4733097 () Bool)

(assert (=> b!4136415 m!4733097))

(assert (=> b!4136413 m!4733095))

(declare-fun m!4733099 () Bool)

(assert (=> b!4136413 m!4733099))

(assert (=> b!4136413 m!4733099))

(declare-fun m!4733101 () Bool)

(assert (=> b!4136413 m!4733101))

(declare-fun m!4733103 () Bool)

(assert (=> b!4136417 m!4733103))

(assert (=> b!4136420 m!4733095))

(declare-fun m!4733105 () Bool)

(assert (=> b!4136420 m!4733105))

(assert (=> b!4136420 m!4733105))

(declare-fun m!4733107 () Bool)

(assert (=> b!4136420 m!4733107))

(assert (=> b!4136420 m!4733107))

(declare-fun m!4733109 () Bool)

(assert (=> b!4136420 m!4733109))

(assert (=> b!4136419 m!4733095))

(declare-fun m!4733111 () Bool)

(assert (=> b!4136419 m!4733111))

(assert (=> b!4136419 m!4732889))

(assert (=> b!4136421 m!4733095))

(assert (=> b!4136421 m!4733105))

(assert (=> b!4136421 m!4733105))

(assert (=> b!4136421 m!4733107))

(declare-fun m!4733113 () Bool)

(assert (=> bm!290429 m!4733113))

(assert (=> b!4136416 m!4733095))

(assert (=> b!4136416 m!4733105))

(assert (=> b!4136416 m!4733105))

(assert (=> b!4136416 m!4733107))

(assert (=> b!4136416 m!4733107))

(declare-fun m!4733115 () Bool)

(assert (=> b!4136416 m!4733115))

(declare-fun m!4733117 () Bool)

(assert (=> b!4136414 m!4733117))

(declare-fun m!4733119 () Bool)

(assert (=> d!1224977 m!4733119))

(declare-fun m!4733121 () Bool)

(assert (=> d!1224977 m!4733121))

(declare-fun m!4733123 () Bool)

(assert (=> d!1224977 m!4733123))

(declare-fun m!4733125 () Bool)

(assert (=> d!1224977 m!4733125))

(assert (=> b!4136199 d!1224977))

(declare-fun d!1224987 () Bool)

(declare-fun fromListB!2507 (List!44950) BalanceConc!26720)

(assert (=> d!1224987 (= (seqFromList!5469 p!2912) (fromListB!2507 p!2912))))

(declare-fun bs!595132 () Bool)

(assert (= bs!595132 d!1224987))

(declare-fun m!4733127 () Bool)

(assert (=> bs!595132 m!4733127))

(assert (=> b!4136199 d!1224987))

(declare-fun d!1224989 () Bool)

(declare-fun lt!1474839 () Int)

(assert (=> d!1224989 (>= lt!1474839 0)))

(declare-fun e!2566517 () Int)

(assert (=> d!1224989 (= lt!1474839 e!2566517)))

(declare-fun c!709402 () Bool)

(assert (=> d!1224989 (= c!709402 ((_ is Nil!44826) p!2912))))

(assert (=> d!1224989 (= (size!33185 p!2912) lt!1474839)))

(declare-fun b!4136454 () Bool)

(assert (=> b!4136454 (= e!2566517 0)))

(declare-fun b!4136455 () Bool)

(assert (=> b!4136455 (= e!2566517 (+ 1 (size!33185 (t!341987 p!2912))))))

(assert (= (and d!1224989 c!709402) b!4136454))

(assert (= (and d!1224989 (not c!709402)) b!4136455))

(declare-fun m!4733129 () Bool)

(assert (=> b!4136455 m!4733129))

(assert (=> b!4136199 d!1224989))

(declare-fun d!1224991 () Bool)

(assert (=> d!1224991 (ruleValid!3158 thiss!25645 r!4008)))

(declare-fun lt!1474843 () Unit!64139)

(declare-fun choose!25282 (LexerInterface!6941 Rule!14504 List!44952) Unit!64139)

(assert (=> d!1224991 (= lt!1474843 (choose!25282 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1224991 (contains!9032 rules!3756 r!4008)))

(assert (=> d!1224991 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2198 thiss!25645 r!4008 rules!3756) lt!1474843)))

(declare-fun bs!595133 () Bool)

(assert (= bs!595133 d!1224991))

(assert (=> bs!595133 m!4732797))

(declare-fun m!4733145 () Bool)

(assert (=> bs!595133 m!4733145))

(assert (=> bs!595133 m!4732799))

(assert (=> b!4136210 d!1224991))

(declare-fun d!1224997 () Bool)

(declare-fun res!1691604 () Bool)

(declare-fun e!2566526 () Bool)

(assert (=> d!1224997 (=> (not res!1691604) (not e!2566526))))

(assert (=> d!1224997 (= res!1691604 (validRegex!5519 (regex!7352 rBis!149)))))

(assert (=> d!1224997 (= (ruleValid!3158 thiss!25645 rBis!149) e!2566526)))

(declare-fun b!4136472 () Bool)

(declare-fun res!1691605 () Bool)

(assert (=> b!4136472 (=> (not res!1691605) (not e!2566526))))

(assert (=> b!4136472 (= res!1691605 (not (nullable!4311 (regex!7352 rBis!149))))))

(declare-fun b!4136473 () Bool)

(assert (=> b!4136473 (= e!2566526 (not (= (tag!8212 rBis!149) (String!51661 ""))))))

(assert (= (and d!1224997 res!1691604) b!4136472))

(assert (= (and b!4136472 res!1691605) b!4136473))

(declare-fun m!4733147 () Bool)

(assert (=> d!1224997 m!4733147))

(declare-fun m!4733149 () Bool)

(assert (=> b!4136472 m!4733149))

(assert (=> b!4136210 d!1224997))

(declare-fun d!1225001 () Bool)

(assert (=> d!1225001 (ruleValid!3158 thiss!25645 rBis!149)))

(declare-fun lt!1474845 () Unit!64139)

(assert (=> d!1225001 (= lt!1474845 (choose!25282 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1225001 (contains!9032 rules!3756 rBis!149)))

(assert (=> d!1225001 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2198 thiss!25645 rBis!149 rules!3756) lt!1474845)))

(declare-fun bs!595134 () Bool)

(assert (= bs!595134 d!1225001))

(assert (=> bs!595134 m!4732811))

(declare-fun m!4733151 () Bool)

(assert (=> bs!595134 m!4733151))

(assert (=> bs!595134 m!4732801))

(assert (=> b!4136210 d!1225001))

(declare-fun b!4136497 () Bool)

(declare-fun e!2566543 () List!44950)

(assert (=> b!4136497 (= e!2566543 (Cons!44826 (h!50246 p!2912) (++!11596 (t!341987 p!2912) lt!1474727)))))

(declare-fun b!4136496 () Bool)

(assert (=> b!4136496 (= e!2566543 lt!1474727)))

(declare-fun b!4136498 () Bool)

(declare-fun res!1691624 () Bool)

(declare-fun e!2566542 () Bool)

(assert (=> b!4136498 (=> (not res!1691624) (not e!2566542))))

(declare-fun lt!1474851 () List!44950)

(assert (=> b!4136498 (= res!1691624 (= (size!33185 lt!1474851) (+ (size!33185 p!2912) (size!33185 lt!1474727))))))

(declare-fun d!1225003 () Bool)

(assert (=> d!1225003 e!2566542))

(declare-fun res!1691625 () Bool)

(assert (=> d!1225003 (=> (not res!1691625) (not e!2566542))))

(declare-fun content!6919 (List!44950) (InoxSet C!24700))

(assert (=> d!1225003 (= res!1691625 (= (content!6919 lt!1474851) ((_ map or) (content!6919 p!2912) (content!6919 lt!1474727))))))

(assert (=> d!1225003 (= lt!1474851 e!2566543)))

(declare-fun c!709408 () Bool)

(assert (=> d!1225003 (= c!709408 ((_ is Nil!44826) p!2912))))

(assert (=> d!1225003 (= (++!11596 p!2912 lt!1474727) lt!1474851)))

(declare-fun b!4136499 () Bool)

(assert (=> b!4136499 (= e!2566542 (or (not (= lt!1474727 Nil!44826)) (= lt!1474851 p!2912)))))

(assert (= (and d!1225003 c!709408) b!4136496))

(assert (= (and d!1225003 (not c!709408)) b!4136497))

(assert (= (and d!1225003 res!1691625) b!4136498))

(assert (= (and b!4136498 res!1691624) b!4136499))

(declare-fun m!4733161 () Bool)

(assert (=> b!4136497 m!4733161))

(declare-fun m!4733163 () Bool)

(assert (=> b!4136498 m!4733163))

(assert (=> b!4136498 m!4732825))

(declare-fun m!4733165 () Bool)

(assert (=> b!4136498 m!4733165))

(declare-fun m!4733167 () Bool)

(assert (=> d!1225003 m!4733167))

(declare-fun m!4733169 () Bool)

(assert (=> d!1225003 m!4733169))

(declare-fun m!4733171 () Bool)

(assert (=> d!1225003 m!4733171))

(assert (=> b!4136189 d!1225003))

(declare-fun d!1225009 () Bool)

(declare-fun lt!1474852 () List!44950)

(assert (=> d!1225009 (= (++!11596 lt!1474734 lt!1474852) input!3238)))

(declare-fun e!2566544 () List!44950)

(assert (=> d!1225009 (= lt!1474852 e!2566544)))

(declare-fun c!709409 () Bool)

(assert (=> d!1225009 (= c!709409 ((_ is Cons!44826) lt!1474734))))

(assert (=> d!1225009 (>= (size!33185 input!3238) (size!33185 lt!1474734))))

(assert (=> d!1225009 (= (getSuffix!2614 input!3238 lt!1474734) lt!1474852)))

(declare-fun b!4136500 () Bool)

(assert (=> b!4136500 (= e!2566544 (getSuffix!2614 (tail!6512 input!3238) (t!341987 lt!1474734)))))

(declare-fun b!4136501 () Bool)

(assert (=> b!4136501 (= e!2566544 input!3238)))

(assert (= (and d!1225009 c!709409) b!4136500))

(assert (= (and d!1225009 (not c!709409)) b!4136501))

(declare-fun m!4733173 () Bool)

(assert (=> d!1225009 m!4733173))

(assert (=> d!1225009 m!4732889))

(assert (=> d!1225009 m!4732891))

(assert (=> b!4136500 m!4732899))

(assert (=> b!4136500 m!4732899))

(declare-fun m!4733175 () Bool)

(assert (=> b!4136500 m!4733175))

(assert (=> b!4136189 d!1225009))

(declare-fun d!1225013 () Bool)

(declare-fun list!16415 (Conc!13563) List!44950)

(assert (=> d!1225013 (= (list!16413 lt!1474732) (list!16415 (c!709356 lt!1474732)))))

(declare-fun bs!595135 () Bool)

(assert (= bs!595135 d!1225013))

(declare-fun m!4733177 () Bool)

(assert (=> bs!595135 m!4733177))

(assert (=> b!4136189 d!1225013))

(declare-fun b!4136586 () Bool)

(declare-fun res!1691653 () Bool)

(declare-fun e!2566591 () Bool)

(assert (=> b!4136586 (=> res!1691653 e!2566591)))

(assert (=> b!4136586 (= res!1691653 (not (isEmpty!26709 (tail!6512 p!2912))))))

(declare-fun b!4136587 () Bool)

(declare-fun res!1691652 () Bool)

(declare-fun e!2566592 () Bool)

(assert (=> b!4136587 (=> res!1691652 e!2566592)))

(assert (=> b!4136587 (= res!1691652 (not ((_ is ElementMatch!12257) (regex!7352 r!4008))))))

(declare-fun e!2566595 () Bool)

(assert (=> b!4136587 (= e!2566595 e!2566592)))

(declare-fun bm!290435 () Bool)

(declare-fun call!290440 () Bool)

(assert (=> bm!290435 (= call!290440 (isEmpty!26709 p!2912))))

(declare-fun b!4136588 () Bool)

(declare-fun e!2566589 () Bool)

(declare-fun derivativeStep!3706 (Regex!12257 C!24700) Regex!12257)

(assert (=> b!4136588 (= e!2566589 (matchR!6086 (derivativeStep!3706 (regex!7352 r!4008) (head!8723 p!2912)) (tail!6512 p!2912)))))

(declare-fun b!4136589 () Bool)

(declare-fun e!2566593 () Bool)

(declare-fun lt!1474860 () Bool)

(assert (=> b!4136589 (= e!2566593 (= lt!1474860 call!290440))))

(declare-fun b!4136590 () Bool)

(assert (=> b!4136590 (= e!2566589 (nullable!4311 (regex!7352 r!4008)))))

(declare-fun b!4136591 () Bool)

(assert (=> b!4136591 (= e!2566593 e!2566595)))

(declare-fun c!709421 () Bool)

(assert (=> b!4136591 (= c!709421 ((_ is EmptyLang!12257) (regex!7352 r!4008)))))

(declare-fun b!4136592 () Bool)

(declare-fun res!1691658 () Bool)

(declare-fun e!2566594 () Bool)

(assert (=> b!4136592 (=> (not res!1691658) (not e!2566594))))

(assert (=> b!4136592 (= res!1691658 (isEmpty!26709 (tail!6512 p!2912)))))

(declare-fun b!4136593 () Bool)

(declare-fun res!1691659 () Bool)

(assert (=> b!4136593 (=> res!1691659 e!2566592)))

(assert (=> b!4136593 (= res!1691659 e!2566594)))

(declare-fun res!1691656 () Bool)

(assert (=> b!4136593 (=> (not res!1691656) (not e!2566594))))

(assert (=> b!4136593 (= res!1691656 lt!1474860)))

(declare-fun b!4136594 () Bool)

(assert (=> b!4136594 (= e!2566591 (not (= (head!8723 p!2912) (c!709357 (regex!7352 r!4008)))))))

(declare-fun d!1225015 () Bool)

(assert (=> d!1225015 e!2566593))

(declare-fun c!709420 () Bool)

(assert (=> d!1225015 (= c!709420 ((_ is EmptyExpr!12257) (regex!7352 r!4008)))))

(assert (=> d!1225015 (= lt!1474860 e!2566589)))

(declare-fun c!709422 () Bool)

(assert (=> d!1225015 (= c!709422 (isEmpty!26709 p!2912))))

(assert (=> d!1225015 (validRegex!5519 (regex!7352 r!4008))))

(assert (=> d!1225015 (= (matchR!6086 (regex!7352 r!4008) p!2912) lt!1474860)))

(declare-fun b!4136595 () Bool)

(declare-fun e!2566590 () Bool)

(assert (=> b!4136595 (= e!2566592 e!2566590)))

(declare-fun res!1691654 () Bool)

(assert (=> b!4136595 (=> (not res!1691654) (not e!2566590))))

(assert (=> b!4136595 (= res!1691654 (not lt!1474860))))

(declare-fun b!4136596 () Bool)

(assert (=> b!4136596 (= e!2566595 (not lt!1474860))))

(declare-fun b!4136597 () Bool)

(assert (=> b!4136597 (= e!2566594 (= (head!8723 p!2912) (c!709357 (regex!7352 r!4008))))))

(declare-fun b!4136598 () Bool)

(assert (=> b!4136598 (= e!2566590 e!2566591)))

(declare-fun res!1691655 () Bool)

(assert (=> b!4136598 (=> res!1691655 e!2566591)))

(assert (=> b!4136598 (= res!1691655 call!290440)))

(declare-fun b!4136599 () Bool)

(declare-fun res!1691657 () Bool)

(assert (=> b!4136599 (=> (not res!1691657) (not e!2566594))))

(assert (=> b!4136599 (= res!1691657 (not call!290440))))

(assert (= (and d!1225015 c!709422) b!4136590))

(assert (= (and d!1225015 (not c!709422)) b!4136588))

(assert (= (and d!1225015 c!709420) b!4136589))

(assert (= (and d!1225015 (not c!709420)) b!4136591))

(assert (= (and b!4136591 c!709421) b!4136596))

(assert (= (and b!4136591 (not c!709421)) b!4136587))

(assert (= (and b!4136587 (not res!1691652)) b!4136593))

(assert (= (and b!4136593 res!1691656) b!4136599))

(assert (= (and b!4136599 res!1691657) b!4136592))

(assert (= (and b!4136592 res!1691658) b!4136597))

(assert (= (and b!4136593 (not res!1691659)) b!4136595))

(assert (= (and b!4136595 res!1691654) b!4136598))

(assert (= (and b!4136598 (not res!1691655)) b!4136586))

(assert (= (and b!4136586 (not res!1691653)) b!4136594))

(assert (= (or b!4136589 b!4136598 b!4136599) bm!290435))

(declare-fun m!4733209 () Bool)

(assert (=> b!4136586 m!4733209))

(assert (=> b!4136586 m!4733209))

(declare-fun m!4733211 () Bool)

(assert (=> b!4136586 m!4733211))

(declare-fun m!4733213 () Bool)

(assert (=> b!4136588 m!4733213))

(assert (=> b!4136588 m!4733213))

(declare-fun m!4733215 () Bool)

(assert (=> b!4136588 m!4733215))

(assert (=> b!4136588 m!4733209))

(assert (=> b!4136588 m!4733215))

(assert (=> b!4136588 m!4733209))

(declare-fun m!4733217 () Bool)

(assert (=> b!4136588 m!4733217))

(assert (=> b!4136592 m!4733209))

(assert (=> b!4136592 m!4733209))

(assert (=> b!4136592 m!4733211))

(assert (=> b!4136590 m!4732935))

(assert (=> bm!290435 m!4732821))

(assert (=> d!1225015 m!4732821))

(assert (=> d!1225015 m!4732933))

(assert (=> b!4136594 m!4733213))

(assert (=> b!4136597 m!4733213))

(assert (=> b!4136200 d!1225015))

(declare-fun d!1225023 () Bool)

(declare-fun lt!1474861 () Bool)

(assert (=> d!1225023 (= lt!1474861 (select (content!6917 (tail!6511 rules!3756)) r!4008))))

(declare-fun e!2566598 () Bool)

(assert (=> d!1225023 (= lt!1474861 e!2566598)))

(declare-fun res!1691661 () Bool)

(assert (=> d!1225023 (=> (not res!1691661) (not e!2566598))))

(assert (=> d!1225023 (= res!1691661 ((_ is Cons!44828) (tail!6511 rules!3756)))))

(assert (=> d!1225023 (= (contains!9032 (tail!6511 rules!3756) r!4008) lt!1474861)))

(declare-fun b!4136601 () Bool)

(declare-fun e!2566597 () Bool)

(assert (=> b!4136601 (= e!2566598 e!2566597)))

(declare-fun res!1691660 () Bool)

(assert (=> b!4136601 (=> res!1691660 e!2566597)))

(assert (=> b!4136601 (= res!1691660 (= (h!50248 (tail!6511 rules!3756)) r!4008))))

(declare-fun b!4136602 () Bool)

(assert (=> b!4136602 (= e!2566597 (contains!9032 (t!341989 (tail!6511 rules!3756)) r!4008))))

(assert (= (and d!1225023 res!1691661) b!4136601))

(assert (= (and b!4136601 (not res!1691660)) b!4136602))

(assert (=> d!1225023 m!4732849))

(declare-fun m!4733219 () Bool)

(assert (=> d!1225023 m!4733219))

(declare-fun m!4733221 () Bool)

(assert (=> d!1225023 m!4733221))

(declare-fun m!4733223 () Bool)

(assert (=> b!4136602 m!4733223))

(assert (=> b!4136198 d!1225023))

(declare-fun d!1225025 () Bool)

(assert (=> d!1225025 (= (tail!6511 rules!3756) (t!341989 rules!3756))))

(assert (=> b!4136198 d!1225025))

(declare-fun d!1225027 () Bool)

(assert (=> d!1225027 (contains!9032 (tail!6511 rules!3756) r!4008)))

(declare-fun lt!1474864 () Unit!64139)

(declare-fun choose!25283 (List!44952 Rule!14504 Rule!14504) Unit!64139)

(assert (=> d!1225027 (= lt!1474864 (choose!25283 rules!3756 rBis!149 r!4008))))

(declare-fun e!2566601 () Bool)

(assert (=> d!1225027 e!2566601))

(declare-fun res!1691664 () Bool)

(assert (=> d!1225027 (=> (not res!1691664) (not e!2566601))))

(assert (=> d!1225027 (= res!1691664 (contains!9032 rules!3756 rBis!149))))

(assert (=> d!1225027 (= (lemmaGetIndexBiggerAndHeadEqThenTailContains!56 rules!3756 rBis!149 r!4008) lt!1474864)))

(declare-fun b!4136605 () Bool)

(assert (=> b!4136605 (= e!2566601 (contains!9032 rules!3756 r!4008))))

(assert (= (and d!1225027 res!1691664) b!4136605))

(assert (=> d!1225027 m!4732849))

(assert (=> d!1225027 m!4732849))

(assert (=> d!1225027 m!4732851))

(declare-fun m!4733225 () Bool)

(assert (=> d!1225027 m!4733225))

(assert (=> d!1225027 m!4732801))

(assert (=> b!4136605 m!4732799))

(assert (=> b!4136198 d!1225027))

(declare-fun d!1225029 () Bool)

(assert (=> d!1225029 (not (= rBis!149 r!4008))))

(declare-fun lt!1474867 () Unit!64139)

(declare-fun choose!25284 (LexerInterface!6941 List!44952 Rule!14504 Rule!14504) Unit!64139)

(assert (=> d!1225029 (= lt!1474867 (choose!25284 thiss!25645 rules!3756 rBis!149 r!4008))))

(assert (=> d!1225029 (contains!9032 rules!3756 rBis!149)))

(assert (=> d!1225029 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!50 thiss!25645 rules!3756 rBis!149 r!4008) lt!1474867)))

(declare-fun bs!595137 () Bool)

(assert (= bs!595137 d!1225029))

(declare-fun m!4733227 () Bool)

(assert (=> bs!595137 m!4733227))

(assert (=> bs!595137 m!4732801))

(assert (=> b!4136198 d!1225029))

(declare-fun b!4136624 () Bool)

(declare-fun e!2566612 () Bool)

(declare-datatypes ((tuple2!43226 0))(
  ( (tuple2!43227 (_1!24747 List!44950) (_2!24747 List!44950)) )
))
(declare-fun findLongestMatchInner!1515 (Regex!12257 List!44950 Int List!44950 List!44950 Int) tuple2!43226)

(assert (=> b!4136624 (= e!2566612 (matchR!6086 (regex!7352 rBis!149) (_1!24747 (findLongestMatchInner!1515 (regex!7352 rBis!149) Nil!44826 (size!33185 Nil!44826) input!3238 input!3238 (size!33185 input!3238)))))))

(declare-fun d!1225031 () Bool)

(declare-fun e!2566610 () Bool)

(assert (=> d!1225031 e!2566610))

(declare-fun res!1691681 () Bool)

(assert (=> d!1225031 (=> res!1691681 e!2566610)))

(declare-fun lt!1474880 () Option!9658)

(assert (=> d!1225031 (= res!1691681 (isEmpty!26711 lt!1474880))))

(declare-fun e!2566613 () Option!9658)

(assert (=> d!1225031 (= lt!1474880 e!2566613)))

(declare-fun c!709425 () Bool)

(declare-fun lt!1474878 () tuple2!43226)

(assert (=> d!1225031 (= c!709425 (isEmpty!26709 (_1!24747 lt!1474878)))))

(declare-fun findLongestMatch!1428 (Regex!12257 List!44950) tuple2!43226)

(assert (=> d!1225031 (= lt!1474878 (findLongestMatch!1428 (regex!7352 rBis!149) input!3238))))

(assert (=> d!1225031 (ruleValid!3158 thiss!25645 rBis!149)))

(assert (=> d!1225031 (= (maxPrefixOneRule!3070 thiss!25645 rBis!149 input!3238) lt!1474880)))

(declare-fun b!4136625 () Bool)

(assert (=> b!4136625 (= e!2566613 None!9657)))

(declare-fun b!4136626 () Bool)

(assert (=> b!4136626 (= e!2566613 (Some!9657 (tuple2!43223 (Token!13635 (apply!10425 (transformation!7352 rBis!149) (seqFromList!5469 (_1!24747 lt!1474878))) rBis!149 (size!33186 (seqFromList!5469 (_1!24747 lt!1474878))) (_1!24747 lt!1474878)) (_2!24747 lt!1474878))))))

(declare-fun lt!1474882 () Unit!64139)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1488 (Regex!12257 List!44950) Unit!64139)

(assert (=> b!4136626 (= lt!1474882 (longestMatchIsAcceptedByMatchOrIsEmpty!1488 (regex!7352 rBis!149) input!3238))))

(declare-fun res!1691684 () Bool)

(assert (=> b!4136626 (= res!1691684 (isEmpty!26709 (_1!24747 (findLongestMatchInner!1515 (regex!7352 rBis!149) Nil!44826 (size!33185 Nil!44826) input!3238 input!3238 (size!33185 input!3238)))))))

(assert (=> b!4136626 (=> res!1691684 e!2566612)))

(assert (=> b!4136626 e!2566612))

(declare-fun lt!1474881 () Unit!64139)

(assert (=> b!4136626 (= lt!1474881 lt!1474882)))

(declare-fun lt!1474879 () Unit!64139)

(assert (=> b!4136626 (= lt!1474879 (lemmaSemiInverse!2210 (transformation!7352 rBis!149) (seqFromList!5469 (_1!24747 lt!1474878))))))

(declare-fun b!4136627 () Bool)

(declare-fun res!1691680 () Bool)

(declare-fun e!2566611 () Bool)

(assert (=> b!4136627 (=> (not res!1691680) (not e!2566611))))

(assert (=> b!4136627 (= res!1691680 (= (++!11596 (list!16413 (charsOf!4951 (_1!24745 (get!14623 lt!1474880)))) (_2!24745 (get!14623 lt!1474880))) input!3238))))

(declare-fun b!4136628 () Bool)

(assert (=> b!4136628 (= e!2566611 (= (size!33184 (_1!24745 (get!14623 lt!1474880))) (size!33185 (originalCharacters!7848 (_1!24745 (get!14623 lt!1474880))))))))

(declare-fun b!4136629 () Bool)

(assert (=> b!4136629 (= e!2566610 e!2566611)))

(declare-fun res!1691685 () Bool)

(assert (=> b!4136629 (=> (not res!1691685) (not e!2566611))))

(assert (=> b!4136629 (= res!1691685 (matchR!6086 (regex!7352 rBis!149) (list!16413 (charsOf!4951 (_1!24745 (get!14623 lt!1474880))))))))

(declare-fun b!4136630 () Bool)

(declare-fun res!1691679 () Bool)

(assert (=> b!4136630 (=> (not res!1691679) (not e!2566611))))

(assert (=> b!4136630 (= res!1691679 (= (rule!10450 (_1!24745 (get!14623 lt!1474880))) rBis!149))))

(declare-fun b!4136631 () Bool)

(declare-fun res!1691683 () Bool)

(assert (=> b!4136631 (=> (not res!1691683) (not e!2566611))))

(assert (=> b!4136631 (= res!1691683 (= (value!230086 (_1!24745 (get!14623 lt!1474880))) (apply!10425 (transformation!7352 (rule!10450 (_1!24745 (get!14623 lt!1474880)))) (seqFromList!5469 (originalCharacters!7848 (_1!24745 (get!14623 lt!1474880)))))))))

(declare-fun b!4136632 () Bool)

(declare-fun res!1691682 () Bool)

(assert (=> b!4136632 (=> (not res!1691682) (not e!2566611))))

(assert (=> b!4136632 (= res!1691682 (< (size!33185 (_2!24745 (get!14623 lt!1474880))) (size!33185 input!3238)))))

(assert (= (and d!1225031 c!709425) b!4136625))

(assert (= (and d!1225031 (not c!709425)) b!4136626))

(assert (= (and b!4136626 (not res!1691684)) b!4136624))

(assert (= (and d!1225031 (not res!1691681)) b!4136629))

(assert (= (and b!4136629 res!1691685) b!4136627))

(assert (= (and b!4136627 res!1691680) b!4136632))

(assert (= (and b!4136632 res!1691682) b!4136630))

(assert (= (and b!4136630 res!1691679) b!4136631))

(assert (= (and b!4136631 res!1691683) b!4136628))

(declare-fun m!4733229 () Bool)

(assert (=> b!4136631 m!4733229))

(declare-fun m!4733231 () Bool)

(assert (=> b!4136631 m!4733231))

(assert (=> b!4136631 m!4733231))

(declare-fun m!4733233 () Bool)

(assert (=> b!4136631 m!4733233))

(assert (=> b!4136629 m!4733229))

(declare-fun m!4733235 () Bool)

(assert (=> b!4136629 m!4733235))

(assert (=> b!4136629 m!4733235))

(declare-fun m!4733237 () Bool)

(assert (=> b!4136629 m!4733237))

(assert (=> b!4136629 m!4733237))

(declare-fun m!4733239 () Bool)

(assert (=> b!4136629 m!4733239))

(assert (=> b!4136628 m!4733229))

(declare-fun m!4733241 () Bool)

(assert (=> b!4136628 m!4733241))

(declare-fun m!4733243 () Bool)

(assert (=> b!4136626 m!4733243))

(declare-fun m!4733245 () Bool)

(assert (=> b!4136626 m!4733245))

(declare-fun m!4733247 () Bool)

(assert (=> b!4136626 m!4733247))

(assert (=> b!4136626 m!4733245))

(declare-fun m!4733249 () Bool)

(assert (=> b!4136626 m!4733249))

(declare-fun m!4733251 () Bool)

(assert (=> b!4136626 m!4733251))

(assert (=> b!4136626 m!4733245))

(declare-fun m!4733253 () Bool)

(assert (=> b!4136626 m!4733253))

(assert (=> b!4136626 m!4733243))

(assert (=> b!4136626 m!4732889))

(declare-fun m!4733255 () Bool)

(assert (=> b!4136626 m!4733255))

(assert (=> b!4136626 m!4732889))

(assert (=> b!4136626 m!4733245))

(declare-fun m!4733257 () Bool)

(assert (=> b!4136626 m!4733257))

(assert (=> b!4136630 m!4733229))

(assert (=> b!4136632 m!4733229))

(declare-fun m!4733259 () Bool)

(assert (=> b!4136632 m!4733259))

(assert (=> b!4136632 m!4732889))

(declare-fun m!4733261 () Bool)

(assert (=> d!1225031 m!4733261))

(declare-fun m!4733263 () Bool)

(assert (=> d!1225031 m!4733263))

(declare-fun m!4733265 () Bool)

(assert (=> d!1225031 m!4733265))

(assert (=> d!1225031 m!4732811))

(assert (=> b!4136624 m!4733243))

(assert (=> b!4136624 m!4732889))

(assert (=> b!4136624 m!4733243))

(assert (=> b!4136624 m!4732889))

(assert (=> b!4136624 m!4733255))

(declare-fun m!4733267 () Bool)

(assert (=> b!4136624 m!4733267))

(assert (=> b!4136627 m!4733229))

(assert (=> b!4136627 m!4733235))

(assert (=> b!4136627 m!4733235))

(assert (=> b!4136627 m!4733237))

(assert (=> b!4136627 m!4733237))

(declare-fun m!4733269 () Bool)

(assert (=> b!4136627 m!4733269))

(assert (=> b!4136198 d!1225031))

(declare-fun d!1225033 () Bool)

(assert (=> d!1225033 (= (isEmpty!26711 lt!1474724) (not ((_ is Some!9657) lt!1474724)))))

(assert (=> b!4136198 d!1225033))

(declare-fun d!1225035 () Bool)

(assert (=> d!1225035 (= (inv!59431 (tag!8212 rBis!149)) (= (mod (str.len (value!230085 (tag!8212 rBis!149))) 2) 0))))

(assert (=> b!4136207 d!1225035))

(declare-fun d!1225037 () Bool)

(declare-fun res!1691686 () Bool)

(declare-fun e!2566614 () Bool)

(assert (=> d!1225037 (=> (not res!1691686) (not e!2566614))))

(assert (=> d!1225037 (= res!1691686 (semiInverseModEq!3175 (toChars!9875 (transformation!7352 rBis!149)) (toValue!10016 (transformation!7352 rBis!149))))))

(assert (=> d!1225037 (= (inv!59433 (transformation!7352 rBis!149)) e!2566614)))

(declare-fun b!4136633 () Bool)

(assert (=> b!4136633 (= e!2566614 (equivClasses!3074 (toChars!9875 (transformation!7352 rBis!149)) (toValue!10016 (transformation!7352 rBis!149))))))

(assert (= (and d!1225037 res!1691686) b!4136633))

(declare-fun m!4733271 () Bool)

(assert (=> d!1225037 m!4733271))

(declare-fun m!4733273 () Bool)

(assert (=> b!4136633 m!4733273))

(assert (=> b!4136207 d!1225037))

(declare-fun d!1225039 () Bool)

(assert (=> d!1225039 (= (inv!59431 (tag!8212 r!4008)) (= (mod (str.len (value!230085 (tag!8212 r!4008))) 2) 0))))

(assert (=> b!4136197 d!1225039))

(declare-fun d!1225041 () Bool)

(declare-fun res!1691687 () Bool)

(declare-fun e!2566615 () Bool)

(assert (=> d!1225041 (=> (not res!1691687) (not e!2566615))))

(assert (=> d!1225041 (= res!1691687 (semiInverseModEq!3175 (toChars!9875 (transformation!7352 r!4008)) (toValue!10016 (transformation!7352 r!4008))))))

(assert (=> d!1225041 (= (inv!59433 (transformation!7352 r!4008)) e!2566615)))

(declare-fun b!4136634 () Bool)

(assert (=> b!4136634 (= e!2566615 (equivClasses!3074 (toChars!9875 (transformation!7352 r!4008)) (toValue!10016 (transformation!7352 r!4008))))))

(assert (= (and d!1225041 res!1691687) b!4136634))

(declare-fun m!4733275 () Bool)

(assert (=> d!1225041 m!4733275))

(declare-fun m!4733277 () Bool)

(assert (=> b!4136634 m!4733277))

(assert (=> b!4136197 d!1225041))

(declare-fun d!1225043 () Bool)

(declare-fun res!1691690 () Bool)

(declare-fun e!2566618 () Bool)

(assert (=> d!1225043 (=> (not res!1691690) (not e!2566618))))

(declare-fun rulesValid!2889 (LexerInterface!6941 List!44952) Bool)

(assert (=> d!1225043 (= res!1691690 (rulesValid!2889 thiss!25645 rules!3756))))

(assert (=> d!1225043 (= (rulesInvariant!6238 thiss!25645 rules!3756) e!2566618)))

(declare-fun b!4136637 () Bool)

(declare-datatypes ((List!44954 0))(
  ( (Nil!44830) (Cons!44830 (h!50250 String!51660) (t!342039 List!44954)) )
))
(declare-fun noDuplicateTag!2972 (LexerInterface!6941 List!44952 List!44954) Bool)

(assert (=> b!4136637 (= e!2566618 (noDuplicateTag!2972 thiss!25645 rules!3756 Nil!44830))))

(assert (= (and d!1225043 res!1691690) b!4136637))

(declare-fun m!4733279 () Bool)

(assert (=> d!1225043 m!4733279))

(declare-fun m!4733281 () Bool)

(assert (=> b!4136637 m!4733281))

(assert (=> b!4136208 d!1225043))

(declare-fun d!1225045 () Bool)

(declare-fun e!2566620 () Bool)

(assert (=> d!1225045 e!2566620))

(declare-fun res!1691693 () Bool)

(assert (=> d!1225045 (=> res!1691693 e!2566620)))

(declare-fun lt!1474883 () Bool)

(assert (=> d!1225045 (= res!1691693 (not lt!1474883))))

(declare-fun e!2566621 () Bool)

(assert (=> d!1225045 (= lt!1474883 e!2566621)))

(declare-fun res!1691692 () Bool)

(assert (=> d!1225045 (=> res!1691692 e!2566621)))

(assert (=> d!1225045 (= res!1691692 ((_ is Nil!44826) p!2912))))

(assert (=> d!1225045 (= (isPrefix!4287 p!2912 input!3238) lt!1474883)))

(declare-fun b!4136641 () Bool)

(assert (=> b!4136641 (= e!2566620 (>= (size!33185 input!3238) (size!33185 p!2912)))))

(declare-fun b!4136639 () Bool)

(declare-fun res!1691694 () Bool)

(declare-fun e!2566619 () Bool)

(assert (=> b!4136639 (=> (not res!1691694) (not e!2566619))))

(assert (=> b!4136639 (= res!1691694 (= (head!8723 p!2912) (head!8723 input!3238)))))

(declare-fun b!4136638 () Bool)

(assert (=> b!4136638 (= e!2566621 e!2566619)))

(declare-fun res!1691691 () Bool)

(assert (=> b!4136638 (=> (not res!1691691) (not e!2566619))))

(assert (=> b!4136638 (= res!1691691 (not ((_ is Nil!44826) input!3238)))))

(declare-fun b!4136640 () Bool)

(assert (=> b!4136640 (= e!2566619 (isPrefix!4287 (tail!6512 p!2912) (tail!6512 input!3238)))))

(assert (= (and d!1225045 (not res!1691692)) b!4136638))

(assert (= (and b!4136638 res!1691691) b!4136639))

(assert (= (and b!4136639 res!1691694) b!4136640))

(assert (= (and d!1225045 (not res!1691693)) b!4136641))

(assert (=> b!4136641 m!4732889))

(assert (=> b!4136641 m!4732825))

(assert (=> b!4136639 m!4733213))

(assert (=> b!4136639 m!4732895))

(assert (=> b!4136640 m!4733209))

(assert (=> b!4136640 m!4732899))

(assert (=> b!4136640 m!4733209))

(assert (=> b!4136640 m!4732899))

(declare-fun m!4733283 () Bool)

(assert (=> b!4136640 m!4733283))

(assert (=> b!4136195 d!1225045))

(declare-fun d!1225047 () Bool)

(assert (=> d!1225047 (= (isEmpty!26710 rules!3756) ((_ is Nil!44828) rules!3756))))

(assert (=> b!4136194 d!1225047))

(declare-fun d!1225049 () Bool)

(declare-fun lt!1474884 () Bool)

(assert (=> d!1225049 (= lt!1474884 (select (content!6917 rules!3756) rBis!149))))

(declare-fun e!2566623 () Bool)

(assert (=> d!1225049 (= lt!1474884 e!2566623)))

(declare-fun res!1691696 () Bool)

(assert (=> d!1225049 (=> (not res!1691696) (not e!2566623))))

(assert (=> d!1225049 (= res!1691696 ((_ is Cons!44828) rules!3756))))

(assert (=> d!1225049 (= (contains!9032 rules!3756 rBis!149) lt!1474884)))

(declare-fun b!4136642 () Bool)

(declare-fun e!2566622 () Bool)

(assert (=> b!4136642 (= e!2566623 e!2566622)))

(declare-fun res!1691695 () Bool)

(assert (=> b!4136642 (=> res!1691695 e!2566622)))

(assert (=> b!4136642 (= res!1691695 (= (h!50248 rules!3756) rBis!149))))

(declare-fun b!4136643 () Bool)

(assert (=> b!4136643 (= e!2566622 (contains!9032 (t!341989 rules!3756) rBis!149))))

(assert (= (and d!1225049 res!1691696) b!4136642))

(assert (= (and b!4136642 (not res!1691695)) b!4136643))

(assert (=> d!1225049 m!4732915))

(declare-fun m!4733285 () Bool)

(assert (=> d!1225049 m!4733285))

(declare-fun m!4733287 () Bool)

(assert (=> b!4136643 m!4733287))

(assert (=> b!4136205 d!1225049))

(declare-fun b!4136654 () Bool)

(declare-fun b_free!117603 () Bool)

(declare-fun b_next!118307 () Bool)

(assert (=> b!4136654 (= b_free!117603 (not b_next!118307))))

(declare-fun t!342033 () Bool)

(declare-fun tb!248301 () Bool)

(assert (=> (and b!4136654 (= (toValue!10016 (transformation!7352 (h!50248 (t!341989 rules!3756)))) (toValue!10016 (transformation!7352 r!4008))) t!342033) tb!248301))

(declare-fun result!301874 () Bool)

(assert (= result!301874 result!301832))

(assert (=> d!1224941 t!342033))

(assert (=> d!1224943 t!342033))

(declare-fun b_and!320993 () Bool)

(declare-fun tp!1260903 () Bool)

(assert (=> b!4136654 (= tp!1260903 (and (=> t!342033 result!301874) b_and!320993))))

(declare-fun b_free!117605 () Bool)

(declare-fun b_next!118309 () Bool)

(assert (=> b!4136654 (= b_free!117605 (not b_next!118309))))

(declare-fun tb!248303 () Bool)

(declare-fun t!342035 () Bool)

(assert (=> (and b!4136654 (= (toChars!9875 (transformation!7352 (h!50248 (t!341989 rules!3756)))) (toChars!9875 (transformation!7352 (rule!10450 (_1!24745 (get!14623 lt!1474724)))))) t!342035) tb!248303))

(declare-fun result!301876 () Bool)

(assert (= result!301876 result!301824))

(assert (=> d!1224931 t!342035))

(declare-fun tb!248305 () Bool)

(declare-fun t!342037 () Bool)

(assert (=> (and b!4136654 (= (toChars!9875 (transformation!7352 (h!50248 (t!341989 rules!3756)))) (toChars!9875 (transformation!7352 r!4008))) t!342037) tb!248305))

(declare-fun result!301878 () Bool)

(assert (= result!301878 result!301840))

(assert (=> d!1224943 t!342037))

(declare-fun tp!1260902 () Bool)

(declare-fun b_and!320995 () Bool)

(assert (=> b!4136654 (= tp!1260902 (and (=> t!342035 result!301876) (=> t!342037 result!301878) b_and!320995))))

(declare-fun e!2566635 () Bool)

(assert (=> b!4136654 (= e!2566635 (and tp!1260903 tp!1260902))))

(declare-fun e!2566634 () Bool)

(declare-fun tp!1260901 () Bool)

(declare-fun b!4136653 () Bool)

(assert (=> b!4136653 (= e!2566634 (and tp!1260901 (inv!59431 (tag!8212 (h!50248 (t!341989 rules!3756)))) (inv!59433 (transformation!7352 (h!50248 (t!341989 rules!3756)))) e!2566635))))

(declare-fun b!4136652 () Bool)

(declare-fun e!2566633 () Bool)

(declare-fun tp!1260900 () Bool)

(assert (=> b!4136652 (= e!2566633 (and e!2566634 tp!1260900))))

(assert (=> b!4136204 (= tp!1260832 e!2566633)))

(assert (= b!4136653 b!4136654))

(assert (= b!4136652 b!4136653))

(assert (= (and b!4136204 ((_ is Cons!44828) (t!341989 rules!3756))) b!4136652))

(declare-fun m!4733289 () Bool)

(assert (=> b!4136653 m!4733289))

(declare-fun m!4733291 () Bool)

(assert (=> b!4136653 m!4733291))

(declare-fun b!4136665 () Bool)

(declare-fun e!2566638 () Bool)

(assert (=> b!4136665 (= e!2566638 tp_is_empty!21437)))

(assert (=> b!4136207 (= tp!1260842 e!2566638)))

(declare-fun b!4136668 () Bool)

(declare-fun tp!1260914 () Bool)

(declare-fun tp!1260916 () Bool)

(assert (=> b!4136668 (= e!2566638 (and tp!1260914 tp!1260916))))

(declare-fun b!4136666 () Bool)

(declare-fun tp!1260917 () Bool)

(declare-fun tp!1260918 () Bool)

(assert (=> b!4136666 (= e!2566638 (and tp!1260917 tp!1260918))))

(declare-fun b!4136667 () Bool)

(declare-fun tp!1260915 () Bool)

(assert (=> b!4136667 (= e!2566638 tp!1260915)))

(assert (= (and b!4136207 ((_ is ElementMatch!12257) (regex!7352 rBis!149))) b!4136665))

(assert (= (and b!4136207 ((_ is Concat!19840) (regex!7352 rBis!149))) b!4136666))

(assert (= (and b!4136207 ((_ is Star!12257) (regex!7352 rBis!149))) b!4136667))

(assert (= (and b!4136207 ((_ is Union!12257) (regex!7352 rBis!149))) b!4136668))

(declare-fun b!4136673 () Bool)

(declare-fun e!2566641 () Bool)

(declare-fun tp!1260921 () Bool)

(assert (=> b!4136673 (= e!2566641 (and tp_is_empty!21437 tp!1260921))))

(assert (=> b!4136202 (= tp!1260833 e!2566641)))

(assert (= (and b!4136202 ((_ is Cons!44826) (t!341987 input!3238))) b!4136673))

(declare-fun b!4136674 () Bool)

(declare-fun e!2566642 () Bool)

(assert (=> b!4136674 (= e!2566642 tp_is_empty!21437)))

(assert (=> b!4136197 (= tp!1260834 e!2566642)))

(declare-fun b!4136677 () Bool)

(declare-fun tp!1260922 () Bool)

(declare-fun tp!1260924 () Bool)

(assert (=> b!4136677 (= e!2566642 (and tp!1260922 tp!1260924))))

(declare-fun b!4136675 () Bool)

(declare-fun tp!1260925 () Bool)

(declare-fun tp!1260926 () Bool)

(assert (=> b!4136675 (= e!2566642 (and tp!1260925 tp!1260926))))

(declare-fun b!4136676 () Bool)

(declare-fun tp!1260923 () Bool)

(assert (=> b!4136676 (= e!2566642 tp!1260923)))

(assert (= (and b!4136197 ((_ is ElementMatch!12257) (regex!7352 r!4008))) b!4136674))

(assert (= (and b!4136197 ((_ is Concat!19840) (regex!7352 r!4008))) b!4136675))

(assert (= (and b!4136197 ((_ is Star!12257) (regex!7352 r!4008))) b!4136676))

(assert (= (and b!4136197 ((_ is Union!12257) (regex!7352 r!4008))) b!4136677))

(declare-fun b!4136678 () Bool)

(declare-fun e!2566643 () Bool)

(assert (=> b!4136678 (= e!2566643 tp_is_empty!21437)))

(assert (=> b!4136212 (= tp!1260836 e!2566643)))

(declare-fun b!4136681 () Bool)

(declare-fun tp!1260927 () Bool)

(declare-fun tp!1260929 () Bool)

(assert (=> b!4136681 (= e!2566643 (and tp!1260927 tp!1260929))))

(declare-fun b!4136679 () Bool)

(declare-fun tp!1260930 () Bool)

(declare-fun tp!1260931 () Bool)

(assert (=> b!4136679 (= e!2566643 (and tp!1260930 tp!1260931))))

(declare-fun b!4136680 () Bool)

(declare-fun tp!1260928 () Bool)

(assert (=> b!4136680 (= e!2566643 tp!1260928)))

(assert (= (and b!4136212 ((_ is ElementMatch!12257) (regex!7352 (h!50248 rules!3756)))) b!4136678))

(assert (= (and b!4136212 ((_ is Concat!19840) (regex!7352 (h!50248 rules!3756)))) b!4136679))

(assert (= (and b!4136212 ((_ is Star!12257) (regex!7352 (h!50248 rules!3756)))) b!4136680))

(assert (= (and b!4136212 ((_ is Union!12257) (regex!7352 (h!50248 rules!3756)))) b!4136681))

(declare-fun b!4136682 () Bool)

(declare-fun e!2566644 () Bool)

(declare-fun tp!1260932 () Bool)

(assert (=> b!4136682 (= e!2566644 (and tp_is_empty!21437 tp!1260932))))

(assert (=> b!4136196 (= tp!1260837 e!2566644)))

(assert (= (and b!4136196 ((_ is Cons!44826) (t!341987 p!2912))) b!4136682))

(declare-fun b_lambda!121565 () Bool)

(assert (= b_lambda!121551 (or (and b!4136201 b_free!117587) (and b!4136209 b_free!117591 (= (toValue!10016 (transformation!7352 rBis!149)) (toValue!10016 (transformation!7352 r!4008)))) (and b!4136206 b_free!117595 (= (toValue!10016 (transformation!7352 (h!50248 rules!3756))) (toValue!10016 (transformation!7352 r!4008)))) (and b!4136654 b_free!117603 (= (toValue!10016 (transformation!7352 (h!50248 (t!341989 rules!3756)))) (toValue!10016 (transformation!7352 r!4008)))) b_lambda!121565)))

(declare-fun b_lambda!121567 () Bool)

(assert (= b_lambda!121547 (or (and b!4136201 b_free!117587) (and b!4136209 b_free!117591 (= (toValue!10016 (transformation!7352 rBis!149)) (toValue!10016 (transformation!7352 r!4008)))) (and b!4136206 b_free!117595 (= (toValue!10016 (transformation!7352 (h!50248 rules!3756))) (toValue!10016 (transformation!7352 r!4008)))) (and b!4136654 b_free!117603 (= (toValue!10016 (transformation!7352 (h!50248 (t!341989 rules!3756)))) (toValue!10016 (transformation!7352 r!4008)))) b_lambda!121567)))

(declare-fun b_lambda!121569 () Bool)

(assert (= b_lambda!121549 (or (and b!4136201 b_free!117589) (and b!4136209 b_free!117593 (= (toChars!9875 (transformation!7352 rBis!149)) (toChars!9875 (transformation!7352 r!4008)))) (and b!4136206 b_free!117597 (= (toChars!9875 (transformation!7352 (h!50248 rules!3756))) (toChars!9875 (transformation!7352 r!4008)))) (and b!4136654 b_free!117605 (= (toChars!9875 (transformation!7352 (h!50248 (t!341989 rules!3756)))) (toChars!9875 (transformation!7352 r!4008)))) b_lambda!121569)))

(check-sat (not b!4136626) (not b!4136420) b_and!320963 (not d!1224931) (not d!1224913) (not tb!248271) (not d!1224997) (not d!1224929) (not b!4136673) (not b!4136244) (not b!4136264) (not b_lambda!121565) (not d!1225001) (not b!4136634) (not b!4136627) (not b!4136416) (not b!4136668) (not b_lambda!121545) b_and!320959 (not b_next!118291) (not b!4136419) tp_is_empty!21437 b_and!320993 (not b!4136624) (not b!4136630) (not d!1225027) b_and!320965 (not b!4136586) (not b!4136667) (not b!4136653) (not b!4136243) (not b!4136290) (not b!4136590) (not b!4136472) (not b!4136632) (not b!4136588) (not b_next!118297) (not b!4136605) (not d!1224987) b_and!320961 (not d!1224939) (not b_lambda!121567) b_and!320967 (not b!4136594) b_and!320995 (not b!4136414) (not d!1224977) (not b!4136417) (not b!4136592) (not d!1224919) (not b!4136602) (not bm!290429) b_and!320969 (not b!4136500) (not b_next!118307) (not d!1224943) (not tb!248265) (not b_next!118293) (not b!4136269) (not b_next!118295) (not b!4136415) (not b!4136628) (not b!4136629) (not d!1225029) (not b!4136641) (not d!1224975) (not b!4136421) (not d!1224923) (not bm!290435) (not b!4136413) (not b!4136682) (not d!1225031) (not b!4136597) (not d!1225023) (not d!1225037) (not d!1225013) (not b!4136281) (not d!1225049) (not b_next!118309) (not b!4136498) (not d!1225043) (not b!4136677) (not b!4136639) (not b!4136633) (not b!4136631) (not b_lambda!121569) (not tb!248277) (not d!1224935) (not d!1225041) (not b!4136455) (not b!4136379) (not b_next!118301) (not d!1225009) (not d!1225003) (not b!4136679) (not b!4136675) (not b!4136276) (not b!4136286) (not b!4136643) (not b!4136652) (not d!1225015) (not b!4136681) (not b!4136676) (not b!4136637) (not b!4136245) (not b!4136374) (not b!4136666) (not d!1224991) (not b_next!118299) (not b!4136640) (not b!4136497) (not b!4136680))
(check-sat b_and!320963 b_and!320965 (not b_next!118297) b_and!320961 (not b_next!118309) (not b_next!118301) (not b_next!118299) b_and!320959 b_and!320993 (not b_next!118291) b_and!320967 b_and!320995 b_and!320969 (not b_next!118307) (not b_next!118293) (not b_next!118295))
