; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!314558 () Bool)

(assert start!314558)

(declare-fun b!3378000 () Bool)

(declare-fun b_free!88345 () Bool)

(declare-fun b_next!89049 () Bool)

(assert (=> b!3378000 (= b_free!88345 (not b_next!89049))))

(declare-fun tp!1056342 () Bool)

(declare-fun b_and!234579 () Bool)

(assert (=> b!3378000 (= tp!1056342 b_and!234579)))

(declare-fun b_free!88347 () Bool)

(declare-fun b_next!89051 () Bool)

(assert (=> b!3378000 (= b_free!88347 (not b_next!89051))))

(declare-fun tp!1056350 () Bool)

(declare-fun b_and!234581 () Bool)

(assert (=> b!3378000 (= tp!1056350 b_and!234581)))

(declare-fun b!3377988 () Bool)

(declare-fun b_free!88349 () Bool)

(declare-fun b_next!89053 () Bool)

(assert (=> b!3377988 (= b_free!88349 (not b_next!89053))))

(declare-fun tp!1056346 () Bool)

(declare-fun b_and!234583 () Bool)

(assert (=> b!3377988 (= tp!1056346 b_and!234583)))

(declare-fun b_free!88351 () Bool)

(declare-fun b_next!89055 () Bool)

(assert (=> b!3377988 (= b_free!88351 (not b_next!89055))))

(declare-fun tp!1056347 () Bool)

(declare-fun b_and!234585 () Bool)

(assert (=> b!3377988 (= tp!1056347 b_and!234585)))

(declare-fun b!3377981 () Bool)

(declare-fun b_free!88353 () Bool)

(declare-fun b_next!89057 () Bool)

(assert (=> b!3377981 (= b_free!88353 (not b_next!89057))))

(declare-fun tp!1056340 () Bool)

(declare-fun b_and!234587 () Bool)

(assert (=> b!3377981 (= tp!1056340 b_and!234587)))

(declare-fun b_free!88355 () Bool)

(declare-fun b_next!89059 () Bool)

(assert (=> b!3377981 (= b_free!88355 (not b_next!89059))))

(declare-fun tp!1056343 () Bool)

(declare-fun b_and!234589 () Bool)

(assert (=> b!3377981 (= tp!1056343 b_and!234589)))

(declare-fun b!3377971 () Bool)

(declare-fun e!2096741 () Bool)

(declare-fun e!2096727 () Bool)

(assert (=> b!3377971 (= e!2096741 e!2096727)))

(declare-fun res!1366300 () Bool)

(assert (=> b!3377971 (=> res!1366300 e!2096727)))

(declare-datatypes ((C!20432 0))(
  ( (C!20433 (val!12264 Int)) )
))
(declare-datatypes ((List!36942 0))(
  ( (Nil!36818) (Cons!36818 (h!42238 C!20432) (t!262907 List!36942)) )
))
(declare-fun lt!1146730 () List!36942)

(declare-datatypes ((IArray!22211 0))(
  ( (IArray!22212 (innerList!11163 List!36942)) )
))
(declare-datatypes ((Conc!11103 0))(
  ( (Node!11103 (left!28703 Conc!11103) (right!29033 Conc!11103) (csize!22436 Int) (cheight!11314 Int)) (Leaf!17396 (xs!14257 IArray!22211) (csize!22437 Int)) (Empty!11103) )
))
(declare-datatypes ((BalanceConc!21820 0))(
  ( (BalanceConc!21821 (c!575218 Conc!11103)) )
))
(declare-fun lt!1146728 () BalanceConc!21820)

(declare-fun lt!1146722 () List!36942)

(declare-fun list!13309 (BalanceConc!21820) List!36942)

(declare-fun ++!8993 (List!36942 List!36942) List!36942)

(assert (=> b!3377971 (= res!1366300 (not (= (list!13309 lt!1146728) (++!8993 lt!1146722 lt!1146730))))))

(declare-datatypes ((Regex!10123 0))(
  ( (ElementMatch!10123 (c!575219 C!20432)) (Concat!15717 (regOne!20758 Regex!10123) (regTwo!20758 Regex!10123)) (EmptyExpr!10123) (Star!10123 (reg!10452 Regex!10123)) (EmptyLang!10123) (Union!10123 (regOne!20759 Regex!10123) (regTwo!20759 Regex!10123)) )
))
(declare-datatypes ((List!36943 0))(
  ( (Nil!36819) (Cons!36819 (h!42239 (_ BitVec 16)) (t!262908 List!36943)) )
))
(declare-datatypes ((TokenValue!5594 0))(
  ( (FloatLiteralValue!11188 (text!39603 List!36943)) (TokenValueExt!5593 (__x!23405 Int)) (Broken!27970 (value!173308 List!36943)) (Object!5717) (End!5594) (Def!5594) (Underscore!5594) (Match!5594) (Else!5594) (Error!5594) (Case!5594) (If!5594) (Extends!5594) (Abstract!5594) (Class!5594) (Val!5594) (DelimiterValue!11188 (del!5654 List!36943)) (KeywordValue!5600 (value!173309 List!36943)) (CommentValue!11188 (value!173310 List!36943)) (WhitespaceValue!11188 (value!173311 List!36943)) (IndentationValue!5594 (value!173312 List!36943)) (String!41303) (Int32!5594) (Broken!27971 (value!173313 List!36943)) (Boolean!5595) (Unit!51921) (OperatorValue!5597 (op!5654 List!36943)) (IdentifierValue!11188 (value!173314 List!36943)) (IdentifierValue!11189 (value!173315 List!36943)) (WhitespaceValue!11189 (value!173316 List!36943)) (True!11188) (False!11188) (Broken!27972 (value!173317 List!36943)) (Broken!27973 (value!173318 List!36943)) (True!11189) (RightBrace!5594) (RightBracket!5594) (Colon!5594) (Null!5594) (Comma!5594) (LeftBracket!5594) (False!11189) (LeftBrace!5594) (ImaginaryLiteralValue!5594 (text!39604 List!36943)) (StringLiteralValue!16782 (value!173319 List!36943)) (EOFValue!5594 (value!173320 List!36943)) (IdentValue!5594 (value!173321 List!36943)) (DelimiterValue!11189 (value!173322 List!36943)) (DedentValue!5594 (value!173323 List!36943)) (NewLineValue!5594 (value!173324 List!36943)) (IntegerValue!16782 (value!173325 (_ BitVec 32)) (text!39605 List!36943)) (IntegerValue!16783 (value!173326 Int) (text!39606 List!36943)) (Times!5594) (Or!5594) (Equal!5594) (Minus!5594) (Broken!27974 (value!173327 List!36943)) (And!5594) (Div!5594) (LessEqual!5594) (Mod!5594) (Concat!15718) (Not!5594) (Plus!5594) (SpaceValue!5594 (value!173328 List!36943)) (IntegerValue!16784 (value!173329 Int) (text!39607 List!36943)) (StringLiteralValue!16783 (text!39608 List!36943)) (FloatLiteralValue!11189 (text!39609 List!36943)) (BytesLiteralValue!5594 (value!173330 List!36943)) (CommentValue!11189 (value!173331 List!36943)) (StringLiteralValue!16784 (value!173332 List!36943)) (ErrorTokenValue!5594 (msg!5655 List!36943)) )
))
(declare-datatypes ((String!41304 0))(
  ( (String!41305 (value!173333 String)) )
))
(declare-datatypes ((TokenValueInjection!10616 0))(
  ( (TokenValueInjection!10617 (toValue!7548 Int) (toChars!7407 Int)) )
))
(declare-datatypes ((Rule!10528 0))(
  ( (Rule!10529 (regex!5364 Regex!10123) (tag!5934 String!41304) (isSeparator!5364 Bool) (transformation!5364 TokenValueInjection!10616)) )
))
(declare-datatypes ((Token!10094 0))(
  ( (Token!10095 (value!173334 TokenValue!5594) (rule!7910 Rule!10528) (size!27862 Int) (originalCharacters!6078 List!36942)) )
))
(declare-fun separatorToken!241 () Token!10094)

(declare-fun charsOf!3378 (Token!10094) BalanceConc!21820)

(assert (=> b!3377971 (= lt!1146730 (list!13309 (charsOf!3378 separatorToken!241)))))

(declare-datatypes ((LexerInterface!4953 0))(
  ( (LexerInterfaceExt!4950 (__x!23406 Int)) (Lexer!4951) )
))
(declare-fun thiss!18206 () LexerInterface!4953)

(declare-datatypes ((List!36944 0))(
  ( (Nil!36820) (Cons!36820 (h!42240 Token!10094) (t!262909 List!36944)) )
))
(declare-datatypes ((IArray!22213 0))(
  ( (IArray!22214 (innerList!11164 List!36944)) )
))
(declare-datatypes ((Conc!11104 0))(
  ( (Node!11104 (left!28704 Conc!11104) (right!29034 Conc!11104) (csize!22438 Int) (cheight!11315 Int)) (Leaf!17397 (xs!14258 IArray!22213) (csize!22439 Int)) (Empty!11104) )
))
(declare-datatypes ((BalanceConc!21822 0))(
  ( (BalanceConc!21823 (c!575220 Conc!11104)) )
))
(declare-fun lt!1146718 () BalanceConc!21822)

(declare-fun printWithSeparatorToken!144 (LexerInterface!4953 BalanceConc!21822 Token!10094) BalanceConc!21820)

(assert (=> b!3377971 (= lt!1146728 (printWithSeparatorToken!144 thiss!18206 lt!1146718 separatorToken!241))))

(declare-fun tp!1056345 () Bool)

(declare-fun e!2096722 () Bool)

(declare-fun e!2096724 () Bool)

(declare-fun b!3377972 () Bool)

(declare-fun inv!49885 (String!41304) Bool)

(declare-fun inv!49888 (TokenValueInjection!10616) Bool)

(assert (=> b!3377972 (= e!2096724 (and tp!1056345 (inv!49885 (tag!5934 (rule!7910 separatorToken!241))) (inv!49888 (transformation!5364 (rule!7910 separatorToken!241))) e!2096722))))

(declare-fun b!3377973 () Bool)

(declare-fun res!1366316 () Bool)

(declare-fun e!2096717 () Bool)

(assert (=> b!3377973 (=> (not res!1366316) (not e!2096717))))

(declare-fun tokens!494 () List!36944)

(declare-fun lambda!120405 () Int)

(declare-fun forall!7741 (List!36944 Int) Bool)

(assert (=> b!3377973 (= res!1366316 (forall!7741 tokens!494 lambda!120405))))

(declare-fun b!3377974 () Bool)

(declare-datatypes ((Unit!51922 0))(
  ( (Unit!51923) )
))
(declare-fun e!2096739 () Unit!51922)

(declare-fun Unit!51924 () Unit!51922)

(assert (=> b!3377974 (= e!2096739 Unit!51924)))

(declare-fun b!3377975 () Bool)

(declare-fun res!1366318 () Bool)

(assert (=> b!3377975 (=> (not res!1366318) (not e!2096717))))

(declare-datatypes ((List!36945 0))(
  ( (Nil!36821) (Cons!36821 (h!42241 Rule!10528) (t!262910 List!36945)) )
))
(declare-fun rules!2135 () List!36945)

(declare-fun sepAndNonSepRulesDisjointChars!1558 (List!36945 List!36945) Bool)

(assert (=> b!3377975 (= res!1366318 (sepAndNonSepRulesDisjointChars!1558 rules!2135 rules!2135))))

(declare-fun b!3377976 () Bool)

(declare-fun e!2096716 () Bool)

(declare-fun e!2096725 () Bool)

(assert (=> b!3377976 (= e!2096716 e!2096725)))

(declare-fun res!1366305 () Bool)

(assert (=> b!3377976 (=> res!1366305 e!2096725)))

(declare-fun lt!1146727 () BalanceConc!21820)

(declare-fun isEmpty!21043 (BalanceConc!21822) Bool)

(declare-datatypes ((tuple2!36388 0))(
  ( (tuple2!36389 (_1!21328 BalanceConc!21822) (_2!21328 BalanceConc!21820)) )
))
(declare-fun lex!2279 (LexerInterface!4953 List!36945 BalanceConc!21820) tuple2!36388)

(assert (=> b!3377976 (= res!1366305 (isEmpty!21043 (_1!21328 (lex!2279 thiss!18206 rules!2135 lt!1146727))))))

(declare-fun seqFromList!3781 (List!36942) BalanceConc!21820)

(assert (=> b!3377976 (= lt!1146727 (seqFromList!3781 lt!1146722))))

(declare-fun b!3377977 () Bool)

(declare-fun res!1366304 () Bool)

(declare-fun e!2096728 () Bool)

(assert (=> b!3377977 (=> (not res!1366304) (not e!2096728))))

(declare-fun isEmpty!21044 (List!36945) Bool)

(assert (=> b!3377977 (= res!1366304 (not (isEmpty!21044 rules!2135)))))

(declare-fun b!3377978 () Bool)

(declare-fun e!2096738 () Bool)

(assert (=> b!3377978 (= e!2096717 (not e!2096738))))

(declare-fun res!1366306 () Bool)

(assert (=> b!3377978 (=> res!1366306 e!2096738)))

(declare-fun lt!1146710 () List!36942)

(declare-fun lt!1146719 () List!36942)

(assert (=> b!3377978 (= res!1366306 (not (= lt!1146710 lt!1146719)))))

(declare-fun printList!1501 (LexerInterface!4953 List!36944) List!36942)

(assert (=> b!3377978 (= lt!1146719 (printList!1501 thiss!18206 (Cons!36820 (h!42240 tokens!494) Nil!36820)))))

(declare-fun lt!1146721 () BalanceConc!21820)

(assert (=> b!3377978 (= lt!1146710 (list!13309 lt!1146721))))

(declare-fun lt!1146729 () BalanceConc!21822)

(declare-fun printTailRec!1448 (LexerInterface!4953 BalanceConc!21822 Int BalanceConc!21820) BalanceConc!21820)

(assert (=> b!3377978 (= lt!1146721 (printTailRec!1448 thiss!18206 lt!1146729 0 (BalanceConc!21821 Empty!11103)))))

(declare-fun print!2018 (LexerInterface!4953 BalanceConc!21822) BalanceConc!21820)

(assert (=> b!3377978 (= lt!1146721 (print!2018 thiss!18206 lt!1146729))))

(declare-fun singletonSeq!2460 (Token!10094) BalanceConc!21822)

(assert (=> b!3377978 (= lt!1146729 (singletonSeq!2460 (h!42240 tokens!494)))))

(declare-fun b!3377979 () Bool)

(declare-fun e!2096726 () Bool)

(declare-fun contains!6718 (List!36945 Rule!10528) Bool)

(assert (=> b!3377979 (= e!2096726 (contains!6718 rules!2135 (rule!7910 (h!42240 tokens!494))))))

(declare-fun e!2096720 () Bool)

(declare-fun b!3377980 () Bool)

(declare-fun tp!1056348 () Bool)

(declare-fun inv!21 (TokenValue!5594) Bool)

(assert (=> b!3377980 (= e!2096720 (and (inv!21 (value!173334 separatorToken!241)) e!2096724 tp!1056348))))

(declare-fun e!2096735 () Bool)

(assert (=> b!3377981 (= e!2096735 (and tp!1056340 tp!1056343))))

(declare-fun b!3377982 () Bool)

(declare-fun e!2096719 () Bool)

(declare-fun lt!1146720 () Rule!10528)

(assert (=> b!3377982 (= e!2096719 (= (rule!7910 separatorToken!241) lt!1146720))))

(declare-fun b!3377983 () Bool)

(declare-fun e!2096731 () Bool)

(declare-fun lt!1146726 () Rule!10528)

(assert (=> b!3377983 (= e!2096731 (= (rule!7910 (h!42240 tokens!494)) lt!1146726))))

(declare-fun b!3377984 () Bool)

(declare-fun e!2096732 () Bool)

(assert (=> b!3377984 (= e!2096732 false)))

(declare-fun b!3377986 () Bool)

(declare-fun res!1366308 () Bool)

(assert (=> b!3377986 (=> (not res!1366308) (not e!2096717))))

(get-info :version)

(assert (=> b!3377986 (= res!1366308 (and (not ((_ is Nil!36820) tokens!494)) ((_ is Nil!36820) (t!262909 tokens!494))))))

(declare-fun b!3377987 () Bool)

(assert (=> b!3377987 (= e!2096738 e!2096716)))

(declare-fun res!1366299 () Bool)

(assert (=> b!3377987 (=> res!1366299 e!2096716)))

(assert (=> b!3377987 (= res!1366299 (or (not (= lt!1146719 lt!1146722)) (not (= lt!1146710 lt!1146722))))))

(assert (=> b!3377987 (= lt!1146722 (list!13309 (charsOf!3378 (h!42240 tokens!494))))))

(assert (=> b!3377988 (= e!2096722 (and tp!1056346 tp!1056347))))

(declare-fun b!3377989 () Bool)

(declare-fun e!2096721 () Bool)

(declare-fun e!2096740 () Bool)

(declare-fun tp!1056352 () Bool)

(assert (=> b!3377989 (= e!2096721 (and (inv!21 (value!173334 (h!42240 tokens!494))) e!2096740 tp!1056352))))

(declare-fun b!3377990 () Bool)

(declare-fun res!1366315 () Bool)

(assert (=> b!3377990 (=> (not res!1366315) (not e!2096717))))

(assert (=> b!3377990 (= res!1366315 (isSeparator!5364 (rule!7910 separatorToken!241)))))

(declare-fun b!3377991 () Bool)

(assert (=> b!3377991 (= e!2096725 e!2096741)))

(declare-fun res!1366297 () Bool)

(assert (=> b!3377991 (=> res!1366297 e!2096741)))

(assert (=> b!3377991 (= res!1366297 (isSeparator!5364 (rule!7910 (h!42240 tokens!494))))))

(declare-fun lt!1146708 () Unit!51922)

(declare-fun forallContained!1311 (List!36944 Int Token!10094) Unit!51922)

(assert (=> b!3377991 (= lt!1146708 (forallContained!1311 tokens!494 lambda!120405 (h!42240 tokens!494)))))

(declare-fun e!2096737 () Bool)

(declare-fun b!3377992 () Bool)

(declare-fun tp!1056349 () Bool)

(declare-fun inv!49889 (Token!10094) Bool)

(assert (=> b!3377992 (= e!2096737 (and (inv!49889 (h!42240 tokens!494)) e!2096721 tp!1056349))))

(declare-fun b!3377993 () Bool)

(assert (=> b!3377993 (= e!2096727 e!2096726)))

(declare-fun res!1366311 () Bool)

(assert (=> b!3377993 (=> res!1366311 e!2096726)))

(declare-fun lt!1146715 () Bool)

(assert (=> b!3377993 (= res!1366311 lt!1146715)))

(declare-fun lt!1146711 () Unit!51922)

(assert (=> b!3377993 (= lt!1146711 e!2096739)))

(declare-fun c!575217 () Bool)

(assert (=> b!3377993 (= c!575217 lt!1146715)))

(declare-fun lt!1146717 () C!20432)

(declare-fun contains!6719 (List!36942 C!20432) Bool)

(declare-fun usedCharacters!620 (Regex!10123) List!36942)

(assert (=> b!3377993 (= lt!1146715 (not (contains!6719 (usedCharacters!620 (regex!5364 (rule!7910 separatorToken!241))) lt!1146717)))))

(declare-fun head!7209 (List!36942) C!20432)

(assert (=> b!3377993 (= lt!1146717 (head!7209 lt!1146730))))

(declare-datatypes ((tuple2!36390 0))(
  ( (tuple2!36391 (_1!21329 Token!10094) (_2!21329 List!36942)) )
))
(declare-datatypes ((Option!7375 0))(
  ( (None!7374) (Some!7374 (v!36432 tuple2!36390)) )
))
(declare-fun maxPrefixOneRule!1676 (LexerInterface!4953 Rule!10528 List!36942) Option!7375)

(declare-fun apply!8551 (TokenValueInjection!10616 BalanceConc!21820) TokenValue!5594)

(declare-fun size!27863 (List!36942) Int)

(assert (=> b!3377993 (= (maxPrefixOneRule!1676 thiss!18206 (rule!7910 (h!42240 tokens!494)) lt!1146722) (Some!7374 (tuple2!36391 (Token!10095 (apply!8551 (transformation!5364 (rule!7910 (h!42240 tokens!494))) lt!1146727) (rule!7910 (h!42240 tokens!494)) (size!27863 lt!1146722) lt!1146722) Nil!36818)))))

(declare-fun lt!1146725 () Unit!51922)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!775 (LexerInterface!4953 List!36945 List!36942 List!36942 List!36942 Rule!10528) Unit!51922)

(assert (=> b!3377993 (= lt!1146725 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!775 thiss!18206 rules!2135 lt!1146722 lt!1146722 Nil!36818 (rule!7910 (h!42240 tokens!494))))))

(declare-fun e!2096730 () Bool)

(assert (=> b!3377993 e!2096730))

(declare-fun res!1366303 () Bool)

(assert (=> b!3377993 (=> (not res!1366303) (not e!2096730))))

(declare-datatypes ((Option!7376 0))(
  ( (None!7375) (Some!7375 (v!36433 Rule!10528)) )
))
(declare-fun lt!1146723 () Option!7376)

(declare-fun isDefined!5702 (Option!7376) Bool)

(assert (=> b!3377993 (= res!1366303 (isDefined!5702 lt!1146723))))

(declare-fun getRuleFromTag!1019 (LexerInterface!4953 List!36945 String!41304) Option!7376)

(assert (=> b!3377993 (= lt!1146723 (getRuleFromTag!1019 thiss!18206 rules!2135 (tag!5934 (rule!7910 separatorToken!241))))))

(declare-fun lt!1146714 () Unit!51922)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1019 (LexerInterface!4953 List!36945 List!36942 Token!10094) Unit!51922)

(assert (=> b!3377993 (= lt!1146714 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1019 thiss!18206 rules!2135 lt!1146730 separatorToken!241))))

(declare-fun e!2096715 () Bool)

(assert (=> b!3377993 e!2096715))

(declare-fun res!1366310 () Bool)

(assert (=> b!3377993 (=> (not res!1366310) (not e!2096715))))

(declare-fun lt!1146713 () Option!7376)

(assert (=> b!3377993 (= res!1366310 (isDefined!5702 lt!1146713))))

(assert (=> b!3377993 (= lt!1146713 (getRuleFromTag!1019 thiss!18206 rules!2135 (tag!5934 (rule!7910 (h!42240 tokens!494)))))))

(declare-fun lt!1146709 () Unit!51922)

(assert (=> b!3377993 (= lt!1146709 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1019 thiss!18206 rules!2135 lt!1146722 (h!42240 tokens!494)))))

(declare-fun lt!1146724 () Unit!51922)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!948 (LexerInterface!4953 List!36945 List!36944 Token!10094) Unit!51922)

(assert (=> b!3377993 (= lt!1146724 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!948 thiss!18206 rules!2135 tokens!494 (h!42240 tokens!494)))))

(declare-fun isEmpty!21045 (List!36942) Bool)

(declare-fun getSuffix!1458 (List!36942 List!36942) List!36942)

