; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!259898 () Bool)

(assert start!259898)

(declare-fun b!2671745 () Bool)

(declare-fun b_free!75137 () Bool)

(declare-fun b_next!75841 () Bool)

(assert (=> b!2671745 (= b_free!75137 (not b_next!75841))))

(declare-fun tp!844735 () Bool)

(declare-fun b_and!197265 () Bool)

(assert (=> b!2671745 (= tp!844735 b_and!197265)))

(declare-fun b_free!75139 () Bool)

(declare-fun b_next!75843 () Bool)

(assert (=> b!2671745 (= b_free!75139 (not b_next!75843))))

(declare-fun tp!844743 () Bool)

(declare-fun b_and!197267 () Bool)

(assert (=> b!2671745 (= tp!844743 b_and!197267)))

(declare-fun b!2671736 () Bool)

(declare-fun b_free!75141 () Bool)

(declare-fun b_next!75845 () Bool)

(assert (=> b!2671736 (= b_free!75141 (not b_next!75845))))

(declare-fun tp!844739 () Bool)

(declare-fun b_and!197269 () Bool)

(assert (=> b!2671736 (= tp!844739 b_and!197269)))

(declare-fun b_free!75143 () Bool)

(declare-fun b_next!75847 () Bool)

(assert (=> b!2671736 (= b_free!75143 (not b_next!75847))))

(declare-fun tp!844732 () Bool)

(declare-fun b_and!197271 () Bool)

(assert (=> b!2671736 (= tp!844732 b_and!197271)))

(declare-fun b!2671727 () Bool)

(declare-fun b_free!75145 () Bool)

(declare-fun b_next!75849 () Bool)

(assert (=> b!2671727 (= b_free!75145 (not b_next!75849))))

(declare-fun tp!844733 () Bool)

(declare-fun b_and!197273 () Bool)

(assert (=> b!2671727 (= tp!844733 b_and!197273)))

(declare-fun b_free!75147 () Bool)

(declare-fun b_next!75851 () Bool)

(assert (=> b!2671727 (= b_free!75147 (not b_next!75851))))

(declare-fun tp!844740 () Bool)

(declare-fun b_and!197275 () Bool)

(assert (=> b!2671727 (= tp!844740 b_and!197275)))

(declare-fun bs!479550 () Bool)

(declare-fun b!2671730 () Bool)

(declare-fun b!2671743 () Bool)

(assert (= bs!479550 (and b!2671730 b!2671743)))

(declare-fun lambda!99782 () Int)

(declare-fun lambda!99781 () Int)

(assert (=> bs!479550 (not (= lambda!99782 lambda!99781))))

(declare-fun b!2671757 () Bool)

(declare-fun e!1683902 () Bool)

(assert (=> b!2671757 (= e!1683902 true)))

(declare-fun b!2671756 () Bool)

(declare-fun e!1683901 () Bool)

(assert (=> b!2671756 (= e!1683901 e!1683902)))

(declare-fun b!2671755 () Bool)

(declare-fun e!1683900 () Bool)

(assert (=> b!2671755 (= e!1683900 e!1683901)))

(assert (=> b!2671730 e!1683900))

(assert (= b!2671756 b!2671757))

(assert (= b!2671755 b!2671756))

