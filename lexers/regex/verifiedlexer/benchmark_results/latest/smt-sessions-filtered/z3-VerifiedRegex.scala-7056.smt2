; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!374348 () Bool)

(assert start!374348)

(declare-fun b!3977070 () Bool)

(declare-fun b_free!110321 () Bool)

(declare-fun b_next!111025 () Bool)

(assert (=> b!3977070 (= b_free!110321 (not b_next!111025))))

(declare-fun tp!1212573 () Bool)

(declare-fun b_and!305711 () Bool)

(assert (=> b!3977070 (= tp!1212573 b_and!305711)))

(declare-fun b_free!110323 () Bool)

(declare-fun b_next!111027 () Bool)

(assert (=> b!3977070 (= b_free!110323 (not b_next!111027))))

(declare-fun tp!1212570 () Bool)

(declare-fun b_and!305713 () Bool)

(assert (=> b!3977070 (= tp!1212570 b_and!305713)))

(declare-fun b!3977091 () Bool)

(declare-fun b_free!110325 () Bool)

(declare-fun b_next!111029 () Bool)

(assert (=> b!3977091 (= b_free!110325 (not b_next!111029))))

(declare-fun tp!1212569 () Bool)

(declare-fun b_and!305715 () Bool)

(assert (=> b!3977091 (= tp!1212569 b_and!305715)))

(declare-fun b_free!110327 () Bool)

(declare-fun b_next!111031 () Bool)

(assert (=> b!3977091 (= b_free!110327 (not b_next!111031))))

(declare-fun tp!1212578 () Bool)

(declare-fun b_and!305717 () Bool)

(assert (=> b!3977091 (= tp!1212578 b_and!305717)))

(declare-fun e!2464215 () Bool)

(declare-datatypes ((C!23396 0))(
  ( (C!23397 (val!13792 Int)) )
))
(declare-datatypes ((List!42620 0))(
  ( (Nil!42496) (Cons!42496 (h!47916 C!23396) (t!331131 List!42620)) )
))
(declare-datatypes ((IArray!25827 0))(
  ( (IArray!25828 (innerList!12971 List!42620)) )
))
(declare-datatypes ((Conc!12911 0))(
  ( (Node!12911 (left!32159 Conc!12911) (right!32489 Conc!12911) (csize!26052 Int) (cheight!13122 Int)) (Leaf!19968 (xs!16217 IArray!25827) (csize!26053 Int)) (Empty!12911) )
))
(declare-datatypes ((BalanceConc!25416 0))(
  ( (BalanceConc!25417 (c!689342 Conc!12911)) )
))
(declare-datatypes ((List!42621 0))(
  ( (Nil!42497) (Cons!42497 (h!47917 (_ BitVec 16)) (t!331132 List!42621)) )
))
(declare-datatypes ((TokenValue!6930 0))(
  ( (FloatLiteralValue!13860 (text!48955 List!42621)) (TokenValueExt!6929 (__x!26077 Int)) (Broken!34650 (value!211558 List!42621)) (Object!7053) (End!6930) (Def!6930) (Underscore!6930) (Match!6930) (Else!6930) (Error!6930) (Case!6930) (If!6930) (Extends!6930) (Abstract!6930) (Class!6930) (Val!6930) (DelimiterValue!13860 (del!6990 List!42621)) (KeywordValue!6936 (value!211559 List!42621)) (CommentValue!13860 (value!211560 List!42621)) (WhitespaceValue!13860 (value!211561 List!42621)) (IndentationValue!6930 (value!211562 List!42621)) (String!48367) (Int32!6930) (Broken!34651 (value!211563 List!42621)) (Boolean!6931) (Unit!61146) (OperatorValue!6933 (op!6990 List!42621)) (IdentifierValue!13860 (value!211564 List!42621)) (IdentifierValue!13861 (value!211565 List!42621)) (WhitespaceValue!13861 (value!211566 List!42621)) (True!13860) (False!13860) (Broken!34652 (value!211567 List!42621)) (Broken!34653 (value!211568 List!42621)) (True!13861) (RightBrace!6930) (RightBracket!6930) (Colon!6930) (Null!6930) (Comma!6930) (LeftBracket!6930) (False!13861) (LeftBrace!6930) (ImaginaryLiteralValue!6930 (text!48956 List!42621)) (StringLiteralValue!20790 (value!211569 List!42621)) (EOFValue!6930 (value!211570 List!42621)) (IdentValue!6930 (value!211571 List!42621)) (DelimiterValue!13861 (value!211572 List!42621)) (DedentValue!6930 (value!211573 List!42621)) (NewLineValue!6930 (value!211574 List!42621)) (IntegerValue!20790 (value!211575 (_ BitVec 32)) (text!48957 List!42621)) (IntegerValue!20791 (value!211576 Int) (text!48958 List!42621)) (Times!6930) (Or!6930) (Equal!6930) (Minus!6930) (Broken!34654 (value!211577 List!42621)) (And!6930) (Div!6930) (LessEqual!6930) (Mod!6930) (Concat!18535) (Not!6930) (Plus!6930) (SpaceValue!6930 (value!211578 List!42621)) (IntegerValue!20792 (value!211579 Int) (text!48959 List!42621)) (StringLiteralValue!20791 (text!48960 List!42621)) (FloatLiteralValue!13861 (text!48961 List!42621)) (BytesLiteralValue!6930 (value!211580 List!42621)) (CommentValue!13861 (value!211581 List!42621)) (StringLiteralValue!20792 (value!211582 List!42621)) (ErrorTokenValue!6930 (msg!6991 List!42621)) )
))
(declare-datatypes ((Regex!11605 0))(
  ( (ElementMatch!11605 (c!689343 C!23396)) (Concat!18536 (regOne!23722 Regex!11605) (regTwo!23722 Regex!11605)) (EmptyExpr!11605) (Star!11605 (reg!11934 Regex!11605)) (EmptyLang!11605) (Union!11605 (regOne!23723 Regex!11605) (regTwo!23723 Regex!11605)) )
))
(declare-datatypes ((String!48368 0))(
  ( (String!48369 (value!211583 String)) )
))
(declare-datatypes ((TokenValueInjection!13288 0))(
  ( (TokenValueInjection!13289 (toValue!9188 Int) (toChars!9047 Int)) )
))
(declare-datatypes ((Rule!13200 0))(
  ( (Rule!13201 (regex!6700 Regex!11605) (tag!7560 String!48368) (isSeparator!6700 Bool) (transformation!6700 TokenValueInjection!13288)) )
))
(declare-datatypes ((Token!12538 0))(
  ( (Token!12539 (value!211584 TokenValue!6930) (rule!9700 Rule!13200) (size!31792 Int) (originalCharacters!7300 List!42620)) )
))
(declare-fun token!484 () Token!12538)

