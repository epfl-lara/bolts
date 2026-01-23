; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!377664 () Bool)

(assert start!377664)

(declare-fun b!4010132 () Bool)

(declare-fun b_free!111521 () Bool)

(declare-fun b_next!112225 () Bool)

(assert (=> b!4010132 (= b_free!111521 (not b_next!112225))))

(declare-fun tp!1219965 () Bool)

(declare-fun b_and!308055 () Bool)

(assert (=> b!4010132 (= tp!1219965 b_and!308055)))

(declare-fun b_free!111523 () Bool)

(declare-fun b_next!112227 () Bool)

(assert (=> b!4010132 (= b_free!111523 (not b_next!112227))))

(declare-fun tp!1219956 () Bool)

(declare-fun b_and!308057 () Bool)

(assert (=> b!4010132 (= tp!1219956 b_and!308057)))

(declare-fun b!4010110 () Bool)

(declare-fun b_free!111525 () Bool)

(declare-fun b_next!112229 () Bool)

(assert (=> b!4010110 (= b_free!111525 (not b_next!112229))))

(declare-fun tp!1219959 () Bool)

(declare-fun b_and!308059 () Bool)

(assert (=> b!4010110 (= tp!1219959 b_and!308059)))

(declare-fun b_free!111527 () Bool)

(declare-fun b_next!112231 () Bool)

(assert (=> b!4010110 (= b_free!111527 (not b_next!112231))))

(declare-fun tp!1219957 () Bool)

(declare-fun b_and!308061 () Bool)

(assert (=> b!4010110 (= tp!1219957 b_and!308061)))

(declare-fun b!4010108 () Bool)

(declare-fun res!1629881 () Bool)

(declare-fun e!2486850 () Bool)

(assert (=> b!4010108 (=> (not res!1629881) (not e!2486850))))

(declare-datatypes ((C!23644 0))(
  ( (C!23645 (val!13916 Int)) )
))
(declare-datatypes ((List!43036 0))(
  ( (Nil!42912) (Cons!42912 (h!48332 C!23644) (t!332919 List!43036)) )
))
(declare-fun suffix!1299 () List!43036)

(declare-fun newSuffix!27 () List!43036)

(declare-fun size!32087 (List!43036) Int)

(assert (=> b!4010108 (= res!1629881 (>= (size!32087 suffix!1299) (size!32087 newSuffix!27)))))

(declare-fun b!4010109 () Bool)

(declare-fun e!2486855 () Bool)

(declare-fun tp_is_empty!20429 () Bool)

(declare-fun tp!1219954 () Bool)

(assert (=> b!4010109 (= e!2486855 (and tp_is_empty!20429 tp!1219954))))

(declare-fun e!2486860 () Bool)

(assert (=> b!4010110 (= e!2486860 (and tp!1219959 tp!1219957))))

(declare-fun b!4010111 () Bool)

(declare-fun e!2486857 () Bool)

(declare-fun tp!1219966 () Bool)

(assert (=> b!4010111 (= e!2486857 (and tp_is_empty!20429 tp!1219966))))

(declare-fun b!4010112 () Bool)

(declare-fun e!2486859 () Bool)

(declare-fun ++!11226 (List!43036 List!43036) List!43036)

(declare-fun getSuffix!2336 (List!43036 List!43036) List!43036)

(assert (=> b!4010112 (= e!2486859 (= (++!11226 newSuffix!27 (getSuffix!2336 suffix!1299 newSuffix!27)) suffix!1299))))

(declare-fun b!4010113 () Bool)

(declare-fun e!2486862 () Bool)

(declare-fun e!2486852 () Bool)

(assert (=> b!4010113 (= e!2486862 e!2486852)))

(declare-fun res!1629870 () Bool)

(assert (=> b!4010113 (=> res!1629870 e!2486852)))

(declare-fun lt!1419320 () List!43036)

(declare-fun lt!1419323 () List!43036)

(declare-fun isPrefix!3911 (List!43036 List!43036) Bool)

(assert (=> b!4010113 (= res!1629870 (not (isPrefix!3911 lt!1419320 lt!1419323)))))

(declare-fun prefix!494 () List!43036)

(assert (=> b!4010113 (isPrefix!3911 prefix!494 lt!1419323)))

(declare-datatypes ((Unit!61931 0))(
  ( (Unit!61932) )
))
(declare-fun lt!1419342 () Unit!61931)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2752 (List!43036 List!43036) Unit!61931)

(assert (=> b!4010113 (= lt!1419342 (lemmaConcatTwoListThenFirstIsPrefix!2752 prefix!494 suffix!1299))))

(declare-fun lt!1419333 () List!43036)

(assert (=> b!4010113 (isPrefix!3911 lt!1419320 lt!1419333)))

(declare-fun lt!1419350 () Unit!61931)

(declare-fun suffixResult!105 () List!43036)

(assert (=> b!4010113 (= lt!1419350 (lemmaConcatTwoListThenFirstIsPrefix!2752 lt!1419320 suffixResult!105))))

(declare-fun b!4010114 () Bool)

(declare-fun e!2486861 () Bool)

(declare-fun e!2486867 () Bool)

(declare-fun tp!1219961 () Bool)

(assert (=> b!4010114 (= e!2486861 (and e!2486867 tp!1219961))))

(declare-fun b!4010115 () Bool)

(declare-fun e!2486866 () Bool)

(assert (=> b!4010115 (= e!2486866 (not e!2486862))))

(declare-fun res!1629875 () Bool)

(assert (=> b!4010115 (=> res!1629875 e!2486862)))

(assert (=> b!4010115 (= res!1629875 (not (= lt!1419333 lt!1419323)))))

(assert (=> b!4010115 (= lt!1419333 (++!11226 lt!1419320 suffixResult!105))))

(declare-fun lt!1419345 () Unit!61931)

(declare-datatypes ((IArray!26075 0))(
  ( (IArray!26076 (innerList!13095 List!43036)) )
))
(declare-datatypes ((Conc!13035 0))(
  ( (Node!13035 (left!32377 Conc!13035) (right!32707 Conc!13035) (csize!26300 Int) (cheight!13246 Int)) (Leaf!20154 (xs!16341 IArray!26075) (csize!26301 Int)) (Empty!13035) )
))
(declare-datatypes ((BalanceConc!25664 0))(
  ( (BalanceConc!25665 (c!693432 Conc!13035)) )
))
(declare-datatypes ((List!43037 0))(
  ( (Nil!42913) (Cons!42913 (h!48333 (_ BitVec 16)) (t!332920 List!43037)) )
))
(declare-datatypes ((TokenValue!7054 0))(
  ( (FloatLiteralValue!14108 (text!49823 List!43037)) (TokenValueExt!7053 (__x!26325 Int)) (Broken!35270 (value!215092 List!43037)) (Object!7177) (End!7054) (Def!7054) (Underscore!7054) (Match!7054) (Else!7054) (Error!7054) (Case!7054) (If!7054) (Extends!7054) (Abstract!7054) (Class!7054) (Val!7054) (DelimiterValue!14108 (del!7114 List!43037)) (KeywordValue!7060 (value!215093 List!43037)) (CommentValue!14108 (value!215094 List!43037)) (WhitespaceValue!14108 (value!215095 List!43037)) (IndentationValue!7054 (value!215096 List!43037)) (String!48987) (Int32!7054) (Broken!35271 (value!215097 List!43037)) (Boolean!7055) (Unit!61933) (OperatorValue!7057 (op!7114 List!43037)) (IdentifierValue!14108 (value!215098 List!43037)) (IdentifierValue!14109 (value!215099 List!43037)) (WhitespaceValue!14109 (value!215100 List!43037)) (True!14108) (False!14108) (Broken!35272 (value!215101 List!43037)) (Broken!35273 (value!215102 List!43037)) (True!14109) (RightBrace!7054) (RightBracket!7054) (Colon!7054) (Null!7054) (Comma!7054) (LeftBracket!7054) (False!14109) (LeftBrace!7054) (ImaginaryLiteralValue!7054 (text!49824 List!43037)) (StringLiteralValue!21162 (value!215103 List!43037)) (EOFValue!7054 (value!215104 List!43037)) (IdentValue!7054 (value!215105 List!43037)) (DelimiterValue!14109 (value!215106 List!43037)) (DedentValue!7054 (value!215107 List!43037)) (NewLineValue!7054 (value!215108 List!43037)) (IntegerValue!21162 (value!215109 (_ BitVec 32)) (text!49825 List!43037)) (IntegerValue!21163 (value!215110 Int) (text!49826 List!43037)) (Times!7054) (Or!7054) (Equal!7054) (Minus!7054) (Broken!35274 (value!215111 List!43037)) (And!7054) (Div!7054) (LessEqual!7054) (Mod!7054) (Concat!18783) (Not!7054) (Plus!7054) (SpaceValue!7054 (value!215112 List!43037)) (IntegerValue!21164 (value!215113 Int) (text!49827 List!43037)) (StringLiteralValue!21163 (text!49828 List!43037)) (FloatLiteralValue!14109 (text!49829 List!43037)) (BytesLiteralValue!7054 (value!215114 List!43037)) (CommentValue!14109 (value!215115 List!43037)) (StringLiteralValue!21164 (value!215116 List!43037)) (ErrorTokenValue!7054 (msg!7115 List!43037)) )
))
(declare-datatypes ((Regex!11729 0))(
  ( (ElementMatch!11729 (c!693433 C!23644)) (Concat!18784 (regOne!23970 Regex!11729) (regTwo!23970 Regex!11729)) (EmptyExpr!11729) (Star!11729 (reg!12058 Regex!11729)) (EmptyLang!11729) (Union!11729 (regOne!23971 Regex!11729) (regTwo!23971 Regex!11729)) )
))
(declare-datatypes ((String!48988 0))(
  ( (String!48989 (value!215117 String)) )
))
(declare-datatypes ((TokenValueInjection!13536 0))(
  ( (TokenValueInjection!13537 (toValue!9328 Int) (toChars!9187 Int)) )
))
(declare-datatypes ((Rule!13448 0))(
  ( (Rule!13449 (regex!6824 Regex!11729) (tag!7684 String!48988) (isSeparator!6824 Bool) (transformation!6824 TokenValueInjection!13536)) )
))
(declare-datatypes ((Token!12786 0))(
  ( (Token!12787 (value!215118 TokenValue!7054) (rule!9866 Rule!13448) (size!32088 Int) (originalCharacters!7424 List!43036)) )
))
(declare-fun token!484 () Token!12786)

(declare-fun lemmaInv!1039 (TokenValueInjection!13536) Unit!61931)

(assert (=> b!4010115 (= lt!1419345 (lemmaInv!1039 (transformation!6824 (rule!9866 token!484))))))

(declare-datatypes ((LexerInterface!6413 0))(
  ( (LexerInterfaceExt!6410 (__x!26326 Int)) (Lexer!6411) )
))
(declare-fun thiss!21717 () LexerInterface!6413)

(declare-fun ruleValid!2756 (LexerInterface!6413 Rule!13448) Bool)

(assert (=> b!4010115 (ruleValid!2756 thiss!21717 (rule!9866 token!484))))

(declare-datatypes ((List!43038 0))(
  ( (Nil!42914) (Cons!42914 (h!48334 Rule!13448) (t!332921 List!43038)) )
))
(declare-fun rules!2999 () List!43038)

(declare-fun lt!1419331 () Unit!61931)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1830 (LexerInterface!6413 Rule!13448 List!43038) Unit!61931)

(assert (=> b!4010115 (= lt!1419331 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1830 thiss!21717 (rule!9866 token!484) rules!2999))))

(declare-fun b!4010116 () Bool)

(declare-fun e!2486846 () Bool)

(declare-fun e!2486845 () Bool)

(assert (=> b!4010116 (= e!2486846 e!2486845)))

(declare-fun res!1629880 () Bool)

(assert (=> b!4010116 (=> res!1629880 e!2486845)))

(declare-datatypes ((tuple2!42066 0))(
  ( (tuple2!42067 (_1!24167 Token!12786) (_2!24167 List!43036)) )
))
(declare-datatypes ((Option!9238 0))(
  ( (None!9237) (Some!9237 (v!39605 tuple2!42066)) )
))
(declare-fun lt!1419356 () Option!9238)

(declare-fun lt!1419335 () Option!9238)

(assert (=> b!4010116 (= res!1629880 (not (= lt!1419356 lt!1419335)))))

(declare-fun lt!1419351 () Token!12786)

(assert (=> b!4010116 (= lt!1419356 (Some!9237 (tuple2!42067 lt!1419351 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2731 (LexerInterface!6413 Rule!13448 List!43036) Option!9238)

(assert (=> b!4010116 (= lt!1419356 (maxPrefixOneRule!2731 thiss!21717 (rule!9866 token!484) lt!1419323))))

(declare-fun lt!1419343 () TokenValue!7054)

(declare-fun lt!1419341 () Int)

(assert (=> b!4010116 (= lt!1419351 (Token!12787 lt!1419343 (rule!9866 token!484) lt!1419341 lt!1419320))))

(declare-fun apply!10021 (TokenValueInjection!13536 BalanceConc!25664) TokenValue!7054)

(declare-fun seqFromList!5049 (List!43036) BalanceConc!25664)

(assert (=> b!4010116 (= lt!1419343 (apply!10021 (transformation!6824 (rule!9866 token!484)) (seqFromList!5049 lt!1419320)))))

(declare-fun lt!1419318 () Unit!61931)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1549 (LexerInterface!6413 List!43038 List!43036 List!43036 List!43036 Rule!13448) Unit!61931)

(assert (=> b!4010116 (= lt!1419318 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1549 thiss!21717 rules!2999 lt!1419320 lt!1419323 suffixResult!105 (rule!9866 token!484)))))

(declare-fun lt!1419338 () List!43036)

(assert (=> b!4010116 (= lt!1419338 suffixResult!105)))

(declare-fun lt!1419346 () Unit!61931)

(declare-fun lemmaSamePrefixThenSameSuffix!2082 (List!43036 List!43036 List!43036 List!43036 List!43036) Unit!61931)

(assert (=> b!4010116 (= lt!1419346 (lemmaSamePrefixThenSameSuffix!2082 lt!1419320 lt!1419338 lt!1419320 suffixResult!105 lt!1419323))))

(declare-fun lt!1419358 () List!43036)

(assert (=> b!4010116 (isPrefix!3911 lt!1419320 lt!1419358)))

(declare-fun lt!1419330 () Unit!61931)

(assert (=> b!4010116 (= lt!1419330 (lemmaConcatTwoListThenFirstIsPrefix!2752 lt!1419320 lt!1419338))))

(declare-fun b!4010117 () Bool)

(declare-fun res!1629874 () Bool)

(assert (=> b!4010117 (=> (not res!1629874) (not e!2486850))))

(declare-fun rulesInvariant!5756 (LexerInterface!6413 List!43038) Bool)

(assert (=> b!4010117 (= res!1629874 (rulesInvariant!5756 thiss!21717 rules!2999))))

(declare-fun b!4010118 () Bool)

(declare-fun e!2486865 () Bool)

(declare-fun tp!1219960 () Bool)

(assert (=> b!4010118 (= e!2486865 (and tp_is_empty!20429 tp!1219960))))

(declare-fun b!4010119 () Bool)

(declare-fun e!2486843 () Bool)

(declare-fun e!2486848 () Bool)

(assert (=> b!4010119 (= e!2486843 e!2486848)))

(declare-fun res!1629877 () Bool)

(assert (=> b!4010119 (=> res!1629877 e!2486848)))

(declare-fun lt!1419326 () Option!9238)

(get-info :version)

(assert (=> b!4010119 (= res!1629877 (not ((_ is Some!9237) lt!1419326)))))

(declare-fun lt!1419344 () List!43036)

(declare-fun maxPrefix!3711 (LexerInterface!6413 List!43038 List!43036) Option!9238)

(assert (=> b!4010119 (= lt!1419326 (maxPrefix!3711 thiss!21717 rules!2999 lt!1419344))))

(declare-fun lt!1419355 () tuple2!42066)

(declare-fun lt!1419328 () List!43036)

(assert (=> b!4010119 (and (= suffixResult!105 lt!1419328) (= lt!1419355 (tuple2!42067 lt!1419351 lt!1419328)))))

(declare-fun lt!1419325 () Unit!61931)

(assert (=> b!4010119 (= lt!1419325 (lemmaSamePrefixThenSameSuffix!2082 lt!1419320 suffixResult!105 lt!1419320 lt!1419328 lt!1419323))))

(declare-fun lt!1419352 () List!43036)

(assert (=> b!4010119 (isPrefix!3911 lt!1419320 lt!1419352)))

(declare-fun lt!1419317 () Unit!61931)

(assert (=> b!4010119 (= lt!1419317 (lemmaConcatTwoListThenFirstIsPrefix!2752 lt!1419320 lt!1419328))))

(declare-fun b!4010120 () Bool)

(declare-fun res!1629869 () Bool)

(assert (=> b!4010120 (=> (not res!1629869) (not e!2486850))))

(assert (=> b!4010120 (= res!1629869 (isPrefix!3911 newSuffix!27 suffix!1299))))

(declare-fun b!4010121 () Bool)

(declare-fun e!2486858 () Bool)

(assert (=> b!4010121 (= e!2486858 e!2486843)))

(declare-fun res!1629865 () Bool)

(assert (=> b!4010121 (=> res!1629865 e!2486843)))

(assert (=> b!4010121 (= res!1629865 (not (= lt!1419352 lt!1419323)))))

(assert (=> b!4010121 (= lt!1419352 (++!11226 lt!1419320 lt!1419328))))

(assert (=> b!4010121 (= lt!1419328 (getSuffix!2336 lt!1419323 lt!1419320))))

(declare-fun e!2486844 () Bool)

(assert (=> b!4010121 e!2486844))

(declare-fun res!1629873 () Bool)

(assert (=> b!4010121 (=> (not res!1629873) (not e!2486844))))

(assert (=> b!4010121 (= res!1629873 (isPrefix!3911 lt!1419323 lt!1419323))))

(declare-fun lt!1419347 () Unit!61931)

(declare-fun lemmaIsPrefixRefl!2487 (List!43036 List!43036) Unit!61931)

(assert (=> b!4010121 (= lt!1419347 (lemmaIsPrefixRefl!2487 lt!1419323 lt!1419323))))

(declare-fun tp!1219955 () Bool)

(declare-fun e!2486849 () Bool)

(declare-fun e!2486856 () Bool)

(declare-fun b!4010122 () Bool)

(declare-fun inv!21 (TokenValue!7054) Bool)

(assert (=> b!4010122 (= e!2486856 (and (inv!21 (value!215118 token!484)) e!2486849 tp!1219955))))

(declare-fun b!4010124 () Bool)

(declare-fun e!2486869 () Bool)

(assert (=> b!4010124 (= e!2486869 e!2486846)))

(declare-fun res!1629867 () Bool)

(assert (=> b!4010124 (=> res!1629867 e!2486846)))

(declare-fun lt!1419354 () List!43036)

(assert (=> b!4010124 (= res!1629867 (or (not (= lt!1419323 lt!1419354)) (not (= lt!1419323 lt!1419358))))))

(assert (=> b!4010124 (= lt!1419354 lt!1419358)))

(assert (=> b!4010124 (= lt!1419358 (++!11226 lt!1419320 lt!1419338))))

(declare-fun lt!1419353 () List!43036)

(assert (=> b!4010124 (= lt!1419354 (++!11226 lt!1419353 suffix!1299))))

(declare-fun lt!1419357 () List!43036)

(assert (=> b!4010124 (= lt!1419338 (++!11226 lt!1419357 suffix!1299))))

(declare-fun lt!1419349 () Unit!61931)

(declare-fun lemmaConcatAssociativity!2536 (List!43036 List!43036 List!43036) Unit!61931)

(assert (=> b!4010124 (= lt!1419349 (lemmaConcatAssociativity!2536 lt!1419320 lt!1419357 suffix!1299))))

(declare-fun b!4010125 () Bool)

(assert (=> b!4010125 (= e!2486844 (and (= (size!32088 token!484) lt!1419341) (= (originalCharacters!7424 token!484) lt!1419320)))))

(declare-fun b!4010126 () Bool)

(assert (=> b!4010126 (= e!2486852 e!2486869)))

(declare-fun res!1629862 () Bool)

(assert (=> b!4010126 (=> res!1629862 e!2486869)))

(assert (=> b!4010126 (= res!1629862 (not (= lt!1419353 prefix!494)))))

(assert (=> b!4010126 (= lt!1419353 (++!11226 lt!1419320 lt!1419357))))

(assert (=> b!4010126 (= lt!1419357 (getSuffix!2336 prefix!494 lt!1419320))))

(assert (=> b!4010126 (isPrefix!3911 lt!1419320 prefix!494)))

(declare-fun lt!1419340 () Unit!61931)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!483 (List!43036 List!43036 List!43036) Unit!61931)

(assert (=> b!4010126 (= lt!1419340 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!483 prefix!494 lt!1419320 lt!1419323))))

(declare-fun b!4010127 () Bool)

(declare-fun res!1629864 () Bool)

(assert (=> b!4010127 (=> (not res!1629864) (not e!2486844))))

(assert (=> b!4010127 (= res!1629864 (= (value!215118 token!484) lt!1419343))))

(declare-fun b!4010128 () Bool)

(declare-fun e!2486854 () Bool)

(assert (=> b!4010128 (= e!2486850 e!2486854)))

(declare-fun res!1629863 () Bool)

(assert (=> b!4010128 (=> (not res!1629863) (not e!2486854))))

(declare-fun lt!1419321 () Int)

(assert (=> b!4010128 (= res!1629863 (>= lt!1419321 lt!1419341))))

(assert (=> b!4010128 (= lt!1419341 (size!32087 lt!1419320))))

(assert (=> b!4010128 (= lt!1419321 (size!32087 prefix!494))))

(declare-fun list!15948 (BalanceConc!25664) List!43036)

(declare-fun charsOf!4640 (Token!12786) BalanceConc!25664)

(assert (=> b!4010128 (= lt!1419320 (list!15948 (charsOf!4640 token!484)))))

(declare-fun b!4010129 () Bool)

(declare-fun e!2486853 () Bool)

(declare-fun tp!1219963 () Bool)

(assert (=> b!4010129 (= e!2486853 (and tp_is_empty!20429 tp!1219963))))

(declare-fun tp!1219958 () Bool)

(declare-fun b!4010130 () Bool)

(declare-fun inv!57317 (String!48988) Bool)

(declare-fun inv!57320 (TokenValueInjection!13536) Bool)

(assert (=> b!4010130 (= e!2486867 (and tp!1219958 (inv!57317 (tag!7684 (h!48334 rules!2999))) (inv!57320 (transformation!6824 (h!48334 rules!2999))) e!2486860))))

(declare-fun b!4010131 () Bool)

(declare-fun e!2486864 () Bool)

(assert (=> b!4010131 (= e!2486864 e!2486866)))

(declare-fun res!1629878 () Bool)

(assert (=> b!4010131 (=> (not res!1629878) (not e!2486866))))

(assert (=> b!4010131 (= res!1629878 (= (maxPrefix!3711 thiss!21717 rules!2999 lt!1419323) lt!1419335))))

(assert (=> b!4010131 (= lt!1419335 (Some!9237 lt!1419355))))

(assert (=> b!4010131 (= lt!1419355 (tuple2!42067 token!484 suffixResult!105))))

(assert (=> b!4010131 (= lt!1419323 (++!11226 prefix!494 suffix!1299))))

(declare-fun e!2486851 () Bool)

(assert (=> b!4010132 (= e!2486851 (and tp!1219965 tp!1219956))))

(declare-fun b!4010133 () Bool)

(declare-fun res!1629879 () Bool)

(assert (=> b!4010133 (=> (not res!1629879) (not e!2486850))))

(declare-fun isEmpty!25636 (List!43038) Bool)

(assert (=> b!4010133 (= res!1629879 (not (isEmpty!25636 rules!2999)))))

(declare-fun tp!1219962 () Bool)

(declare-fun b!4010134 () Bool)

(assert (=> b!4010134 (= e!2486849 (and tp!1219962 (inv!57317 (tag!7684 (rule!9866 token!484))) (inv!57320 (transformation!6824 (rule!9866 token!484))) e!2486851))))

(declare-fun b!4010135 () Bool)

(assert (=> b!4010135 (= e!2486845 e!2486858)))

(declare-fun res!1629866 () Bool)

(assert (=> b!4010135 (=> res!1629866 e!2486858)))

(declare-fun matchR!5690 (Regex!11729 List!43036) Bool)

(assert (=> b!4010135 (= res!1629866 (not (matchR!5690 (regex!6824 (rule!9866 token!484)) lt!1419320)))))

(assert (=> b!4010135 (isPrefix!3911 lt!1419320 lt!1419344)))

(declare-fun lt!1419334 () Unit!61931)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!724 (List!43036 List!43036 List!43036) Unit!61931)

(assert (=> b!4010135 (= lt!1419334 (lemmaPrefixStaysPrefixWhenAddingToSuffix!724 lt!1419320 prefix!494 newSuffix!27))))

(declare-fun lt!1419327 () Unit!61931)

(assert (=> b!4010135 (= lt!1419327 (lemmaPrefixStaysPrefixWhenAddingToSuffix!724 lt!1419320 prefix!494 suffix!1299))))

(declare-fun b!4010136 () Bool)

(declare-fun e!2486863 () Bool)

(declare-fun tp!1219964 () Bool)

(assert (=> b!4010136 (= e!2486863 (and tp_is_empty!20429 tp!1219964))))

(declare-fun b!4010137 () Bool)

(assert (=> b!4010137 (= e!2486848 e!2486859)))

(declare-fun res!1629872 () Bool)

(assert (=> b!4010137 (=> res!1629872 e!2486859)))

(declare-fun lt!1419324 () Option!9238)

(assert (=> b!4010137 (= res!1629872 (not (= lt!1419324 (Some!9237 (v!39605 lt!1419326)))))))

(declare-fun lt!1419319 () List!43036)

(declare-fun newSuffixResult!27 () List!43036)

(assert (=> b!4010137 (isPrefix!3911 lt!1419319 (++!11226 lt!1419319 newSuffixResult!27))))

(declare-fun lt!1419332 () Unit!61931)

(assert (=> b!4010137 (= lt!1419332 (lemmaConcatTwoListThenFirstIsPrefix!2752 lt!1419319 newSuffixResult!27))))

(assert (=> b!4010137 (isPrefix!3911 lt!1419319 (++!11226 lt!1419319 (_2!24167 (v!39605 lt!1419326))))))

(declare-fun lt!1419360 () Unit!61931)

(assert (=> b!4010137 (= lt!1419360 (lemmaConcatTwoListThenFirstIsPrefix!2752 lt!1419319 (_2!24167 (v!39605 lt!1419326))))))

(declare-fun lt!1419329 () TokenValue!7054)

(declare-fun lt!1419361 () Int)

(assert (=> b!4010137 (= lt!1419324 (Some!9237 (tuple2!42067 (Token!12787 lt!1419329 (rule!9866 (_1!24167 (v!39605 lt!1419326))) lt!1419361 lt!1419319) (_2!24167 (v!39605 lt!1419326)))))))

