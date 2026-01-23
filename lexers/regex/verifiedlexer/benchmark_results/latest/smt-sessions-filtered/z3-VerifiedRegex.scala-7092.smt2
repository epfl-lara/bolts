; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!376200 () Bool)

(assert start!376200)

(declare-fun b!3996763 () Bool)

(declare-fun b_free!111009 () Bool)

(declare-fun b_next!111713 () Bool)

(assert (=> b!3996763 (= b_free!111009 (not b_next!111713))))

(declare-fun tp!1216613 () Bool)

(declare-fun b_and!306959 () Bool)

(assert (=> b!3996763 (= tp!1216613 b_and!306959)))

(declare-fun b_free!111011 () Bool)

(declare-fun b_next!111715 () Bool)

(assert (=> b!3996763 (= b_free!111011 (not b_next!111715))))

(declare-fun tp!1216612 () Bool)

(declare-fun b_and!306961 () Bool)

(assert (=> b!3996763 (= tp!1216612 b_and!306961)))

(declare-fun b!3996769 () Bool)

(declare-fun b_free!111013 () Bool)

(declare-fun b_next!111717 () Bool)

(assert (=> b!3996769 (= b_free!111013 (not b_next!111717))))

(declare-fun tp!1216614 () Bool)

(declare-fun b_and!306963 () Bool)

(assert (=> b!3996769 (= tp!1216614 b_and!306963)))

(declare-fun b_free!111015 () Bool)

(declare-fun b_next!111719 () Bool)

(assert (=> b!3996769 (= b_free!111015 (not b_next!111719))))

(declare-fun tp!1216616 () Bool)

(declare-fun b_and!306965 () Bool)

(assert (=> b!3996769 (= tp!1216616 b_and!306965)))

(declare-fun b!3996726 () Bool)

(declare-fun e!2477812 () Bool)

(declare-fun e!2477828 () Bool)

(assert (=> b!3996726 (= e!2477812 (not e!2477828))))

(declare-fun res!1623110 () Bool)

(assert (=> b!3996726 (=> res!1623110 e!2477828)))

(declare-datatypes ((C!23540 0))(
  ( (C!23541 (val!13864 Int)) )
))
(declare-datatypes ((List!42864 0))(
  ( (Nil!42740) (Cons!42740 (h!48160 C!23540) (t!332047 List!42864)) )
))
(declare-fun lt!1411153 () List!42864)

(declare-fun lt!1411152 () List!42864)

(assert (=> b!3996726 (= res!1623110 (not (= lt!1411153 lt!1411152)))))

(declare-fun lt!1411145 () List!42864)

(declare-fun suffixResult!105 () List!42864)

(declare-fun ++!11174 (List!42864 List!42864) List!42864)

(assert (=> b!3996726 (= lt!1411153 (++!11174 lt!1411145 suffixResult!105))))

(declare-datatypes ((Unit!61615 0))(
  ( (Unit!61616) )
))
(declare-fun lt!1411122 () Unit!61615)

(declare-datatypes ((IArray!25971 0))(
  ( (IArray!25972 (innerList!13043 List!42864)) )
))
(declare-datatypes ((Conc!12983 0))(
  ( (Node!12983 (left!32275 Conc!12983) (right!32605 Conc!12983) (csize!26196 Int) (cheight!13194 Int)) (Leaf!20076 (xs!16289 IArray!25971) (csize!26197 Int)) (Empty!12983) )
))
(declare-datatypes ((BalanceConc!25560 0))(
  ( (BalanceConc!25561 (c!691492 Conc!12983)) )
))
(declare-datatypes ((List!42865 0))(
  ( (Nil!42741) (Cons!42741 (h!48161 (_ BitVec 16)) (t!332048 List!42865)) )
))
(declare-datatypes ((TokenValue!7002 0))(
  ( (FloatLiteralValue!14004 (text!49459 List!42865)) (TokenValueExt!7001 (__x!26221 Int)) (Broken!35010 (value!213610 List!42865)) (Object!7125) (End!7002) (Def!7002) (Underscore!7002) (Match!7002) (Else!7002) (Error!7002) (Case!7002) (If!7002) (Extends!7002) (Abstract!7002) (Class!7002) (Val!7002) (DelimiterValue!14004 (del!7062 List!42865)) (KeywordValue!7008 (value!213611 List!42865)) (CommentValue!14004 (value!213612 List!42865)) (WhitespaceValue!14004 (value!213613 List!42865)) (IndentationValue!7002 (value!213614 List!42865)) (String!48727) (Int32!7002) (Broken!35011 (value!213615 List!42865)) (Boolean!7003) (Unit!61617) (OperatorValue!7005 (op!7062 List!42865)) (IdentifierValue!14004 (value!213616 List!42865)) (IdentifierValue!14005 (value!213617 List!42865)) (WhitespaceValue!14005 (value!213618 List!42865)) (True!14004) (False!14004) (Broken!35012 (value!213619 List!42865)) (Broken!35013 (value!213620 List!42865)) (True!14005) (RightBrace!7002) (RightBracket!7002) (Colon!7002) (Null!7002) (Comma!7002) (LeftBracket!7002) (False!14005) (LeftBrace!7002) (ImaginaryLiteralValue!7002 (text!49460 List!42865)) (StringLiteralValue!21006 (value!213621 List!42865)) (EOFValue!7002 (value!213622 List!42865)) (IdentValue!7002 (value!213623 List!42865)) (DelimiterValue!14005 (value!213624 List!42865)) (DedentValue!7002 (value!213625 List!42865)) (NewLineValue!7002 (value!213626 List!42865)) (IntegerValue!21006 (value!213627 (_ BitVec 32)) (text!49461 List!42865)) (IntegerValue!21007 (value!213628 Int) (text!49462 List!42865)) (Times!7002) (Or!7002) (Equal!7002) (Minus!7002) (Broken!35014 (value!213629 List!42865)) (And!7002) (Div!7002) (LessEqual!7002) (Mod!7002) (Concat!18679) (Not!7002) (Plus!7002) (SpaceValue!7002 (value!213630 List!42865)) (IntegerValue!21008 (value!213631 Int) (text!49463 List!42865)) (StringLiteralValue!21007 (text!49464 List!42865)) (FloatLiteralValue!14005 (text!49465 List!42865)) (BytesLiteralValue!7002 (value!213632 List!42865)) (CommentValue!14005 (value!213633 List!42865)) (StringLiteralValue!21008 (value!213634 List!42865)) (ErrorTokenValue!7002 (msg!7063 List!42865)) )
))
(declare-datatypes ((Regex!11677 0))(
  ( (ElementMatch!11677 (c!691493 C!23540)) (Concat!18680 (regOne!23866 Regex!11677) (regTwo!23866 Regex!11677)) (EmptyExpr!11677) (Star!11677 (reg!12006 Regex!11677)) (EmptyLang!11677) (Union!11677 (regOne!23867 Regex!11677) (regTwo!23867 Regex!11677)) )
))
(declare-datatypes ((String!48728 0))(
  ( (String!48729 (value!213635 String)) )
))
(declare-datatypes ((TokenValueInjection!13432 0))(
  ( (TokenValueInjection!13433 (toValue!9260 Int) (toChars!9119 Int)) )
))
(declare-datatypes ((Rule!13344 0))(
  ( (Rule!13345 (regex!6772 Regex!11677) (tag!7632 String!48728) (isSeparator!6772 Bool) (transformation!6772 TokenValueInjection!13432)) )
))
(declare-datatypes ((Token!12682 0))(
  ( (Token!12683 (value!213636 TokenValue!7002) (rule!9800 Rule!13344) (size!31963 Int) (originalCharacters!7372 List!42864)) )
))
(declare-fun token!484 () Token!12682)