(declare-fun e!2464228 () Bool)

(declare-fun b!3977064 () Bool)

(declare-fun tp!1212574 () Bool)

(declare-fun inv!56774 (String!48368) Bool)

(declare-fun inv!56777 (TokenValueInjection!13288) Bool)

(assert (=> b!3977064 (= e!2464228 (and tp!1212574 (inv!56774 (tag!7560 (rule!9700 token!484))) (inv!56777 (transformation!6700 (rule!9700 token!484))) e!2464215))))

(declare-fun res!1610911 () Bool)

(declare-fun e!2464235 () Bool)

(assert (=> start!374348 (=> (not res!1610911) (not e!2464235))))

(declare-datatypes ((LexerInterface!6289 0))(
  ( (LexerInterfaceExt!6286 (__x!26078 Int)) (Lexer!6287) )
))
(declare-fun thiss!21717 () LexerInterface!6289)

(get-info :version)

(assert (=> start!374348 (= res!1610911 ((_ is Lexer!6287) thiss!21717))))

(assert (=> start!374348 e!2464235))

(declare-fun e!2464221 () Bool)

(assert (=> start!374348 e!2464221))

(declare-fun e!2464240 () Bool)

(declare-fun inv!56778 (Token!12538) Bool)

(assert (=> start!374348 (and (inv!56778 token!484) e!2464240)))

(declare-fun e!2464225 () Bool)

(assert (=> start!374348 e!2464225))

(declare-fun e!2464237 () Bool)

(assert (=> start!374348 e!2464237))

(declare-fun e!2464226 () Bool)

(assert (=> start!374348 e!2464226))

(assert (=> start!374348 true))

(declare-fun e!2464227 () Bool)

(assert (=> start!374348 e!2464227))

(declare-fun e!2464238 () Bool)

(assert (=> start!374348 e!2464238))

(declare-fun b!3977065 () Bool)

(declare-fun tp_is_empty!20181 () Bool)

(declare-fun tp!1212575 () Bool)

(assert (=> b!3977065 (= e!2464238 (and tp_is_empty!20181 tp!1212575))))

(declare-fun b!3977066 () Bool)

(declare-fun e!2464223 () Bool)

(declare-fun e!2464216 () Bool)

(assert (=> b!3977066 (= e!2464223 e!2464216)))

(declare-fun res!1610929 () Bool)

(assert (=> b!3977066 (=> res!1610929 e!2464216)))

(declare-fun lt!1394846 () List!42620)

(declare-fun prefix!494 () List!42620)

(assert (=> b!3977066 (= res!1610929 (not (= lt!1394846 prefix!494)))))

(declare-fun lt!1394852 () List!42620)