(assert (=> b!4010137 (= lt!1419324 (maxPrefixOneRule!2731 thiss!21717 (rule!9866 (_1!24167 (v!39605 lt!1419326))) lt!1419344))))

(assert (=> b!4010137 (= lt!1419361 (size!32087 lt!1419319))))

(assert (=> b!4010137 (= lt!1419329 (apply!10021 (transformation!6824 (rule!9866 (_1!24167 (v!39605 lt!1419326)))) (seqFromList!5049 lt!1419319)))))

(declare-fun lt!1419339 () Unit!61931)

(assert (=> b!4010137 (= lt!1419339 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1549 thiss!21717 rules!2999 lt!1419319 lt!1419344 (_2!24167 (v!39605 lt!1419326)) (rule!9866 (_1!24167 (v!39605 lt!1419326)))))))

(assert (=> b!4010137 (= lt!1419319 (list!15948 (charsOf!4640 (_1!24167 (v!39605 lt!1419326)))))))

(declare-fun lt!1419322 () Unit!61931)

(assert (=> b!4010137 (= lt!1419322 (lemmaInv!1039 (transformation!6824 (rule!9866 (_1!24167 (v!39605 lt!1419326))))))))

(assert (=> b!4010137 (ruleValid!2756 thiss!21717 (rule!9866 (_1!24167 (v!39605 lt!1419326))))))

(declare-fun lt!1419336 () Unit!61931)

(assert (=> b!4010137 (= lt!1419336 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1830 thiss!21717 (rule!9866 (_1!24167 (v!39605 lt!1419326))) rules!2999))))

(declare-fun lt!1419348 () Unit!61931)

(declare-fun lemmaCharactersSize!1383 (Token!12786) Unit!61931)

(assert (=> b!4010137 (= lt!1419348 (lemmaCharactersSize!1383 token!484))))

(declare-fun lt!1419359 () Unit!61931)

(assert (=> b!4010137 (= lt!1419359 (lemmaCharactersSize!1383 (_1!24167 (v!39605 lt!1419326))))))

(declare-fun b!4010138 () Bool)

(assert (=> b!4010138 (= e!2486854 e!2486864)))

(declare-fun res!1629871 () Bool)

(assert (=> b!4010138 (=> (not res!1629871) (not e!2486864))))

(declare-fun lt!1419337 () List!43036)

(assert (=> b!4010138 (= res!1629871 (= lt!1419337 lt!1419344))))

(assert (=> b!4010138 (= lt!1419344 (++!11226 prefix!494 newSuffix!27))))

(assert (=> b!4010138 (= lt!1419337 (++!11226 lt!1419320 newSuffixResult!27))))

(declare-fun res!1629876 () Bool)

(assert (=> start!377664 (=> (not res!1629876) (not e!2486850))))

(assert (=> start!377664 (= res!1629876 ((_ is Lexer!6411) thiss!21717))))

(assert (=> start!377664 e!2486850))

(assert (=> start!377664 e!2486853))

(declare-fun inv!57321 (Token!12786) Bool)

(assert (=> start!377664 (and (inv!57321 token!484) e!2486856)))

(assert (=> start!377664 e!2486857))

(assert (=> start!377664 e!2486863))

(assert (=> start!377664 e!2486865))

(assert (=> start!377664 true))

(assert (=> start!377664 e!2486861))

(assert (=> start!377664 e!2486855))

(declare-fun b!4010123 () Bool)

(declare-fun res!1629868 () Bool)

(assert (=> b!4010123 (=> (not res!1629868) (not e!2486844))))

(assert (=> b!4010123 (= res!1629868 (= (size!32088 token!484) (size!32087 (originalCharacters!7424 token!484))))))

(assert (= (and start!377664 res!1629876) b!4010133))

(assert (= (and b!4010133 res!1629879) b!4010117))

(assert (= (and b!4010117 res!1629874) b!4010108))

(assert (= (and b!4010108 res!1629881) b!4010120))

(assert (= (and b!4010120 res!1629869) b!4010128))

(assert (= (and b!4010128 res!1629863) b!4010138))

(assert (= (and b!4010138 res!1629871) b!4010131))

(assert (= (and b!4010131 res!1629878) b!4010115))

(assert (= (and b!4010115 (not res!1629875)) b!4010113))

(assert (= (and b!4010113 (not res!1629870)) b!4010126))

(assert (= (and b!4010126 (not res!1629862)) b!4010124))

(assert (= (and b!4010124 (not res!1629867)) b!4010116))

(assert (= (and b!4010116 (not res!1629880)) b!4010135))

(assert (= (and b!4010135 (not res!1629866)) b!4010121))

(assert (= (and b!4010121 res!1629873) b!4010127))

(assert (= (and b!4010127 res!1629864) b!4010123))

(assert (= (and b!4010123 res!1629868) b!4010125))

(assert (= (and b!4010121 (not res!1629865)) b!4010119))

(assert (= (and b!4010119 (not res!1629877)) b!4010137))

(assert (= (and b!4010137 (not res!1629872)) b!4010112))

(assert (= (and start!377664 ((_ is Cons!42912) prefix!494)) b!4010129))

(assert (= b!4010134 b!4010132))

(assert (= b!4010122 b!4010134))

(assert (= start!377664 b!4010122))

(assert (= (and start!377664 ((_ is Cons!42912) suffixResult!105)) b!4010111))

(assert (= (and start!377664 ((_ is Cons!42912) suffix!1299)) b!4010136))

(assert (= (and start!377664 ((_ is Cons!42912) newSuffix!27)) b!4010118))

(assert (= b!4010130 b!4010110))

(assert (= b!4010114 b!4010130))

(assert (= (and start!377664 ((_ is Cons!42914) rules!2999)) b!4010114))

(assert (= (and start!377664 ((_ is Cons!42912) newSuffixResult!27)) b!4010109))

(declare-fun m!4594813 () Bool)

(assert (=> b!4010116 m!4594813))

(declare-fun m!4594815 () Bool)

(assert (=> b!4010116 m!4594815))

(declare-fun m!4594817 () Bool)

(assert (=> b!4010116 m!4594817))

(declare-fun m!4594819 () Bool)

(assert (=> b!4010116 m!4594819))

(declare-fun m!4594821 () Bool)

(assert (=> b!4010116 m!4594821))

(declare-fun m!4594823 () Bool)

(assert (=> b!4010116 m!4594823))

(declare-fun m!4594825 () Bool)

(assert (=> b!4010116 m!4594825))

(assert (=> b!4010116 m!4594815))

(declare-fun m!4594827 () Bool)

(assert (=> b!4010117 m!4594827))

(declare-fun m!4594829 () Bool)

(assert (=> b!4010131 m!4594829))

(declare-fun m!4594831 () Bool)

(assert (=> b!4010131 m!4594831))

(declare-fun m!4594833 () Bool)

(assert (=> b!4010119 m!4594833))

(declare-fun m!4594835 () Bool)

(assert (=> b!4010119 m!4594835))

(declare-fun m!4594837 () Bool)

(assert (=> b!4010119 m!4594837))

(declare-fun m!4594839 () Bool)

(assert (=> b!4010119 m!4594839))

(declare-fun m!4594841 () Bool)

(assert (=> b!4010121 m!4594841))

(declare-fun m!4594843 () Bool)

(assert (=> b!4010121 m!4594843))

(declare-fun m!4594845 () Bool)

(assert (=> b!4010121 m!4594845))

(declare-fun m!4594847 () Bool)

(assert (=> b!4010121 m!4594847))

(declare-fun m!4594849 () Bool)

(assert (=> b!4010123 m!4594849))

(declare-fun m!4594851 () Bool)

(assert (=> b!4010134 m!4594851))

(declare-fun m!4594853 () Bool)

(assert (=> b!4010134 m!4594853))

(declare-fun m!4594855 () Bool)

(assert (=> b!4010133 m!4594855))

(declare-fun m!4594857 () Bool)

(assert (=> b!4010128 m!4594857))

(declare-fun m!4594859 () Bool)

(assert (=> b!4010128 m!4594859))

(declare-fun m!4594861 () Bool)

(assert (=> b!4010128 m!4594861))

(assert (=> b!4010128 m!4594861))

(declare-fun m!4594863 () Bool)

(assert (=> b!4010128 m!4594863))

(declare-fun m!4594865 () Bool)

(assert (=> b!4010113 m!4594865))

(declare-fun m!4594867 () Bool)

(assert (=> b!4010113 m!4594867))

(declare-fun m!4594869 () Bool)

(assert (=> b!4010113 m!4594869))

(declare-fun m!4594871 () Bool)

(assert (=> b!4010113 m!4594871))

(declare-fun m!4594873 () Bool)

(assert (=> b!4010113 m!4594873))

(declare-fun m!4594875 () Bool)

(assert (=> b!4010112 m!4594875))

(assert (=> b!4010112 m!4594875))

(declare-fun m!4594877 () Bool)

(assert (=> b!4010112 m!4594877))

(declare-fun m!4594879 () Bool)

(assert (=> b!4010124 m!4594879))

(declare-fun m!4594881 () Bool)

(assert (=> b!4010124 m!4594881))

(declare-fun m!4594883 () Bool)

(assert (=> b!4010124 m!4594883))

(declare-fun m!4594885 () Bool)

(assert (=> b!4010124 m!4594885))

(declare-fun m!4594887 () Bool)

(assert (=> b!4010138 m!4594887))

(declare-fun m!4594889 () Bool)

(assert (=> b!4010138 m!4594889))

(declare-fun m!4594891 () Bool)

(assert (=> b!4010130 m!4594891))

(declare-fun m!4594893 () Bool)

(assert (=> b!4010130 m!4594893))

(declare-fun m!4594895 () Bool)

(assert (=> b!4010122 m!4594895))

(declare-fun m!4594897 () Bool)

(assert (=> b!4010137 m!4594897))

(declare-fun m!4594899 () Bool)

(assert (=> b!4010137 m!4594899))

(declare-fun m!4594901 () Bool)

(assert (=> b!4010137 m!4594901))

(declare-fun m!4594903 () Bool)

(assert (=> b!4010137 m!4594903))

(declare-fun m!4594905 () Bool)

(assert (=> b!4010137 m!4594905))

(declare-fun m!4594907 () Bool)

(assert (=> b!4010137 m!4594907))

(declare-fun m!4594909 () Bool)

(assert (=> b!4010137 m!4594909))

(declare-fun m!4594911 () Bool)

(assert (=> b!4010137 m!4594911))

(assert (=> b!4010137 m!4594907))

(declare-fun m!4594913 () Bool)

(assert (=> b!4010137 m!4594913))

(declare-fun m!4594915 () Bool)

(assert (=> b!4010137 m!4594915))

(declare-fun m!4594917 () Bool)

(assert (=> b!4010137 m!4594917))

(declare-fun m!4594919 () Bool)

(assert (=> b!4010137 m!4594919))

(declare-fun m!4594921 () Bool)

(assert (=> b!4010137 m!4594921))

(assert (=> b!4010137 m!4594899))

(declare-fun m!4594923 () Bool)

(assert (=> b!4010137 m!4594923))

(declare-fun m!4594925 () Bool)

(assert (=> b!4010137 m!4594925))

(declare-fun m!4594927 () Bool)

(assert (=> b!4010137 m!4594927))

(assert (=> b!4010137 m!4594919))

(assert (=> b!4010137 m!4594897))

(declare-fun m!4594929 () Bool)

(assert (=> b!4010137 m!4594929))

(declare-fun m!4594931 () Bool)

(assert (=> b!4010137 m!4594931))

(declare-fun m!4594933 () Bool)

(assert (=> b!4010126 m!4594933))

(declare-fun m!4594935 () Bool)

(assert (=> b!4010126 m!4594935))

(declare-fun m!4594937 () Bool)

(assert (=> b!4010126 m!4594937))

(declare-fun m!4594939 () Bool)

(assert (=> b!4010126 m!4594939))

(declare-fun m!4594941 () Bool)

(assert (=> b!4010135 m!4594941))

(declare-fun m!4594943 () Bool)

(assert (=> b!4010135 m!4594943))

(declare-fun m!4594945 () Bool)

(assert (=> b!4010135 m!4594945))

(declare-fun m!4594947 () Bool)

(assert (=> b!4010135 m!4594947))

(declare-fun m!4594949 () Bool)

(assert (=> b!4010120 m!4594949))

(declare-fun m!4594951 () Bool)

(assert (=> b!4010108 m!4594951))

(declare-fun m!4594953 () Bool)

(assert (=> b!4010108 m!4594953))

(declare-fun m!4594955 () Bool)

(assert (=> start!377664 m!4594955))

(declare-fun m!4594957 () Bool)

(assert (=> b!4010115 m!4594957))

(declare-fun m!4594959 () Bool)

(assert (=> b!4010115 m!4594959))

(declare-fun m!4594961 () Bool)

(assert (=> b!4010115 m!4594961))

(declare-fun m!4594963 () Bool)

(assert (=> b!4010115 m!4594963))

(check-sat (not b_next!112227) (not b!4010126) (not b!4010138) (not b!4010128) (not b!4010113) (not b!4010130) b_and!308055 tp_is_empty!20429 (not b!4010134) (not b!4010129) (not b!4010118) (not b!4010109) (not b!4010119) b_and!308061 (not b!4010114) (not b!4010123) (not b!4010136) (not b!4010117) (not b_next!112231) (not b!4010133) (not b!4010115) (not b_next!112229) (not b!4010111) (not b_next!112225) (not b!4010131) (not b!4010121) (not b!4010137) (not b!4010120) (not b!4010108) (not b!4010112) (not b!4010116) (not b!4010124) b_and!308059 (not start!377664) (not b!4010135) b_and!308057 (not b!4010122))
(check-sat (not b_next!112227) b_and!308061 (not b_next!112231) b_and!308059 b_and!308057 b_and!308055 (not b_next!112229) (not b_next!112225))
(get-model)

(declare-fun b!4010153 () Bool)

(declare-fun lt!1419364 () List!43036)

(declare-fun e!2486879 () Bool)

(assert (=> b!4010153 (= e!2486879 (or (not (= suffixResult!105 Nil!42912)) (= lt!1419364 lt!1419320)))))

(declare-fun b!4010150 () Bool)

(declare-fun e!2486878 () List!43036)

(assert (=> b!4010150 (= e!2486878 suffixResult!105)))

(declare-fun b!4010151 () Bool)

(assert (=> b!4010151 (= e!2486878 (Cons!42912 (h!48332 lt!1419320) (++!11226 (t!332919 lt!1419320) suffixResult!105)))))

(declare-fun b!4010152 () Bool)

(declare-fun res!1629894 () Bool)

(assert (=> b!4010152 (=> (not res!1629894) (not e!2486879))))

(assert (=> b!4010152 (= res!1629894 (= (size!32087 lt!1419364) (+ (size!32087 lt!1419320) (size!32087 suffixResult!105))))))

(declare-fun d!1187031 () Bool)

(assert (=> d!1187031 e!2486879))

(declare-fun res!1629893 () Bool)

(assert (=> d!1187031 (=> (not res!1629893) (not e!2486879))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6510 (List!43036) (InoxSet C!23644))

(assert (=> d!1187031 (= res!1629893 (= (content!6510 lt!1419364) ((_ map or) (content!6510 lt!1419320) (content!6510 suffixResult!105))))))

(assert (=> d!1187031 (= lt!1419364 e!2486878)))

(declare-fun c!693436 () Bool)

(assert (=> d!1187031 (= c!693436 ((_ is Nil!42912) lt!1419320))))

(assert (=> d!1187031 (= (++!11226 lt!1419320 suffixResult!105) lt!1419364)))

(assert (= (and d!1187031 c!693436) b!4010150))

(assert (= (and d!1187031 (not c!693436)) b!4010151))

(assert (= (and d!1187031 res!1629893) b!4010152))

(assert (= (and b!4010152 res!1629894) b!4010153))

(declare-fun m!4594969 () Bool)

(assert (=> b!4010151 m!4594969))

(declare-fun m!4594971 () Bool)

(assert (=> b!4010152 m!4594971))

(assert (=> b!4010152 m!4594857))

(declare-fun m!4594973 () Bool)

(assert (=> b!4010152 m!4594973))

(declare-fun m!4594975 () Bool)

(assert (=> d!1187031 m!4594975))

(declare-fun m!4594977 () Bool)

(assert (=> d!1187031 m!4594977))

(declare-fun m!4594979 () Bool)

(assert (=> d!1187031 m!4594979))

(assert (=> b!4010115 d!1187031))

(declare-fun d!1187039 () Bool)

(declare-fun e!2486900 () Bool)

(assert (=> d!1187039 e!2486900))

(declare-fun res!1629917 () Bool)

(assert (=> d!1187039 (=> (not res!1629917) (not e!2486900))))

(declare-fun semiInverseModEq!2923 (Int Int) Bool)

(assert (=> d!1187039 (= res!1629917 (semiInverseModEq!2923 (toChars!9187 (transformation!6824 (rule!9866 token!484))) (toValue!9328 (transformation!6824 (rule!9866 token!484)))))))

(declare-fun Unit!61935 () Unit!61931)

(assert (=> d!1187039 (= (lemmaInv!1039 (transformation!6824 (rule!9866 token!484))) Unit!61935)))

(declare-fun b!4010188 () Bool)

(declare-fun equivClasses!2822 (Int Int) Bool)

(assert (=> b!4010188 (= e!2486900 (equivClasses!2822 (toChars!9187 (transformation!6824 (rule!9866 token!484))) (toValue!9328 (transformation!6824 (rule!9866 token!484)))))))

(assert (= (and d!1187039 res!1629917) b!4010188))

(declare-fun m!4594989 () Bool)

(assert (=> d!1187039 m!4594989))

(declare-fun m!4594991 () Bool)

(assert (=> b!4010188 m!4594991))

(assert (=> b!4010115 d!1187039))

(declare-fun d!1187047 () Bool)

(declare-fun res!1629930 () Bool)

(declare-fun e!2486910 () Bool)

(assert (=> d!1187047 (=> (not res!1629930) (not e!2486910))))

(declare-fun validRegex!5316 (Regex!11729) Bool)

(assert (=> d!1187047 (= res!1629930 (validRegex!5316 (regex!6824 (rule!9866 token!484))))))

(assert (=> d!1187047 (= (ruleValid!2756 thiss!21717 (rule!9866 token!484)) e!2486910)))

(declare-fun b!4010207 () Bool)

(declare-fun res!1629931 () Bool)

(assert (=> b!4010207 (=> (not res!1629931) (not e!2486910))))

(declare-fun nullable!4116 (Regex!11729) Bool)

(assert (=> b!4010207 (= res!1629931 (not (nullable!4116 (regex!6824 (rule!9866 token!484)))))))

(declare-fun b!4010208 () Bool)

(assert (=> b!4010208 (= e!2486910 (not (= (tag!7684 (rule!9866 token!484)) (String!48989 ""))))))

(assert (= (and d!1187047 res!1629930) b!4010207))

(assert (= (and b!4010207 res!1629931) b!4010208))

(declare-fun m!4595009 () Bool)

(assert (=> d!1187047 m!4595009))

(declare-fun m!4595011 () Bool)

(assert (=> b!4010207 m!4595011))

(assert (=> b!4010115 d!1187047))

(declare-fun d!1187051 () Bool)

(assert (=> d!1187051 (ruleValid!2756 thiss!21717 (rule!9866 token!484))))

(declare-fun lt!1419376 () Unit!61931)

(declare-fun choose!24222 (LexerInterface!6413 Rule!13448 List!43038) Unit!61931)

(assert (=> d!1187051 (= lt!1419376 (choose!24222 thiss!21717 (rule!9866 token!484) rules!2999))))

(declare-fun contains!8534 (List!43038 Rule!13448) Bool)

(assert (=> d!1187051 (contains!8534 rules!2999 (rule!9866 token!484))))

(assert (=> d!1187051 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1830 thiss!21717 (rule!9866 token!484) rules!2999) lt!1419376)))

(declare-fun bs!589309 () Bool)

(assert (= bs!589309 d!1187051))

(assert (=> bs!589309 m!4594961))

(declare-fun m!4595029 () Bool)

(assert (=> bs!589309 m!4595029))

(declare-fun m!4595031 () Bool)

(assert (=> bs!589309 m!4595031))

(assert (=> b!4010115 d!1187051))

(declare-fun d!1187059 () Bool)

(assert (=> d!1187059 (= (maxPrefixOneRule!2731 thiss!21717 (rule!9866 (_1!24167 (v!39605 lt!1419326))) lt!1419344) (Some!9237 (tuple2!42067 (Token!12787 (apply!10021 (transformation!6824 (rule!9866 (_1!24167 (v!39605 lt!1419326)))) (seqFromList!5049 lt!1419319)) (rule!9866 (_1!24167 (v!39605 lt!1419326))) (size!32087 lt!1419319) lt!1419319) (_2!24167 (v!39605 lt!1419326)))))))

(declare-fun lt!1419417 () Unit!61931)

(declare-fun choose!24223 (LexerInterface!6413 List!43038 List!43036 List!43036 List!43036 Rule!13448) Unit!61931)

(assert (=> d!1187059 (= lt!1419417 (choose!24223 thiss!21717 rules!2999 lt!1419319 lt!1419344 (_2!24167 (v!39605 lt!1419326)) (rule!9866 (_1!24167 (v!39605 lt!1419326)))))))

(assert (=> d!1187059 (not (isEmpty!25636 rules!2999))))

(assert (=> d!1187059 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1549 thiss!21717 rules!2999 lt!1419319 lt!1419344 (_2!24167 (v!39605 lt!1419326)) (rule!9866 (_1!24167 (v!39605 lt!1419326)))) lt!1419417)))

(declare-fun bs!589316 () Bool)

(assert (= bs!589316 d!1187059))

(declare-fun m!4595149 () Bool)

(assert (=> bs!589316 m!4595149))

(assert (=> bs!589316 m!4594927))

(assert (=> bs!589316 m!4594925))

(assert (=> bs!589316 m!4594855))

(assert (=> bs!589316 m!4594907))

(assert (=> bs!589316 m!4594913))

(assert (=> bs!589316 m!4594907))

(assert (=> b!4010137 d!1187059))

(declare-fun e!2486969 () Bool)

(declare-fun b!4010304 () Bool)

(declare-fun lt!1419418 () List!43036)

(assert (=> b!4010304 (= e!2486969 (or (not (= (_2!24167 (v!39605 lt!1419326)) Nil!42912)) (= lt!1419418 lt!1419319)))))

(declare-fun b!4010301 () Bool)

(declare-fun e!2486966 () List!43036)

(assert (=> b!4010301 (= e!2486966 (_2!24167 (v!39605 lt!1419326)))))

(declare-fun b!4010302 () Bool)

(assert (=> b!4010302 (= e!2486966 (Cons!42912 (h!48332 lt!1419319) (++!11226 (t!332919 lt!1419319) (_2!24167 (v!39605 lt!1419326)))))))

(declare-fun b!4010303 () Bool)

(declare-fun res!1629988 () Bool)

(assert (=> b!4010303 (=> (not res!1629988) (not e!2486969))))

(assert (=> b!4010303 (= res!1629988 (= (size!32087 lt!1419418) (+ (size!32087 lt!1419319) (size!32087 (_2!24167 (v!39605 lt!1419326))))))))

(declare-fun d!1187111 () Bool)

(assert (=> d!1187111 e!2486969))

(declare-fun res!1629987 () Bool)

(assert (=> d!1187111 (=> (not res!1629987) (not e!2486969))))

(assert (=> d!1187111 (= res!1629987 (= (content!6510 lt!1419418) ((_ map or) (content!6510 lt!1419319) (content!6510 (_2!24167 (v!39605 lt!1419326))))))))

(assert (=> d!1187111 (= lt!1419418 e!2486966)))

(declare-fun c!693462 () Bool)

(assert (=> d!1187111 (= c!693462 ((_ is Nil!42912) lt!1419319))))

(assert (=> d!1187111 (= (++!11226 lt!1419319 (_2!24167 (v!39605 lt!1419326))) lt!1419418)))

(assert (= (and d!1187111 c!693462) b!4010301))

(assert (= (and d!1187111 (not c!693462)) b!4010302))

(assert (= (and d!1187111 res!1629987) b!4010303))

(assert (= (and b!4010303 res!1629988) b!4010304))

(declare-fun m!4595151 () Bool)

(assert (=> b!4010302 m!4595151))

(declare-fun m!4595153 () Bool)

(assert (=> b!4010303 m!4595153))

(assert (=> b!4010303 m!4594925))

(declare-fun m!4595155 () Bool)

(assert (=> b!4010303 m!4595155))

(declare-fun m!4595157 () Bool)

(assert (=> d!1187111 m!4595157))

(declare-fun m!4595159 () Bool)

(assert (=> d!1187111 m!4595159))

(declare-fun m!4595161 () Bool)

(assert (=> d!1187111 m!4595161))

(assert (=> b!4010137 d!1187111))

(declare-fun d!1187113 () Bool)

(assert (=> d!1187113 (isPrefix!3911 lt!1419319 (++!11226 lt!1419319 (_2!24167 (v!39605 lt!1419326))))))

(declare-fun lt!1419421 () Unit!61931)

(declare-fun choose!24224 (List!43036 List!43036) Unit!61931)

(assert (=> d!1187113 (= lt!1419421 (choose!24224 lt!1419319 (_2!24167 (v!39605 lt!1419326))))))

(assert (=> d!1187113 (= (lemmaConcatTwoListThenFirstIsPrefix!2752 lt!1419319 (_2!24167 (v!39605 lt!1419326))) lt!1419421)))

(declare-fun bs!589318 () Bool)

(assert (= bs!589318 d!1187113))

(assert (=> bs!589318 m!4594919))

(assert (=> bs!589318 m!4594919))

(assert (=> bs!589318 m!4594921))

(declare-fun m!4595181 () Bool)

(assert (=> bs!589318 m!4595181))

(assert (=> b!4010137 d!1187113))

(declare-fun d!1187121 () Bool)

(assert (=> d!1187121 (= (size!32088 token!484) (size!32087 (originalCharacters!7424 token!484)))))

(declare-fun Unit!61936 () Unit!61931)

(assert (=> d!1187121 (= (lemmaCharactersSize!1383 token!484) Unit!61936)))

(declare-fun bs!589321 () Bool)

(assert (= bs!589321 d!1187121))

(assert (=> bs!589321 m!4594849))

(assert (=> b!4010137 d!1187121))

(declare-fun d!1187129 () Bool)

(declare-fun fromListB!2313 (List!43036) BalanceConc!25664)

(assert (=> d!1187129 (= (seqFromList!5049 lt!1419319) (fromListB!2313 lt!1419319))))

(declare-fun bs!589322 () Bool)

(assert (= bs!589322 d!1187129))

(declare-fun m!4595191 () Bool)

(assert (=> bs!589322 m!4595191))

(assert (=> b!4010137 d!1187129))

(declare-fun d!1187131 () Bool)

(declare-fun dynLambda!18210 (Int BalanceConc!25664) TokenValue!7054)

