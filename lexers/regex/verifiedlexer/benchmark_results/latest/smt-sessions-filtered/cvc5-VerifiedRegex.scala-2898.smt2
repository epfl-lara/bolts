; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!169580 () Bool)

(assert start!169580)

(declare-fun b!1727118 () Bool)

(declare-fun b_free!47175 () Bool)

(declare-fun b_next!47879 () Bool)

(assert (=> b!1727118 (= b_free!47175 (not b_next!47879))))

(declare-fun tp!492755 () Bool)

(declare-fun b_and!126849 () Bool)

(assert (=> b!1727118 (= tp!492755 b_and!126849)))

(declare-fun b_free!47177 () Bool)

(declare-fun b_next!47881 () Bool)

(assert (=> b!1727118 (= b_free!47177 (not b_next!47881))))

(declare-fun tp!492750 () Bool)

(declare-fun b_and!126851 () Bool)

(assert (=> b!1727118 (= tp!492750 b_and!126851)))

(declare-fun b!1727121 () Bool)

(declare-fun b_free!47179 () Bool)

(declare-fun b_next!47883 () Bool)

(assert (=> b!1727121 (= b_free!47179 (not b_next!47883))))

(declare-fun tp!492748 () Bool)

(declare-fun b_and!126853 () Bool)

(assert (=> b!1727121 (= tp!492748 b_and!126853)))

(declare-fun b_free!47181 () Bool)

(declare-fun b_next!47885 () Bool)

(assert (=> b!1727121 (= b_free!47181 (not b_next!47885))))

(declare-fun tp!492745 () Bool)

(declare-fun b_and!126855 () Bool)

(assert (=> b!1727121 (= tp!492745 b_and!126855)))

(declare-fun b!1727110 () Bool)

(declare-fun b_free!47183 () Bool)

(declare-fun b_next!47887 () Bool)

(assert (=> b!1727110 (= b_free!47183 (not b_next!47887))))

(declare-fun tp!492751 () Bool)

(declare-fun b_and!126857 () Bool)

(assert (=> b!1727110 (= tp!492751 b_and!126857)))

(declare-fun b_free!47185 () Bool)

(declare-fun b_next!47889 () Bool)

(assert (=> b!1727110 (= b_free!47185 (not b_next!47889))))

(declare-fun tp!492746 () Bool)

(declare-fun b_and!126859 () Bool)

(assert (=> b!1727110 (= tp!492746 b_and!126859)))

(declare-fun b!1727147 () Bool)

(declare-fun e!1104873 () Bool)

(assert (=> b!1727147 (= e!1104873 true)))

(declare-fun b!1727146 () Bool)

(declare-fun e!1104872 () Bool)

(assert (=> b!1727146 (= e!1104872 e!1104873)))

(declare-fun b!1727145 () Bool)

(declare-fun e!1104871 () Bool)

(assert (=> b!1727145 (= e!1104871 e!1104872)))

(declare-fun b!1727116 () Bool)

(assert (=> b!1727116 e!1104871))

(assert (= b!1727146 b!1727147))

(assert (= b!1727145 b!1727146))

(assert (= b!1727116 b!1727145))

(declare-fun lambda!69275 () Int)

(declare-datatypes ((List!18993 0))(
  ( (Nil!18923) (Cons!18923 (h!24324 (_ BitVec 16)) (t!160238 List!18993)) )
))
(declare-datatypes ((TokenValue!3446 0))(
  ( (FloatLiteralValue!6892 (text!24567 List!18993)) (TokenValueExt!3445 (__x!12194 Int)) (Broken!17230 (value!105294 List!18993)) (Object!3515) (End!3446) (Def!3446) (Underscore!3446) (Match!3446) (Else!3446) (Error!3446) (Case!3446) (If!3446) (Extends!3446) (Abstract!3446) (Class!3446) (Val!3446) (DelimiterValue!6892 (del!3506 List!18993)) (KeywordValue!3452 (value!105295 List!18993)) (CommentValue!6892 (value!105296 List!18993)) (WhitespaceValue!6892 (value!105297 List!18993)) (IndentationValue!3446 (value!105298 List!18993)) (String!21563) (Int32!3446) (Broken!17231 (value!105299 List!18993)) (Boolean!3447) (Unit!32773) (OperatorValue!3449 (op!3506 List!18993)) (IdentifierValue!6892 (value!105300 List!18993)) (IdentifierValue!6893 (value!105301 List!18993)) (WhitespaceValue!6893 (value!105302 List!18993)) (True!6892) (False!6892) (Broken!17232 (value!105303 List!18993)) (Broken!17233 (value!105304 List!18993)) (True!6893) (RightBrace!3446) (RightBracket!3446) (Colon!3446) (Null!3446) (Comma!3446) (LeftBracket!3446) (False!6893) (LeftBrace!3446) (ImaginaryLiteralValue!3446 (text!24568 List!18993)) (StringLiteralValue!10338 (value!105305 List!18993)) (EOFValue!3446 (value!105306 List!18993)) (IdentValue!3446 (value!105307 List!18993)) (DelimiterValue!6893 (value!105308 List!18993)) (DedentValue!3446 (value!105309 List!18993)) (NewLineValue!3446 (value!105310 List!18993)) (IntegerValue!10338 (value!105311 (_ BitVec 32)) (text!24569 List!18993)) (IntegerValue!10339 (value!105312 Int) (text!24570 List!18993)) (Times!3446) (Or!3446) (Equal!3446) (Minus!3446) (Broken!17234 (value!105313 List!18993)) (And!3446) (Div!3446) (LessEqual!3446) (Mod!3446) (Concat!8130) (Not!3446) (Plus!3446) (SpaceValue!3446 (value!105314 List!18993)) (IntegerValue!10340 (value!105315 Int) (text!24571 List!18993)) (StringLiteralValue!10339 (text!24572 List!18993)) (FloatLiteralValue!6893 (text!24573 List!18993)) (BytesLiteralValue!3446 (value!105316 List!18993)) (CommentValue!6893 (value!105317 List!18993)) (StringLiteralValue!10340 (value!105318 List!18993)) (ErrorTokenValue!3446 (msg!3507 List!18993)) )
))
(declare-datatypes ((C!9542 0))(
  ( (C!9543 (val!5367 Int)) )
))
(declare-datatypes ((List!18994 0))(
  ( (Nil!18924) (Cons!18924 (h!24325 C!9542) (t!160239 List!18994)) )
))
(declare-datatypes ((Regex!4684 0))(
  ( (ElementMatch!4684 (c!282339 C!9542)) (Concat!8131 (regOne!9880 Regex!4684) (regTwo!9880 Regex!4684)) (EmptyExpr!4684) (Star!4684 (reg!5013 Regex!4684)) (EmptyLang!4684) (Union!4684 (regOne!9881 Regex!4684) (regTwo!9881 Regex!4684)) )
))
(declare-datatypes ((String!21564 0))(
  ( (String!21565 (value!105319 String)) )
))
(declare-datatypes ((IArray!12593 0))(
  ( (IArray!12594 (innerList!6354 List!18994)) )
))
(declare-datatypes ((Conc!6294 0))(
  ( (Node!6294 (left!15108 Conc!6294) (right!15438 Conc!6294) (csize!12818 Int) (cheight!6505 Int)) (Leaf!9193 (xs!9170 IArray!12593) (csize!12819 Int)) (Empty!6294) )
))
(declare-datatypes ((BalanceConc!12532 0))(
  ( (BalanceConc!12533 (c!282340 Conc!6294)) )
))
(declare-datatypes ((TokenValueInjection!6552 0))(
  ( (TokenValueInjection!6553 (toValue!4863 Int) (toChars!4722 Int)) )
))
(declare-datatypes ((Rule!6512 0))(
  ( (Rule!6513 (regex!3356 Regex!4684) (tag!3676 String!21564) (isSeparator!3356 Bool) (transformation!3356 TokenValueInjection!6552)) )
))
(declare-datatypes ((Token!6278 0))(
  ( (Token!6279 (value!105320 TokenValue!3446) (rule!5322 Rule!6512) (size!15035 Int) (originalCharacters!4170 List!18994)) )
))
(declare-datatypes ((tuple2!18608 0))(
  ( (tuple2!18609 (_1!10706 Token!6278) (_2!10706 List!18994)) )
))
(declare-fun lt!661714 () tuple2!18608)

(declare-fun order!11609 () Int)

(declare-fun order!11611 () Int)

(declare-fun dynLambda!8777 (Int Int) Int)

(declare-fun dynLambda!8778 (Int Int) Int)

(assert (=> b!1727147 (< (dynLambda!8777 order!11609 (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714))))) (dynLambda!8778 order!11611 lambda!69275))))

(declare-fun order!11613 () Int)

(declare-fun dynLambda!8779 (Int Int) Int)

(assert (=> b!1727147 (< (dynLambda!8779 order!11613 (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714))))) (dynLambda!8778 order!11611 lambda!69275))))

(declare-fun b!1727108 () Bool)

(declare-fun e!1104861 () Bool)

(declare-fun tp_is_empty!7611 () Bool)

(declare-fun tp!492749 () Bool)

(assert (=> b!1727108 (= e!1104861 (and tp_is_empty!7611 tp!492749))))

(declare-fun b!1727109 () Bool)

(declare-fun e!1104863 () Bool)

(declare-fun e!1104840 () Bool)

(assert (=> b!1727109 (= e!1104863 e!1104840)))

(declare-fun res!775350 () Bool)

(assert (=> b!1727109 (=> res!775350 e!1104840)))

(declare-fun suffix!1421 () List!18994)

(declare-fun lt!661709 () List!18994)

(declare-fun lt!661707 () Regex!4684)

(declare-fun prefixMatch!569 (Regex!4684 List!18994) Bool)

(declare-fun ++!5181 (List!18994 List!18994) List!18994)

(declare-fun head!3919 (List!18994) C!9542)

(assert (=> b!1727109 (= res!775350 (prefixMatch!569 lt!661707 (++!5181 lt!661709 (Cons!18924 (head!3919 suffix!1421) Nil!18924))))))

(declare-datatypes ((LexerInterface!2985 0))(
  ( (LexerInterfaceExt!2982 (__x!12195 Int)) (Lexer!2983) )
))
(declare-fun thiss!24550 () LexerInterface!2985)

(declare-datatypes ((List!18995 0))(
  ( (Nil!18925) (Cons!18925 (h!24326 Rule!6512) (t!160240 List!18995)) )
))
(declare-fun rules!3447 () List!18995)

(declare-fun rulesRegex!714 (LexerInterface!2985 List!18995) Regex!4684)

(assert (=> b!1727109 (= lt!661707 (rulesRegex!714 thiss!24550 rules!3447))))

(declare-fun e!1104854 () Bool)

(assert (=> b!1727110 (= e!1104854 (and tp!492751 tp!492746))))

(declare-fun b!1727111 () Bool)

(declare-fun tp!492747 () Bool)

(declare-fun token!523 () Token!6278)

(declare-fun e!1104852 () Bool)

(declare-fun e!1104849 () Bool)

(declare-fun inv!24461 (String!21564) Bool)

(declare-fun inv!24464 (TokenValueInjection!6552) Bool)

(assert (=> b!1727111 (= e!1104849 (and tp!492747 (inv!24461 (tag!3676 (rule!5322 token!523))) (inv!24464 (transformation!3356 (rule!5322 token!523))) e!1104852))))

(declare-fun b!1727112 () Bool)

(declare-fun rule!422 () Rule!6512)

(declare-fun e!1104856 () Bool)

(declare-fun tp!492753 () Bool)

(declare-fun e!1104841 () Bool)

(assert (=> b!1727112 (= e!1104841 (and tp!492753 (inv!24461 (tag!3676 rule!422)) (inv!24464 (transformation!3356 rule!422)) e!1104856))))

(declare-fun b!1727113 () Bool)

(declare-fun res!775340 () Bool)

(assert (=> b!1727113 (=> res!775340 e!1104863)))

(declare-fun isEmpty!11903 (List!18994) Bool)

(assert (=> b!1727113 (= res!775340 (isEmpty!11903 suffix!1421))))

(declare-fun b!1727114 () Bool)

(declare-fun tp!492752 () Bool)

(declare-fun e!1104847 () Bool)

(assert (=> b!1727114 (= e!1104847 (and tp!492752 (inv!24461 (tag!3676 (h!24326 rules!3447))) (inv!24464 (transformation!3356 (h!24326 rules!3447))) e!1104854))))

(declare-fun b!1727115 () Bool)

(declare-fun res!775339 () Bool)

(declare-fun e!1104843 () Bool)

(assert (=> b!1727115 (=> res!775339 e!1104843)))

(declare-fun lt!661700 () List!18994)

(declare-fun matchR!2158 (Regex!4684 List!18994) Bool)

(assert (=> b!1727115 (= res!775339 (not (matchR!2158 (regex!3356 (rule!5322 (_1!10706 lt!661714))) lt!661700)))))

(declare-fun e!1104851 () Bool)

(assert (=> b!1727116 (= e!1104843 e!1104851)))

(declare-fun res!775351 () Bool)

(assert (=> b!1727116 (=> res!775351 e!1104851)))

(declare-fun Forall!731 (Int) Bool)

(assert (=> b!1727116 (= res!775351 (not (Forall!731 lambda!69275)))))

(declare-datatypes ((Unit!32774 0))(
  ( (Unit!32775) )
))
(declare-fun lt!661717 () Unit!32774)

(declare-fun lemmaInv!563 (TokenValueInjection!6552) Unit!32774)

(assert (=> b!1727116 (= lt!661717 (lemmaInv!563 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))))))

(declare-fun b!1727117 () Bool)

(declare-fun e!1104850 () Bool)

(assert (=> b!1727117 (= e!1104850 (not e!1104863))))

(declare-fun res!775353 () Bool)

(assert (=> b!1727117 (=> res!775353 e!1104863)))

(assert (=> b!1727117 (= res!775353 (not (matchR!2158 (regex!3356 rule!422) lt!661709)))))

(declare-fun ruleValid!855 (LexerInterface!2985 Rule!6512) Bool)

(assert (=> b!1727117 (ruleValid!855 thiss!24550 rule!422)))

(declare-fun lt!661715 () Unit!32774)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!379 (LexerInterface!2985 Rule!6512 List!18995) Unit!32774)

(assert (=> b!1727117 (= lt!661715 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!379 thiss!24550 rule!422 rules!3447))))

(declare-fun res!775347 () Bool)

(declare-fun e!1104839 () Bool)

(assert (=> start!169580 (=> (not res!775347) (not e!1104839))))

(assert (=> start!169580 (= res!775347 (is-Lexer!2983 thiss!24550))))

(assert (=> start!169580 e!1104839))

(assert (=> start!169580 e!1104861))

(assert (=> start!169580 e!1104841))

(assert (=> start!169580 true))

(declare-fun e!1104846 () Bool)

(declare-fun inv!24465 (Token!6278) Bool)

(assert (=> start!169580 (and (inv!24465 token!523) e!1104846)))

(declare-fun e!1104845 () Bool)

(assert (=> start!169580 e!1104845))

(declare-fun b!1727107 () Bool)

(declare-fun e!1104862 () Bool)

(declare-fun lt!661685 () List!18994)

(declare-fun size!15036 (List!18994) Int)

(assert (=> b!1727107 (= e!1104862 (>= (size!15036 lt!661685) (size!15036 lt!661709)))))

(declare-fun lt!661712 () List!18994)

(assert (=> b!1727107 (= suffix!1421 lt!661712)))

(declare-fun lt!661705 () Unit!32774)

(declare-fun lemmaSamePrefixThenSameSuffix!741 (List!18994 List!18994 List!18994 List!18994 List!18994) Unit!32774)

(assert (=> b!1727107 (= lt!661705 (lemmaSamePrefixThenSameSuffix!741 lt!661709 suffix!1421 lt!661709 lt!661712 lt!661685))))

(declare-fun getSuffix!791 (List!18994 List!18994) List!18994)

(assert (=> b!1727107 (= lt!661712 (getSuffix!791 lt!661685 lt!661709))))

(assert (=> b!1727107 (matchR!2158 lt!661707 lt!661700)))

(declare-fun lt!661703 () Unit!32774)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!105 (LexerInterface!2985 List!18995 List!18994 Token!6278 Rule!6512 List!18994) Unit!32774)

(assert (=> b!1727107 (= lt!661703 (lemmaMaxPrefixThenMatchesRulesRegex!105 thiss!24550 rules!3447 lt!661685 (_1!10706 lt!661714) (rule!5322 (_1!10706 lt!661714)) (_2!10706 lt!661714)))))

(assert (=> b!1727118 (= e!1104856 (and tp!492755 tp!492750))))

(declare-fun b!1727119 () Bool)

(declare-fun e!1104844 () Bool)

(declare-fun e!1104857 () Bool)

(assert (=> b!1727119 (= e!1104844 e!1104857)))

(declare-fun res!775349 () Bool)

(assert (=> b!1727119 (=> res!775349 e!1104857)))

(declare-fun lt!661711 () List!18994)

(declare-datatypes ((Option!3736 0))(
  ( (None!3735) (Some!3735 (v!25148 tuple2!18608)) )
))
(declare-fun lt!661704 () Option!3736)

(assert (=> b!1727119 (= res!775349 (or (not (= lt!661711 (_2!10706 lt!661714))) (not (= lt!661704 (Some!3735 (tuple2!18609 (_1!10706 lt!661714) lt!661711))))))))

(assert (=> b!1727119 (= (_2!10706 lt!661714) lt!661711)))

(declare-fun lt!661706 () Unit!32774)

(assert (=> b!1727119 (= lt!661706 (lemmaSamePrefixThenSameSuffix!741 lt!661700 (_2!10706 lt!661714) lt!661700 lt!661711 lt!661685))))

(assert (=> b!1727119 (= lt!661711 (getSuffix!791 lt!661685 lt!661700))))

(declare-fun lt!661702 () TokenValue!3446)

(declare-fun lt!661687 () Int)

(assert (=> b!1727119 (= lt!661704 (Some!3735 (tuple2!18609 (Token!6279 lt!661702 (rule!5322 (_1!10706 lt!661714)) lt!661687 lt!661700) (_2!10706 lt!661714))))))

(declare-fun maxPrefixOneRule!915 (LexerInterface!2985 Rule!6512 List!18994) Option!3736)

(assert (=> b!1727119 (= lt!661704 (maxPrefixOneRule!915 thiss!24550 (rule!5322 (_1!10706 lt!661714)) lt!661685))))

(assert (=> b!1727119 (= lt!661687 (size!15036 lt!661700))))

(declare-fun apply!5161 (TokenValueInjection!6552 BalanceConc!12532) TokenValue!3446)

(declare-fun seqFromList!2330 (List!18994) BalanceConc!12532)

(assert (=> b!1727119 (= lt!661702 (apply!5161 (transformation!3356 (rule!5322 (_1!10706 lt!661714))) (seqFromList!2330 lt!661700)))))

(declare-fun lt!661689 () Unit!32774)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!314 (LexerInterface!2985 List!18995 List!18994 List!18994 List!18994 Rule!6512) Unit!32774)

(assert (=> b!1727119 (= lt!661689 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!314 thiss!24550 rules!3447 lt!661700 lt!661685 (_2!10706 lt!661714) (rule!5322 (_1!10706 lt!661714))))))

(declare-fun b!1727120 () Bool)

(declare-fun res!775334 () Bool)

(declare-fun e!1104842 () Bool)

(assert (=> b!1727120 (=> res!775334 e!1104842)))

(declare-fun lt!661710 () BalanceConc!12532)

(declare-fun dynLambda!8780 (Int TokenValue!3446) BalanceConc!12532)

(assert (=> b!1727120 (= res!775334 (not (= lt!661710 (dynLambda!8780 (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (value!105320 (_1!10706 lt!661714))))))))

(assert (=> b!1727121 (= e!1104852 (and tp!492748 tp!492745))))

(declare-fun b!1727122 () Bool)

(assert (=> b!1727122 (= e!1104851 e!1104842)))

(declare-fun res!775341 () Bool)

(assert (=> b!1727122 (=> res!775341 e!1104842)))

(declare-fun list!7649 (BalanceConc!12532) List!18994)

(declare-fun dynLambda!8781 (Int BalanceConc!12532) TokenValue!3446)

(assert (=> b!1727122 (= res!775341 (not (= (list!7649 (dynLambda!8780 (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (dynLambda!8781 (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) lt!661710))) lt!661700)))))

(declare-fun lt!661686 () Unit!32774)

(declare-fun lemmaSemiInverse!502 (TokenValueInjection!6552 BalanceConc!12532) Unit!32774)

(assert (=> b!1727122 (= lt!661686 (lemmaSemiInverse!502 (transformation!3356 (rule!5322 (_1!10706 lt!661714))) lt!661710))))

(declare-fun b!1727123 () Bool)

(declare-fun res!775335 () Bool)

(assert (=> b!1727123 (=> (not res!775335) (not e!1104839))))

(declare-fun isEmpty!11904 (List!18995) Bool)

(assert (=> b!1727123 (= res!775335 (not (isEmpty!11904 rules!3447)))))

(declare-fun b!1727124 () Bool)

(assert (=> b!1727124 (= e!1104842 e!1104844)))

(declare-fun res!775338 () Bool)

(assert (=> b!1727124 (=> res!775338 e!1104844)))

(declare-fun lt!661708 () Option!3736)

(declare-fun lt!661696 () Int)

(declare-fun lt!661699 () TokenValue!3446)

(assert (=> b!1727124 (= res!775338 (not (= lt!661708 (Some!3735 (tuple2!18609 (Token!6279 lt!661699 (rule!5322 (_1!10706 lt!661714)) lt!661696 lt!661700) (_2!10706 lt!661714))))))))

(declare-fun size!15037 (BalanceConc!12532) Int)

(assert (=> b!1727124 (= lt!661696 (size!15037 lt!661710))))

(assert (=> b!1727124 (= lt!661699 (apply!5161 (transformation!3356 (rule!5322 (_1!10706 lt!661714))) lt!661710))))

(declare-fun lt!661716 () Unit!32774)

(declare-fun lemmaCharactersSize!428 (Token!6278) Unit!32774)

(assert (=> b!1727124 (= lt!661716 (lemmaCharactersSize!428 (_1!10706 lt!661714)))))

(declare-fun lt!661698 () Unit!32774)

(declare-fun lemmaEqSameImage!281 (TokenValueInjection!6552 BalanceConc!12532 BalanceConc!12532) Unit!32774)

(assert (=> b!1727124 (= lt!661698 (lemmaEqSameImage!281 (transformation!3356 (rule!5322 (_1!10706 lt!661714))) lt!661710 (seqFromList!2330 (originalCharacters!4170 (_1!10706 lt!661714)))))))

(declare-fun tp!492756 () Bool)

(declare-fun b!1727125 () Bool)

(declare-fun inv!21 (TokenValue!3446) Bool)

(assert (=> b!1727125 (= e!1104846 (and (inv!21 (value!105320 token!523)) e!1104849 tp!492756))))

(declare-fun b!1727126 () Bool)

(declare-fun e!1104848 () Bool)

(declare-fun e!1104853 () Bool)

(assert (=> b!1727126 (= e!1104848 e!1104853)))

(declare-fun res!775333 () Bool)

(assert (=> b!1727126 (=> (not res!775333) (not e!1104853))))

(declare-fun lt!661688 () Rule!6512)

(declare-fun charsOf!2005 (Token!6278) BalanceConc!12532)

(assert (=> b!1727126 (= res!775333 (matchR!2158 (regex!3356 lt!661688) (list!7649 (charsOf!2005 (_1!10706 lt!661714)))))))

(declare-datatypes ((Option!3737 0))(
  ( (None!3736) (Some!3736 (v!25149 Rule!6512)) )
))
(declare-fun lt!661690 () Option!3737)

(declare-fun get!5632 (Option!3737) Rule!6512)

(assert (=> b!1727126 (= lt!661688 (get!5632 lt!661690))))

(declare-fun b!1727127 () Bool)

(declare-fun res!775346 () Bool)

(assert (=> b!1727127 (=> (not res!775346) (not e!1104850))))

(assert (=> b!1727127 (= res!775346 (= (rule!5322 token!523) rule!422))))

(declare-fun b!1727128 () Bool)

(declare-fun e!1104860 () Bool)

(assert (=> b!1727128 (= e!1104860 e!1104850)))

(declare-fun res!775344 () Bool)

(assert (=> b!1727128 (=> (not res!775344) (not e!1104850))))

(declare-fun lt!661694 () tuple2!18608)

(assert (=> b!1727128 (= res!775344 (= (_1!10706 lt!661694) token!523))))

(declare-fun lt!661697 () Option!3736)

(declare-fun get!5633 (Option!3736) tuple2!18608)

(assert (=> b!1727128 (= lt!661694 (get!5633 lt!661697))))

(declare-fun b!1727129 () Bool)

(declare-fun res!775337 () Bool)

(assert (=> b!1727129 (=> (not res!775337) (not e!1104839))))

(declare-fun rulesInvariant!2654 (LexerInterface!2985 List!18995) Bool)

(assert (=> b!1727129 (= res!775337 (rulesInvariant!2654 thiss!24550 rules!3447))))

(declare-fun b!1727130 () Bool)

(assert (=> b!1727130 (= e!1104857 e!1104862)))

(declare-fun res!775336 () Bool)

(assert (=> b!1727130 (=> res!775336 e!1104862)))

(declare-fun lt!661701 () BalanceConc!12532)

(assert (=> b!1727130 (= res!775336 (<= lt!661696 (size!15037 lt!661701)))))

(assert (=> b!1727130 (matchR!2158 lt!661707 lt!661709)))

(declare-fun lt!661692 () Unit!32774)

(assert (=> b!1727130 (= lt!661692 (lemmaMaxPrefixThenMatchesRulesRegex!105 thiss!24550 rules!3447 lt!661709 token!523 rule!422 Nil!18924))))

(declare-fun b!1727131 () Bool)

(declare-fun res!775352 () Bool)

(assert (=> b!1727131 (=> (not res!775352) (not e!1104850))))

(assert (=> b!1727131 (= res!775352 (isEmpty!11903 (_2!10706 lt!661694)))))

(declare-fun b!1727132 () Bool)

(declare-fun res!775345 () Bool)

(assert (=> b!1727132 (=> (not res!775345) (not e!1104839))))

(declare-fun contains!3378 (List!18995 Rule!6512) Bool)

(assert (=> b!1727132 (= res!775345 (contains!3378 rules!3447 rule!422))))

(declare-fun b!1727133 () Bool)

(assert (=> b!1727133 (= e!1104839 e!1104860)))

(declare-fun res!775342 () Bool)

(assert (=> b!1727133 (=> (not res!775342) (not e!1104860))))

(declare-fun isDefined!3079 (Option!3736) Bool)

(assert (=> b!1727133 (= res!775342 (isDefined!3079 lt!661697))))

(declare-fun maxPrefix!1539 (LexerInterface!2985 List!18995 List!18994) Option!3736)

(assert (=> b!1727133 (= lt!661697 (maxPrefix!1539 thiss!24550 rules!3447 lt!661709))))

(assert (=> b!1727133 (= lt!661709 (list!7649 lt!661701))))

(assert (=> b!1727133 (= lt!661701 (charsOf!2005 token!523))))

(declare-fun b!1727134 () Bool)

(assert (=> b!1727134 (= e!1104853 (= (rule!5322 (_1!10706 lt!661714)) lt!661688))))

(declare-fun b!1727135 () Bool)

(assert (=> b!1727135 (= e!1104840 e!1104843)))

(declare-fun res!775348 () Bool)

(assert (=> b!1727135 (=> res!775348 e!1104843)))

(declare-fun isPrefix!1597 (List!18994 List!18994) Bool)

(assert (=> b!1727135 (= res!775348 (not (isPrefix!1597 lt!661700 lt!661685)))))

(assert (=> b!1727135 (isPrefix!1597 lt!661700 (++!5181 lt!661700 (_2!10706 lt!661714)))))

(declare-fun lt!661693 () Unit!32774)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1107 (List!18994 List!18994) Unit!32774)

(assert (=> b!1727135 (= lt!661693 (lemmaConcatTwoListThenFirstIsPrefix!1107 lt!661700 (_2!10706 lt!661714)))))

(assert (=> b!1727135 (= lt!661700 (list!7649 lt!661710))))

(assert (=> b!1727135 (= lt!661710 (charsOf!2005 (_1!10706 lt!661714)))))

(assert (=> b!1727135 e!1104848))

(declare-fun res!775343 () Bool)

(assert (=> b!1727135 (=> (not res!775343) (not e!1104848))))

(declare-fun isDefined!3080 (Option!3737) Bool)

(assert (=> b!1727135 (= res!775343 (isDefined!3080 lt!661690))))

(declare-fun getRuleFromTag!406 (LexerInterface!2985 List!18995 String!21564) Option!3737)

(assert (=> b!1727135 (= lt!661690 (getRuleFromTag!406 thiss!24550 rules!3447 (tag!3676 (rule!5322 (_1!10706 lt!661714)))))))

(declare-fun lt!661691 () Unit!32774)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!406 (LexerInterface!2985 List!18995 List!18994 Token!6278) Unit!32774)

