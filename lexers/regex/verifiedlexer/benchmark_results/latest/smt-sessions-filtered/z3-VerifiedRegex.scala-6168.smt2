; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297778 () Bool)

(assert start!297778)

(declare-fun b!3179804 () Bool)

(declare-fun b_free!83801 () Bool)

(declare-fun b_next!84505 () Bool)

(assert (=> b!3179804 (= b_free!83801 (not b_next!84505))))

(declare-fun tp!1006072 () Bool)

(declare-fun b_and!210131 () Bool)

(assert (=> b!3179804 (= tp!1006072 b_and!210131)))

(declare-fun b_free!83803 () Bool)

(declare-fun b_next!84507 () Bool)

(assert (=> b!3179804 (= b_free!83803 (not b_next!84507))))

(declare-fun tp!1006064 () Bool)

(declare-fun b_and!210133 () Bool)

(assert (=> b!3179804 (= tp!1006064 b_and!210133)))

(declare-fun b!3179806 () Bool)

(declare-fun b_free!83805 () Bool)

(declare-fun b_next!84509 () Bool)

(assert (=> b!3179806 (= b_free!83805 (not b_next!84509))))

(declare-fun tp!1006066 () Bool)

(declare-fun b_and!210135 () Bool)

(assert (=> b!3179806 (= tp!1006066 b_and!210135)))

(declare-fun b_free!83807 () Bool)

(declare-fun b_next!84511 () Bool)

(assert (=> b!3179806 (= b_free!83807 (not b_next!84511))))

(declare-fun tp!1006061 () Bool)

(declare-fun b_and!210137 () Bool)

(assert (=> b!3179806 (= tp!1006061 b_and!210137)))

(declare-fun b!3179807 () Bool)

(declare-fun b_free!83809 () Bool)

(declare-fun b_next!84513 () Bool)

(assert (=> b!3179807 (= b_free!83809 (not b_next!84513))))

(declare-fun tp!1006070 () Bool)

(declare-fun b_and!210139 () Bool)

(assert (=> b!3179807 (= tp!1006070 b_and!210139)))

(declare-fun b_free!83811 () Bool)

(declare-fun b_next!84515 () Bool)

(assert (=> b!3179807 (= b_free!83811 (not b_next!84515))))

(declare-fun tp!1006068 () Bool)

(declare-fun b_and!210141 () Bool)

(assert (=> b!3179807 (= tp!1006068 b_and!210141)))

(declare-datatypes ((C!19936 0))(
  ( (C!19937 (val!12016 Int)) )
))
(declare-datatypes ((Regex!9875 0))(
  ( (ElementMatch!9875 (c!534122 C!19936)) (Concat!15221 (regOne!20262 Regex!9875) (regTwo!20262 Regex!9875)) (EmptyExpr!9875) (Star!9875 (reg!10204 Regex!9875)) (EmptyLang!9875) (Union!9875 (regOne!20263 Regex!9875) (regTwo!20263 Regex!9875)) )
))
(declare-datatypes ((List!35842 0))(
  ( (Nil!35718) (Cons!35718 (h!41138 (_ BitVec 16)) (t!235025 List!35842)) )
))
(declare-datatypes ((TokenValue!5346 0))(
  ( (FloatLiteralValue!10692 (text!37867 List!35842)) (TokenValueExt!5345 (__x!22909 Int)) (Broken!26730 (value!166240 List!35842)) (Object!5469) (End!5346) (Def!5346) (Underscore!5346) (Match!5346) (Else!5346) (Error!5346) (Case!5346) (If!5346) (Extends!5346) (Abstract!5346) (Class!5346) (Val!5346) (DelimiterValue!10692 (del!5406 List!35842)) (KeywordValue!5352 (value!166241 List!35842)) (CommentValue!10692 (value!166242 List!35842)) (WhitespaceValue!10692 (value!166243 List!35842)) (IndentationValue!5346 (value!166244 List!35842)) (String!40063) (Int32!5346) (Broken!26731 (value!166245 List!35842)) (Boolean!5347) (Unit!50129) (OperatorValue!5349 (op!5406 List!35842)) (IdentifierValue!10692 (value!166246 List!35842)) (IdentifierValue!10693 (value!166247 List!35842)) (WhitespaceValue!10693 (value!166248 List!35842)) (True!10692) (False!10692) (Broken!26732 (value!166249 List!35842)) (Broken!26733 (value!166250 List!35842)) (True!10693) (RightBrace!5346) (RightBracket!5346) (Colon!5346) (Null!5346) (Comma!5346) (LeftBracket!5346) (False!10693) (LeftBrace!5346) (ImaginaryLiteralValue!5346 (text!37868 List!35842)) (StringLiteralValue!16038 (value!166251 List!35842)) (EOFValue!5346 (value!166252 List!35842)) (IdentValue!5346 (value!166253 List!35842)) (DelimiterValue!10693 (value!166254 List!35842)) (DedentValue!5346 (value!166255 List!35842)) (NewLineValue!5346 (value!166256 List!35842)) (IntegerValue!16038 (value!166257 (_ BitVec 32)) (text!37869 List!35842)) (IntegerValue!16039 (value!166258 Int) (text!37870 List!35842)) (Times!5346) (Or!5346) (Equal!5346) (Minus!5346) (Broken!26734 (value!166259 List!35842)) (And!5346) (Div!5346) (LessEqual!5346) (Mod!5346) (Concat!15222) (Not!5346) (Plus!5346) (SpaceValue!5346 (value!166260 List!35842)) (IntegerValue!16040 (value!166261 Int) (text!37871 List!35842)) (StringLiteralValue!16039 (text!37872 List!35842)) (FloatLiteralValue!10693 (text!37873 List!35842)) (BytesLiteralValue!5346 (value!166262 List!35842)) (CommentValue!10693 (value!166263 List!35842)) (StringLiteralValue!16040 (value!166264 List!35842)) (ErrorTokenValue!5346 (msg!5407 List!35842)) )
))
(declare-datatypes ((List!35843 0))(
  ( (Nil!35719) (Cons!35719 (h!41139 C!19936) (t!235026 List!35843)) )
))
(declare-datatypes ((IArray!21219 0))(
  ( (IArray!21220 (innerList!10667 List!35843)) )
))
(declare-datatypes ((Conc!10607 0))(
  ( (Node!10607 (left!27779 Conc!10607) (right!28109 Conc!10607) (csize!21444 Int) (cheight!10818 Int)) (Leaf!16776 (xs!13725 IArray!21219) (csize!21445 Int)) (Empty!10607) )
))
(declare-datatypes ((BalanceConc!20828 0))(
  ( (BalanceConc!20829 (c!534123 Conc!10607)) )
))
(declare-datatypes ((String!40064 0))(
  ( (String!40065 (value!166265 String)) )
))
(declare-datatypes ((TokenValueInjection!10120 0))(
  ( (TokenValueInjection!10121 (toValue!7176 Int) (toChars!7035 Int)) )
))
(declare-datatypes ((Rule!10032 0))(
  ( (Rule!10033 (regex!5116 Regex!9875) (tag!5620 String!40064) (isSeparator!5116 Bool) (transformation!5116 TokenValueInjection!10120)) )
))
(declare-datatypes ((Token!9598 0))(
  ( (Token!9599 (value!166266 TokenValue!5346) (rule!7526 Rule!10032) (size!26954 Int) (originalCharacters!5830 List!35843)) )
))
(declare-fun separatorToken!241 () Token!9598)

(declare-fun b!3179796 () Bool)

(declare-fun e!1980972 () Bool)

(declare-fun e!1980989 () Bool)

(declare-fun tp!1006065 () Bool)

(declare-fun inv!48566 (String!40064) Bool)

(declare-fun inv!48569 (TokenValueInjection!10120) Bool)

(assert (=> b!3179796 (= e!1980972 (and tp!1006065 (inv!48566 (tag!5620 (rule!7526 separatorToken!241))) (inv!48569 (transformation!5116 (rule!7526 separatorToken!241))) e!1980989))))

(declare-datatypes ((List!35844 0))(
  ( (Nil!35720) (Cons!35720 (h!41140 Token!9598) (t!235027 List!35844)) )
))
(declare-fun tokens!494 () List!35844)

(declare-fun e!1980992 () Bool)

(declare-fun tp!1006063 () Bool)

(declare-fun e!1980983 () Bool)

(declare-fun b!3179797 () Bool)

(assert (=> b!3179797 (= e!1980983 (and tp!1006063 (inv!48566 (tag!5620 (rule!7526 (h!41140 tokens!494)))) (inv!48569 (transformation!5116 (rule!7526 (h!41140 tokens!494)))) e!1980992))))

(declare-fun b!3179798 () Bool)

(declare-fun e!1980978 () Bool)

(declare-fun e!1980984 () Bool)

(assert (=> b!3179798 (= e!1980978 e!1980984)))

(declare-fun res!1292182 () Bool)

(assert (=> b!3179798 (=> (not res!1292182) (not e!1980984))))

(declare-datatypes ((IArray!21221 0))(
  ( (IArray!21222 (innerList!10668 List!35844)) )
))
(declare-datatypes ((Conc!10608 0))(
  ( (Node!10608 (left!27780 Conc!10608) (right!28110 Conc!10608) (csize!21446 Int) (cheight!10819 Int)) (Leaf!16777 (xs!13726 IArray!21221) (csize!21447 Int)) (Empty!10608) )
))
(declare-datatypes ((BalanceConc!20830 0))(
  ( (BalanceConc!20831 (c!534124 Conc!10608)) )
))
(declare-fun lt!1068842 () BalanceConc!20830)

(declare-datatypes ((LexerInterface!4705 0))(
  ( (LexerInterfaceExt!4702 (__x!22910 Int)) (Lexer!4703) )
))
(declare-fun thiss!18206 () LexerInterface!4705)

(declare-datatypes ((List!35845 0))(
  ( (Nil!35721) (Cons!35721 (h!41141 Rule!10032) (t!235028 List!35845)) )
))
(declare-fun rules!2135 () List!35845)

(declare-fun rulesProduceEachTokenIndividually!1156 (LexerInterface!4705 List!35845 BalanceConc!20830) Bool)

(assert (=> b!3179798 (= res!1292182 (rulesProduceEachTokenIndividually!1156 thiss!18206 rules!2135 lt!1068842))))

(declare-fun seqFromList!3311 (List!35844) BalanceConc!20830)

(assert (=> b!3179798 (= lt!1068842 (seqFromList!3311 tokens!494))))

(declare-fun tp!1006067 () Bool)

(declare-fun e!1980970 () Bool)

(declare-fun e!1980988 () Bool)

(declare-fun b!3179799 () Bool)

(declare-fun inv!48570 (Token!9598) Bool)

(assert (=> b!3179799 (= e!1980970 (and (inv!48570 (h!41140 tokens!494)) e!1980988 tp!1006067))))

(declare-fun b!3179800 () Bool)

(declare-fun res!1292195 () Bool)

(assert (=> b!3179800 (=> (not res!1292195) (not e!1980984))))

(assert (=> b!3179800 (= res!1292195 (isSeparator!5116 (rule!7526 separatorToken!241)))))

(declare-fun b!3179801 () Bool)

(declare-fun res!1292183 () Bool)

(assert (=> b!3179801 (=> (not res!1292183) (not e!1980984))))

(declare-fun lambda!116373 () Int)

(declare-fun forall!7226 (List!35844 Int) Bool)

(assert (=> b!3179801 (= res!1292183 (forall!7226 tokens!494 lambda!116373))))

(declare-fun b!3179802 () Bool)

(declare-fun res!1292186 () Bool)

(assert (=> b!3179802 (=> (not res!1292186) (not e!1980978))))

(declare-fun isEmpty!19827 (List!35845) Bool)

(assert (=> b!3179802 (= res!1292186 (not (isEmpty!19827 rules!2135)))))

(declare-fun res!1292181 () Bool)

(assert (=> start!297778 (=> (not res!1292181) (not e!1980978))))

(get-info :version)

(assert (=> start!297778 (= res!1292181 ((_ is Lexer!4703) thiss!18206))))

(assert (=> start!297778 e!1980978))

(assert (=> start!297778 true))

(declare-fun e!1980985 () Bool)

(assert (=> start!297778 e!1980985))

(declare-fun e!1980986 () Bool)

(assert (=> start!297778 (and (inv!48570 separatorToken!241) e!1980986)))

(assert (=> start!297778 e!1980970))

(declare-fun b!3179803 () Bool)

(declare-fun e!1980987 () Bool)

(assert (=> b!3179803 (= e!1980984 (not e!1980987))))

(declare-fun res!1292185 () Bool)

(assert (=> b!3179803 (=> res!1292185 e!1980987)))

(declare-fun lt!1068846 () List!35843)

(declare-fun lt!1068845 () List!35843)

(assert (=> b!3179803 (= res!1292185 (not (= lt!1068846 lt!1068845)))))

(declare-fun printList!1259 (LexerInterface!4705 List!35844) List!35843)

(assert (=> b!3179803 (= lt!1068845 (printList!1259 thiss!18206 (Cons!35720 (h!41140 tokens!494) Nil!35720)))))

(declare-fun lt!1068835 () BalanceConc!20828)

(declare-fun list!12673 (BalanceConc!20828) List!35843)

(assert (=> b!3179803 (= lt!1068846 (list!12673 lt!1068835))))

(declare-fun lt!1068843 () BalanceConc!20830)

(declare-fun printTailRec!1204 (LexerInterface!4705 BalanceConc!20830 Int BalanceConc!20828) BalanceConc!20828)

(assert (=> b!3179803 (= lt!1068835 (printTailRec!1204 thiss!18206 lt!1068843 0 (BalanceConc!20829 Empty!10607)))))

(declare-fun print!1772 (LexerInterface!4705 BalanceConc!20830) BalanceConc!20828)

(assert (=> b!3179803 (= lt!1068835 (print!1772 thiss!18206 lt!1068843))))

(declare-fun singletonSeq!2212 (Token!9598) BalanceConc!20830)

(assert (=> b!3179803 (= lt!1068843 (singletonSeq!2212 (h!41140 tokens!494)))))

(assert (=> b!3179804 (= e!1980989 (and tp!1006072 tp!1006064))))

(declare-fun b!3179805 () Bool)

(declare-fun e!1980981 () Bool)

(declare-fun tp!1006060 () Bool)

(assert (=> b!3179805 (= e!1980985 (and e!1980981 tp!1006060))))

(declare-fun e!1980977 () Bool)

(assert (=> b!3179806 (= e!1980977 (and tp!1006066 tp!1006061))))

(assert (=> b!3179807 (= e!1980992 (and tp!1006070 tp!1006068))))

(declare-fun b!3179808 () Bool)

(declare-fun res!1292187 () Bool)

(assert (=> b!3179808 (=> (not res!1292187) (not e!1980978))))

(declare-fun rulesInvariant!4102 (LexerInterface!4705 List!35845) Bool)

(assert (=> b!3179808 (= res!1292187 (rulesInvariant!4102 thiss!18206 rules!2135))))

(declare-fun tp!1006069 () Bool)

(declare-fun b!3179809 () Bool)

(declare-fun inv!21 (TokenValue!5346) Bool)

(assert (=> b!3179809 (= e!1980988 (and (inv!21 (value!166266 (h!41140 tokens!494))) e!1980983 tp!1006069))))

(declare-fun tp!1006062 () Bool)

(declare-fun b!3179810 () Bool)

(assert (=> b!3179810 (= e!1980986 (and (inv!21 (value!166266 separatorToken!241)) e!1980972 tp!1006062))))

(declare-fun b!3179811 () Bool)

(declare-fun res!1292179 () Bool)

(declare-fun e!1980990 () Bool)

(assert (=> b!3179811 (=> res!1292179 e!1980990)))

(declare-fun rulesProduceIndividualToken!2197 (LexerInterface!4705 List!35845 Token!9598) Bool)

(assert (=> b!3179811 (= res!1292179 (not (rulesProduceIndividualToken!2197 thiss!18206 rules!2135 (h!41140 tokens!494))))))

(declare-fun b!3179812 () Bool)

(declare-fun e!1980968 () Bool)

(declare-fun e!1980971 () Bool)

(assert (=> b!3179812 (= e!1980968 e!1980971)))

(declare-fun res!1292177 () Bool)

(assert (=> b!3179812 (=> (not res!1292177) (not e!1980971))))

(declare-fun lt!1068838 () Rule!10032)

(declare-fun lt!1068851 () List!35843)

(declare-fun matchR!4533 (Regex!9875 List!35843) Bool)

(assert (=> b!3179812 (= res!1292177 (matchR!4533 (regex!5116 lt!1068838) lt!1068851))))

(declare-datatypes ((Option!6963 0))(
  ( (None!6962) (Some!6962 (v!35402 Rule!10032)) )
))
(declare-fun lt!1068836 () Option!6963)

(declare-fun get!11355 (Option!6963) Rule!10032)

(assert (=> b!3179812 (= lt!1068838 (get!11355 lt!1068836))))

(declare-fun b!3179813 () Bool)

(declare-fun e!1980976 () Bool)

(declare-fun e!1980980 () Bool)

(assert (=> b!3179813 (= e!1980976 e!1980980)))

(declare-fun res!1292192 () Bool)

(assert (=> b!3179813 (=> res!1292192 e!1980980)))

(assert (=> b!3179813 (= res!1292192 (isSeparator!5116 (rule!7526 (h!41140 tokens!494))))))

(declare-datatypes ((Unit!50130 0))(
  ( (Unit!50131) )
))
(declare-fun lt!1068847 () Unit!50130)

(declare-fun forallContained!1099 (List!35844 Int Token!9598) Unit!50130)

(assert (=> b!3179813 (= lt!1068847 (forallContained!1099 tokens!494 lambda!116373 (h!41140 tokens!494)))))

(declare-fun b!3179814 () Bool)

(declare-fun res!1292188 () Bool)

(assert (=> b!3179814 (=> (not res!1292188) (not e!1980984))))

(declare-fun sepAndNonSepRulesDisjointChars!1310 (List!35845 List!35845) Bool)

(assert (=> b!3179814 (= res!1292188 (sepAndNonSepRulesDisjointChars!1310 rules!2135 rules!2135))))

(declare-fun b!3179815 () Bool)

(assert (=> b!3179815 (= e!1980971 (= (rule!7526 separatorToken!241) lt!1068838))))

(declare-fun b!3179816 () Bool)

(declare-fun res!1292178 () Bool)

(assert (=> b!3179816 (=> (not res!1292178) (not e!1980984))))

(assert (=> b!3179816 (= res!1292178 (and (not ((_ is Nil!35720) tokens!494)) ((_ is Nil!35720) (t!235027 tokens!494))))))

(declare-fun b!3179817 () Bool)

(declare-fun e!1980975 () Bool)

(assert (=> b!3179817 (= e!1980975 (not (= lt!1068851 Nil!35719)))))

(declare-fun lt!1068841 () List!35843)

(declare-fun usedCharacters!460 (Regex!9875) List!35843)

(assert (=> b!3179817 (= lt!1068841 (usedCharacters!460 (regex!5116 (rule!7526 separatorToken!241))))))

(declare-fun lt!1068834 () BalanceConc!20828)

(declare-fun lt!1068848 () List!35843)

(declare-datatypes ((tuple2!35046 0))(
  ( (tuple2!35047 (_1!20657 Token!9598) (_2!20657 List!35843)) )
))
(declare-datatypes ((Option!6964 0))(
  ( (None!6963) (Some!6963 (v!35403 tuple2!35046)) )
))
(declare-fun maxPrefixOneRule!1510 (LexerInterface!4705 Rule!10032 List!35843) Option!6964)

(declare-fun apply!8024 (TokenValueInjection!10120 BalanceConc!20828) TokenValue!5346)

(declare-fun size!26955 (List!35843) Int)

(assert (=> b!3179817 (= (maxPrefixOneRule!1510 thiss!18206 (rule!7526 (h!41140 tokens!494)) lt!1068848) (Some!6963 (tuple2!35047 (Token!9599 (apply!8024 (transformation!5116 (rule!7526 (h!41140 tokens!494))) lt!1068834) (rule!7526 (h!41140 tokens!494)) (size!26955 lt!1068848) lt!1068848) Nil!35719)))))

(declare-fun lt!1068852 () Unit!50130)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!623 (LexerInterface!4705 List!35845 List!35843 List!35843 List!35843 Rule!10032) Unit!50130)

(assert (=> b!3179817 (= lt!1068852 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!623 thiss!18206 rules!2135 lt!1068848 lt!1068848 Nil!35719 (rule!7526 (h!41140 tokens!494))))))

(assert (=> b!3179817 e!1980968))

(declare-fun res!1292189 () Bool)

(assert (=> b!3179817 (=> (not res!1292189) (not e!1980968))))

(declare-fun isDefined!5460 (Option!6963) Bool)

(assert (=> b!3179817 (= res!1292189 (isDefined!5460 lt!1068836))))

(declare-fun getRuleFromTag!845 (LexerInterface!4705 List!35845 String!40064) Option!6963)

