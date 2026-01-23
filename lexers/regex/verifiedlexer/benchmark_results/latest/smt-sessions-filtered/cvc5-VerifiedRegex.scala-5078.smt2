; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!259648 () Bool)

(assert start!259648)

(declare-fun b!2669612 () Bool)

(declare-fun b_free!74957 () Bool)

(declare-fun b_next!75661 () Bool)

(assert (=> b!2669612 (= b_free!74957 (not b_next!75661))))

(declare-fun tp!843843 () Bool)

(declare-fun b_and!196965 () Bool)

(assert (=> b!2669612 (= tp!843843 b_and!196965)))

(declare-fun b_free!74959 () Bool)

(declare-fun b_next!75663 () Bool)

(assert (=> b!2669612 (= b_free!74959 (not b_next!75663))))

(declare-fun tp!843845 () Bool)

(declare-fun b_and!196967 () Bool)

(assert (=> b!2669612 (= tp!843845 b_and!196967)))

(declare-fun b!2669610 () Bool)

(declare-fun b_free!74961 () Bool)

(declare-fun b_next!75665 () Bool)

(assert (=> b!2669610 (= b_free!74961 (not b_next!75665))))

(declare-fun tp!843844 () Bool)

(declare-fun b_and!196969 () Bool)

(assert (=> b!2669610 (= tp!843844 b_and!196969)))

(declare-fun b_free!74963 () Bool)

(declare-fun b_next!75667 () Bool)

(assert (=> b!2669610 (= b_free!74963 (not b_next!75667))))

(declare-fun tp!843851 () Bool)

(declare-fun b_and!196971 () Bool)

(assert (=> b!2669610 (= tp!843851 b_and!196971)))

(declare-fun b!2669614 () Bool)

(declare-fun b_free!74965 () Bool)

(declare-fun b_next!75669 () Bool)

(assert (=> b!2669614 (= b_free!74965 (not b_next!75669))))

(declare-fun tp!843848 () Bool)

(declare-fun b_and!196973 () Bool)

(assert (=> b!2669614 (= tp!843848 b_and!196973)))

(declare-fun b_free!74967 () Bool)

(declare-fun b_next!75671 () Bool)

(assert (=> b!2669614 (= b_free!74967 (not b_next!75671))))

(declare-fun tp!843842 () Bool)

(declare-fun b_and!196975 () Bool)

(assert (=> b!2669614 (= tp!843842 b_and!196975)))

(declare-fun bs!479395 () Bool)

(declare-fun b!2669605 () Bool)

(declare-fun b!2669601 () Bool)

(assert (= bs!479395 (and b!2669605 b!2669601)))

(declare-fun lambda!99656 () Int)

(declare-fun lambda!99655 () Int)

(assert (=> bs!479395 (not (= lambda!99656 lambda!99655))))

(declare-fun b!2669631 () Bool)

(declare-fun e!1682400 () Bool)

(assert (=> b!2669631 (= e!1682400 true)))

(declare-fun b!2669630 () Bool)

(declare-fun e!1682399 () Bool)

(assert (=> b!2669630 (= e!1682399 e!1682400)))

(declare-fun b!2669629 () Bool)

(declare-fun e!1682398 () Bool)

(assert (=> b!2669629 (= e!1682398 e!1682399)))

(assert (=> b!2669605 e!1682398))

(assert (= b!2669630 b!2669631))

(assert (= b!2669629 b!2669630))

(declare-datatypes ((List!30769 0))(
  ( (Nil!30669) (Cons!30669 (h!36089 (_ BitVec 16)) (t!223078 List!30769)) )
))
(declare-datatypes ((TokenValue!4898 0))(
  ( (FloatLiteralValue!9796 (text!34731 List!30769)) (TokenValueExt!4897 (__x!19629 Int)) (Broken!24490 (value!150846 List!30769)) (Object!4997) (End!4898) (Def!4898) (Underscore!4898) (Match!4898) (Else!4898) (Error!4898) (Case!4898) (If!4898) (Extends!4898) (Abstract!4898) (Class!4898) (Val!4898) (DelimiterValue!9796 (del!4958 List!30769)) (KeywordValue!4904 (value!150847 List!30769)) (CommentValue!9796 (value!150848 List!30769)) (WhitespaceValue!9796 (value!150849 List!30769)) (IndentationValue!4898 (value!150850 List!30769)) (String!34375) (Int32!4898) (Broken!24491 (value!150851 List!30769)) (Boolean!4899) (Unit!44895) (OperatorValue!4901 (op!4958 List!30769)) (IdentifierValue!9796 (value!150852 List!30769)) (IdentifierValue!9797 (value!150853 List!30769)) (WhitespaceValue!9797 (value!150854 List!30769)) (True!9796) (False!9796) (Broken!24492 (value!150855 List!30769)) (Broken!24493 (value!150856 List!30769)) (True!9797) (RightBrace!4898) (RightBracket!4898) (Colon!4898) (Null!4898) (Comma!4898) (LeftBracket!4898) (False!9797) (LeftBrace!4898) (ImaginaryLiteralValue!4898 (text!34732 List!30769)) (StringLiteralValue!14694 (value!150857 List!30769)) (EOFValue!4898 (value!150858 List!30769)) (IdentValue!4898 (value!150859 List!30769)) (DelimiterValue!9797 (value!150860 List!30769)) (DedentValue!4898 (value!150861 List!30769)) (NewLineValue!4898 (value!150862 List!30769)) (IntegerValue!14694 (value!150863 (_ BitVec 32)) (text!34733 List!30769)) (IntegerValue!14695 (value!150864 Int) (text!34734 List!30769)) (Times!4898) (Or!4898) (Equal!4898) (Minus!4898) (Broken!24494 (value!150865 List!30769)) (And!4898) (Div!4898) (LessEqual!4898) (Mod!4898) (Concat!12718) (Not!4898) (Plus!4898) (SpaceValue!4898 (value!150866 List!30769)) (IntegerValue!14696 (value!150867 Int) (text!34735 List!30769)) (StringLiteralValue!14695 (text!34736 List!30769)) (FloatLiteralValue!9797 (text!34737 List!30769)) (BytesLiteralValue!4898 (value!150868 List!30769)) (CommentValue!9797 (value!150869 List!30769)) (StringLiteralValue!14696 (value!150870 List!30769)) (ErrorTokenValue!4898 (msg!4959 List!30769)) )
))
(declare-datatypes ((C!15798 0))(
  ( (C!15799 (val!9833 Int)) )
))
(declare-datatypes ((List!30770 0))(
  ( (Nil!30670) (Cons!30670 (h!36090 C!15798) (t!223079 List!30770)) )
))
(declare-datatypes ((IArray!19181 0))(
  ( (IArray!19182 (innerList!9648 List!30770)) )
))
(declare-datatypes ((Conc!9588 0))(
  ( (Node!9588 (left!23716 Conc!9588) (right!24046 Conc!9588) (csize!19406 Int) (cheight!9799 Int)) (Leaf!14667 (xs!12618 IArray!19181) (csize!19407 Int)) (Empty!9588) )
))
(declare-datatypes ((BalanceConc!18790 0))(
  ( (BalanceConc!18791 (c!430425 Conc!9588)) )
))
(declare-datatypes ((Regex!7820 0))(
  ( (ElementMatch!7820 (c!430426 C!15798)) (Concat!12719 (regOne!16152 Regex!7820) (regTwo!16152 Regex!7820)) (EmptyExpr!7820) (Star!7820 (reg!8149 Regex!7820)) (EmptyLang!7820) (Union!7820 (regOne!16153 Regex!7820) (regTwo!16153 Regex!7820)) )
))
(declare-datatypes ((TokenValueInjection!9236 0))(
  ( (TokenValueInjection!9237 (toValue!6614 Int) (toChars!6473 Int)) )
))
(declare-datatypes ((String!34376 0))(
  ( (String!34377 (value!150871 String)) )
))
(declare-datatypes ((Rule!9152 0))(
  ( (Rule!9153 (regex!4676 Regex!7820) (tag!5178 String!34376) (isSeparator!4676 Bool) (transformation!4676 TokenValueInjection!9236)) )
))
(declare-datatypes ((List!30771 0))(
  ( (Nil!30671) (Cons!30671 (h!36091 Rule!9152) (t!223080 List!30771)) )
))
(declare-fun rules!1712 () List!30771)

(assert (= (and b!2669605 (is-Cons!30671 rules!1712)) b!2669629))

(declare-fun order!16797 () Int)

(declare-fun order!16799 () Int)

(declare-fun dynLambda!13259 (Int Int) Int)

(declare-fun dynLambda!13260 (Int Int) Int)

(assert (=> b!2669631 (< (dynLambda!13259 order!16797 (toValue!6614 (transformation!4676 (h!36091 rules!1712)))) (dynLambda!13260 order!16799 lambda!99656))))

(declare-fun order!16801 () Int)

(declare-fun dynLambda!13261 (Int Int) Int)

(assert (=> b!2669631 (< (dynLambda!13261 order!16801 (toChars!6473 (transformation!4676 (h!36091 rules!1712)))) (dynLambda!13260 order!16799 lambda!99656))))

(assert (=> b!2669605 true))

(declare-fun b!2669600 () Bool)

(declare-fun res!1122403 () Bool)

(declare-fun e!1682388 () Bool)

(assert (=> b!2669600 (=> (not res!1122403) (not e!1682388))))

(declare-fun sepAndNonSepRulesDisjointChars!1249 (List!30771 List!30771) Bool)

(assert (=> b!2669600 (= res!1122403 (sepAndNonSepRulesDisjointChars!1249 rules!1712 rules!1712))))

(declare-fun res!1122401 () Bool)

(assert (=> b!2669601 (=> (not res!1122401) (not e!1682388))))

(declare-datatypes ((Token!8822 0))(
  ( (Token!8823 (value!150872 TokenValue!4898) (rule!7082 Rule!9152) (size!23734 Int) (originalCharacters!5442 List!30770)) )
))
(declare-datatypes ((List!30772 0))(
  ( (Nil!30672) (Cons!30672 (h!36092 Token!8822) (t!223081 List!30772)) )
))
(declare-fun l!4335 () List!30772)

