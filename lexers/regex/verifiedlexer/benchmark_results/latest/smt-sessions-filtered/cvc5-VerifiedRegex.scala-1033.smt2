; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!51314 () Bool)

(assert start!51314)

(declare-fun b!553768 () Bool)

(declare-fun b_free!15545 () Bool)

(declare-fun b_next!15561 () Bool)

(assert (=> b!553768 (= b_free!15545 (not b_next!15561))))

(declare-fun tp!175193 () Bool)

(declare-fun b_and!54099 () Bool)

(assert (=> b!553768 (= tp!175193 b_and!54099)))

(declare-fun b_free!15547 () Bool)

(declare-fun b_next!15563 () Bool)

(assert (=> b!553768 (= b_free!15547 (not b_next!15563))))

(declare-fun tp!175190 () Bool)

(declare-fun b_and!54101 () Bool)

(assert (=> b!553768 (= tp!175190 b_and!54101)))

(declare-fun b!553767 () Bool)

(declare-fun b_free!15549 () Bool)

(declare-fun b_next!15565 () Bool)

(assert (=> b!553767 (= b_free!15549 (not b_next!15565))))

(declare-fun tp!175188 () Bool)

(declare-fun b_and!54103 () Bool)

(assert (=> b!553767 (= tp!175188 b_and!54103)))

(declare-fun b_free!15551 () Bool)

(declare-fun b_next!15567 () Bool)

(assert (=> b!553767 (= b_free!15551 (not b_next!15567))))

(declare-fun tp!175194 () Bool)

(declare-fun b_and!54105 () Bool)

(assert (=> b!553767 (= tp!175194 b_and!54105)))

(declare-fun b!553746 () Bool)

(declare-fun e!335118 () Bool)

(declare-fun e!335123 () Bool)

(assert (=> b!553746 (= e!335118 e!335123)))

(declare-fun res!237553 () Bool)

(assert (=> b!553746 (=> (not res!237553) (not e!335123))))

(declare-datatypes ((C!3694 0))(
  ( (C!3695 (val!2073 Int)) )
))
(declare-datatypes ((Regex!1386 0))(
  ( (ElementMatch!1386 (c!103974 C!3694)) (Concat!2462 (regOne!3284 Regex!1386) (regTwo!3284 Regex!1386)) (EmptyExpr!1386) (Star!1386 (reg!1715 Regex!1386)) (EmptyLang!1386) (Union!1386 (regOne!3285 Regex!1386) (regTwo!3285 Regex!1386)) )
))
(declare-datatypes ((List!5516 0))(
  ( (Nil!5506) (Cons!5506 (h!10907 (_ BitVec 16)) (t!75287 List!5516)) )
))
(declare-datatypes ((List!5517 0))(
  ( (Nil!5507) (Cons!5507 (h!10908 C!3694) (t!75288 List!5517)) )
))
(declare-datatypes ((IArray!3539 0))(
  ( (IArray!3540 (innerList!1827 List!5517)) )
))
(declare-datatypes ((Conc!1769 0))(
  ( (Node!1769 (left!4536 Conc!1769) (right!4866 Conc!1769) (csize!3768 Int) (cheight!1980 Int)) (Leaf!2803 (xs!4406 IArray!3539) (csize!3769 Int)) (Empty!1769) )
))
(declare-datatypes ((BalanceConc!3546 0))(
  ( (BalanceConc!3547 (c!103975 Conc!1769)) )
))
(declare-datatypes ((TokenValue!1076 0))(
  ( (FloatLiteralValue!2152 (text!7977 List!5516)) (TokenValueExt!1075 (__x!4050 Int)) (Broken!5380 (value!34824 List!5516)) (Object!1085) (End!1076) (Def!1076) (Underscore!1076) (Match!1076) (Else!1076) (Error!1076) (Case!1076) (If!1076) (Extends!1076) (Abstract!1076) (Class!1076) (Val!1076) (DelimiterValue!2152 (del!1136 List!5516)) (KeywordValue!1082 (value!34825 List!5516)) (CommentValue!2152 (value!34826 List!5516)) (WhitespaceValue!2152 (value!34827 List!5516)) (IndentationValue!1076 (value!34828 List!5516)) (String!7125) (Int32!1076) (Broken!5381 (value!34829 List!5516)) (Boolean!1077) (Unit!9755) (OperatorValue!1079 (op!1136 List!5516)) (IdentifierValue!2152 (value!34830 List!5516)) (IdentifierValue!2153 (value!34831 List!5516)) (WhitespaceValue!2153 (value!34832 List!5516)) (True!2152) (False!2152) (Broken!5382 (value!34833 List!5516)) (Broken!5383 (value!34834 List!5516)) (True!2153) (RightBrace!1076) (RightBracket!1076) (Colon!1076) (Null!1076) (Comma!1076) (LeftBracket!1076) (False!2153) (LeftBrace!1076) (ImaginaryLiteralValue!1076 (text!7978 List!5516)) (StringLiteralValue!3228 (value!34835 List!5516)) (EOFValue!1076 (value!34836 List!5516)) (IdentValue!1076 (value!34837 List!5516)) (DelimiterValue!2153 (value!34838 List!5516)) (DedentValue!1076 (value!34839 List!5516)) (NewLineValue!1076 (value!34840 List!5516)) (IntegerValue!3228 (value!34841 (_ BitVec 32)) (text!7979 List!5516)) (IntegerValue!3229 (value!34842 Int) (text!7980 List!5516)) (Times!1076) (Or!1076) (Equal!1076) (Minus!1076) (Broken!5384 (value!34843 List!5516)) (And!1076) (Div!1076) (LessEqual!1076) (Mod!1076) (Concat!2463) (Not!1076) (Plus!1076) (SpaceValue!1076 (value!34844 List!5516)) (IntegerValue!3230 (value!34845 Int) (text!7981 List!5516)) (StringLiteralValue!3229 (text!7982 List!5516)) (FloatLiteralValue!2153 (text!7983 List!5516)) (BytesLiteralValue!1076 (value!34846 List!5516)) (CommentValue!2153 (value!34847 List!5516)) (StringLiteralValue!3230 (value!34848 List!5516)) (ErrorTokenValue!1076 (msg!1137 List!5516)) )
))
(declare-datatypes ((String!7126 0))(
  ( (String!7127 (value!34849 String)) )
))
(declare-datatypes ((TokenValueInjection!1920 0))(
  ( (TokenValueInjection!1921 (toValue!1903 Int) (toChars!1762 Int)) )
))
(declare-datatypes ((Rule!1904 0))(
  ( (Rule!1905 (regex!1052 Regex!1386) (tag!1314 String!7126) (isSeparator!1052 Bool) (transformation!1052 TokenValueInjection!1920)) )
))
(declare-datatypes ((Token!1840 0))(
  ( (Token!1841 (value!34850 TokenValue!1076) (rule!1780 Rule!1904) (size!4392 Int) (originalCharacters!1091 List!5517)) )
))
(declare-datatypes ((tuple2!6514 0))(
  ( (tuple2!6515 (_1!3521 Token!1840) (_2!3521 List!5517)) )
))
(declare-datatypes ((Option!1402 0))(
  ( (None!1401) (Some!1401 (v!16230 tuple2!6514)) )
))
(declare-fun lt!233675 () Option!1402)

(declare-fun isDefined!1214 (Option!1402) Bool)

(assert (=> b!553746 (= res!237553 (isDefined!1214 lt!233675))))

(declare-fun lt!233676 () List!5517)

(declare-datatypes ((List!5518 0))(
  ( (Nil!5508) (Cons!5508 (h!10909 Rule!1904) (t!75289 List!5518)) )
))
(declare-fun rules!3103 () List!5518)

(declare-datatypes ((LexerInterface!938 0))(
  ( (LexerInterfaceExt!935 (__x!4051 Int)) (Lexer!936) )
))
(declare-fun thiss!22590 () LexerInterface!938)

(declare-fun maxPrefix!636 (LexerInterface!938 List!5518 List!5517) Option!1402)

(assert (=> b!553746 (= lt!233675 (maxPrefix!636 thiss!22590 rules!3103 lt!233676))))

(declare-fun input!2705 () List!5517)

(declare-fun suffix!1342 () List!5517)

(declare-fun ++!1540 (List!5517 List!5517) List!5517)

(assert (=> b!553746 (= lt!233676 (++!1540 input!2705 suffix!1342))))

(declare-fun b!553747 () Bool)

(declare-fun e!335112 () Bool)

(declare-fun e!335107 () Bool)

(declare-fun tp!175195 () Bool)

(assert (=> b!553747 (= e!335112 (and e!335107 tp!175195))))

(declare-fun b!553748 () Bool)

(declare-fun e!335108 () Bool)

(declare-fun e!335104 () Bool)

(assert (=> b!553748 (= e!335108 e!335104)))

(declare-fun res!237547 () Bool)

(assert (=> b!553748 (=> (not res!237547) (not e!335104))))

(declare-fun lt!233665 () Option!1402)

(assert (=> b!553748 (= res!237547 (isDefined!1214 lt!233665))))

(declare-fun b!553749 () Bool)

(declare-fun e!335119 () Bool)

(assert (=> b!553749 (= e!335119 e!335108)))

(declare-fun res!237546 () Bool)

(assert (=> b!553749 (=> res!237546 e!335108)))

(declare-fun lt!233671 () Int)

(declare-fun lt!233664 () Int)

(assert (=> b!553749 (= res!237546 (>= lt!233671 lt!233664))))

(declare-fun b!553750 () Bool)

(declare-fun e!335103 () Bool)

(declare-fun e!335125 () Bool)

(assert (=> b!553750 (= e!335103 e!335125)))

(declare-fun res!237540 () Bool)

(assert (=> b!553750 (=> (not res!237540) (not e!335125))))

(assert (=> b!553750 (= res!237540 (is-Some!1401 lt!233665))))

(assert (=> b!553750 (= lt!233665 (maxPrefix!636 thiss!22590 rules!3103 input!2705))))

(declare-fun b!553751 () Bool)

(declare-fun e!335102 () Bool)

(declare-fun tp_is_empty!3127 () Bool)

(declare-fun tp!175196 () Bool)

(assert (=> b!553751 (= e!335102 (and tp_is_empty!3127 tp!175196))))

(declare-fun b!553752 () Bool)

(declare-datatypes ((Unit!9756 0))(
  ( (Unit!9757) )
))
(declare-fun e!335101 () Unit!9756)

(declare-fun Unit!9758 () Unit!9756)

(assert (=> b!553752 (= e!335101 Unit!9758)))

(assert (=> b!553752 false))

(declare-fun b!553753 () Bool)

(declare-fun e!335111 () Bool)

(assert (=> b!553753 (= e!335111 e!335118)))

(declare-fun res!237541 () Bool)

(assert (=> b!553753 (=> (not res!237541) (not e!335118))))

(declare-fun lt!233683 () List!5517)

(assert (=> b!553753 (= res!237541 (= lt!233683 input!2705))))

(declare-fun token!491 () Token!1840)

(declare-fun list!2282 (BalanceConc!3546) List!5517)

(declare-fun charsOf!681 (Token!1840) BalanceConc!3546)

(assert (=> b!553753 (= lt!233683 (list!2282 (charsOf!681 token!491)))))

(declare-fun e!335109 () Bool)

(declare-fun b!553755 () Bool)

(declare-fun tp!175187 () Bool)

(declare-fun e!335116 () Bool)

(declare-fun inv!21 (TokenValue!1076) Bool)

(assert (=> b!553755 (= e!335116 (and (inv!21 (value!34850 token!491)) e!335109 tp!175187))))

(declare-fun b!553756 () Bool)

(declare-fun e!335114 () Bool)

(declare-fun tp!175189 () Bool)

(declare-fun inv!6910 (String!7126) Bool)

(declare-fun inv!6913 (TokenValueInjection!1920) Bool)

(assert (=> b!553756 (= e!335107 (and tp!175189 (inv!6910 (tag!1314 (h!10909 rules!3103))) (inv!6913 (transformation!1052 (h!10909 rules!3103))) e!335114))))

(declare-fun b!553757 () Bool)

(declare-fun res!237542 () Bool)

(declare-fun e!335105 () Bool)

(assert (=> b!553757 (=> (not res!237542) (not e!335105))))

(declare-fun size!4393 (List!5517) Int)

(assert (=> b!553757 (= res!237542 (= (size!4392 token!491) (size!4393 (originalCharacters!1091 token!491))))))

(declare-fun b!553758 () Bool)

(declare-fun e!335117 () Bool)

(declare-fun e!335124 () Bool)

(assert (=> b!553758 (= e!335117 (not e!335124))))

(declare-fun res!237548 () Bool)

(assert (=> b!553758 (=> res!237548 e!335124)))

(declare-fun lt!233673 () List!5517)

(declare-fun isPrefix!686 (List!5517 List!5517) Bool)

(assert (=> b!553758 (= res!237548 (not (isPrefix!686 input!2705 lt!233673)))))

(assert (=> b!553758 (isPrefix!686 lt!233683 lt!233673)))

(declare-fun lt!233690 () Unit!9756)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!533 (List!5517 List!5517) Unit!9756)

(assert (=> b!553758 (= lt!233690 (lemmaConcatTwoListThenFirstIsPrefix!533 lt!233683 suffix!1342))))

(assert (=> b!553758 (isPrefix!686 input!2705 lt!233676)))

(declare-fun lt!233669 () Unit!9756)

(assert (=> b!553758 (= lt!233669 (lemmaConcatTwoListThenFirstIsPrefix!533 input!2705 suffix!1342))))

(declare-fun e!335113 () Bool)

(assert (=> b!553758 e!335113))

(declare-fun res!237543 () Bool)

(assert (=> b!553758 (=> (not res!237543) (not e!335113))))

(declare-fun lt!233686 () TokenValue!1076)

(assert (=> b!553758 (= res!237543 (= (value!34850 (_1!3521 (v!16230 lt!233665))) lt!233686))))

(declare-fun lt!233680 () List!5517)

(declare-fun apply!1317 (TokenValueInjection!1920 BalanceConc!3546) TokenValue!1076)

(declare-fun seqFromList!1240 (List!5517) BalanceConc!3546)

(assert (=> b!553758 (= lt!233686 (apply!1317 (transformation!1052 (rule!1780 (_1!3521 (v!16230 lt!233665)))) (seqFromList!1240 lt!233680)))))

(declare-fun lt!233689 () Unit!9756)

(declare-fun lemmaInv!188 (TokenValueInjection!1920) Unit!9756)

(assert (=> b!553758 (= lt!233689 (lemmaInv!188 (transformation!1052 (rule!1780 token!491))))))

(declare-fun lt!233692 () Unit!9756)

(assert (=> b!553758 (= lt!233692 (lemmaInv!188 (transformation!1052 (rule!1780 (_1!3521 (v!16230 lt!233665))))))))

(declare-fun ruleValid!262 (LexerInterface!938 Rule!1904) Bool)

(assert (=> b!553758 (ruleValid!262 thiss!22590 (rule!1780 token!491))))

(declare-fun lt!233677 () Unit!9756)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!119 (LexerInterface!938 Rule!1904 List!5518) Unit!9756)

(assert (=> b!553758 (= lt!233677 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!119 thiss!22590 (rule!1780 token!491) rules!3103))))

(assert (=> b!553758 (ruleValid!262 thiss!22590 (rule!1780 (_1!3521 (v!16230 lt!233665))))))

(declare-fun lt!233666 () Unit!9756)

(assert (=> b!553758 (= lt!233666 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!119 thiss!22590 (rule!1780 (_1!3521 (v!16230 lt!233665))) rules!3103))))

(assert (=> b!553758 (isPrefix!686 input!2705 input!2705)))

(declare-fun lt!233684 () Unit!9756)

(declare-fun lemmaIsPrefixRefl!424 (List!5517 List!5517) Unit!9756)

(assert (=> b!553758 (= lt!233684 (lemmaIsPrefixRefl!424 input!2705 input!2705))))

(declare-fun lt!233672 () List!5517)

(assert (=> b!553758 (= (_2!3521 (v!16230 lt!233665)) lt!233672)))

(declare-fun lt!233687 () Unit!9756)

(declare-fun lemmaSamePrefixThenSameSuffix!409 (List!5517 List!5517 List!5517 List!5517 List!5517) Unit!9756)

(assert (=> b!553758 (= lt!233687 (lemmaSamePrefixThenSameSuffix!409 lt!233680 (_2!3521 (v!16230 lt!233665)) lt!233680 lt!233672 input!2705))))

(declare-fun getSuffix!205 (List!5517 List!5517) List!5517)

(assert (=> b!553758 (= lt!233672 (getSuffix!205 input!2705 lt!233680))))

(assert (=> b!553758 (isPrefix!686 lt!233680 (++!1540 lt!233680 (_2!3521 (v!16230 lt!233665))))))

(declare-fun lt!233688 () Unit!9756)

(assert (=> b!553758 (= lt!233688 (lemmaConcatTwoListThenFirstIsPrefix!533 lt!233680 (_2!3521 (v!16230 lt!233665))))))

(declare-fun lt!233678 () Unit!9756)

(declare-fun lemmaCharactersSize!119 (Token!1840) Unit!9756)

(assert (=> b!553758 (= lt!233678 (lemmaCharactersSize!119 token!491))))

(declare-fun lt!233674 () Unit!9756)

(assert (=> b!553758 (= lt!233674 (lemmaCharactersSize!119 (_1!3521 (v!16230 lt!233665))))))

(declare-fun lt!233691 () Unit!9756)

(assert (=> b!553758 (= lt!233691 e!335101)))

(declare-fun c!103973 () Bool)

(assert (=> b!553758 (= c!103973 (> lt!233671 lt!233664))))

(assert (=> b!553758 (= lt!233664 (size!4393 lt!233683))))

(assert (=> b!553758 (= lt!233671 (size!4393 lt!233680))))

(assert (=> b!553758 (= lt!233680 (list!2282 (charsOf!681 (_1!3521 (v!16230 lt!233665)))))))

(declare-fun lt!233670 () tuple2!6514)

(assert (=> b!553758 (= lt!233665 (Some!1401 lt!233670))))

(assert (=> b!553758 (= lt!233670 (tuple2!6515 (_1!3521 (v!16230 lt!233665)) (_2!3521 (v!16230 lt!233665))))))

(declare-fun lt!233685 () Unit!9756)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!129 (List!5517 List!5517 List!5517 List!5517) Unit!9756)

