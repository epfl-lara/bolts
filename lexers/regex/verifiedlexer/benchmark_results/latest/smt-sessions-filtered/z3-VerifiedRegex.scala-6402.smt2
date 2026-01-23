; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!333526 () Bool)

(assert start!333526)

(declare-fun b!3592890 () Bool)

(declare-fun b_free!92753 () Bool)

(declare-fun b_next!93457 () Bool)

(assert (=> b!3592890 (= b_free!92753 (not b_next!93457))))

(declare-fun tp!1099700 () Bool)

(declare-fun b_and!260067 () Bool)

(assert (=> b!3592890 (= tp!1099700 b_and!260067)))

(declare-fun b_free!92755 () Bool)

(declare-fun b_next!93459 () Bool)

(assert (=> b!3592890 (= b_free!92755 (not b_next!93459))))

(declare-fun tp!1099695 () Bool)

(declare-fun b_and!260069 () Bool)

(assert (=> b!3592890 (= tp!1099695 b_and!260069)))

(declare-fun b!3592889 () Bool)

(declare-fun b_free!92757 () Bool)

(declare-fun b_next!93461 () Bool)

(assert (=> b!3592889 (= b_free!92757 (not b_next!93461))))

(declare-fun tp!1099701 () Bool)

(declare-fun b_and!260071 () Bool)

(assert (=> b!3592889 (= tp!1099701 b_and!260071)))

(declare-fun b_free!92759 () Bool)

(declare-fun b_next!93463 () Bool)

(assert (=> b!3592889 (= b_free!92759 (not b_next!93463))))

(declare-fun tp!1099705 () Bool)

(declare-fun b_and!260073 () Bool)

(assert (=> b!3592889 (= tp!1099705 b_and!260073)))

(declare-fun b!3592891 () Bool)

(declare-fun b_free!92761 () Bool)

(declare-fun b_next!93465 () Bool)

(assert (=> b!3592891 (= b_free!92761 (not b_next!93465))))

(declare-fun tp!1099707 () Bool)

(declare-fun b_and!260075 () Bool)

(assert (=> b!3592891 (= tp!1099707 b_and!260075)))

(declare-fun b_free!92763 () Bool)

(declare-fun b_next!93467 () Bool)

(assert (=> b!3592891 (= b_free!92763 (not b_next!93467))))

(declare-fun tp!1099699 () Bool)

(declare-fun b_and!260077 () Bool)

(assert (=> b!3592891 (= tp!1099699 b_and!260077)))

(declare-fun b!3592911 () Bool)

(declare-fun b_free!92765 () Bool)

(declare-fun b_next!93469 () Bool)

(assert (=> b!3592911 (= b_free!92765 (not b_next!93469))))

(declare-fun tp!1099702 () Bool)

(declare-fun b_and!260079 () Bool)

(assert (=> b!3592911 (= tp!1099702 b_and!260079)))

(declare-fun b_free!92767 () Bool)

(declare-fun b_next!93471 () Bool)

(assert (=> b!3592911 (= b_free!92767 (not b_next!93471))))

(declare-fun tp!1099694 () Bool)

(declare-fun b_and!260081 () Bool)

(assert (=> b!3592911 (= tp!1099694 b_and!260081)))

(declare-fun tp!1099703 () Bool)

(declare-fun e!2223211 () Bool)

