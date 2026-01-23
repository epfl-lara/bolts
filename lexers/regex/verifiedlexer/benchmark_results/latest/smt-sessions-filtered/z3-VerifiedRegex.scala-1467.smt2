; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78226 () Bool)

(assert start!78226)

(declare-fun b!866780 () Bool)

(declare-fun b_free!26545 () Bool)

(declare-fun b_next!26609 () Bool)

(assert (=> b!866780 (= b_free!26545 (not b_next!26609))))

(declare-fun tp!274152 () Bool)

(declare-fun b_and!77725 () Bool)

(assert (=> b!866780 (= tp!274152 b_and!77725)))

(declare-fun b_free!26547 () Bool)

(declare-fun b_next!26611 () Bool)

(assert (=> b!866780 (= b_free!26547 (not b_next!26611))))

(declare-fun tp!274154 () Bool)

(declare-fun b_and!77727 () Bool)

(assert (=> b!866780 (= tp!274154 b_and!77727)))

(declare-fun b!866775 () Bool)

(declare-fun b_free!26549 () Bool)

(declare-fun b_next!26613 () Bool)

(assert (=> b!866775 (= b_free!26549 (not b_next!26613))))

(declare-fun tp!274163 () Bool)

(declare-fun b_and!77729 () Bool)

(assert (=> b!866775 (= tp!274163 b_and!77729)))

(declare-fun b_free!26551 () Bool)

(declare-fun b_next!26615 () Bool)

(assert (=> b!866775 (= b_free!26551 (not b_next!26615))))

(declare-fun tp!274158 () Bool)

(declare-fun b_and!77731 () Bool)

(assert (=> b!866775 (= tp!274158 b_and!77731)))

(declare-fun b!866761 () Bool)

(declare-fun b_free!26553 () Bool)

(declare-fun b_next!26617 () Bool)

(assert (=> b!866761 (= b_free!26553 (not b_next!26617))))

(declare-fun tp!274161 () Bool)

(declare-fun b_and!77733 () Bool)

(assert (=> b!866761 (= tp!274161 b_and!77733)))

(declare-fun b_free!26555 () Bool)

(declare-fun b_next!26619 () Bool)

(assert (=> b!866761 (= b_free!26555 (not b_next!26619))))

(declare-fun tp!274155 () Bool)

(declare-fun b_and!77735 () Bool)

(assert (=> b!866761 (= tp!274155 b_and!77735)))

