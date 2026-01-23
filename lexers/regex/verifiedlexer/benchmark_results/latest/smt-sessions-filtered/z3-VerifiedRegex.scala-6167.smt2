; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297774 () Bool)

(assert start!297774)

(declare-fun b!3179646 () Bool)

(declare-fun b_free!83777 () Bool)

(declare-fun b_next!84481 () Bool)

(assert (=> b!3179646 (= b_free!83777 (not b_next!84481))))

(declare-fun tp!1005989 () Bool)

(declare-fun b_and!210107 () Bool)

(assert (=> b!3179646 (= tp!1005989 b_and!210107)))

(declare-fun b_free!83779 () Bool)

(declare-fun b_next!84483 () Bool)

(assert (=> b!3179646 (= b_free!83779 (not b_next!84483))))

(declare-fun tp!1005986 () Bool)

(declare-fun b_and!210109 () Bool)

(assert (=> b!3179646 (= tp!1005986 b_and!210109)))

(declare-fun b!3179639 () Bool)

(declare-fun b_free!83781 () Bool)

(declare-fun b_next!84485 () Bool)

(assert (=> b!3179639 (= b_free!83781 (not b_next!84485))))

(declare-fun tp!1005992 () Bool)

(declare-fun b_and!210111 () Bool)

(assert (=> b!3179639 (= tp!1005992 b_and!210111)))

(declare-fun b_free!83783 () Bool)

(declare-fun b_next!84487 () Bool)

(assert (=> b!3179639 (= b_free!83783 (not b_next!84487))))

(declare-fun tp!1005987 () Bool)

(declare-fun b_and!210113 () Bool)

(assert (=> b!3179639 (= tp!1005987 b_and!210113)))

(declare-fun b!3179643 () Bool)

(declare-fun b_free!83785 () Bool)

(declare-fun b_next!84489 () Bool)

(assert (=> b!3179643 (= b_free!83785 (not b_next!84489))))

(declare-fun tp!1005990 () Bool)

(declare-fun b_and!210115 () Bool)

(assert (=> b!3179643 (= tp!1005990 b_and!210115)))

(declare-fun b_free!83787 () Bool)

(declare-fun b_next!84491 () Bool)

(assert (=> b!3179643 (= b_free!83787 (not b_next!84491))))

(declare-fun tp!1005993 () Bool)

(declare-fun b_and!210117 () Bool)

(assert (=> b!3179643 (= tp!1005993 b_and!210117)))

(declare-fun b!3179618 () Bool)

(declare-fun res!1292072 () Bool)

(declare-fun e!1980819 () Bool)

(assert (=> b!3179618 (=> (not res!1292072) (not e!1980819))))

(declare-datatypes ((LexerInterface!4703 0))(
  ( (LexerInterfaceExt!4700 (__x!22905 Int)) (Lexer!4701) )
))
(declare-fun thiss!18206 () LexerInterface!4703)