(declare-fun forall!6489 (List!30772 Int) Bool)

(assert (=> b!2669601 (= res!1122401 (forall!6489 l!4335 lambda!99655))))

(declare-fun b!2669602 () Bool)

(declare-fun res!1122405 () Bool)

(assert (=> b!2669602 (=> (not res!1122405) (not e!1682388))))

(assert (=> b!2669602 (= res!1122405 (is-Cons!30672 l!4335))))

(declare-fun b!2669603 () Bool)

(declare-fun res!1122399 () Bool)

(assert (=> b!2669603 (=> (not res!1122399) (not e!1682388))))

(declare-fun isEmpty!17548 (List!30771) Bool)

(assert (=> b!2669603 (= res!1122399 (not (isEmpty!17548 rules!1712)))))

(declare-fun b!2669604 () Bool)

(declare-fun res!1122400 () Bool)

(assert (=> b!2669604 (=> (not res!1122400) (not e!1682388))))

(declare-fun separatorToken!152 () Token!8822)

(assert (=> b!2669604 (= res!1122400 (isSeparator!4676 (rule!7082 separatorToken!152)))))

(declare-fun b!2669606 () Bool)

(declare-fun res!1122404 () Bool)

(assert (=> b!2669606 (=> (not res!1122404) (not e!1682388))))

(declare-fun contains!5884 (List!30772 Token!8822) Bool)

(assert (=> b!2669606 (= res!1122404 (contains!5884 l!4335 (h!36092 l!4335)))))

(declare-fun tp!843846 () Bool)

(declare-fun e!1682376 () Bool)

(declare-fun b!2669607 () Bool)

(declare-fun e!1682391 () Bool)

(declare-fun inv!41674 (String!34376) Bool)

(declare-fun inv!41677 (TokenValueInjection!9236) Bool)

(assert (=> b!2669607 (= e!1682376 (and tp!843846 (inv!41674 (tag!5178 (rule!7082 (h!36092 l!4335)))) (inv!41677 (transformation!4676 (rule!7082 (h!36092 l!4335)))) e!1682391))))

(declare-fun tp!843849 () Bool)

(declare-fun e!1682381 () Bool)

(declare-fun e!1682379 () Bool)

(declare-fun b!2669608 () Bool)

(declare-fun inv!41678 (Token!8822) Bool)

(assert (=> b!2669608 (= e!1682381 (and (inv!41678 (h!36092 l!4335)) e!1682379 tp!843849))))

(declare-fun b!2669609 () Bool)

(declare-fun res!1122406 () Bool)

(assert (=> b!2669609 (=> (not res!1122406) (not e!1682388))))

(declare-datatypes ((LexerInterface!4273 0))(
  ( (LexerInterfaceExt!4270 (__x!19630 Int)) (Lexer!4271) )
))
(declare-fun thiss!14116 () LexerInterface!4273)

(declare-fun rulesInvariant!3773 (LexerInterface!4273 List!30771) Bool)

(assert (=> b!2669609 (= res!1122406 (rulesInvariant!3773 thiss!14116 rules!1712))))

(declare-fun e!1682375 () Bool)

(assert (=> b!2669610 (= e!1682375 (and tp!843844 tp!843851))))

(declare-fun b!2669611 () Bool)

(declare-fun tp!843847 () Bool)

(declare-fun inv!21 (TokenValue!4898) Bool)

(assert (=> b!2669611 (= e!1682379 (and (inv!21 (value!150872 (h!36092 l!4335))) e!1682376 tp!843847))))

(assert (=> b!2669612 (= e!1682391 (and tp!843843 tp!843845))))

(declare-fun b!2669613 () Bool)

(declare-fun tp!843850 () Bool)

(declare-fun e!1682389 () Bool)

(declare-fun e!1682385 () Bool)

(assert (=> b!2669613 (= e!1682385 (and tp!843850 (inv!41674 (tag!5178 (rule!7082 separatorToken!152))) (inv!41677 (transformation!4676 (rule!7082 separatorToken!152))) e!1682389))))

(assert (=> b!2669614 (= e!1682389 (and tp!843848 tp!843842))))

(declare-fun e!1682390 () Bool)

(declare-fun tp!843853 () Bool)

(declare-fun b!2669615 () Bool)

(assert (=> b!2669615 (= e!1682390 (and tp!843853 (inv!41674 (tag!5178 (h!36091 rules!1712))) (inv!41677 (transformation!4676 (h!36091 rules!1712))) e!1682375))))

(declare-fun b!2669616 () Bool)

(declare-fun e!1682382 () Bool)

(assert (=> b!2669616 (= e!1682382 (not (forall!6489 (t!223081 l!4335) lambda!99655)))))

(declare-fun b!2669617 () Bool)

(declare-fun tp!843841 () Bool)

(declare-fun e!1682387 () Bool)

(assert (=> b!2669617 (= e!1682387 (and (inv!21 (value!150872 separatorToken!152)) e!1682385 tp!843841))))

(declare-fun b!2669618 () Bool)

(declare-fun res!1122397 () Bool)

(assert (=> b!2669618 (=> (not res!1122397) (not e!1682388))))

(declare-fun rulesProduceIndividualToken!1985 (LexerInterface!4273 List!30771 Token!8822) Bool)

(assert (=> b!2669618 (= res!1122397 (rulesProduceIndividualToken!1985 thiss!14116 rules!1712 separatorToken!152))))

(assert (=> b!2669605 (= e!1682388 e!1682382)))

(declare-fun res!1122407 () Bool)

(assert (=> b!2669605 (=> (not res!1122407) (not e!1682382))))

(declare-fun rulesProduceEachTokenIndividuallyList!1495 (LexerInterface!4273 List!30771 List!30772) Bool)

(assert (=> b!2669605 (= res!1122407 (rulesProduceEachTokenIndividuallyList!1495 thiss!14116 rules!1712 (t!223081 l!4335)))))

(declare-datatypes ((Unit!44896 0))(
  ( (Unit!44897) )
))
(declare-fun lt!940425 () Unit!44896)

(declare-fun forallContained!1018 (List!30772 Int Token!8822) Unit!44896)

(assert (=> b!2669605 (= lt!940425 (forallContained!1018 l!4335 lambda!99656 (h!36092 l!4335)))))

(declare-fun res!1122398 () Bool)

(assert (=> start!259648 (=> (not res!1122398) (not e!1682388))))

(assert (=> start!259648 (= res!1122398 (is-Lexer!4271 thiss!14116))))

(assert (=> start!259648 e!1682388))

(assert (=> start!259648 true))

(declare-fun e!1682380 () Bool)

(assert (=> start!259648 e!1682380))

(assert (=> start!259648 e!1682381))

(assert (=> start!259648 (and (inv!41678 separatorToken!152) e!1682387)))

(declare-fun b!2669619 () Bool)

(declare-fun res!1122402 () Bool)

(assert (=> b!2669619 (=> (not res!1122402) (not e!1682388))))

(assert (=> b!2669619 (= res!1122402 (rulesProduceEachTokenIndividuallyList!1495 thiss!14116 rules!1712 l!4335))))

(declare-fun b!2669620 () Bool)

(declare-fun tp!843852 () Bool)

(assert (=> b!2669620 (= e!1682380 (and e!1682390 tp!843852))))

(assert (= (and start!259648 res!1122398) b!2669603))

(assert (= (and b!2669603 res!1122399) b!2669609))

(assert (= (and b!2669609 res!1122406) b!2669619))

(assert (= (and b!2669619 res!1122402) b!2669618))

(assert (= (and b!2669618 res!1122397) b!2669604))

(assert (= (and b!2669604 res!1122400) b!2669601))

(assert (= (and b!2669601 res!1122401) b!2669600))

(assert (= (and b!2669600 res!1122403) b!2669602))

(assert (= (and b!2669602 res!1122405) b!2669606))

(assert (= (and b!2669606 res!1122404) b!2669605))

(assert (= (and b!2669605 res!1122407) b!2669616))

(assert (= b!2669615 b!2669610))

(assert (= b!2669620 b!2669615))

(assert (= (and start!259648 (is-Cons!30671 rules!1712)) b!2669620))

(assert (= b!2669607 b!2669612))

(assert (= b!2669611 b!2669607))

(assert (= b!2669608 b!2669611))

(assert (= (and start!259648 (is-Cons!30672 l!4335)) b!2669608))

(assert (= b!2669613 b!2669614))

(assert (= b!2669617 b!2669613))

(assert (= start!259648 b!2669617))

(declare-fun m!3035987 () Bool)

(assert (=> b!2669608 m!3035987))

(declare-fun m!3035989 () Bool)

(assert (=> start!259648 m!3035989))

(declare-fun m!3035991 () Bool)

(assert (=> b!2669605 m!3035991))

(declare-fun m!3035993 () Bool)

(assert (=> b!2669605 m!3035993))

(declare-fun m!3035995 () Bool)

(assert (=> b!2669601 m!3035995))

(declare-fun m!3035997 () Bool)

(assert (=> b!2669617 m!3035997))

(declare-fun m!3035999 () Bool)

(assert (=> b!2669600 m!3035999))

(declare-fun m!3036001 () Bool)

(assert (=> b!2669603 m!3036001))

(declare-fun m!3036003 () Bool)

(assert (=> b!2669618 m!3036003))

(declare-fun m!3036005 () Bool)

(assert (=> b!2669615 m!3036005))

(declare-fun m!3036007 () Bool)

(assert (=> b!2669615 m!3036007))

(declare-fun m!3036009 () Bool)

(assert (=> b!2669607 m!3036009))

(declare-fun m!3036011 () Bool)

(assert (=> b!2669607 m!3036011))

(declare-fun m!3036013 () Bool)

(assert (=> b!2669611 m!3036013))

(declare-fun m!3036015 () Bool)

(assert (=> b!2669613 m!3036015))

(declare-fun m!3036017 () Bool)

(assert (=> b!2669613 m!3036017))

(declare-fun m!3036019 () Bool)

(assert (=> b!2669609 m!3036019))

(declare-fun m!3036021 () Bool)