(declare-datatypes ((List!37903 0))(
  ( (Nil!37779) (Cons!37779 (h!43199 (_ BitVec 16)) (t!291274 List!37903)) )
))
(declare-datatypes ((TokenValue!5814 0))(
  ( (FloatLiteralValue!11628 (text!41143 List!37903)) (TokenValueExt!5813 (__x!23845 Int)) (Broken!29070 (value!179578 List!37903)) (Object!5937) (End!5814) (Def!5814) (Underscore!5814) (Match!5814) (Else!5814) (Error!5814) (Case!5814) (If!5814) (Extends!5814) (Abstract!5814) (Class!5814) (Val!5814) (DelimiterValue!11628 (del!5874 List!37903)) (KeywordValue!5820 (value!179579 List!37903)) (CommentValue!11628 (value!179580 List!37903)) (WhitespaceValue!11628 (value!179581 List!37903)) (IndentationValue!5814 (value!179582 List!37903)) (String!42403) (Int32!5814) (Broken!29071 (value!179583 List!37903)) (Boolean!5815) (Unit!53782) (OperatorValue!5817 (op!5874 List!37903)) (IdentifierValue!11628 (value!179584 List!37903)) (IdentifierValue!11629 (value!179585 List!37903)) (WhitespaceValue!11629 (value!179586 List!37903)) (True!11628) (False!11628) (Broken!29072 (value!179587 List!37903)) (Broken!29073 (value!179588 List!37903)) (True!11629) (RightBrace!5814) (RightBracket!5814) (Colon!5814) (Null!5814) (Comma!5814) (LeftBracket!5814) (False!11629) (LeftBrace!5814) (ImaginaryLiteralValue!5814 (text!41144 List!37903)) (StringLiteralValue!17442 (value!179589 List!37903)) (EOFValue!5814 (value!179590 List!37903)) (IdentValue!5814 (value!179591 List!37903)) (DelimiterValue!11629 (value!179592 List!37903)) (DedentValue!5814 (value!179593 List!37903)) (NewLineValue!5814 (value!179594 List!37903)) (IntegerValue!17442 (value!179595 (_ BitVec 32)) (text!41145 List!37903)) (IntegerValue!17443 (value!179596 Int) (text!41146 List!37903)) (Times!5814) (Or!5814) (Equal!5814) (Minus!5814) (Broken!29074 (value!179597 List!37903)) (And!5814) (Div!5814) (LessEqual!5814) (Mod!5814) (Concat!16157) (Not!5814) (Plus!5814) (SpaceValue!5814 (value!179598 List!37903)) (IntegerValue!17444 (value!179599 Int) (text!41147 List!37903)) (StringLiteralValue!17443 (text!41148 List!37903)) (FloatLiteralValue!11629 (text!41149 List!37903)) (BytesLiteralValue!5814 (value!179600 List!37903)) (CommentValue!11629 (value!179601 List!37903)) (StringLiteralValue!17444 (value!179602 List!37903)) (ErrorTokenValue!5814 (msg!5875 List!37903)) )
))
(declare-datatypes ((C!20872 0))(
  ( (C!20873 (val!12484 Int)) )
))
(declare-datatypes ((Regex!10343 0))(
  ( (ElementMatch!10343 (c!622106 C!20872)) (Concat!16158 (regOne!21198 Regex!10343) (regTwo!21198 Regex!10343)) (EmptyExpr!10343) (Star!10343 (reg!10672 Regex!10343)) (EmptyLang!10343) (Union!10343 (regOne!21199 Regex!10343) (regTwo!21199 Regex!10343)) )
))
(declare-datatypes ((String!42404 0))(
  ( (String!42405 (value!179603 String)) )
))
(declare-datatypes ((List!37904 0))(
  ( (Nil!37780) (Cons!37780 (h!43200 C!20872) (t!291275 List!37904)) )
))
(declare-datatypes ((IArray!22995 0))(
  ( (IArray!22996 (innerList!11555 List!37904)) )
))
(declare-datatypes ((Conc!11495 0))(
  ( (Node!11495 (left!29517 Conc!11495) (right!29847 Conc!11495) (csize!23220 Int) (cheight!11706 Int)) (Leaf!17898 (xs!14697 IArray!22995) (csize!23221 Int)) (Empty!11495) )
))
(declare-datatypes ((BalanceConc!22604 0))(
  ( (BalanceConc!22605 (c!622107 Conc!11495)) )
))
(declare-datatypes ((TokenValueInjection!11056 0))(
  ( (TokenValueInjection!11057 (toValue!7868 Int) (toChars!7727 Int)) )
))
(declare-datatypes ((Rule!10968 0))(
  ( (Rule!10969 (regex!5584 Regex!10343) (tag!6260 String!42404) (isSeparator!5584 Bool) (transformation!5584 TokenValueInjection!11056)) )
))
(declare-datatypes ((Token!10534 0))(
  ( (Token!10535 (value!179604 TokenValue!5814) (rule!8304 Rule!10968) (size!28780 Int) (originalCharacters!6298 List!37904)) )
))
(declare-fun token!511 () Token!10534)

(declare-fun e!2223219 () Bool)

(declare-fun b!3592888 () Bool)

(declare-fun inv!21 (TokenValue!5814) Bool)

(assert (=> b!3592888 (= e!2223211 (and (inv!21 (value!179604 token!511)) e!2223219 tp!1099703))))

(declare-fun e!2223220 () Bool)

(assert (=> b!3592889 (= e!2223220 (and tp!1099701 tp!1099705))))

(declare-fun e!2223210 () Bool)

(assert (=> b!3592890 (= e!2223210 (and tp!1099700 tp!1099695))))

(declare-fun e!2223213 () Bool)

(assert (=> b!3592891 (= e!2223213 (and tp!1099707 tp!1099699))))

(declare-fun b!3592892 () Bool)

(declare-fun e!2223222 () Bool)

(declare-fun e!2223208 () Bool)

(assert (=> b!3592892 (= e!2223222 (not e!2223208))))

(declare-fun res!1450847 () Bool)

(assert (=> b!3592892 (=> res!1450847 e!2223208)))