(declare-datatypes ((C!19932 0))(
  ( (C!19933 (val!12014 Int)) )
))
(declare-datatypes ((Regex!9873 0))(
  ( (ElementMatch!9873 (c!534114 C!19932)) (Concat!15217 (regOne!20258 Regex!9873) (regTwo!20258 Regex!9873)) (EmptyExpr!9873) (Star!9873 (reg!10202 Regex!9873)) (EmptyLang!9873) (Union!9873 (regOne!20259 Regex!9873) (regTwo!20259 Regex!9873)) )
))
(declare-datatypes ((List!35834 0))(
  ( (Nil!35710) (Cons!35710 (h!41130 (_ BitVec 16)) (t!235013 List!35834)) )
))
(declare-datatypes ((TokenValue!5344 0))(
  ( (FloatLiteralValue!10688 (text!37853 List!35834)) (TokenValueExt!5343 (__x!22906 Int)) (Broken!26720 (value!166183 List!35834)) (Object!5467) (End!5344) (Def!5344) (Underscore!5344) (Match!5344) (Else!5344) (Error!5344) (Case!5344) (If!5344) (Extends!5344) (Abstract!5344) (Class!5344) (Val!5344) (DelimiterValue!10688 (del!5404 List!35834)) (KeywordValue!5350 (value!166184 List!35834)) (CommentValue!10688 (value!166185 List!35834)) (WhitespaceValue!10688 (value!166186 List!35834)) (IndentationValue!5344 (value!166187 List!35834)) (String!40053) (Int32!5344) (Broken!26721 (value!166188 List!35834)) (Boolean!5345) (Unit!50123) (OperatorValue!5347 (op!5404 List!35834)) (IdentifierValue!10688 (value!166189 List!35834)) (IdentifierValue!10689 (value!166190 List!35834)) (WhitespaceValue!10689 (value!166191 List!35834)) (True!10688) (False!10688) (Broken!26722 (value!166192 List!35834)) (Broken!26723 (value!166193 List!35834)) (True!10689) (RightBrace!5344) (RightBracket!5344) (Colon!5344) (Null!5344) (Comma!5344) (LeftBracket!5344) (False!10689) (LeftBrace!5344) (ImaginaryLiteralValue!5344 (text!37854 List!35834)) (StringLiteralValue!16032 (value!166194 List!35834)) (EOFValue!5344 (value!166195 List!35834)) (IdentValue!5344 (value!166196 List!35834)) (DelimiterValue!10689 (value!166197 List!35834)) (DedentValue!5344 (value!166198 List!35834)) (NewLineValue!5344 (value!166199 List!35834)) (IntegerValue!16032 (value!166200 (_ BitVec 32)) (text!37855 List!35834)) (IntegerValue!16033 (value!166201 Int) (text!37856 List!35834)) (Times!5344) (Or!5344) (Equal!5344) (Minus!5344) (Broken!26724 (value!166202 List!35834)) (And!5344) (Div!5344) (LessEqual!5344) (Mod!5344) (Concat!15218) (Not!5344) (Plus!5344) (SpaceValue!5344 (value!166203 List!35834)) (IntegerValue!16034 (value!166204 Int) (text!37857 List!35834)) (StringLiteralValue!16033 (text!37858 List!35834)) (FloatLiteralValue!10689 (text!37859 List!35834)) (BytesLiteralValue!5344 (value!166205 List!35834)) (CommentValue!10689 (value!166206 List!35834)) (StringLiteralValue!16034 (value!166207 List!35834)) (ErrorTokenValue!5344 (msg!5405 List!35834)) )
))
(declare-datatypes ((List!35835 0))(
  ( (Nil!35711) (Cons!35711 (h!41131 C!19932) (t!235014 List!35835)) )
))
(declare-datatypes ((IArray!21211 0))(
  ( (IArray!21212 (innerList!10663 List!35835)) )
))
(declare-datatypes ((Conc!10603 0))(
  ( (Node!10603 (left!27774 Conc!10603) (right!28104 Conc!10603) (csize!21436 Int) (cheight!10814 Int)) (Leaf!16771 (xs!13721 IArray!21211) (csize!21437 Int)) (Empty!10603) )
))
(declare-datatypes ((BalanceConc!20820 0))(
  ( (BalanceConc!20821 (c!534115 Conc!10603)) )
))
(declare-datatypes ((String!40054 0))(
  ( (String!40055 (value!166208 String)) )
))
(declare-datatypes ((TokenValueInjection!10116 0))(
  ( (TokenValueInjection!10117 (toValue!7174 Int) (toChars!7033 Int)) )
))
(declare-datatypes ((Rule!10028 0))(
  ( (Rule!10029 (regex!5114 Regex!9873) (tag!5618 String!40054) (isSeparator!5114 Bool) (transformation!5114 TokenValueInjection!10116)) )
))
(declare-datatypes ((List!35836 0))(
  ( (Nil!35712) (Cons!35712 (h!41132 Rule!10028) (t!235015 List!35836)) )
))
(declare-fun rules!2135 () List!35836)

(declare-fun rulesInvariant!4100 (LexerInterface!4703 List!35836) Bool)

(assert (=> b!3179618 (= res!1292072 (rulesInvariant!4100 thiss!18206 rules!2135))))

(declare-fun b!3179619 () Bool)

(declare-fun res!1292068 () Bool)

(declare-fun e!1980809 () Bool)

(assert (=> b!3179619 (=> (not res!1292068) (not e!1980809))))

(declare-datatypes ((Token!9594 0))(
  ( (Token!9595 (value!166209 TokenValue!5344) (rule!7524 Rule!10028) (size!26950 Int) (originalCharacters!5828 List!35835)) )
))
(declare-datatypes ((List!35837 0))(
  ( (Nil!35713) (Cons!35713 (h!41133 Token!9594) (t!235016 List!35837)) )
))
(declare-fun tokens!494 () List!35837)

(get-info :version)

(assert (=> b!3179619 (= res!1292068 (and (not ((_ is Nil!35713) tokens!494)) ((_ is Nil!35713) (t!235016 tokens!494))))))

(declare-fun b!3179620 () Bool)

(declare-fun res!1292075 () Bool)

(assert (=> b!3179620 (=> (not res!1292075) (not e!1980809))))

(declare-fun separatorToken!241 () Token!9594)

(declare-fun rulesProduceIndividualToken!2195 (LexerInterface!4703 List!35836 Token!9594) Bool)

