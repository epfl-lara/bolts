; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!392538 () Bool)

(assert start!392538)

(declare-fun b!4134036 () Bool)

(declare-fun b_free!117419 () Bool)

(declare-fun b_next!118123 () Bool)

(assert (=> b!4134036 (= b_free!117419 (not b_next!118123))))

(declare-fun tp!1260138 () Bool)

(declare-fun b_and!320617 () Bool)

(assert (=> b!4134036 (= tp!1260138 b_and!320617)))

(declare-fun b_free!117421 () Bool)

(declare-fun b_next!118125 () Bool)

(assert (=> b!4134036 (= b_free!117421 (not b_next!118125))))

(declare-fun tp!1260140 () Bool)

(declare-fun b_and!320619 () Bool)

(assert (=> b!4134036 (= tp!1260140 b_and!320619)))

(declare-fun b!4134021 () Bool)

(declare-fun b_free!117423 () Bool)

(declare-fun b_next!118127 () Bool)

(assert (=> b!4134021 (= b_free!117423 (not b_next!118127))))

(declare-fun tp!1260136 () Bool)

(declare-fun b_and!320621 () Bool)

(assert (=> b!4134021 (= tp!1260136 b_and!320621)))

(declare-fun b_free!117425 () Bool)

(declare-fun b_next!118129 () Bool)

(assert (=> b!4134021 (= b_free!117425 (not b_next!118129))))

(declare-fun tp!1260133 () Bool)

(declare-fun b_and!320623 () Bool)

(assert (=> b!4134021 (= tp!1260133 b_and!320623)))

(declare-fun b!4134022 () Bool)

(declare-fun b_free!117427 () Bool)

(declare-fun b_next!118131 () Bool)

(assert (=> b!4134022 (= b_free!117427 (not b_next!118131))))

(declare-fun tp!1260129 () Bool)

(declare-fun b_and!320625 () Bool)

(assert (=> b!4134022 (= tp!1260129 b_and!320625)))

(declare-fun b_free!117429 () Bool)

(declare-fun b_next!118133 () Bool)

(assert (=> b!4134022 (= b_free!117429 (not b_next!118133))))

(declare-fun tp!1260130 () Bool)

(declare-fun b_and!320627 () Bool)

(assert (=> b!4134022 (= tp!1260130 b_and!320627)))

(declare-fun b!4134015 () Bool)

(declare-fun e!2565010 () Bool)

(declare-fun e!2565016 () Bool)

(assert (=> b!4134015 (= e!2565010 e!2565016)))

(declare-fun res!1690257 () Bool)

(assert (=> b!4134015 (=> res!1690257 e!2565016)))

(declare-datatypes ((List!44908 0))(
  ( (Nil!44784) (Cons!44784 (h!50204 (_ BitVec 16)) (t!341801 List!44908)) )
))
(declare-datatypes ((TokenValue!7570 0))(
  ( (FloatLiteralValue!15140 (text!53435 List!44908)) (TokenValueExt!7569 (__x!27357 Int)) (Broken!37850 (value!229718 List!44908)) (Object!7693) (End!7570) (Def!7570) (Underscore!7570) (Match!7570) (Else!7570) (Error!7570) (Case!7570) (If!7570) (Extends!7570) (Abstract!7570) (Class!7570) (Val!7570) (DelimiterValue!15140 (del!7630 List!44908)) (KeywordValue!7576 (value!229719 List!44908)) (CommentValue!15140 (value!229720 List!44908)) (WhitespaceValue!15140 (value!229721 List!44908)) (IndentationValue!7570 (value!229722 List!44908)) (String!51599) (Int32!7570) (Broken!37851 (value!229723 List!44908)) (Boolean!7571) (Unit!64102) (OperatorValue!7573 (op!7630 List!44908)) (IdentifierValue!15140 (value!229724 List!44908)) (IdentifierValue!15141 (value!229725 List!44908)) (WhitespaceValue!15141 (value!229726 List!44908)) (True!15140) (False!15140) (Broken!37852 (value!229727 List!44908)) (Broken!37853 (value!229728 List!44908)) (True!15141) (RightBrace!7570) (RightBracket!7570) (Colon!7570) (Null!7570) (Comma!7570) (LeftBracket!7570) (False!15141) (LeftBrace!7570) (ImaginaryLiteralValue!7570 (text!53436 List!44908)) (StringLiteralValue!22710 (value!229729 List!44908)) (EOFValue!7570 (value!229730 List!44908)) (IdentValue!7570 (value!229731 List!44908)) (DelimiterValue!15141 (value!229732 List!44908)) (DedentValue!7570 (value!229733 List!44908)) (NewLineValue!7570 (value!229734 List!44908)) (IntegerValue!22710 (value!229735 (_ BitVec 32)) (text!53437 List!44908)) (IntegerValue!22711 (value!229736 Int) (text!53438 List!44908)) (Times!7570) (Or!7570) (Equal!7570) (Minus!7570) (Broken!37854 (value!229737 List!44908)) (And!7570) (Div!7570) (LessEqual!7570) (Mod!7570) (Concat!19815) (Not!7570) (Plus!7570) (SpaceValue!7570 (value!229738 List!44908)) (IntegerValue!22712 (value!229739 Int) (text!53439 List!44908)) (StringLiteralValue!22711 (text!53440 List!44908)) (FloatLiteralValue!15141 (text!53441 List!44908)) (BytesLiteralValue!7570 (value!229740 List!44908)) (CommentValue!15141 (value!229741 List!44908)) (StringLiteralValue!22712 (value!229742 List!44908)) (ErrorTokenValue!7570 (msg!7631 List!44908)) )
))
(declare-datatypes ((C!24676 0))(
  ( (C!24677 (val!14448 Int)) )
))
(declare-datatypes ((List!44909 0))(
  ( (Nil!44785) (Cons!44785 (h!50205 C!24676) (t!341802 List!44909)) )
))
(declare-datatypes ((IArray!27107 0))(
  ( (IArray!27108 (innerList!13611 List!44909)) )
))
(declare-datatypes ((Conc!13551 0))(
  ( (Node!13551 (left!33539 Conc!13551) (right!33869 Conc!13551) (csize!27332 Int) (cheight!13762 Int)) (Leaf!20936 (xs!16857 IArray!27107) (csize!27333 Int)) (Empty!13551) )
))
(declare-datatypes ((BalanceConc!26696 0))(
  ( (BalanceConc!26697 (c!709132 Conc!13551)) )
))
(declare-datatypes ((Regex!12245 0))(
  ( (ElementMatch!12245 (c!709133 C!24676)) (Concat!19816 (regOne!25002 Regex!12245) (regTwo!25002 Regex!12245)) (EmptyExpr!12245) (Star!12245 (reg!12574 Regex!12245)) (EmptyLang!12245) (Union!12245 (regOne!25003 Regex!12245) (regTwo!25003 Regex!12245)) )
))
(declare-datatypes ((String!51600 0))(
  ( (String!51601 (value!229743 String)) )
))
(declare-datatypes ((TokenValueInjection!14568 0))(
  ( (TokenValueInjection!14569 (toValue!10004 Int) (toChars!9863 Int)) )
))
(declare-datatypes ((Rule!14480 0))(
  ( (Rule!14481 (regex!7340 Regex!12245) (tag!8200 String!51600) (isSeparator!7340 Bool) (transformation!7340 TokenValueInjection!14568)) )
))
(declare-datatypes ((Token!13610 0))(
  ( (Token!13611 (value!229744 TokenValue!7570) (rule!10432 Rule!14480) (size!33145 Int) (originalCharacters!7836 List!44909)) )
))
(declare-datatypes ((tuple2!43186 0))(
  ( (tuple2!43187 (_1!24727 Token!13610) (_2!24727 List!44909)) )
))
(declare-datatypes ((Option!9646 0))(
  ( (None!9645) (Some!9645 (v!40265 tuple2!43186)) )
))
(declare-fun lt!1473914 () Option!9646)

(declare-fun isEmpty!26673 (Option!9646) Bool)

(assert (=> b!4134015 (= res!1690257 (not (isEmpty!26673 lt!1473914)))))

(declare-datatypes ((LexerInterface!6929 0))(
  ( (LexerInterfaceExt!6926 (__x!27358 Int)) (Lexer!6927) )
))
(declare-fun thiss!25645 () LexerInterface!6929)

(declare-fun input!3238 () List!44909)

(declare-fun rBis!149 () Rule!14480)

(declare-fun maxPrefixOneRule!3058 (LexerInterface!6929 Rule!14480 List!44909) Option!9646)

(assert (=> b!4134015 (= lt!1473914 (maxPrefixOneRule!3058 thiss!25645 rBis!149 input!3238))))

(declare-fun r!4008 () Rule!14480)

(assert (=> b!4134015 (not (= rBis!149 r!4008))))

(declare-datatypes ((List!44910 0))(
  ( (Nil!44786) (Cons!44786 (h!50206 Rule!14480) (t!341803 List!44910)) )
))
(declare-fun rules!3756 () List!44910)

(declare-datatypes ((Unit!64103 0))(
  ( (Unit!64104) )
))
(declare-fun lt!1473910 () Unit!64103)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!38 (LexerInterface!6929 List!44910 Rule!14480 Rule!14480) Unit!64103)