(declare-datatypes ((List!30817 0))(
  ( (Nil!30717) (Cons!30717 (h!36137 (_ BitVec 16)) (t!223320 List!30817)) )
))
(declare-datatypes ((TokenValue!4909 0))(
  ( (FloatLiteralValue!9818 (text!34808 List!30817)) (TokenValueExt!4908 (__x!19651 Int)) (Broken!24545 (value!151158 List!30817)) (Object!5008) (End!4909) (Def!4909) (Underscore!4909) (Match!4909) (Else!4909) (Error!4909) (Case!4909) (If!4909) (Extends!4909) (Abstract!4909) (Class!4909) (Val!4909) (DelimiterValue!9818 (del!4969 List!30817)) (KeywordValue!4915 (value!151159 List!30817)) (CommentValue!9818 (value!151160 List!30817)) (WhitespaceValue!9818 (value!151161 List!30817)) (IndentationValue!4909 (value!151162 List!30817)) (String!34428) (Int32!4909) (Broken!24546 (value!151163 List!30817)) (Boolean!4910) (Unit!44940) (OperatorValue!4912 (op!4969 List!30817)) (IdentifierValue!9818 (value!151164 List!30817)) (IdentifierValue!9819 (value!151165 List!30817)) (WhitespaceValue!9819 (value!151166 List!30817)) (True!9818) (False!9818) (Broken!24547 (value!151167 List!30817)) (Broken!24548 (value!151168 List!30817)) (True!9819) (RightBrace!4909) (RightBracket!4909) (Colon!4909) (Null!4909) (Comma!4909) (LeftBracket!4909) (False!9819) (LeftBrace!4909) (ImaginaryLiteralValue!4909 (text!34809 List!30817)) (StringLiteralValue!14727 (value!151169 List!30817)) (EOFValue!4909 (value!151170 List!30817)) (IdentValue!4909 (value!151171 List!30817)) (DelimiterValue!9819 (value!151172 List!30817)) (DedentValue!4909 (value!151173 List!30817)) (NewLineValue!4909 (value!151174 List!30817)) (IntegerValue!14727 (value!151175 (_ BitVec 32)) (text!34810 List!30817)) (IntegerValue!14728 (value!151176 Int) (text!34811 List!30817)) (Times!4909) (Or!4909) (Equal!4909) (Minus!4909) (Broken!24549 (value!151177 List!30817)) (And!4909) (Div!4909) (LessEqual!4909) (Mod!4909) (Concat!12740) (Not!4909) (Plus!4909) (SpaceValue!4909 (value!151178 List!30817)) (IntegerValue!14729 (value!151179 Int) (text!34812 List!30817)) (StringLiteralValue!14728 (text!34813 List!30817)) (FloatLiteralValue!9819 (text!34814 List!30817)) (BytesLiteralValue!4909 (value!151180 List!30817)) (CommentValue!9819 (value!151181 List!30817)) (StringLiteralValue!14729 (value!151182 List!30817)) (ErrorTokenValue!4909 (msg!4970 List!30817)) )
))
(declare-datatypes ((C!15820 0))(
  ( (C!15821 (val!9844 Int)) )
))
(declare-datatypes ((List!30818 0))(
  ( (Nil!30718) (Cons!30718 (h!36138 C!15820) (t!223321 List!30818)) )
))
(declare-datatypes ((IArray!19213 0))(
  ( (IArray!19214 (innerList!9664 List!30818)) )
))
(declare-datatypes ((Conc!9604 0))(
  ( (Node!9604 (left!23759 Conc!9604) (right!24089 Conc!9604) (csize!19438 Int) (cheight!9815 Int)) (Leaf!14688 (xs!12634 IArray!19213) (csize!19439 Int)) (Empty!9604) )
))
(declare-datatypes ((BalanceConc!18822 0))(
  ( (BalanceConc!18823 (c!430622 Conc!9604)) )
))
(declare-datatypes ((Regex!7831 0))(
  ( (ElementMatch!7831 (c!430623 C!15820)) (Concat!12741 (regOne!16174 Regex!7831) (regTwo!16174 Regex!7831)) (EmptyExpr!7831) (Star!7831 (reg!8160 Regex!7831)) (EmptyLang!7831) (Union!7831 (regOne!16175 Regex!7831) (regTwo!16175 Regex!7831)) )
))
(declare-datatypes ((String!34429 0))(
  ( (String!34430 (value!151183 String)) )
))
(declare-datatypes ((TokenValueInjection!9258 0))(
  ( (TokenValueInjection!9259 (toValue!6629 Int) (toChars!6488 Int)) )
))
(declare-datatypes ((Rule!9174 0))(
  ( (Rule!9175 (regex!4687 Regex!7831) (tag!5189 String!34429) (isSeparator!4687 Bool) (transformation!4687 TokenValueInjection!9258)) )
))
(declare-datatypes ((List!30819 0))(
  ( (Nil!30719) (Cons!30719 (h!36139 Rule!9174) (t!223322 List!30819)) )
))
(declare-fun rules!1712 () List!30819)