(declare-fun lemmaInv!987 (TokenValueInjection!13432) Unit!61615)

(assert (=> b!3996726 (= lt!1411122 (lemmaInv!987 (transformation!6772 (rule!9800 token!484))))))

(declare-datatypes ((LexerInterface!6361 0))(
  ( (LexerInterfaceExt!6358 (__x!26222 Int)) (Lexer!6359) )
))
(declare-fun thiss!21717 () LexerInterface!6361)

(declare-fun ruleValid!2704 (LexerInterface!6361 Rule!13344) Bool)

(assert (=> b!3996726 (ruleValid!2704 thiss!21717 (rule!9800 token!484))))

(declare-datatypes ((List!42866 0))(
  ( (Nil!42742) (Cons!42742 (h!48162 Rule!13344) (t!332049 List!42866)) )
))
(declare-fun rules!2999 () List!42866)

(declare-fun lt!1411118 () Unit!61615)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1778 (LexerInterface!6361 Rule!13344 List!42866) Unit!61615)

(assert (=> b!3996726 (= lt!1411118 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1778 thiss!21717 (rule!9800 token!484) rules!2999))))

(declare-fun e!2477847 () Bool)

(declare-fun tp!1216611 () Bool)

(declare-fun e!2477832 () Bool)

(declare-fun b!3996727 () Bool)

(declare-fun inv!21 (TokenValue!7002) Bool)

(assert (=> b!3996727 (= e!2477832 (and (inv!21 (value!213636 token!484)) e!2477847 tp!1216611))))

(declare-fun b!3996728 () Bool)

(declare-fun e!2477822 () Bool)

(assert (=> b!3996728 (= e!2477822 true)))

(declare-fun lt!1411131 () Unit!61615)

(declare-datatypes ((tuple2!41934 0))(
  ( (tuple2!41935 (_1!24101 Token!12682) (_2!24101 List!42864)) )
))
(declare-datatypes ((Option!9186 0))(
  ( (None!9185) (Some!9185 (v!39545 tuple2!41934)) )
))
(declare-fun lt!1411133 () Option!9186)

(declare-fun lt!1411125 () BalanceConc!25560)

(declare-fun lemmaSemiInverse!1861 (TokenValueInjection!13432 BalanceConc!25560) Unit!61615)

(assert (=> b!3996728 (= lt!1411131 (lemmaSemiInverse!1861 (transformation!6772 (rule!9800 (_1!24101 (v!39545 lt!1411133)))) lt!1411125))))

(declare-fun b!3996729 () Bool)

(declare-fun res!1623122 () Bool)

(declare-fun e!2477849 () Bool)

(assert (=> b!3996729 (=> (not res!1623122) (not e!2477849))))

(declare-fun newSuffix!27 () List!42864)

(declare-fun suffix!1299 () List!42864)

(declare-fun isPrefix!3859 (List!42864 List!42864) Bool)

(assert (=> b!3996729 (= res!1623122 (isPrefix!3859 newSuffix!27 suffix!1299))))

(declare-fun b!3996730 () Bool)

(declare-fun e!2477819 () Bool)

(assert (=> b!3996730 (= e!2477819 e!2477822)))

(declare-fun res!1623096 () Bool)

(assert (=> b!3996730 (=> res!1623096 e!2477822)))

(declare-fun lt!1411180 () Int)

(declare-fun lt!1411123 () Int)

(assert (=> b!3996730 (= res!1623096 (<= lt!1411180 lt!1411123))))

(declare-fun lt!1411168 () Unit!61615)

(declare-fun e!2477850 () Unit!61615)

(assert (=> b!3996730 (= lt!1411168 e!2477850)))

(declare-fun c!691490 () Bool)

(assert (=> b!3996730 (= c!691490 (< lt!1411180 lt!1411123))))

(declare-fun getIndex!542 (List!42866 Rule!13344) Int)

(assert (=> b!3996730 (= lt!1411123 (getIndex!542 rules!2999 (rule!9800 token!484)))))

(assert (=> b!3996730 (= lt!1411180 (getIndex!542 rules!2999 (rule!9800 (_1!24101 (v!39545 lt!1411133)))))))

(declare-fun newSuffixResult!27 () List!42864)

(assert (=> b!3996730 (= (_2!24101 (v!39545 lt!1411133)) newSuffixResult!27)))

(declare-fun lt!1411160 () List!42864)

(declare-fun lt!1411154 () Unit!61615)

(declare-fun lt!1411178 () List!42864)

(declare-fun lemmaSamePrefixThenSameSuffix!2046 (List!42864 List!42864 List!42864 List!42864 List!42864) Unit!61615)

(assert (=> b!3996730 (= lt!1411154 (lemmaSamePrefixThenSameSuffix!2046 lt!1411160 (_2!24101 (v!39545 lt!1411133)) lt!1411145 newSuffixResult!27 lt!1411178))))

(assert (=> b!3996730 (= lt!1411160 lt!1411145)))

(declare-fun lt!1411128 () Unit!61615)

(declare-fun lemmaIsPrefixSameLengthThenSameList!881 (List!42864 List!42864 List!42864) Unit!61615)

(assert (=> b!3996730 (= lt!1411128 (lemmaIsPrefixSameLengthThenSameList!881 lt!1411160 lt!1411145 lt!1411178))))

(declare-fun b!3996731 () Bool)

(declare-fun Unit!61618 () Unit!61615)

(assert (=> b!3996731 (= e!2477850 Unit!61618)))

(declare-fun lt!1411149 () Unit!61615)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!268 (LexerInterface!6361 List!42866 Rule!13344 List!42864 List!42864 Rule!13344) Unit!61615)

(assert (=> b!3996731 (= lt!1411149 (lemmaMaxPrefNoSmallerRuleMatches!268 thiss!21717 rules!2999 (rule!9800 token!484) lt!1411145 lt!1411152 (rule!9800 (_1!24101 (v!39545 lt!1411133)))))))

(declare-fun res!1623098 () Bool)

(declare-fun matchR!5654 (Regex!11677 List!42864) Bool)

(assert (=> b!3996731 (= res!1623098 (not (matchR!5654 (regex!6772 (rule!9800 (_1!24101 (v!39545 lt!1411133)))) lt!1411145)))))

(declare-fun e!2477844 () Bool)

(assert (=> b!3996731 (=> (not res!1623098) (not e!2477844))))

(assert (=> b!3996731 e!2477844))

(declare-fun b!3996732 () Bool)

(declare-fun e!2477848 () Bool)

(assert (=> b!3996732 (= e!2477848 e!2477812)))

(declare-fun res!1623107 () Bool)

(assert (=> b!3996732 (=> (not res!1623107) (not e!2477812))))

(declare-fun lt!1411172 () Option!9186)

(declare-fun maxPrefix!3659 (LexerInterface!6361 List!42866 List!42864) Option!9186)