(assert (=> b!4134015 (= lt!1473910 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!38 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun contains!9020 (List!44910 Rule!14480) Bool)

(declare-fun tail!6493 (List!44910) List!44910)

(assert (=> b!4134015 (contains!9020 (tail!6493 rules!3756) r!4008)))

(declare-fun lt!1473915 () Unit!64103)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!44 (List!44910 Rule!14480 Rule!14480) Unit!64103)

(assert (=> b!4134015 (= lt!1473915 (lemmaGetIndexBiggerAndHeadEqThenTailContains!44 rules!3756 rBis!149 r!4008))))

(declare-fun b!4134016 () Bool)

(declare-fun e!2565012 () Bool)

(declare-fun tp_is_empty!21413 () Bool)

(declare-fun tp!1260137 () Bool)

(assert (=> b!4134016 (= e!2565012 (and tp_is_empty!21413 tp!1260137))))

(declare-fun b!4134017 () Bool)

(declare-fun res!1690254 () Bool)

(declare-fun e!2565009 () Bool)

(assert (=> b!4134017 (=> (not res!1690254) (not e!2565009))))

(declare-fun p!2912 () List!44909)

(declare-fun isPrefix!4275 (List!44909 List!44909) Bool)

(assert (=> b!4134017 (= res!1690254 (isPrefix!4275 p!2912 input!3238))))

(declare-fun b!4134018 () Bool)

(declare-fun res!1690251 () Bool)

(declare-fun e!2565007 () Bool)

(assert (=> b!4134018 (=> (not res!1690251) (not e!2565007))))

(declare-fun ruleValid!3146 (LexerInterface!6929 Rule!14480) Bool)

(assert (=> b!4134018 (= res!1690251 (ruleValid!3146 thiss!25645 r!4008))))

(declare-fun b!4134019 () Bool)

(declare-fun e!2565019 () Bool)

(declare-fun tp!1260134 () Bool)

(assert (=> b!4134019 (= e!2565019 (and tp_is_empty!21413 tp!1260134))))

(declare-fun b!4134020 () Bool)

(declare-fun res!1690249 () Bool)

(assert (=> b!4134020 (=> (not res!1690249) (not e!2565009))))

(assert (=> b!4134020 (= res!1690249 (contains!9020 rules!3756 r!4008))))

(declare-fun e!2565021 () Bool)

(assert (=> b!4134021 (= e!2565021 (and tp!1260136 tp!1260133))))

(declare-fun e!2565022 () Bool)

(assert (=> b!4134022 (= e!2565022 (and tp!1260129 tp!1260130))))

(declare-fun e!2565017 () Bool)

(declare-fun tp!1260131 () Bool)

(declare-fun b!4134023 () Bool)

(declare-fun inv!59387 (String!51600) Bool)

(declare-fun inv!59389 (TokenValueInjection!14568) Bool)

(assert (=> b!4134023 (= e!2565017 (and tp!1260131 (inv!59387 (tag!8200 (h!50206 rules!3756))) (inv!59389 (transformation!7340 (h!50206 rules!3756))) e!2565022))))

(declare-fun b!4134024 () Bool)

(assert (=> b!4134024 (= e!2565016 (= lt!1473914 None!9645))))

(declare-fun b!4134025 () Bool)

(declare-fun res!1690255 () Bool)

(assert (=> b!4134025 (=> (not res!1690255) (not e!2565007))))

(declare-fun matchR!6074 (Regex!12245 List!44909) Bool)

(assert (=> b!4134025 (= res!1690255 (matchR!6074 (regex!7340 r!4008) p!2912))))

(declare-fun b!4134026 () Bool)

(declare-fun e!2565018 () Bool)

(declare-fun tp!1260135 () Bool)

(assert (=> b!4134026 (= e!2565018 (and e!2565017 tp!1260135))))

(declare-fun res!1690246 () Bool)

(assert (=> start!392538 (=> (not res!1690246) (not e!2565009))))

(get-info :version)

(assert (=> start!392538 (= res!1690246 ((_ is Lexer!6927) thiss!25645))))

(assert (=> start!392538 e!2565009))

(assert (=> start!392538 e!2565018))

(assert (=> start!392538 e!2565019))

(assert (=> start!392538 true))

(declare-fun e!2565015 () Bool)

(assert (=> start!392538 e!2565015))

(assert (=> start!392538 e!2565012))

(declare-fun e!2565013 () Bool)

(assert (=> start!392538 e!2565013))

(declare-fun b!4134027 () Bool)

(declare-fun res!1690248 () Bool)

(assert (=> b!4134027 (=> (not res!1690248) (not e!2565009))))

(declare-fun isEmpty!26674 (List!44910) Bool)

(assert (=> b!4134027 (= res!1690248 (not (isEmpty!26674 rules!3756)))))

(declare-fun b!4134028 () Bool)

(assert (=> b!4134028 (= e!2565009 e!2565007)))

(declare-fun res!1690253 () Bool)

(assert (=> b!4134028 (=> (not res!1690253) (not e!2565007))))

(declare-fun lt!1473911 () BalanceConc!26696)

(declare-fun maxPrefix!4119 (LexerInterface!6929 List!44910 List!44909) Option!9646)

(declare-fun apply!10413 (TokenValueInjection!14568 BalanceConc!26696) TokenValue!7570)

(declare-fun size!33146 (List!44909) Int)

(declare-fun getSuffix!2602 (List!44909 List!44909) List!44909)

(assert (=> b!4134028 (= res!1690253 (= (maxPrefix!4119 thiss!25645 rules!3756 input!3238) (Some!9645 (tuple2!43187 (Token!13611 (apply!10413 (transformation!7340 r!4008) lt!1473911) r!4008 (size!33146 p!2912) p!2912) (getSuffix!2602 input!3238 p!2912)))))))

(declare-fun lt!1473913 () Unit!64103)

(declare-fun lemmaSemiInverse!2198 (TokenValueInjection!14568 BalanceConc!26696) Unit!64103)

(assert (=> b!4134028 (= lt!1473913 (lemmaSemiInverse!2198 (transformation!7340 r!4008) lt!1473911))))

(declare-fun seqFromList!5457 (List!44909) BalanceConc!26696)

(assert (=> b!4134028 (= lt!1473911 (seqFromList!5457 p!2912))))

(declare-fun b!4134029 () Bool)

(declare-fun res!1690256 () Bool)

(assert (=> b!4134029 (=> (not res!1690256) (not e!2565007))))

(declare-fun getIndex!686 (List!44910 Rule!14480) Int)

(assert (=> b!4134029 (= res!1690256 (< (getIndex!686 rules!3756 rBis!149) (getIndex!686 rules!3756 r!4008)))))

(declare-fun tp!1260132 () Bool)

(declare-fun e!2565011 () Bool)

(declare-fun b!4134030 () Bool)

(assert (=> b!4134030 (= e!2565015 (and tp!1260132 (inv!59387 (tag!8200 r!4008)) (inv!59389 (transformation!7340 r!4008)) e!2565011))))

(declare-fun b!4134031 () Bool)

(declare-fun tp!1260139 () Bool)

(assert (=> b!4134031 (= e!2565013 (and tp!1260139 (inv!59387 (tag!8200 rBis!149)) (inv!59389 (transformation!7340 rBis!149)) e!2565021))))

(declare-fun b!4134032 () Bool)

(declare-fun res!1690258 () Bool)

(assert (=> b!4134032 (=> (not res!1690258) (not e!2565009))))

(assert (=> b!4134032 (= res!1690258 (contains!9020 rules!3756 rBis!149))))

(declare-fun b!4134033 () Bool)

(declare-fun res!1690252 () Bool)

(assert (=> b!4134033 (=> (not res!1690252) (not e!2565009))))

(declare-fun isEmpty!26675 (List!44909) Bool)

(assert (=> b!4134033 (= res!1690252 (not (isEmpty!26675 p!2912)))))

(declare-fun b!4134034 () Bool)

(declare-fun res!1690247 () Bool)

(assert (=> b!4134034 (=> (not res!1690247) (not e!2565009))))

(declare-fun rulesInvariant!6226 (LexerInterface!6929 List!44910) Bool)

(assert (=> b!4134034 (= res!1690247 (rulesInvariant!6226 thiss!25645 rules!3756))))

(declare-fun b!4134035 () Bool)

(assert (=> b!4134035 (= e!2565007 (not e!2565010))))

(declare-fun res!1690250 () Bool)

(assert (=> b!4134035 (=> res!1690250 e!2565010)))

(assert (=> b!4134035 (= res!1690250 (or (not ((_ is Cons!44786) rules!3756)) (not (= (h!50206 rules!3756) rBis!149))))))

(declare-fun lt!1473916 () Unit!64103)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2186 (LexerInterface!6929 Rule!14480 List!44910) Unit!64103)

(assert (=> b!4134035 (= lt!1473916 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2186 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4134035 (ruleValid!3146 thiss!25645 rBis!149)))

(declare-fun lt!1473912 () Unit!64103)

(assert (=> b!4134035 (= lt!1473912 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2186 thiss!25645 rBis!149 rules!3756))))

(assert (=> b!4134036 (= e!2565011 (and tp!1260138 tp!1260140))))

(assert (= (and start!392538 res!1690246) b!4134017))

(assert (= (and b!4134017 res!1690254) b!4134027))

(assert (= (and b!4134027 res!1690248) b!4134034))

(assert (= (and b!4134034 res!1690247) b!4134020))

(assert (= (and b!4134020 res!1690249) b!4134032))

(assert (= (and b!4134032 res!1690258) b!4134033))

(assert (= (and b!4134033 res!1690252) b!4134028))

(assert (= (and b!4134028 res!1690253) b!4134025))

(assert (= (and b!4134025 res!1690255) b!4134029))

(assert (= (and b!4134029 res!1690256) b!4134018))

(assert (= (and b!4134018 res!1690251) b!4134035))

(assert (= (and b!4134035 (not res!1690250)) b!4134015))

(assert (= (and b!4134015 (not res!1690257)) b!4134024))

(assert (= b!4134023 b!4134022))

(assert (= b!4134026 b!4134023))

(assert (= (and start!392538 ((_ is Cons!44786) rules!3756)) b!4134026))

(assert (= (and start!392538 ((_ is Cons!44785) p!2912)) b!4134019))

(assert (= b!4134030 b!4134036))

(assert (= start!392538 b!4134030))

(assert (= (and start!392538 ((_ is Cons!44785) input!3238)) b!4134016))

(assert (= b!4134031 b!4134021))

(assert (= start!392538 b!4134031))

(declare-fun m!4730803 () Bool)

(assert (=> b!4134027 m!4730803))

(declare-fun m!4730805 () Bool)

(assert (=> b!4134015 m!4730805))

(declare-fun m!4730807 () Bool)

(assert (=> b!4134015 m!4730807))

(declare-fun m!4730809 () Bool)

(assert (=> b!4134015 m!4730809))

(assert (=> b!4134015 m!4730805))

(declare-fun m!4730811 () Bool)

(assert (=> b!4134015 m!4730811))

(declare-fun m!4730813 () Bool)

(assert (=> b!4134015 m!4730813))

(declare-fun m!4730815 () Bool)

(assert (=> b!4134015 m!4730815))

(declare-fun m!4730817 () Bool)

(assert (=> b!4134033 m!4730817))

(declare-fun m!4730819 () Bool)

(assert (=> b!4134029 m!4730819))

(declare-fun m!4730821 () Bool)

(assert (=> b!4134029 m!4730821))

(declare-fun m!4730823 () Bool)

(assert (=> b!4134028 m!4730823))

(declare-fun m!4730825 () Bool)

(assert (=> b!4134028 m!4730825))

(declare-fun m!4730827 () Bool)

(assert (=> b!4134028 m!4730827))

(declare-fun m!4730829 () Bool)

(assert (=> b!4134028 m!4730829))

(declare-fun m!4730831 () Bool)

(assert (=> b!4134028 m!4730831))

(declare-fun m!4730833 () Bool)

(assert (=> b!4134028 m!4730833))

(declare-fun m!4730835 () Bool)

(assert (=> b!4134034 m!4730835))

(declare-fun m!4730837 () Bool)

(assert (=> b!4134017 m!4730837))

(declare-fun m!4730839 () Bool)

(assert (=> b!4134035 m!4730839))

(declare-fun m!4730841 () Bool)

(assert (=> b!4134035 m!4730841))

(declare-fun m!4730843 () Bool)

(assert (=> b!4134035 m!4730843))

(declare-fun m!4730845 () Bool)

(assert (=> b!4134032 m!4730845))

(declare-fun m!4730847 () Bool)

(assert (=> b!4134018 m!4730847))

(declare-fun m!4730849 () Bool)

(assert (=> b!4134020 m!4730849))

(declare-fun m!4730851 () Bool)

(assert (=> b!4134030 m!4730851))

(declare-fun m!4730853 () Bool)

(assert (=> b!4134030 m!4730853))

(declare-fun m!4730855 () Bool)

(assert (=> b!4134025 m!4730855))

(declare-fun m!4730857 () Bool)

(assert (=> b!4134031 m!4730857))

(declare-fun m!4730859 () Bool)

(assert (=> b!4134031 m!4730859))

(declare-fun m!4730861 () Bool)

(assert (=> b!4134023 m!4730861))

(declare-fun m!4730863 () Bool)

(assert (=> b!4134023 m!4730863))

(check-sat b_and!320625 b_and!320619 (not b!4134025) (not b!4134020) (not b_next!118131) b_and!320623 (not b!4134030) b_and!320617 (not b!4134019) (not b!4134026) (not b!4134028) (not b!4134023) (not b!4134035) (not b!4134031) (not b_next!118127) (not b!4134017) (not b!4134015) b_and!320621 (not b!4134027) (not b_next!118125) (not b_next!118133) (not b!4134029) tp_is_empty!21413 (not b_next!118123) (not b!4134018) (not b!4134032) (not b_next!118129) (not b!4134034) (not b!4134016) (not b!4134033) b_and!320627)
(check-sat b_and!320625 b_and!320619 b_and!320621 (not b_next!118125) (not b_next!118131) b_and!320623 (not b_next!118133) (not b_next!118123) b_and!320617 (not b_next!118129) b_and!320627 (not b_next!118127))
(get-model)

(declare-fun d!1224481 () Bool)

(declare-fun res!1690270 () Bool)

(declare-fun e!2565025 () Bool)

(assert (=> d!1224481 (=> (not res!1690270) (not e!2565025))))

(declare-fun validRegex!5512 (Regex!12245) Bool)

(assert (=> d!1224481 (= res!1690270 (validRegex!5512 (regex!7340 r!4008)))))

(assert (=> d!1224481 (= (ruleValid!3146 thiss!25645 r!4008) e!2565025)))

(declare-fun b!4134041 () Bool)

