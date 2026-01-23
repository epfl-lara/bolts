; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!375124 () Bool)

(assert start!375124)

(declare-fun b!3986685 () Bool)

(declare-fun b_free!110737 () Bool)

(declare-fun b_next!111441 () Bool)

(assert (=> b!3986685 (= b_free!110737 (not b_next!111441))))

(declare-fun tp!1214902 () Bool)

(declare-fun b_and!306367 () Bool)

(assert (=> b!3986685 (= tp!1214902 b_and!306367)))

(declare-fun b_free!110739 () Bool)

(declare-fun b_next!111443 () Bool)

(assert (=> b!3986685 (= b_free!110739 (not b_next!111443))))

(declare-fun tp!1214894 () Bool)

(declare-fun b_and!306369 () Bool)

(assert (=> b!3986685 (= tp!1214894 b_and!306369)))

(declare-fun b!3986687 () Bool)

(declare-fun b_free!110741 () Bool)

(declare-fun b_next!111445 () Bool)

(assert (=> b!3986687 (= b_free!110741 (not b_next!111445))))

(declare-fun tp!1214901 () Bool)

(declare-fun b_and!306371 () Bool)

(assert (=> b!3986687 (= tp!1214901 b_and!306371)))

(declare-fun b_free!110743 () Bool)

(declare-fun b_next!111447 () Bool)

(assert (=> b!3986687 (= b_free!110743 (not b_next!111447))))

(declare-fun tp!1214897 () Bool)

(declare-fun b_and!306373 () Bool)

(assert (=> b!3986687 (= tp!1214897 b_and!306373)))

(declare-fun b!3986672 () Bool)

(declare-fun e!2471214 () Bool)

(assert (=> b!3986672 (= e!2471214 false)))

(declare-fun tp!1214890 () Bool)

(declare-fun e!2471212 () Bool)

(declare-fun e!2471210 () Bool)

(declare-datatypes ((List!42770 0))(
  ( (Nil!42646) (Cons!42646 (h!48066 (_ BitVec 16)) (t!331569 List!42770)) )
))
(declare-datatypes ((C!23488 0))(
  ( (C!23489 (val!13838 Int)) )
))
(declare-datatypes ((List!42771 0))(
  ( (Nil!42647) (Cons!42647 (h!48067 C!23488) (t!331570 List!42771)) )
))
(declare-datatypes ((IArray!25919 0))(
  ( (IArray!25920 (innerList!13017 List!42771)) )
))
(declare-datatypes ((Conc!12957 0))(
  ( (Node!12957 (left!32232 Conc!12957) (right!32562 Conc!12957) (csize!26144 Int) (cheight!13168 Int)) (Leaf!20037 (xs!16263 IArray!25919) (csize!26145 Int)) (Empty!12957) )
))
(declare-datatypes ((BalanceConc!25508 0))(
  ( (BalanceConc!25509 (c!690176 Conc!12957)) )
))
(declare-datatypes ((TokenValue!6976 0))(
  ( (FloatLiteralValue!13952 (text!49277 List!42770)) (TokenValueExt!6975 (__x!26169 Int)) (Broken!34880 (value!212869 List!42770)) (Object!7099) (End!6976) (Def!6976) (Underscore!6976) (Match!6976) (Else!6976) (Error!6976) (Case!6976) (If!6976) (Extends!6976) (Abstract!6976) (Class!6976) (Val!6976) (DelimiterValue!13952 (del!7036 List!42770)) (KeywordValue!6982 (value!212870 List!42770)) (CommentValue!13952 (value!212871 List!42770)) (WhitespaceValue!13952 (value!212872 List!42770)) (IndentationValue!6976 (value!212873 List!42770)) (String!48597) (Int32!6976) (Broken!34881 (value!212874 List!42770)) (Boolean!6977) (Unit!61355) (OperatorValue!6979 (op!7036 List!42770)) (IdentifierValue!13952 (value!212875 List!42770)) (IdentifierValue!13953 (value!212876 List!42770)) (WhitespaceValue!13953 (value!212877 List!42770)) (True!13952) (False!13952) (Broken!34882 (value!212878 List!42770)) (Broken!34883 (value!212879 List!42770)) (True!13953) (RightBrace!6976) (RightBracket!6976) (Colon!6976) (Null!6976) (Comma!6976) (LeftBracket!6976) (False!13953) (LeftBrace!6976) (ImaginaryLiteralValue!6976 (text!49278 List!42770)) (StringLiteralValue!20928 (value!212880 List!42770)) (EOFValue!6976 (value!212881 List!42770)) (IdentValue!6976 (value!212882 List!42770)) (DelimiterValue!13953 (value!212883 List!42770)) (DedentValue!6976 (value!212884 List!42770)) (NewLineValue!6976 (value!212885 List!42770)) (IntegerValue!20928 (value!212886 (_ BitVec 32)) (text!49279 List!42770)) (IntegerValue!20929 (value!212887 Int) (text!49280 List!42770)) (Times!6976) (Or!6976) (Equal!6976) (Minus!6976) (Broken!34884 (value!212888 List!42770)) (And!6976) (Div!6976) (LessEqual!6976) (Mod!6976) (Concat!18627) (Not!6976) (Plus!6976) (SpaceValue!6976 (value!212889 List!42770)) (IntegerValue!20930 (value!212890 Int) (text!49281 List!42770)) (StringLiteralValue!20929 (text!49282 List!42770)) (FloatLiteralValue!13953 (text!49283 List!42770)) (BytesLiteralValue!6976 (value!212891 List!42770)) (CommentValue!13953 (value!212892 List!42770)) (StringLiteralValue!20930 (value!212893 List!42770)) (ErrorTokenValue!6976 (msg!7037 List!42770)) )
))
(declare-datatypes ((Regex!11651 0))(
  ( (ElementMatch!11651 (c!690177 C!23488)) (Concat!18628 (regOne!23814 Regex!11651) (regTwo!23814 Regex!11651)) (EmptyExpr!11651) (Star!11651 (reg!11980 Regex!11651)) (EmptyLang!11651) (Union!11651 (regOne!23815 Regex!11651) (regTwo!23815 Regex!11651)) )
))
(declare-datatypes ((String!48598 0))(
  ( (String!48599 (value!212894 String)) )
))
(declare-datatypes ((TokenValueInjection!13380 0))(
  ( (TokenValueInjection!13381 (toValue!9234 Int) (toChars!9093 Int)) )
))
(declare-datatypes ((Rule!13292 0))(
  ( (Rule!13293 (regex!6746 Regex!11651) (tag!7606 String!48598) (isSeparator!6746 Bool) (transformation!6746 TokenValueInjection!13380)) )
))
(declare-datatypes ((List!42772 0))(
  ( (Nil!42648) (Cons!42648 (h!48068 Rule!13292) (t!331571 List!42772)) )
))
(declare-fun rules!2999 () List!42772)

(declare-fun b!3986673 () Bool)

(declare-fun inv!56959 (String!48598) Bool)

(declare-fun inv!56962 (TokenValueInjection!13380) Bool)

(assert (=> b!3986673 (= e!2471210 (and tp!1214890 (inv!56959 (tag!7606 (h!48068 rules!2999))) (inv!56962 (transformation!6746 (h!48068 rules!2999))) e!2471212))))

(declare-fun b!3986674 () Bool)

(declare-fun e!2471188 () Bool)

(declare-fun tp_is_empty!20273 () Bool)

(declare-fun tp!1214892 () Bool)

(assert (=> b!3986674 (= e!2471188 (and tp_is_empty!20273 tp!1214892))))

(declare-fun res!1617083 () Bool)

(declare-fun e!2471205 () Bool)

(assert (=> start!375124 (=> (not res!1617083) (not e!2471205))))

(declare-datatypes ((LexerInterface!6335 0))(
  ( (LexerInterfaceExt!6332 (__x!26170 Int)) (Lexer!6333) )
))
(declare-fun thiss!21717 () LexerInterface!6335)

(get-info :version)

(assert (=> start!375124 (= res!1617083 ((_ is Lexer!6333) thiss!21717))))

(assert (=> start!375124 e!2471205))

(declare-fun e!2471185 () Bool)

(assert (=> start!375124 e!2471185))

(declare-datatypes ((Token!12630 0))(
  ( (Token!12631 (value!212895 TokenValue!6976) (rule!9758 Rule!13292) (size!31896 Int) (originalCharacters!7346 List!42771)) )
))
(declare-fun token!484 () Token!12630)

(declare-fun e!2471193 () Bool)

(declare-fun inv!56963 (Token!12630) Bool)

(assert (=> start!375124 (and (inv!56963 token!484) e!2471193)))

(declare-fun e!2471207 () Bool)

(assert (=> start!375124 e!2471207))

(assert (=> start!375124 e!2471188))

(declare-fun e!2471180 () Bool)

(assert (=> start!375124 e!2471180))

(assert (=> start!375124 true))

(declare-fun e!2471190 () Bool)

(assert (=> start!375124 e!2471190))

(declare-fun e!2471189 () Bool)

(assert (=> start!375124 e!2471189))

(declare-fun b!3986675 () Bool)

(declare-fun e!2471192 () Bool)

(declare-fun e!2471187 () Bool)

(assert (=> b!3986675 (= e!2471192 e!2471187)))

(declare-fun res!1617093 () Bool)

(assert (=> b!3986675 (=> res!1617093 e!2471187)))

(declare-fun lt!1403913 () List!42771)

(declare-fun lt!1403908 () List!42771)

(assert (=> b!3986675 (= res!1617093 (not (= lt!1403913 lt!1403908)))))

(declare-fun prefix!494 () List!42771)

(declare-fun lt!1403903 () List!42771)

(declare-fun ++!11148 (List!42771 List!42771) List!42771)

(assert (=> b!3986675 (= lt!1403913 (++!11148 prefix!494 lt!1403903))))

(declare-fun lt!1403884 () List!42771)

(declare-fun lt!1403872 () List!42771)

(assert (=> b!3986675 (= lt!1403913 (++!11148 lt!1403884 lt!1403872))))

(declare-datatypes ((Unit!61356 0))(
  ( (Unit!61357) )
))
(declare-fun lt!1403893 () Unit!61356)

(declare-fun newSuffix!27 () List!42771)

(declare-fun lemmaConcatAssociativity!2468 (List!42771 List!42771 List!42771) Unit!61356)

(assert (=> b!3986675 (= lt!1403893 (lemmaConcatAssociativity!2468 prefix!494 newSuffix!27 lt!1403872))))

(declare-fun b!3986676 () Bool)

(declare-fun tp!1214900 () Bool)

(declare-fun e!2471194 () Bool)

(declare-fun e!2471206 () Bool)

(assert (=> b!3986676 (= e!2471194 (and tp!1214900 (inv!56959 (tag!7606 (rule!9758 token!484))) (inv!56962 (transformation!6746 (rule!9758 token!484))) e!2471206))))

(declare-fun b!3986677 () Bool)

(declare-fun tp!1214896 () Bool)

(assert (=> b!3986677 (= e!2471180 (and tp_is_empty!20273 tp!1214896))))

(declare-fun b!3986678 () Bool)

(declare-fun res!1617099 () Bool)

(assert (=> b!3986678 (=> (not res!1617099) (not e!2471205))))

(declare-fun suffix!1299 () List!42771)

(declare-fun size!31897 (List!42771) Int)

(assert (=> b!3986678 (= res!1617099 (>= (size!31897 suffix!1299) (size!31897 newSuffix!27)))))

(declare-fun b!3986679 () Bool)

(declare-fun tp!1214893 () Bool)

(assert (=> b!3986679 (= e!2471207 (and tp_is_empty!20273 tp!1214893))))

(declare-fun b!3986680 () Bool)

(declare-fun e!2471211 () Bool)

(declare-fun e!2471191 () Bool)

(assert (=> b!3986680 (= e!2471211 e!2471191)))

(declare-fun res!1617082 () Bool)

(assert (=> b!3986680 (=> res!1617082 e!2471191)))

(declare-datatypes ((tuple2!41852 0))(
  ( (tuple2!41853 (_1!24060 Token!12630) (_2!24060 List!42771)) )
))
(declare-datatypes ((Option!9160 0))(
  ( (None!9159) (Some!9159 (v!39511 tuple2!41852)) )
))
(declare-fun lt!1403918 () Option!9160)

(declare-fun lt!1403912 () Option!9160)

(assert (=> b!3986680 (= res!1617082 (not (= lt!1403918 lt!1403912)))))

(declare-fun lt!1403902 () Token!12630)

(declare-fun suffixResult!105 () List!42771)

(assert (=> b!3986680 (= lt!1403918 (Some!9159 (tuple2!41853 lt!1403902 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2667 (LexerInterface!6335 Rule!13292 List!42771) Option!9160)

(assert (=> b!3986680 (= lt!1403918 (maxPrefixOneRule!2667 thiss!21717 (rule!9758 token!484) lt!1403908))))

(declare-fun lt!1403917 () Int)

(declare-fun lt!1403906 () List!42771)

(declare-fun lt!1403905 () TokenValue!6976)

(assert (=> b!3986680 (= lt!1403902 (Token!12631 lt!1403905 (rule!9758 token!484) lt!1403917 lt!1403906))))

(declare-fun apply!9957 (TokenValueInjection!13380 BalanceConc!25508) TokenValue!6976)

(declare-fun seqFromList!4985 (List!42771) BalanceConc!25508)

(assert (=> b!3986680 (= lt!1403905 (apply!9957 (transformation!6746 (rule!9758 token!484)) (seqFromList!4985 lt!1403906)))))

(declare-fun lt!1403916 () Unit!61356)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1489 (LexerInterface!6335 List!42772 List!42771 List!42771 List!42771 Rule!13292) Unit!61356)

(assert (=> b!3986680 (= lt!1403916 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1489 thiss!21717 rules!2999 lt!1403906 lt!1403908 suffixResult!105 (rule!9758 token!484)))))

(declare-fun lt!1403904 () List!42771)

(assert (=> b!3986680 (= lt!1403904 suffixResult!105)))

(declare-fun lt!1403867 () Unit!61356)

(declare-fun lemmaSamePrefixThenSameSuffix!2020 (List!42771 List!42771 List!42771 List!42771 List!42771) Unit!61356)

(assert (=> b!3986680 (= lt!1403867 (lemmaSamePrefixThenSameSuffix!2020 lt!1403906 lt!1403904 lt!1403906 suffixResult!105 lt!1403908))))

(declare-fun lt!1403870 () List!42771)

(declare-fun isPrefix!3833 (List!42771 List!42771) Bool)

(assert (=> b!3986680 (isPrefix!3833 lt!1403906 lt!1403870)))

(declare-fun lt!1403874 () Unit!61356)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2676 (List!42771 List!42771) Unit!61356)

(assert (=> b!3986680 (= lt!1403874 (lemmaConcatTwoListThenFirstIsPrefix!2676 lt!1403906 lt!1403904))))

(declare-fun b!3986681 () Bool)

(declare-fun e!2471201 () Bool)

(declare-fun e!2471209 () Bool)

(assert (=> b!3986681 (= e!2471201 e!2471209)))

(declare-fun res!1617077 () Bool)

(assert (=> b!3986681 (=> res!1617077 e!2471209)))

(declare-fun lt!1403879 () Option!9160)

(declare-fun lt!1403890 () Option!9160)

(assert (=> b!3986681 (= res!1617077 (not (= lt!1403879 (Some!9159 (v!39511 lt!1403890)))))))

(declare-fun lt!1403868 () List!42771)

(declare-fun newSuffixResult!27 () List!42771)

(assert (=> b!3986681 (isPrefix!3833 lt!1403868 (++!11148 lt!1403868 newSuffixResult!27))))

(declare-fun lt!1403877 () Unit!61356)

(assert (=> b!3986681 (= lt!1403877 (lemmaConcatTwoListThenFirstIsPrefix!2676 lt!1403868 newSuffixResult!27))))

(declare-fun lt!1403897 () List!42771)

(assert (=> b!3986681 (isPrefix!3833 lt!1403868 lt!1403897)))

(assert (=> b!3986681 (= lt!1403897 (++!11148 lt!1403868 (_2!24060 (v!39511 lt!1403890))))))

(declare-fun lt!1403915 () Unit!61356)

(assert (=> b!3986681 (= lt!1403915 (lemmaConcatTwoListThenFirstIsPrefix!2676 lt!1403868 (_2!24060 (v!39511 lt!1403890))))))

(declare-fun lt!1403896 () Int)

(declare-fun lt!1403873 () TokenValue!6976)

(assert (=> b!3986681 (= lt!1403879 (Some!9159 (tuple2!41853 (Token!12631 lt!1403873 (rule!9758 (_1!24060 (v!39511 lt!1403890))) lt!1403896 lt!1403868) (_2!24060 (v!39511 lt!1403890)))))))

(assert (=> b!3986681 (= lt!1403879 (maxPrefixOneRule!2667 thiss!21717 (rule!9758 (_1!24060 (v!39511 lt!1403890))) lt!1403884))))

(assert (=> b!3986681 (= lt!1403896 (size!31897 lt!1403868))))

(assert (=> b!3986681 (= lt!1403873 (apply!9957 (transformation!6746 (rule!9758 (_1!24060 (v!39511 lt!1403890)))) (seqFromList!4985 lt!1403868)))))

(declare-fun lt!1403909 () Unit!61356)

(assert (=> b!3986681 (= lt!1403909 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1489 thiss!21717 rules!2999 lt!1403868 lt!1403884 (_2!24060 (v!39511 lt!1403890)) (rule!9758 (_1!24060 (v!39511 lt!1403890)))))))

(declare-fun list!15830 (BalanceConc!25508) List!42771)

(declare-fun charsOf!4562 (Token!12630) BalanceConc!25508)

(assert (=> b!3986681 (= lt!1403868 (list!15830 (charsOf!4562 (_1!24060 (v!39511 lt!1403890)))))))

(declare-fun lt!1403862 () Unit!61356)

(declare-fun lemmaInv!961 (TokenValueInjection!13380) Unit!61356)

(assert (=> b!3986681 (= lt!1403862 (lemmaInv!961 (transformation!6746 (rule!9758 (_1!24060 (v!39511 lt!1403890))))))))

(declare-fun ruleValid!2678 (LexerInterface!6335 Rule!13292) Bool)

(assert (=> b!3986681 (ruleValid!2678 thiss!21717 (rule!9758 (_1!24060 (v!39511 lt!1403890))))))

(declare-fun lt!1403875 () Unit!61356)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1752 (LexerInterface!6335 Rule!13292 List!42772) Unit!61356)

(assert (=> b!3986681 (= lt!1403875 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1752 thiss!21717 (rule!9758 (_1!24060 (v!39511 lt!1403890))) rules!2999))))

(declare-fun lt!1403861 () Unit!61356)

(declare-fun lemmaCharactersSize!1341 (Token!12630) Unit!61356)

(assert (=> b!3986681 (= lt!1403861 (lemmaCharactersSize!1341 token!484))))

(declare-fun lt!1403882 () Unit!61356)

(assert (=> b!3986681 (= lt!1403882 (lemmaCharactersSize!1341 (_1!24060 (v!39511 lt!1403890))))))

(declare-fun b!3986682 () Bool)

(declare-fun tp!1214898 () Bool)

(assert (=> b!3986682 (= e!2471189 (and tp_is_empty!20273 tp!1214898))))

(declare-fun b!3986683 () Bool)

(declare-fun res!1617097 () Bool)

(assert (=> b!3986683 (=> (not res!1617097) (not e!2471205))))

(declare-fun rulesInvariant!5678 (LexerInterface!6335 List!42772) Bool)

(assert (=> b!3986683 (= res!1617097 (rulesInvariant!5678 thiss!21717 rules!2999))))

(declare-fun b!3986684 () Bool)

(declare-fun e!2471183 () Bool)

(declare-fun e!2471182 () Bool)

(assert (=> b!3986684 (= e!2471183 e!2471182)))

(declare-fun res!1617080 () Bool)

(assert (=> b!3986684 (=> (not res!1617080) (not e!2471182))))

(declare-fun lt!1403892 () List!42771)

(assert (=> b!3986684 (= res!1617080 (= lt!1403892 lt!1403884))))

(assert (=> b!3986684 (= lt!1403884 (++!11148 prefix!494 newSuffix!27))))

(assert (=> b!3986684 (= lt!1403892 (++!11148 lt!1403906 newSuffixResult!27))))

(assert (=> b!3986685 (= e!2471206 (and tp!1214902 tp!1214894))))

(declare-fun b!3986686 () Bool)

(declare-fun e!2471199 () Unit!61356)

(declare-fun Unit!61358 () Unit!61356)

(assert (=> b!3986686 (= e!2471199 Unit!61358)))

(assert (=> b!3986687 (= e!2471212 (and tp!1214901 tp!1214897))))

(declare-fun b!3986688 () Bool)

(declare-fun e!2471196 () Bool)

(assert (=> b!3986688 (= e!2471187 e!2471196)))

(declare-fun res!1617095 () Bool)

(assert (=> b!3986688 (=> res!1617095 e!2471196)))

(assert (=> b!3986688 (= res!1617095 (not (isPrefix!3833 lt!1403868 lt!1403908)))))

(assert (=> b!3986688 (isPrefix!3833 lt!1403868 lt!1403913)))

(declare-fun lt!1403901 () Unit!61356)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!666 (List!42771 List!42771 List!42771) Unit!61356)

(assert (=> b!3986688 (= lt!1403901 (lemmaPrefixStaysPrefixWhenAddingToSuffix!666 lt!1403868 lt!1403884 lt!1403872))))

(declare-fun b!3986689 () Bool)

(declare-fun tp!1214895 () Bool)

(assert (=> b!3986689 (= e!2471185 (and tp_is_empty!20273 tp!1214895))))

(declare-fun b!3986690 () Bool)

(declare-fun e!2471203 () Bool)

(assert (=> b!3986690 (= e!2471203 e!2471201)))

(declare-fun res!1617104 () Bool)

(assert (=> b!3986690 (=> res!1617104 e!2471201)))

(assert (=> b!3986690 (= res!1617104 (not ((_ is Some!9159) lt!1403890)))))

(declare-fun maxPrefix!3633 (LexerInterface!6335 List!42772 List!42771) Option!9160)

(assert (=> b!3986690 (= lt!1403890 (maxPrefix!3633 thiss!21717 rules!2999 lt!1403884))))

(declare-fun lt!1403865 () tuple2!41852)

(declare-fun lt!1403919 () List!42771)

(assert (=> b!3986690 (and (= suffixResult!105 lt!1403919) (= lt!1403865 (tuple2!41853 lt!1403902 lt!1403919)))))

(declare-fun lt!1403878 () Unit!61356)

(assert (=> b!3986690 (= lt!1403878 (lemmaSamePrefixThenSameSuffix!2020 lt!1403906 suffixResult!105 lt!1403906 lt!1403919 lt!1403908))))

(declare-fun lt!1403907 () List!42771)

(assert (=> b!3986690 (isPrefix!3833 lt!1403906 lt!1403907)))

(declare-fun lt!1403911 () Unit!61356)

(assert (=> b!3986690 (= lt!1403911 (lemmaConcatTwoListThenFirstIsPrefix!2676 lt!1403906 lt!1403919))))

(declare-fun b!3986691 () Bool)

(assert (=> b!3986691 (= e!2471209 e!2471192)))

(declare-fun res!1617096 () Bool)

(assert (=> b!3986691 (=> res!1617096 e!2471192)))

(assert (=> b!3986691 (= res!1617096 (not (= lt!1403903 suffix!1299)))))

(assert (=> b!3986691 (= lt!1403903 (++!11148 newSuffix!27 lt!1403872))))

(declare-fun getSuffix!2264 (List!42771 List!42771) List!42771)

(assert (=> b!3986691 (= lt!1403872 (getSuffix!2264 suffix!1299 newSuffix!27))))

(declare-fun b!3986692 () Bool)

(declare-fun e!2471213 () Bool)

(assert (=> b!3986692 (= e!2471182 e!2471213)))

(declare-fun res!1617086 () Bool)

(assert (=> b!3986692 (=> (not res!1617086) (not e!2471213))))

(assert (=> b!3986692 (= res!1617086 (= (maxPrefix!3633 thiss!21717 rules!2999 lt!1403908) lt!1403912))))

(assert (=> b!3986692 (= lt!1403912 (Some!9159 lt!1403865))))

(assert (=> b!3986692 (= lt!1403865 (tuple2!41853 token!484 suffixResult!105))))

(assert (=> b!3986692 (= lt!1403908 (++!11148 prefix!494 suffix!1299))))

(declare-fun b!3986693 () Bool)

(declare-fun e!2471197 () Unit!61356)

(declare-fun Unit!61359 () Unit!61356)

(assert (=> b!3986693 (= e!2471197 Unit!61359)))

(declare-fun lt!1403900 () Unit!61356)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!400 (LexerInterface!6335 List!42772 Rule!13292 List!42771 List!42771 List!42771 Rule!13292) Unit!61356)

(assert (=> b!3986693 (= lt!1403900 (lemmaMaxPrefixOutputsMaxPrefix!400 thiss!21717 rules!2999 (rule!9758 token!484) lt!1403906 lt!1403908 lt!1403868 (rule!9758 (_1!24060 (v!39511 lt!1403890)))))))

(declare-fun res!1617101 () Bool)

(declare-fun matchR!5628 (Regex!11651 List!42771) Bool)

(assert (=> b!3986693 (= res!1617101 (not (matchR!5628 (regex!6746 (rule!9758 (_1!24060 (v!39511 lt!1403890)))) lt!1403868)))))

(assert (=> b!3986693 (=> (not res!1617101) (not e!2471214))))

(assert (=> b!3986693 e!2471214))

(declare-fun b!3986694 () Bool)

(declare-fun e!2471198 () Bool)

(assert (=> b!3986694 (= e!2471198 (and (= (size!31896 token!484) lt!1403917) (= (originalCharacters!7346 token!484) lt!1403906)))))

(declare-fun b!3986695 () Bool)

(declare-fun e!2471202 () Bool)

(assert (=> b!3986695 (= e!2471191 e!2471202)))

(declare-fun res!1617087 () Bool)

(assert (=> b!3986695 (=> res!1617087 e!2471202)))

(assert (=> b!3986695 (= res!1617087 (not (matchR!5628 (regex!6746 (rule!9758 token!484)) lt!1403906)))))

(assert (=> b!3986695 (isPrefix!3833 lt!1403906 lt!1403884)))

(declare-fun lt!1403869 () Unit!61356)

(assert (=> b!3986695 (= lt!1403869 (lemmaPrefixStaysPrefixWhenAddingToSuffix!666 lt!1403906 prefix!494 newSuffix!27))))

(declare-fun lt!1403881 () Unit!61356)

(assert (=> b!3986695 (= lt!1403881 (lemmaPrefixStaysPrefixWhenAddingToSuffix!666 lt!1403906 prefix!494 suffix!1299))))

(declare-fun b!3986696 () Bool)

(declare-fun e!2471186 () Bool)

(assert (=> b!3986696 (= e!2471196 e!2471186)))

(declare-fun res!1617094 () Bool)

(assert (=> b!3986696 (=> res!1617094 e!2471186)))

(declare-fun lt!1403910 () List!42771)

(assert (=> b!3986696 (= res!1617094 (not (= lt!1403910 lt!1403884)))))

(declare-fun lt!1403888 () List!42771)

(assert (=> b!3986696 (= lt!1403910 (++!11148 lt!1403868 lt!1403888))))

(assert (=> b!3986696 (= lt!1403888 (getSuffix!2264 lt!1403884 lt!1403868))))

(declare-fun b!3986697 () Bool)

(assert (=> b!3986697 (= e!2471202 e!2471203)))

(declare-fun res!1617085 () Bool)

(assert (=> b!3986697 (=> res!1617085 e!2471203)))

(assert (=> b!3986697 (= res!1617085 (not (= lt!1403907 lt!1403908)))))

(assert (=> b!3986697 (= lt!1403907 (++!11148 lt!1403906 lt!1403919))))

(assert (=> b!3986697 (= lt!1403919 (getSuffix!2264 lt!1403908 lt!1403906))))

(assert (=> b!3986697 e!2471198))

(declare-fun res!1617091 () Bool)

(assert (=> b!3986697 (=> (not res!1617091) (not e!2471198))))

(assert (=> b!3986697 (= res!1617091 (isPrefix!3833 lt!1403908 lt!1403908))))

(declare-fun lt!1403860 () Unit!61356)

(declare-fun lemmaIsPrefixRefl!2425 (List!42771 List!42771) Unit!61356)

(assert (=> b!3986697 (= lt!1403860 (lemmaIsPrefixRefl!2425 lt!1403908 lt!1403908))))

(declare-fun b!3986698 () Bool)

(declare-fun res!1617102 () Bool)

(declare-fun e!2471184 () Bool)

(assert (=> b!3986698 (=> res!1617102 e!2471184)))

(assert (=> b!3986698 (= res!1617102 (not (isPrefix!3833 lt!1403868 lt!1403884)))))

(declare-fun b!3986699 () Bool)

(assert (=> b!3986699 (= e!2471205 e!2471183)))

(declare-fun res!1617079 () Bool)

(assert (=> b!3986699 (=> (not res!1617079) (not e!2471183))))

(declare-fun lt!1403899 () Int)

(assert (=> b!3986699 (= res!1617079 (>= lt!1403899 lt!1403917))))

(assert (=> b!3986699 (= lt!1403917 (size!31897 lt!1403906))))

(assert (=> b!3986699 (= lt!1403899 (size!31897 prefix!494))))

(assert (=> b!3986699 (= lt!1403906 (list!15830 (charsOf!4562 token!484)))))

(declare-fun b!3986700 () Bool)

(declare-fun Unit!61360 () Unit!61356)

(assert (=> b!3986700 (= e!2471199 Unit!61360)))

(declare-fun lt!1403895 () Unit!61356)

(assert (=> b!3986700 (= lt!1403895 (lemmaMaxPrefixOutputsMaxPrefix!400 thiss!21717 rules!2999 (rule!9758 (_1!24060 (v!39511 lt!1403890))) lt!1403868 lt!1403884 lt!1403906 (rule!9758 token!484)))))

(assert (=> b!3986700 false))

(declare-fun b!3986701 () Bool)

(declare-fun res!1617078 () Bool)

(assert (=> b!3986701 (=> (not res!1617078) (not e!2471198))))

(assert (=> b!3986701 (= res!1617078 (= (value!212895 token!484) lt!1403905))))

(declare-fun b!3986702 () Bool)

(declare-fun res!1617088 () Bool)

(assert (=> b!3986702 (=> (not res!1617088) (not e!2471205))))

(assert (=> b!3986702 (= res!1617088 (isPrefix!3833 newSuffix!27 suffix!1299))))

(declare-fun b!3986703 () Bool)

(declare-fun res!1617081 () Bool)

(assert (=> b!3986703 (=> (not res!1617081) (not e!2471198))))

(assert (=> b!3986703 (= res!1617081 (= (size!31896 token!484) (size!31897 (originalCharacters!7346 token!484))))))

(declare-fun b!3986704 () Bool)

(declare-fun contains!8487 (List!42772 Rule!13292) Bool)

(assert (=> b!3986704 (= e!2471184 (contains!8487 rules!2999 (rule!9758 (_1!24060 (v!39511 lt!1403890)))))))

(assert (=> b!3986704 (= (_2!24060 (v!39511 lt!1403890)) newSuffixResult!27)))

(declare-fun lt!1403889 () Unit!61356)

(assert (=> b!3986704 (= lt!1403889 (lemmaSamePrefixThenSameSuffix!2020 lt!1403868 (_2!24060 (v!39511 lt!1403890)) lt!1403906 newSuffixResult!27 lt!1403884))))

(assert (=> b!3986704 (= lt!1403868 lt!1403906)))

(declare-fun lt!1403891 () Unit!61356)

(declare-fun lemmaIsPrefixSameLengthThenSameList!855 (List!42771 List!42771 List!42771) Unit!61356)

(assert (=> b!3986704 (= lt!1403891 (lemmaIsPrefixSameLengthThenSameList!855 lt!1403868 lt!1403906 lt!1403884))))

(declare-fun b!3986705 () Bool)

(assert (=> b!3986705 (= e!2471186 e!2471184)))

(declare-fun res!1617098 () Bool)

(assert (=> b!3986705 (=> res!1617098 e!2471184)))

(assert (=> b!3986705 (= res!1617098 (not (= lt!1403917 lt!1403896)))))

(declare-fun lt!1403885 () Unit!61356)

(assert (=> b!3986705 (= lt!1403885 e!2471199)))

(declare-fun c!690174 () Bool)

(assert (=> b!3986705 (= c!690174 (< lt!1403896 lt!1403917))))

(declare-fun lt!1403883 () Unit!61356)

(assert (=> b!3986705 (= lt!1403883 e!2471197)))

(declare-fun c!690175 () Bool)

(assert (=> b!3986705 (= c!690175 (> lt!1403896 lt!1403917))))

(assert (=> b!3986705 (= (_2!24060 (v!39511 lt!1403890)) lt!1403888)))

