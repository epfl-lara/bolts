; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52340 () Bool)

(assert start!52340)

(declare-fun b!567772 () Bool)

(declare-fun b_free!15845 () Bool)

(declare-fun b_next!15861 () Bool)

(assert (=> b!567772 (= b_free!15845 (not b_next!15861))))

(declare-fun tp!178883 () Bool)

(declare-fun b_and!55299 () Bool)

(assert (=> b!567772 (= tp!178883 b_and!55299)))

(declare-fun b_free!15847 () Bool)

(declare-fun b_next!15863 () Bool)

(assert (=> b!567772 (= b_free!15847 (not b_next!15863))))

(declare-fun tp!178881 () Bool)

(declare-fun b_and!55301 () Bool)

(assert (=> b!567772 (= tp!178881 b_and!55301)))

(declare-fun b!567782 () Bool)

(declare-fun b_free!15849 () Bool)

(declare-fun b_next!15865 () Bool)

(assert (=> b!567782 (= b_free!15849 (not b_next!15865))))

(declare-fun tp!178882 () Bool)

(declare-fun b_and!55303 () Bool)

(assert (=> b!567782 (= tp!178882 b_and!55303)))

(declare-fun b_free!15851 () Bool)

(declare-fun b_next!15867 () Bool)

(assert (=> b!567782 (= b_free!15851 (not b_next!15867))))

(declare-fun tp!178887 () Bool)

(declare-fun b_and!55305 () Bool)

(assert (=> b!567782 (= tp!178887 b_and!55305)))

(declare-fun b!567771 () Bool)

(declare-fun e!343152 () Bool)

(declare-datatypes ((C!3752 0))(
  ( (C!3753 (val!2102 Int)) )
))
(declare-datatypes ((Regex!1415 0))(
  ( (ElementMatch!1415 (c!106415 C!3752)) (Concat!2520 (regOne!3342 Regex!1415) (regTwo!3342 Regex!1415)) (EmptyExpr!1415) (Star!1415 (reg!1744 Regex!1415)) (EmptyLang!1415) (Union!1415 (regOne!3343 Regex!1415) (regTwo!3343 Regex!1415)) )
))
(declare-datatypes ((List!5614 0))(
  ( (Nil!5604) (Cons!5604 (h!11005 (_ BitVec 16)) (t!76393 List!5614)) )
))
(declare-datatypes ((List!5615 0))(
  ( (Nil!5605) (Cons!5605 (h!11006 C!3752) (t!76394 List!5615)) )
))
(declare-datatypes ((IArray!3597 0))(
  ( (IArray!3598 (innerList!1856 List!5615)) )
))
(declare-datatypes ((Conc!1798 0))(
  ( (Node!1798 (left!4583 Conc!1798) (right!4913 Conc!1798) (csize!3826 Int) (cheight!2009 Int)) (Leaf!2846 (xs!4435 IArray!3597) (csize!3827 Int)) (Empty!1798) )
))
(declare-datatypes ((BalanceConc!3604 0))(
  ( (BalanceConc!3605 (c!106416 Conc!1798)) )
))
(declare-datatypes ((TokenValue!1105 0))(
  ( (FloatLiteralValue!2210 (text!8180 List!5614)) (TokenValueExt!1104 (__x!4108 Int)) (Broken!5525 (value!35649 List!5614)) (Object!1114) (End!1105) (Def!1105) (Underscore!1105) (Match!1105) (Else!1105) (Error!1105) (Case!1105) (If!1105) (Extends!1105) (Abstract!1105) (Class!1105) (Val!1105) (DelimiterValue!2210 (del!1165 List!5614)) (KeywordValue!1111 (value!35650 List!5614)) (CommentValue!2210 (value!35651 List!5614)) (WhitespaceValue!2210 (value!35652 List!5614)) (IndentationValue!1105 (value!35653 List!5614)) (String!7268) (Int32!1105) (Broken!5526 (value!35654 List!5614)) (Boolean!1106) (Unit!10024) (OperatorValue!1108 (op!1165 List!5614)) (IdentifierValue!2210 (value!35655 List!5614)) (IdentifierValue!2211 (value!35656 List!5614)) (WhitespaceValue!2211 (value!35657 List!5614)) (True!2210) (False!2210) (Broken!5527 (value!35658 List!5614)) (Broken!5528 (value!35659 List!5614)) (True!2211) (RightBrace!1105) (RightBracket!1105) (Colon!1105) (Null!1105) (Comma!1105) (LeftBracket!1105) (False!2211) (LeftBrace!1105) (ImaginaryLiteralValue!1105 (text!8181 List!5614)) (StringLiteralValue!3315 (value!35660 List!5614)) (EOFValue!1105 (value!35661 List!5614)) (IdentValue!1105 (value!35662 List!5614)) (DelimiterValue!2211 (value!35663 List!5614)) (DedentValue!1105 (value!35664 List!5614)) (NewLineValue!1105 (value!35665 List!5614)) (IntegerValue!3315 (value!35666 (_ BitVec 32)) (text!8182 List!5614)) (IntegerValue!3316 (value!35667 Int) (text!8183 List!5614)) (Times!1105) (Or!1105) (Equal!1105) (Minus!1105) (Broken!5529 (value!35668 List!5614)) (And!1105) (Div!1105) (LessEqual!1105) (Mod!1105) (Concat!2521) (Not!1105) (Plus!1105) (SpaceValue!1105 (value!35669 List!5614)) (IntegerValue!3317 (value!35670 Int) (text!8184 List!5614)) (StringLiteralValue!3316 (text!8185 List!5614)) (FloatLiteralValue!2211 (text!8186 List!5614)) (BytesLiteralValue!1105 (value!35671 List!5614)) (CommentValue!2211 (value!35672 List!5614)) (StringLiteralValue!3317 (value!35673 List!5614)) (ErrorTokenValue!1105 (msg!1166 List!5614)) )
))
(declare-datatypes ((String!7269 0))(
  ( (String!7270 (value!35674 String)) )
))
(declare-datatypes ((TokenValueInjection!1978 0))(
  ( (TokenValueInjection!1979 (toValue!1936 Int) (toChars!1795 Int)) )
))
(declare-datatypes ((Rule!1962 0))(
  ( (Rule!1963 (regex!1081 Regex!1415) (tag!1343 String!7269) (isSeparator!1081 Bool) (transformation!1081 TokenValueInjection!1978)) )
))
(declare-datatypes ((Token!1898 0))(
  ( (Token!1899 (value!35675 TokenValue!1105) (rule!1821 Rule!1962) (size!4464 Int) (originalCharacters!1120 List!5615)) )
))
(declare-datatypes ((tuple2!6596 0))(
  ( (tuple2!6597 (_1!3562 Token!1898) (_2!3562 List!5615)) )
))
(declare-datatypes ((Option!1432 0))(
  ( (None!1431) (Some!1431 (v!16280 tuple2!6596)) )
))
(declare-fun lt!239612 () Option!1432)