(assert (=> b!3179817 (= lt!1068836 (getRuleFromTag!845 thiss!18206 rules!2135 (tag!5620 (rule!7526 separatorToken!241))))))

(declare-fun lt!1068837 () Unit!50130)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!845 (LexerInterface!4705 List!35845 List!35843 Token!9598) Unit!50130)

(assert (=> b!3179817 (= lt!1068837 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!845 thiss!18206 rules!2135 lt!1068851 separatorToken!241))))

(declare-fun e!1980979 () Bool)

(assert (=> b!3179817 e!1980979))

(declare-fun res!1292191 () Bool)

(assert (=> b!3179817 (=> (not res!1292191) (not e!1980979))))

(declare-fun lt!1068850 () Option!6963)

(assert (=> b!3179817 (= res!1292191 (isDefined!5460 lt!1068850))))

(assert (=> b!3179817 (= lt!1068850 (getRuleFromTag!845 thiss!18206 rules!2135 (tag!5620 (rule!7526 (h!41140 tokens!494)))))))

(declare-fun lt!1068839 () Unit!50130)

(assert (=> b!3179817 (= lt!1068839 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!845 thiss!18206 rules!2135 lt!1068848 (h!41140 tokens!494)))))

(declare-fun lt!1068849 () Unit!50130)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!766 (LexerInterface!4705 List!35845 List!35844 Token!9598) Unit!50130)

(assert (=> b!3179817 (= lt!1068849 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!766 thiss!18206 rules!2135 tokens!494 (h!41140 tokens!494)))))

(declare-fun isEmpty!19828 (List!35843) Bool)

(declare-fun getSuffix!1332 (List!35843 List!35843) List!35843)

(assert (=> b!3179817 (isEmpty!19828 (getSuffix!1332 lt!1068848 lt!1068848))))

(declare-fun lt!1068833 () Unit!50130)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!10 (List!35843) Unit!50130)

(assert (=> b!3179817 (= lt!1068833 (lemmaGetSuffixOnListWithItSelfIsEmpty!10 lt!1068848))))

(declare-fun b!3179818 () Bool)

(assert (=> b!3179818 (= e!1980990 e!1980976)))

(declare-fun res!1292193 () Bool)

(assert (=> b!3179818 (=> res!1292193 e!1980976)))

(declare-fun isEmpty!19829 (BalanceConc!20830) Bool)

(declare-datatypes ((tuple2!35048 0))(
  ( (tuple2!35049 (_1!20658 BalanceConc!20830) (_2!20658 BalanceConc!20828)) )
))
(declare-fun lex!2045 (LexerInterface!4705 List!35845 BalanceConc!20828) tuple2!35048)

(assert (=> b!3179818 (= res!1292193 (isEmpty!19829 (_1!20658 (lex!2045 thiss!18206 rules!2135 lt!1068834))))))

(declare-fun seqFromList!3312 (List!35843) BalanceConc!20828)

(assert (=> b!3179818 (= lt!1068834 (seqFromList!3312 lt!1068848))))

(declare-fun b!3179819 () Bool)

(assert (=> b!3179819 (= e!1980980 e!1980975)))

(declare-fun res!1292190 () Bool)

(assert (=> b!3179819 (=> res!1292190 e!1980975)))

(declare-fun lt!1068844 () BalanceConc!20828)

(declare-fun ++!8536 (List!35843 List!35843) List!35843)

(assert (=> b!3179819 (= res!1292190 (not (= (list!12673 lt!1068844) (++!8536 lt!1068848 lt!1068851))))))

(declare-fun charsOf!3138 (Token!9598) BalanceConc!20828)

(assert (=> b!3179819 (= lt!1068851 (list!12673 (charsOf!3138 separatorToken!241)))))

(declare-fun printWithSeparatorToken!14 (LexerInterface!4705 BalanceConc!20830 Token!9598) BalanceConc!20828)

(assert (=> b!3179819 (= lt!1068844 (printWithSeparatorToken!14 thiss!18206 lt!1068842 separatorToken!241))))

(declare-fun b!3179820 () Bool)

(declare-fun res!1292180 () Bool)

(assert (=> b!3179820 (=> (not res!1292180) (not e!1980984))))

