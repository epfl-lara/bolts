; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!384068 () Bool)

(assert start!384068)

(declare-fun b!4070380 () Bool)

(declare-fun b_free!113233 () Bool)

(declare-fun b_next!113937 () Bool)

(assert (=> b!4070380 (= b_free!113233 (not b_next!113937))))

(declare-fun tp!1231779 () Bool)

(declare-fun b_and!312787 () Bool)

(assert (=> b!4070380 (= tp!1231779 b_and!312787)))

(declare-fun b_free!113235 () Bool)

(declare-fun b_next!113939 () Bool)

(assert (=> b!4070380 (= b_free!113235 (not b_next!113939))))

(declare-fun tp!1231772 () Bool)

(declare-fun b_and!312789 () Bool)

(assert (=> b!4070380 (= tp!1231772 b_and!312789)))

(declare-fun b!4070357 () Bool)

(declare-fun b_free!113237 () Bool)

(declare-fun b_next!113941 () Bool)

(assert (=> b!4070357 (= b_free!113237 (not b_next!113941))))

(declare-fun tp!1231774 () Bool)

(declare-fun b_and!312791 () Bool)

(assert (=> b!4070357 (= tp!1231774 b_and!312791)))

(declare-fun b_free!113239 () Bool)

(declare-fun b_next!113943 () Bool)

(assert (=> b!4070357 (= b_free!113239 (not b_next!113943))))

(declare-fun tp!1231784 () Bool)

(declare-fun b_and!312793 () Bool)

(assert (=> b!4070357 (= tp!1231784 b_and!312793)))

(declare-fun b!4070353 () Bool)

(declare-fun e!2526146 () Bool)

(declare-datatypes ((C!23972 0))(
  ( (C!23973 (val!14080 Int)) )
))
(declare-datatypes ((List!43599 0))(
  ( (Nil!43475) (Cons!43475 (h!48895 C!23972) (t!337022 List!43599)) )
))
(declare-datatypes ((IArray!26403 0))(
  ( (IArray!26404 (innerList!13259 List!43599)) )
))
(declare-datatypes ((Conc!13199 0))(
  ( (Node!13199 (left!32699 Conc!13199) (right!33029 Conc!13199) (csize!26628 Int) (cheight!13410 Int)) (Leaf!20400 (xs!16505 IArray!26403) (csize!26629 Int)) (Empty!13199) )
))
(declare-datatypes ((BalanceConc!25992 0))(
  ( (BalanceConc!25993 (c!702598 Conc!13199)) )
))
(declare-datatypes ((List!43600 0))(
  ( (Nil!43476) (Cons!43476 (h!48896 (_ BitVec 16)) (t!337023 List!43600)) )
))
(declare-datatypes ((TokenValue!7218 0))(
  ( (FloatLiteralValue!14436 (text!50971 List!43600)) (TokenValueExt!7217 (__x!26653 Int)) (Broken!36090 (value!219766 List!43600)) (Object!7341) (End!7218) (Def!7218) (Underscore!7218) (Match!7218) (Else!7218) (Error!7218) (Case!7218) (If!7218) (Extends!7218) (Abstract!7218) (Class!7218) (Val!7218) (DelimiterValue!14436 (del!7278 List!43600)) (KeywordValue!7224 (value!219767 List!43600)) (CommentValue!14436 (value!219768 List!43600)) (WhitespaceValue!14436 (value!219769 List!43600)) (IndentationValue!7218 (value!219770 List!43600)) (String!49807) (Int32!7218) (Broken!36091 (value!219771 List!43600)) (Boolean!7219) (Unit!63042) (OperatorValue!7221 (op!7278 List!43600)) (IdentifierValue!14436 (value!219772 List!43600)) (IdentifierValue!14437 (value!219773 List!43600)) (WhitespaceValue!14437 (value!219774 List!43600)) (True!14436) (False!14436) (Broken!36092 (value!219775 List!43600)) (Broken!36093 (value!219776 List!43600)) (True!14437) (RightBrace!7218) (RightBracket!7218) (Colon!7218) (Null!7218) (Comma!7218) (LeftBracket!7218) (False!14437) (LeftBrace!7218) (ImaginaryLiteralValue!7218 (text!50972 List!43600)) (StringLiteralValue!21654 (value!219777 List!43600)) (EOFValue!7218 (value!219778 List!43600)) (IdentValue!7218 (value!219779 List!43600)) (DelimiterValue!14437 (value!219780 List!43600)) (DedentValue!7218 (value!219781 List!43600)) (NewLineValue!7218 (value!219782 List!43600)) (IntegerValue!21654 (value!219783 (_ BitVec 32)) (text!50973 List!43600)) (IntegerValue!21655 (value!219784 Int) (text!50974 List!43600)) (Times!7218) (Or!7218) (Equal!7218) (Minus!7218) (Broken!36094 (value!219785 List!43600)) (And!7218) (Div!7218) (LessEqual!7218) (Mod!7218) (Concat!19111) (Not!7218) (Plus!7218) (SpaceValue!7218 (value!219786 List!43600)) (IntegerValue!21656 (value!219787 Int) (text!50975 List!43600)) (StringLiteralValue!21655 (text!50976 List!43600)) (FloatLiteralValue!14437 (text!50977 List!43600)) (BytesLiteralValue!7218 (value!219788 List!43600)) (CommentValue!14437 (value!219789 List!43600)) (StringLiteralValue!21656 (value!219790 List!43600)) (ErrorTokenValue!7218 (msg!7279 List!43600)) )
))
(declare-datatypes ((Regex!11893 0))(
  ( (ElementMatch!11893 (c!702599 C!23972)) (Concat!19112 (regOne!24298 Regex!11893) (regTwo!24298 Regex!11893)) (EmptyExpr!11893) (Star!11893 (reg!12222 Regex!11893)) (EmptyLang!11893) (Union!11893 (regOne!24299 Regex!11893) (regTwo!24299 Regex!11893)) )
))
(declare-datatypes ((String!49808 0))(
  ( (String!49809 (value!219791 String)) )
))
(declare-datatypes ((TokenValueInjection!13864 0))(
  ( (TokenValueInjection!13865 (toValue!9548 Int) (toChars!9407 Int)) )
))
(declare-datatypes ((Rule!13776 0))(
  ( (Rule!13777 (regex!6988 Regex!11893) (tag!7848 String!49808) (isSeparator!6988 Bool) (transformation!6988 TokenValueInjection!13864)) )
))
(declare-datatypes ((Token!13114 0))(
  ( (Token!13115 (value!219792 TokenValue!7218) (rule!10096 Rule!13776) (size!32503 Int) (originalCharacters!7588 List!43599)) )
))
(declare-datatypes ((tuple2!42526 0))(
  ( (tuple2!42527 (_1!24397 Token!13114) (_2!24397 List!43599)) )
))
(declare-datatypes ((Option!9402 0))(
  ( (None!9401) (Some!9401 (v!39835 tuple2!42526)) )
))
(declare-fun lt!1457164 () Option!9402)

(assert (=> b!4070353 (= e!2526146 (= lt!1457164 None!9401))))

(declare-fun isEmpty!25950 (Option!9402) Bool)

(assert (=> b!4070353 (isEmpty!25950 lt!1457164)))

(declare-fun lt!1457170 () List!43599)

(declare-fun token!484 () Token!13114)

(declare-datatypes ((LexerInterface!6577 0))(
  ( (LexerInterfaceExt!6574 (__x!26654 Int)) (Lexer!6575) )
))
(declare-fun thiss!21717 () LexerInterface!6577)

(declare-fun maxPrefixOneRule!2887 (LexerInterface!6577 Rule!13776 List!43599) Option!9402)

(assert (=> b!4070353 (= lt!1457164 (maxPrefixOneRule!2887 thiss!21717 (rule!10096 token!484) lt!1457170))))

(declare-datatypes ((Unit!63043 0))(
  ( (Unit!63044) )
))
(declare-fun lt!1457161 () Unit!63043)

(declare-datatypes ((List!43601 0))(
  ( (Nil!43477) (Cons!43477 (h!48897 Rule!13776) (t!337024 List!43601)) )
))
(declare-fun rules!2999 () List!43601)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!602 (LexerInterface!6577 Rule!13776 List!43601 List!43599) Unit!63043)

(assert (=> b!4070353 (= lt!1457161 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!602 thiss!21717 (rule!10096 token!484) rules!2999 lt!1457170))))

(declare-fun b!4070354 () Bool)

(declare-fun e!2526141 () Bool)

(declare-fun e!2526138 () Bool)

(assert (=> b!4070354 (= e!2526141 e!2526138)))

(declare-fun res!1661952 () Bool)

(assert (=> b!4070354 (=> res!1661952 e!2526138)))

(declare-fun lt!1457156 () List!43599)

(declare-fun lt!1457180 () List!43599)

(assert (=> b!4070354 (= res!1661952 (not (= lt!1457156 lt!1457180)))))

(declare-fun lt!1457175 () List!43599)

(declare-fun lt!1457184 () List!43599)

(declare-fun ++!11390 (List!43599 List!43599) List!43599)

(assert (=> b!4070354 (= lt!1457156 (++!11390 lt!1457175 lt!1457184))))

(declare-fun getSuffix!2492 (List!43599 List!43599) List!43599)

(assert (=> b!4070354 (= lt!1457184 (getSuffix!2492 lt!1457180 lt!1457175))))

(declare-fun e!2526156 () Bool)

(assert (=> b!4070354 e!2526156))

(declare-fun res!1661956 () Bool)

(assert (=> b!4070354 (=> (not res!1661956) (not e!2526156))))

(declare-fun isPrefix!4075 (List!43599 List!43599) Bool)

(assert (=> b!4070354 (= res!1661956 (isPrefix!4075 lt!1457180 lt!1457180))))

(declare-fun lt!1457171 () Unit!63043)

(declare-fun lemmaIsPrefixRefl!2642 (List!43599 List!43599) Unit!63043)

(assert (=> b!4070354 (= lt!1457171 (lemmaIsPrefixRefl!2642 lt!1457180 lt!1457180))))

(declare-fun b!4070355 () Bool)

(declare-fun res!1661950 () Bool)

(declare-fun e!2526158 () Bool)

(assert (=> b!4070355 (=> (not res!1661950) (not e!2526158))))

(declare-fun newSuffix!27 () List!43599)

(declare-fun suffix!1299 () List!43599)

(assert (=> b!4070355 (= res!1661950 (isPrefix!4075 newSuffix!27 suffix!1299))))

(declare-fun e!2526135 () Bool)

(declare-fun b!4070356 () Bool)

(declare-fun tp!1231773 () Bool)

(declare-fun e!2526143 () Bool)

(declare-fun inv!58117 (String!49808) Bool)

(declare-fun inv!58120 (TokenValueInjection!13864) Bool)

(assert (=> b!4070356 (= e!2526143 (and tp!1231773 (inv!58117 (tag!7848 (h!48897 rules!2999))) (inv!58120 (transformation!6988 (h!48897 rules!2999))) e!2526135))))

(declare-fun e!2526155 () Bool)

(assert (=> b!4070357 (= e!2526155 (and tp!1231774 tp!1231784))))

(declare-fun b!4070358 () Bool)

(declare-fun e!2526145 () Bool)

(declare-fun tp_is_empty!20757 () Bool)

(declare-fun tp!1231780 () Bool)

(assert (=> b!4070358 (= e!2526145 (and tp_is_empty!20757 tp!1231780))))

(declare-fun b!4070359 () Bool)

(declare-fun e!2526144 () Bool)

(assert (=> b!4070359 (= e!2526144 e!2526141)))

(declare-fun res!1661967 () Bool)

(assert (=> b!4070359 (=> res!1661967 e!2526141)))

(declare-fun matchR!5846 (Regex!11893 List!43599) Bool)

(assert (=> b!4070359 (= res!1661967 (not (matchR!5846 (regex!6988 (rule!10096 token!484)) lt!1457175)))))

(assert (=> b!4070359 (isPrefix!4075 lt!1457175 lt!1457170)))

(declare-fun prefix!494 () List!43599)

(declare-fun lt!1457157 () Unit!63043)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!868 (List!43599 List!43599 List!43599) Unit!63043)

(assert (=> b!4070359 (= lt!1457157 (lemmaPrefixStaysPrefixWhenAddingToSuffix!868 lt!1457175 prefix!494 newSuffix!27))))

(declare-fun lt!1457173 () Unit!63043)

(assert (=> b!4070359 (= lt!1457173 (lemmaPrefixStaysPrefixWhenAddingToSuffix!868 lt!1457175 prefix!494 suffix!1299))))

(declare-fun e!2526148 () Bool)

(declare-fun b!4070360 () Bool)

(declare-fun tp!1231782 () Bool)

(declare-fun e!2526132 () Bool)

(declare-fun inv!21 (TokenValue!7218) Bool)

(assert (=> b!4070360 (= e!2526132 (and (inv!21 (value!219792 token!484)) e!2526148 tp!1231782))))

(declare-fun b!4070361 () Bool)

(declare-fun e!2526139 () Bool)

(assert (=> b!4070361 (= e!2526158 e!2526139)))

(declare-fun res!1661955 () Bool)

(assert (=> b!4070361 (=> (not res!1661955) (not e!2526139))))

(declare-fun lt!1457163 () Int)

(declare-fun lt!1457181 () Int)

(assert (=> b!4070361 (= res!1661955 (>= lt!1457163 lt!1457181))))

(declare-fun size!32504 (List!43599) Int)

(assert (=> b!4070361 (= lt!1457181 (size!32504 lt!1457175))))

(assert (=> b!4070361 (= lt!1457163 (size!32504 prefix!494))))

(declare-fun list!16212 (BalanceConc!25992) List!43599)

(declare-fun charsOf!4804 (Token!13114) BalanceConc!25992)

(assert (=> b!4070361 (= lt!1457175 (list!16212 (charsOf!4804 token!484)))))

(declare-fun b!4070362 () Bool)

(declare-fun e!2526137 () Bool)

(declare-fun tp!1231775 () Bool)

(assert (=> b!4070362 (= e!2526137 (and tp_is_empty!20757 tp!1231775))))

(declare-fun b!4070363 () Bool)

(declare-fun res!1661961 () Bool)

(assert (=> b!4070363 (=> (not res!1661961) (not e!2526158))))

(declare-fun rulesInvariant!5920 (LexerInterface!6577 List!43601) Bool)

(assert (=> b!4070363 (= res!1661961 (rulesInvariant!5920 thiss!21717 rules!2999))))

(declare-fun b!4070364 () Bool)

(declare-fun e!2526133 () Bool)

(declare-fun tp!1231776 () Bool)

(assert (=> b!4070364 (= e!2526133 (and e!2526143 tp!1231776))))

(declare-fun b!4070366 () Bool)

(assert (=> b!4070366 (= e!2526138 e!2526146)))

(declare-fun res!1661958 () Bool)

(assert (=> b!4070366 (=> res!1661958 e!2526146)))

(get-info :version)

(declare-fun maxPrefix!3875 (LexerInterface!6577 List!43601 List!43599) Option!9402)

(assert (=> b!4070366 (= res!1661958 ((_ is Some!9401) (maxPrefix!3875 thiss!21717 rules!2999 lt!1457170)))))

(declare-fun suffixResult!105 () List!43599)

(declare-fun lt!1457176 () tuple2!42526)

(declare-fun lt!1457160 () Token!13114)

(assert (=> b!4070366 (and (= suffixResult!105 lt!1457184) (= lt!1457176 (tuple2!42527 lt!1457160 lt!1457184)))))

(declare-fun lt!1457158 () Unit!63043)

(declare-fun lemmaSamePrefixThenSameSuffix!2236 (List!43599 List!43599 List!43599 List!43599 List!43599) Unit!63043)

(assert (=> b!4070366 (= lt!1457158 (lemmaSamePrefixThenSameSuffix!2236 lt!1457175 suffixResult!105 lt!1457175 lt!1457184 lt!1457180))))

(assert (=> b!4070366 (isPrefix!4075 lt!1457175 lt!1457156)))

(declare-fun lt!1457179 () Unit!63043)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2910 (List!43599 List!43599) Unit!63043)

(assert (=> b!4070366 (= lt!1457179 (lemmaConcatTwoListThenFirstIsPrefix!2910 lt!1457175 lt!1457184))))

(declare-fun b!4070367 () Bool)

(declare-fun e!2526142 () Bool)

(declare-fun e!2526152 () Bool)

(assert (=> b!4070367 (= e!2526142 e!2526152)))

(declare-fun res!1661965 () Bool)

(assert (=> b!4070367 (=> res!1661965 e!2526152)))

(declare-fun lt!1457169 () List!43599)

(declare-fun lt!1457185 () List!43599)

(assert (=> b!4070367 (= res!1661965 (or (not (= lt!1457180 lt!1457185)) (not (= lt!1457180 lt!1457169))))))

(assert (=> b!4070367 (= lt!1457185 lt!1457169)))

(declare-fun lt!1457155 () List!43599)

(assert (=> b!4070367 (= lt!1457169 (++!11390 lt!1457175 lt!1457155))))

(declare-fun lt!1457186 () List!43599)

(assert (=> b!4070367 (= lt!1457185 (++!11390 lt!1457186 suffix!1299))))

(declare-fun lt!1457183 () List!43599)

(assert (=> b!4070367 (= lt!1457155 (++!11390 lt!1457183 suffix!1299))))

(declare-fun lt!1457178 () Unit!63043)

(declare-fun lemmaConcatAssociativity!2692 (List!43599 List!43599 List!43599) Unit!63043)

(assert (=> b!4070367 (= lt!1457178 (lemmaConcatAssociativity!2692 lt!1457175 lt!1457183 suffix!1299))))

(declare-fun b!4070368 () Bool)

(declare-fun e!2526154 () Bool)

(declare-fun e!2526147 () Bool)

(assert (=> b!4070368 (= e!2526154 e!2526147)))

(declare-fun res!1661959 () Bool)

(assert (=> b!4070368 (=> (not res!1661959) (not e!2526147))))

(declare-fun lt!1457166 () Option!9402)

(assert (=> b!4070368 (= res!1661959 (= (maxPrefix!3875 thiss!21717 rules!2999 lt!1457180) lt!1457166))))

(assert (=> b!4070368 (= lt!1457166 (Some!9401 lt!1457176))))

(assert (=> b!4070368 (= lt!1457176 (tuple2!42527 token!484 suffixResult!105))))

(assert (=> b!4070368 (= lt!1457180 (++!11390 prefix!494 suffix!1299))))

(declare-fun b!4070369 () Bool)

(declare-fun e!2526150 () Bool)

(declare-fun tp!1231778 () Bool)

(assert (=> b!4070369 (= e!2526150 (and tp_is_empty!20757 tp!1231778))))

(declare-fun b!4070370 () Bool)

(declare-fun e!2526140 () Bool)

(assert (=> b!4070370 (= e!2526147 (not e!2526140))))

(declare-fun res!1661962 () Bool)

(assert (=> b!4070370 (=> res!1661962 e!2526140)))

(declare-fun lt!1457187 () List!43599)

(assert (=> b!4070370 (= res!1661962 (not (= lt!1457187 lt!1457180)))))

(assert (=> b!4070370 (= lt!1457187 (++!11390 lt!1457175 suffixResult!105))))

(declare-fun lt!1457165 () Unit!63043)

(declare-fun lemmaInv!1197 (TokenValueInjection!13864) Unit!63043)

(assert (=> b!4070370 (= lt!1457165 (lemmaInv!1197 (transformation!6988 (rule!10096 token!484))))))

(declare-fun ruleValid!2918 (LexerInterface!6577 Rule!13776) Bool)

(assert (=> b!4070370 (ruleValid!2918 thiss!21717 (rule!10096 token!484))))

(declare-fun lt!1457153 () Unit!63043)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1988 (LexerInterface!6577 Rule!13776 List!43601) Unit!63043)

(assert (=> b!4070370 (= lt!1457153 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1988 thiss!21717 (rule!10096 token!484) rules!2999))))

(declare-fun b!4070371 () Bool)

(declare-fun res!1661966 () Bool)

(assert (=> b!4070371 (=> (not res!1661966) (not e!2526156))))

(assert (=> b!4070371 (= res!1661966 (= (size!32503 token!484) (size!32504 (originalCharacters!7588 token!484))))))

(declare-fun b!4070372 () Bool)

(declare-fun res!1661953 () Bool)

(assert (=> b!4070372 (=> (not res!1661953) (not e!2526158))))

(declare-fun isEmpty!25951 (List!43601) Bool)

(assert (=> b!4070372 (= res!1661953 (not (isEmpty!25951 rules!2999)))))

(declare-fun b!4070373 () Bool)

(declare-fun e!2526136 () Bool)

(assert (=> b!4070373 (= e!2526136 e!2526142)))

(declare-fun res!1661963 () Bool)

(assert (=> b!4070373 (=> res!1661963 e!2526142)))

(assert (=> b!4070373 (= res!1661963 (not (= lt!1457186 prefix!494)))))

(assert (=> b!4070373 (= lt!1457186 (++!11390 lt!1457175 lt!1457183))))

(assert (=> b!4070373 (= lt!1457183 (getSuffix!2492 prefix!494 lt!1457175))))

(assert (=> b!4070373 (isPrefix!4075 lt!1457175 prefix!494)))

(declare-fun lt!1457159 () Unit!63043)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!639 (List!43599 List!43599 List!43599) Unit!63043)

(assert (=> b!4070373 (= lt!1457159 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!639 prefix!494 lt!1457175 lt!1457180))))

(declare-fun b!4070374 () Bool)

(assert (=> b!4070374 (= e!2526140 e!2526136)))

(declare-fun res!1661954 () Bool)

(assert (=> b!4070374 (=> res!1661954 e!2526136)))

(assert (=> b!4070374 (= res!1661954 (not (isPrefix!4075 lt!1457175 lt!1457180)))))

(assert (=> b!4070374 (isPrefix!4075 prefix!494 lt!1457180)))

(declare-fun lt!1457154 () Unit!63043)

(assert (=> b!4070374 (= lt!1457154 (lemmaConcatTwoListThenFirstIsPrefix!2910 prefix!494 suffix!1299))))

(assert (=> b!4070374 (isPrefix!4075 lt!1457175 lt!1457187)))

(declare-fun lt!1457182 () Unit!63043)

(assert (=> b!4070374 (= lt!1457182 (lemmaConcatTwoListThenFirstIsPrefix!2910 lt!1457175 suffixResult!105))))