(declare-fun lt!1394830 () List!42620)

(declare-fun ++!11102 (List!42620 List!42620) List!42620)

(assert (=> b!3977066 (= lt!1394846 (++!11102 lt!1394852 lt!1394830))))

(declare-fun getSuffix!2218 (List!42620 List!42620) List!42620)

(assert (=> b!3977066 (= lt!1394830 (getSuffix!2218 prefix!494 lt!1394852))))

(declare-fun isPrefix!3787 (List!42620 List!42620) Bool)

(assert (=> b!3977066 (isPrefix!3787 lt!1394852 prefix!494)))

(declare-datatypes ((Unit!61147 0))(
  ( (Unit!61148) )
))
(declare-fun lt!1394839 () Unit!61147)

(declare-fun lt!1394855 () List!42620)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!365 (List!42620 List!42620 List!42620) Unit!61147)

(assert (=> b!3977066 (= lt!1394839 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!365 prefix!494 lt!1394852 lt!1394855))))

(declare-fun b!3977067 () Bool)

(declare-fun tp!1212568 () Bool)

(assert (=> b!3977067 (= e!2464225 (and tp_is_empty!20181 tp!1212568))))

(declare-fun b!3977068 () Bool)

(declare-fun e!2464230 () Bool)

(assert (=> b!3977068 (= e!2464230 e!2464223)))

(declare-fun res!1610912 () Bool)

(assert (=> b!3977068 (=> res!1610912 e!2464223)))

(assert (=> b!3977068 (= res!1610912 (not (isPrefix!3787 lt!1394852 lt!1394855)))))

(assert (=> b!3977068 (isPrefix!3787 prefix!494 lt!1394855)))

(declare-fun lt!1394851 () Unit!61147)

(declare-fun suffix!1299 () List!42620)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2630 (List!42620 List!42620) Unit!61147)

(assert (=> b!3977068 (= lt!1394851 (lemmaConcatTwoListThenFirstIsPrefix!2630 prefix!494 suffix!1299))))

(declare-fun lt!1394854 () List!42620)

(assert (=> b!3977068 (isPrefix!3787 lt!1394852 lt!1394854)))

(declare-fun lt!1394862 () Unit!61147)

(declare-fun suffixResult!105 () List!42620)

(assert (=> b!3977068 (= lt!1394862 (lemmaConcatTwoListThenFirstIsPrefix!2630 lt!1394852 suffixResult!105))))

(declare-fun b!3977069 () Bool)

(declare-fun e!2464236 () Bool)

(declare-fun e!2464229 () Bool)

(assert (=> b!3977069 (= e!2464236 e!2464229)))

(declare-fun res!1610926 () Bool)

(assert (=> b!3977069 (=> res!1610926 e!2464229)))

(declare-datatypes ((List!42622 0))(
  ( (Nil!42498) (Cons!42498 (h!47918 Rule!13200) (t!331133 List!42622)) )
))
(declare-fun rules!2999 () List!42622)

(declare-datatypes ((tuple2!41736 0))(
  ( (tuple2!41737 (_1!24002 Token!12538) (_2!24002 List!42620)) )
))
(declare-datatypes ((Option!9114 0))(
  ( (None!9113) (Some!9113 (v!39461 tuple2!41736)) )
))
(declare-fun lt!1394853 () Option!9114)

(declare-fun contains!8461 (List!42622 Rule!13200) Bool)

(assert (=> b!3977069 (= res!1610926 (not (contains!8461 rules!2999 (rule!9700 (_1!24002 (v!39461 lt!1394853))))))))

(declare-fun lt!1394865 () Unit!61147)

(declare-fun lemmaCharactersSize!1295 (Token!12538) Unit!61147)

(assert (=> b!3977069 (= lt!1394865 (lemmaCharactersSize!1295 token!484))))

(declare-fun lt!1394833 () Unit!61147)

(assert (=> b!3977069 (= lt!1394833 (lemmaCharactersSize!1295 (_1!24002 (v!39461 lt!1394853))))))

(assert (=> b!3977070 (= e!2464215 (and tp!1212573 tp!1212570))))

(declare-fun b!3977071 () Bool)

(declare-fun e!2464233 () Bool)

(declare-fun tp!1212577 () Bool)

(assert (=> b!3977071 (= e!2464227 (and e!2464233 tp!1212577))))

(declare-fun b!3977072 () Bool)

(declare-fun res!1610928 () Bool)

(assert (=> b!3977072 (=> (not res!1610928) (not e!2464235))))

(declare-fun newSuffix!27 () List!42620)

(assert (=> b!3977072 (= res!1610928 (isPrefix!3787 newSuffix!27 suffix!1299))))

(declare-fun b!3977073 () Bool)

(declare-fun res!1610925 () Bool)

