; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!171486 () Bool)

(assert start!171486)

(declare-fun b!1741826 () Bool)

(declare-fun b_free!47915 () Bool)

(declare-fun b_next!48619 () Bool)

(assert (=> b!1741826 (= b_free!47915 (not b_next!48619))))

(declare-fun tp!495993 () Bool)

(declare-fun b_and!129497 () Bool)

(assert (=> b!1741826 (= tp!495993 b_and!129497)))

(declare-fun b_free!47917 () Bool)

(declare-fun b_next!48621 () Bool)

(assert (=> b!1741826 (= b_free!47917 (not b_next!48621))))

(declare-fun tp!495996 () Bool)

(declare-fun b_and!129499 () Bool)

(assert (=> b!1741826 (= tp!495996 b_and!129499)))

(declare-fun b!1741838 () Bool)

(declare-fun b_free!47919 () Bool)

(declare-fun b_next!48623 () Bool)

(assert (=> b!1741838 (= b_free!47919 (not b_next!48623))))

(declare-fun tp!495994 () Bool)

(declare-fun b_and!129501 () Bool)

(assert (=> b!1741838 (= tp!495994 b_and!129501)))

(declare-fun b_free!47921 () Bool)

(declare-fun b_next!48625 () Bool)

(assert (=> b!1741838 (= b_free!47921 (not b_next!48625))))

(declare-fun tp!495997 () Bool)

(declare-fun b_and!129503 () Bool)

(assert (=> b!1741838 (= tp!495997 b_and!129503)))

(declare-fun b!1741840 () Bool)

(declare-fun b_free!47923 () Bool)

(declare-fun b_next!48627 () Bool)

(assert (=> b!1741840 (= b_free!47923 (not b_next!48627))))

(declare-fun tp!495991 () Bool)

(declare-fun b_and!129505 () Bool)

(assert (=> b!1741840 (= tp!495991 b_and!129505)))

(declare-fun b_free!47925 () Bool)

(declare-fun b_next!48629 () Bool)

(assert (=> b!1741840 (= b_free!47925 (not b_next!48629))))

(declare-fun tp!495989 () Bool)

(declare-fun b_and!129507 () Bool)

(assert (=> b!1741840 (= tp!495989 b_and!129507)))

(declare-fun e!1114879 () Bool)

(declare-fun b!1741822 () Bool)

(declare-fun e!1114887 () Bool)

