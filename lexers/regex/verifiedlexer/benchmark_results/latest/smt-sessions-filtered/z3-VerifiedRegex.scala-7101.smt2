; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!376508 () Bool)

(assert start!376508)

(declare-fun b!4000820 () Bool)

(declare-fun b_free!111169 () Bool)

(declare-fun b_next!111873 () Bool)

(assert (=> b!4000820 (= b_free!111169 (not b_next!111873))))

(declare-fun tp!1217496 () Bool)

(declare-fun b_and!307199 () Bool)

(assert (=> b!4000820 (= tp!1217496 b_and!307199)))

(declare-fun b_free!111171 () Bool)

(declare-fun b_next!111875 () Bool)

(assert (=> b!4000820 (= b_free!111171 (not b_next!111875))))

(declare-fun tp!1217487 () Bool)

(declare-fun b_and!307201 () Bool)

(assert (=> b!4000820 (= tp!1217487 b_and!307201)))

(declare-fun b!4000826 () Bool)

(declare-fun b_free!111173 () Bool)

(declare-fun b_next!111877 () Bool)

(assert (=> b!4000826 (= b_free!111173 (not b_next!111877))))

(declare-fun tp!1217491 () Bool)

(declare-fun b_and!307203 () Bool)

(assert (=> b!4000826 (= tp!1217491 b_and!307203)))

(declare-fun b_free!111175 () Bool)

(declare-fun b_next!111879 () Bool)

(assert (=> b!4000826 (= b_free!111175 (not b_next!111879))))

(declare-fun tp!1217490 () Bool)

(declare-fun b_and!307205 () Bool)

(assert (=> b!4000826 (= tp!1217490 b_and!307205)))

(declare-fun b!4000811 () Bool)

(declare-fun res!1625544 () Bool)

(declare-fun e!2480754 () Bool)

(assert (=> b!4000811 (=> (not res!1625544) (not e!2480754))))

(declare-datatypes ((C!23576 0))(
  ( (C!23577 (val!13882 Int)) )
))
(declare-datatypes ((List!42922 0))(
  ( (Nil!42798) (Cons!42798 (h!48218 C!23576) (t!332201 List!42922)) )
))
(declare-datatypes ((IArray!26007 0))(
  ( (IArray!26008 (innerList!13061 List!42922)) )
))
(declare-datatypes ((Conc!13001 0))(
  ( (Node!13001 (left!32310 Conc!13001) (right!32640 Conc!13001) (csize!26232 Int) (cheight!13212 Int)) (Leaf!20103 (xs!16307 IArray!26007) (csize!26233 Int)) (Empty!13001) )
))
(declare-datatypes ((BalanceConc!25596 0))(
  ( (BalanceConc!25597 (c!691974 Conc!13001)) )
))
(declare-datatypes ((List!42923 0))(
  ( (Nil!42799) (Cons!42799 (h!48219 (_ BitVec 16)) (t!332202 List!42923)) )
))
(declare-datatypes ((TokenValue!7020 0))(
  ( (FloatLiteralValue!14040 (text!49585 List!42923)) (TokenValueExt!7019 (__x!26257 Int)) (Broken!35100 (value!214123 List!42923)) (Object!7143) (End!7020) (Def!7020) (Underscore!7020) (Match!7020) (Else!7020) (Error!7020) (Case!7020) (If!7020) (Extends!7020) (Abstract!7020) (Class!7020) (Val!7020) (DelimiterValue!14040 (del!7080 List!42923)) (KeywordValue!7026 (value!214124 List!42923)) (CommentValue!14040 (value!214125 List!42923)) (WhitespaceValue!14040 (value!214126 List!42923)) (IndentationValue!7020 (value!214127 List!42923)) (String!48817) (Int32!7020) (Broken!35101 (value!214128 List!42923)) (Boolean!7021) (Unit!61787) (OperatorValue!7023 (op!7080 List!42923)) (IdentifierValue!14040 (value!214129 List!42923)) (IdentifierValue!14041 (value!214130 List!42923)) (WhitespaceValue!14041 (value!214131 List!42923)) (True!14040) (False!14040) (Broken!35102 (value!214132 List!42923)) (Broken!35103 (value!214133 List!42923)) (True!14041) (RightBrace!7020) (RightBracket!7020) (Colon!7020) (Null!7020) (Comma!7020) (LeftBracket!7020) (False!14041) (LeftBrace!7020) (ImaginaryLiteralValue!7020 (text!49586 List!42923)) (StringLiteralValue!21060 (value!214134 List!42923)) (EOFValue!7020 (value!214135 List!42923)) (IdentValue!7020 (value!214136 List!42923)) (DelimiterValue!14041 (value!214137 List!42923)) (DedentValue!7020 (value!214138 List!42923)) (NewLineValue!7020 (value!214139 List!42923)) (IntegerValue!21060 (value!214140 (_ BitVec 32)) (text!49587 List!42923)) (IntegerValue!21061 (value!214141 Int) (text!49588 List!42923)) (Times!7020) (Or!7020) (Equal!7020) (Minus!7020) (Broken!35104 (value!214142 List!42923)) (And!7020) (Div!7020) (LessEqual!7020) (Mod!7020) (Concat!18715) (Not!7020) (Plus!7020) (SpaceValue!7020 (value!214143 List!42923)) (IntegerValue!21062 (value!214144 Int) (text!49589 List!42923)) (StringLiteralValue!21061 (text!49590 List!42923)) (FloatLiteralValue!14041 (text!49591 List!42923)) (BytesLiteralValue!7020 (value!214145 List!42923)) (CommentValue!14041 (value!214146 List!42923)) (StringLiteralValue!21062 (value!214147 List!42923)) (ErrorTokenValue!7020 (msg!7081 List!42923)) )
))
(declare-datatypes ((Regex!11695 0))(
  ( (ElementMatch!11695 (c!691975 C!23576)) (Concat!18716 (regOne!23902 Regex!11695) (regTwo!23902 Regex!11695)) (EmptyExpr!11695) (Star!11695 (reg!12024 Regex!11695)) (EmptyLang!11695) (Union!11695 (regOne!23903 Regex!11695) (regTwo!23903 Regex!11695)) )
))
(declare-datatypes ((String!48818 0))(
  ( (String!48819 (value!214148 String)) )
))
(declare-datatypes ((TokenValueInjection!13468 0))(
  ( (TokenValueInjection!13469 (toValue!9278 Int) (toChars!9137 Int)) )
))
(declare-datatypes ((Rule!13380 0))(
  ( (Rule!13381 (regex!6790 Regex!11695) (tag!7650 String!48818) (isSeparator!6790 Bool) (transformation!6790 TokenValueInjection!13468)) )
))
(declare-datatypes ((Token!12718 0))(
  ( (Token!12719 (value!214149 TokenValue!7020) (rule!9822 Rule!13380) (size!32003 Int) (originalCharacters!7390 List!42922)) )
))
(declare-fun token!484 () Token!12718)