(declare-fun get!2136 (Option!1432) tuple2!6596)

(assert (=> b!567771 (= e!343152 (= (_1!3562 (get!2136 lt!239612)) (_1!3562 (v!16280 lt!239612))))))

(declare-fun e!343167 () Bool)

(assert (=> b!567772 (= e!343167 (and tp!178883 tp!178881))))

(declare-fun b!567773 () Bool)

(declare-fun e!343165 () Bool)

(declare-fun e!343171 () Bool)

(assert (=> b!567773 (= e!343165 e!343171)))

(declare-fun res!243763 () Bool)

(assert (=> b!567773 (=> (not res!243763) (not e!343171))))

(declare-fun lt!239610 () Option!1432)

(declare-fun isDefined!1243 (Option!1432) Bool)

(assert (=> b!567773 (= res!243763 (isDefined!1243 lt!239610))))

(declare-datatypes ((List!5616 0))(
  ( (Nil!5606) (Cons!5606 (h!11007 Rule!1962) (t!76395 List!5616)) )
))
(declare-fun rules!3103 () List!5616)

(declare-datatypes ((LexerInterface!967 0))(
  ( (LexerInterfaceExt!964 (__x!4109 Int)) (Lexer!965) )
))
(declare-fun thiss!22590 () LexerInterface!967)

(declare-fun lt!239600 () List!5615)

(declare-fun maxPrefix!665 (LexerInterface!967 List!5616 List!5615) Option!1432)

(assert (=> b!567773 (= lt!239610 (maxPrefix!665 thiss!22590 rules!3103 lt!239600))))

(declare-fun input!2705 () List!5615)

(declare-fun suffix!1342 () List!5615)

(declare-fun ++!1569 (List!5615 List!5615) List!5615)

(assert (=> b!567773 (= lt!239600 (++!1569 input!2705 suffix!1342))))

(declare-fun lt!239611 () Int)

(declare-fun lt!239598 () List!5615)

(declare-fun lt!239595 () tuple2!6596)

(declare-fun lt!239624 () List!5615)

(declare-fun b!567774 () Bool)

(declare-fun lt!239616 () TokenValue!1105)

(declare-fun e!343175 () Bool)

(assert (=> b!567774 (= e!343175 (and (= (size!4464 (_1!3562 (v!16280 lt!239612))) lt!239611) (= (originalCharacters!1120 (_1!3562 (v!16280 lt!239612))) lt!239624) (= lt!239595 (tuple2!6597 (Token!1899 lt!239616 (rule!1821 (_1!3562 (v!16280 lt!239612))) lt!239611 lt!239624) lt!239598))))))

(declare-fun b!567775 () Bool)

(declare-fun e!343159 () Bool)

(declare-fun e!343168 () Bool)

(assert (=> b!567775 (= e!343159 e!343168)))

(declare-fun res!243780 () Bool)

(assert (=> b!567775 (=> res!243780 e!343168)))

(declare-fun lt!239622 () Int)

(assert (=> b!567775 (= res!243780 (>= lt!239611 lt!239622))))

(declare-fun b!567776 () Bool)

