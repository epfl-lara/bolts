; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127870 () Bool)

(assert start!127870)

(declare-fun b!1402786 () Bool)

(declare-fun b_free!34195 () Bool)

(declare-fun b_next!34899 () Bool)

(assert (=> b!1402786 (= b_free!34195 (not b_next!34899))))

(declare-fun tp!398954 () Bool)

(declare-fun b_and!93923 () Bool)

(assert (=> b!1402786 (= tp!398954 b_and!93923)))

(declare-fun b_free!34197 () Bool)

(declare-fun b_next!34901 () Bool)

(assert (=> b!1402786 (= b_free!34197 (not b_next!34901))))

(declare-fun tp!398952 () Bool)

(declare-fun b_and!93925 () Bool)

(assert (=> b!1402786 (= tp!398952 b_and!93925)))

(declare-fun b!1402767 () Bool)

(declare-fun b_free!34199 () Bool)

(declare-fun b_next!34903 () Bool)

(assert (=> b!1402767 (= b_free!34199 (not b_next!34903))))

(declare-fun tp!398949 () Bool)

(declare-fun b_and!93927 () Bool)

(assert (=> b!1402767 (= tp!398949 b_and!93927)))

(declare-fun b_free!34201 () Bool)

(declare-fun b_next!34905 () Bool)

(assert (=> b!1402767 (= b_free!34201 (not b_next!34905))))

(declare-fun tp!398953 () Bool)

(declare-fun b_and!93929 () Bool)

(assert (=> b!1402767 (= tp!398953 b_and!93929)))

(declare-fun b!1402760 () Bool)

(declare-fun b_free!34203 () Bool)

(declare-fun b_next!34907 () Bool)

(assert (=> b!1402760 (= b_free!34203 (not b_next!34907))))

(declare-fun tp!398945 () Bool)

(declare-fun b_and!93931 () Bool)

(assert (=> b!1402760 (= tp!398945 b_and!93931)))

(declare-fun b_free!34205 () Bool)

(declare-fun b_next!34909 () Bool)

(assert (=> b!1402760 (= b_free!34205 (not b_next!34909))))

(declare-fun tp!398951 () Bool)

(declare-fun b_and!93933 () Bool)

(assert (=> b!1402760 (= tp!398951 b_and!93933)))

(declare-fun b!1402782 () Bool)

(assert (=> b!1402782 true))

(assert (=> b!1402782 true))

(declare-fun b!1402779 () Bool)

(assert (=> b!1402779 true))

(declare-fun b!1402791 () Bool)

(assert (=> b!1402791 true))

(declare-fun bs!338328 () Bool)

(declare-fun b!1402773 () Bool)

(assert (= bs!338328 (and b!1402773 b!1402791)))

(declare-fun lambda!61585 () Int)

(declare-fun lambda!61584 () Int)

(assert (=> bs!338328 (not (= lambda!61585 lambda!61584))))

(assert (=> b!1402773 true))

(declare-fun b!1402758 () Bool)

(declare-fun e!895612 () Bool)

(declare-fun e!895619 () Bool)

(assert (=> b!1402758 (= e!895612 e!895619)))

(declare-fun res!634583 () Bool)

(assert (=> b!1402758 (=> (not res!634583) (not e!895619))))

(declare-datatypes ((C!7860 0))(
  ( (C!7861 (val!4490 Int)) )
))
(declare-datatypes ((List!14328 0))(
  ( (Nil!14262) (Cons!14262 (h!19663 C!7860) (t!122925 List!14328)) )
))
(declare-datatypes ((IArray!9409 0))(
  ( (IArray!9410 (innerList!4762 List!14328)) )
))
(declare-datatypes ((Conc!4702 0))(
  ( (Node!4702 (left!12179 Conc!4702) (right!12509 Conc!4702) (csize!9634 Int) (cheight!4913 Int)) (Leaf!7134 (xs!7429 IArray!9409) (csize!9635 Int)) (Empty!4702) )
))
(declare-datatypes ((BalanceConc!9344 0))(
  ( (BalanceConc!9345 (c!230746 Conc!4702)) )
))
(declare-fun lt!467821 () BalanceConc!9344)

(declare-fun size!11737 (BalanceConc!9344) Int)

(assert (=> b!1402758 (= res!634583 (> (size!11737 lt!467821) 0))))