(declare-fun res!1690271 () Bool)

(assert (=> b!4134041 (=> (not res!1690271) (not e!2565025))))

(declare-fun nullable!4304 (Regex!12245) Bool)

(assert (=> b!4134041 (= res!1690271 (not (nullable!4304 (regex!7340 r!4008))))))

(declare-fun b!4134042 () Bool)

(assert (=> b!4134042 (= e!2565025 (not (= (tag!8200 r!4008) (String!51601 ""))))))

(assert (= (and d!1224481 res!1690270) b!4134041))

(assert (= (and b!4134041 res!1690271) b!4134042))

(declare-fun m!4730865 () Bool)

(assert (=> d!1224481 m!4730865))

(declare-fun m!4730867 () Bool)

(assert (=> b!4134041 m!4730867))

(assert (=> b!4134018 d!1224481))

(declare-fun d!1224485 () Bool)

(declare-fun lt!1473922 () Int)

(assert (=> d!1224485 (>= lt!1473922 0)))

(declare-fun e!2565041 () Int)

(assert (=> d!1224485 (= lt!1473922 e!2565041)))

(declare-fun c!709138 () Bool)

(assert (=> d!1224485 (= c!709138 (and ((_ is Cons!44786) rules!3756) (= (h!50206 rules!3756) rBis!149)))))

(assert (=> d!1224485 (contains!9020 rules!3756 rBis!149)))

(assert (=> d!1224485 (= (getIndex!686 rules!3756 rBis!149) lt!1473922)))

(declare-fun b!4134060 () Bool)

(assert (=> b!4134060 (= e!2565041 0)))

(declare-fun b!4134063 () Bool)

(declare-fun e!2565040 () Int)

(assert (=> b!4134063 (= e!2565040 (- 1))))

(declare-fun b!4134061 () Bool)

(assert (=> b!4134061 (= e!2565041 e!2565040)))

(declare-fun c!709139 () Bool)

(assert (=> b!4134061 (= c!709139 (and ((_ is Cons!44786) rules!3756) (not (= (h!50206 rules!3756) rBis!149))))))

(declare-fun b!4134062 () Bool)

(assert (=> b!4134062 (= e!2565040 (+ 1 (getIndex!686 (t!341803 rules!3756) rBis!149)))))

(assert (= (and d!1224485 c!709138) b!4134060))

(assert (= (and d!1224485 (not c!709138)) b!4134061))

(assert (= (and b!4134061 c!709139) b!4134062))

(assert (= (and b!4134061 (not c!709139)) b!4134063))

(assert (=> d!1224485 m!4730845))

(declare-fun m!4730885 () Bool)

(assert (=> b!4134062 m!4730885))

(assert (=> b!4134029 d!1224485))

(declare-fun d!1224493 () Bool)

(declare-fun lt!1473924 () Int)

(assert (=> d!1224493 (>= lt!1473924 0)))

(declare-fun e!2565045 () Int)

(assert (=> d!1224493 (= lt!1473924 e!2565045)))

(declare-fun c!709140 () Bool)

(assert (=> d!1224493 (= c!709140 (and ((_ is Cons!44786) rules!3756) (= (h!50206 rules!3756) r!4008)))))

(assert (=> d!1224493 (contains!9020 rules!3756 r!4008)))

(assert (=> d!1224493 (= (getIndex!686 rules!3756 r!4008) lt!1473924)))

(declare-fun b!4134066 () Bool)

(assert (=> b!4134066 (= e!2565045 0)))

(declare-fun b!4134069 () Bool)

(declare-fun e!2565044 () Int)

(assert (=> b!4134069 (= e!2565044 (- 1))))

(declare-fun b!4134067 () Bool)

(assert (=> b!4134067 (= e!2565045 e!2565044)))

(declare-fun c!709141 () Bool)

(assert (=> b!4134067 (= c!709141 (and ((_ is Cons!44786) rules!3756) (not (= (h!50206 rules!3756) r!4008))))))

(declare-fun b!4134068 () Bool)

(assert (=> b!4134068 (= e!2565044 (+ 1 (getIndex!686 (t!341803 rules!3756) r!4008)))))

(assert (= (and d!1224493 c!709140) b!4134066))

(assert (= (and d!1224493 (not c!709140)) b!4134067))

(assert (= (and b!4134067 c!709141) b!4134068))

(assert (= (and b!4134067 (not c!709141)) b!4134069))

(assert (=> d!1224493 m!4730849))

(declare-fun m!4730887 () Bool)

(assert (=> b!4134068 m!4730887))

(assert (=> b!4134029 d!1224493))

(declare-fun d!1224497 () Bool)

(assert (=> d!1224497 (= (inv!59387 (tag!8200 r!4008)) (= (mod (str.len (value!229743 (tag!8200 r!4008))) 2) 0))))

(assert (=> b!4134030 d!1224497))

(declare-fun d!1224499 () Bool)

(declare-fun res!1690288 () Bool)

(declare-fun e!2565051 () Bool)

(assert (=> d!1224499 (=> (not res!1690288) (not e!2565051))))

(declare-fun semiInverseModEq!3169 (Int Int) Bool)

(assert (=> d!1224499 (= res!1690288 (semiInverseModEq!3169 (toChars!9863 (transformation!7340 r!4008)) (toValue!10004 (transformation!7340 r!4008))))))

(assert (=> d!1224499 (= (inv!59389 (transformation!7340 r!4008)) e!2565051)))

(declare-fun b!4134075 () Bool)

(declare-fun equivClasses!3068 (Int Int) Bool)

(assert (=> b!4134075 (= e!2565051 (equivClasses!3068 (toChars!9863 (transformation!7340 r!4008)) (toValue!10004 (transformation!7340 r!4008))))))

(assert (= (and d!1224499 res!1690288) b!4134075))

(declare-fun m!4730891 () Bool)

(assert (=> d!1224499 m!4730891))

(declare-fun m!4730893 () Bool)

(assert (=> b!4134075 m!4730893))

(assert (=> b!4134030 d!1224499))

(declare-fun d!1224505 () Bool)

(declare-fun lt!1473930 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6909 (List!44910) (InoxSet Rule!14480))

(assert (=> d!1224505 (= lt!1473930 (select (content!6909 rules!3756) r!4008))))

(declare-fun e!2565056 () Bool)

(assert (=> d!1224505 (= lt!1473930 e!2565056)))

(declare-fun res!1690293 () Bool)

(assert (=> d!1224505 (=> (not res!1690293) (not e!2565056))))

(assert (=> d!1224505 (= res!1690293 ((_ is Cons!44786) rules!3756))))

(assert (=> d!1224505 (= (contains!9020 rules!3756 r!4008) lt!1473930)))

(declare-fun b!4134080 () Bool)

(declare-fun e!2565057 () Bool)

(assert (=> b!4134080 (= e!2565056 e!2565057)))

(declare-fun res!1690294 () Bool)

(assert (=> b!4134080 (=> res!1690294 e!2565057)))

(assert (=> b!4134080 (= res!1690294 (= (h!50206 rules!3756) r!4008))))

(declare-fun b!4134081 () Bool)

(assert (=> b!4134081 (= e!2565057 (contains!9020 (t!341803 rules!3756) r!4008))))

(assert (= (and d!1224505 res!1690293) b!4134080))

(assert (= (and b!4134080 (not res!1690294)) b!4134081))

(declare-fun m!4730895 () Bool)

(assert (=> d!1224505 m!4730895))

(declare-fun m!4730897 () Bool)

(assert (=> d!1224505 m!4730897))

(declare-fun m!4730899 () Bool)

(assert (=> b!4134081 m!4730899))

(assert (=> b!4134020 d!1224505))

(declare-fun d!1224507 () Bool)

(declare-fun lt!1473931 () Bool)

(assert (=> d!1224507 (= lt!1473931 (select (content!6909 (tail!6493 rules!3756)) r!4008))))

(declare-fun e!2565058 () Bool)

(assert (=> d!1224507 (= lt!1473931 e!2565058)))

(declare-fun res!1690295 () Bool)

(assert (=> d!1224507 (=> (not res!1690295) (not e!2565058))))

(assert (=> d!1224507 (= res!1690295 ((_ is Cons!44786) (tail!6493 rules!3756)))))

(assert (=> d!1224507 (= (contains!9020 (tail!6493 rules!3756) r!4008) lt!1473931)))

(declare-fun b!4134082 () Bool)

(declare-fun e!2565059 () Bool)

(assert (=> b!4134082 (= e!2565058 e!2565059)))

(declare-fun res!1690296 () Bool)

(assert (=> b!4134082 (=> res!1690296 e!2565059)))

(assert (=> b!4134082 (= res!1690296 (= (h!50206 (tail!6493 rules!3756)) r!4008))))

(declare-fun b!4134083 () Bool)

(assert (=> b!4134083 (= e!2565059 (contains!9020 (t!341803 (tail!6493 rules!3756)) r!4008))))

(assert (= (and d!1224507 res!1690295) b!4134082))

(assert (= (and b!4134082 (not res!1690296)) b!4134083))

(assert (=> d!1224507 m!4730805))

(declare-fun m!4730901 () Bool)

(assert (=> d!1224507 m!4730901))

(declare-fun m!4730903 () Bool)

(assert (=> d!1224507 m!4730903))

(declare-fun m!4730905 () Bool)

(assert (=> b!4134083 m!4730905))

(assert (=> b!4134015 d!1224507))

(declare-fun d!1224509 () Bool)

(assert (=> d!1224509 (contains!9020 (tail!6493 rules!3756) r!4008)))

(declare-fun lt!1473934 () Unit!64103)

(declare-fun choose!25264 (List!44910 Rule!14480 Rule!14480) Unit!64103)

(assert (=> d!1224509 (= lt!1473934 (choose!25264 rules!3756 rBis!149 r!4008))))

(declare-fun e!2565062 () Bool)

(assert (=> d!1224509 e!2565062))

(declare-fun res!1690299 () Bool)

(assert (=> d!1224509 (=> (not res!1690299) (not e!2565062))))

(assert (=> d!1224509 (= res!1690299 (contains!9020 rules!3756 rBis!149))))

(assert (=> d!1224509 (= (lemmaGetIndexBiggerAndHeadEqThenTailContains!44 rules!3756 rBis!149 r!4008) lt!1473934)))

(declare-fun b!4134086 () Bool)

(assert (=> b!4134086 (= e!2565062 (contains!9020 rules!3756 r!4008))))

(assert (= (and d!1224509 res!1690299) b!4134086))

(assert (=> d!1224509 m!4730805))

(assert (=> d!1224509 m!4730805))

(assert (=> d!1224509 m!4730807))

(declare-fun m!4730907 () Bool)

(assert (=> d!1224509 m!4730907))

(assert (=> d!1224509 m!4730845))

(assert (=> b!4134086 m!4730849))

(assert (=> b!4134015 d!1224509))

(declare-fun b!4134219 () Bool)

(declare-fun e!2565138 () Option!9646)

(assert (=> b!4134219 (= e!2565138 None!9645)))

(declare-fun b!4134220 () Bool)

(declare-fun e!2565139 () Bool)

(declare-fun lt!1473984 () Option!9646)

(declare-fun get!14607 (Option!9646) tuple2!43186)

(assert (=> b!4134220 (= e!2565139 (= (size!33145 (_1!24727 (get!14607 lt!1473984))) (size!33146 (originalCharacters!7836 (_1!24727 (get!14607 lt!1473984))))))))

(declare-fun b!4134221 () Bool)

(declare-datatypes ((tuple2!43190 0))(
  ( (tuple2!43191 (_1!24729 List!44909) (_2!24729 List!44909)) )
))
(declare-fun lt!1473983 () tuple2!43190)

(declare-fun size!33148 (BalanceConc!26696) Int)

(assert (=> b!4134221 (= e!2565138 (Some!9645 (tuple2!43187 (Token!13611 (apply!10413 (transformation!7340 rBis!149) (seqFromList!5457 (_1!24729 lt!1473983))) rBis!149 (size!33148 (seqFromList!5457 (_1!24729 lt!1473983))) (_1!24729 lt!1473983)) (_2!24729 lt!1473983))))))