(assert (=> b!3179820 (= res!1292180 (rulesProduceIndividualToken!2197 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun tp!1006071 () Bool)

(declare-fun b!3179821 () Bool)

(assert (=> b!3179821 (= e!1980981 (and tp!1006071 (inv!48566 (tag!5620 (h!41141 rules!2135))) (inv!48569 (transformation!5116 (h!41141 rules!2135))) e!1980977))))

(declare-fun b!3179822 () Bool)

(declare-fun e!1980973 () Bool)

(declare-fun lt!1068840 () Rule!10032)

(assert (=> b!3179822 (= e!1980973 (= (rule!7526 (h!41140 tokens!494)) lt!1068840))))

(declare-fun b!3179823 () Bool)

(assert (=> b!3179823 (= e!1980979 e!1980973)))

(declare-fun res!1292194 () Bool)

(assert (=> b!3179823 (=> (not res!1292194) (not e!1980973))))

(assert (=> b!3179823 (= res!1292194 (matchR!4533 (regex!5116 lt!1068840) lt!1068848))))

(assert (=> b!3179823 (= lt!1068840 (get!11355 lt!1068850))))

(declare-fun b!3179824 () Bool)

(assert (=> b!3179824 (= e!1980987 e!1980990)))

(declare-fun res!1292184 () Bool)

(assert (=> b!3179824 (=> res!1292184 e!1980990)))

(assert (=> b!3179824 (= res!1292184 (or (not (= lt!1068845 lt!1068848)) (not (= lt!1068846 lt!1068848))))))

(assert (=> b!3179824 (= lt!1068848 (list!12673 (charsOf!3138 (h!41140 tokens!494))))))

(assert (= (and start!297778 res!1292181) b!3179802))

(assert (= (and b!3179802 res!1292186) b!3179808))

(assert (= (and b!3179808 res!1292187) b!3179798))

(assert (= (and b!3179798 res!1292182) b!3179820))

(assert (= (and b!3179820 res!1292180) b!3179800))

(assert (= (and b!3179800 res!1292195) b!3179801))

(assert (= (and b!3179801 res!1292183) b!3179814))

(assert (= (and b!3179814 res!1292188) b!3179816))

(assert (= (and b!3179816 res!1292178) b!3179803))

(assert (= (and b!3179803 (not res!1292185)) b!3179824))

(assert (= (and b!3179824 (not res!1292184)) b!3179811))

(assert (= (and b!3179811 (not res!1292179)) b!3179818))

(assert (= (and b!3179818 (not res!1292193)) b!3179813))

(assert (= (and b!3179813 (not res!1292192)) b!3179819))

(assert (= (and b!3179819 (not res!1292190)) b!3179817))

(assert (= (and b!3179817 res!1292191) b!3179823))

(assert (= (and b!3179823 res!1292194) b!3179822))

(assert (= (and b!3179817 res!1292189) b!3179812))

(assert (= (and b!3179812 res!1292177) b!3179815))

(assert (= b!3179821 b!3179806))

(assert (= b!3179805 b!3179821))

(assert (= (and start!297778 ((_ is Cons!35721) rules!2135)) b!3179805))

(assert (= b!3179796 b!3179804))

(assert (= b!3179810 b!3179796))

(assert (= start!297778 b!3179810))

(assert (= b!3179797 b!3179807))

(assert (= b!3179809 b!3179797))

(assert (= b!3179799 b!3179809))

(assert (= (and start!297778 ((_ is Cons!35720) tokens!494)) b!3179799))

(declare-fun m!3436321 () Bool)

(assert (=> b!3179824 m!3436321))

(assert (=> b!3179824 m!3436321))

(declare-fun m!3436323 () Bool)

(assert (=> b!3179824 m!3436323))

(declare-fun m!3436325 () Bool)

(assert (=> b!3179810 m!3436325))

(declare-fun m!3436327 () Bool)

(assert (=> b!3179819 m!3436327))

(declare-fun m!3436329 () Bool)

(assert (=> b!3179819 m!3436329))

(declare-fun m!3436331 () Bool)

(assert (=> b!3179819 m!3436331))

(declare-fun m!3436333 () Bool)

(assert (=> b!3179819 m!3436333))

(assert (=> b!3179819 m!3436327))

(declare-fun m!3436335 () Bool)

(assert (=> b!3179819 m!3436335))

(declare-fun m!3436337 () Bool)

(assert (=> b!3179809 m!3436337))

(declare-fun m!3436339 () Bool)

(assert (=> b!3179813 m!3436339))

(declare-fun m!3436341 () Bool)

(assert (=> b!3179798 m!3436341))

(declare-fun m!3436343 () Bool)

(assert (=> b!3179798 m!3436343))

(declare-fun m!3436345 () Bool)

(assert (=> b!3179814 m!3436345))

(declare-fun m!3436347 () Bool)

(assert (=> b!3179811 m!3436347))

(declare-fun m!3436349 () Bool)

(assert (=> b!3179799 m!3436349))

(declare-fun m!3436351 () Bool)

(assert (=> b!3179801 m!3436351))

(declare-fun m!3436353 () Bool)

(assert (=> b!3179823 m!3436353))

(declare-fun m!3436355 () Bool)

(assert (=> b!3179823 m!3436355))

(declare-fun m!3436357 () Bool)

(assert (=> b!3179802 m!3436357))

(declare-fun m!3436359 () Bool)

(assert (=> b!3179818 m!3436359))

(declare-fun m!3436361 () Bool)

(assert (=> b!3179818 m!3436361))

(declare-fun m!3436363 () Bool)

(assert (=> b!3179818 m!3436363))

(declare-fun m!3436365 () Bool)

(assert (=> b!3179821 m!3436365))

(declare-fun m!3436367 () Bool)

(assert (=> b!3179821 m!3436367))

(declare-fun m!3436369 () Bool)

(assert (=> start!297778 m!3436369))

(declare-fun m!3436371 () Bool)

(assert (=> b!3179820 m!3436371))

(declare-fun m!3436373 () Bool)

(assert (=> b!3179796 m!3436373))

(declare-fun m!3436375 () Bool)

(assert (=> b!3179796 m!3436375))

(declare-fun m!3436377 () Bool)

(assert (=> b!3179817 m!3436377))

(declare-fun m!3436379 () Bool)

(assert (=> b!3179817 m!3436379))

(declare-fun m!3436381 () Bool)

(assert (=> b!3179817 m!3436381))

(declare-fun m!3436383 () Bool)

(assert (=> b!3179817 m!3436383))

(assert (=> b!3179817 m!3436379))

(declare-fun m!3436385 () Bool)

(assert (=> b!3179817 m!3436385))

(declare-fun m!3436387 () Bool)

(assert (=> b!3179817 m!3436387))

(declare-fun m!3436389 () Bool)

(assert (=> b!3179817 m!3436389))

(declare-fun m!3436391 () Bool)

(assert (=> b!3179817 m!3436391))

(declare-fun m!3436393 () Bool)

(assert (=> b!3179817 m!3436393))

(declare-fun m!3436395 () Bool)

(assert (=> b!3179817 m!3436395))

(declare-fun m!3436397 () Bool)

(assert (=> b!3179817 m!3436397))

(declare-fun m!3436399 () Bool)

(assert (=> b!3179817 m!3436399))

(declare-fun m!3436401 () Bool)

(assert (=> b!3179817 m!3436401))

(declare-fun m!3436403 () Bool)

(assert (=> b!3179817 m!3436403))

(declare-fun m!3436405 () Bool)

(assert (=> b!3179817 m!3436405))

(declare-fun m!3436407 () Bool)

(assert (=> b!3179812 m!3436407))

(declare-fun m!3436409 () Bool)

(assert (=> b!3179812 m!3436409))

(declare-fun m!3436411 () Bool)

(assert (=> b!3179808 m!3436411))

(declare-fun m!3436413 () Bool)

(assert (=> b!3179803 m!3436413))

(declare-fun m!3436415 () Bool)

(assert (=> b!3179803 m!3436415))

(declare-fun m!3436417 () Bool)

(assert (=> b!3179803 m!3436417))

(declare-fun m!3436419 () Bool)

(assert (=> b!3179803 m!3436419))

(declare-fun m!3436421 () Bool)

(assert (=> b!3179803 m!3436421))

(declare-fun m!3436423 () Bool)

(assert (=> b!3179797 m!3436423))

(declare-fun m!3436425 () Bool)

(assert (=> b!3179797 m!3436425))

(check-sat (not b_next!84515) b_and!210135 (not b!3179811) (not b!3179824) b_and!210139 (not b!3179823) (not b!3179803) (not b!3179812) (not b!3179818) (not b_next!84507) b_and!210133 (not b!3179799) (not b!3179797) (not b_next!84511) (not b_next!84509) (not b!3179805) (not b!3179820) (not b!3179810) b_and!210131 (not b!3179802) (not b_next!84513) (not b!3179813) (not b!3179817) b_and!210141 b_and!210137 (not b!3179809) (not b!3179796) (not b!3179819) (not b!3179821) (not b!3179798) (not start!297778) (not b_next!84505) (not b!3179814) (not b!3179808) (not b!3179801))
(check-sat (not b_next!84515) b_and!210135 b_and!210131 (not b_next!84513) b_and!210139 b_and!210141 b_and!210137 (not b_next!84507) b_and!210133 (not b_next!84505) (not b_next!84511) (not b_next!84509))
(get-model)

(declare-fun b!3179858 () Bool)

(declare-fun e!1981015 () Bool)

(declare-fun inv!16 (TokenValue!5346) Bool)

(assert (=> b!3179858 (= e!1981015 (inv!16 (value!166266 separatorToken!241)))))

(declare-fun b!3179859 () Bool)

(declare-fun e!1981016 () Bool)

(declare-fun inv!17 (TokenValue!5346) Bool)

(assert (=> b!3179859 (= e!1981016 (inv!17 (value!166266 separatorToken!241)))))

(declare-fun b!3179860 () Bool)

(declare-fun e!1981014 () Bool)

(declare-fun inv!15 (TokenValue!5346) Bool)

(assert (=> b!3179860 (= e!1981014 (inv!15 (value!166266 separatorToken!241)))))

(declare-fun b!3179861 () Bool)

(declare-fun res!1292213 () Bool)

(assert (=> b!3179861 (=> res!1292213 e!1981014)))

(assert (=> b!3179861 (= res!1292213 (not ((_ is IntegerValue!16040) (value!166266 separatorToken!241))))))

(assert (=> b!3179861 (= e!1981016 e!1981014)))

(declare-fun b!3179862 () Bool)

(assert (=> b!3179862 (= e!1981015 e!1981016)))

(declare-fun c!534136 () Bool)

(assert (=> b!3179862 (= c!534136 ((_ is IntegerValue!16039) (value!166266 separatorToken!241)))))

(declare-fun d!870171 () Bool)

(declare-fun c!534135 () Bool)

(assert (=> d!870171 (= c!534135 ((_ is IntegerValue!16038) (value!166266 separatorToken!241)))))

(assert (=> d!870171 (= (inv!21 (value!166266 separatorToken!241)) e!1981015)))

(assert (= (and d!870171 c!534135) b!3179858))

(assert (= (and d!870171 (not c!534135)) b!3179862))

(assert (= (and b!3179862 c!534136) b!3179859))

(assert (= (and b!3179862 (not c!534136)) b!3179861))

(assert (= (and b!3179861 (not res!1292213)) b!3179860))

(declare-fun m!3436447 () Bool)

(assert (=> b!3179858 m!3436447))

(declare-fun m!3436449 () Bool)

(assert (=> b!3179859 m!3436449))

(declare-fun m!3436451 () Bool)

(assert (=> b!3179860 m!3436451))

(assert (=> b!3179810 d!870171))

(declare-fun d!870173 () Bool)

(declare-fun res!1292218 () Bool)

(declare-fun e!1981019 () Bool)

(assert (=> d!870173 (=> (not res!1292218) (not e!1981019))))

(assert (=> d!870173 (= res!1292218 (not (isEmpty!19828 (originalCharacters!5830 (h!41140 tokens!494)))))))

(assert (=> d!870173 (= (inv!48570 (h!41140 tokens!494)) e!1981019)))

(declare-fun b!3179867 () Bool)

(declare-fun res!1292219 () Bool)

(assert (=> b!3179867 (=> (not res!1292219) (not e!1981019))))

(declare-fun dynLambda!14388 (Int TokenValue!5346) BalanceConc!20828)

(assert (=> b!3179867 (= res!1292219 (= (originalCharacters!5830 (h!41140 tokens!494)) (list!12673 (dynLambda!14388 (toChars!7035 (transformation!5116 (rule!7526 (h!41140 tokens!494)))) (value!166266 (h!41140 tokens!494))))))))

(declare-fun b!3179868 () Bool)

(assert (=> b!3179868 (= e!1981019 (= (size!26954 (h!41140 tokens!494)) (size!26955 (originalCharacters!5830 (h!41140 tokens!494)))))))

(assert (= (and d!870173 res!1292218) b!3179867))

(assert (= (and b!3179867 res!1292219) b!3179868))

(declare-fun b_lambda!86549 () Bool)

(assert (=> (not b_lambda!86549) (not b!3179867)))

(declare-fun tb!155161 () Bool)

(declare-fun t!235036 () Bool)

(assert (=> (and b!3179804 (= (toChars!7035 (transformation!5116 (rule!7526 separatorToken!241))) (toChars!7035 (transformation!5116 (rule!7526 (h!41140 tokens!494))))) t!235036) tb!155161))

(declare-fun b!3179873 () Bool)

(declare-fun e!1981022 () Bool)

(declare-fun tp!1006078 () Bool)

(declare-fun inv!48573 (Conc!10607) Bool)

(assert (=> b!3179873 (= e!1981022 (and (inv!48573 (c!534123 (dynLambda!14388 (toChars!7035 (transformation!5116 (rule!7526 (h!41140 tokens!494)))) (value!166266 (h!41140 tokens!494))))) tp!1006078))))

(declare-fun result!197176 () Bool)

(declare-fun inv!48574 (BalanceConc!20828) Bool)

(assert (=> tb!155161 (= result!197176 (and (inv!48574 (dynLambda!14388 (toChars!7035 (transformation!5116 (rule!7526 (h!41140 tokens!494)))) (value!166266 (h!41140 tokens!494)))) e!1981022))))

(assert (= tb!155161 b!3179873))

(declare-fun m!3436453 () Bool)

(assert (=> b!3179873 m!3436453))

(declare-fun m!3436455 () Bool)

(assert (=> tb!155161 m!3436455))

(assert (=> b!3179867 t!235036))

(declare-fun b_and!210149 () Bool)

(assert (= b_and!210133 (and (=> t!235036 result!197176) b_and!210149)))

(declare-fun t!235038 () Bool)

(declare-fun tb!155163 () Bool)

(assert (=> (and b!3179806 (= (toChars!7035 (transformation!5116 (h!41141 rules!2135))) (toChars!7035 (transformation!5116 (rule!7526 (h!41140 tokens!494))))) t!235038) tb!155163))

(declare-fun result!197180 () Bool)

(assert (= result!197180 result!197176))

(assert (=> b!3179867 t!235038))

(declare-fun b_and!210151 () Bool)

(assert (= b_and!210137 (and (=> t!235038 result!197180) b_and!210151)))

(declare-fun t!235040 () Bool)

(declare-fun tb!155165 () Bool)

(assert (=> (and b!3179807 (= (toChars!7035 (transformation!5116 (rule!7526 (h!41140 tokens!494)))) (toChars!7035 (transformation!5116 (rule!7526 (h!41140 tokens!494))))) t!235040) tb!155165))

(declare-fun result!197182 () Bool)

(assert (= result!197182 result!197176))

(assert (=> b!3179867 t!235040))

(declare-fun b_and!210153 () Bool)

(assert (= b_and!210141 (and (=> t!235040 result!197182) b_and!210153)))

(declare-fun m!3436457 () Bool)

(assert (=> d!870173 m!3436457))

(declare-fun m!3436459 () Bool)

(assert (=> b!3179867 m!3436459))

(assert (=> b!3179867 m!3436459))

(declare-fun m!3436461 () Bool)

(assert (=> b!3179867 m!3436461))

(declare-fun m!3436463 () Bool)

(assert (=> b!3179868 m!3436463))

(assert (=> b!3179799 d!870173))

(declare-fun d!870175 () Bool)

(declare-fun lt!1068904 () Bool)

(declare-fun e!1981087 () Bool)

(assert (=> d!870175 (= lt!1068904 e!1981087)))

(declare-fun res!1292290 () Bool)

(assert (=> d!870175 (=> (not res!1292290) (not e!1981087))))

(declare-fun list!12676 (BalanceConc!20830) List!35844)

(assert (=> d!870175 (= res!1292290 (= (list!12676 (_1!20658 (lex!2045 thiss!18206 rules!2135 (print!1772 thiss!18206 (singletonSeq!2212 separatorToken!241))))) (list!12676 (singletonSeq!2212 separatorToken!241))))))

(declare-fun e!1981086 () Bool)

(assert (=> d!870175 (= lt!1068904 e!1981086)))

(declare-fun res!1292288 () Bool)

(assert (=> d!870175 (=> (not res!1292288) (not e!1981086))))

(declare-fun lt!1068905 () tuple2!35048)

(declare-fun size!26958 (BalanceConc!20830) Int)

(assert (=> d!870175 (= res!1292288 (= (size!26958 (_1!20658 lt!1068905)) 1))))

(assert (=> d!870175 (= lt!1068905 (lex!2045 thiss!18206 rules!2135 (print!1772 thiss!18206 (singletonSeq!2212 separatorToken!241))))))

(assert (=> d!870175 (not (isEmpty!19827 rules!2135))))

(assert (=> d!870175 (= (rulesProduceIndividualToken!2197 thiss!18206 rules!2135 separatorToken!241) lt!1068904)))

(declare-fun b!3179979 () Bool)

(declare-fun res!1292289 () Bool)

(assert (=> b!3179979 (=> (not res!1292289) (not e!1981086))))

(declare-fun apply!8027 (BalanceConc!20830 Int) Token!9598)

(assert (=> b!3179979 (= res!1292289 (= (apply!8027 (_1!20658 lt!1068905) 0) separatorToken!241))))

(declare-fun b!3179980 () Bool)

(declare-fun isEmpty!19833 (BalanceConc!20828) Bool)

(assert (=> b!3179980 (= e!1981086 (isEmpty!19833 (_2!20658 lt!1068905)))))

(declare-fun b!3179981 () Bool)

(assert (=> b!3179981 (= e!1981087 (isEmpty!19833 (_2!20658 (lex!2045 thiss!18206 rules!2135 (print!1772 thiss!18206 (singletonSeq!2212 separatorToken!241))))))))

(assert (= (and d!870175 res!1292288) b!3179979))

(assert (= (and b!3179979 res!1292289) b!3179980))

(assert (= (and d!870175 res!1292290) b!3179981))

(declare-fun m!3436617 () Bool)

(assert (=> d!870175 m!3436617))

(declare-fun m!3436619 () Bool)

(assert (=> d!870175 m!3436619))

(declare-fun m!3436621 () Bool)

(assert (=> d!870175 m!3436621))

(declare-fun m!3436623 () Bool)

(assert (=> d!870175 m!3436623))

(declare-fun m!3436625 () Bool)

(assert (=> d!870175 m!3436625))

(declare-fun m!3436627 () Bool)

(assert (=> d!870175 m!3436627))

(assert (=> d!870175 m!3436617))

(assert (=> d!870175 m!3436617))

(assert (=> d!870175 m!3436621))

(assert (=> d!870175 m!3436357))

(declare-fun m!3436629 () Bool)

(assert (=> b!3179979 m!3436629))

(declare-fun m!3436631 () Bool)

(assert (=> b!3179980 m!3436631))

(assert (=> b!3179981 m!3436617))

(assert (=> b!3179981 m!3436617))

(assert (=> b!3179981 m!3436621))

(assert (=> b!3179981 m!3436621))

(assert (=> b!3179981 m!3436623))

(declare-fun m!3436633 () Bool)

(assert (=> b!3179981 m!3436633))

(assert (=> b!3179820 d!870175))

(declare-fun b!3179998 () Bool)

(declare-fun e!1981098 () Bool)

(assert (=> b!3179998 (= e!1981098 (inv!16 (value!166266 (h!41140 tokens!494))))))

(declare-fun b!3179999 () Bool)

(declare-fun e!1981099 () Bool)

(assert (=> b!3179999 (= e!1981099 (inv!17 (value!166266 (h!41140 tokens!494))))))

(declare-fun b!3180000 () Bool)

(declare-fun e!1981097 () Bool)

(assert (=> b!3180000 (= e!1981097 (inv!15 (value!166266 (h!41140 tokens!494))))))

(declare-fun b!3180001 () Bool)

(declare-fun res!1292301 () Bool)

(assert (=> b!3180001 (=> res!1292301 e!1981097)))

(assert (=> b!3180001 (= res!1292301 (not ((_ is IntegerValue!16040) (value!166266 (h!41140 tokens!494)))))))

(assert (=> b!3180001 (= e!1981099 e!1981097)))

(declare-fun b!3180002 () Bool)

(assert (=> b!3180002 (= e!1981098 e!1981099)))

(declare-fun c!534159 () Bool)

(assert (=> b!3180002 (= c!534159 ((_ is IntegerValue!16039) (value!166266 (h!41140 tokens!494))))))

(declare-fun d!870211 () Bool)

(declare-fun c!534158 () Bool)

(assert (=> d!870211 (= c!534158 ((_ is IntegerValue!16038) (value!166266 (h!41140 tokens!494))))))

(assert (=> d!870211 (= (inv!21 (value!166266 (h!41140 tokens!494))) e!1981098)))

(assert (= (and d!870211 c!534158) b!3179998))

(assert (= (and d!870211 (not c!534158)) b!3180002))

(assert (= (and b!3180002 c!534159) b!3179999))

(assert (= (and b!3180002 (not c!534159)) b!3180001))

(assert (= (and b!3180001 (not res!1292301)) b!3180000))

(declare-fun m!3436649 () Bool)

(assert (=> b!3179998 m!3436649))

(declare-fun m!3436651 () Bool)

(assert (=> b!3179999 m!3436651))

(declare-fun m!3436655 () Bool)

(assert (=> b!3180000 m!3436655))

(assert (=> b!3179809 d!870211))

(declare-fun d!870213 () Bool)

(declare-fun lt!1068907 () Bool)

(declare-fun e!1981101 () Bool)

(assert (=> d!870213 (= lt!1068907 e!1981101)))

(declare-fun res!1292304 () Bool)

(assert (=> d!870213 (=> (not res!1292304) (not e!1981101))))

(assert (=> d!870213 (= res!1292304 (= (list!12676 (_1!20658 (lex!2045 thiss!18206 rules!2135 (print!1772 thiss!18206 (singletonSeq!2212 (h!41140 tokens!494)))))) (list!12676 (singletonSeq!2212 (h!41140 tokens!494)))))))

(declare-fun e!1981100 () Bool)

(assert (=> d!870213 (= lt!1068907 e!1981100)))

(declare-fun res!1292302 () Bool)

(assert (=> d!870213 (=> (not res!1292302) (not e!1981100))))

(declare-fun lt!1068908 () tuple2!35048)

(assert (=> d!870213 (= res!1292302 (= (size!26958 (_1!20658 lt!1068908)) 1))))

(assert (=> d!870213 (= lt!1068908 (lex!2045 thiss!18206 rules!2135 (print!1772 thiss!18206 (singletonSeq!2212 (h!41140 tokens!494)))))))

(assert (=> d!870213 (not (isEmpty!19827 rules!2135))))

(assert (=> d!870213 (= (rulesProduceIndividualToken!2197 thiss!18206 rules!2135 (h!41140 tokens!494)) lt!1068907)))

(declare-fun b!3180003 () Bool)

(declare-fun res!1292303 () Bool)

(assert (=> b!3180003 (=> (not res!1292303) (not e!1981100))))

(assert (=> b!3180003 (= res!1292303 (= (apply!8027 (_1!20658 lt!1068908) 0) (h!41140 tokens!494)))))

(declare-fun b!3180004 () Bool)

(assert (=> b!3180004 (= e!1981100 (isEmpty!19833 (_2!20658 lt!1068908)))))

(declare-fun b!3180005 () Bool)

(assert (=> b!3180005 (= e!1981101 (isEmpty!19833 (_2!20658 (lex!2045 thiss!18206 rules!2135 (print!1772 thiss!18206 (singletonSeq!2212 (h!41140 tokens!494)))))))))

(assert (= (and d!870213 res!1292302) b!3180003))

(assert (= (and b!3180003 res!1292303) b!3180004))

(assert (= (and d!870213 res!1292304) b!3180005))

(assert (=> d!870213 m!3436419))

(declare-fun m!3436657 () Bool)

(assert (=> d!870213 m!3436657))

(declare-fun m!3436659 () Bool)

(assert (=> d!870213 m!3436659))

(declare-fun m!3436661 () Bool)

(assert (=> d!870213 m!3436661))

(declare-fun m!3436663 () Bool)

(assert (=> d!870213 m!3436663))

(declare-fun m!3436665 () Bool)

(assert (=> d!870213 m!3436665))

(assert (=> d!870213 m!3436419))

(assert (=> d!870213 m!3436419))

(assert (=> d!870213 m!3436659))

(assert (=> d!870213 m!3436357))

(declare-fun m!3436667 () Bool)

(assert (=> b!3180003 m!3436667))

(declare-fun m!3436669 () Bool)

(assert (=> b!3180004 m!3436669))

(assert (=> b!3180005 m!3436419))

(assert (=> b!3180005 m!3436419))

(assert (=> b!3180005 m!3436659))

(assert (=> b!3180005 m!3436659))

(assert (=> b!3180005 m!3436661))

(declare-fun m!3436671 () Bool)

(assert (=> b!3180005 m!3436671))

(assert (=> b!3179811 d!870213))

(declare-fun d!870219 () Bool)

(assert (=> d!870219 (= (inv!48566 (tag!5620 (h!41141 rules!2135))) (= (mod (str.len (value!166265 (tag!5620 (h!41141 rules!2135)))) 2) 0))))

(assert (=> b!3179821 d!870219))

(declare-fun d!870221 () Bool)

(declare-fun res!1292313 () Bool)

(declare-fun e!1981110 () Bool)

(assert (=> d!870221 (=> (not res!1292313) (not e!1981110))))

(declare-fun semiInverseModEq!2129 (Int Int) Bool)

(assert (=> d!870221 (= res!1292313 (semiInverseModEq!2129 (toChars!7035 (transformation!5116 (h!41141 rules!2135))) (toValue!7176 (transformation!5116 (h!41141 rules!2135)))))))

(assert (=> d!870221 (= (inv!48569 (transformation!5116 (h!41141 rules!2135))) e!1981110)))

(declare-fun b!3180014 () Bool)

(declare-fun equivClasses!2028 (Int Int) Bool)

(assert (=> b!3180014 (= e!1981110 (equivClasses!2028 (toChars!7035 (transformation!5116 (h!41141 rules!2135))) (toValue!7176 (transformation!5116 (h!41141 rules!2135)))))))

(assert (= (and d!870221 res!1292313) b!3180014))

(declare-fun m!3436679 () Bool)

(assert (=> d!870221 m!3436679))

(declare-fun m!3436681 () Bool)

(assert (=> b!3180014 m!3436681))

(assert (=> b!3179821 d!870221))

(declare-fun d!870227 () Bool)

(assert (=> d!870227 (= (isEmpty!19827 rules!2135) ((_ is Nil!35721) rules!2135))))

(assert (=> b!3179802 d!870227))

(declare-fun b!3180055 () Bool)

(declare-fun res!1292339 () Bool)

(declare-fun e!1981137 () Bool)

(assert (=> b!3180055 (=> res!1292339 e!1981137)))

(declare-fun e!1981131 () Bool)

(assert (=> b!3180055 (= res!1292339 e!1981131)))

(declare-fun res!1292340 () Bool)

(assert (=> b!3180055 (=> (not res!1292340) (not e!1981131))))

(declare-fun lt!1068915 () Bool)

(assert (=> b!3180055 (= res!1292340 lt!1068915)))

(declare-fun b!3180056 () Bool)

(declare-fun res!1292342 () Bool)

(assert (=> b!3180056 (=> (not res!1292342) (not e!1981131))))

(declare-fun tail!5164 (List!35843) List!35843)

(assert (=> b!3180056 (= res!1292342 (isEmpty!19828 (tail!5164 lt!1068848)))))

(declare-fun b!3180057 () Bool)

(declare-fun res!1292336 () Bool)

(assert (=> b!3180057 (=> res!1292336 e!1981137)))

(assert (=> b!3180057 (= res!1292336 (not ((_ is ElementMatch!9875) (regex!5116 lt!1068840))))))

(declare-fun e!1981132 () Bool)

(assert (=> b!3180057 (= e!1981132 e!1981137)))

(declare-fun b!3180058 () Bool)

(assert (=> b!3180058 (= e!1981132 (not lt!1068915))))

(declare-fun b!3180059 () Bool)

(declare-fun e!1981136 () Bool)

(assert (=> b!3180059 (= e!1981136 e!1981132)))

(declare-fun c!534170 () Bool)

(assert (=> b!3180059 (= c!534170 ((_ is EmptyLang!9875) (regex!5116 lt!1068840)))))

(declare-fun d!870229 () Bool)

(assert (=> d!870229 e!1981136))

(declare-fun c!534171 () Bool)

(assert (=> d!870229 (= c!534171 ((_ is EmptyExpr!9875) (regex!5116 lt!1068840)))))

(declare-fun e!1981135 () Bool)

(assert (=> d!870229 (= lt!1068915 e!1981135)))

(declare-fun c!534169 () Bool)

(assert (=> d!870229 (= c!534169 (isEmpty!19828 lt!1068848))))

(declare-fun validRegex!4526 (Regex!9875) Bool)

(assert (=> d!870229 (validRegex!4526 (regex!5116 lt!1068840))))

(assert (=> d!870229 (= (matchR!4533 (regex!5116 lt!1068840) lt!1068848) lt!1068915)))

(declare-fun b!3180060 () Bool)

(declare-fun nullable!3376 (Regex!9875) Bool)

(assert (=> b!3180060 (= e!1981135 (nullable!3376 (regex!5116 lt!1068840)))))

(declare-fun b!3180061 () Bool)

(declare-fun e!1981134 () Bool)

(assert (=> b!3180061 (= e!1981137 e!1981134)))

(declare-fun res!1292337 () Bool)

(assert (=> b!3180061 (=> (not res!1292337) (not e!1981134))))

(assert (=> b!3180061 (= res!1292337 (not lt!1068915))))

(declare-fun b!3180062 () Bool)

(declare-fun res!1292343 () Bool)

(assert (=> b!3180062 (=> (not res!1292343) (not e!1981131))))

(declare-fun call!230907 () Bool)

(assert (=> b!3180062 (= res!1292343 (not call!230907))))

(declare-fun b!3180063 () Bool)

(declare-fun res!1292341 () Bool)

(declare-fun e!1981133 () Bool)

(assert (=> b!3180063 (=> res!1292341 e!1981133)))

(assert (=> b!3180063 (= res!1292341 (not (isEmpty!19828 (tail!5164 lt!1068848))))))

(declare-fun b!3180064 () Bool)

(declare-fun head!6938 (List!35843) C!19936)

(assert (=> b!3180064 (= e!1981131 (= (head!6938 lt!1068848) (c!534122 (regex!5116 lt!1068840))))))

(declare-fun bm!230902 () Bool)

(assert (=> bm!230902 (= call!230907 (isEmpty!19828 lt!1068848))))

(declare-fun b!3180065 () Bool)

(assert (=> b!3180065 (= e!1981134 e!1981133)))

(declare-fun res!1292338 () Bool)

(assert (=> b!3180065 (=> res!1292338 e!1981133)))

(assert (=> b!3180065 (= res!1292338 call!230907)))

(declare-fun b!3180066 () Bool)

(assert (=> b!3180066 (= e!1981136 (= lt!1068915 call!230907))))

(declare-fun b!3180067 () Bool)

(declare-fun derivativeStep!2929 (Regex!9875 C!19936) Regex!9875)

(assert (=> b!3180067 (= e!1981135 (matchR!4533 (derivativeStep!2929 (regex!5116 lt!1068840) (head!6938 lt!1068848)) (tail!5164 lt!1068848)))))

(declare-fun b!3180068 () Bool)

(assert (=> b!3180068 (= e!1981133 (not (= (head!6938 lt!1068848) (c!534122 (regex!5116 lt!1068840)))))))

(assert (= (and d!870229 c!534169) b!3180060))

(assert (= (and d!870229 (not c!534169)) b!3180067))

(assert (= (and d!870229 c!534171) b!3180066))

(assert (= (and d!870229 (not c!534171)) b!3180059))

(assert (= (and b!3180059 c!534170) b!3180058))

(assert (= (and b!3180059 (not c!534170)) b!3180057))

(assert (= (and b!3180057 (not res!1292336)) b!3180055))

(assert (= (and b!3180055 res!1292340) b!3180062))

(assert (= (and b!3180062 res!1292343) b!3180056))

(assert (= (and b!3180056 res!1292342) b!3180064))

(assert (= (and b!3180055 (not res!1292339)) b!3180061))

(assert (= (and b!3180061 res!1292337) b!3180065))

(assert (= (and b!3180065 (not res!1292338)) b!3180063))

(assert (= (and b!3180063 (not res!1292341)) b!3180068))

(assert (= (or b!3180066 b!3180065 b!3180062) bm!230902))

(declare-fun m!3436699 () Bool)

(assert (=> b!3180064 m!3436699))

(declare-fun m!3436701 () Bool)

(assert (=> b!3180060 m!3436701))

(declare-fun m!3436703 () Bool)

(assert (=> d!870229 m!3436703))

(declare-fun m!3436705 () Bool)

(assert (=> d!870229 m!3436705))

(assert (=> b!3180067 m!3436699))

(assert (=> b!3180067 m!3436699))

(declare-fun m!3436707 () Bool)

(assert (=> b!3180067 m!3436707))

(declare-fun m!3436709 () Bool)

(assert (=> b!3180067 m!3436709))

(assert (=> b!3180067 m!3436707))

(assert (=> b!3180067 m!3436709))

(declare-fun m!3436711 () Bool)

(assert (=> b!3180067 m!3436711))

(assert (=> b!3180063 m!3436709))

(assert (=> b!3180063 m!3436709))

(declare-fun m!3436713 () Bool)

(assert (=> b!3180063 m!3436713))

(assert (=> b!3180068 m!3436699))

(assert (=> bm!230902 m!3436703))

(assert (=> b!3180056 m!3436709))

(assert (=> b!3180056 m!3436709))

(assert (=> b!3180056 m!3436713))

(assert (=> b!3179823 d!870229))

(declare-fun d!870237 () Bool)

(assert (=> d!870237 (= (get!11355 lt!1068850) (v!35402 lt!1068850))))

(assert (=> b!3179823 d!870237))

(declare-fun b!3180069 () Bool)

(declare-fun res!1292347 () Bool)

(declare-fun e!1981144 () Bool)

(assert (=> b!3180069 (=> res!1292347 e!1981144)))

(declare-fun e!1981138 () Bool)

(assert (=> b!3180069 (= res!1292347 e!1981138)))

(declare-fun res!1292348 () Bool)

(assert (=> b!3180069 (=> (not res!1292348) (not e!1981138))))

(declare-fun lt!1068916 () Bool)

(assert (=> b!3180069 (= res!1292348 lt!1068916)))

(declare-fun b!3180070 () Bool)

(declare-fun res!1292350 () Bool)

(assert (=> b!3180070 (=> (not res!1292350) (not e!1981138))))

(assert (=> b!3180070 (= res!1292350 (isEmpty!19828 (tail!5164 lt!1068851)))))

(declare-fun b!3180071 () Bool)

(declare-fun res!1292344 () Bool)

(assert (=> b!3180071 (=> res!1292344 e!1981144)))

(assert (=> b!3180071 (= res!1292344 (not ((_ is ElementMatch!9875) (regex!5116 lt!1068838))))))

(declare-fun e!1981139 () Bool)

(assert (=> b!3180071 (= e!1981139 e!1981144)))

(declare-fun b!3180072 () Bool)

(assert (=> b!3180072 (= e!1981139 (not lt!1068916))))

(declare-fun b!3180073 () Bool)

(declare-fun e!1981143 () Bool)

(assert (=> b!3180073 (= e!1981143 e!1981139)))

(declare-fun c!534173 () Bool)

(assert (=> b!3180073 (= c!534173 ((_ is EmptyLang!9875) (regex!5116 lt!1068838)))))

(declare-fun d!870239 () Bool)

(assert (=> d!870239 e!1981143))

(declare-fun c!534174 () Bool)

(assert (=> d!870239 (= c!534174 ((_ is EmptyExpr!9875) (regex!5116 lt!1068838)))))

(declare-fun e!1981142 () Bool)

(assert (=> d!870239 (= lt!1068916 e!1981142)))

(declare-fun c!534172 () Bool)

(assert (=> d!870239 (= c!534172 (isEmpty!19828 lt!1068851))))

(assert (=> d!870239 (validRegex!4526 (regex!5116 lt!1068838))))

(assert (=> d!870239 (= (matchR!4533 (regex!5116 lt!1068838) lt!1068851) lt!1068916)))

(declare-fun b!3180074 () Bool)

(assert (=> b!3180074 (= e!1981142 (nullable!3376 (regex!5116 lt!1068838)))))

(declare-fun b!3180075 () Bool)

(declare-fun e!1981141 () Bool)

(assert (=> b!3180075 (= e!1981144 e!1981141)))

(declare-fun res!1292345 () Bool)

(assert (=> b!3180075 (=> (not res!1292345) (not e!1981141))))

(assert (=> b!3180075 (= res!1292345 (not lt!1068916))))

(declare-fun b!3180076 () Bool)

(declare-fun res!1292351 () Bool)

(assert (=> b!3180076 (=> (not res!1292351) (not e!1981138))))

(declare-fun call!230908 () Bool)

(assert (=> b!3180076 (= res!1292351 (not call!230908))))

(declare-fun b!3180077 () Bool)

(declare-fun res!1292349 () Bool)

(declare-fun e!1981140 () Bool)

(assert (=> b!3180077 (=> res!1292349 e!1981140)))

(assert (=> b!3180077 (= res!1292349 (not (isEmpty!19828 (tail!5164 lt!1068851))))))

(declare-fun b!3180078 () Bool)

(assert (=> b!3180078 (= e!1981138 (= (head!6938 lt!1068851) (c!534122 (regex!5116 lt!1068838))))))

(declare-fun bm!230903 () Bool)

(assert (=> bm!230903 (= call!230908 (isEmpty!19828 lt!1068851))))

(declare-fun b!3180079 () Bool)

(assert (=> b!3180079 (= e!1981141 e!1981140)))

(declare-fun res!1292346 () Bool)

(assert (=> b!3180079 (=> res!1292346 e!1981140)))

(assert (=> b!3180079 (= res!1292346 call!230908)))

(declare-fun b!3180080 () Bool)

(assert (=> b!3180080 (= e!1981143 (= lt!1068916 call!230908))))

(declare-fun b!3180081 () Bool)

(assert (=> b!3180081 (= e!1981142 (matchR!4533 (derivativeStep!2929 (regex!5116 lt!1068838) (head!6938 lt!1068851)) (tail!5164 lt!1068851)))))

(declare-fun b!3180082 () Bool)

(assert (=> b!3180082 (= e!1981140 (not (= (head!6938 lt!1068851) (c!534122 (regex!5116 lt!1068838)))))))

(assert (= (and d!870239 c!534172) b!3180074))

(assert (= (and d!870239 (not c!534172)) b!3180081))

(assert (= (and d!870239 c!534174) b!3180080))

(assert (= (and d!870239 (not c!534174)) b!3180073))

(assert (= (and b!3180073 c!534173) b!3180072))

(assert (= (and b!3180073 (not c!534173)) b!3180071))

(assert (= (and b!3180071 (not res!1292344)) b!3180069))

(assert (= (and b!3180069 res!1292348) b!3180076))

(assert (= (and b!3180076 res!1292351) b!3180070))

(assert (= (and b!3180070 res!1292350) b!3180078))

(assert (= (and b!3180069 (not res!1292347)) b!3180075))

(assert (= (and b!3180075 res!1292345) b!3180079))

(assert (= (and b!3180079 (not res!1292346)) b!3180077))

(assert (= (and b!3180077 (not res!1292349)) b!3180082))

(assert (= (or b!3180080 b!3180079 b!3180076) bm!230903))

(declare-fun m!3436715 () Bool)

(assert (=> b!3180078 m!3436715))

(declare-fun m!3436717 () Bool)

(assert (=> b!3180074 m!3436717))

(declare-fun m!3436719 () Bool)

(assert (=> d!870239 m!3436719))

(declare-fun m!3436721 () Bool)

(assert (=> d!870239 m!3436721))

(assert (=> b!3180081 m!3436715))

(assert (=> b!3180081 m!3436715))

(declare-fun m!3436723 () Bool)

(assert (=> b!3180081 m!3436723))

(declare-fun m!3436725 () Bool)

(assert (=> b!3180081 m!3436725))

(assert (=> b!3180081 m!3436723))

(assert (=> b!3180081 m!3436725))

(declare-fun m!3436727 () Bool)

(assert (=> b!3180081 m!3436727))

(assert (=> b!3180077 m!3436725))

(assert (=> b!3180077 m!3436725))

(declare-fun m!3436729 () Bool)

(assert (=> b!3180077 m!3436729))

(assert (=> b!3180082 m!3436715))

(assert (=> bm!230903 m!3436719))

(assert (=> b!3180070 m!3436725))

(assert (=> b!3180070 m!3436725))

(assert (=> b!3180070 m!3436729))

(assert (=> b!3179812 d!870239))

(declare-fun d!870241 () Bool)

(assert (=> d!870241 (= (get!11355 lt!1068836) (v!35402 lt!1068836))))

(assert (=> b!3179812 d!870241))

(declare-fun d!870243 () Bool)

(declare-fun res!1292356 () Bool)

(declare-fun e!1981149 () Bool)

(assert (=> d!870243 (=> res!1292356 e!1981149)))

(assert (=> d!870243 (= res!1292356 ((_ is Nil!35720) tokens!494))))

(assert (=> d!870243 (= (forall!7226 tokens!494 lambda!116373) e!1981149)))

(declare-fun b!3180087 () Bool)

(declare-fun e!1981150 () Bool)

(assert (=> b!3180087 (= e!1981149 e!1981150)))

(declare-fun res!1292357 () Bool)

(assert (=> b!3180087 (=> (not res!1292357) (not e!1981150))))

(declare-fun dynLambda!14393 (Int Token!9598) Bool)

(assert (=> b!3180087 (= res!1292357 (dynLambda!14393 lambda!116373 (h!41140 tokens!494)))))

(declare-fun b!3180088 () Bool)

(assert (=> b!3180088 (= e!1981150 (forall!7226 (t!235027 tokens!494) lambda!116373))))

(assert (= (and d!870243 (not res!1292356)) b!3180087))

(assert (= (and b!3180087 res!1292357) b!3180088))

(declare-fun b_lambda!86557 () Bool)

(assert (=> (not b_lambda!86557) (not b!3180087)))

(declare-fun m!3436739 () Bool)

(assert (=> b!3180087 m!3436739))

(declare-fun m!3436741 () Bool)

(assert (=> b!3180088 m!3436741))

(assert (=> b!3179801 d!870243))

(declare-fun d!870247 () Bool)

(declare-fun res!1292362 () Bool)

(declare-fun e!1981155 () Bool)

(assert (=> d!870247 (=> res!1292362 e!1981155)))

(assert (=> d!870247 (= res!1292362 (not ((_ is Cons!35721) rules!2135)))))

(assert (=> d!870247 (= (sepAndNonSepRulesDisjointChars!1310 rules!2135 rules!2135) e!1981155)))

(declare-fun b!3180093 () Bool)

(declare-fun e!1981156 () Bool)

(assert (=> b!3180093 (= e!1981155 e!1981156)))

(declare-fun res!1292363 () Bool)

(assert (=> b!3180093 (=> (not res!1292363) (not e!1981156))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!565 (Rule!10032 List!35845) Bool)

(assert (=> b!3180093 (= res!1292363 (ruleDisjointCharsFromAllFromOtherType!565 (h!41141 rules!2135) rules!2135))))

(declare-fun b!3180094 () Bool)

(assert (=> b!3180094 (= e!1981156 (sepAndNonSepRulesDisjointChars!1310 rules!2135 (t!235028 rules!2135)))))

(assert (= (and d!870247 (not res!1292362)) b!3180093))

(assert (= (and b!3180093 res!1292363) b!3180094))

(declare-fun m!3436743 () Bool)

(assert (=> b!3180093 m!3436743))

(declare-fun m!3436745 () Bool)

(assert (=> b!3180094 m!3436745))

(assert (=> b!3179814 d!870247))

(declare-fun d!870249 () Bool)

(declare-fun lt!1068922 () BalanceConc!20828)

(assert (=> d!870249 (= (list!12673 lt!1068922) (printList!1259 thiss!18206 (list!12676 lt!1068843)))))

(assert (=> d!870249 (= lt!1068922 (printTailRec!1204 thiss!18206 lt!1068843 0 (BalanceConc!20829 Empty!10607)))))

(assert (=> d!870249 (= (print!1772 thiss!18206 lt!1068843) lt!1068922)))

(declare-fun bs!539838 () Bool)

(assert (= bs!539838 d!870249))

(declare-fun m!3436747 () Bool)

(assert (=> bs!539838 m!3436747))

(declare-fun m!3436749 () Bool)

(assert (=> bs!539838 m!3436749))

(assert (=> bs!539838 m!3436749))

(declare-fun m!3436751 () Bool)

(assert (=> bs!539838 m!3436751))

(assert (=> bs!539838 m!3436417))

(assert (=> b!3179803 d!870249))

(declare-fun d!870251 () Bool)

(declare-fun lt!1068941 () BalanceConc!20828)

(declare-fun printListTailRec!535 (LexerInterface!4705 List!35844 List!35843) List!35843)

(declare-fun dropList!1052 (BalanceConc!20830 Int) List!35844)

(assert (=> d!870251 (= (list!12673 lt!1068941) (printListTailRec!535 thiss!18206 (dropList!1052 lt!1068843 0) (list!12673 (BalanceConc!20829 Empty!10607))))))

(declare-fun e!1981162 () BalanceConc!20828)

(assert (=> d!870251 (= lt!1068941 e!1981162)))

(declare-fun c!534177 () Bool)

(assert (=> d!870251 (= c!534177 (>= 0 (size!26958 lt!1068843)))))

(declare-fun e!1981161 () Bool)

(assert (=> d!870251 e!1981161))

(declare-fun res!1292366 () Bool)

(assert (=> d!870251 (=> (not res!1292366) (not e!1981161))))

(assert (=> d!870251 (= res!1292366 (>= 0 0))))

(assert (=> d!870251 (= (printTailRec!1204 thiss!18206 lt!1068843 0 (BalanceConc!20829 Empty!10607)) lt!1068941)))

(declare-fun b!3180101 () Bool)

(assert (=> b!3180101 (= e!1981161 (<= 0 (size!26958 lt!1068843)))))

(declare-fun b!3180102 () Bool)

(assert (=> b!3180102 (= e!1981162 (BalanceConc!20829 Empty!10607))))

(declare-fun b!3180103 () Bool)

(declare-fun ++!8538 (BalanceConc!20828 BalanceConc!20828) BalanceConc!20828)

(assert (=> b!3180103 (= e!1981162 (printTailRec!1204 thiss!18206 lt!1068843 (+ 0 1) (++!8538 (BalanceConc!20829 Empty!10607) (charsOf!3138 (apply!8027 lt!1068843 0)))))))

(declare-fun lt!1068939 () List!35844)

(assert (=> b!3180103 (= lt!1068939 (list!12676 lt!1068843))))

(declare-fun lt!1068937 () Unit!50130)

(declare-fun lemmaDropApply!1011 (List!35844 Int) Unit!50130)

(assert (=> b!3180103 (= lt!1068937 (lemmaDropApply!1011 lt!1068939 0))))

(declare-fun head!6939 (List!35844) Token!9598)

(declare-fun drop!1835 (List!35844 Int) List!35844)

(declare-fun apply!8028 (List!35844 Int) Token!9598)

(assert (=> b!3180103 (= (head!6939 (drop!1835 lt!1068939 0)) (apply!8028 lt!1068939 0))))

(declare-fun lt!1068942 () Unit!50130)

(assert (=> b!3180103 (= lt!1068942 lt!1068937)))

(declare-fun lt!1068943 () List!35844)

(assert (=> b!3180103 (= lt!1068943 (list!12676 lt!1068843))))

(declare-fun lt!1068940 () Unit!50130)

(declare-fun lemmaDropTail!895 (List!35844 Int) Unit!50130)

(assert (=> b!3180103 (= lt!1068940 (lemmaDropTail!895 lt!1068943 0))))

(declare-fun tail!5165 (List!35844) List!35844)

(assert (=> b!3180103 (= (tail!5165 (drop!1835 lt!1068943 0)) (drop!1835 lt!1068943 (+ 0 1)))))

(declare-fun lt!1068938 () Unit!50130)

(assert (=> b!3180103 (= lt!1068938 lt!1068940)))

(assert (= (and d!870251 res!1292366) b!3180101))

(assert (= (and d!870251 c!534177) b!3180102))

(assert (= (and d!870251 (not c!534177)) b!3180103))

(declare-fun m!3436753 () Bool)

(assert (=> d!870251 m!3436753))

(declare-fun m!3436755 () Bool)

(assert (=> d!870251 m!3436755))

(declare-fun m!3436757 () Bool)

(assert (=> d!870251 m!3436757))

(assert (=> d!870251 m!3436753))

(declare-fun m!3436759 () Bool)

(assert (=> d!870251 m!3436759))

(declare-fun m!3436761 () Bool)

(assert (=> d!870251 m!3436761))

(assert (=> d!870251 m!3436759))

(assert (=> b!3180101 m!3436755))

(declare-fun m!3436763 () Bool)

(assert (=> b!3180103 m!3436763))

(declare-fun m!3436765 () Bool)

(assert (=> b!3180103 m!3436765))

(declare-fun m!3436767 () Bool)

(assert (=> b!3180103 m!3436767))

(assert (=> b!3180103 m!3436749))

(declare-fun m!3436769 () Bool)

(assert (=> b!3180103 m!3436769))

(declare-fun m!3436771 () Bool)

(assert (=> b!3180103 m!3436771))

(assert (=> b!3180103 m!3436771))

(declare-fun m!3436773 () Bool)

(assert (=> b!3180103 m!3436773))

(declare-fun m!3436775 () Bool)

(assert (=> b!3180103 m!3436775))

(declare-fun m!3436777 () Bool)

(assert (=> b!3180103 m!3436777))

(declare-fun m!3436779 () Bool)

(assert (=> b!3180103 m!3436779))

(declare-fun m!3436781 () Bool)

(assert (=> b!3180103 m!3436781))

(assert (=> b!3180103 m!3436763))

(declare-fun m!3436783 () Bool)

(assert (=> b!3180103 m!3436783))

(assert (=> b!3180103 m!3436773))

(assert (=> b!3180103 m!3436777))

(assert (=> b!3180103 m!3436767))

(declare-fun m!3436785 () Bool)

(assert (=> b!3180103 m!3436785))

(assert (=> b!3179803 d!870251))

(declare-fun d!870253 () Bool)

(declare-fun list!12677 (Conc!10607) List!35843)

(assert (=> d!870253 (= (list!12673 lt!1068835) (list!12677 (c!534123 lt!1068835)))))

(declare-fun bs!539839 () Bool)

(assert (= bs!539839 d!870253))

(declare-fun m!3436787 () Bool)

(assert (=> bs!539839 m!3436787))

(assert (=> b!3179803 d!870253))

(declare-fun d!870255 () Bool)

(declare-fun e!1981165 () Bool)

(assert (=> d!870255 e!1981165))

(declare-fun res!1292369 () Bool)

(assert (=> d!870255 (=> (not res!1292369) (not e!1981165))))

(declare-fun lt!1068946 () BalanceConc!20830)

(assert (=> d!870255 (= res!1292369 (= (list!12676 lt!1068946) (Cons!35720 (h!41140 tokens!494) Nil!35720)))))

(declare-fun singleton!968 (Token!9598) BalanceConc!20830)

(assert (=> d!870255 (= lt!1068946 (singleton!968 (h!41140 tokens!494)))))

(assert (=> d!870255 (= (singletonSeq!2212 (h!41140 tokens!494)) lt!1068946)))

(declare-fun b!3180106 () Bool)

(declare-fun isBalanced!3179 (Conc!10608) Bool)

(assert (=> b!3180106 (= e!1981165 (isBalanced!3179 (c!534124 lt!1068946)))))

(assert (= (and d!870255 res!1292369) b!3180106))

(declare-fun m!3436789 () Bool)

(assert (=> d!870255 m!3436789))

(declare-fun m!3436791 () Bool)

(assert (=> d!870255 m!3436791))

(declare-fun m!3436793 () Bool)

(assert (=> b!3180106 m!3436793))

(assert (=> b!3179803 d!870255))

(declare-fun d!870257 () Bool)

(declare-fun c!534180 () Bool)

(assert (=> d!870257 (= c!534180 ((_ is Cons!35720) (Cons!35720 (h!41140 tokens!494) Nil!35720)))))

(declare-fun e!1981168 () List!35843)

(assert (=> d!870257 (= (printList!1259 thiss!18206 (Cons!35720 (h!41140 tokens!494) Nil!35720)) e!1981168)))

(declare-fun b!3180111 () Bool)

(assert (=> b!3180111 (= e!1981168 (++!8536 (list!12673 (charsOf!3138 (h!41140 (Cons!35720 (h!41140 tokens!494) Nil!35720)))) (printList!1259 thiss!18206 (t!235027 (Cons!35720 (h!41140 tokens!494) Nil!35720)))))))

(declare-fun b!3180112 () Bool)

(assert (=> b!3180112 (= e!1981168 Nil!35719)))

(assert (= (and d!870257 c!534180) b!3180111))

(assert (= (and d!870257 (not c!534180)) b!3180112))

(declare-fun m!3436795 () Bool)

(assert (=> b!3180111 m!3436795))

(assert (=> b!3180111 m!3436795))

(declare-fun m!3436797 () Bool)

(assert (=> b!3180111 m!3436797))

(declare-fun m!3436799 () Bool)

(assert (=> b!3180111 m!3436799))

(assert (=> b!3180111 m!3436797))

(assert (=> b!3180111 m!3436799))

(declare-fun m!3436801 () Bool)

(assert (=> b!3180111 m!3436801))

(assert (=> b!3179803 d!870257))

(declare-fun d!870259 () Bool)

(assert (=> d!870259 (= (list!12673 (charsOf!3138 (h!41140 tokens!494))) (list!12677 (c!534123 (charsOf!3138 (h!41140 tokens!494)))))))

(declare-fun bs!539840 () Bool)

(assert (= bs!539840 d!870259))

(declare-fun m!3436803 () Bool)

(assert (=> bs!539840 m!3436803))

(assert (=> b!3179824 d!870259))

(declare-fun d!870261 () Bool)

(declare-fun lt!1068949 () BalanceConc!20828)

(assert (=> d!870261 (= (list!12673 lt!1068949) (originalCharacters!5830 (h!41140 tokens!494)))))

(assert (=> d!870261 (= lt!1068949 (dynLambda!14388 (toChars!7035 (transformation!5116 (rule!7526 (h!41140 tokens!494)))) (value!166266 (h!41140 tokens!494))))))

(assert (=> d!870261 (= (charsOf!3138 (h!41140 tokens!494)) lt!1068949)))

(declare-fun b_lambda!86559 () Bool)

(assert (=> (not b_lambda!86559) (not d!870261)))

(assert (=> d!870261 t!235036))

(declare-fun b_and!210167 () Bool)

(assert (= b_and!210149 (and (=> t!235036 result!197176) b_and!210167)))

(assert (=> d!870261 t!235038))

(declare-fun b_and!210169 () Bool)

(assert (= b_and!210151 (and (=> t!235038 result!197180) b_and!210169)))

(assert (=> d!870261 t!235040))

(declare-fun b_and!210171 () Bool)

(assert (= b_and!210153 (and (=> t!235040 result!197182) b_and!210171)))

(declare-fun m!3436805 () Bool)

(assert (=> d!870261 m!3436805))

(assert (=> d!870261 m!3436459))

(assert (=> b!3179824 d!870261))

(declare-fun d!870263 () Bool)

(assert (=> d!870263 (dynLambda!14393 lambda!116373 (h!41140 tokens!494))))

(declare-fun lt!1068952 () Unit!50130)

(declare-fun choose!18532 (List!35844 Int Token!9598) Unit!50130)

(assert (=> d!870263 (= lt!1068952 (choose!18532 tokens!494 lambda!116373 (h!41140 tokens!494)))))

(declare-fun e!1981171 () Bool)

(assert (=> d!870263 e!1981171))

(declare-fun res!1292372 () Bool)

(assert (=> d!870263 (=> (not res!1292372) (not e!1981171))))

(assert (=> d!870263 (= res!1292372 (forall!7226 tokens!494 lambda!116373))))

(assert (=> d!870263 (= (forallContained!1099 tokens!494 lambda!116373 (h!41140 tokens!494)) lt!1068952)))

(declare-fun b!3180115 () Bool)

(declare-fun contains!6310 (List!35844 Token!9598) Bool)

(assert (=> b!3180115 (= e!1981171 (contains!6310 tokens!494 (h!41140 tokens!494)))))

(assert (= (and d!870263 res!1292372) b!3180115))

(declare-fun b_lambda!86561 () Bool)

(assert (=> (not b_lambda!86561) (not d!870263)))

(assert (=> d!870263 m!3436739))

(declare-fun m!3436807 () Bool)

(assert (=> d!870263 m!3436807))

(assert (=> d!870263 m!3436351))

(declare-fun m!3436809 () Bool)

(assert (=> b!3180115 m!3436809))

(assert (=> b!3179813 d!870263))

(declare-fun d!870265 () Bool)

(declare-fun lt!1068955 () Bool)

(declare-fun isEmpty!19835 (List!35844) Bool)

(assert (=> d!870265 (= lt!1068955 (isEmpty!19835 (list!12676 (_1!20658 (lex!2045 thiss!18206 rules!2135 lt!1068834)))))))

(declare-fun isEmpty!19837 (Conc!10608) Bool)

(assert (=> d!870265 (= lt!1068955 (isEmpty!19837 (c!534124 (_1!20658 (lex!2045 thiss!18206 rules!2135 lt!1068834)))))))

(assert (=> d!870265 (= (isEmpty!19829 (_1!20658 (lex!2045 thiss!18206 rules!2135 lt!1068834))) lt!1068955)))

(declare-fun bs!539841 () Bool)

(assert (= bs!539841 d!870265))

(declare-fun m!3436811 () Bool)

(assert (=> bs!539841 m!3436811))

(assert (=> bs!539841 m!3436811))

(declare-fun m!3436813 () Bool)

(assert (=> bs!539841 m!3436813))

(declare-fun m!3436815 () Bool)

(assert (=> bs!539841 m!3436815))

(assert (=> b!3179818 d!870265))

(declare-fun b!3180126 () Bool)

(declare-fun lt!1068960 () tuple2!35048)

(declare-fun e!1981179 () Bool)

(declare-datatypes ((tuple2!35054 0))(
  ( (tuple2!35055 (_1!20661 List!35844) (_2!20661 List!35843)) )
))
(declare-fun lexList!1269 (LexerInterface!4705 List!35845 List!35843) tuple2!35054)

(assert (=> b!3180126 (= e!1981179 (= (list!12673 (_2!20658 lt!1068960)) (_2!20661 (lexList!1269 thiss!18206 rules!2135 (list!12673 lt!1068834)))))))

(declare-fun b!3180127 () Bool)

(declare-fun e!1981178 () Bool)

(declare-fun e!1981180 () Bool)

(assert (=> b!3180127 (= e!1981178 e!1981180)))

(declare-fun res!1292379 () Bool)

(declare-fun size!26959 (BalanceConc!20828) Int)

(assert (=> b!3180127 (= res!1292379 (< (size!26959 (_2!20658 lt!1068960)) (size!26959 lt!1068834)))))

(assert (=> b!3180127 (=> (not res!1292379) (not e!1981180))))

(declare-fun b!3180128 () Bool)

(assert (=> b!3180128 (= e!1981178 (= (_2!20658 lt!1068960) lt!1068834))))

(declare-fun b!3180129 () Bool)

(declare-fun res!1292381 () Bool)

(assert (=> b!3180129 (=> (not res!1292381) (not e!1981179))))

(assert (=> b!3180129 (= res!1292381 (= (list!12676 (_1!20658 lt!1068960)) (_1!20661 (lexList!1269 thiss!18206 rules!2135 (list!12673 lt!1068834)))))))

(declare-fun d!870267 () Bool)

(assert (=> d!870267 e!1981179))

(declare-fun res!1292380 () Bool)

(assert (=> d!870267 (=> (not res!1292380) (not e!1981179))))

(assert (=> d!870267 (= res!1292380 e!1981178)))

(declare-fun c!534183 () Bool)

(assert (=> d!870267 (= c!534183 (> (size!26958 (_1!20658 lt!1068960)) 0))))

(declare-fun lexTailRecV2!907 (LexerInterface!4705 List!35845 BalanceConc!20828 BalanceConc!20828 BalanceConc!20828 BalanceConc!20830) tuple2!35048)

(assert (=> d!870267 (= lt!1068960 (lexTailRecV2!907 thiss!18206 rules!2135 lt!1068834 (BalanceConc!20829 Empty!10607) lt!1068834 (BalanceConc!20831 Empty!10608)))))

(assert (=> d!870267 (= (lex!2045 thiss!18206 rules!2135 lt!1068834) lt!1068960)))

(declare-fun b!3180130 () Bool)

(assert (=> b!3180130 (= e!1981180 (not (isEmpty!19829 (_1!20658 lt!1068960))))))

(assert (= (and d!870267 c!534183) b!3180127))

(assert (= (and d!870267 (not c!534183)) b!3180128))

(assert (= (and b!3180127 res!1292379) b!3180130))

(assert (= (and d!870267 res!1292380) b!3180129))

(assert (= (and b!3180129 res!1292381) b!3180126))

(declare-fun m!3436817 () Bool)

(assert (=> b!3180130 m!3436817))

(declare-fun m!3436819 () Bool)

(assert (=> b!3180127 m!3436819))

(declare-fun m!3436821 () Bool)

(assert (=> b!3180127 m!3436821))

(declare-fun m!3436823 () Bool)

(assert (=> b!3180126 m!3436823))

(declare-fun m!3436825 () Bool)

(assert (=> b!3180126 m!3436825))

(assert (=> b!3180126 m!3436825))

(declare-fun m!3436827 () Bool)

(assert (=> b!3180126 m!3436827))

(declare-fun m!3436829 () Bool)

(assert (=> d!870267 m!3436829))

(declare-fun m!3436831 () Bool)

(assert (=> d!870267 m!3436831))

(declare-fun m!3436833 () Bool)

(assert (=> b!3180129 m!3436833))

(assert (=> b!3180129 m!3436825))

(assert (=> b!3180129 m!3436825))

(assert (=> b!3180129 m!3436827))

(assert (=> b!3179818 d!870267))

(declare-fun d!870269 () Bool)

(declare-fun fromListB!1489 (List!35843) BalanceConc!20828)

(assert (=> d!870269 (= (seqFromList!3312 lt!1068848) (fromListB!1489 lt!1068848))))

(declare-fun bs!539842 () Bool)

(assert (= bs!539842 d!870269))

(declare-fun m!3436835 () Bool)

(assert (=> bs!539842 m!3436835))

(assert (=> b!3179818 d!870269))

(declare-fun d!870271 () Bool)

(assert (=> d!870271 (= (inv!48566 (tag!5620 (rule!7526 separatorToken!241))) (= (mod (str.len (value!166265 (tag!5620 (rule!7526 separatorToken!241)))) 2) 0))))

(assert (=> b!3179796 d!870271))

(declare-fun d!870273 () Bool)

(declare-fun res!1292382 () Bool)

(declare-fun e!1981181 () Bool)

(assert (=> d!870273 (=> (not res!1292382) (not e!1981181))))

(assert (=> d!870273 (= res!1292382 (semiInverseModEq!2129 (toChars!7035 (transformation!5116 (rule!7526 separatorToken!241))) (toValue!7176 (transformation!5116 (rule!7526 separatorToken!241)))))))

(assert (=> d!870273 (= (inv!48569 (transformation!5116 (rule!7526 separatorToken!241))) e!1981181)))

(declare-fun b!3180131 () Bool)

(assert (=> b!3180131 (= e!1981181 (equivClasses!2028 (toChars!7035 (transformation!5116 (rule!7526 separatorToken!241))) (toValue!7176 (transformation!5116 (rule!7526 separatorToken!241)))))))

(assert (= (and d!870273 res!1292382) b!3180131))

(declare-fun m!3436837 () Bool)

(assert (=> d!870273 m!3436837))

(declare-fun m!3436839 () Bool)

(assert (=> b!3180131 m!3436839))

(assert (=> b!3179796 d!870273))

(declare-fun d!870275 () Bool)

(declare-fun e!1981184 () Bool)

(assert (=> d!870275 e!1981184))

(declare-fun res!1292387 () Bool)

(assert (=> d!870275 (=> (not res!1292387) (not e!1981184))))

(assert (=> d!870275 (= res!1292387 (isDefined!5460 (getRuleFromTag!845 thiss!18206 rules!2135 (tag!5620 (rule!7526 (h!41140 tokens!494))))))))

(declare-fun lt!1068963 () Unit!50130)

(declare-fun choose!18533 (LexerInterface!4705 List!35845 List!35843 Token!9598) Unit!50130)

(assert (=> d!870275 (= lt!1068963 (choose!18533 thiss!18206 rules!2135 lt!1068848 (h!41140 tokens!494)))))

(assert (=> d!870275 (rulesInvariant!4102 thiss!18206 rules!2135)))

(assert (=> d!870275 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!845 thiss!18206 rules!2135 lt!1068848 (h!41140 tokens!494)) lt!1068963)))

(declare-fun b!3180136 () Bool)

(declare-fun res!1292388 () Bool)

(assert (=> b!3180136 (=> (not res!1292388) (not e!1981184))))

(assert (=> b!3180136 (= res!1292388 (matchR!4533 (regex!5116 (get!11355 (getRuleFromTag!845 thiss!18206 rules!2135 (tag!5620 (rule!7526 (h!41140 tokens!494)))))) (list!12673 (charsOf!3138 (h!41140 tokens!494)))))))

(declare-fun b!3180137 () Bool)

(assert (=> b!3180137 (= e!1981184 (= (rule!7526 (h!41140 tokens!494)) (get!11355 (getRuleFromTag!845 thiss!18206 rules!2135 (tag!5620 (rule!7526 (h!41140 tokens!494)))))))))

(assert (= (and d!870275 res!1292387) b!3180136))

(assert (= (and b!3180136 res!1292388) b!3180137))

(assert (=> d!870275 m!3436403))

(assert (=> d!870275 m!3436403))

(declare-fun m!3436841 () Bool)

(assert (=> d!870275 m!3436841))

(declare-fun m!3436843 () Bool)

(assert (=> d!870275 m!3436843))

(assert (=> d!870275 m!3436411))

(assert (=> b!3180136 m!3436403))

(declare-fun m!3436845 () Bool)

(assert (=> b!3180136 m!3436845))

(assert (=> b!3180136 m!3436323))

(declare-fun m!3436847 () Bool)

(assert (=> b!3180136 m!3436847))

(assert (=> b!3180136 m!3436321))

(assert (=> b!3180136 m!3436323))

(assert (=> b!3180136 m!3436321))

(assert (=> b!3180136 m!3436403))

(assert (=> b!3180137 m!3436403))

(assert (=> b!3180137 m!3436403))

(assert (=> b!3180137 m!3436845))

(assert (=> b!3179817 d!870275))

(declare-fun d!870277 () Bool)

(declare-fun lt!1068966 () List!35843)

(assert (=> d!870277 (= (++!8536 lt!1068848 lt!1068966) lt!1068848)))

(declare-fun e!1981187 () List!35843)

(assert (=> d!870277 (= lt!1068966 e!1981187)))

(declare-fun c!534186 () Bool)

(assert (=> d!870277 (= c!534186 ((_ is Cons!35719) lt!1068848))))

(assert (=> d!870277 (>= (size!26955 lt!1068848) (size!26955 lt!1068848))))

(assert (=> d!870277 (= (getSuffix!1332 lt!1068848 lt!1068848) lt!1068966)))

(declare-fun b!3180142 () Bool)

(assert (=> b!3180142 (= e!1981187 (getSuffix!1332 (tail!5164 lt!1068848) (t!235026 lt!1068848)))))

(declare-fun b!3180143 () Bool)

(assert (=> b!3180143 (= e!1981187 lt!1068848)))

(assert (= (and d!870277 c!534186) b!3180142))

(assert (= (and d!870277 (not c!534186)) b!3180143))

(declare-fun m!3436849 () Bool)

(assert (=> d!870277 m!3436849))

(assert (=> d!870277 m!3436391))

(assert (=> d!870277 m!3436391))

(assert (=> b!3180142 m!3436709))

(assert (=> b!3180142 m!3436709))

(declare-fun m!3436851 () Bool)

(assert (=> b!3180142 m!3436851))

(assert (=> b!3179817 d!870277))

(declare-fun d!870279 () Bool)

(declare-fun isEmpty!19838 (Option!6963) Bool)

(assert (=> d!870279 (= (isDefined!5460 lt!1068850) (not (isEmpty!19838 lt!1068850)))))

(declare-fun bs!539843 () Bool)

(assert (= bs!539843 d!870279))

(declare-fun m!3436853 () Bool)

(assert (=> bs!539843 m!3436853))

(assert (=> b!3179817 d!870279))

(declare-fun d!870281 () Bool)

(declare-fun e!1981188 () Bool)

(assert (=> d!870281 e!1981188))

(declare-fun res!1292389 () Bool)

(assert (=> d!870281 (=> (not res!1292389) (not e!1981188))))

(assert (=> d!870281 (= res!1292389 (isDefined!5460 (getRuleFromTag!845 thiss!18206 rules!2135 (tag!5620 (rule!7526 separatorToken!241)))))))

(declare-fun lt!1068967 () Unit!50130)

(assert (=> d!870281 (= lt!1068967 (choose!18533 thiss!18206 rules!2135 lt!1068851 separatorToken!241))))

(assert (=> d!870281 (rulesInvariant!4102 thiss!18206 rules!2135)))

(assert (=> d!870281 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!845 thiss!18206 rules!2135 lt!1068851 separatorToken!241) lt!1068967)))