(declare-fun res!243778 () Bool)

(declare-fun e!343173 () Bool)

(assert (=> b!567776 (=> res!243778 e!343173)))

(declare-fun lt!239605 () List!5615)

(declare-fun isPrefix!715 (List!5615 List!5615) Bool)

(assert (=> b!567776 (= res!243778 (not (isPrefix!715 lt!239605 input!2705)))))

(declare-fun b!567777 () Bool)

(declare-fun e!343155 () Bool)

(assert (=> b!567777 (= e!343171 e!343155)))

(declare-fun res!243786 () Bool)

(assert (=> b!567777 (=> (not res!243786) (not e!343155))))

(declare-fun lt!239607 () tuple2!6596)

(declare-fun token!491 () Token!1898)

(assert (=> b!567777 (= res!243786 (and (= (_1!3562 lt!239607) token!491) (= (_2!3562 lt!239607) suffix!1342)))))

(assert (=> b!567777 (= lt!239607 (get!2136 lt!239610))))

(declare-fun b!567778 () Bool)

(declare-fun tp!178885 () Bool)

(declare-fun e!343162 () Bool)

(declare-fun e!343164 () Bool)

(declare-fun inv!21 (TokenValue!1105) Bool)

(assert (=> b!567778 (= e!343164 (and (inv!21 (value!35675 token!491)) e!343162 tp!178885))))

(declare-fun b!567779 () Bool)

(declare-fun res!243775 () Bool)

(declare-fun e!343160 () Bool)

(assert (=> b!567779 (=> (not res!243775) (not e!343160))))

(declare-fun rulesInvariant!930 (LexerInterface!967 List!5616) Bool)

(assert (=> b!567779 (= res!243775 (rulesInvariant!930 thiss!22590 rules!3103))))

(declare-fun b!567780 () Bool)

(declare-fun e!343150 () Bool)

(declare-fun lt!239597 () Option!1432)

(assert (=> b!567780 (= e!343150 (= lt!239612 lt!239597))))

(declare-fun e!343158 () Bool)

(declare-fun b!567781 () Bool)

(declare-fun tp!178886 () Bool)

(declare-fun inv!7040 (String!7269) Bool)

(declare-fun inv!7043 (TokenValueInjection!1978) Bool)

(assert (=> b!567781 (= e!343158 (and tp!178886 (inv!7040 (tag!1343 (h!11007 rules!3103))) (inv!7043 (transformation!1081 (h!11007 rules!3103))) e!343167))))

(declare-fun e!343154 () Bool)

(assert (=> b!567782 (= e!343154 (and tp!178882 tp!178887))))

(declare-fun res!243785 () Bool)

(assert (=> start!52340 (=> (not res!243785) (not e!343160))))

(get-info :version)

(assert (=> start!52340 (= res!243785 ((_ is Lexer!965) thiss!22590))))

(assert (=> start!52340 e!343160))

(declare-fun e!343170 () Bool)

(assert (=> start!52340 e!343170))

(declare-fun e!343149 () Bool)

(assert (=> start!52340 e!343149))

(declare-fun inv!7044 (Token!1898) Bool)

(assert (=> start!52340 (and (inv!7044 token!491) e!343164)))

(assert (=> start!52340 true))

(declare-fun e!343153 () Bool)

(assert (=> start!52340 e!343153))

(declare-fun b!567783 () Bool)

(assert (=> b!567783 (= e!343168 e!343152)))

(declare-fun res!243766 () Bool)

(assert (=> b!567783 (=> (not res!243766) (not e!343152))))

(assert (=> b!567783 (= res!243766 (isDefined!1243 lt!239612))))

(declare-fun b!567784 () Bool)

(declare-fun res!243772 () Bool)

(declare-fun e!343151 () Bool)

(assert (=> b!567784 (=> (not res!243772) (not e!343151))))

(declare-fun size!4465 (List!5615) Int)

(assert (=> b!567784 (= res!243772 (= (size!4464 token!491) (size!4465 (originalCharacters!1120 token!491))))))

(declare-fun b!567785 () Bool)

(declare-datatypes ((Unit!10025 0))(
  ( (Unit!10026) )
))
(declare-fun e!343172 () Unit!10025)

(declare-fun Unit!10027 () Unit!10025)

(assert (=> b!567785 (= e!343172 Unit!10027)))

(declare-fun b!567786 () Bool)

(declare-fun res!243761 () Bool)

(assert (=> b!567786 (=> res!243761 e!343150)))

(assert (=> b!567786 (= res!243761 (<= (size!4465 input!2705) lt!239611))))

(declare-fun b!567787 () Bool)

(declare-fun e!343166 () Bool)

(declare-fun e!343161 () Bool)

(assert (=> b!567787 (= e!343166 e!343161)))

(declare-fun res!243783 () Bool)

(assert (=> b!567787 (=> (not res!243783) (not e!343161))))

(declare-fun lt!239626 () List!5615)

(assert (=> b!567787 (= res!243783 (= lt!239626 lt!239600))))

(assert (=> b!567787 (= lt!239626 (++!1569 lt!239605 suffix!1342))))