(assert (=> d!1187131 (= (apply!10021 (transformation!6824 (rule!9866 (_1!24167 (v!39605 lt!1419326)))) (seqFromList!5049 lt!1419319)) (dynLambda!18210 (toValue!9328 (transformation!6824 (rule!9866 (_1!24167 (v!39605 lt!1419326))))) (seqFromList!5049 lt!1419319)))))

(declare-fun b_lambda!117023 () Bool)

(assert (=> (not b_lambda!117023) (not d!1187131)))

(declare-fun tb!241141 () Bool)

(declare-fun t!332927 () Bool)

(assert (=> (and b!4010132 (= (toValue!9328 (transformation!6824 (rule!9866 token!484))) (toValue!9328 (transformation!6824 (rule!9866 (_1!24167 (v!39605 lt!1419326)))))) t!332927) tb!241141))

(declare-fun result!292256 () Bool)

(assert (=> tb!241141 (= result!292256 (inv!21 (dynLambda!18210 (toValue!9328 (transformation!6824 (rule!9866 (_1!24167 (v!39605 lt!1419326))))) (seqFromList!5049 lt!1419319))))))

(declare-fun m!4595193 () Bool)

(assert (=> tb!241141 m!4595193))

(assert (=> d!1187131 t!332927))

(declare-fun b_and!308071 () Bool)

(assert (= b_and!308055 (and (=> t!332927 result!292256) b_and!308071)))

(declare-fun tb!241143 () Bool)

(declare-fun t!332929 () Bool)

(assert (=> (and b!4010110 (= (toValue!9328 (transformation!6824 (h!48334 rules!2999))) (toValue!9328 (transformation!6824 (rule!9866 (_1!24167 (v!39605 lt!1419326)))))) t!332929) tb!241143))

(declare-fun result!292260 () Bool)

(assert (= result!292260 result!292256))

(assert (=> d!1187131 t!332929))

(declare-fun b_and!308073 () Bool)

(assert (= b_and!308059 (and (=> t!332929 result!292260) b_and!308073)))

(assert (=> d!1187131 m!4594907))

(declare-fun m!4595195 () Bool)

(assert (=> d!1187131 m!4595195))

(assert (=> b!4010137 d!1187131))

(declare-fun d!1187133 () Bool)

(declare-fun list!15950 (Conc!13035) List!43036)

(assert (=> d!1187133 (= (list!15948 (charsOf!4640 (_1!24167 (v!39605 lt!1419326)))) (list!15950 (c!693432 (charsOf!4640 (_1!24167 (v!39605 lt!1419326))))))))

(declare-fun bs!589323 () Bool)

(assert (= bs!589323 d!1187133))

(declare-fun m!4595197 () Bool)

(assert (=> bs!589323 m!4595197))

(assert (=> b!4010137 d!1187133))

(declare-fun d!1187135 () Bool)

(declare-fun e!2486986 () Bool)

(assert (=> d!1187135 e!2486986))

(declare-fun res!1630000 () Bool)

(assert (=> d!1187135 (=> (not res!1630000) (not e!2486986))))

(assert (=> d!1187135 (= res!1630000 (semiInverseModEq!2923 (toChars!9187 (transformation!6824 (rule!9866 (_1!24167 (v!39605 lt!1419326))))) (toValue!9328 (transformation!6824 (rule!9866 (_1!24167 (v!39605 lt!1419326)))))))))

(declare-fun Unit!61937 () Unit!61931)

(assert (=> d!1187135 (= (lemmaInv!1039 (transformation!6824 (rule!9866 (_1!24167 (v!39605 lt!1419326))))) Unit!61937)))

(declare-fun b!4010330 () Bool)

(assert (=> b!4010330 (= e!2486986 (equivClasses!2822 (toChars!9187 (transformation!6824 (rule!9866 (_1!24167 (v!39605 lt!1419326))))) (toValue!9328 (transformation!6824 (rule!9866 (_1!24167 (v!39605 lt!1419326)))))))))

(assert (= (and d!1187135 res!1630000) b!4010330))

(declare-fun m!4595199 () Bool)

(assert (=> d!1187135 m!4595199))

(declare-fun m!4595201 () Bool)

(assert (=> b!4010330 m!4595201))

(assert (=> b!4010137 d!1187135))

(declare-fun b!4010433 () Bool)

(declare-fun e!2487041 () Option!9238)

(assert (=> b!4010433 (= e!2487041 None!9237)))

(declare-fun b!4010434 () Bool)

(declare-fun res!1630069 () Bool)

(declare-fun e!2487044 () Bool)

(assert (=> b!4010434 (=> (not res!1630069) (not e!2487044))))

(declare-fun lt!1419480 () Option!9238)

(declare-fun get!14103 (Option!9238) tuple2!42066)

(assert (=> b!4010434 (= res!1630069 (= (value!215118 (_1!24167 (get!14103 lt!1419480))) (apply!10021 (transformation!6824 (rule!9866 (_1!24167 (get!14103 lt!1419480)))) (seqFromList!5049 (originalCharacters!7424 (_1!24167 (get!14103 lt!1419480)))))))))

(declare-fun b!4010435 () Bool)

(declare-fun e!2487043 () Bool)

(declare-datatypes ((tuple2!42068 0))(
  ( (tuple2!42069 (_1!24168 List!43036) (_2!24168 List!43036)) )
))
(declare-fun findLongestMatchInner!1356 (Regex!11729 List!43036 Int List!43036 List!43036 Int) tuple2!42068)

(assert (=> b!4010435 (= e!2487043 (matchR!5690 (regex!6824 (rule!9866 (_1!24167 (v!39605 lt!1419326)))) (_1!24168 (findLongestMatchInner!1356 (regex!6824 (rule!9866 (_1!24167 (v!39605 lt!1419326)))) Nil!42912 (size!32087 Nil!42912) lt!1419344 lt!1419344 (size!32087 lt!1419344)))))))

(declare-fun b!4010436 () Bool)

(declare-fun res!1630074 () Bool)

(assert (=> b!4010436 (=> (not res!1630074) (not e!2487044))))

(assert (=> b!4010436 (= res!1630074 (= (rule!9866 (_1!24167 (get!14103 lt!1419480))) (rule!9866 (_1!24167 (v!39605 lt!1419326)))))))

(declare-fun d!1187137 () Bool)

(declare-fun e!2487042 () Bool)

(assert (=> d!1187137 e!2487042))

(declare-fun res!1630071 () Bool)

(assert (=> d!1187137 (=> res!1630071 e!2487042)))

(declare-fun isEmpty!25638 (Option!9238) Bool)

(assert (=> d!1187137 (= res!1630071 (isEmpty!25638 lt!1419480))))

(assert (=> d!1187137 (= lt!1419480 e!2487041)))

(declare-fun c!693485 () Bool)

(declare-fun lt!1419483 () tuple2!42068)

(declare-fun isEmpty!25639 (List!43036) Bool)

(assert (=> d!1187137 (= c!693485 (isEmpty!25639 (_1!24168 lt!1419483)))))

(declare-fun findLongestMatch!1269 (Regex!11729 List!43036) tuple2!42068)

(assert (=> d!1187137 (= lt!1419483 (findLongestMatch!1269 (regex!6824 (rule!9866 (_1!24167 (v!39605 lt!1419326)))) lt!1419344))))

(assert (=> d!1187137 (ruleValid!2756 thiss!21717 (rule!9866 (_1!24167 (v!39605 lt!1419326))))))

(assert (=> d!1187137 (= (maxPrefixOneRule!2731 thiss!21717 (rule!9866 (_1!24167 (v!39605 lt!1419326))) lt!1419344) lt!1419480)))

(declare-fun b!4010437 () Bool)

(declare-fun res!1630070 () Bool)

(assert (=> b!4010437 (=> (not res!1630070) (not e!2487044))))

(assert (=> b!4010437 (= res!1630070 (= (++!11226 (list!15948 (charsOf!4640 (_1!24167 (get!14103 lt!1419480)))) (_2!24167 (get!14103 lt!1419480))) lt!1419344))))

(declare-fun b!4010438 () Bool)

(declare-fun res!1630068 () Bool)

(assert (=> b!4010438 (=> (not res!1630068) (not e!2487044))))

(assert (=> b!4010438 (= res!1630068 (< (size!32087 (_2!24167 (get!14103 lt!1419480))) (size!32087 lt!1419344)))))

(declare-fun b!4010439 () Bool)

(assert (=> b!4010439 (= e!2487044 (= (size!32088 (_1!24167 (get!14103 lt!1419480))) (size!32087 (originalCharacters!7424 (_1!24167 (get!14103 lt!1419480))))))))

(declare-fun b!4010440 () Bool)

(assert (=> b!4010440 (= e!2487042 e!2487044)))

(declare-fun res!1630073 () Bool)

(assert (=> b!4010440 (=> (not res!1630073) (not e!2487044))))

(assert (=> b!4010440 (= res!1630073 (matchR!5690 (regex!6824 (rule!9866 (_1!24167 (v!39605 lt!1419326)))) (list!15948 (charsOf!4640 (_1!24167 (get!14103 lt!1419480))))))))

(declare-fun b!4010441 () Bool)

(declare-fun size!32089 (BalanceConc!25664) Int)

(assert (=> b!4010441 (= e!2487041 (Some!9237 (tuple2!42067 (Token!12787 (apply!10021 (transformation!6824 (rule!9866 (_1!24167 (v!39605 lt!1419326)))) (seqFromList!5049 (_1!24168 lt!1419483))) (rule!9866 (_1!24167 (v!39605 lt!1419326))) (size!32089 (seqFromList!5049 (_1!24168 lt!1419483))) (_1!24168 lt!1419483)) (_2!24168 lt!1419483))))))

(declare-fun lt!1419482 () Unit!61931)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1329 (Regex!11729 List!43036) Unit!61931)

(assert (=> b!4010441 (= lt!1419482 (longestMatchIsAcceptedByMatchOrIsEmpty!1329 (regex!6824 (rule!9866 (_1!24167 (v!39605 lt!1419326)))) lt!1419344))))

(declare-fun res!1630072 () Bool)

(assert (=> b!4010441 (= res!1630072 (isEmpty!25639 (_1!24168 (findLongestMatchInner!1356 (regex!6824 (rule!9866 (_1!24167 (v!39605 lt!1419326)))) Nil!42912 (size!32087 Nil!42912) lt!1419344 lt!1419344 (size!32087 lt!1419344)))))))

(assert (=> b!4010441 (=> res!1630072 e!2487043)))

(assert (=> b!4010441 e!2487043))

(declare-fun lt!1419484 () Unit!61931)

(assert (=> b!4010441 (= lt!1419484 lt!1419482)))

(declare-fun lt!1419481 () Unit!61931)

(declare-fun lemmaSemiInverse!1876 (TokenValueInjection!13536 BalanceConc!25664) Unit!61931)

(assert (=> b!4010441 (= lt!1419481 (lemmaSemiInverse!1876 (transformation!6824 (rule!9866 (_1!24167 (v!39605 lt!1419326)))) (seqFromList!5049 (_1!24168 lt!1419483))))))

(assert (= (and d!1187137 c!693485) b!4010433))

(assert (= (and d!1187137 (not c!693485)) b!4010441))

(assert (= (and b!4010441 (not res!1630072)) b!4010435))

(assert (= (and d!1187137 (not res!1630071)) b!4010440))

(assert (= (and b!4010440 res!1630073) b!4010437))

(assert (= (and b!4010437 res!1630070) b!4010438))

(assert (= (and b!4010438 res!1630068) b!4010436))

(assert (= (and b!4010436 res!1630074) b!4010434))

(assert (= (and b!4010434 res!1630069) b!4010439))

(declare-fun m!4595423 () Bool)

(assert (=> b!4010440 m!4595423))

(declare-fun m!4595425 () Bool)

(assert (=> b!4010440 m!4595425))

(assert (=> b!4010440 m!4595425))

(declare-fun m!4595427 () Bool)

(assert (=> b!4010440 m!4595427))

(assert (=> b!4010440 m!4595427))

(declare-fun m!4595429 () Bool)

(assert (=> b!4010440 m!4595429))

(declare-fun m!4595431 () Bool)

(assert (=> d!1187137 m!4595431))

(declare-fun m!4595433 () Bool)

(assert (=> d!1187137 m!4595433))

(declare-fun m!4595435 () Bool)

(assert (=> d!1187137 m!4595435))

(assert (=> d!1187137 m!4594911))

(assert (=> b!4010439 m!4595423))

(declare-fun m!4595437 () Bool)

(assert (=> b!4010439 m!4595437))

(assert (=> b!4010434 m!4595423))

(declare-fun m!4595439 () Bool)

(assert (=> b!4010434 m!4595439))

(assert (=> b!4010434 m!4595439))

(declare-fun m!4595441 () Bool)

(assert (=> b!4010434 m!4595441))

(assert (=> b!4010436 m!4595423))

(declare-fun m!4595443 () Bool)

(assert (=> b!4010435 m!4595443))

(declare-fun m!4595445 () Bool)

(assert (=> b!4010435 m!4595445))

(assert (=> b!4010435 m!4595443))

(assert (=> b!4010435 m!4595445))

(declare-fun m!4595447 () Bool)

(assert (=> b!4010435 m!4595447))

(declare-fun m!4595449 () Bool)

(assert (=> b!4010435 m!4595449))

(declare-fun m!4595451 () Bool)

(assert (=> b!4010441 m!4595451))

(declare-fun m!4595453 () Bool)

(assert (=> b!4010441 m!4595453))

(assert (=> b!4010441 m!4595445))

(assert (=> b!4010441 m!4595451))

(declare-fun m!4595455 () Bool)

(assert (=> b!4010441 m!4595455))

(declare-fun m!4595457 () Bool)

(assert (=> b!4010441 m!4595457))

(assert (=> b!4010441 m!4595443))

(assert (=> b!4010441 m!4595451))

(assert (=> b!4010441 m!4595443))

(assert (=> b!4010441 m!4595445))

(assert (=> b!4010441 m!4595447))

(declare-fun m!4595459 () Bool)

(assert (=> b!4010441 m!4595459))

(assert (=> b!4010441 m!4595451))

(declare-fun m!4595461 () Bool)

(assert (=> b!4010441 m!4595461))

(assert (=> b!4010438 m!4595423))

(declare-fun m!4595463 () Bool)

(assert (=> b!4010438 m!4595463))

(assert (=> b!4010438 m!4595445))

(assert (=> b!4010437 m!4595423))

(assert (=> b!4010437 m!4595425))

(assert (=> b!4010437 m!4595425))

(assert (=> b!4010437 m!4595427))

(assert (=> b!4010437 m!4595427))

(declare-fun m!4595465 () Bool)

(assert (=> b!4010437 m!4595465))

(assert (=> b!4010137 d!1187137))

(declare-fun d!1187197 () Bool)

(declare-fun lt!1419487 () BalanceConc!25664)

(assert (=> d!1187197 (= (list!15948 lt!1419487) (originalCharacters!7424 (_1!24167 (v!39605 lt!1419326))))))

(declare-fun dynLambda!18211 (Int TokenValue!7054) BalanceConc!25664)

(assert (=> d!1187197 (= lt!1419487 (dynLambda!18211 (toChars!9187 (transformation!6824 (rule!9866 (_1!24167 (v!39605 lt!1419326))))) (value!215118 (_1!24167 (v!39605 lt!1419326)))))))

(assert (=> d!1187197 (= (charsOf!4640 (_1!24167 (v!39605 lt!1419326))) lt!1419487)))

(declare-fun b_lambda!117031 () Bool)

(assert (=> (not b_lambda!117031) (not d!1187197)))

(declare-fun tb!241157 () Bool)

(declare-fun t!332943 () Bool)

(assert (=> (and b!4010132 (= (toChars!9187 (transformation!6824 (rule!9866 token!484))) (toChars!9187 (transformation!6824 (rule!9866 (_1!24167 (v!39605 lt!1419326)))))) t!332943) tb!241157))

(declare-fun b!4010446 () Bool)

(declare-fun e!2487047 () Bool)

(declare-fun tp!1219973 () Bool)

(declare-fun inv!57324 (Conc!13035) Bool)

(assert (=> b!4010446 (= e!2487047 (and (inv!57324 (c!693432 (dynLambda!18211 (toChars!9187 (transformation!6824 (rule!9866 (_1!24167 (v!39605 lt!1419326))))) (value!215118 (_1!24167 (v!39605 lt!1419326)))))) tp!1219973))))

(declare-fun result!292276 () Bool)

(declare-fun inv!57325 (BalanceConc!25664) Bool)

(assert (=> tb!241157 (= result!292276 (and (inv!57325 (dynLambda!18211 (toChars!9187 (transformation!6824 (rule!9866 (_1!24167 (v!39605 lt!1419326))))) (value!215118 (_1!24167 (v!39605 lt!1419326))))) e!2487047))))

(assert (= tb!241157 b!4010446))

(declare-fun m!4595467 () Bool)

(assert (=> b!4010446 m!4595467))

(declare-fun m!4595469 () Bool)

(assert (=> tb!241157 m!4595469))

(assert (=> d!1187197 t!332943))

(declare-fun b_and!308087 () Bool)

(assert (= b_and!308057 (and (=> t!332943 result!292276) b_and!308087)))

(declare-fun tb!241159 () Bool)

(declare-fun t!332945 () Bool)

(assert (=> (and b!4010110 (= (toChars!9187 (transformation!6824 (h!48334 rules!2999))) (toChars!9187 (transformation!6824 (rule!9866 (_1!24167 (v!39605 lt!1419326)))))) t!332945) tb!241159))

(declare-fun result!292280 () Bool)

(assert (= result!292280 result!292276))

(assert (=> d!1187197 t!332945))

(declare-fun b_and!308089 () Bool)

(assert (= b_and!308061 (and (=> t!332945 result!292280) b_and!308089)))

(declare-fun m!4595471 () Bool)

(assert (=> d!1187197 m!4595471))

(declare-fun m!4595473 () Bool)

(assert (=> d!1187197 m!4595473))

(assert (=> b!4010137 d!1187197))

(declare-fun d!1187199 () Bool)

(declare-fun res!1630075 () Bool)

(declare-fun e!2487048 () Bool)

(assert (=> d!1187199 (=> (not res!1630075) (not e!2487048))))

(assert (=> d!1187199 (= res!1630075 (validRegex!5316 (regex!6824 (rule!9866 (_1!24167 (v!39605 lt!1419326))))))))

(assert (=> d!1187199 (= (ruleValid!2756 thiss!21717 (rule!9866 (_1!24167 (v!39605 lt!1419326)))) e!2487048)))

(declare-fun b!4010447 () Bool)

(declare-fun res!1630076 () Bool)

(assert (=> b!4010447 (=> (not res!1630076) (not e!2487048))))

(assert (=> b!4010447 (= res!1630076 (not (nullable!4116 (regex!6824 (rule!9866 (_1!24167 (v!39605 lt!1419326)))))))))

(declare-fun b!4010448 () Bool)

(assert (=> b!4010448 (= e!2487048 (not (= (tag!7684 (rule!9866 (_1!24167 (v!39605 lt!1419326)))) (String!48989 ""))))))

(assert (= (and d!1187199 res!1630075) b!4010447))

(assert (= (and b!4010447 res!1630076) b!4010448))

(declare-fun m!4595475 () Bool)

(assert (=> d!1187199 m!4595475))

(declare-fun m!4595477 () Bool)

(assert (=> b!4010447 m!4595477))

(assert (=> b!4010137 d!1187199))

(declare-fun d!1187201 () Bool)

(assert (=> d!1187201 (ruleValid!2756 thiss!21717 (rule!9866 (_1!24167 (v!39605 lt!1419326))))))

(declare-fun lt!1419488 () Unit!61931)

(assert (=> d!1187201 (= lt!1419488 (choose!24222 thiss!21717 (rule!9866 (_1!24167 (v!39605 lt!1419326))) rules!2999))))

(assert (=> d!1187201 (contains!8534 rules!2999 (rule!9866 (_1!24167 (v!39605 lt!1419326))))))

(assert (=> d!1187201 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1830 thiss!21717 (rule!9866 (_1!24167 (v!39605 lt!1419326))) rules!2999) lt!1419488)))

(declare-fun bs!589334 () Bool)

(assert (= bs!589334 d!1187201))

(assert (=> bs!589334 m!4594911))

(declare-fun m!4595479 () Bool)

(assert (=> bs!589334 m!4595479))

(declare-fun m!4595481 () Bool)

(assert (=> bs!589334 m!4595481))

(assert (=> b!4010137 d!1187201))

(declare-fun d!1187203 () Bool)

(declare-fun e!2487057 () Bool)

(assert (=> d!1187203 e!2487057))

(declare-fun res!1630087 () Bool)

(assert (=> d!1187203 (=> res!1630087 e!2487057)))

(declare-fun lt!1419491 () Bool)

(assert (=> d!1187203 (= res!1630087 (not lt!1419491))))

(declare-fun e!2487055 () Bool)

(assert (=> d!1187203 (= lt!1419491 e!2487055)))

(declare-fun res!1630086 () Bool)

(assert (=> d!1187203 (=> res!1630086 e!2487055)))

(assert (=> d!1187203 (= res!1630086 ((_ is Nil!42912) lt!1419319))))

(assert (=> d!1187203 (= (isPrefix!3911 lt!1419319 (++!11226 lt!1419319 newSuffixResult!27)) lt!1419491)))

(declare-fun b!4010459 () Bool)

(declare-fun e!2487056 () Bool)

(declare-fun tail!6249 (List!43036) List!43036)

(assert (=> b!4010459 (= e!2487056 (isPrefix!3911 (tail!6249 lt!1419319) (tail!6249 (++!11226 lt!1419319 newSuffixResult!27))))))

(declare-fun b!4010460 () Bool)

(assert (=> b!4010460 (= e!2487057 (>= (size!32087 (++!11226 lt!1419319 newSuffixResult!27)) (size!32087 lt!1419319)))))

(declare-fun b!4010457 () Bool)

(assert (=> b!4010457 (= e!2487055 e!2487056)))

(declare-fun res!1630085 () Bool)

(assert (=> b!4010457 (=> (not res!1630085) (not e!2487056))))

(assert (=> b!4010457 (= res!1630085 (not ((_ is Nil!42912) (++!11226 lt!1419319 newSuffixResult!27))))))

(declare-fun b!4010458 () Bool)

(declare-fun res!1630088 () Bool)

(assert (=> b!4010458 (=> (not res!1630088) (not e!2487056))))

(declare-fun head!8517 (List!43036) C!23644)

(assert (=> b!4010458 (= res!1630088 (= (head!8517 lt!1419319) (head!8517 (++!11226 lt!1419319 newSuffixResult!27))))))

(assert (= (and d!1187203 (not res!1630086)) b!4010457))

(assert (= (and b!4010457 res!1630085) b!4010458))

(assert (= (and b!4010458 res!1630088) b!4010459))

(assert (= (and d!1187203 (not res!1630087)) b!4010460))

(declare-fun m!4595483 () Bool)

(assert (=> b!4010459 m!4595483))

(assert (=> b!4010459 m!4594899))

(declare-fun m!4595485 () Bool)

(assert (=> b!4010459 m!4595485))

(assert (=> b!4010459 m!4595483))

(assert (=> b!4010459 m!4595485))

(declare-fun m!4595487 () Bool)

(assert (=> b!4010459 m!4595487))

(assert (=> b!4010460 m!4594899))

(declare-fun m!4595489 () Bool)

(assert (=> b!4010460 m!4595489))

(assert (=> b!4010460 m!4594925))

(declare-fun m!4595491 () Bool)

(assert (=> b!4010458 m!4595491))

(assert (=> b!4010458 m!4594899))

(declare-fun m!4595493 () Bool)

(assert (=> b!4010458 m!4595493))

(assert (=> b!4010137 d!1187203))

(declare-fun d!1187205 () Bool)

(declare-fun e!2487060 () Bool)

(assert (=> d!1187205 e!2487060))

(declare-fun res!1630091 () Bool)

(assert (=> d!1187205 (=> res!1630091 e!2487060)))

(declare-fun lt!1419492 () Bool)

(assert (=> d!1187205 (= res!1630091 (not lt!1419492))))

(declare-fun e!2487058 () Bool)

(assert (=> d!1187205 (= lt!1419492 e!2487058)))

(declare-fun res!1630090 () Bool)

(assert (=> d!1187205 (=> res!1630090 e!2487058)))

(assert (=> d!1187205 (= res!1630090 ((_ is Nil!42912) lt!1419319))))

(assert (=> d!1187205 (= (isPrefix!3911 lt!1419319 (++!11226 lt!1419319 (_2!24167 (v!39605 lt!1419326)))) lt!1419492)))

(declare-fun b!4010463 () Bool)

(declare-fun e!2487059 () Bool)

(assert (=> b!4010463 (= e!2487059 (isPrefix!3911 (tail!6249 lt!1419319) (tail!6249 (++!11226 lt!1419319 (_2!24167 (v!39605 lt!1419326))))))))

(declare-fun b!4010464 () Bool)

(assert (=> b!4010464 (= e!2487060 (>= (size!32087 (++!11226 lt!1419319 (_2!24167 (v!39605 lt!1419326)))) (size!32087 lt!1419319)))))

(declare-fun b!4010461 () Bool)

(assert (=> b!4010461 (= e!2487058 e!2487059)))

(declare-fun res!1630089 () Bool)

(assert (=> b!4010461 (=> (not res!1630089) (not e!2487059))))

(assert (=> b!4010461 (= res!1630089 (not ((_ is Nil!42912) (++!11226 lt!1419319 (_2!24167 (v!39605 lt!1419326))))))))

(declare-fun b!4010462 () Bool)

(declare-fun res!1630092 () Bool)

(assert (=> b!4010462 (=> (not res!1630092) (not e!2487059))))

(assert (=> b!4010462 (= res!1630092 (= (head!8517 lt!1419319) (head!8517 (++!11226 lt!1419319 (_2!24167 (v!39605 lt!1419326))))))))

(assert (= (and d!1187205 (not res!1630090)) b!4010461))

(assert (= (and b!4010461 res!1630089) b!4010462))

(assert (= (and b!4010462 res!1630092) b!4010463))

(assert (= (and d!1187205 (not res!1630091)) b!4010464))

(assert (=> b!4010463 m!4595483))

(assert (=> b!4010463 m!4594919))

(declare-fun m!4595495 () Bool)

(assert (=> b!4010463 m!4595495))

(assert (=> b!4010463 m!4595483))

(assert (=> b!4010463 m!4595495))

(declare-fun m!4595497 () Bool)

(assert (=> b!4010463 m!4595497))

(assert (=> b!4010464 m!4594919))

(declare-fun m!4595499 () Bool)

(assert (=> b!4010464 m!4595499))

(assert (=> b!4010464 m!4594925))

(assert (=> b!4010462 m!4595491))

(assert (=> b!4010462 m!4594919))

(declare-fun m!4595501 () Bool)

(assert (=> b!4010462 m!4595501))

(assert (=> b!4010137 d!1187205))

(declare-fun d!1187207 () Bool)

(declare-fun lt!1419495 () Int)

