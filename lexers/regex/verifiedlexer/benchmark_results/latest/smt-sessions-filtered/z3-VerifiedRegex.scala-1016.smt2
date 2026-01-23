; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50676 () Bool)

(assert start!50676)

(declare-fun b!547853 () Bool)

(declare-fun b_free!15241 () Bool)

(declare-fun b_next!15257 () Bool)

(assert (=> b!547853 (= b_free!15241 (not b_next!15257))))

(declare-fun tp!173708 () Bool)

(declare-fun b_and!53507 () Bool)

(assert (=> b!547853 (= tp!173708 b_and!53507)))

(declare-fun b_free!15243 () Bool)

(declare-fun b_next!15259 () Bool)

(assert (=> b!547853 (= b_free!15243 (not b_next!15259))))

(declare-fun tp!173712 () Bool)

(declare-fun b_and!53509 () Bool)

(assert (=> b!547853 (= tp!173712 b_and!53509)))

(declare-fun b!547862 () Bool)

(declare-fun b_free!15245 () Bool)

(declare-fun b_next!15261 () Bool)

(assert (=> b!547862 (= b_free!15245 (not b_next!15261))))

(declare-fun tp!173707 () Bool)

(declare-fun b_and!53511 () Bool)

(assert (=> b!547862 (= tp!173707 b_and!53511)))

(declare-fun b_free!15247 () Bool)

(declare-fun b_next!15263 () Bool)

(assert (=> b!547862 (= b_free!15247 (not b_next!15263))))

(declare-fun tp!173710 () Bool)

(declare-fun b_and!53513 () Bool)

(assert (=> b!547862 (= tp!173710 b_and!53513)))

(declare-fun b!547826 () Bool)

(declare-fun res!234334 () Bool)

(declare-fun e!331128 () Bool)

(assert (=> b!547826 (=> (not res!234334) (not e!331128))))

(declare-datatypes ((C!3628 0))(
  ( (C!3629 (val!2040 Int)) )
))
(declare-datatypes ((List!5409 0))(
  ( (Nil!5399) (Cons!5399 (h!10800 C!3628) (t!74866 List!5409)) )
))
(declare-fun input!2705 () List!5409)

(declare-fun isEmpty!3898 (List!5409) Bool)

(assert (=> b!547826 (= res!234334 (not (isEmpty!3898 input!2705)))))

(declare-fun suffix!1342 () List!5409)

(declare-fun lt!230050 () List!5409)

(declare-datatypes ((String!6958 0))(
  ( (String!6959 (value!33882 String)) )
))
(declare-datatypes ((Regex!1353 0))(
  ( (ElementMatch!1353 (c!103180 C!3628)) (Concat!2396 (regOne!3218 Regex!1353) (regTwo!3218 Regex!1353)) (EmptyExpr!1353) (Star!1353 (reg!1682 Regex!1353)) (EmptyLang!1353) (Union!1353 (regOne!3219 Regex!1353) (regTwo!3219 Regex!1353)) )
))
(declare-datatypes ((List!5410 0))(
  ( (Nil!5400) (Cons!5400 (h!10801 (_ BitVec 16)) (t!74867 List!5410)) )
))
(declare-datatypes ((TokenValue!1043 0))(
  ( (FloatLiteralValue!2086 (text!7746 List!5410)) (TokenValueExt!1042 (__x!3984 Int)) (Broken!5215 (value!33883 List!5410)) (Object!1052) (End!1043) (Def!1043) (Underscore!1043) (Match!1043) (Else!1043) (Error!1043) (Case!1043) (If!1043) (Extends!1043) (Abstract!1043) (Class!1043) (Val!1043) (DelimiterValue!2086 (del!1103 List!5410)) (KeywordValue!1049 (value!33884 List!5410)) (CommentValue!2086 (value!33885 List!5410)) (WhitespaceValue!2086 (value!33886 List!5410)) (IndentationValue!1043 (value!33887 List!5410)) (String!6960) (Int32!1043) (Broken!5216 (value!33888 List!5410)) (Boolean!1044) (Unit!9498) (OperatorValue!1046 (op!1103 List!5410)) (IdentifierValue!2086 (value!33889 List!5410)) (IdentifierValue!2087 (value!33890 List!5410)) (WhitespaceValue!2087 (value!33891 List!5410)) (True!2086) (False!2086) (Broken!5217 (value!33892 List!5410)) (Broken!5218 (value!33893 List!5410)) (True!2087) (RightBrace!1043) (RightBracket!1043) (Colon!1043) (Null!1043) (Comma!1043) (LeftBracket!1043) (False!2087) (LeftBrace!1043) (ImaginaryLiteralValue!1043 (text!7747 List!5410)) (StringLiteralValue!3129 (value!33894 List!5410)) (EOFValue!1043 (value!33895 List!5410)) (IdentValue!1043 (value!33896 List!5410)) (DelimiterValue!2087 (value!33897 List!5410)) (DedentValue!1043 (value!33898 List!5410)) (NewLineValue!1043 (value!33899 List!5410)) (IntegerValue!3129 (value!33900 (_ BitVec 32)) (text!7748 List!5410)) (IntegerValue!3130 (value!33901 Int) (text!7749 List!5410)) (Times!1043) (Or!1043) (Equal!1043) (Minus!1043) (Broken!5219 (value!33902 List!5410)) (And!1043) (Div!1043) (LessEqual!1043) (Mod!1043) (Concat!2397) (Not!1043) (Plus!1043) (SpaceValue!1043 (value!33903 List!5410)) (IntegerValue!3131 (value!33904 Int) (text!7750 List!5410)) (StringLiteralValue!3130 (text!7751 List!5410)) (FloatLiteralValue!2087 (text!7752 List!5410)) (BytesLiteralValue!1043 (value!33905 List!5410)) (CommentValue!2087 (value!33906 List!5410)) (StringLiteralValue!3131 (value!33907 List!5410)) (ErrorTokenValue!1043 (msg!1104 List!5410)) )
))
(declare-datatypes ((IArray!3473 0))(
  ( (IArray!3474 (innerList!1794 List!5409)) )
))
(declare-datatypes ((Conc!1736 0))(
  ( (Node!1736 (left!4470 Conc!1736) (right!4800 Conc!1736) (csize!3702 Int) (cheight!1947 Int)) (Leaf!2753 (xs!4373 IArray!3473) (csize!3703 Int)) (Empty!1736) )
))
(declare-datatypes ((BalanceConc!3480 0))(
  ( (BalanceConc!3481 (c!103181 Conc!1736)) )
))
(declare-datatypes ((TokenValueInjection!1854 0))(
  ( (TokenValueInjection!1855 (toValue!1866 Int) (toChars!1725 Int)) )
))
(declare-datatypes ((Rule!1838 0))(
  ( (Rule!1839 (regex!1019 Regex!1353) (tag!1281 String!6958) (isSeparator!1019 Bool) (transformation!1019 TokenValueInjection!1854)) )
))
(declare-datatypes ((Token!1774 0))(
  ( (Token!1775 (value!33908 TokenValue!1043) (rule!1739 Rule!1838) (size!4326 Int) (originalCharacters!1058 List!5409)) )
))
(declare-fun token!491 () Token!1774)