(declare-datatypes ((List!19217 0))(
  ( (Nil!19147) (Cons!19147 (h!24548 (_ BitVec 16)) (t!161916 List!19217)) )
))
(declare-datatypes ((TokenValue!3501 0))(
  ( (FloatLiteralValue!7002 (text!24952 List!19217)) (TokenValueExt!3500 (__x!12304 Int)) (Broken!17505 (value!106860 List!19217)) (Object!3570) (End!3501) (Def!3501) (Underscore!3501) (Match!3501) (Else!3501) (Error!3501) (Case!3501) (If!3501) (Extends!3501) (Abstract!3501) (Class!3501) (Val!3501) (DelimiterValue!7002 (del!3561 List!19217)) (KeywordValue!3507 (value!106861 List!19217)) (CommentValue!7002 (value!106862 List!19217)) (WhitespaceValue!7002 (value!106863 List!19217)) (IndentationValue!3501 (value!106864 List!19217)) (String!21836) (Int32!3501) (Broken!17506 (value!106865 List!19217)) (Boolean!3502) (Unit!33214) (OperatorValue!3504 (op!3561 List!19217)) (IdentifierValue!7002 (value!106866 List!19217)) (IdentifierValue!7003 (value!106867 List!19217)) (WhitespaceValue!7003 (value!106868 List!19217)) (True!7002) (False!7002) (Broken!17507 (value!106869 List!19217)) (Broken!17508 (value!106870 List!19217)) (True!7003) (RightBrace!3501) (RightBracket!3501) (Colon!3501) (Null!3501) (Comma!3501) (LeftBracket!3501) (False!7003) (LeftBrace!3501) (ImaginaryLiteralValue!3501 (text!24953 List!19217)) (StringLiteralValue!10503 (value!106871 List!19217)) (EOFValue!3501 (value!106872 List!19217)) (IdentValue!3501 (value!106873 List!19217)) (DelimiterValue!7003 (value!106874 List!19217)) (DedentValue!3501 (value!106875 List!19217)) (NewLineValue!3501 (value!106876 List!19217)) (IntegerValue!10503 (value!106877 (_ BitVec 32)) (text!24954 List!19217)) (IntegerValue!10504 (value!106878 Int) (text!24955 List!19217)) (Times!3501) (Or!3501) (Equal!3501) (Minus!3501) (Broken!17509 (value!106879 List!19217)) (And!3501) (Div!3501) (LessEqual!3501) (Mod!3501) (Concat!8240) (Not!3501) (Plus!3501) (SpaceValue!3501 (value!106880 List!19217)) (IntegerValue!10505 (value!106881 Int) (text!24956 List!19217)) (StringLiteralValue!10504 (text!24957 List!19217)) (FloatLiteralValue!7003 (text!24958 List!19217)) (BytesLiteralValue!3501 (value!106882 List!19217)) (CommentValue!7003 (value!106883 List!19217)) (StringLiteralValue!10505 (value!106884 List!19217)) (ErrorTokenValue!3501 (msg!3562 List!19217)) )
))
(declare-datatypes ((C!9652 0))(
  ( (C!9653 (val!5422 Int)) )
))
(declare-datatypes ((Regex!4739 0))(
  ( (ElementMatch!4739 (c!284170 C!9652)) (Concat!8241 (regOne!9990 Regex!4739) (regTwo!9990 Regex!4739)) (EmptyExpr!4739) (Star!4739 (reg!5068 Regex!4739)) (EmptyLang!4739) (Union!4739 (regOne!9991 Regex!4739) (regTwo!9991 Regex!4739)) )
))
(declare-datatypes ((String!21837 0))(
  ( (String!21838 (value!106885 String)) )
))
(declare-datatypes ((List!19218 0))(
  ( (Nil!19148) (Cons!19148 (h!24549 C!9652) (t!161917 List!19218)) )
))
(declare-datatypes ((IArray!12743 0))(
  ( (IArray!12744 (innerList!6429 List!19218)) )
))
(declare-datatypes ((Conc!6369 0))(
  ( (Node!6369 (left!15308 Conc!6369) (right!15638 Conc!6369) (csize!12968 Int) (cheight!6580 Int)) (Leaf!9295 (xs!9245 IArray!12743) (csize!12969 Int)) (Empty!6369) )
))
(declare-datatypes ((BalanceConc!12682 0))(
  ( (BalanceConc!12683 (c!284171 Conc!6369)) )
))
(declare-datatypes ((TokenValueInjection!6662 0))(
  ( (TokenValueInjection!6663 (toValue!4918 Int) (toChars!4777 Int)) )
))
(declare-datatypes ((Rule!6622 0))(
  ( (Rule!6623 (regex!3411 Regex!4739) (tag!3751 String!21837) (isSeparator!3411 Bool) (transformation!3411 TokenValueInjection!6662)) )
))
(declare-datatypes ((List!19219 0))(
  ( (Nil!19149) (Cons!19149 (h!24550 Rule!6622) (t!161918 List!19219)) )
))
(declare-fun rules!3447 () List!19219)

(declare-fun tp!495995 () Bool)

(declare-fun inv!24807 (String!21837) Bool)

(declare-fun inv!24810 (TokenValueInjection!6662) Bool)

(assert (=> b!1741822 (= e!1114887 (and tp!495995 (inv!24807 (tag!3751 (h!24550 rules!3447))) (inv!24810 (transformation!3411 (h!24550 rules!3447))) e!1114879))))

(declare-fun b!1741823 () Bool)