(declare-fun b!3180144 () Bool)

(declare-fun res!1292390 () Bool)

(assert (=> b!3180144 (=> (not res!1292390) (not e!1981188))))

(assert (=> b!3180144 (= res!1292390 (matchR!4533 (regex!5116 (get!11355 (getRuleFromTag!845 thiss!18206 rules!2135 (tag!5620 (rule!7526 separatorToken!241))))) (list!12673 (charsOf!3138 separatorToken!241))))))

(declare-fun b!3180145 () Bool)

(assert (=> b!3180145 (= e!1981188 (= (rule!7526 separatorToken!241) (get!11355 (getRuleFromTag!845 thiss!18206 rules!2135 (tag!5620 (rule!7526 separatorToken!241))))))))

(assert (= (and d!870281 res!1292389) b!3180144))

(assert (= (and b!3180144 res!1292390) b!3180145))

(assert (=> d!870281 m!3436389))

(assert (=> d!870281 m!3436389))

(declare-fun m!3436855 () Bool)

(assert (=> d!870281 m!3436855))

(declare-fun m!3436857 () Bool)

(assert (=> d!870281 m!3436857))

(assert (=> d!870281 m!3436411))

(assert (=> b!3180144 m!3436389))

(declare-fun m!3436859 () Bool)

(assert (=> b!3180144 m!3436859))