(declare-fun e!331132 () Bool)

(declare-fun lt!230062 () Int)

(declare-fun lt!230069 () TokenValue!1043)

(declare-fun b!547827 () Bool)

(declare-fun lt!230070 () List!5409)

(declare-datatypes ((tuple2!6432 0))(
  ( (tuple2!6433 (_1!3480 Token!1774) (_2!3480 List!5409)) )
))
(assert (=> b!547827 (= e!331132 (and (= (size!4326 token!491) lt!230062) (= (originalCharacters!1058 token!491) lt!230050) (= (tuple2!6433 token!491 suffix!1342) (tuple2!6433 (Token!1775 lt!230069 (rule!1739 token!491) lt!230062 lt!230050) lt!230070))))))

(declare-fun b!547828 () Bool)

(declare-fun res!234324 () Bool)

(declare-fun e!331144 () Bool)

(assert (=> b!547828 (=> res!234324 e!331144)))

(declare-datatypes ((Option!1369 0))(
  ( (None!1368) (Some!1368 (v!16189 tuple2!6432)) )
))
(declare-fun lt!230048 () Option!1369)

(assert (=> b!547828 (= res!234324 (not (isEmpty!3898 (_2!3480 (v!16189 lt!230048)))))))

(declare-fun b!547829 () Bool)

(declare-fun e!331122 () Bool)

(declare-fun e!331139 () Bool)

(assert (=> b!547829 (= e!331122 e!331139)))

(declare-fun res!234331 () Bool)

(assert (=> b!547829 (=> (not res!234331) (not e!331139))))

(declare-fun lt!230078 () Option!1369)

(declare-fun isDefined!1181 (Option!1369) Bool)

(assert (=> b!547829 (= res!234331 (isDefined!1181 lt!230078))))

(declare-fun lt!230057 () List!5409)

(declare-datatypes ((List!5411 0))(
  ( (Nil!5401) (Cons!5401 (h!10802 Rule!1838) (t!74868 List!5411)) )
))
(declare-fun rules!3103 () List!5411)

(declare-datatypes ((LexerInterface!905 0))(
  ( (LexerInterfaceExt!902 (__x!3985 Int)) (Lexer!903) )
))
(declare-fun thiss!22590 () LexerInterface!905)

(declare-fun maxPrefix!603 (LexerInterface!905 List!5411 List!5409) Option!1369)

(assert (=> b!547829 (= lt!230078 (maxPrefix!603 thiss!22590 rules!3103 lt!230057))))

(declare-fun ++!1507 (List!5409 List!5409) List!5409)

(assert (=> b!547829 (= lt!230057 (++!1507 input!2705 suffix!1342))))

(declare-fun b!547830 () Bool)

(declare-fun res!234321 () Bool)

(declare-fun e!331141 () Bool)

(assert (=> b!547830 (=> (not res!234321) (not e!331141))))

(declare-fun size!4327 (List!5409) Int)

(assert (=> b!547830 (= res!234321 (= (size!4326 (_1!3480 (v!16189 lt!230048))) (size!4327 (originalCharacters!1058 (_1!3480 (v!16189 lt!230048))))))))

(declare-fun b!547831 () Bool)

(declare-fun e!331145 () Bool)

(declare-fun lt!230044 () List!5409)

(assert (=> b!547831 (= e!331145 (= lt!230044 (_2!3480 (v!16189 lt!230048))))))

(declare-fun b!547832 () Bool)

