; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!394186 () Bool)

(assert start!394186)

(declare-fun b!4144794 () Bool)

(declare-fun b_free!118179 () Bool)

(declare-fun b_next!118883 () Bool)

(assert (=> b!4144794 (= b_free!118179 (not b_next!118883))))

(declare-fun tp!1263336 () Bool)

(declare-fun b_and!322049 () Bool)

(assert (=> b!4144794 (= tp!1263336 b_and!322049)))

(declare-fun b_free!118181 () Bool)

(declare-fun b_next!118885 () Bool)

(assert (=> b!4144794 (= b_free!118181 (not b_next!118885))))

(declare-fun tp!1263335 () Bool)

(declare-fun b_and!322051 () Bool)

(assert (=> b!4144794 (= tp!1263335 b_and!322051)))

(declare-fun b!4144801 () Bool)

(declare-fun b_free!118183 () Bool)

(declare-fun b_next!118887 () Bool)

(assert (=> b!4144801 (= b_free!118183 (not b_next!118887))))

(declare-fun tp!1263344 () Bool)

(declare-fun b_and!322053 () Bool)

(assert (=> b!4144801 (= tp!1263344 b_and!322053)))

(declare-fun b_free!118185 () Bool)

(declare-fun b_next!118889 () Bool)

(assert (=> b!4144801 (= b_free!118185 (not b_next!118889))))

(declare-fun tp!1263342 () Bool)

(declare-fun b_and!322055 () Bool)

(assert (=> b!4144801 (= tp!1263342 b_and!322055)))

(declare-fun b!4144790 () Bool)

(declare-fun b_free!118187 () Bool)

(declare-fun b_next!118891 () Bool)

(assert (=> b!4144790 (= b_free!118187 (not b_next!118891))))

(declare-fun tp!1263340 () Bool)

(declare-fun b_and!322057 () Bool)

(assert (=> b!4144790 (= tp!1263340 b_and!322057)))

(declare-fun b_free!118189 () Bool)

(declare-fun b_next!118893 () Bool)

(assert (=> b!4144790 (= b_free!118189 (not b_next!118893))))

(declare-fun tp!1263339 () Bool)

(declare-fun b_and!322059 () Bool)

(assert (=> b!4144790 (= tp!1263339 b_and!322059)))

(declare-fun b!4144787 () Bool)

(declare-fun res!1696306 () Bool)

(declare-fun e!2571722 () Bool)

(assert (=> b!4144787 (=> (not res!1696306) (not e!2571722))))

(declare-datatypes ((LexerInterface!6983 0))(
  ( (LexerInterfaceExt!6980 (__x!27465 Int)) (Lexer!6981) )
))
(declare-fun thiss!25645 () LexerInterface!6983)