(assert (=> b!3377993 (isEmpty!21045 (getSuffix!1458 lt!1146722 lt!1146722))))

(declare-fun lt!1146712 () Unit!51922)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!116 (List!36942) Unit!51922)

(assert (=> b!3377993 (= lt!1146712 (lemmaGetSuffixOnListWithItSelfIsEmpty!116 lt!1146722))))

(declare-fun b!3377994 () Bool)

(declare-fun res!1366314 () Bool)

(assert (=> b!3377994 (=> (not res!1366314) (not e!2096728))))

(declare-fun rulesInvariant!4350 (LexerInterface!4953 List!36945) Bool)

(assert (=> b!3377994 (= res!1366314 (rulesInvariant!4350 thiss!18206 rules!2135))))

(declare-fun b!3377995 () Bool)

(declare-fun e!2096734 () Bool)

(declare-fun e!2096714 () Bool)

(declare-fun tp!1056351 () Bool)

(assert (=> b!3377995 (= e!2096734 (and e!2096714 tp!1056351))))

(declare-fun b!3377996 () Bool)

(declare-fun res!1366313 () Bool)

(assert (=> b!3377996 (=> res!1366313 e!2096726)))

(assert (=> b!3377996 (= res!1366313 (not (contains!6718 rules!2135 (rule!7910 separatorToken!241))))))

(declare-fun b!3377997 () Bool)

(declare-fun res!1366298 () Bool)

(assert (=> b!3377997 (=> (not res!1366298) (not e!2096717))))

(declare-fun rulesProduceIndividualToken!2445 (LexerInterface!4953 List!36945 Token!10094) Bool)