(declare-fun res!234320 () Bool)

(assert (=> b!547832 (=> res!234320 e!331144)))

(declare-fun contains!1261 (List!5411 Rule!1838) Bool)

(assert (=> b!547832 (= res!234320 (not (contains!1261 rules!3103 (rule!1739 (_1!3480 (v!16189 lt!230048))))))))

(declare-fun lt!230064 () TokenValue!1043)

(declare-fun lt!230047 () Int)

(declare-fun b!547833 () Bool)

(declare-fun lt!230041 () tuple2!6432)

(declare-fun lt!230065 () List!5409)

(assert (=> b!547833 (= e!331141 (and (= (size!4326 (_1!3480 (v!16189 lt!230048))) lt!230047) (= (originalCharacters!1058 (_1!3480 (v!16189 lt!230048))) lt!230065) (= lt!230041 (tuple2!6433 (Token!1775 lt!230064 (rule!1739 (_1!3480 (v!16189 lt!230048))) lt!230047 lt!230065) lt!230044))))))

(declare-fun b!547834 () Bool)

(declare-fun e!331120 () Bool)

(assert (=> b!547834 (= e!331120 false)))

(declare-fun b!547835 () Bool)

(declare-fun e!331123 () Bool)

(assert (=> b!547835 (= e!331123 false)))

(declare-fun b!547836 () Bool)

(declare-datatypes ((Unit!9499 0))(
  ( (Unit!9500) )
))
(declare-fun e!331136 () Unit!9499)

(declare-fun Unit!9501 () Unit!9499)

(assert (=> b!547836 (= e!331136 Unit!9501)))

(declare-fun lt!230067 () Unit!9499)

(declare-fun lt!230058 () BalanceConc!3480)

(declare-fun lemmaSemiInverse!148 (TokenValueInjection!1854 BalanceConc!3480) Unit!9499)

(assert (=> b!547836 (= lt!230067 (lemmaSemiInverse!148 (transformation!1019 (rule!1739 (_1!3480 (v!16189 lt!230048)))) lt!230058))))

(declare-fun lt!230060 () Unit!9499)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!24 (LexerInterface!905 List!5411 Rule!1838 List!5409 List!5409 List!5409 Rule!1838) Unit!9499)

(assert (=> b!547836 (= lt!230060 (lemmaMaxPrefixOutputsMaxPrefix!24 thiss!22590 rules!3103 (rule!1739 (_1!3480 (v!16189 lt!230048))) lt!230065 input!2705 input!2705 (rule!1739 token!491)))))

(declare-fun res!234326 () Bool)

(declare-fun matchR!512 (Regex!1353 List!5409) Bool)

(assert (=> b!547836 (= res!234326 (not (matchR!512 (regex!1019 (rule!1739 token!491)) input!2705)))))

(assert (=> b!547836 (=> (not res!234326) (not e!331123))))

(assert (=> b!547836 e!331123))

(declare-fun b!547837 () Bool)

(declare-fun e!331130 () Unit!9499)

(declare-fun Unit!9502 () Unit!9499)

(assert (=> b!547837 (= e!331130 Unit!9502)))

(declare-fun lt!230053 () Unit!9499)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!2 (LexerInterface!905 List!5411 Rule!1838 List!5409 List!5409 Rule!1838) Unit!9499)

(assert (=> b!547837 (= lt!230053 (lemmaMaxPrefNoSmallerRuleMatches!2 thiss!22590 rules!3103 (rule!1739 token!491) input!2705 lt!230057 (rule!1739 (_1!3480 (v!16189 lt!230048)))))))

(declare-fun res!234329 () Bool)

(assert (=> b!547837 (= res!234329 (not (matchR!512 (regex!1019 (rule!1739 (_1!3480 (v!16189 lt!230048)))) input!2705)))))

(assert (=> b!547837 (=> (not res!234329) (not e!331120))))

(assert (=> b!547837 e!331120))

(declare-fun b!547838 () Bool)

(declare-fun e!331124 () Bool)

(assert (=> b!547838 (= e!331139 e!331124)))

(declare-fun res!234316 () Bool)

(assert (=> b!547838 (=> (not res!234316) (not e!331124))))

(declare-fun lt!230076 () tuple2!6432)

(assert (=> b!547838 (= res!234316 (and (= (_1!3480 lt!230076) token!491) (= (_2!3480 lt!230076) suffix!1342)))))

(declare-fun get!2043 (Option!1369) tuple2!6432)

(assert (=> b!547838 (= lt!230076 (get!2043 lt!230078))))

(declare-fun b!547839 () Bool)

(declare-fun res!234328 () Bool)

(assert (=> b!547839 (=> (not res!234328) (not e!331128))))

(declare-fun rulesInvariant!868 (LexerInterface!905 List!5411) Bool)

(assert (=> b!547839 (= res!234328 (rulesInvariant!868 thiss!22590 rules!3103))))

(declare-fun e!331147 () Bool)

(declare-fun b!547840 () Bool)

(declare-fun e!331146 () Bool)

(declare-fun tp!173711 () Bool)

(declare-fun inv!6771 (String!6958) Bool)

(declare-fun inv!6774 (TokenValueInjection!1854) Bool)

(assert (=> b!547840 (= e!331146 (and tp!173711 (inv!6771 (tag!1281 (rule!1739 token!491))) (inv!6774 (transformation!1019 (rule!1739 token!491))) e!331147))))