(get-info :version)

(assert (= (and b!2671730 ((_ is Cons!30719) rules!1712)) b!2671755))

(declare-fun order!16873 () Int)

(declare-fun order!16871 () Int)

(declare-fun dynLambda!13306 (Int Int) Int)

(declare-fun dynLambda!13307 (Int Int) Int)

(assert (=> b!2671757 (< (dynLambda!13306 order!16871 (toValue!6629 (transformation!4687 (h!36139 rules!1712)))) (dynLambda!13307 order!16873 lambda!99782))))

(declare-fun order!16875 () Int)

(declare-fun dynLambda!13308 (Int Int) Int)

(assert (=> b!2671757 (< (dynLambda!13308 order!16875 (toChars!6488 (transformation!4687 (h!36139 rules!1712)))) (dynLambda!13307 order!16873 lambda!99782))))

(assert (=> b!2671730 true))

(declare-fun e!1683884 () Bool)

(declare-datatypes ((Token!8844 0))(
  ( (Token!8845 (value!151184 TokenValue!4909) (rule!7093 Rule!9174) (size!23759 Int) (originalCharacters!5453 List!30818)) )
))
(declare-fun separatorToken!152 () Token!8844)

(declare-fun tp!844737 () Bool)

(declare-fun e!1683888 () Bool)

(declare-fun b!2671726 () Bool)

(declare-fun inv!21 (TokenValue!4909) Bool)

(assert (=> b!2671726 (= e!1683888 (and (inv!21 (value!151184 separatorToken!152)) e!1683884 tp!844737))))

(declare-fun e!1683890 () Bool)

(assert (=> b!2671727 (= e!1683890 (and tp!844733 tp!844740))))

(declare-fun b!2671728 () Bool)

(declare-fun res!1123245 () Bool)

(declare-fun e!1683885 () Bool)

(assert (=> b!2671728 (=> (not res!1123245) (not e!1683885))))

(declare-fun isEmpty!17573 (List!30819) Bool)

(assert (=> b!2671728 (= res!1123245 (not (isEmpty!17573 rules!1712)))))

(declare-fun b!2671729 () Bool)

(declare-fun res!1123237 () Bool)

(assert (=> b!2671729 (=> (not res!1123237) (not e!1683885))))

(assert (=> b!2671729 (= res!1123237 (isSeparator!4687 (rule!7093 separatorToken!152)))))

(declare-fun e!1683880 () Bool)

(assert (=> b!2671730 (= e!1683885 e!1683880)))

(declare-fun res!1123239 () Bool)

(assert (=> b!2671730 (=> (not res!1123239) (not e!1683880))))

(declare-fun lt!940886 () Bool)

(declare-datatypes ((List!30820 0))(
  ( (Nil!30720) (Cons!30720 (h!36140 Token!8844) (t!223323 List!30820)) )
))
(declare-fun l!4335 () List!30820)

(declare-datatypes ((tuple2!30190 0))(
  ( (tuple2!30191 (_1!17637 Token!8844) (_2!17637 List!30818)) )
))
(declare-datatypes ((Option!6078 0))(
  ( (None!6077) (Some!6077 (v!32612 tuple2!30190)) )
))
(declare-fun lt!940888 () Option!6078)

(assert (=> b!2671730 (= res!1123239 (and (or lt!940886 (not (= (_1!17637 (v!32612 lt!940888)) (h!36140 l!4335)))) (or lt!940886 (= (_1!17637 (v!32612 lt!940888)) (h!36140 l!4335))) ((_ is None!6077) lt!940888)))))

(assert (=> b!2671730 (= lt!940886 (not ((_ is Some!6077) lt!940888)))))

(declare-datatypes ((LexerInterface!4284 0))(
  ( (LexerInterfaceExt!4281 (__x!19652 Int)) (Lexer!4282) )
))
(declare-fun thiss!14116 () LexerInterface!4284)

