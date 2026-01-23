; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!332662 () Bool)

(assert start!332662)

(declare-fun b!3585870 () Bool)

(declare-fun b_free!92321 () Bool)

(declare-fun b_next!93025 () Bool)

(assert (=> b!3585870 (= b_free!92321 (not b_next!93025))))

(declare-fun tp!1097848 () Bool)

(declare-fun b_and!258959 () Bool)

(assert (=> b!3585870 (= tp!1097848 b_and!258959)))

(declare-fun b_free!92323 () Bool)

(declare-fun b_next!93027 () Bool)

(assert (=> b!3585870 (= b_free!92323 (not b_next!93027))))

(declare-fun tp!1097856 () Bool)

(declare-fun b_and!258961 () Bool)

(assert (=> b!3585870 (= tp!1097856 b_and!258961)))

(declare-fun b!3585890 () Bool)

(declare-fun b_free!92325 () Bool)

(declare-fun b_next!93029 () Bool)

(assert (=> b!3585890 (= b_free!92325 (not b_next!93029))))

(declare-fun tp!1097862 () Bool)

(declare-fun b_and!258963 () Bool)

(assert (=> b!3585890 (= tp!1097862 b_and!258963)))

(declare-fun b_free!92327 () Bool)

(declare-fun b_next!93031 () Bool)

(assert (=> b!3585890 (= b_free!92327 (not b_next!93031))))

(declare-fun tp!1097857 () Bool)

(declare-fun b_and!258965 () Bool)

(assert (=> b!3585890 (= tp!1097857 b_and!258965)))

(declare-fun b!3585873 () Bool)

(declare-fun b_free!92329 () Bool)

(declare-fun b_next!93033 () Bool)

(assert (=> b!3585873 (= b_free!92329 (not b_next!93033))))

(declare-fun tp!1097851 () Bool)

(declare-fun b_and!258967 () Bool)

(assert (=> b!3585873 (= tp!1097851 b_and!258967)))

(declare-fun b_free!92331 () Bool)

(declare-fun b_next!93035 () Bool)

(assert (=> b!3585873 (= b_free!92331 (not b_next!93035))))

(declare-fun tp!1097858 () Bool)

(declare-fun b_and!258969 () Bool)

(assert (=> b!3585873 (= tp!1097858 b_and!258969)))

(declare-fun b!3585881 () Bool)

(declare-fun b_free!92333 () Bool)

(declare-fun b_next!93037 () Bool)

(assert (=> b!3585881 (= b_free!92333 (not b_next!93037))))

(declare-fun tp!1097852 () Bool)

(declare-fun b_and!258971 () Bool)

(assert (=> b!3585881 (= tp!1097852 b_and!258971)))

(declare-fun b_free!92335 () Bool)

(declare-fun b_next!93039 () Bool)

(assert (=> b!3585881 (= b_free!92335 (not b_next!93039))))

(declare-fun tp!1097853 () Bool)

(declare-fun b_and!258973 () Bool)

(assert (=> b!3585881 (= tp!1097853 b_and!258973)))

(declare-fun b!3585865 () Bool)

(declare-fun res!1447109 () Bool)

(declare-fun e!2218729 () Bool)

(assert (=> b!3585865 (=> res!1447109 e!2218729)))

(declare-datatypes ((C!20824 0))(
  ( (C!20825 (val!12460 Int)) )
))
(declare-datatypes ((List!37811 0))(
  ( (Nil!37687) (Cons!37687 (h!43107 C!20824) (t!290584 List!37811)) )
))
(declare-fun suffix!1395 () List!37811)

(declare-fun isEmpty!22200 (List!37811) Bool)

(assert (=> b!3585865 (= res!1447109 (isEmpty!22200 suffix!1395))))

(declare-fun tp!1097861 () Bool)

(declare-fun e!2218717 () Bool)

(declare-fun e!2218728 () Bool)

(declare-fun b!3585866 () Bool)