(declare-fun res!783127 () Bool)

(declare-fun e!1114884 () Bool)

(assert (=> b!1741823 (=> (not res!783127) (not e!1114884))))

(declare-datatypes ((Token!6388 0))(
  ( (Token!6389 (value!106886 TokenValue!3501) (rule!5413 Rule!6622) (size!15210 Int) (originalCharacters!4225 List!19218)) )
))
(declare-fun token!523 () Token!6388)

(declare-fun rule!422 () Rule!6622)

(assert (=> b!1741823 (= res!783127 (= (rule!5413 token!523) rule!422))))

(declare-fun b!1741824 () Bool)

(declare-fun res!783126 () Bool)

(declare-fun e!1114889 () Bool)

(assert (=> b!1741824 (=> (not res!783126) (not e!1114889))))

(declare-fun contains!3433 (List!19219 Rule!6622) Bool)

(assert (=> b!1741824 (= res!783126 (contains!3433 rules!3447 rule!422))))

(declare-fun b!1741825 () Bool)

(declare-fun tp!495992 () Bool)

(declare-fun e!1114876 () Bool)

(declare-fun e!1114893 () Bool)

(assert (=> b!1741825 (= e!1114893 (and tp!495992 (inv!24807 (tag!3751 (rule!5413 token!523))) (inv!24810 (transformation!3411 (rule!5413 token!523))) e!1114876))))

(declare-fun e!1114880 () Bool)

(assert (=> b!1741826 (= e!1114880 (and tp!495993 tp!495996))))

(declare-fun b!1741827 () Bool)

(declare-fun res!783125 () Bool)

(assert (=> b!1741827 (=> (not res!783125) (not e!1114889))))

(declare-fun isEmpty!12053 (List!19219) Bool)

(assert (=> b!1741827 (= res!783125 (not (isEmpty!12053 rules!3447)))))

(declare-fun b!1741828 () Bool)

(declare-fun res!783116 () Bool)

(assert (=> b!1741828 (=> (not res!783116) (not e!1114889))))

(declare-datatypes ((LexerInterface!3040 0))(
  ( (LexerInterfaceExt!3037 (__x!12305 Int)) (Lexer!3038) )
))
(declare-fun thiss!24550 () LexerInterface!3040)

(declare-fun rulesInvariant!2709 (LexerInterface!3040 List!19219) Bool)

(assert (=> b!1741828 (= res!783116 (rulesInvariant!2709 thiss!24550 rules!3447))))

(declare-fun b!1741829 () Bool)

(declare-fun res!783120 () Bool)

(declare-fun e!1114875 () Bool)

(assert (=> b!1741829 (=> res!783120 e!1114875)))

(declare-fun suffix!1421 () List!19218)

(declare-fun isEmpty!12054 (List!19218) Bool)

(assert (=> b!1741829 (= res!783120 (isEmpty!12054 suffix!1421))))

(declare-fun b!1741830 () Bool)

(declare-fun e!1114888 () Bool)

(assert (=> b!1741830 (= e!1114888 e!1114884)))

(declare-fun res!783118 () Bool)

(assert (=> b!1741830 (=> (not res!783118) (not e!1114884))))

(declare-datatypes ((tuple2!18794 0))(
  ( (tuple2!18795 (_1!10799 Token!6388) (_2!10799 List!19218)) )
))
(declare-fun lt!671709 () tuple2!18794)

(assert (=> b!1741830 (= res!783118 (= (_1!10799 lt!671709) token!523))))

(declare-datatypes ((Option!3846 0))(
  ( (None!3845) (Some!3845 (v!25278 tuple2!18794)) )
))
(declare-fun lt!671718 () Option!3846)

(declare-fun get!5769 (Option!3846) tuple2!18794)

(assert (=> b!1741830 (= lt!671709 (get!5769 lt!671718))))

(declare-fun e!1114892 () Bool)

(declare-fun b!1741831 () Bool)

(declare-fun tp!495990 () Bool)