(declare-datatypes ((List!45097 0))(
  ( (Nil!44973) (Cons!44973 (h!50393 (_ BitVec 16)) (t!342664 List!45097)) )
))
(declare-datatypes ((TokenValue!7624 0))(
  ( (FloatLiteralValue!15248 (text!53813 List!45097)) (TokenValueExt!7623 (__x!27466 Int)) (Broken!38120 (value!231257 List!45097)) (Object!7747) (End!7624) (Def!7624) (Underscore!7624) (Match!7624) (Else!7624) (Error!7624) (Case!7624) (If!7624) (Extends!7624) (Abstract!7624) (Class!7624) (Val!7624) (DelimiterValue!15248 (del!7684 List!45097)) (KeywordValue!7630 (value!231258 List!45097)) (CommentValue!15248 (value!231259 List!45097)) (WhitespaceValue!15248 (value!231260 List!45097)) (IndentationValue!7624 (value!231261 List!45097)) (String!51869) (Int32!7624) (Broken!38121 (value!231262 List!45097)) (Boolean!7625) (Unit!64264) (OperatorValue!7627 (op!7684 List!45097)) (IdentifierValue!15248 (value!231263 List!45097)) (IdentifierValue!15249 (value!231264 List!45097)) (WhitespaceValue!15249 (value!231265 List!45097)) (True!15248) (False!15248) (Broken!38122 (value!231266 List!45097)) (Broken!38123 (value!231267 List!45097)) (True!15249) (RightBrace!7624) (RightBracket!7624) (Colon!7624) (Null!7624) (Comma!7624) (LeftBracket!7624) (False!15249) (LeftBrace!7624) (ImaginaryLiteralValue!7624 (text!53814 List!45097)) (StringLiteralValue!22872 (value!231268 List!45097)) (EOFValue!7624 (value!231269 List!45097)) (IdentValue!7624 (value!231270 List!45097)) (DelimiterValue!15249 (value!231271 List!45097)) (DedentValue!7624 (value!231272 List!45097)) (NewLineValue!7624 (value!231273 List!45097)) (IntegerValue!22872 (value!231274 (_ BitVec 32)) (text!53815 List!45097)) (IntegerValue!22873 (value!231275 Int) (text!53816 List!45097)) (Times!7624) (Or!7624) (Equal!7624) (Minus!7624) (Broken!38124 (value!231276 List!45097)) (And!7624) (Div!7624) (LessEqual!7624) (Mod!7624) (Concat!19923) (Not!7624) (Plus!7624) (SpaceValue!7624 (value!231277 List!45097)) (IntegerValue!22874 (value!231278 Int) (text!53817 List!45097)) (StringLiteralValue!22873 (text!53818 List!45097)) (FloatLiteralValue!15249 (text!53819 List!45097)) (BytesLiteralValue!7624 (value!231279 List!45097)) (CommentValue!15249 (value!231280 List!45097)) (StringLiteralValue!22874 (value!231281 List!45097)) (ErrorTokenValue!7624 (msg!7685 List!45097)) )
))
(declare-datatypes ((C!24784 0))(
  ( (C!24785 (val!14502 Int)) )
))
(declare-datatypes ((List!45098 0))(
  ( (Nil!44974) (Cons!44974 (h!50394 C!24784) (t!342665 List!45098)) )
))
(declare-datatypes ((IArray!27215 0))(
  ( (IArray!27216 (innerList!13665 List!45098)) )
))
(declare-datatypes ((Conc!13605 0))(
  ( (Node!13605 (left!33676 Conc!13605) (right!34006 Conc!13605) (csize!27440 Int) (cheight!13816 Int)) (Leaf!21017 (xs!16911 IArray!27215) (csize!27441 Int)) (Empty!13605) )
))
(declare-datatypes ((BalanceConc!26804 0))(
  ( (BalanceConc!26805 (c!710282 Conc!13605)) )
))
(declare-datatypes ((String!51870 0))(
  ( (String!51871 (value!231282 String)) )
))
(declare-datatypes ((Regex!12299 0))(
  ( (ElementMatch!12299 (c!710283 C!24784)) (Concat!19924 (regOne!25110 Regex!12299) (regTwo!25110 Regex!12299)) (EmptyExpr!12299) (Star!12299 (reg!12628 Regex!12299)) (EmptyLang!12299) (Union!12299 (regOne!25111 Regex!12299) (regTwo!25111 Regex!12299)) )
))
(declare-datatypes ((TokenValueInjection!14676 0))(
  ( (TokenValueInjection!14677 (toValue!10058 Int) (toChars!9917 Int)) )
))
(declare-datatypes ((Rule!14588 0))(
  ( (Rule!14589 (regex!7394 Regex!12299) (tag!8254 String!51870) (isSeparator!7394 Bool) (transformation!7394 TokenValueInjection!14676)) )
))
(declare-fun r!4008 () Rule!14588)

(declare-fun ruleValid!3200 (LexerInterface!6983 Rule!14588) Bool)

(assert (=> b!4144787 (= res!1696306 (ruleValid!3200 thiss!25645 r!4008))))

(declare-fun b!4144788 () Bool)

(declare-fun res!1696305 () Bool)

(assert (=> b!4144788 (=> (not res!1696305) (not e!2571722))))

(declare-fun p!2912 () List!45098)

(declare-fun matchR!6128 (Regex!12299 List!45098) Bool)

(assert (=> b!4144788 (= res!1696305 (matchR!6128 (regex!7394 r!4008) p!2912))))