(assert (=> b!3179620 (= res!1292075 (rulesProduceIndividualToken!2195 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3179621 () Bool)

(declare-fun res!1292059 () Bool)

(declare-fun e!1980826 () Bool)

(assert (=> b!3179621 (=> res!1292059 e!1980826)))

(declare-fun lt!1068717 () List!35835)

(declare-fun ++!8534 (List!35835 List!35835) List!35835)

(assert (=> b!3179621 (= res!1292059 (not (= lt!1068717 (++!8534 lt!1068717 Nil!35711))))))

(declare-fun b!3179622 () Bool)

(declare-fun e!1980816 () Bool)

(declare-fun e!1980814 () Bool)

(declare-fun tp!1005985 () Bool)

(declare-fun inv!48559 (String!40054) Bool)

(declare-fun inv!48562 (TokenValueInjection!10116) Bool)

(assert (=> b!3179622 (= e!1980814 (and tp!1005985 (inv!48559 (tag!5618 (h!41132 rules!2135))) (inv!48562 (transformation!5114 (h!41132 rules!2135))) e!1980816))))

(declare-fun b!3179623 () Bool)

(declare-fun res!1292067 () Bool)

(assert (=> b!3179623 (=> (not res!1292067) (not e!1980809))))

(declare-fun sepAndNonSepRulesDisjointChars!1308 (List!35836 List!35836) Bool)

(assert (=> b!3179623 (= res!1292067 (sepAndNonSepRulesDisjointChars!1308 rules!2135 rules!2135))))

(declare-fun b!3179624 () Bool)

(declare-fun e!1980835 () Bool)

(declare-fun e!1980825 () Bool)

(assert (=> b!3179624 (= e!1980835 e!1980825)))

(declare-fun res!1292077 () Bool)

(assert (=> b!3179624 (=> (not res!1292077) (not e!1980825))))

(declare-fun lt!1068722 () Rule!10028)

(declare-fun matchR!4531 (Regex!9873 List!35835) Bool)

(assert (=> b!3179624 (= res!1292077 (matchR!4531 (regex!5114 lt!1068722) lt!1068717))))

(declare-datatypes ((Option!6959 0))(
  ( (None!6958) (Some!6958 (v!35398 Rule!10028)) )
))
(declare-fun lt!1068727 () Option!6959)

(declare-fun get!11352 (Option!6959) Rule!10028)

(assert (=> b!3179624 (= lt!1068722 (get!11352 lt!1068727))))

(declare-fun b!3179625 () Bool)

(declare-fun e!1980813 () Bool)

(declare-fun e!1980832 () Bool)

(assert (=> b!3179625 (= e!1980813 e!1980832)))

(declare-fun res!1292061 () Bool)

(assert (=> b!3179625 (=> res!1292061 e!1980832)))

(declare-fun lt!1068716 () List!35835)

(declare-fun lt!1068728 () BalanceConc!20820)

(declare-fun list!12671 (BalanceConc!20820) List!35835)

(assert (=> b!3179625 (= res!1292061 (not (= (list!12671 lt!1068728) (++!8534 lt!1068717 lt!1068716))))))

(declare-fun charsOf!3136 (Token!9594) BalanceConc!20820)

(assert (=> b!3179625 (= lt!1068716 (list!12671 (charsOf!3136 separatorToken!241)))))

(declare-datatypes ((IArray!21213 0))(
  ( (IArray!21214 (innerList!10664 List!35837)) )
))
(declare-datatypes ((Conc!10604 0))(
  ( (Node!10604 (left!27775 Conc!10604) (right!28105 Conc!10604) (csize!21438 Int) (cheight!10815 Int)) (Leaf!16772 (xs!13722 IArray!21213) (csize!21439 Int)) (Empty!10604) )
))
(declare-datatypes ((BalanceConc!20822 0))(
  ( (BalanceConc!20823 (c!534116 Conc!10604)) )
))
(declare-fun lt!1068725 () BalanceConc!20822)

(declare-fun printWithSeparatorToken!12 (LexerInterface!4703 BalanceConc!20822 Token!9594) BalanceConc!20820)

(assert (=> b!3179625 (= lt!1068728 (printWithSeparatorToken!12 thiss!18206 lt!1068725 separatorToken!241))))

(declare-fun e!1980829 () Bool)

(declare-fun e!1980833 () Bool)

(declare-fun tp!1005988 () Bool)

(declare-fun b!3179626 () Bool)

(declare-fun inv!48563 (Token!9594) Bool)

(assert (=> b!3179626 (= e!1980833 (and (inv!48563 (h!41133 tokens!494)) e!1980829 tp!1005988))))

(declare-fun b!3179627 () Bool)

(declare-fun e!1980820 () Bool)

(declare-fun lt!1068729 () Rule!10028)

(assert (=> b!3179627 (= e!1980820 (= (rule!7524 separatorToken!241) lt!1068729))))

(declare-fun b!3179628 () Bool)

(declare-fun e!1980828 () Bool)

(assert (=> b!3179628 (= e!1980809 (not e!1980828))))

(declare-fun res!1292070 () Bool)

(assert (=> b!3179628 (=> res!1292070 e!1980828)))

(declare-fun lt!1068731 () List!35835)

(declare-fun lt!1068730 () List!35835)

(assert (=> b!3179628 (= res!1292070 (not (= lt!1068731 lt!1068730)))))

(declare-fun printList!1257 (LexerInterface!4703 List!35837) List!35835)

(assert (=> b!3179628 (= lt!1068730 (printList!1257 thiss!18206 (Cons!35713 (h!41133 tokens!494) Nil!35713)))))

(declare-fun lt!1068712 () BalanceConc!20820)

(assert (=> b!3179628 (= lt!1068731 (list!12671 lt!1068712))))

(declare-fun lt!1068719 () BalanceConc!20822)

(declare-fun printTailRec!1202 (LexerInterface!4703 BalanceConc!20822 Int BalanceConc!20820) BalanceConc!20820)

(assert (=> b!3179628 (= lt!1068712 (printTailRec!1202 thiss!18206 lt!1068719 0 (BalanceConc!20821 Empty!10603)))))

(declare-fun print!1770 (LexerInterface!4703 BalanceConc!20822) BalanceConc!20820)

(assert (=> b!3179628 (= lt!1068712 (print!1770 thiss!18206 lt!1068719))))

(declare-fun singletonSeq!2210 (Token!9594) BalanceConc!20822)

(assert (=> b!3179628 (= lt!1068719 (singletonSeq!2210 (h!41133 tokens!494)))))

(declare-fun b!3179629 () Bool)

(assert (=> b!3179629 (= e!1980832 e!1980826)))

(declare-fun res!1292069 () Bool)

(assert (=> b!3179629 (=> res!1292069 e!1980826)))

(declare-fun contains!6307 (List!35836 Rule!10028) Bool)

(assert (=> b!3179629 (= res!1292069 (not (contains!6307 rules!2135 (rule!7524 (h!41133 tokens!494)))))))

(declare-fun e!1980824 () Bool)

(assert (=> b!3179629 e!1980824))

(declare-fun res!1292064 () Bool)

(assert (=> b!3179629 (=> (not res!1292064) (not e!1980824))))

(declare-fun lt!1068724 () Option!6959)

(declare-fun isDefined!5458 (Option!6959) Bool)

(assert (=> b!3179629 (= res!1292064 (isDefined!5458 lt!1068724))))

(declare-fun getRuleFromTag!843 (LexerInterface!4703 List!35836 String!40054) Option!6959)

(assert (=> b!3179629 (= lt!1068724 (getRuleFromTag!843 thiss!18206 rules!2135 (tag!5618 (rule!7524 separatorToken!241))))))

(declare-datatypes ((Unit!50124 0))(
  ( (Unit!50125) )
))
(declare-fun lt!1068720 () Unit!50124)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!843 (LexerInterface!4703 List!35836 List!35835 Token!9594) Unit!50124)

(assert (=> b!3179629 (= lt!1068720 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!843 thiss!18206 rules!2135 lt!1068716 separatorToken!241))))

(assert (=> b!3179629 e!1980835))

(declare-fun res!1292065 () Bool)

(assert (=> b!3179629 (=> (not res!1292065) (not e!1980835))))

(assert (=> b!3179629 (= res!1292065 (isDefined!5458 lt!1068727))))

(assert (=> b!3179629 (= lt!1068727 (getRuleFromTag!843 thiss!18206 rules!2135 (tag!5618 (rule!7524 (h!41133 tokens!494)))))))

(declare-fun lt!1068715 () Unit!50124)

(assert (=> b!3179629 (= lt!1068715 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!843 thiss!18206 rules!2135 lt!1068717 (h!41133 tokens!494)))))