(assert (=> b!3377997 (= res!1366298 (rulesProduceIndividualToken!2445 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3377998 () Bool)

(assert (=> b!3377998 (= e!2096730 e!2096719)))

(declare-fun res!1366307 () Bool)

(assert (=> b!3377998 (=> (not res!1366307) (not e!2096719))))

(declare-fun matchR!4715 (Regex!10123 List!36942) Bool)

(assert (=> b!3377998 (= res!1366307 (matchR!4715 (regex!5364 lt!1146720) lt!1146730))))

(declare-fun get!11747 (Option!7376) Rule!10528)

(assert (=> b!3377998 (= lt!1146720 (get!11747 lt!1146723))))

(declare-fun b!3377999 () Bool)

(assert (=> b!3377999 (= e!2096715 e!2096731)))

(declare-fun res!1366317 () Bool)

(assert (=> b!3377999 (=> (not res!1366317) (not e!2096731))))

(assert (=> b!3377999 (= res!1366317 (matchR!4715 (regex!5364 lt!1146726) lt!1146722))))

(assert (=> b!3377999 (= lt!1146726 (get!11747 lt!1146713))))

(declare-fun e!2096723 () Bool)

(assert (=> b!3378000 (= e!2096723 (and tp!1056342 tp!1056350))))

(declare-fun b!3378001 () Bool)

(assert (=> b!3378001 (= e!2096728 e!2096717)))

(declare-fun res!1366301 () Bool)

(assert (=> b!3378001 (=> (not res!1366301) (not e!2096717))))

(declare-fun rulesProduceEachTokenIndividually!1404 (LexerInterface!4953 List!36945 BalanceConc!21822) Bool)

(assert (=> b!3378001 (= res!1366301 (rulesProduceEachTokenIndividually!1404 thiss!18206 rules!2135 lt!1146718))))

(declare-fun seqFromList!3782 (List!36944) BalanceConc!21822)

(assert (=> b!3378001 (= lt!1146718 (seqFromList!3782 tokens!494))))

(declare-fun tp!1056341 () Bool)

(declare-fun b!3378002 () Bool)

(assert (=> b!3378002 (= e!2096714 (and tp!1056341 (inv!49885 (tag!5934 (h!42241 rules!2135))) (inv!49888 (transformation!5364 (h!42241 rules!2135))) e!2096735))))

(declare-fun b!3378003 () Bool)

(declare-fun tp!1056344 () Bool)

(assert (=> b!3378003 (= e!2096740 (and tp!1056344 (inv!49885 (tag!5934 (rule!7910 (h!42240 tokens!494)))) (inv!49888 (transformation!5364 (rule!7910 (h!42240 tokens!494)))) e!2096723))))

(declare-fun b!3378004 () Bool)

(declare-fun Unit!51925 () Unit!51922)

(assert (=> b!3378004 (= e!2096739 Unit!51925)))

(declare-fun lt!1146716 () Unit!51922)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!454 (Regex!10123 List!36942 C!20432) Unit!51922)

(assert (=> b!3378004 (= lt!1146716 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!454 (regex!5364 (rule!7910 separatorToken!241)) lt!1146730 lt!1146717))))

(declare-fun res!1366309 () Bool)

(assert (=> b!3378004 (= res!1366309 (not (matchR!4715 (regex!5364 (rule!7910 separatorToken!241)) lt!1146730)))))

(assert (=> b!3378004 (=> (not res!1366309) (not e!2096732))))

(assert (=> b!3378004 e!2096732))

(declare-fun b!3377985 () Bool)

(declare-fun res!1366302 () Bool)

(assert (=> b!3377985 (=> res!1366302 e!2096716)))

(assert (=> b!3377985 (= res!1366302 (not (rulesProduceIndividualToken!2445 thiss!18206 rules!2135 (h!42240 tokens!494))))))

(declare-fun res!1366312 () Bool)

(assert (=> start!314558 (=> (not res!1366312) (not e!2096728))))

(assert (=> start!314558 (= res!1366312 ((_ is Lexer!4951) thiss!18206))))

(assert (=> start!314558 e!2096728))

(assert (=> start!314558 true))

(assert (=> start!314558 e!2096734))

(assert (=> start!314558 (and (inv!49889 separatorToken!241) e!2096720)))

(assert (=> start!314558 e!2096737))

(assert (= (and start!314558 res!1366312) b!3377977))

(assert (= (and b!3377977 res!1366304) b!3377994))

(assert (= (and b!3377994 res!1366314) b!3378001))

(assert (= (and b!3378001 res!1366301) b!3377997))

(assert (= (and b!3377997 res!1366298) b!3377990))

(assert (= (and b!3377990 res!1366315) b!3377973))

(assert (= (and b!3377973 res!1366316) b!3377975))

(assert (= (and b!3377975 res!1366318) b!3377986))

(assert (= (and b!3377986 res!1366308) b!3377978))

(assert (= (and b!3377978 (not res!1366306)) b!3377987))

(assert (= (and b!3377987 (not res!1366299)) b!3377985))

(assert (= (and b!3377985 (not res!1366302)) b!3377976))

(assert (= (and b!3377976 (not res!1366305)) b!3377991))

(assert (= (and b!3377991 (not res!1366297)) b!3377971))

(assert (= (and b!3377971 (not res!1366300)) b!3377993))

(assert (= (and b!3377993 res!1366310) b!3377999))

(assert (= (and b!3377999 res!1366317) b!3377983))

(assert (= (and b!3377993 res!1366303) b!3377998))

(assert (= (and b!3377998 res!1366307) b!3377982))

(assert (= (and b!3377993 c!575217) b!3378004))

(assert (= (and b!3377993 (not c!575217)) b!3377974))

(assert (= (and b!3378004 res!1366309) b!3377984))

(assert (= (and b!3377993 (not res!1366311)) b!3377996))

(assert (= (and b!3377996 (not res!1366313)) b!3377979))

(assert (= b!3378002 b!3377981))

(assert (= b!3377995 b!3378002))

(assert (= (and start!314558 ((_ is Cons!36821) rules!2135)) b!3377995))

(assert (= b!3377972 b!3377988))

(assert (= b!3377980 b!3377972))

(assert (= start!314558 b!3377980))

(assert (= b!3378003 b!3378000))

(assert (= b!3377989 b!3378003))

(assert (= b!3377992 b!3377989))

(assert (= (and start!314558 ((_ is Cons!36820) tokens!494)) b!3377992))

(declare-fun m!3741663 () Bool)

(assert (=> b!3377989 m!3741663))

(declare-fun m!3741665 () Bool)

(assert (=> b!3377972 m!3741665))

(declare-fun m!3741667 () Bool)

(assert (=> b!3377972 m!3741667))

(declare-fun m!3741669 () Bool)

(assert (=> b!3377978 m!3741669))

(declare-fun m!3741671 () Bool)

(assert (=> b!3377978 m!3741671))

(declare-fun m!3741673 () Bool)

(assert (=> b!3377978 m!3741673))

(declare-fun m!3741675 () Bool)

(assert (=> b!3377978 m!3741675))

(declare-fun m!3741677 () Bool)

(assert (=> b!3377978 m!3741677))

(declare-fun m!3741679 () Bool)

(assert (=> b!3377975 m!3741679))

(declare-fun m!3741681 () Bool)

(assert (=> b!3378004 m!3741681))

(declare-fun m!3741683 () Bool)

(assert (=> b!3378004 m!3741683))

(declare-fun m!3741685 () Bool)

(assert (=> b!3378002 m!3741685))

(declare-fun m!3741687 () Bool)

(assert (=> b!3378002 m!3741687))

(declare-fun m!3741689 () Bool)

(assert (=> b!3377973 m!3741689))

(declare-fun m!3741691 () Bool)

(assert (=> b!3377987 m!3741691))

(assert (=> b!3377987 m!3741691))

(declare-fun m!3741693 () Bool)

(assert (=> b!3377987 m!3741693))

(declare-fun m!3741695 () Bool)

(assert (=> b!3377971 m!3741695))

(declare-fun m!3741697 () Bool)

(assert (=> b!3377971 m!3741697))

(declare-fun m!3741699 () Bool)

(assert (=> b!3377971 m!3741699))

(declare-fun m!3741701 () Bool)

(assert (=> b!3377971 m!3741701))

(assert (=> b!3377971 m!3741695))

(declare-fun m!3741703 () Bool)

(assert (=> b!3377971 m!3741703))

(declare-fun m!3741705 () Bool)

(assert (=> b!3377979 m!3741705))

(declare-fun m!3741707 () Bool)

(assert (=> b!3377985 m!3741707))

(declare-fun m!3741709 () Bool)

(assert (=> start!314558 m!3741709))

(declare-fun m!3741711 () Bool)

(assert (=> b!3377991 m!3741711))

(declare-fun m!3741713 () Bool)

(assert (=> b!3378003 m!3741713))

(declare-fun m!3741715 () Bool)

(assert (=> b!3378003 m!3741715))

(declare-fun m!3741717 () Bool)

(assert (=> b!3377980 m!3741717))

(declare-fun m!3741719 () Bool)

(assert (=> b!3377976 m!3741719))

(declare-fun m!3741721 () Bool)

(assert (=> b!3377976 m!3741721))

(declare-fun m!3741723 () Bool)

(assert (=> b!3377976 m!3741723))

(declare-fun m!3741725 () Bool)

(assert (=> b!3377977 m!3741725))

(declare-fun m!3741727 () Bool)

(assert (=> b!3377994 m!3741727))

(declare-fun m!3741729 () Bool)

(assert (=> b!3378001 m!3741729))

(declare-fun m!3741731 () Bool)

(assert (=> b!3378001 m!3741731))

(declare-fun m!3741733 () Bool)

(assert (=> b!3377997 m!3741733))

(declare-fun m!3741735 () Bool)

(assert (=> b!3377998 m!3741735))

(declare-fun m!3741737 () Bool)

(assert (=> b!3377998 m!3741737))

(declare-fun m!3741739 () Bool)

(assert (=> b!3377993 m!3741739))

(declare-fun m!3741741 () Bool)

(assert (=> b!3377993 m!3741741))

(declare-fun m!3741743 () Bool)

(assert (=> b!3377993 m!3741743))

(declare-fun m!3741745 () Bool)

(assert (=> b!3377993 m!3741745))

(declare-fun m!3741747 () Bool)

(assert (=> b!3377993 m!3741747))

(declare-fun m!3741749 () Bool)

(assert (=> b!3377993 m!3741749))

(declare-fun m!3741751 () Bool)

(assert (=> b!3377993 m!3741751))

(declare-fun m!3741753 () Bool)

(assert (=> b!3377993 m!3741753))

(declare-fun m!3741755 () Bool)

(assert (=> b!3377993 m!3741755))

(declare-fun m!3741757 () Bool)

(assert (=> b!3377993 m!3741757))

(assert (=> b!3377993 m!3741755))

(declare-fun m!3741759 () Bool)

(assert (=> b!3377993 m!3741759))

(declare-fun m!3741761 () Bool)

(assert (=> b!3377993 m!3741761))

(declare-fun m!3741763 () Bool)

(assert (=> b!3377993 m!3741763))

(declare-fun m!3741765 () Bool)

(assert (=> b!3377993 m!3741765))

(declare-fun m!3741767 () Bool)

(assert (=> b!3377993 m!3741767))

(assert (=> b!3377993 m!3741763))

(declare-fun m!3741769 () Bool)

(assert (=> b!3377993 m!3741769))

(declare-fun m!3741771 () Bool)

(assert (=> b!3377993 m!3741771))

(declare-fun m!3741773 () Bool)

(assert (=> b!3377996 m!3741773))

(declare-fun m!3741775 () Bool)

(assert (=> b!3377999 m!3741775))

(declare-fun m!3741777 () Bool)

(assert (=> b!3377999 m!3741777))

(declare-fun m!3741779 () Bool)

(assert (=> b!3377992 m!3741779))

(check-sat (not b!3377971) (not b!3377985) (not b!3377992) (not b_next!89059) (not b!3378003) (not b!3377993) (not b!3377975) (not b_next!89055) (not b_next!89053) (not b!3378004) (not b!3377994) (not b!3377978) (not b!3377976) (not b!3377977) (not b!3377995) b_and!234589 (not b!3378002) (not start!314558) (not b_next!89051) (not b!3377973) b_and!234581 (not b!3377996) (not b!3377999) (not b!3377991) (not b!3377980) b_and!234583 (not b!3377998) b_and!234585 (not b!3377979) (not b_next!89057) b_and!234587 (not b!3377987) (not b!3377997) (not b_next!89049) (not b!3378001) (not b!3377989) (not b!3377972) b_and!234579)
(check-sat b_and!234589 (not b_next!89051) (not b_next!89059) b_and!234581 b_and!234583 (not b_next!89055) (not b_next!89053) (not b_next!89049) b_and!234579 b_and!234585 (not b_next!89057) b_and!234587)
(get-model)

(declare-fun b!3378127 () Bool)

(declare-fun res!1366404 () Bool)

(declare-fun e!2096818 () Bool)

(assert (=> b!3378127 (=> res!1366404 e!2096818)))

(declare-fun e!2096817 () Bool)

(assert (=> b!3378127 (= res!1366404 e!2096817)))

(declare-fun res!1366399 () Bool)

(assert (=> b!3378127 (=> (not res!1366399) (not e!2096817))))

(declare-fun lt!1146746 () Bool)

(assert (=> b!3378127 (= res!1366399 lt!1146746)))

(declare-fun b!3378128 () Bool)

(declare-fun res!1366400 () Bool)

(assert (=> b!3378128 (=> (not res!1366400) (not e!2096817))))

(declare-fun tail!5343 (List!36942) List!36942)

(assert (=> b!3378128 (= res!1366400 (isEmpty!21045 (tail!5343 lt!1146722)))))

(declare-fun b!3378129 () Bool)

(declare-fun e!2096819 () Bool)

(declare-fun e!2096820 () Bool)

(assert (=> b!3378129 (= e!2096819 e!2096820)))

(declare-fun res!1366403 () Bool)

(assert (=> b!3378129 (=> res!1366403 e!2096820)))

(declare-fun call!244408 () Bool)

(assert (=> b!3378129 (= res!1366403 call!244408)))

(declare-fun b!3378130 () Bool)

(declare-fun e!2096821 () Bool)

(declare-fun derivativeStep!2999 (Regex!10123 C!20432) Regex!10123)

(assert (=> b!3378130 (= e!2096821 (matchR!4715 (derivativeStep!2999 (regex!5364 lt!1146726) (head!7209 lt!1146722)) (tail!5343 lt!1146722)))))

(declare-fun b!3378131 () Bool)

(declare-fun e!2096816 () Bool)

(assert (=> b!3378131 (= e!2096816 (= lt!1146746 call!244408))))

(declare-fun b!3378132 () Bool)

(declare-fun res!1366401 () Bool)

(assert (=> b!3378132 (=> (not res!1366401) (not e!2096817))))

(assert (=> b!3378132 (= res!1366401 (not call!244408))))

(declare-fun b!3378133 () Bool)

(declare-fun e!2096822 () Bool)

(assert (=> b!3378133 (= e!2096816 e!2096822)))

(declare-fun c!575246 () Bool)

(assert (=> b!3378133 (= c!575246 ((_ is EmptyLang!10123) (regex!5364 lt!1146726)))))

(declare-fun b!3378134 () Bool)

(declare-fun nullable!3446 (Regex!10123) Bool)

(assert (=> b!3378134 (= e!2096821 (nullable!3446 (regex!5364 lt!1146726)))))

(declare-fun d!958403 () Bool)

(assert (=> d!958403 e!2096816))

(declare-fun c!575244 () Bool)

(assert (=> d!958403 (= c!575244 ((_ is EmptyExpr!10123) (regex!5364 lt!1146726)))))

(assert (=> d!958403 (= lt!1146746 e!2096821)))

(declare-fun c!575245 () Bool)

(assert (=> d!958403 (= c!575245 (isEmpty!21045 lt!1146722))))

(declare-fun validRegex!4602 (Regex!10123) Bool)

(assert (=> d!958403 (validRegex!4602 (regex!5364 lt!1146726))))

(assert (=> d!958403 (= (matchR!4715 (regex!5364 lt!1146726) lt!1146722) lt!1146746)))

(declare-fun b!3378135 () Bool)

(declare-fun res!1366405 () Bool)

(assert (=> b!3378135 (=> res!1366405 e!2096820)))

(assert (=> b!3378135 (= res!1366405 (not (isEmpty!21045 (tail!5343 lt!1146722))))))

(declare-fun b!3378136 () Bool)

(assert (=> b!3378136 (= e!2096818 e!2096819)))

(declare-fun res!1366406 () Bool)

(assert (=> b!3378136 (=> (not res!1366406) (not e!2096819))))

(assert (=> b!3378136 (= res!1366406 (not lt!1146746))))

(declare-fun b!3378137 () Bool)

(assert (=> b!3378137 (= e!2096817 (= (head!7209 lt!1146722) (c!575219 (regex!5364 lt!1146726))))))

(declare-fun b!3378138 () Bool)

(declare-fun res!1366402 () Bool)

(assert (=> b!3378138 (=> res!1366402 e!2096818)))

(assert (=> b!3378138 (= res!1366402 (not ((_ is ElementMatch!10123) (regex!5364 lt!1146726))))))

(assert (=> b!3378138 (= e!2096822 e!2096818)))

(declare-fun b!3378139 () Bool)

(assert (=> b!3378139 (= e!2096820 (not (= (head!7209 lt!1146722) (c!575219 (regex!5364 lt!1146726)))))))

(declare-fun bm!244403 () Bool)

(assert (=> bm!244403 (= call!244408 (isEmpty!21045 lt!1146722))))

(declare-fun b!3378140 () Bool)

(assert (=> b!3378140 (= e!2096822 (not lt!1146746))))

(assert (= (and d!958403 c!575245) b!3378134))

(assert (= (and d!958403 (not c!575245)) b!3378130))

(assert (= (and d!958403 c!575244) b!3378131))

(assert (= (and d!958403 (not c!575244)) b!3378133))

(assert (= (and b!3378133 c!575246) b!3378140))

(assert (= (and b!3378133 (not c!575246)) b!3378138))

(assert (= (and b!3378138 (not res!1366402)) b!3378127))

(assert (= (and b!3378127 res!1366399) b!3378132))

(assert (= (and b!3378132 res!1366401) b!3378128))

(assert (= (and b!3378128 res!1366400) b!3378137))

(assert (= (and b!3378127 (not res!1366404)) b!3378136))

(assert (= (and b!3378136 res!1366406) b!3378129))

(assert (= (and b!3378129 (not res!1366403)) b!3378135))

(assert (= (and b!3378135 (not res!1366405)) b!3378139))

(assert (= (or b!3378131 b!3378129 b!3378132) bm!244403))

(declare-fun m!3741865 () Bool)

(assert (=> b!3378139 m!3741865))

(declare-fun m!3741867 () Bool)

(assert (=> b!3378134 m!3741867))

(assert (=> b!3378130 m!3741865))

(assert (=> b!3378130 m!3741865))

(declare-fun m!3741869 () Bool)

(assert (=> b!3378130 m!3741869))

(declare-fun m!3741871 () Bool)

(assert (=> b!3378130 m!3741871))

(assert (=> b!3378130 m!3741869))

(assert (=> b!3378130 m!3741871))

(declare-fun m!3741873 () Bool)

(assert (=> b!3378130 m!3741873))

(declare-fun m!3741875 () Bool)

(assert (=> bm!244403 m!3741875))

(assert (=> b!3378137 m!3741865))

(assert (=> d!958403 m!3741875))

(declare-fun m!3741877 () Bool)

(assert (=> d!958403 m!3741877))

(assert (=> b!3378135 m!3741871))

(assert (=> b!3378135 m!3741871))

(declare-fun m!3741879 () Bool)

(assert (=> b!3378135 m!3741879))

(assert (=> b!3378128 m!3741871))

(assert (=> b!3378128 m!3741871))

(assert (=> b!3378128 m!3741879))

(assert (=> b!3377999 d!958403))

(declare-fun d!958431 () Bool)

(assert (=> d!958431 (= (get!11747 lt!1146713) (v!36433 lt!1146713))))

(assert (=> b!3377999 d!958431))

(declare-fun d!958433 () Bool)

(declare-fun list!13312 (Conc!11103) List!36942)

(assert (=> d!958433 (= (list!13309 lt!1146721) (list!13312 (c!575218 lt!1146721)))))

(declare-fun bs!554650 () Bool)

(assert (= bs!554650 d!958433))

(declare-fun m!3741881 () Bool)

(assert (=> bs!554650 m!3741881))

(assert (=> b!3377978 d!958433))

(declare-fun d!958435 () Bool)

(declare-fun lt!1146765 () BalanceConc!21820)

(declare-fun printListTailRec!641 (LexerInterface!4953 List!36944 List!36942) List!36942)

(declare-fun dropList!1158 (BalanceConc!21822 Int) List!36944)

(assert (=> d!958435 (= (list!13309 lt!1146765) (printListTailRec!641 thiss!18206 (dropList!1158 lt!1146729 0) (list!13309 (BalanceConc!21821 Empty!11103))))))

(declare-fun e!2096828 () BalanceConc!21820)

(assert (=> d!958435 (= lt!1146765 e!2096828)))

(declare-fun c!575249 () Bool)

(declare-fun size!27866 (BalanceConc!21822) Int)

(assert (=> d!958435 (= c!575249 (>= 0 (size!27866 lt!1146729)))))

(declare-fun e!2096827 () Bool)

(assert (=> d!958435 e!2096827))

(declare-fun res!1366409 () Bool)

(assert (=> d!958435 (=> (not res!1366409) (not e!2096827))))

(assert (=> d!958435 (= res!1366409 (>= 0 0))))

(assert (=> d!958435 (= (printTailRec!1448 thiss!18206 lt!1146729 0 (BalanceConc!21821 Empty!11103)) lt!1146765)))

(declare-fun b!3378147 () Bool)

(assert (=> b!3378147 (= e!2096827 (<= 0 (size!27866 lt!1146729)))))

(declare-fun b!3378148 () Bool)

(assert (=> b!3378148 (= e!2096828 (BalanceConc!21821 Empty!11103))))

(declare-fun b!3378149 () Bool)

(declare-fun ++!8994 (BalanceConc!21820 BalanceConc!21820) BalanceConc!21820)

(declare-fun apply!8552 (BalanceConc!21822 Int) Token!10094)

(assert (=> b!3378149 (= e!2096828 (printTailRec!1448 thiss!18206 lt!1146729 (+ 0 1) (++!8994 (BalanceConc!21821 Empty!11103) (charsOf!3378 (apply!8552 lt!1146729 0)))))))

(declare-fun lt!1146763 () List!36944)

(declare-fun list!13313 (BalanceConc!21822) List!36944)

(assert (=> b!3378149 (= lt!1146763 (list!13313 lt!1146729))))

(declare-fun lt!1146761 () Unit!51922)

(declare-fun lemmaDropApply!1116 (List!36944 Int) Unit!51922)

(assert (=> b!3378149 (= lt!1146761 (lemmaDropApply!1116 lt!1146763 0))))

(declare-fun head!7210 (List!36944) Token!10094)

(declare-fun drop!1956 (List!36944 Int) List!36944)

(declare-fun apply!8553 (List!36944 Int) Token!10094)

(assert (=> b!3378149 (= (head!7210 (drop!1956 lt!1146763 0)) (apply!8553 lt!1146763 0))))

(declare-fun lt!1146762 () Unit!51922)

(assert (=> b!3378149 (= lt!1146762 lt!1146761)))

(declare-fun lt!1146766 () List!36944)

(assert (=> b!3378149 (= lt!1146766 (list!13313 lt!1146729))))

(declare-fun lt!1146767 () Unit!51922)

(declare-fun lemmaDropTail!1000 (List!36944 Int) Unit!51922)

(assert (=> b!3378149 (= lt!1146767 (lemmaDropTail!1000 lt!1146766 0))))

(declare-fun tail!5344 (List!36944) List!36944)

(assert (=> b!3378149 (= (tail!5344 (drop!1956 lt!1146766 0)) (drop!1956 lt!1146766 (+ 0 1)))))

(declare-fun lt!1146764 () Unit!51922)

(assert (=> b!3378149 (= lt!1146764 lt!1146767)))

(assert (= (and d!958435 res!1366409) b!3378147))

(assert (= (and d!958435 c!575249) b!3378148))

(assert (= (and d!958435 (not c!575249)) b!3378149))

(declare-fun m!3741883 () Bool)

(assert (=> d!958435 m!3741883))

(declare-fun m!3741885 () Bool)

(assert (=> d!958435 m!3741885))

(declare-fun m!3741887 () Bool)

(assert (=> d!958435 m!3741887))

(declare-fun m!3741889 () Bool)

(assert (=> d!958435 m!3741889))

(declare-fun m!3741891 () Bool)

(assert (=> d!958435 m!3741891))

(assert (=> d!958435 m!3741885))

(assert (=> d!958435 m!3741883))

(assert (=> b!3378147 m!3741891))

(declare-fun m!3741893 () Bool)

(assert (=> b!3378149 m!3741893))

(declare-fun m!3741895 () Bool)

(assert (=> b!3378149 m!3741895))

(declare-fun m!3741897 () Bool)

(assert (=> b!3378149 m!3741897))

(declare-fun m!3741899 () Bool)

(assert (=> b!3378149 m!3741899))

(declare-fun m!3741901 () Bool)

(assert (=> b!3378149 m!3741901))

(declare-fun m!3741903 () Bool)

(assert (=> b!3378149 m!3741903))

(assert (=> b!3378149 m!3741899))

(declare-fun m!3741905 () Bool)

(assert (=> b!3378149 m!3741905))

(declare-fun m!3741907 () Bool)

(assert (=> b!3378149 m!3741907))

(declare-fun m!3741909 () Bool)

(assert (=> b!3378149 m!3741909))

(declare-fun m!3741911 () Bool)

(assert (=> b!3378149 m!3741911))

(assert (=> b!3378149 m!3741893))

(declare-fun m!3741913 () Bool)

(assert (=> b!3378149 m!3741913))

(declare-fun m!3741915 () Bool)

(assert (=> b!3378149 m!3741915))

(declare-fun m!3741917 () Bool)

(assert (=> b!3378149 m!3741917))

(assert (=> b!3378149 m!3741909))

(assert (=> b!3378149 m!3741901))

(assert (=> b!3378149 m!3741905))

(assert (=> b!3377978 d!958435))

(declare-fun d!958437 () Bool)

(declare-fun lt!1146773 () BalanceConc!21820)

(assert (=> d!958437 (= (list!13309 lt!1146773) (printList!1501 thiss!18206 (list!13313 lt!1146729)))))

(assert (=> d!958437 (= lt!1146773 (printTailRec!1448 thiss!18206 lt!1146729 0 (BalanceConc!21821 Empty!11103)))))

(assert (=> d!958437 (= (print!2018 thiss!18206 lt!1146729) lt!1146773)))

(declare-fun bs!554652 () Bool)

(assert (= bs!554652 d!958437))

(declare-fun m!3741939 () Bool)

(assert (=> bs!554652 m!3741939))

(assert (=> bs!554652 m!3741897))

(assert (=> bs!554652 m!3741897))

(declare-fun m!3741941 () Bool)

(assert (=> bs!554652 m!3741941))

(assert (=> bs!554652 m!3741669))

(assert (=> b!3377978 d!958437))

(declare-fun d!958443 () Bool)

(declare-fun e!2096840 () Bool)

(assert (=> d!958443 e!2096840))

(declare-fun res!1366421 () Bool)

(assert (=> d!958443 (=> (not res!1366421) (not e!2096840))))

(declare-fun lt!1146779 () BalanceConc!21822)

(assert (=> d!958443 (= res!1366421 (= (list!13313 lt!1146779) (Cons!36820 (h!42240 tokens!494) Nil!36820)))))

(declare-fun singleton!1073 (Token!10094) BalanceConc!21822)

(assert (=> d!958443 (= lt!1146779 (singleton!1073 (h!42240 tokens!494)))))

(assert (=> d!958443 (= (singletonSeq!2460 (h!42240 tokens!494)) lt!1146779)))

(declare-fun b!3378167 () Bool)

(declare-fun isBalanced!3346 (Conc!11104) Bool)

(assert (=> b!3378167 (= e!2096840 (isBalanced!3346 (c!575220 lt!1146779)))))

(assert (= (and d!958443 res!1366421) b!3378167))

(declare-fun m!3741953 () Bool)

(assert (=> d!958443 m!3741953))

(declare-fun m!3741955 () Bool)

(assert (=> d!958443 m!3741955))

(declare-fun m!3741959 () Bool)

(assert (=> b!3378167 m!3741959))

(assert (=> b!3377978 d!958443))

(declare-fun d!958451 () Bool)

(declare-fun c!575257 () Bool)

(assert (=> d!958451 (= c!575257 ((_ is Cons!36820) (Cons!36820 (h!42240 tokens!494) Nil!36820)))))

(declare-fun e!2096847 () List!36942)

(assert (=> d!958451 (= (printList!1501 thiss!18206 (Cons!36820 (h!42240 tokens!494) Nil!36820)) e!2096847)))

(declare-fun b!3378180 () Bool)

(assert (=> b!3378180 (= e!2096847 (++!8993 (list!13309 (charsOf!3378 (h!42240 (Cons!36820 (h!42240 tokens!494) Nil!36820)))) (printList!1501 thiss!18206 (t!262909 (Cons!36820 (h!42240 tokens!494) Nil!36820)))))))

(declare-fun b!3378181 () Bool)

(assert (=> b!3378181 (= e!2096847 Nil!36818)))

(assert (= (and d!958451 c!575257) b!3378180))

(assert (= (and d!958451 (not c!575257)) b!3378181))

(declare-fun m!3741963 () Bool)

(assert (=> b!3378180 m!3741963))

(assert (=> b!3378180 m!3741963))

(declare-fun m!3741965 () Bool)

(assert (=> b!3378180 m!3741965))

(declare-fun m!3741967 () Bool)

(assert (=> b!3378180 m!3741967))

(assert (=> b!3378180 m!3741965))

(assert (=> b!3378180 m!3741967))

(declare-fun m!3741981 () Bool)

(assert (=> b!3378180 m!3741981))

(assert (=> b!3377978 d!958451))

(declare-fun d!958457 () Bool)

(declare-fun lt!1146790 () Bool)

(declare-fun isEmpty!21048 (List!36944) Bool)

(assert (=> d!958457 (= lt!1146790 (isEmpty!21048 (list!13313 (_1!21328 (lex!2279 thiss!18206 rules!2135 lt!1146727)))))))

(declare-fun isEmpty!21049 (Conc!11104) Bool)

(assert (=> d!958457 (= lt!1146790 (isEmpty!21049 (c!575220 (_1!21328 (lex!2279 thiss!18206 rules!2135 lt!1146727)))))))

(assert (=> d!958457 (= (isEmpty!21043 (_1!21328 (lex!2279 thiss!18206 rules!2135 lt!1146727))) lt!1146790)))

(declare-fun bs!554657 () Bool)

(assert (= bs!554657 d!958457))

(declare-fun m!3741987 () Bool)

(assert (=> bs!554657 m!3741987))

(assert (=> bs!554657 m!3741987))

(declare-fun m!3741999 () Bool)

(assert (=> bs!554657 m!3741999))

(declare-fun m!3742003 () Bool)

(assert (=> bs!554657 m!3742003))

(assert (=> b!3377976 d!958457))

(declare-fun d!958461 () Bool)

(declare-fun e!2096875 () Bool)

(assert (=> d!958461 e!2096875))

(declare-fun res!1366449 () Bool)

(assert (=> d!958461 (=> (not res!1366449) (not e!2096875))))

(declare-fun e!2096876 () Bool)

(assert (=> d!958461 (= res!1366449 e!2096876)))

(declare-fun c!575271 () Bool)

(declare-fun lt!1146820 () tuple2!36388)

(assert (=> d!958461 (= c!575271 (> (size!27866 (_1!21328 lt!1146820)) 0))))

(declare-fun lexTailRecV2!1010 (LexerInterface!4953 List!36945 BalanceConc!21820 BalanceConc!21820 BalanceConc!21820 BalanceConc!21822) tuple2!36388)

(assert (=> d!958461 (= lt!1146820 (lexTailRecV2!1010 thiss!18206 rules!2135 lt!1146727 (BalanceConc!21821 Empty!11103) lt!1146727 (BalanceConc!21823 Empty!11104)))))

(assert (=> d!958461 (= (lex!2279 thiss!18206 rules!2135 lt!1146727) lt!1146820)))

(declare-fun b!3378228 () Bool)

(declare-datatypes ((tuple2!36394 0))(
  ( (tuple2!36395 (_1!21331 List!36944) (_2!21331 List!36942)) )
))
(declare-fun lexList!1400 (LexerInterface!4953 List!36945 List!36942) tuple2!36394)

(assert (=> b!3378228 (= e!2096875 (= (list!13309 (_2!21328 lt!1146820)) (_2!21331 (lexList!1400 thiss!18206 rules!2135 (list!13309 lt!1146727)))))))

(declare-fun b!3378229 () Bool)

(declare-fun e!2096877 () Bool)

(assert (=> b!3378229 (= e!2096876 e!2096877)))

(declare-fun res!1366450 () Bool)

(declare-fun size!27867 (BalanceConc!21820) Int)

(assert (=> b!3378229 (= res!1366450 (< (size!27867 (_2!21328 lt!1146820)) (size!27867 lt!1146727)))))

(assert (=> b!3378229 (=> (not res!1366450) (not e!2096877))))

(declare-fun b!3378230 () Bool)

(assert (=> b!3378230 (= e!2096876 (= (_2!21328 lt!1146820) lt!1146727))))

(declare-fun b!3378231 () Bool)

(declare-fun res!1366448 () Bool)

(assert (=> b!3378231 (=> (not res!1366448) (not e!2096875))))

(assert (=> b!3378231 (= res!1366448 (= (list!13313 (_1!21328 lt!1146820)) (_1!21331 (lexList!1400 thiss!18206 rules!2135 (list!13309 lt!1146727)))))))

(declare-fun b!3378232 () Bool)

(assert (=> b!3378232 (= e!2096877 (not (isEmpty!21043 (_1!21328 lt!1146820))))))

(assert (= (and d!958461 c!575271) b!3378229))

(assert (= (and d!958461 (not c!575271)) b!3378230))

(assert (= (and b!3378229 res!1366450) b!3378232))

(assert (= (and d!958461 res!1366449) b!3378231))

(assert (= (and b!3378231 res!1366448) b!3378228))

(declare-fun m!3742061 () Bool)

(assert (=> b!3378232 m!3742061))

(declare-fun m!3742063 () Bool)

(assert (=> d!958461 m!3742063))

(declare-fun m!3742065 () Bool)

(assert (=> d!958461 m!3742065))

(declare-fun m!3742067 () Bool)

(assert (=> b!3378228 m!3742067))

(declare-fun m!3742069 () Bool)

(assert (=> b!3378228 m!3742069))

(assert (=> b!3378228 m!3742069))

(declare-fun m!3742071 () Bool)

(assert (=> b!3378228 m!3742071))

(declare-fun m!3742073 () Bool)

(assert (=> b!3378229 m!3742073))

(declare-fun m!3742075 () Bool)

(assert (=> b!3378229 m!3742075))

(declare-fun m!3742077 () Bool)

(assert (=> b!3378231 m!3742077))

(assert (=> b!3378231 m!3742069))

(assert (=> b!3378231 m!3742069))

(assert (=> b!3378231 m!3742071))

(assert (=> b!3377976 d!958461))

(declare-fun d!958475 () Bool)

(declare-fun fromListB!1689 (List!36942) BalanceConc!21820)

(assert (=> d!958475 (= (seqFromList!3781 lt!1146722) (fromListB!1689 lt!1146722))))

(declare-fun bs!554660 () Bool)

(assert (= bs!554660 d!958475))

(declare-fun m!3742079 () Bool)

(assert (=> bs!554660 m!3742079))

(assert (=> b!3377976 d!958475))

(declare-fun d!958477 () Bool)

(assert (=> d!958477 (= (isEmpty!21044 rules!2135) ((_ is Nil!36821) rules!2135))))

(assert (=> b!3377977 d!958477))

(declare-fun b!3378233 () Bool)

(declare-fun res!1366456 () Bool)

(declare-fun e!2096880 () Bool)

(assert (=> b!3378233 (=> res!1366456 e!2096880)))

(declare-fun e!2096879 () Bool)

(assert (=> b!3378233 (= res!1366456 e!2096879)))

(declare-fun res!1366451 () Bool)

(assert (=> b!3378233 (=> (not res!1366451) (not e!2096879))))

(declare-fun lt!1146821 () Bool)

(assert (=> b!3378233 (= res!1366451 lt!1146821)))

(declare-fun b!3378234 () Bool)

(declare-fun res!1366452 () Bool)

(assert (=> b!3378234 (=> (not res!1366452) (not e!2096879))))

(assert (=> b!3378234 (= res!1366452 (isEmpty!21045 (tail!5343 lt!1146730)))))

(declare-fun b!3378235 () Bool)

(declare-fun e!2096881 () Bool)

(declare-fun e!2096882 () Bool)

(assert (=> b!3378235 (= e!2096881 e!2096882)))

(declare-fun res!1366455 () Bool)

(assert (=> b!3378235 (=> res!1366455 e!2096882)))

(declare-fun call!244410 () Bool)

(assert (=> b!3378235 (= res!1366455 call!244410)))

(declare-fun b!3378236 () Bool)

(declare-fun e!2096883 () Bool)

(assert (=> b!3378236 (= e!2096883 (matchR!4715 (derivativeStep!2999 (regex!5364 lt!1146720) (head!7209 lt!1146730)) (tail!5343 lt!1146730)))))

(declare-fun b!3378237 () Bool)

(declare-fun e!2096878 () Bool)

(assert (=> b!3378237 (= e!2096878 (= lt!1146821 call!244410))))

(declare-fun b!3378238 () Bool)

(declare-fun res!1366453 () Bool)

(assert (=> b!3378238 (=> (not res!1366453) (not e!2096879))))

(assert (=> b!3378238 (= res!1366453 (not call!244410))))

(declare-fun b!3378239 () Bool)

(declare-fun e!2096884 () Bool)

(assert (=> b!3378239 (= e!2096878 e!2096884)))

(declare-fun c!575274 () Bool)

(assert (=> b!3378239 (= c!575274 ((_ is EmptyLang!10123) (regex!5364 lt!1146720)))))

(declare-fun b!3378240 () Bool)

(assert (=> b!3378240 (= e!2096883 (nullable!3446 (regex!5364 lt!1146720)))))

(declare-fun d!958479 () Bool)

(assert (=> d!958479 e!2096878))

(declare-fun c!575272 () Bool)

(assert (=> d!958479 (= c!575272 ((_ is EmptyExpr!10123) (regex!5364 lt!1146720)))))

(assert (=> d!958479 (= lt!1146821 e!2096883)))

(declare-fun c!575273 () Bool)

(assert (=> d!958479 (= c!575273 (isEmpty!21045 lt!1146730))))

(assert (=> d!958479 (validRegex!4602 (regex!5364 lt!1146720))))

(assert (=> d!958479 (= (matchR!4715 (regex!5364 lt!1146720) lt!1146730) lt!1146821)))

(declare-fun b!3378241 () Bool)

(declare-fun res!1366457 () Bool)

(assert (=> b!3378241 (=> res!1366457 e!2096882)))

(assert (=> b!3378241 (= res!1366457 (not (isEmpty!21045 (tail!5343 lt!1146730))))))

(declare-fun b!3378242 () Bool)

(assert (=> b!3378242 (= e!2096880 e!2096881)))

(declare-fun res!1366458 () Bool)

(assert (=> b!3378242 (=> (not res!1366458) (not e!2096881))))

(assert (=> b!3378242 (= res!1366458 (not lt!1146821))))

(declare-fun b!3378243 () Bool)

(assert (=> b!3378243 (= e!2096879 (= (head!7209 lt!1146730) (c!575219 (regex!5364 lt!1146720))))))

(declare-fun b!3378244 () Bool)

(declare-fun res!1366454 () Bool)

(assert (=> b!3378244 (=> res!1366454 e!2096880)))

(assert (=> b!3378244 (= res!1366454 (not ((_ is ElementMatch!10123) (regex!5364 lt!1146720))))))

(assert (=> b!3378244 (= e!2096884 e!2096880)))

(declare-fun b!3378245 () Bool)

(assert (=> b!3378245 (= e!2096882 (not (= (head!7209 lt!1146730) (c!575219 (regex!5364 lt!1146720)))))))

(declare-fun bm!244405 () Bool)

(assert (=> bm!244405 (= call!244410 (isEmpty!21045 lt!1146730))))

(declare-fun b!3378246 () Bool)

(assert (=> b!3378246 (= e!2096884 (not lt!1146821))))

(assert (= (and d!958479 c!575273) b!3378240))

(assert (= (and d!958479 (not c!575273)) b!3378236))

(assert (= (and d!958479 c!575272) b!3378237))

(assert (= (and d!958479 (not c!575272)) b!3378239))

(assert (= (and b!3378239 c!575274) b!3378246))

(assert (= (and b!3378239 (not c!575274)) b!3378244))

(assert (= (and b!3378244 (not res!1366454)) b!3378233))

(assert (= (and b!3378233 res!1366451) b!3378238))

(assert (= (and b!3378238 res!1366453) b!3378234))

(assert (= (and b!3378234 res!1366452) b!3378243))

(assert (= (and b!3378233 (not res!1366456)) b!3378242))

(assert (= (and b!3378242 res!1366458) b!3378235))

(assert (= (and b!3378235 (not res!1366455)) b!3378241))

(assert (= (and b!3378241 (not res!1366457)) b!3378245))

(assert (= (or b!3378237 b!3378235 b!3378238) bm!244405))

(assert (=> b!3378245 m!3741771))

(declare-fun m!3742081 () Bool)

(assert (=> b!3378240 m!3742081))

(assert (=> b!3378236 m!3741771))

(assert (=> b!3378236 m!3741771))

(declare-fun m!3742083 () Bool)

(assert (=> b!3378236 m!3742083))

(declare-fun m!3742085 () Bool)

(assert (=> b!3378236 m!3742085))

(assert (=> b!3378236 m!3742083))

(assert (=> b!3378236 m!3742085))

(declare-fun m!3742087 () Bool)

(assert (=> b!3378236 m!3742087))

(declare-fun m!3742089 () Bool)

(assert (=> bm!244405 m!3742089))

(assert (=> b!3378243 m!3741771))

(assert (=> d!958479 m!3742089))

(declare-fun m!3742091 () Bool)

(assert (=> d!958479 m!3742091))

(assert (=> b!3378241 m!3742085))

(assert (=> b!3378241 m!3742085))

(declare-fun m!3742093 () Bool)

(assert (=> b!3378241 m!3742093))

(assert (=> b!3378234 m!3742085))

(assert (=> b!3378234 m!3742085))

(assert (=> b!3378234 m!3742093))

(assert (=> b!3377998 d!958479))

(declare-fun d!958481 () Bool)

(assert (=> d!958481 (= (get!11747 lt!1146723) (v!36433 lt!1146723))))

(assert (=> b!3377998 d!958481))

(declare-fun d!958483 () Bool)

(declare-fun c!575279 () Bool)

(assert (=> d!958483 (= c!575279 ((_ is IntegerValue!16782) (value!173334 separatorToken!241)))))

(declare-fun e!2096891 () Bool)

(assert (=> d!958483 (= (inv!21 (value!173334 separatorToken!241)) e!2096891)))

(declare-fun b!3378257 () Bool)

(declare-fun res!1366461 () Bool)

(declare-fun e!2096892 () Bool)

(assert (=> b!3378257 (=> res!1366461 e!2096892)))

(assert (=> b!3378257 (= res!1366461 (not ((_ is IntegerValue!16784) (value!173334 separatorToken!241))))))

(declare-fun e!2096893 () Bool)

(assert (=> b!3378257 (= e!2096893 e!2096892)))

(declare-fun b!3378258 () Bool)

(declare-fun inv!15 (TokenValue!5594) Bool)

(assert (=> b!3378258 (= e!2096892 (inv!15 (value!173334 separatorToken!241)))))

(declare-fun b!3378259 () Bool)

(declare-fun inv!17 (TokenValue!5594) Bool)

(assert (=> b!3378259 (= e!2096893 (inv!17 (value!173334 separatorToken!241)))))

(declare-fun b!3378260 () Bool)

(declare-fun inv!16 (TokenValue!5594) Bool)

(assert (=> b!3378260 (= e!2096891 (inv!16 (value!173334 separatorToken!241)))))

(declare-fun b!3378261 () Bool)

(assert (=> b!3378261 (= e!2096891 e!2096893)))

(declare-fun c!575280 () Bool)

(assert (=> b!3378261 (= c!575280 ((_ is IntegerValue!16783) (value!173334 separatorToken!241)))))

(assert (= (and d!958483 c!575279) b!3378260))

(assert (= (and d!958483 (not c!575279)) b!3378261))

(assert (= (and b!3378261 c!575280) b!3378259))

(assert (= (and b!3378261 (not c!575280)) b!3378257))

(assert (= (and b!3378257 (not res!1366461)) b!3378258))

(declare-fun m!3742095 () Bool)

(assert (=> b!3378258 m!3742095))

(declare-fun m!3742097 () Bool)

(assert (=> b!3378259 m!3742097))

(declare-fun m!3742099 () Bool)

(assert (=> b!3378260 m!3742099))

(assert (=> b!3377980 d!958483))

(declare-fun d!958485 () Bool)

(assert (=> d!958485 (= (inv!49885 (tag!5934 (h!42241 rules!2135))) (= (mod (str.len (value!173333 (tag!5934 (h!42241 rules!2135)))) 2) 0))))

(assert (=> b!3378002 d!958485))

(declare-fun d!958487 () Bool)

(declare-fun res!1366464 () Bool)

(declare-fun e!2096896 () Bool)

(assert (=> d!958487 (=> (not res!1366464) (not e!2096896))))

(declare-fun semiInverseModEq!2237 (Int Int) Bool)

(assert (=> d!958487 (= res!1366464 (semiInverseModEq!2237 (toChars!7407 (transformation!5364 (h!42241 rules!2135))) (toValue!7548 (transformation!5364 (h!42241 rules!2135)))))))

(assert (=> d!958487 (= (inv!49888 (transformation!5364 (h!42241 rules!2135))) e!2096896)))

(declare-fun b!3378264 () Bool)

(declare-fun equivClasses!2136 (Int Int) Bool)

(assert (=> b!3378264 (= e!2096896 (equivClasses!2136 (toChars!7407 (transformation!5364 (h!42241 rules!2135))) (toValue!7548 (transformation!5364 (h!42241 rules!2135)))))))

(assert (= (and d!958487 res!1366464) b!3378264))

(declare-fun m!3742101 () Bool)

(assert (=> d!958487 m!3742101))

(declare-fun m!3742103 () Bool)

(assert (=> b!3378264 m!3742103))

(assert (=> b!3378002 d!958487))

(declare-fun d!958489 () Bool)

(declare-fun lt!1146824 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5068 (List!36945) (InoxSet Rule!10528))

(assert (=> d!958489 (= lt!1146824 (select (content!5068 rules!2135) (rule!7910 (h!42240 tokens!494))))))

(declare-fun e!2096901 () Bool)

(assert (=> d!958489 (= lt!1146824 e!2096901)))

(declare-fun res!1366470 () Bool)

(assert (=> d!958489 (=> (not res!1366470) (not e!2096901))))

(assert (=> d!958489 (= res!1366470 ((_ is Cons!36821) rules!2135))))

(assert (=> d!958489 (= (contains!6718 rules!2135 (rule!7910 (h!42240 tokens!494))) lt!1146824)))

(declare-fun b!3378269 () Bool)

(declare-fun e!2096902 () Bool)

(assert (=> b!3378269 (= e!2096901 e!2096902)))

(declare-fun res!1366469 () Bool)

(assert (=> b!3378269 (=> res!1366469 e!2096902)))

(assert (=> b!3378269 (= res!1366469 (= (h!42241 rules!2135) (rule!7910 (h!42240 tokens!494))))))

(declare-fun b!3378270 () Bool)

(assert (=> b!3378270 (= e!2096902 (contains!6718 (t!262910 rules!2135) (rule!7910 (h!42240 tokens!494))))))

(assert (= (and d!958489 res!1366470) b!3378269))

(assert (= (and b!3378269 (not res!1366469)) b!3378270))

(declare-fun m!3742105 () Bool)

(assert (=> d!958489 m!3742105))

(declare-fun m!3742107 () Bool)

(assert (=> d!958489 m!3742107))

(declare-fun m!3742109 () Bool)

(assert (=> b!3378270 m!3742109))

(assert (=> b!3377979 d!958489))

(declare-fun bs!554661 () Bool)

(declare-fun d!958491 () Bool)

(assert (= bs!554661 (and d!958491 b!3377973)))

(declare-fun lambda!120410 () Int)

(assert (=> bs!554661 (not (= lambda!120410 lambda!120405))))

(declare-fun b!3378316 () Bool)

(declare-fun e!2096936 () Bool)

(assert (=> b!3378316 (= e!2096936 true)))

(declare-fun b!3378315 () Bool)

(declare-fun e!2096935 () Bool)

(assert (=> b!3378315 (= e!2096935 e!2096936)))

(declare-fun b!3378314 () Bool)

(declare-fun e!2096934 () Bool)

(assert (=> b!3378314 (= e!2096934 e!2096935)))

(assert (=> d!958491 e!2096934))

(assert (= b!3378315 b!3378316))

(assert (= b!3378314 b!3378315))

(assert (= (and d!958491 ((_ is Cons!36821) rules!2135)) b!3378314))

(declare-fun order!19373 () Int)

(declare-fun order!19371 () Int)

(declare-fun dynLambda!15295 (Int Int) Int)

(declare-fun dynLambda!15296 (Int Int) Int)

(assert (=> b!3378316 (< (dynLambda!15295 order!19371 (toValue!7548 (transformation!5364 (h!42241 rules!2135)))) (dynLambda!15296 order!19373 lambda!120410))))

(declare-fun order!19375 () Int)

(declare-fun dynLambda!15297 (Int Int) Int)

(assert (=> b!3378316 (< (dynLambda!15297 order!19375 (toChars!7407 (transformation!5364 (h!42241 rules!2135)))) (dynLambda!15296 order!19373 lambda!120410))))

(assert (=> d!958491 true))

(declare-fun e!2096927 () Bool)

(assert (=> d!958491 e!2096927))

(declare-fun res!1366499 () Bool)

(assert (=> d!958491 (=> (not res!1366499) (not e!2096927))))

(declare-fun lt!1146836 () Bool)

(assert (=> d!958491 (= res!1366499 (= lt!1146836 (forall!7741 (list!13313 lt!1146718) lambda!120410)))))

(declare-fun forall!7742 (BalanceConc!21822 Int) Bool)

(assert (=> d!958491 (= lt!1146836 (forall!7742 lt!1146718 lambda!120410))))

(assert (=> d!958491 (not (isEmpty!21044 rules!2135))))

(assert (=> d!958491 (= (rulesProduceEachTokenIndividually!1404 thiss!18206 rules!2135 lt!1146718) lt!1146836)))

(declare-fun b!3378305 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1808 (LexerInterface!4953 List!36945 List!36944) Bool)

(assert (=> b!3378305 (= e!2096927 (= lt!1146836 (rulesProduceEachTokenIndividuallyList!1808 thiss!18206 rules!2135 (list!13313 lt!1146718))))))

(assert (= (and d!958491 res!1366499) b!3378305))

(declare-fun m!3742143 () Bool)

(assert (=> d!958491 m!3742143))

(assert (=> d!958491 m!3742143))

(declare-fun m!3742145 () Bool)

(assert (=> d!958491 m!3742145))

(declare-fun m!3742147 () Bool)

(assert (=> d!958491 m!3742147))

(assert (=> d!958491 m!3741725))

(assert (=> b!3378305 m!3742143))

(assert (=> b!3378305 m!3742143))

(declare-fun m!3742149 () Bool)

(assert (=> b!3378305 m!3742149))

(assert (=> b!3378001 d!958491))

(declare-fun d!958503 () Bool)

(declare-fun fromListB!1690 (List!36944) BalanceConc!21822)

(assert (=> d!958503 (= (seqFromList!3782 tokens!494) (fromListB!1690 tokens!494))))

(declare-fun bs!554662 () Bool)

(assert (= bs!554662 d!958503))

(declare-fun m!3742151 () Bool)

(assert (=> bs!554662 m!3742151))

(assert (=> b!3378001 d!958503))

(declare-fun d!958505 () Bool)

(assert (=> d!958505 (= (inv!49885 (tag!5934 (rule!7910 separatorToken!241))) (= (mod (str.len (value!173333 (tag!5934 (rule!7910 separatorToken!241)))) 2) 0))))

(assert (=> b!3377972 d!958505))

(declare-fun d!958507 () Bool)

(declare-fun res!1366500 () Bool)

(declare-fun e!2096937 () Bool)

(assert (=> d!958507 (=> (not res!1366500) (not e!2096937))))

(assert (=> d!958507 (= res!1366500 (semiInverseModEq!2237 (toChars!7407 (transformation!5364 (rule!7910 separatorToken!241))) (toValue!7548 (transformation!5364 (rule!7910 separatorToken!241)))))))

(assert (=> d!958507 (= (inv!49888 (transformation!5364 (rule!7910 separatorToken!241))) e!2096937)))

(declare-fun b!3378319 () Bool)

(assert (=> b!3378319 (= e!2096937 (equivClasses!2136 (toChars!7407 (transformation!5364 (rule!7910 separatorToken!241))) (toValue!7548 (transformation!5364 (rule!7910 separatorToken!241)))))))

(assert (= (and d!958507 res!1366500) b!3378319))

(declare-fun m!3742153 () Bool)

(assert (=> d!958507 m!3742153))

(declare-fun m!3742155 () Bool)

(assert (=> b!3378319 m!3742155))

(assert (=> b!3377972 d!958507))

(declare-fun d!958509 () Bool)

(declare-fun res!1366505 () Bool)

(declare-fun e!2096942 () Bool)

(assert (=> d!958509 (=> res!1366505 e!2096942)))

(assert (=> d!958509 (= res!1366505 ((_ is Nil!36820) tokens!494))))

(assert (=> d!958509 (= (forall!7741 tokens!494 lambda!120405) e!2096942)))

(declare-fun b!3378324 () Bool)

(declare-fun e!2096943 () Bool)

(assert (=> b!3378324 (= e!2096942 e!2096943)))

(declare-fun res!1366506 () Bool)

(assert (=> b!3378324 (=> (not res!1366506) (not e!2096943))))

(declare-fun dynLambda!15301 (Int Token!10094) Bool)

(assert (=> b!3378324 (= res!1366506 (dynLambda!15301 lambda!120405 (h!42240 tokens!494)))))

(declare-fun b!3378325 () Bool)

(assert (=> b!3378325 (= e!2096943 (forall!7741 (t!262909 tokens!494) lambda!120405))))

(assert (= (and d!958509 (not res!1366505)) b!3378324))

(assert (= (and b!3378324 res!1366506) b!3378325))

(declare-fun b_lambda!95821 () Bool)

(assert (=> (not b_lambda!95821) (not b!3378324)))

(declare-fun m!3742157 () Bool)

(assert (=> b!3378324 m!3742157))

(declare-fun m!3742159 () Bool)

(assert (=> b!3378325 m!3742159))

(assert (=> b!3377973 d!958509))

(declare-fun d!958511 () Bool)

(declare-fun res!1366509 () Bool)

(declare-fun e!2096946 () Bool)

(assert (=> d!958511 (=> (not res!1366509) (not e!2096946))))

(declare-fun rulesValid!1997 (LexerInterface!4953 List!36945) Bool)

(assert (=> d!958511 (= res!1366509 (rulesValid!1997 thiss!18206 rules!2135))))

(assert (=> d!958511 (= (rulesInvariant!4350 thiss!18206 rules!2135) e!2096946)))

(declare-fun b!3378328 () Bool)

(declare-datatypes ((List!36947 0))(
  ( (Nil!36823) (Cons!36823 (h!42243 String!41304) (t!262986 List!36947)) )
))
(declare-fun noDuplicateTag!1993 (LexerInterface!4953 List!36945 List!36947) Bool)

(assert (=> b!3378328 (= e!2096946 (noDuplicateTag!1993 thiss!18206 rules!2135 Nil!36823))))

(assert (= (and d!958511 res!1366509) b!3378328))

(declare-fun m!3742161 () Bool)

(assert (=> d!958511 m!3742161))

(declare-fun m!3742163 () Bool)

(assert (=> b!3378328 m!3742163))

(assert (=> b!3377994 d!958511))

(declare-fun d!958513 () Bool)

(assert (=> d!958513 (= (list!13309 lt!1146728) (list!13312 (c!575218 lt!1146728)))))

(declare-fun bs!554663 () Bool)

(assert (= bs!554663 d!958513))

(declare-fun m!3742165 () Bool)

(assert (=> bs!554663 m!3742165))

(assert (=> b!3377971 d!958513))

(declare-fun d!958515 () Bool)

(declare-fun lt!1146839 () BalanceConc!21820)

(assert (=> d!958515 (= (list!13309 lt!1146839) (originalCharacters!6078 separatorToken!241))))

(declare-fun dynLambda!15302 (Int TokenValue!5594) BalanceConc!21820)

(assert (=> d!958515 (= lt!1146839 (dynLambda!15302 (toChars!7407 (transformation!5364 (rule!7910 separatorToken!241))) (value!173334 separatorToken!241)))))

(assert (=> d!958515 (= (charsOf!3378 separatorToken!241) lt!1146839)))

(declare-fun b_lambda!95823 () Bool)

(assert (=> (not b_lambda!95823) (not d!958515)))

(declare-fun t!262933 () Bool)

(declare-fun tb!179831 () Bool)

(assert (=> (and b!3378000 (= (toChars!7407 (transformation!5364 (rule!7910 (h!42240 tokens!494)))) (toChars!7407 (transformation!5364 (rule!7910 separatorToken!241)))) t!262933) tb!179831))

(declare-fun b!3378333 () Bool)

(declare-fun e!2096949 () Bool)

(declare-fun tp!1056359 () Bool)

(declare-fun inv!49892 (Conc!11103) Bool)

(assert (=> b!3378333 (= e!2096949 (and (inv!49892 (c!575218 (dynLambda!15302 (toChars!7407 (transformation!5364 (rule!7910 separatorToken!241))) (value!173334 separatorToken!241)))) tp!1056359))))

(declare-fun result!223214 () Bool)

(declare-fun inv!49893 (BalanceConc!21820) Bool)

(assert (=> tb!179831 (= result!223214 (and (inv!49893 (dynLambda!15302 (toChars!7407 (transformation!5364 (rule!7910 separatorToken!241))) (value!173334 separatorToken!241))) e!2096949))))

(assert (= tb!179831 b!3378333))

(declare-fun m!3742167 () Bool)

(assert (=> b!3378333 m!3742167))

(declare-fun m!3742169 () Bool)

(assert (=> tb!179831 m!3742169))

(assert (=> d!958515 t!262933))

(declare-fun b_and!234615 () Bool)

(assert (= b_and!234581 (and (=> t!262933 result!223214) b_and!234615)))

(declare-fun t!262935 () Bool)

(declare-fun tb!179833 () Bool)

(assert (=> (and b!3377988 (= (toChars!7407 (transformation!5364 (rule!7910 separatorToken!241))) (toChars!7407 (transformation!5364 (rule!7910 separatorToken!241)))) t!262935) tb!179833))

(declare-fun result!223218 () Bool)

(assert (= result!223218 result!223214))

(assert (=> d!958515 t!262935))

(declare-fun b_and!234617 () Bool)

(assert (= b_and!234585 (and (=> t!262935 result!223218) b_and!234617)))

(declare-fun t!262937 () Bool)

(declare-fun tb!179835 () Bool)

(assert (=> (and b!3377981 (= (toChars!7407 (transformation!5364 (h!42241 rules!2135))) (toChars!7407 (transformation!5364 (rule!7910 separatorToken!241)))) t!262937) tb!179835))

(declare-fun result!223220 () Bool)

(assert (= result!223220 result!223214))

(assert (=> d!958515 t!262937))

(declare-fun b_and!234619 () Bool)

(assert (= b_and!234589 (and (=> t!262937 result!223220) b_and!234619)))

(declare-fun m!3742171 () Bool)

(assert (=> d!958515 m!3742171))

(declare-fun m!3742173 () Bool)

(assert (=> d!958515 m!3742173))

(assert (=> b!3377971 d!958515))

(declare-fun b!3378356 () Bool)

(declare-fun lt!1146843 () List!36942)

(declare-fun e!2096964 () Bool)

(assert (=> b!3378356 (= e!2096964 (or (not (= lt!1146730 Nil!36818)) (= lt!1146843 lt!1146722)))))

(declare-fun d!958517 () Bool)

(assert (=> d!958517 e!2096964))

(declare-fun res!1366518 () Bool)

(assert (=> d!958517 (=> (not res!1366518) (not e!2096964))))

(declare-fun content!5069 (List!36942) (InoxSet C!20432))

(assert (=> d!958517 (= res!1366518 (= (content!5069 lt!1146843) ((_ map or) (content!5069 lt!1146722) (content!5069 lt!1146730))))))

(declare-fun e!2096963 () List!36942)

(assert (=> d!958517 (= lt!1146843 e!2096963)))

(declare-fun c!575286 () Bool)

(assert (=> d!958517 (= c!575286 ((_ is Nil!36818) lt!1146722))))

(assert (=> d!958517 (= (++!8993 lt!1146722 lt!1146730) lt!1146843)))

(declare-fun b!3378355 () Bool)

(declare-fun res!1366517 () Bool)

(assert (=> b!3378355 (=> (not res!1366517) (not e!2096964))))

(assert (=> b!3378355 (= res!1366517 (= (size!27863 lt!1146843) (+ (size!27863 lt!1146722) (size!27863 lt!1146730))))))

(declare-fun b!3378354 () Bool)

(assert (=> b!3378354 (= e!2096963 (Cons!36818 (h!42238 lt!1146722) (++!8993 (t!262907 lt!1146722) lt!1146730)))))

(declare-fun b!3378353 () Bool)

(assert (=> b!3378353 (= e!2096963 lt!1146730)))

(assert (= (and d!958517 c!575286) b!3378353))

(assert (= (and d!958517 (not c!575286)) b!3378354))

(assert (= (and d!958517 res!1366518) b!3378355))

(assert (= (and b!3378355 res!1366517) b!3378356))

(declare-fun m!3742175 () Bool)

(assert (=> d!958517 m!3742175))

(declare-fun m!3742177 () Bool)

(assert (=> d!958517 m!3742177))

(declare-fun m!3742179 () Bool)

(assert (=> d!958517 m!3742179))

(declare-fun m!3742181 () Bool)

(assert (=> b!3378355 m!3742181))

(assert (=> b!3378355 m!3741739))

(declare-fun m!3742183 () Bool)

(assert (=> b!3378355 m!3742183))

(declare-fun m!3742185 () Bool)

(assert (=> b!3378354 m!3742185))

(assert (=> b!3377971 d!958517))

(declare-fun d!958519 () Bool)

(assert (=> d!958519 (= (list!13309 (charsOf!3378 separatorToken!241)) (list!13312 (c!575218 (charsOf!3378 separatorToken!241))))))

(declare-fun bs!554664 () Bool)

(assert (= bs!554664 d!958519))

(declare-fun m!3742187 () Bool)

(assert (=> bs!554664 m!3742187))

(assert (=> b!3377971 d!958519))

(declare-fun lt!1146849 () BalanceConc!21820)

(declare-fun d!958521 () Bool)

(declare-fun printWithSeparatorTokenList!250 (LexerInterface!4953 List!36944 Token!10094) List!36942)

(assert (=> d!958521 (= (list!13309 lt!1146849) (printWithSeparatorTokenList!250 thiss!18206 (list!13313 lt!1146718) separatorToken!241))))

(declare-fun printWithSeparatorTokenTailRec!66 (LexerInterface!4953 BalanceConc!21822 Token!10094 Int BalanceConc!21820) BalanceConc!21820)

(assert (=> d!958521 (= lt!1146849 (printWithSeparatorTokenTailRec!66 thiss!18206 lt!1146718 separatorToken!241 0 (BalanceConc!21821 Empty!11103)))))

(assert (=> d!958521 (isSeparator!5364 (rule!7910 separatorToken!241))))

(assert (=> d!958521 (= (printWithSeparatorToken!144 thiss!18206 lt!1146718 separatorToken!241) lt!1146849)))

(declare-fun bs!554667 () Bool)

(assert (= bs!554667 d!958521))

(declare-fun m!3742201 () Bool)

(assert (=> bs!554667 m!3742201))

(assert (=> bs!554667 m!3742143))

(assert (=> bs!554667 m!3742143))

(declare-fun m!3742203 () Bool)

(assert (=> bs!554667 m!3742203))

(declare-fun m!3742205 () Bool)

(assert (=> bs!554667 m!3742205))

(assert (=> b!3377971 d!958521))

(declare-fun d!958529 () Bool)

(declare-fun res!1366526 () Bool)

(declare-fun e!2096973 () Bool)

(assert (=> d!958529 (=> (not res!1366526) (not e!2096973))))

(assert (=> d!958529 (= res!1366526 (not (isEmpty!21045 (originalCharacters!6078 (h!42240 tokens!494)))))))

(assert (=> d!958529 (= (inv!49889 (h!42240 tokens!494)) e!2096973)))

(declare-fun b!3378369 () Bool)

(declare-fun res!1366527 () Bool)

(assert (=> b!3378369 (=> (not res!1366527) (not e!2096973))))

(assert (=> b!3378369 (= res!1366527 (= (originalCharacters!6078 (h!42240 tokens!494)) (list!13309 (dynLambda!15302 (toChars!7407 (transformation!5364 (rule!7910 (h!42240 tokens!494)))) (value!173334 (h!42240 tokens!494))))))))

(declare-fun b!3378370 () Bool)

(assert (=> b!3378370 (= e!2096973 (= (size!27862 (h!42240 tokens!494)) (size!27863 (originalCharacters!6078 (h!42240 tokens!494)))))))

(assert (= (and d!958529 res!1366526) b!3378369))

(assert (= (and b!3378369 res!1366527) b!3378370))

(declare-fun b_lambda!95827 () Bool)

(assert (=> (not b_lambda!95827) (not b!3378369)))

(declare-fun t!262941 () Bool)

(declare-fun tb!179837 () Bool)

(assert (=> (and b!3378000 (= (toChars!7407 (transformation!5364 (rule!7910 (h!42240 tokens!494)))) (toChars!7407 (transformation!5364 (rule!7910 (h!42240 tokens!494))))) t!262941) tb!179837))

(declare-fun b!3378371 () Bool)

(declare-fun e!2096974 () Bool)

(declare-fun tp!1056360 () Bool)

(assert (=> b!3378371 (= e!2096974 (and (inv!49892 (c!575218 (dynLambda!15302 (toChars!7407 (transformation!5364 (rule!7910 (h!42240 tokens!494)))) (value!173334 (h!42240 tokens!494))))) tp!1056360))))

(declare-fun result!223222 () Bool)

(assert (=> tb!179837 (= result!223222 (and (inv!49893 (dynLambda!15302 (toChars!7407 (transformation!5364 (rule!7910 (h!42240 tokens!494)))) (value!173334 (h!42240 tokens!494)))) e!2096974))))

(assert (= tb!179837 b!3378371))

(declare-fun m!3742207 () Bool)

(assert (=> b!3378371 m!3742207))

(declare-fun m!3742209 () Bool)

(assert (=> tb!179837 m!3742209))

(assert (=> b!3378369 t!262941))

(declare-fun b_and!234621 () Bool)

(assert (= b_and!234615 (and (=> t!262941 result!223222) b_and!234621)))

(declare-fun tb!179839 () Bool)

(declare-fun t!262943 () Bool)

(assert (=> (and b!3377988 (= (toChars!7407 (transformation!5364 (rule!7910 separatorToken!241))) (toChars!7407 (transformation!5364 (rule!7910 (h!42240 tokens!494))))) t!262943) tb!179839))

(declare-fun result!223224 () Bool)

(assert (= result!223224 result!223222))

(assert (=> b!3378369 t!262943))

(declare-fun b_and!234623 () Bool)

(assert (= b_and!234617 (and (=> t!262943 result!223224) b_and!234623)))

(declare-fun tb!179841 () Bool)

(declare-fun t!262945 () Bool)

(assert (=> (and b!3377981 (= (toChars!7407 (transformation!5364 (h!42241 rules!2135))) (toChars!7407 (transformation!5364 (rule!7910 (h!42240 tokens!494))))) t!262945) tb!179841))

(declare-fun result!223226 () Bool)

(assert (= result!223226 result!223222))

(assert (=> b!3378369 t!262945))

(declare-fun b_and!234625 () Bool)

(assert (= b_and!234619 (and (=> t!262945 result!223226) b_and!234625)))

(declare-fun m!3742211 () Bool)

(assert (=> d!958529 m!3742211))

(declare-fun m!3742213 () Bool)

(assert (=> b!3378369 m!3742213))

(assert (=> b!3378369 m!3742213))

(declare-fun m!3742215 () Bool)

(assert (=> b!3378369 m!3742215))

(declare-fun m!3742217 () Bool)

(assert (=> b!3378370 m!3742217))

(assert (=> b!3377992 d!958529))

(declare-fun d!958531 () Bool)

(declare-fun e!2096977 () Bool)

(assert (=> d!958531 e!2096977))

(declare-fun res!1366532 () Bool)

(assert (=> d!958531 (=> (not res!1366532) (not e!2096977))))

(assert (=> d!958531 (= res!1366532 (isDefined!5702 (getRuleFromTag!1019 thiss!18206 rules!2135 (tag!5934 (rule!7910 (h!42240 tokens!494))))))))

(declare-fun lt!1146852 () Unit!51922)

(declare-fun choose!19527 (LexerInterface!4953 List!36945 List!36942 Token!10094) Unit!51922)

(assert (=> d!958531 (= lt!1146852 (choose!19527 thiss!18206 rules!2135 lt!1146722 (h!42240 tokens!494)))))

(assert (=> d!958531 (rulesInvariant!4350 thiss!18206 rules!2135)))

(assert (=> d!958531 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1019 thiss!18206 rules!2135 lt!1146722 (h!42240 tokens!494)) lt!1146852)))