(assert (=> b!1727135 (= lt!661691 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!406 thiss!24550 rules!3447 lt!661685 (_1!10706 lt!661714)))))

(assert (=> b!1727135 (= lt!661714 (get!5633 lt!661708))))

(declare-fun lt!661713 () Unit!32774)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!509 (LexerInterface!2985 List!18995 List!18994 List!18994) Unit!32774)

(assert (=> b!1727135 (= lt!661713 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!509 thiss!24550 rules!3447 lt!661709 suffix!1421))))

(assert (=> b!1727135 (= lt!661708 (maxPrefix!1539 thiss!24550 rules!3447 lt!661685))))

(assert (=> b!1727135 (isPrefix!1597 lt!661709 lt!661685)))

(declare-fun lt!661695 () Unit!32774)

(assert (=> b!1727135 (= lt!661695 (lemmaConcatTwoListThenFirstIsPrefix!1107 lt!661709 suffix!1421))))

(assert (=> b!1727135 (= lt!661685 (++!5181 lt!661709 suffix!1421))))

(declare-fun b!1727136 () Bool)

(declare-fun tp!492754 () Bool)

(assert (=> b!1727136 (= e!1104845 (and e!1104847 tp!492754))))

(assert (= (and start!169580 res!775347) b!1727123))

(assert (= (and b!1727123 res!775335) b!1727129))

(assert (= (and b!1727129 res!775337) b!1727132))

(assert (= (and b!1727132 res!775345) b!1727133))

(assert (= (and b!1727133 res!775342) b!1727128))

(assert (= (and b!1727128 res!775344) b!1727131))

(assert (= (and b!1727131 res!775352) b!1727127))

(assert (= (and b!1727127 res!775346) b!1727117))

(assert (= (and b!1727117 (not res!775353)) b!1727113))

(assert (= (and b!1727113 (not res!775340)) b!1727109))

(assert (= (and b!1727109 (not res!775350)) b!1727135))

(assert (= (and b!1727135 res!775343) b!1727126))

(assert (= (and b!1727126 res!775333) b!1727134))

(assert (= (and b!1727135 (not res!775348)) b!1727115))

(assert (= (and b!1727115 (not res!775339)) b!1727116))

(assert (= (and b!1727116 (not res!775351)) b!1727122))

(assert (= (and b!1727122 (not res!775341)) b!1727120))

(assert (= (and b!1727120 (not res!775334)) b!1727124))

(assert (= (and b!1727124 (not res!775338)) b!1727119))

(assert (= (and b!1727119 (not res!775349)) b!1727130))

(assert (= (and b!1727130 (not res!775336)) b!1727107))

(assert (= (and start!169580 (is-Cons!18924 suffix!1421)) b!1727108))

(assert (= b!1727112 b!1727118))

(assert (= start!169580 b!1727112))

(assert (= b!1727111 b!1727121))

(assert (= b!1727125 b!1727111))

(assert (= start!169580 b!1727125))

(assert (= b!1727114 b!1727110))

(assert (= b!1727136 b!1727114))

(assert (= (and start!169580 (is-Cons!18925 rules!3447)) b!1727136))

(declare-fun b_lambda!54973 () Bool)

(assert (=> (not b_lambda!54973) (not b!1727120)))

(declare-fun t!160221 () Bool)

(declare-fun tb!102663 () Bool)

(assert (=> (and b!1727118 (= (toChars!4722 (transformation!3356 rule!422)) (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714))))) t!160221) tb!102663))

(declare-fun b!1727152 () Bool)

(declare-fun e!1104876 () Bool)

(declare-fun tp!492759 () Bool)

(declare-fun inv!24466 (Conc!6294) Bool)

(assert (=> b!1727152 (= e!1104876 (and (inv!24466 (c!282340 (dynLambda!8780 (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (value!105320 (_1!10706 lt!661714))))) tp!492759))))

(declare-fun result!123422 () Bool)

(declare-fun inv!24467 (BalanceConc!12532) Bool)

(assert (=> tb!102663 (= result!123422 (and (inv!24467 (dynLambda!8780 (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (value!105320 (_1!10706 lt!661714)))) e!1104876))))

(assert (= tb!102663 b!1727152))

(declare-fun m!2134133 () Bool)

(assert (=> b!1727152 m!2134133))

(declare-fun m!2134135 () Bool)

(assert (=> tb!102663 m!2134135))

(assert (=> b!1727120 t!160221))

(declare-fun b_and!126861 () Bool)

(assert (= b_and!126851 (and (=> t!160221 result!123422) b_and!126861)))

(declare-fun tb!102665 () Bool)

(declare-fun t!160223 () Bool)

(assert (=> (and b!1727121 (= (toChars!4722 (transformation!3356 (rule!5322 token!523))) (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714))))) t!160223) tb!102665))

(declare-fun result!123426 () Bool)

(assert (= result!123426 result!123422))

(assert (=> b!1727120 t!160223))

(declare-fun b_and!126863 () Bool)

(assert (= b_and!126855 (and (=> t!160223 result!123426) b_and!126863)))

(declare-fun tb!102667 () Bool)

(declare-fun t!160225 () Bool)

(assert (=> (and b!1727110 (= (toChars!4722 (transformation!3356 (h!24326 rules!3447))) (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714))))) t!160225) tb!102667))

(declare-fun result!123428 () Bool)

(assert (= result!123428 result!123422))

(assert (=> b!1727120 t!160225))

(declare-fun b_and!126865 () Bool)

(assert (= b_and!126859 (and (=> t!160225 result!123428) b_and!126865)))

(declare-fun b_lambda!54975 () Bool)

(assert (=> (not b_lambda!54975) (not b!1727122)))

(declare-fun tb!102669 () Bool)

(declare-fun t!160227 () Bool)

(assert (=> (and b!1727118 (= (toChars!4722 (transformation!3356 rule!422)) (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714))))) t!160227) tb!102669))

(declare-fun b!1727153 () Bool)

(declare-fun e!1104877 () Bool)

(declare-fun tp!492760 () Bool)

(assert (=> b!1727153 (= e!1104877 (and (inv!24466 (c!282340 (dynLambda!8780 (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (dynLambda!8781 (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) lt!661710)))) tp!492760))))

(declare-fun result!123430 () Bool)

(assert (=> tb!102669 (= result!123430 (and (inv!24467 (dynLambda!8780 (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (dynLambda!8781 (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) lt!661710))) e!1104877))))

(assert (= tb!102669 b!1727153))

(declare-fun m!2134137 () Bool)

(assert (=> b!1727153 m!2134137))

(declare-fun m!2134139 () Bool)

(assert (=> tb!102669 m!2134139))

(assert (=> b!1727122 t!160227))

(declare-fun b_and!126867 () Bool)

(assert (= b_and!126861 (and (=> t!160227 result!123430) b_and!126867)))

(declare-fun t!160229 () Bool)

(declare-fun tb!102671 () Bool)

(assert (=> (and b!1727121 (= (toChars!4722 (transformation!3356 (rule!5322 token!523))) (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714))))) t!160229) tb!102671))

(declare-fun result!123432 () Bool)

(assert (= result!123432 result!123430))

(assert (=> b!1727122 t!160229))

(declare-fun b_and!126869 () Bool)

(assert (= b_and!126863 (and (=> t!160229 result!123432) b_and!126869)))

(declare-fun tb!102673 () Bool)

(declare-fun t!160231 () Bool)

(assert (=> (and b!1727110 (= (toChars!4722 (transformation!3356 (h!24326 rules!3447))) (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714))))) t!160231) tb!102673))

(declare-fun result!123434 () Bool)

(assert (= result!123434 result!123430))

(assert (=> b!1727122 t!160231))

(declare-fun b_and!126871 () Bool)

(assert (= b_and!126865 (and (=> t!160231 result!123434) b_and!126871)))

(declare-fun b_lambda!54977 () Bool)

(assert (=> (not b_lambda!54977) (not b!1727122)))

(declare-fun t!160233 () Bool)

(declare-fun tb!102675 () Bool)

(assert (=> (and b!1727118 (= (toValue!4863 (transformation!3356 rule!422)) (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714))))) t!160233) tb!102675))

(declare-fun result!123436 () Bool)

(assert (=> tb!102675 (= result!123436 (inv!21 (dynLambda!8781 (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) lt!661710)))))

(declare-fun m!2134141 () Bool)

(assert (=> tb!102675 m!2134141))

(assert (=> b!1727122 t!160233))

(declare-fun b_and!126873 () Bool)

(assert (= b_and!126849 (and (=> t!160233 result!123436) b_and!126873)))

(declare-fun t!160235 () Bool)

(declare-fun tb!102677 () Bool)

(assert (=> (and b!1727121 (= (toValue!4863 (transformation!3356 (rule!5322 token!523))) (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714))))) t!160235) tb!102677))

(declare-fun result!123440 () Bool)

(assert (= result!123440 result!123436))

(assert (=> b!1727122 t!160235))

(declare-fun b_and!126875 () Bool)

(assert (= b_and!126853 (and (=> t!160235 result!123440) b_and!126875)))

(declare-fun tb!102679 () Bool)

(declare-fun t!160237 () Bool)

(assert (=> (and b!1727110 (= (toValue!4863 (transformation!3356 (h!24326 rules!3447))) (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714))))) t!160237) tb!102679))

(declare-fun result!123442 () Bool)

(assert (= result!123442 result!123436))

(assert (=> b!1727122 t!160237))

(declare-fun b_and!126877 () Bool)

(assert (= b_and!126857 (and (=> t!160237 result!123442) b_and!126877)))

(declare-fun m!2134143 () Bool)

(assert (=> b!1727120 m!2134143))

(declare-fun m!2134145 () Bool)

(assert (=> b!1727122 m!2134145))

(assert (=> b!1727122 m!2134145))

(declare-fun m!2134147 () Bool)

(assert (=> b!1727122 m!2134147))

(assert (=> b!1727122 m!2134147))

(declare-fun m!2134149 () Bool)

(assert (=> b!1727122 m!2134149))

(declare-fun m!2134151 () Bool)

(assert (=> b!1727122 m!2134151))

(declare-fun m!2134153 () Bool)

(assert (=> b!1727124 m!2134153))

(declare-fun m!2134155 () Bool)

(assert (=> b!1727124 m!2134155))

(declare-fun m!2134157 () Bool)

(assert (=> b!1727124 m!2134157))

(declare-fun m!2134159 () Bool)

(assert (=> b!1727124 m!2134159))

(assert (=> b!1727124 m!2134157))

(declare-fun m!2134161 () Bool)

(assert (=> b!1727124 m!2134161))

(declare-fun m!2134163 () Bool)

(assert (=> b!1727126 m!2134163))

(assert (=> b!1727126 m!2134163))

(declare-fun m!2134165 () Bool)

(assert (=> b!1727126 m!2134165))

(assert (=> b!1727126 m!2134165))

(declare-fun m!2134167 () Bool)

(assert (=> b!1727126 m!2134167))

(declare-fun m!2134169 () Bool)

(assert (=> b!1727126 m!2134169))

(declare-fun m!2134171 () Bool)

(assert (=> b!1727123 m!2134171))

(declare-fun m!2134173 () Bool)

(assert (=> b!1727113 m!2134173))

(declare-fun m!2134175 () Bool)

(assert (=> b!1727125 m!2134175))

(declare-fun m!2134177 () Bool)

(assert (=> b!1727132 m!2134177))

(declare-fun m!2134179 () Bool)

(assert (=> b!1727111 m!2134179))

(declare-fun m!2134181 () Bool)

(assert (=> b!1727111 m!2134181))

(declare-fun m!2134183 () Bool)

(assert (=> b!1727128 m!2134183))

(declare-fun m!2134185 () Bool)

(assert (=> b!1727115 m!2134185))

(declare-fun m!2134187 () Bool)

(assert (=> b!1727109 m!2134187))

(declare-fun m!2134189 () Bool)

(assert (=> b!1727109 m!2134189))

(assert (=> b!1727109 m!2134189))

(declare-fun m!2134191 () Bool)

(assert (=> b!1727109 m!2134191))

(declare-fun m!2134193 () Bool)

(assert (=> b!1727109 m!2134193))

(declare-fun m!2134195 () Bool)

(assert (=> start!169580 m!2134195))

(declare-fun m!2134197 () Bool)

(assert (=> b!1727117 m!2134197))

(declare-fun m!2134199 () Bool)

(assert (=> b!1727117 m!2134199))

(declare-fun m!2134201 () Bool)

(assert (=> b!1727117 m!2134201))

(declare-fun m!2134203 () Bool)

(assert (=> b!1727130 m!2134203))

(declare-fun m!2134205 () Bool)

(assert (=> b!1727130 m!2134205))

(declare-fun m!2134207 () Bool)

(assert (=> b!1727130 m!2134207))

(declare-fun m!2134209 () Bool)

(assert (=> b!1727112 m!2134209))

(declare-fun m!2134211 () Bool)

(assert (=> b!1727112 m!2134211))

(declare-fun m!2134213 () Bool)

(assert (=> b!1727129 m!2134213))

(declare-fun m!2134215 () Bool)

(assert (=> b!1727135 m!2134215))

(declare-fun m!2134217 () Bool)

(assert (=> b!1727135 m!2134217))

(declare-fun m!2134219 () Bool)

(assert (=> b!1727135 m!2134219))

(declare-fun m!2134221 () Bool)

(assert (=> b!1727135 m!2134221))

(declare-fun m!2134223 () Bool)

(assert (=> b!1727135 m!2134223))

(declare-fun m!2134225 () Bool)

(assert (=> b!1727135 m!2134225))

(declare-fun m!2134227 () Bool)

(assert (=> b!1727135 m!2134227))

(declare-fun m!2134229 () Bool)

(assert (=> b!1727135 m!2134229))

(declare-fun m!2134231 () Bool)

(assert (=> b!1727135 m!2134231))

(declare-fun m!2134233 () Bool)

(assert (=> b!1727135 m!2134233))

(declare-fun m!2134235 () Bool)

(assert (=> b!1727135 m!2134235))

(assert (=> b!1727135 m!2134235))

(declare-fun m!2134237 () Bool)

(assert (=> b!1727135 m!2134237))

(declare-fun m!2134239 () Bool)

(assert (=> b!1727135 m!2134239))

(declare-fun m!2134241 () Bool)

(assert (=> b!1727135 m!2134241))

(assert (=> b!1727135 m!2134163))

(declare-fun m!2134243 () Bool)

(assert (=> b!1727131 m!2134243))

(declare-fun m!2134245 () Bool)

(assert (=> b!1727107 m!2134245))

(declare-fun m!2134247 () Bool)

(assert (=> b!1727107 m!2134247))

(declare-fun m!2134249 () Bool)

(assert (=> b!1727107 m!2134249))

(declare-fun m!2134251 () Bool)

(assert (=> b!1727107 m!2134251))

(declare-fun m!2134253 () Bool)

(assert (=> b!1727107 m!2134253))

(declare-fun m!2134255 () Bool)

(assert (=> b!1727107 m!2134255))

(declare-fun m!2134257 () Bool)

(assert (=> b!1727116 m!2134257))

(declare-fun m!2134259 () Bool)

(assert (=> b!1727116 m!2134259))

(declare-fun m!2134261 () Bool)

(assert (=> b!1727133 m!2134261))

(declare-fun m!2134263 () Bool)

(assert (=> b!1727133 m!2134263))

(declare-fun m!2134265 () Bool)

(assert (=> b!1727133 m!2134265))

(declare-fun m!2134267 () Bool)

(assert (=> b!1727133 m!2134267))

(declare-fun m!2134269 () Bool)

(assert (=> b!1727114 m!2134269))

(declare-fun m!2134271 () Bool)

(assert (=> b!1727114 m!2134271))

(declare-fun m!2134273 () Bool)

(assert (=> b!1727119 m!2134273))

(declare-fun m!2134275 () Bool)

(assert (=> b!1727119 m!2134275))

(declare-fun m!2134277 () Bool)

(assert (=> b!1727119 m!2134277))

(declare-fun m!2134279 () Bool)

(assert (=> b!1727119 m!2134279))

(declare-fun m!2134281 () Bool)

(assert (=> b!1727119 m!2134281))

(assert (=> b!1727119 m!2134277))

(declare-fun m!2134283 () Bool)

(assert (=> b!1727119 m!2134283))

(declare-fun m!2134285 () Bool)

(assert (=> b!1727119 m!2134285))

(push 1)

(assert (not b!1727131))

(assert (not b!1727108))

(assert (not b!1727126))

(assert (not b_next!47889))

(assert (not tb!102663))

(assert (not b!1727114))

(assert (not b_next!47883))

(assert (not b_next!47879))

(assert (not b_lambda!54977))

(assert (not tb!102669))

(assert (not b!1727113))

(assert (not b!1727129))

(assert (not b!1727123))

(assert b_and!126869)

(assert (not b!1727124))

(assert (not b!1727112))

(assert (not b!1727133))

(assert (not b_next!47887))

(assert (not b!1727115))

(assert (not b_next!47881))

(assert (not b!1727135))

(assert (not b!1727153))

(assert (not b!1727111))

(assert (not tb!102675))

(assert (not b_lambda!54975))

(assert (not b!1727125))

(assert (not b!1727107))

(assert (not start!169580))

(assert (not b!1727136))

(assert b_and!126871)

(assert (not b!1727128))

(assert b_and!126877)

(assert (not b!1727130))

(assert (not b!1727119))

(assert (not b!1727109))

(assert (not b!1727132))

(assert (not b!1727122))

(assert (not b_next!47885))

(assert (not b!1727116))

(assert tp_is_empty!7611)

(assert b_and!126875)

(assert (not b!1727152))

(assert b_and!126873)

(assert (not b_lambda!54973))

(assert b_and!126867)

(assert (not b!1727117))

(check-sat)

(pop 1)

(push 1)

(assert b_and!126869)

(assert (not b_next!47889))

(assert (not b_next!47883))

(assert (not b_next!47879))

(assert b_and!126871)

(assert b_and!126877)

(assert (not b_next!47885))

(assert b_and!126875)

(assert b_and!126873)

(assert b_and!126867)

(assert (not b_next!47881))

(assert (not b_next!47887))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!528993 () Bool)

(declare-fun isBalanced!1969 (Conc!6294) Bool)