(declare-fun rule!403 () Rule!10968)

(declare-fun lt!1232975 () List!37904)

(declare-fun matchR!4912 (Regex!10343 List!37904) Bool)

(assert (=> b!3592892 (= res!1450847 (not (matchR!4912 (regex!5584 rule!403) lt!1232975)))))

(declare-datatypes ((LexerInterface!5173 0))(
  ( (LexerInterfaceExt!5170 (__x!23846 Int)) (Lexer!5171) )
))
(declare-fun thiss!23823 () LexerInterface!5173)

(declare-fun ruleValid!1849 (LexerInterface!5173 Rule!10968) Bool)

(assert (=> b!3592892 (ruleValid!1849 thiss!23823 rule!403)))

(declare-datatypes ((List!37905 0))(
  ( (Nil!37781) (Cons!37781 (h!43201 Rule!10968) (t!291276 List!37905)) )
))
(declare-fun rules!3307 () List!37905)

(declare-datatypes ((Unit!53783 0))(
  ( (Unit!53784) )
))
(declare-fun lt!1232967 () Unit!53783)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1004 (LexerInterface!5173 Rule!10968 List!37905) Unit!53783)

(assert (=> b!3592892 (= lt!1232967 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1004 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3592893 () Bool)

(declare-fun res!1450853 () Bool)

(declare-fun e!2223214 () Bool)

(assert (=> b!3592893 (=> (not res!1450853) (not e!2223214))))

(declare-fun anOtherTypeRule!33 () Rule!10968)

(declare-fun contains!7231 (List!37905 Rule!10968) Bool)

(assert (=> b!3592893 (= res!1450853 (contains!7231 rules!3307 anOtherTypeRule!33))))

(declare-fun res!1450852 () Bool)

(assert (=> start!333526 (=> (not res!1450852) (not e!2223214))))

(get-info :version)

(assert (=> start!333526 (= res!1450852 ((_ is Lexer!5171) thiss!23823))))

(assert (=> start!333526 e!2223214))

(declare-fun e!2223206 () Bool)

(assert (=> start!333526 e!2223206))

(declare-fun e!2223212 () Bool)

(assert (=> start!333526 e!2223212))

(assert (=> start!333526 true))

(declare-fun inv!51125 (Token!10534) Bool)

(assert (=> start!333526 (and (inv!51125 token!511) e!2223211)))

(declare-fun e!2223200 () Bool)

(assert (=> start!333526 e!2223200))

(declare-fun e!2223203 () Bool)

(assert (=> start!333526 e!2223203))

(declare-fun b!3592894 () Bool)

(declare-fun res!1450835 () Bool)

(declare-fun e!2223221 () Bool)

(assert (=> b!3592894 (=> res!1450835 e!2223221)))

(declare-fun lt!1232973 () C!20872)

(declare-fun contains!7232 (List!37904 C!20872) Bool)

(declare-fun usedCharacters!798 (Regex!10343) List!37904)

(assert (=> b!3592894 (= res!1450835 (not (contains!7232 (usedCharacters!798 (regex!5584 anOtherTypeRule!33)) lt!1232973)))))

(declare-fun b!3592895 () Bool)

(declare-fun res!1450846 () Bool)

(assert (=> b!3592895 (=> res!1450846 e!2223221)))

(declare-fun sepAndNonSepRulesDisjointChars!1754 (List!37905 List!37905) Bool)

(assert (=> b!3592895 (= res!1450846 (not (sepAndNonSepRulesDisjointChars!1754 rules!3307 rules!3307)))))

(declare-fun b!3592896 () Bool)

(declare-fun res!1450842 () Bool)

(assert (=> b!3592896 (=> (not res!1450842) (not e!2223214))))

(declare-fun isEmpty!22270 (List!37905) Bool)

(assert (=> b!3592896 (= res!1450842 (not (isEmpty!22270 rules!3307)))))

(declare-fun tp!1099708 () Bool)

(declare-fun b!3592897 () Bool)

(declare-fun inv!51122 (String!42404) Bool)

(declare-fun inv!51126 (TokenValueInjection!11056) Bool)

(assert (=> b!3592897 (= e!2223200 (and tp!1099708 (inv!51122 (tag!6260 rule!403)) (inv!51126 (transformation!5584 rule!403)) e!2223210))))

(declare-fun b!3592898 () Bool)

(declare-fun res!1450843 () Bool)

(assert (=> b!3592898 (=> (not res!1450843) (not e!2223222))))

(declare-datatypes ((tuple2!37664 0))(
  ( (tuple2!37665 (_1!21966 Token!10534) (_2!21966 List!37904)) )
))
(declare-fun lt!1232962 () tuple2!37664)

(declare-fun isEmpty!22271 (List!37904) Bool)

(assert (=> b!3592898 (= res!1450843 (isEmpty!22271 (_2!21966 lt!1232962)))))

(declare-fun b!3592899 () Bool)

(declare-fun e!2223198 () Bool)

(declare-fun e!2223199 () Bool)

(assert (=> b!3592899 (= e!2223198 e!2223199)))

(declare-fun res!1450849 () Bool)

(assert (=> b!3592899 (=> (not res!1450849) (not e!2223199))))

(declare-fun lt!1232968 () Rule!10968)

(declare-fun lt!1232970 () tuple2!37664)

(declare-fun list!13900 (BalanceConc!22604) List!37904)

(declare-fun charsOf!3598 (Token!10534) BalanceConc!22604)

(assert (=> b!3592899 (= res!1450849 (matchR!4912 (regex!5584 lt!1232968) (list!13900 (charsOf!3598 (_1!21966 lt!1232970)))))))

(declare-datatypes ((Option!7798 0))(
  ( (None!7797) (Some!7797 (v!37479 Rule!10968)) )
))
(declare-fun lt!1232963 () Option!7798)

(declare-fun get!12200 (Option!7798) Rule!10968)

(assert (=> b!3592899 (= lt!1232968 (get!12200 lt!1232963))))

(declare-fun b!3592900 () Bool)

(assert (=> b!3592900 (= e!2223199 (= (rule!8304 (_1!21966 lt!1232970)) lt!1232968))))

(declare-fun b!3592901 () Bool)

(declare-fun tp!1099706 () Bool)

(assert (=> b!3592901 (= e!2223219 (and tp!1099706 (inv!51122 (tag!6260 (rule!8304 token!511))) (inv!51126 (transformation!5584 (rule!8304 token!511))) e!2223220))))

(declare-fun b!3592902 () Bool)

(declare-fun tp!1099696 () Bool)

(assert (=> b!3592902 (= e!2223203 (and tp!1099696 (inv!51122 (tag!6260 anOtherTypeRule!33)) (inv!51126 (transformation!5584 anOtherTypeRule!33)) e!2223213))))

(declare-fun b!3592903 () Bool)

(declare-fun res!1450839 () Bool)

(assert (=> b!3592903 (=> (not res!1450839) (not e!2223214))))

(assert (=> b!3592903 (= res!1450839 (contains!7231 rules!3307 rule!403))))

(declare-fun b!3592904 () Bool)

(declare-fun res!1450848 () Bool)

(assert (=> b!3592904 (=> (not res!1450848) (not e!2223214))))

(assert (=> b!3592904 (= res!1450848 (not (= (isSeparator!5584 anOtherTypeRule!33) (isSeparator!5584 rule!403))))))

(declare-fun b!3592905 () Bool)

(declare-fun res!1450844 () Bool)

(assert (=> b!3592905 (=> res!1450844 e!2223208)))

(declare-fun suffix!1395 () List!37904)

(assert (=> b!3592905 (= res!1450844 (isEmpty!22271 suffix!1395))))

(declare-fun b!3592906 () Bool)

(declare-fun e!2223216 () Bool)

(assert (=> b!3592906 (= e!2223216 e!2223222)))

(declare-fun res!1450854 () Bool)

(assert (=> b!3592906 (=> (not res!1450854) (not e!2223222))))

(assert (=> b!3592906 (= res!1450854 (= (_1!21966 lt!1232962) token!511))))

(declare-datatypes ((Option!7799 0))(
  ( (None!7798) (Some!7798 (v!37480 tuple2!37664)) )
))
(declare-fun lt!1232965 () Option!7799)

(declare-fun get!12201 (Option!7799) tuple2!37664)

(assert (=> b!3592906 (= lt!1232962 (get!12201 lt!1232965))))

(declare-fun e!2223204 () Bool)

(declare-fun tp!1099697 () Bool)

(declare-fun e!2223209 () Bool)

(declare-fun b!3592907 () Bool)

(assert (=> b!3592907 (= e!2223209 (and tp!1099697 (inv!51122 (tag!6260 (h!43201 rules!3307))) (inv!51126 (transformation!5584 (h!43201 rules!3307))) e!2223204))))

(declare-fun b!3592908 () Bool)

(declare-fun tp_is_empty!17769 () Bool)

(declare-fun tp!1099698 () Bool)

(assert (=> b!3592908 (= e!2223212 (and tp_is_empty!17769 tp!1099698))))

(declare-fun b!3592909 () Bool)

(declare-fun e!2223201 () Bool)

(assert (=> b!3592909 (= e!2223221 e!2223201)))

(declare-fun res!1450836 () Bool)

(assert (=> b!3592909 (=> res!1450836 e!2223201)))

(declare-fun lt!1232978 () List!37904)

(declare-fun lt!1232960 () List!37904)

(declare-fun isPrefix!2947 (List!37904 List!37904) Bool)

(assert (=> b!3592909 (= res!1450836 (not (isPrefix!2947 lt!1232978 lt!1232960)))))

(declare-fun ++!9400 (List!37904 List!37904) List!37904)

(assert (=> b!3592909 (isPrefix!2947 lt!1232978 (++!9400 lt!1232978 (_2!21966 lt!1232970)))))

(declare-fun lt!1232976 () Unit!53783)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1868 (List!37904 List!37904) Unit!53783)

(assert (=> b!3592909 (= lt!1232976 (lemmaConcatTwoListThenFirstIsPrefix!1868 lt!1232978 (_2!21966 lt!1232970)))))

(declare-fun lt!1232972 () BalanceConc!22604)

(assert (=> b!3592909 (= lt!1232978 (list!13900 lt!1232972))))

(assert (=> b!3592909 (= lt!1232972 (charsOf!3598 (_1!21966 lt!1232970)))))

(assert (=> b!3592909 e!2223198))

(declare-fun res!1450837 () Bool)

(assert (=> b!3592909 (=> (not res!1450837) (not e!2223198))))

(declare-fun isDefined!6030 (Option!7798) Bool)

(assert (=> b!3592909 (= res!1450837 (isDefined!6030 lt!1232963))))

(declare-fun getRuleFromTag!1190 (LexerInterface!5173 List!37905 String!42404) Option!7798)

(assert (=> b!3592909 (= lt!1232963 (getRuleFromTag!1190 thiss!23823 rules!3307 (tag!6260 (rule!8304 (_1!21966 lt!1232970)))))))

(declare-fun lt!1232971 () Unit!53783)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1190 (LexerInterface!5173 List!37905 List!37904 Token!10534) Unit!53783)

