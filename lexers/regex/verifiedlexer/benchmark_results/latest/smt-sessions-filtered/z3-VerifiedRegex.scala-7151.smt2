; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!379612 () Bool)

(assert start!379612)

(declare-fun b!4028880 () Bool)

(declare-fun b_free!112185 () Bool)

(declare-fun b_next!112889 () Bool)

(assert (=> b!4028880 (= b_free!112185 (not b_next!112889))))

(declare-fun tp!1224370 () Bool)

(declare-fun b_and!309575 () Bool)

(assert (=> b!4028880 (= tp!1224370 b_and!309575)))

(declare-fun b_free!112187 () Bool)

(declare-fun b_next!112891 () Bool)

(assert (=> b!4028880 (= b_free!112187 (not b_next!112891))))

(declare-fun tp!1224367 () Bool)

(declare-fun b_and!309577 () Bool)

(assert (=> b!4028880 (= tp!1224367 b_and!309577)))

(declare-fun b!4028882 () Bool)

(declare-fun b_free!112189 () Bool)

(declare-fun b_next!112893 () Bool)

(assert (=> b!4028882 (= b_free!112189 (not b_next!112893))))

(declare-fun tp!1224368 () Bool)

(declare-fun b_and!309579 () Bool)

(assert (=> b!4028882 (= tp!1224368 b_and!309579)))

(declare-fun b_free!112191 () Bool)

(declare-fun b_next!112895 () Bool)

(assert (=> b!4028882 (= b_free!112191 (not b_next!112895))))

(declare-fun tp!1224375 () Bool)

(declare-fun b_and!309581 () Bool)

(assert (=> b!4028882 (= tp!1224375 b_and!309581)))

(declare-fun b!4028857 () Bool)

(declare-fun e!2499464 () Bool)

(declare-fun tp_is_empty!20561 () Bool)

(declare-fun tp!1224369 () Bool)

(assert (=> b!4028857 (= e!2499464 (and tp_is_empty!20561 tp!1224369))))

(declare-fun b!4028858 () Bool)

(declare-fun e!2499476 () Bool)

(declare-fun e!2499471 () Bool)

(assert (=> b!4028858 (= e!2499476 e!2499471)))

(declare-fun res!1639746 () Bool)

(assert (=> b!4028858 (=> (not res!1639746) (not e!2499471))))

(declare-datatypes ((C!23776 0))(
  ( (C!23777 (val!13982 Int)) )
))
(declare-datatypes ((List!43257 0))(
  ( (Nil!43133) (Cons!43133 (h!48553 C!23776) (t!334098 List!43257)) )
))
(declare-fun lt!1431363 () List!43257)