(declare-fun b!3378376 () Bool)

(declare-fun res!1366533 () Bool)

(assert (=> b!3378376 (=> (not res!1366533) (not e!2096977))))

(assert (=> b!3378376 (= res!1366533 (matchR!4715 (regex!5364 (get!11747 (getRuleFromTag!1019 thiss!18206 rules!2135 (tag!5934 (rule!7910 (h!42240 tokens!494)))))) (list!13309 (charsOf!3378 (h!42240 tokens!494)))))))

(declare-fun b!3378377 () Bool)

(assert (=> b!3378377 (= e!2096977 (= (rule!7910 (h!42240 tokens!494)) (get!11747 (getRuleFromTag!1019 thiss!18206 rules!2135 (tag!5934 (rule!7910 (h!42240 tokens!494)))))))))

(assert (= (and d!958531 res!1366532) b!3378376))

(assert (= (and b!3378376 res!1366533) b!3378377))

(assert (=> d!958531 m!3741743))

(assert (=> d!958531 m!3741743))

(declare-fun m!3742219 () Bool)

(assert (=> d!958531 m!3742219))

(declare-fun m!3742221 () Bool)

(assert (=> d!958531 m!3742221))

(assert (=> d!958531 m!3741727))

(assert (=> b!3378376 m!3741743))