(declare-fun b!567788 () Bool)

(declare-fun res!243776 () Bool)

(assert (=> b!567788 (=> res!243776 e!343173)))

(assert (=> b!567788 (= res!243776 (not (isPrefix!715 lt!239624 input!2705)))))

(declare-fun b!567789 () Bool)

(declare-fun Unit!10028 () Unit!10025)

(assert (=> b!567789 (= e!343172 Unit!10028)))

(assert (=> b!567789 false))

(declare-fun b!567790 () Bool)

(declare-fun e!343157 () Bool)

(assert (=> b!567790 (= e!343161 (not e!343157))))

(declare-fun res!243774 () Bool)

(assert (=> b!567790 (=> res!243774 e!343157)))

(assert (=> b!567790 (= res!243774 (not (isPrefix!715 input!2705 lt!239626)))))

(assert (=> b!567790 (isPrefix!715 lt!239605 lt!239626)))

(declare-fun lt!239614 () Unit!10025)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!562 (List!5615 List!5615) Unit!10025)

(assert (=> b!567790 (= lt!239614 (lemmaConcatTwoListThenFirstIsPrefix!562 lt!239605 suffix!1342))))

(assert (=> b!567790 (isPrefix!715 input!2705 lt!239600)))

(declare-fun lt!239601 () Unit!10025)

(assert (=> b!567790 (= lt!239601 (lemmaConcatTwoListThenFirstIsPrefix!562 input!2705 suffix!1342))))

(declare-fun lt!239593 () Token!1898)

(assert (=> b!567790 (= lt!239593 (Token!1899 lt!239616 (rule!1821 (_1!3562 (v!16280 lt!239612))) lt!239611 lt!239624))))

(assert (=> b!567790 e!343175))

(declare-fun res!243770 () Bool)

(assert (=> b!567790 (=> (not res!243770) (not e!343175))))

(assert (=> b!567790 (= res!243770 (= (value!35675 (_1!3562 (v!16280 lt!239612))) lt!239616))))

(declare-fun lt!239620 () BalanceConc!3604)

(declare-fun apply!1346 (TokenValueInjection!1978 BalanceConc!3604) TokenValue!1105)

(assert (=> b!567790 (= lt!239616 (apply!1346 (transformation!1081 (rule!1821 (_1!3562 (v!16280 lt!239612)))) lt!239620))))

(declare-fun seqFromList!1269 (List!5615) BalanceConc!3604)

(assert (=> b!567790 (= lt!239620 (seqFromList!1269 lt!239624))))

(declare-fun lt!239615 () Unit!10025)

(declare-fun lemmaInv!217 (TokenValueInjection!1978) Unit!10025)

(assert (=> b!567790 (= lt!239615 (lemmaInv!217 (transformation!1081 (rule!1821 token!491))))))

(declare-fun lt!239625 () Unit!10025)

(assert (=> b!567790 (= lt!239625 (lemmaInv!217 (transformation!1081 (rule!1821 (_1!3562 (v!16280 lt!239612))))))))

(declare-fun ruleValid!291 (LexerInterface!967 Rule!1962) Bool)

(assert (=> b!567790 (ruleValid!291 thiss!22590 (rule!1821 token!491))))

(declare-fun lt!239623 () Unit!10025)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!148 (LexerInterface!967 Rule!1962 List!5616) Unit!10025)

(assert (=> b!567790 (= lt!239623 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!148 thiss!22590 (rule!1821 token!491) rules!3103))))

(assert (=> b!567790 (ruleValid!291 thiss!22590 (rule!1821 (_1!3562 (v!16280 lt!239612))))))

(declare-fun lt!239608 () Unit!10025)

(assert (=> b!567790 (= lt!239608 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!148 thiss!22590 (rule!1821 (_1!3562 (v!16280 lt!239612))) rules!3103))))

(assert (=> b!567790 (isPrefix!715 input!2705 input!2705)))

(declare-fun lt!239618 () Unit!10025)

(declare-fun lemmaIsPrefixRefl!453 (List!5615 List!5615) Unit!10025)

(assert (=> b!567790 (= lt!239618 (lemmaIsPrefixRefl!453 input!2705 input!2705))))

(assert (=> b!567790 (= (_2!3562 (v!16280 lt!239612)) lt!239598)))

(declare-fun lt!239596 () Unit!10025)

(declare-fun lemmaSamePrefixThenSameSuffix!438 (List!5615 List!5615 List!5615 List!5615 List!5615) Unit!10025)

(assert (=> b!567790 (= lt!239596 (lemmaSamePrefixThenSameSuffix!438 lt!239624 (_2!3562 (v!16280 lt!239612)) lt!239624 lt!239598 input!2705))))

(declare-fun getSuffix!234 (List!5615 List!5615) List!5615)

(assert (=> b!567790 (= lt!239598 (getSuffix!234 input!2705 lt!239624))))

(declare-fun lt!239606 () List!5615)

(assert (=> b!567790 (isPrefix!715 lt!239624 lt!239606)))