(assert (=> b!1741831 (= e!1114892 (and tp!495990 (inv!24807 (tag!3751 rule!422)) (inv!24810 (transformation!3411 rule!422)) e!1114880))))

(declare-fun b!1741833 () Bool)

(declare-fun e!1114878 () Bool)

(assert (=> b!1741833 (= e!1114878 true)))

(declare-fun lt!671717 () Bool)

(declare-fun lt!671708 () tuple2!18794)

(declare-fun lt!671707 () List!19218)

(declare-fun matchR!2213 (Regex!4739 List!19218) Bool)

(assert (=> b!1741833 (= lt!671717 (matchR!2213 (regex!3411 (rule!5413 (_1!10799 lt!671708))) lt!671707))))

(declare-fun b!1741834 () Bool)

(declare-fun res!783129 () Bool)

(assert (=> b!1741834 (=> res!783129 e!1114875)))

(declare-fun lt!671710 () List!19218)

(declare-fun prefixMatch!624 (Regex!4739 List!19218) Bool)

(declare-fun rulesRegex!769 (LexerInterface!3040 List!19219) Regex!4739)

(declare-fun ++!5236 (List!19218 List!19218) List!19218)

(declare-fun head!3994 (List!19218) C!9652)

(assert (=> b!1741834 (= res!783129 (prefixMatch!624 (rulesRegex!769 thiss!24550 rules!3447) (++!5236 lt!671710 (Cons!19148 (head!3994 suffix!1421) Nil!19148))))))

(declare-fun b!1741835 () Bool)

(declare-fun e!1114883 () Bool)

(declare-fun lt!671706 () Rule!6622)

(assert (=> b!1741835 (= e!1114883 (= (rule!5413 (_1!10799 lt!671708)) lt!671706))))

(declare-fun e!1114890 () Bool)

(declare-fun b!1741836 () Bool)

(declare-fun tp!495998 () Bool)

(declare-fun inv!21 (TokenValue!3501) Bool)

(assert (=> b!1741836 (= e!1114890 (and (inv!21 (value!106886 token!523)) e!1114893 tp!495998))))

(declare-fun b!1741837 () Bool)

(declare-fun res!783117 () Bool)

(assert (=> b!1741837 (=> (not res!783117) (not e!1114884))))

(assert (=> b!1741837 (= res!783117 (isEmpty!12054 (_2!10799 lt!671709)))))

(assert (=> b!1741838 (= e!1114879 (and tp!495994 tp!495997))))

(declare-fun b!1741832 () Bool)

(assert (=> b!1741832 (= e!1114889 e!1114888)))

(declare-fun res!783128 () Bool)

(assert (=> b!1741832 (=> (not res!783128) (not e!1114888))))

(declare-fun isDefined!3189 (Option!3846) Bool)

(assert (=> b!1741832 (= res!783128 (isDefined!3189 lt!671718))))

(declare-fun maxPrefix!1594 (LexerInterface!3040 List!19219 List!19218) Option!3846)

(assert (=> b!1741832 (= lt!671718 (maxPrefix!1594 thiss!24550 rules!3447 lt!671710))))

(declare-fun list!7744 (BalanceConc!12682) List!19218)

(declare-fun charsOf!2060 (Token!6388) BalanceConc!12682)

(assert (=> b!1741832 (= lt!671710 (list!7744 (charsOf!2060 token!523)))))

(declare-fun res!783119 () Bool)

(assert (=> start!171486 (=> (not res!783119) (not e!1114889))))

(get-info :version)

(assert (=> start!171486 (= res!783119 ((_ is Lexer!3038) thiss!24550))))

(assert (=> start!171486 e!1114889))

(declare-fun e!1114882 () Bool)

(assert (=> start!171486 e!1114882))

(assert (=> start!171486 e!1114892))

(assert (=> start!171486 true))

(declare-fun inv!24811 (Token!6388) Bool)

(assert (=> start!171486 (and (inv!24811 token!523) e!1114890)))