(declare-fun m!3742223 () Bool)

(assert (=> b!3378376 m!3742223))

(assert (=> b!3378376 m!3741743))

(assert (=> b!3378376 m!3741693))

(declare-fun m!3742225 () Bool)

(assert (=> b!3378376 m!3742225))

(assert (=> b!3378376 m!3741691))

(assert (=> b!3378376 m!3741693))

(assert (=> b!3378376 m!3741691))

(assert (=> b!3378377 m!3741743))

(assert (=> b!3378377 m!3741743))

(assert (=> b!3378377 m!3742223))

(assert (=> b!3377993 d!958531))

(declare-fun d!958533 () Bool)

(assert (=> d!958533 (rulesProduceIndividualToken!2445 thiss!18206 rules!2135 (h!42240 tokens!494))))

(declare-fun lt!1146863 () Unit!51922)

(declare-fun choose!19528 (LexerInterface!4953 List!36945 List!36944 Token!10094) Unit!51922)

(assert (=> d!958533 (= lt!1146863 (choose!19528 thiss!18206 rules!2135 tokens!494 (h!42240 tokens!494)))))

(assert (=> d!958533 (not (isEmpty!21044 rules!2135))))

(assert (=> d!958533 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!948 thiss!18206 rules!2135 tokens!494 (h!42240 tokens!494)) lt!1146863)))

(declare-fun bs!554669 () Bool)

(assert (= bs!554669 d!958533))

(assert (=> bs!554669 m!3741707))

(declare-fun m!3742241 () Bool)

(assert (=> bs!554669 m!3742241))

(assert (=> bs!554669 m!3741725))

(assert (=> b!3377993 d!958533))

(declare-fun d!958541 () Bool)

(declare-fun isEmpty!21052 (Option!7376) Bool)

(assert (=> d!958541 (= (isDefined!5702 lt!1146723) (not (isEmpty!21052 lt!1146723)))))

(declare-fun bs!554670 () Bool)

(assert (= bs!554670 d!958541))

(declare-fun m!3742249 () Bool)

(assert (=> bs!554670 m!3742249))

(assert (=> b!3377993 d!958541))

(declare-fun b!3378416 () Bool)

(declare-fun e!2097006 () Bool)

(declare-fun e!2097008 () Bool)

(assert (=> b!3378416 (= e!2097006 e!2097008)))

(declare-fun res!1366555 () Bool)

(assert (=> b!3378416 (=> (not res!1366555) (not e!2097008))))

(declare-fun lt!1146877 () Option!7376)

(assert (=> b!3378416 (= res!1366555 (contains!6718 rules!2135 (get!11747 lt!1146877)))))

(declare-fun b!3378417 () Bool)

(declare-fun lt!1146879 () Unit!51922)

(declare-fun lt!1146878 () Unit!51922)

(assert (=> b!3378417 (= lt!1146879 lt!1146878)))

(assert (=> b!3378417 (rulesInvariant!4350 thiss!18206 (t!262910 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!394 (LexerInterface!4953 Rule!10528 List!36945) Unit!51922)

(assert (=> b!3378417 (= lt!1146878 (lemmaInvariantOnRulesThenOnTail!394 thiss!18206 (h!42241 rules!2135) (t!262910 rules!2135)))))

(declare-fun e!2097007 () Option!7376)

(assert (=> b!3378417 (= e!2097007 (getRuleFromTag!1019 thiss!18206 (t!262910 rules!2135) (tag!5934 (rule!7910 separatorToken!241))))))

(declare-fun b!3378418 () Bool)

(assert (=> b!3378418 (= e!2097007 None!7375)))

(declare-fun b!3378419 () Bool)

(declare-fun e!2097009 () Option!7376)

(assert (=> b!3378419 (= e!2097009 e!2097007)))

(declare-fun c!575295 () Bool)

(assert (=> b!3378419 (= c!575295 (and ((_ is Cons!36821) rules!2135) (not (= (tag!5934 (h!42241 rules!2135)) (tag!5934 (rule!7910 separatorToken!241))))))))

(declare-fun b!3378420 () Bool)

(assert (=> b!3378420 (= e!2097008 (= (tag!5934 (get!11747 lt!1146877)) (tag!5934 (rule!7910 separatorToken!241))))))

(declare-fun d!958545 () Bool)

(assert (=> d!958545 e!2097006))

(declare-fun res!1366554 () Bool)

(assert (=> d!958545 (=> res!1366554 e!2097006)))

(assert (=> d!958545 (= res!1366554 (isEmpty!21052 lt!1146877))))

(assert (=> d!958545 (= lt!1146877 e!2097009)))

(declare-fun c!575296 () Bool)

(assert (=> d!958545 (= c!575296 (and ((_ is Cons!36821) rules!2135) (= (tag!5934 (h!42241 rules!2135)) (tag!5934 (rule!7910 separatorToken!241)))))))

(assert (=> d!958545 (rulesInvariant!4350 thiss!18206 rules!2135)))

(assert (=> d!958545 (= (getRuleFromTag!1019 thiss!18206 rules!2135 (tag!5934 (rule!7910 separatorToken!241))) lt!1146877)))

(declare-fun b!3378421 () Bool)

(assert (=> b!3378421 (= e!2097009 (Some!7375 (h!42241 rules!2135)))))

(assert (= (and d!958545 c!575296) b!3378421))

(assert (= (and d!958545 (not c!575296)) b!3378419))

(assert (= (and b!3378419 c!575295) b!3378417))

(assert (= (and b!3378419 (not c!575295)) b!3378418))

(assert (= (and d!958545 (not res!1366554)) b!3378416))

(assert (= (and b!3378416 res!1366555) b!3378420))

(declare-fun m!3742251 () Bool)

(assert (=> b!3378416 m!3742251))

(assert (=> b!3378416 m!3742251))

(declare-fun m!3742253 () Bool)

(assert (=> b!3378416 m!3742253))

(declare-fun m!3742255 () Bool)

(assert (=> b!3378417 m!3742255))

(declare-fun m!3742259 () Bool)

(assert (=> b!3378417 m!3742259))

(declare-fun m!3742263 () Bool)

(assert (=> b!3378417 m!3742263))

(assert (=> b!3378420 m!3742251))

(declare-fun m!3742267 () Bool)

(assert (=> d!958545 m!3742267))

(assert (=> d!958545 m!3741727))

(assert (=> b!3377993 d!958545))

(declare-fun d!958547 () Bool)

(assert (=> d!958547 (isEmpty!21045 (getSuffix!1458 lt!1146722 lt!1146722))))

(declare-fun lt!1146888 () Unit!51922)

(declare-fun choose!19530 (List!36942) Unit!51922)

(assert (=> d!958547 (= lt!1146888 (choose!19530 lt!1146722))))

(assert (=> d!958547 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!116 lt!1146722) lt!1146888)))

(declare-fun bs!554671 () Bool)

(assert (= bs!554671 d!958547))

(assert (=> bs!554671 m!3741755))

(assert (=> bs!554671 m!3741755))

(assert (=> bs!554671 m!3741757))

(declare-fun m!3742283 () Bool)

(assert (=> bs!554671 m!3742283))

(assert (=> b!3377993 d!958547))

(declare-fun d!958555 () Bool)

(declare-fun dynLambda!15304 (Int BalanceConc!21820) TokenValue!5594)

(assert (=> d!958555 (= (apply!8551 (transformation!5364 (rule!7910 (h!42240 tokens!494))) lt!1146727) (dynLambda!15304 (toValue!7548 (transformation!5364 (rule!7910 (h!42240 tokens!494)))) lt!1146727))))

(declare-fun b_lambda!95831 () Bool)

(assert (=> (not b_lambda!95831) (not d!958555)))

(declare-fun t!262955 () Bool)

(declare-fun tb!179849 () Bool)

(assert (=> (and b!3378000 (= (toValue!7548 (transformation!5364 (rule!7910 (h!42240 tokens!494)))) (toValue!7548 (transformation!5364 (rule!7910 (h!42240 tokens!494))))) t!262955) tb!179849))

(declare-fun result!223236 () Bool)

(assert (=> tb!179849 (= result!223236 (inv!21 (dynLambda!15304 (toValue!7548 (transformation!5364 (rule!7910 (h!42240 tokens!494)))) lt!1146727)))))

(declare-fun m!3742287 () Bool)

(assert (=> tb!179849 m!3742287))

(assert (=> d!958555 t!262955))

(declare-fun b_and!234633 () Bool)

(assert (= b_and!234579 (and (=> t!262955 result!223236) b_and!234633)))

(declare-fun t!262957 () Bool)

(declare-fun tb!179851 () Bool)

(assert (=> (and b!3377988 (= (toValue!7548 (transformation!5364 (rule!7910 separatorToken!241))) (toValue!7548 (transformation!5364 (rule!7910 (h!42240 tokens!494))))) t!262957) tb!179851))

(declare-fun result!223240 () Bool)

(assert (= result!223240 result!223236))

(assert (=> d!958555 t!262957))

(declare-fun b_and!234635 () Bool)

(assert (= b_and!234583 (and (=> t!262957 result!223240) b_and!234635)))

(declare-fun t!262959 () Bool)

(declare-fun tb!179853 () Bool)

(assert (=> (and b!3377981 (= (toValue!7548 (transformation!5364 (h!42241 rules!2135))) (toValue!7548 (transformation!5364 (rule!7910 (h!42240 tokens!494))))) t!262959) tb!179853))

(declare-fun result!223242 () Bool)

(assert (= result!223242 result!223236))

(assert (=> d!958555 t!262959))

(declare-fun b_and!234637 () Bool)

(assert (= b_and!234587 (and (=> t!262959 result!223242) b_and!234637)))

(declare-fun m!3742289 () Bool)

(assert (=> d!958555 m!3742289))

(assert (=> b!3377993 d!958555))

(declare-fun b!3378452 () Bool)

(declare-fun e!2097031 () List!36942)

(assert (=> b!3378452 (= e!2097031 (Cons!36818 (c!575219 (regex!5364 (rule!7910 separatorToken!241))) Nil!36818))))

(declare-fun b!3378453 () Bool)

(declare-fun e!2097032 () List!36942)

(declare-fun call!244421 () List!36942)

(assert (=> b!3378453 (= e!2097032 call!244421)))

(declare-fun b!3378454 () Bool)

(declare-fun e!2097030 () List!36942)

(assert (=> b!3378454 (= e!2097030 e!2097031)))

(declare-fun c!575311 () Bool)

(assert (=> b!3378454 (= c!575311 ((_ is ElementMatch!10123) (regex!5364 (rule!7910 separatorToken!241))))))

(declare-fun b!3378455 () Bool)

(declare-fun e!2097029 () List!36942)

(declare-fun call!244420 () List!36942)

(assert (=> b!3378455 (= e!2097029 call!244420)))

(declare-fun call!244423 () List!36942)

(declare-fun c!575309 () Bool)

(declare-fun bm!244415 () Bool)

(declare-fun call!244422 () List!36942)

(assert (=> bm!244415 (= call!244421 (++!8993 (ite c!575309 call!244423 call!244422) (ite c!575309 call!244422 call!244423)))))

(declare-fun d!958559 () Bool)

(declare-fun c!575312 () Bool)

(assert (=> d!958559 (= c!575312 (or ((_ is EmptyExpr!10123) (regex!5364 (rule!7910 separatorToken!241))) ((_ is EmptyLang!10123) (regex!5364 (rule!7910 separatorToken!241)))))))

(assert (=> d!958559 (= (usedCharacters!620 (regex!5364 (rule!7910 separatorToken!241))) e!2097030)))

(declare-fun bm!244416 () Bool)

(assert (=> bm!244416 (= call!244422 call!244420)))

(declare-fun b!3378456 () Bool)

(assert (=> b!3378456 (= e!2097030 Nil!36818)))

(declare-fun bm!244417 () Bool)

(assert (=> bm!244417 (= call!244423 (usedCharacters!620 (ite c!575309 (regOne!20759 (regex!5364 (rule!7910 separatorToken!241))) (regTwo!20758 (regex!5364 (rule!7910 separatorToken!241))))))))

(declare-fun b!3378457 () Bool)

(assert (=> b!3378457 (= e!2097032 call!244421)))

(declare-fun c!575310 () Bool)

(declare-fun bm!244418 () Bool)

(assert (=> bm!244418 (= call!244420 (usedCharacters!620 (ite c!575310 (reg!10452 (regex!5364 (rule!7910 separatorToken!241))) (ite c!575309 (regTwo!20759 (regex!5364 (rule!7910 separatorToken!241))) (regOne!20758 (regex!5364 (rule!7910 separatorToken!241)))))))))

(declare-fun b!3378458 () Bool)

(assert (=> b!3378458 (= c!575310 ((_ is Star!10123) (regex!5364 (rule!7910 separatorToken!241))))))

(assert (=> b!3378458 (= e!2097031 e!2097029)))

(declare-fun b!3378459 () Bool)

(assert (=> b!3378459 (= e!2097029 e!2097032)))

(assert (=> b!3378459 (= c!575309 ((_ is Union!10123) (regex!5364 (rule!7910 separatorToken!241))))))

(assert (= (and d!958559 c!575312) b!3378456))

(assert (= (and d!958559 (not c!575312)) b!3378454))

(assert (= (and b!3378454 c!575311) b!3378452))

(assert (= (and b!3378454 (not c!575311)) b!3378458))

(assert (= (and b!3378458 c!575310) b!3378455))

(assert (= (and b!3378458 (not c!575310)) b!3378459))

(assert (= (and b!3378459 c!575309) b!3378457))

(assert (= (and b!3378459 (not c!575309)) b!3378453))

(assert (= (or b!3378457 b!3378453) bm!244416))

(assert (= (or b!3378457 b!3378453) bm!244417))

(assert (= (or b!3378457 b!3378453) bm!244415))

(assert (= (or b!3378455 bm!244416) bm!244418))

(declare-fun m!3742291 () Bool)

(assert (=> bm!244415 m!3742291))

(declare-fun m!3742293 () Bool)

(assert (=> bm!244417 m!3742293))

(declare-fun m!3742295 () Bool)

(assert (=> bm!244418 m!3742295))

(assert (=> b!3377993 d!958559))

(declare-fun d!958561 () Bool)

(declare-fun lt!1146891 () Int)

(assert (=> d!958561 (>= lt!1146891 0)))

(declare-fun e!2097035 () Int)

(assert (=> d!958561 (= lt!1146891 e!2097035)))

(declare-fun c!575315 () Bool)

(assert (=> d!958561 (= c!575315 ((_ is Nil!36818) lt!1146722))))

(assert (=> d!958561 (= (size!27863 lt!1146722) lt!1146891)))

(declare-fun b!3378464 () Bool)

(assert (=> b!3378464 (= e!2097035 0)))

(declare-fun b!3378465 () Bool)

(assert (=> b!3378465 (= e!2097035 (+ 1 (size!27863 (t!262907 lt!1146722))))))

(assert (= (and d!958561 c!575315) b!3378464))

(assert (= (and d!958561 (not c!575315)) b!3378465))

(declare-fun m!3742297 () Bool)

(assert (=> b!3378465 m!3742297))

(assert (=> b!3377993 d!958561))

(declare-fun d!958563 () Bool)

(assert (=> d!958563 (= (isDefined!5702 lt!1146713) (not (isEmpty!21052 lt!1146713)))))

(declare-fun bs!554673 () Bool)

(assert (= bs!554673 d!958563))

(declare-fun m!3742299 () Bool)

(assert (=> bs!554673 m!3742299))

(assert (=> b!3377993 d!958563))

(declare-fun d!958565 () Bool)

(assert (=> d!958565 (= (maxPrefixOneRule!1676 thiss!18206 (rule!7910 (h!42240 tokens!494)) lt!1146722) (Some!7374 (tuple2!36391 (Token!10095 (apply!8551 (transformation!5364 (rule!7910 (h!42240 tokens!494))) (seqFromList!3781 lt!1146722)) (rule!7910 (h!42240 tokens!494)) (size!27863 lt!1146722) lt!1146722) Nil!36818)))))

(declare-fun lt!1146901 () Unit!51922)

(declare-fun choose!19532 (LexerInterface!4953 List!36945 List!36942 List!36942 List!36942 Rule!10528) Unit!51922)

(assert (=> d!958565 (= lt!1146901 (choose!19532 thiss!18206 rules!2135 lt!1146722 lt!1146722 Nil!36818 (rule!7910 (h!42240 tokens!494))))))

(assert (=> d!958565 (not (isEmpty!21044 rules!2135))))

(assert (=> d!958565 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!775 thiss!18206 rules!2135 lt!1146722 lt!1146722 Nil!36818 (rule!7910 (h!42240 tokens!494))) lt!1146901)))

(declare-fun bs!554677 () Bool)

(assert (= bs!554677 d!958565))

(declare-fun m!3742323 () Bool)

(assert (=> bs!554677 m!3742323))

(assert (=> bs!554677 m!3741739))

(assert (=> bs!554677 m!3741725))

(assert (=> bs!554677 m!3741761))

(assert (=> bs!554677 m!3741723))

(declare-fun m!3742325 () Bool)

(assert (=> bs!554677 m!3742325))

(assert (=> bs!554677 m!3741723))

(assert (=> b!3377993 d!958565))

(declare-fun b!3378494 () Bool)

(declare-fun e!2097049 () Bool)

(declare-fun e!2097051 () Bool)

(assert (=> b!3378494 (= e!2097049 e!2097051)))

(declare-fun res!1366563 () Bool)

(assert (=> b!3378494 (=> (not res!1366563) (not e!2097051))))

(declare-fun lt!1146902 () Option!7376)

(assert (=> b!3378494 (= res!1366563 (contains!6718 rules!2135 (get!11747 lt!1146902)))))

(declare-fun b!3378496 () Bool)

(declare-fun lt!1146906 () Unit!51922)

(declare-fun lt!1146903 () Unit!51922)

(assert (=> b!3378496 (= lt!1146906 lt!1146903)))

(assert (=> b!3378496 (rulesInvariant!4350 thiss!18206 (t!262910 rules!2135))))

(assert (=> b!3378496 (= lt!1146903 (lemmaInvariantOnRulesThenOnTail!394 thiss!18206 (h!42241 rules!2135) (t!262910 rules!2135)))))

(declare-fun e!2097050 () Option!7376)

(assert (=> b!3378496 (= e!2097050 (getRuleFromTag!1019 thiss!18206 (t!262910 rules!2135) (tag!5934 (rule!7910 (h!42240 tokens!494)))))))

(declare-fun b!3378498 () Bool)

(assert (=> b!3378498 (= e!2097050 None!7375)))

(declare-fun b!3378499 () Bool)

(declare-fun e!2097052 () Option!7376)