(assert (=> b!3996732 (= res!1623107 (= (maxPrefix!3659 thiss!21717 rules!2999 lt!1411152) lt!1411172))))

(declare-fun lt!1411134 () tuple2!41934)

(assert (=> b!3996732 (= lt!1411172 (Some!9185 lt!1411134))))

(assert (=> b!3996732 (= lt!1411134 (tuple2!41935 token!484 suffixResult!105))))

(declare-fun prefix!494 () List!42864)

(assert (=> b!3996732 (= lt!1411152 (++!11174 prefix!494 suffix!1299))))

(declare-fun b!3996733 () Bool)

(declare-fun e!2477835 () Bool)

(assert (=> b!3996733 (= e!2477835 false)))

(declare-fun b!3996734 () Bool)

(declare-fun e!2477846 () Unit!61615)

(declare-fun Unit!61619 () Unit!61615)

(assert (=> b!3996734 (= e!2477846 Unit!61619)))

(declare-fun lt!1411148 () Unit!61615)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!426 (LexerInterface!6361 List!42866 Rule!13344 List!42864 List!42864 List!42864 Rule!13344) Unit!61615)

(assert (=> b!3996734 (= lt!1411148 (lemmaMaxPrefixOutputsMaxPrefix!426 thiss!21717 rules!2999 (rule!9800 (_1!24101 (v!39545 lt!1411133))) lt!1411160 lt!1411178 lt!1411145 (rule!9800 token!484)))))

(assert (=> b!3996734 false))

(declare-fun b!3996735 () Bool)

(declare-fun e!2477826 () Bool)

(declare-fun e!2477841 () Bool)

(assert (=> b!3996735 (= e!2477826 e!2477841)))

(declare-fun res!1623100 () Bool)

(assert (=> b!3996735 (=> res!1623100 e!2477841)))

(declare-fun lt!1411164 () List!42864)

(assert (=> b!3996735 (= res!1623100 (not (= lt!1411164 lt!1411152)))))

(declare-fun lt!1411161 () List!42864)

(assert (=> b!3996735 (= lt!1411164 (++!11174 prefix!494 lt!1411161))))

(declare-fun lt!1411174 () List!42864)

(assert (=> b!3996735 (= lt!1411164 (++!11174 lt!1411178 lt!1411174))))

(declare-fun lt!1411117 () Unit!61615)

(declare-fun lemmaConcatAssociativity!2494 (List!42864 List!42864 List!42864) Unit!61615)

(assert (=> b!3996735 (= lt!1411117 (lemmaConcatAssociativity!2494 prefix!494 newSuffix!27 lt!1411174))))

(declare-fun res!1623121 () Bool)

(assert (=> start!376200 (=> (not res!1623121) (not e!2477849))))

(get-info :version)

(assert (=> start!376200 (= res!1623121 ((_ is Lexer!6359) thiss!21717))))

(assert (=> start!376200 e!2477849))

(declare-fun e!2477842 () Bool)

(assert (=> start!376200 e!2477842))

(declare-fun inv!57085 (Token!12682) Bool)

(assert (=> start!376200 (and (inv!57085 token!484) e!2477832)))

(declare-fun e!2477830 () Bool)

(assert (=> start!376200 e!2477830))

(declare-fun e!2477827 () Bool)

(assert (=> start!376200 e!2477827))

(declare-fun e!2477831 () Bool)

(assert (=> start!376200 e!2477831))

(assert (=> start!376200 true))

(declare-fun e!2477816 () Bool)

(assert (=> start!376200 e!2477816))

(declare-fun e!2477834 () Bool)

(assert (=> start!376200 e!2477834))

(declare-fun b!3996736 () Bool)

(declare-fun e!2477837 () Unit!61615)

(declare-fun Unit!61620 () Unit!61615)

(assert (=> b!3996736 (= e!2477837 Unit!61620)))

(declare-fun b!3996737 () Bool)

(declare-fun e!2477813 () Bool)

(assert (=> b!3996737 (= e!2477849 e!2477813)))

(declare-fun res!1623112 () Bool)

(assert (=> b!3996737 (=> (not res!1623112) (not e!2477813))))

(declare-fun lt!1411140 () Int)

(declare-fun lt!1411116 () Int)

(assert (=> b!3996737 (= res!1623112 (>= lt!1411140 lt!1411116))))

(declare-fun size!31964 (List!42864) Int)

(assert (=> b!3996737 (= lt!1411116 (size!31964 lt!1411145))))

(assert (=> b!3996737 (= lt!1411140 (size!31964 prefix!494))))

(declare-fun list!15872 (BalanceConc!25560) List!42864)

(declare-fun charsOf!4588 (Token!12682) BalanceConc!25560)

(assert (=> b!3996737 (= lt!1411145 (list!15872 (charsOf!4588 token!484)))))

(declare-fun b!3996738 () Bool)

(declare-fun res!1623123 () Bool)

(assert (=> b!3996738 (=> res!1623123 e!2477822)))

(declare-fun contains!8505 (List!42866 Rule!13344) Bool)

(assert (=> b!3996738 (= res!1623123 (not (contains!8505 rules!2999 (rule!9800 (_1!24101 (v!39545 lt!1411133))))))))

(declare-fun b!3996739 () Bool)

(declare-fun e!2477840 () Bool)

(declare-fun e!2477823 () Bool)

(assert (=> b!3996739 (= e!2477840 e!2477823)))

(declare-fun res!1623117 () Bool)

(assert (=> b!3996739 (=> res!1623117 e!2477823)))

(declare-fun lt!1411175 () List!42864)

(assert (=> b!3996739 (= res!1623117 (not (= lt!1411175 lt!1411152)))))

(declare-fun lt!1411129 () List!42864)

(assert (=> b!3996739 (= lt!1411175 (++!11174 lt!1411145 lt!1411129))))

(declare-fun getSuffix!2290 (List!42864 List!42864) List!42864)

(assert (=> b!3996739 (= lt!1411129 (getSuffix!2290 lt!1411152 lt!1411145))))

(declare-fun e!2477839 () Bool)

(assert (=> b!3996739 e!2477839))

(declare-fun res!1623111 () Bool)

(assert (=> b!3996739 (=> (not res!1623111) (not e!2477839))))

(assert (=> b!3996739 (= res!1623111 (isPrefix!3859 lt!1411152 lt!1411152))))

(declare-fun lt!1411136 () Unit!61615)

(declare-fun lemmaIsPrefixRefl!2451 (List!42864 List!42864) Unit!61615)

(assert (=> b!3996739 (= lt!1411136 (lemmaIsPrefixRefl!2451 lt!1411152 lt!1411152))))

(declare-fun b!3996740 () Bool)

(declare-fun e!2477833 () Bool)

(declare-fun tp!1216618 () Bool)

(assert (=> b!3996740 (= e!2477816 (and e!2477833 tp!1216618))))

(declare-fun b!3996741 () Bool)

(declare-fun Unit!61621 () Unit!61615)

(assert (=> b!3996741 (= e!2477850 Unit!61621)))

(declare-fun b!3996742 () Bool)

(declare-fun e!2477838 () Bool)

(assert (=> b!3996742 (= e!2477838 e!2477819)))

(declare-fun res!1623116 () Bool)

(assert (=> b!3996742 (=> res!1623116 e!2477819)))

(declare-fun lt!1411167 () Int)