(assert (=> b!3180144 m!3436335))

(declare-fun m!3436861 () Bool)

(assert (=> b!3180144 m!3436861))

(assert (=> b!3180144 m!3436327))

(assert (=> b!3180144 m!3436335))

(assert (=> b!3180144 m!3436327))

(assert (=> b!3180144 m!3436389))

(assert (=> b!3180145 m!3436389))

(assert (=> b!3180145 m!3436389))

(assert (=> b!3180145 m!3436859))

(assert (=> b!3179817 d!870281))

(declare-fun d!870283 () Bool)

(declare-fun dynLambda!14394 (Int BalanceConc!20828) TokenValue!5346)

(assert (=> d!870283 (= (apply!8024 (transformation!5116 (rule!7526 (h!41140 tokens!494))) lt!1068834) (dynLambda!14394 (toValue!7176 (transformation!5116 (rule!7526 (h!41140 tokens!494)))) lt!1068834))))

(declare-fun b_lambda!86563 () Bool)

(assert (=> (not b_lambda!86563) (not d!870283)))

(declare-fun tb!155173 () Bool)

(declare-fun t!235054 () Bool)

(assert (=> (and b!3179804 (= (toValue!7176 (transformation!5116 (rule!7526 separatorToken!241))) (toValue!7176 (transformation!5116 (rule!7526 (h!41140 tokens!494))))) t!235054) tb!155173))

(declare-fun result!197190 () Bool)

(assert (=> tb!155173 (= result!197190 (inv!21 (dynLambda!14394 (toValue!7176 (transformation!5116 (rule!7526 (h!41140 tokens!494)))) lt!1068834)))))

(declare-fun m!3436863 () Bool)

(assert (=> tb!155173 m!3436863))

(assert (=> d!870283 t!235054))

(declare-fun b_and!210173 () Bool)

(assert (= b_and!210131 (and (=> t!235054 result!197190) b_and!210173)))

(declare-fun t!235056 () Bool)

(declare-fun tb!155175 () Bool)

(assert (=> (and b!3179806 (= (toValue!7176 (transformation!5116 (h!41141 rules!2135))) (toValue!7176 (transformation!5116 (rule!7526 (h!41140 tokens!494))))) t!235056) tb!155175))

(declare-fun result!197194 () Bool)

(assert (= result!197194 result!197190))

(assert (=> d!870283 t!235056))

(declare-fun b_and!210175 () Bool)

(assert (= b_and!210135 (and (=> t!235056 result!197194) b_and!210175)))

(declare-fun t!235058 () Bool)

(declare-fun tb!155177 () Bool)

(assert (=> (and b!3179807 (= (toValue!7176 (transformation!5116 (rule!7526 (h!41140 tokens!494)))) (toValue!7176 (transformation!5116 (rule!7526 (h!41140 tokens!494))))) t!235058) tb!155177))

(declare-fun result!197196 () Bool)

(assert (= result!197196 result!197190))

(assert (=> d!870283 t!235058))

(declare-fun b_and!210177 () Bool)

(assert (= b_and!210139 (and (=> t!235058 result!197196) b_and!210177)))

(declare-fun m!3436865 () Bool)

(assert (=> d!870283 m!3436865))

(assert (=> b!3179817 d!870283))

(declare-fun d!870285 () Bool)

(declare-fun e!1981203 () Bool)

(assert (=> d!870285 e!1981203))

(declare-fun res!1292395 () Bool)

(assert (=> d!870285 (=> res!1292395 e!1981203)))

(declare-fun lt!1068975 () Option!6963)

(assert (=> d!870285 (= res!1292395 (isEmpty!19838 lt!1068975))))

(declare-fun e!1981200 () Option!6963)

(assert (=> d!870285 (= lt!1068975 e!1981200)))

(declare-fun c!534192 () Bool)

(assert (=> d!870285 (= c!534192 (and ((_ is Cons!35721) rules!2135) (= (tag!5620 (h!41141 rules!2135)) (tag!5620 (rule!7526 separatorToken!241)))))))

(assert (=> d!870285 (rulesInvariant!4102 thiss!18206 rules!2135)))

(assert (=> d!870285 (= (getRuleFromTag!845 thiss!18206 rules!2135 (tag!5620 (rule!7526 separatorToken!241))) lt!1068975)))

(declare-fun b!3180160 () Bool)

(assert (=> b!3180160 (= e!1981200 (Some!6962 (h!41141 rules!2135)))))

(declare-fun b!3180161 () Bool)

(declare-fun e!1981202 () Bool)

(assert (=> b!3180161 (= e!1981203 e!1981202)))

(declare-fun res!1292396 () Bool)

(assert (=> b!3180161 (=> (not res!1292396) (not e!1981202))))

(declare-fun contains!6311 (List!35845 Rule!10032) Bool)

(assert (=> b!3180161 (= res!1292396 (contains!6311 rules!2135 (get!11355 lt!1068975)))))

(declare-fun b!3180162 () Bool)

(assert (=> b!3180162 (= e!1981202 (= (tag!5620 (get!11355 lt!1068975)) (tag!5620 (rule!7526 separatorToken!241))))))

(declare-fun b!3180163 () Bool)

(declare-fun e!1981201 () Option!6963)

(assert (=> b!3180163 (= e!1981200 e!1981201)))

(declare-fun c!534191 () Bool)

(assert (=> b!3180163 (= c!534191 (and ((_ is Cons!35721) rules!2135) (not (= (tag!5620 (h!41141 rules!2135)) (tag!5620 (rule!7526 separatorToken!241))))))))

(declare-fun b!3180164 () Bool)

(declare-fun lt!1068976 () Unit!50130)

(declare-fun lt!1068974 () Unit!50130)

(assert (=> b!3180164 (= lt!1068976 lt!1068974)))