(declare-datatypes ((List!14329 0))(
  ( (Nil!14263) (Cons!14263 (h!19664 (_ BitVec 16)) (t!122926 List!14329)) )
))
(declare-datatypes ((TokenValue!2561 0))(
  ( (FloatLiteralValue!5122 (text!18372 List!14329)) (TokenValueExt!2560 (__x!8951 Int)) (Broken!12805 (value!80030 List!14329)) (Object!2626) (End!2561) (Def!2561) (Underscore!2561) (Match!2561) (Else!2561) (Error!2561) (Case!2561) (If!2561) (Extends!2561) (Abstract!2561) (Class!2561) (Val!2561) (DelimiterValue!5122 (del!2621 List!14329)) (KeywordValue!2567 (value!80031 List!14329)) (CommentValue!5122 (value!80032 List!14329)) (WhitespaceValue!5122 (value!80033 List!14329)) (IndentationValue!2561 (value!80034 List!14329)) (String!17040) (Int32!2561) (Broken!12806 (value!80035 List!14329)) (Boolean!2562) (Unit!20600) (OperatorValue!2564 (op!2621 List!14329)) (IdentifierValue!5122 (value!80036 List!14329)) (IdentifierValue!5123 (value!80037 List!14329)) (WhitespaceValue!5123 (value!80038 List!14329)) (True!5122) (False!5122) (Broken!12807 (value!80039 List!14329)) (Broken!12808 (value!80040 List!14329)) (True!5123) (RightBrace!2561) (RightBracket!2561) (Colon!2561) (Null!2561) (Comma!2561) (LeftBracket!2561) (False!5123) (LeftBrace!2561) (ImaginaryLiteralValue!2561 (text!18373 List!14329)) (StringLiteralValue!7683 (value!80041 List!14329)) (EOFValue!2561 (value!80042 List!14329)) (IdentValue!2561 (value!80043 List!14329)) (DelimiterValue!5123 (value!80044 List!14329)) (DedentValue!2561 (value!80045 List!14329)) (NewLineValue!2561 (value!80046 List!14329)) (IntegerValue!7683 (value!80047 (_ BitVec 32)) (text!18374 List!14329)) (IntegerValue!7684 (value!80048 Int) (text!18375 List!14329)) (Times!2561) (Or!2561) (Equal!2561) (Minus!2561) (Broken!12809 (value!80049 List!14329)) (And!2561) (Div!2561) (LessEqual!2561) (Mod!2561) (Concat!6346) (Not!2561) (Plus!2561) (SpaceValue!2561 (value!80050 List!14329)) (IntegerValue!7685 (value!80051 Int) (text!18376 List!14329)) (StringLiteralValue!7684 (text!18377 List!14329)) (FloatLiteralValue!5123 (text!18378 List!14329)) (BytesLiteralValue!2561 (value!80052 List!14329)) (CommentValue!5123 (value!80053 List!14329)) (StringLiteralValue!7685 (value!80054 List!14329)) (ErrorTokenValue!2561 (msg!2622 List!14329)) )
))
(declare-datatypes ((String!17041 0))(
  ( (String!17042 (value!80055 String)) )
))
(declare-datatypes ((Regex!3785 0))(
  ( (ElementMatch!3785 (c!230747 C!7860)) (Concat!6347 (regOne!8082 Regex!3785) (regTwo!8082 Regex!3785)) (EmptyExpr!3785) (Star!3785 (reg!4114 Regex!3785)) (EmptyLang!3785) (Union!3785 (regOne!8083 Regex!3785) (regTwo!8083 Regex!3785)) )
))
(declare-datatypes ((TokenValueInjection!4782 0))(
  ( (TokenValueInjection!4783 (toValue!3762 Int) (toChars!3621 Int)) )
))
(declare-datatypes ((Rule!4742 0))(
  ( (Rule!4743 (regex!2471 Regex!3785) (tag!2733 String!17041) (isSeparator!2471 Bool) (transformation!2471 TokenValueInjection!4782)) )
))
(declare-datatypes ((Token!4604 0))(
  ( (Token!4605 (value!80056 TokenValue!2561) (rule!4234 Rule!4742) (size!11738 Int) (originalCharacters!3333 List!14328)) )
))
(declare-fun t2!34 () Token!4604)

(declare-fun charsOf!1443 (Token!4604) BalanceConc!9344)

(assert (=> b!1402758 (= lt!467821 (charsOf!1443 t2!34))))

(declare-fun b!1402759 () Bool)

(declare-fun res!634597 () Bool)

(declare-fun e!895614 () Bool)

(assert (=> b!1402759 (=> res!634597 e!895614)))

(declare-fun lt!467838 () Regex!3785)

(declare-fun lt!467817 () List!14328)

(declare-fun matchR!1776 (Regex!3785 List!14328) Bool)

(assert (=> b!1402759 (= res!634597 (not (matchR!1776 lt!467838 lt!467817)))))

(declare-fun e!895602 () Bool)

(assert (=> b!1402760 (= e!895602 (and tp!398945 tp!398951))))

(declare-fun b!1402761 () Bool)

(declare-fun e!895610 () Bool)

(assert (=> b!1402761 (= e!895619 e!895610)))

(declare-fun res!634616 () Bool)

(assert (=> b!1402761 (=> (not res!634616) (not e!895610))))

(declare-fun lt!467830 () List!14328)

(declare-fun prefixMatch!294 (Regex!3785 List!14328) Bool)

(assert (=> b!1402761 (= res!634616 (prefixMatch!294 lt!467838 lt!467830))))

(declare-datatypes ((LexerInterface!2166 0))(
  ( (LexerInterfaceExt!2163 (__x!8952 Int)) (Lexer!2164) )
))
(declare-fun thiss!19762 () LexerInterface!2166)

(declare-datatypes ((List!14330 0))(
  ( (Nil!14264) (Cons!14264 (h!19665 Rule!4742) (t!122927 List!14330)) )
))
(declare-fun rules!2550 () List!14330)

(declare-fun rulesRegex!354 (LexerInterface!2166 List!14330) Regex!3785)

(assert (=> b!1402761 (= lt!467838 (rulesRegex!354 thiss!19762 rules!2550))))

(declare-fun lt!467832 () List!14328)

(declare-fun lt!467823 () C!7860)

(declare-fun ++!3710 (List!14328 List!14328) List!14328)

(assert (=> b!1402761 (= lt!467830 (++!3710 lt!467832 (Cons!14262 lt!467823 Nil!14262)))))

(declare-fun apply!3639 (BalanceConc!9344 Int) C!7860)

(assert (=> b!1402761 (= lt!467823 (apply!3639 lt!467821 0))))

(declare-fun lt!467815 () BalanceConc!9344)

(declare-fun list!5565 (BalanceConc!9344) List!14328)

(assert (=> b!1402761 (= lt!467832 (list!5565 lt!467815))))

(declare-fun t1!34 () Token!4604)

(assert (=> b!1402761 (= lt!467815 (charsOf!1443 t1!34))))

(declare-fun b!1402762 () Bool)

(declare-fun res!634606 () Bool)

(declare-fun e!895600 () Bool)

(assert (=> b!1402762 (=> res!634606 e!895600)))

(declare-fun contains!2795 (List!14330 Rule!4742) Bool)

(assert (=> b!1402762 (= res!634606 (not (contains!2795 rules!2550 (rule!4234 t1!34))))))

(declare-fun b!1402763 () Bool)

(declare-fun e!895594 () Bool)

(declare-fun e!895603 () Bool)

(assert (=> b!1402763 (= e!895594 e!895603)))

(declare-fun res!634608 () Bool)

(assert (=> b!1402763 (=> res!634608 e!895603)))

(declare-fun lt!467828 () Bool)

(assert (=> b!1402763 (= res!634608 lt!467828)))