(declare-fun lt!1403894 () Unit!61356)

(assert (=> b!3986705 (= lt!1403894 (lemmaSamePrefixThenSameSuffix!2020 lt!1403868 (_2!24060 (v!39511 lt!1403890)) lt!1403868 lt!1403888 lt!1403884))))

(assert (=> b!3986705 (isPrefix!3833 lt!1403868 lt!1403910)))

(declare-fun lt!1403898 () Unit!61356)

(assert (=> b!3986705 (= lt!1403898 (lemmaConcatTwoListThenFirstIsPrefix!2676 lt!1403868 lt!1403888))))

(declare-fun b!3986706 () Bool)

(declare-fun e!2471200 () Bool)

(declare-fun e!2471179 () Bool)

(assert (=> b!3986706 (= e!2471200 e!2471179)))

(declare-fun res!1617100 () Bool)

(assert (=> b!3986706 (=> res!1617100 e!2471179)))

(declare-fun lt!1403859 () List!42771)

(assert (=> b!3986706 (= res!1617100 (not (= lt!1403859 prefix!494)))))

(declare-fun lt!1403864 () List!42771)

(assert (=> b!3986706 (= lt!1403859 (++!11148 lt!1403906 lt!1403864))))

(assert (=> b!3986706 (= lt!1403864 (getSuffix!2264 prefix!494 lt!1403906))))

(assert (=> b!3986706 (isPrefix!3833 lt!1403906 prefix!494)))

(declare-fun lt!1403887 () Unit!61356)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!411 (List!42771 List!42771 List!42771) Unit!61356)

(assert (=> b!3986706 (= lt!1403887 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!411 prefix!494 lt!1403906 lt!1403908))))

(declare-fun b!3986707 () Bool)

(declare-fun tp!1214891 () Bool)

(assert (=> b!3986707 (= e!2471190 (and e!2471210 tp!1214891))))

(declare-fun b!3986708 () Bool)

(declare-fun res!1617089 () Bool)

(assert (=> b!3986708 (=> (not res!1617089) (not e!2471205))))

(declare-fun isEmpty!25486 (List!42772) Bool)

(assert (=> b!3986708 (= res!1617089 (not (isEmpty!25486 rules!2999)))))

(declare-fun b!3986709 () Bool)

(assert (=> b!3986709 (= e!2471179 e!2471211)))

(declare-fun res!1617084 () Bool)

(assert (=> b!3986709 (=> res!1617084 e!2471211)))

(declare-fun lt!1403871 () List!42771)

(assert (=> b!3986709 (= res!1617084 (or (not (= lt!1403908 lt!1403871)) (not (= lt!1403908 lt!1403870))))))

(assert (=> b!3986709 (= lt!1403871 lt!1403870)))

(assert (=> b!3986709 (= lt!1403870 (++!11148 lt!1403906 lt!1403904))))

(assert (=> b!3986709 (= lt!1403871 (++!11148 lt!1403859 suffix!1299))))

(assert (=> b!3986709 (= lt!1403904 (++!11148 lt!1403864 suffix!1299))))

(declare-fun lt!1403876 () Unit!61356)

(assert (=> b!3986709 (= lt!1403876 (lemmaConcatAssociativity!2468 lt!1403906 lt!1403864 suffix!1299))))

(declare-fun b!3986710 () Bool)

(declare-fun e!2471208 () Bool)

(assert (=> b!3986710 (= e!2471208 e!2471200)))

(declare-fun res!1617090 () Bool)

(assert (=> b!3986710 (=> res!1617090 e!2471200)))

(assert (=> b!3986710 (= res!1617090 (not (isPrefix!3833 lt!1403906 lt!1403908)))))

(assert (=> b!3986710 (isPrefix!3833 prefix!494 lt!1403908)))

(declare-fun lt!1403914 () Unit!61356)

(assert (=> b!3986710 (= lt!1403914 (lemmaConcatTwoListThenFirstIsPrefix!2676 prefix!494 suffix!1299))))

(declare-fun lt!1403866 () List!42771)

(assert (=> b!3986710 (isPrefix!3833 lt!1403906 lt!1403866)))

(declare-fun lt!1403863 () Unit!61356)

(assert (=> b!3986710 (= lt!1403863 (lemmaConcatTwoListThenFirstIsPrefix!2676 lt!1403906 suffixResult!105))))

(declare-fun b!3986711 () Bool)

(declare-fun Unit!61361 () Unit!61356)

(assert (=> b!3986711 (= e!2471197 Unit!61361)))

(declare-fun tp!1214899 () Bool)

(declare-fun b!3986712 () Bool)

(declare-fun inv!21 (TokenValue!6976) Bool)

(assert (=> b!3986712 (= e!2471193 (and (inv!21 (value!212895 token!484)) e!2471194 tp!1214899))))

(declare-fun b!3986713 () Bool)

(assert (=> b!3986713 (= e!2471213 (not e!2471208))))

(declare-fun res!1617103 () Bool)

(assert (=> b!3986713 (=> res!1617103 e!2471208)))

(assert (=> b!3986713 (= res!1617103 (not (= lt!1403866 lt!1403908)))))

(assert (=> b!3986713 (= lt!1403866 (++!11148 lt!1403906 suffixResult!105))))

(declare-fun lt!1403880 () Unit!61356)

(assert (=> b!3986713 (= lt!1403880 (lemmaInv!961 (transformation!6746 (rule!9758 token!484))))))

(assert (=> b!3986713 (ruleValid!2678 thiss!21717 (rule!9758 token!484))))

(declare-fun lt!1403886 () Unit!61356)

(assert (=> b!3986713 (= lt!1403886 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1752 thiss!21717 (rule!9758 token!484) rules!2999))))

(declare-fun b!3986714 () Bool)

(declare-fun res!1617092 () Bool)

(assert (=> b!3986714 (=> res!1617092 e!2471196)))

(assert (=> b!3986714 (= res!1617092 (not (= lt!1403897 lt!1403884)))))

(assert (= (and start!375124 res!1617083) b!3986708))

(assert (= (and b!3986708 res!1617089) b!3986683))

(assert (= (and b!3986683 res!1617097) b!3986678))

(assert (= (and b!3986678 res!1617099) b!3986702))

(assert (= (and b!3986702 res!1617088) b!3986699))

(assert (= (and b!3986699 res!1617079) b!3986684))

(assert (= (and b!3986684 res!1617080) b!3986692))

(assert (= (and b!3986692 res!1617086) b!3986713))

(assert (= (and b!3986713 (not res!1617103)) b!3986710))

(assert (= (and b!3986710 (not res!1617090)) b!3986706))

(assert (= (and b!3986706 (not res!1617100)) b!3986709))

(assert (= (and b!3986709 (not res!1617084)) b!3986680))

(assert (= (and b!3986680 (not res!1617082)) b!3986695))

(assert (= (and b!3986695 (not res!1617087)) b!3986697))

(assert (= (and b!3986697 res!1617091) b!3986701))

(assert (= (and b!3986701 res!1617078) b!3986703))

(assert (= (and b!3986703 res!1617081) b!3986694))

(assert (= (and b!3986697 (not res!1617085)) b!3986690))

(assert (= (and b!3986690 (not res!1617104)) b!3986681))

(assert (= (and b!3986681 (not res!1617077)) b!3986691))

(assert (= (and b!3986691 (not res!1617096)) b!3986675))

(assert (= (and b!3986675 (not res!1617093)) b!3986688))

(assert (= (and b!3986688 (not res!1617095)) b!3986714))

(assert (= (and b!3986714 (not res!1617092)) b!3986696))

(assert (= (and b!3986696 (not res!1617094)) b!3986705))

(assert (= (and b!3986705 c!690175) b!3986693))

(assert (= (and b!3986705 (not c!690175)) b!3986711))

(assert (= (and b!3986693 res!1617101) b!3986672))

(assert (= (and b!3986705 c!690174) b!3986700))

(assert (= (and b!3986705 (not c!690174)) b!3986686))

(assert (= (and b!3986705 (not res!1617098)) b!3986698))

(assert (= (and b!3986698 (not res!1617102)) b!3986704))

(assert (= (and start!375124 ((_ is Cons!42647) prefix!494)) b!3986689))

(assert (= b!3986676 b!3986685))

(assert (= b!3986712 b!3986676))

(assert (= start!375124 b!3986712))

(assert (= (and start!375124 ((_ is Cons!42647) suffixResult!105)) b!3986679))

(assert (= (and start!375124 ((_ is Cons!42647) suffix!1299)) b!3986674))

(assert (= (and start!375124 ((_ is Cons!42647) newSuffix!27)) b!3986677))

(assert (= b!3986673 b!3986687))

(assert (= b!3986707 b!3986673))

(assert (= (and start!375124 ((_ is Cons!42648) rules!2999)) b!3986707))

(assert (= (and start!375124 ((_ is Cons!42647) newSuffixResult!27)) b!3986682))

(declare-fun m!4563089 () Bool)

(assert (=> b!3986703 m!4563089))

(declare-fun m!4563091 () Bool)

(assert (=> b!3986697 m!4563091))

(declare-fun m!4563093 () Bool)

(assert (=> b!3986697 m!4563093))

(declare-fun m!4563095 () Bool)

(assert (=> b!3986697 m!4563095))

(declare-fun m!4563097 () Bool)

(assert (=> b!3986697 m!4563097))

(declare-fun m!4563099 () Bool)

(assert (=> b!3986690 m!4563099))

(declare-fun m!4563101 () Bool)

(assert (=> b!3986690 m!4563101))

(declare-fun m!4563103 () Bool)

(assert (=> b!3986690 m!4563103))

(declare-fun m!4563105 () Bool)

(assert (=> b!3986690 m!4563105))

(declare-fun m!4563107 () Bool)

(assert (=> b!3986698 m!4563107))

(declare-fun m!4563109 () Bool)

(assert (=> b!3986709 m!4563109))

(declare-fun m!4563111 () Bool)

(assert (=> b!3986709 m!4563111))

(declare-fun m!4563113 () Bool)

(assert (=> b!3986709 m!4563113))

(declare-fun m!4563115 () Bool)

(assert (=> b!3986709 m!4563115))

(declare-fun m!4563117 () Bool)

(assert (=> b!3986688 m!4563117))

(declare-fun m!4563119 () Bool)

(assert (=> b!3986688 m!4563119))

(declare-fun m!4563121 () Bool)

(assert (=> b!3986688 m!4563121))

(declare-fun m!4563123 () Bool)

(assert (=> b!3986710 m!4563123))

(declare-fun m!4563125 () Bool)

(assert (=> b!3986710 m!4563125))

(declare-fun m!4563127 () Bool)

(assert (=> b!3986710 m!4563127))

(declare-fun m!4563129 () Bool)

(assert (=> b!3986710 m!4563129))

(declare-fun m!4563131 () Bool)

(assert (=> b!3986710 m!4563131))

(declare-fun m!4563133 () Bool)

(assert (=> b!3986673 m!4563133))

(declare-fun m!4563135 () Bool)

(assert (=> b!3986673 m!4563135))

(declare-fun m!4563137 () Bool)

(assert (=> b!3986713 m!4563137))

(declare-fun m!4563139 () Bool)

(assert (=> b!3986713 m!4563139))

(declare-fun m!4563141 () Bool)

(assert (=> b!3986713 m!4563141))

(declare-fun m!4563143 () Bool)

(assert (=> b!3986713 m!4563143))

(declare-fun m!4563145 () Bool)

(assert (=> b!3986681 m!4563145))

(declare-fun m!4563147 () Bool)

(assert (=> b!3986681 m!4563147))

(declare-fun m!4563149 () Bool)

(assert (=> b!3986681 m!4563149))

(declare-fun m!4563151 () Bool)

(assert (=> b!3986681 m!4563151))

(declare-fun m!4563153 () Bool)

(assert (=> b!3986681 m!4563153))

(declare-fun m!4563155 () Bool)

(assert (=> b!3986681 m!4563155))

(declare-fun m!4563157 () Bool)

(assert (=> b!3986681 m!4563157))

(declare-fun m!4563159 () Bool)

(assert (=> b!3986681 m!4563159))

(declare-fun m!4563161 () Bool)

(assert (=> b!3986681 m!4563161))

(declare-fun m!4563163 () Bool)

(assert (=> b!3986681 m!4563163))

(declare-fun m!4563165 () Bool)

(assert (=> b!3986681 m!4563165))

(assert (=> b!3986681 m!4563161))

(declare-fun m!4563167 () Bool)

(assert (=> b!3986681 m!4563167))

(declare-fun m!4563169 () Bool)

(assert (=> b!3986681 m!4563169))

(assert (=> b!3986681 m!4563151))

(declare-fun m!4563171 () Bool)

(assert (=> b!3986681 m!4563171))

(declare-fun m!4563173 () Bool)

(assert (=> b!3986681 m!4563173))

(declare-fun m!4563175 () Bool)

(assert (=> b!3986681 m!4563175))

(declare-fun m!4563177 () Bool)

(assert (=> b!3986681 m!4563177))

(declare-fun m!4563179 () Bool)

(assert (=> b!3986681 m!4563179))

(assert (=> b!3986681 m!4563173))

(declare-fun m!4563181 () Bool)

(assert (=> b!3986692 m!4563181))

(declare-fun m!4563183 () Bool)

(assert (=> b!3986692 m!4563183))

(declare-fun m!4563185 () Bool)

(assert (=> b!3986684 m!4563185))

(declare-fun m!4563187 () Bool)

(assert (=> b!3986684 m!4563187))

(declare-fun m!4563189 () Bool)

(assert (=> b!3986680 m!4563189))

(declare-fun m!4563191 () Bool)

(assert (=> b!3986680 m!4563191))

(declare-fun m!4563193 () Bool)

(assert (=> b!3986680 m!4563193))

(declare-fun m!4563195 () Bool)

(assert (=> b!3986680 m!4563195))

(declare-fun m!4563197 () Bool)

(assert (=> b!3986680 m!4563197))

(assert (=> b!3986680 m!4563191))

(declare-fun m!4563199 () Bool)

(assert (=> b!3986680 m!4563199))

(declare-fun m!4563201 () Bool)

(assert (=> b!3986680 m!4563201))

(declare-fun m!4563203 () Bool)

(assert (=> b!3986699 m!4563203))

(declare-fun m!4563205 () Bool)

(assert (=> b!3986699 m!4563205))

(declare-fun m!4563207 () Bool)

(assert (=> b!3986699 m!4563207))

(assert (=> b!3986699 m!4563207))

(declare-fun m!4563209 () Bool)

(assert (=> b!3986699 m!4563209))

(declare-fun m!4563211 () Bool)

(assert (=> b!3986695 m!4563211))

(declare-fun m!4563213 () Bool)

(assert (=> b!3986695 m!4563213))

(declare-fun m!4563215 () Bool)

(assert (=> b!3986695 m!4563215))

(declare-fun m!4563217 () Bool)

(assert (=> b!3986695 m!4563217))

(declare-fun m!4563219 () Bool)

(assert (=> b!3986675 m!4563219))

(declare-fun m!4563221 () Bool)

(assert (=> b!3986675 m!4563221))

(declare-fun m!4563223 () Bool)

(assert (=> b!3986675 m!4563223))

(declare-fun m!4563225 () Bool)

(assert (=> b!3986702 m!4563225))

(declare-fun m!4563227 () Bool)

(assert (=> b!3986706 m!4563227))

(declare-fun m!4563229 () Bool)

(assert (=> b!3986706 m!4563229))

(declare-fun m!4563231 () Bool)

(assert (=> b!3986706 m!4563231))

(declare-fun m!4563233 () Bool)

(assert (=> b!3986706 m!4563233))

(declare-fun m!4563235 () Bool)

(assert (=> b!3986712 m!4563235))

(declare-fun m!4563237 () Bool)

(assert (=> b!3986691 m!4563237))

(declare-fun m!4563239 () Bool)

(assert (=> b!3986691 m!4563239))

(declare-fun m!4563241 () Bool)

(assert (=> b!3986693 m!4563241))

(declare-fun m!4563243 () Bool)

(assert (=> b!3986693 m!4563243))

(declare-fun m!4563245 () Bool)

(assert (=> b!3986678 m!4563245))

(declare-fun m!4563247 () Bool)

(assert (=> b!3986678 m!4563247))

(declare-fun m!4563249 () Bool)

(assert (=> b!3986708 m!4563249))

(declare-fun m!4563251 () Bool)

(assert (=> b!3986696 m!4563251))

(declare-fun m!4563253 () Bool)

(assert (=> b!3986696 m!4563253))

(declare-fun m!4563255 () Bool)

(assert (=> b!3986700 m!4563255))

(declare-fun m!4563257 () Bool)

(assert (=> b!3986683 m!4563257))

(declare-fun m!4563259 () Bool)

(assert (=> b!3986705 m!4563259))

(declare-fun m!4563261 () Bool)

(assert (=> b!3986705 m!4563261))

(declare-fun m!4563263 () Bool)

(assert (=> b!3986705 m!4563263))

(declare-fun m!4563265 () Bool)

(assert (=> b!3986676 m!4563265))

(declare-fun m!4563267 () Bool)

(assert (=> b!3986676 m!4563267))

(declare-fun m!4563269 () Bool)

(assert (=> start!375124 m!4563269))

(declare-fun m!4563271 () Bool)

(assert (=> b!3986704 m!4563271))

(declare-fun m!4563273 () Bool)

(assert (=> b!3986704 m!4563273))

(declare-fun m!4563275 () Bool)

(assert (=> b!3986704 m!4563275))

(check-sat (not b!3986708) (not b!3986679) (not b!3986682) (not b!3986713) (not b!3986683) (not b!3986703) (not b!3986712) (not b!3986680) (not start!375124) (not b!3986677) (not b_next!111441) (not b!3986707) (not b!3986696) (not b!3986673) (not b!3986693) (not b!3986704) (not b_next!111443) (not b!3986681) (not b_next!111447) b_and!306367 tp_is_empty!20273 (not b!3986690) (not b!3986688) (not b!3986699) (not b!3986710) (not b!3986700) (not b!3986702) (not b!3986675) (not b!3986695) (not b!3986706) (not b!3986684) (not b!3986678) (not b!3986705) (not b!3986698) (not b!3986674) (not b!3986709) (not b!3986691) (not b!3986689) (not b_next!111445) b_and!306371 (not b!3986676) b_and!306373 (not b!3986692) (not b!3986697) b_and!306369)
(check-sat (not b_next!111441) b_and!306367 (not b_next!111445) b_and!306371 b_and!306373 b_and!306369 (not b_next!111443) (not b_next!111447))
(get-model)

(declare-fun d!1179632 () Bool)

(declare-fun res!1617111 () Bool)

(declare-fun e!2471217 () Bool)

(assert (=> d!1179632 (=> (not res!1617111) (not e!2471217))))

(declare-fun isEmpty!25487 (List!42771) Bool)

(assert (=> d!1179632 (= res!1617111 (not (isEmpty!25487 (originalCharacters!7346 token!484))))))

(assert (=> d!1179632 (= (inv!56963 token!484) e!2471217)))

(declare-fun b!3986719 () Bool)

(declare-fun res!1617112 () Bool)

(assert (=> b!3986719 (=> (not res!1617112) (not e!2471217))))

(declare-fun dynLambda!18118 (Int TokenValue!6976) BalanceConc!25508)

(assert (=> b!3986719 (= res!1617112 (= (originalCharacters!7346 token!484) (list!15830 (dynLambda!18118 (toChars!9093 (transformation!6746 (rule!9758 token!484))) (value!212895 token!484)))))))

(declare-fun b!3986720 () Bool)

(assert (=> b!3986720 (= e!2471217 (= (size!31896 token!484) (size!31897 (originalCharacters!7346 token!484))))))

(assert (= (and d!1179632 res!1617111) b!3986719))

(assert (= (and b!3986719 res!1617112) b!3986720))

(declare-fun b_lambda!116399 () Bool)

(assert (=> (not b_lambda!116399) (not b!3986719)))

(declare-fun t!331573 () Bool)

(declare-fun tb!240061 () Bool)

(assert (=> (and b!3986685 (= (toChars!9093 (transformation!6746 (rule!9758 token!484))) (toChars!9093 (transformation!6746 (rule!9758 token!484)))) t!331573) tb!240061))

(declare-fun b!3986725 () Bool)

(declare-fun e!2471220 () Bool)

(declare-fun tp!1214905 () Bool)

(declare-fun inv!56964 (Conc!12957) Bool)

(assert (=> b!3986725 (= e!2471220 (and (inv!56964 (c!690176 (dynLambda!18118 (toChars!9093 (transformation!6746 (rule!9758 token!484))) (value!212895 token!484)))) tp!1214905))))

(declare-fun result!290842 () Bool)

(declare-fun inv!56965 (BalanceConc!25508) Bool)

(assert (=> tb!240061 (= result!290842 (and (inv!56965 (dynLambda!18118 (toChars!9093 (transformation!6746 (rule!9758 token!484))) (value!212895 token!484))) e!2471220))))

(assert (= tb!240061 b!3986725))

(declare-fun m!4563277 () Bool)

(assert (=> b!3986725 m!4563277))

(declare-fun m!4563279 () Bool)

(assert (=> tb!240061 m!4563279))

(assert (=> b!3986719 t!331573))

(declare-fun b_and!306375 () Bool)

(assert (= b_and!306369 (and (=> t!331573 result!290842) b_and!306375)))

(declare-fun tb!240063 () Bool)

(declare-fun t!331575 () Bool)

(assert (=> (and b!3986687 (= (toChars!9093 (transformation!6746 (h!48068 rules!2999))) (toChars!9093 (transformation!6746 (rule!9758 token!484)))) t!331575) tb!240063))

(declare-fun result!290846 () Bool)

(assert (= result!290846 result!290842))

(assert (=> b!3986719 t!331575))

(declare-fun b_and!306377 () Bool)

(assert (= b_and!306373 (and (=> t!331575 result!290846) b_and!306377)))

(declare-fun m!4563281 () Bool)

(assert (=> d!1179632 m!4563281))

(declare-fun m!4563283 () Bool)

(assert (=> b!3986719 m!4563283))

(assert (=> b!3986719 m!4563283))

(declare-fun m!4563285 () Bool)

(assert (=> b!3986719 m!4563285))

(assert (=> b!3986720 m!4563089))

(assert (=> start!375124 d!1179632))

(declare-fun b!3986754 () Bool)

(declare-fun res!1617135 () Bool)

(declare-fun e!2471240 () Bool)

(assert (=> b!3986754 (=> (not res!1617135) (not e!2471240))))

(declare-fun tail!6216 (List!42771) List!42771)

(assert (=> b!3986754 (= res!1617135 (isEmpty!25487 (tail!6216 lt!1403906)))))

(declare-fun b!3986755 () Bool)

(declare-fun res!1617129 () Bool)

(declare-fun e!2471235 () Bool)

(assert (=> b!3986755 (=> res!1617129 e!2471235)))

(assert (=> b!3986755 (= res!1617129 e!2471240)))

(declare-fun res!1617131 () Bool)

(assert (=> b!3986755 (=> (not res!1617131) (not e!2471240))))

(declare-fun lt!1403922 () Bool)

(assert (=> b!3986755 (= res!1617131 lt!1403922)))

(declare-fun b!3986756 () Bool)

(declare-fun e!2471236 () Bool)

(declare-fun e!2471237 () Bool)

(assert (=> b!3986756 (= e!2471236 e!2471237)))

(declare-fun c!690186 () Bool)

(assert (=> b!3986756 (= c!690186 ((_ is EmptyLang!11651) (regex!6746 (rule!9758 token!484))))))

(declare-fun b!3986757 () Bool)

(declare-fun e!2471241 () Bool)

(declare-fun e!2471238 () Bool)

(assert (=> b!3986757 (= e!2471241 e!2471238)))

(declare-fun res!1617133 () Bool)

(assert (=> b!3986757 (=> res!1617133 e!2471238)))

(declare-fun call!285771 () Bool)

(assert (=> b!3986757 (= res!1617133 call!285771)))

(declare-fun b!3986758 () Bool)

(declare-fun res!1617136 () Bool)

(assert (=> b!3986758 (=> res!1617136 e!2471238)))

(assert (=> b!3986758 (= res!1617136 (not (isEmpty!25487 (tail!6216 lt!1403906))))))

(declare-fun b!3986759 () Bool)

(assert (=> b!3986759 (= e!2471236 (= lt!1403922 call!285771))))

(declare-fun d!1179634 () Bool)

(assert (=> d!1179634 e!2471236))

(declare-fun c!690185 () Bool)

(assert (=> d!1179634 (= c!690185 ((_ is EmptyExpr!11651) (regex!6746 (rule!9758 token!484))))))

(declare-fun e!2471239 () Bool)

(assert (=> d!1179634 (= lt!1403922 e!2471239)))

(declare-fun c!690184 () Bool)

(assert (=> d!1179634 (= c!690184 (isEmpty!25487 lt!1403906))))

(declare-fun validRegex!5283 (Regex!11651) Bool)

(assert (=> d!1179634 (validRegex!5283 (regex!6746 (rule!9758 token!484)))))

(assert (=> d!1179634 (= (matchR!5628 (regex!6746 (rule!9758 token!484)) lt!1403906) lt!1403922)))

(declare-fun b!3986760 () Bool)

(declare-fun res!1617130 () Bool)

(assert (=> b!3986760 (=> (not res!1617130) (not e!2471240))))

(assert (=> b!3986760 (= res!1617130 (not call!285771))))

(declare-fun b!3986761 () Bool)

(declare-fun nullable!4083 (Regex!11651) Bool)

(assert (=> b!3986761 (= e!2471239 (nullable!4083 (regex!6746 (rule!9758 token!484))))))

(declare-fun b!3986762 () Bool)

(assert (=> b!3986762 (= e!2471235 e!2471241)))

(declare-fun res!1617134 () Bool)

(assert (=> b!3986762 (=> (not res!1617134) (not e!2471241))))

(assert (=> b!3986762 (= res!1617134 (not lt!1403922))))

(declare-fun bm!285766 () Bool)

(assert (=> bm!285766 (= call!285771 (isEmpty!25487 lt!1403906))))

(declare-fun b!3986763 () Bool)

(declare-fun head!8484 (List!42771) C!23488)

(assert (=> b!3986763 (= e!2471238 (not (= (head!8484 lt!1403906) (c!690177 (regex!6746 (rule!9758 token!484))))))))

(declare-fun b!3986764 () Bool)

(declare-fun derivativeStep!3494 (Regex!11651 C!23488) Regex!11651)

(assert (=> b!3986764 (= e!2471239 (matchR!5628 (derivativeStep!3494 (regex!6746 (rule!9758 token!484)) (head!8484 lt!1403906)) (tail!6216 lt!1403906)))))

(declare-fun b!3986765 () Bool)

(assert (=> b!3986765 (= e!2471240 (= (head!8484 lt!1403906) (c!690177 (regex!6746 (rule!9758 token!484)))))))

(declare-fun b!3986766 () Bool)

(assert (=> b!3986766 (= e!2471237 (not lt!1403922))))

(declare-fun b!3986767 () Bool)

(declare-fun res!1617132 () Bool)

(assert (=> b!3986767 (=> res!1617132 e!2471235)))

(assert (=> b!3986767 (= res!1617132 (not ((_ is ElementMatch!11651) (regex!6746 (rule!9758 token!484)))))))

(assert (=> b!3986767 (= e!2471237 e!2471235)))

(assert (= (and d!1179634 c!690184) b!3986761))

(assert (= (and d!1179634 (not c!690184)) b!3986764))

(assert (= (and d!1179634 c!690185) b!3986759))

(assert (= (and d!1179634 (not c!690185)) b!3986756))

(assert (= (and b!3986756 c!690186) b!3986766))

(assert (= (and b!3986756 (not c!690186)) b!3986767))

(assert (= (and b!3986767 (not res!1617132)) b!3986755))

(assert (= (and b!3986755 res!1617131) b!3986760))

(assert (= (and b!3986760 res!1617130) b!3986754))

(assert (= (and b!3986754 res!1617135) b!3986765))

(assert (= (and b!3986755 (not res!1617129)) b!3986762))

(assert (= (and b!3986762 res!1617134) b!3986757))

(assert (= (and b!3986757 (not res!1617133)) b!3986758))

(assert (= (and b!3986758 (not res!1617136)) b!3986763))

(assert (= (or b!3986759 b!3986757 b!3986760) bm!285766))

(declare-fun m!4563287 () Bool)

(assert (=> bm!285766 m!4563287))

(declare-fun m!4563289 () Bool)

(assert (=> b!3986761 m!4563289))

(declare-fun m!4563291 () Bool)

(assert (=> b!3986763 m!4563291))

(assert (=> b!3986765 m!4563291))

(declare-fun m!4563293 () Bool)

(assert (=> b!3986754 m!4563293))

(assert (=> b!3986754 m!4563293))

(declare-fun m!4563295 () Bool)

(assert (=> b!3986754 m!4563295))

(assert (=> d!1179634 m!4563287))

(declare-fun m!4563297 () Bool)

(assert (=> d!1179634 m!4563297))

(assert (=> b!3986764 m!4563291))

(assert (=> b!3986764 m!4563291))

(declare-fun m!4563299 () Bool)

(assert (=> b!3986764 m!4563299))

(assert (=> b!3986764 m!4563293))

(assert (=> b!3986764 m!4563299))

(assert (=> b!3986764 m!4563293))

(declare-fun m!4563301 () Bool)

(assert (=> b!3986764 m!4563301))

(assert (=> b!3986758 m!4563293))

(assert (=> b!3986758 m!4563293))

(assert (=> b!3986758 m!4563295))

(assert (=> b!3986695 d!1179634))

(declare-fun b!3986779 () Bool)

(declare-fun e!2471248 () Bool)

(assert (=> b!3986779 (= e!2471248 (>= (size!31897 lt!1403884) (size!31897 lt!1403906)))))

(declare-fun b!3986777 () Bool)

(declare-fun res!1617146 () Bool)

(declare-fun e!2471250 () Bool)

(assert (=> b!3986777 (=> (not res!1617146) (not e!2471250))))

(assert (=> b!3986777 (= res!1617146 (= (head!8484 lt!1403906) (head!8484 lt!1403884)))))

(declare-fun b!3986778 () Bool)

(assert (=> b!3986778 (= e!2471250 (isPrefix!3833 (tail!6216 lt!1403906) (tail!6216 lt!1403884)))))

(declare-fun b!3986776 () Bool)

(declare-fun e!2471249 () Bool)

(assert (=> b!3986776 (= e!2471249 e!2471250)))

(declare-fun res!1617145 () Bool)

(assert (=> b!3986776 (=> (not res!1617145) (not e!2471250))))

(assert (=> b!3986776 (= res!1617145 (not ((_ is Nil!42647) lt!1403884)))))

(declare-fun d!1179636 () Bool)

(assert (=> d!1179636 e!2471248))

(declare-fun res!1617148 () Bool)

(assert (=> d!1179636 (=> res!1617148 e!2471248)))

(declare-fun lt!1403925 () Bool)

(assert (=> d!1179636 (= res!1617148 (not lt!1403925))))

(assert (=> d!1179636 (= lt!1403925 e!2471249)))

(declare-fun res!1617147 () Bool)

(assert (=> d!1179636 (=> res!1617147 e!2471249)))

(assert (=> d!1179636 (= res!1617147 ((_ is Nil!42647) lt!1403906))))

(assert (=> d!1179636 (= (isPrefix!3833 lt!1403906 lt!1403884) lt!1403925)))

(assert (= (and d!1179636 (not res!1617147)) b!3986776))

(assert (= (and b!3986776 res!1617145) b!3986777))

(assert (= (and b!3986777 res!1617146) b!3986778))

(assert (= (and d!1179636 (not res!1617148)) b!3986779))

(declare-fun m!4563303 () Bool)

(assert (=> b!3986779 m!4563303))

(assert (=> b!3986779 m!4563203))

(assert (=> b!3986777 m!4563291))

(declare-fun m!4563305 () Bool)

(assert (=> b!3986777 m!4563305))

(assert (=> b!3986778 m!4563293))

(declare-fun m!4563307 () Bool)

(assert (=> b!3986778 m!4563307))

(assert (=> b!3986778 m!4563293))

(assert (=> b!3986778 m!4563307))

(declare-fun m!4563309 () Bool)

(assert (=> b!3986778 m!4563309))

(assert (=> b!3986695 d!1179636))

(declare-fun d!1179638 () Bool)

(assert (=> d!1179638 (isPrefix!3833 lt!1403906 (++!11148 prefix!494 newSuffix!27))))

(declare-fun lt!1403928 () Unit!61356)

(declare-fun choose!23934 (List!42771 List!42771 List!42771) Unit!61356)

(assert (=> d!1179638 (= lt!1403928 (choose!23934 lt!1403906 prefix!494 newSuffix!27))))

(assert (=> d!1179638 (isPrefix!3833 lt!1403906 prefix!494)))

(assert (=> d!1179638 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!666 lt!1403906 prefix!494 newSuffix!27) lt!1403928)))