(assert (=> b!553758 (= lt!233685 (lemmaConcatSameAndSameSizesThenSameLists!129 lt!233683 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!553759 () Bool)

(declare-fun Unit!9759 () Unit!9756)

(assert (=> b!553759 (= e!335101 Unit!9759)))

(declare-fun b!553760 () Bool)

(declare-fun get!2093 (Option!1402) tuple2!6514)

(assert (=> b!553760 (= e!335104 (= (_1!3521 (get!2093 lt!233665)) (_1!3521 (v!16230 lt!233665))))))

(declare-fun b!553761 () Bool)

(assert (=> b!553761 (= e!335123 e!335103)))

(declare-fun res!237544 () Bool)

(assert (=> b!553761 (=> (not res!237544) (not e!335103))))

(declare-fun lt!233667 () tuple2!6514)

(assert (=> b!553761 (= res!237544 (and (= (_1!3521 lt!233667) token!491) (= (_2!3521 lt!233667) suffix!1342)))))

(assert (=> b!553761 (= lt!233667 (get!2093 lt!233675))))

(declare-fun b!553762 () Bool)

(declare-fun res!237550 () Bool)

(assert (=> b!553762 (=> (not res!237550) (not e!335111))))

(declare-fun isEmpty!3972 (List!5518) Bool)

(assert (=> b!553762 (= res!237550 (not (isEmpty!3972 rules!3103)))))

(declare-fun b!553763 () Bool)

(declare-fun res!237552 () Bool)

(assert (=> b!553763 (=> (not res!237552) (not e!335111))))

(declare-fun rulesInvariant!901 (LexerInterface!938 List!5518) Bool)

(assert (=> b!553763 (= res!237552 (rulesInvariant!901 thiss!22590 rules!3103))))

(declare-fun b!553764 () Bool)

(declare-fun res!237551 () Bool)

(assert (=> b!553764 (=> (not res!237551) (not e!335113))))

(assert (=> b!553764 (= res!237551 (= (size!4392 (_1!3521 (v!16230 lt!233665))) (size!4393 (originalCharacters!1091 (_1!3521 (v!16230 lt!233665))))))))

(declare-fun b!553765 () Bool)

(declare-fun res!237539 () Bool)

(assert (=> b!553765 (=> (not res!237539) (not e!335111))))

(declare-fun isEmpty!3973 (List!5517) Bool)

(assert (=> b!553765 (= res!237539 (not (isEmpty!3973 input!2705)))))

(declare-fun b!553766 () Bool)

(declare-fun e!335122 () Bool)

(declare-fun tp!175191 () Bool)

(assert (=> b!553766 (= e!335122 (and tp_is_empty!3127 tp!175191))))

(declare-fun res!237545 () Bool)

(assert (=> start!51314 (=> (not res!237545) (not e!335111))))

(assert (=> start!51314 (= res!237545 (is-Lexer!936 thiss!22590))))

(assert (=> start!51314 e!335111))

(assert (=> start!51314 e!335102))

(assert (=> start!51314 e!335112))

(declare-fun inv!6914 (Token!1840) Bool)

(assert (=> start!51314 (and (inv!6914 token!491) e!335116)))

(assert (=> start!51314 true))

(assert (=> start!51314 e!335122))

(declare-fun b!553754 () Bool)

(declare-fun e!335110 () Bool)

(assert (=> b!553754 (= e!335124 e!335110)))

(declare-fun res!237554 () Bool)

(assert (=> b!553754 (=> res!237554 e!335110)))

(assert (=> b!553754 (= res!237554 (>= lt!233671 lt!233664))))

(assert (=> b!553754 e!335119))

(declare-fun res!237538 () Bool)

(assert (=> b!553754 (=> (not res!237538) (not e!335119))))

(declare-fun lt!233682 () TokenValue!1076)

(declare-fun maxPrefixOneRule!337 (LexerInterface!938 Rule!1904 List!5517) Option!1402)

(assert (=> b!553754 (= res!237538 (= (maxPrefixOneRule!337 thiss!22590 (rule!1780 token!491) lt!233676) (Some!1401 (tuple2!6515 (Token!1841 lt!233682 (rule!1780 token!491) lt!233664 lt!233683) suffix!1342))))))

(declare-fun lt!233668 () Unit!9756)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!87 (LexerInterface!938 List!5518 List!5517 List!5517 List!5517 Rule!1904) Unit!9756)

(assert (=> b!553754 (= lt!233668 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!87 thiss!22590 rules!3103 lt!233683 lt!233676 suffix!1342 (rule!1780 token!491)))))

(assert (=> b!553754 (= (maxPrefixOneRule!337 thiss!22590 (rule!1780 (_1!3521 (v!16230 lt!233665))) input!2705) (Some!1401 (tuple2!6515 (Token!1841 lt!233686 (rule!1780 (_1!3521 (v!16230 lt!233665))) lt!233671 lt!233680) (_2!3521 (v!16230 lt!233665)))))))

(declare-fun lt!233681 () Unit!9756)

(assert (=> b!553754 (= lt!233681 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!87 thiss!22590 rules!3103 lt!233680 input!2705 (_2!3521 (v!16230 lt!233665)) (rule!1780 (_1!3521 (v!16230 lt!233665)))))))

(assert (=> b!553754 e!335105))

(declare-fun res!237537 () Bool)

(assert (=> b!553754 (=> (not res!237537) (not e!335105))))

(assert (=> b!553754 (= res!237537 (= (value!34850 token!491) lt!233682))))

(assert (=> b!553754 (= lt!233682 (apply!1317 (transformation!1052 (rule!1780 token!491)) (seqFromList!1240 lt!233683)))))

(declare-fun lt!233679 () List!5517)

(assert (=> b!553754 (= suffix!1342 lt!233679)))

(declare-fun lt!233693 () Unit!9756)

(assert (=> b!553754 (= lt!233693 (lemmaSamePrefixThenSameSuffix!409 lt!233683 suffix!1342 lt!233683 lt!233679 lt!233676))))

(assert (=> b!553754 (= lt!233679 (getSuffix!205 lt!233676 lt!233683))))

(assert (=> b!553767 (= e!335114 (and tp!175188 tp!175194))))

(declare-fun e!335120 () Bool)

(assert (=> b!553768 (= e!335120 (and tp!175193 tp!175190))))

(declare-fun b!553769 () Bool)

(assert (=> b!553769 (= e!335125 e!335117)))

(declare-fun res!237549 () Bool)

(assert (=> b!553769 (=> (not res!237549) (not e!335117))))

(assert (=> b!553769 (= res!237549 (= lt!233673 lt!233676))))

(assert (=> b!553769 (= lt!233673 (++!1540 lt!233683 suffix!1342))))

(declare-fun b!553770 () Bool)

(assert (=> b!553770 (= e!335105 (and (= (size!4392 token!491) lt!233664) (= (originalCharacters!1091 token!491) lt!233683) (= (tuple2!6515 token!491 suffix!1342) (tuple2!6515 (Token!1841 lt!233682 (rule!1780 token!491) lt!233664 lt!233683) lt!233679))))))

(declare-fun b!553771 () Bool)

(declare-fun contains!1284 (List!5518 Rule!1904) Bool)

(assert (=> b!553771 (= e!335110 (contains!1284 rules!3103 (rule!1780 token!491)))))

(declare-fun b!553772 () Bool)

(assert (=> b!553772 (= e!335113 (and (= (size!4392 (_1!3521 (v!16230 lt!233665))) lt!233671) (= (originalCharacters!1091 (_1!3521 (v!16230 lt!233665))) lt!233680) (= lt!233670 (tuple2!6515 (Token!1841 lt!233686 (rule!1780 (_1!3521 (v!16230 lt!233665))) lt!233671 lt!233680) lt!233672))))))

(declare-fun tp!175192 () Bool)

(declare-fun b!553773 () Bool)

(assert (=> b!553773 (= e!335109 (and tp!175192 (inv!6910 (tag!1314 (rule!1780 token!491))) (inv!6913 (transformation!1052 (rule!1780 token!491))) e!335120))))

(assert (= (and start!51314 res!237545) b!553762))

(assert (= (and b!553762 res!237550) b!553763))

(assert (= (and b!553763 res!237552) b!553765))

(assert (= (and b!553765 res!237539) b!553753))

(assert (= (and b!553753 res!237541) b!553746))

(assert (= (and b!553746 res!237553) b!553761))

(assert (= (and b!553761 res!237544) b!553750))

(assert (= (and b!553750 res!237540) b!553769))

(assert (= (and b!553769 res!237549) b!553758))

(assert (= (and b!553758 c!103973) b!553752))

(assert (= (and b!553758 (not c!103973)) b!553759))

(assert (= (and b!553758 res!237543) b!553764))

(assert (= (and b!553764 res!237551) b!553772))

(assert (= (and b!553758 (not res!237548)) b!553754))

(assert (= (and b!553754 res!237537) b!553757))

(assert (= (and b!553757 res!237542) b!553770))

(assert (= (and b!553754 res!237538) b!553749))

(assert (= (and b!553749 (not res!237546)) b!553748))

(assert (= (and b!553748 res!237547) b!553760))

(assert (= (and b!553754 (not res!237554)) b!553771))

(assert (= (and start!51314 (is-Cons!5507 suffix!1342)) b!553751))

(assert (= b!553756 b!553767))

(assert (= b!553747 b!553756))

(assert (= (and start!51314 (is-Cons!5508 rules!3103)) b!553747))

(assert (= b!553773 b!553768))

(assert (= b!553755 b!553773))

(assert (= start!51314 b!553755))

(assert (= (and start!51314 (is-Cons!5507 input!2705)) b!553766))

(declare-fun m!803523 () Bool)

(assert (=> b!553756 m!803523))

(declare-fun m!803525 () Bool)

(assert (=> b!553756 m!803525))

(declare-fun m!803527 () Bool)

(assert (=> b!553755 m!803527))

(declare-fun m!803529 () Bool)

(assert (=> start!51314 m!803529))

(declare-fun m!803531 () Bool)

(assert (=> b!553754 m!803531))

(declare-fun m!803533 () Bool)

(assert (=> b!553754 m!803533))

(declare-fun m!803535 () Bool)

(assert (=> b!553754 m!803535))

(declare-fun m!803537 () Bool)

(assert (=> b!553754 m!803537))

(declare-fun m!803539 () Bool)

(assert (=> b!553754 m!803539))

(declare-fun m!803541 () Bool)

(assert (=> b!553754 m!803541))

(assert (=> b!553754 m!803533))

(declare-fun m!803543 () Bool)

(assert (=> b!553754 m!803543))

(declare-fun m!803545 () Bool)

(assert (=> b!553754 m!803545))

(declare-fun m!803547 () Bool)

(assert (=> b!553763 m!803547))

(declare-fun m!803549 () Bool)

(assert (=> b!553765 m!803549))

(declare-fun m!803551 () Bool)

(assert (=> b!553750 m!803551))

(declare-fun m!803553 () Bool)

(assert (=> b!553753 m!803553))

(assert (=> b!553753 m!803553))

(declare-fun m!803555 () Bool)

(assert (=> b!553753 m!803555))

(declare-fun m!803557 () Bool)

(assert (=> b!553771 m!803557))

(declare-fun m!803559 () Bool)

(assert (=> b!553758 m!803559))

(declare-fun m!803561 () Bool)

(assert (=> b!553758 m!803561))

(declare-fun m!803563 () Bool)

(assert (=> b!553758 m!803563))

(declare-fun m!803565 () Bool)

(assert (=> b!553758 m!803565))

(declare-fun m!803567 () Bool)

(assert (=> b!553758 m!803567))

(declare-fun m!803569 () Bool)

(assert (=> b!553758 m!803569))

(declare-fun m!803571 () Bool)

(assert (=> b!553758 m!803571))

(assert (=> b!553758 m!803565))

(declare-fun m!803573 () Bool)

(assert (=> b!553758 m!803573))

(declare-fun m!803575 () Bool)

(assert (=> b!553758 m!803575))

(declare-fun m!803577 () Bool)

(assert (=> b!553758 m!803577))

(declare-fun m!803579 () Bool)

(assert (=> b!553758 m!803579))

(declare-fun m!803581 () Bool)

(assert (=> b!553758 m!803581))

(declare-fun m!803583 () Bool)

(assert (=> b!553758 m!803583))

(declare-fun m!803585 () Bool)

(assert (=> b!553758 m!803585))

(declare-fun m!803587 () Bool)

(assert (=> b!553758 m!803587))

(declare-fun m!803589 () Bool)

(assert (=> b!553758 m!803589))

(declare-fun m!803591 () Bool)

(assert (=> b!553758 m!803591))

(declare-fun m!803593 () Bool)

(assert (=> b!553758 m!803593))

(declare-fun m!803595 () Bool)

(assert (=> b!553758 m!803595))

(declare-fun m!803597 () Bool)

(assert (=> b!553758 m!803597))

(declare-fun m!803599 () Bool)

(assert (=> b!553758 m!803599))

(declare-fun m!803601 () Bool)

(assert (=> b!553758 m!803601))

(assert (=> b!553758 m!803579))

(declare-fun m!803603 () Bool)

(assert (=> b!553758 m!803603))

(assert (=> b!553758 m!803559))

(declare-fun m!803605 () Bool)

(assert (=> b!553758 m!803605))

(declare-fun m!803607 () Bool)

(assert (=> b!553758 m!803607))

(declare-fun m!803609 () Bool)

(assert (=> b!553758 m!803609))

(declare-fun m!803611 () Bool)

(assert (=> b!553758 m!803611))

(declare-fun m!803613 () Bool)

(assert (=> b!553746 m!803613))

(declare-fun m!803615 () Bool)

(assert (=> b!553746 m!803615))

(declare-fun m!803617 () Bool)

(assert (=> b!553746 m!803617))

(declare-fun m!803619 () Bool)

(assert (=> b!553748 m!803619))

(declare-fun m!803621 () Bool)

(assert (=> b!553762 m!803621))

(declare-fun m!803623 () Bool)

(assert (=> b!553769 m!803623))

(declare-fun m!803625 () Bool)

(assert (=> b!553764 m!803625))

(declare-fun m!803627 () Bool)

(assert (=> b!553761 m!803627))

(declare-fun m!803629 () Bool)

(assert (=> b!553760 m!803629))

(declare-fun m!803631 () Bool)

(assert (=> b!553757 m!803631))

(declare-fun m!803633 () Bool)

(assert (=> b!553773 m!803633))

(declare-fun m!803635 () Bool)

(assert (=> b!553773 m!803635))

(push 1)

(assert (not b!553758))

(assert (not b!553771))

(assert b_and!54105)

(assert (not b!553750))

(assert (not b!553756))

(assert b_and!54099)

(assert b_and!54103)

(assert b_and!54101)

(assert (not b!553765))

(assert (not b!553760))

(assert (not b!553773))

(assert (not b!553754))

(assert (not b!553769))

(assert (not b!553763))

(assert (not b!553755))

(assert (not b!553746))

(assert (not b!553762))

(assert (not b!553751))

(assert (not b!553757))

(assert (not b!553761))

(assert (not b!553747))

(assert (not start!51314))

(assert tp_is_empty!3127)

(assert (not b_next!15565))

(assert (not b!553764))

(assert (not b!553748))

(assert (not b_next!15567))

(assert (not b_next!15563))

(assert (not b!553753))

(assert (not b!553766))

(assert (not b_next!15561))

(check-sat)

(pop 1)

(push 1)

(assert b_and!54105)

(assert b_and!54099)

(assert (not b_next!15565))

(assert b_and!54103)

(assert b_and!54101)

(assert (not b_next!15567))

(assert (not b_next!15563))

(assert (not b_next!15561))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!192994 () Bool)

(assert (=> d!192994 (= (inv!6910 (tag!1314 (h!10909 rules!3103))) (= (mod (str.len (value!34849 (tag!1314 (h!10909 rules!3103)))) 2) 0))))

(assert (=> b!553756 d!192994))

(declare-fun d!192996 () Bool)

(declare-fun res!237616 () Bool)

(declare-fun e!335203 () Bool)

(assert (=> d!192996 (=> (not res!237616) (not e!335203))))

(declare-fun semiInverseModEq!402 (Int Int) Bool)

(assert (=> d!192996 (= res!237616 (semiInverseModEq!402 (toChars!1762 (transformation!1052 (h!10909 rules!3103))) (toValue!1903 (transformation!1052 (h!10909 rules!3103)))))))

(assert (=> d!192996 (= (inv!6913 (transformation!1052 (h!10909 rules!3103))) e!335203)))

(declare-fun b!553860 () Bool)

(declare-fun equivClasses!385 (Int Int) Bool)

(assert (=> b!553860 (= e!335203 (equivClasses!385 (toChars!1762 (transformation!1052 (h!10909 rules!3103))) (toValue!1903 (transformation!1052 (h!10909 rules!3103)))))))

(assert (= (and d!192996 res!237616) b!553860))

(declare-fun m!803751 () Bool)

(assert (=> d!192996 m!803751))

(declare-fun m!803753 () Bool)

(assert (=> b!553860 m!803753))

(assert (=> b!553756 d!192996))

(declare-fun d!192998 () Bool)

(declare-fun isEmpty!3976 (Option!1402) Bool)

(assert (=> d!192998 (= (isDefined!1214 lt!233675) (not (isEmpty!3976 lt!233675)))))

(declare-fun bs!67976 () Bool)

(assert (= bs!67976 d!192998))

(declare-fun m!803755 () Bool)

(assert (=> bs!67976 m!803755))

(assert (=> b!553746 d!192998))

(declare-fun bm!38451 () Bool)

(declare-fun call!38456 () Option!1402)

(assert (=> bm!38451 (= call!38456 (maxPrefixOneRule!337 thiss!22590 (h!10909 rules!3103) lt!233676))))

(declare-fun b!553879 () Bool)

(declare-fun res!237639 () Bool)

(declare-fun e!335212 () Bool)

(assert (=> b!553879 (=> (not res!237639) (not e!335212))))

(declare-fun lt!233795 () Option!1402)

(assert (=> b!553879 (= res!237639 (= (list!2282 (charsOf!681 (_1!3521 (get!2093 lt!233795)))) (originalCharacters!1091 (_1!3521 (get!2093 lt!233795)))))))

(declare-fun d!193000 () Bool)

(declare-fun e!335210 () Bool)

(assert (=> d!193000 e!335210))

(declare-fun res!237640 () Bool)

(assert (=> d!193000 (=> res!237640 e!335210)))

(assert (=> d!193000 (= res!237640 (isEmpty!3976 lt!233795))))

(declare-fun e!335211 () Option!1402)

(assert (=> d!193000 (= lt!233795 e!335211)))