(declare-fun b!4070375 () Bool)

(declare-fun e!2526151 () Bool)

(declare-fun tp!1231783 () Bool)

(assert (=> b!4070375 (= e!2526151 (and tp_is_empty!20757 tp!1231783))))

(declare-fun b!4070376 () Bool)

(assert (=> b!4070376 (= e!2526156 (and (= (size!32503 token!484) lt!1457181) (= (originalCharacters!7588 token!484) lt!1457175)))))

(declare-fun b!4070377 () Bool)

(declare-fun tp!1231777 () Bool)

(assert (=> b!4070377 (= e!2526148 (and tp!1231777 (inv!58117 (tag!7848 (rule!10096 token!484))) (inv!58120 (transformation!6988 (rule!10096 token!484))) e!2526155))))

(declare-fun b!4070378 () Bool)

(declare-fun res!1661951 () Bool)

(assert (=> b!4070378 (=> (not res!1661951) (not e!2526158))))

(assert (=> b!4070378 (= res!1661951 (>= (size!32504 suffix!1299) (size!32504 newSuffix!27)))))

(declare-fun b!4070379 () Bool)

(assert (=> b!4070379 (= e!2526152 e!2526144)))

(declare-fun res!1661964 () Bool)

(assert (=> b!4070379 (=> res!1661964 e!2526144)))

(declare-fun lt!1457162 () Option!9402)

(assert (=> b!4070379 (= res!1661964 (not (= lt!1457162 lt!1457166)))))

(assert (=> b!4070379 (= lt!1457162 (Some!9401 (tuple2!42527 lt!1457160 suffixResult!105)))))

(assert (=> b!4070379 (= lt!1457162 (maxPrefixOneRule!2887 thiss!21717 (rule!10096 token!484) lt!1457180))))

(declare-fun lt!1457167 () TokenValue!7218)

(assert (=> b!4070379 (= lt!1457160 (Token!13115 lt!1457167 (rule!10096 token!484) lt!1457181 lt!1457175))))

(declare-fun apply!10177 (TokenValueInjection!13864 BalanceConc!25992) TokenValue!7218)

(declare-fun seqFromList!5205 (List!43599) BalanceConc!25992)

(assert (=> b!4070379 (= lt!1457167 (apply!10177 (transformation!6988 (rule!10096 token!484)) (seqFromList!5205 lt!1457175)))))

(declare-fun lt!1457172 () Unit!63043)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1693 (LexerInterface!6577 List!43601 List!43599 List!43599 List!43599 Rule!13776) Unit!63043)

(assert (=> b!4070379 (= lt!1457172 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1693 thiss!21717 rules!2999 lt!1457175 lt!1457180 suffixResult!105 (rule!10096 token!484)))))

(assert (=> b!4070379 (= lt!1457155 suffixResult!105)))

(declare-fun lt!1457168 () Unit!63043)

(assert (=> b!4070379 (= lt!1457168 (lemmaSamePrefixThenSameSuffix!2236 lt!1457175 lt!1457155 lt!1457175 suffixResult!105 lt!1457180))))

(assert (=> b!4070379 (isPrefix!4075 lt!1457175 lt!1457169)))

(declare-fun lt!1457174 () Unit!63043)

(assert (=> b!4070379 (= lt!1457174 (lemmaConcatTwoListThenFirstIsPrefix!2910 lt!1457175 lt!1457155))))

(assert (=> b!4070380 (= e!2526135 (and tp!1231779 tp!1231772))))

(declare-fun b!4070365 () Bool)

(declare-fun e!2526149 () Bool)

(declare-fun tp!1231781 () Bool)

(assert (=> b!4070365 (= e!2526149 (and tp_is_empty!20757 tp!1231781))))

(declare-fun res!1661957 () Bool)

(assert (=> start!384068 (=> (not res!1661957) (not e!2526158))))

(assert (=> start!384068 (= res!1661957 ((_ is Lexer!6575) thiss!21717))))

(assert (=> start!384068 e!2526158))

(assert (=> start!384068 e!2526149))

(declare-fun inv!58121 (Token!13114) Bool)

(assert (=> start!384068 (and (inv!58121 token!484) e!2526132)))

(assert (=> start!384068 e!2526137))

(assert (=> start!384068 e!2526150))

(assert (=> start!384068 e!2526151))

(assert (=> start!384068 true))

(assert (=> start!384068 e!2526133))

(assert (=> start!384068 e!2526145))

(declare-fun b!4070381 () Bool)

(declare-fun res!1661949 () Bool)

(assert (=> b!4070381 (=> (not res!1661949) (not e!2526156))))

(assert (=> b!4070381 (= res!1661949 (= (value!219792 token!484) lt!1457167))))

(declare-fun b!4070382 () Bool)

(assert (=> b!4070382 (= e!2526139 e!2526154)))

(declare-fun res!1661960 () Bool)

(assert (=> b!4070382 (=> (not res!1661960) (not e!2526154))))

(declare-fun lt!1457177 () List!43599)

(assert (=> b!4070382 (= res!1661960 (= lt!1457177 lt!1457170))))

(assert (=> b!4070382 (= lt!1457170 (++!11390 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43599)

(assert (=> b!4070382 (= lt!1457177 (++!11390 lt!1457175 newSuffixResult!27))))

(assert (= (and start!384068 res!1661957) b!4070372))

(assert (= (and b!4070372 res!1661953) b!4070363))

(assert (= (and b!4070363 res!1661961) b!4070378))

(assert (= (and b!4070378 res!1661951) b!4070355))

(assert (= (and b!4070355 res!1661950) b!4070361))

(assert (= (and b!4070361 res!1661955) b!4070382))

(assert (= (and b!4070382 res!1661960) b!4070368))

(assert (= (and b!4070368 res!1661959) b!4070370))

(assert (= (and b!4070370 (not res!1661962)) b!4070374))

(assert (= (and b!4070374 (not res!1661954)) b!4070373))

(assert (= (and b!4070373 (not res!1661963)) b!4070367))

(assert (= (and b!4070367 (not res!1661965)) b!4070379))

(assert (= (and b!4070379 (not res!1661964)) b!4070359))

(assert (= (and b!4070359 (not res!1661967)) b!4070354))

(assert (= (and b!4070354 res!1661956) b!4070381))

(assert (= (and b!4070381 res!1661949) b!4070371))

(assert (= (and b!4070371 res!1661966) b!4070376))

(assert (= (and b!4070354 (not res!1661952)) b!4070366))

(assert (= (and b!4070366 (not res!1661958)) b!4070353))

(assert (= (and start!384068 ((_ is Cons!43475) prefix!494)) b!4070365))

(assert (= b!4070377 b!4070357))

(assert (= b!4070360 b!4070377))

(assert (= start!384068 b!4070360))

(assert (= (and start!384068 ((_ is Cons!43475) suffixResult!105)) b!4070362))

(assert (= (and start!384068 ((_ is Cons!43475) suffix!1299)) b!4070369))

(assert (= (and start!384068 ((_ is Cons!43475) newSuffix!27)) b!4070375))

(assert (= b!4070356 b!4070380))

(assert (= b!4070364 b!4070356))

(assert (= (and start!384068 ((_ is Cons!43477) rules!2999)) b!4070364))

(assert (= (and start!384068 ((_ is Cons!43475) newSuffixResult!27)) b!4070358))

(declare-fun m!4679379 () Bool)

(assert (=> b!4070353 m!4679379))

(declare-fun m!4679381 () Bool)

(assert (=> b!4070353 m!4679381))

(declare-fun m!4679383 () Bool)

(assert (=> b!4070353 m!4679383))

(declare-fun m!4679385 () Bool)

(assert (=> b!4070371 m!4679385))

(declare-fun m!4679387 () Bool)

(assert (=> b!4070366 m!4679387))

(declare-fun m!4679389 () Bool)

(assert (=> b!4070366 m!4679389))

(declare-fun m!4679391 () Bool)

(assert (=> b!4070366 m!4679391))

(declare-fun m!4679393 () Bool)

(assert (=> b!4070366 m!4679393))

(declare-fun m!4679395 () Bool)

(assert (=> b!4070359 m!4679395))

(declare-fun m!4679397 () Bool)

(assert (=> b!4070359 m!4679397))

(declare-fun m!4679399 () Bool)

(assert (=> b!4070359 m!4679399))

(declare-fun m!4679401 () Bool)

(assert (=> b!4070359 m!4679401))

(declare-fun m!4679403 () Bool)

(assert (=> b!4070360 m!4679403))

(declare-fun m!4679405 () Bool)

(assert (=> b!4070377 m!4679405))

(declare-fun m!4679407 () Bool)

(assert (=> b!4070377 m!4679407))

(declare-fun m!4679409 () Bool)

(assert (=> b!4070373 m!4679409))

(declare-fun m!4679411 () Bool)

(assert (=> b!4070373 m!4679411))

(declare-fun m!4679413 () Bool)

(assert (=> b!4070373 m!4679413))

(declare-fun m!4679415 () Bool)

(assert (=> b!4070373 m!4679415))

(declare-fun m!4679417 () Bool)

(assert (=> b!4070370 m!4679417))

(declare-fun m!4679419 () Bool)

(assert (=> b!4070370 m!4679419))

(declare-fun m!4679421 () Bool)

(assert (=> b!4070370 m!4679421))

(declare-fun m!4679423 () Bool)

(assert (=> b!4070370 m!4679423))

(declare-fun m!4679425 () Bool)

(assert (=> b!4070378 m!4679425))

(declare-fun m!4679427 () Bool)

(assert (=> b!4070378 m!4679427))

(declare-fun m!4679429 () Bool)

(assert (=> b!4070363 m!4679429))

(declare-fun m!4679431 () Bool)

(assert (=> b!4070355 m!4679431))

(declare-fun m!4679433 () Bool)

(assert (=> b!4070374 m!4679433))

(declare-fun m!4679435 () Bool)

(assert (=> b!4070374 m!4679435))

(declare-fun m!4679437 () Bool)

(assert (=> b!4070374 m!4679437))

(declare-fun m!4679439 () Bool)

(assert (=> b!4070374 m!4679439))

(declare-fun m!4679441 () Bool)

(assert (=> b!4070374 m!4679441))

(declare-fun m!4679443 () Bool)

(assert (=> b!4070361 m!4679443))

(declare-fun m!4679445 () Bool)

(assert (=> b!4070361 m!4679445))

(declare-fun m!4679447 () Bool)

(assert (=> b!4070361 m!4679447))

(assert (=> b!4070361 m!4679447))

(declare-fun m!4679449 () Bool)

(assert (=> b!4070361 m!4679449))

(declare-fun m!4679451 () Bool)

(assert (=> b!4070367 m!4679451))

(declare-fun m!4679453 () Bool)

(assert (=> b!4070367 m!4679453))

(declare-fun m!4679455 () Bool)

(assert (=> b!4070367 m!4679455))

(declare-fun m!4679457 () Bool)

(assert (=> b!4070367 m!4679457))

(declare-fun m!4679459 () Bool)

(assert (=> b!4070372 m!4679459))

(declare-fun m!4679461 () Bool)

(assert (=> b!4070379 m!4679461))

(declare-fun m!4679463 () Bool)

(assert (=> b!4070379 m!4679463))

(assert (=> b!4070379 m!4679461))

(declare-fun m!4679465 () Bool)

(assert (=> b!4070379 m!4679465))

(declare-fun m!4679467 () Bool)

(assert (=> b!4070379 m!4679467))

(declare-fun m!4679469 () Bool)

(assert (=> b!4070379 m!4679469))

(declare-fun m!4679471 () Bool)

(assert (=> b!4070379 m!4679471))

(declare-fun m!4679473 () Bool)

(assert (=> b!4070379 m!4679473))

(declare-fun m!4679475 () Bool)

(assert (=> b!4070382 m!4679475))

(declare-fun m!4679477 () Bool)

(assert (=> b!4070382 m!4679477))

(declare-fun m!4679479 () Bool)

(assert (=> b!4070356 m!4679479))

(declare-fun m!4679481 () Bool)

(assert (=> b!4070356 m!4679481))

(declare-fun m!4679483 () Bool)

(assert (=> b!4070354 m!4679483))

(declare-fun m!4679485 () Bool)

(assert (=> b!4070354 m!4679485))

(declare-fun m!4679487 () Bool)

(assert (=> b!4070354 m!4679487))

(declare-fun m!4679489 () Bool)

(assert (=> b!4070354 m!4679489))

(declare-fun m!4679491 () Bool)

(assert (=> start!384068 m!4679491))

(declare-fun m!4679493 () Bool)

(assert (=> b!4070368 m!4679493))

(declare-fun m!4679495 () Bool)

(assert (=> b!4070368 m!4679495))

(check-sat (not b!4070374) (not b!4070382) b_and!312789 (not b!4070362) (not b!4070355) (not b!4070373) (not b!4070363) (not b!4070359) (not b!4070367) (not b!4070379) (not b!4070356) (not b_next!113937) (not b_next!113939) (not b!4070360) (not start!384068) (not b!4070369) (not b!4070370) (not b!4070361) b_and!312787 (not b!4070372) (not b!4070364) b_and!312791 (not b!4070375) (not b!4070358) (not b!4070366) tp_is_empty!20757 (not b!4070353) (not b!4070377) (not b_next!113941) (not b!4070365) (not b!4070354) (not b_next!113943) (not b!4070378) (not b!4070368) b_and!312793 (not b!4070371))
(check-sat b_and!312789 (not b_next!113941) (not b_next!113943) (not b_next!113937) b_and!312793 (not b_next!113939) b_and!312787 b_and!312791)
(get-model)

(declare-fun b!4070431 () Bool)

(declare-fun e!2526187 () Bool)

(declare-fun inv!17 (TokenValue!7218) Bool)

(assert (=> b!4070431 (= e!2526187 (inv!17 (value!219792 token!484)))))

(declare-fun b!4070432 () Bool)

(declare-fun e!2526188 () Bool)

(declare-fun inv!15 (TokenValue!7218) Bool)

(assert (=> b!4070432 (= e!2526188 (inv!15 (value!219792 token!484)))))

(declare-fun d!1209877 () Bool)

(declare-fun c!702613 () Bool)

(assert (=> d!1209877 (= c!702613 ((_ is IntegerValue!21654) (value!219792 token!484)))))

(declare-fun e!2526186 () Bool)

(assert (=> d!1209877 (= (inv!21 (value!219792 token!484)) e!2526186)))

(declare-fun b!4070433 () Bool)

(declare-fun res!1661992 () Bool)

(assert (=> b!4070433 (=> res!1661992 e!2526188)))

(assert (=> b!4070433 (= res!1661992 (not ((_ is IntegerValue!21656) (value!219792 token!484))))))

(assert (=> b!4070433 (= e!2526187 e!2526188)))

(declare-fun b!4070434 () Bool)

(declare-fun inv!16 (TokenValue!7218) Bool)

(assert (=> b!4070434 (= e!2526186 (inv!16 (value!219792 token!484)))))

(declare-fun b!4070435 () Bool)

(assert (=> b!4070435 (= e!2526186 e!2526187)))

(declare-fun c!702612 () Bool)

(assert (=> b!4070435 (= c!702612 ((_ is IntegerValue!21655) (value!219792 token!484)))))

(assert (= (and d!1209877 c!702613) b!4070434))

(assert (= (and d!1209877 (not c!702613)) b!4070435))

(assert (= (and b!4070435 c!702612) b!4070431))

(assert (= (and b!4070435 (not c!702612)) b!4070433))

(assert (= (and b!4070433 (not res!1661992)) b!4070432))

(declare-fun m!4679541 () Bool)

(assert (=> b!4070431 m!4679541))

(declare-fun m!4679543 () Bool)

(assert (=> b!4070432 m!4679543))

(declare-fun m!4679545 () Bool)

(assert (=> b!4070434 m!4679545))

(assert (=> b!4070360 d!1209877))

(declare-fun d!1209879 () Bool)

(declare-fun lt!1457211 () Int)

(assert (=> d!1209879 (>= lt!1457211 0)))

(declare-fun e!2526197 () Int)

(assert (=> d!1209879 (= lt!1457211 e!2526197)))

(declare-fun c!702618 () Bool)

(assert (=> d!1209879 (= c!702618 ((_ is Nil!43475) (originalCharacters!7588 token!484)))))

(assert (=> d!1209879 (= (size!32504 (originalCharacters!7588 token!484)) lt!1457211)))

(declare-fun b!4070458 () Bool)

(assert (=> b!4070458 (= e!2526197 0)))

(declare-fun b!4070459 () Bool)

(assert (=> b!4070459 (= e!2526197 (+ 1 (size!32504 (t!337022 (originalCharacters!7588 token!484)))))))

(assert (= (and d!1209879 c!702618) b!4070458))

(assert (= (and d!1209879 (not c!702618)) b!4070459))

(declare-fun m!4679547 () Bool)

(assert (=> b!4070459 m!4679547))

(assert (=> b!4070371 d!1209879))

(declare-fun d!1209881 () Bool)

(declare-fun e!2526213 () Bool)

(assert (=> d!1209881 e!2526213))

(declare-fun res!1662023 () Bool)

(assert (=> d!1209881 (=> (not res!1662023) (not e!2526213))))

(declare-fun lt!1457220 () List!43599)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6647 (List!43599) (InoxSet C!23972))

(assert (=> d!1209881 (= res!1662023 (= (content!6647 lt!1457220) ((_ map or) (content!6647 lt!1457175) (content!6647 suffixResult!105))))))

(declare-fun e!2526214 () List!43599)

(assert (=> d!1209881 (= lt!1457220 e!2526214)))

(declare-fun c!702627 () Bool)

(assert (=> d!1209881 (= c!702627 ((_ is Nil!43475) lt!1457175))))

(assert (=> d!1209881 (= (++!11390 lt!1457175 suffixResult!105) lt!1457220)))

(declare-fun b!4070491 () Bool)

(assert (=> b!4070491 (= e!2526214 suffixResult!105)))

(declare-fun b!4070493 () Bool)

(declare-fun res!1662022 () Bool)

(assert (=> b!4070493 (=> (not res!1662022) (not e!2526213))))

(assert (=> b!4070493 (= res!1662022 (= (size!32504 lt!1457220) (+ (size!32504 lt!1457175) (size!32504 suffixResult!105))))))

(declare-fun b!4070492 () Bool)

(assert (=> b!4070492 (= e!2526214 (Cons!43475 (h!48895 lt!1457175) (++!11390 (t!337022 lt!1457175) suffixResult!105)))))

(declare-fun b!4070494 () Bool)

(assert (=> b!4070494 (= e!2526213 (or (not (= suffixResult!105 Nil!43475)) (= lt!1457220 lt!1457175)))))

(assert (= (and d!1209881 c!702627) b!4070491))

(assert (= (and d!1209881 (not c!702627)) b!4070492))

(assert (= (and d!1209881 res!1662023) b!4070493))

(assert (= (and b!4070493 res!1662022) b!4070494))

(declare-fun m!4679587 () Bool)

(assert (=> d!1209881 m!4679587))

(declare-fun m!4679591 () Bool)

(assert (=> d!1209881 m!4679591))

(declare-fun m!4679597 () Bool)

(assert (=> d!1209881 m!4679597))

(declare-fun m!4679599 () Bool)

(assert (=> b!4070493 m!4679599))

(assert (=> b!4070493 m!4679443))

(declare-fun m!4679601 () Bool)

(assert (=> b!4070493 m!4679601))

(declare-fun m!4679603 () Bool)

(assert (=> b!4070492 m!4679603))

(assert (=> b!4070370 d!1209881))

(declare-fun d!1209889 () Bool)

(declare-fun e!2526233 () Bool)

(assert (=> d!1209889 e!2526233))

(declare-fun res!1662041 () Bool)

(assert (=> d!1209889 (=> (not res!1662041) (not e!2526233))))

(declare-fun semiInverseModEq!2994 (Int Int) Bool)

(assert (=> d!1209889 (= res!1662041 (semiInverseModEq!2994 (toChars!9407 (transformation!6988 (rule!10096 token!484))) (toValue!9548 (transformation!6988 (rule!10096 token!484)))))))

(declare-fun Unit!63045 () Unit!63043)

(assert (=> d!1209889 (= (lemmaInv!1197 (transformation!6988 (rule!10096 token!484))) Unit!63045)))

(declare-fun b!4070522 () Bool)

(declare-fun equivClasses!2893 (Int Int) Bool)

(assert (=> b!4070522 (= e!2526233 (equivClasses!2893 (toChars!9407 (transformation!6988 (rule!10096 token!484))) (toValue!9548 (transformation!6988 (rule!10096 token!484)))))))

(assert (= (and d!1209889 res!1662041) b!4070522))

(declare-fun m!4679625 () Bool)

(assert (=> d!1209889 m!4679625))

(declare-fun m!4679627 () Bool)

(assert (=> b!4070522 m!4679627))

(assert (=> b!4070370 d!1209889))

(declare-fun d!1209895 () Bool)

(declare-fun res!1662057 () Bool)

(declare-fun e!2526243 () Bool)

(assert (=> d!1209895 (=> (not res!1662057) (not e!2526243))))

(declare-fun validRegex!5385 (Regex!11893) Bool)

(assert (=> d!1209895 (= res!1662057 (validRegex!5385 (regex!6988 (rule!10096 token!484))))))

(assert (=> d!1209895 (= (ruleValid!2918 thiss!21717 (rule!10096 token!484)) e!2526243)))

(declare-fun b!4070542 () Bool)

(declare-fun res!1662058 () Bool)

(assert (=> b!4070542 (=> (not res!1662058) (not e!2526243))))

(declare-fun nullable!4185 (Regex!11893) Bool)

(assert (=> b!4070542 (= res!1662058 (not (nullable!4185 (regex!6988 (rule!10096 token!484)))))))

(declare-fun b!4070543 () Bool)

(assert (=> b!4070543 (= e!2526243 (not (= (tag!7848 (rule!10096 token!484)) (String!49809 ""))))))

(assert (= (and d!1209895 res!1662057) b!4070542))

(assert (= (and b!4070542 res!1662058) b!4070543))

(declare-fun m!4679655 () Bool)

(assert (=> d!1209895 m!4679655))

(declare-fun m!4679659 () Bool)

(assert (=> b!4070542 m!4679659))

(assert (=> b!4070370 d!1209895))

(declare-fun d!1209903 () Bool)

(assert (=> d!1209903 (ruleValid!2918 thiss!21717 (rule!10096 token!484))))

(declare-fun lt!1457246 () Unit!63043)

(declare-fun choose!24839 (LexerInterface!6577 Rule!13776 List!43601) Unit!63043)

(assert (=> d!1209903 (= lt!1457246 (choose!24839 thiss!21717 (rule!10096 token!484) rules!2999))))

(declare-fun contains!8654 (List!43601 Rule!13776) Bool)

(assert (=> d!1209903 (contains!8654 rules!2999 (rule!10096 token!484))))

(assert (=> d!1209903 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1988 thiss!21717 (rule!10096 token!484) rules!2999) lt!1457246)))