(declare-fun size!32004 (List!42922) Int)

(assert (=> b!4000811 (= res!1625544 (= (size!32003 token!484) (size!32004 (originalCharacters!7390 token!484))))))

(declare-fun b!4000812 () Bool)

(declare-fun e!2480756 () Bool)

(declare-fun e!2480770 () Bool)

(assert (=> b!4000812 (= e!2480756 e!2480770)))

(declare-fun res!1625533 () Bool)

(assert (=> b!4000812 (=> res!1625533 e!2480770)))

(declare-datatypes ((LexerInterface!6379 0))(
  ( (LexerInterfaceExt!6376 (__x!26258 Int)) (Lexer!6377) )
))
(declare-fun thiss!21717 () LexerInterface!6379)

(declare-datatypes ((List!42924 0))(
  ( (Nil!42800) (Cons!42800 (h!48220 Rule!13380) (t!332203 List!42924)) )
))
(declare-fun rules!2999 () List!42924)

(declare-fun lt!1414868 () List!42922)

(get-info :version)

(declare-datatypes ((tuple2!41978 0))(
  ( (tuple2!41979 (_1!24123 Token!12718) (_2!24123 List!42922)) )
))
(declare-datatypes ((Option!9204 0))(
  ( (None!9203) (Some!9203 (v!39563 tuple2!41978)) )
))
(declare-fun maxPrefix!3677 (LexerInterface!6379 List!42924 List!42922) Option!9204)

(assert (=> b!4000812 (= res!1625533 ((_ is Some!9203) (maxPrefix!3677 thiss!21717 rules!2999 lt!1414868)))))

(declare-fun suffixResult!105 () List!42922)

(declare-fun lt!1414856 () Token!12718)

(declare-fun lt!1414870 () List!42922)

(declare-fun lt!1414883 () tuple2!41978)

(assert (=> b!4000812 (and (= suffixResult!105 lt!1414870) (= lt!1414883 (tuple2!41979 lt!1414856 lt!1414870)))))

(declare-fun lt!1414866 () List!42922)

(declare-datatypes ((Unit!61788 0))(
  ( (Unit!61789) )
))
(declare-fun lt!1414860 () Unit!61788)

(declare-fun lt!1414880 () List!42922)

(declare-fun lemmaSamePrefixThenSameSuffix!2064 (List!42922 List!42922 List!42922 List!42922 List!42922) Unit!61788)