(declare-datatypes ((List!9388 0))(
  ( (Nil!9372) (Cons!9372 (h!14773 (_ BitVec 16)) (t!98838 List!9388)) )
))
(declare-datatypes ((TokenValue!1826 0))(
  ( (FloatLiteralValue!3652 (text!13227 List!9388)) (TokenValueExt!1825 (__x!7383 Int)) (Broken!9130 (value!56833 List!9388)) (Object!1841) (End!1826) (Def!1826) (Underscore!1826) (Match!1826) (Else!1826) (Error!1826) (Case!1826) (If!1826) (Extends!1826) (Abstract!1826) (Class!1826) (Val!1826) (DelimiterValue!3652 (del!1886 List!9388)) (KeywordValue!1832 (value!56834 List!9388)) (CommentValue!3652 (value!56835 List!9388)) (WhitespaceValue!3652 (value!56836 List!9388)) (IndentationValue!1826 (value!56837 List!9388)) (String!11027) (Int32!1826) (Broken!9131 (value!56838 List!9388)) (Boolean!1827) (Unit!13888) (OperatorValue!1829 (op!1886 List!9388)) (IdentifierValue!3652 (value!56839 List!9388)) (IdentifierValue!3653 (value!56840 List!9388)) (WhitespaceValue!3653 (value!56841 List!9388)) (True!3652) (False!3652) (Broken!9132 (value!56842 List!9388)) (Broken!9133 (value!56843 List!9388)) (True!3653) (RightBrace!1826) (RightBracket!1826) (Colon!1826) (Null!1826) (Comma!1826) (LeftBracket!1826) (False!3653) (LeftBrace!1826) (ImaginaryLiteralValue!1826 (text!13228 List!9388)) (StringLiteralValue!5478 (value!56844 List!9388)) (EOFValue!1826 (value!56845 List!9388)) (IdentValue!1826 (value!56846 List!9388)) (DelimiterValue!3653 (value!56847 List!9388)) (DedentValue!1826 (value!56848 List!9388)) (NewLineValue!1826 (value!56849 List!9388)) (IntegerValue!5478 (value!56850 (_ BitVec 32)) (text!13229 List!9388)) (IntegerValue!5479 (value!56851 Int) (text!13230 List!9388)) (Times!1826) (Or!1826) (Equal!1826) (Minus!1826) (Broken!9134 (value!56852 List!9388)) (And!1826) (Div!1826) (LessEqual!1826) (Mod!1826) (Concat!4019) (Not!1826) (Plus!1826) (SpaceValue!1826 (value!56853 List!9388)) (IntegerValue!5480 (value!56854 Int) (text!13231 List!9388)) (StringLiteralValue!5479 (text!13232 List!9388)) (FloatLiteralValue!3653 (text!13233 List!9388)) (BytesLiteralValue!1826 (value!56855 List!9388)) (CommentValue!3653 (value!56856 List!9388)) (StringLiteralValue!5480 (value!56857 List!9388)) (ErrorTokenValue!1826 (msg!1887 List!9388)) )
))
(declare-datatypes ((C!4956 0))(
  ( (C!4957 (val!2726 Int)) )
))
(declare-datatypes ((Regex!2193 0))(
  ( (ElementMatch!2193 (c!140189 C!4956)) (Concat!4020 (regOne!4898 Regex!2193) (regTwo!4898 Regex!2193)) (EmptyExpr!2193) (Star!2193 (reg!2522 Regex!2193)) (EmptyLang!2193) (Union!2193 (regOne!4899 Regex!2193) (regTwo!4899 Regex!2193)) )
))
(declare-datatypes ((String!11028 0))(
  ( (String!11029 (value!56858 String)) )
))
(declare-datatypes ((List!9389 0))(
  ( (Nil!9373) (Cons!9373 (h!14774 C!4956) (t!98839 List!9389)) )
))
(declare-datatypes ((IArray!6223 0))(
  ( (IArray!6224 (innerList!3169 List!9389)) )
))
(declare-datatypes ((Conc!3109 0))(
  ( (Node!3109 (left!6938 Conc!3109) (right!7268 Conc!3109) (csize!6448 Int) (cheight!3320 Int)) (Leaf!4577 (xs!5798 IArray!6223) (csize!6449 Int)) (Empty!3109) )
))
(declare-datatypes ((BalanceConc!6232 0))(
  ( (BalanceConc!6233 (c!140190 Conc!3109)) )
))
(declare-datatypes ((TokenValueInjection!3352 0))(
  ( (TokenValueInjection!3353 (toValue!2829 Int) (toChars!2688 Int)) )
))
(declare-datatypes ((Rule!3320 0))(
  ( (Rule!3321 (regex!1760 Regex!2193) (tag!2022 String!11028) (isSeparator!1760 Bool) (transformation!1760 TokenValueInjection!3352)) )
))
(declare-datatypes ((Token!3186 0))(
  ( (Token!3187 (value!56859 TokenValue!1826) (rule!3183 Rule!3320) (size!7807 Int) (originalCharacters!2316 List!9389)) )
))
(declare-fun separatorToken!297 () Token!3186)

(declare-fun e!570398 () Bool)

(declare-fun e!570396 () Bool)

(declare-fun tp!274156 () Bool)

(declare-fun b!866758 () Bool)

(declare-fun inv!11905 (String!11028) Bool)

(declare-fun inv!11908 (TokenValueInjection!3352) Bool)

(assert (=> b!866758 (= e!570398 (and tp!274156 (inv!11905 (tag!2022 (rule!3183 separatorToken!297))) (inv!11908 (transformation!1760 (rule!3183 separatorToken!297))) e!570396))))