(declare-fun bs!592553 () Bool)

(assert (= bs!592553 d!1209903))

(assert (=> bs!592553 m!4679421))

(declare-fun m!4679695 () Bool)

(assert (=> bs!592553 m!4679695))

(declare-fun m!4679699 () Bool)

(assert (=> bs!592553 m!4679699))

(assert (=> b!4070370 d!1209903))

(declare-fun d!1209913 () Bool)

(assert (=> d!1209913 (= (isEmpty!25951 rules!2999) ((_ is Nil!43477) rules!2999))))

(assert (=> b!4070372 d!1209913))

(declare-fun d!1209921 () Bool)

(declare-fun e!2526253 () Bool)

(assert (=> d!1209921 e!2526253))

(declare-fun res!1662070 () Bool)

(assert (=> d!1209921 (=> (not res!1662070) (not e!2526253))))

(declare-fun lt!1457250 () List!43599)

(assert (=> d!1209921 (= res!1662070 (= (content!6647 lt!1457250) ((_ map or) (content!6647 prefix!494) (content!6647 newSuffix!27))))))

(declare-fun e!2526254 () List!43599)

(assert (=> d!1209921 (= lt!1457250 e!2526254)))

(declare-fun c!702638 () Bool)

(assert (=> d!1209921 (= c!702638 ((_ is Nil!43475) prefix!494))))

(assert (=> d!1209921 (= (++!11390 prefix!494 newSuffix!27) lt!1457250)))

(declare-fun b!4070560 () Bool)

(assert (=> b!4070560 (= e!2526254 newSuffix!27)))

(declare-fun b!4070562 () Bool)

(declare-fun res!1662069 () Bool)

(assert (=> b!4070562 (=> (not res!1662069) (not e!2526253))))

(assert (=> b!4070562 (= res!1662069 (= (size!32504 lt!1457250) (+ (size!32504 prefix!494) (size!32504 newSuffix!27))))))

(declare-fun b!4070561 () Bool)

(assert (=> b!4070561 (= e!2526254 (Cons!43475 (h!48895 prefix!494) (++!11390 (t!337022 prefix!494) newSuffix!27)))))

(declare-fun b!4070563 () Bool)

(assert (=> b!4070563 (= e!2526253 (or (not (= newSuffix!27 Nil!43475)) (= lt!1457250 prefix!494)))))

(assert (= (and d!1209921 c!702638) b!4070560))

(assert (= (and d!1209921 (not c!702638)) b!4070561))

(assert (= (and d!1209921 res!1662070) b!4070562))

(assert (= (and b!4070562 res!1662069) b!4070563))

(declare-fun m!4679725 () Bool)

(assert (=> d!1209921 m!4679725))

(declare-fun m!4679727 () Bool)

(assert (=> d!1209921 m!4679727))

(declare-fun m!4679729 () Bool)

(assert (=> d!1209921 m!4679729))

(declare-fun m!4679731 () Bool)

(assert (=> b!4070562 m!4679731))

(assert (=> b!4070562 m!4679445))

(assert (=> b!4070562 m!4679427))

(declare-fun m!4679733 () Bool)

(assert (=> b!4070561 m!4679733))

(assert (=> b!4070382 d!1209921))

(declare-fun d!1209923 () Bool)

(declare-fun e!2526255 () Bool)

(assert (=> d!1209923 e!2526255))

(declare-fun res!1662072 () Bool)

(assert (=> d!1209923 (=> (not res!1662072) (not e!2526255))))

(declare-fun lt!1457253 () List!43599)

(assert (=> d!1209923 (= res!1662072 (= (content!6647 lt!1457253) ((_ map or) (content!6647 lt!1457175) (content!6647 newSuffixResult!27))))))

(declare-fun e!2526256 () List!43599)

(assert (=> d!1209923 (= lt!1457253 e!2526256)))

(declare-fun c!702639 () Bool)

(assert (=> d!1209923 (= c!702639 ((_ is Nil!43475) lt!1457175))))

(assert (=> d!1209923 (= (++!11390 lt!1457175 newSuffixResult!27) lt!1457253)))

(declare-fun b!4070564 () Bool)

(assert (=> b!4070564 (= e!2526256 newSuffixResult!27)))

(declare-fun b!4070566 () Bool)

(declare-fun res!1662071 () Bool)

(assert (=> b!4070566 (=> (not res!1662071) (not e!2526255))))

(assert (=> b!4070566 (= res!1662071 (= (size!32504 lt!1457253) (+ (size!32504 lt!1457175) (size!32504 newSuffixResult!27))))))

(declare-fun b!4070565 () Bool)

(assert (=> b!4070565 (= e!2526256 (Cons!43475 (h!48895 lt!1457175) (++!11390 (t!337022 lt!1457175) newSuffixResult!27)))))

(declare-fun b!4070567 () Bool)

(assert (=> b!4070567 (= e!2526255 (or (not (= newSuffixResult!27 Nil!43475)) (= lt!1457253 lt!1457175)))))

(assert (= (and d!1209923 c!702639) b!4070564))

(assert (= (and d!1209923 (not c!702639)) b!4070565))

(assert (= (and d!1209923 res!1662072) b!4070566))

(assert (= (and b!4070566 res!1662071) b!4070567))

(declare-fun m!4679741 () Bool)

(assert (=> d!1209923 m!4679741))

(assert (=> d!1209923 m!4679591))

(declare-fun m!4679743 () Bool)

(assert (=> d!1209923 m!4679743))

(declare-fun m!4679747 () Bool)

(assert (=> b!4070566 m!4679747))

(assert (=> b!4070566 m!4679443))

(declare-fun m!4679749 () Bool)

(assert (=> b!4070566 m!4679749))

(declare-fun m!4679751 () Bool)

(assert (=> b!4070565 m!4679751))

(assert (=> b!4070382 d!1209923))

(declare-fun d!1209929 () Bool)

(declare-fun lt!1457257 () Int)

(assert (=> d!1209929 (>= lt!1457257 0)))

(declare-fun e!2526259 () Int)

(assert (=> d!1209929 (= lt!1457257 e!2526259)))

(declare-fun c!702642 () Bool)

(assert (=> d!1209929 (= c!702642 ((_ is Nil!43475) lt!1457175))))

(assert (=> d!1209929 (= (size!32504 lt!1457175) lt!1457257)))

(declare-fun b!4070572 () Bool)

(assert (=> b!4070572 (= e!2526259 0)))

(declare-fun b!4070573 () Bool)

(assert (=> b!4070573 (= e!2526259 (+ 1 (size!32504 (t!337022 lt!1457175))))))

(assert (= (and d!1209929 c!702642) b!4070572))

(assert (= (and d!1209929 (not c!702642)) b!4070573))

(declare-fun m!4679757 () Bool)

(assert (=> b!4070573 m!4679757))

(assert (=> b!4070361 d!1209929))

(declare-fun d!1209937 () Bool)

(declare-fun lt!1457261 () Int)

(assert (=> d!1209937 (>= lt!1457261 0)))

(declare-fun e!2526261 () Int)

(assert (=> d!1209937 (= lt!1457261 e!2526261)))

(declare-fun c!702644 () Bool)

(assert (=> d!1209937 (= c!702644 ((_ is Nil!43475) prefix!494))))

(assert (=> d!1209937 (= (size!32504 prefix!494) lt!1457261)))

(declare-fun b!4070576 () Bool)

(assert (=> b!4070576 (= e!2526261 0)))

(declare-fun b!4070577 () Bool)

(assert (=> b!4070577 (= e!2526261 (+ 1 (size!32504 (t!337022 prefix!494))))))

(assert (= (and d!1209937 c!702644) b!4070576))

(assert (= (and d!1209937 (not c!702644)) b!4070577))

(declare-fun m!4679767 () Bool)

(assert (=> b!4070577 m!4679767))

(assert (=> b!4070361 d!1209937))

(declare-fun d!1209941 () Bool)

(declare-fun list!16214 (Conc!13199) List!43599)

(assert (=> d!1209941 (= (list!16212 (charsOf!4804 token!484)) (list!16214 (c!702598 (charsOf!4804 token!484))))))

(declare-fun bs!592557 () Bool)

(assert (= bs!592557 d!1209941))

(declare-fun m!4679785 () Bool)

(assert (=> bs!592557 m!4679785))

(assert (=> b!4070361 d!1209941))

(declare-fun d!1209951 () Bool)

(declare-fun lt!1457267 () BalanceConc!25992)

(assert (=> d!1209951 (= (list!16212 lt!1457267) (originalCharacters!7588 token!484))))

(declare-fun dynLambda!18468 (Int TokenValue!7218) BalanceConc!25992)

(assert (=> d!1209951 (= lt!1457267 (dynLambda!18468 (toChars!9407 (transformation!6988 (rule!10096 token!484))) (value!219792 token!484)))))

(assert (=> d!1209951 (= (charsOf!4804 token!484) lt!1457267)))

(declare-fun b_lambda!118915 () Bool)

(assert (=> (not b_lambda!118915) (not d!1209951)))

(declare-fun tb!244653 () Bool)

(declare-fun t!337030 () Bool)

(assert (=> (and b!4070380 (= (toChars!9407 (transformation!6988 (h!48897 rules!2999))) (toChars!9407 (transformation!6988 (rule!10096 token!484)))) t!337030) tb!244653))

(declare-fun b!4070594 () Bool)

(declare-fun e!2526273 () Bool)

(declare-fun tp!1231790 () Bool)

(declare-fun inv!58124 (Conc!13199) Bool)

(assert (=> b!4070594 (= e!2526273 (and (inv!58124 (c!702598 (dynLambda!18468 (toChars!9407 (transformation!6988 (rule!10096 token!484))) (value!219792 token!484)))) tp!1231790))))

(declare-fun result!296532 () Bool)

(declare-fun inv!58125 (BalanceConc!25992) Bool)

(assert (=> tb!244653 (= result!296532 (and (inv!58125 (dynLambda!18468 (toChars!9407 (transformation!6988 (rule!10096 token!484))) (value!219792 token!484))) e!2526273))))

(assert (= tb!244653 b!4070594))

(declare-fun m!4679787 () Bool)

(assert (=> b!4070594 m!4679787))

(declare-fun m!4679789 () Bool)

(assert (=> tb!244653 m!4679789))

(assert (=> d!1209951 t!337030))

(declare-fun b_and!312803 () Bool)

(assert (= b_and!312789 (and (=> t!337030 result!296532) b_and!312803)))

(declare-fun t!337032 () Bool)

(declare-fun tb!244655 () Bool)

(assert (=> (and b!4070357 (= (toChars!9407 (transformation!6988 (rule!10096 token!484))) (toChars!9407 (transformation!6988 (rule!10096 token!484)))) t!337032) tb!244655))

(declare-fun result!296536 () Bool)

(assert (= result!296536 result!296532))

(assert (=> d!1209951 t!337032))

(declare-fun b_and!312805 () Bool)

(assert (= b_and!312793 (and (=> t!337032 result!296536) b_and!312805)))

(declare-fun m!4679791 () Bool)

(assert (=> d!1209951 m!4679791))

(declare-fun m!4679793 () Bool)

(assert (=> d!1209951 m!4679793))

(assert (=> b!4070361 d!1209951))

(declare-fun call!288361 () Option!9402)

(declare-fun bm!288356 () Bool)

(assert (=> bm!288356 (= call!288361 (maxPrefixOneRule!2887 thiss!21717 (h!48897 rules!2999) lt!1457180))))

(declare-fun b!4070646 () Bool)

(declare-fun e!2526298 () Bool)

(declare-fun lt!1457302 () Option!9402)

(declare-fun get!14258 (Option!9402) tuple2!42526)

(assert (=> b!4070646 (= e!2526298 (contains!8654 rules!2999 (rule!10096 (_1!24397 (get!14258 lt!1457302)))))))

(declare-fun b!4070647 () Bool)

(declare-fun res!1662129 () Bool)

(assert (=> b!4070647 (=> (not res!1662129) (not e!2526298))))

(assert (=> b!4070647 (= res!1662129 (matchR!5846 (regex!6988 (rule!10096 (_1!24397 (get!14258 lt!1457302)))) (list!16212 (charsOf!4804 (_1!24397 (get!14258 lt!1457302))))))))

(declare-fun b!4070648 () Bool)

(declare-fun res!1662124 () Bool)

(assert (=> b!4070648 (=> (not res!1662124) (not e!2526298))))

(assert (=> b!4070648 (= res!1662124 (= (list!16212 (charsOf!4804 (_1!24397 (get!14258 lt!1457302)))) (originalCharacters!7588 (_1!24397 (get!14258 lt!1457302)))))))

(declare-fun b!4070649 () Bool)

(declare-fun e!2526299 () Bool)

(assert (=> b!4070649 (= e!2526299 e!2526298)))

(declare-fun res!1662126 () Bool)

(assert (=> b!4070649 (=> (not res!1662126) (not e!2526298))))

(declare-fun isDefined!7140 (Option!9402) Bool)

(assert (=> b!4070649 (= res!1662126 (isDefined!7140 lt!1457302))))

(declare-fun b!4070650 () Bool)

(declare-fun res!1662127 () Bool)

(assert (=> b!4070650 (=> (not res!1662127) (not e!2526298))))

(assert (=> b!4070650 (= res!1662127 (< (size!32504 (_2!24397 (get!14258 lt!1457302))) (size!32504 lt!1457180)))))

(declare-fun b!4070651 () Bool)

(declare-fun res!1662130 () Bool)

(assert (=> b!4070651 (=> (not res!1662130) (not e!2526298))))

(assert (=> b!4070651 (= res!1662130 (= (value!219792 (_1!24397 (get!14258 lt!1457302))) (apply!10177 (transformation!6988 (rule!10096 (_1!24397 (get!14258 lt!1457302)))) (seqFromList!5205 (originalCharacters!7588 (_1!24397 (get!14258 lt!1457302)))))))))

(declare-fun b!4070652 () Bool)

(declare-fun e!2526300 () Option!9402)

(assert (=> b!4070652 (= e!2526300 call!288361)))

(declare-fun d!1209953 () Bool)

(assert (=> d!1209953 e!2526299))

(declare-fun res!1662125 () Bool)

(assert (=> d!1209953 (=> res!1662125 e!2526299)))

(assert (=> d!1209953 (= res!1662125 (isEmpty!25950 lt!1457302))))

(assert (=> d!1209953 (= lt!1457302 e!2526300)))

(declare-fun c!702650 () Bool)

(assert (=> d!1209953 (= c!702650 (and ((_ is Cons!43477) rules!2999) ((_ is Nil!43477) (t!337024 rules!2999))))))

(declare-fun lt!1457299 () Unit!63043)

(declare-fun lt!1457303 () Unit!63043)

(assert (=> d!1209953 (= lt!1457299 lt!1457303)))

(assert (=> d!1209953 (isPrefix!4075 lt!1457180 lt!1457180)))

(assert (=> d!1209953 (= lt!1457303 (lemmaIsPrefixRefl!2642 lt!1457180 lt!1457180))))

(declare-fun rulesValidInductive!2561 (LexerInterface!6577 List!43601) Bool)

(assert (=> d!1209953 (rulesValidInductive!2561 thiss!21717 rules!2999)))

(assert (=> d!1209953 (= (maxPrefix!3875 thiss!21717 rules!2999 lt!1457180) lt!1457302)))

(declare-fun b!4070653 () Bool)

(declare-fun lt!1457300 () Option!9402)

(declare-fun lt!1457301 () Option!9402)

(assert (=> b!4070653 (= e!2526300 (ite (and ((_ is None!9401) lt!1457300) ((_ is None!9401) lt!1457301)) None!9401 (ite ((_ is None!9401) lt!1457301) lt!1457300 (ite ((_ is None!9401) lt!1457300) lt!1457301 (ite (>= (size!32503 (_1!24397 (v!39835 lt!1457300))) (size!32503 (_1!24397 (v!39835 lt!1457301)))) lt!1457300 lt!1457301)))))))

(assert (=> b!4070653 (= lt!1457300 call!288361)))

(assert (=> b!4070653 (= lt!1457301 (maxPrefix!3875 thiss!21717 (t!337024 rules!2999) lt!1457180))))

(declare-fun b!4070654 () Bool)

(declare-fun res!1662128 () Bool)

(assert (=> b!4070654 (=> (not res!1662128) (not e!2526298))))

(assert (=> b!4070654 (= res!1662128 (= (++!11390 (list!16212 (charsOf!4804 (_1!24397 (get!14258 lt!1457302)))) (_2!24397 (get!14258 lt!1457302))) lt!1457180))))

(assert (= (and d!1209953 c!702650) b!4070652))

(assert (= (and d!1209953 (not c!702650)) b!4070653))

(assert (= (or b!4070652 b!4070653) bm!288356))

(assert (= (and d!1209953 (not res!1662125)) b!4070649))

(assert (= (and b!4070649 res!1662126) b!4070648))

(assert (= (and b!4070648 res!1662124) b!4070650))

(assert (= (and b!4070650 res!1662127) b!4070654))

(assert (= (and b!4070654 res!1662128) b!4070651))

(assert (= (and b!4070651 res!1662130) b!4070647))

(assert (= (and b!4070647 res!1662129) b!4070646))

(declare-fun m!4679863 () Bool)

(assert (=> bm!288356 m!4679863))

(declare-fun m!4679865 () Bool)

(assert (=> b!4070648 m!4679865))

(declare-fun m!4679867 () Bool)

(assert (=> b!4070648 m!4679867))

(assert (=> b!4070648 m!4679867))

(declare-fun m!4679869 () Bool)

(assert (=> b!4070648 m!4679869))

(declare-fun m!4679871 () Bool)

(assert (=> b!4070653 m!4679871))

(assert (=> b!4070651 m!4679865))

(declare-fun m!4679873 () Bool)

(assert (=> b!4070651 m!4679873))

(assert (=> b!4070651 m!4679873))

(declare-fun m!4679875 () Bool)

(assert (=> b!4070651 m!4679875))

(assert (=> b!4070650 m!4679865))

(declare-fun m!4679877 () Bool)

(assert (=> b!4070650 m!4679877))

(declare-fun m!4679879 () Bool)

(assert (=> b!4070650 m!4679879))

(declare-fun m!4679881 () Bool)

(assert (=> d!1209953 m!4679881))

(assert (=> d!1209953 m!4679487))

(assert (=> d!1209953 m!4679489))

(declare-fun m!4679883 () Bool)

(assert (=> d!1209953 m!4679883))

(declare-fun m!4679885 () Bool)

(assert (=> b!4070649 m!4679885))

(assert (=> b!4070654 m!4679865))

(assert (=> b!4070654 m!4679867))

(assert (=> b!4070654 m!4679867))

(assert (=> b!4070654 m!4679869))

(assert (=> b!4070654 m!4679869))

(declare-fun m!4679893 () Bool)

(assert (=> b!4070654 m!4679893))

(assert (=> b!4070647 m!4679865))

(assert (=> b!4070647 m!4679867))

(assert (=> b!4070647 m!4679867))

(assert (=> b!4070647 m!4679869))

(assert (=> b!4070647 m!4679869))

(declare-fun m!4679911 () Bool)

(assert (=> b!4070647 m!4679911))

(assert (=> b!4070646 m!4679865))

(declare-fun m!4679915 () Bool)

(assert (=> b!4070646 m!4679915))

(assert (=> b!4070368 d!1209953))

(declare-fun d!1209973 () Bool)

(declare-fun e!2526308 () Bool)

(assert (=> d!1209973 e!2526308))

(declare-fun res!1662142 () Bool)

(assert (=> d!1209973 (=> (not res!1662142) (not e!2526308))))

(declare-fun lt!1457309 () List!43599)

(assert (=> d!1209973 (= res!1662142 (= (content!6647 lt!1457309) ((_ map or) (content!6647 prefix!494) (content!6647 suffix!1299))))))

(declare-fun e!2526309 () List!43599)

(assert (=> d!1209973 (= lt!1457309 e!2526309)))

(declare-fun c!702652 () Bool)

(assert (=> d!1209973 (= c!702652 ((_ is Nil!43475) prefix!494))))

(assert (=> d!1209973 (= (++!11390 prefix!494 suffix!1299) lt!1457309)))

(declare-fun b!4070667 () Bool)

(assert (=> b!4070667 (= e!2526309 suffix!1299)))

(declare-fun b!4070669 () Bool)

(declare-fun res!1662141 () Bool)

(assert (=> b!4070669 (=> (not res!1662141) (not e!2526308))))

(assert (=> b!4070669 (= res!1662141 (= (size!32504 lt!1457309) (+ (size!32504 prefix!494) (size!32504 suffix!1299))))))

(declare-fun b!4070668 () Bool)

(assert (=> b!4070668 (= e!2526309 (Cons!43475 (h!48895 prefix!494) (++!11390 (t!337022 prefix!494) suffix!1299)))))

(declare-fun b!4070670 () Bool)

(assert (=> b!4070670 (= e!2526308 (or (not (= suffix!1299 Nil!43475)) (= lt!1457309 prefix!494)))))

(assert (= (and d!1209973 c!702652) b!4070667))

(assert (= (and d!1209973 (not c!702652)) b!4070668))

(assert (= (and d!1209973 res!1662142) b!4070669))

(assert (= (and b!4070669 res!1662141) b!4070670))

(declare-fun m!4679933 () Bool)

(assert (=> d!1209973 m!4679933))

(assert (=> d!1209973 m!4679727))

(declare-fun m!4679935 () Bool)

(assert (=> d!1209973 m!4679935))

(declare-fun m!4679937 () Bool)

(assert (=> b!4070669 m!4679937))

(assert (=> b!4070669 m!4679445))

(assert (=> b!4070669 m!4679425))

(declare-fun m!4679939 () Bool)

(assert (=> b!4070668 m!4679939))