(declare-fun maxPrefix!2324 (LexerInterface!4284 List!30819 List!30818) Option!6078)

(declare-fun ++!7493 (List!30818 List!30818) List!30818)

(declare-fun list!11599 (BalanceConc!18822) List!30818)

(declare-fun charsOf!2952 (Token!8844) BalanceConc!18822)

(declare-fun printWithSeparatorTokenWhenNeededList!680 (LexerInterface!4284 List!30819 List!30820 Token!8844) List!30818)

(assert (=> b!2671730 (= lt!940888 (maxPrefix!2324 thiss!14116 rules!1712 (++!7493 (list!11599 (charsOf!2952 (h!36140 l!4335))) (printWithSeparatorTokenWhenNeededList!680 thiss!14116 rules!1712 (t!223323 l!4335) separatorToken!152))))))

(declare-datatypes ((Unit!44941 0))(
  ( (Unit!44942) )
))
(declare-fun lt!940885 () Unit!44941)

(declare-fun forallContained!1029 (List!30820 Int Token!8844) Unit!44941)

(assert (=> b!2671730 (= lt!940885 (forallContained!1029 l!4335 lambda!99782 (h!36140 l!4335)))))

(declare-fun b!2671731 () Bool)

(declare-fun res!1123240 () Bool)

(assert (=> b!2671731 (=> (not res!1123240) (not e!1683885))))

(declare-fun rulesProduceEachTokenIndividuallyList!1506 (LexerInterface!4284 List!30819 List!30820) Bool)

(assert (=> b!2671731 (= res!1123240 (rulesProduceEachTokenIndividuallyList!1506 thiss!14116 rules!1712 l!4335))))

(declare-fun b!2671732 () Bool)

(declare-fun res!1123238 () Bool)

(assert (=> b!2671732 (=> (not res!1123238) (not e!1683885))))

(declare-fun contains!5899 (List!30820 Token!8844) Bool)

(assert (=> b!2671732 (= res!1123238 (contains!5899 l!4335 (h!36140 l!4335)))))

(declare-fun res!1123243 () Bool)

(assert (=> start!259898 (=> (not res!1123243) (not e!1683885))))

(assert (=> start!259898 (= res!1123243 ((_ is Lexer!4282) thiss!14116))))

(assert (=> start!259898 e!1683885))

(assert (=> start!259898 true))

(declare-fun e!1683878 () Bool)

(assert (=> start!259898 e!1683878))

(declare-fun e!1683877 () Bool)

(assert (=> start!259898 e!1683877))

(declare-fun inv!41728 (Token!8844) Bool)

(assert (=> start!259898 (and (inv!41728 separatorToken!152) e!1683888)))

(declare-fun b!2671733 () Bool)

(declare-fun e!1683889 () Bool)

(declare-fun tp!844744 () Bool)

(assert (=> b!2671733 (= e!1683878 (and e!1683889 tp!844744))))

(declare-fun b!2671734 () Bool)

(declare-fun res!1123241 () Bool)

(assert (=> b!2671734 (=> (not res!1123241) (not e!1683885))))

(assert (=> b!2671734 (= res!1123241 ((_ is Cons!30720) l!4335))))

(declare-fun tp!844741 () Bool)

(declare-fun e!1683893 () Bool)

(declare-fun b!2671735 () Bool)

(declare-fun e!1683887 () Bool)

(declare-fun inv!41725 (String!34429) Bool)

(declare-fun inv!41729 (TokenValueInjection!9258) Bool)

(assert (=> b!2671735 (= e!1683887 (and tp!844741 (inv!41725 (tag!5189 (rule!7093 (h!36140 l!4335)))) (inv!41729 (transformation!4687 (rule!7093 (h!36140 l!4335)))) e!1683893))))

(assert (=> b!2671736 (= e!1683893 (and tp!844739 tp!844732))))

(declare-fun e!1683879 () Bool)

(declare-fun tp!844738 () Bool)

(declare-fun b!2671737 () Bool)

(assert (=> b!2671737 (= e!1683877 (and (inv!41728 (h!36140 l!4335)) e!1683879 tp!844738))))