(declare-fun lt!1473980 () Unit!64103)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1482 (Regex!12245 List!44909) Unit!64103)

(assert (=> b!4134221 (= lt!1473980 (longestMatchIsAcceptedByMatchOrIsEmpty!1482 (regex!7340 rBis!149) input!3238))))

(declare-fun res!1690390 () Bool)

(declare-fun findLongestMatchInner!1509 (Regex!12245 List!44909 Int List!44909 List!44909 Int) tuple2!43190)

(assert (=> b!4134221 (= res!1690390 (isEmpty!26675 (_1!24729 (findLongestMatchInner!1509 (regex!7340 rBis!149) Nil!44785 (size!33146 Nil!44785) input!3238 input!3238 (size!33146 input!3238)))))))

(declare-fun e!2565137 () Bool)

(assert (=> b!4134221 (=> res!1690390 e!2565137)))

(assert (=> b!4134221 e!2565137))

(declare-fun lt!1473982 () Unit!64103)

(assert (=> b!4134221 (= lt!1473982 lt!1473980)))

(declare-fun lt!1473981 () Unit!64103)

(assert (=> b!4134221 (= lt!1473981 (lemmaSemiInverse!2198 (transformation!7340 rBis!149) (seqFromList!5457 (_1!24729 lt!1473983))))))

(declare-fun b!4134222 () Bool)

(declare-fun res!1690388 () Bool)

(assert (=> b!4134222 (=> (not res!1690388) (not e!2565139))))

(assert (=> b!4134222 (= res!1690388 (< (size!33146 (_2!24727 (get!14607 lt!1473984))) (size!33146 input!3238)))))

(declare-fun b!4134223 () Bool)

(declare-fun res!1690389 () Bool)

(assert (=> b!4134223 (=> (not res!1690389) (not e!2565139))))

(assert (=> b!4134223 (= res!1690389 (= (value!229744 (_1!24727 (get!14607 lt!1473984))) (apply!10413 (transformation!7340 (rule!10432 (_1!24727 (get!14607 lt!1473984)))) (seqFromList!5457 (originalCharacters!7836 (_1!24727 (get!14607 lt!1473984)))))))))

(declare-fun b!4134224 () Bool)

(declare-fun e!2565136 () Bool)

(assert (=> b!4134224 (= e!2565136 e!2565139)))

(declare-fun res!1690391 () Bool)

(assert (=> b!4134224 (=> (not res!1690391) (not e!2565139))))

(declare-fun list!16401 (BalanceConc!26696) List!44909)

(declare-fun charsOf!4941 (Token!13610) BalanceConc!26696)

(assert (=> b!4134224 (= res!1690391 (matchR!6074 (regex!7340 rBis!149) (list!16401 (charsOf!4941 (_1!24727 (get!14607 lt!1473984))))))))

(declare-fun b!4134225 () Bool)

(declare-fun res!1690386 () Bool)

(assert (=> b!4134225 (=> (not res!1690386) (not e!2565139))))

(assert (=> b!4134225 (= res!1690386 (= (rule!10432 (_1!24727 (get!14607 lt!1473984))) rBis!149))))

(declare-fun b!4134226 () Bool)

(declare-fun res!1690387 () Bool)

(assert (=> b!4134226 (=> (not res!1690387) (not e!2565139))))

(declare-fun ++!11588 (List!44909 List!44909) List!44909)

(assert (=> b!4134226 (= res!1690387 (= (++!11588 (list!16401 (charsOf!4941 (_1!24727 (get!14607 lt!1473984)))) (_2!24727 (get!14607 lt!1473984))) input!3238))))

(declare-fun d!1224511 () Bool)

(assert (=> d!1224511 e!2565136))

(declare-fun res!1690392 () Bool)

(assert (=> d!1224511 (=> res!1690392 e!2565136)))

(assert (=> d!1224511 (= res!1690392 (isEmpty!26673 lt!1473984))))

(assert (=> d!1224511 (= lt!1473984 e!2565138)))

(declare-fun c!709165 () Bool)

(assert (=> d!1224511 (= c!709165 (isEmpty!26675 (_1!24729 lt!1473983)))))

(declare-fun findLongestMatch!1422 (Regex!12245 List!44909) tuple2!43190)

(assert (=> d!1224511 (= lt!1473983 (findLongestMatch!1422 (regex!7340 rBis!149) input!3238))))

(assert (=> d!1224511 (ruleValid!3146 thiss!25645 rBis!149)))

(assert (=> d!1224511 (= (maxPrefixOneRule!3058 thiss!25645 rBis!149 input!3238) lt!1473984)))

(declare-fun b!4134227 () Bool)

(assert (=> b!4134227 (= e!2565137 (matchR!6074 (regex!7340 rBis!149) (_1!24729 (findLongestMatchInner!1509 (regex!7340 rBis!149) Nil!44785 (size!33146 Nil!44785) input!3238 input!3238 (size!33146 input!3238)))))))

(assert (= (and d!1224511 c!709165) b!4134219))

(assert (= (and d!1224511 (not c!709165)) b!4134221))

(assert (= (and b!4134221 (not res!1690390)) b!4134227))

(assert (= (and d!1224511 (not res!1690392)) b!4134224))

(assert (= (and b!4134224 res!1690391) b!4134226))

(assert (= (and b!4134226 res!1690387) b!4134222))

(assert (= (and b!4134222 res!1690388) b!4134225))

(assert (= (and b!4134225 res!1690386) b!4134223))

(assert (= (and b!4134223 res!1690389) b!4134220))

(declare-fun m!4731007 () Bool)

(assert (=> b!4134221 m!4731007))

(assert (=> b!4134221 m!4731007))

(declare-fun m!4731009 () Bool)

(assert (=> b!4134221 m!4731009))

(declare-fun m!4731011 () Bool)

(assert (=> b!4134221 m!4731011))

(assert (=> b!4134221 m!4731009))

(declare-fun m!4731013 () Bool)

(assert (=> b!4134221 m!4731013))

(declare-fun m!4731015 () Bool)

(assert (=> b!4134221 m!4731015))

(declare-fun m!4731017 () Bool)

(assert (=> b!4134221 m!4731017))

(assert (=> b!4134221 m!4731015))

(assert (=> b!4134221 m!4731015))

(declare-fun m!4731019 () Bool)

(assert (=> b!4134221 m!4731019))

(declare-fun m!4731021 () Bool)

(assert (=> b!4134221 m!4731021))

(assert (=> b!4134221 m!4731015))

(declare-fun m!4731023 () Bool)

(assert (=> b!4134221 m!4731023))

(declare-fun m!4731025 () Bool)

(assert (=> b!4134224 m!4731025))

(declare-fun m!4731027 () Bool)

(assert (=> b!4134224 m!4731027))

(assert (=> b!4134224 m!4731027))

(declare-fun m!4731029 () Bool)

(assert (=> b!4134224 m!4731029))

(assert (=> b!4134224 m!4731029))

(declare-fun m!4731031 () Bool)

(assert (=> b!4134224 m!4731031))

(assert (=> b!4134226 m!4731025))

(assert (=> b!4134226 m!4731027))

(assert (=> b!4134226 m!4731027))

(assert (=> b!4134226 m!4731029))

(assert (=> b!4134226 m!4731029))

(declare-fun m!4731033 () Bool)

(assert (=> b!4134226 m!4731033))

(assert (=> b!4134225 m!4731025))

(assert (=> b!4134222 m!4731025))

(declare-fun m!4731035 () Bool)

(assert (=> b!4134222 m!4731035))

(assert (=> b!4134222 m!4731009))

(assert (=> b!4134227 m!4731007))

(assert (=> b!4134227 m!4731009))

(assert (=> b!4134227 m!4731007))

(assert (=> b!4134227 m!4731009))

(assert (=> b!4134227 m!4731011))

(declare-fun m!4731037 () Bool)

(assert (=> b!4134227 m!4731037))

(declare-fun m!4731039 () Bool)

(assert (=> d!1224511 m!4731039))

(declare-fun m!4731041 () Bool)

(assert (=> d!1224511 m!4731041))

(declare-fun m!4731043 () Bool)

(assert (=> d!1224511 m!4731043))

(assert (=> d!1224511 m!4730841))

(assert (=> b!4134223 m!4731025))

(declare-fun m!4731045 () Bool)

(assert (=> b!4134223 m!4731045))

(assert (=> b!4134223 m!4731045))

(declare-fun m!4731047 () Bool)

(assert (=> b!4134223 m!4731047))

(assert (=> b!4134220 m!4731025))

(declare-fun m!4731049 () Bool)

(assert (=> b!4134220 m!4731049))

(assert (=> b!4134015 d!1224511))

(declare-fun d!1224553 () Bool)

(assert (=> d!1224553 (not (= rBis!149 r!4008))))

(declare-fun lt!1473987 () Unit!64103)

(declare-fun choose!25265 (LexerInterface!6929 List!44910 Rule!14480 Rule!14480) Unit!64103)

(assert (=> d!1224553 (= lt!1473987 (choose!25265 thiss!25645 rules!3756 rBis!149 r!4008))))

(assert (=> d!1224553 (contains!9020 rules!3756 rBis!149)))

(assert (=> d!1224553 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!38 thiss!25645 rules!3756 rBis!149 r!4008) lt!1473987)))

(declare-fun bs!595087 () Bool)

(assert (= bs!595087 d!1224553))

(declare-fun m!4731051 () Bool)

(assert (=> bs!595087 m!4731051))

(assert (=> bs!595087 m!4730845))

(assert (=> b!4134015 d!1224553))

(declare-fun d!1224555 () Bool)

(assert (=> d!1224555 (= (isEmpty!26673 lt!1473914) (not ((_ is Some!9645) lt!1473914)))))

(assert (=> b!4134015 d!1224555))

(declare-fun d!1224557 () Bool)

(assert (=> d!1224557 (= (tail!6493 rules!3756) (t!341803 rules!3756))))

(assert (=> b!4134015 d!1224557))

(declare-fun d!1224559 () Bool)

(assert (=> d!1224559 (= (isEmpty!26674 rules!3756) ((_ is Nil!44786) rules!3756))))

(assert (=> b!4134027 d!1224559))

(declare-fun d!1224561 () Bool)

(declare-fun dynLambda!19218 (Int BalanceConc!26696) TokenValue!7570)

(assert (=> d!1224561 (= (apply!10413 (transformation!7340 r!4008) lt!1473911) (dynLambda!19218 (toValue!10004 (transformation!7340 r!4008)) lt!1473911))))

(declare-fun b_lambda!121461 () Bool)

(assert (=> (not b_lambda!121461) (not d!1224561)))

(declare-fun t!341811 () Bool)

(declare-fun tb!248121 () Bool)

(assert (=> (and b!4134036 (= (toValue!10004 (transformation!7340 r!4008)) (toValue!10004 (transformation!7340 r!4008))) t!341811) tb!248121))

(declare-fun result!301620 () Bool)

(declare-fun inv!21 (TokenValue!7570) Bool)

(assert (=> tb!248121 (= result!301620 (inv!21 (dynLambda!19218 (toValue!10004 (transformation!7340 r!4008)) lt!1473911)))))

(declare-fun m!4731053 () Bool)

(assert (=> tb!248121 m!4731053))

(assert (=> d!1224561 t!341811))

(declare-fun b_and!320635 () Bool)

(assert (= b_and!320617 (and (=> t!341811 result!301620) b_and!320635)))

(declare-fun t!341813 () Bool)

(declare-fun tb!248123 () Bool)

(assert (=> (and b!4134021 (= (toValue!10004 (transformation!7340 rBis!149)) (toValue!10004 (transformation!7340 r!4008))) t!341813) tb!248123))

(declare-fun result!301624 () Bool)

(assert (= result!301624 result!301620))

(assert (=> d!1224561 t!341813))

(declare-fun b_and!320637 () Bool)

(assert (= b_and!320621 (and (=> t!341813 result!301624) b_and!320637)))