(assert (=> b!3996742 (= res!1623116 (not (= lt!1411116 lt!1411167)))))

(declare-fun lt!1411171 () Unit!61615)

(assert (=> b!3996742 (= lt!1411171 e!2477846)))

(declare-fun c!691491 () Bool)

(assert (=> b!3996742 (= c!691491 (< lt!1411167 lt!1411116))))

(declare-fun lt!1411146 () Unit!61615)

(assert (=> b!3996742 (= lt!1411146 e!2477837)))

(declare-fun c!691489 () Bool)

(assert (=> b!3996742 (= c!691489 (> lt!1411167 lt!1411116))))

(declare-fun lt!1411138 () List!42864)

(assert (=> b!3996742 (= (_2!24101 (v!39545 lt!1411133)) lt!1411138)))

(declare-fun lt!1411179 () Unit!61615)

(assert (=> b!3996742 (= lt!1411179 (lemmaSamePrefixThenSameSuffix!2046 lt!1411160 (_2!24101 (v!39545 lt!1411133)) lt!1411160 lt!1411138 lt!1411178))))

(declare-fun lt!1411156 () List!42864)

(assert (=> b!3996742 (isPrefix!3859 lt!1411160 lt!1411156)))

(declare-fun lt!1411137 () Unit!61615)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2702 (List!42864 List!42864) Unit!61615)

(assert (=> b!3996742 (= lt!1411137 (lemmaConcatTwoListThenFirstIsPrefix!2702 lt!1411160 lt!1411138))))

(declare-fun tp!1216615 () Bool)

(declare-fun e!2477836 () Bool)

(declare-fun b!3996743 () Bool)

(declare-fun inv!57082 (String!48728) Bool)

(declare-fun inv!57086 (TokenValueInjection!13432) Bool)

(assert (=> b!3996743 (= e!2477847 (and tp!1216615 (inv!57082 (tag!7632 (rule!9800 token!484))) (inv!57086 (transformation!6772 (rule!9800 token!484))) e!2477836))))

(declare-fun b!3996744 () Bool)

(declare-fun e!2477824 () Bool)

(assert (=> b!3996744 (= e!2477823 e!2477824)))

(declare-fun res!1623102 () Bool)

(assert (=> b!3996744 (=> res!1623102 e!2477824)))

(assert (=> b!3996744 (= res!1623102 (not ((_ is Some!9185) lt!1411133)))))

(assert (=> b!3996744 (= lt!1411133 (maxPrefix!3659 thiss!21717 rules!2999 lt!1411178))))

(declare-fun lt!1411132 () Token!12682)

(assert (=> b!3996744 (and (= suffixResult!105 lt!1411129) (= lt!1411134 (tuple2!41935 lt!1411132 lt!1411129)))))

(declare-fun lt!1411177 () Unit!61615)

(assert (=> b!3996744 (= lt!1411177 (lemmaSamePrefixThenSameSuffix!2046 lt!1411145 suffixResult!105 lt!1411145 lt!1411129 lt!1411152))))

(assert (=> b!3996744 (isPrefix!3859 lt!1411145 lt!1411175)))

(declare-fun lt!1411141 () Unit!61615)

(assert (=> b!3996744 (= lt!1411141 (lemmaConcatTwoListThenFirstIsPrefix!2702 lt!1411145 lt!1411129))))

(declare-fun b!3996745 () Bool)

(declare-fun tp_is_empty!20325 () Bool)

(declare-fun tp!1216617 () Bool)

(assert (=> b!3996745 (= e!2477827 (and tp_is_empty!20325 tp!1216617))))

(declare-fun b!3996746 () Bool)

(declare-fun Unit!61622 () Unit!61615)

(assert (=> b!3996746 (= e!2477846 Unit!61622)))

(declare-fun b!3996747 () Bool)

(declare-fun e!2477843 () Bool)

(assert (=> b!3996747 (= e!2477828 e!2477843)))

(declare-fun res!1623113 () Bool)

(assert (=> b!3996747 (=> res!1623113 e!2477843)))

(assert (=> b!3996747 (= res!1623113 (not (isPrefix!3859 lt!1411145 lt!1411152)))))

(assert (=> b!3996747 (isPrefix!3859 prefix!494 lt!1411152)))

(declare-fun lt!1411169 () Unit!61615)

(assert (=> b!3996747 (= lt!1411169 (lemmaConcatTwoListThenFirstIsPrefix!2702 prefix!494 suffix!1299))))

(assert (=> b!3996747 (isPrefix!3859 lt!1411145 lt!1411153)))

(declare-fun lt!1411162 () Unit!61615)

(assert (=> b!3996747 (= lt!1411162 (lemmaConcatTwoListThenFirstIsPrefix!2702 lt!1411145 suffixResult!105))))

(declare-fun b!3996748 () Bool)

(declare-fun res!1623108 () Bool)

(assert (=> b!3996748 (=> res!1623108 e!2477819)))

(assert (=> b!3996748 (= res!1623108 (not (isPrefix!3859 lt!1411160 lt!1411178)))))

(declare-fun b!3996749 () Bool)

(declare-fun res!1623106 () Bool)

(assert (=> b!3996749 (=> (not res!1623106) (not e!2477849))))

(declare-fun isEmpty!25547 (List!42866) Bool)

(assert (=> b!3996749 (= res!1623106 (not (isEmpty!25547 rules!2999)))))

(declare-fun b!3996750 () Bool)

(declare-fun tp!1216610 () Bool)

(assert (=> b!3996750 (= e!2477831 (and tp_is_empty!20325 tp!1216610))))

(declare-fun b!3996751 () Bool)

(declare-fun res!1623095 () Bool)

(assert (=> b!3996751 (=> res!1623095 e!2477822)))

(assert (=> b!3996751 (= res!1623095 (not (contains!8505 rules!2999 (rule!9800 token!484))))))

(declare-fun b!3996752 () Bool)

(declare-fun e!2477820 () Bool)

(assert (=> b!3996752 (= e!2477820 e!2477826)))

(declare-fun res!1623109 () Bool)

(assert (=> b!3996752 (=> res!1623109 e!2477826)))

(assert (=> b!3996752 (= res!1623109 (not (= lt!1411161 suffix!1299)))))

(assert (=> b!3996752 (= lt!1411161 (++!11174 newSuffix!27 lt!1411174))))

(assert (=> b!3996752 (= lt!1411174 (getSuffix!2290 suffix!1299 newSuffix!27))))

(declare-fun b!3996753 () Bool)

(declare-fun tp!1216620 () Bool)

(assert (=> b!3996753 (= e!2477842 (and tp_is_empty!20325 tp!1216620))))

(declare-fun b!3996754 () Bool)

(assert (=> b!3996754 (= e!2477824 e!2477820)))

(declare-fun res!1623099 () Bool)

(assert (=> b!3996754 (=> res!1623099 e!2477820)))

(declare-fun lt!1411126 () Option!9186)

(assert (=> b!3996754 (= res!1623099 (not (= lt!1411126 (Some!9185 (v!39545 lt!1411133)))))))

(assert (=> b!3996754 (isPrefix!3859 lt!1411160 (++!11174 lt!1411160 newSuffixResult!27))))

(declare-fun lt!1411155 () Unit!61615)

(assert (=> b!3996754 (= lt!1411155 (lemmaConcatTwoListThenFirstIsPrefix!2702 lt!1411160 newSuffixResult!27))))