(declare-fun b!2671738 () Bool)

(declare-fun res!1123244 () Bool)

(assert (=> b!2671738 (=> (not res!1123244) (not e!1683885))))

(declare-fun rulesProduceIndividualToken!1996 (LexerInterface!4284 List!30819 Token!8844) Bool)

(assert (=> b!2671738 (= res!1123244 (rulesProduceIndividualToken!1996 thiss!14116 rules!1712 separatorToken!152))))

(declare-fun b!2671739 () Bool)

(declare-fun tp!844742 () Bool)

(declare-fun e!1683882 () Bool)

(assert (=> b!2671739 (= e!1683884 (and tp!844742 (inv!41725 (tag!5189 (rule!7093 separatorToken!152))) (inv!41729 (transformation!4687 (rule!7093 separatorToken!152))) e!1683882))))

(declare-fun b!2671740 () Bool)

(declare-fun res!1123235 () Bool)

(assert (=> b!2671740 (=> (not res!1123235) (not e!1683885))))

(declare-fun rulesInvariant!3784 (LexerInterface!4284 List!30819) Bool)

(assert (=> b!2671740 (= res!1123235 (rulesInvariant!3784 thiss!14116 rules!1712))))

(declare-fun b!2671741 () Bool)

(declare-fun tp!844734 () Bool)

(assert (=> b!2671741 (= e!1683879 (and (inv!21 (value!151184 (h!36140 l!4335))) e!1683887 tp!844734))))

(declare-fun b!2671742 () Bool)

(declare-fun res!1123236 () Bool)

(assert (=> b!2671742 (=> (not res!1123236) (not e!1683885))))

(declare-fun sepAndNonSepRulesDisjointChars!1260 (List!30819 List!30819) Bool)

(assert (=> b!2671742 (= res!1123236 (sepAndNonSepRulesDisjointChars!1260 rules!1712 rules!1712))))

(declare-fun res!1123242 () Bool)

(assert (=> b!2671743 (=> (not res!1123242) (not e!1683885))))

(declare-fun forall!6502 (List!30820 Int) Bool)

(assert (=> b!2671743 (= res!1123242 (forall!6502 l!4335 lambda!99781))))

(declare-fun b!2671744 () Bool)

(declare-fun tp!844736 () Bool)

(assert (=> b!2671744 (= e!1683889 (and tp!844736 (inv!41725 (tag!5189 (h!36139 rules!1712))) (inv!41729 (transformation!4687 (h!36139 rules!1712))) e!1683890))))

(assert (=> b!2671745 (= e!1683882 (and tp!844735 tp!844743))))

(declare-fun b!2671746 () Bool)

(assert (=> b!2671746 (= e!1683880 false)))

(declare-datatypes ((IArray!19215 0))(
  ( (IArray!19216 (innerList!9665 List!30820)) )
))
(declare-datatypes ((Conc!9605 0))(
  ( (Node!9605 (left!23760 Conc!9605) (right!24090 Conc!9605) (csize!19440 Int) (cheight!9816 Int)) (Leaf!14689 (xs!12635 IArray!19215) (csize!19441 Int)) (Empty!9605) )
))
(declare-datatypes ((BalanceConc!18824 0))(
  ( (BalanceConc!18825 (c!430624 Conc!9605)) )
))
(declare-fun lt!940887 () BalanceConc!18824)

(declare-fun singletonSeq!2084 (Token!8844) BalanceConc!18824)

(assert (=> b!2671746 (= lt!940887 (singletonSeq!2084 (h!36140 l!4335)))))

(assert (= (and start!259898 res!1123243) b!2671728))

(assert (= (and b!2671728 res!1123245) b!2671740))

(assert (= (and b!2671740 res!1123235) b!2671731))

(assert (= (and b!2671731 res!1123240) b!2671738))

(assert (= (and b!2671738 res!1123244) b!2671729))

(assert (= (and b!2671729 res!1123237) b!2671743))

(assert (= (and b!2671743 res!1123242) b!2671742))

(assert (= (and b!2671742 res!1123236) b!2671734))

