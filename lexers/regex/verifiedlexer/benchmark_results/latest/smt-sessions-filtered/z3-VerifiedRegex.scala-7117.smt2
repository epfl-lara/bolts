; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!377404 () Bool)

(assert start!377404)

(declare-fun b!4007875 () Bool)

(declare-fun b_free!111489 () Bool)

(declare-fun b_next!112193 () Bool)

(assert (=> b!4007875 (= b_free!111489 (not b_next!112193))))

(declare-fun tp!1219624 () Bool)

(declare-fun b_and!307815 () Bool)

(assert (=> b!4007875 (= tp!1219624 b_and!307815)))

(declare-fun b_free!111491 () Bool)

(declare-fun b_next!112195 () Bool)

(assert (=> b!4007875 (= b_free!111491 (not b_next!112195))))

(declare-fun tp!1219634 () Bool)

(declare-fun b_and!307817 () Bool)

(assert (=> b!4007875 (= tp!1219634 b_and!307817)))

(declare-fun b!4007900 () Bool)

(declare-fun b_free!111493 () Bool)

(declare-fun b_next!112197 () Bool)

(assert (=> b!4007900 (= b_free!111493 (not b_next!112197))))

(declare-fun tp!1219625 () Bool)

(declare-fun b_and!307819 () Bool)

(assert (=> b!4007900 (= tp!1219625 b_and!307819)))

(declare-fun b_free!111495 () Bool)

(declare-fun b_next!112199 () Bool)

(assert (=> b!4007900 (= b_free!111495 (not b_next!112199))))

(declare-fun tp!1219632 () Bool)

(declare-fun b_and!307821 () Bool)

(assert (=> b!4007900 (= tp!1219632 b_and!307821)))

(declare-fun b!4007873 () Bool)

(declare-fun e!2485530 () Bool)

(declare-fun e!2485513 () Bool)

(assert (=> b!4007873 (= e!2485530 e!2485513)))

(declare-fun res!1628852 () Bool)

(assert (=> b!4007873 (=> res!1628852 e!2485513)))

(declare-datatypes ((C!23640 0))(
  ( (C!23641 (val!13914 Int)) )
))
(declare-datatypes ((List!43028 0))(
  ( (Nil!42904) (Cons!42904 (h!48324 C!23640) (t!332653 List!43028)) )
))
(declare-fun lt!1418264 () List!43028)

(declare-fun lt!1418276 () List!43028)

(assert (=> b!4007873 (= res!1628852 (not (= lt!1418264 lt!1418276)))))

(declare-fun lt!1418254 () List!43028)

(declare-fun lt!1418275 () List!43028)

(declare-fun ++!11224 (List!43028 List!43028) List!43028)

(assert (=> b!4007873 (= lt!1418264 (++!11224 lt!1418254 lt!1418275))))

(declare-fun getSuffix!2334 (List!43028 List!43028) List!43028)

(assert (=> b!4007873 (= lt!1418275 (getSuffix!2334 lt!1418276 lt!1418254))))

(declare-fun e!2485532 () Bool)

(assert (=> b!4007873 e!2485532))

(declare-fun res!1628843 () Bool)

(assert (=> b!4007873 (=> (not res!1628843) (not e!2485532))))

(declare-fun isPrefix!3909 (List!43028 List!43028) Bool)

(assert (=> b!4007873 (= res!1628843 (isPrefix!3909 lt!1418276 lt!1418276))))

(declare-datatypes ((Unit!61905 0))(
  ( (Unit!61906) )
))
(declare-fun lt!1418252 () Unit!61905)

(declare-fun lemmaIsPrefixRefl!2485 (List!43028 List!43028) Unit!61905)

(assert (=> b!4007873 (= lt!1418252 (lemmaIsPrefixRefl!2485 lt!1418276 lt!1418276))))

(declare-fun b!4007874 () Bool)

(declare-fun e!2485529 () Bool)

(declare-fun tp_is_empty!20425 () Bool)

(declare-fun tp!1219622 () Bool)

(assert (=> b!4007874 (= e!2485529 (and tp_is_empty!20425 tp!1219622))))

(declare-fun e!2485511 () Bool)

(assert (=> b!4007875 (= e!2485511 (and tp!1219624 tp!1219634))))

(declare-fun b!4007876 () Bool)

(declare-fun res!1628849 () Bool)

(declare-fun e!2485515 () Bool)

(assert (=> b!4007876 (=> (not res!1628849) (not e!2485515))))

(declare-fun suffix!1299 () List!43028)

(declare-fun newSuffix!27 () List!43028)

(declare-fun size!32079 (List!43028) Int)

(assert (=> b!4007876 (= res!1628849 (>= (size!32079 suffix!1299) (size!32079 newSuffix!27)))))

(declare-fun b!4007877 () Bool)

(declare-fun e!2485524 () Bool)

(declare-fun tp!1219630 () Bool)

(assert (=> b!4007877 (= e!2485524 (and tp_is_empty!20425 tp!1219630))))

(declare-fun b!4007878 () Bool)

(declare-fun res!1628844 () Bool)

(assert (=> b!4007878 (=> (not res!1628844) (not e!2485515))))

(assert (=> b!4007878 (= res!1628844 (isPrefix!3909 newSuffix!27 suffix!1299))))

(declare-fun b!4007879 () Bool)

(declare-fun e!2485510 () Bool)

(assert (=> b!4007879 (= e!2485513 e!2485510)))

(declare-fun res!1628853 () Bool)

(assert (=> b!4007879 (=> res!1628853 e!2485510)))

(declare-datatypes ((IArray!26071 0))(
  ( (IArray!26072 (innerList!13093 List!43028)) )
))
(declare-datatypes ((Conc!13033 0))(
  ( (Node!13033 (left!32370 Conc!13033) (right!32700 Conc!13033) (csize!26296 Int) (cheight!13244 Int)) (Leaf!20151 (xs!16339 IArray!26071) (csize!26297 Int)) (Empty!13033) )
))
(declare-datatypes ((BalanceConc!25660 0))(
  ( (BalanceConc!25661 (c!692980 Conc!13033)) )
))
(declare-datatypes ((List!43029 0))(
  ( (Nil!42905) (Cons!42905 (h!48325 (_ BitVec 16)) (t!332654 List!43029)) )
))
(declare-datatypes ((TokenValue!7052 0))(
  ( (FloatLiteralValue!14104 (text!49809 List!43029)) (TokenValueExt!7051 (__x!26321 Int)) (Broken!35260 (value!215035 List!43029)) (Object!7175) (End!7052) (Def!7052) (Underscore!7052) (Match!7052) (Else!7052) (Error!7052) (Case!7052) (If!7052) (Extends!7052) (Abstract!7052) (Class!7052) (Val!7052) (DelimiterValue!14104 (del!7112 List!43029)) (KeywordValue!7058 (value!215036 List!43029)) (CommentValue!14104 (value!215037 List!43029)) (WhitespaceValue!14104 (value!215038 List!43029)) (IndentationValue!7052 (value!215039 List!43029)) (String!48977) (Int32!7052) (Broken!35261 (value!215040 List!43029)) (Boolean!7053) (Unit!61907) (OperatorValue!7055 (op!7112 List!43029)) (IdentifierValue!14104 (value!215041 List!43029)) (IdentifierValue!14105 (value!215042 List!43029)) (WhitespaceValue!14105 (value!215043 List!43029)) (True!14104) (False!14104) (Broken!35262 (value!215044 List!43029)) (Broken!35263 (value!215045 List!43029)) (True!14105) (RightBrace!7052) (RightBracket!7052) (Colon!7052) (Null!7052) (Comma!7052) (LeftBracket!7052) (False!14105) (LeftBrace!7052) (ImaginaryLiteralValue!7052 (text!49810 List!43029)) (StringLiteralValue!21156 (value!215046 List!43029)) (EOFValue!7052 (value!215047 List!43029)) (IdentValue!7052 (value!215048 List!43029)) (DelimiterValue!14105 (value!215049 List!43029)) (DedentValue!7052 (value!215050 List!43029)) (NewLineValue!7052 (value!215051 List!43029)) (IntegerValue!21156 (value!215052 (_ BitVec 32)) (text!49811 List!43029)) (IntegerValue!21157 (value!215053 Int) (text!49812 List!43029)) (Times!7052) (Or!7052) (Equal!7052) (Minus!7052) (Broken!35264 (value!215054 List!43029)) (And!7052) (Div!7052) (LessEqual!7052) (Mod!7052) (Concat!18779) (Not!7052) (Plus!7052) (SpaceValue!7052 (value!215055 List!43029)) (IntegerValue!21158 (value!215056 Int) (text!49813 List!43029)) (StringLiteralValue!21157 (text!49814 List!43029)) (FloatLiteralValue!14105 (text!49815 List!43029)) (BytesLiteralValue!7052 (value!215057 List!43029)) (CommentValue!14105 (value!215058 List!43029)) (StringLiteralValue!21158 (value!215059 List!43029)) (ErrorTokenValue!7052 (msg!7113 List!43029)) )
))
(declare-datatypes ((Regex!11727 0))(
  ( (ElementMatch!11727 (c!692981 C!23640)) (Concat!18780 (regOne!23966 Regex!11727) (regTwo!23966 Regex!11727)) (EmptyExpr!11727) (Star!11727 (reg!12056 Regex!11727)) (EmptyLang!11727) (Union!11727 (regOne!23967 Regex!11727) (regTwo!23967 Regex!11727)) )
))
(declare-datatypes ((String!48978 0))(
  ( (String!48979 (value!215060 String)) )
))
(declare-datatypes ((TokenValueInjection!13532 0))(
  ( (TokenValueInjection!13533 (toValue!9322 Int) (toChars!9181 Int)) )
))
(declare-datatypes ((Rule!13444 0))(
  ( (Rule!13445 (regex!6822 Regex!11727) (tag!7682 String!48978) (isSeparator!6822 Bool) (transformation!6822 TokenValueInjection!13532)) )
))
(declare-datatypes ((Token!12782 0))(
  ( (Token!12783 (value!215061 TokenValue!7052) (rule!9862 Rule!13444) (size!32080 Int) (originalCharacters!7422 List!43028)) )
))
(declare-datatypes ((tuple2!42058 0))(
  ( (tuple2!42059 (_1!24163 Token!12782) (_2!24163 List!43028)) )
))
(declare-datatypes ((Option!9236 0))(
  ( (None!9235) (Some!9235 (v!39601 tuple2!42058)) )
))
(declare-fun lt!1418269 () Option!9236)

(get-info :version)

(assert (=> b!4007879 (= res!1628853 (not ((_ is Some!9235) lt!1418269)))))

(declare-fun lt!1418249 () List!43028)

(declare-datatypes ((LexerInterface!6411 0))(
  ( (LexerInterfaceExt!6408 (__x!26322 Int)) (Lexer!6409) )
))
(declare-fun thiss!21717 () LexerInterface!6411)

(declare-datatypes ((List!43030 0))(
  ( (Nil!42906) (Cons!42906 (h!48326 Rule!13444) (t!332655 List!43030)) )
))
(declare-fun rules!2999 () List!43030)

(declare-fun maxPrefix!3709 (LexerInterface!6411 List!43030 List!43028) Option!9236)

(assert (=> b!4007879 (= lt!1418269 (maxPrefix!3709 thiss!21717 rules!2999 lt!1418249))))

(declare-fun suffixResult!105 () List!43028)

(declare-fun lt!1418271 () Token!12782)

(declare-fun lt!1418243 () tuple2!42058)

(assert (=> b!4007879 (and (= suffixResult!105 lt!1418275) (= lt!1418243 (tuple2!42059 lt!1418271 lt!1418275)))))

(declare-fun lt!1418263 () Unit!61905)

(declare-fun lemmaSamePrefixThenSameSuffix!2080 (List!43028 List!43028 List!43028 List!43028 List!43028) Unit!61905)

(assert (=> b!4007879 (= lt!1418263 (lemmaSamePrefixThenSameSuffix!2080 lt!1418254 suffixResult!105 lt!1418254 lt!1418275 lt!1418276))))

(assert (=> b!4007879 (isPrefix!3909 lt!1418254 lt!1418264)))

(declare-fun lt!1418283 () Unit!61905)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2750 (List!43028 List!43028) Unit!61905)

(assert (=> b!4007879 (= lt!1418283 (lemmaConcatTwoListThenFirstIsPrefix!2750 lt!1418254 lt!1418275))))

(declare-fun token!484 () Token!12782)

(declare-fun tp!1219631 () Bool)

(declare-fun e!2485517 () Bool)

(declare-fun b!4007880 () Bool)

(declare-fun e!2485534 () Bool)

(declare-fun inv!21 (TokenValue!7052) Bool)

(assert (=> b!4007880 (= e!2485534 (and (inv!21 (value!215061 token!484)) e!2485517 tp!1219631))))

(declare-fun b!4007881 () Bool)

(declare-fun e!2485516 () Bool)

(declare-fun e!2485536 () Bool)

(assert (=> b!4007881 (= e!2485516 e!2485536)))

(declare-fun res!1628850 () Bool)

(assert (=> b!4007881 (=> res!1628850 e!2485536)))

(declare-fun lt!1418247 () Option!9236)

(declare-fun lt!1418270 () Option!9236)

(assert (=> b!4007881 (= res!1628850 (not (= lt!1418247 lt!1418270)))))

(assert (=> b!4007881 (= lt!1418247 (Some!9235 (tuple2!42059 lt!1418271 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2729 (LexerInterface!6411 Rule!13444 List!43028) Option!9236)

(assert (=> b!4007881 (= lt!1418247 (maxPrefixOneRule!2729 thiss!21717 (rule!9862 token!484) lt!1418276))))

(declare-fun lt!1418242 () TokenValue!7052)

(declare-fun lt!1418267 () Int)

(assert (=> b!4007881 (= lt!1418271 (Token!12783 lt!1418242 (rule!9862 token!484) lt!1418267 lt!1418254))))

(declare-fun apply!10019 (TokenValueInjection!13532 BalanceConc!25660) TokenValue!7052)

(declare-fun seqFromList!5047 (List!43028) BalanceConc!25660)

(assert (=> b!4007881 (= lt!1418242 (apply!10019 (transformation!6822 (rule!9862 token!484)) (seqFromList!5047 lt!1418254)))))

(declare-fun lt!1418248 () Unit!61905)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1547 (LexerInterface!6411 List!43030 List!43028 List!43028 List!43028 Rule!13444) Unit!61905)

(assert (=> b!4007881 (= lt!1418248 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1547 thiss!21717 rules!2999 lt!1418254 lt!1418276 suffixResult!105 (rule!9862 token!484)))))

(declare-fun lt!1418244 () List!43028)

(assert (=> b!4007881 (= lt!1418244 suffixResult!105)))

(declare-fun lt!1418266 () Unit!61905)

(assert (=> b!4007881 (= lt!1418266 (lemmaSamePrefixThenSameSuffix!2080 lt!1418254 lt!1418244 lt!1418254 suffixResult!105 lt!1418276))))

(declare-fun lt!1418241 () List!43028)

(assert (=> b!4007881 (isPrefix!3909 lt!1418254 lt!1418241)))

(declare-fun lt!1418262 () Unit!61905)

(assert (=> b!4007881 (= lt!1418262 (lemmaConcatTwoListThenFirstIsPrefix!2750 lt!1418254 lt!1418244))))

(declare-fun b!4007882 () Bool)

(declare-fun e!2485525 () Bool)

(declare-fun e!2485519 () Bool)

(assert (=> b!4007882 (= e!2485525 (not e!2485519))))

(declare-fun res!1628847 () Bool)

(assert (=> b!4007882 (=> res!1628847 e!2485519)))

(declare-fun lt!1418284 () List!43028)

(assert (=> b!4007882 (= res!1628847 (not (= lt!1418284 lt!1418276)))))

(assert (=> b!4007882 (= lt!1418284 (++!11224 lt!1418254 suffixResult!105))))

(declare-fun lt!1418250 () Unit!61905)

(declare-fun lemmaInv!1037 (TokenValueInjection!13532) Unit!61905)

(assert (=> b!4007882 (= lt!1418250 (lemmaInv!1037 (transformation!6822 (rule!9862 token!484))))))

(declare-fun ruleValid!2754 (LexerInterface!6411 Rule!13444) Bool)

(assert (=> b!4007882 (ruleValid!2754 thiss!21717 (rule!9862 token!484))))

(declare-fun lt!1418253 () Unit!61905)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1828 (LexerInterface!6411 Rule!13444 List!43030) Unit!61905)

(assert (=> b!4007882 (= lt!1418253 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1828 thiss!21717 (rule!9862 token!484) rules!2999))))

(declare-fun b!4007883 () Bool)

(declare-fun e!2485535 () Bool)

(assert (=> b!4007883 (= e!2485535 e!2485516)))

(declare-fun res!1628848 () Bool)

(assert (=> b!4007883 (=> res!1628848 e!2485516)))

(declare-fun lt!1418265 () List!43028)

(assert (=> b!4007883 (= res!1628848 (or (not (= lt!1418276 lt!1418265)) (not (= lt!1418276 lt!1418241))))))

(assert (=> b!4007883 (= lt!1418265 lt!1418241)))

(assert (=> b!4007883 (= lt!1418241 (++!11224 lt!1418254 lt!1418244))))

(declare-fun lt!1418268 () List!43028)

(assert (=> b!4007883 (= lt!1418265 (++!11224 lt!1418268 suffix!1299))))

(declare-fun lt!1418281 () List!43028)

(assert (=> b!4007883 (= lt!1418244 (++!11224 lt!1418281 suffix!1299))))

(declare-fun lt!1418245 () Unit!61905)

(declare-fun lemmaConcatAssociativity!2534 (List!43028 List!43028 List!43028) Unit!61905)

(assert (=> b!4007883 (= lt!1418245 (lemmaConcatAssociativity!2534 lt!1418254 lt!1418281 suffix!1299))))

(declare-fun b!4007884 () Bool)

(declare-fun e!2485527 () Bool)

(declare-fun tp!1219623 () Bool)

(declare-fun inv!57300 (String!48978) Bool)

(declare-fun inv!57303 (TokenValueInjection!13532) Bool)

(assert (=> b!4007884 (= e!2485527 (and tp!1219623 (inv!57300 (tag!7682 (h!48326 rules!2999))) (inv!57303 (transformation!6822 (h!48326 rules!2999))) e!2485511))))

(declare-fun b!4007885 () Bool)

(declare-fun res!1628840 () Bool)

(assert (=> b!4007885 (=> (not res!1628840) (not e!2485532))))

(assert (=> b!4007885 (= res!1628840 (= (size!32080 token!484) (size!32079 (originalCharacters!7422 token!484))))))

(declare-fun b!4007886 () Bool)

(declare-fun e!2485521 () Bool)

(assert (=> b!4007886 (= e!2485519 e!2485521)))

(declare-fun res!1628839 () Bool)

(assert (=> b!4007886 (=> res!1628839 e!2485521)))

(assert (=> b!4007886 (= res!1628839 (not (isPrefix!3909 lt!1418254 lt!1418276)))))

(declare-fun prefix!494 () List!43028)

(assert (=> b!4007886 (isPrefix!3909 prefix!494 lt!1418276)))

(declare-fun lt!1418255 () Unit!61905)

(assert (=> b!4007886 (= lt!1418255 (lemmaConcatTwoListThenFirstIsPrefix!2750 prefix!494 suffix!1299))))

(assert (=> b!4007886 (isPrefix!3909 lt!1418254 lt!1418284)))

(declare-fun lt!1418246 () Unit!61905)

(assert (=> b!4007886 (= lt!1418246 (lemmaConcatTwoListThenFirstIsPrefix!2750 lt!1418254 suffixResult!105))))

(declare-fun b!4007887 () Bool)

(declare-fun lt!1418272 () Option!9236)

(assert (=> b!4007887 (= e!2485510 (= lt!1418272 (Some!9235 (v!39601 lt!1418269))))))

(declare-fun lt!1418251 () List!43028)

(declare-fun newSuffixResult!27 () List!43028)

(assert (=> b!4007887 (isPrefix!3909 lt!1418251 (++!11224 lt!1418251 newSuffixResult!27))))

(declare-fun lt!1418258 () Unit!61905)

(assert (=> b!4007887 (= lt!1418258 (lemmaConcatTwoListThenFirstIsPrefix!2750 lt!1418251 newSuffixResult!27))))

(assert (=> b!4007887 (isPrefix!3909 lt!1418251 (++!11224 lt!1418251 (_2!24163 (v!39601 lt!1418269))))))

(declare-fun lt!1418282 () Unit!61905)

(assert (=> b!4007887 (= lt!1418282 (lemmaConcatTwoListThenFirstIsPrefix!2750 lt!1418251 (_2!24163 (v!39601 lt!1418269))))))

(declare-fun lt!1418261 () Int)

(declare-fun lt!1418259 () TokenValue!7052)

(assert (=> b!4007887 (= lt!1418272 (Some!9235 (tuple2!42059 (Token!12783 lt!1418259 (rule!9862 (_1!24163 (v!39601 lt!1418269))) lt!1418261 lt!1418251) (_2!24163 (v!39601 lt!1418269)))))))

(assert (=> b!4007887 (= lt!1418272 (maxPrefixOneRule!2729 thiss!21717 (rule!9862 (_1!24163 (v!39601 lt!1418269))) lt!1418249))))

(assert (=> b!4007887 (= lt!1418261 (size!32079 lt!1418251))))

(assert (=> b!4007887 (= lt!1418259 (apply!10019 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))) (seqFromList!5047 lt!1418251)))))

(declare-fun lt!1418278 () Unit!61905)

(assert (=> b!4007887 (= lt!1418278 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1547 thiss!21717 rules!2999 lt!1418251 lt!1418249 (_2!24163 (v!39601 lt!1418269)) (rule!9862 (_1!24163 (v!39601 lt!1418269)))))))

(declare-fun list!15942 (BalanceConc!25660) List!43028)

(declare-fun charsOf!4638 (Token!12782) BalanceConc!25660)

(assert (=> b!4007887 (= lt!1418251 (list!15942 (charsOf!4638 (_1!24163 (v!39601 lt!1418269)))))))

(declare-fun lt!1418260 () Unit!61905)

(assert (=> b!4007887 (= lt!1418260 (lemmaInv!1037 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))))))

(assert (=> b!4007887 (ruleValid!2754 thiss!21717 (rule!9862 (_1!24163 (v!39601 lt!1418269))))))

(declare-fun lt!1418257 () Unit!61905)

(assert (=> b!4007887 (= lt!1418257 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1828 thiss!21717 (rule!9862 (_1!24163 (v!39601 lt!1418269))) rules!2999))))

(declare-fun lt!1418279 () Unit!61905)

(declare-fun lemmaCharactersSize!1381 (Token!12782) Unit!61905)

(assert (=> b!4007887 (= lt!1418279 (lemmaCharactersSize!1381 token!484))))

(declare-fun lt!1418273 () Unit!61905)

(assert (=> b!4007887 (= lt!1418273 (lemmaCharactersSize!1381 (_1!24163 (v!39601 lt!1418269))))))

(declare-fun b!4007888 () Bool)

(declare-fun res!1628837 () Bool)

(assert (=> b!4007888 (=> (not res!1628837) (not e!2485515))))

(declare-fun rulesInvariant!5754 (LexerInterface!6411 List!43030) Bool)

(assert (=> b!4007888 (= res!1628837 (rulesInvariant!5754 thiss!21717 rules!2999))))

(declare-fun b!4007889 () Bool)

(declare-fun res!1628854 () Bool)

(assert (=> b!4007889 (=> (not res!1628854) (not e!2485515))))

(declare-fun isEmpty!25630 (List!43030) Bool)

(assert (=> b!4007889 (= res!1628854 (not (isEmpty!25630 rules!2999)))))

(declare-fun b!4007890 () Bool)

(assert (=> b!4007890 (= e!2485532 (and (= (size!32080 token!484) lt!1418267) (= (originalCharacters!7422 token!484) lt!1418254)))))

(declare-fun b!4007891 () Bool)

(declare-fun e!2485518 () Bool)

(declare-fun tp!1219629 () Bool)

(assert (=> b!4007891 (= e!2485518 (and tp_is_empty!20425 tp!1219629))))

(declare-fun b!4007892 () Bool)

(declare-fun e!2485523 () Bool)

(declare-fun tp!1219633 () Bool)

(assert (=> b!4007892 (= e!2485523 (and tp_is_empty!20425 tp!1219633))))

(declare-fun b!4007893 () Bool)

(declare-fun e!2485528 () Bool)

(assert (=> b!4007893 (= e!2485528 e!2485525)))

(declare-fun res!1628841 () Bool)

(assert (=> b!4007893 (=> (not res!1628841) (not e!2485525))))

(assert (=> b!4007893 (= res!1628841 (= (maxPrefix!3709 thiss!21717 rules!2999 lt!1418276) lt!1418270))))

(assert (=> b!4007893 (= lt!1418270 (Some!9235 lt!1418243))))

(assert (=> b!4007893 (= lt!1418243 (tuple2!42059 token!484 suffixResult!105))))

(assert (=> b!4007893 (= lt!1418276 (++!11224 prefix!494 suffix!1299))))

(declare-fun b!4007894 () Bool)

(assert (=> b!4007894 (= e!2485536 e!2485530)))

(declare-fun res!1628846 () Bool)

(assert (=> b!4007894 (=> res!1628846 e!2485530)))

(declare-fun matchR!5688 (Regex!11727 List!43028) Bool)

(assert (=> b!4007894 (= res!1628846 (not (matchR!5688 (regex!6822 (rule!9862 token!484)) lt!1418254)))))

(assert (=> b!4007894 (isPrefix!3909 lt!1418254 lt!1418249)))

(declare-fun lt!1418280 () Unit!61905)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!722 (List!43028 List!43028 List!43028) Unit!61905)

(assert (=> b!4007894 (= lt!1418280 (lemmaPrefixStaysPrefixWhenAddingToSuffix!722 lt!1418254 prefix!494 newSuffix!27))))

(declare-fun lt!1418277 () Unit!61905)

(assert (=> b!4007894 (= lt!1418277 (lemmaPrefixStaysPrefixWhenAddingToSuffix!722 lt!1418254 prefix!494 suffix!1299))))

(declare-fun b!4007895 () Bool)

(declare-fun e!2485522 () Bool)

(declare-fun tp!1219628 () Bool)

(assert (=> b!4007895 (= e!2485522 (and e!2485527 tp!1219628))))

(declare-fun b!4007896 () Bool)

(assert (=> b!4007896 (= e!2485521 e!2485535)))

(declare-fun res!1628838 () Bool)

(assert (=> b!4007896 (=> res!1628838 e!2485535)))

(assert (=> b!4007896 (= res!1628838 (not (= lt!1418268 prefix!494)))))

(assert (=> b!4007896 (= lt!1418268 (++!11224 lt!1418254 lt!1418281))))

(assert (=> b!4007896 (= lt!1418281 (getSuffix!2334 prefix!494 lt!1418254))))

(assert (=> b!4007896 (isPrefix!3909 lt!1418254 prefix!494)))

(declare-fun lt!1418256 () Unit!61905)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!481 (List!43028 List!43028 List!43028) Unit!61905)

(assert (=> b!4007896 (= lt!1418256 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!481 prefix!494 lt!1418254 lt!1418276))))

(declare-fun b!4007897 () Bool)

(declare-fun e!2485526 () Bool)

(declare-fun tp!1219627 () Bool)

(assert (=> b!4007897 (= e!2485526 (and tp_is_empty!20425 tp!1219627))))

(declare-fun b!4007898 () Bool)

(declare-fun res!1628851 () Bool)

(assert (=> b!4007898 (=> (not res!1628851) (not e!2485532))))

(assert (=> b!4007898 (= res!1628851 (= (value!215061 token!484) lt!1418242))))

(declare-fun res!1628845 () Bool)

(assert (=> start!377404 (=> (not res!1628845) (not e!2485515))))

(assert (=> start!377404 (= res!1628845 ((_ is Lexer!6409) thiss!21717))))

(assert (=> start!377404 e!2485515))

(assert (=> start!377404 e!2485518))

(declare-fun inv!57304 (Token!12782) Bool)

(assert (=> start!377404 (and (inv!57304 token!484) e!2485534)))

(assert (=> start!377404 e!2485524))

(assert (=> start!377404 e!2485526))

(assert (=> start!377404 e!2485523))

(assert (=> start!377404 true))

(assert (=> start!377404 e!2485522))

(assert (=> start!377404 e!2485529))

(declare-fun b!4007899 () Bool)

(declare-fun e!2485512 () Bool)

(assert (=> b!4007899 (= e!2485515 e!2485512)))

(declare-fun res!1628855 () Bool)

(assert (=> b!4007899 (=> (not res!1628855) (not e!2485512))))

(declare-fun lt!1418274 () Int)

(assert (=> b!4007899 (= res!1628855 (>= lt!1418274 lt!1418267))))

(assert (=> b!4007899 (= lt!1418267 (size!32079 lt!1418254))))

(assert (=> b!4007899 (= lt!1418274 (size!32079 prefix!494))))

(assert (=> b!4007899 (= lt!1418254 (list!15942 (charsOf!4638 token!484)))))

(declare-fun e!2485520 () Bool)

(assert (=> b!4007900 (= e!2485520 (and tp!1219625 tp!1219632))))

(declare-fun b!4007901 () Bool)

(assert (=> b!4007901 (= e!2485512 e!2485528)))

(declare-fun res!1628842 () Bool)

(assert (=> b!4007901 (=> (not res!1628842) (not e!2485528))))

(declare-fun lt!1418285 () List!43028)

(assert (=> b!4007901 (= res!1628842 (= lt!1418285 lt!1418249))))

(assert (=> b!4007901 (= lt!1418249 (++!11224 prefix!494 newSuffix!27))))

(assert (=> b!4007901 (= lt!1418285 (++!11224 lt!1418254 newSuffixResult!27))))

(declare-fun tp!1219626 () Bool)

(declare-fun b!4007902 () Bool)

(assert (=> b!4007902 (= e!2485517 (and tp!1219626 (inv!57300 (tag!7682 (rule!9862 token!484))) (inv!57303 (transformation!6822 (rule!9862 token!484))) e!2485520))))

(assert (= (and start!377404 res!1628845) b!4007889))

(assert (= (and b!4007889 res!1628854) b!4007888))

(assert (= (and b!4007888 res!1628837) b!4007876))

(assert (= (and b!4007876 res!1628849) b!4007878))

(assert (= (and b!4007878 res!1628844) b!4007899))

(assert (= (and b!4007899 res!1628855) b!4007901))

(assert (= (and b!4007901 res!1628842) b!4007893))

(assert (= (and b!4007893 res!1628841) b!4007882))

(assert (= (and b!4007882 (not res!1628847)) b!4007886))

(assert (= (and b!4007886 (not res!1628839)) b!4007896))

(assert (= (and b!4007896 (not res!1628838)) b!4007883))

(assert (= (and b!4007883 (not res!1628848)) b!4007881))

(assert (= (and b!4007881 (not res!1628850)) b!4007894))

(assert (= (and b!4007894 (not res!1628846)) b!4007873))

(assert (= (and b!4007873 res!1628843) b!4007898))

(assert (= (and b!4007898 res!1628851) b!4007885))

(assert (= (and b!4007885 res!1628840) b!4007890))

(assert (= (and b!4007873 (not res!1628852)) b!4007879))

(assert (= (and b!4007879 (not res!1628853)) b!4007887))

(assert (= (and start!377404 ((_ is Cons!42904) prefix!494)) b!4007891))

(assert (= b!4007902 b!4007900))

(assert (= b!4007880 b!4007902))

(assert (= start!377404 b!4007880))

(assert (= (and start!377404 ((_ is Cons!42904) suffixResult!105)) b!4007877))

(assert (= (and start!377404 ((_ is Cons!42904) suffix!1299)) b!4007897))

(assert (= (and start!377404 ((_ is Cons!42904) newSuffix!27)) b!4007892))

(assert (= b!4007884 b!4007875))

(assert (= b!4007895 b!4007884))

(assert (= (and start!377404 ((_ is Cons!42906) rules!2999)) b!4007895))

(assert (= (and start!377404 ((_ is Cons!42904) newSuffixResult!27)) b!4007874))

(declare-fun m!4591405 () Bool)

(assert (=> b!4007873 m!4591405))

(declare-fun m!4591407 () Bool)

(assert (=> b!4007873 m!4591407))

(declare-fun m!4591409 () Bool)

(assert (=> b!4007873 m!4591409))

(declare-fun m!4591411 () Bool)

(assert (=> b!4007873 m!4591411))

(declare-fun m!4591413 () Bool)

(assert (=> b!4007888 m!4591413))

(declare-fun m!4591415 () Bool)

(assert (=> start!377404 m!4591415))

(declare-fun m!4591417 () Bool)

(assert (=> b!4007896 m!4591417))

(declare-fun m!4591419 () Bool)

(assert (=> b!4007896 m!4591419))

(declare-fun m!4591421 () Bool)

(assert (=> b!4007896 m!4591421))

(declare-fun m!4591423 () Bool)

(assert (=> b!4007896 m!4591423))

(declare-fun m!4591425 () Bool)

(assert (=> b!4007881 m!4591425))

(declare-fun m!4591427 () Bool)

(assert (=> b!4007881 m!4591427))

(declare-fun m!4591429 () Bool)

(assert (=> b!4007881 m!4591429))

(declare-fun m!4591431 () Bool)

(assert (=> b!4007881 m!4591431))

(declare-fun m!4591433 () Bool)

(assert (=> b!4007881 m!4591433))

(assert (=> b!4007881 m!4591427))

(declare-fun m!4591435 () Bool)

(assert (=> b!4007881 m!4591435))

(declare-fun m!4591437 () Bool)

(assert (=> b!4007881 m!4591437))

(declare-fun m!4591439 () Bool)

(assert (=> b!4007883 m!4591439))

(declare-fun m!4591441 () Bool)

(assert (=> b!4007883 m!4591441))

(declare-fun m!4591443 () Bool)

(assert (=> b!4007883 m!4591443))

(declare-fun m!4591445 () Bool)

(assert (=> b!4007883 m!4591445))

(declare-fun m!4591447 () Bool)

(assert (=> b!4007902 m!4591447))

(declare-fun m!4591449 () Bool)

(assert (=> b!4007902 m!4591449))

(declare-fun m!4591451 () Bool)

(assert (=> b!4007879 m!4591451))

(declare-fun m!4591453 () Bool)

(assert (=> b!4007879 m!4591453))

(declare-fun m!4591455 () Bool)

(assert (=> b!4007879 m!4591455))

(declare-fun m!4591457 () Bool)

(assert (=> b!4007879 m!4591457))

(declare-fun m!4591459 () Bool)

(assert (=> b!4007885 m!4591459))

(declare-fun m!4591461 () Bool)

(assert (=> b!4007889 m!4591461))

(declare-fun m!4591463 () Bool)

(assert (=> b!4007882 m!4591463))

(declare-fun m!4591465 () Bool)

(assert (=> b!4007882 m!4591465))

(declare-fun m!4591467 () Bool)

(assert (=> b!4007882 m!4591467))

(declare-fun m!4591469 () Bool)

(assert (=> b!4007882 m!4591469))

(declare-fun m!4591471 () Bool)

(assert (=> b!4007901 m!4591471))

(declare-fun m!4591473 () Bool)

(assert (=> b!4007901 m!4591473))

(declare-fun m!4591475 () Bool)

(assert (=> b!4007880 m!4591475))

(declare-fun m!4591477 () Bool)

(assert (=> b!4007893 m!4591477))

(declare-fun m!4591479 () Bool)

(assert (=> b!4007893 m!4591479))

(declare-fun m!4591481 () Bool)

(assert (=> b!4007886 m!4591481))

(declare-fun m!4591483 () Bool)

(assert (=> b!4007886 m!4591483))

(declare-fun m!4591485 () Bool)

(assert (=> b!4007886 m!4591485))

(declare-fun m!4591487 () Bool)

(assert (=> b!4007886 m!4591487))

(declare-fun m!4591489 () Bool)

(assert (=> b!4007886 m!4591489))

(declare-fun m!4591491 () Bool)

(assert (=> b!4007884 m!4591491))

(declare-fun m!4591493 () Bool)

(assert (=> b!4007884 m!4591493))

(declare-fun m!4591495 () Bool)

(assert (=> b!4007899 m!4591495))

(declare-fun m!4591497 () Bool)

(assert (=> b!4007899 m!4591497))

(declare-fun m!4591499 () Bool)

(assert (=> b!4007899 m!4591499))

(assert (=> b!4007899 m!4591499))

(declare-fun m!4591501 () Bool)

(assert (=> b!4007899 m!4591501))

(declare-fun m!4591503 () Bool)

(assert (=> b!4007894 m!4591503))

(declare-fun m!4591505 () Bool)

(assert (=> b!4007894 m!4591505))

(declare-fun m!4591507 () Bool)

(assert (=> b!4007894 m!4591507))

(declare-fun m!4591509 () Bool)

(assert (=> b!4007894 m!4591509))

(declare-fun m!4591511 () Bool)

(assert (=> b!4007878 m!4591511))

(declare-fun m!4591513 () Bool)

(assert (=> b!4007887 m!4591513))

(declare-fun m!4591515 () Bool)

(assert (=> b!4007887 m!4591515))

(declare-fun m!4591517 () Bool)

(assert (=> b!4007887 m!4591517))

(declare-fun m!4591519 () Bool)

(assert (=> b!4007887 m!4591519))

(declare-fun m!4591521 () Bool)

(assert (=> b!4007887 m!4591521))

(declare-fun m!4591523 () Bool)

(assert (=> b!4007887 m!4591523))

(declare-fun m!4591525 () Bool)

(assert (=> b!4007887 m!4591525))

(declare-fun m!4591527 () Bool)

(assert (=> b!4007887 m!4591527))

(assert (=> b!4007887 m!4591525))

(declare-fun m!4591529 () Bool)

(assert (=> b!4007887 m!4591529))

(declare-fun m!4591531 () Bool)

(assert (=> b!4007887 m!4591531))

(declare-fun m!4591533 () Bool)

(assert (=> b!4007887 m!4591533))

(declare-fun m!4591535 () Bool)

(assert (=> b!4007887 m!4591535))

(assert (=> b!4007887 m!4591529))

(declare-fun m!4591537 () Bool)

(assert (=> b!4007887 m!4591537))

(declare-fun m!4591539 () Bool)

(assert (=> b!4007887 m!4591539))

(declare-fun m!4591541 () Bool)

(assert (=> b!4007887 m!4591541))

(declare-fun m!4591543 () Bool)

(assert (=> b!4007887 m!4591543))

(declare-fun m!4591545 () Bool)

(assert (=> b!4007887 m!4591545))

(assert (=> b!4007887 m!4591539))

(assert (=> b!4007887 m!4591513))

(declare-fun m!4591547 () Bool)

(assert (=> b!4007887 m!4591547))

(declare-fun m!4591549 () Bool)

(assert (=> b!4007876 m!4591549))

(declare-fun m!4591551 () Bool)

(assert (=> b!4007876 m!4591551))

(check-sat (not b!4007891) (not b!4007878) (not b!4007876) (not b!4007874) (not b_next!112193) (not b!4007882) (not b!4007880) (not b!4007885) (not b!4007902) (not b!4007901) (not b!4007886) (not b!4007879) (not b!4007888) (not b!4007892) (not b!4007873) (not start!377404) (not b!4007889) (not b_next!112195) tp_is_empty!20425 (not b!4007899) (not b!4007893) b_and!307817 (not b_next!112199) b_and!307815 b_and!307821 (not b!4007884) (not b!4007897) (not b_next!112197) (not b!4007883) (not b!4007881) (not b!4007895) (not b!4007887) (not b!4007894) (not b!4007877) (not b!4007896) b_and!307819)
(check-sat (not b_next!112195) b_and!307821 (not b_next!112197) (not b_next!112193) b_and!307819 b_and!307817 (not b_next!112199) b_and!307815)
(get-model)

(declare-fun b!4008021 () Bool)

(declare-fun res!1628937 () Bool)

(declare-fun e!2485603 () Bool)

(assert (=> b!4008021 (=> (not res!1628937) (not e!2485603))))

(declare-fun lt!1418330 () Option!9236)

(declare-fun get!14100 (Option!9236) tuple2!42058)

(assert (=> b!4008021 (= res!1628937 (< (size!32079 (_2!24163 (get!14100 lt!1418330))) (size!32079 lt!1418276)))))

(declare-fun b!4008022 () Bool)

(declare-fun res!1628941 () Bool)

(assert (=> b!4008022 (=> (not res!1628941) (not e!2485603))))

(assert (=> b!4008022 (= res!1628941 (= (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418330)))) (originalCharacters!7422 (_1!24163 (get!14100 lt!1418330)))))))

(declare-fun d!1185786 () Bool)

(declare-fun e!2485602 () Bool)

(assert (=> d!1185786 e!2485602))

(declare-fun res!1628938 () Bool)

(assert (=> d!1185786 (=> res!1628938 e!2485602)))

(declare-fun isEmpty!25632 (Option!9236) Bool)

(assert (=> d!1185786 (= res!1628938 (isEmpty!25632 lt!1418330))))

(declare-fun e!2485604 () Option!9236)

(assert (=> d!1185786 (= lt!1418330 e!2485604)))

(declare-fun c!693004 () Bool)

(assert (=> d!1185786 (= c!693004 (and ((_ is Cons!42906) rules!2999) ((_ is Nil!42906) (t!332655 rules!2999))))))

(declare-fun lt!1418332 () Unit!61905)

(declare-fun lt!1418329 () Unit!61905)

(assert (=> d!1185786 (= lt!1418332 lt!1418329)))

(assert (=> d!1185786 (isPrefix!3909 lt!1418276 lt!1418276)))

(assert (=> d!1185786 (= lt!1418329 (lemmaIsPrefixRefl!2485 lt!1418276 lt!1418276))))

(declare-fun rulesValidInductive!2486 (LexerInterface!6411 List!43030) Bool)

(assert (=> d!1185786 (rulesValidInductive!2486 thiss!21717 rules!2999)))

(assert (=> d!1185786 (= (maxPrefix!3709 thiss!21717 rules!2999 lt!1418276) lt!1418330)))

(declare-fun b!4008023 () Bool)

(declare-fun res!1628942 () Bool)

(assert (=> b!4008023 (=> (not res!1628942) (not e!2485603))))

(assert (=> b!4008023 (= res!1628942 (matchR!5688 (regex!6822 (rule!9862 (_1!24163 (get!14100 lt!1418330)))) (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418330))))))))

(declare-fun b!4008024 () Bool)

(assert (=> b!4008024 (= e!2485602 e!2485603)))

(declare-fun res!1628939 () Bool)

(assert (=> b!4008024 (=> (not res!1628939) (not e!2485603))))

(declare-fun isDefined!7065 (Option!9236) Bool)

(assert (=> b!4008024 (= res!1628939 (isDefined!7065 lt!1418330))))

(declare-fun b!4008025 () Bool)

(declare-fun res!1628936 () Bool)

(assert (=> b!4008025 (=> (not res!1628936) (not e!2485603))))

(assert (=> b!4008025 (= res!1628936 (= (++!11224 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418330)))) (_2!24163 (get!14100 lt!1418330))) lt!1418276))))

(declare-fun b!4008026 () Bool)

(declare-fun lt!1418331 () Option!9236)

(declare-fun lt!1418328 () Option!9236)

(assert (=> b!4008026 (= e!2485604 (ite (and ((_ is None!9235) lt!1418331) ((_ is None!9235) lt!1418328)) None!9235 (ite ((_ is None!9235) lt!1418328) lt!1418331 (ite ((_ is None!9235) lt!1418331) lt!1418328 (ite (>= (size!32080 (_1!24163 (v!39601 lt!1418331))) (size!32080 (_1!24163 (v!39601 lt!1418328)))) lt!1418331 lt!1418328)))))))

(declare-fun call!286230 () Option!9236)

(assert (=> b!4008026 (= lt!1418331 call!286230)))

(assert (=> b!4008026 (= lt!1418328 (maxPrefix!3709 thiss!21717 (t!332655 rules!2999) lt!1418276))))

(declare-fun b!4008027 () Bool)

(declare-fun contains!8529 (List!43030 Rule!13444) Bool)

(assert (=> b!4008027 (= e!2485603 (contains!8529 rules!2999 (rule!9862 (_1!24163 (get!14100 lt!1418330)))))))

(declare-fun bm!286225 () Bool)

(assert (=> bm!286225 (= call!286230 (maxPrefixOneRule!2729 thiss!21717 (h!48326 rules!2999) lt!1418276))))

(declare-fun b!4008028 () Bool)

(assert (=> b!4008028 (= e!2485604 call!286230)))

(declare-fun b!4008029 () Bool)

(declare-fun res!1628940 () Bool)

(assert (=> b!4008029 (=> (not res!1628940) (not e!2485603))))

(assert (=> b!4008029 (= res!1628940 (= (value!215061 (_1!24163 (get!14100 lt!1418330))) (apply!10019 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418330)))) (seqFromList!5047 (originalCharacters!7422 (_1!24163 (get!14100 lt!1418330)))))))))

(assert (= (and d!1185786 c!693004) b!4008028))

(assert (= (and d!1185786 (not c!693004)) b!4008026))

(assert (= (or b!4008028 b!4008026) bm!286225))

(assert (= (and d!1185786 (not res!1628938)) b!4008024))

(assert (= (and b!4008024 res!1628939) b!4008022))

(assert (= (and b!4008022 res!1628941) b!4008021))

(assert (= (and b!4008021 res!1628937) b!4008025))

(assert (= (and b!4008025 res!1628936) b!4008029))

(assert (= (and b!4008029 res!1628940) b!4008023))

(assert (= (and b!4008023 res!1628942) b!4008027))

(declare-fun m!4591655 () Bool)

(assert (=> d!1185786 m!4591655))

(assert (=> d!1185786 m!4591409))

(assert (=> d!1185786 m!4591411))

(declare-fun m!4591657 () Bool)

(assert (=> d!1185786 m!4591657))

(declare-fun m!4591659 () Bool)

(assert (=> b!4008021 m!4591659))

(declare-fun m!4591661 () Bool)

(assert (=> b!4008021 m!4591661))

(declare-fun m!4591663 () Bool)

(assert (=> b!4008021 m!4591663))

(assert (=> b!4008027 m!4591659))

(declare-fun m!4591665 () Bool)

(assert (=> b!4008027 m!4591665))

(assert (=> b!4008025 m!4591659))

(declare-fun m!4591667 () Bool)

(assert (=> b!4008025 m!4591667))

(assert (=> b!4008025 m!4591667))

(declare-fun m!4591669 () Bool)

(assert (=> b!4008025 m!4591669))

(assert (=> b!4008025 m!4591669))

(declare-fun m!4591671 () Bool)

(assert (=> b!4008025 m!4591671))

(assert (=> b!4008022 m!4591659))

(assert (=> b!4008022 m!4591667))

(assert (=> b!4008022 m!4591667))

(assert (=> b!4008022 m!4591669))

(assert (=> b!4008029 m!4591659))

(declare-fun m!4591673 () Bool)

(assert (=> b!4008029 m!4591673))

(assert (=> b!4008029 m!4591673))

(declare-fun m!4591675 () Bool)

(assert (=> b!4008029 m!4591675))

(declare-fun m!4591677 () Bool)

(assert (=> b!4008024 m!4591677))

(declare-fun m!4591679 () Bool)

(assert (=> b!4008026 m!4591679))

(assert (=> b!4008023 m!4591659))

(assert (=> b!4008023 m!4591667))

(assert (=> b!4008023 m!4591667))

(assert (=> b!4008023 m!4591669))

(assert (=> b!4008023 m!4591669))

(declare-fun m!4591681 () Bool)

(assert (=> b!4008023 m!4591681))

(declare-fun m!4591683 () Bool)

(assert (=> bm!286225 m!4591683))

(assert (=> b!4007893 d!1185786))

(declare-fun d!1185828 () Bool)

(declare-fun e!2485618 () Bool)

(assert (=> d!1185828 e!2485618))

(declare-fun res!1628962 () Bool)

(assert (=> d!1185828 (=> (not res!1628962) (not e!2485618))))

(declare-fun lt!1418345 () List!43028)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6506 (List!43028) (InoxSet C!23640))

(assert (=> d!1185828 (= res!1628962 (= (content!6506 lt!1418345) ((_ map or) (content!6506 prefix!494) (content!6506 suffix!1299))))))

(declare-fun e!2485617 () List!43028)

(assert (=> d!1185828 (= lt!1418345 e!2485617)))

(declare-fun c!693009 () Bool)

(assert (=> d!1185828 (= c!693009 ((_ is Nil!42904) prefix!494))))

(assert (=> d!1185828 (= (++!11224 prefix!494 suffix!1299) lt!1418345)))

(declare-fun b!4008056 () Bool)

(assert (=> b!4008056 (= e!2485617 suffix!1299)))

(declare-fun b!4008059 () Bool)

(assert (=> b!4008059 (= e!2485618 (or (not (= suffix!1299 Nil!42904)) (= lt!1418345 prefix!494)))))

(declare-fun b!4008057 () Bool)

(assert (=> b!4008057 (= e!2485617 (Cons!42904 (h!48324 prefix!494) (++!11224 (t!332653 prefix!494) suffix!1299)))))

(declare-fun b!4008058 () Bool)

(declare-fun res!1628961 () Bool)

(assert (=> b!4008058 (=> (not res!1628961) (not e!2485618))))

(assert (=> b!4008058 (= res!1628961 (= (size!32079 lt!1418345) (+ (size!32079 prefix!494) (size!32079 suffix!1299))))))

(assert (= (and d!1185828 c!693009) b!4008056))

(assert (= (and d!1185828 (not c!693009)) b!4008057))

(assert (= (and d!1185828 res!1628962) b!4008058))

(assert (= (and b!4008058 res!1628961) b!4008059))

(declare-fun m!4591685 () Bool)

(assert (=> d!1185828 m!4591685))

(declare-fun m!4591687 () Bool)

(assert (=> d!1185828 m!4591687))

(declare-fun m!4591689 () Bool)

(assert (=> d!1185828 m!4591689))

(declare-fun m!4591691 () Bool)

(assert (=> b!4008057 m!4591691))

(declare-fun m!4591693 () Bool)

(assert (=> b!4008058 m!4591693))

(assert (=> b!4008058 m!4591497))

(assert (=> b!4008058 m!4591549))

(assert (=> b!4007893 d!1185828))

(declare-fun d!1185830 () Bool)

(declare-fun e!2485620 () Bool)

(assert (=> d!1185830 e!2485620))

(declare-fun res!1628964 () Bool)

(assert (=> d!1185830 (=> (not res!1628964) (not e!2485620))))

(declare-fun lt!1418346 () List!43028)

(assert (=> d!1185830 (= res!1628964 (= (content!6506 lt!1418346) ((_ map or) (content!6506 lt!1418254) (content!6506 suffixResult!105))))))

(declare-fun e!2485619 () List!43028)

(assert (=> d!1185830 (= lt!1418346 e!2485619)))

(declare-fun c!693010 () Bool)

(assert (=> d!1185830 (= c!693010 ((_ is Nil!42904) lt!1418254))))

(assert (=> d!1185830 (= (++!11224 lt!1418254 suffixResult!105) lt!1418346)))

(declare-fun b!4008060 () Bool)

(assert (=> b!4008060 (= e!2485619 suffixResult!105)))

(declare-fun b!4008063 () Bool)

(assert (=> b!4008063 (= e!2485620 (or (not (= suffixResult!105 Nil!42904)) (= lt!1418346 lt!1418254)))))

(declare-fun b!4008061 () Bool)

(assert (=> b!4008061 (= e!2485619 (Cons!42904 (h!48324 lt!1418254) (++!11224 (t!332653 lt!1418254) suffixResult!105)))))

(declare-fun b!4008062 () Bool)

(declare-fun res!1628963 () Bool)

(assert (=> b!4008062 (=> (not res!1628963) (not e!2485620))))

(assert (=> b!4008062 (= res!1628963 (= (size!32079 lt!1418346) (+ (size!32079 lt!1418254) (size!32079 suffixResult!105))))))

(assert (= (and d!1185830 c!693010) b!4008060))

(assert (= (and d!1185830 (not c!693010)) b!4008061))

(assert (= (and d!1185830 res!1628964) b!4008062))

(assert (= (and b!4008062 res!1628963) b!4008063))

(declare-fun m!4591695 () Bool)

(assert (=> d!1185830 m!4591695))

(declare-fun m!4591697 () Bool)

(assert (=> d!1185830 m!4591697))

(declare-fun m!4591699 () Bool)

(assert (=> d!1185830 m!4591699))

(declare-fun m!4591701 () Bool)

(assert (=> b!4008061 m!4591701))

(declare-fun m!4591703 () Bool)

(assert (=> b!4008062 m!4591703))

(assert (=> b!4008062 m!4591495))

(declare-fun m!4591705 () Bool)

(assert (=> b!4008062 m!4591705))

(assert (=> b!4007882 d!1185830))

(declare-fun d!1185832 () Bool)

(declare-fun e!2485627 () Bool)

(assert (=> d!1185832 e!2485627))

(declare-fun res!1628974 () Bool)

(assert (=> d!1185832 (=> (not res!1628974) (not e!2485627))))

(declare-fun semiInverseModEq!2920 (Int Int) Bool)

(assert (=> d!1185832 (= res!1628974 (semiInverseModEq!2920 (toChars!9181 (transformation!6822 (rule!9862 token!484))) (toValue!9322 (transformation!6822 (rule!9862 token!484)))))))

(declare-fun Unit!61910 () Unit!61905)

(assert (=> d!1185832 (= (lemmaInv!1037 (transformation!6822 (rule!9862 token!484))) Unit!61910)))

(declare-fun b!4008075 () Bool)

(declare-fun equivClasses!2819 (Int Int) Bool)

(assert (=> b!4008075 (= e!2485627 (equivClasses!2819 (toChars!9181 (transformation!6822 (rule!9862 token!484))) (toValue!9322 (transformation!6822 (rule!9862 token!484)))))))

(assert (= (and d!1185832 res!1628974) b!4008075))

(declare-fun m!4591749 () Bool)

(assert (=> d!1185832 m!4591749))

(declare-fun m!4591751 () Bool)

(assert (=> b!4008075 m!4591751))

(assert (=> b!4007882 d!1185832))

(declare-fun d!1185836 () Bool)

(declare-fun res!1628979 () Bool)

(declare-fun e!2485634 () Bool)

(assert (=> d!1185836 (=> (not res!1628979) (not e!2485634))))

(declare-fun validRegex!5314 (Regex!11727) Bool)

(assert (=> d!1185836 (= res!1628979 (validRegex!5314 (regex!6822 (rule!9862 token!484))))))

(assert (=> d!1185836 (= (ruleValid!2754 thiss!21717 (rule!9862 token!484)) e!2485634)))

(declare-fun b!4008087 () Bool)

(declare-fun res!1628980 () Bool)

(assert (=> b!4008087 (=> (not res!1628980) (not e!2485634))))

(declare-fun nullable!4114 (Regex!11727) Bool)

(assert (=> b!4008087 (= res!1628980 (not (nullable!4114 (regex!6822 (rule!9862 token!484)))))))

(declare-fun b!4008088 () Bool)

(assert (=> b!4008088 (= e!2485634 (not (= (tag!7682 (rule!9862 token!484)) (String!48979 ""))))))

(assert (= (and d!1185836 res!1628979) b!4008087))

(assert (= (and b!4008087 res!1628980) b!4008088))

(declare-fun m!4591763 () Bool)

(assert (=> d!1185836 m!4591763))

(declare-fun m!4591765 () Bool)

(assert (=> b!4008087 m!4591765))

(assert (=> b!4007882 d!1185836))

(declare-fun d!1185842 () Bool)

(assert (=> d!1185842 (ruleValid!2754 thiss!21717 (rule!9862 token!484))))

(declare-fun lt!1418359 () Unit!61905)

(declare-fun choose!24204 (LexerInterface!6411 Rule!13444 List!43030) Unit!61905)

(assert (=> d!1185842 (= lt!1418359 (choose!24204 thiss!21717 (rule!9862 token!484) rules!2999))))

(assert (=> d!1185842 (contains!8529 rules!2999 (rule!9862 token!484))))

(assert (=> d!1185842 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1828 thiss!21717 (rule!9862 token!484) rules!2999) lt!1418359)))

(declare-fun bs!589141 () Bool)

(assert (= bs!589141 d!1185842))

(assert (=> bs!589141 m!4591467))

(declare-fun m!4591781 () Bool)

(assert (=> bs!589141 m!4591781))

(declare-fun m!4591783 () Bool)

(assert (=> bs!589141 m!4591783))

(assert (=> b!4007882 d!1185842))

(declare-fun d!1185848 () Bool)

(declare-fun res!1628987 () Bool)

(declare-fun e!2485639 () Bool)

(assert (=> d!1185848 (=> (not res!1628987) (not e!2485639))))

(declare-fun isEmpty!25634 (List!43028) Bool)

(assert (=> d!1185848 (= res!1628987 (not (isEmpty!25634 (originalCharacters!7422 token!484))))))

(assert (=> d!1185848 (= (inv!57304 token!484) e!2485639)))

(declare-fun b!4008097 () Bool)

(declare-fun res!1628988 () Bool)

(assert (=> b!4008097 (=> (not res!1628988) (not e!2485639))))

(declare-fun dynLambda!18199 (Int TokenValue!7052) BalanceConc!25660)

(assert (=> b!4008097 (= res!1628988 (= (originalCharacters!7422 token!484) (list!15942 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 token!484))) (value!215061 token!484)))))))

(declare-fun b!4008098 () Bool)

(assert (=> b!4008098 (= e!2485639 (= (size!32080 token!484) (size!32079 (originalCharacters!7422 token!484))))))

(assert (= (and d!1185848 res!1628987) b!4008097))

(assert (= (and b!4008097 res!1628988) b!4008098))

(declare-fun b_lambda!116915 () Bool)

(assert (=> (not b_lambda!116915) (not b!4008097)))

(declare-fun t!332665 () Bool)

(declare-fun tb!240889 () Bool)

(assert (=> (and b!4007875 (= (toChars!9181 (transformation!6822 (h!48326 rules!2999))) (toChars!9181 (transformation!6822 (rule!9862 token!484)))) t!332665) tb!240889))

(declare-fun b!4008103 () Bool)

(declare-fun e!2485642 () Bool)

(declare-fun tp!1219640 () Bool)

(declare-fun inv!57307 (Conc!13033) Bool)

(assert (=> b!4008103 (= e!2485642 (and (inv!57307 (c!692980 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 token!484))) (value!215061 token!484)))) tp!1219640))))

(declare-fun result!291982 () Bool)

(declare-fun inv!57308 (BalanceConc!25660) Bool)

(assert (=> tb!240889 (= result!291982 (and (inv!57308 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 token!484))) (value!215061 token!484))) e!2485642))))

(assert (= tb!240889 b!4008103))

(declare-fun m!4591785 () Bool)

(assert (=> b!4008103 m!4591785))

(declare-fun m!4591787 () Bool)

(assert (=> tb!240889 m!4591787))

(assert (=> b!4008097 t!332665))

(declare-fun b_and!307831 () Bool)

(assert (= b_and!307817 (and (=> t!332665 result!291982) b_and!307831)))

(declare-fun t!332667 () Bool)

(declare-fun tb!240891 () Bool)

(assert (=> (and b!4007900 (= (toChars!9181 (transformation!6822 (rule!9862 token!484))) (toChars!9181 (transformation!6822 (rule!9862 token!484)))) t!332667) tb!240891))

(declare-fun result!291986 () Bool)

(assert (= result!291986 result!291982))

(assert (=> b!4008097 t!332667))

(declare-fun b_and!307833 () Bool)

(assert (= b_and!307821 (and (=> t!332667 result!291986) b_and!307833)))

(declare-fun m!4591789 () Bool)

(assert (=> d!1185848 m!4591789))

(declare-fun m!4591791 () Bool)

(assert (=> b!4008097 m!4591791))

(assert (=> b!4008097 m!4591791))

(declare-fun m!4591793 () Bool)

(assert (=> b!4008097 m!4591793))

(assert (=> b!4008098 m!4591459))

(assert (=> start!377404 d!1185848))

(declare-fun d!1185850 () Bool)

(assert (=> d!1185850 (isPrefix!3909 lt!1418254 (++!11224 lt!1418254 lt!1418244))))

(declare-fun lt!1418365 () Unit!61905)

(declare-fun choose!24205 (List!43028 List!43028) Unit!61905)

(assert (=> d!1185850 (= lt!1418365 (choose!24205 lt!1418254 lt!1418244))))

(assert (=> d!1185850 (= (lemmaConcatTwoListThenFirstIsPrefix!2750 lt!1418254 lt!1418244) lt!1418365)))

(declare-fun bs!589143 () Bool)

(assert (= bs!589143 d!1185850))

(assert (=> bs!589143 m!4591439))

(assert (=> bs!589143 m!4591439))

(declare-fun m!4591797 () Bool)

(assert (=> bs!589143 m!4591797))

(declare-fun m!4591799 () Bool)

(assert (=> bs!589143 m!4591799))

(assert (=> b!4007881 d!1185850))

(declare-fun d!1185854 () Bool)

(declare-fun fromListB!2312 (List!43028) BalanceConc!25660)

(assert (=> d!1185854 (= (seqFromList!5047 lt!1418254) (fromListB!2312 lt!1418254))))

(declare-fun bs!589144 () Bool)

(assert (= bs!589144 d!1185854))

(declare-fun m!4591805 () Bool)

(assert (=> bs!589144 m!4591805))

(assert (=> b!4007881 d!1185854))

(declare-fun b!4008241 () Bool)

(declare-fun e!2485712 () Bool)

(declare-datatypes ((tuple2!42062 0))(
  ( (tuple2!42063 (_1!24165 List!43028) (_2!24165 List!43028)) )
))
(declare-fun findLongestMatchInner!1355 (Regex!11727 List!43028 Int List!43028 List!43028 Int) tuple2!42062)

(assert (=> b!4008241 (= e!2485712 (matchR!5688 (regex!6822 (rule!9862 token!484)) (_1!24165 (findLongestMatchInner!1355 (regex!6822 (rule!9862 token!484)) Nil!42904 (size!32079 Nil!42904) lt!1418276 lt!1418276 (size!32079 lt!1418276)))))))

(declare-fun b!4008242 () Bool)

(declare-fun res!1629088 () Bool)

(declare-fun e!2485715 () Bool)

(assert (=> b!4008242 (=> (not res!1629088) (not e!2485715))))

(declare-fun lt!1418426 () Option!9236)

(assert (=> b!4008242 (= res!1629088 (= (value!215061 (_1!24163 (get!14100 lt!1418426))) (apply!10019 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418426)))) (seqFromList!5047 (originalCharacters!7422 (_1!24163 (get!14100 lt!1418426)))))))))

(declare-fun b!4008243 () Bool)

(declare-fun e!2485714 () Option!9236)

(assert (=> b!4008243 (= e!2485714 None!9235)))

(declare-fun b!4008244 () Bool)

(declare-fun res!1629083 () Bool)

(assert (=> b!4008244 (=> (not res!1629083) (not e!2485715))))

(assert (=> b!4008244 (= res!1629083 (< (size!32079 (_2!24163 (get!14100 lt!1418426))) (size!32079 lt!1418276)))))

(declare-fun b!4008245 () Bool)

(assert (=> b!4008245 (= e!2485715 (= (size!32080 (_1!24163 (get!14100 lt!1418426))) (size!32079 (originalCharacters!7422 (_1!24163 (get!14100 lt!1418426))))))))

(declare-fun d!1185858 () Bool)

(declare-fun e!2485713 () Bool)

(assert (=> d!1185858 e!2485713))

(declare-fun res!1629086 () Bool)

(assert (=> d!1185858 (=> res!1629086 e!2485713)))

(assert (=> d!1185858 (= res!1629086 (isEmpty!25632 lt!1418426))))

(assert (=> d!1185858 (= lt!1418426 e!2485714)))

(declare-fun c!693035 () Bool)

(declare-fun lt!1418425 () tuple2!42062)

(assert (=> d!1185858 (= c!693035 (isEmpty!25634 (_1!24165 lt!1418425)))))

(declare-fun findLongestMatch!1268 (Regex!11727 List!43028) tuple2!42062)

(assert (=> d!1185858 (= lt!1418425 (findLongestMatch!1268 (regex!6822 (rule!9862 token!484)) lt!1418276))))

(assert (=> d!1185858 (ruleValid!2754 thiss!21717 (rule!9862 token!484))))

(assert (=> d!1185858 (= (maxPrefixOneRule!2729 thiss!21717 (rule!9862 token!484) lt!1418276) lt!1418426)))

(declare-fun b!4008246 () Bool)

(declare-fun size!32082 (BalanceConc!25660) Int)

(assert (=> b!4008246 (= e!2485714 (Some!9235 (tuple2!42059 (Token!12783 (apply!10019 (transformation!6822 (rule!9862 token!484)) (seqFromList!5047 (_1!24165 lt!1418425))) (rule!9862 token!484) (size!32082 (seqFromList!5047 (_1!24165 lt!1418425))) (_1!24165 lt!1418425)) (_2!24165 lt!1418425))))))

(declare-fun lt!1418424 () Unit!61905)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1328 (Regex!11727 List!43028) Unit!61905)

(assert (=> b!4008246 (= lt!1418424 (longestMatchIsAcceptedByMatchOrIsEmpty!1328 (regex!6822 (rule!9862 token!484)) lt!1418276))))

(declare-fun res!1629085 () Bool)

(assert (=> b!4008246 (= res!1629085 (isEmpty!25634 (_1!24165 (findLongestMatchInner!1355 (regex!6822 (rule!9862 token!484)) Nil!42904 (size!32079 Nil!42904) lt!1418276 lt!1418276 (size!32079 lt!1418276)))))))

(assert (=> b!4008246 (=> res!1629085 e!2485712)))

(assert (=> b!4008246 e!2485712))

(declare-fun lt!1418428 () Unit!61905)

(assert (=> b!4008246 (= lt!1418428 lt!1418424)))

(declare-fun lt!1418427 () Unit!61905)

(declare-fun lemmaSemiInverse!1875 (TokenValueInjection!13532 BalanceConc!25660) Unit!61905)

(assert (=> b!4008246 (= lt!1418427 (lemmaSemiInverse!1875 (transformation!6822 (rule!9862 token!484)) (seqFromList!5047 (_1!24165 lt!1418425))))))

(declare-fun b!4008247 () Bool)

(declare-fun res!1629087 () Bool)

(assert (=> b!4008247 (=> (not res!1629087) (not e!2485715))))

(assert (=> b!4008247 (= res!1629087 (= (++!11224 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418426)))) (_2!24163 (get!14100 lt!1418426))) lt!1418276))))

(declare-fun b!4008248 () Bool)

(assert (=> b!4008248 (= e!2485713 e!2485715)))

(declare-fun res!1629084 () Bool)

(assert (=> b!4008248 (=> (not res!1629084) (not e!2485715))))

(assert (=> b!4008248 (= res!1629084 (matchR!5688 (regex!6822 (rule!9862 token!484)) (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418426))))))))

(declare-fun b!4008249 () Bool)

(declare-fun res!1629089 () Bool)

(assert (=> b!4008249 (=> (not res!1629089) (not e!2485715))))

(assert (=> b!4008249 (= res!1629089 (= (rule!9862 (_1!24163 (get!14100 lt!1418426))) (rule!9862 token!484)))))

(assert (= (and d!1185858 c!693035) b!4008243))

(assert (= (and d!1185858 (not c!693035)) b!4008246))

(assert (= (and b!4008246 (not res!1629085)) b!4008241))

(assert (= (and d!1185858 (not res!1629086)) b!4008248))

(assert (= (and b!4008248 res!1629084) b!4008247))

(assert (= (and b!4008247 res!1629087) b!4008244))

(assert (= (and b!4008244 res!1629083) b!4008249))

(assert (= (and b!4008249 res!1629089) b!4008242))

(assert (= (and b!4008242 res!1629088) b!4008245))

(declare-fun m!4592057 () Bool)

(assert (=> b!4008248 m!4592057))

(declare-fun m!4592059 () Bool)

(assert (=> b!4008248 m!4592059))

(assert (=> b!4008248 m!4592059))

(declare-fun m!4592061 () Bool)

(assert (=> b!4008248 m!4592061))

(assert (=> b!4008248 m!4592061))

(declare-fun m!4592063 () Bool)

(assert (=> b!4008248 m!4592063))

(assert (=> b!4008247 m!4592057))

(assert (=> b!4008247 m!4592059))

(assert (=> b!4008247 m!4592059))

(assert (=> b!4008247 m!4592061))

(assert (=> b!4008247 m!4592061))

(declare-fun m!4592065 () Bool)

(assert (=> b!4008247 m!4592065))

(declare-fun m!4592067 () Bool)

(assert (=> d!1185858 m!4592067))

(declare-fun m!4592069 () Bool)

(assert (=> d!1185858 m!4592069))

(declare-fun m!4592071 () Bool)

(assert (=> d!1185858 m!4592071))

(assert (=> d!1185858 m!4591467))

(assert (=> b!4008242 m!4592057))

(declare-fun m!4592073 () Bool)

(assert (=> b!4008242 m!4592073))

(assert (=> b!4008242 m!4592073))

(declare-fun m!4592075 () Bool)

(assert (=> b!4008242 m!4592075))

(assert (=> b!4008249 m!4592057))

(declare-fun m!4592077 () Bool)

(assert (=> b!4008241 m!4592077))

(assert (=> b!4008241 m!4591663))

(assert (=> b!4008241 m!4592077))

(assert (=> b!4008241 m!4591663))

(declare-fun m!4592079 () Bool)

(assert (=> b!4008241 m!4592079))

(declare-fun m!4592081 () Bool)

(assert (=> b!4008241 m!4592081))

(assert (=> b!4008245 m!4592057))

(declare-fun m!4592083 () Bool)

(assert (=> b!4008245 m!4592083))

(assert (=> b!4008246 m!4592077))

(assert (=> b!4008246 m!4591663))

(assert (=> b!4008246 m!4592079))

(assert (=> b!4008246 m!4591663))

(declare-fun m!4592085 () Bool)

(assert (=> b!4008246 m!4592085))

(declare-fun m!4592087 () Bool)

(assert (=> b!4008246 m!4592087))

(assert (=> b!4008246 m!4592085))

(declare-fun m!4592089 () Bool)

(assert (=> b!4008246 m!4592089))

(assert (=> b!4008246 m!4592085))

(declare-fun m!4592091 () Bool)

(assert (=> b!4008246 m!4592091))

(assert (=> b!4008246 m!4592077))

(declare-fun m!4592093 () Bool)

(assert (=> b!4008246 m!4592093))

(assert (=> b!4008246 m!4592085))

(declare-fun m!4592095 () Bool)

(assert (=> b!4008246 m!4592095))

(assert (=> b!4008244 m!4592057))

(declare-fun m!4592097 () Bool)

(assert (=> b!4008244 m!4592097))

(assert (=> b!4008244 m!4591663))

(assert (=> b!4007881 d!1185858))

(declare-fun d!1185928 () Bool)

(declare-fun e!2485745 () Bool)

(assert (=> d!1185928 e!2485745))

(declare-fun res!1629123 () Bool)

(assert (=> d!1185928 (=> res!1629123 e!2485745)))

(declare-fun lt!1418443 () Bool)

(assert (=> d!1185928 (= res!1629123 (not lt!1418443))))

(declare-fun e!2485747 () Bool)

(assert (=> d!1185928 (= lt!1418443 e!2485747)))

(declare-fun res!1629125 () Bool)

(assert (=> d!1185928 (=> res!1629125 e!2485747)))

(assert (=> d!1185928 (= res!1629125 ((_ is Nil!42904) lt!1418254))))

(assert (=> d!1185928 (= (isPrefix!3909 lt!1418254 lt!1418241) lt!1418443)))

(declare-fun b!4008293 () Bool)

(declare-fun e!2485746 () Bool)

(declare-fun tail!6247 (List!43028) List!43028)

(assert (=> b!4008293 (= e!2485746 (isPrefix!3909 (tail!6247 lt!1418254) (tail!6247 lt!1418241)))))

(declare-fun b!4008292 () Bool)

(declare-fun res!1629124 () Bool)

(assert (=> b!4008292 (=> (not res!1629124) (not e!2485746))))

(declare-fun head!8515 (List!43028) C!23640)

(assert (=> b!4008292 (= res!1629124 (= (head!8515 lt!1418254) (head!8515 lt!1418241)))))

(declare-fun b!4008294 () Bool)

(assert (=> b!4008294 (= e!2485745 (>= (size!32079 lt!1418241) (size!32079 lt!1418254)))))

(declare-fun b!4008291 () Bool)

(assert (=> b!4008291 (= e!2485747 e!2485746)))

(declare-fun res!1629126 () Bool)

(assert (=> b!4008291 (=> (not res!1629126) (not e!2485746))))

(assert (=> b!4008291 (= res!1629126 (not ((_ is Nil!42904) lt!1418241)))))

(assert (= (and d!1185928 (not res!1629125)) b!4008291))

(assert (= (and b!4008291 res!1629126) b!4008292))

(assert (= (and b!4008292 res!1629124) b!4008293))

(assert (= (and d!1185928 (not res!1629123)) b!4008294))

(declare-fun m!4592151 () Bool)

(assert (=> b!4008293 m!4592151))

(declare-fun m!4592153 () Bool)

(assert (=> b!4008293 m!4592153))

(assert (=> b!4008293 m!4592151))

(assert (=> b!4008293 m!4592153))

(declare-fun m!4592155 () Bool)

(assert (=> b!4008293 m!4592155))

(declare-fun m!4592157 () Bool)

(assert (=> b!4008292 m!4592157))

(declare-fun m!4592159 () Bool)

(assert (=> b!4008292 m!4592159))

(declare-fun m!4592161 () Bool)

(assert (=> b!4008294 m!4592161))

(assert (=> b!4008294 m!4591495))

(assert (=> b!4007881 d!1185928))

(declare-fun d!1185956 () Bool)

(assert (=> d!1185956 (= lt!1418244 suffixResult!105)))

(declare-fun lt!1418449 () Unit!61905)

(declare-fun choose!24208 (List!43028 List!43028 List!43028 List!43028 List!43028) Unit!61905)

(assert (=> d!1185956 (= lt!1418449 (choose!24208 lt!1418254 lt!1418244 lt!1418254 suffixResult!105 lt!1418276))))

(assert (=> d!1185956 (isPrefix!3909 lt!1418254 lt!1418276)))

(assert (=> d!1185956 (= (lemmaSamePrefixThenSameSuffix!2080 lt!1418254 lt!1418244 lt!1418254 suffixResult!105 lt!1418276) lt!1418449)))

(declare-fun bs!589159 () Bool)

(assert (= bs!589159 d!1185956))

(declare-fun m!4592165 () Bool)

(assert (=> bs!589159 m!4592165))

(assert (=> bs!589159 m!4591483))

(assert (=> b!4007881 d!1185956))

(declare-fun d!1185958 () Bool)

(assert (=> d!1185958 (= (maxPrefixOneRule!2729 thiss!21717 (rule!9862 token!484) lt!1418276) (Some!9235 (tuple2!42059 (Token!12783 (apply!10019 (transformation!6822 (rule!9862 token!484)) (seqFromList!5047 lt!1418254)) (rule!9862 token!484) (size!32079 lt!1418254) lt!1418254) suffixResult!105)))))

(declare-fun lt!1418452 () Unit!61905)

(declare-fun choose!24209 (LexerInterface!6411 List!43030 List!43028 List!43028 List!43028 Rule!13444) Unit!61905)

(assert (=> d!1185958 (= lt!1418452 (choose!24209 thiss!21717 rules!2999 lt!1418254 lt!1418276 suffixResult!105 (rule!9862 token!484)))))

(assert (=> d!1185958 (not (isEmpty!25630 rules!2999))))

(assert (=> d!1185958 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1547 thiss!21717 rules!2999 lt!1418254 lt!1418276 suffixResult!105 (rule!9862 token!484)) lt!1418452)))

(declare-fun bs!589160 () Bool)

(assert (= bs!589160 d!1185958))

(assert (=> bs!589160 m!4591461))

(assert (=> bs!589160 m!4591425))

(assert (=> bs!589160 m!4591427))

(declare-fun m!4592171 () Bool)

(assert (=> bs!589160 m!4592171))

(assert (=> bs!589160 m!4591495))

(assert (=> bs!589160 m!4591427))

(assert (=> bs!589160 m!4591435))

(assert (=> b!4007881 d!1185958))

(declare-fun d!1185960 () Bool)

(declare-fun dynLambda!18200 (Int BalanceConc!25660) TokenValue!7052)

(assert (=> d!1185960 (= (apply!10019 (transformation!6822 (rule!9862 token!484)) (seqFromList!5047 lt!1418254)) (dynLambda!18200 (toValue!9322 (transformation!6822 (rule!9862 token!484))) (seqFromList!5047 lt!1418254)))))

(declare-fun b_lambda!116929 () Bool)

(assert (=> (not b_lambda!116929) (not d!1185960)))

(declare-fun t!332685 () Bool)

(declare-fun tb!240909 () Bool)

(assert (=> (and b!4007875 (= (toValue!9322 (transformation!6822 (h!48326 rules!2999))) (toValue!9322 (transformation!6822 (rule!9862 token!484)))) t!332685) tb!240909))

(declare-fun result!292010 () Bool)

(assert (=> tb!240909 (= result!292010 (inv!21 (dynLambda!18200 (toValue!9322 (transformation!6822 (rule!9862 token!484))) (seqFromList!5047 lt!1418254))))))

(declare-fun m!4592173 () Bool)

(assert (=> tb!240909 m!4592173))

(assert (=> d!1185960 t!332685))

(declare-fun b_and!307851 () Bool)

(assert (= b_and!307815 (and (=> t!332685 result!292010) b_and!307851)))

(declare-fun t!332687 () Bool)

(declare-fun tb!240911 () Bool)

(assert (=> (and b!4007900 (= (toValue!9322 (transformation!6822 (rule!9862 token!484))) (toValue!9322 (transformation!6822 (rule!9862 token!484)))) t!332687) tb!240911))

(declare-fun result!292014 () Bool)

(assert (= result!292014 result!292010))

(assert (=> d!1185960 t!332687))

(declare-fun b_and!307853 () Bool)

(assert (= b_and!307819 (and (=> t!332687 result!292014) b_and!307853)))

(assert (=> d!1185960 m!4591427))

(declare-fun m!4592175 () Bool)

(assert (=> d!1185960 m!4592175))

(assert (=> b!4007881 d!1185960))

(declare-fun d!1185962 () Bool)

(assert (=> d!1185962 (= (inv!57300 (tag!7682 (rule!9862 token!484))) (= (mod (str.len (value!215060 (tag!7682 (rule!9862 token!484)))) 2) 0))))

(assert (=> b!4007902 d!1185962))

(declare-fun d!1185964 () Bool)

(declare-fun res!1629129 () Bool)

(declare-fun e!2485777 () Bool)

(assert (=> d!1185964 (=> (not res!1629129) (not e!2485777))))

(assert (=> d!1185964 (= res!1629129 (semiInverseModEq!2920 (toChars!9181 (transformation!6822 (rule!9862 token!484))) (toValue!9322 (transformation!6822 (rule!9862 token!484)))))))

(assert (=> d!1185964 (= (inv!57303 (transformation!6822 (rule!9862 token!484))) e!2485777)))

(declare-fun b!4008338 () Bool)

(assert (=> b!4008338 (= e!2485777 (equivClasses!2819 (toChars!9181 (transformation!6822 (rule!9862 token!484))) (toValue!9322 (transformation!6822 (rule!9862 token!484)))))))

(assert (= (and d!1185964 res!1629129) b!4008338))

(assert (=> d!1185964 m!4591749))

(assert (=> b!4008338 m!4591751))

(assert (=> b!4007902 d!1185964))

(declare-fun b!4008349 () Bool)

(declare-fun e!2485785 () Bool)

(declare-fun inv!17 (TokenValue!7052) Bool)

(assert (=> b!4008349 (= e!2485785 (inv!17 (value!215061 token!484)))))

(declare-fun b!4008350 () Bool)

(declare-fun e!2485786 () Bool)

(assert (=> b!4008350 (= e!2485786 e!2485785)))

(declare-fun c!693045 () Bool)

(assert (=> b!4008350 (= c!693045 ((_ is IntegerValue!21157) (value!215061 token!484)))))

(declare-fun b!4008351 () Bool)

(declare-fun e!2485784 () Bool)

(declare-fun inv!15 (TokenValue!7052) Bool)

(assert (=> b!4008351 (= e!2485784 (inv!15 (value!215061 token!484)))))

(declare-fun b!4008352 () Bool)

(declare-fun res!1629132 () Bool)

(assert (=> b!4008352 (=> res!1629132 e!2485784)))

(assert (=> b!4008352 (= res!1629132 (not ((_ is IntegerValue!21158) (value!215061 token!484))))))

(assert (=> b!4008352 (= e!2485785 e!2485784)))

(declare-fun d!1185966 () Bool)

(declare-fun c!693044 () Bool)

(assert (=> d!1185966 (= c!693044 ((_ is IntegerValue!21156) (value!215061 token!484)))))

(assert (=> d!1185966 (= (inv!21 (value!215061 token!484)) e!2485786)))

(declare-fun b!4008353 () Bool)

(declare-fun inv!16 (TokenValue!7052) Bool)

(assert (=> b!4008353 (= e!2485786 (inv!16 (value!215061 token!484)))))

(assert (= (and d!1185966 c!693044) b!4008353))

(assert (= (and d!1185966 (not c!693044)) b!4008350))

(assert (= (and b!4008350 c!693045) b!4008349))

(assert (= (and b!4008350 (not c!693045)) b!4008352))

(assert (= (and b!4008352 (not res!1629132)) b!4008351))

(declare-fun m!4592177 () Bool)

(assert (=> b!4008349 m!4592177))

(declare-fun m!4592179 () Bool)

(assert (=> b!4008351 m!4592179))

(declare-fun m!4592181 () Bool)

(assert (=> b!4008353 m!4592181))

(assert (=> b!4007880 d!1185966))

(declare-fun d!1185968 () Bool)

(declare-fun e!2485788 () Bool)

(assert (=> d!1185968 e!2485788))

(declare-fun res!1629134 () Bool)

(assert (=> d!1185968 (=> (not res!1629134) (not e!2485788))))

(declare-fun lt!1418453 () List!43028)

(assert (=> d!1185968 (= res!1629134 (= (content!6506 lt!1418453) ((_ map or) (content!6506 prefix!494) (content!6506 newSuffix!27))))))

(declare-fun e!2485787 () List!43028)

(assert (=> d!1185968 (= lt!1418453 e!2485787)))

(declare-fun c!693046 () Bool)

(assert (=> d!1185968 (= c!693046 ((_ is Nil!42904) prefix!494))))

(assert (=> d!1185968 (= (++!11224 prefix!494 newSuffix!27) lt!1418453)))

(declare-fun b!4008354 () Bool)

(assert (=> b!4008354 (= e!2485787 newSuffix!27)))

(declare-fun b!4008357 () Bool)

(assert (=> b!4008357 (= e!2485788 (or (not (= newSuffix!27 Nil!42904)) (= lt!1418453 prefix!494)))))

(declare-fun b!4008355 () Bool)

(assert (=> b!4008355 (= e!2485787 (Cons!42904 (h!48324 prefix!494) (++!11224 (t!332653 prefix!494) newSuffix!27)))))

(declare-fun b!4008356 () Bool)

(declare-fun res!1629133 () Bool)

(assert (=> b!4008356 (=> (not res!1629133) (not e!2485788))))

(assert (=> b!4008356 (= res!1629133 (= (size!32079 lt!1418453) (+ (size!32079 prefix!494) (size!32079 newSuffix!27))))))

(assert (= (and d!1185968 c!693046) b!4008354))

(assert (= (and d!1185968 (not c!693046)) b!4008355))

(assert (= (and d!1185968 res!1629134) b!4008356))

(assert (= (and b!4008356 res!1629133) b!4008357))

(declare-fun m!4592183 () Bool)

(assert (=> d!1185968 m!4592183))

(assert (=> d!1185968 m!4591687))

(declare-fun m!4592185 () Bool)

(assert (=> d!1185968 m!4592185))

(declare-fun m!4592187 () Bool)

(assert (=> b!4008355 m!4592187))

(declare-fun m!4592189 () Bool)

(assert (=> b!4008356 m!4592189))

(assert (=> b!4008356 m!4591497))

(assert (=> b!4008356 m!4591551))

(assert (=> b!4007901 d!1185968))

(declare-fun d!1185970 () Bool)

(declare-fun e!2485790 () Bool)

(assert (=> d!1185970 e!2485790))

(declare-fun res!1629136 () Bool)

(assert (=> d!1185970 (=> (not res!1629136) (not e!2485790))))

(declare-fun lt!1418454 () List!43028)

(assert (=> d!1185970 (= res!1629136 (= (content!6506 lt!1418454) ((_ map or) (content!6506 lt!1418254) (content!6506 newSuffixResult!27))))))

(declare-fun e!2485789 () List!43028)

(assert (=> d!1185970 (= lt!1418454 e!2485789)))

(declare-fun c!693047 () Bool)

(assert (=> d!1185970 (= c!693047 ((_ is Nil!42904) lt!1418254))))

(assert (=> d!1185970 (= (++!11224 lt!1418254 newSuffixResult!27) lt!1418454)))

(declare-fun b!4008358 () Bool)

(assert (=> b!4008358 (= e!2485789 newSuffixResult!27)))

(declare-fun b!4008361 () Bool)

(assert (=> b!4008361 (= e!2485790 (or (not (= newSuffixResult!27 Nil!42904)) (= lt!1418454 lt!1418254)))))

(declare-fun b!4008359 () Bool)

(assert (=> b!4008359 (= e!2485789 (Cons!42904 (h!48324 lt!1418254) (++!11224 (t!332653 lt!1418254) newSuffixResult!27)))))

(declare-fun b!4008360 () Bool)

(declare-fun res!1629135 () Bool)

(assert (=> b!4008360 (=> (not res!1629135) (not e!2485790))))

(assert (=> b!4008360 (= res!1629135 (= (size!32079 lt!1418454) (+ (size!32079 lt!1418254) (size!32079 newSuffixResult!27))))))

(assert (= (and d!1185970 c!693047) b!4008358))

(assert (= (and d!1185970 (not c!693047)) b!4008359))

(assert (= (and d!1185970 res!1629136) b!4008360))

(assert (= (and b!4008360 res!1629135) b!4008361))

(declare-fun m!4592191 () Bool)

(assert (=> d!1185970 m!4592191))

(assert (=> d!1185970 m!4591697))

(declare-fun m!4592193 () Bool)

(assert (=> d!1185970 m!4592193))

(declare-fun m!4592195 () Bool)

(assert (=> b!4008359 m!4592195))

(declare-fun m!4592197 () Bool)

(assert (=> b!4008360 m!4592197))

(assert (=> b!4008360 m!4591495))

(declare-fun m!4592199 () Bool)

(assert (=> b!4008360 m!4592199))

(assert (=> b!4007901 d!1185970))

(declare-fun b!4008362 () Bool)

(declare-fun res!1629138 () Bool)

(declare-fun e!2485792 () Bool)

(assert (=> b!4008362 (=> (not res!1629138) (not e!2485792))))

(declare-fun lt!1418457 () Option!9236)

(assert (=> b!4008362 (= res!1629138 (< (size!32079 (_2!24163 (get!14100 lt!1418457))) (size!32079 lt!1418249)))))

(declare-fun b!4008363 () Bool)

(declare-fun res!1629142 () Bool)

(assert (=> b!4008363 (=> (not res!1629142) (not e!2485792))))

(assert (=> b!4008363 (= res!1629142 (= (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418457)))) (originalCharacters!7422 (_1!24163 (get!14100 lt!1418457)))))))

(declare-fun d!1185972 () Bool)

(declare-fun e!2485791 () Bool)

(assert (=> d!1185972 e!2485791))

(declare-fun res!1629139 () Bool)

(assert (=> d!1185972 (=> res!1629139 e!2485791)))

(assert (=> d!1185972 (= res!1629139 (isEmpty!25632 lt!1418457))))

(declare-fun e!2485793 () Option!9236)

(assert (=> d!1185972 (= lt!1418457 e!2485793)))

(declare-fun c!693048 () Bool)

(assert (=> d!1185972 (= c!693048 (and ((_ is Cons!42906) rules!2999) ((_ is Nil!42906) (t!332655 rules!2999))))))

(declare-fun lt!1418459 () Unit!61905)

(declare-fun lt!1418456 () Unit!61905)

(assert (=> d!1185972 (= lt!1418459 lt!1418456)))

(assert (=> d!1185972 (isPrefix!3909 lt!1418249 lt!1418249)))

(assert (=> d!1185972 (= lt!1418456 (lemmaIsPrefixRefl!2485 lt!1418249 lt!1418249))))

(assert (=> d!1185972 (rulesValidInductive!2486 thiss!21717 rules!2999)))

(assert (=> d!1185972 (= (maxPrefix!3709 thiss!21717 rules!2999 lt!1418249) lt!1418457)))

(declare-fun b!4008364 () Bool)

(declare-fun res!1629143 () Bool)

(assert (=> b!4008364 (=> (not res!1629143) (not e!2485792))))

(assert (=> b!4008364 (= res!1629143 (matchR!5688 (regex!6822 (rule!9862 (_1!24163 (get!14100 lt!1418457)))) (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418457))))))))

(declare-fun b!4008365 () Bool)

(assert (=> b!4008365 (= e!2485791 e!2485792)))

(declare-fun res!1629140 () Bool)

(assert (=> b!4008365 (=> (not res!1629140) (not e!2485792))))

(assert (=> b!4008365 (= res!1629140 (isDefined!7065 lt!1418457))))

(declare-fun b!4008366 () Bool)

(declare-fun res!1629137 () Bool)

(assert (=> b!4008366 (=> (not res!1629137) (not e!2485792))))

(assert (=> b!4008366 (= res!1629137 (= (++!11224 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418457)))) (_2!24163 (get!14100 lt!1418457))) lt!1418249))))

(declare-fun b!4008367 () Bool)

(declare-fun lt!1418458 () Option!9236)

(declare-fun lt!1418455 () Option!9236)

(assert (=> b!4008367 (= e!2485793 (ite (and ((_ is None!9235) lt!1418458) ((_ is None!9235) lt!1418455)) None!9235 (ite ((_ is None!9235) lt!1418455) lt!1418458 (ite ((_ is None!9235) lt!1418458) lt!1418455 (ite (>= (size!32080 (_1!24163 (v!39601 lt!1418458))) (size!32080 (_1!24163 (v!39601 lt!1418455)))) lt!1418458 lt!1418455)))))))

(declare-fun call!286235 () Option!9236)

(assert (=> b!4008367 (= lt!1418458 call!286235)))

(assert (=> b!4008367 (= lt!1418455 (maxPrefix!3709 thiss!21717 (t!332655 rules!2999) lt!1418249))))

(declare-fun b!4008368 () Bool)

(assert (=> b!4008368 (= e!2485792 (contains!8529 rules!2999 (rule!9862 (_1!24163 (get!14100 lt!1418457)))))))

(declare-fun bm!286230 () Bool)

(assert (=> bm!286230 (= call!286235 (maxPrefixOneRule!2729 thiss!21717 (h!48326 rules!2999) lt!1418249))))

(declare-fun b!4008369 () Bool)

(assert (=> b!4008369 (= e!2485793 call!286235)))

(declare-fun b!4008370 () Bool)

(declare-fun res!1629141 () Bool)

(assert (=> b!4008370 (=> (not res!1629141) (not e!2485792))))

(assert (=> b!4008370 (= res!1629141 (= (value!215061 (_1!24163 (get!14100 lt!1418457))) (apply!10019 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418457)))) (seqFromList!5047 (originalCharacters!7422 (_1!24163 (get!14100 lt!1418457)))))))))

(assert (= (and d!1185972 c!693048) b!4008369))

(assert (= (and d!1185972 (not c!693048)) b!4008367))

(assert (= (or b!4008369 b!4008367) bm!286230))

(assert (= (and d!1185972 (not res!1629139)) b!4008365))

(assert (= (and b!4008365 res!1629140) b!4008363))

(assert (= (and b!4008363 res!1629142) b!4008362))

(assert (= (and b!4008362 res!1629138) b!4008366))

(assert (= (and b!4008366 res!1629137) b!4008370))

(assert (= (and b!4008370 res!1629141) b!4008364))

(assert (= (and b!4008364 res!1629143) b!4008368))

(declare-fun m!4592201 () Bool)

(assert (=> d!1185972 m!4592201))

(declare-fun m!4592203 () Bool)

(assert (=> d!1185972 m!4592203))

(declare-fun m!4592205 () Bool)

(assert (=> d!1185972 m!4592205))

(assert (=> d!1185972 m!4591657))

(declare-fun m!4592207 () Bool)

(assert (=> b!4008362 m!4592207))

(declare-fun m!4592209 () Bool)

(assert (=> b!4008362 m!4592209))

(declare-fun m!4592211 () Bool)

(assert (=> b!4008362 m!4592211))

(assert (=> b!4008368 m!4592207))

(declare-fun m!4592213 () Bool)

(assert (=> b!4008368 m!4592213))

(assert (=> b!4008366 m!4592207))

(declare-fun m!4592215 () Bool)

(assert (=> b!4008366 m!4592215))

(assert (=> b!4008366 m!4592215))

(declare-fun m!4592217 () Bool)

(assert (=> b!4008366 m!4592217))

(assert (=> b!4008366 m!4592217))

(declare-fun m!4592219 () Bool)

(assert (=> b!4008366 m!4592219))

(assert (=> b!4008363 m!4592207))

(assert (=> b!4008363 m!4592215))

(assert (=> b!4008363 m!4592215))

(assert (=> b!4008363 m!4592217))

(assert (=> b!4008370 m!4592207))

(declare-fun m!4592221 () Bool)

(assert (=> b!4008370 m!4592221))

(assert (=> b!4008370 m!4592221))

(declare-fun m!4592223 () Bool)

(assert (=> b!4008370 m!4592223))

(declare-fun m!4592225 () Bool)

(assert (=> b!4008365 m!4592225))

(declare-fun m!4592227 () Bool)

(assert (=> b!4008367 m!4592227))

(assert (=> b!4008364 m!4592207))

(assert (=> b!4008364 m!4592215))

(assert (=> b!4008364 m!4592215))

(assert (=> b!4008364 m!4592217))

(assert (=> b!4008364 m!4592217))

(declare-fun m!4592229 () Bool)

(assert (=> b!4008364 m!4592229))

(declare-fun m!4592231 () Bool)

(assert (=> bm!286230 m!4592231))

(assert (=> b!4007879 d!1185972))

(declare-fun d!1185974 () Bool)

(assert (=> d!1185974 (= suffixResult!105 lt!1418275)))

(declare-fun lt!1418460 () Unit!61905)

(assert (=> d!1185974 (= lt!1418460 (choose!24208 lt!1418254 suffixResult!105 lt!1418254 lt!1418275 lt!1418276))))

(assert (=> d!1185974 (isPrefix!3909 lt!1418254 lt!1418276)))

(assert (=> d!1185974 (= (lemmaSamePrefixThenSameSuffix!2080 lt!1418254 suffixResult!105 lt!1418254 lt!1418275 lt!1418276) lt!1418460)))

(declare-fun bs!589161 () Bool)

(assert (= bs!589161 d!1185974))

(declare-fun m!4592233 () Bool)

(assert (=> bs!589161 m!4592233))

(assert (=> bs!589161 m!4591483))

(assert (=> b!4007879 d!1185974))

(declare-fun d!1185976 () Bool)

(declare-fun e!2485794 () Bool)

(assert (=> d!1185976 e!2485794))

(declare-fun res!1629144 () Bool)

(assert (=> d!1185976 (=> res!1629144 e!2485794)))

(declare-fun lt!1418461 () Bool)

(assert (=> d!1185976 (= res!1629144 (not lt!1418461))))

(declare-fun e!2485796 () Bool)

(assert (=> d!1185976 (= lt!1418461 e!2485796)))

(declare-fun res!1629146 () Bool)

(assert (=> d!1185976 (=> res!1629146 e!2485796)))

(assert (=> d!1185976 (= res!1629146 ((_ is Nil!42904) lt!1418254))))

(assert (=> d!1185976 (= (isPrefix!3909 lt!1418254 lt!1418264) lt!1418461)))

(declare-fun b!4008373 () Bool)

(declare-fun e!2485795 () Bool)

(assert (=> b!4008373 (= e!2485795 (isPrefix!3909 (tail!6247 lt!1418254) (tail!6247 lt!1418264)))))

(declare-fun b!4008372 () Bool)

(declare-fun res!1629145 () Bool)

(assert (=> b!4008372 (=> (not res!1629145) (not e!2485795))))

(assert (=> b!4008372 (= res!1629145 (= (head!8515 lt!1418254) (head!8515 lt!1418264)))))

(declare-fun b!4008374 () Bool)

(assert (=> b!4008374 (= e!2485794 (>= (size!32079 lt!1418264) (size!32079 lt!1418254)))))

(declare-fun b!4008371 () Bool)

(assert (=> b!4008371 (= e!2485796 e!2485795)))

(declare-fun res!1629147 () Bool)

(assert (=> b!4008371 (=> (not res!1629147) (not e!2485795))))

(assert (=> b!4008371 (= res!1629147 (not ((_ is Nil!42904) lt!1418264)))))

(assert (= (and d!1185976 (not res!1629146)) b!4008371))

(assert (= (and b!4008371 res!1629147) b!4008372))

(assert (= (and b!4008372 res!1629145) b!4008373))

(assert (= (and d!1185976 (not res!1629144)) b!4008374))

(assert (=> b!4008373 m!4592151))

(declare-fun m!4592235 () Bool)

(assert (=> b!4008373 m!4592235))

(assert (=> b!4008373 m!4592151))

(assert (=> b!4008373 m!4592235))

(declare-fun m!4592237 () Bool)

(assert (=> b!4008373 m!4592237))

(assert (=> b!4008372 m!4592157))

(declare-fun m!4592239 () Bool)

(assert (=> b!4008372 m!4592239))

(declare-fun m!4592241 () Bool)

(assert (=> b!4008374 m!4592241))

(assert (=> b!4008374 m!4591495))

(assert (=> b!4007879 d!1185976))

(declare-fun d!1185978 () Bool)

(assert (=> d!1185978 (isPrefix!3909 lt!1418254 (++!11224 lt!1418254 lt!1418275))))

(declare-fun lt!1418462 () Unit!61905)

(assert (=> d!1185978 (= lt!1418462 (choose!24205 lt!1418254 lt!1418275))))

(assert (=> d!1185978 (= (lemmaConcatTwoListThenFirstIsPrefix!2750 lt!1418254 lt!1418275) lt!1418462)))

(declare-fun bs!589162 () Bool)

(assert (= bs!589162 d!1185978))

(assert (=> bs!589162 m!4591405))

(assert (=> bs!589162 m!4591405))

(declare-fun m!4592243 () Bool)

(assert (=> bs!589162 m!4592243))

(declare-fun m!4592245 () Bool)

(assert (=> bs!589162 m!4592245))

(assert (=> b!4007879 d!1185978))

(declare-fun d!1185980 () Bool)

(assert (=> d!1185980 (= (isEmpty!25630 rules!2999) ((_ is Nil!42906) rules!2999))))

(assert (=> b!4007889 d!1185980))

(declare-fun d!1185982 () Bool)

(declare-fun e!2485797 () Bool)

(assert (=> d!1185982 e!2485797))

(declare-fun res!1629148 () Bool)

(assert (=> d!1185982 (=> res!1629148 e!2485797)))

(declare-fun lt!1418463 () Bool)

(assert (=> d!1185982 (= res!1629148 (not lt!1418463))))

(declare-fun e!2485799 () Bool)

(assert (=> d!1185982 (= lt!1418463 e!2485799)))

(declare-fun res!1629150 () Bool)

(assert (=> d!1185982 (=> res!1629150 e!2485799)))

(assert (=> d!1185982 (= res!1629150 ((_ is Nil!42904) newSuffix!27))))

(assert (=> d!1185982 (= (isPrefix!3909 newSuffix!27 suffix!1299) lt!1418463)))

(declare-fun b!4008377 () Bool)

(declare-fun e!2485798 () Bool)

(assert (=> b!4008377 (= e!2485798 (isPrefix!3909 (tail!6247 newSuffix!27) (tail!6247 suffix!1299)))))

(declare-fun b!4008376 () Bool)

(declare-fun res!1629149 () Bool)

(assert (=> b!4008376 (=> (not res!1629149) (not e!2485798))))

(assert (=> b!4008376 (= res!1629149 (= (head!8515 newSuffix!27) (head!8515 suffix!1299)))))

(declare-fun b!4008378 () Bool)

(assert (=> b!4008378 (= e!2485797 (>= (size!32079 suffix!1299) (size!32079 newSuffix!27)))))

(declare-fun b!4008375 () Bool)

(assert (=> b!4008375 (= e!2485799 e!2485798)))

(declare-fun res!1629151 () Bool)

(assert (=> b!4008375 (=> (not res!1629151) (not e!2485798))))

(assert (=> b!4008375 (= res!1629151 (not ((_ is Nil!42904) suffix!1299)))))

(assert (= (and d!1185982 (not res!1629150)) b!4008375))

(assert (= (and b!4008375 res!1629151) b!4008376))

(assert (= (and b!4008376 res!1629149) b!4008377))

(assert (= (and d!1185982 (not res!1629148)) b!4008378))

(declare-fun m!4592247 () Bool)

(assert (=> b!4008377 m!4592247))

(declare-fun m!4592249 () Bool)

(assert (=> b!4008377 m!4592249))

(assert (=> b!4008377 m!4592247))

(assert (=> b!4008377 m!4592249))

(declare-fun m!4592251 () Bool)

(assert (=> b!4008377 m!4592251))

(declare-fun m!4592253 () Bool)

(assert (=> b!4008376 m!4592253))

(declare-fun m!4592255 () Bool)

(assert (=> b!4008376 m!4592255))

(assert (=> b!4008378 m!4591549))

(assert (=> b!4008378 m!4591551))

(assert (=> b!4007878 d!1185982))

(declare-fun d!1185984 () Bool)

(declare-fun lt!1418466 () Int)

(assert (=> d!1185984 (>= lt!1418466 0)))

(declare-fun e!2485802 () Int)

(assert (=> d!1185984 (= lt!1418466 e!2485802)))

(declare-fun c!693051 () Bool)

(assert (=> d!1185984 (= c!693051 ((_ is Nil!42904) lt!1418254))))

(assert (=> d!1185984 (= (size!32079 lt!1418254) lt!1418466)))

(declare-fun b!4008383 () Bool)

(assert (=> b!4008383 (= e!2485802 0)))

(declare-fun b!4008384 () Bool)

(assert (=> b!4008384 (= e!2485802 (+ 1 (size!32079 (t!332653 lt!1418254))))))

(assert (= (and d!1185984 c!693051) b!4008383))

(assert (= (and d!1185984 (not c!693051)) b!4008384))

(declare-fun m!4592257 () Bool)

(assert (=> b!4008384 m!4592257))

(assert (=> b!4007899 d!1185984))

(declare-fun d!1185986 () Bool)

(declare-fun lt!1418467 () Int)

(assert (=> d!1185986 (>= lt!1418467 0)))

(declare-fun e!2485803 () Int)

(assert (=> d!1185986 (= lt!1418467 e!2485803)))

(declare-fun c!693052 () Bool)

(assert (=> d!1185986 (= c!693052 ((_ is Nil!42904) prefix!494))))

(assert (=> d!1185986 (= (size!32079 prefix!494) lt!1418467)))

(declare-fun b!4008385 () Bool)

(assert (=> b!4008385 (= e!2485803 0)))

(declare-fun b!4008386 () Bool)

(assert (=> b!4008386 (= e!2485803 (+ 1 (size!32079 (t!332653 prefix!494))))))

(assert (= (and d!1185986 c!693052) b!4008385))

(assert (= (and d!1185986 (not c!693052)) b!4008386))

(declare-fun m!4592259 () Bool)

(assert (=> b!4008386 m!4592259))

(assert (=> b!4007899 d!1185986))

(declare-fun d!1185988 () Bool)

(declare-fun list!15944 (Conc!13033) List!43028)

(assert (=> d!1185988 (= (list!15942 (charsOf!4638 token!484)) (list!15944 (c!692980 (charsOf!4638 token!484))))))

(declare-fun bs!589163 () Bool)

(assert (= bs!589163 d!1185988))

(declare-fun m!4592261 () Bool)

(assert (=> bs!589163 m!4592261))

(assert (=> b!4007899 d!1185988))

(declare-fun d!1185990 () Bool)

(declare-fun lt!1418470 () BalanceConc!25660)

(assert (=> d!1185990 (= (list!15942 lt!1418470) (originalCharacters!7422 token!484))))

(assert (=> d!1185990 (= lt!1418470 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 token!484))) (value!215061 token!484)))))

(assert (=> d!1185990 (= (charsOf!4638 token!484) lt!1418470)))

(declare-fun b_lambda!116931 () Bool)

(assert (=> (not b_lambda!116931) (not d!1185990)))

(assert (=> d!1185990 t!332665))

(declare-fun b_and!307855 () Bool)

(assert (= b_and!307831 (and (=> t!332665 result!291982) b_and!307855)))

(assert (=> d!1185990 t!332667))

(declare-fun b_and!307857 () Bool)

(assert (= b_and!307833 (and (=> t!332667 result!291986) b_and!307857)))

(declare-fun m!4592263 () Bool)

(assert (=> d!1185990 m!4592263))

(assert (=> d!1185990 m!4591791))

(assert (=> b!4007899 d!1185990))

(declare-fun d!1185992 () Bool)

(declare-fun res!1629154 () Bool)

(declare-fun e!2485806 () Bool)

(assert (=> d!1185992 (=> (not res!1629154) (not e!2485806))))

(declare-fun rulesValid!2654 (LexerInterface!6411 List!43030) Bool)

(assert (=> d!1185992 (= res!1629154 (rulesValid!2654 thiss!21717 rules!2999))))

(assert (=> d!1185992 (= (rulesInvariant!5754 thiss!21717 rules!2999) e!2485806)))

(declare-fun b!4008389 () Bool)

(declare-datatypes ((List!43031 0))(
  ( (Nil!42907) (Cons!42907 (h!48327 String!48978) (t!332704 List!43031)) )
))
(declare-fun noDuplicateTag!2655 (LexerInterface!6411 List!43030 List!43031) Bool)

(assert (=> b!4008389 (= e!2485806 (noDuplicateTag!2655 thiss!21717 rules!2999 Nil!42907))))

(assert (= (and d!1185992 res!1629154) b!4008389))

(declare-fun m!4592265 () Bool)

(assert (=> d!1185992 m!4592265))

(declare-fun m!4592267 () Bool)

(assert (=> b!4008389 m!4592267))

(assert (=> b!4007888 d!1185992))

(declare-fun d!1185994 () Bool)

(declare-fun res!1629155 () Bool)

(declare-fun e!2485807 () Bool)

(assert (=> d!1185994 (=> (not res!1629155) (not e!2485807))))

(assert (=> d!1185994 (= res!1629155 (validRegex!5314 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))))))

(assert (=> d!1185994 (= (ruleValid!2754 thiss!21717 (rule!9862 (_1!24163 (v!39601 lt!1418269)))) e!2485807)))

(declare-fun b!4008390 () Bool)

(declare-fun res!1629156 () Bool)

(assert (=> b!4008390 (=> (not res!1629156) (not e!2485807))))

(assert (=> b!4008390 (= res!1629156 (not (nullable!4114 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))))))

(declare-fun b!4008391 () Bool)

(assert (=> b!4008391 (= e!2485807 (not (= (tag!7682 (rule!9862 (_1!24163 (v!39601 lt!1418269)))) (String!48979 ""))))))

(assert (= (and d!1185994 res!1629155) b!4008390))

(assert (= (and b!4008390 res!1629156) b!4008391))

(declare-fun m!4592269 () Bool)

(assert (=> d!1185994 m!4592269))

(declare-fun m!4592271 () Bool)

(assert (=> b!4008390 m!4592271))

(assert (=> b!4007887 d!1185994))

(declare-fun d!1185996 () Bool)

(declare-fun lt!1418471 () BalanceConc!25660)

(assert (=> d!1185996 (= (list!15942 lt!1418471) (originalCharacters!7422 (_1!24163 (v!39601 lt!1418269))))))

(assert (=> d!1185996 (= lt!1418471 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (value!215061 (_1!24163 (v!39601 lt!1418269)))))))

(assert (=> d!1185996 (= (charsOf!4638 (_1!24163 (v!39601 lt!1418269))) lt!1418471)))

(declare-fun b_lambda!116933 () Bool)

(assert (=> (not b_lambda!116933) (not d!1185996)))

(declare-fun t!332689 () Bool)

(declare-fun tb!240913 () Bool)

(assert (=> (and b!4007875 (= (toChars!9181 (transformation!6822 (h!48326 rules!2999))) (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))) t!332689) tb!240913))

(declare-fun b!4008392 () Bool)

(declare-fun e!2485808 () Bool)

(declare-fun tp!1219682 () Bool)

(assert (=> b!4008392 (= e!2485808 (and (inv!57307 (c!692980 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (value!215061 (_1!24163 (v!39601 lt!1418269)))))) tp!1219682))))

(declare-fun result!292016 () Bool)

(assert (=> tb!240913 (= result!292016 (and (inv!57308 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (value!215061 (_1!24163 (v!39601 lt!1418269))))) e!2485808))))

(assert (= tb!240913 b!4008392))

(declare-fun m!4592273 () Bool)

(assert (=> b!4008392 m!4592273))

(declare-fun m!4592275 () Bool)

(assert (=> tb!240913 m!4592275))

(assert (=> d!1185996 t!332689))

(declare-fun b_and!307859 () Bool)

(assert (= b_and!307855 (and (=> t!332689 result!292016) b_and!307859)))

(declare-fun tb!240915 () Bool)

(declare-fun t!332691 () Bool)

(assert (=> (and b!4007900 (= (toChars!9181 (transformation!6822 (rule!9862 token!484))) (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))) t!332691) tb!240915))

(declare-fun result!292018 () Bool)

(assert (= result!292018 result!292016))

(assert (=> d!1185996 t!332691))

(declare-fun b_and!307861 () Bool)

(assert (= b_and!307857 (and (=> t!332691 result!292018) b_and!307861)))

(declare-fun m!4592277 () Bool)

(assert (=> d!1185996 m!4592277))

(declare-fun m!4592279 () Bool)

(assert (=> d!1185996 m!4592279))

(assert (=> b!4007887 d!1185996))

(declare-fun d!1185998 () Bool)

(assert (=> d!1185998 (= (size!32080 token!484) (size!32079 (originalCharacters!7422 token!484)))))

(declare-fun Unit!61913 () Unit!61905)

(assert (=> d!1185998 (= (lemmaCharactersSize!1381 token!484) Unit!61913)))

(declare-fun bs!589164 () Bool)

(assert (= bs!589164 d!1185998))

(assert (=> bs!589164 m!4591459))

(assert (=> b!4007887 d!1185998))

(declare-fun d!1186000 () Bool)

(assert (=> d!1186000 (= (size!32080 (_1!24163 (v!39601 lt!1418269))) (size!32079 (originalCharacters!7422 (_1!24163 (v!39601 lt!1418269)))))))

(declare-fun Unit!61914 () Unit!61905)

(assert (=> d!1186000 (= (lemmaCharactersSize!1381 (_1!24163 (v!39601 lt!1418269))) Unit!61914)))

(declare-fun bs!589165 () Bool)

(assert (= bs!589165 d!1186000))

(declare-fun m!4592281 () Bool)

(assert (=> bs!589165 m!4592281))

(assert (=> b!4007887 d!1186000))

(declare-fun d!1186002 () Bool)

(assert (=> d!1186002 (= (list!15942 (charsOf!4638 (_1!24163 (v!39601 lt!1418269)))) (list!15944 (c!692980 (charsOf!4638 (_1!24163 (v!39601 lt!1418269))))))))

(declare-fun bs!589166 () Bool)

(assert (= bs!589166 d!1186002))

(declare-fun m!4592283 () Bool)

(assert (=> bs!589166 m!4592283))

(assert (=> b!4007887 d!1186002))

(declare-fun d!1186004 () Bool)

(assert (=> d!1186004 (= (seqFromList!5047 lt!1418251) (fromListB!2312 lt!1418251))))

(declare-fun bs!589167 () Bool)

(assert (= bs!589167 d!1186004))

(declare-fun m!4592285 () Bool)

(assert (=> bs!589167 m!4592285))

(assert (=> b!4007887 d!1186004))

(declare-fun d!1186006 () Bool)

(assert (=> d!1186006 (ruleValid!2754 thiss!21717 (rule!9862 (_1!24163 (v!39601 lt!1418269))))))

(declare-fun lt!1418472 () Unit!61905)

(assert (=> d!1186006 (= lt!1418472 (choose!24204 thiss!21717 (rule!9862 (_1!24163 (v!39601 lt!1418269))) rules!2999))))

(assert (=> d!1186006 (contains!8529 rules!2999 (rule!9862 (_1!24163 (v!39601 lt!1418269))))))

(assert (=> d!1186006 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1828 thiss!21717 (rule!9862 (_1!24163 (v!39601 lt!1418269))) rules!2999) lt!1418472)))

(declare-fun bs!589168 () Bool)

(assert (= bs!589168 d!1186006))

(assert (=> bs!589168 m!4591517))

(declare-fun m!4592287 () Bool)

(assert (=> bs!589168 m!4592287))

(declare-fun m!4592289 () Bool)

(assert (=> bs!589168 m!4592289))

(assert (=> b!4007887 d!1186006))

(declare-fun d!1186008 () Bool)

(declare-fun e!2485810 () Bool)

(assert (=> d!1186008 e!2485810))

(declare-fun res!1629158 () Bool)

(assert (=> d!1186008 (=> (not res!1629158) (not e!2485810))))

(declare-fun lt!1418473 () List!43028)

(assert (=> d!1186008 (= res!1629158 (= (content!6506 lt!1418473) ((_ map or) (content!6506 lt!1418251) (content!6506 (_2!24163 (v!39601 lt!1418269))))))))

(declare-fun e!2485809 () List!43028)

(assert (=> d!1186008 (= lt!1418473 e!2485809)))

(declare-fun c!693053 () Bool)

(assert (=> d!1186008 (= c!693053 ((_ is Nil!42904) lt!1418251))))

(assert (=> d!1186008 (= (++!11224 lt!1418251 (_2!24163 (v!39601 lt!1418269))) lt!1418473)))

(declare-fun b!4008393 () Bool)

(assert (=> b!4008393 (= e!2485809 (_2!24163 (v!39601 lt!1418269)))))

(declare-fun b!4008396 () Bool)

(assert (=> b!4008396 (= e!2485810 (or (not (= (_2!24163 (v!39601 lt!1418269)) Nil!42904)) (= lt!1418473 lt!1418251)))))

(declare-fun b!4008394 () Bool)

(assert (=> b!4008394 (= e!2485809 (Cons!42904 (h!48324 lt!1418251) (++!11224 (t!332653 lt!1418251) (_2!24163 (v!39601 lt!1418269)))))))

(declare-fun b!4008395 () Bool)

(declare-fun res!1629157 () Bool)

(assert (=> b!4008395 (=> (not res!1629157) (not e!2485810))))

(assert (=> b!4008395 (= res!1629157 (= (size!32079 lt!1418473) (+ (size!32079 lt!1418251) (size!32079 (_2!24163 (v!39601 lt!1418269))))))))

(assert (= (and d!1186008 c!693053) b!4008393))

(assert (= (and d!1186008 (not c!693053)) b!4008394))

(assert (= (and d!1186008 res!1629158) b!4008395))

(assert (= (and b!4008395 res!1629157) b!4008396))

(declare-fun m!4592291 () Bool)

(assert (=> d!1186008 m!4592291))

(declare-fun m!4592293 () Bool)

(assert (=> d!1186008 m!4592293))

(declare-fun m!4592295 () Bool)

(assert (=> d!1186008 m!4592295))

(declare-fun m!4592297 () Bool)

(assert (=> b!4008394 m!4592297))

(declare-fun m!4592299 () Bool)

(assert (=> b!4008395 m!4592299))

(assert (=> b!4008395 m!4591519))

(declare-fun m!4592301 () Bool)

(assert (=> b!4008395 m!4592301))

(assert (=> b!4007887 d!1186008))

(declare-fun d!1186010 () Bool)

(declare-fun e!2485811 () Bool)

(assert (=> d!1186010 e!2485811))

(declare-fun res!1629159 () Bool)

(assert (=> d!1186010 (=> res!1629159 e!2485811)))

(declare-fun lt!1418474 () Bool)

(assert (=> d!1186010 (= res!1629159 (not lt!1418474))))

(declare-fun e!2485813 () Bool)

(assert (=> d!1186010 (= lt!1418474 e!2485813)))

(declare-fun res!1629161 () Bool)

(assert (=> d!1186010 (=> res!1629161 e!2485813)))

(assert (=> d!1186010 (= res!1629161 ((_ is Nil!42904) lt!1418251))))

(assert (=> d!1186010 (= (isPrefix!3909 lt!1418251 (++!11224 lt!1418251 (_2!24163 (v!39601 lt!1418269)))) lt!1418474)))

(declare-fun b!4008399 () Bool)

(declare-fun e!2485812 () Bool)

(assert (=> b!4008399 (= e!2485812 (isPrefix!3909 (tail!6247 lt!1418251) (tail!6247 (++!11224 lt!1418251 (_2!24163 (v!39601 lt!1418269))))))))

(declare-fun b!4008398 () Bool)

(declare-fun res!1629160 () Bool)

(assert (=> b!4008398 (=> (not res!1629160) (not e!2485812))))

(assert (=> b!4008398 (= res!1629160 (= (head!8515 lt!1418251) (head!8515 (++!11224 lt!1418251 (_2!24163 (v!39601 lt!1418269))))))))

(declare-fun b!4008400 () Bool)

(assert (=> b!4008400 (= e!2485811 (>= (size!32079 (++!11224 lt!1418251 (_2!24163 (v!39601 lt!1418269)))) (size!32079 lt!1418251)))))

(declare-fun b!4008397 () Bool)

(assert (=> b!4008397 (= e!2485813 e!2485812)))

(declare-fun res!1629162 () Bool)

(assert (=> b!4008397 (=> (not res!1629162) (not e!2485812))))

(assert (=> b!4008397 (= res!1629162 (not ((_ is Nil!42904) (++!11224 lt!1418251 (_2!24163 (v!39601 lt!1418269))))))))

(assert (= (and d!1186010 (not res!1629161)) b!4008397))

(assert (= (and b!4008397 res!1629162) b!4008398))

(assert (= (and b!4008398 res!1629160) b!4008399))

(assert (= (and d!1186010 (not res!1629159)) b!4008400))

(declare-fun m!4592303 () Bool)

(assert (=> b!4008399 m!4592303))

(assert (=> b!4008399 m!4591513))

(declare-fun m!4592305 () Bool)

(assert (=> b!4008399 m!4592305))

(assert (=> b!4008399 m!4592303))

(assert (=> b!4008399 m!4592305))

(declare-fun m!4592307 () Bool)

(assert (=> b!4008399 m!4592307))

(declare-fun m!4592309 () Bool)

(assert (=> b!4008398 m!4592309))

(assert (=> b!4008398 m!4591513))

(declare-fun m!4592311 () Bool)

(assert (=> b!4008398 m!4592311))

(assert (=> b!4008400 m!4591513))

(declare-fun m!4592313 () Bool)

(assert (=> b!4008400 m!4592313))

(assert (=> b!4008400 m!4591519))

(assert (=> b!4007887 d!1186010))

(declare-fun d!1186012 () Bool)

(assert (=> d!1186012 (isPrefix!3909 lt!1418251 (++!11224 lt!1418251 newSuffixResult!27))))

(declare-fun lt!1418475 () Unit!61905)

(assert (=> d!1186012 (= lt!1418475 (choose!24205 lt!1418251 newSuffixResult!27))))

(assert (=> d!1186012 (= (lemmaConcatTwoListThenFirstIsPrefix!2750 lt!1418251 newSuffixResult!27) lt!1418475)))

(declare-fun bs!589169 () Bool)

(assert (= bs!589169 d!1186012))

(assert (=> bs!589169 m!4591539))

(assert (=> bs!589169 m!4591539))

(assert (=> bs!589169 m!4591541))

(declare-fun m!4592315 () Bool)

(assert (=> bs!589169 m!4592315))

(assert (=> b!4007887 d!1186012))

(declare-fun d!1186014 () Bool)

(assert (=> d!1186014 (= (apply!10019 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))) (seqFromList!5047 lt!1418251)) (dynLambda!18200 (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (seqFromList!5047 lt!1418251)))))

(declare-fun b_lambda!116935 () Bool)

(assert (=> (not b_lambda!116935) (not d!1186014)))

(declare-fun t!332693 () Bool)

(declare-fun tb!240917 () Bool)

(assert (=> (and b!4007875 (= (toValue!9322 (transformation!6822 (h!48326 rules!2999))) (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))) t!332693) tb!240917))

(declare-fun result!292020 () Bool)

(assert (=> tb!240917 (= result!292020 (inv!21 (dynLambda!18200 (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (seqFromList!5047 lt!1418251))))))

(declare-fun m!4592317 () Bool)

(assert (=> tb!240917 m!4592317))

(assert (=> d!1186014 t!332693))

(declare-fun b_and!307863 () Bool)

(assert (= b_and!307851 (and (=> t!332693 result!292020) b_and!307863)))

(declare-fun t!332695 () Bool)

(declare-fun tb!240919 () Bool)

(assert (=> (and b!4007900 (= (toValue!9322 (transformation!6822 (rule!9862 token!484))) (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))) t!332695) tb!240919))

(declare-fun result!292022 () Bool)

(assert (= result!292022 result!292020))

(assert (=> d!1186014 t!332695))

(declare-fun b_and!307865 () Bool)

(assert (= b_and!307853 (and (=> t!332695 result!292022) b_and!307865)))

(assert (=> d!1186014 m!4591525))

(declare-fun m!4592319 () Bool)

(assert (=> d!1186014 m!4592319))

(assert (=> b!4007887 d!1186014))

(declare-fun d!1186016 () Bool)

(declare-fun e!2485816 () Bool)

(assert (=> d!1186016 e!2485816))

(declare-fun res!1629164 () Bool)

(assert (=> d!1186016 (=> (not res!1629164) (not e!2485816))))

(declare-fun lt!1418476 () List!43028)

(assert (=> d!1186016 (= res!1629164 (= (content!6506 lt!1418476) ((_ map or) (content!6506 lt!1418251) (content!6506 newSuffixResult!27))))))

(declare-fun e!2485815 () List!43028)

(assert (=> d!1186016 (= lt!1418476 e!2485815)))

(declare-fun c!693054 () Bool)

(assert (=> d!1186016 (= c!693054 ((_ is Nil!42904) lt!1418251))))

(assert (=> d!1186016 (= (++!11224 lt!1418251 newSuffixResult!27) lt!1418476)))

(declare-fun b!4008401 () Bool)

(assert (=> b!4008401 (= e!2485815 newSuffixResult!27)))

(declare-fun b!4008404 () Bool)

(assert (=> b!4008404 (= e!2485816 (or (not (= newSuffixResult!27 Nil!42904)) (= lt!1418476 lt!1418251)))))

(declare-fun b!4008402 () Bool)

(assert (=> b!4008402 (= e!2485815 (Cons!42904 (h!48324 lt!1418251) (++!11224 (t!332653 lt!1418251) newSuffixResult!27)))))

(declare-fun b!4008403 () Bool)

(declare-fun res!1629163 () Bool)

(assert (=> b!4008403 (=> (not res!1629163) (not e!2485816))))

(assert (=> b!4008403 (= res!1629163 (= (size!32079 lt!1418476) (+ (size!32079 lt!1418251) (size!32079 newSuffixResult!27))))))

(assert (= (and d!1186016 c!693054) b!4008401))

(assert (= (and d!1186016 (not c!693054)) b!4008402))

(assert (= (and d!1186016 res!1629164) b!4008403))

(assert (= (and b!4008403 res!1629163) b!4008404))

(declare-fun m!4592321 () Bool)

(assert (=> d!1186016 m!4592321))

(assert (=> d!1186016 m!4592293))

(assert (=> d!1186016 m!4592193))

(declare-fun m!4592323 () Bool)

(assert (=> b!4008402 m!4592323))

(declare-fun m!4592325 () Bool)

(assert (=> b!4008403 m!4592325))

(assert (=> b!4008403 m!4591519))

(assert (=> b!4008403 m!4592199))

(assert (=> b!4007887 d!1186016))

(declare-fun d!1186018 () Bool)

(declare-fun lt!1418477 () Int)

(assert (=> d!1186018 (>= lt!1418477 0)))

(declare-fun e!2485817 () Int)

(assert (=> d!1186018 (= lt!1418477 e!2485817)))

(declare-fun c!693055 () Bool)

(assert (=> d!1186018 (= c!693055 ((_ is Nil!42904) lt!1418251))))

(assert (=> d!1186018 (= (size!32079 lt!1418251) lt!1418477)))

(declare-fun b!4008405 () Bool)

(assert (=> b!4008405 (= e!2485817 0)))

(declare-fun b!4008406 () Bool)

(assert (=> b!4008406 (= e!2485817 (+ 1 (size!32079 (t!332653 lt!1418251))))))

(assert (= (and d!1186018 c!693055) b!4008405))

(assert (= (and d!1186018 (not c!693055)) b!4008406))

(declare-fun m!4592327 () Bool)

(assert (=> b!4008406 m!4592327))

(assert (=> b!4007887 d!1186018))

(declare-fun d!1186020 () Bool)

(declare-fun e!2485818 () Bool)

(assert (=> d!1186020 e!2485818))

(declare-fun res!1629165 () Bool)

(assert (=> d!1186020 (=> (not res!1629165) (not e!2485818))))

(assert (=> d!1186020 (= res!1629165 (semiInverseModEq!2920 (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))))))

(declare-fun Unit!61915 () Unit!61905)

(assert (=> d!1186020 (= (lemmaInv!1037 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) Unit!61915)))

(declare-fun b!4008407 () Bool)

(assert (=> b!4008407 (= e!2485818 (equivClasses!2819 (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))))))

(assert (= (and d!1186020 res!1629165) b!4008407))

(declare-fun m!4592329 () Bool)

(assert (=> d!1186020 m!4592329))

(declare-fun m!4592331 () Bool)

(assert (=> b!4008407 m!4592331))

(assert (=> b!4007887 d!1186020))

(declare-fun d!1186022 () Bool)

(declare-fun e!2485819 () Bool)

(assert (=> d!1186022 e!2485819))

(declare-fun res!1629166 () Bool)

(assert (=> d!1186022 (=> res!1629166 e!2485819)))

(declare-fun lt!1418478 () Bool)

(assert (=> d!1186022 (= res!1629166 (not lt!1418478))))

(declare-fun e!2485821 () Bool)

(assert (=> d!1186022 (= lt!1418478 e!2485821)))

(declare-fun res!1629168 () Bool)

(assert (=> d!1186022 (=> res!1629168 e!2485821)))

(assert (=> d!1186022 (= res!1629168 ((_ is Nil!42904) lt!1418251))))

(assert (=> d!1186022 (= (isPrefix!3909 lt!1418251 (++!11224 lt!1418251 newSuffixResult!27)) lt!1418478)))

(declare-fun b!4008410 () Bool)

(declare-fun e!2485820 () Bool)

(assert (=> b!4008410 (= e!2485820 (isPrefix!3909 (tail!6247 lt!1418251) (tail!6247 (++!11224 lt!1418251 newSuffixResult!27))))))

(declare-fun b!4008409 () Bool)

(declare-fun res!1629167 () Bool)

(assert (=> b!4008409 (=> (not res!1629167) (not e!2485820))))

(assert (=> b!4008409 (= res!1629167 (= (head!8515 lt!1418251) (head!8515 (++!11224 lt!1418251 newSuffixResult!27))))))

(declare-fun b!4008411 () Bool)

(assert (=> b!4008411 (= e!2485819 (>= (size!32079 (++!11224 lt!1418251 newSuffixResult!27)) (size!32079 lt!1418251)))))

(declare-fun b!4008408 () Bool)

(assert (=> b!4008408 (= e!2485821 e!2485820)))

(declare-fun res!1629169 () Bool)

(assert (=> b!4008408 (=> (not res!1629169) (not e!2485820))))

(assert (=> b!4008408 (= res!1629169 (not ((_ is Nil!42904) (++!11224 lt!1418251 newSuffixResult!27))))))

(assert (= (and d!1186022 (not res!1629168)) b!4008408))

(assert (= (and b!4008408 res!1629169) b!4008409))

(assert (= (and b!4008409 res!1629167) b!4008410))

(assert (= (and d!1186022 (not res!1629166)) b!4008411))

(assert (=> b!4008410 m!4592303))

(assert (=> b!4008410 m!4591539))

(declare-fun m!4592333 () Bool)

(assert (=> b!4008410 m!4592333))

(assert (=> b!4008410 m!4592303))

(assert (=> b!4008410 m!4592333))

(declare-fun m!4592335 () Bool)

(assert (=> b!4008410 m!4592335))

(assert (=> b!4008409 m!4592309))

(assert (=> b!4008409 m!4591539))

(declare-fun m!4592337 () Bool)

(assert (=> b!4008409 m!4592337))

(assert (=> b!4008411 m!4591539))

(declare-fun m!4592339 () Bool)

(assert (=> b!4008411 m!4592339))

(assert (=> b!4008411 m!4591519))

(assert (=> b!4007887 d!1186022))

(declare-fun d!1186024 () Bool)

(assert (=> d!1186024 (isPrefix!3909 lt!1418251 (++!11224 lt!1418251 (_2!24163 (v!39601 lt!1418269))))))

(declare-fun lt!1418479 () Unit!61905)

(assert (=> d!1186024 (= lt!1418479 (choose!24205 lt!1418251 (_2!24163 (v!39601 lt!1418269))))))

(assert (=> d!1186024 (= (lemmaConcatTwoListThenFirstIsPrefix!2750 lt!1418251 (_2!24163 (v!39601 lt!1418269))) lt!1418479)))

(declare-fun bs!589170 () Bool)

(assert (= bs!589170 d!1186024))

(assert (=> bs!589170 m!4591513))

(assert (=> bs!589170 m!4591513))

(assert (=> bs!589170 m!4591515))

(declare-fun m!4592341 () Bool)

(assert (=> bs!589170 m!4592341))

(assert (=> b!4007887 d!1186024))

(declare-fun d!1186026 () Bool)

(assert (=> d!1186026 (= (maxPrefixOneRule!2729 thiss!21717 (rule!9862 (_1!24163 (v!39601 lt!1418269))) lt!1418249) (Some!9235 (tuple2!42059 (Token!12783 (apply!10019 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))) (seqFromList!5047 lt!1418251)) (rule!9862 (_1!24163 (v!39601 lt!1418269))) (size!32079 lt!1418251) lt!1418251) (_2!24163 (v!39601 lt!1418269)))))))

(declare-fun lt!1418480 () Unit!61905)

(assert (=> d!1186026 (= lt!1418480 (choose!24209 thiss!21717 rules!2999 lt!1418251 lt!1418249 (_2!24163 (v!39601 lt!1418269)) (rule!9862 (_1!24163 (v!39601 lt!1418269)))))))

(assert (=> d!1186026 (not (isEmpty!25630 rules!2999))))

(assert (=> d!1186026 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1547 thiss!21717 rules!2999 lt!1418251 lt!1418249 (_2!24163 (v!39601 lt!1418269)) (rule!9862 (_1!24163 (v!39601 lt!1418269)))) lt!1418480)))

(declare-fun bs!589171 () Bool)

(assert (= bs!589171 d!1186026))

(assert (=> bs!589171 m!4591461))

(assert (=> bs!589171 m!4591521))

(assert (=> bs!589171 m!4591525))

(declare-fun m!4592343 () Bool)

(assert (=> bs!589171 m!4592343))

(assert (=> bs!589171 m!4591519))

(assert (=> bs!589171 m!4591525))

(assert (=> bs!589171 m!4591527))

(assert (=> b!4007887 d!1186026))

(declare-fun b!4008412 () Bool)

(declare-fun e!2485822 () Bool)

(assert (=> b!4008412 (= e!2485822 (matchR!5688 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))) (_1!24165 (findLongestMatchInner!1355 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))) Nil!42904 (size!32079 Nil!42904) lt!1418249 lt!1418249 (size!32079 lt!1418249)))))))

(declare-fun b!4008413 () Bool)

(declare-fun res!1629175 () Bool)

(declare-fun e!2485825 () Bool)

(assert (=> b!4008413 (=> (not res!1629175) (not e!2485825))))

(declare-fun lt!1418483 () Option!9236)

(assert (=> b!4008413 (= res!1629175 (= (value!215061 (_1!24163 (get!14100 lt!1418483))) (apply!10019 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418483)))) (seqFromList!5047 (originalCharacters!7422 (_1!24163 (get!14100 lt!1418483)))))))))

(declare-fun b!4008414 () Bool)

(declare-fun e!2485824 () Option!9236)

(assert (=> b!4008414 (= e!2485824 None!9235)))

(declare-fun b!4008415 () Bool)

(declare-fun res!1629170 () Bool)

(assert (=> b!4008415 (=> (not res!1629170) (not e!2485825))))

(assert (=> b!4008415 (= res!1629170 (< (size!32079 (_2!24163 (get!14100 lt!1418483))) (size!32079 lt!1418249)))))

(declare-fun b!4008416 () Bool)

(assert (=> b!4008416 (= e!2485825 (= (size!32080 (_1!24163 (get!14100 lt!1418483))) (size!32079 (originalCharacters!7422 (_1!24163 (get!14100 lt!1418483))))))))

(declare-fun d!1186028 () Bool)

(declare-fun e!2485823 () Bool)

(assert (=> d!1186028 e!2485823))

(declare-fun res!1629173 () Bool)

(assert (=> d!1186028 (=> res!1629173 e!2485823)))

(assert (=> d!1186028 (= res!1629173 (isEmpty!25632 lt!1418483))))

(assert (=> d!1186028 (= lt!1418483 e!2485824)))

(declare-fun c!693056 () Bool)

(declare-fun lt!1418482 () tuple2!42062)

(assert (=> d!1186028 (= c!693056 (isEmpty!25634 (_1!24165 lt!1418482)))))

(assert (=> d!1186028 (= lt!1418482 (findLongestMatch!1268 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))) lt!1418249))))

(assert (=> d!1186028 (ruleValid!2754 thiss!21717 (rule!9862 (_1!24163 (v!39601 lt!1418269))))))

(assert (=> d!1186028 (= (maxPrefixOneRule!2729 thiss!21717 (rule!9862 (_1!24163 (v!39601 lt!1418269))) lt!1418249) lt!1418483)))

(declare-fun b!4008417 () Bool)

(assert (=> b!4008417 (= e!2485824 (Some!9235 (tuple2!42059 (Token!12783 (apply!10019 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))) (seqFromList!5047 (_1!24165 lt!1418482))) (rule!9862 (_1!24163 (v!39601 lt!1418269))) (size!32082 (seqFromList!5047 (_1!24165 lt!1418482))) (_1!24165 lt!1418482)) (_2!24165 lt!1418482))))))

(declare-fun lt!1418481 () Unit!61905)

(assert (=> b!4008417 (= lt!1418481 (longestMatchIsAcceptedByMatchOrIsEmpty!1328 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))) lt!1418249))))

(declare-fun res!1629172 () Bool)

(assert (=> b!4008417 (= res!1629172 (isEmpty!25634 (_1!24165 (findLongestMatchInner!1355 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))) Nil!42904 (size!32079 Nil!42904) lt!1418249 lt!1418249 (size!32079 lt!1418249)))))))

(assert (=> b!4008417 (=> res!1629172 e!2485822)))

(assert (=> b!4008417 e!2485822))

(declare-fun lt!1418485 () Unit!61905)

(assert (=> b!4008417 (= lt!1418485 lt!1418481)))

(declare-fun lt!1418484 () Unit!61905)

(assert (=> b!4008417 (= lt!1418484 (lemmaSemiInverse!1875 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))) (seqFromList!5047 (_1!24165 lt!1418482))))))

(declare-fun b!4008418 () Bool)

(declare-fun res!1629174 () Bool)

(assert (=> b!4008418 (=> (not res!1629174) (not e!2485825))))

(assert (=> b!4008418 (= res!1629174 (= (++!11224 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418483)))) (_2!24163 (get!14100 lt!1418483))) lt!1418249))))

(declare-fun b!4008419 () Bool)

(assert (=> b!4008419 (= e!2485823 e!2485825)))

(declare-fun res!1629171 () Bool)

(assert (=> b!4008419 (=> (not res!1629171) (not e!2485825))))

(assert (=> b!4008419 (= res!1629171 (matchR!5688 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))) (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418483))))))))

(declare-fun b!4008420 () Bool)

(declare-fun res!1629176 () Bool)

(assert (=> b!4008420 (=> (not res!1629176) (not e!2485825))))

(assert (=> b!4008420 (= res!1629176 (= (rule!9862 (_1!24163 (get!14100 lt!1418483))) (rule!9862 (_1!24163 (v!39601 lt!1418269)))))))

(assert (= (and d!1186028 c!693056) b!4008414))

(assert (= (and d!1186028 (not c!693056)) b!4008417))

(assert (= (and b!4008417 (not res!1629172)) b!4008412))

(assert (= (and d!1186028 (not res!1629173)) b!4008419))

(assert (= (and b!4008419 res!1629171) b!4008418))

(assert (= (and b!4008418 res!1629174) b!4008415))

(assert (= (and b!4008415 res!1629170) b!4008420))

(assert (= (and b!4008420 res!1629176) b!4008413))

(assert (= (and b!4008413 res!1629175) b!4008416))

(declare-fun m!4592345 () Bool)

(assert (=> b!4008419 m!4592345))

(declare-fun m!4592347 () Bool)

(assert (=> b!4008419 m!4592347))

(assert (=> b!4008419 m!4592347))

(declare-fun m!4592349 () Bool)

(assert (=> b!4008419 m!4592349))

(assert (=> b!4008419 m!4592349))

(declare-fun m!4592351 () Bool)

(assert (=> b!4008419 m!4592351))

(assert (=> b!4008418 m!4592345))

(assert (=> b!4008418 m!4592347))

(assert (=> b!4008418 m!4592347))

(assert (=> b!4008418 m!4592349))

(assert (=> b!4008418 m!4592349))

(declare-fun m!4592353 () Bool)

(assert (=> b!4008418 m!4592353))

(declare-fun m!4592355 () Bool)

(assert (=> d!1186028 m!4592355))

(declare-fun m!4592357 () Bool)

(assert (=> d!1186028 m!4592357))

(declare-fun m!4592359 () Bool)

(assert (=> d!1186028 m!4592359))

(assert (=> d!1186028 m!4591517))

(assert (=> b!4008413 m!4592345))

(declare-fun m!4592361 () Bool)

(assert (=> b!4008413 m!4592361))

(assert (=> b!4008413 m!4592361))

(declare-fun m!4592363 () Bool)

(assert (=> b!4008413 m!4592363))

(assert (=> b!4008420 m!4592345))

(assert (=> b!4008412 m!4592077))

(assert (=> b!4008412 m!4592211))

(assert (=> b!4008412 m!4592077))

(assert (=> b!4008412 m!4592211))

(declare-fun m!4592365 () Bool)

(assert (=> b!4008412 m!4592365))

(declare-fun m!4592367 () Bool)

(assert (=> b!4008412 m!4592367))

(assert (=> b!4008416 m!4592345))

(declare-fun m!4592369 () Bool)

(assert (=> b!4008416 m!4592369))

(assert (=> b!4008417 m!4592077))

(assert (=> b!4008417 m!4592211))

(assert (=> b!4008417 m!4592365))

(assert (=> b!4008417 m!4592211))

(declare-fun m!4592371 () Bool)

(assert (=> b!4008417 m!4592371))

(declare-fun m!4592373 () Bool)

(assert (=> b!4008417 m!4592373))

(assert (=> b!4008417 m!4592371))

(declare-fun m!4592375 () Bool)

(assert (=> b!4008417 m!4592375))

(assert (=> b!4008417 m!4592371))

(declare-fun m!4592377 () Bool)

(assert (=> b!4008417 m!4592377))

(assert (=> b!4008417 m!4592077))

(declare-fun m!4592379 () Bool)

(assert (=> b!4008417 m!4592379))

(assert (=> b!4008417 m!4592371))

(declare-fun m!4592381 () Bool)

(assert (=> b!4008417 m!4592381))

(assert (=> b!4008415 m!4592345))

(declare-fun m!4592383 () Bool)

(assert (=> b!4008415 m!4592383))

(assert (=> b!4008415 m!4592211))

(assert (=> b!4007887 d!1186028))

(declare-fun d!1186030 () Bool)

(declare-fun lt!1418486 () Int)

(assert (=> d!1186030 (>= lt!1418486 0)))

(declare-fun e!2485826 () Int)

(assert (=> d!1186030 (= lt!1418486 e!2485826)))

(declare-fun c!693057 () Bool)

(assert (=> d!1186030 (= c!693057 ((_ is Nil!42904) suffix!1299))))

(assert (=> d!1186030 (= (size!32079 suffix!1299) lt!1418486)))

(declare-fun b!4008421 () Bool)

(assert (=> b!4008421 (= e!2485826 0)))

(declare-fun b!4008422 () Bool)

(assert (=> b!4008422 (= e!2485826 (+ 1 (size!32079 (t!332653 suffix!1299))))))

(assert (= (and d!1186030 c!693057) b!4008421))

(assert (= (and d!1186030 (not c!693057)) b!4008422))

(declare-fun m!4592385 () Bool)

(assert (=> b!4008422 m!4592385))

(assert (=> b!4007876 d!1186030))

(declare-fun d!1186032 () Bool)

(declare-fun lt!1418487 () Int)

(assert (=> d!1186032 (>= lt!1418487 0)))

(declare-fun e!2485827 () Int)

(assert (=> d!1186032 (= lt!1418487 e!2485827)))

(declare-fun c!693058 () Bool)

(assert (=> d!1186032 (= c!693058 ((_ is Nil!42904) newSuffix!27))))

(assert (=> d!1186032 (= (size!32079 newSuffix!27) lt!1418487)))

(declare-fun b!4008423 () Bool)

(assert (=> b!4008423 (= e!2485827 0)))

(declare-fun b!4008424 () Bool)

(assert (=> b!4008424 (= e!2485827 (+ 1 (size!32079 (t!332653 newSuffix!27))))))

(assert (= (and d!1186032 c!693058) b!4008423))

(assert (= (and d!1186032 (not c!693058)) b!4008424))

(declare-fun m!4592387 () Bool)

(assert (=> b!4008424 m!4592387))

(assert (=> b!4007876 d!1186032))

(declare-fun d!1186034 () Bool)

(declare-fun e!2485828 () Bool)

(assert (=> d!1186034 e!2485828))

(declare-fun res!1629177 () Bool)

(assert (=> d!1186034 (=> res!1629177 e!2485828)))

(declare-fun lt!1418488 () Bool)

(assert (=> d!1186034 (= res!1629177 (not lt!1418488))))

(declare-fun e!2485830 () Bool)

(assert (=> d!1186034 (= lt!1418488 e!2485830)))

(declare-fun res!1629179 () Bool)

(assert (=> d!1186034 (=> res!1629179 e!2485830)))

(assert (=> d!1186034 (= res!1629179 ((_ is Nil!42904) prefix!494))))

(assert (=> d!1186034 (= (isPrefix!3909 prefix!494 lt!1418276) lt!1418488)))

(declare-fun b!4008427 () Bool)

(declare-fun e!2485829 () Bool)

(assert (=> b!4008427 (= e!2485829 (isPrefix!3909 (tail!6247 prefix!494) (tail!6247 lt!1418276)))))

(declare-fun b!4008426 () Bool)

(declare-fun res!1629178 () Bool)

(assert (=> b!4008426 (=> (not res!1629178) (not e!2485829))))

(assert (=> b!4008426 (= res!1629178 (= (head!8515 prefix!494) (head!8515 lt!1418276)))))

(declare-fun b!4008428 () Bool)

(assert (=> b!4008428 (= e!2485828 (>= (size!32079 lt!1418276) (size!32079 prefix!494)))))

(declare-fun b!4008425 () Bool)

(assert (=> b!4008425 (= e!2485830 e!2485829)))

(declare-fun res!1629180 () Bool)

(assert (=> b!4008425 (=> (not res!1629180) (not e!2485829))))

(assert (=> b!4008425 (= res!1629180 (not ((_ is Nil!42904) lt!1418276)))))

(assert (= (and d!1186034 (not res!1629179)) b!4008425))

(assert (= (and b!4008425 res!1629180) b!4008426))

(assert (= (and b!4008426 res!1629178) b!4008427))

(assert (= (and d!1186034 (not res!1629177)) b!4008428))

(declare-fun m!4592389 () Bool)

(assert (=> b!4008427 m!4592389))

(declare-fun m!4592391 () Bool)

(assert (=> b!4008427 m!4592391))

(assert (=> b!4008427 m!4592389))

(assert (=> b!4008427 m!4592391))

(declare-fun m!4592393 () Bool)

(assert (=> b!4008427 m!4592393))

(declare-fun m!4592395 () Bool)

(assert (=> b!4008426 m!4592395))

(declare-fun m!4592397 () Bool)

(assert (=> b!4008426 m!4592397))

(assert (=> b!4008428 m!4591663))

(assert (=> b!4008428 m!4591497))

(assert (=> b!4007886 d!1186034))

(declare-fun d!1186036 () Bool)

(assert (=> d!1186036 (isPrefix!3909 lt!1418254 (++!11224 lt!1418254 suffixResult!105))))

(declare-fun lt!1418489 () Unit!61905)

(assert (=> d!1186036 (= lt!1418489 (choose!24205 lt!1418254 suffixResult!105))))

(assert (=> d!1186036 (= (lemmaConcatTwoListThenFirstIsPrefix!2750 lt!1418254 suffixResult!105) lt!1418489)))

(declare-fun bs!589172 () Bool)

(assert (= bs!589172 d!1186036))

(assert (=> bs!589172 m!4591463))

(assert (=> bs!589172 m!4591463))

(declare-fun m!4592399 () Bool)

(assert (=> bs!589172 m!4592399))

(declare-fun m!4592401 () Bool)

(assert (=> bs!589172 m!4592401))

(assert (=> b!4007886 d!1186036))

(declare-fun d!1186038 () Bool)

(assert (=> d!1186038 (isPrefix!3909 prefix!494 (++!11224 prefix!494 suffix!1299))))

(declare-fun lt!1418490 () Unit!61905)

(assert (=> d!1186038 (= lt!1418490 (choose!24205 prefix!494 suffix!1299))))

(assert (=> d!1186038 (= (lemmaConcatTwoListThenFirstIsPrefix!2750 prefix!494 suffix!1299) lt!1418490)))

(declare-fun bs!589173 () Bool)

(assert (= bs!589173 d!1186038))

(assert (=> bs!589173 m!4591479))

(assert (=> bs!589173 m!4591479))

(declare-fun m!4592403 () Bool)

(assert (=> bs!589173 m!4592403))

(declare-fun m!4592405 () Bool)

(assert (=> bs!589173 m!4592405))

(assert (=> b!4007886 d!1186038))

(declare-fun d!1186040 () Bool)

(declare-fun e!2485831 () Bool)

(assert (=> d!1186040 e!2485831))

(declare-fun res!1629181 () Bool)

(assert (=> d!1186040 (=> res!1629181 e!2485831)))

(declare-fun lt!1418491 () Bool)

(assert (=> d!1186040 (= res!1629181 (not lt!1418491))))

(declare-fun e!2485833 () Bool)

(assert (=> d!1186040 (= lt!1418491 e!2485833)))

(declare-fun res!1629183 () Bool)

(assert (=> d!1186040 (=> res!1629183 e!2485833)))

(assert (=> d!1186040 (= res!1629183 ((_ is Nil!42904) lt!1418254))))

(assert (=> d!1186040 (= (isPrefix!3909 lt!1418254 lt!1418276) lt!1418491)))

(declare-fun b!4008431 () Bool)

(declare-fun e!2485832 () Bool)

(assert (=> b!4008431 (= e!2485832 (isPrefix!3909 (tail!6247 lt!1418254) (tail!6247 lt!1418276)))))

(declare-fun b!4008430 () Bool)

(declare-fun res!1629182 () Bool)

(assert (=> b!4008430 (=> (not res!1629182) (not e!2485832))))

(assert (=> b!4008430 (= res!1629182 (= (head!8515 lt!1418254) (head!8515 lt!1418276)))))

(declare-fun b!4008432 () Bool)

(assert (=> b!4008432 (= e!2485831 (>= (size!32079 lt!1418276) (size!32079 lt!1418254)))))

(declare-fun b!4008429 () Bool)

(assert (=> b!4008429 (= e!2485833 e!2485832)))

(declare-fun res!1629184 () Bool)

(assert (=> b!4008429 (=> (not res!1629184) (not e!2485832))))

(assert (=> b!4008429 (= res!1629184 (not ((_ is Nil!42904) lt!1418276)))))

(assert (= (and d!1186040 (not res!1629183)) b!4008429))

(assert (= (and b!4008429 res!1629184) b!4008430))

(assert (= (and b!4008430 res!1629182) b!4008431))

(assert (= (and d!1186040 (not res!1629181)) b!4008432))

(assert (=> b!4008431 m!4592151))

(assert (=> b!4008431 m!4592391))

(assert (=> b!4008431 m!4592151))

(assert (=> b!4008431 m!4592391))

(declare-fun m!4592407 () Bool)

(assert (=> b!4008431 m!4592407))

(assert (=> b!4008430 m!4592157))

(assert (=> b!4008430 m!4592397))

(assert (=> b!4008432 m!4591663))

(assert (=> b!4008432 m!4591495))

(assert (=> b!4007886 d!1186040))

(declare-fun d!1186042 () Bool)

(declare-fun e!2485834 () Bool)

(assert (=> d!1186042 e!2485834))

(declare-fun res!1629185 () Bool)

(assert (=> d!1186042 (=> res!1629185 e!2485834)))

(declare-fun lt!1418492 () Bool)

(assert (=> d!1186042 (= res!1629185 (not lt!1418492))))

(declare-fun e!2485836 () Bool)

(assert (=> d!1186042 (= lt!1418492 e!2485836)))

(declare-fun res!1629187 () Bool)

(assert (=> d!1186042 (=> res!1629187 e!2485836)))

(assert (=> d!1186042 (= res!1629187 ((_ is Nil!42904) lt!1418254))))

(assert (=> d!1186042 (= (isPrefix!3909 lt!1418254 lt!1418284) lt!1418492)))

(declare-fun b!4008435 () Bool)

(declare-fun e!2485835 () Bool)

(assert (=> b!4008435 (= e!2485835 (isPrefix!3909 (tail!6247 lt!1418254) (tail!6247 lt!1418284)))))

(declare-fun b!4008434 () Bool)

(declare-fun res!1629186 () Bool)

(assert (=> b!4008434 (=> (not res!1629186) (not e!2485835))))

(assert (=> b!4008434 (= res!1629186 (= (head!8515 lt!1418254) (head!8515 lt!1418284)))))

(declare-fun b!4008436 () Bool)

(assert (=> b!4008436 (= e!2485834 (>= (size!32079 lt!1418284) (size!32079 lt!1418254)))))

(declare-fun b!4008433 () Bool)

(assert (=> b!4008433 (= e!2485836 e!2485835)))

(declare-fun res!1629188 () Bool)

(assert (=> b!4008433 (=> (not res!1629188) (not e!2485835))))

(assert (=> b!4008433 (= res!1629188 (not ((_ is Nil!42904) lt!1418284)))))

(assert (= (and d!1186042 (not res!1629187)) b!4008433))

(assert (= (and b!4008433 res!1629188) b!4008434))

(assert (= (and b!4008434 res!1629186) b!4008435))

(assert (= (and d!1186042 (not res!1629185)) b!4008436))

(assert (=> b!4008435 m!4592151))

(declare-fun m!4592409 () Bool)

(assert (=> b!4008435 m!4592409))

(assert (=> b!4008435 m!4592151))

(assert (=> b!4008435 m!4592409))

(declare-fun m!4592411 () Bool)

(assert (=> b!4008435 m!4592411))

(assert (=> b!4008434 m!4592157))

(declare-fun m!4592413 () Bool)

(assert (=> b!4008434 m!4592413))

(declare-fun m!4592415 () Bool)

(assert (=> b!4008436 m!4592415))

(assert (=> b!4008436 m!4591495))

(assert (=> b!4007886 d!1186042))

(declare-fun d!1186044 () Bool)

(declare-fun e!2485838 () Bool)

(assert (=> d!1186044 e!2485838))

(declare-fun res!1629190 () Bool)

(assert (=> d!1186044 (=> (not res!1629190) (not e!2485838))))

(declare-fun lt!1418493 () List!43028)

(assert (=> d!1186044 (= res!1629190 (= (content!6506 lt!1418493) ((_ map or) (content!6506 lt!1418254) (content!6506 lt!1418281))))))

(declare-fun e!2485837 () List!43028)

(assert (=> d!1186044 (= lt!1418493 e!2485837)))

(declare-fun c!693059 () Bool)

(assert (=> d!1186044 (= c!693059 ((_ is Nil!42904) lt!1418254))))

(assert (=> d!1186044 (= (++!11224 lt!1418254 lt!1418281) lt!1418493)))

(declare-fun b!4008437 () Bool)

(assert (=> b!4008437 (= e!2485837 lt!1418281)))

(declare-fun b!4008440 () Bool)

(assert (=> b!4008440 (= e!2485838 (or (not (= lt!1418281 Nil!42904)) (= lt!1418493 lt!1418254)))))

(declare-fun b!4008438 () Bool)

(assert (=> b!4008438 (= e!2485837 (Cons!42904 (h!48324 lt!1418254) (++!11224 (t!332653 lt!1418254) lt!1418281)))))

(declare-fun b!4008439 () Bool)

(declare-fun res!1629189 () Bool)

(assert (=> b!4008439 (=> (not res!1629189) (not e!2485838))))

(assert (=> b!4008439 (= res!1629189 (= (size!32079 lt!1418493) (+ (size!32079 lt!1418254) (size!32079 lt!1418281))))))

(assert (= (and d!1186044 c!693059) b!4008437))

(assert (= (and d!1186044 (not c!693059)) b!4008438))

(assert (= (and d!1186044 res!1629190) b!4008439))

(assert (= (and b!4008439 res!1629189) b!4008440))

(declare-fun m!4592417 () Bool)

(assert (=> d!1186044 m!4592417))

(assert (=> d!1186044 m!4591697))

(declare-fun m!4592419 () Bool)

(assert (=> d!1186044 m!4592419))

(declare-fun m!4592421 () Bool)

(assert (=> b!4008438 m!4592421))

(declare-fun m!4592423 () Bool)

(assert (=> b!4008439 m!4592423))

(assert (=> b!4008439 m!4591495))

(declare-fun m!4592425 () Bool)

(assert (=> b!4008439 m!4592425))

(assert (=> b!4007896 d!1186044))

(declare-fun d!1186046 () Bool)

(declare-fun lt!1418496 () List!43028)

(assert (=> d!1186046 (= (++!11224 lt!1418254 lt!1418496) prefix!494)))

(declare-fun e!2485841 () List!43028)

(assert (=> d!1186046 (= lt!1418496 e!2485841)))

(declare-fun c!693062 () Bool)

(assert (=> d!1186046 (= c!693062 ((_ is Cons!42904) lt!1418254))))

(assert (=> d!1186046 (>= (size!32079 prefix!494) (size!32079 lt!1418254))))

(assert (=> d!1186046 (= (getSuffix!2334 prefix!494 lt!1418254) lt!1418496)))

(declare-fun b!4008445 () Bool)

(assert (=> b!4008445 (= e!2485841 (getSuffix!2334 (tail!6247 prefix!494) (t!332653 lt!1418254)))))

(declare-fun b!4008446 () Bool)

(assert (=> b!4008446 (= e!2485841 prefix!494)))

(assert (= (and d!1186046 c!693062) b!4008445))

(assert (= (and d!1186046 (not c!693062)) b!4008446))

(declare-fun m!4592427 () Bool)

(assert (=> d!1186046 m!4592427))

(assert (=> d!1186046 m!4591497))

(assert (=> d!1186046 m!4591495))

(assert (=> b!4008445 m!4592389))

(assert (=> b!4008445 m!4592389))

(declare-fun m!4592429 () Bool)

(assert (=> b!4008445 m!4592429))

(assert (=> b!4007896 d!1186046))

(declare-fun d!1186048 () Bool)

(declare-fun e!2485842 () Bool)

(assert (=> d!1186048 e!2485842))

(declare-fun res!1629191 () Bool)

(assert (=> d!1186048 (=> res!1629191 e!2485842)))

(declare-fun lt!1418497 () Bool)

(assert (=> d!1186048 (= res!1629191 (not lt!1418497))))

(declare-fun e!2485844 () Bool)

(assert (=> d!1186048 (= lt!1418497 e!2485844)))

(declare-fun res!1629193 () Bool)

(assert (=> d!1186048 (=> res!1629193 e!2485844)))

(assert (=> d!1186048 (= res!1629193 ((_ is Nil!42904) lt!1418254))))

(assert (=> d!1186048 (= (isPrefix!3909 lt!1418254 prefix!494) lt!1418497)))

(declare-fun b!4008449 () Bool)

(declare-fun e!2485843 () Bool)

(assert (=> b!4008449 (= e!2485843 (isPrefix!3909 (tail!6247 lt!1418254) (tail!6247 prefix!494)))))

(declare-fun b!4008448 () Bool)

(declare-fun res!1629192 () Bool)

(assert (=> b!4008448 (=> (not res!1629192) (not e!2485843))))

(assert (=> b!4008448 (= res!1629192 (= (head!8515 lt!1418254) (head!8515 prefix!494)))))

(declare-fun b!4008450 () Bool)

(assert (=> b!4008450 (= e!2485842 (>= (size!32079 prefix!494) (size!32079 lt!1418254)))))

(declare-fun b!4008447 () Bool)

(assert (=> b!4008447 (= e!2485844 e!2485843)))

(declare-fun res!1629194 () Bool)

(assert (=> b!4008447 (=> (not res!1629194) (not e!2485843))))

(assert (=> b!4008447 (= res!1629194 (not ((_ is Nil!42904) prefix!494)))))

(assert (= (and d!1186048 (not res!1629193)) b!4008447))

(assert (= (and b!4008447 res!1629194) b!4008448))

(assert (= (and b!4008448 res!1629192) b!4008449))

(assert (= (and d!1186048 (not res!1629191)) b!4008450))

(assert (=> b!4008449 m!4592151))

(assert (=> b!4008449 m!4592389))

(assert (=> b!4008449 m!4592151))

(assert (=> b!4008449 m!4592389))

(declare-fun m!4592431 () Bool)

(assert (=> b!4008449 m!4592431))

(assert (=> b!4008448 m!4592157))

(assert (=> b!4008448 m!4592395))

(assert (=> b!4008450 m!4591497))

(assert (=> b!4008450 m!4591495))

(assert (=> b!4007896 d!1186048))

(declare-fun d!1186050 () Bool)

(assert (=> d!1186050 (isPrefix!3909 lt!1418254 prefix!494)))

(declare-fun lt!1418500 () Unit!61905)

(declare-fun choose!24213 (List!43028 List!43028 List!43028) Unit!61905)

(assert (=> d!1186050 (= lt!1418500 (choose!24213 prefix!494 lt!1418254 lt!1418276))))

(assert (=> d!1186050 (isPrefix!3909 prefix!494 lt!1418276)))

(assert (=> d!1186050 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!481 prefix!494 lt!1418254 lt!1418276) lt!1418500)))

(declare-fun bs!589174 () Bool)

(assert (= bs!589174 d!1186050))

(assert (=> bs!589174 m!4591421))

(declare-fun m!4592433 () Bool)

(assert (=> bs!589174 m!4592433))

(assert (=> bs!589174 m!4591489))

(assert (=> b!4007896 d!1186050))

(declare-fun d!1186052 () Bool)

(declare-fun lt!1418501 () Int)

(assert (=> d!1186052 (>= lt!1418501 0)))

(declare-fun e!2485845 () Int)

(assert (=> d!1186052 (= lt!1418501 e!2485845)))

(declare-fun c!693063 () Bool)

(assert (=> d!1186052 (= c!693063 ((_ is Nil!42904) (originalCharacters!7422 token!484)))))

(assert (=> d!1186052 (= (size!32079 (originalCharacters!7422 token!484)) lt!1418501)))

(declare-fun b!4008451 () Bool)

(assert (=> b!4008451 (= e!2485845 0)))

(declare-fun b!4008452 () Bool)

(assert (=> b!4008452 (= e!2485845 (+ 1 (size!32079 (t!332653 (originalCharacters!7422 token!484)))))))

(assert (= (and d!1186052 c!693063) b!4008451))

(assert (= (and d!1186052 (not c!693063)) b!4008452))

(declare-fun m!4592435 () Bool)

(assert (=> b!4008452 m!4592435))

(assert (=> b!4007885 d!1186052))

(declare-fun d!1186054 () Bool)

(assert (=> d!1186054 (= (inv!57300 (tag!7682 (h!48326 rules!2999))) (= (mod (str.len (value!215060 (tag!7682 (h!48326 rules!2999)))) 2) 0))))

(assert (=> b!4007884 d!1186054))

(declare-fun d!1186056 () Bool)

(declare-fun res!1629195 () Bool)

(declare-fun e!2485846 () Bool)

(assert (=> d!1186056 (=> (not res!1629195) (not e!2485846))))

(assert (=> d!1186056 (= res!1629195 (semiInverseModEq!2920 (toChars!9181 (transformation!6822 (h!48326 rules!2999))) (toValue!9322 (transformation!6822 (h!48326 rules!2999)))))))

(assert (=> d!1186056 (= (inv!57303 (transformation!6822 (h!48326 rules!2999))) e!2485846)))

(declare-fun b!4008453 () Bool)

(assert (=> b!4008453 (= e!2485846 (equivClasses!2819 (toChars!9181 (transformation!6822 (h!48326 rules!2999))) (toValue!9322 (transformation!6822 (h!48326 rules!2999)))))))

(assert (= (and d!1186056 res!1629195) b!4008453))

(declare-fun m!4592437 () Bool)

(assert (=> d!1186056 m!4592437))

(declare-fun m!4592439 () Bool)

(assert (=> b!4008453 m!4592439))

(assert (=> b!4007884 d!1186056))

(declare-fun d!1186058 () Bool)

(declare-fun e!2485848 () Bool)

(assert (=> d!1186058 e!2485848))

(declare-fun res!1629197 () Bool)

(assert (=> d!1186058 (=> (not res!1629197) (not e!2485848))))

(declare-fun lt!1418502 () List!43028)

(assert (=> d!1186058 (= res!1629197 (= (content!6506 lt!1418502) ((_ map or) (content!6506 lt!1418254) (content!6506 lt!1418275))))))

(declare-fun e!2485847 () List!43028)

(assert (=> d!1186058 (= lt!1418502 e!2485847)))

(declare-fun c!693064 () Bool)

(assert (=> d!1186058 (= c!693064 ((_ is Nil!42904) lt!1418254))))

(assert (=> d!1186058 (= (++!11224 lt!1418254 lt!1418275) lt!1418502)))

(declare-fun b!4008454 () Bool)

(assert (=> b!4008454 (= e!2485847 lt!1418275)))

(declare-fun b!4008457 () Bool)

(assert (=> b!4008457 (= e!2485848 (or (not (= lt!1418275 Nil!42904)) (= lt!1418502 lt!1418254)))))

(declare-fun b!4008455 () Bool)

(assert (=> b!4008455 (= e!2485847 (Cons!42904 (h!48324 lt!1418254) (++!11224 (t!332653 lt!1418254) lt!1418275)))))

(declare-fun b!4008456 () Bool)

(declare-fun res!1629196 () Bool)

(assert (=> b!4008456 (=> (not res!1629196) (not e!2485848))))

(assert (=> b!4008456 (= res!1629196 (= (size!32079 lt!1418502) (+ (size!32079 lt!1418254) (size!32079 lt!1418275))))))

(assert (= (and d!1186058 c!693064) b!4008454))

(assert (= (and d!1186058 (not c!693064)) b!4008455))

(assert (= (and d!1186058 res!1629197) b!4008456))

(assert (= (and b!4008456 res!1629196) b!4008457))

(declare-fun m!4592441 () Bool)

(assert (=> d!1186058 m!4592441))

(assert (=> d!1186058 m!4591697))

(declare-fun m!4592443 () Bool)

(assert (=> d!1186058 m!4592443))

(declare-fun m!4592445 () Bool)

(assert (=> b!4008455 m!4592445))

(declare-fun m!4592447 () Bool)

(assert (=> b!4008456 m!4592447))

(assert (=> b!4008456 m!4591495))

(declare-fun m!4592449 () Bool)

(assert (=> b!4008456 m!4592449))

(assert (=> b!4007873 d!1186058))

(declare-fun d!1186060 () Bool)

(declare-fun lt!1418503 () List!43028)

(assert (=> d!1186060 (= (++!11224 lt!1418254 lt!1418503) lt!1418276)))

(declare-fun e!2485849 () List!43028)

(assert (=> d!1186060 (= lt!1418503 e!2485849)))

(declare-fun c!693065 () Bool)

(assert (=> d!1186060 (= c!693065 ((_ is Cons!42904) lt!1418254))))

(assert (=> d!1186060 (>= (size!32079 lt!1418276) (size!32079 lt!1418254))))

(assert (=> d!1186060 (= (getSuffix!2334 lt!1418276 lt!1418254) lt!1418503)))

(declare-fun b!4008458 () Bool)

(assert (=> b!4008458 (= e!2485849 (getSuffix!2334 (tail!6247 lt!1418276) (t!332653 lt!1418254)))))

(declare-fun b!4008459 () Bool)

(assert (=> b!4008459 (= e!2485849 lt!1418276)))

(assert (= (and d!1186060 c!693065) b!4008458))

(assert (= (and d!1186060 (not c!693065)) b!4008459))

(declare-fun m!4592451 () Bool)

(assert (=> d!1186060 m!4592451))

(assert (=> d!1186060 m!4591663))

(assert (=> d!1186060 m!4591495))

(assert (=> b!4008458 m!4592391))

(assert (=> b!4008458 m!4592391))

(declare-fun m!4592453 () Bool)

(assert (=> b!4008458 m!4592453))

(assert (=> b!4007873 d!1186060))

(declare-fun d!1186062 () Bool)

(declare-fun e!2485850 () Bool)

(assert (=> d!1186062 e!2485850))

(declare-fun res!1629198 () Bool)

(assert (=> d!1186062 (=> res!1629198 e!2485850)))

(declare-fun lt!1418504 () Bool)

(assert (=> d!1186062 (= res!1629198 (not lt!1418504))))

(declare-fun e!2485852 () Bool)

(assert (=> d!1186062 (= lt!1418504 e!2485852)))

(declare-fun res!1629200 () Bool)

(assert (=> d!1186062 (=> res!1629200 e!2485852)))

(assert (=> d!1186062 (= res!1629200 ((_ is Nil!42904) lt!1418276))))

(assert (=> d!1186062 (= (isPrefix!3909 lt!1418276 lt!1418276) lt!1418504)))

(declare-fun b!4008462 () Bool)

(declare-fun e!2485851 () Bool)

(assert (=> b!4008462 (= e!2485851 (isPrefix!3909 (tail!6247 lt!1418276) (tail!6247 lt!1418276)))))

(declare-fun b!4008461 () Bool)

(declare-fun res!1629199 () Bool)

(assert (=> b!4008461 (=> (not res!1629199) (not e!2485851))))

(assert (=> b!4008461 (= res!1629199 (= (head!8515 lt!1418276) (head!8515 lt!1418276)))))

(declare-fun b!4008463 () Bool)

(assert (=> b!4008463 (= e!2485850 (>= (size!32079 lt!1418276) (size!32079 lt!1418276)))))

(declare-fun b!4008460 () Bool)

(assert (=> b!4008460 (= e!2485852 e!2485851)))

(declare-fun res!1629201 () Bool)

(assert (=> b!4008460 (=> (not res!1629201) (not e!2485851))))

(assert (=> b!4008460 (= res!1629201 (not ((_ is Nil!42904) lt!1418276)))))

(assert (= (and d!1186062 (not res!1629200)) b!4008460))

(assert (= (and b!4008460 res!1629201) b!4008461))

(assert (= (and b!4008461 res!1629199) b!4008462))

(assert (= (and d!1186062 (not res!1629198)) b!4008463))

(assert (=> b!4008462 m!4592391))

(assert (=> b!4008462 m!4592391))

(assert (=> b!4008462 m!4592391))

(assert (=> b!4008462 m!4592391))

(declare-fun m!4592455 () Bool)

(assert (=> b!4008462 m!4592455))

(assert (=> b!4008461 m!4592397))

(assert (=> b!4008461 m!4592397))

(assert (=> b!4008463 m!4591663))

(assert (=> b!4008463 m!4591663))

(assert (=> b!4007873 d!1186062))

(declare-fun d!1186064 () Bool)

(assert (=> d!1186064 (isPrefix!3909 lt!1418276 lt!1418276)))

(declare-fun lt!1418507 () Unit!61905)

(declare-fun choose!24214 (List!43028 List!43028) Unit!61905)

(assert (=> d!1186064 (= lt!1418507 (choose!24214 lt!1418276 lt!1418276))))

(assert (=> d!1186064 (= (lemmaIsPrefixRefl!2485 lt!1418276 lt!1418276) lt!1418507)))

(declare-fun bs!589175 () Bool)

(assert (= bs!589175 d!1186064))

(assert (=> bs!589175 m!4591409))

(declare-fun m!4592457 () Bool)

(assert (=> bs!589175 m!4592457))

(assert (=> b!4007873 d!1186064))

(declare-fun b!4008492 () Bool)

(declare-fun e!2485872 () Bool)

(assert (=> b!4008492 (= e!2485872 (not (= (head!8515 lt!1418254) (c!692981 (regex!6822 (rule!9862 token!484))))))))

(declare-fun bm!286233 () Bool)

(declare-fun call!286238 () Bool)

(assert (=> bm!286233 (= call!286238 (isEmpty!25634 lt!1418254))))

(declare-fun b!4008493 () Bool)

(declare-fun e!2485867 () Bool)

(assert (=> b!4008493 (= e!2485867 (nullable!4114 (regex!6822 (rule!9862 token!484))))))

(declare-fun b!4008494 () Bool)

(declare-fun res!1629222 () Bool)

(declare-fun e!2485868 () Bool)

(assert (=> b!4008494 (=> (not res!1629222) (not e!2485868))))

(assert (=> b!4008494 (= res!1629222 (not call!286238))))

(declare-fun d!1186066 () Bool)

(declare-fun e!2485870 () Bool)

(assert (=> d!1186066 e!2485870))

(declare-fun c!693072 () Bool)

(assert (=> d!1186066 (= c!693072 ((_ is EmptyExpr!11727) (regex!6822 (rule!9862 token!484))))))

(declare-fun lt!1418510 () Bool)

(assert (=> d!1186066 (= lt!1418510 e!2485867)))

(declare-fun c!693074 () Bool)

(assert (=> d!1186066 (= c!693074 (isEmpty!25634 lt!1418254))))

(assert (=> d!1186066 (validRegex!5314 (regex!6822 (rule!9862 token!484)))))

(assert (=> d!1186066 (= (matchR!5688 (regex!6822 (rule!9862 token!484)) lt!1418254) lt!1418510)))

(declare-fun b!4008495 () Bool)

(declare-fun derivativeStep!3523 (Regex!11727 C!23640) Regex!11727)

(assert (=> b!4008495 (= e!2485867 (matchR!5688 (derivativeStep!3523 (regex!6822 (rule!9862 token!484)) (head!8515 lt!1418254)) (tail!6247 lt!1418254)))))

(declare-fun b!4008496 () Bool)

(declare-fun res!1629225 () Bool)

(assert (=> b!4008496 (=> (not res!1629225) (not e!2485868))))

(assert (=> b!4008496 (= res!1629225 (isEmpty!25634 (tail!6247 lt!1418254)))))

(declare-fun b!4008497 () Bool)

(declare-fun res!1629224 () Bool)

(assert (=> b!4008497 (=> res!1629224 e!2485872)))

(assert (=> b!4008497 (= res!1629224 (not (isEmpty!25634 (tail!6247 lt!1418254))))))

(declare-fun b!4008498 () Bool)

(declare-fun e!2485871 () Bool)

(assert (=> b!4008498 (= e!2485871 e!2485872)))

(declare-fun res!1629220 () Bool)

(assert (=> b!4008498 (=> res!1629220 e!2485872)))

(assert (=> b!4008498 (= res!1629220 call!286238)))

(declare-fun b!4008499 () Bool)

(assert (=> b!4008499 (= e!2485868 (= (head!8515 lt!1418254) (c!692981 (regex!6822 (rule!9862 token!484)))))))

(declare-fun b!4008500 () Bool)

(declare-fun e!2485873 () Bool)

(assert (=> b!4008500 (= e!2485873 e!2485871)))

(declare-fun res!1629219 () Bool)

(assert (=> b!4008500 (=> (not res!1629219) (not e!2485871))))

(assert (=> b!4008500 (= res!1629219 (not lt!1418510))))

(declare-fun b!4008501 () Bool)

(declare-fun e!2485869 () Bool)

(assert (=> b!4008501 (= e!2485869 (not lt!1418510))))

(declare-fun b!4008502 () Bool)

(assert (=> b!4008502 (= e!2485870 (= lt!1418510 call!286238))))

(declare-fun b!4008503 () Bool)

(declare-fun res!1629223 () Bool)

(assert (=> b!4008503 (=> res!1629223 e!2485873)))

(assert (=> b!4008503 (= res!1629223 e!2485868)))

(declare-fun res!1629218 () Bool)

(assert (=> b!4008503 (=> (not res!1629218) (not e!2485868))))

(assert (=> b!4008503 (= res!1629218 lt!1418510)))

(declare-fun b!4008504 () Bool)

(assert (=> b!4008504 (= e!2485870 e!2485869)))

(declare-fun c!693073 () Bool)

(assert (=> b!4008504 (= c!693073 ((_ is EmptyLang!11727) (regex!6822 (rule!9862 token!484))))))

(declare-fun b!4008505 () Bool)

(declare-fun res!1629221 () Bool)

(assert (=> b!4008505 (=> res!1629221 e!2485873)))

(assert (=> b!4008505 (= res!1629221 (not ((_ is ElementMatch!11727) (regex!6822 (rule!9862 token!484)))))))

(assert (=> b!4008505 (= e!2485869 e!2485873)))

(assert (= (and d!1186066 c!693074) b!4008493))

(assert (= (and d!1186066 (not c!693074)) b!4008495))

(assert (= (and d!1186066 c!693072) b!4008502))

(assert (= (and d!1186066 (not c!693072)) b!4008504))

(assert (= (and b!4008504 c!693073) b!4008501))

(assert (= (and b!4008504 (not c!693073)) b!4008505))

(assert (= (and b!4008505 (not res!1629221)) b!4008503))

(assert (= (and b!4008503 res!1629218) b!4008494))

(assert (= (and b!4008494 res!1629222) b!4008496))

(assert (= (and b!4008496 res!1629225) b!4008499))

(assert (= (and b!4008503 (not res!1629223)) b!4008500))

(assert (= (and b!4008500 res!1629219) b!4008498))

(assert (= (and b!4008498 (not res!1629220)) b!4008497))

(assert (= (and b!4008497 (not res!1629224)) b!4008492))

(assert (= (or b!4008502 b!4008494 b!4008498) bm!286233))

(declare-fun m!4592459 () Bool)

(assert (=> d!1186066 m!4592459))

(assert (=> d!1186066 m!4591763))

(assert (=> b!4008499 m!4592157))

(assert (=> b!4008497 m!4592151))

(assert (=> b!4008497 m!4592151))

(declare-fun m!4592461 () Bool)

(assert (=> b!4008497 m!4592461))

(assert (=> b!4008496 m!4592151))

(assert (=> b!4008496 m!4592151))

(assert (=> b!4008496 m!4592461))

(assert (=> b!4008493 m!4591765))

(assert (=> b!4008492 m!4592157))

(assert (=> bm!286233 m!4592459))

(assert (=> b!4008495 m!4592157))

(assert (=> b!4008495 m!4592157))

(declare-fun m!4592463 () Bool)

(assert (=> b!4008495 m!4592463))

(assert (=> b!4008495 m!4592151))

(assert (=> b!4008495 m!4592463))

(assert (=> b!4008495 m!4592151))

(declare-fun m!4592465 () Bool)

(assert (=> b!4008495 m!4592465))

(assert (=> b!4007894 d!1186066))

(declare-fun d!1186068 () Bool)

(declare-fun e!2485874 () Bool)

(assert (=> d!1186068 e!2485874))

(declare-fun res!1629226 () Bool)

(assert (=> d!1186068 (=> res!1629226 e!2485874)))

(declare-fun lt!1418511 () Bool)

(assert (=> d!1186068 (= res!1629226 (not lt!1418511))))

(declare-fun e!2485876 () Bool)

(assert (=> d!1186068 (= lt!1418511 e!2485876)))

(declare-fun res!1629228 () Bool)

(assert (=> d!1186068 (=> res!1629228 e!2485876)))

(assert (=> d!1186068 (= res!1629228 ((_ is Nil!42904) lt!1418254))))

(assert (=> d!1186068 (= (isPrefix!3909 lt!1418254 lt!1418249) lt!1418511)))

(declare-fun b!4008508 () Bool)

(declare-fun e!2485875 () Bool)

(assert (=> b!4008508 (= e!2485875 (isPrefix!3909 (tail!6247 lt!1418254) (tail!6247 lt!1418249)))))

(declare-fun b!4008507 () Bool)

(declare-fun res!1629227 () Bool)

(assert (=> b!4008507 (=> (not res!1629227) (not e!2485875))))

(assert (=> b!4008507 (= res!1629227 (= (head!8515 lt!1418254) (head!8515 lt!1418249)))))

(declare-fun b!4008509 () Bool)

(assert (=> b!4008509 (= e!2485874 (>= (size!32079 lt!1418249) (size!32079 lt!1418254)))))

(declare-fun b!4008506 () Bool)

(assert (=> b!4008506 (= e!2485876 e!2485875)))

(declare-fun res!1629229 () Bool)

(assert (=> b!4008506 (=> (not res!1629229) (not e!2485875))))

(assert (=> b!4008506 (= res!1629229 (not ((_ is Nil!42904) lt!1418249)))))

(assert (= (and d!1186068 (not res!1629228)) b!4008506))

(assert (= (and b!4008506 res!1629229) b!4008507))

(assert (= (and b!4008507 res!1629227) b!4008508))

(assert (= (and d!1186068 (not res!1629226)) b!4008509))

(assert (=> b!4008508 m!4592151))

(declare-fun m!4592467 () Bool)

(assert (=> b!4008508 m!4592467))

(assert (=> b!4008508 m!4592151))

(assert (=> b!4008508 m!4592467))

(declare-fun m!4592469 () Bool)

(assert (=> b!4008508 m!4592469))

(assert (=> b!4008507 m!4592157))

(declare-fun m!4592471 () Bool)

(assert (=> b!4008507 m!4592471))

(assert (=> b!4008509 m!4592211))

(assert (=> b!4008509 m!4591495))

(assert (=> b!4007894 d!1186068))

(declare-fun d!1186070 () Bool)

(assert (=> d!1186070 (isPrefix!3909 lt!1418254 (++!11224 prefix!494 newSuffix!27))))

(declare-fun lt!1418514 () Unit!61905)

(declare-fun choose!24215 (List!43028 List!43028 List!43028) Unit!61905)

(assert (=> d!1186070 (= lt!1418514 (choose!24215 lt!1418254 prefix!494 newSuffix!27))))

(assert (=> d!1186070 (isPrefix!3909 lt!1418254 prefix!494)))

(assert (=> d!1186070 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!722 lt!1418254 prefix!494 newSuffix!27) lt!1418514)))

(declare-fun bs!589176 () Bool)

(assert (= bs!589176 d!1186070))

(assert (=> bs!589176 m!4591471))

(assert (=> bs!589176 m!4591471))

(declare-fun m!4592473 () Bool)

(assert (=> bs!589176 m!4592473))

(declare-fun m!4592475 () Bool)

(assert (=> bs!589176 m!4592475))

(assert (=> bs!589176 m!4591421))

(assert (=> b!4007894 d!1186070))

(declare-fun d!1186072 () Bool)

(assert (=> d!1186072 (isPrefix!3909 lt!1418254 (++!11224 prefix!494 suffix!1299))))

(declare-fun lt!1418515 () Unit!61905)

(assert (=> d!1186072 (= lt!1418515 (choose!24215 lt!1418254 prefix!494 suffix!1299))))

(assert (=> d!1186072 (isPrefix!3909 lt!1418254 prefix!494)))

(assert (=> d!1186072 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!722 lt!1418254 prefix!494 suffix!1299) lt!1418515)))

(declare-fun bs!589177 () Bool)

(assert (= bs!589177 d!1186072))

(assert (=> bs!589177 m!4591479))

(assert (=> bs!589177 m!4591479))

(declare-fun m!4592477 () Bool)

(assert (=> bs!589177 m!4592477))

(declare-fun m!4592479 () Bool)

(assert (=> bs!589177 m!4592479))

(assert (=> bs!589177 m!4591421))

(assert (=> b!4007894 d!1186072))

(declare-fun d!1186074 () Bool)

(declare-fun e!2485878 () Bool)

(assert (=> d!1186074 e!2485878))

(declare-fun res!1629231 () Bool)

(assert (=> d!1186074 (=> (not res!1629231) (not e!2485878))))

(declare-fun lt!1418516 () List!43028)

(assert (=> d!1186074 (= res!1629231 (= (content!6506 lt!1418516) ((_ map or) (content!6506 lt!1418254) (content!6506 lt!1418244))))))

(declare-fun e!2485877 () List!43028)

(assert (=> d!1186074 (= lt!1418516 e!2485877)))

(declare-fun c!693075 () Bool)

(assert (=> d!1186074 (= c!693075 ((_ is Nil!42904) lt!1418254))))

(assert (=> d!1186074 (= (++!11224 lt!1418254 lt!1418244) lt!1418516)))

(declare-fun b!4008510 () Bool)

(assert (=> b!4008510 (= e!2485877 lt!1418244)))

(declare-fun b!4008513 () Bool)

(assert (=> b!4008513 (= e!2485878 (or (not (= lt!1418244 Nil!42904)) (= lt!1418516 lt!1418254)))))

(declare-fun b!4008511 () Bool)

(assert (=> b!4008511 (= e!2485877 (Cons!42904 (h!48324 lt!1418254) (++!11224 (t!332653 lt!1418254) lt!1418244)))))

(declare-fun b!4008512 () Bool)

(declare-fun res!1629230 () Bool)

(assert (=> b!4008512 (=> (not res!1629230) (not e!2485878))))

(assert (=> b!4008512 (= res!1629230 (= (size!32079 lt!1418516) (+ (size!32079 lt!1418254) (size!32079 lt!1418244))))))

(assert (= (and d!1186074 c!693075) b!4008510))

(assert (= (and d!1186074 (not c!693075)) b!4008511))

(assert (= (and d!1186074 res!1629231) b!4008512))

(assert (= (and b!4008512 res!1629230) b!4008513))

(declare-fun m!4592481 () Bool)

(assert (=> d!1186074 m!4592481))

(assert (=> d!1186074 m!4591697))

(declare-fun m!4592483 () Bool)

(assert (=> d!1186074 m!4592483))

(declare-fun m!4592485 () Bool)

(assert (=> b!4008511 m!4592485))

(declare-fun m!4592487 () Bool)

(assert (=> b!4008512 m!4592487))

(assert (=> b!4008512 m!4591495))

(declare-fun m!4592489 () Bool)

(assert (=> b!4008512 m!4592489))

(assert (=> b!4007883 d!1186074))

(declare-fun d!1186076 () Bool)

(declare-fun e!2485880 () Bool)

(assert (=> d!1186076 e!2485880))

(declare-fun res!1629233 () Bool)

(assert (=> d!1186076 (=> (not res!1629233) (not e!2485880))))

(declare-fun lt!1418517 () List!43028)

(assert (=> d!1186076 (= res!1629233 (= (content!6506 lt!1418517) ((_ map or) (content!6506 lt!1418268) (content!6506 suffix!1299))))))

(declare-fun e!2485879 () List!43028)

(assert (=> d!1186076 (= lt!1418517 e!2485879)))

(declare-fun c!693076 () Bool)

(assert (=> d!1186076 (= c!693076 ((_ is Nil!42904) lt!1418268))))

(assert (=> d!1186076 (= (++!11224 lt!1418268 suffix!1299) lt!1418517)))

(declare-fun b!4008514 () Bool)

(assert (=> b!4008514 (= e!2485879 suffix!1299)))

(declare-fun b!4008517 () Bool)

(assert (=> b!4008517 (= e!2485880 (or (not (= suffix!1299 Nil!42904)) (= lt!1418517 lt!1418268)))))

(declare-fun b!4008515 () Bool)

(assert (=> b!4008515 (= e!2485879 (Cons!42904 (h!48324 lt!1418268) (++!11224 (t!332653 lt!1418268) suffix!1299)))))

(declare-fun b!4008516 () Bool)

(declare-fun res!1629232 () Bool)

(assert (=> b!4008516 (=> (not res!1629232) (not e!2485880))))

(assert (=> b!4008516 (= res!1629232 (= (size!32079 lt!1418517) (+ (size!32079 lt!1418268) (size!32079 suffix!1299))))))

(assert (= (and d!1186076 c!693076) b!4008514))

(assert (= (and d!1186076 (not c!693076)) b!4008515))

(assert (= (and d!1186076 res!1629233) b!4008516))

(assert (= (and b!4008516 res!1629232) b!4008517))

(declare-fun m!4592491 () Bool)

(assert (=> d!1186076 m!4592491))

(declare-fun m!4592493 () Bool)

(assert (=> d!1186076 m!4592493))

(assert (=> d!1186076 m!4591689))

(declare-fun m!4592495 () Bool)

(assert (=> b!4008515 m!4592495))

(declare-fun m!4592497 () Bool)

(assert (=> b!4008516 m!4592497))

(declare-fun m!4592499 () Bool)

(assert (=> b!4008516 m!4592499))

(assert (=> b!4008516 m!4591549))

(assert (=> b!4007883 d!1186076))

(declare-fun d!1186078 () Bool)

(declare-fun e!2485882 () Bool)

(assert (=> d!1186078 e!2485882))

(declare-fun res!1629235 () Bool)

(assert (=> d!1186078 (=> (not res!1629235) (not e!2485882))))

(declare-fun lt!1418518 () List!43028)

(assert (=> d!1186078 (= res!1629235 (= (content!6506 lt!1418518) ((_ map or) (content!6506 lt!1418281) (content!6506 suffix!1299))))))

(declare-fun e!2485881 () List!43028)

(assert (=> d!1186078 (= lt!1418518 e!2485881)))

(declare-fun c!693077 () Bool)

(assert (=> d!1186078 (= c!693077 ((_ is Nil!42904) lt!1418281))))

(assert (=> d!1186078 (= (++!11224 lt!1418281 suffix!1299) lt!1418518)))

(declare-fun b!4008518 () Bool)

(assert (=> b!4008518 (= e!2485881 suffix!1299)))

(declare-fun b!4008521 () Bool)

(assert (=> b!4008521 (= e!2485882 (or (not (= suffix!1299 Nil!42904)) (= lt!1418518 lt!1418281)))))

(declare-fun b!4008519 () Bool)

(assert (=> b!4008519 (= e!2485881 (Cons!42904 (h!48324 lt!1418281) (++!11224 (t!332653 lt!1418281) suffix!1299)))))

(declare-fun b!4008520 () Bool)

(declare-fun res!1629234 () Bool)

(assert (=> b!4008520 (=> (not res!1629234) (not e!2485882))))

(assert (=> b!4008520 (= res!1629234 (= (size!32079 lt!1418518) (+ (size!32079 lt!1418281) (size!32079 suffix!1299))))))

(assert (= (and d!1186078 c!693077) b!4008518))

(assert (= (and d!1186078 (not c!693077)) b!4008519))

(assert (= (and d!1186078 res!1629235) b!4008520))

(assert (= (and b!4008520 res!1629234) b!4008521))

(declare-fun m!4592501 () Bool)

(assert (=> d!1186078 m!4592501))

(assert (=> d!1186078 m!4592419))

(assert (=> d!1186078 m!4591689))

(declare-fun m!4592503 () Bool)

(assert (=> b!4008519 m!4592503))

(declare-fun m!4592505 () Bool)

(assert (=> b!4008520 m!4592505))

(assert (=> b!4008520 m!4592425))

(assert (=> b!4008520 m!4591549))

(assert (=> b!4007883 d!1186078))

(declare-fun d!1186080 () Bool)

(assert (=> d!1186080 (= (++!11224 (++!11224 lt!1418254 lt!1418281) suffix!1299) (++!11224 lt!1418254 (++!11224 lt!1418281 suffix!1299)))))

(declare-fun lt!1418521 () Unit!61905)

(declare-fun choose!24216 (List!43028 List!43028 List!43028) Unit!61905)

(assert (=> d!1186080 (= lt!1418521 (choose!24216 lt!1418254 lt!1418281 suffix!1299))))

(assert (=> d!1186080 (= (lemmaConcatAssociativity!2534 lt!1418254 lt!1418281 suffix!1299) lt!1418521)))

(declare-fun bs!589178 () Bool)

(assert (= bs!589178 d!1186080))

(declare-fun m!4592507 () Bool)

(assert (=> bs!589178 m!4592507))

(assert (=> bs!589178 m!4591417))

(declare-fun m!4592509 () Bool)

(assert (=> bs!589178 m!4592509))

(assert (=> bs!589178 m!4591417))

(assert (=> bs!589178 m!4591443))

(declare-fun m!4592511 () Bool)

(assert (=> bs!589178 m!4592511))

(assert (=> bs!589178 m!4591443))

(assert (=> b!4007883 d!1186080))

(declare-fun b!4008526 () Bool)

(declare-fun e!2485885 () Bool)

(declare-fun tp!1219685 () Bool)

(assert (=> b!4008526 (= e!2485885 (and tp_is_empty!20425 tp!1219685))))

(assert (=> b!4007877 (= tp!1219630 e!2485885)))

(assert (= (and b!4007877 ((_ is Cons!42904) (t!332653 suffixResult!105))) b!4008526))

(declare-fun b!4008527 () Bool)

(declare-fun e!2485886 () Bool)

(declare-fun tp!1219686 () Bool)

(assert (=> b!4008527 (= e!2485886 (and tp_is_empty!20425 tp!1219686))))

(assert (=> b!4007892 (= tp!1219633 e!2485886)))

(assert (= (and b!4007892 ((_ is Cons!42904) (t!332653 newSuffix!27))) b!4008527))

(declare-fun b!4008528 () Bool)

(declare-fun e!2485887 () Bool)

(declare-fun tp!1219687 () Bool)

(assert (=> b!4008528 (= e!2485887 (and tp_is_empty!20425 tp!1219687))))

(assert (=> b!4007897 (= tp!1219627 e!2485887)))

(assert (= (and b!4007897 ((_ is Cons!42904) (t!332653 suffix!1299))) b!4008528))

(declare-fun b!4008541 () Bool)

(declare-fun e!2485890 () Bool)

(declare-fun tp!1219698 () Bool)

(assert (=> b!4008541 (= e!2485890 tp!1219698)))

(declare-fun b!4008539 () Bool)

(assert (=> b!4008539 (= e!2485890 tp_is_empty!20425)))

(declare-fun b!4008542 () Bool)

(declare-fun tp!1219699 () Bool)

(declare-fun tp!1219702 () Bool)

(assert (=> b!4008542 (= e!2485890 (and tp!1219699 tp!1219702))))

(assert (=> b!4007902 (= tp!1219626 e!2485890)))

(declare-fun b!4008540 () Bool)

(declare-fun tp!1219700 () Bool)

(declare-fun tp!1219701 () Bool)

(assert (=> b!4008540 (= e!2485890 (and tp!1219700 tp!1219701))))

(assert (= (and b!4007902 ((_ is ElementMatch!11727) (regex!6822 (rule!9862 token!484)))) b!4008539))

(assert (= (and b!4007902 ((_ is Concat!18780) (regex!6822 (rule!9862 token!484)))) b!4008540))

(assert (= (and b!4007902 ((_ is Star!11727) (regex!6822 (rule!9862 token!484)))) b!4008541))

(assert (= (and b!4007902 ((_ is Union!11727) (regex!6822 (rule!9862 token!484)))) b!4008542))

(declare-fun b!4008543 () Bool)

(declare-fun e!2485891 () Bool)

(declare-fun tp!1219703 () Bool)

(assert (=> b!4008543 (= e!2485891 (and tp_is_empty!20425 tp!1219703))))

(assert (=> b!4007891 (= tp!1219629 e!2485891)))

(assert (= (and b!4007891 ((_ is Cons!42904) (t!332653 prefix!494))) b!4008543))

(declare-fun b!4008544 () Bool)

(declare-fun e!2485892 () Bool)

(declare-fun tp!1219704 () Bool)

(assert (=> b!4008544 (= e!2485892 (and tp_is_empty!20425 tp!1219704))))

(assert (=> b!4007880 (= tp!1219631 e!2485892)))

(assert (= (and b!4007880 ((_ is Cons!42904) (originalCharacters!7422 token!484))) b!4008544))

(declare-fun b!4008545 () Bool)

(declare-fun e!2485893 () Bool)

(declare-fun tp!1219705 () Bool)

(assert (=> b!4008545 (= e!2485893 (and tp_is_empty!20425 tp!1219705))))

(assert (=> b!4007874 (= tp!1219622 e!2485893)))

(assert (= (and b!4007874 ((_ is Cons!42904) (t!332653 newSuffixResult!27))) b!4008545))

(declare-fun b!4008556 () Bool)

(declare-fun b_free!111501 () Bool)

(declare-fun b_next!112205 () Bool)

(assert (=> b!4008556 (= b_free!111501 (not b_next!112205))))

(declare-fun tb!240921 () Bool)

(declare-fun t!332697 () Bool)

(assert (=> (and b!4008556 (= (toValue!9322 (transformation!6822 (h!48326 (t!332655 rules!2999)))) (toValue!9322 (transformation!6822 (rule!9862 token!484)))) t!332697) tb!240921))

(declare-fun result!292030 () Bool)

(assert (= result!292030 result!292010))

(assert (=> d!1185960 t!332697))

(declare-fun t!332699 () Bool)

(declare-fun tb!240923 () Bool)

(assert (=> (and b!4008556 (= (toValue!9322 (transformation!6822 (h!48326 (t!332655 rules!2999)))) (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))) t!332699) tb!240923))

(declare-fun result!292032 () Bool)

(assert (= result!292032 result!292020))

(assert (=> d!1186014 t!332699))

(declare-fun b_and!307867 () Bool)

(declare-fun tp!1219716 () Bool)

(assert (=> b!4008556 (= tp!1219716 (and (=> t!332697 result!292030) (=> t!332699 result!292032) b_and!307867))))

(declare-fun b_free!111503 () Bool)

(declare-fun b_next!112207 () Bool)

(assert (=> b!4008556 (= b_free!111503 (not b_next!112207))))

(declare-fun tb!240925 () Bool)

(declare-fun t!332701 () Bool)

(assert (=> (and b!4008556 (= (toChars!9181 (transformation!6822 (h!48326 (t!332655 rules!2999)))) (toChars!9181 (transformation!6822 (rule!9862 token!484)))) t!332701) tb!240925))

(declare-fun result!292034 () Bool)

(assert (= result!292034 result!291982))

(assert (=> b!4008097 t!332701))

(assert (=> d!1185990 t!332701))

(declare-fun tb!240927 () Bool)

(declare-fun t!332703 () Bool)

(assert (=> (and b!4008556 (= (toChars!9181 (transformation!6822 (h!48326 (t!332655 rules!2999)))) (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))) t!332703) tb!240927))

(declare-fun result!292036 () Bool)

(assert (= result!292036 result!292016))

(assert (=> d!1185996 t!332703))

(declare-fun b_and!307869 () Bool)

(declare-fun tp!1219714 () Bool)

(assert (=> b!4008556 (= tp!1219714 (and (=> t!332701 result!292034) (=> t!332703 result!292036) b_and!307869))))

(declare-fun e!2485905 () Bool)

(assert (=> b!4008556 (= e!2485905 (and tp!1219716 tp!1219714))))

(declare-fun tp!1219715 () Bool)

(declare-fun b!4008555 () Bool)

(declare-fun e!2485902 () Bool)

(assert (=> b!4008555 (= e!2485902 (and tp!1219715 (inv!57300 (tag!7682 (h!48326 (t!332655 rules!2999)))) (inv!57303 (transformation!6822 (h!48326 (t!332655 rules!2999)))) e!2485905))))

(declare-fun b!4008554 () Bool)

(declare-fun e!2485904 () Bool)

(declare-fun tp!1219717 () Bool)

(assert (=> b!4008554 (= e!2485904 (and e!2485902 tp!1219717))))

(assert (=> b!4007895 (= tp!1219628 e!2485904)))

(assert (= b!4008555 b!4008556))

(assert (= b!4008554 b!4008555))

(assert (= (and b!4007895 ((_ is Cons!42906) (t!332655 rules!2999))) b!4008554))

(declare-fun m!4592513 () Bool)

(assert (=> b!4008555 m!4592513))

(declare-fun m!4592515 () Bool)

(assert (=> b!4008555 m!4592515))

(declare-fun b!4008559 () Bool)

(declare-fun e!2485906 () Bool)

(declare-fun tp!1219718 () Bool)

(assert (=> b!4008559 (= e!2485906 tp!1219718)))

(declare-fun b!4008557 () Bool)

(assert (=> b!4008557 (= e!2485906 tp_is_empty!20425)))

(declare-fun b!4008560 () Bool)

(declare-fun tp!1219719 () Bool)

(declare-fun tp!1219722 () Bool)

(assert (=> b!4008560 (= e!2485906 (and tp!1219719 tp!1219722))))

(assert (=> b!4007884 (= tp!1219623 e!2485906)))

(declare-fun b!4008558 () Bool)

(declare-fun tp!1219720 () Bool)

(declare-fun tp!1219721 () Bool)

(assert (=> b!4008558 (= e!2485906 (and tp!1219720 tp!1219721))))

(assert (= (and b!4007884 ((_ is ElementMatch!11727) (regex!6822 (h!48326 rules!2999)))) b!4008557))

(assert (= (and b!4007884 ((_ is Concat!18780) (regex!6822 (h!48326 rules!2999)))) b!4008558))

(assert (= (and b!4007884 ((_ is Star!11727) (regex!6822 (h!48326 rules!2999)))) b!4008559))

(assert (= (and b!4007884 ((_ is Union!11727) (regex!6822 (h!48326 rules!2999)))) b!4008560))

(declare-fun b_lambda!116937 () Bool)

(assert (= b_lambda!116931 (or (and b!4007875 b_free!111491 (= (toChars!9181 (transformation!6822 (h!48326 rules!2999))) (toChars!9181 (transformation!6822 (rule!9862 token!484))))) (and b!4007900 b_free!111495) (and b!4008556 b_free!111503 (= (toChars!9181 (transformation!6822 (h!48326 (t!332655 rules!2999)))) (toChars!9181 (transformation!6822 (rule!9862 token!484))))) b_lambda!116937)))

(declare-fun b_lambda!116939 () Bool)

(assert (= b_lambda!116915 (or (and b!4007875 b_free!111491 (= (toChars!9181 (transformation!6822 (h!48326 rules!2999))) (toChars!9181 (transformation!6822 (rule!9862 token!484))))) (and b!4007900 b_free!111495) (and b!4008556 b_free!111503 (= (toChars!9181 (transformation!6822 (h!48326 (t!332655 rules!2999)))) (toChars!9181 (transformation!6822 (rule!9862 token!484))))) b_lambda!116939)))

(declare-fun b_lambda!116941 () Bool)

(assert (= b_lambda!116929 (or (and b!4007875 b_free!111489 (= (toValue!9322 (transformation!6822 (h!48326 rules!2999))) (toValue!9322 (transformation!6822 (rule!9862 token!484))))) (and b!4007900 b_free!111493) (and b!4008556 b_free!111501 (= (toValue!9322 (transformation!6822 (h!48326 (t!332655 rules!2999)))) (toValue!9322 (transformation!6822 (rule!9862 token!484))))) b_lambda!116941)))

(check-sat (not d!1185998) (not b!4008372) (not b!4008507) (not d!1186024) (not b!4008436) (not b!4008435) (not b!4008360) b_and!307861 (not d!1186016) (not d!1185968) (not d!1186012) (not b!4008450) (not b!4008411) (not b!4008455) (not d!1185978) (not d!1185830) (not b!4008097) (not b!4008541) (not d!1186064) (not b!4008351) (not b!4008087) (not d!1185848) (not b!4008545) (not b!4008543) (not b!4008527) (not b!4008515) (not b!4008395) (not bm!286225) (not d!1186000) (not b!4008495) (not b!4008365) (not b!4008456) (not d!1186074) (not d!1186070) (not b!4008024) (not d!1185836) (not b!4008364) (not b!4008428) (not d!1186056) (not b!4008555) (not b!4008378) (not d!1186002) (not d!1185828) (not b!4008294) (not b!4008249) (not d!1186038) (not b!4008445) (not b!4008560) (not d!1186078) (not b!4008399) (not b!4008021) (not d!1186028) (not b!4008058) (not b!4008453) (not b!4008338) (not b!4008439) (not tb!240909) (not b!4008103) (not b!4008458) (not b!4008390) (not d!1185970) (not b!4008559) (not b_next!112195) (not b!4008246) (not b!4008370) (not b!4008413) (not d!1185974) (not b!4008449) tp_is_empty!20425 (not b!4008554) (not b!4008431) (not b!4008029) (not d!1185972) (not b_next!112199) (not b!4008509) (not b!4008359) b_and!307867 (not b!4008407) (not b!4008025) (not b!4008424) (not b!4008248) (not b!4008355) (not b!4008027) (not bm!286230) (not b!4008511) (not tb!240913) (not b!4008493) b_and!307869 (not b!4008418) b_and!307865 (not b!4008242) b_and!307859 (not b!4008367) (not b!4008061) (not b!4008516) (not b!4008247) (not d!1185988) (not d!1186072) (not b!4008356) (not b!4008392) (not d!1186004) (not b!4008558) (not tb!240889) (not b_next!112197) (not b!4008402) (not b!4008463) (not d!1186076) (not b!4008384) (not b!4008434) (not b!4008426) (not b!4008098) (not b!4008374) (not b!4008406) (not b!4008420) (not b!4008497) (not d!1185996) (not b!4008075) (not b!4008373) (not b!4008417) (not b!4008026) b_and!307863 (not b_lambda!116933) (not b!4008368) (not b!4008377) (not d!1186006) (not b!4008403) (not b!4008363) (not d!1186008) (not b!4008244) (not b!4008438) (not b!4008526) (not b!4008398) (not d!1185854) (not d!1186060) (not d!1185992) (not b!4008540) (not b!4008022) (not b!4008409) (not b_next!112193) (not b!4008062) (not d!1186044) (not d!1185964) (not d!1185858) (not b!4008461) (not d!1185990) (not b!4008412) (not b!4008366) (not d!1186020) (not b!4008241) (not b!4008542) (not d!1186036) (not b!4008520) (not d!1186026) (not b!4008512) (not b!4008452) (not b!4008422) (not d!1185956) (not b!4008349) (not b!4008462) (not b!4008023) (not b!4008386) (not b!4008508) (not d!1185994) (not d!1186046) (not b!4008427) (not b!4008410) (not b!4008353) (not b_lambda!116937) (not b_next!112207) (not b!4008519) (not b!4008432) (not b!4008293) (not b!4008528) (not b_lambda!116939) (not b!4008492) (not b!4008430) (not d!1186058) (not tb!240917) (not d!1185842) (not b!4008416) (not d!1185850) (not b_lambda!116935) (not d!1185786) (not b!4008496) (not b!4008419) (not b!4008544) (not b!4008057) (not b!4008376) (not b!4008400) (not d!1185832) (not b!4008292) (not d!1186050) (not b!4008245) (not d!1186066) (not b!4008394) (not b!4008448) (not b!4008389) (not b!4008362) (not d!1185958) (not d!1186080) (not b_lambda!116941) (not bm!286233) (not b_next!112205) (not b!4008415) (not b!4008499))
(check-sat b_and!307861 (not b_next!112195) b_and!307869 (not b_next!112197) b_and!307863 (not b_next!112193) (not b_next!112207) (not b_next!112205) (not b_next!112199) b_and!307867 b_and!307865 b_and!307859)
(get-model)

(declare-fun d!1186088 () Bool)

(declare-fun lt!1418522 () Int)

(assert (=> d!1186088 (>= lt!1418522 0)))

(declare-fun e!2485907 () Int)

(assert (=> d!1186088 (= lt!1418522 e!2485907)))

(declare-fun c!693078 () Bool)

(assert (=> d!1186088 (= c!693078 ((_ is Nil!42904) lt!1418249))))

(assert (=> d!1186088 (= (size!32079 lt!1418249) lt!1418522)))

(declare-fun b!4008561 () Bool)

(assert (=> b!4008561 (= e!2485907 0)))

(declare-fun b!4008562 () Bool)

(assert (=> b!4008562 (= e!2485907 (+ 1 (size!32079 (t!332653 lt!1418249))))))

(assert (= (and d!1186088 c!693078) b!4008561))

(assert (= (and d!1186088 (not c!693078)) b!4008562))

(declare-fun m!4592519 () Bool)

(assert (=> b!4008562 m!4592519))

(assert (=> b!4008509 d!1186088))

(assert (=> b!4008509 d!1185984))

(declare-fun d!1186090 () Bool)

(assert (=> d!1186090 (= (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418330)))) (list!15944 (c!692980 (charsOf!4638 (_1!24163 (get!14100 lt!1418330))))))))

(declare-fun bs!589180 () Bool)

(assert (= bs!589180 d!1186090))

(declare-fun m!4592521 () Bool)

(assert (=> bs!589180 m!4592521))

(assert (=> b!4008022 d!1186090))

(declare-fun d!1186092 () Bool)

(declare-fun lt!1418523 () BalanceConc!25660)

(assert (=> d!1186092 (= (list!15942 lt!1418523) (originalCharacters!7422 (_1!24163 (get!14100 lt!1418330))))))

(assert (=> d!1186092 (= lt!1418523 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418330))))) (value!215061 (_1!24163 (get!14100 lt!1418330)))))))

(assert (=> d!1186092 (= (charsOf!4638 (_1!24163 (get!14100 lt!1418330))) lt!1418523)))

(declare-fun b_lambda!116943 () Bool)

(assert (=> (not b_lambda!116943) (not d!1186092)))

(declare-fun t!332707 () Bool)

(declare-fun tb!240929 () Bool)

(assert (=> (and b!4007875 (= (toChars!9181 (transformation!6822 (h!48326 rules!2999))) (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418330)))))) t!332707) tb!240929))

(declare-fun b!4008563 () Bool)

(declare-fun e!2485908 () Bool)

(declare-fun tp!1219723 () Bool)

(assert (=> b!4008563 (= e!2485908 (and (inv!57307 (c!692980 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418330))))) (value!215061 (_1!24163 (get!14100 lt!1418330)))))) tp!1219723))))

(declare-fun result!292038 () Bool)

(assert (=> tb!240929 (= result!292038 (and (inv!57308 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418330))))) (value!215061 (_1!24163 (get!14100 lt!1418330))))) e!2485908))))

(assert (= tb!240929 b!4008563))

(declare-fun m!4592523 () Bool)

(assert (=> b!4008563 m!4592523))

(declare-fun m!4592525 () Bool)

(assert (=> tb!240929 m!4592525))

(assert (=> d!1186092 t!332707))

(declare-fun b_and!307871 () Bool)

(assert (= b_and!307859 (and (=> t!332707 result!292038) b_and!307871)))

(declare-fun t!332709 () Bool)

(declare-fun tb!240931 () Bool)

(assert (=> (and b!4007900 (= (toChars!9181 (transformation!6822 (rule!9862 token!484))) (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418330)))))) t!332709) tb!240931))

(declare-fun result!292040 () Bool)

(assert (= result!292040 result!292038))

(assert (=> d!1186092 t!332709))

(declare-fun b_and!307873 () Bool)

(assert (= b_and!307861 (and (=> t!332709 result!292040) b_and!307873)))

(declare-fun tb!240933 () Bool)

(declare-fun t!332711 () Bool)

(assert (=> (and b!4008556 (= (toChars!9181 (transformation!6822 (h!48326 (t!332655 rules!2999)))) (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418330)))))) t!332711) tb!240933))

(declare-fun result!292042 () Bool)

(assert (= result!292042 result!292038))

(assert (=> d!1186092 t!332711))

(declare-fun b_and!307875 () Bool)

(assert (= b_and!307869 (and (=> t!332711 result!292042) b_and!307875)))

(declare-fun m!4592527 () Bool)

(assert (=> d!1186092 m!4592527))

(declare-fun m!4592529 () Bool)

(assert (=> d!1186092 m!4592529))

(assert (=> b!4008022 d!1186092))

(declare-fun d!1186094 () Bool)

(assert (=> d!1186094 (= (get!14100 lt!1418330) (v!39601 lt!1418330))))

(assert (=> b!4008022 d!1186094))

(declare-fun d!1186096 () Bool)

(assert (=> d!1186096 (= (head!8515 lt!1418251) (h!48324 lt!1418251))))

(assert (=> b!4008398 d!1186096))

(declare-fun d!1186098 () Bool)

(assert (=> d!1186098 (= (head!8515 (++!11224 lt!1418251 (_2!24163 (v!39601 lt!1418269)))) (h!48324 (++!11224 lt!1418251 (_2!24163 (v!39601 lt!1418269)))))))

(assert (=> b!4008398 d!1186098))

(declare-fun d!1186100 () Bool)

(declare-fun lt!1418524 () Int)

(assert (=> d!1186100 (>= lt!1418524 0)))

(declare-fun e!2485909 () Int)

(assert (=> d!1186100 (= lt!1418524 e!2485909)))

(declare-fun c!693079 () Bool)

(assert (=> d!1186100 (= c!693079 ((_ is Nil!42904) lt!1418517))))

(assert (=> d!1186100 (= (size!32079 lt!1418517) lt!1418524)))

(declare-fun b!4008564 () Bool)

(assert (=> b!4008564 (= e!2485909 0)))

(declare-fun b!4008565 () Bool)

(assert (=> b!4008565 (= e!2485909 (+ 1 (size!32079 (t!332653 lt!1418517))))))

(assert (= (and d!1186100 c!693079) b!4008564))

(assert (= (and d!1186100 (not c!693079)) b!4008565))

(declare-fun m!4592531 () Bool)

(assert (=> b!4008565 m!4592531))

(assert (=> b!4008516 d!1186100))

(declare-fun d!1186102 () Bool)

(declare-fun lt!1418525 () Int)

(assert (=> d!1186102 (>= lt!1418525 0)))

(declare-fun e!2485910 () Int)

(assert (=> d!1186102 (= lt!1418525 e!2485910)))

(declare-fun c!693080 () Bool)

(assert (=> d!1186102 (= c!693080 ((_ is Nil!42904) lt!1418268))))

(assert (=> d!1186102 (= (size!32079 lt!1418268) lt!1418525)))

(declare-fun b!4008566 () Bool)

(assert (=> b!4008566 (= e!2485910 0)))

(declare-fun b!4008567 () Bool)

(assert (=> b!4008567 (= e!2485910 (+ 1 (size!32079 (t!332653 lt!1418268))))))

(assert (= (and d!1186102 c!693080) b!4008566))

(assert (= (and d!1186102 (not c!693080)) b!4008567))

(declare-fun m!4592533 () Bool)

(assert (=> b!4008567 m!4592533))

(assert (=> b!4008516 d!1186102))

(assert (=> b!4008516 d!1186030))

(assert (=> d!1186024 d!1186010))

(assert (=> d!1186024 d!1186008))

(declare-fun d!1186104 () Bool)

(assert (=> d!1186104 (isPrefix!3909 lt!1418251 (++!11224 lt!1418251 (_2!24163 (v!39601 lt!1418269))))))

(assert (=> d!1186104 true))

(declare-fun _$46!1644 () Unit!61905)

(assert (=> d!1186104 (= (choose!24205 lt!1418251 (_2!24163 (v!39601 lt!1418269))) _$46!1644)))

(declare-fun bs!589181 () Bool)

(assert (= bs!589181 d!1186104))

(assert (=> bs!589181 m!4591513))

(assert (=> bs!589181 m!4591513))

(assert (=> bs!589181 m!4591515))

(assert (=> d!1186024 d!1186104))

(declare-fun d!1186106 () Bool)

(declare-fun lt!1418526 () Int)

(assert (=> d!1186106 (>= lt!1418526 0)))

(declare-fun e!2485911 () Int)

(assert (=> d!1186106 (= lt!1418526 e!2485911)))

(declare-fun c!693081 () Bool)

(assert (=> d!1186106 (= c!693081 ((_ is Nil!42904) lt!1418276))))

(assert (=> d!1186106 (= (size!32079 lt!1418276) lt!1418526)))

(declare-fun b!4008568 () Bool)

(assert (=> b!4008568 (= e!2485911 0)))

(declare-fun b!4008569 () Bool)

(assert (=> b!4008569 (= e!2485911 (+ 1 (size!32079 (t!332653 lt!1418276))))))

(assert (= (and d!1186106 c!693081) b!4008568))

(assert (= (and d!1186106 (not c!693081)) b!4008569))

(declare-fun m!4592535 () Bool)

(assert (=> b!4008569 m!4592535))

(assert (=> b!4008432 d!1186106))

(assert (=> b!4008432 d!1185984))

(declare-fun d!1186108 () Bool)

(assert (=> d!1186108 (= (inv!57300 (tag!7682 (h!48326 (t!332655 rules!2999)))) (= (mod (str.len (value!215060 (tag!7682 (h!48326 (t!332655 rules!2999))))) 2) 0))))

(assert (=> b!4008555 d!1186108))

(declare-fun d!1186110 () Bool)

(declare-fun res!1629236 () Bool)

(declare-fun e!2485912 () Bool)

(assert (=> d!1186110 (=> (not res!1629236) (not e!2485912))))

(assert (=> d!1186110 (= res!1629236 (semiInverseModEq!2920 (toChars!9181 (transformation!6822 (h!48326 (t!332655 rules!2999)))) (toValue!9322 (transformation!6822 (h!48326 (t!332655 rules!2999))))))))

(assert (=> d!1186110 (= (inv!57303 (transformation!6822 (h!48326 (t!332655 rules!2999)))) e!2485912)))

(declare-fun b!4008570 () Bool)

(assert (=> b!4008570 (= e!2485912 (equivClasses!2819 (toChars!9181 (transformation!6822 (h!48326 (t!332655 rules!2999)))) (toValue!9322 (transformation!6822 (h!48326 (t!332655 rules!2999))))))))

(assert (= (and d!1186110 res!1629236) b!4008570))

(declare-fun m!4592537 () Bool)

(assert (=> d!1186110 m!4592537))

(declare-fun m!4592539 () Bool)

(assert (=> b!4008570 m!4592539))

(assert (=> b!4008555 d!1186110))

(assert (=> b!4008378 d!1186030))

(assert (=> b!4008378 d!1186032))

(assert (=> b!4008098 d!1186052))

(declare-fun d!1186112 () Bool)

(declare-fun isBalanced!3660 (Conc!13033) Bool)

(assert (=> d!1186112 (= (inv!57308 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (value!215061 (_1!24163 (v!39601 lt!1418269))))) (isBalanced!3660 (c!692980 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (value!215061 (_1!24163 (v!39601 lt!1418269)))))))))

(declare-fun bs!589182 () Bool)

(assert (= bs!589182 d!1186112))

(declare-fun m!4592541 () Bool)

(assert (=> bs!589182 m!4592541))

(assert (=> tb!240913 d!1186112))

(declare-fun d!1186114 () Bool)

(declare-fun e!2485913 () Bool)

(assert (=> d!1186114 e!2485913))

(declare-fun res!1629237 () Bool)

(assert (=> d!1186114 (=> res!1629237 e!2485913)))

(declare-fun lt!1418527 () Bool)

(assert (=> d!1186114 (= res!1629237 (not lt!1418527))))

(declare-fun e!2485915 () Bool)

(assert (=> d!1186114 (= lt!1418527 e!2485915)))

(declare-fun res!1629239 () Bool)

(assert (=> d!1186114 (=> res!1629239 e!2485915)))

(assert (=> d!1186114 (= res!1629239 ((_ is Nil!42904) lt!1418254))))

(assert (=> d!1186114 (= (isPrefix!3909 lt!1418254 (++!11224 lt!1418254 lt!1418275)) lt!1418527)))

(declare-fun b!4008573 () Bool)

(declare-fun e!2485914 () Bool)

(assert (=> b!4008573 (= e!2485914 (isPrefix!3909 (tail!6247 lt!1418254) (tail!6247 (++!11224 lt!1418254 lt!1418275))))))

(declare-fun b!4008572 () Bool)

(declare-fun res!1629238 () Bool)

(assert (=> b!4008572 (=> (not res!1629238) (not e!2485914))))

(assert (=> b!4008572 (= res!1629238 (= (head!8515 lt!1418254) (head!8515 (++!11224 lt!1418254 lt!1418275))))))

(declare-fun b!4008574 () Bool)

(assert (=> b!4008574 (= e!2485913 (>= (size!32079 (++!11224 lt!1418254 lt!1418275)) (size!32079 lt!1418254)))))

(declare-fun b!4008571 () Bool)

(assert (=> b!4008571 (= e!2485915 e!2485914)))

(declare-fun res!1629240 () Bool)

(assert (=> b!4008571 (=> (not res!1629240) (not e!2485914))))

(assert (=> b!4008571 (= res!1629240 (not ((_ is Nil!42904) (++!11224 lt!1418254 lt!1418275))))))

(assert (= (and d!1186114 (not res!1629239)) b!4008571))

(assert (= (and b!4008571 res!1629240) b!4008572))

(assert (= (and b!4008572 res!1629238) b!4008573))

(assert (= (and d!1186114 (not res!1629237)) b!4008574))

(assert (=> b!4008573 m!4592151))

(assert (=> b!4008573 m!4591405))

(declare-fun m!4592543 () Bool)

(assert (=> b!4008573 m!4592543))

(assert (=> b!4008573 m!4592151))

(assert (=> b!4008573 m!4592543))

(declare-fun m!4592545 () Bool)

(assert (=> b!4008573 m!4592545))

(assert (=> b!4008572 m!4592157))

(assert (=> b!4008572 m!4591405))

(declare-fun m!4592547 () Bool)

(assert (=> b!4008572 m!4592547))

(assert (=> b!4008574 m!4591405))

(declare-fun m!4592549 () Bool)

(assert (=> b!4008574 m!4592549))

(assert (=> b!4008574 m!4591495))

(assert (=> d!1185978 d!1186114))

(assert (=> d!1185978 d!1186058))

(declare-fun d!1186116 () Bool)

(assert (=> d!1186116 (isPrefix!3909 lt!1418254 (++!11224 lt!1418254 lt!1418275))))

(assert (=> d!1186116 true))

(declare-fun _$46!1645 () Unit!61905)

(assert (=> d!1186116 (= (choose!24205 lt!1418254 lt!1418275) _$46!1645)))

(declare-fun bs!589183 () Bool)

(assert (= bs!589183 d!1186116))

(assert (=> bs!589183 m!4591405))

(assert (=> bs!589183 m!4591405))

(assert (=> bs!589183 m!4592243))

(assert (=> d!1185978 d!1186116))

(declare-fun d!1186118 () Bool)

(declare-fun e!2485917 () Bool)

(assert (=> d!1186118 e!2485917))

(declare-fun res!1629242 () Bool)

(assert (=> d!1186118 (=> (not res!1629242) (not e!2485917))))

(declare-fun lt!1418528 () List!43028)

(assert (=> d!1186118 (= res!1629242 (= (content!6506 lt!1418528) ((_ map or) (content!6506 (t!332653 lt!1418281)) (content!6506 suffix!1299))))))

(declare-fun e!2485916 () List!43028)

(assert (=> d!1186118 (= lt!1418528 e!2485916)))

(declare-fun c!693082 () Bool)

(assert (=> d!1186118 (= c!693082 ((_ is Nil!42904) (t!332653 lt!1418281)))))

(assert (=> d!1186118 (= (++!11224 (t!332653 lt!1418281) suffix!1299) lt!1418528)))

(declare-fun b!4008575 () Bool)

(assert (=> b!4008575 (= e!2485916 suffix!1299)))

(declare-fun b!4008578 () Bool)

(assert (=> b!4008578 (= e!2485917 (or (not (= suffix!1299 Nil!42904)) (= lt!1418528 (t!332653 lt!1418281))))))

(declare-fun b!4008576 () Bool)

(assert (=> b!4008576 (= e!2485916 (Cons!42904 (h!48324 (t!332653 lt!1418281)) (++!11224 (t!332653 (t!332653 lt!1418281)) suffix!1299)))))

(declare-fun b!4008577 () Bool)

(declare-fun res!1629241 () Bool)

(assert (=> b!4008577 (=> (not res!1629241) (not e!2485917))))

(assert (=> b!4008577 (= res!1629241 (= (size!32079 lt!1418528) (+ (size!32079 (t!332653 lt!1418281)) (size!32079 suffix!1299))))))

(assert (= (and d!1186118 c!693082) b!4008575))

(assert (= (and d!1186118 (not c!693082)) b!4008576))

(assert (= (and d!1186118 res!1629242) b!4008577))

(assert (= (and b!4008577 res!1629241) b!4008578))

(declare-fun m!4592551 () Bool)

(assert (=> d!1186118 m!4592551))

(declare-fun m!4592553 () Bool)

(assert (=> d!1186118 m!4592553))

(assert (=> d!1186118 m!4591689))

(declare-fun m!4592555 () Bool)

(assert (=> b!4008576 m!4592555))

(declare-fun m!4592557 () Bool)

(assert (=> b!4008577 m!4592557))

(declare-fun m!4592559 () Bool)

(assert (=> b!4008577 m!4592559))

(assert (=> b!4008577 m!4591549))

(assert (=> b!4008519 d!1186118))

(declare-fun d!1186120 () Bool)

(declare-fun e!2485919 () Bool)

(assert (=> d!1186120 e!2485919))

(declare-fun res!1629244 () Bool)

(assert (=> d!1186120 (=> (not res!1629244) (not e!2485919))))

(declare-fun lt!1418529 () List!43028)

(assert (=> d!1186120 (= res!1629244 (= (content!6506 lt!1418529) ((_ map or) (content!6506 lt!1418254) (content!6506 lt!1418503))))))

(declare-fun e!2485918 () List!43028)

(assert (=> d!1186120 (= lt!1418529 e!2485918)))

(declare-fun c!693083 () Bool)

(assert (=> d!1186120 (= c!693083 ((_ is Nil!42904) lt!1418254))))

(assert (=> d!1186120 (= (++!11224 lt!1418254 lt!1418503) lt!1418529)))

(declare-fun b!4008579 () Bool)

(assert (=> b!4008579 (= e!2485918 lt!1418503)))

(declare-fun b!4008582 () Bool)

(assert (=> b!4008582 (= e!2485919 (or (not (= lt!1418503 Nil!42904)) (= lt!1418529 lt!1418254)))))

(declare-fun b!4008580 () Bool)

(assert (=> b!4008580 (= e!2485918 (Cons!42904 (h!48324 lt!1418254) (++!11224 (t!332653 lt!1418254) lt!1418503)))))

(declare-fun b!4008581 () Bool)

(declare-fun res!1629243 () Bool)

(assert (=> b!4008581 (=> (not res!1629243) (not e!2485919))))

(assert (=> b!4008581 (= res!1629243 (= (size!32079 lt!1418529) (+ (size!32079 lt!1418254) (size!32079 lt!1418503))))))

(assert (= (and d!1186120 c!693083) b!4008579))

(assert (= (and d!1186120 (not c!693083)) b!4008580))

(assert (= (and d!1186120 res!1629244) b!4008581))

(assert (= (and b!4008581 res!1629243) b!4008582))

(declare-fun m!4592561 () Bool)

(assert (=> d!1186120 m!4592561))

(assert (=> d!1186120 m!4591697))

(declare-fun m!4592563 () Bool)

(assert (=> d!1186120 m!4592563))

(declare-fun m!4592565 () Bool)

(assert (=> b!4008580 m!4592565))

(declare-fun m!4592567 () Bool)

(assert (=> b!4008581 m!4592567))

(assert (=> b!4008581 m!4591495))

(declare-fun m!4592569 () Bool)

(assert (=> b!4008581 m!4592569))

(assert (=> d!1186060 d!1186120))

(assert (=> d!1186060 d!1186106))

(assert (=> d!1186060 d!1185984))

(declare-fun d!1186122 () Bool)

(assert (=> d!1186122 (= (head!8515 lt!1418276) (h!48324 lt!1418276))))

(assert (=> b!4008461 d!1186122))

(declare-fun d!1186124 () Bool)

(declare-fun lt!1418530 () Int)

(assert (=> d!1186124 (>= lt!1418530 0)))

(declare-fun e!2485920 () Int)

(assert (=> d!1186124 (= lt!1418530 e!2485920)))

(declare-fun c!693084 () Bool)

(assert (=> d!1186124 (= c!693084 ((_ is Nil!42904) lt!1418473))))

(assert (=> d!1186124 (= (size!32079 lt!1418473) lt!1418530)))

(declare-fun b!4008583 () Bool)

(assert (=> b!4008583 (= e!2485920 0)))

(declare-fun b!4008584 () Bool)

(assert (=> b!4008584 (= e!2485920 (+ 1 (size!32079 (t!332653 lt!1418473))))))

(assert (= (and d!1186124 c!693084) b!4008583))

(assert (= (and d!1186124 (not c!693084)) b!4008584))

(declare-fun m!4592571 () Bool)

(assert (=> b!4008584 m!4592571))

(assert (=> b!4008395 d!1186124))

(assert (=> b!4008395 d!1186018))

(declare-fun d!1186126 () Bool)

(declare-fun lt!1418531 () Int)

(assert (=> d!1186126 (>= lt!1418531 0)))

(declare-fun e!2485921 () Int)

(assert (=> d!1186126 (= lt!1418531 e!2485921)))

(declare-fun c!693085 () Bool)

(assert (=> d!1186126 (= c!693085 ((_ is Nil!42904) (_2!24163 (v!39601 lt!1418269))))))

(assert (=> d!1186126 (= (size!32079 (_2!24163 (v!39601 lt!1418269))) lt!1418531)))

(declare-fun b!4008585 () Bool)

(assert (=> b!4008585 (= e!2485921 0)))

(declare-fun b!4008586 () Bool)

(assert (=> b!4008586 (= e!2485921 (+ 1 (size!32079 (t!332653 (_2!24163 (v!39601 lt!1418269))))))))

(assert (= (and d!1186126 c!693085) b!4008585))

(assert (= (and d!1186126 (not c!693085)) b!4008586))

(declare-fun m!4592573 () Bool)

(assert (=> b!4008586 m!4592573))

(assert (=> b!4008395 d!1186126))

(declare-fun b!4008587 () Bool)

(declare-fun e!2485927 () Bool)

(assert (=> b!4008587 (= e!2485927 (not (= (head!8515 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418426))))) (c!692981 (regex!6822 (rule!9862 token!484))))))))

(declare-fun bm!286234 () Bool)

(declare-fun call!286239 () Bool)

(assert (=> bm!286234 (= call!286239 (isEmpty!25634 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418426))))))))

(declare-fun b!4008588 () Bool)

(declare-fun e!2485922 () Bool)

(assert (=> b!4008588 (= e!2485922 (nullable!4114 (regex!6822 (rule!9862 token!484))))))

(declare-fun b!4008589 () Bool)

(declare-fun res!1629249 () Bool)

(declare-fun e!2485923 () Bool)

(assert (=> b!4008589 (=> (not res!1629249) (not e!2485923))))

(assert (=> b!4008589 (= res!1629249 (not call!286239))))

(declare-fun d!1186128 () Bool)

(declare-fun e!2485925 () Bool)

(assert (=> d!1186128 e!2485925))

(declare-fun c!693086 () Bool)

(assert (=> d!1186128 (= c!693086 ((_ is EmptyExpr!11727) (regex!6822 (rule!9862 token!484))))))

(declare-fun lt!1418532 () Bool)

(assert (=> d!1186128 (= lt!1418532 e!2485922)))

(declare-fun c!693088 () Bool)

(assert (=> d!1186128 (= c!693088 (isEmpty!25634 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418426))))))))

(assert (=> d!1186128 (validRegex!5314 (regex!6822 (rule!9862 token!484)))))

(assert (=> d!1186128 (= (matchR!5688 (regex!6822 (rule!9862 token!484)) (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418426))))) lt!1418532)))

(declare-fun b!4008590 () Bool)

(assert (=> b!4008590 (= e!2485922 (matchR!5688 (derivativeStep!3523 (regex!6822 (rule!9862 token!484)) (head!8515 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418426)))))) (tail!6247 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418426)))))))))

(declare-fun b!4008591 () Bool)

(declare-fun res!1629252 () Bool)

(assert (=> b!4008591 (=> (not res!1629252) (not e!2485923))))

(assert (=> b!4008591 (= res!1629252 (isEmpty!25634 (tail!6247 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418426)))))))))

(declare-fun b!4008592 () Bool)

(declare-fun res!1629251 () Bool)

(assert (=> b!4008592 (=> res!1629251 e!2485927)))

(assert (=> b!4008592 (= res!1629251 (not (isEmpty!25634 (tail!6247 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418426))))))))))

(declare-fun b!4008593 () Bool)

(declare-fun e!2485926 () Bool)

(assert (=> b!4008593 (= e!2485926 e!2485927)))

(declare-fun res!1629247 () Bool)

(assert (=> b!4008593 (=> res!1629247 e!2485927)))

(assert (=> b!4008593 (= res!1629247 call!286239)))

(declare-fun b!4008594 () Bool)

(assert (=> b!4008594 (= e!2485923 (= (head!8515 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418426))))) (c!692981 (regex!6822 (rule!9862 token!484)))))))

(declare-fun b!4008595 () Bool)

(declare-fun e!2485928 () Bool)

(assert (=> b!4008595 (= e!2485928 e!2485926)))

(declare-fun res!1629246 () Bool)

(assert (=> b!4008595 (=> (not res!1629246) (not e!2485926))))

(assert (=> b!4008595 (= res!1629246 (not lt!1418532))))

(declare-fun b!4008596 () Bool)

(declare-fun e!2485924 () Bool)

(assert (=> b!4008596 (= e!2485924 (not lt!1418532))))

(declare-fun b!4008597 () Bool)

(assert (=> b!4008597 (= e!2485925 (= lt!1418532 call!286239))))

(declare-fun b!4008598 () Bool)

(declare-fun res!1629250 () Bool)

(assert (=> b!4008598 (=> res!1629250 e!2485928)))

(assert (=> b!4008598 (= res!1629250 e!2485923)))

(declare-fun res!1629245 () Bool)

(assert (=> b!4008598 (=> (not res!1629245) (not e!2485923))))

(assert (=> b!4008598 (= res!1629245 lt!1418532)))

(declare-fun b!4008599 () Bool)

(assert (=> b!4008599 (= e!2485925 e!2485924)))

(declare-fun c!693087 () Bool)

(assert (=> b!4008599 (= c!693087 ((_ is EmptyLang!11727) (regex!6822 (rule!9862 token!484))))))

(declare-fun b!4008600 () Bool)

(declare-fun res!1629248 () Bool)

(assert (=> b!4008600 (=> res!1629248 e!2485928)))

(assert (=> b!4008600 (= res!1629248 (not ((_ is ElementMatch!11727) (regex!6822 (rule!9862 token!484)))))))

(assert (=> b!4008600 (= e!2485924 e!2485928)))

(assert (= (and d!1186128 c!693088) b!4008588))

(assert (= (and d!1186128 (not c!693088)) b!4008590))

(assert (= (and d!1186128 c!693086) b!4008597))

(assert (= (and d!1186128 (not c!693086)) b!4008599))

(assert (= (and b!4008599 c!693087) b!4008596))

(assert (= (and b!4008599 (not c!693087)) b!4008600))

(assert (= (and b!4008600 (not res!1629248)) b!4008598))

(assert (= (and b!4008598 res!1629245) b!4008589))

(assert (= (and b!4008589 res!1629249) b!4008591))

(assert (= (and b!4008591 res!1629252) b!4008594))

(assert (= (and b!4008598 (not res!1629250)) b!4008595))

(assert (= (and b!4008595 res!1629246) b!4008593))

(assert (= (and b!4008593 (not res!1629247)) b!4008592))

(assert (= (and b!4008592 (not res!1629251)) b!4008587))

(assert (= (or b!4008597 b!4008589 b!4008593) bm!286234))

(assert (=> d!1186128 m!4592061))

(declare-fun m!4592575 () Bool)

(assert (=> d!1186128 m!4592575))

(assert (=> d!1186128 m!4591763))

(assert (=> b!4008594 m!4592061))

(declare-fun m!4592577 () Bool)

(assert (=> b!4008594 m!4592577))

(assert (=> b!4008592 m!4592061))

(declare-fun m!4592579 () Bool)

(assert (=> b!4008592 m!4592579))

(assert (=> b!4008592 m!4592579))

(declare-fun m!4592581 () Bool)

(assert (=> b!4008592 m!4592581))

(assert (=> b!4008591 m!4592061))

(assert (=> b!4008591 m!4592579))

(assert (=> b!4008591 m!4592579))

(assert (=> b!4008591 m!4592581))

(assert (=> b!4008588 m!4591765))

(assert (=> b!4008587 m!4592061))

(assert (=> b!4008587 m!4592577))

(assert (=> bm!286234 m!4592061))

(assert (=> bm!286234 m!4592575))

(assert (=> b!4008590 m!4592061))

(assert (=> b!4008590 m!4592577))

(assert (=> b!4008590 m!4592577))

(declare-fun m!4592583 () Bool)

(assert (=> b!4008590 m!4592583))

(assert (=> b!4008590 m!4592061))

(assert (=> b!4008590 m!4592579))

(assert (=> b!4008590 m!4592583))

(assert (=> b!4008590 m!4592579))

(declare-fun m!4592585 () Bool)

(assert (=> b!4008590 m!4592585))

(assert (=> b!4008248 d!1186128))

(declare-fun d!1186130 () Bool)

(assert (=> d!1186130 (= (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418426)))) (list!15944 (c!692980 (charsOf!4638 (_1!24163 (get!14100 lt!1418426))))))))

(declare-fun bs!589184 () Bool)

(assert (= bs!589184 d!1186130))

(declare-fun m!4592587 () Bool)

(assert (=> bs!589184 m!4592587))

(assert (=> b!4008248 d!1186130))

(declare-fun d!1186132 () Bool)

(declare-fun lt!1418533 () BalanceConc!25660)

(assert (=> d!1186132 (= (list!15942 lt!1418533) (originalCharacters!7422 (_1!24163 (get!14100 lt!1418426))))))

(assert (=> d!1186132 (= lt!1418533 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418426))))) (value!215061 (_1!24163 (get!14100 lt!1418426)))))))

(assert (=> d!1186132 (= (charsOf!4638 (_1!24163 (get!14100 lt!1418426))) lt!1418533)))

(declare-fun b_lambda!116945 () Bool)

(assert (=> (not b_lambda!116945) (not d!1186132)))

(declare-fun t!332713 () Bool)

(declare-fun tb!240935 () Bool)

(assert (=> (and b!4007875 (= (toChars!9181 (transformation!6822 (h!48326 rules!2999))) (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418426)))))) t!332713) tb!240935))

(declare-fun b!4008601 () Bool)

(declare-fun e!2485929 () Bool)

(declare-fun tp!1219724 () Bool)

(assert (=> b!4008601 (= e!2485929 (and (inv!57307 (c!692980 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418426))))) (value!215061 (_1!24163 (get!14100 lt!1418426)))))) tp!1219724))))

(declare-fun result!292044 () Bool)

(assert (=> tb!240935 (= result!292044 (and (inv!57308 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418426))))) (value!215061 (_1!24163 (get!14100 lt!1418426))))) e!2485929))))

(assert (= tb!240935 b!4008601))

(declare-fun m!4592589 () Bool)

(assert (=> b!4008601 m!4592589))

(declare-fun m!4592591 () Bool)

(assert (=> tb!240935 m!4592591))

(assert (=> d!1186132 t!332713))

(declare-fun b_and!307877 () Bool)

(assert (= b_and!307871 (and (=> t!332713 result!292044) b_and!307877)))

(declare-fun t!332715 () Bool)

(declare-fun tb!240937 () Bool)

(assert (=> (and b!4007900 (= (toChars!9181 (transformation!6822 (rule!9862 token!484))) (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418426)))))) t!332715) tb!240937))

(declare-fun result!292046 () Bool)

(assert (= result!292046 result!292044))

(assert (=> d!1186132 t!332715))

(declare-fun b_and!307879 () Bool)

(assert (= b_and!307873 (and (=> t!332715 result!292046) b_and!307879)))

(declare-fun t!332717 () Bool)

(declare-fun tb!240939 () Bool)

(assert (=> (and b!4008556 (= (toChars!9181 (transformation!6822 (h!48326 (t!332655 rules!2999)))) (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418426)))))) t!332717) tb!240939))

(declare-fun result!292048 () Bool)

(assert (= result!292048 result!292044))

(assert (=> d!1186132 t!332717))

(declare-fun b_and!307881 () Bool)

(assert (= b_and!307875 (and (=> t!332717 result!292048) b_and!307881)))

(declare-fun m!4592593 () Bool)

(assert (=> d!1186132 m!4592593))

(declare-fun m!4592595 () Bool)

(assert (=> d!1186132 m!4592595))

(assert (=> b!4008248 d!1186132))

(declare-fun d!1186134 () Bool)

(assert (=> d!1186134 (= (get!14100 lt!1418426) (v!39601 lt!1418426))))

(assert (=> b!4008248 d!1186134))

(declare-fun d!1186136 () Bool)

(declare-fun c!693091 () Bool)

(assert (=> d!1186136 (= c!693091 ((_ is Nil!42904) lt!1418346))))

(declare-fun e!2485932 () (InoxSet C!23640))

(assert (=> d!1186136 (= (content!6506 lt!1418346) e!2485932)))

(declare-fun b!4008606 () Bool)

(assert (=> b!4008606 (= e!2485932 ((as const (Array C!23640 Bool)) false))))

(declare-fun b!4008607 () Bool)

(assert (=> b!4008607 (= e!2485932 ((_ map or) (store ((as const (Array C!23640 Bool)) false) (h!48324 lt!1418346) true) (content!6506 (t!332653 lt!1418346))))))

(assert (= (and d!1186136 c!693091) b!4008606))

(assert (= (and d!1186136 (not c!693091)) b!4008607))

(declare-fun m!4592597 () Bool)

(assert (=> b!4008607 m!4592597))

(declare-fun m!4592599 () Bool)

(assert (=> b!4008607 m!4592599))

(assert (=> d!1185830 d!1186136))

(declare-fun d!1186138 () Bool)

(declare-fun c!693092 () Bool)

(assert (=> d!1186138 (= c!693092 ((_ is Nil!42904) lt!1418254))))

(declare-fun e!2485933 () (InoxSet C!23640))

(assert (=> d!1186138 (= (content!6506 lt!1418254) e!2485933)))

(declare-fun b!4008608 () Bool)

(assert (=> b!4008608 (= e!2485933 ((as const (Array C!23640 Bool)) false))))

(declare-fun b!4008609 () Bool)

(assert (=> b!4008609 (= e!2485933 ((_ map or) (store ((as const (Array C!23640 Bool)) false) (h!48324 lt!1418254) true) (content!6506 (t!332653 lt!1418254))))))

(assert (= (and d!1186138 c!693092) b!4008608))

(assert (= (and d!1186138 (not c!693092)) b!4008609))

(declare-fun m!4592601 () Bool)

(assert (=> b!4008609 m!4592601))

(declare-fun m!4592603 () Bool)

(assert (=> b!4008609 m!4592603))

(assert (=> d!1185830 d!1186138))

(declare-fun d!1186140 () Bool)

(declare-fun c!693093 () Bool)

(assert (=> d!1186140 (= c!693093 ((_ is Nil!42904) suffixResult!105))))

(declare-fun e!2485934 () (InoxSet C!23640))

(assert (=> d!1186140 (= (content!6506 suffixResult!105) e!2485934)))

(declare-fun b!4008610 () Bool)

(assert (=> b!4008610 (= e!2485934 ((as const (Array C!23640 Bool)) false))))

(declare-fun b!4008611 () Bool)

(assert (=> b!4008611 (= e!2485934 ((_ map or) (store ((as const (Array C!23640 Bool)) false) (h!48324 suffixResult!105) true) (content!6506 (t!332653 suffixResult!105))))))

(assert (= (and d!1186140 c!693093) b!4008610))

(assert (= (and d!1186140 (not c!693093)) b!4008611))

(declare-fun m!4592605 () Bool)

(assert (=> b!4008611 m!4592605))

(declare-fun m!4592607 () Bool)

(assert (=> b!4008611 m!4592607))

(assert (=> d!1185830 d!1186140))

(declare-fun d!1186142 () Bool)

(assert (=> d!1186142 (= (get!14100 lt!1418483) (v!39601 lt!1418483))))

(assert (=> b!4008420 d!1186142))

(declare-fun d!1186144 () Bool)

(assert (=> d!1186144 (= (isEmpty!25632 lt!1418426) (not ((_ is Some!9235) lt!1418426)))))

(assert (=> d!1185858 d!1186144))

(declare-fun d!1186146 () Bool)

(assert (=> d!1186146 (= (isEmpty!25634 (_1!24165 lt!1418425)) ((_ is Nil!42904) (_1!24165 lt!1418425)))))

(assert (=> d!1185858 d!1186146))

(declare-fun d!1186148 () Bool)

(declare-fun lt!1418555 () tuple2!42062)

(assert (=> d!1186148 (= (++!11224 (_1!24165 lt!1418555) (_2!24165 lt!1418555)) lt!1418276)))

(declare-fun sizeTr!259 (List!43028 Int) Int)

(assert (=> d!1186148 (= lt!1418555 (findLongestMatchInner!1355 (regex!6822 (rule!9862 token!484)) Nil!42904 0 lt!1418276 lt!1418276 (sizeTr!259 lt!1418276 0)))))

(declare-fun lt!1418550 () Unit!61905)

(declare-fun lt!1418551 () Unit!61905)

(assert (=> d!1186148 (= lt!1418550 lt!1418551)))

(declare-fun lt!1418557 () List!43028)

(declare-fun lt!1418556 () Int)

(assert (=> d!1186148 (= (sizeTr!259 lt!1418557 lt!1418556) (+ (size!32079 lt!1418557) lt!1418556))))

(declare-fun lemmaSizeTrEqualsSize!258 (List!43028 Int) Unit!61905)

(assert (=> d!1186148 (= lt!1418551 (lemmaSizeTrEqualsSize!258 lt!1418557 lt!1418556))))

(assert (=> d!1186148 (= lt!1418556 0)))

(assert (=> d!1186148 (= lt!1418557 Nil!42904)))

(declare-fun lt!1418552 () Unit!61905)

(declare-fun lt!1418553 () Unit!61905)

(assert (=> d!1186148 (= lt!1418552 lt!1418553)))

(declare-fun lt!1418554 () Int)

(assert (=> d!1186148 (= (sizeTr!259 lt!1418276 lt!1418554) (+ (size!32079 lt!1418276) lt!1418554))))

(assert (=> d!1186148 (= lt!1418553 (lemmaSizeTrEqualsSize!258 lt!1418276 lt!1418554))))

(assert (=> d!1186148 (= lt!1418554 0)))

(assert (=> d!1186148 (validRegex!5314 (regex!6822 (rule!9862 token!484)))))

(assert (=> d!1186148 (= (findLongestMatch!1268 (regex!6822 (rule!9862 token!484)) lt!1418276) lt!1418555)))

(declare-fun bs!589185 () Bool)

(assert (= bs!589185 d!1186148))

(declare-fun m!4592609 () Bool)

(assert (=> bs!589185 m!4592609))

(declare-fun m!4592611 () Bool)

(assert (=> bs!589185 m!4592611))

(declare-fun m!4592613 () Bool)

(assert (=> bs!589185 m!4592613))

(declare-fun m!4592615 () Bool)

(assert (=> bs!589185 m!4592615))

(declare-fun m!4592617 () Bool)

(assert (=> bs!589185 m!4592617))

(declare-fun m!4592619 () Bool)

(assert (=> bs!589185 m!4592619))

(assert (=> bs!589185 m!4592611))

(declare-fun m!4592621 () Bool)

(assert (=> bs!589185 m!4592621))

(assert (=> bs!589185 m!4591763))

(assert (=> bs!589185 m!4591663))

(declare-fun m!4592623 () Bool)

(assert (=> bs!589185 m!4592623))

(assert (=> d!1185858 d!1186148))

(assert (=> d!1185858 d!1185836))

(declare-fun d!1186150 () Bool)

(declare-fun e!2485936 () Bool)

(assert (=> d!1186150 e!2485936))

(declare-fun res!1629254 () Bool)

(assert (=> d!1186150 (=> (not res!1629254) (not e!2485936))))

(declare-fun lt!1418558 () List!43028)

(assert (=> d!1186150 (= res!1629254 (= (content!6506 lt!1418558) ((_ map or) (content!6506 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418457))))) (content!6506 (_2!24163 (get!14100 lt!1418457))))))))

(declare-fun e!2485935 () List!43028)

(assert (=> d!1186150 (= lt!1418558 e!2485935)))

(declare-fun c!693094 () Bool)

(assert (=> d!1186150 (= c!693094 ((_ is Nil!42904) (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418457))))))))

(assert (=> d!1186150 (= (++!11224 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418457)))) (_2!24163 (get!14100 lt!1418457))) lt!1418558)))

(declare-fun b!4008612 () Bool)

(assert (=> b!4008612 (= e!2485935 (_2!24163 (get!14100 lt!1418457)))))

(declare-fun b!4008615 () Bool)

(assert (=> b!4008615 (= e!2485936 (or (not (= (_2!24163 (get!14100 lt!1418457)) Nil!42904)) (= lt!1418558 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418457)))))))))

(declare-fun b!4008613 () Bool)

(assert (=> b!4008613 (= e!2485935 (Cons!42904 (h!48324 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418457))))) (++!11224 (t!332653 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418457))))) (_2!24163 (get!14100 lt!1418457)))))))

(declare-fun b!4008614 () Bool)

(declare-fun res!1629253 () Bool)

(assert (=> b!4008614 (=> (not res!1629253) (not e!2485936))))

(assert (=> b!4008614 (= res!1629253 (= (size!32079 lt!1418558) (+ (size!32079 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418457))))) (size!32079 (_2!24163 (get!14100 lt!1418457))))))))

(assert (= (and d!1186150 c!693094) b!4008612))

(assert (= (and d!1186150 (not c!693094)) b!4008613))

(assert (= (and d!1186150 res!1629254) b!4008614))

(assert (= (and b!4008614 res!1629253) b!4008615))

(declare-fun m!4592625 () Bool)

(assert (=> d!1186150 m!4592625))

(assert (=> d!1186150 m!4592217))

(declare-fun m!4592627 () Bool)

(assert (=> d!1186150 m!4592627))

(declare-fun m!4592629 () Bool)

(assert (=> d!1186150 m!4592629))

(declare-fun m!4592631 () Bool)

(assert (=> b!4008613 m!4592631))

(declare-fun m!4592633 () Bool)

(assert (=> b!4008614 m!4592633))

(assert (=> b!4008614 m!4592217))

(declare-fun m!4592635 () Bool)

(assert (=> b!4008614 m!4592635))

(assert (=> b!4008614 m!4592209))

(assert (=> b!4008366 d!1186150))

(declare-fun d!1186152 () Bool)

(assert (=> d!1186152 (= (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418457)))) (list!15944 (c!692980 (charsOf!4638 (_1!24163 (get!14100 lt!1418457))))))))

(declare-fun bs!589186 () Bool)

(assert (= bs!589186 d!1186152))

(declare-fun m!4592637 () Bool)

(assert (=> bs!589186 m!4592637))

(assert (=> b!4008366 d!1186152))

(declare-fun d!1186154 () Bool)

(declare-fun lt!1418559 () BalanceConc!25660)

(assert (=> d!1186154 (= (list!15942 lt!1418559) (originalCharacters!7422 (_1!24163 (get!14100 lt!1418457))))))

(assert (=> d!1186154 (= lt!1418559 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418457))))) (value!215061 (_1!24163 (get!14100 lt!1418457)))))))

(assert (=> d!1186154 (= (charsOf!4638 (_1!24163 (get!14100 lt!1418457))) lt!1418559)))

(declare-fun b_lambda!116947 () Bool)

(assert (=> (not b_lambda!116947) (not d!1186154)))

(declare-fun t!332719 () Bool)

(declare-fun tb!240941 () Bool)

(assert (=> (and b!4007875 (= (toChars!9181 (transformation!6822 (h!48326 rules!2999))) (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418457)))))) t!332719) tb!240941))

(declare-fun b!4008616 () Bool)

(declare-fun e!2485937 () Bool)

(declare-fun tp!1219725 () Bool)

(assert (=> b!4008616 (= e!2485937 (and (inv!57307 (c!692980 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418457))))) (value!215061 (_1!24163 (get!14100 lt!1418457)))))) tp!1219725))))

(declare-fun result!292050 () Bool)

(assert (=> tb!240941 (= result!292050 (and (inv!57308 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418457))))) (value!215061 (_1!24163 (get!14100 lt!1418457))))) e!2485937))))

(assert (= tb!240941 b!4008616))

(declare-fun m!4592639 () Bool)

(assert (=> b!4008616 m!4592639))

(declare-fun m!4592641 () Bool)

(assert (=> tb!240941 m!4592641))

(assert (=> d!1186154 t!332719))

(declare-fun b_and!307883 () Bool)

(assert (= b_and!307877 (and (=> t!332719 result!292050) b_and!307883)))

(declare-fun tb!240943 () Bool)

(declare-fun t!332721 () Bool)

(assert (=> (and b!4007900 (= (toChars!9181 (transformation!6822 (rule!9862 token!484))) (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418457)))))) t!332721) tb!240943))

(declare-fun result!292052 () Bool)

(assert (= result!292052 result!292050))

(assert (=> d!1186154 t!332721))

(declare-fun b_and!307885 () Bool)

(assert (= b_and!307879 (and (=> t!332721 result!292052) b_and!307885)))

(declare-fun tb!240945 () Bool)

(declare-fun t!332723 () Bool)

(assert (=> (and b!4008556 (= (toChars!9181 (transformation!6822 (h!48326 (t!332655 rules!2999)))) (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418457)))))) t!332723) tb!240945))

(declare-fun result!292054 () Bool)

(assert (= result!292054 result!292050))

(assert (=> d!1186154 t!332723))

(declare-fun b_and!307887 () Bool)

(assert (= b_and!307881 (and (=> t!332723 result!292054) b_and!307887)))

(declare-fun m!4592643 () Bool)

(assert (=> d!1186154 m!4592643))

(declare-fun m!4592645 () Bool)

(assert (=> d!1186154 m!4592645))

(assert (=> b!4008366 d!1186154))

(declare-fun d!1186156 () Bool)

(assert (=> d!1186156 (= (get!14100 lt!1418457) (v!39601 lt!1418457))))

(assert (=> b!4008366 d!1186156))

(declare-fun d!1186158 () Bool)

(declare-fun lt!1418560 () Int)

(assert (=> d!1186158 (>= lt!1418560 0)))

(declare-fun e!2485938 () Int)

(assert (=> d!1186158 (= lt!1418560 e!2485938)))

(declare-fun c!693095 () Bool)

(assert (=> d!1186158 (= c!693095 ((_ is Nil!42904) (_2!24163 (get!14100 lt!1418426))))))

(assert (=> d!1186158 (= (size!32079 (_2!24163 (get!14100 lt!1418426))) lt!1418560)))

(declare-fun b!4008617 () Bool)

(assert (=> b!4008617 (= e!2485938 0)))

(declare-fun b!4008618 () Bool)

(assert (=> b!4008618 (= e!2485938 (+ 1 (size!32079 (t!332653 (_2!24163 (get!14100 lt!1418426))))))))

(assert (= (and d!1186158 c!693095) b!4008617))

(assert (= (and d!1186158 (not c!693095)) b!4008618))

(declare-fun m!4592647 () Bool)

(assert (=> b!4008618 m!4592647))

(assert (=> b!4008244 d!1186158))

(assert (=> b!4008244 d!1186134))

(assert (=> b!4008244 d!1186106))

(declare-fun d!1186160 () Bool)

(declare-fun e!2485940 () Bool)

(assert (=> d!1186160 e!2485940))

(declare-fun res!1629256 () Bool)

(assert (=> d!1186160 (=> (not res!1629256) (not e!2485940))))

(declare-fun lt!1418561 () List!43028)

(assert (=> d!1186160 (= res!1629256 (= (content!6506 lt!1418561) ((_ map or) (content!6506 (t!332653 lt!1418251)) (content!6506 newSuffixResult!27))))))

(declare-fun e!2485939 () List!43028)

(assert (=> d!1186160 (= lt!1418561 e!2485939)))

(declare-fun c!693096 () Bool)

(assert (=> d!1186160 (= c!693096 ((_ is Nil!42904) (t!332653 lt!1418251)))))

(assert (=> d!1186160 (= (++!11224 (t!332653 lt!1418251) newSuffixResult!27) lt!1418561)))

(declare-fun b!4008619 () Bool)

(assert (=> b!4008619 (= e!2485939 newSuffixResult!27)))

(declare-fun b!4008622 () Bool)

(assert (=> b!4008622 (= e!2485940 (or (not (= newSuffixResult!27 Nil!42904)) (= lt!1418561 (t!332653 lt!1418251))))))

(declare-fun b!4008620 () Bool)

(assert (=> b!4008620 (= e!2485939 (Cons!42904 (h!48324 (t!332653 lt!1418251)) (++!11224 (t!332653 (t!332653 lt!1418251)) newSuffixResult!27)))))

(declare-fun b!4008621 () Bool)

(declare-fun res!1629255 () Bool)

(assert (=> b!4008621 (=> (not res!1629255) (not e!2485940))))

(assert (=> b!4008621 (= res!1629255 (= (size!32079 lt!1418561) (+ (size!32079 (t!332653 lt!1418251)) (size!32079 newSuffixResult!27))))))

(assert (= (and d!1186160 c!693096) b!4008619))

(assert (= (and d!1186160 (not c!693096)) b!4008620))

(assert (= (and d!1186160 res!1629256) b!4008621))

(assert (= (and b!4008621 res!1629255) b!4008622))

(declare-fun m!4592649 () Bool)

(assert (=> d!1186160 m!4592649))

(declare-fun m!4592651 () Bool)

(assert (=> d!1186160 m!4592651))

(assert (=> d!1186160 m!4592193))

(declare-fun m!4592653 () Bool)

(assert (=> b!4008620 m!4592653))

(declare-fun m!4592655 () Bool)

(assert (=> b!4008621 m!4592655))

(assert (=> b!4008621 m!4592327))

(assert (=> b!4008621 m!4592199))

(assert (=> b!4008402 d!1186160))

(declare-fun d!1186162 () Bool)

(assert (=> d!1186162 (= (head!8515 lt!1418254) (h!48324 lt!1418254))))

(assert (=> b!4008499 d!1186162))

(declare-fun d!1186164 () Bool)

(declare-fun e!2485942 () Bool)

(assert (=> d!1186164 e!2485942))

(declare-fun res!1629258 () Bool)

(assert (=> d!1186164 (=> (not res!1629258) (not e!2485942))))

(declare-fun lt!1418562 () List!43028)

(assert (=> d!1186164 (= res!1629258 (= (content!6506 lt!1418562) ((_ map or) (content!6506 (t!332653 lt!1418254)) (content!6506 lt!1418281))))))

(declare-fun e!2485941 () List!43028)

(assert (=> d!1186164 (= lt!1418562 e!2485941)))

(declare-fun c!693097 () Bool)

(assert (=> d!1186164 (= c!693097 ((_ is Nil!42904) (t!332653 lt!1418254)))))

(assert (=> d!1186164 (= (++!11224 (t!332653 lt!1418254) lt!1418281) lt!1418562)))

(declare-fun b!4008623 () Bool)

(assert (=> b!4008623 (= e!2485941 lt!1418281)))

(declare-fun b!4008626 () Bool)

(assert (=> b!4008626 (= e!2485942 (or (not (= lt!1418281 Nil!42904)) (= lt!1418562 (t!332653 lt!1418254))))))

(declare-fun b!4008624 () Bool)

(assert (=> b!4008624 (= e!2485941 (Cons!42904 (h!48324 (t!332653 lt!1418254)) (++!11224 (t!332653 (t!332653 lt!1418254)) lt!1418281)))))

(declare-fun b!4008625 () Bool)

(declare-fun res!1629257 () Bool)

(assert (=> b!4008625 (=> (not res!1629257) (not e!2485942))))

(assert (=> b!4008625 (= res!1629257 (= (size!32079 lt!1418562) (+ (size!32079 (t!332653 lt!1418254)) (size!32079 lt!1418281))))))

(assert (= (and d!1186164 c!693097) b!4008623))

(assert (= (and d!1186164 (not c!693097)) b!4008624))

(assert (= (and d!1186164 res!1629258) b!4008625))

(assert (= (and b!4008625 res!1629257) b!4008626))

(declare-fun m!4592657 () Bool)

(assert (=> d!1186164 m!4592657))

(assert (=> d!1186164 m!4592603))

(assert (=> d!1186164 m!4592419))

(declare-fun m!4592659 () Bool)

(assert (=> b!4008624 m!4592659))

(declare-fun m!4592661 () Bool)

(assert (=> b!4008625 m!4592661))

(assert (=> b!4008625 m!4592257))

(assert (=> b!4008625 m!4592425))

(assert (=> b!4008438 d!1186164))

(assert (=> b!4008416 d!1186142))

(declare-fun d!1186166 () Bool)

(declare-fun lt!1418563 () Int)

(assert (=> d!1186166 (>= lt!1418563 0)))

(declare-fun e!2485943 () Int)

(assert (=> d!1186166 (= lt!1418563 e!2485943)))

(declare-fun c!693098 () Bool)

(assert (=> d!1186166 (= c!693098 ((_ is Nil!42904) (originalCharacters!7422 (_1!24163 (get!14100 lt!1418483)))))))

(assert (=> d!1186166 (= (size!32079 (originalCharacters!7422 (_1!24163 (get!14100 lt!1418483)))) lt!1418563)))

(declare-fun b!4008627 () Bool)

(assert (=> b!4008627 (= e!2485943 0)))

(declare-fun b!4008628 () Bool)

(assert (=> b!4008628 (= e!2485943 (+ 1 (size!32079 (t!332653 (originalCharacters!7422 (_1!24163 (get!14100 lt!1418483)))))))))

(assert (= (and d!1186166 c!693098) b!4008627))

(assert (= (and d!1186166 (not c!693098)) b!4008628))

(declare-fun m!4592663 () Bool)

(assert (=> b!4008628 m!4592663))

(assert (=> b!4008416 d!1186166))

(declare-fun b!4008629 () Bool)

(declare-fun e!2485949 () Bool)

(assert (=> b!4008629 (= e!2485949 (not (= (head!8515 (tail!6247 lt!1418254)) (c!692981 (derivativeStep!3523 (regex!6822 (rule!9862 token!484)) (head!8515 lt!1418254))))))))

(declare-fun bm!286235 () Bool)

(declare-fun call!286240 () Bool)

(assert (=> bm!286235 (= call!286240 (isEmpty!25634 (tail!6247 lt!1418254)))))

(declare-fun b!4008630 () Bool)

(declare-fun e!2485944 () Bool)

(assert (=> b!4008630 (= e!2485944 (nullable!4114 (derivativeStep!3523 (regex!6822 (rule!9862 token!484)) (head!8515 lt!1418254))))))

(declare-fun b!4008631 () Bool)

(declare-fun res!1629263 () Bool)

(declare-fun e!2485945 () Bool)

(assert (=> b!4008631 (=> (not res!1629263) (not e!2485945))))

(assert (=> b!4008631 (= res!1629263 (not call!286240))))

(declare-fun d!1186168 () Bool)

(declare-fun e!2485947 () Bool)

(assert (=> d!1186168 e!2485947))

(declare-fun c!693099 () Bool)

(assert (=> d!1186168 (= c!693099 ((_ is EmptyExpr!11727) (derivativeStep!3523 (regex!6822 (rule!9862 token!484)) (head!8515 lt!1418254))))))

(declare-fun lt!1418564 () Bool)

(assert (=> d!1186168 (= lt!1418564 e!2485944)))

(declare-fun c!693101 () Bool)

(assert (=> d!1186168 (= c!693101 (isEmpty!25634 (tail!6247 lt!1418254)))))

(assert (=> d!1186168 (validRegex!5314 (derivativeStep!3523 (regex!6822 (rule!9862 token!484)) (head!8515 lt!1418254)))))

(assert (=> d!1186168 (= (matchR!5688 (derivativeStep!3523 (regex!6822 (rule!9862 token!484)) (head!8515 lt!1418254)) (tail!6247 lt!1418254)) lt!1418564)))

(declare-fun b!4008632 () Bool)

(assert (=> b!4008632 (= e!2485944 (matchR!5688 (derivativeStep!3523 (derivativeStep!3523 (regex!6822 (rule!9862 token!484)) (head!8515 lt!1418254)) (head!8515 (tail!6247 lt!1418254))) (tail!6247 (tail!6247 lt!1418254))))))

(declare-fun b!4008633 () Bool)

(declare-fun res!1629266 () Bool)

(assert (=> b!4008633 (=> (not res!1629266) (not e!2485945))))

(assert (=> b!4008633 (= res!1629266 (isEmpty!25634 (tail!6247 (tail!6247 lt!1418254))))))

(declare-fun b!4008634 () Bool)

(declare-fun res!1629265 () Bool)

(assert (=> b!4008634 (=> res!1629265 e!2485949)))

(assert (=> b!4008634 (= res!1629265 (not (isEmpty!25634 (tail!6247 (tail!6247 lt!1418254)))))))

(declare-fun b!4008635 () Bool)

(declare-fun e!2485948 () Bool)

(assert (=> b!4008635 (= e!2485948 e!2485949)))

(declare-fun res!1629261 () Bool)

(assert (=> b!4008635 (=> res!1629261 e!2485949)))

(assert (=> b!4008635 (= res!1629261 call!286240)))

(declare-fun b!4008636 () Bool)

(assert (=> b!4008636 (= e!2485945 (= (head!8515 (tail!6247 lt!1418254)) (c!692981 (derivativeStep!3523 (regex!6822 (rule!9862 token!484)) (head!8515 lt!1418254)))))))

(declare-fun b!4008637 () Bool)

(declare-fun e!2485950 () Bool)

(assert (=> b!4008637 (= e!2485950 e!2485948)))

(declare-fun res!1629260 () Bool)

(assert (=> b!4008637 (=> (not res!1629260) (not e!2485948))))

(assert (=> b!4008637 (= res!1629260 (not lt!1418564))))

(declare-fun b!4008638 () Bool)

(declare-fun e!2485946 () Bool)

(assert (=> b!4008638 (= e!2485946 (not lt!1418564))))

(declare-fun b!4008639 () Bool)

(assert (=> b!4008639 (= e!2485947 (= lt!1418564 call!286240))))

(declare-fun b!4008640 () Bool)

(declare-fun res!1629264 () Bool)

(assert (=> b!4008640 (=> res!1629264 e!2485950)))

(assert (=> b!4008640 (= res!1629264 e!2485945)))

(declare-fun res!1629259 () Bool)

(assert (=> b!4008640 (=> (not res!1629259) (not e!2485945))))

(assert (=> b!4008640 (= res!1629259 lt!1418564)))

(declare-fun b!4008641 () Bool)

(assert (=> b!4008641 (= e!2485947 e!2485946)))

(declare-fun c!693100 () Bool)

(assert (=> b!4008641 (= c!693100 ((_ is EmptyLang!11727) (derivativeStep!3523 (regex!6822 (rule!9862 token!484)) (head!8515 lt!1418254))))))

(declare-fun b!4008642 () Bool)

(declare-fun res!1629262 () Bool)

(assert (=> b!4008642 (=> res!1629262 e!2485950)))

(assert (=> b!4008642 (= res!1629262 (not ((_ is ElementMatch!11727) (derivativeStep!3523 (regex!6822 (rule!9862 token!484)) (head!8515 lt!1418254)))))))

(assert (=> b!4008642 (= e!2485946 e!2485950)))

(assert (= (and d!1186168 c!693101) b!4008630))

(assert (= (and d!1186168 (not c!693101)) b!4008632))

(assert (= (and d!1186168 c!693099) b!4008639))

(assert (= (and d!1186168 (not c!693099)) b!4008641))

(assert (= (and b!4008641 c!693100) b!4008638))

(assert (= (and b!4008641 (not c!693100)) b!4008642))

(assert (= (and b!4008642 (not res!1629262)) b!4008640))

(assert (= (and b!4008640 res!1629259) b!4008631))

(assert (= (and b!4008631 res!1629263) b!4008633))

(assert (= (and b!4008633 res!1629266) b!4008636))

(assert (= (and b!4008640 (not res!1629264)) b!4008637))

(assert (= (and b!4008637 res!1629260) b!4008635))

(assert (= (and b!4008635 (not res!1629261)) b!4008634))

(assert (= (and b!4008634 (not res!1629265)) b!4008629))

(assert (= (or b!4008639 b!4008631 b!4008635) bm!286235))

(assert (=> d!1186168 m!4592151))

(assert (=> d!1186168 m!4592461))

(assert (=> d!1186168 m!4592463))

(declare-fun m!4592665 () Bool)

(assert (=> d!1186168 m!4592665))

(assert (=> b!4008636 m!4592151))

(declare-fun m!4592667 () Bool)

(assert (=> b!4008636 m!4592667))

(assert (=> b!4008634 m!4592151))

(declare-fun m!4592669 () Bool)

(assert (=> b!4008634 m!4592669))

(assert (=> b!4008634 m!4592669))

(declare-fun m!4592671 () Bool)

(assert (=> b!4008634 m!4592671))

(assert (=> b!4008633 m!4592151))

(assert (=> b!4008633 m!4592669))

(assert (=> b!4008633 m!4592669))

(assert (=> b!4008633 m!4592671))

(assert (=> b!4008630 m!4592463))

(declare-fun m!4592673 () Bool)

(assert (=> b!4008630 m!4592673))

(assert (=> b!4008629 m!4592151))

(assert (=> b!4008629 m!4592667))

(assert (=> bm!286235 m!4592151))

(assert (=> bm!286235 m!4592461))

(assert (=> b!4008632 m!4592151))

(assert (=> b!4008632 m!4592667))

(assert (=> b!4008632 m!4592463))

(assert (=> b!4008632 m!4592667))

(declare-fun m!4592675 () Bool)

(assert (=> b!4008632 m!4592675))

(assert (=> b!4008632 m!4592151))

(assert (=> b!4008632 m!4592669))

(assert (=> b!4008632 m!4592675))

(assert (=> b!4008632 m!4592669))

(declare-fun m!4592677 () Bool)

(assert (=> b!4008632 m!4592677))

(assert (=> b!4008495 d!1186168))

(declare-fun b!4008663 () Bool)

(declare-fun e!2485963 () Regex!11727)

(declare-fun e!2485962 () Regex!11727)

(assert (=> b!4008663 (= e!2485963 e!2485962)))

(declare-fun c!693112 () Bool)

(assert (=> b!4008663 (= c!693112 ((_ is ElementMatch!11727) (regex!6822 (rule!9862 token!484))))))

(declare-fun b!4008664 () Bool)

(declare-fun e!2485964 () Regex!11727)

(declare-fun call!286252 () Regex!11727)

(assert (=> b!4008664 (= e!2485964 (Union!11727 (Concat!18780 call!286252 (regTwo!23966 (regex!6822 (rule!9862 token!484)))) EmptyLang!11727))))

(declare-fun bm!286244 () Bool)

(declare-fun c!693113 () Bool)

(declare-fun call!286251 () Regex!11727)

(assert (=> bm!286244 (= call!286251 (derivativeStep!3523 (ite c!693113 (regTwo!23967 (regex!6822 (rule!9862 token!484))) (regTwo!23966 (regex!6822 (rule!9862 token!484)))) (head!8515 lt!1418254)))))

(declare-fun b!4008665 () Bool)

(declare-fun c!693115 () Bool)

(assert (=> b!4008665 (= c!693115 (nullable!4114 (regOne!23966 (regex!6822 (rule!9862 token!484)))))))

(declare-fun e!2485961 () Regex!11727)

(assert (=> b!4008665 (= e!2485961 e!2485964)))

(declare-fun bm!286245 () Bool)

(declare-fun call!286249 () Regex!11727)

(assert (=> bm!286245 (= call!286252 call!286249)))

(declare-fun bm!286246 () Bool)

(declare-fun call!286250 () Regex!11727)

(assert (=> bm!286246 (= call!286249 call!286250)))

(declare-fun b!4008666 () Bool)

(assert (=> b!4008666 (= e!2485964 (Union!11727 (Concat!18780 call!286252 (regTwo!23966 (regex!6822 (rule!9862 token!484)))) call!286251))))

(declare-fun d!1186170 () Bool)

(declare-fun lt!1418567 () Regex!11727)

(assert (=> d!1186170 (validRegex!5314 lt!1418567)))

(assert (=> d!1186170 (= lt!1418567 e!2485963)))

(declare-fun c!693116 () Bool)

(assert (=> d!1186170 (= c!693116 (or ((_ is EmptyExpr!11727) (regex!6822 (rule!9862 token!484))) ((_ is EmptyLang!11727) (regex!6822 (rule!9862 token!484)))))))

(assert (=> d!1186170 (validRegex!5314 (regex!6822 (rule!9862 token!484)))))

(assert (=> d!1186170 (= (derivativeStep!3523 (regex!6822 (rule!9862 token!484)) (head!8515 lt!1418254)) lt!1418567)))

(declare-fun b!4008667 () Bool)

(assert (=> b!4008667 (= e!2485963 EmptyLang!11727)))

(declare-fun b!4008668 () Bool)

(assert (=> b!4008668 (= e!2485961 (Concat!18780 call!286249 (regex!6822 (rule!9862 token!484))))))

(declare-fun b!4008669 () Bool)

(assert (=> b!4008669 (= c!693113 ((_ is Union!11727) (regex!6822 (rule!9862 token!484))))))

(declare-fun e!2485965 () Regex!11727)

(assert (=> b!4008669 (= e!2485962 e!2485965)))

(declare-fun b!4008670 () Bool)

(assert (=> b!4008670 (= e!2485962 (ite (= (head!8515 lt!1418254) (c!692981 (regex!6822 (rule!9862 token!484)))) EmptyExpr!11727 EmptyLang!11727))))

(declare-fun bm!286247 () Bool)

(declare-fun c!693114 () Bool)

(assert (=> bm!286247 (= call!286250 (derivativeStep!3523 (ite c!693113 (regOne!23967 (regex!6822 (rule!9862 token!484))) (ite c!693114 (reg!12056 (regex!6822 (rule!9862 token!484))) (regOne!23966 (regex!6822 (rule!9862 token!484))))) (head!8515 lt!1418254)))))

(declare-fun b!4008671 () Bool)

(assert (=> b!4008671 (= e!2485965 e!2485961)))

(assert (=> b!4008671 (= c!693114 ((_ is Star!11727) (regex!6822 (rule!9862 token!484))))))

(declare-fun b!4008672 () Bool)

(assert (=> b!4008672 (= e!2485965 (Union!11727 call!286250 call!286251))))

(assert (= (and d!1186170 c!693116) b!4008667))

(assert (= (and d!1186170 (not c!693116)) b!4008663))

(assert (= (and b!4008663 c!693112) b!4008670))

(assert (= (and b!4008663 (not c!693112)) b!4008669))

(assert (= (and b!4008669 c!693113) b!4008672))

(assert (= (and b!4008669 (not c!693113)) b!4008671))

(assert (= (and b!4008671 c!693114) b!4008668))

(assert (= (and b!4008671 (not c!693114)) b!4008665))

(assert (= (and b!4008665 c!693115) b!4008666))

(assert (= (and b!4008665 (not c!693115)) b!4008664))

(assert (= (or b!4008666 b!4008664) bm!286245))

(assert (= (or b!4008668 bm!286245) bm!286246))

(assert (= (or b!4008672 bm!286246) bm!286247))

(assert (= (or b!4008672 b!4008666) bm!286244))

(assert (=> bm!286244 m!4592157))

(declare-fun m!4592679 () Bool)

(assert (=> bm!286244 m!4592679))

(declare-fun m!4592681 () Bool)

(assert (=> b!4008665 m!4592681))

(declare-fun m!4592683 () Bool)

(assert (=> d!1186170 m!4592683))

(assert (=> d!1186170 m!4591763))

(assert (=> bm!286247 m!4592157))

(declare-fun m!4592685 () Bool)

(assert (=> bm!286247 m!4592685))

(assert (=> b!4008495 d!1186170))

(assert (=> b!4008495 d!1186162))

(declare-fun d!1186172 () Bool)

(assert (=> d!1186172 (= (tail!6247 lt!1418254) (t!332653 lt!1418254))))

(assert (=> b!4008495 d!1186172))

(declare-fun d!1186174 () Bool)

(declare-fun c!693117 () Bool)

(assert (=> d!1186174 (= c!693117 ((_ is Nil!42904) lt!1418518))))

(declare-fun e!2485966 () (InoxSet C!23640))

(assert (=> d!1186174 (= (content!6506 lt!1418518) e!2485966)))

(declare-fun b!4008673 () Bool)

(assert (=> b!4008673 (= e!2485966 ((as const (Array C!23640 Bool)) false))))

(declare-fun b!4008674 () Bool)

(assert (=> b!4008674 (= e!2485966 ((_ map or) (store ((as const (Array C!23640 Bool)) false) (h!48324 lt!1418518) true) (content!6506 (t!332653 lt!1418518))))))

(assert (= (and d!1186174 c!693117) b!4008673))

(assert (= (and d!1186174 (not c!693117)) b!4008674))

(declare-fun m!4592687 () Bool)

(assert (=> b!4008674 m!4592687))

(declare-fun m!4592689 () Bool)

(assert (=> b!4008674 m!4592689))

(assert (=> d!1186078 d!1186174))

(declare-fun d!1186176 () Bool)

(declare-fun c!693118 () Bool)

(assert (=> d!1186176 (= c!693118 ((_ is Nil!42904) lt!1418281))))

(declare-fun e!2485967 () (InoxSet C!23640))

(assert (=> d!1186176 (= (content!6506 lt!1418281) e!2485967)))

(declare-fun b!4008675 () Bool)

(assert (=> b!4008675 (= e!2485967 ((as const (Array C!23640 Bool)) false))))

(declare-fun b!4008676 () Bool)

(assert (=> b!4008676 (= e!2485967 ((_ map or) (store ((as const (Array C!23640 Bool)) false) (h!48324 lt!1418281) true) (content!6506 (t!332653 lt!1418281))))))

(assert (= (and d!1186176 c!693118) b!4008675))

(assert (= (and d!1186176 (not c!693118)) b!4008676))

(declare-fun m!4592691 () Bool)

(assert (=> b!4008676 m!4592691))

(assert (=> b!4008676 m!4592553))

(assert (=> d!1186078 d!1186176))

(declare-fun d!1186178 () Bool)

(declare-fun c!693119 () Bool)

(assert (=> d!1186178 (= c!693119 ((_ is Nil!42904) suffix!1299))))

(declare-fun e!2485968 () (InoxSet C!23640))

(assert (=> d!1186178 (= (content!6506 suffix!1299) e!2485968)))

(declare-fun b!4008677 () Bool)

(assert (=> b!4008677 (= e!2485968 ((as const (Array C!23640 Bool)) false))))

(declare-fun b!4008678 () Bool)

(assert (=> b!4008678 (= e!2485968 ((_ map or) (store ((as const (Array C!23640 Bool)) false) (h!48324 suffix!1299) true) (content!6506 (t!332653 suffix!1299))))))

(assert (= (and d!1186178 c!693119) b!4008677))

(assert (= (and d!1186178 (not c!693119)) b!4008678))

(declare-fun m!4592693 () Bool)

(assert (=> b!4008678 m!4592693))

(declare-fun m!4592695 () Bool)

(assert (=> b!4008678 m!4592695))

(assert (=> d!1186078 d!1186178))

(declare-fun d!1186180 () Bool)

(assert (=> d!1186180 (= (isEmpty!25632 lt!1418330) (not ((_ is Some!9235) lt!1418330)))))

(assert (=> d!1185786 d!1186180))

(assert (=> d!1185786 d!1186062))

(assert (=> d!1185786 d!1186064))

(declare-fun d!1186182 () Bool)

(assert (=> d!1186182 true))

(declare-fun lt!1418582 () Bool)

(declare-fun lambda!127010 () Int)

(declare-fun forall!8349 (List!43030 Int) Bool)

(assert (=> d!1186182 (= lt!1418582 (forall!8349 rules!2999 lambda!127010))))

(declare-fun e!2486013 () Bool)

(assert (=> d!1186182 (= lt!1418582 e!2486013)))

(declare-fun res!1629289 () Bool)

(assert (=> d!1186182 (=> res!1629289 e!2486013)))

(assert (=> d!1186182 (= res!1629289 (not ((_ is Cons!42906) rules!2999)))))

(assert (=> d!1186182 (= (rulesValidInductive!2486 thiss!21717 rules!2999) lt!1418582)))

(declare-fun b!4008750 () Bool)

(declare-fun e!2486012 () Bool)

(assert (=> b!4008750 (= e!2486013 e!2486012)))

(declare-fun res!1629290 () Bool)

(assert (=> b!4008750 (=> (not res!1629290) (not e!2486012))))

(assert (=> b!4008750 (= res!1629290 (ruleValid!2754 thiss!21717 (h!48326 rules!2999)))))

(declare-fun b!4008751 () Bool)

(assert (=> b!4008751 (= e!2486012 (rulesValidInductive!2486 thiss!21717 (t!332655 rules!2999)))))

(assert (= (and d!1186182 (not res!1629289)) b!4008750))

(assert (= (and b!4008750 res!1629290) b!4008751))

(declare-fun m!4592829 () Bool)

(assert (=> d!1186182 m!4592829))

(declare-fun m!4592831 () Bool)

(assert (=> b!4008750 m!4592831))

(declare-fun m!4592833 () Bool)

(assert (=> b!4008751 m!4592833))

(assert (=> d!1185786 d!1186182))

(declare-fun d!1186252 () Bool)

(declare-fun lt!1418583 () Int)

(assert (=> d!1186252 (>= lt!1418583 0)))

(declare-fun e!2486014 () Int)

(assert (=> d!1186252 (= lt!1418583 e!2486014)))

(declare-fun c!693139 () Bool)

(assert (=> d!1186252 (= c!693139 ((_ is Nil!42904) (_2!24163 (get!14100 lt!1418457))))))

(assert (=> d!1186252 (= (size!32079 (_2!24163 (get!14100 lt!1418457))) lt!1418583)))

(declare-fun b!4008754 () Bool)

(assert (=> b!4008754 (= e!2486014 0)))

(declare-fun b!4008755 () Bool)

(assert (=> b!4008755 (= e!2486014 (+ 1 (size!32079 (t!332653 (_2!24163 (get!14100 lt!1418457))))))))

(assert (= (and d!1186252 c!693139) b!4008754))

(assert (= (and d!1186252 (not c!693139)) b!4008755))

(declare-fun m!4592835 () Bool)

(assert (=> b!4008755 m!4592835))

(assert (=> b!4008362 d!1186252))

(assert (=> b!4008362 d!1186156))

(assert (=> b!4008362 d!1186088))

(declare-fun d!1186254 () Bool)

(assert (=> d!1186254 (= lt!1418244 suffixResult!105)))

(assert (=> d!1186254 true))

(declare-fun _$63!1043 () Unit!61905)

(assert (=> d!1186254 (= (choose!24208 lt!1418254 lt!1418244 lt!1418254 suffixResult!105 lt!1418276) _$63!1043)))

(assert (=> d!1185956 d!1186254))

(assert (=> d!1185956 d!1186040))

(declare-fun d!1186256 () Bool)

(assert (=> d!1186256 (= (list!15942 lt!1418470) (list!15944 (c!692980 lt!1418470)))))

(declare-fun bs!589194 () Bool)

(assert (= bs!589194 d!1186256))

(declare-fun m!4592837 () Bool)

(assert (=> bs!589194 m!4592837))

(assert (=> d!1185990 d!1186256))

(assert (=> b!4008409 d!1186096))

(declare-fun d!1186258 () Bool)

(assert (=> d!1186258 (= (head!8515 (++!11224 lt!1418251 newSuffixResult!27)) (h!48324 (++!11224 lt!1418251 newSuffixResult!27)))))

(assert (=> b!4008409 d!1186258))

(declare-fun d!1186260 () Bool)

(declare-fun lt!1418584 () Int)

(assert (=> d!1186260 (>= lt!1418584 0)))

(declare-fun e!2486015 () Int)

(assert (=> d!1186260 (= lt!1418584 e!2486015)))

(declare-fun c!693140 () Bool)

(assert (=> d!1186260 (= c!693140 ((_ is Nil!42904) (t!332653 lt!1418254)))))

(assert (=> d!1186260 (= (size!32079 (t!332653 lt!1418254)) lt!1418584)))

(declare-fun b!4008756 () Bool)

(assert (=> b!4008756 (= e!2486015 0)))

(declare-fun b!4008757 () Bool)

(assert (=> b!4008757 (= e!2486015 (+ 1 (size!32079 (t!332653 (t!332653 lt!1418254)))))))

(assert (= (and d!1186260 c!693140) b!4008756))

(assert (= (and d!1186260 (not c!693140)) b!4008757))

(declare-fun m!4592839 () Bool)

(assert (=> b!4008757 m!4592839))

(assert (=> b!4008384 d!1186260))

(declare-fun b!4008758 () Bool)

(declare-fun e!2486017 () Bool)

(assert (=> b!4008758 (= e!2486017 (inv!17 (dynLambda!18200 (toValue!9322 (transformation!6822 (rule!9862 token!484))) (seqFromList!5047 lt!1418254))))))

(declare-fun b!4008759 () Bool)

(declare-fun e!2486018 () Bool)

(assert (=> b!4008759 (= e!2486018 e!2486017)))

(declare-fun c!693142 () Bool)

(assert (=> b!4008759 (= c!693142 ((_ is IntegerValue!21157) (dynLambda!18200 (toValue!9322 (transformation!6822 (rule!9862 token!484))) (seqFromList!5047 lt!1418254))))))

(declare-fun b!4008760 () Bool)

(declare-fun e!2486016 () Bool)

(assert (=> b!4008760 (= e!2486016 (inv!15 (dynLambda!18200 (toValue!9322 (transformation!6822 (rule!9862 token!484))) (seqFromList!5047 lt!1418254))))))

(declare-fun b!4008761 () Bool)

(declare-fun res!1629291 () Bool)

(assert (=> b!4008761 (=> res!1629291 e!2486016)))

(assert (=> b!4008761 (= res!1629291 (not ((_ is IntegerValue!21158) (dynLambda!18200 (toValue!9322 (transformation!6822 (rule!9862 token!484))) (seqFromList!5047 lt!1418254)))))))

(assert (=> b!4008761 (= e!2486017 e!2486016)))

(declare-fun d!1186262 () Bool)

(declare-fun c!693141 () Bool)

(assert (=> d!1186262 (= c!693141 ((_ is IntegerValue!21156) (dynLambda!18200 (toValue!9322 (transformation!6822 (rule!9862 token!484))) (seqFromList!5047 lt!1418254))))))

(assert (=> d!1186262 (= (inv!21 (dynLambda!18200 (toValue!9322 (transformation!6822 (rule!9862 token!484))) (seqFromList!5047 lt!1418254))) e!2486018)))

(declare-fun b!4008762 () Bool)

(assert (=> b!4008762 (= e!2486018 (inv!16 (dynLambda!18200 (toValue!9322 (transformation!6822 (rule!9862 token!484))) (seqFromList!5047 lt!1418254))))))

(assert (= (and d!1186262 c!693141) b!4008762))

(assert (= (and d!1186262 (not c!693141)) b!4008759))

(assert (= (and b!4008759 c!693142) b!4008758))

(assert (= (and b!4008759 (not c!693142)) b!4008761))

(assert (= (and b!4008761 (not res!1629291)) b!4008760))

(declare-fun m!4592841 () Bool)

(assert (=> b!4008758 m!4592841))

(declare-fun m!4592843 () Bool)

(assert (=> b!4008760 m!4592843))

(declare-fun m!4592845 () Bool)

(assert (=> b!4008762 m!4592845))

(assert (=> tb!240909 d!1186262))

(declare-fun b!4008763 () Bool)

(declare-fun e!2486024 () Bool)

(assert (=> b!4008763 (= e!2486024 (not (= (head!8515 (_1!24165 (findLongestMatchInner!1355 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))) Nil!42904 (size!32079 Nil!42904) lt!1418249 lt!1418249 (size!32079 lt!1418249)))) (c!692981 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))))))))

(declare-fun bm!286249 () Bool)

(declare-fun call!286254 () Bool)

(assert (=> bm!286249 (= call!286254 (isEmpty!25634 (_1!24165 (findLongestMatchInner!1355 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))) Nil!42904 (size!32079 Nil!42904) lt!1418249 lt!1418249 (size!32079 lt!1418249)))))))

(declare-fun b!4008764 () Bool)

(declare-fun e!2486019 () Bool)

(assert (=> b!4008764 (= e!2486019 (nullable!4114 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))))))

(declare-fun b!4008765 () Bool)

(declare-fun res!1629296 () Bool)

(declare-fun e!2486020 () Bool)

(assert (=> b!4008765 (=> (not res!1629296) (not e!2486020))))

(assert (=> b!4008765 (= res!1629296 (not call!286254))))

(declare-fun d!1186264 () Bool)

(declare-fun e!2486022 () Bool)

(assert (=> d!1186264 e!2486022))

(declare-fun c!693143 () Bool)

(assert (=> d!1186264 (= c!693143 ((_ is EmptyExpr!11727) (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))))))

(declare-fun lt!1418585 () Bool)

(assert (=> d!1186264 (= lt!1418585 e!2486019)))

(declare-fun c!693145 () Bool)

(assert (=> d!1186264 (= c!693145 (isEmpty!25634 (_1!24165 (findLongestMatchInner!1355 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))) Nil!42904 (size!32079 Nil!42904) lt!1418249 lt!1418249 (size!32079 lt!1418249)))))))

(assert (=> d!1186264 (validRegex!5314 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))))

(assert (=> d!1186264 (= (matchR!5688 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))) (_1!24165 (findLongestMatchInner!1355 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))) Nil!42904 (size!32079 Nil!42904) lt!1418249 lt!1418249 (size!32079 lt!1418249)))) lt!1418585)))

(declare-fun b!4008766 () Bool)

(assert (=> b!4008766 (= e!2486019 (matchR!5688 (derivativeStep!3523 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))) (head!8515 (_1!24165 (findLongestMatchInner!1355 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))) Nil!42904 (size!32079 Nil!42904) lt!1418249 lt!1418249 (size!32079 lt!1418249))))) (tail!6247 (_1!24165 (findLongestMatchInner!1355 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))) Nil!42904 (size!32079 Nil!42904) lt!1418249 lt!1418249 (size!32079 lt!1418249))))))))

(declare-fun b!4008767 () Bool)

(declare-fun res!1629299 () Bool)

(assert (=> b!4008767 (=> (not res!1629299) (not e!2486020))))

(assert (=> b!4008767 (= res!1629299 (isEmpty!25634 (tail!6247 (_1!24165 (findLongestMatchInner!1355 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))) Nil!42904 (size!32079 Nil!42904) lt!1418249 lt!1418249 (size!32079 lt!1418249))))))))

(declare-fun b!4008768 () Bool)

(declare-fun res!1629298 () Bool)

(assert (=> b!4008768 (=> res!1629298 e!2486024)))

(assert (=> b!4008768 (= res!1629298 (not (isEmpty!25634 (tail!6247 (_1!24165 (findLongestMatchInner!1355 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))) Nil!42904 (size!32079 Nil!42904) lt!1418249 lt!1418249 (size!32079 lt!1418249)))))))))

(declare-fun b!4008769 () Bool)

(declare-fun e!2486023 () Bool)

(assert (=> b!4008769 (= e!2486023 e!2486024)))

(declare-fun res!1629294 () Bool)

(assert (=> b!4008769 (=> res!1629294 e!2486024)))

(assert (=> b!4008769 (= res!1629294 call!286254)))

(declare-fun b!4008770 () Bool)

(assert (=> b!4008770 (= e!2486020 (= (head!8515 (_1!24165 (findLongestMatchInner!1355 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))) Nil!42904 (size!32079 Nil!42904) lt!1418249 lt!1418249 (size!32079 lt!1418249)))) (c!692981 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))))))

(declare-fun b!4008771 () Bool)

(declare-fun e!2486025 () Bool)

(assert (=> b!4008771 (= e!2486025 e!2486023)))

(declare-fun res!1629293 () Bool)

(assert (=> b!4008771 (=> (not res!1629293) (not e!2486023))))

(assert (=> b!4008771 (= res!1629293 (not lt!1418585))))

(declare-fun b!4008772 () Bool)

(declare-fun e!2486021 () Bool)

(assert (=> b!4008772 (= e!2486021 (not lt!1418585))))

(declare-fun b!4008773 () Bool)

(assert (=> b!4008773 (= e!2486022 (= lt!1418585 call!286254))))

(declare-fun b!4008774 () Bool)

(declare-fun res!1629297 () Bool)

(assert (=> b!4008774 (=> res!1629297 e!2486025)))

(assert (=> b!4008774 (= res!1629297 e!2486020)))

(declare-fun res!1629292 () Bool)

(assert (=> b!4008774 (=> (not res!1629292) (not e!2486020))))

(assert (=> b!4008774 (= res!1629292 lt!1418585)))

(declare-fun b!4008775 () Bool)

(assert (=> b!4008775 (= e!2486022 e!2486021)))

(declare-fun c!693144 () Bool)

(assert (=> b!4008775 (= c!693144 ((_ is EmptyLang!11727) (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))))))

(declare-fun b!4008776 () Bool)

(declare-fun res!1629295 () Bool)

(assert (=> b!4008776 (=> res!1629295 e!2486025)))

(assert (=> b!4008776 (= res!1629295 (not ((_ is ElementMatch!11727) (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))))))

(assert (=> b!4008776 (= e!2486021 e!2486025)))

(assert (= (and d!1186264 c!693145) b!4008764))

(assert (= (and d!1186264 (not c!693145)) b!4008766))

(assert (= (and d!1186264 c!693143) b!4008773))

(assert (= (and d!1186264 (not c!693143)) b!4008775))

(assert (= (and b!4008775 c!693144) b!4008772))

(assert (= (and b!4008775 (not c!693144)) b!4008776))

(assert (= (and b!4008776 (not res!1629295)) b!4008774))

(assert (= (and b!4008774 res!1629292) b!4008765))

(assert (= (and b!4008765 res!1629296) b!4008767))

(assert (= (and b!4008767 res!1629299) b!4008770))

(assert (= (and b!4008774 (not res!1629297)) b!4008771))

(assert (= (and b!4008771 res!1629293) b!4008769))

(assert (= (and b!4008769 (not res!1629294)) b!4008768))

(assert (= (and b!4008768 (not res!1629298)) b!4008763))

(assert (= (or b!4008773 b!4008765 b!4008769) bm!286249))

(assert (=> d!1186264 m!4592379))

(assert (=> d!1186264 m!4592269))

(declare-fun m!4592847 () Bool)

(assert (=> b!4008770 m!4592847))

(declare-fun m!4592849 () Bool)

(assert (=> b!4008768 m!4592849))

(assert (=> b!4008768 m!4592849))

(declare-fun m!4592851 () Bool)

(assert (=> b!4008768 m!4592851))

(assert (=> b!4008767 m!4592849))

(assert (=> b!4008767 m!4592849))

(assert (=> b!4008767 m!4592851))

(assert (=> b!4008764 m!4592271))

(assert (=> b!4008763 m!4592847))

(assert (=> bm!286249 m!4592379))

(assert (=> b!4008766 m!4592847))

(assert (=> b!4008766 m!4592847))

(declare-fun m!4592853 () Bool)

(assert (=> b!4008766 m!4592853))

(assert (=> b!4008766 m!4592849))

(assert (=> b!4008766 m!4592853))

(assert (=> b!4008766 m!4592849))

(declare-fun m!4592855 () Bool)

(assert (=> b!4008766 m!4592855))

(assert (=> b!4008412 d!1186264))

(declare-fun b!4008925 () Bool)

(declare-fun e!2486116 () tuple2!42062)

(declare-fun lt!1418795 () tuple2!42062)

(assert (=> b!4008925 (= e!2486116 lt!1418795)))

(declare-fun bm!286299 () Bool)

(declare-fun call!286305 () List!43028)

(assert (=> bm!286299 (= call!286305 (tail!6247 lt!1418249))))

(declare-fun b!4008926 () Bool)

(declare-fun e!2486117 () Unit!61905)

(declare-fun Unit!61919 () Unit!61905)

(assert (=> b!4008926 (= e!2486117 Unit!61919)))

(declare-fun b!4008927 () Bool)

(declare-fun e!2486112 () tuple2!42062)

(declare-fun call!286311 () tuple2!42062)

(assert (=> b!4008927 (= e!2486112 call!286311)))

(declare-fun b!4008928 () Bool)

(declare-fun e!2486113 () Bool)

(declare-fun e!2486119 () Bool)

(assert (=> b!4008928 (= e!2486113 e!2486119)))

(declare-fun res!1629342 () Bool)

(assert (=> b!4008928 (=> res!1629342 e!2486119)))

(declare-fun lt!1418797 () tuple2!42062)

(assert (=> b!4008928 (= res!1629342 (isEmpty!25634 (_1!24165 lt!1418797)))))

(declare-fun bm!286300 () Bool)

(declare-fun call!286307 () Bool)

(assert (=> bm!286300 (= call!286307 (nullable!4114 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))))))

(declare-fun bm!286301 () Bool)

(declare-fun call!286310 () Unit!61905)

(declare-fun lemmaIsPrefixSameLengthThenSameList!899 (List!43028 List!43028 List!43028) Unit!61905)

(assert (=> bm!286301 (= call!286310 (lemmaIsPrefixSameLengthThenSameList!899 lt!1418249 Nil!42904 lt!1418249))))

(declare-fun b!4008929 () Bool)

(declare-fun e!2486114 () tuple2!42062)

(assert (=> b!4008929 (= e!2486114 (tuple2!42063 Nil!42904 Nil!42904))))

(declare-fun bm!286302 () Bool)

(declare-fun call!286306 () C!23640)

(assert (=> bm!286302 (= call!286306 (head!8515 lt!1418249))))

(declare-fun b!4008931 () Bool)

(declare-fun Unit!61920 () Unit!61905)

(assert (=> b!4008931 (= e!2486117 Unit!61920)))

(declare-fun lt!1418803 () Unit!61905)

(declare-fun call!286309 () Unit!61905)

(assert (=> b!4008931 (= lt!1418803 call!286309)))

(declare-fun call!286308 () Bool)

(assert (=> b!4008931 call!286308))

(declare-fun lt!1418791 () Unit!61905)

(assert (=> b!4008931 (= lt!1418791 lt!1418803)))

(declare-fun lt!1418783 () Unit!61905)

(assert (=> b!4008931 (= lt!1418783 call!286310)))

(assert (=> b!4008931 (= lt!1418249 Nil!42904)))

(declare-fun lt!1418798 () Unit!61905)

(assert (=> b!4008931 (= lt!1418798 lt!1418783)))

(assert (=> b!4008931 false))

(declare-fun b!4008932 () Bool)

(assert (=> b!4008932 (= e!2486119 (>= (size!32079 (_1!24165 lt!1418797)) (size!32079 Nil!42904)))))

(declare-fun b!4008933 () Bool)

(declare-fun c!693198 () Bool)

(assert (=> b!4008933 (= c!693198 call!286307)))

(declare-fun lt!1418789 () Unit!61905)

(declare-fun lt!1418796 () Unit!61905)

(assert (=> b!4008933 (= lt!1418789 lt!1418796)))

(assert (=> b!4008933 (= lt!1418249 Nil!42904)))

(assert (=> b!4008933 (= lt!1418796 call!286310)))

(declare-fun lt!1418779 () Unit!61905)

(declare-fun lt!1418782 () Unit!61905)

(assert (=> b!4008933 (= lt!1418779 lt!1418782)))

(assert (=> b!4008933 call!286308))

(assert (=> b!4008933 (= lt!1418782 call!286309)))

(declare-fun e!2486115 () tuple2!42062)

(assert (=> b!4008933 (= e!2486115 e!2486114)))

(declare-fun bm!286303 () Bool)

(declare-fun call!286304 () Regex!11727)

(assert (=> bm!286303 (= call!286304 (derivativeStep!3523 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))) call!286306))))

(declare-fun b!4008934 () Bool)

(assert (=> b!4008934 (= e!2486116 (tuple2!42063 Nil!42904 lt!1418249))))

(declare-fun b!4008935 () Bool)

(declare-fun e!2486118 () tuple2!42062)

(assert (=> b!4008935 (= e!2486118 e!2486115)))

(declare-fun c!693201 () Bool)

(assert (=> b!4008935 (= c!693201 (= (size!32079 Nil!42904) (size!32079 lt!1418249)))))

(declare-fun bm!286304 () Bool)

(assert (=> bm!286304 (= call!286309 (lemmaIsPrefixRefl!2485 lt!1418249 lt!1418249))))

(declare-fun lt!1418802 () List!43028)

(declare-fun bm!286305 () Bool)

(assert (=> bm!286305 (= call!286311 (findLongestMatchInner!1355 call!286304 lt!1418802 (+ (size!32079 Nil!42904) 1) call!286305 lt!1418249 (size!32079 lt!1418249)))))

(declare-fun b!4008936 () Bool)

(assert (=> b!4008936 (= e!2486114 (tuple2!42063 Nil!42904 lt!1418249))))

(declare-fun b!4008937 () Bool)

(assert (=> b!4008937 (= e!2486118 (tuple2!42063 Nil!42904 lt!1418249))))

(declare-fun b!4008930 () Bool)

(declare-fun c!693199 () Bool)

(assert (=> b!4008930 (= c!693199 call!286307)))

(declare-fun lt!1418792 () Unit!61905)

(declare-fun lt!1418784 () Unit!61905)

(assert (=> b!4008930 (= lt!1418792 lt!1418784)))

(declare-fun lt!1418780 () C!23640)

(declare-fun lt!1418778 () List!43028)

(assert (=> b!4008930 (= (++!11224 (++!11224 Nil!42904 (Cons!42904 lt!1418780 Nil!42904)) lt!1418778) lt!1418249)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1241 (List!43028 C!23640 List!43028 List!43028) Unit!61905)

(assert (=> b!4008930 (= lt!1418784 (lemmaMoveElementToOtherListKeepsConcatEq!1241 Nil!42904 lt!1418780 lt!1418778 lt!1418249))))

(assert (=> b!4008930 (= lt!1418778 (tail!6247 lt!1418249))))

(assert (=> b!4008930 (= lt!1418780 (head!8515 lt!1418249))))

(declare-fun lt!1418794 () Unit!61905)

(declare-fun lt!1418800 () Unit!61905)

(assert (=> b!4008930 (= lt!1418794 lt!1418800)))

(assert (=> b!4008930 (isPrefix!3909 (++!11224 Nil!42904 (Cons!42904 (head!8515 (getSuffix!2334 lt!1418249 Nil!42904)) Nil!42904)) lt!1418249)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!623 (List!43028 List!43028) Unit!61905)

(assert (=> b!4008930 (= lt!1418800 (lemmaAddHeadSuffixToPrefixStillPrefix!623 Nil!42904 lt!1418249))))

(declare-fun lt!1418785 () Unit!61905)

(declare-fun lt!1418788 () Unit!61905)

(assert (=> b!4008930 (= lt!1418785 lt!1418788)))

(assert (=> b!4008930 (= lt!1418788 (lemmaAddHeadSuffixToPrefixStillPrefix!623 Nil!42904 lt!1418249))))

(assert (=> b!4008930 (= lt!1418802 (++!11224 Nil!42904 (Cons!42904 (head!8515 lt!1418249) Nil!42904)))))

(declare-fun lt!1418801 () Unit!61905)

(assert (=> b!4008930 (= lt!1418801 e!2486117)))

(declare-fun c!693200 () Bool)

(assert (=> b!4008930 (= c!693200 (= (size!32079 Nil!42904) (size!32079 lt!1418249)))))

(declare-fun lt!1418793 () Unit!61905)

(declare-fun lt!1418787 () Unit!61905)

(assert (=> b!4008930 (= lt!1418793 lt!1418787)))

(assert (=> b!4008930 (<= (size!32079 Nil!42904) (size!32079 lt!1418249))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!431 (List!43028 List!43028) Unit!61905)

(assert (=> b!4008930 (= lt!1418787 (lemmaIsPrefixThenSmallerEqSize!431 Nil!42904 lt!1418249))))

(assert (=> b!4008930 (= e!2486115 e!2486112)))

(declare-fun d!1186266 () Bool)

(assert (=> d!1186266 e!2486113))

(declare-fun res!1629341 () Bool)

(assert (=> d!1186266 (=> (not res!1629341) (not e!2486113))))

(assert (=> d!1186266 (= res!1629341 (= (++!11224 (_1!24165 lt!1418797) (_2!24165 lt!1418797)) lt!1418249))))

(assert (=> d!1186266 (= lt!1418797 e!2486118)))

(declare-fun c!693202 () Bool)

(declare-fun lostCause!997 (Regex!11727) Bool)

(assert (=> d!1186266 (= c!693202 (lostCause!997 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))))))

(declare-fun lt!1418790 () Unit!61905)

(declare-fun Unit!61921 () Unit!61905)

(assert (=> d!1186266 (= lt!1418790 Unit!61921)))

(assert (=> d!1186266 (= (getSuffix!2334 lt!1418249 Nil!42904) lt!1418249)))

(declare-fun lt!1418799 () Unit!61905)

(declare-fun lt!1418781 () Unit!61905)

(assert (=> d!1186266 (= lt!1418799 lt!1418781)))

(declare-fun lt!1418805 () List!43028)

(assert (=> d!1186266 (= lt!1418249 lt!1418805)))

(assert (=> d!1186266 (= lt!1418781 (lemmaSamePrefixThenSameSuffix!2080 Nil!42904 lt!1418249 Nil!42904 lt!1418805 lt!1418249))))

(assert (=> d!1186266 (= lt!1418805 (getSuffix!2334 lt!1418249 Nil!42904))))

(declare-fun lt!1418804 () Unit!61905)

(declare-fun lt!1418786 () Unit!61905)

(assert (=> d!1186266 (= lt!1418804 lt!1418786)))

(assert (=> d!1186266 (isPrefix!3909 Nil!42904 (++!11224 Nil!42904 lt!1418249))))

(assert (=> d!1186266 (= lt!1418786 (lemmaConcatTwoListThenFirstIsPrefix!2750 Nil!42904 lt!1418249))))

(assert (=> d!1186266 (validRegex!5314 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))))

(assert (=> d!1186266 (= (findLongestMatchInner!1355 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))) Nil!42904 (size!32079 Nil!42904) lt!1418249 lt!1418249 (size!32079 lt!1418249)) lt!1418797)))

(declare-fun b!4008938 () Bool)

(assert (=> b!4008938 (= e!2486112 e!2486116)))

(assert (=> b!4008938 (= lt!1418795 call!286311)))

(declare-fun c!693203 () Bool)

(assert (=> b!4008938 (= c!693203 (isEmpty!25634 (_1!24165 lt!1418795)))))

(declare-fun bm!286306 () Bool)

(assert (=> bm!286306 (= call!286308 (isPrefix!3909 lt!1418249 lt!1418249))))

(assert (= (and d!1186266 c!693202) b!4008937))

(assert (= (and d!1186266 (not c!693202)) b!4008935))

(assert (= (and b!4008935 c!693201) b!4008933))

(assert (= (and b!4008935 (not c!693201)) b!4008930))

(assert (= (and b!4008933 c!693198) b!4008929))

(assert (= (and b!4008933 (not c!693198)) b!4008936))

(assert (= (and b!4008930 c!693200) b!4008931))

(assert (= (and b!4008930 (not c!693200)) b!4008926))

(assert (= (and b!4008930 c!693199) b!4008938))

(assert (= (and b!4008930 (not c!693199)) b!4008927))

(assert (= (and b!4008938 c!693203) b!4008934))

(assert (= (and b!4008938 (not c!693203)) b!4008925))

(assert (= (or b!4008938 b!4008927) bm!286302))

(assert (= (or b!4008938 b!4008927) bm!286299))

(assert (= (or b!4008938 b!4008927) bm!286303))

(assert (= (or b!4008938 b!4008927) bm!286305))

(assert (= (or b!4008933 b!4008931) bm!286306))

(assert (= (or b!4008933 b!4008930) bm!286300))

(assert (= (or b!4008933 b!4008931) bm!286301))

(assert (= (or b!4008933 b!4008931) bm!286304))

(assert (= (and d!1186266 res!1629341) b!4008928))

(assert (= (and b!4008928 (not res!1629342)) b!4008932))

(assert (=> bm!286302 m!4592471))

(assert (=> bm!286300 m!4592271))

(assert (=> b!4008930 m!4592467))

(declare-fun m!4593085 () Bool)

(assert (=> b!4008930 m!4593085))

(declare-fun m!4593087 () Bool)

(assert (=> b!4008930 m!4593087))

(assert (=> b!4008930 m!4592077))

(assert (=> b!4008930 m!4592211))

(declare-fun m!4593089 () Bool)

(assert (=> b!4008930 m!4593089))

(declare-fun m!4593091 () Bool)

(assert (=> b!4008930 m!4593091))

(declare-fun m!4593093 () Bool)

(assert (=> b!4008930 m!4593093))

(assert (=> b!4008930 m!4593089))

(declare-fun m!4593095 () Bool)

(assert (=> b!4008930 m!4593095))

(declare-fun m!4593097 () Bool)

(assert (=> b!4008930 m!4593097))

(assert (=> b!4008930 m!4593085))

(declare-fun m!4593099 () Bool)

(assert (=> b!4008930 m!4593099))

(assert (=> b!4008930 m!4593093))

(declare-fun m!4593101 () Bool)

(assert (=> b!4008930 m!4593101))

(declare-fun m!4593103 () Bool)

(assert (=> b!4008930 m!4593103))

(assert (=> b!4008930 m!4592471))

(declare-fun m!4593105 () Bool)

(assert (=> b!4008928 m!4593105))

(declare-fun m!4593107 () Bool)

(assert (=> d!1186266 m!4593107))

(declare-fun m!4593109 () Bool)

(assert (=> d!1186266 m!4593109))

(declare-fun m!4593111 () Bool)

(assert (=> d!1186266 m!4593111))

(declare-fun m!4593113 () Bool)

(assert (=> d!1186266 m!4593113))

(assert (=> d!1186266 m!4593085))

(assert (=> d!1186266 m!4592269))

(declare-fun m!4593115 () Bool)

(assert (=> d!1186266 m!4593115))

(assert (=> d!1186266 m!4593109))

(declare-fun m!4593117 () Bool)

(assert (=> d!1186266 m!4593117))

(assert (=> bm!286299 m!4592467))

(assert (=> bm!286305 m!4592211))

(declare-fun m!4593119 () Bool)

(assert (=> bm!286305 m!4593119))

(assert (=> bm!286306 m!4592203))

(assert (=> bm!286304 m!4592205))

(declare-fun m!4593121 () Bool)

(assert (=> b!4008938 m!4593121))

(declare-fun m!4593123 () Bool)

(assert (=> bm!286303 m!4593123))

(declare-fun m!4593125 () Bool)

(assert (=> b!4008932 m!4593125))

(assert (=> b!4008932 m!4592077))

(declare-fun m!4593127 () Bool)

(assert (=> bm!286301 m!4593127))

(assert (=> b!4008412 d!1186266))

(declare-fun d!1186326 () Bool)

(declare-fun lt!1418806 () Int)

(assert (=> d!1186326 (>= lt!1418806 0)))

(declare-fun e!2486120 () Int)

(assert (=> d!1186326 (= lt!1418806 e!2486120)))

(declare-fun c!693204 () Bool)

(assert (=> d!1186326 (= c!693204 ((_ is Nil!42904) Nil!42904))))

(assert (=> d!1186326 (= (size!32079 Nil!42904) lt!1418806)))

(declare-fun b!4008939 () Bool)

(assert (=> b!4008939 (= e!2486120 0)))

(declare-fun b!4008940 () Bool)

(assert (=> b!4008940 (= e!2486120 (+ 1 (size!32079 (t!332653 Nil!42904))))))

(assert (= (and d!1186326 c!693204) b!4008939))

(assert (= (and d!1186326 (not c!693204)) b!4008940))

(declare-fun m!4593129 () Bool)

(assert (=> b!4008940 m!4593129))

(assert (=> b!4008412 d!1186326))

(assert (=> b!4008412 d!1186088))

(assert (=> b!4008372 d!1186162))

(declare-fun d!1186328 () Bool)

(assert (=> d!1186328 (= (head!8515 lt!1418264) (h!48324 lt!1418264))))

(assert (=> b!4008372 d!1186328))

(declare-fun d!1186330 () Bool)

(declare-fun lt!1418807 () Int)

(assert (=> d!1186330 (>= lt!1418807 0)))

(declare-fun e!2486121 () Int)

(assert (=> d!1186330 (= lt!1418807 e!2486121)))

(declare-fun c!693205 () Bool)

(assert (=> d!1186330 (= c!693205 ((_ is Nil!42904) (t!332653 (originalCharacters!7422 token!484))))))

(assert (=> d!1186330 (= (size!32079 (t!332653 (originalCharacters!7422 token!484))) lt!1418807)))

(declare-fun b!4008941 () Bool)

(assert (=> b!4008941 (= e!2486121 0)))

(declare-fun b!4008942 () Bool)

(assert (=> b!4008942 (= e!2486121 (+ 1 (size!32079 (t!332653 (t!332653 (originalCharacters!7422 token!484))))))))

(assert (= (and d!1186330 c!693205) b!4008941))

(assert (= (and d!1186330 (not c!693205)) b!4008942))

(declare-fun m!4593131 () Bool)

(assert (=> b!4008942 m!4593131))

(assert (=> b!4008452 d!1186330))

(declare-fun d!1186332 () Bool)

(declare-fun lt!1418810 () Bool)

(declare-fun content!6507 (List!43030) (InoxSet Rule!13444))

(assert (=> d!1186332 (= lt!1418810 (select (content!6507 rules!2999) (rule!9862 (_1!24163 (get!14100 lt!1418330)))))))

(declare-fun e!2486127 () Bool)

(assert (=> d!1186332 (= lt!1418810 e!2486127)))

(declare-fun res!1629348 () Bool)

(assert (=> d!1186332 (=> (not res!1629348) (not e!2486127))))

(assert (=> d!1186332 (= res!1629348 ((_ is Cons!42906) rules!2999))))

(assert (=> d!1186332 (= (contains!8529 rules!2999 (rule!9862 (_1!24163 (get!14100 lt!1418330)))) lt!1418810)))

(declare-fun b!4008947 () Bool)

(declare-fun e!2486126 () Bool)

(assert (=> b!4008947 (= e!2486127 e!2486126)))

(declare-fun res!1629347 () Bool)

(assert (=> b!4008947 (=> res!1629347 e!2486126)))

(assert (=> b!4008947 (= res!1629347 (= (h!48326 rules!2999) (rule!9862 (_1!24163 (get!14100 lt!1418330)))))))

(declare-fun b!4008948 () Bool)

(assert (=> b!4008948 (= e!2486126 (contains!8529 (t!332655 rules!2999) (rule!9862 (_1!24163 (get!14100 lt!1418330)))))))

(assert (= (and d!1186332 res!1629348) b!4008947))

(assert (= (and b!4008947 (not res!1629347)) b!4008948))

(declare-fun m!4593133 () Bool)

(assert (=> d!1186332 m!4593133))

(declare-fun m!4593135 () Bool)

(assert (=> d!1186332 m!4593135))

(declare-fun m!4593137 () Bool)

(assert (=> b!4008948 m!4593137))

(assert (=> b!4008027 d!1186332))

(assert (=> b!4008027 d!1186094))

(declare-fun d!1186336 () Bool)

(declare-fun c!693206 () Bool)

(assert (=> d!1186336 (= c!693206 ((_ is Nil!42904) lt!1418476))))

(declare-fun e!2486128 () (InoxSet C!23640))

(assert (=> d!1186336 (= (content!6506 lt!1418476) e!2486128)))

(declare-fun b!4008949 () Bool)

(assert (=> b!4008949 (= e!2486128 ((as const (Array C!23640 Bool)) false))))

(declare-fun b!4008950 () Bool)

(assert (=> b!4008950 (= e!2486128 ((_ map or) (store ((as const (Array C!23640 Bool)) false) (h!48324 lt!1418476) true) (content!6506 (t!332653 lt!1418476))))))

(assert (= (and d!1186336 c!693206) b!4008949))

(assert (= (and d!1186336 (not c!693206)) b!4008950))

(declare-fun m!4593139 () Bool)

(assert (=> b!4008950 m!4593139))

(declare-fun m!4593141 () Bool)

(assert (=> b!4008950 m!4593141))

(assert (=> d!1186016 d!1186336))

(declare-fun d!1186338 () Bool)

(declare-fun c!693207 () Bool)

(assert (=> d!1186338 (= c!693207 ((_ is Nil!42904) lt!1418251))))

(declare-fun e!2486129 () (InoxSet C!23640))

(assert (=> d!1186338 (= (content!6506 lt!1418251) e!2486129)))

(declare-fun b!4008951 () Bool)

(assert (=> b!4008951 (= e!2486129 ((as const (Array C!23640 Bool)) false))))

(declare-fun b!4008952 () Bool)

(assert (=> b!4008952 (= e!2486129 ((_ map or) (store ((as const (Array C!23640 Bool)) false) (h!48324 lt!1418251) true) (content!6506 (t!332653 lt!1418251))))))

(assert (= (and d!1186338 c!693207) b!4008951))

(assert (= (and d!1186338 (not c!693207)) b!4008952))

(declare-fun m!4593143 () Bool)

(assert (=> b!4008952 m!4593143))

(assert (=> b!4008952 m!4592651))

(assert (=> d!1186016 d!1186338))

(declare-fun d!1186340 () Bool)

(declare-fun c!693208 () Bool)

(assert (=> d!1186340 (= c!693208 ((_ is Nil!42904) newSuffixResult!27))))

(declare-fun e!2486130 () (InoxSet C!23640))

(assert (=> d!1186340 (= (content!6506 newSuffixResult!27) e!2486130)))

(declare-fun b!4008953 () Bool)

(assert (=> b!4008953 (= e!2486130 ((as const (Array C!23640 Bool)) false))))

(declare-fun b!4008954 () Bool)

(assert (=> b!4008954 (= e!2486130 ((_ map or) (store ((as const (Array C!23640 Bool)) false) (h!48324 newSuffixResult!27) true) (content!6506 (t!332653 newSuffixResult!27))))))

(assert (= (and d!1186340 c!693208) b!4008953))

(assert (= (and d!1186340 (not c!693208)) b!4008954))

(declare-fun m!4593145 () Bool)

(assert (=> b!4008954 m!4593145))

(declare-fun m!4593147 () Bool)

(assert (=> b!4008954 m!4593147))

(assert (=> d!1186016 d!1186340))

(assert (=> b!4008492 d!1186162))

(declare-fun d!1186342 () Bool)

(declare-fun c!693209 () Bool)

(assert (=> d!1186342 (= c!693209 ((_ is Nil!42904) lt!1418493))))

(declare-fun e!2486131 () (InoxSet C!23640))

(assert (=> d!1186342 (= (content!6506 lt!1418493) e!2486131)))

(declare-fun b!4008955 () Bool)

(assert (=> b!4008955 (= e!2486131 ((as const (Array C!23640 Bool)) false))))

(declare-fun b!4008956 () Bool)

(assert (=> b!4008956 (= e!2486131 ((_ map or) (store ((as const (Array C!23640 Bool)) false) (h!48324 lt!1418493) true) (content!6506 (t!332653 lt!1418493))))))

(assert (= (and d!1186342 c!693209) b!4008955))

(assert (= (and d!1186342 (not c!693209)) b!4008956))

(declare-fun m!4593149 () Bool)

(assert (=> b!4008956 m!4593149))

(declare-fun m!4593151 () Bool)

(assert (=> b!4008956 m!4593151))

(assert (=> d!1186044 d!1186342))

(assert (=> d!1186044 d!1186138))

(assert (=> d!1186044 d!1186176))

(declare-fun d!1186344 () Bool)

(declare-fun e!2486132 () Bool)

(assert (=> d!1186344 e!2486132))

(declare-fun res!1629349 () Bool)

(assert (=> d!1186344 (=> res!1629349 e!2486132)))

(declare-fun lt!1418811 () Bool)

(assert (=> d!1186344 (= res!1629349 (not lt!1418811))))

(declare-fun e!2486134 () Bool)

(assert (=> d!1186344 (= lt!1418811 e!2486134)))

(declare-fun res!1629351 () Bool)

(assert (=> d!1186344 (=> res!1629351 e!2486134)))

(assert (=> d!1186344 (= res!1629351 ((_ is Nil!42904) (tail!6247 prefix!494)))))

(assert (=> d!1186344 (= (isPrefix!3909 (tail!6247 prefix!494) (tail!6247 lt!1418276)) lt!1418811)))

(declare-fun b!4008959 () Bool)

(declare-fun e!2486133 () Bool)

(assert (=> b!4008959 (= e!2486133 (isPrefix!3909 (tail!6247 (tail!6247 prefix!494)) (tail!6247 (tail!6247 lt!1418276))))))

(declare-fun b!4008958 () Bool)

(declare-fun res!1629350 () Bool)

(assert (=> b!4008958 (=> (not res!1629350) (not e!2486133))))

(assert (=> b!4008958 (= res!1629350 (= (head!8515 (tail!6247 prefix!494)) (head!8515 (tail!6247 lt!1418276))))))

(declare-fun b!4008960 () Bool)

(assert (=> b!4008960 (= e!2486132 (>= (size!32079 (tail!6247 lt!1418276)) (size!32079 (tail!6247 prefix!494))))))

(declare-fun b!4008957 () Bool)

(assert (=> b!4008957 (= e!2486134 e!2486133)))

(declare-fun res!1629352 () Bool)

(assert (=> b!4008957 (=> (not res!1629352) (not e!2486133))))

(assert (=> b!4008957 (= res!1629352 (not ((_ is Nil!42904) (tail!6247 lt!1418276))))))

(assert (= (and d!1186344 (not res!1629351)) b!4008957))

(assert (= (and b!4008957 res!1629352) b!4008958))

(assert (= (and b!4008958 res!1629350) b!4008959))

(assert (= (and d!1186344 (not res!1629349)) b!4008960))

(assert (=> b!4008959 m!4592389))

(declare-fun m!4593153 () Bool)

(assert (=> b!4008959 m!4593153))

(assert (=> b!4008959 m!4592391))

(declare-fun m!4593155 () Bool)

(assert (=> b!4008959 m!4593155))

(assert (=> b!4008959 m!4593153))

(assert (=> b!4008959 m!4593155))

(declare-fun m!4593157 () Bool)

(assert (=> b!4008959 m!4593157))

(assert (=> b!4008958 m!4592389))

(declare-fun m!4593159 () Bool)

(assert (=> b!4008958 m!4593159))

(assert (=> b!4008958 m!4592391))

(declare-fun m!4593161 () Bool)

(assert (=> b!4008958 m!4593161))

(assert (=> b!4008960 m!4592391))

(declare-fun m!4593163 () Bool)

(assert (=> b!4008960 m!4593163))

(assert (=> b!4008960 m!4592389))

(declare-fun m!4593165 () Bool)

(assert (=> b!4008960 m!4593165))

(assert (=> b!4008427 d!1186344))

(declare-fun d!1186346 () Bool)

(assert (=> d!1186346 (= (tail!6247 prefix!494) (t!332653 prefix!494))))

(assert (=> b!4008427 d!1186346))

(declare-fun d!1186348 () Bool)

(assert (=> d!1186348 (= (tail!6247 lt!1418276) (t!332653 lt!1418276))))

(assert (=> b!4008427 d!1186348))

(declare-fun d!1186350 () Bool)

(declare-fun c!693216 () Bool)

(assert (=> d!1186350 (= c!693216 ((_ is Node!13033) (c!692980 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (value!215061 (_1!24163 (v!39601 lt!1418269)))))))))

(declare-fun e!2486153 () Bool)

(assert (=> d!1186350 (= (inv!57307 (c!692980 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (value!215061 (_1!24163 (v!39601 lt!1418269)))))) e!2486153)))

(declare-fun b!4008985 () Bool)

(declare-fun inv!57311 (Conc!13033) Bool)

(assert (=> b!4008985 (= e!2486153 (inv!57311 (c!692980 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (value!215061 (_1!24163 (v!39601 lt!1418269)))))))))

(declare-fun b!4008986 () Bool)

(declare-fun e!2486154 () Bool)

(assert (=> b!4008986 (= e!2486153 e!2486154)))

(declare-fun res!1629365 () Bool)

(assert (=> b!4008986 (= res!1629365 (not ((_ is Leaf!20151) (c!692980 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (value!215061 (_1!24163 (v!39601 lt!1418269))))))))))

(assert (=> b!4008986 (=> res!1629365 e!2486154)))

(declare-fun b!4008987 () Bool)

(declare-fun inv!57312 (Conc!13033) Bool)

(assert (=> b!4008987 (= e!2486154 (inv!57312 (c!692980 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (value!215061 (_1!24163 (v!39601 lt!1418269)))))))))

(assert (= (and d!1186350 c!693216) b!4008985))

(assert (= (and d!1186350 (not c!693216)) b!4008986))

(assert (= (and b!4008986 (not res!1629365)) b!4008987))

(declare-fun m!4593167 () Bool)

(assert (=> b!4008985 m!4593167))

(declare-fun m!4593169 () Bool)

(assert (=> b!4008987 m!4593169))

(assert (=> b!4008392 d!1186350))

(declare-fun d!1186352 () Bool)

(declare-fun e!2486162 () Bool)

(assert (=> d!1186352 e!2486162))

(declare-fun res!1629371 () Bool)

(assert (=> d!1186352 (=> res!1629371 e!2486162)))

(declare-fun lt!1418812 () Bool)

(assert (=> d!1186352 (= res!1629371 (not lt!1418812))))

(declare-fun e!2486164 () Bool)

(assert (=> d!1186352 (= lt!1418812 e!2486164)))

(declare-fun res!1629373 () Bool)

(assert (=> d!1186352 (=> res!1629373 e!2486164)))

(assert (=> d!1186352 (= res!1629373 ((_ is Nil!42904) prefix!494))))

(assert (=> d!1186352 (= (isPrefix!3909 prefix!494 (++!11224 prefix!494 suffix!1299)) lt!1418812)))

(declare-fun b!4008999 () Bool)

(declare-fun e!2486163 () Bool)

(assert (=> b!4008999 (= e!2486163 (isPrefix!3909 (tail!6247 prefix!494) (tail!6247 (++!11224 prefix!494 suffix!1299))))))

(declare-fun b!4008998 () Bool)

(declare-fun res!1629372 () Bool)

(assert (=> b!4008998 (=> (not res!1629372) (not e!2486163))))

(assert (=> b!4008998 (= res!1629372 (= (head!8515 prefix!494) (head!8515 (++!11224 prefix!494 suffix!1299))))))

(declare-fun b!4009000 () Bool)

(assert (=> b!4009000 (= e!2486162 (>= (size!32079 (++!11224 prefix!494 suffix!1299)) (size!32079 prefix!494)))))

(declare-fun b!4008997 () Bool)

(assert (=> b!4008997 (= e!2486164 e!2486163)))

(declare-fun res!1629374 () Bool)

(assert (=> b!4008997 (=> (not res!1629374) (not e!2486163))))

(assert (=> b!4008997 (= res!1629374 (not ((_ is Nil!42904) (++!11224 prefix!494 suffix!1299))))))

(assert (= (and d!1186352 (not res!1629373)) b!4008997))

(assert (= (and b!4008997 res!1629374) b!4008998))

(assert (= (and b!4008998 res!1629372) b!4008999))

(assert (= (and d!1186352 (not res!1629371)) b!4009000))

(assert (=> b!4008999 m!4592389))

(assert (=> b!4008999 m!4591479))

(declare-fun m!4593171 () Bool)

(assert (=> b!4008999 m!4593171))

(assert (=> b!4008999 m!4592389))

(assert (=> b!4008999 m!4593171))

(declare-fun m!4593175 () Bool)

(assert (=> b!4008999 m!4593175))

(assert (=> b!4008998 m!4592395))

(assert (=> b!4008998 m!4591479))

(declare-fun m!4593179 () Bool)

(assert (=> b!4008998 m!4593179))

(assert (=> b!4009000 m!4591479))

(declare-fun m!4593183 () Bool)

(assert (=> b!4009000 m!4593183))

(assert (=> b!4009000 m!4591497))

(assert (=> d!1186038 d!1186352))

(assert (=> d!1186038 d!1185828))

(declare-fun d!1186356 () Bool)

(assert (=> d!1186356 (isPrefix!3909 prefix!494 (++!11224 prefix!494 suffix!1299))))

(assert (=> d!1186356 true))

(declare-fun _$46!1649 () Unit!61905)

(assert (=> d!1186356 (= (choose!24205 prefix!494 suffix!1299) _$46!1649)))

(declare-fun bs!589204 () Bool)

(assert (= bs!589204 d!1186356))

(assert (=> bs!589204 m!4591479))

(assert (=> bs!589204 m!4591479))

(assert (=> bs!589204 m!4592403))

(assert (=> d!1186038 d!1186356))

(declare-fun d!1186358 () Bool)

(declare-fun lt!1418814 () Int)

(assert (=> d!1186358 (>= lt!1418814 0)))

(declare-fun e!2486168 () Int)

(assert (=> d!1186358 (= lt!1418814 e!2486168)))

(declare-fun c!693219 () Bool)

(assert (=> d!1186358 (= c!693219 ((_ is Nil!42904) lt!1418346))))

(assert (=> d!1186358 (= (size!32079 lt!1418346) lt!1418814)))

(declare-fun b!4009005 () Bool)

(assert (=> b!4009005 (= e!2486168 0)))

(declare-fun b!4009006 () Bool)

(assert (=> b!4009006 (= e!2486168 (+ 1 (size!32079 (t!332653 lt!1418346))))))

(assert (= (and d!1186358 c!693219) b!4009005))

(assert (= (and d!1186358 (not c!693219)) b!4009006))

(declare-fun m!4593185 () Bool)

(assert (=> b!4009006 m!4593185))

(assert (=> b!4008062 d!1186358))

(assert (=> b!4008062 d!1185984))

(declare-fun d!1186360 () Bool)

(declare-fun lt!1418815 () Int)

(assert (=> d!1186360 (>= lt!1418815 0)))

(declare-fun e!2486169 () Int)

(assert (=> d!1186360 (= lt!1418815 e!2486169)))

(declare-fun c!693220 () Bool)

(assert (=> d!1186360 (= c!693220 ((_ is Nil!42904) suffixResult!105))))

(assert (=> d!1186360 (= (size!32079 suffixResult!105) lt!1418815)))

(declare-fun b!4009007 () Bool)

(assert (=> b!4009007 (= e!2486169 0)))

(declare-fun b!4009008 () Bool)

(assert (=> b!4009008 (= e!2486169 (+ 1 (size!32079 (t!332653 suffixResult!105))))))

(assert (= (and d!1186360 c!693220) b!4009007))

(assert (= (and d!1186360 (not c!693220)) b!4009008))

(declare-fun m!4593191 () Bool)

(assert (=> b!4009008 m!4593191))

(assert (=> b!4008062 d!1186360))

(declare-fun d!1186362 () Bool)

(declare-fun e!2486170 () Bool)

(assert (=> d!1186362 e!2486170))

(declare-fun res!1629379 () Bool)

(assert (=> d!1186362 (=> res!1629379 e!2486170)))

(declare-fun lt!1418816 () Bool)

(assert (=> d!1186362 (= res!1629379 (not lt!1418816))))

(declare-fun e!2486172 () Bool)

(assert (=> d!1186362 (= lt!1418816 e!2486172)))

(declare-fun res!1629381 () Bool)

(assert (=> d!1186362 (=> res!1629381 e!2486172)))

(assert (=> d!1186362 (= res!1629381 ((_ is Nil!42904) (tail!6247 lt!1418251)))))

(assert (=> d!1186362 (= (isPrefix!3909 (tail!6247 lt!1418251) (tail!6247 (++!11224 lt!1418251 (_2!24163 (v!39601 lt!1418269))))) lt!1418816)))

(declare-fun b!4009011 () Bool)

(declare-fun e!2486171 () Bool)

(assert (=> b!4009011 (= e!2486171 (isPrefix!3909 (tail!6247 (tail!6247 lt!1418251)) (tail!6247 (tail!6247 (++!11224 lt!1418251 (_2!24163 (v!39601 lt!1418269)))))))))

(declare-fun b!4009010 () Bool)

(declare-fun res!1629380 () Bool)

(assert (=> b!4009010 (=> (not res!1629380) (not e!2486171))))

(assert (=> b!4009010 (= res!1629380 (= (head!8515 (tail!6247 lt!1418251)) (head!8515 (tail!6247 (++!11224 lt!1418251 (_2!24163 (v!39601 lt!1418269)))))))))

(declare-fun b!4009012 () Bool)

(assert (=> b!4009012 (= e!2486170 (>= (size!32079 (tail!6247 (++!11224 lt!1418251 (_2!24163 (v!39601 lt!1418269))))) (size!32079 (tail!6247 lt!1418251))))))

(declare-fun b!4009009 () Bool)

(assert (=> b!4009009 (= e!2486172 e!2486171)))

(declare-fun res!1629382 () Bool)

(assert (=> b!4009009 (=> (not res!1629382) (not e!2486171))))

(assert (=> b!4009009 (= res!1629382 (not ((_ is Nil!42904) (tail!6247 (++!11224 lt!1418251 (_2!24163 (v!39601 lt!1418269)))))))))

(assert (= (and d!1186362 (not res!1629381)) b!4009009))

(assert (= (and b!4009009 res!1629382) b!4009010))

(assert (= (and b!4009010 res!1629380) b!4009011))

(assert (= (and d!1186362 (not res!1629379)) b!4009012))

(assert (=> b!4009011 m!4592303))

(declare-fun m!4593197 () Bool)

(assert (=> b!4009011 m!4593197))

(assert (=> b!4009011 m!4592305))

(declare-fun m!4593199 () Bool)

(assert (=> b!4009011 m!4593199))

(assert (=> b!4009011 m!4593197))

(assert (=> b!4009011 m!4593199))

(declare-fun m!4593201 () Bool)

(assert (=> b!4009011 m!4593201))

(assert (=> b!4009010 m!4592303))

(declare-fun m!4593203 () Bool)

(assert (=> b!4009010 m!4593203))

(assert (=> b!4009010 m!4592305))

(declare-fun m!4593205 () Bool)

(assert (=> b!4009010 m!4593205))

(assert (=> b!4009012 m!4592305))

(declare-fun m!4593207 () Bool)

(assert (=> b!4009012 m!4593207))

(assert (=> b!4009012 m!4592303))

(declare-fun m!4593209 () Bool)

(assert (=> b!4009012 m!4593209))

(assert (=> b!4008399 d!1186362))

(declare-fun d!1186368 () Bool)

(assert (=> d!1186368 (= (tail!6247 lt!1418251) (t!332653 lt!1418251))))

(assert (=> b!4008399 d!1186368))

(declare-fun d!1186370 () Bool)

(assert (=> d!1186370 (= (tail!6247 (++!11224 lt!1418251 (_2!24163 (v!39601 lt!1418269)))) (t!332653 (++!11224 lt!1418251 (_2!24163 (v!39601 lt!1418269)))))))

(assert (=> b!4008399 d!1186370))

(declare-fun b!4009026 () Bool)

(declare-fun e!2486181 () List!43028)

(declare-fun e!2486182 () List!43028)

(assert (=> b!4009026 (= e!2486181 e!2486182)))

(declare-fun c!693226 () Bool)

(assert (=> b!4009026 (= c!693226 ((_ is Leaf!20151) (c!692980 (charsOf!4638 token!484))))))

(declare-fun d!1186372 () Bool)

(declare-fun c!693225 () Bool)

(assert (=> d!1186372 (= c!693225 ((_ is Empty!13033) (c!692980 (charsOf!4638 token!484))))))

(assert (=> d!1186372 (= (list!15944 (c!692980 (charsOf!4638 token!484))) e!2486181)))

(declare-fun b!4009028 () Bool)

(assert (=> b!4009028 (= e!2486182 (++!11224 (list!15944 (left!32370 (c!692980 (charsOf!4638 token!484)))) (list!15944 (right!32700 (c!692980 (charsOf!4638 token!484))))))))

(declare-fun b!4009025 () Bool)

(assert (=> b!4009025 (= e!2486181 Nil!42904)))

(declare-fun b!4009027 () Bool)

(declare-fun list!15945 (IArray!26071) List!43028)

(assert (=> b!4009027 (= e!2486182 (list!15945 (xs!16339 (c!692980 (charsOf!4638 token!484)))))))

(assert (= (and d!1186372 c!693225) b!4009025))

(assert (= (and d!1186372 (not c!693225)) b!4009026))

(assert (= (and b!4009026 c!693226) b!4009027))

(assert (= (and b!4009026 (not c!693226)) b!4009028))

(declare-fun m!4593211 () Bool)

(assert (=> b!4009028 m!4593211))

(declare-fun m!4593213 () Bool)

(assert (=> b!4009028 m!4593213))

(assert (=> b!4009028 m!4593211))

(assert (=> b!4009028 m!4593213))

(declare-fun m!4593215 () Bool)

(assert (=> b!4009028 m!4593215))

(declare-fun m!4593217 () Bool)

(assert (=> b!4009027 m!4593217))

(assert (=> d!1185988 d!1186372))

(declare-fun b!4009031 () Bool)

(declare-fun e!2486190 () Bool)

(assert (=> b!4009031 (= e!2486190 (not (= (head!8515 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418330))))) (c!692981 (regex!6822 (rule!9862 (_1!24163 (get!14100 lt!1418330))))))))))

(declare-fun bm!286316 () Bool)

(declare-fun call!286321 () Bool)

(assert (=> bm!286316 (= call!286321 (isEmpty!25634 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418330))))))))

(declare-fun b!4009032 () Bool)

(declare-fun e!2486185 () Bool)

(assert (=> b!4009032 (= e!2486185 (nullable!4114 (regex!6822 (rule!9862 (_1!24163 (get!14100 lt!1418330))))))))

(declare-fun b!4009033 () Bool)

(declare-fun res!1629393 () Bool)

(declare-fun e!2486186 () Bool)

(assert (=> b!4009033 (=> (not res!1629393) (not e!2486186))))

(assert (=> b!4009033 (= res!1629393 (not call!286321))))

(declare-fun d!1186376 () Bool)

(declare-fun e!2486188 () Bool)

(assert (=> d!1186376 e!2486188))

(declare-fun c!693227 () Bool)

(assert (=> d!1186376 (= c!693227 ((_ is EmptyExpr!11727) (regex!6822 (rule!9862 (_1!24163 (get!14100 lt!1418330))))))))

(declare-fun lt!1418820 () Bool)

(assert (=> d!1186376 (= lt!1418820 e!2486185)))

(declare-fun c!693229 () Bool)

(assert (=> d!1186376 (= c!693229 (isEmpty!25634 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418330))))))))

(assert (=> d!1186376 (validRegex!5314 (regex!6822 (rule!9862 (_1!24163 (get!14100 lt!1418330)))))))

(assert (=> d!1186376 (= (matchR!5688 (regex!6822 (rule!9862 (_1!24163 (get!14100 lt!1418330)))) (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418330))))) lt!1418820)))

(declare-fun b!4009034 () Bool)

(assert (=> b!4009034 (= e!2486185 (matchR!5688 (derivativeStep!3523 (regex!6822 (rule!9862 (_1!24163 (get!14100 lt!1418330)))) (head!8515 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418330)))))) (tail!6247 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418330)))))))))

(declare-fun b!4009035 () Bool)

(declare-fun res!1629396 () Bool)

(assert (=> b!4009035 (=> (not res!1629396) (not e!2486186))))

(assert (=> b!4009035 (= res!1629396 (isEmpty!25634 (tail!6247 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418330)))))))))

(declare-fun b!4009036 () Bool)

(declare-fun res!1629395 () Bool)

(assert (=> b!4009036 (=> res!1629395 e!2486190)))

(assert (=> b!4009036 (= res!1629395 (not (isEmpty!25634 (tail!6247 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418330))))))))))

(declare-fun b!4009037 () Bool)

(declare-fun e!2486189 () Bool)

(assert (=> b!4009037 (= e!2486189 e!2486190)))

(declare-fun res!1629391 () Bool)

(assert (=> b!4009037 (=> res!1629391 e!2486190)))

(assert (=> b!4009037 (= res!1629391 call!286321)))

(declare-fun b!4009038 () Bool)

(assert (=> b!4009038 (= e!2486186 (= (head!8515 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418330))))) (c!692981 (regex!6822 (rule!9862 (_1!24163 (get!14100 lt!1418330)))))))))

(declare-fun b!4009039 () Bool)

(declare-fun e!2486191 () Bool)

(assert (=> b!4009039 (= e!2486191 e!2486189)))

(declare-fun res!1629390 () Bool)

(assert (=> b!4009039 (=> (not res!1629390) (not e!2486189))))

(assert (=> b!4009039 (= res!1629390 (not lt!1418820))))

(declare-fun b!4009040 () Bool)

(declare-fun e!2486187 () Bool)

(assert (=> b!4009040 (= e!2486187 (not lt!1418820))))

(declare-fun b!4009041 () Bool)

(assert (=> b!4009041 (= e!2486188 (= lt!1418820 call!286321))))

(declare-fun b!4009042 () Bool)

(declare-fun res!1629394 () Bool)

(assert (=> b!4009042 (=> res!1629394 e!2486191)))

(assert (=> b!4009042 (= res!1629394 e!2486186)))

(declare-fun res!1629389 () Bool)

(assert (=> b!4009042 (=> (not res!1629389) (not e!2486186))))

(assert (=> b!4009042 (= res!1629389 lt!1418820)))

(declare-fun b!4009043 () Bool)

(assert (=> b!4009043 (= e!2486188 e!2486187)))

(declare-fun c!693228 () Bool)

(assert (=> b!4009043 (= c!693228 ((_ is EmptyLang!11727) (regex!6822 (rule!9862 (_1!24163 (get!14100 lt!1418330))))))))

(declare-fun b!4009044 () Bool)

(declare-fun res!1629392 () Bool)

(assert (=> b!4009044 (=> res!1629392 e!2486191)))

(assert (=> b!4009044 (= res!1629392 (not ((_ is ElementMatch!11727) (regex!6822 (rule!9862 (_1!24163 (get!14100 lt!1418330)))))))))

(assert (=> b!4009044 (= e!2486187 e!2486191)))

(assert (= (and d!1186376 c!693229) b!4009032))

(assert (= (and d!1186376 (not c!693229)) b!4009034))

(assert (= (and d!1186376 c!693227) b!4009041))

(assert (= (and d!1186376 (not c!693227)) b!4009043))

(assert (= (and b!4009043 c!693228) b!4009040))

(assert (= (and b!4009043 (not c!693228)) b!4009044))

(assert (= (and b!4009044 (not res!1629392)) b!4009042))

(assert (= (and b!4009042 res!1629389) b!4009033))

(assert (= (and b!4009033 res!1629393) b!4009035))

(assert (= (and b!4009035 res!1629396) b!4009038))

(assert (= (and b!4009042 (not res!1629394)) b!4009039))

(assert (= (and b!4009039 res!1629390) b!4009037))

(assert (= (and b!4009037 (not res!1629391)) b!4009036))

(assert (= (and b!4009036 (not res!1629395)) b!4009031))

(assert (= (or b!4009041 b!4009033 b!4009037) bm!286316))

(assert (=> d!1186376 m!4591669))

(declare-fun m!4593227 () Bool)

(assert (=> d!1186376 m!4593227))

(declare-fun m!4593229 () Bool)

(assert (=> d!1186376 m!4593229))

(assert (=> b!4009038 m!4591669))

(declare-fun m!4593231 () Bool)

(assert (=> b!4009038 m!4593231))

(assert (=> b!4009036 m!4591669))

(declare-fun m!4593233 () Bool)

(assert (=> b!4009036 m!4593233))

(assert (=> b!4009036 m!4593233))

(declare-fun m!4593237 () Bool)

(assert (=> b!4009036 m!4593237))

(assert (=> b!4009035 m!4591669))

(assert (=> b!4009035 m!4593233))

(assert (=> b!4009035 m!4593233))

(assert (=> b!4009035 m!4593237))

(declare-fun m!4593239 () Bool)

(assert (=> b!4009032 m!4593239))

(assert (=> b!4009031 m!4591669))

(assert (=> b!4009031 m!4593231))

(assert (=> bm!286316 m!4591669))

(assert (=> bm!286316 m!4593227))

(assert (=> b!4009034 m!4591669))

(assert (=> b!4009034 m!4593231))

(assert (=> b!4009034 m!4593231))

(declare-fun m!4593243 () Bool)

(assert (=> b!4009034 m!4593243))

(assert (=> b!4009034 m!4591669))

(assert (=> b!4009034 m!4593233))

(assert (=> b!4009034 m!4593243))

(assert (=> b!4009034 m!4593233))

(declare-fun m!4593247 () Bool)

(assert (=> b!4009034 m!4593247))

(assert (=> b!4008023 d!1186376))

(assert (=> b!4008023 d!1186094))

(assert (=> b!4008023 d!1186090))

(assert (=> b!4008023 d!1186092))

(declare-fun d!1186386 () Bool)

(declare-fun lt!1418823 () Int)

(assert (=> d!1186386 (>= lt!1418823 0)))

(declare-fun e!2486195 () Int)

(assert (=> d!1186386 (= lt!1418823 e!2486195)))

(declare-fun c!693232 () Bool)

(assert (=> d!1186386 (= c!693232 ((_ is Nil!42904) lt!1418518))))

(assert (=> d!1186386 (= (size!32079 lt!1418518) lt!1418823)))

(declare-fun b!4009049 () Bool)

(assert (=> b!4009049 (= e!2486195 0)))

(declare-fun b!4009050 () Bool)

(assert (=> b!4009050 (= e!2486195 (+ 1 (size!32079 (t!332653 lt!1418518))))))

(assert (= (and d!1186386 c!693232) b!4009049))

(assert (= (and d!1186386 (not c!693232)) b!4009050))

(declare-fun m!4593251 () Bool)

(assert (=> b!4009050 m!4593251))

(assert (=> b!4008520 d!1186386))

(declare-fun d!1186390 () Bool)

(declare-fun lt!1418825 () Int)

(assert (=> d!1186390 (>= lt!1418825 0)))

(declare-fun e!2486198 () Int)

(assert (=> d!1186390 (= lt!1418825 e!2486198)))

(declare-fun c!693234 () Bool)

(assert (=> d!1186390 (= c!693234 ((_ is Nil!42904) lt!1418281))))

(assert (=> d!1186390 (= (size!32079 lt!1418281) lt!1418825)))

(declare-fun b!4009055 () Bool)

(assert (=> b!4009055 (= e!2486198 0)))

(declare-fun b!4009056 () Bool)

(assert (=> b!4009056 (= e!2486198 (+ 1 (size!32079 (t!332653 lt!1418281))))))

(assert (= (and d!1186390 c!693234) b!4009055))

(assert (= (and d!1186390 (not c!693234)) b!4009056))

(assert (=> b!4009056 m!4592559))

(assert (=> b!4008520 d!1186390))

(assert (=> b!4008520 d!1186030))

(declare-fun d!1186392 () Bool)

(declare-fun e!2486199 () Bool)

(assert (=> d!1186392 e!2486199))

(declare-fun res!1629399 () Bool)

(assert (=> d!1186392 (=> res!1629399 e!2486199)))

(declare-fun lt!1418826 () Bool)

(assert (=> d!1186392 (= res!1629399 (not lt!1418826))))

(declare-fun e!2486201 () Bool)

(assert (=> d!1186392 (= lt!1418826 e!2486201)))

(declare-fun res!1629401 () Bool)

(assert (=> d!1186392 (=> res!1629401 e!2486201)))

(assert (=> d!1186392 (= res!1629401 ((_ is Nil!42904) (tail!6247 lt!1418276)))))

(assert (=> d!1186392 (= (isPrefix!3909 (tail!6247 lt!1418276) (tail!6247 lt!1418276)) lt!1418826)))

(declare-fun b!4009059 () Bool)

(declare-fun e!2486200 () Bool)

(assert (=> b!4009059 (= e!2486200 (isPrefix!3909 (tail!6247 (tail!6247 lt!1418276)) (tail!6247 (tail!6247 lt!1418276))))))

(declare-fun b!4009058 () Bool)

(declare-fun res!1629400 () Bool)

(assert (=> b!4009058 (=> (not res!1629400) (not e!2486200))))

(assert (=> b!4009058 (= res!1629400 (= (head!8515 (tail!6247 lt!1418276)) (head!8515 (tail!6247 lt!1418276))))))

(declare-fun b!4009060 () Bool)

(assert (=> b!4009060 (= e!2486199 (>= (size!32079 (tail!6247 lt!1418276)) (size!32079 (tail!6247 lt!1418276))))))

(declare-fun b!4009057 () Bool)

(assert (=> b!4009057 (= e!2486201 e!2486200)))

(declare-fun res!1629402 () Bool)

(assert (=> b!4009057 (=> (not res!1629402) (not e!2486200))))

(assert (=> b!4009057 (= res!1629402 (not ((_ is Nil!42904) (tail!6247 lt!1418276))))))

(assert (= (and d!1186392 (not res!1629401)) b!4009057))

(assert (= (and b!4009057 res!1629402) b!4009058))

(assert (= (and b!4009058 res!1629400) b!4009059))

(assert (= (and d!1186392 (not res!1629399)) b!4009060))

(assert (=> b!4009059 m!4592391))

(assert (=> b!4009059 m!4593155))

(assert (=> b!4009059 m!4592391))

(assert (=> b!4009059 m!4593155))

(assert (=> b!4009059 m!4593155))

(assert (=> b!4009059 m!4593155))

(declare-fun m!4593259 () Bool)

(assert (=> b!4009059 m!4593259))

(assert (=> b!4009058 m!4592391))

(assert (=> b!4009058 m!4593161))

(assert (=> b!4009058 m!4592391))

(assert (=> b!4009058 m!4593161))

(assert (=> b!4009060 m!4592391))

(assert (=> b!4009060 m!4593163))

(assert (=> b!4009060 m!4592391))

(assert (=> b!4009060 m!4593163))

(assert (=> b!4008462 d!1186392))

(assert (=> b!4008462 d!1186348))

(assert (=> b!4008370 d!1186156))

(declare-fun d!1186396 () Bool)

(assert (=> d!1186396 (= (apply!10019 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418457)))) (seqFromList!5047 (originalCharacters!7422 (_1!24163 (get!14100 lt!1418457))))) (dynLambda!18200 (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418457))))) (seqFromList!5047 (originalCharacters!7422 (_1!24163 (get!14100 lt!1418457))))))))

(declare-fun b_lambda!116973 () Bool)

(assert (=> (not b_lambda!116973) (not d!1186396)))

(declare-fun tb!241007 () Bool)

(declare-fun t!332787 () Bool)

(assert (=> (and b!4007875 (= (toValue!9322 (transformation!6822 (h!48326 rules!2999))) (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418457)))))) t!332787) tb!241007))

(declare-fun result!292116 () Bool)

(assert (=> tb!241007 (= result!292116 (inv!21 (dynLambda!18200 (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418457))))) (seqFromList!5047 (originalCharacters!7422 (_1!24163 (get!14100 lt!1418457)))))))))

(declare-fun m!4593269 () Bool)

(assert (=> tb!241007 m!4593269))

(assert (=> d!1186396 t!332787))

(declare-fun b_and!307961 () Bool)

(assert (= b_and!307863 (and (=> t!332787 result!292116) b_and!307961)))

(declare-fun t!332789 () Bool)

(declare-fun tb!241009 () Bool)

(assert (=> (and b!4007900 (= (toValue!9322 (transformation!6822 (rule!9862 token!484))) (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418457)))))) t!332789) tb!241009))

(declare-fun result!292118 () Bool)

(assert (= result!292118 result!292116))

(assert (=> d!1186396 t!332789))

(declare-fun b_and!307963 () Bool)

(assert (= b_and!307865 (and (=> t!332789 result!292118) b_and!307963)))

(declare-fun t!332791 () Bool)

(declare-fun tb!241011 () Bool)

(assert (=> (and b!4008556 (= (toValue!9322 (transformation!6822 (h!48326 (t!332655 rules!2999)))) (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418457)))))) t!332791) tb!241011))

(declare-fun result!292120 () Bool)

(assert (= result!292120 result!292116))

(assert (=> d!1186396 t!332791))

(declare-fun b_and!307965 () Bool)

(assert (= b_and!307867 (and (=> t!332791 result!292120) b_and!307965)))

(assert (=> d!1186396 m!4592221))

(declare-fun m!4593271 () Bool)

(assert (=> d!1186396 m!4593271))

(assert (=> b!4008370 d!1186396))

(declare-fun d!1186402 () Bool)

(assert (=> d!1186402 (= (seqFromList!5047 (originalCharacters!7422 (_1!24163 (get!14100 lt!1418457)))) (fromListB!2312 (originalCharacters!7422 (_1!24163 (get!14100 lt!1418457)))))))

(declare-fun bs!589211 () Bool)

(assert (= bs!589211 d!1186402))

(declare-fun m!4593275 () Bool)

(assert (=> bs!589211 m!4593275))

(assert (=> b!4008370 d!1186402))

(declare-fun d!1186406 () Bool)

(declare-fun lt!1418829 () Int)

(assert (=> d!1186406 (>= lt!1418829 0)))

(declare-fun e!2486207 () Int)

(assert (=> d!1186406 (= lt!1418829 e!2486207)))

(declare-fun c!693236 () Bool)

(assert (=> d!1186406 (= c!693236 ((_ is Nil!42904) (t!332653 prefix!494)))))

(assert (=> d!1186406 (= (size!32079 (t!332653 prefix!494)) lt!1418829)))

(declare-fun b!4009067 () Bool)

(assert (=> b!4009067 (= e!2486207 0)))

(declare-fun b!4009068 () Bool)

(assert (=> b!4009068 (= e!2486207 (+ 1 (size!32079 (t!332653 (t!332653 prefix!494)))))))

(assert (= (and d!1186406 c!693236) b!4009067))

(assert (= (and d!1186406 (not c!693236)) b!4009068))

(declare-fun m!4593279 () Bool)

(assert (=> b!4009068 m!4593279))

(assert (=> b!4008386 d!1186406))

(assert (=> b!4008249 d!1186134))

(assert (=> d!1185958 d!1185854))

(assert (=> d!1185958 d!1185980))

(assert (=> d!1185958 d!1185858))

(declare-fun d!1186410 () Bool)

(assert (=> d!1186410 (= (maxPrefixOneRule!2729 thiss!21717 (rule!9862 token!484) lt!1418276) (Some!9235 (tuple2!42059 (Token!12783 (apply!10019 (transformation!6822 (rule!9862 token!484)) (seqFromList!5047 lt!1418254)) (rule!9862 token!484) (size!32079 lt!1418254) lt!1418254) suffixResult!105)))))

(assert (=> d!1186410 true))

(declare-fun _$59!647 () Unit!61905)

(assert (=> d!1186410 (= (choose!24209 thiss!21717 rules!2999 lt!1418254 lt!1418276 suffixResult!105 (rule!9862 token!484)) _$59!647)))

(declare-fun bs!589213 () Bool)

(assert (= bs!589213 d!1186410))

(assert (=> bs!589213 m!4591425))

(assert (=> bs!589213 m!4591427))

(assert (=> bs!589213 m!4591427))

(assert (=> bs!589213 m!4591435))

(assert (=> bs!589213 m!4591495))

(assert (=> d!1185958 d!1186410))

(assert (=> d!1185958 d!1185960))

(assert (=> d!1185958 d!1185984))

(declare-fun d!1186438 () Bool)

(declare-fun e!2486236 () Bool)

(assert (=> d!1186438 e!2486236))

(declare-fun res!1629432 () Bool)

(assert (=> d!1186438 (=> res!1629432 e!2486236)))

(declare-fun lt!1418846 () Bool)

(assert (=> d!1186438 (= res!1629432 (not lt!1418846))))

(declare-fun e!2486238 () Bool)

(assert (=> d!1186438 (= lt!1418846 e!2486238)))

(declare-fun res!1629434 () Bool)

(assert (=> d!1186438 (=> res!1629434 e!2486238)))

(assert (=> d!1186438 (= res!1629434 ((_ is Nil!42904) lt!1418254))))

(assert (=> d!1186438 (= (isPrefix!3909 lt!1418254 (++!11224 lt!1418254 suffixResult!105)) lt!1418846)))

(declare-fun b!4009122 () Bool)

(declare-fun e!2486237 () Bool)

(assert (=> b!4009122 (= e!2486237 (isPrefix!3909 (tail!6247 lt!1418254) (tail!6247 (++!11224 lt!1418254 suffixResult!105))))))

(declare-fun b!4009121 () Bool)

(declare-fun res!1629433 () Bool)

(assert (=> b!4009121 (=> (not res!1629433) (not e!2486237))))

(assert (=> b!4009121 (= res!1629433 (= (head!8515 lt!1418254) (head!8515 (++!11224 lt!1418254 suffixResult!105))))))

(declare-fun b!4009123 () Bool)

(assert (=> b!4009123 (= e!2486236 (>= (size!32079 (++!11224 lt!1418254 suffixResult!105)) (size!32079 lt!1418254)))))

(declare-fun b!4009120 () Bool)

(assert (=> b!4009120 (= e!2486238 e!2486237)))

(declare-fun res!1629435 () Bool)

(assert (=> b!4009120 (=> (not res!1629435) (not e!2486237))))

(assert (=> b!4009120 (= res!1629435 (not ((_ is Nil!42904) (++!11224 lt!1418254 suffixResult!105))))))

(assert (= (and d!1186438 (not res!1629434)) b!4009120))

(assert (= (and b!4009120 res!1629435) b!4009121))

(assert (= (and b!4009121 res!1629433) b!4009122))

(assert (= (and d!1186438 (not res!1629432)) b!4009123))

(assert (=> b!4009122 m!4592151))

(assert (=> b!4009122 m!4591463))

(declare-fun m!4593353 () Bool)

(assert (=> b!4009122 m!4593353))

(assert (=> b!4009122 m!4592151))

(assert (=> b!4009122 m!4593353))

(declare-fun m!4593355 () Bool)

(assert (=> b!4009122 m!4593355))

(assert (=> b!4009121 m!4592157))

(assert (=> b!4009121 m!4591463))

(declare-fun m!4593357 () Bool)

(assert (=> b!4009121 m!4593357))

(assert (=> b!4009123 m!4591463))

(declare-fun m!4593361 () Bool)

(assert (=> b!4009123 m!4593361))

(assert (=> b!4009123 m!4591495))

(assert (=> d!1186036 d!1186438))

(assert (=> d!1186036 d!1185830))

(declare-fun d!1186440 () Bool)

(assert (=> d!1186440 (isPrefix!3909 lt!1418254 (++!11224 lt!1418254 suffixResult!105))))

(assert (=> d!1186440 true))

(declare-fun _$46!1651 () Unit!61905)

(assert (=> d!1186440 (= (choose!24205 lt!1418254 suffixResult!105) _$46!1651)))

(declare-fun bs!589214 () Bool)

(assert (= bs!589214 d!1186440))

(assert (=> bs!589214 m!4591463))

(assert (=> bs!589214 m!4591463))

(assert (=> bs!589214 m!4592399))

(assert (=> d!1186036 d!1186440))

(declare-fun d!1186442 () Bool)

(declare-fun res!1629447 () Bool)

(declare-fun e!2486247 () Bool)

(assert (=> d!1186442 (=> res!1629447 e!2486247)))

(assert (=> d!1186442 (= res!1629447 ((_ is Nil!42906) rules!2999))))

(assert (=> d!1186442 (= (noDuplicateTag!2655 thiss!21717 rules!2999 Nil!42907) e!2486247)))

(declare-fun b!4009137 () Bool)

(declare-fun e!2486248 () Bool)

(assert (=> b!4009137 (= e!2486247 e!2486248)))

(declare-fun res!1629448 () Bool)

(assert (=> b!4009137 (=> (not res!1629448) (not e!2486248))))

(declare-fun contains!8531 (List!43031 String!48978) Bool)

(assert (=> b!4009137 (= res!1629448 (not (contains!8531 Nil!42907 (tag!7682 (h!48326 rules!2999)))))))

(declare-fun b!4009138 () Bool)

(assert (=> b!4009138 (= e!2486248 (noDuplicateTag!2655 thiss!21717 (t!332655 rules!2999) (Cons!42907 (tag!7682 (h!48326 rules!2999)) Nil!42907)))))

(assert (= (and d!1186442 (not res!1629447)) b!4009137))

(assert (= (and b!4009137 res!1629448) b!4009138))

(declare-fun m!4593389 () Bool)

(assert (=> b!4009137 m!4593389))

(declare-fun m!4593391 () Bool)

(assert (=> b!4009138 m!4593391))

(assert (=> b!4008389 d!1186442))

(assert (=> b!4008434 d!1186162))

(declare-fun d!1186446 () Bool)

(assert (=> d!1186446 (= (head!8515 lt!1418284) (h!48324 lt!1418284))))

(assert (=> b!4008434 d!1186446))

(declare-fun b!4009139 () Bool)

(declare-fun res!1629450 () Bool)

(declare-fun e!2486250 () Bool)

(assert (=> b!4009139 (=> (not res!1629450) (not e!2486250))))

(declare-fun lt!1418854 () Option!9236)

(assert (=> b!4009139 (= res!1629450 (< (size!32079 (_2!24163 (get!14100 lt!1418854))) (size!32079 lt!1418249)))))

(declare-fun b!4009140 () Bool)

(declare-fun res!1629454 () Bool)

(assert (=> b!4009140 (=> (not res!1629454) (not e!2486250))))

(assert (=> b!4009140 (= res!1629454 (= (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418854)))) (originalCharacters!7422 (_1!24163 (get!14100 lt!1418854)))))))

(declare-fun d!1186448 () Bool)

(declare-fun e!2486249 () Bool)

(assert (=> d!1186448 e!2486249))

(declare-fun res!1629451 () Bool)

(assert (=> d!1186448 (=> res!1629451 e!2486249)))

(assert (=> d!1186448 (= res!1629451 (isEmpty!25632 lt!1418854))))

(declare-fun e!2486251 () Option!9236)

(assert (=> d!1186448 (= lt!1418854 e!2486251)))

(declare-fun c!693252 () Bool)

(assert (=> d!1186448 (= c!693252 (and ((_ is Cons!42906) (t!332655 rules!2999)) ((_ is Nil!42906) (t!332655 (t!332655 rules!2999)))))))

(declare-fun lt!1418856 () Unit!61905)

(declare-fun lt!1418853 () Unit!61905)

(assert (=> d!1186448 (= lt!1418856 lt!1418853)))

(assert (=> d!1186448 (isPrefix!3909 lt!1418249 lt!1418249)))

(assert (=> d!1186448 (= lt!1418853 (lemmaIsPrefixRefl!2485 lt!1418249 lt!1418249))))

(assert (=> d!1186448 (rulesValidInductive!2486 thiss!21717 (t!332655 rules!2999))))

(assert (=> d!1186448 (= (maxPrefix!3709 thiss!21717 (t!332655 rules!2999) lt!1418249) lt!1418854)))

(declare-fun b!4009141 () Bool)

(declare-fun res!1629455 () Bool)

(assert (=> b!4009141 (=> (not res!1629455) (not e!2486250))))

(assert (=> b!4009141 (= res!1629455 (matchR!5688 (regex!6822 (rule!9862 (_1!24163 (get!14100 lt!1418854)))) (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418854))))))))

(declare-fun b!4009142 () Bool)

(assert (=> b!4009142 (= e!2486249 e!2486250)))

(declare-fun res!1629452 () Bool)

(assert (=> b!4009142 (=> (not res!1629452) (not e!2486250))))

(assert (=> b!4009142 (= res!1629452 (isDefined!7065 lt!1418854))))

(declare-fun b!4009143 () Bool)

(declare-fun res!1629449 () Bool)

(assert (=> b!4009143 (=> (not res!1629449) (not e!2486250))))

(assert (=> b!4009143 (= res!1629449 (= (++!11224 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418854)))) (_2!24163 (get!14100 lt!1418854))) lt!1418249))))

(declare-fun b!4009144 () Bool)

(declare-fun lt!1418855 () Option!9236)

(declare-fun lt!1418852 () Option!9236)

(assert (=> b!4009144 (= e!2486251 (ite (and ((_ is None!9235) lt!1418855) ((_ is None!9235) lt!1418852)) None!9235 (ite ((_ is None!9235) lt!1418852) lt!1418855 (ite ((_ is None!9235) lt!1418855) lt!1418852 (ite (>= (size!32080 (_1!24163 (v!39601 lt!1418855))) (size!32080 (_1!24163 (v!39601 lt!1418852)))) lt!1418855 lt!1418852)))))))

(declare-fun call!286326 () Option!9236)

(assert (=> b!4009144 (= lt!1418855 call!286326)))

(assert (=> b!4009144 (= lt!1418852 (maxPrefix!3709 thiss!21717 (t!332655 (t!332655 rules!2999)) lt!1418249))))

(declare-fun b!4009145 () Bool)

(assert (=> b!4009145 (= e!2486250 (contains!8529 (t!332655 rules!2999) (rule!9862 (_1!24163 (get!14100 lt!1418854)))))))

(declare-fun bm!286321 () Bool)

(assert (=> bm!286321 (= call!286326 (maxPrefixOneRule!2729 thiss!21717 (h!48326 (t!332655 rules!2999)) lt!1418249))))

(declare-fun b!4009146 () Bool)

(assert (=> b!4009146 (= e!2486251 call!286326)))

(declare-fun b!4009147 () Bool)

(declare-fun res!1629453 () Bool)

(assert (=> b!4009147 (=> (not res!1629453) (not e!2486250))))

(assert (=> b!4009147 (= res!1629453 (= (value!215061 (_1!24163 (get!14100 lt!1418854))) (apply!10019 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418854)))) (seqFromList!5047 (originalCharacters!7422 (_1!24163 (get!14100 lt!1418854)))))))))

(assert (= (and d!1186448 c!693252) b!4009146))

(assert (= (and d!1186448 (not c!693252)) b!4009144))

(assert (= (or b!4009146 b!4009144) bm!286321))

(assert (= (and d!1186448 (not res!1629451)) b!4009142))

(assert (= (and b!4009142 res!1629452) b!4009140))

(assert (= (and b!4009140 res!1629454) b!4009139))

(assert (= (and b!4009139 res!1629450) b!4009143))

(assert (= (and b!4009143 res!1629449) b!4009147))

(assert (= (and b!4009147 res!1629453) b!4009141))

(assert (= (and b!4009141 res!1629455) b!4009145))

(declare-fun m!4593441 () Bool)

(assert (=> d!1186448 m!4593441))

(assert (=> d!1186448 m!4592203))

(assert (=> d!1186448 m!4592205))

(assert (=> d!1186448 m!4592833))

(declare-fun m!4593443 () Bool)

(assert (=> b!4009139 m!4593443))

(declare-fun m!4593445 () Bool)

(assert (=> b!4009139 m!4593445))

(assert (=> b!4009139 m!4592211))

(assert (=> b!4009145 m!4593443))

(declare-fun m!4593447 () Bool)

(assert (=> b!4009145 m!4593447))

(assert (=> b!4009143 m!4593443))

(declare-fun m!4593449 () Bool)

(assert (=> b!4009143 m!4593449))

(assert (=> b!4009143 m!4593449))

(declare-fun m!4593451 () Bool)

(assert (=> b!4009143 m!4593451))

(assert (=> b!4009143 m!4593451))

(declare-fun m!4593453 () Bool)

(assert (=> b!4009143 m!4593453))

(assert (=> b!4009140 m!4593443))

(assert (=> b!4009140 m!4593449))

(assert (=> b!4009140 m!4593449))

(assert (=> b!4009140 m!4593451))

(assert (=> b!4009147 m!4593443))

(declare-fun m!4593455 () Bool)

(assert (=> b!4009147 m!4593455))

(assert (=> b!4009147 m!4593455))

(declare-fun m!4593457 () Bool)

(assert (=> b!4009147 m!4593457))

(declare-fun m!4593459 () Bool)

(assert (=> b!4009142 m!4593459))

(declare-fun m!4593461 () Bool)

(assert (=> b!4009144 m!4593461))

(assert (=> b!4009141 m!4593443))

(assert (=> b!4009141 m!4593449))

(assert (=> b!4009141 m!4593449))

(assert (=> b!4009141 m!4593451))

(assert (=> b!4009141 m!4593451))

(declare-fun m!4593463 () Bool)

(assert (=> b!4009141 m!4593463))

(declare-fun m!4593465 () Bool)

(assert (=> bm!286321 m!4593465))

(assert (=> b!4008367 d!1186448))

(declare-fun d!1186456 () Bool)

(assert (=> d!1186456 (= (isEmpty!25634 lt!1418254) ((_ is Nil!42904) lt!1418254))))

(assert (=> d!1186066 d!1186456))

(declare-fun b!4009182 () Bool)

(declare-fun e!2486278 () Bool)

(declare-fun e!2486276 () Bool)

(assert (=> b!4009182 (= e!2486278 e!2486276)))

(declare-fun res!1629472 () Bool)

(assert (=> b!4009182 (= res!1629472 (not (nullable!4114 (reg!12056 (regex!6822 (rule!9862 token!484))))))))

(assert (=> b!4009182 (=> (not res!1629472) (not e!2486276))))

(declare-fun call!286335 () Bool)

(declare-fun bm!286328 () Bool)

(declare-fun c!693263 () Bool)

(declare-fun c!693262 () Bool)

(assert (=> bm!286328 (= call!286335 (validRegex!5314 (ite c!693262 (reg!12056 (regex!6822 (rule!9862 token!484))) (ite c!693263 (regOne!23967 (regex!6822 (rule!9862 token!484))) (regOne!23966 (regex!6822 (rule!9862 token!484)))))))))

(declare-fun b!4009183 () Bool)

(declare-fun e!2486279 () Bool)

(declare-fun e!2486280 () Bool)

(assert (=> b!4009183 (= e!2486279 e!2486280)))

(declare-fun res!1629471 () Bool)

(assert (=> b!4009183 (=> (not res!1629471) (not e!2486280))))

(declare-fun call!286334 () Bool)

(assert (=> b!4009183 (= res!1629471 call!286334)))

(declare-fun b!4009184 () Bool)

(declare-fun e!2486281 () Bool)

(assert (=> b!4009184 (= e!2486278 e!2486281)))

(assert (=> b!4009184 (= c!693263 ((_ is Union!11727) (regex!6822 (rule!9862 token!484))))))

(declare-fun b!4009185 () Bool)

(declare-fun res!1629474 () Bool)

(assert (=> b!4009185 (=> res!1629474 e!2486279)))

(assert (=> b!4009185 (= res!1629474 (not ((_ is Concat!18780) (regex!6822 (rule!9862 token!484)))))))

(assert (=> b!4009185 (= e!2486281 e!2486279)))

(declare-fun d!1186458 () Bool)

(declare-fun res!1629473 () Bool)

(declare-fun e!2486277 () Bool)

(assert (=> d!1186458 (=> res!1629473 e!2486277)))

(assert (=> d!1186458 (= res!1629473 ((_ is ElementMatch!11727) (regex!6822 (rule!9862 token!484))))))

(assert (=> d!1186458 (= (validRegex!5314 (regex!6822 (rule!9862 token!484))) e!2486277)))

(declare-fun b!4009186 () Bool)

(declare-fun call!286333 () Bool)

(assert (=> b!4009186 (= e!2486280 call!286333)))

(declare-fun b!4009187 () Bool)

(declare-fun res!1629470 () Bool)

(declare-fun e!2486275 () Bool)

(assert (=> b!4009187 (=> (not res!1629470) (not e!2486275))))

(assert (=> b!4009187 (= res!1629470 call!286334)))

(assert (=> b!4009187 (= e!2486281 e!2486275)))

(declare-fun b!4009188 () Bool)

(assert (=> b!4009188 (= e!2486277 e!2486278)))

(assert (=> b!4009188 (= c!693262 ((_ is Star!11727) (regex!6822 (rule!9862 token!484))))))

(declare-fun bm!286329 () Bool)

(assert (=> bm!286329 (= call!286334 call!286335)))

(declare-fun b!4009189 () Bool)

(assert (=> b!4009189 (= e!2486275 call!286333)))

(declare-fun bm!286330 () Bool)

(assert (=> bm!286330 (= call!286333 (validRegex!5314 (ite c!693263 (regTwo!23967 (regex!6822 (rule!9862 token!484))) (regTwo!23966 (regex!6822 (rule!9862 token!484))))))))

(declare-fun b!4009190 () Bool)

(assert (=> b!4009190 (= e!2486276 call!286335)))

(assert (= (and d!1186458 (not res!1629473)) b!4009188))

(assert (= (and b!4009188 c!693262) b!4009182))

(assert (= (and b!4009188 (not c!693262)) b!4009184))

(assert (= (and b!4009182 res!1629472) b!4009190))

(assert (= (and b!4009184 c!693263) b!4009187))

(assert (= (and b!4009184 (not c!693263)) b!4009185))

(assert (= (and b!4009187 res!1629470) b!4009189))

(assert (= (and b!4009185 (not res!1629474)) b!4009183))

(assert (= (and b!4009183 res!1629471) b!4009186))

(assert (= (or b!4009189 b!4009186) bm!286330))

(assert (= (or b!4009187 b!4009183) bm!286329))

(assert (= (or b!4009190 bm!286329) bm!286328))

(declare-fun m!4593497 () Bool)

(assert (=> b!4009182 m!4593497))

(declare-fun m!4593499 () Bool)

(assert (=> bm!286328 m!4593499))

(declare-fun m!4593503 () Bool)

(assert (=> bm!286330 m!4593503))

(assert (=> d!1186066 d!1186458))

(declare-fun d!1186474 () Bool)

(assert (=> d!1186474 true))

(declare-fun order!22489 () Int)

(declare-fun lambda!127018 () Int)

(declare-fun order!22487 () Int)

(declare-fun dynLambda!18204 (Int Int) Int)

(declare-fun dynLambda!18205 (Int Int) Int)

(assert (=> d!1186474 (< (dynLambda!18204 order!22487 (toValue!9322 (transformation!6822 (h!48326 rules!2999)))) (dynLambda!18205 order!22489 lambda!127018))))

(declare-fun Forall2!1070 (Int) Bool)

(assert (=> d!1186474 (= (equivClasses!2819 (toChars!9181 (transformation!6822 (h!48326 rules!2999))) (toValue!9322 (transformation!6822 (h!48326 rules!2999)))) (Forall2!1070 lambda!127018))))

(declare-fun bs!589219 () Bool)

(assert (= bs!589219 d!1186474))

(declare-fun m!4593551 () Bool)

(assert (=> bs!589219 m!4593551))

(assert (=> b!4008453 d!1186474))

(declare-fun bs!589221 () Bool)

(declare-fun d!1186496 () Bool)

(assert (= bs!589221 (and d!1186496 d!1186474)))

(declare-fun lambda!127019 () Int)

(assert (=> bs!589221 (= (= (toValue!9322 (transformation!6822 (rule!9862 token!484))) (toValue!9322 (transformation!6822 (h!48326 rules!2999)))) (= lambda!127019 lambda!127018))))

(assert (=> d!1186496 true))

(assert (=> d!1186496 (< (dynLambda!18204 order!22487 (toValue!9322 (transformation!6822 (rule!9862 token!484)))) (dynLambda!18205 order!22489 lambda!127019))))

(assert (=> d!1186496 (= (equivClasses!2819 (toChars!9181 (transformation!6822 (rule!9862 token!484))) (toValue!9322 (transformation!6822 (rule!9862 token!484)))) (Forall2!1070 lambda!127019))))

(declare-fun bs!589222 () Bool)

(assert (= bs!589222 d!1186496))

(declare-fun m!4593553 () Bool)

(assert (=> bs!589222 m!4593553))

(assert (=> b!4008075 d!1186496))

(declare-fun bs!589223 () Bool)

(declare-fun d!1186500 () Bool)

(assert (= bs!589223 (and d!1186500 d!1186474)))

(declare-fun lambda!127020 () Int)

(assert (=> bs!589223 (= (= (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (toValue!9322 (transformation!6822 (h!48326 rules!2999)))) (= lambda!127020 lambda!127018))))

(declare-fun bs!589224 () Bool)

(assert (= bs!589224 (and d!1186500 d!1186496)))

(assert (=> bs!589224 (= (= (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (toValue!9322 (transformation!6822 (rule!9862 token!484)))) (= lambda!127020 lambda!127019))))

(assert (=> d!1186500 true))

(assert (=> d!1186500 (< (dynLambda!18204 order!22487 (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))) (dynLambda!18205 order!22489 lambda!127020))))

(assert (=> d!1186500 (= (equivClasses!2819 (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))) (Forall2!1070 lambda!127020))))

(declare-fun bs!589226 () Bool)

(assert (= bs!589226 d!1186500))

(declare-fun m!4593561 () Bool)

(assert (=> bs!589226 m!4593561))

(assert (=> b!4008407 d!1186500))

(declare-fun d!1186506 () Bool)

(declare-fun lt!1418864 () Int)

(assert (=> d!1186506 (>= lt!1418864 0)))

(declare-fun e!2486304 () Int)

(assert (=> d!1186506 (= lt!1418864 e!2486304)))

(declare-fun c!693272 () Bool)

(assert (=> d!1186506 (= c!693272 ((_ is Nil!42904) lt!1418476))))

(assert (=> d!1186506 (= (size!32079 lt!1418476) lt!1418864)))

(declare-fun b!4009226 () Bool)

(assert (=> b!4009226 (= e!2486304 0)))

(declare-fun b!4009227 () Bool)

(assert (=> b!4009227 (= e!2486304 (+ 1 (size!32079 (t!332653 lt!1418476))))))

(assert (= (and d!1186506 c!693272) b!4009226))

(assert (= (and d!1186506 (not c!693272)) b!4009227))

(declare-fun m!4593565 () Bool)

(assert (=> b!4009227 m!4593565))

(assert (=> b!4008403 d!1186506))

(assert (=> b!4008403 d!1186018))

(declare-fun d!1186510 () Bool)

(declare-fun lt!1418865 () Int)

(assert (=> d!1186510 (>= lt!1418865 0)))

(declare-fun e!2486305 () Int)

(assert (=> d!1186510 (= lt!1418865 e!2486305)))

(declare-fun c!693273 () Bool)

(assert (=> d!1186510 (= c!693273 ((_ is Nil!42904) newSuffixResult!27))))

(assert (=> d!1186510 (= (size!32079 newSuffixResult!27) lt!1418865)))

(declare-fun b!4009228 () Bool)

(assert (=> b!4009228 (= e!2486305 0)))

(declare-fun b!4009229 () Bool)

(assert (=> b!4009229 (= e!2486305 (+ 1 (size!32079 (t!332653 newSuffixResult!27))))))

(assert (= (and d!1186510 c!693273) b!4009228))

(assert (= (and d!1186510 (not c!693273)) b!4009229))

(declare-fun m!4593567 () Bool)

(assert (=> b!4009229 m!4593567))

(assert (=> b!4008403 d!1186510))

(assert (=> b!4008245 d!1186134))

(declare-fun d!1186512 () Bool)

(declare-fun lt!1418867 () Int)

(assert (=> d!1186512 (>= lt!1418867 0)))

(declare-fun e!2486309 () Int)

(assert (=> d!1186512 (= lt!1418867 e!2486309)))

(declare-fun c!693274 () Bool)

(assert (=> d!1186512 (= c!693274 ((_ is Nil!42904) (originalCharacters!7422 (_1!24163 (get!14100 lt!1418426)))))))

(assert (=> d!1186512 (= (size!32079 (originalCharacters!7422 (_1!24163 (get!14100 lt!1418426)))) lt!1418867)))

(declare-fun b!4009234 () Bool)

(assert (=> b!4009234 (= e!2486309 0)))

(declare-fun b!4009235 () Bool)

(assert (=> b!4009235 (= e!2486309 (+ 1 (size!32079 (t!332653 (originalCharacters!7422 (_1!24163 (get!14100 lt!1418426)))))))))

(assert (= (and d!1186512 c!693274) b!4009234))

(assert (= (and d!1186512 (not c!693274)) b!4009235))

(declare-fun m!4593573 () Bool)

(assert (=> b!4009235 m!4593573))

(assert (=> b!4008245 d!1186512))

(declare-fun d!1186514 () Bool)

(declare-fun lt!1418868 () Int)

(assert (=> d!1186514 (>= lt!1418868 0)))

(declare-fun e!2486310 () Int)

(assert (=> d!1186514 (= lt!1418868 e!2486310)))

(declare-fun c!693275 () Bool)

(assert (=> d!1186514 (= c!693275 ((_ is Nil!42904) lt!1418493))))

(assert (=> d!1186514 (= (size!32079 lt!1418493) lt!1418868)))

(declare-fun b!4009236 () Bool)

(assert (=> b!4009236 (= e!2486310 0)))

(declare-fun b!4009237 () Bool)

(assert (=> b!4009237 (= e!2486310 (+ 1 (size!32079 (t!332653 lt!1418493))))))

(assert (= (and d!1186514 c!693275) b!4009236))

(assert (= (and d!1186514 (not c!693275)) b!4009237))

(declare-fun m!4593579 () Bool)

(assert (=> b!4009237 m!4593579))

(assert (=> b!4008439 d!1186514))

(assert (=> b!4008439 d!1185984))

(assert (=> b!4008439 d!1186390))

(declare-fun d!1186520 () Bool)

(assert (=> d!1186520 (= (list!15942 lt!1418471) (list!15944 (c!692980 lt!1418471)))))

(declare-fun bs!589227 () Bool)

(assert (= bs!589227 d!1186520))

(declare-fun m!4593581 () Bool)

(assert (=> bs!589227 m!4593581))

(assert (=> d!1185996 d!1186520))

(declare-fun d!1186522 () Bool)

(declare-fun e!2486318 () Bool)

(assert (=> d!1186522 e!2486318))

(declare-fun res!1629502 () Bool)

(assert (=> d!1186522 (=> res!1629502 e!2486318)))

(assert (=> d!1186522 (= res!1629502 (isEmpty!25634 (_1!24165 (findLongestMatchInner!1355 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))) Nil!42904 (size!32079 Nil!42904) lt!1418249 lt!1418249 (size!32079 lt!1418249)))))))

(declare-fun lt!1418872 () Unit!61905)

(declare-fun choose!24218 (Regex!11727 List!43028) Unit!61905)

(assert (=> d!1186522 (= lt!1418872 (choose!24218 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))) lt!1418249))))

(assert (=> d!1186522 (validRegex!5314 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))))

(assert (=> d!1186522 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1328 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))) lt!1418249) lt!1418872)))

(declare-fun b!4009248 () Bool)

(assert (=> b!4009248 (= e!2486318 (matchR!5688 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))) (_1!24165 (findLongestMatchInner!1355 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))) Nil!42904 (size!32079 Nil!42904) lt!1418249 lt!1418249 (size!32079 lt!1418249)))))))

(assert (= (and d!1186522 (not res!1629502)) b!4009248))

(declare-fun m!4593597 () Bool)

(assert (=> d!1186522 m!4593597))

(assert (=> d!1186522 m!4592269))

(assert (=> d!1186522 m!4592379))

(assert (=> d!1186522 m!4592211))

(assert (=> d!1186522 m!4592077))

(assert (=> d!1186522 m!4592211))

(assert (=> d!1186522 m!4592365))

(assert (=> d!1186522 m!4592077))

(assert (=> b!4009248 m!4592077))

(assert (=> b!4009248 m!4592211))

(assert (=> b!4009248 m!4592077))

(assert (=> b!4009248 m!4592211))

(assert (=> b!4009248 m!4592365))

(assert (=> b!4009248 m!4592367))

(assert (=> b!4008417 d!1186522))

(declare-fun d!1186550 () Bool)

(assert (=> d!1186550 (= (seqFromList!5047 (_1!24165 lt!1418482)) (fromListB!2312 (_1!24165 lt!1418482)))))

(declare-fun bs!589231 () Bool)

(assert (= bs!589231 d!1186550))

(declare-fun m!4593599 () Bool)

(assert (=> bs!589231 m!4593599))

(assert (=> b!4008417 d!1186550))

(declare-fun d!1186552 () Bool)

(assert (=> d!1186552 (= (apply!10019 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))) (seqFromList!5047 (_1!24165 lt!1418482))) (dynLambda!18200 (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (seqFromList!5047 (_1!24165 lt!1418482))))))

(declare-fun b_lambda!116979 () Bool)

(assert (=> (not b_lambda!116979) (not d!1186552)))

(declare-fun t!332805 () Bool)

(declare-fun tb!241025 () Bool)

(assert (=> (and b!4007875 (= (toValue!9322 (transformation!6822 (h!48326 rules!2999))) (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))) t!332805) tb!241025))

(declare-fun result!292134 () Bool)

(assert (=> tb!241025 (= result!292134 (inv!21 (dynLambda!18200 (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (seqFromList!5047 (_1!24165 lt!1418482)))))))

(declare-fun m!4593601 () Bool)

(assert (=> tb!241025 m!4593601))

(assert (=> d!1186552 t!332805))

(declare-fun b_and!307979 () Bool)

(assert (= b_and!307961 (and (=> t!332805 result!292134) b_and!307979)))

(declare-fun tb!241027 () Bool)

(declare-fun t!332807 () Bool)

(assert (=> (and b!4007900 (= (toValue!9322 (transformation!6822 (rule!9862 token!484))) (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))) t!332807) tb!241027))

(declare-fun result!292136 () Bool)

(assert (= result!292136 result!292134))

(assert (=> d!1186552 t!332807))

(declare-fun b_and!307981 () Bool)

(assert (= b_and!307963 (and (=> t!332807 result!292136) b_and!307981)))

(declare-fun tb!241029 () Bool)

(declare-fun t!332809 () Bool)

(assert (=> (and b!4008556 (= (toValue!9322 (transformation!6822 (h!48326 (t!332655 rules!2999)))) (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))) t!332809) tb!241029))

(declare-fun result!292138 () Bool)

(assert (= result!292138 result!292134))

(assert (=> d!1186552 t!332809))

(declare-fun b_and!307983 () Bool)

(assert (= b_and!307965 (and (=> t!332809 result!292138) b_and!307983)))

(assert (=> d!1186552 m!4592371))

(declare-fun m!4593603 () Bool)

(assert (=> d!1186552 m!4593603))

(assert (=> b!4008417 d!1186552))

(declare-fun d!1186554 () Bool)

(declare-fun lt!1418875 () Int)

(assert (=> d!1186554 (= lt!1418875 (size!32079 (list!15942 (seqFromList!5047 (_1!24165 lt!1418482)))))))

(declare-fun size!32084 (Conc!13033) Int)

(assert (=> d!1186554 (= lt!1418875 (size!32084 (c!692980 (seqFromList!5047 (_1!24165 lt!1418482)))))))

(assert (=> d!1186554 (= (size!32082 (seqFromList!5047 (_1!24165 lt!1418482))) lt!1418875)))

(declare-fun bs!589232 () Bool)

(assert (= bs!589232 d!1186554))

(assert (=> bs!589232 m!4592371))

(declare-fun m!4593605 () Bool)

(assert (=> bs!589232 m!4593605))

(assert (=> bs!589232 m!4593605))

(declare-fun m!4593607 () Bool)

(assert (=> bs!589232 m!4593607))

(declare-fun m!4593609 () Bool)

(assert (=> bs!589232 m!4593609))

(assert (=> b!4008417 d!1186554))

(declare-fun d!1186556 () Bool)

(assert (=> d!1186556 (= (isEmpty!25634 (_1!24165 (findLongestMatchInner!1355 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))) Nil!42904 (size!32079 Nil!42904) lt!1418249 lt!1418249 (size!32079 lt!1418249)))) ((_ is Nil!42904) (_1!24165 (findLongestMatchInner!1355 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))) Nil!42904 (size!32079 Nil!42904) lt!1418249 lt!1418249 (size!32079 lt!1418249)))))))

(assert (=> b!4008417 d!1186556))

(assert (=> b!4008417 d!1186326))

(declare-fun b!4009265 () Bool)

(declare-fun e!2486330 () Bool)

(assert (=> b!4009265 (= e!2486330 true)))

(declare-fun d!1186558 () Bool)

(assert (=> d!1186558 e!2486330))

(assert (= d!1186558 b!4009265))

(declare-fun lambda!127023 () Int)

(declare-fun order!22491 () Int)

(declare-fun dynLambda!18206 (Int Int) Int)

(assert (=> b!4009265 (< (dynLambda!18204 order!22487 (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))) (dynLambda!18206 order!22491 lambda!127023))))

(declare-fun order!22493 () Int)

(declare-fun dynLambda!18207 (Int Int) Int)

(assert (=> b!4009265 (< (dynLambda!18207 order!22493 (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))) (dynLambda!18206 order!22491 lambda!127023))))

(assert (=> d!1186558 (= (list!15942 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (dynLambda!18200 (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (seqFromList!5047 (_1!24165 lt!1418482))))) (list!15942 (seqFromList!5047 (_1!24165 lt!1418482))))))

(declare-fun lt!1418906 () Unit!61905)

(declare-fun ForallOf!807 (Int BalanceConc!25660) Unit!61905)

(assert (=> d!1186558 (= lt!1418906 (ForallOf!807 lambda!127023 (seqFromList!5047 (_1!24165 lt!1418482))))))

(assert (=> d!1186558 (= (lemmaSemiInverse!1875 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))) (seqFromList!5047 (_1!24165 lt!1418482))) lt!1418906)))

(declare-fun b_lambda!116981 () Bool)

(assert (=> (not b_lambda!116981) (not d!1186558)))

(declare-fun tb!241031 () Bool)

(declare-fun t!332811 () Bool)

(assert (=> (and b!4007875 (= (toChars!9181 (transformation!6822 (h!48326 rules!2999))) (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))) t!332811) tb!241031))

(declare-fun e!2486333 () Bool)

(declare-fun b!4009268 () Bool)

(declare-fun tp!1219732 () Bool)

(assert (=> b!4009268 (= e!2486333 (and (inv!57307 (c!692980 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (dynLambda!18200 (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (seqFromList!5047 (_1!24165 lt!1418482)))))) tp!1219732))))

(declare-fun result!292140 () Bool)

(assert (=> tb!241031 (= result!292140 (and (inv!57308 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (dynLambda!18200 (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (seqFromList!5047 (_1!24165 lt!1418482))))) e!2486333))))

(assert (= tb!241031 b!4009268))

(declare-fun m!4593641 () Bool)

(assert (=> b!4009268 m!4593641))

(declare-fun m!4593643 () Bool)

(assert (=> tb!241031 m!4593643))

(assert (=> d!1186558 t!332811))

(declare-fun b_and!307985 () Bool)

(assert (= b_and!307883 (and (=> t!332811 result!292140) b_and!307985)))

(declare-fun t!332813 () Bool)

(declare-fun tb!241033 () Bool)

(assert (=> (and b!4007900 (= (toChars!9181 (transformation!6822 (rule!9862 token!484))) (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))) t!332813) tb!241033))

(declare-fun result!292142 () Bool)

(assert (= result!292142 result!292140))

(assert (=> d!1186558 t!332813))

(declare-fun b_and!307987 () Bool)

(assert (= b_and!307885 (and (=> t!332813 result!292142) b_and!307987)))

(declare-fun tb!241035 () Bool)

(declare-fun t!332815 () Bool)

(assert (=> (and b!4008556 (= (toChars!9181 (transformation!6822 (h!48326 (t!332655 rules!2999)))) (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))) t!332815) tb!241035))

(declare-fun result!292144 () Bool)

(assert (= result!292144 result!292140))

(assert (=> d!1186558 t!332815))

(declare-fun b_and!307989 () Bool)

(assert (= b_and!307887 (and (=> t!332815 result!292144) b_and!307989)))

(declare-fun b_lambda!116983 () Bool)

(assert (=> (not b_lambda!116983) (not d!1186558)))

(assert (=> d!1186558 t!332805))

(declare-fun b_and!307991 () Bool)

(assert (= b_and!307979 (and (=> t!332805 result!292134) b_and!307991)))

(assert (=> d!1186558 t!332807))

(declare-fun b_and!307993 () Bool)

(assert (= b_and!307981 (and (=> t!332807 result!292136) b_and!307993)))

(assert (=> d!1186558 t!332809))

(declare-fun b_and!307995 () Bool)

(assert (= b_and!307983 (and (=> t!332809 result!292138) b_and!307995)))

(assert (=> d!1186558 m!4593603))

(declare-fun m!4593645 () Bool)

(assert (=> d!1186558 m!4593645))

(assert (=> d!1186558 m!4593645))

(declare-fun m!4593647 () Bool)

(assert (=> d!1186558 m!4593647))

(assert (=> d!1186558 m!4592371))

(assert (=> d!1186558 m!4593603))

(assert (=> d!1186558 m!4592371))

(assert (=> d!1186558 m!4593605))

(assert (=> d!1186558 m!4592371))

(declare-fun m!4593649 () Bool)

(assert (=> d!1186558 m!4593649))

(assert (=> b!4008417 d!1186558))

(assert (=> b!4008417 d!1186088))

(assert (=> b!4008417 d!1186266))

(declare-fun d!1186572 () Bool)

(assert (=> d!1186572 (= suffixResult!105 lt!1418275)))

(assert (=> d!1186572 true))

(declare-fun _$63!1044 () Unit!61905)

(assert (=> d!1186572 (= (choose!24208 lt!1418254 suffixResult!105 lt!1418254 lt!1418275 lt!1418276) _$63!1044)))

(assert (=> d!1185974 d!1186572))

(assert (=> d!1185974 d!1186040))

(declare-fun d!1186576 () Bool)

(assert (=> d!1186576 (= (isEmpty!25634 (tail!6247 lt!1418254)) ((_ is Nil!42904) (tail!6247 lt!1418254)))))

(assert (=> b!4008496 d!1186576))

(assert (=> b!4008496 d!1186172))

(assert (=> b!4008363 d!1186152))

(assert (=> b!4008363 d!1186154))

(assert (=> b!4008363 d!1186156))

(assert (=> b!4008292 d!1186162))

(declare-fun d!1186578 () Bool)

(assert (=> d!1186578 (= (head!8515 lt!1418241) (h!48324 lt!1418241))))

(assert (=> b!4008292 d!1186578))

(declare-fun d!1186580 () Bool)

(declare-fun e!2486335 () Bool)

(assert (=> d!1186580 e!2486335))

(declare-fun res!1629509 () Bool)

(assert (=> d!1186580 (=> res!1629509 e!2486335)))

(declare-fun lt!1418907 () Bool)

(assert (=> d!1186580 (= res!1629509 (not lt!1418907))))

(declare-fun e!2486337 () Bool)

(assert (=> d!1186580 (= lt!1418907 e!2486337)))

(declare-fun res!1629511 () Bool)

(assert (=> d!1186580 (=> res!1629511 e!2486337)))

(assert (=> d!1186580 (= res!1629511 ((_ is Nil!42904) (tail!6247 lt!1418251)))))

(assert (=> d!1186580 (= (isPrefix!3909 (tail!6247 lt!1418251) (tail!6247 (++!11224 lt!1418251 newSuffixResult!27))) lt!1418907)))

(declare-fun b!4009273 () Bool)

(declare-fun e!2486336 () Bool)

(assert (=> b!4009273 (= e!2486336 (isPrefix!3909 (tail!6247 (tail!6247 lt!1418251)) (tail!6247 (tail!6247 (++!11224 lt!1418251 newSuffixResult!27)))))))

(declare-fun b!4009272 () Bool)

(declare-fun res!1629510 () Bool)

(assert (=> b!4009272 (=> (not res!1629510) (not e!2486336))))

(assert (=> b!4009272 (= res!1629510 (= (head!8515 (tail!6247 lt!1418251)) (head!8515 (tail!6247 (++!11224 lt!1418251 newSuffixResult!27)))))))

(declare-fun b!4009274 () Bool)

(assert (=> b!4009274 (= e!2486335 (>= (size!32079 (tail!6247 (++!11224 lt!1418251 newSuffixResult!27))) (size!32079 (tail!6247 lt!1418251))))))

(declare-fun b!4009271 () Bool)

(assert (=> b!4009271 (= e!2486337 e!2486336)))

(declare-fun res!1629512 () Bool)

(assert (=> b!4009271 (=> (not res!1629512) (not e!2486336))))

(assert (=> b!4009271 (= res!1629512 (not ((_ is Nil!42904) (tail!6247 (++!11224 lt!1418251 newSuffixResult!27)))))))

(assert (= (and d!1186580 (not res!1629511)) b!4009271))

(assert (= (and b!4009271 res!1629512) b!4009272))

(assert (= (and b!4009272 res!1629510) b!4009273))

(assert (= (and d!1186580 (not res!1629509)) b!4009274))

(assert (=> b!4009273 m!4592303))

(assert (=> b!4009273 m!4593197))

(assert (=> b!4009273 m!4592333))

(declare-fun m!4593657 () Bool)

(assert (=> b!4009273 m!4593657))

(assert (=> b!4009273 m!4593197))

(assert (=> b!4009273 m!4593657))

(declare-fun m!4593659 () Bool)

(assert (=> b!4009273 m!4593659))

(assert (=> b!4009272 m!4592303))

(assert (=> b!4009272 m!4593203))

(assert (=> b!4009272 m!4592333))

(declare-fun m!4593661 () Bool)

(assert (=> b!4009272 m!4593661))

(assert (=> b!4009274 m!4592333))

(declare-fun m!4593663 () Bool)

(assert (=> b!4009274 m!4593663))

(assert (=> b!4009274 m!4592303))

(assert (=> b!4009274 m!4593209))

(assert (=> b!4008410 d!1186580))

(assert (=> b!4008410 d!1186368))

(declare-fun d!1186588 () Bool)

(assert (=> d!1186588 (= (tail!6247 (++!11224 lt!1418251 newSuffixResult!27)) (t!332653 (++!11224 lt!1418251 newSuffixResult!27)))))

(assert (=> b!4008410 d!1186588))

(declare-fun b!4009277 () Bool)

(declare-fun e!2486345 () Bool)

(assert (=> b!4009277 (= e!2486345 (not (= (head!8515 (_1!24165 (findLongestMatchInner!1355 (regex!6822 (rule!9862 token!484)) Nil!42904 (size!32079 Nil!42904) lt!1418276 lt!1418276 (size!32079 lt!1418276)))) (c!692981 (regex!6822 (rule!9862 token!484))))))))

(declare-fun bm!286331 () Bool)

(declare-fun call!286336 () Bool)

(assert (=> bm!286331 (= call!286336 (isEmpty!25634 (_1!24165 (findLongestMatchInner!1355 (regex!6822 (rule!9862 token!484)) Nil!42904 (size!32079 Nil!42904) lt!1418276 lt!1418276 (size!32079 lt!1418276)))))))

(declare-fun b!4009278 () Bool)

(declare-fun e!2486340 () Bool)

(assert (=> b!4009278 (= e!2486340 (nullable!4114 (regex!6822 (rule!9862 token!484))))))

(declare-fun b!4009279 () Bool)

(declare-fun res!1629519 () Bool)

(declare-fun e!2486341 () Bool)

(assert (=> b!4009279 (=> (not res!1629519) (not e!2486341))))

(assert (=> b!4009279 (= res!1629519 (not call!286336))))

(declare-fun d!1186590 () Bool)

(declare-fun e!2486343 () Bool)

(assert (=> d!1186590 e!2486343))

(declare-fun c!693284 () Bool)

(assert (=> d!1186590 (= c!693284 ((_ is EmptyExpr!11727) (regex!6822 (rule!9862 token!484))))))

(declare-fun lt!1418909 () Bool)

(assert (=> d!1186590 (= lt!1418909 e!2486340)))

(declare-fun c!693286 () Bool)

(assert (=> d!1186590 (= c!693286 (isEmpty!25634 (_1!24165 (findLongestMatchInner!1355 (regex!6822 (rule!9862 token!484)) Nil!42904 (size!32079 Nil!42904) lt!1418276 lt!1418276 (size!32079 lt!1418276)))))))

(assert (=> d!1186590 (validRegex!5314 (regex!6822 (rule!9862 token!484)))))

(assert (=> d!1186590 (= (matchR!5688 (regex!6822 (rule!9862 token!484)) (_1!24165 (findLongestMatchInner!1355 (regex!6822 (rule!9862 token!484)) Nil!42904 (size!32079 Nil!42904) lt!1418276 lt!1418276 (size!32079 lt!1418276)))) lt!1418909)))

(declare-fun b!4009280 () Bool)

(assert (=> b!4009280 (= e!2486340 (matchR!5688 (derivativeStep!3523 (regex!6822 (rule!9862 token!484)) (head!8515 (_1!24165 (findLongestMatchInner!1355 (regex!6822 (rule!9862 token!484)) Nil!42904 (size!32079 Nil!42904) lt!1418276 lt!1418276 (size!32079 lt!1418276))))) (tail!6247 (_1!24165 (findLongestMatchInner!1355 (regex!6822 (rule!9862 token!484)) Nil!42904 (size!32079 Nil!42904) lt!1418276 lt!1418276 (size!32079 lt!1418276))))))))

(declare-fun b!4009281 () Bool)

(declare-fun res!1629522 () Bool)

(assert (=> b!4009281 (=> (not res!1629522) (not e!2486341))))

(assert (=> b!4009281 (= res!1629522 (isEmpty!25634 (tail!6247 (_1!24165 (findLongestMatchInner!1355 (regex!6822 (rule!9862 token!484)) Nil!42904 (size!32079 Nil!42904) lt!1418276 lt!1418276 (size!32079 lt!1418276))))))))

(declare-fun b!4009282 () Bool)

(declare-fun res!1629521 () Bool)

(assert (=> b!4009282 (=> res!1629521 e!2486345)))

(assert (=> b!4009282 (= res!1629521 (not (isEmpty!25634 (tail!6247 (_1!24165 (findLongestMatchInner!1355 (regex!6822 (rule!9862 token!484)) Nil!42904 (size!32079 Nil!42904) lt!1418276 lt!1418276 (size!32079 lt!1418276)))))))))

(declare-fun b!4009283 () Bool)

(declare-fun e!2486344 () Bool)

(assert (=> b!4009283 (= e!2486344 e!2486345)))

(declare-fun res!1629517 () Bool)

(assert (=> b!4009283 (=> res!1629517 e!2486345)))

(assert (=> b!4009283 (= res!1629517 call!286336)))

(declare-fun b!4009284 () Bool)

(assert (=> b!4009284 (= e!2486341 (= (head!8515 (_1!24165 (findLongestMatchInner!1355 (regex!6822 (rule!9862 token!484)) Nil!42904 (size!32079 Nil!42904) lt!1418276 lt!1418276 (size!32079 lt!1418276)))) (c!692981 (regex!6822 (rule!9862 token!484)))))))

(declare-fun b!4009285 () Bool)

(declare-fun e!2486346 () Bool)

(assert (=> b!4009285 (= e!2486346 e!2486344)))

(declare-fun res!1629516 () Bool)

(assert (=> b!4009285 (=> (not res!1629516) (not e!2486344))))

(assert (=> b!4009285 (= res!1629516 (not lt!1418909))))

(declare-fun b!4009286 () Bool)

(declare-fun e!2486342 () Bool)

(assert (=> b!4009286 (= e!2486342 (not lt!1418909))))

(declare-fun b!4009287 () Bool)

(assert (=> b!4009287 (= e!2486343 (= lt!1418909 call!286336))))

(declare-fun b!4009288 () Bool)

(declare-fun res!1629520 () Bool)

(assert (=> b!4009288 (=> res!1629520 e!2486346)))

(assert (=> b!4009288 (= res!1629520 e!2486341)))

(declare-fun res!1629515 () Bool)

(assert (=> b!4009288 (=> (not res!1629515) (not e!2486341))))

(assert (=> b!4009288 (= res!1629515 lt!1418909)))

(declare-fun b!4009289 () Bool)

(assert (=> b!4009289 (= e!2486343 e!2486342)))

(declare-fun c!693285 () Bool)

(assert (=> b!4009289 (= c!693285 ((_ is EmptyLang!11727) (regex!6822 (rule!9862 token!484))))))

(declare-fun b!4009290 () Bool)

(declare-fun res!1629518 () Bool)

(assert (=> b!4009290 (=> res!1629518 e!2486346)))

(assert (=> b!4009290 (= res!1629518 (not ((_ is ElementMatch!11727) (regex!6822 (rule!9862 token!484)))))))

(assert (=> b!4009290 (= e!2486342 e!2486346)))

(assert (= (and d!1186590 c!693286) b!4009278))

(assert (= (and d!1186590 (not c!693286)) b!4009280))

(assert (= (and d!1186590 c!693284) b!4009287))

(assert (= (and d!1186590 (not c!693284)) b!4009289))

(assert (= (and b!4009289 c!693285) b!4009286))

(assert (= (and b!4009289 (not c!693285)) b!4009290))

(assert (= (and b!4009290 (not res!1629518)) b!4009288))

(assert (= (and b!4009288 res!1629515) b!4009279))

(assert (= (and b!4009279 res!1629519) b!4009281))

(assert (= (and b!4009281 res!1629522) b!4009284))

(assert (= (and b!4009288 (not res!1629520)) b!4009285))

(assert (= (and b!4009285 res!1629516) b!4009283))

(assert (= (and b!4009283 (not res!1629517)) b!4009282))

(assert (= (and b!4009282 (not res!1629521)) b!4009277))

(assert (= (or b!4009287 b!4009279 b!4009283) bm!286331))

(assert (=> d!1186590 m!4592093))

(assert (=> d!1186590 m!4591763))

(declare-fun m!4593669 () Bool)

(assert (=> b!4009284 m!4593669))

(declare-fun m!4593671 () Bool)

(assert (=> b!4009282 m!4593671))

(assert (=> b!4009282 m!4593671))

(declare-fun m!4593673 () Bool)

(assert (=> b!4009282 m!4593673))

(assert (=> b!4009281 m!4593671))

(assert (=> b!4009281 m!4593671))

(assert (=> b!4009281 m!4593673))

(assert (=> b!4009278 m!4591765))

(assert (=> b!4009277 m!4593669))

(assert (=> bm!286331 m!4592093))

(assert (=> b!4009280 m!4593669))

(assert (=> b!4009280 m!4593669))

(declare-fun m!4593675 () Bool)

(assert (=> b!4009280 m!4593675))

(assert (=> b!4009280 m!4593671))

(assert (=> b!4009280 m!4593675))

(assert (=> b!4009280 m!4593671))

(declare-fun m!4593681 () Bool)

(assert (=> b!4009280 m!4593681))

(assert (=> b!4008241 d!1186590))

(declare-fun b!4009305 () Bool)

(declare-fun e!2486358 () tuple2!42062)

(declare-fun lt!1418928 () tuple2!42062)

(assert (=> b!4009305 (= e!2486358 lt!1418928)))

(declare-fun bm!286333 () Bool)

(declare-fun call!286339 () List!43028)

(assert (=> bm!286333 (= call!286339 (tail!6247 lt!1418276))))

(declare-fun b!4009306 () Bool)

(declare-fun e!2486359 () Unit!61905)

(declare-fun Unit!61925 () Unit!61905)

(assert (=> b!4009306 (= e!2486359 Unit!61925)))

(declare-fun b!4009307 () Bool)

(declare-fun e!2486354 () tuple2!42062)

(declare-fun call!286345 () tuple2!42062)

(assert (=> b!4009307 (= e!2486354 call!286345)))

(declare-fun b!4009308 () Bool)

(declare-fun e!2486355 () Bool)

(declare-fun e!2486361 () Bool)

(assert (=> b!4009308 (= e!2486355 e!2486361)))

(declare-fun res!1629532 () Bool)

(assert (=> b!4009308 (=> res!1629532 e!2486361)))

(declare-fun lt!1418930 () tuple2!42062)

(assert (=> b!4009308 (= res!1629532 (isEmpty!25634 (_1!24165 lt!1418930)))))

(declare-fun bm!286334 () Bool)

(declare-fun call!286341 () Bool)

(assert (=> bm!286334 (= call!286341 (nullable!4114 (regex!6822 (rule!9862 token!484))))))

(declare-fun bm!286335 () Bool)

(declare-fun call!286344 () Unit!61905)

(assert (=> bm!286335 (= call!286344 (lemmaIsPrefixSameLengthThenSameList!899 lt!1418276 Nil!42904 lt!1418276))))

(declare-fun b!4009309 () Bool)

(declare-fun e!2486356 () tuple2!42062)

(assert (=> b!4009309 (= e!2486356 (tuple2!42063 Nil!42904 Nil!42904))))

(declare-fun bm!286336 () Bool)

(declare-fun call!286340 () C!23640)

(assert (=> bm!286336 (= call!286340 (head!8515 lt!1418276))))

(declare-fun b!4009311 () Bool)

(declare-fun Unit!61926 () Unit!61905)

(assert (=> b!4009311 (= e!2486359 Unit!61926)))

(declare-fun lt!1418936 () Unit!61905)

(declare-fun call!286343 () Unit!61905)

(assert (=> b!4009311 (= lt!1418936 call!286343)))

(declare-fun call!286342 () Bool)

(assert (=> b!4009311 call!286342))

(declare-fun lt!1418924 () Unit!61905)

(assert (=> b!4009311 (= lt!1418924 lt!1418936)))

(declare-fun lt!1418916 () Unit!61905)

(assert (=> b!4009311 (= lt!1418916 call!286344)))

(assert (=> b!4009311 (= lt!1418276 Nil!42904)))

(declare-fun lt!1418931 () Unit!61905)

(assert (=> b!4009311 (= lt!1418931 lt!1418916)))

(assert (=> b!4009311 false))

(declare-fun b!4009312 () Bool)

(assert (=> b!4009312 (= e!2486361 (>= (size!32079 (_1!24165 lt!1418930)) (size!32079 Nil!42904)))))

(declare-fun b!4009313 () Bool)

(declare-fun c!693290 () Bool)

(assert (=> b!4009313 (= c!693290 call!286341)))

(declare-fun lt!1418922 () Unit!61905)

(declare-fun lt!1418929 () Unit!61905)

(assert (=> b!4009313 (= lt!1418922 lt!1418929)))

(assert (=> b!4009313 (= lt!1418276 Nil!42904)))

(assert (=> b!4009313 (= lt!1418929 call!286344)))

(declare-fun lt!1418912 () Unit!61905)

(declare-fun lt!1418915 () Unit!61905)

(assert (=> b!4009313 (= lt!1418912 lt!1418915)))

(assert (=> b!4009313 call!286342))

(assert (=> b!4009313 (= lt!1418915 call!286343)))

(declare-fun e!2486357 () tuple2!42062)

(assert (=> b!4009313 (= e!2486357 e!2486356)))

(declare-fun bm!286337 () Bool)

(declare-fun call!286338 () Regex!11727)

(assert (=> bm!286337 (= call!286338 (derivativeStep!3523 (regex!6822 (rule!9862 token!484)) call!286340))))

(declare-fun b!4009314 () Bool)

(assert (=> b!4009314 (= e!2486358 (tuple2!42063 Nil!42904 lt!1418276))))

(declare-fun b!4009315 () Bool)

(declare-fun e!2486360 () tuple2!42062)

(assert (=> b!4009315 (= e!2486360 e!2486357)))

(declare-fun c!693293 () Bool)

(assert (=> b!4009315 (= c!693293 (= (size!32079 Nil!42904) (size!32079 lt!1418276)))))

(declare-fun bm!286338 () Bool)

(assert (=> bm!286338 (= call!286343 (lemmaIsPrefixRefl!2485 lt!1418276 lt!1418276))))

(declare-fun bm!286339 () Bool)

(declare-fun lt!1418935 () List!43028)

(assert (=> bm!286339 (= call!286345 (findLongestMatchInner!1355 call!286338 lt!1418935 (+ (size!32079 Nil!42904) 1) call!286339 lt!1418276 (size!32079 lt!1418276)))))

(declare-fun b!4009316 () Bool)

(assert (=> b!4009316 (= e!2486356 (tuple2!42063 Nil!42904 lt!1418276))))

(declare-fun b!4009317 () Bool)

(assert (=> b!4009317 (= e!2486360 (tuple2!42063 Nil!42904 lt!1418276))))

(declare-fun b!4009310 () Bool)

(declare-fun c!693291 () Bool)

(assert (=> b!4009310 (= c!693291 call!286341)))

(declare-fun lt!1418925 () Unit!61905)

(declare-fun lt!1418917 () Unit!61905)

(assert (=> b!4009310 (= lt!1418925 lt!1418917)))

(declare-fun lt!1418913 () C!23640)

(declare-fun lt!1418911 () List!43028)

(assert (=> b!4009310 (= (++!11224 (++!11224 Nil!42904 (Cons!42904 lt!1418913 Nil!42904)) lt!1418911) lt!1418276)))

(assert (=> b!4009310 (= lt!1418917 (lemmaMoveElementToOtherListKeepsConcatEq!1241 Nil!42904 lt!1418913 lt!1418911 lt!1418276))))

(assert (=> b!4009310 (= lt!1418911 (tail!6247 lt!1418276))))

(assert (=> b!4009310 (= lt!1418913 (head!8515 lt!1418276))))

(declare-fun lt!1418927 () Unit!61905)

(declare-fun lt!1418933 () Unit!61905)

(assert (=> b!4009310 (= lt!1418927 lt!1418933)))

(assert (=> b!4009310 (isPrefix!3909 (++!11224 Nil!42904 (Cons!42904 (head!8515 (getSuffix!2334 lt!1418276 Nil!42904)) Nil!42904)) lt!1418276)))

(assert (=> b!4009310 (= lt!1418933 (lemmaAddHeadSuffixToPrefixStillPrefix!623 Nil!42904 lt!1418276))))

(declare-fun lt!1418918 () Unit!61905)

(declare-fun lt!1418921 () Unit!61905)

(assert (=> b!4009310 (= lt!1418918 lt!1418921)))

(assert (=> b!4009310 (= lt!1418921 (lemmaAddHeadSuffixToPrefixStillPrefix!623 Nil!42904 lt!1418276))))

(assert (=> b!4009310 (= lt!1418935 (++!11224 Nil!42904 (Cons!42904 (head!8515 lt!1418276) Nil!42904)))))

(declare-fun lt!1418934 () Unit!61905)

(assert (=> b!4009310 (= lt!1418934 e!2486359)))

(declare-fun c!693292 () Bool)

(assert (=> b!4009310 (= c!693292 (= (size!32079 Nil!42904) (size!32079 lt!1418276)))))

(declare-fun lt!1418926 () Unit!61905)

(declare-fun lt!1418920 () Unit!61905)

(assert (=> b!4009310 (= lt!1418926 lt!1418920)))

(assert (=> b!4009310 (<= (size!32079 Nil!42904) (size!32079 lt!1418276))))

(assert (=> b!4009310 (= lt!1418920 (lemmaIsPrefixThenSmallerEqSize!431 Nil!42904 lt!1418276))))

(assert (=> b!4009310 (= e!2486357 e!2486354)))

(declare-fun d!1186594 () Bool)

(assert (=> d!1186594 e!2486355))

(declare-fun res!1629531 () Bool)

(assert (=> d!1186594 (=> (not res!1629531) (not e!2486355))))

(assert (=> d!1186594 (= res!1629531 (= (++!11224 (_1!24165 lt!1418930) (_2!24165 lt!1418930)) lt!1418276))))

(assert (=> d!1186594 (= lt!1418930 e!2486360)))

(declare-fun c!693294 () Bool)

(assert (=> d!1186594 (= c!693294 (lostCause!997 (regex!6822 (rule!9862 token!484))))))

(declare-fun lt!1418923 () Unit!61905)

(declare-fun Unit!61927 () Unit!61905)

(assert (=> d!1186594 (= lt!1418923 Unit!61927)))

(assert (=> d!1186594 (= (getSuffix!2334 lt!1418276 Nil!42904) lt!1418276)))

(declare-fun lt!1418932 () Unit!61905)

(declare-fun lt!1418914 () Unit!61905)

(assert (=> d!1186594 (= lt!1418932 lt!1418914)))

(declare-fun lt!1418938 () List!43028)

(assert (=> d!1186594 (= lt!1418276 lt!1418938)))

(assert (=> d!1186594 (= lt!1418914 (lemmaSamePrefixThenSameSuffix!2080 Nil!42904 lt!1418276 Nil!42904 lt!1418938 lt!1418276))))

(assert (=> d!1186594 (= lt!1418938 (getSuffix!2334 lt!1418276 Nil!42904))))

(declare-fun lt!1418937 () Unit!61905)

(declare-fun lt!1418919 () Unit!61905)

(assert (=> d!1186594 (= lt!1418937 lt!1418919)))

(assert (=> d!1186594 (isPrefix!3909 Nil!42904 (++!11224 Nil!42904 lt!1418276))))

(assert (=> d!1186594 (= lt!1418919 (lemmaConcatTwoListThenFirstIsPrefix!2750 Nil!42904 lt!1418276))))

(assert (=> d!1186594 (validRegex!5314 (regex!6822 (rule!9862 token!484)))))

(assert (=> d!1186594 (= (findLongestMatchInner!1355 (regex!6822 (rule!9862 token!484)) Nil!42904 (size!32079 Nil!42904) lt!1418276 lt!1418276 (size!32079 lt!1418276)) lt!1418930)))

(declare-fun b!4009318 () Bool)

(assert (=> b!4009318 (= e!2486354 e!2486358)))

(assert (=> b!4009318 (= lt!1418928 call!286345)))

(declare-fun c!693295 () Bool)

(assert (=> b!4009318 (= c!693295 (isEmpty!25634 (_1!24165 lt!1418928)))))

(declare-fun bm!286340 () Bool)

(assert (=> bm!286340 (= call!286342 (isPrefix!3909 lt!1418276 lt!1418276))))

(assert (= (and d!1186594 c!693294) b!4009317))

(assert (= (and d!1186594 (not c!693294)) b!4009315))

(assert (= (and b!4009315 c!693293) b!4009313))

(assert (= (and b!4009315 (not c!693293)) b!4009310))

(assert (= (and b!4009313 c!693290) b!4009309))

(assert (= (and b!4009313 (not c!693290)) b!4009316))

(assert (= (and b!4009310 c!693292) b!4009311))

(assert (= (and b!4009310 (not c!693292)) b!4009306))

(assert (= (and b!4009310 c!693291) b!4009318))

(assert (= (and b!4009310 (not c!693291)) b!4009307))

(assert (= (and b!4009318 c!693295) b!4009314))

(assert (= (and b!4009318 (not c!693295)) b!4009305))

(assert (= (or b!4009318 b!4009307) bm!286336))

(assert (= (or b!4009318 b!4009307) bm!286333))

(assert (= (or b!4009318 b!4009307) bm!286337))

(assert (= (or b!4009318 b!4009307) bm!286339))

(assert (= (or b!4009313 b!4009311) bm!286340))

(assert (= (or b!4009313 b!4009310) bm!286334))

(assert (= (or b!4009313 b!4009311) bm!286335))

(assert (= (or b!4009313 b!4009311) bm!286338))

(assert (= (and d!1186594 res!1629531) b!4009308))

(assert (= (and b!4009308 (not res!1629532)) b!4009312))

(assert (=> bm!286336 m!4592397))

(assert (=> bm!286334 m!4591765))

(assert (=> b!4009310 m!4592391))

(declare-fun m!4593689 () Bool)

(assert (=> b!4009310 m!4593689))

(declare-fun m!4593691 () Bool)

(assert (=> b!4009310 m!4593691))

(assert (=> b!4009310 m!4592077))

(assert (=> b!4009310 m!4591663))

(declare-fun m!4593693 () Bool)

(assert (=> b!4009310 m!4593693))

(declare-fun m!4593695 () Bool)

(assert (=> b!4009310 m!4593695))

(declare-fun m!4593697 () Bool)

(assert (=> b!4009310 m!4593697))

(assert (=> b!4009310 m!4593693))

(declare-fun m!4593699 () Bool)

(assert (=> b!4009310 m!4593699))

(declare-fun m!4593701 () Bool)

(assert (=> b!4009310 m!4593701))

(assert (=> b!4009310 m!4593689))

(declare-fun m!4593703 () Bool)

(assert (=> b!4009310 m!4593703))

(assert (=> b!4009310 m!4593697))

(declare-fun m!4593705 () Bool)

(assert (=> b!4009310 m!4593705))

(declare-fun m!4593707 () Bool)

(assert (=> b!4009310 m!4593707))

(assert (=> b!4009310 m!4592397))

(declare-fun m!4593709 () Bool)

(assert (=> b!4009308 m!4593709))

(declare-fun m!4593711 () Bool)

(assert (=> d!1186594 m!4593711))

(declare-fun m!4593713 () Bool)

(assert (=> d!1186594 m!4593713))

(declare-fun m!4593715 () Bool)

(assert (=> d!1186594 m!4593715))

(declare-fun m!4593717 () Bool)

(assert (=> d!1186594 m!4593717))

(assert (=> d!1186594 m!4593689))

(assert (=> d!1186594 m!4591763))

(declare-fun m!4593719 () Bool)

(assert (=> d!1186594 m!4593719))

(assert (=> d!1186594 m!4593713))

(declare-fun m!4593721 () Bool)

(assert (=> d!1186594 m!4593721))

(assert (=> bm!286333 m!4592391))

(assert (=> bm!286339 m!4591663))

(declare-fun m!4593723 () Bool)

(assert (=> bm!286339 m!4593723))

(assert (=> bm!286340 m!4591409))

(assert (=> bm!286338 m!4591411))

(declare-fun m!4593725 () Bool)

(assert (=> b!4009318 m!4593725))

(declare-fun m!4593727 () Bool)

(assert (=> bm!286337 m!4593727))

(declare-fun m!4593729 () Bool)

(assert (=> b!4009312 m!4593729))

(assert (=> b!4009312 m!4592077))

(declare-fun m!4593731 () Bool)

(assert (=> bm!286335 m!4593731))

(assert (=> b!4008241 d!1186594))

(assert (=> b!4008241 d!1186326))

(assert (=> b!4008241 d!1186106))

(assert (=> b!4008413 d!1186142))

(declare-fun d!1186598 () Bool)

(assert (=> d!1186598 (= (apply!10019 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418483)))) (seqFromList!5047 (originalCharacters!7422 (_1!24163 (get!14100 lt!1418483))))) (dynLambda!18200 (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418483))))) (seqFromList!5047 (originalCharacters!7422 (_1!24163 (get!14100 lt!1418483))))))))

(declare-fun b_lambda!116985 () Bool)

(assert (=> (not b_lambda!116985) (not d!1186598)))

(declare-fun t!332817 () Bool)

(declare-fun tb!241037 () Bool)

(assert (=> (and b!4007875 (= (toValue!9322 (transformation!6822 (h!48326 rules!2999))) (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418483)))))) t!332817) tb!241037))

(declare-fun result!292146 () Bool)

(assert (=> tb!241037 (= result!292146 (inv!21 (dynLambda!18200 (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418483))))) (seqFromList!5047 (originalCharacters!7422 (_1!24163 (get!14100 lt!1418483)))))))))

(declare-fun m!4593733 () Bool)

(assert (=> tb!241037 m!4593733))

(assert (=> d!1186598 t!332817))

(declare-fun b_and!307997 () Bool)

(assert (= b_and!307991 (and (=> t!332817 result!292146) b_and!307997)))

(declare-fun t!332819 () Bool)

(declare-fun tb!241039 () Bool)

(assert (=> (and b!4007900 (= (toValue!9322 (transformation!6822 (rule!9862 token!484))) (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418483)))))) t!332819) tb!241039))

(declare-fun result!292148 () Bool)

(assert (= result!292148 result!292146))

(assert (=> d!1186598 t!332819))

(declare-fun b_and!307999 () Bool)

(assert (= b_and!307993 (and (=> t!332819 result!292148) b_and!307999)))

(declare-fun tb!241041 () Bool)

(declare-fun t!332821 () Bool)

(assert (=> (and b!4008556 (= (toValue!9322 (transformation!6822 (h!48326 (t!332655 rules!2999)))) (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418483)))))) t!332821) tb!241041))

(declare-fun result!292150 () Bool)

(assert (= result!292150 result!292146))

(assert (=> d!1186598 t!332821))

(declare-fun b_and!308001 () Bool)

(assert (= b_and!307995 (and (=> t!332821 result!292150) b_and!308001)))

(assert (=> d!1186598 m!4592361))

(declare-fun m!4593735 () Bool)

(assert (=> d!1186598 m!4593735))

(assert (=> b!4008413 d!1186598))

(declare-fun d!1186600 () Bool)

(assert (=> d!1186600 (= (seqFromList!5047 (originalCharacters!7422 (_1!24163 (get!14100 lt!1418483)))) (fromListB!2312 (originalCharacters!7422 (_1!24163 (get!14100 lt!1418483)))))))

(declare-fun bs!589241 () Bool)

(assert (= bs!589241 d!1186600))

(declare-fun m!4593737 () Bool)

(assert (=> bs!589241 m!4593737))

(assert (=> b!4008413 d!1186600))

(declare-fun d!1186602 () Bool)

(assert (=> d!1186602 (= (++!11224 (++!11224 lt!1418254 lt!1418281) suffix!1299) (++!11224 lt!1418254 (++!11224 lt!1418281 suffix!1299)))))

(assert (=> d!1186602 true))

(declare-fun _$52!2255 () Unit!61905)

(assert (=> d!1186602 (= (choose!24216 lt!1418254 lt!1418281 suffix!1299) _$52!2255)))

(declare-fun bs!589242 () Bool)

(assert (= bs!589242 d!1186602))

(assert (=> bs!589242 m!4591417))

(assert (=> bs!589242 m!4591417))

(assert (=> bs!589242 m!4592509))

(assert (=> bs!589242 m!4591443))

(assert (=> bs!589242 m!4591443))

(assert (=> bs!589242 m!4592511))

(assert (=> d!1186080 d!1186602))

(assert (=> d!1186080 d!1186044))

(assert (=> d!1186080 d!1186078))

(declare-fun d!1186604 () Bool)

(declare-fun e!2486374 () Bool)

(assert (=> d!1186604 e!2486374))

(declare-fun res!1629534 () Bool)

(assert (=> d!1186604 (=> (not res!1629534) (not e!2486374))))

(declare-fun lt!1418941 () List!43028)

(assert (=> d!1186604 (= res!1629534 (= (content!6506 lt!1418941) ((_ map or) (content!6506 lt!1418254) (content!6506 (++!11224 lt!1418281 suffix!1299)))))))

(declare-fun e!2486373 () List!43028)

(assert (=> d!1186604 (= lt!1418941 e!2486373)))

(declare-fun c!693306 () Bool)

(assert (=> d!1186604 (= c!693306 ((_ is Nil!42904) lt!1418254))))

(assert (=> d!1186604 (= (++!11224 lt!1418254 (++!11224 lt!1418281 suffix!1299)) lt!1418941)))

(declare-fun b!4009339 () Bool)

(assert (=> b!4009339 (= e!2486373 (++!11224 lt!1418281 suffix!1299))))

(declare-fun b!4009342 () Bool)

(assert (=> b!4009342 (= e!2486374 (or (not (= (++!11224 lt!1418281 suffix!1299) Nil!42904)) (= lt!1418941 lt!1418254)))))

(declare-fun b!4009340 () Bool)

(assert (=> b!4009340 (= e!2486373 (Cons!42904 (h!48324 lt!1418254) (++!11224 (t!332653 lt!1418254) (++!11224 lt!1418281 suffix!1299))))))

(declare-fun b!4009341 () Bool)

(declare-fun res!1629533 () Bool)

(assert (=> b!4009341 (=> (not res!1629533) (not e!2486374))))

(assert (=> b!4009341 (= res!1629533 (= (size!32079 lt!1418941) (+ (size!32079 lt!1418254) (size!32079 (++!11224 lt!1418281 suffix!1299)))))))

(assert (= (and d!1186604 c!693306) b!4009339))

(assert (= (and d!1186604 (not c!693306)) b!4009340))

(assert (= (and d!1186604 res!1629534) b!4009341))

(assert (= (and b!4009341 res!1629533) b!4009342))

(declare-fun m!4593739 () Bool)

(assert (=> d!1186604 m!4593739))

(assert (=> d!1186604 m!4591697))

(assert (=> d!1186604 m!4591443))

(declare-fun m!4593741 () Bool)

(assert (=> d!1186604 m!4593741))

(assert (=> b!4009340 m!4591443))

(declare-fun m!4593743 () Bool)

(assert (=> b!4009340 m!4593743))

(declare-fun m!4593745 () Bool)

(assert (=> b!4009341 m!4593745))

(assert (=> b!4009341 m!4591495))

(assert (=> b!4009341 m!4591443))

(declare-fun m!4593747 () Bool)

(assert (=> b!4009341 m!4593747))

(assert (=> d!1186080 d!1186604))

(declare-fun d!1186606 () Bool)

(declare-fun e!2486376 () Bool)

(assert (=> d!1186606 e!2486376))

(declare-fun res!1629536 () Bool)

(assert (=> d!1186606 (=> (not res!1629536) (not e!2486376))))

(declare-fun lt!1418942 () List!43028)

(assert (=> d!1186606 (= res!1629536 (= (content!6506 lt!1418942) ((_ map or) (content!6506 (++!11224 lt!1418254 lt!1418281)) (content!6506 suffix!1299))))))

(declare-fun e!2486375 () List!43028)

(assert (=> d!1186606 (= lt!1418942 e!2486375)))

(declare-fun c!693307 () Bool)

(assert (=> d!1186606 (= c!693307 ((_ is Nil!42904) (++!11224 lt!1418254 lt!1418281)))))

(assert (=> d!1186606 (= (++!11224 (++!11224 lt!1418254 lt!1418281) suffix!1299) lt!1418942)))

(declare-fun b!4009343 () Bool)

(assert (=> b!4009343 (= e!2486375 suffix!1299)))

(declare-fun b!4009346 () Bool)

(assert (=> b!4009346 (= e!2486376 (or (not (= suffix!1299 Nil!42904)) (= lt!1418942 (++!11224 lt!1418254 lt!1418281))))))

(declare-fun b!4009344 () Bool)

(assert (=> b!4009344 (= e!2486375 (Cons!42904 (h!48324 (++!11224 lt!1418254 lt!1418281)) (++!11224 (t!332653 (++!11224 lt!1418254 lt!1418281)) suffix!1299)))))

(declare-fun b!4009345 () Bool)

(declare-fun res!1629535 () Bool)

(assert (=> b!4009345 (=> (not res!1629535) (not e!2486376))))

(assert (=> b!4009345 (= res!1629535 (= (size!32079 lt!1418942) (+ (size!32079 (++!11224 lt!1418254 lt!1418281)) (size!32079 suffix!1299))))))

(assert (= (and d!1186606 c!693307) b!4009343))

(assert (= (and d!1186606 (not c!693307)) b!4009344))

(assert (= (and d!1186606 res!1629536) b!4009345))

(assert (= (and b!4009345 res!1629535) b!4009346))

(declare-fun m!4593749 () Bool)

(assert (=> d!1186606 m!4593749))

(assert (=> d!1186606 m!4591417))

(declare-fun m!4593751 () Bool)

(assert (=> d!1186606 m!4593751))

(assert (=> d!1186606 m!4591689))

(declare-fun m!4593753 () Bool)

(assert (=> b!4009344 m!4593753))

(declare-fun m!4593755 () Bool)

(assert (=> b!4009345 m!4593755))

(assert (=> b!4009345 m!4591417))

(declare-fun m!4593757 () Bool)

(assert (=> b!4009345 m!4593757))

(assert (=> b!4009345 m!4591549))

(assert (=> d!1186080 d!1186606))

(declare-fun d!1186608 () Bool)

(declare-fun lt!1418943 () Int)

(assert (=> d!1186608 (>= lt!1418943 0)))

(declare-fun e!2486377 () Int)

(assert (=> d!1186608 (= lt!1418943 e!2486377)))

(declare-fun c!693308 () Bool)

(assert (=> d!1186608 (= c!693308 ((_ is Nil!42904) (originalCharacters!7422 (_1!24163 (v!39601 lt!1418269)))))))

(assert (=> d!1186608 (= (size!32079 (originalCharacters!7422 (_1!24163 (v!39601 lt!1418269)))) lt!1418943)))

(declare-fun b!4009347 () Bool)

(assert (=> b!4009347 (= e!2486377 0)))

(declare-fun b!4009348 () Bool)

(assert (=> b!4009348 (= e!2486377 (+ 1 (size!32079 (t!332653 (originalCharacters!7422 (_1!24163 (v!39601 lt!1418269)))))))))

(assert (= (and d!1186608 c!693308) b!4009347))

(assert (= (and d!1186608 (not c!693308)) b!4009348))

(declare-fun m!4593759 () Bool)

(assert (=> b!4009348 m!4593759))

(assert (=> d!1186000 d!1186608))

(declare-fun b!4009349 () Bool)

(declare-fun e!2486378 () Bool)

(assert (=> b!4009349 (= e!2486378 (matchR!5688 (regex!6822 (h!48326 rules!2999)) (_1!24165 (findLongestMatchInner!1355 (regex!6822 (h!48326 rules!2999)) Nil!42904 (size!32079 Nil!42904) lt!1418276 lt!1418276 (size!32079 lt!1418276)))))))

(declare-fun b!4009350 () Bool)

(declare-fun res!1629542 () Bool)

(declare-fun e!2486381 () Bool)

(assert (=> b!4009350 (=> (not res!1629542) (not e!2486381))))

(declare-fun lt!1418946 () Option!9236)

(assert (=> b!4009350 (= res!1629542 (= (value!215061 (_1!24163 (get!14100 lt!1418946))) (apply!10019 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418946)))) (seqFromList!5047 (originalCharacters!7422 (_1!24163 (get!14100 lt!1418946)))))))))

(declare-fun b!4009351 () Bool)

(declare-fun e!2486380 () Option!9236)

(assert (=> b!4009351 (= e!2486380 None!9235)))

(declare-fun b!4009352 () Bool)

(declare-fun res!1629537 () Bool)

(assert (=> b!4009352 (=> (not res!1629537) (not e!2486381))))

(assert (=> b!4009352 (= res!1629537 (< (size!32079 (_2!24163 (get!14100 lt!1418946))) (size!32079 lt!1418276)))))

(declare-fun b!4009353 () Bool)

(assert (=> b!4009353 (= e!2486381 (= (size!32080 (_1!24163 (get!14100 lt!1418946))) (size!32079 (originalCharacters!7422 (_1!24163 (get!14100 lt!1418946))))))))

(declare-fun d!1186610 () Bool)

(declare-fun e!2486379 () Bool)

(assert (=> d!1186610 e!2486379))

(declare-fun res!1629540 () Bool)

(assert (=> d!1186610 (=> res!1629540 e!2486379)))

(assert (=> d!1186610 (= res!1629540 (isEmpty!25632 lt!1418946))))

(assert (=> d!1186610 (= lt!1418946 e!2486380)))

(declare-fun c!693309 () Bool)

(declare-fun lt!1418945 () tuple2!42062)

(assert (=> d!1186610 (= c!693309 (isEmpty!25634 (_1!24165 lt!1418945)))))

(assert (=> d!1186610 (= lt!1418945 (findLongestMatch!1268 (regex!6822 (h!48326 rules!2999)) lt!1418276))))

(assert (=> d!1186610 (ruleValid!2754 thiss!21717 (h!48326 rules!2999))))

(assert (=> d!1186610 (= (maxPrefixOneRule!2729 thiss!21717 (h!48326 rules!2999) lt!1418276) lt!1418946)))

(declare-fun b!4009354 () Bool)

(assert (=> b!4009354 (= e!2486380 (Some!9235 (tuple2!42059 (Token!12783 (apply!10019 (transformation!6822 (h!48326 rules!2999)) (seqFromList!5047 (_1!24165 lt!1418945))) (h!48326 rules!2999) (size!32082 (seqFromList!5047 (_1!24165 lt!1418945))) (_1!24165 lt!1418945)) (_2!24165 lt!1418945))))))

(declare-fun lt!1418944 () Unit!61905)

(assert (=> b!4009354 (= lt!1418944 (longestMatchIsAcceptedByMatchOrIsEmpty!1328 (regex!6822 (h!48326 rules!2999)) lt!1418276))))

(declare-fun res!1629539 () Bool)

(assert (=> b!4009354 (= res!1629539 (isEmpty!25634 (_1!24165 (findLongestMatchInner!1355 (regex!6822 (h!48326 rules!2999)) Nil!42904 (size!32079 Nil!42904) lt!1418276 lt!1418276 (size!32079 lt!1418276)))))))

(assert (=> b!4009354 (=> res!1629539 e!2486378)))

(assert (=> b!4009354 e!2486378))

(declare-fun lt!1418948 () Unit!61905)

(assert (=> b!4009354 (= lt!1418948 lt!1418944)))

(declare-fun lt!1418947 () Unit!61905)

(assert (=> b!4009354 (= lt!1418947 (lemmaSemiInverse!1875 (transformation!6822 (h!48326 rules!2999)) (seqFromList!5047 (_1!24165 lt!1418945))))))

(declare-fun b!4009355 () Bool)

(declare-fun res!1629541 () Bool)

(assert (=> b!4009355 (=> (not res!1629541) (not e!2486381))))

(assert (=> b!4009355 (= res!1629541 (= (++!11224 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418946)))) (_2!24163 (get!14100 lt!1418946))) lt!1418276))))

(declare-fun b!4009356 () Bool)

(assert (=> b!4009356 (= e!2486379 e!2486381)))

(declare-fun res!1629538 () Bool)

(assert (=> b!4009356 (=> (not res!1629538) (not e!2486381))))

(assert (=> b!4009356 (= res!1629538 (matchR!5688 (regex!6822 (h!48326 rules!2999)) (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418946))))))))

(declare-fun b!4009357 () Bool)

(declare-fun res!1629543 () Bool)

(assert (=> b!4009357 (=> (not res!1629543) (not e!2486381))))

(assert (=> b!4009357 (= res!1629543 (= (rule!9862 (_1!24163 (get!14100 lt!1418946))) (h!48326 rules!2999)))))

(assert (= (and d!1186610 c!693309) b!4009351))

(assert (= (and d!1186610 (not c!693309)) b!4009354))

(assert (= (and b!4009354 (not res!1629539)) b!4009349))

(assert (= (and d!1186610 (not res!1629540)) b!4009356))

(assert (= (and b!4009356 res!1629538) b!4009355))

(assert (= (and b!4009355 res!1629541) b!4009352))

(assert (= (and b!4009352 res!1629537) b!4009357))

(assert (= (and b!4009357 res!1629543) b!4009350))

(assert (= (and b!4009350 res!1629542) b!4009353))

(declare-fun m!4593761 () Bool)

(assert (=> b!4009356 m!4593761))

(declare-fun m!4593763 () Bool)

(assert (=> b!4009356 m!4593763))

(assert (=> b!4009356 m!4593763))

(declare-fun m!4593765 () Bool)

(assert (=> b!4009356 m!4593765))

(assert (=> b!4009356 m!4593765))

(declare-fun m!4593767 () Bool)

(assert (=> b!4009356 m!4593767))

(assert (=> b!4009355 m!4593761))

(assert (=> b!4009355 m!4593763))

(assert (=> b!4009355 m!4593763))

(assert (=> b!4009355 m!4593765))

(assert (=> b!4009355 m!4593765))

(declare-fun m!4593769 () Bool)

(assert (=> b!4009355 m!4593769))

(declare-fun m!4593771 () Bool)

(assert (=> d!1186610 m!4593771))

(declare-fun m!4593773 () Bool)

(assert (=> d!1186610 m!4593773))

(declare-fun m!4593775 () Bool)

(assert (=> d!1186610 m!4593775))

(assert (=> d!1186610 m!4592831))

(assert (=> b!4009350 m!4593761))

(declare-fun m!4593777 () Bool)

(assert (=> b!4009350 m!4593777))

(assert (=> b!4009350 m!4593777))

(declare-fun m!4593779 () Bool)

(assert (=> b!4009350 m!4593779))

(assert (=> b!4009357 m!4593761))

(assert (=> b!4009349 m!4592077))

(assert (=> b!4009349 m!4591663))

(assert (=> b!4009349 m!4592077))

(assert (=> b!4009349 m!4591663))

(declare-fun m!4593781 () Bool)

(assert (=> b!4009349 m!4593781))

(declare-fun m!4593783 () Bool)

(assert (=> b!4009349 m!4593783))

(assert (=> b!4009353 m!4593761))

(declare-fun m!4593785 () Bool)

(assert (=> b!4009353 m!4593785))

(assert (=> b!4009354 m!4592077))

(assert (=> b!4009354 m!4591663))

(assert (=> b!4009354 m!4593781))

(assert (=> b!4009354 m!4591663))

(declare-fun m!4593787 () Bool)

(assert (=> b!4009354 m!4593787))

(declare-fun m!4593789 () Bool)

(assert (=> b!4009354 m!4593789))

(assert (=> b!4009354 m!4593787))

(declare-fun m!4593791 () Bool)

(assert (=> b!4009354 m!4593791))

(assert (=> b!4009354 m!4593787))

(declare-fun m!4593793 () Bool)

(assert (=> b!4009354 m!4593793))

(assert (=> b!4009354 m!4592077))

(declare-fun m!4593795 () Bool)

(assert (=> b!4009354 m!4593795))

(assert (=> b!4009354 m!4593787))

(declare-fun m!4593797 () Bool)

(assert (=> b!4009354 m!4593797))

(assert (=> b!4009352 m!4593761))

(declare-fun m!4593799 () Bool)

(assert (=> b!4009352 m!4593799))

(assert (=> b!4009352 m!4591663))

(assert (=> bm!286225 d!1186610))

(declare-fun d!1186612 () Bool)

(declare-fun e!2486387 () Bool)

(assert (=> d!1186612 e!2486387))

(declare-fun res!1629544 () Bool)

(assert (=> d!1186612 (=> res!1629544 e!2486387)))

(declare-fun lt!1418950 () Bool)

(assert (=> d!1186612 (= res!1629544 (not lt!1418950))))

(declare-fun e!2486389 () Bool)

(assert (=> d!1186612 (= lt!1418950 e!2486389)))

(declare-fun res!1629546 () Bool)

(assert (=> d!1186612 (=> res!1629546 e!2486389)))

(assert (=> d!1186612 (= res!1629546 ((_ is Nil!42904) (tail!6247 lt!1418254)))))

(assert (=> d!1186612 (= (isPrefix!3909 (tail!6247 lt!1418254) (tail!6247 lt!1418264)) lt!1418950)))

(declare-fun b!4009370 () Bool)

(declare-fun e!2486388 () Bool)

(assert (=> b!4009370 (= e!2486388 (isPrefix!3909 (tail!6247 (tail!6247 lt!1418254)) (tail!6247 (tail!6247 lt!1418264))))))

(declare-fun b!4009369 () Bool)

(declare-fun res!1629545 () Bool)

(assert (=> b!4009369 (=> (not res!1629545) (not e!2486388))))

(assert (=> b!4009369 (= res!1629545 (= (head!8515 (tail!6247 lt!1418254)) (head!8515 (tail!6247 lt!1418264))))))

(declare-fun b!4009371 () Bool)

(assert (=> b!4009371 (= e!2486387 (>= (size!32079 (tail!6247 lt!1418264)) (size!32079 (tail!6247 lt!1418254))))))

(declare-fun b!4009368 () Bool)

(assert (=> b!4009368 (= e!2486389 e!2486388)))

(declare-fun res!1629547 () Bool)

(assert (=> b!4009368 (=> (not res!1629547) (not e!2486388))))

(assert (=> b!4009368 (= res!1629547 (not ((_ is Nil!42904) (tail!6247 lt!1418264))))))

(assert (= (and d!1186612 (not res!1629546)) b!4009368))

(assert (= (and b!4009368 res!1629547) b!4009369))

(assert (= (and b!4009369 res!1629545) b!4009370))

(assert (= (and d!1186612 (not res!1629544)) b!4009371))

(assert (=> b!4009370 m!4592151))

(assert (=> b!4009370 m!4592669))

(assert (=> b!4009370 m!4592235))

(declare-fun m!4593809 () Bool)

(assert (=> b!4009370 m!4593809))

(assert (=> b!4009370 m!4592669))

(assert (=> b!4009370 m!4593809))

(declare-fun m!4593811 () Bool)

(assert (=> b!4009370 m!4593811))

(assert (=> b!4009369 m!4592151))

(assert (=> b!4009369 m!4592667))

(assert (=> b!4009369 m!4592235))

(declare-fun m!4593813 () Bool)

(assert (=> b!4009369 m!4593813))

(assert (=> b!4009371 m!4592235))

(declare-fun m!4593815 () Bool)

(assert (=> b!4009371 m!4593815))

(assert (=> b!4009371 m!4592151))

(declare-fun m!4593817 () Bool)

(assert (=> b!4009371 m!4593817))

(assert (=> b!4008373 d!1186612))

(assert (=> b!4008373 d!1186172))

(declare-fun d!1186616 () Bool)

(assert (=> d!1186616 (= (tail!6247 lt!1418264) (t!332653 lt!1418264))))

(assert (=> b!4008373 d!1186616))

(assert (=> d!1186064 d!1186062))

(declare-fun d!1186618 () Bool)

(assert (=> d!1186618 (isPrefix!3909 lt!1418276 lt!1418276)))

(assert (=> d!1186618 true))

(declare-fun _$45!1946 () Unit!61905)

(assert (=> d!1186618 (= (choose!24214 lt!1418276 lt!1418276) _$45!1946)))

(declare-fun bs!589243 () Bool)

(assert (= bs!589243 d!1186618))

(assert (=> bs!589243 m!4591409))

(assert (=> d!1186064 d!1186618))

(assert (=> bm!286233 d!1186456))

(declare-fun d!1186620 () Bool)

(declare-fun charsToBigInt!0 (List!43029 Int) Int)

(assert (=> d!1186620 (= (inv!15 (value!215061 token!484)) (= (charsToBigInt!0 (text!49813 (value!215061 token!484)) 0) (value!215056 (value!215061 token!484))))))

(declare-fun bs!589244 () Bool)

(assert (= bs!589244 d!1186620))

(declare-fun m!4593847 () Bool)

(assert (=> bs!589244 m!4593847))

(assert (=> b!4008351 d!1186620))

(declare-fun d!1186624 () Bool)

(declare-fun lt!1418958 () List!43028)

(assert (=> d!1186624 (= (++!11224 (t!332653 lt!1418254) lt!1418958) (tail!6247 prefix!494))))

(declare-fun e!2486395 () List!43028)

(assert (=> d!1186624 (= lt!1418958 e!2486395)))

(declare-fun c!693318 () Bool)

(assert (=> d!1186624 (= c!693318 ((_ is Cons!42904) (t!332653 lt!1418254)))))

(assert (=> d!1186624 (>= (size!32079 (tail!6247 prefix!494)) (size!32079 (t!332653 lt!1418254)))))

(assert (=> d!1186624 (= (getSuffix!2334 (tail!6247 prefix!494) (t!332653 lt!1418254)) lt!1418958)))

(declare-fun b!4009385 () Bool)

(assert (=> b!4009385 (= e!2486395 (getSuffix!2334 (tail!6247 (tail!6247 prefix!494)) (t!332653 (t!332653 lt!1418254))))))

(declare-fun b!4009386 () Bool)

(assert (=> b!4009386 (= e!2486395 (tail!6247 prefix!494))))

(assert (= (and d!1186624 c!693318) b!4009385))

(assert (= (and d!1186624 (not c!693318)) b!4009386))

(declare-fun m!4593853 () Bool)

(assert (=> d!1186624 m!4593853))

(assert (=> d!1186624 m!4592389))

(assert (=> d!1186624 m!4593165))

(assert (=> d!1186624 m!4592257))

(assert (=> b!4009385 m!4592389))

(assert (=> b!4009385 m!4593153))

(assert (=> b!4009385 m!4593153))

(declare-fun m!4593855 () Bool)

(assert (=> b!4009385 m!4593855))

(assert (=> b!4008445 d!1186624))

(assert (=> b!4008445 d!1186346))

(assert (=> d!1186026 d!1186018))

(assert (=> d!1186026 d!1185980))

(assert (=> d!1186026 d!1186004))

(declare-fun d!1186632 () Bool)

(assert (=> d!1186632 (= (maxPrefixOneRule!2729 thiss!21717 (rule!9862 (_1!24163 (v!39601 lt!1418269))) lt!1418249) (Some!9235 (tuple2!42059 (Token!12783 (apply!10019 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))) (seqFromList!5047 lt!1418251)) (rule!9862 (_1!24163 (v!39601 lt!1418269))) (size!32079 lt!1418251) lt!1418251) (_2!24163 (v!39601 lt!1418269)))))))

(assert (=> d!1186632 true))

(declare-fun _$59!649 () Unit!61905)

(assert (=> d!1186632 (= (choose!24209 thiss!21717 rules!2999 lt!1418251 lt!1418249 (_2!24163 (v!39601 lt!1418269)) (rule!9862 (_1!24163 (v!39601 lt!1418269)))) _$59!649)))

(declare-fun bs!589245 () Bool)

(assert (= bs!589245 d!1186632))

(assert (=> bs!589245 m!4591521))

(assert (=> bs!589245 m!4591525))

(assert (=> bs!589245 m!4591525))

(assert (=> bs!589245 m!4591527))

(assert (=> bs!589245 m!4591519))

(assert (=> d!1186026 d!1186632))

(assert (=> d!1186026 d!1186014))

(assert (=> d!1186026 d!1186028))

(declare-fun d!1186634 () Bool)

(declare-fun lt!1418961 () Int)

(assert (=> d!1186634 (>= lt!1418961 0)))

(declare-fun e!2486400 () Int)

(assert (=> d!1186634 (= lt!1418961 e!2486400)))

(declare-fun c!693320 () Bool)

(assert (=> d!1186634 (= c!693320 ((_ is Nil!42904) (++!11224 lt!1418251 (_2!24163 (v!39601 lt!1418269)))))))

(assert (=> d!1186634 (= (size!32079 (++!11224 lt!1418251 (_2!24163 (v!39601 lt!1418269)))) lt!1418961)))

(declare-fun b!4009393 () Bool)

(assert (=> b!4009393 (= e!2486400 0)))

(declare-fun b!4009394 () Bool)

(assert (=> b!4009394 (= e!2486400 (+ 1 (size!32079 (t!332653 (++!11224 lt!1418251 (_2!24163 (v!39601 lt!1418269)))))))))

(assert (= (and d!1186634 c!693320) b!4009393))

(assert (= (and d!1186634 (not c!693320)) b!4009394))

(declare-fun m!4593865 () Bool)

(assert (=> b!4009394 m!4593865))

(assert (=> b!4008400 d!1186634))

(assert (=> b!4008400 d!1186018))

(declare-fun d!1186640 () Bool)

(assert (=> d!1186640 (= (inv!57308 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 token!484))) (value!215061 token!484))) (isBalanced!3660 (c!692980 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 token!484))) (value!215061 token!484)))))))

(declare-fun bs!589247 () Bool)

(assert (= bs!589247 d!1186640))

(declare-fun m!4593867 () Bool)

(assert (=> bs!589247 m!4593867))

(assert (=> tb!240889 d!1186640))

(assert (=> b!4008448 d!1186162))

(declare-fun d!1186644 () Bool)

(assert (=> d!1186644 (= (head!8515 prefix!494) (h!48324 prefix!494))))

(assert (=> b!4008448 d!1186644))

(declare-fun d!1186646 () Bool)

(assert (=> d!1186646 (= (isDefined!7065 lt!1418330) (not (isEmpty!25632 lt!1418330)))))

(declare-fun bs!589248 () Bool)

(assert (= bs!589248 d!1186646))

(assert (=> bs!589248 m!4591655))

(assert (=> b!4008024 d!1186646))

(assert (=> b!4008428 d!1186106))

(assert (=> b!4008428 d!1185986))

(assert (=> b!4008430 d!1186162))

(assert (=> b!4008430 d!1186122))

(declare-fun d!1186652 () Bool)

(declare-fun c!693324 () Bool)

(assert (=> d!1186652 (= c!693324 ((_ is Node!13033) (c!692980 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 token!484))) (value!215061 token!484)))))))

(declare-fun e!2486405 () Bool)

(assert (=> d!1186652 (= (inv!57307 (c!692980 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 token!484))) (value!215061 token!484)))) e!2486405)))

(declare-fun b!4009403 () Bool)

(assert (=> b!4009403 (= e!2486405 (inv!57311 (c!692980 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 token!484))) (value!215061 token!484)))))))

(declare-fun b!4009404 () Bool)

(declare-fun e!2486406 () Bool)

(assert (=> b!4009404 (= e!2486405 e!2486406)))

(declare-fun res!1629561 () Bool)

(assert (=> b!4009404 (= res!1629561 (not ((_ is Leaf!20151) (c!692980 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 token!484))) (value!215061 token!484))))))))

(assert (=> b!4009404 (=> res!1629561 e!2486406)))

(declare-fun b!4009405 () Bool)

(assert (=> b!4009405 (= e!2486406 (inv!57312 (c!692980 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 token!484))) (value!215061 token!484)))))))

(assert (= (and d!1186652 c!693324) b!4009403))

(assert (= (and d!1186652 (not c!693324)) b!4009404))

(assert (= (and b!4009404 (not res!1629561)) b!4009405))

(declare-fun m!4593883 () Bool)

(assert (=> b!4009403 m!4593883))

(declare-fun m!4593885 () Bool)

(assert (=> b!4009405 m!4593885))

(assert (=> b!4008103 d!1186652))

(declare-fun d!1186656 () Bool)

(declare-fun lt!1418966 () Int)

(assert (=> d!1186656 (>= lt!1418966 0)))

(declare-fun e!2486408 () Int)

(assert (=> d!1186656 (= lt!1418966 e!2486408)))

(declare-fun c!693326 () Bool)

(assert (=> d!1186656 (= c!693326 ((_ is Nil!42904) (t!332653 suffix!1299)))))

(assert (=> d!1186656 (= (size!32079 (t!332653 suffix!1299)) lt!1418966)))

(declare-fun b!4009408 () Bool)

(assert (=> b!4009408 (= e!2486408 0)))

(declare-fun b!4009409 () Bool)

(assert (=> b!4009409 (= e!2486408 (+ 1 (size!32079 (t!332653 (t!332653 suffix!1299)))))))

(assert (= (and d!1186656 c!693326) b!4009408))

(assert (= (and d!1186656 (not c!693326)) b!4009409))

(declare-fun m!4593889 () Bool)

(assert (=> b!4009409 m!4593889))

(assert (=> b!4008422 d!1186656))

(declare-fun d!1186660 () Bool)

(declare-fun e!2486411 () Bool)

(assert (=> d!1186660 e!2486411))

(declare-fun res!1629563 () Bool)

(assert (=> d!1186660 (=> (not res!1629563) (not e!2486411))))

(declare-fun lt!1418968 () List!43028)

(assert (=> d!1186660 (= res!1629563 (= (content!6506 lt!1418968) ((_ map or) (content!6506 (t!332653 lt!1418254)) (content!6506 newSuffixResult!27))))))

(declare-fun e!2486410 () List!43028)

(assert (=> d!1186660 (= lt!1418968 e!2486410)))

(declare-fun c!693328 () Bool)

(assert (=> d!1186660 (= c!693328 ((_ is Nil!42904) (t!332653 lt!1418254)))))

(assert (=> d!1186660 (= (++!11224 (t!332653 lt!1418254) newSuffixResult!27) lt!1418968)))

(declare-fun b!4009412 () Bool)

(assert (=> b!4009412 (= e!2486410 newSuffixResult!27)))

(declare-fun b!4009415 () Bool)

(assert (=> b!4009415 (= e!2486411 (or (not (= newSuffixResult!27 Nil!42904)) (= lt!1418968 (t!332653 lt!1418254))))))

(declare-fun b!4009413 () Bool)

(assert (=> b!4009413 (= e!2486410 (Cons!42904 (h!48324 (t!332653 lt!1418254)) (++!11224 (t!332653 (t!332653 lt!1418254)) newSuffixResult!27)))))

(declare-fun b!4009414 () Bool)

(declare-fun res!1629562 () Bool)

(assert (=> b!4009414 (=> (not res!1629562) (not e!2486411))))

(assert (=> b!4009414 (= res!1629562 (= (size!32079 lt!1418968) (+ (size!32079 (t!332653 lt!1418254)) (size!32079 newSuffixResult!27))))))

(assert (= (and d!1186660 c!693328) b!4009412))

(assert (= (and d!1186660 (not c!693328)) b!4009413))

(assert (= (and d!1186660 res!1629563) b!4009414))

(assert (= (and b!4009414 res!1629562) b!4009415))

(declare-fun m!4593893 () Bool)

(assert (=> d!1186660 m!4593893))

(assert (=> d!1186660 m!4592603))

(assert (=> d!1186660 m!4592193))

(declare-fun m!4593895 () Bool)

(assert (=> b!4009413 m!4593895))

(declare-fun m!4593897 () Bool)

(assert (=> b!4009414 m!4593897))

(assert (=> b!4009414 m!4592257))

(assert (=> b!4009414 m!4592199))

(assert (=> b!4008359 d!1186660))

(assert (=> b!4008463 d!1186106))

(declare-fun d!1186664 () Bool)

(declare-fun e!2486413 () Bool)

(assert (=> d!1186664 e!2486413))

(declare-fun res!1629565 () Bool)

(assert (=> d!1186664 (=> (not res!1629565) (not e!2486413))))

(declare-fun lt!1418969 () List!43028)

(assert (=> d!1186664 (= res!1629565 (= (content!6506 lt!1418969) ((_ map or) (content!6506 (t!332653 lt!1418254)) (content!6506 lt!1418244))))))

(declare-fun e!2486412 () List!43028)

(assert (=> d!1186664 (= lt!1418969 e!2486412)))

(declare-fun c!693329 () Bool)

(assert (=> d!1186664 (= c!693329 ((_ is Nil!42904) (t!332653 lt!1418254)))))

(assert (=> d!1186664 (= (++!11224 (t!332653 lt!1418254) lt!1418244) lt!1418969)))

(declare-fun b!4009416 () Bool)

(assert (=> b!4009416 (= e!2486412 lt!1418244)))

(declare-fun b!4009419 () Bool)

(assert (=> b!4009419 (= e!2486413 (or (not (= lt!1418244 Nil!42904)) (= lt!1418969 (t!332653 lt!1418254))))))

(declare-fun b!4009417 () Bool)

(assert (=> b!4009417 (= e!2486412 (Cons!42904 (h!48324 (t!332653 lt!1418254)) (++!11224 (t!332653 (t!332653 lt!1418254)) lt!1418244)))))

(declare-fun b!4009418 () Bool)

(declare-fun res!1629564 () Bool)

(assert (=> b!4009418 (=> (not res!1629564) (not e!2486413))))

(assert (=> b!4009418 (= res!1629564 (= (size!32079 lt!1418969) (+ (size!32079 (t!332653 lt!1418254)) (size!32079 lt!1418244))))))

(assert (= (and d!1186664 c!693329) b!4009416))

(assert (= (and d!1186664 (not c!693329)) b!4009417))

(assert (= (and d!1186664 res!1629565) b!4009418))

(assert (= (and b!4009418 res!1629564) b!4009419))

(declare-fun m!4593899 () Bool)

(assert (=> d!1186664 m!4593899))

(assert (=> d!1186664 m!4592603))

(assert (=> d!1186664 m!4592483))

(declare-fun m!4593901 () Bool)

(assert (=> b!4009417 m!4593901))

(declare-fun m!4593903 () Bool)

(assert (=> b!4009418 m!4593903))

(assert (=> b!4009418 m!4592257))

(assert (=> b!4009418 m!4592489))

(assert (=> b!4008511 d!1186664))

(declare-fun d!1186666 () Bool)

(assert (=> d!1186666 (= (head!8515 newSuffix!27) (h!48324 newSuffix!27))))

(assert (=> b!4008376 d!1186666))

(declare-fun d!1186668 () Bool)

(assert (=> d!1186668 (= (head!8515 suffix!1299) (h!48324 suffix!1299))))

(assert (=> b!4008376 d!1186668))

(declare-fun d!1186670 () Bool)

(declare-fun c!693330 () Bool)

(assert (=> d!1186670 (= c!693330 ((_ is Nil!42904) lt!1418345))))

(declare-fun e!2486414 () (InoxSet C!23640))

(assert (=> d!1186670 (= (content!6506 lt!1418345) e!2486414)))

(declare-fun b!4009420 () Bool)

(assert (=> b!4009420 (= e!2486414 ((as const (Array C!23640 Bool)) false))))

(declare-fun b!4009421 () Bool)

(assert (=> b!4009421 (= e!2486414 ((_ map or) (store ((as const (Array C!23640 Bool)) false) (h!48324 lt!1418345) true) (content!6506 (t!332653 lt!1418345))))))

(assert (= (and d!1186670 c!693330) b!4009420))

(assert (= (and d!1186670 (not c!693330)) b!4009421))

(declare-fun m!4593905 () Bool)

(assert (=> b!4009421 m!4593905))

(declare-fun m!4593907 () Bool)

(assert (=> b!4009421 m!4593907))

(assert (=> d!1185828 d!1186670))

(declare-fun d!1186672 () Bool)

(declare-fun c!693331 () Bool)

(assert (=> d!1186672 (= c!693331 ((_ is Nil!42904) prefix!494))))

(declare-fun e!2486415 () (InoxSet C!23640))

(assert (=> d!1186672 (= (content!6506 prefix!494) e!2486415)))

(declare-fun b!4009422 () Bool)

(assert (=> b!4009422 (= e!2486415 ((as const (Array C!23640 Bool)) false))))

(declare-fun b!4009423 () Bool)

(assert (=> b!4009423 (= e!2486415 ((_ map or) (store ((as const (Array C!23640 Bool)) false) (h!48324 prefix!494) true) (content!6506 (t!332653 prefix!494))))))

(assert (= (and d!1186672 c!693331) b!4009422))

(assert (= (and d!1186672 (not c!693331)) b!4009423))

(declare-fun m!4593909 () Bool)

(assert (=> b!4009423 m!4593909))

(declare-fun m!4593911 () Bool)

(assert (=> b!4009423 m!4593911))

(assert (=> d!1185828 d!1186672))

(assert (=> d!1185828 d!1186178))

(assert (=> b!4008507 d!1186162))

(declare-fun d!1186674 () Bool)

(assert (=> d!1186674 (= (head!8515 lt!1418249) (h!48324 lt!1418249))))

(assert (=> b!4008507 d!1186674))

(assert (=> d!1185842 d!1185836))

(declare-fun d!1186676 () Bool)

(assert (=> d!1186676 (ruleValid!2754 thiss!21717 (rule!9862 token!484))))

(assert (=> d!1186676 true))

(declare-fun _$65!1441 () Unit!61905)

(assert (=> d!1186676 (= (choose!24204 thiss!21717 (rule!9862 token!484) rules!2999) _$65!1441)))

(declare-fun bs!589250 () Bool)

(assert (= bs!589250 d!1186676))

(assert (=> bs!589250 m!4591467))

(assert (=> d!1185842 d!1186676))

(declare-fun d!1186682 () Bool)

(declare-fun lt!1418971 () Bool)

(assert (=> d!1186682 (= lt!1418971 (select (content!6507 rules!2999) (rule!9862 token!484)))))

(declare-fun e!2486419 () Bool)

(assert (=> d!1186682 (= lt!1418971 e!2486419)))

(declare-fun res!1629569 () Bool)

(assert (=> d!1186682 (=> (not res!1629569) (not e!2486419))))

(assert (=> d!1186682 (= res!1629569 ((_ is Cons!42906) rules!2999))))

(assert (=> d!1186682 (= (contains!8529 rules!2999 (rule!9862 token!484)) lt!1418971)))

(declare-fun b!4009426 () Bool)

(declare-fun e!2486418 () Bool)

(assert (=> b!4009426 (= e!2486419 e!2486418)))

(declare-fun res!1629568 () Bool)

(assert (=> b!4009426 (=> res!1629568 e!2486418)))

(assert (=> b!4009426 (= res!1629568 (= (h!48326 rules!2999) (rule!9862 token!484)))))

(declare-fun b!4009427 () Bool)

(assert (=> b!4009427 (= e!2486418 (contains!8529 (t!332655 rules!2999) (rule!9862 token!484)))))

(assert (= (and d!1186682 res!1629569) b!4009426))

(assert (= (and b!4009426 (not res!1629568)) b!4009427))

(assert (=> d!1186682 m!4593133))

(declare-fun m!4593919 () Bool)

(assert (=> d!1186682 m!4593919))

(declare-fun m!4593921 () Bool)

(assert (=> b!4009427 m!4593921))

(assert (=> d!1185842 d!1186682))

(declare-fun d!1186686 () Bool)

(declare-fun e!2486422 () Bool)

(assert (=> d!1186686 e!2486422))

(declare-fun res!1629572 () Bool)

(assert (=> d!1186686 (=> res!1629572 e!2486422)))

(declare-fun lt!1418973 () Bool)

(assert (=> d!1186686 (= res!1629572 (not lt!1418973))))

(declare-fun e!2486424 () Bool)

(assert (=> d!1186686 (= lt!1418973 e!2486424)))

(declare-fun res!1629574 () Bool)

(assert (=> d!1186686 (=> res!1629574 e!2486424)))

(assert (=> d!1186686 (= res!1629574 ((_ is Nil!42904) (tail!6247 lt!1418254)))))

(assert (=> d!1186686 (= (isPrefix!3909 (tail!6247 lt!1418254) (tail!6247 lt!1418284)) lt!1418973)))

(declare-fun b!4009434 () Bool)

(declare-fun e!2486423 () Bool)

(assert (=> b!4009434 (= e!2486423 (isPrefix!3909 (tail!6247 (tail!6247 lt!1418254)) (tail!6247 (tail!6247 lt!1418284))))))

(declare-fun b!4009433 () Bool)

(declare-fun res!1629573 () Bool)

(assert (=> b!4009433 (=> (not res!1629573) (not e!2486423))))

(assert (=> b!4009433 (= res!1629573 (= (head!8515 (tail!6247 lt!1418254)) (head!8515 (tail!6247 lt!1418284))))))

(declare-fun b!4009435 () Bool)

(assert (=> b!4009435 (= e!2486422 (>= (size!32079 (tail!6247 lt!1418284)) (size!32079 (tail!6247 lt!1418254))))))

(declare-fun b!4009432 () Bool)

(assert (=> b!4009432 (= e!2486424 e!2486423)))

(declare-fun res!1629575 () Bool)

(assert (=> b!4009432 (=> (not res!1629575) (not e!2486423))))

(assert (=> b!4009432 (= res!1629575 (not ((_ is Nil!42904) (tail!6247 lt!1418284))))))

(assert (= (and d!1186686 (not res!1629574)) b!4009432))

(assert (= (and b!4009432 res!1629575) b!4009433))

(assert (= (and b!4009433 res!1629573) b!4009434))

(assert (= (and d!1186686 (not res!1629572)) b!4009435))

(assert (=> b!4009434 m!4592151))

(assert (=> b!4009434 m!4592669))

(assert (=> b!4009434 m!4592409))

(declare-fun m!4593933 () Bool)

(assert (=> b!4009434 m!4593933))

(assert (=> b!4009434 m!4592669))

(assert (=> b!4009434 m!4593933))

(declare-fun m!4593935 () Bool)

(assert (=> b!4009434 m!4593935))

(assert (=> b!4009433 m!4592151))

(assert (=> b!4009433 m!4592667))

(assert (=> b!4009433 m!4592409))

(declare-fun m!4593937 () Bool)

(assert (=> b!4009433 m!4593937))

(assert (=> b!4009435 m!4592409))

(declare-fun m!4593939 () Bool)

(assert (=> b!4009435 m!4593939))

(assert (=> b!4009435 m!4592151))

(assert (=> b!4009435 m!4593817))

(assert (=> b!4008435 d!1186686))

(assert (=> b!4008435 d!1186172))

(declare-fun d!1186692 () Bool)

(assert (=> d!1186692 (= (tail!6247 lt!1418284) (t!332653 lt!1418284))))

(assert (=> b!4008435 d!1186692))

(declare-fun d!1186694 () Bool)

(declare-fun lt!1418975 () Bool)

(assert (=> d!1186694 (= lt!1418975 (select (content!6507 rules!2999) (rule!9862 (_1!24163 (get!14100 lt!1418457)))))))

(declare-fun e!2486433 () Bool)

(assert (=> d!1186694 (= lt!1418975 e!2486433)))

(declare-fun res!1629585 () Bool)

(assert (=> d!1186694 (=> (not res!1629585) (not e!2486433))))

(assert (=> d!1186694 (= res!1629585 ((_ is Cons!42906) rules!2999))))

(assert (=> d!1186694 (= (contains!8529 rules!2999 (rule!9862 (_1!24163 (get!14100 lt!1418457)))) lt!1418975)))

(declare-fun b!4009450 () Bool)

(declare-fun e!2486432 () Bool)

(assert (=> b!4009450 (= e!2486433 e!2486432)))

(declare-fun res!1629584 () Bool)

(assert (=> b!4009450 (=> res!1629584 e!2486432)))

(assert (=> b!4009450 (= res!1629584 (= (h!48326 rules!2999) (rule!9862 (_1!24163 (get!14100 lt!1418457)))))))

(declare-fun b!4009451 () Bool)

(assert (=> b!4009451 (= e!2486432 (contains!8529 (t!332655 rules!2999) (rule!9862 (_1!24163 (get!14100 lt!1418457)))))))

(assert (= (and d!1186694 res!1629585) b!4009450))

(assert (= (and b!4009450 (not res!1629584)) b!4009451))

(assert (=> d!1186694 m!4593133))

(declare-fun m!4593941 () Bool)

(assert (=> d!1186694 m!4593941))

(declare-fun m!4593943 () Bool)

(assert (=> b!4009451 m!4593943))

(assert (=> b!4008368 d!1186694))

(assert (=> b!4008368 d!1186156))

(assert (=> b!4008246 d!1186594))

(declare-fun d!1186696 () Bool)

(declare-fun e!2486434 () Bool)

(assert (=> d!1186696 e!2486434))

(declare-fun res!1629586 () Bool)

(assert (=> d!1186696 (=> res!1629586 e!2486434)))

(assert (=> d!1186696 (= res!1629586 (isEmpty!25634 (_1!24165 (findLongestMatchInner!1355 (regex!6822 (rule!9862 token!484)) Nil!42904 (size!32079 Nil!42904) lt!1418276 lt!1418276 (size!32079 lt!1418276)))))))

(declare-fun lt!1418976 () Unit!61905)

(assert (=> d!1186696 (= lt!1418976 (choose!24218 (regex!6822 (rule!9862 token!484)) lt!1418276))))

(assert (=> d!1186696 (validRegex!5314 (regex!6822 (rule!9862 token!484)))))

(assert (=> d!1186696 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1328 (regex!6822 (rule!9862 token!484)) lt!1418276) lt!1418976)))

(declare-fun b!4009452 () Bool)

(assert (=> b!4009452 (= e!2486434 (matchR!5688 (regex!6822 (rule!9862 token!484)) (_1!24165 (findLongestMatchInner!1355 (regex!6822 (rule!9862 token!484)) Nil!42904 (size!32079 Nil!42904) lt!1418276 lt!1418276 (size!32079 lt!1418276)))))))

(assert (= (and d!1186696 (not res!1629586)) b!4009452))

(declare-fun m!4593945 () Bool)

(assert (=> d!1186696 m!4593945))

(assert (=> d!1186696 m!4591763))

(assert (=> d!1186696 m!4592093))

(assert (=> d!1186696 m!4591663))

(assert (=> d!1186696 m!4592077))

(assert (=> d!1186696 m!4591663))

(assert (=> d!1186696 m!4592079))

(assert (=> d!1186696 m!4592077))

(assert (=> b!4009452 m!4592077))

(assert (=> b!4009452 m!4591663))

(assert (=> b!4009452 m!4592077))

(assert (=> b!4009452 m!4591663))

(assert (=> b!4009452 m!4592079))

(assert (=> b!4009452 m!4592081))

(assert (=> b!4008246 d!1186696))

(declare-fun d!1186698 () Bool)

(assert (=> d!1186698 (= (isEmpty!25634 (_1!24165 (findLongestMatchInner!1355 (regex!6822 (rule!9862 token!484)) Nil!42904 (size!32079 Nil!42904) lt!1418276 lt!1418276 (size!32079 lt!1418276)))) ((_ is Nil!42904) (_1!24165 (findLongestMatchInner!1355 (regex!6822 (rule!9862 token!484)) Nil!42904 (size!32079 Nil!42904) lt!1418276 lt!1418276 (size!32079 lt!1418276)))))))

(assert (=> b!4008246 d!1186698))

(declare-fun d!1186700 () Bool)

(declare-fun lt!1418977 () Int)

(assert (=> d!1186700 (= lt!1418977 (size!32079 (list!15942 (seqFromList!5047 (_1!24165 lt!1418425)))))))

(assert (=> d!1186700 (= lt!1418977 (size!32084 (c!692980 (seqFromList!5047 (_1!24165 lt!1418425)))))))

(assert (=> d!1186700 (= (size!32082 (seqFromList!5047 (_1!24165 lt!1418425))) lt!1418977)))

(declare-fun bs!589252 () Bool)

(assert (= bs!589252 d!1186700))

(assert (=> bs!589252 m!4592085))

(declare-fun m!4593957 () Bool)

(assert (=> bs!589252 m!4593957))

(assert (=> bs!589252 m!4593957))

(declare-fun m!4593959 () Bool)

(assert (=> bs!589252 m!4593959))

(declare-fun m!4593961 () Bool)

(assert (=> bs!589252 m!4593961))

(assert (=> b!4008246 d!1186700))

(declare-fun d!1186702 () Bool)

(assert (=> d!1186702 (= (apply!10019 (transformation!6822 (rule!9862 token!484)) (seqFromList!5047 (_1!24165 lt!1418425))) (dynLambda!18200 (toValue!9322 (transformation!6822 (rule!9862 token!484))) (seqFromList!5047 (_1!24165 lt!1418425))))))

(declare-fun b_lambda!116987 () Bool)

(assert (=> (not b_lambda!116987) (not d!1186702)))

(declare-fun tb!241043 () Bool)

(declare-fun t!332823 () Bool)

(assert (=> (and b!4007875 (= (toValue!9322 (transformation!6822 (h!48326 rules!2999))) (toValue!9322 (transformation!6822 (rule!9862 token!484)))) t!332823) tb!241043))

(declare-fun result!292152 () Bool)

(assert (=> tb!241043 (= result!292152 (inv!21 (dynLambda!18200 (toValue!9322 (transformation!6822 (rule!9862 token!484))) (seqFromList!5047 (_1!24165 lt!1418425)))))))

(declare-fun m!4593963 () Bool)

(assert (=> tb!241043 m!4593963))

(assert (=> d!1186702 t!332823))

(declare-fun b_and!308003 () Bool)

(assert (= b_and!307997 (and (=> t!332823 result!292152) b_and!308003)))

(declare-fun t!332825 () Bool)

(declare-fun tb!241045 () Bool)

(assert (=> (and b!4007900 (= (toValue!9322 (transformation!6822 (rule!9862 token!484))) (toValue!9322 (transformation!6822 (rule!9862 token!484)))) t!332825) tb!241045))

(declare-fun result!292154 () Bool)

(assert (= result!292154 result!292152))

(assert (=> d!1186702 t!332825))

(declare-fun b_and!308005 () Bool)

(assert (= b_and!307999 (and (=> t!332825 result!292154) b_and!308005)))

(declare-fun tb!241047 () Bool)

(declare-fun t!332827 () Bool)

(assert (=> (and b!4008556 (= (toValue!9322 (transformation!6822 (h!48326 (t!332655 rules!2999)))) (toValue!9322 (transformation!6822 (rule!9862 token!484)))) t!332827) tb!241047))

(declare-fun result!292156 () Bool)

(assert (= result!292156 result!292152))

(assert (=> d!1186702 t!332827))

(declare-fun b_and!308007 () Bool)

(assert (= b_and!308001 (and (=> t!332827 result!292156) b_and!308007)))

(assert (=> d!1186702 m!4592085))

(declare-fun m!4593965 () Bool)

(assert (=> d!1186702 m!4593965))

(assert (=> b!4008246 d!1186702))

(declare-fun d!1186706 () Bool)

(assert (=> d!1186706 (= (seqFromList!5047 (_1!24165 lt!1418425)) (fromListB!2312 (_1!24165 lt!1418425)))))

(declare-fun bs!589253 () Bool)

(assert (= bs!589253 d!1186706))

(declare-fun m!4593967 () Bool)

(assert (=> bs!589253 m!4593967))

(assert (=> b!4008246 d!1186706))

(declare-fun bs!589254 () Bool)

(declare-fun d!1186708 () Bool)

(assert (= bs!589254 (and d!1186708 d!1186558)))

(declare-fun lambda!127025 () Int)

(assert (=> bs!589254 (= (and (= (toChars!9181 (transformation!6822 (rule!9862 token!484))) (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))) (= (toValue!9322 (transformation!6822 (rule!9862 token!484))) (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))))) (= lambda!127025 lambda!127023))))

(declare-fun b!4009467 () Bool)

(declare-fun e!2486443 () Bool)

(assert (=> b!4009467 (= e!2486443 true)))

(assert (=> d!1186708 e!2486443))

(assert (= d!1186708 b!4009467))

(assert (=> b!4009467 (< (dynLambda!18204 order!22487 (toValue!9322 (transformation!6822 (rule!9862 token!484)))) (dynLambda!18206 order!22491 lambda!127025))))

(assert (=> b!4009467 (< (dynLambda!18207 order!22493 (toChars!9181 (transformation!6822 (rule!9862 token!484)))) (dynLambda!18206 order!22491 lambda!127025))))

(assert (=> d!1186708 (= (list!15942 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 token!484))) (dynLambda!18200 (toValue!9322 (transformation!6822 (rule!9862 token!484))) (seqFromList!5047 (_1!24165 lt!1418425))))) (list!15942 (seqFromList!5047 (_1!24165 lt!1418425))))))

(declare-fun lt!1418979 () Unit!61905)

(assert (=> d!1186708 (= lt!1418979 (ForallOf!807 lambda!127025 (seqFromList!5047 (_1!24165 lt!1418425))))))

(assert (=> d!1186708 (= (lemmaSemiInverse!1875 (transformation!6822 (rule!9862 token!484)) (seqFromList!5047 (_1!24165 lt!1418425))) lt!1418979)))

(declare-fun b_lambda!116989 () Bool)

(assert (=> (not b_lambda!116989) (not d!1186708)))

(declare-fun tb!241049 () Bool)

(declare-fun t!332829 () Bool)

(assert (=> (and b!4007875 (= (toChars!9181 (transformation!6822 (h!48326 rules!2999))) (toChars!9181 (transformation!6822 (rule!9862 token!484)))) t!332829) tb!241049))

(declare-fun tp!1219733 () Bool)

(declare-fun e!2486445 () Bool)

(declare-fun b!4009470 () Bool)

(assert (=> b!4009470 (= e!2486445 (and (inv!57307 (c!692980 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 token!484))) (dynLambda!18200 (toValue!9322 (transformation!6822 (rule!9862 token!484))) (seqFromList!5047 (_1!24165 lt!1418425)))))) tp!1219733))))

(declare-fun result!292158 () Bool)

(assert (=> tb!241049 (= result!292158 (and (inv!57308 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 token!484))) (dynLambda!18200 (toValue!9322 (transformation!6822 (rule!9862 token!484))) (seqFromList!5047 (_1!24165 lt!1418425))))) e!2486445))))

(assert (= tb!241049 b!4009470))

(declare-fun m!4593987 () Bool)

(assert (=> b!4009470 m!4593987))

(declare-fun m!4593991 () Bool)

(assert (=> tb!241049 m!4593991))

(assert (=> d!1186708 t!332829))

(declare-fun b_and!308009 () Bool)

(assert (= b_and!307985 (and (=> t!332829 result!292158) b_and!308009)))

(declare-fun t!332831 () Bool)

(declare-fun tb!241051 () Bool)

(assert (=> (and b!4007900 (= (toChars!9181 (transformation!6822 (rule!9862 token!484))) (toChars!9181 (transformation!6822 (rule!9862 token!484)))) t!332831) tb!241051))

(declare-fun result!292160 () Bool)

(assert (= result!292160 result!292158))

(assert (=> d!1186708 t!332831))

(declare-fun b_and!308011 () Bool)

(assert (= b_and!307987 (and (=> t!332831 result!292160) b_and!308011)))

(declare-fun t!332833 () Bool)

(declare-fun tb!241053 () Bool)

(assert (=> (and b!4008556 (= (toChars!9181 (transformation!6822 (h!48326 (t!332655 rules!2999)))) (toChars!9181 (transformation!6822 (rule!9862 token!484)))) t!332833) tb!241053))

(declare-fun result!292162 () Bool)

(assert (= result!292162 result!292158))

(assert (=> d!1186708 t!332833))

(declare-fun b_and!308013 () Bool)

(assert (= b_and!307989 (and (=> t!332833 result!292162) b_and!308013)))

(declare-fun b_lambda!116991 () Bool)

(assert (=> (not b_lambda!116991) (not d!1186708)))

(assert (=> d!1186708 t!332823))

(declare-fun b_and!308015 () Bool)

(assert (= b_and!308003 (and (=> t!332823 result!292152) b_and!308015)))

(assert (=> d!1186708 t!332825))

(declare-fun b_and!308017 () Bool)

(assert (= b_and!308005 (and (=> t!332825 result!292154) b_and!308017)))

(assert (=> d!1186708 t!332827))

(declare-fun b_and!308019 () Bool)

(assert (= b_and!308007 (and (=> t!332827 result!292156) b_and!308019)))

(assert (=> d!1186708 m!4593965))

(declare-fun m!4593993 () Bool)

(assert (=> d!1186708 m!4593993))

(assert (=> d!1186708 m!4593993))

(declare-fun m!4593995 () Bool)

(assert (=> d!1186708 m!4593995))

(assert (=> d!1186708 m!4592085))

(assert (=> d!1186708 m!4593965))

(assert (=> d!1186708 m!4592085))

(assert (=> d!1186708 m!4593957))

(assert (=> d!1186708 m!4592085))

(declare-fun m!4593997 () Bool)

(assert (=> d!1186708 m!4593997))

(assert (=> b!4008246 d!1186708))

(assert (=> b!4008246 d!1186326))

(assert (=> b!4008246 d!1186106))

(declare-fun d!1186716 () Bool)

(declare-fun e!2486455 () Bool)

(assert (=> d!1186716 e!2486455))

(declare-fun res!1629604 () Bool)

(assert (=> d!1186716 (=> (not res!1629604) (not e!2486455))))

(declare-fun lt!1418983 () List!43028)

(assert (=> d!1186716 (= res!1629604 (= (content!6506 lt!1418983) ((_ map or) (content!6506 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418483))))) (content!6506 (_2!24163 (get!14100 lt!1418483))))))))

(declare-fun e!2486454 () List!43028)

(assert (=> d!1186716 (= lt!1418983 e!2486454)))

(declare-fun c!693344 () Bool)

(assert (=> d!1186716 (= c!693344 ((_ is Nil!42904) (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418483))))))))

(assert (=> d!1186716 (= (++!11224 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418483)))) (_2!24163 (get!14100 lt!1418483))) lt!1418983)))

(declare-fun b!4009487 () Bool)

(assert (=> b!4009487 (= e!2486454 (_2!24163 (get!14100 lt!1418483)))))

(declare-fun b!4009490 () Bool)

(assert (=> b!4009490 (= e!2486455 (or (not (= (_2!24163 (get!14100 lt!1418483)) Nil!42904)) (= lt!1418983 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418483)))))))))

(declare-fun b!4009488 () Bool)

(assert (=> b!4009488 (= e!2486454 (Cons!42904 (h!48324 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418483))))) (++!11224 (t!332653 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418483))))) (_2!24163 (get!14100 lt!1418483)))))))

(declare-fun b!4009489 () Bool)

(declare-fun res!1629603 () Bool)

(assert (=> b!4009489 (=> (not res!1629603) (not e!2486455))))

(assert (=> b!4009489 (= res!1629603 (= (size!32079 lt!1418983) (+ (size!32079 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418483))))) (size!32079 (_2!24163 (get!14100 lt!1418483))))))))

(assert (= (and d!1186716 c!693344) b!4009487))

(assert (= (and d!1186716 (not c!693344)) b!4009488))

(assert (= (and d!1186716 res!1629604) b!4009489))

(assert (= (and b!4009489 res!1629603) b!4009490))

(declare-fun m!4594007 () Bool)

(assert (=> d!1186716 m!4594007))

(assert (=> d!1186716 m!4592349))

(declare-fun m!4594011 () Bool)

(assert (=> d!1186716 m!4594011))

(declare-fun m!4594013 () Bool)

(assert (=> d!1186716 m!4594013))

(declare-fun m!4594015 () Bool)

(assert (=> b!4009488 m!4594015))

(declare-fun m!4594017 () Bool)

(assert (=> b!4009489 m!4594017))

(assert (=> b!4009489 m!4592349))

(declare-fun m!4594019 () Bool)

(assert (=> b!4009489 m!4594019))

(assert (=> b!4009489 m!4592383))

(assert (=> b!4008418 d!1186716))

(declare-fun d!1186718 () Bool)

(assert (=> d!1186718 (= (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418483)))) (list!15944 (c!692980 (charsOf!4638 (_1!24163 (get!14100 lt!1418483))))))))

(declare-fun bs!589255 () Bool)

(assert (= bs!589255 d!1186718))

(declare-fun m!4594021 () Bool)

(assert (=> bs!589255 m!4594021))

(assert (=> b!4008418 d!1186718))

(declare-fun d!1186722 () Bool)

(declare-fun lt!1418984 () BalanceConc!25660)

(assert (=> d!1186722 (= (list!15942 lt!1418984) (originalCharacters!7422 (_1!24163 (get!14100 lt!1418483))))))

(assert (=> d!1186722 (= lt!1418984 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418483))))) (value!215061 (_1!24163 (get!14100 lt!1418483)))))))

(assert (=> d!1186722 (= (charsOf!4638 (_1!24163 (get!14100 lt!1418483))) lt!1418984)))

(declare-fun b_lambda!116993 () Bool)

(assert (=> (not b_lambda!116993) (not d!1186722)))

(declare-fun t!332835 () Bool)

(declare-fun tb!241055 () Bool)

(assert (=> (and b!4007875 (= (toChars!9181 (transformation!6822 (h!48326 rules!2999))) (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418483)))))) t!332835) tb!241055))

(declare-fun b!4009495 () Bool)

(declare-fun e!2486458 () Bool)

(declare-fun tp!1219734 () Bool)

(assert (=> b!4009495 (= e!2486458 (and (inv!57307 (c!692980 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418483))))) (value!215061 (_1!24163 (get!14100 lt!1418483)))))) tp!1219734))))

(declare-fun result!292164 () Bool)

(assert (=> tb!241055 (= result!292164 (and (inv!57308 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418483))))) (value!215061 (_1!24163 (get!14100 lt!1418483))))) e!2486458))))

(assert (= tb!241055 b!4009495))

(declare-fun m!4594029 () Bool)

(assert (=> b!4009495 m!4594029))

(declare-fun m!4594031 () Bool)

(assert (=> tb!241055 m!4594031))

(assert (=> d!1186722 t!332835))

(declare-fun b_and!308021 () Bool)

(assert (= b_and!308009 (and (=> t!332835 result!292164) b_and!308021)))

(declare-fun tb!241057 () Bool)

(declare-fun t!332837 () Bool)

(assert (=> (and b!4007900 (= (toChars!9181 (transformation!6822 (rule!9862 token!484))) (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418483)))))) t!332837) tb!241057))

(declare-fun result!292166 () Bool)

(assert (= result!292166 result!292164))

(assert (=> d!1186722 t!332837))

(declare-fun b_and!308023 () Bool)

(assert (= b_and!308011 (and (=> t!332837 result!292166) b_and!308023)))

(declare-fun tb!241059 () Bool)

(declare-fun t!332839 () Bool)

(assert (=> (and b!4008556 (= (toChars!9181 (transformation!6822 (h!48326 (t!332655 rules!2999)))) (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418483)))))) t!332839) tb!241059))

(declare-fun result!292168 () Bool)

(assert (= result!292168 result!292164))

(assert (=> d!1186722 t!332839))

(declare-fun b_and!308025 () Bool)

(assert (= b_and!308013 (and (=> t!332839 result!292168) b_and!308025)))

(declare-fun m!4594033 () Bool)

(assert (=> d!1186722 m!4594033))

(declare-fun m!4594037 () Bool)

(assert (=> d!1186722 m!4594037))

(assert (=> b!4008418 d!1186722))

(assert (=> b!4008418 d!1186142))

(declare-fun b!4009500 () Bool)

(declare-fun e!2486467 () Bool)

(assert (=> b!4009500 (= e!2486467 (not (= (head!8515 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418457))))) (c!692981 (regex!6822 (rule!9862 (_1!24163 (get!14100 lt!1418457))))))))))

(declare-fun bm!286357 () Bool)

(declare-fun call!286362 () Bool)

(assert (=> bm!286357 (= call!286362 (isEmpty!25634 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418457))))))))

(declare-fun b!4009501 () Bool)

(declare-fun e!2486462 () Bool)

(assert (=> b!4009501 (= e!2486462 (nullable!4114 (regex!6822 (rule!9862 (_1!24163 (get!14100 lt!1418457))))))))

(declare-fun b!4009502 () Bool)

(declare-fun res!1629613 () Bool)

(declare-fun e!2486463 () Bool)

(assert (=> b!4009502 (=> (not res!1629613) (not e!2486463))))

(assert (=> b!4009502 (= res!1629613 (not call!286362))))

(declare-fun d!1186728 () Bool)

(declare-fun e!2486465 () Bool)

(assert (=> d!1186728 e!2486465))

(declare-fun c!693347 () Bool)

(assert (=> d!1186728 (= c!693347 ((_ is EmptyExpr!11727) (regex!6822 (rule!9862 (_1!24163 (get!14100 lt!1418457))))))))

(declare-fun lt!1418986 () Bool)

(assert (=> d!1186728 (= lt!1418986 e!2486462)))

(declare-fun c!693349 () Bool)

(assert (=> d!1186728 (= c!693349 (isEmpty!25634 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418457))))))))

(assert (=> d!1186728 (validRegex!5314 (regex!6822 (rule!9862 (_1!24163 (get!14100 lt!1418457)))))))

(assert (=> d!1186728 (= (matchR!5688 (regex!6822 (rule!9862 (_1!24163 (get!14100 lt!1418457)))) (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418457))))) lt!1418986)))

(declare-fun b!4009503 () Bool)

(assert (=> b!4009503 (= e!2486462 (matchR!5688 (derivativeStep!3523 (regex!6822 (rule!9862 (_1!24163 (get!14100 lt!1418457)))) (head!8515 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418457)))))) (tail!6247 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418457)))))))))

(declare-fun b!4009504 () Bool)

(declare-fun res!1629616 () Bool)

(assert (=> b!4009504 (=> (not res!1629616) (not e!2486463))))

(assert (=> b!4009504 (= res!1629616 (isEmpty!25634 (tail!6247 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418457)))))))))

(declare-fun b!4009505 () Bool)

(declare-fun res!1629615 () Bool)

(assert (=> b!4009505 (=> res!1629615 e!2486467)))

(assert (=> b!4009505 (= res!1629615 (not (isEmpty!25634 (tail!6247 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418457))))))))))

(declare-fun b!4009506 () Bool)

(declare-fun e!2486466 () Bool)

(assert (=> b!4009506 (= e!2486466 e!2486467)))

(declare-fun res!1629611 () Bool)

(assert (=> b!4009506 (=> res!1629611 e!2486467)))

(assert (=> b!4009506 (= res!1629611 call!286362)))

(declare-fun b!4009507 () Bool)

(assert (=> b!4009507 (= e!2486463 (= (head!8515 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418457))))) (c!692981 (regex!6822 (rule!9862 (_1!24163 (get!14100 lt!1418457)))))))))

(declare-fun b!4009508 () Bool)

(declare-fun e!2486468 () Bool)

(assert (=> b!4009508 (= e!2486468 e!2486466)))

(declare-fun res!1629610 () Bool)

(assert (=> b!4009508 (=> (not res!1629610) (not e!2486466))))

(assert (=> b!4009508 (= res!1629610 (not lt!1418986))))

(declare-fun b!4009509 () Bool)

(declare-fun e!2486464 () Bool)

(assert (=> b!4009509 (= e!2486464 (not lt!1418986))))

(declare-fun b!4009510 () Bool)

(assert (=> b!4009510 (= e!2486465 (= lt!1418986 call!286362))))

(declare-fun b!4009511 () Bool)

(declare-fun res!1629614 () Bool)

(assert (=> b!4009511 (=> res!1629614 e!2486468)))

(assert (=> b!4009511 (= res!1629614 e!2486463)))

(declare-fun res!1629609 () Bool)

(assert (=> b!4009511 (=> (not res!1629609) (not e!2486463))))

(assert (=> b!4009511 (= res!1629609 lt!1418986)))

(declare-fun b!4009512 () Bool)

(assert (=> b!4009512 (= e!2486465 e!2486464)))

(declare-fun c!693348 () Bool)

(assert (=> b!4009512 (= c!693348 ((_ is EmptyLang!11727) (regex!6822 (rule!9862 (_1!24163 (get!14100 lt!1418457))))))))

(declare-fun b!4009513 () Bool)

(declare-fun res!1629612 () Bool)

(assert (=> b!4009513 (=> res!1629612 e!2486468)))

(assert (=> b!4009513 (= res!1629612 (not ((_ is ElementMatch!11727) (regex!6822 (rule!9862 (_1!24163 (get!14100 lt!1418457)))))))))

(assert (=> b!4009513 (= e!2486464 e!2486468)))

(assert (= (and d!1186728 c!693349) b!4009501))

(assert (= (and d!1186728 (not c!693349)) b!4009503))

(assert (= (and d!1186728 c!693347) b!4009510))

(assert (= (and d!1186728 (not c!693347)) b!4009512))

(assert (= (and b!4009512 c!693348) b!4009509))

(assert (= (and b!4009512 (not c!693348)) b!4009513))

(assert (= (and b!4009513 (not res!1629612)) b!4009511))

(assert (= (and b!4009511 res!1629609) b!4009502))

(assert (= (and b!4009502 res!1629613) b!4009504))

(assert (= (and b!4009504 res!1629616) b!4009507))

(assert (= (and b!4009511 (not res!1629614)) b!4009508))

(assert (= (and b!4009508 res!1629610) b!4009506))

(assert (= (and b!4009506 (not res!1629611)) b!4009505))

(assert (= (and b!4009505 (not res!1629615)) b!4009500))

(assert (= (or b!4009510 b!4009502 b!4009506) bm!286357))

(assert (=> d!1186728 m!4592217))

(declare-fun m!4594057 () Bool)

(assert (=> d!1186728 m!4594057))

(declare-fun m!4594059 () Bool)

(assert (=> d!1186728 m!4594059))

(assert (=> b!4009507 m!4592217))

(declare-fun m!4594061 () Bool)

(assert (=> b!4009507 m!4594061))

(assert (=> b!4009505 m!4592217))

(declare-fun m!4594063 () Bool)

(assert (=> b!4009505 m!4594063))

(assert (=> b!4009505 m!4594063))

(declare-fun m!4594065 () Bool)

(assert (=> b!4009505 m!4594065))

(assert (=> b!4009504 m!4592217))

(assert (=> b!4009504 m!4594063))

(assert (=> b!4009504 m!4594063))

(assert (=> b!4009504 m!4594065))

(declare-fun m!4594067 () Bool)

(assert (=> b!4009501 m!4594067))

(assert (=> b!4009500 m!4592217))

(assert (=> b!4009500 m!4594061))

(assert (=> bm!286357 m!4592217))

(assert (=> bm!286357 m!4594057))

(assert (=> b!4009503 m!4592217))

(assert (=> b!4009503 m!4594061))

(assert (=> b!4009503 m!4594061))

(declare-fun m!4594077 () Bool)

(assert (=> b!4009503 m!4594077))

(assert (=> b!4009503 m!4592217))

(assert (=> b!4009503 m!4594063))

(assert (=> b!4009503 m!4594077))

(assert (=> b!4009503 m!4594063))

(declare-fun m!4594081 () Bool)

(assert (=> b!4009503 m!4594081))

(assert (=> b!4008364 d!1186728))

(assert (=> b!4008364 d!1186156))

(assert (=> b!4008364 d!1186152))

(assert (=> b!4008364 d!1186154))

(declare-fun b!4009523 () Bool)

(declare-fun e!2486474 () List!43028)

(declare-fun e!2486475 () List!43028)

(assert (=> b!4009523 (= e!2486474 e!2486475)))

(declare-fun c!693352 () Bool)

(assert (=> b!4009523 (= c!693352 ((_ is Leaf!20151) (c!692980 (charsOf!4638 (_1!24163 (v!39601 lt!1418269))))))))

(declare-fun d!1186744 () Bool)

(declare-fun c!693351 () Bool)

(assert (=> d!1186744 (= c!693351 ((_ is Empty!13033) (c!692980 (charsOf!4638 (_1!24163 (v!39601 lt!1418269))))))))

(assert (=> d!1186744 (= (list!15944 (c!692980 (charsOf!4638 (_1!24163 (v!39601 lt!1418269))))) e!2486474)))

(declare-fun b!4009525 () Bool)

(assert (=> b!4009525 (= e!2486475 (++!11224 (list!15944 (left!32370 (c!692980 (charsOf!4638 (_1!24163 (v!39601 lt!1418269)))))) (list!15944 (right!32700 (c!692980 (charsOf!4638 (_1!24163 (v!39601 lt!1418269))))))))))

(declare-fun b!4009522 () Bool)

(assert (=> b!4009522 (= e!2486474 Nil!42904)))

(declare-fun b!4009524 () Bool)

(assert (=> b!4009524 (= e!2486475 (list!15945 (xs!16339 (c!692980 (charsOf!4638 (_1!24163 (v!39601 lt!1418269)))))))))

(assert (= (and d!1186744 c!693351) b!4009522))

(assert (= (and d!1186744 (not c!693351)) b!4009523))

(assert (= (and b!4009523 c!693352) b!4009524))

(assert (= (and b!4009523 (not c!693352)) b!4009525))

(declare-fun m!4594083 () Bool)

(assert (=> b!4009525 m!4594083))

(declare-fun m!4594085 () Bool)

(assert (=> b!4009525 m!4594085))

(assert (=> b!4009525 m!4594083))

(assert (=> b!4009525 m!4594085))

(declare-fun m!4594087 () Bool)

(assert (=> b!4009525 m!4594087))

(declare-fun m!4594089 () Bool)

(assert (=> b!4009524 m!4594089))

(assert (=> d!1186002 d!1186744))

(declare-fun d!1186746 () Bool)

(declare-fun c!693353 () Bool)

(assert (=> d!1186746 (= c!693353 ((_ is Nil!42904) lt!1418454))))

(declare-fun e!2486476 () (InoxSet C!23640))

(assert (=> d!1186746 (= (content!6506 lt!1418454) e!2486476)))

(declare-fun b!4009526 () Bool)

(assert (=> b!4009526 (= e!2486476 ((as const (Array C!23640 Bool)) false))))

(declare-fun b!4009527 () Bool)

(assert (=> b!4009527 (= e!2486476 ((_ map or) (store ((as const (Array C!23640 Bool)) false) (h!48324 lt!1418454) true) (content!6506 (t!332653 lt!1418454))))))

(assert (= (and d!1186746 c!693353) b!4009526))

(assert (= (and d!1186746 (not c!693353)) b!4009527))

(declare-fun m!4594091 () Bool)

(assert (=> b!4009527 m!4594091))

(declare-fun m!4594093 () Bool)

(assert (=> b!4009527 m!4594093))

(assert (=> d!1185970 d!1186746))

(assert (=> d!1185970 d!1186138))

(assert (=> d!1185970 d!1186340))

(assert (=> b!4008242 d!1186134))

(declare-fun d!1186748 () Bool)

(assert (=> d!1186748 (= (apply!10019 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418426)))) (seqFromList!5047 (originalCharacters!7422 (_1!24163 (get!14100 lt!1418426))))) (dynLambda!18200 (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418426))))) (seqFromList!5047 (originalCharacters!7422 (_1!24163 (get!14100 lt!1418426))))))))

(declare-fun b_lambda!116995 () Bool)

(assert (=> (not b_lambda!116995) (not d!1186748)))

(declare-fun tb!241061 () Bool)

(declare-fun t!332841 () Bool)

(assert (=> (and b!4007875 (= (toValue!9322 (transformation!6822 (h!48326 rules!2999))) (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418426)))))) t!332841) tb!241061))

(declare-fun result!292170 () Bool)

(assert (=> tb!241061 (= result!292170 (inv!21 (dynLambda!18200 (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418426))))) (seqFromList!5047 (originalCharacters!7422 (_1!24163 (get!14100 lt!1418426)))))))))

(declare-fun m!4594095 () Bool)

(assert (=> tb!241061 m!4594095))

(assert (=> d!1186748 t!332841))

(declare-fun b_and!308027 () Bool)

(assert (= b_and!308015 (and (=> t!332841 result!292170) b_and!308027)))

(declare-fun tb!241063 () Bool)

(declare-fun t!332843 () Bool)

(assert (=> (and b!4007900 (= (toValue!9322 (transformation!6822 (rule!9862 token!484))) (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418426)))))) t!332843) tb!241063))

(declare-fun result!292172 () Bool)

(assert (= result!292172 result!292170))

(assert (=> d!1186748 t!332843))

(declare-fun b_and!308029 () Bool)

(assert (= b_and!308017 (and (=> t!332843 result!292172) b_and!308029)))

(declare-fun tb!241065 () Bool)

(declare-fun t!332845 () Bool)

(assert (=> (and b!4008556 (= (toValue!9322 (transformation!6822 (h!48326 (t!332655 rules!2999)))) (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418426)))))) t!332845) tb!241065))

(declare-fun result!292174 () Bool)

(assert (= result!292174 result!292170))

(assert (=> d!1186748 t!332845))

(declare-fun b_and!308031 () Bool)

(assert (= b_and!308019 (and (=> t!332845 result!292174) b_and!308031)))

(assert (=> d!1186748 m!4592073))

(declare-fun m!4594097 () Bool)

(assert (=> d!1186748 m!4594097))

(assert (=> b!4008242 d!1186748))

(declare-fun d!1186752 () Bool)

(assert (=> d!1186752 (= (seqFromList!5047 (originalCharacters!7422 (_1!24163 (get!14100 lt!1418426)))) (fromListB!2312 (originalCharacters!7422 (_1!24163 (get!14100 lt!1418426)))))))

(declare-fun bs!589259 () Bool)

(assert (= bs!589259 d!1186752))

(declare-fun m!4594107 () Bool)

(assert (=> bs!589259 m!4594107))

(assert (=> b!4008242 d!1186752))

(declare-fun bs!589261 () Bool)

(declare-fun d!1186754 () Bool)

(assert (= bs!589261 (and d!1186754 d!1186558)))

(declare-fun lambda!127028 () Int)

(assert (=> bs!589261 (= lambda!127028 lambda!127023)))

(declare-fun bs!589262 () Bool)

(assert (= bs!589262 (and d!1186754 d!1186708)))

(assert (=> bs!589262 (= (and (= (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (toChars!9181 (transformation!6822 (rule!9862 token!484)))) (= (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (toValue!9322 (transformation!6822 (rule!9862 token!484))))) (= lambda!127028 lambda!127025))))

(assert (=> d!1186754 true))

(assert (=> d!1186754 (< (dynLambda!18207 order!22493 (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))) (dynLambda!18206 order!22491 lambda!127028))))

(assert (=> d!1186754 true))

(assert (=> d!1186754 (< (dynLambda!18204 order!22487 (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))) (dynLambda!18206 order!22491 lambda!127028))))

(declare-fun Forall!1471 (Int) Bool)

(assert (=> d!1186754 (= (semiInverseModEq!2920 (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))) (Forall!1471 lambda!127028))))

(declare-fun bs!589263 () Bool)

(assert (= bs!589263 d!1186754))

(declare-fun m!4594157 () Bool)

(assert (=> bs!589263 m!4594157))

(assert (=> d!1186020 d!1186754))

(declare-fun d!1186782 () Bool)

(declare-fun c!693360 () Bool)

(assert (=> d!1186782 (= c!693360 ((_ is Nil!42904) lt!1418516))))

(declare-fun e!2486494 () (InoxSet C!23640))

(assert (=> d!1186782 (= (content!6506 lt!1418516) e!2486494)))

(declare-fun b!4009559 () Bool)

(assert (=> b!4009559 (= e!2486494 ((as const (Array C!23640 Bool)) false))))

(declare-fun b!4009560 () Bool)

(assert (=> b!4009560 (= e!2486494 ((_ map or) (store ((as const (Array C!23640 Bool)) false) (h!48324 lt!1418516) true) (content!6506 (t!332653 lt!1418516))))))

(assert (= (and d!1186782 c!693360) b!4009559))

(assert (= (and d!1186782 (not c!693360)) b!4009560))

(declare-fun m!4594159 () Bool)

(assert (=> b!4009560 m!4594159))

(declare-fun m!4594161 () Bool)

(assert (=> b!4009560 m!4594161))

(assert (=> d!1186074 d!1186782))

(assert (=> d!1186074 d!1186138))

(declare-fun d!1186784 () Bool)

(declare-fun c!693364 () Bool)

(assert (=> d!1186784 (= c!693364 ((_ is Nil!42904) lt!1418244))))

(declare-fun e!2486502 () (InoxSet C!23640))

(assert (=> d!1186784 (= (content!6506 lt!1418244) e!2486502)))

(declare-fun b!4009575 () Bool)

(assert (=> b!4009575 (= e!2486502 ((as const (Array C!23640 Bool)) false))))

(declare-fun b!4009576 () Bool)

(assert (=> b!4009576 (= e!2486502 ((_ map or) (store ((as const (Array C!23640 Bool)) false) (h!48324 lt!1418244) true) (content!6506 (t!332653 lt!1418244))))))

(assert (= (and d!1186784 c!693364) b!4009575))

(assert (= (and d!1186784 (not c!693364)) b!4009576))

(declare-fun m!4594163 () Bool)

(assert (=> b!4009576 m!4594163))

(declare-fun m!4594165 () Bool)

(assert (=> b!4009576 m!4594165))

(assert (=> d!1186074 d!1186784))

(declare-fun bs!589264 () Bool)

(declare-fun d!1186786 () Bool)

(assert (= bs!589264 (and d!1186786 d!1186558)))

(declare-fun lambda!127029 () Int)

(assert (=> bs!589264 (= (and (= (toChars!9181 (transformation!6822 (h!48326 rules!2999))) (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))) (= (toValue!9322 (transformation!6822 (h!48326 rules!2999))) (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))))) (= lambda!127029 lambda!127023))))

(declare-fun bs!589265 () Bool)

(assert (= bs!589265 (and d!1186786 d!1186708)))

(assert (=> bs!589265 (= (and (= (toChars!9181 (transformation!6822 (h!48326 rules!2999))) (toChars!9181 (transformation!6822 (rule!9862 token!484)))) (= (toValue!9322 (transformation!6822 (h!48326 rules!2999))) (toValue!9322 (transformation!6822 (rule!9862 token!484))))) (= lambda!127029 lambda!127025))))

(declare-fun bs!589266 () Bool)

(assert (= bs!589266 (and d!1186786 d!1186754)))

(assert (=> bs!589266 (= (and (= (toChars!9181 (transformation!6822 (h!48326 rules!2999))) (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))) (= (toValue!9322 (transformation!6822 (h!48326 rules!2999))) (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))))) (= lambda!127029 lambda!127028))))

(assert (=> d!1186786 true))

(assert (=> d!1186786 (< (dynLambda!18207 order!22493 (toChars!9181 (transformation!6822 (h!48326 rules!2999)))) (dynLambda!18206 order!22491 lambda!127029))))

(assert (=> d!1186786 true))

(assert (=> d!1186786 (< (dynLambda!18204 order!22487 (toValue!9322 (transformation!6822 (h!48326 rules!2999)))) (dynLambda!18206 order!22491 lambda!127029))))

(assert (=> d!1186786 (= (semiInverseModEq!2920 (toChars!9181 (transformation!6822 (h!48326 rules!2999))) (toValue!9322 (transformation!6822 (h!48326 rules!2999)))) (Forall!1471 lambda!127029))))

(declare-fun bs!589267 () Bool)

(assert (= bs!589267 d!1186786))

(declare-fun m!4594179 () Bool)

(assert (=> bs!589267 m!4594179))

(assert (=> d!1186056 d!1186786))

(assert (=> b!4008497 d!1186576))

(assert (=> b!4008497 d!1186172))

(declare-fun d!1186788 () Bool)

(declare-fun e!2486503 () Bool)

(assert (=> d!1186788 e!2486503))

(declare-fun res!1629646 () Bool)

(assert (=> d!1186788 (=> res!1629646 e!2486503)))

(declare-fun lt!1418996 () Bool)

(assert (=> d!1186788 (= res!1629646 (not lt!1418996))))

(declare-fun e!2486505 () Bool)

(assert (=> d!1186788 (= lt!1418996 e!2486505)))

(declare-fun res!1629648 () Bool)

(assert (=> d!1186788 (=> res!1629648 e!2486505)))

(assert (=> d!1186788 (= res!1629648 ((_ is Nil!42904) (tail!6247 lt!1418254)))))

(assert (=> d!1186788 (= (isPrefix!3909 (tail!6247 lt!1418254) (tail!6247 lt!1418241)) lt!1418996)))

(declare-fun b!4009579 () Bool)

(declare-fun e!2486504 () Bool)

(assert (=> b!4009579 (= e!2486504 (isPrefix!3909 (tail!6247 (tail!6247 lt!1418254)) (tail!6247 (tail!6247 lt!1418241))))))

(declare-fun b!4009578 () Bool)

(declare-fun res!1629647 () Bool)

(assert (=> b!4009578 (=> (not res!1629647) (not e!2486504))))

(assert (=> b!4009578 (= res!1629647 (= (head!8515 (tail!6247 lt!1418254)) (head!8515 (tail!6247 lt!1418241))))))

(declare-fun b!4009580 () Bool)

(assert (=> b!4009580 (= e!2486503 (>= (size!32079 (tail!6247 lt!1418241)) (size!32079 (tail!6247 lt!1418254))))))

(declare-fun b!4009577 () Bool)

(assert (=> b!4009577 (= e!2486505 e!2486504)))

(declare-fun res!1629649 () Bool)

(assert (=> b!4009577 (=> (not res!1629649) (not e!2486504))))

(assert (=> b!4009577 (= res!1629649 (not ((_ is Nil!42904) (tail!6247 lt!1418241))))))

(assert (= (and d!1186788 (not res!1629648)) b!4009577))

(assert (= (and b!4009577 res!1629649) b!4009578))

(assert (= (and b!4009578 res!1629647) b!4009579))

(assert (= (and d!1186788 (not res!1629646)) b!4009580))

(assert (=> b!4009579 m!4592151))

(assert (=> b!4009579 m!4592669))

(assert (=> b!4009579 m!4592153))

(declare-fun m!4594187 () Bool)

(assert (=> b!4009579 m!4594187))

(assert (=> b!4009579 m!4592669))

(assert (=> b!4009579 m!4594187))

(declare-fun m!4594189 () Bool)

(assert (=> b!4009579 m!4594189))

(assert (=> b!4009578 m!4592151))

(assert (=> b!4009578 m!4592667))

(assert (=> b!4009578 m!4592153))

(declare-fun m!4594191 () Bool)

(assert (=> b!4009578 m!4594191))

(assert (=> b!4009580 m!4592153))

(declare-fun m!4594193 () Bool)

(assert (=> b!4009580 m!4594193))

(assert (=> b!4009580 m!4592151))

(assert (=> b!4009580 m!4593817))

(assert (=> b!4008293 d!1186788))

(assert (=> b!4008293 d!1186172))

(declare-fun d!1186794 () Bool)

(assert (=> d!1186794 (= (tail!6247 lt!1418241) (t!332653 lt!1418241))))

(assert (=> b!4008293 d!1186794))

(declare-fun d!1186798 () Bool)

(declare-fun lt!1418999 () Int)

(assert (=> d!1186798 (>= lt!1418999 0)))

(declare-fun e!2486508 () Int)

(assert (=> d!1186798 (= lt!1418999 e!2486508)))

(declare-fun c!693367 () Bool)

(assert (=> d!1186798 (= c!693367 ((_ is Nil!42904) (++!11224 lt!1418251 newSuffixResult!27)))))

(assert (=> d!1186798 (= (size!32079 (++!11224 lt!1418251 newSuffixResult!27)) lt!1418999)))

(declare-fun b!4009585 () Bool)

(assert (=> b!4009585 (= e!2486508 0)))

(declare-fun b!4009586 () Bool)

(assert (=> b!4009586 (= e!2486508 (+ 1 (size!32079 (t!332653 (++!11224 lt!1418251 newSuffixResult!27)))))))

(assert (= (and d!1186798 c!693367) b!4009585))

(assert (= (and d!1186798 (not c!693367)) b!4009586))

(declare-fun m!4594195 () Bool)

(assert (=> b!4009586 m!4594195))

(assert (=> b!4008411 d!1186798))

(assert (=> b!4008411 d!1186018))

(declare-fun d!1186800 () Bool)

(declare-fun nullableFct!1148 (Regex!11727) Bool)

(assert (=> d!1186800 (= (nullable!4114 (regex!6822 (rule!9862 token!484))) (nullableFct!1148 (regex!6822 (rule!9862 token!484))))))

(declare-fun bs!589270 () Bool)

(assert (= bs!589270 d!1186800))

(declare-fun m!4594199 () Bool)

(assert (=> bs!589270 m!4594199))

(assert (=> b!4008493 d!1186800))

(declare-fun d!1186804 () Bool)

(declare-fun lt!1419001 () Int)

(assert (=> d!1186804 (>= lt!1419001 0)))

(declare-fun e!2486512 () Int)

(assert (=> d!1186804 (= lt!1419001 e!2486512)))

(declare-fun c!693368 () Bool)

(assert (=> d!1186804 (= c!693368 ((_ is Nil!42904) (t!332653 newSuffix!27)))))

(assert (=> d!1186804 (= (size!32079 (t!332653 newSuffix!27)) lt!1419001)))

(declare-fun b!4009591 () Bool)

(assert (=> b!4009591 (= e!2486512 0)))

(declare-fun b!4009592 () Bool)

(assert (=> b!4009592 (= e!2486512 (+ 1 (size!32079 (t!332653 (t!332653 newSuffix!27)))))))

(assert (= (and d!1186804 c!693368) b!4009591))

(assert (= (and d!1186804 (not c!693368)) b!4009592))

(declare-fun m!4594201 () Bool)

(assert (=> b!4009592 m!4594201))

(assert (=> b!4008424 d!1186804))

(declare-fun d!1186806 () Bool)

(declare-fun e!2486514 () Bool)

(assert (=> d!1186806 e!2486514))

(declare-fun res!1629655 () Bool)

(assert (=> d!1186806 (=> (not res!1629655) (not e!2486514))))

(declare-fun lt!1419002 () List!43028)

(assert (=> d!1186806 (= res!1629655 (= (content!6506 lt!1419002) ((_ map or) (content!6506 lt!1418254) (content!6506 lt!1418496))))))

(declare-fun e!2486513 () List!43028)

(assert (=> d!1186806 (= lt!1419002 e!2486513)))

(declare-fun c!693369 () Bool)

(assert (=> d!1186806 (= c!693369 ((_ is Nil!42904) lt!1418254))))

(assert (=> d!1186806 (= (++!11224 lt!1418254 lt!1418496) lt!1419002)))

(declare-fun b!4009593 () Bool)

(assert (=> b!4009593 (= e!2486513 lt!1418496)))

(declare-fun b!4009596 () Bool)

(assert (=> b!4009596 (= e!2486514 (or (not (= lt!1418496 Nil!42904)) (= lt!1419002 lt!1418254)))))

(declare-fun b!4009594 () Bool)

(assert (=> b!4009594 (= e!2486513 (Cons!42904 (h!48324 lt!1418254) (++!11224 (t!332653 lt!1418254) lt!1418496)))))

(declare-fun b!4009595 () Bool)

(declare-fun res!1629654 () Bool)

(assert (=> b!4009595 (=> (not res!1629654) (not e!2486514))))

(assert (=> b!4009595 (= res!1629654 (= (size!32079 lt!1419002) (+ (size!32079 lt!1418254) (size!32079 lt!1418496))))))

(assert (= (and d!1186806 c!693369) b!4009593))

(assert (= (and d!1186806 (not c!693369)) b!4009594))

(assert (= (and d!1186806 res!1629655) b!4009595))

(assert (= (and b!4009595 res!1629654) b!4009596))

(declare-fun m!4594211 () Bool)

(assert (=> d!1186806 m!4594211))

(assert (=> d!1186806 m!4591697))

(declare-fun m!4594213 () Bool)

(assert (=> d!1186806 m!4594213))

(declare-fun m!4594215 () Bool)

(assert (=> b!4009594 m!4594215))

(declare-fun m!4594217 () Bool)

(assert (=> b!4009595 m!4594217))

(assert (=> b!4009595 m!4591495))

(declare-fun m!4594219 () Bool)

(assert (=> b!4009595 m!4594219))

(assert (=> d!1186046 d!1186806))

(assert (=> d!1186046 d!1185986))

(assert (=> d!1186046 d!1185984))

(declare-fun d!1186810 () Bool)

(declare-fun lt!1419003 () Int)

(assert (=> d!1186810 (>= lt!1419003 0)))

(declare-fun e!2486515 () Int)

(assert (=> d!1186810 (= lt!1419003 e!2486515)))

(declare-fun c!693370 () Bool)

(assert (=> d!1186810 (= c!693370 ((_ is Nil!42904) (t!332653 lt!1418251)))))

(assert (=> d!1186810 (= (size!32079 (t!332653 lt!1418251)) lt!1419003)))

(declare-fun b!4009597 () Bool)

(assert (=> b!4009597 (= e!2486515 0)))

(declare-fun b!4009598 () Bool)

(assert (=> b!4009598 (= e!2486515 (+ 1 (size!32079 (t!332653 (t!332653 lt!1418251)))))))

(assert (= (and d!1186810 c!693370) b!4009597))

(assert (= (and d!1186810 (not c!693370)) b!4009598))

(declare-fun m!4594221 () Bool)

(assert (=> b!4009598 m!4594221))

(assert (=> b!4008406 d!1186810))

(declare-fun b!4009601 () Bool)

(declare-fun e!2486518 () Bool)

(assert (=> b!4009601 (= e!2486518 (inv!17 (dynLambda!18200 (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (seqFromList!5047 lt!1418251))))))

(declare-fun b!4009602 () Bool)

(declare-fun e!2486519 () Bool)

(assert (=> b!4009602 (= e!2486519 e!2486518)))

(declare-fun c!693373 () Bool)

(assert (=> b!4009602 (= c!693373 ((_ is IntegerValue!21157) (dynLambda!18200 (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (seqFromList!5047 lt!1418251))))))

(declare-fun b!4009603 () Bool)

(declare-fun e!2486517 () Bool)

(assert (=> b!4009603 (= e!2486517 (inv!15 (dynLambda!18200 (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (seqFromList!5047 lt!1418251))))))

(declare-fun b!4009604 () Bool)

(declare-fun res!1629656 () Bool)

(assert (=> b!4009604 (=> res!1629656 e!2486517)))

(assert (=> b!4009604 (= res!1629656 (not ((_ is IntegerValue!21158) (dynLambda!18200 (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (seqFromList!5047 lt!1418251)))))))

(assert (=> b!4009604 (= e!2486518 e!2486517)))

(declare-fun d!1186814 () Bool)

(declare-fun c!693372 () Bool)

(assert (=> d!1186814 (= c!693372 ((_ is IntegerValue!21156) (dynLambda!18200 (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (seqFromList!5047 lt!1418251))))))

(assert (=> d!1186814 (= (inv!21 (dynLambda!18200 (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (seqFromList!5047 lt!1418251))) e!2486519)))

(declare-fun b!4009605 () Bool)

(assert (=> b!4009605 (= e!2486519 (inv!16 (dynLambda!18200 (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (seqFromList!5047 lt!1418251))))))

(assert (= (and d!1186814 c!693372) b!4009605))

(assert (= (and d!1186814 (not c!693372)) b!4009602))

(assert (= (and b!4009602 c!693373) b!4009601))

(assert (= (and b!4009602 (not c!693373)) b!4009604))

(assert (= (and b!4009604 (not res!1629656)) b!4009603))

(declare-fun m!4594229 () Bool)

(assert (=> b!4009601 m!4594229))

(declare-fun m!4594231 () Bool)

(assert (=> b!4009603 m!4594231))

(declare-fun m!4594233 () Bool)

(assert (=> b!4009605 m!4594233))

(assert (=> tb!240917 d!1186814))

(declare-fun d!1186820 () Bool)

(declare-fun lt!1419005 () Int)

(assert (=> d!1186820 (>= lt!1419005 0)))

(declare-fun e!2486522 () Int)

(assert (=> d!1186820 (= lt!1419005 e!2486522)))

(declare-fun c!693376 () Bool)

(assert (=> d!1186820 (= c!693376 ((_ is Nil!42904) lt!1418264))))

(assert (=> d!1186820 (= (size!32079 lt!1418264) lt!1419005)))

(declare-fun b!4009610 () Bool)

(assert (=> b!4009610 (= e!2486522 0)))

(declare-fun b!4009611 () Bool)

(assert (=> b!4009611 (= e!2486522 (+ 1 (size!32079 (t!332653 lt!1418264))))))

(assert (= (and d!1186820 c!693376) b!4009610))

(assert (= (and d!1186820 (not c!693376)) b!4009611))

(declare-fun m!4594237 () Bool)

(assert (=> b!4009611 m!4594237))

(assert (=> b!4008374 d!1186820))

(assert (=> b!4008374 d!1185984))

(declare-fun d!1186824 () Bool)

(assert (=> d!1186824 (= (nullable!4114 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (nullableFct!1148 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))))))

(declare-fun bs!589272 () Bool)

(assert (= bs!589272 d!1186824))

(declare-fun m!4594243 () Bool)

(assert (=> bs!589272 m!4594243))

(assert (=> b!4008390 d!1186824))

(declare-fun d!1186828 () Bool)

(declare-fun e!2486528 () Bool)

(assert (=> d!1186828 e!2486528))

(declare-fun res!1629662 () Bool)

(assert (=> d!1186828 (=> (not res!1629662) (not e!2486528))))

(declare-fun lt!1419007 () List!43028)

(assert (=> d!1186828 (= res!1629662 (= (content!6506 lt!1419007) ((_ map or) (content!6506 (t!332653 lt!1418254)) (content!6506 lt!1418275))))))

(declare-fun e!2486527 () List!43028)

(assert (=> d!1186828 (= lt!1419007 e!2486527)))

(declare-fun c!693378 () Bool)

(assert (=> d!1186828 (= c!693378 ((_ is Nil!42904) (t!332653 lt!1418254)))))

(assert (=> d!1186828 (= (++!11224 (t!332653 lt!1418254) lt!1418275) lt!1419007)))

(declare-fun b!4009618 () Bool)

(assert (=> b!4009618 (= e!2486527 lt!1418275)))

(declare-fun b!4009621 () Bool)

(assert (=> b!4009621 (= e!2486528 (or (not (= lt!1418275 Nil!42904)) (= lt!1419007 (t!332653 lt!1418254))))))

(declare-fun b!4009619 () Bool)

(assert (=> b!4009619 (= e!2486527 (Cons!42904 (h!48324 (t!332653 lt!1418254)) (++!11224 (t!332653 (t!332653 lt!1418254)) lt!1418275)))))

(declare-fun b!4009620 () Bool)

(declare-fun res!1629661 () Bool)

(assert (=> b!4009620 (=> (not res!1629661) (not e!2486528))))

(assert (=> b!4009620 (= res!1629661 (= (size!32079 lt!1419007) (+ (size!32079 (t!332653 lt!1418254)) (size!32079 lt!1418275))))))

(assert (= (and d!1186828 c!693378) b!4009618))

(assert (= (and d!1186828 (not c!693378)) b!4009619))

(assert (= (and d!1186828 res!1629662) b!4009620))

(assert (= (and b!4009620 res!1629661) b!4009621))

(declare-fun m!4594245 () Bool)

(assert (=> d!1186828 m!4594245))

(assert (=> d!1186828 m!4592603))

(assert (=> d!1186828 m!4592443))

(declare-fun m!4594249 () Bool)

(assert (=> b!4009619 m!4594249))

(declare-fun m!4594251 () Bool)

(assert (=> b!4009620 m!4594251))

(assert (=> b!4009620 m!4592257))

(assert (=> b!4009620 m!4592449))

(assert (=> b!4008455 d!1186828))

(declare-fun d!1186830 () Bool)

(declare-fun e!2486529 () Bool)

(assert (=> d!1186830 e!2486529))

(declare-fun res!1629663 () Bool)

(assert (=> d!1186830 (=> res!1629663 e!2486529)))

(declare-fun lt!1419008 () Bool)

(assert (=> d!1186830 (= res!1629663 (not lt!1419008))))

(declare-fun e!2486531 () Bool)

(assert (=> d!1186830 (= lt!1419008 e!2486531)))

(declare-fun res!1629665 () Bool)

(assert (=> d!1186830 (=> res!1629665 e!2486531)))

(assert (=> d!1186830 (= res!1629665 ((_ is Nil!42904) lt!1418254))))

(assert (=> d!1186830 (= (isPrefix!3909 lt!1418254 (++!11224 prefix!494 suffix!1299)) lt!1419008)))

(declare-fun e!2486530 () Bool)

(declare-fun b!4009624 () Bool)

(assert (=> b!4009624 (= e!2486530 (isPrefix!3909 (tail!6247 lt!1418254) (tail!6247 (++!11224 prefix!494 suffix!1299))))))

(declare-fun b!4009623 () Bool)

(declare-fun res!1629664 () Bool)

(assert (=> b!4009623 (=> (not res!1629664) (not e!2486530))))

(assert (=> b!4009623 (= res!1629664 (= (head!8515 lt!1418254) (head!8515 (++!11224 prefix!494 suffix!1299))))))

(declare-fun b!4009625 () Bool)

(assert (=> b!4009625 (= e!2486529 (>= (size!32079 (++!11224 prefix!494 suffix!1299)) (size!32079 lt!1418254)))))

(declare-fun b!4009622 () Bool)

(assert (=> b!4009622 (= e!2486531 e!2486530)))

(declare-fun res!1629666 () Bool)

(assert (=> b!4009622 (=> (not res!1629666) (not e!2486530))))

(assert (=> b!4009622 (= res!1629666 (not ((_ is Nil!42904) (++!11224 prefix!494 suffix!1299))))))

(assert (= (and d!1186830 (not res!1629665)) b!4009622))

(assert (= (and b!4009622 res!1629666) b!4009623))

(assert (= (and b!4009623 res!1629664) b!4009624))

(assert (= (and d!1186830 (not res!1629663)) b!4009625))

(assert (=> b!4009624 m!4592151))

(assert (=> b!4009624 m!4591479))

(assert (=> b!4009624 m!4593171))

(assert (=> b!4009624 m!4592151))

(assert (=> b!4009624 m!4593171))

(declare-fun m!4594255 () Bool)

(assert (=> b!4009624 m!4594255))

(assert (=> b!4009623 m!4592157))

(assert (=> b!4009623 m!4591479))

(assert (=> b!4009623 m!4593179))

(assert (=> b!4009625 m!4591479))

(assert (=> b!4009625 m!4593183))

(assert (=> b!4009625 m!4591495))

(assert (=> d!1186072 d!1186830))

(assert (=> d!1186072 d!1185828))

(declare-fun d!1186840 () Bool)

(assert (=> d!1186840 (isPrefix!3909 lt!1418254 (++!11224 prefix!494 suffix!1299))))

(assert (=> d!1186840 true))

(declare-fun _$58!529 () Unit!61905)

(assert (=> d!1186840 (= (choose!24215 lt!1418254 prefix!494 suffix!1299) _$58!529)))

(declare-fun bs!589273 () Bool)

(assert (= bs!589273 d!1186840))

(assert (=> bs!589273 m!4591479))

(assert (=> bs!589273 m!4591479))

(assert (=> bs!589273 m!4592477))

(assert (=> d!1186072 d!1186840))

(assert (=> d!1186072 d!1186048))

(declare-fun d!1186842 () Bool)

(declare-fun e!2486533 () Bool)

(assert (=> d!1186842 e!2486533))

(declare-fun res!1629667 () Bool)

(assert (=> d!1186842 (=> res!1629667 e!2486533)))

(declare-fun lt!1419010 () Bool)

(assert (=> d!1186842 (= res!1629667 (not lt!1419010))))

(declare-fun e!2486535 () Bool)

(assert (=> d!1186842 (= lt!1419010 e!2486535)))

(declare-fun res!1629669 () Bool)

(assert (=> d!1186842 (=> res!1629669 e!2486535)))

(assert (=> d!1186842 (= res!1629669 ((_ is Nil!42904) (tail!6247 lt!1418254)))))

(assert (=> d!1186842 (= (isPrefix!3909 (tail!6247 lt!1418254) (tail!6247 prefix!494)) lt!1419010)))

(declare-fun b!4009630 () Bool)

(declare-fun e!2486534 () Bool)

(assert (=> b!4009630 (= e!2486534 (isPrefix!3909 (tail!6247 (tail!6247 lt!1418254)) (tail!6247 (tail!6247 prefix!494))))))

(declare-fun b!4009629 () Bool)

(declare-fun res!1629668 () Bool)

(assert (=> b!4009629 (=> (not res!1629668) (not e!2486534))))

(assert (=> b!4009629 (= res!1629668 (= (head!8515 (tail!6247 lt!1418254)) (head!8515 (tail!6247 prefix!494))))))

(declare-fun b!4009631 () Bool)

(assert (=> b!4009631 (= e!2486533 (>= (size!32079 (tail!6247 prefix!494)) (size!32079 (tail!6247 lt!1418254))))))

(declare-fun b!4009628 () Bool)

(assert (=> b!4009628 (= e!2486535 e!2486534)))

(declare-fun res!1629670 () Bool)

(assert (=> b!4009628 (=> (not res!1629670) (not e!2486534))))

(assert (=> b!4009628 (= res!1629670 (not ((_ is Nil!42904) (tail!6247 prefix!494))))))

(assert (= (and d!1186842 (not res!1629669)) b!4009628))

(assert (= (and b!4009628 res!1629670) b!4009629))

(assert (= (and b!4009629 res!1629668) b!4009630))

(assert (= (and d!1186842 (not res!1629667)) b!4009631))

(assert (=> b!4009630 m!4592151))

(assert (=> b!4009630 m!4592669))

(assert (=> b!4009630 m!4592389))

(assert (=> b!4009630 m!4593153))

(assert (=> b!4009630 m!4592669))

(assert (=> b!4009630 m!4593153))

(declare-fun m!4594257 () Bool)

(assert (=> b!4009630 m!4594257))

(assert (=> b!4009629 m!4592151))

(assert (=> b!4009629 m!4592667))

(assert (=> b!4009629 m!4592389))

(assert (=> b!4009629 m!4593159))

(assert (=> b!4009631 m!4592389))

(assert (=> b!4009631 m!4593165))

(assert (=> b!4009631 m!4592151))

(assert (=> b!4009631 m!4593817))

(assert (=> b!4008449 d!1186842))

(assert (=> b!4008449 d!1186172))

(assert (=> b!4008449 d!1186346))

(declare-fun d!1186844 () Bool)

(declare-fun e!2486541 () Bool)

(assert (=> d!1186844 e!2486541))

(declare-fun res!1629676 () Bool)

(assert (=> d!1186844 (=> (not res!1629676) (not e!2486541))))

(declare-fun lt!1419013 () List!43028)

(assert (=> d!1186844 (= res!1629676 (= (content!6506 lt!1419013) ((_ map or) (content!6506 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418330))))) (content!6506 (_2!24163 (get!14100 lt!1418330))))))))

(declare-fun e!2486540 () List!43028)

(assert (=> d!1186844 (= lt!1419013 e!2486540)))

(declare-fun c!693380 () Bool)

(assert (=> d!1186844 (= c!693380 ((_ is Nil!42904) (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418330))))))))

(assert (=> d!1186844 (= (++!11224 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418330)))) (_2!24163 (get!14100 lt!1418330))) lt!1419013)))

(declare-fun b!4009636 () Bool)

(assert (=> b!4009636 (= e!2486540 (_2!24163 (get!14100 lt!1418330)))))

(declare-fun b!4009639 () Bool)

(assert (=> b!4009639 (= e!2486541 (or (not (= (_2!24163 (get!14100 lt!1418330)) Nil!42904)) (= lt!1419013 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418330)))))))))

(declare-fun b!4009637 () Bool)

(assert (=> b!4009637 (= e!2486540 (Cons!42904 (h!48324 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418330))))) (++!11224 (t!332653 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418330))))) (_2!24163 (get!14100 lt!1418330)))))))

(declare-fun b!4009638 () Bool)

(declare-fun res!1629675 () Bool)

(assert (=> b!4009638 (=> (not res!1629675) (not e!2486541))))

(assert (=> b!4009638 (= res!1629675 (= (size!32079 lt!1419013) (+ (size!32079 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418330))))) (size!32079 (_2!24163 (get!14100 lt!1418330))))))))

(assert (= (and d!1186844 c!693380) b!4009636))

(assert (= (and d!1186844 (not c!693380)) b!4009637))

(assert (= (and d!1186844 res!1629676) b!4009638))

(assert (= (and b!4009638 res!1629675) b!4009639))

(declare-fun m!4594259 () Bool)

(assert (=> d!1186844 m!4594259))

(assert (=> d!1186844 m!4591669))

(declare-fun m!4594261 () Bool)

(assert (=> d!1186844 m!4594261))

(declare-fun m!4594263 () Bool)

(assert (=> d!1186844 m!4594263))

(declare-fun m!4594265 () Bool)

(assert (=> b!4009637 m!4594265))

(declare-fun m!4594267 () Bool)

(assert (=> b!4009638 m!4594267))

(assert (=> b!4009638 m!4591669))

(declare-fun m!4594269 () Bool)

(assert (=> b!4009638 m!4594269))

(assert (=> b!4009638 m!4591661))

(assert (=> b!4008025 d!1186844))

(assert (=> b!4008025 d!1186090))

(assert (=> b!4008025 d!1186092))

(assert (=> b!4008025 d!1186094))

(declare-fun b!4009640 () Bool)

(declare-fun e!2486545 () Bool)

(declare-fun e!2486543 () Bool)

(assert (=> b!4009640 (= e!2486545 e!2486543)))

(declare-fun res!1629679 () Bool)

(assert (=> b!4009640 (= res!1629679 (not (nullable!4114 (reg!12056 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))))))))

(assert (=> b!4009640 (=> (not res!1629679) (not e!2486543))))

(declare-fun call!286366 () Bool)

(declare-fun bm!286359 () Bool)

(declare-fun c!693381 () Bool)

(declare-fun c!693382 () Bool)

(assert (=> bm!286359 (= call!286366 (validRegex!5314 (ite c!693381 (reg!12056 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (ite c!693382 (regOne!23967 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (regOne!23966 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))))))))

(declare-fun b!4009641 () Bool)

(declare-fun e!2486546 () Bool)

(declare-fun e!2486547 () Bool)

(assert (=> b!4009641 (= e!2486546 e!2486547)))

(declare-fun res!1629678 () Bool)

(assert (=> b!4009641 (=> (not res!1629678) (not e!2486547))))

(declare-fun call!286365 () Bool)

(assert (=> b!4009641 (= res!1629678 call!286365)))

(declare-fun b!4009642 () Bool)

(declare-fun e!2486548 () Bool)

(assert (=> b!4009642 (= e!2486545 e!2486548)))

(assert (=> b!4009642 (= c!693382 ((_ is Union!11727) (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))))))

(declare-fun b!4009643 () Bool)

(declare-fun res!1629681 () Bool)

(assert (=> b!4009643 (=> res!1629681 e!2486546)))

(assert (=> b!4009643 (= res!1629681 (not ((_ is Concat!18780) (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))))))

(assert (=> b!4009643 (= e!2486548 e!2486546)))

(declare-fun d!1186846 () Bool)

(declare-fun res!1629680 () Bool)

(declare-fun e!2486544 () Bool)

(assert (=> d!1186846 (=> res!1629680 e!2486544)))

(assert (=> d!1186846 (= res!1629680 ((_ is ElementMatch!11727) (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))))))

(assert (=> d!1186846 (= (validRegex!5314 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) e!2486544)))

(declare-fun b!4009644 () Bool)

(declare-fun call!286364 () Bool)

(assert (=> b!4009644 (= e!2486547 call!286364)))

(declare-fun b!4009645 () Bool)

(declare-fun res!1629677 () Bool)

(declare-fun e!2486542 () Bool)

(assert (=> b!4009645 (=> (not res!1629677) (not e!2486542))))

(assert (=> b!4009645 (= res!1629677 call!286365)))

(assert (=> b!4009645 (= e!2486548 e!2486542)))

(declare-fun b!4009646 () Bool)

(assert (=> b!4009646 (= e!2486544 e!2486545)))

(assert (=> b!4009646 (= c!693381 ((_ is Star!11727) (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))))))

(declare-fun bm!286360 () Bool)

(assert (=> bm!286360 (= call!286365 call!286366)))

(declare-fun b!4009647 () Bool)

(assert (=> b!4009647 (= e!2486542 call!286364)))

(declare-fun bm!286361 () Bool)

(assert (=> bm!286361 (= call!286364 (validRegex!5314 (ite c!693382 (regTwo!23967 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (regTwo!23966 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))))))))

(declare-fun b!4009648 () Bool)

(assert (=> b!4009648 (= e!2486543 call!286366)))

(assert (= (and d!1186846 (not res!1629680)) b!4009646))

(assert (= (and b!4009646 c!693381) b!4009640))

(assert (= (and b!4009646 (not c!693381)) b!4009642))

(assert (= (and b!4009640 res!1629679) b!4009648))

(assert (= (and b!4009642 c!693382) b!4009645))

(assert (= (and b!4009642 (not c!693382)) b!4009643))

(assert (= (and b!4009645 res!1629677) b!4009647))

(assert (= (and b!4009643 (not res!1629681)) b!4009641))

(assert (= (and b!4009641 res!1629678) b!4009644))

(assert (= (or b!4009647 b!4009644) bm!286361))

(assert (= (or b!4009645 b!4009641) bm!286360))

(assert (= (or b!4009648 bm!286360) bm!286359))

(declare-fun m!4594271 () Bool)

(assert (=> b!4009640 m!4594271))

(declare-fun m!4594273 () Bool)

(assert (=> bm!286359 m!4594273))

(declare-fun m!4594275 () Bool)

(assert (=> bm!286361 m!4594275))

(assert (=> d!1185994 d!1186846))

(declare-fun d!1186848 () Bool)

(declare-fun e!2486549 () Bool)

(assert (=> d!1186848 e!2486549))

(declare-fun res!1629682 () Bool)

(assert (=> d!1186848 (=> res!1629682 e!2486549)))

(declare-fun lt!1419014 () Bool)

(assert (=> d!1186848 (= res!1629682 (not lt!1419014))))

(declare-fun e!2486551 () Bool)

(assert (=> d!1186848 (= lt!1419014 e!2486551)))

(declare-fun res!1629684 () Bool)

(assert (=> d!1186848 (=> res!1629684 e!2486551)))

(assert (=> d!1186848 (= res!1629684 ((_ is Nil!42904) (tail!6247 lt!1418254)))))

(assert (=> d!1186848 (= (isPrefix!3909 (tail!6247 lt!1418254) (tail!6247 lt!1418276)) lt!1419014)))

(declare-fun b!4009651 () Bool)

(declare-fun e!2486550 () Bool)

(assert (=> b!4009651 (= e!2486550 (isPrefix!3909 (tail!6247 (tail!6247 lt!1418254)) (tail!6247 (tail!6247 lt!1418276))))))

(declare-fun b!4009650 () Bool)

(declare-fun res!1629683 () Bool)

(assert (=> b!4009650 (=> (not res!1629683) (not e!2486550))))

(assert (=> b!4009650 (= res!1629683 (= (head!8515 (tail!6247 lt!1418254)) (head!8515 (tail!6247 lt!1418276))))))

(declare-fun b!4009652 () Bool)

(assert (=> b!4009652 (= e!2486549 (>= (size!32079 (tail!6247 lt!1418276)) (size!32079 (tail!6247 lt!1418254))))))

(declare-fun b!4009649 () Bool)

(assert (=> b!4009649 (= e!2486551 e!2486550)))

(declare-fun res!1629685 () Bool)

(assert (=> b!4009649 (=> (not res!1629685) (not e!2486550))))

(assert (=> b!4009649 (= res!1629685 (not ((_ is Nil!42904) (tail!6247 lt!1418276))))))

(assert (= (and d!1186848 (not res!1629684)) b!4009649))

(assert (= (and b!4009649 res!1629685) b!4009650))

(assert (= (and b!4009650 res!1629683) b!4009651))

(assert (= (and d!1186848 (not res!1629682)) b!4009652))

(assert (=> b!4009651 m!4592151))

(assert (=> b!4009651 m!4592669))

(assert (=> b!4009651 m!4592391))

(assert (=> b!4009651 m!4593155))

(assert (=> b!4009651 m!4592669))

(assert (=> b!4009651 m!4593155))

(declare-fun m!4594277 () Bool)

(assert (=> b!4009651 m!4594277))

(assert (=> b!4009650 m!4592151))

(assert (=> b!4009650 m!4592667))

(assert (=> b!4009650 m!4592391))

(assert (=> b!4009650 m!4593161))

(assert (=> b!4009652 m!4592391))

(assert (=> b!4009652 m!4593163))

(assert (=> b!4009652 m!4592151))

(assert (=> b!4009652 m!4593817))

(assert (=> b!4008431 d!1186848))

(assert (=> b!4008431 d!1186172))

(assert (=> b!4008431 d!1186348))

(declare-fun d!1186850 () Bool)

(declare-fun e!2486555 () Bool)

(assert (=> d!1186850 e!2486555))

(declare-fun res!1629689 () Bool)

(assert (=> d!1186850 (=> (not res!1629689) (not e!2486555))))

(declare-fun lt!1419016 () List!43028)

(assert (=> d!1186850 (= res!1629689 (= (content!6506 lt!1419016) ((_ map or) (content!6506 (t!332653 prefix!494)) (content!6506 suffix!1299))))))

(declare-fun e!2486554 () List!43028)

(assert (=> d!1186850 (= lt!1419016 e!2486554)))

(declare-fun c!693383 () Bool)

(assert (=> d!1186850 (= c!693383 ((_ is Nil!42904) (t!332653 prefix!494)))))

(assert (=> d!1186850 (= (++!11224 (t!332653 prefix!494) suffix!1299) lt!1419016)))

(declare-fun b!4009657 () Bool)

(assert (=> b!4009657 (= e!2486554 suffix!1299)))

(declare-fun b!4009660 () Bool)

(assert (=> b!4009660 (= e!2486555 (or (not (= suffix!1299 Nil!42904)) (= lt!1419016 (t!332653 prefix!494))))))

(declare-fun b!4009658 () Bool)

(assert (=> b!4009658 (= e!2486554 (Cons!42904 (h!48324 (t!332653 prefix!494)) (++!11224 (t!332653 (t!332653 prefix!494)) suffix!1299)))))

(declare-fun b!4009659 () Bool)

(declare-fun res!1629688 () Bool)

(assert (=> b!4009659 (=> (not res!1629688) (not e!2486555))))

(assert (=> b!4009659 (= res!1629688 (= (size!32079 lt!1419016) (+ (size!32079 (t!332653 prefix!494)) (size!32079 suffix!1299))))))

(assert (= (and d!1186850 c!693383) b!4009657))

(assert (= (and d!1186850 (not c!693383)) b!4009658))

(assert (= (and d!1186850 res!1629689) b!4009659))

(assert (= (and b!4009659 res!1629688) b!4009660))

(declare-fun m!4594281 () Bool)

(assert (=> d!1186850 m!4594281))

(assert (=> d!1186850 m!4593911))

(assert (=> d!1186850 m!4591689))

(declare-fun m!4594283 () Bool)

(assert (=> b!4009658 m!4594283))

(declare-fun m!4594285 () Bool)

(assert (=> b!4009659 m!4594285))

(assert (=> b!4009659 m!4592259))

(assert (=> b!4009659 m!4591549))

(assert (=> b!4008057 d!1186850))

(declare-fun d!1186854 () Bool)

(declare-fun e!2486557 () Bool)

(assert (=> d!1186854 e!2486557))

(declare-fun res!1629690 () Bool)

(assert (=> d!1186854 (=> res!1629690 e!2486557)))

(declare-fun lt!1419018 () Bool)

(assert (=> d!1186854 (= res!1629690 (not lt!1419018))))

(declare-fun e!2486559 () Bool)

(assert (=> d!1186854 (= lt!1419018 e!2486559)))

(declare-fun res!1629692 () Bool)

(assert (=> d!1186854 (=> res!1629692 e!2486559)))

(assert (=> d!1186854 (= res!1629692 ((_ is Nil!42904) lt!1418254))))

(assert (=> d!1186854 (= (isPrefix!3909 lt!1418254 (++!11224 lt!1418254 lt!1418244)) lt!1419018)))

(declare-fun b!4009665 () Bool)

(declare-fun e!2486558 () Bool)

(assert (=> b!4009665 (= e!2486558 (isPrefix!3909 (tail!6247 lt!1418254) (tail!6247 (++!11224 lt!1418254 lt!1418244))))))

(declare-fun b!4009664 () Bool)

(declare-fun res!1629691 () Bool)

(assert (=> b!4009664 (=> (not res!1629691) (not e!2486558))))

(assert (=> b!4009664 (= res!1629691 (= (head!8515 lt!1418254) (head!8515 (++!11224 lt!1418254 lt!1418244))))))

(declare-fun b!4009666 () Bool)

(assert (=> b!4009666 (= e!2486557 (>= (size!32079 (++!11224 lt!1418254 lt!1418244)) (size!32079 lt!1418254)))))

(declare-fun b!4009663 () Bool)

(assert (=> b!4009663 (= e!2486559 e!2486558)))

(declare-fun res!1629693 () Bool)

(assert (=> b!4009663 (=> (not res!1629693) (not e!2486558))))

(assert (=> b!4009663 (= res!1629693 (not ((_ is Nil!42904) (++!11224 lt!1418254 lt!1418244))))))

(assert (= (and d!1186854 (not res!1629692)) b!4009663))

(assert (= (and b!4009663 res!1629693) b!4009664))

(assert (= (and b!4009664 res!1629691) b!4009665))

(assert (= (and d!1186854 (not res!1629690)) b!4009666))

(assert (=> b!4009665 m!4592151))

(assert (=> b!4009665 m!4591439))

(declare-fun m!4594289 () Bool)

(assert (=> b!4009665 m!4594289))

(assert (=> b!4009665 m!4592151))

(assert (=> b!4009665 m!4594289))

(declare-fun m!4594291 () Bool)

(assert (=> b!4009665 m!4594291))

(assert (=> b!4009664 m!4592157))

(assert (=> b!4009664 m!4591439))

(declare-fun m!4594293 () Bool)

(assert (=> b!4009664 m!4594293))

(assert (=> b!4009666 m!4591439))

(declare-fun m!4594295 () Bool)

(assert (=> b!4009666 m!4594295))

(assert (=> b!4009666 m!4591495))

(assert (=> d!1185850 d!1186854))

(assert (=> d!1185850 d!1186074))

(declare-fun d!1186860 () Bool)

(assert (=> d!1186860 (isPrefix!3909 lt!1418254 (++!11224 lt!1418254 lt!1418244))))

(assert (=> d!1186860 true))

(declare-fun _$46!1655 () Unit!61905)

(assert (=> d!1186860 (= (choose!24205 lt!1418254 lt!1418244) _$46!1655)))

(declare-fun bs!589274 () Bool)

(assert (= bs!589274 d!1186860))

(assert (=> bs!589274 m!4591439))

(assert (=> bs!589274 m!4591439))

(assert (=> bs!589274 m!4591797))

(assert (=> d!1185850 d!1186860))

(declare-fun d!1186862 () Bool)

(assert (=> d!1186862 (= (isEmpty!25634 (originalCharacters!7422 token!484)) ((_ is Nil!42904) (originalCharacters!7422 token!484)))))

(assert (=> d!1185848 d!1186862))

(declare-fun d!1186864 () Bool)

(declare-fun lt!1419019 () Int)

(assert (=> d!1186864 (>= lt!1419019 0)))

(declare-fun e!2486560 () Int)

(assert (=> d!1186864 (= lt!1419019 e!2486560)))

(declare-fun c!693385 () Bool)

(assert (=> d!1186864 (= c!693385 ((_ is Nil!42904) lt!1418454))))

(assert (=> d!1186864 (= (size!32079 lt!1418454) lt!1419019)))

(declare-fun b!4009667 () Bool)

(assert (=> b!4009667 (= e!2486560 0)))

(declare-fun b!4009668 () Bool)

(assert (=> b!4009668 (= e!2486560 (+ 1 (size!32079 (t!332653 lt!1418454))))))

(assert (= (and d!1186864 c!693385) b!4009667))

(assert (= (and d!1186864 (not c!693385)) b!4009668))

(declare-fun m!4594297 () Bool)

(assert (=> b!4009668 m!4594297))

(assert (=> b!4008360 d!1186864))

(assert (=> b!4008360 d!1185984))

(assert (=> b!4008360 d!1186510))

(declare-fun d!1186866 () Bool)

(declare-fun e!2486562 () Bool)

(assert (=> d!1186866 e!2486562))

(declare-fun res!1629695 () Bool)

(assert (=> d!1186866 (=> (not res!1629695) (not e!2486562))))

(declare-fun lt!1419020 () List!43028)

(assert (=> d!1186866 (= res!1629695 (= (content!6506 lt!1419020) ((_ map or) (content!6506 (t!332653 prefix!494)) (content!6506 newSuffix!27))))))

(declare-fun e!2486561 () List!43028)

(assert (=> d!1186866 (= lt!1419020 e!2486561)))

(declare-fun c!693386 () Bool)

(assert (=> d!1186866 (= c!693386 ((_ is Nil!42904) (t!332653 prefix!494)))))

(assert (=> d!1186866 (= (++!11224 (t!332653 prefix!494) newSuffix!27) lt!1419020)))

(declare-fun b!4009669 () Bool)

(assert (=> b!4009669 (= e!2486561 newSuffix!27)))

(declare-fun b!4009672 () Bool)

(assert (=> b!4009672 (= e!2486562 (or (not (= newSuffix!27 Nil!42904)) (= lt!1419020 (t!332653 prefix!494))))))

(declare-fun b!4009670 () Bool)

(assert (=> b!4009670 (= e!2486561 (Cons!42904 (h!48324 (t!332653 prefix!494)) (++!11224 (t!332653 (t!332653 prefix!494)) newSuffix!27)))))

(declare-fun b!4009671 () Bool)

(declare-fun res!1629694 () Bool)

(assert (=> b!4009671 (=> (not res!1629694) (not e!2486562))))

(assert (=> b!4009671 (= res!1629694 (= (size!32079 lt!1419020) (+ (size!32079 (t!332653 prefix!494)) (size!32079 newSuffix!27))))))

(assert (= (and d!1186866 c!693386) b!4009669))

(assert (= (and d!1186866 (not c!693386)) b!4009670))

(assert (= (and d!1186866 res!1629695) b!4009671))

(assert (= (and b!4009671 res!1629694) b!4009672))

(declare-fun m!4594299 () Bool)

(assert (=> d!1186866 m!4594299))

(assert (=> d!1186866 m!4593911))

(assert (=> d!1186866 m!4592185))

(declare-fun m!4594301 () Bool)

(assert (=> b!4009670 m!4594301))

(declare-fun m!4594303 () Bool)

(assert (=> b!4009671 m!4594303))

(assert (=> b!4009671 m!4592259))

(assert (=> b!4009671 m!4591551))

(assert (=> b!4008355 d!1186866))

(declare-fun d!1186870 () Bool)

(declare-fun e!2486563 () Bool)

(assert (=> d!1186870 e!2486563))

(declare-fun res!1629696 () Bool)

(assert (=> d!1186870 (=> res!1629696 e!2486563)))

(declare-fun lt!1419021 () Bool)

(assert (=> d!1186870 (= res!1629696 (not lt!1419021))))

(declare-fun e!2486565 () Bool)

(assert (=> d!1186870 (= lt!1419021 e!2486565)))

(declare-fun res!1629698 () Bool)

(assert (=> d!1186870 (=> res!1629698 e!2486565)))

(assert (=> d!1186870 (= res!1629698 ((_ is Nil!42904) (tail!6247 lt!1418254)))))

(assert (=> d!1186870 (= (isPrefix!3909 (tail!6247 lt!1418254) (tail!6247 lt!1418249)) lt!1419021)))

(declare-fun b!4009675 () Bool)

(declare-fun e!2486564 () Bool)

(assert (=> b!4009675 (= e!2486564 (isPrefix!3909 (tail!6247 (tail!6247 lt!1418254)) (tail!6247 (tail!6247 lt!1418249))))))

(declare-fun b!4009674 () Bool)

(declare-fun res!1629697 () Bool)

(assert (=> b!4009674 (=> (not res!1629697) (not e!2486564))))

(assert (=> b!4009674 (= res!1629697 (= (head!8515 (tail!6247 lt!1418254)) (head!8515 (tail!6247 lt!1418249))))))

(declare-fun b!4009676 () Bool)

(assert (=> b!4009676 (= e!2486563 (>= (size!32079 (tail!6247 lt!1418249)) (size!32079 (tail!6247 lt!1418254))))))

(declare-fun b!4009673 () Bool)

(assert (=> b!4009673 (= e!2486565 e!2486564)))

(declare-fun res!1629699 () Bool)

(assert (=> b!4009673 (=> (not res!1629699) (not e!2486564))))

(assert (=> b!4009673 (= res!1629699 (not ((_ is Nil!42904) (tail!6247 lt!1418249))))))

(assert (= (and d!1186870 (not res!1629698)) b!4009673))

(assert (= (and b!4009673 res!1629699) b!4009674))

(assert (= (and b!4009674 res!1629697) b!4009675))

(assert (= (and d!1186870 (not res!1629696)) b!4009676))

(assert (=> b!4009675 m!4592151))

(assert (=> b!4009675 m!4592669))

(assert (=> b!4009675 m!4592467))

(declare-fun m!4594307 () Bool)

(assert (=> b!4009675 m!4594307))

(assert (=> b!4009675 m!4592669))

(assert (=> b!4009675 m!4594307))

(declare-fun m!4594309 () Bool)

(assert (=> b!4009675 m!4594309))

(assert (=> b!4009674 m!4592151))

(assert (=> b!4009674 m!4592667))

(assert (=> b!4009674 m!4592467))

(declare-fun m!4594311 () Bool)

(assert (=> b!4009674 m!4594311))

(assert (=> b!4009676 m!4592467))

(declare-fun m!4594313 () Bool)

(assert (=> b!4009676 m!4594313))

(assert (=> b!4009676 m!4592151))

(assert (=> b!4009676 m!4593817))

(assert (=> b!4008508 d!1186870))

(assert (=> b!4008508 d!1186172))

(declare-fun d!1186874 () Bool)

(assert (=> d!1186874 (= (tail!6247 lt!1418249) (t!332653 lt!1418249))))

(assert (=> b!4008508 d!1186874))

(declare-fun d!1186876 () Bool)

(declare-fun e!2486566 () Bool)

(assert (=> d!1186876 e!2486566))

(declare-fun res!1629700 () Bool)

(assert (=> d!1186876 (=> res!1629700 e!2486566)))

(declare-fun lt!1419022 () Bool)

(assert (=> d!1186876 (= res!1629700 (not lt!1419022))))

(declare-fun e!2486568 () Bool)

(assert (=> d!1186876 (= lt!1419022 e!2486568)))

(declare-fun res!1629702 () Bool)

(assert (=> d!1186876 (=> res!1629702 e!2486568)))

(assert (=> d!1186876 (= res!1629702 ((_ is Nil!42904) (tail!6247 newSuffix!27)))))

(assert (=> d!1186876 (= (isPrefix!3909 (tail!6247 newSuffix!27) (tail!6247 suffix!1299)) lt!1419022)))

(declare-fun b!4009679 () Bool)

(declare-fun e!2486567 () Bool)

(assert (=> b!4009679 (= e!2486567 (isPrefix!3909 (tail!6247 (tail!6247 newSuffix!27)) (tail!6247 (tail!6247 suffix!1299))))))

(declare-fun b!4009678 () Bool)

(declare-fun res!1629701 () Bool)

(assert (=> b!4009678 (=> (not res!1629701) (not e!2486567))))

(assert (=> b!4009678 (= res!1629701 (= (head!8515 (tail!6247 newSuffix!27)) (head!8515 (tail!6247 suffix!1299))))))

(declare-fun b!4009680 () Bool)

(assert (=> b!4009680 (= e!2486566 (>= (size!32079 (tail!6247 suffix!1299)) (size!32079 (tail!6247 newSuffix!27))))))

(declare-fun b!4009677 () Bool)

(assert (=> b!4009677 (= e!2486568 e!2486567)))

(declare-fun res!1629703 () Bool)

(assert (=> b!4009677 (=> (not res!1629703) (not e!2486567))))

(assert (=> b!4009677 (= res!1629703 (not ((_ is Nil!42904) (tail!6247 suffix!1299))))))

(assert (= (and d!1186876 (not res!1629702)) b!4009677))

(assert (= (and b!4009677 res!1629703) b!4009678))

(assert (= (and b!4009678 res!1629701) b!4009679))

(assert (= (and d!1186876 (not res!1629700)) b!4009680))

(assert (=> b!4009679 m!4592247))

(declare-fun m!4594315 () Bool)

(assert (=> b!4009679 m!4594315))

(assert (=> b!4009679 m!4592249))

(declare-fun m!4594317 () Bool)

(assert (=> b!4009679 m!4594317))

(assert (=> b!4009679 m!4594315))

(assert (=> b!4009679 m!4594317))

(declare-fun m!4594319 () Bool)

(assert (=> b!4009679 m!4594319))

(assert (=> b!4009678 m!4592247))

(declare-fun m!4594321 () Bool)

(assert (=> b!4009678 m!4594321))

(assert (=> b!4009678 m!4592249))

(declare-fun m!4594323 () Bool)

(assert (=> b!4009678 m!4594323))

(assert (=> b!4009680 m!4592249))

(declare-fun m!4594325 () Bool)

(assert (=> b!4009680 m!4594325))

(assert (=> b!4009680 m!4592247))

(declare-fun m!4594327 () Bool)

(assert (=> b!4009680 m!4594327))

(assert (=> b!4008377 d!1186876))

(declare-fun d!1186882 () Bool)

(assert (=> d!1186882 (= (tail!6247 newSuffix!27) (t!332653 newSuffix!27))))

(assert (=> b!4008377 d!1186882))

(declare-fun d!1186886 () Bool)

(assert (=> d!1186886 (= (tail!6247 suffix!1299) (t!332653 suffix!1299))))

(assert (=> b!4008377 d!1186886))

(assert (=> d!1185836 d!1186458))

(declare-fun d!1186888 () Bool)

(declare-fun lt!1419031 () Int)

(assert (=> d!1186888 (>= lt!1419031 0)))

(declare-fun e!2486569 () Int)

(assert (=> d!1186888 (= lt!1419031 e!2486569)))

(declare-fun c!693387 () Bool)

(assert (=> d!1186888 (= c!693387 ((_ is Nil!42904) (_2!24163 (get!14100 lt!1418330))))))

(assert (=> d!1186888 (= (size!32079 (_2!24163 (get!14100 lt!1418330))) lt!1419031)))

(declare-fun b!4009681 () Bool)

(assert (=> b!4009681 (= e!2486569 0)))

(declare-fun b!4009682 () Bool)

(assert (=> b!4009682 (= e!2486569 (+ 1 (size!32079 (t!332653 (_2!24163 (get!14100 lt!1418330))))))))

(assert (= (and d!1186888 c!693387) b!4009681))

(assert (= (and d!1186888 (not c!693387)) b!4009682))

(declare-fun m!4594329 () Bool)

(assert (=> b!4009682 m!4594329))

(assert (=> b!4008021 d!1186888))

(assert (=> b!4008021 d!1186094))

(assert (=> b!4008021 d!1186106))

(declare-fun bs!589279 () Bool)

(declare-fun d!1186890 () Bool)

(assert (= bs!589279 (and d!1186890 d!1186558)))

(declare-fun lambda!127034 () Int)

(assert (=> bs!589279 (= (and (= (toChars!9181 (transformation!6822 (rule!9862 token!484))) (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))) (= (toValue!9322 (transformation!6822 (rule!9862 token!484))) (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))))) (= lambda!127034 lambda!127023))))

(declare-fun bs!589280 () Bool)

(assert (= bs!589280 (and d!1186890 d!1186708)))

(assert (=> bs!589280 (= lambda!127034 lambda!127025)))

(declare-fun bs!589281 () Bool)

(assert (= bs!589281 (and d!1186890 d!1186754)))

(assert (=> bs!589281 (= (and (= (toChars!9181 (transformation!6822 (rule!9862 token!484))) (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))) (= (toValue!9322 (transformation!6822 (rule!9862 token!484))) (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))))) (= lambda!127034 lambda!127028))))

(declare-fun bs!589282 () Bool)

(assert (= bs!589282 (and d!1186890 d!1186786)))

(assert (=> bs!589282 (= (and (= (toChars!9181 (transformation!6822 (rule!9862 token!484))) (toChars!9181 (transformation!6822 (h!48326 rules!2999)))) (= (toValue!9322 (transformation!6822 (rule!9862 token!484))) (toValue!9322 (transformation!6822 (h!48326 rules!2999))))) (= lambda!127034 lambda!127029))))

(assert (=> d!1186890 true))

(assert (=> d!1186890 (< (dynLambda!18207 order!22493 (toChars!9181 (transformation!6822 (rule!9862 token!484)))) (dynLambda!18206 order!22491 lambda!127034))))

(assert (=> d!1186890 true))

(assert (=> d!1186890 (< (dynLambda!18204 order!22487 (toValue!9322 (transformation!6822 (rule!9862 token!484)))) (dynLambda!18206 order!22491 lambda!127034))))

(assert (=> d!1186890 (= (semiInverseModEq!2920 (toChars!9181 (transformation!6822 (rule!9862 token!484))) (toValue!9322 (transformation!6822 (rule!9862 token!484)))) (Forall!1471 lambda!127034))))

(declare-fun bs!589283 () Bool)

(assert (= bs!589283 d!1186890))

(declare-fun m!4594353 () Bool)

(assert (=> bs!589283 m!4594353))

(assert (=> d!1185964 d!1186890))

(declare-fun d!1186898 () Bool)

(declare-fun e!2486574 () Bool)

(assert (=> d!1186898 e!2486574))

(declare-fun res!1629705 () Bool)

(assert (=> d!1186898 (=> (not res!1629705) (not e!2486574))))

(declare-fun lt!1419034 () List!43028)

(assert (=> d!1186898 (= res!1629705 (= (content!6506 lt!1419034) ((_ map or) (content!6506 (t!332653 lt!1418251)) (content!6506 (_2!24163 (v!39601 lt!1418269))))))))

(declare-fun e!2486573 () List!43028)

(assert (=> d!1186898 (= lt!1419034 e!2486573)))

(declare-fun c!693391 () Bool)

(assert (=> d!1186898 (= c!693391 ((_ is Nil!42904) (t!332653 lt!1418251)))))

(assert (=> d!1186898 (= (++!11224 (t!332653 lt!1418251) (_2!24163 (v!39601 lt!1418269))) lt!1419034)))

(declare-fun b!4009689 () Bool)

(assert (=> b!4009689 (= e!2486573 (_2!24163 (v!39601 lt!1418269)))))

(declare-fun b!4009692 () Bool)

(assert (=> b!4009692 (= e!2486574 (or (not (= (_2!24163 (v!39601 lt!1418269)) Nil!42904)) (= lt!1419034 (t!332653 lt!1418251))))))

(declare-fun b!4009690 () Bool)

(assert (=> b!4009690 (= e!2486573 (Cons!42904 (h!48324 (t!332653 lt!1418251)) (++!11224 (t!332653 (t!332653 lt!1418251)) (_2!24163 (v!39601 lt!1418269)))))))

(declare-fun b!4009691 () Bool)

(declare-fun res!1629704 () Bool)

(assert (=> b!4009691 (=> (not res!1629704) (not e!2486574))))

(assert (=> b!4009691 (= res!1629704 (= (size!32079 lt!1419034) (+ (size!32079 (t!332653 lt!1418251)) (size!32079 (_2!24163 (v!39601 lt!1418269))))))))

(assert (= (and d!1186898 c!693391) b!4009689))

(assert (= (and d!1186898 (not c!693391)) b!4009690))

(assert (= (and d!1186898 res!1629705) b!4009691))

(assert (= (and b!4009691 res!1629704) b!4009692))

(declare-fun m!4594357 () Bool)

(assert (=> d!1186898 m!4594357))

(assert (=> d!1186898 m!4592651))

(assert (=> d!1186898 m!4592295))

(declare-fun m!4594359 () Bool)

(assert (=> b!4009690 m!4594359))

(declare-fun m!4594361 () Bool)

(assert (=> b!4009691 m!4594361))

(assert (=> b!4009691 m!4592327))

(assert (=> b!4009691 m!4592301))

(assert (=> b!4008394 d!1186898))

(declare-fun b!4009693 () Bool)

(declare-fun e!2486575 () Bool)

(assert (=> b!4009693 (= e!2486575 (matchR!5688 (regex!6822 (h!48326 rules!2999)) (_1!24165 (findLongestMatchInner!1355 (regex!6822 (h!48326 rules!2999)) Nil!42904 (size!32079 Nil!42904) lt!1418249 lt!1418249 (size!32079 lt!1418249)))))))

(declare-fun b!4009694 () Bool)

(declare-fun res!1629711 () Bool)

(declare-fun e!2486578 () Bool)

(assert (=> b!4009694 (=> (not res!1629711) (not e!2486578))))

(declare-fun lt!1419037 () Option!9236)

(assert (=> b!4009694 (= res!1629711 (= (value!215061 (_1!24163 (get!14100 lt!1419037))) (apply!10019 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1419037)))) (seqFromList!5047 (originalCharacters!7422 (_1!24163 (get!14100 lt!1419037)))))))))

(declare-fun b!4009695 () Bool)

(declare-fun e!2486577 () Option!9236)

(assert (=> b!4009695 (= e!2486577 None!9235)))

(declare-fun b!4009696 () Bool)

(declare-fun res!1629706 () Bool)

(assert (=> b!4009696 (=> (not res!1629706) (not e!2486578))))

(assert (=> b!4009696 (= res!1629706 (< (size!32079 (_2!24163 (get!14100 lt!1419037))) (size!32079 lt!1418249)))))

(declare-fun b!4009697 () Bool)

(assert (=> b!4009697 (= e!2486578 (= (size!32080 (_1!24163 (get!14100 lt!1419037))) (size!32079 (originalCharacters!7422 (_1!24163 (get!14100 lt!1419037))))))))

(declare-fun d!1186902 () Bool)

(declare-fun e!2486576 () Bool)

(assert (=> d!1186902 e!2486576))

(declare-fun res!1629709 () Bool)

(assert (=> d!1186902 (=> res!1629709 e!2486576)))

(assert (=> d!1186902 (= res!1629709 (isEmpty!25632 lt!1419037))))

(assert (=> d!1186902 (= lt!1419037 e!2486577)))

(declare-fun c!693392 () Bool)

(declare-fun lt!1419036 () tuple2!42062)

(assert (=> d!1186902 (= c!693392 (isEmpty!25634 (_1!24165 lt!1419036)))))

(assert (=> d!1186902 (= lt!1419036 (findLongestMatch!1268 (regex!6822 (h!48326 rules!2999)) lt!1418249))))

(assert (=> d!1186902 (ruleValid!2754 thiss!21717 (h!48326 rules!2999))))

(assert (=> d!1186902 (= (maxPrefixOneRule!2729 thiss!21717 (h!48326 rules!2999) lt!1418249) lt!1419037)))

(declare-fun b!4009698 () Bool)

(assert (=> b!4009698 (= e!2486577 (Some!9235 (tuple2!42059 (Token!12783 (apply!10019 (transformation!6822 (h!48326 rules!2999)) (seqFromList!5047 (_1!24165 lt!1419036))) (h!48326 rules!2999) (size!32082 (seqFromList!5047 (_1!24165 lt!1419036))) (_1!24165 lt!1419036)) (_2!24165 lt!1419036))))))

(declare-fun lt!1419035 () Unit!61905)

(assert (=> b!4009698 (= lt!1419035 (longestMatchIsAcceptedByMatchOrIsEmpty!1328 (regex!6822 (h!48326 rules!2999)) lt!1418249))))

(declare-fun res!1629708 () Bool)

(assert (=> b!4009698 (= res!1629708 (isEmpty!25634 (_1!24165 (findLongestMatchInner!1355 (regex!6822 (h!48326 rules!2999)) Nil!42904 (size!32079 Nil!42904) lt!1418249 lt!1418249 (size!32079 lt!1418249)))))))

(assert (=> b!4009698 (=> res!1629708 e!2486575)))

(assert (=> b!4009698 e!2486575))

(declare-fun lt!1419039 () Unit!61905)

(assert (=> b!4009698 (= lt!1419039 lt!1419035)))

(declare-fun lt!1419038 () Unit!61905)

(assert (=> b!4009698 (= lt!1419038 (lemmaSemiInverse!1875 (transformation!6822 (h!48326 rules!2999)) (seqFromList!5047 (_1!24165 lt!1419036))))))

(declare-fun b!4009699 () Bool)

(declare-fun res!1629710 () Bool)

(assert (=> b!4009699 (=> (not res!1629710) (not e!2486578))))

(assert (=> b!4009699 (= res!1629710 (= (++!11224 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1419037)))) (_2!24163 (get!14100 lt!1419037))) lt!1418249))))

(declare-fun b!4009700 () Bool)

(assert (=> b!4009700 (= e!2486576 e!2486578)))

(declare-fun res!1629707 () Bool)

(assert (=> b!4009700 (=> (not res!1629707) (not e!2486578))))

(assert (=> b!4009700 (= res!1629707 (matchR!5688 (regex!6822 (h!48326 rules!2999)) (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1419037))))))))

(declare-fun b!4009701 () Bool)

(declare-fun res!1629712 () Bool)

(assert (=> b!4009701 (=> (not res!1629712) (not e!2486578))))

(assert (=> b!4009701 (= res!1629712 (= (rule!9862 (_1!24163 (get!14100 lt!1419037))) (h!48326 rules!2999)))))

(assert (= (and d!1186902 c!693392) b!4009695))

(assert (= (and d!1186902 (not c!693392)) b!4009698))

(assert (= (and b!4009698 (not res!1629708)) b!4009693))

(assert (= (and d!1186902 (not res!1629709)) b!4009700))

(assert (= (and b!4009700 res!1629707) b!4009699))

(assert (= (and b!4009699 res!1629710) b!4009696))

(assert (= (and b!4009696 res!1629706) b!4009701))

(assert (= (and b!4009701 res!1629712) b!4009694))

(assert (= (and b!4009694 res!1629711) b!4009697))

(declare-fun m!4594363 () Bool)

(assert (=> b!4009700 m!4594363))

(declare-fun m!4594365 () Bool)

(assert (=> b!4009700 m!4594365))

(assert (=> b!4009700 m!4594365))

(declare-fun m!4594367 () Bool)

(assert (=> b!4009700 m!4594367))

(assert (=> b!4009700 m!4594367))

(declare-fun m!4594369 () Bool)

(assert (=> b!4009700 m!4594369))

(assert (=> b!4009699 m!4594363))

(assert (=> b!4009699 m!4594365))

(assert (=> b!4009699 m!4594365))

(assert (=> b!4009699 m!4594367))

(assert (=> b!4009699 m!4594367))

(declare-fun m!4594373 () Bool)

(assert (=> b!4009699 m!4594373))

(declare-fun m!4594375 () Bool)

(assert (=> d!1186902 m!4594375))

(declare-fun m!4594377 () Bool)

(assert (=> d!1186902 m!4594377))

(declare-fun m!4594379 () Bool)

(assert (=> d!1186902 m!4594379))

(assert (=> d!1186902 m!4592831))

(assert (=> b!4009694 m!4594363))

(declare-fun m!4594381 () Bool)

(assert (=> b!4009694 m!4594381))

(assert (=> b!4009694 m!4594381))

(declare-fun m!4594383 () Bool)

(assert (=> b!4009694 m!4594383))

(assert (=> b!4009701 m!4594363))

(assert (=> b!4009693 m!4592077))

(assert (=> b!4009693 m!4592211))

(assert (=> b!4009693 m!4592077))

(assert (=> b!4009693 m!4592211))

(declare-fun m!4594385 () Bool)

(assert (=> b!4009693 m!4594385))

(declare-fun m!4594387 () Bool)

(assert (=> b!4009693 m!4594387))

(assert (=> b!4009697 m!4594363))

(declare-fun m!4594389 () Bool)

(assert (=> b!4009697 m!4594389))

(assert (=> b!4009698 m!4592077))

(assert (=> b!4009698 m!4592211))

(assert (=> b!4009698 m!4594385))

(assert (=> b!4009698 m!4592211))

(declare-fun m!4594391 () Bool)

(assert (=> b!4009698 m!4594391))

(declare-fun m!4594393 () Bool)

(assert (=> b!4009698 m!4594393))

(assert (=> b!4009698 m!4594391))

(declare-fun m!4594395 () Bool)

(assert (=> b!4009698 m!4594395))

(assert (=> b!4009698 m!4594391))

(declare-fun m!4594397 () Bool)

(assert (=> b!4009698 m!4594397))

(assert (=> b!4009698 m!4592077))

(declare-fun m!4594399 () Bool)

(assert (=> b!4009698 m!4594399))

(assert (=> b!4009698 m!4594391))

(declare-fun m!4594401 () Bool)

(assert (=> b!4009698 m!4594401))

(assert (=> b!4009696 m!4594363))

(declare-fun m!4594403 () Bool)

(assert (=> b!4009696 m!4594403))

(assert (=> b!4009696 m!4592211))

(assert (=> bm!286230 d!1186902))

(declare-fun d!1186906 () Bool)

(declare-fun e!2486588 () Bool)

(assert (=> d!1186906 e!2486588))

(declare-fun res!1629722 () Bool)

(assert (=> d!1186906 (=> (not res!1629722) (not e!2486588))))

(declare-fun lt!1419049 () BalanceConc!25660)

(assert (=> d!1186906 (= res!1629722 (= (list!15942 lt!1419049) lt!1418251))))

(declare-fun fromList!843 (List!43028) Conc!13033)

(assert (=> d!1186906 (= lt!1419049 (BalanceConc!25661 (fromList!843 lt!1418251)))))

(assert (=> d!1186906 (= (fromListB!2312 lt!1418251) lt!1419049)))

(declare-fun b!4009715 () Bool)

(assert (=> b!4009715 (= e!2486588 (isBalanced!3660 (fromList!843 lt!1418251)))))

(assert (= (and d!1186906 res!1629722) b!4009715))

(declare-fun m!4594427 () Bool)

(assert (=> d!1186906 m!4594427))

(declare-fun m!4594429 () Bool)

(assert (=> d!1186906 m!4594429))

(assert (=> b!4009715 m!4594429))

(assert (=> b!4009715 m!4594429))

(declare-fun m!4594431 () Bool)

(assert (=> b!4009715 m!4594431))

(assert (=> d!1186004 d!1186906))

(declare-fun d!1186930 () Bool)

(declare-fun lt!1419052 () Int)

(assert (=> d!1186930 (>= lt!1419052 0)))

(declare-fun e!2486590 () Int)

(assert (=> d!1186930 (= lt!1419052 e!2486590)))

(declare-fun c!693397 () Bool)

(assert (=> d!1186930 (= c!693397 ((_ is Nil!42904) lt!1418516))))

(assert (=> d!1186930 (= (size!32079 lt!1418516) lt!1419052)))

(declare-fun b!4009718 () Bool)

(assert (=> b!4009718 (= e!2486590 0)))

(declare-fun b!4009719 () Bool)

(assert (=> b!4009719 (= e!2486590 (+ 1 (size!32079 (t!332653 lt!1418516))))))

(assert (= (and d!1186930 c!693397) b!4009718))

(assert (= (and d!1186930 (not c!693397)) b!4009719))

(declare-fun m!4594435 () Bool)

(assert (=> b!4009719 m!4594435))

(assert (=> b!4008512 d!1186930))

(assert (=> b!4008512 d!1185984))

(declare-fun d!1186934 () Bool)

(declare-fun lt!1419054 () Int)

(assert (=> d!1186934 (>= lt!1419054 0)))

(declare-fun e!2486592 () Int)

(assert (=> d!1186934 (= lt!1419054 e!2486592)))

(declare-fun c!693399 () Bool)

(assert (=> d!1186934 (= c!693399 ((_ is Nil!42904) lt!1418244))))

(assert (=> d!1186934 (= (size!32079 lt!1418244) lt!1419054)))

(declare-fun b!4009722 () Bool)

(assert (=> b!4009722 (= e!2486592 0)))

(declare-fun b!4009723 () Bool)

(assert (=> b!4009723 (= e!2486592 (+ 1 (size!32079 (t!332653 lt!1418244))))))

(assert (= (and d!1186934 c!693399) b!4009722))

(assert (= (and d!1186934 (not c!693399)) b!4009723))

(declare-fun m!4594439 () Bool)

(assert (=> b!4009723 m!4594439))

(assert (=> b!4008512 d!1186934))

(declare-fun d!1186938 () Bool)

(declare-fun e!2486595 () Bool)

(assert (=> d!1186938 e!2486595))

(declare-fun res!1629724 () Bool)

(assert (=> d!1186938 (=> (not res!1629724) (not e!2486595))))

(declare-fun lt!1419056 () List!43028)

(assert (=> d!1186938 (= res!1629724 (= (content!6506 lt!1419056) ((_ map or) (content!6506 (t!332653 lt!1418268)) (content!6506 suffix!1299))))))

(declare-fun e!2486594 () List!43028)

(assert (=> d!1186938 (= lt!1419056 e!2486594)))

(declare-fun c!693401 () Bool)

(assert (=> d!1186938 (= c!693401 ((_ is Nil!42904) (t!332653 lt!1418268)))))

(assert (=> d!1186938 (= (++!11224 (t!332653 lt!1418268) suffix!1299) lt!1419056)))

(declare-fun b!4009726 () Bool)

(assert (=> b!4009726 (= e!2486594 suffix!1299)))

(declare-fun b!4009729 () Bool)

(assert (=> b!4009729 (= e!2486595 (or (not (= suffix!1299 Nil!42904)) (= lt!1419056 (t!332653 lt!1418268))))))

(declare-fun b!4009727 () Bool)

(assert (=> b!4009727 (= e!2486594 (Cons!42904 (h!48324 (t!332653 lt!1418268)) (++!11224 (t!332653 (t!332653 lt!1418268)) suffix!1299)))))

(declare-fun b!4009728 () Bool)

(declare-fun res!1629723 () Bool)

(assert (=> b!4009728 (=> (not res!1629723) (not e!2486595))))

(assert (=> b!4009728 (= res!1629723 (= (size!32079 lt!1419056) (+ (size!32079 (t!332653 lt!1418268)) (size!32079 suffix!1299))))))

(assert (= (and d!1186938 c!693401) b!4009726))

(assert (= (and d!1186938 (not c!693401)) b!4009727))

(assert (= (and d!1186938 res!1629724) b!4009728))

(assert (= (and b!4009728 res!1629723) b!4009729))

(declare-fun m!4594443 () Bool)

(assert (=> d!1186938 m!4594443))

(declare-fun m!4594445 () Bool)

(assert (=> d!1186938 m!4594445))

(assert (=> d!1186938 m!4591689))

(declare-fun m!4594447 () Bool)

(assert (=> b!4009727 m!4594447))

(declare-fun m!4594449 () Bool)

(assert (=> b!4009728 m!4594449))

(assert (=> b!4009728 m!4592533))

(assert (=> b!4009728 m!4591549))

(assert (=> b!4008515 d!1186938))

(declare-fun d!1186942 () Bool)

(declare-fun c!693403 () Bool)

(assert (=> d!1186942 (= c!693403 ((_ is Nil!42904) lt!1418502))))

(declare-fun e!2486598 () (InoxSet C!23640))

(assert (=> d!1186942 (= (content!6506 lt!1418502) e!2486598)))

(declare-fun b!4009734 () Bool)

(assert (=> b!4009734 (= e!2486598 ((as const (Array C!23640 Bool)) false))))

(declare-fun b!4009735 () Bool)

(assert (=> b!4009735 (= e!2486598 ((_ map or) (store ((as const (Array C!23640 Bool)) false) (h!48324 lt!1418502) true) (content!6506 (t!332653 lt!1418502))))))

(assert (= (and d!1186942 c!693403) b!4009734))

(assert (= (and d!1186942 (not c!693403)) b!4009735))

(declare-fun m!4594457 () Bool)

(assert (=> b!4009735 m!4594457))

(declare-fun m!4594459 () Bool)

(assert (=> b!4009735 m!4594459))

(assert (=> d!1186058 d!1186942))

(assert (=> d!1186058 d!1186138))

(declare-fun d!1186946 () Bool)

(declare-fun c!693404 () Bool)

(assert (=> d!1186946 (= c!693404 ((_ is Nil!42904) lt!1418275))))

(declare-fun e!2486602 () (InoxSet C!23640))

(assert (=> d!1186946 (= (content!6506 lt!1418275) e!2486602)))

(declare-fun b!4009739 () Bool)

(assert (=> b!4009739 (= e!2486602 ((as const (Array C!23640 Bool)) false))))

(declare-fun b!4009741 () Bool)

(assert (=> b!4009741 (= e!2486602 ((_ map or) (store ((as const (Array C!23640 Bool)) false) (h!48324 lt!1418275) true) (content!6506 (t!332653 lt!1418275))))))

(assert (= (and d!1186946 c!693404) b!4009739))

(assert (= (and d!1186946 (not c!693404)) b!4009741))

(declare-fun m!4594461 () Bool)

(assert (=> b!4009741 m!4594461))

(declare-fun m!4594463 () Bool)

(assert (=> b!4009741 m!4594463))

(assert (=> d!1186058 d!1186946))

(assert (=> d!1185832 d!1186890))

(declare-fun d!1186948 () Bool)

(assert (=> d!1186948 (= (list!15942 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 token!484))) (value!215061 token!484))) (list!15944 (c!692980 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 token!484))) (value!215061 token!484)))))))

(declare-fun bs!589292 () Bool)

(assert (= bs!589292 d!1186948))

(declare-fun m!4594471 () Bool)

(assert (=> bs!589292 m!4594471))

(assert (=> b!4008097 d!1186948))

(declare-fun d!1186950 () Bool)

(declare-fun e!2486604 () Bool)

(assert (=> d!1186950 e!2486604))

(declare-fun res!1629732 () Bool)

(assert (=> d!1186950 (=> (not res!1629732) (not e!2486604))))

(declare-fun lt!1419059 () List!43028)

(assert (=> d!1186950 (= res!1629732 (= (content!6506 lt!1419059) ((_ map or) (content!6506 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418426))))) (content!6506 (_2!24163 (get!14100 lt!1418426))))))))

(declare-fun e!2486603 () List!43028)

(assert (=> d!1186950 (= lt!1419059 e!2486603)))

(declare-fun c!693405 () Bool)

(assert (=> d!1186950 (= c!693405 ((_ is Nil!42904) (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418426))))))))

(assert (=> d!1186950 (= (++!11224 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418426)))) (_2!24163 (get!14100 lt!1418426))) lt!1419059)))

(declare-fun b!4009742 () Bool)

(assert (=> b!4009742 (= e!2486603 (_2!24163 (get!14100 lt!1418426)))))

(declare-fun b!4009745 () Bool)

(assert (=> b!4009745 (= e!2486604 (or (not (= (_2!24163 (get!14100 lt!1418426)) Nil!42904)) (= lt!1419059 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418426)))))))))

(declare-fun b!4009743 () Bool)

(assert (=> b!4009743 (= e!2486603 (Cons!42904 (h!48324 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418426))))) (++!11224 (t!332653 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418426))))) (_2!24163 (get!14100 lt!1418426)))))))

(declare-fun b!4009744 () Bool)

(declare-fun res!1629731 () Bool)

(assert (=> b!4009744 (=> (not res!1629731) (not e!2486604))))

(assert (=> b!4009744 (= res!1629731 (= (size!32079 lt!1419059) (+ (size!32079 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418426))))) (size!32079 (_2!24163 (get!14100 lt!1418426))))))))

(assert (= (and d!1186950 c!693405) b!4009742))

(assert (= (and d!1186950 (not c!693405)) b!4009743))

(assert (= (and d!1186950 res!1629732) b!4009744))

(assert (= (and b!4009744 res!1629731) b!4009745))

(declare-fun m!4594475 () Bool)

(assert (=> d!1186950 m!4594475))

(assert (=> d!1186950 m!4592061))

(declare-fun m!4594477 () Bool)

(assert (=> d!1186950 m!4594477))

(declare-fun m!4594479 () Bool)

(assert (=> d!1186950 m!4594479))

(declare-fun m!4594481 () Bool)

(assert (=> b!4009743 m!4594481))

(declare-fun m!4594485 () Bool)

(assert (=> b!4009744 m!4594485))

(assert (=> b!4009744 m!4592061))

(declare-fun m!4594491 () Bool)

(assert (=> b!4009744 m!4594491))

(assert (=> b!4009744 m!4592097))

(assert (=> b!4008247 d!1186950))

(assert (=> b!4008247 d!1186130))

(assert (=> b!4008247 d!1186132))

(assert (=> b!4008247 d!1186134))

(assert (=> d!1186012 d!1186022))

(assert (=> d!1186012 d!1186016))

(declare-fun d!1186958 () Bool)

(assert (=> d!1186958 (isPrefix!3909 lt!1418251 (++!11224 lt!1418251 newSuffixResult!27))))

(assert (=> d!1186958 true))

(declare-fun _$46!1657 () Unit!61905)

(assert (=> d!1186958 (= (choose!24205 lt!1418251 newSuffixResult!27) _$46!1657)))

(declare-fun bs!589293 () Bool)

(assert (= bs!589293 d!1186958))

(assert (=> bs!589293 m!4591539))

(assert (=> bs!589293 m!4591539))

(assert (=> bs!589293 m!4591541))

(assert (=> d!1186012 d!1186958))

(declare-fun b!4009753 () Bool)

(declare-fun e!2486614 () Bool)

(assert (=> b!4009753 (= e!2486614 (not (= (head!8515 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418483))))) (c!692981 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))))))))

(declare-fun bm!286362 () Bool)

(declare-fun call!286367 () Bool)

(assert (=> bm!286362 (= call!286367 (isEmpty!25634 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418483))))))))

(declare-fun b!4009754 () Bool)

(declare-fun e!2486609 () Bool)

(assert (=> b!4009754 (= e!2486609 (nullable!4114 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))))))

(declare-fun b!4009755 () Bool)

(declare-fun res!1629738 () Bool)

(declare-fun e!2486610 () Bool)

(assert (=> b!4009755 (=> (not res!1629738) (not e!2486610))))

(assert (=> b!4009755 (= res!1629738 (not call!286367))))

(declare-fun d!1186960 () Bool)

(declare-fun e!2486612 () Bool)

(assert (=> d!1186960 e!2486612))

(declare-fun c!693409 () Bool)

(assert (=> d!1186960 (= c!693409 ((_ is EmptyExpr!11727) (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))))))

(declare-fun lt!1419061 () Bool)

(assert (=> d!1186960 (= lt!1419061 e!2486609)))

(declare-fun c!693411 () Bool)

(assert (=> d!1186960 (= c!693411 (isEmpty!25634 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418483))))))))

(assert (=> d!1186960 (validRegex!5314 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))))

(assert (=> d!1186960 (= (matchR!5688 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))) (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418483))))) lt!1419061)))

(declare-fun b!4009756 () Bool)

(assert (=> b!4009756 (= e!2486609 (matchR!5688 (derivativeStep!3523 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))) (head!8515 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418483)))))) (tail!6247 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418483)))))))))

(declare-fun b!4009757 () Bool)

(declare-fun res!1629741 () Bool)

(assert (=> b!4009757 (=> (not res!1629741) (not e!2486610))))

(assert (=> b!4009757 (= res!1629741 (isEmpty!25634 (tail!6247 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418483)))))))))

(declare-fun b!4009758 () Bool)

(declare-fun res!1629740 () Bool)

(assert (=> b!4009758 (=> res!1629740 e!2486614)))

(assert (=> b!4009758 (= res!1629740 (not (isEmpty!25634 (tail!6247 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418483))))))))))

(declare-fun b!4009759 () Bool)

(declare-fun e!2486613 () Bool)

(assert (=> b!4009759 (= e!2486613 e!2486614)))

(declare-fun res!1629736 () Bool)

(assert (=> b!4009759 (=> res!1629736 e!2486614)))

(assert (=> b!4009759 (= res!1629736 call!286367)))

(declare-fun b!4009760 () Bool)

(assert (=> b!4009760 (= e!2486610 (= (head!8515 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1418483))))) (c!692981 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))))))

(declare-fun b!4009761 () Bool)

(declare-fun e!2486615 () Bool)

(assert (=> b!4009761 (= e!2486615 e!2486613)))

(declare-fun res!1629735 () Bool)

(assert (=> b!4009761 (=> (not res!1629735) (not e!2486613))))

(assert (=> b!4009761 (= res!1629735 (not lt!1419061))))

(declare-fun b!4009762 () Bool)

(declare-fun e!2486611 () Bool)

(assert (=> b!4009762 (= e!2486611 (not lt!1419061))))

(declare-fun b!4009763 () Bool)

(assert (=> b!4009763 (= e!2486612 (= lt!1419061 call!286367))))

(declare-fun b!4009764 () Bool)

(declare-fun res!1629739 () Bool)

(assert (=> b!4009764 (=> res!1629739 e!2486615)))

(assert (=> b!4009764 (= res!1629739 e!2486610)))

(declare-fun res!1629734 () Bool)

(assert (=> b!4009764 (=> (not res!1629734) (not e!2486610))))

(assert (=> b!4009764 (= res!1629734 lt!1419061)))

(declare-fun b!4009765 () Bool)

(assert (=> b!4009765 (= e!2486612 e!2486611)))

(declare-fun c!693410 () Bool)

(assert (=> b!4009765 (= c!693410 ((_ is EmptyLang!11727) (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))))))

(declare-fun b!4009766 () Bool)

(declare-fun res!1629737 () Bool)

(assert (=> b!4009766 (=> res!1629737 e!2486615)))

(assert (=> b!4009766 (= res!1629737 (not ((_ is ElementMatch!11727) (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))))))

(assert (=> b!4009766 (= e!2486611 e!2486615)))

(assert (= (and d!1186960 c!693411) b!4009754))

(assert (= (and d!1186960 (not c!693411)) b!4009756))

(assert (= (and d!1186960 c!693409) b!4009763))

(assert (= (and d!1186960 (not c!693409)) b!4009765))

(assert (= (and b!4009765 c!693410) b!4009762))

(assert (= (and b!4009765 (not c!693410)) b!4009766))

(assert (= (and b!4009766 (not res!1629737)) b!4009764))

(assert (= (and b!4009764 res!1629734) b!4009755))

(assert (= (and b!4009755 res!1629738) b!4009757))

(assert (= (and b!4009757 res!1629741) b!4009760))

(assert (= (and b!4009764 (not res!1629739)) b!4009761))

(assert (= (and b!4009761 res!1629735) b!4009759))

(assert (= (and b!4009759 (not res!1629736)) b!4009758))

(assert (= (and b!4009758 (not res!1629740)) b!4009753))

(assert (= (or b!4009763 b!4009755 b!4009759) bm!286362))

(assert (=> d!1186960 m!4592349))

(declare-fun m!4594495 () Bool)

(assert (=> d!1186960 m!4594495))

(assert (=> d!1186960 m!4592269))

(assert (=> b!4009760 m!4592349))

(declare-fun m!4594497 () Bool)

(assert (=> b!4009760 m!4594497))

(assert (=> b!4009758 m!4592349))

(declare-fun m!4594499 () Bool)

(assert (=> b!4009758 m!4594499))

(assert (=> b!4009758 m!4594499))

(declare-fun m!4594501 () Bool)

(assert (=> b!4009758 m!4594501))

(assert (=> b!4009757 m!4592349))

(assert (=> b!4009757 m!4594499))

(assert (=> b!4009757 m!4594499))

(assert (=> b!4009757 m!4594501))

(assert (=> b!4009754 m!4592271))

(assert (=> b!4009753 m!4592349))

(assert (=> b!4009753 m!4594497))

(assert (=> bm!286362 m!4592349))

(assert (=> bm!286362 m!4594495))

(assert (=> b!4009756 m!4592349))

(assert (=> b!4009756 m!4594497))

(assert (=> b!4009756 m!4594497))

(declare-fun m!4594503 () Bool)

(assert (=> b!4009756 m!4594503))

(assert (=> b!4009756 m!4592349))

(assert (=> b!4009756 m!4594499))

(assert (=> b!4009756 m!4594503))

(assert (=> b!4009756 m!4594499))

(declare-fun m!4594505 () Bool)

(assert (=> b!4009756 m!4594505))

(assert (=> b!4008419 d!1186960))

(assert (=> b!4008419 d!1186718))

(assert (=> b!4008419 d!1186722))

(assert (=> b!4008419 d!1186142))

(declare-fun d!1186962 () Bool)

(declare-fun lt!1419062 () Int)

(assert (=> d!1186962 (>= lt!1419062 0)))

(declare-fun e!2486620 () Int)

(assert (=> d!1186962 (= lt!1419062 e!2486620)))

(declare-fun c!693412 () Bool)

(assert (=> d!1186962 (= c!693412 ((_ is Nil!42904) lt!1418284))))

(assert (=> d!1186962 (= (size!32079 lt!1418284) lt!1419062)))

(declare-fun b!4009775 () Bool)

(assert (=> b!4009775 (= e!2486620 0)))

(declare-fun b!4009776 () Bool)

(assert (=> b!4009776 (= e!2486620 (+ 1 (size!32079 (t!332653 lt!1418284))))))

(assert (= (and d!1186962 c!693412) b!4009775))

(assert (= (and d!1186962 (not c!693412)) b!4009776))

(declare-fun m!4594507 () Bool)

(assert (=> b!4009776 m!4594507))

(assert (=> b!4008436 d!1186962))

(assert (=> b!4008436 d!1185984))

(declare-fun d!1186964 () Bool)

(assert (=> d!1186964 (= (isDefined!7065 lt!1418457) (not (isEmpty!25632 lt!1418457)))))

(declare-fun bs!589294 () Bool)

(assert (= bs!589294 d!1186964))

(assert (=> bs!589294 m!4592201))

(assert (=> b!4008365 d!1186964))

(declare-fun d!1186966 () Bool)

(assert (=> d!1186966 (= (isEmpty!25632 lt!1418457) (not ((_ is Some!9235) lt!1418457)))))

(assert (=> d!1185972 d!1186966))

(declare-fun d!1186968 () Bool)

(declare-fun e!2486623 () Bool)

(assert (=> d!1186968 e!2486623))

(declare-fun res!1629742 () Bool)

(assert (=> d!1186968 (=> res!1629742 e!2486623)))

(declare-fun lt!1419063 () Bool)

(assert (=> d!1186968 (= res!1629742 (not lt!1419063))))

(declare-fun e!2486625 () Bool)

(assert (=> d!1186968 (= lt!1419063 e!2486625)))

(declare-fun res!1629744 () Bool)

(assert (=> d!1186968 (=> res!1629744 e!2486625)))

(assert (=> d!1186968 (= res!1629744 ((_ is Nil!42904) lt!1418249))))

(assert (=> d!1186968 (= (isPrefix!3909 lt!1418249 lt!1418249) lt!1419063)))

(declare-fun b!4009782 () Bool)

(declare-fun e!2486624 () Bool)

(assert (=> b!4009782 (= e!2486624 (isPrefix!3909 (tail!6247 lt!1418249) (tail!6247 lt!1418249)))))

(declare-fun b!4009781 () Bool)

(declare-fun res!1629743 () Bool)

(assert (=> b!4009781 (=> (not res!1629743) (not e!2486624))))

(assert (=> b!4009781 (= res!1629743 (= (head!8515 lt!1418249) (head!8515 lt!1418249)))))

(declare-fun b!4009783 () Bool)

(assert (=> b!4009783 (= e!2486623 (>= (size!32079 lt!1418249) (size!32079 lt!1418249)))))

(declare-fun b!4009780 () Bool)

(assert (=> b!4009780 (= e!2486625 e!2486624)))

(declare-fun res!1629745 () Bool)

(assert (=> b!4009780 (=> (not res!1629745) (not e!2486624))))

(assert (=> b!4009780 (= res!1629745 (not ((_ is Nil!42904) lt!1418249)))))

(assert (= (and d!1186968 (not res!1629744)) b!4009780))

(assert (= (and b!4009780 res!1629745) b!4009781))

(assert (= (and b!4009781 res!1629743) b!4009782))

(assert (= (and d!1186968 (not res!1629742)) b!4009783))

(assert (=> b!4009782 m!4592467))

(assert (=> b!4009782 m!4592467))

(assert (=> b!4009782 m!4592467))

(assert (=> b!4009782 m!4592467))

(declare-fun m!4594515 () Bool)

(assert (=> b!4009782 m!4594515))

(assert (=> b!4009781 m!4592471))

(assert (=> b!4009781 m!4592471))

(assert (=> b!4009783 m!4592211))

(assert (=> b!4009783 m!4592211))

(assert (=> d!1185972 d!1186968))

(declare-fun d!1186970 () Bool)

(assert (=> d!1186970 (isPrefix!3909 lt!1418249 lt!1418249)))

(declare-fun lt!1419064 () Unit!61905)

(assert (=> d!1186970 (= lt!1419064 (choose!24214 lt!1418249 lt!1418249))))

(assert (=> d!1186970 (= (lemmaIsPrefixRefl!2485 lt!1418249 lt!1418249) lt!1419064)))

(declare-fun bs!589295 () Bool)

(assert (= bs!589295 d!1186970))

(assert (=> bs!589295 m!4592203))

(declare-fun m!4594517 () Bool)

(assert (=> bs!589295 m!4594517))

(assert (=> d!1185972 d!1186970))

(assert (=> d!1185972 d!1186182))

(declare-fun d!1186972 () Bool)

(declare-fun c!693413 () Bool)

(assert (=> d!1186972 (= c!693413 ((_ is Nil!42904) lt!1418453))))

(declare-fun e!2486632 () (InoxSet C!23640))

(assert (=> d!1186972 (= (content!6506 lt!1418453) e!2486632)))

(declare-fun b!4009789 () Bool)

(assert (=> b!4009789 (= e!2486632 ((as const (Array C!23640 Bool)) false))))

(declare-fun b!4009790 () Bool)

(assert (=> b!4009790 (= e!2486632 ((_ map or) (store ((as const (Array C!23640 Bool)) false) (h!48324 lt!1418453) true) (content!6506 (t!332653 lt!1418453))))))

(assert (= (and d!1186972 c!693413) b!4009789))

(assert (= (and d!1186972 (not c!693413)) b!4009790))

(declare-fun m!4594519 () Bool)

(assert (=> b!4009790 m!4594519))

(declare-fun m!4594521 () Bool)

(assert (=> b!4009790 m!4594521))

(assert (=> d!1185968 d!1186972))

(assert (=> d!1185968 d!1186672))

(declare-fun d!1186974 () Bool)

(declare-fun c!693414 () Bool)

(assert (=> d!1186974 (= c!693414 ((_ is Nil!42904) newSuffix!27))))

(declare-fun e!2486633 () (InoxSet C!23640))

(assert (=> d!1186974 (= (content!6506 newSuffix!27) e!2486633)))

(declare-fun b!4009791 () Bool)

(assert (=> b!4009791 (= e!2486633 ((as const (Array C!23640 Bool)) false))))

(declare-fun b!4009792 () Bool)

(assert (=> b!4009792 (= e!2486633 ((_ map or) (store ((as const (Array C!23640 Bool)) false) (h!48324 newSuffix!27) true) (content!6506 (t!332653 newSuffix!27))))))

(assert (= (and d!1186974 c!693414) b!4009791))

(assert (= (and d!1186974 (not c!693414)) b!4009792))

(declare-fun m!4594523 () Bool)

(assert (=> b!4009792 m!4594523))

(declare-fun m!4594525 () Bool)

(assert (=> b!4009792 m!4594525))

(assert (=> d!1185968 d!1186974))

(assert (=> b!4008087 d!1186800))

(declare-fun d!1186976 () Bool)

(declare-fun lt!1419065 () Int)

(assert (=> d!1186976 (>= lt!1419065 0)))

(declare-fun e!2486634 () Int)

(assert (=> d!1186976 (= lt!1419065 e!2486634)))

(declare-fun c!693415 () Bool)

(assert (=> d!1186976 (= c!693415 ((_ is Nil!42904) (_2!24163 (get!14100 lt!1418483))))))

(assert (=> d!1186976 (= (size!32079 (_2!24163 (get!14100 lt!1418483))) lt!1419065)))

(declare-fun b!4009793 () Bool)

(assert (=> b!4009793 (= e!2486634 0)))

(declare-fun b!4009794 () Bool)

(assert (=> b!4009794 (= e!2486634 (+ 1 (size!32079 (t!332653 (_2!24163 (get!14100 lt!1418483))))))))

(assert (= (and d!1186976 c!693415) b!4009793))

(assert (= (and d!1186976 (not c!693415)) b!4009794))

(declare-fun m!4594527 () Bool)

(assert (=> b!4009794 m!4594527))

(assert (=> b!4008415 d!1186976))

(assert (=> b!4008415 d!1186142))

(assert (=> b!4008415 d!1186088))

(assert (=> b!4008338 d!1186496))

(declare-fun d!1186978 () Bool)

(assert (=> d!1186978 (= (isEmpty!25632 lt!1418483) (not ((_ is Some!9235) lt!1418483)))))

(assert (=> d!1186028 d!1186978))

(declare-fun d!1186980 () Bool)

(assert (=> d!1186980 (= (isEmpty!25634 (_1!24165 lt!1418482)) ((_ is Nil!42904) (_1!24165 lt!1418482)))))

(assert (=> d!1186028 d!1186980))

(declare-fun d!1186982 () Bool)

(declare-fun lt!1419071 () tuple2!42062)

(assert (=> d!1186982 (= (++!11224 (_1!24165 lt!1419071) (_2!24165 lt!1419071)) lt!1418249)))

(assert (=> d!1186982 (= lt!1419071 (findLongestMatchInner!1355 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))) Nil!42904 0 lt!1418249 lt!1418249 (sizeTr!259 lt!1418249 0)))))

(declare-fun lt!1419066 () Unit!61905)

(declare-fun lt!1419067 () Unit!61905)

(assert (=> d!1186982 (= lt!1419066 lt!1419067)))

(declare-fun lt!1419073 () List!43028)

(declare-fun lt!1419072 () Int)

(assert (=> d!1186982 (= (sizeTr!259 lt!1419073 lt!1419072) (+ (size!32079 lt!1419073) lt!1419072))))

(assert (=> d!1186982 (= lt!1419067 (lemmaSizeTrEqualsSize!258 lt!1419073 lt!1419072))))

(assert (=> d!1186982 (= lt!1419072 0)))

(assert (=> d!1186982 (= lt!1419073 Nil!42904)))

(declare-fun lt!1419068 () Unit!61905)

(declare-fun lt!1419069 () Unit!61905)

(assert (=> d!1186982 (= lt!1419068 lt!1419069)))

(declare-fun lt!1419070 () Int)

(assert (=> d!1186982 (= (sizeTr!259 lt!1418249 lt!1419070) (+ (size!32079 lt!1418249) lt!1419070))))

(assert (=> d!1186982 (= lt!1419069 (lemmaSizeTrEqualsSize!258 lt!1418249 lt!1419070))))

(assert (=> d!1186982 (= lt!1419070 0)))

(assert (=> d!1186982 (validRegex!5314 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))))

(assert (=> d!1186982 (= (findLongestMatch!1268 (regex!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))) lt!1418249) lt!1419071)))

(declare-fun bs!589296 () Bool)

(assert (= bs!589296 d!1186982))

(declare-fun m!4594529 () Bool)

(assert (=> bs!589296 m!4594529))

(declare-fun m!4594531 () Bool)

(assert (=> bs!589296 m!4594531))

(declare-fun m!4594533 () Bool)

(assert (=> bs!589296 m!4594533))

(declare-fun m!4594535 () Bool)

(assert (=> bs!589296 m!4594535))

(declare-fun m!4594537 () Bool)

(assert (=> bs!589296 m!4594537))

(declare-fun m!4594539 () Bool)

(assert (=> bs!589296 m!4594539))

(assert (=> bs!589296 m!4594531))

(declare-fun m!4594541 () Bool)

(assert (=> bs!589296 m!4594541))

(assert (=> bs!589296 m!4592269))

(assert (=> bs!589296 m!4592211))

(declare-fun m!4594543 () Bool)

(assert (=> bs!589296 m!4594543))

(assert (=> d!1186028 d!1186982))

(assert (=> d!1186028 d!1185994))

(declare-fun d!1186984 () Bool)

(declare-fun lt!1419074 () Int)

(assert (=> d!1186984 (>= lt!1419074 0)))

(declare-fun e!2486635 () Int)

(assert (=> d!1186984 (= lt!1419074 e!2486635)))

(declare-fun c!693416 () Bool)

(assert (=> d!1186984 (= c!693416 ((_ is Nil!42904) lt!1418241))))

(assert (=> d!1186984 (= (size!32079 lt!1418241) lt!1419074)))

(declare-fun b!4009795 () Bool)

(assert (=> b!4009795 (= e!2486635 0)))

(declare-fun b!4009796 () Bool)

(assert (=> b!4009796 (= e!2486635 (+ 1 (size!32079 (t!332653 lt!1418241))))))

(assert (= (and d!1186984 c!693416) b!4009795))

(assert (= (and d!1186984 (not c!693416)) b!4009796))

(declare-fun m!4594545 () Bool)

(assert (=> b!4009796 m!4594545))

(assert (=> b!4008294 d!1186984))

(assert (=> b!4008294 d!1185984))

(declare-fun d!1186986 () Bool)

(declare-fun c!693417 () Bool)

(assert (=> d!1186986 (= c!693417 ((_ is Nil!42904) lt!1418473))))

(declare-fun e!2486636 () (InoxSet C!23640))

(assert (=> d!1186986 (= (content!6506 lt!1418473) e!2486636)))

(declare-fun b!4009797 () Bool)

(assert (=> b!4009797 (= e!2486636 ((as const (Array C!23640 Bool)) false))))

(declare-fun b!4009798 () Bool)

(assert (=> b!4009798 (= e!2486636 ((_ map or) (store ((as const (Array C!23640 Bool)) false) (h!48324 lt!1418473) true) (content!6506 (t!332653 lt!1418473))))))

(assert (= (and d!1186986 c!693417) b!4009797))

(assert (= (and d!1186986 (not c!693417)) b!4009798))

(declare-fun m!4594547 () Bool)

(assert (=> b!4009798 m!4594547))

(declare-fun m!4594549 () Bool)

(assert (=> b!4009798 m!4594549))

(assert (=> d!1186008 d!1186986))

(assert (=> d!1186008 d!1186338))

(declare-fun d!1186988 () Bool)

(declare-fun c!693418 () Bool)

(assert (=> d!1186988 (= c!693418 ((_ is Nil!42904) (_2!24163 (v!39601 lt!1418269))))))

(declare-fun e!2486637 () (InoxSet C!23640))

(assert (=> d!1186988 (= (content!6506 (_2!24163 (v!39601 lt!1418269))) e!2486637)))

(declare-fun b!4009799 () Bool)

(assert (=> b!4009799 (= e!2486637 ((as const (Array C!23640 Bool)) false))))

(declare-fun b!4009800 () Bool)

(assert (=> b!4009800 (= e!2486637 ((_ map or) (store ((as const (Array C!23640 Bool)) false) (h!48324 (_2!24163 (v!39601 lt!1418269))) true) (content!6506 (t!332653 (_2!24163 (v!39601 lt!1418269))))))))

(assert (= (and d!1186988 c!693418) b!4009799))

(assert (= (and d!1186988 (not c!693418)) b!4009800))

(declare-fun m!4594551 () Bool)

(assert (=> b!4009800 m!4594551))

(declare-fun m!4594553 () Bool)

(assert (=> b!4009800 m!4594553))

(assert (=> d!1186008 d!1186988))

(declare-fun d!1186990 () Bool)

(declare-fun c!693419 () Bool)

(assert (=> d!1186990 (= c!693419 ((_ is Nil!42904) lt!1418517))))

(declare-fun e!2486638 () (InoxSet C!23640))

(assert (=> d!1186990 (= (content!6506 lt!1418517) e!2486638)))

(declare-fun b!4009801 () Bool)

(assert (=> b!4009801 (= e!2486638 ((as const (Array C!23640 Bool)) false))))

(declare-fun b!4009802 () Bool)

(assert (=> b!4009802 (= e!2486638 ((_ map or) (store ((as const (Array C!23640 Bool)) false) (h!48324 lt!1418517) true) (content!6506 (t!332653 lt!1418517))))))

(assert (= (and d!1186990 c!693419) b!4009801))

(assert (= (and d!1186990 (not c!693419)) b!4009802))

(declare-fun m!4594557 () Bool)

(assert (=> b!4009802 m!4594557))

(declare-fun m!4594561 () Bool)

(assert (=> b!4009802 m!4594561))

(assert (=> d!1186076 d!1186990))

(declare-fun d!1186992 () Bool)

(declare-fun c!693420 () Bool)

(assert (=> d!1186992 (= c!693420 ((_ is Nil!42904) lt!1418268))))

(declare-fun e!2486640 () (InoxSet C!23640))

(assert (=> d!1186992 (= (content!6506 lt!1418268) e!2486640)))

(declare-fun b!4009805 () Bool)

(assert (=> b!4009805 (= e!2486640 ((as const (Array C!23640 Bool)) false))))

(declare-fun b!4009807 () Bool)

(assert (=> b!4009807 (= e!2486640 ((_ map or) (store ((as const (Array C!23640 Bool)) false) (h!48324 lt!1418268) true) (content!6506 (t!332653 lt!1418268))))))

(assert (= (and d!1186992 c!693420) b!4009805))

(assert (= (and d!1186992 (not c!693420)) b!4009807))

(declare-fun m!4594563 () Bool)

(assert (=> b!4009807 m!4594563))

(assert (=> b!4009807 m!4594445))

(assert (=> d!1186076 d!1186992))

(assert (=> d!1186076 d!1186178))

(declare-fun d!1186994 () Bool)

(declare-fun e!2486642 () Bool)

(assert (=> d!1186994 e!2486642))

(declare-fun res!1629746 () Bool)

(assert (=> d!1186994 (=> res!1629746 e!2486642)))

(declare-fun lt!1419075 () Bool)

(assert (=> d!1186994 (= res!1629746 (not lt!1419075))))

(declare-fun e!2486644 () Bool)

(assert (=> d!1186994 (= lt!1419075 e!2486644)))

(declare-fun res!1629748 () Bool)

(assert (=> d!1186994 (=> res!1629748 e!2486644)))

(assert (=> d!1186994 (= res!1629748 ((_ is Nil!42904) lt!1418254))))

(assert (=> d!1186994 (= (isPrefix!3909 lt!1418254 (++!11224 prefix!494 newSuffix!27)) lt!1419075)))

(declare-fun e!2486643 () Bool)

(declare-fun b!4009815 () Bool)

(assert (=> b!4009815 (= e!2486643 (isPrefix!3909 (tail!6247 lt!1418254) (tail!6247 (++!11224 prefix!494 newSuffix!27))))))

(declare-fun b!4009814 () Bool)

(declare-fun res!1629747 () Bool)

(assert (=> b!4009814 (=> (not res!1629747) (not e!2486643))))

(assert (=> b!4009814 (= res!1629747 (= (head!8515 lt!1418254) (head!8515 (++!11224 prefix!494 newSuffix!27))))))

(declare-fun b!4009816 () Bool)

(assert (=> b!4009816 (= e!2486642 (>= (size!32079 (++!11224 prefix!494 newSuffix!27)) (size!32079 lt!1418254)))))

(declare-fun b!4009813 () Bool)

(assert (=> b!4009813 (= e!2486644 e!2486643)))

(declare-fun res!1629749 () Bool)

(assert (=> b!4009813 (=> (not res!1629749) (not e!2486643))))

(assert (=> b!4009813 (= res!1629749 (not ((_ is Nil!42904) (++!11224 prefix!494 newSuffix!27))))))

(assert (= (and d!1186994 (not res!1629748)) b!4009813))

(assert (= (and b!4009813 res!1629749) b!4009814))

(assert (= (and b!4009814 res!1629747) b!4009815))

(assert (= (and d!1186994 (not res!1629746)) b!4009816))

(assert (=> b!4009815 m!4592151))

(assert (=> b!4009815 m!4591471))

(declare-fun m!4594565 () Bool)

(assert (=> b!4009815 m!4594565))

(assert (=> b!4009815 m!4592151))

(assert (=> b!4009815 m!4594565))

(declare-fun m!4594567 () Bool)

(assert (=> b!4009815 m!4594567))

(assert (=> b!4009814 m!4592157))

(assert (=> b!4009814 m!4591471))

(declare-fun m!4594569 () Bool)

(assert (=> b!4009814 m!4594569))

(assert (=> b!4009816 m!4591471))

(declare-fun m!4594571 () Bool)

(assert (=> b!4009816 m!4594571))

(assert (=> b!4009816 m!4591495))

(assert (=> d!1186070 d!1186994))

(assert (=> d!1186070 d!1185968))

(declare-fun d!1186996 () Bool)

(assert (=> d!1186996 (isPrefix!3909 lt!1418254 (++!11224 prefix!494 newSuffix!27))))

(assert (=> d!1186996 true))

(declare-fun _$58!530 () Unit!61905)

(assert (=> d!1186996 (= (choose!24215 lt!1418254 prefix!494 newSuffix!27) _$58!530)))

(declare-fun bs!589297 () Bool)

(assert (= bs!589297 d!1186996))

(assert (=> bs!589297 m!4591471))

(assert (=> bs!589297 m!4591471))

(assert (=> bs!589297 m!4592473))

(assert (=> d!1186070 d!1186996))

(assert (=> d!1186070 d!1186048))

(assert (=> d!1186050 d!1186048))

(declare-fun d!1186998 () Bool)

(assert (=> d!1186998 (isPrefix!3909 lt!1418254 prefix!494)))

(assert (=> d!1186998 true))

(declare-fun _$69!238 () Unit!61905)

(assert (=> d!1186998 (= (choose!24213 prefix!494 lt!1418254 lt!1418276) _$69!238)))

(declare-fun bs!589298 () Bool)

(assert (= bs!589298 d!1186998))

(assert (=> bs!589298 m!4591421))

(assert (=> d!1186050 d!1186998))

(assert (=> d!1186050 d!1186034))

(assert (=> b!4008029 d!1186094))

(declare-fun d!1187000 () Bool)

(assert (=> d!1187000 (= (apply!10019 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418330)))) (seqFromList!5047 (originalCharacters!7422 (_1!24163 (get!14100 lt!1418330))))) (dynLambda!18200 (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418330))))) (seqFromList!5047 (originalCharacters!7422 (_1!24163 (get!14100 lt!1418330))))))))

(declare-fun b_lambda!116997 () Bool)

(assert (=> (not b_lambda!116997) (not d!1187000)))

(declare-fun t!332879 () Bool)

(declare-fun tb!241099 () Bool)

(assert (=> (and b!4007875 (= (toValue!9322 (transformation!6822 (h!48326 rules!2999))) (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418330)))))) t!332879) tb!241099))

(declare-fun result!292210 () Bool)

(assert (=> tb!241099 (= result!292210 (inv!21 (dynLambda!18200 (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418330))))) (seqFromList!5047 (originalCharacters!7422 (_1!24163 (get!14100 lt!1418330)))))))))

(declare-fun m!4594579 () Bool)

(assert (=> tb!241099 m!4594579))

(assert (=> d!1187000 t!332879))

(declare-fun b_and!308037 () Bool)

(assert (= b_and!308027 (and (=> t!332879 result!292210) b_and!308037)))

(declare-fun t!332881 () Bool)

(declare-fun tb!241101 () Bool)

(assert (=> (and b!4007900 (= (toValue!9322 (transformation!6822 (rule!9862 token!484))) (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418330)))))) t!332881) tb!241101))

(declare-fun result!292212 () Bool)

(assert (= result!292212 result!292210))

(assert (=> d!1187000 t!332881))

(declare-fun b_and!308039 () Bool)

(assert (= b_and!308029 (and (=> t!332881 result!292212) b_and!308039)))

(declare-fun tb!241103 () Bool)

(declare-fun t!332883 () Bool)

(assert (=> (and b!4008556 (= (toValue!9322 (transformation!6822 (h!48326 (t!332655 rules!2999)))) (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418330)))))) t!332883) tb!241103))

(declare-fun result!292214 () Bool)

(assert (= result!292214 result!292210))

(assert (=> d!1187000 t!332883))

(declare-fun b_and!308041 () Bool)

(assert (= b_and!308031 (and (=> t!332883 result!292214) b_and!308041)))

(assert (=> d!1187000 m!4591673))

(declare-fun m!4594581 () Bool)

(assert (=> d!1187000 m!4594581))

(assert (=> b!4008029 d!1187000))

(declare-fun d!1187002 () Bool)

(assert (=> d!1187002 (= (seqFromList!5047 (originalCharacters!7422 (_1!24163 (get!14100 lt!1418330)))) (fromListB!2312 (originalCharacters!7422 (_1!24163 (get!14100 lt!1418330)))))))

(declare-fun bs!589299 () Bool)

(assert (= bs!589299 d!1187002))

(declare-fun m!4594583 () Bool)

(assert (=> bs!589299 m!4594583))

(assert (=> b!4008029 d!1187002))

(declare-fun d!1187004 () Bool)

(declare-fun e!2486661 () Bool)

(assert (=> d!1187004 e!2486661))

(declare-fun res!1629750 () Bool)

(assert (=> d!1187004 (=> (not res!1629750) (not e!2486661))))

(declare-fun lt!1419076 () BalanceConc!25660)

(assert (=> d!1187004 (= res!1629750 (= (list!15942 lt!1419076) lt!1418254))))

(assert (=> d!1187004 (= lt!1419076 (BalanceConc!25661 (fromList!843 lt!1418254)))))

(assert (=> d!1187004 (= (fromListB!2312 lt!1418254) lt!1419076)))

(declare-fun b!4009860 () Bool)

(assert (=> b!4009860 (= e!2486661 (isBalanced!3660 (fromList!843 lt!1418254)))))

(assert (= (and d!1187004 res!1629750) b!4009860))

(declare-fun m!4594585 () Bool)

(assert (=> d!1187004 m!4594585))

(declare-fun m!4594587 () Bool)

(assert (=> d!1187004 m!4594587))

(assert (=> b!4009860 m!4594587))

(assert (=> b!4009860 m!4594587))

(declare-fun m!4594589 () Bool)

(assert (=> b!4009860 m!4594589))

(assert (=> d!1185854 d!1187004))

(declare-fun d!1187006 () Bool)

(declare-fun lt!1419077 () Int)

(assert (=> d!1187006 (>= lt!1419077 0)))

(declare-fun e!2486662 () Int)

(assert (=> d!1187006 (= lt!1419077 e!2486662)))

(declare-fun c!693421 () Bool)

(assert (=> d!1187006 (= c!693421 ((_ is Nil!42904) lt!1418502))))

(assert (=> d!1187006 (= (size!32079 lt!1418502) lt!1419077)))

(declare-fun b!4009861 () Bool)

(assert (=> b!4009861 (= e!2486662 0)))

(declare-fun b!4009862 () Bool)

(assert (=> b!4009862 (= e!2486662 (+ 1 (size!32079 (t!332653 lt!1418502))))))

(assert (= (and d!1187006 c!693421) b!4009861))

(assert (= (and d!1187006 (not c!693421)) b!4009862))

(declare-fun m!4594591 () Bool)

(assert (=> b!4009862 m!4594591))

(assert (=> b!4008456 d!1187006))

(assert (=> b!4008456 d!1185984))

(declare-fun d!1187008 () Bool)

(declare-fun lt!1419078 () Int)

(assert (=> d!1187008 (>= lt!1419078 0)))

(declare-fun e!2486663 () Int)

(assert (=> d!1187008 (= lt!1419078 e!2486663)))

(declare-fun c!693422 () Bool)

(assert (=> d!1187008 (= c!693422 ((_ is Nil!42904) lt!1418275))))

(assert (=> d!1187008 (= (size!32079 lt!1418275) lt!1419078)))

(declare-fun b!4009863 () Bool)

(assert (=> b!4009863 (= e!2486663 0)))

(declare-fun b!4009864 () Bool)

(assert (=> b!4009864 (= e!2486663 (+ 1 (size!32079 (t!332653 lt!1418275))))))

(assert (= (and d!1187008 c!693422) b!4009863))

(assert (= (and d!1187008 (not c!693422)) b!4009864))

(declare-fun m!4594593 () Bool)

(assert (=> b!4009864 m!4594593))

(assert (=> b!4008456 d!1187008))

(declare-fun d!1187010 () Bool)

(declare-fun charsToInt!0 (List!43029) (_ BitVec 32))

(assert (=> d!1187010 (= (inv!16 (value!215061 token!484)) (= (charsToInt!0 (text!49811 (value!215061 token!484))) (value!215052 (value!215061 token!484))))))

(declare-fun bs!589300 () Bool)

(assert (= bs!589300 d!1187010))

(declare-fun m!4594595 () Bool)

(assert (=> bs!589300 m!4594595))

(assert (=> b!4008353 d!1187010))

(declare-fun b!4009865 () Bool)

(declare-fun res!1629752 () Bool)

(declare-fun e!2486665 () Bool)

(assert (=> b!4009865 (=> (not res!1629752) (not e!2486665))))

(declare-fun lt!1419081 () Option!9236)

(assert (=> b!4009865 (= res!1629752 (< (size!32079 (_2!24163 (get!14100 lt!1419081))) (size!32079 lt!1418276)))))

(declare-fun b!4009866 () Bool)

(declare-fun res!1629756 () Bool)

(assert (=> b!4009866 (=> (not res!1629756) (not e!2486665))))

(assert (=> b!4009866 (= res!1629756 (= (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1419081)))) (originalCharacters!7422 (_1!24163 (get!14100 lt!1419081)))))))

(declare-fun d!1187012 () Bool)

(declare-fun e!2486664 () Bool)

(assert (=> d!1187012 e!2486664))

(declare-fun res!1629753 () Bool)

(assert (=> d!1187012 (=> res!1629753 e!2486664)))

(assert (=> d!1187012 (= res!1629753 (isEmpty!25632 lt!1419081))))

(declare-fun e!2486666 () Option!9236)

(assert (=> d!1187012 (= lt!1419081 e!2486666)))

(declare-fun c!693423 () Bool)

(assert (=> d!1187012 (= c!693423 (and ((_ is Cons!42906) (t!332655 rules!2999)) ((_ is Nil!42906) (t!332655 (t!332655 rules!2999)))))))

(declare-fun lt!1419083 () Unit!61905)

(declare-fun lt!1419080 () Unit!61905)

(assert (=> d!1187012 (= lt!1419083 lt!1419080)))

(assert (=> d!1187012 (isPrefix!3909 lt!1418276 lt!1418276)))

(assert (=> d!1187012 (= lt!1419080 (lemmaIsPrefixRefl!2485 lt!1418276 lt!1418276))))

(assert (=> d!1187012 (rulesValidInductive!2486 thiss!21717 (t!332655 rules!2999))))

(assert (=> d!1187012 (= (maxPrefix!3709 thiss!21717 (t!332655 rules!2999) lt!1418276) lt!1419081)))

(declare-fun b!4009867 () Bool)

(declare-fun res!1629757 () Bool)

(assert (=> b!4009867 (=> (not res!1629757) (not e!2486665))))

(assert (=> b!4009867 (= res!1629757 (matchR!5688 (regex!6822 (rule!9862 (_1!24163 (get!14100 lt!1419081)))) (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1419081))))))))

(declare-fun b!4009868 () Bool)

(assert (=> b!4009868 (= e!2486664 e!2486665)))

(declare-fun res!1629754 () Bool)

(assert (=> b!4009868 (=> (not res!1629754) (not e!2486665))))

(assert (=> b!4009868 (= res!1629754 (isDefined!7065 lt!1419081))))

(declare-fun b!4009869 () Bool)

(declare-fun res!1629751 () Bool)

(assert (=> b!4009869 (=> (not res!1629751) (not e!2486665))))

(assert (=> b!4009869 (= res!1629751 (= (++!11224 (list!15942 (charsOf!4638 (_1!24163 (get!14100 lt!1419081)))) (_2!24163 (get!14100 lt!1419081))) lt!1418276))))

(declare-fun b!4009870 () Bool)

(declare-fun lt!1419082 () Option!9236)

(declare-fun lt!1419079 () Option!9236)

(assert (=> b!4009870 (= e!2486666 (ite (and ((_ is None!9235) lt!1419082) ((_ is None!9235) lt!1419079)) None!9235 (ite ((_ is None!9235) lt!1419079) lt!1419082 (ite ((_ is None!9235) lt!1419082) lt!1419079 (ite (>= (size!32080 (_1!24163 (v!39601 lt!1419082))) (size!32080 (_1!24163 (v!39601 lt!1419079)))) lt!1419082 lt!1419079)))))))

(declare-fun call!286368 () Option!9236)

(assert (=> b!4009870 (= lt!1419082 call!286368)))

(assert (=> b!4009870 (= lt!1419079 (maxPrefix!3709 thiss!21717 (t!332655 (t!332655 rules!2999)) lt!1418276))))

(declare-fun b!4009871 () Bool)

(assert (=> b!4009871 (= e!2486665 (contains!8529 (t!332655 rules!2999) (rule!9862 (_1!24163 (get!14100 lt!1419081)))))))

(declare-fun bm!286363 () Bool)

(assert (=> bm!286363 (= call!286368 (maxPrefixOneRule!2729 thiss!21717 (h!48326 (t!332655 rules!2999)) lt!1418276))))

(declare-fun b!4009872 () Bool)

(assert (=> b!4009872 (= e!2486666 call!286368)))

(declare-fun b!4009873 () Bool)

(declare-fun res!1629755 () Bool)

(assert (=> b!4009873 (=> (not res!1629755) (not e!2486665))))

(assert (=> b!4009873 (= res!1629755 (= (value!215061 (_1!24163 (get!14100 lt!1419081))) (apply!10019 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1419081)))) (seqFromList!5047 (originalCharacters!7422 (_1!24163 (get!14100 lt!1419081)))))))))

(assert (= (and d!1187012 c!693423) b!4009872))

(assert (= (and d!1187012 (not c!693423)) b!4009870))

(assert (= (or b!4009872 b!4009870) bm!286363))

(assert (= (and d!1187012 (not res!1629753)) b!4009868))

(assert (= (and b!4009868 res!1629754) b!4009866))

(assert (= (and b!4009866 res!1629756) b!4009865))

(assert (= (and b!4009865 res!1629752) b!4009869))

(assert (= (and b!4009869 res!1629751) b!4009873))

(assert (= (and b!4009873 res!1629755) b!4009867))

(assert (= (and b!4009867 res!1629757) b!4009871))

(declare-fun m!4594597 () Bool)

(assert (=> d!1187012 m!4594597))

(assert (=> d!1187012 m!4591409))

(assert (=> d!1187012 m!4591411))

(assert (=> d!1187012 m!4592833))

(declare-fun m!4594599 () Bool)

(assert (=> b!4009865 m!4594599))

(declare-fun m!4594601 () Bool)

(assert (=> b!4009865 m!4594601))

(assert (=> b!4009865 m!4591663))

(assert (=> b!4009871 m!4594599))

(declare-fun m!4594603 () Bool)

(assert (=> b!4009871 m!4594603))

(assert (=> b!4009869 m!4594599))

(declare-fun m!4594605 () Bool)

(assert (=> b!4009869 m!4594605))

(assert (=> b!4009869 m!4594605))

(declare-fun m!4594607 () Bool)

(assert (=> b!4009869 m!4594607))

(assert (=> b!4009869 m!4594607))

(declare-fun m!4594609 () Bool)

(assert (=> b!4009869 m!4594609))

(assert (=> b!4009866 m!4594599))

(assert (=> b!4009866 m!4594605))

(assert (=> b!4009866 m!4594605))

(assert (=> b!4009866 m!4594607))

(assert (=> b!4009873 m!4594599))

(declare-fun m!4594611 () Bool)

(assert (=> b!4009873 m!4594611))

(assert (=> b!4009873 m!4594611))

(declare-fun m!4594613 () Bool)

(assert (=> b!4009873 m!4594613))

(declare-fun m!4594615 () Bool)

(assert (=> b!4009868 m!4594615))

(declare-fun m!4594617 () Bool)

(assert (=> b!4009870 m!4594617))

(assert (=> b!4009867 m!4594599))

(assert (=> b!4009867 m!4594605))

(assert (=> b!4009867 m!4594605))

(assert (=> b!4009867 m!4594607))

(assert (=> b!4009867 m!4594607))

(declare-fun m!4594619 () Bool)

(assert (=> b!4009867 m!4594619))

(declare-fun m!4594621 () Bool)

(assert (=> bm!286363 m!4594621))

(assert (=> b!4008026 d!1187012))

(declare-fun bs!589301 () Bool)

(declare-fun d!1187014 () Bool)

(assert (= bs!589301 (and d!1187014 d!1186182)))

(declare-fun lambda!127041 () Int)

(assert (=> bs!589301 (= lambda!127041 lambda!127010)))

(assert (=> d!1187014 true))

(declare-fun lt!1419086 () Bool)

(assert (=> d!1187014 (= lt!1419086 (rulesValidInductive!2486 thiss!21717 rules!2999))))

(assert (=> d!1187014 (= lt!1419086 (forall!8349 rules!2999 lambda!127041))))

(assert (=> d!1187014 (= (rulesValid!2654 thiss!21717 rules!2999) lt!1419086)))

(declare-fun bs!589302 () Bool)

(assert (= bs!589302 d!1187014))

(assert (=> bs!589302 m!4591657))

(declare-fun m!4594623 () Bool)

(assert (=> bs!589302 m!4594623))

(assert (=> d!1185992 d!1187014))

(declare-fun d!1187016 () Bool)

(declare-fun lt!1419087 () List!43028)

(assert (=> d!1187016 (= (++!11224 (t!332653 lt!1418254) lt!1419087) (tail!6247 lt!1418276))))

(declare-fun e!2486667 () List!43028)

(assert (=> d!1187016 (= lt!1419087 e!2486667)))

(declare-fun c!693424 () Bool)

(assert (=> d!1187016 (= c!693424 ((_ is Cons!42904) (t!332653 lt!1418254)))))

(assert (=> d!1187016 (>= (size!32079 (tail!6247 lt!1418276)) (size!32079 (t!332653 lt!1418254)))))

(assert (=> d!1187016 (= (getSuffix!2334 (tail!6247 lt!1418276) (t!332653 lt!1418254)) lt!1419087)))

(declare-fun b!4009874 () Bool)

(assert (=> b!4009874 (= e!2486667 (getSuffix!2334 (tail!6247 (tail!6247 lt!1418276)) (t!332653 (t!332653 lt!1418254))))))

(declare-fun b!4009875 () Bool)

(assert (=> b!4009875 (= e!2486667 (tail!6247 lt!1418276))))

(assert (= (and d!1187016 c!693424) b!4009874))

(assert (= (and d!1187016 (not c!693424)) b!4009875))

(declare-fun m!4594625 () Bool)

(assert (=> d!1187016 m!4594625))

(assert (=> d!1187016 m!4592391))

(assert (=> d!1187016 m!4593163))

(assert (=> d!1187016 m!4592257))

(assert (=> b!4009874 m!4592391))

(assert (=> b!4009874 m!4593155))

(assert (=> b!4009874 m!4593155))

(declare-fun m!4594627 () Bool)

(assert (=> b!4009874 m!4594627))

(assert (=> b!4008458 d!1187016))

(assert (=> b!4008458 d!1186348))

(assert (=> b!4008426 d!1186644))

(assert (=> b!4008426 d!1186122))

(declare-fun d!1187018 () Bool)

(declare-fun lt!1419088 () Int)

(assert (=> d!1187018 (>= lt!1419088 0)))

(declare-fun e!2486668 () Int)

(assert (=> d!1187018 (= lt!1419088 e!2486668)))

(declare-fun c!693425 () Bool)

(assert (=> d!1187018 (= c!693425 ((_ is Nil!42904) lt!1418345))))

(assert (=> d!1187018 (= (size!32079 lt!1418345) lt!1419088)))

(declare-fun b!4009876 () Bool)

(assert (=> b!4009876 (= e!2486668 0)))

(declare-fun b!4009877 () Bool)

(assert (=> b!4009877 (= e!2486668 (+ 1 (size!32079 (t!332653 lt!1418345))))))

(assert (= (and d!1187018 c!693425) b!4009876))

(assert (= (and d!1187018 (not c!693425)) b!4009877))

(declare-fun m!4594629 () Bool)

(assert (=> b!4009877 m!4594629))

(assert (=> b!4008058 d!1187018))

(assert (=> b!4008058 d!1185986))

(assert (=> b!4008058 d!1186030))

(assert (=> d!1186006 d!1185994))

(declare-fun d!1187020 () Bool)

(assert (=> d!1187020 (ruleValid!2754 thiss!21717 (rule!9862 (_1!24163 (v!39601 lt!1418269))))))

(assert (=> d!1187020 true))

(declare-fun _$65!1442 () Unit!61905)

(assert (=> d!1187020 (= (choose!24204 thiss!21717 (rule!9862 (_1!24163 (v!39601 lt!1418269))) rules!2999) _$65!1442)))

(declare-fun bs!589303 () Bool)

(assert (= bs!589303 d!1187020))

(assert (=> bs!589303 m!4591517))

(assert (=> d!1186006 d!1187020))

(declare-fun d!1187022 () Bool)

(declare-fun lt!1419089 () Bool)

(assert (=> d!1187022 (= lt!1419089 (select (content!6507 rules!2999) (rule!9862 (_1!24163 (v!39601 lt!1418269)))))))

(declare-fun e!2486670 () Bool)

(assert (=> d!1187022 (= lt!1419089 e!2486670)))

(declare-fun res!1629759 () Bool)

(assert (=> d!1187022 (=> (not res!1629759) (not e!2486670))))

(assert (=> d!1187022 (= res!1629759 ((_ is Cons!42906) rules!2999))))

(assert (=> d!1187022 (= (contains!8529 rules!2999 (rule!9862 (_1!24163 (v!39601 lt!1418269)))) lt!1419089)))

(declare-fun b!4009878 () Bool)

(declare-fun e!2486669 () Bool)

(assert (=> b!4009878 (= e!2486670 e!2486669)))

(declare-fun res!1629758 () Bool)

(assert (=> b!4009878 (=> res!1629758 e!2486669)))

(assert (=> b!4009878 (= res!1629758 (= (h!48326 rules!2999) (rule!9862 (_1!24163 (v!39601 lt!1418269)))))))

(declare-fun b!4009879 () Bool)

(assert (=> b!4009879 (= e!2486669 (contains!8529 (t!332655 rules!2999) (rule!9862 (_1!24163 (v!39601 lt!1418269)))))))

(assert (= (and d!1187022 res!1629759) b!4009878))

(assert (= (and b!4009878 (not res!1629758)) b!4009879))

(assert (=> d!1187022 m!4593133))

(declare-fun m!4594631 () Bool)

(assert (=> d!1187022 m!4594631))

(declare-fun m!4594633 () Bool)

(assert (=> b!4009879 m!4594633))

(assert (=> d!1186006 d!1187022))

(assert (=> d!1185998 d!1186052))

(assert (=> b!4008450 d!1185986))

(assert (=> b!4008450 d!1185984))

(declare-fun d!1187024 () Bool)

(declare-fun lt!1419090 () Int)

(assert (=> d!1187024 (>= lt!1419090 0)))

(declare-fun e!2486671 () Int)

(assert (=> d!1187024 (= lt!1419090 e!2486671)))

(declare-fun c!693426 () Bool)

(assert (=> d!1187024 (= c!693426 ((_ is Nil!42904) lt!1418453))))

(assert (=> d!1187024 (= (size!32079 lt!1418453) lt!1419090)))

(declare-fun b!4009880 () Bool)

(assert (=> b!4009880 (= e!2486671 0)))

(declare-fun b!4009881 () Bool)

(assert (=> b!4009881 (= e!2486671 (+ 1 (size!32079 (t!332653 lt!1418453))))))

(assert (= (and d!1187024 c!693426) b!4009880))

(assert (= (and d!1187024 (not c!693426)) b!4009881))

(declare-fun m!4594635 () Bool)

(assert (=> b!4009881 m!4594635))

(assert (=> b!4008356 d!1187024))

(assert (=> b!4008356 d!1185986))

(assert (=> b!4008356 d!1186032))

(declare-fun d!1187026 () Bool)

(declare-fun e!2486673 () Bool)

(assert (=> d!1187026 e!2486673))

(declare-fun res!1629761 () Bool)

(assert (=> d!1187026 (=> (not res!1629761) (not e!2486673))))

(declare-fun lt!1419091 () List!43028)

(assert (=> d!1187026 (= res!1629761 (= (content!6506 lt!1419091) ((_ map or) (content!6506 (t!332653 lt!1418254)) (content!6506 suffixResult!105))))))

(declare-fun e!2486672 () List!43028)

(assert (=> d!1187026 (= lt!1419091 e!2486672)))

(declare-fun c!693427 () Bool)

(assert (=> d!1187026 (= c!693427 ((_ is Nil!42904) (t!332653 lt!1418254)))))

(assert (=> d!1187026 (= (++!11224 (t!332653 lt!1418254) suffixResult!105) lt!1419091)))

(declare-fun b!4009882 () Bool)

(assert (=> b!4009882 (= e!2486672 suffixResult!105)))

(declare-fun b!4009885 () Bool)

(assert (=> b!4009885 (= e!2486673 (or (not (= suffixResult!105 Nil!42904)) (= lt!1419091 (t!332653 lt!1418254))))))

(declare-fun b!4009883 () Bool)

(assert (=> b!4009883 (= e!2486672 (Cons!42904 (h!48324 (t!332653 lt!1418254)) (++!11224 (t!332653 (t!332653 lt!1418254)) suffixResult!105)))))

(declare-fun b!4009884 () Bool)

(declare-fun res!1629760 () Bool)

(assert (=> b!4009884 (=> (not res!1629760) (not e!2486673))))

(assert (=> b!4009884 (= res!1629760 (= (size!32079 lt!1419091) (+ (size!32079 (t!332653 lt!1418254)) (size!32079 suffixResult!105))))))

(assert (= (and d!1187026 c!693427) b!4009882))

(assert (= (and d!1187026 (not c!693427)) b!4009883))

(assert (= (and d!1187026 res!1629761) b!4009884))

(assert (= (and b!4009884 res!1629760) b!4009885))

(declare-fun m!4594637 () Bool)

(assert (=> d!1187026 m!4594637))

(assert (=> d!1187026 m!4592603))

(assert (=> d!1187026 m!4591699))

(declare-fun m!4594639 () Bool)

(assert (=> b!4009883 m!4594639))

(declare-fun m!4594641 () Bool)

(assert (=> b!4009884 m!4594641))

(assert (=> b!4009884 m!4592257))

(assert (=> b!4009884 m!4591705))

(assert (=> b!4008061 d!1187026))

(declare-fun d!1187028 () Bool)

(declare-fun charsToBigInt!1 (List!43029) Int)

(assert (=> d!1187028 (= (inv!17 (value!215061 token!484)) (= (charsToBigInt!1 (text!49812 (value!215061 token!484))) (value!215053 (value!215061 token!484))))))

(declare-fun bs!589304 () Bool)

(assert (= bs!589304 d!1187028))

(declare-fun m!4594643 () Bool)

(assert (=> bs!589304 m!4594643))

(assert (=> b!4008349 d!1187028))

(declare-fun b!4009888 () Bool)

(declare-fun b_free!111509 () Bool)

(declare-fun b_next!112213 () Bool)

(assert (=> b!4009888 (= b_free!111509 (not b_next!112213))))

(declare-fun t!332885 () Bool)

(declare-fun tb!241105 () Bool)

(assert (=> (and b!4009888 (= (toValue!9322 (transformation!6822 (h!48326 (t!332655 (t!332655 rules!2999))))) (toValue!9322 (transformation!6822 (rule!9862 token!484)))) t!332885) tb!241105))

(declare-fun result!292216 () Bool)

(assert (= result!292216 result!292152))

(assert (=> d!1186702 t!332885))

(declare-fun t!332887 () Bool)

(declare-fun tb!241107 () Bool)

(assert (=> (and b!4009888 (= (toValue!9322 (transformation!6822 (h!48326 (t!332655 (t!332655 rules!2999))))) (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))) t!332887) tb!241107))

(declare-fun result!292218 () Bool)

(assert (= result!292218 result!292134))

(assert (=> d!1186558 t!332887))

(declare-fun tb!241109 () Bool)

(declare-fun t!332889 () Bool)

(assert (=> (and b!4009888 (= (toValue!9322 (transformation!6822 (h!48326 (t!332655 (t!332655 rules!2999))))) (toValue!9322 (transformation!6822 (rule!9862 token!484)))) t!332889) tb!241109))

(declare-fun result!292220 () Bool)

(assert (= result!292220 result!292010))

(assert (=> d!1185960 t!332889))

(declare-fun t!332891 () Bool)

(declare-fun tb!241111 () Bool)

(assert (=> (and b!4009888 (= (toValue!9322 (transformation!6822 (h!48326 (t!332655 (t!332655 rules!2999))))) (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418483)))))) t!332891) tb!241111))

(declare-fun result!292222 () Bool)

(assert (= result!292222 result!292146))

(assert (=> d!1186598 t!332891))

(declare-fun tb!241113 () Bool)

(declare-fun t!332893 () Bool)

(assert (=> (and b!4009888 (= (toValue!9322 (transformation!6822 (h!48326 (t!332655 (t!332655 rules!2999))))) (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))) t!332893) tb!241113))

(declare-fun result!292224 () Bool)

(assert (= result!292224 result!292020))

(assert (=> d!1186014 t!332893))

(declare-fun t!332895 () Bool)

(declare-fun tb!241115 () Bool)

(assert (=> (and b!4009888 (= (toValue!9322 (transformation!6822 (h!48326 (t!332655 (t!332655 rules!2999))))) (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418426)))))) t!332895) tb!241115))

(declare-fun result!292226 () Bool)

(assert (= result!292226 result!292170))

(assert (=> d!1186748 t!332895))

(assert (=> d!1186552 t!332887))

(assert (=> d!1186708 t!332885))

(declare-fun tb!241117 () Bool)

(declare-fun t!332897 () Bool)

(assert (=> (and b!4009888 (= (toValue!9322 (transformation!6822 (h!48326 (t!332655 (t!332655 rules!2999))))) (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418330)))))) t!332897) tb!241117))

(declare-fun result!292228 () Bool)

(assert (= result!292228 result!292210))

(assert (=> d!1187000 t!332897))

(declare-fun tb!241119 () Bool)

(declare-fun t!332899 () Bool)

(assert (=> (and b!4009888 (= (toValue!9322 (transformation!6822 (h!48326 (t!332655 (t!332655 rules!2999))))) (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418457)))))) t!332899) tb!241119))

(declare-fun result!292230 () Bool)

(assert (= result!292230 result!292116))

(assert (=> d!1186396 t!332899))

(declare-fun tp!1219814 () Bool)

(declare-fun b_and!308043 () Bool)

(assert (=> b!4009888 (= tp!1219814 (and (=> t!332887 result!292218) (=> t!332899 result!292230) (=> t!332891 result!292222) (=> t!332889 result!292220) (=> t!332893 result!292224) (=> t!332885 result!292216) (=> t!332897 result!292228) (=> t!332895 result!292226) b_and!308043))))

(declare-fun b_free!111511 () Bool)

(declare-fun b_next!112215 () Bool)

(assert (=> b!4009888 (= b_free!111511 (not b_next!112215))))

(declare-fun t!332901 () Bool)

(declare-fun tb!241121 () Bool)

(assert (=> (and b!4009888 (= (toChars!9181 (transformation!6822 (h!48326 (t!332655 (t!332655 rules!2999))))) (toChars!9181 (transformation!6822 (rule!9862 token!484)))) t!332901) tb!241121))

(declare-fun result!292232 () Bool)

(assert (= result!292232 result!292158))

(assert (=> d!1186708 t!332901))

(declare-fun t!332903 () Bool)

(declare-fun tb!241123 () Bool)

(assert (=> (and b!4009888 (= (toChars!9181 (transformation!6822 (h!48326 (t!332655 (t!332655 rules!2999))))) (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))) t!332903) tb!241123))

(declare-fun result!292234 () Bool)

(assert (= result!292234 result!292016))

(assert (=> d!1185996 t!332903))

(declare-fun t!332905 () Bool)

(declare-fun tb!241125 () Bool)

(assert (=> (and b!4009888 (= (toChars!9181 (transformation!6822 (h!48326 (t!332655 (t!332655 rules!2999))))) (toChars!9181 (transformation!6822 (rule!9862 token!484)))) t!332905) tb!241125))

(declare-fun result!292236 () Bool)

(assert (= result!292236 result!291982))

(assert (=> b!4008097 t!332905))

(declare-fun tb!241127 () Bool)

(declare-fun t!332907 () Bool)

(assert (=> (and b!4009888 (= (toChars!9181 (transformation!6822 (h!48326 (t!332655 (t!332655 rules!2999))))) (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418426)))))) t!332907) tb!241127))

(declare-fun result!292238 () Bool)

(assert (= result!292238 result!292044))

(assert (=> d!1186132 t!332907))

(declare-fun t!332909 () Bool)

(declare-fun tb!241129 () Bool)

(assert (=> (and b!4009888 (= (toChars!9181 (transformation!6822 (h!48326 (t!332655 (t!332655 rules!2999))))) (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418457)))))) t!332909) tb!241129))

(declare-fun result!292240 () Bool)

(assert (= result!292240 result!292050))

(assert (=> d!1186154 t!332909))

(declare-fun tb!241131 () Bool)

(declare-fun t!332911 () Bool)

(assert (=> (and b!4009888 (= (toChars!9181 (transformation!6822 (h!48326 (t!332655 (t!332655 rules!2999))))) (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418483)))))) t!332911) tb!241131))

(declare-fun result!292242 () Bool)

(assert (= result!292242 result!292164))

(assert (=> d!1186722 t!332911))

(declare-fun tb!241133 () Bool)

(declare-fun t!332913 () Bool)

(assert (=> (and b!4009888 (= (toChars!9181 (transformation!6822 (h!48326 (t!332655 (t!332655 rules!2999))))) (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269)))))) t!332913) tb!241133))

(declare-fun result!292244 () Bool)

(assert (= result!292244 result!292140))

(assert (=> d!1186558 t!332913))

(assert (=> d!1185990 t!332905))

(declare-fun tb!241135 () Bool)

(declare-fun t!332915 () Bool)

(assert (=> (and b!4009888 (= (toChars!9181 (transformation!6822 (h!48326 (t!332655 (t!332655 rules!2999))))) (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (get!14100 lt!1418330)))))) t!332915) tb!241135))

(declare-fun result!292246 () Bool)

(assert (= result!292246 result!292038))

(assert (=> d!1186092 t!332915))

(declare-fun b_and!308045 () Bool)

(declare-fun tp!1219812 () Bool)

(assert (=> b!4009888 (= tp!1219812 (and (=> t!332905 result!292236) (=> t!332907 result!292238) (=> t!332911 result!292242) (=> t!332903 result!292234) (=> t!332909 result!292240) (=> t!332913 result!292244) (=> t!332901 result!292232) (=> t!332915 result!292246) b_and!308045))))

(declare-fun e!2486677 () Bool)

(assert (=> b!4009888 (= e!2486677 (and tp!1219814 tp!1219812))))

(declare-fun tp!1219813 () Bool)

(declare-fun b!4009887 () Bool)

(declare-fun e!2486674 () Bool)

(assert (=> b!4009887 (= e!2486674 (and tp!1219813 (inv!57300 (tag!7682 (h!48326 (t!332655 (t!332655 rules!2999))))) (inv!57303 (transformation!6822 (h!48326 (t!332655 (t!332655 rules!2999))))) e!2486677))))

(declare-fun b!4009886 () Bool)

(declare-fun e!2486676 () Bool)

(declare-fun tp!1219815 () Bool)

(assert (=> b!4009886 (= e!2486676 (and e!2486674 tp!1219815))))

(assert (=> b!4008554 (= tp!1219717 e!2486676)))

(assert (= b!4009887 b!4009888))

(assert (= b!4009886 b!4009887))

(assert (= (and b!4008554 ((_ is Cons!42906) (t!332655 (t!332655 rules!2999)))) b!4009886))

(declare-fun m!4594645 () Bool)

(assert (=> b!4009887 m!4594645))

(declare-fun m!4594647 () Bool)

(assert (=> b!4009887 m!4594647))

(declare-fun b!4009889 () Bool)

(declare-fun e!2486678 () Bool)

(declare-fun tp!1219816 () Bool)

(assert (=> b!4009889 (= e!2486678 (and tp_is_empty!20425 tp!1219816))))

(assert (=> b!4008527 (= tp!1219686 e!2486678)))

(assert (= (and b!4008527 ((_ is Cons!42904) (t!332653 (t!332653 newSuffix!27)))) b!4009889))

(declare-fun b!4009890 () Bool)

(declare-fun e!2486679 () Bool)

(declare-fun tp!1219817 () Bool)

(assert (=> b!4009890 (= e!2486679 (and tp_is_empty!20425 tp!1219817))))

(assert (=> b!4008544 (= tp!1219704 e!2486679)))

(assert (= (and b!4008544 ((_ is Cons!42904) (t!332653 (originalCharacters!7422 token!484)))) b!4009890))

(declare-fun b!4009893 () Bool)

(declare-fun e!2486680 () Bool)

(declare-fun tp!1219818 () Bool)

(assert (=> b!4009893 (= e!2486680 tp!1219818)))

(declare-fun b!4009891 () Bool)

(assert (=> b!4009891 (= e!2486680 tp_is_empty!20425)))

(declare-fun b!4009894 () Bool)

(declare-fun tp!1219819 () Bool)

(declare-fun tp!1219822 () Bool)

(assert (=> b!4009894 (= e!2486680 (and tp!1219819 tp!1219822))))

(assert (=> b!4008555 (= tp!1219715 e!2486680)))

(declare-fun b!4009892 () Bool)

(declare-fun tp!1219820 () Bool)

(declare-fun tp!1219821 () Bool)

(assert (=> b!4009892 (= e!2486680 (and tp!1219820 tp!1219821))))

(assert (= (and b!4008555 ((_ is ElementMatch!11727) (regex!6822 (h!48326 (t!332655 rules!2999))))) b!4009891))

(assert (= (and b!4008555 ((_ is Concat!18780) (regex!6822 (h!48326 (t!332655 rules!2999))))) b!4009892))

(assert (= (and b!4008555 ((_ is Star!11727) (regex!6822 (h!48326 (t!332655 rules!2999))))) b!4009893))

(assert (= (and b!4008555 ((_ is Union!11727) (regex!6822 (h!48326 (t!332655 rules!2999))))) b!4009894))

(declare-fun b!4009903 () Bool)

(declare-fun tp!1219830 () Bool)

(declare-fun e!2486685 () Bool)

(declare-fun tp!1219831 () Bool)

(assert (=> b!4009903 (= e!2486685 (and (inv!57307 (left!32370 (c!692980 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 token!484))) (value!215061 token!484))))) tp!1219830 (inv!57307 (right!32700 (c!692980 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 token!484))) (value!215061 token!484))))) tp!1219831))))

(declare-fun b!4009905 () Bool)

(declare-fun e!2486686 () Bool)

(declare-fun tp!1219829 () Bool)

(assert (=> b!4009905 (= e!2486686 tp!1219829)))

(declare-fun b!4009904 () Bool)

(declare-fun inv!57313 (IArray!26071) Bool)

(assert (=> b!4009904 (= e!2486685 (and (inv!57313 (xs!16339 (c!692980 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 token!484))) (value!215061 token!484))))) e!2486686))))

(assert (=> b!4008103 (= tp!1219640 (and (inv!57307 (c!692980 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 token!484))) (value!215061 token!484)))) e!2486685))))

(assert (= (and b!4008103 ((_ is Node!13033) (c!692980 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 token!484))) (value!215061 token!484))))) b!4009903))

(assert (= b!4009904 b!4009905))

(assert (= (and b!4008103 ((_ is Leaf!20151) (c!692980 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 token!484))) (value!215061 token!484))))) b!4009904))

(declare-fun m!4594649 () Bool)

(assert (=> b!4009903 m!4594649))

(declare-fun m!4594651 () Bool)

(assert (=> b!4009903 m!4594651))

(declare-fun m!4594653 () Bool)

(assert (=> b!4009904 m!4594653))

(assert (=> b!4008103 m!4591785))

(declare-fun b!4009908 () Bool)

(declare-fun e!2486687 () Bool)

(declare-fun tp!1219832 () Bool)

(assert (=> b!4009908 (= e!2486687 tp!1219832)))

(declare-fun b!4009906 () Bool)

(assert (=> b!4009906 (= e!2486687 tp_is_empty!20425)))

(declare-fun b!4009909 () Bool)

(declare-fun tp!1219833 () Bool)

(declare-fun tp!1219836 () Bool)

(assert (=> b!4009909 (= e!2486687 (and tp!1219833 tp!1219836))))

(assert (=> b!4008559 (= tp!1219718 e!2486687)))

(declare-fun b!4009907 () Bool)

(declare-fun tp!1219834 () Bool)

(declare-fun tp!1219835 () Bool)

(assert (=> b!4009907 (= e!2486687 (and tp!1219834 tp!1219835))))

(assert (= (and b!4008559 ((_ is ElementMatch!11727) (reg!12056 (regex!6822 (h!48326 rules!2999))))) b!4009906))

(assert (= (and b!4008559 ((_ is Concat!18780) (reg!12056 (regex!6822 (h!48326 rules!2999))))) b!4009907))

(assert (= (and b!4008559 ((_ is Star!11727) (reg!12056 (regex!6822 (h!48326 rules!2999))))) b!4009908))

(assert (= (and b!4008559 ((_ is Union!11727) (reg!12056 (regex!6822 (h!48326 rules!2999))))) b!4009909))

(declare-fun b!4009912 () Bool)

(declare-fun e!2486688 () Bool)

(declare-fun tp!1219837 () Bool)

(assert (=> b!4009912 (= e!2486688 tp!1219837)))

(declare-fun b!4009910 () Bool)

(assert (=> b!4009910 (= e!2486688 tp_is_empty!20425)))

(declare-fun b!4009913 () Bool)

(declare-fun tp!1219838 () Bool)

(declare-fun tp!1219841 () Bool)

(assert (=> b!4009913 (= e!2486688 (and tp!1219838 tp!1219841))))

(assert (=> b!4008558 (= tp!1219720 e!2486688)))

(declare-fun b!4009911 () Bool)

(declare-fun tp!1219839 () Bool)

(declare-fun tp!1219840 () Bool)

(assert (=> b!4009911 (= e!2486688 (and tp!1219839 tp!1219840))))

(assert (= (and b!4008558 ((_ is ElementMatch!11727) (regOne!23966 (regex!6822 (h!48326 rules!2999))))) b!4009910))

(assert (= (and b!4008558 ((_ is Concat!18780) (regOne!23966 (regex!6822 (h!48326 rules!2999))))) b!4009911))

(assert (= (and b!4008558 ((_ is Star!11727) (regOne!23966 (regex!6822 (h!48326 rules!2999))))) b!4009912))

(assert (= (and b!4008558 ((_ is Union!11727) (regOne!23966 (regex!6822 (h!48326 rules!2999))))) b!4009913))

(declare-fun b!4009916 () Bool)

(declare-fun e!2486689 () Bool)

(declare-fun tp!1219842 () Bool)

(assert (=> b!4009916 (= e!2486689 tp!1219842)))

(declare-fun b!4009914 () Bool)

(assert (=> b!4009914 (= e!2486689 tp_is_empty!20425)))

(declare-fun b!4009917 () Bool)

(declare-fun tp!1219843 () Bool)

(declare-fun tp!1219846 () Bool)

(assert (=> b!4009917 (= e!2486689 (and tp!1219843 tp!1219846))))

(assert (=> b!4008558 (= tp!1219721 e!2486689)))

(declare-fun b!4009915 () Bool)

(declare-fun tp!1219844 () Bool)

(declare-fun tp!1219845 () Bool)

(assert (=> b!4009915 (= e!2486689 (and tp!1219844 tp!1219845))))

(assert (= (and b!4008558 ((_ is ElementMatch!11727) (regTwo!23966 (regex!6822 (h!48326 rules!2999))))) b!4009914))

(assert (= (and b!4008558 ((_ is Concat!18780) (regTwo!23966 (regex!6822 (h!48326 rules!2999))))) b!4009915))

(assert (= (and b!4008558 ((_ is Star!11727) (regTwo!23966 (regex!6822 (h!48326 rules!2999))))) b!4009916))

(assert (= (and b!4008558 ((_ is Union!11727) (regTwo!23966 (regex!6822 (h!48326 rules!2999))))) b!4009917))

(declare-fun b!4009918 () Bool)

(declare-fun e!2486690 () Bool)

(declare-fun tp!1219847 () Bool)

(assert (=> b!4009918 (= e!2486690 (and tp_is_empty!20425 tp!1219847))))

(assert (=> b!4008543 (= tp!1219703 e!2486690)))

(assert (= (and b!4008543 ((_ is Cons!42904) (t!332653 (t!332653 prefix!494)))) b!4009918))

(declare-fun b!4009921 () Bool)

(declare-fun e!2486691 () Bool)

(declare-fun tp!1219848 () Bool)

(assert (=> b!4009921 (= e!2486691 tp!1219848)))

(declare-fun b!4009919 () Bool)

(assert (=> b!4009919 (= e!2486691 tp_is_empty!20425)))

(declare-fun b!4009922 () Bool)

(declare-fun tp!1219849 () Bool)

(declare-fun tp!1219852 () Bool)

(assert (=> b!4009922 (= e!2486691 (and tp!1219849 tp!1219852))))

(assert (=> b!4008560 (= tp!1219719 e!2486691)))

(declare-fun b!4009920 () Bool)

(declare-fun tp!1219850 () Bool)

(declare-fun tp!1219851 () Bool)

(assert (=> b!4009920 (= e!2486691 (and tp!1219850 tp!1219851))))

(assert (= (and b!4008560 ((_ is ElementMatch!11727) (regOne!23967 (regex!6822 (h!48326 rules!2999))))) b!4009919))

(assert (= (and b!4008560 ((_ is Concat!18780) (regOne!23967 (regex!6822 (h!48326 rules!2999))))) b!4009920))

(assert (= (and b!4008560 ((_ is Star!11727) (regOne!23967 (regex!6822 (h!48326 rules!2999))))) b!4009921))

(assert (= (and b!4008560 ((_ is Union!11727) (regOne!23967 (regex!6822 (h!48326 rules!2999))))) b!4009922))

(declare-fun b!4009925 () Bool)

(declare-fun e!2486692 () Bool)

(declare-fun tp!1219853 () Bool)

(assert (=> b!4009925 (= e!2486692 tp!1219853)))

(declare-fun b!4009923 () Bool)

(assert (=> b!4009923 (= e!2486692 tp_is_empty!20425)))

(declare-fun b!4009926 () Bool)

(declare-fun tp!1219854 () Bool)

(declare-fun tp!1219857 () Bool)

(assert (=> b!4009926 (= e!2486692 (and tp!1219854 tp!1219857))))

(assert (=> b!4008560 (= tp!1219722 e!2486692)))

(declare-fun b!4009924 () Bool)

(declare-fun tp!1219855 () Bool)

(declare-fun tp!1219856 () Bool)

(assert (=> b!4009924 (= e!2486692 (and tp!1219855 tp!1219856))))

(assert (= (and b!4008560 ((_ is ElementMatch!11727) (regTwo!23967 (regex!6822 (h!48326 rules!2999))))) b!4009923))

(assert (= (and b!4008560 ((_ is Concat!18780) (regTwo!23967 (regex!6822 (h!48326 rules!2999))))) b!4009924))

(assert (= (and b!4008560 ((_ is Star!11727) (regTwo!23967 (regex!6822 (h!48326 rules!2999))))) b!4009925))

(assert (= (and b!4008560 ((_ is Union!11727) (regTwo!23967 (regex!6822 (h!48326 rules!2999))))) b!4009926))

(declare-fun b!4009929 () Bool)

(declare-fun e!2486693 () Bool)

(declare-fun tp!1219858 () Bool)

(assert (=> b!4009929 (= e!2486693 tp!1219858)))

(declare-fun b!4009927 () Bool)

(assert (=> b!4009927 (= e!2486693 tp_is_empty!20425)))

(declare-fun b!4009930 () Bool)

(declare-fun tp!1219859 () Bool)

(declare-fun tp!1219862 () Bool)

(assert (=> b!4009930 (= e!2486693 (and tp!1219859 tp!1219862))))

(assert (=> b!4008541 (= tp!1219698 e!2486693)))

(declare-fun b!4009928 () Bool)

(declare-fun tp!1219860 () Bool)

(declare-fun tp!1219861 () Bool)

(assert (=> b!4009928 (= e!2486693 (and tp!1219860 tp!1219861))))

(assert (= (and b!4008541 ((_ is ElementMatch!11727) (reg!12056 (regex!6822 (rule!9862 token!484))))) b!4009927))

(assert (= (and b!4008541 ((_ is Concat!18780) (reg!12056 (regex!6822 (rule!9862 token!484))))) b!4009928))

(assert (= (and b!4008541 ((_ is Star!11727) (reg!12056 (regex!6822 (rule!9862 token!484))))) b!4009929))

(assert (= (and b!4008541 ((_ is Union!11727) (reg!12056 (regex!6822 (rule!9862 token!484))))) b!4009930))

(declare-fun b!4009931 () Bool)

(declare-fun e!2486694 () Bool)

(declare-fun tp!1219863 () Bool)

(assert (=> b!4009931 (= e!2486694 (and tp_is_empty!20425 tp!1219863))))

(assert (=> b!4008545 (= tp!1219705 e!2486694)))

(assert (= (and b!4008545 ((_ is Cons!42904) (t!332653 (t!332653 newSuffixResult!27)))) b!4009931))

(declare-fun b!4009932 () Bool)

(declare-fun e!2486695 () Bool)

(declare-fun tp!1219864 () Bool)

(assert (=> b!4009932 (= e!2486695 (and tp_is_empty!20425 tp!1219864))))

(assert (=> b!4008526 (= tp!1219685 e!2486695)))

(assert (= (and b!4008526 ((_ is Cons!42904) (t!332653 (t!332653 suffixResult!105)))) b!4009932))

(declare-fun b!4009935 () Bool)

(declare-fun e!2486696 () Bool)

(declare-fun tp!1219865 () Bool)

(assert (=> b!4009935 (= e!2486696 tp!1219865)))

(declare-fun b!4009933 () Bool)

(assert (=> b!4009933 (= e!2486696 tp_is_empty!20425)))

(declare-fun b!4009936 () Bool)

(declare-fun tp!1219866 () Bool)

(declare-fun tp!1219869 () Bool)

(assert (=> b!4009936 (= e!2486696 (and tp!1219866 tp!1219869))))

(assert (=> b!4008542 (= tp!1219699 e!2486696)))

(declare-fun b!4009934 () Bool)

(declare-fun tp!1219867 () Bool)

(declare-fun tp!1219868 () Bool)

(assert (=> b!4009934 (= e!2486696 (and tp!1219867 tp!1219868))))

(assert (= (and b!4008542 ((_ is ElementMatch!11727) (regOne!23967 (regex!6822 (rule!9862 token!484))))) b!4009933))

(assert (= (and b!4008542 ((_ is Concat!18780) (regOne!23967 (regex!6822 (rule!9862 token!484))))) b!4009934))

(assert (= (and b!4008542 ((_ is Star!11727) (regOne!23967 (regex!6822 (rule!9862 token!484))))) b!4009935))

(assert (= (and b!4008542 ((_ is Union!11727) (regOne!23967 (regex!6822 (rule!9862 token!484))))) b!4009936))

(declare-fun b!4009939 () Bool)

(declare-fun e!2486697 () Bool)

(declare-fun tp!1219870 () Bool)

(assert (=> b!4009939 (= e!2486697 tp!1219870)))

(declare-fun b!4009937 () Bool)

(assert (=> b!4009937 (= e!2486697 tp_is_empty!20425)))

(declare-fun b!4009940 () Bool)

(declare-fun tp!1219871 () Bool)

(declare-fun tp!1219874 () Bool)

(assert (=> b!4009940 (= e!2486697 (and tp!1219871 tp!1219874))))

(assert (=> b!4008542 (= tp!1219702 e!2486697)))

(declare-fun b!4009938 () Bool)

(declare-fun tp!1219872 () Bool)

(declare-fun tp!1219873 () Bool)

(assert (=> b!4009938 (= e!2486697 (and tp!1219872 tp!1219873))))

(assert (= (and b!4008542 ((_ is ElementMatch!11727) (regTwo!23967 (regex!6822 (rule!9862 token!484))))) b!4009937))

(assert (= (and b!4008542 ((_ is Concat!18780) (regTwo!23967 (regex!6822 (rule!9862 token!484))))) b!4009938))

(assert (= (and b!4008542 ((_ is Star!11727) (regTwo!23967 (regex!6822 (rule!9862 token!484))))) b!4009939))

(assert (= (and b!4008542 ((_ is Union!11727) (regTwo!23967 (regex!6822 (rule!9862 token!484))))) b!4009940))

(declare-fun e!2486698 () Bool)

(declare-fun tp!1219877 () Bool)

(declare-fun tp!1219876 () Bool)

(declare-fun b!4009941 () Bool)

(assert (=> b!4009941 (= e!2486698 (and (inv!57307 (left!32370 (c!692980 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (value!215061 (_1!24163 (v!39601 lt!1418269))))))) tp!1219876 (inv!57307 (right!32700 (c!692980 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (value!215061 (_1!24163 (v!39601 lt!1418269))))))) tp!1219877))))

(declare-fun b!4009943 () Bool)

(declare-fun e!2486699 () Bool)

(declare-fun tp!1219875 () Bool)

(assert (=> b!4009943 (= e!2486699 tp!1219875)))

(declare-fun b!4009942 () Bool)

(assert (=> b!4009942 (= e!2486698 (and (inv!57313 (xs!16339 (c!692980 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (value!215061 (_1!24163 (v!39601 lt!1418269))))))) e!2486699))))

(assert (=> b!4008392 (= tp!1219682 (and (inv!57307 (c!692980 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (value!215061 (_1!24163 (v!39601 lt!1418269)))))) e!2486698))))

(assert (= (and b!4008392 ((_ is Node!13033) (c!692980 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (value!215061 (_1!24163 (v!39601 lt!1418269))))))) b!4009941))

(assert (= b!4009942 b!4009943))

(assert (= (and b!4008392 ((_ is Leaf!20151) (c!692980 (dynLambda!18199 (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))) (value!215061 (_1!24163 (v!39601 lt!1418269))))))) b!4009942))

(declare-fun m!4594655 () Bool)

(assert (=> b!4009941 m!4594655))

(declare-fun m!4594657 () Bool)

(assert (=> b!4009941 m!4594657))

(declare-fun m!4594659 () Bool)

(assert (=> b!4009942 m!4594659))

(assert (=> b!4008392 m!4592273))

(declare-fun b!4009944 () Bool)

(declare-fun e!2486700 () Bool)

(declare-fun tp!1219878 () Bool)

(assert (=> b!4009944 (= e!2486700 (and tp_is_empty!20425 tp!1219878))))

(assert (=> b!4008528 (= tp!1219687 e!2486700)))

(assert (= (and b!4008528 ((_ is Cons!42904) (t!332653 (t!332653 suffix!1299)))) b!4009944))

(declare-fun b!4009947 () Bool)

(declare-fun e!2486701 () Bool)

(declare-fun tp!1219879 () Bool)

(assert (=> b!4009947 (= e!2486701 tp!1219879)))

(declare-fun b!4009945 () Bool)

(assert (=> b!4009945 (= e!2486701 tp_is_empty!20425)))

(declare-fun b!4009948 () Bool)

(declare-fun tp!1219880 () Bool)

(declare-fun tp!1219883 () Bool)

(assert (=> b!4009948 (= e!2486701 (and tp!1219880 tp!1219883))))

(assert (=> b!4008540 (= tp!1219700 e!2486701)))

(declare-fun b!4009946 () Bool)

(declare-fun tp!1219881 () Bool)

(declare-fun tp!1219882 () Bool)

(assert (=> b!4009946 (= e!2486701 (and tp!1219881 tp!1219882))))

(assert (= (and b!4008540 ((_ is ElementMatch!11727) (regOne!23966 (regex!6822 (rule!9862 token!484))))) b!4009945))

(assert (= (and b!4008540 ((_ is Concat!18780) (regOne!23966 (regex!6822 (rule!9862 token!484))))) b!4009946))

(assert (= (and b!4008540 ((_ is Star!11727) (regOne!23966 (regex!6822 (rule!9862 token!484))))) b!4009947))

(assert (= (and b!4008540 ((_ is Union!11727) (regOne!23966 (regex!6822 (rule!9862 token!484))))) b!4009948))

(declare-fun b!4009951 () Bool)

(declare-fun e!2486702 () Bool)

(declare-fun tp!1219884 () Bool)

(assert (=> b!4009951 (= e!2486702 tp!1219884)))

(declare-fun b!4009949 () Bool)

(assert (=> b!4009949 (= e!2486702 tp_is_empty!20425)))

(declare-fun b!4009952 () Bool)

(declare-fun tp!1219885 () Bool)

(declare-fun tp!1219888 () Bool)

(assert (=> b!4009952 (= e!2486702 (and tp!1219885 tp!1219888))))

(assert (=> b!4008540 (= tp!1219701 e!2486702)))

(declare-fun b!4009950 () Bool)

(declare-fun tp!1219886 () Bool)

(declare-fun tp!1219887 () Bool)

(assert (=> b!4009950 (= e!2486702 (and tp!1219886 tp!1219887))))

(assert (= (and b!4008540 ((_ is ElementMatch!11727) (regTwo!23966 (regex!6822 (rule!9862 token!484))))) b!4009949))

(assert (= (and b!4008540 ((_ is Concat!18780) (regTwo!23966 (regex!6822 (rule!9862 token!484))))) b!4009950))

(assert (= (and b!4008540 ((_ is Star!11727) (regTwo!23966 (regex!6822 (rule!9862 token!484))))) b!4009951))

(assert (= (and b!4008540 ((_ is Union!11727) (regTwo!23966 (regex!6822 (rule!9862 token!484))))) b!4009952))

(declare-fun b_lambda!117009 () Bool)

(assert (= b_lambda!116989 (or (and b!4007875 b_free!111491 (= (toChars!9181 (transformation!6822 (h!48326 rules!2999))) (toChars!9181 (transformation!6822 (rule!9862 token!484))))) (and b!4007900 b_free!111495) (and b!4008556 b_free!111503 (= (toChars!9181 (transformation!6822 (h!48326 (t!332655 rules!2999)))) (toChars!9181 (transformation!6822 (rule!9862 token!484))))) (and b!4009888 b_free!111511 (= (toChars!9181 (transformation!6822 (h!48326 (t!332655 (t!332655 rules!2999))))) (toChars!9181 (transformation!6822 (rule!9862 token!484))))) b_lambda!117009)))

(declare-fun b_lambda!117011 () Bool)

(assert (= b_lambda!116935 (or (and b!4007875 b_free!111489 (= (toValue!9322 (transformation!6822 (h!48326 rules!2999))) (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))))) (and b!4007900 b_free!111493 (= (toValue!9322 (transformation!6822 (rule!9862 token!484))) (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))))) (and b!4008556 b_free!111501 (= (toValue!9322 (transformation!6822 (h!48326 (t!332655 rules!2999)))) (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))))) (and b!4009888 b_free!111509 (= (toValue!9322 (transformation!6822 (h!48326 (t!332655 (t!332655 rules!2999))))) (toValue!9322 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))))) b_lambda!117011)))

(declare-fun b_lambda!117013 () Bool)

(assert (= b_lambda!116987 (or (and b!4007875 b_free!111489 (= (toValue!9322 (transformation!6822 (h!48326 rules!2999))) (toValue!9322 (transformation!6822 (rule!9862 token!484))))) (and b!4007900 b_free!111493) (and b!4008556 b_free!111501 (= (toValue!9322 (transformation!6822 (h!48326 (t!332655 rules!2999)))) (toValue!9322 (transformation!6822 (rule!9862 token!484))))) (and b!4009888 b_free!111509 (= (toValue!9322 (transformation!6822 (h!48326 (t!332655 (t!332655 rules!2999))))) (toValue!9322 (transformation!6822 (rule!9862 token!484))))) b_lambda!117013)))

(declare-fun b_lambda!117015 () Bool)

(assert (= b_lambda!116933 (or (and b!4007875 b_free!111491 (= (toChars!9181 (transformation!6822 (h!48326 rules!2999))) (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))))) (and b!4007900 b_free!111495 (= (toChars!9181 (transformation!6822 (rule!9862 token!484))) (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))))) (and b!4008556 b_free!111503 (= (toChars!9181 (transformation!6822 (h!48326 (t!332655 rules!2999)))) (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))))) (and b!4009888 b_free!111511 (= (toChars!9181 (transformation!6822 (h!48326 (t!332655 (t!332655 rules!2999))))) (toChars!9181 (transformation!6822 (rule!9862 (_1!24163 (v!39601 lt!1418269))))))) b_lambda!117015)))

(declare-fun b_lambda!117017 () Bool)

(assert (= b_lambda!116991 (or (and b!4007875 b_free!111489 (= (toValue!9322 (transformation!6822 (h!48326 rules!2999))) (toValue!9322 (transformation!6822 (rule!9862 token!484))))) (and b!4007900 b_free!111493) (and b!4008556 b_free!111501 (= (toValue!9322 (transformation!6822 (h!48326 (t!332655 rules!2999)))) (toValue!9322 (transformation!6822 (rule!9862 token!484))))) (and b!4009888 b_free!111509 (= (toValue!9322 (transformation!6822 (h!48326 (t!332655 (t!332655 rules!2999))))) (toValue!9322 (transformation!6822 (rule!9862 token!484))))) b_lambda!117017)))

(check-sat (not b!4009782) (not bm!286301) (not bm!286304) (not b!4009344) (not b!4008624) (not b!4009507) (not d!1186902) (not b!4009940) (not b!4009942) b_and!308045 (not b!4009011) (not b!4009235) (not b!4009756) (not d!1186948) (not b!4008766) (not b_lambda!116943) (not d!1186110) (not b!4008577) (not b!4009798) (not b!4009800) (not b!4008592) (not b!4009682) (not b!4009950) (not tb!240941) (not b!4009140) (not d!1186938) (not bm!286340) (not b!4009370) (not b!4008576) (not b!4009815) (not b_lambda!117013) (not b!4009121) (not b!4009144) (not b!4009924) (not b!4009418) (not b!4009625) (not b!4008614) (not tb!241055) (not b!4008751) (not b!4008567) (not b!4008942) (not b!4009666) (not b!4009501) (not b!4009038) (not b!4008676) (not b!4009273) (not b!4009310) (not b!4009350) (not d!1186148) (not b!4008932) (not b!4009911) (not b!4009670) (not b!4008760) (not b!4009794) (not b!4009028) (not b!4009006) (not b!4008562) (not bm!286338) (not b!4008569) (not b!4008586) (not d!1186964) (not d!1186474) (not b!4008959) (not b!4009433) (not b!4009142) (not d!1186718) (not b!4008678) (not b!4008998) (not b!4009870) (not d!1186752) (not d!1186496) (not b!4009680) (not bm!286300) (not b!4009611) (not b!4009435) (not b!4009592) (not b!4009284) (not d!1186554) (not b!4008940) (not b!4009349) (not b!4009357) (not b!4008958) (not b!4009470) (not b!4009056) (not d!1187014) b_and!308021 (not d!1186716) (not b!4009943) (not b!4009807) (not b!4009354) (not b_lambda!116997) (not b!4009932) (not d!1186092) (not d!1187010) (not d!1186606) (not b!4008572) (not b!4009889) (not b!4009423) (not d!1186676) (not bm!286333) (not b!4009353) (not b!4009758) (not b!4008563) (not d!1186558) (not d!1186520) (not b!4009939) (not b!4009760) (not b!4008601) (not b!4009908) (not b!4008954) (not b!4009938) (not b!4009869) (not b!4009525) (not bm!286305) (not b!4009141) (not b_lambda!116981) (not b!4009883) (not b!4009385) (not d!1186602) (not d!1186618) (not b!4009890) (not bm!286316) (not b!4009866) (not b!4009268) (not b!4009421) (not b!4008960) (not b!4009735) (not b!4009935) (not b_lambda!116995) (not b!4009352) (not b!4009060) (not d!1186708) (not bm!286361) (not d!1186116) (not b!4009744) (not d!1186620) (not b!4009675) (not b!4008763) (not b!4009229) (not b!4009948) (not b!4009918) (not b!4009701) (not b!4009504) (not bm!286363) (not b!4009696) (not b!4009917) (not b!4008587) (not d!1186590) (not d!1186104) (not b_next!112195) (not d!1186112) (not d!1186128) (not b!4009903) (not b!4009308) (not b!4008956) (not b!4008938) (not b!4009921) (not b!4008103) (not d!1186982) (not b!4008580) (not d!1186120) (not b!4009743) (not b!4009281) (not d!1186850) (not b!4009623) (not b!4009879) (not d!1186594) (not b!4009280) (not b!4009058) (not b!4008768) (not b!4009452) (not tb!241025) (not d!1186906) tp_is_empty!20425 (not b!4008591) (not b!4008762) (not b!4009814) (not b!4009059) (not b!4009691) (not bm!286334) (not bm!286302) (not b!4009907) (not b!4009488) (not b_lambda!116945) (not b!4008628) (not b!4009674) b_and!308041 (not b!4009871) (not b!4008625) (not b!4009659) (not b!4009665) (not b!4009595) (not d!1186800) (not d!1186170) (not tb!241043) (not b!4009790) (not bm!286337) (not b_next!112199) (not b!4009909) (not b!4009727) (not b!4009941) (not b!4009605) (not d!1186130) (not b!4009894) (not b!4009694) (not b!4009698) (not b!4008588) (not b!4009312) (not b!4008636) (not b!4009355) (not d!1186754) (not d!1186522) (not b!4008750) (not d!1186866) (not b_lambda!117011) (not b!4008985) (not d!1186332) (not d!1187028) (not b!4009915) (not b!4009816) (not d!1186844) (not bm!286331) (not tb!241007) (not b!4009601) (not b!4009776) (not b!4008594) (not d!1186600) (not tb!241049) (not b!4008950) (not b!4009929) (not b_lambda!116983) (not b!4009862) (not b!4009946) (not b!4009697) (not b!4008581) (not b!4009012) (not b_lambda!116979) (not b!4009123) (not b!4009008) (not b!4008584) (not bm!286249) (not b!4009637) (not b!4009000) (not b!4009920) (not d!1186182) (not b!4009524) (not b!4008392) (not d!1186256) (not b!4009886) (not bm!286306) (not d!1186960) (not b!4009865) (not b!4009664) (not b!4009693) (not b!4009754) (not d!1186970) (not b!4008764) (not b!4008987) (not d!1186168) (not b!4008665) (not b!4009138) (not d!1186646) (not b!4009864) b_and!308043 (not b!4009145) (not d!1186860) (not b!4008757) (not b!4008621) (not d!1186266) (not b!4009451) (not b!4008767) (not b_next!112197) (not d!1186806) (not bm!286335) (not b_lambda!117015) (not b!4008609) (not b!4009905) (not b!4008573) (not bm!286247) (not b!4009868) (not bm!286234) (not bm!286303) (not b!4009887) (not d!1187016) (not b!4008620) (not b!4008999) (not b!4009783) (not b_lambda!116973) (not b!4009427) (not d!1186840) (not b!4009668) (not d!1186728) (not b!4009495) (not d!1186160) (not b!4009417) (not b!4009916) (not b!4009348) (not d!1186500) (not b!4009651) (not b!4009947) (not d!1186440) (not b!4008574) (not b!4009576) (not b!4009719) (not b!4008565) (not b!4009182) (not b!4009489) (not d!1186410) (not b!4009137) (not b!4009700) (not b!4009934) (not b!4009139) b_and!308023 (not d!1186152) (not b!4009952) (not b!4009277) (not tb!241031) (not d!1186890) (not d!1186640) (not b!4009926) (not b!4009579) (not b!4009035) (not tb!240929) (not d!1186660) (not b!4009050) (not bm!286328) (not tb!241099) (not d!1186402) (not b!4009340) (not b!4009068) (not b!4009715) (not b!4008930) (not b!4009676) (not b_lambda!116947) (not b!4009650) (not d!1186264) (not tb!241037) (not b!4009394) (not b!4009877) (not b!4009796) (not d!1186828) (not d!1186164) (not b!4009781) (not b!4009356) (not b_next!112213) (not b!4009248) (not b!4009527) (not b!4009699) (not b!4009792) (not d!1187004) (not b!4008948) (not b!4008634) (not d!1186898) (not d!1186958) (not d!1186996) (not b_next!112193) (not b!4009893) (not b!4009237) b_and!308039 (not bm!286362) (not b!4009500) (not b!4008590) (not d!1186682) (not b!4009603) (not b!4009369) (not b!4009032) (not d!1186786) (not d!1186998) (not b!4009912) (not b_lambda!116985) (not bm!286336) (not bm!286330) (not b!4008570) (not b!4009403) (not b!4009728) (not b!4009904) (not d!1186950) (not b!4009860) (not b!4009505) (not b!4009631) (not b!4009690) (not b!4009278) (not b!4009638) (not d!1186118) (not b!4008616) (not b_lambda!117009) (not d!1186604) (not b!4009147) (not bm!286321) (not b!4009678) (not b!4008629) (not b!4009010) (not b!4009753) (not b!4009892) (not b!4009580) (not b!4009640) (not b!4009122) (not d!1187012) (not bm!286235) (not b!4009282) (not b!4008758) (not b!4009630) (not d!1186376) (not b_lambda!116937) (not tb!240935) (not b!4009723) (not d!1186154) (not b!4009272) (not b!4009922) (not b!4009931) (not d!1187026) (not b_lambda!116993) (not b!4009034) (not b!4009925) (not b!4009928) (not b!4009345) (not b!4008630) (not d!1186706) (not b_next!112207) (not b!4009652) (not b!4008607) (not b!4009671) (not d!1186090) (not b!4009881) (not b!4009951) (not b!4009413) (not tb!241061) (not b!4009031) (not b!4008928) (not b_lambda!117017) (not b!4009598) (not b!4009578) (not b!4009629) (not b!4009414) (not b!4009586) (not b!4009741) (not b!4009802) (not d!1186610) (not b!4008632) (not d!1187022) b_and!308025 (not b!4008770) (not b!4009341) (not b!4009913) (not b!4009619) (not d!1186700) (not b!4009434) (not d!1186624) (not b!4009757) (not b!4009560) (not b_lambda!116939) (not d!1186132) (not b_next!112215) (not b!4009679) (not b!4009884) (not d!1186722) (not b!4009036) (not b!4009405) (not d!1186696) (not b!4009027) (not b!4009658) (not b!4009624) (not d!1186150) (not d!1186824) (not b!4009409) (not b!4008611) (not b!4008613) (not bm!286359) (not b!4009930) (not b!4008755) (not bm!286357) (not b!4009873) (not b!4008633) (not b!4008618) (not d!1186694) (not b!4009867) (not b!4009503) (not b!4009936) (not d!1187020) (not bm!286244) (not b!4008952) (not b!4009274) (not d!1187002) (not b!4009371) (not b!4009944) (not bm!286339) (not b_lambda!116941) (not d!1186448) (not b!4009594) b_and!308037 (not b!4009143) (not b_next!112205) (not d!1186550) (not b!4009874) (not b!4009318) (not b!4009227) (not b!4009620) (not d!1186632) (not d!1186664) (not d!1186356) (not b!4008674) (not bm!286299))
(check-sat b_and!308045 b_and!308021 (not b_next!112195) b_and!308041 (not b_next!112199) b_and!308023 (not b_next!112213) (not b_next!112193) b_and!308039 (not b_next!112207) b_and!308025 (not b_next!112215) b_and!308043 (not b_next!112197) b_and!308037 (not b_next!112205))