(assert (=> b!4000812 (= lt!1414860 (lemmaSamePrefixThenSameSuffix!2064 lt!1414880 suffixResult!105 lt!1414880 lt!1414870 lt!1414866))))

(declare-fun lt!1414881 () List!42922)

(declare-fun isPrefix!3877 (List!42922 List!42922) Bool)

(assert (=> b!4000812 (isPrefix!3877 lt!1414880 lt!1414881)))

(declare-fun lt!1414857 () Unit!61788)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2720 (List!42922 List!42922) Unit!61788)

(assert (=> b!4000812 (= lt!1414857 (lemmaConcatTwoListThenFirstIsPrefix!2720 lt!1414880 lt!1414870))))

(declare-fun b!4000813 () Bool)

(declare-fun e!2480757 () Bool)

(declare-fun e!2480763 () Bool)

(assert (=> b!4000813 (= e!2480757 e!2480763)))

(declare-fun res!1625535 () Bool)

(assert (=> b!4000813 (=> (not res!1625535) (not e!2480763))))

(declare-fun lt!1414867 () Int)

(declare-fun lt!1414872 () Int)

(assert (=> b!4000813 (= res!1625535 (>= lt!1414867 lt!1414872))))

(assert (=> b!4000813 (= lt!1414872 (size!32004 lt!1414880))))

(declare-fun prefix!494 () List!42922)

(assert (=> b!4000813 (= lt!1414867 (size!32004 prefix!494))))

(declare-fun list!15894 (BalanceConc!25596) List!42922)

(declare-fun charsOf!4606 (Token!12718) BalanceConc!25596)

(assert (=> b!4000813 (= lt!1414880 (list!15894 (charsOf!4606 token!484)))))

(declare-fun b!4000814 () Bool)

(declare-fun res!1625546 () Bool)

(assert (=> b!4000814 (=> (not res!1625546) (not e!2480757))))

(declare-fun isEmpty!25577 (List!42924) Bool)

(assert (=> b!4000814 (= res!1625546 (not (isEmpty!25577 rules!2999)))))

(declare-fun b!4000815 () Bool)

(assert (=> b!4000815 (= e!2480770 true)))

(assert (=> b!4000815 false))

(declare-fun lt!1414863 () Unit!61788)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!576 (LexerInterface!6379 Rule!13380 List!42922 List!42922) Unit!61788)

(assert (=> b!4000815 (= lt!1414863 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!576 thiss!21717 (rule!9822 token!484) lt!1414880 lt!1414868))))

(declare-fun isEmpty!25578 (Option!9204) Bool)

(declare-fun maxPrefixOneRule!2711 (LexerInterface!6379 Rule!13380 List!42922) Option!9204)

(assert (=> b!4000815 (isEmpty!25578 (maxPrefixOneRule!2711 thiss!21717 (rule!9822 token!484) lt!1414868))))

(declare-fun lt!1414882 () Unit!61788)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!598 (LexerInterface!6379 Rule!13380 List!42924 List!42922) Unit!61788)

(assert (=> b!4000815 (= lt!1414882 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!598 thiss!21717 (rule!9822 token!484) rules!2999 lt!1414868))))

(declare-fun b!4000816 () Bool)

(declare-fun e!2480775 () Bool)

(declare-fun e!2480764 () Bool)

(assert (=> b!4000816 (= e!2480775 e!2480764)))

(declare-fun res!1625539 () Bool)

(assert (=> b!4000816 (=> res!1625539 e!2480764)))

(declare-fun lt!1414853 () List!42922)

(declare-fun lt!1414877 () List!42922)

(assert (=> b!4000816 (= res!1625539 (or (not (= lt!1414866 lt!1414853)) (not (= lt!1414866 lt!1414877))))))

(assert (=> b!4000816 (= lt!1414853 lt!1414877)))

(declare-fun lt!1414859 () List!42922)

(declare-fun ++!11192 (List!42922 List!42922) List!42922)

(assert (=> b!4000816 (= lt!1414877 (++!11192 lt!1414880 lt!1414859))))

(declare-fun lt!1414869 () List!42922)

(declare-fun suffix!1299 () List!42922)

(assert (=> b!4000816 (= lt!1414853 (++!11192 lt!1414869 suffix!1299))))

(declare-fun lt!1414886 () List!42922)

(assert (=> b!4000816 (= lt!1414859 (++!11192 lt!1414886 suffix!1299))))

(declare-fun lt!1414873 () Unit!61788)

(declare-fun lemmaConcatAssociativity!2512 (List!42922 List!42922 List!42922) Unit!61788)

(assert (=> b!4000816 (= lt!1414873 (lemmaConcatAssociativity!2512 lt!1414880 lt!1414886 suffix!1299))))