(declare-datatypes ((IArray!26207 0))(
  ( (IArray!26208 (innerList!13161 List!43257)) )
))
(declare-datatypes ((Conc!13101 0))(
  ( (Node!13101 (left!32500 Conc!13101) (right!32830 Conc!13101) (csize!26432 Int) (cheight!13312 Int)) (Leaf!20253 (xs!16407 IArray!26207) (csize!26433 Int)) (Empty!13101) )
))
(declare-datatypes ((BalanceConc!25796 0))(
  ( (BalanceConc!25797 (c!696070 Conc!13101)) )
))
(declare-datatypes ((List!43258 0))(
  ( (Nil!43134) (Cons!43134 (h!48554 (_ BitVec 16)) (t!334099 List!43258)) )
))
(declare-datatypes ((TokenValue!7120 0))(
  ( (FloatLiteralValue!14240 (text!50285 List!43258)) (TokenValueExt!7119 (__x!26457 Int)) (Broken!35600 (value!216973 List!43258)) (Object!7243) (End!7120) (Def!7120) (Underscore!7120) (Match!7120) (Else!7120) (Error!7120) (Case!7120) (If!7120) (Extends!7120) (Abstract!7120) (Class!7120) (Val!7120) (DelimiterValue!14240 (del!7180 List!43258)) (KeywordValue!7126 (value!216974 List!43258)) (CommentValue!14240 (value!216975 List!43258)) (WhitespaceValue!14240 (value!216976 List!43258)) (IndentationValue!7120 (value!216977 List!43258)) (String!49317) (Int32!7120) (Broken!35601 (value!216978 List!43258)) (Boolean!7121) (Unit!62295) (OperatorValue!7123 (op!7180 List!43258)) (IdentifierValue!14240 (value!216979 List!43258)) (IdentifierValue!14241 (value!216980 List!43258)) (WhitespaceValue!14241 (value!216981 List!43258)) (True!14240) (False!14240) (Broken!35602 (value!216982 List!43258)) (Broken!35603 (value!216983 List!43258)) (True!14241) (RightBrace!7120) (RightBracket!7120) (Colon!7120) (Null!7120) (Comma!7120) (LeftBracket!7120) (False!14241) (LeftBrace!7120) (ImaginaryLiteralValue!7120 (text!50286 List!43258)) (StringLiteralValue!21360 (value!216984 List!43258)) (EOFValue!7120 (value!216985 List!43258)) (IdentValue!7120 (value!216986 List!43258)) (DelimiterValue!14241 (value!216987 List!43258)) (DedentValue!7120 (value!216988 List!43258)) (NewLineValue!7120 (value!216989 List!43258)) (IntegerValue!21360 (value!216990 (_ BitVec 32)) (text!50287 List!43258)) (IntegerValue!21361 (value!216991 Int) (text!50288 List!43258)) (Times!7120) (Or!7120) (Equal!7120) (Minus!7120) (Broken!35604 (value!216992 List!43258)) (And!7120) (Div!7120) (LessEqual!7120) (Mod!7120) (Concat!18915) (Not!7120) (Plus!7120) (SpaceValue!7120 (value!216993 List!43258)) (IntegerValue!21362 (value!216994 Int) (text!50289 List!43258)) (StringLiteralValue!21361 (text!50290 List!43258)) (FloatLiteralValue!14241 (text!50291 List!43258)) (BytesLiteralValue!7120 (value!216995 List!43258)) (CommentValue!14241 (value!216996 List!43258)) (StringLiteralValue!21362 (value!216997 List!43258)) (ErrorTokenValue!7120 (msg!7181 List!43258)) )
))
(declare-datatypes ((Regex!11795 0))(
  ( (ElementMatch!11795 (c!696071 C!23776)) (Concat!18916 (regOne!24102 Regex!11795) (regTwo!24102 Regex!11795)) (EmptyExpr!11795) (Star!11795 (reg!12124 Regex!11795)) (EmptyLang!11795) (Union!11795 (regOne!24103 Regex!11795) (regTwo!24103 Regex!11795)) )
))
(declare-datatypes ((String!49318 0))(
  ( (String!49319 (value!216998 String)) )
))
(declare-datatypes ((TokenValueInjection!13668 0))(
  ( (TokenValueInjection!13669 (toValue!9414 Int) (toChars!9273 Int)) )
))
(declare-datatypes ((Rule!13580 0))(
  ( (Rule!13581 (regex!6890 Regex!11795) (tag!7750 String!49318) (isSeparator!6890 Bool) (transformation!6890 TokenValueInjection!13668)) )
))
(declare-datatypes ((Token!12918 0))(
  ( (Token!12919 (value!216999 TokenValue!7120) (rule!9950 Rule!13580) (size!32241 Int) (originalCharacters!7490 List!43257)) )
))
(declare-datatypes ((tuple2!42234 0))(
  ( (tuple2!42235 (_1!24251 Token!12918) (_2!24251 List!43257)) )
))
(declare-datatypes ((Option!9304 0))(
  ( (None!9303) (Some!9303 (v!39691 tuple2!42234)) )
))
(declare-fun lt!1431351 () Option!9304)

(declare-datatypes ((List!43259 0))(
  ( (Nil!43135) (Cons!43135 (h!48555 Rule!13580) (t!334100 List!43259)) )
))
(declare-fun rules!2999 () List!43259)