(assert (=> b!3592909 (= lt!1232971 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1190 thiss!23823 rules!3307 lt!1232960 (_1!21966 lt!1232970)))))

(declare-fun lt!1232966 () Option!7799)

(assert (=> b!3592909 (= lt!1232970 (get!12201 lt!1232966))))

(declare-fun lt!1232974 () Unit!53783)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!853 (LexerInterface!5173 List!37905 List!37904 List!37904) Unit!53783)

(assert (=> b!3592909 (= lt!1232974 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!853 thiss!23823 rules!3307 lt!1232975 suffix!1395))))

(declare-fun maxPrefix!2707 (LexerInterface!5173 List!37905 List!37904) Option!7799)

(assert (=> b!3592909 (= lt!1232966 (maxPrefix!2707 thiss!23823 rules!3307 lt!1232960))))

(assert (=> b!3592909 (isPrefix!2947 lt!1232975 lt!1232960)))

(declare-fun lt!1232977 () Unit!53783)

(assert (=> b!3592909 (= lt!1232977 (lemmaConcatTwoListThenFirstIsPrefix!1868 lt!1232975 suffix!1395))))

(assert (=> b!3592909 (= lt!1232960 (++!9400 lt!1232975 suffix!1395))))

(declare-fun b!3592910 () Bool)