(declare-fun bs!588159 () Bool)

(assert (= bs!588159 d!1179638))

(assert (=> bs!588159 m!4563185))

(assert (=> bs!588159 m!4563185))

(declare-fun m!4563311 () Bool)

(assert (=> bs!588159 m!4563311))

(declare-fun m!4563313 () Bool)

(assert (=> bs!588159 m!4563313))

(assert (=> bs!588159 m!4563231))

(assert (=> b!3986695 d!1179638))

(declare-fun d!1179640 () Bool)

(assert (=> d!1179640 (isPrefix!3833 lt!1403906 (++!11148 prefix!494 suffix!1299))))

(declare-fun lt!1403929 () Unit!61356)

(assert (=> d!1179640 (= lt!1403929 (choose!23934 lt!1403906 prefix!494 suffix!1299))))

(assert (=> d!1179640 (isPrefix!3833 lt!1403906 prefix!494)))

(assert (=> d!1179640 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!666 lt!1403906 prefix!494 suffix!1299) lt!1403929)))

(declare-fun bs!588160 () Bool)

(assert (= bs!588160 d!1179640))

(assert (=> bs!588160 m!4563183))

(assert (=> bs!588160 m!4563183))

(declare-fun m!4563315 () Bool)

(assert (=> bs!588160 m!4563315))

(declare-fun m!4563317 () Bool)

(assert (=> bs!588160 m!4563317))

(assert (=> bs!588160 m!4563231))

(assert (=> b!3986695 d!1179640))

(declare-fun b!3986790 () Bool)

(declare-fun res!1617154 () Bool)

(declare-fun e!2471255 () Bool)

(assert (=> b!3986790 (=> (not res!1617154) (not e!2471255))))

(declare-fun lt!1403932 () List!42771)

(assert (=> b!3986790 (= res!1617154 (= (size!31897 lt!1403932) (+ (size!31897 lt!1403868) (size!31897 lt!1403888))))))

(declare-fun d!1179642 () Bool)

(assert (=> d!1179642 e!2471255))

(declare-fun res!1617153 () Bool)

(assert (=> d!1179642 (=> (not res!1617153) (not e!2471255))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6462 (List!42771) (InoxSet C!23488))

(assert (=> d!1179642 (= res!1617153 (= (content!6462 lt!1403932) ((_ map or) (content!6462 lt!1403868) (content!6462 lt!1403888))))))

(declare-fun e!2471256 () List!42771)

(assert (=> d!1179642 (= lt!1403932 e!2471256)))

(declare-fun c!690189 () Bool)

(assert (=> d!1179642 (= c!690189 ((_ is Nil!42647) lt!1403868))))

(assert (=> d!1179642 (= (++!11148 lt!1403868 lt!1403888) lt!1403932)))

(declare-fun b!3986789 () Bool)

(assert (=> b!3986789 (= e!2471256 (Cons!42647 (h!48067 lt!1403868) (++!11148 (t!331570 lt!1403868) lt!1403888)))))

(declare-fun b!3986788 () Bool)

(assert (=> b!3986788 (= e!2471256 lt!1403888)))

(declare-fun b!3986791 () Bool)

(assert (=> b!3986791 (= e!2471255 (or (not (= lt!1403888 Nil!42647)) (= lt!1403932 lt!1403868)))))

(assert (= (and d!1179642 c!690189) b!3986788))

(assert (= (and d!1179642 (not c!690189)) b!3986789))

(assert (= (and d!1179642 res!1617153) b!3986790))

(assert (= (and b!3986790 res!1617154) b!3986791))

(declare-fun m!4563319 () Bool)

(assert (=> b!3986790 m!4563319))

(assert (=> b!3986790 m!4563165))

(declare-fun m!4563321 () Bool)

(assert (=> b!3986790 m!4563321))

(declare-fun m!4563323 () Bool)

(assert (=> d!1179642 m!4563323))

(declare-fun m!4563325 () Bool)

(assert (=> d!1179642 m!4563325))

(declare-fun m!4563327 () Bool)

(assert (=> d!1179642 m!4563327))

(declare-fun m!4563329 () Bool)

(assert (=> b!3986789 m!4563329))

(assert (=> b!3986696 d!1179642))

(declare-fun d!1179644 () Bool)

(declare-fun lt!1403935 () List!42771)

(assert (=> d!1179644 (= (++!11148 lt!1403868 lt!1403935) lt!1403884)))

(declare-fun e!2471259 () List!42771)

(assert (=> d!1179644 (= lt!1403935 e!2471259)))

(declare-fun c!690192 () Bool)

(assert (=> d!1179644 (= c!690192 ((_ is Cons!42647) lt!1403868))))

(assert (=> d!1179644 (>= (size!31897 lt!1403884) (size!31897 lt!1403868))))

(assert (=> d!1179644 (= (getSuffix!2264 lt!1403884 lt!1403868) lt!1403935)))

(declare-fun b!3986796 () Bool)

(assert (=> b!3986796 (= e!2471259 (getSuffix!2264 (tail!6216 lt!1403884) (t!331570 lt!1403868)))))

(declare-fun b!3986797 () Bool)

(assert (=> b!3986797 (= e!2471259 lt!1403884)))

(assert (= (and d!1179644 c!690192) b!3986796))

(assert (= (and d!1179644 (not c!690192)) b!3986797))

(declare-fun m!4563331 () Bool)

(assert (=> d!1179644 m!4563331))

(assert (=> d!1179644 m!4563303))

(assert (=> d!1179644 m!4563165))

(assert (=> b!3986796 m!4563307))

(assert (=> b!3986796 m!4563307))

(declare-fun m!4563333 () Bool)

(assert (=> b!3986796 m!4563333))

(assert (=> b!3986696 d!1179644))

(declare-fun d!1179646 () Bool)

(assert (=> d!1179646 (= (inv!56959 (tag!7606 (h!48068 rules!2999))) (= (mod (str.len (value!212894 (tag!7606 (h!48068 rules!2999)))) 2) 0))))

(assert (=> b!3986673 d!1179646))

(declare-fun d!1179648 () Bool)

(declare-fun res!1617159 () Bool)

(declare-fun e!2471262 () Bool)

(assert (=> d!1179648 (=> (not res!1617159) (not e!2471262))))

(declare-fun semiInverseModEq!2890 (Int Int) Bool)

(assert (=> d!1179648 (= res!1617159 (semiInverseModEq!2890 (toChars!9093 (transformation!6746 (h!48068 rules!2999))) (toValue!9234 (transformation!6746 (h!48068 rules!2999)))))))

(assert (=> d!1179648 (= (inv!56962 (transformation!6746 (h!48068 rules!2999))) e!2471262)))

(declare-fun b!3986800 () Bool)

(declare-fun equivClasses!2789 (Int Int) Bool)

(assert (=> b!3986800 (= e!2471262 (equivClasses!2789 (toChars!9093 (transformation!6746 (h!48068 rules!2999))) (toValue!9234 (transformation!6746 (h!48068 rules!2999)))))))

(assert (= (and d!1179648 res!1617159) b!3986800))

(declare-fun m!4563335 () Bool)

(assert (=> d!1179648 m!4563335))

(declare-fun m!4563337 () Bool)

(assert (=> b!3986800 m!4563337))

(assert (=> b!3986673 d!1179648))

(declare-fun b!3986804 () Bool)

(declare-fun e!2471263 () Bool)

(assert (=> b!3986804 (= e!2471263 (>= (size!31897 lt!1403884) (size!31897 lt!1403868)))))

(declare-fun b!3986802 () Bool)

(declare-fun res!1617161 () Bool)

(declare-fun e!2471265 () Bool)

(assert (=> b!3986802 (=> (not res!1617161) (not e!2471265))))

(assert (=> b!3986802 (= res!1617161 (= (head!8484 lt!1403868) (head!8484 lt!1403884)))))

(declare-fun b!3986803 () Bool)

(assert (=> b!3986803 (= e!2471265 (isPrefix!3833 (tail!6216 lt!1403868) (tail!6216 lt!1403884)))))

(declare-fun b!3986801 () Bool)

(declare-fun e!2471264 () Bool)

(assert (=> b!3986801 (= e!2471264 e!2471265)))

(declare-fun res!1617160 () Bool)

(assert (=> b!3986801 (=> (not res!1617160) (not e!2471265))))

(assert (=> b!3986801 (= res!1617160 (not ((_ is Nil!42647) lt!1403884)))))

(declare-fun d!1179652 () Bool)

(assert (=> d!1179652 e!2471263))

(declare-fun res!1617163 () Bool)

(assert (=> d!1179652 (=> res!1617163 e!2471263)))

(declare-fun lt!1403936 () Bool)

(assert (=> d!1179652 (= res!1617163 (not lt!1403936))))

(assert (=> d!1179652 (= lt!1403936 e!2471264)))

(declare-fun res!1617162 () Bool)

(assert (=> d!1179652 (=> res!1617162 e!2471264)))

(assert (=> d!1179652 (= res!1617162 ((_ is Nil!42647) lt!1403868))))

(assert (=> d!1179652 (= (isPrefix!3833 lt!1403868 lt!1403884) lt!1403936)))

(assert (= (and d!1179652 (not res!1617162)) b!3986801))

(assert (= (and b!3986801 res!1617160) b!3986802))

(assert (= (and b!3986802 res!1617161) b!3986803))

(assert (= (and d!1179652 (not res!1617163)) b!3986804))

(assert (=> b!3986804 m!4563303))

(assert (=> b!3986804 m!4563165))

(declare-fun m!4563339 () Bool)

(assert (=> b!3986802 m!4563339))

(assert (=> b!3986802 m!4563305))

(declare-fun m!4563341 () Bool)

(assert (=> b!3986803 m!4563341))

(assert (=> b!3986803 m!4563307))

(assert (=> b!3986803 m!4563341))

(assert (=> b!3986803 m!4563307))

(declare-fun m!4563343 () Bool)

(assert (=> b!3986803 m!4563343))

(assert (=> b!3986698 d!1179652))

(declare-fun b!3986807 () Bool)

(declare-fun res!1617165 () Bool)

(declare-fun e!2471266 () Bool)

(assert (=> b!3986807 (=> (not res!1617165) (not e!2471266))))

(declare-fun lt!1403937 () List!42771)

(assert (=> b!3986807 (= res!1617165 (= (size!31897 lt!1403937) (+ (size!31897 prefix!494) (size!31897 lt!1403903))))))

(declare-fun d!1179654 () Bool)

(assert (=> d!1179654 e!2471266))

(declare-fun res!1617164 () Bool)

(assert (=> d!1179654 (=> (not res!1617164) (not e!2471266))))

(assert (=> d!1179654 (= res!1617164 (= (content!6462 lt!1403937) ((_ map or) (content!6462 prefix!494) (content!6462 lt!1403903))))))

(declare-fun e!2471267 () List!42771)

(assert (=> d!1179654 (= lt!1403937 e!2471267)))

(declare-fun c!690193 () Bool)

(assert (=> d!1179654 (= c!690193 ((_ is Nil!42647) prefix!494))))

(assert (=> d!1179654 (= (++!11148 prefix!494 lt!1403903) lt!1403937)))

(declare-fun b!3986806 () Bool)

(assert (=> b!3986806 (= e!2471267 (Cons!42647 (h!48067 prefix!494) (++!11148 (t!331570 prefix!494) lt!1403903)))))

(declare-fun b!3986805 () Bool)

(assert (=> b!3986805 (= e!2471267 lt!1403903)))

(declare-fun b!3986808 () Bool)

(assert (=> b!3986808 (= e!2471266 (or (not (= lt!1403903 Nil!42647)) (= lt!1403937 prefix!494)))))

(assert (= (and d!1179654 c!690193) b!3986805))

(assert (= (and d!1179654 (not c!690193)) b!3986806))

(assert (= (and d!1179654 res!1617164) b!3986807))

(assert (= (and b!3986807 res!1617165) b!3986808))

(declare-fun m!4563345 () Bool)

(assert (=> b!3986807 m!4563345))

(assert (=> b!3986807 m!4563205))

(declare-fun m!4563347 () Bool)

(assert (=> b!3986807 m!4563347))

(declare-fun m!4563349 () Bool)

(assert (=> d!1179654 m!4563349))

(declare-fun m!4563351 () Bool)

(assert (=> d!1179654 m!4563351))

(declare-fun m!4563353 () Bool)

(assert (=> d!1179654 m!4563353))

(declare-fun m!4563355 () Bool)

(assert (=> b!3986806 m!4563355))

(assert (=> b!3986675 d!1179654))

(declare-fun b!3986811 () Bool)

(declare-fun res!1617167 () Bool)

(declare-fun e!2471268 () Bool)

(assert (=> b!3986811 (=> (not res!1617167) (not e!2471268))))

(declare-fun lt!1403938 () List!42771)

(assert (=> b!3986811 (= res!1617167 (= (size!31897 lt!1403938) (+ (size!31897 lt!1403884) (size!31897 lt!1403872))))))

(declare-fun d!1179656 () Bool)

(assert (=> d!1179656 e!2471268))

(declare-fun res!1617166 () Bool)

(assert (=> d!1179656 (=> (not res!1617166) (not e!2471268))))

(assert (=> d!1179656 (= res!1617166 (= (content!6462 lt!1403938) ((_ map or) (content!6462 lt!1403884) (content!6462 lt!1403872))))))

(declare-fun e!2471269 () List!42771)

(assert (=> d!1179656 (= lt!1403938 e!2471269)))

(declare-fun c!690194 () Bool)

(assert (=> d!1179656 (= c!690194 ((_ is Nil!42647) lt!1403884))))

(assert (=> d!1179656 (= (++!11148 lt!1403884 lt!1403872) lt!1403938)))

(declare-fun b!3986810 () Bool)

(assert (=> b!3986810 (= e!2471269 (Cons!42647 (h!48067 lt!1403884) (++!11148 (t!331570 lt!1403884) lt!1403872)))))

(declare-fun b!3986809 () Bool)

(assert (=> b!3986809 (= e!2471269 lt!1403872)))

(declare-fun b!3986812 () Bool)

(assert (=> b!3986812 (= e!2471268 (or (not (= lt!1403872 Nil!42647)) (= lt!1403938 lt!1403884)))))

(assert (= (and d!1179656 c!690194) b!3986809))

(assert (= (and d!1179656 (not c!690194)) b!3986810))

(assert (= (and d!1179656 res!1617166) b!3986811))

(assert (= (and b!3986811 res!1617167) b!3986812))

(declare-fun m!4563357 () Bool)

(assert (=> b!3986811 m!4563357))

(assert (=> b!3986811 m!4563303))

(declare-fun m!4563359 () Bool)

(assert (=> b!3986811 m!4563359))

(declare-fun m!4563361 () Bool)

(assert (=> d!1179656 m!4563361))

(declare-fun m!4563363 () Bool)

(assert (=> d!1179656 m!4563363))

(declare-fun m!4563365 () Bool)

(assert (=> d!1179656 m!4563365))

(declare-fun m!4563367 () Bool)

(assert (=> b!3986810 m!4563367))

(assert (=> b!3986675 d!1179656))

(declare-fun d!1179658 () Bool)

(assert (=> d!1179658 (= (++!11148 (++!11148 prefix!494 newSuffix!27) lt!1403872) (++!11148 prefix!494 (++!11148 newSuffix!27 lt!1403872)))))

(declare-fun lt!1403941 () Unit!61356)

(declare-fun choose!23936 (List!42771 List!42771 List!42771) Unit!61356)

(assert (=> d!1179658 (= lt!1403941 (choose!23936 prefix!494 newSuffix!27 lt!1403872))))

(assert (=> d!1179658 (= (lemmaConcatAssociativity!2468 prefix!494 newSuffix!27 lt!1403872) lt!1403941)))

(declare-fun bs!588161 () Bool)

(assert (= bs!588161 d!1179658))

(declare-fun m!4563369 () Bool)

(assert (=> bs!588161 m!4563369))

(assert (=> bs!588161 m!4563185))

(assert (=> bs!588161 m!4563185))

(declare-fun m!4563371 () Bool)

(assert (=> bs!588161 m!4563371))

(assert (=> bs!588161 m!4563237))

(assert (=> bs!588161 m!4563237))

(declare-fun m!4563373 () Bool)

(assert (=> bs!588161 m!4563373))

(assert (=> b!3986675 d!1179658))

(declare-fun b!3986815 () Bool)

(declare-fun res!1617169 () Bool)

(declare-fun e!2471270 () Bool)

(assert (=> b!3986815 (=> (not res!1617169) (not e!2471270))))

(declare-fun lt!1403942 () List!42771)

(assert (=> b!3986815 (= res!1617169 (= (size!31897 lt!1403942) (+ (size!31897 lt!1403906) (size!31897 lt!1403919))))))

(declare-fun d!1179660 () Bool)

(assert (=> d!1179660 e!2471270))

(declare-fun res!1617168 () Bool)

(assert (=> d!1179660 (=> (not res!1617168) (not e!2471270))))

(assert (=> d!1179660 (= res!1617168 (= (content!6462 lt!1403942) ((_ map or) (content!6462 lt!1403906) (content!6462 lt!1403919))))))

(declare-fun e!2471271 () List!42771)

(assert (=> d!1179660 (= lt!1403942 e!2471271)))

(declare-fun c!690195 () Bool)

(assert (=> d!1179660 (= c!690195 ((_ is Nil!42647) lt!1403906))))

(assert (=> d!1179660 (= (++!11148 lt!1403906 lt!1403919) lt!1403942)))

(declare-fun b!3986814 () Bool)

(assert (=> b!3986814 (= e!2471271 (Cons!42647 (h!48067 lt!1403906) (++!11148 (t!331570 lt!1403906) lt!1403919)))))

(declare-fun b!3986813 () Bool)

(assert (=> b!3986813 (= e!2471271 lt!1403919)))

(declare-fun b!3986816 () Bool)

(assert (=> b!3986816 (= e!2471270 (or (not (= lt!1403919 Nil!42647)) (= lt!1403942 lt!1403906)))))

(assert (= (and d!1179660 c!690195) b!3986813))

(assert (= (and d!1179660 (not c!690195)) b!3986814))

(assert (= (and d!1179660 res!1617168) b!3986815))

(assert (= (and b!3986815 res!1617169) b!3986816))

(declare-fun m!4563375 () Bool)

(assert (=> b!3986815 m!4563375))

(assert (=> b!3986815 m!4563203))

(declare-fun m!4563377 () Bool)

(assert (=> b!3986815 m!4563377))

(declare-fun m!4563379 () Bool)

(assert (=> d!1179660 m!4563379))

(declare-fun m!4563381 () Bool)

(assert (=> d!1179660 m!4563381))

(declare-fun m!4563383 () Bool)

(assert (=> d!1179660 m!4563383))

(declare-fun m!4563385 () Bool)

(assert (=> b!3986814 m!4563385))

(assert (=> b!3986697 d!1179660))

(declare-fun d!1179662 () Bool)

(declare-fun lt!1403943 () List!42771)

(assert (=> d!1179662 (= (++!11148 lt!1403906 lt!1403943) lt!1403908)))

(declare-fun e!2471272 () List!42771)

(assert (=> d!1179662 (= lt!1403943 e!2471272)))

(declare-fun c!690196 () Bool)

(assert (=> d!1179662 (= c!690196 ((_ is Cons!42647) lt!1403906))))

(assert (=> d!1179662 (>= (size!31897 lt!1403908) (size!31897 lt!1403906))))

(assert (=> d!1179662 (= (getSuffix!2264 lt!1403908 lt!1403906) lt!1403943)))

(declare-fun b!3986817 () Bool)

(assert (=> b!3986817 (= e!2471272 (getSuffix!2264 (tail!6216 lt!1403908) (t!331570 lt!1403906)))))

(declare-fun b!3986818 () Bool)

(assert (=> b!3986818 (= e!2471272 lt!1403908)))

(assert (= (and d!1179662 c!690196) b!3986817))

(assert (= (and d!1179662 (not c!690196)) b!3986818))

(declare-fun m!4563387 () Bool)

(assert (=> d!1179662 m!4563387))

(declare-fun m!4563389 () Bool)

(assert (=> d!1179662 m!4563389))

(assert (=> d!1179662 m!4563203))

(declare-fun m!4563391 () Bool)

(assert (=> b!3986817 m!4563391))

(assert (=> b!3986817 m!4563391))

(declare-fun m!4563393 () Bool)

(assert (=> b!3986817 m!4563393))

(assert (=> b!3986697 d!1179662))

(declare-fun b!3986822 () Bool)

(declare-fun e!2471273 () Bool)

(assert (=> b!3986822 (= e!2471273 (>= (size!31897 lt!1403908) (size!31897 lt!1403908)))))

(declare-fun b!3986820 () Bool)

(declare-fun res!1617171 () Bool)

(declare-fun e!2471275 () Bool)

(assert (=> b!3986820 (=> (not res!1617171) (not e!2471275))))

(assert (=> b!3986820 (= res!1617171 (= (head!8484 lt!1403908) (head!8484 lt!1403908)))))

(declare-fun b!3986821 () Bool)

(assert (=> b!3986821 (= e!2471275 (isPrefix!3833 (tail!6216 lt!1403908) (tail!6216 lt!1403908)))))

(declare-fun b!3986819 () Bool)

(declare-fun e!2471274 () Bool)

(assert (=> b!3986819 (= e!2471274 e!2471275)))

(declare-fun res!1617170 () Bool)

(assert (=> b!3986819 (=> (not res!1617170) (not e!2471275))))

(assert (=> b!3986819 (= res!1617170 (not ((_ is Nil!42647) lt!1403908)))))

(declare-fun d!1179664 () Bool)

(assert (=> d!1179664 e!2471273))

(declare-fun res!1617173 () Bool)

(assert (=> d!1179664 (=> res!1617173 e!2471273)))

(declare-fun lt!1403944 () Bool)

(assert (=> d!1179664 (= res!1617173 (not lt!1403944))))

(assert (=> d!1179664 (= lt!1403944 e!2471274)))

(declare-fun res!1617172 () Bool)

(assert (=> d!1179664 (=> res!1617172 e!2471274)))

(assert (=> d!1179664 (= res!1617172 ((_ is Nil!42647) lt!1403908))))

(assert (=> d!1179664 (= (isPrefix!3833 lt!1403908 lt!1403908) lt!1403944)))

(assert (= (and d!1179664 (not res!1617172)) b!3986819))

(assert (= (and b!3986819 res!1617170) b!3986820))

(assert (= (and b!3986820 res!1617171) b!3986821))

(assert (= (and d!1179664 (not res!1617173)) b!3986822))

(assert (=> b!3986822 m!4563389))

(assert (=> b!3986822 m!4563389))

(declare-fun m!4563395 () Bool)

(assert (=> b!3986820 m!4563395))

(assert (=> b!3986820 m!4563395))

(assert (=> b!3986821 m!4563391))

(assert (=> b!3986821 m!4563391))

(assert (=> b!3986821 m!4563391))

(assert (=> b!3986821 m!4563391))

(declare-fun m!4563397 () Bool)

(assert (=> b!3986821 m!4563397))

(assert (=> b!3986697 d!1179664))

(declare-fun d!1179666 () Bool)

(assert (=> d!1179666 (isPrefix!3833 lt!1403908 lt!1403908)))

(declare-fun lt!1403947 () Unit!61356)

(declare-fun choose!23937 (List!42771 List!42771) Unit!61356)

(assert (=> d!1179666 (= lt!1403947 (choose!23937 lt!1403908 lt!1403908))))

(assert (=> d!1179666 (= (lemmaIsPrefixRefl!2425 lt!1403908 lt!1403908) lt!1403947)))

(declare-fun bs!588162 () Bool)

(assert (= bs!588162 d!1179666))

(assert (=> bs!588162 m!4563095))

(declare-fun m!4563399 () Bool)

(assert (=> bs!588162 m!4563399))

(assert (=> b!3986697 d!1179666))

(declare-fun d!1179668 () Bool)

(assert (=> d!1179668 (= (inv!56959 (tag!7606 (rule!9758 token!484))) (= (mod (str.len (value!212894 (tag!7606 (rule!9758 token!484)))) 2) 0))))

(assert (=> b!3986676 d!1179668))

(declare-fun d!1179670 () Bool)

(declare-fun res!1617174 () Bool)

(declare-fun e!2471276 () Bool)

(assert (=> d!1179670 (=> (not res!1617174) (not e!2471276))))

(assert (=> d!1179670 (= res!1617174 (semiInverseModEq!2890 (toChars!9093 (transformation!6746 (rule!9758 token!484))) (toValue!9234 (transformation!6746 (rule!9758 token!484)))))))

(assert (=> d!1179670 (= (inv!56962 (transformation!6746 (rule!9758 token!484))) e!2471276)))

(declare-fun b!3986823 () Bool)

(assert (=> b!3986823 (= e!2471276 (equivClasses!2789 (toChars!9093 (transformation!6746 (rule!9758 token!484))) (toValue!9234 (transformation!6746 (rule!9758 token!484)))))))

(assert (= (and d!1179670 res!1617174) b!3986823))

(declare-fun m!4563401 () Bool)

(assert (=> d!1179670 m!4563401))

(declare-fun m!4563403 () Bool)

(assert (=> b!3986823 m!4563403))

(assert (=> b!3986676 d!1179670))

(declare-fun b!3987015 () Bool)

(declare-fun e!2471379 () Bool)

(declare-fun e!2471381 () Bool)

(assert (=> b!3987015 (= e!2471379 e!2471381)))

(declare-fun res!1617293 () Bool)

(assert (=> b!3987015 (=> (not res!1617293) (not e!2471381))))

(declare-fun lt!1404033 () Option!9160)

(declare-fun get!14033 (Option!9160) tuple2!41852)

(assert (=> b!3987015 (= res!1617293 (matchR!5628 (regex!6746 (rule!9758 token!484)) (list!15830 (charsOf!4562 (_1!24060 (get!14033 lt!1404033))))))))

(declare-fun b!3987016 () Bool)

(declare-fun e!2471378 () Option!9160)

(declare-datatypes ((tuple2!41854 0))(
  ( (tuple2!41855 (_1!24061 List!42771) (_2!24061 List!42771)) )
))
(declare-fun lt!1404031 () tuple2!41854)

(declare-fun size!31898 (BalanceConc!25508) Int)

(assert (=> b!3987016 (= e!2471378 (Some!9159 (tuple2!41853 (Token!12631 (apply!9957 (transformation!6746 (rule!9758 token!484)) (seqFromList!4985 (_1!24061 lt!1404031))) (rule!9758 token!484) (size!31898 (seqFromList!4985 (_1!24061 lt!1404031))) (_1!24061 lt!1404031)) (_2!24061 lt!1404031))))))

(declare-fun lt!1404029 () Unit!61356)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1300 (Regex!11651 List!42771) Unit!61356)

(assert (=> b!3987016 (= lt!1404029 (longestMatchIsAcceptedByMatchOrIsEmpty!1300 (regex!6746 (rule!9758 token!484)) lt!1403908))))

(declare-fun res!1617295 () Bool)

(declare-fun findLongestMatchInner!1327 (Regex!11651 List!42771 Int List!42771 List!42771 Int) tuple2!41854)

(assert (=> b!3987016 (= res!1617295 (isEmpty!25487 (_1!24061 (findLongestMatchInner!1327 (regex!6746 (rule!9758 token!484)) Nil!42647 (size!31897 Nil!42647) lt!1403908 lt!1403908 (size!31897 lt!1403908)))))))

(declare-fun e!2471380 () Bool)

(assert (=> b!3987016 (=> res!1617295 e!2471380)))

(assert (=> b!3987016 e!2471380))

(declare-fun lt!1404032 () Unit!61356)

(assert (=> b!3987016 (= lt!1404032 lt!1404029)))

(declare-fun lt!1404030 () Unit!61356)

(declare-fun lemmaSemiInverse!1843 (TokenValueInjection!13380 BalanceConc!25508) Unit!61356)

(assert (=> b!3987016 (= lt!1404030 (lemmaSemiInverse!1843 (transformation!6746 (rule!9758 token!484)) (seqFromList!4985 (_1!24061 lt!1404031))))))

(declare-fun b!3987017 () Bool)

(declare-fun res!1617292 () Bool)

(assert (=> b!3987017 (=> (not res!1617292) (not e!2471381))))

(assert (=> b!3987017 (= res!1617292 (< (size!31897 (_2!24060 (get!14033 lt!1404033))) (size!31897 lt!1403908)))))

(declare-fun b!3987018 () Bool)

(assert (=> b!3987018 (= e!2471378 None!9159)))

(declare-fun d!1179672 () Bool)

(assert (=> d!1179672 e!2471379))

(declare-fun res!1617296 () Bool)

(assert (=> d!1179672 (=> res!1617296 e!2471379)))

(declare-fun isEmpty!25489 (Option!9160) Bool)

(assert (=> d!1179672 (= res!1617296 (isEmpty!25489 lt!1404033))))

(assert (=> d!1179672 (= lt!1404033 e!2471378)))

(declare-fun c!690232 () Bool)

(assert (=> d!1179672 (= c!690232 (isEmpty!25487 (_1!24061 lt!1404031)))))

(declare-fun findLongestMatch!1240 (Regex!11651 List!42771) tuple2!41854)

(assert (=> d!1179672 (= lt!1404031 (findLongestMatch!1240 (regex!6746 (rule!9758 token!484)) lt!1403908))))

(assert (=> d!1179672 (ruleValid!2678 thiss!21717 (rule!9758 token!484))))

(assert (=> d!1179672 (= (maxPrefixOneRule!2667 thiss!21717 (rule!9758 token!484) lt!1403908) lt!1404033)))

(declare-fun b!3987019 () Bool)

(declare-fun res!1617291 () Bool)

(assert (=> b!3987019 (=> (not res!1617291) (not e!2471381))))

(assert (=> b!3987019 (= res!1617291 (= (value!212895 (_1!24060 (get!14033 lt!1404033))) (apply!9957 (transformation!6746 (rule!9758 (_1!24060 (get!14033 lt!1404033)))) (seqFromList!4985 (originalCharacters!7346 (_1!24060 (get!14033 lt!1404033)))))))))

(declare-fun b!3987020 () Bool)

(assert (=> b!3987020 (= e!2471381 (= (size!31896 (_1!24060 (get!14033 lt!1404033))) (size!31897 (originalCharacters!7346 (_1!24060 (get!14033 lt!1404033))))))))

(declare-fun b!3987021 () Bool)

(declare-fun res!1617297 () Bool)

(assert (=> b!3987021 (=> (not res!1617297) (not e!2471381))))

(assert (=> b!3987021 (= res!1617297 (= (++!11148 (list!15830 (charsOf!4562 (_1!24060 (get!14033 lt!1404033)))) (_2!24060 (get!14033 lt!1404033))) lt!1403908))))

(declare-fun b!3987022 () Bool)

(declare-fun res!1617294 () Bool)

(assert (=> b!3987022 (=> (not res!1617294) (not e!2471381))))

(assert (=> b!3987022 (= res!1617294 (= (rule!9758 (_1!24060 (get!14033 lt!1404033))) (rule!9758 token!484)))))

(declare-fun b!3987023 () Bool)

(assert (=> b!3987023 (= e!2471380 (matchR!5628 (regex!6746 (rule!9758 token!484)) (_1!24061 (findLongestMatchInner!1327 (regex!6746 (rule!9758 token!484)) Nil!42647 (size!31897 Nil!42647) lt!1403908 lt!1403908 (size!31897 lt!1403908)))))))

(assert (= (and d!1179672 c!690232) b!3987018))

(assert (= (and d!1179672 (not c!690232)) b!3987016))

(assert (= (and b!3987016 (not res!1617295)) b!3987023))

(assert (= (and d!1179672 (not res!1617296)) b!3987015))

(assert (= (and b!3987015 res!1617293) b!3987021))

(assert (= (and b!3987021 res!1617297) b!3987017))

(assert (= (and b!3987017 res!1617292) b!3987022))

(assert (= (and b!3987022 res!1617294) b!3987019))

(assert (= (and b!3987019 res!1617291) b!3987020))

(declare-fun m!4563633 () Bool)

(assert (=> b!3987016 m!4563633))

(declare-fun m!4563635 () Bool)

(assert (=> b!3987016 m!4563635))

(declare-fun m!4563637 () Bool)

(assert (=> b!3987016 m!4563637))

(assert (=> b!3987016 m!4563389))

(assert (=> b!3987016 m!4563635))

(declare-fun m!4563639 () Bool)

(assert (=> b!3987016 m!4563639))

(declare-fun m!4563641 () Bool)

(assert (=> b!3987016 m!4563641))

(assert (=> b!3987016 m!4563635))

(declare-fun m!4563643 () Bool)

(assert (=> b!3987016 m!4563643))

(assert (=> b!3987016 m!4563635))

(declare-fun m!4563645 () Bool)

(assert (=> b!3987016 m!4563645))

(assert (=> b!3987016 m!4563641))

(assert (=> b!3987016 m!4563389))

(declare-fun m!4563647 () Bool)

(assert (=> b!3987016 m!4563647))

(declare-fun m!4563649 () Bool)