(declare-fun c!103984 () Bool)

(assert (=> d!193000 (= c!103984 (and (is-Cons!5508 rules!3103) (is-Nil!5508 (t!75289 rules!3103))))))

(declare-fun lt!233794 () Unit!9756)

(declare-fun lt!233798 () Unit!9756)

(assert (=> d!193000 (= lt!233794 lt!233798)))

(assert (=> d!193000 (isPrefix!686 lt!233676 lt!233676)))

(assert (=> d!193000 (= lt!233798 (lemmaIsPrefixRefl!424 lt!233676 lt!233676))))

(declare-fun rulesValidInductive!371 (LexerInterface!938 List!5518) Bool)

(assert (=> d!193000 (rulesValidInductive!371 thiss!22590 rules!3103)))

(assert (=> d!193000 (= (maxPrefix!636 thiss!22590 rules!3103 lt!233676) lt!233795)))

(declare-fun b!553880 () Bool)

(declare-fun res!237634 () Bool)

(assert (=> b!553880 (=> (not res!237634) (not e!335212))))

(assert (=> b!553880 (= res!237634 (= (++!1540 (list!2282 (charsOf!681 (_1!3521 (get!2093 lt!233795)))) (_2!3521 (get!2093 lt!233795))) lt!233676))))

(declare-fun b!553881 () Bool)

(assert (=> b!553881 (= e!335212 (contains!1284 rules!3103 (rule!1780 (_1!3521 (get!2093 lt!233795)))))))

(declare-fun b!553882 () Bool)

(assert (=> b!553882 (= e!335210 e!335212)))

(declare-fun res!237636 () Bool)

(assert (=> b!553882 (=> (not res!237636) (not e!335212))))

(assert (=> b!553882 (= res!237636 (isDefined!1214 lt!233795))))

(declare-fun b!553883 () Bool)

(declare-fun lt!233796 () Option!1402)

(declare-fun lt!233797 () Option!1402)

(assert (=> b!553883 (= e!335211 (ite (and (is-None!1401 lt!233796) (is-None!1401 lt!233797)) None!1401 (ite (is-None!1401 lt!233797) lt!233796 (ite (is-None!1401 lt!233796) lt!233797 (ite (>= (size!4392 (_1!3521 (v!16230 lt!233796))) (size!4392 (_1!3521 (v!16230 lt!233797)))) lt!233796 lt!233797)))))))

(assert (=> b!553883 (= lt!233796 call!38456)))

(assert (=> b!553883 (= lt!233797 (maxPrefix!636 thiss!22590 (t!75289 rules!3103) lt!233676))))

(declare-fun b!553884 () Bool)

(assert (=> b!553884 (= e!335211 call!38456)))

(declare-fun b!553885 () Bool)

(declare-fun res!237638 () Bool)

(assert (=> b!553885 (=> (not res!237638) (not e!335212))))

(assert (=> b!553885 (= res!237638 (= (value!34850 (_1!3521 (get!2093 lt!233795))) (apply!1317 (transformation!1052 (rule!1780 (_1!3521 (get!2093 lt!233795)))) (seqFromList!1240 (originalCharacters!1091 (_1!3521 (get!2093 lt!233795)))))))))

(declare-fun b!553886 () Bool)

(declare-fun res!237637 () Bool)

(assert (=> b!553886 (=> (not res!237637) (not e!335212))))

(assert (=> b!553886 (= res!237637 (< (size!4393 (_2!3521 (get!2093 lt!233795))) (size!4393 lt!233676)))))

(declare-fun b!553887 () Bool)

(declare-fun res!237635 () Bool)

(assert (=> b!553887 (=> (not res!237635) (not e!335212))))

(declare-fun matchR!533 (Regex!1386 List!5517) Bool)

(assert (=> b!553887 (= res!237635 (matchR!533 (regex!1052 (rule!1780 (_1!3521 (get!2093 lt!233795)))) (list!2282 (charsOf!681 (_1!3521 (get!2093 lt!233795))))))))

(assert (= (and d!193000 c!103984) b!553884))

(assert (= (and d!193000 (not c!103984)) b!553883))

(assert (= (or b!553884 b!553883) bm!38451))

(assert (= (and d!193000 (not res!237640)) b!553882))

(assert (= (and b!553882 res!237636) b!553879))

(assert (= (and b!553879 res!237639) b!553886))

(assert (= (and b!553886 res!237637) b!553880))

(assert (= (and b!553880 res!237634) b!553885))

(assert (= (and b!553885 res!237638) b!553887))

(assert (= (and b!553887 res!237635) b!553881))

(declare-fun m!803759 () Bool)

(assert (=> d!193000 m!803759))

(declare-fun m!803761 () Bool)

(assert (=> d!193000 m!803761))

(declare-fun m!803763 () Bool)

(assert (=> d!193000 m!803763))

(declare-fun m!803765 () Bool)

(assert (=> d!193000 m!803765))

(declare-fun m!803767 () Bool)

(assert (=> b!553883 m!803767))

(declare-fun m!803769 () Bool)

(assert (=> b!553880 m!803769))

(declare-fun m!803771 () Bool)

(assert (=> b!553880 m!803771))

(assert (=> b!553880 m!803771))

(declare-fun m!803773 () Bool)

(assert (=> b!553880 m!803773))

(assert (=> b!553880 m!803773))

(declare-fun m!803775 () Bool)

(assert (=> b!553880 m!803775))

(assert (=> b!553885 m!803769))

(declare-fun m!803777 () Bool)

(assert (=> b!553885 m!803777))

(assert (=> b!553885 m!803777))

(declare-fun m!803779 () Bool)

(assert (=> b!553885 m!803779))

(declare-fun m!803781 () Bool)

(assert (=> bm!38451 m!803781))

(assert (=> b!553881 m!803769))

(declare-fun m!803783 () Bool)

(assert (=> b!553881 m!803783))

(assert (=> b!553886 m!803769))

(declare-fun m!803785 () Bool)

(assert (=> b!553886 m!803785))

(declare-fun m!803787 () Bool)

(assert (=> b!553886 m!803787))

(assert (=> b!553879 m!803769))

(assert (=> b!553879 m!803771))

(assert (=> b!553879 m!803771))

(assert (=> b!553879 m!803773))

(assert (=> b!553887 m!803769))

(assert (=> b!553887 m!803771))

(assert (=> b!553887 m!803771))

(assert (=> b!553887 m!803773))

(assert (=> b!553887 m!803773))

(declare-fun m!803789 () Bool)

(assert (=> b!553887 m!803789))

(declare-fun m!803791 () Bool)

(assert (=> b!553882 m!803791))

(assert (=> b!553746 d!193000))

(declare-fun d!193006 () Bool)

(declare-fun e!335217 () Bool)

(assert (=> d!193006 e!335217))

(declare-fun res!237646 () Bool)

(assert (=> d!193006 (=> (not res!237646) (not e!335217))))

(declare-fun lt!233801 () List!5517)

(declare-fun content!959 (List!5517) (Set C!3694))

(assert (=> d!193006 (= res!237646 (= (content!959 lt!233801) (set.union (content!959 input!2705) (content!959 suffix!1342))))))

(declare-fun e!335218 () List!5517)

(assert (=> d!193006 (= lt!233801 e!335218)))

(declare-fun c!103987 () Bool)

(assert (=> d!193006 (= c!103987 (is-Nil!5507 input!2705))))

(assert (=> d!193006 (= (++!1540 input!2705 suffix!1342) lt!233801)))

(declare-fun b!553899 () Bool)

(assert (=> b!553899 (= e!335217 (or (not (= suffix!1342 Nil!5507)) (= lt!233801 input!2705)))))

(declare-fun b!553896 () Bool)

(assert (=> b!553896 (= e!335218 suffix!1342)))

(declare-fun b!553898 () Bool)

(declare-fun res!237645 () Bool)

(assert (=> b!553898 (=> (not res!237645) (not e!335217))))

(assert (=> b!553898 (= res!237645 (= (size!4393 lt!233801) (+ (size!4393 input!2705) (size!4393 suffix!1342))))))

(declare-fun b!553897 () Bool)

(assert (=> b!553897 (= e!335218 (Cons!5507 (h!10908 input!2705) (++!1540 (t!75288 input!2705) suffix!1342)))))

(assert (= (and d!193006 c!103987) b!553896))

(assert (= (and d!193006 (not c!103987)) b!553897))

(assert (= (and d!193006 res!237646) b!553898))

(assert (= (and b!553898 res!237645) b!553899))

(declare-fun m!803793 () Bool)

(assert (=> d!193006 m!803793))

(declare-fun m!803795 () Bool)

(assert (=> d!193006 m!803795))

(declare-fun m!803797 () Bool)

(assert (=> d!193006 m!803797))

(declare-fun m!803799 () Bool)

(assert (=> b!553898 m!803799))

(declare-fun m!803801 () Bool)

(assert (=> b!553898 m!803801))

(declare-fun m!803803 () Bool)

(assert (=> b!553898 m!803803))

(declare-fun m!803805 () Bool)

(assert (=> b!553897 m!803805))

(assert (=> b!553746 d!193006))

(declare-fun d!193008 () Bool)

(declare-fun res!237651 () Bool)

(declare-fun e!335221 () Bool)

(assert (=> d!193008 (=> (not res!237651) (not e!335221))))

(assert (=> d!193008 (= res!237651 (not (isEmpty!3973 (originalCharacters!1091 token!491))))))

(assert (=> d!193008 (= (inv!6914 token!491) e!335221)))

(declare-fun b!553904 () Bool)

(declare-fun res!237652 () Bool)

(assert (=> b!553904 (=> (not res!237652) (not e!335221))))

(declare-fun dynLambda!3194 (Int TokenValue!1076) BalanceConc!3546)

(assert (=> b!553904 (= res!237652 (= (originalCharacters!1091 token!491) (list!2282 (dynLambda!3194 (toChars!1762 (transformation!1052 (rule!1780 token!491))) (value!34850 token!491)))))))

(declare-fun b!553905 () Bool)

(assert (=> b!553905 (= e!335221 (= (size!4392 token!491) (size!4393 (originalCharacters!1091 token!491))))))

(assert (= (and d!193008 res!237651) b!553904))

(assert (= (and b!553904 res!237652) b!553905))

(declare-fun b_lambda!21287 () Bool)

(assert (=> (not b_lambda!21287) (not b!553904)))

(declare-fun t!75294 () Bool)

(declare-fun tb!48339 () Bool)

(assert (=> (and b!553768 (= (toChars!1762 (transformation!1052 (rule!1780 token!491))) (toChars!1762 (transformation!1052 (rule!1780 token!491)))) t!75294) tb!48339))

(declare-fun b!553910 () Bool)

(declare-fun e!335224 () Bool)

(declare-fun tp!175229 () Bool)

(declare-fun inv!6917 (Conc!1769) Bool)

(assert (=> b!553910 (= e!335224 (and (inv!6917 (c!103975 (dynLambda!3194 (toChars!1762 (transformation!1052 (rule!1780 token!491))) (value!34850 token!491)))) tp!175229))))

(declare-fun result!54118 () Bool)

(declare-fun inv!6918 (BalanceConc!3546) Bool)

(assert (=> tb!48339 (= result!54118 (and (inv!6918 (dynLambda!3194 (toChars!1762 (transformation!1052 (rule!1780 token!491))) (value!34850 token!491))) e!335224))))

(assert (= tb!48339 b!553910))

(declare-fun m!803807 () Bool)

(assert (=> b!553910 m!803807))

(declare-fun m!803809 () Bool)

(assert (=> tb!48339 m!803809))

(assert (=> b!553904 t!75294))

(declare-fun b_and!54115 () Bool)

(assert (= b_and!54101 (and (=> t!75294 result!54118) b_and!54115)))

(declare-fun t!75296 () Bool)

(declare-fun tb!48341 () Bool)

(assert (=> (and b!553767 (= (toChars!1762 (transformation!1052 (h!10909 rules!3103))) (toChars!1762 (transformation!1052 (rule!1780 token!491)))) t!75296) tb!48341))

(declare-fun result!54122 () Bool)

(assert (= result!54122 result!54118))

(assert (=> b!553904 t!75296))

(declare-fun b_and!54117 () Bool)

(assert (= b_and!54105 (and (=> t!75296 result!54122) b_and!54117)))

(declare-fun m!803811 () Bool)

(assert (=> d!193008 m!803811))

(declare-fun m!803813 () Bool)

(assert (=> b!553904 m!803813))

(assert (=> b!553904 m!803813))

(declare-fun m!803815 () Bool)

(assert (=> b!553904 m!803815))

(assert (=> b!553905 m!803631))

(assert (=> start!51314 d!193008))

(declare-fun d!193010 () Bool)

(declare-fun lt!233804 () Int)

(assert (=> d!193010 (>= lt!233804 0)))

(declare-fun e!335227 () Int)

(assert (=> d!193010 (= lt!233804 e!335227)))

(declare-fun c!103990 () Bool)

(assert (=> d!193010 (= c!103990 (is-Nil!5507 (originalCharacters!1091 token!491)))))

(assert (=> d!193010 (= (size!4393 (originalCharacters!1091 token!491)) lt!233804)))

(declare-fun b!553915 () Bool)

(assert (=> b!553915 (= e!335227 0)))

(declare-fun b!553916 () Bool)

(assert (=> b!553916 (= e!335227 (+ 1 (size!4393 (t!75288 (originalCharacters!1091 token!491)))))))

(assert (= (and d!193010 c!103990) b!553915))

(assert (= (and d!193010 (not c!103990)) b!553916))

(declare-fun m!803817 () Bool)

(assert (=> b!553916 m!803817))

(assert (=> b!553757 d!193010))

(declare-fun b!553927 () Bool)

(declare-fun e!335234 () Bool)

(declare-fun tail!730 (List!5517) List!5517)

(assert (=> b!553927 (= e!335234 (isPrefix!686 (tail!730 input!2705) (tail!730 lt!233673)))))

(declare-fun b!553926 () Bool)

(declare-fun res!237664 () Bool)

(assert (=> b!553926 (=> (not res!237664) (not e!335234))))

(declare-fun head!1201 (List!5517) C!3694)

(assert (=> b!553926 (= res!237664 (= (head!1201 input!2705) (head!1201 lt!233673)))))

(declare-fun b!553925 () Bool)

(declare-fun e!335236 () Bool)

(assert (=> b!553925 (= e!335236 e!335234)))

(declare-fun res!237662 () Bool)

(assert (=> b!553925 (=> (not res!237662) (not e!335234))))

(assert (=> b!553925 (= res!237662 (not (is-Nil!5507 lt!233673)))))

(declare-fun d!193012 () Bool)

(declare-fun e!335235 () Bool)

(assert (=> d!193012 e!335235))

(declare-fun res!237663 () Bool)

(assert (=> d!193012 (=> res!237663 e!335235)))

(declare-fun lt!233807 () Bool)

(assert (=> d!193012 (= res!237663 (not lt!233807))))

(assert (=> d!193012 (= lt!233807 e!335236)))

(declare-fun res!237661 () Bool)

(assert (=> d!193012 (=> res!237661 e!335236)))

(assert (=> d!193012 (= res!237661 (is-Nil!5507 input!2705))))

(assert (=> d!193012 (= (isPrefix!686 input!2705 lt!233673) lt!233807)))

(declare-fun b!553928 () Bool)

(assert (=> b!553928 (= e!335235 (>= (size!4393 lt!233673) (size!4393 input!2705)))))

(assert (= (and d!193012 (not res!237661)) b!553925))

(assert (= (and b!553925 res!237662) b!553926))

(assert (= (and b!553926 res!237664) b!553927))

(assert (= (and d!193012 (not res!237663)) b!553928))

(declare-fun m!803819 () Bool)

(assert (=> b!553927 m!803819))

(declare-fun m!803821 () Bool)

(assert (=> b!553927 m!803821))

(assert (=> b!553927 m!803819))

(assert (=> b!553927 m!803821))

(declare-fun m!803823 () Bool)

(assert (=> b!553927 m!803823))

(declare-fun m!803825 () Bool)

(assert (=> b!553926 m!803825))

(declare-fun m!803827 () Bool)

(assert (=> b!553926 m!803827))

(declare-fun m!803829 () Bool)

(assert (=> b!553928 m!803829))

(assert (=> b!553928 m!803801))

(assert (=> b!553758 d!193012))

(declare-fun d!193014 () Bool)

(declare-fun fromListB!538 (List!5517) BalanceConc!3546)

(assert (=> d!193014 (= (seqFromList!1240 lt!233680) (fromListB!538 lt!233680))))

(declare-fun bs!67978 () Bool)

(assert (= bs!67978 d!193014))

(declare-fun m!803831 () Bool)

(assert (=> bs!67978 m!803831))

(assert (=> b!553758 d!193014))

(declare-fun d!193016 () Bool)

(declare-fun lt!233810 () List!5517)

(assert (=> d!193016 (= (++!1540 lt!233680 lt!233810) input!2705)))

(declare-fun e!335239 () List!5517)

(assert (=> d!193016 (= lt!233810 e!335239)))

(declare-fun c!103993 () Bool)

(assert (=> d!193016 (= c!103993 (is-Cons!5507 lt!233680))))

(assert (=> d!193016 (>= (size!4393 input!2705) (size!4393 lt!233680))))

(assert (=> d!193016 (= (getSuffix!205 input!2705 lt!233680) lt!233810)))

(declare-fun b!553933 () Bool)

(assert (=> b!553933 (= e!335239 (getSuffix!205 (tail!730 input!2705) (t!75288 lt!233680)))))

(declare-fun b!553934 () Bool)

(assert (=> b!553934 (= e!335239 input!2705)))

(assert (= (and d!193016 c!103993) b!553933))

(assert (= (and d!193016 (not c!103993)) b!553934))

(declare-fun m!803833 () Bool)

(assert (=> d!193016 m!803833))

(assert (=> d!193016 m!803801))

(assert (=> d!193016 m!803567))

(assert (=> b!553933 m!803819))

(assert (=> b!553933 m!803819))

(declare-fun m!803835 () Bool)

(assert (=> b!553933 m!803835))

(assert (=> b!553758 d!193016))

(declare-fun b!553937 () Bool)

(declare-fun e!335240 () Bool)

(assert (=> b!553937 (= e!335240 (isPrefix!686 (tail!730 input!2705) (tail!730 lt!233676)))))

(declare-fun b!553936 () Bool)

(declare-fun res!237668 () Bool)

(assert (=> b!553936 (=> (not res!237668) (not e!335240))))

(assert (=> b!553936 (= res!237668 (= (head!1201 input!2705) (head!1201 lt!233676)))))