(assert (=> b!4070368 d!1209973))

(declare-fun d!1209977 () Bool)

(declare-fun e!2526318 () Bool)

(assert (=> d!1209977 e!2526318))

(declare-fun res!1662151 () Bool)

(assert (=> d!1209977 (=> res!1662151 e!2526318)))

(declare-fun lt!1457312 () Bool)

(assert (=> d!1209977 (= res!1662151 (not lt!1457312))))

(declare-fun e!2526317 () Bool)

(assert (=> d!1209977 (= lt!1457312 e!2526317)))

(declare-fun res!1662153 () Bool)

(assert (=> d!1209977 (=> res!1662153 e!2526317)))

(assert (=> d!1209977 (= res!1662153 ((_ is Nil!43475) lt!1457175))))

(assert (=> d!1209977 (= (isPrefix!4075 lt!1457175 lt!1457169) lt!1457312)))

(declare-fun b!4070682 () Bool)

(assert (=> b!4070682 (= e!2526318 (>= (size!32504 lt!1457169) (size!32504 lt!1457175)))))

(declare-fun b!4070679 () Bool)

(declare-fun e!2526316 () Bool)

(assert (=> b!4070679 (= e!2526317 e!2526316)))

(declare-fun res!1662154 () Bool)

(assert (=> b!4070679 (=> (not res!1662154) (not e!2526316))))

(assert (=> b!4070679 (= res!1662154 (not ((_ is Nil!43475) lt!1457169)))))

(declare-fun b!4070681 () Bool)

(declare-fun tail!6321 (List!43599) List!43599)

(assert (=> b!4070681 (= e!2526316 (isPrefix!4075 (tail!6321 lt!1457175) (tail!6321 lt!1457169)))))

(declare-fun b!4070680 () Bool)

(declare-fun res!1662152 () Bool)

(assert (=> b!4070680 (=> (not res!1662152) (not e!2526316))))

(declare-fun head!8589 (List!43599) C!23972)

(assert (=> b!4070680 (= res!1662152 (= (head!8589 lt!1457175) (head!8589 lt!1457169)))))

(assert (= (and d!1209977 (not res!1662153)) b!4070679))

(assert (= (and b!4070679 res!1662154) b!4070680))

(assert (= (and b!4070680 res!1662152) b!4070681))

(assert (= (and d!1209977 (not res!1662151)) b!4070682))

(declare-fun m!4679941 () Bool)

(assert (=> b!4070682 m!4679941))

(assert (=> b!4070682 m!4679443))

(declare-fun m!4679943 () Bool)

(assert (=> b!4070681 m!4679943))

(declare-fun m!4679945 () Bool)

(assert (=> b!4070681 m!4679945))

(assert (=> b!4070681 m!4679943))

(assert (=> b!4070681 m!4679945))

(declare-fun m!4679947 () Bool)

(assert (=> b!4070681 m!4679947))

(declare-fun m!4679949 () Bool)

(assert (=> b!4070680 m!4679949))

(declare-fun m!4679951 () Bool)

(assert (=> b!4070680 m!4679951))

(assert (=> b!4070379 d!1209977))

(declare-fun b!4070810 () Bool)

(declare-fun res!1662218 () Bool)

(declare-fun e!2526390 () Bool)

(assert (=> b!4070810 (=> (not res!1662218) (not e!2526390))))

(declare-fun lt!1457347 () Option!9402)

(assert (=> b!4070810 (= res!1662218 (= (++!11390 (list!16212 (charsOf!4804 (_1!24397 (get!14258 lt!1457347)))) (_2!24397 (get!14258 lt!1457347))) lt!1457180))))

(declare-fun b!4070811 () Bool)

(declare-fun res!1662215 () Bool)

(assert (=> b!4070811 (=> (not res!1662215) (not e!2526390))))

(assert (=> b!4070811 (= res!1662215 (< (size!32504 (_2!24397 (get!14258 lt!1457347))) (size!32504 lt!1457180)))))

(declare-fun b!4070812 () Bool)

(declare-fun res!1662220 () Bool)

(assert (=> b!4070812 (=> (not res!1662220) (not e!2526390))))

(assert (=> b!4070812 (= res!1662220 (= (value!219792 (_1!24397 (get!14258 lt!1457347))) (apply!10177 (transformation!6988 (rule!10096 (_1!24397 (get!14258 lt!1457347)))) (seqFromList!5205 (originalCharacters!7588 (_1!24397 (get!14258 lt!1457347)))))))))

(declare-fun b!4070813 () Bool)

(assert (=> b!4070813 (= e!2526390 (= (size!32503 (_1!24397 (get!14258 lt!1457347))) (size!32504 (originalCharacters!7588 (_1!24397 (get!14258 lt!1457347))))))))

(declare-fun b!4070814 () Bool)

(declare-fun e!2526391 () Option!9402)

(declare-datatypes ((tuple2!42530 0))(
  ( (tuple2!42531 (_1!24399 List!43599) (_2!24399 List!43599)) )
))
(declare-fun lt!1457345 () tuple2!42530)

(declare-fun size!32506 (BalanceConc!25992) Int)

(assert (=> b!4070814 (= e!2526391 (Some!9401 (tuple2!42527 (Token!13115 (apply!10177 (transformation!6988 (rule!10096 token!484)) (seqFromList!5205 (_1!24399 lt!1457345))) (rule!10096 token!484) (size!32506 (seqFromList!5205 (_1!24399 lt!1457345))) (_1!24399 lt!1457345)) (_2!24399 lt!1457345))))))

(declare-fun lt!1457348 () Unit!63043)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1396 (Regex!11893 List!43599) Unit!63043)

(assert (=> b!4070814 (= lt!1457348 (longestMatchIsAcceptedByMatchOrIsEmpty!1396 (regex!6988 (rule!10096 token!484)) lt!1457180))))

(declare-fun res!1662217 () Bool)

(declare-fun isEmpty!25953 (List!43599) Bool)

(declare-fun findLongestMatchInner!1423 (Regex!11893 List!43599 Int List!43599 List!43599 Int) tuple2!42530)

(assert (=> b!4070814 (= res!1662217 (isEmpty!25953 (_1!24399 (findLongestMatchInner!1423 (regex!6988 (rule!10096 token!484)) Nil!43475 (size!32504 Nil!43475) lt!1457180 lt!1457180 (size!32504 lt!1457180)))))))

(declare-fun e!2526392 () Bool)

(assert (=> b!4070814 (=> res!1662217 e!2526392)))

(assert (=> b!4070814 e!2526392))

(declare-fun lt!1457344 () Unit!63043)

(assert (=> b!4070814 (= lt!1457344 lt!1457348)))

(declare-fun lt!1457346 () Unit!63043)

(declare-fun lemmaSemiInverse!1955 (TokenValueInjection!13864 BalanceConc!25992) Unit!63043)

(assert (=> b!4070814 (= lt!1457346 (lemmaSemiInverse!1955 (transformation!6988 (rule!10096 token!484)) (seqFromList!5205 (_1!24399 lt!1457345))))))

(declare-fun d!1209979 () Bool)

(declare-fun e!2526393 () Bool)

(assert (=> d!1209979 e!2526393))

(declare-fun res!1662221 () Bool)

(assert (=> d!1209979 (=> res!1662221 e!2526393)))

(assert (=> d!1209979 (= res!1662221 (isEmpty!25950 lt!1457347))))

(assert (=> d!1209979 (= lt!1457347 e!2526391)))

(declare-fun c!702667 () Bool)

(assert (=> d!1209979 (= c!702667 (isEmpty!25953 (_1!24399 lt!1457345)))))

(declare-fun findLongestMatch!1336 (Regex!11893 List!43599) tuple2!42530)

(assert (=> d!1209979 (= lt!1457345 (findLongestMatch!1336 (regex!6988 (rule!10096 token!484)) lt!1457180))))

(assert (=> d!1209979 (ruleValid!2918 thiss!21717 (rule!10096 token!484))))

(assert (=> d!1209979 (= (maxPrefixOneRule!2887 thiss!21717 (rule!10096 token!484) lt!1457180) lt!1457347)))

(declare-fun b!4070815 () Bool)

(assert (=> b!4070815 (= e!2526392 (matchR!5846 (regex!6988 (rule!10096 token!484)) (_1!24399 (findLongestMatchInner!1423 (regex!6988 (rule!10096 token!484)) Nil!43475 (size!32504 Nil!43475) lt!1457180 lt!1457180 (size!32504 lt!1457180)))))))

(declare-fun b!4070816 () Bool)

(assert (=> b!4070816 (= e!2526393 e!2526390)))

(declare-fun res!1662219 () Bool)

(assert (=> b!4070816 (=> (not res!1662219) (not e!2526390))))

(assert (=> b!4070816 (= res!1662219 (matchR!5846 (regex!6988 (rule!10096 token!484)) (list!16212 (charsOf!4804 (_1!24397 (get!14258 lt!1457347))))))))

(declare-fun b!4070817 () Bool)

(assert (=> b!4070817 (= e!2526391 None!9401)))

(declare-fun b!4070818 () Bool)

(declare-fun res!1662216 () Bool)

(assert (=> b!4070818 (=> (not res!1662216) (not e!2526390))))

(assert (=> b!4070818 (= res!1662216 (= (rule!10096 (_1!24397 (get!14258 lt!1457347))) (rule!10096 token!484)))))

(assert (= (and d!1209979 c!702667) b!4070817))

(assert (= (and d!1209979 (not c!702667)) b!4070814))

(assert (= (and b!4070814 (not res!1662217)) b!4070815))

(assert (= (and d!1209979 (not res!1662221)) b!4070816))

(assert (= (and b!4070816 res!1662219) b!4070810))

(assert (= (and b!4070810 res!1662218) b!4070811))

(assert (= (and b!4070811 res!1662215) b!4070818))

(assert (= (and b!4070818 res!1662216) b!4070812))

(assert (= (and b!4070812 res!1662220) b!4070813))

(declare-fun m!4680023 () Bool)

(assert (=> b!4070815 m!4680023))

(assert (=> b!4070815 m!4679879))

(assert (=> b!4070815 m!4680023))

(assert (=> b!4070815 m!4679879))

(declare-fun m!4680025 () Bool)

(assert (=> b!4070815 m!4680025))

(declare-fun m!4680027 () Bool)

(assert (=> b!4070815 m!4680027))

(declare-fun m!4680029 () Bool)

(assert (=> b!4070814 m!4680029))

(declare-fun m!4680031 () Bool)

(assert (=> b!4070814 m!4680031))

(declare-fun m!4680033 () Bool)

(assert (=> b!4070814 m!4680033))

(declare-fun m!4680035 () Bool)

(assert (=> b!4070814 m!4680035))

(assert (=> b!4070814 m!4680031))

(declare-fun m!4680037 () Bool)

(assert (=> b!4070814 m!4680037))

(assert (=> b!4070814 m!4679879))

(assert (=> b!4070814 m!4680023))

(assert (=> b!4070814 m!4679879))

(assert (=> b!4070814 m!4680025))

(assert (=> b!4070814 m!4680023))

(assert (=> b!4070814 m!4680031))

(declare-fun m!4680039 () Bool)

(assert (=> b!4070814 m!4680039))

(assert (=> b!4070814 m!4680031))

(declare-fun m!4680041 () Bool)

(assert (=> b!4070816 m!4680041))

(declare-fun m!4680043 () Bool)

(assert (=> b!4070816 m!4680043))

(assert (=> b!4070816 m!4680043))

(declare-fun m!4680045 () Bool)

(assert (=> b!4070816 m!4680045))

(assert (=> b!4070816 m!4680045))

(declare-fun m!4680047 () Bool)

(assert (=> b!4070816 m!4680047))

(assert (=> b!4070810 m!4680041))

(assert (=> b!4070810 m!4680043))

(assert (=> b!4070810 m!4680043))

(assert (=> b!4070810 m!4680045))

(assert (=> b!4070810 m!4680045))

(declare-fun m!4680049 () Bool)

(assert (=> b!4070810 m!4680049))

(assert (=> b!4070813 m!4680041))

(declare-fun m!4680051 () Bool)

(assert (=> b!4070813 m!4680051))

(assert (=> b!4070811 m!4680041))

(declare-fun m!4680053 () Bool)

(assert (=> b!4070811 m!4680053))

(assert (=> b!4070811 m!4679879))

(assert (=> b!4070818 m!4680041))

(declare-fun m!4680055 () Bool)

(assert (=> d!1209979 m!4680055))

(declare-fun m!4680057 () Bool)

(assert (=> d!1209979 m!4680057))

(declare-fun m!4680059 () Bool)

(assert (=> d!1209979 m!4680059))

(assert (=> d!1209979 m!4679421))

(assert (=> b!4070812 m!4680041))

(declare-fun m!4680061 () Bool)

(assert (=> b!4070812 m!4680061))

(assert (=> b!4070812 m!4680061))

(declare-fun m!4680063 () Bool)

(assert (=> b!4070812 m!4680063))

(assert (=> b!4070379 d!1209979))

(declare-fun d!1210009 () Bool)

(declare-fun fromListB!2380 (List!43599) BalanceConc!25992)

(assert (=> d!1210009 (= (seqFromList!5205 lt!1457175) (fromListB!2380 lt!1457175))))

(declare-fun bs!592567 () Bool)

(assert (= bs!592567 d!1210009))

(declare-fun m!4680065 () Bool)

(assert (=> bs!592567 m!4680065))

(assert (=> b!4070379 d!1210009))

(declare-fun d!1210011 () Bool)

(assert (=> d!1210011 (isPrefix!4075 lt!1457175 (++!11390 lt!1457175 lt!1457155))))

(declare-fun lt!1457351 () Unit!63043)

(declare-fun choose!24841 (List!43599 List!43599) Unit!63043)

(assert (=> d!1210011 (= lt!1457351 (choose!24841 lt!1457175 lt!1457155))))

(assert (=> d!1210011 (= (lemmaConcatTwoListThenFirstIsPrefix!2910 lt!1457175 lt!1457155) lt!1457351)))

(declare-fun bs!592568 () Bool)

(assert (= bs!592568 d!1210011))

(assert (=> bs!592568 m!4679451))

(assert (=> bs!592568 m!4679451))

(declare-fun m!4680067 () Bool)

(assert (=> bs!592568 m!4680067))

(declare-fun m!4680069 () Bool)

(assert (=> bs!592568 m!4680069))

(assert (=> b!4070379 d!1210011))

(declare-fun d!1210013 () Bool)

(assert (=> d!1210013 (= lt!1457155 suffixResult!105)))

(declare-fun lt!1457354 () Unit!63043)

(declare-fun choose!24842 (List!43599 List!43599 List!43599 List!43599 List!43599) Unit!63043)

(assert (=> d!1210013 (= lt!1457354 (choose!24842 lt!1457175 lt!1457155 lt!1457175 suffixResult!105 lt!1457180))))

(assert (=> d!1210013 (isPrefix!4075 lt!1457175 lt!1457180)))

(assert (=> d!1210013 (= (lemmaSamePrefixThenSameSuffix!2236 lt!1457175 lt!1457155 lt!1457175 suffixResult!105 lt!1457180) lt!1457354)))

(declare-fun bs!592569 () Bool)

(assert (= bs!592569 d!1210013))

(declare-fun m!4680071 () Bool)

(assert (=> bs!592569 m!4680071))

(assert (=> bs!592569 m!4679433))

(assert (=> b!4070379 d!1210013))

(declare-fun d!1210015 () Bool)

(assert (=> d!1210015 (= (maxPrefixOneRule!2887 thiss!21717 (rule!10096 token!484) lt!1457180) (Some!9401 (tuple2!42527 (Token!13115 (apply!10177 (transformation!6988 (rule!10096 token!484)) (seqFromList!5205 lt!1457175)) (rule!10096 token!484) (size!32504 lt!1457175) lt!1457175) suffixResult!105)))))

(declare-fun lt!1457357 () Unit!63043)

(declare-fun choose!24843 (LexerInterface!6577 List!43601 List!43599 List!43599 List!43599 Rule!13776) Unit!63043)

(assert (=> d!1210015 (= lt!1457357 (choose!24843 thiss!21717 rules!2999 lt!1457175 lt!1457180 suffixResult!105 (rule!10096 token!484)))))

(assert (=> d!1210015 (not (isEmpty!25951 rules!2999))))

(assert (=> d!1210015 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1693 thiss!21717 rules!2999 lt!1457175 lt!1457180 suffixResult!105 (rule!10096 token!484)) lt!1457357)))

(declare-fun bs!592570 () Bool)

(assert (= bs!592570 d!1210015))

(declare-fun m!4680073 () Bool)

(assert (=> bs!592570 m!4680073))

(assert (=> bs!592570 m!4679443))

(assert (=> bs!592570 m!4679461))

(assert (=> bs!592570 m!4679465))

(assert (=> bs!592570 m!4679459))

(assert (=> bs!592570 m!4679473))

(assert (=> bs!592570 m!4679461))

(assert (=> b!4070379 d!1210015))

(declare-fun d!1210017 () Bool)

(declare-fun dynLambda!18470 (Int BalanceConc!25992) TokenValue!7218)

(assert (=> d!1210017 (= (apply!10177 (transformation!6988 (rule!10096 token!484)) (seqFromList!5205 lt!1457175)) (dynLambda!18470 (toValue!9548 (transformation!6988 (rule!10096 token!484))) (seqFromList!5205 lt!1457175)))))

(declare-fun b_lambda!118925 () Bool)

(assert (=> (not b_lambda!118925) (not d!1210017)))

(declare-fun t!337042 () Bool)

(declare-fun tb!244665 () Bool)

(assert (=> (and b!4070380 (= (toValue!9548 (transformation!6988 (h!48897 rules!2999))) (toValue!9548 (transformation!6988 (rule!10096 token!484)))) t!337042) tb!244665))

(declare-fun result!296554 () Bool)

(assert (=> tb!244665 (= result!296554 (inv!21 (dynLambda!18470 (toValue!9548 (transformation!6988 (rule!10096 token!484))) (seqFromList!5205 lt!1457175))))))

(declare-fun m!4680075 () Bool)

(assert (=> tb!244665 m!4680075))

(assert (=> d!1210017 t!337042))

(declare-fun b_and!312815 () Bool)

(assert (= b_and!312787 (and (=> t!337042 result!296554) b_and!312815)))

(declare-fun t!337044 () Bool)

(declare-fun tb!244667 () Bool)

(assert (=> (and b!4070357 (= (toValue!9548 (transformation!6988 (rule!10096 token!484))) (toValue!9548 (transformation!6988 (rule!10096 token!484)))) t!337044) tb!244667))

(declare-fun result!296558 () Bool)

(assert (= result!296558 result!296554))

(assert (=> d!1210017 t!337044))

(declare-fun b_and!312817 () Bool)

(assert (= b_and!312791 (and (=> t!337044 result!296558) b_and!312817)))

(assert (=> d!1210017 m!4679461))

(declare-fun m!4680077 () Bool)

(assert (=> d!1210017 m!4680077))

(assert (=> b!4070379 d!1210017))

(declare-fun d!1210019 () Bool)

(declare-fun lt!1457358 () Int)

(assert (=> d!1210019 (>= lt!1457358 0)))

(declare-fun e!2526397 () Int)

(assert (=> d!1210019 (= lt!1457358 e!2526397)))

(declare-fun c!702668 () Bool)

(assert (=> d!1210019 (= c!702668 ((_ is Nil!43475) suffix!1299))))

(assert (=> d!1210019 (= (size!32504 suffix!1299) lt!1457358)))

(declare-fun b!4070821 () Bool)

(assert (=> b!4070821 (= e!2526397 0)))

(declare-fun b!4070822 () Bool)

(assert (=> b!4070822 (= e!2526397 (+ 1 (size!32504 (t!337022 suffix!1299))))))

(assert (= (and d!1210019 c!702668) b!4070821))

(assert (= (and d!1210019 (not c!702668)) b!4070822))

(declare-fun m!4680079 () Bool)

(assert (=> b!4070822 m!4680079))

(assert (=> b!4070378 d!1210019))

(declare-fun d!1210021 () Bool)

(declare-fun lt!1457359 () Int)

(assert (=> d!1210021 (>= lt!1457359 0)))

(declare-fun e!2526398 () Int)

(assert (=> d!1210021 (= lt!1457359 e!2526398)))

(declare-fun c!702669 () Bool)

(assert (=> d!1210021 (= c!702669 ((_ is Nil!43475) newSuffix!27))))

(assert (=> d!1210021 (= (size!32504 newSuffix!27) lt!1457359)))

(declare-fun b!4070823 () Bool)

(assert (=> b!4070823 (= e!2526398 0)))

(declare-fun b!4070824 () Bool)

(assert (=> b!4070824 (= e!2526398 (+ 1 (size!32504 (t!337022 newSuffix!27))))))

(assert (= (and d!1210021 c!702669) b!4070823))

(assert (= (and d!1210021 (not c!702669)) b!4070824))

(declare-fun m!4680081 () Bool)

(assert (=> b!4070824 m!4680081))

(assert (=> b!4070378 d!1210021))

(declare-fun d!1210023 () Bool)

(declare-fun res!1662226 () Bool)

(declare-fun e!2526401 () Bool)

(assert (=> d!1210023 (=> (not res!1662226) (not e!2526401))))

(assert (=> d!1210023 (= res!1662226 (not (isEmpty!25953 (originalCharacters!7588 token!484))))))

(assert (=> d!1210023 (= (inv!58121 token!484) e!2526401)))

(declare-fun b!4070829 () Bool)

(declare-fun res!1662227 () Bool)

(assert (=> b!4070829 (=> (not res!1662227) (not e!2526401))))

(assert (=> b!4070829 (= res!1662227 (= (originalCharacters!7588 token!484) (list!16212 (dynLambda!18468 (toChars!9407 (transformation!6988 (rule!10096 token!484))) (value!219792 token!484)))))))

(declare-fun b!4070830 () Bool)

(assert (=> b!4070830 (= e!2526401 (= (size!32503 token!484) (size!32504 (originalCharacters!7588 token!484))))))

(assert (= (and d!1210023 res!1662226) b!4070829))

(assert (= (and b!4070829 res!1662227) b!4070830))

(declare-fun b_lambda!118927 () Bool)

(assert (=> (not b_lambda!118927) (not b!4070829)))

(assert (=> b!4070829 t!337030))

(declare-fun b_and!312819 () Bool)