(declare-fun lt!1068732 () Unit!50124)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!764 (LexerInterface!4703 List!35836 List!35837 Token!9594) Unit!50124)

(assert (=> b!3179629 (= lt!1068732 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!764 thiss!18206 rules!2135 tokens!494 (h!41133 tokens!494)))))

(declare-fun isEmpty!19821 (List!35835) Bool)

(declare-fun getSuffix!1330 (List!35835 List!35835) List!35835)

(assert (=> b!3179629 (isEmpty!19821 (getSuffix!1330 lt!1068717 lt!1068717))))

(declare-fun lt!1068718 () Unit!50124)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!8 (List!35835) Unit!50124)

(assert (=> b!3179629 (= lt!1068718 (lemmaGetSuffixOnListWithItSelfIsEmpty!8 lt!1068717))))

(declare-fun b!3179630 () Bool)

(assert (=> b!3179630 (= e!1980819 e!1980809)))

(declare-fun res!1292076 () Bool)

(assert (=> b!3179630 (=> (not res!1292076) (not e!1980809))))

(declare-fun rulesProduceEachTokenIndividually!1154 (LexerInterface!4703 List!35836 BalanceConc!20822) Bool)

(assert (=> b!3179630 (= res!1292076 (rulesProduceEachTokenIndividually!1154 thiss!18206 rules!2135 lt!1068725))))