(assert (=> b!3180164 (rulesInvariant!4102 thiss!18206 (t!235028 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!328 (LexerInterface!4705 Rule!10032 List!35845) Unit!50130)

(assert (=> b!3180164 (= lt!1068974 (lemmaInvariantOnRulesThenOnTail!328 thiss!18206 (h!41141 rules!2135) (t!235028 rules!2135)))))

(assert (=> b!3180164 (= e!1981201 (getRuleFromTag!845 thiss!18206 (t!235028 rules!2135) (tag!5620 (rule!7526 separatorToken!241))))))

(declare-fun b!3180165 () Bool)

(assert (=> b!3180165 (= e!1981201 None!6962)))

(assert (= (and d!870285 c!534192) b!3180160))

(assert (= (and d!870285 (not c!534192)) b!3180163))

(assert (= (and b!3180163 c!534191) b!3180164))

(assert (= (and b!3180163 (not c!534191)) b!3180165))

(assert (= (and d!870285 (not res!1292395)) b!3180161))

(assert (= (and b!3180161 res!1292396) b!3180162))

(declare-fun m!3436867 () Bool)

(assert (=> d!870285 m!3436867))

(assert (=> d!870285 m!3436411))

(declare-fun m!3436869 () Bool)

(assert (=> b!3180161 m!3436869))

(assert (=> b!3180161 m!3436869))

(declare-fun m!3436871 () Bool)

(assert (=> b!3180161 m!3436871))

(assert (=> b!3180162 m!3436869))

(declare-fun m!3436873 () Bool)

(assert (=> b!3180164 m!3436873))

(declare-fun m!3436875 () Bool)

(assert (=> b!3180164 m!3436875))

(declare-fun m!3436877 () Bool)

(assert (=> b!3180164 m!3436877))

(assert (=> b!3179817 d!870285))

(declare-fun d!870287 () Bool)

(declare-fun lt!1068979 () Int)

(assert (=> d!870287 (>= lt!1068979 0)))

(declare-fun e!1981206 () Int)

(assert (=> d!870287 (= lt!1068979 e!1981206)))

(declare-fun c!534195 () Bool)

(assert (=> d!870287 (= c!534195 ((_ is Nil!35719) lt!1068848))))

(assert (=> d!870287 (= (size!26955 lt!1068848) lt!1068979)))

(declare-fun b!3180170 () Bool)

(assert (=> b!3180170 (= e!1981206 0)))

(declare-fun b!3180171 () Bool)

(assert (=> b!3180171 (= e!1981206 (+ 1 (size!26955 (t!235026 lt!1068848))))))

(assert (= (and d!870287 c!534195) b!3180170))

(assert (= (and d!870287 (not c!534195)) b!3180171))

(declare-fun m!3436879 () Bool)

(assert (=> b!3180171 m!3436879))

(assert (=> b!3179817 d!870287))

(declare-fun d!870289 () Bool)

(assert (=> d!870289 (isEmpty!19828 (getSuffix!1332 lt!1068848 lt!1068848))))

(declare-fun lt!1068982 () Unit!50130)

(declare-fun choose!18534 (List!35843) Unit!50130)

(assert (=> d!870289 (= lt!1068982 (choose!18534 lt!1068848))))

(assert (=> d!870289 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!10 lt!1068848) lt!1068982)))

(declare-fun bs!539844 () Bool)

(assert (= bs!539844 d!870289))

(assert (=> bs!539844 m!3436379))

(assert (=> bs!539844 m!3436379))

(assert (=> bs!539844 m!3436381))

(declare-fun m!3436881 () Bool)

(assert (=> bs!539844 m!3436881))

(assert (=> b!3179817 d!870289))

(declare-fun d!870291 () Bool)

(declare-fun e!1981216 () Bool)

(assert (=> d!870291 e!1981216))

(declare-fun res!1292411 () Bool)

(assert (=> d!870291 (=> res!1292411 e!1981216)))

(declare-fun lt!1068995 () Option!6964)

(declare-fun isEmpty!19839 (Option!6964) Bool)

(assert (=> d!870291 (= res!1292411 (isEmpty!19839 lt!1068995))))

(declare-fun e!1981215 () Option!6964)

(assert (=> d!870291 (= lt!1068995 e!1981215)))

(declare-fun c!534198 () Bool)

(declare-datatypes ((tuple2!35056 0))(
  ( (tuple2!35057 (_1!20662 List!35843) (_2!20662 List!35843)) )
))
(declare-fun lt!1068994 () tuple2!35056)

(assert (=> d!870291 (= c!534198 (isEmpty!19828 (_1!20662 lt!1068994)))))

(declare-fun findLongestMatch!724 (Regex!9875 List!35843) tuple2!35056)

(assert (=> d!870291 (= lt!1068994 (findLongestMatch!724 (regex!5116 (rule!7526 (h!41140 tokens!494))) lt!1068848))))

(declare-fun ruleValid!1618 (LexerInterface!4705 Rule!10032) Bool)

(assert (=> d!870291 (ruleValid!1618 thiss!18206 (rule!7526 (h!41140 tokens!494)))))

(assert (=> d!870291 (= (maxPrefixOneRule!1510 thiss!18206 (rule!7526 (h!41140 tokens!494)) lt!1068848) lt!1068995)))

(declare-fun b!3180190 () Bool)

(declare-fun e!1981217 () Bool)

(declare-fun get!11357 (Option!6964) tuple2!35046)

(assert (=> b!3180190 (= e!1981217 (= (size!26954 (_1!20657 (get!11357 lt!1068995))) (size!26955 (originalCharacters!5830 (_1!20657 (get!11357 lt!1068995))))))))

(declare-fun b!3180191 () Bool)

(declare-fun e!1981218 () Bool)

(declare-fun findLongestMatchInner!809 (Regex!9875 List!35843 Int List!35843 List!35843 Int) tuple2!35056)

(assert (=> b!3180191 (= e!1981218 (matchR!4533 (regex!5116 (rule!7526 (h!41140 tokens!494))) (_1!20662 (findLongestMatchInner!809 (regex!5116 (rule!7526 (h!41140 tokens!494))) Nil!35719 (size!26955 Nil!35719) lt!1068848 lt!1068848 (size!26955 lt!1068848)))))))

(declare-fun b!3180192 () Bool)

(declare-fun res!1292416 () Bool)

(assert (=> b!3180192 (=> (not res!1292416) (not e!1981217))))

(assert (=> b!3180192 (= res!1292416 (= (value!166266 (_1!20657 (get!11357 lt!1068995))) (apply!8024 (transformation!5116 (rule!7526 (_1!20657 (get!11357 lt!1068995)))) (seqFromList!3312 (originalCharacters!5830 (_1!20657 (get!11357 lt!1068995)))))))))

(declare-fun b!3180193 () Bool)

(declare-fun res!1292414 () Bool)

(assert (=> b!3180193 (=> (not res!1292414) (not e!1981217))))

(assert (=> b!3180193 (= res!1292414 (= (++!8536 (list!12673 (charsOf!3138 (_1!20657 (get!11357 lt!1068995)))) (_2!20657 (get!11357 lt!1068995))) lt!1068848))))

(declare-fun b!3180194 () Bool)

(assert (=> b!3180194 (= e!1981216 e!1981217)))

(declare-fun res!1292417 () Bool)

(assert (=> b!3180194 (=> (not res!1292417) (not e!1981217))))

(assert (=> b!3180194 (= res!1292417 (matchR!4533 (regex!5116 (rule!7526 (h!41140 tokens!494))) (list!12673 (charsOf!3138 (_1!20657 (get!11357 lt!1068995))))))))

(declare-fun b!3180195 () Bool)

(declare-fun res!1292415 () Bool)

(assert (=> b!3180195 (=> (not res!1292415) (not e!1981217))))

(assert (=> b!3180195 (= res!1292415 (= (rule!7526 (_1!20657 (get!11357 lt!1068995))) (rule!7526 (h!41140 tokens!494))))))

(declare-fun b!3180196 () Bool)

(assert (=> b!3180196 (= e!1981215 None!6963)))

(declare-fun b!3180197 () Bool)

(assert (=> b!3180197 (= e!1981215 (Some!6963 (tuple2!35047 (Token!9599 (apply!8024 (transformation!5116 (rule!7526 (h!41140 tokens!494))) (seqFromList!3312 (_1!20662 lt!1068994))) (rule!7526 (h!41140 tokens!494)) (size!26959 (seqFromList!3312 (_1!20662 lt!1068994))) (_1!20662 lt!1068994)) (_2!20662 lt!1068994))))))

(declare-fun lt!1068996 () Unit!50130)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!782 (Regex!9875 List!35843) Unit!50130)

(assert (=> b!3180197 (= lt!1068996 (longestMatchIsAcceptedByMatchOrIsEmpty!782 (regex!5116 (rule!7526 (h!41140 tokens!494))) lt!1068848))))

(declare-fun res!1292412 () Bool)

(assert (=> b!3180197 (= res!1292412 (isEmpty!19828 (_1!20662 (findLongestMatchInner!809 (regex!5116 (rule!7526 (h!41140 tokens!494))) Nil!35719 (size!26955 Nil!35719) lt!1068848 lt!1068848 (size!26955 lt!1068848)))))))

(assert (=> b!3180197 (=> res!1292412 e!1981218)))

(assert (=> b!3180197 e!1981218))

(declare-fun lt!1068997 () Unit!50130)

(assert (=> b!3180197 (= lt!1068997 lt!1068996)))

(declare-fun lt!1068993 () Unit!50130)

(declare-fun lemmaSemiInverse!1151 (TokenValueInjection!10120 BalanceConc!20828) Unit!50130)

(assert (=> b!3180197 (= lt!1068993 (lemmaSemiInverse!1151 (transformation!5116 (rule!7526 (h!41140 tokens!494))) (seqFromList!3312 (_1!20662 lt!1068994))))))

(declare-fun b!3180198 () Bool)

(declare-fun res!1292413 () Bool)

(assert (=> b!3180198 (=> (not res!1292413) (not e!1981217))))

(assert (=> b!3180198 (= res!1292413 (< (size!26955 (_2!20657 (get!11357 lt!1068995))) (size!26955 lt!1068848)))))

(assert (= (and d!870291 c!534198) b!3180196))

(assert (= (and d!870291 (not c!534198)) b!3180197))

(assert (= (and b!3180197 (not res!1292412)) b!3180191))

(assert (= (and d!870291 (not res!1292411)) b!3180194))

(assert (= (and b!3180194 res!1292417) b!3180193))

(assert (= (and b!3180193 res!1292414) b!3180198))

(assert (= (and b!3180198 res!1292413) b!3180195))

(assert (= (and b!3180195 res!1292415) b!3180192))

(assert (= (and b!3180192 res!1292416) b!3180190))

(declare-fun m!3436883 () Bool)

(assert (=> d!870291 m!3436883))

(declare-fun m!3436885 () Bool)

(assert (=> d!870291 m!3436885))

(declare-fun m!3436887 () Bool)

(assert (=> d!870291 m!3436887))

(declare-fun m!3436889 () Bool)

(assert (=> d!870291 m!3436889))

(declare-fun m!3436891 () Bool)

(assert (=> b!3180192 m!3436891))

(declare-fun m!3436893 () Bool)

(assert (=> b!3180192 m!3436893))

(assert (=> b!3180192 m!3436893))

(declare-fun m!3436895 () Bool)

(assert (=> b!3180192 m!3436895))

(declare-fun m!3436897 () Bool)

(assert (=> b!3180191 m!3436897))

(assert (=> b!3180191 m!3436391))

(assert (=> b!3180191 m!3436897))

(assert (=> b!3180191 m!3436391))

(declare-fun m!3436899 () Bool)

(assert (=> b!3180191 m!3436899))

(declare-fun m!3436901 () Bool)

(assert (=> b!3180191 m!3436901))

(assert (=> b!3180195 m!3436891))

(assert (=> b!3180194 m!3436891))

(declare-fun m!3436903 () Bool)

(assert (=> b!3180194 m!3436903))

(assert (=> b!3180194 m!3436903))

(declare-fun m!3436905 () Bool)

(assert (=> b!3180194 m!3436905))

(assert (=> b!3180194 m!3436905))

(declare-fun m!3436907 () Bool)

(assert (=> b!3180194 m!3436907))

(assert (=> b!3180197 m!3436897))

(assert (=> b!3180197 m!3436391))

(assert (=> b!3180197 m!3436899))

(declare-fun m!3436909 () Bool)

(assert (=> b!3180197 m!3436909))

(declare-fun m!3436911 () Bool)

(assert (=> b!3180197 m!3436911))

(assert (=> b!3180197 m!3436909))

(assert (=> b!3180197 m!3436909))

(declare-fun m!3436913 () Bool)

(assert (=> b!3180197 m!3436913))

(assert (=> b!3180197 m!3436897))

(declare-fun m!3436915 () Bool)

(assert (=> b!3180197 m!3436915))

(declare-fun m!3436917 () Bool)

(assert (=> b!3180197 m!3436917))

(assert (=> b!3180197 m!3436909))

(declare-fun m!3436919 () Bool)

(assert (=> b!3180197 m!3436919))

(assert (=> b!3180197 m!3436391))

(assert (=> b!3180190 m!3436891))

(declare-fun m!3436921 () Bool)

(assert (=> b!3180190 m!3436921))

(assert (=> b!3180198 m!3436891))

(declare-fun m!3436923 () Bool)

(assert (=> b!3180198 m!3436923))

(assert (=> b!3180198 m!3436391))

(assert (=> b!3180193 m!3436891))

(assert (=> b!3180193 m!3436903))

(assert (=> b!3180193 m!3436903))

(assert (=> b!3180193 m!3436905))

(assert (=> b!3180193 m!3436905))

(declare-fun m!3436925 () Bool)

(assert (=> b!3180193 m!3436925))

(assert (=> b!3179817 d!870291))

(declare-fun b!3180215 () Bool)

(declare-fun e!1981230 () List!35843)

(declare-fun e!1981228 () List!35843)

(assert (=> b!3180215 (= e!1981230 e!1981228)))

(declare-fun c!534207 () Bool)

(assert (=> b!3180215 (= c!534207 ((_ is ElementMatch!9875) (regex!5116 (rule!7526 separatorToken!241))))))

(declare-fun b!3180216 () Bool)

(declare-fun e!1981227 () List!35843)

(declare-fun e!1981229 () List!35843)

(assert (=> b!3180216 (= e!1981227 e!1981229)))

(declare-fun c!534208 () Bool)

(assert (=> b!3180216 (= c!534208 ((_ is Union!9875) (regex!5116 (rule!7526 separatorToken!241))))))

(declare-fun b!3180217 () Bool)

(assert (=> b!3180217 (= e!1981228 (Cons!35719 (c!534122 (regex!5116 (rule!7526 separatorToken!241))) Nil!35719))))

(declare-fun b!3180218 () Bool)

(declare-fun call!230920 () List!35843)

(assert (=> b!3180218 (= e!1981229 call!230920)))

(declare-fun call!230919 () List!35843)

(declare-fun call!230918 () List!35843)

(declare-fun bm!230912 () Bool)

(assert (=> bm!230912 (= call!230920 (++!8536 (ite c!534208 call!230919 call!230918) (ite c!534208 call!230918 call!230919)))))

(declare-fun b!3180219 () Bool)

(assert (=> b!3180219 (= e!1981230 Nil!35719)))

(declare-fun d!870293 () Bool)

(declare-fun c!534209 () Bool)

(assert (=> d!870293 (= c!534209 (or ((_ is EmptyExpr!9875) (regex!5116 (rule!7526 separatorToken!241))) ((_ is EmptyLang!9875) (regex!5116 (rule!7526 separatorToken!241)))))))

(assert (=> d!870293 (= (usedCharacters!460 (regex!5116 (rule!7526 separatorToken!241))) e!1981230)))

(declare-fun b!3180220 () Bool)

(declare-fun call!230917 () List!35843)

(assert (=> b!3180220 (= e!1981227 call!230917)))

(declare-fun bm!230913 () Bool)

(assert (=> bm!230913 (= call!230918 call!230917)))

(declare-fun bm!230914 () Bool)

(declare-fun c!534210 () Bool)

(assert (=> bm!230914 (= call!230917 (usedCharacters!460 (ite c!534210 (reg!10204 (regex!5116 (rule!7526 separatorToken!241))) (ite c!534208 (regTwo!20263 (regex!5116 (rule!7526 separatorToken!241))) (regOne!20262 (regex!5116 (rule!7526 separatorToken!241)))))))))

(declare-fun b!3180221 () Bool)

(assert (=> b!3180221 (= c!534210 ((_ is Star!9875) (regex!5116 (rule!7526 separatorToken!241))))))

(assert (=> b!3180221 (= e!1981228 e!1981227)))

(declare-fun bm!230915 () Bool)

(assert (=> bm!230915 (= call!230919 (usedCharacters!460 (ite c!534208 (regOne!20263 (regex!5116 (rule!7526 separatorToken!241))) (regTwo!20262 (regex!5116 (rule!7526 separatorToken!241))))))))

(declare-fun b!3180222 () Bool)

(assert (=> b!3180222 (= e!1981229 call!230920)))

(assert (= (and d!870293 c!534209) b!3180219))

(assert (= (and d!870293 (not c!534209)) b!3180215))

(assert (= (and b!3180215 c!534207) b!3180217))

(assert (= (and b!3180215 (not c!534207)) b!3180221))

(assert (= (and b!3180221 c!534210) b!3180220))

(assert (= (and b!3180221 (not c!534210)) b!3180216))

(assert (= (and b!3180216 c!534208) b!3180218))

(assert (= (and b!3180216 (not c!534208)) b!3180222))

(assert (= (or b!3180218 b!3180222) bm!230913))

(assert (= (or b!3180218 b!3180222) bm!230915))

(assert (= (or b!3180218 b!3180222) bm!230912))

(assert (= (or b!3180220 bm!230913) bm!230914))

(declare-fun m!3436927 () Bool)

(assert (=> bm!230912 m!3436927))

(declare-fun m!3436929 () Bool)

(assert (=> bm!230914 m!3436929))

(declare-fun m!3436931 () Bool)

(assert (=> bm!230915 m!3436931))

(assert (=> b!3179817 d!870293))

(declare-fun d!870295 () Bool)

(assert (=> d!870295 (= (maxPrefixOneRule!1510 thiss!18206 (rule!7526 (h!41140 tokens!494)) lt!1068848) (Some!6963 (tuple2!35047 (Token!9599 (apply!8024 (transformation!5116 (rule!7526 (h!41140 tokens!494))) (seqFromList!3312 lt!1068848)) (rule!7526 (h!41140 tokens!494)) (size!26955 lt!1068848) lt!1068848) Nil!35719)))))

(declare-fun lt!1069000 () Unit!50130)

(declare-fun choose!18535 (LexerInterface!4705 List!35845 List!35843 List!35843 List!35843 Rule!10032) Unit!50130)

(assert (=> d!870295 (= lt!1069000 (choose!18535 thiss!18206 rules!2135 lt!1068848 lt!1068848 Nil!35719 (rule!7526 (h!41140 tokens!494))))))

(assert (=> d!870295 (not (isEmpty!19827 rules!2135))))

(assert (=> d!870295 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!623 thiss!18206 rules!2135 lt!1068848 lt!1068848 Nil!35719 (rule!7526 (h!41140 tokens!494))) lt!1069000)))

(declare-fun bs!539845 () Bool)

(assert (= bs!539845 d!870295))

(assert (=> bs!539845 m!3436397))

(assert (=> bs!539845 m!3436363))

(assert (=> bs!539845 m!3436357))

(declare-fun m!3436933 () Bool)

(assert (=> bs!539845 m!3436933))

(assert (=> bs!539845 m!3436391))

(assert (=> bs!539845 m!3436363))

(declare-fun m!3436935 () Bool)

(assert (=> bs!539845 m!3436935))

(assert (=> b!3179817 d!870295))

(declare-fun d!870297 () Bool)

(assert (=> d!870297 (= (isDefined!5460 lt!1068836) (not (isEmpty!19838 lt!1068836)))))

(declare-fun bs!539846 () Bool)

(assert (= bs!539846 d!870297))

(declare-fun m!3436937 () Bool)

(assert (=> bs!539846 m!3436937))

(assert (=> b!3179817 d!870297))

(declare-fun d!870299 () Bool)

(assert (=> d!870299 (rulesProduceIndividualToken!2197 thiss!18206 rules!2135 (h!41140 tokens!494))))

(declare-fun lt!1069006 () Unit!50130)

(declare-fun choose!18536 (LexerInterface!4705 List!35845 List!35844 Token!9598) Unit!50130)

(assert (=> d!870299 (= lt!1069006 (choose!18536 thiss!18206 rules!2135 tokens!494 (h!41140 tokens!494)))))

(assert (=> d!870299 (not (isEmpty!19827 rules!2135))))

(assert (=> d!870299 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!766 thiss!18206 rules!2135 tokens!494 (h!41140 tokens!494)) lt!1069006)))

(declare-fun bs!539849 () Bool)

(assert (= bs!539849 d!870299))

(assert (=> bs!539849 m!3436347))

(declare-fun m!3436951 () Bool)

(assert (=> bs!539849 m!3436951))

(assert (=> bs!539849 m!3436357))

(assert (=> b!3179817 d!870299))

(declare-fun d!870309 () Bool)

(assert (=> d!870309 (= (isEmpty!19828 (getSuffix!1332 lt!1068848 lt!1068848)) ((_ is Nil!35719) (getSuffix!1332 lt!1068848 lt!1068848)))))

(assert (=> b!3179817 d!870309))

(declare-fun d!870311 () Bool)

(declare-fun e!1981250 () Bool)

(assert (=> d!870311 e!1981250))

(declare-fun res!1292425 () Bool)

(assert (=> d!870311 (=> res!1292425 e!1981250)))

(declare-fun lt!1069009 () Option!6963)

(assert (=> d!870311 (= res!1292425 (isEmpty!19838 lt!1069009))))

(declare-fun e!1981247 () Option!6963)

(assert (=> d!870311 (= lt!1069009 e!1981247)))

(declare-fun c!534212 () Bool)

(assert (=> d!870311 (= c!534212 (and ((_ is Cons!35721) rules!2135) (= (tag!5620 (h!41141 rules!2135)) (tag!5620 (rule!7526 (h!41140 tokens!494))))))))

(assert (=> d!870311 (rulesInvariant!4102 thiss!18206 rules!2135)))

(assert (=> d!870311 (= (getRuleFromTag!845 thiss!18206 rules!2135 (tag!5620 (rule!7526 (h!41140 tokens!494)))) lt!1069009)))

(declare-fun b!3180243 () Bool)

(assert (=> b!3180243 (= e!1981247 (Some!6962 (h!41141 rules!2135)))))