(assert (=> b!3987019 m!4563649))

(declare-fun m!4563651 () Bool)

(assert (=> b!3987019 m!4563651))

(assert (=> b!3987019 m!4563651))

(declare-fun m!4563653 () Bool)

(assert (=> b!3987019 m!4563653))

(assert (=> b!3987015 m!4563649))

(declare-fun m!4563655 () Bool)

(assert (=> b!3987015 m!4563655))

(assert (=> b!3987015 m!4563655))

(declare-fun m!4563657 () Bool)

(assert (=> b!3987015 m!4563657))

(assert (=> b!3987015 m!4563657))

(declare-fun m!4563659 () Bool)

(assert (=> b!3987015 m!4563659))

(assert (=> b!3987023 m!4563641))

(assert (=> b!3987023 m!4563389))

(assert (=> b!3987023 m!4563641))

(assert (=> b!3987023 m!4563389))

(assert (=> b!3987023 m!4563647))

(declare-fun m!4563661 () Bool)

(assert (=> b!3987023 m!4563661))

(assert (=> b!3987017 m!4563649))

(declare-fun m!4563663 () Bool)

(assert (=> b!3987017 m!4563663))

(assert (=> b!3987017 m!4563389))

(assert (=> b!3987020 m!4563649))

(declare-fun m!4563665 () Bool)

(assert (=> b!3987020 m!4563665))

(assert (=> b!3987022 m!4563649))

(assert (=> b!3987021 m!4563649))

(assert (=> b!3987021 m!4563655))

(assert (=> b!3987021 m!4563655))

(assert (=> b!3987021 m!4563657))

(assert (=> b!3987021 m!4563657))

(declare-fun m!4563667 () Bool)

(assert (=> b!3987021 m!4563667))

(declare-fun m!4563669 () Bool)

(assert (=> d!1179672 m!4563669))

(declare-fun m!4563671 () Bool)

(assert (=> d!1179672 m!4563671))

(declare-fun m!4563673 () Bool)

(assert (=> d!1179672 m!4563673))

(assert (=> d!1179672 m!4563141))

(assert (=> b!3986680 d!1179672))

(declare-fun d!1179744 () Bool)

(assert (=> d!1179744 (= (maxPrefixOneRule!2667 thiss!21717 (rule!9758 token!484) lt!1403908) (Some!9159 (tuple2!41853 (Token!12631 (apply!9957 (transformation!6746 (rule!9758 token!484)) (seqFromList!4985 lt!1403906)) (rule!9758 token!484) (size!31897 lt!1403906) lt!1403906) suffixResult!105)))))

(declare-fun lt!1404036 () Unit!61356)

(declare-fun choose!23939 (LexerInterface!6335 List!42772 List!42771 List!42771 List!42771 Rule!13292) Unit!61356)

(assert (=> d!1179744 (= lt!1404036 (choose!23939 thiss!21717 rules!2999 lt!1403906 lt!1403908 suffixResult!105 (rule!9758 token!484)))))

(assert (=> d!1179744 (not (isEmpty!25486 rules!2999))))

(assert (=> d!1179744 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1489 thiss!21717 rules!2999 lt!1403906 lt!1403908 suffixResult!105 (rule!9758 token!484)) lt!1404036)))

(declare-fun bs!588175 () Bool)

(assert (= bs!588175 d!1179744))

(assert (=> bs!588175 m!4563191))

(assert (=> bs!588175 m!4563199))

(declare-fun m!4563675 () Bool)

(assert (=> bs!588175 m!4563675))

(assert (=> bs!588175 m!4563203))

(assert (=> bs!588175 m!4563193))

(assert (=> bs!588175 m!4563191))

(assert (=> bs!588175 m!4563249))

(assert (=> b!3986680 d!1179744))

(declare-fun d!1179746 () Bool)

(assert (=> d!1179746 (isPrefix!3833 lt!1403906 (++!11148 lt!1403906 lt!1403904))))

(declare-fun lt!1404039 () Unit!61356)

(declare-fun choose!23940 (List!42771 List!42771) Unit!61356)

(assert (=> d!1179746 (= lt!1404039 (choose!23940 lt!1403906 lt!1403904))))

(assert (=> d!1179746 (= (lemmaConcatTwoListThenFirstIsPrefix!2676 lt!1403906 lt!1403904) lt!1404039)))

(declare-fun bs!588176 () Bool)

(assert (= bs!588176 d!1179746))

(assert (=> bs!588176 m!4563109))

(assert (=> bs!588176 m!4563109))

(declare-fun m!4563677 () Bool)

(assert (=> bs!588176 m!4563677))

(declare-fun m!4563679 () Bool)

(assert (=> bs!588176 m!4563679))

(assert (=> b!3986680 d!1179746))

(declare-fun d!1179748 () Bool)

(assert (=> d!1179748 (= lt!1403904 suffixResult!105)))

(declare-fun lt!1404042 () Unit!61356)

(declare-fun choose!23941 (List!42771 List!42771 List!42771 List!42771 List!42771) Unit!61356)

(assert (=> d!1179748 (= lt!1404042 (choose!23941 lt!1403906 lt!1403904 lt!1403906 suffixResult!105 lt!1403908))))

(assert (=> d!1179748 (isPrefix!3833 lt!1403906 lt!1403908)))

(assert (=> d!1179748 (= (lemmaSamePrefixThenSameSuffix!2020 lt!1403906 lt!1403904 lt!1403906 suffixResult!105 lt!1403908) lt!1404042)))

(declare-fun bs!588177 () Bool)

(assert (= bs!588177 d!1179748))

(declare-fun m!4563681 () Bool)

(assert (=> bs!588177 m!4563681))

(assert (=> bs!588177 m!4563131))

(assert (=> b!3986680 d!1179748))

(declare-fun b!3987027 () Bool)

(declare-fun e!2471382 () Bool)

(assert (=> b!3987027 (= e!2471382 (>= (size!31897 lt!1403870) (size!31897 lt!1403906)))))

(declare-fun b!3987025 () Bool)

(declare-fun res!1617299 () Bool)

(declare-fun e!2471384 () Bool)

(assert (=> b!3987025 (=> (not res!1617299) (not e!2471384))))

(assert (=> b!3987025 (= res!1617299 (= (head!8484 lt!1403906) (head!8484 lt!1403870)))))

(declare-fun b!3987026 () Bool)

(assert (=> b!3987026 (= e!2471384 (isPrefix!3833 (tail!6216 lt!1403906) (tail!6216 lt!1403870)))))

(declare-fun b!3987024 () Bool)

(declare-fun e!2471383 () Bool)

(assert (=> b!3987024 (= e!2471383 e!2471384)))

(declare-fun res!1617298 () Bool)

(assert (=> b!3987024 (=> (not res!1617298) (not e!2471384))))

(assert (=> b!3987024 (= res!1617298 (not ((_ is Nil!42647) lt!1403870)))))

(declare-fun d!1179750 () Bool)

(assert (=> d!1179750 e!2471382))

(declare-fun res!1617301 () Bool)

(assert (=> d!1179750 (=> res!1617301 e!2471382)))

(declare-fun lt!1404043 () Bool)

(assert (=> d!1179750 (= res!1617301 (not lt!1404043))))

(assert (=> d!1179750 (= lt!1404043 e!2471383)))

(declare-fun res!1617300 () Bool)

(assert (=> d!1179750 (=> res!1617300 e!2471383)))

(assert (=> d!1179750 (= res!1617300 ((_ is Nil!42647) lt!1403906))))

(assert (=> d!1179750 (= (isPrefix!3833 lt!1403906 lt!1403870) lt!1404043)))

(assert (= (and d!1179750 (not res!1617300)) b!3987024))

(assert (= (and b!3987024 res!1617298) b!3987025))

(assert (= (and b!3987025 res!1617299) b!3987026))

(assert (= (and d!1179750 (not res!1617301)) b!3987027))

(declare-fun m!4563683 () Bool)

(assert (=> b!3987027 m!4563683))

(assert (=> b!3987027 m!4563203))

(assert (=> b!3987025 m!4563291))

(declare-fun m!4563685 () Bool)

(assert (=> b!3987025 m!4563685))

(assert (=> b!3987026 m!4563293))

(declare-fun m!4563687 () Bool)

(assert (=> b!3987026 m!4563687))

(assert (=> b!3987026 m!4563293))

(assert (=> b!3987026 m!4563687))

(declare-fun m!4563689 () Bool)

(assert (=> b!3987026 m!4563689))

(assert (=> b!3986680 d!1179750))

(declare-fun d!1179752 () Bool)

(declare-fun fromListB!2285 (List!42771) BalanceConc!25508)

(assert (=> d!1179752 (= (seqFromList!4985 lt!1403906) (fromListB!2285 lt!1403906))))

(declare-fun bs!588178 () Bool)

(assert (= bs!588178 d!1179752))

(declare-fun m!4563691 () Bool)

(assert (=> bs!588178 m!4563691))

(assert (=> b!3986680 d!1179752))

(declare-fun d!1179754 () Bool)

(declare-fun dynLambda!18120 (Int BalanceConc!25508) TokenValue!6976)

(assert (=> d!1179754 (= (apply!9957 (transformation!6746 (rule!9758 token!484)) (seqFromList!4985 lt!1403906)) (dynLambda!18120 (toValue!9234 (transformation!6746 (rule!9758 token!484))) (seqFromList!4985 lt!1403906)))))

(declare-fun b_lambda!116403 () Bool)

(assert (=> (not b_lambda!116403) (not d!1179754)))

(declare-fun t!331581 () Bool)

(declare-fun tb!240069 () Bool)

(assert (=> (and b!3986685 (= (toValue!9234 (transformation!6746 (rule!9758 token!484))) (toValue!9234 (transformation!6746 (rule!9758 token!484)))) t!331581) tb!240069))

(declare-fun result!290854 () Bool)

(assert (=> tb!240069 (= result!290854 (inv!21 (dynLambda!18120 (toValue!9234 (transformation!6746 (rule!9758 token!484))) (seqFromList!4985 lt!1403906))))))

(declare-fun m!4563693 () Bool)

(assert (=> tb!240069 m!4563693))

(assert (=> d!1179754 t!331581))

(declare-fun b_and!306383 () Bool)

(assert (= b_and!306367 (and (=> t!331581 result!290854) b_and!306383)))

(declare-fun t!331583 () Bool)

(declare-fun tb!240071 () Bool)

(assert (=> (and b!3986687 (= (toValue!9234 (transformation!6746 (h!48068 rules!2999))) (toValue!9234 (transformation!6746 (rule!9758 token!484)))) t!331583) tb!240071))

(declare-fun result!290858 () Bool)

(assert (= result!290858 result!290854))

(assert (=> d!1179754 t!331583))

(declare-fun b_and!306385 () Bool)

(assert (= b_and!306371 (and (=> t!331583 result!290858) b_and!306385)))

(assert (=> d!1179754 m!4563191))

(declare-fun m!4563695 () Bool)

(assert (=> d!1179754 m!4563695))

(assert (=> b!3986680 d!1179754))

(declare-fun d!1179756 () Bool)

(declare-fun lt!1404046 () Int)

(assert (=> d!1179756 (>= lt!1404046 0)))

(declare-fun e!2471390 () Int)

(assert (=> d!1179756 (= lt!1404046 e!2471390)))

(declare-fun c!690235 () Bool)

(assert (=> d!1179756 (= c!690235 ((_ is Nil!42647) lt!1403906))))

(assert (=> d!1179756 (= (size!31897 lt!1403906) lt!1404046)))

(declare-fun b!3987034 () Bool)

(assert (=> b!3987034 (= e!2471390 0)))

(declare-fun b!3987035 () Bool)

(assert (=> b!3987035 (= e!2471390 (+ 1 (size!31897 (t!331570 lt!1403906))))))

(assert (= (and d!1179756 c!690235) b!3987034))

(assert (= (and d!1179756 (not c!690235)) b!3987035))

(declare-fun m!4563697 () Bool)

(assert (=> b!3987035 m!4563697))

(assert (=> b!3986699 d!1179756))

(declare-fun d!1179758 () Bool)

(declare-fun lt!1404047 () Int)

(assert (=> d!1179758 (>= lt!1404047 0)))

(declare-fun e!2471391 () Int)

(assert (=> d!1179758 (= lt!1404047 e!2471391)))

(declare-fun c!690236 () Bool)

(assert (=> d!1179758 (= c!690236 ((_ is Nil!42647) prefix!494))))

(assert (=> d!1179758 (= (size!31897 prefix!494) lt!1404047)))

(declare-fun b!3987036 () Bool)

(assert (=> b!3987036 (= e!2471391 0)))

(declare-fun b!3987037 () Bool)

(assert (=> b!3987037 (= e!2471391 (+ 1 (size!31897 (t!331570 prefix!494))))))

(assert (= (and d!1179758 c!690236) b!3987036))

(assert (= (and d!1179758 (not c!690236)) b!3987037))

(declare-fun m!4563699 () Bool)

(assert (=> b!3987037 m!4563699))

(assert (=> b!3986699 d!1179758))

(declare-fun d!1179760 () Bool)

(declare-fun list!15832 (Conc!12957) List!42771)

(assert (=> d!1179760 (= (list!15830 (charsOf!4562 token!484)) (list!15832 (c!690176 (charsOf!4562 token!484))))))

(declare-fun bs!588179 () Bool)

(assert (= bs!588179 d!1179760))

(declare-fun m!4563701 () Bool)

(assert (=> bs!588179 m!4563701))

(assert (=> b!3986699 d!1179760))

(declare-fun d!1179762 () Bool)

(declare-fun lt!1404050 () BalanceConc!25508)

(assert (=> d!1179762 (= (list!15830 lt!1404050) (originalCharacters!7346 token!484))))

(assert (=> d!1179762 (= lt!1404050 (dynLambda!18118 (toChars!9093 (transformation!6746 (rule!9758 token!484))) (value!212895 token!484)))))

(assert (=> d!1179762 (= (charsOf!4562 token!484) lt!1404050)))

(declare-fun b_lambda!116405 () Bool)

(assert (=> (not b_lambda!116405) (not d!1179762)))

(assert (=> d!1179762 t!331573))

(declare-fun b_and!306387 () Bool)

(assert (= b_and!306375 (and (=> t!331573 result!290842) b_and!306387)))

(assert (=> d!1179762 t!331575))

(declare-fun b_and!306389 () Bool)

(assert (= b_and!306377 (and (=> t!331575 result!290846) b_and!306389)))

(declare-fun m!4563703 () Bool)

(assert (=> d!1179762 m!4563703))

(assert (=> d!1179762 m!4563283))

(assert (=> b!3986699 d!1179762))

(declare-fun d!1179764 () Bool)

(declare-fun lt!1404051 () Int)

(assert (=> d!1179764 (>= lt!1404051 0)))

(declare-fun e!2471392 () Int)

(assert (=> d!1179764 (= lt!1404051 e!2471392)))

(declare-fun c!690237 () Bool)

(assert (=> d!1179764 (= c!690237 ((_ is Nil!42647) suffix!1299))))

(assert (=> d!1179764 (= (size!31897 suffix!1299) lt!1404051)))

(declare-fun b!3987038 () Bool)

(assert (=> b!3987038 (= e!2471392 0)))

(declare-fun b!3987039 () Bool)

(assert (=> b!3987039 (= e!2471392 (+ 1 (size!31897 (t!331570 suffix!1299))))))

(assert (= (and d!1179764 c!690237) b!3987038))

(assert (= (and d!1179764 (not c!690237)) b!3987039))

(declare-fun m!4563705 () Bool)

(assert (=> b!3987039 m!4563705))

(assert (=> b!3986678 d!1179764))

(declare-fun d!1179766 () Bool)

(declare-fun lt!1404052 () Int)

(assert (=> d!1179766 (>= lt!1404052 0)))

(declare-fun e!2471393 () Int)

(assert (=> d!1179766 (= lt!1404052 e!2471393)))

(declare-fun c!690238 () Bool)

(assert (=> d!1179766 (= c!690238 ((_ is Nil!42647) newSuffix!27))))

(assert (=> d!1179766 (= (size!31897 newSuffix!27) lt!1404052)))

(declare-fun b!3987040 () Bool)

(assert (=> b!3987040 (= e!2471393 0)))

(declare-fun b!3987041 () Bool)

(assert (=> b!3987041 (= e!2471393 (+ 1 (size!31897 (t!331570 newSuffix!27))))))

(assert (= (and d!1179766 c!690238) b!3987040))

(assert (= (and d!1179766 (not c!690238)) b!3987041))

(declare-fun m!4563707 () Bool)

(assert (=> b!3987041 m!4563707))

(assert (=> b!3986678 d!1179766))

(declare-fun d!1179768 () Bool)

(assert (=> d!1179768 (not (matchR!5628 (regex!6746 (rule!9758 token!484)) lt!1403906))))

(declare-fun lt!1404055 () Unit!61356)

(declare-fun choose!23942 (LexerInterface!6335 List!42772 Rule!13292 List!42771 List!42771 List!42771 Rule!13292) Unit!61356)

(assert (=> d!1179768 (= lt!1404055 (choose!23942 thiss!21717 rules!2999 (rule!9758 (_1!24060 (v!39511 lt!1403890))) lt!1403868 lt!1403884 lt!1403906 (rule!9758 token!484)))))

(assert (=> d!1179768 (isPrefix!3833 lt!1403868 lt!1403884)))

(assert (=> d!1179768 (= (lemmaMaxPrefixOutputsMaxPrefix!400 thiss!21717 rules!2999 (rule!9758 (_1!24060 (v!39511 lt!1403890))) lt!1403868 lt!1403884 lt!1403906 (rule!9758 token!484)) lt!1404055)))

(declare-fun bs!588180 () Bool)

(assert (= bs!588180 d!1179768))

(assert (=> bs!588180 m!4563211))

(declare-fun m!4563709 () Bool)

(assert (=> bs!588180 m!4563709))

(assert (=> bs!588180 m!4563107))

(assert (=> b!3986700 d!1179768))

(declare-fun d!1179770 () Bool)

(declare-fun lt!1404056 () Int)

(assert (=> d!1179770 (>= lt!1404056 0)))

(declare-fun e!2471394 () Int)

(assert (=> d!1179770 (= lt!1404056 e!2471394)))

(declare-fun c!690239 () Bool)

(assert (=> d!1179770 (= c!690239 ((_ is Nil!42647) (originalCharacters!7346 token!484)))))

(assert (=> d!1179770 (= (size!31897 (originalCharacters!7346 token!484)) lt!1404056)))

(declare-fun b!3987042 () Bool)

(assert (=> b!3987042 (= e!2471394 0)))

(declare-fun b!3987043 () Bool)

(assert (=> b!3987043 (= e!2471394 (+ 1 (size!31897 (t!331570 (originalCharacters!7346 token!484)))))))

(assert (= (and d!1179770 c!690239) b!3987042))

(assert (= (and d!1179770 (not c!690239)) b!3987043))

(declare-fun m!4563711 () Bool)

(assert (=> b!3987043 m!4563711))

(assert (=> b!3986703 d!1179770))

(declare-fun d!1179772 () Bool)

(declare-fun lt!1404059 () Bool)

(declare-fun content!6465 (List!42772) (InoxSet Rule!13292))

(assert (=> d!1179772 (= lt!1404059 (select (content!6465 rules!2999) (rule!9758 (_1!24060 (v!39511 lt!1403890)))))))

(declare-fun e!2471399 () Bool)

(assert (=> d!1179772 (= lt!1404059 e!2471399)))

(declare-fun res!1617307 () Bool)

(assert (=> d!1179772 (=> (not res!1617307) (not e!2471399))))

(assert (=> d!1179772 (= res!1617307 ((_ is Cons!42648) rules!2999))))

(assert (=> d!1179772 (= (contains!8487 rules!2999 (rule!9758 (_1!24060 (v!39511 lt!1403890)))) lt!1404059)))

(declare-fun b!3987048 () Bool)

(declare-fun e!2471400 () Bool)

(assert (=> b!3987048 (= e!2471399 e!2471400)))

(declare-fun res!1617306 () Bool)

(assert (=> b!3987048 (=> res!1617306 e!2471400)))

(assert (=> b!3987048 (= res!1617306 (= (h!48068 rules!2999) (rule!9758 (_1!24060 (v!39511 lt!1403890)))))))

(declare-fun b!3987049 () Bool)

(assert (=> b!3987049 (= e!2471400 (contains!8487 (t!331571 rules!2999) (rule!9758 (_1!24060 (v!39511 lt!1403890)))))))

(assert (= (and d!1179772 res!1617307) b!3987048))

(assert (= (and b!3987048 (not res!1617306)) b!3987049))

(declare-fun m!4563713 () Bool)

(assert (=> d!1179772 m!4563713))

(declare-fun m!4563715 () Bool)

(assert (=> d!1179772 m!4563715))

(declare-fun m!4563717 () Bool)

(assert (=> b!3987049 m!4563717))

(assert (=> b!3986704 d!1179772))

(declare-fun d!1179774 () Bool)

(assert (=> d!1179774 (= (_2!24060 (v!39511 lt!1403890)) newSuffixResult!27)))

(declare-fun lt!1404060 () Unit!61356)

(assert (=> d!1179774 (= lt!1404060 (choose!23941 lt!1403868 (_2!24060 (v!39511 lt!1403890)) lt!1403906 newSuffixResult!27 lt!1403884))))

(assert (=> d!1179774 (isPrefix!3833 lt!1403868 lt!1403884)))

(assert (=> d!1179774 (= (lemmaSamePrefixThenSameSuffix!2020 lt!1403868 (_2!24060 (v!39511 lt!1403890)) lt!1403906 newSuffixResult!27 lt!1403884) lt!1404060)))

(declare-fun bs!588181 () Bool)

(assert (= bs!588181 d!1179774))

(declare-fun m!4563719 () Bool)

(assert (=> bs!588181 m!4563719))

(assert (=> bs!588181 m!4563107))

(assert (=> b!3986704 d!1179774))

(declare-fun d!1179776 () Bool)

(assert (=> d!1179776 (= lt!1403868 lt!1403906)))

(declare-fun lt!1404063 () Unit!61356)

(declare-fun choose!23944 (List!42771 List!42771 List!42771) Unit!61356)

(assert (=> d!1179776 (= lt!1404063 (choose!23944 lt!1403868 lt!1403906 lt!1403884))))

(assert (=> d!1179776 (isPrefix!3833 lt!1403868 lt!1403884)))

(assert (=> d!1179776 (= (lemmaIsPrefixSameLengthThenSameList!855 lt!1403868 lt!1403906 lt!1403884) lt!1404063)))

(declare-fun bs!588182 () Bool)

(assert (= bs!588182 d!1179776))

(declare-fun m!4563721 () Bool)

(assert (=> bs!588182 m!4563721))

(assert (=> bs!588182 m!4563107))

(assert (=> b!3986704 d!1179776))

(declare-fun b!3987053 () Bool)

(declare-fun e!2471401 () Bool)

(assert (=> b!3987053 (= e!2471401 (>= (size!31897 suffix!1299) (size!31897 newSuffix!27)))))

(declare-fun b!3987051 () Bool)

(declare-fun res!1617309 () Bool)

(declare-fun e!2471403 () Bool)

(assert (=> b!3987051 (=> (not res!1617309) (not e!2471403))))

(assert (=> b!3987051 (= res!1617309 (= (head!8484 newSuffix!27) (head!8484 suffix!1299)))))

(declare-fun b!3987052 () Bool)

(assert (=> b!3987052 (= e!2471403 (isPrefix!3833 (tail!6216 newSuffix!27) (tail!6216 suffix!1299)))))

(declare-fun b!3987050 () Bool)

(declare-fun e!2471402 () Bool)

(assert (=> b!3987050 (= e!2471402 e!2471403)))

(declare-fun res!1617308 () Bool)

(assert (=> b!3987050 (=> (not res!1617308) (not e!2471403))))

(assert (=> b!3987050 (= res!1617308 (not ((_ is Nil!42647) suffix!1299)))))

(declare-fun d!1179778 () Bool)

(assert (=> d!1179778 e!2471401))

(declare-fun res!1617311 () Bool)

(assert (=> d!1179778 (=> res!1617311 e!2471401)))

(declare-fun lt!1404064 () Bool)

(assert (=> d!1179778 (= res!1617311 (not lt!1404064))))

(assert (=> d!1179778 (= lt!1404064 e!2471402)))

(declare-fun res!1617310 () Bool)

(assert (=> d!1179778 (=> res!1617310 e!2471402)))

(assert (=> d!1179778 (= res!1617310 ((_ is Nil!42647) newSuffix!27))))

(assert (=> d!1179778 (= (isPrefix!3833 newSuffix!27 suffix!1299) lt!1404064)))

(assert (= (and d!1179778 (not res!1617310)) b!3987050))

(assert (= (and b!3987050 res!1617308) b!3987051))

(assert (= (and b!3987051 res!1617309) b!3987052))

(assert (= (and d!1179778 (not res!1617311)) b!3987053))

(assert (=> b!3987053 m!4563245))

(assert (=> b!3987053 m!4563247))

(declare-fun m!4563723 () Bool)

(assert (=> b!3987051 m!4563723))

(declare-fun m!4563725 () Bool)

(assert (=> b!3987051 m!4563725))

(declare-fun m!4563727 () Bool)

(assert (=> b!3987052 m!4563727))

(declare-fun m!4563729 () Bool)

(assert (=> b!3987052 m!4563729))

(assert (=> b!3987052 m!4563727))

(assert (=> b!3987052 m!4563729))

(declare-fun m!4563731 () Bool)

(assert (=> b!3987052 m!4563731))

(assert (=> b!3986702 d!1179778))

(declare-fun b!3987057 () Bool)

(declare-fun e!2471404 () Bool)

(assert (=> b!3987057 (= e!2471404 (>= (size!31897 lt!1403897) (size!31897 lt!1403868)))))

(declare-fun b!3987055 () Bool)

(declare-fun res!1617313 () Bool)

(declare-fun e!2471406 () Bool)

(assert (=> b!3987055 (=> (not res!1617313) (not e!2471406))))

(assert (=> b!3987055 (= res!1617313 (= (head!8484 lt!1403868) (head!8484 lt!1403897)))))

(declare-fun b!3987056 () Bool)

(assert (=> b!3987056 (= e!2471406 (isPrefix!3833 (tail!6216 lt!1403868) (tail!6216 lt!1403897)))))

(declare-fun b!3987054 () Bool)

(declare-fun e!2471405 () Bool)

(assert (=> b!3987054 (= e!2471405 e!2471406)))

(declare-fun res!1617312 () Bool)

(assert (=> b!3987054 (=> (not res!1617312) (not e!2471406))))

(assert (=> b!3987054 (= res!1617312 (not ((_ is Nil!42647) lt!1403897)))))

(declare-fun d!1179780 () Bool)

(assert (=> d!1179780 e!2471404))

(declare-fun res!1617315 () Bool)

(assert (=> d!1179780 (=> res!1617315 e!2471404)))

(declare-fun lt!1404065 () Bool)

(assert (=> d!1179780 (= res!1617315 (not lt!1404065))))

(assert (=> d!1179780 (= lt!1404065 e!2471405)))

(declare-fun res!1617314 () Bool)

(assert (=> d!1179780 (=> res!1617314 e!2471405)))

(assert (=> d!1179780 (= res!1617314 ((_ is Nil!42647) lt!1403868))))

(assert (=> d!1179780 (= (isPrefix!3833 lt!1403868 lt!1403897) lt!1404065)))

(assert (= (and d!1179780 (not res!1617314)) b!3987054))

(assert (= (and b!3987054 res!1617312) b!3987055))

(assert (= (and b!3987055 res!1617313) b!3987056))

(assert (= (and d!1179780 (not res!1617315)) b!3987057))

(declare-fun m!4563733 () Bool)

(assert (=> b!3987057 m!4563733))

(assert (=> b!3987057 m!4563165))

(assert (=> b!3987055 m!4563339))

(declare-fun m!4563735 () Bool)

(assert (=> b!3987055 m!4563735))

(assert (=> b!3987056 m!4563341))

(declare-fun m!4563737 () Bool)

(assert (=> b!3987056 m!4563737))

(assert (=> b!3987056 m!4563341))

(assert (=> b!3987056 m!4563737))

(declare-fun m!4563739 () Bool)

(assert (=> b!3987056 m!4563739))

(assert (=> b!3986681 d!1179780))

(declare-fun b!3987058 () Bool)

(declare-fun e!2471408 () Bool)

(declare-fun e!2471410 () Bool)

(assert (=> b!3987058 (= e!2471408 e!2471410)))

(declare-fun res!1617318 () Bool)

(assert (=> b!3987058 (=> (not res!1617318) (not e!2471410))))

(declare-fun lt!1404070 () Option!9160)

(assert (=> b!3987058 (= res!1617318 (matchR!5628 (regex!6746 (rule!9758 (_1!24060 (v!39511 lt!1403890)))) (list!15830 (charsOf!4562 (_1!24060 (get!14033 lt!1404070))))))))

(declare-fun b!3987059 () Bool)

(declare-fun e!2471407 () Option!9160)

(declare-fun lt!1404068 () tuple2!41854)

(assert (=> b!3987059 (= e!2471407 (Some!9159 (tuple2!41853 (Token!12631 (apply!9957 (transformation!6746 (rule!9758 (_1!24060 (v!39511 lt!1403890)))) (seqFromList!4985 (_1!24061 lt!1404068))) (rule!9758 (_1!24060 (v!39511 lt!1403890))) (size!31898 (seqFromList!4985 (_1!24061 lt!1404068))) (_1!24061 lt!1404068)) (_2!24061 lt!1404068))))))

(declare-fun lt!1404066 () Unit!61356)

(assert (=> b!3987059 (= lt!1404066 (longestMatchIsAcceptedByMatchOrIsEmpty!1300 (regex!6746 (rule!9758 (_1!24060 (v!39511 lt!1403890)))) lt!1403884))))

(declare-fun res!1617320 () Bool)

(assert (=> b!3987059 (= res!1617320 (isEmpty!25487 (_1!24061 (findLongestMatchInner!1327 (regex!6746 (rule!9758 (_1!24060 (v!39511 lt!1403890)))) Nil!42647 (size!31897 Nil!42647) lt!1403884 lt!1403884 (size!31897 lt!1403884)))))))

(declare-fun e!2471409 () Bool)

(assert (=> b!3987059 (=> res!1617320 e!2471409)))

(assert (=> b!3987059 e!2471409))

(declare-fun lt!1404069 () Unit!61356)

(assert (=> b!3987059 (= lt!1404069 lt!1404066)))

(declare-fun lt!1404067 () Unit!61356)

(assert (=> b!3987059 (= lt!1404067 (lemmaSemiInverse!1843 (transformation!6746 (rule!9758 (_1!24060 (v!39511 lt!1403890)))) (seqFromList!4985 (_1!24061 lt!1404068))))))

(declare-fun b!3987060 () Bool)

(declare-fun res!1617317 () Bool)

(assert (=> b!3987060 (=> (not res!1617317) (not e!2471410))))

(assert (=> b!3987060 (= res!1617317 (< (size!31897 (_2!24060 (get!14033 lt!1404070))) (size!31897 lt!1403884)))))

(declare-fun b!3987061 () Bool)

(assert (=> b!3987061 (= e!2471407 None!9159)))

(declare-fun d!1179782 () Bool)

(assert (=> d!1179782 e!2471408))

(declare-fun res!1617321 () Bool)

(assert (=> d!1179782 (=> res!1617321 e!2471408)))

(assert (=> d!1179782 (= res!1617321 (isEmpty!25489 lt!1404070))))

(assert (=> d!1179782 (= lt!1404070 e!2471407)))

(declare-fun c!690240 () Bool)

(assert (=> d!1179782 (= c!690240 (isEmpty!25487 (_1!24061 lt!1404068)))))

(assert (=> d!1179782 (= lt!1404068 (findLongestMatch!1240 (regex!6746 (rule!9758 (_1!24060 (v!39511 lt!1403890)))) lt!1403884))))

(assert (=> d!1179782 (ruleValid!2678 thiss!21717 (rule!9758 (_1!24060 (v!39511 lt!1403890))))))

(assert (=> d!1179782 (= (maxPrefixOneRule!2667 thiss!21717 (rule!9758 (_1!24060 (v!39511 lt!1403890))) lt!1403884) lt!1404070)))

(declare-fun b!3987062 () Bool)

(declare-fun res!1617316 () Bool)

(assert (=> b!3987062 (=> (not res!1617316) (not e!2471410))))

(assert (=> b!3987062 (= res!1617316 (= (value!212895 (_1!24060 (get!14033 lt!1404070))) (apply!9957 (transformation!6746 (rule!9758 (_1!24060 (get!14033 lt!1404070)))) (seqFromList!4985 (originalCharacters!7346 (_1!24060 (get!14033 lt!1404070)))))))))

(declare-fun b!3987063 () Bool)

(assert (=> b!3987063 (= e!2471410 (= (size!31896 (_1!24060 (get!14033 lt!1404070))) (size!31897 (originalCharacters!7346 (_1!24060 (get!14033 lt!1404070))))))))