(assert (=> d!528993 (= (inv!24467 (dynLambda!8780 (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (value!105320 (_1!10706 lt!661714)))) (isBalanced!1969 (c!282340 (dynLambda!8780 (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (value!105320 (_1!10706 lt!661714))))))))

(declare-fun bs!402456 () Bool)

(assert (= bs!402456 d!528993))

(declare-fun m!2134441 () Bool)

(assert (=> bs!402456 m!2134441))

(assert (=> tb!102663 d!528993))

(declare-fun d!528995 () Bool)

(assert (=> d!528995 (= (inv!24461 (tag!3676 rule!422)) (= (mod (str.len (value!105319 (tag!3676 rule!422))) 2) 0))))

(assert (=> b!1727112 d!528995))

(declare-fun d!528997 () Bool)

(declare-fun res!775419 () Bool)

(declare-fun e!1104977 () Bool)

(assert (=> d!528997 (=> (not res!775419) (not e!1104977))))

(declare-fun semiInverseModEq!1328 (Int Int) Bool)

(assert (=> d!528997 (= res!775419 (semiInverseModEq!1328 (toChars!4722 (transformation!3356 rule!422)) (toValue!4863 (transformation!3356 rule!422))))))

(assert (=> d!528997 (= (inv!24464 (transformation!3356 rule!422)) e!1104977)))

(declare-fun b!1727267 () Bool)

(declare-fun equivClasses!1269 (Int Int) Bool)

(assert (=> b!1727267 (= e!1104977 (equivClasses!1269 (toChars!4722 (transformation!3356 rule!422)) (toValue!4863 (transformation!3356 rule!422))))))

(assert (= (and d!528997 res!775419) b!1727267))

(declare-fun m!2134443 () Bool)

(assert (=> d!528997 m!2134443))

(declare-fun m!2134445 () Bool)

(assert (=> b!1727267 m!2134445))

(assert (=> b!1727112 d!528997))

(declare-fun d!528999 () Bool)

(assert (=> d!528999 (= (isEmpty!11903 suffix!1421) (is-Nil!18924 suffix!1421))))

(assert (=> b!1727113 d!528999))

(declare-fun d!529001 () Bool)

(assert (=> d!529001 (= (inv!24461 (tag!3676 (rule!5322 token!523))) (= (mod (str.len (value!105319 (tag!3676 (rule!5322 token!523)))) 2) 0))))

(assert (=> b!1727111 d!529001))

(declare-fun d!529003 () Bool)

(declare-fun res!775420 () Bool)

(declare-fun e!1104978 () Bool)

(assert (=> d!529003 (=> (not res!775420) (not e!1104978))))

(assert (=> d!529003 (= res!775420 (semiInverseModEq!1328 (toChars!4722 (transformation!3356 (rule!5322 token!523))) (toValue!4863 (transformation!3356 (rule!5322 token!523)))))))

(assert (=> d!529003 (= (inv!24464 (transformation!3356 (rule!5322 token!523))) e!1104978)))

(declare-fun b!1727268 () Bool)

(assert (=> b!1727268 (= e!1104978 (equivClasses!1269 (toChars!4722 (transformation!3356 (rule!5322 token!523))) (toValue!4863 (transformation!3356 (rule!5322 token!523)))))))

(assert (= (and d!529003 res!775420) b!1727268))

(declare-fun m!2134447 () Bool)

(assert (=> d!529003 m!2134447))

(declare-fun m!2134449 () Bool)

(assert (=> b!1727268 m!2134449))

(assert (=> b!1727111 d!529003))

(declare-fun d!529005 () Bool)

(declare-fun lt!661819 () Bool)

(declare-fun content!2706 (List!18995) (Set Rule!6512))

(assert (=> d!529005 (= lt!661819 (set.member rule!422 (content!2706 rules!3447)))))

(declare-fun e!1104983 () Bool)

(assert (=> d!529005 (= lt!661819 e!1104983)))

(declare-fun res!775425 () Bool)

(assert (=> d!529005 (=> (not res!775425) (not e!1104983))))

(assert (=> d!529005 (= res!775425 (is-Cons!18925 rules!3447))))

(assert (=> d!529005 (= (contains!3378 rules!3447 rule!422) lt!661819)))

(declare-fun b!1727273 () Bool)

(declare-fun e!1104984 () Bool)

(assert (=> b!1727273 (= e!1104983 e!1104984)))

(declare-fun res!775426 () Bool)

(assert (=> b!1727273 (=> res!775426 e!1104984)))

(assert (=> b!1727273 (= res!775426 (= (h!24326 rules!3447) rule!422))))

(declare-fun b!1727274 () Bool)

(assert (=> b!1727274 (= e!1104984 (contains!3378 (t!160240 rules!3447) rule!422))))

(assert (= (and d!529005 res!775425) b!1727273))

(assert (= (and b!1727273 (not res!775426)) b!1727274))

(declare-fun m!2134451 () Bool)

(assert (=> d!529005 m!2134451))

(declare-fun m!2134453 () Bool)

(assert (=> d!529005 m!2134453))

(declare-fun m!2134455 () Bool)

(assert (=> b!1727274 m!2134455))

(assert (=> b!1727132 d!529005))

(declare-fun d!529007 () Bool)

(declare-fun isEmpty!11907 (Option!3736) Bool)

(assert (=> d!529007 (= (isDefined!3079 lt!661697) (not (isEmpty!11907 lt!661697)))))

(declare-fun bs!402457 () Bool)

(assert (= bs!402457 d!529007))

(declare-fun m!2134457 () Bool)

(assert (=> bs!402457 m!2134457))

(assert (=> b!1727133 d!529007))

(declare-fun b!1727293 () Bool)

(declare-fun res!775443 () Bool)

(declare-fun e!1104991 () Bool)

(assert (=> b!1727293 (=> (not res!775443) (not e!1104991))))

(declare-fun lt!661834 () Option!3736)

(assert (=> b!1727293 (= res!775443 (= (list!7649 (charsOf!2005 (_1!10706 (get!5633 lt!661834)))) (originalCharacters!4170 (_1!10706 (get!5633 lt!661834)))))))

(declare-fun d!529009 () Bool)

(declare-fun e!1104992 () Bool)

(assert (=> d!529009 e!1104992))

(declare-fun res!775447 () Bool)

(assert (=> d!529009 (=> res!775447 e!1104992)))

(assert (=> d!529009 (= res!775447 (isEmpty!11907 lt!661834))))

(declare-fun e!1104993 () Option!3736)

(assert (=> d!529009 (= lt!661834 e!1104993)))

(declare-fun c!282346 () Bool)

(assert (=> d!529009 (= c!282346 (and (is-Cons!18925 rules!3447) (is-Nil!18925 (t!160240 rules!3447))))))

(declare-fun lt!661832 () Unit!32774)

(declare-fun lt!661831 () Unit!32774)

(assert (=> d!529009 (= lt!661832 lt!661831)))

(assert (=> d!529009 (isPrefix!1597 lt!661709 lt!661709)))

(declare-fun lemmaIsPrefixRefl!1078 (List!18994 List!18994) Unit!32774)

(assert (=> d!529009 (= lt!661831 (lemmaIsPrefixRefl!1078 lt!661709 lt!661709))))

(declare-fun rulesValidInductive!1115 (LexerInterface!2985 List!18995) Bool)

(assert (=> d!529009 (rulesValidInductive!1115 thiss!24550 rules!3447)))

(assert (=> d!529009 (= (maxPrefix!1539 thiss!24550 rules!3447 lt!661709) lt!661834)))

(declare-fun b!1727294 () Bool)

(declare-fun res!775444 () Bool)

(assert (=> b!1727294 (=> (not res!775444) (not e!1104991))))

(assert (=> b!1727294 (= res!775444 (= (value!105320 (_1!10706 (get!5633 lt!661834))) (apply!5161 (transformation!3356 (rule!5322 (_1!10706 (get!5633 lt!661834)))) (seqFromList!2330 (originalCharacters!4170 (_1!10706 (get!5633 lt!661834)))))))))

(declare-fun call!109859 () Option!3736)

(declare-fun bm!109854 () Bool)

(assert (=> bm!109854 (= call!109859 (maxPrefixOneRule!915 thiss!24550 (h!24326 rules!3447) lt!661709))))

(declare-fun b!1727295 () Bool)

(assert (=> b!1727295 (= e!1104991 (contains!3378 rules!3447 (rule!5322 (_1!10706 (get!5633 lt!661834)))))))

(declare-fun b!1727296 () Bool)

(declare-fun res!775442 () Bool)

(assert (=> b!1727296 (=> (not res!775442) (not e!1104991))))

(assert (=> b!1727296 (= res!775442 (matchR!2158 (regex!3356 (rule!5322 (_1!10706 (get!5633 lt!661834)))) (list!7649 (charsOf!2005 (_1!10706 (get!5633 lt!661834))))))))

(declare-fun b!1727297 () Bool)

(assert (=> b!1727297 (= e!1104992 e!1104991)))

(declare-fun res!775441 () Bool)

(assert (=> b!1727297 (=> (not res!775441) (not e!1104991))))

(assert (=> b!1727297 (= res!775441 (isDefined!3079 lt!661834))))

(declare-fun b!1727298 () Bool)

(assert (=> b!1727298 (= e!1104993 call!109859)))

(declare-fun b!1727299 () Bool)

(declare-fun res!775446 () Bool)

(assert (=> b!1727299 (=> (not res!775446) (not e!1104991))))

(assert (=> b!1727299 (= res!775446 (< (size!15036 (_2!10706 (get!5633 lt!661834))) (size!15036 lt!661709)))))

(declare-fun b!1727300 () Bool)

(declare-fun lt!661833 () Option!3736)

(declare-fun lt!661830 () Option!3736)

(assert (=> b!1727300 (= e!1104993 (ite (and (is-None!3735 lt!661833) (is-None!3735 lt!661830)) None!3735 (ite (is-None!3735 lt!661830) lt!661833 (ite (is-None!3735 lt!661833) lt!661830 (ite (>= (size!15035 (_1!10706 (v!25148 lt!661833))) (size!15035 (_1!10706 (v!25148 lt!661830)))) lt!661833 lt!661830)))))))

(assert (=> b!1727300 (= lt!661833 call!109859)))

(assert (=> b!1727300 (= lt!661830 (maxPrefix!1539 thiss!24550 (t!160240 rules!3447) lt!661709))))

(declare-fun b!1727301 () Bool)

(declare-fun res!775445 () Bool)

(assert (=> b!1727301 (=> (not res!775445) (not e!1104991))))

(assert (=> b!1727301 (= res!775445 (= (++!5181 (list!7649 (charsOf!2005 (_1!10706 (get!5633 lt!661834)))) (_2!10706 (get!5633 lt!661834))) lt!661709))))

(assert (= (and d!529009 c!282346) b!1727298))

(assert (= (and d!529009 (not c!282346)) b!1727300))

(assert (= (or b!1727298 b!1727300) bm!109854))

(assert (= (and d!529009 (not res!775447)) b!1727297))

(assert (= (and b!1727297 res!775441) b!1727293))

(assert (= (and b!1727293 res!775443) b!1727299))

(assert (= (and b!1727299 res!775446) b!1727301))

(assert (= (and b!1727301 res!775445) b!1727294))

(assert (= (and b!1727294 res!775444) b!1727296))

(assert (= (and b!1727296 res!775442) b!1727295))

(declare-fun m!2134459 () Bool)

(assert (=> b!1727296 m!2134459))

(declare-fun m!2134461 () Bool)

(assert (=> b!1727296 m!2134461))

(assert (=> b!1727296 m!2134461))

(declare-fun m!2134463 () Bool)

(assert (=> b!1727296 m!2134463))

(assert (=> b!1727296 m!2134463))

(declare-fun m!2134465 () Bool)

(assert (=> b!1727296 m!2134465))

(assert (=> b!1727295 m!2134459))

(declare-fun m!2134467 () Bool)

(assert (=> b!1727295 m!2134467))

(declare-fun m!2134469 () Bool)

(assert (=> b!1727297 m!2134469))

(declare-fun m!2134471 () Bool)

(assert (=> bm!109854 m!2134471))

(assert (=> b!1727299 m!2134459))

(declare-fun m!2134473 () Bool)

(assert (=> b!1727299 m!2134473))

(assert (=> b!1727299 m!2134255))

(assert (=> b!1727301 m!2134459))

(assert (=> b!1727301 m!2134461))

(assert (=> b!1727301 m!2134461))

(assert (=> b!1727301 m!2134463))

(assert (=> b!1727301 m!2134463))

(declare-fun m!2134475 () Bool)

(assert (=> b!1727301 m!2134475))

(declare-fun m!2134477 () Bool)

(assert (=> d!529009 m!2134477))

(declare-fun m!2134479 () Bool)

(assert (=> d!529009 m!2134479))

(declare-fun m!2134481 () Bool)

(assert (=> d!529009 m!2134481))

(declare-fun m!2134483 () Bool)

(assert (=> d!529009 m!2134483))

(assert (=> b!1727294 m!2134459))

(declare-fun m!2134485 () Bool)

(assert (=> b!1727294 m!2134485))

(assert (=> b!1727294 m!2134485))

(declare-fun m!2134487 () Bool)

(assert (=> b!1727294 m!2134487))

(assert (=> b!1727293 m!2134459))

(assert (=> b!1727293 m!2134461))

(assert (=> b!1727293 m!2134461))

(assert (=> b!1727293 m!2134463))

(declare-fun m!2134489 () Bool)

(assert (=> b!1727300 m!2134489))

(assert (=> b!1727133 d!529009))

(declare-fun d!529011 () Bool)

(declare-fun list!7651 (Conc!6294) List!18994)

(assert (=> d!529011 (= (list!7649 lt!661701) (list!7651 (c!282340 lt!661701)))))

(declare-fun bs!402458 () Bool)

(assert (= bs!402458 d!529011))

(declare-fun m!2134491 () Bool)

(assert (=> bs!402458 m!2134491))

(assert (=> b!1727133 d!529011))

(declare-fun d!529013 () Bool)

(declare-fun lt!661837 () BalanceConc!12532)

(assert (=> d!529013 (= (list!7649 lt!661837) (originalCharacters!4170 token!523))))

(assert (=> d!529013 (= lt!661837 (dynLambda!8780 (toChars!4722 (transformation!3356 (rule!5322 token!523))) (value!105320 token!523)))))

(assert (=> d!529013 (= (charsOf!2005 token!523) lt!661837)))

(declare-fun b_lambda!54985 () Bool)

(assert (=> (not b_lambda!54985) (not d!529013)))

(declare-fun t!160263 () Bool)

(declare-fun tb!102699 () Bool)

(assert (=> (and b!1727118 (= (toChars!4722 (transformation!3356 rule!422)) (toChars!4722 (transformation!3356 (rule!5322 token!523)))) t!160263) tb!102699))

(declare-fun b!1727302 () Bool)

(declare-fun e!1104994 () Bool)

(declare-fun tp!492801 () Bool)

(assert (=> b!1727302 (= e!1104994 (and (inv!24466 (c!282340 (dynLambda!8780 (toChars!4722 (transformation!3356 (rule!5322 token!523))) (value!105320 token!523)))) tp!492801))))

(declare-fun result!123466 () Bool)

(assert (=> tb!102699 (= result!123466 (and (inv!24467 (dynLambda!8780 (toChars!4722 (transformation!3356 (rule!5322 token!523))) (value!105320 token!523))) e!1104994))))

(assert (= tb!102699 b!1727302))

(declare-fun m!2134493 () Bool)

(assert (=> b!1727302 m!2134493))

(declare-fun m!2134495 () Bool)

(assert (=> tb!102699 m!2134495))

(assert (=> d!529013 t!160263))

(declare-fun b_and!126909 () Bool)

(assert (= b_and!126867 (and (=> t!160263 result!123466) b_and!126909)))

(declare-fun t!160265 () Bool)

(declare-fun tb!102701 () Bool)

(assert (=> (and b!1727121 (= (toChars!4722 (transformation!3356 (rule!5322 token!523))) (toChars!4722 (transformation!3356 (rule!5322 token!523)))) t!160265) tb!102701))

(declare-fun result!123468 () Bool)

(assert (= result!123468 result!123466))

(assert (=> d!529013 t!160265))

(declare-fun b_and!126911 () Bool)

(assert (= b_and!126869 (and (=> t!160265 result!123468) b_and!126911)))

(declare-fun t!160267 () Bool)

(declare-fun tb!102703 () Bool)

(assert (=> (and b!1727110 (= (toChars!4722 (transformation!3356 (h!24326 rules!3447))) (toChars!4722 (transformation!3356 (rule!5322 token!523)))) t!160267) tb!102703))

(declare-fun result!123470 () Bool)

(assert (= result!123470 result!123466))

(assert (=> d!529013 t!160267))

(declare-fun b_and!126913 () Bool)

(assert (= b_and!126871 (and (=> t!160267 result!123470) b_and!126913)))

(declare-fun m!2134497 () Bool)

(assert (=> d!529013 m!2134497))

(declare-fun m!2134499 () Bool)

(assert (=> d!529013 m!2134499))

(assert (=> b!1727133 d!529013))

(declare-fun d!529015 () Bool)

(declare-fun e!1105011 () Bool)

(assert (=> d!529015 e!1105011))

(declare-fun c!282353 () Bool)

(assert (=> d!529015 (= c!282353 (is-EmptyExpr!4684 (regex!3356 (rule!5322 (_1!10706 lt!661714)))))))

(declare-fun lt!661840 () Bool)

(declare-fun e!1105014 () Bool)

(assert (=> d!529015 (= lt!661840 e!1105014)))

(declare-fun c!282354 () Bool)

(assert (=> d!529015 (= c!282354 (isEmpty!11903 lt!661700))))

(declare-fun validRegex!1889 (Regex!4684) Bool)

(assert (=> d!529015 (validRegex!1889 (regex!3356 (rule!5322 (_1!10706 lt!661714))))))

(assert (=> d!529015 (= (matchR!2158 (regex!3356 (rule!5322 (_1!10706 lt!661714))) lt!661700) lt!661840)))

(declare-fun bm!109857 () Bool)

(declare-fun call!109862 () Bool)

(assert (=> bm!109857 (= call!109862 (isEmpty!11903 lt!661700))))

(declare-fun b!1727331 () Bool)

(declare-fun res!775470 () Bool)

(declare-fun e!1105012 () Bool)

(assert (=> b!1727331 (=> res!775470 e!1105012)))

(declare-fun tail!2580 (List!18994) List!18994)

(assert (=> b!1727331 (= res!775470 (not (isEmpty!11903 (tail!2580 lt!661700))))))

(declare-fun b!1727332 () Bool)

(declare-fun res!775467 () Bool)

(declare-fun e!1105009 () Bool)

(assert (=> b!1727332 (=> res!775467 e!1105009)))

(assert (=> b!1727332 (= res!775467 (not (is-ElementMatch!4684 (regex!3356 (rule!5322 (_1!10706 lt!661714))))))))

(declare-fun e!1105015 () Bool)

(assert (=> b!1727332 (= e!1105015 e!1105009)))

(declare-fun b!1727333 () Bool)

(declare-fun derivativeStep!1183 (Regex!4684 C!9542) Regex!4684)

(assert (=> b!1727333 (= e!1105014 (matchR!2158 (derivativeStep!1183 (regex!3356 (rule!5322 (_1!10706 lt!661714))) (head!3919 lt!661700)) (tail!2580 lt!661700)))))

(declare-fun b!1727334 () Bool)

(declare-fun e!1105010 () Bool)

(assert (=> b!1727334 (= e!1105010 e!1105012)))

(declare-fun res!775469 () Bool)

(assert (=> b!1727334 (=> res!775469 e!1105012)))

(assert (=> b!1727334 (= res!775469 call!109862)))

(declare-fun b!1727335 () Bool)

(declare-fun res!775466 () Bool)

(assert (=> b!1727335 (=> res!775466 e!1105009)))

(declare-fun e!1105013 () Bool)

(assert (=> b!1727335 (= res!775466 e!1105013)))

(declare-fun res!775465 () Bool)

(assert (=> b!1727335 (=> (not res!775465) (not e!1105013))))

(assert (=> b!1727335 (= res!775465 lt!661840)))

(declare-fun b!1727336 () Bool)

(assert (=> b!1727336 (= e!1105013 (= (head!3919 lt!661700) (c!282339 (regex!3356 (rule!5322 (_1!10706 lt!661714))))))))

(declare-fun b!1727337 () Bool)

(assert (=> b!1727337 (= e!1105011 e!1105015)))

(declare-fun c!282355 () Bool)

(assert (=> b!1727337 (= c!282355 (is-EmptyLang!4684 (regex!3356 (rule!5322 (_1!10706 lt!661714)))))))

(declare-fun b!1727338 () Bool)

(declare-fun res!775464 () Bool)

(assert (=> b!1727338 (=> (not res!775464) (not e!1105013))))

(assert (=> b!1727338 (= res!775464 (not call!109862))))

(declare-fun b!1727339 () Bool)

(assert (=> b!1727339 (= e!1105015 (not lt!661840))))

(declare-fun b!1727340 () Bool)

(declare-fun nullable!1415 (Regex!4684) Bool)

(assert (=> b!1727340 (= e!1105014 (nullable!1415 (regex!3356 (rule!5322 (_1!10706 lt!661714)))))))

(declare-fun b!1727341 () Bool)

(declare-fun res!775468 () Bool)

(assert (=> b!1727341 (=> (not res!775468) (not e!1105013))))

(assert (=> b!1727341 (= res!775468 (isEmpty!11903 (tail!2580 lt!661700)))))

(declare-fun b!1727342 () Bool)

(assert (=> b!1727342 (= e!1105012 (not (= (head!3919 lt!661700) (c!282339 (regex!3356 (rule!5322 (_1!10706 lt!661714)))))))))

(declare-fun b!1727343 () Bool)

(assert (=> b!1727343 (= e!1105011 (= lt!661840 call!109862))))

(declare-fun b!1727344 () Bool)

(assert (=> b!1727344 (= e!1105009 e!1105010)))

(declare-fun res!775471 () Bool)

(assert (=> b!1727344 (=> (not res!775471) (not e!1105010))))

(assert (=> b!1727344 (= res!775471 (not lt!661840))))

(assert (= (and d!529015 c!282354) b!1727340))

(assert (= (and d!529015 (not c!282354)) b!1727333))

(assert (= (and d!529015 c!282353) b!1727343))

(assert (= (and d!529015 (not c!282353)) b!1727337))

(assert (= (and b!1727337 c!282355) b!1727339))

(assert (= (and b!1727337 (not c!282355)) b!1727332))

(assert (= (and b!1727332 (not res!775467)) b!1727335))

(assert (= (and b!1727335 res!775465) b!1727338))

(assert (= (and b!1727338 res!775464) b!1727341))

(assert (= (and b!1727341 res!775468) b!1727336))

(assert (= (and b!1727335 (not res!775466)) b!1727344))

(assert (= (and b!1727344 res!775471) b!1727334))

(assert (= (and b!1727334 (not res!775469)) b!1727331))

(assert (= (and b!1727331 (not res!775470)) b!1727342))

(assert (= (or b!1727343 b!1727334 b!1727338) bm!109857))

(declare-fun m!2134501 () Bool)

(assert (=> b!1727340 m!2134501))

(declare-fun m!2134503 () Bool)

(assert (=> bm!109857 m!2134503))

(declare-fun m!2134505 () Bool)

(assert (=> b!1727331 m!2134505))

(assert (=> b!1727331 m!2134505))

(declare-fun m!2134507 () Bool)

(assert (=> b!1727331 m!2134507))

(assert (=> b!1727341 m!2134505))

(assert (=> b!1727341 m!2134505))

(assert (=> b!1727341 m!2134507))

(assert (=> d!529015 m!2134503))

(declare-fun m!2134509 () Bool)

(assert (=> d!529015 m!2134509))

(declare-fun m!2134511 () Bool)

(assert (=> b!1727333 m!2134511))

(assert (=> b!1727333 m!2134511))

(declare-fun m!2134513 () Bool)

(assert (=> b!1727333 m!2134513))

(assert (=> b!1727333 m!2134505))

(assert (=> b!1727333 m!2134513))

(assert (=> b!1727333 m!2134505))

(declare-fun m!2134515 () Bool)

(assert (=> b!1727333 m!2134515))

(assert (=> b!1727336 m!2134511))

(assert (=> b!1727342 m!2134511))

(assert (=> b!1727115 d!529015))

(declare-fun d!529017 () Bool)

(assert (=> d!529017 (= (inv!24467 (dynLambda!8780 (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (dynLambda!8781 (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) lt!661710))) (isBalanced!1969 (c!282340 (dynLambda!8780 (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (dynLambda!8781 (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) lt!661710)))))))

(declare-fun bs!402459 () Bool)

(assert (= bs!402459 d!529017))

(declare-fun m!2134517 () Bool)

(assert (=> bs!402459 m!2134517))

(assert (=> tb!102669 d!529017))

(declare-fun d!529019 () Bool)

(declare-fun e!1105018 () Bool)

(assert (=> d!529019 e!1105018))

(declare-fun res!775476 () Bool)

(assert (=> d!529019 (=> (not res!775476) (not e!1105018))))

(assert (=> d!529019 (= res!775476 (isDefined!3080 (getRuleFromTag!406 thiss!24550 rules!3447 (tag!3676 (rule!5322 (_1!10706 lt!661714))))))))

(declare-fun lt!661843 () Unit!32774)

(declare-fun choose!10534 (LexerInterface!2985 List!18995 List!18994 Token!6278) Unit!32774)

(assert (=> d!529019 (= lt!661843 (choose!10534 thiss!24550 rules!3447 lt!661685 (_1!10706 lt!661714)))))

(assert (=> d!529019 (rulesInvariant!2654 thiss!24550 rules!3447)))

(assert (=> d!529019 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!406 thiss!24550 rules!3447 lt!661685 (_1!10706 lt!661714)) lt!661843)))

(declare-fun b!1727349 () Bool)

(declare-fun res!775477 () Bool)

(assert (=> b!1727349 (=> (not res!775477) (not e!1105018))))

(assert (=> b!1727349 (= res!775477 (matchR!2158 (regex!3356 (get!5632 (getRuleFromTag!406 thiss!24550 rules!3447 (tag!3676 (rule!5322 (_1!10706 lt!661714)))))) (list!7649 (charsOf!2005 (_1!10706 lt!661714)))))))

(declare-fun b!1727350 () Bool)

(assert (=> b!1727350 (= e!1105018 (= (rule!5322 (_1!10706 lt!661714)) (get!5632 (getRuleFromTag!406 thiss!24550 rules!3447 (tag!3676 (rule!5322 (_1!10706 lt!661714)))))))))

(assert (= (and d!529019 res!775476) b!1727349))

(assert (= (and b!1727349 res!775477) b!1727350))

(assert (=> d!529019 m!2134221))

(assert (=> d!529019 m!2134221))

(declare-fun m!2134519 () Bool)

(assert (=> d!529019 m!2134519))

(declare-fun m!2134521 () Bool)

(assert (=> d!529019 m!2134521))

(assert (=> d!529019 m!2134213))

(assert (=> b!1727349 m!2134163))

(assert (=> b!1727349 m!2134165))

(assert (=> b!1727349 m!2134163))

(assert (=> b!1727349 m!2134221))

(declare-fun m!2134523 () Bool)

(assert (=> b!1727349 m!2134523))

(assert (=> b!1727349 m!2134221))

(assert (=> b!1727349 m!2134165))

(declare-fun m!2134525 () Bool)

(assert (=> b!1727349 m!2134525))

(assert (=> b!1727350 m!2134221))

(assert (=> b!1727350 m!2134221))

(assert (=> b!1727350 m!2134523))

(assert (=> b!1727135 d!529019))

(declare-fun d!529021 () Bool)

(assert (=> d!529021 (isPrefix!1597 lt!661700 (++!5181 lt!661700 (_2!10706 lt!661714)))))

(declare-fun lt!661846 () Unit!32774)

(declare-fun choose!10535 (List!18994 List!18994) Unit!32774)

(assert (=> d!529021 (= lt!661846 (choose!10535 lt!661700 (_2!10706 lt!661714)))))

(assert (=> d!529021 (= (lemmaConcatTwoListThenFirstIsPrefix!1107 lt!661700 (_2!10706 lt!661714)) lt!661846)))

(declare-fun bs!402460 () Bool)

(assert (= bs!402460 d!529021))

(assert (=> bs!402460 m!2134235))

(assert (=> bs!402460 m!2134235))

(assert (=> bs!402460 m!2134237))

(declare-fun m!2134527 () Bool)

(assert (=> bs!402460 m!2134527))

(assert (=> b!1727135 d!529021))

(declare-fun b!1727361 () Bool)

(declare-fun res!775483 () Bool)

(declare-fun e!1105023 () Bool)

(assert (=> b!1727361 (=> (not res!775483) (not e!1105023))))

(declare-fun lt!661849 () List!18994)

(assert (=> b!1727361 (= res!775483 (= (size!15036 lt!661849) (+ (size!15036 lt!661700) (size!15036 (_2!10706 lt!661714)))))))

(declare-fun b!1727359 () Bool)

(declare-fun e!1105024 () List!18994)

(assert (=> b!1727359 (= e!1105024 (_2!10706 lt!661714))))

(declare-fun d!529023 () Bool)

(assert (=> d!529023 e!1105023))

(declare-fun res!775482 () Bool)

(assert (=> d!529023 (=> (not res!775482) (not e!1105023))))

(declare-fun content!2707 (List!18994) (Set C!9542))

(assert (=> d!529023 (= res!775482 (= (content!2707 lt!661849) (set.union (content!2707 lt!661700) (content!2707 (_2!10706 lt!661714)))))))

(assert (=> d!529023 (= lt!661849 e!1105024)))

(declare-fun c!282358 () Bool)

(assert (=> d!529023 (= c!282358 (is-Nil!18924 lt!661700))))

(assert (=> d!529023 (= (++!5181 lt!661700 (_2!10706 lt!661714)) lt!661849)))

(declare-fun b!1727360 () Bool)

(assert (=> b!1727360 (= e!1105024 (Cons!18924 (h!24325 lt!661700) (++!5181 (t!160239 lt!661700) (_2!10706 lt!661714))))))

(declare-fun b!1727362 () Bool)

(assert (=> b!1727362 (= e!1105023 (or (not (= (_2!10706 lt!661714) Nil!18924)) (= lt!661849 lt!661700)))))

(assert (= (and d!529023 c!282358) b!1727359))

(assert (= (and d!529023 (not c!282358)) b!1727360))

(assert (= (and d!529023 res!775482) b!1727361))

(assert (= (and b!1727361 res!775483) b!1727362))

(declare-fun m!2134529 () Bool)

(assert (=> b!1727361 m!2134529))

(assert (=> b!1727361 m!2134279))

(declare-fun m!2134531 () Bool)

(assert (=> b!1727361 m!2134531))

(declare-fun m!2134533 () Bool)

(assert (=> d!529023 m!2134533))

(declare-fun m!2134535 () Bool)

(assert (=> d!529023 m!2134535))

(declare-fun m!2134537 () Bool)

(assert (=> d!529023 m!2134537))

(declare-fun m!2134539 () Bool)

(assert (=> b!1727360 m!2134539))

(assert (=> b!1727135 d!529023))

(declare-fun d!529025 () Bool)

(declare-fun lt!661850 () BalanceConc!12532)

(assert (=> d!529025 (= (list!7649 lt!661850) (originalCharacters!4170 (_1!10706 lt!661714)))))

(assert (=> d!529025 (= lt!661850 (dynLambda!8780 (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (value!105320 (_1!10706 lt!661714))))))

(assert (=> d!529025 (= (charsOf!2005 (_1!10706 lt!661714)) lt!661850)))

(declare-fun b_lambda!54987 () Bool)

(assert (=> (not b_lambda!54987) (not d!529025)))

(assert (=> d!529025 t!160221))

(declare-fun b_and!126915 () Bool)

(assert (= b_and!126909 (and (=> t!160221 result!123422) b_and!126915)))

(assert (=> d!529025 t!160223))

(declare-fun b_and!126917 () Bool)

(assert (= b_and!126911 (and (=> t!160223 result!123426) b_and!126917)))

(assert (=> d!529025 t!160225))

(declare-fun b_and!126919 () Bool)

(assert (= b_and!126913 (and (=> t!160225 result!123428) b_and!126919)))

(declare-fun m!2134541 () Bool)

(assert (=> d!529025 m!2134541))

(assert (=> d!529025 m!2134143))

(assert (=> b!1727135 d!529025))

(declare-fun b!1727372 () Bool)

(declare-fun res!775493 () Bool)

(declare-fun e!1105032 () Bool)

(assert (=> b!1727372 (=> (not res!775493) (not e!1105032))))

(assert (=> b!1727372 (= res!775493 (= (head!3919 lt!661709) (head!3919 lt!661685)))))

(declare-fun b!1727371 () Bool)

(declare-fun e!1105031 () Bool)

(assert (=> b!1727371 (= e!1105031 e!1105032)))

(declare-fun res!775492 () Bool)

(assert (=> b!1727371 (=> (not res!775492) (not e!1105032))))

(assert (=> b!1727371 (= res!775492 (not (is-Nil!18924 lt!661685)))))

(declare-fun b!1727374 () Bool)

(declare-fun e!1105033 () Bool)

(assert (=> b!1727374 (= e!1105033 (>= (size!15036 lt!661685) (size!15036 lt!661709)))))

(declare-fun b!1727373 () Bool)

(assert (=> b!1727373 (= e!1105032 (isPrefix!1597 (tail!2580 lt!661709) (tail!2580 lt!661685)))))

(declare-fun d!529027 () Bool)

(assert (=> d!529027 e!1105033))

(declare-fun res!775495 () Bool)

(assert (=> d!529027 (=> res!775495 e!1105033)))

(declare-fun lt!661853 () Bool)

(assert (=> d!529027 (= res!775495 (not lt!661853))))

(assert (=> d!529027 (= lt!661853 e!1105031)))

(declare-fun res!775494 () Bool)

(assert (=> d!529027 (=> res!775494 e!1105031)))

(assert (=> d!529027 (= res!775494 (is-Nil!18924 lt!661709))))

(assert (=> d!529027 (= (isPrefix!1597 lt!661709 lt!661685) lt!661853)))

(assert (= (and d!529027 (not res!775494)) b!1727371))

(assert (= (and b!1727371 res!775492) b!1727372))

(assert (= (and b!1727372 res!775493) b!1727373))

(assert (= (and d!529027 (not res!775495)) b!1727374))

(declare-fun m!2134543 () Bool)

(assert (=> b!1727372 m!2134543))

(declare-fun m!2134545 () Bool)

(assert (=> b!1727372 m!2134545))

(assert (=> b!1727374 m!2134253))

(assert (=> b!1727374 m!2134255))

(declare-fun m!2134547 () Bool)

(assert (=> b!1727373 m!2134547))

(declare-fun m!2134549 () Bool)

(assert (=> b!1727373 m!2134549))

(assert (=> b!1727373 m!2134547))

(assert (=> b!1727373 m!2134549))

(declare-fun m!2134551 () Bool)

(assert (=> b!1727373 m!2134551))

(assert (=> b!1727135 d!529027))

(declare-fun d!529029 () Bool)

(assert (=> d!529029 (= (get!5633 lt!661708) (v!25148 lt!661708))))

(assert (=> b!1727135 d!529029))

(declare-fun b!1727376 () Bool)

(declare-fun res!775497 () Bool)

(declare-fun e!1105035 () Bool)

(assert (=> b!1727376 (=> (not res!775497) (not e!1105035))))

(assert (=> b!1727376 (= res!775497 (= (head!3919 lt!661700) (head!3919 (++!5181 lt!661700 (_2!10706 lt!661714)))))))

(declare-fun b!1727375 () Bool)

(declare-fun e!1105034 () Bool)

(assert (=> b!1727375 (= e!1105034 e!1105035)))

(declare-fun res!775496 () Bool)

(assert (=> b!1727375 (=> (not res!775496) (not e!1105035))))

(assert (=> b!1727375 (= res!775496 (not (is-Nil!18924 (++!5181 lt!661700 (_2!10706 lt!661714)))))))

(declare-fun b!1727378 () Bool)

(declare-fun e!1105036 () Bool)

(assert (=> b!1727378 (= e!1105036 (>= (size!15036 (++!5181 lt!661700 (_2!10706 lt!661714))) (size!15036 lt!661700)))))

(declare-fun b!1727377 () Bool)

(assert (=> b!1727377 (= e!1105035 (isPrefix!1597 (tail!2580 lt!661700) (tail!2580 (++!5181 lt!661700 (_2!10706 lt!661714)))))))

(declare-fun d!529031 () Bool)

(assert (=> d!529031 e!1105036))

(declare-fun res!775499 () Bool)

(assert (=> d!529031 (=> res!775499 e!1105036)))

(declare-fun lt!661854 () Bool)

(assert (=> d!529031 (= res!775499 (not lt!661854))))

(assert (=> d!529031 (= lt!661854 e!1105034)))

(declare-fun res!775498 () Bool)

(assert (=> d!529031 (=> res!775498 e!1105034)))

(assert (=> d!529031 (= res!775498 (is-Nil!18924 lt!661700))))

(assert (=> d!529031 (= (isPrefix!1597 lt!661700 (++!5181 lt!661700 (_2!10706 lt!661714))) lt!661854)))

(assert (= (and d!529031 (not res!775498)) b!1727375))

(assert (= (and b!1727375 res!775496) b!1727376))

(assert (= (and b!1727376 res!775497) b!1727377))

(assert (= (and d!529031 (not res!775499)) b!1727378))

(assert (=> b!1727376 m!2134511))

(assert (=> b!1727376 m!2134235))

(declare-fun m!2134553 () Bool)

(assert (=> b!1727376 m!2134553))

(assert (=> b!1727378 m!2134235))

(declare-fun m!2134555 () Bool)

(assert (=> b!1727378 m!2134555))

(assert (=> b!1727378 m!2134279))

(assert (=> b!1727377 m!2134505))

(assert (=> b!1727377 m!2134235))

(declare-fun m!2134557 () Bool)

(assert (=> b!1727377 m!2134557))

(assert (=> b!1727377 m!2134505))

(assert (=> b!1727377 m!2134557))

(declare-fun m!2134559 () Bool)

(assert (=> b!1727377 m!2134559))

(assert (=> b!1727135 d!529031))

(declare-fun b!1727381 () Bool)

(declare-fun res!775501 () Bool)

(declare-fun e!1105037 () Bool)

(assert (=> b!1727381 (=> (not res!775501) (not e!1105037))))

(declare-fun lt!661855 () List!18994)

(assert (=> b!1727381 (= res!775501 (= (size!15036 lt!661855) (+ (size!15036 lt!661709) (size!15036 suffix!1421))))))

(declare-fun b!1727379 () Bool)

(declare-fun e!1105038 () List!18994)

(assert (=> b!1727379 (= e!1105038 suffix!1421)))

(declare-fun d!529033 () Bool)

(assert (=> d!529033 e!1105037))

(declare-fun res!775500 () Bool)

(assert (=> d!529033 (=> (not res!775500) (not e!1105037))))

(assert (=> d!529033 (= res!775500 (= (content!2707 lt!661855) (set.union (content!2707 lt!661709) (content!2707 suffix!1421))))))

(assert (=> d!529033 (= lt!661855 e!1105038)))

(declare-fun c!282359 () Bool)

(assert (=> d!529033 (= c!282359 (is-Nil!18924 lt!661709))))

(assert (=> d!529033 (= (++!5181 lt!661709 suffix!1421) lt!661855)))

(declare-fun b!1727380 () Bool)

(assert (=> b!1727380 (= e!1105038 (Cons!18924 (h!24325 lt!661709) (++!5181 (t!160239 lt!661709) suffix!1421)))))

(declare-fun b!1727382 () Bool)

(assert (=> b!1727382 (= e!1105037 (or (not (= suffix!1421 Nil!18924)) (= lt!661855 lt!661709)))))

(assert (= (and d!529033 c!282359) b!1727379))

(assert (= (and d!529033 (not c!282359)) b!1727380))

(assert (= (and d!529033 res!775500) b!1727381))

(assert (= (and b!1727381 res!775501) b!1727382))

(declare-fun m!2134561 () Bool)

(assert (=> b!1727381 m!2134561))

(assert (=> b!1727381 m!2134255))

(declare-fun m!2134563 () Bool)

(assert (=> b!1727381 m!2134563))

(declare-fun m!2134565 () Bool)

(assert (=> d!529033 m!2134565))

(declare-fun m!2134567 () Bool)

(assert (=> d!529033 m!2134567))

(declare-fun m!2134569 () Bool)

(assert (=> d!529033 m!2134569))

(declare-fun m!2134571 () Bool)

(assert (=> b!1727380 m!2134571))

(assert (=> b!1727135 d!529033))

(declare-fun b!1727383 () Bool)

(declare-fun res!775504 () Bool)

(declare-fun e!1105039 () Bool)

(assert (=> b!1727383 (=> (not res!775504) (not e!1105039))))

(declare-fun lt!661860 () Option!3736)

(assert (=> b!1727383 (= res!775504 (= (list!7649 (charsOf!2005 (_1!10706 (get!5633 lt!661860)))) (originalCharacters!4170 (_1!10706 (get!5633 lt!661860)))))))

(declare-fun d!529035 () Bool)

(declare-fun e!1105040 () Bool)

(assert (=> d!529035 e!1105040))

(declare-fun res!775508 () Bool)

(assert (=> d!529035 (=> res!775508 e!1105040)))

(assert (=> d!529035 (= res!775508 (isEmpty!11907 lt!661860))))

(declare-fun e!1105041 () Option!3736)

(assert (=> d!529035 (= lt!661860 e!1105041)))

(declare-fun c!282360 () Bool)

(assert (=> d!529035 (= c!282360 (and (is-Cons!18925 rules!3447) (is-Nil!18925 (t!160240 rules!3447))))))

(declare-fun lt!661858 () Unit!32774)

(declare-fun lt!661857 () Unit!32774)

(assert (=> d!529035 (= lt!661858 lt!661857)))

(assert (=> d!529035 (isPrefix!1597 lt!661685 lt!661685)))

(assert (=> d!529035 (= lt!661857 (lemmaIsPrefixRefl!1078 lt!661685 lt!661685))))

(assert (=> d!529035 (rulesValidInductive!1115 thiss!24550 rules!3447)))

(assert (=> d!529035 (= (maxPrefix!1539 thiss!24550 rules!3447 lt!661685) lt!661860)))

(declare-fun b!1727384 () Bool)

(declare-fun res!775505 () Bool)

(assert (=> b!1727384 (=> (not res!775505) (not e!1105039))))

(assert (=> b!1727384 (= res!775505 (= (value!105320 (_1!10706 (get!5633 lt!661860))) (apply!5161 (transformation!3356 (rule!5322 (_1!10706 (get!5633 lt!661860)))) (seqFromList!2330 (originalCharacters!4170 (_1!10706 (get!5633 lt!661860)))))))))

(declare-fun bm!109858 () Bool)

(declare-fun call!109863 () Option!3736)

(assert (=> bm!109858 (= call!109863 (maxPrefixOneRule!915 thiss!24550 (h!24326 rules!3447) lt!661685))))

(declare-fun b!1727385 () Bool)

(assert (=> b!1727385 (= e!1105039 (contains!3378 rules!3447 (rule!5322 (_1!10706 (get!5633 lt!661860)))))))

(declare-fun b!1727386 () Bool)

(declare-fun res!775503 () Bool)

(assert (=> b!1727386 (=> (not res!775503) (not e!1105039))))

(assert (=> b!1727386 (= res!775503 (matchR!2158 (regex!3356 (rule!5322 (_1!10706 (get!5633 lt!661860)))) (list!7649 (charsOf!2005 (_1!10706 (get!5633 lt!661860))))))))

(declare-fun b!1727387 () Bool)

(assert (=> b!1727387 (= e!1105040 e!1105039)))

(declare-fun res!775502 () Bool)

(assert (=> b!1727387 (=> (not res!775502) (not e!1105039))))

(assert (=> b!1727387 (= res!775502 (isDefined!3079 lt!661860))))

(declare-fun b!1727388 () Bool)

(assert (=> b!1727388 (= e!1105041 call!109863)))

(declare-fun b!1727389 () Bool)

(declare-fun res!775507 () Bool)

(assert (=> b!1727389 (=> (not res!775507) (not e!1105039))))

(assert (=> b!1727389 (= res!775507 (< (size!15036 (_2!10706 (get!5633 lt!661860))) (size!15036 lt!661685)))))

(declare-fun b!1727390 () Bool)

(declare-fun lt!661859 () Option!3736)

(declare-fun lt!661856 () Option!3736)

(assert (=> b!1727390 (= e!1105041 (ite (and (is-None!3735 lt!661859) (is-None!3735 lt!661856)) None!3735 (ite (is-None!3735 lt!661856) lt!661859 (ite (is-None!3735 lt!661859) lt!661856 (ite (>= (size!15035 (_1!10706 (v!25148 lt!661859))) (size!15035 (_1!10706 (v!25148 lt!661856)))) lt!661859 lt!661856)))))))

(assert (=> b!1727390 (= lt!661859 call!109863)))

(assert (=> b!1727390 (= lt!661856 (maxPrefix!1539 thiss!24550 (t!160240 rules!3447) lt!661685))))

(declare-fun b!1727391 () Bool)

(declare-fun res!775506 () Bool)

(assert (=> b!1727391 (=> (not res!775506) (not e!1105039))))

(assert (=> b!1727391 (= res!775506 (= (++!5181 (list!7649 (charsOf!2005 (_1!10706 (get!5633 lt!661860)))) (_2!10706 (get!5633 lt!661860))) lt!661685))))

(assert (= (and d!529035 c!282360) b!1727388))

(assert (= (and d!529035 (not c!282360)) b!1727390))

(assert (= (or b!1727388 b!1727390) bm!109858))

(assert (= (and d!529035 (not res!775508)) b!1727387))

(assert (= (and b!1727387 res!775502) b!1727383))

(assert (= (and b!1727383 res!775504) b!1727389))

(assert (= (and b!1727389 res!775507) b!1727391))

(assert (= (and b!1727391 res!775506) b!1727384))

(assert (= (and b!1727384 res!775505) b!1727386))

(assert (= (and b!1727386 res!775503) b!1727385))

(declare-fun m!2134573 () Bool)

(assert (=> b!1727386 m!2134573))

(declare-fun m!2134575 () Bool)

(assert (=> b!1727386 m!2134575))

(assert (=> b!1727386 m!2134575))

(declare-fun m!2134577 () Bool)

(assert (=> b!1727386 m!2134577))

(assert (=> b!1727386 m!2134577))

(declare-fun m!2134579 () Bool)

(assert (=> b!1727386 m!2134579))

(assert (=> b!1727385 m!2134573))

(declare-fun m!2134581 () Bool)

(assert (=> b!1727385 m!2134581))

(declare-fun m!2134583 () Bool)

(assert (=> b!1727387 m!2134583))

(declare-fun m!2134585 () Bool)

(assert (=> bm!109858 m!2134585))

(assert (=> b!1727389 m!2134573))

(declare-fun m!2134587 () Bool)

(assert (=> b!1727389 m!2134587))

(assert (=> b!1727389 m!2134253))

(assert (=> b!1727391 m!2134573))

(assert (=> b!1727391 m!2134575))

(assert (=> b!1727391 m!2134575))

(assert (=> b!1727391 m!2134577))

(assert (=> b!1727391 m!2134577))

(declare-fun m!2134589 () Bool)

(assert (=> b!1727391 m!2134589))

(declare-fun m!2134591 () Bool)

(assert (=> d!529035 m!2134591))

(declare-fun m!2134593 () Bool)

(assert (=> d!529035 m!2134593))

(declare-fun m!2134595 () Bool)

(assert (=> d!529035 m!2134595))

(assert (=> d!529035 m!2134483))

(assert (=> b!1727384 m!2134573))

(declare-fun m!2134597 () Bool)

(assert (=> b!1727384 m!2134597))

(assert (=> b!1727384 m!2134597))

(declare-fun m!2134599 () Bool)

(assert (=> b!1727384 m!2134599))

(assert (=> b!1727383 m!2134573))

(assert (=> b!1727383 m!2134575))

(assert (=> b!1727383 m!2134575))

(assert (=> b!1727383 m!2134577))

(declare-fun m!2134601 () Bool)

(assert (=> b!1727390 m!2134601))

(assert (=> b!1727135 d!529035))

(declare-fun d!529037 () Bool)

(declare-fun isEmpty!11908 (Option!3737) Bool)

(assert (=> d!529037 (= (isDefined!3080 lt!661690) (not (isEmpty!11908 lt!661690)))))

(declare-fun bs!402461 () Bool)

(assert (= bs!402461 d!529037))

(declare-fun m!2134603 () Bool)

(assert (=> bs!402461 m!2134603))

(assert (=> b!1727135 d!529037))

(declare-fun b!1727393 () Bool)

(declare-fun res!775510 () Bool)

(declare-fun e!1105043 () Bool)

(assert (=> b!1727393 (=> (not res!775510) (not e!1105043))))

(assert (=> b!1727393 (= res!775510 (= (head!3919 lt!661700) (head!3919 lt!661685)))))

(declare-fun b!1727392 () Bool)

(declare-fun e!1105042 () Bool)

(assert (=> b!1727392 (= e!1105042 e!1105043)))

(declare-fun res!775509 () Bool)

(assert (=> b!1727392 (=> (not res!775509) (not e!1105043))))

(assert (=> b!1727392 (= res!775509 (not (is-Nil!18924 lt!661685)))))

(declare-fun b!1727395 () Bool)

(declare-fun e!1105044 () Bool)

(assert (=> b!1727395 (= e!1105044 (>= (size!15036 lt!661685) (size!15036 lt!661700)))))

(declare-fun b!1727394 () Bool)

(assert (=> b!1727394 (= e!1105043 (isPrefix!1597 (tail!2580 lt!661700) (tail!2580 lt!661685)))))

(declare-fun d!529039 () Bool)

(assert (=> d!529039 e!1105044))

(declare-fun res!775512 () Bool)

(assert (=> d!529039 (=> res!775512 e!1105044)))

(declare-fun lt!661861 () Bool)

(assert (=> d!529039 (= res!775512 (not lt!661861))))

(assert (=> d!529039 (= lt!661861 e!1105042)))

(declare-fun res!775511 () Bool)

(assert (=> d!529039 (=> res!775511 e!1105042)))

(assert (=> d!529039 (= res!775511 (is-Nil!18924 lt!661700))))

(assert (=> d!529039 (= (isPrefix!1597 lt!661700 lt!661685) lt!661861)))

(assert (= (and d!529039 (not res!775511)) b!1727392))

(assert (= (and b!1727392 res!775509) b!1727393))

(assert (= (and b!1727393 res!775510) b!1727394))

(assert (= (and d!529039 (not res!775512)) b!1727395))

(assert (=> b!1727393 m!2134511))

(assert (=> b!1727393 m!2134545))

(assert (=> b!1727395 m!2134253))

(assert (=> b!1727395 m!2134279))

(assert (=> b!1727394 m!2134505))

(assert (=> b!1727394 m!2134549))

(assert (=> b!1727394 m!2134505))

(assert (=> b!1727394 m!2134549))

(declare-fun m!2134605 () Bool)

(assert (=> b!1727394 m!2134605))

(assert (=> b!1727135 d!529039))

(declare-fun e!1105086 () Bool)

(declare-fun b!1727472 () Bool)

(declare-fun lt!661915 () Token!6278)

(assert (=> b!1727472 (= e!1105086 (= (rule!5322 lt!661915) (get!5632 (getRuleFromTag!406 thiss!24550 rules!3447 (tag!3676 (rule!5322 lt!661915))))))))

(declare-fun d!529041 () Bool)

(assert (=> d!529041 (isDefined!3079 (maxPrefix!1539 thiss!24550 rules!3447 (++!5181 lt!661709 suffix!1421)))))

(declare-fun lt!661903 () Unit!32774)

(declare-fun e!1105087 () Unit!32774)

(assert (=> d!529041 (= lt!661903 e!1105087)))

(declare-fun c!282378 () Bool)

(assert (=> d!529041 (= c!282378 (isEmpty!11907 (maxPrefix!1539 thiss!24550 rules!3447 (++!5181 lt!661709 suffix!1421))))))

(declare-fun lt!661914 () Unit!32774)

(declare-fun lt!661911 () Unit!32774)

(assert (=> d!529041 (= lt!661914 lt!661911)))

(assert (=> d!529041 e!1105086))

(declare-fun res!775554 () Bool)

(assert (=> d!529041 (=> (not res!775554) (not e!1105086))))

(assert (=> d!529041 (= res!775554 (isDefined!3080 (getRuleFromTag!406 thiss!24550 rules!3447 (tag!3676 (rule!5322 lt!661915)))))))

(assert (=> d!529041 (= lt!661911 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!406 thiss!24550 rules!3447 lt!661709 lt!661915))))

(declare-fun lt!661913 () Unit!32774)

(declare-fun lt!661899 () Unit!32774)

(assert (=> d!529041 (= lt!661913 lt!661899)))

(declare-fun lt!661907 () List!18994)

(assert (=> d!529041 (isPrefix!1597 lt!661907 (++!5181 lt!661709 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!264 (List!18994 List!18994 List!18994) Unit!32774)

(assert (=> d!529041 (= lt!661899 (lemmaPrefixStaysPrefixWhenAddingToSuffix!264 lt!661907 lt!661709 suffix!1421))))

(assert (=> d!529041 (= lt!661907 (list!7649 (charsOf!2005 lt!661915)))))

(declare-fun lt!661905 () Unit!32774)

(declare-fun lt!661910 () Unit!32774)

(assert (=> d!529041 (= lt!661905 lt!661910)))

(declare-fun lt!661909 () List!18994)

(declare-fun lt!661901 () List!18994)

(assert (=> d!529041 (isPrefix!1597 lt!661909 (++!5181 lt!661909 lt!661901))))

(assert (=> d!529041 (= lt!661910 (lemmaConcatTwoListThenFirstIsPrefix!1107 lt!661909 lt!661901))))

(assert (=> d!529041 (= lt!661901 (_2!10706 (get!5633 (maxPrefix!1539 thiss!24550 rules!3447 lt!661709))))))

(assert (=> d!529041 (= lt!661909 (list!7649 (charsOf!2005 lt!661915)))))

(declare-datatypes ((List!18999 0))(
  ( (Nil!18929) (Cons!18929 (h!24330 Token!6278) (t!160306 List!18999)) )
))
(declare-fun head!3921 (List!18999) Token!6278)

(declare-datatypes ((IArray!12597 0))(
  ( (IArray!12598 (innerList!6356 List!18999)) )
))
(declare-datatypes ((Conc!6296 0))(
  ( (Node!6296 (left!15112 Conc!6296) (right!15442 Conc!6296) (csize!12822 Int) (cheight!6507 Int)) (Leaf!9195 (xs!9172 IArray!12597) (csize!12823 Int)) (Empty!6296) )
))
(declare-datatypes ((BalanceConc!12536 0))(
  ( (BalanceConc!12537 (c!282464 Conc!6296)) )
))
(declare-fun list!7652 (BalanceConc!12536) List!18999)

(declare-datatypes ((tuple2!18612 0))(
  ( (tuple2!18613 (_1!10708 BalanceConc!12536) (_2!10708 BalanceConc!12532)) )
))
(declare-fun lex!1403 (LexerInterface!2985 List!18995 BalanceConc!12532) tuple2!18612)

(assert (=> d!529041 (= lt!661915 (head!3921 (list!7652 (_1!10708 (lex!1403 thiss!24550 rules!3447 (seqFromList!2330 lt!661709))))))))

(assert (=> d!529041 (not (isEmpty!11904 rules!3447))))

(assert (=> d!529041 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!509 thiss!24550 rules!3447 lt!661709 suffix!1421) lt!661903)))

(declare-fun b!1727474 () Bool)

(declare-fun Unit!32779 () Unit!32774)

(assert (=> b!1727474 (= e!1105087 Unit!32779)))

(declare-fun b!1727471 () Bool)

(declare-fun res!775553 () Bool)

(assert (=> b!1727471 (=> (not res!775553) (not e!1105086))))

(assert (=> b!1727471 (= res!775553 (matchR!2158 (regex!3356 (get!5632 (getRuleFromTag!406 thiss!24550 rules!3447 (tag!3676 (rule!5322 lt!661915))))) (list!7649 (charsOf!2005 lt!661915))))))

(declare-fun b!1727473 () Bool)

(declare-fun Unit!32780 () Unit!32774)

(assert (=> b!1727473 (= e!1105087 Unit!32780)))

(declare-fun lt!661906 () List!18994)

(assert (=> b!1727473 (= lt!661906 (++!5181 lt!661709 suffix!1421))))

(declare-fun lt!661912 () Unit!32774)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!272 (LexerInterface!2985 Rule!6512 List!18995 List!18994) Unit!32774)

(assert (=> b!1727473 (= lt!661912 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!272 thiss!24550 (rule!5322 lt!661915) rules!3447 lt!661906))))

(assert (=> b!1727473 (isEmpty!11907 (maxPrefixOneRule!915 thiss!24550 (rule!5322 lt!661915) lt!661906))))

(declare-fun lt!661900 () Unit!32774)

(assert (=> b!1727473 (= lt!661900 lt!661912)))

(declare-fun lt!661904 () List!18994)

(assert (=> b!1727473 (= lt!661904 (list!7649 (charsOf!2005 lt!661915)))))

(declare-fun lt!661902 () Unit!32774)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!268 (LexerInterface!2985 Rule!6512 List!18994 List!18994) Unit!32774)