(assert (=> b!2669619 m!3036021))

(declare-fun m!3036023 () Bool)

(assert (=> b!2669606 m!3036023))

(declare-fun m!3036025 () Bool)

(assert (=> b!2669616 m!3036025))

(push 1)

(assert (not b!2669618))

(assert (not b_next!75661))

(assert (not b_next!75671))

(assert (not b_next!75667))

(assert (not b!2669603))

(assert (not b!2669606))

(assert (not b!2669607))

(assert (not b!2669601))

(assert (not b!2669609))

(assert (not b!2669629))

(assert (not b!2669616))

(assert (not b!2669600))

(assert (not b!2669619))

(assert (not b!2669615))

(assert b_and!196975)

(assert b_and!196971)

(assert (not b!2669605))

(assert (not b!2669613))

(assert (not b_next!75663))

(assert b_and!196967)

(assert b_and!196965)

(assert (not b_next!75669))

(assert (not b!2669617))

(assert (not b_next!75665))

(assert b_and!196969)

(assert b_and!196973)

(assert (not b!2669608))

(assert (not b!2669611))

(assert (not b!2669620))

(assert (not start!259648))

(check-sat)

(pop 1)

(push 1)

(assert b_and!196975)

(assert (not b_next!75661))

(assert (not b_next!75671))

(assert (not b_next!75667))

(assert (not b_next!75665))

(assert b_and!196971)

(assert (not b_next!75663))

(assert b_and!196967)

(assert b_and!196965)

(assert (not b_next!75669))

(assert b_and!196969)

(assert b_and!196973)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!763539 () Bool)

(declare-fun res!1122451 () Bool)

(declare-fun e!1682463 () Bool)

(assert (=> d!763539 (=> (not res!1122451) (not e!1682463))))

(declare-fun rulesValid!1743 (LexerInterface!4273 List!30771) Bool)

(assert (=> d!763539 (= res!1122451 (rulesValid!1743 thiss!14116 rules!1712))))

(assert (=> d!763539 (= (rulesInvariant!3773 thiss!14116 rules!1712) e!1682463)))

(declare-fun b!2669712 () Bool)

(declare-datatypes ((List!30777 0))(
  ( (Nil!30677) (Cons!30677 (h!36097 String!34376) (t!223130 List!30777)) )
))
(declare-fun noDuplicateTag!1739 (LexerInterface!4273 List!30771 List!30777) Bool)

(assert (=> b!2669712 (= e!1682463 (noDuplicateTag!1739 thiss!14116 rules!1712 Nil!30677))))

(assert (= (and d!763539 res!1122451) b!2669712))

(declare-fun m!3036067 () Bool)

(assert (=> d!763539 m!3036067))

(declare-fun m!3036069 () Bool)

(assert (=> b!2669712 m!3036069))

(assert (=> b!2669609 d!763539))

(declare-fun d!763541 () Bool)

(declare-fun res!1122456 () Bool)

(declare-fun e!1682466 () Bool)

(assert (=> d!763541 (=> (not res!1122456) (not e!1682466))))

(declare-fun isEmpty!17550 (List!30770) Bool)

(assert (=> d!763541 (= res!1122456 (not (isEmpty!17550 (originalCharacters!5442 (h!36092 l!4335)))))))

(assert (=> d!763541 (= (inv!41678 (h!36092 l!4335)) e!1682466)))

(declare-fun b!2669717 () Bool)

(declare-fun res!1122457 () Bool)

(assert (=> b!2669717 (=> (not res!1122457) (not e!1682466))))

(declare-fun list!11580 (BalanceConc!18790) List!30770)

(declare-fun dynLambda!13265 (Int TokenValue!4898) BalanceConc!18790)

(assert (=> b!2669717 (= res!1122457 (= (originalCharacters!5442 (h!36092 l!4335)) (list!11580 (dynLambda!13265 (toChars!6473 (transformation!4676 (rule!7082 (h!36092 l!4335)))) (value!150872 (h!36092 l!4335))))))))

(declare-fun b!2669718 () Bool)

(declare-fun size!23736 (List!30770) Int)

(assert (=> b!2669718 (= e!1682466 (= (size!23734 (h!36092 l!4335)) (size!23736 (originalCharacters!5442 (h!36092 l!4335)))))))

(assert (= (and d!763541 res!1122456) b!2669717))

(assert (= (and b!2669717 res!1122457) b!2669718))

(declare-fun b_lambda!81255 () Bool)

(assert (=> (not b_lambda!81255) (not b!2669717)))

(declare-fun t!223089 () Bool)

(declare-fun tb!149577 () Bool)

(assert (=> (and b!2669612 (= (toChars!6473 (transformation!4676 (rule!7082 (h!36092 l!4335)))) (toChars!6473 (transformation!4676 (rule!7082 (h!36092 l!4335))))) t!223089) tb!149577))

(declare-fun b!2669723 () Bool)

(declare-fun e!1682469 () Bool)

(declare-fun tp!843895 () Bool)

(declare-fun inv!41681 (Conc!9588) Bool)

(assert (=> b!2669723 (= e!1682469 (and (inv!41681 (c!430425 (dynLambda!13265 (toChars!6473 (transformation!4676 (rule!7082 (h!36092 l!4335)))) (value!150872 (h!36092 l!4335))))) tp!843895))))

(declare-fun result!184736 () Bool)

(declare-fun inv!41682 (BalanceConc!18790) Bool)

(assert (=> tb!149577 (= result!184736 (and (inv!41682 (dynLambda!13265 (toChars!6473 (transformation!4676 (rule!7082 (h!36092 l!4335)))) (value!150872 (h!36092 l!4335)))) e!1682469))))

(assert (= tb!149577 b!2669723))

(declare-fun m!3036071 () Bool)

(assert (=> b!2669723 m!3036071))

(declare-fun m!3036073 () Bool)

(assert (=> tb!149577 m!3036073))

(assert (=> b!2669717 t!223089))

(declare-fun b_and!196989 () Bool)

(assert (= b_and!196967 (and (=> t!223089 result!184736) b_and!196989)))

(declare-fun tb!149579 () Bool)

(declare-fun t!223091 () Bool)

(assert (=> (and b!2669610 (= (toChars!6473 (transformation!4676 (h!36091 rules!1712))) (toChars!6473 (transformation!4676 (rule!7082 (h!36092 l!4335))))) t!223091) tb!149579))

(declare-fun result!184740 () Bool)

(assert (= result!184740 result!184736))

(assert (=> b!2669717 t!223091))

(declare-fun b_and!196991 () Bool)

(assert (= b_and!196971 (and (=> t!223091 result!184740) b_and!196991)))

(declare-fun t!223093 () Bool)

(declare-fun tb!149581 () Bool)

(assert (=> (and b!2669614 (= (toChars!6473 (transformation!4676 (rule!7082 separatorToken!152))) (toChars!6473 (transformation!4676 (rule!7082 (h!36092 l!4335))))) t!223093) tb!149581))

(declare-fun result!184742 () Bool)

(assert (= result!184742 result!184736))

(assert (=> b!2669717 t!223093))

(declare-fun b_and!196993 () Bool)

(assert (= b_and!196975 (and (=> t!223093 result!184742) b_and!196993)))

(declare-fun m!3036075 () Bool)

(assert (=> d!763541 m!3036075))

(declare-fun m!3036077 () Bool)

(assert (=> b!2669717 m!3036077))

(assert (=> b!2669717 m!3036077))

(declare-fun m!3036079 () Bool)

(assert (=> b!2669717 m!3036079))

(declare-fun m!3036081 () Bool)

(assert (=> b!2669718 m!3036081))

(assert (=> b!2669608 d!763541))

(declare-fun bs!479397 () Bool)

(declare-fun d!763543 () Bool)

(assert (= bs!479397 (and d!763543 b!2669601)))

(declare-fun lambda!99667 () Int)

(assert (=> bs!479397 (not (= lambda!99667 lambda!99655))))

(declare-fun bs!479398 () Bool)

(assert (= bs!479398 (and d!763543 b!2669605)))

(assert (=> bs!479398 (= lambda!99667 lambda!99656)))

(declare-fun b!2669751 () Bool)

(declare-fun e!1682491 () Bool)

(assert (=> b!2669751 (= e!1682491 true)))

(declare-fun b!2669750 () Bool)

(declare-fun e!1682490 () Bool)

(assert (=> b!2669750 (= e!1682490 e!1682491)))

(declare-fun b!2669749 () Bool)

(declare-fun e!1682489 () Bool)

(assert (=> b!2669749 (= e!1682489 e!1682490)))

(assert (=> d!763543 e!1682489))

(assert (= b!2669750 b!2669751))

(assert (= b!2669749 b!2669750))

(assert (= (and d!763543 (is-Cons!30671 rules!1712)) b!2669749))

(assert (=> b!2669751 (< (dynLambda!13259 order!16797 (toValue!6614 (transformation!4676 (h!36091 rules!1712)))) (dynLambda!13260 order!16799 lambda!99667))))

(assert (=> b!2669751 (< (dynLambda!13261 order!16801 (toChars!6473 (transformation!4676 (h!36091 rules!1712)))) (dynLambda!13260 order!16799 lambda!99667))))

(assert (=> d!763543 true))

(declare-fun lt!940431 () Bool)

(assert (=> d!763543 (= lt!940431 (forall!6489 l!4335 lambda!99667))))

(declare-fun e!1682484 () Bool)

(assert (=> d!763543 (= lt!940431 e!1682484)))

(declare-fun res!1122465 () Bool)

(assert (=> d!763543 (=> res!1122465 e!1682484)))

(assert (=> d!763543 (= res!1122465 (not (is-Cons!30672 l!4335)))))

(assert (=> d!763543 (not (isEmpty!17548 rules!1712))))

(assert (=> d!763543 (= (rulesProduceEachTokenIndividuallyList!1495 thiss!14116 rules!1712 l!4335) lt!940431)))

(declare-fun b!2669743 () Bool)

(declare-fun e!1682483 () Bool)

(assert (=> b!2669743 (= e!1682484 e!1682483)))

(declare-fun res!1122466 () Bool)