(declare-fun b!3987064 () Bool)

(declare-fun res!1617322 () Bool)

(assert (=> b!3987064 (=> (not res!1617322) (not e!2471410))))

(assert (=> b!3987064 (= res!1617322 (= (++!11148 (list!15830 (charsOf!4562 (_1!24060 (get!14033 lt!1404070)))) (_2!24060 (get!14033 lt!1404070))) lt!1403884))))

(declare-fun b!3987065 () Bool)

(declare-fun res!1617319 () Bool)

(assert (=> b!3987065 (=> (not res!1617319) (not e!2471410))))

(assert (=> b!3987065 (= res!1617319 (= (rule!9758 (_1!24060 (get!14033 lt!1404070))) (rule!9758 (_1!24060 (v!39511 lt!1403890)))))))

(declare-fun b!3987066 () Bool)

(assert (=> b!3987066 (= e!2471409 (matchR!5628 (regex!6746 (rule!9758 (_1!24060 (v!39511 lt!1403890)))) (_1!24061 (findLongestMatchInner!1327 (regex!6746 (rule!9758 (_1!24060 (v!39511 lt!1403890)))) Nil!42647 (size!31897 Nil!42647) lt!1403884 lt!1403884 (size!31897 lt!1403884)))))))

(assert (= (and d!1179782 c!690240) b!3987061))

(assert (= (and d!1179782 (not c!690240)) b!3987059))

(assert (= (and b!3987059 (not res!1617320)) b!3987066))

(assert (= (and d!1179782 (not res!1617321)) b!3987058))

(assert (= (and b!3987058 res!1617318) b!3987064))

(assert (= (and b!3987064 res!1617322) b!3987060))

(assert (= (and b!3987060 res!1617317) b!3987065))

(assert (= (and b!3987065 res!1617319) b!3987062))

(assert (= (and b!3987062 res!1617316) b!3987063))

(declare-fun m!4563741 () Bool)

(assert (=> b!3987059 m!4563741))

(declare-fun m!4563743 () Bool)

(assert (=> b!3987059 m!4563743))

(declare-fun m!4563745 () Bool)

(assert (=> b!3987059 m!4563745))

(assert (=> b!3987059 m!4563303))

(assert (=> b!3987059 m!4563743))

(declare-fun m!4563747 () Bool)

(assert (=> b!3987059 m!4563747))

(assert (=> b!3987059 m!4563641))

(assert (=> b!3987059 m!4563743))

(declare-fun m!4563749 () Bool)

(assert (=> b!3987059 m!4563749))

(assert (=> b!3987059 m!4563743))

(declare-fun m!4563751 () Bool)

(assert (=> b!3987059 m!4563751))

(assert (=> b!3987059 m!4563641))

(assert (=> b!3987059 m!4563303))

(declare-fun m!4563753 () Bool)

(assert (=> b!3987059 m!4563753))

(declare-fun m!4563755 () Bool)

(assert (=> b!3987062 m!4563755))

(declare-fun m!4563757 () Bool)

(assert (=> b!3987062 m!4563757))

(assert (=> b!3987062 m!4563757))

(declare-fun m!4563759 () Bool)

(assert (=> b!3987062 m!4563759))

(assert (=> b!3987058 m!4563755))

(declare-fun m!4563761 () Bool)

(assert (=> b!3987058 m!4563761))

(assert (=> b!3987058 m!4563761))

(declare-fun m!4563763 () Bool)

(assert (=> b!3987058 m!4563763))

(assert (=> b!3987058 m!4563763))

(declare-fun m!4563765 () Bool)

(assert (=> b!3987058 m!4563765))

(assert (=> b!3987066 m!4563641))

(assert (=> b!3987066 m!4563303))

(assert (=> b!3987066 m!4563641))

(assert (=> b!3987066 m!4563303))

(assert (=> b!3987066 m!4563753))

(declare-fun m!4563767 () Bool)

(assert (=> b!3987066 m!4563767))

(assert (=> b!3987060 m!4563755))

(declare-fun m!4563769 () Bool)

(assert (=> b!3987060 m!4563769))

(assert (=> b!3987060 m!4563303))

(assert (=> b!3987063 m!4563755))

(declare-fun m!4563771 () Bool)

(assert (=> b!3987063 m!4563771))

(assert (=> b!3987065 m!4563755))

(assert (=> b!3987064 m!4563755))

(assert (=> b!3987064 m!4563761))

(assert (=> b!3987064 m!4563761))

(assert (=> b!3987064 m!4563763))

(assert (=> b!3987064 m!4563763))

(declare-fun m!4563773 () Bool)

(assert (=> b!3987064 m!4563773))

(declare-fun m!4563775 () Bool)

(assert (=> d!1179782 m!4563775))

(declare-fun m!4563777 () Bool)

(assert (=> d!1179782 m!4563777))

(declare-fun m!4563779 () Bool)

(assert (=> d!1179782 m!4563779))

(assert (=> d!1179782 m!4563169))

(assert (=> b!3986681 d!1179782))

(declare-fun d!1179784 () Bool)

(assert (=> d!1179784 (isPrefix!3833 lt!1403868 (++!11148 lt!1403868 newSuffixResult!27))))

(declare-fun lt!1404081 () Unit!61356)

(assert (=> d!1179784 (= lt!1404081 (choose!23940 lt!1403868 newSuffixResult!27))))

(assert (=> d!1179784 (= (lemmaConcatTwoListThenFirstIsPrefix!2676 lt!1403868 newSuffixResult!27) lt!1404081)))

(declare-fun bs!588183 () Bool)

(assert (= bs!588183 d!1179784))

(assert (=> bs!588183 m!4563173))

(assert (=> bs!588183 m!4563173))

(assert (=> bs!588183 m!4563175))

(declare-fun m!4563781 () Bool)

(assert (=> bs!588183 m!4563781))

(assert (=> b!3986681 d!1179784))

(declare-fun b!3987088 () Bool)

(declare-fun e!2471419 () Bool)

(assert (=> b!3987088 (= e!2471419 (>= (size!31897 (++!11148 lt!1403868 newSuffixResult!27)) (size!31897 lt!1403868)))))

(declare-fun b!3987086 () Bool)

(declare-fun res!1617338 () Bool)

(declare-fun e!2471421 () Bool)

(assert (=> b!3987086 (=> (not res!1617338) (not e!2471421))))

(assert (=> b!3987086 (= res!1617338 (= (head!8484 lt!1403868) (head!8484 (++!11148 lt!1403868 newSuffixResult!27))))))

(declare-fun b!3987087 () Bool)

(assert (=> b!3987087 (= e!2471421 (isPrefix!3833 (tail!6216 lt!1403868) (tail!6216 (++!11148 lt!1403868 newSuffixResult!27))))))

(declare-fun b!3987085 () Bool)

(declare-fun e!2471420 () Bool)

(assert (=> b!3987085 (= e!2471420 e!2471421)))

(declare-fun res!1617337 () Bool)

(assert (=> b!3987085 (=> (not res!1617337) (not e!2471421))))

(assert (=> b!3987085 (= res!1617337 (not ((_ is Nil!42647) (++!11148 lt!1403868 newSuffixResult!27))))))

(declare-fun d!1179786 () Bool)

(assert (=> d!1179786 e!2471419))

(declare-fun res!1617340 () Bool)

(assert (=> d!1179786 (=> res!1617340 e!2471419)))

(declare-fun lt!1404082 () Bool)

(assert (=> d!1179786 (= res!1617340 (not lt!1404082))))

(assert (=> d!1179786 (= lt!1404082 e!2471420)))

(declare-fun res!1617339 () Bool)

(assert (=> d!1179786 (=> res!1617339 e!2471420)))

(assert (=> d!1179786 (= res!1617339 ((_ is Nil!42647) lt!1403868))))

(assert (=> d!1179786 (= (isPrefix!3833 lt!1403868 (++!11148 lt!1403868 newSuffixResult!27)) lt!1404082)))

(assert (= (and d!1179786 (not res!1617339)) b!3987085))

(assert (= (and b!3987085 res!1617337) b!3987086))

(assert (= (and b!3987086 res!1617338) b!3987087))

(assert (= (and d!1179786 (not res!1617340)) b!3987088))

(assert (=> b!3987088 m!4563173))

(declare-fun m!4563783 () Bool)

(assert (=> b!3987088 m!4563783))

(assert (=> b!3987088 m!4563165))

(assert (=> b!3987086 m!4563339))

(assert (=> b!3987086 m!4563173))

(declare-fun m!4563785 () Bool)

(assert (=> b!3987086 m!4563785))

(assert (=> b!3987087 m!4563341))

(assert (=> b!3987087 m!4563173))

(declare-fun m!4563787 () Bool)

(assert (=> b!3987087 m!4563787))

(assert (=> b!3987087 m!4563341))

(assert (=> b!3987087 m!4563787))

(declare-fun m!4563789 () Bool)

(assert (=> b!3987087 m!4563789))

(assert (=> b!3986681 d!1179786))

(declare-fun d!1179788 () Bool)

(assert (=> d!1179788 (= (size!31896 token!484) (size!31897 (originalCharacters!7346 token!484)))))

(declare-fun Unit!61362 () Unit!61356)

(assert (=> d!1179788 (= (lemmaCharactersSize!1341 token!484) Unit!61362)))

(declare-fun bs!588184 () Bool)

(assert (= bs!588184 d!1179788))

(assert (=> bs!588184 m!4563089))

(assert (=> b!3986681 d!1179788))

(declare-fun d!1179790 () Bool)

(assert (=> d!1179790 (= (size!31896 (_1!24060 (v!39511 lt!1403890))) (size!31897 (originalCharacters!7346 (_1!24060 (v!39511 lt!1403890)))))))

(declare-fun Unit!61363 () Unit!61356)

(assert (=> d!1179790 (= (lemmaCharactersSize!1341 (_1!24060 (v!39511 lt!1403890))) Unit!61363)))

(declare-fun bs!588185 () Bool)

(assert (= bs!588185 d!1179790))

(declare-fun m!4563791 () Bool)

(assert (=> bs!588185 m!4563791))

(assert (=> b!3986681 d!1179790))

(declare-fun d!1179792 () Bool)

(assert (=> d!1179792 (ruleValid!2678 thiss!21717 (rule!9758 (_1!24060 (v!39511 lt!1403890))))))

(declare-fun lt!1404085 () Unit!61356)

(declare-fun choose!23947 (LexerInterface!6335 Rule!13292 List!42772) Unit!61356)

(assert (=> d!1179792 (= lt!1404085 (choose!23947 thiss!21717 (rule!9758 (_1!24060 (v!39511 lt!1403890))) rules!2999))))

(assert (=> d!1179792 (contains!8487 rules!2999 (rule!9758 (_1!24060 (v!39511 lt!1403890))))))

(assert (=> d!1179792 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1752 thiss!21717 (rule!9758 (_1!24060 (v!39511 lt!1403890))) rules!2999) lt!1404085)))

(declare-fun bs!588186 () Bool)

(assert (= bs!588186 d!1179792))

(assert (=> bs!588186 m!4563169))

(declare-fun m!4563793 () Bool)

(assert (=> bs!588186 m!4563793))

(assert (=> bs!588186 m!4563271))

(assert (=> b!3986681 d!1179792))

(declare-fun d!1179794 () Bool)

(assert (=> d!1179794 (isPrefix!3833 lt!1403868 (++!11148 lt!1403868 (_2!24060 (v!39511 lt!1403890))))))

(declare-fun lt!1404086 () Unit!61356)

(assert (=> d!1179794 (= lt!1404086 (choose!23940 lt!1403868 (_2!24060 (v!39511 lt!1403890))))))

(assert (=> d!1179794 (= (lemmaConcatTwoListThenFirstIsPrefix!2676 lt!1403868 (_2!24060 (v!39511 lt!1403890))) lt!1404086)))

(declare-fun bs!588187 () Bool)

(assert (= bs!588187 d!1179794))

(assert (=> bs!588187 m!4563149))

(assert (=> bs!588187 m!4563149))

(declare-fun m!4563795 () Bool)

(assert (=> bs!588187 m!4563795))

(declare-fun m!4563797 () Bool)

(assert (=> bs!588187 m!4563797))

(assert (=> b!3986681 d!1179794))

(declare-fun d!1179796 () Bool)

(declare-fun e!2471428 () Bool)

(assert (=> d!1179796 e!2471428))

(declare-fun res!1617350 () Bool)

(assert (=> d!1179796 (=> (not res!1617350) (not e!2471428))))

(assert (=> d!1179796 (= res!1617350 (semiInverseModEq!2890 (toChars!9093 (transformation!6746 (rule!9758 (_1!24060 (v!39511 lt!1403890))))) (toValue!9234 (transformation!6746 (rule!9758 (_1!24060 (v!39511 lt!1403890)))))))))

(declare-fun Unit!61364 () Unit!61356)

(assert (=> d!1179796 (= (lemmaInv!961 (transformation!6746 (rule!9758 (_1!24060 (v!39511 lt!1403890))))) Unit!61364)))

(declare-fun b!3987100 () Bool)

(assert (=> b!3987100 (= e!2471428 (equivClasses!2789 (toChars!9093 (transformation!6746 (rule!9758 (_1!24060 (v!39511 lt!1403890))))) (toValue!9234 (transformation!6746 (rule!9758 (_1!24060 (v!39511 lt!1403890)))))))))

(assert (= (and d!1179796 res!1617350) b!3987100))

(declare-fun m!4563805 () Bool)

(assert (=> d!1179796 m!4563805))

(declare-fun m!4563807 () Bool)

(assert (=> b!3987100 m!4563807))

(assert (=> b!3986681 d!1179796))

(declare-fun d!1179798 () Bool)

(assert (=> d!1179798 (= (apply!9957 (transformation!6746 (rule!9758 (_1!24060 (v!39511 lt!1403890)))) (seqFromList!4985 lt!1403868)) (dynLambda!18120 (toValue!9234 (transformation!6746 (rule!9758 (_1!24060 (v!39511 lt!1403890))))) (seqFromList!4985 lt!1403868)))))

(declare-fun b_lambda!116407 () Bool)

(assert (=> (not b_lambda!116407) (not d!1179798)))

(declare-fun t!331585 () Bool)

(declare-fun tb!240073 () Bool)

(assert (=> (and b!3986685 (= (toValue!9234 (transformation!6746 (rule!9758 token!484))) (toValue!9234 (transformation!6746 (rule!9758 (_1!24060 (v!39511 lt!1403890)))))) t!331585) tb!240073))

(declare-fun result!290860 () Bool)

(assert (=> tb!240073 (= result!290860 (inv!21 (dynLambda!18120 (toValue!9234 (transformation!6746 (rule!9758 (_1!24060 (v!39511 lt!1403890))))) (seqFromList!4985 lt!1403868))))))

(declare-fun m!4563829 () Bool)

(assert (=> tb!240073 m!4563829))

(assert (=> d!1179798 t!331585))

(declare-fun b_and!306391 () Bool)

(assert (= b_and!306383 (and (=> t!331585 result!290860) b_and!306391)))

(declare-fun t!331587 () Bool)

(declare-fun tb!240075 () Bool)

(assert (=> (and b!3986687 (= (toValue!9234 (transformation!6746 (h!48068 rules!2999))) (toValue!9234 (transformation!6746 (rule!9758 (_1!24060 (v!39511 lt!1403890)))))) t!331587) tb!240075))

(declare-fun result!290862 () Bool)

(assert (= result!290862 result!290860))

(assert (=> d!1179798 t!331587))

(declare-fun b_and!306393 () Bool)

(assert (= b_and!306385 (and (=> t!331587 result!290862) b_and!306393)))

(assert (=> d!1179798 m!4563161))

(declare-fun m!4563837 () Bool)

(assert (=> d!1179798 m!4563837))

(assert (=> b!3986681 d!1179798))

(declare-fun d!1179800 () Bool)

(assert (=> d!1179800 (= (maxPrefixOneRule!2667 thiss!21717 (rule!9758 (_1!24060 (v!39511 lt!1403890))) lt!1403884) (Some!9159 (tuple2!41853 (Token!12631 (apply!9957 (transformation!6746 (rule!9758 (_1!24060 (v!39511 lt!1403890)))) (seqFromList!4985 lt!1403868)) (rule!9758 (_1!24060 (v!39511 lt!1403890))) (size!31897 lt!1403868) lt!1403868) (_2!24060 (v!39511 lt!1403890)))))))

(declare-fun lt!1404092 () Unit!61356)

(assert (=> d!1179800 (= lt!1404092 (choose!23939 thiss!21717 rules!2999 lt!1403868 lt!1403884 (_2!24060 (v!39511 lt!1403890)) (rule!9758 (_1!24060 (v!39511 lt!1403890)))))))

(assert (=> d!1179800 (not (isEmpty!25486 rules!2999))))

(assert (=> d!1179800 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1489 thiss!21717 rules!2999 lt!1403868 lt!1403884 (_2!24060 (v!39511 lt!1403890)) (rule!9758 (_1!24060 (v!39511 lt!1403890)))) lt!1404092)))

(declare-fun bs!588188 () Bool)

(assert (= bs!588188 d!1179800))

(assert (=> bs!588188 m!4563161))

(assert (=> bs!588188 m!4563163))

(declare-fun m!4563849 () Bool)

(assert (=> bs!588188 m!4563849))

(assert (=> bs!588188 m!4563165))

(assert (=> bs!588188 m!4563179))

(assert (=> bs!588188 m!4563161))

(assert (=> bs!588188 m!4563249))

(assert (=> b!3986681 d!1179800))

(declare-fun d!1179804 () Bool)

(declare-fun lt!1404094 () BalanceConc!25508)

(assert (=> d!1179804 (= (list!15830 lt!1404094) (originalCharacters!7346 (_1!24060 (v!39511 lt!1403890))))))

(assert (=> d!1179804 (= lt!1404094 (dynLambda!18118 (toChars!9093 (transformation!6746 (rule!9758 (_1!24060 (v!39511 lt!1403890))))) (value!212895 (_1!24060 (v!39511 lt!1403890)))))))

(assert (=> d!1179804 (= (charsOf!4562 (_1!24060 (v!39511 lt!1403890))) lt!1404094)))

(declare-fun b_lambda!116409 () Bool)

(assert (=> (not b_lambda!116409) (not d!1179804)))

(declare-fun t!331589 () Bool)

(declare-fun tb!240077 () Bool)

(assert (=> (and b!3986685 (= (toChars!9093 (transformation!6746 (rule!9758 token!484))) (toChars!9093 (transformation!6746 (rule!9758 (_1!24060 (v!39511 lt!1403890)))))) t!331589) tb!240077))

(declare-fun b!3987103 () Bool)

(declare-fun e!2471431 () Bool)

(declare-fun tp!1214909 () Bool)

(assert (=> b!3987103 (= e!2471431 (and (inv!56964 (c!690176 (dynLambda!18118 (toChars!9093 (transformation!6746 (rule!9758 (_1!24060 (v!39511 lt!1403890))))) (value!212895 (_1!24060 (v!39511 lt!1403890)))))) tp!1214909))))

(declare-fun result!290864 () Bool)

(assert (=> tb!240077 (= result!290864 (and (inv!56965 (dynLambda!18118 (toChars!9093 (transformation!6746 (rule!9758 (_1!24060 (v!39511 lt!1403890))))) (value!212895 (_1!24060 (v!39511 lt!1403890))))) e!2471431))))

(assert (= tb!240077 b!3987103))

(declare-fun m!4563853 () Bool)

(assert (=> b!3987103 m!4563853))

(declare-fun m!4563855 () Bool)

(assert (=> tb!240077 m!4563855))

(assert (=> d!1179804 t!331589))

(declare-fun b_and!306395 () Bool)

(assert (= b_and!306387 (and (=> t!331589 result!290864) b_and!306395)))

(declare-fun t!331591 () Bool)

(declare-fun tb!240079 () Bool)

(assert (=> (and b!3986687 (= (toChars!9093 (transformation!6746 (h!48068 rules!2999))) (toChars!9093 (transformation!6746 (rule!9758 (_1!24060 (v!39511 lt!1403890)))))) t!331591) tb!240079))

(declare-fun result!290866 () Bool)

(assert (= result!290866 result!290864))

(assert (=> d!1179804 t!331591))

(declare-fun b_and!306397 () Bool)

(assert (= b_and!306389 (and (=> t!331591 result!290866) b_and!306397)))

(declare-fun m!4563857 () Bool)

(assert (=> d!1179804 m!4563857))

(declare-fun m!4563859 () Bool)

(assert (=> d!1179804 m!4563859))

(assert (=> b!3986681 d!1179804))

(declare-fun d!1179808 () Bool)

(declare-fun res!1617359 () Bool)

(declare-fun e!2471437 () Bool)

(assert (=> d!1179808 (=> (not res!1617359) (not e!2471437))))

(assert (=> d!1179808 (= res!1617359 (validRegex!5283 (regex!6746 (rule!9758 (_1!24060 (v!39511 lt!1403890))))))))

(assert (=> d!1179808 (= (ruleValid!2678 thiss!21717 (rule!9758 (_1!24060 (v!39511 lt!1403890)))) e!2471437)))

(declare-fun b!3987112 () Bool)

(declare-fun res!1617360 () Bool)

(assert (=> b!3987112 (=> (not res!1617360) (not e!2471437))))

(assert (=> b!3987112 (= res!1617360 (not (nullable!4083 (regex!6746 (rule!9758 (_1!24060 (v!39511 lt!1403890)))))))))

(declare-fun b!3987113 () Bool)

(assert (=> b!3987113 (= e!2471437 (not (= (tag!7606 (rule!9758 (_1!24060 (v!39511 lt!1403890)))) (String!48599 ""))))))

(assert (= (and d!1179808 res!1617359) b!3987112))

(assert (= (and b!3987112 res!1617360) b!3987113))

(declare-fun m!4563869 () Bool)

(assert (=> d!1179808 m!4563869))

(declare-fun m!4563871 () Bool)

(assert (=> b!3987112 m!4563871))

(assert (=> b!3986681 d!1179808))

(declare-fun b!3987116 () Bool)

(declare-fun res!1617362 () Bool)

(declare-fun e!2471438 () Bool)

(assert (=> b!3987116 (=> (not res!1617362) (not e!2471438))))

(declare-fun lt!1404096 () List!42771)

(assert (=> b!3987116 (= res!1617362 (= (size!31897 lt!1404096) (+ (size!31897 lt!1403868) (size!31897 newSuffixResult!27))))))

(declare-fun d!1179814 () Bool)

(assert (=> d!1179814 e!2471438))

(declare-fun res!1617361 () Bool)

(assert (=> d!1179814 (=> (not res!1617361) (not e!2471438))))

(assert (=> d!1179814 (= res!1617361 (= (content!6462 lt!1404096) ((_ map or) (content!6462 lt!1403868) (content!6462 newSuffixResult!27))))))

(declare-fun e!2471439 () List!42771)

(assert (=> d!1179814 (= lt!1404096 e!2471439)))

(declare-fun c!690245 () Bool)

(assert (=> d!1179814 (= c!690245 ((_ is Nil!42647) lt!1403868))))

(assert (=> d!1179814 (= (++!11148 lt!1403868 newSuffixResult!27) lt!1404096)))

(declare-fun b!3987115 () Bool)

(assert (=> b!3987115 (= e!2471439 (Cons!42647 (h!48067 lt!1403868) (++!11148 (t!331570 lt!1403868) newSuffixResult!27)))))

(declare-fun b!3987114 () Bool)

(assert (=> b!3987114 (= e!2471439 newSuffixResult!27)))

(declare-fun b!3987117 () Bool)

(assert (=> b!3987117 (= e!2471438 (or (not (= newSuffixResult!27 Nil!42647)) (= lt!1404096 lt!1403868)))))

(assert (= (and d!1179814 c!690245) b!3987114))

(assert (= (and d!1179814 (not c!690245)) b!3987115))

(assert (= (and d!1179814 res!1617361) b!3987116))

(assert (= (and b!3987116 res!1617362) b!3987117))

(declare-fun m!4563873 () Bool)

(assert (=> b!3987116 m!4563873))

(assert (=> b!3987116 m!4563165))

(declare-fun m!4563875 () Bool)

(assert (=> b!3987116 m!4563875))

(declare-fun m!4563877 () Bool)

(assert (=> d!1179814 m!4563877))

(assert (=> d!1179814 m!4563325))

(declare-fun m!4563879 () Bool)

(assert (=> d!1179814 m!4563879))

(declare-fun m!4563881 () Bool)

(assert (=> b!3987115 m!4563881))

(assert (=> b!3986681 d!1179814))

(declare-fun d!1179816 () Bool)

(assert (=> d!1179816 (= (seqFromList!4985 lt!1403868) (fromListB!2285 lt!1403868))))

(declare-fun bs!588190 () Bool)

(assert (= bs!588190 d!1179816))

(declare-fun m!4563883 () Bool)

(assert (=> bs!588190 m!4563883))

(assert (=> b!3986681 d!1179816))

(declare-fun b!3987120 () Bool)

(declare-fun res!1617364 () Bool)

(declare-fun e!2471440 () Bool)

(assert (=> b!3987120 (=> (not res!1617364) (not e!2471440))))

(declare-fun lt!1404099 () List!42771)

(assert (=> b!3987120 (= res!1617364 (= (size!31897 lt!1404099) (+ (size!31897 lt!1403868) (size!31897 (_2!24060 (v!39511 lt!1403890))))))))

(declare-fun d!1179818 () Bool)

(assert (=> d!1179818 e!2471440))

(declare-fun res!1617363 () Bool)

(assert (=> d!1179818 (=> (not res!1617363) (not e!2471440))))

(assert (=> d!1179818 (= res!1617363 (= (content!6462 lt!1404099) ((_ map or) (content!6462 lt!1403868) (content!6462 (_2!24060 (v!39511 lt!1403890))))))))

(declare-fun e!2471441 () List!42771)

(assert (=> d!1179818 (= lt!1404099 e!2471441)))

(declare-fun c!690246 () Bool)

(assert (=> d!1179818 (= c!690246 ((_ is Nil!42647) lt!1403868))))

(assert (=> d!1179818 (= (++!11148 lt!1403868 (_2!24060 (v!39511 lt!1403890))) lt!1404099)))

(declare-fun b!3987119 () Bool)

(assert (=> b!3987119 (= e!2471441 (Cons!42647 (h!48067 lt!1403868) (++!11148 (t!331570 lt!1403868) (_2!24060 (v!39511 lt!1403890)))))))

(declare-fun b!3987118 () Bool)

(assert (=> b!3987118 (= e!2471441 (_2!24060 (v!39511 lt!1403890)))))

(declare-fun b!3987121 () Bool)

(assert (=> b!3987121 (= e!2471440 (or (not (= (_2!24060 (v!39511 lt!1403890)) Nil!42647)) (= lt!1404099 lt!1403868)))))

(assert (= (and d!1179818 c!690246) b!3987118))

(assert (= (and d!1179818 (not c!690246)) b!3987119))

(assert (= (and d!1179818 res!1617363) b!3987120))

(assert (= (and b!3987120 res!1617364) b!3987121))

(declare-fun m!4563885 () Bool)

(assert (=> b!3987120 m!4563885))

(assert (=> b!3987120 m!4563165))

(declare-fun m!4563887 () Bool)

(assert (=> b!3987120 m!4563887))

(declare-fun m!4563889 () Bool)

(assert (=> d!1179818 m!4563889))

(assert (=> d!1179818 m!4563325))

(declare-fun m!4563891 () Bool)

(assert (=> d!1179818 m!4563891))

(declare-fun m!4563893 () Bool)

(assert (=> b!3987119 m!4563893))

(assert (=> b!3986681 d!1179818))

(declare-fun d!1179820 () Bool)

(declare-fun lt!1404101 () Int)

(assert (=> d!1179820 (>= lt!1404101 0)))

(declare-fun e!2471442 () Int)

(assert (=> d!1179820 (= lt!1404101 e!2471442)))

(declare-fun c!690247 () Bool)

(assert (=> d!1179820 (= c!690247 ((_ is Nil!42647) lt!1403868))))

(assert (=> d!1179820 (= (size!31897 lt!1403868) lt!1404101)))

(declare-fun b!3987122 () Bool)

(assert (=> b!3987122 (= e!2471442 0)))

(declare-fun b!3987123 () Bool)

(assert (=> b!3987123 (= e!2471442 (+ 1 (size!31897 (t!331570 lt!1403868))))))

(assert (= (and d!1179820 c!690247) b!3987122))

(assert (= (and d!1179820 (not c!690247)) b!3987123))

(declare-fun m!4563897 () Bool)

(assert (=> b!3987123 m!4563897))

(assert (=> b!3986681 d!1179820))

(declare-fun d!1179824 () Bool)

(assert (=> d!1179824 (= (list!15830 (charsOf!4562 (_1!24060 (v!39511 lt!1403890)))) (list!15832 (c!690176 (charsOf!4562 (_1!24060 (v!39511 lt!1403890))))))))

(declare-fun bs!588193 () Bool)

(assert (= bs!588193 d!1179824))

(declare-fun m!4563899 () Bool)

(assert (=> bs!588193 m!4563899))

(assert (=> b!3986681 d!1179824))

(declare-fun b!3987126 () Bool)

(declare-fun res!1617366 () Bool)

(declare-fun e!2471443 () Bool)

(assert (=> b!3987126 (=> (not res!1617366) (not e!2471443))))

(declare-fun lt!1404103 () List!42771)

(assert (=> b!3987126 (= res!1617366 (= (size!31897 lt!1404103) (+ (size!31897 lt!1403906) (size!31897 lt!1403864))))))

(declare-fun d!1179826 () Bool)

(assert (=> d!1179826 e!2471443))

(declare-fun res!1617365 () Bool)

(assert (=> d!1179826 (=> (not res!1617365) (not e!2471443))))

(assert (=> d!1179826 (= res!1617365 (= (content!6462 lt!1404103) ((_ map or) (content!6462 lt!1403906) (content!6462 lt!1403864))))))

(declare-fun e!2471444 () List!42771)

(assert (=> d!1179826 (= lt!1404103 e!2471444)))

(declare-fun c!690248 () Bool)

(assert (=> d!1179826 (= c!690248 ((_ is Nil!42647) lt!1403906))))

(assert (=> d!1179826 (= (++!11148 lt!1403906 lt!1403864) lt!1404103)))

(declare-fun b!3987125 () Bool)

(assert (=> b!3987125 (= e!2471444 (Cons!42647 (h!48067 lt!1403906) (++!11148 (t!331570 lt!1403906) lt!1403864)))))

(declare-fun b!3987124 () Bool)

(assert (=> b!3987124 (= e!2471444 lt!1403864)))

(declare-fun b!3987127 () Bool)

(assert (=> b!3987127 (= e!2471443 (or (not (= lt!1403864 Nil!42647)) (= lt!1404103 lt!1403906)))))

(assert (= (and d!1179826 c!690248) b!3987124))

(assert (= (and d!1179826 (not c!690248)) b!3987125))

(assert (= (and d!1179826 res!1617365) b!3987126))

(assert (= (and b!3987126 res!1617366) b!3987127))

(declare-fun m!4563907 () Bool)

(assert (=> b!3987126 m!4563907))

(assert (=> b!3987126 m!4563203))

(declare-fun m!4563909 () Bool)

(assert (=> b!3987126 m!4563909))

(declare-fun m!4563911 () Bool)

(assert (=> d!1179826 m!4563911))

(assert (=> d!1179826 m!4563381))

(declare-fun m!4563913 () Bool)

(assert (=> d!1179826 m!4563913))

(declare-fun m!4563915 () Bool)

(assert (=> b!3987125 m!4563915))

(assert (=> b!3986706 d!1179826))

(declare-fun d!1179832 () Bool)

(declare-fun lt!1404106 () List!42771)

(assert (=> d!1179832 (= (++!11148 lt!1403906 lt!1404106) prefix!494)))

(declare-fun e!2471448 () List!42771)

(assert (=> d!1179832 (= lt!1404106 e!2471448)))

(declare-fun c!690249 () Bool)

(assert (=> d!1179832 (= c!690249 ((_ is Cons!42647) lt!1403906))))

(assert (=> d!1179832 (>= (size!31897 prefix!494) (size!31897 lt!1403906))))

(assert (=> d!1179832 (= (getSuffix!2264 prefix!494 lt!1403906) lt!1404106)))

(declare-fun b!3987132 () Bool)

(assert (=> b!3987132 (= e!2471448 (getSuffix!2264 (tail!6216 prefix!494) (t!331570 lt!1403906)))))

(declare-fun b!3987133 () Bool)

(assert (=> b!3987133 (= e!2471448 prefix!494)))

(assert (= (and d!1179832 c!690249) b!3987132))

(assert (= (and d!1179832 (not c!690249)) b!3987133))

(declare-fun m!4563921 () Bool)

(assert (=> d!1179832 m!4563921))

(assert (=> d!1179832 m!4563205))

(assert (=> d!1179832 m!4563203))

(declare-fun m!4563925 () Bool)