(assert (=> b!3378499 (= e!2097052 e!2097050)))

(declare-fun c!575328 () Bool)

(assert (=> b!3378499 (= c!575328 (and ((_ is Cons!36821) rules!2135) (not (= (tag!5934 (h!42241 rules!2135)) (tag!5934 (rule!7910 (h!42240 tokens!494)))))))))

(declare-fun b!3378500 () Bool)

(assert (=> b!3378500 (= e!2097051 (= (tag!5934 (get!11747 lt!1146902)) (tag!5934 (rule!7910 (h!42240 tokens!494)))))))

(declare-fun d!958577 () Bool)

(assert (=> d!958577 e!2097049))

(declare-fun res!1366562 () Bool)

(assert (=> d!958577 (=> res!1366562 e!2097049)))

(assert (=> d!958577 (= res!1366562 (isEmpty!21052 lt!1146902))))

(assert (=> d!958577 (= lt!1146902 e!2097052)))

(declare-fun c!575329 () Bool)

(assert (=> d!958577 (= c!575329 (and ((_ is Cons!36821) rules!2135) (= (tag!5934 (h!42241 rules!2135)) (tag!5934 (rule!7910 (h!42240 tokens!494))))))))

(assert (=> d!958577 (rulesInvariant!4350 thiss!18206 rules!2135)))

(assert (=> d!958577 (= (getRuleFromTag!1019 thiss!18206 rules!2135 (tag!5934 (rule!7910 (h!42240 tokens!494)))) lt!1146902)))

(declare-fun b!3378501 () Bool)

(assert (=> b!3378501 (= e!2097052 (Some!7375 (h!42241 rules!2135)))))

(assert (= (and d!958577 c!575329) b!3378501))

(assert (= (and d!958577 (not c!575329)) b!3378499))

(assert (= (and b!3378499 c!575328) b!3378496))

(assert (= (and b!3378499 (not c!575328)) b!3378498))

(assert (= (and d!958577 (not res!1366562)) b!3378494))

(assert (= (and b!3378494 res!1366563) b!3378500))

(declare-fun m!3742327 () Bool)

(assert (=> b!3378494 m!3742327))

(assert (=> b!3378494 m!3742327))

(declare-fun m!3742329 () Bool)

(assert (=> b!3378494 m!3742329))

(assert (=> b!3378496 m!3742255))

(assert (=> b!3378496 m!3742259))

(declare-fun m!3742331 () Bool)

(assert (=> b!3378496 m!3742331))

(assert (=> b!3378500 m!3742327))

(declare-fun m!3742333 () Bool)

(assert (=> d!958577 m!3742333))

(assert (=> d!958577 m!3741727))

(assert (=> b!3377993 d!958577))

(declare-fun d!958579 () Bool)

(declare-fun lt!1146912 () List!36942)

(assert (=> d!958579 (= (++!8993 lt!1146722 lt!1146912) lt!1146722)))

(declare-fun e!2097060 () List!36942)

(assert (=> d!958579 (= lt!1146912 e!2097060)))

(declare-fun c!575337 () Bool)

(assert (=> d!958579 (= c!575337 ((_ is Cons!36818) lt!1146722))))

(assert (=> d!958579 (>= (size!27863 lt!1146722) (size!27863 lt!1146722))))

(assert (=> d!958579 (= (getSuffix!1458 lt!1146722 lt!1146722) lt!1146912)))

(declare-fun b!3378512 () Bool)

(assert (=> b!3378512 (= e!2097060 (getSuffix!1458 (tail!5343 lt!1146722) (t!262907 lt!1146722)))))

(declare-fun b!3378513 () Bool)

(assert (=> b!3378513 (= e!2097060 lt!1146722)))

(assert (= (and d!958579 c!575337) b!3378512))

(assert (= (and d!958579 (not c!575337)) b!3378513))

(declare-fun m!3742337 () Bool)

(assert (=> d!958579 m!3742337))

(assert (=> d!958579 m!3741739))

(assert (=> d!958579 m!3741739))

(assert (=> b!3378512 m!3741871))

(assert (=> b!3378512 m!3741871))

(declare-fun m!3742339 () Bool)

(assert (=> b!3378512 m!3742339))

(assert (=> b!3377993 d!958579))

(declare-fun b!3378552 () Bool)

(declare-fun res!1366595 () Bool)

(declare-fun e!2097081 () Bool)

(assert (=> b!3378552 (=> (not res!1366595) (not e!2097081))))

(declare-fun lt!1146934 () Option!7375)

(declare-fun get!11749 (Option!7375) tuple2!36390)

(assert (=> b!3378552 (= res!1366595 (= (value!173334 (_1!21329 (get!11749 lt!1146934))) (apply!8551 (transformation!5364 (rule!7910 (_1!21329 (get!11749 lt!1146934)))) (seqFromList!3781 (originalCharacters!6078 (_1!21329 (get!11749 lt!1146934)))))))))

(declare-fun b!3378553 () Bool)

(declare-fun res!1366592 () Bool)

(assert (=> b!3378553 (=> (not res!1366592) (not e!2097081))))

(assert (=> b!3378553 (= res!1366592 (= (rule!7910 (_1!21329 (get!11749 lt!1146934))) (rule!7910 (h!42240 tokens!494))))))

(declare-fun b!3378554 () Bool)

(declare-fun res!1366594 () Bool)

(assert (=> b!3378554 (=> (not res!1366594) (not e!2097081))))

(assert (=> b!3378554 (= res!1366594 (= (++!8993 (list!13309 (charsOf!3378 (_1!21329 (get!11749 lt!1146934)))) (_2!21329 (get!11749 lt!1146934))) lt!1146722))))

(declare-fun b!3378555 () Bool)

(assert (=> b!3378555 (= e!2097081 (= (size!27862 (_1!21329 (get!11749 lt!1146934))) (size!27863 (originalCharacters!6078 (_1!21329 (get!11749 lt!1146934))))))))

(declare-fun b!3378556 () Bool)

(declare-fun res!1366597 () Bool)

(assert (=> b!3378556 (=> (not res!1366597) (not e!2097081))))

(assert (=> b!3378556 (= res!1366597 (< (size!27863 (_2!21329 (get!11749 lt!1146934))) (size!27863 lt!1146722)))))

(declare-fun b!3378557 () Bool)

(declare-fun e!2097078 () Option!7375)

(assert (=> b!3378557 (= e!2097078 None!7374)))

(declare-fun d!958583 () Bool)

(declare-fun e!2097080 () Bool)

(assert (=> d!958583 e!2097080))

(declare-fun res!1366593 () Bool)

(assert (=> d!958583 (=> res!1366593 e!2097080)))

(declare-fun isEmpty!21054 (Option!7375) Bool)

(assert (=> d!958583 (= res!1366593 (isEmpty!21054 lt!1146934))))

(assert (=> d!958583 (= lt!1146934 e!2097078)))

(declare-fun c!575343 () Bool)

(declare-datatypes ((tuple2!36398 0))(
  ( (tuple2!36399 (_1!21333 List!36942) (_2!21333 List!36942)) )
))
(declare-fun lt!1146935 () tuple2!36398)

(assert (=> d!958583 (= c!575343 (isEmpty!21045 (_1!21333 lt!1146935)))))

(declare-fun findLongestMatch!788 (Regex!10123 List!36942) tuple2!36398)

(assert (=> d!958583 (= lt!1146935 (findLongestMatch!788 (regex!5364 (rule!7910 (h!42240 tokens!494))) lt!1146722))))

(declare-fun ruleValid!1698 (LexerInterface!4953 Rule!10528) Bool)

(assert (=> d!958583 (ruleValid!1698 thiss!18206 (rule!7910 (h!42240 tokens!494)))))

(assert (=> d!958583 (= (maxPrefixOneRule!1676 thiss!18206 (rule!7910 (h!42240 tokens!494)) lt!1146722) lt!1146934)))

(declare-fun b!3378558 () Bool)

(assert (=> b!3378558 (= e!2097080 e!2097081)))

(declare-fun res!1366596 () Bool)

(assert (=> b!3378558 (=> (not res!1366596) (not e!2097081))))

(assert (=> b!3378558 (= res!1366596 (matchR!4715 (regex!5364 (rule!7910 (h!42240 tokens!494))) (list!13309 (charsOf!3378 (_1!21329 (get!11749 lt!1146934))))))))

(declare-fun b!3378559 () Bool)

(assert (=> b!3378559 (= e!2097078 (Some!7374 (tuple2!36391 (Token!10095 (apply!8551 (transformation!5364 (rule!7910 (h!42240 tokens!494))) (seqFromList!3781 (_1!21333 lt!1146935))) (rule!7910 (h!42240 tokens!494)) (size!27867 (seqFromList!3781 (_1!21333 lt!1146935))) (_1!21333 lt!1146935)) (_2!21333 lt!1146935))))))

(declare-fun lt!1146937 () Unit!51922)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!846 (Regex!10123 List!36942) Unit!51922)

(assert (=> b!3378559 (= lt!1146937 (longestMatchIsAcceptedByMatchOrIsEmpty!846 (regex!5364 (rule!7910 (h!42240 tokens!494))) lt!1146722))))

(declare-fun res!1366598 () Bool)

(declare-fun findLongestMatchInner!873 (Regex!10123 List!36942 Int List!36942 List!36942 Int) tuple2!36398)

(assert (=> b!3378559 (= res!1366598 (isEmpty!21045 (_1!21333 (findLongestMatchInner!873 (regex!5364 (rule!7910 (h!42240 tokens!494))) Nil!36818 (size!27863 Nil!36818) lt!1146722 lt!1146722 (size!27863 lt!1146722)))))))

(declare-fun e!2097079 () Bool)

(assert (=> b!3378559 (=> res!1366598 e!2097079)))

(assert (=> b!3378559 e!2097079))

(declare-fun lt!1146938 () Unit!51922)

(assert (=> b!3378559 (= lt!1146938 lt!1146937)))

(declare-fun lt!1146936 () Unit!51922)

(declare-fun lemmaSemiInverse!1221 (TokenValueInjection!10616 BalanceConc!21820) Unit!51922)

(assert (=> b!3378559 (= lt!1146936 (lemmaSemiInverse!1221 (transformation!5364 (rule!7910 (h!42240 tokens!494))) (seqFromList!3781 (_1!21333 lt!1146935))))))

(declare-fun b!3378560 () Bool)

(assert (=> b!3378560 (= e!2097079 (matchR!4715 (regex!5364 (rule!7910 (h!42240 tokens!494))) (_1!21333 (findLongestMatchInner!873 (regex!5364 (rule!7910 (h!42240 tokens!494))) Nil!36818 (size!27863 Nil!36818) lt!1146722 lt!1146722 (size!27863 lt!1146722)))))))

(assert (= (and d!958583 c!575343) b!3378557))

(assert (= (and d!958583 (not c!575343)) b!3378559))

(assert (= (and b!3378559 (not res!1366598)) b!3378560))

(assert (= (and d!958583 (not res!1366593)) b!3378558))

(assert (= (and b!3378558 res!1366596) b!3378554))

(assert (= (and b!3378554 res!1366594) b!3378556))

(assert (= (and b!3378556 res!1366597) b!3378553))

(assert (= (and b!3378553 res!1366592) b!3378552))

(assert (= (and b!3378552 res!1366595) b!3378555))

(declare-fun m!3742345 () Bool)

(assert (=> b!3378560 m!3742345))

(assert (=> b!3378560 m!3741739))

(assert (=> b!3378560 m!3742345))

(assert (=> b!3378560 m!3741739))

(declare-fun m!3742347 () Bool)

(assert (=> b!3378560 m!3742347))

(declare-fun m!3742349 () Bool)

(assert (=> b!3378560 m!3742349))

(declare-fun m!3742351 () Bool)

(assert (=> d!958583 m!3742351))

(declare-fun m!3742353 () Bool)

(assert (=> d!958583 m!3742353))

(declare-fun m!3742355 () Bool)

(assert (=> d!958583 m!3742355))

(declare-fun m!3742357 () Bool)

(assert (=> d!958583 m!3742357))

(declare-fun m!3742359 () Bool)

(assert (=> b!3378558 m!3742359))

(declare-fun m!3742361 () Bool)

(assert (=> b!3378558 m!3742361))

(assert (=> b!3378558 m!3742361))

(declare-fun m!3742365 () Bool)

(assert (=> b!3378558 m!3742365))

(assert (=> b!3378558 m!3742365))

(declare-fun m!3742369 () Bool)

(assert (=> b!3378558 m!3742369))

(declare-fun m!3742373 () Bool)

(assert (=> b!3378559 m!3742373))

(declare-fun m!3742375 () Bool)

(assert (=> b!3378559 m!3742375))

(assert (=> b!3378559 m!3742345))

(assert (=> b!3378559 m!3741739))

(assert (=> b!3378559 m!3742347))

(assert (=> b!3378559 m!3742373))

(declare-fun m!3742381 () Bool)

(assert (=> b!3378559 m!3742381))

(declare-fun m!3742385 () Bool)

(assert (=> b!3378559 m!3742385))

(assert (=> b!3378559 m!3741739))

(assert (=> b!3378559 m!3742345))

(declare-fun m!3742391 () Bool)

(assert (=> b!3378559 m!3742391))

(assert (=> b!3378559 m!3742373))

(assert (=> b!3378559 m!3742373))

(declare-fun m!3742397 () Bool)

(assert (=> b!3378559 m!3742397))

(assert (=> b!3378554 m!3742359))

(assert (=> b!3378554 m!3742361))

(assert (=> b!3378554 m!3742361))

(assert (=> b!3378554 m!3742365))

(assert (=> b!3378554 m!3742365))

(declare-fun m!3742401 () Bool)

(assert (=> b!3378554 m!3742401))

(assert (=> b!3378555 m!3742359))

(declare-fun m!3742405 () Bool)

(assert (=> b!3378555 m!3742405))

(assert (=> b!3378552 m!3742359))

(declare-fun m!3742409 () Bool)

(assert (=> b!3378552 m!3742409))

(assert (=> b!3378552 m!3742409))

(declare-fun m!3742417 () Bool)

(assert (=> b!3378552 m!3742417))

(assert (=> b!3378553 m!3742359))

(assert (=> b!3378556 m!3742359))

(declare-fun m!3742423 () Bool)

(assert (=> b!3378556 m!3742423))

(assert (=> b!3378556 m!3741739))

(assert (=> b!3377993 d!958583))

(declare-fun d!958587 () Bool)

(assert (=> d!958587 (= (head!7209 lt!1146730) (h!42238 lt!1146730))))

(assert (=> b!3377993 d!958587))

(declare-fun d!958591 () Bool)

(declare-fun e!2097086 () Bool)

(assert (=> d!958591 e!2097086))

(declare-fun res!1366606 () Bool)

(assert (=> d!958591 (=> (not res!1366606) (not e!2097086))))

(assert (=> d!958591 (= res!1366606 (isDefined!5702 (getRuleFromTag!1019 thiss!18206 rules!2135 (tag!5934 (rule!7910 separatorToken!241)))))))

(declare-fun lt!1146944 () Unit!51922)

(assert (=> d!958591 (= lt!1146944 (choose!19527 thiss!18206 rules!2135 lt!1146730 separatorToken!241))))

(assert (=> d!958591 (rulesInvariant!4350 thiss!18206 rules!2135)))

(assert (=> d!958591 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1019 thiss!18206 rules!2135 lt!1146730 separatorToken!241) lt!1146944)))

(declare-fun b!3378570 () Bool)

(declare-fun res!1366607 () Bool)

(assert (=> b!3378570 (=> (not res!1366607) (not e!2097086))))

(assert (=> b!3378570 (= res!1366607 (matchR!4715 (regex!5364 (get!11747 (getRuleFromTag!1019 thiss!18206 rules!2135 (tag!5934 (rule!7910 separatorToken!241))))) (list!13309 (charsOf!3378 separatorToken!241))))))

(declare-fun b!3378571 () Bool)

(assert (=> b!3378571 (= e!2097086 (= (rule!7910 separatorToken!241) (get!11747 (getRuleFromTag!1019 thiss!18206 rules!2135 (tag!5934 (rule!7910 separatorToken!241))))))))

(assert (= (and d!958591 res!1366606) b!3378570))

(assert (= (and b!3378570 res!1366607) b!3378571))

(assert (=> d!958591 m!3741753))

(assert (=> d!958591 m!3741753))

(declare-fun m!3742433 () Bool)

(assert (=> d!958591 m!3742433))

(declare-fun m!3742435 () Bool)

(assert (=> d!958591 m!3742435))

(assert (=> d!958591 m!3741727))

(assert (=> b!3378570 m!3741753))

(declare-fun m!3742437 () Bool)

(assert (=> b!3378570 m!3742437))

(assert (=> b!3378570 m!3741753))

(assert (=> b!3378570 m!3741703))

(declare-fun m!3742439 () Bool)

(assert (=> b!3378570 m!3742439))

(assert (=> b!3378570 m!3741695))

(assert (=> b!3378570 m!3741703))

(assert (=> b!3378570 m!3741695))

(assert (=> b!3378571 m!3741753))

(assert (=> b!3378571 m!3741753))

(assert (=> b!3378571 m!3742437))

(assert (=> b!3377993 d!958591))

(declare-fun d!958595 () Bool)

(assert (=> d!958595 (= (isEmpty!21045 (getSuffix!1458 lt!1146722 lt!1146722)) ((_ is Nil!36818) (getSuffix!1458 lt!1146722 lt!1146722)))))

(assert (=> b!3377993 d!958595))

(declare-fun d!958597 () Bool)

(declare-fun lt!1146949 () Bool)

(assert (=> d!958597 (= lt!1146949 (select (content!5069 (usedCharacters!620 (regex!5364 (rule!7910 separatorToken!241)))) lt!1146717))))

(declare-fun e!2097101 () Bool)

(assert (=> d!958597 (= lt!1146949 e!2097101)))

(declare-fun res!1366617 () Bool)

(assert (=> d!958597 (=> (not res!1366617) (not e!2097101))))

(assert (=> d!958597 (= res!1366617 ((_ is Cons!36818) (usedCharacters!620 (regex!5364 (rule!7910 separatorToken!241)))))))

(assert (=> d!958597 (= (contains!6719 (usedCharacters!620 (regex!5364 (rule!7910 separatorToken!241))) lt!1146717) lt!1146949)))

(declare-fun b!3378586 () Bool)

(declare-fun e!2097100 () Bool)

(assert (=> b!3378586 (= e!2097101 e!2097100)))

(declare-fun res!1366616 () Bool)

(assert (=> b!3378586 (=> res!1366616 e!2097100)))

(assert (=> b!3378586 (= res!1366616 (= (h!42238 (usedCharacters!620 (regex!5364 (rule!7910 separatorToken!241)))) lt!1146717))))

(declare-fun b!3378587 () Bool)

(assert (=> b!3378587 (= e!2097100 (contains!6719 (t!262907 (usedCharacters!620 (regex!5364 (rule!7910 separatorToken!241)))) lt!1146717))))

(assert (= (and d!958597 res!1366617) b!3378586))

(assert (= (and b!3378586 (not res!1366616)) b!3378587))

(assert (=> d!958597 m!3741763))

(declare-fun m!3742463 () Bool)

(assert (=> d!958597 m!3742463))

(declare-fun m!3742465 () Bool)

(assert (=> d!958597 m!3742465))

(declare-fun m!3742467 () Bool)

(assert (=> b!3378587 m!3742467))

(assert (=> b!3377993 d!958597))

(declare-fun d!958605 () Bool)

(declare-fun res!1366622 () Bool)

(declare-fun e!2097118 () Bool)

(assert (=> d!958605 (=> res!1366622 e!2097118)))

(assert (=> d!958605 (= res!1366622 (not ((_ is Cons!36821) rules!2135)))))

(assert (=> d!958605 (= (sepAndNonSepRulesDisjointChars!1558 rules!2135 rules!2135) e!2097118)))

(declare-fun b!3378602 () Bool)

(declare-fun e!2097119 () Bool)

(assert (=> b!3378602 (= e!2097118 e!2097119)))

(declare-fun res!1366623 () Bool)