(declare-datatypes ((List!37812 0))(
  ( (Nil!37688) (Cons!37688 (h!43108 (_ BitVec 16)) (t!290585 List!37812)) )
))
(declare-datatypes ((TokenValue!5790 0))(
  ( (FloatLiteralValue!11580 (text!40975 List!37812)) (TokenValueExt!5789 (__x!23797 Int)) (Broken!28950 (value!178894 List!37812)) (Object!5913) (End!5790) (Def!5790) (Underscore!5790) (Match!5790) (Else!5790) (Error!5790) (Case!5790) (If!5790) (Extends!5790) (Abstract!5790) (Class!5790) (Val!5790) (DelimiterValue!11580 (del!5850 List!37812)) (KeywordValue!5796 (value!178895 List!37812)) (CommentValue!11580 (value!178896 List!37812)) (WhitespaceValue!11580 (value!178897 List!37812)) (IndentationValue!5790 (value!178898 List!37812)) (String!42283) (Int32!5790) (Broken!28951 (value!178899 List!37812)) (Boolean!5791) (Unit!53684) (OperatorValue!5793 (op!5850 List!37812)) (IdentifierValue!11580 (value!178900 List!37812)) (IdentifierValue!11581 (value!178901 List!37812)) (WhitespaceValue!11581 (value!178902 List!37812)) (True!11580) (False!11580) (Broken!28952 (value!178903 List!37812)) (Broken!28953 (value!178904 List!37812)) (True!11581) (RightBrace!5790) (RightBracket!5790) (Colon!5790) (Null!5790) (Comma!5790) (LeftBracket!5790) (False!11581) (LeftBrace!5790) (ImaginaryLiteralValue!5790 (text!40976 List!37812)) (StringLiteralValue!17370 (value!178905 List!37812)) (EOFValue!5790 (value!178906 List!37812)) (IdentValue!5790 (value!178907 List!37812)) (DelimiterValue!11581 (value!178908 List!37812)) (DedentValue!5790 (value!178909 List!37812)) (NewLineValue!5790 (value!178910 List!37812)) (IntegerValue!17370 (value!178911 (_ BitVec 32)) (text!40977 List!37812)) (IntegerValue!17371 (value!178912 Int) (text!40978 List!37812)) (Times!5790) (Or!5790) (Equal!5790) (Minus!5790) (Broken!28954 (value!178913 List!37812)) (And!5790) (Div!5790) (LessEqual!5790) (Mod!5790) (Concat!16109) (Not!5790) (Plus!5790) (SpaceValue!5790 (value!178914 List!37812)) (IntegerValue!17372 (value!178915 Int) (text!40979 List!37812)) (StringLiteralValue!17371 (text!40980 List!37812)) (FloatLiteralValue!11581 (text!40981 List!37812)) (BytesLiteralValue!5790 (value!178916 List!37812)) (CommentValue!11581 (value!178917 List!37812)) (StringLiteralValue!17372 (value!178918 List!37812)) (ErrorTokenValue!5790 (msg!5851 List!37812)) )
))
(declare-datatypes ((String!42284 0))(
  ( (String!42285 (value!178919 String)) )
))
(declare-datatypes ((Regex!10319 0))(
  ( (ElementMatch!10319 (c!621144 C!20824)) (Concat!16110 (regOne!21150 Regex!10319) (regTwo!21150 Regex!10319)) (EmptyExpr!10319) (Star!10319 (reg!10648 Regex!10319)) (EmptyLang!10319) (Union!10319 (regOne!21151 Regex!10319) (regTwo!21151 Regex!10319)) )
))
(declare-datatypes ((IArray!22927 0))(
  ( (IArray!22928 (innerList!11521 List!37811)) )
))
(declare-datatypes ((Conc!11461 0))(
  ( (Node!11461 (left!29455 Conc!11461) (right!29785 Conc!11461) (csize!23152 Int) (cheight!11672 Int)) (Leaf!17852 (xs!14663 IArray!22927) (csize!23153 Int)) (Empty!11461) )
))
(declare-datatypes ((BalanceConc!22536 0))(
  ( (BalanceConc!22537 (c!621145 Conc!11461)) )
))
(declare-datatypes ((TokenValueInjection!11008 0))(
  ( (TokenValueInjection!11009 (toValue!7840 Int) (toChars!7699 Int)) )
))
(declare-datatypes ((Rule!10920 0))(
  ( (Rule!10921 (regex!5560 Regex!10319) (tag!6226 String!42284) (isSeparator!5560 Bool) (transformation!5560 TokenValueInjection!11008)) )
))
(declare-datatypes ((Token!10486 0))(
  ( (Token!10487 (value!178920 TokenValue!5790) (rule!8274 Rule!10920) (size!28716 Int) (originalCharacters!6274 List!37811)) )
))
(declare-fun token!511 () Token!10486)

(declare-fun inv!51012 (String!42284) Bool)

(declare-fun inv!51015 (TokenValueInjection!11008) Bool)