(declare-datatypes ((Unit!20601 0))(
  ( (Unit!20602) )
))
(declare-fun lt!467835 () Unit!20601)

(declare-fun e!895609 () Unit!20601)

(assert (=> b!1402763 (= lt!467835 e!895609)))

(declare-fun c!230744 () Bool)

(assert (=> b!1402763 (= c!230744 lt!467828)))

(declare-fun lt!467819 () C!7860)

(declare-fun contains!2796 (List!14328 C!7860) Bool)

(declare-fun usedCharacters!282 (Regex!3785) List!14328)

(assert (=> b!1402763 (= lt!467828 (not (contains!2796 (usedCharacters!282 (regex!2471 (rule!4234 t1!34))) lt!467819)))))

(declare-fun b!1402764 () Bool)

(declare-fun Unit!20603 () Unit!20601)

(assert (=> b!1402764 (= e!895609 Unit!20603)))

(declare-fun lt!467809 () Unit!20601)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!216 (Regex!3785 List!14328 C!7860) Unit!20601)

(declare-fun head!2601 (List!14328) C!7860)

(assert (=> b!1402764 (= lt!467809 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!216 (regex!2471 (rule!4234 t1!34)) lt!467832 (head!2601 lt!467832)))))

(assert (=> b!1402764 false))

(declare-fun b!1402765 () Bool)

(declare-fun res!634615 () Bool)

(assert (=> b!1402765 (=> (not res!634615) (not e!895612))))

(declare-fun rulesProduceIndividualToken!1135 (LexerInterface!2166 List!14330 Token!4604) Bool)