(declare-fun e!1114877 () Bool)

(assert (=> start!171486 e!1114877))

(declare-fun b!1741839 () Bool)

(declare-fun tp!495988 () Bool)

(assert (=> b!1741839 (= e!1114877 (and e!1114887 tp!495988))))

(assert (=> b!1741840 (= e!1114876 (and tp!495991 tp!495989))))

(declare-fun b!1741841 () Bool)

(declare-fun e!1114881 () Bool)

(assert (=> b!1741841 (= e!1114881 e!1114883)))

(declare-fun res!783121 () Bool)

(assert (=> b!1741841 (=> (not res!783121) (not e!1114883))))

(assert (=> b!1741841 (= res!783121 (matchR!2213 (regex!3411 lt!671706) (list!7744 (charsOf!2060 (_1!10799 lt!671708)))))))

(declare-datatypes ((Option!3847 0))(
  ( (None!3846) (Some!3846 (v!25279 Rule!6622)) )
))
(declare-fun lt!671714 () Option!3847)

(declare-fun get!5770 (Option!3847) Rule!6622)

(assert (=> b!1741841 (= lt!671706 (get!5770 lt!671714))))

(declare-fun b!1741842 () Bool)

(assert (=> b!1741842 (= e!1114875 e!1114878)))

(declare-fun res!783122 () Bool)

(assert (=> b!1741842 (=> res!783122 e!1114878)))

(declare-fun lt!671720 () List!19218)

(declare-fun isPrefix!1652 (List!19218 List!19218) Bool)

(assert (=> b!1741842 (= res!783122 (not (isPrefix!1652 lt!671707 lt!671720)))))

(assert (=> b!1741842 (isPrefix!1652 lt!671707 (++!5236 lt!671707 (_2!10799 lt!671708)))))

(declare-datatypes ((Unit!33215 0))(
  ( (Unit!33216) )
))
(declare-fun lt!671711 () Unit!33215)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1162 (List!19218 List!19218) Unit!33215)

(assert (=> b!1741842 (= lt!671711 (lemmaConcatTwoListThenFirstIsPrefix!1162 lt!671707 (_2!10799 lt!671708)))))

(assert (=> b!1741842 (= lt!671707 (list!7744 (charsOf!2060 (_1!10799 lt!671708))))))

(assert (=> b!1741842 e!1114881))

(declare-fun res!783124 () Bool)

(assert (=> b!1741842 (=> (not res!783124) (not e!1114881))))

(declare-fun isDefined!3190 (Option!3847) Bool)

(assert (=> b!1741842 (= res!783124 (isDefined!3190 lt!671714))))

(declare-fun getRuleFromTag!461 (LexerInterface!3040 List!19219 String!21837) Option!3847)

(assert (=> b!1741842 (= lt!671714 (getRuleFromTag!461 thiss!24550 rules!3447 (tag!3751 (rule!5413 (_1!10799 lt!671708)))))))

(declare-fun lt!671712 () Unit!33215)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!461 (LexerInterface!3040 List!19219 List!19218 Token!6388) Unit!33215)

(assert (=> b!1741842 (= lt!671712 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!461 thiss!24550 rules!3447 lt!671720 (_1!10799 lt!671708)))))

(declare-fun lt!671719 () Option!3846)

(assert (=> b!1741842 (= lt!671708 (get!5769 lt!671719))))

(declare-fun lt!671715 () Unit!33215)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!564 (LexerInterface!3040 List!19219 List!19218 List!19218) Unit!33215)

(assert (=> b!1741842 (= lt!671715 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!564 thiss!24550 rules!3447 lt!671710 suffix!1421))))

(assert (=> b!1741842 (= lt!671719 (maxPrefix!1594 thiss!24550 rules!3447 lt!671720))))

(assert (=> b!1741842 (isPrefix!1652 lt!671710 lt!671720)))

(declare-fun lt!671716 () Unit!33215)

(assert (=> b!1741842 (= lt!671716 (lemmaConcatTwoListThenFirstIsPrefix!1162 lt!671710 suffix!1421))))