(assert (=> b!3987132 m!4563925))

(assert (=> b!3987132 m!4563925))

(declare-fun m!4563929 () Bool)

(assert (=> b!3987132 m!4563929))

(assert (=> b!3986706 d!1179832))

(declare-fun b!3987137 () Bool)

(declare-fun e!2471449 () Bool)

(assert (=> b!3987137 (= e!2471449 (>= (size!31897 prefix!494) (size!31897 lt!1403906)))))

(declare-fun b!3987135 () Bool)

(declare-fun res!1617372 () Bool)

(declare-fun e!2471451 () Bool)

(assert (=> b!3987135 (=> (not res!1617372) (not e!2471451))))

(assert (=> b!3987135 (= res!1617372 (= (head!8484 lt!1403906) (head!8484 prefix!494)))))

(declare-fun b!3987136 () Bool)

(assert (=> b!3987136 (= e!2471451 (isPrefix!3833 (tail!6216 lt!1403906) (tail!6216 prefix!494)))))

(declare-fun b!3987134 () Bool)

(declare-fun e!2471450 () Bool)

(assert (=> b!3987134 (= e!2471450 e!2471451)))

(declare-fun res!1617371 () Bool)

(assert (=> b!3987134 (=> (not res!1617371) (not e!2471451))))

(assert (=> b!3987134 (= res!1617371 (not ((_ is Nil!42647) prefix!494)))))

(declare-fun d!1179836 () Bool)

(assert (=> d!1179836 e!2471449))

(declare-fun res!1617374 () Bool)

(assert (=> d!1179836 (=> res!1617374 e!2471449)))

(declare-fun lt!1404107 () Bool)

(assert (=> d!1179836 (= res!1617374 (not lt!1404107))))

(assert (=> d!1179836 (= lt!1404107 e!2471450)))

(declare-fun res!1617373 () Bool)

(assert (=> d!1179836 (=> res!1617373 e!2471450)))

(assert (=> d!1179836 (= res!1617373 ((_ is Nil!42647) lt!1403906))))

(assert (=> d!1179836 (= (isPrefix!3833 lt!1403906 prefix!494) lt!1404107)))

(assert (= (and d!1179836 (not res!1617373)) b!3987134))

(assert (= (and b!3987134 res!1617371) b!3987135))

(assert (= (and b!3987135 res!1617372) b!3987136))

(assert (= (and d!1179836 (not res!1617374)) b!3987137))

(assert (=> b!3987137 m!4563205))

(assert (=> b!3987137 m!4563203))

(assert (=> b!3987135 m!4563291))

(declare-fun m!4563931 () Bool)

(assert (=> b!3987135 m!4563931))

(assert (=> b!3987136 m!4563293))

(assert (=> b!3987136 m!4563925))

(assert (=> b!3987136 m!4563293))

(assert (=> b!3987136 m!4563925))

(declare-fun m!4563933 () Bool)

(assert (=> b!3987136 m!4563933))

(assert (=> b!3986706 d!1179836))

(declare-fun d!1179838 () Bool)

(assert (=> d!1179838 (isPrefix!3833 lt!1403906 prefix!494)))

(declare-fun lt!1404110 () Unit!61356)

(declare-fun choose!23948 (List!42771 List!42771 List!42771) Unit!61356)

(assert (=> d!1179838 (= lt!1404110 (choose!23948 prefix!494 lt!1403906 lt!1403908))))

(assert (=> d!1179838 (isPrefix!3833 prefix!494 lt!1403908)))

(assert (=> d!1179838 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!411 prefix!494 lt!1403906 lt!1403908) lt!1404110)))

(declare-fun bs!588195 () Bool)

(assert (= bs!588195 d!1179838))

(assert (=> bs!588195 m!4563231))

(declare-fun m!4563935 () Bool)

(assert (=> bs!588195 m!4563935))

(assert (=> bs!588195 m!4563123))

(assert (=> b!3986706 d!1179838))

(declare-fun d!1179842 () Bool)

(declare-fun res!1617383 () Bool)

(declare-fun e!2471460 () Bool)

(assert (=> d!1179842 (=> (not res!1617383) (not e!2471460))))

(declare-fun rulesValid!2624 (LexerInterface!6335 List!42772) Bool)

(assert (=> d!1179842 (= res!1617383 (rulesValid!2624 thiss!21717 rules!2999))))

(assert (=> d!1179842 (= (rulesInvariant!5678 thiss!21717 rules!2999) e!2471460)))

(declare-fun b!3987148 () Bool)

(declare-datatypes ((List!42773 0))(
  ( (Nil!42649) (Cons!42649 (h!48069 String!48598) (t!331620 List!42773)) )
))
(declare-fun noDuplicateTag!2625 (LexerInterface!6335 List!42772 List!42773) Bool)

(assert (=> b!3987148 (= e!2471460 (noDuplicateTag!2625 thiss!21717 rules!2999 Nil!42649))))

(assert (= (and d!1179842 res!1617383) b!3987148))

(declare-fun m!4563941 () Bool)

(assert (=> d!1179842 m!4563941))

(declare-fun m!4563943 () Bool)

(assert (=> b!3987148 m!4563943))

(assert (=> b!3986683 d!1179842))

(declare-fun d!1179846 () Bool)

(assert (=> d!1179846 (= (_2!24060 (v!39511 lt!1403890)) lt!1403888)))

(declare-fun lt!1404111 () Unit!61356)

(assert (=> d!1179846 (= lt!1404111 (choose!23941 lt!1403868 (_2!24060 (v!39511 lt!1403890)) lt!1403868 lt!1403888 lt!1403884))))

(assert (=> d!1179846 (isPrefix!3833 lt!1403868 lt!1403884)))

(assert (=> d!1179846 (= (lemmaSamePrefixThenSameSuffix!2020 lt!1403868 (_2!24060 (v!39511 lt!1403890)) lt!1403868 lt!1403888 lt!1403884) lt!1404111)))

(declare-fun bs!588196 () Bool)

(assert (= bs!588196 d!1179846))

(declare-fun m!4563945 () Bool)

(assert (=> bs!588196 m!4563945))

(assert (=> bs!588196 m!4563107))

(assert (=> b!3986705 d!1179846))

(declare-fun b!3987152 () Bool)

(declare-fun e!2471461 () Bool)

(assert (=> b!3987152 (= e!2471461 (>= (size!31897 lt!1403910) (size!31897 lt!1403868)))))

(declare-fun b!3987150 () Bool)

(declare-fun res!1617385 () Bool)

(declare-fun e!2471463 () Bool)

(assert (=> b!3987150 (=> (not res!1617385) (not e!2471463))))

(assert (=> b!3987150 (= res!1617385 (= (head!8484 lt!1403868) (head!8484 lt!1403910)))))

(declare-fun b!3987151 () Bool)

(assert (=> b!3987151 (= e!2471463 (isPrefix!3833 (tail!6216 lt!1403868) (tail!6216 lt!1403910)))))

(declare-fun b!3987149 () Bool)

(declare-fun e!2471462 () Bool)

(assert (=> b!3987149 (= e!2471462 e!2471463)))

(declare-fun res!1617384 () Bool)

(assert (=> b!3987149 (=> (not res!1617384) (not e!2471463))))

(assert (=> b!3987149 (= res!1617384 (not ((_ is Nil!42647) lt!1403910)))))

(declare-fun d!1179848 () Bool)

(assert (=> d!1179848 e!2471461))

(declare-fun res!1617387 () Bool)

(assert (=> d!1179848 (=> res!1617387 e!2471461)))

(declare-fun lt!1404112 () Bool)

(assert (=> d!1179848 (= res!1617387 (not lt!1404112))))

(assert (=> d!1179848 (= lt!1404112 e!2471462)))

(declare-fun res!1617386 () Bool)

(assert (=> d!1179848 (=> res!1617386 e!2471462)))

(assert (=> d!1179848 (= res!1617386 ((_ is Nil!42647) lt!1403868))))

(assert (=> d!1179848 (= (isPrefix!3833 lt!1403868 lt!1403910) lt!1404112)))

(assert (= (and d!1179848 (not res!1617386)) b!3987149))

(assert (= (and b!3987149 res!1617384) b!3987150))

(assert (= (and b!3987150 res!1617385) b!3987151))

(assert (= (and d!1179848 (not res!1617387)) b!3987152))

(declare-fun m!4563947 () Bool)

(assert (=> b!3987152 m!4563947))

(assert (=> b!3987152 m!4563165))

(assert (=> b!3987150 m!4563339))

(declare-fun m!4563949 () Bool)

(assert (=> b!3987150 m!4563949))

(assert (=> b!3987151 m!4563341))

(declare-fun m!4563951 () Bool)

(assert (=> b!3987151 m!4563951))

(assert (=> b!3987151 m!4563341))

(assert (=> b!3987151 m!4563951))

(declare-fun m!4563953 () Bool)

(assert (=> b!3987151 m!4563953))

(assert (=> b!3986705 d!1179848))

(declare-fun d!1179850 () Bool)

(assert (=> d!1179850 (isPrefix!3833 lt!1403868 (++!11148 lt!1403868 lt!1403888))))

(declare-fun lt!1404113 () Unit!61356)

(assert (=> d!1179850 (= lt!1404113 (choose!23940 lt!1403868 lt!1403888))))

(assert (=> d!1179850 (= (lemmaConcatTwoListThenFirstIsPrefix!2676 lt!1403868 lt!1403888) lt!1404113)))

(declare-fun bs!588197 () Bool)

(assert (= bs!588197 d!1179850))

(assert (=> bs!588197 m!4563251))

(assert (=> bs!588197 m!4563251))

(declare-fun m!4563955 () Bool)

(assert (=> bs!588197 m!4563955))

(declare-fun m!4563957 () Bool)

(assert (=> bs!588197 m!4563957))

(assert (=> b!3986705 d!1179850))

(declare-fun b!3987157 () Bool)

(declare-fun res!1617391 () Bool)

(declare-fun e!2471466 () Bool)

(assert (=> b!3987157 (=> (not res!1617391) (not e!2471466))))

(declare-fun lt!1404114 () List!42771)

(assert (=> b!3987157 (= res!1617391 (= (size!31897 lt!1404114) (+ (size!31897 prefix!494) (size!31897 newSuffix!27))))))

(declare-fun d!1179852 () Bool)

(assert (=> d!1179852 e!2471466))

(declare-fun res!1617390 () Bool)

(assert (=> d!1179852 (=> (not res!1617390) (not e!2471466))))

(assert (=> d!1179852 (= res!1617390 (= (content!6462 lt!1404114) ((_ map or) (content!6462 prefix!494) (content!6462 newSuffix!27))))))

(declare-fun e!2471467 () List!42771)

(assert (=> d!1179852 (= lt!1404114 e!2471467)))

(declare-fun c!690250 () Bool)

(assert (=> d!1179852 (= c!690250 ((_ is Nil!42647) prefix!494))))

(assert (=> d!1179852 (= (++!11148 prefix!494 newSuffix!27) lt!1404114)))

(declare-fun b!3987156 () Bool)

(assert (=> b!3987156 (= e!2471467 (Cons!42647 (h!48067 prefix!494) (++!11148 (t!331570 prefix!494) newSuffix!27)))))

(declare-fun b!3987155 () Bool)

(assert (=> b!3987155 (= e!2471467 newSuffix!27)))

(declare-fun b!3987158 () Bool)

(assert (=> b!3987158 (= e!2471466 (or (not (= newSuffix!27 Nil!42647)) (= lt!1404114 prefix!494)))))

(assert (= (and d!1179852 c!690250) b!3987155))

(assert (= (and d!1179852 (not c!690250)) b!3987156))

(assert (= (and d!1179852 res!1617390) b!3987157))

(assert (= (and b!3987157 res!1617391) b!3987158))

(declare-fun m!4563959 () Bool)

(assert (=> b!3987157 m!4563959))

(assert (=> b!3987157 m!4563205))

(assert (=> b!3987157 m!4563247))

(declare-fun m!4563961 () Bool)

(assert (=> d!1179852 m!4563961))

(assert (=> d!1179852 m!4563351))

(declare-fun m!4563963 () Bool)

(assert (=> d!1179852 m!4563963))

(declare-fun m!4563965 () Bool)

(assert (=> b!3987156 m!4563965))

(assert (=> b!3986684 d!1179852))

(declare-fun b!3987162 () Bool)

(declare-fun res!1617394 () Bool)

(declare-fun e!2471469 () Bool)

(assert (=> b!3987162 (=> (not res!1617394) (not e!2471469))))

(declare-fun lt!1404115 () List!42771)

(assert (=> b!3987162 (= res!1617394 (= (size!31897 lt!1404115) (+ (size!31897 lt!1403906) (size!31897 newSuffixResult!27))))))

(declare-fun d!1179854 () Bool)

(assert (=> d!1179854 e!2471469))

(declare-fun res!1617393 () Bool)

(assert (=> d!1179854 (=> (not res!1617393) (not e!2471469))))

(assert (=> d!1179854 (= res!1617393 (= (content!6462 lt!1404115) ((_ map or) (content!6462 lt!1403906) (content!6462 newSuffixResult!27))))))

(declare-fun e!2471470 () List!42771)

(assert (=> d!1179854 (= lt!1404115 e!2471470)))

(declare-fun c!690251 () Bool)

(assert (=> d!1179854 (= c!690251 ((_ is Nil!42647) lt!1403906))))

(assert (=> d!1179854 (= (++!11148 lt!1403906 newSuffixResult!27) lt!1404115)))

(declare-fun b!3987161 () Bool)

(assert (=> b!3987161 (= e!2471470 (Cons!42647 (h!48067 lt!1403906) (++!11148 (t!331570 lt!1403906) newSuffixResult!27)))))

(declare-fun b!3987160 () Bool)

(assert (=> b!3987160 (= e!2471470 newSuffixResult!27)))

(declare-fun b!3987163 () Bool)

(assert (=> b!3987163 (= e!2471469 (or (not (= newSuffixResult!27 Nil!42647)) (= lt!1404115 lt!1403906)))))

(assert (= (and d!1179854 c!690251) b!3987160))

(assert (= (and d!1179854 (not c!690251)) b!3987161))

(assert (= (and d!1179854 res!1617393) b!3987162))

(assert (= (and b!3987162 res!1617394) b!3987163))

(declare-fun m!4563971 () Bool)

(assert (=> b!3987162 m!4563971))

(assert (=> b!3987162 m!4563203))

(assert (=> b!3987162 m!4563875))

(declare-fun m!4563973 () Bool)

(assert (=> d!1179854 m!4563973))

(assert (=> d!1179854 m!4563381))

(assert (=> d!1179854 m!4563879))

(declare-fun m!4563975 () Bool)

(assert (=> b!3987161 m!4563975))

(assert (=> b!3986684 d!1179854))

(declare-fun b!3987166 () Bool)

(declare-fun res!1617396 () Bool)

(declare-fun e!2471471 () Bool)

(assert (=> b!3987166 (=> (not res!1617396) (not e!2471471))))

(declare-fun lt!1404116 () List!42771)

(assert (=> b!3987166 (= res!1617396 (= (size!31897 lt!1404116) (+ (size!31897 lt!1403906) (size!31897 lt!1403904))))))

(declare-fun d!1179858 () Bool)

(assert (=> d!1179858 e!2471471))

(declare-fun res!1617395 () Bool)

(assert (=> d!1179858 (=> (not res!1617395) (not e!2471471))))

(assert (=> d!1179858 (= res!1617395 (= (content!6462 lt!1404116) ((_ map or) (content!6462 lt!1403906) (content!6462 lt!1403904))))))

(declare-fun e!2471472 () List!42771)

(assert (=> d!1179858 (= lt!1404116 e!2471472)))

(declare-fun c!690252 () Bool)

(assert (=> d!1179858 (= c!690252 ((_ is Nil!42647) lt!1403906))))

(assert (=> d!1179858 (= (++!11148 lt!1403906 lt!1403904) lt!1404116)))

(declare-fun b!3987165 () Bool)

(assert (=> b!3987165 (= e!2471472 (Cons!42647 (h!48067 lt!1403906) (++!11148 (t!331570 lt!1403906) lt!1403904)))))

(declare-fun b!3987164 () Bool)

(assert (=> b!3987164 (= e!2471472 lt!1403904)))

(declare-fun b!3987167 () Bool)

(assert (=> b!3987167 (= e!2471471 (or (not (= lt!1403904 Nil!42647)) (= lt!1404116 lt!1403906)))))

(assert (= (and d!1179858 c!690252) b!3987164))

(assert (= (and d!1179858 (not c!690252)) b!3987165))

(assert (= (and d!1179858 res!1617395) b!3987166))

(assert (= (and b!3987166 res!1617396) b!3987167))

(declare-fun m!4563981 () Bool)

(assert (=> b!3987166 m!4563981))

(assert (=> b!3987166 m!4563203))

(declare-fun m!4563983 () Bool)

(assert (=> b!3987166 m!4563983))

(declare-fun m!4563985 () Bool)

(assert (=> d!1179858 m!4563985))

(assert (=> d!1179858 m!4563381))

(declare-fun m!4563987 () Bool)

(assert (=> d!1179858 m!4563987))

(declare-fun m!4563989 () Bool)

(assert (=> b!3987165 m!4563989))

(assert (=> b!3986709 d!1179858))

(declare-fun b!3987174 () Bool)

(declare-fun res!1617400 () Bool)

(declare-fun e!2471475 () Bool)

(assert (=> b!3987174 (=> (not res!1617400) (not e!2471475))))

(declare-fun lt!1404118 () List!42771)

(assert (=> b!3987174 (= res!1617400 (= (size!31897 lt!1404118) (+ (size!31897 lt!1403859) (size!31897 suffix!1299))))))

(declare-fun d!1179864 () Bool)

(assert (=> d!1179864 e!2471475))

(declare-fun res!1617399 () Bool)

(assert (=> d!1179864 (=> (not res!1617399) (not e!2471475))))

(assert (=> d!1179864 (= res!1617399 (= (content!6462 lt!1404118) ((_ map or) (content!6462 lt!1403859) (content!6462 suffix!1299))))))

(declare-fun e!2471476 () List!42771)

(assert (=> d!1179864 (= lt!1404118 e!2471476)))

(declare-fun c!690254 () Bool)

(assert (=> d!1179864 (= c!690254 ((_ is Nil!42647) lt!1403859))))

(assert (=> d!1179864 (= (++!11148 lt!1403859 suffix!1299) lt!1404118)))

(declare-fun b!3987173 () Bool)

(assert (=> b!3987173 (= e!2471476 (Cons!42647 (h!48067 lt!1403859) (++!11148 (t!331570 lt!1403859) suffix!1299)))))

(declare-fun b!3987172 () Bool)

(assert (=> b!3987172 (= e!2471476 suffix!1299)))

(declare-fun b!3987175 () Bool)

(assert (=> b!3987175 (= e!2471475 (or (not (= suffix!1299 Nil!42647)) (= lt!1404118 lt!1403859)))))

(assert (= (and d!1179864 c!690254) b!3987172))

(assert (= (and d!1179864 (not c!690254)) b!3987173))

(assert (= (and d!1179864 res!1617399) b!3987174))

(assert (= (and b!3987174 res!1617400) b!3987175))

(declare-fun m!4563997 () Bool)

(assert (=> b!3987174 m!4563997))

(declare-fun m!4563999 () Bool)

(assert (=> b!3987174 m!4563999))

(assert (=> b!3987174 m!4563245))

(declare-fun m!4564001 () Bool)

(assert (=> d!1179864 m!4564001))

(declare-fun m!4564003 () Bool)

(assert (=> d!1179864 m!4564003))

(declare-fun m!4564005 () Bool)

(assert (=> d!1179864 m!4564005))

(declare-fun m!4564007 () Bool)

(assert (=> b!3987173 m!4564007))

(assert (=> b!3986709 d!1179864))

(declare-fun b!3987178 () Bool)

(declare-fun res!1617402 () Bool)

(declare-fun e!2471477 () Bool)

(assert (=> b!3987178 (=> (not res!1617402) (not e!2471477))))

(declare-fun lt!1404119 () List!42771)

(assert (=> b!3987178 (= res!1617402 (= (size!31897 lt!1404119) (+ (size!31897 lt!1403864) (size!31897 suffix!1299))))))

(declare-fun d!1179868 () Bool)

(assert (=> d!1179868 e!2471477))

(declare-fun res!1617401 () Bool)

(assert (=> d!1179868 (=> (not res!1617401) (not e!2471477))))

(assert (=> d!1179868 (= res!1617401 (= (content!6462 lt!1404119) ((_ map or) (content!6462 lt!1403864) (content!6462 suffix!1299))))))

(declare-fun e!2471478 () List!42771)

(assert (=> d!1179868 (= lt!1404119 e!2471478)))

(declare-fun c!690255 () Bool)

(assert (=> d!1179868 (= c!690255 ((_ is Nil!42647) lt!1403864))))

(assert (=> d!1179868 (= (++!11148 lt!1403864 suffix!1299) lt!1404119)))

(declare-fun b!3987177 () Bool)

(assert (=> b!3987177 (= e!2471478 (Cons!42647 (h!48067 lt!1403864) (++!11148 (t!331570 lt!1403864) suffix!1299)))))

(declare-fun b!3987176 () Bool)

(assert (=> b!3987176 (= e!2471478 suffix!1299)))

(declare-fun b!3987179 () Bool)

(assert (=> b!3987179 (= e!2471477 (or (not (= suffix!1299 Nil!42647)) (= lt!1404119 lt!1403864)))))

(assert (= (and d!1179868 c!690255) b!3987176))

(assert (= (and d!1179868 (not c!690255)) b!3987177))

(assert (= (and d!1179868 res!1617401) b!3987178))

(assert (= (and b!3987178 res!1617402) b!3987179))

(declare-fun m!4564009 () Bool)

(assert (=> b!3987178 m!4564009))

(assert (=> b!3987178 m!4563909))

(assert (=> b!3987178 m!4563245))

(declare-fun m!4564011 () Bool)

(assert (=> d!1179868 m!4564011))

(assert (=> d!1179868 m!4563913))

(assert (=> d!1179868 m!4564005))

(declare-fun m!4564013 () Bool)

(assert (=> b!3987177 m!4564013))

(assert (=> b!3986709 d!1179868))

(declare-fun d!1179870 () Bool)

(assert (=> d!1179870 (= (++!11148 (++!11148 lt!1403906 lt!1403864) suffix!1299) (++!11148 lt!1403906 (++!11148 lt!1403864 suffix!1299)))))

(declare-fun lt!1404120 () Unit!61356)

(assert (=> d!1179870 (= lt!1404120 (choose!23936 lt!1403906 lt!1403864 suffix!1299))))

(assert (=> d!1179870 (= (lemmaConcatAssociativity!2468 lt!1403906 lt!1403864 suffix!1299) lt!1404120)))

(declare-fun bs!588200 () Bool)

(assert (= bs!588200 d!1179870))

(declare-fun m!4564015 () Bool)

(assert (=> bs!588200 m!4564015))

(assert (=> bs!588200 m!4563227))

(assert (=> bs!588200 m!4563227))

(declare-fun m!4564017 () Bool)

(assert (=> bs!588200 m!4564017))

(assert (=> bs!588200 m!4563113))

(assert (=> bs!588200 m!4563113))

(declare-fun m!4564019 () Bool)

(assert (=> bs!588200 m!4564019))

(assert (=> b!3986709 d!1179870))

(declare-fun b!3987183 () Bool)

(declare-fun e!2471479 () Bool)

(assert (=> b!3987183 (= e!2471479 (>= (size!31897 lt!1403908) (size!31897 lt!1403868)))))

(declare-fun b!3987181 () Bool)

(declare-fun res!1617404 () Bool)

(declare-fun e!2471481 () Bool)

(assert (=> b!3987181 (=> (not res!1617404) (not e!2471481))))

(assert (=> b!3987181 (= res!1617404 (= (head!8484 lt!1403868) (head!8484 lt!1403908)))))

(declare-fun b!3987182 () Bool)

(assert (=> b!3987182 (= e!2471481 (isPrefix!3833 (tail!6216 lt!1403868) (tail!6216 lt!1403908)))))

(declare-fun b!3987180 () Bool)

(declare-fun e!2471480 () Bool)

(assert (=> b!3987180 (= e!2471480 e!2471481)))

(declare-fun res!1617403 () Bool)

(assert (=> b!3987180 (=> (not res!1617403) (not e!2471481))))

(assert (=> b!3987180 (= res!1617403 (not ((_ is Nil!42647) lt!1403908)))))

(declare-fun d!1179872 () Bool)

(assert (=> d!1179872 e!2471479))

(declare-fun res!1617406 () Bool)

(assert (=> d!1179872 (=> res!1617406 e!2471479)))

(declare-fun lt!1404121 () Bool)

(assert (=> d!1179872 (= res!1617406 (not lt!1404121))))

(assert (=> d!1179872 (= lt!1404121 e!2471480)))

(declare-fun res!1617405 () Bool)

(assert (=> d!1179872 (=> res!1617405 e!2471480)))

(assert (=> d!1179872 (= res!1617405 ((_ is Nil!42647) lt!1403868))))

(assert (=> d!1179872 (= (isPrefix!3833 lt!1403868 lt!1403908) lt!1404121)))

(assert (= (and d!1179872 (not res!1617405)) b!3987180))

(assert (= (and b!3987180 res!1617403) b!3987181))

(assert (= (and b!3987181 res!1617404) b!3987182))

(assert (= (and d!1179872 (not res!1617406)) b!3987183))

(assert (=> b!3987183 m!4563389))

(assert (=> b!3987183 m!4563165))

(assert (=> b!3987181 m!4563339))

(assert (=> b!3987181 m!4563395))

(assert (=> b!3987182 m!4563341))

(assert (=> b!3987182 m!4563391))

(assert (=> b!3987182 m!4563341))

(assert (=> b!3987182 m!4563391))

(declare-fun m!4564021 () Bool)

(assert (=> b!3987182 m!4564021))

(assert (=> b!3986688 d!1179872))

(declare-fun b!3987187 () Bool)

(declare-fun e!2471482 () Bool)

(assert (=> b!3987187 (= e!2471482 (>= (size!31897 lt!1403913) (size!31897 lt!1403868)))))

(declare-fun b!3987185 () Bool)

(declare-fun res!1617408 () Bool)

(declare-fun e!2471484 () Bool)

(assert (=> b!3987185 (=> (not res!1617408) (not e!2471484))))

(assert (=> b!3987185 (= res!1617408 (= (head!8484 lt!1403868) (head!8484 lt!1403913)))))

(declare-fun b!3987186 () Bool)

(assert (=> b!3987186 (= e!2471484 (isPrefix!3833 (tail!6216 lt!1403868) (tail!6216 lt!1403913)))))

(declare-fun b!3987184 () Bool)

(declare-fun e!2471483 () Bool)

(assert (=> b!3987184 (= e!2471483 e!2471484)))

(declare-fun res!1617407 () Bool)

(assert (=> b!3987184 (=> (not res!1617407) (not e!2471484))))

(assert (=> b!3987184 (= res!1617407 (not ((_ is Nil!42647) lt!1403913)))))

(declare-fun d!1179874 () Bool)

(assert (=> d!1179874 e!2471482))

(declare-fun res!1617410 () Bool)

(assert (=> d!1179874 (=> res!1617410 e!2471482)))

(declare-fun lt!1404122 () Bool)

(assert (=> d!1179874 (= res!1617410 (not lt!1404122))))

(assert (=> d!1179874 (= lt!1404122 e!2471483)))

(declare-fun res!1617409 () Bool)

(assert (=> d!1179874 (=> res!1617409 e!2471483)))

(assert (=> d!1179874 (= res!1617409 ((_ is Nil!42647) lt!1403868))))

(assert (=> d!1179874 (= (isPrefix!3833 lt!1403868 lt!1403913) lt!1404122)))

(assert (= (and d!1179874 (not res!1617409)) b!3987184))

(assert (= (and b!3987184 res!1617407) b!3987185))

(assert (= (and b!3987185 res!1617408) b!3987186))

(assert (= (and d!1179874 (not res!1617410)) b!3987187))

(declare-fun m!4564023 () Bool)

(assert (=> b!3987187 m!4564023))

(assert (=> b!3987187 m!4563165))

(assert (=> b!3987185 m!4563339))

(declare-fun m!4564025 () Bool)

(assert (=> b!3987185 m!4564025))

(assert (=> b!3987186 m!4563341))

(declare-fun m!4564027 () Bool)

(assert (=> b!3987186 m!4564027))

(assert (=> b!3987186 m!4563341))

(assert (=> b!3987186 m!4564027))

(declare-fun m!4564029 () Bool)

(assert (=> b!3987186 m!4564029))

(assert (=> b!3986688 d!1179874))

(declare-fun d!1179876 () Bool)

(assert (=> d!1179876 (isPrefix!3833 lt!1403868 (++!11148 lt!1403884 lt!1403872))))

(declare-fun lt!1404123 () Unit!61356)

(assert (=> d!1179876 (= lt!1404123 (choose!23934 lt!1403868 lt!1403884 lt!1403872))))

(assert (=> d!1179876 (isPrefix!3833 lt!1403868 lt!1403884)))

(assert (=> d!1179876 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!666 lt!1403868 lt!1403884 lt!1403872) lt!1404123)))

(declare-fun bs!588201 () Bool)

(assert (= bs!588201 d!1179876))

(assert (=> bs!588201 m!4563221))

(assert (=> bs!588201 m!4563221))

(declare-fun m!4564031 () Bool)

(assert (=> bs!588201 m!4564031))

(declare-fun m!4564033 () Bool)

(assert (=> bs!588201 m!4564033))

(assert (=> bs!588201 m!4563107))

(assert (=> b!3986688 d!1179876))

(declare-fun d!1179878 () Bool)

(assert (=> d!1179878 (= (isEmpty!25486 rules!2999) ((_ is Nil!42648) rules!2999))))

(assert (=> b!3986708 d!1179878))

(declare-fun b!3987268 () Bool)

(declare-fun res!1617475 () Bool)

(declare-fun e!2471529 () Bool)

(assert (=> b!3987268 (=> (not res!1617475) (not e!2471529))))

(declare-fun lt!1404169 () Option!9160)

(assert (=> b!3987268 (= res!1617475 (= (value!212895 (_1!24060 (get!14033 lt!1404169))) (apply!9957 (transformation!6746 (rule!9758 (_1!24060 (get!14033 lt!1404169)))) (seqFromList!4985 (originalCharacters!7346 (_1!24060 (get!14033 lt!1404169)))))))))

(declare-fun b!3987269 () Bool)

(declare-fun res!1617473 () Bool)

(assert (=> b!3987269 (=> (not res!1617473) (not e!2471529))))

(assert (=> b!3987269 (= res!1617473 (= (list!15830 (charsOf!4562 (_1!24060 (get!14033 lt!1404169)))) (originalCharacters!7346 (_1!24060 (get!14033 lt!1404169)))))))

(declare-fun d!1179880 () Bool)

(declare-fun e!2471530 () Bool)

(assert (=> d!1179880 e!2471530))

(declare-fun res!1617472 () Bool)

(assert (=> d!1179880 (=> res!1617472 e!2471530)))

(assert (=> d!1179880 (= res!1617472 (isEmpty!25489 lt!1404169))))

(declare-fun e!2471528 () Option!9160)

(assert (=> d!1179880 (= lt!1404169 e!2471528)))

(declare-fun c!690266 () Bool)

(assert (=> d!1179880 (= c!690266 (and ((_ is Cons!42648) rules!2999) ((_ is Nil!42648) (t!331571 rules!2999))))))

(declare-fun lt!1404168 () Unit!61356)

(declare-fun lt!1404170 () Unit!61356)

(assert (=> d!1179880 (= lt!1404168 lt!1404170)))

(assert (=> d!1179880 (isPrefix!3833 lt!1403884 lt!1403884)))

(assert (=> d!1179880 (= lt!1404170 (lemmaIsPrefixRefl!2425 lt!1403884 lt!1403884))))

(declare-fun rulesValidInductive!2449 (LexerInterface!6335 List!42772) Bool)

(assert (=> d!1179880 (rulesValidInductive!2449 thiss!21717 rules!2999)))

(assert (=> d!1179880 (= (maxPrefix!3633 thiss!21717 rules!2999 lt!1403884) lt!1404169)))

(declare-fun b!3987270 () Bool)

(declare-fun res!1617470 () Bool)

(assert (=> b!3987270 (=> (not res!1617470) (not e!2471529))))

(assert (=> b!3987270 (= res!1617470 (< (size!31897 (_2!24060 (get!14033 lt!1404169))) (size!31897 lt!1403884)))))

(declare-fun b!3987271 () Bool)

(declare-fun res!1617471 () Bool)

(assert (=> b!3987271 (=> (not res!1617471) (not e!2471529))))

(assert (=> b!3987271 (= res!1617471 (= (++!11148 (list!15830 (charsOf!4562 (_1!24060 (get!14033 lt!1404169)))) (_2!24060 (get!14033 lt!1404169))) lt!1403884))))