(declare-datatypes ((LexerInterface!6479 0))(
  ( (LexerInterfaceExt!6476 (__x!26458 Int)) (Lexer!6477) )
))
(declare-fun thiss!21717 () LexerInterface!6479)

(declare-fun maxPrefix!3777 (LexerInterface!6479 List!43259 List!43257) Option!9304)

(assert (=> b!4028858 (= res!1639746 (= (maxPrefix!3777 thiss!21717 rules!2999 lt!1431363) lt!1431351))))

(declare-fun token!484 () Token!12918)

(declare-fun suffixResult!105 () List!43257)

(assert (=> b!4028858 (= lt!1431351 (Some!9303 (tuple2!42235 token!484 suffixResult!105)))))

(declare-fun prefix!494 () List!43257)

(declare-fun suffix!1299 () List!43257)

(declare-fun ++!11292 (List!43257 List!43257) List!43257)

(assert (=> b!4028858 (= lt!1431363 (++!11292 prefix!494 suffix!1299))))

(declare-fun b!4028859 () Bool)

(declare-fun e!2499480 () Bool)

(declare-fun e!2499477 () Bool)

(assert (=> b!4028859 (= e!2499480 e!2499477)))

(declare-fun res!1639748 () Bool)

(assert (=> b!4028859 (=> res!1639748 e!2499477)))

(declare-fun lt!1431360 () Option!9304)

(assert (=> b!4028859 (= res!1639748 (not (= lt!1431360 lt!1431351)))))

(declare-fun lt!1431362 () List!43257)

(declare-fun lt!1431358 () TokenValue!7120)

(declare-fun lt!1431346 () Int)

(assert (=> b!4028859 (= lt!1431360 (Some!9303 (tuple2!42235 (Token!12919 lt!1431358 (rule!9950 token!484) lt!1431346 lt!1431362) suffixResult!105)))))

(declare-fun maxPrefixOneRule!2789 (LexerInterface!6479 Rule!13580 List!43257) Option!9304)

(assert (=> b!4028859 (= lt!1431360 (maxPrefixOneRule!2789 thiss!21717 (rule!9950 token!484) lt!1431363))))

(declare-fun apply!10079 (TokenValueInjection!13668 BalanceConc!25796) TokenValue!7120)

(declare-fun seqFromList!5107 (List!43257) BalanceConc!25796)

(assert (=> b!4028859 (= lt!1431358 (apply!10079 (transformation!6890 (rule!9950 token!484)) (seqFromList!5107 lt!1431362)))))

(declare-datatypes ((Unit!62296 0))(
  ( (Unit!62297) )
))
(declare-fun lt!1431341 () Unit!62296)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1595 (LexerInterface!6479 List!43259 List!43257 List!43257 List!43257 Rule!13580) Unit!62296)

(assert (=> b!4028859 (= lt!1431341 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1595 thiss!21717 rules!2999 lt!1431362 lt!1431363 suffixResult!105 (rule!9950 token!484)))))

(declare-fun lt!1431349 () List!43257)

(assert (=> b!4028859 (= lt!1431349 suffixResult!105)))

(declare-fun lt!1431345 () Unit!62296)

(declare-fun lemmaSamePrefixThenSameSuffix!2138 (List!43257 List!43257 List!43257 List!43257 List!43257) Unit!62296)

(assert (=> b!4028859 (= lt!1431345 (lemmaSamePrefixThenSameSuffix!2138 lt!1431362 lt!1431349 lt!1431362 suffixResult!105 lt!1431363))))

(declare-fun lt!1431343 () List!43257)

(declare-fun isPrefix!3977 (List!43257 List!43257) Bool)

(assert (=> b!4028859 (isPrefix!3977 lt!1431362 lt!1431343)))

(declare-fun lt!1431342 () Unit!62296)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2812 (List!43257 List!43257) Unit!62296)

(assert (=> b!4028859 (= lt!1431342 (lemmaConcatTwoListThenFirstIsPrefix!2812 lt!1431362 lt!1431349))))

(declare-fun b!4028860 () Bool)

(declare-fun e!2499462 () Bool)

(declare-fun tp!1224371 () Bool)