(assert (=> b!2669743 (=> (not res!1122466) (not e!1682483))))

(assert (=> b!2669743 (= res!1122466 (rulesProduceIndividualToken!1985 thiss!14116 rules!1712 (h!36092 l!4335)))))

(declare-fun b!2669744 () Bool)

(assert (=> b!2669744 (= e!1682483 (rulesProduceEachTokenIndividuallyList!1495 thiss!14116 rules!1712 (t!223081 l!4335)))))

(assert (= (and d!763543 (not res!1122465)) b!2669743))

(assert (= (and b!2669743 res!1122466) b!2669744))

(declare-fun m!3036089 () Bool)

(assert (=> d!763543 m!3036089))

(assert (=> d!763543 m!3036001))

(declare-fun m!3036091 () Bool)

(assert (=> b!2669743 m!3036091))

(assert (=> b!2669744 m!3035991))

(assert (=> b!2669619 d!763543))

(declare-fun d!763549 () Bool)

(declare-fun lt!940437 () Bool)

(declare-fun content!4354 (List!30772) (Set Token!8822))

(assert (=> d!763549 (= lt!940437 (set.member (h!36092 l!4335) (content!4354 l!4335)))))

(declare-fun e!1682499 () Bool)

(assert (=> d!763549 (= lt!940437 e!1682499)))

(declare-fun res!1122477 () Bool)

(assert (=> d!763549 (=> (not res!1122477) (not e!1682499))))

(assert (=> d!763549 (= res!1122477 (is-Cons!30672 l!4335))))

(assert (=> d!763549 (= (contains!5884 l!4335 (h!36092 l!4335)) lt!940437)))

(declare-fun b!2669758 () Bool)

(declare-fun e!1682498 () Bool)

(assert (=> b!2669758 (= e!1682499 e!1682498)))

(declare-fun res!1122478 () Bool)

(assert (=> b!2669758 (=> res!1122478 e!1682498)))

(assert (=> b!2669758 (= res!1122478 (= (h!36092 l!4335) (h!36092 l!4335)))))

(declare-fun b!2669759 () Bool)

(assert (=> b!2669759 (= e!1682498 (contains!5884 (t!223081 l!4335) (h!36092 l!4335)))))

(assert (= (and d!763549 res!1122477) b!2669758))

(assert (= (and b!2669758 (not res!1122478)) b!2669759))

(declare-fun m!3036093 () Bool)

(assert (=> d!763549 m!3036093))

(declare-fun m!3036095 () Bool)

(assert (=> d!763549 m!3036095))

(declare-fun m!3036097 () Bool)

(assert (=> b!2669759 m!3036097))

(assert (=> b!2669606 d!763549))

(declare-fun b!2669775 () Bool)

(declare-fun e!1682512 () Bool)

(declare-fun inv!16 (TokenValue!4898) Bool)

(assert (=> b!2669775 (= e!1682512 (inv!16 (value!150872 separatorToken!152)))))

(declare-fun b!2669776 () Bool)

(declare-fun e!1682511 () Bool)

(declare-fun inv!17 (TokenValue!4898) Bool)

(assert (=> b!2669776 (= e!1682511 (inv!17 (value!150872 separatorToken!152)))))

(declare-fun b!2669777 () Bool)

(declare-fun e!1682513 () Bool)

(declare-fun inv!15 (TokenValue!4898) Bool)

(assert (=> b!2669777 (= e!1682513 (inv!15 (value!150872 separatorToken!152)))))

(declare-fun b!2669779 () Bool)

(declare-fun res!1122483 () Bool)

(assert (=> b!2669779 (=> res!1122483 e!1682513)))

(assert (=> b!2669779 (= res!1122483 (not (is-IntegerValue!14696 (value!150872 separatorToken!152))))))

(assert (=> b!2669779 (= e!1682511 e!1682513)))

(declare-fun b!2669778 () Bool)

(assert (=> b!2669778 (= e!1682512 e!1682511)))

(declare-fun c!430440 () Bool)

(assert (=> b!2669778 (= c!430440 (is-IntegerValue!14695 (value!150872 separatorToken!152)))))

(declare-fun d!763551 () Bool)

(declare-fun c!430439 () Bool)

(assert (=> d!763551 (= c!430439 (is-IntegerValue!14694 (value!150872 separatorToken!152)))))

(assert (=> d!763551 (= (inv!21 (value!150872 separatorToken!152)) e!1682512)))

(assert (= (and d!763551 c!430439) b!2669775))

(assert (= (and d!763551 (not c!430439)) b!2669778))

(assert (= (and b!2669778 c!430440) b!2669776))

(assert (= (and b!2669778 (not c!430440)) b!2669779))

(assert (= (and b!2669779 (not res!1122483)) b!2669777))

(declare-fun m!3036105 () Bool)

(assert (=> b!2669775 m!3036105))

(declare-fun m!3036107 () Bool)

(assert (=> b!2669776 m!3036107))

(declare-fun m!3036109 () Bool)

(assert (=> b!2669777 m!3036109))

(assert (=> b!2669617 d!763551))

(declare-fun d!763555 () Bool)

(declare-fun res!1122490 () Bool)

(declare-fun e!1682522 () Bool)

(assert (=> d!763555 (=> res!1122490 e!1682522)))

(assert (=> d!763555 (= res!1122490 (is-Nil!30672 (t!223081 l!4335)))))

(assert (=> d!763555 (= (forall!6489 (t!223081 l!4335) lambda!99655) e!1682522)))

(declare-fun b!2669790 () Bool)

(declare-fun e!1682523 () Bool)

(assert (=> b!2669790 (= e!1682522 e!1682523)))

(declare-fun res!1122491 () Bool)

(assert (=> b!2669790 (=> (not res!1122491) (not e!1682523))))

(declare-fun dynLambda!13267 (Int Token!8822) Bool)

(assert (=> b!2669790 (= res!1122491 (dynLambda!13267 lambda!99655 (h!36092 (t!223081 l!4335))))))

(declare-fun b!2669791 () Bool)

(assert (=> b!2669791 (= e!1682523 (forall!6489 (t!223081 (t!223081 l!4335)) lambda!99655))))

(assert (= (and d!763555 (not res!1122490)) b!2669790))

(assert (= (and b!2669790 res!1122491) b!2669791))

(declare-fun b_lambda!81259 () Bool)

(assert (=> (not b_lambda!81259) (not b!2669790)))

(declare-fun m!3036123 () Bool)

(assert (=> b!2669790 m!3036123))

(declare-fun m!3036125 () Bool)

(assert (=> b!2669791 m!3036125))

(assert (=> b!2669616 d!763555))

(declare-fun d!763563 () Bool)

(declare-fun lt!940451 () Bool)

(declare-fun e!1682541 () Bool)

(assert (=> d!763563 (= lt!940451 e!1682541)))

(declare-fun res!1122513 () Bool)

(assert (=> d!763563 (=> (not res!1122513) (not e!1682541))))

(declare-datatypes ((IArray!19185 0))(
  ( (IArray!19186 (innerList!9650 List!30772)) )
))
(declare-datatypes ((Conc!9590 0))(
  ( (Node!9590 (left!23720 Conc!9590) (right!24050 Conc!9590) (csize!19410 Int) (cheight!9801 Int)) (Leaf!14669 (xs!12620 IArray!19185) (csize!19411 Int)) (Empty!9590) )
))
(declare-datatypes ((BalanceConc!18794 0))(
  ( (BalanceConc!18795 (c!430445 Conc!9590)) )
))
(declare-fun list!11581 (BalanceConc!18794) List!30772)

(declare-datatypes ((tuple2!30172 0))(
  ( (tuple2!30173 (_1!17628 BalanceConc!18794) (_2!17628 BalanceConc!18790)) )
))
(declare-fun lex!1922 (LexerInterface!4273 List!30771 BalanceConc!18790) tuple2!30172)

(declare-fun print!1660 (LexerInterface!4273 BalanceConc!18794) BalanceConc!18790)

(declare-fun singletonSeq!2079 (Token!8822) BalanceConc!18794)

(assert (=> d!763563 (= res!1122513 (= (list!11581 (_1!17628 (lex!1922 thiss!14116 rules!1712 (print!1660 thiss!14116 (singletonSeq!2079 separatorToken!152))))) (list!11581 (singletonSeq!2079 separatorToken!152))))))

(declare-fun e!1682540 () Bool)

(assert (=> d!763563 (= lt!940451 e!1682540)))

(declare-fun res!1122515 () Bool)

(assert (=> d!763563 (=> (not res!1122515) (not e!1682540))))

(declare-fun lt!940452 () tuple2!30172)

(declare-fun size!23737 (BalanceConc!18794) Int)

(assert (=> d!763563 (= res!1122515 (= (size!23737 (_1!17628 lt!940452)) 1))))

(assert (=> d!763563 (= lt!940452 (lex!1922 thiss!14116 rules!1712 (print!1660 thiss!14116 (singletonSeq!2079 separatorToken!152))))))

(assert (=> d!763563 (not (isEmpty!17548 rules!1712))))

(assert (=> d!763563 (= (rulesProduceIndividualToken!1985 thiss!14116 rules!1712 separatorToken!152) lt!940451)))

(declare-fun b!2669813 () Bool)

(declare-fun res!1122514 () Bool)

(assert (=> b!2669813 (=> (not res!1122514) (not e!1682540))))

(declare-fun apply!7355 (BalanceConc!18794 Int) Token!8822)

(assert (=> b!2669813 (= res!1122514 (= (apply!7355 (_1!17628 lt!940452) 0) separatorToken!152))))

(declare-fun b!2669814 () Bool)

(declare-fun isEmpty!17551 (BalanceConc!18790) Bool)

(assert (=> b!2669814 (= e!1682540 (isEmpty!17551 (_2!17628 lt!940452)))))

(declare-fun b!2669815 () Bool)

(assert (=> b!2669815 (= e!1682541 (isEmpty!17551 (_2!17628 (lex!1922 thiss!14116 rules!1712 (print!1660 thiss!14116 (singletonSeq!2079 separatorToken!152))))))))

(assert (= (and d!763563 res!1122515) b!2669813))