(declare-fun b!3180244 () Bool)

(declare-fun e!1981249 () Bool)

(assert (=> b!3180244 (= e!1981250 e!1981249)))

(declare-fun res!1292426 () Bool)

(assert (=> b!3180244 (=> (not res!1292426) (not e!1981249))))

(assert (=> b!3180244 (= res!1292426 (contains!6311 rules!2135 (get!11355 lt!1069009)))))

(declare-fun b!3180245 () Bool)

(assert (=> b!3180245 (= e!1981249 (= (tag!5620 (get!11355 lt!1069009)) (tag!5620 (rule!7526 (h!41140 tokens!494)))))))

(declare-fun b!3180246 () Bool)

(declare-fun e!1981248 () Option!6963)

(assert (=> b!3180246 (= e!1981247 e!1981248)))

(declare-fun c!534211 () Bool)

(assert (=> b!3180246 (= c!534211 (and ((_ is Cons!35721) rules!2135) (not (= (tag!5620 (h!41141 rules!2135)) (tag!5620 (rule!7526 (h!41140 tokens!494)))))))))

(declare-fun b!3180247 () Bool)

(declare-fun lt!1069010 () Unit!50130)

(declare-fun lt!1069008 () Unit!50130)

(assert (=> b!3180247 (= lt!1069010 lt!1069008)))

(assert (=> b!3180247 (rulesInvariant!4102 thiss!18206 (t!235028 rules!2135))))

(assert (=> b!3180247 (= lt!1069008 (lemmaInvariantOnRulesThenOnTail!328 thiss!18206 (h!41141 rules!2135) (t!235028 rules!2135)))))

(assert (=> b!3180247 (= e!1981248 (getRuleFromTag!845 thiss!18206 (t!235028 rules!2135) (tag!5620 (rule!7526 (h!41140 tokens!494)))))))

(declare-fun b!3180248 () Bool)

(assert (=> b!3180248 (= e!1981248 None!6962)))

(assert (= (and d!870311 c!534212) b!3180243))

(assert (= (and d!870311 (not c!534212)) b!3180246))

(assert (= (and b!3180246 c!534211) b!3180247))

(assert (= (and b!3180246 (not c!534211)) b!3180248))

(assert (= (and d!870311 (not res!1292425)) b!3180244))

(assert (= (and b!3180244 res!1292426) b!3180245))

(declare-fun m!3436957 () Bool)

(assert (=> d!870311 m!3436957))

(assert (=> d!870311 m!3436411))

(declare-fun m!3436963 () Bool)

(assert (=> b!3180244 m!3436963))

(assert (=> b!3180244 m!3436963))

(declare-fun m!3436967 () Bool)

(assert (=> b!3180244 m!3436967))

(assert (=> b!3180245 m!3436963))

(assert (=> b!3180247 m!3436873))

(assert (=> b!3180247 m!3436875))

(declare-fun m!3436969 () Bool)

(assert (=> b!3180247 m!3436969))

(assert (=> b!3179817 d!870311))

(declare-fun bs!539856 () Bool)

(declare-fun d!870317 () Bool)

(assert (= bs!539856 (and d!870317 b!3179801)))

(declare-fun lambda!116383 () Int)

(assert (=> bs!539856 (not (= lambda!116383 lambda!116373))))

(declare-fun b!3180422 () Bool)

(declare-fun e!1981361 () Bool)

(assert (=> b!3180422 (= e!1981361 true)))

(declare-fun b!3180421 () Bool)

(declare-fun e!1981360 () Bool)

(assert (=> b!3180421 (= e!1981360 e!1981361)))

(declare-fun b!3180420 () Bool)

(declare-fun e!1981359 () Bool)

(assert (=> b!3180420 (= e!1981359 e!1981360)))

(assert (=> d!870317 e!1981359))

(assert (= b!3180421 b!3180422))

(assert (= b!3180420 b!3180421))

(assert (= (and d!870317 ((_ is Cons!35721) rules!2135)) b!3180420))

(declare-fun order!18185 () Int)

(declare-fun order!18187 () Int)

(declare-fun dynLambda!14395 (Int Int) Int)

(declare-fun dynLambda!14396 (Int Int) Int)

(assert (=> b!3180422 (< (dynLambda!14395 order!18185 (toValue!7176 (transformation!5116 (h!41141 rules!2135)))) (dynLambda!14396 order!18187 lambda!116383))))

(declare-fun order!18189 () Int)

(declare-fun dynLambda!14397 (Int Int) Int)

(assert (=> b!3180422 (< (dynLambda!14397 order!18189 (toChars!7035 (transformation!5116 (h!41141 rules!2135)))) (dynLambda!14396 order!18187 lambda!116383))))

(assert (=> d!870317 true))

(declare-fun e!1981352 () Bool)

(assert (=> d!870317 e!1981352))

(declare-fun res!1292472 () Bool)

(assert (=> d!870317 (=> (not res!1292472) (not e!1981352))))

(declare-fun lt!1069059 () Bool)

(assert (=> d!870317 (= res!1292472 (= lt!1069059 (forall!7226 (list!12676 lt!1068842) lambda!116383)))))

(declare-fun forall!7228 (BalanceConc!20830 Int) Bool)

(assert (=> d!870317 (= lt!1069059 (forall!7228 lt!1068842 lambda!116383))))

(assert (=> d!870317 (not (isEmpty!19827 rules!2135))))

(assert (=> d!870317 (= (rulesProduceEachTokenIndividually!1156 thiss!18206 rules!2135 lt!1068842) lt!1069059)))

(declare-fun b!3180411 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1697 (LexerInterface!4705 List!35845 List!35844) Bool)

(assert (=> b!3180411 (= e!1981352 (= lt!1069059 (rulesProduceEachTokenIndividuallyList!1697 thiss!18206 rules!2135 (list!12676 lt!1068842))))))

(assert (= (and d!870317 res!1292472) b!3180411))

(declare-fun m!3437101 () Bool)

(assert (=> d!870317 m!3437101))

(assert (=> d!870317 m!3437101))

(declare-fun m!3437103 () Bool)

(assert (=> d!870317 m!3437103))

(declare-fun m!3437105 () Bool)

(assert (=> d!870317 m!3437105))

(assert (=> d!870317 m!3436357))

(assert (=> b!3180411 m!3437101))

(assert (=> b!3180411 m!3437101))

(declare-fun m!3437107 () Bool)

(assert (=> b!3180411 m!3437107))

(assert (=> b!3179798 d!870317))

(declare-fun d!870353 () Bool)

(declare-fun fromListB!1490 (List!35844) BalanceConc!20830)

(assert (=> d!870353 (= (seqFromList!3311 tokens!494) (fromListB!1490 tokens!494))))

(declare-fun bs!539857 () Bool)

(assert (= bs!539857 d!870353))

(declare-fun m!3437109 () Bool)

(assert (=> bs!539857 m!3437109))

(assert (=> b!3179798 d!870353))

(declare-fun b!3180436 () Bool)

(declare-fun lt!1069062 () List!35843)

(declare-fun e!1981366 () Bool)

(assert (=> b!3180436 (= e!1981366 (or (not (= lt!1068851 Nil!35719)) (= lt!1069062 lt!1068848)))))

(declare-fun b!3180435 () Bool)

(declare-fun res!1292478 () Bool)

(assert (=> b!3180435 (=> (not res!1292478) (not e!1981366))))

(assert (=> b!3180435 (= res!1292478 (= (size!26955 lt!1069062) (+ (size!26955 lt!1068848) (size!26955 lt!1068851))))))

(declare-fun d!870355 () Bool)

(assert (=> d!870355 e!1981366))

(declare-fun res!1292477 () Bool)