(assert (=> b!1727473 (= lt!661902 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!268 thiss!24550 (rule!5322 lt!661915) lt!661904 (++!5181 lt!661709 suffix!1421)))))

(assert (=> b!1727473 (not (matchR!2158 (regex!3356 (rule!5322 lt!661915)) lt!661904))))

(declare-fun lt!661908 () Unit!32774)

(assert (=> b!1727473 (= lt!661908 lt!661902)))

(assert (=> b!1727473 false))

(assert (= (and d!529041 res!775554) b!1727471))

(assert (= (and b!1727471 res!775553) b!1727472))

(assert (= (and d!529041 c!282378) b!1727473))

(assert (= (and d!529041 (not c!282378)) b!1727474))

(declare-fun m!2134647 () Bool)

(assert (=> b!1727472 m!2134647))

(assert (=> b!1727472 m!2134647))

(declare-fun m!2134649 () Bool)

(assert (=> b!1727472 m!2134649))

(assert (=> d!529041 m!2134231))

(declare-fun m!2134651 () Bool)

(assert (=> d!529041 m!2134651))

(assert (=> d!529041 m!2134263))

(declare-fun m!2134653 () Bool)

(assert (=> d!529041 m!2134653))

(assert (=> d!529041 m!2134171))

(assert (=> d!529041 m!2134231))

(declare-fun m!2134655 () Bool)

(assert (=> d!529041 m!2134655))

(declare-fun m!2134657 () Bool)

(assert (=> d!529041 m!2134657))

(declare-fun m!2134659 () Bool)

(assert (=> d!529041 m!2134659))

(declare-fun m!2134661 () Bool)

(assert (=> d!529041 m!2134661))

(assert (=> d!529041 m!2134647))

(assert (=> d!529041 m!2134231))

(declare-fun m!2134663 () Bool)

(assert (=> d!529041 m!2134663))

(assert (=> d!529041 m!2134647))

(declare-fun m!2134665 () Bool)

(assert (=> d!529041 m!2134665))

(assert (=> d!529041 m!2134263))

(declare-fun m!2134667 () Bool)

(assert (=> d!529041 m!2134667))

(assert (=> d!529041 m!2134657))

(declare-fun m!2134669 () Bool)

(assert (=> d!529041 m!2134669))

(declare-fun m!2134671 () Bool)

(assert (=> d!529041 m!2134671))

(assert (=> d!529041 m!2134663))

(declare-fun m!2134673 () Bool)

(assert (=> d!529041 m!2134673))

(assert (=> d!529041 m!2134669))

(declare-fun m!2134675 () Bool)

(assert (=> d!529041 m!2134675))

(assert (=> d!529041 m!2134661))

(declare-fun m!2134677 () Bool)

(assert (=> d!529041 m!2134677))

(assert (=> d!529041 m!2134651))

(declare-fun m!2134679 () Bool)

(assert (=> d!529041 m!2134679))

(declare-fun m!2134681 () Bool)

(assert (=> d!529041 m!2134681))

(assert (=> d!529041 m!2134663))

(declare-fun m!2134683 () Bool)

(assert (=> d!529041 m!2134683))

(assert (=> b!1727471 m!2134669))

(assert (=> b!1727471 m!2134647))

(assert (=> b!1727471 m!2134649))

(assert (=> b!1727471 m!2134671))

(declare-fun m!2134685 () Bool)

(assert (=> b!1727471 m!2134685))

(assert (=> b!1727471 m!2134647))

(assert (=> b!1727471 m!2134669))

(assert (=> b!1727471 m!2134671))

(assert (=> b!1727473 m!2134669))

(declare-fun m!2134687 () Bool)

(assert (=> b!1727473 m!2134687))

(declare-fun m!2134689 () Bool)

(assert (=> b!1727473 m!2134689))

(declare-fun m!2134691 () Bool)

(assert (=> b!1727473 m!2134691))

(assert (=> b!1727473 m!2134231))

(declare-fun m!2134693 () Bool)

(assert (=> b!1727473 m!2134693))

(assert (=> b!1727473 m!2134669))

(assert (=> b!1727473 m!2134671))

(assert (=> b!1727473 m!2134689))

(declare-fun m!2134695 () Bool)

(assert (=> b!1727473 m!2134695))

(assert (=> b!1727473 m!2134231))

(assert (=> b!1727135 d!529041))

(declare-fun d!529059 () Bool)

(assert (=> d!529059 (= (list!7649 lt!661710) (list!7651 (c!282340 lt!661710)))))

(declare-fun bs!402463 () Bool)

(assert (= bs!402463 d!529059))

(declare-fun m!2134697 () Bool)

(assert (=> bs!402463 m!2134697))

(assert (=> b!1727135 d!529059))

(declare-fun d!529061 () Bool)

(assert (=> d!529061 (isPrefix!1597 lt!661709 (++!5181 lt!661709 suffix!1421))))

(declare-fun lt!661916 () Unit!32774)

(assert (=> d!529061 (= lt!661916 (choose!10535 lt!661709 suffix!1421))))

(assert (=> d!529061 (= (lemmaConcatTwoListThenFirstIsPrefix!1107 lt!661709 suffix!1421) lt!661916)))

(declare-fun bs!402464 () Bool)

(assert (= bs!402464 d!529061))

(assert (=> bs!402464 m!2134231))

(assert (=> bs!402464 m!2134231))

(declare-fun m!2134699 () Bool)

(assert (=> bs!402464 m!2134699))

(declare-fun m!2134701 () Bool)

(assert (=> bs!402464 m!2134701))

(assert (=> b!1727135 d!529061))

(declare-fun b!1727505 () Bool)

(declare-fun e!1105105 () Bool)

(declare-fun e!1105102 () Bool)

(assert (=> b!1727505 (= e!1105105 e!1105102)))

(declare-fun res!775574 () Bool)

(assert (=> b!1727505 (=> (not res!775574) (not e!1105102))))

(declare-fun lt!661934 () Option!3737)

(assert (=> b!1727505 (= res!775574 (contains!3378 rules!3447 (get!5632 lt!661934)))))

(declare-fun d!529063 () Bool)

(assert (=> d!529063 e!1105105))

(declare-fun res!775573 () Bool)

(assert (=> d!529063 (=> res!775573 e!1105105)))

(assert (=> d!529063 (= res!775573 (isEmpty!11908 lt!661934))))

(declare-fun e!1105103 () Option!3737)

(assert (=> d!529063 (= lt!661934 e!1105103)))

(declare-fun c!282385 () Bool)

(assert (=> d!529063 (= c!282385 (and (is-Cons!18925 rules!3447) (= (tag!3676 (h!24326 rules!3447)) (tag!3676 (rule!5322 (_1!10706 lt!661714))))))))

(assert (=> d!529063 (rulesInvariant!2654 thiss!24550 rules!3447)))

(assert (=> d!529063 (= (getRuleFromTag!406 thiss!24550 rules!3447 (tag!3676 (rule!5322 (_1!10706 lt!661714)))) lt!661934)))

(declare-fun b!1727506 () Bool)

(declare-fun lt!661935 () Unit!32774)

(declare-fun lt!661933 () Unit!32774)

(assert (=> b!1727506 (= lt!661935 lt!661933)))