(assert (=> b!3585866 (= e!2218717 (and tp!1097861 (inv!51012 (tag!6226 (rule!8274 token!511))) (inv!51015 (transformation!5560 (rule!8274 token!511))) e!2218728))))

(declare-fun b!3585867 () Bool)

(declare-fun res!1447121 () Bool)

(declare-fun e!2218725 () Bool)

(assert (=> b!3585867 (=> (not res!1447121) (not e!2218725))))

(declare-fun rule!403 () Rule!10920)

(assert (=> b!3585867 (= res!1447121 (= (rule!8274 token!511) rule!403))))

(declare-fun b!3585868 () Bool)

(declare-fun res!1447118 () Bool)

(declare-fun e!2218711 () Bool)

(assert (=> b!3585868 (=> (not res!1447118) (not e!2218711))))

(declare-datatypes ((LexerInterface!5149 0))(
  ( (LexerInterfaceExt!5146 (__x!23798 Int)) (Lexer!5147) )
))
(declare-fun thiss!23823 () LexerInterface!5149)

(declare-datatypes ((List!37813 0))(
  ( (Nil!37689) (Cons!37689 (h!43109 Rule!10920) (t!290586 List!37813)) )
))
(declare-fun rules!3307 () List!37813)

(declare-fun rulesInvariant!4546 (LexerInterface!5149 List!37813) Bool)

(assert (=> b!3585868 (= res!1447118 (rulesInvariant!4546 thiss!23823 rules!3307))))

(declare-fun b!3585869 () Bool)

(declare-fun res!1447116 () Bool)

(assert (=> b!3585869 (=> (not res!1447116) (not e!2218725))))

(declare-datatypes ((tuple2!37580 0))(
  ( (tuple2!37581 (_1!21924 Token!10486) (_2!21924 List!37811)) )
))
(declare-fun lt!1229907 () tuple2!37580)

(assert (=> b!3585869 (= res!1447116 (isEmpty!22200 (_2!21924 lt!1229907)))))

(declare-fun e!2218712 () Bool)

(assert (=> b!3585870 (= e!2218712 (and tp!1097848 tp!1097856))))

(declare-fun e!2218714 () Bool)

(declare-fun e!2218719 () Bool)

(declare-fun tp!1097854 () Bool)

(declare-fun b!3585871 () Bool)

(assert (=> b!3585871 (= e!2218714 (and tp!1097854 (inv!51012 (tag!6226 rule!403)) (inv!51015 (transformation!5560 rule!403)) e!2218719))))

(declare-fun b!3585872 () Bool)

(declare-fun res!1447120 () Bool)

(assert (=> b!3585872 (=> (not res!1447120) (not e!2218711))))

(declare-fun isEmpty!22201 (List!37813) Bool)

(assert (=> b!3585872 (= res!1447120 (not (isEmpty!22201 rules!3307)))))

(declare-fun e!2218720 () Bool)

(assert (=> b!3585873 (= e!2218720 (and tp!1097851 tp!1097858))))

(declare-fun b!3585874 () Bool)

(declare-fun e!2218718 () Bool)

(assert (=> b!3585874 (= e!2218718 e!2218725)))

(declare-fun res!1447111 () Bool)

(assert (=> b!3585874 (=> (not res!1447111) (not e!2218725))))

(assert (=> b!3585874 (= res!1447111 (= (_1!21924 lt!1229907) token!511))))

(declare-datatypes ((Option!7751 0))(
  ( (None!7750) (Some!7750 (v!37412 tuple2!37580)) )
))
(declare-fun lt!1229912 () Option!7751)

(declare-fun get!12141 (Option!7751) tuple2!37580)

(assert (=> b!3585874 (= lt!1229907 (get!12141 lt!1229912))))

(declare-fun tp!1097855 () Bool)

(declare-fun b!3585876 () Bool)

(declare-fun e!2218726 () Bool)

(assert (=> b!3585876 (= e!2218726 (and tp!1097855 (inv!51012 (tag!6226 (h!43109 rules!3307))) (inv!51015 (transformation!5560 (h!43109 rules!3307))) e!2218720))))

(declare-fun b!3585877 () Bool)

(assert (=> b!3585877 (= e!2218725 (not e!2218729))))

(declare-fun res!1447114 () Bool)

(assert (=> b!3585877 (=> res!1447114 e!2218729)))

(declare-fun lt!1229909 () List!37811)

(declare-fun matchR!4888 (Regex!10319 List!37811) Bool)

(assert (=> b!3585877 (= res!1447114 (not (matchR!4888 (regex!5560 rule!403) lt!1229909)))))