(declare-fun res!394738 () Bool)

(declare-fun e!570392 () Bool)

(assert (=> start!78226 (=> (not res!394738) (not e!570392))))

(declare-datatypes ((LexerInterface!1562 0))(
  ( (LexerInterfaceExt!1559 (__x!7384 Int)) (Lexer!1560) )
))
(declare-fun thiss!20117 () LexerInterface!1562)

(get-info :version)

(assert (=> start!78226 (= res!394738 ((_ is Lexer!1560) thiss!20117))))

(assert (=> start!78226 e!570392))

(assert (=> start!78226 true))

(declare-fun e!570386 () Bool)

(assert (=> start!78226 e!570386))

(declare-fun e!570382 () Bool)

(assert (=> start!78226 e!570382))

(declare-fun e!570400 () Bool)

(declare-fun inv!11909 (Token!3186) Bool)

(assert (=> start!78226 (and (inv!11909 separatorToken!297) e!570400)))

(declare-fun b!866759 () Bool)

(declare-fun e!570388 () Bool)

(declare-fun e!570391 () Bool)

(assert (=> b!866759 (= e!570388 e!570391)))

(declare-fun res!394731 () Bool)

(assert (=> b!866759 (=> res!394731 e!570391)))

(declare-datatypes ((List!9390 0))(
  ( (Nil!9374) (Cons!9374 (h!14775 Token!3186) (t!98840 List!9390)) )
))
(declare-fun lt!326928 () List!9390)

(declare-fun lt!326931 () List!9390)

(assert (=> b!866759 (= res!394731 (not (= (t!98840 (t!98840 lt!326928)) lt!326931)))))

(declare-fun lt!326933 () List!9390)

(declare-fun withSeparatorTokenList!90 (LexerInterface!1562 List!9390 Token!3186) List!9390)

(assert (=> b!866759 (= lt!326931 (withSeparatorTokenList!90 thiss!20117 lt!326933 separatorToken!297))))

(declare-fun l!5107 () List!9390)

(declare-fun tail!1068 (List!9390) List!9390)

(assert (=> b!866759 (= lt!326933 (tail!1068 l!5107))))

(declare-fun tp!274159 () Bool)

(declare-fun e!570384 () Bool)

(declare-fun b!866760 () Bool)

(declare-fun e!570399 () Bool)

(declare-fun inv!21 (TokenValue!1826) Bool)

(assert (=> b!866760 (= e!570399 (and (inv!21 (value!56859 (h!14775 l!5107))) e!570384 tp!274159))))

(declare-fun e!570393 () Bool)

(assert (=> b!866761 (= e!570393 (and tp!274161 tp!274155))))

(declare-fun b!866762 () Bool)

(declare-fun res!394735 () Bool)

(assert (=> b!866762 (=> res!394735 e!570391)))

(declare-fun head!1506 (List!9390) Token!3186)

(assert (=> b!866762 (= res!394735 (not (= (head!1506 l!5107) (h!14775 lt!326928))))))

(declare-fun b!866763 () Bool)

(declare-fun e!570387 () Bool)

(declare-datatypes ((List!9391 0))(
  ( (Nil!9375) (Cons!9375 (h!14776 Rule!3320) (t!98841 List!9391)) )
))
(declare-fun rules!2621 () List!9391)

(declare-fun rulesProduceIndividualToken!626 (LexerInterface!1562 List!9391 Token!3186) Bool)

(assert (=> b!866763 (= e!570387 (rulesProduceIndividualToken!626 thiss!20117 rules!2621 (h!14775 (t!98840 lt!326928))))))

(declare-fun b!866764 () Bool)

(declare-fun res!394739 () Bool)

(assert (=> b!866764 (=> (not res!394739) (not e!570392))))

(assert (=> b!866764 (= res!394739 (isSeparator!1760 (rule!3183 separatorToken!297)))))

(declare-fun tp!274164 () Bool)

(declare-fun b!866765 () Bool)