(declare-fun b!553935 () Bool)

(declare-fun e!335242 () Bool)

(assert (=> b!553935 (= e!335242 e!335240)))

(declare-fun res!237666 () Bool)

(assert (=> b!553935 (=> (not res!237666) (not e!335240))))

(assert (=> b!553935 (= res!237666 (not (is-Nil!5507 lt!233676)))))

(declare-fun d!193018 () Bool)

(declare-fun e!335241 () Bool)

(assert (=> d!193018 e!335241))

(declare-fun res!237667 () Bool)

(assert (=> d!193018 (=> res!237667 e!335241)))

(declare-fun lt!233811 () Bool)

(assert (=> d!193018 (= res!237667 (not lt!233811))))

(assert (=> d!193018 (= lt!233811 e!335242)))

(declare-fun res!237665 () Bool)

(assert (=> d!193018 (=> res!237665 e!335242)))

(assert (=> d!193018 (= res!237665 (is-Nil!5507 input!2705))))

(assert (=> d!193018 (= (isPrefix!686 input!2705 lt!233676) lt!233811)))

(declare-fun b!553938 () Bool)

(assert (=> b!553938 (= e!335241 (>= (size!4393 lt!233676) (size!4393 input!2705)))))

(assert (= (and d!193018 (not res!237665)) b!553935))

(assert (= (and b!553935 res!237666) b!553936))

(assert (= (and b!553936 res!237668) b!553937))

(assert (= (and d!193018 (not res!237667)) b!553938))

(assert (=> b!553937 m!803819))

(declare-fun m!803837 () Bool)

(assert (=> b!553937 m!803837))

(assert (=> b!553937 m!803819))

(assert (=> b!553937 m!803837))

(declare-fun m!803839 () Bool)

(assert (=> b!553937 m!803839))

(assert (=> b!553936 m!803825))

(declare-fun m!803841 () Bool)

(assert (=> b!553936 m!803841))

(assert (=> b!553938 m!803787))

(assert (=> b!553938 m!803801))

(assert (=> b!553758 d!193018))

(declare-fun b!553941 () Bool)

(declare-fun e!335243 () Bool)

(assert (=> b!553941 (= e!335243 (isPrefix!686 (tail!730 lt!233683) (tail!730 lt!233673)))))

(declare-fun b!553940 () Bool)

(declare-fun res!237672 () Bool)

(assert (=> b!553940 (=> (not res!237672) (not e!335243))))

(assert (=> b!553940 (= res!237672 (= (head!1201 lt!233683) (head!1201 lt!233673)))))

(declare-fun b!553939 () Bool)

(declare-fun e!335245 () Bool)

(assert (=> b!553939 (= e!335245 e!335243)))

(declare-fun res!237670 () Bool)

(assert (=> b!553939 (=> (not res!237670) (not e!335243))))

(assert (=> b!553939 (= res!237670 (not (is-Nil!5507 lt!233673)))))

(declare-fun d!193020 () Bool)

(declare-fun e!335244 () Bool)

(assert (=> d!193020 e!335244))

(declare-fun res!237671 () Bool)

(assert (=> d!193020 (=> res!237671 e!335244)))

(declare-fun lt!233812 () Bool)

(assert (=> d!193020 (= res!237671 (not lt!233812))))

(assert (=> d!193020 (= lt!233812 e!335245)))

(declare-fun res!237669 () Bool)

(assert (=> d!193020 (=> res!237669 e!335245)))

(assert (=> d!193020 (= res!237669 (is-Nil!5507 lt!233683))))

(assert (=> d!193020 (= (isPrefix!686 lt!233683 lt!233673) lt!233812)))

(declare-fun b!553942 () Bool)

(assert (=> b!553942 (= e!335244 (>= (size!4393 lt!233673) (size!4393 lt!233683)))))

(assert (= (and d!193020 (not res!237669)) b!553939))

(assert (= (and b!553939 res!237670) b!553940))

(assert (= (and b!553940 res!237672) b!553941))

(assert (= (and d!193020 (not res!237671)) b!553942))

(declare-fun m!803843 () Bool)

(assert (=> b!553941 m!803843))

(assert (=> b!553941 m!803821))

(assert (=> b!553941 m!803843))

(assert (=> b!553941 m!803821))

(declare-fun m!803845 () Bool)

(assert (=> b!553941 m!803845))

(declare-fun m!803847 () Bool)

(assert (=> b!553940 m!803847))

(assert (=> b!553940 m!803827))

(assert (=> b!553942 m!803829))

(assert (=> b!553942 m!803583))

(assert (=> b!553758 d!193020))

(declare-fun b!553945 () Bool)

(declare-fun e!335246 () Bool)

(assert (=> b!553945 (= e!335246 (isPrefix!686 (tail!730 input!2705) (tail!730 input!2705)))))

(declare-fun b!553944 () Bool)

(declare-fun res!237676 () Bool)

(assert (=> b!553944 (=> (not res!237676) (not e!335246))))

(assert (=> b!553944 (= res!237676 (= (head!1201 input!2705) (head!1201 input!2705)))))

(declare-fun b!553943 () Bool)

(declare-fun e!335248 () Bool)

(assert (=> b!553943 (= e!335248 e!335246)))

(declare-fun res!237674 () Bool)

(assert (=> b!553943 (=> (not res!237674) (not e!335246))))

(assert (=> b!553943 (= res!237674 (not (is-Nil!5507 input!2705)))))

(declare-fun d!193022 () Bool)

(declare-fun e!335247 () Bool)

(assert (=> d!193022 e!335247))

(declare-fun res!237675 () Bool)

(assert (=> d!193022 (=> res!237675 e!335247)))

(declare-fun lt!233813 () Bool)

(assert (=> d!193022 (= res!237675 (not lt!233813))))

(assert (=> d!193022 (= lt!233813 e!335248)))

(declare-fun res!237673 () Bool)

(assert (=> d!193022 (=> res!237673 e!335248)))

(assert (=> d!193022 (= res!237673 (is-Nil!5507 input!2705))))

(assert (=> d!193022 (= (isPrefix!686 input!2705 input!2705) lt!233813)))

(declare-fun b!553946 () Bool)

(assert (=> b!553946 (= e!335247 (>= (size!4393 input!2705) (size!4393 input!2705)))))

(assert (= (and d!193022 (not res!237673)) b!553943))

(assert (= (and b!553943 res!237674) b!553944))

(assert (= (and b!553944 res!237676) b!553945))

(assert (= (and d!193022 (not res!237675)) b!553946))

(assert (=> b!553945 m!803819))

(assert (=> b!553945 m!803819))

(assert (=> b!553945 m!803819))

(assert (=> b!553945 m!803819))

(declare-fun m!803849 () Bool)

(assert (=> b!553945 m!803849))

(assert (=> b!553944 m!803825))

(assert (=> b!553944 m!803825))

(assert (=> b!553946 m!803801))

(assert (=> b!553946 m!803801))

(assert (=> b!553758 d!193022))

(declare-fun b!553949 () Bool)

(declare-fun e!335249 () Bool)

(assert (=> b!553949 (= e!335249 (isPrefix!686 (tail!730 lt!233680) (tail!730 (++!1540 lt!233680 (_2!3521 (v!16230 lt!233665))))))))

(declare-fun b!553948 () Bool)

(declare-fun res!237680 () Bool)

(assert (=> b!553948 (=> (not res!237680) (not e!335249))))

(assert (=> b!553948 (= res!237680 (= (head!1201 lt!233680) (head!1201 (++!1540 lt!233680 (_2!3521 (v!16230 lt!233665))))))))

(declare-fun b!553947 () Bool)

(declare-fun e!335251 () Bool)

(assert (=> b!553947 (= e!335251 e!335249)))

(declare-fun res!237678 () Bool)

(assert (=> b!553947 (=> (not res!237678) (not e!335249))))

(assert (=> b!553947 (= res!237678 (not (is-Nil!5507 (++!1540 lt!233680 (_2!3521 (v!16230 lt!233665))))))))

(declare-fun d!193024 () Bool)

(declare-fun e!335250 () Bool)

(assert (=> d!193024 e!335250))

(declare-fun res!237679 () Bool)

(assert (=> d!193024 (=> res!237679 e!335250)))

(declare-fun lt!233814 () Bool)

(assert (=> d!193024 (= res!237679 (not lt!233814))))

(assert (=> d!193024 (= lt!233814 e!335251)))

(declare-fun res!237677 () Bool)

(assert (=> d!193024 (=> res!237677 e!335251)))

(assert (=> d!193024 (= res!237677 (is-Nil!5507 lt!233680))))

(assert (=> d!193024 (= (isPrefix!686 lt!233680 (++!1540 lt!233680 (_2!3521 (v!16230 lt!233665)))) lt!233814)))

(declare-fun b!553950 () Bool)

(assert (=> b!553950 (= e!335250 (>= (size!4393 (++!1540 lt!233680 (_2!3521 (v!16230 lt!233665)))) (size!4393 lt!233680)))))

(assert (= (and d!193024 (not res!237677)) b!553947))

(assert (= (and b!553947 res!237678) b!553948))

(assert (= (and b!553948 res!237680) b!553949))

(assert (= (and d!193024 (not res!237679)) b!553950))

(declare-fun m!803851 () Bool)

(assert (=> b!553949 m!803851))

(assert (=> b!553949 m!803565))

(declare-fun m!803853 () Bool)

(assert (=> b!553949 m!803853))

(assert (=> b!553949 m!803851))

(assert (=> b!553949 m!803853))

(declare-fun m!803855 () Bool)

(assert (=> b!553949 m!803855))

(declare-fun m!803857 () Bool)

(assert (=> b!553948 m!803857))

(assert (=> b!553948 m!803565))

(declare-fun m!803859 () Bool)

(assert (=> b!553948 m!803859))

(assert (=> b!553950 m!803565))

(declare-fun m!803861 () Bool)

(assert (=> b!553950 m!803861))

(assert (=> b!553950 m!803567))

(assert (=> b!553758 d!193024))

(declare-fun d!193026 () Bool)

(declare-fun lt!233815 () Int)

(assert (=> d!193026 (>= lt!233815 0)))

(declare-fun e!335252 () Int)

(assert (=> d!193026 (= lt!233815 e!335252)))

(declare-fun c!103994 () Bool)

(assert (=> d!193026 (= c!103994 (is-Nil!5507 lt!233683))))

(assert (=> d!193026 (= (size!4393 lt!233683) lt!233815)))

(declare-fun b!553951 () Bool)

(assert (=> b!553951 (= e!335252 0)))

(declare-fun b!553952 () Bool)

(assert (=> b!553952 (= e!335252 (+ 1 (size!4393 (t!75288 lt!233683))))))

(assert (= (and d!193026 c!103994) b!553951))

(assert (= (and d!193026 (not c!103994)) b!553952))

(declare-fun m!803863 () Bool)

(assert (=> b!553952 m!803863))

(assert (=> b!553758 d!193026))

(declare-fun d!193028 () Bool)

(declare-fun e!335255 () Bool)

(assert (=> d!193028 e!335255))

(declare-fun res!237683 () Bool)

(assert (=> d!193028 (=> (not res!237683) (not e!335255))))

(assert (=> d!193028 (= res!237683 (semiInverseModEq!402 (toChars!1762 (transformation!1052 (rule!1780 token!491))) (toValue!1903 (transformation!1052 (rule!1780 token!491)))))))

(declare-fun Unit!9765 () Unit!9756)

(assert (=> d!193028 (= (lemmaInv!188 (transformation!1052 (rule!1780 token!491))) Unit!9765)))

(declare-fun b!553955 () Bool)

(assert (=> b!553955 (= e!335255 (equivClasses!385 (toChars!1762 (transformation!1052 (rule!1780 token!491))) (toValue!1903 (transformation!1052 (rule!1780 token!491)))))))

(assert (= (and d!193028 res!237683) b!553955))

(declare-fun m!803865 () Bool)

(assert (=> d!193028 m!803865))

(declare-fun m!803867 () Bool)

(assert (=> b!553955 m!803867))

(assert (=> b!553758 d!193028))

(declare-fun d!193030 () Bool)

(assert (=> d!193030 (= (size!4392 token!491) (size!4393 (originalCharacters!1091 token!491)))))

(declare-fun Unit!9766 () Unit!9756)

(assert (=> d!193030 (= (lemmaCharactersSize!119 token!491) Unit!9766)))

(declare-fun bs!67979 () Bool)

(assert (= bs!67979 d!193030))

(assert (=> bs!67979 m!803631))

(assert (=> b!553758 d!193030))

(declare-fun d!193032 () Bool)

(declare-fun lt!233816 () Int)

(assert (=> d!193032 (>= lt!233816 0)))

(declare-fun e!335256 () Int)

(assert (=> d!193032 (= lt!233816 e!335256)))

(declare-fun c!103995 () Bool)

(assert (=> d!193032 (= c!103995 (is-Nil!5507 lt!233680))))

(assert (=> d!193032 (= (size!4393 lt!233680) lt!233816)))

(declare-fun b!553956 () Bool)

(assert (=> b!553956 (= e!335256 0)))

(declare-fun b!553957 () Bool)

(assert (=> b!553957 (= e!335256 (+ 1 (size!4393 (t!75288 lt!233680))))))

(assert (= (and d!193032 c!103995) b!553956))

(assert (= (and d!193032 (not c!103995)) b!553957))

(declare-fun m!803869 () Bool)

(assert (=> b!553957 m!803869))

(assert (=> b!553758 d!193032))

(declare-fun d!193034 () Bool)

(assert (=> d!193034 (isPrefix!686 lt!233683 (++!1540 lt!233683 suffix!1342))))

(declare-fun lt!233819 () Unit!9756)

(declare-fun choose!3945 (List!5517 List!5517) Unit!9756)

(assert (=> d!193034 (= lt!233819 (choose!3945 lt!233683 suffix!1342))))

(assert (=> d!193034 (= (lemmaConcatTwoListThenFirstIsPrefix!533 lt!233683 suffix!1342) lt!233819)))

(declare-fun bs!67980 () Bool)

(assert (= bs!67980 d!193034))

(assert (=> bs!67980 m!803623))

(assert (=> bs!67980 m!803623))

(declare-fun m!803871 () Bool)

(assert (=> bs!67980 m!803871))

(declare-fun m!803873 () Bool)

(assert (=> bs!67980 m!803873))

(assert (=> b!553758 d!193034))

(declare-fun d!193036 () Bool)

(declare-fun list!2284 (Conc!1769) List!5517)

(assert (=> d!193036 (= (list!2282 (charsOf!681 (_1!3521 (v!16230 lt!233665)))) (list!2284 (c!103975 (charsOf!681 (_1!3521 (v!16230 lt!233665))))))))

(declare-fun bs!67981 () Bool)

(assert (= bs!67981 d!193036))

(declare-fun m!803875 () Bool)

(assert (=> bs!67981 m!803875))

(assert (=> b!553758 d!193036))

(declare-fun d!193038 () Bool)

(assert (=> d!193038 (= (_2!3521 (v!16230 lt!233665)) lt!233672)))

(declare-fun lt!233822 () Unit!9756)

(declare-fun choose!3946 (List!5517 List!5517 List!5517 List!5517 List!5517) Unit!9756)

(assert (=> d!193038 (= lt!233822 (choose!3946 lt!233680 (_2!3521 (v!16230 lt!233665)) lt!233680 lt!233672 input!2705))))

(assert (=> d!193038 (isPrefix!686 lt!233680 input!2705)))

(assert (=> d!193038 (= (lemmaSamePrefixThenSameSuffix!409 lt!233680 (_2!3521 (v!16230 lt!233665)) lt!233680 lt!233672 input!2705) lt!233822)))

(declare-fun bs!67982 () Bool)

(assert (= bs!67982 d!193038))

(declare-fun m!803877 () Bool)

(assert (=> bs!67982 m!803877))

(declare-fun m!803879 () Bool)

(assert (=> bs!67982 m!803879))

(assert (=> b!553758 d!193038))

(declare-fun d!193040 () Bool)

(declare-fun lt!233825 () BalanceConc!3546)

(assert (=> d!193040 (= (list!2282 lt!233825) (originalCharacters!1091 (_1!3521 (v!16230 lt!233665))))))

(assert (=> d!193040 (= lt!233825 (dynLambda!3194 (toChars!1762 (transformation!1052 (rule!1780 (_1!3521 (v!16230 lt!233665))))) (value!34850 (_1!3521 (v!16230 lt!233665)))))))

(assert (=> d!193040 (= (charsOf!681 (_1!3521 (v!16230 lt!233665))) lt!233825)))

(declare-fun b_lambda!21289 () Bool)

(assert (=> (not b_lambda!21289) (not d!193040)))

(declare-fun t!75298 () Bool)

(declare-fun tb!48343 () Bool)

(assert (=> (and b!553768 (= (toChars!1762 (transformation!1052 (rule!1780 token!491))) (toChars!1762 (transformation!1052 (rule!1780 (_1!3521 (v!16230 lt!233665)))))) t!75298) tb!48343))

(declare-fun b!553958 () Bool)

(declare-fun e!335257 () Bool)

(declare-fun tp!175230 () Bool)

(assert (=> b!553958 (= e!335257 (and (inv!6917 (c!103975 (dynLambda!3194 (toChars!1762 (transformation!1052 (rule!1780 (_1!3521 (v!16230 lt!233665))))) (value!34850 (_1!3521 (v!16230 lt!233665)))))) tp!175230))))

(declare-fun result!54124 () Bool)

(assert (=> tb!48343 (= result!54124 (and (inv!6918 (dynLambda!3194 (toChars!1762 (transformation!1052 (rule!1780 (_1!3521 (v!16230 lt!233665))))) (value!34850 (_1!3521 (v!16230 lt!233665))))) e!335257))))

(assert (= tb!48343 b!553958))

(declare-fun m!803881 () Bool)

(assert (=> b!553958 m!803881))

(declare-fun m!803883 () Bool)

(assert (=> tb!48343 m!803883))

(assert (=> d!193040 t!75298))

(declare-fun b_and!54119 () Bool)

(assert (= b_and!54115 (and (=> t!75298 result!54124) b_and!54119)))

(declare-fun tb!48345 () Bool)

(declare-fun t!75300 () Bool)

(assert (=> (and b!553767 (= (toChars!1762 (transformation!1052 (h!10909 rules!3103))) (toChars!1762 (transformation!1052 (rule!1780 (_1!3521 (v!16230 lt!233665)))))) t!75300) tb!48345))

(declare-fun result!54126 () Bool)