(assert (=> d!1187207 (>= lt!1419495 0)))

(declare-fun e!2487063 () Int)

(assert (=> d!1187207 (= lt!1419495 e!2487063)))

(declare-fun c!693488 () Bool)

(assert (=> d!1187207 (= c!693488 ((_ is Nil!42912) lt!1419319))))

(assert (=> d!1187207 (= (size!32087 lt!1419319) lt!1419495)))

(declare-fun b!4010469 () Bool)

(assert (=> b!4010469 (= e!2487063 0)))

(declare-fun b!4010470 () Bool)

(assert (=> b!4010470 (= e!2487063 (+ 1 (size!32087 (t!332919 lt!1419319))))))

(assert (= (and d!1187207 c!693488) b!4010469))

(assert (= (and d!1187207 (not c!693488)) b!4010470))

(declare-fun m!4595503 () Bool)

(assert (=> b!4010470 m!4595503))

(assert (=> b!4010137 d!1187207))

(declare-fun d!1187209 () Bool)

(assert (=> d!1187209 (isPrefix!3911 lt!1419319 (++!11226 lt!1419319 newSuffixResult!27))))

(declare-fun lt!1419496 () Unit!61931)

(assert (=> d!1187209 (= lt!1419496 (choose!24224 lt!1419319 newSuffixResult!27))))

(assert (=> d!1187209 (= (lemmaConcatTwoListThenFirstIsPrefix!2752 lt!1419319 newSuffixResult!27) lt!1419496)))

(declare-fun bs!589335 () Bool)

(assert (= bs!589335 d!1187209))

(assert (=> bs!589335 m!4594899))

(assert (=> bs!589335 m!4594899))

(assert (=> bs!589335 m!4594901))

(declare-fun m!4595505 () Bool)

(assert (=> bs!589335 m!4595505))

(assert (=> b!4010137 d!1187209))

(declare-fun e!2487065 () Bool)

(declare-fun b!4010474 () Bool)

(declare-fun lt!1419497 () List!43036)

(assert (=> b!4010474 (= e!2487065 (or (not (= newSuffixResult!27 Nil!42912)) (= lt!1419497 lt!1419319)))))

(declare-fun b!4010471 () Bool)

(declare-fun e!2487064 () List!43036)

(assert (=> b!4010471 (= e!2487064 newSuffixResult!27)))

(declare-fun b!4010472 () Bool)

(assert (=> b!4010472 (= e!2487064 (Cons!42912 (h!48332 lt!1419319) (++!11226 (t!332919 lt!1419319) newSuffixResult!27)))))

(declare-fun b!4010473 () Bool)

(declare-fun res!1630094 () Bool)

(assert (=> b!4010473 (=> (not res!1630094) (not e!2487065))))

(assert (=> b!4010473 (= res!1630094 (= (size!32087 lt!1419497) (+ (size!32087 lt!1419319) (size!32087 newSuffixResult!27))))))

(declare-fun d!1187211 () Bool)

(assert (=> d!1187211 e!2487065))

(declare-fun res!1630093 () Bool)

(assert (=> d!1187211 (=> (not res!1630093) (not e!2487065))))

(assert (=> d!1187211 (= res!1630093 (= (content!6510 lt!1419497) ((_ map or) (content!6510 lt!1419319) (content!6510 newSuffixResult!27))))))

(assert (=> d!1187211 (= lt!1419497 e!2487064)))

(declare-fun c!693489 () Bool)

(assert (=> d!1187211 (= c!693489 ((_ is Nil!42912) lt!1419319))))

(assert (=> d!1187211 (= (++!11226 lt!1419319 newSuffixResult!27) lt!1419497)))

(assert (= (and d!1187211 c!693489) b!4010471))

(assert (= (and d!1187211 (not c!693489)) b!4010472))

(assert (= (and d!1187211 res!1630093) b!4010473))

(assert (= (and b!4010473 res!1630094) b!4010474))

(declare-fun m!4595507 () Bool)

(assert (=> b!4010472 m!4595507))

(declare-fun m!4595509 () Bool)

(assert (=> b!4010473 m!4595509))

(assert (=> b!4010473 m!4594925))

(declare-fun m!4595511 () Bool)

(assert (=> b!4010473 m!4595511))

(declare-fun m!4595513 () Bool)

(assert (=> d!1187211 m!4595513))

(assert (=> d!1187211 m!4595159))

(declare-fun m!4595515 () Bool)

(assert (=> d!1187211 m!4595515))

(assert (=> b!4010137 d!1187211))

(declare-fun d!1187213 () Bool)

(assert (=> d!1187213 (= (size!32088 (_1!24167 (v!39605 lt!1419326))) (size!32087 (originalCharacters!7424 (_1!24167 (v!39605 lt!1419326)))))))

(declare-fun Unit!61939 () Unit!61931)

(assert (=> d!1187213 (= (lemmaCharactersSize!1383 (_1!24167 (v!39605 lt!1419326))) Unit!61939)))

(declare-fun bs!589336 () Bool)

(assert (= bs!589336 d!1187213))

(declare-fun m!4595517 () Bool)

(assert (=> bs!589336 m!4595517))

(assert (=> b!4010137 d!1187213))

(declare-fun b!4010480 () Bool)

(declare-fun lt!1419504 () List!43036)

(declare-fun e!2487067 () Bool)

(assert (=> b!4010480 (= e!2487067 (or (not (= lt!1419357 Nil!42912)) (= lt!1419504 lt!1419320)))))

(declare-fun b!4010477 () Bool)

(declare-fun e!2487066 () List!43036)

(assert (=> b!4010477 (= e!2487066 lt!1419357)))

(declare-fun b!4010478 () Bool)

(assert (=> b!4010478 (= e!2487066 (Cons!42912 (h!48332 lt!1419320) (++!11226 (t!332919 lt!1419320) lt!1419357)))))

(declare-fun b!4010479 () Bool)

(declare-fun res!1630096 () Bool)

(assert (=> b!4010479 (=> (not res!1630096) (not e!2487067))))

(assert (=> b!4010479 (= res!1630096 (= (size!32087 lt!1419504) (+ (size!32087 lt!1419320) (size!32087 lt!1419357))))))

(declare-fun d!1187215 () Bool)

(assert (=> d!1187215 e!2487067))

(declare-fun res!1630095 () Bool)

(assert (=> d!1187215 (=> (not res!1630095) (not e!2487067))))

(assert (=> d!1187215 (= res!1630095 (= (content!6510 lt!1419504) ((_ map or) (content!6510 lt!1419320) (content!6510 lt!1419357))))))

(assert (=> d!1187215 (= lt!1419504 e!2487066)))

(declare-fun c!693490 () Bool)

(assert (=> d!1187215 (= c!693490 ((_ is Nil!42912) lt!1419320))))

(assert (=> d!1187215 (= (++!11226 lt!1419320 lt!1419357) lt!1419504)))

(assert (= (and d!1187215 c!693490) b!4010477))

(assert (= (and d!1187215 (not c!693490)) b!4010478))

(assert (= (and d!1187215 res!1630095) b!4010479))

(assert (= (and b!4010479 res!1630096) b!4010480))

(declare-fun m!4595519 () Bool)

(assert (=> b!4010478 m!4595519))

(declare-fun m!4595521 () Bool)

(assert (=> b!4010479 m!4595521))

(assert (=> b!4010479 m!4594857))

(declare-fun m!4595523 () Bool)

(assert (=> b!4010479 m!4595523))

(declare-fun m!4595525 () Bool)

(assert (=> d!1187215 m!4595525))

(assert (=> d!1187215 m!4594977))

(declare-fun m!4595527 () Bool)

(assert (=> d!1187215 m!4595527))

(assert (=> b!4010126 d!1187215))

(declare-fun d!1187217 () Bool)

(declare-fun lt!1419511 () List!43036)

(assert (=> d!1187217 (= (++!11226 lt!1419320 lt!1419511) prefix!494)))

(declare-fun e!2487076 () List!43036)

(assert (=> d!1187217 (= lt!1419511 e!2487076)))

(declare-fun c!693495 () Bool)

(assert (=> d!1187217 (= c!693495 ((_ is Cons!42912) lt!1419320))))

(assert (=> d!1187217 (>= (size!32087 prefix!494) (size!32087 lt!1419320))))

(assert (=> d!1187217 (= (getSuffix!2336 prefix!494 lt!1419320) lt!1419511)))

(declare-fun b!4010501 () Bool)

(assert (=> b!4010501 (= e!2487076 (getSuffix!2336 (tail!6249 prefix!494) (t!332919 lt!1419320)))))

(declare-fun b!4010502 () Bool)

(assert (=> b!4010502 (= e!2487076 prefix!494)))

(assert (= (and d!1187217 c!693495) b!4010501))

(assert (= (and d!1187217 (not c!693495)) b!4010502))

(declare-fun m!4595529 () Bool)

(assert (=> d!1187217 m!4595529))

(assert (=> d!1187217 m!4594859))

(assert (=> d!1187217 m!4594857))

(declare-fun m!4595531 () Bool)

(assert (=> b!4010501 m!4595531))

(assert (=> b!4010501 m!4595531))

(declare-fun m!4595533 () Bool)

(assert (=> b!4010501 m!4595533))

(assert (=> b!4010126 d!1187217))

(declare-fun d!1187219 () Bool)

(declare-fun e!2487079 () Bool)

(assert (=> d!1187219 e!2487079))

(declare-fun res!1630113 () Bool)

(assert (=> d!1187219 (=> res!1630113 e!2487079)))

(declare-fun lt!1419512 () Bool)

(assert (=> d!1187219 (= res!1630113 (not lt!1419512))))

(declare-fun e!2487077 () Bool)

(assert (=> d!1187219 (= lt!1419512 e!2487077)))

(declare-fun res!1630112 () Bool)

(assert (=> d!1187219 (=> res!1630112 e!2487077)))

(assert (=> d!1187219 (= res!1630112 ((_ is Nil!42912) lt!1419320))))

(assert (=> d!1187219 (= (isPrefix!3911 lt!1419320 prefix!494) lt!1419512)))

(declare-fun b!4010505 () Bool)

(declare-fun e!2487078 () Bool)

(assert (=> b!4010505 (= e!2487078 (isPrefix!3911 (tail!6249 lt!1419320) (tail!6249 prefix!494)))))

(declare-fun b!4010506 () Bool)

(assert (=> b!4010506 (= e!2487079 (>= (size!32087 prefix!494) (size!32087 lt!1419320)))))

(declare-fun b!4010503 () Bool)

(assert (=> b!4010503 (= e!2487077 e!2487078)))

(declare-fun res!1630111 () Bool)

(assert (=> b!4010503 (=> (not res!1630111) (not e!2487078))))

(assert (=> b!4010503 (= res!1630111 (not ((_ is Nil!42912) prefix!494)))))

(declare-fun b!4010504 () Bool)

(declare-fun res!1630114 () Bool)

(assert (=> b!4010504 (=> (not res!1630114) (not e!2487078))))

(assert (=> b!4010504 (= res!1630114 (= (head!8517 lt!1419320) (head!8517 prefix!494)))))

(assert (= (and d!1187219 (not res!1630112)) b!4010503))

(assert (= (and b!4010503 res!1630111) b!4010504))

(assert (= (and b!4010504 res!1630114) b!4010505))

(assert (= (and d!1187219 (not res!1630113)) b!4010506))

(declare-fun m!4595535 () Bool)

(assert (=> b!4010505 m!4595535))

(assert (=> b!4010505 m!4595531))

(assert (=> b!4010505 m!4595535))

(assert (=> b!4010505 m!4595531))

(declare-fun m!4595537 () Bool)

(assert (=> b!4010505 m!4595537))

(assert (=> b!4010506 m!4594859))

(assert (=> b!4010506 m!4594857))

(declare-fun m!4595539 () Bool)

(assert (=> b!4010504 m!4595539))

(declare-fun m!4595541 () Bool)

(assert (=> b!4010504 m!4595541))

(assert (=> b!4010126 d!1187219))

(declare-fun d!1187221 () Bool)

(assert (=> d!1187221 (isPrefix!3911 lt!1419320 prefix!494)))

(declare-fun lt!1419515 () Unit!61931)

(declare-fun choose!24227 (List!43036 List!43036 List!43036) Unit!61931)

(assert (=> d!1187221 (= lt!1419515 (choose!24227 prefix!494 lt!1419320 lt!1419323))))

(assert (=> d!1187221 (isPrefix!3911 prefix!494 lt!1419323)))

(assert (=> d!1187221 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!483 prefix!494 lt!1419320 lt!1419323) lt!1419515)))

(declare-fun bs!589337 () Bool)

(assert (= bs!589337 d!1187221))

(assert (=> bs!589337 m!4594937))

(declare-fun m!4595543 () Bool)

(assert (=> bs!589337 m!4595543))

(assert (=> bs!589337 m!4594873))

(assert (=> b!4010126 d!1187221))

(declare-fun d!1187223 () Bool)

(assert (=> d!1187223 (= (apply!10021 (transformation!6824 (rule!9866 token!484)) (seqFromList!5049 lt!1419320)) (dynLambda!18210 (toValue!9328 (transformation!6824 (rule!9866 token!484))) (seqFromList!5049 lt!1419320)))))

(declare-fun b_lambda!117033 () Bool)

(assert (=> (not b_lambda!117033) (not d!1187223)))

(declare-fun t!332947 () Bool)

(declare-fun tb!241161 () Bool)

(assert (=> (and b!4010132 (= (toValue!9328 (transformation!6824 (rule!9866 token!484))) (toValue!9328 (transformation!6824 (rule!9866 token!484)))) t!332947) tb!241161))

(declare-fun result!292282 () Bool)

(assert (=> tb!241161 (= result!292282 (inv!21 (dynLambda!18210 (toValue!9328 (transformation!6824 (rule!9866 token!484))) (seqFromList!5049 lt!1419320))))))

(declare-fun m!4595545 () Bool)

(assert (=> tb!241161 m!4595545))

(assert (=> d!1187223 t!332947))

(declare-fun b_and!308091 () Bool)

(assert (= b_and!308071 (and (=> t!332947 result!292282) b_and!308091)))

(declare-fun t!332949 () Bool)

(declare-fun tb!241163 () Bool)

(assert (=> (and b!4010110 (= (toValue!9328 (transformation!6824 (h!48334 rules!2999))) (toValue!9328 (transformation!6824 (rule!9866 token!484)))) t!332949) tb!241163))

(declare-fun result!292284 () Bool)

(assert (= result!292284 result!292282))

(assert (=> d!1187223 t!332949))

(declare-fun b_and!308093 () Bool)

(assert (= b_and!308073 (and (=> t!332949 result!292284) b_and!308093)))

(assert (=> d!1187223 m!4594815))

(declare-fun m!4595547 () Bool)

(assert (=> d!1187223 m!4595547))

(assert (=> b!4010116 d!1187223))

(declare-fun d!1187225 () Bool)

(assert (=> d!1187225 (isPrefix!3911 lt!1419320 (++!11226 lt!1419320 lt!1419338))))

(declare-fun lt!1419521 () Unit!61931)

(assert (=> d!1187225 (= lt!1419521 (choose!24224 lt!1419320 lt!1419338))))

(assert (=> d!1187225 (= (lemmaConcatTwoListThenFirstIsPrefix!2752 lt!1419320 lt!1419338) lt!1419521)))

(declare-fun bs!589338 () Bool)

(assert (= bs!589338 d!1187225))

(assert (=> bs!589338 m!4594879))

(assert (=> bs!589338 m!4594879))

(declare-fun m!4595549 () Bool)

(assert (=> bs!589338 m!4595549))

(declare-fun m!4595551 () Bool)

(assert (=> bs!589338 m!4595551))

(assert (=> b!4010116 d!1187225))

(declare-fun d!1187227 () Bool)

(assert (=> d!1187227 (= (seqFromList!5049 lt!1419320) (fromListB!2313 lt!1419320))))

(declare-fun bs!589339 () Bool)

(assert (= bs!589339 d!1187227))

(declare-fun m!4595553 () Bool)

(assert (=> bs!589339 m!4595553))

(assert (=> b!4010116 d!1187227))

(declare-fun d!1187229 () Bool)

(declare-fun e!2487086 () Bool)

(assert (=> d!1187229 e!2487086))

(declare-fun res!1630124 () Bool)

(assert (=> d!1187229 (=> res!1630124 e!2487086)))

(declare-fun lt!1419522 () Bool)

(assert (=> d!1187229 (= res!1630124 (not lt!1419522))))

(declare-fun e!2487084 () Bool)

(assert (=> d!1187229 (= lt!1419522 e!2487084)))

(declare-fun res!1630123 () Bool)

(assert (=> d!1187229 (=> res!1630123 e!2487084)))

(assert (=> d!1187229 (= res!1630123 ((_ is Nil!42912) lt!1419320))))

(assert (=> d!1187229 (= (isPrefix!3911 lt!1419320 lt!1419358) lt!1419522)))

(declare-fun b!4010518 () Bool)

(declare-fun e!2487085 () Bool)

(assert (=> b!4010518 (= e!2487085 (isPrefix!3911 (tail!6249 lt!1419320) (tail!6249 lt!1419358)))))

(declare-fun b!4010519 () Bool)

(assert (=> b!4010519 (= e!2487086 (>= (size!32087 lt!1419358) (size!32087 lt!1419320)))))

(declare-fun b!4010516 () Bool)

(assert (=> b!4010516 (= e!2487084 e!2487085)))

(declare-fun res!1630122 () Bool)

(assert (=> b!4010516 (=> (not res!1630122) (not e!2487085))))

(assert (=> b!4010516 (= res!1630122 (not ((_ is Nil!42912) lt!1419358)))))

(declare-fun b!4010517 () Bool)

(declare-fun res!1630125 () Bool)

(assert (=> b!4010517 (=> (not res!1630125) (not e!2487085))))

(assert (=> b!4010517 (= res!1630125 (= (head!8517 lt!1419320) (head!8517 lt!1419358)))))

(assert (= (and d!1187229 (not res!1630123)) b!4010516))

(assert (= (and b!4010516 res!1630122) b!4010517))

(assert (= (and b!4010517 res!1630125) b!4010518))

(assert (= (and d!1187229 (not res!1630124)) b!4010519))

(assert (=> b!4010518 m!4595535))

(declare-fun m!4595555 () Bool)

(assert (=> b!4010518 m!4595555))

(assert (=> b!4010518 m!4595535))

(assert (=> b!4010518 m!4595555))

(declare-fun m!4595557 () Bool)

(assert (=> b!4010518 m!4595557))

(declare-fun m!4595559 () Bool)

(assert (=> b!4010519 m!4595559))

(assert (=> b!4010519 m!4594857))

(assert (=> b!4010517 m!4595539))

(declare-fun m!4595561 () Bool)

(assert (=> b!4010517 m!4595561))

(assert (=> b!4010116 d!1187229))

(declare-fun b!4010520 () Bool)

(declare-fun e!2487087 () Option!9238)

(assert (=> b!4010520 (= e!2487087 None!9237)))

(declare-fun b!4010521 () Bool)

(declare-fun res!1630127 () Bool)

(declare-fun e!2487090 () Bool)

(assert (=> b!4010521 (=> (not res!1630127) (not e!2487090))))

(declare-fun lt!1419523 () Option!9238)

(assert (=> b!4010521 (= res!1630127 (= (value!215118 (_1!24167 (get!14103 lt!1419523))) (apply!10021 (transformation!6824 (rule!9866 (_1!24167 (get!14103 lt!1419523)))) (seqFromList!5049 (originalCharacters!7424 (_1!24167 (get!14103 lt!1419523)))))))))

(declare-fun b!4010522 () Bool)

(declare-fun e!2487089 () Bool)

(assert (=> b!4010522 (= e!2487089 (matchR!5690 (regex!6824 (rule!9866 token!484)) (_1!24168 (findLongestMatchInner!1356 (regex!6824 (rule!9866 token!484)) Nil!42912 (size!32087 Nil!42912) lt!1419323 lt!1419323 (size!32087 lt!1419323)))))))

(declare-fun b!4010523 () Bool)

(declare-fun res!1630132 () Bool)

(assert (=> b!4010523 (=> (not res!1630132) (not e!2487090))))

(assert (=> b!4010523 (= res!1630132 (= (rule!9866 (_1!24167 (get!14103 lt!1419523))) (rule!9866 token!484)))))

(declare-fun d!1187231 () Bool)

(declare-fun e!2487088 () Bool)

(assert (=> d!1187231 e!2487088))

(declare-fun res!1630129 () Bool)

(assert (=> d!1187231 (=> res!1630129 e!2487088)))

(assert (=> d!1187231 (= res!1630129 (isEmpty!25638 lt!1419523))))

(assert (=> d!1187231 (= lt!1419523 e!2487087)))

(declare-fun c!693497 () Bool)

(declare-fun lt!1419526 () tuple2!42068)

(assert (=> d!1187231 (= c!693497 (isEmpty!25639 (_1!24168 lt!1419526)))))

(assert (=> d!1187231 (= lt!1419526 (findLongestMatch!1269 (regex!6824 (rule!9866 token!484)) lt!1419323))))

(assert (=> d!1187231 (ruleValid!2756 thiss!21717 (rule!9866 token!484))))

(assert (=> d!1187231 (= (maxPrefixOneRule!2731 thiss!21717 (rule!9866 token!484) lt!1419323) lt!1419523)))

(declare-fun b!4010524 () Bool)

(declare-fun res!1630128 () Bool)

(assert (=> b!4010524 (=> (not res!1630128) (not e!2487090))))

(assert (=> b!4010524 (= res!1630128 (= (++!11226 (list!15948 (charsOf!4640 (_1!24167 (get!14103 lt!1419523)))) (_2!24167 (get!14103 lt!1419523))) lt!1419323))))

(declare-fun b!4010525 () Bool)

(declare-fun res!1630126 () Bool)

(assert (=> b!4010525 (=> (not res!1630126) (not e!2487090))))

(assert (=> b!4010525 (= res!1630126 (< (size!32087 (_2!24167 (get!14103 lt!1419523))) (size!32087 lt!1419323)))))

(declare-fun b!4010526 () Bool)

(assert (=> b!4010526 (= e!2487090 (= (size!32088 (_1!24167 (get!14103 lt!1419523))) (size!32087 (originalCharacters!7424 (_1!24167 (get!14103 lt!1419523))))))))

(declare-fun b!4010527 () Bool)

(assert (=> b!4010527 (= e!2487088 e!2487090)))

(declare-fun res!1630131 () Bool)

(assert (=> b!4010527 (=> (not res!1630131) (not e!2487090))))

(assert (=> b!4010527 (= res!1630131 (matchR!5690 (regex!6824 (rule!9866 token!484)) (list!15948 (charsOf!4640 (_1!24167 (get!14103 lt!1419523))))))))

(declare-fun b!4010528 () Bool)

(assert (=> b!4010528 (= e!2487087 (Some!9237 (tuple2!42067 (Token!12787 (apply!10021 (transformation!6824 (rule!9866 token!484)) (seqFromList!5049 (_1!24168 lt!1419526))) (rule!9866 token!484) (size!32089 (seqFromList!5049 (_1!24168 lt!1419526))) (_1!24168 lt!1419526)) (_2!24168 lt!1419526))))))

(declare-fun lt!1419525 () Unit!61931)

(assert (=> b!4010528 (= lt!1419525 (longestMatchIsAcceptedByMatchOrIsEmpty!1329 (regex!6824 (rule!9866 token!484)) lt!1419323))))

(declare-fun res!1630130 () Bool)

(assert (=> b!4010528 (= res!1630130 (isEmpty!25639 (_1!24168 (findLongestMatchInner!1356 (regex!6824 (rule!9866 token!484)) Nil!42912 (size!32087 Nil!42912) lt!1419323 lt!1419323 (size!32087 lt!1419323)))))))

(assert (=> b!4010528 (=> res!1630130 e!2487089)))

(assert (=> b!4010528 e!2487089))

(declare-fun lt!1419527 () Unit!61931)

(assert (=> b!4010528 (= lt!1419527 lt!1419525)))

(declare-fun lt!1419524 () Unit!61931)

(assert (=> b!4010528 (= lt!1419524 (lemmaSemiInverse!1876 (transformation!6824 (rule!9866 token!484)) (seqFromList!5049 (_1!24168 lt!1419526))))))

(assert (= (and d!1187231 c!693497) b!4010520))

(assert (= (and d!1187231 (not c!693497)) b!4010528))

(assert (= (and b!4010528 (not res!1630130)) b!4010522))

(assert (= (and d!1187231 (not res!1630129)) b!4010527))

(assert (= (and b!4010527 res!1630131) b!4010524))

(assert (= (and b!4010524 res!1630128) b!4010525))

(assert (= (and b!4010525 res!1630126) b!4010523))

(assert (= (and b!4010523 res!1630132) b!4010521))

(assert (= (and b!4010521 res!1630127) b!4010526))

(declare-fun m!4595595 () Bool)

(assert (=> b!4010527 m!4595595))

(declare-fun m!4595597 () Bool)

(assert (=> b!4010527 m!4595597))

(assert (=> b!4010527 m!4595597))

(declare-fun m!4595599 () Bool)

(assert (=> b!4010527 m!4595599))

(assert (=> b!4010527 m!4595599))

(declare-fun m!4595603 () Bool)

(assert (=> b!4010527 m!4595603))

(declare-fun m!4595605 () Bool)

(assert (=> d!1187231 m!4595605))

(declare-fun m!4595607 () Bool)

(assert (=> d!1187231 m!4595607))

(declare-fun m!4595609 () Bool)

(assert (=> d!1187231 m!4595609))

(assert (=> d!1187231 m!4594961))

(assert (=> b!4010526 m!4595595))

(declare-fun m!4595611 () Bool)

(assert (=> b!4010526 m!4595611))

(assert (=> b!4010521 m!4595595))

(declare-fun m!4595613 () Bool)

(assert (=> b!4010521 m!4595613))

(assert (=> b!4010521 m!4595613))

(declare-fun m!4595615 () Bool)

(assert (=> b!4010521 m!4595615))

(assert (=> b!4010523 m!4595595))

(assert (=> b!4010522 m!4595443))

(declare-fun m!4595617 () Bool)

(assert (=> b!4010522 m!4595617))

(assert (=> b!4010522 m!4595443))

(assert (=> b!4010522 m!4595617))

(declare-fun m!4595619 () Bool)

(assert (=> b!4010522 m!4595619))

(declare-fun m!4595623 () Bool)

(assert (=> b!4010522 m!4595623))

(declare-fun m!4595627 () Bool)

(assert (=> b!4010528 m!4595627))

(declare-fun m!4595631 () Bool)

(assert (=> b!4010528 m!4595631))

(assert (=> b!4010528 m!4595617))

(assert (=> b!4010528 m!4595627))

(declare-fun m!4595635 () Bool)

(assert (=> b!4010528 m!4595635))

(declare-fun m!4595637 () Bool)

(assert (=> b!4010528 m!4595637))

(assert (=> b!4010528 m!4595443))

(assert (=> b!4010528 m!4595627))

(assert (=> b!4010528 m!4595443))