(assert (=> b!3378602 (=> (not res!1366623) (not e!2097119))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!673 (Rule!10528 List!36945) Bool)

(assert (=> b!3378602 (= res!1366623 (ruleDisjointCharsFromAllFromOtherType!673 (h!42241 rules!2135) rules!2135))))

(declare-fun b!3378604 () Bool)

(assert (=> b!3378604 (= e!2097119 (sepAndNonSepRulesDisjointChars!1558 rules!2135 (t!262910 rules!2135)))))

(assert (= (and d!958605 (not res!1366622)) b!3378602))

(assert (= (and b!3378602 res!1366623) b!3378604))

(declare-fun m!3742477 () Bool)

(assert (=> b!3378602 m!3742477))

(declare-fun m!3742479 () Bool)

(assert (=> b!3378604 m!3742479))

(assert (=> b!3377975 d!958605))

(declare-fun d!958607 () Bool)

(declare-fun lt!1146950 () Bool)

(assert (=> d!958607 (= lt!1146950 (select (content!5068 rules!2135) (rule!7910 separatorToken!241)))))

(declare-fun e!2097123 () Bool)

(assert (=> d!958607 (= lt!1146950 e!2097123)))

(declare-fun res!1366625 () Bool)

(assert (=> d!958607 (=> (not res!1366625) (not e!2097123))))

(assert (=> d!958607 (= res!1366625 ((_ is Cons!36821) rules!2135))))

(assert (=> d!958607 (= (contains!6718 rules!2135 (rule!7910 separatorToken!241)) lt!1146950)))

(declare-fun b!3378607 () Bool)

(declare-fun e!2097124 () Bool)

(assert (=> b!3378607 (= e!2097123 e!2097124)))

(declare-fun res!1366624 () Bool)

(assert (=> b!3378607 (=> res!1366624 e!2097124)))

(assert (=> b!3378607 (= res!1366624 (= (h!42241 rules!2135) (rule!7910 separatorToken!241)))))

(declare-fun b!3378608 () Bool)

(assert (=> b!3378608 (= e!2097124 (contains!6718 (t!262910 rules!2135) (rule!7910 separatorToken!241)))))

(assert (= (and d!958607 res!1366625) b!3378607))

(assert (= (and b!3378607 (not res!1366624)) b!3378608))

(assert (=> d!958607 m!3742105))

(declare-fun m!3742481 () Bool)

(assert (=> d!958607 m!3742481))

(declare-fun m!3742483 () Bool)

(assert (=> b!3378608 m!3742483))

(assert (=> b!3377996 d!958607))

(declare-fun d!958609 () Bool)

(declare-fun lt!1146955 () Bool)

(declare-fun e!2097147 () Bool)

(assert (=> d!958609 (= lt!1146955 e!2097147)))

(declare-fun res!1366633 () Bool)

(assert (=> d!958609 (=> (not res!1366633) (not e!2097147))))

(assert (=> d!958609 (= res!1366633 (= (list!13313 (_1!21328 (lex!2279 thiss!18206 rules!2135 (print!2018 thiss!18206 (singletonSeq!2460 separatorToken!241))))) (list!13313 (singletonSeq!2460 separatorToken!241))))))

(declare-fun e!2097148 () Bool)

(assert (=> d!958609 (= lt!1146955 e!2097148)))

(declare-fun res!1366632 () Bool)

(assert (=> d!958609 (=> (not res!1366632) (not e!2097148))))

(declare-fun lt!1146956 () tuple2!36388)

(assert (=> d!958609 (= res!1366632 (= (size!27866 (_1!21328 lt!1146956)) 1))))

(assert (=> d!958609 (= lt!1146956 (lex!2279 thiss!18206 rules!2135 (print!2018 thiss!18206 (singletonSeq!2460 separatorToken!241))))))

(assert (=> d!958609 (not (isEmpty!21044 rules!2135))))

(assert (=> d!958609 (= (rulesProduceIndividualToken!2445 thiss!18206 rules!2135 separatorToken!241) lt!1146955)))

(declare-fun b!3378649 () Bool)

(declare-fun res!1366634 () Bool)

(assert (=> b!3378649 (=> (not res!1366634) (not e!2097148))))

(assert (=> b!3378649 (= res!1366634 (= (apply!8552 (_1!21328 lt!1146956) 0) separatorToken!241))))

(declare-fun b!3378650 () Bool)

(declare-fun isEmpty!21055 (BalanceConc!21820) Bool)

(assert (=> b!3378650 (= e!2097148 (isEmpty!21055 (_2!21328 lt!1146956)))))

(declare-fun b!3378651 () Bool)

(assert (=> b!3378651 (= e!2097147 (isEmpty!21055 (_2!21328 (lex!2279 thiss!18206 rules!2135 (print!2018 thiss!18206 (singletonSeq!2460 separatorToken!241))))))))

(assert (= (and d!958609 res!1366632) b!3378649))

(assert (= (and b!3378649 res!1366634) b!3378650))

(assert (= (and d!958609 res!1366633) b!3378651))

(declare-fun m!3742489 () Bool)

(assert (=> d!958609 m!3742489))

(declare-fun m!3742491 () Bool)

(assert (=> d!958609 m!3742491))

(assert (=> d!958609 m!3742491))

(declare-fun m!3742493 () Bool)

(assert (=> d!958609 m!3742493))

(declare-fun m!3742495 () Bool)

(assert (=> d!958609 m!3742495))

(declare-fun m!3742497 () Bool)

(assert (=> d!958609 m!3742497))

(declare-fun m!3742499 () Bool)

(assert (=> d!958609 m!3742499))

(assert (=> d!958609 m!3741725))

(assert (=> d!958609 m!3742491))

(assert (=> d!958609 m!3742495))

(declare-fun m!3742501 () Bool)

(assert (=> b!3378649 m!3742501))

(declare-fun m!3742503 () Bool)

(assert (=> b!3378650 m!3742503))

(assert (=> b!3378651 m!3742491))

(assert (=> b!3378651 m!3742491))

(assert (=> b!3378651 m!3742495))

(assert (=> b!3378651 m!3742495))

(assert (=> b!3378651 m!3742497))

(declare-fun m!3742505 () Bool)

(assert (=> b!3378651 m!3742505))

(assert (=> b!3377997 d!958609))

(declare-fun d!958613 () Bool)

(declare-fun c!575345 () Bool)

(assert (=> d!958613 (= c!575345 ((_ is IntegerValue!16782) (value!173334 (h!42240 tokens!494))))))

(declare-fun e!2097149 () Bool)

(assert (=> d!958613 (= (inv!21 (value!173334 (h!42240 tokens!494))) e!2097149)))

(declare-fun b!3378652 () Bool)

(declare-fun res!1366635 () Bool)

(declare-fun e!2097150 () Bool)

(assert (=> b!3378652 (=> res!1366635 e!2097150)))

(assert (=> b!3378652 (= res!1366635 (not ((_ is IntegerValue!16784) (value!173334 (h!42240 tokens!494)))))))

(declare-fun e!2097151 () Bool)

(assert (=> b!3378652 (= e!2097151 e!2097150)))

(declare-fun b!3378653 () Bool)

(assert (=> b!3378653 (= e!2097150 (inv!15 (value!173334 (h!42240 tokens!494))))))

(declare-fun b!3378654 () Bool)

(assert (=> b!3378654 (= e!2097151 (inv!17 (value!173334 (h!42240 tokens!494))))))

(declare-fun b!3378655 () Bool)

(assert (=> b!3378655 (= e!2097149 (inv!16 (value!173334 (h!42240 tokens!494))))))

(declare-fun b!3378656 () Bool)

(assert (=> b!3378656 (= e!2097149 e!2097151)))

(declare-fun c!575346 () Bool)

(assert (=> b!3378656 (= c!575346 ((_ is IntegerValue!16783) (value!173334 (h!42240 tokens!494))))))

(assert (= (and d!958613 c!575345) b!3378655))

(assert (= (and d!958613 (not c!575345)) b!3378656))

(assert (= (and b!3378656 c!575346) b!3378654))

(assert (= (and b!3378656 (not c!575346)) b!3378652))

(assert (= (and b!3378652 (not res!1366635)) b!3378653))

(declare-fun m!3742507 () Bool)

(assert (=> b!3378653 m!3742507))

(declare-fun m!3742509 () Bool)

(assert (=> b!3378654 m!3742509))

(declare-fun m!3742511 () Bool)

(assert (=> b!3378655 m!3742511))

(assert (=> b!3377989 d!958613))

(declare-fun d!958615 () Bool)

(assert (=> d!958615 (= (list!13309 (charsOf!3378 (h!42240 tokens!494))) (list!13312 (c!575218 (charsOf!3378 (h!42240 tokens!494)))))))

(declare-fun bs!554679 () Bool)

(assert (= bs!554679 d!958615))

(declare-fun m!3742513 () Bool)

(assert (=> bs!554679 m!3742513))

(assert (=> b!3377987 d!958615))

(declare-fun d!958617 () Bool)

(declare-fun lt!1146957 () BalanceConc!21820)

(assert (=> d!958617 (= (list!13309 lt!1146957) (originalCharacters!6078 (h!42240 tokens!494)))))

(assert (=> d!958617 (= lt!1146957 (dynLambda!15302 (toChars!7407 (transformation!5364 (rule!7910 (h!42240 tokens!494)))) (value!173334 (h!42240 tokens!494))))))

(assert (=> d!958617 (= (charsOf!3378 (h!42240 tokens!494)) lt!1146957)))

(declare-fun b_lambda!95847 () Bool)

(assert (=> (not b_lambda!95847) (not d!958617)))

(assert (=> d!958617 t!262941))

(declare-fun b_and!234647 () Bool)

(assert (= b_and!234621 (and (=> t!262941 result!223222) b_and!234647)))

(assert (=> d!958617 t!262943))

(declare-fun b_and!234649 () Bool)

(assert (= b_and!234623 (and (=> t!262943 result!223224) b_and!234649)))

(assert (=> d!958617 t!262945))

(declare-fun b_and!234651 () Bool)

(assert (= b_and!234625 (and (=> t!262945 result!223226) b_and!234651)))

(declare-fun m!3742515 () Bool)

(assert (=> d!958617 m!3742515))

(assert (=> d!958617 m!3742213))

(assert (=> b!3377987 d!958617))

(declare-fun d!958619 () Bool)

(assert (=> d!958619 (dynLambda!15301 lambda!120405 (h!42240 tokens!494))))

(declare-fun lt!1146960 () Unit!51922)

(declare-fun choose!19533 (List!36944 Int Token!10094) Unit!51922)

(assert (=> d!958619 (= lt!1146960 (choose!19533 tokens!494 lambda!120405 (h!42240 tokens!494)))))

(declare-fun e!2097154 () Bool)

(assert (=> d!958619 e!2097154))

(declare-fun res!1366638 () Bool)

(assert (=> d!958619 (=> (not res!1366638) (not e!2097154))))

(assert (=> d!958619 (= res!1366638 (forall!7741 tokens!494 lambda!120405))))

(assert (=> d!958619 (= (forallContained!1311 tokens!494 lambda!120405 (h!42240 tokens!494)) lt!1146960)))

(declare-fun b!3378659 () Bool)

(declare-fun contains!6721 (List!36944 Token!10094) Bool)

(assert (=> b!3378659 (= e!2097154 (contains!6721 tokens!494 (h!42240 tokens!494)))))

(assert (= (and d!958619 res!1366638) b!3378659))

(declare-fun b_lambda!95849 () Bool)

(assert (=> (not b_lambda!95849) (not d!958619)))

(assert (=> d!958619 m!3742157))

(declare-fun m!3742517 () Bool)

(assert (=> d!958619 m!3742517))

(assert (=> d!958619 m!3741689))

(declare-fun m!3742519 () Bool)

(assert (=> b!3378659 m!3742519))

(assert (=> b!3377991 d!958619))

(declare-fun d!958621 () Bool)

(assert (=> d!958621 (not (matchR!4715 (regex!5364 (rule!7910 separatorToken!241)) lt!1146730))))

(declare-fun lt!1146963 () Unit!51922)

(declare-fun choose!19534 (Regex!10123 List!36942 C!20432) Unit!51922)

(assert (=> d!958621 (= lt!1146963 (choose!19534 (regex!5364 (rule!7910 separatorToken!241)) lt!1146730 lt!1146717))))

(assert (=> d!958621 (validRegex!4602 (regex!5364 (rule!7910 separatorToken!241)))))

(assert (=> d!958621 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!454 (regex!5364 (rule!7910 separatorToken!241)) lt!1146730 lt!1146717) lt!1146963)))

(declare-fun bs!554680 () Bool)

(assert (= bs!554680 d!958621))

(assert (=> bs!554680 m!3741683))

(declare-fun m!3742521 () Bool)

(assert (=> bs!554680 m!3742521))

(declare-fun m!3742523 () Bool)

(assert (=> bs!554680 m!3742523))

(assert (=> b!3378004 d!958621))

(declare-fun b!3378660 () Bool)

(declare-fun res!1366644 () Bool)

(declare-fun e!2097157 () Bool)

(assert (=> b!3378660 (=> res!1366644 e!2097157)))

(declare-fun e!2097156 () Bool)

(assert (=> b!3378660 (= res!1366644 e!2097156)))

(declare-fun res!1366639 () Bool)

(assert (=> b!3378660 (=> (not res!1366639) (not e!2097156))))

(declare-fun lt!1146964 () Bool)

(assert (=> b!3378660 (= res!1366639 lt!1146964)))

(declare-fun b!3378661 () Bool)

(declare-fun res!1366640 () Bool)

(assert (=> b!3378661 (=> (not res!1366640) (not e!2097156))))

(assert (=> b!3378661 (= res!1366640 (isEmpty!21045 (tail!5343 lt!1146730)))))

(declare-fun b!3378662 () Bool)

(declare-fun e!2097158 () Bool)

(declare-fun e!2097159 () Bool)

(assert (=> b!3378662 (= e!2097158 e!2097159)))

(declare-fun res!1366643 () Bool)

(assert (=> b!3378662 (=> res!1366643 e!2097159)))

(declare-fun call!244436 () Bool)

(assert (=> b!3378662 (= res!1366643 call!244436)))

(declare-fun b!3378663 () Bool)

(declare-fun e!2097160 () Bool)

(assert (=> b!3378663 (= e!2097160 (matchR!4715 (derivativeStep!2999 (regex!5364 (rule!7910 separatorToken!241)) (head!7209 lt!1146730)) (tail!5343 lt!1146730)))))

(declare-fun b!3378664 () Bool)

(declare-fun e!2097155 () Bool)

(assert (=> b!3378664 (= e!2097155 (= lt!1146964 call!244436))))

(declare-fun b!3378665 () Bool)

(declare-fun res!1366641 () Bool)

(assert (=> b!3378665 (=> (not res!1366641) (not e!2097156))))

(assert (=> b!3378665 (= res!1366641 (not call!244436))))

(declare-fun b!3378666 () Bool)

(declare-fun e!2097161 () Bool)

(assert (=> b!3378666 (= e!2097155 e!2097161)))

(declare-fun c!575350 () Bool)

(assert (=> b!3378666 (= c!575350 ((_ is EmptyLang!10123) (regex!5364 (rule!7910 separatorToken!241))))))

(declare-fun b!3378667 () Bool)

(assert (=> b!3378667 (= e!2097160 (nullable!3446 (regex!5364 (rule!7910 separatorToken!241))))))

(declare-fun d!958623 () Bool)

(assert (=> d!958623 e!2097155))

(declare-fun c!575348 () Bool)

(assert (=> d!958623 (= c!575348 ((_ is EmptyExpr!10123) (regex!5364 (rule!7910 separatorToken!241))))))

(assert (=> d!958623 (= lt!1146964 e!2097160)))

(declare-fun c!575349 () Bool)

(assert (=> d!958623 (= c!575349 (isEmpty!21045 lt!1146730))))

(assert (=> d!958623 (validRegex!4602 (regex!5364 (rule!7910 separatorToken!241)))))

(assert (=> d!958623 (= (matchR!4715 (regex!5364 (rule!7910 separatorToken!241)) lt!1146730) lt!1146964)))

(declare-fun b!3378668 () Bool)

(declare-fun res!1366645 () Bool)

(assert (=> b!3378668 (=> res!1366645 e!2097159)))

(assert (=> b!3378668 (= res!1366645 (not (isEmpty!21045 (tail!5343 lt!1146730))))))

(declare-fun b!3378669 () Bool)

(assert (=> b!3378669 (= e!2097157 e!2097158)))

(declare-fun res!1366646 () Bool)

(assert (=> b!3378669 (=> (not res!1366646) (not e!2097158))))

(assert (=> b!3378669 (= res!1366646 (not lt!1146964))))

(declare-fun b!3378670 () Bool)

(assert (=> b!3378670 (= e!2097156 (= (head!7209 lt!1146730) (c!575219 (regex!5364 (rule!7910 separatorToken!241)))))))

(declare-fun b!3378671 () Bool)

(declare-fun res!1366642 () Bool)

(assert (=> b!3378671 (=> res!1366642 e!2097157)))

(assert (=> b!3378671 (= res!1366642 (not ((_ is ElementMatch!10123) (regex!5364 (rule!7910 separatorToken!241)))))))

(assert (=> b!3378671 (= e!2097161 e!2097157)))

(declare-fun b!3378672 () Bool)

(assert (=> b!3378672 (= e!2097159 (not (= (head!7209 lt!1146730) (c!575219 (regex!5364 (rule!7910 separatorToken!241))))))))

(declare-fun bm!244431 () Bool)

(assert (=> bm!244431 (= call!244436 (isEmpty!21045 lt!1146730))))

(declare-fun b!3378673 () Bool)

(assert (=> b!3378673 (= e!2097161 (not lt!1146964))))

(assert (= (and d!958623 c!575349) b!3378667))

(assert (= (and d!958623 (not c!575349)) b!3378663))

(assert (= (and d!958623 c!575348) b!3378664))

(assert (= (and d!958623 (not c!575348)) b!3378666))

(assert (= (and b!3378666 c!575350) b!3378673))

(assert (= (and b!3378666 (not c!575350)) b!3378671))

(assert (= (and b!3378671 (not res!1366642)) b!3378660))

(assert (= (and b!3378660 res!1366639) b!3378665))

(assert (= (and b!3378665 res!1366641) b!3378661))

(assert (= (and b!3378661 res!1366640) b!3378670))

(assert (= (and b!3378660 (not res!1366644)) b!3378669))

(assert (= (and b!3378669 res!1366646) b!3378662))

(assert (= (and b!3378662 (not res!1366643)) b!3378668))

(assert (= (and b!3378668 (not res!1366645)) b!3378672))

(assert (= (or b!3378664 b!3378662 b!3378665) bm!244431))

(assert (=> b!3378672 m!3741771))

(declare-fun m!3742525 () Bool)

(assert (=> b!3378667 m!3742525))

(assert (=> b!3378663 m!3741771))

(assert (=> b!3378663 m!3741771))

(declare-fun m!3742527 () Bool)

(assert (=> b!3378663 m!3742527))

(assert (=> b!3378663 m!3742085))

(assert (=> b!3378663 m!3742527))

(assert (=> b!3378663 m!3742085))

(declare-fun m!3742529 () Bool)

(assert (=> b!3378663 m!3742529))

(assert (=> bm!244431 m!3742089))

(assert (=> b!3378670 m!3741771))

(assert (=> d!958623 m!3742089))

(assert (=> d!958623 m!3742523))

(assert (=> b!3378668 m!3742085))

(assert (=> b!3378668 m!3742085))

(assert (=> b!3378668 m!3742093))

(assert (=> b!3378661 m!3742085))

(assert (=> b!3378661 m!3742085))

(assert (=> b!3378661 m!3742093))

(assert (=> b!3378004 d!958623))

(declare-fun d!958625 () Bool)

(assert (=> d!958625 (= (inv!49885 (tag!5934 (rule!7910 (h!42240 tokens!494)))) (= (mod (str.len (value!173333 (tag!5934 (rule!7910 (h!42240 tokens!494))))) 2) 0))))

(assert (=> b!3378003 d!958625))

(declare-fun d!958627 () Bool)

(declare-fun res!1366647 () Bool)

(declare-fun e!2097162 () Bool)

(assert (=> d!958627 (=> (not res!1366647) (not e!2097162))))

(assert (=> d!958627 (= res!1366647 (semiInverseModEq!2237 (toChars!7407 (transformation!5364 (rule!7910 (h!42240 tokens!494)))) (toValue!7548 (transformation!5364 (rule!7910 (h!42240 tokens!494))))))))

(assert (=> d!958627 (= (inv!49888 (transformation!5364 (rule!7910 (h!42240 tokens!494)))) e!2097162)))

(declare-fun b!3378674 () Bool)

(assert (=> b!3378674 (= e!2097162 (equivClasses!2136 (toChars!7407 (transformation!5364 (rule!7910 (h!42240 tokens!494)))) (toValue!7548 (transformation!5364 (rule!7910 (h!42240 tokens!494))))))))

(assert (= (and d!958627 res!1366647) b!3378674))

(declare-fun m!3742531 () Bool)

(assert (=> d!958627 m!3742531))

(declare-fun m!3742533 () Bool)

(assert (=> b!3378674 m!3742533))

(assert (=> b!3378003 d!958627))

(declare-fun d!958629 () Bool)

(declare-fun res!1366648 () Bool)

(declare-fun e!2097163 () Bool)

(assert (=> d!958629 (=> (not res!1366648) (not e!2097163))))

(assert (=> d!958629 (= res!1366648 (not (isEmpty!21045 (originalCharacters!6078 separatorToken!241))))))

(assert (=> d!958629 (= (inv!49889 separatorToken!241) e!2097163)))

(declare-fun b!3378675 () Bool)

(declare-fun res!1366649 () Bool)

(assert (=> b!3378675 (=> (not res!1366649) (not e!2097163))))

(assert (=> b!3378675 (= res!1366649 (= (originalCharacters!6078 separatorToken!241) (list!13309 (dynLambda!15302 (toChars!7407 (transformation!5364 (rule!7910 separatorToken!241))) (value!173334 separatorToken!241)))))))

(declare-fun b!3378676 () Bool)

(assert (=> b!3378676 (= e!2097163 (= (size!27862 separatorToken!241) (size!27863 (originalCharacters!6078 separatorToken!241))))))

(assert (= (and d!958629 res!1366648) b!3378675))

(assert (= (and b!3378675 res!1366649) b!3378676))

(declare-fun b_lambda!95851 () Bool)

(assert (=> (not b_lambda!95851) (not b!3378675)))

(assert (=> b!3378675 t!262933))

(declare-fun b_and!234653 () Bool)

(assert (= b_and!234647 (and (=> t!262933 result!223214) b_and!234653)))

(assert (=> b!3378675 t!262935))

(declare-fun b_and!234655 () Bool)

(assert (= b_and!234649 (and (=> t!262935 result!223218) b_and!234655)))

(assert (=> b!3378675 t!262937))

(declare-fun b_and!234657 () Bool)

(assert (= b_and!234651 (and (=> t!262937 result!223220) b_and!234657)))

(declare-fun m!3742535 () Bool)

(assert (=> d!958629 m!3742535))

(assert (=> b!3378675 m!3742173))

(assert (=> b!3378675 m!3742173))

(declare-fun m!3742537 () Bool)

(assert (=> b!3378675 m!3742537))

(declare-fun m!3742539 () Bool)

(assert (=> b!3378676 m!3742539))

(assert (=> start!314558 d!958629))

(declare-fun d!958631 () Bool)

(declare-fun lt!1146965 () Bool)

(declare-fun e!2097164 () Bool)

(assert (=> d!958631 (= lt!1146965 e!2097164)))

(declare-fun res!1366651 () Bool)

(assert (=> d!958631 (=> (not res!1366651) (not e!2097164))))

(assert (=> d!958631 (= res!1366651 (= (list!13313 (_1!21328 (lex!2279 thiss!18206 rules!2135 (print!2018 thiss!18206 (singletonSeq!2460 (h!42240 tokens!494)))))) (list!13313 (singletonSeq!2460 (h!42240 tokens!494)))))))

(declare-fun e!2097165 () Bool)

(assert (=> d!958631 (= lt!1146965 e!2097165)))

(declare-fun res!1366650 () Bool)

(assert (=> d!958631 (=> (not res!1366650) (not e!2097165))))

(declare-fun lt!1146966 () tuple2!36388)

(assert (=> d!958631 (= res!1366650 (= (size!27866 (_1!21328 lt!1146966)) 1))))

(assert (=> d!958631 (= lt!1146966 (lex!2279 thiss!18206 rules!2135 (print!2018 thiss!18206 (singletonSeq!2460 (h!42240 tokens!494)))))))

(assert (=> d!958631 (not (isEmpty!21044 rules!2135))))

(assert (=> d!958631 (= (rulesProduceIndividualToken!2445 thiss!18206 rules!2135 (h!42240 tokens!494)) lt!1146965)))

(declare-fun b!3378677 () Bool)

(declare-fun res!1366652 () Bool)

(assert (=> b!3378677 (=> (not res!1366652) (not e!2097165))))

(assert (=> b!3378677 (= res!1366652 (= (apply!8552 (_1!21328 lt!1146966) 0) (h!42240 tokens!494)))))

(declare-fun b!3378678 () Bool)

(assert (=> b!3378678 (= e!2097165 (isEmpty!21055 (_2!21328 lt!1146966)))))

(declare-fun b!3378679 () Bool)

(assert (=> b!3378679 (= e!2097164 (isEmpty!21055 (_2!21328 (lex!2279 thiss!18206 rules!2135 (print!2018 thiss!18206 (singletonSeq!2460 (h!42240 tokens!494)))))))))

(assert (= (and d!958631 res!1366650) b!3378677))

(assert (= (and b!3378677 res!1366652) b!3378678))

(assert (= (and d!958631 res!1366651) b!3378679))

(declare-fun m!3742541 () Bool)

(assert (=> d!958631 m!3742541))

(assert (=> d!958631 m!3741671))

(assert (=> d!958631 m!3741671))

(declare-fun m!3742543 () Bool)

(assert (=> d!958631 m!3742543))

(declare-fun m!3742545 () Bool)

(assert (=> d!958631 m!3742545))