(declare-fun bm!285777 () Bool)

(declare-fun call!285782 () Option!9160)

(assert (=> bm!285777 (= call!285782 (maxPrefixOneRule!2667 thiss!21717 (h!48068 rules!2999) lt!1403884))))

(declare-fun b!3987272 () Bool)

(assert (=> b!3987272 (= e!2471530 e!2471529)))

(declare-fun res!1617474 () Bool)

(assert (=> b!3987272 (=> (not res!1617474) (not e!2471529))))

(declare-fun isDefined!7036 (Option!9160) Bool)

(assert (=> b!3987272 (= res!1617474 (isDefined!7036 lt!1404169))))

(declare-fun b!3987273 () Bool)

(assert (=> b!3987273 (= e!2471529 (contains!8487 rules!2999 (rule!9758 (_1!24060 (get!14033 lt!1404169)))))))

(declare-fun b!3987274 () Bool)

(declare-fun res!1617476 () Bool)

(assert (=> b!3987274 (=> (not res!1617476) (not e!2471529))))

(assert (=> b!3987274 (= res!1617476 (matchR!5628 (regex!6746 (rule!9758 (_1!24060 (get!14033 lt!1404169)))) (list!15830 (charsOf!4562 (_1!24060 (get!14033 lt!1404169))))))))

(declare-fun b!3987275 () Bool)

(assert (=> b!3987275 (= e!2471528 call!285782)))

(declare-fun b!3987276 () Bool)

(declare-fun lt!1404172 () Option!9160)

(declare-fun lt!1404171 () Option!9160)

(assert (=> b!3987276 (= e!2471528 (ite (and ((_ is None!9159) lt!1404172) ((_ is None!9159) lt!1404171)) None!9159 (ite ((_ is None!9159) lt!1404171) lt!1404172 (ite ((_ is None!9159) lt!1404172) lt!1404171 (ite (>= (size!31896 (_1!24060 (v!39511 lt!1404172))) (size!31896 (_1!24060 (v!39511 lt!1404171)))) lt!1404172 lt!1404171)))))))

(assert (=> b!3987276 (= lt!1404172 call!285782)))

(assert (=> b!3987276 (= lt!1404171 (maxPrefix!3633 thiss!21717 (t!331571 rules!2999) lt!1403884))))

(assert (= (and d!1179880 c!690266) b!3987275))

(assert (= (and d!1179880 (not c!690266)) b!3987276))

(assert (= (or b!3987275 b!3987276) bm!285777))

(assert (= (and d!1179880 (not res!1617472)) b!3987272))

(assert (= (and b!3987272 res!1617474) b!3987269))

(assert (= (and b!3987269 res!1617473) b!3987270))

(assert (= (and b!3987270 res!1617470) b!3987271))

(assert (= (and b!3987271 res!1617471) b!3987268))

(assert (= (and b!3987268 res!1617475) b!3987274))

(assert (= (and b!3987274 res!1617476) b!3987273))

(declare-fun m!4564233 () Bool)

(assert (=> d!1179880 m!4564233))

(declare-fun m!4564235 () Bool)

(assert (=> d!1179880 m!4564235))

(declare-fun m!4564237 () Bool)

(assert (=> d!1179880 m!4564237))

(declare-fun m!4564239 () Bool)

(assert (=> d!1179880 m!4564239))

(declare-fun m!4564241 () Bool)

(assert (=> b!3987269 m!4564241))

(declare-fun m!4564243 () Bool)

(assert (=> b!3987269 m!4564243))

(assert (=> b!3987269 m!4564243))

(declare-fun m!4564245 () Bool)

(assert (=> b!3987269 m!4564245))

(declare-fun m!4564247 () Bool)

(assert (=> b!3987276 m!4564247))

(assert (=> b!3987270 m!4564241))

(declare-fun m!4564249 () Bool)

(assert (=> b!3987270 m!4564249))

(assert (=> b!3987270 m!4563303))

(declare-fun m!4564251 () Bool)

(assert (=> b!3987272 m!4564251))

(assert (=> b!3987268 m!4564241))

(declare-fun m!4564253 () Bool)

(assert (=> b!3987268 m!4564253))

(assert (=> b!3987268 m!4564253))

(declare-fun m!4564255 () Bool)

(assert (=> b!3987268 m!4564255))

(assert (=> b!3987274 m!4564241))

(assert (=> b!3987274 m!4564243))

(assert (=> b!3987274 m!4564243))

(assert (=> b!3987274 m!4564245))

(assert (=> b!3987274 m!4564245))

(declare-fun m!4564257 () Bool)

(assert (=> b!3987274 m!4564257))

(assert (=> b!3987273 m!4564241))

(declare-fun m!4564259 () Bool)

(assert (=> b!3987273 m!4564259))

(assert (=> b!3987271 m!4564241))

(assert (=> b!3987271 m!4564243))

(assert (=> b!3987271 m!4564243))

(assert (=> b!3987271 m!4564245))

(assert (=> b!3987271 m!4564245))

(declare-fun m!4564261 () Bool)

(assert (=> b!3987271 m!4564261))

(declare-fun m!4564263 () Bool)

(assert (=> bm!285777 m!4564263))

(assert (=> b!3986690 d!1179880))

(declare-fun d!1179940 () Bool)

(assert (=> d!1179940 (= suffixResult!105 lt!1403919)))

(declare-fun lt!1404179 () Unit!61356)

(assert (=> d!1179940 (= lt!1404179 (choose!23941 lt!1403906 suffixResult!105 lt!1403906 lt!1403919 lt!1403908))))

(assert (=> d!1179940 (isPrefix!3833 lt!1403906 lt!1403908)))

(assert (=> d!1179940 (= (lemmaSamePrefixThenSameSuffix!2020 lt!1403906 suffixResult!105 lt!1403906 lt!1403919 lt!1403908) lt!1404179)))

(declare-fun bs!588212 () Bool)

(assert (= bs!588212 d!1179940))

(declare-fun m!4564267 () Bool)

(assert (=> bs!588212 m!4564267))

(assert (=> bs!588212 m!4563131))

(assert (=> b!3986690 d!1179940))

(declare-fun b!3987294 () Bool)

(declare-fun e!2471540 () Bool)

(assert (=> b!3987294 (= e!2471540 (>= (size!31897 lt!1403907) (size!31897 lt!1403906)))))

(declare-fun b!3987292 () Bool)

(declare-fun res!1617488 () Bool)

(declare-fun e!2471542 () Bool)

(assert (=> b!3987292 (=> (not res!1617488) (not e!2471542))))

(assert (=> b!3987292 (= res!1617488 (= (head!8484 lt!1403906) (head!8484 lt!1403907)))))

(declare-fun b!3987293 () Bool)

(assert (=> b!3987293 (= e!2471542 (isPrefix!3833 (tail!6216 lt!1403906) (tail!6216 lt!1403907)))))

(declare-fun b!3987291 () Bool)

(declare-fun e!2471541 () Bool)

(assert (=> b!3987291 (= e!2471541 e!2471542)))

(declare-fun res!1617487 () Bool)

(assert (=> b!3987291 (=> (not res!1617487) (not e!2471542))))

(assert (=> b!3987291 (= res!1617487 (not ((_ is Nil!42647) lt!1403907)))))

(declare-fun d!1179944 () Bool)

(assert (=> d!1179944 e!2471540))

(declare-fun res!1617490 () Bool)

(assert (=> d!1179944 (=> res!1617490 e!2471540)))

(declare-fun lt!1404181 () Bool)

(assert (=> d!1179944 (= res!1617490 (not lt!1404181))))

(assert (=> d!1179944 (= lt!1404181 e!2471541)))

(declare-fun res!1617489 () Bool)

(assert (=> d!1179944 (=> res!1617489 e!2471541)))

(assert (=> d!1179944 (= res!1617489 ((_ is Nil!42647) lt!1403906))))

(assert (=> d!1179944 (= (isPrefix!3833 lt!1403906 lt!1403907) lt!1404181)))

(assert (= (and d!1179944 (not res!1617489)) b!3987291))

(assert (= (and b!3987291 res!1617487) b!3987292))

(assert (= (and b!3987292 res!1617488) b!3987293))

(assert (= (and d!1179944 (not res!1617490)) b!3987294))

(declare-fun m!4564271 () Bool)

(assert (=> b!3987294 m!4564271))

(assert (=> b!3987294 m!4563203))

(assert (=> b!3987292 m!4563291))

(declare-fun m!4564273 () Bool)

(assert (=> b!3987292 m!4564273))

(assert (=> b!3987293 m!4563293))

(declare-fun m!4564275 () Bool)

(assert (=> b!3987293 m!4564275))

(assert (=> b!3987293 m!4563293))

(assert (=> b!3987293 m!4564275))

(declare-fun m!4564277 () Bool)

(assert (=> b!3987293 m!4564277))

(assert (=> b!3986690 d!1179944))

(declare-fun d!1179948 () Bool)

(assert (=> d!1179948 (isPrefix!3833 lt!1403906 (++!11148 lt!1403906 lt!1403919))))

(declare-fun lt!1404182 () Unit!61356)

(assert (=> d!1179948 (= lt!1404182 (choose!23940 lt!1403906 lt!1403919))))

(assert (=> d!1179948 (= (lemmaConcatTwoListThenFirstIsPrefix!2676 lt!1403906 lt!1403919) lt!1404182)))

(declare-fun bs!588213 () Bool)

(assert (= bs!588213 d!1179948))

(assert (=> bs!588213 m!4563091))

(assert (=> bs!588213 m!4563091))

(declare-fun m!4564279 () Bool)

(assert (=> bs!588213 m!4564279))

(declare-fun m!4564281 () Bool)

(assert (=> bs!588213 m!4564281))

(assert (=> b!3986690 d!1179948))

(declare-fun b!3987324 () Bool)

(declare-fun e!2471560 () Bool)

(declare-fun inv!16 (TokenValue!6976) Bool)

(assert (=> b!3987324 (= e!2471560 (inv!16 (value!212895 token!484)))))

(declare-fun b!3987325 () Bool)

(declare-fun e!2471562 () Bool)

(declare-fun inv!17 (TokenValue!6976) Bool)

(assert (=> b!3987325 (= e!2471562 (inv!17 (value!212895 token!484)))))

(declare-fun b!3987326 () Bool)

(declare-fun res!1617498 () Bool)

(declare-fun e!2471561 () Bool)

(assert (=> b!3987326 (=> res!1617498 e!2471561)))

(assert (=> b!3987326 (= res!1617498 (not ((_ is IntegerValue!20930) (value!212895 token!484))))))

(assert (=> b!3987326 (= e!2471562 e!2471561)))

(declare-fun d!1179950 () Bool)

(declare-fun c!690280 () Bool)

(assert (=> d!1179950 (= c!690280 ((_ is IntegerValue!20928) (value!212895 token!484)))))

(assert (=> d!1179950 (= (inv!21 (value!212895 token!484)) e!2471560)))

(declare-fun b!3987327 () Bool)

(assert (=> b!3987327 (= e!2471560 e!2471562)))

(declare-fun c!690281 () Bool)

(assert (=> b!3987327 (= c!690281 ((_ is IntegerValue!20929) (value!212895 token!484)))))

(declare-fun b!3987328 () Bool)

(declare-fun inv!15 (TokenValue!6976) Bool)

(assert (=> b!3987328 (= e!2471561 (inv!15 (value!212895 token!484)))))

(assert (= (and d!1179950 c!690280) b!3987324))

(assert (= (and d!1179950 (not c!690280)) b!3987327))

(assert (= (and b!3987327 c!690281) b!3987325))

(assert (= (and b!3987327 (not c!690281)) b!3987326))

(assert (= (and b!3987326 (not res!1617498)) b!3987328))

(declare-fun m!4564289 () Bool)

(assert (=> b!3987324 m!4564289))

(declare-fun m!4564293 () Bool)

(assert (=> b!3987325 m!4564293))

(declare-fun m!4564297 () Bool)

(assert (=> b!3987328 m!4564297))

(assert (=> b!3986712 d!1179950))

(declare-fun d!1179954 () Bool)

(assert (=> d!1179954 (isPrefix!3833 lt!1403906 (++!11148 lt!1403906 suffixResult!105))))

(declare-fun lt!1404184 () Unit!61356)

(assert (=> d!1179954 (= lt!1404184 (choose!23940 lt!1403906 suffixResult!105))))

(assert (=> d!1179954 (= (lemmaConcatTwoListThenFirstIsPrefix!2676 lt!1403906 suffixResult!105) lt!1404184)))

(declare-fun bs!588214 () Bool)

(assert (= bs!588214 d!1179954))

(assert (=> bs!588214 m!4563137))

(assert (=> bs!588214 m!4563137))

(declare-fun m!4564305 () Bool)

(assert (=> bs!588214 m!4564305))

(declare-fun m!4564307 () Bool)

(assert (=> bs!588214 m!4564307))

(assert (=> b!3986710 d!1179954))

(declare-fun b!3987336 () Bool)

(declare-fun e!2471565 () Bool)

(assert (=> b!3987336 (= e!2471565 (>= (size!31897 lt!1403866) (size!31897 lt!1403906)))))

(declare-fun b!3987334 () Bool)

(declare-fun res!1617502 () Bool)

(declare-fun e!2471567 () Bool)

(assert (=> b!3987334 (=> (not res!1617502) (not e!2471567))))

(assert (=> b!3987334 (= res!1617502 (= (head!8484 lt!1403906) (head!8484 lt!1403866)))))

(declare-fun b!3987335 () Bool)

(assert (=> b!3987335 (= e!2471567 (isPrefix!3833 (tail!6216 lt!1403906) (tail!6216 lt!1403866)))))

(declare-fun b!3987333 () Bool)

(declare-fun e!2471566 () Bool)

(assert (=> b!3987333 (= e!2471566 e!2471567)))

(declare-fun res!1617501 () Bool)

(assert (=> b!3987333 (=> (not res!1617501) (not e!2471567))))

(assert (=> b!3987333 (= res!1617501 (not ((_ is Nil!42647) lt!1403866)))))

(declare-fun d!1179958 () Bool)

(assert (=> d!1179958 e!2471565))

(declare-fun res!1617504 () Bool)

(assert (=> d!1179958 (=> res!1617504 e!2471565)))

(declare-fun lt!1404186 () Bool)

(assert (=> d!1179958 (= res!1617504 (not lt!1404186))))

(assert (=> d!1179958 (= lt!1404186 e!2471566)))

(declare-fun res!1617503 () Bool)

(assert (=> d!1179958 (=> res!1617503 e!2471566)))

(assert (=> d!1179958 (= res!1617503 ((_ is Nil!42647) lt!1403906))))

(assert (=> d!1179958 (= (isPrefix!3833 lt!1403906 lt!1403866) lt!1404186)))

(assert (= (and d!1179958 (not res!1617503)) b!3987333))

(assert (= (and b!3987333 res!1617501) b!3987334))

(assert (= (and b!3987334 res!1617502) b!3987335))

(assert (= (and d!1179958 (not res!1617504)) b!3987336))

(declare-fun m!4564317 () Bool)

(assert (=> b!3987336 m!4564317))

(assert (=> b!3987336 m!4563203))

(assert (=> b!3987334 m!4563291))

(declare-fun m!4564319 () Bool)

(assert (=> b!3987334 m!4564319))

(assert (=> b!3987335 m!4563293))

(declare-fun m!4564321 () Bool)

(assert (=> b!3987335 m!4564321))

(assert (=> b!3987335 m!4563293))

(assert (=> b!3987335 m!4564321))

(declare-fun m!4564323 () Bool)

(assert (=> b!3987335 m!4564323))

(assert (=> b!3986710 d!1179958))

(declare-fun b!3987340 () Bool)

(declare-fun e!2471568 () Bool)

(assert (=> b!3987340 (= e!2471568 (>= (size!31897 lt!1403908) (size!31897 prefix!494)))))

(declare-fun b!3987338 () Bool)

(declare-fun res!1617506 () Bool)

(declare-fun e!2471570 () Bool)

(assert (=> b!3987338 (=> (not res!1617506) (not e!2471570))))

(assert (=> b!3987338 (= res!1617506 (= (head!8484 prefix!494) (head!8484 lt!1403908)))))

(declare-fun b!3987339 () Bool)

(assert (=> b!3987339 (= e!2471570 (isPrefix!3833 (tail!6216 prefix!494) (tail!6216 lt!1403908)))))

(declare-fun b!3987337 () Bool)

(declare-fun e!2471569 () Bool)

(assert (=> b!3987337 (= e!2471569 e!2471570)))

(declare-fun res!1617505 () Bool)

(assert (=> b!3987337 (=> (not res!1617505) (not e!2471570))))

(assert (=> b!3987337 (= res!1617505 (not ((_ is Nil!42647) lt!1403908)))))

(declare-fun d!1179962 () Bool)

(assert (=> d!1179962 e!2471568))

(declare-fun res!1617508 () Bool)

(assert (=> d!1179962 (=> res!1617508 e!2471568)))

(declare-fun lt!1404188 () Bool)

(assert (=> d!1179962 (= res!1617508 (not lt!1404188))))

(assert (=> d!1179962 (= lt!1404188 e!2471569)))

(declare-fun res!1617507 () Bool)

(assert (=> d!1179962 (=> res!1617507 e!2471569)))

(assert (=> d!1179962 (= res!1617507 ((_ is Nil!42647) prefix!494))))

(assert (=> d!1179962 (= (isPrefix!3833 prefix!494 lt!1403908) lt!1404188)))

(assert (= (and d!1179962 (not res!1617507)) b!3987337))

(assert (= (and b!3987337 res!1617505) b!3987338))

(assert (= (and b!3987338 res!1617506) b!3987339))

(assert (= (and d!1179962 (not res!1617508)) b!3987340))

(assert (=> b!3987340 m!4563389))

(assert (=> b!3987340 m!4563205))

(assert (=> b!3987338 m!4563931))

(assert (=> b!3987338 m!4563395))

(assert (=> b!3987339 m!4563925))

(assert (=> b!3987339 m!4563391))

(assert (=> b!3987339 m!4563925))

(assert (=> b!3987339 m!4563391))

(declare-fun m!4564331 () Bool)

(assert (=> b!3987339 m!4564331))

(assert (=> b!3986710 d!1179962))

(declare-fun d!1179966 () Bool)

(assert (=> d!1179966 (isPrefix!3833 prefix!494 (++!11148 prefix!494 suffix!1299))))

(declare-fun lt!1404189 () Unit!61356)

(assert (=> d!1179966 (= lt!1404189 (choose!23940 prefix!494 suffix!1299))))

(assert (=> d!1179966 (= (lemmaConcatTwoListThenFirstIsPrefix!2676 prefix!494 suffix!1299) lt!1404189)))

(declare-fun bs!588216 () Bool)

(assert (= bs!588216 d!1179966))

(assert (=> bs!588216 m!4563183))

(assert (=> bs!588216 m!4563183))

(declare-fun m!4564333 () Bool)

(assert (=> bs!588216 m!4564333))

(declare-fun m!4564335 () Bool)

(assert (=> bs!588216 m!4564335))

(assert (=> b!3986710 d!1179966))

(declare-fun b!3987344 () Bool)

(declare-fun e!2471571 () Bool)

(assert (=> b!3987344 (= e!2471571 (>= (size!31897 lt!1403908) (size!31897 lt!1403906)))))

(declare-fun b!3987342 () Bool)

(declare-fun res!1617510 () Bool)

(declare-fun e!2471573 () Bool)

(assert (=> b!3987342 (=> (not res!1617510) (not e!2471573))))

(assert (=> b!3987342 (= res!1617510 (= (head!8484 lt!1403906) (head!8484 lt!1403908)))))

(declare-fun b!3987343 () Bool)

(assert (=> b!3987343 (= e!2471573 (isPrefix!3833 (tail!6216 lt!1403906) (tail!6216 lt!1403908)))))

(declare-fun b!3987341 () Bool)

(declare-fun e!2471572 () Bool)

(assert (=> b!3987341 (= e!2471572 e!2471573)))

(declare-fun res!1617509 () Bool)

(assert (=> b!3987341 (=> (not res!1617509) (not e!2471573))))

(assert (=> b!3987341 (= res!1617509 (not ((_ is Nil!42647) lt!1403908)))))

(declare-fun d!1179968 () Bool)

(assert (=> d!1179968 e!2471571))

(declare-fun res!1617512 () Bool)

(assert (=> d!1179968 (=> res!1617512 e!2471571)))

(declare-fun lt!1404190 () Bool)

(assert (=> d!1179968 (= res!1617512 (not lt!1404190))))

(assert (=> d!1179968 (= lt!1404190 e!2471572)))

(declare-fun res!1617511 () Bool)

(assert (=> d!1179968 (=> res!1617511 e!2471572)))

(assert (=> d!1179968 (= res!1617511 ((_ is Nil!42647) lt!1403906))))

(assert (=> d!1179968 (= (isPrefix!3833 lt!1403906 lt!1403908) lt!1404190)))

(assert (= (and d!1179968 (not res!1617511)) b!3987341))

(assert (= (and b!3987341 res!1617509) b!3987342))

(assert (= (and b!3987342 res!1617510) b!3987343))

(assert (= (and d!1179968 (not res!1617512)) b!3987344))

(assert (=> b!3987344 m!4563389))

(assert (=> b!3987344 m!4563203))

(assert (=> b!3987342 m!4563291))

(assert (=> b!3987342 m!4563395))

(assert (=> b!3987343 m!4563293))

(assert (=> b!3987343 m!4563391))

(assert (=> b!3987343 m!4563293))

(assert (=> b!3987343 m!4563391))

(declare-fun m!4564337 () Bool)

(assert (=> b!3987343 m!4564337))

(assert (=> b!3986710 d!1179968))

(declare-fun d!1179970 () Bool)

(assert (=> d!1179970 (not (matchR!5628 (regex!6746 (rule!9758 (_1!24060 (v!39511 lt!1403890)))) lt!1403868))))

(declare-fun lt!1404191 () Unit!61356)

(assert (=> d!1179970 (= lt!1404191 (choose!23942 thiss!21717 rules!2999 (rule!9758 token!484) lt!1403906 lt!1403908 lt!1403868 (rule!9758 (_1!24060 (v!39511 lt!1403890)))))))

(assert (=> d!1179970 (isPrefix!3833 lt!1403906 lt!1403908)))

(assert (=> d!1179970 (= (lemmaMaxPrefixOutputsMaxPrefix!400 thiss!21717 rules!2999 (rule!9758 token!484) lt!1403906 lt!1403908 lt!1403868 (rule!9758 (_1!24060 (v!39511 lt!1403890)))) lt!1404191)))

(declare-fun bs!588217 () Bool)

(assert (= bs!588217 d!1179970))

(assert (=> bs!588217 m!4563243))

(declare-fun m!4564339 () Bool)

(assert (=> bs!588217 m!4564339))

(assert (=> bs!588217 m!4563131))

(assert (=> b!3986693 d!1179970))

(declare-fun b!3987347 () Bool)

(declare-fun res!1617523 () Bool)

(declare-fun e!2471581 () Bool)

(assert (=> b!3987347 (=> (not res!1617523) (not e!2471581))))

(assert (=> b!3987347 (= res!1617523 (isEmpty!25487 (tail!6216 lt!1403868)))))

(declare-fun b!3987350 () Bool)

(declare-fun res!1617513 () Bool)

(declare-fun e!2471574 () Bool)

(assert (=> b!3987350 (=> res!1617513 e!2471574)))

(assert (=> b!3987350 (= res!1617513 e!2471581)))

(declare-fun res!1617515 () Bool)

(assert (=> b!3987350 (=> (not res!1617515) (not e!2471581))))

(declare-fun lt!1404192 () Bool)

(assert (=> b!3987350 (= res!1617515 lt!1404192)))

(declare-fun b!3987351 () Bool)

(declare-fun e!2471577 () Bool)

(declare-fun e!2471578 () Bool)

(assert (=> b!3987351 (= e!2471577 e!2471578)))

(declare-fun c!690285 () Bool)

(assert (=> b!3987351 (= c!690285 ((_ is EmptyLang!11651) (regex!6746 (rule!9758 (_1!24060 (v!39511 lt!1403890))))))))

(declare-fun b!3987352 () Bool)

(declare-fun e!2471582 () Bool)

(declare-fun e!2471579 () Bool)

(assert (=> b!3987352 (= e!2471582 e!2471579)))

(declare-fun res!1617521 () Bool)

(assert (=> b!3987352 (=> res!1617521 e!2471579)))

(declare-fun call!285783 () Bool)

(assert (=> b!3987352 (= res!1617521 call!285783)))

(declare-fun b!3987353 () Bool)

(declare-fun res!1617524 () Bool)

(assert (=> b!3987353 (=> res!1617524 e!2471579)))

(assert (=> b!3987353 (= res!1617524 (not (isEmpty!25487 (tail!6216 lt!1403868))))))

(declare-fun b!3987354 () Bool)

(assert (=> b!3987354 (= e!2471577 (= lt!1404192 call!285783))))

(declare-fun d!1179972 () Bool)

(assert (=> d!1179972 e!2471577))

(declare-fun c!690284 () Bool)

(assert (=> d!1179972 (= c!690284 ((_ is EmptyExpr!11651) (regex!6746 (rule!9758 (_1!24060 (v!39511 lt!1403890))))))))

(declare-fun e!2471580 () Bool)

(assert (=> d!1179972 (= lt!1404192 e!2471580)))

(declare-fun c!690283 () Bool)

(assert (=> d!1179972 (= c!690283 (isEmpty!25487 lt!1403868))))

(assert (=> d!1179972 (validRegex!5283 (regex!6746 (rule!9758 (_1!24060 (v!39511 lt!1403890)))))))

(assert (=> d!1179972 (= (matchR!5628 (regex!6746 (rule!9758 (_1!24060 (v!39511 lt!1403890)))) lt!1403868) lt!1404192)))

(declare-fun b!3987355 () Bool)

(declare-fun res!1617514 () Bool)

(assert (=> b!3987355 (=> (not res!1617514) (not e!2471581))))

(assert (=> b!3987355 (= res!1617514 (not call!285783))))

(declare-fun b!3987356 () Bool)

(assert (=> b!3987356 (= e!2471580 (nullable!4083 (regex!6746 (rule!9758 (_1!24060 (v!39511 lt!1403890))))))))

(declare-fun b!3987357 () Bool)

(assert (=> b!3987357 (= e!2471574 e!2471582)))

(declare-fun res!1617522 () Bool)

(assert (=> b!3987357 (=> (not res!1617522) (not e!2471582))))

(assert (=> b!3987357 (= res!1617522 (not lt!1404192))))

(declare-fun bm!285778 () Bool)

(assert (=> bm!285778 (= call!285783 (isEmpty!25487 lt!1403868))))

(declare-fun b!3987358 () Bool)

(assert (=> b!3987358 (= e!2471579 (not (= (head!8484 lt!1403868) (c!690177 (regex!6746 (rule!9758 (_1!24060 (v!39511 lt!1403890))))))))))

(declare-fun b!3987359 () Bool)

(assert (=> b!3987359 (= e!2471580 (matchR!5628 (derivativeStep!3494 (regex!6746 (rule!9758 (_1!24060 (v!39511 lt!1403890)))) (head!8484 lt!1403868)) (tail!6216 lt!1403868)))))

(declare-fun b!3987360 () Bool)

(assert (=> b!3987360 (= e!2471581 (= (head!8484 lt!1403868) (c!690177 (regex!6746 (rule!9758 (_1!24060 (v!39511 lt!1403890)))))))))

(declare-fun b!3987361 () Bool)

(assert (=> b!3987361 (= e!2471578 (not lt!1404192))))

(declare-fun b!3987362 () Bool)

(declare-fun res!1617518 () Bool)

(assert (=> b!3987362 (=> res!1617518 e!2471574)))

(assert (=> b!3987362 (= res!1617518 (not ((_ is ElementMatch!11651) (regex!6746 (rule!9758 (_1!24060 (v!39511 lt!1403890)))))))))

(assert (=> b!3987362 (= e!2471578 e!2471574)))

(assert (= (and d!1179972 c!690283) b!3987356))

(assert (= (and d!1179972 (not c!690283)) b!3987359))

(assert (= (and d!1179972 c!690284) b!3987354))

(assert (= (and d!1179972 (not c!690284)) b!3987351))

(assert (= (and b!3987351 c!690285) b!3987361))

(assert (= (and b!3987351 (not c!690285)) b!3987362))

(assert (= (and b!3987362 (not res!1617518)) b!3987350))

(assert (= (and b!3987350 res!1617515) b!3987355))

(assert (= (and b!3987355 res!1617514) b!3987347))

(assert (= (and b!3987347 res!1617523) b!3987360))

(assert (= (and b!3987350 (not res!1617513)) b!3987357))

(assert (= (and b!3987357 res!1617522) b!3987352))

(assert (= (and b!3987352 (not res!1617521)) b!3987353))

(assert (= (and b!3987353 (not res!1617524)) b!3987358))

(assert (= (or b!3987354 b!3987352 b!3987355) bm!285778))

(declare-fun m!4564341 () Bool)

(assert (=> bm!285778 m!4564341))

(assert (=> b!3987356 m!4563871))

(assert (=> b!3987358 m!4563339))

(assert (=> b!3987360 m!4563339))

(assert (=> b!3987347 m!4563341))

(assert (=> b!3987347 m!4563341))

(declare-fun m!4564343 () Bool)

(assert (=> b!3987347 m!4564343))

(assert (=> d!1179972 m!4564341))

(assert (=> d!1179972 m!4563869))

(assert (=> b!3987359 m!4563339))

(assert (=> b!3987359 m!4563339))

(declare-fun m!4564345 () Bool)

(assert (=> b!3987359 m!4564345))

(assert (=> b!3987359 m!4563341))

(assert (=> b!3987359 m!4564345))

(assert (=> b!3987359 m!4563341))

(declare-fun m!4564347 () Bool)

(assert (=> b!3987359 m!4564347))

(assert (=> b!3987353 m!4563341))

(assert (=> b!3987353 m!4563341))

(assert (=> b!3987353 m!4564343))

(assert (=> b!3986693 d!1179972))

(declare-fun b!3987367 () Bool)

(declare-fun res!1617528 () Bool)

(declare-fun e!2471584 () Bool)

(assert (=> b!3987367 (=> (not res!1617528) (not e!2471584))))

(declare-fun lt!1404193 () List!42771)

(assert (=> b!3987367 (= res!1617528 (= (size!31897 lt!1404193) (+ (size!31897 newSuffix!27) (size!31897 lt!1403872))))))

(declare-fun d!1179974 () Bool)

(assert (=> d!1179974 e!2471584))

(declare-fun res!1617527 () Bool)

(assert (=> d!1179974 (=> (not res!1617527) (not e!2471584))))

(assert (=> d!1179974 (= res!1617527 (= (content!6462 lt!1404193) ((_ map or) (content!6462 newSuffix!27) (content!6462 lt!1403872))))))

(declare-fun e!2471585 () List!42771)

(assert (=> d!1179974 (= lt!1404193 e!2471585)))

(declare-fun c!690286 () Bool)

(assert (=> d!1179974 (= c!690286 ((_ is Nil!42647) newSuffix!27))))

(assert (=> d!1179974 (= (++!11148 newSuffix!27 lt!1403872) lt!1404193)))

(declare-fun b!3987366 () Bool)

(assert (=> b!3987366 (= e!2471585 (Cons!42647 (h!48067 newSuffix!27) (++!11148 (t!331570 newSuffix!27) lt!1403872)))))

(declare-fun b!3987365 () Bool)

(assert (=> b!3987365 (= e!2471585 lt!1403872)))

(declare-fun b!3987368 () Bool)

(assert (=> b!3987368 (= e!2471584 (or (not (= lt!1403872 Nil!42647)) (= lt!1404193 newSuffix!27)))))

(assert (= (and d!1179974 c!690286) b!3987365))

(assert (= (and d!1179974 (not c!690286)) b!3987366))

(assert (= (and d!1179974 res!1617527) b!3987367))

(assert (= (and b!3987367 res!1617528) b!3987368))

(declare-fun m!4564353 () Bool)

(assert (=> b!3987367 m!4564353))

(assert (=> b!3987367 m!4563247))

(assert (=> b!3987367 m!4563359))

(declare-fun m!4564355 () Bool)

(assert (=> d!1179974 m!4564355))

(assert (=> d!1179974 m!4563963))

(assert (=> d!1179974 m!4563365))

(declare-fun m!4564357 () Bool)

(assert (=> b!3987366 m!4564357))

(assert (=> b!3986691 d!1179974))

(declare-fun d!1179978 () Bool)

(declare-fun lt!1404195 () List!42771)

(assert (=> d!1179978 (= (++!11148 newSuffix!27 lt!1404195) suffix!1299)))

(declare-fun e!2471588 () List!42771)

(assert (=> d!1179978 (= lt!1404195 e!2471588)))

(declare-fun c!690288 () Bool)

(assert (=> d!1179978 (= c!690288 ((_ is Cons!42647) newSuffix!27))))