(declare-fun ruleValid!1825 (LexerInterface!5149 Rule!10920) Bool)

(assert (=> b!3585877 (ruleValid!1825 thiss!23823 rule!403)))

(declare-datatypes ((Unit!53685 0))(
  ( (Unit!53686) )
))
(declare-fun lt!1229905 () Unit!53685)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!980 (LexerInterface!5149 Rule!10920 List!37813) Unit!53685)

(assert (=> b!3585877 (= lt!1229905 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!980 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3585878 () Bool)

(declare-fun e!2218716 () Bool)

(assert (=> b!3585878 (= e!2218716 true)))

(declare-fun lt!1229910 () Unit!53685)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!829 (LexerInterface!5149 List!37813 List!37811 List!37811) Unit!53685)

(assert (=> b!3585878 (= lt!1229910 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!829 thiss!23823 rules!3307 lt!1229909 suffix!1395))))

(declare-fun lt!1229904 () List!37811)

(declare-fun lt!1229911 () Option!7751)

(declare-fun maxPrefix!2683 (LexerInterface!5149 List!37813 List!37811) Option!7751)

(assert (=> b!3585878 (= lt!1229911 (maxPrefix!2683 thiss!23823 rules!3307 lt!1229904))))

(declare-fun isPrefix!2923 (List!37811 List!37811) Bool)

(assert (=> b!3585878 (isPrefix!2923 lt!1229909 lt!1229904)))

(declare-fun lt!1229906 () Unit!53685)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1844 (List!37811 List!37811) Unit!53685)

(assert (=> b!3585878 (= lt!1229906 (lemmaConcatTwoListThenFirstIsPrefix!1844 lt!1229909 suffix!1395))))

(declare-fun ++!9376 (List!37811 List!37811) List!37811)

(assert (=> b!3585878 (= lt!1229904 (++!9376 lt!1229909 suffix!1395))))

(declare-fun b!3585879 () Bool)

(declare-fun res!1447115 () Bool)

(assert (=> b!3585879 (=> (not res!1447115) (not e!2218711))))

(declare-fun contains!7181 (List!37813 Rule!10920) Bool)

(assert (=> b!3585879 (= res!1447115 (contains!7181 rules!3307 rule!403))))

(declare-fun b!3585880 () Bool)

(declare-fun e!2218722 () Bool)

(declare-fun tp!1097859 () Bool)

(declare-fun inv!21 (TokenValue!5790) Bool)

(assert (=> b!3585880 (= e!2218722 (and (inv!21 (value!178920 token!511)) e!2218717 tp!1097859))))

(assert (=> b!3585881 (= e!2218719 (and tp!1097852 tp!1097853))))

(declare-fun b!3585882 () Bool)

(declare-fun res!1447113 () Bool)

(assert (=> b!3585882 (=> res!1447113 e!2218716)))

(declare-fun anOtherTypeRule!33 () Rule!10920)

(declare-fun lt!1229908 () C!20824)

(declare-fun contains!7182 (List!37811 C!20824) Bool)

(declare-fun usedCharacters!774 (Regex!10319) List!37811)

(assert (=> b!3585882 (= res!1447113 (not (contains!7182 (usedCharacters!774 (regex!5560 anOtherTypeRule!33)) lt!1229908)))))

(declare-fun b!3585883 () Bool)

(declare-fun e!2218715 () Bool)

(declare-fun tp!1097860 () Bool)

(assert (=> b!3585883 (= e!2218715 (and e!2218726 tp!1097860))))

(declare-fun b!3585884 () Bool)

(assert (=> b!3585884 (= e!2218711 e!2218718)))

(declare-fun res!1447110 () Bool)

(assert (=> b!3585884 (=> (not res!1447110) (not e!2218718))))

(declare-fun isDefined!5983 (Option!7751) Bool)

(assert (=> b!3585884 (= res!1447110 (isDefined!5983 lt!1229912))))

(assert (=> b!3585884 (= lt!1229912 (maxPrefix!2683 thiss!23823 rules!3307 lt!1229909))))

(declare-fun list!13852 (BalanceConc!22536) List!37811)

(declare-fun charsOf!3574 (Token!10486) BalanceConc!22536)

(assert (=> b!3585884 (= lt!1229909 (list!13852 (charsOf!3574 token!511)))))

(declare-fun e!2218730 () Bool)

(declare-fun tp!1097849 () Bool)

(declare-fun b!3585885 () Bool)