(assert (= result!54126 result!54124))

(assert (=> d!193040 t!75300))

(declare-fun b_and!54121 () Bool)

(assert (= b_and!54117 (and (=> t!75300 result!54126) b_and!54121)))

(declare-fun m!803885 () Bool)

(assert (=> d!193040 m!803885))

(declare-fun m!803887 () Bool)

(assert (=> d!193040 m!803887))

(assert (=> b!553758 d!193040))

(declare-fun d!193042 () Bool)

(declare-fun res!237688 () Bool)

(declare-fun e!335260 () Bool)

(assert (=> d!193042 (=> (not res!237688) (not e!335260))))

(declare-fun validRegex!459 (Regex!1386) Bool)

(assert (=> d!193042 (= res!237688 (validRegex!459 (regex!1052 (rule!1780 (_1!3521 (v!16230 lt!233665))))))))

(assert (=> d!193042 (= (ruleValid!262 thiss!22590 (rule!1780 (_1!3521 (v!16230 lt!233665)))) e!335260)))

(declare-fun b!553963 () Bool)

(declare-fun res!237689 () Bool)

(assert (=> b!553963 (=> (not res!237689) (not e!335260))))

(declare-fun nullable!364 (Regex!1386) Bool)

(assert (=> b!553963 (= res!237689 (not (nullable!364 (regex!1052 (rule!1780 (_1!3521 (v!16230 lt!233665)))))))))

(declare-fun b!553964 () Bool)

(assert (=> b!553964 (= e!335260 (not (= (tag!1314 (rule!1780 (_1!3521 (v!16230 lt!233665)))) (String!7127 ""))))))

(assert (= (and d!193042 res!237688) b!553963))

(assert (= (and b!553963 res!237689) b!553964))

(declare-fun m!803889 () Bool)

(assert (=> d!193042 m!803889))

(declare-fun m!803891 () Bool)

(assert (=> b!553963 m!803891))

(assert (=> b!553758 d!193042))

(declare-fun d!193044 () Bool)

(assert (=> d!193044 (isPrefix!686 lt!233680 (++!1540 lt!233680 (_2!3521 (v!16230 lt!233665))))))

(declare-fun lt!233826 () Unit!9756)

(assert (=> d!193044 (= lt!233826 (choose!3945 lt!233680 (_2!3521 (v!16230 lt!233665))))))

(assert (=> d!193044 (= (lemmaConcatTwoListThenFirstIsPrefix!533 lt!233680 (_2!3521 (v!16230 lt!233665))) lt!233826)))

(declare-fun bs!67983 () Bool)

(assert (= bs!67983 d!193044))

(assert (=> bs!67983 m!803565))

(assert (=> bs!67983 m!803565))

(assert (=> bs!67983 m!803573))

(declare-fun m!803893 () Bool)

(assert (=> bs!67983 m!803893))

(assert (=> b!553758 d!193044))

(declare-fun d!193046 () Bool)

(declare-fun e!335261 () Bool)

(assert (=> d!193046 e!335261))

(declare-fun res!237690 () Bool)

(assert (=> d!193046 (=> (not res!237690) (not e!335261))))

(assert (=> d!193046 (= res!237690 (semiInverseModEq!402 (toChars!1762 (transformation!1052 (rule!1780 (_1!3521 (v!16230 lt!233665))))) (toValue!1903 (transformation!1052 (rule!1780 (_1!3521 (v!16230 lt!233665)))))))))

(declare-fun Unit!9767 () Unit!9756)

(assert (=> d!193046 (= (lemmaInv!188 (transformation!1052 (rule!1780 (_1!3521 (v!16230 lt!233665))))) Unit!9767)))

(declare-fun b!553965 () Bool)

(assert (=> b!553965 (= e!335261 (equivClasses!385 (toChars!1762 (transformation!1052 (rule!1780 (_1!3521 (v!16230 lt!233665))))) (toValue!1903 (transformation!1052 (rule!1780 (_1!3521 (v!16230 lt!233665)))))))))

(assert (= (and d!193046 res!237690) b!553965))

(declare-fun m!803895 () Bool)

(assert (=> d!193046 m!803895))

(declare-fun m!803897 () Bool)

(assert (=> b!553965 m!803897))

(assert (=> b!553758 d!193046))

(declare-fun d!193048 () Bool)

(declare-fun dynLambda!3195 (Int BalanceConc!3546) TokenValue!1076)

(assert (=> d!193048 (= (apply!1317 (transformation!1052 (rule!1780 (_1!3521 (v!16230 lt!233665)))) (seqFromList!1240 lt!233680)) (dynLambda!3195 (toValue!1903 (transformation!1052 (rule!1780 (_1!3521 (v!16230 lt!233665))))) (seqFromList!1240 lt!233680)))))

(declare-fun b_lambda!21291 () Bool)

(assert (=> (not b_lambda!21291) (not d!193048)))

(declare-fun t!75302 () Bool)

(declare-fun tb!48347 () Bool)

(assert (=> (and b!553768 (= (toValue!1903 (transformation!1052 (rule!1780 token!491))) (toValue!1903 (transformation!1052 (rule!1780 (_1!3521 (v!16230 lt!233665)))))) t!75302) tb!48347))

(declare-fun result!54128 () Bool)

(assert (=> tb!48347 (= result!54128 (inv!21 (dynLambda!3195 (toValue!1903 (transformation!1052 (rule!1780 (_1!3521 (v!16230 lt!233665))))) (seqFromList!1240 lt!233680))))))

(declare-fun m!803899 () Bool)

(assert (=> tb!48347 m!803899))

(assert (=> d!193048 t!75302))

(declare-fun b_and!54123 () Bool)

(assert (= b_and!54099 (and (=> t!75302 result!54128) b_and!54123)))

(declare-fun t!75304 () Bool)

(declare-fun tb!48349 () Bool)

(assert (=> (and b!553767 (= (toValue!1903 (transformation!1052 (h!10909 rules!3103))) (toValue!1903 (transformation!1052 (rule!1780 (_1!3521 (v!16230 lt!233665)))))) t!75304) tb!48349))

(declare-fun result!54132 () Bool)

(assert (= result!54132 result!54128))

(assert (=> d!193048 t!75304))

(declare-fun b_and!54125 () Bool)

(assert (= b_and!54103 (and (=> t!75304 result!54132) b_and!54125)))

(assert (=> d!193048 m!803559))

(declare-fun m!803901 () Bool)

(assert (=> d!193048 m!803901))

(assert (=> b!553758 d!193048))

(declare-fun d!193050 () Bool)

(assert (=> d!193050 (ruleValid!262 thiss!22590 (rule!1780 token!491))))

(declare-fun lt!233829 () Unit!9756)

(declare-fun choose!3947 (LexerInterface!938 Rule!1904 List!5518) Unit!9756)

(assert (=> d!193050 (= lt!233829 (choose!3947 thiss!22590 (rule!1780 token!491) rules!3103))))

(assert (=> d!193050 (contains!1284 rules!3103 (rule!1780 token!491))))

(assert (=> d!193050 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!119 thiss!22590 (rule!1780 token!491) rules!3103) lt!233829)))

(declare-fun bs!67984 () Bool)

(assert (= bs!67984 d!193050))

(assert (=> bs!67984 m!803589))

(declare-fun m!803903 () Bool)

(assert (=> bs!67984 m!803903))

(assert (=> bs!67984 m!803557))

(assert (=> b!553758 d!193050))

(declare-fun d!193052 () Bool)

(assert (=> d!193052 (isPrefix!686 input!2705 (++!1540 input!2705 suffix!1342))))

(declare-fun lt!233830 () Unit!9756)

(assert (=> d!193052 (= lt!233830 (choose!3945 input!2705 suffix!1342))))

(assert (=> d!193052 (= (lemmaConcatTwoListThenFirstIsPrefix!533 input!2705 suffix!1342) lt!233830)))

(declare-fun bs!67985 () Bool)

(assert (= bs!67985 d!193052))

(assert (=> bs!67985 m!803617))

(assert (=> bs!67985 m!803617))

(declare-fun m!803905 () Bool)

(assert (=> bs!67985 m!803905))

(declare-fun m!803907 () Bool)

(assert (=> bs!67985 m!803907))

(assert (=> b!553758 d!193052))

(declare-fun d!193054 () Bool)

(declare-fun res!237691 () Bool)

(declare-fun e!335265 () Bool)

(assert (=> d!193054 (=> (not res!237691) (not e!335265))))

(assert (=> d!193054 (= res!237691 (validRegex!459 (regex!1052 (rule!1780 token!491))))))

(assert (=> d!193054 (= (ruleValid!262 thiss!22590 (rule!1780 token!491)) e!335265)))

(declare-fun b!553968 () Bool)

(declare-fun res!237692 () Bool)

(assert (=> b!553968 (=> (not res!237692) (not e!335265))))

(assert (=> b!553968 (= res!237692 (not (nullable!364 (regex!1052 (rule!1780 token!491)))))))

(declare-fun b!553969 () Bool)

(assert (=> b!553969 (= e!335265 (not (= (tag!1314 (rule!1780 token!491)) (String!7127 ""))))))

(assert (= (and d!193054 res!237691) b!553968))

(assert (= (and b!553968 res!237692) b!553969))

(declare-fun m!803909 () Bool)

(assert (=> d!193054 m!803909))

(declare-fun m!803911 () Bool)

(assert (=> b!553968 m!803911))

(assert (=> b!553758 d!193054))

(declare-fun d!193056 () Bool)

(assert (=> d!193056 (and (= lt!233683 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!233833 () Unit!9756)

(declare-fun choose!3948 (List!5517 List!5517 List!5517 List!5517) Unit!9756)

(assert (=> d!193056 (= lt!233833 (choose!3948 lt!233683 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!193056 (= (++!1540 lt!233683 suffix!1342) (++!1540 input!2705 suffix!1342))))

(assert (=> d!193056 (= (lemmaConcatSameAndSameSizesThenSameLists!129 lt!233683 suffix!1342 input!2705 suffix!1342) lt!233833)))

(declare-fun bs!67986 () Bool)

(assert (= bs!67986 d!193056))

(declare-fun m!803913 () Bool)

(assert (=> bs!67986 m!803913))

(assert (=> bs!67986 m!803623))

(assert (=> bs!67986 m!803617))

(assert (=> b!553758 d!193056))

(declare-fun d!193058 () Bool)

(assert (=> d!193058 (ruleValid!262 thiss!22590 (rule!1780 (_1!3521 (v!16230 lt!233665))))))

(declare-fun lt!233834 () Unit!9756)

(assert (=> d!193058 (= lt!233834 (choose!3947 thiss!22590 (rule!1780 (_1!3521 (v!16230 lt!233665))) rules!3103))))

(assert (=> d!193058 (contains!1284 rules!3103 (rule!1780 (_1!3521 (v!16230 lt!233665))))))

(assert (=> d!193058 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!119 thiss!22590 (rule!1780 (_1!3521 (v!16230 lt!233665))) rules!3103) lt!233834)))

(declare-fun bs!67987 () Bool)

(assert (= bs!67987 d!193058))

(assert (=> bs!67987 m!803591))

(declare-fun m!803915 () Bool)

(assert (=> bs!67987 m!803915))

(declare-fun m!803917 () Bool)

(assert (=> bs!67987 m!803917))

(assert (=> b!553758 d!193058))

(declare-fun d!193060 () Bool)

(assert (=> d!193060 (isPrefix!686 input!2705 input!2705)))

(declare-fun lt!233837 () Unit!9756)

(declare-fun choose!3949 (List!5517 List!5517) Unit!9756)

(assert (=> d!193060 (= lt!233837 (choose!3949 input!2705 input!2705))))

(assert (=> d!193060 (= (lemmaIsPrefixRefl!424 input!2705 input!2705) lt!233837)))

(declare-fun bs!67988 () Bool)

(assert (= bs!67988 d!193060))

(assert (=> bs!67988 m!803587))

(declare-fun m!803919 () Bool)

(assert (=> bs!67988 m!803919))

(assert (=> b!553758 d!193060))

(declare-fun d!193062 () Bool)

(assert (=> d!193062 (= (size!4392 (_1!3521 (v!16230 lt!233665))) (size!4393 (originalCharacters!1091 (_1!3521 (v!16230 lt!233665)))))))

(declare-fun Unit!9768 () Unit!9756)

(assert (=> d!193062 (= (lemmaCharactersSize!119 (_1!3521 (v!16230 lt!233665))) Unit!9768)))

(declare-fun bs!67989 () Bool)

(assert (= bs!67989 d!193062))

(assert (=> bs!67989 m!803625))

(assert (=> b!553758 d!193062))

(declare-fun d!193064 () Bool)

(declare-fun e!335266 () Bool)

(assert (=> d!193064 e!335266))

(declare-fun res!237694 () Bool)

(assert (=> d!193064 (=> (not res!237694) (not e!335266))))

(declare-fun lt!233838 () List!5517)

(assert (=> d!193064 (= res!237694 (= (content!959 lt!233838) (set.union (content!959 lt!233680) (content!959 (_2!3521 (v!16230 lt!233665))))))))

(declare-fun e!335267 () List!5517)

(assert (=> d!193064 (= lt!233838 e!335267)))

(declare-fun c!103996 () Bool)

(assert (=> d!193064 (= c!103996 (is-Nil!5507 lt!233680))))

(assert (=> d!193064 (= (++!1540 lt!233680 (_2!3521 (v!16230 lt!233665))) lt!233838)))

(declare-fun b!553973 () Bool)

(assert (=> b!553973 (= e!335266 (or (not (= (_2!3521 (v!16230 lt!233665)) Nil!5507)) (= lt!233838 lt!233680)))))

(declare-fun b!553970 () Bool)

(assert (=> b!553970 (= e!335267 (_2!3521 (v!16230 lt!233665)))))

(declare-fun b!553972 () Bool)

(declare-fun res!237693 () Bool)

(assert (=> b!553972 (=> (not res!237693) (not e!335266))))

(assert (=> b!553972 (= res!237693 (= (size!4393 lt!233838) (+ (size!4393 lt!233680) (size!4393 (_2!3521 (v!16230 lt!233665))))))))

(declare-fun b!553971 () Bool)

(assert (=> b!553971 (= e!335267 (Cons!5507 (h!10908 lt!233680) (++!1540 (t!75288 lt!233680) (_2!3521 (v!16230 lt!233665)))))))

(assert (= (and d!193064 c!103996) b!553970))

(assert (= (and d!193064 (not c!103996)) b!553971))

(assert (= (and d!193064 res!237694) b!553972))

(assert (= (and b!553972 res!237693) b!553973))

(declare-fun m!803921 () Bool)

(assert (=> d!193064 m!803921))

(declare-fun m!803923 () Bool)

(assert (=> d!193064 m!803923))

(declare-fun m!803925 () Bool)

(assert (=> d!193064 m!803925))

(declare-fun m!803927 () Bool)

(assert (=> b!553972 m!803927))

(assert (=> b!553972 m!803567))

(declare-fun m!803929 () Bool)

(assert (=> b!553972 m!803929))

(declare-fun m!803931 () Bool)

(assert (=> b!553971 m!803931))

(assert (=> b!553758 d!193064))

(declare-fun d!193066 () Bool)

(declare-fun e!335268 () Bool)

(assert (=> d!193066 e!335268))

(declare-fun res!237696 () Bool)

(assert (=> d!193066 (=> (not res!237696) (not e!335268))))

(declare-fun lt!233839 () List!5517)

(assert (=> d!193066 (= res!237696 (= (content!959 lt!233839) (set.union (content!959 lt!233683) (content!959 suffix!1342))))))

(declare-fun e!335269 () List!5517)

(assert (=> d!193066 (= lt!233839 e!335269)))

(declare-fun c!103997 () Bool)

(assert (=> d!193066 (= c!103997 (is-Nil!5507 lt!233683))))

(assert (=> d!193066 (= (++!1540 lt!233683 suffix!1342) lt!233839)))

(declare-fun b!553977 () Bool)

(assert (=> b!553977 (= e!335268 (or (not (= suffix!1342 Nil!5507)) (= lt!233839 lt!233683)))))

(declare-fun b!553974 () Bool)

(assert (=> b!553974 (= e!335269 suffix!1342)))

(declare-fun b!553976 () Bool)

(declare-fun res!237695 () Bool)

(assert (=> b!553976 (=> (not res!237695) (not e!335268))))

(assert (=> b!553976 (= res!237695 (= (size!4393 lt!233839) (+ (size!4393 lt!233683) (size!4393 suffix!1342))))))

(declare-fun b!553975 () Bool)

(assert (=> b!553975 (= e!335269 (Cons!5507 (h!10908 lt!233683) (++!1540 (t!75288 lt!233683) suffix!1342)))))

(assert (= (and d!193066 c!103997) b!553974))

(assert (= (and d!193066 (not c!103997)) b!553975))

(assert (= (and d!193066 res!237696) b!553976))

(assert (= (and b!553976 res!237695) b!553977))

(declare-fun m!803933 () Bool)

(assert (=> d!193066 m!803933))

(declare-fun m!803935 () Bool)

(assert (=> d!193066 m!803935))

(assert (=> d!193066 m!803797))

(declare-fun m!803937 () Bool)

(assert (=> b!553976 m!803937))

(assert (=> b!553976 m!803583))

(assert (=> b!553976 m!803803))

(declare-fun m!803939 () Bool)

(assert (=> b!553975 m!803939))

(assert (=> b!553769 d!193066))

(declare-fun d!193068 () Bool)

(declare-fun lt!233840 () Int)

(assert (=> d!193068 (>= lt!233840 0)))

(declare-fun e!335270 () Int)

(assert (=> d!193068 (= lt!233840 e!335270)))

(declare-fun c!103998 () Bool)

(assert (=> d!193068 (= c!103998 (is-Nil!5507 (originalCharacters!1091 (_1!3521 (v!16230 lt!233665)))))))

(assert (=> d!193068 (= (size!4393 (originalCharacters!1091 (_1!3521 (v!16230 lt!233665)))) lt!233840)))

(declare-fun b!553978 () Bool)

(assert (=> b!553978 (= e!335270 0)))

(declare-fun b!553979 () Bool)

(assert (=> b!553979 (= e!335270 (+ 1 (size!4393 (t!75288 (originalCharacters!1091 (_1!3521 (v!16230 lt!233665)))))))))

(assert (= (and d!193068 c!103998) b!553978))

(assert (= (and d!193068 (not c!103998)) b!553979))

(declare-fun m!803941 () Bool)

(assert (=> b!553979 m!803941))

(assert (=> b!553764 d!193068))

(declare-fun d!193070 () Bool)

(assert (=> d!193070 (= (seqFromList!1240 lt!233683) (fromListB!538 lt!233683))))

(declare-fun bs!67990 () Bool)

(assert (= bs!67990 d!193070))

(declare-fun m!803943 () Bool)

(assert (=> bs!67990 m!803943))

(assert (=> b!553754 d!193070))

(declare-fun d!193072 () Bool)

(assert (=> d!193072 (= (maxPrefixOneRule!337 thiss!22590 (rule!1780 (_1!3521 (v!16230 lt!233665))) input!2705) (Some!1401 (tuple2!6515 (Token!1841 (apply!1317 (transformation!1052 (rule!1780 (_1!3521 (v!16230 lt!233665)))) (seqFromList!1240 lt!233680)) (rule!1780 (_1!3521 (v!16230 lt!233665))) (size!4393 lt!233680) lt!233680) (_2!3521 (v!16230 lt!233665)))))))

(declare-fun lt!233853 () Unit!9756)

(declare-fun choose!3950 (LexerInterface!938 List!5518 List!5517 List!5517 List!5517 Rule!1904) Unit!9756)

(assert (=> d!193072 (= lt!233853 (choose!3950 thiss!22590 rules!3103 lt!233680 input!2705 (_2!3521 (v!16230 lt!233665)) (rule!1780 (_1!3521 (v!16230 lt!233665)))))))

(assert (=> d!193072 (not (isEmpty!3972 rules!3103))))

(assert (=> d!193072 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!87 thiss!22590 rules!3103 lt!233680 input!2705 (_2!3521 (v!16230 lt!233665)) (rule!1780 (_1!3521 (v!16230 lt!233665)))) lt!233853)))

(declare-fun bs!67991 () Bool)

(assert (= bs!67991 d!193072))

(assert (=> bs!67991 m!803567))

(assert (=> bs!67991 m!803559))

(assert (=> bs!67991 m!803561))

(declare-fun m!803945 () Bool)

(assert (=> bs!67991 m!803945))

(assert (=> bs!67991 m!803559))

(assert (=> bs!67991 m!803621))

(assert (=> bs!67991 m!803537))

(assert (=> b!553754 d!193072))

(declare-fun d!193074 () Bool)

(assert (=> d!193074 (= (apply!1317 (transformation!1052 (rule!1780 token!491)) (seqFromList!1240 lt!233683)) (dynLambda!3195 (toValue!1903 (transformation!1052 (rule!1780 token!491))) (seqFromList!1240 lt!233683)))))

(declare-fun b_lambda!21293 () Bool)

(assert (=> (not b_lambda!21293) (not d!193074)))

(declare-fun t!75306 () Bool)

(declare-fun tb!48351 () Bool)

(assert (=> (and b!553768 (= (toValue!1903 (transformation!1052 (rule!1780 token!491))) (toValue!1903 (transformation!1052 (rule!1780 token!491)))) t!75306) tb!48351))

(declare-fun result!54134 () Bool)

(assert (=> tb!48351 (= result!54134 (inv!21 (dynLambda!3195 (toValue!1903 (transformation!1052 (rule!1780 token!491))) (seqFromList!1240 lt!233683))))))

(declare-fun m!803947 () Bool)

(assert (=> tb!48351 m!803947))

(assert (=> d!193074 t!75306))

(declare-fun b_and!54127 () Bool)

(assert (= b_and!54123 (and (=> t!75306 result!54134) b_and!54127)))

(declare-fun tb!48353 () Bool)

(declare-fun t!75308 () Bool)

(assert (=> (and b!553767 (= (toValue!1903 (transformation!1052 (h!10909 rules!3103))) (toValue!1903 (transformation!1052 (rule!1780 token!491)))) t!75308) tb!48353))

(declare-fun result!54136 () Bool)

(assert (= result!54136 result!54134))

(assert (=> d!193074 t!75308))

(declare-fun b_and!54129 () Bool)

(assert (= b_and!54125 (and (=> t!75308 result!54136) b_and!54129)))

(assert (=> d!193074 m!803533))

(declare-fun m!803949 () Bool)

(assert (=> d!193074 m!803949))

(assert (=> b!553754 d!193074))

(declare-fun d!193076 () Bool)

(assert (=> d!193076 (= (maxPrefixOneRule!337 thiss!22590 (rule!1780 token!491) lt!233676) (Some!1401 (tuple2!6515 (Token!1841 (apply!1317 (transformation!1052 (rule!1780 token!491)) (seqFromList!1240 lt!233683)) (rule!1780 token!491) (size!4393 lt!233683) lt!233683) suffix!1342)))))

(declare-fun lt!233854 () Unit!9756)

(assert (=> d!193076 (= lt!233854 (choose!3950 thiss!22590 rules!3103 lt!233683 lt!233676 suffix!1342 (rule!1780 token!491)))))

(assert (=> d!193076 (not (isEmpty!3972 rules!3103))))

(assert (=> d!193076 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!87 thiss!22590 rules!3103 lt!233683 lt!233676 suffix!1342 (rule!1780 token!491)) lt!233854)))