(declare-fun res!1696300 () Bool)

(declare-fun e!2571717 () Bool)

(assert (=> start!394186 (=> (not res!1696300) (not e!2571717))))

(get-info :version)

(assert (=> start!394186 (= res!1696300 ((_ is Lexer!6981) thiss!25645))))

(assert (=> start!394186 e!2571717))

(declare-fun e!2571718 () Bool)

(assert (=> start!394186 e!2571718))

(declare-fun e!2571709 () Bool)

(assert (=> start!394186 e!2571709))

(assert (=> start!394186 true))

(declare-fun e!2571720 () Bool)

(assert (=> start!394186 e!2571720))

(declare-fun e!2571724 () Bool)

(assert (=> start!394186 e!2571724))

(declare-fun e!2571711 () Bool)

(assert (=> start!394186 e!2571711))

(declare-fun b!4144789 () Bool)

(declare-fun tp_is_empty!21521 () Bool)

(declare-fun tp!1263333 () Bool)

(assert (=> b!4144789 (= e!2571709 (and tp_is_empty!21521 tp!1263333))))

(declare-fun e!2571719 () Bool)

(assert (=> b!4144790 (= e!2571719 (and tp!1263340 tp!1263339))))

(declare-fun b!4144791 () Bool)

(declare-fun e!2571712 () Bool)

(assert (=> b!4144791 (= e!2571712 true)))

(declare-fun lt!1478330 () Int)

(declare-datatypes ((Token!13718 0))(
  ( (Token!13719 (value!231283 TokenValue!7624) (rule!10514 Rule!14588) (size!33332 Int) (originalCharacters!7890 List!45098)) )
))
(declare-datatypes ((tuple2!43350 0))(
  ( (tuple2!43351 (_1!24809 Token!13718) (_2!24809 List!45098)) )
))
(declare-datatypes ((Option!9700 0))(
  ( (None!9699) (Some!9699 (v!40347 tuple2!43350)) )
))
(declare-fun lt!1478332 () Option!9700)

(declare-fun size!33333 (BalanceConc!26804) Int)

(declare-fun charsOf!4993 (Token!13718) BalanceConc!26804)

(declare-fun get!14686 (Option!9700) tuple2!43350)

(assert (=> b!4144791 (= lt!1478330 (size!33333 (charsOf!4993 (_1!24809 (get!14686 lt!1478332)))))))

(declare-fun b!4144792 () Bool)

(declare-fun res!1696309 () Bool)

(assert (=> b!4144792 (=> (not res!1696309) (not e!2571717))))

(declare-fun isEmpty!26835 (List!45098) Bool)

(assert (=> b!4144792 (= res!1696309 (not (isEmpty!26835 p!2912)))))

(declare-fun b!4144793 () Bool)

(declare-fun res!1696312 () Bool)

(assert (=> b!4144793 (=> (not res!1696312) (not e!2571717))))

(declare-datatypes ((List!45099 0))(
  ( (Nil!44975) (Cons!44975 (h!50395 Rule!14588) (t!342666 List!45099)) )
))
(declare-fun rules!3756 () List!45099)

(declare-fun contains!9074 (List!45099 Rule!14588) Bool)

(assert (=> b!4144793 (= res!1696312 (contains!9074 rules!3756 r!4008))))

(declare-fun e!2571721 () Bool)

(assert (=> b!4144794 (= e!2571721 (and tp!1263336 tp!1263335))))

(declare-fun b!4144795 () Bool)

(declare-fun res!1696311 () Bool)

(assert (=> b!4144795 (=> (not res!1696311) (not e!2571717))))

(declare-fun rBis!149 () Rule!14588)

(assert (=> b!4144795 (= res!1696311 (contains!9074 rules!3756 rBis!149))))

(declare-fun b!4144796 () Bool)

(declare-fun e!2571710 () Bool)

(assert (=> b!4144796 (= e!2571722 (not e!2571710))))

(declare-fun res!1696310 () Bool)

(assert (=> b!4144796 (=> res!1696310 e!2571710)))