(assert (=> b!1727506 (rulesInvariant!2654 thiss!24550 (t!160240 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!143 (LexerInterface!2985 Rule!6512 List!18995) Unit!32774)

(assert (=> b!1727506 (= lt!661933 (lemmaInvariantOnRulesThenOnTail!143 thiss!24550 (h!24326 rules!3447) (t!160240 rules!3447)))))

(declare-fun e!1105104 () Option!3737)

(assert (=> b!1727506 (= e!1105104 (getRuleFromTag!406 thiss!24550 (t!160240 rules!3447) (tag!3676 (rule!5322 (_1!10706 lt!661714)))))))

(declare-fun b!1727507 () Bool)

(assert (=> b!1727507 (= e!1105103 (Some!3736 (h!24326 rules!3447)))))

(declare-fun b!1727508 () Bool)

(assert (=> b!1727508 (= e!1105103 e!1105104)))

(declare-fun c!282386 () Bool)

(assert (=> b!1727508 (= c!282386 (and (is-Cons!18925 rules!3447) (not (= (tag!3676 (h!24326 rules!3447)) (tag!3676 (rule!5322 (_1!10706 lt!661714)))))))))

(declare-fun b!1727509 () Bool)

(assert (=> b!1727509 (= e!1105102 (= (tag!3676 (get!5632 lt!661934)) (tag!3676 (rule!5322 (_1!10706 lt!661714)))))))

(declare-fun b!1727510 () Bool)

(assert (=> b!1727510 (= e!1105104 None!3736)))

(assert (= (and d!529063 c!282385) b!1727507))

(assert (= (and d!529063 (not c!282385)) b!1727508))

(assert (= (and b!1727508 c!282386) b!1727506))

(assert (= (and b!1727508 (not c!282386)) b!1727510))

(assert (= (and d!529063 (not res!775573)) b!1727505))

(assert (= (and b!1727505 res!775574) b!1727509))

(declare-fun m!2134703 () Bool)

(assert (=> b!1727505 m!2134703))

(assert (=> b!1727505 m!2134703))

(declare-fun m!2134705 () Bool)

(assert (=> b!1727505 m!2134705))

(declare-fun m!2134707 () Bool)

(assert (=> d!529063 m!2134707))

(assert (=> d!529063 m!2134213))

(declare-fun m!2134709 () Bool)

(assert (=> b!1727506 m!2134709))

(declare-fun m!2134711 () Bool)

(assert (=> b!1727506 m!2134711))

(declare-fun m!2134713 () Bool)

(assert (=> b!1727506 m!2134713))

(assert (=> b!1727509 m!2134703))

(assert (=> b!1727135 d!529063))

(declare-fun d!529065 () Bool)

(assert (=> d!529065 (= (inv!24461 (tag!3676 (h!24326 rules!3447))) (= (mod (str.len (value!105319 (tag!3676 (h!24326 rules!3447)))) 2) 0))))

(assert (=> b!1727114 d!529065))

(declare-fun d!529067 () Bool)

(declare-fun res!775582 () Bool)

(declare-fun e!1105109 () Bool)

(assert (=> d!529067 (=> (not res!775582) (not e!1105109))))

(assert (=> d!529067 (= res!775582 (semiInverseModEq!1328 (toChars!4722 (transformation!3356 (h!24326 rules!3447))) (toValue!4863 (transformation!3356 (h!24326 rules!3447)))))))

(assert (=> d!529067 (= (inv!24464 (transformation!3356 (h!24326 rules!3447))) e!1105109)))

(declare-fun b!1727520 () Bool)

(assert (=> b!1727520 (= e!1105109 (equivClasses!1269 (toChars!4722 (transformation!3356 (h!24326 rules!3447))) (toValue!4863 (transformation!3356 (h!24326 rules!3447)))))))

(assert (= (and d!529067 res!775582) b!1727520))

(declare-fun m!2134715 () Bool)

(assert (=> d!529067 m!2134715))

(declare-fun m!2134717 () Bool)

(assert (=> b!1727520 m!2134717))

(assert (=> b!1727114 d!529067))

(declare-fun d!529069 () Bool)

(assert (=> d!529069 (= suffix!1421 lt!661712)))

(declare-fun lt!661943 () Unit!32774)

(declare-fun choose!10536 (List!18994 List!18994 List!18994 List!18994 List!18994) Unit!32774)

(assert (=> d!529069 (= lt!661943 (choose!10536 lt!661709 suffix!1421 lt!661709 lt!661712 lt!661685))))

(assert (=> d!529069 (isPrefix!1597 lt!661709 lt!661685)))

(assert (=> d!529069 (= (lemmaSamePrefixThenSameSuffix!741 lt!661709 suffix!1421 lt!661709 lt!661712 lt!661685) lt!661943)))

(declare-fun bs!402465 () Bool)

(assert (= bs!402465 d!529069))

(declare-fun m!2134751 () Bool)

(assert (=> bs!402465 m!2134751))

(assert (=> bs!402465 m!2134233))

(assert (=> b!1727107 d!529069))

(declare-fun d!529073 () Bool)

(assert (=> d!529073 (matchR!2158 (rulesRegex!714 thiss!24550 rules!3447) (list!7649 (charsOf!2005 (_1!10706 lt!661714))))))

(declare-fun lt!661951 () Unit!32774)

(declare-fun choose!10537 (LexerInterface!2985 List!18995 List!18994 Token!6278 Rule!6512 List!18994) Unit!32774)

(assert (=> d!529073 (= lt!661951 (choose!10537 thiss!24550 rules!3447 lt!661685 (_1!10706 lt!661714) (rule!5322 (_1!10706 lt!661714)) (_2!10706 lt!661714)))))

(assert (=> d!529073 (not (isEmpty!11904 rules!3447))))

(assert (=> d!529073 (= (lemmaMaxPrefixThenMatchesRulesRegex!105 thiss!24550 rules!3447 lt!661685 (_1!10706 lt!661714) (rule!5322 (_1!10706 lt!661714)) (_2!10706 lt!661714)) lt!661951)))

(declare-fun bs!402468 () Bool)

(assert (= bs!402468 d!529073))

(assert (=> bs!402468 m!2134193))

(declare-fun m!2134777 () Bool)

(assert (=> bs!402468 m!2134777))

(assert (=> bs!402468 m!2134193))

(assert (=> bs!402468 m!2134165))

(declare-fun m!2134779 () Bool)

(assert (=> bs!402468 m!2134779))

(assert (=> bs!402468 m!2134163))

(assert (=> bs!402468 m!2134165))

(assert (=> bs!402468 m!2134171))

(assert (=> bs!402468 m!2134163))

(assert (=> b!1727107 d!529073))

(declare-fun d!529085 () Bool)

(declare-fun e!1105119 () Bool)

(assert (=> d!529085 e!1105119))

(declare-fun c!282391 () Bool)

(assert (=> d!529085 (= c!282391 (is-EmptyExpr!4684 lt!661707))))

(declare-fun lt!661952 () Bool)

(declare-fun e!1105122 () Bool)

(assert (=> d!529085 (= lt!661952 e!1105122)))

(declare-fun c!282392 () Bool)

(assert (=> d!529085 (= c!282392 (isEmpty!11903 lt!661700))))

(assert (=> d!529085 (validRegex!1889 lt!661707)))

(assert (=> d!529085 (= (matchR!2158 lt!661707 lt!661700) lt!661952)))

(declare-fun bm!109866 () Bool)

(declare-fun call!109871 () Bool)

(assert (=> bm!109866 (= call!109871 (isEmpty!11903 lt!661700))))

(declare-fun b!1727535 () Bool)

(declare-fun res!775597 () Bool)

(declare-fun e!1105120 () Bool)

(assert (=> b!1727535 (=> res!775597 e!1105120)))

(assert (=> b!1727535 (= res!775597 (not (isEmpty!11903 (tail!2580 lt!661700))))))

(declare-fun b!1727536 () Bool)

(declare-fun res!775594 () Bool)

(declare-fun e!1105117 () Bool)

(assert (=> b!1727536 (=> res!775594 e!1105117)))

(assert (=> b!1727536 (= res!775594 (not (is-ElementMatch!4684 lt!661707)))))

(declare-fun e!1105123 () Bool)

(assert (=> b!1727536 (= e!1105123 e!1105117)))

(declare-fun b!1727537 () Bool)

(assert (=> b!1727537 (= e!1105122 (matchR!2158 (derivativeStep!1183 lt!661707 (head!3919 lt!661700)) (tail!2580 lt!661700)))))

(declare-fun b!1727538 () Bool)

(declare-fun e!1105118 () Bool)

(assert (=> b!1727538 (= e!1105118 e!1105120)))

(declare-fun res!775596 () Bool)

(assert (=> b!1727538 (=> res!775596 e!1105120)))

(assert (=> b!1727538 (= res!775596 call!109871)))

(declare-fun b!1727539 () Bool)

(declare-fun res!775593 () Bool)

(assert (=> b!1727539 (=> res!775593 e!1105117)))

(declare-fun e!1105121 () Bool)

(assert (=> b!1727539 (= res!775593 e!1105121)))

(declare-fun res!775592 () Bool)

(assert (=> b!1727539 (=> (not res!775592) (not e!1105121))))

(assert (=> b!1727539 (= res!775592 lt!661952)))

(declare-fun b!1727540 () Bool)

(assert (=> b!1727540 (= e!1105121 (= (head!3919 lt!661700) (c!282339 lt!661707)))))

(declare-fun b!1727541 () Bool)

(assert (=> b!1727541 (= e!1105119 e!1105123)))

(declare-fun c!282393 () Bool)

(assert (=> b!1727541 (= c!282393 (is-EmptyLang!4684 lt!661707))))

(declare-fun b!1727542 () Bool)

(declare-fun res!775591 () Bool)

(assert (=> b!1727542 (=> (not res!775591) (not e!1105121))))

(assert (=> b!1727542 (= res!775591 (not call!109871))))

(declare-fun b!1727543 () Bool)

(assert (=> b!1727543 (= e!1105123 (not lt!661952))))

(declare-fun b!1727544 () Bool)

(assert (=> b!1727544 (= e!1105122 (nullable!1415 lt!661707))))

(declare-fun b!1727545 () Bool)

(declare-fun res!775595 () Bool)

(assert (=> b!1727545 (=> (not res!775595) (not e!1105121))))

(assert (=> b!1727545 (= res!775595 (isEmpty!11903 (tail!2580 lt!661700)))))

(declare-fun b!1727546 () Bool)

(assert (=> b!1727546 (= e!1105120 (not (= (head!3919 lt!661700) (c!282339 lt!661707))))))

(declare-fun b!1727547 () Bool)

(assert (=> b!1727547 (= e!1105119 (= lt!661952 call!109871))))

(declare-fun b!1727548 () Bool)

(assert (=> b!1727548 (= e!1105117 e!1105118)))

(declare-fun res!775598 () Bool)

(assert (=> b!1727548 (=> (not res!775598) (not e!1105118))))

(assert (=> b!1727548 (= res!775598 (not lt!661952))))

(assert (= (and d!529085 c!282392) b!1727544))

(assert (= (and d!529085 (not c!282392)) b!1727537))

(assert (= (and d!529085 c!282391) b!1727547))

(assert (= (and d!529085 (not c!282391)) b!1727541))

(assert (= (and b!1727541 c!282393) b!1727543))

(assert (= (and b!1727541 (not c!282393)) b!1727536))

(assert (= (and b!1727536 (not res!775594)) b!1727539))

(assert (= (and b!1727539 res!775592) b!1727542))

(assert (= (and b!1727542 res!775591) b!1727545))

(assert (= (and b!1727545 res!775595) b!1727540))

(assert (= (and b!1727539 (not res!775593)) b!1727548))

(assert (= (and b!1727548 res!775598) b!1727538))

(assert (= (and b!1727538 (not res!775596)) b!1727535))

(assert (= (and b!1727535 (not res!775597)) b!1727546))

(assert (= (or b!1727547 b!1727538 b!1727542) bm!109866))

(declare-fun m!2134787 () Bool)

(assert (=> b!1727544 m!2134787))

(assert (=> bm!109866 m!2134503))

(assert (=> b!1727535 m!2134505))

(assert (=> b!1727535 m!2134505))

(assert (=> b!1727535 m!2134507))

(assert (=> b!1727545 m!2134505))

(assert (=> b!1727545 m!2134505))

(assert (=> b!1727545 m!2134507))

(assert (=> d!529085 m!2134503))

(declare-fun m!2134789 () Bool)

(assert (=> d!529085 m!2134789))

(assert (=> b!1727537 m!2134511))

(assert (=> b!1727537 m!2134511))

(declare-fun m!2134791 () Bool)

(assert (=> b!1727537 m!2134791))

(assert (=> b!1727537 m!2134505))

(assert (=> b!1727537 m!2134791))

(assert (=> b!1727537 m!2134505))

(declare-fun m!2134793 () Bool)

(assert (=> b!1727537 m!2134793))

(assert (=> b!1727540 m!2134511))

(assert (=> b!1727546 m!2134511))

(assert (=> b!1727107 d!529085))

(declare-fun d!529093 () Bool)

(declare-fun lt!661955 () Int)

(assert (=> d!529093 (>= lt!661955 0)))

(declare-fun e!1105129 () Int)

(assert (=> d!529093 (= lt!661955 e!1105129)))

(declare-fun c!282398 () Bool)

(assert (=> d!529093 (= c!282398 (is-Nil!18924 lt!661685))))

(assert (=> d!529093 (= (size!15036 lt!661685) lt!661955)))

(declare-fun b!1727558 () Bool)

(assert (=> b!1727558 (= e!1105129 0)))

(declare-fun b!1727559 () Bool)

(assert (=> b!1727559 (= e!1105129 (+ 1 (size!15036 (t!160239 lt!661685))))))

(assert (= (and d!529093 c!282398) b!1727558))

(assert (= (and d!529093 (not c!282398)) b!1727559))

(declare-fun m!2134795 () Bool)

(assert (=> b!1727559 m!2134795))

(assert (=> b!1727107 d!529093))

(declare-fun d!529095 () Bool)

(declare-fun lt!661961 () List!18994)

(assert (=> d!529095 (= (++!5181 lt!661709 lt!661961) lt!661685)))

(declare-fun e!1105141 () List!18994)

(assert (=> d!529095 (= lt!661961 e!1105141)))

(declare-fun c!282401 () Bool)

(assert (=> d!529095 (= c!282401 (is-Cons!18924 lt!661709))))

(assert (=> d!529095 (>= (size!15036 lt!661685) (size!15036 lt!661709))))

(assert (=> d!529095 (= (getSuffix!791 lt!661685 lt!661709) lt!661961)))

(declare-fun b!1727576 () Bool)

(assert (=> b!1727576 (= e!1105141 (getSuffix!791 (tail!2580 lt!661685) (t!160239 lt!661709)))))

(declare-fun b!1727577 () Bool)

(assert (=> b!1727577 (= e!1105141 lt!661685)))

(assert (= (and d!529095 c!282401) b!1727576))

(assert (= (and d!529095 (not c!282401)) b!1727577))

(declare-fun m!2134805 () Bool)

(assert (=> d!529095 m!2134805))

(assert (=> d!529095 m!2134253))

(assert (=> d!529095 m!2134255))

(assert (=> b!1727576 m!2134549))

(assert (=> b!1727576 m!2134549))

(declare-fun m!2134807 () Bool)

(assert (=> b!1727576 m!2134807))

(assert (=> b!1727107 d!529095))

(declare-fun d!529099 () Bool)

(declare-fun lt!661962 () Int)

(assert (=> d!529099 (>= lt!661962 0)))

(declare-fun e!1105142 () Int)

(assert (=> d!529099 (= lt!661962 e!1105142)))

(declare-fun c!282402 () Bool)

(assert (=> d!529099 (= c!282402 (is-Nil!18924 lt!661709))))

(assert (=> d!529099 (= (size!15036 lt!661709) lt!661962)))

(declare-fun b!1727578 () Bool)

(assert (=> b!1727578 (= e!1105142 0)))

(declare-fun b!1727579 () Bool)

(assert (=> b!1727579 (= e!1105142 (+ 1 (size!15036 (t!160239 lt!661709))))))

(assert (= (and d!529099 c!282402) b!1727578))

(assert (= (and d!529099 (not c!282402)) b!1727579))

(declare-fun m!2134809 () Bool)

(assert (=> b!1727579 m!2134809))

(assert (=> b!1727107 d!529099))

(declare-fun d!529101 () Bool)

(assert (=> d!529101 (= (get!5633 lt!661697) (v!25148 lt!661697))))

(assert (=> b!1727128 d!529101))

(declare-fun d!529103 () Bool)

(declare-fun res!775614 () Bool)

(declare-fun e!1105145 () Bool)

(assert (=> d!529103 (=> (not res!775614) (not e!1105145))))

(declare-fun rulesValid!1255 (LexerInterface!2985 List!18995) Bool)

(assert (=> d!529103 (= res!775614 (rulesValid!1255 thiss!24550 rules!3447))))

(assert (=> d!529103 (= (rulesInvariant!2654 thiss!24550 rules!3447) e!1105145)))

(declare-fun b!1727582 () Bool)

(declare-datatypes ((List!19000 0))(
  ( (Nil!18930) (Cons!18930 (h!24331 String!21564) (t!160323 List!19000)) )
))
(declare-fun noDuplicateTag!1255 (LexerInterface!2985 List!18995 List!19000) Bool)

(assert (=> b!1727582 (= e!1105145 (noDuplicateTag!1255 thiss!24550 rules!3447 Nil!18930))))

(assert (= (and d!529103 res!775614) b!1727582))

(declare-fun m!2134815 () Bool)

(assert (=> d!529103 m!2134815))

(declare-fun m!2134817 () Bool)

(assert (=> b!1727582 m!2134817))

(assert (=> b!1727129 d!529103))

(declare-fun d!529107 () Bool)

(assert (=> d!529107 (= (isEmpty!11903 (_2!10706 lt!661694)) (is-Nil!18924 (_2!10706 lt!661694)))))

(assert (=> b!1727131 d!529107))

(declare-fun d!529109 () Bool)

(declare-fun c!282405 () Bool)

(assert (=> d!529109 (= c!282405 (is-Node!6294 (c!282340 (dynLambda!8780 (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (value!105320 (_1!10706 lt!661714))))))))

(declare-fun e!1105150 () Bool)

(assert (=> d!529109 (= (inv!24466 (c!282340 (dynLambda!8780 (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (value!105320 (_1!10706 lt!661714))))) e!1105150)))

(declare-fun b!1727589 () Bool)

(declare-fun inv!24472 (Conc!6294) Bool)

(assert (=> b!1727589 (= e!1105150 (inv!24472 (c!282340 (dynLambda!8780 (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (value!105320 (_1!10706 lt!661714))))))))

(declare-fun b!1727590 () Bool)

(declare-fun e!1105151 () Bool)

(assert (=> b!1727590 (= e!1105150 e!1105151)))

(declare-fun res!775617 () Bool)

(assert (=> b!1727590 (= res!775617 (not (is-Leaf!9193 (c!282340 (dynLambda!8780 (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (value!105320 (_1!10706 lt!661714)))))))))

(assert (=> b!1727590 (=> res!775617 e!1105151)))

(declare-fun b!1727591 () Bool)

(declare-fun inv!24473 (Conc!6294) Bool)

(assert (=> b!1727591 (= e!1105151 (inv!24473 (c!282340 (dynLambda!8780 (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (value!105320 (_1!10706 lt!661714))))))))

(assert (= (and d!529109 c!282405) b!1727589))

(assert (= (and d!529109 (not c!282405)) b!1727590))

(assert (= (and b!1727590 (not res!775617)) b!1727591))

(declare-fun m!2134819 () Bool)

(assert (=> b!1727589 m!2134819))

(declare-fun m!2134821 () Bool)

(assert (=> b!1727591 m!2134821))

(assert (=> b!1727152 d!529109))

(declare-fun d!529111 () Bool)

(declare-fun c!282412 () Bool)

(assert (=> d!529111 (= c!282412 (isEmpty!11903 (++!5181 lt!661709 (Cons!18924 (head!3919 suffix!1421) Nil!18924))))))

(declare-fun e!1105162 () Bool)

(assert (=> d!529111 (= (prefixMatch!569 lt!661707 (++!5181 lt!661709 (Cons!18924 (head!3919 suffix!1421) Nil!18924))) e!1105162)))

(declare-fun b!1727608 () Bool)

(declare-fun lostCause!525 (Regex!4684) Bool)

(assert (=> b!1727608 (= e!1105162 (not (lostCause!525 lt!661707)))))

(declare-fun b!1727609 () Bool)

(assert (=> b!1727609 (= e!1105162 (prefixMatch!569 (derivativeStep!1183 lt!661707 (head!3919 (++!5181 lt!661709 (Cons!18924 (head!3919 suffix!1421) Nil!18924)))) (tail!2580 (++!5181 lt!661709 (Cons!18924 (head!3919 suffix!1421) Nil!18924)))))))

(assert (= (and d!529111 c!282412) b!1727608))

(assert (= (and d!529111 (not c!282412)) b!1727609))

(assert (=> d!529111 m!2134189))

(declare-fun m!2134823 () Bool)

(assert (=> d!529111 m!2134823))

(declare-fun m!2134825 () Bool)

(assert (=> b!1727608 m!2134825))

(assert (=> b!1727609 m!2134189))

(declare-fun m!2134827 () Bool)

(assert (=> b!1727609 m!2134827))

(assert (=> b!1727609 m!2134827))

(declare-fun m!2134829 () Bool)

(assert (=> b!1727609 m!2134829))

(assert (=> b!1727609 m!2134189))

(declare-fun m!2134831 () Bool)

(assert (=> b!1727609 m!2134831))

(assert (=> b!1727609 m!2134829))

(assert (=> b!1727609 m!2134831))

(declare-fun m!2134833 () Bool)

(assert (=> b!1727609 m!2134833))

(assert (=> b!1727109 d!529111))

(declare-fun b!1727612 () Bool)

(declare-fun res!775623 () Bool)

(declare-fun e!1105163 () Bool)

(assert (=> b!1727612 (=> (not res!775623) (not e!1105163))))

(declare-fun lt!661972 () List!18994)

(assert (=> b!1727612 (= res!775623 (= (size!15036 lt!661972) (+ (size!15036 lt!661709) (size!15036 (Cons!18924 (head!3919 suffix!1421) Nil!18924)))))))

(declare-fun b!1727610 () Bool)

(declare-fun e!1105164 () List!18994)

(assert (=> b!1727610 (= e!1105164 (Cons!18924 (head!3919 suffix!1421) Nil!18924))))

(declare-fun d!529113 () Bool)

(assert (=> d!529113 e!1105163))

(declare-fun res!775622 () Bool)

(assert (=> d!529113 (=> (not res!775622) (not e!1105163))))

(assert (=> d!529113 (= res!775622 (= (content!2707 lt!661972) (set.union (content!2707 lt!661709) (content!2707 (Cons!18924 (head!3919 suffix!1421) Nil!18924)))))))

(assert (=> d!529113 (= lt!661972 e!1105164)))

(declare-fun c!282413 () Bool)

(assert (=> d!529113 (= c!282413 (is-Nil!18924 lt!661709))))

(assert (=> d!529113 (= (++!5181 lt!661709 (Cons!18924 (head!3919 suffix!1421) Nil!18924)) lt!661972)))

(declare-fun b!1727611 () Bool)

(assert (=> b!1727611 (= e!1105164 (Cons!18924 (h!24325 lt!661709) (++!5181 (t!160239 lt!661709) (Cons!18924 (head!3919 suffix!1421) Nil!18924))))))

(declare-fun b!1727613 () Bool)

(assert (=> b!1727613 (= e!1105163 (or (not (= (Cons!18924 (head!3919 suffix!1421) Nil!18924) Nil!18924)) (= lt!661972 lt!661709)))))

(assert (= (and d!529113 c!282413) b!1727610))

(assert (= (and d!529113 (not c!282413)) b!1727611))

(assert (= (and d!529113 res!775622) b!1727612))

(assert (= (and b!1727612 res!775623) b!1727613))

(declare-fun m!2134835 () Bool)

(assert (=> b!1727612 m!2134835))

(assert (=> b!1727612 m!2134255))

(declare-fun m!2134837 () Bool)

(assert (=> b!1727612 m!2134837))

(declare-fun m!2134839 () Bool)

(assert (=> d!529113 m!2134839))

(assert (=> d!529113 m!2134567))

(declare-fun m!2134841 () Bool)

(assert (=> d!529113 m!2134841))

(declare-fun m!2134843 () Bool)

(assert (=> b!1727611 m!2134843))

(assert (=> b!1727109 d!529113))

(declare-fun d!529115 () Bool)

(assert (=> d!529115 (= (head!3919 suffix!1421) (h!24325 suffix!1421))))

(assert (=> b!1727109 d!529115))

(declare-fun d!529117 () Bool)

(declare-fun lt!661979 () Unit!32774)

(declare-fun lemma!339 (List!18995 LexerInterface!2985 List!18995) Unit!32774)

(assert (=> d!529117 (= lt!661979 (lemma!339 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!69281 () Int)

(declare-datatypes ((List!19001 0))(
  ( (Nil!18931) (Cons!18931 (h!24332 Regex!4684) (t!160324 List!19001)) )
))
(declare-fun generalisedUnion!347 (List!19001) Regex!4684)

(declare-fun map!3897 (List!18995 Int) List!19001)

(assert (=> d!529117 (= (rulesRegex!714 thiss!24550 rules!3447) (generalisedUnion!347 (map!3897 rules!3447 lambda!69281)))))

(declare-fun bs!402472 () Bool)

(assert (= bs!402472 d!529117))

(declare-fun m!2134861 () Bool)

(assert (=> bs!402472 m!2134861))

(declare-fun m!2134863 () Bool)

(assert (=> bs!402472 m!2134863))

(assert (=> bs!402472 m!2134863))

(declare-fun m!2134865 () Bool)

(assert (=> bs!402472 m!2134865))

(assert (=> b!1727109 d!529117))

(declare-fun d!529127 () Bool)

(declare-fun lt!661982 () Int)

(assert (=> d!529127 (= lt!661982 (size!15036 (list!7649 lt!661701)))))

(declare-fun size!15041 (Conc!6294) Int)

(assert (=> d!529127 (= lt!661982 (size!15041 (c!282340 lt!661701)))))

(assert (=> d!529127 (= (size!15037 lt!661701) lt!661982)))

(declare-fun bs!402473 () Bool)

(assert (= bs!402473 d!529127))

(assert (=> bs!402473 m!2134265))

(assert (=> bs!402473 m!2134265))

(declare-fun m!2134867 () Bool)

(assert (=> bs!402473 m!2134867))

(declare-fun m!2134869 () Bool)

(assert (=> bs!402473 m!2134869))

(assert (=> b!1727130 d!529127))

(declare-fun d!529129 () Bool)

(declare-fun e!1105171 () Bool)

(assert (=> d!529129 e!1105171))

(declare-fun c!282416 () Bool)

(assert (=> d!529129 (= c!282416 (is-EmptyExpr!4684 lt!661707))))

(declare-fun lt!661983 () Bool)

(declare-fun e!1105174 () Bool)

(assert (=> d!529129 (= lt!661983 e!1105174)))

(declare-fun c!282417 () Bool)

(assert (=> d!529129 (= c!282417 (isEmpty!11903 lt!661709))))

(assert (=> d!529129 (validRegex!1889 lt!661707)))

(assert (=> d!529129 (= (matchR!2158 lt!661707 lt!661709) lt!661983)))

(declare-fun bm!109867 () Bool)

(declare-fun call!109872 () Bool)

(assert (=> bm!109867 (= call!109872 (isEmpty!11903 lt!661709))))

(declare-fun b!1727620 () Bool)

(declare-fun res!775632 () Bool)

(declare-fun e!1105172 () Bool)

(assert (=> b!1727620 (=> res!775632 e!1105172)))

(assert (=> b!1727620 (= res!775632 (not (isEmpty!11903 (tail!2580 lt!661709))))))

(declare-fun b!1727621 () Bool)

(declare-fun res!775629 () Bool)

(declare-fun e!1105169 () Bool)

(assert (=> b!1727621 (=> res!775629 e!1105169)))

(assert (=> b!1727621 (= res!775629 (not (is-ElementMatch!4684 lt!661707)))))

(declare-fun e!1105175 () Bool)

(assert (=> b!1727621 (= e!1105175 e!1105169)))

(declare-fun b!1727622 () Bool)

(assert (=> b!1727622 (= e!1105174 (matchR!2158 (derivativeStep!1183 lt!661707 (head!3919 lt!661709)) (tail!2580 lt!661709)))))

(declare-fun b!1727623 () Bool)

(declare-fun e!1105170 () Bool)

(assert (=> b!1727623 (= e!1105170 e!1105172)))

(declare-fun res!775631 () Bool)

(assert (=> b!1727623 (=> res!775631 e!1105172)))

(assert (=> b!1727623 (= res!775631 call!109872)))

(declare-fun b!1727624 () Bool)

(declare-fun res!775628 () Bool)

(assert (=> b!1727624 (=> res!775628 e!1105169)))

(declare-fun e!1105173 () Bool)

(assert (=> b!1727624 (= res!775628 e!1105173)))

(declare-fun res!775627 () Bool)

(assert (=> b!1727624 (=> (not res!775627) (not e!1105173))))

(assert (=> b!1727624 (= res!775627 lt!661983)))

(declare-fun b!1727625 () Bool)

(assert (=> b!1727625 (= e!1105173 (= (head!3919 lt!661709) (c!282339 lt!661707)))))

(declare-fun b!1727626 () Bool)

(assert (=> b!1727626 (= e!1105171 e!1105175)))

(declare-fun c!282418 () Bool)

(assert (=> b!1727626 (= c!282418 (is-EmptyLang!4684 lt!661707))))

(declare-fun b!1727627 () Bool)

(declare-fun res!775626 () Bool)

(assert (=> b!1727627 (=> (not res!775626) (not e!1105173))))

(assert (=> b!1727627 (= res!775626 (not call!109872))))

(declare-fun b!1727628 () Bool)

(assert (=> b!1727628 (= e!1105175 (not lt!661983))))

(declare-fun b!1727629 () Bool)

(assert (=> b!1727629 (= e!1105174 (nullable!1415 lt!661707))))

(declare-fun b!1727630 () Bool)

(declare-fun res!775630 () Bool)

(assert (=> b!1727630 (=> (not res!775630) (not e!1105173))))

(assert (=> b!1727630 (= res!775630 (isEmpty!11903 (tail!2580 lt!661709)))))

(declare-fun b!1727631 () Bool)

(assert (=> b!1727631 (= e!1105172 (not (= (head!3919 lt!661709) (c!282339 lt!661707))))))

(declare-fun b!1727632 () Bool)

(assert (=> b!1727632 (= e!1105171 (= lt!661983 call!109872))))

(declare-fun b!1727633 () Bool)

(assert (=> b!1727633 (= e!1105169 e!1105170)))

(declare-fun res!775633 () Bool)

(assert (=> b!1727633 (=> (not res!775633) (not e!1105170))))

(assert (=> b!1727633 (= res!775633 (not lt!661983))))

(assert (= (and d!529129 c!282417) b!1727629))

(assert (= (and d!529129 (not c!282417)) b!1727622))

(assert (= (and d!529129 c!282416) b!1727632))

(assert (= (and d!529129 (not c!282416)) b!1727626))

(assert (= (and b!1727626 c!282418) b!1727628))

(assert (= (and b!1727626 (not c!282418)) b!1727621))

(assert (= (and b!1727621 (not res!775629)) b!1727624))

(assert (= (and b!1727624 res!775627) b!1727627))

(assert (= (and b!1727627 res!775626) b!1727630))

(assert (= (and b!1727630 res!775630) b!1727625))

(assert (= (and b!1727624 (not res!775628)) b!1727633))

(assert (= (and b!1727633 res!775633) b!1727623))

(assert (= (and b!1727623 (not res!775631)) b!1727620))

(assert (= (and b!1727620 (not res!775632)) b!1727631))

(assert (= (or b!1727632 b!1727623 b!1727627) bm!109867))

(assert (=> b!1727629 m!2134787))

(declare-fun m!2134871 () Bool)

(assert (=> bm!109867 m!2134871))

(assert (=> b!1727620 m!2134547))

(assert (=> b!1727620 m!2134547))

(declare-fun m!2134873 () Bool)

(assert (=> b!1727620 m!2134873))

(assert (=> b!1727630 m!2134547))

(assert (=> b!1727630 m!2134547))

(assert (=> b!1727630 m!2134873))

(assert (=> d!529129 m!2134871))

(assert (=> d!529129 m!2134789))

(assert (=> b!1727622 m!2134543))

(assert (=> b!1727622 m!2134543))

(declare-fun m!2134875 () Bool)

(assert (=> b!1727622 m!2134875))

(assert (=> b!1727622 m!2134547))

(assert (=> b!1727622 m!2134875))

(assert (=> b!1727622 m!2134547))

(declare-fun m!2134877 () Bool)

(assert (=> b!1727622 m!2134877))

(assert (=> b!1727625 m!2134543))

(assert (=> b!1727631 m!2134543))

(assert (=> b!1727130 d!529129))

(declare-fun d!529131 () Bool)

(assert (=> d!529131 (matchR!2158 (rulesRegex!714 thiss!24550 rules!3447) (list!7649 (charsOf!2005 token!523)))))

(declare-fun lt!661984 () Unit!32774)

(assert (=> d!529131 (= lt!661984 (choose!10537 thiss!24550 rules!3447 lt!661709 token!523 rule!422 Nil!18924))))

(assert (=> d!529131 (not (isEmpty!11904 rules!3447))))

(assert (=> d!529131 (= (lemmaMaxPrefixThenMatchesRulesRegex!105 thiss!24550 rules!3447 lt!661709 token!523 rule!422 Nil!18924) lt!661984)))

(declare-fun bs!402474 () Bool)

(assert (= bs!402474 d!529131))

(assert (=> bs!402474 m!2134193))

(declare-fun m!2134879 () Bool)

(assert (=> bs!402474 m!2134879))

(assert (=> bs!402474 m!2134193))

(declare-fun m!2134881 () Bool)

(assert (=> bs!402474 m!2134881))

(declare-fun m!2134883 () Bool)

(assert (=> bs!402474 m!2134883))

(assert (=> bs!402474 m!2134267))

(assert (=> bs!402474 m!2134881))

(assert (=> bs!402474 m!2134171))

(assert (=> bs!402474 m!2134267))

(assert (=> b!1727130 d!529131))

(declare-fun d!529133 () Bool)

(assert (=> d!529133 (= (isEmpty!11904 rules!3447) (is-Nil!18925 rules!3447))))

(assert (=> b!1727123 d!529133))

(declare-fun d!529135 () Bool)

(assert (=> d!529135 (= (list!7649 (dynLambda!8780 (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (dynLambda!8781 (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) lt!661710))) (list!7651 (c!282340 (dynLambda!8780 (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (dynLambda!8781 (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) lt!661710)))))))

(declare-fun bs!402475 () Bool)

(assert (= bs!402475 d!529135))

(declare-fun m!2134885 () Bool)

(assert (=> bs!402475 m!2134885))

(assert (=> b!1727122 d!529135))

(declare-fun bs!402477 () Bool)

(declare-fun d!529137 () Bool)

(assert (= bs!402477 (and d!529137 b!1727116)))

(declare-fun lambda!69284 () Int)

(assert (=> bs!402477 (= lambda!69284 lambda!69275)))

(declare-fun b!1727653 () Bool)

(declare-fun e!1105184 () Bool)

(assert (=> b!1727653 (= e!1105184 true)))

(assert (=> d!529137 e!1105184))

(assert (= d!529137 b!1727653))

(assert (=> b!1727653 (< (dynLambda!8777 order!11609 (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714))))) (dynLambda!8778 order!11611 lambda!69284))))

(assert (=> b!1727653 (< (dynLambda!8779 order!11613 (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714))))) (dynLambda!8778 order!11611 lambda!69284))))

(assert (=> d!529137 (= (list!7649 (dynLambda!8780 (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (dynLambda!8781 (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) lt!661710))) (list!7649 lt!661710))))

(declare-fun lt!661995 () Unit!32774)

(declare-fun ForallOf!271 (Int BalanceConc!12532) Unit!32774)

(assert (=> d!529137 (= lt!661995 (ForallOf!271 lambda!69284 lt!661710))))

(assert (=> d!529137 (= (lemmaSemiInverse!502 (transformation!3356 (rule!5322 (_1!10706 lt!661714))) lt!661710) lt!661995)))

(declare-fun b_lambda!54995 () Bool)

(assert (=> (not b_lambda!54995) (not d!529137)))

(assert (=> d!529137 t!160227))

(declare-fun b_and!126939 () Bool)

(assert (= b_and!126915 (and (=> t!160227 result!123430) b_and!126939)))

(assert (=> d!529137 t!160229))

(declare-fun b_and!126941 () Bool)

(assert (= b_and!126917 (and (=> t!160229 result!123432) b_and!126941)))

(assert (=> d!529137 t!160231))

(declare-fun b_and!126943 () Bool)

(assert (= b_and!126919 (and (=> t!160231 result!123434) b_and!126943)))

(declare-fun b_lambda!54997 () Bool)

(assert (=> (not b_lambda!54997) (not d!529137)))

(assert (=> d!529137 t!160233))

(declare-fun b_and!126945 () Bool)

(assert (= b_and!126873 (and (=> t!160233 result!123436) b_and!126945)))

(assert (=> d!529137 t!160235))

(declare-fun b_and!126947 () Bool)

(assert (= b_and!126875 (and (=> t!160235 result!123440) b_and!126947)))

(assert (=> d!529137 t!160237))

(declare-fun b_and!126949 () Bool)

(assert (= b_and!126877 (and (=> t!160237 result!123442) b_and!126949)))

(assert (=> d!529137 m!2134145))

(assert (=> d!529137 m!2134147))

(declare-fun m!2134927 () Bool)

(assert (=> d!529137 m!2134927))

(assert (=> d!529137 m!2134219))

(assert (=> d!529137 m!2134147))

(assert (=> d!529137 m!2134149))

(assert (=> d!529137 m!2134145))

(assert (=> b!1727122 d!529137))

(declare-fun d!529145 () Bool)

(declare-fun c!282429 () Bool)

(assert (=> d!529145 (= c!282429 (is-IntegerValue!10338 (dynLambda!8781 (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) lt!661710)))))

(declare-fun e!1105204 () Bool)

(assert (=> d!529145 (= (inv!21 (dynLambda!8781 (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) lt!661710)) e!1105204)))

(declare-fun b!1727684 () Bool)

(declare-fun e!1105203 () Bool)

(declare-fun inv!15 (TokenValue!3446) Bool)

(assert (=> b!1727684 (= e!1105203 (inv!15 (dynLambda!8781 (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) lt!661710)))))

(declare-fun b!1727685 () Bool)

(declare-fun res!775661 () Bool)

(assert (=> b!1727685 (=> res!775661 e!1105203)))

(assert (=> b!1727685 (= res!775661 (not (is-IntegerValue!10340 (dynLambda!8781 (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) lt!661710))))))

(declare-fun e!1105202 () Bool)

(assert (=> b!1727685 (= e!1105202 e!1105203)))

(declare-fun b!1727686 () Bool)

(declare-fun inv!17 (TokenValue!3446) Bool)

(assert (=> b!1727686 (= e!1105202 (inv!17 (dynLambda!8781 (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) lt!661710)))))

(declare-fun b!1727687 () Bool)

(declare-fun inv!16 (TokenValue!3446) Bool)

(assert (=> b!1727687 (= e!1105204 (inv!16 (dynLambda!8781 (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) lt!661710)))))

(declare-fun b!1727688 () Bool)

(assert (=> b!1727688 (= e!1105204 e!1105202)))

(declare-fun c!282430 () Bool)

(assert (=> b!1727688 (= c!282430 (is-IntegerValue!10339 (dynLambda!8781 (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) lt!661710)))))

(assert (= (and d!529145 c!282429) b!1727687))

(assert (= (and d!529145 (not c!282429)) b!1727688))

(assert (= (and b!1727688 c!282430) b!1727686))

(assert (= (and b!1727688 (not c!282430)) b!1727685))

(assert (= (and b!1727685 (not res!775661)) b!1727684))

(declare-fun m!2134957 () Bool)

(assert (=> b!1727684 m!2134957))

(declare-fun m!2134959 () Bool)

(assert (=> b!1727686 m!2134959))

(declare-fun m!2134963 () Bool)

(assert (=> b!1727687 m!2134963))

(assert (=> tb!102675 d!529145))

(declare-fun d!529153 () Bool)

(declare-fun e!1105210 () Bool)

(assert (=> d!529153 e!1105210))

(declare-fun c!282431 () Bool)

(assert (=> d!529153 (= c!282431 (is-EmptyExpr!4684 (regex!3356 lt!661688)))))

(declare-fun lt!662002 () Bool)

(declare-fun e!1105213 () Bool)

(assert (=> d!529153 (= lt!662002 e!1105213)))

(declare-fun c!282432 () Bool)

(assert (=> d!529153 (= c!282432 (isEmpty!11903 (list!7649 (charsOf!2005 (_1!10706 lt!661714)))))))

(assert (=> d!529153 (validRegex!1889 (regex!3356 lt!661688))))

(assert (=> d!529153 (= (matchR!2158 (regex!3356 lt!661688) (list!7649 (charsOf!2005 (_1!10706 lt!661714)))) lt!662002)))

(declare-fun bm!109869 () Bool)

(declare-fun call!109874 () Bool)

(assert (=> bm!109869 (= call!109874 (isEmpty!11903 (list!7649 (charsOf!2005 (_1!10706 lt!661714)))))))

(declare-fun b!1727693 () Bool)

(declare-fun res!775672 () Bool)

(declare-fun e!1105211 () Bool)

(assert (=> b!1727693 (=> res!775672 e!1105211)))

(assert (=> b!1727693 (= res!775672 (not (isEmpty!11903 (tail!2580 (list!7649 (charsOf!2005 (_1!10706 lt!661714)))))))))

(declare-fun b!1727694 () Bool)

(declare-fun res!775669 () Bool)

(declare-fun e!1105208 () Bool)

(assert (=> b!1727694 (=> res!775669 e!1105208)))

(assert (=> b!1727694 (= res!775669 (not (is-ElementMatch!4684 (regex!3356 lt!661688))))))

(declare-fun e!1105214 () Bool)

(assert (=> b!1727694 (= e!1105214 e!1105208)))

(declare-fun b!1727695 () Bool)

(assert (=> b!1727695 (= e!1105213 (matchR!2158 (derivativeStep!1183 (regex!3356 lt!661688) (head!3919 (list!7649 (charsOf!2005 (_1!10706 lt!661714))))) (tail!2580 (list!7649 (charsOf!2005 (_1!10706 lt!661714))))))))

(declare-fun b!1727696 () Bool)

(declare-fun e!1105209 () Bool)

(assert (=> b!1727696 (= e!1105209 e!1105211)))

(declare-fun res!775671 () Bool)

(assert (=> b!1727696 (=> res!775671 e!1105211)))

(assert (=> b!1727696 (= res!775671 call!109874)))

(declare-fun b!1727697 () Bool)

(declare-fun res!775668 () Bool)

(assert (=> b!1727697 (=> res!775668 e!1105208)))

(declare-fun e!1105212 () Bool)

(assert (=> b!1727697 (= res!775668 e!1105212)))

(declare-fun res!775667 () Bool)

(assert (=> b!1727697 (=> (not res!775667) (not e!1105212))))

(assert (=> b!1727697 (= res!775667 lt!662002)))

(declare-fun b!1727698 () Bool)

(assert (=> b!1727698 (= e!1105212 (= (head!3919 (list!7649 (charsOf!2005 (_1!10706 lt!661714)))) (c!282339 (regex!3356 lt!661688))))))

(declare-fun b!1727699 () Bool)

(assert (=> b!1727699 (= e!1105210 e!1105214)))

(declare-fun c!282433 () Bool)

(assert (=> b!1727699 (= c!282433 (is-EmptyLang!4684 (regex!3356 lt!661688)))))

(declare-fun b!1727700 () Bool)

(declare-fun res!775666 () Bool)

(assert (=> b!1727700 (=> (not res!775666) (not e!1105212))))

(assert (=> b!1727700 (= res!775666 (not call!109874))))

(declare-fun b!1727701 () Bool)

(assert (=> b!1727701 (= e!1105214 (not lt!662002))))

(declare-fun b!1727702 () Bool)

(assert (=> b!1727702 (= e!1105213 (nullable!1415 (regex!3356 lt!661688)))))

(declare-fun b!1727703 () Bool)

(declare-fun res!775670 () Bool)

(assert (=> b!1727703 (=> (not res!775670) (not e!1105212))))

(assert (=> b!1727703 (= res!775670 (isEmpty!11903 (tail!2580 (list!7649 (charsOf!2005 (_1!10706 lt!661714))))))))

(declare-fun b!1727704 () Bool)

(assert (=> b!1727704 (= e!1105211 (not (= (head!3919 (list!7649 (charsOf!2005 (_1!10706 lt!661714)))) (c!282339 (regex!3356 lt!661688)))))))

(declare-fun b!1727705 () Bool)

(assert (=> b!1727705 (= e!1105210 (= lt!662002 call!109874))))

(declare-fun b!1727706 () Bool)

(assert (=> b!1727706 (= e!1105208 e!1105209)))

(declare-fun res!775673 () Bool)

(assert (=> b!1727706 (=> (not res!775673) (not e!1105209))))

(assert (=> b!1727706 (= res!775673 (not lt!662002))))

(assert (= (and d!529153 c!282432) b!1727702))

(assert (= (and d!529153 (not c!282432)) b!1727695))

(assert (= (and d!529153 c!282431) b!1727705))

(assert (= (and d!529153 (not c!282431)) b!1727699))

(assert (= (and b!1727699 c!282433) b!1727701))

(assert (= (and b!1727699 (not c!282433)) b!1727694))

(assert (= (and b!1727694 (not res!775669)) b!1727697))

(assert (= (and b!1727697 res!775667) b!1727700))

(assert (= (and b!1727700 res!775666) b!1727703))

(assert (= (and b!1727703 res!775670) b!1727698))

(assert (= (and b!1727697 (not res!775668)) b!1727706))

(assert (= (and b!1727706 res!775673) b!1727696))

(assert (= (and b!1727696 (not res!775671)) b!1727693))

(assert (= (and b!1727693 (not res!775672)) b!1727704))

(assert (= (or b!1727705 b!1727696 b!1727700) bm!109869))

(declare-fun m!2134971 () Bool)

(assert (=> b!1727702 m!2134971))

(assert (=> bm!109869 m!2134165))

(declare-fun m!2134973 () Bool)

(assert (=> bm!109869 m!2134973))

(assert (=> b!1727693 m!2134165))

(declare-fun m!2134975 () Bool)

(assert (=> b!1727693 m!2134975))

(assert (=> b!1727693 m!2134975))

(declare-fun m!2134977 () Bool)

(assert (=> b!1727693 m!2134977))

(assert (=> b!1727703 m!2134165))

(assert (=> b!1727703 m!2134975))

(assert (=> b!1727703 m!2134975))

(assert (=> b!1727703 m!2134977))

(assert (=> d!529153 m!2134165))

(assert (=> d!529153 m!2134973))

(declare-fun m!2134979 () Bool)

(assert (=> d!529153 m!2134979))

(assert (=> b!1727695 m!2134165))

(declare-fun m!2134981 () Bool)

(assert (=> b!1727695 m!2134981))

(assert (=> b!1727695 m!2134981))

(declare-fun m!2134983 () Bool)

(assert (=> b!1727695 m!2134983))

(assert (=> b!1727695 m!2134165))

(assert (=> b!1727695 m!2134975))

(assert (=> b!1727695 m!2134983))

(assert (=> b!1727695 m!2134975))

(declare-fun m!2134985 () Bool)

(assert (=> b!1727695 m!2134985))

(assert (=> b!1727698 m!2134165))

(assert (=> b!1727698 m!2134981))

(assert (=> b!1727704 m!2134165))

(assert (=> b!1727704 m!2134981))

(assert (=> b!1727126 d!529153))

(declare-fun d!529157 () Bool)

(assert (=> d!529157 (= (list!7649 (charsOf!2005 (_1!10706 lt!661714))) (list!7651 (c!282340 (charsOf!2005 (_1!10706 lt!661714)))))))

(declare-fun bs!402478 () Bool)

(assert (= bs!402478 d!529157))

(declare-fun m!2134987 () Bool)

(assert (=> bs!402478 m!2134987))

(assert (=> b!1727126 d!529157))

(assert (=> b!1727126 d!529025))

(declare-fun d!529159 () Bool)

(assert (=> d!529159 (= (get!5632 lt!661690) (v!25149 lt!661690))))

(assert (=> b!1727126 d!529159))

(declare-fun b!1727713 () Bool)

(declare-fun e!1105219 () Bool)

(assert (=> b!1727713 (= e!1105219 true)))

(declare-fun d!529161 () Bool)

(assert (=> d!529161 e!1105219))

(assert (= d!529161 b!1727713))

(declare-fun lambda!69287 () Int)

(declare-fun order!11621 () Int)

(declare-fun dynLambda!8787 (Int Int) Int)

(assert (=> b!1727713 (< (dynLambda!8777 order!11609 (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714))))) (dynLambda!8787 order!11621 lambda!69287))))

(assert (=> b!1727713 (< (dynLambda!8779 order!11613 (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714))))) (dynLambda!8787 order!11621 lambda!69287))))

(assert (=> d!529161 (= (dynLambda!8781 (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) lt!661710) (dynLambda!8781 (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (seqFromList!2330 (originalCharacters!4170 (_1!10706 lt!661714)))))))

(declare-fun lt!662005 () Unit!32774)

(declare-fun Forall2of!84 (Int BalanceConc!12532 BalanceConc!12532) Unit!32774)

(assert (=> d!529161 (= lt!662005 (Forall2of!84 lambda!69287 lt!661710 (seqFromList!2330 (originalCharacters!4170 (_1!10706 lt!661714)))))))

(assert (=> d!529161 (= (list!7649 lt!661710) (list!7649 (seqFromList!2330 (originalCharacters!4170 (_1!10706 lt!661714)))))))

(assert (=> d!529161 (= (lemmaEqSameImage!281 (transformation!3356 (rule!5322 (_1!10706 lt!661714))) lt!661710 (seqFromList!2330 (originalCharacters!4170 (_1!10706 lt!661714)))) lt!662005)))

(declare-fun b_lambda!54999 () Bool)

(assert (=> (not b_lambda!54999) (not d!529161)))

(assert (=> d!529161 t!160233))

(declare-fun b_and!126951 () Bool)

(assert (= b_and!126945 (and (=> t!160233 result!123436) b_and!126951)))

(assert (=> d!529161 t!160235))

(declare-fun b_and!126953 () Bool)

(assert (= b_and!126947 (and (=> t!160235 result!123440) b_and!126953)))

(assert (=> d!529161 t!160237))

(declare-fun b_and!126955 () Bool)

(assert (= b_and!126949 (and (=> t!160237 result!123442) b_and!126955)))

(declare-fun b_lambda!55001 () Bool)

(assert (=> (not b_lambda!55001) (not d!529161)))

(declare-fun tb!102711 () Bool)

(declare-fun t!160275 () Bool)

(assert (=> (and b!1727118 (= (toValue!4863 (transformation!3356 rule!422)) (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714))))) t!160275) tb!102711))