(declare-fun lt!1411130 () List!42864)

(assert (=> b!3996754 (isPrefix!3859 lt!1411160 lt!1411130)))

(assert (=> b!3996754 (= lt!1411130 (++!11174 lt!1411160 (_2!24101 (v!39545 lt!1411133))))))

(declare-fun lt!1411151 () Unit!61615)

(assert (=> b!3996754 (= lt!1411151 (lemmaConcatTwoListThenFirstIsPrefix!2702 lt!1411160 (_2!24101 (v!39545 lt!1411133))))))

(declare-fun lt!1411176 () TokenValue!7002)

(assert (=> b!3996754 (= lt!1411126 (Some!9185 (tuple2!41935 (Token!12683 lt!1411176 (rule!9800 (_1!24101 (v!39545 lt!1411133))) lt!1411167 lt!1411160) (_2!24101 (v!39545 lt!1411133)))))))

(declare-fun maxPrefixOneRule!2693 (LexerInterface!6361 Rule!13344 List!42864) Option!9186)

(assert (=> b!3996754 (= lt!1411126 (maxPrefixOneRule!2693 thiss!21717 (rule!9800 (_1!24101 (v!39545 lt!1411133))) lt!1411178))))

(assert (=> b!3996754 (= lt!1411167 (size!31964 lt!1411160))))

(declare-fun apply!9983 (TokenValueInjection!13432 BalanceConc!25560) TokenValue!7002)

(assert (=> b!3996754 (= lt!1411176 (apply!9983 (transformation!6772 (rule!9800 (_1!24101 (v!39545 lt!1411133)))) lt!1411125))))

(declare-fun seqFromList!5011 (List!42864) BalanceConc!25560)

(assert (=> b!3996754 (= lt!1411125 (seqFromList!5011 lt!1411160))))

(declare-fun lt!1411119 () Unit!61615)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1515 (LexerInterface!6361 List!42866 List!42864 List!42864 List!42864 Rule!13344) Unit!61615)

(assert (=> b!3996754 (= lt!1411119 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1515 thiss!21717 rules!2999 lt!1411160 lt!1411178 (_2!24101 (v!39545 lt!1411133)) (rule!9800 (_1!24101 (v!39545 lt!1411133)))))))

(assert (=> b!3996754 (= lt!1411160 (list!15872 (charsOf!4588 (_1!24101 (v!39545 lt!1411133)))))))

(declare-fun lt!1411142 () Unit!61615)

(assert (=> b!3996754 (= lt!1411142 (lemmaInv!987 (transformation!6772 (rule!9800 (_1!24101 (v!39545 lt!1411133))))))))

(assert (=> b!3996754 (ruleValid!2704 thiss!21717 (rule!9800 (_1!24101 (v!39545 lt!1411133))))))

(declare-fun lt!1411143 () Unit!61615)

(assert (=> b!3996754 (= lt!1411143 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1778 thiss!21717 (rule!9800 (_1!24101 (v!39545 lt!1411133))) rules!2999))))

(declare-fun lt!1411159 () Unit!61615)

(declare-fun lemmaCharactersSize!1367 (Token!12682) Unit!61615)

(assert (=> b!3996754 (= lt!1411159 (lemmaCharactersSize!1367 token!484))))

(declare-fun lt!1411157 () Unit!61615)

(assert (=> b!3996754 (= lt!1411157 (lemmaCharactersSize!1367 (_1!24101 (v!39545 lt!1411133))))))

(declare-fun b!3996755 () Bool)

(declare-fun tp!1216608 () Bool)

(assert (=> b!3996755 (= e!2477830 (and tp_is_empty!20325 tp!1216608))))

(declare-fun b!3996756 () Bool)

(declare-fun e!2477821 () Bool)

(assert (=> b!3996756 (= e!2477841 e!2477821)))

(declare-fun res!1623094 () Bool)

(assert (=> b!3996756 (=> res!1623094 e!2477821)))

(assert (=> b!3996756 (= res!1623094 (not (isPrefix!3859 lt!1411160 lt!1411152)))))

(assert (=> b!3996756 (isPrefix!3859 lt!1411160 lt!1411164)))

(declare-fun lt!1411166 () Unit!61615)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!692 (List!42864 List!42864 List!42864) Unit!61615)

(assert (=> b!3996756 (= lt!1411166 (lemmaPrefixStaysPrefixWhenAddingToSuffix!692 lt!1411160 lt!1411178 lt!1411174))))

(declare-fun b!3996757 () Bool)

(declare-fun e!2477815 () Bool)

(assert (=> b!3996757 (= e!2477843 e!2477815)))

(declare-fun res!1623104 () Bool)

(assert (=> b!3996757 (=> res!1623104 e!2477815)))

(declare-fun lt!1411163 () List!42864)

(assert (=> b!3996757 (= res!1623104 (not (= lt!1411163 prefix!494)))))

(declare-fun lt!1411173 () List!42864)

(assert (=> b!3996757 (= lt!1411163 (++!11174 lt!1411145 lt!1411173))))

(assert (=> b!3996757 (= lt!1411173 (getSuffix!2290 prefix!494 lt!1411145))))

(assert (=> b!3996757 (isPrefix!3859 lt!1411145 prefix!494)))

(declare-fun lt!1411147 () Unit!61615)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!437 (List!42864 List!42864 List!42864) Unit!61615)

(assert (=> b!3996757 (= lt!1411147 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!437 prefix!494 lt!1411145 lt!1411152))))

(declare-fun b!3996758 () Bool)

(declare-fun e!2477845 () Bool)

(assert (=> b!3996758 (= e!2477845 e!2477840)))

(declare-fun res!1623093 () Bool)

(assert (=> b!3996758 (=> res!1623093 e!2477840)))

(assert (=> b!3996758 (= res!1623093 (not (matchR!5654 (regex!6772 (rule!9800 token!484)) lt!1411145)))))

(assert (=> b!3996758 (isPrefix!3859 lt!1411145 lt!1411178)))

(declare-fun lt!1411135 () Unit!61615)

(assert (=> b!3996758 (= lt!1411135 (lemmaPrefixStaysPrefixWhenAddingToSuffix!692 lt!1411145 prefix!494 newSuffix!27))))

(declare-fun lt!1411115 () Unit!61615)

(assert (=> b!3996758 (= lt!1411115 (lemmaPrefixStaysPrefixWhenAddingToSuffix!692 lt!1411145 prefix!494 suffix!1299))))

(declare-fun tp!1216619 () Bool)

(declare-fun b!3996759 () Bool)

(declare-fun e!2477814 () Bool)

(assert (=> b!3996759 (= e!2477833 (and tp!1216619 (inv!57082 (tag!7632 (h!48162 rules!2999))) (inv!57086 (transformation!6772 (h!48162 rules!2999))) e!2477814))))

(declare-fun b!3996760 () Bool)

(declare-fun res!1623114 () Bool)

(assert (=> b!3996760 (=> res!1623114 e!2477822)))

(declare-fun isEmpty!25548 (List!42864) Bool)

(assert (=> b!3996760 (= res!1623114 (isEmpty!25548 lt!1411160))))

(declare-fun b!3996761 () Bool)

(declare-fun e!2477825 () Bool)

(assert (=> b!3996761 (= e!2477825 e!2477845)))