(declare-fun b!4000817 () Bool)

(declare-fun e!2480777 () Bool)

(declare-fun e!2480758 () Bool)

(assert (=> b!4000817 (= e!2480777 (not e!2480758))))

(declare-fun res!1625534 () Bool)

(assert (=> b!4000817 (=> res!1625534 e!2480758)))

(declare-fun lt!1414858 () List!42922)

(assert (=> b!4000817 (= res!1625534 (not (= lt!1414858 lt!1414866)))))

(assert (=> b!4000817 (= lt!1414858 (++!11192 lt!1414880 suffixResult!105))))

(declare-fun lt!1414875 () Unit!61788)

(declare-fun lemmaInv!1005 (TokenValueInjection!13468) Unit!61788)

(assert (=> b!4000817 (= lt!1414875 (lemmaInv!1005 (transformation!6790 (rule!9822 token!484))))))

(declare-fun ruleValid!2722 (LexerInterface!6379 Rule!13380) Bool)

(assert (=> b!4000817 (ruleValid!2722 thiss!21717 (rule!9822 token!484))))

(declare-fun lt!1414854 () Unit!61788)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1796 (LexerInterface!6379 Rule!13380 List!42924) Unit!61788)

(assert (=> b!4000817 (= lt!1414854 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1796 thiss!21717 (rule!9822 token!484) rules!2999))))

(declare-fun b!4000819 () Bool)

(declare-fun e!2480760 () Bool)

(declare-fun tp_is_empty!20361 () Bool)

(declare-fun tp!1217495 () Bool)

(assert (=> b!4000819 (= e!2480760 (and tp_is_empty!20361 tp!1217495))))

(declare-fun e!2480766 () Bool)

(assert (=> b!4000820 (= e!2480766 (and tp!1217496 tp!1217487))))

(declare-fun e!2480773 () Bool)

(declare-fun b!4000821 () Bool)

(declare-fun e!2480768 () Bool)

(declare-fun tp!1217492 () Bool)

(declare-fun inv!21 (TokenValue!7020) Bool)

(assert (=> b!4000821 (= e!2480768 (and (inv!21 (value!214149 token!484)) e!2480773 tp!1217492))))

(declare-fun b!4000822 () Bool)

(declare-fun e!2480769 () Bool)

(declare-fun tp!1217493 () Bool)

(assert (=> b!4000822 (= e!2480769 (and tp_is_empty!20361 tp!1217493))))

(declare-fun b!4000823 () Bool)

(declare-fun e!2480762 () Bool)

(assert (=> b!4000823 (= e!2480762 e!2480775)))

(declare-fun res!1625532 () Bool)

(assert (=> b!4000823 (=> res!1625532 e!2480775)))

(assert (=> b!4000823 (= res!1625532 (not (= lt!1414869 prefix!494)))))

(assert (=> b!4000823 (= lt!1414869 (++!11192 lt!1414880 lt!1414886))))

(declare-fun getSuffix!2308 (List!42922 List!42922) List!42922)

(assert (=> b!4000823 (= lt!1414886 (getSuffix!2308 prefix!494 lt!1414880))))

(assert (=> b!4000823 (isPrefix!3877 lt!1414880 prefix!494)))

(declare-fun lt!1414884 () Unit!61788)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!455 (List!42922 List!42922 List!42922) Unit!61788)

(assert (=> b!4000823 (= lt!1414884 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!455 prefix!494 lt!1414880 lt!1414866))))

(declare-fun b!4000824 () Bool)

(declare-fun res!1625548 () Bool)

(assert (=> b!4000824 (=> (not res!1625548) (not e!2480757))))

(declare-fun newSuffix!27 () List!42922)

(assert (=> b!4000824 (= res!1625548 (isPrefix!3877 newSuffix!27 suffix!1299))))

(declare-fun b!4000825 () Bool)

(assert (=> b!4000825 (= e!2480758 e!2480762)))

(declare-fun res!1625540 () Bool)

(assert (=> b!4000825 (=> res!1625540 e!2480762)))

(assert (=> b!4000825 (= res!1625540 (not (isPrefix!3877 lt!1414880 lt!1414866)))))

(assert (=> b!4000825 (isPrefix!3877 prefix!494 lt!1414866)))

(declare-fun lt!1414885 () Unit!61788)

(assert (=> b!4000825 (= lt!1414885 (lemmaConcatTwoListThenFirstIsPrefix!2720 prefix!494 suffix!1299))))

(assert (=> b!4000825 (isPrefix!3877 lt!1414880 lt!1414858)))

(declare-fun lt!1414861 () Unit!61788)