(assert (=> b!3585885 (= e!2218730 (and tp!1097849 (inv!51012 (tag!6226 anOtherTypeRule!33)) (inv!51015 (transformation!5560 anOtherTypeRule!33)) e!2218712))))

(declare-fun b!3585886 () Bool)

(declare-fun res!1447119 () Bool)

(assert (=> b!3585886 (=> (not res!1447119) (not e!2218711))))

(assert (=> b!3585886 (= res!1447119 (not (= (isSeparator!5560 anOtherTypeRule!33) (isSeparator!5560 rule!403))))))

(declare-fun b!3585875 () Bool)

(declare-fun res!1447117 () Bool)

(assert (=> b!3585875 (=> res!1447117 e!2218716)))

(declare-fun sepAndNonSepRulesDisjointChars!1730 (List!37813 List!37813) Bool)

(assert (=> b!3585875 (= res!1447117 (not (sepAndNonSepRulesDisjointChars!1730 rules!3307 rules!3307)))))

(declare-fun res!1447108 () Bool)

(assert (=> start!332662 (=> (not res!1447108) (not e!2218711))))

(get-info :version)

(assert (=> start!332662 (= res!1447108 ((_ is Lexer!5147) thiss!23823))))

(assert (=> start!332662 e!2218711))

(assert (=> start!332662 e!2218715))

(declare-fun e!2218713 () Bool)

(assert (=> start!332662 e!2218713))

(assert (=> start!332662 true))

(declare-fun inv!51016 (Token!10486) Bool)

(assert (=> start!332662 (and (inv!51016 token!511) e!2218722)))

(assert (=> start!332662 e!2218714))

(assert (=> start!332662 e!2218730))

(declare-fun b!3585887 () Bool)

(assert (=> b!3585887 (= e!2218729 e!2218716)))

(declare-fun res!1447112 () Bool)

(assert (=> b!3585887 (=> res!1447112 e!2218716)))

(assert (=> b!3585887 (= res!1447112 (contains!7182 (usedCharacters!774 (regex!5560 rule!403)) lt!1229908))))

(declare-fun head!7478 (List!37811) C!20824)

(assert (=> b!3585887 (= lt!1229908 (head!7478 suffix!1395))))

(declare-fun b!3585888 () Bool)

(declare-fun tp_is_empty!17721 () Bool)

(declare-fun tp!1097850 () Bool)

(assert (=> b!3585888 (= e!2218713 (and tp_is_empty!17721 tp!1097850))))

(declare-fun b!3585889 () Bool)

(declare-fun res!1447122 () Bool)

(assert (=> b!3585889 (=> (not res!1447122) (not e!2218711))))

(assert (=> b!3585889 (= res!1447122 (contains!7181 rules!3307 anOtherTypeRule!33))))

(assert (=> b!3585890 (= e!2218728 (and tp!1097862 tp!1097857))))

(assert (= (and start!332662 res!1447108) b!3585872))

(assert (= (and b!3585872 res!1447120) b!3585868))

(assert (= (and b!3585868 res!1447118) b!3585879))

(assert (= (and b!3585879 res!1447115) b!3585889))

(assert (= (and b!3585889 res!1447122) b!3585886))

(assert (= (and b!3585886 res!1447119) b!3585884))

(assert (= (and b!3585884 res!1447110) b!3585874))

(assert (= (and b!3585874 res!1447111) b!3585869))

(assert (= (and b!3585869 res!1447116) b!3585867))

(assert (= (and b!3585867 res!1447121) b!3585877))

(assert (= (and b!3585877 (not res!1447114)) b!3585865))

(assert (= (and b!3585865 (not res!1447109)) b!3585887))

(assert (= (and b!3585887 (not res!1447112)) b!3585882))

(assert (= (and b!3585882 (not res!1447113)) b!3585875))

(assert (= (and b!3585875 (not res!1447117)) b!3585878))

(assert (= b!3585876 b!3585873))

(assert (= b!3585883 b!3585876))

(assert (= (and start!332662 ((_ is Cons!37689) rules!3307)) b!3585883))

(assert (= (and start!332662 ((_ is Cons!37687) suffix!1395)) b!3585888))

(assert (= b!3585866 b!3585890))

(assert (= b!3585880 b!3585866))

(assert (= start!332662 b!3585880))

(assert (= b!3585871 b!3585881))

(assert (= start!332662 b!3585871))

(assert (= b!3585885 b!3585870))

(assert (= start!332662 b!3585885))

(declare-fun m!4079115 () Bool)