(declare-fun seqFromList!3307 (List!35837) BalanceConc!20822)

(assert (=> b!3179630 (= lt!1068725 (seqFromList!3307 tokens!494))))

(declare-fun b!3179631 () Bool)

(declare-fun e!1980830 () Bool)

(declare-fun tp!1005984 () Bool)

(assert (=> b!3179631 (= e!1980830 (and e!1980814 tp!1005984))))

(declare-fun b!3179632 () Bool)

(declare-fun e!1980812 () Bool)

(assert (=> b!3179632 (= e!1980812 true)))

(declare-fun lt!1068713 () Bool)

(assert (=> b!3179632 (= lt!1068713 (matchR!4531 (regex!5114 (rule!7524 (h!41133 tokens!494))) lt!1068717))))

(declare-fun ruleValid!1616 (LexerInterface!4703 Rule!10028) Bool)

(assert (=> b!3179632 (ruleValid!1616 thiss!18206 (rule!7524 (h!41133 tokens!494)))))

(declare-fun lt!1068726 () Unit!50124)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!924 (LexerInterface!4703 Rule!10028 List!35836) Unit!50124)

(assert (=> b!3179632 (= lt!1068726 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!924 thiss!18206 (rule!7524 (h!41133 tokens!494)) rules!2135))))

(declare-fun b!3179633 () Bool)

(declare-fun res!1292066 () Bool)

(assert (=> b!3179633 (=> (not res!1292066) (not e!1980809))))

(assert (=> b!3179633 (= res!1292066 (isSeparator!5114 (rule!7524 separatorToken!241)))))

(declare-fun b!3179634 () Bool)

(assert (=> b!3179634 (= e!1980824 e!1980820)))

(declare-fun res!1292071 () Bool)

(assert (=> b!3179634 (=> (not res!1292071) (not e!1980820))))

(assert (=> b!3179634 (= res!1292071 (matchR!4531 (regex!5114 lt!1068729) lt!1068716))))

(assert (=> b!3179634 (= lt!1068729 (get!11352 lt!1068724))))

(declare-fun b!3179635 () Bool)

(declare-fun tp!1005994 () Bool)

(declare-fun e!1980822 () Bool)

(declare-fun inv!21 (TokenValue!5344) Bool)

(assert (=> b!3179635 (= e!1980829 (and (inv!21 (value!166209 (h!41133 tokens!494))) e!1980822 tp!1005994))))

(declare-fun e!1980818 () Bool)

(declare-fun tp!1005983 () Bool)

(declare-fun b!3179636 () Bool)

(assert (=> b!3179636 (= e!1980822 (and tp!1005983 (inv!48559 (tag!5618 (rule!7524 (h!41133 tokens!494)))) (inv!48562 (transformation!5114 (rule!7524 (h!41133 tokens!494)))) e!1980818))))

(declare-fun b!3179637 () Bool)

(assert (=> b!3179637 (= e!1980825 (= (rule!7524 (h!41133 tokens!494)) lt!1068722))))

(declare-fun res!1292062 () Bool)

(assert (=> start!297774 (=> (not res!1292062) (not e!1980819))))

(assert (=> start!297774 (= res!1292062 ((_ is Lexer!4701) thiss!18206))))

(assert (=> start!297774 e!1980819))

(assert (=> start!297774 true))

(assert (=> start!297774 e!1980830))

(declare-fun e!1980815 () Bool)

(assert (=> start!297774 (and (inv!48563 separatorToken!241) e!1980815)))

(assert (=> start!297774 e!1980833))

(declare-fun e!1980811 () Bool)

(declare-fun e!1980831 () Bool)

(declare-fun tp!1005982 () Bool)

(declare-fun b!3179638 () Bool)

(assert (=> b!3179638 (= e!1980811 (and tp!1005982 (inv!48559 (tag!5618 (rule!7524 separatorToken!241))) (inv!48562 (transformation!5114 (rule!7524 separatorToken!241))) e!1980831))))

(assert (=> b!3179639 (= e!1980831 (and tp!1005992 tp!1005987))))

(declare-fun b!3179640 () Bool)

(declare-fun e!1980834 () Bool)

(declare-fun e!1980821 () Bool)