(declare-fun res!1623119 () Bool)

(assert (=> b!3996761 (=> res!1623119 e!2477845)))

(declare-fun lt!1411165 () Option!9186)

(assert (=> b!3996761 (= res!1623119 (not (= lt!1411165 lt!1411172)))))

(assert (=> b!3996761 (= lt!1411165 (Some!9185 (tuple2!41935 lt!1411132 suffixResult!105)))))

(assert (=> b!3996761 (= lt!1411165 (maxPrefixOneRule!2693 thiss!21717 (rule!9800 token!484) lt!1411152))))

(declare-fun lt!1411170 () TokenValue!7002)

(assert (=> b!3996761 (= lt!1411132 (Token!12683 lt!1411170 (rule!9800 token!484) lt!1411116 lt!1411145))))

(assert (=> b!3996761 (= lt!1411170 (apply!9983 (transformation!6772 (rule!9800 token!484)) (seqFromList!5011 lt!1411145)))))

(declare-fun lt!1411144 () Unit!61615)

(assert (=> b!3996761 (= lt!1411144 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1515 thiss!21717 rules!2999 lt!1411145 lt!1411152 suffixResult!105 (rule!9800 token!484)))))

(declare-fun lt!1411139 () List!42864)

(assert (=> b!3996761 (= lt!1411139 suffixResult!105)))

(declare-fun lt!1411181 () Unit!61615)

(assert (=> b!3996761 (= lt!1411181 (lemmaSamePrefixThenSameSuffix!2046 lt!1411145 lt!1411139 lt!1411145 suffixResult!105 lt!1411152))))

(declare-fun lt!1411121 () List!42864)

(assert (=> b!3996761 (isPrefix!3859 lt!1411145 lt!1411121)))

(declare-fun lt!1411124 () Unit!61615)

(assert (=> b!3996761 (= lt!1411124 (lemmaConcatTwoListThenFirstIsPrefix!2702 lt!1411145 lt!1411139))))

(declare-fun b!3996762 () Bool)

(assert (=> b!3996762 (= e!2477821 e!2477838)))

(declare-fun res!1623118 () Bool)

(assert (=> b!3996762 (=> res!1623118 e!2477838)))

(assert (=> b!3996762 (= res!1623118 (not (= lt!1411156 lt!1411178)))))

(assert (=> b!3996762 (= lt!1411156 (++!11174 lt!1411160 lt!1411138))))

(assert (=> b!3996762 (= lt!1411138 (getSuffix!2290 lt!1411178 lt!1411160))))

(assert (=> b!3996763 (= e!2477836 (and tp!1216613 tp!1216612))))

(declare-fun b!3996764 () Bool)

(declare-fun res!1623092 () Bool)

(assert (=> b!3996764 (=> res!1623092 e!2477821)))

(assert (=> b!3996764 (= res!1623092 (not (= lt!1411130 lt!1411178)))))

(declare-fun b!3996765 () Bool)

(declare-fun res!1623120 () Bool)

(assert (=> b!3996765 (=> res!1623120 e!2477822)))

(assert (=> b!3996765 (= res!1623120 (not (matchR!5654 (regex!6772 (rule!9800 (_1!24101 (v!39545 lt!1411133)))) lt!1411160)))))

(declare-fun b!3996766 () Bool)

(assert (=> b!3996766 (= e!2477844 false)))

(declare-fun b!3996767 () Bool)

(assert (=> b!3996767 (= e!2477815 e!2477825)))

(declare-fun res!1623091 () Bool)

(assert (=> b!3996767 (=> res!1623091 e!2477825)))

(declare-fun lt!1411127 () List!42864)

(assert (=> b!3996767 (= res!1623091 (or (not (= lt!1411152 lt!1411127)) (not (= lt!1411152 lt!1411121))))))

(assert (=> b!3996767 (= lt!1411127 lt!1411121)))

(assert (=> b!3996767 (= lt!1411121 (++!11174 lt!1411145 lt!1411139))))

(assert (=> b!3996767 (= lt!1411127 (++!11174 lt!1411163 suffix!1299))))

(assert (=> b!3996767 (= lt!1411139 (++!11174 lt!1411173 suffix!1299))))

(declare-fun lt!1411120 () Unit!61615)

(assert (=> b!3996767 (= lt!1411120 (lemmaConcatAssociativity!2494 lt!1411145 lt!1411173 suffix!1299))))

(declare-fun b!3996768 () Bool)

(declare-fun tp!1216609 () Bool)

(assert (=> b!3996768 (= e!2477834 (and tp_is_empty!20325 tp!1216609))))

(assert (=> b!3996769 (= e!2477814 (and tp!1216614 tp!1216616))))

(declare-fun b!3996770 () Bool)

(declare-fun res!1623105 () Bool)

(assert (=> b!3996770 (=> (not res!1623105) (not e!2477849))))

(declare-fun rulesInvariant!5704 (LexerInterface!6361 List!42866) Bool)

(assert (=> b!3996770 (= res!1623105 (rulesInvariant!5704 thiss!21717 rules!2999))))

(declare-fun b!3996771 () Bool)

(declare-fun Unit!61623 () Unit!61615)

(assert (=> b!3996771 (= e!2477837 Unit!61623)))

(declare-fun lt!1411150 () Unit!61615)

(assert (=> b!3996771 (= lt!1411150 (lemmaMaxPrefixOutputsMaxPrefix!426 thiss!21717 rules!2999 (rule!9800 token!484) lt!1411145 lt!1411152 lt!1411160 (rule!9800 (_1!24101 (v!39545 lt!1411133)))))))

(declare-fun res!1623115 () Bool)

(assert (=> b!3996771 (= res!1623115 (not (matchR!5654 (regex!6772 (rule!9800 (_1!24101 (v!39545 lt!1411133)))) lt!1411160)))))

(assert (=> b!3996771 (=> (not res!1623115) (not e!2477835))))

(assert (=> b!3996771 e!2477835))

(declare-fun b!3996772 () Bool)

(declare-fun res!1623101 () Bool)

(assert (=> b!3996772 (=> (not res!1623101) (not e!2477839))))

(assert (=> b!3996772 (= res!1623101 (= (value!213636 token!484) lt!1411170))))

(declare-fun b!3996773 () Bool)

(assert (=> b!3996773 (= e!2477813 e!2477848)))

(declare-fun res!1623124 () Bool)

(assert (=> b!3996773 (=> (not res!1623124) (not e!2477848))))

(declare-fun lt!1411158 () List!42864)

(assert (=> b!3996773 (= res!1623124 (= lt!1411158 lt!1411178))))

(assert (=> b!3996773 (= lt!1411178 (++!11174 prefix!494 newSuffix!27))))

(assert (=> b!3996773 (= lt!1411158 (++!11174 lt!1411145 newSuffixResult!27))))

(declare-fun b!3996774 () Bool)

(declare-fun res!1623097 () Bool)

(assert (=> b!3996774 (=> (not res!1623097) (not e!2477839))))

(assert (=> b!3996774 (= res!1623097 (= (size!31963 token!484) (size!31964 (originalCharacters!7372 token!484))))))

(declare-fun b!3996775 () Bool)

(assert (=> b!3996775 (= e!2477839 (and (= (size!31963 token!484) lt!1411116) (= (originalCharacters!7372 token!484) lt!1411145)))))

