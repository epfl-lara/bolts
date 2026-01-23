; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!78228 () Bool)

(assert start!78228)

(declare-fun b!866856 () Bool)

(declare-fun b_free!26557 () Bool)

(declare-fun b_next!26621 () Bool)

(assert (=> b!866856 (= b_free!26557 (not b_next!26621))))

(declare-fun tp!274203 () Bool)

(declare-fun b_and!77737 () Bool)

(assert (=> b!866856 (= tp!274203 b_and!77737)))

(declare-fun b_free!26559 () Bool)

(declare-fun b_next!26623 () Bool)

(assert (=> b!866856 (= b_free!26559 (not b_next!26623))))

(declare-fun tp!274193 () Bool)

(declare-fun b_and!77739 () Bool)

(assert (=> b!866856 (= tp!274193 b_and!77739)))

(declare-fun b!866834 () Bool)

(declare-fun b_free!26561 () Bool)

(declare-fun b_next!26625 () Bool)

(assert (=> b!866834 (= b_free!26561 (not b_next!26625))))

(declare-fun tp!274200 () Bool)

(declare-fun b_and!77741 () Bool)

(assert (=> b!866834 (= tp!274200 b_and!77741)))

(declare-fun b_free!26563 () Bool)

(declare-fun b_next!26627 () Bool)

(assert (=> b!866834 (= b_free!26563 (not b_next!26627))))

(declare-fun tp!274201 () Bool)

(declare-fun b_and!77743 () Bool)

(assert (=> b!866834 (= tp!274201 b_and!77743)))

(declare-fun b!866854 () Bool)

(declare-fun b_free!26565 () Bool)

(declare-fun b_next!26629 () Bool)

(assert (=> b!866854 (= b_free!26565 (not b_next!26629))))

(declare-fun tp!274195 () Bool)

(declare-fun b_and!77745 () Bool)

(assert (=> b!866854 (= tp!274195 b_and!77745)))

(declare-fun b_free!26567 () Bool)

(declare-fun b_next!26631 () Bool)

(assert (=> b!866854 (= b_free!26567 (not b_next!26631))))

(declare-fun tp!274196 () Bool)

(declare-fun b_and!77747 () Bool)

(assert (=> b!866854 (= tp!274196 b_and!77747)))

(declare-fun b!866832 () Bool)

(declare-fun e!570446 () Bool)

(declare-fun tp!274198 () Bool)

(declare-fun e!570445 () Bool)

(declare-datatypes ((List!9392 0))(
  ( (Nil!9376) (Cons!9376 (h!14777 (_ BitVec 16)) (t!98842 List!9392)) )
))
(declare-datatypes ((TokenValue!1827 0))(
  ( (FloatLiteralValue!3654 (text!13234 List!9392)) (TokenValueExt!1826 (__x!7385 Int)) (Broken!9135 (value!56863 List!9392)) (Object!1842) (End!1827) (Def!1827) (Underscore!1827) (Match!1827) (Else!1827) (Error!1827) (Case!1827) (If!1827) (Extends!1827) (Abstract!1827) (Class!1827) (Val!1827) (DelimiterValue!3654 (del!1887 List!9392)) (KeywordValue!1833 (value!56864 List!9392)) (CommentValue!3654 (value!56865 List!9392)) (WhitespaceValue!3654 (value!56866 List!9392)) (IndentationValue!1827 (value!56867 List!9392)) (String!11034) (Int32!1827) (Broken!9136 (value!56868 List!9392)) (Boolean!1828) (Unit!13891) (OperatorValue!1830 (op!1887 List!9392)) (IdentifierValue!3654 (value!56869 List!9392)) (IdentifierValue!3655 (value!56870 List!9392)) (WhitespaceValue!3655 (value!56871 List!9392)) (True!3654) (False!3654) (Broken!9137 (value!56872 List!9392)) (Broken!9138 (value!56873 List!9392)) (True!3655) (RightBrace!1827) (RightBracket!1827) (Colon!1827) (Null!1827) (Comma!1827) (LeftBracket!1827) (False!3655) (LeftBrace!1827) (ImaginaryLiteralValue!1827 (text!13235 List!9392)) (StringLiteralValue!5481 (value!56874 List!9392)) (EOFValue!1827 (value!56875 List!9392)) (IdentValue!1827 (value!56876 List!9392)) (DelimiterValue!3655 (value!56877 List!9392)) (DedentValue!1827 (value!56878 List!9392)) (NewLineValue!1827 (value!56879 List!9392)) (IntegerValue!5481 (value!56880 (_ BitVec 32)) (text!13236 List!9392)) (IntegerValue!5482 (value!56881 Int) (text!13237 List!9392)) (Times!1827) (Or!1827) (Equal!1827) (Minus!1827) (Broken!9139 (value!56882 List!9392)) (And!1827) (Div!1827) (LessEqual!1827) (Mod!1827) (Concat!4021) (Not!1827) (Plus!1827) (SpaceValue!1827 (value!56883 List!9392)) (IntegerValue!5483 (value!56884 Int) (text!13238 List!9392)) (StringLiteralValue!5482 (text!13239 List!9392)) (FloatLiteralValue!3655 (text!13240 List!9392)) (BytesLiteralValue!1827 (value!56885 List!9392)) (CommentValue!3655 (value!56886 List!9392)) (StringLiteralValue!5483 (value!56887 List!9392)) (ErrorTokenValue!1827 (msg!1888 List!9392)) )
))
(declare-datatypes ((C!4958 0))(
  ( (C!4959 (val!2727 Int)) )
))
(declare-datatypes ((Regex!2194 0))(
  ( (ElementMatch!2194 (c!140191 C!4958)) (Concat!4022 (regOne!4900 Regex!2194) (regTwo!4900 Regex!2194)) (EmptyExpr!2194) (Star!2194 (reg!2523 Regex!2194)) (EmptyLang!2194) (Union!2194 (regOne!4901 Regex!2194) (regTwo!4901 Regex!2194)) )
))
(declare-datatypes ((String!11035 0))(
  ( (String!11036 (value!56888 String)) )
))
(declare-datatypes ((List!9393 0))(
  ( (Nil!9377) (Cons!9377 (h!14778 C!4958) (t!98843 List!9393)) )
))
(declare-datatypes ((IArray!6225 0))(
  ( (IArray!6226 (innerList!3170 List!9393)) )
))
(declare-datatypes ((Conc!3110 0))(
  ( (Node!3110 (left!6940 Conc!3110) (right!7270 Conc!3110) (csize!6450 Int) (cheight!3321 Int)) (Leaf!4579 (xs!5799 IArray!6225) (csize!6451 Int)) (Empty!3110) )
))
(declare-datatypes ((BalanceConc!6234 0))(
  ( (BalanceConc!6235 (c!140192 Conc!3110)) )
))
(declare-datatypes ((TokenValueInjection!3354 0))(
  ( (TokenValueInjection!3355 (toValue!2830 Int) (toChars!2689 Int)) )
))
(declare-datatypes ((Rule!3322 0))(
  ( (Rule!3323 (regex!1761 Regex!2194) (tag!2023 String!11035) (isSeparator!1761 Bool) (transformation!1761 TokenValueInjection!3354)) )
))
(declare-datatypes ((Token!3188 0))(
  ( (Token!3189 (value!56889 TokenValue!1827) (rule!3184 Rule!3322) (size!7808 Int) (originalCharacters!2317 List!9393)) )
))
(declare-datatypes ((List!9394 0))(
  ( (Nil!9378) (Cons!9378 (h!14779 Token!3188) (t!98844 List!9394)) )
))
(declare-fun l!5107 () List!9394)

(declare-fun inv!11910 (String!11035) Bool)

(declare-fun inv!11913 (TokenValueInjection!3354) Bool)

(assert (=> b!866832 (= e!570445 (and tp!274198 (inv!11910 (tag!2023 (rule!3184 (h!14779 l!5107)))) (inv!11913 (transformation!1761 (rule!3184 (h!14779 l!5107)))) e!570446))))

(declare-fun b!866833 () Bool)

(declare-fun e!570460 () Bool)

(declare-fun tp!274202 () Bool)

(declare-fun e!570452 () Bool)

(declare-fun inv!11914 (Token!3188) Bool)

(assert (=> b!866833 (= e!570460 (and (inv!11914 (h!14779 l!5107)) e!570452 tp!274202))))

(assert (=> b!866834 (= e!570446 (and tp!274200 tp!274201))))

(declare-fun res!394776 () Bool)

(declare-fun e!570454 () Bool)

(assert (=> start!78228 (=> (not res!394776) (not e!570454))))

(declare-datatypes ((LexerInterface!1563 0))(
  ( (LexerInterfaceExt!1560 (__x!7386 Int)) (Lexer!1561) )
))
(declare-fun thiss!20117 () LexerInterface!1563)

(assert (=> start!78228 (= res!394776 (is-Lexer!1561 thiss!20117))))

(assert (=> start!78228 e!570454))

(assert (=> start!78228 true))

(declare-fun e!570449 () Bool)

(assert (=> start!78228 e!570449))

(assert (=> start!78228 e!570460))

(declare-fun separatorToken!297 () Token!3188)

(declare-fun e!570456 () Bool)

(assert (=> start!78228 (and (inv!11914 separatorToken!297) e!570456)))

(declare-fun tp!274192 () Bool)

(declare-fun b!866835 () Bool)

(declare-fun inv!21 (TokenValue!1827) Bool)

(assert (=> b!866835 (= e!570452 (and (inv!21 (value!56889 (h!14779 l!5107))) e!570445 tp!274192))))

(declare-fun b!866836 () Bool)

(declare-fun res!394781 () Bool)

(assert (=> b!866836 (=> (not res!394781) (not e!570454))))

(declare-datatypes ((List!9395 0))(
  ( (Nil!9379) (Cons!9379 (h!14780 Rule!3322) (t!98845 List!9395)) )
))
(declare-fun rules!2621 () List!9395)

(declare-fun rulesProduceIndividualToken!627 (LexerInterface!1563 List!9395 Token!3188) Bool)