(assert (=> b!4144796 (= res!1696310 (or (not ((_ is Cons!44975) rules!3756)) (not (= (h!50395 rules!3756) rBis!149))))))

(declare-datatypes ((Unit!64265 0))(
  ( (Unit!64266) )
))
(declare-fun lt!1478333 () Unit!64265)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2240 (LexerInterface!6983 Rule!14588 List!45099) Unit!64265)

(assert (=> b!4144796 (= lt!1478333 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2240 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4144796 (ruleValid!3200 thiss!25645 rBis!149)))

(declare-fun lt!1478334 () Unit!64265)

(assert (=> b!4144796 (= lt!1478334 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2240 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4144797 () Bool)

(declare-fun tp!1263343 () Bool)

(assert (=> b!4144797 (= e!2571724 (and tp_is_empty!21521 tp!1263343))))

(declare-fun b!4144798 () Bool)

(assert (=> b!4144798 (= e!2571717 e!2571722)))

(declare-fun res!1696302 () Bool)

(assert (=> b!4144798 (=> (not res!1696302) (not e!2571722))))

(declare-fun input!3238 () List!45098)

(declare-fun lt!1478331 () BalanceConc!26804)

(declare-fun maxPrefix!4173 (LexerInterface!6983 List!45099 List!45098) Option!9700)

(declare-fun apply!10467 (TokenValueInjection!14676 BalanceConc!26804) TokenValue!7624)

(declare-fun size!33334 (List!45098) Int)

(declare-fun getSuffix!2656 (List!45098 List!45098) List!45098)

(assert (=> b!4144798 (= res!1696302 (= (maxPrefix!4173 thiss!25645 rules!3756 input!3238) (Some!9699 (tuple2!43351 (Token!13719 (apply!10467 (transformation!7394 r!4008) lt!1478331) r!4008 (size!33334 p!2912) p!2912) (getSuffix!2656 input!3238 p!2912)))))))

(declare-fun lt!1478327 () Unit!64265)

(declare-fun lemmaSemiInverse!2252 (TokenValueInjection!14676 BalanceConc!26804) Unit!64265)

(assert (=> b!4144798 (= lt!1478327 (lemmaSemiInverse!2252 (transformation!7394 r!4008) lt!1478331))))

(declare-fun seqFromList!5511 (List!45098) BalanceConc!26804)

(assert (=> b!4144798 (= lt!1478331 (seqFromList!5511 p!2912))))

(declare-fun e!2571713 () Bool)

(declare-fun e!2571716 () Bool)

(declare-fun tp!1263338 () Bool)

(declare-fun b!4144799 () Bool)

(declare-fun inv!59580 (String!51870) Bool)

(declare-fun inv!59582 (TokenValueInjection!14676) Bool)

(assert (=> b!4144799 (= e!2571716 (and tp!1263338 (inv!59580 (tag!8254 (h!50395 rules!3756))) (inv!59582 (transformation!7394 (h!50395 rules!3756))) e!2571713))))

(declare-fun b!4144800 () Bool)

(assert (=> b!4144800 (= e!2571710 e!2571712)))

(declare-fun res!1696304 () Bool)

(assert (=> b!4144800 (=> res!1696304 e!2571712)))

(declare-fun isEmpty!26836 (Option!9700) Bool)

(assert (=> b!4144800 (= res!1696304 (isEmpty!26836 lt!1478332))))

(declare-fun maxPrefixOneRule!3112 (LexerInterface!6983 Rule!14588 List!45098) Option!9700)

(assert (=> b!4144800 (= lt!1478332 (maxPrefixOneRule!3112 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4144800 (not (= rBis!149 r!4008))))

(declare-fun lt!1478328 () Unit!64265)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!92 (LexerInterface!6983 List!45099 Rule!14588 Rule!14588) Unit!64265)

(assert (=> b!4144800 (= lt!1478328 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!92 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun tail!6575 (List!45099) List!45099)

(assert (=> b!4144800 (contains!9074 (tail!6575 rules!3756) r!4008)))

(declare-fun lt!1478329 () Unit!64265)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!98 (List!45099 Rule!14588 Rule!14588) Unit!64265)

(assert (=> b!4144800 (= lt!1478329 (lemmaGetIndexBiggerAndHeadEqThenTailContains!98 rules!3756 rBis!149 r!4008))))

(assert (=> b!4144801 (= e!2571713 (and tp!1263344 tp!1263342))))

(declare-fun b!4144802 () Bool)

(declare-fun res!1696303 () Bool)

(assert (=> b!4144802 (=> (not res!1696303) (not e!2571717))))

(declare-fun isPrefix!4329 (List!45098 List!45098) Bool)

(assert (=> b!4144802 (= res!1696303 (isPrefix!4329 p!2912 input!3238))))

(declare-fun b!4144803 () Bool)

(declare-fun res!1696301 () Bool)

(assert (=> b!4144803 (=> (not res!1696301) (not e!2571717))))

(declare-fun rulesInvariant!6280 (LexerInterface!6983 List!45099) Bool)

(assert (=> b!4144803 (= res!1696301 (rulesInvariant!6280 thiss!25645 rules!3756))))

(declare-fun b!4144804 () Bool)

(declare-fun tp!1263337 () Bool)

(assert (=> b!4144804 (= e!2571718 (and e!2571716 tp!1263337))))

(declare-fun b!4144805 () Bool)

(declare-fun tp!1263341 () Bool)

(assert (=> b!4144805 (= e!2571711 (and tp!1263341 (inv!59580 (tag!8254 rBis!149)) (inv!59582 (transformation!7394 rBis!149)) e!2571721))))

(declare-fun b!4144806 () Bool)

(declare-fun res!1696307 () Bool)

(assert (=> b!4144806 (=> (not res!1696307) (not e!2571717))))

(declare-fun isEmpty!26837 (List!45099) Bool)

(assert (=> b!4144806 (= res!1696307 (not (isEmpty!26837 rules!3756)))))

(declare-fun b!4144807 () Bool)

(declare-fun res!1696308 () Bool)

(assert (=> b!4144807 (=> (not res!1696308) (not e!2571722))))

(declare-fun getIndex!740 (List!45099 Rule!14588) Int)

(assert (=> b!4144807 (= res!1696308 (< (getIndex!740 rules!3756 rBis!149) (getIndex!740 rules!3756 r!4008)))))

(declare-fun b!4144808 () Bool)

(declare-fun tp!1263334 () Bool)

(assert (=> b!4144808 (= e!2571720 (and tp!1263334 (inv!59580 (tag!8254 r!4008)) (inv!59582 (transformation!7394 r!4008)) e!2571719))))

(assert (= (and start!394186 res!1696300) b!4144802))

(assert (= (and b!4144802 res!1696303) b!4144806))

(assert (= (and b!4144806 res!1696307) b!4144803))

(assert (= (and b!4144803 res!1696301) b!4144793))

(assert (= (and b!4144793 res!1696312) b!4144795))

(assert (= (and b!4144795 res!1696311) b!4144792))

(assert (= (and b!4144792 res!1696309) b!4144798))

(assert (= (and b!4144798 res!1696302) b!4144788))

(assert (= (and b!4144788 res!1696305) b!4144807))

(assert (= (and b!4144807 res!1696308) b!4144787))

(assert (= (and b!4144787 res!1696306) b!4144796))

(assert (= (and b!4144796 (not res!1696310)) b!4144800))

(assert (= (and b!4144800 (not res!1696304)) b!4144791))

(assert (= b!4144799 b!4144801))

(assert (= b!4144804 b!4144799))

(assert (= (and start!394186 ((_ is Cons!44975) rules!3756)) b!4144804))

(assert (= (and start!394186 ((_ is Cons!44974) p!2912)) b!4144789))

(assert (= b!4144808 b!4144790))

(assert (= start!394186 b!4144808))

(assert (= (and start!394186 ((_ is Cons!44974) input!3238)) b!4144797))

(assert (= b!4144805 b!4144794))

(assert (= start!394186 b!4144805))

(declare-fun m!4740917 () Bool)

(assert (=> b!4144799 m!4740917))

(declare-fun m!4740919 () Bool)

(assert (=> b!4144799 m!4740919))

(declare-fun m!4740921 () Bool)

(assert (=> b!4144807 m!4740921))

(declare-fun m!4740923 () Bool)

(assert (=> b!4144807 m!4740923))

(declare-fun m!4740925 () Bool)

(assert (=> b!4144788 m!4740925))

(declare-fun m!4740927 () Bool)

(assert (=> b!4144798 m!4740927))

(declare-fun m!4740929 () Bool)

(assert (=> b!4144798 m!4740929))

(declare-fun m!4740931 () Bool)

(assert (=> b!4144798 m!4740931))

(declare-fun m!4740933 () Bool)

(assert (=> b!4144798 m!4740933))

(declare-fun m!4740935 () Bool)

(assert (=> b!4144798 m!4740935))

(declare-fun m!4740937 () Bool)

(assert (=> b!4144798 m!4740937))

(declare-fun m!4740939 () Bool)

(assert (=> b!4144792 m!4740939))

(declare-fun m!4740941 () Bool)

(assert (=> b!4144793 m!4740941))

(declare-fun m!4740943 () Bool)

(assert (=> b!4144791 m!4740943))

(declare-fun m!4740945 () Bool)

(assert (=> b!4144791 m!4740945))

(assert (=> b!4144791 m!4740945))

(declare-fun m!4740947 () Bool)

(assert (=> b!4144791 m!4740947))

(declare-fun m!4740949 () Bool)

(assert (=> b!4144787 m!4740949))

(declare-fun m!4740951 () Bool)

(assert (=> b!4144800 m!4740951))

(declare-fun m!4740953 () Bool)

(assert (=> b!4144800 m!4740953))

(declare-fun m!4740955 () Bool)

(assert (=> b!4144800 m!4740955))

(assert (=> b!4144800 m!4740951))

(declare-fun m!4740957 () Bool)

(assert (=> b!4144800 m!4740957))

(declare-fun m!4740959 () Bool)

(assert (=> b!4144800 m!4740959))

(declare-fun m!4740961 () Bool)

(assert (=> b!4144800 m!4740961))

(declare-fun m!4740963 () Bool)

(assert (=> b!4144795 m!4740963))

(declare-fun m!4740965 () Bool)

(assert (=> b!4144806 m!4740965))

(declare-fun m!4740967 () Bool)

(assert (=> b!4144803 m!4740967))

(declare-fun m!4740969 () Bool)

(assert (=> b!4144796 m!4740969))

(declare-fun m!4740971 () Bool)

(assert (=> b!4144796 m!4740971))

(declare-fun m!4740973 () Bool)

(assert (=> b!4144796 m!4740973))

(declare-fun m!4740975 () Bool)

(assert (=> b!4144805 m!4740975))

(declare-fun m!4740977 () Bool)

(assert (=> b!4144805 m!4740977))

(declare-fun m!4740979 () Bool)

(assert (=> b!4144808 m!4740979))

(declare-fun m!4740981 () Bool)

(assert (=> b!4144808 m!4740981))

(declare-fun m!4740983 () Bool)

(assert (=> b!4144802 m!4740983))

(check-sat (not b!4144802) b_and!322049 (not b!4144806) (not b!4144788) (not b!4144808) (not b_next!118893) (not b!4144795) (not b_next!118889) (not b!4144791) (not b!4144805) (not b!4144804) (not b_next!118891) (not b!4144803) (not b_next!118883) (not b!4144798) b_and!322059 (not b!4144807) (not b_next!118885) (not b!4144787) (not b!4144796) (not b!4144789) b_and!322055 b_and!322057 (not b_next!118887) b_and!322051 (not b!4144793) (not b!4144800) tp_is_empty!21521 (not b!4144799) b_and!322053 (not b!4144792) (not b!4144797))
(check-sat b_and!322049 (not b_next!118891) (not b_next!118883) b_and!322059 (not b_next!118885) b_and!322055 (not b_next!118893) b_and!322051 (not b_next!118889) b_and!322053 b_and!322057 (not b_next!118887))