(declare-fun result!123478 () Bool)

(assert (=> tb!102711 (= result!123478 (inv!21 (dynLambda!8781 (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (seqFromList!2330 (originalCharacters!4170 (_1!10706 lt!661714))))))))

(declare-fun m!2134989 () Bool)

(assert (=> tb!102711 m!2134989))

(assert (=> d!529161 t!160275))

(declare-fun b_and!126957 () Bool)

(assert (= b_and!126951 (and (=> t!160275 result!123478) b_and!126957)))

(declare-fun t!160277 () Bool)

(declare-fun tb!102713 () Bool)

(assert (=> (and b!1727121 (= (toValue!4863 (transformation!3356 (rule!5322 token!523))) (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714))))) t!160277) tb!102713))

(declare-fun result!123480 () Bool)

(assert (= result!123480 result!123478))

(assert (=> d!529161 t!160277))

(declare-fun b_and!126959 () Bool)

(assert (= b_and!126953 (and (=> t!160277 result!123480) b_and!126959)))

(declare-fun tb!102715 () Bool)

(declare-fun t!160279 () Bool)

(assert (=> (and b!1727110 (= (toValue!4863 (transformation!3356 (h!24326 rules!3447))) (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714))))) t!160279) tb!102715))

(declare-fun result!123482 () Bool)

(assert (= result!123482 result!123478))

(assert (=> d!529161 t!160279))

(declare-fun b_and!126961 () Bool)

(assert (= b_and!126955 (and (=> t!160279 result!123482) b_and!126961)))

(assert (=> d!529161 m!2134157))

(declare-fun m!2134991 () Bool)

(assert (=> d!529161 m!2134991))

(assert (=> d!529161 m!2134145))

(assert (=> d!529161 m!2134219))

(assert (=> d!529161 m!2134157))

(declare-fun m!2134993 () Bool)

(assert (=> d!529161 m!2134993))

(assert (=> d!529161 m!2134157))

(declare-fun m!2134995 () Bool)

(assert (=> d!529161 m!2134995))

(assert (=> b!1727124 d!529161))

(declare-fun d!529163 () Bool)

(assert (=> d!529163 (= (size!15035 (_1!10706 lt!661714)) (size!15036 (originalCharacters!4170 (_1!10706 lt!661714))))))

(declare-fun Unit!32781 () Unit!32774)

(assert (=> d!529163 (= (lemmaCharactersSize!428 (_1!10706 lt!661714)) Unit!32781)))

(declare-fun bs!402479 () Bool)

(assert (= bs!402479 d!529163))

(declare-fun m!2134997 () Bool)

(assert (=> bs!402479 m!2134997))

(assert (=> b!1727124 d!529163))

(declare-fun d!529165 () Bool)

(declare-fun fromListB!1069 (List!18994) BalanceConc!12532)

(assert (=> d!529165 (= (seqFromList!2330 (originalCharacters!4170 (_1!10706 lt!661714))) (fromListB!1069 (originalCharacters!4170 (_1!10706 lt!661714))))))

(declare-fun bs!402480 () Bool)

(assert (= bs!402480 d!529165))

(declare-fun m!2134999 () Bool)

(assert (=> bs!402480 m!2134999))

(assert (=> b!1727124 d!529165))

(declare-fun d!529167 () Bool)

(declare-fun lt!662006 () Int)

(assert (=> d!529167 (= lt!662006 (size!15036 (list!7649 lt!661710)))))

(assert (=> d!529167 (= lt!662006 (size!15041 (c!282340 lt!661710)))))

(assert (=> d!529167 (= (size!15037 lt!661710) lt!662006)))

(declare-fun bs!402481 () Bool)

(assert (= bs!402481 d!529167))

(assert (=> bs!402481 m!2134219))

(assert (=> bs!402481 m!2134219))

(declare-fun m!2135001 () Bool)

(assert (=> bs!402481 m!2135001))

(declare-fun m!2135003 () Bool)

(assert (=> bs!402481 m!2135003))

(assert (=> b!1727124 d!529167))

(declare-fun d!529169 () Bool)

(assert (=> d!529169 (= (apply!5161 (transformation!3356 (rule!5322 (_1!10706 lt!661714))) lt!661710) (dynLambda!8781 (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) lt!661710))))

(declare-fun b_lambda!55003 () Bool)

(assert (=> (not b_lambda!55003) (not d!529169)))

(assert (=> d!529169 t!160233))

(declare-fun b_and!126963 () Bool)

(assert (= b_and!126957 (and (=> t!160233 result!123436) b_and!126963)))

(assert (=> d!529169 t!160235))

(declare-fun b_and!126965 () Bool)

(assert (= b_and!126959 (and (=> t!160235 result!123440) b_and!126965)))

(assert (=> d!529169 t!160237))

(declare-fun b_and!126967 () Bool)

(assert (= b_and!126961 (and (=> t!160237 result!123442) b_and!126967)))

(assert (=> d!529169 m!2134145))

(assert (=> b!1727124 d!529169))