(assert (=> d!870355 (=> (not res!1292477) (not e!1981366))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4840 (List!35843) (InoxSet C!19936))

(assert (=> d!870355 (= res!1292477 (= (content!4840 lt!1069062) ((_ map or) (content!4840 lt!1068848) (content!4840 lt!1068851))))))

(declare-fun e!1981367 () List!35843)

(assert (=> d!870355 (= lt!1069062 e!1981367)))

(declare-fun c!534246 () Bool)

(assert (=> d!870355 (= c!534246 ((_ is Nil!35719) lt!1068848))))

(assert (=> d!870355 (= (++!8536 lt!1068848 lt!1068851) lt!1069062)))

(declare-fun b!3180434 () Bool)

(assert (=> b!3180434 (= e!1981367 (Cons!35719 (h!41139 lt!1068848) (++!8536 (t!235026 lt!1068848) lt!1068851)))))

(declare-fun b!3180433 () Bool)

(assert (=> b!3180433 (= e!1981367 lt!1068851)))

(assert (= (and d!870355 c!534246) b!3180433))

(assert (= (and d!870355 (not c!534246)) b!3180434))

(assert (= (and d!870355 res!1292477) b!3180435))

(assert (= (and b!3180435 res!1292478) b!3180436))

(declare-fun m!3437111 () Bool)

(assert (=> b!3180435 m!3437111))

(assert (=> b!3180435 m!3436391))

(declare-fun m!3437113 () Bool)

(assert (=> b!3180435 m!3437113))

(declare-fun m!3437115 () Bool)

(assert (=> d!870355 m!3437115))

(declare-fun m!3437117 () Bool)

(assert (=> d!870355 m!3437117))

(declare-fun m!3437119 () Bool)

(assert (=> d!870355 m!3437119))

(declare-fun m!3437121 () Bool)

(assert (=> b!3180434 m!3437121))

(assert (=> b!3179819 d!870355))

(declare-fun d!870357 () Bool)

(declare-fun lt!1069065 () BalanceConc!20828)

(declare-fun printWithSeparatorTokenList!88 (LexerInterface!4705 List!35844 Token!9598) List!35843)

(assert (=> d!870357 (= (list!12673 lt!1069065) (printWithSeparatorTokenList!88 thiss!18206 (list!12676 lt!1068842) separatorToken!241))))

(declare-fun printWithSeparatorTokenTailRec!2 (LexerInterface!4705 BalanceConc!20830 Token!9598 Int BalanceConc!20828) BalanceConc!20828)

(assert (=> d!870357 (= lt!1069065 (printWithSeparatorTokenTailRec!2 thiss!18206 lt!1068842 separatorToken!241 0 (BalanceConc!20829 Empty!10607)))))

(assert (=> d!870357 (isSeparator!5116 (rule!7526 separatorToken!241))))

(assert (=> d!870357 (= (printWithSeparatorToken!14 thiss!18206 lt!1068842 separatorToken!241) lt!1069065)))

(declare-fun bs!539858 () Bool)

(assert (= bs!539858 d!870357))

(declare-fun m!3437123 () Bool)

(assert (=> bs!539858 m!3437123))

(assert (=> bs!539858 m!3437101))

(assert (=> bs!539858 m!3437101))

(declare-fun m!3437125 () Bool)

(assert (=> bs!539858 m!3437125))

(declare-fun m!3437127 () Bool)

(assert (=> bs!539858 m!3437127))

(assert (=> b!3179819 d!870357))

(declare-fun d!870359 () Bool)

(assert (=> d!870359 (= (list!12673 lt!1068844) (list!12677 (c!534123 lt!1068844)))))

(declare-fun bs!539859 () Bool)

(assert (= bs!539859 d!870359))

(declare-fun m!3437129 () Bool)

(assert (=> bs!539859 m!3437129))

(assert (=> b!3179819 d!870359))

(declare-fun d!870361 () Bool)

(declare-fun lt!1069066 () BalanceConc!20828)

(assert (=> d!870361 (= (list!12673 lt!1069066) (originalCharacters!5830 separatorToken!241))))

(assert (=> d!870361 (= lt!1069066 (dynLambda!14388 (toChars!7035 (transformation!5116 (rule!7526 separatorToken!241))) (value!166266 separatorToken!241)))))

(assert (=> d!870361 (= (charsOf!3138 separatorToken!241) lt!1069066)))

(declare-fun b_lambda!86585 () Bool)

(assert (=> (not b_lambda!86585) (not d!870361)))

(declare-fun t!235086 () Bool)

(declare-fun tb!155197 () Bool)

(assert (=> (and b!3179804 (= (toChars!7035 (transformation!5116 (rule!7526 separatorToken!241))) (toChars!7035 (transformation!5116 (rule!7526 separatorToken!241)))) t!235086) tb!155197))

(declare-fun b!3180437 () Bool)

(declare-fun e!1981368 () Bool)

(declare-fun tp!1006136 () Bool)

(assert (=> b!3180437 (= e!1981368 (and (inv!48573 (c!534123 (dynLambda!14388 (toChars!7035 (transformation!5116 (rule!7526 separatorToken!241))) (value!166266 separatorToken!241)))) tp!1006136))))

(declare-fun result!197226 () Bool)

(assert (=> tb!155197 (= result!197226 (and (inv!48574 (dynLambda!14388 (toChars!7035 (transformation!5116 (rule!7526 separatorToken!241))) (value!166266 separatorToken!241))) e!1981368))))

(assert (= tb!155197 b!3180437))

(declare-fun m!3437131 () Bool)

(assert (=> b!3180437 m!3437131))

(declare-fun m!3437133 () Bool)

(assert (=> tb!155197 m!3437133))

(assert (=> d!870361 t!235086))

(declare-fun b_and!210199 () Bool)

(assert (= b_and!210167 (and (=> t!235086 result!197226) b_and!210199)))

(declare-fun tb!155199 () Bool)

(declare-fun t!235088 () Bool)

(assert (=> (and b!3179806 (= (toChars!7035 (transformation!5116 (h!41141 rules!2135))) (toChars!7035 (transformation!5116 (rule!7526 separatorToken!241)))) t!235088) tb!155199))

(declare-fun result!197228 () Bool)

(assert (= result!197228 result!197226))

(assert (=> d!870361 t!235088))

(declare-fun b_and!210201 () Bool)

(assert (= b_and!210169 (and (=> t!235088 result!197228) b_and!210201)))

(declare-fun t!235090 () Bool)

(declare-fun tb!155201 () Bool)

(assert (=> (and b!3179807 (= (toChars!7035 (transformation!5116 (rule!7526 (h!41140 tokens!494)))) (toChars!7035 (transformation!5116 (rule!7526 separatorToken!241)))) t!235090) tb!155201))

(declare-fun result!197230 () Bool)

(assert (= result!197230 result!197226))

(assert (=> d!870361 t!235090))

(declare-fun b_and!210203 () Bool)

(assert (= b_and!210171 (and (=> t!235090 result!197230) b_and!210203)))

(declare-fun m!3437135 () Bool)

(assert (=> d!870361 m!3437135))

(declare-fun m!3437137 () Bool)

(assert (=> d!870361 m!3437137))

(assert (=> b!3179819 d!870361))

(declare-fun d!870363 () Bool)

(assert (=> d!870363 (= (list!12673 (charsOf!3138 separatorToken!241)) (list!12677 (c!534123 (charsOf!3138 separatorToken!241))))))

(declare-fun bs!539860 () Bool)

(assert (= bs!539860 d!870363))

(declare-fun m!3437139 () Bool)

(assert (=> bs!539860 m!3437139))

(assert (=> b!3179819 d!870363))

(declare-fun d!870365 () Bool)

(declare-fun res!1292479 () Bool)

(declare-fun e!1981369 () Bool)

(assert (=> d!870365 (=> (not res!1292479) (not e!1981369))))

(assert (=> d!870365 (= res!1292479 (not (isEmpty!19828 (originalCharacters!5830 separatorToken!241))))))

(assert (=> d!870365 (= (inv!48570 separatorToken!241) e!1981369)))

(declare-fun b!3180438 () Bool)

(declare-fun res!1292480 () Bool)

(assert (=> b!3180438 (=> (not res!1292480) (not e!1981369))))

(assert (=> b!3180438 (= res!1292480 (= (originalCharacters!5830 separatorToken!241) (list!12673 (dynLambda!14388 (toChars!7035 (transformation!5116 (rule!7526 separatorToken!241))) (value!166266 separatorToken!241)))))))

(declare-fun b!3180439 () Bool)

(assert (=> b!3180439 (= e!1981369 (= (size!26954 separatorToken!241) (size!26955 (originalCharacters!5830 separatorToken!241))))))

(assert (= (and d!870365 res!1292479) b!3180438))

(assert (= (and b!3180438 res!1292480) b!3180439))

(declare-fun b_lambda!86587 () Bool)

(assert (=> (not b_lambda!86587) (not b!3180438)))

(assert (=> b!3180438 t!235086))

(declare-fun b_and!210205 () Bool)

(assert (= b_and!210199 (and (=> t!235086 result!197226) b_and!210205)))

(assert (=> b!3180438 t!235088))

(declare-fun b_and!210207 () Bool)

(assert (= b_and!210201 (and (=> t!235088 result!197228) b_and!210207)))

(assert (=> b!3180438 t!235090))

(declare-fun b_and!210209 () Bool)

(assert (= b_and!210203 (and (=> t!235090 result!197230) b_and!210209)))

(declare-fun m!3437141 () Bool)

(assert (=> d!870365 m!3437141))

(assert (=> b!3180438 m!3437137))

(assert (=> b!3180438 m!3437137))

(declare-fun m!3437143 () Bool)

(assert (=> b!3180438 m!3437143))

(declare-fun m!3437145 () Bool)

(assert (=> b!3180439 m!3437145))

(assert (=> start!297778 d!870365))

(declare-fun d!870367 () Bool)

(declare-fun res!1292483 () Bool)

(declare-fun e!1981372 () Bool)

(assert (=> d!870367 (=> (not res!1292483) (not e!1981372))))

(declare-fun rulesValid!1889 (LexerInterface!4705 List!35845) Bool)

(assert (=> d!870367 (= res!1292483 (rulesValid!1889 thiss!18206 rules!2135))))

(assert (=> d!870367 (= (rulesInvariant!4102 thiss!18206 rules!2135) e!1981372)))

(declare-fun b!3180442 () Bool)

(declare-datatypes ((List!35847 0))(
  ( (Nil!35723) (Cons!35723 (h!41143 String!40064) (t!235104 List!35847)) )
))
(declare-fun noDuplicateTag!1885 (LexerInterface!4705 List!35845 List!35847) Bool)

(assert (=> b!3180442 (= e!1981372 (noDuplicateTag!1885 thiss!18206 rules!2135 Nil!35723))))

(assert (= (and d!870367 res!1292483) b!3180442))

(declare-fun m!3437147 () Bool)

(assert (=> d!870367 m!3437147))

(declare-fun m!3437149 () Bool)

(assert (=> b!3180442 m!3437149))

(assert (=> b!3179808 d!870367))

(declare-fun d!870369 () Bool)

(assert (=> d!870369 (= (inv!48566 (tag!5620 (rule!7526 (h!41140 tokens!494)))) (= (mod (str.len (value!166265 (tag!5620 (rule!7526 (h!41140 tokens!494))))) 2) 0))))

(assert (=> b!3179797 d!870369))

(declare-fun d!870371 () Bool)

(declare-fun res!1292484 () Bool)

(declare-fun e!1981373 () Bool)

(assert (=> d!870371 (=> (not res!1292484) (not e!1981373))))

(assert (=> d!870371 (= res!1292484 (semiInverseModEq!2129 (toChars!7035 (transformation!5116 (rule!7526 (h!41140 tokens!494)))) (toValue!7176 (transformation!5116 (rule!7526 (h!41140 tokens!494))))))))

(assert (=> d!870371 (= (inv!48569 (transformation!5116 (rule!7526 (h!41140 tokens!494)))) e!1981373)))

(declare-fun b!3180443 () Bool)

(assert (=> b!3180443 (= e!1981373 (equivClasses!2028 (toChars!7035 (transformation!5116 (rule!7526 (h!41140 tokens!494)))) (toValue!7176 (transformation!5116 (rule!7526 (h!41140 tokens!494))))))))

(assert (= (and d!870371 res!1292484) b!3180443))

(declare-fun m!3437151 () Bool)

(assert (=> d!870371 m!3437151))

(declare-fun m!3437153 () Bool)

(assert (=> b!3180443 m!3437153))

(assert (=> b!3179797 d!870371))

(declare-fun b!3180448 () Bool)

(declare-fun e!1981376 () Bool)

(declare-fun tp_is_empty!17245 () Bool)

(declare-fun tp!1006139 () Bool)

(assert (=> b!3180448 (= e!1981376 (and tp_is_empty!17245 tp!1006139))))

(assert (=> b!3179810 (= tp!1006062 e!1981376)))

(assert (= (and b!3179810 ((_ is Cons!35719) (originalCharacters!5830 separatorToken!241))) b!3180448))

(declare-fun b!3180462 () Bool)

(declare-fun b_free!83821 () Bool)

(declare-fun b_next!84525 () Bool)

(assert (=> b!3180462 (= b_free!83821 (not b_next!84525))))

(declare-fun t!235092 () Bool)

(declare-fun tb!155203 () Bool)

(assert (=> (and b!3180462 (= (toValue!7176 (transformation!5116 (rule!7526 (h!41140 (t!235027 tokens!494))))) (toValue!7176 (transformation!5116 (rule!7526 (h!41140 tokens!494))))) t!235092) tb!155203))

(declare-fun result!197236 () Bool)

(assert (= result!197236 result!197190))

(assert (=> d!870283 t!235092))

(declare-fun tp!1006153 () Bool)

(declare-fun b_and!210211 () Bool)

(assert (=> b!3180462 (= tp!1006153 (and (=> t!235092 result!197236) b_and!210211))))

(declare-fun b_free!83823 () Bool)

(declare-fun b_next!84527 () Bool)

(assert (=> b!3180462 (= b_free!83823 (not b_next!84527))))

(declare-fun t!235094 () Bool)

(declare-fun tb!155205 () Bool)

(assert (=> (and b!3180462 (= (toChars!7035 (transformation!5116 (rule!7526 (h!41140 (t!235027 tokens!494))))) (toChars!7035 (transformation!5116 (rule!7526 (h!41140 tokens!494))))) t!235094) tb!155205))

(declare-fun result!197238 () Bool)

(assert (= result!197238 result!197176))

(assert (=> b!3179867 t!235094))

(assert (=> d!870261 t!235094))

(declare-fun tb!155207 () Bool)

(declare-fun t!235096 () Bool)

(assert (=> (and b!3180462 (= (toChars!7035 (transformation!5116 (rule!7526 (h!41140 (t!235027 tokens!494))))) (toChars!7035 (transformation!5116 (rule!7526 separatorToken!241)))) t!235096) tb!155207))

(declare-fun result!197240 () Bool)

(assert (= result!197240 result!197226))

(assert (=> d!870361 t!235096))

(assert (=> b!3180438 t!235096))

(declare-fun tp!1006150 () Bool)

(declare-fun b_and!210213 () Bool)

(assert (=> b!3180462 (= tp!1006150 (and (=> t!235094 result!197238) (=> t!235096 result!197240) b_and!210213))))

(declare-fun e!1981394 () Bool)

(declare-fun tp!1006151 () Bool)

(declare-fun e!1981393 () Bool)

(declare-fun b!3180461 () Bool)

(assert (=> b!3180461 (= e!1981394 (and tp!1006151 (inv!48566 (tag!5620 (rule!7526 (h!41140 (t!235027 tokens!494))))) (inv!48569 (transformation!5116 (rule!7526 (h!41140 (t!235027 tokens!494))))) e!1981393))))

(assert (=> b!3180462 (= e!1981393 (and tp!1006153 tp!1006150))))

(declare-fun e!1981391 () Bool)

(assert (=> b!3179799 (= tp!1006067 e!1981391)))

(declare-fun e!1981389 () Bool)

(declare-fun tp!1006152 () Bool)

(declare-fun b!3180459 () Bool)

(assert (=> b!3180459 (= e!1981391 (and (inv!48570 (h!41140 (t!235027 tokens!494))) e!1981389 tp!1006152))))

(declare-fun tp!1006154 () Bool)

(declare-fun b!3180460 () Bool)

(assert (=> b!3180460 (= e!1981389 (and (inv!21 (value!166266 (h!41140 (t!235027 tokens!494)))) e!1981394 tp!1006154))))

(assert (= b!3180461 b!3180462))

(assert (= b!3180460 b!3180461))

(assert (= b!3180459 b!3180460))

(assert (= (and b!3179799 ((_ is Cons!35720) (t!235027 tokens!494))) b!3180459))

(declare-fun m!3437155 () Bool)

(assert (=> b!3180461 m!3437155))

(declare-fun m!3437157 () Bool)

(assert (=> b!3180461 m!3437157))

(declare-fun m!3437159 () Bool)

(assert (=> b!3180459 m!3437159))

(declare-fun m!3437161 () Bool)

(assert (=> b!3180460 m!3437161))

(declare-fun b!3180463 () Bool)

(declare-fun e!1981395 () Bool)

(declare-fun tp!1006155 () Bool)

(assert (=> b!3180463 (= e!1981395 (and tp_is_empty!17245 tp!1006155))))

(assert (=> b!3179809 (= tp!1006069 e!1981395)))

(assert (= (and b!3179809 ((_ is Cons!35719) (originalCharacters!5830 (h!41140 tokens!494)))) b!3180463))

(declare-fun b!3180474 () Bool)

(declare-fun b_free!83825 () Bool)

(declare-fun b_next!84529 () Bool)

(assert (=> b!3180474 (= b_free!83825 (not b_next!84529))))

(declare-fun tb!155209 () Bool)

(declare-fun t!235098 () Bool)

(assert (=> (and b!3180474 (= (toValue!7176 (transformation!5116 (h!41141 (t!235028 rules!2135)))) (toValue!7176 (transformation!5116 (rule!7526 (h!41140 tokens!494))))) t!235098) tb!155209))

(declare-fun result!197244 () Bool)

(assert (= result!197244 result!197190))

(assert (=> d!870283 t!235098))

(declare-fun b_and!210215 () Bool)

(declare-fun tp!1006164 () Bool)

(assert (=> b!3180474 (= tp!1006164 (and (=> t!235098 result!197244) b_and!210215))))

(declare-fun b_free!83827 () Bool)

(declare-fun b_next!84531 () Bool)

(assert (=> b!3180474 (= b_free!83827 (not b_next!84531))))

(declare-fun t!235100 () Bool)

(declare-fun tb!155211 () Bool)

(assert (=> (and b!3180474 (= (toChars!7035 (transformation!5116 (h!41141 (t!235028 rules!2135)))) (toChars!7035 (transformation!5116 (rule!7526 (h!41140 tokens!494))))) t!235100) tb!155211))

(declare-fun result!197246 () Bool)

(assert (= result!197246 result!197176))

(assert (=> b!3179867 t!235100))

(assert (=> d!870261 t!235100))

(declare-fun tb!155213 () Bool)

(declare-fun t!235102 () Bool)

(assert (=> (and b!3180474 (= (toChars!7035 (transformation!5116 (h!41141 (t!235028 rules!2135)))) (toChars!7035 (transformation!5116 (rule!7526 separatorToken!241)))) t!235102) tb!155213))

(declare-fun result!197248 () Bool)

(assert (= result!197248 result!197226))

(assert (=> d!870361 t!235102))

(assert (=> b!3180438 t!235102))

(declare-fun b_and!210217 () Bool)

(declare-fun tp!1006167 () Bool)

(assert (=> b!3180474 (= tp!1006167 (and (=> t!235100 result!197246) (=> t!235102 result!197248) b_and!210217))))

(declare-fun e!1981404 () Bool)

(assert (=> b!3180474 (= e!1981404 (and tp!1006164 tp!1006167))))

(declare-fun b!3180473 () Bool)

(declare-fun e!1981405 () Bool)

(declare-fun tp!1006166 () Bool)

(assert (=> b!3180473 (= e!1981405 (and tp!1006166 (inv!48566 (tag!5620 (h!41141 (t!235028 rules!2135)))) (inv!48569 (transformation!5116 (h!41141 (t!235028 rules!2135)))) e!1981404))))

(declare-fun b!3180472 () Bool)

(declare-fun e!1981406 () Bool)

(declare-fun tp!1006165 () Bool)

(assert (=> b!3180472 (= e!1981406 (and e!1981405 tp!1006165))))

(assert (=> b!3179805 (= tp!1006060 e!1981406)))

(assert (= b!3180473 b!3180474))

(assert (= b!3180472 b!3180473))

(assert (= (and b!3179805 ((_ is Cons!35721) (t!235028 rules!2135))) b!3180472))

(declare-fun m!3437163 () Bool)

(assert (=> b!3180473 m!3437163))

(declare-fun m!3437165 () Bool)

(assert (=> b!3180473 m!3437165))

(declare-fun b!3180486 () Bool)

(declare-fun e!1981410 () Bool)

(declare-fun tp!1006179 () Bool)

(declare-fun tp!1006180 () Bool)

(assert (=> b!3180486 (= e!1981410 (and tp!1006179 tp!1006180))))

(declare-fun b!3180487 () Bool)

(declare-fun tp!1006178 () Bool)

(assert (=> b!3180487 (= e!1981410 tp!1006178)))

(declare-fun b!3180488 () Bool)

(declare-fun tp!1006182 () Bool)

(declare-fun tp!1006181 () Bool)

(assert (=> b!3180488 (= e!1981410 (and tp!1006182 tp!1006181))))

(declare-fun b!3180485 () Bool)

(assert (=> b!3180485 (= e!1981410 tp_is_empty!17245)))

(assert (=> b!3179821 (= tp!1006071 e!1981410)))

(assert (= (and b!3179821 ((_ is ElementMatch!9875) (regex!5116 (h!41141 rules!2135)))) b!3180485))

(assert (= (and b!3179821 ((_ is Concat!15221) (regex!5116 (h!41141 rules!2135)))) b!3180486))

(assert (= (and b!3179821 ((_ is Star!9875) (regex!5116 (h!41141 rules!2135)))) b!3180487))

(assert (= (and b!3179821 ((_ is Union!9875) (regex!5116 (h!41141 rules!2135)))) b!3180488))

(declare-fun b!3180490 () Bool)

(declare-fun e!1981411 () Bool)

(declare-fun tp!1006184 () Bool)

(declare-fun tp!1006185 () Bool)

(assert (=> b!3180490 (= e!1981411 (and tp!1006184 tp!1006185))))

(declare-fun b!3180491 () Bool)

(declare-fun tp!1006183 () Bool)

(assert (=> b!3180491 (= e!1981411 tp!1006183)))

(declare-fun b!3180492 () Bool)

(declare-fun tp!1006187 () Bool)

(declare-fun tp!1006186 () Bool)

(assert (=> b!3180492 (= e!1981411 (and tp!1006187 tp!1006186))))

(declare-fun b!3180489 () Bool)

(assert (=> b!3180489 (= e!1981411 tp_is_empty!17245)))

(assert (=> b!3179796 (= tp!1006065 e!1981411)))

(assert (= (and b!3179796 ((_ is ElementMatch!9875) (regex!5116 (rule!7526 separatorToken!241)))) b!3180489))

(assert (= (and b!3179796 ((_ is Concat!15221) (regex!5116 (rule!7526 separatorToken!241)))) b!3180490))

(assert (= (and b!3179796 ((_ is Star!9875) (regex!5116 (rule!7526 separatorToken!241)))) b!3180491))

(assert (= (and b!3179796 ((_ is Union!9875) (regex!5116 (rule!7526 separatorToken!241)))) b!3180492))

(declare-fun b!3180494 () Bool)

(declare-fun e!1981412 () Bool)

(declare-fun tp!1006189 () Bool)

(declare-fun tp!1006190 () Bool)

(assert (=> b!3180494 (= e!1981412 (and tp!1006189 tp!1006190))))

(declare-fun b!3180495 () Bool)

(declare-fun tp!1006188 () Bool)

(assert (=> b!3180495 (= e!1981412 tp!1006188)))

(declare-fun b!3180496 () Bool)

(declare-fun tp!1006192 () Bool)

(declare-fun tp!1006191 () Bool)

(assert (=> b!3180496 (= e!1981412 (and tp!1006192 tp!1006191))))

(declare-fun b!3180493 () Bool)

(assert (=> b!3180493 (= e!1981412 tp_is_empty!17245)))

(assert (=> b!3179797 (= tp!1006063 e!1981412)))

(assert (= (and b!3179797 ((_ is ElementMatch!9875) (regex!5116 (rule!7526 (h!41140 tokens!494))))) b!3180493))

(assert (= (and b!3179797 ((_ is Concat!15221) (regex!5116 (rule!7526 (h!41140 tokens!494))))) b!3180494))

(assert (= (and b!3179797 ((_ is Star!9875) (regex!5116 (rule!7526 (h!41140 tokens!494))))) b!3180495))

(assert (= (and b!3179797 ((_ is Union!9875) (regex!5116 (rule!7526 (h!41140 tokens!494))))) b!3180496))

(declare-fun b_lambda!86589 () Bool)

(assert (= b_lambda!86549 (or (and b!3180462 b_free!83823 (= (toChars!7035 (transformation!5116 (rule!7526 (h!41140 (t!235027 tokens!494))))) (toChars!7035 (transformation!5116 (rule!7526 (h!41140 tokens!494)))))) (and b!3180474 b_free!83827 (= (toChars!7035 (transformation!5116 (h!41141 (t!235028 rules!2135)))) (toChars!7035 (transformation!5116 (rule!7526 (h!41140 tokens!494)))))) (and b!3179806 b_free!83807 (= (toChars!7035 (transformation!5116 (h!41141 rules!2135))) (toChars!7035 (transformation!5116 (rule!7526 (h!41140 tokens!494)))))) (and b!3179807 b_free!83811) (and b!3179804 b_free!83803 (= (toChars!7035 (transformation!5116 (rule!7526 separatorToken!241))) (toChars!7035 (transformation!5116 (rule!7526 (h!41140 tokens!494)))))) b_lambda!86589)))

(declare-fun b_lambda!86591 () Bool)

(assert (= b_lambda!86557 (or b!3179801 b_lambda!86591)))

(declare-fun bs!539861 () Bool)

(declare-fun d!870373 () Bool)

(assert (= bs!539861 (and d!870373 b!3179801)))

(assert (=> bs!539861 (= (dynLambda!14393 lambda!116373 (h!41140 tokens!494)) (not (isSeparator!5116 (rule!7526 (h!41140 tokens!494)))))))

(assert (=> b!3180087 d!870373))

(declare-fun b_lambda!86593 () Bool)

(assert (= b_lambda!86561 (or b!3179801 b_lambda!86593)))

(assert (=> d!870263 d!870373))

(declare-fun b_lambda!86595 () Bool)

(assert (= b_lambda!86585 (or (and b!3179806 b_free!83807 (= (toChars!7035 (transformation!5116 (h!41141 rules!2135))) (toChars!7035 (transformation!5116 (rule!7526 separatorToken!241))))) (and b!3180474 b_free!83827 (= (toChars!7035 (transformation!5116 (h!41141 (t!235028 rules!2135)))) (toChars!7035 (transformation!5116 (rule!7526 separatorToken!241))))) (and b!3180462 b_free!83823 (= (toChars!7035 (transformation!5116 (rule!7526 (h!41140 (t!235027 tokens!494))))) (toChars!7035 (transformation!5116 (rule!7526 separatorToken!241))))) (and b!3179807 b_free!83811 (= (toChars!7035 (transformation!5116 (rule!7526 (h!41140 tokens!494)))) (toChars!7035 (transformation!5116 (rule!7526 separatorToken!241))))) (and b!3179804 b_free!83803) b_lambda!86595)))

(declare-fun b_lambda!86597 () Bool)

(assert (= b_lambda!86559 (or (and b!3180462 b_free!83823 (= (toChars!7035 (transformation!5116 (rule!7526 (h!41140 (t!235027 tokens!494))))) (toChars!7035 (transformation!5116 (rule!7526 (h!41140 tokens!494)))))) (and b!3180474 b_free!83827 (= (toChars!7035 (transformation!5116 (h!41141 (t!235028 rules!2135)))) (toChars!7035 (transformation!5116 (rule!7526 (h!41140 tokens!494)))))) (and b!3179806 b_free!83807 (= (toChars!7035 (transformation!5116 (h!41141 rules!2135))) (toChars!7035 (transformation!5116 (rule!7526 (h!41140 tokens!494)))))) (and b!3179807 b_free!83811) (and b!3179804 b_free!83803 (= (toChars!7035 (transformation!5116 (rule!7526 separatorToken!241))) (toChars!7035 (transformation!5116 (rule!7526 (h!41140 tokens!494)))))) b_lambda!86597)))

(declare-fun b_lambda!86599 () Bool)

(assert (= b_lambda!86587 (or (and b!3179806 b_free!83807 (= (toChars!7035 (transformation!5116 (h!41141 rules!2135))) (toChars!7035 (transformation!5116 (rule!7526 separatorToken!241))))) (and b!3180474 b_free!83827 (= (toChars!7035 (transformation!5116 (h!41141 (t!235028 rules!2135)))) (toChars!7035 (transformation!5116 (rule!7526 separatorToken!241))))) (and b!3180462 b_free!83823 (= (toChars!7035 (transformation!5116 (rule!7526 (h!41140 (t!235027 tokens!494))))) (toChars!7035 (transformation!5116 (rule!7526 separatorToken!241))))) (and b!3179807 b_free!83811 (= (toChars!7035 (transformation!5116 (rule!7526 (h!41140 tokens!494)))) (toChars!7035 (transformation!5116 (rule!7526 separatorToken!241))))) (and b!3179804 b_free!83803) b_lambda!86599)))

(declare-fun b_lambda!86601 () Bool)

(assert (= b_lambda!86563 (or (and b!3179807 b_free!83809) (and b!3180462 b_free!83821 (= (toValue!7176 (transformation!5116 (rule!7526 (h!41140 (t!235027 tokens!494))))) (toValue!7176 (transformation!5116 (rule!7526 (h!41140 tokens!494)))))) (and b!3179806 b_free!83805 (= (toValue!7176 (transformation!5116 (h!41141 rules!2135))) (toValue!7176 (transformation!5116 (rule!7526 (h!41140 tokens!494)))))) (and b!3180474 b_free!83825 (= (toValue!7176 (transformation!5116 (h!41141 (t!235028 rules!2135)))) (toValue!7176 (transformation!5116 (rule!7526 (h!41140 tokens!494)))))) (and b!3179804 b_free!83801 (= (toValue!7176 (transformation!5116 (rule!7526 separatorToken!241))) (toValue!7176 (transformation!5116 (rule!7526 (h!41140 tokens!494)))))) b_lambda!86601)))

(check-sat (not tb!155197) (not d!870317) (not b!3180490) (not b!3180195) (not tb!155161) (not b!3180070) (not b_next!84515) (not b!3180127) (not b!3180094) (not b!3180194) (not b!3180437) (not b_lambda!86595) (not b!3180014) (not d!870367) (not b!3180101) (not b!3180494) (not b!3180473) (not d!870363) (not d!870249) (not b!3180171) (not b!3179981) (not b!3180488) (not d!870279) (not b!3180082) (not b!3180443) (not b!3180004) (not b!3180434) (not b!3180081) (not d!870221) (not b_lambda!86597) (not d!870253) (not b_next!84511) (not b_next!84509) (not b!3180077) (not d!870371) (not b!3180247) (not b!3180164) (not b!3180103) (not b!3179873) (not b_lambda!86589) (not d!870365) (not b!3180144) (not b_lambda!86601) (not b_next!84531) (not b_next!84529) (not b!3179980) (not b!3180111) (not b!3180137) (not d!870361) (not d!870289) (not b!3180192) (not tb!155173) (not b!3180115) (not d!870357) (not b!3180198) (not d!870311) (not b!3180131) (not d!870239) (not d!870273) b_and!210209 (not b_next!84513) (not bm!230902) b_and!210207 (not b!3180448) (not b!3180191) (not b!3180460) b_and!210175 b_and!210213 tp_is_empty!17245 (not b!3180067) (not d!870285) (not b!3179858) (not b!3180106) b_and!210215 (not d!870255) (not b!3179860) (not b!3180459) (not b!3180005) (not bm!230914) (not d!870229) (not b!3180438) b_and!210173 (not b!3180463) (not b!3180496) (not b!3180245) (not b!3180190) (not b!3180472) b_and!210177 (not b_lambda!86593) (not b_next!84525) (not d!870295) (not b!3180491) (not b!3180492) (not b!3180064) (not b!3180197) (not b!3180068) (not b_lambda!86599) (not b!3180088) (not d!870281) (not b!3180244) (not d!870269) (not b!3180003) (not d!870267) (not d!870213) b_and!210217 (not b!3180056) (not b!3180063) (not b!3180129) (not d!870261) (not b!3180130) (not b!3180126) (not b!3180145) (not d!870259) (not b!3180487) (not d!870355) (not b!3180136) (not d!870299) (not d!870175) (not b!3180411) (not bm!230915) (not b_next!84527) (not b!3180078) (not b!3180193) (not b!3180161) (not b!3180420) (not d!870263) b_and!210205 (not b!3180000) (not b_next!84507) (not b!3180495) (not b!3179868) (not b!3180093) b_and!210211 (not b!3180435) (not b!3179999) (not d!870173) (not b!3180461) (not b!3180486) (not b!3180142) (not b!3180162) (not b!3179859) (not bm!230912) (not b!3180060) (not b_lambda!86591) (not b!3180074) (not d!870275) (not b!3179979) (not d!870353) (not b_next!84505) (not b!3180442) (not d!870265) (not b!3179867) (not d!870291) (not b!3179998) (not d!870359) (not d!870277) (not b!3180439) (not bm!230903) (not d!870297) (not d!870251))
(check-sat (not b_next!84515) (not b_next!84531) (not b_next!84529) b_and!210215 b_and!210173 b_and!210217 (not b_next!84527) (not b_next!84505) (not b_next!84511) (not b_next!84509) b_and!210207 b_and!210209 (not b_next!84513) b_and!210175 b_and!210213 b_and!210177 (not b_next!84525) b_and!210205 (not b_next!84507) b_and!210211)