(declare-fun b!547841 () Bool)

(declare-fun e!331134 () Bool)

(assert (=> b!547841 (= e!331134 e!331145)))

(declare-fun res!234339 () Bool)

(assert (=> b!547841 (=> (not res!234339) (not e!331145))))

(assert (=> b!547841 (= res!234339 (isDefined!1181 lt!230048))))

(declare-fun b!547842 () Bool)

(declare-fun e!331127 () Unit!9499)

(declare-fun Unit!9503 () Unit!9499)

(assert (=> b!547842 (= e!331127 Unit!9503)))

(declare-fun b!547843 () Bool)

(declare-fun e!331129 () Bool)

(declare-fun e!331140 () Bool)

(declare-fun tp!173709 () Bool)

(assert (=> b!547843 (= e!331129 (and e!331140 tp!173709))))

(declare-fun b!547844 () Bool)

(declare-fun e!331133 () Bool)

(declare-fun tp_is_empty!3061 () Bool)

(declare-fun tp!173705 () Bool)

(assert (=> b!547844 (= e!331133 (and tp_is_empty!3061 tp!173705))))

(declare-fun b!547845 () Bool)

(declare-fun Unit!9504 () Unit!9499)

(assert (=> b!547845 (= e!331127 Unit!9504)))

(assert (=> b!547845 false))

(declare-fun b!547846 () Bool)

(assert (=> b!547846 (= e!331144 true)))

(declare-fun lt!230042 () Unit!9499)

(assert (=> b!547846 (= lt!230042 e!331130)))

(declare-fun c!103179 () Bool)

(declare-fun getIndex!20 (List!5411 Rule!1838) Int)

(assert (=> b!547846 (= c!103179 (< (getIndex!20 rules!3103 (rule!1739 (_1!3480 (v!16189 lt!230048)))) (getIndex!20 rules!3103 (rule!1739 token!491))))))

(declare-fun b!547847 () Bool)

(declare-fun res!234317 () Bool)

(assert (=> b!547847 (=> res!234317 e!331144)))

(assert (=> b!547847 (= res!234317 (= (rule!1739 (_1!3480 (v!16189 lt!230048))) (rule!1739 token!491)))))

(declare-fun b!547848 () Bool)

(declare-fun res!234318 () Bool)

(assert (=> b!547848 (=> (not res!234318) (not e!331145))))

(assert (=> b!547848 (= res!234318 (= (_1!3480 (get!2043 lt!230048)) (_1!3480 (v!16189 lt!230048))))))

(declare-fun tp!173713 () Bool)

(declare-fun e!331142 () Bool)

(declare-fun b!547849 () Bool)

(declare-fun inv!21 (TokenValue!1043) Bool)

(assert (=> b!547849 (= e!331142 (and (inv!21 (value!33908 token!491)) e!331146 tp!173713))))

(declare-fun b!547850 () Bool)

(declare-fun e!331126 () Bool)

(declare-fun e!331138 () Bool)

(assert (=> b!547850 (= e!331126 (not e!331138))))

(declare-fun res!234336 () Bool)

(assert (=> b!547850 (=> res!234336 e!331138)))

(declare-fun lt!230051 () List!5409)

(declare-fun isPrefix!661 (List!5409 List!5409) Bool)

(assert (=> b!547850 (= res!234336 (not (isPrefix!661 input!2705 lt!230051)))))

(assert (=> b!547850 (isPrefix!661 lt!230050 lt!230051)))

(declare-fun lt!230046 () Unit!9499)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!512 (List!5409 List!5409) Unit!9499)

(assert (=> b!547850 (= lt!230046 (lemmaConcatTwoListThenFirstIsPrefix!512 lt!230050 suffix!1342))))

(assert (=> b!547850 (isPrefix!661 input!2705 lt!230057)))

(declare-fun lt!230074 () Unit!9499)

(assert (=> b!547850 (= lt!230074 (lemmaConcatTwoListThenFirstIsPrefix!512 input!2705 suffix!1342))))

(assert (=> b!547850 e!331141))

(declare-fun res!234332 () Bool)

(assert (=> b!547850 (=> (not res!234332) (not e!331141))))

(assert (=> b!547850 (= res!234332 (= (value!33908 (_1!3480 (v!16189 lt!230048))) lt!230064))))

(declare-fun apply!1294 (TokenValueInjection!1854 BalanceConc!3480) TokenValue!1043)

(assert (=> b!547850 (= lt!230064 (apply!1294 (transformation!1019 (rule!1739 (_1!3480 (v!16189 lt!230048)))) lt!230058))))

(declare-fun seqFromList!1217 (List!5409) BalanceConc!3480)

(assert (=> b!547850 (= lt!230058 (seqFromList!1217 lt!230065))))

(declare-fun lt!230059 () Unit!9499)

(declare-fun lemmaInv!167 (TokenValueInjection!1854) Unit!9499)

(assert (=> b!547850 (= lt!230059 (lemmaInv!167 (transformation!1019 (rule!1739 token!491))))))

(declare-fun lt!230068 () Unit!9499)

(assert (=> b!547850 (= lt!230068 (lemmaInv!167 (transformation!1019 (rule!1739 (_1!3480 (v!16189 lt!230048))))))))