(assert (=> b!567790 (= lt!239606 (++!1569 lt!239624 (_2!3562 (v!16280 lt!239612))))))

(declare-fun lt!239602 () Unit!10025)

(assert (=> b!567790 (= lt!239602 (lemmaConcatTwoListThenFirstIsPrefix!562 lt!239624 (_2!3562 (v!16280 lt!239612))))))

(declare-fun lt!239592 () Unit!10025)

(declare-fun lemmaCharactersSize!148 (Token!1898) Unit!10025)

(assert (=> b!567790 (= lt!239592 (lemmaCharactersSize!148 token!491))))

(declare-fun lt!239619 () Unit!10025)

(assert (=> b!567790 (= lt!239619 (lemmaCharactersSize!148 (_1!3562 (v!16280 lt!239612))))))

(declare-fun lt!239621 () Unit!10025)

(assert (=> b!567790 (= lt!239621 e!343172)))

(declare-fun c!106414 () Bool)

(assert (=> b!567790 (= c!106414 (> lt!239611 lt!239622))))

(assert (=> b!567790 (= lt!239622 (size!4465 lt!239605))))

(assert (=> b!567790 (= lt!239611 (size!4465 lt!239624))))

(declare-fun list!2325 (BalanceConc!3604) List!5615)

(declare-fun charsOf!710 (Token!1898) BalanceConc!3604)

(assert (=> b!567790 (= lt!239624 (list!2325 (charsOf!710 (_1!3562 (v!16280 lt!239612)))))))

(assert (=> b!567790 (= lt!239612 (Some!1431 lt!239595))))

(assert (=> b!567790 (= lt!239595 (tuple2!6597 (_1!3562 (v!16280 lt!239612)) (_2!3562 (v!16280 lt!239612))))))

(declare-fun lt!239604 () Unit!10025)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!158 (List!5615 List!5615 List!5615 List!5615) Unit!10025)