(declare-fun res!1450850 () Bool)

(assert (=> b!3592910 (=> (not res!1450850) (not e!2223222))))

(assert (=> b!3592910 (= res!1450850 (= (rule!8304 token!511) rule!403))))

(assert (=> b!3592911 (= e!2223204 (and tp!1099702 tp!1099694))))

(declare-fun b!3592912 () Bool)

(declare-fun e!2223215 () Bool)

(assert (=> b!3592912 (= e!2223215 true)))

(declare-fun lt!1232959 () List!37904)

(assert (=> b!3592912 (= (_2!21966 lt!1232970) lt!1232959)))

(declare-fun lt!1232961 () Unit!53783)

(declare-fun lemmaSamePrefixThenSameSuffix!1302 (List!37904 List!37904 List!37904 List!37904 List!37904) Unit!53783)

(assert (=> b!3592912 (= lt!1232961 (lemmaSamePrefixThenSameSuffix!1302 lt!1232978 (_2!21966 lt!1232970) lt!1232978 lt!1232959 lt!1232960))))

(declare-fun getSuffix!1522 (List!37904 List!37904) List!37904)

(assert (=> b!3592912 (= lt!1232959 (getSuffix!1522 lt!1232960 lt!1232978))))

(declare-fun maxPrefixOneRule!1851 (LexerInterface!5173 Rule!10968 List!37904) Option!7799)

(declare-fun apply!9090 (TokenValueInjection!11056 BalanceConc!22604) TokenValue!5814)

(declare-fun seqFromList!4137 (List!37904) BalanceConc!22604)

(declare-fun size!28781 (List!37904) Int)