(assert (=> b!4010528 m!4595617))

(assert (=> b!4010528 m!4595619))

(declare-fun m!4595641 () Bool)

(assert (=> b!4010528 m!4595641))

(assert (=> b!4010528 m!4595627))

(declare-fun m!4595645 () Bool)

(assert (=> b!4010528 m!4595645))

(assert (=> b!4010525 m!4595595))

(declare-fun m!4595647 () Bool)

(assert (=> b!4010525 m!4595647))

(assert (=> b!4010525 m!4595617))

(assert (=> b!4010524 m!4595595))

(assert (=> b!4010524 m!4595597))

(assert (=> b!4010524 m!4595597))

(assert (=> b!4010524 m!4595599))

(assert (=> b!4010524 m!4595599))

(declare-fun m!4595653 () Bool)

(assert (=> b!4010524 m!4595653))

(assert (=> b!4010116 d!1187231))

(declare-fun d!1187241 () Bool)

(assert (=> d!1187241 (= lt!1419338 suffixResult!105)))

(declare-fun lt!1419539 () Unit!61931)

(declare-fun choose!24229 (List!43036 List!43036 List!43036 List!43036 List!43036) Unit!61931)

(assert (=> d!1187241 (= lt!1419539 (choose!24229 lt!1419320 lt!1419338 lt!1419320 suffixResult!105 lt!1419323))))

(assert (=> d!1187241 (isPrefix!3911 lt!1419320 lt!1419323)))

(assert (=> d!1187241 (= (lemmaSamePrefixThenSameSuffix!2082 lt!1419320 lt!1419338 lt!1419320 suffixResult!105 lt!1419323) lt!1419539)))

(declare-fun bs!589342 () Bool)

(assert (= bs!589342 d!1187241))

(declare-fun m!4595675 () Bool)

(assert (=> bs!589342 m!4595675))

(assert (=> bs!589342 m!4594869))

(assert (=> b!4010116 d!1187241))

(declare-fun d!1187245 () Bool)

(assert (=> d!1187245 (= (maxPrefixOneRule!2731 thiss!21717 (rule!9866 token!484) lt!1419323) (Some!9237 (tuple2!42067 (Token!12787 (apply!10021 (transformation!6824 (rule!9866 token!484)) (seqFromList!5049 lt!1419320)) (rule!9866 token!484) (size!32087 lt!1419320) lt!1419320) suffixResult!105)))))

(declare-fun lt!1419540 () Unit!61931)

(assert (=> d!1187245 (= lt!1419540 (choose!24223 thiss!21717 rules!2999 lt!1419320 lt!1419323 suffixResult!105 (rule!9866 token!484)))))

(assert (=> d!1187245 (not (isEmpty!25636 rules!2999))))

(assert (=> d!1187245 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1549 thiss!21717 rules!2999 lt!1419320 lt!1419323 suffixResult!105 (rule!9866 token!484)) lt!1419540)))

(declare-fun bs!589343 () Bool)

(assert (= bs!589343 d!1187245))

(declare-fun m!4595683 () Bool)

(assert (=> bs!589343 m!4595683))

(assert (=> bs!589343 m!4594825))

(assert (=> bs!589343 m!4594857))

(assert (=> bs!589343 m!4594855))

(assert (=> bs!589343 m!4594815))

(assert (=> bs!589343 m!4594817))

(assert (=> bs!589343 m!4594815))

(assert (=> b!4010116 d!1187245))

(declare-fun d!1187249 () Bool)

(declare-fun res!1630152 () Bool)

(declare-fun e!2487109 () Bool)

(assert (=> d!1187249 (=> (not res!1630152) (not e!2487109))))

(declare-fun rulesValid!2657 (LexerInterface!6413 List!43038) Bool)

(assert (=> d!1187249 (= res!1630152 (rulesValid!2657 thiss!21717 rules!2999))))

(assert (=> d!1187249 (= (rulesInvariant!5756 thiss!21717 rules!2999) e!2487109)))

(declare-fun b!4010573 () Bool)

(declare-datatypes ((List!43040 0))(
  ( (Nil!42916) (Cons!42916 (h!48336 String!48988) (t!332971 List!43040)) )
))
(declare-fun noDuplicateTag!2658 (LexerInterface!6413 List!43038 List!43040) Bool)

(assert (=> b!4010573 (= e!2487109 (noDuplicateTag!2658 thiss!21717 rules!2999 Nil!42916))))

(assert (= (and d!1187249 res!1630152) b!4010573))

(declare-fun m!4595695 () Bool)

(assert (=> d!1187249 m!4595695))

(declare-fun m!4595697 () Bool)

(assert (=> b!4010573 m!4595697))

(assert (=> b!4010117 d!1187249))

(declare-fun e!2487112 () Bool)

(declare-fun lt!1419542 () List!43036)

(declare-fun b!4010579 () Bool)

(assert (=> b!4010579 (= e!2487112 (or (not (= newSuffix!27 Nil!42912)) (= lt!1419542 prefix!494)))))

(declare-fun b!4010575 () Bool)

(declare-fun e!2487111 () List!43036)

(assert (=> b!4010575 (= e!2487111 newSuffix!27)))

(declare-fun b!4010576 () Bool)

(assert (=> b!4010576 (= e!2487111 (Cons!42912 (h!48332 prefix!494) (++!11226 (t!332919 prefix!494) newSuffix!27)))))

(declare-fun b!4010577 () Bool)

(declare-fun res!1630154 () Bool)

(assert (=> b!4010577 (=> (not res!1630154) (not e!2487112))))

(assert (=> b!4010577 (= res!1630154 (= (size!32087 lt!1419542) (+ (size!32087 prefix!494) (size!32087 newSuffix!27))))))

(declare-fun d!1187251 () Bool)

(assert (=> d!1187251 e!2487112))

(declare-fun res!1630153 () Bool)

(assert (=> d!1187251 (=> (not res!1630153) (not e!2487112))))

(assert (=> d!1187251 (= res!1630153 (= (content!6510 lt!1419542) ((_ map or) (content!6510 prefix!494) (content!6510 newSuffix!27))))))

(assert (=> d!1187251 (= lt!1419542 e!2487111)))

(declare-fun c!693500 () Bool)

(assert (=> d!1187251 (= c!693500 ((_ is Nil!42912) prefix!494))))

(assert (=> d!1187251 (= (++!11226 prefix!494 newSuffix!27) lt!1419542)))

(assert (= (and d!1187251 c!693500) b!4010575))

(assert (= (and d!1187251 (not c!693500)) b!4010576))

(assert (= (and d!1187251 res!1630153) b!4010577))

(assert (= (and b!4010577 res!1630154) b!4010579))

(declare-fun m!4595699 () Bool)

(assert (=> b!4010576 m!4595699))

(declare-fun m!4595701 () Bool)

(assert (=> b!4010577 m!4595701))

(assert (=> b!4010577 m!4594859))

(assert (=> b!4010577 m!4594953))

(declare-fun m!4595703 () Bool)

(assert (=> d!1187251 m!4595703))

(declare-fun m!4595705 () Bool)

(assert (=> d!1187251 m!4595705))

(declare-fun m!4595707 () Bool)

(assert (=> d!1187251 m!4595707))

(assert (=> b!4010138 d!1187251))

(declare-fun b!4010590 () Bool)

(declare-fun e!2487120 () Bool)

(declare-fun lt!1419543 () List!43036)

(assert (=> b!4010590 (= e!2487120 (or (not (= newSuffixResult!27 Nil!42912)) (= lt!1419543 lt!1419320)))))

(declare-fun b!4010587 () Bool)

(declare-fun e!2487119 () List!43036)

(assert (=> b!4010587 (= e!2487119 newSuffixResult!27)))

(declare-fun b!4010588 () Bool)

(assert (=> b!4010588 (= e!2487119 (Cons!42912 (h!48332 lt!1419320) (++!11226 (t!332919 lt!1419320) newSuffixResult!27)))))

(declare-fun b!4010589 () Bool)

(declare-fun res!1630156 () Bool)

(assert (=> b!4010589 (=> (not res!1630156) (not e!2487120))))

(assert (=> b!4010589 (= res!1630156 (= (size!32087 lt!1419543) (+ (size!32087 lt!1419320) (size!32087 newSuffixResult!27))))))

(declare-fun d!1187253 () Bool)

(assert (=> d!1187253 e!2487120))

(declare-fun res!1630155 () Bool)

(assert (=> d!1187253 (=> (not res!1630155) (not e!2487120))))

(assert (=> d!1187253 (= res!1630155 (= (content!6510 lt!1419543) ((_ map or) (content!6510 lt!1419320) (content!6510 newSuffixResult!27))))))

(assert (=> d!1187253 (= lt!1419543 e!2487119)))

(declare-fun c!693501 () Bool)

(assert (=> d!1187253 (= c!693501 ((_ is Nil!42912) lt!1419320))))

(assert (=> d!1187253 (= (++!11226 lt!1419320 newSuffixResult!27) lt!1419543)))

(assert (= (and d!1187253 c!693501) b!4010587))

(assert (= (and d!1187253 (not c!693501)) b!4010588))

(assert (= (and d!1187253 res!1630155) b!4010589))

(assert (= (and b!4010589 res!1630156) b!4010590))

(declare-fun m!4595709 () Bool)

(assert (=> b!4010588 m!4595709))

(declare-fun m!4595711 () Bool)

(assert (=> b!4010589 m!4595711))

(assert (=> b!4010589 m!4594857))

(assert (=> b!4010589 m!4595511))

(declare-fun m!4595713 () Bool)

(assert (=> d!1187253 m!4595713))

(assert (=> d!1187253 m!4594977))

(assert (=> d!1187253 m!4595515))

(assert (=> b!4010138 d!1187253))

(declare-fun d!1187255 () Bool)

(declare-fun lt!1419544 () Int)

(assert (=> d!1187255 (>= lt!1419544 0)))

(declare-fun e!2487125 () Int)

(assert (=> d!1187255 (= lt!1419544 e!2487125)))

(declare-fun c!693502 () Bool)

(assert (=> d!1187255 (= c!693502 ((_ is Nil!42912) lt!1419320))))

(assert (=> d!1187255 (= (size!32087 lt!1419320) lt!1419544)))

(declare-fun b!4010593 () Bool)

(assert (=> b!4010593 (= e!2487125 0)))

(declare-fun b!4010594 () Bool)

(assert (=> b!4010594 (= e!2487125 (+ 1 (size!32087 (t!332919 lt!1419320))))))

(assert (= (and d!1187255 c!693502) b!4010593))

(assert (= (and d!1187255 (not c!693502)) b!4010594))

(declare-fun m!4595715 () Bool)

(assert (=> b!4010594 m!4595715))

(assert (=> b!4010128 d!1187255))

(declare-fun d!1187257 () Bool)

(declare-fun lt!1419545 () Int)

(assert (=> d!1187257 (>= lt!1419545 0)))

(declare-fun e!2487128 () Int)

(assert (=> d!1187257 (= lt!1419545 e!2487128)))

(declare-fun c!693503 () Bool)

(assert (=> d!1187257 (= c!693503 ((_ is Nil!42912) prefix!494))))

(assert (=> d!1187257 (= (size!32087 prefix!494) lt!1419545)))

(declare-fun b!4010597 () Bool)

(assert (=> b!4010597 (= e!2487128 0)))

(declare-fun b!4010598 () Bool)

(assert (=> b!4010598 (= e!2487128 (+ 1 (size!32087 (t!332919 prefix!494))))))

(assert (= (and d!1187257 c!693503) b!4010597))

(assert (= (and d!1187257 (not c!693503)) b!4010598))

(declare-fun m!4595717 () Bool)

(assert (=> b!4010598 m!4595717))

(assert (=> b!4010128 d!1187257))

(declare-fun d!1187259 () Bool)

(assert (=> d!1187259 (= (list!15948 (charsOf!4640 token!484)) (list!15950 (c!693432 (charsOf!4640 token!484))))))

(declare-fun bs!589344 () Bool)

(assert (= bs!589344 d!1187259))

(declare-fun m!4595719 () Bool)

(assert (=> bs!589344 m!4595719))

(assert (=> b!4010128 d!1187259))

(declare-fun d!1187261 () Bool)

(declare-fun lt!1419546 () BalanceConc!25664)

(assert (=> d!1187261 (= (list!15948 lt!1419546) (originalCharacters!7424 token!484))))

(assert (=> d!1187261 (= lt!1419546 (dynLambda!18211 (toChars!9187 (transformation!6824 (rule!9866 token!484))) (value!215118 token!484)))))

(assert (=> d!1187261 (= (charsOf!4640 token!484) lt!1419546)))

(declare-fun b_lambda!117035 () Bool)

(assert (=> (not b_lambda!117035) (not d!1187261)))

(declare-fun t!332951 () Bool)

(declare-fun tb!241165 () Bool)

(assert (=> (and b!4010132 (= (toChars!9187 (transformation!6824 (rule!9866 token!484))) (toChars!9187 (transformation!6824 (rule!9866 token!484)))) t!332951) tb!241165))

(declare-fun b!4010599 () Bool)

(declare-fun e!2487129 () Bool)

(declare-fun tp!1220008 () Bool)

(assert (=> b!4010599 (= e!2487129 (and (inv!57324 (c!693432 (dynLambda!18211 (toChars!9187 (transformation!6824 (rule!9866 token!484))) (value!215118 token!484)))) tp!1220008))))

(declare-fun result!292292 () Bool)

(assert (=> tb!241165 (= result!292292 (and (inv!57325 (dynLambda!18211 (toChars!9187 (transformation!6824 (rule!9866 token!484))) (value!215118 token!484))) e!2487129))))

(assert (= tb!241165 b!4010599))

(declare-fun m!4595721 () Bool)

(assert (=> b!4010599 m!4595721))

(declare-fun m!4595723 () Bool)

(assert (=> tb!241165 m!4595723))

(assert (=> d!1187261 t!332951))

(declare-fun b_and!308095 () Bool)

(assert (= b_and!308087 (and (=> t!332951 result!292292) b_and!308095)))

(declare-fun t!332953 () Bool)

(declare-fun tb!241167 () Bool)

(assert (=> (and b!4010110 (= (toChars!9187 (transformation!6824 (h!48334 rules!2999))) (toChars!9187 (transformation!6824 (rule!9866 token!484)))) t!332953) tb!241167))

(declare-fun result!292294 () Bool)

(assert (= result!292294 result!292292))

(assert (=> d!1187261 t!332953))

(declare-fun b_and!308097 () Bool)

(assert (= b_and!308089 (and (=> t!332953 result!292294) b_and!308097)))

(declare-fun m!4595725 () Bool)

(assert (=> d!1187261 m!4595725))

(declare-fun m!4595727 () Bool)

(assert (=> d!1187261 m!4595727))

(assert (=> b!4010128 d!1187261))

(declare-fun d!1187263 () Bool)

(declare-fun e!2487142 () Bool)

(assert (=> d!1187263 e!2487142))

(declare-fun res!1630173 () Bool)

(assert (=> d!1187263 (=> res!1630173 e!2487142)))

(declare-fun lt!1419559 () Option!9238)

(assert (=> d!1187263 (= res!1630173 (isEmpty!25638 lt!1419559))))

(declare-fun e!2487144 () Option!9238)

(assert (=> d!1187263 (= lt!1419559 e!2487144)))

(declare-fun c!693506 () Bool)

(assert (=> d!1187263 (= c!693506 (and ((_ is Cons!42914) rules!2999) ((_ is Nil!42914) (t!332921 rules!2999))))))

(declare-fun lt!1419561 () Unit!61931)

(declare-fun lt!1419560 () Unit!61931)

(assert (=> d!1187263 (= lt!1419561 lt!1419560)))

(assert (=> d!1187263 (isPrefix!3911 lt!1419344 lt!1419344)))

(assert (=> d!1187263 (= lt!1419560 (lemmaIsPrefixRefl!2487 lt!1419344 lt!1419344))))

(declare-fun rulesValidInductive!2488 (LexerInterface!6413 List!43038) Bool)

(assert (=> d!1187263 (rulesValidInductive!2488 thiss!21717 rules!2999)))

(assert (=> d!1187263 (= (maxPrefix!3711 thiss!21717 rules!2999 lt!1419344) lt!1419559)))

(declare-fun b!4010623 () Bool)

(declare-fun e!2487143 () Bool)

(assert (=> b!4010623 (= e!2487142 e!2487143)))

(declare-fun res!1630171 () Bool)

(assert (=> b!4010623 (=> (not res!1630171) (not e!2487143))))

(declare-fun isDefined!7067 (Option!9238) Bool)

(assert (=> b!4010623 (= res!1630171 (isDefined!7067 lt!1419559))))

(declare-fun b!4010624 () Bool)

(declare-fun res!1630172 () Bool)

(assert (=> b!4010624 (=> (not res!1630172) (not e!2487143))))

(assert (=> b!4010624 (= res!1630172 (matchR!5690 (regex!6824 (rule!9866 (_1!24167 (get!14103 lt!1419559)))) (list!15948 (charsOf!4640 (_1!24167 (get!14103 lt!1419559))))))))

(declare-fun b!4010625 () Bool)

(declare-fun call!286378 () Option!9238)

(assert (=> b!4010625 (= e!2487144 call!286378)))

(declare-fun b!4010626 () Bool)

(assert (=> b!4010626 (= e!2487143 (contains!8534 rules!2999 (rule!9866 (_1!24167 (get!14103 lt!1419559)))))))

(declare-fun b!4010627 () Bool)

(declare-fun res!1630175 () Bool)

(assert (=> b!4010627 (=> (not res!1630175) (not e!2487143))))

(assert (=> b!4010627 (= res!1630175 (= (++!11226 (list!15948 (charsOf!4640 (_1!24167 (get!14103 lt!1419559)))) (_2!24167 (get!14103 lt!1419559))) lt!1419344))))

(declare-fun bm!286373 () Bool)

(assert (=> bm!286373 (= call!286378 (maxPrefixOneRule!2731 thiss!21717 (h!48334 rules!2999) lt!1419344))))

(declare-fun b!4010628 () Bool)

(declare-fun res!1630177 () Bool)

(assert (=> b!4010628 (=> (not res!1630177) (not e!2487143))))

(assert (=> b!4010628 (= res!1630177 (< (size!32087 (_2!24167 (get!14103 lt!1419559))) (size!32087 lt!1419344)))))

(declare-fun b!4010629 () Bool)

(declare-fun lt!1419557 () Option!9238)

(declare-fun lt!1419558 () Option!9238)

(assert (=> b!4010629 (= e!2487144 (ite (and ((_ is None!9237) lt!1419557) ((_ is None!9237) lt!1419558)) None!9237 (ite ((_ is None!9237) lt!1419558) lt!1419557 (ite ((_ is None!9237) lt!1419557) lt!1419558 (ite (>= (size!32088 (_1!24167 (v!39605 lt!1419557))) (size!32088 (_1!24167 (v!39605 lt!1419558)))) lt!1419557 lt!1419558)))))))

(assert (=> b!4010629 (= lt!1419557 call!286378)))

(assert (=> b!4010629 (= lt!1419558 (maxPrefix!3711 thiss!21717 (t!332921 rules!2999) lt!1419344))))

(declare-fun b!4010630 () Bool)

(declare-fun res!1630176 () Bool)

(assert (=> b!4010630 (=> (not res!1630176) (not e!2487143))))

(assert (=> b!4010630 (= res!1630176 (= (list!15948 (charsOf!4640 (_1!24167 (get!14103 lt!1419559)))) (originalCharacters!7424 (_1!24167 (get!14103 lt!1419559)))))))

(declare-fun b!4010631 () Bool)

(declare-fun res!1630174 () Bool)

(assert (=> b!4010631 (=> (not res!1630174) (not e!2487143))))

(assert (=> b!4010631 (= res!1630174 (= (value!215118 (_1!24167 (get!14103 lt!1419559))) (apply!10021 (transformation!6824 (rule!9866 (_1!24167 (get!14103 lt!1419559)))) (seqFromList!5049 (originalCharacters!7424 (_1!24167 (get!14103 lt!1419559)))))))))

(assert (= (and d!1187263 c!693506) b!4010625))

(assert (= (and d!1187263 (not c!693506)) b!4010629))

(assert (= (or b!4010625 b!4010629) bm!286373))

(assert (= (and d!1187263 (not res!1630173)) b!4010623))

(assert (= (and b!4010623 res!1630171) b!4010630))

(assert (= (and b!4010630 res!1630176) b!4010628))

(assert (= (and b!4010628 res!1630177) b!4010627))

(assert (= (and b!4010627 res!1630175) b!4010631))

(assert (= (and b!4010631 res!1630174) b!4010624))

(assert (= (and b!4010624 res!1630172) b!4010626))

(declare-fun m!4595733 () Bool)

(assert (=> b!4010631 m!4595733))

(declare-fun m!4595735 () Bool)

(assert (=> b!4010631 m!4595735))

(assert (=> b!4010631 m!4595735))

(declare-fun m!4595737 () Bool)

(assert (=> b!4010631 m!4595737))

(declare-fun m!4595739 () Bool)

(assert (=> bm!286373 m!4595739))

(declare-fun m!4595741 () Bool)

(assert (=> d!1187263 m!4595741))

(declare-fun m!4595743 () Bool)

(assert (=> d!1187263 m!4595743))

(declare-fun m!4595745 () Bool)

(assert (=> d!1187263 m!4595745))

(declare-fun m!4595747 () Bool)

(assert (=> d!1187263 m!4595747))

(assert (=> b!4010627 m!4595733))

(declare-fun m!4595749 () Bool)

(assert (=> b!4010627 m!4595749))

(assert (=> b!4010627 m!4595749))

(declare-fun m!4595751 () Bool)

(assert (=> b!4010627 m!4595751))

(assert (=> b!4010627 m!4595751))

(declare-fun m!4595753 () Bool)

(assert (=> b!4010627 m!4595753))

(declare-fun m!4595755 () Bool)

(assert (=> b!4010629 m!4595755))

(assert (=> b!4010624 m!4595733))

(assert (=> b!4010624 m!4595749))

(assert (=> b!4010624 m!4595749))

(assert (=> b!4010624 m!4595751))

(assert (=> b!4010624 m!4595751))

(declare-fun m!4595757 () Bool)

(assert (=> b!4010624 m!4595757))

(assert (=> b!4010626 m!4595733))

(declare-fun m!4595759 () Bool)

(assert (=> b!4010626 m!4595759))

(declare-fun m!4595761 () Bool)

(assert (=> b!4010623 m!4595761))

(assert (=> b!4010630 m!4595733))

(assert (=> b!4010630 m!4595749))

(assert (=> b!4010630 m!4595749))

(assert (=> b!4010630 m!4595751))

(assert (=> b!4010628 m!4595733))

(declare-fun m!4595763 () Bool)

(assert (=> b!4010628 m!4595763))

(assert (=> b!4010628 m!4595445))

(assert (=> b!4010119 d!1187263))

(declare-fun d!1187265 () Bool)

(assert (=> d!1187265 (= suffixResult!105 lt!1419328)))

(declare-fun lt!1419562 () Unit!61931)

(assert (=> d!1187265 (= lt!1419562 (choose!24229 lt!1419320 suffixResult!105 lt!1419320 lt!1419328 lt!1419323))))

(assert (=> d!1187265 (isPrefix!3911 lt!1419320 lt!1419323)))

(assert (=> d!1187265 (= (lemmaSamePrefixThenSameSuffix!2082 lt!1419320 suffixResult!105 lt!1419320 lt!1419328 lt!1419323) lt!1419562)))

(declare-fun bs!589345 () Bool)

(assert (= bs!589345 d!1187265))

(declare-fun m!4595765 () Bool)

(assert (=> bs!589345 m!4595765))

(assert (=> bs!589345 m!4594869))

(assert (=> b!4010119 d!1187265))

(declare-fun d!1187267 () Bool)

(declare-fun e!2487147 () Bool)

(assert (=> d!1187267 e!2487147))

(declare-fun res!1630180 () Bool)

(assert (=> d!1187267 (=> res!1630180 e!2487147)))

(declare-fun lt!1419563 () Bool)

(assert (=> d!1187267 (= res!1630180 (not lt!1419563))))

(declare-fun e!2487145 () Bool)

(assert (=> d!1187267 (= lt!1419563 e!2487145)))

(declare-fun res!1630179 () Bool)

(assert (=> d!1187267 (=> res!1630179 e!2487145)))

(assert (=> d!1187267 (= res!1630179 ((_ is Nil!42912) lt!1419320))))

(assert (=> d!1187267 (= (isPrefix!3911 lt!1419320 lt!1419352) lt!1419563)))

(declare-fun b!4010634 () Bool)

(declare-fun e!2487146 () Bool)

(assert (=> b!4010634 (= e!2487146 (isPrefix!3911 (tail!6249 lt!1419320) (tail!6249 lt!1419352)))))

(declare-fun b!4010635 () Bool)

(assert (=> b!4010635 (= e!2487147 (>= (size!32087 lt!1419352) (size!32087 lt!1419320)))))

(declare-fun b!4010632 () Bool)

(assert (=> b!4010632 (= e!2487145 e!2487146)))

(declare-fun res!1630178 () Bool)

(assert (=> b!4010632 (=> (not res!1630178) (not e!2487146))))

(assert (=> b!4010632 (= res!1630178 (not ((_ is Nil!42912) lt!1419352)))))

(declare-fun b!4010633 () Bool)

(declare-fun res!1630181 () Bool)

(assert (=> b!4010633 (=> (not res!1630181) (not e!2487146))))

(assert (=> b!4010633 (= res!1630181 (= (head!8517 lt!1419320) (head!8517 lt!1419352)))))

(assert (= (and d!1187267 (not res!1630179)) b!4010632))

(assert (= (and b!4010632 res!1630178) b!4010633))

(assert (= (and b!4010633 res!1630181) b!4010634))

(assert (= (and d!1187267 (not res!1630180)) b!4010635))

(assert (=> b!4010634 m!4595535))

(declare-fun m!4595767 () Bool)

(assert (=> b!4010634 m!4595767))

(assert (=> b!4010634 m!4595535))

(assert (=> b!4010634 m!4595767))

(declare-fun m!4595769 () Bool)

(assert (=> b!4010634 m!4595769))

(declare-fun m!4595771 () Bool)

(assert (=> b!4010635 m!4595771))

(assert (=> b!4010635 m!4594857))

(assert (=> b!4010633 m!4595539))

(declare-fun m!4595773 () Bool)

(assert (=> b!4010633 m!4595773))

(assert (=> b!4010119 d!1187267))

(declare-fun d!1187269 () Bool)

(assert (=> d!1187269 (isPrefix!3911 lt!1419320 (++!11226 lt!1419320 lt!1419328))))

(declare-fun lt!1419564 () Unit!61931)

(assert (=> d!1187269 (= lt!1419564 (choose!24224 lt!1419320 lt!1419328))))

(assert (=> d!1187269 (= (lemmaConcatTwoListThenFirstIsPrefix!2752 lt!1419320 lt!1419328) lt!1419564)))

(declare-fun bs!589346 () Bool)

(assert (= bs!589346 d!1187269))