(assert (=> b!1402765 (= res!634615 (rulesProduceIndividualToken!1135 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1402766 () Bool)

(declare-fun res!634587 () Bool)

(assert (=> b!1402766 (=> res!634587 e!895614)))

(assert (=> b!1402766 (= res!634587 (not (contains!2796 lt!467817 lt!467819)))))

(declare-fun e!895598 () Bool)

(assert (=> b!1402767 (= e!895598 (and tp!398949 tp!398953))))

(declare-fun b!1402768 () Bool)

(declare-fun res!634607 () Bool)

(assert (=> b!1402768 (=> (not res!634607) (not e!895612))))

(assert (=> b!1402768 (= res!634607 (rulesProduceIndividualToken!1135 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1402769 () Bool)

(declare-fun e!895596 () Bool)

(declare-fun tp!398946 () Bool)

(declare-fun e!895601 () Bool)

(declare-fun inv!21 (TokenValue!2561) Bool)

(assert (=> b!1402769 (= e!895596 (and (inv!21 (value!80056 t1!34)) e!895601 tp!398946))))

(declare-fun tp!398948 () Bool)

(declare-fun e!895604 () Bool)

(declare-fun b!1402770 () Bool)

(declare-fun inv!18572 (String!17041) Bool)

(declare-fun inv!18575 (TokenValueInjection!4782) Bool)

(assert (=> b!1402770 (= e!895601 (and tp!398948 (inv!18572 (tag!2733 (rule!4234 t1!34))) (inv!18575 (transformation!2471 (rule!4234 t1!34))) e!895604))))

(declare-fun b!1402771 () Bool)

(declare-fun e!895626 () Bool)

(declare-fun e!895605 () Bool)

(assert (=> b!1402771 (= e!895626 e!895605)))

(declare-fun res!634593 () Bool)

(assert (=> b!1402771 (=> res!634593 e!895605)))

(declare-fun lt!467808 () List!14328)

(declare-datatypes ((tuple2!13886 0))(
  ( (tuple2!13887 (_1!7829 Token!4604) (_2!7829 List!14328)) )
))
(declare-datatypes ((Option!2734 0))(
  ( (None!2733) (Some!2733 (v!21677 tuple2!13886)) )
))
(declare-fun maxPrefix!1140 (LexerInterface!2166 List!14330 List!14328) Option!2734)

(assert (=> b!1402771 (= res!634593 (not (= (maxPrefix!1140 thiss!19762 rules!2550 lt!467808) (Some!2733 (tuple2!13887 t2!34 Nil!14262)))))))

(assert (=> b!1402771 (= lt!467808 (list!5565 lt!467821))))

(declare-fun b!1402772 () Bool)

(declare-fun res!634602 () Bool)

(assert (=> b!1402772 (=> (not res!634602) (not e!895612))))

(declare-fun isEmpty!8676 (List!14330) Bool)

(assert (=> b!1402772 (= res!634602 (not (isEmpty!8676 rules!2550)))))

(assert (=> b!1402773 (= e!895605 e!895594)))

(declare-fun res!634611 () Bool)

(assert (=> b!1402773 (=> res!634611 e!895594)))

(assert (=> b!1402773 (= res!634611 (not (matchR!1776 (regex!2471 (rule!4234 t1!34)) lt!467832)))))

(declare-fun lt!467825 () Unit!20601)

(declare-fun forallContained!666 (List!14330 Int Rule!4742) Unit!20601)

(assert (=> b!1402773 (= lt!467825 (forallContained!666 rules!2550 lambda!61585 (rule!4234 t2!34)))))

(declare-fun lt!467812 () Unit!20601)

(assert (=> b!1402773 (= lt!467812 (forallContained!666 rules!2550 lambda!61585 (rule!4234 t1!34)))))

(declare-fun lt!467824 () Unit!20601)

(declare-fun lt!467813 () Rule!4742)

(assert (=> b!1402773 (= lt!467824 (forallContained!666 rules!2550 lambda!61585 lt!467813))))

(declare-fun b!1402774 () Bool)

(declare-fun e!895623 () Bool)

(declare-fun e!895611 () Bool)

(declare-fun tp!398956 () Bool)

(assert (=> b!1402774 (= e!895623 (and e!895611 tp!398956))))

(declare-fun b!1402775 () Bool)

(declare-fun res!634590 () Bool)

(assert (=> b!1402775 (=> (not res!634590) (not e!895612))))

(declare-fun rulesInvariant!2036 (LexerInterface!2166 List!14330) Bool)

(assert (=> b!1402775 (= res!634590 (rulesInvariant!2036 thiss!19762 rules!2550))))

(declare-fun b!1402776 () Bool)

(declare-fun e!895621 () Bool)

(declare-fun e!895615 () Bool)

(assert (=> b!1402776 (= e!895621 e!895615)))

(declare-fun res!634605 () Bool)

(assert (=> b!1402776 (=> res!634605 e!895615)))

(declare-fun lt!467831 () Regex!3785)

(declare-fun validRegex!1657 (Regex!3785) Bool)

(assert (=> b!1402776 (= res!634605 (not (validRegex!1657 lt!467831)))))

(assert (=> b!1402776 (not (contains!2796 (usedCharacters!282 (regex!2471 lt!467813)) lt!467819))))

(declare-fun lt!467837 () Unit!20601)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!20 (LexerInterface!2166 List!14330 List!14330 Rule!4742 Rule!4742 C!7860) Unit!20601)

(assert (=> b!1402776 (= lt!467837 (lemmaNonSepRuleNotContainsCharContainedInASepRule!20 thiss!19762 rules!2550 rules!2550 lt!467813 (rule!4234 t1!34) lt!467819))))

(declare-fun e!895618 () Bool)

(declare-fun tp!398955 () Bool)

(declare-fun b!1402777 () Bool)

(assert (=> b!1402777 (= e!895618 (and tp!398955 (inv!18572 (tag!2733 (rule!4234 t2!34))) (inv!18575 (transformation!2471 (rule!4234 t2!34))) e!895598))))

(declare-fun b!1402778 () Bool)

(declare-fun Unit!20604 () Unit!20601)

(assert (=> b!1402778 (= e!895609 Unit!20604)))

(declare-fun e!895616 () Bool)

(assert (=> b!1402779 (= e!895614 e!895616)))

(declare-fun res!634601 () Bool)

(assert (=> b!1402779 (=> res!634601 e!895616)))

(declare-fun lambda!61583 () Int)

(declare-fun lambda!61582 () Int)

(declare-datatypes ((List!14331 0))(
  ( (Nil!14265) (Cons!14265 (h!19666 Regex!3785) (t!122928 List!14331)) )
))
(declare-fun exists!586 (List!14331 Int) Bool)

(declare-fun map!3167 (List!14330 Int) List!14331)

(assert (=> b!1402779 (= res!634601 (not (exists!586 (map!3167 rules!2550 lambda!61582) lambda!61583)))))

(declare-fun lt!467822 () List!14331)

(assert (=> b!1402779 (exists!586 lt!467822 lambda!61583)))

(declare-fun lt!467810 () Unit!20601)

(declare-fun matchRGenUnionSpec!196 (Regex!3785 List!14331 List!14328) Unit!20601)

(assert (=> b!1402779 (= lt!467810 (matchRGenUnionSpec!196 lt!467838 lt!467822 lt!467817))))

(assert (=> b!1402779 (= lt!467822 (map!3167 rules!2550 lambda!61582))))

(declare-fun b!1402780 () Bool)

(declare-fun e!895624 () Bool)

(assert (=> b!1402780 (= e!895624 e!895621)))

(declare-fun res!634592 () Bool)

(assert (=> b!1402780 (=> res!634592 e!895621)))

(assert (=> b!1402780 (= res!634592 (or (isSeparator!2471 lt!467813) (not (isSeparator!2471 (rule!4234 t1!34))) (isSeparator!2471 (rule!4234 t2!34))))))

(assert (=> b!1402780 (= (regex!2471 lt!467813) lt!467831)))

(declare-fun b!1402781 () Bool)

(declare-fun res!634599 () Bool)

(assert (=> b!1402781 (=> res!634599 e!895614)))

(assert (=> b!1402781 (= res!634599 (not (contains!2796 lt!467817 lt!467823)))))

(declare-fun e!895617 () Bool)

(assert (=> b!1402782 (= e!895610 (not e!895617))))

(declare-fun res!634588 () Bool)

(assert (=> b!1402782 (=> res!634588 e!895617)))

(declare-fun lambda!61581 () Int)

(declare-fun Exists!935 (Int) Bool)

(assert (=> b!1402782 (= res!634588 (not (Exists!935 lambda!61581)))))

(assert (=> b!1402782 (Exists!935 lambda!61581)))

(declare-fun lt!467820 () Unit!20601)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!253 (Regex!3785 List!14328) Unit!20601)

(assert (=> b!1402782 (= lt!467820 (lemmaPrefixMatchThenExistsStringThatMatches!253 lt!467838 lt!467830))))

(declare-fun b!1402783 () Bool)

(assert (=> b!1402783 (= e!895615 (not (contains!2796 (usedCharacters!282 lt!467831) lt!467819)))))

(declare-fun b!1402784 () Bool)

(declare-fun res!634591 () Bool)

(assert (=> b!1402784 (=> res!634591 e!895594)))

(assert (=> b!1402784 (= res!634591 (not (matchR!1776 (regex!2471 (rule!4234 t2!34)) lt!467808)))))

(declare-fun b!1402785 () Bool)

(declare-fun res!634604 () Bool)

(assert (=> b!1402785 (=> (not res!634604) (not e!895612))))

(assert (=> b!1402785 (= res!634604 (not (= (isSeparator!2471 (rule!4234 t1!34)) (isSeparator!2471 (rule!4234 t2!34)))))))

(assert (=> b!1402786 (= e!895604 (and tp!398954 tp!398952))))

(declare-fun b!1402787 () Bool)

(declare-fun res!634580 () Bool)

(assert (=> b!1402787 (=> res!634580 e!895626)))

(declare-datatypes ((List!14332 0))(
  ( (Nil!14266) (Cons!14266 (h!19667 Token!4604) (t!122929 List!14332)) )
))
(declare-datatypes ((IArray!9411 0))(
  ( (IArray!9412 (innerList!4763 List!14332)) )
))
(declare-datatypes ((Conc!4703 0))(
  ( (Node!4703 (left!12180 Conc!4703) (right!12510 Conc!4703) (csize!9636 Int) (cheight!4914 Int)) (Leaf!7135 (xs!7430 IArray!9411) (csize!9637 Int)) (Empty!4703) )
))
(declare-datatypes ((BalanceConc!9346 0))(
  ( (BalanceConc!9347 (c!230748 Conc!4703)) )
))
(declare-datatypes ((tuple2!13888 0))(
  ( (tuple2!13889 (_1!7830 BalanceConc!9346) (_2!7830 BalanceConc!9344)) )
))
(declare-fun lt!467826 () tuple2!13888)

(declare-fun isEmpty!8677 (BalanceConc!9344) Bool)

(assert (=> b!1402787 (= res!634580 (not (isEmpty!8677 (_2!7830 lt!467826))))))

(declare-fun b!1402788 () Bool)

(declare-fun res!634612 () Bool)

(assert (=> b!1402788 (=> (not res!634612) (not e!895619))))

(declare-fun separableTokensPredicate!449 (LexerInterface!2166 Token!4604 Token!4604 List!14330) Bool)

(assert (=> b!1402788 (= res!634612 (not (separableTokensPredicate!449 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1402789 () Bool)

(declare-fun e!895625 () Bool)

(assert (=> b!1402789 (= e!895625 e!895614)))

(declare-fun res!634586 () Bool)

(assert (=> b!1402789 (=> res!634586 e!895614)))

(assert (=> b!1402789 (= res!634586 (not (contains!2796 lt!467830 lt!467819)))))

(assert (=> b!1402789 (= lt!467819 (apply!3639 lt!467815 0))))

(declare-fun b!1402790 () Bool)

(declare-fun e!895620 () Bool)

(assert (=> b!1402790 (= e!895616 e!895620)))

(declare-fun res!634610 () Bool)

(assert (=> b!1402790 (=> res!634610 e!895620)))

(declare-fun contains!2797 (List!14331 Regex!3785) Bool)

(assert (=> b!1402790 (= res!634610 (not (contains!2797 (map!3167 rules!2550 lambda!61582) lt!467831)))))

(declare-fun getWitness!474 (List!14331 Int) Regex!3785)

(assert (=> b!1402790 (= lt!467831 (getWitness!474 (map!3167 rules!2550 lambda!61582) lambda!61583))))

(declare-fun e!895599 () Bool)

(assert (=> b!1402791 (= e!895620 e!895599)))

(declare-fun res!634594 () Bool)

(assert (=> b!1402791 (=> res!634594 e!895599)))

(declare-fun exists!587 (List!14330 Int) Bool)

(assert (=> b!1402791 (= res!634594 (not (exists!587 rules!2550 lambda!61584)))))

(assert (=> b!1402791 (exists!587 rules!2550 lambda!61584)))

(declare-fun lt!467816 () Unit!20601)

(declare-fun lemmaMapContains!182 (List!14330 Int Regex!3785) Unit!20601)

(assert (=> b!1402791 (= lt!467816 (lemmaMapContains!182 rules!2550 lambda!61582 lt!467831))))

(declare-fun b!1402792 () Bool)

(declare-fun res!634589 () Bool)

(assert (=> b!1402792 (=> (not res!634589) (not e!895619))))

(declare-fun sepAndNonSepRulesDisjointChars!844 (List!14330 List!14330) Bool)

(assert (=> b!1402792 (= res!634589 (sepAndNonSepRulesDisjointChars!844 rules!2550 rules!2550))))

(declare-fun b!1402793 () Bool)

(declare-fun e!895613 () Unit!20601)

(declare-fun Unit!20605 () Unit!20601)

(assert (=> b!1402793 (= e!895613 Unit!20605)))

(declare-fun lt!467814 () Unit!20601)

(assert (=> b!1402793 (= lt!467814 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!216 (regex!2471 (rule!4234 t2!34)) lt!467808 (head!2601 lt!467808)))))

(assert (=> b!1402793 false))

(declare-fun b!1402794 () Bool)

(declare-fun res!634603 () Bool)

(assert (=> b!1402794 (=> res!634603 e!895605)))

(assert (=> b!1402794 (= res!634603 (not (contains!2795 rules!2550 lt!467813)))))

(declare-fun b!1402795 () Bool)

(declare-fun res!634598 () Bool)

(assert (=> b!1402795 (=> res!634598 e!895614)))

(assert (=> b!1402795 (= res!634598 (not (contains!2796 lt!467830 lt!467823)))))

(declare-fun b!1402796 () Bool)

(declare-fun res!634585 () Bool)

(assert (=> b!1402796 (=> res!634585 e!895626)))

(declare-fun lt!467811 () BalanceConc!9344)

(declare-fun lt!467827 () List!14332)

(declare-datatypes ((tuple2!13890 0))(
  ( (tuple2!13891 (_1!7831 List!14332) (_2!7831 List!14328)) )
))
(declare-fun lexList!680 (LexerInterface!2166 List!14330 List!14328) tuple2!13890)

(assert (=> b!1402796 (= res!634585 (not (= (lexList!680 thiss!19762 rules!2550 (list!5565 lt!467811)) (tuple2!13891 lt!467827 Nil!14262))))))

(declare-fun b!1402797 () Bool)

(assert (=> b!1402797 (= e!895603 e!895624)))

(declare-fun res!634581 () Bool)

(assert (=> b!1402797 (=> res!634581 e!895624)))

(declare-fun lt!467834 () Bool)

(assert (=> b!1402797 (= res!634581 lt!467834)))

(declare-fun lt!467833 () Unit!20601)

(assert (=> b!1402797 (= lt!467833 e!895613)))

(declare-fun c!230745 () Bool)

(assert (=> b!1402797 (= c!230745 lt!467834)))

(assert (=> b!1402797 (= lt!467834 (not (contains!2796 (usedCharacters!282 (regex!2471 (rule!4234 t2!34))) lt!467823)))))

(declare-fun b!1402798 () Bool)

(assert (=> b!1402798 (= e!895600 e!895626)))

(declare-fun res!634609 () Bool)

(assert (=> b!1402798 (=> res!634609 e!895626)))

(declare-fun list!5566 (BalanceConc!9346) List!14332)

(assert (=> b!1402798 (= res!634609 (not (= (list!5566 (_1!7830 lt!467826)) lt!467827)))))

(assert (=> b!1402798 (= lt!467827 (Cons!14266 t2!34 Nil!14266))))

(declare-fun lex!991 (LexerInterface!2166 List!14330 BalanceConc!9344) tuple2!13888)

(assert (=> b!1402798 (= lt!467826 (lex!991 thiss!19762 rules!2550 lt!467811))))

(declare-fun print!930 (LexerInterface!2166 BalanceConc!9346) BalanceConc!9344)

(declare-fun singletonSeq!1134 (Token!4604) BalanceConc!9346)

(assert (=> b!1402798 (= lt!467811 (print!930 thiss!19762 (singletonSeq!1134 t2!34)))))

(declare-fun b!1402799 () Bool)

(declare-fun e!895595 () Bool)

(declare-fun tp!398947 () Bool)

(assert (=> b!1402799 (= e!895595 (and (inv!21 (value!80056 t2!34)) e!895618 tp!398947))))

(declare-fun b!1402800 () Bool)

(assert (=> b!1402800 (= e!895617 e!895625)))

(declare-fun res!634582 () Bool)

(assert (=> b!1402800 (=> res!634582 e!895625)))

(declare-fun getSuffix!631 (List!14328 List!14328) List!14328)

(assert (=> b!1402800 (= res!634582 (not (= lt!467817 (++!3710 lt!467830 (getSuffix!631 lt!467817 lt!467830)))))))

(declare-fun pickWitness!238 (Int) List!14328)

(assert (=> b!1402800 (= lt!467817 (pickWitness!238 lambda!61581))))

(declare-fun b!1402801 () Bool)

(declare-fun Unit!20606 () Unit!20601)

(assert (=> b!1402801 (= e!895613 Unit!20606)))

(declare-fun b!1402802 () Bool)

(declare-fun res!634584 () Bool)

(assert (=> b!1402802 (=> res!634584 e!895600)))

(assert (=> b!1402802 (= res!634584 (not (= (maxPrefix!1140 thiss!19762 rules!2550 lt!467832) (Some!2733 (tuple2!13887 t1!34 Nil!14262)))))))

(declare-fun b!1402803 () Bool)

(declare-fun res!634600 () Bool)

(assert (=> b!1402803 (=> res!634600 e!895605)))

(assert (=> b!1402803 (= res!634600 (not (contains!2795 rules!2550 (rule!4234 t2!34))))))

(declare-fun b!1402804 () Bool)

(assert (=> b!1402804 (= e!895599 e!895600)))

(declare-fun res!634614 () Bool)

(assert (=> b!1402804 (=> res!634614 e!895600)))

(declare-fun lt!467829 () tuple2!13888)

(declare-fun lt!467836 () List!14332)

(assert (=> b!1402804 (= res!634614 (not (= (list!5566 (_1!7830 lt!467829)) lt!467836)))))

(assert (=> b!1402804 (= lt!467836 (Cons!14266 t1!34 Nil!14266))))

(declare-fun lt!467818 () BalanceConc!9344)

(assert (=> b!1402804 (= lt!467829 (lex!991 thiss!19762 rules!2550 lt!467818))))

(assert (=> b!1402804 (= lt!467818 (print!930 thiss!19762 (singletonSeq!1134 t1!34)))))

(declare-fun getWitness!475 (List!14330 Int) Rule!4742)

(assert (=> b!1402804 (= lt!467813 (getWitness!475 rules!2550 lambda!61584))))

(declare-fun b!1402805 () Bool)

(declare-fun res!634613 () Bool)

(assert (=> b!1402805 (=> res!634613 e!895600)))

(assert (=> b!1402805 (= res!634613 (not (isEmpty!8677 (_2!7830 lt!467829))))))

(declare-fun b!1402806 () Bool)

(declare-fun res!634595 () Bool)

(assert (=> b!1402806 (=> res!634595 e!895600)))

(assert (=> b!1402806 (= res!634595 (not (= (lexList!680 thiss!19762 rules!2550 (list!5565 lt!467818)) (tuple2!13891 lt!467836 Nil!14262))))))

(declare-fun res!634596 () Bool)

(assert (=> start!127870 (=> (not res!634596) (not e!895612))))

(get-info :version)

(assert (=> start!127870 (= res!634596 ((_ is Lexer!2164) thiss!19762))))

(assert (=> start!127870 e!895612))

(assert (=> start!127870 true))

(assert (=> start!127870 e!895623))

(declare-fun inv!18576 (Token!4604) Bool)

(assert (=> start!127870 (and (inv!18576 t1!34) e!895596)))

(assert (=> start!127870 (and (inv!18576 t2!34) e!895595)))

(declare-fun tp!398950 () Bool)

(declare-fun b!1402807 () Bool)

(assert (=> b!1402807 (= e!895611 (and tp!398950 (inv!18572 (tag!2733 (h!19665 rules!2550))) (inv!18575 (transformation!2471 (h!19665 rules!2550))) e!895602))))

(assert (= (and start!127870 res!634596) b!1402772))

(assert (= (and b!1402772 res!634602) b!1402775))

(assert (= (and b!1402775 res!634590) b!1402768))

(assert (= (and b!1402768 res!634607) b!1402765))

(assert (= (and b!1402765 res!634615) b!1402785))

(assert (= (and b!1402785 res!634604) b!1402758))

(assert (= (and b!1402758 res!634583) b!1402792))

(assert (= (and b!1402792 res!634589) b!1402788))

(assert (= (and b!1402788 res!634612) b!1402761))

(assert (= (and b!1402761 res!634616) b!1402782))

(assert (= (and b!1402782 (not res!634588)) b!1402800))

(assert (= (and b!1402800 (not res!634582)) b!1402789))

(assert (= (and b!1402789 (not res!634586)) b!1402766))

(assert (= (and b!1402766 (not res!634587)) b!1402795))

(assert (= (and b!1402795 (not res!634598)) b!1402781))

(assert (= (and b!1402781 (not res!634599)) b!1402759))

(assert (= (and b!1402759 (not res!634597)) b!1402779))

(assert (= (and b!1402779 (not res!634601)) b!1402790))

(assert (= (and b!1402790 (not res!634610)) b!1402791))

(assert (= (and b!1402791 (not res!634594)) b!1402804))

(assert (= (and b!1402804 (not res!634614)) b!1402805))

(assert (= (and b!1402805 (not res!634613)) b!1402806))

(assert (= (and b!1402806 (not res!634595)) b!1402802))

(assert (= (and b!1402802 (not res!634584)) b!1402762))

(assert (= (and b!1402762 (not res!634606)) b!1402798))

(assert (= (and b!1402798 (not res!634609)) b!1402787))

(assert (= (and b!1402787 (not res!634580)) b!1402796))

(assert (= (and b!1402796 (not res!634585)) b!1402771))

(assert (= (and b!1402771 (not res!634593)) b!1402803))

(assert (= (and b!1402803 (not res!634600)) b!1402794))

(assert (= (and b!1402794 (not res!634603)) b!1402773))

(assert (= (and b!1402773 (not res!634611)) b!1402784))

(assert (= (and b!1402784 (not res!634591)) b!1402763))

(assert (= (and b!1402763 c!230744) b!1402764))

(assert (= (and b!1402763 (not c!230744)) b!1402778))

(assert (= (and b!1402763 (not res!634608)) b!1402797))

(assert (= (and b!1402797 c!230745) b!1402793))

(assert (= (and b!1402797 (not c!230745)) b!1402801))

(assert (= (and b!1402797 (not res!634581)) b!1402780))

(assert (= (and b!1402780 (not res!634592)) b!1402776))

(assert (= (and b!1402776 (not res!634605)) b!1402783))

(assert (= b!1402807 b!1402760))

(assert (= b!1402774 b!1402807))

(assert (= (and start!127870 ((_ is Cons!14264) rules!2550)) b!1402774))

(assert (= b!1402770 b!1402786))

(assert (= b!1402769 b!1402770))

(assert (= start!127870 b!1402769))

(assert (= b!1402777 b!1402767))

(assert (= b!1402799 b!1402777))

(assert (= start!127870 b!1402799))

(declare-fun m!1579941 () Bool)

(assert (=> b!1402773 m!1579941))

(declare-fun m!1579943 () Bool)

(assert (=> b!1402773 m!1579943))

(declare-fun m!1579945 () Bool)

(assert (=> b!1402773 m!1579945))

(declare-fun m!1579947 () Bool)

(assert (=> b!1402773 m!1579947))

(declare-fun m!1579949 () Bool)

(assert (=> b!1402763 m!1579949))

(assert (=> b!1402763 m!1579949))

(declare-fun m!1579951 () Bool)

(assert (=> b!1402763 m!1579951))

(declare-fun m!1579953 () Bool)

(assert (=> b!1402758 m!1579953))

(declare-fun m!1579955 () Bool)

(assert (=> b!1402758 m!1579955))

(declare-fun m!1579957 () Bool)

(assert (=> b!1402759 m!1579957))

(declare-fun m!1579959 () Bool)

(assert (=> b!1402771 m!1579959))

(declare-fun m!1579961 () Bool)

(assert (=> b!1402771 m!1579961))

(declare-fun m!1579963 () Bool)

(assert (=> b!1402772 m!1579963))

(declare-fun m!1579965 () Bool)

(assert (=> b!1402805 m!1579965))

(declare-fun m!1579967 () Bool)

(assert (=> b!1402791 m!1579967))

(assert (=> b!1402791 m!1579967))

(declare-fun m!1579969 () Bool)

(assert (=> b!1402791 m!1579969))

(declare-fun m!1579971 () Bool)

(assert (=> b!1402797 m!1579971))

(assert (=> b!1402797 m!1579971))

(declare-fun m!1579973 () Bool)

(assert (=> b!1402797 m!1579973))

(declare-fun m!1579975 () Bool)

(assert (=> b!1402765 m!1579975))

(declare-fun m!1579977 () Bool)

(assert (=> b!1402777 m!1579977))

(declare-fun m!1579979 () Bool)

(assert (=> b!1402777 m!1579979))

(declare-fun m!1579981 () Bool)

(assert (=> b!1402770 m!1579981))

(declare-fun m!1579983 () Bool)

(assert (=> b!1402770 m!1579983))

(declare-fun m!1579985 () Bool)

(assert (=> b!1402768 m!1579985))

(declare-fun m!1579987 () Bool)

(assert (=> b!1402781 m!1579987))

(declare-fun m!1579989 () Bool)

(assert (=> b!1402804 m!1579989))

(declare-fun m!1579991 () Bool)

(assert (=> b!1402804 m!1579991))

(declare-fun m!1579993 () Bool)

(assert (=> b!1402804 m!1579993))

(declare-fun m!1579995 () Bool)

(assert (=> b!1402804 m!1579995))

(declare-fun m!1579997 () Bool)

(assert (=> b!1402804 m!1579997))

(assert (=> b!1402804 m!1579991))

(declare-fun m!1579999 () Bool)

(assert (=> b!1402796 m!1579999))

(assert (=> b!1402796 m!1579999))

(declare-fun m!1580001 () Bool)

(assert (=> b!1402796 m!1580001))

(declare-fun m!1580003 () Bool)

(assert (=> b!1402784 m!1580003))

(declare-fun m!1580005 () Bool)

(assert (=> b!1402766 m!1580005))

(declare-fun m!1580007 () Bool)

(assert (=> b!1402779 m!1580007))

(declare-fun m!1580009 () Bool)

(assert (=> b!1402779 m!1580009))

(declare-fun m!1580011 () Bool)

(assert (=> b!1402779 m!1580011))

(assert (=> b!1402779 m!1580007))

(declare-fun m!1580013 () Bool)

(assert (=> b!1402779 m!1580013))

(assert (=> b!1402779 m!1580007))

(declare-fun m!1580015 () Bool)

(assert (=> b!1402802 m!1580015))

(declare-fun m!1580017 () Bool)

(assert (=> b!1402803 m!1580017))

(declare-fun m!1580019 () Bool)

(assert (=> b!1402795 m!1580019))

(declare-fun m!1580021 () Bool)

(assert (=> b!1402798 m!1580021))

(declare-fun m!1580023 () Bool)

(assert (=> b!1402798 m!1580023))

(declare-fun m!1580025 () Bool)

(assert (=> b!1402798 m!1580025))

(assert (=> b!1402798 m!1580025))

(declare-fun m!1580027 () Bool)

(assert (=> b!1402798 m!1580027))

(declare-fun m!1580029 () Bool)

(assert (=> b!1402762 m!1580029))

(declare-fun m!1580031 () Bool)

(assert (=> b!1402787 m!1580031))

(declare-fun m!1580033 () Bool)

(assert (=> b!1402783 m!1580033))

(assert (=> b!1402783 m!1580033))

(declare-fun m!1580035 () Bool)

(assert (=> b!1402783 m!1580035))

(declare-fun m!1580037 () Bool)

(assert (=> b!1402764 m!1580037))

(assert (=> b!1402764 m!1580037))

(declare-fun m!1580039 () Bool)

(assert (=> b!1402764 m!1580039))

(declare-fun m!1580041 () Bool)

(assert (=> b!1402775 m!1580041))

(assert (=> b!1402790 m!1580007))

(assert (=> b!1402790 m!1580007))

(declare-fun m!1580043 () Bool)

(assert (=> b!1402790 m!1580043))

(assert (=> b!1402790 m!1580007))

(assert (=> b!1402790 m!1580007))

(declare-fun m!1580045 () Bool)

(assert (=> b!1402790 m!1580045))

(declare-fun m!1580047 () Bool)

(assert (=> b!1402776 m!1580047))

(declare-fun m!1580049 () Bool)

(assert (=> b!1402776 m!1580049))

(assert (=> b!1402776 m!1580049))

(declare-fun m!1580051 () Bool)

(assert (=> b!1402776 m!1580051))

(declare-fun m!1580053 () Bool)

(assert (=> b!1402776 m!1580053))

(declare-fun m!1580055 () Bool)

(assert (=> b!1402782 m!1580055))

(assert (=> b!1402782 m!1580055))

(declare-fun m!1580057 () Bool)

(assert (=> b!1402782 m!1580057))

(declare-fun m!1580059 () Bool)

(assert (=> b!1402793 m!1580059))

(assert (=> b!1402793 m!1580059))

(declare-fun m!1580061 () Bool)

(assert (=> b!1402793 m!1580061))

(declare-fun m!1580063 () Bool)

(assert (=> b!1402769 m!1580063))

(declare-fun m!1580065 () Bool)

(assert (=> b!1402761 m!1580065))

(declare-fun m!1580067 () Bool)

(assert (=> b!1402761 m!1580067))

(declare-fun m!1580069 () Bool)

(assert (=> b!1402761 m!1580069))

(declare-fun m!1580071 () Bool)

(assert (=> b!1402761 m!1580071))

(declare-fun m!1580073 () Bool)

(assert (=> b!1402761 m!1580073))

(declare-fun m!1580075 () Bool)

(assert (=> b!1402761 m!1580075))

(declare-fun m!1580077 () Bool)

(assert (=> b!1402792 m!1580077))

(declare-fun m!1580079 () Bool)

(assert (=> b!1402788 m!1580079))

(declare-fun m!1580081 () Bool)

(assert (=> b!1402806 m!1580081))

(assert (=> b!1402806 m!1580081))

(declare-fun m!1580083 () Bool)

(assert (=> b!1402806 m!1580083))

(declare-fun m!1580085 () Bool)

(assert (=> b!1402800 m!1580085))

(assert (=> b!1402800 m!1580085))

(declare-fun m!1580087 () Bool)

(assert (=> b!1402800 m!1580087))

(declare-fun m!1580089 () Bool)

(assert (=> b!1402800 m!1580089))

(declare-fun m!1580091 () Bool)

(assert (=> start!127870 m!1580091))

(declare-fun m!1580093 () Bool)

(assert (=> start!127870 m!1580093))

(declare-fun m!1580095 () Bool)

(assert (=> b!1402794 m!1580095))

(declare-fun m!1580097 () Bool)

(assert (=> b!1402807 m!1580097))

(declare-fun m!1580099 () Bool)

(assert (=> b!1402807 m!1580099))

(declare-fun m!1580101 () Bool)

(assert (=> b!1402799 m!1580101))

(declare-fun m!1580103 () Bool)

(assert (=> b!1402789 m!1580103))

(declare-fun m!1580105 () Bool)

(assert (=> b!1402789 m!1580105))

(check-sat (not b!1402804) (not b!1402775) (not b!1402791) (not b!1402798) (not b!1402768) b_and!93927 b_and!93923 (not b!1402793) (not b!1402807) (not b!1402763) (not b!1402795) b_and!93929 (not b!1402779) (not b!1402772) (not b!1402799) (not b!1402788) (not b!1402777) (not b!1402802) (not b!1402787) (not b_next!34903) (not b!1402790) (not b!1402789) (not b_next!34901) (not b!1402783) (not b!1402806) (not b!1402762) (not b!1402758) (not start!127870) (not b_next!34907) b_and!93933 b_and!93931 (not b!1402784) (not b!1402765) (not b!1402792) (not b!1402770) (not b!1402766) (not b!1402796) (not b_next!34905) (not b_next!34909) b_and!93925 (not b!1402781) (not b_next!34899) (not b!1402794) (not b!1402774) (not b!1402764) (not b!1402759) (not b!1402800) (not b!1402776) (not b!1402761) (not b!1402773) (not b!1402782) (not b!1402771) (not b!1402797) (not b!1402805) (not b!1402803) (not b!1402769))
(check-sat b_and!93929 (not b_next!34903) (not b_next!34901) (not b_next!34907) b_and!93927 b_and!93923 b_and!93933 b_and!93931 (not b_next!34905) (not b_next!34909) b_and!93925 (not b_next!34899))