(declare-fun d!529171 () Bool)

(declare-fun c!282434 () Bool)

(assert (=> d!529171 (= c!282434 (is-IntegerValue!10338 (value!105320 token!523)))))

(declare-fun e!1105223 () Bool)

(assert (=> d!529171 (= (inv!21 (value!105320 token!523)) e!1105223)))

(declare-fun b!1727714 () Bool)

(declare-fun e!1105222 () Bool)

(assert (=> b!1727714 (= e!1105222 (inv!15 (value!105320 token!523)))))

(declare-fun b!1727715 () Bool)

(declare-fun res!775676 () Bool)

(assert (=> b!1727715 (=> res!775676 e!1105222)))

(assert (=> b!1727715 (= res!775676 (not (is-IntegerValue!10340 (value!105320 token!523))))))

(declare-fun e!1105221 () Bool)

(assert (=> b!1727715 (= e!1105221 e!1105222)))

(declare-fun b!1727716 () Bool)

(assert (=> b!1727716 (= e!1105221 (inv!17 (value!105320 token!523)))))

(declare-fun b!1727717 () Bool)

(assert (=> b!1727717 (= e!1105223 (inv!16 (value!105320 token!523)))))

(declare-fun b!1727718 () Bool)

(assert (=> b!1727718 (= e!1105223 e!1105221)))

(declare-fun c!282435 () Bool)

(assert (=> b!1727718 (= c!282435 (is-IntegerValue!10339 (value!105320 token!523)))))

(assert (= (and d!529171 c!282434) b!1727717))

(assert (= (and d!529171 (not c!282434)) b!1727718))

(assert (= (and b!1727718 c!282435) b!1727716))

(assert (= (and b!1727718 (not c!282435)) b!1727715))

(assert (= (and b!1727715 (not res!775676)) b!1727714))

(declare-fun m!2135005 () Bool)

(assert (=> b!1727714 m!2135005))

(declare-fun m!2135007 () Bool)

(assert (=> b!1727716 m!2135007))

(declare-fun m!2135009 () Bool)

(assert (=> b!1727717 m!2135009))

(assert (=> b!1727125 d!529171))

(declare-fun d!529173 () Bool)

(declare-fun choose!10538 (Int) Bool)

(assert (=> d!529173 (= (Forall!731 lambda!69275) (choose!10538 lambda!69275))))

(declare-fun bs!402482 () Bool)

(assert (= bs!402482 d!529173))

(declare-fun m!2135011 () Bool)

(assert (=> bs!402482 m!2135011))

(assert (=> b!1727116 d!529173))

(declare-fun d!529175 () Bool)

(declare-fun e!1105226 () Bool)

(assert (=> d!529175 e!1105226))

(declare-fun res!775679 () Bool)

(assert (=> d!529175 (=> (not res!775679) (not e!1105226))))

(assert (=> d!529175 (= res!775679 (semiInverseModEq!1328 (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714))))))))

(declare-fun Unit!32782 () Unit!32774)

(assert (=> d!529175 (= (lemmaInv!563 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) Unit!32782)))

(declare-fun b!1727721 () Bool)

(assert (=> b!1727721 (= e!1105226 (equivClasses!1269 (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714))))))))

(assert (= (and d!529175 res!775679) b!1727721))

(declare-fun m!2135013 () Bool)

(assert (=> d!529175 m!2135013))

(declare-fun m!2135015 () Bool)

(assert (=> b!1727721 m!2135015))

(assert (=> b!1727116 d!529175))

(declare-fun d!529177 () Bool)

(declare-fun e!1105229 () Bool)

(assert (=> d!529177 e!1105229))

(declare-fun c!282436 () Bool)

(assert (=> d!529177 (= c!282436 (is-EmptyExpr!4684 (regex!3356 rule!422)))))

(declare-fun lt!662007 () Bool)

(declare-fun e!1105232 () Bool)

(assert (=> d!529177 (= lt!662007 e!1105232)))

(declare-fun c!282437 () Bool)

(assert (=> d!529177 (= c!282437 (isEmpty!11903 lt!661709))))

(assert (=> d!529177 (validRegex!1889 (regex!3356 rule!422))))

(assert (=> d!529177 (= (matchR!2158 (regex!3356 rule!422) lt!661709) lt!662007)))

(declare-fun bm!109870 () Bool)

(declare-fun call!109875 () Bool)

(assert (=> bm!109870 (= call!109875 (isEmpty!11903 lt!661709))))

(declare-fun b!1727722 () Bool)

(declare-fun res!775686 () Bool)

(declare-fun e!1105230 () Bool)

(assert (=> b!1727722 (=> res!775686 e!1105230)))

(assert (=> b!1727722 (= res!775686 (not (isEmpty!11903 (tail!2580 lt!661709))))))

(declare-fun b!1727723 () Bool)

(declare-fun res!775683 () Bool)

(declare-fun e!1105227 () Bool)

(assert (=> b!1727723 (=> res!775683 e!1105227)))

(assert (=> b!1727723 (= res!775683 (not (is-ElementMatch!4684 (regex!3356 rule!422))))))

(declare-fun e!1105233 () Bool)

(assert (=> b!1727723 (= e!1105233 e!1105227)))

(declare-fun b!1727724 () Bool)

(assert (=> b!1727724 (= e!1105232 (matchR!2158 (derivativeStep!1183 (regex!3356 rule!422) (head!3919 lt!661709)) (tail!2580 lt!661709)))))

(declare-fun b!1727725 () Bool)

(declare-fun e!1105228 () Bool)

(assert (=> b!1727725 (= e!1105228 e!1105230)))

(declare-fun res!775685 () Bool)

(assert (=> b!1727725 (=> res!775685 e!1105230)))

(assert (=> b!1727725 (= res!775685 call!109875)))

(declare-fun b!1727726 () Bool)

(declare-fun res!775682 () Bool)

(assert (=> b!1727726 (=> res!775682 e!1105227)))

(declare-fun e!1105231 () Bool)

(assert (=> b!1727726 (= res!775682 e!1105231)))

(declare-fun res!775681 () Bool)

(assert (=> b!1727726 (=> (not res!775681) (not e!1105231))))

(assert (=> b!1727726 (= res!775681 lt!662007)))

(declare-fun b!1727727 () Bool)

(assert (=> b!1727727 (= e!1105231 (= (head!3919 lt!661709) (c!282339 (regex!3356 rule!422))))))

(declare-fun b!1727728 () Bool)

(assert (=> b!1727728 (= e!1105229 e!1105233)))

(declare-fun c!282438 () Bool)

(assert (=> b!1727728 (= c!282438 (is-EmptyLang!4684 (regex!3356 rule!422)))))

(declare-fun b!1727729 () Bool)

(declare-fun res!775680 () Bool)

(assert (=> b!1727729 (=> (not res!775680) (not e!1105231))))

(assert (=> b!1727729 (= res!775680 (not call!109875))))

(declare-fun b!1727730 () Bool)

(assert (=> b!1727730 (= e!1105233 (not lt!662007))))

(declare-fun b!1727731 () Bool)

(assert (=> b!1727731 (= e!1105232 (nullable!1415 (regex!3356 rule!422)))))

(declare-fun b!1727732 () Bool)

(declare-fun res!775684 () Bool)

(assert (=> b!1727732 (=> (not res!775684) (not e!1105231))))

(assert (=> b!1727732 (= res!775684 (isEmpty!11903 (tail!2580 lt!661709)))))

(declare-fun b!1727733 () Bool)

(assert (=> b!1727733 (= e!1105230 (not (= (head!3919 lt!661709) (c!282339 (regex!3356 rule!422)))))))

(declare-fun b!1727734 () Bool)

(assert (=> b!1727734 (= e!1105229 (= lt!662007 call!109875))))

(declare-fun b!1727735 () Bool)

(assert (=> b!1727735 (= e!1105227 e!1105228)))

(declare-fun res!775687 () Bool)

(assert (=> b!1727735 (=> (not res!775687) (not e!1105228))))

(assert (=> b!1727735 (= res!775687 (not lt!662007))))

(assert (= (and d!529177 c!282437) b!1727731))

(assert (= (and d!529177 (not c!282437)) b!1727724))

(assert (= (and d!529177 c!282436) b!1727734))

(assert (= (and d!529177 (not c!282436)) b!1727728))

(assert (= (and b!1727728 c!282438) b!1727730))

(assert (= (and b!1727728 (not c!282438)) b!1727723))

(assert (= (and b!1727723 (not res!775683)) b!1727726))

(assert (= (and b!1727726 res!775681) b!1727729))

(assert (= (and b!1727729 res!775680) b!1727732))

(assert (= (and b!1727732 res!775684) b!1727727))

(assert (= (and b!1727726 (not res!775682)) b!1727735))

(assert (= (and b!1727735 res!775687) b!1727725))

(assert (= (and b!1727725 (not res!775685)) b!1727722))

(assert (= (and b!1727722 (not res!775686)) b!1727733))

(assert (= (or b!1727734 b!1727725 b!1727729) bm!109870))

(declare-fun m!2135017 () Bool)

(assert (=> b!1727731 m!2135017))

(assert (=> bm!109870 m!2134871))

(assert (=> b!1727722 m!2134547))

(assert (=> b!1727722 m!2134547))

(assert (=> b!1727722 m!2134873))

(assert (=> b!1727732 m!2134547))

(assert (=> b!1727732 m!2134547))

(assert (=> b!1727732 m!2134873))

(assert (=> d!529177 m!2134871))

(declare-fun m!2135019 () Bool)

(assert (=> d!529177 m!2135019))

(assert (=> b!1727724 m!2134543))

(assert (=> b!1727724 m!2134543))

(declare-fun m!2135021 () Bool)

(assert (=> b!1727724 m!2135021))

(assert (=> b!1727724 m!2134547))

(assert (=> b!1727724 m!2135021))

(assert (=> b!1727724 m!2134547))

(declare-fun m!2135023 () Bool)

(assert (=> b!1727724 m!2135023))

(assert (=> b!1727727 m!2134543))

(assert (=> b!1727733 m!2134543))

(assert (=> b!1727117 d!529177))

(declare-fun d!529179 () Bool)

(declare-fun res!775692 () Bool)

(declare-fun e!1105236 () Bool)

(assert (=> d!529179 (=> (not res!775692) (not e!1105236))))

(assert (=> d!529179 (= res!775692 (validRegex!1889 (regex!3356 rule!422)))))

(assert (=> d!529179 (= (ruleValid!855 thiss!24550 rule!422) e!1105236)))

(declare-fun b!1727740 () Bool)

(declare-fun res!775693 () Bool)

(assert (=> b!1727740 (=> (not res!775693) (not e!1105236))))

(assert (=> b!1727740 (= res!775693 (not (nullable!1415 (regex!3356 rule!422))))))

(declare-fun b!1727741 () Bool)

(assert (=> b!1727741 (= e!1105236 (not (= (tag!3676 rule!422) (String!21565 ""))))))

(assert (= (and d!529179 res!775692) b!1727740))

(assert (= (and b!1727740 res!775693) b!1727741))

(assert (=> d!529179 m!2135019))

(assert (=> b!1727740 m!2135017))

(assert (=> b!1727117 d!529179))

(declare-fun d!529181 () Bool)

(assert (=> d!529181 (ruleValid!855 thiss!24550 rule!422)))

(declare-fun lt!662010 () Unit!32774)

(declare-fun choose!10541 (LexerInterface!2985 Rule!6512 List!18995) Unit!32774)

(assert (=> d!529181 (= lt!662010 (choose!10541 thiss!24550 rule!422 rules!3447))))

(assert (=> d!529181 (contains!3378 rules!3447 rule!422)))

(assert (=> d!529181 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!379 thiss!24550 rule!422 rules!3447) lt!662010)))

(declare-fun bs!402483 () Bool)

(assert (= bs!402483 d!529181))

(assert (=> bs!402483 m!2134199))

(declare-fun m!2135025 () Bool)

(assert (=> bs!402483 m!2135025))

(assert (=> bs!402483 m!2134177))

(assert (=> b!1727117 d!529181))

(declare-fun d!529183 () Bool)

(assert (=> d!529183 (= (_2!10706 lt!661714) lt!661711)))

(declare-fun lt!662011 () Unit!32774)

(assert (=> d!529183 (= lt!662011 (choose!10536 lt!661700 (_2!10706 lt!661714) lt!661700 lt!661711 lt!661685))))

(assert (=> d!529183 (isPrefix!1597 lt!661700 lt!661685)))

(assert (=> d!529183 (= (lemmaSamePrefixThenSameSuffix!741 lt!661700 (_2!10706 lt!661714) lt!661700 lt!661711 lt!661685) lt!662011)))

(declare-fun bs!402484 () Bool)

(assert (= bs!402484 d!529183))

(declare-fun m!2135027 () Bool)

(assert (=> bs!402484 m!2135027))

(assert (=> bs!402484 m!2134217))

(assert (=> b!1727119 d!529183))

(declare-fun d!529185 () Bool)

(declare-fun lt!662012 () Int)

(assert (=> d!529185 (>= lt!662012 0)))

(declare-fun e!1105237 () Int)

(assert (=> d!529185 (= lt!662012 e!1105237)))

(declare-fun c!282439 () Bool)

(assert (=> d!529185 (= c!282439 (is-Nil!18924 lt!661700))))

(assert (=> d!529185 (= (size!15036 lt!661700) lt!662012)))

(declare-fun b!1727742 () Bool)

(assert (=> b!1727742 (= e!1105237 0)))

(declare-fun b!1727743 () Bool)

(assert (=> b!1727743 (= e!1105237 (+ 1 (size!15036 (t!160239 lt!661700))))))

(assert (= (and d!529185 c!282439) b!1727742))

(assert (= (and d!529185 (not c!282439)) b!1727743))

(declare-fun m!2135029 () Bool)

(assert (=> b!1727743 m!2135029))

(assert (=> b!1727119 d!529185))

(declare-fun b!1727762 () Bool)

(declare-fun res!775710 () Bool)

(declare-fun e!1105249 () Bool)

(assert (=> b!1727762 (=> (not res!775710) (not e!1105249))))

(declare-fun lt!662025 () Option!3736)

(assert (=> b!1727762 (= res!775710 (= (rule!5322 (_1!10706 (get!5633 lt!662025))) (rule!5322 (_1!10706 lt!661714))))))

(declare-fun b!1727764 () Bool)

(declare-fun e!1105247 () Option!3736)

(declare-datatypes ((tuple2!18614 0))(
  ( (tuple2!18615 (_1!10709 List!18994) (_2!10709 List!18994)) )
))
(declare-fun lt!662027 () tuple2!18614)

(assert (=> b!1727764 (= e!1105247 (Some!3735 (tuple2!18609 (Token!6279 (apply!5161 (transformation!3356 (rule!5322 (_1!10706 lt!661714))) (seqFromList!2330 (_1!10709 lt!662027))) (rule!5322 (_1!10706 lt!661714)) (size!15037 (seqFromList!2330 (_1!10709 lt!662027))) (_1!10709 lt!662027)) (_2!10709 lt!662027))))))

(declare-fun lt!662026 () Unit!32774)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!390 (Regex!4684 List!18994) Unit!32774)

(assert (=> b!1727764 (= lt!662026 (longestMatchIsAcceptedByMatchOrIsEmpty!390 (regex!3356 (rule!5322 (_1!10706 lt!661714))) lt!661685))))

(declare-fun res!775711 () Bool)

(declare-fun findLongestMatchInner!406 (Regex!4684 List!18994 Int List!18994 List!18994 Int) tuple2!18614)

(assert (=> b!1727764 (= res!775711 (isEmpty!11903 (_1!10709 (findLongestMatchInner!406 (regex!3356 (rule!5322 (_1!10706 lt!661714))) Nil!18924 (size!15036 Nil!18924) lt!661685 lt!661685 (size!15036 lt!661685)))))))

(declare-fun e!1105248 () Bool)

(assert (=> b!1727764 (=> res!775711 e!1105248)))

(assert (=> b!1727764 e!1105248))

(declare-fun lt!662024 () Unit!32774)

(assert (=> b!1727764 (= lt!662024 lt!662026)))

(declare-fun lt!662023 () Unit!32774)

(assert (=> b!1727764 (= lt!662023 (lemmaSemiInverse!502 (transformation!3356 (rule!5322 (_1!10706 lt!661714))) (seqFromList!2330 (_1!10709 lt!662027))))))

(declare-fun b!1727765 () Bool)

(declare-fun e!1105246 () Bool)

(assert (=> b!1727765 (= e!1105246 e!1105249)))

(declare-fun res!775713 () Bool)

(assert (=> b!1727765 (=> (not res!775713) (not e!1105249))))

(assert (=> b!1727765 (= res!775713 (matchR!2158 (regex!3356 (rule!5322 (_1!10706 lt!661714))) (list!7649 (charsOf!2005 (_1!10706 (get!5633 lt!662025))))))))

(declare-fun b!1727766 () Bool)

(assert (=> b!1727766 (= e!1105248 (matchR!2158 (regex!3356 (rule!5322 (_1!10706 lt!661714))) (_1!10709 (findLongestMatchInner!406 (regex!3356 (rule!5322 (_1!10706 lt!661714))) Nil!18924 (size!15036 Nil!18924) lt!661685 lt!661685 (size!15036 lt!661685)))))))

(declare-fun b!1727767 () Bool)

(declare-fun res!775708 () Bool)

(assert (=> b!1727767 (=> (not res!775708) (not e!1105249))))

(assert (=> b!1727767 (= res!775708 (= (++!5181 (list!7649 (charsOf!2005 (_1!10706 (get!5633 lt!662025)))) (_2!10706 (get!5633 lt!662025))) lt!661685))))

(declare-fun b!1727768 () Bool)

(assert (=> b!1727768 (= e!1105247 None!3735)))

(declare-fun b!1727763 () Bool)

(declare-fun res!775714 () Bool)

(assert (=> b!1727763 (=> (not res!775714) (not e!1105249))))

(assert (=> b!1727763 (= res!775714 (< (size!15036 (_2!10706 (get!5633 lt!662025))) (size!15036 lt!661685)))))

(declare-fun d!529187 () Bool)

(assert (=> d!529187 e!1105246))

(declare-fun res!775709 () Bool)

(assert (=> d!529187 (=> res!775709 e!1105246)))

(assert (=> d!529187 (= res!775709 (isEmpty!11907 lt!662025))))

(assert (=> d!529187 (= lt!662025 e!1105247)))

(declare-fun c!282442 () Bool)

(assert (=> d!529187 (= c!282442 (isEmpty!11903 (_1!10709 lt!662027)))))

(declare-fun findLongestMatch!333 (Regex!4684 List!18994) tuple2!18614)

(assert (=> d!529187 (= lt!662027 (findLongestMatch!333 (regex!3356 (rule!5322 (_1!10706 lt!661714))) lt!661685))))

(assert (=> d!529187 (ruleValid!855 thiss!24550 (rule!5322 (_1!10706 lt!661714)))))

(assert (=> d!529187 (= (maxPrefixOneRule!915 thiss!24550 (rule!5322 (_1!10706 lt!661714)) lt!661685) lt!662025)))

(declare-fun b!1727769 () Bool)

(declare-fun res!775712 () Bool)

(assert (=> b!1727769 (=> (not res!775712) (not e!1105249))))

(assert (=> b!1727769 (= res!775712 (= (value!105320 (_1!10706 (get!5633 lt!662025))) (apply!5161 (transformation!3356 (rule!5322 (_1!10706 (get!5633 lt!662025)))) (seqFromList!2330 (originalCharacters!4170 (_1!10706 (get!5633 lt!662025)))))))))

(declare-fun b!1727770 () Bool)

(assert (=> b!1727770 (= e!1105249 (= (size!15035 (_1!10706 (get!5633 lt!662025))) (size!15036 (originalCharacters!4170 (_1!10706 (get!5633 lt!662025))))))))

(assert (= (and d!529187 c!282442) b!1727768))

(assert (= (and d!529187 (not c!282442)) b!1727764))

(assert (= (and b!1727764 (not res!775711)) b!1727766))

(assert (= (and d!529187 (not res!775709)) b!1727765))

(assert (= (and b!1727765 res!775713) b!1727767))

(assert (= (and b!1727767 res!775708) b!1727763))

(assert (= (and b!1727763 res!775714) b!1727762))

(assert (= (and b!1727762 res!775710) b!1727769))

(assert (= (and b!1727769 res!775712) b!1727770))

(declare-fun m!2135031 () Bool)

(assert (=> d!529187 m!2135031))

(declare-fun m!2135033 () Bool)

(assert (=> d!529187 m!2135033))

(declare-fun m!2135035 () Bool)

(assert (=> d!529187 m!2135035))

(declare-fun m!2135037 () Bool)

(assert (=> d!529187 m!2135037))

(declare-fun m!2135039 () Bool)

(assert (=> b!1727762 m!2135039))

(assert (=> b!1727765 m!2135039))

(declare-fun m!2135041 () Bool)

(assert (=> b!1727765 m!2135041))

(assert (=> b!1727765 m!2135041))

(declare-fun m!2135043 () Bool)

(assert (=> b!1727765 m!2135043))

(assert (=> b!1727765 m!2135043))

(declare-fun m!2135045 () Bool)

(assert (=> b!1727765 m!2135045))

(assert (=> b!1727769 m!2135039))

(declare-fun m!2135047 () Bool)

(assert (=> b!1727769 m!2135047))

(assert (=> b!1727769 m!2135047))

(declare-fun m!2135049 () Bool)

(assert (=> b!1727769 m!2135049))

(assert (=> b!1727763 m!2135039))

(declare-fun m!2135051 () Bool)

(assert (=> b!1727763 m!2135051))

(assert (=> b!1727763 m!2134253))

(assert (=> b!1727767 m!2135039))

(assert (=> b!1727767 m!2135041))

(assert (=> b!1727767 m!2135041))

(assert (=> b!1727767 m!2135043))

(assert (=> b!1727767 m!2135043))

(declare-fun m!2135053 () Bool)

(assert (=> b!1727767 m!2135053))

(declare-fun m!2135055 () Bool)

(assert (=> b!1727766 m!2135055))

(assert (=> b!1727766 m!2134253))

(assert (=> b!1727766 m!2135055))

(assert (=> b!1727766 m!2134253))

(declare-fun m!2135057 () Bool)

(assert (=> b!1727766 m!2135057))

(declare-fun m!2135059 () Bool)

(assert (=> b!1727766 m!2135059))

(assert (=> b!1727764 m!2135055))

(declare-fun m!2135061 () Bool)

(assert (=> b!1727764 m!2135061))

(assert (=> b!1727764 m!2134253))

(declare-fun m!2135063 () Bool)

(assert (=> b!1727764 m!2135063))

(assert (=> b!1727764 m!2135055))

(assert (=> b!1727764 m!2134253))

(assert (=> b!1727764 m!2135057))

(assert (=> b!1727764 m!2135063))

(declare-fun m!2135065 () Bool)

(assert (=> b!1727764 m!2135065))

(declare-fun m!2135067 () Bool)

(assert (=> b!1727764 m!2135067))

(assert (=> b!1727764 m!2135063))

(declare-fun m!2135069 () Bool)

(assert (=> b!1727764 m!2135069))

(assert (=> b!1727764 m!2135063))

(declare-fun m!2135071 () Bool)

(assert (=> b!1727764 m!2135071))

(assert (=> b!1727770 m!2135039))

(declare-fun m!2135073 () Bool)

(assert (=> b!1727770 m!2135073))

(assert (=> b!1727119 d!529187))

(declare-fun d!529189 () Bool)

(assert (=> d!529189 (= (apply!5161 (transformation!3356 (rule!5322 (_1!10706 lt!661714))) (seqFromList!2330 lt!661700)) (dynLambda!8781 (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (seqFromList!2330 lt!661700)))))

(declare-fun b_lambda!55005 () Bool)

(assert (=> (not b_lambda!55005) (not d!529189)))

(declare-fun t!160281 () Bool)

(declare-fun tb!102717 () Bool)

(assert (=> (and b!1727118 (= (toValue!4863 (transformation!3356 rule!422)) (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714))))) t!160281) tb!102717))

(declare-fun result!123484 () Bool)

(assert (=> tb!102717 (= result!123484 (inv!21 (dynLambda!8781 (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (seqFromList!2330 lt!661700))))))

(declare-fun m!2135075 () Bool)

(assert (=> tb!102717 m!2135075))

(assert (=> d!529189 t!160281))

(declare-fun b_and!126969 () Bool)

(assert (= b_and!126963 (and (=> t!160281 result!123484) b_and!126969)))

(declare-fun tb!102719 () Bool)

(declare-fun t!160283 () Bool)

(assert (=> (and b!1727121 (= (toValue!4863 (transformation!3356 (rule!5322 token!523))) (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714))))) t!160283) tb!102719))

(declare-fun result!123486 () Bool)

(assert (= result!123486 result!123484))

(assert (=> d!529189 t!160283))

(declare-fun b_and!126971 () Bool)

(assert (= b_and!126965 (and (=> t!160283 result!123486) b_and!126971)))

(declare-fun t!160285 () Bool)

(declare-fun tb!102721 () Bool)

(assert (=> (and b!1727110 (= (toValue!4863 (transformation!3356 (h!24326 rules!3447))) (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714))))) t!160285) tb!102721))

(declare-fun result!123488 () Bool)

(assert (= result!123488 result!123484))

(assert (=> d!529189 t!160285))

(declare-fun b_and!126973 () Bool)

(assert (= b_and!126967 (and (=> t!160285 result!123488) b_and!126973)))

(assert (=> d!529189 m!2134277))

(declare-fun m!2135077 () Bool)

(assert (=> d!529189 m!2135077))

(assert (=> b!1727119 d!529189))

(declare-fun d!529191 () Bool)

(declare-fun lt!662028 () List!18994)

(assert (=> d!529191 (= (++!5181 lt!661700 lt!662028) lt!661685)))

(declare-fun e!1105251 () List!18994)

(assert (=> d!529191 (= lt!662028 e!1105251)))

(declare-fun c!282443 () Bool)

(assert (=> d!529191 (= c!282443 (is-Cons!18924 lt!661700))))

(assert (=> d!529191 (>= (size!15036 lt!661685) (size!15036 lt!661700))))

(assert (=> d!529191 (= (getSuffix!791 lt!661685 lt!661700) lt!662028)))

(declare-fun b!1727771 () Bool)

(assert (=> b!1727771 (= e!1105251 (getSuffix!791 (tail!2580 lt!661685) (t!160239 lt!661700)))))

(declare-fun b!1727772 () Bool)

(assert (=> b!1727772 (= e!1105251 lt!661685)))

(assert (= (and d!529191 c!282443) b!1727771))

(assert (= (and d!529191 (not c!282443)) b!1727772))

(declare-fun m!2135079 () Bool)

(assert (=> d!529191 m!2135079))

(assert (=> d!529191 m!2134253))

(assert (=> d!529191 m!2134279))

(assert (=> b!1727771 m!2134549))

(assert (=> b!1727771 m!2134549))

(declare-fun m!2135081 () Bool)

(assert (=> b!1727771 m!2135081))

(assert (=> b!1727119 d!529191))

(declare-fun d!529193 () Bool)

(assert (=> d!529193 (= (maxPrefixOneRule!915 thiss!24550 (rule!5322 (_1!10706 lt!661714)) lt!661685) (Some!3735 (tuple2!18609 (Token!6279 (apply!5161 (transformation!3356 (rule!5322 (_1!10706 lt!661714))) (seqFromList!2330 lt!661700)) (rule!5322 (_1!10706 lt!661714)) (size!15036 lt!661700) lt!661700) (_2!10706 lt!661714))))))

(declare-fun lt!662031 () Unit!32774)

(declare-fun choose!10542 (LexerInterface!2985 List!18995 List!18994 List!18994 List!18994 Rule!6512) Unit!32774)

(assert (=> d!529193 (= lt!662031 (choose!10542 thiss!24550 rules!3447 lt!661700 lt!661685 (_2!10706 lt!661714) (rule!5322 (_1!10706 lt!661714))))))

(assert (=> d!529193 (not (isEmpty!11904 rules!3447))))