(assert (=> b!567790 (= lt!239604 (lemmaConcatSameAndSameSizesThenSameLists!158 lt!239605 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!567791 () Bool)

(declare-fun tp!178888 () Bool)

(assert (=> b!567791 (= e!343149 (and e!343158 tp!178888))))

(declare-fun b!567792 () Bool)

(declare-fun res!243788 () Bool)

(assert (=> b!567792 (=> res!243788 e!343173)))

(declare-fun contains!1315 (List!5616 Rule!1962) Bool)

(assert (=> b!567792 (= res!243788 (not (contains!1315 rules!3103 (rule!1821 token!491))))))

(declare-fun b!567793 () Bool)

(declare-fun lt!239617 () TokenValue!1105)

(declare-fun lt!239609 () List!5615)

(assert (=> b!567793 (= e!343151 (and (= (size!4464 token!491) lt!239622) (= (originalCharacters!1120 token!491) lt!239605) (= (tuple2!6597 token!491 suffix!1342) (tuple2!6597 (Token!1899 lt!239617 (rule!1821 token!491) lt!239622 lt!239605) lt!239609))))))

(declare-fun b!567794 () Bool)

(declare-fun res!243787 () Bool)

(declare-fun e!343156 () Bool)

(assert (=> b!567794 (=> res!243787 e!343156)))

(declare-fun matchR!562 (Regex!1415 List!5615) Bool)

(assert (=> b!567794 (= res!243787 (not (matchR!562 (regex!1081 (rule!1821 (_1!3562 (v!16280 lt!239612)))) lt!239624)))))

(declare-fun b!567795 () Bool)

(declare-fun res!243767 () Bool)

(assert (=> b!567795 (=> (not res!243767) (not e!343160))))

(declare-fun isEmpty!4045 (List!5616) Bool)

(assert (=> b!567795 (= res!243767 (not (isEmpty!4045 rules!3103)))))

(declare-fun b!567796 () Bool)

(declare-fun res!243782 () Bool)

(assert (=> b!567796 (=> (not res!243782) (not e!343160))))

(declare-fun isEmpty!4046 (List!5615) Bool)

(assert (=> b!567796 (= res!243782 (not (isEmpty!4046 input!2705)))))

(declare-fun b!567797 () Bool)

(assert (=> b!567797 (= e!343160 e!343165)))

(declare-fun res!243768 () Bool)

(assert (=> b!567797 (=> (not res!243768) (not e!343165))))

(assert (=> b!567797 (= res!243768 (= lt!239605 input!2705))))

(assert (=> b!567797 (= lt!239605 (list!2325 (charsOf!710 token!491)))))

(declare-fun b!567798 () Bool)

(declare-fun res!243771 () Bool)

(assert (=> b!567798 (=> (not res!243771) (not e!343175))))

(assert (=> b!567798 (= res!243771 (= (size!4464 (_1!3562 (v!16280 lt!239612))) (size!4465 (originalCharacters!1120 (_1!3562 (v!16280 lt!239612))))))))

(declare-fun b!567799 () Bool)

(assert (=> b!567799 (= e!343156 e!343150)))

(declare-fun res!243777 () Bool)

(assert (=> b!567799 (=> res!243777 e!343150)))

(declare-fun lt!239594 () Option!1432)

(assert (=> b!567799 (= res!243777 (not (= lt!239594 lt!239597)))))

(assert (=> b!567799 (= lt!239597 (Some!1431 (tuple2!6597 lt!239593 lt!239598)))))

(declare-fun lt!239591 () Unit!10025)

(declare-fun lemmaSemiInverse!184 (TokenValueInjection!1978 BalanceConc!3604) Unit!10025)

(assert (=> b!567799 (= lt!239591 (lemmaSemiInverse!184 (transformation!1081 (rule!1821 (_1!3562 (v!16280 lt!239612)))) lt!239620))))

(declare-fun b!567800 () Bool)

(declare-fun tp!178880 () Bool)

(assert (=> b!567800 (= e!343162 (and tp!178880 (inv!7040 (tag!1343 (rule!1821 token!491))) (inv!7043 (transformation!1081 (rule!1821 token!491))) e!343154))))

(declare-fun b!567801 () Bool)

(declare-fun res!243781 () Bool)

(assert (=> b!567801 (=> res!243781 e!343173)))

(assert (=> b!567801 (= res!243781 (not (= lt!239606 input!2705)))))

(declare-fun b!567802 () Bool)

(assert (=> b!567802 (= e!343155 e!343166)))

(declare-fun res!243779 () Bool)

(assert (=> b!567802 (=> (not res!243779) (not e!343166))))

(assert (=> b!567802 (= res!243779 ((_ is Some!1431) lt!239612))))

(assert (=> b!567802 (= lt!239612 (maxPrefix!665 thiss!22590 rules!3103 input!2705))))

(declare-fun b!567803 () Bool)

(declare-fun tp_is_empty!3185 () Bool)

(declare-fun tp!178879 () Bool)

(assert (=> b!567803 (= e!343170 (and tp_is_empty!3185 tp!178879))))

(declare-fun b!567804 () Bool)

(assert (=> b!567804 (= e!343173 e!343156)))

(declare-fun res!243764 () Bool)

(assert (=> b!567804 (=> res!243764 e!343156)))

(assert (=> b!567804 (= res!243764 (not (contains!1315 rules!3103 (rule!1821 (_1!3562 (v!16280 lt!239612))))))))

(assert (=> b!567804 (= lt!239598 (_2!3562 (v!16280 lt!239612)))))

(declare-fun b!567805 () Bool)

(declare-fun res!243773 () Bool)

(assert (=> b!567805 (=> res!243773 e!343173)))

(assert (=> b!567805 (= res!243773 (not (matchR!562 (regex!1081 (rule!1821 token!491)) input!2705)))))

(declare-fun b!567806 () Bool)

(declare-fun res!243769 () Bool)

(assert (=> b!567806 (=> res!243769 e!343173)))

(assert (=> b!567806 (= res!243769 (not (= (getSuffix!234 input!2705 input!2705) Nil!5605)))))

(declare-fun b!567807 () Bool)

(assert (=> b!567807 (= e!343157 e!343173)))

(declare-fun res!243765 () Bool)

(assert (=> b!567807 (=> res!243765 e!343173)))

(assert (=> b!567807 (= res!243765 (>= lt!239611 lt!239622))))

(assert (=> b!567807 e!343159))

(declare-fun res!243760 () Bool)

(assert (=> b!567807 (=> (not res!243760) (not e!343159))))

(declare-fun maxPrefixOneRule!366 (LexerInterface!967 Rule!1962 List!5615) Option!1432)

(assert (=> b!567807 (= res!243760 (= (maxPrefixOneRule!366 thiss!22590 (rule!1821 token!491) lt!239600) (Some!1431 (tuple2!6597 (Token!1899 lt!239617 (rule!1821 token!491) lt!239622 lt!239605) suffix!1342))))))

(declare-fun lt!239603 () Unit!10025)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!116 (LexerInterface!967 List!5616 List!5615 List!5615 List!5615 Rule!1962) Unit!10025)

(assert (=> b!567807 (= lt!239603 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!116 thiss!22590 rules!3103 lt!239605 lt!239600 suffix!1342 (rule!1821 token!491)))))

(assert (=> b!567807 (= lt!239594 (Some!1431 (tuple2!6597 lt!239593 (_2!3562 (v!16280 lt!239612)))))))

(assert (=> b!567807 (= lt!239594 (maxPrefixOneRule!366 thiss!22590 (rule!1821 (_1!3562 (v!16280 lt!239612))) input!2705))))

(declare-fun lt!239599 () Unit!10025)

(assert (=> b!567807 (= lt!239599 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!116 thiss!22590 rules!3103 lt!239624 input!2705 (_2!3562 (v!16280 lt!239612)) (rule!1821 (_1!3562 (v!16280 lt!239612)))))))

(assert (=> b!567807 e!343151))

(declare-fun res!243762 () Bool)

(assert (=> b!567807 (=> (not res!243762) (not e!343151))))

(assert (=> b!567807 (= res!243762 (= (value!35675 token!491) lt!239617))))