(assert (=> b!3179640 (= e!1980834 e!1980821)))

(declare-fun res!1292073 () Bool)

(assert (=> b!3179640 (=> res!1292073 e!1980821)))

(declare-fun lt!1068721 () BalanceConc!20820)

(declare-fun isEmpty!19822 (BalanceConc!20822) Bool)

(declare-datatypes ((tuple2!35038 0))(
  ( (tuple2!35039 (_1!20653 BalanceConc!20822) (_2!20653 BalanceConc!20820)) )
))
(declare-fun lex!2043 (LexerInterface!4703 List!35836 BalanceConc!20820) tuple2!35038)

(assert (=> b!3179640 (= res!1292073 (isEmpty!19822 (_1!20653 (lex!2043 thiss!18206 rules!2135 lt!1068721))))))

(declare-fun seqFromList!3308 (List!35835) BalanceConc!20820)

(assert (=> b!3179640 (= lt!1068721 (seqFromList!3308 lt!1068717))))

(declare-fun b!3179641 () Bool)

(declare-fun res!1292081 () Bool)

(assert (=> b!3179641 (=> res!1292081 e!1980826)))

(assert (=> b!3179641 (= res!1292081 (isEmpty!19821 lt!1068717))))

(declare-fun b!3179642 () Bool)

(declare-fun res!1292074 () Bool)

(assert (=> b!3179642 (=> (not res!1292074) (not e!1980809))))

(declare-fun lambda!116363 () Int)

(declare-fun forall!7224 (List!35837 Int) Bool)

(assert (=> b!3179642 (= res!1292074 (forall!7224 tokens!494 lambda!116363))))

(assert (=> b!3179643 (= e!1980816 (and tp!1005990 tp!1005993))))

(declare-fun tp!1005991 () Bool)

(declare-fun b!3179644 () Bool)

(assert (=> b!3179644 (= e!1980815 (and (inv!21 (value!166209 separatorToken!241)) e!1980811 tp!1005991))))

(declare-fun b!3179645 () Bool)

(assert (=> b!3179645 (= e!1980828 e!1980834)))

(declare-fun res!1292079 () Bool)

(assert (=> b!3179645 (=> res!1292079 e!1980834)))

(assert (=> b!3179645 (= res!1292079 (or (not (= lt!1068730 lt!1068717)) (not (= lt!1068731 lt!1068717))))))

(assert (=> b!3179645 (= lt!1068717 (list!12671 (charsOf!3136 (h!41133 tokens!494))))))

(assert (=> b!3179646 (= e!1980818 (and tp!1005989 tp!1005986))))

(declare-fun b!3179647 () Bool)

(assert (=> b!3179647 (= e!1980821 e!1980813)))

(declare-fun res!1292078 () Bool)

(assert (=> b!3179647 (=> res!1292078 e!1980813)))

(assert (=> b!3179647 (= res!1292078 (isSeparator!5114 (rule!7524 (h!41133 tokens!494))))))

(declare-fun lt!1068714 () Unit!50124)

(declare-fun forallContained!1097 (List!35837 Int Token!9594) Unit!50124)

(assert (=> b!3179647 (= lt!1068714 (forallContained!1097 tokens!494 lambda!116363 (h!41133 tokens!494)))))

(declare-fun b!3179648 () Bool)

(declare-fun res!1292080 () Bool)

(assert (=> b!3179648 (=> (not res!1292080) (not e!1980819))))

(declare-fun isEmpty!19823 (List!35836) Bool)

(assert (=> b!3179648 (= res!1292080 (not (isEmpty!19823 rules!2135)))))

(declare-fun b!3179649 () Bool)

(assert (=> b!3179649 (= e!1980826 e!1980812)))

(declare-fun res!1292060 () Bool)

(assert (=> b!3179649 (=> res!1292060 e!1980812)))

(declare-datatypes ((tuple2!35040 0))(
  ( (tuple2!35041 (_1!20654 Token!9594) (_2!20654 List!35835)) )
))
(declare-datatypes ((Option!6960 0))(
  ( (None!6959) (Some!6959 (v!35399 tuple2!35040)) )
))
(declare-fun maxPrefix!2393 (LexerInterface!4703 List!35836 List!35835) Option!6960)

(declare-fun apply!8022 (TokenValueInjection!10116 BalanceConc!20820) TokenValue!5344)

(declare-fun size!26951 (List!35835) Int)

(assert (=> b!3179649 (= res!1292060 (not (= (maxPrefix!2393 thiss!18206 rules!2135 lt!1068717) (Some!6959 (tuple2!35041 (Token!9595 (apply!8022 (transformation!5114 (rule!7524 (h!41133 tokens!494))) lt!1068721) (rule!7524 (h!41133 tokens!494)) (size!26951 lt!1068717) lt!1068717) Nil!35711)))))))