(declare-fun ruleValid!239 (LexerInterface!905 Rule!1838) Bool)

(assert (=> b!547850 (ruleValid!239 thiss!22590 (rule!1739 token!491))))

(declare-fun lt!230079 () Unit!9499)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!98 (LexerInterface!905 Rule!1838 List!5411) Unit!9499)

(assert (=> b!547850 (= lt!230079 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!98 thiss!22590 (rule!1739 token!491) rules!3103))))

(assert (=> b!547850 (ruleValid!239 thiss!22590 (rule!1739 (_1!3480 (v!16189 lt!230048))))))

(declare-fun lt!230054 () Unit!9499)

(assert (=> b!547850 (= lt!230054 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!98 thiss!22590 (rule!1739 (_1!3480 (v!16189 lt!230048))) rules!3103))))

(assert (=> b!547850 (isPrefix!661 input!2705 input!2705)))

(declare-fun lt!230043 () Unit!9499)

(declare-fun lemmaIsPrefixRefl!401 (List!5409 List!5409) Unit!9499)

(assert (=> b!547850 (= lt!230043 (lemmaIsPrefixRefl!401 input!2705 input!2705))))

(assert (=> b!547850 (= (_2!3480 (v!16189 lt!230048)) lt!230044)))

(declare-fun lt!230077 () Unit!9499)

(declare-fun lemmaSamePrefixThenSameSuffix!388 (List!5409 List!5409 List!5409 List!5409 List!5409) Unit!9499)

(assert (=> b!547850 (= lt!230077 (lemmaSamePrefixThenSameSuffix!388 lt!230065 (_2!3480 (v!16189 lt!230048)) lt!230065 lt!230044 input!2705))))

(declare-fun getSuffix!184 (List!5409 List!5409) List!5409)

(assert (=> b!547850 (= lt!230044 (getSuffix!184 input!2705 lt!230065))))

(declare-fun lt!230049 () List!5409)

(assert (=> b!547850 (isPrefix!661 lt!230065 lt!230049)))

(assert (=> b!547850 (= lt!230049 (++!1507 lt!230065 (_2!3480 (v!16189 lt!230048))))))

(declare-fun lt!230072 () Unit!9499)

(assert (=> b!547850 (= lt!230072 (lemmaConcatTwoListThenFirstIsPrefix!512 lt!230065 (_2!3480 (v!16189 lt!230048))))))

(declare-fun lt!230075 () Unit!9499)

(declare-fun lemmaCharactersSize!98 (Token!1774) Unit!9499)

(assert (=> b!547850 (= lt!230075 (lemmaCharactersSize!98 token!491))))

(declare-fun lt!230052 () Unit!9499)

(assert (=> b!547850 (= lt!230052 (lemmaCharactersSize!98 (_1!3480 (v!16189 lt!230048))))))

(declare-fun lt!230073 () Unit!9499)

(assert (=> b!547850 (= lt!230073 e!331127)))

(declare-fun c!103178 () Bool)

(assert (=> b!547850 (= c!103178 (> lt!230047 lt!230062))))

(assert (=> b!547850 (= lt!230062 (size!4327 lt!230050))))

(assert (=> b!547850 (= lt!230047 (size!4327 lt!230065))))

(declare-fun list!2239 (BalanceConc!3480) List!5409)

(declare-fun charsOf!648 (Token!1774) BalanceConc!3480)

(assert (=> b!547850 (= lt!230065 (list!2239 (charsOf!648 (_1!3480 (v!16189 lt!230048)))))))

(assert (=> b!547850 (= lt!230048 (Some!1368 lt!230041))))

(assert (=> b!547850 (= lt!230041 (tuple2!6433 (_1!3480 (v!16189 lt!230048)) (_2!3480 (v!16189 lt!230048))))))

(declare-fun lt!230055 () Unit!9499)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!104 (List!5409 List!5409 List!5409 List!5409) Unit!9499)