(assert (=> b!567807 (= lt!239617 (apply!1346 (transformation!1081 (rule!1821 token!491)) (seqFromList!1269 lt!239605)))))

(assert (=> b!567807 (= suffix!1342 lt!239609)))

(declare-fun lt!239613 () Unit!10025)

(assert (=> b!567807 (= lt!239613 (lemmaSamePrefixThenSameSuffix!438 lt!239605 suffix!1342 lt!239605 lt!239609 lt!239600))))

(assert (=> b!567807 (= lt!239609 (getSuffix!234 lt!239600 lt!239605))))

(declare-fun b!567808 () Bool)

(declare-fun res!243784 () Bool)

(assert (=> b!567808 (=> res!243784 e!343173)))

(assert (=> b!567808 (= res!243784 (not (= (++!1569 lt!239624 lt!239598) input!2705)))))

(declare-fun b!567809 () Bool)

(declare-fun tp!178884 () Bool)

(assert (=> b!567809 (= e!343153 (and tp_is_empty!3185 tp!178884))))

(assert (= (and start!52340 res!243785) b!567795))

(assert (= (and b!567795 res!243767) b!567779))

(assert (= (and b!567779 res!243775) b!567796))

(assert (= (and b!567796 res!243782) b!567797))

(assert (= (and b!567797 res!243768) b!567773))

(assert (= (and b!567773 res!243763) b!567777))

(assert (= (and b!567777 res!243786) b!567802))

(assert (= (and b!567802 res!243779) b!567787))

(assert (= (and b!567787 res!243783) b!567790))

(assert (= (and b!567790 c!106414) b!567789))

(assert (= (and b!567790 (not c!106414)) b!567785))

(assert (= (and b!567790 res!243770) b!567798))

(assert (= (and b!567798 res!243771) b!567774))

(assert (= (and b!567790 (not res!243774)) b!567807))

(assert (= (and b!567807 res!243762) b!567784))

(assert (= (and b!567784 res!243772) b!567793))

(assert (= (and b!567807 res!243760) b!567775))

(assert (= (and b!567775 (not res!243780)) b!567783))

(assert (= (and b!567783 res!243766) b!567771))

(assert (= (and b!567807 (not res!243765)) b!567792))

(assert (= (and b!567792 (not res!243788)) b!567805))

(assert (= (and b!567805 (not res!243773)) b!567776))

(assert (= (and b!567776 (not res!243778)) b!567806))

(assert (= (and b!567806 (not res!243769)) b!567801))

(assert (= (and b!567801 (not res!243781)) b!567788))

(assert (= (and b!567788 (not res!243776)) b!567808))

(assert (= (and b!567808 (not res!243784)) b!567804))

(assert (= (and b!567804 (not res!243764)) b!567794))

(assert (= (and b!567794 (not res!243787)) b!567799))

(assert (= (and b!567799 (not res!243777)) b!567786))

(assert (= (and b!567786 (not res!243761)) b!567780))

(assert (= (and start!52340 ((_ is Cons!5605) suffix!1342)) b!567803))

(assert (= b!567781 b!567772))

(assert (= b!567791 b!567781))

(assert (= (and start!52340 ((_ is Cons!5606) rules!3103)) b!567791))

(assert (= b!567800 b!567782))

(assert (= b!567778 b!567800))

(assert (= start!52340 b!567778))

(assert (= (and start!52340 ((_ is Cons!5605) input!2705)) b!567809))

(declare-fun m!821693 () Bool)

(assert (=> b!567794 m!821693))

(declare-fun m!821695 () Bool)

(assert (=> b!567805 m!821695))

(declare-fun m!821697 () Bool)

(assert (=> b!567779 m!821697))

(declare-fun m!821699 () Bool)

(assert (=> b!567787 m!821699))

(declare-fun m!821701 () Bool)

(assert (=> b!567802 m!821701))

(declare-fun m!821703 () Bool)

(assert (=> b!567798 m!821703))

(declare-fun m!821705 () Bool)

(assert (=> b!567792 m!821705))

(declare-fun m!821707 () Bool)

(assert (=> b!567800 m!821707))

(declare-fun m!821709 () Bool)

(assert (=> b!567800 m!821709))

(declare-fun m!821711 () Bool)

(assert (=> start!52340 m!821711))

(declare-fun m!821713 () Bool)

(assert (=> b!567795 m!821713))

(declare-fun m!821715 () Bool)

(assert (=> b!567790 m!821715))

(declare-fun m!821717 () Bool)

(assert (=> b!567790 m!821717))

(declare-fun m!821719 () Bool)

(assert (=> b!567790 m!821719))

(declare-fun m!821721 () Bool)

(assert (=> b!567790 m!821721))

(declare-fun m!821723 () Bool)

(assert (=> b!567790 m!821723))

(declare-fun m!821725 () Bool)

(assert (=> b!567790 m!821725))

(declare-fun m!821727 () Bool)

(assert (=> b!567790 m!821727))

(declare-fun m!821729 () Bool)

(assert (=> b!567790 m!821729))