(assert (= (and b!2669813 res!1122514) b!2669814))

(assert (= (and d!763563 res!1122513) b!2669815))

(declare-fun m!3036139 () Bool)

(assert (=> d!763563 m!3036139))

(declare-fun m!3036141 () Bool)

(assert (=> d!763563 m!3036141))

(declare-fun m!3036143 () Bool)

(assert (=> d!763563 m!3036143))

(declare-fun m!3036145 () Bool)

(assert (=> d!763563 m!3036145))

(declare-fun m!3036147 () Bool)

(assert (=> d!763563 m!3036147))

(assert (=> d!763563 m!3036145))

(declare-fun m!3036153 () Bool)

(assert (=> d!763563 m!3036153))

(assert (=> d!763563 m!3036001))

(assert (=> d!763563 m!3036145))

(assert (=> d!763563 m!3036139))

(declare-fun m!3036157 () Bool)

(assert (=> b!2669813 m!3036157))

(declare-fun m!3036159 () Bool)

(assert (=> b!2669814 m!3036159))

(assert (=> b!2669815 m!3036145))

(assert (=> b!2669815 m!3036145))

(assert (=> b!2669815 m!3036139))

(assert (=> b!2669815 m!3036139))

(assert (=> b!2669815 m!3036141))

(declare-fun m!3036163 () Bool)

(assert (=> b!2669815 m!3036163))

(assert (=> b!2669618 d!763563))

(declare-fun d!763569 () Bool)

(assert (=> d!763569 (= (inv!41674 (tag!5178 (rule!7082 (h!36092 l!4335)))) (= (mod (str.len (value!150871 (tag!5178 (rule!7082 (h!36092 l!4335))))) 2) 0))))

(assert (=> b!2669607 d!763569))

(declare-fun d!763571 () Bool)

(declare-fun res!1122526 () Bool)

(declare-fun e!1682552 () Bool)

(assert (=> d!763571 (=> (not res!1122526) (not e!1682552))))

(declare-fun semiInverseModEq!1937 (Int Int) Bool)

(assert (=> d!763571 (= res!1122526 (semiInverseModEq!1937 (toChars!6473 (transformation!4676 (rule!7082 (h!36092 l!4335)))) (toValue!6614 (transformation!4676 (rule!7082 (h!36092 l!4335))))))))

(assert (=> d!763571 (= (inv!41677 (transformation!4676 (rule!7082 (h!36092 l!4335)))) e!1682552)))

(declare-fun b!2669826 () Bool)

(declare-fun equivClasses!1838 (Int Int) Bool)

(assert (=> b!2669826 (= e!1682552 (equivClasses!1838 (toChars!6473 (transformation!4676 (rule!7082 (h!36092 l!4335)))) (toValue!6614 (transformation!4676 (rule!7082 (h!36092 l!4335))))))))

(assert (= (and d!763571 res!1122526) b!2669826))

(declare-fun m!3036169 () Bool)

(assert (=> d!763571 m!3036169))

(declare-fun m!3036171 () Bool)

(assert (=> b!2669826 m!3036171))

(assert (=> b!2669607 d!763571))

(declare-fun d!763575 () Bool)

(assert (=> d!763575 (= (isEmpty!17548 rules!1712) (is-Nil!30671 rules!1712))))

(assert (=> b!2669603 d!763575))

(declare-fun bs!479404 () Bool)

(declare-fun d!763577 () Bool)

(assert (= bs!479404 (and d!763577 b!2669601)))

(declare-fun lambda!99672 () Int)

(assert (=> bs!479404 (not (= lambda!99672 lambda!99655))))

(declare-fun bs!479405 () Bool)

(assert (= bs!479405 (and d!763577 b!2669605)))

(assert (=> bs!479405 (= lambda!99672 lambda!99656)))

(declare-fun bs!479406 () Bool)

(assert (= bs!479406 (and d!763577 d!763543)))

(assert (=> bs!479406 (= lambda!99672 lambda!99667)))

(declare-fun b!2669834 () Bool)

(declare-fun e!1682560 () Bool)

(assert (=> b!2669834 (= e!1682560 true)))

(declare-fun b!2669833 () Bool)

(declare-fun e!1682559 () Bool)

(assert (=> b!2669833 (= e!1682559 e!1682560)))

(declare-fun b!2669832 () Bool)

(declare-fun e!1682558 () Bool)

(assert (=> b!2669832 (= e!1682558 e!1682559)))

(assert (=> d!763577 e!1682558))

(assert (= b!2669833 b!2669834))

(assert (= b!2669832 b!2669833))

(assert (= (and d!763577 (is-Cons!30671 rules!1712)) b!2669832))

(assert (=> b!2669834 (< (dynLambda!13259 order!16797 (toValue!6614 (transformation!4676 (h!36091 rules!1712)))) (dynLambda!13260 order!16799 lambda!99672))))

(assert (=> b!2669834 (< (dynLambda!13261 order!16801 (toChars!6473 (transformation!4676 (h!36091 rules!1712)))) (dynLambda!13260 order!16799 lambda!99672))))

(assert (=> d!763577 true))

(declare-fun lt!940454 () Bool)

(assert (=> d!763577 (= lt!940454 (forall!6489 (t!223081 l!4335) lambda!99672))))

(declare-fun e!1682557 () Bool)

(assert (=> d!763577 (= lt!940454 e!1682557)))

(declare-fun res!1122527 () Bool)

(assert (=> d!763577 (=> res!1122527 e!1682557)))

(assert (=> d!763577 (= res!1122527 (not (is-Cons!30672 (t!223081 l!4335))))))

(assert (=> d!763577 (not (isEmpty!17548 rules!1712))))

(assert (=> d!763577 (= (rulesProduceEachTokenIndividuallyList!1495 thiss!14116 rules!1712 (t!223081 l!4335)) lt!940454)))

(declare-fun b!2669830 () Bool)

(declare-fun e!1682556 () Bool)

(assert (=> b!2669830 (= e!1682557 e!1682556)))

(declare-fun res!1122528 () Bool)

(assert (=> b!2669830 (=> (not res!1122528) (not e!1682556))))

(assert (=> b!2669830 (= res!1122528 (rulesProduceIndividualToken!1985 thiss!14116 rules!1712 (h!36092 (t!223081 l!4335))))))

(declare-fun b!2669831 () Bool)

(assert (=> b!2669831 (= e!1682556 (rulesProduceEachTokenIndividuallyList!1495 thiss!14116 rules!1712 (t!223081 (t!223081 l!4335))))))

(assert (= (and d!763577 (not res!1122527)) b!2669830))

(assert (= (and b!2669830 res!1122528) b!2669831))

(declare-fun m!3036181 () Bool)

(assert (=> d!763577 m!3036181))

(assert (=> d!763577 m!3036001))

(declare-fun m!3036183 () Bool)

(assert (=> b!2669830 m!3036183))

(declare-fun m!3036185 () Bool)

(assert (=> b!2669831 m!3036185))

(assert (=> b!2669605 d!763577))

(declare-fun d!763583 () Bool)

(assert (=> d!763583 (dynLambda!13267 lambda!99656 (h!36092 l!4335))))

(declare-fun lt!940457 () Unit!44896)

(declare-fun choose!15833 (List!30772 Int Token!8822) Unit!44896)

(assert (=> d!763583 (= lt!940457 (choose!15833 l!4335 lambda!99656 (h!36092 l!4335)))))

(declare-fun e!1682567 () Bool)

(assert (=> d!763583 e!1682567))

(declare-fun res!1122535 () Bool)

(assert (=> d!763583 (=> (not res!1122535) (not e!1682567))))

(assert (=> d!763583 (= res!1122535 (forall!6489 l!4335 lambda!99656))))

(assert (=> d!763583 (= (forallContained!1018 l!4335 lambda!99656 (h!36092 l!4335)) lt!940457)))

(declare-fun b!2669841 () Bool)

(assert (=> b!2669841 (= e!1682567 (contains!5884 l!4335 (h!36092 l!4335)))))

(assert (= (and d!763583 res!1122535) b!2669841))

(declare-fun b_lambda!81265 () Bool)

(assert (=> (not b_lambda!81265) (not d!763583)))

(declare-fun m!3036187 () Bool)

(assert (=> d!763583 m!3036187))

(declare-fun m!3036189 () Bool)

(assert (=> d!763583 m!3036189))

(declare-fun m!3036191 () Bool)

(assert (=> d!763583 m!3036191))

(assert (=> b!2669841 m!3036023))

(assert (=> b!2669605 d!763583))

(declare-fun d!763587 () Bool)

(declare-fun res!1122537 () Bool)

(declare-fun e!1682569 () Bool)

(assert (=> d!763587 (=> (not res!1122537) (not e!1682569))))

(assert (=> d!763587 (= res!1122537 (not (isEmpty!17550 (originalCharacters!5442 separatorToken!152))))))

(assert (=> d!763587 (= (inv!41678 separatorToken!152) e!1682569)))

(declare-fun b!2669843 () Bool)

(declare-fun res!1122538 () Bool)

(assert (=> b!2669843 (=> (not res!1122538) (not e!1682569))))

(assert (=> b!2669843 (= res!1122538 (= (originalCharacters!5442 separatorToken!152) (list!11580 (dynLambda!13265 (toChars!6473 (transformation!4676 (rule!7082 separatorToken!152))) (value!150872 separatorToken!152)))))))

(declare-fun b!2669844 () Bool)

(assert (=> b!2669844 (= e!1682569 (= (size!23734 separatorToken!152) (size!23736 (originalCharacters!5442 separatorToken!152))))))

(assert (= (and d!763587 res!1122537) b!2669843))

(assert (= (and b!2669843 res!1122538) b!2669844))

(declare-fun b_lambda!81267 () Bool)

(assert (=> (not b_lambda!81267) (not b!2669843)))

(declare-fun tb!149583 () Bool)

(declare-fun t!223101 () Bool)

(assert (=> (and b!2669612 (= (toChars!6473 (transformation!4676 (rule!7082 (h!36092 l!4335)))) (toChars!6473 (transformation!4676 (rule!7082 separatorToken!152)))) t!223101) tb!149583))