(assert (=> b!866765 (= e!570384 (and tp!274164 (inv!11905 (tag!2022 (rule!3183 (h!14775 l!5107)))) (inv!11908 (transformation!1760 (rule!3183 (h!14775 l!5107)))) e!570393))))

(declare-fun b!866766 () Bool)

(declare-fun res!394729 () Bool)

(assert (=> b!866766 (=> (not res!394729) (not e!570392))))

(declare-fun rulesProduceEachTokenIndividuallyList!450 (LexerInterface!1562 List!9391 List!9390) Bool)

(assert (=> b!866766 (= res!394729 (rulesProduceEachTokenIndividuallyList!450 thiss!20117 rules!2621 l!5107))))

(declare-fun e!570389 () Bool)

(declare-fun b!866767 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!56 (LexerInterface!1562 List!9390 List!9391) Bool)

(assert (=> b!866767 (= e!570389 (tokensListTwoByTwoPredicateSeparableList!56 thiss!20117 lt!326931 rules!2621))))

(declare-fun b!866768 () Bool)

(declare-fun res!394736 () Bool)

(assert (=> b!866768 (=> (not res!394736) (not e!570392))))

(assert (=> b!866768 (= res!394736 (rulesProduceIndividualToken!626 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun b!866769 () Bool)

(declare-fun res!394742 () Bool)

(assert (=> b!866769 (=> res!394742 e!570391)))

(assert (=> b!866769 (= res!394742 (not (= (h!14775 (t!98840 lt!326928)) separatorToken!297)))))

(declare-fun b!866770 () Bool)

(declare-fun res!394730 () Bool)

(assert (=> b!866770 (=> (not res!394730) (not e!570392))))

(declare-fun lambda!26014 () Int)

(declare-fun forall!2227 (List!9390 Int) Bool)

(assert (=> b!866770 (= res!394730 (forall!2227 l!5107 lambda!26014))))

(declare-fun b!866771 () Bool)

(declare-fun e!570397 () Bool)

(declare-fun tp!274162 () Bool)

(assert (=> b!866771 (= e!570386 (and e!570397 tp!274162))))

(declare-fun e!570394 () Bool)

(declare-fun b!866772 () Bool)

(declare-fun tp!274153 () Bool)

(assert (=> b!866772 (= e!570397 (and tp!274153 (inv!11905 (tag!2022 (h!14776 rules!2621))) (inv!11908 (transformation!1760 (h!14776 rules!2621))) e!570394))))

(declare-fun tp!274157 () Bool)

(declare-fun b!866773 () Bool)

(assert (=> b!866773 (= e!570400 (and (inv!21 (value!56859 separatorToken!297)) e!570398 tp!274157))))

(declare-fun b!866774 () Bool)

(assert (=> b!866774 (= e!570391 e!570387)))

(declare-fun res!394737 () Bool)

(assert (=> b!866774 (=> res!394737 e!570387)))

(declare-fun isEmpty!5566 (List!9390) Bool)

(assert (=> b!866774 (= res!394737 (isEmpty!5566 (t!98840 (t!98840 lt!326928))))))

(assert (=> b!866774 e!570389))

(declare-fun res!394732 () Bool)

(assert (=> b!866774 (=> (not res!394732) (not e!570389))))

(assert (=> b!866774 (= res!394732 (rulesProduceEachTokenIndividuallyList!450 thiss!20117 rules!2621 lt!326931))))

(declare-datatypes ((Unit!13889 0))(
  ( (Unit!13890) )
))
(declare-fun lt!326932 () Unit!13889)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!90 (LexerInterface!1562 List!9391 List!9390 Token!3186) Unit!13889)

(assert (=> b!866774 (= lt!326932 (withSeparatorTokenListPreservesRulesProduceTokens!90 thiss!20117 rules!2621 lt!326933 separatorToken!297))))

(declare-fun lt!326929 () Unit!13889)

(declare-fun printWithSeparatorTokenImpliesSeparableTokensList!34 (LexerInterface!1562 List!9391 List!9390 Token!3186) Unit!13889)

(assert (=> b!866774 (= lt!326929 (printWithSeparatorTokenImpliesSeparableTokensList!34 thiss!20117 rules!2621 lt!326933 separatorToken!297))))

(declare-fun separableTokensPredicate!80 (LexerInterface!1562 Token!3186 Token!3186 List!9391) Bool)

(assert (=> b!866774 (separableTokensPredicate!80 thiss!20117 (h!14775 lt!326928) (h!14775 (t!98840 lt!326928)) rules!2621)))

(declare-fun lt!326927 () Unit!13889)

(declare-fun lemmaTokensOfDifferentKindsAreSeparable!58 (LexerInterface!1562 Token!3186 Token!3186 List!9391) Unit!13889)

(assert (=> b!866774 (= lt!326927 (lemmaTokensOfDifferentKindsAreSeparable!58 thiss!20117 (h!14775 lt!326928) (h!14775 (t!98840 lt!326928)) rules!2621))))

(assert (=> b!866775 (= e!570396 (and tp!274163 tp!274158))))

(declare-fun b!866776 () Bool)

(declare-fun res!394741 () Bool)

(assert (=> b!866776 (=> (not res!394741) (not e!570392))))

(declare-fun rulesInvariant!1438 (LexerInterface!1562 List!9391) Bool)

(assert (=> b!866776 (= res!394741 (rulesInvariant!1438 thiss!20117 rules!2621))))

(declare-fun b!866777 () Bool)

(assert (=> b!866777 (= e!570392 (not e!570388))))

(declare-fun res!394734 () Bool)

(assert (=> b!866777 (=> res!394734 e!570388)))

(assert (=> b!866777 (= res!394734 (or (not ((_ is Cons!9374) lt!326928)) (not ((_ is Cons!9374) (t!98840 lt!326928)))))))

(assert (=> b!866777 (rulesProduceEachTokenIndividuallyList!450 thiss!20117 rules!2621 lt!326928)))

(assert (=> b!866777 (= lt!326928 (withSeparatorTokenList!90 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!326930 () Unit!13889)

(assert (=> b!866777 (= lt!326930 (withSeparatorTokenListPreservesRulesProduceTokens!90 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun tp!274160 () Bool)

(declare-fun b!866778 () Bool)

(assert (=> b!866778 (= e!570382 (and (inv!11909 (h!14775 l!5107)) e!570399 tp!274160))))

(declare-fun b!866779 () Bool)

(declare-fun res!394733 () Bool)

(assert (=> b!866779 (=> (not res!394733) (not e!570392))))

(declare-fun sepAndNonSepRulesDisjointChars!560 (List!9391 List!9391) Bool)

(assert (=> b!866779 (= res!394733 (sepAndNonSepRulesDisjointChars!560 rules!2621 rules!2621))))

(assert (=> b!866780 (= e!570394 (and tp!274152 tp!274154))))

(declare-fun b!866781 () Bool)

(declare-fun res!394740 () Bool)

(assert (=> b!866781 (=> (not res!394740) (not e!570392))))

(declare-fun isEmpty!5567 (List!9391) Bool)

(assert (=> b!866781 (= res!394740 (not (isEmpty!5567 rules!2621)))))

(assert (= (and start!78226 res!394738) b!866781))

(assert (= (and b!866781 res!394740) b!866776))

(assert (= (and b!866776 res!394741) b!866766))

(assert (= (and b!866766 res!394729) b!866768))

(assert (= (and b!866768 res!394736) b!866764))

(assert (= (and b!866764 res!394739) b!866770))

(assert (= (and b!866770 res!394730) b!866779))

(assert (= (and b!866779 res!394733) b!866777))

(assert (= (and b!866777 (not res!394734)) b!866759))

(assert (= (and b!866759 (not res!394731)) b!866762))

(assert (= (and b!866762 (not res!394735)) b!866769))

(assert (= (and b!866769 (not res!394742)) b!866774))

(assert (= (and b!866774 res!394732) b!866767))

(assert (= (and b!866774 (not res!394737)) b!866763))

(assert (= b!866772 b!866780))

(assert (= b!866771 b!866772))

(assert (= (and start!78226 ((_ is Cons!9375) rules!2621)) b!866771))

(assert (= b!866765 b!866761))

(assert (= b!866760 b!866765))

(assert (= b!866778 b!866760))

(assert (= (and start!78226 ((_ is Cons!9374) l!5107)) b!866778))

(assert (= b!866758 b!866775))

(assert (= b!866773 b!866758))

(assert (= start!78226 b!866773))

(declare-fun m!1113661 () Bool)

(assert (=> b!866772 m!1113661))

(declare-fun m!1113663 () Bool)

(assert (=> b!866772 m!1113663))

(declare-fun m!1113665 () Bool)

(assert (=> b!866781 m!1113665))

(declare-fun m!1113667 () Bool)

(assert (=> b!866763 m!1113667))

(declare-fun m!1113669 () Bool)

(assert (=> b!866758 m!1113669))

(declare-fun m!1113671 () Bool)

(assert (=> b!866758 m!1113671))

(declare-fun m!1113673 () Bool)

(assert (=> b!866774 m!1113673))

(declare-fun m!1113675 () Bool)

(assert (=> b!866774 m!1113675))

(declare-fun m!1113677 () Bool)

(assert (=> b!866774 m!1113677))

(declare-fun m!1113679 () Bool)

(assert (=> b!866774 m!1113679))

(declare-fun m!1113681 () Bool)

(assert (=> b!866774 m!1113681))

(declare-fun m!1113683 () Bool)

(assert (=> b!866774 m!1113683))

(declare-fun m!1113685 () Bool)

(assert (=> b!866777 m!1113685))

(declare-fun m!1113687 () Bool)

(assert (=> b!866777 m!1113687))

(declare-fun m!1113689 () Bool)

(assert (=> b!866777 m!1113689))

(declare-fun m!1113691 () Bool)

(assert (=> b!866767 m!1113691))

(declare-fun m!1113693 () Bool)

(assert (=> b!866779 m!1113693))

(declare-fun m!1113695 () Bool)

(assert (=> b!866770 m!1113695))

(declare-fun m!1113697 () Bool)

(assert (=> b!866766 m!1113697))

(declare-fun m!1113699 () Bool)

(assert (=> b!866778 m!1113699))

(declare-fun m!1113701 () Bool)

(assert (=> start!78226 m!1113701))

(declare-fun m!1113703 () Bool)

(assert (=> b!866768 m!1113703))

(declare-fun m!1113705 () Bool)

(assert (=> b!866776 m!1113705))

(declare-fun m!1113707 () Bool)

(assert (=> b!866765 m!1113707))

(declare-fun m!1113709 () Bool)

(assert (=> b!866765 m!1113709))

(declare-fun m!1113711 () Bool)

(assert (=> b!866762 m!1113711))

(declare-fun m!1113713 () Bool)

(assert (=> b!866773 m!1113713))

(declare-fun m!1113715 () Bool)

(assert (=> b!866760 m!1113715))

(declare-fun m!1113717 () Bool)

(assert (=> b!866759 m!1113717))

(declare-fun m!1113719 () Bool)

(assert (=> b!866759 m!1113719))

(check-sat (not b!866771) (not b!866763) (not b!866774) (not b!866770) (not b_next!26609) (not b!866778) (not b!866772) (not b!866759) (not b!866779) (not b!866765) b_and!77733 (not b_next!26613) (not b!866773) (not b!866766) (not b!866760) b_and!77725 b_and!77727 b_and!77735 (not b!866762) b_and!77729 (not b!866777) (not b!866776) (not b_next!26619) (not b_next!26611) (not b!866758) (not b!866767) (not start!78226) (not b!866781) (not b_next!26615) (not b!866768) (not b_next!26617) b_and!77731)
(check-sat b_and!77729 (not b_next!26609) b_and!77733 (not b_next!26613) (not b_next!26615) b_and!77725 b_and!77727 b_and!77735 (not b_next!26619) (not b_next!26611) (not b_next!26617) b_and!77731)