(assert (=> b!3592912 (= (maxPrefixOneRule!1851 thiss!23823 (rule!8304 (_1!21966 lt!1232970)) lt!1232960) (Some!7798 (tuple2!37665 (Token!10535 (apply!9090 (transformation!5584 (rule!8304 (_1!21966 lt!1232970))) (seqFromList!4137 lt!1232978)) (rule!8304 (_1!21966 lt!1232970)) (size!28781 lt!1232978) lt!1232978) (_2!21966 lt!1232970))))))

(declare-fun lt!1232964 () Unit!53783)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!923 (LexerInterface!5173 List!37905 List!37904 List!37904 List!37904 Rule!10968) Unit!53783)

(assert (=> b!3592912 (= lt!1232964 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!923 thiss!23823 rules!3307 lt!1232978 lt!1232960 (_2!21966 lt!1232970) (rule!8304 (_1!21966 lt!1232970))))))

(declare-fun b!3592913 () Bool)

(declare-fun tp!1099704 () Bool)

(assert (=> b!3592913 (= e!2223206 (and e!2223209 tp!1099704))))

(declare-fun b!3592914 () Bool)

(declare-fun res!1450851 () Bool)

(assert (=> b!3592914 (=> res!1450851 e!2223201)))

(assert (=> b!3592914 (= res!1450851 (not (matchR!4912 (regex!5584 (rule!8304 (_1!21966 lt!1232970))) lt!1232978)))))

(declare-fun b!3592915 () Bool)

(assert (=> b!3592915 (= e!2223214 e!2223216)))

(declare-fun res!1450845 () Bool)

(assert (=> b!3592915 (=> (not res!1450845) (not e!2223216))))

(declare-fun isDefined!6031 (Option!7799) Bool)

(assert (=> b!3592915 (= res!1450845 (isDefined!6031 lt!1232965))))

(assert (=> b!3592915 (= lt!1232965 (maxPrefix!2707 thiss!23823 rules!3307 lt!1232975))))

(assert (=> b!3592915 (= lt!1232975 (list!13900 (charsOf!3598 token!511)))))

(declare-fun b!3592916 () Bool)

(declare-fun res!1450838 () Bool)

(assert (=> b!3592916 (=> (not res!1450838) (not e!2223214))))

(declare-fun rulesInvariant!4570 (LexerInterface!5173 List!37905) Bool)

(assert (=> b!3592916 (= res!1450838 (rulesInvariant!4570 thiss!23823 rules!3307))))

(declare-fun b!3592917 () Bool)

(assert (=> b!3592917 (= e!2223208 e!2223221)))

(declare-fun res!1450841 () Bool)

(assert (=> b!3592917 (=> res!1450841 e!2223221)))

(assert (=> b!3592917 (= res!1450841 (contains!7232 (usedCharacters!798 (regex!5584 rule!403)) lt!1232973))))

(declare-fun head!7512 (List!37904) C!20872)

(assert (=> b!3592917 (= lt!1232973 (head!7512 suffix!1395))))

(declare-fun b!3592918 () Bool)

(assert (=> b!3592918 (= e!2223201 e!2223215)))

(declare-fun res!1450840 () Bool)

(assert (=> b!3592918 (=> res!1450840 e!2223215)))

(declare-fun size!28782 (BalanceConc!22604) Int)

(assert (=> b!3592918 (= res!1450840 (not (= lt!1232966 (Some!7798 (tuple2!37665 (Token!10535 (apply!9090 (transformation!5584 (rule!8304 (_1!21966 lt!1232970))) lt!1232972) (rule!8304 (_1!21966 lt!1232970)) (size!28782 lt!1232972) lt!1232978) (_2!21966 lt!1232970))))))))

(declare-fun lt!1232958 () Unit!53783)

(declare-fun lemmaCharactersSize!637 (Token!10534) Unit!53783)

(assert (=> b!3592918 (= lt!1232958 (lemmaCharactersSize!637 (_1!21966 lt!1232970)))))

(declare-fun lt!1232969 () Unit!53783)

(declare-fun lemmaEqSameImage!775 (TokenValueInjection!11056 BalanceConc!22604 BalanceConc!22604) Unit!53783)

(assert (=> b!3592918 (= lt!1232969 (lemmaEqSameImage!775 (transformation!5584 (rule!8304 (_1!21966 lt!1232970))) lt!1232972 (seqFromList!4137 (originalCharacters!6298 (_1!21966 lt!1232970)))))))

(declare-fun lt!1232957 () Unit!53783)

(declare-fun lemmaSemiInverse!1341 (TokenValueInjection!11056 BalanceConc!22604) Unit!53783)