(declare-fun bs!67992 () Bool)

(assert (= bs!67992 d!193076))

(assert (=> bs!67992 m!803583))

(assert (=> bs!67992 m!803533))

(assert (=> bs!67992 m!803543))

(declare-fun m!803951 () Bool)

(assert (=> bs!67992 m!803951))

(assert (=> bs!67992 m!803533))

(assert (=> bs!67992 m!803621))

(assert (=> bs!67992 m!803531))

(assert (=> b!553754 d!193076))

(declare-fun b!554056 () Bool)

(declare-fun e!335306 () Bool)

(declare-fun e!335305 () Bool)

(assert (=> b!554056 (= e!335306 e!335305)))

(declare-fun res!237746 () Bool)

(assert (=> b!554056 (=> (not res!237746) (not e!335305))))

(declare-fun lt!233882 () Option!1402)

(assert (=> b!554056 (= res!237746 (matchR!533 (regex!1052 (rule!1780 token!491)) (list!2282 (charsOf!681 (_1!3521 (get!2093 lt!233882))))))))

(declare-fun b!554057 () Bool)

(declare-fun res!237750 () Bool)

(assert (=> b!554057 (=> (not res!237750) (not e!335305))))

(assert (=> b!554057 (= res!237750 (= (value!34850 (_1!3521 (get!2093 lt!233882))) (apply!1317 (transformation!1052 (rule!1780 (_1!3521 (get!2093 lt!233882)))) (seqFromList!1240 (originalCharacters!1091 (_1!3521 (get!2093 lt!233882)))))))))

(declare-fun b!554058 () Bool)

(declare-fun res!237745 () Bool)

(assert (=> b!554058 (=> (not res!237745) (not e!335305))))

(assert (=> b!554058 (= res!237745 (< (size!4393 (_2!3521 (get!2093 lt!233882))) (size!4393 lt!233676)))))

(declare-fun b!554059 () Bool)

(declare-fun e!335308 () Option!1402)

(assert (=> b!554059 (= e!335308 None!1401)))

(declare-fun b!554060 () Bool)

(declare-fun e!335307 () Bool)

(declare-datatypes ((tuple2!6518 0))(
  ( (tuple2!6519 (_1!3523 List!5517) (_2!3523 List!5517)) )
))
(declare-fun findLongestMatchInner!148 (Regex!1386 List!5517 Int List!5517 List!5517 Int) tuple2!6518)

(assert (=> b!554060 (= e!335307 (matchR!533 (regex!1052 (rule!1780 token!491)) (_1!3523 (findLongestMatchInner!148 (regex!1052 (rule!1780 token!491)) Nil!5507 (size!4393 Nil!5507) lt!233676 lt!233676 (size!4393 lt!233676)))))))

(declare-fun b!554061 () Bool)

(declare-fun res!237749 () Bool)

(assert (=> b!554061 (=> (not res!237749) (not e!335305))))

(assert (=> b!554061 (= res!237749 (= (rule!1780 (_1!3521 (get!2093 lt!233882))) (rule!1780 token!491)))))

(declare-fun d!193078 () Bool)

(assert (=> d!193078 e!335306))

(declare-fun res!237748 () Bool)

(assert (=> d!193078 (=> res!237748 e!335306)))

(assert (=> d!193078 (= res!237748 (isEmpty!3976 lt!233882))))

(assert (=> d!193078 (= lt!233882 e!335308)))

(declare-fun c!104011 () Bool)

(declare-fun lt!233884 () tuple2!6518)

(assert (=> d!193078 (= c!104011 (isEmpty!3973 (_1!3523 lt!233884)))))

(declare-fun findLongestMatch!127 (Regex!1386 List!5517) tuple2!6518)

(assert (=> d!193078 (= lt!233884 (findLongestMatch!127 (regex!1052 (rule!1780 token!491)) lt!233676))))

(assert (=> d!193078 (ruleValid!262 thiss!22590 (rule!1780 token!491))))

(assert (=> d!193078 (= (maxPrefixOneRule!337 thiss!22590 (rule!1780 token!491) lt!233676) lt!233882)))

(declare-fun b!554062 () Bool)

(declare-fun size!4396 (BalanceConc!3546) Int)

(assert (=> b!554062 (= e!335308 (Some!1401 (tuple2!6515 (Token!1841 (apply!1317 (transformation!1052 (rule!1780 token!491)) (seqFromList!1240 (_1!3523 lt!233884))) (rule!1780 token!491) (size!4396 (seqFromList!1240 (_1!3523 lt!233884))) (_1!3523 lt!233884)) (_2!3523 lt!233884))))))

(declare-fun lt!233883 () Unit!9756)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!132 (Regex!1386 List!5517) Unit!9756)

(assert (=> b!554062 (= lt!233883 (longestMatchIsAcceptedByMatchOrIsEmpty!132 (regex!1052 (rule!1780 token!491)) lt!233676))))

(declare-fun res!237744 () Bool)

(assert (=> b!554062 (= res!237744 (isEmpty!3973 (_1!3523 (findLongestMatchInner!148 (regex!1052 (rule!1780 token!491)) Nil!5507 (size!4393 Nil!5507) lt!233676 lt!233676 (size!4393 lt!233676)))))))

(assert (=> b!554062 (=> res!237744 e!335307)))

(assert (=> b!554062 e!335307))

(declare-fun lt!233880 () Unit!9756)

(assert (=> b!554062 (= lt!233880 lt!233883)))

(declare-fun lt!233881 () Unit!9756)

(declare-fun lemmaSemiInverse!167 (TokenValueInjection!1920 BalanceConc!3546) Unit!9756)

(assert (=> b!554062 (= lt!233881 (lemmaSemiInverse!167 (transformation!1052 (rule!1780 token!491)) (seqFromList!1240 (_1!3523 lt!233884))))))

(declare-fun b!554063 () Bool)

(declare-fun res!237747 () Bool)

(assert (=> b!554063 (=> (not res!237747) (not e!335305))))

(assert (=> b!554063 (= res!237747 (= (++!1540 (list!2282 (charsOf!681 (_1!3521 (get!2093 lt!233882)))) (_2!3521 (get!2093 lt!233882))) lt!233676))))

(declare-fun b!554064 () Bool)

(assert (=> b!554064 (= e!335305 (= (size!4392 (_1!3521 (get!2093 lt!233882))) (size!4393 (originalCharacters!1091 (_1!3521 (get!2093 lt!233882))))))))

(assert (= (and d!193078 c!104011) b!554059))

(assert (= (and d!193078 (not c!104011)) b!554062))

(assert (= (and b!554062 (not res!237744)) b!554060))

(assert (= (and d!193078 (not res!237748)) b!554056))

(assert (= (and b!554056 res!237746) b!554063))

(assert (= (and b!554063 res!237747) b!554058))

(assert (= (and b!554058 res!237745) b!554061))

(assert (= (and b!554061 res!237749) b!554057))

(assert (= (and b!554057 res!237750) b!554064))

(declare-fun m!804019 () Bool)

(assert (=> d!193078 m!804019))

(declare-fun m!804021 () Bool)

(assert (=> d!193078 m!804021))

(declare-fun m!804023 () Bool)

(assert (=> d!193078 m!804023))

(assert (=> d!193078 m!803589))

(declare-fun m!804025 () Bool)

(assert (=> b!554058 m!804025))

(declare-fun m!804027 () Bool)

(assert (=> b!554058 m!804027))

(assert (=> b!554058 m!803787))

(assert (=> b!554057 m!804025))

(declare-fun m!804029 () Bool)

(assert (=> b!554057 m!804029))

(assert (=> b!554057 m!804029))

(declare-fun m!804031 () Bool)

(assert (=> b!554057 m!804031))

(assert (=> b!554061 m!804025))

(assert (=> b!554063 m!804025))

(declare-fun m!804033 () Bool)

(assert (=> b!554063 m!804033))

(assert (=> b!554063 m!804033))

(declare-fun m!804035 () Bool)

(assert (=> b!554063 m!804035))

(assert (=> b!554063 m!804035))

(declare-fun m!804037 () Bool)

(assert (=> b!554063 m!804037))

(declare-fun m!804039 () Bool)

(assert (=> b!554060 m!804039))

(assert (=> b!554060 m!803787))

(assert (=> b!554060 m!804039))

(assert (=> b!554060 m!803787))

(declare-fun m!804041 () Bool)

(assert (=> b!554060 m!804041))

(declare-fun m!804043 () Bool)

(assert (=> b!554060 m!804043))

(declare-fun m!804045 () Bool)

(assert (=> b!554062 m!804045))

(declare-fun m!804047 () Bool)

(assert (=> b!554062 m!804047))

(assert (=> b!554062 m!804045))

(declare-fun m!804049 () Bool)

(assert (=> b!554062 m!804049))

(declare-fun m!804051 () Bool)

(assert (=> b!554062 m!804051))

(assert (=> b!554062 m!804045))

(assert (=> b!554062 m!803787))

(declare-fun m!804053 () Bool)

(assert (=> b!554062 m!804053))

(assert (=> b!554062 m!804045))

(declare-fun m!804055 () Bool)

(assert (=> b!554062 m!804055))

(assert (=> b!554062 m!804039))

(assert (=> b!554062 m!803787))

(assert (=> b!554062 m!804041))

(assert (=> b!554062 m!804039))

(assert (=> b!554064 m!804025))

(declare-fun m!804057 () Bool)

(assert (=> b!554064 m!804057))

(assert (=> b!554056 m!804025))

(assert (=> b!554056 m!804033))

(assert (=> b!554056 m!804033))

(assert (=> b!554056 m!804035))

(assert (=> b!554056 m!804035))

(declare-fun m!804059 () Bool)

(assert (=> b!554056 m!804059))

(assert (=> b!553754 d!193078))

(declare-fun d!193094 () Bool)

(assert (=> d!193094 (= suffix!1342 lt!233679)))

(declare-fun lt!233885 () Unit!9756)

(assert (=> d!193094 (= lt!233885 (choose!3946 lt!233683 suffix!1342 lt!233683 lt!233679 lt!233676))))

(assert (=> d!193094 (isPrefix!686 lt!233683 lt!233676)))

(assert (=> d!193094 (= (lemmaSamePrefixThenSameSuffix!409 lt!233683 suffix!1342 lt!233683 lt!233679 lt!233676) lt!233885)))

(declare-fun bs!67994 () Bool)

(assert (= bs!67994 d!193094))

(declare-fun m!804061 () Bool)

(assert (=> bs!67994 m!804061))

(declare-fun m!804063 () Bool)

(assert (=> bs!67994 m!804063))

(assert (=> b!553754 d!193094))

(declare-fun b!554065 () Bool)

(declare-fun e!335310 () Bool)

(declare-fun e!335309 () Bool)

(assert (=> b!554065 (= e!335310 e!335309)))

(declare-fun res!237753 () Bool)

(assert (=> b!554065 (=> (not res!237753) (not e!335309))))

(declare-fun lt!233888 () Option!1402)

(assert (=> b!554065 (= res!237753 (matchR!533 (regex!1052 (rule!1780 (_1!3521 (v!16230 lt!233665)))) (list!2282 (charsOf!681 (_1!3521 (get!2093 lt!233888))))))))

(declare-fun b!554066 () Bool)

(declare-fun res!237757 () Bool)

(assert (=> b!554066 (=> (not res!237757) (not e!335309))))

(assert (=> b!554066 (= res!237757 (= (value!34850 (_1!3521 (get!2093 lt!233888))) (apply!1317 (transformation!1052 (rule!1780 (_1!3521 (get!2093 lt!233888)))) (seqFromList!1240 (originalCharacters!1091 (_1!3521 (get!2093 lt!233888)))))))))

(declare-fun b!554067 () Bool)

(declare-fun res!237752 () Bool)

(assert (=> b!554067 (=> (not res!237752) (not e!335309))))

(assert (=> b!554067 (= res!237752 (< (size!4393 (_2!3521 (get!2093 lt!233888))) (size!4393 input!2705)))))

(declare-fun b!554068 () Bool)

(declare-fun e!335312 () Option!1402)

(assert (=> b!554068 (= e!335312 None!1401)))

(declare-fun b!554069 () Bool)

(declare-fun e!335311 () Bool)

(assert (=> b!554069 (= e!335311 (matchR!533 (regex!1052 (rule!1780 (_1!3521 (v!16230 lt!233665)))) (_1!3523 (findLongestMatchInner!148 (regex!1052 (rule!1780 (_1!3521 (v!16230 lt!233665)))) Nil!5507 (size!4393 Nil!5507) input!2705 input!2705 (size!4393 input!2705)))))))

(declare-fun b!554070 () Bool)

(declare-fun res!237756 () Bool)

(assert (=> b!554070 (=> (not res!237756) (not e!335309))))

(assert (=> b!554070 (= res!237756 (= (rule!1780 (_1!3521 (get!2093 lt!233888))) (rule!1780 (_1!3521 (v!16230 lt!233665)))))))

(declare-fun d!193096 () Bool)

(assert (=> d!193096 e!335310))

(declare-fun res!237755 () Bool)

(assert (=> d!193096 (=> res!237755 e!335310)))

(assert (=> d!193096 (= res!237755 (isEmpty!3976 lt!233888))))

(assert (=> d!193096 (= lt!233888 e!335312)))

(declare-fun c!104012 () Bool)

(declare-fun lt!233890 () tuple2!6518)

(assert (=> d!193096 (= c!104012 (isEmpty!3973 (_1!3523 lt!233890)))))

(assert (=> d!193096 (= lt!233890 (findLongestMatch!127 (regex!1052 (rule!1780 (_1!3521 (v!16230 lt!233665)))) input!2705))))