(assert (=> b!3585865 m!4079115))

(declare-fun m!4079117 () Bool)

(assert (=> b!3585868 m!4079117))

(declare-fun m!4079119 () Bool)

(assert (=> start!332662 m!4079119))

(declare-fun m!4079121 () Bool)

(assert (=> b!3585872 m!4079121))

(declare-fun m!4079123 () Bool)

(assert (=> b!3585875 m!4079123))

(declare-fun m!4079125 () Bool)

(assert (=> b!3585876 m!4079125))

(declare-fun m!4079127 () Bool)

(assert (=> b!3585876 m!4079127))

(declare-fun m!4079129 () Bool)

(assert (=> b!3585866 m!4079129))

(declare-fun m!4079131 () Bool)

(assert (=> b!3585866 m!4079131))

(declare-fun m!4079133 () Bool)

(assert (=> b!3585889 m!4079133))

(declare-fun m!4079135 () Bool)

(assert (=> b!3585871 m!4079135))

(declare-fun m!4079137 () Bool)

(assert (=> b!3585871 m!4079137))

(declare-fun m!4079139 () Bool)

(assert (=> b!3585885 m!4079139))

(declare-fun m!4079141 () Bool)

(assert (=> b!3585885 m!4079141))

(declare-fun m!4079143 () Bool)

(assert (=> b!3585878 m!4079143))

(declare-fun m!4079145 () Bool)

(assert (=> b!3585878 m!4079145))

(declare-fun m!4079147 () Bool)

(assert (=> b!3585878 m!4079147))

(declare-fun m!4079149 () Bool)

(assert (=> b!3585878 m!4079149))

(declare-fun m!4079151 () Bool)

(assert (=> b!3585878 m!4079151))

(declare-fun m!4079153 () Bool)

(assert (=> b!3585869 m!4079153))

(declare-fun m!4079155 () Bool)

(assert (=> b!3585874 m!4079155))

(declare-fun m!4079157 () Bool)

(assert (=> b!3585887 m!4079157))

(assert (=> b!3585887 m!4079157))

(declare-fun m!4079159 () Bool)

(assert (=> b!3585887 m!4079159))

(declare-fun m!4079161 () Bool)

(assert (=> b!3585887 m!4079161))

(declare-fun m!4079163 () Bool)

(assert (=> b!3585879 m!4079163))

(declare-fun m!4079165 () Bool)

(assert (=> b!3585877 m!4079165))

(declare-fun m!4079167 () Bool)

(assert (=> b!3585877 m!4079167))

(declare-fun m!4079169 () Bool)

(assert (=> b!3585877 m!4079169))

(declare-fun m!4079171 () Bool)

(assert (=> b!3585882 m!4079171))

(assert (=> b!3585882 m!4079171))

(declare-fun m!4079173 () Bool)

(assert (=> b!3585882 m!4079173))

(declare-fun m!4079175 () Bool)

(assert (=> b!3585884 m!4079175))

(declare-fun m!4079177 () Bool)

(assert (=> b!3585884 m!4079177))

(declare-fun m!4079179 () Bool)

(assert (=> b!3585884 m!4079179))

(assert (=> b!3585884 m!4079179))

(declare-fun m!4079181 () Bool)

(assert (=> b!3585884 m!4079181))

(declare-fun m!4079183 () Bool)

(assert (=> b!3585880 m!4079183))

(check-sat b_and!258973 b_and!258971 (not b!3585889) (not b_next!93031) (not b!3585865) b_and!258965 (not b_next!93033) (not b!3585883) (not b!3585879) (not b!3585882) (not b!3585875) b_and!258961 (not start!332662) (not b!3585880) (not b!3585888) (not b_next!93039) b_and!258969 (not b!3585887) (not b!3585878) (not b!3585866) (not b!3585885) (not b!3585874) (not b!3585884) b_and!258967 (not b_next!93025) b_and!258959 (not b_next!93037) (not b!3585872) (not b!3585869) (not b!3585877) b_and!258963 (not b!3585868) (not b_next!93027) tp_is_empty!17721 (not b_next!93035) (not b!3585876) (not b_next!93029) (not b!3585871))
(check-sat b_and!258973 b_and!258971 (not b_next!93031) b_and!258965 (not b_next!93033) b_and!258963 (not b_next!93027) b_and!258961 (not b_next!93035) (not b_next!93029) (not b_next!93039) b_and!258969 b_and!258967 (not b_next!93025) b_and!258959 (not b_next!93037))