(assert (=> b!3592918 (= lt!1232957 (lemmaSemiInverse!1341 (transformation!5584 (rule!8304 (_1!21966 lt!1232970))) lt!1232972))))

(assert (= (and start!333526 res!1450852) b!3592896))

(assert (= (and b!3592896 res!1450842) b!3592916))

(assert (= (and b!3592916 res!1450838) b!3592903))

(assert (= (and b!3592903 res!1450839) b!3592893))

(assert (= (and b!3592893 res!1450853) b!3592904))

(assert (= (and b!3592904 res!1450848) b!3592915))

(assert (= (and b!3592915 res!1450845) b!3592906))

(assert (= (and b!3592906 res!1450854) b!3592898))

(assert (= (and b!3592898 res!1450843) b!3592910))

(assert (= (and b!3592910 res!1450850) b!3592892))

(assert (= (and b!3592892 (not res!1450847)) b!3592905))

(assert (= (and b!3592905 (not res!1450844)) b!3592917))

(assert (= (and b!3592917 (not res!1450841)) b!3592894))

(assert (= (and b!3592894 (not res!1450835)) b!3592895))

(assert (= (and b!3592895 (not res!1450846)) b!3592909))

(assert (= (and b!3592909 res!1450837) b!3592899))

(assert (= (and b!3592899 res!1450849) b!3592900))

(assert (= (and b!3592909 (not res!1450836)) b!3592914))

(assert (= (and b!3592914 (not res!1450851)) b!3592918))

(assert (= (and b!3592918 (not res!1450840)) b!3592912))

(assert (= b!3592907 b!3592911))

(assert (= b!3592913 b!3592907))

(assert (= (and start!333526 ((_ is Cons!37781) rules!3307)) b!3592913))

(assert (= (and start!333526 ((_ is Cons!37780) suffix!1395)) b!3592908))

(assert (= b!3592901 b!3592889))

(assert (= b!3592888 b!3592901))

(assert (= start!333526 b!3592888))

(assert (= b!3592897 b!3592890))

(assert (= start!333526 b!3592897))

(assert (= b!3592902 b!3592891))

(assert (= start!333526 b!3592902))

(declare-fun m!4087345 () Bool)

(assert (=> b!3592903 m!4087345))

(declare-fun m!4087347 () Bool)

(assert (=> b!3592909 m!4087347))

(declare-fun m!4087349 () Bool)

(assert (=> b!3592909 m!4087349))

(declare-fun m!4087351 () Bool)

(assert (=> b!3592909 m!4087351))

(declare-fun m!4087353 () Bool)

(assert (=> b!3592909 m!4087353))

(declare-fun m!4087355 () Bool)

(assert (=> b!3592909 m!4087355))

(assert (=> b!3592909 m!4087349))

(declare-fun m!4087357 () Bool)

(assert (=> b!3592909 m!4087357))

(declare-fun m!4087359 () Bool)

(assert (=> b!3592909 m!4087359))

(declare-fun m!4087361 () Bool)

(assert (=> b!3592909 m!4087361))

(declare-fun m!4087363 () Bool)

(assert (=> b!3592909 m!4087363))

(declare-fun m!4087365 () Bool)

(assert (=> b!3592909 m!4087365))

(declare-fun m!4087367 () Bool)

(assert (=> b!3592909 m!4087367))

(declare-fun m!4087369 () Bool)

(assert (=> b!3592909 m!4087369))

(declare-fun m!4087371 () Bool)

(assert (=> b!3592909 m!4087371))

(declare-fun m!4087373 () Bool)

(assert (=> b!3592909 m!4087373))

(declare-fun m!4087375 () Bool)

(assert (=> b!3592909 m!4087375))

(declare-fun m!4087377 () Bool)

(assert (=> b!3592915 m!4087377))

(declare-fun m!4087379 () Bool)

(assert (=> b!3592915 m!4087379))

(declare-fun m!4087381 () Bool)

(assert (=> b!3592915 m!4087381))

(assert (=> b!3592915 m!4087381))

(declare-fun m!4087383 () Bool)

(assert (=> b!3592915 m!4087383))

(declare-fun m!4087385 () Bool)

(assert (=> b!3592902 m!4087385))

(declare-fun m!4087387 () Bool)

(assert (=> b!3592902 m!4087387))

(declare-fun m!4087389 () Bool)

(assert (=> b!3592898 m!4087389))

(assert (=> b!3592899 m!4087371))

(assert (=> b!3592899 m!4087371))

(declare-fun m!4087391 () Bool)

(assert (=> b!3592899 m!4087391))

(assert (=> b!3592899 m!4087391))

(declare-fun m!4087393 () Bool)

(assert (=> b!3592899 m!4087393))

(declare-fun m!4087395 () Bool)

(assert (=> b!3592899 m!4087395))