(assert (= b_and!312803 (and (=> t!337030 result!296532) b_and!312819)))

(assert (=> b!4070829 t!337032))

(declare-fun b_and!312821 () Bool)

(assert (= b_and!312805 (and (=> t!337032 result!296536) b_and!312821)))

(declare-fun m!4680083 () Bool)

(assert (=> d!1210023 m!4680083))

(assert (=> b!4070829 m!4679793))

(assert (=> b!4070829 m!4679793))

(declare-fun m!4680085 () Bool)

(assert (=> b!4070829 m!4680085))

(assert (=> b!4070830 m!4679385))

(assert (=> start!384068 d!1210023))

(declare-fun d!1210025 () Bool)

(declare-fun e!2526422 () Bool)

(assert (=> d!1210025 e!2526422))

(declare-fun c!702676 () Bool)

(assert (=> d!1210025 (= c!702676 ((_ is EmptyExpr!11893) (regex!6988 (rule!10096 token!484))))))

(declare-fun lt!1457362 () Bool)

(declare-fun e!2526420 () Bool)

(assert (=> d!1210025 (= lt!1457362 e!2526420)))

(declare-fun c!702678 () Bool)

(assert (=> d!1210025 (= c!702678 (isEmpty!25953 lt!1457175))))

(assert (=> d!1210025 (validRegex!5385 (regex!6988 (rule!10096 token!484)))))

(assert (=> d!1210025 (= (matchR!5846 (regex!6988 (rule!10096 token!484)) lt!1457175) lt!1457362)))

(declare-fun b!4070859 () Bool)

(declare-fun e!2526416 () Bool)

(assert (=> b!4070859 (= e!2526416 (not lt!1457362))))

(declare-fun b!4070860 () Bool)

(declare-fun res!1662246 () Bool)

(declare-fun e!2526418 () Bool)

(assert (=> b!4070860 (=> res!1662246 e!2526418)))

(assert (=> b!4070860 (= res!1662246 (not ((_ is ElementMatch!11893) (regex!6988 (rule!10096 token!484)))))))

(assert (=> b!4070860 (= e!2526416 e!2526418)))

(declare-fun b!4070861 () Bool)

(assert (=> b!4070861 (= e!2526420 (nullable!4185 (regex!6988 (rule!10096 token!484))))))

(declare-fun b!4070862 () Bool)

(declare-fun e!2526419 () Bool)

(assert (=> b!4070862 (= e!2526418 e!2526419)))

(declare-fun res!1662247 () Bool)

(assert (=> b!4070862 (=> (not res!1662247) (not e!2526419))))

(assert (=> b!4070862 (= res!1662247 (not lt!1457362))))

(declare-fun b!4070863 () Bool)

(declare-fun res!1662245 () Bool)

(assert (=> b!4070863 (=> res!1662245 e!2526418)))

(declare-fun e!2526417 () Bool)

(assert (=> b!4070863 (= res!1662245 e!2526417)))

(declare-fun res!1662248 () Bool)

(assert (=> b!4070863 (=> (not res!1662248) (not e!2526417))))

(assert (=> b!4070863 (= res!1662248 lt!1457362)))

(declare-fun b!4070864 () Bool)

(declare-fun res!1662251 () Bool)

(assert (=> b!4070864 (=> (not res!1662251) (not e!2526417))))

(declare-fun call!288367 () Bool)

(assert (=> b!4070864 (= res!1662251 (not call!288367))))

(declare-fun b!4070865 () Bool)

(assert (=> b!4070865 (= e!2526422 (= lt!1457362 call!288367))))

(declare-fun b!4070866 () Bool)

(declare-fun derivativeStep!3590 (Regex!11893 C!23972) Regex!11893)

(assert (=> b!4070866 (= e!2526420 (matchR!5846 (derivativeStep!3590 (regex!6988 (rule!10096 token!484)) (head!8589 lt!1457175)) (tail!6321 lt!1457175)))))

(declare-fun b!4070867 () Bool)

(declare-fun e!2526421 () Bool)

(assert (=> b!4070867 (= e!2526419 e!2526421)))

(declare-fun res!1662244 () Bool)

(assert (=> b!4070867 (=> res!1662244 e!2526421)))

(assert (=> b!4070867 (= res!1662244 call!288367)))

(declare-fun b!4070868 () Bool)

(declare-fun res!1662250 () Bool)

(assert (=> b!4070868 (=> (not res!1662250) (not e!2526417))))

(assert (=> b!4070868 (= res!1662250 (isEmpty!25953 (tail!6321 lt!1457175)))))

(declare-fun b!4070869 () Bool)

(assert (=> b!4070869 (= e!2526421 (not (= (head!8589 lt!1457175) (c!702599 (regex!6988 (rule!10096 token!484))))))))

(declare-fun b!4070870 () Bool)

(assert (=> b!4070870 (= e!2526417 (= (head!8589 lt!1457175) (c!702599 (regex!6988 (rule!10096 token!484)))))))

(declare-fun b!4070871 () Bool)

(assert (=> b!4070871 (= e!2526422 e!2526416)))

(declare-fun c!702677 () Bool)

(assert (=> b!4070871 (= c!702677 ((_ is EmptyLang!11893) (regex!6988 (rule!10096 token!484))))))

(declare-fun bm!288362 () Bool)

(assert (=> bm!288362 (= call!288367 (isEmpty!25953 lt!1457175))))

(declare-fun b!4070872 () Bool)

(declare-fun res!1662249 () Bool)

(assert (=> b!4070872 (=> res!1662249 e!2526421)))

(assert (=> b!4070872 (= res!1662249 (not (isEmpty!25953 (tail!6321 lt!1457175))))))

(assert (= (and d!1210025 c!702678) b!4070861))

(assert (= (and d!1210025 (not c!702678)) b!4070866))

(assert (= (and d!1210025 c!702676) b!4070865))

(assert (= (and d!1210025 (not c!702676)) b!4070871))

(assert (= (and b!4070871 c!702677) b!4070859))

(assert (= (and b!4070871 (not c!702677)) b!4070860))

(assert (= (and b!4070860 (not res!1662246)) b!4070863))

(assert (= (and b!4070863 res!1662248) b!4070864))

(assert (= (and b!4070864 res!1662251) b!4070868))

(assert (= (and b!4070868 res!1662250) b!4070870))

(assert (= (and b!4070863 (not res!1662245)) b!4070862))

(assert (= (and b!4070862 res!1662247) b!4070867))

(assert (= (and b!4070867 (not res!1662244)) b!4070872))

(assert (= (and b!4070872 (not res!1662249)) b!4070869))

(assert (= (or b!4070865 b!4070867 b!4070864) bm!288362))

(declare-fun m!4680087 () Bool)

(assert (=> bm!288362 m!4680087))

(assert (=> d!1210025 m!4680087))

(assert (=> d!1210025 m!4679655))

(assert (=> b!4070868 m!4679943))

(assert (=> b!4070868 m!4679943))

(declare-fun m!4680089 () Bool)

(assert (=> b!4070868 m!4680089))

(assert (=> b!4070872 m!4679943))

(assert (=> b!4070872 m!4679943))

(assert (=> b!4070872 m!4680089))

(assert (=> b!4070870 m!4679949))

(assert (=> b!4070869 m!4679949))

(assert (=> b!4070866 m!4679949))

(assert (=> b!4070866 m!4679949))

(declare-fun m!4680091 () Bool)

(assert (=> b!4070866 m!4680091))

(assert (=> b!4070866 m!4679943))

(assert (=> b!4070866 m!4680091))

(assert (=> b!4070866 m!4679943))

(declare-fun m!4680093 () Bool)

(assert (=> b!4070866 m!4680093))

(assert (=> b!4070861 m!4679659))

(assert (=> b!4070359 d!1210025))

(declare-fun d!1210027 () Bool)

(declare-fun e!2526425 () Bool)

(assert (=> d!1210027 e!2526425))

(declare-fun res!1662252 () Bool)

(assert (=> d!1210027 (=> res!1662252 e!2526425)))

(declare-fun lt!1457363 () Bool)

(assert (=> d!1210027 (= res!1662252 (not lt!1457363))))

(declare-fun e!2526424 () Bool)

(assert (=> d!1210027 (= lt!1457363 e!2526424)))

(declare-fun res!1662254 () Bool)

(assert (=> d!1210027 (=> res!1662254 e!2526424)))

(assert (=> d!1210027 (= res!1662254 ((_ is Nil!43475) lt!1457175))))

(assert (=> d!1210027 (= (isPrefix!4075 lt!1457175 lt!1457170) lt!1457363)))

(declare-fun b!4070876 () Bool)

(assert (=> b!4070876 (= e!2526425 (>= (size!32504 lt!1457170) (size!32504 lt!1457175)))))

(declare-fun b!4070873 () Bool)

(declare-fun e!2526423 () Bool)

(assert (=> b!4070873 (= e!2526424 e!2526423)))

(declare-fun res!1662255 () Bool)

(assert (=> b!4070873 (=> (not res!1662255) (not e!2526423))))

(assert (=> b!4070873 (= res!1662255 (not ((_ is Nil!43475) lt!1457170)))))

(declare-fun b!4070875 () Bool)

(assert (=> b!4070875 (= e!2526423 (isPrefix!4075 (tail!6321 lt!1457175) (tail!6321 lt!1457170)))))

(declare-fun b!4070874 () Bool)

(declare-fun res!1662253 () Bool)

(assert (=> b!4070874 (=> (not res!1662253) (not e!2526423))))

(assert (=> b!4070874 (= res!1662253 (= (head!8589 lt!1457175) (head!8589 lt!1457170)))))

(assert (= (and d!1210027 (not res!1662254)) b!4070873))

(assert (= (and b!4070873 res!1662255) b!4070874))

(assert (= (and b!4070874 res!1662253) b!4070875))

(assert (= (and d!1210027 (not res!1662252)) b!4070876))

(declare-fun m!4680095 () Bool)

(assert (=> b!4070876 m!4680095))

(assert (=> b!4070876 m!4679443))

(assert (=> b!4070875 m!4679943))

(declare-fun m!4680097 () Bool)

(assert (=> b!4070875 m!4680097))

(assert (=> b!4070875 m!4679943))

(assert (=> b!4070875 m!4680097))

(declare-fun m!4680099 () Bool)

(assert (=> b!4070875 m!4680099))

(assert (=> b!4070874 m!4679949))

(declare-fun m!4680101 () Bool)

(assert (=> b!4070874 m!4680101))

(assert (=> b!4070359 d!1210027))

(declare-fun d!1210029 () Bool)

(assert (=> d!1210029 (isPrefix!4075 lt!1457175 (++!11390 prefix!494 newSuffix!27))))

(declare-fun lt!1457366 () Unit!63043)

(declare-fun choose!24846 (List!43599 List!43599 List!43599) Unit!63043)

(assert (=> d!1210029 (= lt!1457366 (choose!24846 lt!1457175 prefix!494 newSuffix!27))))

(assert (=> d!1210029 (isPrefix!4075 lt!1457175 prefix!494)))

(assert (=> d!1210029 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!868 lt!1457175 prefix!494 newSuffix!27) lt!1457366)))

(declare-fun bs!592571 () Bool)

(assert (= bs!592571 d!1210029))

(assert (=> bs!592571 m!4679475))

(assert (=> bs!592571 m!4679475))

(declare-fun m!4680103 () Bool)

(assert (=> bs!592571 m!4680103))

(declare-fun m!4680105 () Bool)

(assert (=> bs!592571 m!4680105))

(assert (=> bs!592571 m!4679413))

(assert (=> b!4070359 d!1210029))

(declare-fun d!1210031 () Bool)

(assert (=> d!1210031 (isPrefix!4075 lt!1457175 (++!11390 prefix!494 suffix!1299))))

(declare-fun lt!1457367 () Unit!63043)

(assert (=> d!1210031 (= lt!1457367 (choose!24846 lt!1457175 prefix!494 suffix!1299))))

(assert (=> d!1210031 (isPrefix!4075 lt!1457175 prefix!494)))

(assert (=> d!1210031 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!868 lt!1457175 prefix!494 suffix!1299) lt!1457367)))

(declare-fun bs!592572 () Bool)

(assert (= bs!592572 d!1210031))

(assert (=> bs!592572 m!4679495))

(assert (=> bs!592572 m!4679495))

(declare-fun m!4680107 () Bool)

(assert (=> bs!592572 m!4680107))

(declare-fun m!4680109 () Bool)

(assert (=> bs!592572 m!4680109))

(assert (=> bs!592572 m!4679413))

(assert (=> b!4070359 d!1210031))

(declare-fun d!1210033 () Bool)

(declare-fun e!2526428 () Bool)

(assert (=> d!1210033 e!2526428))

(declare-fun res!1662256 () Bool)

(assert (=> d!1210033 (=> res!1662256 e!2526428)))

(declare-fun lt!1457368 () Bool)

(assert (=> d!1210033 (= res!1662256 (not lt!1457368))))

(declare-fun e!2526427 () Bool)

(assert (=> d!1210033 (= lt!1457368 e!2526427)))

(declare-fun res!1662258 () Bool)

(assert (=> d!1210033 (=> res!1662258 e!2526427)))

(assert (=> d!1210033 (= res!1662258 ((_ is Nil!43475) newSuffix!27))))

(assert (=> d!1210033 (= (isPrefix!4075 newSuffix!27 suffix!1299) lt!1457368)))

(declare-fun b!4070880 () Bool)

(assert (=> b!4070880 (= e!2526428 (>= (size!32504 suffix!1299) (size!32504 newSuffix!27)))))

(declare-fun b!4070877 () Bool)

(declare-fun e!2526426 () Bool)

(assert (=> b!4070877 (= e!2526427 e!2526426)))

(declare-fun res!1662259 () Bool)

(assert (=> b!4070877 (=> (not res!1662259) (not e!2526426))))

(assert (=> b!4070877 (= res!1662259 (not ((_ is Nil!43475) suffix!1299)))))

(declare-fun b!4070879 () Bool)

(assert (=> b!4070879 (= e!2526426 (isPrefix!4075 (tail!6321 newSuffix!27) (tail!6321 suffix!1299)))))

(declare-fun b!4070878 () Bool)

(declare-fun res!1662257 () Bool)

(assert (=> b!4070878 (=> (not res!1662257) (not e!2526426))))

(assert (=> b!4070878 (= res!1662257 (= (head!8589 newSuffix!27) (head!8589 suffix!1299)))))

(assert (= (and d!1210033 (not res!1662258)) b!4070877))

(assert (= (and b!4070877 res!1662259) b!4070878))

(assert (= (and b!4070878 res!1662257) b!4070879))

(assert (= (and d!1210033 (not res!1662256)) b!4070880))

(assert (=> b!4070880 m!4679425))

(assert (=> b!4070880 m!4679427))

(declare-fun m!4680111 () Bool)

(assert (=> b!4070879 m!4680111))

(declare-fun m!4680113 () Bool)

(assert (=> b!4070879 m!4680113))

(assert (=> b!4070879 m!4680111))

(assert (=> b!4070879 m!4680113))

(declare-fun m!4680115 () Bool)

(assert (=> b!4070879 m!4680115))

(declare-fun m!4680117 () Bool)

(assert (=> b!4070878 m!4680117))

(declare-fun m!4680119 () Bool)

(assert (=> b!4070878 m!4680119))

(assert (=> b!4070355 d!1210033))

(declare-fun d!1210035 () Bool)

(declare-fun e!2526429 () Bool)

(assert (=> d!1210035 e!2526429))

(declare-fun res!1662261 () Bool)

(assert (=> d!1210035 (=> (not res!1662261) (not e!2526429))))

(declare-fun lt!1457369 () List!43599)

(assert (=> d!1210035 (= res!1662261 (= (content!6647 lt!1457369) ((_ map or) (content!6647 lt!1457175) (content!6647 lt!1457184))))))

(declare-fun e!2526430 () List!43599)

(assert (=> d!1210035 (= lt!1457369 e!2526430)))

(declare-fun c!702679 () Bool)

(assert (=> d!1210035 (= c!702679 ((_ is Nil!43475) lt!1457175))))

(assert (=> d!1210035 (= (++!11390 lt!1457175 lt!1457184) lt!1457369)))

(declare-fun b!4070881 () Bool)

(assert (=> b!4070881 (= e!2526430 lt!1457184)))

(declare-fun b!4070883 () Bool)

(declare-fun res!1662260 () Bool)

(assert (=> b!4070883 (=> (not res!1662260) (not e!2526429))))

(assert (=> b!4070883 (= res!1662260 (= (size!32504 lt!1457369) (+ (size!32504 lt!1457175) (size!32504 lt!1457184))))))

(declare-fun b!4070882 () Bool)

(assert (=> b!4070882 (= e!2526430 (Cons!43475 (h!48895 lt!1457175) (++!11390 (t!337022 lt!1457175) lt!1457184)))))

(declare-fun b!4070884 () Bool)

(assert (=> b!4070884 (= e!2526429 (or (not (= lt!1457184 Nil!43475)) (= lt!1457369 lt!1457175)))))

(assert (= (and d!1210035 c!702679) b!4070881))

(assert (= (and d!1210035 (not c!702679)) b!4070882))

(assert (= (and d!1210035 res!1662261) b!4070883))

(assert (= (and b!4070883 res!1662260) b!4070884))

(declare-fun m!4680121 () Bool)

(assert (=> d!1210035 m!4680121))

(assert (=> d!1210035 m!4679591))

(declare-fun m!4680123 () Bool)

(assert (=> d!1210035 m!4680123))

(declare-fun m!4680125 () Bool)

(assert (=> b!4070883 m!4680125))

(assert (=> b!4070883 m!4679443))

(declare-fun m!4680127 () Bool)

(assert (=> b!4070883 m!4680127))

(declare-fun m!4680129 () Bool)

(assert (=> b!4070882 m!4680129))

(assert (=> b!4070354 d!1210035))

(declare-fun d!1210037 () Bool)

(declare-fun lt!1457372 () List!43599)

(assert (=> d!1210037 (= (++!11390 lt!1457175 lt!1457372) lt!1457180)))

(declare-fun e!2526433 () List!43599)

(assert (=> d!1210037 (= lt!1457372 e!2526433)))

(declare-fun c!702682 () Bool)

(assert (=> d!1210037 (= c!702682 ((_ is Cons!43475) lt!1457175))))

(assert (=> d!1210037 (>= (size!32504 lt!1457180) (size!32504 lt!1457175))))

(assert (=> d!1210037 (= (getSuffix!2492 lt!1457180 lt!1457175) lt!1457372)))

(declare-fun b!4070889 () Bool)

(assert (=> b!4070889 (= e!2526433 (getSuffix!2492 (tail!6321 lt!1457180) (t!337022 lt!1457175)))))

(declare-fun b!4070890 () Bool)

(assert (=> b!4070890 (= e!2526433 lt!1457180)))

(assert (= (and d!1210037 c!702682) b!4070889))

(assert (= (and d!1210037 (not c!702682)) b!4070890))

(declare-fun m!4680131 () Bool)

(assert (=> d!1210037 m!4680131))

(assert (=> d!1210037 m!4679879))

(assert (=> d!1210037 m!4679443))

(declare-fun m!4680133 () Bool)

(assert (=> b!4070889 m!4680133))

(assert (=> b!4070889 m!4680133))

(declare-fun m!4680135 () Bool)

(assert (=> b!4070889 m!4680135))

(assert (=> b!4070354 d!1210037))

(declare-fun d!1210039 () Bool)

(declare-fun e!2526436 () Bool)

(assert (=> d!1210039 e!2526436))

(declare-fun res!1662262 () Bool)

(assert (=> d!1210039 (=> res!1662262 e!2526436)))

(declare-fun lt!1457373 () Bool)

(assert (=> d!1210039 (= res!1662262 (not lt!1457373))))

(declare-fun e!2526435 () Bool)

(assert (=> d!1210039 (= lt!1457373 e!2526435)))

(declare-fun res!1662264 () Bool)

(assert (=> d!1210039 (=> res!1662264 e!2526435)))

(assert (=> d!1210039 (= res!1662264 ((_ is Nil!43475) lt!1457180))))

(assert (=> d!1210039 (= (isPrefix!4075 lt!1457180 lt!1457180) lt!1457373)))

(declare-fun b!4070894 () Bool)

(assert (=> b!4070894 (= e!2526436 (>= (size!32504 lt!1457180) (size!32504 lt!1457180)))))

(declare-fun b!4070891 () Bool)

(declare-fun e!2526434 () Bool)

(assert (=> b!4070891 (= e!2526435 e!2526434)))

(declare-fun res!1662265 () Bool)

(assert (=> b!4070891 (=> (not res!1662265) (not e!2526434))))

(assert (=> b!4070891 (= res!1662265 (not ((_ is Nil!43475) lt!1457180)))))

(declare-fun b!4070893 () Bool)

(assert (=> b!4070893 (= e!2526434 (isPrefix!4075 (tail!6321 lt!1457180) (tail!6321 lt!1457180)))))

(declare-fun b!4070892 () Bool)

(declare-fun res!1662263 () Bool)

(assert (=> b!4070892 (=> (not res!1662263) (not e!2526434))))

(assert (=> b!4070892 (= res!1662263 (= (head!8589 lt!1457180) (head!8589 lt!1457180)))))

(assert (= (and d!1210039 (not res!1662264)) b!4070891))

(assert (= (and b!4070891 res!1662265) b!4070892))

(assert (= (and b!4070892 res!1662263) b!4070893))

(assert (= (and d!1210039 (not res!1662262)) b!4070894))

(assert (=> b!4070894 m!4679879))

(assert (=> b!4070894 m!4679879))

(assert (=> b!4070893 m!4680133))

(assert (=> b!4070893 m!4680133))

(assert (=> b!4070893 m!4680133))

(assert (=> b!4070893 m!4680133))

(declare-fun m!4680137 () Bool)

(assert (=> b!4070893 m!4680137))

(declare-fun m!4680139 () Bool)

(assert (=> b!4070892 m!4680139))

(assert (=> b!4070892 m!4680139))

(assert (=> b!4070354 d!1210039))

(declare-fun d!1210041 () Bool)

(assert (=> d!1210041 (isPrefix!4075 lt!1457180 lt!1457180)))

(declare-fun lt!1457376 () Unit!63043)

(declare-fun choose!24848 (List!43599 List!43599) Unit!63043)

(assert (=> d!1210041 (= lt!1457376 (choose!24848 lt!1457180 lt!1457180))))