(declare-fun b!2669846 () Bool)

(declare-fun e!1682571 () Bool)

(declare-fun tp!843896 () Bool)

(assert (=> b!2669846 (= e!1682571 (and (inv!41681 (c!430425 (dynLambda!13265 (toChars!6473 (transformation!4676 (rule!7082 separatorToken!152))) (value!150872 separatorToken!152)))) tp!843896))))

(declare-fun result!184744 () Bool)

(assert (=> tb!149583 (= result!184744 (and (inv!41682 (dynLambda!13265 (toChars!6473 (transformation!4676 (rule!7082 separatorToken!152))) (value!150872 separatorToken!152))) e!1682571))))

(assert (= tb!149583 b!2669846))

(declare-fun m!3036201 () Bool)

(assert (=> b!2669846 m!3036201))

(declare-fun m!3036203 () Bool)

(assert (=> tb!149583 m!3036203))

(assert (=> b!2669843 t!223101))

(declare-fun b_and!196995 () Bool)

(assert (= b_and!196989 (and (=> t!223101 result!184744) b_and!196995)))

(declare-fun t!223103 () Bool)

(declare-fun tb!149585 () Bool)

(assert (=> (and b!2669610 (= (toChars!6473 (transformation!4676 (h!36091 rules!1712))) (toChars!6473 (transformation!4676 (rule!7082 separatorToken!152)))) t!223103) tb!149585))

(declare-fun result!184746 () Bool)

(assert (= result!184746 result!184744))

(assert (=> b!2669843 t!223103))

(declare-fun b_and!196997 () Bool)

(assert (= b_and!196991 (and (=> t!223103 result!184746) b_and!196997)))

(declare-fun t!223105 () Bool)

(declare-fun tb!149587 () Bool)

(assert (=> (and b!2669614 (= (toChars!6473 (transformation!4676 (rule!7082 separatorToken!152))) (toChars!6473 (transformation!4676 (rule!7082 separatorToken!152)))) t!223105) tb!149587))

(declare-fun result!184748 () Bool)

(assert (= result!184748 result!184744))

(assert (=> b!2669843 t!223105))

(declare-fun b_and!196999 () Bool)

(assert (= b_and!196993 (and (=> t!223105 result!184748) b_and!196999)))

(declare-fun m!3036205 () Bool)

(assert (=> d!763587 m!3036205))

(declare-fun m!3036207 () Bool)

(assert (=> b!2669843 m!3036207))

(assert (=> b!2669843 m!3036207))

(declare-fun m!3036209 () Bool)

(assert (=> b!2669843 m!3036209))

(declare-fun m!3036211 () Bool)

(assert (=> b!2669844 m!3036211))

(assert (=> start!259648 d!763587))

(declare-fun d!763595 () Bool)

(assert (=> d!763595 (= (inv!41674 (tag!5178 (h!36091 rules!1712))) (= (mod (str.len (value!150871 (tag!5178 (h!36091 rules!1712)))) 2) 0))))

(assert (=> b!2669615 d!763595))

(declare-fun d!763597 () Bool)

(declare-fun res!1122540 () Bool)

(declare-fun e!1682572 () Bool)

(assert (=> d!763597 (=> (not res!1122540) (not e!1682572))))

(assert (=> d!763597 (= res!1122540 (semiInverseModEq!1937 (toChars!6473 (transformation!4676 (h!36091 rules!1712))) (toValue!6614 (transformation!4676 (h!36091 rules!1712)))))))

(assert (=> d!763597 (= (inv!41677 (transformation!4676 (h!36091 rules!1712))) e!1682572)))

(declare-fun b!2669847 () Bool)

(assert (=> b!2669847 (= e!1682572 (equivClasses!1838 (toChars!6473 (transformation!4676 (h!36091 rules!1712))) (toValue!6614 (transformation!4676 (h!36091 rules!1712)))))))

(assert (= (and d!763597 res!1122540) b!2669847))

(declare-fun m!3036213 () Bool)

(assert (=> d!763597 m!3036213))

(declare-fun m!3036215 () Bool)

(assert (=> b!2669847 m!3036215))

(assert (=> b!2669615 d!763597))

(declare-fun d!763599 () Bool)

(declare-fun res!1122541 () Bool)

(declare-fun e!1682573 () Bool)

(assert (=> d!763599 (=> res!1122541 e!1682573)))

(assert (=> d!763599 (= res!1122541 (is-Nil!30672 l!4335))))

(assert (=> d!763599 (= (forall!6489 l!4335 lambda!99655) e!1682573)))

(declare-fun b!2669848 () Bool)

(declare-fun e!1682574 () Bool)

(assert (=> b!2669848 (= e!1682573 e!1682574)))

(declare-fun res!1122542 () Bool)

(assert (=> b!2669848 (=> (not res!1122542) (not e!1682574))))

(assert (=> b!2669848 (= res!1122542 (dynLambda!13267 lambda!99655 (h!36092 l!4335)))))

(declare-fun b!2669849 () Bool)

(assert (=> b!2669849 (= e!1682574 (forall!6489 (t!223081 l!4335) lambda!99655))))

(assert (= (and d!763599 (not res!1122541)) b!2669848))

(assert (= (and b!2669848 res!1122542) b!2669849))

(declare-fun b_lambda!81269 () Bool)

(assert (=> (not b_lambda!81269) (not b!2669848)))

(declare-fun m!3036217 () Bool)

(assert (=> b!2669848 m!3036217))

(assert (=> b!2669849 m!3036025))

(assert (=> b!2669601 d!763599))

(declare-fun d!763601 () Bool)

(declare-fun res!1122553 () Bool)

(declare-fun e!1682585 () Bool)

(assert (=> d!763601 (=> res!1122553 e!1682585)))

(assert (=> d!763601 (= res!1122553 (not (is-Cons!30671 rules!1712)))))

(assert (=> d!763601 (= (sepAndNonSepRulesDisjointChars!1249 rules!1712 rules!1712) e!1682585)))

(declare-fun b!2669865 () Bool)

(declare-fun e!1682586 () Bool)

(assert (=> b!2669865 (= e!1682585 e!1682586)))

(declare-fun res!1122554 () Bool)