(assert (=> bs!589346 m!4594841))

(assert (=> bs!589346 m!4594841))

(declare-fun m!4595775 () Bool)

(assert (=> bs!589346 m!4595775))

(declare-fun m!4595777 () Bool)

(assert (=> bs!589346 m!4595777))

(assert (=> b!4010119 d!1187269))

(declare-fun d!1187271 () Bool)

(declare-fun lt!1419565 () Int)

(assert (=> d!1187271 (>= lt!1419565 0)))

(declare-fun e!2487148 () Int)

(assert (=> d!1187271 (= lt!1419565 e!2487148)))

(declare-fun c!693507 () Bool)

(assert (=> d!1187271 (= c!693507 ((_ is Nil!42912) suffix!1299))))

(assert (=> d!1187271 (= (size!32087 suffix!1299) lt!1419565)))

(declare-fun b!4010636 () Bool)

(assert (=> b!4010636 (= e!2487148 0)))

(declare-fun b!4010637 () Bool)

(assert (=> b!4010637 (= e!2487148 (+ 1 (size!32087 (t!332919 suffix!1299))))))

(assert (= (and d!1187271 c!693507) b!4010636))

(assert (= (and d!1187271 (not c!693507)) b!4010637))

(declare-fun m!4595779 () Bool)

(assert (=> b!4010637 m!4595779))

(assert (=> b!4010108 d!1187271))

(declare-fun d!1187273 () Bool)

(declare-fun lt!1419566 () Int)

(assert (=> d!1187273 (>= lt!1419566 0)))

(declare-fun e!2487149 () Int)

(assert (=> d!1187273 (= lt!1419566 e!2487149)))

(declare-fun c!693508 () Bool)

(assert (=> d!1187273 (= c!693508 ((_ is Nil!42912) newSuffix!27))))

(assert (=> d!1187273 (= (size!32087 newSuffix!27) lt!1419566)))

(declare-fun b!4010638 () Bool)

(assert (=> b!4010638 (= e!2487149 0)))

(declare-fun b!4010639 () Bool)

(assert (=> b!4010639 (= e!2487149 (+ 1 (size!32087 (t!332919 newSuffix!27))))))

(assert (= (and d!1187273 c!693508) b!4010638))

(assert (= (and d!1187273 (not c!693508)) b!4010639))

(declare-fun m!4595781 () Bool)

(assert (=> b!4010639 m!4595781))

(assert (=> b!4010108 d!1187273))

(declare-fun d!1187275 () Bool)

(declare-fun res!1630186 () Bool)

(declare-fun e!2487152 () Bool)

(assert (=> d!1187275 (=> (not res!1630186) (not e!2487152))))

(assert (=> d!1187275 (= res!1630186 (not (isEmpty!25639 (originalCharacters!7424 token!484))))))

(assert (=> d!1187275 (= (inv!57321 token!484) e!2487152)))

(declare-fun b!4010644 () Bool)

(declare-fun res!1630187 () Bool)

(assert (=> b!4010644 (=> (not res!1630187) (not e!2487152))))

(assert (=> b!4010644 (= res!1630187 (= (originalCharacters!7424 token!484) (list!15948 (dynLambda!18211 (toChars!9187 (transformation!6824 (rule!9866 token!484))) (value!215118 token!484)))))))

(declare-fun b!4010645 () Bool)

(assert (=> b!4010645 (= e!2487152 (= (size!32088 token!484) (size!32087 (originalCharacters!7424 token!484))))))

(assert (= (and d!1187275 res!1630186) b!4010644))

(assert (= (and b!4010644 res!1630187) b!4010645))

(declare-fun b_lambda!117043 () Bool)

(assert (=> (not b_lambda!117043) (not b!4010644)))

(assert (=> b!4010644 t!332951))

(declare-fun b_and!308103 () Bool)

(assert (= b_and!308095 (and (=> t!332951 result!292292) b_and!308103)))

(assert (=> b!4010644 t!332953))

(declare-fun b_and!308105 () Bool)

(assert (= b_and!308097 (and (=> t!332953 result!292294) b_and!308105)))

(declare-fun m!4595783 () Bool)

(assert (=> d!1187275 m!4595783))

(assert (=> b!4010644 m!4595727))

(assert (=> b!4010644 m!4595727))

(declare-fun m!4595785 () Bool)

(assert (=> b!4010644 m!4595785))

(assert (=> b!4010645 m!4594849))

(assert (=> start!377664 d!1187275))

(declare-fun d!1187277 () Bool)

(assert (=> d!1187277 (= (inv!57317 (tag!7684 (h!48334 rules!2999))) (= (mod (str.len (value!215117 (tag!7684 (h!48334 rules!2999)))) 2) 0))))

(assert (=> b!4010130 d!1187277))

(declare-fun d!1187279 () Bool)

(declare-fun res!1630190 () Bool)

(declare-fun e!2487155 () Bool)

(assert (=> d!1187279 (=> (not res!1630190) (not e!2487155))))

(assert (=> d!1187279 (= res!1630190 (semiInverseModEq!2923 (toChars!9187 (transformation!6824 (h!48334 rules!2999))) (toValue!9328 (transformation!6824 (h!48334 rules!2999)))))))

(assert (=> d!1187279 (= (inv!57320 (transformation!6824 (h!48334 rules!2999))) e!2487155)))

(declare-fun b!4010648 () Bool)

(assert (=> b!4010648 (= e!2487155 (equivClasses!2822 (toChars!9187 (transformation!6824 (h!48334 rules!2999))) (toValue!9328 (transformation!6824 (h!48334 rules!2999)))))))

(assert (= (and d!1187279 res!1630190) b!4010648))

(declare-fun m!4595787 () Bool)

(assert (=> d!1187279 m!4595787))

(declare-fun m!4595789 () Bool)

(assert (=> b!4010648 m!4595789))

(assert (=> b!4010130 d!1187279))

(declare-fun d!1187281 () Bool)

(declare-fun e!2487156 () Bool)

(assert (=> d!1187281 e!2487156))

(declare-fun res!1630193 () Bool)

(assert (=> d!1187281 (=> res!1630193 e!2487156)))

(declare-fun lt!1419569 () Option!9238)

(assert (=> d!1187281 (= res!1630193 (isEmpty!25638 lt!1419569))))

(declare-fun e!2487158 () Option!9238)

(assert (=> d!1187281 (= lt!1419569 e!2487158)))

(declare-fun c!693509 () Bool)

(assert (=> d!1187281 (= c!693509 (and ((_ is Cons!42914) rules!2999) ((_ is Nil!42914) (t!332921 rules!2999))))))

(declare-fun lt!1419571 () Unit!61931)

(declare-fun lt!1419570 () Unit!61931)

(assert (=> d!1187281 (= lt!1419571 lt!1419570)))

(assert (=> d!1187281 (isPrefix!3911 lt!1419323 lt!1419323)))

(assert (=> d!1187281 (= lt!1419570 (lemmaIsPrefixRefl!2487 lt!1419323 lt!1419323))))

(assert (=> d!1187281 (rulesValidInductive!2488 thiss!21717 rules!2999)))

(assert (=> d!1187281 (= (maxPrefix!3711 thiss!21717 rules!2999 lt!1419323) lt!1419569)))

(declare-fun b!4010649 () Bool)

(declare-fun e!2487157 () Bool)

(assert (=> b!4010649 (= e!2487156 e!2487157)))

(declare-fun res!1630191 () Bool)

(assert (=> b!4010649 (=> (not res!1630191) (not e!2487157))))

(assert (=> b!4010649 (= res!1630191 (isDefined!7067 lt!1419569))))

(declare-fun b!4010650 () Bool)

(declare-fun res!1630192 () Bool)

(assert (=> b!4010650 (=> (not res!1630192) (not e!2487157))))

(assert (=> b!4010650 (= res!1630192 (matchR!5690 (regex!6824 (rule!9866 (_1!24167 (get!14103 lt!1419569)))) (list!15948 (charsOf!4640 (_1!24167 (get!14103 lt!1419569))))))))

(declare-fun b!4010651 () Bool)

(declare-fun call!286379 () Option!9238)

(assert (=> b!4010651 (= e!2487158 call!286379)))

(declare-fun b!4010652 () Bool)

(assert (=> b!4010652 (= e!2487157 (contains!8534 rules!2999 (rule!9866 (_1!24167 (get!14103 lt!1419569)))))))

(declare-fun b!4010653 () Bool)

(declare-fun res!1630195 () Bool)

(assert (=> b!4010653 (=> (not res!1630195) (not e!2487157))))

(assert (=> b!4010653 (= res!1630195 (= (++!11226 (list!15948 (charsOf!4640 (_1!24167 (get!14103 lt!1419569)))) (_2!24167 (get!14103 lt!1419569))) lt!1419323))))

(declare-fun bm!286374 () Bool)

(assert (=> bm!286374 (= call!286379 (maxPrefixOneRule!2731 thiss!21717 (h!48334 rules!2999) lt!1419323))))

(declare-fun b!4010654 () Bool)

(declare-fun res!1630197 () Bool)

(assert (=> b!4010654 (=> (not res!1630197) (not e!2487157))))

(assert (=> b!4010654 (= res!1630197 (< (size!32087 (_2!24167 (get!14103 lt!1419569))) (size!32087 lt!1419323)))))

(declare-fun b!4010655 () Bool)

(declare-fun lt!1419567 () Option!9238)

(declare-fun lt!1419568 () Option!9238)

(assert (=> b!4010655 (= e!2487158 (ite (and ((_ is None!9237) lt!1419567) ((_ is None!9237) lt!1419568)) None!9237 (ite ((_ is None!9237) lt!1419568) lt!1419567 (ite ((_ is None!9237) lt!1419567) lt!1419568 (ite (>= (size!32088 (_1!24167 (v!39605 lt!1419567))) (size!32088 (_1!24167 (v!39605 lt!1419568)))) lt!1419567 lt!1419568)))))))

(assert (=> b!4010655 (= lt!1419567 call!286379)))

(assert (=> b!4010655 (= lt!1419568 (maxPrefix!3711 thiss!21717 (t!332921 rules!2999) lt!1419323))))

(declare-fun b!4010656 () Bool)

(declare-fun res!1630196 () Bool)

(assert (=> b!4010656 (=> (not res!1630196) (not e!2487157))))

(assert (=> b!4010656 (= res!1630196 (= (list!15948 (charsOf!4640 (_1!24167 (get!14103 lt!1419569)))) (originalCharacters!7424 (_1!24167 (get!14103 lt!1419569)))))))

(declare-fun b!4010657 () Bool)

(declare-fun res!1630194 () Bool)

(assert (=> b!4010657 (=> (not res!1630194) (not e!2487157))))

(assert (=> b!4010657 (= res!1630194 (= (value!215118 (_1!24167 (get!14103 lt!1419569))) (apply!10021 (transformation!6824 (rule!9866 (_1!24167 (get!14103 lt!1419569)))) (seqFromList!5049 (originalCharacters!7424 (_1!24167 (get!14103 lt!1419569)))))))))

(assert (= (and d!1187281 c!693509) b!4010651))

(assert (= (and d!1187281 (not c!693509)) b!4010655))

(assert (= (or b!4010651 b!4010655) bm!286374))

(assert (= (and d!1187281 (not res!1630193)) b!4010649))

(assert (= (and b!4010649 res!1630191) b!4010656))

(assert (= (and b!4010656 res!1630196) b!4010654))

(assert (= (and b!4010654 res!1630197) b!4010653))

(assert (= (and b!4010653 res!1630195) b!4010657))

(assert (= (and b!4010657 res!1630194) b!4010650))

(assert (= (and b!4010650 res!1630192) b!4010652))

(declare-fun m!4595791 () Bool)

(assert (=> b!4010657 m!4595791))

(declare-fun m!4595793 () Bool)

(assert (=> b!4010657 m!4595793))

(assert (=> b!4010657 m!4595793))

(declare-fun m!4595795 () Bool)

(assert (=> b!4010657 m!4595795))

(declare-fun m!4595797 () Bool)

(assert (=> bm!286374 m!4595797))

(declare-fun m!4595799 () Bool)

(assert (=> d!1187281 m!4595799))

(assert (=> d!1187281 m!4594845))

(assert (=> d!1187281 m!4594847))

(assert (=> d!1187281 m!4595747))

(assert (=> b!4010653 m!4595791))

(declare-fun m!4595801 () Bool)

(assert (=> b!4010653 m!4595801))

(assert (=> b!4010653 m!4595801))

(declare-fun m!4595803 () Bool)

(assert (=> b!4010653 m!4595803))

(assert (=> b!4010653 m!4595803))

(declare-fun m!4595805 () Bool)

(assert (=> b!4010653 m!4595805))

(declare-fun m!4595807 () Bool)

(assert (=> b!4010655 m!4595807))

(assert (=> b!4010650 m!4595791))

(assert (=> b!4010650 m!4595801))

(assert (=> b!4010650 m!4595801))

(assert (=> b!4010650 m!4595803))

(assert (=> b!4010650 m!4595803))

(declare-fun m!4595809 () Bool)

(assert (=> b!4010650 m!4595809))

(assert (=> b!4010652 m!4595791))

(declare-fun m!4595811 () Bool)

(assert (=> b!4010652 m!4595811))

(declare-fun m!4595813 () Bool)

(assert (=> b!4010649 m!4595813))

(assert (=> b!4010656 m!4595791))

(assert (=> b!4010656 m!4595801))

(assert (=> b!4010656 m!4595801))

(assert (=> b!4010656 m!4595803))

(assert (=> b!4010654 m!4595791))

(declare-fun m!4595815 () Bool)

(assert (=> b!4010654 m!4595815))

(assert (=> b!4010654 m!4595617))

(assert (=> b!4010131 d!1187281))

(declare-fun lt!1419572 () List!43036)

(declare-fun e!2487160 () Bool)

(declare-fun b!4010661 () Bool)

(assert (=> b!4010661 (= e!2487160 (or (not (= suffix!1299 Nil!42912)) (= lt!1419572 prefix!494)))))

(declare-fun b!4010658 () Bool)

(declare-fun e!2487159 () List!43036)

(assert (=> b!4010658 (= e!2487159 suffix!1299)))

(declare-fun b!4010659 () Bool)

(assert (=> b!4010659 (= e!2487159 (Cons!42912 (h!48332 prefix!494) (++!11226 (t!332919 prefix!494) suffix!1299)))))

(declare-fun b!4010660 () Bool)

(declare-fun res!1630199 () Bool)

(assert (=> b!4010660 (=> (not res!1630199) (not e!2487160))))

(assert (=> b!4010660 (= res!1630199 (= (size!32087 lt!1419572) (+ (size!32087 prefix!494) (size!32087 suffix!1299))))))

(declare-fun d!1187283 () Bool)

(assert (=> d!1187283 e!2487160))

(declare-fun res!1630198 () Bool)

(assert (=> d!1187283 (=> (not res!1630198) (not e!2487160))))

(assert (=> d!1187283 (= res!1630198 (= (content!6510 lt!1419572) ((_ map or) (content!6510 prefix!494) (content!6510 suffix!1299))))))

(assert (=> d!1187283 (= lt!1419572 e!2487159)))

(declare-fun c!693510 () Bool)

(assert (=> d!1187283 (= c!693510 ((_ is Nil!42912) prefix!494))))

(assert (=> d!1187283 (= (++!11226 prefix!494 suffix!1299) lt!1419572)))

(assert (= (and d!1187283 c!693510) b!4010658))

(assert (= (and d!1187283 (not c!693510)) b!4010659))

(assert (= (and d!1187283 res!1630198) b!4010660))

(assert (= (and b!4010660 res!1630199) b!4010661))

(declare-fun m!4595817 () Bool)

(assert (=> b!4010659 m!4595817))

(declare-fun m!4595819 () Bool)

(assert (=> b!4010660 m!4595819))

(assert (=> b!4010660 m!4594859))

(assert (=> b!4010660 m!4594951))

(declare-fun m!4595821 () Bool)

(assert (=> d!1187283 m!4595821))

(assert (=> d!1187283 m!4595705))

(declare-fun m!4595823 () Bool)

(assert (=> d!1187283 m!4595823))

(assert (=> b!4010131 d!1187283))

(declare-fun d!1187285 () Bool)

(declare-fun e!2487163 () Bool)

(assert (=> d!1187285 e!2487163))

(declare-fun res!1630202 () Bool)

(assert (=> d!1187285 (=> res!1630202 e!2487163)))

(declare-fun lt!1419573 () Bool)

(assert (=> d!1187285 (= res!1630202 (not lt!1419573))))

(declare-fun e!2487161 () Bool)

(assert (=> d!1187285 (= lt!1419573 e!2487161)))

(declare-fun res!1630201 () Bool)

(assert (=> d!1187285 (=> res!1630201 e!2487161)))

(assert (=> d!1187285 (= res!1630201 ((_ is Nil!42912) newSuffix!27))))

(assert (=> d!1187285 (= (isPrefix!3911 newSuffix!27 suffix!1299) lt!1419573)))

(declare-fun b!4010664 () Bool)

(declare-fun e!2487162 () Bool)

(assert (=> b!4010664 (= e!2487162 (isPrefix!3911 (tail!6249 newSuffix!27) (tail!6249 suffix!1299)))))

(declare-fun b!4010665 () Bool)

(assert (=> b!4010665 (= e!2487163 (>= (size!32087 suffix!1299) (size!32087 newSuffix!27)))))

(declare-fun b!4010662 () Bool)

(assert (=> b!4010662 (= e!2487161 e!2487162)))

(declare-fun res!1630200 () Bool)

(assert (=> b!4010662 (=> (not res!1630200) (not e!2487162))))

(assert (=> b!4010662 (= res!1630200 (not ((_ is Nil!42912) suffix!1299)))))

(declare-fun b!4010663 () Bool)

(declare-fun res!1630203 () Bool)

(assert (=> b!4010663 (=> (not res!1630203) (not e!2487162))))

(assert (=> b!4010663 (= res!1630203 (= (head!8517 newSuffix!27) (head!8517 suffix!1299)))))

(assert (= (and d!1187285 (not res!1630201)) b!4010662))

(assert (= (and b!4010662 res!1630200) b!4010663))

(assert (= (and b!4010663 res!1630203) b!4010664))

(assert (= (and d!1187285 (not res!1630202)) b!4010665))

(declare-fun m!4595825 () Bool)

(assert (=> b!4010664 m!4595825))

(declare-fun m!4595827 () Bool)

(assert (=> b!4010664 m!4595827))

(assert (=> b!4010664 m!4595825))

(assert (=> b!4010664 m!4595827))

(declare-fun m!4595829 () Bool)

(assert (=> b!4010664 m!4595829))

(assert (=> b!4010665 m!4594951))

(assert (=> b!4010665 m!4594953))

(declare-fun m!4595831 () Bool)

(assert (=> b!4010663 m!4595831))

(declare-fun m!4595833 () Bool)

(assert (=> b!4010663 m!4595833))

(assert (=> b!4010120 d!1187285))

(declare-fun b!4010669 () Bool)

(declare-fun lt!1419574 () List!43036)

(declare-fun e!2487165 () Bool)

(assert (=> b!4010669 (= e!2487165 (or (not (= lt!1419328 Nil!42912)) (= lt!1419574 lt!1419320)))))

(declare-fun b!4010666 () Bool)

(declare-fun e!2487164 () List!43036)

(assert (=> b!4010666 (= e!2487164 lt!1419328)))

(declare-fun b!4010667 () Bool)

(assert (=> b!4010667 (= e!2487164 (Cons!42912 (h!48332 lt!1419320) (++!11226 (t!332919 lt!1419320) lt!1419328)))))

(declare-fun b!4010668 () Bool)

(declare-fun res!1630205 () Bool)

(assert (=> b!4010668 (=> (not res!1630205) (not e!2487165))))

(assert (=> b!4010668 (= res!1630205 (= (size!32087 lt!1419574) (+ (size!32087 lt!1419320) (size!32087 lt!1419328))))))

(declare-fun d!1187287 () Bool)

(assert (=> d!1187287 e!2487165))

(declare-fun res!1630204 () Bool)

(assert (=> d!1187287 (=> (not res!1630204) (not e!2487165))))

(assert (=> d!1187287 (= res!1630204 (= (content!6510 lt!1419574) ((_ map or) (content!6510 lt!1419320) (content!6510 lt!1419328))))))

(assert (=> d!1187287 (= lt!1419574 e!2487164)))

(declare-fun c!693511 () Bool)

(assert (=> d!1187287 (= c!693511 ((_ is Nil!42912) lt!1419320))))

(assert (=> d!1187287 (= (++!11226 lt!1419320 lt!1419328) lt!1419574)))

(assert (= (and d!1187287 c!693511) b!4010666))

(assert (= (and d!1187287 (not c!693511)) b!4010667))

(assert (= (and d!1187287 res!1630204) b!4010668))

(assert (= (and b!4010668 res!1630205) b!4010669))

(declare-fun m!4595835 () Bool)

(assert (=> b!4010667 m!4595835))

(declare-fun m!4595837 () Bool)

(assert (=> b!4010668 m!4595837))

(assert (=> b!4010668 m!4594857))

(declare-fun m!4595839 () Bool)

(assert (=> b!4010668 m!4595839))

(declare-fun m!4595841 () Bool)

(assert (=> d!1187287 m!4595841))

(assert (=> d!1187287 m!4594977))

(declare-fun m!4595843 () Bool)

(assert (=> d!1187287 m!4595843))

(assert (=> b!4010121 d!1187287))

(declare-fun d!1187289 () Bool)

(declare-fun lt!1419575 () List!43036)

(assert (=> d!1187289 (= (++!11226 lt!1419320 lt!1419575) lt!1419323)))

(declare-fun e!2487166 () List!43036)

(assert (=> d!1187289 (= lt!1419575 e!2487166)))

(declare-fun c!693512 () Bool)

(assert (=> d!1187289 (= c!693512 ((_ is Cons!42912) lt!1419320))))

(assert (=> d!1187289 (>= (size!32087 lt!1419323) (size!32087 lt!1419320))))

(assert (=> d!1187289 (= (getSuffix!2336 lt!1419323 lt!1419320) lt!1419575)))

(declare-fun b!4010670 () Bool)

(assert (=> b!4010670 (= e!2487166 (getSuffix!2336 (tail!6249 lt!1419323) (t!332919 lt!1419320)))))

(declare-fun b!4010671 () Bool)

(assert (=> b!4010671 (= e!2487166 lt!1419323)))

(assert (= (and d!1187289 c!693512) b!4010670))

(assert (= (and d!1187289 (not c!693512)) b!4010671))

(declare-fun m!4595845 () Bool)

(assert (=> d!1187289 m!4595845))

(assert (=> d!1187289 m!4595617))

(assert (=> d!1187289 m!4594857))

(declare-fun m!4595847 () Bool)

(assert (=> b!4010670 m!4595847))

(assert (=> b!4010670 m!4595847))

(declare-fun m!4595849 () Bool)

(assert (=> b!4010670 m!4595849))

(assert (=> b!4010121 d!1187289))

(declare-fun d!1187291 () Bool)

(declare-fun e!2487169 () Bool)

(assert (=> d!1187291 e!2487169))

(declare-fun res!1630208 () Bool)

(assert (=> d!1187291 (=> res!1630208 e!2487169)))

(declare-fun lt!1419576 () Bool)

(assert (=> d!1187291 (= res!1630208 (not lt!1419576))))

(declare-fun e!2487167 () Bool)

(assert (=> d!1187291 (= lt!1419576 e!2487167)))

(declare-fun res!1630207 () Bool)

(assert (=> d!1187291 (=> res!1630207 e!2487167)))

(assert (=> d!1187291 (= res!1630207 ((_ is Nil!42912) lt!1419323))))

(assert (=> d!1187291 (= (isPrefix!3911 lt!1419323 lt!1419323) lt!1419576)))

(declare-fun b!4010674 () Bool)

(declare-fun e!2487168 () Bool)

(assert (=> b!4010674 (= e!2487168 (isPrefix!3911 (tail!6249 lt!1419323) (tail!6249 lt!1419323)))))

(declare-fun b!4010675 () Bool)

(assert (=> b!4010675 (= e!2487169 (>= (size!32087 lt!1419323) (size!32087 lt!1419323)))))

(declare-fun b!4010672 () Bool)

(assert (=> b!4010672 (= e!2487167 e!2487168)))

(declare-fun res!1630206 () Bool)

(assert (=> b!4010672 (=> (not res!1630206) (not e!2487168))))

(assert (=> b!4010672 (= res!1630206 (not ((_ is Nil!42912) lt!1419323)))))

(declare-fun b!4010673 () Bool)

(declare-fun res!1630209 () Bool)

(assert (=> b!4010673 (=> (not res!1630209) (not e!2487168))))

(assert (=> b!4010673 (= res!1630209 (= (head!8517 lt!1419323) (head!8517 lt!1419323)))))

(assert (= (and d!1187291 (not res!1630207)) b!4010672))

(assert (= (and b!4010672 res!1630206) b!4010673))

(assert (= (and b!4010673 res!1630209) b!4010674))

(assert (= (and d!1187291 (not res!1630208)) b!4010675))

(assert (=> b!4010674 m!4595847))

(assert (=> b!4010674 m!4595847))

(assert (=> b!4010674 m!4595847))

(assert (=> b!4010674 m!4595847))

(declare-fun m!4595851 () Bool)

(assert (=> b!4010674 m!4595851))

(assert (=> b!4010675 m!4595617))

(assert (=> b!4010675 m!4595617))

(declare-fun m!4595853 () Bool)

(assert (=> b!4010673 m!4595853))

(assert (=> b!4010673 m!4595853))

(assert (=> b!4010121 d!1187291))

(declare-fun d!1187293 () Bool)

(assert (=> d!1187293 (isPrefix!3911 lt!1419323 lt!1419323)))

(declare-fun lt!1419579 () Unit!61931)

(declare-fun choose!24232 (List!43036 List!43036) Unit!61931)

(assert (=> d!1187293 (= lt!1419579 (choose!24232 lt!1419323 lt!1419323))))

(assert (=> d!1187293 (= (lemmaIsPrefixRefl!2487 lt!1419323 lt!1419323) lt!1419579)))

(declare-fun bs!589347 () Bool)

(assert (= bs!589347 d!1187293))

(assert (=> bs!589347 m!4594845))

(declare-fun m!4595855 () Bool)

(assert (=> bs!589347 m!4595855))

(assert (=> b!4010121 d!1187293))

(declare-fun d!1187295 () Bool)

(assert (=> d!1187295 (= (isEmpty!25636 rules!2999) ((_ is Nil!42914) rules!2999))))

(assert (=> b!4010133 d!1187295))

(declare-fun b!4010686 () Bool)

(declare-fun e!2487176 () Bool)

(declare-fun inv!15 (TokenValue!7054) Bool)

(assert (=> b!4010686 (= e!2487176 (inv!15 (value!215118 token!484)))))

(declare-fun b!4010687 () Bool)

(declare-fun e!2487177 () Bool)

(declare-fun inv!17 (TokenValue!7054) Bool)

(assert (=> b!4010687 (= e!2487177 (inv!17 (value!215118 token!484)))))