(declare-fun m!4087397 () Bool)

(assert (=> b!3592917 m!4087397))

(assert (=> b!3592917 m!4087397))

(declare-fun m!4087399 () Bool)

(assert (=> b!3592917 m!4087399))

(declare-fun m!4087401 () Bool)

(assert (=> b!3592917 m!4087401))

(declare-fun m!4087403 () Bool)

(assert (=> b!3592905 m!4087403))

(declare-fun m!4087405 () Bool)

(assert (=> b!3592907 m!4087405))

(declare-fun m!4087407 () Bool)

(assert (=> b!3592907 m!4087407))

(declare-fun m!4087409 () Bool)

(assert (=> b!3592894 m!4087409))

(assert (=> b!3592894 m!4087409))

(declare-fun m!4087411 () Bool)

(assert (=> b!3592894 m!4087411))

(declare-fun m!4087413 () Bool)

(assert (=> b!3592896 m!4087413))

(declare-fun m!4087415 () Bool)

(assert (=> b!3592906 m!4087415))

(declare-fun m!4087417 () Bool)

(assert (=> b!3592888 m!4087417))

(declare-fun m!4087419 () Bool)

(assert (=> b!3592914 m!4087419))

(declare-fun m!4087421 () Bool)

(assert (=> b!3592897 m!4087421))

(declare-fun m!4087423 () Bool)

(assert (=> b!3592897 m!4087423))

(declare-fun m!4087425 () Bool)

(assert (=> b!3592916 m!4087425))

(declare-fun m!4087427 () Bool)

(assert (=> start!333526 m!4087427))

(declare-fun m!4087429 () Bool)

(assert (=> b!3592912 m!4087429))

(declare-fun m!4087431 () Bool)

(assert (=> b!3592912 m!4087431))

(declare-fun m!4087433 () Bool)

(assert (=> b!3592912 m!4087433))

(declare-fun m!4087435 () Bool)

(assert (=> b!3592912 m!4087435))

(declare-fun m!4087437 () Bool)

(assert (=> b!3592912 m!4087437))

(assert (=> b!3592912 m!4087433))

(declare-fun m!4087439 () Bool)

(assert (=> b!3592912 m!4087439))

(declare-fun m!4087441 () Bool)

(assert (=> b!3592912 m!4087441))

(declare-fun m!4087443 () Bool)

(assert (=> b!3592892 m!4087443))

(declare-fun m!4087445 () Bool)

(assert (=> b!3592892 m!4087445))

(declare-fun m!4087447 () Bool)

(assert (=> b!3592892 m!4087447))

(declare-fun m!4087449 () Bool)

(assert (=> b!3592901 m!4087449))

(declare-fun m!4087451 () Bool)

(assert (=> b!3592901 m!4087451))

(declare-fun m!4087453 () Bool)

(assert (=> b!3592895 m!4087453))

(declare-fun m!4087455 () Bool)

(assert (=> b!3592918 m!4087455))

(declare-fun m!4087457 () Bool)

(assert (=> b!3592918 m!4087457))

(declare-fun m!4087459 () Bool)

(assert (=> b!3592918 m!4087459))

(declare-fun m!4087461 () Bool)

(assert (=> b!3592918 m!4087461))

(declare-fun m!4087463 () Bool)

(assert (=> b!3592918 m!4087463))

(declare-fun m!4087465 () Bool)

(assert (=> b!3592918 m!4087465))

(assert (=> b!3592918 m!4087455))

(declare-fun m!4087467 () Bool)

(assert (=> b!3592893 m!4087467))

(check-sat (not b!3592907) (not b_next!93469) (not b_next!93457) b_and!260067 b_and!260081 (not b!3592888) (not b_next!93465) (not b!3592914) (not start!333526) (not b!3592906) (not b!3592896) (not b_next!93467) (not b_next!93463) b_and!260077 (not b!3592898) (not b!3592893) (not b!3592913) tp_is_empty!17769 (not b_next!93471) (not b!3592912) (not b!3592897) (not b!3592903) (not b!3592917) b_and!260079 (not b!3592895) (not b!3592899) (not b!3592894) b_and!260073 (not b!3592915) (not b!3592918) (not b!3592892) (not b_next!93461) (not b!3592916) b_and!260071 (not b!3592901) (not b_next!93459) (not b!3592908) b_and!260075 b_and!260069 (not b!3592905) (not b!3592909) (not b!3592902))
(check-sat (not b_next!93467) (not b_next!93469) (not b_next!93457) b_and!260067 (not b_next!93471) b_and!260079 b_and!260073 b_and!260081 (not b_next!93465) (not b_next!93459) (not b_next!93463) b_and!260077 (not b_next!93461) b_and!260071 b_and!260075 b_and!260069)