(assert (=> b!4000825 (= lt!1414861 (lemmaConcatTwoListThenFirstIsPrefix!2720 lt!1414880 suffixResult!105))))

(declare-fun e!2480752 () Bool)

(assert (=> b!4000826 (= e!2480752 (and tp!1217491 tp!1217490))))

(declare-fun b!4000827 () Bool)

(declare-fun res!1625545 () Bool)

(assert (=> b!4000827 (=> (not res!1625545) (not e!2480757))))

(declare-fun rulesInvariant!5722 (LexerInterface!6379 List!42924) Bool)

(assert (=> b!4000827 (= res!1625545 (rulesInvariant!5722 thiss!21717 rules!2999))))

(declare-fun b!4000828 () Bool)

(declare-fun e!2480778 () Bool)

(assert (=> b!4000828 (= e!2480764 e!2480778)))

(declare-fun res!1625549 () Bool)

(assert (=> b!4000828 (=> res!1625549 e!2480778)))

(declare-fun lt!1414879 () Option!9204)

(declare-fun lt!1414855 () Option!9204)

(assert (=> b!4000828 (= res!1625549 (not (= lt!1414879 lt!1414855)))))

(assert (=> b!4000828 (= lt!1414879 (Some!9203 (tuple2!41979 lt!1414856 suffixResult!105)))))

(assert (=> b!4000828 (= lt!1414879 (maxPrefixOneRule!2711 thiss!21717 (rule!9822 token!484) lt!1414866))))

(declare-fun lt!1414887 () TokenValue!7020)

(assert (=> b!4000828 (= lt!1414856 (Token!12719 lt!1414887 (rule!9822 token!484) lt!1414872 lt!1414880))))

(declare-fun apply!10001 (TokenValueInjection!13468 BalanceConc!25596) TokenValue!7020)

(declare-fun seqFromList!5029 (List!42922) BalanceConc!25596)

(assert (=> b!4000828 (= lt!1414887 (apply!10001 (transformation!6790 (rule!9822 token!484)) (seqFromList!5029 lt!1414880)))))

(declare-fun lt!1414871 () Unit!61788)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1533 (LexerInterface!6379 List!42924 List!42922 List!42922 List!42922 Rule!13380) Unit!61788)

(assert (=> b!4000828 (= lt!1414871 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1533 thiss!21717 rules!2999 lt!1414880 lt!1414866 suffixResult!105 (rule!9822 token!484)))))

(assert (=> b!4000828 (= lt!1414859 suffixResult!105)))

(declare-fun lt!1414865 () Unit!61788)

(assert (=> b!4000828 (= lt!1414865 (lemmaSamePrefixThenSameSuffix!2064 lt!1414880 lt!1414859 lt!1414880 suffixResult!105 lt!1414866))))

(assert (=> b!4000828 (isPrefix!3877 lt!1414880 lt!1414877)))

(declare-fun lt!1414876 () Unit!61788)

(assert (=> b!4000828 (= lt!1414876 (lemmaConcatTwoListThenFirstIsPrefix!2720 lt!1414880 lt!1414859))))

(declare-fun b!4000829 () Bool)

(declare-fun res!1625547 () Bool)

(assert (=> b!4000829 (=> (not res!1625547) (not e!2480754))))

(assert (=> b!4000829 (= res!1625547 (= (value!214149 token!484) lt!1414887))))

(declare-fun tp!1217498 () Bool)

(declare-fun b!4000830 () Bool)

(declare-fun e!2480761 () Bool)

(declare-fun inv!57153 (String!48818) Bool)

(declare-fun inv!57156 (TokenValueInjection!13468) Bool)

(assert (=> b!4000830 (= e!2480761 (and tp!1217498 (inv!57153 (tag!7650 (h!48220 rules!2999))) (inv!57156 (transformation!6790 (h!48220 rules!2999))) e!2480766))))

(declare-fun b!4000831 () Bool)

(declare-fun e!2480774 () Bool)

(assert (=> b!4000831 (= e!2480763 e!2480774)))

(declare-fun res!1625536 () Bool)

(assert (=> b!4000831 (=> (not res!1625536) (not e!2480774))))

(declare-fun lt!1414864 () List!42922)

(assert (=> b!4000831 (= res!1625536 (= lt!1414864 lt!1414868))))