(assert (=> d!193096 (ruleValid!262 thiss!22590 (rule!1780 (_1!3521 (v!16230 lt!233665))))))

(assert (=> d!193096 (= (maxPrefixOneRule!337 thiss!22590 (rule!1780 (_1!3521 (v!16230 lt!233665))) input!2705) lt!233888)))

(declare-fun b!554071 () Bool)

(assert (=> b!554071 (= e!335312 (Some!1401 (tuple2!6515 (Token!1841 (apply!1317 (transformation!1052 (rule!1780 (_1!3521 (v!16230 lt!233665)))) (seqFromList!1240 (_1!3523 lt!233890))) (rule!1780 (_1!3521 (v!16230 lt!233665))) (size!4396 (seqFromList!1240 (_1!3523 lt!233890))) (_1!3523 lt!233890)) (_2!3523 lt!233890))))))

(declare-fun lt!233889 () Unit!9756)

(assert (=> b!554071 (= lt!233889 (longestMatchIsAcceptedByMatchOrIsEmpty!132 (regex!1052 (rule!1780 (_1!3521 (v!16230 lt!233665)))) input!2705))))

(declare-fun res!237751 () Bool)

(assert (=> b!554071 (= res!237751 (isEmpty!3973 (_1!3523 (findLongestMatchInner!148 (regex!1052 (rule!1780 (_1!3521 (v!16230 lt!233665)))) Nil!5507 (size!4393 Nil!5507) input!2705 input!2705 (size!4393 input!2705)))))))

(assert (=> b!554071 (=> res!237751 e!335311)))

(assert (=> b!554071 e!335311))

(declare-fun lt!233886 () Unit!9756)

(assert (=> b!554071 (= lt!233886 lt!233889)))

(declare-fun lt!233887 () Unit!9756)

(assert (=> b!554071 (= lt!233887 (lemmaSemiInverse!167 (transformation!1052 (rule!1780 (_1!3521 (v!16230 lt!233665)))) (seqFromList!1240 (_1!3523 lt!233890))))))

(declare-fun b!554072 () Bool)

(declare-fun res!237754 () Bool)

(assert (=> b!554072 (=> (not res!237754) (not e!335309))))

(assert (=> b!554072 (= res!237754 (= (++!1540 (list!2282 (charsOf!681 (_1!3521 (get!2093 lt!233888)))) (_2!3521 (get!2093 lt!233888))) input!2705))))

(declare-fun b!554073 () Bool)

(assert (=> b!554073 (= e!335309 (= (size!4392 (_1!3521 (get!2093 lt!233888))) (size!4393 (originalCharacters!1091 (_1!3521 (get!2093 lt!233888))))))))

(assert (= (and d!193096 c!104012) b!554068))

(assert (= (and d!193096 (not c!104012)) b!554071))

(assert (= (and b!554071 (not res!237751)) b!554069))

(assert (= (and d!193096 (not res!237755)) b!554065))

(assert (= (and b!554065 res!237753) b!554072))

(assert (= (and b!554072 res!237754) b!554067))

(assert (= (and b!554067 res!237752) b!554070))

(assert (= (and b!554070 res!237756) b!554066))

(assert (= (and b!554066 res!237757) b!554073))

(declare-fun m!804065 () Bool)

(assert (=> d!193096 m!804065))

(declare-fun m!804067 () Bool)

(assert (=> d!193096 m!804067))

(declare-fun m!804069 () Bool)

(assert (=> d!193096 m!804069))

(assert (=> d!193096 m!803591))

(declare-fun m!804071 () Bool)

(assert (=> b!554067 m!804071))

(declare-fun m!804073 () Bool)

(assert (=> b!554067 m!804073))

(assert (=> b!554067 m!803801))

(assert (=> b!554066 m!804071))

(declare-fun m!804075 () Bool)

(assert (=> b!554066 m!804075))

(assert (=> b!554066 m!804075))

(declare-fun m!804077 () Bool)

(assert (=> b!554066 m!804077))

(assert (=> b!554070 m!804071))

(assert (=> b!554072 m!804071))

(declare-fun m!804079 () Bool)

(assert (=> b!554072 m!804079))

(assert (=> b!554072 m!804079))

(declare-fun m!804081 () Bool)

(assert (=> b!554072 m!804081))

(assert (=> b!554072 m!804081))

(declare-fun m!804083 () Bool)

(assert (=> b!554072 m!804083))

(assert (=> b!554069 m!804039))

(assert (=> b!554069 m!803801))

(assert (=> b!554069 m!804039))

(assert (=> b!554069 m!803801))

(declare-fun m!804085 () Bool)

(assert (=> b!554069 m!804085))

(declare-fun m!804087 () Bool)

(assert (=> b!554069 m!804087))

(declare-fun m!804089 () Bool)

(assert (=> b!554071 m!804089))

(declare-fun m!804091 () Bool)

(assert (=> b!554071 m!804091))

(assert (=> b!554071 m!804089))

(declare-fun m!804093 () Bool)

(assert (=> b!554071 m!804093))

(declare-fun m!804095 () Bool)

(assert (=> b!554071 m!804095))

(assert (=> b!554071 m!804089))

(assert (=> b!554071 m!803801))

(declare-fun m!804097 () Bool)

(assert (=> b!554071 m!804097))

(assert (=> b!554071 m!804089))

(declare-fun m!804099 () Bool)

(assert (=> b!554071 m!804099))

(assert (=> b!554071 m!804039))

(assert (=> b!554071 m!803801))

(assert (=> b!554071 m!804085))

(assert (=> b!554071 m!804039))

(assert (=> b!554073 m!804071))

(declare-fun m!804101 () Bool)

(assert (=> b!554073 m!804101))

(assert (=> b!554065 m!804071))

(assert (=> b!554065 m!804079))

(assert (=> b!554065 m!804079))

(assert (=> b!554065 m!804081))

(assert (=> b!554065 m!804081))

(declare-fun m!804103 () Bool)

(assert (=> b!554065 m!804103))

(assert (=> b!553754 d!193096))

(declare-fun d!193098 () Bool)

(declare-fun lt!233891 () List!5517)

(assert (=> d!193098 (= (++!1540 lt!233683 lt!233891) lt!233676)))

(declare-fun e!335313 () List!5517)

(assert (=> d!193098 (= lt!233891 e!335313)))

(declare-fun c!104013 () Bool)

(assert (=> d!193098 (= c!104013 (is-Cons!5507 lt!233683))))

(assert (=> d!193098 (>= (size!4393 lt!233676) (size!4393 lt!233683))))

(assert (=> d!193098 (= (getSuffix!205 lt!233676 lt!233683) lt!233891)))

(declare-fun b!554074 () Bool)

(assert (=> b!554074 (= e!335313 (getSuffix!205 (tail!730 lt!233676) (t!75288 lt!233683)))))

(declare-fun b!554075 () Bool)

(assert (=> b!554075 (= e!335313 lt!233676)))

(assert (= (and d!193098 c!104013) b!554074))

(assert (= (and d!193098 (not c!104013)) b!554075))

(declare-fun m!804105 () Bool)

(assert (=> d!193098 m!804105))

(assert (=> d!193098 m!803787))

(assert (=> d!193098 m!803583))

(assert (=> b!554074 m!803837))

(assert (=> b!554074 m!803837))

(declare-fun m!804107 () Bool)

(assert (=> b!554074 m!804107))

(assert (=> b!553754 d!193098))

(declare-fun d!193100 () Bool)

(assert (=> d!193100 (= (isEmpty!3973 input!2705) (is-Nil!5507 input!2705))))

(assert (=> b!553765 d!193100))

(declare-fun b!554086 () Bool)

(declare-fun e!335322 () Bool)

(declare-fun inv!16 (TokenValue!1076) Bool)

(assert (=> b!554086 (= e!335322 (inv!16 (value!34850 token!491)))))

(declare-fun b!554087 () Bool)

(declare-fun res!237760 () Bool)

(declare-fun e!335321 () Bool)

(assert (=> b!554087 (=> res!237760 e!335321)))

(assert (=> b!554087 (= res!237760 (not (is-IntegerValue!3230 (value!34850 token!491))))))

(declare-fun e!335320 () Bool)

(assert (=> b!554087 (= e!335320 e!335321)))

(declare-fun b!554088 () Bool)

(declare-fun inv!17 (TokenValue!1076) Bool)

(assert (=> b!554088 (= e!335320 (inv!17 (value!34850 token!491)))))

(declare-fun b!554089 () Bool)

(declare-fun inv!15 (TokenValue!1076) Bool)

(assert (=> b!554089 (= e!335321 (inv!15 (value!34850 token!491)))))

(declare-fun b!554090 () Bool)

(assert (=> b!554090 (= e!335322 e!335320)))

(declare-fun c!104019 () Bool)

(assert (=> b!554090 (= c!104019 (is-IntegerValue!3229 (value!34850 token!491)))))

(declare-fun d!193102 () Bool)

(declare-fun c!104018 () Bool)

(assert (=> d!193102 (= c!104018 (is-IntegerValue!3228 (value!34850 token!491)))))

(assert (=> d!193102 (= (inv!21 (value!34850 token!491)) e!335322)))

(assert (= (and d!193102 c!104018) b!554086))

(assert (= (and d!193102 (not c!104018)) b!554090))

(assert (= (and b!554090 c!104019) b!554088))

(assert (= (and b!554090 (not c!104019)) b!554087))

(assert (= (and b!554087 (not res!237760)) b!554089))

(declare-fun m!804109 () Bool)

(assert (=> b!554086 m!804109))

(declare-fun m!804111 () Bool)

(assert (=> b!554088 m!804111))

(declare-fun m!804113 () Bool)

(assert (=> b!554089 m!804113))

(assert (=> b!553755 d!193102))

(declare-fun d!193104 () Bool)

(assert (=> d!193104 (= (isEmpty!3972 rules!3103) (is-Nil!5508 rules!3103))))

(assert (=> b!553762 d!193104))

(declare-fun d!193106 () Bool)

(assert (=> d!193106 (= (inv!6910 (tag!1314 (rule!1780 token!491))) (= (mod (str.len (value!34849 (tag!1314 (rule!1780 token!491)))) 2) 0))))

(assert (=> b!553773 d!193106))

(declare-fun d!193108 () Bool)

(declare-fun res!237761 () Bool)

(declare-fun e!335323 () Bool)

(assert (=> d!193108 (=> (not res!237761) (not e!335323))))

(assert (=> d!193108 (= res!237761 (semiInverseModEq!402 (toChars!1762 (transformation!1052 (rule!1780 token!491))) (toValue!1903 (transformation!1052 (rule!1780 token!491)))))))

(assert (=> d!193108 (= (inv!6913 (transformation!1052 (rule!1780 token!491))) e!335323)))

(declare-fun b!554091 () Bool)

(assert (=> b!554091 (= e!335323 (equivClasses!385 (toChars!1762 (transformation!1052 (rule!1780 token!491))) (toValue!1903 (transformation!1052 (rule!1780 token!491)))))))

(assert (= (and d!193108 res!237761) b!554091))

(assert (=> d!193108 m!803865))

(assert (=> b!554091 m!803867))

(assert (=> b!553773 d!193108))

(declare-fun d!193110 () Bool)

(declare-fun res!237764 () Bool)

(declare-fun e!335326 () Bool)

(assert (=> d!193110 (=> (not res!237764) (not e!335326))))

(declare-fun rulesValid!367 (LexerInterface!938 List!5518) Bool)

(assert (=> d!193110 (= res!237764 (rulesValid!367 thiss!22590 rules!3103))))

(assert (=> d!193110 (= (rulesInvariant!901 thiss!22590 rules!3103) e!335326)))

(declare-fun b!554094 () Bool)

(declare-datatypes ((List!5522 0))(
  ( (Nil!5512) (Cons!5512 (h!10913 String!7126) (t!75341 List!5522)) )
))
(declare-fun noDuplicateTag!367 (LexerInterface!938 List!5518 List!5522) Bool)

(assert (=> b!554094 (= e!335326 (noDuplicateTag!367 thiss!22590 rules!3103 Nil!5512))))

(assert (= (and d!193110 res!237764) b!554094))

(declare-fun m!804115 () Bool)

(assert (=> d!193110 m!804115))

(declare-fun m!804117 () Bool)

(assert (=> b!554094 m!804117))

(assert (=> b!553763 d!193110))

(declare-fun d!193112 () Bool)

(assert (=> d!193112 (= (list!2282 (charsOf!681 token!491)) (list!2284 (c!103975 (charsOf!681 token!491))))))

(declare-fun bs!67995 () Bool)

(assert (= bs!67995 d!193112))

(declare-fun m!804119 () Bool)

(assert (=> bs!67995 m!804119))

(assert (=> b!553753 d!193112))

(declare-fun d!193114 () Bool)

(declare-fun lt!233892 () BalanceConc!3546)

(assert (=> d!193114 (= (list!2282 lt!233892) (originalCharacters!1091 token!491))))

(assert (=> d!193114 (= lt!233892 (dynLambda!3194 (toChars!1762 (transformation!1052 (rule!1780 token!491))) (value!34850 token!491)))))

(assert (=> d!193114 (= (charsOf!681 token!491) lt!233892)))

(declare-fun b_lambda!21299 () Bool)

(assert (=> (not b_lambda!21299) (not d!193114)))

(assert (=> d!193114 t!75294))

(declare-fun b_and!54139 () Bool)

(assert (= b_and!54119 (and (=> t!75294 result!54118) b_and!54139)))

(assert (=> d!193114 t!75296))

(declare-fun b_and!54141 () Bool)

(assert (= b_and!54121 (and (=> t!75296 result!54122) b_and!54141)))

(declare-fun m!804121 () Bool)

(assert (=> d!193114 m!804121))

(assert (=> d!193114 m!803813))

(assert (=> b!553753 d!193114))

(declare-fun d!193116 () Bool)

(assert (=> d!193116 (= (isDefined!1214 lt!233665) (not (isEmpty!3976 lt!233665)))))

(declare-fun bs!67996 () Bool)

(assert (= bs!67996 d!193116))

(declare-fun m!804123 () Bool)

(assert (=> bs!67996 m!804123))

(assert (=> b!553748 d!193116))

(declare-fun d!193118 () Bool)

(assert (=> d!193118 (= (get!2093 lt!233665) (v!16230 lt!233665))))

(assert (=> b!553760 d!193118))

(declare-fun d!193120 () Bool)

(declare-fun lt!233898 () Bool)

(declare-fun content!961 (List!5518) (Set Rule!1904))

(assert (=> d!193120 (= lt!233898 (set.member (rule!1780 token!491) (content!961 rules!3103)))))

(declare-fun e!335331 () Bool)

(assert (=> d!193120 (= lt!233898 e!335331)))

(declare-fun res!237769 () Bool)

(assert (=> d!193120 (=> (not res!237769) (not e!335331))))

(assert (=> d!193120 (= res!237769 (is-Cons!5508 rules!3103))))

(assert (=> d!193120 (= (contains!1284 rules!3103 (rule!1780 token!491)) lt!233898)))

(declare-fun b!554099 () Bool)

(declare-fun e!335332 () Bool)

(assert (=> b!554099 (= e!335331 e!335332)))

(declare-fun res!237770 () Bool)

(assert (=> b!554099 (=> res!237770 e!335332)))

(assert (=> b!554099 (= res!237770 (= (h!10909 rules!3103) (rule!1780 token!491)))))

(declare-fun b!554100 () Bool)

(assert (=> b!554100 (= e!335332 (contains!1284 (t!75289 rules!3103) (rule!1780 token!491)))))

(assert (= (and d!193120 res!237769) b!554099))

(assert (= (and b!554099 (not res!237770)) b!554100))

(declare-fun m!804127 () Bool)

(assert (=> d!193120 m!804127))

(declare-fun m!804129 () Bool)

(assert (=> d!193120 m!804129))

(declare-fun m!804131 () Bool)

(assert (=> b!554100 m!804131))

(assert (=> b!553771 d!193120))

(declare-fun bm!38455 () Bool)

(declare-fun call!38460 () Option!1402)

(assert (=> bm!38455 (= call!38460 (maxPrefixOneRule!337 thiss!22590 (h!10909 rules!3103) input!2705))))

(declare-fun b!554101 () Bool)

(declare-fun res!237776 () Bool)

(declare-fun e!335335 () Bool)

(assert (=> b!554101 (=> (not res!237776) (not e!335335))))

(declare-fun lt!233900 () Option!1402)

(assert (=> b!554101 (= res!237776 (= (list!2282 (charsOf!681 (_1!3521 (get!2093 lt!233900)))) (originalCharacters!1091 (_1!3521 (get!2093 lt!233900)))))))

(declare-fun d!193124 () Bool)

(declare-fun e!335333 () Bool)

(assert (=> d!193124 e!335333))

(declare-fun res!237777 () Bool)

(assert (=> d!193124 (=> res!237777 e!335333)))

(assert (=> d!193124 (= res!237777 (isEmpty!3976 lt!233900))))

(declare-fun e!335334 () Option!1402)

(assert (=> d!193124 (= lt!233900 e!335334)))

(declare-fun c!104020 () Bool)

(assert (=> d!193124 (= c!104020 (and (is-Cons!5508 rules!3103) (is-Nil!5508 (t!75289 rules!3103))))))

(declare-fun lt!233899 () Unit!9756)

(declare-fun lt!233903 () Unit!9756)

(assert (=> d!193124 (= lt!233899 lt!233903)))

(assert (=> d!193124 (isPrefix!686 input!2705 input!2705)))

(assert (=> d!193124 (= lt!233903 (lemmaIsPrefixRefl!424 input!2705 input!2705))))

(assert (=> d!193124 (rulesValidInductive!371 thiss!22590 rules!3103)))

(assert (=> d!193124 (= (maxPrefix!636 thiss!22590 rules!3103 input!2705) lt!233900)))

(declare-fun b!554102 () Bool)

(declare-fun res!237771 () Bool)

(assert (=> b!554102 (=> (not res!237771) (not e!335335))))

(assert (=> b!554102 (= res!237771 (= (++!1540 (list!2282 (charsOf!681 (_1!3521 (get!2093 lt!233900)))) (_2!3521 (get!2093 lt!233900))) input!2705))))

(declare-fun b!554103 () Bool)

(assert (=> b!554103 (= e!335335 (contains!1284 rules!3103 (rule!1780 (_1!3521 (get!2093 lt!233900)))))))

(declare-fun b!554104 () Bool)

(assert (=> b!554104 (= e!335333 e!335335)))