(declare-fun b!3996776 () Bool)

(declare-fun res!1623103 () Bool)

(assert (=> b!3996776 (=> (not res!1623103) (not e!2477849))))

(assert (=> b!3996776 (= res!1623103 (>= (size!31964 suffix!1299) (size!31964 newSuffix!27)))))

(assert (= (and start!376200 res!1623121) b!3996749))

(assert (= (and b!3996749 res!1623106) b!3996770))

(assert (= (and b!3996770 res!1623105) b!3996776))

(assert (= (and b!3996776 res!1623103) b!3996729))

(assert (= (and b!3996729 res!1623122) b!3996737))

(assert (= (and b!3996737 res!1623112) b!3996773))

(assert (= (and b!3996773 res!1623124) b!3996732))

(assert (= (and b!3996732 res!1623107) b!3996726))

(assert (= (and b!3996726 (not res!1623110)) b!3996747))

(assert (= (and b!3996747 (not res!1623113)) b!3996757))

(assert (= (and b!3996757 (not res!1623104)) b!3996767))

(assert (= (and b!3996767 (not res!1623091)) b!3996761))

(assert (= (and b!3996761 (not res!1623119)) b!3996758))

(assert (= (and b!3996758 (not res!1623093)) b!3996739))

(assert (= (and b!3996739 res!1623111) b!3996772))

(assert (= (and b!3996772 res!1623101) b!3996774))

(assert (= (and b!3996774 res!1623097) b!3996775))

(assert (= (and b!3996739 (not res!1623117)) b!3996744))

(assert (= (and b!3996744 (not res!1623102)) b!3996754))

(assert (= (and b!3996754 (not res!1623099)) b!3996752))

(assert (= (and b!3996752 (not res!1623109)) b!3996735))

(assert (= (and b!3996735 (not res!1623100)) b!3996756))

(assert (= (and b!3996756 (not res!1623094)) b!3996764))

(assert (= (and b!3996764 (not res!1623092)) b!3996762))

(assert (= (and b!3996762 (not res!1623118)) b!3996742))

(assert (= (and b!3996742 c!691489) b!3996771))

(assert (= (and b!3996742 (not c!691489)) b!3996736))

(assert (= (and b!3996771 res!1623115) b!3996733))

(assert (= (and b!3996742 c!691491) b!3996734))

(assert (= (and b!3996742 (not c!691491)) b!3996746))

(assert (= (and b!3996742 (not res!1623116)) b!3996748))

(assert (= (and b!3996748 (not res!1623108)) b!3996730))

(assert (= (and b!3996730 c!691490) b!3996731))

(assert (= (and b!3996730 (not c!691490)) b!3996741))

(assert (= (and b!3996731 res!1623098) b!3996766))

(assert (= (and b!3996730 (not res!1623096)) b!3996765))

(assert (= (and b!3996765 (not res!1623120)) b!3996738))

(assert (= (and b!3996738 (not res!1623123)) b!3996751))

(assert (= (and b!3996751 (not res!1623095)) b!3996760))

(assert (= (and b!3996760 (not res!1623114)) b!3996728))

(assert (= (and start!376200 ((_ is Cons!42740) prefix!494)) b!3996753))

(assert (= b!3996743 b!3996763))

(assert (= b!3996727 b!3996743))

(assert (= start!376200 b!3996727))

(assert (= (and start!376200 ((_ is Cons!42740) suffixResult!105)) b!3996755))

(assert (= (and start!376200 ((_ is Cons!42740) suffix!1299)) b!3996745))

(assert (= (and start!376200 ((_ is Cons!42740) newSuffix!27)) b!3996750))

(assert (= b!3996759 b!3996769))

(assert (= b!3996740 b!3996759))

(assert (= (and start!376200 ((_ is Cons!42742) rules!2999)) b!3996740))

(assert (= (and start!376200 ((_ is Cons!42740) newSuffixResult!27)) b!3996768))

(declare-fun m!4577567 () Bool)

(assert (=> b!3996765 m!4577567))

(declare-fun m!4577569 () Bool)

(assert (=> b!3996762 m!4577569))

(declare-fun m!4577571 () Bool)

(assert (=> b!3996762 m!4577571))

(declare-fun m!4577573 () Bool)

(assert (=> b!3996737 m!4577573))

(declare-fun m!4577575 () Bool)

(assert (=> b!3996737 m!4577575))

(declare-fun m!4577577 () Bool)

(assert (=> b!3996737 m!4577577))

(assert (=> b!3996737 m!4577577))

(declare-fun m!4577579 () Bool)

(assert (=> b!3996737 m!4577579))

(declare-fun m!4577581 () Bool)

(assert (=> b!3996747 m!4577581))

(declare-fun m!4577583 () Bool)

(assert (=> b!3996747 m!4577583))

(declare-fun m!4577585 () Bool)

(assert (=> b!3996747 m!4577585))

(declare-fun m!4577587 () Bool)

(assert (=> b!3996747 m!4577587))

(declare-fun m!4577589 () Bool)

(assert (=> b!3996747 m!4577589))

(declare-fun m!4577591 () Bool)

(assert (=> b!3996735 m!4577591))

(declare-fun m!4577593 () Bool)

(assert (=> b!3996735 m!4577593))

(declare-fun m!4577595 () Bool)

(assert (=> b!3996735 m!4577595))

(declare-fun m!4577597 () Bool)

(assert (=> b!3996756 m!4577597))

(declare-fun m!4577599 () Bool)

(assert (=> b!3996756 m!4577599))

(declare-fun m!4577601 () Bool)

(assert (=> b!3996756 m!4577601))

(declare-fun m!4577603 () Bool)

(assert (=> b!3996743 m!4577603))

(declare-fun m!4577605 () Bool)

(assert (=> b!3996743 m!4577605))

(declare-fun m!4577607 () Bool)

(assert (=> b!3996726 m!4577607))

(declare-fun m!4577609 () Bool)

(assert (=> b!3996726 m!4577609))

(declare-fun m!4577611 () Bool)

(assert (=> b!3996726 m!4577611))

(declare-fun m!4577613 () Bool)

(assert (=> b!3996726 m!4577613))

(declare-fun m!4577615 () Bool)

(assert (=> b!3996730 m!4577615))

(declare-fun m!4577617 () Bool)

(assert (=> b!3996730 m!4577617))

(declare-fun m!4577619 () Bool)

(assert (=> b!3996730 m!4577619))

(declare-fun m!4577621 () Bool)

(assert (=> b!3996730 m!4577621))

(declare-fun m!4577623 () Bool)

(assert (=> b!3996744 m!4577623))

(declare-fun m!4577625 () Bool)

(assert (=> b!3996744 m!4577625))

(declare-fun m!4577627 () Bool)

(assert (=> b!3996744 m!4577627))

(declare-fun m!4577629 () Bool)

(assert (=> b!3996744 m!4577629))

(declare-fun m!4577631 () Bool)

(assert (=> b!3996731 m!4577631))

(declare-fun m!4577633 () Bool)

(assert (=> b!3996731 m!4577633))

(declare-fun m!4577635 () Bool)

(assert (=> b!3996757 m!4577635))

(declare-fun m!4577637 () Bool)

(assert (=> b!3996757 m!4577637))

(declare-fun m!4577639 () Bool)