(declare-fun t!341815 () Bool)

(declare-fun tb!248125 () Bool)

(assert (=> (and b!4134022 (= (toValue!10004 (transformation!7340 (h!50206 rules!3756))) (toValue!10004 (transformation!7340 r!4008))) t!341815) tb!248125))

(declare-fun result!301626 () Bool)

(assert (= result!301626 result!301620))

(assert (=> d!1224561 t!341815))

(declare-fun b_and!320639 () Bool)

(assert (= b_and!320625 (and (=> t!341815 result!301626) b_and!320639)))

(declare-fun m!4731055 () Bool)

(assert (=> d!1224561 m!4731055))

(assert (=> b!4134028 d!1224561))

(declare-fun d!1224563 () Bool)

(declare-fun lt!1473990 () List!44909)

(assert (=> d!1224563 (= (++!11588 p!2912 lt!1473990) input!3238)))

(declare-fun e!2565145 () List!44909)

(assert (=> d!1224563 (= lt!1473990 e!2565145)))

(declare-fun c!709168 () Bool)

(assert (=> d!1224563 (= c!709168 ((_ is Cons!44785) p!2912))))

(assert (=> d!1224563 (>= (size!33146 input!3238) (size!33146 p!2912))))

(assert (=> d!1224563 (= (getSuffix!2602 input!3238 p!2912) lt!1473990)))

(declare-fun b!4134234 () Bool)

(declare-fun tail!6495 (List!44909) List!44909)

(assert (=> b!4134234 (= e!2565145 (getSuffix!2602 (tail!6495 input!3238) (t!341802 p!2912)))))

(declare-fun b!4134235 () Bool)

(assert (=> b!4134235 (= e!2565145 input!3238)))

(assert (= (and d!1224563 c!709168) b!4134234))

(assert (= (and d!1224563 (not c!709168)) b!4134235))

(declare-fun m!4731057 () Bool)

(assert (=> d!1224563 m!4731057))

(assert (=> d!1224563 m!4731009))

(assert (=> d!1224563 m!4730823))

(declare-fun m!4731059 () Bool)

(assert (=> b!4134234 m!4731059))

(assert (=> b!4134234 m!4731059))

(declare-fun m!4731061 () Bool)

(assert (=> b!4134234 m!4731061))

(assert (=> b!4134028 d!1224563))

(declare-fun b!4134256 () Bool)

(declare-fun e!2565157 () Bool)

(assert (=> b!4134256 (= e!2565157 true)))

(declare-fun d!1224565 () Bool)

(assert (=> d!1224565 e!2565157))

(assert (= d!1224565 b!4134256))

(declare-fun lambda!128895 () Int)

(declare-fun order!23659 () Int)

(declare-fun order!23657 () Int)

(declare-fun dynLambda!19224 (Int Int) Int)

(declare-fun dynLambda!19225 (Int Int) Int)

(assert (=> b!4134256 (< (dynLambda!19224 order!23657 (toValue!10004 (transformation!7340 r!4008))) (dynLambda!19225 order!23659 lambda!128895))))

(declare-fun order!23661 () Int)

(declare-fun dynLambda!19226 (Int Int) Int)

(assert (=> b!4134256 (< (dynLambda!19226 order!23661 (toChars!9863 (transformation!7340 r!4008))) (dynLambda!19225 order!23659 lambda!128895))))

(declare-fun dynLambda!19227 (Int TokenValue!7570) BalanceConc!26696)

(assert (=> d!1224565 (= (list!16401 (dynLambda!19227 (toChars!9863 (transformation!7340 r!4008)) (dynLambda!19218 (toValue!10004 (transformation!7340 r!4008)) lt!1473911))) (list!16401 lt!1473911))))

(declare-fun lt!1473997 () Unit!64103)

(declare-fun ForallOf!952 (Int BalanceConc!26696) Unit!64103)

(assert (=> d!1224565 (= lt!1473997 (ForallOf!952 lambda!128895 lt!1473911))))

(assert (=> d!1224565 (= (lemmaSemiInverse!2198 (transformation!7340 r!4008) lt!1473911) lt!1473997)))

(declare-fun b_lambda!121467 () Bool)

(assert (=> (not b_lambda!121467) (not d!1224565)))

(declare-fun t!341823 () Bool)

(declare-fun tb!248133 () Bool)

(assert (=> (and b!4134036 (= (toChars!9863 (transformation!7340 r!4008)) (toChars!9863 (transformation!7340 r!4008))) t!341823) tb!248133))

(declare-fun tp!1260146 () Bool)

(declare-fun b!4134261 () Bool)

(declare-fun e!2565160 () Bool)

(declare-fun inv!59392 (Conc!13551) Bool)

(assert (=> b!4134261 (= e!2565160 (and (inv!59392 (c!709132 (dynLambda!19227 (toChars!9863 (transformation!7340 r!4008)) (dynLambda!19218 (toValue!10004 (transformation!7340 r!4008)) lt!1473911)))) tp!1260146))))

(declare-fun result!301636 () Bool)

(declare-fun inv!59393 (BalanceConc!26696) Bool)

(assert (=> tb!248133 (= result!301636 (and (inv!59393 (dynLambda!19227 (toChars!9863 (transformation!7340 r!4008)) (dynLambda!19218 (toValue!10004 (transformation!7340 r!4008)) lt!1473911))) e!2565160))))

(assert (= tb!248133 b!4134261))

(declare-fun m!4731079 () Bool)

(assert (=> b!4134261 m!4731079))

(declare-fun m!4731081 () Bool)

(assert (=> tb!248133 m!4731081))

(assert (=> d!1224565 t!341823))

(declare-fun b_and!320653 () Bool)

(assert (= b_and!320619 (and (=> t!341823 result!301636) b_and!320653)))

(declare-fun t!341825 () Bool)

(declare-fun tb!248135 () Bool)

(assert (=> (and b!4134021 (= (toChars!9863 (transformation!7340 rBis!149)) (toChars!9863 (transformation!7340 r!4008))) t!341825) tb!248135))

(declare-fun result!301640 () Bool)

(assert (= result!301640 result!301636))

(assert (=> d!1224565 t!341825))

(declare-fun b_and!320655 () Bool)

(assert (= b_and!320623 (and (=> t!341825 result!301640) b_and!320655)))

(declare-fun t!341827 () Bool)

(declare-fun tb!248137 () Bool)

(assert (=> (and b!4134022 (= (toChars!9863 (transformation!7340 (h!50206 rules!3756))) (toChars!9863 (transformation!7340 r!4008))) t!341827) tb!248137))

(declare-fun result!301642 () Bool)

(assert (= result!301642 result!301636))

(assert (=> d!1224565 t!341827))

(declare-fun b_and!320657 () Bool)

(assert (= b_and!320627 (and (=> t!341827 result!301642) b_and!320657)))

(declare-fun b_lambda!121469 () Bool)

(assert (=> (not b_lambda!121469) (not d!1224565)))

(assert (=> d!1224565 t!341811))

(declare-fun b_and!320659 () Bool)

(assert (= b_and!320635 (and (=> t!341811 result!301620) b_and!320659)))

(assert (=> d!1224565 t!341813))

(declare-fun b_and!320661 () Bool)

(assert (= b_and!320637 (and (=> t!341813 result!301624) b_and!320661)))

(assert (=> d!1224565 t!341815))

(declare-fun b_and!320663 () Bool)

(assert (= b_and!320639 (and (=> t!341815 result!301626) b_and!320663)))

(declare-fun m!4731083 () Bool)

(assert (=> d!1224565 m!4731083))

(declare-fun m!4731085 () Bool)

(assert (=> d!1224565 m!4731085))

(assert (=> d!1224565 m!4731055))

(declare-fun m!4731087 () Bool)

(assert (=> d!1224565 m!4731087))

(declare-fun m!4731089 () Bool)

(assert (=> d!1224565 m!4731089))

(assert (=> d!1224565 m!4731055))

(assert (=> d!1224565 m!4731087))

(assert (=> b!4134028 d!1224565))

(declare-fun b!4134352 () Bool)

(declare-fun res!1690434 () Bool)

(declare-fun e!2565201 () Bool)

(assert (=> b!4134352 (=> (not res!1690434) (not e!2565201))))

(declare-fun lt!1474029 () Option!9646)

(assert (=> b!4134352 (= res!1690434 (< (size!33146 (_2!24727 (get!14607 lt!1474029))) (size!33146 input!3238)))))

(declare-fun b!4134353 () Bool)

(declare-fun e!2565202 () Option!9646)

(declare-fun lt!1474026 () Option!9646)

(declare-fun lt!1474027 () Option!9646)

(assert (=> b!4134353 (= e!2565202 (ite (and ((_ is None!9645) lt!1474026) ((_ is None!9645) lt!1474027)) None!9645 (ite ((_ is None!9645) lt!1474027) lt!1474026 (ite ((_ is None!9645) lt!1474026) lt!1474027 (ite (>= (size!33145 (_1!24727 (v!40265 lt!1474026))) (size!33145 (_1!24727 (v!40265 lt!1474027)))) lt!1474026 lt!1474027)))))))

(declare-fun call!290401 () Option!9646)

(assert (=> b!4134353 (= lt!1474026 call!290401)))

(assert (=> b!4134353 (= lt!1474027 (maxPrefix!4119 thiss!25645 (t!341803 rules!3756) input!3238))))

(declare-fun d!1224571 () Bool)

(declare-fun e!2565200 () Bool)

(assert (=> d!1224571 e!2565200))

(declare-fun res!1690431 () Bool)

(assert (=> d!1224571 (=> res!1690431 e!2565200)))

(assert (=> d!1224571 (= res!1690431 (isEmpty!26673 lt!1474029))))

(assert (=> d!1224571 (= lt!1474029 e!2565202)))

(declare-fun c!709181 () Bool)

(assert (=> d!1224571 (= c!709181 (and ((_ is Cons!44786) rules!3756) ((_ is Nil!44786) (t!341803 rules!3756))))))

(declare-fun lt!1474028 () Unit!64103)

(declare-fun lt!1474030 () Unit!64103)

(assert (=> d!1224571 (= lt!1474028 lt!1474030)))