(declare-fun m!3742547 () Bool)

(assert (=> d!958631 m!3742547))

(declare-fun m!3742549 () Bool)

(assert (=> d!958631 m!3742549))

(assert (=> d!958631 m!3741725))

(assert (=> d!958631 m!3741671))

(assert (=> d!958631 m!3742545))

(declare-fun m!3742551 () Bool)

(assert (=> b!3378677 m!3742551))

(declare-fun m!3742553 () Bool)

(assert (=> b!3378678 m!3742553))

(assert (=> b!3378679 m!3741671))

(assert (=> b!3378679 m!3741671))

(assert (=> b!3378679 m!3742545))

(assert (=> b!3378679 m!3742545))

(assert (=> b!3378679 m!3742547))

(declare-fun m!3742555 () Bool)

(assert (=> b!3378679 m!3742555))

(assert (=> b!3377985 d!958631))

(declare-fun b!3378690 () Bool)

(declare-fun e!2097168 () Bool)

(declare-fun tp_is_empty!17465 () Bool)

(assert (=> b!3378690 (= e!2097168 tp_is_empty!17465)))

(declare-fun b!3378691 () Bool)

(declare-fun tp!1056430 () Bool)

(declare-fun tp!1056431 () Bool)

(assert (=> b!3378691 (= e!2097168 (and tp!1056430 tp!1056431))))

(assert (=> b!3377972 (= tp!1056345 e!2097168)))

(declare-fun b!3378692 () Bool)

(declare-fun tp!1056429 () Bool)

(assert (=> b!3378692 (= e!2097168 tp!1056429)))

(declare-fun b!3378693 () Bool)

(declare-fun tp!1056427 () Bool)

(declare-fun tp!1056428 () Bool)

(assert (=> b!3378693 (= e!2097168 (and tp!1056427 tp!1056428))))

(assert (= (and b!3377972 ((_ is ElementMatch!10123) (regex!5364 (rule!7910 separatorToken!241)))) b!3378690))

(assert (= (and b!3377972 ((_ is Concat!15717) (regex!5364 (rule!7910 separatorToken!241)))) b!3378691))

(assert (= (and b!3377972 ((_ is Star!10123) (regex!5364 (rule!7910 separatorToken!241)))) b!3378692))

(assert (= (and b!3377972 ((_ is Union!10123) (regex!5364 (rule!7910 separatorToken!241)))) b!3378693))

(declare-fun b!3378698 () Bool)

(declare-fun e!2097171 () Bool)

(declare-fun tp!1056434 () Bool)

(assert (=> b!3378698 (= e!2097171 (and tp_is_empty!17465 tp!1056434))))

(assert (=> b!3377989 (= tp!1056352 e!2097171)))

(assert (= (and b!3377989 ((_ is Cons!36818) (originalCharacters!6078 (h!42240 tokens!494)))) b!3378698))

(declare-fun b!3378699 () Bool)

(declare-fun e!2097172 () Bool)

(assert (=> b!3378699 (= e!2097172 tp_is_empty!17465)))

(declare-fun b!3378700 () Bool)

(declare-fun tp!1056438 () Bool)

(declare-fun tp!1056439 () Bool)

(assert (=> b!3378700 (= e!2097172 (and tp!1056438 tp!1056439))))

(assert (=> b!3378003 (= tp!1056344 e!2097172)))

(declare-fun b!3378701 () Bool)

(declare-fun tp!1056437 () Bool)

(assert (=> b!3378701 (= e!2097172 tp!1056437)))

(declare-fun b!3378702 () Bool)

(declare-fun tp!1056435 () Bool)

(declare-fun tp!1056436 () Bool)

(assert (=> b!3378702 (= e!2097172 (and tp!1056435 tp!1056436))))

(assert (= (and b!3378003 ((_ is ElementMatch!10123) (regex!5364 (rule!7910 (h!42240 tokens!494))))) b!3378699))

(assert (= (and b!3378003 ((_ is Concat!15717) (regex!5364 (rule!7910 (h!42240 tokens!494))))) b!3378700))

(assert (= (and b!3378003 ((_ is Star!10123) (regex!5364 (rule!7910 (h!42240 tokens!494))))) b!3378701))

(assert (= (and b!3378003 ((_ is Union!10123) (regex!5364 (rule!7910 (h!42240 tokens!494))))) b!3378702))

(declare-fun b!3378716 () Bool)

(declare-fun b_free!88365 () Bool)

(declare-fun b_next!89069 () Bool)

(assert (=> b!3378716 (= b_free!88365 (not b_next!89069))))

(declare-fun t!262974 () Bool)

(declare-fun tb!179867 () Bool)

(assert (=> (and b!3378716 (= (toValue!7548 (transformation!5364 (rule!7910 (h!42240 (t!262909 tokens!494))))) (toValue!7548 (transformation!5364 (rule!7910 (h!42240 tokens!494))))) t!262974) tb!179867))

(declare-fun result!223270 () Bool)

(assert (= result!223270 result!223236))

(assert (=> d!958555 t!262974))

(declare-fun tp!1056450 () Bool)

(declare-fun b_and!234659 () Bool)

(assert (=> b!3378716 (= tp!1056450 (and (=> t!262974 result!223270) b_and!234659))))

(declare-fun b_free!88367 () Bool)

(declare-fun b_next!89071 () Bool)

(assert (=> b!3378716 (= b_free!88367 (not b_next!89071))))

(declare-fun tb!179869 () Bool)

(declare-fun t!262976 () Bool)

(assert (=> (and b!3378716 (= (toChars!7407 (transformation!5364 (rule!7910 (h!42240 (t!262909 tokens!494))))) (toChars!7407 (transformation!5364 (rule!7910 separatorToken!241)))) t!262976) tb!179869))

(declare-fun result!223272 () Bool)

(assert (= result!223272 result!223214))

(assert (=> d!958515 t!262976))

(declare-fun t!262978 () Bool)

(declare-fun tb!179871 () Bool)

(assert (=> (and b!3378716 (= (toChars!7407 (transformation!5364 (rule!7910 (h!42240 (t!262909 tokens!494))))) (toChars!7407 (transformation!5364 (rule!7910 (h!42240 tokens!494))))) t!262978) tb!179871))

(declare-fun result!223274 () Bool)

(assert (= result!223274 result!223222))

(assert (=> b!3378369 t!262978))

(assert (=> d!958617 t!262978))

(assert (=> b!3378675 t!262976))

(declare-fun tp!1056452 () Bool)

(declare-fun b_and!234661 () Bool)

(assert (=> b!3378716 (= tp!1056452 (and (=> t!262976 result!223272) (=> t!262978 result!223274) b_and!234661))))

(declare-fun e!2097187 () Bool)

(assert (=> b!3377992 (= tp!1056349 e!2097187)))

(declare-fun e!2097190 () Bool)

(declare-fun tp!1056453 () Bool)

(declare-fun b!3378715 () Bool)

(declare-fun e!2097188 () Bool)

(assert (=> b!3378715 (= e!2097190 (and tp!1056453 (inv!49885 (tag!5934 (rule!7910 (h!42240 (t!262909 tokens!494))))) (inv!49888 (transformation!5364 (rule!7910 (h!42240 (t!262909 tokens!494))))) e!2097188))))

(declare-fun tp!1056454 () Bool)

(declare-fun e!2097185 () Bool)

(declare-fun b!3378714 () Bool)

(assert (=> b!3378714 (= e!2097185 (and (inv!21 (value!173334 (h!42240 (t!262909 tokens!494)))) e!2097190 tp!1056454))))

(assert (=> b!3378716 (= e!2097188 (and tp!1056450 tp!1056452))))

(declare-fun b!3378713 () Bool)

(declare-fun tp!1056451 () Bool)

(assert (=> b!3378713 (= e!2097187 (and (inv!49889 (h!42240 (t!262909 tokens!494))) e!2097185 tp!1056451))))

(assert (= b!3378715 b!3378716))

(assert (= b!3378714 b!3378715))

(assert (= b!3378713 b!3378714))

(assert (= (and b!3377992 ((_ is Cons!36820) (t!262909 tokens!494))) b!3378713))

(declare-fun m!3742557 () Bool)

(assert (=> b!3378715 m!3742557))

(declare-fun m!3742559 () Bool)

(assert (=> b!3378715 m!3742559))

(declare-fun m!3742561 () Bool)

(assert (=> b!3378714 m!3742561))

(declare-fun m!3742563 () Bool)

(assert (=> b!3378713 m!3742563))

(declare-fun b!3378717 () Bool)

(declare-fun e!2097191 () Bool)

(declare-fun tp!1056455 () Bool)

(assert (=> b!3378717 (= e!2097191 (and tp_is_empty!17465 tp!1056455))))

(assert (=> b!3377980 (= tp!1056348 e!2097191)))

(assert (= (and b!3377980 ((_ is Cons!36818) (originalCharacters!6078 separatorToken!241))) b!3378717))

(declare-fun b!3378718 () Bool)

(declare-fun e!2097192 () Bool)

(assert (=> b!3378718 (= e!2097192 tp_is_empty!17465)))

(declare-fun b!3378719 () Bool)

(declare-fun tp!1056459 () Bool)

(declare-fun tp!1056460 () Bool)

(assert (=> b!3378719 (= e!2097192 (and tp!1056459 tp!1056460))))

(assert (=> b!3378002 (= tp!1056341 e!2097192)))

(declare-fun b!3378720 () Bool)

(declare-fun tp!1056458 () Bool)

(assert (=> b!3378720 (= e!2097192 tp!1056458)))

(declare-fun b!3378721 () Bool)

(declare-fun tp!1056456 () Bool)

(declare-fun tp!1056457 () Bool)

(assert (=> b!3378721 (= e!2097192 (and tp!1056456 tp!1056457))))

(assert (= (and b!3378002 ((_ is ElementMatch!10123) (regex!5364 (h!42241 rules!2135)))) b!3378718))

(assert (= (and b!3378002 ((_ is Concat!15717) (regex!5364 (h!42241 rules!2135)))) b!3378719))

(assert (= (and b!3378002 ((_ is Star!10123) (regex!5364 (h!42241 rules!2135)))) b!3378720))

(assert (= (and b!3378002 ((_ is Union!10123) (regex!5364 (h!42241 rules!2135)))) b!3378721))

(declare-fun b!3378732 () Bool)

(declare-fun b_free!88369 () Bool)

(declare-fun b_next!89073 () Bool)

(assert (=> b!3378732 (= b_free!88369 (not b_next!89073))))

(declare-fun t!262980 () Bool)

(declare-fun tb!179873 () Bool)

(assert (=> (and b!3378732 (= (toValue!7548 (transformation!5364 (h!42241 (t!262910 rules!2135)))) (toValue!7548 (transformation!5364 (rule!7910 (h!42240 tokens!494))))) t!262980) tb!179873))

(declare-fun result!223278 () Bool)

(assert (= result!223278 result!223236))

(assert (=> d!958555 t!262980))

(declare-fun b_and!234663 () Bool)

(declare-fun tp!1056469 () Bool)

(assert (=> b!3378732 (= tp!1056469 (and (=> t!262980 result!223278) b_and!234663))))

(declare-fun b_free!88371 () Bool)

(declare-fun b_next!89075 () Bool)

(assert (=> b!3378732 (= b_free!88371 (not b_next!89075))))

(declare-fun tb!179875 () Bool)

(declare-fun t!262982 () Bool)

(assert (=> (and b!3378732 (= (toChars!7407 (transformation!5364 (h!42241 (t!262910 rules!2135)))) (toChars!7407 (transformation!5364 (rule!7910 separatorToken!241)))) t!262982) tb!179875))

(declare-fun result!223280 () Bool)

(assert (= result!223280 result!223214))

(assert (=> d!958515 t!262982))

(declare-fun tb!179877 () Bool)

(declare-fun t!262984 () Bool)

(assert (=> (and b!3378732 (= (toChars!7407 (transformation!5364 (h!42241 (t!262910 rules!2135)))) (toChars!7407 (transformation!5364 (rule!7910 (h!42240 tokens!494))))) t!262984) tb!179877))

(declare-fun result!223282 () Bool)

(assert (= result!223282 result!223222))

(assert (=> b!3378369 t!262984))

(assert (=> d!958617 t!262984))

(assert (=> b!3378675 t!262982))

(declare-fun b_and!234665 () Bool)

(declare-fun tp!1056471 () Bool)

(assert (=> b!3378732 (= tp!1056471 (and (=> t!262982 result!223280) (=> t!262984 result!223282) b_and!234665))))

(declare-fun e!2097201 () Bool)

(assert (=> b!3378732 (= e!2097201 (and tp!1056469 tp!1056471))))

(declare-fun b!3378731 () Bool)

(declare-fun e!2097204 () Bool)

(declare-fun tp!1056472 () Bool)

(assert (=> b!3378731 (= e!2097204 (and tp!1056472 (inv!49885 (tag!5934 (h!42241 (t!262910 rules!2135)))) (inv!49888 (transformation!5364 (h!42241 (t!262910 rules!2135)))) e!2097201))))

(declare-fun b!3378730 () Bool)

(declare-fun e!2097202 () Bool)

(declare-fun tp!1056470 () Bool)

(assert (=> b!3378730 (= e!2097202 (and e!2097204 tp!1056470))))

(assert (=> b!3377995 (= tp!1056351 e!2097202)))

(assert (= b!3378731 b!3378732))

(assert (= b!3378730 b!3378731))

(assert (= (and b!3377995 ((_ is Cons!36821) (t!262910 rules!2135))) b!3378730))

(declare-fun m!3742565 () Bool)

(assert (=> b!3378731 m!3742565))

(declare-fun m!3742567 () Bool)

(assert (=> b!3378731 m!3742567))

(declare-fun b_lambda!95853 () Bool)

(assert (= b_lambda!95851 (or (and b!3377988 b_free!88351) (and b!3378732 b_free!88371 (= (toChars!7407 (transformation!5364 (h!42241 (t!262910 rules!2135)))) (toChars!7407 (transformation!5364 (rule!7910 separatorToken!241))))) (and b!3378000 b_free!88347 (= (toChars!7407 (transformation!5364 (rule!7910 (h!42240 tokens!494)))) (toChars!7407 (transformation!5364 (rule!7910 separatorToken!241))))) (and b!3378716 b_free!88367 (= (toChars!7407 (transformation!5364 (rule!7910 (h!42240 (t!262909 tokens!494))))) (toChars!7407 (transformation!5364 (rule!7910 separatorToken!241))))) (and b!3377981 b_free!88355 (= (toChars!7407 (transformation!5364 (h!42241 rules!2135))) (toChars!7407 (transformation!5364 (rule!7910 separatorToken!241))))) b_lambda!95853)))

(declare-fun b_lambda!95855 () Bool)

(assert (= b_lambda!95831 (or (and b!3378000 b_free!88345) (and b!3378716 b_free!88365 (= (toValue!7548 (transformation!5364 (rule!7910 (h!42240 (t!262909 tokens!494))))) (toValue!7548 (transformation!5364 (rule!7910 (h!42240 tokens!494)))))) (and b!3377981 b_free!88353 (= (toValue!7548 (transformation!5364 (h!42241 rules!2135))) (toValue!7548 (transformation!5364 (rule!7910 (h!42240 tokens!494)))))) (and b!3378732 b_free!88369 (= (toValue!7548 (transformation!5364 (h!42241 (t!262910 rules!2135)))) (toValue!7548 (transformation!5364 (rule!7910 (h!42240 tokens!494)))))) (and b!3377988 b_free!88349 (= (toValue!7548 (transformation!5364 (rule!7910 separatorToken!241))) (toValue!7548 (transformation!5364 (rule!7910 (h!42240 tokens!494)))))) b_lambda!95855)))

(declare-fun b_lambda!95857 () Bool)

(assert (= b_lambda!95827 (or (and b!3378716 b_free!88367 (= (toChars!7407 (transformation!5364 (rule!7910 (h!42240 (t!262909 tokens!494))))) (toChars!7407 (transformation!5364 (rule!7910 (h!42240 tokens!494)))))) (and b!3377981 b_free!88355 (= (toChars!7407 (transformation!5364 (h!42241 rules!2135))) (toChars!7407 (transformation!5364 (rule!7910 (h!42240 tokens!494)))))) (and b!3377988 b_free!88351 (= (toChars!7407 (transformation!5364 (rule!7910 separatorToken!241))) (toChars!7407 (transformation!5364 (rule!7910 (h!42240 tokens!494)))))) (and b!3378732 b_free!88371 (= (toChars!7407 (transformation!5364 (h!42241 (t!262910 rules!2135)))) (toChars!7407 (transformation!5364 (rule!7910 (h!42240 tokens!494)))))) (and b!3378000 b_free!88347) b_lambda!95857)))

(declare-fun b_lambda!95859 () Bool)

(assert (= b_lambda!95849 (or b!3377973 b_lambda!95859)))

(declare-fun bs!554681 () Bool)

(declare-fun d!958633 () Bool)

(assert (= bs!554681 (and d!958633 b!3377973)))

(assert (=> bs!554681 (= (dynLambda!15301 lambda!120405 (h!42240 tokens!494)) (not (isSeparator!5364 (rule!7910 (h!42240 tokens!494)))))))

(assert (=> d!958619 d!958633))

(declare-fun b_lambda!95861 () Bool)

(assert (= b_lambda!95847 (or (and b!3378716 b_free!88367 (= (toChars!7407 (transformation!5364 (rule!7910 (h!42240 (t!262909 tokens!494))))) (toChars!7407 (transformation!5364 (rule!7910 (h!42240 tokens!494)))))) (and b!3377981 b_free!88355 (= (toChars!7407 (transformation!5364 (h!42241 rules!2135))) (toChars!7407 (transformation!5364 (rule!7910 (h!42240 tokens!494)))))) (and b!3377988 b_free!88351 (= (toChars!7407 (transformation!5364 (rule!7910 separatorToken!241))) (toChars!7407 (transformation!5364 (rule!7910 (h!42240 tokens!494)))))) (and b!3378732 b_free!88371 (= (toChars!7407 (transformation!5364 (h!42241 (t!262910 rules!2135)))) (toChars!7407 (transformation!5364 (rule!7910 (h!42240 tokens!494)))))) (and b!3378000 b_free!88347) b_lambda!95861)))

(declare-fun b_lambda!95863 () Bool)

(assert (= b_lambda!95823 (or (and b!3377988 b_free!88351) (and b!3378732 b_free!88371 (= (toChars!7407 (transformation!5364 (h!42241 (t!262910 rules!2135)))) (toChars!7407 (transformation!5364 (rule!7910 separatorToken!241))))) (and b!3378000 b_free!88347 (= (toChars!7407 (transformation!5364 (rule!7910 (h!42240 tokens!494)))) (toChars!7407 (transformation!5364 (rule!7910 separatorToken!241))))) (and b!3378716 b_free!88367 (= (toChars!7407 (transformation!5364 (rule!7910 (h!42240 (t!262909 tokens!494))))) (toChars!7407 (transformation!5364 (rule!7910 separatorToken!241))))) (and b!3377981 b_free!88355 (= (toChars!7407 (transformation!5364 (h!42241 rules!2135))) (toChars!7407 (transformation!5364 (rule!7910 separatorToken!241))))) b_lambda!95863)))

(declare-fun b_lambda!95865 () Bool)

(assert (= b_lambda!95821 (or b!3377973 b_lambda!95865)))

(assert (=> b!3378324 d!958633))

(check-sat (not b!3378604) (not b!3378228) (not d!958547) (not b!3378701) (not d!958607) (not b!3378259) (not b!3378134) (not d!958475) (not b!3378128) (not b!3378558) (not b_next!89071) b_and!234653 (not d!958521) (not d!958609) (not b!3378719) (not b!3378700) (not b!3378560) (not b!3378416) (not b!3378229) (not bm!244403) (not b!3378371) (not b!3378650) (not b!3378730) (not b!3378552) (not b!3378355) (not b!3378715) (not b!3378667) b_and!234663 (not b!3378147) (not bm!244418) (not b!3378654) (not d!958519) (not bm!244405) (not b_lambda!95859) (not b!3378231) (not d!958487) (not d!958437) (not d!958619) (not b_next!89075) (not b_next!89051) (not d!958457) (not d!958479) (not b!3378659) (not b!3378668) (not b!3378496) (not b!3378713) (not b_next!89059) (not b!3378674) (not b!3378653) b_and!234655 (not b_lambda!95863) (not b!3378305) (not b!3378608) (not b_next!89069) (not b!3378417) (not b!3378240) (not b_lambda!95855) b_and!234637 (not b!3378721) (not b!3378167) (not d!958489) (not bm!244431) (not bm!244417) (not d!958629) (not b!3378554) (not b!3378693) (not b!3378672) (not d!958577) (not b!3378377) (not b!3378559) (not b!3378676) (not b!3378232) (not b!3378679) (not b_lambda!95865) (not b!3378369) (not b!3378500) (not b!3378677) (not b!3378243) (not b!3378494) (not b!3378570) (not b!3378241) b_and!234657 (not b!3378137) (not d!958617) (not b!3378420) (not b!3378376) (not b_lambda!95853) (not d!958491) (not d!958433) (not b!3378236) (not b!3378649) (not b!3378556) (not b!3378264) (not b!3378714) (not b!3378328) (not b!3378354) (not d!958529) (not b!3378692) (not b_next!89073) (not b_lambda!95861) (not b!3378325) (not b!3378720) (not b_next!89055) (not d!958579) (not d!958503) (not b!3378702) (not b_next!89057) (not d!958515) (not b!3378698) (not d!958623) (not b!3378258) (not b!3378661) (not b_next!89053) (not b!3378314) (not b!3378180) b_and!234659 (not d!958533) (not d!958597) (not d!958615) (not d!958461) (not b!3378270) (not bm!244415) (not d!958443) (not b!3378555) (not b!3378587) (not b!3378691) (not b!3378139) (not d!958563) (not b!3378512) (not b!3378651) (not b_next!89049) (not b!3378135) (not b!3378260) (not d!958545) (not b!3378234) (not b!3378149) b_and!234665 (not d!958435) (not d!958627) (not d!958631) (not d!958621) (not b!3378602) (not b!3378678) (not d!958517) (not d!958591) (not tb!179849) (not b!3378465) (not tb!179837) (not b!3378370) (not b!3378731) (not d!958507) (not b_lambda!95857) (not b!3378571) b_and!234633 (not d!958583) b_and!234661 (not b!3378717) b_and!234635 (not b!3378130) (not d!958511) (not b!3378553) (not b!3378333) (not tb!179831) (not d!958531) (not d!958513) (not d!958541) (not b!3378319) (not b!3378670) (not b!3378675) (not b!3378655) tp_is_empty!17465 (not d!958565) (not d!958403) (not b!3378245) (not b!3378663))
(check-sat b_and!234663 (not b_next!89059) b_and!234655 (not b_next!89069) b_and!234637 b_and!234657 (not b_next!89057) (not b_next!89049) b_and!234665 (not b_next!89071) b_and!234653 (not b_next!89075) (not b_next!89051) (not b_next!89073) (not b_next!89055) b_and!234659 (not b_next!89053) b_and!234633 b_and!234635 b_and!234661)