(assert (=> b!547850 (= lt!230055 (lemmaConcatSameAndSameSizesThenSameLists!104 lt!230050 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!547851 () Bool)

(assert (=> b!547851 (= e!331138 e!331144)))

(declare-fun res!234340 () Bool)

(assert (=> b!547851 (=> res!234340 e!331144)))

(assert (=> b!547851 (= res!234340 (or (not (= lt!230047 lt!230062)) (not (= lt!230049 input!2705)) (not (= lt!230049 lt!230050))))))

(declare-fun lt!230040 () Unit!9499)

(declare-fun lt!230056 () BalanceConc!3480)

(assert (=> b!547851 (= lt!230040 (lemmaSemiInverse!148 (transformation!1019 (rule!1739 token!491)) lt!230056))))

(declare-fun lt!230063 () Unit!9499)

(assert (=> b!547851 (= lt!230063 (lemmaSemiInverse!148 (transformation!1019 (rule!1739 (_1!3480 (v!16189 lt!230048)))) lt!230058))))

(declare-fun lt!230066 () Unit!9499)

(assert (=> b!547851 (= lt!230066 e!331136)))

(declare-fun c!103177 () Bool)

(assert (=> b!547851 (= c!103177 (< lt!230047 lt!230062))))

(declare-fun e!331148 () Bool)

(assert (=> b!547851 e!331148))

(declare-fun res!234337 () Bool)

(assert (=> b!547851 (=> (not res!234337) (not e!331148))))

(declare-fun maxPrefixOneRule!318 (LexerInterface!905 Rule!1838 List!5409) Option!1369)

(assert (=> b!547851 (= res!234337 (= (maxPrefixOneRule!318 thiss!22590 (rule!1739 token!491) lt!230057) (Some!1368 (tuple2!6433 (Token!1775 lt!230069 (rule!1739 token!491) lt!230062 lt!230050) suffix!1342))))))

(declare-fun lt!230045 () Unit!9499)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!70 (LexerInterface!905 List!5411 List!5409 List!5409 List!5409 Rule!1838) Unit!9499)

(assert (=> b!547851 (= lt!230045 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!70 thiss!22590 rules!3103 lt!230050 lt!230057 suffix!1342 (rule!1739 token!491)))))

(assert (=> b!547851 (= (maxPrefixOneRule!318 thiss!22590 (rule!1739 (_1!3480 (v!16189 lt!230048))) input!2705) (Some!1368 (tuple2!6433 (Token!1775 lt!230064 (rule!1739 (_1!3480 (v!16189 lt!230048))) lt!230047 lt!230065) (_2!3480 (v!16189 lt!230048)))))))

(declare-fun lt!230071 () Unit!9499)

(assert (=> b!547851 (= lt!230071 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!70 thiss!22590 rules!3103 lt!230065 input!2705 (_2!3480 (v!16189 lt!230048)) (rule!1739 (_1!3480 (v!16189 lt!230048)))))))

(assert (=> b!547851 e!331132))

(declare-fun res!234327 () Bool)

(assert (=> b!547851 (=> (not res!234327) (not e!331132))))

(assert (=> b!547851 (= res!234327 (= (value!33908 token!491) lt!230069))))

(assert (=> b!547851 (= lt!230069 (apply!1294 (transformation!1019 (rule!1739 token!491)) lt!230056))))

(assert (=> b!547851 (= lt!230056 (seqFromList!1217 lt!230050))))

(assert (=> b!547851 (= suffix!1342 lt!230070)))

(declare-fun lt!230061 () Unit!9499)

(assert (=> b!547851 (= lt!230061 (lemmaSamePrefixThenSameSuffix!388 lt!230050 suffix!1342 lt!230050 lt!230070 lt!230057))))

(assert (=> b!547851 (= lt!230070 (getSuffix!184 lt!230057 lt!230050))))

(declare-fun b!547852 () Bool)

(declare-fun e!331121 () Bool)

(assert (=> b!547852 (= e!331121 e!331126)))

(declare-fun res!234323 () Bool)

(assert (=> b!547852 (=> (not res!234323) (not e!331126))))

(assert (=> b!547852 (= res!234323 (= lt!230051 lt!230057))))

(assert (=> b!547852 (= lt!230051 (++!1507 lt!230050 suffix!1342))))

(declare-fun e!331135 () Bool)

(assert (=> b!547853 (= e!331135 (and tp!173708 tp!173712))))

(declare-fun b!547854 () Bool)

(assert (=> b!547854 (= e!331124 e!331121)))

(declare-fun res!234315 () Bool)

(assert (=> b!547854 (=> (not res!234315) (not e!331121))))

(get-info :version)

(assert (=> b!547854 (= res!234315 ((_ is Some!1368) lt!230048))))

(assert (=> b!547854 (= lt!230048 (maxPrefix!603 thiss!22590 rules!3103 input!2705))))

(declare-fun b!547855 () Bool)

(declare-fun res!234322 () Bool)

(assert (=> b!547855 (=> res!234322 e!331144)))

(assert (=> b!547855 (= res!234322 (not (contains!1261 rules!3103 (rule!1739 token!491))))))

(declare-fun b!547856 () Bool)

(declare-fun Unit!9505 () Unit!9499)

(assert (=> b!547856 (= e!331136 Unit!9505)))

(declare-fun b!547857 () Bool)

(assert (=> b!547857 (= e!331148 e!331134)))

(declare-fun res!234319 () Bool)

(assert (=> b!547857 (=> res!234319 e!331134)))

(assert (=> b!547857 (= res!234319 (>= lt!230047 lt!230062))))

(declare-fun b!547859 () Bool)

(declare-fun res!234333 () Bool)

(assert (=> b!547859 (=> (not res!234333) (not e!331132))))

(assert (=> b!547859 (= res!234333 (= (size!4326 token!491) (size!4327 (originalCharacters!1058 token!491))))))

(declare-fun b!547858 () Bool)

(assert (=> b!547858 (= e!331128 e!331122)))

(declare-fun res!234325 () Bool)

(assert (=> b!547858 (=> (not res!234325) (not e!331122))))

(assert (=> b!547858 (= res!234325 (= lt!230050 input!2705))))

(assert (=> b!547858 (= lt!230050 (list!2239 (charsOf!648 token!491)))))

(declare-fun res!234338 () Bool)

(assert (=> start!50676 (=> (not res!234338) (not e!331128))))

(assert (=> start!50676 (= res!234338 ((_ is Lexer!903) thiss!22590))))

(assert (=> start!50676 e!331128))

(assert (=> start!50676 e!331133))

(assert (=> start!50676 e!331129))

(declare-fun inv!6775 (Token!1774) Bool)

(assert (=> start!50676 (and (inv!6775 token!491) e!331142)))