(assert (=> b!1741842 (= lt!671720 (++!5236 lt!671710 suffix!1421))))

(declare-fun b!1741843 () Bool)

(assert (=> b!1741843 (= e!1114884 (not e!1114875))))

(declare-fun res!783123 () Bool)

(assert (=> b!1741843 (=> res!783123 e!1114875)))

(assert (=> b!1741843 (= res!783123 (not (matchR!2213 (regex!3411 rule!422) lt!671710)))))

(declare-fun ruleValid!910 (LexerInterface!3040 Rule!6622) Bool)

(assert (=> b!1741843 (ruleValid!910 thiss!24550 rule!422)))

(declare-fun lt!671713 () Unit!33215)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!434 (LexerInterface!3040 Rule!6622 List!19219) Unit!33215)

(assert (=> b!1741843 (= lt!671713 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!434 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1741844 () Bool)

(declare-fun tp_is_empty!7721 () Bool)

(declare-fun tp!495987 () Bool)

(assert (=> b!1741844 (= e!1114882 (and tp_is_empty!7721 tp!495987))))

(assert (= (and start!171486 res!783119) b!1741827))

(assert (= (and b!1741827 res!783125) b!1741828))

(assert (= (and b!1741828 res!783116) b!1741824))

(assert (= (and b!1741824 res!783126) b!1741832))

(assert (= (and b!1741832 res!783128) b!1741830))

(assert (= (and b!1741830 res!783118) b!1741837))

(assert (= (and b!1741837 res!783117) b!1741823))

(assert (= (and b!1741823 res!783127) b!1741843))

(assert (= (and b!1741843 (not res!783123)) b!1741829))

(assert (= (and b!1741829 (not res!783120)) b!1741834))

(assert (= (and b!1741834 (not res!783129)) b!1741842))

(assert (= (and b!1741842 res!783124) b!1741841))

(assert (= (and b!1741841 res!783121) b!1741835))

(assert (= (and b!1741842 (not res!783122)) b!1741833))

(assert (= (and start!171486 ((_ is Cons!19148) suffix!1421)) b!1741844))

(assert (= b!1741831 b!1741826))

(assert (= start!171486 b!1741831))

(assert (= b!1741825 b!1741840))

(assert (= b!1741836 b!1741825))

(assert (= start!171486 b!1741836))

(assert (= b!1741822 b!1741838))

(assert (= b!1741839 b!1741822))

(assert (= (and start!171486 ((_ is Cons!19149) rules!3447)) b!1741839))

(declare-fun m!2152935 () Bool)

(assert (=> b!1741841 m!2152935))

(assert (=> b!1741841 m!2152935))

(declare-fun m!2152937 () Bool)

(assert (=> b!1741841 m!2152937))

(assert (=> b!1741841 m!2152937))

(declare-fun m!2152939 () Bool)

(assert (=> b!1741841 m!2152939))

(declare-fun m!2152941 () Bool)

(assert (=> b!1741841 m!2152941))

(declare-fun m!2152943 () Bool)

(assert (=> b!1741833 m!2152943))

(declare-fun m!2152945 () Bool)

(assert (=> b!1741843 m!2152945))

(declare-fun m!2152947 () Bool)

(assert (=> b!1741843 m!2152947))

(declare-fun m!2152949 () Bool)

(assert (=> b!1741843 m!2152949))

(declare-fun m!2152951 () Bool)

(assert (=> b!1741837 m!2152951))

(declare-fun m!2152953 () Bool)

(assert (=> b!1741830 m!2152953))

(declare-fun m!2152955 () Bool)

(assert (=> b!1741822 m!2152955))

(declare-fun m!2152957 () Bool)

(assert (=> b!1741822 m!2152957))

(declare-fun m!2152959 () Bool)

(assert (=> b!1741831 m!2152959))

(declare-fun m!2152961 () Bool)

(assert (=> b!1741831 m!2152961))

(declare-fun m!2152963 () Bool)

(assert (=> b!1741832 m!2152963))

(declare-fun m!2152965 () Bool)

(assert (=> b!1741832 m!2152965))

(declare-fun m!2152967 () Bool)

(assert (=> b!1741832 m!2152967))

(assert (=> b!1741832 m!2152967))

(declare-fun m!2152969 () Bool)

(assert (=> b!1741832 m!2152969))

(declare-fun m!2152971 () Bool)

(assert (=> b!1741836 m!2152971))

(declare-fun m!2152973 () Bool)

(assert (=> b!1741827 m!2152973))

(declare-fun m!2152975 () Bool)

(assert (=> b!1741824 m!2152975))

(declare-fun m!2152977 () Bool)

(assert (=> b!1741842 m!2152977))

(assert (=> b!1741842 m!2152935))

(assert (=> b!1741842 m!2152937))

(declare-fun m!2152979 () Bool)

(assert (=> b!1741842 m!2152979))

(declare-fun m!2152981 () Bool)

(assert (=> b!1741842 m!2152981))

(declare-fun m!2152983 () Bool)

(assert (=> b!1741842 m!2152983))

(declare-fun m!2152985 () Bool)

(assert (=> b!1741842 m!2152985))

(declare-fun m!2152987 () Bool)

(assert (=> b!1741842 m!2152987))

(declare-fun m!2152989 () Bool)

(assert (=> b!1741842 m!2152989))

(declare-fun m!2152991 () Bool)

(assert (=> b!1741842 m!2152991))

(assert (=> b!1741842 m!2152935))

(declare-fun m!2152993 () Bool)

(assert (=> b!1741842 m!2152993))

(declare-fun m!2152995 () Bool)

(assert (=> b!1741842 m!2152995))

(declare-fun m!2152997 () Bool)

(assert (=> b!1741842 m!2152997))

(declare-fun m!2152999 () Bool)

(assert (=> b!1741842 m!2152999))

(assert (=> b!1741842 m!2152985))

(declare-fun m!2153001 () Bool)

(assert (=> b!1741842 m!2153001))

(declare-fun m!2153003 () Bool)

(assert (=> b!1741834 m!2153003))

(declare-fun m!2153005 () Bool)

(assert (=> b!1741834 m!2153005))

(declare-fun m!2153007 () Bool)

(assert (=> b!1741834 m!2153007))

(assert (=> b!1741834 m!2153003))

(assert (=> b!1741834 m!2153007))

(declare-fun m!2153009 () Bool)

(assert (=> b!1741834 m!2153009))

(declare-fun m!2153011 () Bool)

(assert (=> b!1741825 m!2153011))

(declare-fun m!2153013 () Bool)

(assert (=> b!1741825 m!2153013))

(declare-fun m!2153015 () Bool)

(assert (=> start!171486 m!2153015))

(declare-fun m!2153017 () Bool)

(assert (=> b!1741829 m!2153017))

(declare-fun m!2153019 () Bool)

(assert (=> b!1741828 m!2153019))

(check-sat b_and!129507 (not b!1741828) (not b!1741822) b_and!129501 (not b_next!48619) (not b!1741829) b_and!129505 (not b!1741842) (not b!1741824) (not b!1741834) (not b!1741844) tp_is_empty!7721 (not start!171486) b_and!129497 (not b_next!48627) (not b_next!48625) b_and!129499 (not b_next!48623) (not b!1741830) (not b!1741827) (not b!1741841) (not b!1741839) (not b_next!48621) (not b!1741843) (not b!1741837) b_and!129503 (not b!1741832) (not b!1741836) (not b!1741825) (not b!1741833) (not b!1741831) (not b_next!48629))
(check-sat b_and!129507 b_and!129501 (not b_next!48619) (not b_next!48621) b_and!129503 b_and!129505 (not b_next!48629) b_and!129497 (not b_next!48627) (not b_next!48625) b_and!129499 (not b_next!48623))