(assert (=> b!3977073 (=> (not res!1610925) (not e!2464235))))

(declare-fun isEmpty!25414 (List!42622) Bool)

(assert (=> b!3977073 (= res!1610925 (not (isEmpty!25414 rules!2999)))))

(declare-fun b!3977074 () Bool)

(assert (=> b!3977074 (= e!2464229 true)))

(declare-fun lt!1394832 () Bool)

(declare-fun rulesValidInductive!2433 (LexerInterface!6289 List!42622) Bool)

(assert (=> b!3977074 (= lt!1394832 (rulesValidInductive!2433 thiss!21717 rules!2999))))

(declare-fun b!3977075 () Bool)

(declare-fun e!2464239 () Bool)

(declare-fun lt!1394840 () Int)

(assert (=> b!3977075 (= e!2464239 (and (= (size!31792 token!484) lt!1394840) (= (originalCharacters!7300 token!484) lt!1394852)))))

(declare-fun b!3977076 () Bool)

(declare-fun e!2464241 () Bool)

(declare-fun e!2464220 () Bool)

(assert (=> b!3977076 (= e!2464241 e!2464220)))

(declare-fun res!1610924 () Bool)

(assert (=> b!3977076 (=> res!1610924 e!2464220)))

(declare-fun matchR!5582 (Regex!11605 List!42620) Bool)

(assert (=> b!3977076 (= res!1610924 (not (matchR!5582 (regex!6700 (rule!9700 token!484)) lt!1394852)))))

(declare-fun lt!1394850 () List!42620)

(assert (=> b!3977076 (isPrefix!3787 lt!1394852 lt!1394850)))

(declare-fun lt!1394861 () Unit!61147)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!620 (List!42620 List!42620 List!42620) Unit!61147)

(assert (=> b!3977076 (= lt!1394861 (lemmaPrefixStaysPrefixWhenAddingToSuffix!620 lt!1394852 prefix!494 newSuffix!27))))

(declare-fun lt!1394831 () Unit!61147)

(assert (=> b!3977076 (= lt!1394831 (lemmaPrefixStaysPrefixWhenAddingToSuffix!620 lt!1394852 prefix!494 suffix!1299))))

(declare-fun b!3977077 () Bool)

(declare-fun e!2464232 () Bool)

(declare-fun e!2464218 () Bool)

(assert (=> b!3977077 (= e!2464232 e!2464218)))

(declare-fun res!1610927 () Bool)

(assert (=> b!3977077 (=> (not res!1610927) (not e!2464218))))

(declare-fun lt!1394849 () List!42620)

(assert (=> b!3977077 (= res!1610927 (= lt!1394849 lt!1394850))))