(declare-fun d!1187297 () Bool)

(declare-fun c!693517 () Bool)

(assert (=> d!1187297 (= c!693517 ((_ is IntegerValue!21162) (value!215118 token!484)))))

(declare-fun e!2487178 () Bool)

(assert (=> d!1187297 (= (inv!21 (value!215118 token!484)) e!2487178)))

(declare-fun b!4010688 () Bool)

(declare-fun inv!16 (TokenValue!7054) Bool)

(assert (=> b!4010688 (= e!2487178 (inv!16 (value!215118 token!484)))))

(declare-fun b!4010689 () Bool)

(assert (=> b!4010689 (= e!2487178 e!2487177)))

(declare-fun c!693518 () Bool)

(assert (=> b!4010689 (= c!693518 ((_ is IntegerValue!21163) (value!215118 token!484)))))

(declare-fun b!4010690 () Bool)

(declare-fun res!1630212 () Bool)

(assert (=> b!4010690 (=> res!1630212 e!2487176)))

(assert (=> b!4010690 (= res!1630212 (not ((_ is IntegerValue!21164) (value!215118 token!484))))))

(assert (=> b!4010690 (= e!2487177 e!2487176)))

(assert (= (and d!1187297 c!693517) b!4010688))

(assert (= (and d!1187297 (not c!693517)) b!4010689))

(assert (= (and b!4010689 c!693518) b!4010687))

(assert (= (and b!4010689 (not c!693518)) b!4010690))

(assert (= (and b!4010690 (not res!1630212)) b!4010686))

(declare-fun m!4595857 () Bool)

(assert (=> b!4010686 m!4595857))

(declare-fun m!4595859 () Bool)

(assert (=> b!4010687 m!4595859))

(declare-fun m!4595861 () Bool)

(assert (=> b!4010688 m!4595861))

(assert (=> b!4010122 d!1187297))

(declare-fun d!1187299 () Bool)

(declare-fun lt!1419580 () Int)

(assert (=> d!1187299 (>= lt!1419580 0)))

(declare-fun e!2487179 () Int)

(assert (=> d!1187299 (= lt!1419580 e!2487179)))

(declare-fun c!693519 () Bool)

(assert (=> d!1187299 (= c!693519 ((_ is Nil!42912) (originalCharacters!7424 token!484)))))

(assert (=> d!1187299 (= (size!32087 (originalCharacters!7424 token!484)) lt!1419580)))

(declare-fun b!4010691 () Bool)

(assert (=> b!4010691 (= e!2487179 0)))

(declare-fun b!4010692 () Bool)

(assert (=> b!4010692 (= e!2487179 (+ 1 (size!32087 (t!332919 (originalCharacters!7424 token!484)))))))

(assert (= (and d!1187299 c!693519) b!4010691))

(assert (= (and d!1187299 (not c!693519)) b!4010692))

(declare-fun m!4595863 () Bool)

(assert (=> b!4010692 m!4595863))

(assert (=> b!4010123 d!1187299))

(declare-fun b!4010696 () Bool)

(declare-fun lt!1419581 () List!43036)

(declare-fun e!2487181 () Bool)

(assert (=> b!4010696 (= e!2487181 (or (not (= (getSuffix!2336 suffix!1299 newSuffix!27) Nil!42912)) (= lt!1419581 newSuffix!27)))))

(declare-fun b!4010693 () Bool)

(declare-fun e!2487180 () List!43036)

(assert (=> b!4010693 (= e!2487180 (getSuffix!2336 suffix!1299 newSuffix!27))))

(declare-fun b!4010694 () Bool)

(assert (=> b!4010694 (= e!2487180 (Cons!42912 (h!48332 newSuffix!27) (++!11226 (t!332919 newSuffix!27) (getSuffix!2336 suffix!1299 newSuffix!27))))))

(declare-fun b!4010695 () Bool)

(declare-fun res!1630214 () Bool)

(assert (=> b!4010695 (=> (not res!1630214) (not e!2487181))))

(assert (=> b!4010695 (= res!1630214 (= (size!32087 lt!1419581) (+ (size!32087 newSuffix!27) (size!32087 (getSuffix!2336 suffix!1299 newSuffix!27)))))))

(declare-fun d!1187301 () Bool)

(assert (=> d!1187301 e!2487181))

(declare-fun res!1630213 () Bool)

(assert (=> d!1187301 (=> (not res!1630213) (not e!2487181))))

(assert (=> d!1187301 (= res!1630213 (= (content!6510 lt!1419581) ((_ map or) (content!6510 newSuffix!27) (content!6510 (getSuffix!2336 suffix!1299 newSuffix!27)))))))

(assert (=> d!1187301 (= lt!1419581 e!2487180)))

(declare-fun c!693520 () Bool)

(assert (=> d!1187301 (= c!693520 ((_ is Nil!42912) newSuffix!27))))

(assert (=> d!1187301 (= (++!11226 newSuffix!27 (getSuffix!2336 suffix!1299 newSuffix!27)) lt!1419581)))

(assert (= (and d!1187301 c!693520) b!4010693))

(assert (= (and d!1187301 (not c!693520)) b!4010694))

(assert (= (and d!1187301 res!1630213) b!4010695))

(assert (= (and b!4010695 res!1630214) b!4010696))

(assert (=> b!4010694 m!4594875))

(declare-fun m!4595865 () Bool)

(assert (=> b!4010694 m!4595865))

(declare-fun m!4595867 () Bool)

(assert (=> b!4010695 m!4595867))

(assert (=> b!4010695 m!4594953))

(assert (=> b!4010695 m!4594875))

(declare-fun m!4595869 () Bool)

(assert (=> b!4010695 m!4595869))

(declare-fun m!4595871 () Bool)

(assert (=> d!1187301 m!4595871))

(assert (=> d!1187301 m!4595707))

(assert (=> d!1187301 m!4594875))

(declare-fun m!4595873 () Bool)

(assert (=> d!1187301 m!4595873))

(assert (=> b!4010112 d!1187301))

(declare-fun d!1187303 () Bool)

(declare-fun lt!1419582 () List!43036)

(assert (=> d!1187303 (= (++!11226 newSuffix!27 lt!1419582) suffix!1299)))

(declare-fun e!2487182 () List!43036)

(assert (=> d!1187303 (= lt!1419582 e!2487182)))

(declare-fun c!693521 () Bool)

(assert (=> d!1187303 (= c!693521 ((_ is Cons!42912) newSuffix!27))))

(assert (=> d!1187303 (>= (size!32087 suffix!1299) (size!32087 newSuffix!27))))

(assert (=> d!1187303 (= (getSuffix!2336 suffix!1299 newSuffix!27) lt!1419582)))

(declare-fun b!4010697 () Bool)

(assert (=> b!4010697 (= e!2487182 (getSuffix!2336 (tail!6249 suffix!1299) (t!332919 newSuffix!27)))))

(declare-fun b!4010698 () Bool)

(assert (=> b!4010698 (= e!2487182 suffix!1299)))

(assert (= (and d!1187303 c!693521) b!4010697))

(assert (= (and d!1187303 (not c!693521)) b!4010698))

(declare-fun m!4595875 () Bool)

(assert (=> d!1187303 m!4595875))

(assert (=> d!1187303 m!4594951))

(assert (=> d!1187303 m!4594953))

(assert (=> b!4010697 m!4595827))

(assert (=> b!4010697 m!4595827))

(declare-fun m!4595877 () Bool)

(assert (=> b!4010697 m!4595877))

(assert (=> b!4010112 d!1187303))

(declare-fun d!1187305 () Bool)

(assert (=> d!1187305 (isPrefix!3911 lt!1419320 (++!11226 lt!1419320 suffixResult!105))))

(declare-fun lt!1419583 () Unit!61931)

(assert (=> d!1187305 (= lt!1419583 (choose!24224 lt!1419320 suffixResult!105))))

(assert (=> d!1187305 (= (lemmaConcatTwoListThenFirstIsPrefix!2752 lt!1419320 suffixResult!105) lt!1419583)))

(declare-fun bs!589348 () Bool)

(assert (= bs!589348 d!1187305))

(assert (=> bs!589348 m!4594957))

(assert (=> bs!589348 m!4594957))

(declare-fun m!4595879 () Bool)

(assert (=> bs!589348 m!4595879))

(declare-fun m!4595881 () Bool)

(assert (=> bs!589348 m!4595881))

(assert (=> b!4010113 d!1187305))

(declare-fun d!1187307 () Bool)

(declare-fun e!2487185 () Bool)

(assert (=> d!1187307 e!2487185))

(declare-fun res!1630217 () Bool)

(assert (=> d!1187307 (=> res!1630217 e!2487185)))

(declare-fun lt!1419584 () Bool)

(assert (=> d!1187307 (= res!1630217 (not lt!1419584))))

(declare-fun e!2487183 () Bool)

(assert (=> d!1187307 (= lt!1419584 e!2487183)))

(declare-fun res!1630216 () Bool)

(assert (=> d!1187307 (=> res!1630216 e!2487183)))

(assert (=> d!1187307 (= res!1630216 ((_ is Nil!42912) prefix!494))))

(assert (=> d!1187307 (= (isPrefix!3911 prefix!494 lt!1419323) lt!1419584)))

(declare-fun b!4010701 () Bool)

(declare-fun e!2487184 () Bool)

(assert (=> b!4010701 (= e!2487184 (isPrefix!3911 (tail!6249 prefix!494) (tail!6249 lt!1419323)))))

(declare-fun b!4010702 () Bool)

(assert (=> b!4010702 (= e!2487185 (>= (size!32087 lt!1419323) (size!32087 prefix!494)))))

(declare-fun b!4010699 () Bool)

(assert (=> b!4010699 (= e!2487183 e!2487184)))

(declare-fun res!1630215 () Bool)

(assert (=> b!4010699 (=> (not res!1630215) (not e!2487184))))

(assert (=> b!4010699 (= res!1630215 (not ((_ is Nil!42912) lt!1419323)))))

(declare-fun b!4010700 () Bool)

(declare-fun res!1630218 () Bool)

(assert (=> b!4010700 (=> (not res!1630218) (not e!2487184))))

(assert (=> b!4010700 (= res!1630218 (= (head!8517 prefix!494) (head!8517 lt!1419323)))))

(assert (= (and d!1187307 (not res!1630216)) b!4010699))

(assert (= (and b!4010699 res!1630215) b!4010700))

(assert (= (and b!4010700 res!1630218) b!4010701))

(assert (= (and d!1187307 (not res!1630217)) b!4010702))

(assert (=> b!4010701 m!4595531))

(assert (=> b!4010701 m!4595847))

(assert (=> b!4010701 m!4595531))

(assert (=> b!4010701 m!4595847))

(declare-fun m!4595883 () Bool)

(assert (=> b!4010701 m!4595883))

(assert (=> b!4010702 m!4595617))

(assert (=> b!4010702 m!4594859))

(assert (=> b!4010700 m!4595541))

(assert (=> b!4010700 m!4595853))

(assert (=> b!4010113 d!1187307))

(declare-fun d!1187309 () Bool)

(assert (=> d!1187309 (isPrefix!3911 prefix!494 (++!11226 prefix!494 suffix!1299))))

(declare-fun lt!1419585 () Unit!61931)

(assert (=> d!1187309 (= lt!1419585 (choose!24224 prefix!494 suffix!1299))))

(assert (=> d!1187309 (= (lemmaConcatTwoListThenFirstIsPrefix!2752 prefix!494 suffix!1299) lt!1419585)))

(declare-fun bs!589349 () Bool)

(assert (= bs!589349 d!1187309))

(assert (=> bs!589349 m!4594831))

(assert (=> bs!589349 m!4594831))

(declare-fun m!4595885 () Bool)

(assert (=> bs!589349 m!4595885))

(declare-fun m!4595887 () Bool)

(assert (=> bs!589349 m!4595887))

(assert (=> b!4010113 d!1187309))

(declare-fun d!1187311 () Bool)

(declare-fun e!2487188 () Bool)

(assert (=> d!1187311 e!2487188))

(declare-fun res!1630221 () Bool)

(assert (=> d!1187311 (=> res!1630221 e!2487188)))

(declare-fun lt!1419586 () Bool)

(assert (=> d!1187311 (= res!1630221 (not lt!1419586))))

(declare-fun e!2487186 () Bool)

(assert (=> d!1187311 (= lt!1419586 e!2487186)))

(declare-fun res!1630220 () Bool)

(assert (=> d!1187311 (=> res!1630220 e!2487186)))

(assert (=> d!1187311 (= res!1630220 ((_ is Nil!42912) lt!1419320))))

(assert (=> d!1187311 (= (isPrefix!3911 lt!1419320 lt!1419323) lt!1419586)))

(declare-fun b!4010705 () Bool)

(declare-fun e!2487187 () Bool)

(assert (=> b!4010705 (= e!2487187 (isPrefix!3911 (tail!6249 lt!1419320) (tail!6249 lt!1419323)))))

(declare-fun b!4010706 () Bool)

(assert (=> b!4010706 (= e!2487188 (>= (size!32087 lt!1419323) (size!32087 lt!1419320)))))

(declare-fun b!4010703 () Bool)

(assert (=> b!4010703 (= e!2487186 e!2487187)))

(declare-fun res!1630219 () Bool)

(assert (=> b!4010703 (=> (not res!1630219) (not e!2487187))))

(assert (=> b!4010703 (= res!1630219 (not ((_ is Nil!42912) lt!1419323)))))

(declare-fun b!4010704 () Bool)

(declare-fun res!1630222 () Bool)

(assert (=> b!4010704 (=> (not res!1630222) (not e!2487187))))

(assert (=> b!4010704 (= res!1630222 (= (head!8517 lt!1419320) (head!8517 lt!1419323)))))

(assert (= (and d!1187311 (not res!1630220)) b!4010703))

(assert (= (and b!4010703 res!1630219) b!4010704))

(assert (= (and b!4010704 res!1630222) b!4010705))

(assert (= (and d!1187311 (not res!1630221)) b!4010706))

(assert (=> b!4010705 m!4595535))

(assert (=> b!4010705 m!4595847))

(assert (=> b!4010705 m!4595535))

(assert (=> b!4010705 m!4595847))

(declare-fun m!4595889 () Bool)

(assert (=> b!4010705 m!4595889))

(assert (=> b!4010706 m!4595617))

(assert (=> b!4010706 m!4594857))

(assert (=> b!4010704 m!4595539))

(assert (=> b!4010704 m!4595853))

(assert (=> b!4010113 d!1187311))

(declare-fun d!1187313 () Bool)

(declare-fun e!2487191 () Bool)

(assert (=> d!1187313 e!2487191))

(declare-fun res!1630225 () Bool)

(assert (=> d!1187313 (=> res!1630225 e!2487191)))

(declare-fun lt!1419587 () Bool)

(assert (=> d!1187313 (= res!1630225 (not lt!1419587))))

(declare-fun e!2487189 () Bool)

(assert (=> d!1187313 (= lt!1419587 e!2487189)))

(declare-fun res!1630224 () Bool)

(assert (=> d!1187313 (=> res!1630224 e!2487189)))

(assert (=> d!1187313 (= res!1630224 ((_ is Nil!42912) lt!1419320))))

(assert (=> d!1187313 (= (isPrefix!3911 lt!1419320 lt!1419333) lt!1419587)))

(declare-fun b!4010709 () Bool)

(declare-fun e!2487190 () Bool)

(assert (=> b!4010709 (= e!2487190 (isPrefix!3911 (tail!6249 lt!1419320) (tail!6249 lt!1419333)))))

(declare-fun b!4010710 () Bool)

(assert (=> b!4010710 (= e!2487191 (>= (size!32087 lt!1419333) (size!32087 lt!1419320)))))

(declare-fun b!4010707 () Bool)

(assert (=> b!4010707 (= e!2487189 e!2487190)))

(declare-fun res!1630223 () Bool)

(assert (=> b!4010707 (=> (not res!1630223) (not e!2487190))))

(assert (=> b!4010707 (= res!1630223 (not ((_ is Nil!42912) lt!1419333)))))

(declare-fun b!4010708 () Bool)

(declare-fun res!1630226 () Bool)

(assert (=> b!4010708 (=> (not res!1630226) (not e!2487190))))

(assert (=> b!4010708 (= res!1630226 (= (head!8517 lt!1419320) (head!8517 lt!1419333)))))

(assert (= (and d!1187313 (not res!1630224)) b!4010707))

(assert (= (and b!4010707 res!1630223) b!4010708))

(assert (= (and b!4010708 res!1630226) b!4010709))

(assert (= (and d!1187313 (not res!1630225)) b!4010710))

(assert (=> b!4010709 m!4595535))

(declare-fun m!4595891 () Bool)

(assert (=> b!4010709 m!4595891))

(assert (=> b!4010709 m!4595535))

(assert (=> b!4010709 m!4595891))

(declare-fun m!4595893 () Bool)

(assert (=> b!4010709 m!4595893))

(declare-fun m!4595895 () Bool)

(assert (=> b!4010710 m!4595895))

(assert (=> b!4010710 m!4594857))

(assert (=> b!4010708 m!4595539))

(declare-fun m!4595897 () Bool)

(assert (=> b!4010708 m!4595897))

(assert (=> b!4010113 d!1187313))

(declare-fun d!1187315 () Bool)

(assert (=> d!1187315 (= (inv!57317 (tag!7684 (rule!9866 token!484))) (= (mod (str.len (value!215117 (tag!7684 (rule!9866 token!484)))) 2) 0))))

(assert (=> b!4010134 d!1187315))

(declare-fun d!1187317 () Bool)

(declare-fun res!1630227 () Bool)

(declare-fun e!2487192 () Bool)

(assert (=> d!1187317 (=> (not res!1630227) (not e!2487192))))

(assert (=> d!1187317 (= res!1630227 (semiInverseModEq!2923 (toChars!9187 (transformation!6824 (rule!9866 token!484))) (toValue!9328 (transformation!6824 (rule!9866 token!484)))))))

(assert (=> d!1187317 (= (inv!57320 (transformation!6824 (rule!9866 token!484))) e!2487192)))

(declare-fun b!4010711 () Bool)

(assert (=> b!4010711 (= e!2487192 (equivClasses!2822 (toChars!9187 (transformation!6824 (rule!9866 token!484))) (toValue!9328 (transformation!6824 (rule!9866 token!484)))))))

(assert (= (and d!1187317 res!1630227) b!4010711))

(assert (=> d!1187317 m!4594989))

(assert (=> b!4010711 m!4594991))

(assert (=> b!4010134 d!1187317))

(declare-fun b!4010740 () Bool)

(declare-fun res!1630245 () Bool)

(declare-fun e!2487212 () Bool)

(assert (=> b!4010740 (=> (not res!1630245) (not e!2487212))))

(assert (=> b!4010740 (= res!1630245 (isEmpty!25639 (tail!6249 lt!1419320)))))

(declare-fun b!4010741 () Bool)

(declare-fun e!2487207 () Bool)

(assert (=> b!4010741 (= e!2487207 (not (= (head!8517 lt!1419320) (c!693433 (regex!6824 (rule!9866 token!484))))))))

(declare-fun d!1187319 () Bool)

(declare-fun e!2487208 () Bool)

(assert (=> d!1187319 e!2487208))

(declare-fun c!693529 () Bool)

(assert (=> d!1187319 (= c!693529 ((_ is EmptyExpr!11729) (regex!6824 (rule!9866 token!484))))))

(declare-fun lt!1419590 () Bool)

(declare-fun e!2487209 () Bool)

(assert (=> d!1187319 (= lt!1419590 e!2487209)))

(declare-fun c!693530 () Bool)

(assert (=> d!1187319 (= c!693530 (isEmpty!25639 lt!1419320))))

(assert (=> d!1187319 (validRegex!5316 (regex!6824 (rule!9866 token!484)))))

(assert (=> d!1187319 (= (matchR!5690 (regex!6824 (rule!9866 token!484)) lt!1419320) lt!1419590)))

(declare-fun b!4010742 () Bool)

(declare-fun e!2487211 () Bool)

(declare-fun e!2487210 () Bool)

(assert (=> b!4010742 (= e!2487211 e!2487210)))

(declare-fun res!1630247 () Bool)

(assert (=> b!4010742 (=> (not res!1630247) (not e!2487210))))

(assert (=> b!4010742 (= res!1630247 (not lt!1419590))))

(declare-fun b!4010743 () Bool)

(assert (=> b!4010743 (= e!2487212 (= (head!8517 lt!1419320) (c!693433 (regex!6824 (rule!9866 token!484)))))))

(declare-fun b!4010744 () Bool)

(declare-fun res!1630250 () Bool)

(assert (=> b!4010744 (=> res!1630250 e!2487211)))

(assert (=> b!4010744 (= res!1630250 e!2487212)))

(declare-fun res!1630246 () Bool)

(assert (=> b!4010744 (=> (not res!1630246) (not e!2487212))))

(assert (=> b!4010744 (= res!1630246 lt!1419590)))

(declare-fun b!4010745 () Bool)

(declare-fun derivativeStep!3525 (Regex!11729 C!23644) Regex!11729)

(assert (=> b!4010745 (= e!2487209 (matchR!5690 (derivativeStep!3525 (regex!6824 (rule!9866 token!484)) (head!8517 lt!1419320)) (tail!6249 lt!1419320)))))

(declare-fun b!4010746 () Bool)

(declare-fun e!2487213 () Bool)

(assert (=> b!4010746 (= e!2487208 e!2487213)))

(declare-fun c!693528 () Bool)

(assert (=> b!4010746 (= c!693528 ((_ is EmptyLang!11729) (regex!6824 (rule!9866 token!484))))))

(declare-fun b!4010747 () Bool)

(declare-fun res!1630244 () Bool)

(assert (=> b!4010747 (=> res!1630244 e!2487211)))

(assert (=> b!4010747 (= res!1630244 (not ((_ is ElementMatch!11729) (regex!6824 (rule!9866 token!484)))))))

(assert (=> b!4010747 (= e!2487213 e!2487211)))

(declare-fun b!4010748 () Bool)

(declare-fun call!286382 () Bool)

(assert (=> b!4010748 (= e!2487208 (= lt!1419590 call!286382))))

(declare-fun b!4010749 () Bool)

(assert (=> b!4010749 (= e!2487213 (not lt!1419590))))

(declare-fun b!4010750 () Bool)

(declare-fun res!1630249 () Bool)

(assert (=> b!4010750 (=> res!1630249 e!2487207)))

(assert (=> b!4010750 (= res!1630249 (not (isEmpty!25639 (tail!6249 lt!1419320))))))

(declare-fun b!4010751 () Bool)

(assert (=> b!4010751 (= e!2487209 (nullable!4116 (regex!6824 (rule!9866 token!484))))))

(declare-fun bm!286377 () Bool)

(assert (=> bm!286377 (= call!286382 (isEmpty!25639 lt!1419320))))

(declare-fun b!4010752 () Bool)

(assert (=> b!4010752 (= e!2487210 e!2487207)))

(declare-fun res!1630251 () Bool)

(assert (=> b!4010752 (=> res!1630251 e!2487207)))

(assert (=> b!4010752 (= res!1630251 call!286382)))

(declare-fun b!4010753 () Bool)

(declare-fun res!1630248 () Bool)

(assert (=> b!4010753 (=> (not res!1630248) (not e!2487212))))

(assert (=> b!4010753 (= res!1630248 (not call!286382))))

(assert (= (and d!1187319 c!693530) b!4010751))

(assert (= (and d!1187319 (not c!693530)) b!4010745))

(assert (= (and d!1187319 c!693529) b!4010748))

(assert (= (and d!1187319 (not c!693529)) b!4010746))

(assert (= (and b!4010746 c!693528) b!4010749))

(assert (= (and b!4010746 (not c!693528)) b!4010747))

(assert (= (and b!4010747 (not res!1630244)) b!4010744))

(assert (= (and b!4010744 res!1630246) b!4010753))

(assert (= (and b!4010753 res!1630248) b!4010740))

(assert (= (and b!4010740 res!1630245) b!4010743))

(assert (= (and b!4010744 (not res!1630250)) b!4010742))

(assert (= (and b!4010742 res!1630247) b!4010752))

(assert (= (and b!4010752 (not res!1630251)) b!4010750))

(assert (= (and b!4010750 (not res!1630249)) b!4010741))

(assert (= (or b!4010748 b!4010752 b!4010753) bm!286377))

(assert (=> b!4010751 m!4595011))

(assert (=> b!4010743 m!4595539))

(assert (=> b!4010741 m!4595539))

(declare-fun m!4595899 () Bool)

(assert (=> d!1187319 m!4595899))

(assert (=> d!1187319 m!4595009))

(assert (=> b!4010750 m!4595535))

(assert (=> b!4010750 m!4595535))

(declare-fun m!4595901 () Bool)

(assert (=> b!4010750 m!4595901))

(assert (=> bm!286377 m!4595899))

(assert (=> b!4010745 m!4595539))

(assert (=> b!4010745 m!4595539))

(declare-fun m!4595903 () Bool)

(assert (=> b!4010745 m!4595903))

(assert (=> b!4010745 m!4595535))

(assert (=> b!4010745 m!4595903))

(assert (=> b!4010745 m!4595535))

(declare-fun m!4595905 () Bool)

(assert (=> b!4010745 m!4595905))

(assert (=> b!4010740 m!4595535))

(assert (=> b!4010740 m!4595535))

(assert (=> b!4010740 m!4595901))

(assert (=> b!4010135 d!1187319))

(declare-fun d!1187321 () Bool)

(declare-fun e!2487216 () Bool)

(assert (=> d!1187321 e!2487216))

(declare-fun res!1630254 () Bool)

(assert (=> d!1187321 (=> res!1630254 e!2487216)))

(declare-fun lt!1419591 () Bool)

(assert (=> d!1187321 (= res!1630254 (not lt!1419591))))

(declare-fun e!2487214 () Bool)

(assert (=> d!1187321 (= lt!1419591 e!2487214)))

(declare-fun res!1630253 () Bool)

(assert (=> d!1187321 (=> res!1630253 e!2487214)))

(assert (=> d!1187321 (= res!1630253 ((_ is Nil!42912) lt!1419320))))

(assert (=> d!1187321 (= (isPrefix!3911 lt!1419320 lt!1419344) lt!1419591)))

(declare-fun b!4010756 () Bool)

(declare-fun e!2487215 () Bool)

(assert (=> b!4010756 (= e!2487215 (isPrefix!3911 (tail!6249 lt!1419320) (tail!6249 lt!1419344)))))

(declare-fun b!4010757 () Bool)

(assert (=> b!4010757 (= e!2487216 (>= (size!32087 lt!1419344) (size!32087 lt!1419320)))))

(declare-fun b!4010754 () Bool)

(assert (=> b!4010754 (= e!2487214 e!2487215)))

(declare-fun res!1630252 () Bool)

(assert (=> b!4010754 (=> (not res!1630252) (not e!2487215))))

(assert (=> b!4010754 (= res!1630252 (not ((_ is Nil!42912) lt!1419344)))))

(declare-fun b!4010755 () Bool)