(declare-fun res!237773 () Bool)

(assert (=> b!554104 (=> (not res!237773) (not e!335335))))

(assert (=> b!554104 (= res!237773 (isDefined!1214 lt!233900))))

(declare-fun b!554105 () Bool)

(declare-fun lt!233901 () Option!1402)

(declare-fun lt!233902 () Option!1402)

(assert (=> b!554105 (= e!335334 (ite (and (is-None!1401 lt!233901) (is-None!1401 lt!233902)) None!1401 (ite (is-None!1401 lt!233902) lt!233901 (ite (is-None!1401 lt!233901) lt!233902 (ite (>= (size!4392 (_1!3521 (v!16230 lt!233901))) (size!4392 (_1!3521 (v!16230 lt!233902)))) lt!233901 lt!233902)))))))

(assert (=> b!554105 (= lt!233901 call!38460)))

(assert (=> b!554105 (= lt!233902 (maxPrefix!636 thiss!22590 (t!75289 rules!3103) input!2705))))

(declare-fun b!554106 () Bool)

(assert (=> b!554106 (= e!335334 call!38460)))

(declare-fun b!554107 () Bool)

(declare-fun res!237775 () Bool)

(assert (=> b!554107 (=> (not res!237775) (not e!335335))))

(assert (=> b!554107 (= res!237775 (= (value!34850 (_1!3521 (get!2093 lt!233900))) (apply!1317 (transformation!1052 (rule!1780 (_1!3521 (get!2093 lt!233900)))) (seqFromList!1240 (originalCharacters!1091 (_1!3521 (get!2093 lt!233900)))))))))

(declare-fun b!554108 () Bool)

(declare-fun res!237774 () Bool)

(assert (=> b!554108 (=> (not res!237774) (not e!335335))))

(assert (=> b!554108 (= res!237774 (< (size!4393 (_2!3521 (get!2093 lt!233900))) (size!4393 input!2705)))))

(declare-fun b!554109 () Bool)

(declare-fun res!237772 () Bool)

(assert (=> b!554109 (=> (not res!237772) (not e!335335))))

(assert (=> b!554109 (= res!237772 (matchR!533 (regex!1052 (rule!1780 (_1!3521 (get!2093 lt!233900)))) (list!2282 (charsOf!681 (_1!3521 (get!2093 lt!233900))))))))

(assert (= (and d!193124 c!104020) b!554106))

(assert (= (and d!193124 (not c!104020)) b!554105))

(assert (= (or b!554106 b!554105) bm!38455))

(assert (= (and d!193124 (not res!237777)) b!554104))

(assert (= (and b!554104 res!237773) b!554101))

(assert (= (and b!554101 res!237776) b!554108))

(assert (= (and b!554108 res!237774) b!554102))

(assert (= (and b!554102 res!237771) b!554107))

(assert (= (and b!554107 res!237775) b!554109))

(assert (= (and b!554109 res!237772) b!554103))

(declare-fun m!804133 () Bool)

(assert (=> d!193124 m!804133))

(assert (=> d!193124 m!803587))

(assert (=> d!193124 m!803581))

(assert (=> d!193124 m!803765))

(declare-fun m!804135 () Bool)

(assert (=> b!554105 m!804135))

(declare-fun m!804137 () Bool)

(assert (=> b!554102 m!804137))

(declare-fun m!804139 () Bool)

(assert (=> b!554102 m!804139))

(assert (=> b!554102 m!804139))

(declare-fun m!804141 () Bool)

(assert (=> b!554102 m!804141))

(assert (=> b!554102 m!804141))

(declare-fun m!804143 () Bool)

(assert (=> b!554102 m!804143))

(assert (=> b!554107 m!804137))

(declare-fun m!804145 () Bool)

(assert (=> b!554107 m!804145))

(assert (=> b!554107 m!804145))

(declare-fun m!804147 () Bool)

(assert (=> b!554107 m!804147))

(declare-fun m!804149 () Bool)

(assert (=> bm!38455 m!804149))

(assert (=> b!554103 m!804137))

(declare-fun m!804151 () Bool)

(assert (=> b!554103 m!804151))

(assert (=> b!554108 m!804137))

(declare-fun m!804153 () Bool)

(assert (=> b!554108 m!804153))

(assert (=> b!554108 m!803801))

(assert (=> b!554101 m!804137))

(assert (=> b!554101 m!804139))

(assert (=> b!554101 m!804139))

(assert (=> b!554101 m!804141))

(assert (=> b!554109 m!804137))

(assert (=> b!554109 m!804139))

(assert (=> b!554109 m!804139))

(assert (=> b!554109 m!804141))

(assert (=> b!554109 m!804141))

(declare-fun m!804155 () Bool)

(assert (=> b!554109 m!804155))

(declare-fun m!804157 () Bool)

(assert (=> b!554104 m!804157))

(assert (=> b!553750 d!193124))

(declare-fun d!193126 () Bool)

(assert (=> d!193126 (= (get!2093 lt!233675) (v!16230 lt!233675))))

(assert (=> b!553761 d!193126))

(declare-fun b!554120 () Bool)

(declare-fun e!335338 () Bool)

(assert (=> b!554120 (= e!335338 tp_is_empty!3127)))

(assert (=> b!553756 (= tp!175189 e!335338)))

(declare-fun b!554121 () Bool)

(declare-fun tp!175244 () Bool)

(declare-fun tp!175246 () Bool)

(assert (=> b!554121 (= e!335338 (and tp!175244 tp!175246))))

(declare-fun b!554123 () Bool)

(declare-fun tp!175247 () Bool)

(declare-fun tp!175245 () Bool)

(assert (=> b!554123 (= e!335338 (and tp!175247 tp!175245))))

(declare-fun b!554122 () Bool)

(declare-fun tp!175248 () Bool)

(assert (=> b!554122 (= e!335338 tp!175248)))

(assert (= (and b!553756 (is-ElementMatch!1386 (regex!1052 (h!10909 rules!3103)))) b!554120))

(assert (= (and b!553756 (is-Concat!2462 (regex!1052 (h!10909 rules!3103)))) b!554121))

(assert (= (and b!553756 (is-Star!1386 (regex!1052 (h!10909 rules!3103)))) b!554122))

(assert (= (and b!553756 (is-Union!1386 (regex!1052 (h!10909 rules!3103)))) b!554123))

(declare-fun b!554128 () Bool)

(declare-fun e!335341 () Bool)

(declare-fun tp!175251 () Bool)

(assert (=> b!554128 (= e!335341 (and tp_is_empty!3127 tp!175251))))

(assert (=> b!553751 (= tp!175196 e!335341)))

(assert (= (and b!553751 (is-Cons!5507 (t!75288 suffix!1342))) b!554128))

(declare-fun b!554129 () Bool)

(declare-fun e!335342 () Bool)

(assert (=> b!554129 (= e!335342 tp_is_empty!3127)))

(assert (=> b!553773 (= tp!175192 e!335342)))

(declare-fun b!554130 () Bool)

(declare-fun tp!175252 () Bool)

(declare-fun tp!175254 () Bool)

(assert (=> b!554130 (= e!335342 (and tp!175252 tp!175254))))

(declare-fun b!554132 () Bool)

(declare-fun tp!175255 () Bool)

(declare-fun tp!175253 () Bool)

(assert (=> b!554132 (= e!335342 (and tp!175255 tp!175253))))

(declare-fun b!554131 () Bool)

(declare-fun tp!175256 () Bool)

(assert (=> b!554131 (= e!335342 tp!175256)))

(assert (= (and b!553773 (is-ElementMatch!1386 (regex!1052 (rule!1780 token!491)))) b!554129))

(assert (= (and b!553773 (is-Concat!2462 (regex!1052 (rule!1780 token!491)))) b!554130))

(assert (= (and b!553773 (is-Star!1386 (regex!1052 (rule!1780 token!491)))) b!554131))

(assert (= (and b!553773 (is-Union!1386 (regex!1052 (rule!1780 token!491)))) b!554132))

(declare-fun b!554143 () Bool)

(declare-fun b_free!15561 () Bool)

(declare-fun b_next!15577 () Bool)

(assert (=> b!554143 (= b_free!15561 (not b_next!15577))))

(declare-fun tb!48359 () Bool)

(declare-fun t!75314 () Bool)

(assert (=> (and b!554143 (= (toValue!1903 (transformation!1052 (h!10909 (t!75289 rules!3103)))) (toValue!1903 (transformation!1052 (rule!1780 (_1!3521 (v!16230 lt!233665)))))) t!75314) tb!48359))

(declare-fun result!54150 () Bool)

(assert (= result!54150 result!54128))

(assert (=> d!193048 t!75314))

(declare-fun tb!48361 () Bool)

(declare-fun t!75316 () Bool)

(assert (=> (and b!554143 (= (toValue!1903 (transformation!1052 (h!10909 (t!75289 rules!3103)))) (toValue!1903 (transformation!1052 (rule!1780 token!491)))) t!75316) tb!48361))

(declare-fun result!54152 () Bool)

(assert (= result!54152 result!54134))

(assert (=> d!193074 t!75316))

(declare-fun tp!175268 () Bool)

(declare-fun b_and!54143 () Bool)

(assert (=> b!554143 (= tp!175268 (and (=> t!75314 result!54150) (=> t!75316 result!54152) b_and!54143))))

(declare-fun b_free!15563 () Bool)

(declare-fun b_next!15579 () Bool)

(assert (=> b!554143 (= b_free!15563 (not b_next!15579))))

(declare-fun tb!48363 () Bool)

(declare-fun t!75318 () Bool)

(assert (=> (and b!554143 (= (toChars!1762 (transformation!1052 (h!10909 (t!75289 rules!3103)))) (toChars!1762 (transformation!1052 (rule!1780 token!491)))) t!75318) tb!48363))

(declare-fun result!54154 () Bool)

(assert (= result!54154 result!54118))

(assert (=> b!553904 t!75318))

(declare-fun tb!48365 () Bool)

(declare-fun t!75320 () Bool)

(assert (=> (and b!554143 (= (toChars!1762 (transformation!1052 (h!10909 (t!75289 rules!3103)))) (toChars!1762 (transformation!1052 (rule!1780 (_1!3521 (v!16230 lt!233665)))))) t!75320) tb!48365))

(declare-fun result!54156 () Bool)

(assert (= result!54156 result!54124))

(assert (=> d!193040 t!75320))

(assert (=> d!193114 t!75318))

(declare-fun tp!175267 () Bool)

(declare-fun b_and!54145 () Bool)

(assert (=> b!554143 (= tp!175267 (and (=> t!75318 result!54154) (=> t!75320 result!54156) b_and!54145))))

(declare-fun e!335351 () Bool)

(assert (=> b!554143 (= e!335351 (and tp!175268 tp!175267))))

(declare-fun e!335353 () Bool)

(declare-fun b!554142 () Bool)

(declare-fun tp!175266 () Bool)

(assert (=> b!554142 (= e!335353 (and tp!175266 (inv!6910 (tag!1314 (h!10909 (t!75289 rules!3103)))) (inv!6913 (transformation!1052 (h!10909 (t!75289 rules!3103)))) e!335351))))

(declare-fun b!554141 () Bool)

(declare-fun e!335354 () Bool)

(declare-fun tp!175265 () Bool)

(assert (=> b!554141 (= e!335354 (and e!335353 tp!175265))))

(assert (=> b!553747 (= tp!175195 e!335354)))

(assert (= b!554142 b!554143))

(assert (= b!554141 b!554142))

(assert (= (and b!553747 (is-Cons!5508 (t!75289 rules!3103))) b!554141))

(declare-fun m!804165 () Bool)

(assert (=> b!554142 m!804165))

(declare-fun m!804167 () Bool)

(assert (=> b!554142 m!804167))

(declare-fun b!554144 () Bool)

(declare-fun e!335355 () Bool)

(declare-fun tp!175269 () Bool)

(assert (=> b!554144 (= e!335355 (and tp_is_empty!3127 tp!175269))))

(assert (=> b!553755 (= tp!175187 e!335355)))

(assert (= (and b!553755 (is-Cons!5507 (originalCharacters!1091 token!491))) b!554144))

(declare-fun b!554145 () Bool)

(declare-fun e!335356 () Bool)

(declare-fun tp!175270 () Bool)

(assert (=> b!554145 (= e!335356 (and tp_is_empty!3127 tp!175270))))

(assert (=> b!553766 (= tp!175191 e!335356)))

(assert (= (and b!553766 (is-Cons!5507 (t!75288 input!2705))) b!554145))

(declare-fun b_lambda!21301 () Bool)

(assert (= b_lambda!21293 (or (and b!553768 b_free!15545) (and b!553767 b_free!15549 (= (toValue!1903 (transformation!1052 (h!10909 rules!3103))) (toValue!1903 (transformation!1052 (rule!1780 token!491))))) (and b!554143 b_free!15561 (= (toValue!1903 (transformation!1052 (h!10909 (t!75289 rules!3103)))) (toValue!1903 (transformation!1052 (rule!1780 token!491))))) b_lambda!21301)))

(declare-fun b_lambda!21303 () Bool)

(assert (= b_lambda!21299 (or (and b!553768 b_free!15547) (and b!553767 b_free!15551 (= (toChars!1762 (transformation!1052 (h!10909 rules!3103))) (toChars!1762 (transformation!1052 (rule!1780 token!491))))) (and b!554143 b_free!15563 (= (toChars!1762 (transformation!1052 (h!10909 (t!75289 rules!3103)))) (toChars!1762 (transformation!1052 (rule!1780 token!491))))) b_lambda!21303)))

(declare-fun b_lambda!21305 () Bool)

(assert (= b_lambda!21287 (or (and b!553768 b_free!15547) (and b!553767 b_free!15551 (= (toChars!1762 (transformation!1052 (h!10909 rules!3103))) (toChars!1762 (transformation!1052 (rule!1780 token!491))))) (and b!554143 b_free!15563 (= (toChars!1762 (transformation!1052 (h!10909 (t!75289 rules!3103)))) (toChars!1762 (transformation!1052 (rule!1780 token!491))))) b_lambda!21305)))

(push 1)

(assert (not d!193066))

(assert (not b!553942))

(assert (not d!193124))

(assert (not d!193060))

(assert (not b!553882))

(assert (not b!553938))

(assert (not b!554091))

(assert (not b!554132))

(assert (not b!553957))

(assert (not d!193000))

(assert (not b!553885))

(assert b_and!54127)

(assert (not b!554057))

(assert (not b!553940))

(assert (not b!554131))

(assert (not d!193120))

(assert (not b!554145))

(assert (not d!193036))

(assert (not b!554086))

(assert (not b!553860))

(assert (not b!553881))

(assert (not d!193058))

(assert (not b!554142))

(assert (not b!553910))

(assert (not b!554105))

(assert (not b_lambda!21305))

(assert (not b!553975))

(assert (not b!554107))

(assert (not tb!48343))

(assert (not d!193094))

(assert (not b!554060))

(assert (not b!554103))

(assert (not d!193008))

(assert (not b!554122))

(assert (not b!554088))

(assert (not b!553979))

(assert (not d!193096))

(assert (not b!553968))

(assert (not b!553950))

(assert (not b!554108))

(assert (not b!554123))

(assert (not d!193014))

(assert (not bm!38455))

(assert (not d!193056))

(assert b_and!54139)

(assert (not d!193034))

(assert (not b!553905))

(assert (not b!554101))

(assert (not b!554072))

(assert (not b!554141))

(assert (not b!553958))

(assert (not b!553879))

(assert (not d!193038))

(assert (not b!554128))

(assert (not b!553927))

(assert (not b!554062))

(assert b_and!54143)

(assert (not d!193108))

(assert (not b!554109))

(assert (not d!193030))

(assert (not b!553887))

(assert (not b!554070))

(assert (not b_next!15579))

(assert tp_is_empty!3127)

(assert (not b_next!15565))

(assert (not b!554063))

(assert (not d!193098))

(assert (not d!193064))

(assert (not b!554064))

(assert (not b!553880))

(assert (not d!193006))

(assert (not d!193042))

(assert (not tb!48339))

(assert (not b!553928))

(assert (not b!553883))

(assert (not b!553941))

(assert (not tb!48347))

(assert (not b!553949))

(assert (not d!193052))

(assert (not b!554065))

(assert (not b!554100))

(assert (not b_next!15563))

(assert (not b!553965))

(assert (not b!553955))

(assert (not b!554067))

(assert (not b_next!15561))

(assert (not b_next!15567))

(assert (not b!554144))

(assert (not b!554130))

(assert (not b!553952))

(assert (not b!553916))

(assert (not d!193016))

(assert b_and!54129)

(assert (not d!193070))

(assert (not d!192998))

(assert (not d!193028))

(assert (not b!553926))

(assert (not b!553886))

(assert (not b!554102))

(assert (not d!193078))

(assert (not b!554056))

(assert (not b!554074))

(assert (not b!553946))

(assert (not b!554104))

(assert (not d!193076))

(assert (not b!554073))

(assert (not b_lambda!21291))

(assert (not b!554069))

(assert b_and!54145)

(assert (not b!554071))

(assert (not d!193110))

(assert (not b!553963))

(assert (not b!553971))

(assert (not b!554089))

(assert (not d!193050))

(assert (not d!193040))

(assert (not b_next!15577))

(assert (not tb!48351))

(assert (not bm!38451))

(assert (not b!554058))

(assert (not b!553936))

(assert (not d!193046))

(assert (not b!554094))

(assert (not d!193112))

(assert (not b!554121))

(assert (not b!553976))

(assert (not d!193062))

(assert b_and!54141)

(assert (not d!193116))

(assert (not d!193044))

(assert (not d!193072))

(assert (not b!553937))

(assert (not b!553897))

(assert (not b_lambda!21289))

(assert (not b!554061))

(assert (not b!553945))

(assert (not b!553933))

(assert (not b_lambda!21301))

(assert (not b!553944))

(assert (not d!193114))

(assert (not b_lambda!21303))

(assert (not b!553898))

(assert (not b!553972))

(assert (not d!192996))

(assert (not b!553904))

(assert (not b!553948))

(assert (not d!193054))

(assert (not b!554066))

(check-sat)

(pop 1)

(push 1)

(assert b_and!54127)

(assert b_and!54139)

(assert b_and!54143)

(assert (not b_next!15579))

(assert (not b_next!15565))

(assert b_and!54129)

(assert b_and!54145)

(assert (not b_next!15577))

(assert b_and!54141)

(assert (not b_next!15567))

(assert (not b_next!15563))

(assert (not b_next!15561))

(check-sat)

(pop 1)