(assert (=> d!1210041 (= (lemmaIsPrefixRefl!2642 lt!1457180 lt!1457180) lt!1457376)))

(declare-fun bs!592573 () Bool)

(assert (= bs!592573 d!1210041))

(assert (=> bs!592573 m!4679487))

(declare-fun m!4680141 () Bool)

(assert (=> bs!592573 m!4680141))

(assert (=> b!4070354 d!1210041))

(declare-fun d!1210043 () Bool)

(assert (=> d!1210043 (= (inv!58117 (tag!7848 (h!48897 rules!2999))) (= (mod (str.len (value!219791 (tag!7848 (h!48897 rules!2999)))) 2) 0))))

(assert (=> b!4070356 d!1210043))

(declare-fun d!1210045 () Bool)

(declare-fun res!1662268 () Bool)

(declare-fun e!2526439 () Bool)

(assert (=> d!1210045 (=> (not res!1662268) (not e!2526439))))

(assert (=> d!1210045 (= res!1662268 (semiInverseModEq!2994 (toChars!9407 (transformation!6988 (h!48897 rules!2999))) (toValue!9548 (transformation!6988 (h!48897 rules!2999)))))))

(assert (=> d!1210045 (= (inv!58120 (transformation!6988 (h!48897 rules!2999))) e!2526439)))

(declare-fun b!4070897 () Bool)

(assert (=> b!4070897 (= e!2526439 (equivClasses!2893 (toChars!9407 (transformation!6988 (h!48897 rules!2999))) (toValue!9548 (transformation!6988 (h!48897 rules!2999)))))))

(assert (= (and d!1210045 res!1662268) b!4070897))

(declare-fun m!4680143 () Bool)

(assert (=> d!1210045 m!4680143))

(declare-fun m!4680145 () Bool)

(assert (=> b!4070897 m!4680145))

(assert (=> b!4070356 d!1210045))

(declare-fun d!1210047 () Bool)

(declare-fun e!2526440 () Bool)

(assert (=> d!1210047 e!2526440))

(declare-fun res!1662270 () Bool)

(assert (=> d!1210047 (=> (not res!1662270) (not e!2526440))))

(declare-fun lt!1457377 () List!43599)

(assert (=> d!1210047 (= res!1662270 (= (content!6647 lt!1457377) ((_ map or) (content!6647 lt!1457175) (content!6647 lt!1457155))))))

(declare-fun e!2526441 () List!43599)

(assert (=> d!1210047 (= lt!1457377 e!2526441)))

(declare-fun c!702683 () Bool)

(assert (=> d!1210047 (= c!702683 ((_ is Nil!43475) lt!1457175))))

(assert (=> d!1210047 (= (++!11390 lt!1457175 lt!1457155) lt!1457377)))

(declare-fun b!4070898 () Bool)

(assert (=> b!4070898 (= e!2526441 lt!1457155)))

(declare-fun b!4070900 () Bool)

(declare-fun res!1662269 () Bool)

(assert (=> b!4070900 (=> (not res!1662269) (not e!2526440))))

(assert (=> b!4070900 (= res!1662269 (= (size!32504 lt!1457377) (+ (size!32504 lt!1457175) (size!32504 lt!1457155))))))

(declare-fun b!4070899 () Bool)

(assert (=> b!4070899 (= e!2526441 (Cons!43475 (h!48895 lt!1457175) (++!11390 (t!337022 lt!1457175) lt!1457155)))))

(declare-fun b!4070901 () Bool)

(assert (=> b!4070901 (= e!2526440 (or (not (= lt!1457155 Nil!43475)) (= lt!1457377 lt!1457175)))))

(assert (= (and d!1210047 c!702683) b!4070898))

(assert (= (and d!1210047 (not c!702683)) b!4070899))

(assert (= (and d!1210047 res!1662270) b!4070900))

(assert (= (and b!4070900 res!1662269) b!4070901))

(declare-fun m!4680147 () Bool)

(assert (=> d!1210047 m!4680147))

(assert (=> d!1210047 m!4679591))

(declare-fun m!4680149 () Bool)

(assert (=> d!1210047 m!4680149))

(declare-fun m!4680151 () Bool)

(assert (=> b!4070900 m!4680151))

(assert (=> b!4070900 m!4679443))

(declare-fun m!4680153 () Bool)

(assert (=> b!4070900 m!4680153))

(declare-fun m!4680155 () Bool)

(assert (=> b!4070899 m!4680155))

(assert (=> b!4070367 d!1210047))

(declare-fun d!1210049 () Bool)

(declare-fun e!2526442 () Bool)

(assert (=> d!1210049 e!2526442))

(declare-fun res!1662272 () Bool)

(assert (=> d!1210049 (=> (not res!1662272) (not e!2526442))))

(declare-fun lt!1457378 () List!43599)

(assert (=> d!1210049 (= res!1662272 (= (content!6647 lt!1457378) ((_ map or) (content!6647 lt!1457186) (content!6647 suffix!1299))))))

(declare-fun e!2526443 () List!43599)

(assert (=> d!1210049 (= lt!1457378 e!2526443)))

(declare-fun c!702684 () Bool)

(assert (=> d!1210049 (= c!702684 ((_ is Nil!43475) lt!1457186))))

(assert (=> d!1210049 (= (++!11390 lt!1457186 suffix!1299) lt!1457378)))

(declare-fun b!4070902 () Bool)

(assert (=> b!4070902 (= e!2526443 suffix!1299)))

(declare-fun b!4070904 () Bool)

(declare-fun res!1662271 () Bool)

(assert (=> b!4070904 (=> (not res!1662271) (not e!2526442))))

(assert (=> b!4070904 (= res!1662271 (= (size!32504 lt!1457378) (+ (size!32504 lt!1457186) (size!32504 suffix!1299))))))

(declare-fun b!4070903 () Bool)

(assert (=> b!4070903 (= e!2526443 (Cons!43475 (h!48895 lt!1457186) (++!11390 (t!337022 lt!1457186) suffix!1299)))))

(declare-fun b!4070905 () Bool)

(assert (=> b!4070905 (= e!2526442 (or (not (= suffix!1299 Nil!43475)) (= lt!1457378 lt!1457186)))))

(assert (= (and d!1210049 c!702684) b!4070902))

(assert (= (and d!1210049 (not c!702684)) b!4070903))

(assert (= (and d!1210049 res!1662272) b!4070904))

(assert (= (and b!4070904 res!1662271) b!4070905))

(declare-fun m!4680157 () Bool)

(assert (=> d!1210049 m!4680157))

(declare-fun m!4680159 () Bool)

(assert (=> d!1210049 m!4680159))

(assert (=> d!1210049 m!4679935))

(declare-fun m!4680161 () Bool)

(assert (=> b!4070904 m!4680161))

(declare-fun m!4680163 () Bool)

(assert (=> b!4070904 m!4680163))

(assert (=> b!4070904 m!4679425))

(declare-fun m!4680165 () Bool)

(assert (=> b!4070903 m!4680165))

(assert (=> b!4070367 d!1210049))

(declare-fun d!1210051 () Bool)

(declare-fun e!2526444 () Bool)

(assert (=> d!1210051 e!2526444))

(declare-fun res!1662274 () Bool)

(assert (=> d!1210051 (=> (not res!1662274) (not e!2526444))))

(declare-fun lt!1457379 () List!43599)

(assert (=> d!1210051 (= res!1662274 (= (content!6647 lt!1457379) ((_ map or) (content!6647 lt!1457183) (content!6647 suffix!1299))))))

(declare-fun e!2526445 () List!43599)

(assert (=> d!1210051 (= lt!1457379 e!2526445)))

(declare-fun c!702685 () Bool)

(assert (=> d!1210051 (= c!702685 ((_ is Nil!43475) lt!1457183))))

(assert (=> d!1210051 (= (++!11390 lt!1457183 suffix!1299) lt!1457379)))

(declare-fun b!4070906 () Bool)

(assert (=> b!4070906 (= e!2526445 suffix!1299)))

(declare-fun b!4070908 () Bool)

(declare-fun res!1662273 () Bool)

(assert (=> b!4070908 (=> (not res!1662273) (not e!2526444))))

(assert (=> b!4070908 (= res!1662273 (= (size!32504 lt!1457379) (+ (size!32504 lt!1457183) (size!32504 suffix!1299))))))

(declare-fun b!4070907 () Bool)

(assert (=> b!4070907 (= e!2526445 (Cons!43475 (h!48895 lt!1457183) (++!11390 (t!337022 lt!1457183) suffix!1299)))))

(declare-fun b!4070909 () Bool)

(assert (=> b!4070909 (= e!2526444 (or (not (= suffix!1299 Nil!43475)) (= lt!1457379 lt!1457183)))))

(assert (= (and d!1210051 c!702685) b!4070906))

(assert (= (and d!1210051 (not c!702685)) b!4070907))

(assert (= (and d!1210051 res!1662274) b!4070908))

(assert (= (and b!4070908 res!1662273) b!4070909))

(declare-fun m!4680167 () Bool)

(assert (=> d!1210051 m!4680167))

(declare-fun m!4680169 () Bool)

(assert (=> d!1210051 m!4680169))

(assert (=> d!1210051 m!4679935))

(declare-fun m!4680171 () Bool)

(assert (=> b!4070908 m!4680171))

(declare-fun m!4680173 () Bool)

(assert (=> b!4070908 m!4680173))

(assert (=> b!4070908 m!4679425))

(declare-fun m!4680175 () Bool)

(assert (=> b!4070907 m!4680175))

(assert (=> b!4070367 d!1210051))

(declare-fun d!1210053 () Bool)

(assert (=> d!1210053 (= (++!11390 (++!11390 lt!1457175 lt!1457183) suffix!1299) (++!11390 lt!1457175 (++!11390 lt!1457183 suffix!1299)))))

(declare-fun lt!1457382 () Unit!63043)

(declare-fun choose!24850 (List!43599 List!43599 List!43599) Unit!63043)

(assert (=> d!1210053 (= lt!1457382 (choose!24850 lt!1457175 lt!1457183 suffix!1299))))

(assert (=> d!1210053 (= (lemmaConcatAssociativity!2692 lt!1457175 lt!1457183 suffix!1299) lt!1457382)))

(declare-fun bs!592574 () Bool)

(assert (= bs!592574 d!1210053))

(assert (=> bs!592574 m!4679409))

(declare-fun m!4680177 () Bool)

(assert (=> bs!592574 m!4680177))

(assert (=> bs!592574 m!4679409))

(declare-fun m!4680179 () Bool)

(assert (=> bs!592574 m!4680179))

(assert (=> bs!592574 m!4679455))

(assert (=> bs!592574 m!4679455))

(declare-fun m!4680181 () Bool)

(assert (=> bs!592574 m!4680181))

(assert (=> b!4070367 d!1210053))

(declare-fun bm!288363 () Bool)

(declare-fun call!288368 () Option!9402)

(assert (=> bm!288363 (= call!288368 (maxPrefixOneRule!2887 thiss!21717 (h!48897 rules!2999) lt!1457170))))

(declare-fun b!4070910 () Bool)

(declare-fun e!2526446 () Bool)

(declare-fun lt!1457386 () Option!9402)

(assert (=> b!4070910 (= e!2526446 (contains!8654 rules!2999 (rule!10096 (_1!24397 (get!14258 lt!1457386)))))))

(declare-fun b!4070911 () Bool)

(declare-fun res!1662280 () Bool)

(assert (=> b!4070911 (=> (not res!1662280) (not e!2526446))))

(assert (=> b!4070911 (= res!1662280 (matchR!5846 (regex!6988 (rule!10096 (_1!24397 (get!14258 lt!1457386)))) (list!16212 (charsOf!4804 (_1!24397 (get!14258 lt!1457386))))))))

(declare-fun b!4070912 () Bool)

(declare-fun res!1662275 () Bool)

(assert (=> b!4070912 (=> (not res!1662275) (not e!2526446))))

(assert (=> b!4070912 (= res!1662275 (= (list!16212 (charsOf!4804 (_1!24397 (get!14258 lt!1457386)))) (originalCharacters!7588 (_1!24397 (get!14258 lt!1457386)))))))

(declare-fun b!4070913 () Bool)

(declare-fun e!2526447 () Bool)

(assert (=> b!4070913 (= e!2526447 e!2526446)))

(declare-fun res!1662277 () Bool)

(assert (=> b!4070913 (=> (not res!1662277) (not e!2526446))))

(assert (=> b!4070913 (= res!1662277 (isDefined!7140 lt!1457386))))

(declare-fun b!4070914 () Bool)

(declare-fun res!1662278 () Bool)

(assert (=> b!4070914 (=> (not res!1662278) (not e!2526446))))

(assert (=> b!4070914 (= res!1662278 (< (size!32504 (_2!24397 (get!14258 lt!1457386))) (size!32504 lt!1457170)))))

(declare-fun b!4070915 () Bool)

(declare-fun res!1662281 () Bool)

(assert (=> b!4070915 (=> (not res!1662281) (not e!2526446))))

(assert (=> b!4070915 (= res!1662281 (= (value!219792 (_1!24397 (get!14258 lt!1457386))) (apply!10177 (transformation!6988 (rule!10096 (_1!24397 (get!14258 lt!1457386)))) (seqFromList!5205 (originalCharacters!7588 (_1!24397 (get!14258 lt!1457386)))))))))

(declare-fun b!4070916 () Bool)

(declare-fun e!2526448 () Option!9402)

(assert (=> b!4070916 (= e!2526448 call!288368)))

(declare-fun d!1210055 () Bool)

(assert (=> d!1210055 e!2526447))

(declare-fun res!1662276 () Bool)

(assert (=> d!1210055 (=> res!1662276 e!2526447)))

(assert (=> d!1210055 (= res!1662276 (isEmpty!25950 lt!1457386))))

(assert (=> d!1210055 (= lt!1457386 e!2526448)))

(declare-fun c!702686 () Bool)

(assert (=> d!1210055 (= c!702686 (and ((_ is Cons!43477) rules!2999) ((_ is Nil!43477) (t!337024 rules!2999))))))

(declare-fun lt!1457383 () Unit!63043)

(declare-fun lt!1457387 () Unit!63043)

(assert (=> d!1210055 (= lt!1457383 lt!1457387)))

(assert (=> d!1210055 (isPrefix!4075 lt!1457170 lt!1457170)))

(assert (=> d!1210055 (= lt!1457387 (lemmaIsPrefixRefl!2642 lt!1457170 lt!1457170))))

(assert (=> d!1210055 (rulesValidInductive!2561 thiss!21717 rules!2999)))

(assert (=> d!1210055 (= (maxPrefix!3875 thiss!21717 rules!2999 lt!1457170) lt!1457386)))

(declare-fun b!4070917 () Bool)

(declare-fun lt!1457384 () Option!9402)

(declare-fun lt!1457385 () Option!9402)

(assert (=> b!4070917 (= e!2526448 (ite (and ((_ is None!9401) lt!1457384) ((_ is None!9401) lt!1457385)) None!9401 (ite ((_ is None!9401) lt!1457385) lt!1457384 (ite ((_ is None!9401) lt!1457384) lt!1457385 (ite (>= (size!32503 (_1!24397 (v!39835 lt!1457384))) (size!32503 (_1!24397 (v!39835 lt!1457385)))) lt!1457384 lt!1457385)))))))

(assert (=> b!4070917 (= lt!1457384 call!288368)))

(assert (=> b!4070917 (= lt!1457385 (maxPrefix!3875 thiss!21717 (t!337024 rules!2999) lt!1457170))))

(declare-fun b!4070918 () Bool)

(declare-fun res!1662279 () Bool)

(assert (=> b!4070918 (=> (not res!1662279) (not e!2526446))))

(assert (=> b!4070918 (= res!1662279 (= (++!11390 (list!16212 (charsOf!4804 (_1!24397 (get!14258 lt!1457386)))) (_2!24397 (get!14258 lt!1457386))) lt!1457170))))

(assert (= (and d!1210055 c!702686) b!4070916))

(assert (= (and d!1210055 (not c!702686)) b!4070917))

(assert (= (or b!4070916 b!4070917) bm!288363))

(assert (= (and d!1210055 (not res!1662276)) b!4070913))

(assert (= (and b!4070913 res!1662277) b!4070912))

(assert (= (and b!4070912 res!1662275) b!4070914))

(assert (= (and b!4070914 res!1662278) b!4070918))

(assert (= (and b!4070918 res!1662279) b!4070915))

(assert (= (and b!4070915 res!1662281) b!4070911))

(assert (= (and b!4070911 res!1662280) b!4070910))

(declare-fun m!4680183 () Bool)

(assert (=> bm!288363 m!4680183))

(declare-fun m!4680185 () Bool)

(assert (=> b!4070912 m!4680185))

(declare-fun m!4680187 () Bool)

(assert (=> b!4070912 m!4680187))

(assert (=> b!4070912 m!4680187))

(declare-fun m!4680189 () Bool)

(assert (=> b!4070912 m!4680189))

(declare-fun m!4680191 () Bool)

(assert (=> b!4070917 m!4680191))

(assert (=> b!4070915 m!4680185))

(declare-fun m!4680193 () Bool)

(assert (=> b!4070915 m!4680193))

(assert (=> b!4070915 m!4680193))

(declare-fun m!4680195 () Bool)

(assert (=> b!4070915 m!4680195))

(assert (=> b!4070914 m!4680185))

(declare-fun m!4680197 () Bool)

(assert (=> b!4070914 m!4680197))

(assert (=> b!4070914 m!4680095))

(declare-fun m!4680199 () Bool)

(assert (=> d!1210055 m!4680199))

(declare-fun m!4680201 () Bool)

(assert (=> d!1210055 m!4680201))

(declare-fun m!4680203 () Bool)

(assert (=> d!1210055 m!4680203))

(assert (=> d!1210055 m!4679883))

(declare-fun m!4680205 () Bool)

(assert (=> b!4070913 m!4680205))

(assert (=> b!4070918 m!4680185))

(assert (=> b!4070918 m!4680187))

(assert (=> b!4070918 m!4680187))

(assert (=> b!4070918 m!4680189))

(assert (=> b!4070918 m!4680189))

(declare-fun m!4680207 () Bool)

(assert (=> b!4070918 m!4680207))

(assert (=> b!4070911 m!4680185))

(assert (=> b!4070911 m!4680187))

(assert (=> b!4070911 m!4680187))

(assert (=> b!4070911 m!4680189))

(assert (=> b!4070911 m!4680189))

(declare-fun m!4680209 () Bool)

(assert (=> b!4070911 m!4680209))

(assert (=> b!4070910 m!4680185))

(declare-fun m!4680211 () Bool)

(assert (=> b!4070910 m!4680211))

(assert (=> b!4070366 d!1210055))

(declare-fun d!1210057 () Bool)

(assert (=> d!1210057 (= suffixResult!105 lt!1457184)))

(declare-fun lt!1457388 () Unit!63043)

(assert (=> d!1210057 (= lt!1457388 (choose!24842 lt!1457175 suffixResult!105 lt!1457175 lt!1457184 lt!1457180))))

(assert (=> d!1210057 (isPrefix!4075 lt!1457175 lt!1457180)))

(assert (=> d!1210057 (= (lemmaSamePrefixThenSameSuffix!2236 lt!1457175 suffixResult!105 lt!1457175 lt!1457184 lt!1457180) lt!1457388)))

(declare-fun bs!592575 () Bool)

(assert (= bs!592575 d!1210057))

(declare-fun m!4680213 () Bool)

(assert (=> bs!592575 m!4680213))

(assert (=> bs!592575 m!4679433))

(assert (=> b!4070366 d!1210057))

(declare-fun d!1210059 () Bool)

(declare-fun e!2526451 () Bool)

(assert (=> d!1210059 e!2526451))

(declare-fun res!1662282 () Bool)

(assert (=> d!1210059 (=> res!1662282 e!2526451)))

(declare-fun lt!1457389 () Bool)

(assert (=> d!1210059 (= res!1662282 (not lt!1457389))))

(declare-fun e!2526450 () Bool)

(assert (=> d!1210059 (= lt!1457389 e!2526450)))

(declare-fun res!1662284 () Bool)

(assert (=> d!1210059 (=> res!1662284 e!2526450)))

(assert (=> d!1210059 (= res!1662284 ((_ is Nil!43475) lt!1457175))))

(assert (=> d!1210059 (= (isPrefix!4075 lt!1457175 lt!1457156) lt!1457389)))

(declare-fun b!4070922 () Bool)

(assert (=> b!4070922 (= e!2526451 (>= (size!32504 lt!1457156) (size!32504 lt!1457175)))))

(declare-fun b!4070919 () Bool)

(declare-fun e!2526449 () Bool)

(assert (=> b!4070919 (= e!2526450 e!2526449)))

(declare-fun res!1662285 () Bool)

(assert (=> b!4070919 (=> (not res!1662285) (not e!2526449))))

(assert (=> b!4070919 (= res!1662285 (not ((_ is Nil!43475) lt!1457156)))))

(declare-fun b!4070921 () Bool)

(assert (=> b!4070921 (= e!2526449 (isPrefix!4075 (tail!6321 lt!1457175) (tail!6321 lt!1457156)))))

(declare-fun b!4070920 () Bool)

(declare-fun res!1662283 () Bool)

(assert (=> b!4070920 (=> (not res!1662283) (not e!2526449))))

(assert (=> b!4070920 (= res!1662283 (= (head!8589 lt!1457175) (head!8589 lt!1457156)))))

(assert (= (and d!1210059 (not res!1662284)) b!4070919))

(assert (= (and b!4070919 res!1662285) b!4070920))

(assert (= (and b!4070920 res!1662283) b!4070921))

(assert (= (and d!1210059 (not res!1662282)) b!4070922))

(declare-fun m!4680215 () Bool)

(assert (=> b!4070922 m!4680215))

(assert (=> b!4070922 m!4679443))

(assert (=> b!4070921 m!4679943))

(declare-fun m!4680217 () Bool)

(assert (=> b!4070921 m!4680217))

(assert (=> b!4070921 m!4679943))

(assert (=> b!4070921 m!4680217))

(declare-fun m!4680219 () Bool)

(assert (=> b!4070921 m!4680219))

(assert (=> b!4070920 m!4679949))

(declare-fun m!4680221 () Bool)

(assert (=> b!4070920 m!4680221))

(assert (=> b!4070366 d!1210059))

(declare-fun d!1210061 () Bool)