(assert (=> b!2669865 (=> (not res!1122554) (not e!1682586))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!545 (Rule!9152 List!30771) Bool)

(assert (=> b!2669865 (= res!1122554 (ruleDisjointCharsFromAllFromOtherType!545 (h!36091 rules!1712) rules!1712))))

(declare-fun b!2669866 () Bool)

(assert (=> b!2669866 (= e!1682586 (sepAndNonSepRulesDisjointChars!1249 rules!1712 (t!223080 rules!1712)))))

(assert (= (and d!763601 (not res!1122553)) b!2669865))

(assert (= (and b!2669865 res!1122554) b!2669866))

(declare-fun m!3036223 () Bool)

(assert (=> b!2669865 m!3036223))

(declare-fun m!3036225 () Bool)

(assert (=> b!2669866 m!3036225))

(assert (=> b!2669600 d!763601))

(declare-fun b!2669867 () Bool)

(declare-fun e!1682588 () Bool)

(assert (=> b!2669867 (= e!1682588 (inv!16 (value!150872 (h!36092 l!4335))))))

(declare-fun b!2669868 () Bool)

(declare-fun e!1682587 () Bool)

(assert (=> b!2669868 (= e!1682587 (inv!17 (value!150872 (h!36092 l!4335))))))

(declare-fun b!2669869 () Bool)

(declare-fun e!1682589 () Bool)

(assert (=> b!2669869 (= e!1682589 (inv!15 (value!150872 (h!36092 l!4335))))))

(declare-fun b!2669871 () Bool)

(declare-fun res!1122555 () Bool)

(assert (=> b!2669871 (=> res!1122555 e!1682589)))

(assert (=> b!2669871 (= res!1122555 (not (is-IntegerValue!14696 (value!150872 (h!36092 l!4335)))))))

(assert (=> b!2669871 (= e!1682587 e!1682589)))

(declare-fun b!2669870 () Bool)

(assert (=> b!2669870 (= e!1682588 e!1682587)))

(declare-fun c!430444 () Bool)

(assert (=> b!2669870 (= c!430444 (is-IntegerValue!14695 (value!150872 (h!36092 l!4335))))))

(declare-fun d!763603 () Bool)

(declare-fun c!430443 () Bool)

(assert (=> d!763603 (= c!430443 (is-IntegerValue!14694 (value!150872 (h!36092 l!4335))))))

(assert (=> d!763603 (= (inv!21 (value!150872 (h!36092 l!4335))) e!1682588)))

(assert (= (and d!763603 c!430443) b!2669867))

(assert (= (and d!763603 (not c!430443)) b!2669870))

(assert (= (and b!2669870 c!430444) b!2669868))

(assert (= (and b!2669870 (not c!430444)) b!2669871))

(assert (= (and b!2669871 (not res!1122555)) b!2669869))

(declare-fun m!3036235 () Bool)

(assert (=> b!2669867 m!3036235))

(declare-fun m!3036237 () Bool)

(assert (=> b!2669868 m!3036237))

(declare-fun m!3036239 () Bool)

(assert (=> b!2669869 m!3036239))

(assert (=> b!2669611 d!763603))

(declare-fun d!763607 () Bool)

(assert (=> d!763607 (= (inv!41674 (tag!5178 (rule!7082 separatorToken!152))) (= (mod (str.len (value!150871 (tag!5178 (rule!7082 separatorToken!152)))) 2) 0))))

(assert (=> b!2669613 d!763607))

(declare-fun d!763609 () Bool)

(declare-fun res!1122556 () Bool)

(declare-fun e!1682590 () Bool)

(assert (=> d!763609 (=> (not res!1122556) (not e!1682590))))

(assert (=> d!763609 (= res!1122556 (semiInverseModEq!1937 (toChars!6473 (transformation!4676 (rule!7082 separatorToken!152))) (toValue!6614 (transformation!4676 (rule!7082 separatorToken!152)))))))

(assert (=> d!763609 (= (inv!41677 (transformation!4676 (rule!7082 separatorToken!152))) e!1682590)))

(declare-fun b!2669872 () Bool)

(assert (=> b!2669872 (= e!1682590 (equivClasses!1838 (toChars!6473 (transformation!4676 (rule!7082 separatorToken!152))) (toValue!6614 (transformation!4676 (rule!7082 separatorToken!152)))))))

(assert (= (and d!763609 res!1122556) b!2669872))

(declare-fun m!3036241 () Bool)

(assert (=> d!763609 m!3036241))

(declare-fun m!3036243 () Bool)

(assert (=> b!2669872 m!3036243))

(assert (=> b!2669613 d!763609))

(declare-fun b!2669894 () Bool)

(declare-fun b_free!74981 () Bool)

(declare-fun b_next!75685 () Bool)

(assert (=> b!2669894 (= b_free!74981 (not b_next!75685))))

(declare-fun tp!843911 () Bool)

(declare-fun b_and!197007 () Bool)

(assert (=> b!2669894 (= tp!843911 b_and!197007)))

(declare-fun b_free!74983 () Bool)

(declare-fun b_next!75687 () Bool)

(assert (=> b!2669894 (= b_free!74983 (not b_next!75687))))

(declare-fun t!223115 () Bool)

(declare-fun tb!149597 () Bool)

(assert (=> (and b!2669894 (= (toChars!6473 (transformation!4676 (rule!7082 (h!36092 (t!223081 l!4335))))) (toChars!6473 (transformation!4676 (rule!7082 (h!36092 l!4335))))) t!223115) tb!149597))

(declare-fun result!184762 () Bool)

(assert (= result!184762 result!184736))

(assert (=> b!2669717 t!223115))

(declare-fun t!223117 () Bool)

(declare-fun tb!149599 () Bool)

(assert (=> (and b!2669894 (= (toChars!6473 (transformation!4676 (rule!7082 (h!36092 (t!223081 l!4335))))) (toChars!6473 (transformation!4676 (rule!7082 separatorToken!152)))) t!223117) tb!149599))

(declare-fun result!184764 () Bool)

(assert (= result!184764 result!184744))

(assert (=> b!2669843 t!223117))

(declare-fun b_and!197009 () Bool)

(declare-fun tp!843912 () Bool)

(assert (=> b!2669894 (= tp!843912 (and (=> t!223115 result!184762) (=> t!223117 result!184764) b_and!197009))))

(declare-fun e!1682610 () Bool)

(assert (=> b!2669608 (= tp!843849 e!1682610)))

(declare-fun tp!843910 () Bool)

(declare-fun e!1682613 () Bool)

(declare-fun b!2669893 () Bool)

(declare-fun e!1682614 () Bool)

(assert (=> b!2669893 (= e!1682614 (and tp!843910 (inv!41674 (tag!5178 (rule!7082 (h!36092 (t!223081 l!4335))))) (inv!41677 (transformation!4676 (rule!7082 (h!36092 (t!223081 l!4335))))) e!1682613))))

(declare-fun tp!843913 () Bool)

(declare-fun e!1682611 () Bool)

(declare-fun b!2669892 () Bool)

(assert (=> b!2669892 (= e!1682611 (and (inv!21 (value!150872 (h!36092 (t!223081 l!4335)))) e!1682614 tp!843913))))

(declare-fun tp!843914 () Bool)

(declare-fun b!2669891 () Bool)

(assert (=> b!2669891 (= e!1682610 (and (inv!41678 (h!36092 (t!223081 l!4335))) e!1682611 tp!843914))))

(assert (=> b!2669894 (= e!1682613 (and tp!843911 tp!843912))))

(assert (= b!2669893 b!2669894))

(assert (= b!2669892 b!2669893))

(assert (= b!2669891 b!2669892))

(assert (= (and b!2669608 (is-Cons!30672 (t!223081 l!4335))) b!2669891))

(declare-fun m!3036263 () Bool)

(assert (=> b!2669893 m!3036263))

(declare-fun m!3036265 () Bool)

(assert (=> b!2669893 m!3036265))

(declare-fun m!3036267 () Bool)

(assert (=> b!2669892 m!3036267))

(declare-fun m!3036269 () Bool)

(assert (=> b!2669891 m!3036269))

(declare-fun b!2669908 () Bool)

(declare-fun b_free!74985 () Bool)

(declare-fun b_next!75689 () Bool)

(assert (=> b!2669908 (= b_free!74985 (not b_next!75689))))

(declare-fun tp!843924 () Bool)

(declare-fun b_and!197017 () Bool)

(assert (=> b!2669908 (= tp!843924 b_and!197017)))

(declare-fun b_free!74987 () Bool)

(declare-fun b_next!75691 () Bool)

(assert (=> b!2669908 (= b_free!74987 (not b_next!75691))))

(declare-fun t!223123 () Bool)

(declare-fun tb!149605 () Bool)

(assert (=> (and b!2669908 (= (toChars!6473 (transformation!4676 (h!36091 (t!223080 rules!1712)))) (toChars!6473 (transformation!4676 (rule!7082 (h!36092 l!4335))))) t!223123) tb!149605))

(declare-fun result!184772 () Bool)

(assert (= result!184772 result!184736))

(assert (=> b!2669717 t!223123))

(declare-fun tb!149607 () Bool)

(declare-fun t!223125 () Bool)

(assert (=> (and b!2669908 (= (toChars!6473 (transformation!4676 (h!36091 (t!223080 rules!1712)))) (toChars!6473 (transformation!4676 (rule!7082 separatorToken!152)))) t!223125) tb!149607))

(declare-fun result!184774 () Bool)

(assert (= result!184774 result!184744))

(assert (=> b!2669843 t!223125))

(declare-fun tp!843926 () Bool)

(declare-fun b_and!197019 () Bool)

(assert (=> b!2669908 (= tp!843926 (and (=> t!223123 result!184772) (=> t!223125 result!184774) b_and!197019))))

(declare-fun e!1682628 () Bool)

(assert (=> b!2669908 (= e!1682628 (and tp!843924 tp!843926))))

(declare-fun tp!843927 () Bool)

(declare-fun e!1682629 () Bool)

(declare-fun b!2669907 () Bool)

(assert (=> b!2669907 (= e!1682629 (and tp!843927 (inv!41674 (tag!5178 (h!36091 (t!223080 rules!1712)))) (inv!41677 (transformation!4676 (h!36091 (t!223080 rules!1712)))) e!1682628))))

(declare-fun b!2669906 () Bool)

(declare-fun e!1682627 () Bool)

(declare-fun tp!843925 () Bool)

(assert (=> b!2669906 (= e!1682627 (and e!1682629 tp!843925))))

(assert (=> b!2669620 (= tp!843852 e!1682627)))

(assert (= b!2669907 b!2669908))

(assert (= b!2669906 b!2669907))

(assert (= (and b!2669620 (is-Cons!30671 (t!223080 rules!1712))) b!2669906))

(declare-fun m!3036273 () Bool)

(assert (=> b!2669907 m!3036273))

(declare-fun m!3036277 () Bool)

(assert (=> b!2669907 m!3036277))

(declare-fun b!2669915 () Bool)

(declare-fun e!1682635 () Bool)

(declare-fun tp_is_empty!13803 () Bool)

(declare-fun tp!843930 () Bool)

(assert (=> b!2669915 (= e!1682635 (and tp_is_empty!13803 tp!843930))))

(assert (=> b!2669617 (= tp!843841 e!1682635)))

(assert (= (and b!2669617 (is-Cons!30670 (originalCharacters!5442 separatorToken!152))) b!2669915))

(declare-fun b!2669939 () Bool)

(declare-fun e!1682645 () Bool)

(declare-fun tp!843946 () Bool)

(assert (=> b!2669939 (= e!1682645 tp!843946)))

(declare-fun b!2669938 () Bool)

(declare-fun tp!843947 () Bool)

(declare-fun tp!843944 () Bool)

(assert (=> b!2669938 (= e!1682645 (and tp!843947 tp!843944))))

(declare-fun b!2669940 () Bool)

(declare-fun tp!843945 () Bool)

(declare-fun tp!843948 () Bool)

(assert (=> b!2669940 (= e!1682645 (and tp!843945 tp!843948))))

(assert (=> b!2669607 (= tp!843846 e!1682645)))

(declare-fun b!2669937 () Bool)

(assert (=> b!2669937 (= e!1682645 tp_is_empty!13803)))

(assert (= (and b!2669607 (is-ElementMatch!7820 (regex!4676 (rule!7082 (h!36092 l!4335))))) b!2669937))

(assert (= (and b!2669607 (is-Concat!12719 (regex!4676 (rule!7082 (h!36092 l!4335))))) b!2669938))

(assert (= (and b!2669607 (is-Star!7820 (regex!4676 (rule!7082 (h!36092 l!4335))))) b!2669939))

(assert (= (and b!2669607 (is-Union!7820 (regex!4676 (rule!7082 (h!36092 l!4335))))) b!2669940))

(declare-fun b!2669943 () Bool)

(declare-fun e!1682648 () Bool)

(declare-fun tp!843953 () Bool)

(assert (=> b!2669943 (= e!1682648 tp!843953)))

(declare-fun b!2669942 () Bool)

(declare-fun tp!843954 () Bool)

(declare-fun tp!843951 () Bool)

(assert (=> b!2669942 (= e!1682648 (and tp!843954 tp!843951))))

(declare-fun b!2669944 () Bool)

(declare-fun tp!843952 () Bool)

(declare-fun tp!843955 () Bool)

(assert (=> b!2669944 (= e!1682648 (and tp!843952 tp!843955))))

(assert (=> b!2669615 (= tp!843853 e!1682648)))

(declare-fun b!2669941 () Bool)

(assert (=> b!2669941 (= e!1682648 tp_is_empty!13803)))

(assert (= (and b!2669615 (is-ElementMatch!7820 (regex!4676 (h!36091 rules!1712)))) b!2669941))

(assert (= (and b!2669615 (is-Concat!12719 (regex!4676 (h!36091 rules!1712)))) b!2669942))

(assert (= (and b!2669615 (is-Star!7820 (regex!4676 (h!36091 rules!1712)))) b!2669943))

(assert (= (and b!2669615 (is-Union!7820 (regex!4676 (h!36091 rules!1712)))) b!2669944))

(declare-fun b!2669949 () Bool)

(declare-fun e!1682653 () Bool)

(assert (=> b!2669949 (= e!1682653 true)))

(declare-fun b!2669948 () Bool)

(declare-fun e!1682652 () Bool)

(assert (=> b!2669948 (= e!1682652 e!1682653)))

(declare-fun b!2669947 () Bool)

(declare-fun e!1682651 () Bool)

(assert (=> b!2669947 (= e!1682651 e!1682652)))

(assert (=> b!2669629 e!1682651))

(assert (= b!2669948 b!2669949))

(assert (= b!2669947 b!2669948))

(assert (= (and b!2669629 (is-Cons!30671 (t!223080 rules!1712))) b!2669947))

(assert (=> b!2669949 (< (dynLambda!13259 order!16797 (toValue!6614 (transformation!4676 (h!36091 (t!223080 rules!1712))))) (dynLambda!13260 order!16799 lambda!99656))))

(assert (=> b!2669949 (< (dynLambda!13261 order!16801 (toChars!6473 (transformation!4676 (h!36091 (t!223080 rules!1712))))) (dynLambda!13260 order!16799 lambda!99656))))

(declare-fun b!2669950 () Bool)

(declare-fun e!1682654 () Bool)

(declare-fun tp!843962 () Bool)

(assert (=> b!2669950 (= e!1682654 (and tp_is_empty!13803 tp!843962))))

(assert (=> b!2669611 (= tp!843847 e!1682654)))

(assert (= (and b!2669611 (is-Cons!30670 (originalCharacters!5442 (h!36092 l!4335)))) b!2669950))

(declare-fun b!2669953 () Bool)

(declare-fun e!1682655 () Bool)

(declare-fun tp!843965 () Bool)

(assert (=> b!2669953 (= e!1682655 tp!843965)))

(declare-fun b!2669952 () Bool)

(declare-fun tp!843966 () Bool)

(declare-fun tp!843963 () Bool)

(assert (=> b!2669952 (= e!1682655 (and tp!843966 tp!843963))))

(declare-fun b!2669954 () Bool)

(declare-fun tp!843964 () Bool)

(declare-fun tp!843967 () Bool)

(assert (=> b!2669954 (= e!1682655 (and tp!843964 tp!843967))))

(assert (=> b!2669613 (= tp!843850 e!1682655)))

(declare-fun b!2669951 () Bool)

(assert (=> b!2669951 (= e!1682655 tp_is_empty!13803)))

(assert (= (and b!2669613 (is-ElementMatch!7820 (regex!4676 (rule!7082 separatorToken!152)))) b!2669951))

(assert (= (and b!2669613 (is-Concat!12719 (regex!4676 (rule!7082 separatorToken!152)))) b!2669952))

(assert (= (and b!2669613 (is-Star!7820 (regex!4676 (rule!7082 separatorToken!152)))) b!2669953))

(assert (= (and b!2669613 (is-Union!7820 (regex!4676 (rule!7082 separatorToken!152)))) b!2669954))

(declare-fun b_lambda!81275 () Bool)

(assert (= b_lambda!81269 (or b!2669601 b_lambda!81275)))

(declare-fun bs!479407 () Bool)

(declare-fun d!763619 () Bool)

(assert (= bs!479407 (and d!763619 b!2669601)))

(assert (=> bs!479407 (= (dynLambda!13267 lambda!99655 (h!36092 l!4335)) (not (isSeparator!4676 (rule!7082 (h!36092 l!4335)))))))

(assert (=> b!2669848 d!763619))

(declare-fun b_lambda!81277 () Bool)

(assert (= b_lambda!81267 (or (and b!2669610 b_free!74963 (= (toChars!6473 (transformation!4676 (h!36091 rules!1712))) (toChars!6473 (transformation!4676 (rule!7082 separatorToken!152))))) (and b!2669894 b_free!74983 (= (toChars!6473 (transformation!4676 (rule!7082 (h!36092 (t!223081 l!4335))))) (toChars!6473 (transformation!4676 (rule!7082 separatorToken!152))))) (and b!2669614 b_free!74967) (and b!2669612 b_free!74959 (= (toChars!6473 (transformation!4676 (rule!7082 (h!36092 l!4335)))) (toChars!6473 (transformation!4676 (rule!7082 separatorToken!152))))) (and b!2669908 b_free!74987 (= (toChars!6473 (transformation!4676 (h!36091 (t!223080 rules!1712)))) (toChars!6473 (transformation!4676 (rule!7082 separatorToken!152))))) b_lambda!81277)))

(declare-fun b_lambda!81279 () Bool)

(assert (= b_lambda!81259 (or b!2669601 b_lambda!81279)))

(declare-fun bs!479408 () Bool)

(declare-fun d!763621 () Bool)

(assert (= bs!479408 (and d!763621 b!2669601)))

(assert (=> bs!479408 (= (dynLambda!13267 lambda!99655 (h!36092 (t!223081 l!4335))) (not (isSeparator!4676 (rule!7082 (h!36092 (t!223081 l!4335))))))))

(assert (=> b!2669790 d!763621))

(declare-fun b_lambda!81281 () Bool)

(assert (= b_lambda!81265 (or b!2669605 b_lambda!81281)))

(declare-fun bs!479409 () Bool)

(declare-fun d!763623 () Bool)

(assert (= bs!479409 (and d!763623 b!2669605)))

(assert (=> bs!479409 (= (dynLambda!13267 lambda!99656 (h!36092 l!4335)) (rulesProduceIndividualToken!1985 thiss!14116 rules!1712 (h!36092 l!4335)))))

(assert (=> bs!479409 m!3036091))

(assert (=> d!763583 d!763623))

(declare-fun b_lambda!81283 () Bool)

(assert (= b_lambda!81255 (or (and b!2669894 b_free!74983 (= (toChars!6473 (transformation!4676 (rule!7082 (h!36092 (t!223081 l!4335))))) (toChars!6473 (transformation!4676 (rule!7082 (h!36092 l!4335)))))) (and b!2669610 b_free!74963 (= (toChars!6473 (transformation!4676 (h!36091 rules!1712))) (toChars!6473 (transformation!4676 (rule!7082 (h!36092 l!4335)))))) (and b!2669614 b_free!74967 (= (toChars!6473 (transformation!4676 (rule!7082 separatorToken!152))) (toChars!6473 (transformation!4676 (rule!7082 (h!36092 l!4335)))))) (and b!2669612 b_free!74959) (and b!2669908 b_free!74987 (= (toChars!6473 (transformation!4676 (h!36091 (t!223080 rules!1712)))) (toChars!6473 (transformation!4676 (rule!7082 (h!36092 l!4335)))))) b_lambda!81283)))

(push 1)

(assert (not b!2669869))

(assert (not b!2669953))

(assert (not b!2669915))

(assert (not b!2669776))

(assert (not d!763577))

(assert (not bs!479409))

(assert (not b!2669815))

(assert b_and!197019)

(assert (not b!2669872))

(assert (not b!2669865))

(assert (not b!2669743))

(assert (not b!2669906))

(assert (not b!2669867))

(assert (not b_next!75663))

(assert (not b!2669832))

(assert b_and!196965)

(assert (not b_next!75669))

(assert (not b_lambda!81281))

(assert (not b!2669954))

(assert (not d!763549))

(assert (not b!2669950))

(assert (not b!2669712))

(assert (not b_lambda!81277))

(assert (not b_lambda!81275))

(assert b_and!197007)

(assert b_and!196995)

(assert (not d!763609))

(assert (not b_next!75661))

(assert (not b_lambda!81279))

(assert (not b!2669947))

(assert (not b!2669952))

(assert (not b_next!75671))

(assert (not b!2669775))

(assert (not b!2669759))

(assert (not b_next!75667))

(assert (not d!763563))

(assert (not b!2669830))

(assert (not b!2669717))

(assert (not b!2669846))

(assert (not b!2669749))

(assert (not b!2669844))

(assert (not b!2669907))

(assert (not b!2669938))

(assert (not b!2669847))

(assert (not b_next!75665))

(assert (not b!2669944))

(assert (not b!2669868))

(assert (not d!763587))

(assert b_and!196999)

(assert b_and!197017)

(assert (not d!763541))

(assert (not b!2669813))

(assert (not b!2669744))

(assert (not b!2669939))

(assert (not b!2669826))

(assert b_and!196969)

(assert (not b!2669943))

(assert (not b_lambda!81283))

(assert (not tb!149583))

(assert b_and!196973)

(assert (not b!2669866))

(assert (not b_next!75691))

(assert tp_is_empty!13803)

(assert (not b_next!75689))

(assert (not d!763543))

(assert (not b!2669849))

(assert (not b!2669841))

(assert b_and!196997)

(assert (not b!2669892))

(assert (not b!2669843))

(assert (not b_next!75685))

(assert (not b!2669942))

(assert (not b!2669891))

(assert (not b!2669940))

(assert (not d!763571))

(assert b_and!197009)

(assert (not b!2669831))

(assert (not d!763597))

(assert (not b!2669723))

(assert (not b!2669814))

(assert (not b_next!75687))

(assert (not b!2669791))

(assert (not tb!149577))

(assert (not b!2669718))

(assert (not d!763539))

(assert (not d!763583))

(assert (not b!2669777))

(assert (not b!2669893))

(check-sat)

(pop 1)

(push 1)

(assert b_and!197007)

(assert (not b_next!75671))

(assert (not b_next!75667))

(assert (not b_next!75665))

(assert b_and!196999)

(assert b_and!197017)

(assert (not b_next!75691))

(assert (not b_next!75689))

(assert b_and!197009)

(assert (not b_next!75687))

(assert b_and!197019)

(assert (not b_next!75663))

(assert b_and!196965)

(assert (not b_next!75669))

(assert b_and!196995)

(assert (not b_next!75661))

(assert b_and!196969)

(assert b_and!196973)

(assert b_and!196997)

(assert (not b_next!75685))

(check-sat)

(pop 1)