(assert (=> b!4000831 (= lt!1414868 (++!11192 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!42922)

(assert (=> b!4000831 (= lt!1414864 (++!11192 lt!1414880 newSuffixResult!27))))

(declare-fun b!4000832 () Bool)

(declare-fun e!2480755 () Bool)

(assert (=> b!4000832 (= e!2480778 e!2480755)))

(declare-fun res!1625543 () Bool)

(assert (=> b!4000832 (=> res!1625543 e!2480755)))

(declare-fun matchR!5672 (Regex!11695 List!42922) Bool)

(assert (=> b!4000832 (= res!1625543 (not (matchR!5672 (regex!6790 (rule!9822 token!484)) lt!1414880)))))

(assert (=> b!4000832 (isPrefix!3877 lt!1414880 lt!1414868)))

(declare-fun lt!1414878 () Unit!61788)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!710 (List!42922 List!42922 List!42922) Unit!61788)

(assert (=> b!4000832 (= lt!1414878 (lemmaPrefixStaysPrefixWhenAddingToSuffix!710 lt!1414880 prefix!494 newSuffix!27))))

(declare-fun lt!1414874 () Unit!61788)

(assert (=> b!4000832 (= lt!1414874 (lemmaPrefixStaysPrefixWhenAddingToSuffix!710 lt!1414880 prefix!494 suffix!1299))))

(declare-fun b!4000818 () Bool)

(assert (=> b!4000818 (= e!2480774 e!2480777)))

(declare-fun res!1625537 () Bool)

(assert (=> b!4000818 (=> (not res!1625537) (not e!2480777))))

(assert (=> b!4000818 (= res!1625537 (= (maxPrefix!3677 thiss!21717 rules!2999 lt!1414866) lt!1414855))))

(assert (=> b!4000818 (= lt!1414855 (Some!9203 lt!1414883))))

(assert (=> b!4000818 (= lt!1414883 (tuple2!41979 token!484 suffixResult!105))))

(assert (=> b!4000818 (= lt!1414866 (++!11192 prefix!494 suffix!1299))))

(declare-fun res!1625542 () Bool)

(assert (=> start!376508 (=> (not res!1625542) (not e!2480757))))

(assert (=> start!376508 (= res!1625542 ((_ is Lexer!6377) thiss!21717))))

(assert (=> start!376508 e!2480757))

(assert (=> start!376508 e!2480760))

(declare-fun inv!57157 (Token!12718) Bool)

(assert (=> start!376508 (and (inv!57157 token!484) e!2480768)))

(declare-fun e!2480759 () Bool)

(assert (=> start!376508 e!2480759))

(assert (=> start!376508 e!2480769))

(declare-fun e!2480765 () Bool)

(assert (=> start!376508 e!2480765))

(assert (=> start!376508 true))

(declare-fun e!2480771 () Bool)

(assert (=> start!376508 e!2480771))

(declare-fun e!2480753 () Bool)

(assert (=> start!376508 e!2480753))

(declare-fun b!4000833 () Bool)

(declare-fun tp!1217494 () Bool)

(assert (=> b!4000833 (= e!2480753 (and tp_is_empty!20361 tp!1217494))))

(declare-fun b!4000834 () Bool)

(assert (=> b!4000834 (= e!2480755 e!2480756)))

(declare-fun res!1625550 () Bool)

(assert (=> b!4000834 (=> res!1625550 e!2480756)))

(assert (=> b!4000834 (= res!1625550 (not (= lt!1414881 lt!1414866)))))

(assert (=> b!4000834 (= lt!1414881 (++!11192 lt!1414880 lt!1414870))))

(assert (=> b!4000834 (= lt!1414870 (getSuffix!2308 lt!1414866 lt!1414880))))

(assert (=> b!4000834 e!2480754))

(declare-fun res!1625541 () Bool)

(assert (=> b!4000834 (=> (not res!1625541) (not e!2480754))))

(assert (=> b!4000834 (= res!1625541 (isPrefix!3877 lt!1414866 lt!1414866))))

(declare-fun lt!1414862 () Unit!61788)

(declare-fun lemmaIsPrefixRefl!2469 (List!42922 List!42922) Unit!61788)

(assert (=> b!4000834 (= lt!1414862 (lemmaIsPrefixRefl!2469 lt!1414866 lt!1414866))))

(declare-fun b!4000835 () Bool)

(declare-fun tp!1217489 () Bool)

(assert (=> b!4000835 (= e!2480771 (and e!2480761 tp!1217489))))

(declare-fun b!4000836 () Bool)

(declare-fun tp!1217486 () Bool)

(assert (=> b!4000836 (= e!2480765 (and tp_is_empty!20361 tp!1217486))))

(declare-fun b!4000837 () Bool)

(declare-fun tp!1217497 () Bool)

(assert (=> b!4000837 (= e!2480759 (and tp_is_empty!20361 tp!1217497))))

(declare-fun b!4000838 () Bool)

(declare-fun tp!1217488 () Bool)

(assert (=> b!4000838 (= e!2480773 (and tp!1217488 (inv!57153 (tag!7650 (rule!9822 token!484))) (inv!57156 (transformation!6790 (rule!9822 token!484))) e!2480752))))

(declare-fun b!4000839 () Bool)

(declare-fun res!1625538 () Bool)

(assert (=> b!4000839 (=> (not res!1625538) (not e!2480757))))

(assert (=> b!4000839 (= res!1625538 (>= (size!32004 suffix!1299) (size!32004 newSuffix!27)))))

(declare-fun b!4000840 () Bool)

(assert (=> b!4000840 (= e!2480754 (and (= (size!32003 token!484) lt!1414872) (= (originalCharacters!7390 token!484) lt!1414880)))))

(assert (= (and start!376508 res!1625542) b!4000814))

(assert (= (and b!4000814 res!1625546) b!4000827))

(assert (= (and b!4000827 res!1625545) b!4000839))

(assert (= (and b!4000839 res!1625538) b!4000824))

(assert (= (and b!4000824 res!1625548) b!4000813))

(assert (= (and b!4000813 res!1625535) b!4000831))

(assert (= (and b!4000831 res!1625536) b!4000818))

(assert (= (and b!4000818 res!1625537) b!4000817))

(assert (= (and b!4000817 (not res!1625534)) b!4000825))

(assert (= (and b!4000825 (not res!1625540)) b!4000823))

(assert (= (and b!4000823 (not res!1625532)) b!4000816))

(assert (= (and b!4000816 (not res!1625539)) b!4000828))

(assert (= (and b!4000828 (not res!1625549)) b!4000832))

(assert (= (and b!4000832 (not res!1625543)) b!4000834))

(assert (= (and b!4000834 res!1625541) b!4000829))

(assert (= (and b!4000829 res!1625547) b!4000811))

(assert (= (and b!4000811 res!1625544) b!4000840))

(assert (= (and b!4000834 (not res!1625550)) b!4000812))

(assert (= (and b!4000812 (not res!1625533)) b!4000815))

(assert (= (and start!376508 ((_ is Cons!42798) prefix!494)) b!4000819))

(assert (= b!4000838 b!4000826))

(assert (= b!4000821 b!4000838))

(assert (= start!376508 b!4000821))

(assert (= (and start!376508 ((_ is Cons!42798) suffixResult!105)) b!4000837))

(assert (= (and start!376508 ((_ is Cons!42798) suffix!1299)) b!4000822))

(assert (= (and start!376508 ((_ is Cons!42798) newSuffix!27)) b!4000836))

(assert (= b!4000830 b!4000820))

(assert (= b!4000835 b!4000830))

(assert (= (and start!376508 ((_ is Cons!42800) rules!2999)) b!4000835))

(assert (= (and start!376508 ((_ is Cons!42798) newSuffixResult!27)) b!4000833))

(declare-fun m!4583193 () Bool)

(assert (=> b!4000811 m!4583193))

(declare-fun m!4583195 () Bool)

(assert (=> b!4000817 m!4583195))

(declare-fun m!4583197 () Bool)

(assert (=> b!4000817 m!4583197))

(declare-fun m!4583199 () Bool)

(assert (=> b!4000817 m!4583199))

(declare-fun m!4583201 () Bool)

(assert (=> b!4000817 m!4583201))

(declare-fun m!4583203 () Bool)

(assert (=> b!4000813 m!4583203))

(declare-fun m!4583205 () Bool)

(assert (=> b!4000813 m!4583205))

(declare-fun m!4583207 () Bool)

(assert (=> b!4000813 m!4583207))

(assert (=> b!4000813 m!4583207))

(declare-fun m!4583209 () Bool)

(assert (=> b!4000813 m!4583209))

(declare-fun m!4583211 () Bool)

(assert (=> b!4000831 m!4583211))

(declare-fun m!4583213 () Bool)

(assert (=> b!4000831 m!4583213))

(declare-fun m!4583215 () Bool)

(assert (=> b!4000839 m!4583215))

(declare-fun m!4583217 () Bool)

(assert (=> b!4000839 m!4583217))

(declare-fun m!4583219 () Bool)

(assert (=> b!4000815 m!4583219))

(declare-fun m!4583221 () Bool)

(assert (=> b!4000815 m!4583221))

(assert (=> b!4000815 m!4583221))

(declare-fun m!4583223 () Bool)

(assert (=> b!4000815 m!4583223))

(declare-fun m!4583225 () Bool)

(assert (=> b!4000815 m!4583225))

(declare-fun m!4583227 () Bool)

(assert (=> b!4000812 m!4583227))

(declare-fun m!4583229 () Bool)

(assert (=> b!4000812 m!4583229))

(declare-fun m!4583231 () Bool)

(assert (=> b!4000812 m!4583231))

(declare-fun m!4583233 () Bool)

(assert (=> b!4000812 m!4583233))

(declare-fun m!4583235 () Bool)

(assert (=> b!4000816 m!4583235))

(declare-fun m!4583237 () Bool)

(assert (=> b!4000816 m!4583237))

(declare-fun m!4583239 () Bool)

(assert (=> b!4000816 m!4583239))

(declare-fun m!4583241 () Bool)

(assert (=> b!4000816 m!4583241))

(declare-fun m!4583243 () Bool)

(assert (=> b!4000830 m!4583243))

(declare-fun m!4583245 () Bool)

(assert (=> b!4000830 m!4583245))

(declare-fun m!4583247 () Bool)

(assert (=> start!376508 m!4583247))

(declare-fun m!4583249 () Bool)

(assert (=> b!4000814 m!4583249))

(declare-fun m!4583251 () Bool)

(assert (=> b!4000823 m!4583251))

(declare-fun m!4583253 () Bool)

(assert (=> b!4000823 m!4583253))

(declare-fun m!4583255 () Bool)

(assert (=> b!4000823 m!4583255))

(declare-fun m!4583257 () Bool)

(assert (=> b!4000823 m!4583257))

(declare-fun m!4583259 () Bool)

(assert (=> b!4000834 m!4583259))

(declare-fun m!4583261 () Bool)

(assert (=> b!4000834 m!4583261))

(declare-fun m!4583263 () Bool)

(assert (=> b!4000834 m!4583263))

(declare-fun m!4583265 () Bool)

(assert (=> b!4000834 m!4583265))

(declare-fun m!4583267 () Bool)

(assert (=> b!4000825 m!4583267))

(declare-fun m!4583269 () Bool)

(assert (=> b!4000825 m!4583269))

(declare-fun m!4583271 () Bool)

(assert (=> b!4000825 m!4583271))

(declare-fun m!4583273 () Bool)

(assert (=> b!4000825 m!4583273))

(declare-fun m!4583275 () Bool)

(assert (=> b!4000825 m!4583275))

(declare-fun m!4583277 () Bool)

(assert (=> b!4000827 m!4583277))

(declare-fun m!4583279 () Bool)

(assert (=> b!4000838 m!4583279))

(declare-fun m!4583281 () Bool)

(assert (=> b!4000838 m!4583281))

(declare-fun m!4583283 () Bool)

(assert (=> b!4000832 m!4583283))

(declare-fun m!4583285 () Bool)

(assert (=> b!4000832 m!4583285))

(declare-fun m!4583287 () Bool)

(assert (=> b!4000832 m!4583287))

(declare-fun m!4583289 () Bool)

(assert (=> b!4000832 m!4583289))

(declare-fun m!4583291 () Bool)

(assert (=> b!4000828 m!4583291))

(declare-fun m!4583293 () Bool)

(assert (=> b!4000828 m!4583293))

(declare-fun m!4583295 () Bool)

(assert (=> b!4000828 m!4583295))

(declare-fun m!4583297 () Bool)

(assert (=> b!4000828 m!4583297))

(assert (=> b!4000828 m!4583295))

(declare-fun m!4583299 () Bool)

(assert (=> b!4000828 m!4583299))

(declare-fun m!4583301 () Bool)

(assert (=> b!4000828 m!4583301))

(declare-fun m!4583303 () Bool)

(assert (=> b!4000828 m!4583303))

(declare-fun m!4583305 () Bool)

(assert (=> b!4000818 m!4583305))

(declare-fun m!4583307 () Bool)

(assert (=> b!4000818 m!4583307))

(declare-fun m!4583309 () Bool)

(assert (=> b!4000821 m!4583309))

(declare-fun m!4583311 () Bool)

(assert (=> b!4000824 m!4583311))

(check-sat (not b!4000813) (not b!4000835) (not b!4000816) (not b!4000834) b_and!307201 (not b!4000836) (not b!4000821) (not b!4000811) b_and!307199 tp_is_empty!20361 (not b!4000825) (not b_next!111873) (not b!4000815) (not b!4000830) (not b!4000812) (not start!376508) (not b!4000818) (not b_next!111877) (not b!4000831) b_and!307205 (not b_next!111879) (not b!4000833) (not b!4000823) (not b!4000837) (not b!4000819) (not b!4000814) (not b!4000838) (not b!4000839) (not b!4000824) (not b!4000822) b_and!307203 (not b_next!111875) (not b!4000817) (not b!4000828) (not b!4000827) (not b!4000832))
(check-sat (not b_next!111877) b_and!307201 b_and!307199 (not b_next!111873) b_and!307205 (not b_next!111879) b_and!307203 (not b_next!111875))