(assert (=> d!1210061 (isPrefix!4075 lt!1457175 (++!11390 lt!1457175 lt!1457184))))

(declare-fun lt!1457390 () Unit!63043)

(assert (=> d!1210061 (= lt!1457390 (choose!24841 lt!1457175 lt!1457184))))

(assert (=> d!1210061 (= (lemmaConcatTwoListThenFirstIsPrefix!2910 lt!1457175 lt!1457184) lt!1457390)))

(declare-fun bs!592576 () Bool)

(assert (= bs!592576 d!1210061))

(assert (=> bs!592576 m!4679483))

(assert (=> bs!592576 m!4679483))

(declare-fun m!4680223 () Bool)

(assert (=> bs!592576 m!4680223))

(declare-fun m!4680225 () Bool)

(assert (=> bs!592576 m!4680225))

(assert (=> b!4070366 d!1210061))

(declare-fun d!1210063 () Bool)

(assert (=> d!1210063 (= (inv!58117 (tag!7848 (rule!10096 token!484))) (= (mod (str.len (value!219791 (tag!7848 (rule!10096 token!484)))) 2) 0))))

(assert (=> b!4070377 d!1210063))

(declare-fun d!1210065 () Bool)

(declare-fun res!1662286 () Bool)

(declare-fun e!2526452 () Bool)

(assert (=> d!1210065 (=> (not res!1662286) (not e!2526452))))

(assert (=> d!1210065 (= res!1662286 (semiInverseModEq!2994 (toChars!9407 (transformation!6988 (rule!10096 token!484))) (toValue!9548 (transformation!6988 (rule!10096 token!484)))))))

(assert (=> d!1210065 (= (inv!58120 (transformation!6988 (rule!10096 token!484))) e!2526452)))

(declare-fun b!4070923 () Bool)

(assert (=> b!4070923 (= e!2526452 (equivClasses!2893 (toChars!9407 (transformation!6988 (rule!10096 token!484))) (toValue!9548 (transformation!6988 (rule!10096 token!484)))))))

(assert (= (and d!1210065 res!1662286) b!4070923))

(assert (=> d!1210065 m!4679625))

(assert (=> b!4070923 m!4679627))

(assert (=> b!4070377 d!1210065))

(declare-fun d!1210067 () Bool)

(declare-fun res!1662289 () Bool)

(declare-fun e!2526455 () Bool)

(assert (=> d!1210067 (=> (not res!1662289) (not e!2526455))))

(declare-fun rulesValid!2728 (LexerInterface!6577 List!43601) Bool)

(assert (=> d!1210067 (= res!1662289 (rulesValid!2728 thiss!21717 rules!2999))))

(assert (=> d!1210067 (= (rulesInvariant!5920 thiss!21717 rules!2999) e!2526455)))

(declare-fun b!4070926 () Bool)

(declare-datatypes ((List!43603 0))(
  ( (Nil!43479) (Cons!43479 (h!48899 String!49808) (t!337050 List!43603)) )
))
(declare-fun noDuplicateTag!2729 (LexerInterface!6577 List!43601 List!43603) Bool)

(assert (=> b!4070926 (= e!2526455 (noDuplicateTag!2729 thiss!21717 rules!2999 Nil!43479))))

(assert (= (and d!1210067 res!1662289) b!4070926))

(declare-fun m!4680227 () Bool)

(assert (=> d!1210067 m!4680227))

(declare-fun m!4680229 () Bool)

(assert (=> b!4070926 m!4680229))

(assert (=> b!4070363 d!1210067))

(declare-fun d!1210069 () Bool)

(declare-fun e!2526456 () Bool)

(assert (=> d!1210069 e!2526456))

(declare-fun res!1662291 () Bool)

(assert (=> d!1210069 (=> (not res!1662291) (not e!2526456))))

(declare-fun lt!1457391 () List!43599)

(assert (=> d!1210069 (= res!1662291 (= (content!6647 lt!1457391) ((_ map or) (content!6647 lt!1457175) (content!6647 lt!1457183))))))

(declare-fun e!2526457 () List!43599)

(assert (=> d!1210069 (= lt!1457391 e!2526457)))

(declare-fun c!702687 () Bool)

(assert (=> d!1210069 (= c!702687 ((_ is Nil!43475) lt!1457175))))

(assert (=> d!1210069 (= (++!11390 lt!1457175 lt!1457183) lt!1457391)))

(declare-fun b!4070927 () Bool)

(assert (=> b!4070927 (= e!2526457 lt!1457183)))

(declare-fun b!4070929 () Bool)

(declare-fun res!1662290 () Bool)

(assert (=> b!4070929 (=> (not res!1662290) (not e!2526456))))

(assert (=> b!4070929 (= res!1662290 (= (size!32504 lt!1457391) (+ (size!32504 lt!1457175) (size!32504 lt!1457183))))))

(declare-fun b!4070928 () Bool)

(assert (=> b!4070928 (= e!2526457 (Cons!43475 (h!48895 lt!1457175) (++!11390 (t!337022 lt!1457175) lt!1457183)))))

(declare-fun b!4070930 () Bool)

(assert (=> b!4070930 (= e!2526456 (or (not (= lt!1457183 Nil!43475)) (= lt!1457391 lt!1457175)))))

(assert (= (and d!1210069 c!702687) b!4070927))

(assert (= (and d!1210069 (not c!702687)) b!4070928))

(assert (= (and d!1210069 res!1662291) b!4070929))

(assert (= (and b!4070929 res!1662290) b!4070930))

(declare-fun m!4680231 () Bool)

(assert (=> d!1210069 m!4680231))

(assert (=> d!1210069 m!4679591))

(assert (=> d!1210069 m!4680169))

(declare-fun m!4680233 () Bool)

(assert (=> b!4070929 m!4680233))

(assert (=> b!4070929 m!4679443))

(assert (=> b!4070929 m!4680173))

(declare-fun m!4680235 () Bool)

(assert (=> b!4070928 m!4680235))

(assert (=> b!4070373 d!1210069))

(declare-fun d!1210071 () Bool)

(declare-fun lt!1457392 () List!43599)

(assert (=> d!1210071 (= (++!11390 lt!1457175 lt!1457392) prefix!494)))

(declare-fun e!2526458 () List!43599)

(assert (=> d!1210071 (= lt!1457392 e!2526458)))

(declare-fun c!702688 () Bool)

(assert (=> d!1210071 (= c!702688 ((_ is Cons!43475) lt!1457175))))

(assert (=> d!1210071 (>= (size!32504 prefix!494) (size!32504 lt!1457175))))

(assert (=> d!1210071 (= (getSuffix!2492 prefix!494 lt!1457175) lt!1457392)))

(declare-fun b!4070931 () Bool)

(assert (=> b!4070931 (= e!2526458 (getSuffix!2492 (tail!6321 prefix!494) (t!337022 lt!1457175)))))

(declare-fun b!4070932 () Bool)

(assert (=> b!4070932 (= e!2526458 prefix!494)))

(assert (= (and d!1210071 c!702688) b!4070931))

(assert (= (and d!1210071 (not c!702688)) b!4070932))

(declare-fun m!4680237 () Bool)

(assert (=> d!1210071 m!4680237))

(assert (=> d!1210071 m!4679445))

(assert (=> d!1210071 m!4679443))

(declare-fun m!4680239 () Bool)

(assert (=> b!4070931 m!4680239))

(assert (=> b!4070931 m!4680239))

(declare-fun m!4680241 () Bool)

(assert (=> b!4070931 m!4680241))

(assert (=> b!4070373 d!1210071))

(declare-fun d!1210073 () Bool)

(declare-fun e!2526461 () Bool)

(assert (=> d!1210073 e!2526461))

(declare-fun res!1662292 () Bool)

(assert (=> d!1210073 (=> res!1662292 e!2526461)))

(declare-fun lt!1457393 () Bool)

(assert (=> d!1210073 (= res!1662292 (not lt!1457393))))

(declare-fun e!2526460 () Bool)

(assert (=> d!1210073 (= lt!1457393 e!2526460)))

(declare-fun res!1662294 () Bool)

(assert (=> d!1210073 (=> res!1662294 e!2526460)))

(assert (=> d!1210073 (= res!1662294 ((_ is Nil!43475) lt!1457175))))

(assert (=> d!1210073 (= (isPrefix!4075 lt!1457175 prefix!494) lt!1457393)))

(declare-fun b!4070936 () Bool)

(assert (=> b!4070936 (= e!2526461 (>= (size!32504 prefix!494) (size!32504 lt!1457175)))))

(declare-fun b!4070933 () Bool)

(declare-fun e!2526459 () Bool)

(assert (=> b!4070933 (= e!2526460 e!2526459)))

(declare-fun res!1662295 () Bool)

(assert (=> b!4070933 (=> (not res!1662295) (not e!2526459))))

(assert (=> b!4070933 (= res!1662295 (not ((_ is Nil!43475) prefix!494)))))

(declare-fun b!4070935 () Bool)

(assert (=> b!4070935 (= e!2526459 (isPrefix!4075 (tail!6321 lt!1457175) (tail!6321 prefix!494)))))

(declare-fun b!4070934 () Bool)

(declare-fun res!1662293 () Bool)

(assert (=> b!4070934 (=> (not res!1662293) (not e!2526459))))

(assert (=> b!4070934 (= res!1662293 (= (head!8589 lt!1457175) (head!8589 prefix!494)))))

(assert (= (and d!1210073 (not res!1662294)) b!4070933))

(assert (= (and b!4070933 res!1662295) b!4070934))

(assert (= (and b!4070934 res!1662293) b!4070935))

(assert (= (and d!1210073 (not res!1662292)) b!4070936))

(assert (=> b!4070936 m!4679445))

(assert (=> b!4070936 m!4679443))

(assert (=> b!4070935 m!4679943))

(assert (=> b!4070935 m!4680239))

(assert (=> b!4070935 m!4679943))

(assert (=> b!4070935 m!4680239))

(declare-fun m!4680243 () Bool)

(assert (=> b!4070935 m!4680243))

(assert (=> b!4070934 m!4679949))

(declare-fun m!4680245 () Bool)

(assert (=> b!4070934 m!4680245))

(assert (=> b!4070373 d!1210073))

(declare-fun d!1210075 () Bool)

(assert (=> d!1210075 (isPrefix!4075 lt!1457175 prefix!494)))

(declare-fun lt!1457396 () Unit!63043)

(declare-fun choose!24851 (List!43599 List!43599 List!43599) Unit!63043)

(assert (=> d!1210075 (= lt!1457396 (choose!24851 prefix!494 lt!1457175 lt!1457180))))

(assert (=> d!1210075 (isPrefix!4075 prefix!494 lt!1457180)))

(assert (=> d!1210075 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!639 prefix!494 lt!1457175 lt!1457180) lt!1457396)))

(declare-fun bs!592577 () Bool)

(assert (= bs!592577 d!1210075))

(assert (=> bs!592577 m!4679413))

(declare-fun m!4680247 () Bool)

(assert (=> bs!592577 m!4680247))

(assert (=> bs!592577 m!4679441))

(assert (=> b!4070373 d!1210075))

(declare-fun d!1210077 () Bool)

(declare-fun e!2526464 () Bool)

(assert (=> d!1210077 e!2526464))

(declare-fun res!1662296 () Bool)

(assert (=> d!1210077 (=> res!1662296 e!2526464)))

(declare-fun lt!1457397 () Bool)

(assert (=> d!1210077 (= res!1662296 (not lt!1457397))))

(declare-fun e!2526463 () Bool)

(assert (=> d!1210077 (= lt!1457397 e!2526463)))

(declare-fun res!1662298 () Bool)

(assert (=> d!1210077 (=> res!1662298 e!2526463)))

(assert (=> d!1210077 (= res!1662298 ((_ is Nil!43475) prefix!494))))

(assert (=> d!1210077 (= (isPrefix!4075 prefix!494 lt!1457180) lt!1457397)))

(declare-fun b!4070940 () Bool)

(assert (=> b!4070940 (= e!2526464 (>= (size!32504 lt!1457180) (size!32504 prefix!494)))))

(declare-fun b!4070937 () Bool)

(declare-fun e!2526462 () Bool)

(assert (=> b!4070937 (= e!2526463 e!2526462)))

(declare-fun res!1662299 () Bool)

(assert (=> b!4070937 (=> (not res!1662299) (not e!2526462))))

(assert (=> b!4070937 (= res!1662299 (not ((_ is Nil!43475) lt!1457180)))))

(declare-fun b!4070939 () Bool)

(assert (=> b!4070939 (= e!2526462 (isPrefix!4075 (tail!6321 prefix!494) (tail!6321 lt!1457180)))))

(declare-fun b!4070938 () Bool)

(declare-fun res!1662297 () Bool)

(assert (=> b!4070938 (=> (not res!1662297) (not e!2526462))))

(assert (=> b!4070938 (= res!1662297 (= (head!8589 prefix!494) (head!8589 lt!1457180)))))

(assert (= (and d!1210077 (not res!1662298)) b!4070937))

(assert (= (and b!4070937 res!1662299) b!4070938))

(assert (= (and b!4070938 res!1662297) b!4070939))

(assert (= (and d!1210077 (not res!1662296)) b!4070940))

(assert (=> b!4070940 m!4679879))

(assert (=> b!4070940 m!4679445))

(assert (=> b!4070939 m!4680239))

(assert (=> b!4070939 m!4680133))

(assert (=> b!4070939 m!4680239))

(assert (=> b!4070939 m!4680133))

(declare-fun m!4680249 () Bool)

(assert (=> b!4070939 m!4680249))

(assert (=> b!4070938 m!4680245))

(assert (=> b!4070938 m!4680139))

(assert (=> b!4070374 d!1210077))

(declare-fun d!1210079 () Bool)

(assert (=> d!1210079 (isPrefix!4075 lt!1457175 (++!11390 lt!1457175 suffixResult!105))))

(declare-fun lt!1457398 () Unit!63043)

(assert (=> d!1210079 (= lt!1457398 (choose!24841 lt!1457175 suffixResult!105))))

(assert (=> d!1210079 (= (lemmaConcatTwoListThenFirstIsPrefix!2910 lt!1457175 suffixResult!105) lt!1457398)))

(declare-fun bs!592578 () Bool)

(assert (= bs!592578 d!1210079))

(assert (=> bs!592578 m!4679417))

(assert (=> bs!592578 m!4679417))

(declare-fun m!4680251 () Bool)

(assert (=> bs!592578 m!4680251))

(declare-fun m!4680253 () Bool)

(assert (=> bs!592578 m!4680253))

(assert (=> b!4070374 d!1210079))

(declare-fun d!1210081 () Bool)

(declare-fun e!2526467 () Bool)

(assert (=> d!1210081 e!2526467))

(declare-fun res!1662300 () Bool)

(assert (=> d!1210081 (=> res!1662300 e!2526467)))

(declare-fun lt!1457399 () Bool)

(assert (=> d!1210081 (= res!1662300 (not lt!1457399))))

(declare-fun e!2526466 () Bool)

(assert (=> d!1210081 (= lt!1457399 e!2526466)))

(declare-fun res!1662302 () Bool)

(assert (=> d!1210081 (=> res!1662302 e!2526466)))

(assert (=> d!1210081 (= res!1662302 ((_ is Nil!43475) lt!1457175))))

(assert (=> d!1210081 (= (isPrefix!4075 lt!1457175 lt!1457180) lt!1457399)))

(declare-fun b!4070944 () Bool)

(assert (=> b!4070944 (= e!2526467 (>= (size!32504 lt!1457180) (size!32504 lt!1457175)))))

(declare-fun b!4070941 () Bool)

(declare-fun e!2526465 () Bool)

(assert (=> b!4070941 (= e!2526466 e!2526465)))

(declare-fun res!1662303 () Bool)

(assert (=> b!4070941 (=> (not res!1662303) (not e!2526465))))

(assert (=> b!4070941 (= res!1662303 (not ((_ is Nil!43475) lt!1457180)))))

(declare-fun b!4070943 () Bool)

(assert (=> b!4070943 (= e!2526465 (isPrefix!4075 (tail!6321 lt!1457175) (tail!6321 lt!1457180)))))

(declare-fun b!4070942 () Bool)

(declare-fun res!1662301 () Bool)

(assert (=> b!4070942 (=> (not res!1662301) (not e!2526465))))

(assert (=> b!4070942 (= res!1662301 (= (head!8589 lt!1457175) (head!8589 lt!1457180)))))

(assert (= (and d!1210081 (not res!1662302)) b!4070941))

(assert (= (and b!4070941 res!1662303) b!4070942))

(assert (= (and b!4070942 res!1662301) b!4070943))

(assert (= (and d!1210081 (not res!1662300)) b!4070944))

(assert (=> b!4070944 m!4679879))

(assert (=> b!4070944 m!4679443))

(assert (=> b!4070943 m!4679943))

(assert (=> b!4070943 m!4680133))

(assert (=> b!4070943 m!4679943))

(assert (=> b!4070943 m!4680133))

(declare-fun m!4680255 () Bool)

(assert (=> b!4070943 m!4680255))

(assert (=> b!4070942 m!4679949))

(assert (=> b!4070942 m!4680139))

(assert (=> b!4070374 d!1210081))

(declare-fun d!1210083 () Bool)

(declare-fun e!2526470 () Bool)

(assert (=> d!1210083 e!2526470))

(declare-fun res!1662304 () Bool)

(assert (=> d!1210083 (=> res!1662304 e!2526470)))

(declare-fun lt!1457400 () Bool)

(assert (=> d!1210083 (= res!1662304 (not lt!1457400))))

(declare-fun e!2526469 () Bool)

(assert (=> d!1210083 (= lt!1457400 e!2526469)))

(declare-fun res!1662306 () Bool)

(assert (=> d!1210083 (=> res!1662306 e!2526469)))

(assert (=> d!1210083 (= res!1662306 ((_ is Nil!43475) lt!1457175))))

(assert (=> d!1210083 (= (isPrefix!4075 lt!1457175 lt!1457187) lt!1457400)))

(declare-fun b!4070948 () Bool)

(assert (=> b!4070948 (= e!2526470 (>= (size!32504 lt!1457187) (size!32504 lt!1457175)))))

(declare-fun b!4070945 () Bool)

(declare-fun e!2526468 () Bool)

(assert (=> b!4070945 (= e!2526469 e!2526468)))

(declare-fun res!1662307 () Bool)

(assert (=> b!4070945 (=> (not res!1662307) (not e!2526468))))

(assert (=> b!4070945 (= res!1662307 (not ((_ is Nil!43475) lt!1457187)))))

(declare-fun b!4070947 () Bool)

(assert (=> b!4070947 (= e!2526468 (isPrefix!4075 (tail!6321 lt!1457175) (tail!6321 lt!1457187)))))

(declare-fun b!4070946 () Bool)

(declare-fun res!1662305 () Bool)

(assert (=> b!4070946 (=> (not res!1662305) (not e!2526468))))

(assert (=> b!4070946 (= res!1662305 (= (head!8589 lt!1457175) (head!8589 lt!1457187)))))

(assert (= (and d!1210083 (not res!1662306)) b!4070945))

(assert (= (and b!4070945 res!1662307) b!4070946))

(assert (= (and b!4070946 res!1662305) b!4070947))

(assert (= (and d!1210083 (not res!1662304)) b!4070948))

(declare-fun m!4680257 () Bool)

(assert (=> b!4070948 m!4680257))

(assert (=> b!4070948 m!4679443))

(assert (=> b!4070947 m!4679943))

(declare-fun m!4680259 () Bool)

(assert (=> b!4070947 m!4680259))

(assert (=> b!4070947 m!4679943))

(assert (=> b!4070947 m!4680259))

(declare-fun m!4680261 () Bool)

(assert (=> b!4070947 m!4680261))

(assert (=> b!4070946 m!4679949))

(declare-fun m!4680263 () Bool)

(assert (=> b!4070946 m!4680263))

(assert (=> b!4070374 d!1210083))

(declare-fun d!1210085 () Bool)

(assert (=> d!1210085 (isPrefix!4075 prefix!494 (++!11390 prefix!494 suffix!1299))))

(declare-fun lt!1457401 () Unit!63043)

(assert (=> d!1210085 (= lt!1457401 (choose!24841 prefix!494 suffix!1299))))

(assert (=> d!1210085 (= (lemmaConcatTwoListThenFirstIsPrefix!2910 prefix!494 suffix!1299) lt!1457401)))

(declare-fun bs!592579 () Bool)

(assert (= bs!592579 d!1210085))

(assert (=> bs!592579 m!4679495))

(assert (=> bs!592579 m!4679495))

(declare-fun m!4680265 () Bool)

(assert (=> bs!592579 m!4680265))

(declare-fun m!4680267 () Bool)

(assert (=> bs!592579 m!4680267))

(assert (=> b!4070374 d!1210085))

(declare-fun d!1210087 () Bool)

(assert (=> d!1210087 (= (isEmpty!25950 lt!1457164) (not ((_ is Some!9401) lt!1457164)))))

(assert (=> b!4070353 d!1210087))

(declare-fun b!4070949 () Bool)

(declare-fun res!1662311 () Bool)

(declare-fun e!2526471 () Bool)

(assert (=> b!4070949 (=> (not res!1662311) (not e!2526471))))

(declare-fun lt!1457405 () Option!9402)

(assert (=> b!4070949 (= res!1662311 (= (++!11390 (list!16212 (charsOf!4804 (_1!24397 (get!14258 lt!1457405)))) (_2!24397 (get!14258 lt!1457405))) lt!1457170))))

(declare-fun b!4070950 () Bool)

(declare-fun res!1662308 () Bool)

(assert (=> b!4070950 (=> (not res!1662308) (not e!2526471))))

(assert (=> b!4070950 (= res!1662308 (< (size!32504 (_2!24397 (get!14258 lt!1457405))) (size!32504 lt!1457170)))))

(declare-fun b!4070951 () Bool)

(declare-fun res!1662313 () Bool)

(assert (=> b!4070951 (=> (not res!1662313) (not e!2526471))))

(assert (=> b!4070951 (= res!1662313 (= (value!219792 (_1!24397 (get!14258 lt!1457405))) (apply!10177 (transformation!6988 (rule!10096 (_1!24397 (get!14258 lt!1457405)))) (seqFromList!5205 (originalCharacters!7588 (_1!24397 (get!14258 lt!1457405)))))))))

(declare-fun b!4070952 () Bool)