(assert (=> start!50676 true))

(declare-fun e!331137 () Bool)

(assert (=> start!50676 e!331137))

(declare-fun b!547860 () Bool)

(declare-fun res!234335 () Bool)

(assert (=> b!547860 (=> res!234335 e!331144)))

(assert (=> b!547860 (= res!234335 (or (not (= lt!230065 lt!230050)) (not (= (originalCharacters!1058 (_1!3480 (v!16189 lt!230048))) (originalCharacters!1058 token!491)))))))

(declare-fun b!547861 () Bool)

(declare-fun Unit!9506 () Unit!9499)

(assert (=> b!547861 (= e!331130 Unit!9506)))

(assert (=> b!547862 (= e!331147 (and tp!173707 tp!173710))))

(declare-fun tp!173706 () Bool)

(declare-fun b!547863 () Bool)

(assert (=> b!547863 (= e!331140 (and tp!173706 (inv!6771 (tag!1281 (h!10802 rules!3103))) (inv!6774 (transformation!1019 (h!10802 rules!3103))) e!331135))))

(declare-fun b!547864 () Bool)

(declare-fun tp!173714 () Bool)

(assert (=> b!547864 (= e!331137 (and tp_is_empty!3061 tp!173714))))

(declare-fun b!547865 () Bool)

(declare-fun res!234330 () Bool)

(assert (=> b!547865 (=> (not res!234330) (not e!331128))))

(declare-fun isEmpty!3899 (List!5411) Bool)

(assert (=> b!547865 (= res!234330 (not (isEmpty!3899 rules!3103)))))

(assert (= (and start!50676 res!234338) b!547865))

(assert (= (and b!547865 res!234330) b!547839))

(assert (= (and b!547839 res!234328) b!547826))

(assert (= (and b!547826 res!234334) b!547858))

(assert (= (and b!547858 res!234325) b!547829))

(assert (= (and b!547829 res!234331) b!547838))

(assert (= (and b!547838 res!234316) b!547854))

(assert (= (and b!547854 res!234315) b!547852))

(assert (= (and b!547852 res!234323) b!547850))

(assert (= (and b!547850 c!103178) b!547845))

(assert (= (and b!547850 (not c!103178)) b!547842))

(assert (= (and b!547850 res!234332) b!547830))

(assert (= (and b!547830 res!234321) b!547833))

(assert (= (and b!547850 (not res!234336)) b!547851))

(assert (= (and b!547851 res!234327) b!547859))

(assert (= (and b!547859 res!234333) b!547827))

(assert (= (and b!547851 res!234337) b!547857))

(assert (= (and b!547857 (not res!234319)) b!547841))

(assert (= (and b!547841 res!234339) b!547848))

(assert (= (and b!547848 res!234318) b!547831))

(assert (= (and b!547851 c!103177) b!547836))

(assert (= (and b!547851 (not c!103177)) b!547856))

(assert (= (and b!547836 res!234326) b!547835))

(assert (= (and b!547851 (not res!234340)) b!547828))

(assert (= (and b!547828 (not res!234324)) b!547860))

(assert (= (and b!547860 (not res!234335)) b!547832))

(assert (= (and b!547832 (not res!234320)) b!547855))

(assert (= (and b!547855 (not res!234322)) b!547847))

(assert (= (and b!547847 (not res!234317)) b!547846))

(assert (= (and b!547846 c!103179) b!547837))

(assert (= (and b!547846 (not c!103179)) b!547861))

(assert (= (and b!547837 res!234329) b!547834))

(assert (= (and start!50676 ((_ is Cons!5399) suffix!1342)) b!547844))

(assert (= b!547863 b!547853))

(assert (= b!547843 b!547863))

(assert (= (and start!50676 ((_ is Cons!5401) rules!3103)) b!547843))

(assert (= b!547840 b!547862))

(assert (= b!547849 b!547840))

(assert (= start!50676 b!547849))

(assert (= (and start!50676 ((_ is Cons!5399) input!2705)) b!547864))

(declare-fun m!796837 () Bool)

(assert (=> b!547850 m!796837))

(declare-fun m!796839 () Bool)

(assert (=> b!547850 m!796839))

(declare-fun m!796841 () Bool)

(assert (=> b!547850 m!796841))

(declare-fun m!796843 () Bool)

(assert (=> b!547850 m!796843))

(declare-fun m!796845 () Bool)

(assert (=> b!547850 m!796845))

(declare-fun m!796847 () Bool)

(assert (=> b!547850 m!796847))

(declare-fun m!796849 () Bool)

(assert (=> b!547850 m!796849))

(declare-fun m!796851 () Bool)

(assert (=> b!547850 m!796851))

(declare-fun m!796853 () Bool)

(assert (=> b!547850 m!796853))

(declare-fun m!796855 () Bool)

(assert (=> b!547850 m!796855))

(declare-fun m!796857 () Bool)

(assert (=> b!547850 m!796857))

(declare-fun m!796859 () Bool)

(assert (=> b!547850 m!796859))

(declare-fun m!796861 () Bool)

(assert (=> b!547850 m!796861))

(declare-fun m!796863 () Bool)

(assert (=> b!547850 m!796863))

(declare-fun m!796865 () Bool)

(assert (=> b!547850 m!796865))

(declare-fun m!796867 () Bool)

(assert (=> b!547850 m!796867))