(declare-fun m!821731 () Bool)

(assert (=> b!567790 m!821731))

(declare-fun m!821733 () Bool)

(assert (=> b!567790 m!821733))

(declare-fun m!821735 () Bool)

(assert (=> b!567790 m!821735))

(declare-fun m!821737 () Bool)

(assert (=> b!567790 m!821737))

(declare-fun m!821739 () Bool)

(assert (=> b!567790 m!821739))

(declare-fun m!821741 () Bool)

(assert (=> b!567790 m!821741))

(declare-fun m!821743 () Bool)

(assert (=> b!567790 m!821743))

(declare-fun m!821745 () Bool)

(assert (=> b!567790 m!821745))

(declare-fun m!821747 () Bool)

(assert (=> b!567790 m!821747))

(declare-fun m!821749 () Bool)

(assert (=> b!567790 m!821749))

(declare-fun m!821751 () Bool)

(assert (=> b!567790 m!821751))

(declare-fun m!821753 () Bool)

(assert (=> b!567790 m!821753))

(assert (=> b!567790 m!821737))

(declare-fun m!821755 () Bool)

(assert (=> b!567790 m!821755))

(declare-fun m!821757 () Bool)

(assert (=> b!567790 m!821757))

(declare-fun m!821759 () Bool)

(assert (=> b!567790 m!821759))

(declare-fun m!821761 () Bool)

(assert (=> b!567790 m!821761))

(declare-fun m!821763 () Bool)

(assert (=> b!567790 m!821763))

(declare-fun m!821765 () Bool)

(assert (=> b!567790 m!821765))

(declare-fun m!821767 () Bool)

(assert (=> b!567790 m!821767))

(declare-fun m!821769 () Bool)

(assert (=> b!567784 m!821769))

(declare-fun m!821771 () Bool)

(assert (=> b!567777 m!821771))

(declare-fun m!821773 () Bool)

(assert (=> b!567786 m!821773))

(declare-fun m!821775 () Bool)

(assert (=> b!567771 m!821775))

(declare-fun m!821777 () Bool)

(assert (=> b!567808 m!821777))

(declare-fun m!821779 () Bool)

(assert (=> b!567799 m!821779))

(declare-fun m!821781 () Bool)

(assert (=> b!567797 m!821781))

(assert (=> b!567797 m!821781))

(declare-fun m!821783 () Bool)

(assert (=> b!567797 m!821783))

(declare-fun m!821785 () Bool)

(assert (=> b!567778 m!821785))

(declare-fun m!821787 () Bool)

(assert (=> b!567788 m!821787))

(declare-fun m!821789 () Bool)

(assert (=> b!567783 m!821789))

(declare-fun m!821791 () Bool)

(assert (=> b!567781 m!821791))

(declare-fun m!821793 () Bool)

(assert (=> b!567781 m!821793))

(declare-fun m!821795 () Bool)

(assert (=> b!567804 m!821795))

(declare-fun m!821797 () Bool)

(assert (=> b!567796 m!821797))

(declare-fun m!821799 () Bool)

(assert (=> b!567773 m!821799))

(declare-fun m!821801 () Bool)

(assert (=> b!567773 m!821801))

(declare-fun m!821803 () Bool)

(assert (=> b!567773 m!821803))

(declare-fun m!821805 () Bool)

(assert (=> b!567807 m!821805))

(declare-fun m!821807 () Bool)

(assert (=> b!567807 m!821807))

(declare-fun m!821809 () Bool)

(assert (=> b!567807 m!821809))

(declare-fun m!821811 () Bool)

(assert (=> b!567807 m!821811))

(declare-fun m!821813 () Bool)

(assert (=> b!567807 m!821813))

(declare-fun m!821815 () Bool)

(assert (=> b!567807 m!821815))

(declare-fun m!821817 () Bool)

(assert (=> b!567807 m!821817))

(assert (=> b!567807 m!821809))

(declare-fun m!821819 () Bool)

(assert (=> b!567807 m!821819))

(declare-fun m!821821 () Bool)

(assert (=> b!567806 m!821821))

(declare-fun m!821823 () Bool)

(assert (=> b!567776 m!821823))

(check-sat (not b!567808) (not b!567788) b_and!55303 (not b!567796) (not b!567792) (not b!567794) (not b!567804) (not start!52340) b_and!55299 (not b!567798) (not b!567773) (not b!567779) (not b!567786) (not b!567781) (not b!567771) (not b!567807) tp_is_empty!3185 (not b_next!15867) (not b!567777) (not b!567790) (not b!567800) (not b_next!15861) (not b!567809) (not b!567776) (not b!567791) (not b!567806) (not b!567799) (not b!567805) (not b_next!15865) (not b!567784) b_and!55305 (not b!567802) (not b_next!15863) (not b!567797) (not b!567803) (not b!567787) (not b!567778) b_and!55301 (not b!567783) (not b!567795))
(check-sat (not b_next!15867) (not b_next!15861) b_and!55303 (not b_next!15865) b_and!55299 b_and!55301 b_and!55305 (not b_next!15863))