(assert (=> d!529193 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!314 thiss!24550 rules!3447 lt!661700 lt!661685 (_2!10706 lt!661714) (rule!5322 (_1!10706 lt!661714))) lt!662031)))

(declare-fun bs!402485 () Bool)

(assert (= bs!402485 d!529193))

(assert (=> bs!402485 m!2134285))

(assert (=> bs!402485 m!2134277))

(assert (=> bs!402485 m!2134277))

(assert (=> bs!402485 m!2134283))

(assert (=> bs!402485 m!2134171))

(declare-fun m!2135083 () Bool)

(assert (=> bs!402485 m!2135083))

(assert (=> bs!402485 m!2134279))

(assert (=> b!1727119 d!529193))

(declare-fun d!529195 () Bool)

(assert (=> d!529195 (= (seqFromList!2330 lt!661700) (fromListB!1069 lt!661700))))

(declare-fun bs!402486 () Bool)

(assert (= bs!402486 d!529195))

(declare-fun m!2135085 () Bool)

(assert (=> bs!402486 m!2135085))

(assert (=> b!1727119 d!529195))

(declare-fun d!529197 () Bool)

(declare-fun res!775719 () Bool)

(declare-fun e!1105254 () Bool)

(assert (=> d!529197 (=> (not res!775719) (not e!1105254))))

(assert (=> d!529197 (= res!775719 (not (isEmpty!11903 (originalCharacters!4170 token!523))))))

(assert (=> d!529197 (= (inv!24465 token!523) e!1105254)))

(declare-fun b!1727777 () Bool)

(declare-fun res!775720 () Bool)

(assert (=> b!1727777 (=> (not res!775720) (not e!1105254))))

(assert (=> b!1727777 (= res!775720 (= (originalCharacters!4170 token!523) (list!7649 (dynLambda!8780 (toChars!4722 (transformation!3356 (rule!5322 token!523))) (value!105320 token!523)))))))

(declare-fun b!1727778 () Bool)

(assert (=> b!1727778 (= e!1105254 (= (size!15035 token!523) (size!15036 (originalCharacters!4170 token!523))))))

(assert (= (and d!529197 res!775719) b!1727777))

(assert (= (and b!1727777 res!775720) b!1727778))

(declare-fun b_lambda!55007 () Bool)

(assert (=> (not b_lambda!55007) (not b!1727777)))

(assert (=> b!1727777 t!160263))

(declare-fun b_and!126975 () Bool)

(assert (= b_and!126939 (and (=> t!160263 result!123466) b_and!126975)))

(assert (=> b!1727777 t!160265))

(declare-fun b_and!126977 () Bool)

(assert (= b_and!126941 (and (=> t!160265 result!123468) b_and!126977)))

(assert (=> b!1727777 t!160267))

(declare-fun b_and!126979 () Bool)

(assert (= b_and!126943 (and (=> t!160267 result!123470) b_and!126979)))

(declare-fun m!2135087 () Bool)

(assert (=> d!529197 m!2135087))

(assert (=> b!1727777 m!2134499))

(assert (=> b!1727777 m!2134499))

(declare-fun m!2135089 () Bool)

(assert (=> b!1727777 m!2135089))

(declare-fun m!2135091 () Bool)

(assert (=> b!1727778 m!2135091))

(assert (=> start!169580 d!529197))

(declare-fun d!529199 () Bool)

(declare-fun c!282444 () Bool)

(assert (=> d!529199 (= c!282444 (is-Node!6294 (c!282340 (dynLambda!8780 (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (dynLambda!8781 (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) lt!661710)))))))

(declare-fun e!1105255 () Bool)

(assert (=> d!529199 (= (inv!24466 (c!282340 (dynLambda!8780 (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (dynLambda!8781 (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) lt!661710)))) e!1105255)))

(declare-fun b!1727779 () Bool)

(assert (=> b!1727779 (= e!1105255 (inv!24472 (c!282340 (dynLambda!8780 (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (dynLambda!8781 (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) lt!661710)))))))

(declare-fun b!1727780 () Bool)

(declare-fun e!1105256 () Bool)

(assert (=> b!1727780 (= e!1105255 e!1105256)))

(declare-fun res!775721 () Bool)

(assert (=> b!1727780 (= res!775721 (not (is-Leaf!9193 (c!282340 (dynLambda!8780 (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (dynLambda!8781 (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) lt!661710))))))))

(assert (=> b!1727780 (=> res!775721 e!1105256)))

(declare-fun b!1727781 () Bool)

(assert (=> b!1727781 (= e!1105256 (inv!24473 (c!282340 (dynLambda!8780 (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (dynLambda!8781 (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) lt!661710)))))))

(assert (= (and d!529199 c!282444) b!1727779))

(assert (= (and d!529199 (not c!282444)) b!1727780))

(assert (= (and b!1727780 (not res!775721)) b!1727781))

(declare-fun m!2135093 () Bool)

(assert (=> b!1727779 m!2135093))

(declare-fun m!2135095 () Bool)

(assert (=> b!1727781 m!2135095))

(assert (=> b!1727153 d!529199))

(declare-fun b!1727792 () Bool)

(declare-fun e!1105259 () Bool)

(assert (=> b!1727792 (= e!1105259 tp_is_empty!7611)))

(declare-fun b!1727794 () Bool)

(declare-fun tp!492817 () Bool)

(assert (=> b!1727794 (= e!1105259 tp!492817)))

(assert (=> b!1727112 (= tp!492753 e!1105259)))

(declare-fun b!1727795 () Bool)

(declare-fun tp!492815 () Bool)

(declare-fun tp!492813 () Bool)

(assert (=> b!1727795 (= e!1105259 (and tp!492815 tp!492813))))

(declare-fun b!1727793 () Bool)

(declare-fun tp!492814 () Bool)

(declare-fun tp!492816 () Bool)

(assert (=> b!1727793 (= e!1105259 (and tp!492814 tp!492816))))

(assert (= (and b!1727112 (is-ElementMatch!4684 (regex!3356 rule!422))) b!1727792))

(assert (= (and b!1727112 (is-Concat!8131 (regex!3356 rule!422))) b!1727793))

(assert (= (and b!1727112 (is-Star!4684 (regex!3356 rule!422))) b!1727794))

(assert (= (and b!1727112 (is-Union!4684 (regex!3356 rule!422))) b!1727795))

(declare-fun b!1727796 () Bool)

(declare-fun e!1105260 () Bool)

(assert (=> b!1727796 (= e!1105260 tp_is_empty!7611)))

(declare-fun b!1727798 () Bool)

(declare-fun tp!492822 () Bool)

(assert (=> b!1727798 (= e!1105260 tp!492822)))

(assert (=> b!1727111 (= tp!492747 e!1105260)))

(declare-fun b!1727799 () Bool)

(declare-fun tp!492820 () Bool)

(declare-fun tp!492818 () Bool)

(assert (=> b!1727799 (= e!1105260 (and tp!492820 tp!492818))))

(declare-fun b!1727797 () Bool)

(declare-fun tp!492819 () Bool)

(declare-fun tp!492821 () Bool)

(assert (=> b!1727797 (= e!1105260 (and tp!492819 tp!492821))))

(assert (= (and b!1727111 (is-ElementMatch!4684 (regex!3356 (rule!5322 token!523)))) b!1727796))

(assert (= (and b!1727111 (is-Concat!8131 (regex!3356 (rule!5322 token!523)))) b!1727797))

(assert (= (and b!1727111 (is-Star!4684 (regex!3356 (rule!5322 token!523)))) b!1727798))

(assert (= (and b!1727111 (is-Union!4684 (regex!3356 (rule!5322 token!523)))) b!1727799))

(declare-fun b!1727810 () Bool)

(declare-fun b_free!47199 () Bool)

(declare-fun b_next!47903 () Bool)

(assert (=> b!1727810 (= b_free!47199 (not b_next!47903))))

(declare-fun t!160287 () Bool)

(declare-fun tb!102723 () Bool)

(assert (=> (and b!1727810 (= (toValue!4863 (transformation!3356 (h!24326 (t!160240 rules!3447)))) (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714))))) t!160287) tb!102723))

(declare-fun result!123494 () Bool)

(assert (= result!123494 result!123484))

(assert (=> d!529189 t!160287))

(declare-fun t!160289 () Bool)

(declare-fun tb!102725 () Bool)

(assert (=> (and b!1727810 (= (toValue!4863 (transformation!3356 (h!24326 (t!160240 rules!3447)))) (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714))))) t!160289) tb!102725))

(declare-fun result!123496 () Bool)

(assert (= result!123496 result!123478))

(assert (=> d!529161 t!160289))

(declare-fun tb!102727 () Bool)

(declare-fun t!160291 () Bool)

(assert (=> (and b!1727810 (= (toValue!4863 (transformation!3356 (h!24326 (t!160240 rules!3447)))) (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714))))) t!160291) tb!102727))

(declare-fun result!123498 () Bool)

(assert (= result!123498 result!123436))

(assert (=> d!529161 t!160291))

(assert (=> d!529137 t!160291))

(assert (=> d!529169 t!160291))

(assert (=> b!1727122 t!160291))

(declare-fun tp!492831 () Bool)

(declare-fun b_and!126981 () Bool)

(assert (=> b!1727810 (= tp!492831 (and (=> t!160291 result!123498) (=> t!160287 result!123494) (=> t!160289 result!123496) b_and!126981))))

(declare-fun b_free!47201 () Bool)

(declare-fun b_next!47905 () Bool)

(assert (=> b!1727810 (= b_free!47201 (not b_next!47905))))

(declare-fun t!160293 () Bool)

(declare-fun tb!102729 () Bool)

(assert (=> (and b!1727810 (= (toChars!4722 (transformation!3356 (h!24326 (t!160240 rules!3447)))) (toChars!4722 (transformation!3356 (rule!5322 token!523)))) t!160293) tb!102729))

(declare-fun result!123500 () Bool)

(assert (= result!123500 result!123466))

(assert (=> b!1727777 t!160293))

(declare-fun t!160295 () Bool)

(declare-fun tb!102731 () Bool)

(assert (=> (and b!1727810 (= (toChars!4722 (transformation!3356 (h!24326 (t!160240 rules!3447)))) (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714))))) t!160295) tb!102731))

(declare-fun result!123502 () Bool)

(assert (= result!123502 result!123422))

(assert (=> d!529025 t!160295))

(assert (=> b!1727120 t!160295))

(assert (=> d!529013 t!160293))

(declare-fun t!160297 () Bool)

(declare-fun tb!102733 () Bool)

(assert (=> (and b!1727810 (= (toChars!4722 (transformation!3356 (h!24326 (t!160240 rules!3447)))) (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714))))) t!160297) tb!102733))

(declare-fun result!123504 () Bool)

(assert (= result!123504 result!123430))

(assert (=> b!1727122 t!160297))

(assert (=> d!529137 t!160297))

(declare-fun b_and!126983 () Bool)

(declare-fun tp!492832 () Bool)

(assert (=> b!1727810 (= tp!492832 (and (=> t!160295 result!123502) (=> t!160297 result!123504) (=> t!160293 result!123500) b_and!126983))))

(declare-fun e!1105271 () Bool)

(assert (=> b!1727810 (= e!1105271 (and tp!492831 tp!492832))))

(declare-fun b!1727809 () Bool)

(declare-fun tp!492833 () Bool)

(declare-fun e!1105270 () Bool)

(assert (=> b!1727809 (= e!1105270 (and tp!492833 (inv!24461 (tag!3676 (h!24326 (t!160240 rules!3447)))) (inv!24464 (transformation!3356 (h!24326 (t!160240 rules!3447)))) e!1105271))))

(declare-fun b!1727808 () Bool)

(declare-fun e!1105272 () Bool)

(declare-fun tp!492834 () Bool)

(assert (=> b!1727808 (= e!1105272 (and e!1105270 tp!492834))))

(assert (=> b!1727136 (= tp!492754 e!1105272)))

(assert (= b!1727809 b!1727810))

(assert (= b!1727808 b!1727809))

(assert (= (and b!1727136 (is-Cons!18925 (t!160240 rules!3447))) b!1727808))

(declare-fun m!2135097 () Bool)

(assert (=> b!1727809 m!2135097))

(declare-fun m!2135099 () Bool)

(assert (=> b!1727809 m!2135099))

(declare-fun b!1727823 () Bool)

(declare-fun e!1105279 () Bool)

(declare-fun tp!492837 () Bool)

(assert (=> b!1727823 (= e!1105279 (and tp_is_empty!7611 tp!492837))))

(assert (=> b!1727108 (= tp!492749 e!1105279)))

(assert (= (and b!1727108 (is-Cons!18924 (t!160239 suffix!1421))) b!1727823))

(declare-fun b!1727832 () Bool)

(declare-fun e!1105285 () Bool)

(declare-fun tp!492844 () Bool)

(declare-fun tp!492846 () Bool)

(assert (=> b!1727832 (= e!1105285 (and (inv!24466 (left!15108 (c!282340 (dynLambda!8780 (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (value!105320 (_1!10706 lt!661714)))))) tp!492844 (inv!24466 (right!15438 (c!282340 (dynLambda!8780 (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (value!105320 (_1!10706 lt!661714)))))) tp!492846))))

(declare-fun b!1727834 () Bool)

(declare-fun e!1105284 () Bool)

(declare-fun tp!492845 () Bool)

(assert (=> b!1727834 (= e!1105284 tp!492845)))

(declare-fun b!1727833 () Bool)

(declare-fun inv!24474 (IArray!12593) Bool)

(assert (=> b!1727833 (= e!1105285 (and (inv!24474 (xs!9170 (c!282340 (dynLambda!8780 (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (value!105320 (_1!10706 lt!661714)))))) e!1105284))))

(assert (=> b!1727152 (= tp!492759 (and (inv!24466 (c!282340 (dynLambda!8780 (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (value!105320 (_1!10706 lt!661714))))) e!1105285))))

(assert (= (and b!1727152 (is-Node!6294 (c!282340 (dynLambda!8780 (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (value!105320 (_1!10706 lt!661714)))))) b!1727832))

(assert (= b!1727833 b!1727834))

(assert (= (and b!1727152 (is-Leaf!9193 (c!282340 (dynLambda!8780 (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (value!105320 (_1!10706 lt!661714)))))) b!1727833))

(declare-fun m!2135101 () Bool)

(assert (=> b!1727832 m!2135101))

(declare-fun m!2135103 () Bool)

(assert (=> b!1727832 m!2135103))

(declare-fun m!2135105 () Bool)

(assert (=> b!1727833 m!2135105))

(assert (=> b!1727152 m!2134133))

(declare-fun b!1727835 () Bool)

(declare-fun e!1105286 () Bool)

(declare-fun tp!492847 () Bool)

(assert (=> b!1727835 (= e!1105286 (and tp_is_empty!7611 tp!492847))))

(assert (=> b!1727125 (= tp!492756 e!1105286)))

(assert (= (and b!1727125 (is-Cons!18924 (originalCharacters!4170 token!523))) b!1727835))

(declare-fun tp!492850 () Bool)

(declare-fun e!1105288 () Bool)

(declare-fun b!1727836 () Bool)

(declare-fun tp!492848 () Bool)

(assert (=> b!1727836 (= e!1105288 (and (inv!24466 (left!15108 (c!282340 (dynLambda!8780 (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (dynLambda!8781 (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) lt!661710))))) tp!492848 (inv!24466 (right!15438 (c!282340 (dynLambda!8780 (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (dynLambda!8781 (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) lt!661710))))) tp!492850))))

(declare-fun b!1727838 () Bool)

(declare-fun e!1105287 () Bool)

(declare-fun tp!492849 () Bool)

(assert (=> b!1727838 (= e!1105287 tp!492849)))

(declare-fun b!1727837 () Bool)

(assert (=> b!1727837 (= e!1105288 (and (inv!24474 (xs!9170 (c!282340 (dynLambda!8780 (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (dynLambda!8781 (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) lt!661710))))) e!1105287))))

(assert (=> b!1727153 (= tp!492760 (and (inv!24466 (c!282340 (dynLambda!8780 (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (dynLambda!8781 (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) lt!661710)))) e!1105288))))

(assert (= (and b!1727153 (is-Node!6294 (c!282340 (dynLambda!8780 (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (dynLambda!8781 (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) lt!661710))))) b!1727836))

(assert (= b!1727837 b!1727838))

(assert (= (and b!1727153 (is-Leaf!9193 (c!282340 (dynLambda!8780 (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) (dynLambda!8781 (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))) lt!661710))))) b!1727837))

(declare-fun m!2135107 () Bool)

(assert (=> b!1727836 m!2135107))

(declare-fun m!2135109 () Bool)

(assert (=> b!1727836 m!2135109))

(declare-fun m!2135111 () Bool)

(assert (=> b!1727837 m!2135111))

(assert (=> b!1727153 m!2134137))

(declare-fun b!1727839 () Bool)

(declare-fun e!1105289 () Bool)

(assert (=> b!1727839 (= e!1105289 tp_is_empty!7611)))

(declare-fun b!1727841 () Bool)

(declare-fun tp!492855 () Bool)

(assert (=> b!1727841 (= e!1105289 tp!492855)))

(assert (=> b!1727114 (= tp!492752 e!1105289)))

(declare-fun b!1727842 () Bool)

(declare-fun tp!492853 () Bool)

(declare-fun tp!492851 () Bool)

(assert (=> b!1727842 (= e!1105289 (and tp!492853 tp!492851))))

(declare-fun b!1727840 () Bool)

(declare-fun tp!492852 () Bool)

(declare-fun tp!492854 () Bool)

(assert (=> b!1727840 (= e!1105289 (and tp!492852 tp!492854))))

(assert (= (and b!1727114 (is-ElementMatch!4684 (regex!3356 (h!24326 rules!3447)))) b!1727839))

(assert (= (and b!1727114 (is-Concat!8131 (regex!3356 (h!24326 rules!3447)))) b!1727840))

(assert (= (and b!1727114 (is-Star!4684 (regex!3356 (h!24326 rules!3447)))) b!1727841))

(assert (= (and b!1727114 (is-Union!4684 (regex!3356 (h!24326 rules!3447)))) b!1727842))

(declare-fun b_lambda!55009 () Bool)

(assert (= b_lambda!54977 (or (and b!1727118 b_free!47175 (= (toValue!4863 (transformation!3356 rule!422)) (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))))) (and b!1727121 b_free!47179 (= (toValue!4863 (transformation!3356 (rule!5322 token!523))) (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))))) (and b!1727110 b_free!47183 (= (toValue!4863 (transformation!3356 (h!24326 rules!3447))) (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))))) (and b!1727810 b_free!47199 (= (toValue!4863 (transformation!3356 (h!24326 (t!160240 rules!3447)))) (toValue!4863 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))))) b_lambda!55009)))

(declare-fun b_lambda!55011 () Bool)

(assert (= b_lambda!54973 (or (and b!1727118 b_free!47177 (= (toChars!4722 (transformation!3356 rule!422)) (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))))) (and b!1727121 b_free!47181 (= (toChars!4722 (transformation!3356 (rule!5322 token!523))) (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))))) (and b!1727110 b_free!47185 (= (toChars!4722 (transformation!3356 (h!24326 rules!3447))) (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))))) (and b!1727810 b_free!47201 (= (toChars!4722 (transformation!3356 (h!24326 (t!160240 rules!3447)))) (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))))) b_lambda!55011)))

(declare-fun b_lambda!55013 () Bool)

(assert (= b_lambda!54985 (or (and b!1727118 b_free!47177 (= (toChars!4722 (transformation!3356 rule!422)) (toChars!4722 (transformation!3356 (rule!5322 token!523))))) (and b!1727121 b_free!47181) (and b!1727110 b_free!47185 (= (toChars!4722 (transformation!3356 (h!24326 rules!3447))) (toChars!4722 (transformation!3356 (rule!5322 token!523))))) (and b!1727810 b_free!47201 (= (toChars!4722 (transformation!3356 (h!24326 (t!160240 rules!3447)))) (toChars!4722 (transformation!3356 (rule!5322 token!523))))) b_lambda!55013)))

(declare-fun b_lambda!55015 () Bool)

(assert (= b_lambda!55007 (or (and b!1727118 b_free!47177 (= (toChars!4722 (transformation!3356 rule!422)) (toChars!4722 (transformation!3356 (rule!5322 token!523))))) (and b!1727121 b_free!47181) (and b!1727110 b_free!47185 (= (toChars!4722 (transformation!3356 (h!24326 rules!3447))) (toChars!4722 (transformation!3356 (rule!5322 token!523))))) (and b!1727810 b_free!47201 (= (toChars!4722 (transformation!3356 (h!24326 (t!160240 rules!3447)))) (toChars!4722 (transformation!3356 (rule!5322 token!523))))) b_lambda!55015)))

(declare-fun b_lambda!55017 () Bool)

(assert (= b_lambda!54975 (or (and b!1727118 b_free!47177 (= (toChars!4722 (transformation!3356 rule!422)) (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))))) (and b!1727121 b_free!47181 (= (toChars!4722 (transformation!3356 (rule!5322 token!523))) (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))))) (and b!1727110 b_free!47185 (= (toChars!4722 (transformation!3356 (h!24326 rules!3447))) (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))))) (and b!1727810 b_free!47201 (= (toChars!4722 (transformation!3356 (h!24326 (t!160240 rules!3447)))) (toChars!4722 (transformation!3356 (rule!5322 (_1!10706 lt!661714)))))) b_lambda!55017)))

(push 1)

(assert (not d!529135))

(assert b_and!126969)

(assert (not b!1727608))

(assert (not d!529059))

(assert (not d!529011))

(assert (not d!529177))

(assert (not b_lambda!55013))

(assert (not b!1727702))

(assert (not b!1727295))

(assert (not d!529183))

(assert (not b!1727535))

(assert (not b!1727687))

(assert (not b!1727698))

(assert (not d!529157))

(assert (not b!1727545))

(assert (not d!529013))

(assert (not b!1727794))

(assert (not b!1727732))

(assert b_and!126971)

(assert (not b!1727374))

(assert (not b!1727771))

(assert (not d!529005))

(assert (not bm!109869))

(assert (not b!1727393))

(assert (not d!529117))

(assert (not bm!109870))

(assert (not b!1727622))

(assert (not b!1727301))

(assert (not b!1727559))

(assert (not bm!109866))

(assert (not d!529193))

(assert (not b!1727471))

(assert (not bm!109858))

(assert (not d!529167))

(assert (not b!1727833))

(assert (not d!529021))

(assert (not b!1727766))

(assert (not b!1727350))

(assert (not b!1727373))

(assert (not b!1727733))

(assert (not b!1727390))

(assert (not d!529023))

(assert (not d!529163))

(assert (not d!529195))

(assert (not d!529165))

(assert (not b!1727798))

(assert (not b_next!47889))

(assert (not b!1727589))

(assert (not b!1727797))

(assert (not b_next!47881))

(assert (not d!529035))

(assert (not d!529015))

(assert (not b_next!47887))

(assert (not b!1727576))

(assert (not b!1727684))

(assert (not b!1727297))

(assert (not b_lambda!54999))

(assert (not b!1727799))

(assert (not b!1727385))

(assert (not b!1727686))

(assert (not b!1727808))

(assert (not d!529025))

(assert (not b!1727591))

(assert (not b!1727380))

(assert (not d!529073))

(assert (not b_lambda!54987))

(assert (not b!1727333))

(assert (not b!1727293))

(assert (not b!1727764))

(assert (not b!1727842))

(assert (not b!1727722))

(assert (not b!1727703))

(assert (not d!529019))

(assert (not b!1727612))

(assert (not b!1727837))

(assert (not b_next!47905))

(assert (not d!529033))

(assert (not d!529003))

(assert (not b!1727520))

(assert (not b!1727763))

(assert (not b!1727153))

(assert (not b!1727835))

(assert (not b!1727769))

(assert (not b!1727717))

(assert (not b!1727611))

(assert (not b!1727777))

(assert (not b_lambda!55001))

(assert (not b!1727473))

(assert (not b!1727714))

(assert (not b!1727693))

(assert (not b!1727704))

(assert (not b!1727331))

(assert b_and!126983)

(assert (not bm!109857))

(assert (not d!529113))

(assert (not b!1727391))

(assert b_and!126973)

(assert (not b!1727630))

(assert (not b_lambda!54995))

(assert (not b_lambda!55011))

(assert (not b!1727795))

(assert (not d!529127))

(assert (not b!1727695))

(assert (not b!1727509))

(assert (not b!1727629))

(assert (not d!529111))

(assert (not b!1727809))

(assert (not b!1727383))

(assert (not b!1727336))

(assert (not d!529069))

(assert (not d!529095))

(assert (not b!1727743))

(assert (not b!1727376))

(assert (not bm!109854))

(assert (not b!1727762))

(assert (not b!1727349))

(assert (not d!529009))

(assert (not d!529191))

(assert (not b!1727724))

(assert (not b_next!47883))

(assert (not d!528993))

(assert (not d!529197))

(assert (not d!529017))

(assert (not b!1727267))

(assert (not d!528997))

(assert (not b_lambda!54997))

(assert (not b!1727381))

(assert (not b!1727340))

(assert (not b_lambda!55015))

(assert (not b!1727361))

(assert (not b!1727299))

(assert (not d!529137))

(assert (not b_next!47879))

(assert (not b!1727838))

(assert (not b!1727268))

(assert (not d!529175))

(assert (not b!1727294))

(assert (not tb!102699))

(assert (not d!529063))

(assert b_and!126975)

(assert (not b!1727832))

(assert (not b!1727793))

(assert (not b!1727727))

(assert (not b!1727778))

(assert (not b_lambda!55005))

(assert (not d!529161))

(assert (not b!1727296))

(assert (not b!1727620))

(assert (not b!1727342))

(assert (not d!529061))

(assert (not b!1727540))

(assert (not b!1727721))

(assert (not b!1727384))

(assert (not b!1727386))

(assert (not b!1727779))

(assert (not tb!102711))

(assert (not b_next!47903))

(assert (not b!1727767))

(assert (not b!1727579))

(assert (not b!1727716))

(assert (not b!1727544))

(assert b_and!126977)

(assert (not b!1727740))

(assert (not b!1727765))

(assert (not d!529173))

(assert (not b!1727609))

(assert (not b!1727274))

(assert (not d!529007))

(assert (not b_next!47885))

(assert (not b!1727341))

(assert (not d!529129))

(assert (not d!529103))

(assert (not b!1727378))

(assert (not b!1727770))

(assert (not b!1727625))

(assert (not b!1727394))

(assert (not b!1727302))

(assert (not d!529037))

(assert (not b!1727389))

(assert (not b!1727840))

(assert (not d!529131))

(assert tp_is_empty!7611)

(assert (not b!1727152))

(assert (not b!1727377))

(assert (not d!529085))

(assert (not d!529067))

(assert (not tb!102717))

(assert (not b!1727781))

(assert (not b!1727582))

(assert (not d!529181))

(assert (not b_lambda!55009))

(assert (not bm!109867))

(assert b_and!126981)

(assert (not b!1727360))

(assert (not b!1727300))

(assert (not b!1727395))

(assert (not b!1727506))

(assert (not b!1727546))

(assert (not b!1727841))

(assert (not b!1727834))

(assert (not d!529153))

(assert (not b_lambda!55017))

(assert (not b!1727836))

(assert (not d!529179))

(assert (not b!1727537))

(assert b_and!126979)

(assert (not b!1727823))

(assert (not b!1727387))

(assert (not d!529041))

(assert (not b!1727372))

(assert (not b!1727505))

(assert (not b!1727472))

(assert (not b_lambda!55003))

(assert (not b!1727631))

(assert (not d!529187))

(assert (not b!1727731))

(check-sat)

(pop 1)

(push 1)

(assert b_and!126969)

(assert b_and!126971)

(assert (not b_next!47889))

(assert (not b_next!47905))

(assert b_and!126983)

(assert b_and!126973)

(assert (not b_next!47883))

(assert (not b_next!47879))

(assert b_and!126975)

(assert (not b_next!47903))

(assert b_and!126977)

(assert (not b_next!47885))

(assert b_and!126981)

(assert b_and!126979)

(assert (not b_next!47881))

(assert (not b_next!47887))

(check-sat)

(pop 1)