(assert (=> b!3977077 (= lt!1394850 (++!11102 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!42620)

(assert (=> b!3977077 (= lt!1394849 (++!11102 lt!1394852 newSuffixResult!27))))

(declare-fun b!3977078 () Bool)

(declare-fun res!1610915 () Bool)

(assert (=> b!3977078 (=> (not res!1610915) (not e!2464239))))

(declare-fun lt!1394856 () TokenValue!6930)

(assert (=> b!3977078 (= res!1610915 (= (value!211584 token!484) lt!1394856))))

(declare-fun b!3977079 () Bool)

(declare-fun res!1610919 () Bool)

(assert (=> b!3977079 (=> (not res!1610919) (not e!2464235))))

(declare-fun rulesInvariant!5632 (LexerInterface!6289 List!42622) Bool)

(assert (=> b!3977079 (= res!1610919 (rulesInvariant!5632 thiss!21717 rules!2999))))

(declare-fun b!3977080 () Bool)

(declare-fun e!2464231 () Bool)

(assert (=> b!3977080 (= e!2464231 e!2464241)))

(declare-fun res!1610916 () Bool)

(assert (=> b!3977080 (=> res!1610916 e!2464241)))

(declare-fun lt!1394860 () Option!9114)

(declare-fun lt!1394863 () Option!9114)

(assert (=> b!3977080 (= res!1610916 (not (= lt!1394860 lt!1394863)))))

(declare-fun lt!1394858 () Token!12538)

(assert (=> b!3977080 (= lt!1394860 (Some!9113 (tuple2!41737 lt!1394858 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2621 (LexerInterface!6289 Rule!13200 List!42620) Option!9114)

(assert (=> b!3977080 (= lt!1394860 (maxPrefixOneRule!2621 thiss!21717 (rule!9700 token!484) lt!1394855))))

(assert (=> b!3977080 (= lt!1394858 (Token!12539 lt!1394856 (rule!9700 token!484) lt!1394840 lt!1394852))))

(declare-fun apply!9911 (TokenValueInjection!13288 BalanceConc!25416) TokenValue!6930)

(declare-fun seqFromList!4939 (List!42620) BalanceConc!25416)

(assert (=> b!3977080 (= lt!1394856 (apply!9911 (transformation!6700 (rule!9700 token!484)) (seqFromList!4939 lt!1394852)))))

(declare-fun lt!1394841 () Unit!61147)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1443 (LexerInterface!6289 List!42622 List!42620 List!42620 List!42620 Rule!13200) Unit!61147)

(assert (=> b!3977080 (= lt!1394841 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1443 thiss!21717 rules!2999 lt!1394852 lt!1394855 suffixResult!105 (rule!9700 token!484)))))

(declare-fun lt!1394844 () List!42620)

(assert (=> b!3977080 (= lt!1394844 suffixResult!105)))

(declare-fun lt!1394842 () Unit!61147)

(declare-fun lemmaSamePrefixThenSameSuffix!1974 (List!42620 List!42620 List!42620 List!42620 List!42620) Unit!61147)

(assert (=> b!3977080 (= lt!1394842 (lemmaSamePrefixThenSameSuffix!1974 lt!1394852 lt!1394844 lt!1394852 suffixResult!105 lt!1394855))))

(declare-fun lt!1394857 () List!42620)

(assert (=> b!3977080 (isPrefix!3787 lt!1394852 lt!1394857)))

(declare-fun lt!1394834 () Unit!61147)

(assert (=> b!3977080 (= lt!1394834 (lemmaConcatTwoListThenFirstIsPrefix!2630 lt!1394852 lt!1394844))))

(declare-fun b!3977081 () Bool)

(declare-fun res!1610913 () Bool)

(assert (=> b!3977081 (=> (not res!1610913) (not e!2464235))))

(declare-fun size!31793 (List!42620) Int)

(assert (=> b!3977081 (= res!1610913 (>= (size!31793 suffix!1299) (size!31793 newSuffix!27)))))

(declare-fun b!3977082 () Bool)

(declare-fun e!2464217 () Bool)

(declare-fun tp!1212580 () Bool)

(assert (=> b!3977082 (= e!2464233 (and tp!1212580 (inv!56774 (tag!7560 (h!47918 rules!2999))) (inv!56777 (transformation!6700 (h!47918 rules!2999))) e!2464217))))

(declare-fun b!3977083 () Bool)

(declare-fun tp!1212572 () Bool)

(assert (=> b!3977083 (= e!2464237 (and tp_is_empty!20181 tp!1212572))))

(declare-fun b!3977084 () Bool)

(declare-fun res!1610917 () Bool)

(assert (=> b!3977084 (=> (not res!1610917) (not e!2464239))))

(assert (=> b!3977084 (= res!1610917 (= (size!31792 token!484) (size!31793 (originalCharacters!7300 token!484))))))

(declare-fun tp!1212576 () Bool)

(declare-fun b!3977085 () Bool)

(declare-fun inv!21 (TokenValue!6930) Bool)

(assert (=> b!3977085 (= e!2464240 (and (inv!21 (value!211584 token!484)) e!2464228 tp!1212576))))

(declare-fun b!3977086 () Bool)

(declare-fun e!2464219 () Bool)

(assert (=> b!3977086 (= e!2464219 (not e!2464230))))

(declare-fun res!1610930 () Bool)

(assert (=> b!3977086 (=> res!1610930 e!2464230)))

(assert (=> b!3977086 (= res!1610930 (not (= lt!1394854 lt!1394855)))))

(assert (=> b!3977086 (= lt!1394854 (++!11102 lt!1394852 suffixResult!105))))

(declare-fun lt!1394843 () Unit!61147)

(declare-fun lemmaInv!915 (TokenValueInjection!13288) Unit!61147)

(assert (=> b!3977086 (= lt!1394843 (lemmaInv!915 (transformation!6700 (rule!9700 token!484))))))

(declare-fun ruleValid!2632 (LexerInterface!6289 Rule!13200) Bool)

(assert (=> b!3977086 (ruleValid!2632 thiss!21717 (rule!9700 token!484))))

(declare-fun lt!1394835 () Unit!61147)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1706 (LexerInterface!6289 Rule!13200 List!42622) Unit!61147)

(assert (=> b!3977086 (= lt!1394835 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1706 thiss!21717 (rule!9700 token!484) rules!2999))))

(declare-fun b!3977087 () Bool)

(assert (=> b!3977087 (= e!2464216 e!2464231)))

(declare-fun res!1610918 () Bool)

(assert (=> b!3977087 (=> res!1610918 e!2464231)))

(declare-fun lt!1394845 () List!42620)

(assert (=> b!3977087 (= res!1610918 (or (not (= lt!1394855 lt!1394845)) (not (= lt!1394855 lt!1394857))))))

(assert (=> b!3977087 (= lt!1394845 lt!1394857)))

(assert (=> b!3977087 (= lt!1394857 (++!11102 lt!1394852 lt!1394844))))

(assert (=> b!3977087 (= lt!1394845 (++!11102 lt!1394846 suffix!1299))))

(assert (=> b!3977087 (= lt!1394844 (++!11102 lt!1394830 suffix!1299))))

(declare-fun lt!1394837 () Unit!61147)

(declare-fun lemmaConcatAssociativity!2422 (List!42620 List!42620 List!42620) Unit!61147)

(assert (=> b!3977087 (= lt!1394837 (lemmaConcatAssociativity!2422 lt!1394852 lt!1394830 suffix!1299))))

(declare-fun b!3977088 () Bool)

(declare-fun tp!1212571 () Bool)

(assert (=> b!3977088 (= e!2464226 (and tp_is_empty!20181 tp!1212571))))

(declare-fun b!3977089 () Bool)

(declare-fun tp!1212579 () Bool)

(assert (=> b!3977089 (= e!2464221 (and tp_is_empty!20181 tp!1212579))))

(declare-fun b!3977090 () Bool)

(declare-fun e!2464242 () Bool)

(assert (=> b!3977090 (= e!2464242 e!2464236)))

(declare-fun res!1610914 () Bool)

(assert (=> b!3977090 (=> res!1610914 e!2464236)))

(assert (=> b!3977090 (= res!1610914 (not ((_ is Some!9113) lt!1394853)))))

(declare-fun maxPrefix!3587 (LexerInterface!6289 List!42622 List!42620) Option!9114)

(assert (=> b!3977090 (= lt!1394853 (maxPrefix!3587 thiss!21717 rules!2999 lt!1394850))))

(declare-fun lt!1394838 () tuple2!41736)

(declare-fun lt!1394829 () List!42620)

(assert (=> b!3977090 (and (= suffixResult!105 lt!1394829) (= lt!1394838 (tuple2!41737 lt!1394858 lt!1394829)))))

(declare-fun lt!1394848 () Unit!61147)

(assert (=> b!3977090 (= lt!1394848 (lemmaSamePrefixThenSameSuffix!1974 lt!1394852 suffixResult!105 lt!1394852 lt!1394829 lt!1394855))))

(declare-fun lt!1394864 () List!42620)

(assert (=> b!3977090 (isPrefix!3787 lt!1394852 lt!1394864)))

(declare-fun lt!1394859 () Unit!61147)

(assert (=> b!3977090 (= lt!1394859 (lemmaConcatTwoListThenFirstIsPrefix!2630 lt!1394852 lt!1394829))))

(assert (=> b!3977091 (= e!2464217 (and tp!1212569 tp!1212578))))

(declare-fun b!3977092 () Bool)

(assert (=> b!3977092 (= e!2464218 e!2464219)))

(declare-fun res!1610921 () Bool)

(assert (=> b!3977092 (=> (not res!1610921) (not e!2464219))))

(assert (=> b!3977092 (= res!1610921 (= (maxPrefix!3587 thiss!21717 rules!2999 lt!1394855) lt!1394863))))

(assert (=> b!3977092 (= lt!1394863 (Some!9113 lt!1394838))))

(assert (=> b!3977092 (= lt!1394838 (tuple2!41737 token!484 suffixResult!105))))

(assert (=> b!3977092 (= lt!1394855 (++!11102 prefix!494 suffix!1299))))

(declare-fun b!3977093 () Bool)

(assert (=> b!3977093 (= e!2464235 e!2464232)))

(declare-fun res!1610923 () Bool)

(assert (=> b!3977093 (=> (not res!1610923) (not e!2464232))))

(declare-fun lt!1394836 () Int)

(assert (=> b!3977093 (= res!1610923 (>= lt!1394836 lt!1394840))))

(assert (=> b!3977093 (= lt!1394840 (size!31793 lt!1394852))))

(assert (=> b!3977093 (= lt!1394836 (size!31793 prefix!494))))

(declare-fun list!15772 (BalanceConc!25416) List!42620)

(declare-fun charsOf!4516 (Token!12538) BalanceConc!25416)

(assert (=> b!3977093 (= lt!1394852 (list!15772 (charsOf!4516 token!484)))))

(declare-fun b!3977094 () Bool)

(assert (=> b!3977094 (= e!2464220 e!2464242)))

(declare-fun res!1610920 () Bool)

(assert (=> b!3977094 (=> res!1610920 e!2464242)))

(assert (=> b!3977094 (= res!1610920 (not (= lt!1394864 lt!1394855)))))

(assert (=> b!3977094 (= lt!1394864 (++!11102 lt!1394852 lt!1394829))))

(assert (=> b!3977094 (= lt!1394829 (getSuffix!2218 lt!1394855 lt!1394852))))

(assert (=> b!3977094 e!2464239))

(declare-fun res!1610922 () Bool)

(assert (=> b!3977094 (=> (not res!1610922) (not e!2464239))))

(assert (=> b!3977094 (= res!1610922 (isPrefix!3787 lt!1394855 lt!1394855))))

(declare-fun lt!1394847 () Unit!61147)

(declare-fun lemmaIsPrefixRefl!2379 (List!42620 List!42620) Unit!61147)

(assert (=> b!3977094 (= lt!1394847 (lemmaIsPrefixRefl!2379 lt!1394855 lt!1394855))))

(assert (= (and start!374348 res!1610911) b!3977073))

(assert (= (and b!3977073 res!1610925) b!3977079))

(assert (= (and b!3977079 res!1610919) b!3977081))

(assert (= (and b!3977081 res!1610913) b!3977072))

(assert (= (and b!3977072 res!1610928) b!3977093))

(assert (= (and b!3977093 res!1610923) b!3977077))

(assert (= (and b!3977077 res!1610927) b!3977092))

(assert (= (and b!3977092 res!1610921) b!3977086))

(assert (= (and b!3977086 (not res!1610930)) b!3977068))

(assert (= (and b!3977068 (not res!1610912)) b!3977066))

(assert (= (and b!3977066 (not res!1610929)) b!3977087))

(assert (= (and b!3977087 (not res!1610918)) b!3977080))

(assert (= (and b!3977080 (not res!1610916)) b!3977076))

(assert (= (and b!3977076 (not res!1610924)) b!3977094))

(assert (= (and b!3977094 res!1610922) b!3977078))

(assert (= (and b!3977078 res!1610915) b!3977084))

(assert (= (and b!3977084 res!1610917) b!3977075))

(assert (= (and b!3977094 (not res!1610920)) b!3977090))

(assert (= (and b!3977090 (not res!1610914)) b!3977069))

(assert (= (and b!3977069 (not res!1610926)) b!3977074))

(assert (= (and start!374348 ((_ is Cons!42496) prefix!494)) b!3977089))

(assert (= b!3977064 b!3977070))

(assert (= b!3977085 b!3977064))

(assert (= start!374348 b!3977085))

(assert (= (and start!374348 ((_ is Cons!42496) suffixResult!105)) b!3977067))

(assert (= (and start!374348 ((_ is Cons!42496) suffix!1299)) b!3977083))

(assert (= (and start!374348 ((_ is Cons!42496) newSuffix!27)) b!3977088))

(assert (= b!3977082 b!3977091))

(assert (= b!3977071 b!3977082))

(assert (= (and start!374348 ((_ is Cons!42498) rules!2999)) b!3977071))

(assert (= (and start!374348 ((_ is Cons!42496) newSuffixResult!27)) b!3977065))

(declare-fun m!4548393 () Bool)

(assert (=> b!3977085 m!4548393))

(declare-fun m!4548395 () Bool)

(assert (=> b!3977077 m!4548395))

(declare-fun m!4548397 () Bool)

(assert (=> b!3977077 m!4548397))

(declare-fun m!4548399 () Bool)

(assert (=> b!3977081 m!4548399))

(declare-fun m!4548401 () Bool)

(assert (=> b!3977081 m!4548401))

(declare-fun m!4548403 () Bool)

(assert (=> b!3977090 m!4548403))

(declare-fun m!4548405 () Bool)

(assert (=> b!3977090 m!4548405))

(declare-fun m!4548407 () Bool)

(assert (=> b!3977090 m!4548407))

(declare-fun m!4548409 () Bool)

(assert (=> b!3977090 m!4548409))

(declare-fun m!4548411 () Bool)

(assert (=> b!3977064 m!4548411))

(declare-fun m!4548413 () Bool)

(assert (=> b!3977064 m!4548413))

(declare-fun m!4548415 () Bool)

(assert (=> b!3977072 m!4548415))

(declare-fun m!4548417 () Bool)

(assert (=> b!3977082 m!4548417))

(declare-fun m!4548419 () Bool)

(assert (=> b!3977082 m!4548419))

(declare-fun m!4548421 () Bool)

(assert (=> b!3977069 m!4548421))

(declare-fun m!4548423 () Bool)

(assert (=> b!3977069 m!4548423))

(declare-fun m!4548425 () Bool)

(assert (=> b!3977069 m!4548425))

(declare-fun m!4548427 () Bool)

(assert (=> b!3977094 m!4548427))

(declare-fun m!4548429 () Bool)

(assert (=> b!3977094 m!4548429))

(declare-fun m!4548431 () Bool)

(assert (=> b!3977094 m!4548431))

(declare-fun m!4548433 () Bool)

(assert (=> b!3977094 m!4548433))

(declare-fun m!4548435 () Bool)

(assert (=> b!3977087 m!4548435))

(declare-fun m!4548437 () Bool)

(assert (=> b!3977087 m!4548437))

(declare-fun m!4548439 () Bool)

(assert (=> b!3977087 m!4548439))

(declare-fun m!4548441 () Bool)

(assert (=> b!3977087 m!4548441))

(declare-fun m!4548443 () Bool)

(assert (=> b!3977068 m!4548443))

(declare-fun m!4548445 () Bool)

(assert (=> b!3977068 m!4548445))

(declare-fun m!4548447 () Bool)

(assert (=> b!3977068 m!4548447))

(declare-fun m!4548449 () Bool)

(assert (=> b!3977068 m!4548449))

(declare-fun m!4548451 () Bool)

(assert (=> b!3977068 m!4548451))

(declare-fun m!4548453 () Bool)

(assert (=> b!3977079 m!4548453))

(declare-fun m!4548455 () Bool)

(assert (=> b!3977076 m!4548455))

(declare-fun m!4548457 () Bool)

(assert (=> b!3977076 m!4548457))

(declare-fun m!4548459 () Bool)

(assert (=> b!3977076 m!4548459))

(declare-fun m!4548461 () Bool)

(assert (=> b!3977076 m!4548461))

(declare-fun m!4548463 () Bool)

(assert (=> b!3977080 m!4548463))

(declare-fun m!4548465 () Bool)

(assert (=> b!3977080 m!4548465))

(declare-fun m!4548467 () Bool)

(assert (=> b!3977080 m!4548467))

(declare-fun m!4548469 () Bool)

(assert (=> b!3977080 m!4548469))

(assert (=> b!3977080 m!4548467))

(declare-fun m!4548471 () Bool)

(assert (=> b!3977080 m!4548471))

(declare-fun m!4548473 () Bool)

(assert (=> b!3977080 m!4548473))

(declare-fun m!4548475 () Bool)

(assert (=> b!3977080 m!4548475))

(declare-fun m!4548477 () Bool)

(assert (=> b!3977086 m!4548477))

(declare-fun m!4548479 () Bool)

(assert (=> b!3977086 m!4548479))

(declare-fun m!4548481 () Bool)

(assert (=> b!3977086 m!4548481))

(declare-fun m!4548483 () Bool)

(assert (=> b!3977086 m!4548483))

(declare-fun m!4548485 () Bool)

(assert (=> b!3977084 m!4548485))

(declare-fun m!4548487 () Bool)

(assert (=> b!3977074 m!4548487))

(declare-fun m!4548489 () Bool)

(assert (=> start!374348 m!4548489))

(declare-fun m!4548491 () Bool)

(assert (=> b!3977066 m!4548491))

(declare-fun m!4548493 () Bool)

(assert (=> b!3977066 m!4548493))

(declare-fun m!4548495 () Bool)

(assert (=> b!3977066 m!4548495))

(declare-fun m!4548497 () Bool)

(assert (=> b!3977066 m!4548497))

(declare-fun m!4548499 () Bool)

(assert (=> b!3977093 m!4548499))

(declare-fun m!4548501 () Bool)

(assert (=> b!3977093 m!4548501))

(declare-fun m!4548503 () Bool)

(assert (=> b!3977093 m!4548503))

(assert (=> b!3977093 m!4548503))

(declare-fun m!4548505 () Bool)

(assert (=> b!3977093 m!4548505))

(declare-fun m!4548507 () Bool)

(assert (=> b!3977092 m!4548507))

(declare-fun m!4548509 () Bool)

(assert (=> b!3977092 m!4548509))

(declare-fun m!4548511 () Bool)

(assert (=> b!3977073 m!4548511))

(check-sat (not b!3977093) (not b!3977072) (not b!3977069) (not b!3977079) b_and!305711 (not b!3977071) (not b!3977080) (not b!3977088) (not b_next!111031) (not b!3977084) (not b!3977064) b_and!305715 (not b_next!111027) (not b!3977077) (not b!3977068) (not b!3977065) (not b!3977092) (not b!3977066) b_and!305713 (not b!3977090) (not b!3977074) (not b!3977094) b_and!305717 (not b_next!111025) (not b!3977073) (not b!3977087) (not b!3977081) (not b_next!111029) (not b!3977083) (not b!3977089) (not b!3977082) (not b!3977076) (not b!3977085) (not start!374348) (not b!3977086) (not b!3977067) tp_is_empty!20181)
(check-sat b_and!305713 b_and!305711 (not b_next!111029) (not b_next!111031) b_and!305715 (not b_next!111027) b_and!305717 (not b_next!111025))