(declare-fun m!796869 () Bool)

(assert (=> b!547850 m!796869))

(declare-fun m!796871 () Bool)

(assert (=> b!547850 m!796871))

(declare-fun m!796873 () Bool)

(assert (=> b!547850 m!796873))

(declare-fun m!796875 () Bool)

(assert (=> b!547850 m!796875))

(declare-fun m!796877 () Bool)

(assert (=> b!547850 m!796877))

(assert (=> b!547850 m!796877))

(declare-fun m!796879 () Bool)

(assert (=> b!547850 m!796879))

(declare-fun m!796881 () Bool)

(assert (=> b!547850 m!796881))

(declare-fun m!796883 () Bool)

(assert (=> b!547850 m!796883))

(declare-fun m!796885 () Bool)

(assert (=> b!547850 m!796885))

(declare-fun m!796887 () Bool)

(assert (=> b!547850 m!796887))

(declare-fun m!796889 () Bool)

(assert (=> b!547850 m!796889))

(declare-fun m!796891 () Bool)

(assert (=> b!547837 m!796891))

(declare-fun m!796893 () Bool)

(assert (=> b!547837 m!796893))

(declare-fun m!796895 () Bool)

(assert (=> b!547852 m!796895))

(declare-fun m!796897 () Bool)

(assert (=> b!547840 m!796897))

(declare-fun m!796899 () Bool)

(assert (=> b!547840 m!796899))

(declare-fun m!796901 () Bool)

(assert (=> b!547829 m!796901))

(declare-fun m!796903 () Bool)

(assert (=> b!547829 m!796903))

(declare-fun m!796905 () Bool)

(assert (=> b!547829 m!796905))

(declare-fun m!796907 () Bool)

(assert (=> b!547846 m!796907))

(declare-fun m!796909 () Bool)

(assert (=> b!547846 m!796909))

(declare-fun m!796911 () Bool)

(assert (=> b!547839 m!796911))

(declare-fun m!796913 () Bool)

(assert (=> b!547826 m!796913))

(declare-fun m!796915 () Bool)

(assert (=> b!547841 m!796915))

(declare-fun m!796917 () Bool)

(assert (=> b!547858 m!796917))

(assert (=> b!547858 m!796917))

(declare-fun m!796919 () Bool)

(assert (=> b!547858 m!796919))

(declare-fun m!796921 () Bool)

(assert (=> b!547851 m!796921))

(declare-fun m!796923 () Bool)

(assert (=> b!547851 m!796923))

(declare-fun m!796925 () Bool)

(assert (=> b!547851 m!796925))

(declare-fun m!796927 () Bool)

(assert (=> b!547851 m!796927))

(declare-fun m!796929 () Bool)

(assert (=> b!547851 m!796929))

(declare-fun m!796931 () Bool)

(assert (=> b!547851 m!796931))

(declare-fun m!796933 () Bool)

(assert (=> b!547851 m!796933))

(declare-fun m!796935 () Bool)

(assert (=> b!547851 m!796935))

(declare-fun m!796937 () Bool)

(assert (=> b!547851 m!796937))

(declare-fun m!796939 () Bool)

(assert (=> b!547851 m!796939))

(declare-fun m!796941 () Bool)

(assert (=> b!547849 m!796941))

(assert (=> b!547836 m!796933))

(declare-fun m!796943 () Bool)

(assert (=> b!547836 m!796943))

(declare-fun m!796945 () Bool)

(assert (=> b!547836 m!796945))

(declare-fun m!796947 () Bool)

(assert (=> b!547859 m!796947))

(declare-fun m!796949 () Bool)

(assert (=> b!547828 m!796949))

(declare-fun m!796951 () Bool)

(assert (=> b!547863 m!796951))

(declare-fun m!796953 () Bool)

(assert (=> b!547863 m!796953))

(declare-fun m!796955 () Bool)

(assert (=> b!547832 m!796955))

(declare-fun m!796957 () Bool)

(assert (=> b!547854 m!796957))

(declare-fun m!796959 () Bool)

(assert (=> b!547855 m!796959))

(declare-fun m!796961 () Bool)

(assert (=> start!50676 m!796961))

(declare-fun m!796963 () Bool)

(assert (=> b!547830 m!796963))

(declare-fun m!796965 () Bool)

(assert (=> b!547865 m!796965))

(declare-fun m!796967 () Bool)

(assert (=> b!547838 m!796967))

(declare-fun m!796969 () Bool)

(assert (=> b!547848 m!796969))

(check-sat (not b!547865) (not b_next!15257) (not b!547863) (not b!547832) (not b!547841) (not b!547844) (not b!547855) (not b!547854) (not b!547859) (not b!547838) (not b!547828) (not b_next!15259) (not b!547830) (not b!547848) (not b!547843) b_and!53507 (not b_next!15261) (not b!547864) (not b!547839) (not b!547836) b_and!53513 b_and!53509 (not b_next!15263) (not b!547846) (not b!547826) (not b!547837) (not b!547840) (not b!547829) (not start!50676) (not b!547849) (not b!547851) (not b!547858) tp_is_empty!3061 b_and!53511 (not b!547852) (not b!547850))
(check-sat (not b_next!15257) (not b_next!15259) b_and!53507 (not b_next!15261) b_and!53511 b_and!53513 b_and!53509 (not b_next!15263))