(declare-fun lt!1068723 () Unit!50124)

(declare-fun lemmaSemiInverse!1149 (TokenValueInjection!10116 BalanceConc!20820) Unit!50124)

(assert (=> b!3179649 (= lt!1068723 (lemmaSemiInverse!1149 (transformation!5114 (rule!7524 (h!41133 tokens!494))) lt!1068721))))

(declare-fun b!3179650 () Bool)

(declare-fun res!1292063 () Bool)

(assert (=> b!3179650 (=> res!1292063 e!1980834)))

(assert (=> b!3179650 (= res!1292063 (not (rulesProduceIndividualToken!2195 thiss!18206 rules!2135 (h!41133 tokens!494))))))

(assert (= (and start!297774 res!1292062) b!3179648))

(assert (= (and b!3179648 res!1292080) b!3179618))

(assert (= (and b!3179618 res!1292072) b!3179630))

(assert (= (and b!3179630 res!1292076) b!3179620))

(assert (= (and b!3179620 res!1292075) b!3179633))

(assert (= (and b!3179633 res!1292066) b!3179642))

(assert (= (and b!3179642 res!1292074) b!3179623))

(assert (= (and b!3179623 res!1292067) b!3179619))

(assert (= (and b!3179619 res!1292068) b!3179628))

(assert (= (and b!3179628 (not res!1292070)) b!3179645))

(assert (= (and b!3179645 (not res!1292079)) b!3179650))

(assert (= (and b!3179650 (not res!1292063)) b!3179640))

(assert (= (and b!3179640 (not res!1292073)) b!3179647))

(assert (= (and b!3179647 (not res!1292078)) b!3179625))

(assert (= (and b!3179625 (not res!1292061)) b!3179629))

(assert (= (and b!3179629 res!1292065) b!3179624))

(assert (= (and b!3179624 res!1292077) b!3179637))

(assert (= (and b!3179629 res!1292064) b!3179634))

(assert (= (and b!3179634 res!1292071) b!3179627))

(assert (= (and b!3179629 (not res!1292069)) b!3179621))

(assert (= (and b!3179621 (not res!1292059)) b!3179641))

(assert (= (and b!3179641 (not res!1292081)) b!3179649))

(assert (= (and b!3179649 (not res!1292060)) b!3179632))

(assert (= b!3179622 b!3179643))

(assert (= b!3179631 b!3179622))

(assert (= (and start!297774 ((_ is Cons!35712) rules!2135)) b!3179631))

(assert (= b!3179638 b!3179639))

(assert (= b!3179644 b!3179638))

(assert (= start!297774 b!3179644))

(assert (= b!3179636 b!3179646))

(assert (= b!3179635 b!3179636))

(assert (= b!3179626 b!3179635))

(assert (= (and start!297774 ((_ is Cons!35713) tokens!494)) b!3179626))

(declare-fun m!3436099 () Bool)

(assert (=> b!3179647 m!3436099))

(declare-fun m!3436101 () Bool)

(assert (=> b!3179626 m!3436101))

(declare-fun m!3436103 () Bool)

(assert (=> b!3179649 m!3436103))

(declare-fun m!3436105 () Bool)

(assert (=> b!3179649 m!3436105))

(declare-fun m!3436107 () Bool)

(assert (=> b!3179649 m!3436107))

(declare-fun m!3436109 () Bool)

(assert (=> b!3179649 m!3436109))

(declare-fun m!3436111 () Bool)

(assert (=> b!3179640 m!3436111))

(declare-fun m!3436113 () Bool)

(assert (=> b!3179640 m!3436113))

(declare-fun m!3436115 () Bool)

(assert (=> b!3179640 m!3436115))

(declare-fun m!3436117 () Bool)

(assert (=> b!3179635 m!3436117))

(declare-fun m!3436119 () Bool)

(assert (=> start!297774 m!3436119))

(declare-fun m!3436121 () Bool)

(assert (=> b!3179624 m!3436121))

(declare-fun m!3436123 () Bool)

(assert (=> b!3179624 m!3436123))

(declare-fun m!3436125 () Bool)

(assert (=> b!3179650 m!3436125))

(declare-fun m!3436127 () Bool)

(assert (=> b!3179642 m!3436127))

(declare-fun m!3436129 () Bool)

(assert (=> b!3179648 m!3436129))

(declare-fun m!3436131 () Bool)

(assert (=> b!3179625 m!3436131))

(declare-fun m!3436133 () Bool)

(assert (=> b!3179625 m!3436133))

(declare-fun m!3436135 () Bool)

(assert (=> b!3179625 m!3436135))

(declare-fun m!3436137 () Bool)

(assert (=> b!3179625 m!3436137))