(assert (=> b!4028860 (= e!2499462 (and tp_is_empty!20561 tp!1224371))))

(declare-fun b!4028861 () Bool)

(declare-fun e!2499461 () Bool)

(assert (=> b!4028861 (= e!2499461 (= (value!216999 token!484) lt!1431358))))

(declare-fun b!4028862 () Bool)

(declare-fun e!2499460 () Bool)

(assert (=> b!4028862 (= e!2499471 (not e!2499460))))

(declare-fun res!1639738 () Bool)

(assert (=> b!4028862 (=> res!1639738 e!2499460)))

(declare-fun lt!1431353 () List!43257)

(assert (=> b!4028862 (= res!1639738 (not (= lt!1431353 lt!1431363)))))

(assert (=> b!4028862 (= lt!1431353 (++!11292 lt!1431362 suffixResult!105))))

(declare-fun lt!1431340 () Unit!62296)

(declare-fun lemmaInv!1099 (TokenValueInjection!13668) Unit!62296)

(assert (=> b!4028862 (= lt!1431340 (lemmaInv!1099 (transformation!6890 (rule!9950 token!484))))))

(declare-fun ruleValid!2820 (LexerInterface!6479 Rule!13580) Bool)

(assert (=> b!4028862 (ruleValid!2820 thiss!21717 (rule!9950 token!484))))

(declare-fun lt!1431348 () Unit!62296)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1890 (LexerInterface!6479 Rule!13580 List!43259) Unit!62296)

(assert (=> b!4028862 (= lt!1431348 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1890 thiss!21717 (rule!9950 token!484) rules!2999))))

(declare-fun b!4028863 () Bool)

(declare-fun e!2499481 () Bool)

(declare-fun tp!1224373 () Bool)

(assert (=> b!4028863 (= e!2499481 (and tp_is_empty!20561 tp!1224373))))

(declare-fun b!4028865 () Bool)

(declare-fun e!2499470 () Bool)

(assert (=> b!4028865 (= e!2499477 e!2499470)))

(declare-fun res!1639737 () Bool)

(assert (=> b!4028865 (=> res!1639737 e!2499470)))

(declare-fun matchR!5748 (Regex!11795 List!43257) Bool)

(assert (=> b!4028865 (= res!1639737 (not (matchR!5748 (regex!6890 (rule!9950 token!484)) lt!1431362)))))

(declare-fun lt!1431350 () List!43257)

(assert (=> b!4028865 (isPrefix!3977 lt!1431362 lt!1431350)))

(declare-fun newSuffix!27 () List!43257)

(declare-fun lt!1431354 () Unit!62296)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!770 (List!43257 List!43257 List!43257) Unit!62296)

(assert (=> b!4028865 (= lt!1431354 (lemmaPrefixStaysPrefixWhenAddingToSuffix!770 lt!1431362 prefix!494 newSuffix!27))))

(declare-fun lt!1431359 () Unit!62296)

(assert (=> b!4028865 (= lt!1431359 (lemmaPrefixStaysPrefixWhenAddingToSuffix!770 lt!1431362 prefix!494 suffix!1299))))

(declare-fun b!4028866 () Bool)

(declare-fun res!1639736 () Bool)

(declare-fun e!2499483 () Bool)

(assert (=> b!4028866 (=> (not res!1639736) (not e!2499483))))

(declare-fun rulesInvariant!5822 (LexerInterface!6479 List!43259) Bool)

(assert (=> b!4028866 (= res!1639736 (rulesInvariant!5822 thiss!21717 rules!2999))))

(declare-fun b!4028867 () Bool)

(declare-fun e!2499467 () Bool)

(declare-fun tp!1224364 () Bool)

(declare-fun e!2499465 () Bool)

(declare-fun inv!21 (TokenValue!7120) Bool)

(assert (=> b!4028867 (= e!2499465 (and (inv!21 (value!216999 token!484)) e!2499467 tp!1224364))))

(declare-fun b!4028868 () Bool)

(declare-fun e!2499478 () Bool)

(assert (=> b!4028868 (= e!2499483 e!2499478)))