(assert (=> b!3996757 m!4577639))

(declare-fun m!4577641 () Bool)

(assert (=> b!3996757 m!4577641))

(declare-fun m!4577643 () Bool)

(assert (=> start!376200 m!4577643))

(declare-fun m!4577645 () Bool)

(assert (=> b!3996760 m!4577645))

(declare-fun m!4577647 () Bool)

(assert (=> b!3996776 m!4577647))

(declare-fun m!4577649 () Bool)

(assert (=> b!3996776 m!4577649))

(declare-fun m!4577651 () Bool)

(assert (=> b!3996728 m!4577651))

(declare-fun m!4577653 () Bool)

(assert (=> b!3996734 m!4577653))

(declare-fun m!4577655 () Bool)

(assert (=> b!3996767 m!4577655))

(declare-fun m!4577657 () Bool)

(assert (=> b!3996767 m!4577657))

(declare-fun m!4577659 () Bool)

(assert (=> b!3996767 m!4577659))

(declare-fun m!4577661 () Bool)

(assert (=> b!3996767 m!4577661))

(declare-fun m!4577663 () Bool)

(assert (=> b!3996738 m!4577663))

(declare-fun m!4577665 () Bool)

(assert (=> b!3996749 m!4577665))

(declare-fun m!4577667 () Bool)

(assert (=> b!3996748 m!4577667))

(declare-fun m!4577669 () Bool)

(assert (=> b!3996729 m!4577669))

(declare-fun m!4577671 () Bool)

(assert (=> b!3996727 m!4577671))

(declare-fun m!4577673 () Bool)

(assert (=> b!3996732 m!4577673))

(declare-fun m!4577675 () Bool)

(assert (=> b!3996732 m!4577675))

(declare-fun m!4577677 () Bool)

(assert (=> b!3996754 m!4577677))

(declare-fun m!4577679 () Bool)

(assert (=> b!3996754 m!4577679))

(declare-fun m!4577681 () Bool)

(assert (=> b!3996754 m!4577681))

(declare-fun m!4577683 () Bool)

(assert (=> b!3996754 m!4577683))

(declare-fun m!4577685 () Bool)

(assert (=> b!3996754 m!4577685))

(declare-fun m!4577687 () Bool)

(assert (=> b!3996754 m!4577687))

(declare-fun m!4577689 () Bool)

(assert (=> b!3996754 m!4577689))

(declare-fun m!4577691 () Bool)

(assert (=> b!3996754 m!4577691))

(declare-fun m!4577693 () Bool)

(assert (=> b!3996754 m!4577693))

(declare-fun m!4577695 () Bool)

(assert (=> b!3996754 m!4577695))

(declare-fun m!4577697 () Bool)

(assert (=> b!3996754 m!4577697))

(declare-fun m!4577699 () Bool)

(assert (=> b!3996754 m!4577699))

(assert (=> b!3996754 m!4577693))

(declare-fun m!4577701 () Bool)

(assert (=> b!3996754 m!4577701))

(assert (=> b!3996754 m!4577697))

(declare-fun m!4577703 () Bool)

(assert (=> b!3996754 m!4577703))

(declare-fun m!4577705 () Bool)

(assert (=> b!3996754 m!4577705))

(declare-fun m!4577707 () Bool)

(assert (=> b!3996754 m!4577707))

(declare-fun m!4577709 () Bool)

(assert (=> b!3996754 m!4577709))

(declare-fun m!4577711 () Bool)

(assert (=> b!3996754 m!4577711))

(declare-fun m!4577713 () Bool)

(assert (=> b!3996759 m!4577713))

(declare-fun m!4577715 () Bool)

(assert (=> b!3996759 m!4577715))

(declare-fun m!4577717 () Bool)

(assert (=> b!3996773 m!4577717))

(declare-fun m!4577719 () Bool)

(assert (=> b!3996773 m!4577719))

(declare-fun m!4577721 () Bool)

(assert (=> b!3996758 m!4577721))

(declare-fun m!4577723 () Bool)

(assert (=> b!3996758 m!4577723))

(declare-fun m!4577725 () Bool)

(assert (=> b!3996758 m!4577725))

(declare-fun m!4577727 () Bool)

(assert (=> b!3996758 m!4577727))

(declare-fun m!4577729 () Bool)

(assert (=> b!3996771 m!4577729))

(assert (=> b!3996771 m!4577567))

(declare-fun m!4577731 () Bool)

(assert (=> b!3996751 m!4577731))

(declare-fun m!4577733 () Bool)

(assert (=> b!3996742 m!4577733))

(declare-fun m!4577735 () Bool)

(assert (=> b!3996742 m!4577735))

(declare-fun m!4577737 () Bool)

(assert (=> b!3996742 m!4577737))

(declare-fun m!4577739 () Bool)

(assert (=> b!3996770 m!4577739))

(declare-fun m!4577741 () Bool)

(assert (=> b!3996761 m!4577741))

(declare-fun m!4577743 () Bool)

(assert (=> b!3996761 m!4577743))

(declare-fun m!4577745 () Bool)

(assert (=> b!3996761 m!4577745))

(declare-fun m!4577747 () Bool)

(assert (=> b!3996761 m!4577747))

(declare-fun m!4577749 () Bool)

(assert (=> b!3996761 m!4577749))

(assert (=> b!3996761 m!4577749))

(declare-fun m!4577751 () Bool)

(assert (=> b!3996761 m!4577751))

(declare-fun m!4577753 () Bool)

(assert (=> b!3996761 m!4577753))

(declare-fun m!4577755 () Bool)

(assert (=> b!3996774 m!4577755))

(declare-fun m!4577757 () Bool)

(assert (=> b!3996739 m!4577757))

(declare-fun m!4577759 () Bool)

(assert (=> b!3996739 m!4577759))

(declare-fun m!4577761 () Bool)

(assert (=> b!3996739 m!4577761))

(declare-fun m!4577763 () Bool)

(assert (=> b!3996739 m!4577763))

(declare-fun m!4577765 () Bool)

(assert (=> b!3996752 m!4577765))

(declare-fun m!4577767 () Bool)

(assert (=> b!3996752 m!4577767))

(check-sat (not b!3996728) (not b_next!111717) b_and!306961 b_and!306963 (not b_next!111719) (not b!3996771) (not b!3996732) (not b!3996740) (not b!3996738) (not b!3996731) (not b!3996768) (not b!3996774) (not b!3996773) (not b!3996751) (not b!3996745) (not b!3996749) (not b!3996737) (not b!3996742) (not b!3996759) (not b!3996755) (not b!3996743) tp_is_empty!20325 (not b!3996735) (not b!3996776) (not b!3996758) (not b!3996760) (not b!3996767) (not b!3996739) (not b!3996752) (not b!3996744) (not b_next!111715) (not b!3996761) (not b!3996726) (not b!3996756) (not b!3996734) (not b!3996754) (not b!3996747) (not b!3996765) (not b!3996750) (not start!376200) b_and!306965 b_and!306959 (not b!3996748) (not b!3996757) (not b!3996729) (not b!3996770) (not b!3996730) (not b!3996762) (not b!3996727) (not b!3996753) (not b_next!111713))
(check-sat (not b_next!111717) b_and!306961 (not b_next!111715) b_and!306965 b_and!306963 b_and!306959 (not b_next!111713) (not b_next!111719))