(assert (=> b!3179625 m!3436131))

(declare-fun m!3436139 () Bool)

(assert (=> b!3179625 m!3436139))

(declare-fun m!3436141 () Bool)

(assert (=> b!3179634 m!3436141))

(declare-fun m!3436143 () Bool)

(assert (=> b!3179634 m!3436143))

(declare-fun m!3436145 () Bool)

(assert (=> b!3179641 m!3436145))

(declare-fun m!3436147 () Bool)

(assert (=> b!3179621 m!3436147))

(declare-fun m!3436149 () Bool)

(assert (=> b!3179628 m!3436149))

(declare-fun m!3436151 () Bool)

(assert (=> b!3179628 m!3436151))

(declare-fun m!3436153 () Bool)

(assert (=> b!3179628 m!3436153))

(declare-fun m!3436155 () Bool)

(assert (=> b!3179628 m!3436155))

(declare-fun m!3436157 () Bool)

(assert (=> b!3179628 m!3436157))

(declare-fun m!3436159 () Bool)

(assert (=> b!3179623 m!3436159))

(declare-fun m!3436161 () Bool)

(assert (=> b!3179620 m!3436161))

(declare-fun m!3436163 () Bool)

(assert (=> b!3179629 m!3436163))

(declare-fun m!3436165 () Bool)

(assert (=> b!3179629 m!3436165))

(declare-fun m!3436167 () Bool)

(assert (=> b!3179629 m!3436167))

(declare-fun m!3436169 () Bool)

(assert (=> b!3179629 m!3436169))

(declare-fun m!3436171 () Bool)

(assert (=> b!3179629 m!3436171))

(declare-fun m!3436173 () Bool)

(assert (=> b!3179629 m!3436173))

(declare-fun m!3436175 () Bool)

(assert (=> b!3179629 m!3436175))

(declare-fun m!3436177 () Bool)

(assert (=> b!3179629 m!3436177))

(declare-fun m!3436179 () Bool)

(assert (=> b!3179629 m!3436179))

(declare-fun m!3436181 () Bool)

(assert (=> b!3179629 m!3436181))

(declare-fun m!3436183 () Bool)

(assert (=> b!3179629 m!3436183))

(assert (=> b!3179629 m!3436177))

(declare-fun m!3436185 () Bool)

(assert (=> b!3179636 m!3436185))

(declare-fun m!3436187 () Bool)

(assert (=> b!3179636 m!3436187))

(declare-fun m!3436189 () Bool)

(assert (=> b!3179638 m!3436189))

(declare-fun m!3436191 () Bool)

(assert (=> b!3179638 m!3436191))

(declare-fun m!3436193 () Bool)

(assert (=> b!3179632 m!3436193))

(declare-fun m!3436195 () Bool)

(assert (=> b!3179632 m!3436195))

(declare-fun m!3436197 () Bool)

(assert (=> b!3179632 m!3436197))

(declare-fun m!3436199 () Bool)

(assert (=> b!3179618 m!3436199))

(declare-fun m!3436201 () Bool)

(assert (=> b!3179644 m!3436201))

(declare-fun m!3436203 () Bool)

(assert (=> b!3179630 m!3436203))

(declare-fun m!3436205 () Bool)

(assert (=> b!3179630 m!3436205))

(declare-fun m!3436207 () Bool)

(assert (=> b!3179645 m!3436207))

(assert (=> b!3179645 m!3436207))

(declare-fun m!3436209 () Bool)

(assert (=> b!3179645 m!3436209))

(declare-fun m!3436211 () Bool)

(assert (=> b!3179622 m!3436211))

(declare-fun m!3436213 () Bool)

(assert (=> b!3179622 m!3436213))

(check-sat (not b!3179648) b_and!210117 (not b!3179650) (not b!3179634) (not b!3179623) (not b!3179632) (not b!3179626) (not b!3179649) (not b!3179625) (not b!3179640) (not b!3179620) (not b!3179621) (not b_next!84489) (not b_next!84491) (not b!3179636) (not b!3179638) (not b!3179642) (not b!3179622) b_and!210111 (not b!3179644) b_and!210113 (not b!3179641) (not start!297774) (not b!3179645) (not b_next!84485) (not b!3179628) (not b!3179629) (not b_next!84487) (not b!3179647) (not b_next!84481) (not b_next!84483) (not b!3179618) (not b!3179630) b_and!210107 (not b!3179635) (not b!3179624) b_and!210109 (not b!3179631) b_and!210115)
(check-sat b_and!210117 b_and!210111 b_and!210113 (not b_next!84485) (not b_next!84487) b_and!210107 (not b_next!84489) (not b_next!84491) (not b_next!84481) (not b_next!84483) b_and!210109 b_and!210115)