(declare-fun res!1639739 () Bool)

(assert (=> b!4028868 (=> (not res!1639739) (not e!2499478))))

(declare-fun lt!1431347 () Int)

(assert (=> b!4028868 (= res!1639739 (>= lt!1431347 lt!1431346))))

(declare-fun size!32242 (List!43257) Int)

(assert (=> b!4028868 (= lt!1431346 (size!32242 lt!1431362))))

(assert (=> b!4028868 (= lt!1431347 (size!32242 prefix!494))))

(declare-fun list!16048 (BalanceConc!25796) List!43257)

(declare-fun charsOf!4706 (Token!12918) BalanceConc!25796)

(assert (=> b!4028868 (= lt!1431362 (list!16048 (charsOf!4706 token!484)))))

(declare-fun e!2499472 () Bool)

(declare-fun tp!1224372 () Bool)

(declare-fun b!4028869 () Bool)

(declare-fun inv!57626 (String!49318) Bool)

(declare-fun inv!57629 (TokenValueInjection!13668) Bool)

(assert (=> b!4028869 (= e!2499467 (and tp!1224372 (inv!57626 (tag!7750 (rule!9950 token!484))) (inv!57629 (transformation!6890 (rule!9950 token!484))) e!2499472))))

(declare-fun b!4028870 () Bool)

(assert (=> b!4028870 (= e!2499470 true)))

(assert (=> b!4028870 e!2499461))

(declare-fun res!1639735 () Bool)

(assert (=> b!4028870 (=> (not res!1639735) (not e!2499461))))

(assert (=> b!4028870 (= res!1639735 (isPrefix!3977 lt!1431363 lt!1431363))))

(declare-fun lt!1431361 () Unit!62296)

(declare-fun lemmaIsPrefixRefl!2544 (List!43257 List!43257) Unit!62296)

(assert (=> b!4028870 (= lt!1431361 (lemmaIsPrefixRefl!2544 lt!1431363 lt!1431363))))

(declare-fun b!4028871 () Bool)

(declare-fun res!1639740 () Bool)

(assert (=> b!4028871 (=> (not res!1639740) (not e!2499483))))

(assert (=> b!4028871 (= res!1639740 (isPrefix!3977 newSuffix!27 suffix!1299))))

(declare-fun b!4028872 () Bool)

(declare-fun e!2499469 () Bool)

(declare-fun tp!1224365 () Bool)

(assert (=> b!4028872 (= e!2499469 (and tp_is_empty!20561 tp!1224365))))

(declare-fun b!4028873 () Bool)

(declare-fun e!2499468 () Bool)

(declare-fun e!2499475 () Bool)

(declare-fun tp!1224366 () Bool)

(assert (=> b!4028873 (= e!2499468 (and e!2499475 tp!1224366))))

(declare-fun b!4028874 () Bool)

(declare-fun res!1639747 () Bool)

(assert (=> b!4028874 (=> (not res!1639747) (not e!2499483))))

(declare-fun isEmpty!25751 (List!43259) Bool)

(assert (=> b!4028874 (= res!1639747 (not (isEmpty!25751 rules!2999)))))

(declare-fun tp!1224374 () Bool)

(declare-fun b!4028875 () Bool)

(declare-fun e!2499473 () Bool)

(assert (=> b!4028875 (= e!2499475 (and tp!1224374 (inv!57626 (tag!7750 (h!48555 rules!2999))) (inv!57629 (transformation!6890 (h!48555 rules!2999))) e!2499473))))

(declare-fun b!4028876 () Bool)

(assert (=> b!4028876 (= e!2499478 e!2499476)))

(declare-fun res!1639749 () Bool)

(assert (=> b!4028876 (=> (not res!1639749) (not e!2499476))))

(declare-fun lt!1431339 () List!43257)

(assert (=> b!4028876 (= res!1639749 (= lt!1431339 lt!1431350))))