(assert (=> d!1224571 (isPrefix!4275 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2765 (List!44909 List!44909) Unit!64103)

(assert (=> d!1224571 (= lt!1474030 (lemmaIsPrefixRefl!2765 input!3238 input!3238))))

(declare-fun rulesValidInductive!2719 (LexerInterface!6929 List!44910) Bool)

(assert (=> d!1224571 (rulesValidInductive!2719 thiss!25645 rules!3756)))

(assert (=> d!1224571 (= (maxPrefix!4119 thiss!25645 rules!3756 input!3238) lt!1474029)))

(declare-fun b!4134354 () Bool)

(declare-fun res!1690433 () Bool)

(assert (=> b!4134354 (=> (not res!1690433) (not e!2565201))))

(assert (=> b!4134354 (= res!1690433 (= (list!16401 (charsOf!4941 (_1!24727 (get!14607 lt!1474029)))) (originalCharacters!7836 (_1!24727 (get!14607 lt!1474029)))))))

(declare-fun b!4134355 () Bool)

(declare-fun res!1690430 () Bool)

(assert (=> b!4134355 (=> (not res!1690430) (not e!2565201))))

(assert (=> b!4134355 (= res!1690430 (= (value!229744 (_1!24727 (get!14607 lt!1474029))) (apply!10413 (transformation!7340 (rule!10432 (_1!24727 (get!14607 lt!1474029)))) (seqFromList!5457 (originalCharacters!7836 (_1!24727 (get!14607 lt!1474029)))))))))

(declare-fun b!4134356 () Bool)

(declare-fun res!1690428 () Bool)

(assert (=> b!4134356 (=> (not res!1690428) (not e!2565201))))

(assert (=> b!4134356 (= res!1690428 (= (++!11588 (list!16401 (charsOf!4941 (_1!24727 (get!14607 lt!1474029)))) (_2!24727 (get!14607 lt!1474029))) input!3238))))

(declare-fun b!4134357 () Bool)

(assert (=> b!4134357 (= e!2565202 call!290401)))

(declare-fun b!4134358 () Bool)

(assert (=> b!4134358 (= e!2565200 e!2565201)))

(declare-fun res!1690432 () Bool)

(assert (=> b!4134358 (=> (not res!1690432) (not e!2565201))))

(declare-fun isDefined!7260 (Option!9646) Bool)

(assert (=> b!4134358 (= res!1690432 (isDefined!7260 lt!1474029))))

(declare-fun b!4134359 () Bool)

(declare-fun res!1690429 () Bool)

(assert (=> b!4134359 (=> (not res!1690429) (not e!2565201))))

(assert (=> b!4134359 (= res!1690429 (matchR!6074 (regex!7340 (rule!10432 (_1!24727 (get!14607 lt!1474029)))) (list!16401 (charsOf!4941 (_1!24727 (get!14607 lt!1474029))))))))

(declare-fun bm!290396 () Bool)

(assert (=> bm!290396 (= call!290401 (maxPrefixOneRule!3058 thiss!25645 (h!50206 rules!3756) input!3238))))

(declare-fun b!4134360 () Bool)

(assert (=> b!4134360 (= e!2565201 (contains!9020 rules!3756 (rule!10432 (_1!24727 (get!14607 lt!1474029)))))))

(assert (= (and d!1224571 c!709181) b!4134357))

(assert (= (and d!1224571 (not c!709181)) b!4134353))

(assert (= (or b!4134357 b!4134353) bm!290396))

(assert (= (and d!1224571 (not res!1690431)) b!4134358))

(assert (= (and b!4134358 res!1690432) b!4134354))

(assert (= (and b!4134354 res!1690433) b!4134352))

(assert (= (and b!4134352 res!1690434) b!4134356))

(assert (= (and b!4134356 res!1690428) b!4134355))

(assert (= (and b!4134355 res!1690430) b!4134359))

(assert (= (and b!4134359 res!1690429) b!4134360))

(declare-fun m!4731131 () Bool)

(assert (=> d!1224571 m!4731131))

(declare-fun m!4731133 () Bool)

(assert (=> d!1224571 m!4731133))

(declare-fun m!4731135 () Bool)

(assert (=> d!1224571 m!4731135))

(declare-fun m!4731137 () Bool)

(assert (=> d!1224571 m!4731137))

(declare-fun m!4731139 () Bool)

(assert (=> b!4134353 m!4731139))

(declare-fun m!4731141 () Bool)

(assert (=> b!4134360 m!4731141))

(declare-fun m!4731143 () Bool)

(assert (=> b!4134360 m!4731143))

(assert (=> b!4134352 m!4731141))

(declare-fun m!4731145 () Bool)

(assert (=> b!4134352 m!4731145))

(assert (=> b!4134352 m!4731009))

(assert (=> b!4134359 m!4731141))

(declare-fun m!4731147 () Bool)

(assert (=> b!4134359 m!4731147))

(assert (=> b!4134359 m!4731147))

(declare-fun m!4731149 () Bool)

(assert (=> b!4134359 m!4731149))

(assert (=> b!4134359 m!4731149))

(declare-fun m!4731151 () Bool)

(assert (=> b!4134359 m!4731151))

(assert (=> b!4134354 m!4731141))

(assert (=> b!4134354 m!4731147))

(assert (=> b!4134354 m!4731147))

(assert (=> b!4134354 m!4731149))

(declare-fun m!4731153 () Bool)

(assert (=> b!4134358 m!4731153))

(declare-fun m!4731155 () Bool)

(assert (=> bm!290396 m!4731155))

(assert (=> b!4134355 m!4731141))

(declare-fun m!4731157 () Bool)

(assert (=> b!4134355 m!4731157))

(assert (=> b!4134355 m!4731157))

(declare-fun m!4731159 () Bool)

(assert (=> b!4134355 m!4731159))

(assert (=> b!4134356 m!4731141))

(assert (=> b!4134356 m!4731147))

(assert (=> b!4134356 m!4731147))

(assert (=> b!4134356 m!4731149))

(assert (=> b!4134356 m!4731149))

(declare-fun m!4731161 () Bool)

(assert (=> b!4134356 m!4731161))

(assert (=> b!4134028 d!1224571))

(declare-fun d!1224577 () Bool)

(declare-fun fromListB!2500 (List!44909) BalanceConc!26696)

(assert (=> d!1224577 (= (seqFromList!5457 p!2912) (fromListB!2500 p!2912))))

(declare-fun bs!595089 () Bool)

(assert (= bs!595089 d!1224577))

(declare-fun m!4731163 () Bool)

(assert (=> bs!595089 m!4731163))

(assert (=> b!4134028 d!1224577))

(declare-fun d!1224579 () Bool)

(declare-fun lt!1474033 () Int)

(assert (=> d!1224579 (>= lt!1474033 0)))

(declare-fun e!2565205 () Int)

(assert (=> d!1224579 (= lt!1474033 e!2565205)))

(declare-fun c!709184 () Bool)

(assert (=> d!1224579 (= c!709184 ((_ is Nil!44785) p!2912))))

(assert (=> d!1224579 (= (size!33146 p!2912) lt!1474033)))

(declare-fun b!4134365 () Bool)

(assert (=> b!4134365 (= e!2565205 0)))

(declare-fun b!4134366 () Bool)

(assert (=> b!4134366 (= e!2565205 (+ 1 (size!33146 (t!341802 p!2912))))))

(assert (= (and d!1224579 c!709184) b!4134365))

(assert (= (and d!1224579 (not c!709184)) b!4134366))

(declare-fun m!4731165 () Bool)

(assert (=> b!4134366 m!4731165))

(assert (=> b!4134028 d!1224579))

(declare-fun b!4134375 () Bool)

(declare-fun e!2565213 () Bool)

(declare-fun e!2565212 () Bool)

(assert (=> b!4134375 (= e!2565213 e!2565212)))

(declare-fun res!1690443 () Bool)

(assert (=> b!4134375 (=> (not res!1690443) (not e!2565212))))

(assert (=> b!4134375 (= res!1690443 (not ((_ is Nil!44785) input!3238)))))

(declare-fun b!4134376 () Bool)

(declare-fun res!1690445 () Bool)

(assert (=> b!4134376 (=> (not res!1690445) (not e!2565212))))

(declare-fun head!8718 (List!44909) C!24676)

(assert (=> b!4134376 (= res!1690445 (= (head!8718 p!2912) (head!8718 input!3238)))))

(declare-fun b!4134378 () Bool)

(declare-fun e!2565214 () Bool)

(assert (=> b!4134378 (= e!2565214 (>= (size!33146 input!3238) (size!33146 p!2912)))))

(declare-fun d!1224581 () Bool)

(assert (=> d!1224581 e!2565214))

(declare-fun res!1690446 () Bool)

(assert (=> d!1224581 (=> res!1690446 e!2565214)))

(declare-fun lt!1474036 () Bool)

(assert (=> d!1224581 (= res!1690446 (not lt!1474036))))

(assert (=> d!1224581 (= lt!1474036 e!2565213)))

(declare-fun res!1690444 () Bool)

(assert (=> d!1224581 (=> res!1690444 e!2565213)))

(assert (=> d!1224581 (= res!1690444 ((_ is Nil!44785) p!2912))))

(assert (=> d!1224581 (= (isPrefix!4275 p!2912 input!3238) lt!1474036)))

(declare-fun b!4134377 () Bool)

(assert (=> b!4134377 (= e!2565212 (isPrefix!4275 (tail!6495 p!2912) (tail!6495 input!3238)))))

(assert (= (and d!1224581 (not res!1690444)) b!4134375))

(assert (= (and b!4134375 res!1690443) b!4134376))

(assert (= (and b!4134376 res!1690445) b!4134377))

(assert (= (and d!1224581 (not res!1690446)) b!4134378))

(declare-fun m!4731167 () Bool)

(assert (=> b!4134376 m!4731167))

(declare-fun m!4731169 () Bool)

(assert (=> b!4134376 m!4731169))

(assert (=> b!4134378 m!4731009))

(assert (=> b!4134378 m!4730823))

(declare-fun m!4731171 () Bool)

(assert (=> b!4134377 m!4731171))

(assert (=> b!4134377 m!4731059))

(assert (=> b!4134377 m!4731171))

(assert (=> b!4134377 m!4731059))

(declare-fun m!4731173 () Bool)

(assert (=> b!4134377 m!4731173))

(assert (=> b!4134017 d!1224581))

(declare-fun d!1224583 () Bool)

(declare-fun res!1690449 () Bool)

(declare-fun e!2565217 () Bool)

(assert (=> d!1224583 (=> (not res!1690449) (not e!2565217))))

(declare-fun rulesValid!2883 (LexerInterface!6929 List!44910) Bool)

(assert (=> d!1224583 (= res!1690449 (rulesValid!2883 thiss!25645 rules!3756))))

(assert (=> d!1224583 (= (rulesInvariant!6226 thiss!25645 rules!3756) e!2565217)))

(declare-fun b!4134381 () Bool)

(declare-datatypes ((List!44912 0))(
  ( (Nil!44788) (Cons!44788 (h!50208 String!51600) (t!341837 List!44912)) )
))
(declare-fun noDuplicateTag!2966 (LexerInterface!6929 List!44910 List!44912) Bool)

(assert (=> b!4134381 (= e!2565217 (noDuplicateTag!2966 thiss!25645 rules!3756 Nil!44788))))

(assert (= (and d!1224583 res!1690449) b!4134381))

(declare-fun m!4731175 () Bool)

(assert (=> d!1224583 m!4731175))

(declare-fun m!4731177 () Bool)

(assert (=> b!4134381 m!4731177))

(assert (=> b!4134034 d!1224583))

(declare-fun d!1224585 () Bool)

(assert (=> d!1224585 (= (inv!59387 (tag!8200 (h!50206 rules!3756))) (= (mod (str.len (value!229743 (tag!8200 (h!50206 rules!3756)))) 2) 0))))

(assert (=> b!4134023 d!1224585))

(declare-fun d!1224587 () Bool)

(declare-fun res!1690450 () Bool)

(declare-fun e!2565218 () Bool)

(assert (=> d!1224587 (=> (not res!1690450) (not e!2565218))))

(assert (=> d!1224587 (= res!1690450 (semiInverseModEq!3169 (toChars!9863 (transformation!7340 (h!50206 rules!3756))) (toValue!10004 (transformation!7340 (h!50206 rules!3756)))))))

(assert (=> d!1224587 (= (inv!59389 (transformation!7340 (h!50206 rules!3756))) e!2565218)))

(declare-fun b!4134382 () Bool)

(assert (=> b!4134382 (= e!2565218 (equivClasses!3068 (toChars!9863 (transformation!7340 (h!50206 rules!3756))) (toValue!10004 (transformation!7340 (h!50206 rules!3756)))))))

(assert (= (and d!1224587 res!1690450) b!4134382))

(declare-fun m!4731179 () Bool)

(assert (=> d!1224587 m!4731179))

(declare-fun m!4731181 () Bool)

(assert (=> b!4134382 m!4731181))

(assert (=> b!4134023 d!1224587))

(declare-fun d!1224589 () Bool)

(assert (=> d!1224589 (ruleValid!3146 thiss!25645 r!4008)))

(declare-fun lt!1474039 () Unit!64103)

(declare-fun choose!25266 (LexerInterface!6929 Rule!14480 List!44910) Unit!64103)

(assert (=> d!1224589 (= lt!1474039 (choose!25266 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1224589 (contains!9020 rules!3756 r!4008)))

(assert (=> d!1224589 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2186 thiss!25645 r!4008 rules!3756) lt!1474039)))

(declare-fun bs!595090 () Bool)

(assert (= bs!595090 d!1224589))

(assert (=> bs!595090 m!4730847))

(declare-fun m!4731183 () Bool)

(assert (=> bs!595090 m!4731183))

(assert (=> bs!595090 m!4730849))

(assert (=> b!4134035 d!1224589))

(declare-fun d!1224591 () Bool)

(declare-fun res!1690451 () Bool)

(declare-fun e!2565219 () Bool)

(assert (=> d!1224591 (=> (not res!1690451) (not e!2565219))))

(assert (=> d!1224591 (= res!1690451 (validRegex!5512 (regex!7340 rBis!149)))))

(assert (=> d!1224591 (= (ruleValid!3146 thiss!25645 rBis!149) e!2565219)))

(declare-fun b!4134383 () Bool)

(declare-fun res!1690452 () Bool)

(assert (=> b!4134383 (=> (not res!1690452) (not e!2565219))))

(assert (=> b!4134383 (= res!1690452 (not (nullable!4304 (regex!7340 rBis!149))))))

(declare-fun b!4134384 () Bool)

(assert (=> b!4134384 (= e!2565219 (not (= (tag!8200 rBis!149) (String!51601 ""))))))

(assert (= (and d!1224591 res!1690451) b!4134383))

(assert (= (and b!4134383 res!1690452) b!4134384))

(declare-fun m!4731185 () Bool)

(assert (=> d!1224591 m!4731185))

(declare-fun m!4731187 () Bool)

(assert (=> b!4134383 m!4731187))

(assert (=> b!4134035 d!1224591))

(declare-fun d!1224593 () Bool)

(assert (=> d!1224593 (ruleValid!3146 thiss!25645 rBis!149)))

(declare-fun lt!1474040 () Unit!64103)

(assert (=> d!1224593 (= lt!1474040 (choose!25266 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1224593 (contains!9020 rules!3756 rBis!149)))

(assert (=> d!1224593 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2186 thiss!25645 rBis!149 rules!3756) lt!1474040)))

(declare-fun bs!595091 () Bool)

(assert (= bs!595091 d!1224593))

(assert (=> bs!595091 m!4730841))

(declare-fun m!4731189 () Bool)

(assert (=> bs!595091 m!4731189))

(assert (=> bs!595091 m!4730845))

(assert (=> b!4134035 d!1224593))

(declare-fun b!4134413 () Bool)

(declare-fun res!1690475 () Bool)

(declare-fun e!2565237 () Bool)

(assert (=> b!4134413 (=> (not res!1690475) (not e!2565237))))

(declare-fun call!290404 () Bool)

(assert (=> b!4134413 (= res!1690475 (not call!290404))))

(declare-fun b!4134414 () Bool)

(declare-fun e!2565234 () Bool)

(declare-fun e!2565236 () Bool)

(assert (=> b!4134414 (= e!2565234 e!2565236)))

(declare-fun c!709192 () Bool)

(assert (=> b!4134414 (= c!709192 ((_ is EmptyLang!12245) (regex!7340 r!4008)))))

(declare-fun b!4134415 () Bool)

(declare-fun e!2565240 () Bool)

(declare-fun e!2565235 () Bool)

(assert (=> b!4134415 (= e!2565240 e!2565235)))

(declare-fun res!1690471 () Bool)

(assert (=> b!4134415 (=> (not res!1690471) (not e!2565235))))

(declare-fun lt!1474043 () Bool)

(assert (=> b!4134415 (= res!1690471 (not lt!1474043))))

(declare-fun b!4134416 () Bool)

(declare-fun e!2565239 () Bool)

(assert (=> b!4134416 (= e!2565235 e!2565239)))

(declare-fun res!1690473 () Bool)

(assert (=> b!4134416 (=> res!1690473 e!2565239)))

(assert (=> b!4134416 (= res!1690473 call!290404)))

(declare-fun b!4134417 () Bool)

(assert (=> b!4134417 (= e!2565234 (= lt!1474043 call!290404))))

(declare-fun d!1224595 () Bool)

(assert (=> d!1224595 e!2565234))

(declare-fun c!709191 () Bool)

(assert (=> d!1224595 (= c!709191 ((_ is EmptyExpr!12245) (regex!7340 r!4008)))))

(declare-fun e!2565238 () Bool)

(assert (=> d!1224595 (= lt!1474043 e!2565238)))

(declare-fun c!709193 () Bool)

(assert (=> d!1224595 (= c!709193 (isEmpty!26675 p!2912))))

(assert (=> d!1224595 (validRegex!5512 (regex!7340 r!4008))))

(assert (=> d!1224595 (= (matchR!6074 (regex!7340 r!4008) p!2912) lt!1474043)))

(declare-fun bm!290399 () Bool)

(assert (=> bm!290399 (= call!290404 (isEmpty!26675 p!2912))))

(declare-fun b!4134418 () Bool)

(assert (=> b!4134418 (= e!2565237 (= (head!8718 p!2912) (c!709133 (regex!7340 r!4008))))))

(declare-fun b!4134419 () Bool)

(declare-fun res!1690472 () Bool)

(assert (=> b!4134419 (=> (not res!1690472) (not e!2565237))))

(assert (=> b!4134419 (= res!1690472 (isEmpty!26675 (tail!6495 p!2912)))))

(declare-fun b!4134420 () Bool)

(declare-fun res!1690469 () Bool)

(assert (=> b!4134420 (=> res!1690469 e!2565240)))

(assert (=> b!4134420 (= res!1690469 (not ((_ is ElementMatch!12245) (regex!7340 r!4008))))))

(assert (=> b!4134420 (= e!2565236 e!2565240)))

(declare-fun b!4134421 () Bool)

(assert (=> b!4134421 (= e!2565238 (nullable!4304 (regex!7340 r!4008)))))

(declare-fun b!4134422 () Bool)

(declare-fun res!1690470 () Bool)

(assert (=> b!4134422 (=> res!1690470 e!2565240)))

(assert (=> b!4134422 (= res!1690470 e!2565237)))

(declare-fun res!1690474 () Bool)

(assert (=> b!4134422 (=> (not res!1690474) (not e!2565237))))

(assert (=> b!4134422 (= res!1690474 lt!1474043)))

(declare-fun b!4134423 () Bool)

(assert (=> b!4134423 (= e!2565239 (not (= (head!8718 p!2912) (c!709133 (regex!7340 r!4008)))))))

(declare-fun b!4134424 () Bool)

(declare-fun res!1690476 () Bool)

(assert (=> b!4134424 (=> res!1690476 e!2565239)))

(assert (=> b!4134424 (= res!1690476 (not (isEmpty!26675 (tail!6495 p!2912))))))

(declare-fun b!4134425 () Bool)

(declare-fun derivativeStep!3700 (Regex!12245 C!24676) Regex!12245)

(assert (=> b!4134425 (= e!2565238 (matchR!6074 (derivativeStep!3700 (regex!7340 r!4008) (head!8718 p!2912)) (tail!6495 p!2912)))))

(declare-fun b!4134426 () Bool)

(assert (=> b!4134426 (= e!2565236 (not lt!1474043))))

(assert (= (and d!1224595 c!709193) b!4134421))

(assert (= (and d!1224595 (not c!709193)) b!4134425))

(assert (= (and d!1224595 c!709191) b!4134417))

(assert (= (and d!1224595 (not c!709191)) b!4134414))

(assert (= (and b!4134414 c!709192) b!4134426))

(assert (= (and b!4134414 (not c!709192)) b!4134420))

(assert (= (and b!4134420 (not res!1690469)) b!4134422))

(assert (= (and b!4134422 res!1690474) b!4134413))

(assert (= (and b!4134413 res!1690475) b!4134419))

(assert (= (and b!4134419 res!1690472) b!4134418))

(assert (= (and b!4134422 (not res!1690470)) b!4134415))

(assert (= (and b!4134415 res!1690471) b!4134416))

(assert (= (and b!4134416 (not res!1690473)) b!4134424))

(assert (= (and b!4134424 (not res!1690476)) b!4134423))

(assert (= (or b!4134417 b!4134413 b!4134416) bm!290399))

(assert (=> b!4134421 m!4730867))

(assert (=> bm!290399 m!4730817))

(assert (=> d!1224595 m!4730817))

(assert (=> d!1224595 m!4730865))

(assert (=> b!4134424 m!4731171))

(assert (=> b!4134424 m!4731171))

(declare-fun m!4731191 () Bool)

(assert (=> b!4134424 m!4731191))

(assert (=> b!4134423 m!4731167))

(assert (=> b!4134425 m!4731167))

(assert (=> b!4134425 m!4731167))

(declare-fun m!4731193 () Bool)

(assert (=> b!4134425 m!4731193))

(assert (=> b!4134425 m!4731171))

(assert (=> b!4134425 m!4731193))

(assert (=> b!4134425 m!4731171))

(declare-fun m!4731195 () Bool)

(assert (=> b!4134425 m!4731195))

(assert (=> b!4134419 m!4731171))

(assert (=> b!4134419 m!4731171))

(assert (=> b!4134419 m!4731191))

(assert (=> b!4134418 m!4731167))

(assert (=> b!4134025 d!1224595))

(declare-fun d!1224597 () Bool)

(assert (=> d!1224597 (= (inv!59387 (tag!8200 rBis!149)) (= (mod (str.len (value!229743 (tag!8200 rBis!149))) 2) 0))))

(assert (=> b!4134031 d!1224597))

(declare-fun d!1224599 () Bool)

(declare-fun res!1690477 () Bool)

(declare-fun e!2565241 () Bool)

(assert (=> d!1224599 (=> (not res!1690477) (not e!2565241))))

(assert (=> d!1224599 (= res!1690477 (semiInverseModEq!3169 (toChars!9863 (transformation!7340 rBis!149)) (toValue!10004 (transformation!7340 rBis!149))))))

(assert (=> d!1224599 (= (inv!59389 (transformation!7340 rBis!149)) e!2565241)))

(declare-fun b!4134427 () Bool)

(assert (=> b!4134427 (= e!2565241 (equivClasses!3068 (toChars!9863 (transformation!7340 rBis!149)) (toValue!10004 (transformation!7340 rBis!149))))))

(assert (= (and d!1224599 res!1690477) b!4134427))

(declare-fun m!4731197 () Bool)

(assert (=> d!1224599 m!4731197))

(declare-fun m!4731199 () Bool)

(assert (=> b!4134427 m!4731199))

(assert (=> b!4134031 d!1224599))

(declare-fun d!1224601 () Bool)

(declare-fun lt!1474044 () Bool)

(assert (=> d!1224601 (= lt!1474044 (select (content!6909 rules!3756) rBis!149))))

(declare-fun e!2565242 () Bool)

(assert (=> d!1224601 (= lt!1474044 e!2565242)))

(declare-fun res!1690478 () Bool)

(assert (=> d!1224601 (=> (not res!1690478) (not e!2565242))))

(assert (=> d!1224601 (= res!1690478 ((_ is Cons!44786) rules!3756))))

(assert (=> d!1224601 (= (contains!9020 rules!3756 rBis!149) lt!1474044)))

(declare-fun b!4134428 () Bool)

(declare-fun e!2565243 () Bool)

(assert (=> b!4134428 (= e!2565242 e!2565243)))

(declare-fun res!1690479 () Bool)

(assert (=> b!4134428 (=> res!1690479 e!2565243)))

(assert (=> b!4134428 (= res!1690479 (= (h!50206 rules!3756) rBis!149))))

(declare-fun b!4134429 () Bool)

(assert (=> b!4134429 (= e!2565243 (contains!9020 (t!341803 rules!3756) rBis!149))))

(assert (= (and d!1224601 res!1690478) b!4134428))

(assert (= (and b!4134428 (not res!1690479)) b!4134429))

(assert (=> d!1224601 m!4730895))

(declare-fun m!4731201 () Bool)

(assert (=> d!1224601 m!4731201))

(declare-fun m!4731203 () Bool)

(assert (=> b!4134429 m!4731203))

(assert (=> b!4134032 d!1224601))

(declare-fun d!1224603 () Bool)

(assert (=> d!1224603 (= (isEmpty!26675 p!2912) ((_ is Nil!44785) p!2912))))

(assert (=> b!4134033 d!1224603))

(declare-fun b!4134440 () Bool)

(declare-fun e!2565246 () Bool)

(assert (=> b!4134440 (= e!2565246 tp_is_empty!21413)))

(declare-fun b!4134442 () Bool)

(declare-fun tp!1260200 () Bool)

(assert (=> b!4134442 (= e!2565246 tp!1260200)))

(declare-fun b!4134443 () Bool)

(declare-fun tp!1260198 () Bool)

(declare-fun tp!1260201 () Bool)

(assert (=> b!4134443 (= e!2565246 (and tp!1260198 tp!1260201))))

(assert (=> b!4134023 (= tp!1260131 e!2565246)))

(declare-fun b!4134441 () Bool)

(declare-fun tp!1260202 () Bool)

(declare-fun tp!1260199 () Bool)

(assert (=> b!4134441 (= e!2565246 (and tp!1260202 tp!1260199))))

(assert (= (and b!4134023 ((_ is ElementMatch!12245) (regex!7340 (h!50206 rules!3756)))) b!4134440))

(assert (= (and b!4134023 ((_ is Concat!19816) (regex!7340 (h!50206 rules!3756)))) b!4134441))

(assert (= (and b!4134023 ((_ is Star!12245) (regex!7340 (h!50206 rules!3756)))) b!4134442))

(assert (= (and b!4134023 ((_ is Union!12245) (regex!7340 (h!50206 rules!3756)))) b!4134443))

(declare-fun b!4134444 () Bool)

(declare-fun e!2565247 () Bool)

(assert (=> b!4134444 (= e!2565247 tp_is_empty!21413)))

(declare-fun b!4134446 () Bool)

(declare-fun tp!1260205 () Bool)

(assert (=> b!4134446 (= e!2565247 tp!1260205)))

(declare-fun b!4134447 () Bool)

(declare-fun tp!1260203 () Bool)

(declare-fun tp!1260206 () Bool)

(assert (=> b!4134447 (= e!2565247 (and tp!1260203 tp!1260206))))

(assert (=> b!4134030 (= tp!1260132 e!2565247)))

(declare-fun b!4134445 () Bool)

(declare-fun tp!1260207 () Bool)

(declare-fun tp!1260204 () Bool)

(assert (=> b!4134445 (= e!2565247 (and tp!1260207 tp!1260204))))

(assert (= (and b!4134030 ((_ is ElementMatch!12245) (regex!7340 r!4008))) b!4134444))

(assert (= (and b!4134030 ((_ is Concat!19816) (regex!7340 r!4008))) b!4134445))

(assert (= (and b!4134030 ((_ is Star!12245) (regex!7340 r!4008))) b!4134446))

(assert (= (and b!4134030 ((_ is Union!12245) (regex!7340 r!4008))) b!4134447))

(declare-fun b!4134452 () Bool)

(declare-fun e!2565250 () Bool)

(declare-fun tp!1260210 () Bool)

(assert (=> b!4134452 (= e!2565250 (and tp_is_empty!21413 tp!1260210))))

(assert (=> b!4134019 (= tp!1260134 e!2565250)))

(assert (= (and b!4134019 ((_ is Cons!44785) (t!341802 p!2912))) b!4134452))

(declare-fun b!4134463 () Bool)

(declare-fun b_free!117435 () Bool)

(declare-fun b_next!118139 () Bool)

(assert (=> b!4134463 (= b_free!117435 (not b_next!118139))))

(declare-fun t!341834 () Bool)

(declare-fun tb!248143 () Bool)

(assert (=> (and b!4134463 (= (toValue!10004 (transformation!7340 (h!50206 (t!341803 rules!3756)))) (toValue!10004 (transformation!7340 r!4008))) t!341834) tb!248143))

(declare-fun result!301660 () Bool)

(assert (= result!301660 result!301620))

(assert (=> d!1224561 t!341834))

(assert (=> d!1224565 t!341834))

(declare-fun tp!1260221 () Bool)

(declare-fun b_and!320669 () Bool)

(assert (=> b!4134463 (= tp!1260221 (and (=> t!341834 result!301660) b_and!320669))))

(declare-fun b_free!117437 () Bool)

(declare-fun b_next!118141 () Bool)

(assert (=> b!4134463 (= b_free!117437 (not b_next!118141))))

(declare-fun t!341836 () Bool)

(declare-fun tb!248145 () Bool)

(assert (=> (and b!4134463 (= (toChars!9863 (transformation!7340 (h!50206 (t!341803 rules!3756)))) (toChars!9863 (transformation!7340 r!4008))) t!341836) tb!248145))

(declare-fun result!301662 () Bool)

(assert (= result!301662 result!301636))

(assert (=> d!1224565 t!341836))

(declare-fun tp!1260222 () Bool)

(declare-fun b_and!320671 () Bool)

(assert (=> b!4134463 (= tp!1260222 (and (=> t!341836 result!301662) b_and!320671))))

(declare-fun e!2565262 () Bool)

(assert (=> b!4134463 (= e!2565262 (and tp!1260221 tp!1260222))))

(declare-fun tp!1260219 () Bool)

(declare-fun b!4134462 () Bool)

(declare-fun e!2565259 () Bool)

(assert (=> b!4134462 (= e!2565259 (and tp!1260219 (inv!59387 (tag!8200 (h!50206 (t!341803 rules!3756)))) (inv!59389 (transformation!7340 (h!50206 (t!341803 rules!3756)))) e!2565262))))

(declare-fun b!4134461 () Bool)

(declare-fun e!2565261 () Bool)

(declare-fun tp!1260220 () Bool)

(assert (=> b!4134461 (= e!2565261 (and e!2565259 tp!1260220))))

(assert (=> b!4134026 (= tp!1260135 e!2565261)))

(assert (= b!4134462 b!4134463))

(assert (= b!4134461 b!4134462))

(assert (= (and b!4134026 ((_ is Cons!44786) (t!341803 rules!3756))) b!4134461))

(declare-fun m!4731205 () Bool)

(assert (=> b!4134462 m!4731205))

(declare-fun m!4731207 () Bool)

(assert (=> b!4134462 m!4731207))

(declare-fun b!4134464 () Bool)

(declare-fun e!2565263 () Bool)

(assert (=> b!4134464 (= e!2565263 tp_is_empty!21413)))

(declare-fun b!4134466 () Bool)

(declare-fun tp!1260225 () Bool)

(assert (=> b!4134466 (= e!2565263 tp!1260225)))

(declare-fun b!4134467 () Bool)

(declare-fun tp!1260223 () Bool)

(declare-fun tp!1260226 () Bool)

(assert (=> b!4134467 (= e!2565263 (and tp!1260223 tp!1260226))))

(assert (=> b!4134031 (= tp!1260139 e!2565263)))

(declare-fun b!4134465 () Bool)

(declare-fun tp!1260227 () Bool)

(declare-fun tp!1260224 () Bool)

(assert (=> b!4134465 (= e!2565263 (and tp!1260227 tp!1260224))))

(assert (= (and b!4134031 ((_ is ElementMatch!12245) (regex!7340 rBis!149))) b!4134464))

(assert (= (and b!4134031 ((_ is Concat!19816) (regex!7340 rBis!149))) b!4134465))

(assert (= (and b!4134031 ((_ is Star!12245) (regex!7340 rBis!149))) b!4134466))

(assert (= (and b!4134031 ((_ is Union!12245) (regex!7340 rBis!149))) b!4134467))

(declare-fun b!4134468 () Bool)

(declare-fun e!2565264 () Bool)

(declare-fun tp!1260228 () Bool)

(assert (=> b!4134468 (= e!2565264 (and tp_is_empty!21413 tp!1260228))))

(assert (=> b!4134016 (= tp!1260137 e!2565264)))

(assert (= (and b!4134016 ((_ is Cons!44785) (t!341802 input!3238))) b!4134468))

(declare-fun b_lambda!121477 () Bool)

(assert (= b_lambda!121469 (or (and b!4134036 b_free!117419) (and b!4134021 b_free!117423 (= (toValue!10004 (transformation!7340 rBis!149)) (toValue!10004 (transformation!7340 r!4008)))) (and b!4134022 b_free!117427 (= (toValue!10004 (transformation!7340 (h!50206 rules!3756))) (toValue!10004 (transformation!7340 r!4008)))) (and b!4134463 b_free!117435 (= (toValue!10004 (transformation!7340 (h!50206 (t!341803 rules!3756)))) (toValue!10004 (transformation!7340 r!4008)))) b_lambda!121477)))

(declare-fun b_lambda!121479 () Bool)

(assert (= b_lambda!121461 (or (and b!4134036 b_free!117419) (and b!4134021 b_free!117423 (= (toValue!10004 (transformation!7340 rBis!149)) (toValue!10004 (transformation!7340 r!4008)))) (and b!4134022 b_free!117427 (= (toValue!10004 (transformation!7340 (h!50206 rules!3756))) (toValue!10004 (transformation!7340 r!4008)))) (and b!4134463 b_free!117435 (= (toValue!10004 (transformation!7340 (h!50206 (t!341803 rules!3756)))) (toValue!10004 (transformation!7340 r!4008)))) b_lambda!121479)))

(declare-fun b_lambda!121481 () Bool)

(assert (= b_lambda!121467 (or (and b!4134036 b_free!117421) (and b!4134021 b_free!117425 (= (toChars!9863 (transformation!7340 rBis!149)) (toChars!9863 (transformation!7340 r!4008)))) (and b!4134022 b_free!117429 (= (toChars!9863 (transformation!7340 (h!50206 rules!3756))) (toChars!9863 (transformation!7340 r!4008)))) (and b!4134463 b_free!117437 (= (toChars!9863 (transformation!7340 (h!50206 (t!341803 rules!3756)))) (toChars!9863 (transformation!7340 r!4008)))) b_lambda!121481)))

(check-sat (not b!4134446) (not d!1224591) (not b!4134461) (not tb!248133) (not b!4134383) (not b!4134062) (not b!4134359) (not b!4134075) (not b_next!118141) (not b!4134224) (not d!1224583) (not b_next!118125) b_and!320653 (not d!1224507) (not b!4134382) (not b_next!118131) (not b!4134418) (not b!4134068) (not b!4134366) (not d!1224485) b_and!320655 (not b!4134225) (not b!4134376) (not b_next!118133) (not d!1224589) (not b!4134424) (not d!1224599) (not bm!290399) tp_is_empty!21413 (not d!1224587) (not bm!290396) b_and!320661 (not b_next!118123) (not b!4134360) (not b!4134468) (not b!4134381) (not b!4134443) (not b!4134462) (not d!1224481) (not b!4134086) (not b_next!118129) (not b!4134425) (not b!4134466) b_and!320669 (not d!1224571) (not d!1224499) (not b!4134419) (not b!4134353) (not b!4134041) (not d!1224577) (not b!4134423) (not d!1224505) (not b_lambda!121481) (not b!4134261) (not d!1224593) (not d!1224595) (not d!1224493) b_and!320663 (not b!4134452) (not b!4134081) (not b!4134356) (not d!1224509) (not b!4134083) (not b!4134465) (not b!4134467) (not b!4134234) (not tb!248121) (not b_lambda!121477) (not b!4134226) (not b_lambda!121479) (not b!4134227) b_and!320659 (not b!4134220) b_and!320671 (not d!1224563) (not b_next!118139) (not b!4134221) (not b!4134441) (not b!4134352) (not b!4134445) (not b!4134427) (not b!4134429) (not d!1224601) (not d!1224565) (not b!4134358) (not b!4134223) (not b!4134378) (not b!4134354) (not b!4134421) (not d!1224511) b_and!320657 (not d!1224553) (not b_next!118127) (not b!4134447) (not b!4134355) (not b!4134222) (not b!4134377) (not b!4134442))
(check-sat (not b_next!118141) (not b_next!118125) b_and!320653 (not b_next!118131) b_and!320655 (not b_next!118133) (not b_next!118129) b_and!320669 b_and!320663 b_and!320657 (not b_next!118127) b_and!320661 (not b_next!118123) (not b_next!118139) b_and!320659 b_and!320671)