(assert (=> d!1179978 (>= (size!31897 suffix!1299) (size!31897 newSuffix!27))))

(assert (=> d!1179978 (= (getSuffix!2264 suffix!1299 newSuffix!27) lt!1404195)))

(declare-fun b!3987373 () Bool)

(assert (=> b!3987373 (= e!2471588 (getSuffix!2264 (tail!6216 suffix!1299) (t!331570 newSuffix!27)))))

(declare-fun b!3987374 () Bool)

(assert (=> b!3987374 (= e!2471588 suffix!1299)))

(assert (= (and d!1179978 c!690288) b!3987373))

(assert (= (and d!1179978 (not c!690288)) b!3987374))

(declare-fun m!4564359 () Bool)

(assert (=> d!1179978 m!4564359))

(assert (=> d!1179978 m!4563245))

(assert (=> d!1179978 m!4563247))

(assert (=> b!3987373 m!4563729))

(assert (=> b!3987373 m!4563729))

(declare-fun m!4564363 () Bool)

(assert (=> b!3987373 m!4564363))

(assert (=> b!3986691 d!1179978))

(declare-fun b!3987377 () Bool)

(declare-fun res!1617532 () Bool)

(declare-fun e!2471589 () Bool)

(assert (=> b!3987377 (=> (not res!1617532) (not e!2471589))))

(declare-fun lt!1404196 () List!42771)

(assert (=> b!3987377 (= res!1617532 (= (size!31897 lt!1404196) (+ (size!31897 lt!1403906) (size!31897 suffixResult!105))))))

(declare-fun d!1179980 () Bool)

(assert (=> d!1179980 e!2471589))

(declare-fun res!1617531 () Bool)

(assert (=> d!1179980 (=> (not res!1617531) (not e!2471589))))

(assert (=> d!1179980 (= res!1617531 (= (content!6462 lt!1404196) ((_ map or) (content!6462 lt!1403906) (content!6462 suffixResult!105))))))

(declare-fun e!2471590 () List!42771)

(assert (=> d!1179980 (= lt!1404196 e!2471590)))

(declare-fun c!690289 () Bool)

(assert (=> d!1179980 (= c!690289 ((_ is Nil!42647) lt!1403906))))

(assert (=> d!1179980 (= (++!11148 lt!1403906 suffixResult!105) lt!1404196)))

(declare-fun b!3987376 () Bool)

(assert (=> b!3987376 (= e!2471590 (Cons!42647 (h!48067 lt!1403906) (++!11148 (t!331570 lt!1403906) suffixResult!105)))))

(declare-fun b!3987375 () Bool)

(assert (=> b!3987375 (= e!2471590 suffixResult!105)))

(declare-fun b!3987378 () Bool)

(assert (=> b!3987378 (= e!2471589 (or (not (= suffixResult!105 Nil!42647)) (= lt!1404196 lt!1403906)))))

(assert (= (and d!1179980 c!690289) b!3987375))

(assert (= (and d!1179980 (not c!690289)) b!3987376))

(assert (= (and d!1179980 res!1617531) b!3987377))

(assert (= (and b!3987377 res!1617532) b!3987378))

(declare-fun m!4564375 () Bool)

(assert (=> b!3987377 m!4564375))

(assert (=> b!3987377 m!4563203))

(declare-fun m!4564379 () Bool)

(assert (=> b!3987377 m!4564379))

(declare-fun m!4564381 () Bool)

(assert (=> d!1179980 m!4564381))

(assert (=> d!1179980 m!4563381))

(declare-fun m!4564383 () Bool)

(assert (=> d!1179980 m!4564383))

(declare-fun m!4564385 () Bool)

(assert (=> b!3987376 m!4564385))

(assert (=> b!3986713 d!1179980))

(declare-fun d!1179986 () Bool)

(declare-fun e!2471593 () Bool)

(assert (=> d!1179986 e!2471593))

(declare-fun res!1617536 () Bool)

(assert (=> d!1179986 (=> (not res!1617536) (not e!2471593))))

(assert (=> d!1179986 (= res!1617536 (semiInverseModEq!2890 (toChars!9093 (transformation!6746 (rule!9758 token!484))) (toValue!9234 (transformation!6746 (rule!9758 token!484)))))))

(declare-fun Unit!61368 () Unit!61356)

(assert (=> d!1179986 (= (lemmaInv!961 (transformation!6746 (rule!9758 token!484))) Unit!61368)))

(declare-fun b!3987382 () Bool)

(assert (=> b!3987382 (= e!2471593 (equivClasses!2789 (toChars!9093 (transformation!6746 (rule!9758 token!484))) (toValue!9234 (transformation!6746 (rule!9758 token!484)))))))

(assert (= (and d!1179986 res!1617536) b!3987382))

(assert (=> d!1179986 m!4563401))

(assert (=> b!3987382 m!4563403))

(assert (=> b!3986713 d!1179986))

(declare-fun d!1179990 () Bool)

(declare-fun res!1617537 () Bool)

(declare-fun e!2471594 () Bool)

(assert (=> d!1179990 (=> (not res!1617537) (not e!2471594))))

(assert (=> d!1179990 (= res!1617537 (validRegex!5283 (regex!6746 (rule!9758 token!484))))))

(assert (=> d!1179990 (= (ruleValid!2678 thiss!21717 (rule!9758 token!484)) e!2471594)))

(declare-fun b!3987383 () Bool)

(declare-fun res!1617538 () Bool)

(assert (=> b!3987383 (=> (not res!1617538) (not e!2471594))))

(assert (=> b!3987383 (= res!1617538 (not (nullable!4083 (regex!6746 (rule!9758 token!484)))))))

(declare-fun b!3987384 () Bool)

(assert (=> b!3987384 (= e!2471594 (not (= (tag!7606 (rule!9758 token!484)) (String!48599 ""))))))

(assert (= (and d!1179990 res!1617537) b!3987383))

(assert (= (and b!3987383 res!1617538) b!3987384))

(assert (=> d!1179990 m!4563297))

(assert (=> b!3987383 m!4563289))

(assert (=> b!3986713 d!1179990))

(declare-fun d!1179994 () Bool)

(assert (=> d!1179994 (ruleValid!2678 thiss!21717 (rule!9758 token!484))))

(declare-fun lt!1404198 () Unit!61356)

(assert (=> d!1179994 (= lt!1404198 (choose!23947 thiss!21717 (rule!9758 token!484) rules!2999))))

(assert (=> d!1179994 (contains!8487 rules!2999 (rule!9758 token!484))))

(assert (=> d!1179994 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1752 thiss!21717 (rule!9758 token!484) rules!2999) lt!1404198)))

(declare-fun bs!588219 () Bool)

(assert (= bs!588219 d!1179994))

(assert (=> bs!588219 m!4563141))

(declare-fun m!4564391 () Bool)

(assert (=> bs!588219 m!4564391))

(declare-fun m!4564393 () Bool)

(assert (=> bs!588219 m!4564393))

(assert (=> b!3986713 d!1179994))

(declare-fun b!3987390 () Bool)

(declare-fun res!1617549 () Bool)

(declare-fun e!2471600 () Bool)

(assert (=> b!3987390 (=> (not res!1617549) (not e!2471600))))

(declare-fun lt!1404201 () Option!9160)

(assert (=> b!3987390 (= res!1617549 (= (value!212895 (_1!24060 (get!14033 lt!1404201))) (apply!9957 (transformation!6746 (rule!9758 (_1!24060 (get!14033 lt!1404201)))) (seqFromList!4985 (originalCharacters!7346 (_1!24060 (get!14033 lt!1404201)))))))))

(declare-fun b!3987391 () Bool)

(declare-fun res!1617547 () Bool)

(assert (=> b!3987391 (=> (not res!1617547) (not e!2471600))))

(assert (=> b!3987391 (= res!1617547 (= (list!15830 (charsOf!4562 (_1!24060 (get!14033 lt!1404201)))) (originalCharacters!7346 (_1!24060 (get!14033 lt!1404201)))))))

(declare-fun d!1180000 () Bool)

(declare-fun e!2471601 () Bool)

(assert (=> d!1180000 e!2471601))

(declare-fun res!1617546 () Bool)

(assert (=> d!1180000 (=> res!1617546 e!2471601)))

(assert (=> d!1180000 (= res!1617546 (isEmpty!25489 lt!1404201))))

(declare-fun e!2471599 () Option!9160)

(assert (=> d!1180000 (= lt!1404201 e!2471599)))

(declare-fun c!690290 () Bool)

(assert (=> d!1180000 (= c!690290 (and ((_ is Cons!42648) rules!2999) ((_ is Nil!42648) (t!331571 rules!2999))))))

(declare-fun lt!1404200 () Unit!61356)

(declare-fun lt!1404202 () Unit!61356)

(assert (=> d!1180000 (= lt!1404200 lt!1404202)))

(assert (=> d!1180000 (isPrefix!3833 lt!1403908 lt!1403908)))

(assert (=> d!1180000 (= lt!1404202 (lemmaIsPrefixRefl!2425 lt!1403908 lt!1403908))))

(assert (=> d!1180000 (rulesValidInductive!2449 thiss!21717 rules!2999)))

(assert (=> d!1180000 (= (maxPrefix!3633 thiss!21717 rules!2999 lt!1403908) lt!1404201)))

(declare-fun b!3987392 () Bool)

(declare-fun res!1617544 () Bool)

(assert (=> b!3987392 (=> (not res!1617544) (not e!2471600))))

(assert (=> b!3987392 (= res!1617544 (< (size!31897 (_2!24060 (get!14033 lt!1404201))) (size!31897 lt!1403908)))))

(declare-fun b!3987393 () Bool)

(declare-fun res!1617545 () Bool)

(assert (=> b!3987393 (=> (not res!1617545) (not e!2471600))))

(assert (=> b!3987393 (= res!1617545 (= (++!11148 (list!15830 (charsOf!4562 (_1!24060 (get!14033 lt!1404201)))) (_2!24060 (get!14033 lt!1404201))) lt!1403908))))

(declare-fun bm!285779 () Bool)

(declare-fun call!285784 () Option!9160)

(assert (=> bm!285779 (= call!285784 (maxPrefixOneRule!2667 thiss!21717 (h!48068 rules!2999) lt!1403908))))

(declare-fun b!3987394 () Bool)

(assert (=> b!3987394 (= e!2471601 e!2471600)))

(declare-fun res!1617548 () Bool)

(assert (=> b!3987394 (=> (not res!1617548) (not e!2471600))))

(assert (=> b!3987394 (= res!1617548 (isDefined!7036 lt!1404201))))

(declare-fun b!3987395 () Bool)

(assert (=> b!3987395 (= e!2471600 (contains!8487 rules!2999 (rule!9758 (_1!24060 (get!14033 lt!1404201)))))))

(declare-fun b!3987396 () Bool)

(declare-fun res!1617550 () Bool)

(assert (=> b!3987396 (=> (not res!1617550) (not e!2471600))))

(assert (=> b!3987396 (= res!1617550 (matchR!5628 (regex!6746 (rule!9758 (_1!24060 (get!14033 lt!1404201)))) (list!15830 (charsOf!4562 (_1!24060 (get!14033 lt!1404201))))))))

(declare-fun b!3987397 () Bool)

(assert (=> b!3987397 (= e!2471599 call!285784)))

(declare-fun b!3987398 () Bool)

(declare-fun lt!1404204 () Option!9160)

(declare-fun lt!1404203 () Option!9160)

(assert (=> b!3987398 (= e!2471599 (ite (and ((_ is None!9159) lt!1404204) ((_ is None!9159) lt!1404203)) None!9159 (ite ((_ is None!9159) lt!1404203) lt!1404204 (ite ((_ is None!9159) lt!1404204) lt!1404203 (ite (>= (size!31896 (_1!24060 (v!39511 lt!1404204))) (size!31896 (_1!24060 (v!39511 lt!1404203)))) lt!1404204 lt!1404203)))))))

(assert (=> b!3987398 (= lt!1404204 call!285784)))

(assert (=> b!3987398 (= lt!1404203 (maxPrefix!3633 thiss!21717 (t!331571 rules!2999) lt!1403908))))

(assert (= (and d!1180000 c!690290) b!3987397))

(assert (= (and d!1180000 (not c!690290)) b!3987398))

(assert (= (or b!3987397 b!3987398) bm!285779))

(assert (= (and d!1180000 (not res!1617546)) b!3987394))

(assert (= (and b!3987394 res!1617548) b!3987391))

(assert (= (and b!3987391 res!1617547) b!3987392))

(assert (= (and b!3987392 res!1617544) b!3987393))

(assert (= (and b!3987393 res!1617545) b!3987390))

(assert (= (and b!3987390 res!1617549) b!3987396))

(assert (= (and b!3987396 res!1617550) b!3987395))

(declare-fun m!4564409 () Bool)

(assert (=> d!1180000 m!4564409))

(assert (=> d!1180000 m!4563095))

(assert (=> d!1180000 m!4563097))

(assert (=> d!1180000 m!4564239))

(declare-fun m!4564411 () Bool)

(assert (=> b!3987391 m!4564411))

(declare-fun m!4564413 () Bool)

(assert (=> b!3987391 m!4564413))

(assert (=> b!3987391 m!4564413))

(declare-fun m!4564415 () Bool)

(assert (=> b!3987391 m!4564415))

(declare-fun m!4564417 () Bool)

(assert (=> b!3987398 m!4564417))

(assert (=> b!3987392 m!4564411))

(declare-fun m!4564419 () Bool)

(assert (=> b!3987392 m!4564419))

(assert (=> b!3987392 m!4563389))

(declare-fun m!4564421 () Bool)

(assert (=> b!3987394 m!4564421))

(assert (=> b!3987390 m!4564411))

(declare-fun m!4564423 () Bool)

(assert (=> b!3987390 m!4564423))

(assert (=> b!3987390 m!4564423))

(declare-fun m!4564425 () Bool)

(assert (=> b!3987390 m!4564425))

(assert (=> b!3987396 m!4564411))

(assert (=> b!3987396 m!4564413))

(assert (=> b!3987396 m!4564413))

(assert (=> b!3987396 m!4564415))

(assert (=> b!3987396 m!4564415))

(declare-fun m!4564427 () Bool)

(assert (=> b!3987396 m!4564427))

(assert (=> b!3987395 m!4564411))

(declare-fun m!4564429 () Bool)

(assert (=> b!3987395 m!4564429))

(assert (=> b!3987393 m!4564411))

(assert (=> b!3987393 m!4564413))

(assert (=> b!3987393 m!4564413))

(assert (=> b!3987393 m!4564415))

(assert (=> b!3987393 m!4564415))

(declare-fun m!4564431 () Bool)

(assert (=> b!3987393 m!4564431))

(declare-fun m!4564433 () Bool)

(assert (=> bm!285779 m!4564433))

(assert (=> b!3986692 d!1180000))

(declare-fun b!3987413 () Bool)

(declare-fun res!1617556 () Bool)

(declare-fun e!2471613 () Bool)

(assert (=> b!3987413 (=> (not res!1617556) (not e!2471613))))

(declare-fun lt!1404207 () List!42771)

(assert (=> b!3987413 (= res!1617556 (= (size!31897 lt!1404207) (+ (size!31897 prefix!494) (size!31897 suffix!1299))))))

(declare-fun d!1180006 () Bool)

(assert (=> d!1180006 e!2471613))

(declare-fun res!1617555 () Bool)

(assert (=> d!1180006 (=> (not res!1617555) (not e!2471613))))

(assert (=> d!1180006 (= res!1617555 (= (content!6462 lt!1404207) ((_ map or) (content!6462 prefix!494) (content!6462 suffix!1299))))))

(declare-fun e!2471614 () List!42771)

(assert (=> d!1180006 (= lt!1404207 e!2471614)))

(declare-fun c!690291 () Bool)

(assert (=> d!1180006 (= c!690291 ((_ is Nil!42647) prefix!494))))

(assert (=> d!1180006 (= (++!11148 prefix!494 suffix!1299) lt!1404207)))

(declare-fun b!3987412 () Bool)

(assert (=> b!3987412 (= e!2471614 (Cons!42647 (h!48067 prefix!494) (++!11148 (t!331570 prefix!494) suffix!1299)))))

(declare-fun b!3987411 () Bool)

(assert (=> b!3987411 (= e!2471614 suffix!1299)))

(declare-fun b!3987414 () Bool)

(assert (=> b!3987414 (= e!2471613 (or (not (= suffix!1299 Nil!42647)) (= lt!1404207 prefix!494)))))

(assert (= (and d!1180006 c!690291) b!3987411))

(assert (= (and d!1180006 (not c!690291)) b!3987412))

(assert (= (and d!1180006 res!1617555) b!3987413))

(assert (= (and b!3987413 res!1617556) b!3987414))

(declare-fun m!4564435 () Bool)

(assert (=> b!3987413 m!4564435))

(assert (=> b!3987413 m!4563205))

(assert (=> b!3987413 m!4563245))

(declare-fun m!4564437 () Bool)

(assert (=> d!1180006 m!4564437))

(assert (=> d!1180006 m!4563351))

(assert (=> d!1180006 m!4564005))

(declare-fun m!4564439 () Bool)

(assert (=> b!3987412 m!4564439))

(assert (=> b!3986692 d!1180006))

(declare-fun b!3987422 () Bool)

(declare-fun e!2471621 () Bool)

(declare-fun tp!1214925 () Bool)

(assert (=> b!3987422 (= e!2471621 (and tp_is_empty!20273 tp!1214925))))

(assert (=> b!3986679 (= tp!1214893 e!2471621)))

(assert (= (and b!3986679 ((_ is Cons!42647) (t!331570 suffixResult!105))) b!3987422))

(declare-fun b!3987423 () Bool)

(declare-fun e!2471622 () Bool)

(declare-fun tp!1214926 () Bool)

(assert (=> b!3987423 (= e!2471622 (and tp_is_empty!20273 tp!1214926))))

(assert (=> b!3986674 (= tp!1214892 e!2471622)))

(assert (= (and b!3986674 ((_ is Cons!42647) (t!331570 suffix!1299))) b!3987423))

(declare-fun b!3987424 () Bool)

(declare-fun e!2471623 () Bool)

(declare-fun tp!1214927 () Bool)

(assert (=> b!3987424 (= e!2471623 (and tp_is_empty!20273 tp!1214927))))

(assert (=> b!3986712 (= tp!1214899 e!2471623)))

(assert (= (and b!3986712 ((_ is Cons!42647) (originalCharacters!7346 token!484))) b!3987424))

(declare-fun b!3987425 () Bool)

(declare-fun e!2471624 () Bool)

(declare-fun tp!1214928 () Bool)

(assert (=> b!3987425 (= e!2471624 (and tp_is_empty!20273 tp!1214928))))

(assert (=> b!3986689 (= tp!1214895 e!2471624)))

(assert (= (and b!3986689 ((_ is Cons!42647) (t!331570 prefix!494))) b!3987425))

(declare-fun e!2471634 () Bool)

(assert (=> b!3986673 (= tp!1214890 e!2471634)))

(declare-fun b!3987456 () Bool)

(declare-fun tp!1214958 () Bool)

(declare-fun tp!1214957 () Bool)

(assert (=> b!3987456 (= e!2471634 (and tp!1214958 tp!1214957))))

(declare-fun b!3987453 () Bool)

(assert (=> b!3987453 (= e!2471634 tp_is_empty!20273)))

(declare-fun b!3987454 () Bool)

(declare-fun tp!1214954 () Bool)

(declare-fun tp!1214956 () Bool)

(assert (=> b!3987454 (= e!2471634 (and tp!1214954 tp!1214956))))

(declare-fun b!3987455 () Bool)

(declare-fun tp!1214955 () Bool)

(assert (=> b!3987455 (= e!2471634 tp!1214955)))

(assert (= (and b!3986673 ((_ is ElementMatch!11651) (regex!6746 (h!48068 rules!2999)))) b!3987453))

(assert (= (and b!3986673 ((_ is Concat!18628) (regex!6746 (h!48068 rules!2999)))) b!3987454))

(assert (= (and b!3986673 ((_ is Star!11651) (regex!6746 (h!48068 rules!2999)))) b!3987455))

(assert (= (and b!3986673 ((_ is Union!11651) (regex!6746 (h!48068 rules!2999)))) b!3987456))

(declare-fun b!3987457 () Bool)

(declare-fun e!2471635 () Bool)

(declare-fun tp!1214959 () Bool)

(assert (=> b!3987457 (= e!2471635 (and tp_is_empty!20273 tp!1214959))))

(assert (=> b!3986682 (= tp!1214898 e!2471635)))

(assert (= (and b!3986682 ((_ is Cons!42647) (t!331570 newSuffixResult!27))) b!3987457))

(declare-fun b!3987458 () Bool)

(declare-fun e!2471636 () Bool)

(declare-fun tp!1214960 () Bool)

(assert (=> b!3987458 (= e!2471636 (and tp_is_empty!20273 tp!1214960))))

(assert (=> b!3986677 (= tp!1214896 e!2471636)))

(assert (= (and b!3986677 ((_ is Cons!42647) (t!331570 newSuffix!27))) b!3987458))

(declare-fun b!3987480 () Bool)

(declare-fun b_free!110749 () Bool)

(declare-fun b_next!111453 () Bool)

(assert (=> b!3987480 (= b_free!110749 (not b_next!111453))))

(declare-fun tb!240101 () Bool)

(declare-fun t!331613 () Bool)

(assert (=> (and b!3987480 (= (toValue!9234 (transformation!6746 (h!48068 (t!331571 rules!2999)))) (toValue!9234 (transformation!6746 (rule!9758 token!484)))) t!331613) tb!240101))

(declare-fun result!290902 () Bool)

(assert (= result!290902 result!290854))

(assert (=> d!1179754 t!331613))

(declare-fun tb!240103 () Bool)

(declare-fun t!331615 () Bool)

(assert (=> (and b!3987480 (= (toValue!9234 (transformation!6746 (h!48068 (t!331571 rules!2999)))) (toValue!9234 (transformation!6746 (rule!9758 (_1!24060 (v!39511 lt!1403890)))))) t!331615) tb!240103))

(declare-fun result!290904 () Bool)

(assert (= result!290904 result!290860))

(assert (=> d!1179798 t!331615))

(declare-fun b_and!306419 () Bool)

(declare-fun tp!1214984 () Bool)

(assert (=> b!3987480 (= tp!1214984 (and (=> t!331613 result!290902) (=> t!331615 result!290904) b_and!306419))))

(declare-fun b_free!110751 () Bool)

(declare-fun b_next!111455 () Bool)

(assert (=> b!3987480 (= b_free!110751 (not b_next!111455))))

(declare-fun tb!240105 () Bool)

(declare-fun t!331617 () Bool)

(assert (=> (and b!3987480 (= (toChars!9093 (transformation!6746 (h!48068 (t!331571 rules!2999)))) (toChars!9093 (transformation!6746 (rule!9758 token!484)))) t!331617) tb!240105))

(declare-fun result!290906 () Bool)

(assert (= result!290906 result!290842))

(assert (=> b!3986719 t!331617))

(assert (=> d!1179762 t!331617))

(declare-fun t!331619 () Bool)

(declare-fun tb!240107 () Bool)

(assert (=> (and b!3987480 (= (toChars!9093 (transformation!6746 (h!48068 (t!331571 rules!2999)))) (toChars!9093 (transformation!6746 (rule!9758 (_1!24060 (v!39511 lt!1403890)))))) t!331619) tb!240107))

(declare-fun result!290908 () Bool)

(assert (= result!290908 result!290864))

(assert (=> d!1179804 t!331619))

(declare-fun b_and!306421 () Bool)

(declare-fun tp!1214982 () Bool)

(assert (=> b!3987480 (= tp!1214982 (and (=> t!331617 result!290906) (=> t!331619 result!290908) b_and!306421))))

(declare-fun e!2471651 () Bool)

(assert (=> b!3987480 (= e!2471651 (and tp!1214984 tp!1214982))))

(declare-fun e!2471653 () Bool)

(declare-fun tp!1214983 () Bool)

(declare-fun b!3987479 () Bool)

(assert (=> b!3987479 (= e!2471653 (and tp!1214983 (inv!56959 (tag!7606 (h!48068 (t!331571 rules!2999)))) (inv!56962 (transformation!6746 (h!48068 (t!331571 rules!2999)))) e!2471651))))

(declare-fun b!3987478 () Bool)

(declare-fun e!2471650 () Bool)

(declare-fun tp!1214985 () Bool)

(assert (=> b!3987478 (= e!2471650 (and e!2471653 tp!1214985))))

(assert (=> b!3986707 (= tp!1214891 e!2471650)))

(assert (= b!3987479 b!3987480))

(assert (= b!3987478 b!3987479))

(assert (= (and b!3986707 ((_ is Cons!42648) (t!331571 rules!2999))) b!3987478))

(declare-fun m!4564445 () Bool)

(assert (=> b!3987479 m!4564445))

(declare-fun m!4564447 () Bool)

(assert (=> b!3987479 m!4564447))

(declare-fun e!2471654 () Bool)

(assert (=> b!3986676 (= tp!1214900 e!2471654)))

(declare-fun b!3987484 () Bool)

(declare-fun tp!1214990 () Bool)

(declare-fun tp!1214989 () Bool)

(assert (=> b!3987484 (= e!2471654 (and tp!1214990 tp!1214989))))

(declare-fun b!3987481 () Bool)

(assert (=> b!3987481 (= e!2471654 tp_is_empty!20273)))

(declare-fun b!3987482 () Bool)

(declare-fun tp!1214986 () Bool)

(declare-fun tp!1214988 () Bool)

(assert (=> b!3987482 (= e!2471654 (and tp!1214986 tp!1214988))))

(declare-fun b!3987483 () Bool)

(declare-fun tp!1214987 () Bool)

(assert (=> b!3987483 (= e!2471654 tp!1214987)))

(assert (= (and b!3986676 ((_ is ElementMatch!11651) (regex!6746 (rule!9758 token!484)))) b!3987481))

(assert (= (and b!3986676 ((_ is Concat!18628) (regex!6746 (rule!9758 token!484)))) b!3987482))

(assert (= (and b!3986676 ((_ is Star!11651) (regex!6746 (rule!9758 token!484)))) b!3987483))

(assert (= (and b!3986676 ((_ is Union!11651) (regex!6746 (rule!9758 token!484)))) b!3987484))

(declare-fun b_lambda!116425 () Bool)

(assert (= b_lambda!116405 (or (and b!3986685 b_free!110739) (and b!3986687 b_free!110743 (= (toChars!9093 (transformation!6746 (h!48068 rules!2999))) (toChars!9093 (transformation!6746 (rule!9758 token!484))))) (and b!3987480 b_free!110751 (= (toChars!9093 (transformation!6746 (h!48068 (t!331571 rules!2999)))) (toChars!9093 (transformation!6746 (rule!9758 token!484))))) b_lambda!116425)))

(declare-fun b_lambda!116427 () Bool)

(assert (= b_lambda!116403 (or (and b!3986685 b_free!110737) (and b!3986687 b_free!110741 (= (toValue!9234 (transformation!6746 (h!48068 rules!2999))) (toValue!9234 (transformation!6746 (rule!9758 token!484))))) (and b!3987480 b_free!110749 (= (toValue!9234 (transformation!6746 (h!48068 (t!331571 rules!2999)))) (toValue!9234 (transformation!6746 (rule!9758 token!484))))) b_lambda!116427)))

(declare-fun b_lambda!116429 () Bool)

(assert (= b_lambda!116399 (or (and b!3986685 b_free!110739) (and b!3986687 b_free!110743 (= (toChars!9093 (transformation!6746 (h!48068 rules!2999))) (toChars!9093 (transformation!6746 (rule!9758 token!484))))) (and b!3987480 b_free!110751 (= (toChars!9093 (transformation!6746 (h!48068 (t!331571 rules!2999)))) (toChars!9093 (transformation!6746 (rule!9758 token!484))))) b_lambda!116429)))

(check-sat (not d!1179966) (not b!3987066) (not b!3987055) (not d!1179852) (not d!1179854) (not bm!285778) (not b!3987377) (not b!3986807) (not b!3987051) b_and!306391 (not b!3987185) (not d!1179788) (not d!1179648) (not b!3987021) (not b!3987356) (not d!1179662) (not b!3987424) (not b!3987120) (not d!1179672) (not b!3987152) (not d!1179864) (not d!1179642) (not b!3987182) (not b!3987125) (not d!1179746) (not b!3987064) (not b!3987273) (not b!3987335) (not d!1179880) (not b!3987020) (not b!3986817) (not b!3986810) (not b_next!111441) (not b!3987165) (not b_lambda!116425) (not b!3986820) (not b!3987484) (not b!3986764) (not b!3987395) (not b!3987023) (not d!1179948) (not d!1179782) (not b!3987340) (not b!3987035) (not b!3986758) (not d!1179634) (not d!1179654) (not d!1179762) (not b!3986779) (not b!3987328) (not b!3987116) (not b!3987186) (not b!3987342) (not b!3987015) (not tb!240073) (not d!1179644) (not b!3987112) (not b!3986811) (not bm!285766) (not b!3987392) (not b_next!111453) (not b!3986814) (not b!3987187) (not b!3987161) (not b!3987022) (not b!3987482) (not d!1179970) (not b!3987041) (not b!3987339) (not d!1179850) (not b!3987413) (not b_next!111447) (not d!1179808) (not d!1179838) (not b_next!111443) (not b!3986765) (not d!1179744) (not b!3987366) (not d!1179814) (not d!1179794) tp_is_empty!20273 (not b_lambda!116407) (not d!1179832) (not b!3987338) (not d!1179760) b_and!306419 (not b!3987425) (not b!3987150) (not b!3987115) (not tb!240069) (not b!3986720) (not b!3987394) (not b!3987100) (not b!3986763) (not d!1179784) b_and!306421 (not b!3987478) (not b_lambda!116427) (not b!3987136) (not b!3986778) (not b!3987347) (not b_next!111455) (not d!1179978) (not b!3987458) (not b!3986821) (not b!3987276) (not d!1179990) (not b!3987422) (not d!1179632) (not b!3987183) (not d!1179790) (not b!3987027) (not b!3987359) (not b!3987294) (not d!1179824) (not b!3986822) (not d!1179792) (not b!3987274) (not b!3987292) (not d!1179818) (not b!3986790) (not b!3986719) (not b!3987367) (not b!3987324) (not b!3987151) (not b!3987173) (not b!3987271) (not d!1179986) (not b!3987360) (not b!3986796) (not b!3986815) (not b!3987423) (not d!1179940) (not b!3987037) (not b!3987457) (not tb!240061) (not b!3987391) (not b!3987268) (not d!1179768) (not b!3987062) (not d!1179974) (not b!3987057) (not b!3987343) (not b!3987059) (not b!3987174) (not d!1179772) (not d!1179826) (not b!3987087) (not b!3987043) (not b!3987039) (not b!3987137) (not b!3987272) (not b!3987119) (not b!3987456) (not b!3987123) (not b!3987353) (not b!3986725) (not b!3987181) (not d!1179816) (not b!3987135) (not b!3987065) (not b!3987058) (not d!1180000) (not b!3986800) (not b!3987166) (not b!3987026) (not b!3987325) (not b!3987269) (not b!3986823) (not b!3987148) (not b!3986802) (not b!3986803) (not b!3987398) (not d!1179980) (not d!1179774) (not b!3986804) (not d!1179666) (not b!3987162) (not b!3987157) (not d!1179658) (not d!1179796) (not b!3987156) (not b!3987049) (not d!1179800) (not b!3987126) (not b!3987019) (not b!3987396) (not b!3987358) (not b!3987412) (not b!3987383) (not b!3987336) (not b!3987334) (not b!3986789) (not b_lambda!116429) (not b_next!111445) (not d!1180006) (not b!3987382) (not b_lambda!116409) (not b!3987017) (not d!1179638) (not b!3987132) (not b!3987052) (not b!3987025) b_and!306395 (not b!3987103) (not b!3987056) (not b!3987178) (not b!3987063) (not b!3986754) (not d!1179858) (not d!1179870) (not b!3987373) (not b!3986806) (not b!3987454) (not d!1179954) (not b!3987293) (not b!3987270) b_and!306397 (not d!1179868) b_and!306393 (not b!3987016) (not b!3987053) (not b!3987390) (not b!3987086) (not b!3987088) (not bm!285777) (not b!3987483) (not b!3987479) (not d!1179656) (not d!1179752) (not d!1179776) (not b!3987060) (not d!1179804) (not bm!285779) (not b!3987177) (not b!3986761) (not d!1179670) (not b!3987344) (not b!3987393) (not tb!240077) (not d!1179994) (not b!3987376) (not d!1179846) (not b!3986777) (not d!1179876) (not d!1179640) (not d!1179842) (not d!1179748) (not d!1179660) (not d!1179972) (not b!3987455))
(check-sat b_and!306391 (not b_next!111441) (not b_next!111453) b_and!306419 b_and!306421 (not b_next!111455) (not b_next!111445) b_and!306395 (not b_next!111443) (not b_next!111447) b_and!306397 b_and!306393)