(assert (=> b!866836 (= res!394781 (rulesProduceIndividualToken!627 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun b!866837 () Bool)

(declare-fun res!394774 () Bool)

(declare-fun e!570457 () Bool)

(assert (=> b!866837 (=> res!394774 e!570457)))

(declare-fun lt!326948 () List!9394)

(assert (=> b!866837 (= res!394774 (not (= (h!14779 (t!98844 lt!326948)) separatorToken!297)))))

(declare-fun b!866838 () Bool)

(declare-fun res!394784 () Bool)

(declare-fun e!570444 () Bool)

(assert (=> b!866838 (=> res!394784 e!570444)))

(assert (=> b!866838 (= res!394784 (not (rulesProduceIndividualToken!627 thiss!20117 rules!2621 (h!14779 (t!98844 lt!326948)))))))

(declare-fun b!866839 () Bool)

(declare-fun res!394785 () Bool)

(assert (=> b!866839 (=> (not res!394785) (not e!570454))))

(declare-fun rulesInvariant!1439 (LexerInterface!1563 List!9395) Bool)

(assert (=> b!866839 (= res!394785 (rulesInvariant!1439 thiss!20117 rules!2621))))

(declare-fun b!866840 () Bool)

(declare-fun res!394786 () Bool)

(assert (=> b!866840 (=> (not res!394786) (not e!570454))))

(declare-fun lambda!26017 () Int)

(declare-fun forall!2228 (List!9394 Int) Bool)

(assert (=> b!866840 (= res!394786 (forall!2228 l!5107 lambda!26017))))

(declare-fun b!866841 () Bool)

(declare-fun res!394775 () Bool)

(assert (=> b!866841 (=> (not res!394775) (not e!570454))))

(declare-fun rulesProduceEachTokenIndividuallyList!451 (LexerInterface!1563 List!9395 List!9394) Bool)

(assert (=> b!866841 (= res!394775 (rulesProduceEachTokenIndividuallyList!451 thiss!20117 rules!2621 l!5107))))

(declare-fun b!866842 () Bool)

(assert (=> b!866842 (= e!570457 e!570444)))

(declare-fun res!394773 () Bool)

(assert (=> b!866842 (=> res!394773 e!570444)))

(declare-fun isEmpty!5568 (List!9394) Bool)

(assert (=> b!866842 (= res!394773 (isEmpty!5568 (t!98844 (t!98844 lt!326948))))))

(declare-fun e!570447 () Bool)

(assert (=> b!866842 e!570447))

(declare-fun res!394777 () Bool)

(assert (=> b!866842 (=> (not res!394777) (not e!570447))))

(declare-fun lt!326950 () List!9394)

(assert (=> b!866842 (= res!394777 (rulesProduceEachTokenIndividuallyList!451 thiss!20117 rules!2621 lt!326950))))

(declare-datatypes ((Unit!13892 0))(
  ( (Unit!13893) )
))
(declare-fun lt!326951 () Unit!13892)

(declare-fun lt!326949 () List!9394)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!91 (LexerInterface!1563 List!9395 List!9394 Token!3188) Unit!13892)

(assert (=> b!866842 (= lt!326951 (withSeparatorTokenListPreservesRulesProduceTokens!91 thiss!20117 rules!2621 lt!326949 separatorToken!297))))

(declare-fun lt!326953 () Unit!13892)

(declare-fun printWithSeparatorTokenImpliesSeparableTokensList!35 (LexerInterface!1563 List!9395 List!9394 Token!3188) Unit!13892)

(assert (=> b!866842 (= lt!326953 (printWithSeparatorTokenImpliesSeparableTokensList!35 thiss!20117 rules!2621 lt!326949 separatorToken!297))))

(declare-fun separableTokensPredicate!81 (LexerInterface!1563 Token!3188 Token!3188 List!9395) Bool)

(assert (=> b!866842 (separableTokensPredicate!81 thiss!20117 (h!14779 lt!326948) (h!14779 (t!98844 lt!326948)) rules!2621)))

(declare-fun lt!326952 () Unit!13892)

(declare-fun lemmaTokensOfDifferentKindsAreSeparable!59 (LexerInterface!1563 Token!3188 Token!3188 List!9395) Unit!13892)

(assert (=> b!866842 (= lt!326952 (lemmaTokensOfDifferentKindsAreSeparable!59 thiss!20117 (h!14779 lt!326948) (h!14779 (t!98844 lt!326948)) rules!2621))))

(declare-fun b!866843 () Bool)

(declare-fun res!394780 () Bool)

(assert (=> b!866843 (=> res!394780 e!570457)))

(declare-fun head!1507 (List!9394) Token!3188)

(assert (=> b!866843 (= res!394780 (not (= (head!1507 l!5107) (h!14779 lt!326948))))))

(declare-fun b!866844 () Bool)

(declare-fun e!570442 () Bool)

(assert (=> b!866844 (= e!570442 e!570457)))

(declare-fun res!394778 () Bool)

(assert (=> b!866844 (=> res!394778 e!570457)))

(assert (=> b!866844 (= res!394778 (not (= (t!98844 (t!98844 lt!326948)) lt!326950)))))

(declare-fun withSeparatorTokenList!91 (LexerInterface!1563 List!9394 Token!3188) List!9394)

(assert (=> b!866844 (= lt!326950 (withSeparatorTokenList!91 thiss!20117 lt!326949 separatorToken!297))))

(declare-fun tail!1069 (List!9394) List!9394)

(assert (=> b!866844 (= lt!326949 (tail!1069 l!5107))))

(declare-fun b!866845 () Bool)

(declare-fun e!570458 () Bool)

(declare-fun tp!274199 () Bool)

(assert (=> b!866845 (= e!570449 (and e!570458 tp!274199))))

(declare-fun b!866846 () Bool)

(assert (=> b!866846 (= e!570444 (rulesProduceIndividualToken!627 thiss!20117 rules!2621 (head!1507 (t!98844 (t!98844 lt!326948)))))))

(declare-fun b!866847 () Bool)

(assert (=> b!866847 (= e!570454 (not e!570442))))

(declare-fun res!394783 () Bool)

(assert (=> b!866847 (=> res!394783 e!570442)))

(assert (=> b!866847 (= res!394783 (or (not (is-Cons!9378 lt!326948)) (not (is-Cons!9378 (t!98844 lt!326948)))))))

(assert (=> b!866847 (rulesProduceEachTokenIndividuallyList!451 thiss!20117 rules!2621 lt!326948)))

(assert (=> b!866847 (= lt!326948 (withSeparatorTokenList!91 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!326954 () Unit!13892)

(assert (=> b!866847 (= lt!326954 (withSeparatorTokenListPreservesRulesProduceTokens!91 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun tp!274197 () Bool)

(declare-fun b!866848 () Bool)

(declare-fun e!570453 () Bool)

(assert (=> b!866848 (= e!570458 (and tp!274197 (inv!11910 (tag!2023 (h!14780 rules!2621))) (inv!11913 (transformation!1761 (h!14780 rules!2621))) e!570453))))

(declare-fun b!866849 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!57 (LexerInterface!1563 List!9394 List!9395) Bool)

(assert (=> b!866849 (= e!570447 (tokensListTwoByTwoPredicateSeparableList!57 thiss!20117 lt!326950 rules!2621))))

(declare-fun e!570461 () Bool)

(declare-fun tp!274194 () Bool)

(declare-fun b!866850 () Bool)

(declare-fun e!570451 () Bool)

(assert (=> b!866850 (= e!570451 (and tp!274194 (inv!11910 (tag!2023 (rule!3184 separatorToken!297))) (inv!11913 (transformation!1761 (rule!3184 separatorToken!297))) e!570461))))

(declare-fun b!866851 () Bool)

(declare-fun res!394779 () Bool)

(assert (=> b!866851 (=> (not res!394779) (not e!570454))))

(declare-fun isEmpty!5569 (List!9395) Bool)

(assert (=> b!866851 (= res!394779 (not (isEmpty!5569 rules!2621)))))

(declare-fun b!866852 () Bool)

(declare-fun res!394782 () Bool)

(assert (=> b!866852 (=> (not res!394782) (not e!570454))))

(declare-fun sepAndNonSepRulesDisjointChars!561 (List!9395 List!9395) Bool)

(assert (=> b!866852 (= res!394782 (sepAndNonSepRulesDisjointChars!561 rules!2621 rules!2621))))

(declare-fun b!866853 () Bool)

(declare-fun res!394787 () Bool)

(assert (=> b!866853 (=> (not res!394787) (not e!570454))))

(assert (=> b!866853 (= res!394787 (isSeparator!1761 (rule!3184 separatorToken!297)))))

(assert (=> b!866854 (= e!570453 (and tp!274195 tp!274196))))

(declare-fun b!866855 () Bool)

(declare-fun tp!274191 () Bool)

(assert (=> b!866855 (= e!570456 (and (inv!21 (value!56889 separatorToken!297)) e!570451 tp!274191))))

(assert (=> b!866856 (= e!570461 (and tp!274203 tp!274193))))

(assert (= (and start!78228 res!394776) b!866851))

(assert (= (and b!866851 res!394779) b!866839))

(assert (= (and b!866839 res!394785) b!866841))

(assert (= (and b!866841 res!394775) b!866836))

(assert (= (and b!866836 res!394781) b!866853))

(assert (= (and b!866853 res!394787) b!866840))

(assert (= (and b!866840 res!394786) b!866852))

(assert (= (and b!866852 res!394782) b!866847))

(assert (= (and b!866847 (not res!394783)) b!866844))

(assert (= (and b!866844 (not res!394778)) b!866843))

(assert (= (and b!866843 (not res!394780)) b!866837))

(assert (= (and b!866837 (not res!394774)) b!866842))

(assert (= (and b!866842 res!394777) b!866849))

(assert (= (and b!866842 (not res!394773)) b!866838))

(assert (= (and b!866838 (not res!394784)) b!866846))

(assert (= b!866848 b!866854))

(assert (= b!866845 b!866848))

(assert (= (and start!78228 (is-Cons!9379 rules!2621)) b!866845))

(assert (= b!866832 b!866834))

(assert (= b!866835 b!866832))

(assert (= b!866833 b!866835))

(assert (= (and start!78228 (is-Cons!9378 l!5107)) b!866833))

(assert (= b!866850 b!866856))

(assert (= b!866855 b!866850))

(assert (= start!78228 b!866855))

(declare-fun m!1113721 () Bool)

(assert (=> b!866842 m!1113721))

(declare-fun m!1113723 () Bool)

(assert (=> b!866842 m!1113723))

(declare-fun m!1113725 () Bool)

(assert (=> b!866842 m!1113725))

(declare-fun m!1113727 () Bool)

(assert (=> b!866842 m!1113727))

(declare-fun m!1113729 () Bool)

(assert (=> b!866842 m!1113729))

(declare-fun m!1113731 () Bool)

(assert (=> b!866842 m!1113731))

(declare-fun m!1113733 () Bool)

(assert (=> b!866835 m!1113733))

(declare-fun m!1113735 () Bool)

(assert (=> b!866846 m!1113735))

(assert (=> b!866846 m!1113735))

(declare-fun m!1113737 () Bool)

(assert (=> b!866846 m!1113737))

(declare-fun m!1113739 () Bool)

(assert (=> b!866833 m!1113739))

(declare-fun m!1113741 () Bool)

(assert (=> b!866843 m!1113741))

(declare-fun m!1113743 () Bool)

(assert (=> b!866839 m!1113743))

(declare-fun m!1113745 () Bool)

(assert (=> b!866838 m!1113745))

(declare-fun m!1113747 () Bool)

(assert (=> b!866852 m!1113747))

(declare-fun m!1113749 () Bool)

(assert (=> b!866844 m!1113749))

(declare-fun m!1113751 () Bool)

(assert (=> b!866844 m!1113751))

(declare-fun m!1113753 () Bool)

(assert (=> b!866841 m!1113753))

(declare-fun m!1113755 () Bool)

(assert (=> b!866832 m!1113755))

(declare-fun m!1113757 () Bool)

(assert (=> b!866832 m!1113757))

(declare-fun m!1113759 () Bool)

(assert (=> b!866855 m!1113759))

(declare-fun m!1113761 () Bool)

(assert (=> b!866836 m!1113761))

(declare-fun m!1113763 () Bool)

(assert (=> b!866847 m!1113763))

(declare-fun m!1113765 () Bool)

(assert (=> b!866847 m!1113765))

(declare-fun m!1113767 () Bool)

(assert (=> b!866847 m!1113767))

(declare-fun m!1113769 () Bool)

(assert (=> b!866840 m!1113769))

(declare-fun m!1113771 () Bool)

(assert (=> start!78228 m!1113771))

(declare-fun m!1113773 () Bool)

(assert (=> b!866850 m!1113773))

(declare-fun m!1113775 () Bool)

(assert (=> b!866850 m!1113775))

(declare-fun m!1113777 () Bool)

(assert (=> b!866848 m!1113777))

(declare-fun m!1113779 () Bool)

(assert (=> b!866848 m!1113779))

(declare-fun m!1113781 () Bool)

(assert (=> b!866851 m!1113781))

(declare-fun m!1113783 () Bool)

(assert (=> b!866849 m!1113783))

(push 1)

(assert (not b_next!26621))

(assert (not b_next!26623))

(assert (not b!866835))

(assert b_and!77745)

(assert (not b!866844))

(assert (not b!866848))

(assert (not b!866845))

(assert b_and!77741)

(assert b_and!77737)

(assert (not b!866847))

(assert (not b!866846))

(assert (not b!866849))

(assert b_and!77747)

(assert (not b!866839))

(assert (not b!866836))

(assert (not b!866843))

(assert (not b!866833))

(assert (not b_next!26629))

(assert (not b!866855))

(assert (not b_next!26627))

(assert (not b!866838))

(assert (not b!866832))

(assert (not b!866851))

(assert (not b!866841))

(assert (not b!866840))

(assert (not b!866852))

(assert b_and!77743)

(assert (not b_next!26631))

(assert (not b!866850))

(assert (not b!866842))

(assert (not start!78228))

(assert b_and!77739)

(assert (not b_next!26625))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!26621))

(assert (not b_next!26623))

(assert (not b_next!26629))

(assert (not b_next!26627))

(assert b_and!77745)

(assert b_and!77743)

(assert (not b_next!26631))

(assert b_and!77741)

(assert b_and!77737)

(assert b_and!77747)

(assert b_and!77739)

(assert (not b_next!26625))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!272129 () Bool)

(declare-fun lt!326981 () Bool)

(declare-fun e!570526 () Bool)

(assert (=> d!272129 (= lt!326981 e!570526)))

(declare-fun res!394848 () Bool)

(assert (=> d!272129 (=> (not res!394848) (not e!570526))))

(declare-datatypes ((IArray!6229 0))(
  ( (IArray!6230 (innerList!3172 List!9394)) )
))
(declare-datatypes ((Conc!3112 0))(
  ( (Node!3112 (left!6946 Conc!3112) (right!7276 Conc!3112) (csize!6454 Int) (cheight!3323 Int)) (Leaf!4581 (xs!5801 IArray!6229) (csize!6455 Int)) (Empty!3112) )
))
(declare-datatypes ((BalanceConc!6238 0))(
  ( (BalanceConc!6239 (c!140235 Conc!3112)) )
))
(declare-fun list!3699 (BalanceConc!6238) List!9394)

(declare-datatypes ((tuple2!10478 0))(
  ( (tuple2!10479 (_1!6065 BalanceConc!6238) (_2!6065 BalanceConc!6234)) )
))
(declare-fun lex!647 (LexerInterface!1563 List!9395 BalanceConc!6234) tuple2!10478)

(declare-fun print!584 (LexerInterface!1563 BalanceConc!6238) BalanceConc!6234)

(declare-fun singletonSeq!580 (Token!3188) BalanceConc!6238)

(assert (=> d!272129 (= res!394848 (= (list!3699 (_1!6065 (lex!647 thiss!20117 rules!2621 (print!584 thiss!20117 (singletonSeq!580 separatorToken!297))))) (list!3699 (singletonSeq!580 separatorToken!297))))))

(declare-fun e!570527 () Bool)

(assert (=> d!272129 (= lt!326981 e!570527)))

(declare-fun res!394847 () Bool)

(assert (=> d!272129 (=> (not res!394847) (not e!570527))))

(declare-fun lt!326980 () tuple2!10478)

(declare-fun size!7810 (BalanceConc!6238) Int)

(assert (=> d!272129 (= res!394847 (= (size!7810 (_1!6065 lt!326980)) 1))))

(assert (=> d!272129 (= lt!326980 (lex!647 thiss!20117 rules!2621 (print!584 thiss!20117 (singletonSeq!580 separatorToken!297))))))

(assert (=> d!272129 (not (isEmpty!5569 rules!2621))))

(assert (=> d!272129 (= (rulesProduceIndividualToken!627 thiss!20117 rules!2621 separatorToken!297) lt!326981)))

(declare-fun b!866938 () Bool)

(declare-fun res!394846 () Bool)

(assert (=> b!866938 (=> (not res!394846) (not e!570527))))

(declare-fun apply!1972 (BalanceConc!6238 Int) Token!3188)

(assert (=> b!866938 (= res!394846 (= (apply!1972 (_1!6065 lt!326980) 0) separatorToken!297))))

(declare-fun b!866939 () Bool)

(declare-fun isEmpty!5572 (BalanceConc!6234) Bool)

(assert (=> b!866939 (= e!570527 (isEmpty!5572 (_2!6065 lt!326980)))))

(declare-fun b!866940 () Bool)

(assert (=> b!866940 (= e!570526 (isEmpty!5572 (_2!6065 (lex!647 thiss!20117 rules!2621 (print!584 thiss!20117 (singletonSeq!580 separatorToken!297))))))))

(assert (= (and d!272129 res!394847) b!866938))

(assert (= (and b!866938 res!394846) b!866939))

(assert (= (and d!272129 res!394848) b!866940))

(declare-fun m!1113849 () Bool)

(assert (=> d!272129 m!1113849))

(declare-fun m!1113851 () Bool)

(assert (=> d!272129 m!1113851))

(declare-fun m!1113853 () Bool)

(assert (=> d!272129 m!1113853))

(assert (=> d!272129 m!1113849))

(declare-fun m!1113855 () Bool)

(assert (=> d!272129 m!1113855))

(declare-fun m!1113857 () Bool)

(assert (=> d!272129 m!1113857))

(assert (=> d!272129 m!1113781))

(assert (=> d!272129 m!1113849))

(assert (=> d!272129 m!1113855))

(declare-fun m!1113859 () Bool)

(assert (=> d!272129 m!1113859))

(declare-fun m!1113861 () Bool)

(assert (=> b!866938 m!1113861))

(declare-fun m!1113863 () Bool)

(assert (=> b!866939 m!1113863))

(assert (=> b!866940 m!1113849))

(assert (=> b!866940 m!1113849))

(assert (=> b!866940 m!1113855))

(assert (=> b!866940 m!1113855))

(assert (=> b!866940 m!1113859))

(declare-fun m!1113865 () Bool)

(assert (=> b!866940 m!1113865))

(assert (=> b!866836 d!272129))

(declare-fun bs!232904 () Bool)

(declare-fun d!272133 () Bool)

(assert (= bs!232904 (and d!272133 b!866840)))

(declare-fun lambda!26023 () Int)

(assert (=> bs!232904 (not (= lambda!26023 lambda!26017))))

(declare-fun b!867000 () Bool)

(declare-fun e!570575 () Bool)

(assert (=> b!867000 (= e!570575 true)))

(declare-fun b!866999 () Bool)

(declare-fun e!570574 () Bool)

(assert (=> b!866999 (= e!570574 e!570575)))

(declare-fun b!866998 () Bool)

(declare-fun e!570573 () Bool)

(assert (=> b!866998 (= e!570573 e!570574)))

(assert (=> d!272133 e!570573))

(assert (= b!866999 b!867000))

(assert (= b!866998 b!866999))

(assert (= (and d!272133 (is-Cons!9379 rules!2621)) b!866998))

(declare-fun order!6127 () Int)

(declare-fun order!6125 () Int)

(declare-fun dynLambda!4455 (Int Int) Int)

(declare-fun dynLambda!4456 (Int Int) Int)

(assert (=> b!867000 (< (dynLambda!4455 order!6125 (toValue!2830 (transformation!1761 (h!14780 rules!2621)))) (dynLambda!4456 order!6127 lambda!26023))))

(declare-fun order!6129 () Int)

(declare-fun dynLambda!4457 (Int Int) Int)

(assert (=> b!867000 (< (dynLambda!4457 order!6129 (toChars!2689 (transformation!1761 (h!14780 rules!2621)))) (dynLambda!4456 order!6127 lambda!26023))))

(assert (=> d!272133 true))

(declare-fun lt!327013 () Bool)

(assert (=> d!272133 (= lt!327013 (forall!2228 lt!326948 lambda!26023))))

(declare-fun e!570566 () Bool)

(assert (=> d!272133 (= lt!327013 e!570566)))

(declare-fun res!394884 () Bool)

(assert (=> d!272133 (=> res!394884 e!570566)))

(assert (=> d!272133 (= res!394884 (not (is-Cons!9378 lt!326948)))))

(assert (=> d!272133 (not (isEmpty!5569 rules!2621))))

(assert (=> d!272133 (= (rulesProduceEachTokenIndividuallyList!451 thiss!20117 rules!2621 lt!326948) lt!327013)))

(declare-fun b!866988 () Bool)

(declare-fun e!570565 () Bool)

(assert (=> b!866988 (= e!570566 e!570565)))

(declare-fun res!394885 () Bool)

(assert (=> b!866988 (=> (not res!394885) (not e!570565))))

(assert (=> b!866988 (= res!394885 (rulesProduceIndividualToken!627 thiss!20117 rules!2621 (h!14779 lt!326948)))))

(declare-fun b!866989 () Bool)

(assert (=> b!866989 (= e!570565 (rulesProduceEachTokenIndividuallyList!451 thiss!20117 rules!2621 (t!98844 lt!326948)))))

(assert (= (and d!272133 (not res!394884)) b!866988))

(assert (= (and b!866988 res!394885) b!866989))

(declare-fun m!1113937 () Bool)

(assert (=> d!272133 m!1113937))

(assert (=> d!272133 m!1113781))

(declare-fun m!1113939 () Bool)

(assert (=> b!866988 m!1113939))

(declare-fun m!1113941 () Bool)

(assert (=> b!866989 m!1113941))

(assert (=> b!866847 d!272133))

(declare-fun lt!327037 () List!9394)

(declare-fun d!272155 () Bool)

(declare-fun printList!501 (LexerInterface!1563 List!9394) List!9393)

(declare-fun printWithSeparatorTokenList!59 (LexerInterface!1563 List!9394 Token!3188) List!9393)

(assert (=> d!272155 (= (printList!501 thiss!20117 lt!327037) (printWithSeparatorTokenList!59 thiss!20117 l!5107 separatorToken!297))))

(declare-fun e!570591 () List!9394)

(assert (=> d!272155 (= lt!327037 e!570591)))

(declare-fun c!140209 () Bool)

(assert (=> d!272155 (= c!140209 (is-Cons!9378 l!5107))))

(declare-fun e!570593 () Bool)

(assert (=> d!272155 e!570593))

(declare-fun res!394895 () Bool)

(assert (=> d!272155 (=> (not res!394895) (not e!570593))))

(assert (=> d!272155 (= res!394895 (isSeparator!1761 (rule!3184 separatorToken!297)))))

(assert (=> d!272155 (= (withSeparatorTokenList!91 thiss!20117 l!5107 separatorToken!297) lt!327037)))

(declare-fun b!867023 () Bool)

(declare-fun $colon$colon!114 (List!9394 Token!3188) List!9394)

(assert (=> b!867023 (= e!570591 ($colon$colon!114 ($colon$colon!114 (withSeparatorTokenList!91 thiss!20117 (t!98844 l!5107) separatorToken!297) separatorToken!297) (h!14779 l!5107)))))

(declare-fun lt!327033 () List!9393)

(declare-fun list!3700 (BalanceConc!6234) List!9393)

(declare-fun charsOf!1018 (Token!3188) BalanceConc!6234)

(assert (=> b!867023 (= lt!327033 (list!3700 (charsOf!1018 (h!14779 l!5107))))))

(declare-fun lt!327036 () List!9393)

(assert (=> b!867023 (= lt!327036 (list!3700 (charsOf!1018 separatorToken!297)))))

(declare-fun lt!327030 () List!9393)

(assert (=> b!867023 (= lt!327030 (printList!501 thiss!20117 (withSeparatorTokenList!91 thiss!20117 (t!98844 l!5107) separatorToken!297)))))

(declare-fun lt!327032 () Unit!13892)

(declare-fun lemmaConcatAssociativity!778 (List!9393 List!9393 List!9393) Unit!13892)

(assert (=> b!867023 (= lt!327032 (lemmaConcatAssociativity!778 lt!327033 lt!327036 lt!327030))))

(declare-fun ++!2427 (List!9393 List!9393) List!9393)

(assert (=> b!867023 (= (++!2427 (++!2427 lt!327033 lt!327036) lt!327030) (++!2427 lt!327033 (++!2427 lt!327036 lt!327030)))))

(declare-fun lt!327035 () Unit!13892)

(assert (=> b!867023 (= lt!327035 lt!327032)))

(declare-fun e!570588 () Bool)

(declare-fun e!570592 () List!9393)

(declare-fun b!867024 () Bool)

(assert (=> b!867024 (= e!570588 (= (printList!501 thiss!20117 ($colon$colon!114 (withSeparatorTokenList!91 thiss!20117 (t!98844 l!5107) separatorToken!297) separatorToken!297)) e!570592))))

(declare-fun c!140208 () Bool)

(declare-fun lt!327031 () List!9394)

(assert (=> b!867024 (= c!140208 (is-Cons!9378 lt!327031))))

(assert (=> b!867024 (= lt!327031 ($colon$colon!114 (withSeparatorTokenList!91 thiss!20117 (t!98844 l!5107) separatorToken!297) separatorToken!297))))

(declare-fun b!867025 () Bool)

(declare-fun e!570589 () List!9393)

(declare-fun lt!327034 () List!9394)

(assert (=> b!867025 (= e!570589 (++!2427 (list!3700 (charsOf!1018 (h!14779 lt!327034))) (printList!501 thiss!20117 (t!98844 lt!327034))))))

(declare-fun b!867026 () Bool)

(assert (=> b!867026 (= e!570591 Nil!9378)))

(declare-fun b!867027 () Bool)

(declare-fun res!394897 () Bool)

(assert (=> b!867027 (=> (not res!394897) (not e!570593))))

(declare-fun e!570590 () Bool)

(assert (=> b!867027 (= res!394897 e!570590)))

(declare-fun res!394894 () Bool)

(assert (=> b!867027 (=> res!394894 e!570590)))

(assert (=> b!867027 (= res!394894 (not (is-Cons!9378 l!5107)))))

(declare-fun b!867028 () Bool)

(assert (=> b!867028 (= e!570593 e!570588)))

(declare-fun res!394896 () Bool)

(assert (=> b!867028 (=> res!394896 e!570588)))

(assert (=> b!867028 (= res!394896 (not (is-Cons!9378 l!5107)))))

(declare-fun b!867029 () Bool)

(assert (=> b!867029 (= e!570590 (= (printList!501 thiss!20117 ($colon$colon!114 ($colon$colon!114 (withSeparatorTokenList!91 thiss!20117 (t!98844 l!5107) separatorToken!297) separatorToken!297) (h!14779 l!5107))) e!570589))))

(declare-fun c!140207 () Bool)

(assert (=> b!867029 (= c!140207 (is-Cons!9378 lt!327034))))

(assert (=> b!867029 (= lt!327034 ($colon$colon!114 ($colon$colon!114 (withSeparatorTokenList!91 thiss!20117 (t!98844 l!5107) separatorToken!297) separatorToken!297) (h!14779 l!5107)))))

(declare-fun b!867030 () Bool)

(assert (=> b!867030 (= e!570589 Nil!9377)))

(declare-fun b!867031 () Bool)

(assert (=> b!867031 (= e!570592 (++!2427 (list!3700 (charsOf!1018 (h!14779 lt!327031))) (printList!501 thiss!20117 (t!98844 lt!327031))))))

(declare-fun b!867032 () Bool)

(assert (=> b!867032 (= e!570592 Nil!9377)))

(assert (= (and d!272155 res!394895) b!867027))

(assert (= (and b!867027 (not res!394894)) b!867029))

(assert (= (and b!867029 c!140207) b!867025))

(assert (= (and b!867029 (not c!140207)) b!867030))

(assert (= (and b!867027 res!394897) b!867028))

(assert (= (and b!867028 (not res!394896)) b!867024))

(assert (= (and b!867024 c!140208) b!867031))

(assert (= (and b!867024 (not c!140208)) b!867032))

(assert (= (and d!272155 c!140209) b!867023))

(assert (= (and d!272155 (not c!140209)) b!867026))

(declare-fun m!1113943 () Bool)

(assert (=> b!867029 m!1113943))

(assert (=> b!867029 m!1113943))

(declare-fun m!1113945 () Bool)

(assert (=> b!867029 m!1113945))

(assert (=> b!867029 m!1113945))

(declare-fun m!1113947 () Bool)

(assert (=> b!867029 m!1113947))

(assert (=> b!867029 m!1113947))

(declare-fun m!1113949 () Bool)

(assert (=> b!867029 m!1113949))

(assert (=> b!867024 m!1113943))

(assert (=> b!867024 m!1113943))

(assert (=> b!867024 m!1113945))

(assert (=> b!867024 m!1113945))

(declare-fun m!1113951 () Bool)

(assert (=> b!867024 m!1113951))

(declare-fun m!1113953 () Bool)

(assert (=> b!867031 m!1113953))

(assert (=> b!867031 m!1113953))

(declare-fun m!1113955 () Bool)

(assert (=> b!867031 m!1113955))

(declare-fun m!1113957 () Bool)

(assert (=> b!867031 m!1113957))

(assert (=> b!867031 m!1113955))

(assert (=> b!867031 m!1113957))

(declare-fun m!1113959 () Bool)

(assert (=> b!867031 m!1113959))

(declare-fun m!1113961 () Bool)

(assert (=> b!867023 m!1113961))

(declare-fun m!1113963 () Bool)

(assert (=> b!867023 m!1113963))

(declare-fun m!1113965 () Bool)

(assert (=> b!867023 m!1113965))

(assert (=> b!867023 m!1113943))

(assert (=> b!867023 m!1113961))

(assert (=> b!867023 m!1113943))

(assert (=> b!867023 m!1113945))

(declare-fun m!1113967 () Bool)

(assert (=> b!867023 m!1113967))

(assert (=> b!867023 m!1113943))

(declare-fun m!1113969 () Bool)

(assert (=> b!867023 m!1113969))

(declare-fun m!1113971 () Bool)

(assert (=> b!867023 m!1113971))

(declare-fun m!1113973 () Bool)

(assert (=> b!867023 m!1113973))

(assert (=> b!867023 m!1113965))

(declare-fun m!1113975 () Bool)

(assert (=> b!867023 m!1113975))

(assert (=> b!867023 m!1113971))

(declare-fun m!1113977 () Bool)

(assert (=> b!867023 m!1113977))

(assert (=> b!867023 m!1113967))

(declare-fun m!1113979 () Bool)

(assert (=> b!867023 m!1113979))

(assert (=> b!867023 m!1113945))

(assert (=> b!867023 m!1113947))

(declare-fun m!1113981 () Bool)

(assert (=> b!867025 m!1113981))

(assert (=> b!867025 m!1113981))

(declare-fun m!1113983 () Bool)

(assert (=> b!867025 m!1113983))

(declare-fun m!1113985 () Bool)

(assert (=> b!867025 m!1113985))

(assert (=> b!867025 m!1113983))

(assert (=> b!867025 m!1113985))

(declare-fun m!1113987 () Bool)

(assert (=> b!867025 m!1113987))

(declare-fun m!1113989 () Bool)

(assert (=> d!272155 m!1113989))

(declare-fun m!1113991 () Bool)

(assert (=> d!272155 m!1113991))

(assert (=> b!866847 d!272155))

(declare-fun d!272157 () Bool)

(assert (=> d!272157 (rulesProduceEachTokenIndividuallyList!451 thiss!20117 rules!2621 (withSeparatorTokenList!91 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!327042 () Unit!13892)

(declare-fun choose!5095 (LexerInterface!1563 List!9395 List!9394 Token!3188) Unit!13892)

(assert (=> d!272157 (= lt!327042 (choose!5095 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(assert (=> d!272157 (not (isEmpty!5569 rules!2621))))

(assert (=> d!272157 (= (withSeparatorTokenListPreservesRulesProduceTokens!91 thiss!20117 rules!2621 l!5107 separatorToken!297) lt!327042)))

(declare-fun bs!232905 () Bool)

(assert (= bs!232905 d!272157))

(assert (=> bs!232905 m!1113765))

(assert (=> bs!232905 m!1113765))

(declare-fun m!1113993 () Bool)

(assert (=> bs!232905 m!1113993))

(declare-fun m!1113995 () Bool)

(assert (=> bs!232905 m!1113995))

(assert (=> bs!232905 m!1113781))

(assert (=> b!866847 d!272157))

(declare-fun d!272159 () Bool)

(assert (=> d!272159 (= (inv!11910 (tag!2023 (h!14780 rules!2621))) (= (mod (str.len (value!56888 (tag!2023 (h!14780 rules!2621)))) 2) 0))))

(assert (=> b!866848 d!272159))

(declare-fun d!272161 () Bool)

(declare-fun res!394904 () Bool)

(declare-fun e!570600 () Bool)

(assert (=> d!272161 (=> (not res!394904) (not e!570600))))

(declare-fun semiInverseModEq!699 (Int Int) Bool)

(assert (=> d!272161 (= res!394904 (semiInverseModEq!699 (toChars!2689 (transformation!1761 (h!14780 rules!2621))) (toValue!2830 (transformation!1761 (h!14780 rules!2621)))))))

(assert (=> d!272161 (= (inv!11913 (transformation!1761 (h!14780 rules!2621))) e!570600)))

(declare-fun b!867039 () Bool)

(declare-fun equivClasses!666 (Int Int) Bool)

(assert (=> b!867039 (= e!570600 (equivClasses!666 (toChars!2689 (transformation!1761 (h!14780 rules!2621))) (toValue!2830 (transformation!1761 (h!14780 rules!2621)))))))

(assert (= (and d!272161 res!394904) b!867039))

(declare-fun m!1113997 () Bool)

(assert (=> d!272161 m!1113997))

(declare-fun m!1113999 () Bool)

(assert (=> b!867039 m!1113999))

(assert (=> b!866848 d!272161))

(declare-fun d!272163 () Bool)

(declare-fun lt!327044 () Bool)

(declare-fun e!570601 () Bool)

(assert (=> d!272163 (= lt!327044 e!570601)))

(declare-fun res!394907 () Bool)

(assert (=> d!272163 (=> (not res!394907) (not e!570601))))

(assert (=> d!272163 (= res!394907 (= (list!3699 (_1!6065 (lex!647 thiss!20117 rules!2621 (print!584 thiss!20117 (singletonSeq!580 (h!14779 (t!98844 lt!326948))))))) (list!3699 (singletonSeq!580 (h!14779 (t!98844 lt!326948))))))))

(declare-fun e!570602 () Bool)

(assert (=> d!272163 (= lt!327044 e!570602)))

(declare-fun res!394906 () Bool)

(assert (=> d!272163 (=> (not res!394906) (not e!570602))))

(declare-fun lt!327043 () tuple2!10478)

(assert (=> d!272163 (= res!394906 (= (size!7810 (_1!6065 lt!327043)) 1))))

(assert (=> d!272163 (= lt!327043 (lex!647 thiss!20117 rules!2621 (print!584 thiss!20117 (singletonSeq!580 (h!14779 (t!98844 lt!326948))))))))

(assert (=> d!272163 (not (isEmpty!5569 rules!2621))))

(assert (=> d!272163 (= (rulesProduceIndividualToken!627 thiss!20117 rules!2621 (h!14779 (t!98844 lt!326948))) lt!327044)))

(declare-fun b!867040 () Bool)

(declare-fun res!394905 () Bool)

(assert (=> b!867040 (=> (not res!394905) (not e!570602))))

(assert (=> b!867040 (= res!394905 (= (apply!1972 (_1!6065 lt!327043) 0) (h!14779 (t!98844 lt!326948))))))

(declare-fun b!867041 () Bool)

(assert (=> b!867041 (= e!570602 (isEmpty!5572 (_2!6065 lt!327043)))))

(declare-fun b!867042 () Bool)

(assert (=> b!867042 (= e!570601 (isEmpty!5572 (_2!6065 (lex!647 thiss!20117 rules!2621 (print!584 thiss!20117 (singletonSeq!580 (h!14779 (t!98844 lt!326948))))))))))

(assert (= (and d!272163 res!394906) b!867040))

(assert (= (and b!867040 res!394905) b!867041))

(assert (= (and d!272163 res!394907) b!867042))

(declare-fun m!1114001 () Bool)

(assert (=> d!272163 m!1114001))

(declare-fun m!1114003 () Bool)

(assert (=> d!272163 m!1114003))

(declare-fun m!1114005 () Bool)

(assert (=> d!272163 m!1114005))

(assert (=> d!272163 m!1114001))

(declare-fun m!1114007 () Bool)

(assert (=> d!272163 m!1114007))

(declare-fun m!1114009 () Bool)

(assert (=> d!272163 m!1114009))

(assert (=> d!272163 m!1113781))

(assert (=> d!272163 m!1114001))

(assert (=> d!272163 m!1114007))

(declare-fun m!1114011 () Bool)

(assert (=> d!272163 m!1114011))

(declare-fun m!1114013 () Bool)

(assert (=> b!867040 m!1114013))

(declare-fun m!1114015 () Bool)

(assert (=> b!867041 m!1114015))

(assert (=> b!867042 m!1114001))

(assert (=> b!867042 m!1114001))

(assert (=> b!867042 m!1114007))

(assert (=> b!867042 m!1114007))

(assert (=> b!867042 m!1114011))

(declare-fun m!1114017 () Bool)

(assert (=> b!867042 m!1114017))

(assert (=> b!866838 d!272163))

(declare-fun d!272165 () Bool)

(declare-fun res!394912 () Bool)

(declare-fun e!570608 () Bool)

(assert (=> d!272165 (=> res!394912 e!570608)))

(assert (=> d!272165 (= res!394912 (or (not (is-Cons!9378 lt!326950)) (not (is-Cons!9378 (t!98844 lt!326950)))))))

(assert (=> d!272165 (= (tokensListTwoByTwoPredicateSeparableList!57 thiss!20117 lt!326950 rules!2621) e!570608)))

(declare-fun b!867047 () Bool)

(declare-fun e!570607 () Bool)

(assert (=> b!867047 (= e!570608 e!570607)))

(declare-fun res!394913 () Bool)

(assert (=> b!867047 (=> (not res!394913) (not e!570607))))

(assert (=> b!867047 (= res!394913 (separableTokensPredicate!81 thiss!20117 (h!14779 lt!326950) (h!14779 (t!98844 lt!326950)) rules!2621))))

(declare-fun lt!327063 () Unit!13892)

(declare-fun Unit!13897 () Unit!13892)

(assert (=> b!867047 (= lt!327063 Unit!13897)))

(declare-fun size!7811 (BalanceConc!6234) Int)

(assert (=> b!867047 (> (size!7811 (charsOf!1018 (h!14779 (t!98844 lt!326950)))) 0)))

(declare-fun lt!327062 () Unit!13892)

(declare-fun Unit!13898 () Unit!13892)

(assert (=> b!867047 (= lt!327062 Unit!13898)))

(assert (=> b!867047 (rulesProduceIndividualToken!627 thiss!20117 rules!2621 (h!14779 (t!98844 lt!326950)))))

(declare-fun lt!327059 () Unit!13892)

(declare-fun Unit!13899 () Unit!13892)

(assert (=> b!867047 (= lt!327059 Unit!13899)))

(assert (=> b!867047 (rulesProduceIndividualToken!627 thiss!20117 rules!2621 (h!14779 lt!326950))))

(declare-fun lt!327061 () Unit!13892)

(declare-fun lt!327065 () Unit!13892)

(assert (=> b!867047 (= lt!327061 lt!327065)))

(assert (=> b!867047 (rulesProduceIndividualToken!627 thiss!20117 rules!2621 (h!14779 (t!98844 lt!326950)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!239 (LexerInterface!1563 List!9395 List!9394 Token!3188) Unit!13892)

(assert (=> b!867047 (= lt!327065 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!239 thiss!20117 rules!2621 lt!326950 (h!14779 (t!98844 lt!326950))))))

(declare-fun lt!327064 () Unit!13892)

(declare-fun lt!327060 () Unit!13892)

(assert (=> b!867047 (= lt!327064 lt!327060)))

(assert (=> b!867047 (rulesProduceIndividualToken!627 thiss!20117 rules!2621 (h!14779 lt!326950))))

(assert (=> b!867047 (= lt!327060 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!239 thiss!20117 rules!2621 lt!326950 (h!14779 lt!326950)))))

(declare-fun b!867048 () Bool)

(assert (=> b!867048 (= e!570607 (tokensListTwoByTwoPredicateSeparableList!57 thiss!20117 (Cons!9378 (h!14779 (t!98844 lt!326950)) (t!98844 (t!98844 lt!326950))) rules!2621))))

(assert (= (and d!272165 (not res!394912)) b!867047))

(assert (= (and b!867047 res!394913) b!867048))

(declare-fun m!1114019 () Bool)

(assert (=> b!867047 m!1114019))

(declare-fun m!1114021 () Bool)

(assert (=> b!867047 m!1114021))

(declare-fun m!1114023 () Bool)

(assert (=> b!867047 m!1114023))

(declare-fun m!1114025 () Bool)

(assert (=> b!867047 m!1114025))

(assert (=> b!867047 m!1114019))

(declare-fun m!1114027 () Bool)

(assert (=> b!867047 m!1114027))

(declare-fun m!1114029 () Bool)

(assert (=> b!867047 m!1114029))

(declare-fun m!1114031 () Bool)

(assert (=> b!867047 m!1114031))

(declare-fun m!1114033 () Bool)

(assert (=> b!867048 m!1114033))

(assert (=> b!866849 d!272165))

(declare-fun lt!327073 () List!9394)

(declare-fun d!272167 () Bool)

(assert (=> d!272167 (= (printList!501 thiss!20117 lt!327073) (printWithSeparatorTokenList!59 thiss!20117 lt!326949 separatorToken!297))))

(declare-fun e!570612 () List!9394)

(assert (=> d!272167 (= lt!327073 e!570612)))

(declare-fun c!140212 () Bool)

(assert (=> d!272167 (= c!140212 (is-Cons!9378 lt!326949))))

(declare-fun e!570614 () Bool)

(assert (=> d!272167 e!570614))

(declare-fun res!394915 () Bool)

(assert (=> d!272167 (=> (not res!394915) (not e!570614))))

(assert (=> d!272167 (= res!394915 (isSeparator!1761 (rule!3184 separatorToken!297)))))

(assert (=> d!272167 (= (withSeparatorTokenList!91 thiss!20117 lt!326949 separatorToken!297) lt!327073)))

(declare-fun b!867049 () Bool)

(assert (=> b!867049 (= e!570612 ($colon$colon!114 ($colon$colon!114 (withSeparatorTokenList!91 thiss!20117 (t!98844 lt!326949) separatorToken!297) separatorToken!297) (h!14779 lt!326949)))))

(declare-fun lt!327069 () List!9393)

(assert (=> b!867049 (= lt!327069 (list!3700 (charsOf!1018 (h!14779 lt!326949))))))

(declare-fun lt!327072 () List!9393)

(assert (=> b!867049 (= lt!327072 (list!3700 (charsOf!1018 separatorToken!297)))))

(declare-fun lt!327066 () List!9393)

(assert (=> b!867049 (= lt!327066 (printList!501 thiss!20117 (withSeparatorTokenList!91 thiss!20117 (t!98844 lt!326949) separatorToken!297)))))

(declare-fun lt!327068 () Unit!13892)

(assert (=> b!867049 (= lt!327068 (lemmaConcatAssociativity!778 lt!327069 lt!327072 lt!327066))))

(assert (=> b!867049 (= (++!2427 (++!2427 lt!327069 lt!327072) lt!327066) (++!2427 lt!327069 (++!2427 lt!327072 lt!327066)))))

(declare-fun lt!327071 () Unit!13892)

(assert (=> b!867049 (= lt!327071 lt!327068)))

(declare-fun b!867050 () Bool)

(declare-fun e!570613 () List!9393)

(declare-fun e!570609 () Bool)

(assert (=> b!867050 (= e!570609 (= (printList!501 thiss!20117 ($colon$colon!114 (withSeparatorTokenList!91 thiss!20117 (t!98844 lt!326949) separatorToken!297) separatorToken!297)) e!570613))))

(declare-fun c!140211 () Bool)

(declare-fun lt!327067 () List!9394)

(assert (=> b!867050 (= c!140211 (is-Cons!9378 lt!327067))))

(assert (=> b!867050 (= lt!327067 ($colon$colon!114 (withSeparatorTokenList!91 thiss!20117 (t!98844 lt!326949) separatorToken!297) separatorToken!297))))

(declare-fun b!867051 () Bool)

(declare-fun e!570610 () List!9393)

(declare-fun lt!327070 () List!9394)

(assert (=> b!867051 (= e!570610 (++!2427 (list!3700 (charsOf!1018 (h!14779 lt!327070))) (printList!501 thiss!20117 (t!98844 lt!327070))))))

(declare-fun b!867052 () Bool)

(assert (=> b!867052 (= e!570612 Nil!9378)))

(declare-fun b!867053 () Bool)

(declare-fun res!394917 () Bool)

(assert (=> b!867053 (=> (not res!394917) (not e!570614))))

(declare-fun e!570611 () Bool)

(assert (=> b!867053 (= res!394917 e!570611)))

(declare-fun res!394914 () Bool)

(assert (=> b!867053 (=> res!394914 e!570611)))

(assert (=> b!867053 (= res!394914 (not (is-Cons!9378 lt!326949)))))

(declare-fun b!867054 () Bool)

(assert (=> b!867054 (= e!570614 e!570609)))

(declare-fun res!394916 () Bool)

(assert (=> b!867054 (=> res!394916 e!570609)))

(assert (=> b!867054 (= res!394916 (not (is-Cons!9378 lt!326949)))))

(declare-fun b!867055 () Bool)

(assert (=> b!867055 (= e!570611 (= (printList!501 thiss!20117 ($colon$colon!114 ($colon$colon!114 (withSeparatorTokenList!91 thiss!20117 (t!98844 lt!326949) separatorToken!297) separatorToken!297) (h!14779 lt!326949))) e!570610))))

(declare-fun c!140210 () Bool)

(assert (=> b!867055 (= c!140210 (is-Cons!9378 lt!327070))))

(assert (=> b!867055 (= lt!327070 ($colon$colon!114 ($colon$colon!114 (withSeparatorTokenList!91 thiss!20117 (t!98844 lt!326949) separatorToken!297) separatorToken!297) (h!14779 lt!326949)))))

(declare-fun b!867056 () Bool)

(assert (=> b!867056 (= e!570610 Nil!9377)))

(declare-fun b!867057 () Bool)

(assert (=> b!867057 (= e!570613 (++!2427 (list!3700 (charsOf!1018 (h!14779 lt!327067))) (printList!501 thiss!20117 (t!98844 lt!327067))))))

(declare-fun b!867058 () Bool)

(assert (=> b!867058 (= e!570613 Nil!9377)))

(assert (= (and d!272167 res!394915) b!867053))

(assert (= (and b!867053 (not res!394914)) b!867055))

(assert (= (and b!867055 c!140210) b!867051))

(assert (= (and b!867055 (not c!140210)) b!867056))

(assert (= (and b!867053 res!394917) b!867054))

(assert (= (and b!867054 (not res!394916)) b!867050))

(assert (= (and b!867050 c!140211) b!867057))

(assert (= (and b!867050 (not c!140211)) b!867058))

(assert (= (and d!272167 c!140212) b!867049))

(assert (= (and d!272167 (not c!140212)) b!867052))

(declare-fun m!1114035 () Bool)

(assert (=> b!867055 m!1114035))

(assert (=> b!867055 m!1114035))

(declare-fun m!1114037 () Bool)

(assert (=> b!867055 m!1114037))

(assert (=> b!867055 m!1114037))

(declare-fun m!1114039 () Bool)

(assert (=> b!867055 m!1114039))

(assert (=> b!867055 m!1114039))

(declare-fun m!1114041 () Bool)

(assert (=> b!867055 m!1114041))

(assert (=> b!867050 m!1114035))

(assert (=> b!867050 m!1114035))

(assert (=> b!867050 m!1114037))

(assert (=> b!867050 m!1114037))

(declare-fun m!1114043 () Bool)

(assert (=> b!867050 m!1114043))

(declare-fun m!1114045 () Bool)

(assert (=> b!867057 m!1114045))

(assert (=> b!867057 m!1114045))

(declare-fun m!1114047 () Bool)

(assert (=> b!867057 m!1114047))

(declare-fun m!1114049 () Bool)

(assert (=> b!867057 m!1114049))

(assert (=> b!867057 m!1114047))

(assert (=> b!867057 m!1114049))

(declare-fun m!1114051 () Bool)

(assert (=> b!867057 m!1114051))

(declare-fun m!1114053 () Bool)

(assert (=> b!867049 m!1114053))

(declare-fun m!1114055 () Bool)

(assert (=> b!867049 m!1114055))

(assert (=> b!867049 m!1113965))

(assert (=> b!867049 m!1114035))

(assert (=> b!867049 m!1114053))

(assert (=> b!867049 m!1114035))

(assert (=> b!867049 m!1114037))

(declare-fun m!1114057 () Bool)

(assert (=> b!867049 m!1114057))

(assert (=> b!867049 m!1114035))

(declare-fun m!1114059 () Bool)

(assert (=> b!867049 m!1114059))

(declare-fun m!1114061 () Bool)

(assert (=> b!867049 m!1114061))

(declare-fun m!1114063 () Bool)

(assert (=> b!867049 m!1114063))

(assert (=> b!867049 m!1113965))

(assert (=> b!867049 m!1113975))

(assert (=> b!867049 m!1114061))

(declare-fun m!1114065 () Bool)

(assert (=> b!867049 m!1114065))

(assert (=> b!867049 m!1114057))

(declare-fun m!1114067 () Bool)

(assert (=> b!867049 m!1114067))

(assert (=> b!867049 m!1114037))

(assert (=> b!867049 m!1114039))

(declare-fun m!1114069 () Bool)

(assert (=> b!867051 m!1114069))

(assert (=> b!867051 m!1114069))

(declare-fun m!1114071 () Bool)

(assert (=> b!867051 m!1114071))

(declare-fun m!1114073 () Bool)

(assert (=> b!867051 m!1114073))

(assert (=> b!867051 m!1114071))

(assert (=> b!867051 m!1114073))

(declare-fun m!1114075 () Bool)

(assert (=> b!867051 m!1114075))

(declare-fun m!1114077 () Bool)

(assert (=> d!272167 m!1114077))

(declare-fun m!1114079 () Bool)

(assert (=> d!272167 m!1114079))

(assert (=> b!866844 d!272167))

(declare-fun d!272169 () Bool)

(assert (=> d!272169 (= (tail!1069 l!5107) (t!98844 l!5107))))

(assert (=> b!866844 d!272169))

(declare-fun b!867069 () Bool)

(declare-fun res!394920 () Bool)

(declare-fun e!570623 () Bool)

(assert (=> b!867069 (=> res!394920 e!570623)))

(assert (=> b!867069 (= res!394920 (not (is-IntegerValue!5483 (value!56889 separatorToken!297))))))

(declare-fun e!570621 () Bool)

(assert (=> b!867069 (= e!570621 e!570623)))

(declare-fun b!867070 () Bool)

(declare-fun inv!17 (TokenValue!1827) Bool)

(assert (=> b!867070 (= e!570621 (inv!17 (value!56889 separatorToken!297)))))

(declare-fun b!867071 () Bool)

(declare-fun e!570622 () Bool)

(declare-fun inv!16 (TokenValue!1827) Bool)

(assert (=> b!867071 (= e!570622 (inv!16 (value!56889 separatorToken!297)))))

(declare-fun b!867072 () Bool)

(declare-fun inv!15 (TokenValue!1827) Bool)

(assert (=> b!867072 (= e!570623 (inv!15 (value!56889 separatorToken!297)))))

(declare-fun d!272171 () Bool)

(declare-fun c!140217 () Bool)

(assert (=> d!272171 (= c!140217 (is-IntegerValue!5481 (value!56889 separatorToken!297)))))

(assert (=> d!272171 (= (inv!21 (value!56889 separatorToken!297)) e!570622)))

(declare-fun b!867073 () Bool)

(assert (=> b!867073 (= e!570622 e!570621)))

(declare-fun c!140218 () Bool)

(assert (=> b!867073 (= c!140218 (is-IntegerValue!5482 (value!56889 separatorToken!297)))))

(assert (= (and d!272171 c!140217) b!867071))

(assert (= (and d!272171 (not c!140217)) b!867073))

(assert (= (and b!867073 c!140218) b!867070))

(assert (= (and b!867073 (not c!140218)) b!867069))

(assert (= (and b!867069 (not res!394920)) b!867072))

(declare-fun m!1114081 () Bool)

(assert (=> b!867070 m!1114081))

(declare-fun m!1114083 () Bool)

(assert (=> b!867071 m!1114083))

(declare-fun m!1114085 () Bool)

(assert (=> b!867072 m!1114085))

(assert (=> b!866855 d!272171))

(declare-fun b!867074 () Bool)

(declare-fun res!394921 () Bool)

(declare-fun e!570626 () Bool)

(assert (=> b!867074 (=> res!394921 e!570626)))

(assert (=> b!867074 (= res!394921 (not (is-IntegerValue!5483 (value!56889 (h!14779 l!5107)))))))

(declare-fun e!570624 () Bool)

(assert (=> b!867074 (= e!570624 e!570626)))

(declare-fun b!867075 () Bool)

(assert (=> b!867075 (= e!570624 (inv!17 (value!56889 (h!14779 l!5107))))))

(declare-fun b!867076 () Bool)

(declare-fun e!570625 () Bool)

(assert (=> b!867076 (= e!570625 (inv!16 (value!56889 (h!14779 l!5107))))))

(declare-fun b!867077 () Bool)

(assert (=> b!867077 (= e!570626 (inv!15 (value!56889 (h!14779 l!5107))))))

(declare-fun d!272173 () Bool)

(declare-fun c!140219 () Bool)

(assert (=> d!272173 (= c!140219 (is-IntegerValue!5481 (value!56889 (h!14779 l!5107))))))

(assert (=> d!272173 (= (inv!21 (value!56889 (h!14779 l!5107))) e!570625)))

(declare-fun b!867078 () Bool)

(assert (=> b!867078 (= e!570625 e!570624)))

(declare-fun c!140220 () Bool)

(assert (=> b!867078 (= c!140220 (is-IntegerValue!5482 (value!56889 (h!14779 l!5107))))))

(assert (= (and d!272173 c!140219) b!867076))

(assert (= (and d!272173 (not c!140219)) b!867078))

(assert (= (and b!867078 c!140220) b!867075))

(assert (= (and b!867078 (not c!140220)) b!867074))

(assert (= (and b!867074 (not res!394921)) b!867077))

(declare-fun m!1114087 () Bool)

(assert (=> b!867075 m!1114087))

(declare-fun m!1114089 () Bool)

(assert (=> b!867076 m!1114089))

(declare-fun m!1114091 () Bool)

(assert (=> b!867077 m!1114091))

(assert (=> b!866835 d!272173))

(declare-fun d!272175 () Bool)

(declare-fun lt!327075 () Bool)

(declare-fun e!570627 () Bool)

(assert (=> d!272175 (= lt!327075 e!570627)))

(declare-fun res!394924 () Bool)

(assert (=> d!272175 (=> (not res!394924) (not e!570627))))

(assert (=> d!272175 (= res!394924 (= (list!3699 (_1!6065 (lex!647 thiss!20117 rules!2621 (print!584 thiss!20117 (singletonSeq!580 (head!1507 (t!98844 (t!98844 lt!326948)))))))) (list!3699 (singletonSeq!580 (head!1507 (t!98844 (t!98844 lt!326948)))))))))

(declare-fun e!570628 () Bool)

(assert (=> d!272175 (= lt!327075 e!570628)))

(declare-fun res!394923 () Bool)

(assert (=> d!272175 (=> (not res!394923) (not e!570628))))

(declare-fun lt!327074 () tuple2!10478)

(assert (=> d!272175 (= res!394923 (= (size!7810 (_1!6065 lt!327074)) 1))))

(assert (=> d!272175 (= lt!327074 (lex!647 thiss!20117 rules!2621 (print!584 thiss!20117 (singletonSeq!580 (head!1507 (t!98844 (t!98844 lt!326948)))))))))

(assert (=> d!272175 (not (isEmpty!5569 rules!2621))))

(assert (=> d!272175 (= (rulesProduceIndividualToken!627 thiss!20117 rules!2621 (head!1507 (t!98844 (t!98844 lt!326948)))) lt!327075)))

(declare-fun b!867079 () Bool)

(declare-fun res!394922 () Bool)

(assert (=> b!867079 (=> (not res!394922) (not e!570628))))

(assert (=> b!867079 (= res!394922 (= (apply!1972 (_1!6065 lt!327074) 0) (head!1507 (t!98844 (t!98844 lt!326948)))))))

(declare-fun b!867080 () Bool)

(assert (=> b!867080 (= e!570628 (isEmpty!5572 (_2!6065 lt!327074)))))

(declare-fun b!867081 () Bool)

(assert (=> b!867081 (= e!570627 (isEmpty!5572 (_2!6065 (lex!647 thiss!20117 rules!2621 (print!584 thiss!20117 (singletonSeq!580 (head!1507 (t!98844 (t!98844 lt!326948)))))))))))

(assert (= (and d!272175 res!394923) b!867079))

(assert (= (and b!867079 res!394922) b!867080))

(assert (= (and d!272175 res!394924) b!867081))

(declare-fun m!1114093 () Bool)

(assert (=> d!272175 m!1114093))

(declare-fun m!1114095 () Bool)

(assert (=> d!272175 m!1114095))

(declare-fun m!1114097 () Bool)

(assert (=> d!272175 m!1114097))

(assert (=> d!272175 m!1114093))

(declare-fun m!1114099 () Bool)

(assert (=> d!272175 m!1114099))

(declare-fun m!1114101 () Bool)

(assert (=> d!272175 m!1114101))

(assert (=> d!272175 m!1113781))

(assert (=> d!272175 m!1113735))

(assert (=> d!272175 m!1114093))

(assert (=> d!272175 m!1114099))

(declare-fun m!1114103 () Bool)

(assert (=> d!272175 m!1114103))

(declare-fun m!1114105 () Bool)

(assert (=> b!867079 m!1114105))

(declare-fun m!1114107 () Bool)

(assert (=> b!867080 m!1114107))

(assert (=> b!867081 m!1113735))

(assert (=> b!867081 m!1114093))

(assert (=> b!867081 m!1114093))

(assert (=> b!867081 m!1114099))

(assert (=> b!867081 m!1114099))

(assert (=> b!867081 m!1114103))

(declare-fun m!1114109 () Bool)

(assert (=> b!867081 m!1114109))

(assert (=> b!866846 d!272175))

(declare-fun d!272177 () Bool)

(assert (=> d!272177 (= (head!1507 (t!98844 (t!98844 lt!326948))) (h!14779 (t!98844 (t!98844 lt!326948))))))

(assert (=> b!866846 d!272177))

(declare-fun d!272179 () Bool)

(declare-fun res!394929 () Bool)

(declare-fun e!570633 () Bool)

(assert (=> d!272179 (=> res!394929 e!570633)))

(assert (=> d!272179 (= res!394929 (not (is-Cons!9379 rules!2621)))))

(assert (=> d!272179 (= (sepAndNonSepRulesDisjointChars!561 rules!2621 rules!2621) e!570633)))

(declare-fun b!867086 () Bool)

(declare-fun e!570634 () Bool)

(assert (=> b!867086 (= e!570633 e!570634)))

(declare-fun res!394930 () Bool)

(assert (=> b!867086 (=> (not res!394930) (not e!570634))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!266 (Rule!3322 List!9395) Bool)

(assert (=> b!867086 (= res!394930 (ruleDisjointCharsFromAllFromOtherType!266 (h!14780 rules!2621) rules!2621))))

(declare-fun b!867087 () Bool)

(assert (=> b!867087 (= e!570634 (sepAndNonSepRulesDisjointChars!561 rules!2621 (t!98845 rules!2621)))))

(assert (= (and d!272179 (not res!394929)) b!867086))

(assert (= (and b!867086 res!394930) b!867087))

(declare-fun m!1114111 () Bool)

(assert (=> b!867086 m!1114111))

(declare-fun m!1114113 () Bool)

(assert (=> b!867087 m!1114113))

(assert (=> b!866852 d!272179))

(declare-fun d!272181 () Bool)

(assert (=> d!272181 (rulesProduceEachTokenIndividuallyList!451 thiss!20117 rules!2621 (withSeparatorTokenList!91 thiss!20117 lt!326949 separatorToken!297))))

(declare-fun lt!327076 () Unit!13892)

(assert (=> d!272181 (= lt!327076 (choose!5095 thiss!20117 rules!2621 lt!326949 separatorToken!297))))

(assert (=> d!272181 (not (isEmpty!5569 rules!2621))))

(assert (=> d!272181 (= (withSeparatorTokenListPreservesRulesProduceTokens!91 thiss!20117 rules!2621 lt!326949 separatorToken!297) lt!327076)))

(declare-fun bs!232906 () Bool)

(assert (= bs!232906 d!272181))

(assert (=> bs!232906 m!1113749))

(assert (=> bs!232906 m!1113749))

(declare-fun m!1114115 () Bool)

(assert (=> bs!232906 m!1114115))

(declare-fun m!1114117 () Bool)

(assert (=> bs!232906 m!1114117))

(assert (=> bs!232906 m!1113781))

(assert (=> b!866842 d!272181))

(declare-fun bs!232907 () Bool)

(declare-fun d!272183 () Bool)

(assert (= bs!232907 (and d!272183 b!866840)))

(declare-fun lambda!26024 () Int)

(assert (=> bs!232907 (not (= lambda!26024 lambda!26017))))

(declare-fun bs!232908 () Bool)

(assert (= bs!232908 (and d!272183 d!272133)))

(assert (=> bs!232908 (= lambda!26024 lambda!26023)))

(declare-fun b!867092 () Bool)

(declare-fun e!570639 () Bool)

(assert (=> b!867092 (= e!570639 true)))

(declare-fun b!867091 () Bool)

(declare-fun e!570638 () Bool)

(assert (=> b!867091 (= e!570638 e!570639)))

(declare-fun b!867090 () Bool)

(declare-fun e!570637 () Bool)

(assert (=> b!867090 (= e!570637 e!570638)))

(assert (=> d!272183 e!570637))

(assert (= b!867091 b!867092))

(assert (= b!867090 b!867091))

(assert (= (and d!272183 (is-Cons!9379 rules!2621)) b!867090))

(assert (=> b!867092 (< (dynLambda!4455 order!6125 (toValue!2830 (transformation!1761 (h!14780 rules!2621)))) (dynLambda!4456 order!6127 lambda!26024))))

(assert (=> b!867092 (< (dynLambda!4457 order!6129 (toChars!2689 (transformation!1761 (h!14780 rules!2621)))) (dynLambda!4456 order!6127 lambda!26024))))

(assert (=> d!272183 true))

(declare-fun lt!327077 () Bool)

(assert (=> d!272183 (= lt!327077 (forall!2228 lt!326950 lambda!26024))))

(declare-fun e!570636 () Bool)

(assert (=> d!272183 (= lt!327077 e!570636)))

(declare-fun res!394931 () Bool)

(assert (=> d!272183 (=> res!394931 e!570636)))

(assert (=> d!272183 (= res!394931 (not (is-Cons!9378 lt!326950)))))

(assert (=> d!272183 (not (isEmpty!5569 rules!2621))))

(assert (=> d!272183 (= (rulesProduceEachTokenIndividuallyList!451 thiss!20117 rules!2621 lt!326950) lt!327077)))

(declare-fun b!867088 () Bool)

(declare-fun e!570635 () Bool)

(assert (=> b!867088 (= e!570636 e!570635)))

(declare-fun res!394932 () Bool)

(assert (=> b!867088 (=> (not res!394932) (not e!570635))))

(assert (=> b!867088 (= res!394932 (rulesProduceIndividualToken!627 thiss!20117 rules!2621 (h!14779 lt!326950)))))

(declare-fun b!867089 () Bool)

(assert (=> b!867089 (= e!570635 (rulesProduceEachTokenIndividuallyList!451 thiss!20117 rules!2621 (t!98844 lt!326950)))))

(assert (= (and d!272183 (not res!394931)) b!867088))

(assert (= (and b!867088 res!394932) b!867089))

(declare-fun m!1114119 () Bool)

(assert (=> d!272183 m!1114119))

(assert (=> d!272183 m!1113781))

(assert (=> b!867088 m!1114023))

(declare-fun m!1114121 () Bool)

(assert (=> b!867089 m!1114121))

(assert (=> b!866842 d!272183))

(declare-fun d!272185 () Bool)

(declare-fun prefixMatchZipperSequence!50 (Regex!2194 BalanceConc!6234) Bool)

(declare-fun rulesRegex!35 (LexerInterface!1563 List!9395) Regex!2194)

(declare-fun ++!2428 (BalanceConc!6234 BalanceConc!6234) BalanceConc!6234)

(declare-fun singletonSeq!581 (C!4958) BalanceConc!6234)

(declare-fun apply!1973 (BalanceConc!6234 Int) C!4958)

(assert (=> d!272185 (= (separableTokensPredicate!81 thiss!20117 (h!14779 lt!326948) (h!14779 (t!98844 lt!326948)) rules!2621) (not (prefixMatchZipperSequence!50 (rulesRegex!35 thiss!20117 rules!2621) (++!2428 (charsOf!1018 (h!14779 lt!326948)) (singletonSeq!581 (apply!1973 (charsOf!1018 (h!14779 (t!98844 lt!326948))) 0))))))))

(declare-fun bs!232909 () Bool)

(assert (= bs!232909 d!272185))

(declare-fun m!1114123 () Bool)

(assert (=> bs!232909 m!1114123))

(declare-fun m!1114125 () Bool)

(assert (=> bs!232909 m!1114125))

(declare-fun m!1114127 () Bool)

(assert (=> bs!232909 m!1114127))

(declare-fun m!1114129 () Bool)

(assert (=> bs!232909 m!1114129))

(assert (=> bs!232909 m!1114127))

(declare-fun m!1114131 () Bool)

(assert (=> bs!232909 m!1114131))

(declare-fun m!1114133 () Bool)

(assert (=> bs!232909 m!1114133))

(assert (=> bs!232909 m!1114123))

(assert (=> bs!232909 m!1114129))

(assert (=> bs!232909 m!1114133))

(declare-fun m!1114135 () Bool)

(assert (=> bs!232909 m!1114135))

(assert (=> bs!232909 m!1114135))

(assert (=> bs!232909 m!1114125))

(assert (=> b!866842 d!272185))

(declare-fun b!867189 () Bool)

(declare-fun res!394981 () Bool)

(declare-fun e!570699 () Bool)

(assert (=> b!867189 (=> (not res!394981) (not e!570699))))

(assert (=> b!867189 (= res!394981 (rulesProduceIndividualToken!627 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun b!867190 () Bool)

(declare-fun res!394982 () Bool)

(assert (=> b!867190 (=> (not res!394982) (not e!570699))))

(assert (=> b!867190 (= res!394982 (rulesProduceEachTokenIndividuallyList!451 thiss!20117 rules!2621 lt!326949))))

(declare-fun d!272187 () Bool)

(assert (=> d!272187 e!570699))

(declare-fun res!394979 () Bool)

(assert (=> d!272187 (=> (not res!394979) (not e!570699))))

(assert (=> d!272187 (= res!394979 (is-Lexer!1561 thiss!20117))))

(declare-fun lt!327122 () Unit!13892)

(declare-fun choose!5096 (LexerInterface!1563 List!9395 List!9394 Token!3188) Unit!13892)

(assert (=> d!272187 (= lt!327122 (choose!5096 thiss!20117 rules!2621 lt!326949 separatorToken!297))))

(assert (=> d!272187 (not (isEmpty!5569 rules!2621))))

(assert (=> d!272187 (= (printWithSeparatorTokenImpliesSeparableTokensList!35 thiss!20117 rules!2621 lt!326949 separatorToken!297) lt!327122)))

(declare-fun b!867191 () Bool)

(declare-fun res!394980 () Bool)

(assert (=> b!867191 (=> (not res!394980) (not e!570699))))

(assert (=> b!867191 (= res!394980 (isSeparator!1761 (rule!3184 separatorToken!297)))))

(declare-fun b!867192 () Bool)

(assert (=> b!867192 (= e!570699 (tokensListTwoByTwoPredicateSeparableList!57 thiss!20117 (withSeparatorTokenList!91 thiss!20117 lt!326949 separatorToken!297) rules!2621))))

(declare-fun lt!327120 () Unit!13892)

(declare-fun lt!327121 () Unit!13892)

(assert (=> b!867192 (= lt!327120 lt!327121)))

(assert (=> b!867192 (rulesProduceEachTokenIndividuallyList!451 thiss!20117 rules!2621 (withSeparatorTokenList!91 thiss!20117 lt!326949 separatorToken!297))))

(assert (=> b!867192 (= lt!327121 (withSeparatorTokenListPreservesRulesProduceTokens!91 thiss!20117 rules!2621 lt!326949 separatorToken!297))))

(declare-fun b!867193 () Bool)

(declare-fun res!394983 () Bool)

(assert (=> b!867193 (=> (not res!394983) (not e!570699))))

(assert (=> b!867193 (= res!394983 (rulesInvariant!1439 thiss!20117 rules!2621))))

(assert (= (and d!272187 res!394979) b!867193))

(assert (= (and b!867193 res!394983) b!867190))

(assert (= (and b!867190 res!394982) b!867189))

(assert (= (and b!867189 res!394981) b!867191))

(assert (= (and b!867191 res!394980) b!867192))

(assert (=> b!867192 m!1113749))

(assert (=> b!867192 m!1113749))

(declare-fun m!1114301 () Bool)

(assert (=> b!867192 m!1114301))

(assert (=> b!867192 m!1113749))

(assert (=> b!867192 m!1114115))

(assert (=> b!867192 m!1113729))

(assert (=> b!867193 m!1113743))

(declare-fun m!1114303 () Bool)

(assert (=> d!272187 m!1114303))

(assert (=> d!272187 m!1113781))

(assert (=> b!867189 m!1113761))

(declare-fun m!1114305 () Bool)

(assert (=> b!867190 m!1114305))

(assert (=> b!866842 d!272187))

(declare-fun d!272217 () Bool)

(assert (=> d!272217 (= (isEmpty!5568 (t!98844 (t!98844 lt!326948))) (is-Nil!9378 (t!98844 (t!98844 lt!326948))))))

(assert (=> b!866842 d!272217))

(declare-fun d!272219 () Bool)

(assert (=> d!272219 (separableTokensPredicate!81 thiss!20117 (h!14779 lt!326948) (h!14779 (t!98844 lt!326948)) rules!2621)))

(declare-fun lt!327125 () Unit!13892)

(declare-fun choose!5097 (LexerInterface!1563 Token!3188 Token!3188 List!9395) Unit!13892)

(assert (=> d!272219 (= lt!327125 (choose!5097 thiss!20117 (h!14779 lt!326948) (h!14779 (t!98844 lt!326948)) rules!2621))))

(assert (=> d!272219 (not (isEmpty!5569 rules!2621))))

(assert (=> d!272219 (= (lemmaTokensOfDifferentKindsAreSeparable!59 thiss!20117 (h!14779 lt!326948) (h!14779 (t!98844 lt!326948)) rules!2621) lt!327125)))

(declare-fun bs!232913 () Bool)

(assert (= bs!232913 d!272219))

(assert (=> bs!232913 m!1113723))

(declare-fun m!1114307 () Bool)

(assert (=> bs!232913 m!1114307))

(assert (=> bs!232913 m!1113781))

(assert (=> b!866842 d!272219))

(declare-fun d!272221 () Bool)

(assert (=> d!272221 (= (inv!11910 (tag!2023 (rule!3184 (h!14779 l!5107)))) (= (mod (str.len (value!56888 (tag!2023 (rule!3184 (h!14779 l!5107))))) 2) 0))))

(assert (=> b!866832 d!272221))

(declare-fun d!272223 () Bool)

(declare-fun res!394984 () Bool)

(declare-fun e!570700 () Bool)

(assert (=> d!272223 (=> (not res!394984) (not e!570700))))

(assert (=> d!272223 (= res!394984 (semiInverseModEq!699 (toChars!2689 (transformation!1761 (rule!3184 (h!14779 l!5107)))) (toValue!2830 (transformation!1761 (rule!3184 (h!14779 l!5107))))))))

(assert (=> d!272223 (= (inv!11913 (transformation!1761 (rule!3184 (h!14779 l!5107)))) e!570700)))

(declare-fun b!867194 () Bool)

(assert (=> b!867194 (= e!570700 (equivClasses!666 (toChars!2689 (transformation!1761 (rule!3184 (h!14779 l!5107)))) (toValue!2830 (transformation!1761 (rule!3184 (h!14779 l!5107))))))))

(assert (= (and d!272223 res!394984) b!867194))

(declare-fun m!1114309 () Bool)

(assert (=> d!272223 m!1114309))

(declare-fun m!1114311 () Bool)

(assert (=> b!867194 m!1114311))

(assert (=> b!866832 d!272223))

(declare-fun d!272225 () Bool)

(declare-fun res!394989 () Bool)

(declare-fun e!570703 () Bool)

(assert (=> d!272225 (=> (not res!394989) (not e!570703))))

(declare-fun isEmpty!5573 (List!9393) Bool)

(assert (=> d!272225 (= res!394989 (not (isEmpty!5573 (originalCharacters!2317 separatorToken!297))))))

(assert (=> d!272225 (= (inv!11914 separatorToken!297) e!570703)))

(declare-fun b!867199 () Bool)

(declare-fun res!394990 () Bool)

(assert (=> b!867199 (=> (not res!394990) (not e!570703))))

(declare-fun dynLambda!4458 (Int TokenValue!1827) BalanceConc!6234)

(assert (=> b!867199 (= res!394990 (= (originalCharacters!2317 separatorToken!297) (list!3700 (dynLambda!4458 (toChars!2689 (transformation!1761 (rule!3184 separatorToken!297))) (value!56889 separatorToken!297)))))))

(declare-fun b!867200 () Bool)

(declare-fun size!7813 (List!9393) Int)

(assert (=> b!867200 (= e!570703 (= (size!7808 separatorToken!297) (size!7813 (originalCharacters!2317 separatorToken!297))))))

(assert (= (and d!272225 res!394989) b!867199))

(assert (= (and b!867199 res!394990) b!867200))

(declare-fun b_lambda!29501 () Bool)

(assert (=> (not b_lambda!29501) (not b!867199)))

(declare-fun t!98869 () Bool)

(declare-fun tb!62665 () Bool)

(assert (=> (and b!866856 (= (toChars!2689 (transformation!1761 (rule!3184 separatorToken!297))) (toChars!2689 (transformation!1761 (rule!3184 separatorToken!297)))) t!98869) tb!62665))

(declare-fun b!867205 () Bool)

(declare-fun e!570706 () Bool)

(declare-fun tp!274249 () Bool)

(declare-fun inv!11917 (Conc!3110) Bool)

(assert (=> b!867205 (= e!570706 (and (inv!11917 (c!140192 (dynLambda!4458 (toChars!2689 (transformation!1761 (rule!3184 separatorToken!297))) (value!56889 separatorToken!297)))) tp!274249))))

(declare-fun result!72460 () Bool)

(declare-fun inv!11918 (BalanceConc!6234) Bool)

(assert (=> tb!62665 (= result!72460 (and (inv!11918 (dynLambda!4458 (toChars!2689 (transformation!1761 (rule!3184 separatorToken!297))) (value!56889 separatorToken!297))) e!570706))))

(assert (= tb!62665 b!867205))

(declare-fun m!1114313 () Bool)

(assert (=> b!867205 m!1114313))

(declare-fun m!1114315 () Bool)

(assert (=> tb!62665 m!1114315))

(assert (=> b!867199 t!98869))

(declare-fun b_and!77773 () Bool)

(assert (= b_and!77739 (and (=> t!98869 result!72460) b_and!77773)))

(declare-fun t!98871 () Bool)

(declare-fun tb!62667 () Bool)

(assert (=> (and b!866834 (= (toChars!2689 (transformation!1761 (rule!3184 (h!14779 l!5107)))) (toChars!2689 (transformation!1761 (rule!3184 separatorToken!297)))) t!98871) tb!62667))

(declare-fun result!72464 () Bool)

(assert (= result!72464 result!72460))

(assert (=> b!867199 t!98871))

(declare-fun b_and!77775 () Bool)

(assert (= b_and!77743 (and (=> t!98871 result!72464) b_and!77775)))

(declare-fun t!98873 () Bool)

(declare-fun tb!62669 () Bool)

(assert (=> (and b!866854 (= (toChars!2689 (transformation!1761 (h!14780 rules!2621))) (toChars!2689 (transformation!1761 (rule!3184 separatorToken!297)))) t!98873) tb!62669))

(declare-fun result!72466 () Bool)

(assert (= result!72466 result!72460))

(assert (=> b!867199 t!98873))

(declare-fun b_and!77777 () Bool)

(assert (= b_and!77747 (and (=> t!98873 result!72466) b_and!77777)))

(declare-fun m!1114317 () Bool)

(assert (=> d!272225 m!1114317))

(declare-fun m!1114319 () Bool)

(assert (=> b!867199 m!1114319))

(assert (=> b!867199 m!1114319))

(declare-fun m!1114321 () Bool)

(assert (=> b!867199 m!1114321))

(declare-fun m!1114323 () Bool)

(assert (=> b!867200 m!1114323))

(assert (=> start!78228 d!272225))

(declare-fun d!272227 () Bool)

(assert (=> d!272227 (= (head!1507 l!5107) (h!14779 l!5107))))

(assert (=> b!866843 d!272227))

(declare-fun d!272229 () Bool)

(declare-fun res!394991 () Bool)

(declare-fun e!570707 () Bool)

(assert (=> d!272229 (=> (not res!394991) (not e!570707))))

(assert (=> d!272229 (= res!394991 (not (isEmpty!5573 (originalCharacters!2317 (h!14779 l!5107)))))))

(assert (=> d!272229 (= (inv!11914 (h!14779 l!5107)) e!570707)))

(declare-fun b!867206 () Bool)

(declare-fun res!394992 () Bool)

(assert (=> b!867206 (=> (not res!394992) (not e!570707))))

(assert (=> b!867206 (= res!394992 (= (originalCharacters!2317 (h!14779 l!5107)) (list!3700 (dynLambda!4458 (toChars!2689 (transformation!1761 (rule!3184 (h!14779 l!5107)))) (value!56889 (h!14779 l!5107))))))))

(declare-fun b!867207 () Bool)

(assert (=> b!867207 (= e!570707 (= (size!7808 (h!14779 l!5107)) (size!7813 (originalCharacters!2317 (h!14779 l!5107)))))))

(assert (= (and d!272229 res!394991) b!867206))

(assert (= (and b!867206 res!394992) b!867207))

(declare-fun b_lambda!29503 () Bool)

(assert (=> (not b_lambda!29503) (not b!867206)))

(declare-fun t!98875 () Bool)

(declare-fun tb!62671 () Bool)

(assert (=> (and b!866856 (= (toChars!2689 (transformation!1761 (rule!3184 separatorToken!297))) (toChars!2689 (transformation!1761 (rule!3184 (h!14779 l!5107))))) t!98875) tb!62671))

(declare-fun b!867208 () Bool)

(declare-fun e!570708 () Bool)

(declare-fun tp!274250 () Bool)

(assert (=> b!867208 (= e!570708 (and (inv!11917 (c!140192 (dynLambda!4458 (toChars!2689 (transformation!1761 (rule!3184 (h!14779 l!5107)))) (value!56889 (h!14779 l!5107))))) tp!274250))))

(declare-fun result!72468 () Bool)

(assert (=> tb!62671 (= result!72468 (and (inv!11918 (dynLambda!4458 (toChars!2689 (transformation!1761 (rule!3184 (h!14779 l!5107)))) (value!56889 (h!14779 l!5107)))) e!570708))))

(assert (= tb!62671 b!867208))

(declare-fun m!1114325 () Bool)

(assert (=> b!867208 m!1114325))

(declare-fun m!1114327 () Bool)

(assert (=> tb!62671 m!1114327))

(assert (=> b!867206 t!98875))

(declare-fun b_and!77779 () Bool)

(assert (= b_and!77773 (and (=> t!98875 result!72468) b_and!77779)))

(declare-fun t!98877 () Bool)

(declare-fun tb!62673 () Bool)

(assert (=> (and b!866834 (= (toChars!2689 (transformation!1761 (rule!3184 (h!14779 l!5107)))) (toChars!2689 (transformation!1761 (rule!3184 (h!14779 l!5107))))) t!98877) tb!62673))

(declare-fun result!72470 () Bool)

(assert (= result!72470 result!72468))

(assert (=> b!867206 t!98877))

(declare-fun b_and!77781 () Bool)

(assert (= b_and!77775 (and (=> t!98877 result!72470) b_and!77781)))

(declare-fun tb!62675 () Bool)

(declare-fun t!98879 () Bool)

(assert (=> (and b!866854 (= (toChars!2689 (transformation!1761 (h!14780 rules!2621))) (toChars!2689 (transformation!1761 (rule!3184 (h!14779 l!5107))))) t!98879) tb!62675))

(declare-fun result!72472 () Bool)

(assert (= result!72472 result!72468))

(assert (=> b!867206 t!98879))

(declare-fun b_and!77783 () Bool)

(assert (= b_and!77777 (and (=> t!98879 result!72472) b_and!77783)))

(declare-fun m!1114329 () Bool)

(assert (=> d!272229 m!1114329))

(declare-fun m!1114331 () Bool)

(assert (=> b!867206 m!1114331))

(assert (=> b!867206 m!1114331))

(declare-fun m!1114333 () Bool)

(assert (=> b!867206 m!1114333))

(declare-fun m!1114335 () Bool)

(assert (=> b!867207 m!1114335))

(assert (=> b!866833 d!272229))

(declare-fun d!272231 () Bool)

(declare-fun res!394995 () Bool)

(declare-fun e!570711 () Bool)

(assert (=> d!272231 (=> (not res!394995) (not e!570711))))

(declare-fun rulesValid!630 (LexerInterface!1563 List!9395) Bool)

(assert (=> d!272231 (= res!394995 (rulesValid!630 thiss!20117 rules!2621))))

(assert (=> d!272231 (= (rulesInvariant!1439 thiss!20117 rules!2621) e!570711)))

(declare-fun b!867211 () Bool)

(declare-datatypes ((List!9400 0))(
  ( (Nil!9384) (Cons!9384 (h!14785 String!11035) (t!98896 List!9400)) )
))
(declare-fun noDuplicateTag!630 (LexerInterface!1563 List!9395 List!9400) Bool)

(assert (=> b!867211 (= e!570711 (noDuplicateTag!630 thiss!20117 rules!2621 Nil!9384))))

(assert (= (and d!272231 res!394995) b!867211))

(declare-fun m!1114337 () Bool)

(assert (=> d!272231 m!1114337))

(declare-fun m!1114339 () Bool)

(assert (=> b!867211 m!1114339))

(assert (=> b!866839 d!272231))

(declare-fun d!272233 () Bool)

(assert (=> d!272233 (= (inv!11910 (tag!2023 (rule!3184 separatorToken!297))) (= (mod (str.len (value!56888 (tag!2023 (rule!3184 separatorToken!297)))) 2) 0))))

(assert (=> b!866850 d!272233))

(declare-fun d!272235 () Bool)

(declare-fun res!394996 () Bool)

(declare-fun e!570712 () Bool)

(assert (=> d!272235 (=> (not res!394996) (not e!570712))))

(assert (=> d!272235 (= res!394996 (semiInverseModEq!699 (toChars!2689 (transformation!1761 (rule!3184 separatorToken!297))) (toValue!2830 (transformation!1761 (rule!3184 separatorToken!297)))))))

(assert (=> d!272235 (= (inv!11913 (transformation!1761 (rule!3184 separatorToken!297))) e!570712)))

(declare-fun b!867212 () Bool)

(assert (=> b!867212 (= e!570712 (equivClasses!666 (toChars!2689 (transformation!1761 (rule!3184 separatorToken!297))) (toValue!2830 (transformation!1761 (rule!3184 separatorToken!297)))))))

(assert (= (and d!272235 res!394996) b!867212))

(declare-fun m!1114341 () Bool)

(assert (=> d!272235 m!1114341))

(declare-fun m!1114343 () Bool)

(assert (=> b!867212 m!1114343))

(assert (=> b!866850 d!272235))

(declare-fun d!272237 () Bool)

(declare-fun res!395001 () Bool)

(declare-fun e!570717 () Bool)

(assert (=> d!272237 (=> res!395001 e!570717)))

(assert (=> d!272237 (= res!395001 (is-Nil!9378 l!5107))))

(assert (=> d!272237 (= (forall!2228 l!5107 lambda!26017) e!570717)))

(declare-fun b!867217 () Bool)

(declare-fun e!570718 () Bool)

(assert (=> b!867217 (= e!570717 e!570718)))

(declare-fun res!395002 () Bool)

(assert (=> b!867217 (=> (not res!395002) (not e!570718))))

(declare-fun dynLambda!4459 (Int Token!3188) Bool)

(assert (=> b!867217 (= res!395002 (dynLambda!4459 lambda!26017 (h!14779 l!5107)))))

(declare-fun b!867218 () Bool)

(assert (=> b!867218 (= e!570718 (forall!2228 (t!98844 l!5107) lambda!26017))))

(assert (= (and d!272237 (not res!395001)) b!867217))

(assert (= (and b!867217 res!395002) b!867218))

(declare-fun b_lambda!29505 () Bool)

(assert (=> (not b_lambda!29505) (not b!867217)))

(declare-fun m!1114345 () Bool)

(assert (=> b!867217 m!1114345))

(declare-fun m!1114347 () Bool)

(assert (=> b!867218 m!1114347))

(assert (=> b!866840 d!272237))

(declare-fun d!272239 () Bool)

(assert (=> d!272239 (= (isEmpty!5569 rules!2621) (is-Nil!9379 rules!2621))))

(assert (=> b!866851 d!272239))

(declare-fun bs!232914 () Bool)

(declare-fun d!272241 () Bool)

(assert (= bs!232914 (and d!272241 b!866840)))

(declare-fun lambda!26029 () Int)

(assert (=> bs!232914 (not (= lambda!26029 lambda!26017))))

(declare-fun bs!232915 () Bool)

(assert (= bs!232915 (and d!272241 d!272133)))

(assert (=> bs!232915 (= lambda!26029 lambda!26023)))

(declare-fun bs!232916 () Bool)

(assert (= bs!232916 (and d!272241 d!272183)))

(assert (=> bs!232916 (= lambda!26029 lambda!26024)))

(declare-fun b!867223 () Bool)

(declare-fun e!570723 () Bool)

(assert (=> b!867223 (= e!570723 true)))

(declare-fun b!867222 () Bool)

(declare-fun e!570722 () Bool)

(assert (=> b!867222 (= e!570722 e!570723)))

(declare-fun b!867221 () Bool)

(declare-fun e!570721 () Bool)

(assert (=> b!867221 (= e!570721 e!570722)))

(assert (=> d!272241 e!570721))

(assert (= b!867222 b!867223))

(assert (= b!867221 b!867222))

(assert (= (and d!272241 (is-Cons!9379 rules!2621)) b!867221))

(assert (=> b!867223 (< (dynLambda!4455 order!6125 (toValue!2830 (transformation!1761 (h!14780 rules!2621)))) (dynLambda!4456 order!6127 lambda!26029))))

(assert (=> b!867223 (< (dynLambda!4457 order!6129 (toChars!2689 (transformation!1761 (h!14780 rules!2621)))) (dynLambda!4456 order!6127 lambda!26029))))

(assert (=> d!272241 true))

(declare-fun lt!327126 () Bool)

(assert (=> d!272241 (= lt!327126 (forall!2228 l!5107 lambda!26029))))

(declare-fun e!570720 () Bool)

(assert (=> d!272241 (= lt!327126 e!570720)))

(declare-fun res!395003 () Bool)

(assert (=> d!272241 (=> res!395003 e!570720)))

(assert (=> d!272241 (= res!395003 (not (is-Cons!9378 l!5107)))))

(assert (=> d!272241 (not (isEmpty!5569 rules!2621))))

(assert (=> d!272241 (= (rulesProduceEachTokenIndividuallyList!451 thiss!20117 rules!2621 l!5107) lt!327126)))

(declare-fun b!867219 () Bool)

(declare-fun e!570719 () Bool)

(assert (=> b!867219 (= e!570720 e!570719)))

(declare-fun res!395004 () Bool)

(assert (=> b!867219 (=> (not res!395004) (not e!570719))))

(assert (=> b!867219 (= res!395004 (rulesProduceIndividualToken!627 thiss!20117 rules!2621 (h!14779 l!5107)))))

(declare-fun b!867220 () Bool)

(assert (=> b!867220 (= e!570719 (rulesProduceEachTokenIndividuallyList!451 thiss!20117 rules!2621 (t!98844 l!5107)))))

(assert (= (and d!272241 (not res!395003)) b!867219))

(assert (= (and b!867219 res!395004) b!867220))

(declare-fun m!1114349 () Bool)

(assert (=> d!272241 m!1114349))

(assert (=> d!272241 m!1113781))

(declare-fun m!1114351 () Bool)

(assert (=> b!867219 m!1114351))

(declare-fun m!1114353 () Bool)

(assert (=> b!867220 m!1114353))

(assert (=> b!866841 d!272241))

(declare-fun e!570726 () Bool)

(assert (=> b!866848 (= tp!274197 e!570726)))

(declare-fun b!867237 () Bool)

(declare-fun tp!274262 () Bool)

(declare-fun tp!274264 () Bool)

(assert (=> b!867237 (= e!570726 (and tp!274262 tp!274264))))

(declare-fun b!867236 () Bool)

(declare-fun tp!274263 () Bool)

(assert (=> b!867236 (= e!570726 tp!274263)))

(declare-fun b!867235 () Bool)

(declare-fun tp!274261 () Bool)

(declare-fun tp!274265 () Bool)

(assert (=> b!867235 (= e!570726 (and tp!274261 tp!274265))))

(declare-fun b!867234 () Bool)

(declare-fun tp_is_empty!4031 () Bool)

(assert (=> b!867234 (= e!570726 tp_is_empty!4031)))

(assert (= (and b!866848 (is-ElementMatch!2194 (regex!1761 (h!14780 rules!2621)))) b!867234))

(assert (= (and b!866848 (is-Concat!4022 (regex!1761 (h!14780 rules!2621)))) b!867235))

(assert (= (and b!866848 (is-Star!2194 (regex!1761 (h!14780 rules!2621)))) b!867236))

(assert (= (and b!866848 (is-Union!2194 (regex!1761 (h!14780 rules!2621)))) b!867237))

(declare-fun b!867242 () Bool)

(declare-fun e!570729 () Bool)

(declare-fun tp!274268 () Bool)

(assert (=> b!867242 (= e!570729 (and tp_is_empty!4031 tp!274268))))

(assert (=> b!866855 (= tp!274191 e!570729)))

(assert (= (and b!866855 (is-Cons!9377 (originalCharacters!2317 separatorToken!297))) b!867242))

(declare-fun b!867253 () Bool)

(declare-fun b_free!26581 () Bool)

(declare-fun b_next!26645 () Bool)

(assert (=> b!867253 (= b_free!26581 (not b_next!26645))))

(declare-fun tp!274278 () Bool)

(declare-fun b_and!77785 () Bool)

(assert (=> b!867253 (= tp!274278 b_and!77785)))

(declare-fun b_free!26583 () Bool)

(declare-fun b_next!26647 () Bool)

(assert (=> b!867253 (= b_free!26583 (not b_next!26647))))

(declare-fun tb!62677 () Bool)

(declare-fun t!98881 () Bool)

(assert (=> (and b!867253 (= (toChars!2689 (transformation!1761 (h!14780 (t!98845 rules!2621)))) (toChars!2689 (transformation!1761 (rule!3184 separatorToken!297)))) t!98881) tb!62677))

(declare-fun result!72480 () Bool)

(assert (= result!72480 result!72460))

(assert (=> b!867199 t!98881))

(declare-fun tb!62679 () Bool)

(declare-fun t!98883 () Bool)

(assert (=> (and b!867253 (= (toChars!2689 (transformation!1761 (h!14780 (t!98845 rules!2621)))) (toChars!2689 (transformation!1761 (rule!3184 (h!14779 l!5107))))) t!98883) tb!62679))

(declare-fun result!72482 () Bool)

(assert (= result!72482 result!72468))

(assert (=> b!867206 t!98883))

(declare-fun tp!274277 () Bool)

(declare-fun b_and!77787 () Bool)

(assert (=> b!867253 (= tp!274277 (and (=> t!98881 result!72480) (=> t!98883 result!72482) b_and!77787))))

(declare-fun e!570741 () Bool)

(assert (=> b!867253 (= e!570741 (and tp!274278 tp!274277))))

(declare-fun tp!274280 () Bool)

(declare-fun e!570740 () Bool)

(declare-fun b!867252 () Bool)

(assert (=> b!867252 (= e!570740 (and tp!274280 (inv!11910 (tag!2023 (h!14780 (t!98845 rules!2621)))) (inv!11913 (transformation!1761 (h!14780 (t!98845 rules!2621)))) e!570741))))

(declare-fun b!867251 () Bool)

(declare-fun e!570738 () Bool)

(declare-fun tp!274279 () Bool)

(assert (=> b!867251 (= e!570738 (and e!570740 tp!274279))))

(assert (=> b!866845 (= tp!274199 e!570738)))

(assert (= b!867252 b!867253))

(assert (= b!867251 b!867252))

(assert (= (and b!866845 (is-Cons!9379 (t!98845 rules!2621))) b!867251))

(declare-fun m!1114355 () Bool)

(assert (=> b!867252 m!1114355))

(declare-fun m!1114357 () Bool)

(assert (=> b!867252 m!1114357))

(declare-fun b!867254 () Bool)

(declare-fun e!570742 () Bool)

(declare-fun tp!274281 () Bool)

(assert (=> b!867254 (= e!570742 (and tp_is_empty!4031 tp!274281))))

(assert (=> b!866835 (= tp!274192 e!570742)))

(assert (= (and b!866835 (is-Cons!9377 (originalCharacters!2317 (h!14779 l!5107)))) b!867254))

(declare-fun e!570743 () Bool)

(assert (=> b!866832 (= tp!274198 e!570743)))

(declare-fun b!867258 () Bool)

(declare-fun tp!274283 () Bool)

(declare-fun tp!274285 () Bool)

(assert (=> b!867258 (= e!570743 (and tp!274283 tp!274285))))

(declare-fun b!867257 () Bool)

(declare-fun tp!274284 () Bool)

(assert (=> b!867257 (= e!570743 tp!274284)))

(declare-fun b!867256 () Bool)

(declare-fun tp!274282 () Bool)

(declare-fun tp!274286 () Bool)

(assert (=> b!867256 (= e!570743 (and tp!274282 tp!274286))))

(declare-fun b!867255 () Bool)

(assert (=> b!867255 (= e!570743 tp_is_empty!4031)))

(assert (= (and b!866832 (is-ElementMatch!2194 (regex!1761 (rule!3184 (h!14779 l!5107))))) b!867255))

(assert (= (and b!866832 (is-Concat!4022 (regex!1761 (rule!3184 (h!14779 l!5107))))) b!867256))

(assert (= (and b!866832 (is-Star!2194 (regex!1761 (rule!3184 (h!14779 l!5107))))) b!867257))

(assert (= (and b!866832 (is-Union!2194 (regex!1761 (rule!3184 (h!14779 l!5107))))) b!867258))

(declare-fun b!867272 () Bool)

(declare-fun b_free!26585 () Bool)

(declare-fun b_next!26649 () Bool)

(assert (=> b!867272 (= b_free!26585 (not b_next!26649))))

(declare-fun tp!274301 () Bool)

(declare-fun b_and!77789 () Bool)

(assert (=> b!867272 (= tp!274301 b_and!77789)))

(declare-fun b_free!26587 () Bool)

(declare-fun b_next!26651 () Bool)

(assert (=> b!867272 (= b_free!26587 (not b_next!26651))))

(declare-fun t!98885 () Bool)

(declare-fun tb!62681 () Bool)

(assert (=> (and b!867272 (= (toChars!2689 (transformation!1761 (rule!3184 (h!14779 (t!98844 l!5107))))) (toChars!2689 (transformation!1761 (rule!3184 separatorToken!297)))) t!98885) tb!62681))

(declare-fun result!72486 () Bool)

(assert (= result!72486 result!72460))

(assert (=> b!867199 t!98885))

(declare-fun t!98887 () Bool)

(declare-fun tb!62683 () Bool)

(assert (=> (and b!867272 (= (toChars!2689 (transformation!1761 (rule!3184 (h!14779 (t!98844 l!5107))))) (toChars!2689 (transformation!1761 (rule!3184 (h!14779 l!5107))))) t!98887) tb!62683))

(declare-fun result!72488 () Bool)

(assert (= result!72488 result!72468))

(assert (=> b!867206 t!98887))

(declare-fun tp!274297 () Bool)

(declare-fun b_and!77791 () Bool)

(assert (=> b!867272 (= tp!274297 (and (=> t!98885 result!72486) (=> t!98887 result!72488) b_and!77791))))

(declare-fun e!570760 () Bool)

(declare-fun b!867270 () Bool)

(declare-fun e!570761 () Bool)

(declare-fun tp!274298 () Bool)

(assert (=> b!867270 (= e!570761 (and (inv!21 (value!56889 (h!14779 (t!98844 l!5107)))) e!570760 tp!274298))))

(declare-fun e!570758 () Bool)

(declare-fun b!867271 () Bool)

(declare-fun tp!274300 () Bool)

(assert (=> b!867271 (= e!570760 (and tp!274300 (inv!11910 (tag!2023 (rule!3184 (h!14779 (t!98844 l!5107))))) (inv!11913 (transformation!1761 (rule!3184 (h!14779 (t!98844 l!5107))))) e!570758))))

(declare-fun e!570757 () Bool)

(assert (=> b!866833 (= tp!274202 e!570757)))

(declare-fun b!867269 () Bool)

(declare-fun tp!274299 () Bool)

(assert (=> b!867269 (= e!570757 (and (inv!11914 (h!14779 (t!98844 l!5107))) e!570761 tp!274299))))

(assert (=> b!867272 (= e!570758 (and tp!274301 tp!274297))))

(assert (= b!867271 b!867272))

(assert (= b!867270 b!867271))

(assert (= b!867269 b!867270))

(assert (= (and b!866833 (is-Cons!9378 (t!98844 l!5107))) b!867269))

(declare-fun m!1114363 () Bool)

(assert (=> b!867270 m!1114363))

(declare-fun m!1114365 () Bool)

(assert (=> b!867271 m!1114365))

(declare-fun m!1114367 () Bool)

(assert (=> b!867271 m!1114367))

(declare-fun m!1114369 () Bool)

(assert (=> b!867269 m!1114369))

(declare-fun e!570766 () Bool)

(assert (=> b!866850 (= tp!274194 e!570766)))

(declare-fun b!867280 () Bool)

(declare-fun tp!274303 () Bool)

(declare-fun tp!274305 () Bool)

(assert (=> b!867280 (= e!570766 (and tp!274303 tp!274305))))

(declare-fun b!867279 () Bool)

(declare-fun tp!274304 () Bool)

(assert (=> b!867279 (= e!570766 tp!274304)))

(declare-fun b!867278 () Bool)

(declare-fun tp!274302 () Bool)

(declare-fun tp!274306 () Bool)

(assert (=> b!867278 (= e!570766 (and tp!274302 tp!274306))))

(declare-fun b!867277 () Bool)

(assert (=> b!867277 (= e!570766 tp_is_empty!4031)))

(assert (= (and b!866850 (is-ElementMatch!2194 (regex!1761 (rule!3184 separatorToken!297)))) b!867277))

(assert (= (and b!866850 (is-Concat!4022 (regex!1761 (rule!3184 separatorToken!297)))) b!867278))

(assert (= (and b!866850 (is-Star!2194 (regex!1761 (rule!3184 separatorToken!297)))) b!867279))

(assert (= (and b!866850 (is-Union!2194 (regex!1761 (rule!3184 separatorToken!297)))) b!867280))

(declare-fun b_lambda!29507 () Bool)

(assert (= b_lambda!29501 (or (and b!867253 b_free!26583 (= (toChars!2689 (transformation!1761 (h!14780 (t!98845 rules!2621)))) (toChars!2689 (transformation!1761 (rule!3184 separatorToken!297))))) (and b!866834 b_free!26563 (= (toChars!2689 (transformation!1761 (rule!3184 (h!14779 l!5107)))) (toChars!2689 (transformation!1761 (rule!3184 separatorToken!297))))) (and b!866856 b_free!26559) (and b!866854 b_free!26567 (= (toChars!2689 (transformation!1761 (h!14780 rules!2621))) (toChars!2689 (transformation!1761 (rule!3184 separatorToken!297))))) (and b!867272 b_free!26587 (= (toChars!2689 (transformation!1761 (rule!3184 (h!14779 (t!98844 l!5107))))) (toChars!2689 (transformation!1761 (rule!3184 separatorToken!297))))) b_lambda!29507)))

(declare-fun b_lambda!29509 () Bool)

(assert (= b_lambda!29503 (or (and b!867253 b_free!26583 (= (toChars!2689 (transformation!1761 (h!14780 (t!98845 rules!2621)))) (toChars!2689 (transformation!1761 (rule!3184 (h!14779 l!5107)))))) (and b!866856 b_free!26559 (= (toChars!2689 (transformation!1761 (rule!3184 separatorToken!297))) (toChars!2689 (transformation!1761 (rule!3184 (h!14779 l!5107)))))) (and b!867272 b_free!26587 (= (toChars!2689 (transformation!1761 (rule!3184 (h!14779 (t!98844 l!5107))))) (toChars!2689 (transformation!1761 (rule!3184 (h!14779 l!5107)))))) (and b!866854 b_free!26567 (= (toChars!2689 (transformation!1761 (h!14780 rules!2621))) (toChars!2689 (transformation!1761 (rule!3184 (h!14779 l!5107)))))) (and b!866834 b_free!26563) b_lambda!29509)))

(declare-fun b_lambda!29511 () Bool)

(assert (= b_lambda!29505 (or b!866840 b_lambda!29511)))

(declare-fun bs!232918 () Bool)

(declare-fun d!272247 () Bool)

(assert (= bs!232918 (and d!272247 b!866840)))

(assert (=> bs!232918 (= (dynLambda!4459 lambda!26017 (h!14779 l!5107)) (not (isSeparator!1761 (rule!3184 (h!14779 l!5107)))))))

(assert (=> b!867217 d!272247))

(push 1)

(assert (not b_next!26621))

(assert (not b!867278))

(assert (not b!867023))

(assert (not b!867206))

(assert b_and!77779)

(assert (not b_next!26623))

(assert (not b!866988))

(assert (not b!866989))

(assert (not b!867280))

(assert (not d!272223))

(assert (not d!272187))

(assert (not tb!62671))

(assert (not b_lambda!29509))

(assert (not b!867221))

(assert (not b_next!26649))

(assert (not b!867039))

(assert (not d!272185))

(assert (not b_next!26629))

(assert (not b!867041))

(assert (not b!867270))

(assert (not d!272163))

(assert (not b!867048))

(assert (not b!867075))

(assert (not b_next!26627))

(assert (not b!867193))

(assert (not b!867079))

(assert (not b!867081))

(assert (not b!867199))

(assert (not d!272231))

(assert (not b!867218))

(assert tp_is_empty!4031)

(assert (not b!867242))

(assert b_and!77745)

(assert (not b!867256))

(assert (not b!867269))

(assert (not b!867087))

(assert (not b_lambda!29511))

(assert b_and!77783)

(assert (not b_next!26645))

(assert (not b!867071))

(assert (not b!867194))

(assert (not d!272181))

(assert b_and!77791)

(assert b_and!77781)

(assert (not b!867258))

(assert (not b!867042))

(assert (not b!866998))

(assert (not d!272183))

(assert (not b_next!26651))

(assert (not d!272229))

(assert (not b!867040))

(assert (not b_lambda!29507))

(assert (not b!867089))

(assert (not b!867279))

(assert (not b!867211))

(assert (not b!867251))

(assert (not b!867086))

(assert (not b!867212))

(assert (not b!867192))

(assert (not b!867051))

(assert (not b!867080))

(assert (not b!867252))

(assert (not b!867047))

(assert (not b!867088))

(assert (not b_next!26631))

(assert (not b!867050))

(assert (not b!867257))

(assert (not b!866938))

(assert (not b!867031))

(assert (not b!867077))

(assert (not b!867236))

(assert (not b!867055))

(assert (not b!867025))

(assert (not b!867057))

(assert (not b!867235))

(assert (not d!272157))

(assert (not b!867220))

(assert b_and!77741)

(assert b_and!77737)

(assert (not b!866940))

(assert (not b!867219))

(assert (not b_next!26647))

(assert (not b!867070))

(assert (not b!867254))

(assert (not d!272235))

(assert b_and!77789)

(assert (not b!867190))

(assert (not d!272167))

(assert (not b!867271))

(assert (not b!867029))

(assert (not b!867237))

(assert (not d!272161))

(assert (not b_next!26625))

(assert (not d!272133))

(assert (not d!272225))

(assert (not b!866939))

(assert (not b!867090))

(assert b_and!77787)

(assert (not b!867207))

(assert (not tb!62665))

(assert (not b!867208))

(assert (not b!867205))

(assert (not b!867189))

(assert b_and!77785)

(assert (not b!867200))

(assert (not d!272175))

(assert (not b!867076))

(assert (not d!272219))

(assert (not d!272241))

(assert (not d!272155))

(assert (not d!272129))

(assert (not b!867024))

(assert (not b!867072))

(assert (not b!867049))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!26621))

(assert (not b_next!26649))

(assert (not b_next!26629))

(assert (not b_next!26627))

(assert b_and!77745)

(assert (not b_next!26651))

(assert (not b_next!26631))

(assert b_and!77741)

(assert b_and!77789)

(assert (not b_next!26625))

(assert b_and!77787)

(assert b_and!77785)

(assert b_and!77779)

(assert (not b_next!26623))

(assert b_and!77783)

(assert (not b_next!26645))

(assert b_and!77791)

(assert b_and!77781)

(assert b_and!77737)

(assert (not b_next!26647))

(check-sat)

(pop 1)