(assert (= (and b!2671734 res!1123241) b!2671732))

(assert (= (and b!2671732 res!1123238) b!2671730))

(assert (= (and b!2671730 res!1123239) b!2671746))

(assert (= b!2671744 b!2671727))

(assert (= b!2671733 b!2671744))

(assert (= (and start!259898 ((_ is Cons!30719) rules!1712)) b!2671733))

(assert (= b!2671735 b!2671736))

(assert (= b!2671741 b!2671735))

(assert (= b!2671737 b!2671741))

(assert (= (and start!259898 ((_ is Cons!30720) l!4335)) b!2671737))

(assert (= b!2671739 b!2671745))

(assert (= b!2671726 b!2671739))

(assert (= start!259898 b!2671726))

(declare-fun m!3037971 () Bool)

(assert (=> b!2671746 m!3037971))

(declare-fun m!3037973 () Bool)

(assert (=> b!2671731 m!3037973))

(declare-fun m!3037975 () Bool)

(assert (=> b!2671732 m!3037975))

(declare-fun m!3037977 () Bool)

(assert (=> start!259898 m!3037977))

(declare-fun m!3037979 () Bool)

(assert (=> b!2671728 m!3037979))

(declare-fun m!3037981 () Bool)

(assert (=> b!2671742 m!3037981))

(declare-fun m!3037983 () Bool)

(assert (=> b!2671740 m!3037983))

(declare-fun m!3037985 () Bool)

(assert (=> b!2671737 m!3037985))

(declare-fun m!3037987 () Bool)

(assert (=> b!2671726 m!3037987))

(declare-fun m!3037989 () Bool)

(assert (=> b!2671744 m!3037989))

(declare-fun m!3037991 () Bool)

(assert (=> b!2671744 m!3037991))

(declare-fun m!3037993 () Bool)

(assert (=> b!2671730 m!3037993))

(declare-fun m!3037995 () Bool)

(assert (=> b!2671730 m!3037995))

(assert (=> b!2671730 m!3037995))

(declare-fun m!3037997 () Bool)

(assert (=> b!2671730 m!3037997))

(declare-fun m!3037999 () Bool)

(assert (=> b!2671730 m!3037999))

(declare-fun m!3038001 () Bool)

(assert (=> b!2671730 m!3038001))

(assert (=> b!2671730 m!3037993))

(assert (=> b!2671730 m!3037997))

(assert (=> b!2671730 m!3037999))

(declare-fun m!3038003 () Bool)

(assert (=> b!2671730 m!3038003))

(declare-fun m!3038005 () Bool)

(assert (=> b!2671741 m!3038005))

(declare-fun m!3038007 () Bool)

(assert (=> b!2671735 m!3038007))

(declare-fun m!3038009 () Bool)

(assert (=> b!2671735 m!3038009))

(declare-fun m!3038011 () Bool)

(assert (=> b!2671743 m!3038011))

(declare-fun m!3038013 () Bool)

(assert (=> b!2671739 m!3038013))

(declare-fun m!3038015 () Bool)

(assert (=> b!2671739 m!3038015))

(declare-fun m!3038017 () Bool)

(assert (=> b!2671738 m!3038017))

(check-sat (not b!2671755) (not b_next!75847) b_and!197275 (not b!2671742) (not b!2671744) (not b!2671735) (not b!2671741) (not b_next!75843) (not b!2671746) (not b!2671740) (not b!2671732) b_and!197271 (not b!2671728) (not b_next!75845) (not b_next!75841) b_and!197265 (not b!2671738) (not b!2671737) (not b!2671730) (not b!2671731) (not b!2671726) b_and!197267 (not start!259898) (not b_next!75849) (not b!2671733) b_and!197269 b_and!197273 (not b!2671739) (not b!2671743) (not b_next!75851))
(check-sat (not b_next!75847) (not b_next!75843) b_and!197271 b_and!197275 b_and!197265 b_and!197267 (not b_next!75849) (not b_next!75851) (not b_next!75845) (not b_next!75841) b_and!197269 b_and!197273)