(assert (=> b!4028876 (= lt!1431350 (++!11292 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43257)

(assert (=> b!4028876 (= lt!1431339 (++!11292 lt!1431362 newSuffixResult!27))))

(declare-fun b!4028877 () Bool)

(declare-fun e!2499479 () Bool)

(assert (=> b!4028877 (= e!2499479 e!2499480)))

(declare-fun res!1639745 () Bool)

(assert (=> b!4028877 (=> res!1639745 e!2499480)))

(declare-fun lt!1431364 () List!43257)

(assert (=> b!4028877 (= res!1639745 (or (not (= lt!1431363 lt!1431364)) (not (= lt!1431363 lt!1431343))))))

(assert (=> b!4028877 (= lt!1431364 lt!1431343)))

(assert (=> b!4028877 (= lt!1431343 (++!11292 lt!1431362 lt!1431349))))

(declare-fun lt!1431357 () List!43257)

(assert (=> b!4028877 (= lt!1431364 (++!11292 lt!1431357 suffix!1299))))

(declare-fun lt!1431344 () List!43257)

(assert (=> b!4028877 (= lt!1431349 (++!11292 lt!1431344 suffix!1299))))

(declare-fun lt!1431355 () Unit!62296)

(declare-fun lemmaConcatAssociativity!2594 (List!43257 List!43257 List!43257) Unit!62296)

(assert (=> b!4028877 (= lt!1431355 (lemmaConcatAssociativity!2594 lt!1431362 lt!1431344 suffix!1299))))

(declare-fun b!4028878 () Bool)

(declare-fun e!2499482 () Bool)

(declare-fun tp!1224376 () Bool)

(assert (=> b!4028878 (= e!2499482 (and tp_is_empty!20561 tp!1224376))))

(declare-fun b!4028879 () Bool)

(declare-fun res!1639743 () Bool)

(assert (=> b!4028879 (=> (not res!1639743) (not e!2499483))))

(assert (=> b!4028879 (= res!1639743 (>= (size!32242 suffix!1299) (size!32242 newSuffix!27)))))

(assert (=> b!4028880 (= e!2499472 (and tp!1224370 tp!1224367))))

(declare-fun b!4028864 () Bool)

(declare-fun e!2499463 () Bool)

(assert (=> b!4028864 (= e!2499460 e!2499463)))

(declare-fun res!1639744 () Bool)

(assert (=> b!4028864 (=> res!1639744 e!2499463)))

(assert (=> b!4028864 (= res!1639744 (not (isPrefix!3977 lt!1431362 lt!1431363)))))

(assert (=> b!4028864 (isPrefix!3977 prefix!494 lt!1431363)))

(declare-fun lt!1431356 () Unit!62296)

(assert (=> b!4028864 (= lt!1431356 (lemmaConcatTwoListThenFirstIsPrefix!2812 prefix!494 suffix!1299))))

(assert (=> b!4028864 (isPrefix!3977 lt!1431362 lt!1431353)))

(declare-fun lt!1431352 () Unit!62296)

(assert (=> b!4028864 (= lt!1431352 (lemmaConcatTwoListThenFirstIsPrefix!2812 lt!1431362 suffixResult!105))))

(declare-fun res!1639741 () Bool)

(assert (=> start!379612 (=> (not res!1639741) (not e!2499483))))

(get-info :version)

(assert (=> start!379612 (= res!1639741 ((_ is Lexer!6477) thiss!21717))))

(assert (=> start!379612 e!2499483))

(assert (=> start!379612 e!2499481))

(declare-fun inv!57630 (Token!12918) Bool)

(assert (=> start!379612 (and (inv!57630 token!484) e!2499465)))

(assert (=> start!379612 e!2499482))

(assert (=> start!379612 e!2499464))

(assert (=> start!379612 e!2499462))

(assert (=> start!379612 true))

(assert (=> start!379612 e!2499468))

(assert (=> start!379612 e!2499469))

(declare-fun b!4028881 () Bool)

(assert (=> b!4028881 (= e!2499463 e!2499479)))

(declare-fun res!1639742 () Bool)

(assert (=> b!4028881 (=> res!1639742 e!2499479)))

(assert (=> b!4028881 (= res!1639742 (not (= lt!1431357 prefix!494)))))

(assert (=> b!4028881 (= lt!1431357 (++!11292 lt!1431362 lt!1431344))))

(declare-fun getSuffix!2394 (List!43257 List!43257) List!43257)

(assert (=> b!4028881 (= lt!1431344 (getSuffix!2394 prefix!494 lt!1431362))))

(assert (=> b!4028881 (isPrefix!3977 lt!1431362 prefix!494)))

(declare-fun lt!1431365 () Unit!62296)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!541 (List!43257 List!43257 List!43257) Unit!62296)

(assert (=> b!4028881 (= lt!1431365 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!541 prefix!494 lt!1431362 lt!1431363))))

(assert (=> b!4028882 (= e!2499473 (and tp!1224368 tp!1224375))))

(assert (= (and start!379612 res!1639741) b!4028874))

(assert (= (and b!4028874 res!1639747) b!4028866))

(assert (= (and b!4028866 res!1639736) b!4028879))

(assert (= (and b!4028879 res!1639743) b!4028871))

(assert (= (and b!4028871 res!1639740) b!4028868))

(assert (= (and b!4028868 res!1639739) b!4028876))

(assert (= (and b!4028876 res!1639749) b!4028858))

(assert (= (and b!4028858 res!1639746) b!4028862))

(assert (= (and b!4028862 (not res!1639738)) b!4028864))

(assert (= (and b!4028864 (not res!1639744)) b!4028881))

(assert (= (and b!4028881 (not res!1639742)) b!4028877))

(assert (= (and b!4028877 (not res!1639745)) b!4028859))

(assert (= (and b!4028859 (not res!1639748)) b!4028865))

(assert (= (and b!4028865 (not res!1639737)) b!4028870))

(assert (= (and b!4028870 res!1639735) b!4028861))

(assert (= (and start!379612 ((_ is Cons!43133) prefix!494)) b!4028863))

(assert (= b!4028869 b!4028880))

(assert (= b!4028867 b!4028869))

(assert (= start!379612 b!4028867))

(assert (= (and start!379612 ((_ is Cons!43133) suffixResult!105)) b!4028878))

(assert (= (and start!379612 ((_ is Cons!43133) suffix!1299)) b!4028857))

(assert (= (and start!379612 ((_ is Cons!43133) newSuffix!27)) b!4028860))

(assert (= b!4028875 b!4028882))

(assert (= b!4028873 b!4028875))

(assert (= (and start!379612 ((_ is Cons!43135) rules!2999)) b!4028873))

(assert (= (and start!379612 ((_ is Cons!43133) newSuffixResult!27)) b!4028872))

(declare-fun m!4620587 () Bool)

(assert (=> b!4028866 m!4620587))

(declare-fun m!4620589 () Bool)

(assert (=> b!4028877 m!4620589))

(declare-fun m!4620591 () Bool)

(assert (=> b!4028877 m!4620591))

(declare-fun m!4620593 () Bool)

(assert (=> b!4028877 m!4620593))

(declare-fun m!4620595 () Bool)

(assert (=> b!4028877 m!4620595))

(declare-fun m!4620597 () Bool)

(assert (=> b!4028871 m!4620597))

(declare-fun m!4620599 () Bool)

(assert (=> b!4028865 m!4620599))

(declare-fun m!4620601 () Bool)

(assert (=> b!4028865 m!4620601))

(declare-fun m!4620603 () Bool)

(assert (=> b!4028865 m!4620603))

(declare-fun m!4620605 () Bool)

(assert (=> b!4028865 m!4620605))

(declare-fun m!4620607 () Bool)

(assert (=> start!379612 m!4620607))

(declare-fun m!4620609 () Bool)

(assert (=> b!4028875 m!4620609))

(declare-fun m!4620611 () Bool)

(assert (=> b!4028875 m!4620611))

(declare-fun m!4620613 () Bool)

(assert (=> b!4028868 m!4620613))

(declare-fun m!4620615 () Bool)

(assert (=> b!4028868 m!4620615))

(declare-fun m!4620617 () Bool)

(assert (=> b!4028868 m!4620617))

(assert (=> b!4028868 m!4620617))

(declare-fun m!4620619 () Bool)

(assert (=> b!4028868 m!4620619))

(declare-fun m!4620621 () Bool)

(assert (=> b!4028869 m!4620621))

(declare-fun m!4620623 () Bool)

(assert (=> b!4028869 m!4620623))

(declare-fun m!4620625 () Bool)

(assert (=> b!4028867 m!4620625))

(declare-fun m!4620627 () Bool)

(assert (=> b!4028879 m!4620627))

(declare-fun m!4620629 () Bool)

(assert (=> b!4028879 m!4620629))

(declare-fun m!4620631 () Bool)

(assert (=> b!4028862 m!4620631))

(declare-fun m!4620633 () Bool)

(assert (=> b!4028862 m!4620633))

(declare-fun m!4620635 () Bool)

(assert (=> b!4028862 m!4620635))

(declare-fun m!4620637 () Bool)

(assert (=> b!4028862 m!4620637))

(declare-fun m!4620639 () Bool)

(assert (=> b!4028870 m!4620639))

(declare-fun m!4620641 () Bool)

(assert (=> b!4028870 m!4620641))

(declare-fun m!4620643 () Bool)

(assert (=> b!4028876 m!4620643))

(declare-fun m!4620645 () Bool)

(assert (=> b!4028876 m!4620645))

(declare-fun m!4620647 () Bool)

(assert (=> b!4028874 m!4620647))

(declare-fun m!4620649 () Bool)

(assert (=> b!4028881 m!4620649))

(declare-fun m!4620651 () Bool)

(assert (=> b!4028881 m!4620651))

(declare-fun m!4620653 () Bool)

(assert (=> b!4028881 m!4620653))

(declare-fun m!4620655 () Bool)

(assert (=> b!4028881 m!4620655))

(declare-fun m!4620657 () Bool)

(assert (=> b!4028858 m!4620657))

(declare-fun m!4620659 () Bool)

(assert (=> b!4028858 m!4620659))

(declare-fun m!4620661 () Bool)

(assert (=> b!4028864 m!4620661))

(declare-fun m!4620663 () Bool)

(assert (=> b!4028864 m!4620663))

(declare-fun m!4620665 () Bool)

(assert (=> b!4028864 m!4620665))

(declare-fun m!4620667 () Bool)

(assert (=> b!4028864 m!4620667))

(declare-fun m!4620669 () Bool)

(assert (=> b!4028864 m!4620669))

(declare-fun m!4620671 () Bool)

(assert (=> b!4028859 m!4620671))

(declare-fun m!4620673 () Bool)

(assert (=> b!4028859 m!4620673))

(declare-fun m!4620675 () Bool)

(assert (=> b!4028859 m!4620675))

(declare-fun m!4620677 () Bool)

(assert (=> b!4028859 m!4620677))

(declare-fun m!4620679 () Bool)

(assert (=> b!4028859 m!4620679))

(declare-fun m!4620681 () Bool)

(assert (=> b!4028859 m!4620681))

(assert (=> b!4028859 m!4620679))

(declare-fun m!4620683 () Bool)

(assert (=> b!4028859 m!4620683))

(check-sat (not b!4028872) tp_is_empty!20561 (not b!4028865) (not b!4028860) (not b!4028869) b_and!309577 (not b!4028863) (not b!4028862) (not b_next!112893) (not start!379612) (not b_next!112895) (not b!4028879) (not b!4028866) (not b!4028859) (not b!4028875) (not b_next!112891) (not b!4028878) (not b!4028864) (not b!4028877) (not b!4028874) (not b!4028873) (not b!4028867) (not b!4028870) (not b!4028881) (not b!4028858) (not b!4028868) b_and!309575 b_and!309581 (not b!4028857) (not b!4028876) (not b!4028871) (not b_next!112889) b_and!309579)
(check-sat b_and!309577 (not b_next!112893) (not b_next!112895) (not b_next!112891) b_and!309575 b_and!309581 (not b_next!112889) b_and!309579)