(assert (=> b!4070952 (= e!2526471 (= (size!32503 (_1!24397 (get!14258 lt!1457405))) (size!32504 (originalCharacters!7588 (_1!24397 (get!14258 lt!1457405))))))))

(declare-fun b!4070953 () Bool)

(declare-fun e!2526472 () Option!9402)

(declare-fun lt!1457403 () tuple2!42530)

(assert (=> b!4070953 (= e!2526472 (Some!9401 (tuple2!42527 (Token!13115 (apply!10177 (transformation!6988 (rule!10096 token!484)) (seqFromList!5205 (_1!24399 lt!1457403))) (rule!10096 token!484) (size!32506 (seqFromList!5205 (_1!24399 lt!1457403))) (_1!24399 lt!1457403)) (_2!24399 lt!1457403))))))

(declare-fun lt!1457406 () Unit!63043)

(assert (=> b!4070953 (= lt!1457406 (longestMatchIsAcceptedByMatchOrIsEmpty!1396 (regex!6988 (rule!10096 token!484)) lt!1457170))))

(declare-fun res!1662310 () Bool)

(assert (=> b!4070953 (= res!1662310 (isEmpty!25953 (_1!24399 (findLongestMatchInner!1423 (regex!6988 (rule!10096 token!484)) Nil!43475 (size!32504 Nil!43475) lt!1457170 lt!1457170 (size!32504 lt!1457170)))))))

(declare-fun e!2526473 () Bool)

(assert (=> b!4070953 (=> res!1662310 e!2526473)))

(assert (=> b!4070953 e!2526473))

(declare-fun lt!1457402 () Unit!63043)

(assert (=> b!4070953 (= lt!1457402 lt!1457406)))

(declare-fun lt!1457404 () Unit!63043)

(assert (=> b!4070953 (= lt!1457404 (lemmaSemiInverse!1955 (transformation!6988 (rule!10096 token!484)) (seqFromList!5205 (_1!24399 lt!1457403))))))

(declare-fun d!1210089 () Bool)

(declare-fun e!2526474 () Bool)

(assert (=> d!1210089 e!2526474))

(declare-fun res!1662314 () Bool)

(assert (=> d!1210089 (=> res!1662314 e!2526474)))

(assert (=> d!1210089 (= res!1662314 (isEmpty!25950 lt!1457405))))

(assert (=> d!1210089 (= lt!1457405 e!2526472)))

(declare-fun c!702689 () Bool)

(assert (=> d!1210089 (= c!702689 (isEmpty!25953 (_1!24399 lt!1457403)))))

(assert (=> d!1210089 (= lt!1457403 (findLongestMatch!1336 (regex!6988 (rule!10096 token!484)) lt!1457170))))

(assert (=> d!1210089 (ruleValid!2918 thiss!21717 (rule!10096 token!484))))

(assert (=> d!1210089 (= (maxPrefixOneRule!2887 thiss!21717 (rule!10096 token!484) lt!1457170) lt!1457405)))

(declare-fun b!4070954 () Bool)

(assert (=> b!4070954 (= e!2526473 (matchR!5846 (regex!6988 (rule!10096 token!484)) (_1!24399 (findLongestMatchInner!1423 (regex!6988 (rule!10096 token!484)) Nil!43475 (size!32504 Nil!43475) lt!1457170 lt!1457170 (size!32504 lt!1457170)))))))

(declare-fun b!4070955 () Bool)

(assert (=> b!4070955 (= e!2526474 e!2526471)))

(declare-fun res!1662312 () Bool)

(assert (=> b!4070955 (=> (not res!1662312) (not e!2526471))))

(assert (=> b!4070955 (= res!1662312 (matchR!5846 (regex!6988 (rule!10096 token!484)) (list!16212 (charsOf!4804 (_1!24397 (get!14258 lt!1457405))))))))

(declare-fun b!4070956 () Bool)

(assert (=> b!4070956 (= e!2526472 None!9401)))

(declare-fun b!4070957 () Bool)

(declare-fun res!1662309 () Bool)

(assert (=> b!4070957 (=> (not res!1662309) (not e!2526471))))

(assert (=> b!4070957 (= res!1662309 (= (rule!10096 (_1!24397 (get!14258 lt!1457405))) (rule!10096 token!484)))))

(assert (= (and d!1210089 c!702689) b!4070956))

(assert (= (and d!1210089 (not c!702689)) b!4070953))

(assert (= (and b!4070953 (not res!1662310)) b!4070954))

(assert (= (and d!1210089 (not res!1662314)) b!4070955))

(assert (= (and b!4070955 res!1662312) b!4070949))

(assert (= (and b!4070949 res!1662311) b!4070950))

(assert (= (and b!4070950 res!1662308) b!4070957))

(assert (= (and b!4070957 res!1662309) b!4070951))

(assert (= (and b!4070951 res!1662313) b!4070952))

(assert (=> b!4070954 m!4680023))

(assert (=> b!4070954 m!4680095))

(assert (=> b!4070954 m!4680023))

(assert (=> b!4070954 m!4680095))

(declare-fun m!4680269 () Bool)

(assert (=> b!4070954 m!4680269))

(declare-fun m!4680271 () Bool)

(assert (=> b!4070954 m!4680271))

(declare-fun m!4680273 () Bool)

(assert (=> b!4070953 m!4680273))

(declare-fun m!4680275 () Bool)

(assert (=> b!4070953 m!4680275))

(declare-fun m!4680277 () Bool)

(assert (=> b!4070953 m!4680277))

(declare-fun m!4680279 () Bool)

(assert (=> b!4070953 m!4680279))

(assert (=> b!4070953 m!4680275))

(declare-fun m!4680281 () Bool)

(assert (=> b!4070953 m!4680281))

(assert (=> b!4070953 m!4680095))

(assert (=> b!4070953 m!4680023))

(assert (=> b!4070953 m!4680095))

(assert (=> b!4070953 m!4680269))

(assert (=> b!4070953 m!4680023))

(assert (=> b!4070953 m!4680275))

(declare-fun m!4680283 () Bool)

(assert (=> b!4070953 m!4680283))

(assert (=> b!4070953 m!4680275))

(declare-fun m!4680285 () Bool)

(assert (=> b!4070955 m!4680285))

(declare-fun m!4680287 () Bool)

(assert (=> b!4070955 m!4680287))

(assert (=> b!4070955 m!4680287))

(declare-fun m!4680289 () Bool)

(assert (=> b!4070955 m!4680289))

(assert (=> b!4070955 m!4680289))

(declare-fun m!4680291 () Bool)

(assert (=> b!4070955 m!4680291))

(assert (=> b!4070949 m!4680285))

(assert (=> b!4070949 m!4680287))

(assert (=> b!4070949 m!4680287))

(assert (=> b!4070949 m!4680289))

(assert (=> b!4070949 m!4680289))

(declare-fun m!4680293 () Bool)

(assert (=> b!4070949 m!4680293))

(assert (=> b!4070952 m!4680285))

(declare-fun m!4680295 () Bool)

(assert (=> b!4070952 m!4680295))

(assert (=> b!4070950 m!4680285))

(declare-fun m!4680297 () Bool)

(assert (=> b!4070950 m!4680297))

(assert (=> b!4070950 m!4680095))

(assert (=> b!4070957 m!4680285))

(declare-fun m!4680299 () Bool)

(assert (=> d!1210089 m!4680299))

(declare-fun m!4680301 () Bool)

(assert (=> d!1210089 m!4680301))

(declare-fun m!4680303 () Bool)

(assert (=> d!1210089 m!4680303))

(assert (=> d!1210089 m!4679421))

(assert (=> b!4070951 m!4680285))

(declare-fun m!4680305 () Bool)

(assert (=> b!4070951 m!4680305))

(assert (=> b!4070951 m!4680305))

(declare-fun m!4680307 () Bool)

(assert (=> b!4070951 m!4680307))

(assert (=> b!4070353 d!1210089))

(declare-fun d!1210091 () Bool)

(assert (=> d!1210091 (isEmpty!25950 (maxPrefixOneRule!2887 thiss!21717 (rule!10096 token!484) lt!1457170))))

(declare-fun lt!1457409 () Unit!63043)

(declare-fun choose!24852 (LexerInterface!6577 Rule!13776 List!43601 List!43599) Unit!63043)

(assert (=> d!1210091 (= lt!1457409 (choose!24852 thiss!21717 (rule!10096 token!484) rules!2999 lt!1457170))))

(assert (=> d!1210091 (not (isEmpty!25951 rules!2999))))

(assert (=> d!1210091 (= (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!602 thiss!21717 (rule!10096 token!484) rules!2999 lt!1457170) lt!1457409)))

(declare-fun bs!592580 () Bool)

(assert (= bs!592580 d!1210091))

(assert (=> bs!592580 m!4679381))

(assert (=> bs!592580 m!4679381))

(declare-fun m!4680309 () Bool)

(assert (=> bs!592580 m!4680309))

(declare-fun m!4680311 () Bool)

(assert (=> bs!592580 m!4680311))

(assert (=> bs!592580 m!4679459))

(assert (=> b!4070353 d!1210091))

(declare-fun b!4070962 () Bool)

(declare-fun e!2526477 () Bool)

(declare-fun tp!1231833 () Bool)

(assert (=> b!4070962 (= e!2526477 (and tp_is_empty!20757 tp!1231833))))

(assert (=> b!4070360 (= tp!1231782 e!2526477)))

(assert (= (and b!4070360 ((_ is Cons!43475) (originalCharacters!7588 token!484))) b!4070962))

(declare-fun b!4070963 () Bool)

(declare-fun e!2526478 () Bool)

(declare-fun tp!1231834 () Bool)

(assert (=> b!4070963 (= e!2526478 (and tp_is_empty!20757 tp!1231834))))

(assert (=> b!4070365 (= tp!1231781 e!2526478)))

(assert (= (and b!4070365 ((_ is Cons!43475) (t!337022 prefix!494))) b!4070963))

(declare-fun e!2526481 () Bool)

(assert (=> b!4070356 (= tp!1231773 e!2526481)))

(declare-fun b!4070976 () Bool)

(declare-fun tp!1231849 () Bool)

(assert (=> b!4070976 (= e!2526481 tp!1231849)))

(declare-fun b!4070975 () Bool)

(declare-fun tp!1231847 () Bool)

(declare-fun tp!1231846 () Bool)

(assert (=> b!4070975 (= e!2526481 (and tp!1231847 tp!1231846))))

(declare-fun b!4070977 () Bool)

(declare-fun tp!1231845 () Bool)

(declare-fun tp!1231848 () Bool)

(assert (=> b!4070977 (= e!2526481 (and tp!1231845 tp!1231848))))

(declare-fun b!4070974 () Bool)

(assert (=> b!4070974 (= e!2526481 tp_is_empty!20757)))

(assert (= (and b!4070356 ((_ is ElementMatch!11893) (regex!6988 (h!48897 rules!2999)))) b!4070974))

(assert (= (and b!4070356 ((_ is Concat!19112) (regex!6988 (h!48897 rules!2999)))) b!4070975))

(assert (= (and b!4070356 ((_ is Star!11893) (regex!6988 (h!48897 rules!2999)))) b!4070976))

(assert (= (and b!4070356 ((_ is Union!11893) (regex!6988 (h!48897 rules!2999)))) b!4070977))

(declare-fun e!2526482 () Bool)

(assert (=> b!4070377 (= tp!1231777 e!2526482)))

(declare-fun b!4070980 () Bool)

(declare-fun tp!1231854 () Bool)

(assert (=> b!4070980 (= e!2526482 tp!1231854)))

(declare-fun b!4070979 () Bool)

(declare-fun tp!1231852 () Bool)

(declare-fun tp!1231851 () Bool)

(assert (=> b!4070979 (= e!2526482 (and tp!1231852 tp!1231851))))

(declare-fun b!4070981 () Bool)

(declare-fun tp!1231850 () Bool)

(declare-fun tp!1231853 () Bool)

(assert (=> b!4070981 (= e!2526482 (and tp!1231850 tp!1231853))))

(declare-fun b!4070978 () Bool)

(assert (=> b!4070978 (= e!2526482 tp_is_empty!20757)))

(assert (= (and b!4070377 ((_ is ElementMatch!11893) (regex!6988 (rule!10096 token!484)))) b!4070978))

(assert (= (and b!4070377 ((_ is Concat!19112) (regex!6988 (rule!10096 token!484)))) b!4070979))

(assert (= (and b!4070377 ((_ is Star!11893) (regex!6988 (rule!10096 token!484)))) b!4070980))

(assert (= (and b!4070377 ((_ is Union!11893) (regex!6988 (rule!10096 token!484)))) b!4070981))

(declare-fun b!4070982 () Bool)

(declare-fun e!2526483 () Bool)

(declare-fun tp!1231855 () Bool)

(assert (=> b!4070982 (= e!2526483 (and tp_is_empty!20757 tp!1231855))))

(assert (=> b!4070362 (= tp!1231775 e!2526483)))

(assert (= (and b!4070362 ((_ is Cons!43475) (t!337022 suffixResult!105))) b!4070982))

(declare-fun b!4070993 () Bool)

(declare-fun b_free!113245 () Bool)

(declare-fun b_next!113949 () Bool)

(assert (=> b!4070993 (= b_free!113245 (not b_next!113949))))

(declare-fun t!337046 () Bool)

(declare-fun tb!244669 () Bool)

(assert (=> (and b!4070993 (= (toValue!9548 (transformation!6988 (h!48897 (t!337024 rules!2999)))) (toValue!9548 (transformation!6988 (rule!10096 token!484)))) t!337046) tb!244669))

(declare-fun result!296566 () Bool)

(assert (= result!296566 result!296554))

(assert (=> d!1210017 t!337046))

(declare-fun tp!1231866 () Bool)

(declare-fun b_and!312823 () Bool)

(assert (=> b!4070993 (= tp!1231866 (and (=> t!337046 result!296566) b_and!312823))))

(declare-fun b_free!113247 () Bool)

(declare-fun b_next!113951 () Bool)

(assert (=> b!4070993 (= b_free!113247 (not b_next!113951))))

(declare-fun tb!244671 () Bool)

(declare-fun t!337048 () Bool)

(assert (=> (and b!4070993 (= (toChars!9407 (transformation!6988 (h!48897 (t!337024 rules!2999)))) (toChars!9407 (transformation!6988 (rule!10096 token!484)))) t!337048) tb!244671))

(declare-fun result!296568 () Bool)

(assert (= result!296568 result!296532))

(assert (=> d!1209951 t!337048))

(assert (=> b!4070829 t!337048))

(declare-fun b_and!312825 () Bool)

(declare-fun tp!1231865 () Bool)

(assert (=> b!4070993 (= tp!1231865 (and (=> t!337048 result!296568) b_and!312825))))

(declare-fun e!2526494 () Bool)

(assert (=> b!4070993 (= e!2526494 (and tp!1231866 tp!1231865))))

(declare-fun b!4070992 () Bool)

(declare-fun tp!1231864 () Bool)

(declare-fun e!2526495 () Bool)

(assert (=> b!4070992 (= e!2526495 (and tp!1231864 (inv!58117 (tag!7848 (h!48897 (t!337024 rules!2999)))) (inv!58120 (transformation!6988 (h!48897 (t!337024 rules!2999)))) e!2526494))))

(declare-fun b!4070991 () Bool)

(declare-fun e!2526492 () Bool)

(declare-fun tp!1231867 () Bool)

(assert (=> b!4070991 (= e!2526492 (and e!2526495 tp!1231867))))

(assert (=> b!4070364 (= tp!1231776 e!2526492)))

(assert (= b!4070992 b!4070993))

(assert (= b!4070991 b!4070992))

(assert (= (and b!4070364 ((_ is Cons!43477) (t!337024 rules!2999))) b!4070991))

(declare-fun m!4680313 () Bool)

(assert (=> b!4070992 m!4680313))

(declare-fun m!4680315 () Bool)

(assert (=> b!4070992 m!4680315))

(declare-fun b!4070994 () Bool)

(declare-fun e!2526496 () Bool)

(declare-fun tp!1231868 () Bool)

(assert (=> b!4070994 (= e!2526496 (and tp_is_empty!20757 tp!1231868))))

(assert (=> b!4070375 (= tp!1231783 e!2526496)))

(assert (= (and b!4070375 ((_ is Cons!43475) (t!337022 newSuffix!27))) b!4070994))

(declare-fun b!4070995 () Bool)

(declare-fun e!2526497 () Bool)

(declare-fun tp!1231869 () Bool)

(assert (=> b!4070995 (= e!2526497 (and tp_is_empty!20757 tp!1231869))))

(assert (=> b!4070358 (= tp!1231780 e!2526497)))

(assert (= (and b!4070358 ((_ is Cons!43475) (t!337022 newSuffixResult!27))) b!4070995))

(declare-fun b!4070996 () Bool)

(declare-fun e!2526498 () Bool)

(declare-fun tp!1231870 () Bool)

(assert (=> b!4070996 (= e!2526498 (and tp_is_empty!20757 tp!1231870))))

(assert (=> b!4070369 (= tp!1231778 e!2526498)))

(assert (= (and b!4070369 ((_ is Cons!43475) (t!337022 suffix!1299))) b!4070996))

(declare-fun b_lambda!118929 () Bool)

(assert (= b_lambda!118927 (or (and b!4070380 b_free!113235 (= (toChars!9407 (transformation!6988 (h!48897 rules!2999))) (toChars!9407 (transformation!6988 (rule!10096 token!484))))) (and b!4070357 b_free!113239) (and b!4070993 b_free!113247 (= (toChars!9407 (transformation!6988 (h!48897 (t!337024 rules!2999)))) (toChars!9407 (transformation!6988 (rule!10096 token!484))))) b_lambda!118929)))

(declare-fun b_lambda!118931 () Bool)

(assert (= b_lambda!118915 (or (and b!4070380 b_free!113235 (= (toChars!9407 (transformation!6988 (h!48897 rules!2999))) (toChars!9407 (transformation!6988 (rule!10096 token!484))))) (and b!4070357 b_free!113239) (and b!4070993 b_free!113247 (= (toChars!9407 (transformation!6988 (h!48897 (t!337024 rules!2999)))) (toChars!9407 (transformation!6988 (rule!10096 token!484))))) b_lambda!118931)))

(declare-fun b_lambda!118933 () Bool)

(assert (= b_lambda!118925 (or (and b!4070380 b_free!113233 (= (toValue!9548 (transformation!6988 (h!48897 rules!2999))) (toValue!9548 (transformation!6988 (rule!10096 token!484))))) (and b!4070357 b_free!113237) (and b!4070993 b_free!113245 (= (toValue!9548 (transformation!6988 (h!48897 (t!337024 rules!2999)))) (toValue!9548 (transformation!6988 (rule!10096 token!484))))) b_lambda!118933)))

(check-sat (not d!1210015) (not b!4070908) (not b!4070980) (not b!4070979) (not d!1210041) (not d!1210057) (not d!1210045) (not b!4070994) (not b!4070954) (not b!4070432) (not d!1210031) (not bm!288356) (not b!4070829) (not d!1210065) (not b!4070650) (not b!4070951) (not b!4070812) (not b!4070920) (not d!1210067) (not b!4070928) (not b!4070816) (not b!4070963) (not d!1210037) (not b!4070943) (not b!4070991) (not b!4070995) (not b!4070944) (not b!4070566) b_and!312817 (not b!4070894) (not b!4070981) (not d!1209889) (not b!4070811) (not b!4070565) (not b!4070682) (not b!4070813) (not d!1209903) (not tb!244665) (not b!4070893) (not d!1210089) (not tb!244653) (not b!4070815) tp_is_empty!20757 (not b!4070648) (not d!1209941) (not b!4070459) (not bm!288362) (not b!4070911) (not d!1209951) (not b!4070654) (not b!4070681) (not d!1209979) (not d!1210029) (not b!4070875) (not b!4070810) (not b!4070897) (not b!4070929) (not b_next!113941) (not b!4070876) (not b!4070923) (not b!4070866) (not b!4070892) (not b!4070955) (not d!1210071) (not b_lambda!118933) (not b_next!113943) (not b!4070903) (not b!4070936) (not b!4070577) (not d!1210023) (not b!4070668) (not b!4070938) (not b!4070996) (not d!1210035) (not b!4070940) (not b!4070904) (not b!4070907) (not b_next!113951) (not b!4070900) b_and!312815 (not bm!288363) (not b!4070931) (not b!4070992) (not d!1210011) (not b!4070434) (not b!4070962) (not b!4070522) b_and!312821 (not d!1210025) (not b!4070830) (not b!4070976) (not b!4070542) (not b!4070926) (not b!4070977) (not d!1210047) (not b!4070647) (not b_lambda!118931) (not b!4070918) (not b!4070646) (not d!1209953) (not d!1210053) (not b!4070935) (not b!4070946) (not b!4070915) (not d!1210013) b_and!312825 (not b!4070883) (not d!1209921) (not d!1210009) (not b!4070975) (not b!4070953) (not d!1210051) (not b!4070910) (not b!4070942) (not d!1210049) (not b!4070651) (not b!4070914) (not b!4070934) (not d!1209895) (not b!4070562) (not b!4070669) (not d!1210091) (not d!1209881) (not b!4070947) (not b!4070872) (not b!4070917) (not b!4070431) (not b!4070878) (not b!4070861) (not d!1210055) (not b!4070957) (not b!4070869) (not d!1210075) (not b!4070594) (not b!4070939) (not b!4070492) (not d!1210079) (not b!4070561) (not d!1209923) (not b!4070493) (not b!4070982) (not b!4070653) (not b!4070680) b_and!312823 b_and!312819 (not b!4070880) (not b!4070948) (not b!4070879) (not d!1210085) (not b!4070824) (not b!4070899) (not b_next!113937) (not d!1209973) (not b!4070870) (not b!4070950) (not b!4070649) (not b!4070922) (not b!4070913) (not d!1210061) (not b!4070868) (not b!4070818) (not b!4070921) (not b!4070874) (not b!4070882) (not b_next!113949) (not b!4070822) (not b!4070949) (not b!4070814) (not d!1210069) (not b!4070889) (not b!4070573) (not b_lambda!118929) (not b!4070912) (not b!4070952) (not b_next!113939))
(check-sat b_and!312817 (not b_next!113941) (not b_next!113943) (not b_next!113951) b_and!312815 b_and!312821 b_and!312825 (not b_next!113937) (not b_next!113949) (not b_next!113939) b_and!312823 b_and!312819)