(declare-fun res!1630255 () Bool)

(assert (=> b!4010755 (=> (not res!1630255) (not e!2487215))))

(assert (=> b!4010755 (= res!1630255 (= (head!8517 lt!1419320) (head!8517 lt!1419344)))))

(assert (= (and d!1187321 (not res!1630253)) b!4010754))

(assert (= (and b!4010754 res!1630252) b!4010755))

(assert (= (and b!4010755 res!1630255) b!4010756))

(assert (= (and d!1187321 (not res!1630254)) b!4010757))

(assert (=> b!4010756 m!4595535))

(declare-fun m!4595907 () Bool)

(assert (=> b!4010756 m!4595907))

(assert (=> b!4010756 m!4595535))

(assert (=> b!4010756 m!4595907))

(declare-fun m!4595909 () Bool)

(assert (=> b!4010756 m!4595909))

(assert (=> b!4010757 m!4595445))

(assert (=> b!4010757 m!4594857))

(assert (=> b!4010755 m!4595539))

(declare-fun m!4595911 () Bool)

(assert (=> b!4010755 m!4595911))

(assert (=> b!4010135 d!1187321))

(declare-fun d!1187323 () Bool)

(assert (=> d!1187323 (isPrefix!3911 lt!1419320 (++!11226 prefix!494 newSuffix!27))))

(declare-fun lt!1419594 () Unit!61931)

(declare-fun choose!24233 (List!43036 List!43036 List!43036) Unit!61931)

(assert (=> d!1187323 (= lt!1419594 (choose!24233 lt!1419320 prefix!494 newSuffix!27))))

(assert (=> d!1187323 (isPrefix!3911 lt!1419320 prefix!494)))

(assert (=> d!1187323 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!724 lt!1419320 prefix!494 newSuffix!27) lt!1419594)))

(declare-fun bs!589350 () Bool)

(assert (= bs!589350 d!1187323))

(assert (=> bs!589350 m!4594887))

(assert (=> bs!589350 m!4594887))

(declare-fun m!4595913 () Bool)

(assert (=> bs!589350 m!4595913))

(declare-fun m!4595915 () Bool)

(assert (=> bs!589350 m!4595915))

(assert (=> bs!589350 m!4594937))

(assert (=> b!4010135 d!1187323))

(declare-fun d!1187325 () Bool)

(assert (=> d!1187325 (isPrefix!3911 lt!1419320 (++!11226 prefix!494 suffix!1299))))

(declare-fun lt!1419595 () Unit!61931)

(assert (=> d!1187325 (= lt!1419595 (choose!24233 lt!1419320 prefix!494 suffix!1299))))

(assert (=> d!1187325 (isPrefix!3911 lt!1419320 prefix!494)))

(assert (=> d!1187325 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!724 lt!1419320 prefix!494 suffix!1299) lt!1419595)))

(declare-fun bs!589351 () Bool)

(assert (= bs!589351 d!1187325))

(assert (=> bs!589351 m!4594831))

(assert (=> bs!589351 m!4594831))

(declare-fun m!4595917 () Bool)

(assert (=> bs!589351 m!4595917))

(declare-fun m!4595919 () Bool)

(assert (=> bs!589351 m!4595919))

(assert (=> bs!589351 m!4594937))

(assert (=> b!4010135 d!1187325))

(declare-fun lt!1419596 () List!43036)

(declare-fun e!2487218 () Bool)

(declare-fun b!4010761 () Bool)

(assert (=> b!4010761 (= e!2487218 (or (not (= lt!1419338 Nil!42912)) (= lt!1419596 lt!1419320)))))

(declare-fun b!4010758 () Bool)

(declare-fun e!2487217 () List!43036)

(assert (=> b!4010758 (= e!2487217 lt!1419338)))

(declare-fun b!4010759 () Bool)

(assert (=> b!4010759 (= e!2487217 (Cons!42912 (h!48332 lt!1419320) (++!11226 (t!332919 lt!1419320) lt!1419338)))))

(declare-fun b!4010760 () Bool)

(declare-fun res!1630257 () Bool)

(assert (=> b!4010760 (=> (not res!1630257) (not e!2487218))))

(assert (=> b!4010760 (= res!1630257 (= (size!32087 lt!1419596) (+ (size!32087 lt!1419320) (size!32087 lt!1419338))))))

(declare-fun d!1187327 () Bool)

(assert (=> d!1187327 e!2487218))

(declare-fun res!1630256 () Bool)

(assert (=> d!1187327 (=> (not res!1630256) (not e!2487218))))

(assert (=> d!1187327 (= res!1630256 (= (content!6510 lt!1419596) ((_ map or) (content!6510 lt!1419320) (content!6510 lt!1419338))))))

(assert (=> d!1187327 (= lt!1419596 e!2487217)))

(declare-fun c!693531 () Bool)

(assert (=> d!1187327 (= c!693531 ((_ is Nil!42912) lt!1419320))))

(assert (=> d!1187327 (= (++!11226 lt!1419320 lt!1419338) lt!1419596)))

(assert (= (and d!1187327 c!693531) b!4010758))

(assert (= (and d!1187327 (not c!693531)) b!4010759))

(assert (= (and d!1187327 res!1630256) b!4010760))

(assert (= (and b!4010760 res!1630257) b!4010761))

(declare-fun m!4595921 () Bool)

(assert (=> b!4010759 m!4595921))

(declare-fun m!4595923 () Bool)

(assert (=> b!4010760 m!4595923))

(assert (=> b!4010760 m!4594857))

(declare-fun m!4595925 () Bool)

(assert (=> b!4010760 m!4595925))

(declare-fun m!4595927 () Bool)

(assert (=> d!1187327 m!4595927))

(assert (=> d!1187327 m!4594977))

(declare-fun m!4595929 () Bool)

(assert (=> d!1187327 m!4595929))

(assert (=> b!4010124 d!1187327))

(declare-fun b!4010765 () Bool)

(declare-fun e!2487220 () Bool)

(declare-fun lt!1419597 () List!43036)

(assert (=> b!4010765 (= e!2487220 (or (not (= suffix!1299 Nil!42912)) (= lt!1419597 lt!1419353)))))

(declare-fun b!4010762 () Bool)

(declare-fun e!2487219 () List!43036)

(assert (=> b!4010762 (= e!2487219 suffix!1299)))

(declare-fun b!4010763 () Bool)

(assert (=> b!4010763 (= e!2487219 (Cons!42912 (h!48332 lt!1419353) (++!11226 (t!332919 lt!1419353) suffix!1299)))))

(declare-fun b!4010764 () Bool)

(declare-fun res!1630259 () Bool)

(assert (=> b!4010764 (=> (not res!1630259) (not e!2487220))))

(assert (=> b!4010764 (= res!1630259 (= (size!32087 lt!1419597) (+ (size!32087 lt!1419353) (size!32087 suffix!1299))))))

(declare-fun d!1187329 () Bool)

(assert (=> d!1187329 e!2487220))

(declare-fun res!1630258 () Bool)

(assert (=> d!1187329 (=> (not res!1630258) (not e!2487220))))

(assert (=> d!1187329 (= res!1630258 (= (content!6510 lt!1419597) ((_ map or) (content!6510 lt!1419353) (content!6510 suffix!1299))))))

(assert (=> d!1187329 (= lt!1419597 e!2487219)))

(declare-fun c!693532 () Bool)

(assert (=> d!1187329 (= c!693532 ((_ is Nil!42912) lt!1419353))))

(assert (=> d!1187329 (= (++!11226 lt!1419353 suffix!1299) lt!1419597)))

(assert (= (and d!1187329 c!693532) b!4010762))

(assert (= (and d!1187329 (not c!693532)) b!4010763))

(assert (= (and d!1187329 res!1630258) b!4010764))

(assert (= (and b!4010764 res!1630259) b!4010765))

(declare-fun m!4595931 () Bool)

(assert (=> b!4010763 m!4595931))

(declare-fun m!4595933 () Bool)

(assert (=> b!4010764 m!4595933))

(declare-fun m!4595935 () Bool)

(assert (=> b!4010764 m!4595935))

(assert (=> b!4010764 m!4594951))

(declare-fun m!4595937 () Bool)

(assert (=> d!1187329 m!4595937))

(declare-fun m!4595939 () Bool)

(assert (=> d!1187329 m!4595939))

(assert (=> d!1187329 m!4595823))

(assert (=> b!4010124 d!1187329))

(declare-fun lt!1419598 () List!43036)

(declare-fun b!4010769 () Bool)

(declare-fun e!2487222 () Bool)

(assert (=> b!4010769 (= e!2487222 (or (not (= suffix!1299 Nil!42912)) (= lt!1419598 lt!1419357)))))

(declare-fun b!4010766 () Bool)

(declare-fun e!2487221 () List!43036)

(assert (=> b!4010766 (= e!2487221 suffix!1299)))

(declare-fun b!4010767 () Bool)

(assert (=> b!4010767 (= e!2487221 (Cons!42912 (h!48332 lt!1419357) (++!11226 (t!332919 lt!1419357) suffix!1299)))))

(declare-fun b!4010768 () Bool)

(declare-fun res!1630261 () Bool)

(assert (=> b!4010768 (=> (not res!1630261) (not e!2487222))))

(assert (=> b!4010768 (= res!1630261 (= (size!32087 lt!1419598) (+ (size!32087 lt!1419357) (size!32087 suffix!1299))))))

(declare-fun d!1187331 () Bool)

(assert (=> d!1187331 e!2487222))

(declare-fun res!1630260 () Bool)

(assert (=> d!1187331 (=> (not res!1630260) (not e!2487222))))

(assert (=> d!1187331 (= res!1630260 (= (content!6510 lt!1419598) ((_ map or) (content!6510 lt!1419357) (content!6510 suffix!1299))))))

(assert (=> d!1187331 (= lt!1419598 e!2487221)))

(declare-fun c!693533 () Bool)

(assert (=> d!1187331 (= c!693533 ((_ is Nil!42912) lt!1419357))))

(assert (=> d!1187331 (= (++!11226 lt!1419357 suffix!1299) lt!1419598)))

(assert (= (and d!1187331 c!693533) b!4010766))

(assert (= (and d!1187331 (not c!693533)) b!4010767))

(assert (= (and d!1187331 res!1630260) b!4010768))

(assert (= (and b!4010768 res!1630261) b!4010769))

(declare-fun m!4595941 () Bool)

(assert (=> b!4010767 m!4595941))

(declare-fun m!4595943 () Bool)

(assert (=> b!4010768 m!4595943))

(assert (=> b!4010768 m!4595523))

(assert (=> b!4010768 m!4594951))

(declare-fun m!4595945 () Bool)

(assert (=> d!1187331 m!4595945))

(assert (=> d!1187331 m!4595527))

(assert (=> d!1187331 m!4595823))

(assert (=> b!4010124 d!1187331))

(declare-fun d!1187333 () Bool)

(assert (=> d!1187333 (= (++!11226 (++!11226 lt!1419320 lt!1419357) suffix!1299) (++!11226 lt!1419320 (++!11226 lt!1419357 suffix!1299)))))

(declare-fun lt!1419601 () Unit!61931)

(declare-fun choose!24234 (List!43036 List!43036 List!43036) Unit!61931)

(assert (=> d!1187333 (= lt!1419601 (choose!24234 lt!1419320 lt!1419357 suffix!1299))))

(assert (=> d!1187333 (= (lemmaConcatAssociativity!2536 lt!1419320 lt!1419357 suffix!1299) lt!1419601)))

(declare-fun bs!589352 () Bool)

(assert (= bs!589352 d!1187333))

(assert (=> bs!589352 m!4594933))

(assert (=> bs!589352 m!4594933))

(declare-fun m!4595947 () Bool)

(assert (=> bs!589352 m!4595947))

(assert (=> bs!589352 m!4594883))

(declare-fun m!4595949 () Bool)

(assert (=> bs!589352 m!4595949))

(declare-fun m!4595951 () Bool)

(assert (=> bs!589352 m!4595951))

(assert (=> bs!589352 m!4594883))

(assert (=> b!4010124 d!1187333))

(declare-fun b!4010774 () Bool)

(declare-fun e!2487225 () Bool)

(declare-fun tp!1220017 () Bool)

(assert (=> b!4010774 (= e!2487225 (and tp_is_empty!20429 tp!1220017))))

(assert (=> b!4010136 (= tp!1219964 e!2487225)))

(assert (= (and b!4010136 ((_ is Cons!42912) (t!332919 suffix!1299))) b!4010774))

(declare-fun b!4010775 () Bool)

(declare-fun e!2487226 () Bool)

(declare-fun tp!1220018 () Bool)

(assert (=> b!4010775 (= e!2487226 (and tp_is_empty!20429 tp!1220018))))

(assert (=> b!4010111 (= tp!1219966 e!2487226)))

(assert (= (and b!4010111 ((_ is Cons!42912) (t!332919 suffixResult!105))) b!4010775))

(declare-fun b!4010776 () Bool)

(declare-fun e!2487227 () Bool)

(declare-fun tp!1220019 () Bool)

(assert (=> b!4010776 (= e!2487227 (and tp_is_empty!20429 tp!1220019))))

(assert (=> b!4010122 (= tp!1219955 e!2487227)))

(assert (= (and b!4010122 ((_ is Cons!42912) (originalCharacters!7424 token!484))) b!4010776))

(declare-fun b!4010777 () Bool)

(declare-fun e!2487228 () Bool)

(declare-fun tp!1220020 () Bool)

(assert (=> b!4010777 (= e!2487228 (and tp_is_empty!20429 tp!1220020))))

(assert (=> b!4010129 (= tp!1219963 e!2487228)))

(assert (= (and b!4010129 ((_ is Cons!42912) (t!332919 prefix!494))) b!4010777))

(declare-fun b!4010778 () Bool)

(declare-fun e!2487229 () Bool)

(declare-fun tp!1220021 () Bool)

(assert (=> b!4010778 (= e!2487229 (and tp_is_empty!20429 tp!1220021))))

(assert (=> b!4010118 (= tp!1219960 e!2487229)))

(assert (= (and b!4010118 ((_ is Cons!42912) (t!332919 newSuffix!27))) b!4010778))

(declare-fun b!4010789 () Bool)

(declare-fun e!2487232 () Bool)

(assert (=> b!4010789 (= e!2487232 tp_is_empty!20429)))

(declare-fun b!4010790 () Bool)

(declare-fun tp!1220032 () Bool)

(declare-fun tp!1220034 () Bool)

(assert (=> b!4010790 (= e!2487232 (and tp!1220032 tp!1220034))))

(assert (=> b!4010134 (= tp!1219962 e!2487232)))

(declare-fun b!4010791 () Bool)

(declare-fun tp!1220035 () Bool)

(assert (=> b!4010791 (= e!2487232 tp!1220035)))

(declare-fun b!4010792 () Bool)

(declare-fun tp!1220036 () Bool)

(declare-fun tp!1220033 () Bool)

(assert (=> b!4010792 (= e!2487232 (and tp!1220036 tp!1220033))))

(assert (= (and b!4010134 ((_ is ElementMatch!11729) (regex!6824 (rule!9866 token!484)))) b!4010789))

(assert (= (and b!4010134 ((_ is Concat!18784) (regex!6824 (rule!9866 token!484)))) b!4010790))

(assert (= (and b!4010134 ((_ is Star!11729) (regex!6824 (rule!9866 token!484)))) b!4010791))

(assert (= (and b!4010134 ((_ is Union!11729) (regex!6824 (rule!9866 token!484)))) b!4010792))

(declare-fun b!4010793 () Bool)

(declare-fun e!2487233 () Bool)

(declare-fun tp!1220037 () Bool)

(assert (=> b!4010793 (= e!2487233 (and tp_is_empty!20429 tp!1220037))))

(assert (=> b!4010109 (= tp!1219954 e!2487233)))

(assert (= (and b!4010109 ((_ is Cons!42912) (t!332919 newSuffixResult!27))) b!4010793))

(declare-fun b!4010804 () Bool)

(declare-fun b_free!111533 () Bool)

(declare-fun b_next!112237 () Bool)

(assert (=> b!4010804 (= b_free!111533 (not b_next!112237))))

(declare-fun tb!241177 () Bool)

(declare-fun t!332964 () Bool)

(assert (=> (and b!4010804 (= (toValue!9328 (transformation!6824 (h!48334 (t!332921 rules!2999)))) (toValue!9328 (transformation!6824 (rule!9866 (_1!24167 (v!39605 lt!1419326)))))) t!332964) tb!241177))

(declare-fun result!292310 () Bool)

(assert (= result!292310 result!292256))

(assert (=> d!1187131 t!332964))

(declare-fun t!332966 () Bool)

(declare-fun tb!241179 () Bool)

(assert (=> (and b!4010804 (= (toValue!9328 (transformation!6824 (h!48334 (t!332921 rules!2999)))) (toValue!9328 (transformation!6824 (rule!9866 token!484)))) t!332966) tb!241179))

(declare-fun result!292312 () Bool)

(assert (= result!292312 result!292282))

(assert (=> d!1187223 t!332966))

(declare-fun tp!1220046 () Bool)

(declare-fun b_and!308107 () Bool)

(assert (=> b!4010804 (= tp!1220046 (and (=> t!332964 result!292310) (=> t!332966 result!292312) b_and!308107))))

(declare-fun b_free!111535 () Bool)

(declare-fun b_next!112239 () Bool)

(assert (=> b!4010804 (= b_free!111535 (not b_next!112239))))

(declare-fun tb!241181 () Bool)

(declare-fun t!332968 () Bool)

(assert (=> (and b!4010804 (= (toChars!9187 (transformation!6824 (h!48334 (t!332921 rules!2999)))) (toChars!9187 (transformation!6824 (rule!9866 (_1!24167 (v!39605 lt!1419326)))))) t!332968) tb!241181))

(declare-fun result!292314 () Bool)

(assert (= result!292314 result!292276))

(assert (=> d!1187197 t!332968))

(declare-fun tb!241183 () Bool)

(declare-fun t!332970 () Bool)

(assert (=> (and b!4010804 (= (toChars!9187 (transformation!6824 (h!48334 (t!332921 rules!2999)))) (toChars!9187 (transformation!6824 (rule!9866 token!484)))) t!332970) tb!241183))

(declare-fun result!292316 () Bool)

(assert (= result!292316 result!292292))

(assert (=> d!1187261 t!332970))

(assert (=> b!4010644 t!332970))

(declare-fun tp!1220049 () Bool)

(declare-fun b_and!308109 () Bool)

(assert (=> b!4010804 (= tp!1220049 (and (=> t!332968 result!292314) (=> t!332970 result!292316) b_and!308109))))

(declare-fun e!2487243 () Bool)

(assert (=> b!4010804 (= e!2487243 (and tp!1220046 tp!1220049))))

(declare-fun b!4010803 () Bool)

(declare-fun tp!1220047 () Bool)

(declare-fun e!2487244 () Bool)

(assert (=> b!4010803 (= e!2487244 (and tp!1220047 (inv!57317 (tag!7684 (h!48334 (t!332921 rules!2999)))) (inv!57320 (transformation!6824 (h!48334 (t!332921 rules!2999)))) e!2487243))))

(declare-fun b!4010802 () Bool)

(declare-fun e!2487242 () Bool)

(declare-fun tp!1220048 () Bool)

(assert (=> b!4010802 (= e!2487242 (and e!2487244 tp!1220048))))

(assert (=> b!4010114 (= tp!1219961 e!2487242)))

(assert (= b!4010803 b!4010804))

(assert (= b!4010802 b!4010803))

(assert (= (and b!4010114 ((_ is Cons!42914) (t!332921 rules!2999))) b!4010802))

(declare-fun m!4595953 () Bool)

(assert (=> b!4010803 m!4595953))

(declare-fun m!4595955 () Bool)

(assert (=> b!4010803 m!4595955))

(declare-fun b!4010805 () Bool)

(declare-fun e!2487246 () Bool)

(assert (=> b!4010805 (= e!2487246 tp_is_empty!20429)))

(declare-fun b!4010806 () Bool)

(declare-fun tp!1220050 () Bool)

(declare-fun tp!1220052 () Bool)

(assert (=> b!4010806 (= e!2487246 (and tp!1220050 tp!1220052))))

(assert (=> b!4010130 (= tp!1219958 e!2487246)))

(declare-fun b!4010807 () Bool)

(declare-fun tp!1220053 () Bool)

(assert (=> b!4010807 (= e!2487246 tp!1220053)))

(declare-fun b!4010808 () Bool)

(declare-fun tp!1220054 () Bool)

(declare-fun tp!1220051 () Bool)

(assert (=> b!4010808 (= e!2487246 (and tp!1220054 tp!1220051))))

(assert (= (and b!4010130 ((_ is ElementMatch!11729) (regex!6824 (h!48334 rules!2999)))) b!4010805))

(assert (= (and b!4010130 ((_ is Concat!18784) (regex!6824 (h!48334 rules!2999)))) b!4010806))

(assert (= (and b!4010130 ((_ is Star!11729) (regex!6824 (h!48334 rules!2999)))) b!4010807))

(assert (= (and b!4010130 ((_ is Union!11729) (regex!6824 (h!48334 rules!2999)))) b!4010808))

(declare-fun b_lambda!117045 () Bool)

(assert (= b_lambda!117043 (or (and b!4010132 b_free!111523) (and b!4010110 b_free!111527 (= (toChars!9187 (transformation!6824 (h!48334 rules!2999))) (toChars!9187 (transformation!6824 (rule!9866 token!484))))) (and b!4010804 b_free!111535 (= (toChars!9187 (transformation!6824 (h!48334 (t!332921 rules!2999)))) (toChars!9187 (transformation!6824 (rule!9866 token!484))))) b_lambda!117045)))

(declare-fun b_lambda!117047 () Bool)

(assert (= b_lambda!117033 (or (and b!4010132 b_free!111521) (and b!4010110 b_free!111525 (= (toValue!9328 (transformation!6824 (h!48334 rules!2999))) (toValue!9328 (transformation!6824 (rule!9866 token!484))))) (and b!4010804 b_free!111533 (= (toValue!9328 (transformation!6824 (h!48334 (t!332921 rules!2999)))) (toValue!9328 (transformation!6824 (rule!9866 token!484))))) b_lambda!117047)))

(declare-fun b_lambda!117049 () Bool)

(assert (= b_lambda!117035 (or (and b!4010132 b_free!111523) (and b!4010110 b_free!111527 (= (toChars!9187 (transformation!6824 (h!48334 rules!2999))) (toChars!9187 (transformation!6824 (rule!9866 token!484))))) (and b!4010804 b_free!111535 (= (toChars!9187 (transformation!6824 (h!48334 (t!332921 rules!2999)))) (toChars!9187 (transformation!6824 (rule!9866 token!484))))) b_lambda!117049)))

(check-sat (not d!1187213) tp_is_empty!20429 (not bm!286377) (not b!4010436) (not b!4010631) (not b!4010522) (not d!1187201) (not bm!286374) (not b!4010302) (not b!4010657) (not b!4010757) (not b_next!112227) (not b!4010645) (not b!4010463) (not b!4010629) (not b!4010505) (not b!4010806) (not b!4010460) (not b!4010518) (not b!4010706) (not b!4010627) (not b!4010589) (not b!4010598) (not b!4010694) (not d!1187293) (not b!4010764) (not b!4010701) (not b!4010624) (not b!4010807) (not d!1187209) (not b!4010458) (not b!4010705) (not b!4010759) (not b_next!112239) (not d!1187133) (not b_next!112237) (not b!4010792) (not d!1187221) (not b!4010790) (not bm!286373) (not b!4010504) (not b!4010673) (not d!1187113) (not b!4010778) (not b!4010664) (not b!4010700) (not d!1187259) (not b!4010588) (not tb!241165) (not b!4010656) (not b!4010599) (not d!1187327) (not d!1187211) (not d!1187137) (not d!1187039) (not b!4010633) (not b!4010447) (not b!4010743) (not b!4010635) (not d!1187031) (not b!4010708) (not b!4010808) (not b!4010775) (not b!4010521) (not tb!241141) (not b_next!112231) (not d!1187249) (not b!4010741) (not b!4010697) (not b!4010517) (not d!1187265) (not b!4010660) (not d!1187231) (not d!1187129) (not b!4010710) (not d!1187287) (not b!4010438) (not b!4010802) (not b!4010688) (not b!4010692) (not b!4010470) (not b!4010653) (not b!4010648) (not b!4010524) (not b!4010686) (not b!4010626) (not b!4010207) (not b!4010573) (not d!1187323) (not b!4010623) (not d!1187333) (not b!4010634) (not b!4010751) (not d!1187261) (not b!4010709) (not d!1187225) (not b_next!112229) (not b!4010791) (not b_next!112225) (not d!1187329) (not b!4010472) (not b!4010711) (not b!4010767) (not b!4010440) (not b!4010763) (not b!4010523) (not b!4010654) (not b!4010151) b_and!308103 (not b!4010303) b_and!308091 (not b!4010519) (not d!1187269) (not d!1187309) (not tb!241157) (not b!4010674) (not b!4010663) (not tb!241161) (not b!4010462) (not d!1187253) (not d!1187331) (not b!4010793) (not b!4010479) (not b!4010768) (not d!1187263) (not b!4010528) (not d!1187279) (not b!4010655) (not d!1187121) (not d!1187283) (not d!1187197) (not b!4010459) b_and!308093 (not b!4010437) (not b_lambda!117047) (not b!4010649) (not d!1187305) (not b!4010650) (not d!1187111) (not b!4010665) (not d!1187251) (not b!4010441) (not d!1187289) (not b!4010506) (not b!4010439) (not b!4010776) (not b!4010628) (not b!4010695) (not d!1187135) (not b!4010760) (not b!4010525) (not d!1187047) (not b!4010501) (not b!4010659) (not b!4010630) (not b_lambda!117045) (not b_lambda!117049) (not b!4010756) (not d!1187317) (not b!4010330) (not b!4010750) (not b!4010668) (not d!1187301) (not b!4010464) (not b!4010670) (not b!4010652) (not b_lambda!117023) (not d!1187051) (not b!4010740) (not d!1187245) (not b!4010526) (not b!4010704) (not b!4010687) (not d!1187227) b_and!308105 (not b!4010774) (not b!4010755) (not b!4010644) (not d!1187059) (not b!4010777) (not b!4010473) (not d!1187325) (not b!4010478) (not d!1187281) (not b!4010594) (not b!4010745) (not b!4010639) (not b!4010435) (not d!1187275) (not b!4010152) (not b!4010702) (not d!1187319) (not d!1187303) (not b!4010637) (not b!4010434) (not d!1187241) (not b!4010527) (not d!1187217) (not b!4010675) (not b!4010576) b_and!308109 (not b!4010188) (not b_lambda!117031) (not b!4010577) b_and!308107 (not d!1187199) (not b!4010446) (not b!4010667) (not d!1187215) (not b!4010803))
(check-sat (not b_next!112227) (not b_next!112231) b_and!308093 b_and!308105 (not b_next!112237) (not b_next!112239) (not b_next!112229) (not b_next!112225) b_and!308103 b_and!308091 b_and!308109 b_and!308107)
