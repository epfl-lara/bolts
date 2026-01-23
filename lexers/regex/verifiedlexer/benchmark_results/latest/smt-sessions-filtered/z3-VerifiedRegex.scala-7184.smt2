; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!382448 () Bool)

(assert start!382448)

(declare-fun b!4055892 () Bool)

(declare-fun b_free!112881 () Bool)

(declare-fun b_next!113585 () Bool)

(assert (=> b!4055892 (= b_free!112881 (not b_next!113585))))

(declare-fun tp!1229404 () Bool)

(declare-fun b_and!311875 () Bool)

(assert (=> b!4055892 (= tp!1229404 b_and!311875)))

(declare-fun b_free!112883 () Bool)

(declare-fun b_next!113587 () Bool)

(assert (=> b!4055892 (= b_free!112883 (not b_next!113587))))

(declare-fun tp!1229408 () Bool)

(declare-fun b_and!311877 () Bool)

(assert (=> b!4055892 (= tp!1229408 b_and!311877)))

(declare-fun b!4055919 () Bool)

(declare-fun b_free!112885 () Bool)

(declare-fun b_next!113589 () Bool)

(assert (=> b!4055919 (= b_free!112885 (not b_next!113589))))

(declare-fun tp!1229396 () Bool)

(declare-fun b_and!311879 () Bool)

(assert (=> b!4055919 (= tp!1229396 b_and!311879)))

(declare-fun b_free!112887 () Bool)

(declare-fun b_next!113591 () Bool)

(assert (=> b!4055919 (= b_free!112887 (not b_next!113591))))

(declare-fun tp!1229403 () Bool)

(declare-fun b_and!311881 () Bool)

(assert (=> b!4055919 (= tp!1229403 b_and!311881)))

(declare-fun b!4055875 () Bool)

(declare-fun e!2516876 () Bool)

(declare-fun e!2516872 () Bool)

(assert (=> b!4055875 (= e!2516876 e!2516872)))

(declare-fun res!1653714 () Bool)

(assert (=> b!4055875 (=> res!1653714 e!2516872)))

(declare-datatypes ((C!23908 0))(
  ( (C!23909 (val!14048 Int)) )
))
(declare-datatypes ((List!43481 0))(
  ( (Nil!43357) (Cons!43357 (h!48777 C!23908) (t!336238 List!43481)) )
))
(declare-fun lt!1447918 () List!43481)

(declare-fun lt!1447896 () List!43481)

(declare-fun lt!1447906 () List!43481)

(assert (=> b!4055875 (= res!1653714 (or (not (= lt!1447918 lt!1447896)) (not (= lt!1447918 lt!1447906))))))

(assert (=> b!4055875 (= lt!1447896 lt!1447906)))

(declare-fun lt!1447889 () List!43481)

(declare-fun lt!1447910 () List!43481)

(declare-fun ++!11358 (List!43481 List!43481) List!43481)

(assert (=> b!4055875 (= lt!1447906 (++!11358 lt!1447889 lt!1447910))))

(declare-fun lt!1447886 () List!43481)

(declare-fun suffix!1299 () List!43481)

(assert (=> b!4055875 (= lt!1447896 (++!11358 lt!1447886 suffix!1299))))

(declare-fun lt!1447894 () List!43481)

(assert (=> b!4055875 (= lt!1447910 (++!11358 lt!1447894 suffix!1299))))

(declare-datatypes ((Unit!62712 0))(
  ( (Unit!62713) )
))
(declare-fun lt!1447874 () Unit!62712)

(declare-fun lemmaConcatAssociativity!2660 (List!43481 List!43481 List!43481) Unit!62712)

(assert (=> b!4055875 (= lt!1447874 (lemmaConcatAssociativity!2660 lt!1447889 lt!1447894 suffix!1299))))

(declare-fun b!4055876 () Bool)

(declare-fun e!2516882 () Bool)

(declare-fun e!2516859 () Bool)

(assert (=> b!4055876 (= e!2516882 e!2516859)))

(declare-fun res!1653706 () Bool)

(assert (=> b!4055876 (=> res!1653706 e!2516859)))

(declare-datatypes ((IArray!26339 0))(
  ( (IArray!26340 (innerList!13227 List!43481)) )
))
(declare-datatypes ((Conc!13167 0))(
  ( (Node!13167 (left!32635 Conc!13167) (right!32965 Conc!13167) (csize!26564 Int) (cheight!13378 Int)) (Leaf!20352 (xs!16473 IArray!26339) (csize!26565 Int)) (Empty!13167) )
))
(declare-datatypes ((BalanceConc!25928 0))(
  ( (BalanceConc!25929 (c!700484 Conc!13167)) )
))
(declare-datatypes ((List!43482 0))(
  ( (Nil!43358) (Cons!43358 (h!48778 (_ BitVec 16)) (t!336239 List!43482)) )
))
(declare-datatypes ((TokenValue!7186 0))(
  ( (FloatLiteralValue!14372 (text!50747 List!43482)) (TokenValueExt!7185 (__x!26589 Int)) (Broken!35930 (value!218854 List!43482)) (Object!7309) (End!7186) (Def!7186) (Underscore!7186) (Match!7186) (Else!7186) (Error!7186) (Case!7186) (If!7186) (Extends!7186) (Abstract!7186) (Class!7186) (Val!7186) (DelimiterValue!14372 (del!7246 List!43482)) (KeywordValue!7192 (value!218855 List!43482)) (CommentValue!14372 (value!218856 List!43482)) (WhitespaceValue!14372 (value!218857 List!43482)) (IndentationValue!7186 (value!218858 List!43482)) (String!49647) (Int32!7186) (Broken!35931 (value!218859 List!43482)) (Boolean!7187) (Unit!62714) (OperatorValue!7189 (op!7246 List!43482)) (IdentifierValue!14372 (value!218860 List!43482)) (IdentifierValue!14373 (value!218861 List!43482)) (WhitespaceValue!14373 (value!218862 List!43482)) (True!14372) (False!14372) (Broken!35932 (value!218863 List!43482)) (Broken!35933 (value!218864 List!43482)) (True!14373) (RightBrace!7186) (RightBracket!7186) (Colon!7186) (Null!7186) (Comma!7186) (LeftBracket!7186) (False!14373) (LeftBrace!7186) (ImaginaryLiteralValue!7186 (text!50748 List!43482)) (StringLiteralValue!21558 (value!218865 List!43482)) (EOFValue!7186 (value!218866 List!43482)) (IdentValue!7186 (value!218867 List!43482)) (DelimiterValue!14373 (value!218868 List!43482)) (DedentValue!7186 (value!218869 List!43482)) (NewLineValue!7186 (value!218870 List!43482)) (IntegerValue!21558 (value!218871 (_ BitVec 32)) (text!50749 List!43482)) (IntegerValue!21559 (value!218872 Int) (text!50750 List!43482)) (Times!7186) (Or!7186) (Equal!7186) (Minus!7186) (Broken!35934 (value!218873 List!43482)) (And!7186) (Div!7186) (LessEqual!7186) (Mod!7186) (Concat!19047) (Not!7186) (Plus!7186) (SpaceValue!7186 (value!218874 List!43482)) (IntegerValue!21560 (value!218875 Int) (text!50751 List!43482)) (StringLiteralValue!21559 (text!50752 List!43482)) (FloatLiteralValue!14373 (text!50753 List!43482)) (BytesLiteralValue!7186 (value!218876 List!43482)) (CommentValue!14373 (value!218877 List!43482)) (StringLiteralValue!21560 (value!218878 List!43482)) (ErrorTokenValue!7186 (msg!7247 List!43482)) )
))
(declare-datatypes ((Regex!11861 0))(
  ( (ElementMatch!11861 (c!700485 C!23908)) (Concat!19048 (regOne!24234 Regex!11861) (regTwo!24234 Regex!11861)) (EmptyExpr!11861) (Star!11861 (reg!12190 Regex!11861)) (EmptyLang!11861) (Union!11861 (regOne!24235 Regex!11861) (regTwo!24235 Regex!11861)) )
))
(declare-datatypes ((String!49648 0))(
  ( (String!49649 (value!218879 String)) )
))
(declare-datatypes ((TokenValueInjection!13800 0))(
  ( (TokenValueInjection!13801 (toValue!9512 Int) (toChars!9371 Int)) )
))
(declare-datatypes ((Rule!13712 0))(
  ( (Rule!13713 (regex!6956 Regex!11861) (tag!7816 String!49648) (isSeparator!6956 Bool) (transformation!6956 TokenValueInjection!13800)) )
))
(declare-datatypes ((Token!13050 0))(
  ( (Token!13051 (value!218880 TokenValue!7186) (rule!10042 Rule!13712) (size!32415 Int) (originalCharacters!7556 List!43481)) )
))
(declare-datatypes ((tuple2!42418 0))(
  ( (tuple2!42419 (_1!24343 Token!13050) (_2!24343 List!43481)) )
))
(declare-datatypes ((Option!9370 0))(
  ( (None!9369) (Some!9369 (v!39783 tuple2!42418)) )
))
(declare-fun lt!1447926 () Option!9370)

(get-info :version)

(assert (=> b!4055876 (= res!1653706 (not ((_ is Some!9369) lt!1447926)))))

(declare-datatypes ((LexerInterface!6545 0))(
  ( (LexerInterfaceExt!6542 (__x!26590 Int)) (Lexer!6543) )
))
(declare-fun thiss!21717 () LexerInterface!6545)

(declare-datatypes ((List!43483 0))(
  ( (Nil!43359) (Cons!43359 (h!48779 Rule!13712) (t!336240 List!43483)) )
))
(declare-fun rules!2999 () List!43483)

(declare-fun lt!1447925 () List!43481)

(declare-fun maxPrefix!3843 (LexerInterface!6545 List!43483 List!43481) Option!9370)

(assert (=> b!4055876 (= lt!1447926 (maxPrefix!3843 thiss!21717 rules!2999 lt!1447925))))

(declare-fun suffixResult!105 () List!43481)

(declare-fun lt!1447892 () List!43481)

(declare-fun lt!1447882 () Token!13050)

(declare-fun lt!1447902 () tuple2!42418)

(assert (=> b!4055876 (and (= suffixResult!105 lt!1447892) (= lt!1447902 (tuple2!42419 lt!1447882 lt!1447892)))))

(declare-fun lt!1447895 () Unit!62712)

(declare-fun lemmaSamePrefixThenSameSuffix!2204 (List!43481 List!43481 List!43481 List!43481 List!43481) Unit!62712)

(assert (=> b!4055876 (= lt!1447895 (lemmaSamePrefixThenSameSuffix!2204 lt!1447889 suffixResult!105 lt!1447889 lt!1447892 lt!1447918))))

(declare-fun lt!1447888 () List!43481)

(declare-fun isPrefix!4043 (List!43481 List!43481) Bool)

(assert (=> b!4055876 (isPrefix!4043 lt!1447889 lt!1447888)))

(declare-fun lt!1447885 () Unit!62712)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2878 (List!43481 List!43481) Unit!62712)

(assert (=> b!4055876 (= lt!1447885 (lemmaConcatTwoListThenFirstIsPrefix!2878 lt!1447889 lt!1447892))))

(declare-fun b!4055877 () Bool)

(declare-fun e!2516860 () Bool)

(declare-fun tp_is_empty!20693 () Bool)

(declare-fun tp!1229399 () Bool)

(assert (=> b!4055877 (= e!2516860 (and tp_is_empty!20693 tp!1229399))))

(declare-fun b!4055878 () Bool)

(declare-fun res!1653720 () Bool)

(declare-fun e!2516871 () Bool)

(assert (=> b!4055878 (=> (not res!1653720) (not e!2516871))))

(declare-fun newSuffix!27 () List!43481)

(assert (=> b!4055878 (= res!1653720 (isPrefix!4043 newSuffix!27 suffix!1299))))

(declare-fun token!484 () Token!13050)

(declare-fun lt!1447875 () Int)

(declare-fun e!2516863 () Bool)

(declare-fun b!4055879 () Bool)

(assert (=> b!4055879 (= e!2516863 (and (= (size!32415 token!484) lt!1447875) (= (originalCharacters!7556 token!484) lt!1447889)))))

(declare-fun e!2516861 () Bool)

(declare-fun b!4055880 () Bool)

(declare-fun e!2516884 () Bool)

(declare-fun tp!1229402 () Bool)

(declare-fun inv!57956 (String!49648) Bool)

(declare-fun inv!57959 (TokenValueInjection!13800) Bool)

(assert (=> b!4055880 (= e!2516884 (and tp!1229402 (inv!57956 (tag!7816 (rule!10042 token!484))) (inv!57959 (transformation!6956 (rule!10042 token!484))) e!2516861))))

(declare-fun e!2516856 () Bool)

(declare-fun b!4055881 () Bool)

(declare-fun e!2516890 () Bool)

(declare-fun tp!1229401 () Bool)

(assert (=> b!4055881 (= e!2516856 (and tp!1229401 (inv!57956 (tag!7816 (h!48779 rules!2999))) (inv!57959 (transformation!6956 (h!48779 rules!2999))) e!2516890))))

(declare-fun b!4055882 () Bool)

(declare-fun e!2516868 () Bool)

(declare-fun tp!1229405 () Bool)

(assert (=> b!4055882 (= e!2516868 (and tp_is_empty!20693 tp!1229405))))

(declare-fun b!4055883 () Bool)

(declare-fun e!2516886 () Bool)

(assert (=> b!4055883 (= e!2516886 e!2516882)))

(declare-fun res!1653717 () Bool)

(assert (=> b!4055883 (=> res!1653717 e!2516882)))

(assert (=> b!4055883 (= res!1653717 (not (= lt!1447888 lt!1447918)))))

(assert (=> b!4055883 (= lt!1447888 (++!11358 lt!1447889 lt!1447892))))

(declare-fun getSuffix!2460 (List!43481 List!43481) List!43481)

(assert (=> b!4055883 (= lt!1447892 (getSuffix!2460 lt!1447918 lt!1447889))))

(assert (=> b!4055883 e!2516863))

(declare-fun res!1653724 () Bool)

(assert (=> b!4055883 (=> (not res!1653724) (not e!2516863))))

(assert (=> b!4055883 (= res!1653724 (isPrefix!4043 lt!1447918 lt!1447918))))

(declare-fun lt!1447899 () Unit!62712)

(declare-fun lemmaIsPrefixRefl!2610 (List!43481 List!43481) Unit!62712)

(assert (=> b!4055883 (= lt!1447899 (lemmaIsPrefixRefl!2610 lt!1447918 lt!1447918))))

(declare-fun b!4055884 () Bool)

(declare-fun res!1653713 () Bool)

(declare-fun e!2516885 () Bool)

(assert (=> b!4055884 (=> res!1653713 e!2516885)))

(declare-fun lt!1447907 () List!43481)

(assert (=> b!4055884 (= res!1653713 (not (isPrefix!4043 lt!1447907 lt!1447925)))))

(declare-fun b!4055885 () Bool)

(declare-fun e!2516858 () Bool)

(assert (=> b!4055885 (= e!2516858 e!2516885)))

(declare-fun res!1653715 () Bool)

(assert (=> b!4055885 (=> res!1653715 e!2516885)))

(declare-fun lt!1447917 () Int)

(assert (=> b!4055885 (= res!1653715 (not (= lt!1447875 lt!1447917)))))

(declare-fun lt!1447933 () Unit!62712)

(declare-fun e!2516892 () Unit!62712)

(assert (=> b!4055885 (= lt!1447933 e!2516892)))

(declare-fun c!700482 () Bool)

(assert (=> b!4055885 (= c!700482 (< lt!1447917 lt!1447875))))

(declare-fun lt!1447891 () Unit!62712)

(declare-fun e!2516888 () Unit!62712)

(assert (=> b!4055885 (= lt!1447891 e!2516888)))

(declare-fun c!700483 () Bool)

(assert (=> b!4055885 (= c!700483 (> lt!1447917 lt!1447875))))

(declare-fun lt!1447880 () List!43481)

(assert (=> b!4055885 (= (_2!24343 (v!39783 lt!1447926)) lt!1447880)))

(declare-fun lt!1447884 () Unit!62712)

(assert (=> b!4055885 (= lt!1447884 (lemmaSamePrefixThenSameSuffix!2204 lt!1447907 (_2!24343 (v!39783 lt!1447926)) lt!1447907 lt!1447880 lt!1447925))))

(declare-fun lt!1447900 () List!43481)

(assert (=> b!4055885 (isPrefix!4043 lt!1447907 lt!1447900)))

(declare-fun lt!1447903 () Unit!62712)

(assert (=> b!4055885 (= lt!1447903 (lemmaConcatTwoListThenFirstIsPrefix!2878 lt!1447907 lt!1447880))))

(declare-fun b!4055886 () Bool)

(declare-fun e!2516878 () Bool)

(declare-fun e!2516880 () Bool)

(assert (=> b!4055886 (= e!2516878 (not e!2516880))))

(declare-fun res!1653726 () Bool)

(assert (=> b!4055886 (=> res!1653726 e!2516880)))

(declare-fun lt!1447905 () List!43481)

(assert (=> b!4055886 (= res!1653726 (not (= lt!1447905 lt!1447918)))))

(assert (=> b!4055886 (= lt!1447905 (++!11358 lt!1447889 suffixResult!105))))

(declare-fun lt!1447881 () Unit!62712)

(declare-fun lemmaInv!1165 (TokenValueInjection!13800) Unit!62712)

(assert (=> b!4055886 (= lt!1447881 (lemmaInv!1165 (transformation!6956 (rule!10042 token!484))))))

(declare-fun ruleValid!2886 (LexerInterface!6545 Rule!13712) Bool)

(assert (=> b!4055886 (ruleValid!2886 thiss!21717 (rule!10042 token!484))))

(declare-fun lt!1447872 () Unit!62712)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1956 (LexerInterface!6545 Rule!13712 List!43483) Unit!62712)

(assert (=> b!4055886 (= lt!1447872 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1956 thiss!21717 (rule!10042 token!484) rules!2999))))

(declare-fun b!4055887 () Bool)

(declare-fun res!1653727 () Bool)

(declare-fun e!2516889 () Bool)

(assert (=> b!4055887 (=> res!1653727 e!2516889)))

(declare-fun contains!8624 (List!43483 Rule!13712) Bool)

(assert (=> b!4055887 (= res!1653727 (not (contains!8624 rules!2999 (rule!10042 token!484))))))

(declare-fun b!4055888 () Bool)

(declare-fun e!2516869 () Bool)

(assert (=> b!4055888 (= e!2516869 e!2516878)))

(declare-fun res!1653711 () Bool)

(assert (=> b!4055888 (=> (not res!1653711) (not e!2516878))))

(declare-fun lt!1447901 () Option!9370)

(declare-fun lt!1447879 () Option!9370)

(assert (=> b!4055888 (= res!1653711 (= lt!1447901 lt!1447879))))

(assert (=> b!4055888 (= lt!1447879 (Some!9369 lt!1447902))))

(assert (=> b!4055888 (= lt!1447901 (maxPrefix!3843 thiss!21717 rules!2999 lt!1447918))))

(assert (=> b!4055888 (= lt!1447902 (tuple2!42419 token!484 suffixResult!105))))

(declare-fun prefix!494 () List!43481)

(assert (=> b!4055888 (= lt!1447918 (++!11358 prefix!494 suffix!1299))))

(declare-fun b!4055889 () Bool)

(assert (=> b!4055889 (= e!2516885 e!2516889)))

(declare-fun res!1653723 () Bool)

(assert (=> b!4055889 (=> res!1653723 e!2516889)))

(declare-fun getIndex!568 (List!43483 Rule!13712) Int)

(assert (=> b!4055889 (= res!1653723 (>= (getIndex!568 rules!2999 (rule!10042 (_1!24343 (v!39783 lt!1447926)))) (getIndex!568 rules!2999 (rule!10042 token!484))))))

(declare-fun newSuffixResult!27 () List!43481)

(assert (=> b!4055889 (= (_2!24343 (v!39783 lt!1447926)) newSuffixResult!27)))

(declare-fun lt!1447897 () Unit!62712)

(assert (=> b!4055889 (= lt!1447897 (lemmaSamePrefixThenSameSuffix!2204 lt!1447907 (_2!24343 (v!39783 lt!1447926)) lt!1447889 newSuffixResult!27 lt!1447925))))

(assert (=> b!4055889 (= lt!1447907 lt!1447889)))

(declare-fun lt!1447909 () Unit!62712)

(declare-fun lemmaIsPrefixSameLengthThenSameList!933 (List!43481 List!43481 List!43481) Unit!62712)

(assert (=> b!4055889 (= lt!1447909 (lemmaIsPrefixSameLengthThenSameList!933 lt!1447907 lt!1447889 lt!1447925))))

(declare-fun b!4055890 () Bool)

(declare-fun e!2516857 () Bool)

(assert (=> b!4055890 (= e!2516872 e!2516857)))

(declare-fun res!1653718 () Bool)

(assert (=> b!4055890 (=> res!1653718 e!2516857)))

(declare-fun lt!1447908 () Option!9370)

(assert (=> b!4055890 (= res!1653718 (not (= lt!1447908 lt!1447879)))))

(assert (=> b!4055890 (= lt!1447908 (Some!9369 (tuple2!42419 lt!1447882 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2855 (LexerInterface!6545 Rule!13712 List!43481) Option!9370)

(assert (=> b!4055890 (= lt!1447908 (maxPrefixOneRule!2855 thiss!21717 (rule!10042 token!484) lt!1447918))))

(declare-fun lt!1447873 () TokenValue!7186)

(assert (=> b!4055890 (= lt!1447882 (Token!13051 lt!1447873 (rule!10042 token!484) lt!1447875 lt!1447889))))

(declare-fun apply!10145 (TokenValueInjection!13800 BalanceConc!25928) TokenValue!7186)

(declare-fun seqFromList!5173 (List!43481) BalanceConc!25928)

(assert (=> b!4055890 (= lt!1447873 (apply!10145 (transformation!6956 (rule!10042 token!484)) (seqFromList!5173 lt!1447889)))))

(declare-fun lt!1447914 () Unit!62712)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1661 (LexerInterface!6545 List!43483 List!43481 List!43481 List!43481 Rule!13712) Unit!62712)

(assert (=> b!4055890 (= lt!1447914 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1661 thiss!21717 rules!2999 lt!1447889 lt!1447918 suffixResult!105 (rule!10042 token!484)))))

(assert (=> b!4055890 (= lt!1447910 suffixResult!105)))

(declare-fun lt!1447887 () Unit!62712)

(assert (=> b!4055890 (= lt!1447887 (lemmaSamePrefixThenSameSuffix!2204 lt!1447889 lt!1447910 lt!1447889 suffixResult!105 lt!1447918))))

(assert (=> b!4055890 (isPrefix!4043 lt!1447889 lt!1447906)))

(declare-fun lt!1447924 () Unit!62712)

(assert (=> b!4055890 (= lt!1447924 (lemmaConcatTwoListThenFirstIsPrefix!2878 lt!1447889 lt!1447910))))

(declare-fun b!4055891 () Bool)

(declare-fun e!2516867 () Bool)

(declare-fun tp!1229406 () Bool)

(assert (=> b!4055891 (= e!2516867 (and tp_is_empty!20693 tp!1229406))))

(assert (=> b!4055892 (= e!2516890 (and tp!1229404 tp!1229408))))

(declare-fun b!4055893 () Bool)

(declare-fun e!2516887 () Bool)

(declare-fun tp!1229400 () Bool)

(assert (=> b!4055893 (= e!2516887 (and tp_is_empty!20693 tp!1229400))))

(declare-fun res!1653709 () Bool)

(assert (=> start!382448 (=> (not res!1653709) (not e!2516871))))

(assert (=> start!382448 (= res!1653709 ((_ is Lexer!6543) thiss!21717))))

(assert (=> start!382448 e!2516871))

(assert (=> start!382448 e!2516887))

(declare-fun e!2516891 () Bool)

(declare-fun inv!57960 (Token!13050) Bool)

(assert (=> start!382448 (and (inv!57960 token!484) e!2516891)))

(assert (=> start!382448 e!2516860))

(assert (=> start!382448 e!2516867))

(declare-fun e!2516870 () Bool)

(assert (=> start!382448 e!2516870))

(assert (=> start!382448 true))

(declare-fun e!2516875 () Bool)

(assert (=> start!382448 e!2516875))

(assert (=> start!382448 e!2516868))

(declare-fun b!4055894 () Bool)

(declare-fun e!2516864 () Bool)

(declare-fun e!2516881 () Bool)

(assert (=> b!4055894 (= e!2516864 e!2516881)))

(declare-fun res!1653708 () Bool)

(assert (=> b!4055894 (=> res!1653708 e!2516881)))

(assert (=> b!4055894 (= res!1653708 (not (isPrefix!4043 lt!1447907 lt!1447918)))))

(declare-fun lt!1447912 () List!43481)

(assert (=> b!4055894 (isPrefix!4043 lt!1447907 lt!1447912)))

(declare-fun lt!1447911 () List!43481)

(declare-fun lt!1447878 () Unit!62712)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!836 (List!43481 List!43481 List!43481) Unit!62712)

(assert (=> b!4055894 (= lt!1447878 (lemmaPrefixStaysPrefixWhenAddingToSuffix!836 lt!1447907 lt!1447925 lt!1447911))))

(declare-fun b!4055895 () Bool)

(declare-fun res!1653721 () Bool)

(assert (=> b!4055895 (=> (not res!1653721) (not e!2516871))))

(declare-fun size!32416 (List!43481) Int)

(assert (=> b!4055895 (= res!1653721 (>= (size!32416 suffix!1299) (size!32416 newSuffix!27)))))

(declare-fun b!4055896 () Bool)

(declare-fun res!1653725 () Bool)

(assert (=> b!4055896 (=> (not res!1653725) (not e!2516871))))

(declare-fun isEmpty!25869 (List!43483) Bool)

(assert (=> b!4055896 (= res!1653725 (not (isEmpty!25869 rules!2999)))))

(declare-fun b!4055897 () Bool)

(declare-fun Unit!62715 () Unit!62712)

(assert (=> b!4055897 (= e!2516892 Unit!62715)))

(declare-fun lt!1447876 () Unit!62712)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!482 (LexerInterface!6545 List!43483 Rule!13712 List!43481 List!43481 List!43481 Rule!13712) Unit!62712)

(assert (=> b!4055897 (= lt!1447876 (lemmaMaxPrefixOutputsMaxPrefix!482 thiss!21717 rules!2999 (rule!10042 (_1!24343 (v!39783 lt!1447926))) lt!1447907 lt!1447925 lt!1447889 (rule!10042 token!484)))))

(assert (=> b!4055897 false))

(declare-fun b!4055898 () Bool)

(assert (=> b!4055898 (= e!2516881 e!2516858)))

(declare-fun res!1653731 () Bool)

(assert (=> b!4055898 (=> res!1653731 e!2516858)))

(assert (=> b!4055898 (= res!1653731 (not (= lt!1447900 lt!1447925)))))

(assert (=> b!4055898 (= lt!1447900 (++!11358 lt!1447907 lt!1447880))))

(assert (=> b!4055898 (= lt!1447880 (getSuffix!2460 lt!1447925 lt!1447907))))

(declare-fun b!4055899 () Bool)

(declare-fun e!2516883 () Bool)

(assert (=> b!4055899 (= e!2516883 e!2516876)))

(declare-fun res!1653704 () Bool)

(assert (=> b!4055899 (=> res!1653704 e!2516876)))

(assert (=> b!4055899 (= res!1653704 (not (= lt!1447886 prefix!494)))))

(assert (=> b!4055899 (= lt!1447886 (++!11358 lt!1447889 lt!1447894))))

(assert (=> b!4055899 (= lt!1447894 (getSuffix!2460 prefix!494 lt!1447889))))

(assert (=> b!4055899 (isPrefix!4043 lt!1447889 prefix!494)))

(declare-fun lt!1447920 () Unit!62712)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!607 (List!43481 List!43481 List!43481) Unit!62712)

(assert (=> b!4055899 (= lt!1447920 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!607 prefix!494 lt!1447889 lt!1447918))))

(declare-fun b!4055900 () Bool)

(declare-fun e!2516873 () Bool)

(declare-fun e!2516866 () Bool)

(assert (=> b!4055900 (= e!2516873 e!2516866)))

(declare-fun res!1653716 () Bool)

(assert (=> b!4055900 (=> res!1653716 e!2516866)))

(declare-fun lt!1447922 () List!43481)

(assert (=> b!4055900 (= res!1653716 (not (= lt!1447922 suffix!1299)))))

(assert (=> b!4055900 (= lt!1447922 (++!11358 newSuffix!27 lt!1447911))))

(assert (=> b!4055900 (= lt!1447911 (getSuffix!2460 suffix!1299 newSuffix!27))))

(declare-fun b!4055901 () Bool)

(assert (=> b!4055901 (= e!2516889 (contains!8624 rules!2999 (rule!10042 (_1!24343 (v!39783 lt!1447926)))))))

(declare-fun b!4055902 () Bool)

(declare-fun res!1653705 () Bool)

(assert (=> b!4055902 (=> (not res!1653705) (not e!2516863))))

(assert (=> b!4055902 (= res!1653705 (= (size!32415 token!484) (size!32416 (originalCharacters!7556 token!484))))))

(declare-fun b!4055903 () Bool)

(declare-fun Unit!62716 () Unit!62712)

(assert (=> b!4055903 (= e!2516892 Unit!62716)))

(declare-fun b!4055904 () Bool)

(declare-fun res!1653729 () Bool)

(assert (=> b!4055904 (=> (not res!1653729) (not e!2516871))))

(declare-fun rulesInvariant!5888 (LexerInterface!6545 List!43483) Bool)

(assert (=> b!4055904 (= res!1653729 (rulesInvariant!5888 thiss!21717 rules!2999))))

(declare-fun b!4055905 () Bool)

(declare-fun res!1653707 () Bool)

(assert (=> b!4055905 (=> res!1653707 e!2516881)))

(declare-fun lt!1447877 () List!43481)

(assert (=> b!4055905 (= res!1653707 (not (= lt!1447877 lt!1447925)))))

(declare-fun b!4055906 () Bool)

(assert (=> b!4055906 (= e!2516857 e!2516886)))

(declare-fun res!1653730 () Bool)

(assert (=> b!4055906 (=> res!1653730 e!2516886)))

(declare-fun matchR!5814 (Regex!11861 List!43481) Bool)

(assert (=> b!4055906 (= res!1653730 (not (matchR!5814 (regex!6956 (rule!10042 token!484)) lt!1447889)))))

(assert (=> b!4055906 (isPrefix!4043 lt!1447889 lt!1447925)))

(declare-fun lt!1447916 () Unit!62712)

(assert (=> b!4055906 (= lt!1447916 (lemmaPrefixStaysPrefixWhenAddingToSuffix!836 lt!1447889 prefix!494 newSuffix!27))))

(declare-fun lt!1447893 () Unit!62712)

(assert (=> b!4055906 (= lt!1447893 (lemmaPrefixStaysPrefixWhenAddingToSuffix!836 lt!1447889 prefix!494 suffix!1299))))

(declare-fun b!4055907 () Bool)

(assert (=> b!4055907 (= e!2516859 e!2516873)))

(declare-fun res!1653722 () Bool)

(assert (=> b!4055907 (=> res!1653722 e!2516873)))

(declare-fun lt!1447923 () Option!9370)

(assert (=> b!4055907 (= res!1653722 (not (= lt!1447923 (Some!9369 (v!39783 lt!1447926)))))))

(assert (=> b!4055907 (isPrefix!4043 lt!1447907 (++!11358 lt!1447907 newSuffixResult!27))))

(declare-fun lt!1447919 () Unit!62712)

(assert (=> b!4055907 (= lt!1447919 (lemmaConcatTwoListThenFirstIsPrefix!2878 lt!1447907 newSuffixResult!27))))

(assert (=> b!4055907 (isPrefix!4043 lt!1447907 lt!1447877)))

(assert (=> b!4055907 (= lt!1447877 (++!11358 lt!1447907 (_2!24343 (v!39783 lt!1447926))))))

(declare-fun lt!1447915 () Unit!62712)

(assert (=> b!4055907 (= lt!1447915 (lemmaConcatTwoListThenFirstIsPrefix!2878 lt!1447907 (_2!24343 (v!39783 lt!1447926))))))

(declare-fun lt!1447928 () TokenValue!7186)

(assert (=> b!4055907 (= lt!1447923 (Some!9369 (tuple2!42419 (Token!13051 lt!1447928 (rule!10042 (_1!24343 (v!39783 lt!1447926))) lt!1447917 lt!1447907) (_2!24343 (v!39783 lt!1447926)))))))

(assert (=> b!4055907 (= lt!1447923 (maxPrefixOneRule!2855 thiss!21717 (rule!10042 (_1!24343 (v!39783 lt!1447926))) lt!1447925))))

(assert (=> b!4055907 (= lt!1447917 (size!32416 lt!1447907))))

(assert (=> b!4055907 (= lt!1447928 (apply!10145 (transformation!6956 (rule!10042 (_1!24343 (v!39783 lt!1447926)))) (seqFromList!5173 lt!1447907)))))

(declare-fun lt!1447932 () Unit!62712)

(assert (=> b!4055907 (= lt!1447932 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1661 thiss!21717 rules!2999 lt!1447907 lt!1447925 (_2!24343 (v!39783 lt!1447926)) (rule!10042 (_1!24343 (v!39783 lt!1447926)))))))

(declare-fun list!16156 (BalanceConc!25928) List!43481)

(declare-fun charsOf!4772 (Token!13050) BalanceConc!25928)

(assert (=> b!4055907 (= lt!1447907 (list!16156 (charsOf!4772 (_1!24343 (v!39783 lt!1447926)))))))

(declare-fun lt!1447883 () Unit!62712)

(assert (=> b!4055907 (= lt!1447883 (lemmaInv!1165 (transformation!6956 (rule!10042 (_1!24343 (v!39783 lt!1447926))))))))

(assert (=> b!4055907 (ruleValid!2886 thiss!21717 (rule!10042 (_1!24343 (v!39783 lt!1447926))))))

(declare-fun lt!1447929 () Unit!62712)

(assert (=> b!4055907 (= lt!1447929 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1956 thiss!21717 (rule!10042 (_1!24343 (v!39783 lt!1447926))) rules!2999))))

(declare-fun lt!1447913 () Unit!62712)

(declare-fun lemmaCharactersSize!1475 (Token!13050) Unit!62712)

(assert (=> b!4055907 (= lt!1447913 (lemmaCharactersSize!1475 token!484))))

(declare-fun lt!1447904 () Unit!62712)

(assert (=> b!4055907 (= lt!1447904 (lemmaCharactersSize!1475 (_1!24343 (v!39783 lt!1447926))))))

(declare-fun tp!1229407 () Bool)

(declare-fun b!4055908 () Bool)

(declare-fun inv!21 (TokenValue!7186) Bool)

(assert (=> b!4055908 (= e!2516891 (and (inv!21 (value!218880 token!484)) e!2516884 tp!1229407))))

(declare-fun b!4055909 () Bool)

(declare-fun tp!1229398 () Bool)

(assert (=> b!4055909 (= e!2516875 (and e!2516856 tp!1229398))))

(declare-fun b!4055910 () Bool)

(declare-fun res!1653719 () Bool)

(assert (=> b!4055910 (=> (not res!1653719) (not e!2516863))))

(assert (=> b!4055910 (= res!1653719 (= (value!218880 token!484) lt!1447873))))

(declare-fun b!4055911 () Bool)

(assert (=> b!4055911 (= e!2516880 e!2516883)))

(declare-fun res!1653710 () Bool)

(assert (=> b!4055911 (=> res!1653710 e!2516883)))

(assert (=> b!4055911 (= res!1653710 (not (isPrefix!4043 lt!1447889 lt!1447918)))))

(assert (=> b!4055911 (isPrefix!4043 prefix!494 lt!1447918)))

(declare-fun lt!1447931 () Unit!62712)

(assert (=> b!4055911 (= lt!1447931 (lemmaConcatTwoListThenFirstIsPrefix!2878 prefix!494 suffix!1299))))

(assert (=> b!4055911 (isPrefix!4043 lt!1447889 lt!1447905)))

(declare-fun lt!1447930 () Unit!62712)

(assert (=> b!4055911 (= lt!1447930 (lemmaConcatTwoListThenFirstIsPrefix!2878 lt!1447889 suffixResult!105))))

(declare-fun b!4055912 () Bool)

(declare-fun e!2516862 () Bool)

(assert (=> b!4055912 (= e!2516871 e!2516862)))

(declare-fun res!1653712 () Bool)

(assert (=> b!4055912 (=> (not res!1653712) (not e!2516862))))

(declare-fun lt!1447921 () Int)

(assert (=> b!4055912 (= res!1653712 (>= lt!1447921 lt!1447875))))

(assert (=> b!4055912 (= lt!1447875 (size!32416 lt!1447889))))

(assert (=> b!4055912 (= lt!1447921 (size!32416 prefix!494))))

(assert (=> b!4055912 (= lt!1447889 (list!16156 (charsOf!4772 token!484)))))

(declare-fun b!4055913 () Bool)

(declare-fun tp!1229397 () Bool)

(assert (=> b!4055913 (= e!2516870 (and tp_is_empty!20693 tp!1229397))))

(declare-fun b!4055914 () Bool)

(assert (=> b!4055914 (= e!2516862 e!2516869)))

(declare-fun res!1653701 () Bool)

(assert (=> b!4055914 (=> (not res!1653701) (not e!2516869))))

(declare-fun lt!1447927 () List!43481)

(assert (=> b!4055914 (= res!1653701 (= lt!1447927 lt!1447925))))

(assert (=> b!4055914 (= lt!1447925 (++!11358 prefix!494 newSuffix!27))))

(assert (=> b!4055914 (= lt!1447927 (++!11358 lt!1447889 newSuffixResult!27))))

(declare-fun b!4055915 () Bool)

(declare-fun e!2516877 () Bool)

(assert (=> b!4055915 (= e!2516877 false)))

(declare-fun b!4055916 () Bool)

(declare-fun Unit!62717 () Unit!62712)

(assert (=> b!4055916 (= e!2516888 Unit!62717)))

(declare-fun lt!1447898 () Unit!62712)

(assert (=> b!4055916 (= lt!1447898 (lemmaMaxPrefixOutputsMaxPrefix!482 thiss!21717 rules!2999 (rule!10042 token!484) lt!1447889 lt!1447918 lt!1447907 (rule!10042 (_1!24343 (v!39783 lt!1447926)))))))

(declare-fun res!1653703 () Bool)

(assert (=> b!4055916 (= res!1653703 (not (matchR!5814 (regex!6956 (rule!10042 (_1!24343 (v!39783 lt!1447926)))) lt!1447907)))))

(assert (=> b!4055916 (=> (not res!1653703) (not e!2516877))))

(assert (=> b!4055916 e!2516877))

(declare-fun b!4055917 () Bool)

(declare-fun res!1653702 () Bool)

(assert (=> b!4055917 (=> res!1653702 e!2516889)))

(assert (=> b!4055917 (= res!1653702 (not (= lt!1447901 (Some!9369 (tuple2!42419 lt!1447882 lt!1447892)))))))

(declare-fun b!4055918 () Bool)

(assert (=> b!4055918 (= e!2516866 e!2516864)))

(declare-fun res!1653728 () Bool)

(assert (=> b!4055918 (=> res!1653728 e!2516864)))

(assert (=> b!4055918 (= res!1653728 (not (= lt!1447912 lt!1447918)))))

(assert (=> b!4055918 (= lt!1447912 (++!11358 prefix!494 lt!1447922))))

(assert (=> b!4055918 (= lt!1447912 (++!11358 lt!1447925 lt!1447911))))

(declare-fun lt!1447890 () Unit!62712)

(assert (=> b!4055918 (= lt!1447890 (lemmaConcatAssociativity!2660 prefix!494 newSuffix!27 lt!1447911))))

(assert (=> b!4055919 (= e!2516861 (and tp!1229396 tp!1229403))))

(declare-fun b!4055920 () Bool)

(declare-fun Unit!62718 () Unit!62712)

(assert (=> b!4055920 (= e!2516888 Unit!62718)))

(assert (= (and start!382448 res!1653709) b!4055896))

(assert (= (and b!4055896 res!1653725) b!4055904))

(assert (= (and b!4055904 res!1653729) b!4055895))

(assert (= (and b!4055895 res!1653721) b!4055878))

(assert (= (and b!4055878 res!1653720) b!4055912))

(assert (= (and b!4055912 res!1653712) b!4055914))

(assert (= (and b!4055914 res!1653701) b!4055888))

(assert (= (and b!4055888 res!1653711) b!4055886))

(assert (= (and b!4055886 (not res!1653726)) b!4055911))

(assert (= (and b!4055911 (not res!1653710)) b!4055899))

(assert (= (and b!4055899 (not res!1653704)) b!4055875))

(assert (= (and b!4055875 (not res!1653714)) b!4055890))

(assert (= (and b!4055890 (not res!1653718)) b!4055906))

(assert (= (and b!4055906 (not res!1653730)) b!4055883))

(assert (= (and b!4055883 res!1653724) b!4055910))

(assert (= (and b!4055910 res!1653719) b!4055902))

(assert (= (and b!4055902 res!1653705) b!4055879))

(assert (= (and b!4055883 (not res!1653717)) b!4055876))

(assert (= (and b!4055876 (not res!1653706)) b!4055907))

(assert (= (and b!4055907 (not res!1653722)) b!4055900))

(assert (= (and b!4055900 (not res!1653716)) b!4055918))

(assert (= (and b!4055918 (not res!1653728)) b!4055894))

(assert (= (and b!4055894 (not res!1653708)) b!4055905))

(assert (= (and b!4055905 (not res!1653707)) b!4055898))

(assert (= (and b!4055898 (not res!1653731)) b!4055885))

(assert (= (and b!4055885 c!700483) b!4055916))

(assert (= (and b!4055885 (not c!700483)) b!4055920))

(assert (= (and b!4055916 res!1653703) b!4055915))

(assert (= (and b!4055885 c!700482) b!4055897))

(assert (= (and b!4055885 (not c!700482)) b!4055903))

(assert (= (and b!4055885 (not res!1653715)) b!4055884))

(assert (= (and b!4055884 (not res!1653713)) b!4055889))

(assert (= (and b!4055889 (not res!1653723)) b!4055917))

(assert (= (and b!4055917 (not res!1653702)) b!4055887))

(assert (= (and b!4055887 (not res!1653727)) b!4055901))

(assert (= (and start!382448 ((_ is Cons!43357) prefix!494)) b!4055893))

(assert (= b!4055880 b!4055919))

(assert (= b!4055908 b!4055880))

(assert (= start!382448 b!4055908))

(assert (= (and start!382448 ((_ is Cons!43357) suffixResult!105)) b!4055877))

(assert (= (and start!382448 ((_ is Cons!43357) suffix!1299)) b!4055891))

(assert (= (and start!382448 ((_ is Cons!43357) newSuffix!27)) b!4055913))

(assert (= b!4055881 b!4055892))

(assert (= b!4055909 b!4055881))

(assert (= (and start!382448 ((_ is Cons!43359) rules!2999)) b!4055909))

(assert (= (and start!382448 ((_ is Cons!43357) newSuffixResult!27)) b!4055882))

(declare-fun m!4659283 () Bool)

(assert (=> b!4055881 m!4659283))

(declare-fun m!4659285 () Bool)

(assert (=> b!4055881 m!4659285))

(declare-fun m!4659287 () Bool)

(assert (=> b!4055887 m!4659287))

(declare-fun m!4659289 () Bool)

(assert (=> b!4055907 m!4659289))

(declare-fun m!4659291 () Bool)

(assert (=> b!4055907 m!4659291))

(declare-fun m!4659293 () Bool)

(assert (=> b!4055907 m!4659293))

(declare-fun m!4659295 () Bool)

(assert (=> b!4055907 m!4659295))

(declare-fun m!4659297 () Bool)

(assert (=> b!4055907 m!4659297))

(declare-fun m!4659299 () Bool)

(assert (=> b!4055907 m!4659299))

(declare-fun m!4659301 () Bool)

(assert (=> b!4055907 m!4659301))

(assert (=> b!4055907 m!4659301))

(declare-fun m!4659303 () Bool)

(assert (=> b!4055907 m!4659303))

(declare-fun m!4659305 () Bool)

(assert (=> b!4055907 m!4659305))

(declare-fun m!4659307 () Bool)

(assert (=> b!4055907 m!4659307))

(declare-fun m!4659309 () Bool)

(assert (=> b!4055907 m!4659309))

(declare-fun m!4659311 () Bool)

(assert (=> b!4055907 m!4659311))

(declare-fun m!4659313 () Bool)

(assert (=> b!4055907 m!4659313))

(declare-fun m!4659315 () Bool)

(assert (=> b!4055907 m!4659315))

(declare-fun m!4659317 () Bool)

(assert (=> b!4055907 m!4659317))

(declare-fun m!4659319 () Bool)

(assert (=> b!4055907 m!4659319))

(declare-fun m!4659321 () Bool)

(assert (=> b!4055907 m!4659321))

(assert (=> b!4055907 m!4659289))

(assert (=> b!4055907 m!4659313))

(declare-fun m!4659323 () Bool)

(assert (=> b!4055907 m!4659323))

(declare-fun m!4659325 () Bool)

(assert (=> b!4055878 m!4659325))

(declare-fun m!4659327 () Bool)

(assert (=> b!4055899 m!4659327))

(declare-fun m!4659329 () Bool)

(assert (=> b!4055899 m!4659329))

(declare-fun m!4659331 () Bool)

(assert (=> b!4055899 m!4659331))

(declare-fun m!4659333 () Bool)

(assert (=> b!4055899 m!4659333))

(declare-fun m!4659335 () Bool)

(assert (=> b!4055904 m!4659335))

(declare-fun m!4659337 () Bool)

(assert (=> b!4055884 m!4659337))

(declare-fun m!4659339 () Bool)

(assert (=> b!4055886 m!4659339))

(declare-fun m!4659341 () Bool)

(assert (=> b!4055886 m!4659341))

(declare-fun m!4659343 () Bool)

(assert (=> b!4055886 m!4659343))

(declare-fun m!4659345 () Bool)

(assert (=> b!4055886 m!4659345))

(declare-fun m!4659347 () Bool)

(assert (=> b!4055889 m!4659347))

(declare-fun m!4659349 () Bool)

(assert (=> b!4055889 m!4659349))

(declare-fun m!4659351 () Bool)

(assert (=> b!4055889 m!4659351))

(declare-fun m!4659353 () Bool)

(assert (=> b!4055889 m!4659353))

(declare-fun m!4659355 () Bool)

(assert (=> b!4055900 m!4659355))

(declare-fun m!4659357 () Bool)

(assert (=> b!4055900 m!4659357))

(declare-fun m!4659359 () Bool)

(assert (=> b!4055876 m!4659359))

(declare-fun m!4659361 () Bool)

(assert (=> b!4055876 m!4659361))

(declare-fun m!4659363 () Bool)

(assert (=> b!4055876 m!4659363))

(declare-fun m!4659365 () Bool)

(assert (=> b!4055876 m!4659365))

(declare-fun m!4659367 () Bool)

(assert (=> b!4055890 m!4659367))

(declare-fun m!4659369 () Bool)

(assert (=> b!4055890 m!4659369))

(declare-fun m!4659371 () Bool)

(assert (=> b!4055890 m!4659371))

(declare-fun m!4659373 () Bool)

(assert (=> b!4055890 m!4659373))

(assert (=> b!4055890 m!4659371))

(declare-fun m!4659375 () Bool)

(assert (=> b!4055890 m!4659375))

(declare-fun m!4659377 () Bool)

(assert (=> b!4055890 m!4659377))

(declare-fun m!4659379 () Bool)

(assert (=> b!4055890 m!4659379))

(declare-fun m!4659381 () Bool)

(assert (=> b!4055875 m!4659381))

(declare-fun m!4659383 () Bool)

(assert (=> b!4055875 m!4659383))

(declare-fun m!4659385 () Bool)

(assert (=> b!4055875 m!4659385))

(declare-fun m!4659387 () Bool)

(assert (=> b!4055875 m!4659387))

(declare-fun m!4659389 () Bool)

(assert (=> b!4055908 m!4659389))

(declare-fun m!4659391 () Bool)

(assert (=> start!382448 m!4659391))

(declare-fun m!4659393 () Bool)

(assert (=> b!4055896 m!4659393))

(declare-fun m!4659395 () Bool)

(assert (=> b!4055916 m!4659395))

(declare-fun m!4659397 () Bool)

(assert (=> b!4055916 m!4659397))

(declare-fun m!4659399 () Bool)

(assert (=> b!4055894 m!4659399))

(declare-fun m!4659401 () Bool)

(assert (=> b!4055894 m!4659401))

(declare-fun m!4659403 () Bool)

(assert (=> b!4055894 m!4659403))

(declare-fun m!4659405 () Bool)

(assert (=> b!4055880 m!4659405))

(declare-fun m!4659407 () Bool)

(assert (=> b!4055880 m!4659407))

(declare-fun m!4659409 () Bool)

(assert (=> b!4055895 m!4659409))

(declare-fun m!4659411 () Bool)

(assert (=> b!4055895 m!4659411))

(declare-fun m!4659413 () Bool)

(assert (=> b!4055902 m!4659413))

(declare-fun m!4659415 () Bool)

(assert (=> b!4055897 m!4659415))

(declare-fun m!4659417 () Bool)

(assert (=> b!4055901 m!4659417))

(declare-fun m!4659419 () Bool)

(assert (=> b!4055911 m!4659419))

(declare-fun m!4659421 () Bool)

(assert (=> b!4055911 m!4659421))

(declare-fun m!4659423 () Bool)

(assert (=> b!4055911 m!4659423))

(declare-fun m!4659425 () Bool)

(assert (=> b!4055911 m!4659425))

(declare-fun m!4659427 () Bool)

(assert (=> b!4055911 m!4659427))

(declare-fun m!4659429 () Bool)

(assert (=> b!4055888 m!4659429))

(declare-fun m!4659431 () Bool)

(assert (=> b!4055888 m!4659431))

(declare-fun m!4659433 () Bool)

(assert (=> b!4055883 m!4659433))

(declare-fun m!4659435 () Bool)

(assert (=> b!4055883 m!4659435))

(declare-fun m!4659437 () Bool)

(assert (=> b!4055883 m!4659437))

(declare-fun m!4659439 () Bool)

(assert (=> b!4055883 m!4659439))

(declare-fun m!4659441 () Bool)

(assert (=> b!4055885 m!4659441))

(declare-fun m!4659443 () Bool)

(assert (=> b!4055885 m!4659443))

(declare-fun m!4659445 () Bool)

(assert (=> b!4055885 m!4659445))

(declare-fun m!4659447 () Bool)

(assert (=> b!4055912 m!4659447))

(declare-fun m!4659449 () Bool)

(assert (=> b!4055912 m!4659449))

(declare-fun m!4659451 () Bool)

(assert (=> b!4055912 m!4659451))

(assert (=> b!4055912 m!4659451))

(declare-fun m!4659453 () Bool)

(assert (=> b!4055912 m!4659453))

(declare-fun m!4659455 () Bool)

(assert (=> b!4055918 m!4659455))

(declare-fun m!4659457 () Bool)

(assert (=> b!4055918 m!4659457))

(declare-fun m!4659459 () Bool)

(assert (=> b!4055918 m!4659459))

(declare-fun m!4659461 () Bool)

(assert (=> b!4055914 m!4659461))

(declare-fun m!4659463 () Bool)

(assert (=> b!4055914 m!4659463))

(declare-fun m!4659465 () Bool)

(assert (=> b!4055898 m!4659465))

(declare-fun m!4659467 () Bool)

(assert (=> b!4055898 m!4659467))

(declare-fun m!4659469 () Bool)

(assert (=> b!4055906 m!4659469))

(declare-fun m!4659471 () Bool)

(assert (=> b!4055906 m!4659471))

(declare-fun m!4659473 () Bool)

(assert (=> b!4055906 m!4659473))

(declare-fun m!4659475 () Bool)

(assert (=> b!4055906 m!4659475))

(check-sat (not b!4055898) (not b!4055877) (not b!4055881) (not b!4055882) (not b!4055912) (not b!4055907) (not b!4055913) (not b!4055884) b_and!311879 (not b!4055908) (not b!4055896) (not b!4055914) (not b_next!113585) (not b!4055897) (not start!382448) (not b!4055893) b_and!311877 (not b!4055890) (not b!4055899) (not b!4055891) b_and!311875 (not b_next!113591) (not b!4055888) (not b!4055901) (not b_next!113589) (not b_next!113587) (not b!4055909) tp_is_empty!20693 (not b!4055876) (not b!4055885) (not b!4055875) (not b!4055889) (not b!4055906) (not b!4055895) (not b!4055904) (not b!4055878) (not b!4055887) (not b!4055886) (not b!4055916) (not b!4055902) (not b!4055911) b_and!311881 (not b!4055918) (not b!4055900) (not b!4055880) (not b!4055894) (not b!4055883))
(check-sat (not b_next!113585) b_and!311877 b_and!311881 b_and!311879 b_and!311875 (not b_next!113591) (not b_next!113589) (not b_next!113587))
(get-model)

(declare-fun b!4055930 () Bool)

(declare-fun e!2516897 () List!43481)

(assert (=> b!4055930 (= e!2516897 (Cons!43357 (h!48777 prefix!494) (++!11358 (t!336238 prefix!494) newSuffix!27)))))

(declare-fun b!4055929 () Bool)

(assert (=> b!4055929 (= e!2516897 newSuffix!27)))

(declare-fun b!4055931 () Bool)

(declare-fun res!1653741 () Bool)

(declare-fun e!2516898 () Bool)

(assert (=> b!4055931 (=> (not res!1653741) (not e!2516898))))

(declare-fun lt!1447936 () List!43481)

(assert (=> b!4055931 (= res!1653741 (= (size!32416 lt!1447936) (+ (size!32416 prefix!494) (size!32416 newSuffix!27))))))

(declare-fun d!1204817 () Bool)

(assert (=> d!1204817 e!2516898))

(declare-fun res!1653740 () Bool)

(assert (=> d!1204817 (=> (not res!1653740) (not e!2516898))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6604 (List!43481) (InoxSet C!23908))

(assert (=> d!1204817 (= res!1653740 (= (content!6604 lt!1447936) ((_ map or) (content!6604 prefix!494) (content!6604 newSuffix!27))))))

(assert (=> d!1204817 (= lt!1447936 e!2516897)))

(declare-fun c!700488 () Bool)

(assert (=> d!1204817 (= c!700488 ((_ is Nil!43357) prefix!494))))

(assert (=> d!1204817 (= (++!11358 prefix!494 newSuffix!27) lt!1447936)))

(declare-fun b!4055932 () Bool)

(assert (=> b!4055932 (= e!2516898 (or (not (= newSuffix!27 Nil!43357)) (= lt!1447936 prefix!494)))))

(assert (= (and d!1204817 c!700488) b!4055929))

(assert (= (and d!1204817 (not c!700488)) b!4055930))

(assert (= (and d!1204817 res!1653740) b!4055931))

(assert (= (and b!4055931 res!1653741) b!4055932))

(declare-fun m!4659477 () Bool)

(assert (=> b!4055930 m!4659477))

(declare-fun m!4659479 () Bool)

(assert (=> b!4055931 m!4659479))

(assert (=> b!4055931 m!4659449))

(assert (=> b!4055931 m!4659411))

(declare-fun m!4659481 () Bool)

(assert (=> d!1204817 m!4659481))

(declare-fun m!4659483 () Bool)

(assert (=> d!1204817 m!4659483))

(declare-fun m!4659485 () Bool)

(assert (=> d!1204817 m!4659485))

(assert (=> b!4055914 d!1204817))

(declare-fun b!4055934 () Bool)

(declare-fun e!2516899 () List!43481)

(assert (=> b!4055934 (= e!2516899 (Cons!43357 (h!48777 lt!1447889) (++!11358 (t!336238 lt!1447889) newSuffixResult!27)))))

(declare-fun b!4055933 () Bool)

(assert (=> b!4055933 (= e!2516899 newSuffixResult!27)))

(declare-fun b!4055935 () Bool)

(declare-fun res!1653743 () Bool)

(declare-fun e!2516900 () Bool)

(assert (=> b!4055935 (=> (not res!1653743) (not e!2516900))))

(declare-fun lt!1447937 () List!43481)

(assert (=> b!4055935 (= res!1653743 (= (size!32416 lt!1447937) (+ (size!32416 lt!1447889) (size!32416 newSuffixResult!27))))))

(declare-fun d!1204819 () Bool)

(assert (=> d!1204819 e!2516900))

(declare-fun res!1653742 () Bool)

(assert (=> d!1204819 (=> (not res!1653742) (not e!2516900))))

(assert (=> d!1204819 (= res!1653742 (= (content!6604 lt!1447937) ((_ map or) (content!6604 lt!1447889) (content!6604 newSuffixResult!27))))))

(assert (=> d!1204819 (= lt!1447937 e!2516899)))

(declare-fun c!700489 () Bool)

(assert (=> d!1204819 (= c!700489 ((_ is Nil!43357) lt!1447889))))

(assert (=> d!1204819 (= (++!11358 lt!1447889 newSuffixResult!27) lt!1447937)))

(declare-fun b!4055936 () Bool)

(assert (=> b!4055936 (= e!2516900 (or (not (= newSuffixResult!27 Nil!43357)) (= lt!1447937 lt!1447889)))))

(assert (= (and d!1204819 c!700489) b!4055933))

(assert (= (and d!1204819 (not c!700489)) b!4055934))

(assert (= (and d!1204819 res!1653742) b!4055935))

(assert (= (and b!4055935 res!1653743) b!4055936))

(declare-fun m!4659487 () Bool)

(assert (=> b!4055934 m!4659487))

(declare-fun m!4659489 () Bool)

(assert (=> b!4055935 m!4659489))

(assert (=> b!4055935 m!4659447))

(declare-fun m!4659491 () Bool)

(assert (=> b!4055935 m!4659491))

(declare-fun m!4659493 () Bool)

(assert (=> d!1204819 m!4659493))

(declare-fun m!4659495 () Bool)

(assert (=> d!1204819 m!4659495))

(declare-fun m!4659497 () Bool)

(assert (=> d!1204819 m!4659497))

(assert (=> b!4055914 d!1204819))

(declare-fun b!4055945 () Bool)

(declare-fun e!2516908 () Bool)

(declare-fun e!2516909 () Bool)

(assert (=> b!4055945 (= e!2516908 e!2516909)))

(declare-fun res!1653758 () Bool)

(assert (=> b!4055945 (=> (not res!1653758) (not e!2516909))))

(assert (=> b!4055945 (= res!1653758 (not ((_ is Nil!43357) lt!1447918)))))

(declare-fun b!4055948 () Bool)

(declare-fun e!2516907 () Bool)

(assert (=> b!4055948 (= e!2516907 (>= (size!32416 lt!1447918) (size!32416 lt!1447907)))))

(declare-fun d!1204821 () Bool)

(assert (=> d!1204821 e!2516907))

(declare-fun res!1653759 () Bool)

(assert (=> d!1204821 (=> res!1653759 e!2516907)))

(declare-fun lt!1447940 () Bool)

(assert (=> d!1204821 (= res!1653759 (not lt!1447940))))

(assert (=> d!1204821 (= lt!1447940 e!2516908)))

(declare-fun res!1653757 () Bool)

(assert (=> d!1204821 (=> res!1653757 e!2516908)))

(assert (=> d!1204821 (= res!1653757 ((_ is Nil!43357) lt!1447907))))

(assert (=> d!1204821 (= (isPrefix!4043 lt!1447907 lt!1447918) lt!1447940)))

(declare-fun b!4055947 () Bool)

(declare-fun tail!6299 (List!43481) List!43481)

(assert (=> b!4055947 (= e!2516909 (isPrefix!4043 (tail!6299 lt!1447907) (tail!6299 lt!1447918)))))

(declare-fun b!4055946 () Bool)

(declare-fun res!1653756 () Bool)

(assert (=> b!4055946 (=> (not res!1653756) (not e!2516909))))

(declare-fun head!8567 (List!43481) C!23908)

(assert (=> b!4055946 (= res!1653756 (= (head!8567 lt!1447907) (head!8567 lt!1447918)))))

(assert (= (and d!1204821 (not res!1653757)) b!4055945))

(assert (= (and b!4055945 res!1653758) b!4055946))

(assert (= (and b!4055946 res!1653756) b!4055947))

(assert (= (and d!1204821 (not res!1653759)) b!4055948))

(declare-fun m!4659499 () Bool)

(assert (=> b!4055948 m!4659499))

(assert (=> b!4055948 m!4659305))

(declare-fun m!4659501 () Bool)

(assert (=> b!4055947 m!4659501))

(declare-fun m!4659503 () Bool)

(assert (=> b!4055947 m!4659503))

(assert (=> b!4055947 m!4659501))

(assert (=> b!4055947 m!4659503))

(declare-fun m!4659505 () Bool)

(assert (=> b!4055947 m!4659505))

(declare-fun m!4659507 () Bool)

(assert (=> b!4055946 m!4659507))

(declare-fun m!4659509 () Bool)

(assert (=> b!4055946 m!4659509))

(assert (=> b!4055894 d!1204821))

(declare-fun b!4055949 () Bool)

(declare-fun e!2516911 () Bool)

(declare-fun e!2516912 () Bool)

(assert (=> b!4055949 (= e!2516911 e!2516912)))

(declare-fun res!1653762 () Bool)

(assert (=> b!4055949 (=> (not res!1653762) (not e!2516912))))

(assert (=> b!4055949 (= res!1653762 (not ((_ is Nil!43357) lt!1447912)))))

(declare-fun b!4055952 () Bool)

(declare-fun e!2516910 () Bool)

(assert (=> b!4055952 (= e!2516910 (>= (size!32416 lt!1447912) (size!32416 lt!1447907)))))

(declare-fun d!1204825 () Bool)

(assert (=> d!1204825 e!2516910))

(declare-fun res!1653763 () Bool)

(assert (=> d!1204825 (=> res!1653763 e!2516910)))

(declare-fun lt!1447941 () Bool)

(assert (=> d!1204825 (= res!1653763 (not lt!1447941))))

(assert (=> d!1204825 (= lt!1447941 e!2516911)))

(declare-fun res!1653761 () Bool)

(assert (=> d!1204825 (=> res!1653761 e!2516911)))

(assert (=> d!1204825 (= res!1653761 ((_ is Nil!43357) lt!1447907))))

(assert (=> d!1204825 (= (isPrefix!4043 lt!1447907 lt!1447912) lt!1447941)))

(declare-fun b!4055951 () Bool)

(assert (=> b!4055951 (= e!2516912 (isPrefix!4043 (tail!6299 lt!1447907) (tail!6299 lt!1447912)))))

(declare-fun b!4055950 () Bool)

(declare-fun res!1653760 () Bool)

(assert (=> b!4055950 (=> (not res!1653760) (not e!2516912))))

(assert (=> b!4055950 (= res!1653760 (= (head!8567 lt!1447907) (head!8567 lt!1447912)))))

(assert (= (and d!1204825 (not res!1653761)) b!4055949))

(assert (= (and b!4055949 res!1653762) b!4055950))

(assert (= (and b!4055950 res!1653760) b!4055951))

(assert (= (and d!1204825 (not res!1653763)) b!4055952))

(declare-fun m!4659511 () Bool)

(assert (=> b!4055952 m!4659511))

(assert (=> b!4055952 m!4659305))

(assert (=> b!4055951 m!4659501))

(declare-fun m!4659513 () Bool)

(assert (=> b!4055951 m!4659513))

(assert (=> b!4055951 m!4659501))

(assert (=> b!4055951 m!4659513))

(declare-fun m!4659515 () Bool)

(assert (=> b!4055951 m!4659515))

(assert (=> b!4055950 m!4659507))

(declare-fun m!4659517 () Bool)

(assert (=> b!4055950 m!4659517))

(assert (=> b!4055894 d!1204825))

(declare-fun d!1204827 () Bool)

(assert (=> d!1204827 (isPrefix!4043 lt!1447907 (++!11358 lt!1447925 lt!1447911))))

(declare-fun lt!1447951 () Unit!62712)

(declare-fun choose!24615 (List!43481 List!43481 List!43481) Unit!62712)

(assert (=> d!1204827 (= lt!1447951 (choose!24615 lt!1447907 lt!1447925 lt!1447911))))

(assert (=> d!1204827 (isPrefix!4043 lt!1447907 lt!1447925)))

(assert (=> d!1204827 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!836 lt!1447907 lt!1447925 lt!1447911) lt!1447951)))

(declare-fun bs!591778 () Bool)

(assert (= bs!591778 d!1204827))

(assert (=> bs!591778 m!4659457))

(assert (=> bs!591778 m!4659457))

(declare-fun m!4659525 () Bool)

(assert (=> bs!591778 m!4659525))

(declare-fun m!4659527 () Bool)

(assert (=> bs!591778 m!4659527))

(assert (=> bs!591778 m!4659337))

(assert (=> b!4055894 d!1204827))

(declare-fun d!1204835 () Bool)

(declare-fun lt!1447957 () Int)

(assert (=> d!1204835 (>= lt!1447957 0)))

(declare-fun e!2516929 () Int)

(assert (=> d!1204835 (= lt!1447957 e!2516929)))

(declare-fun c!700497 () Bool)

(assert (=> d!1204835 (= c!700497 ((_ is Nil!43357) suffix!1299))))

(assert (=> d!1204835 (= (size!32416 suffix!1299) lt!1447957)))

(declare-fun b!4055980 () Bool)

(assert (=> b!4055980 (= e!2516929 0)))

(declare-fun b!4055981 () Bool)

(assert (=> b!4055981 (= e!2516929 (+ 1 (size!32416 (t!336238 suffix!1299))))))

(assert (= (and d!1204835 c!700497) b!4055980))

(assert (= (and d!1204835 (not c!700497)) b!4055981))

(declare-fun m!4659539 () Bool)

(assert (=> b!4055981 m!4659539))

(assert (=> b!4055895 d!1204835))

(declare-fun d!1204841 () Bool)

(declare-fun lt!1447958 () Int)

(assert (=> d!1204841 (>= lt!1447958 0)))

(declare-fun e!2516930 () Int)

(assert (=> d!1204841 (= lt!1447958 e!2516930)))

(declare-fun c!700498 () Bool)

(assert (=> d!1204841 (= c!700498 ((_ is Nil!43357) newSuffix!27))))

(assert (=> d!1204841 (= (size!32416 newSuffix!27) lt!1447958)))

(declare-fun b!4055982 () Bool)

(assert (=> b!4055982 (= e!2516930 0)))

(declare-fun b!4055983 () Bool)

(assert (=> b!4055983 (= e!2516930 (+ 1 (size!32416 (t!336238 newSuffix!27))))))

(assert (= (and d!1204841 c!700498) b!4055982))

(assert (= (and d!1204841 (not c!700498)) b!4055983))

(declare-fun m!4659541 () Bool)

(assert (=> b!4055983 m!4659541))

(assert (=> b!4055895 d!1204841))

(declare-fun d!1204843 () Bool)

(assert (=> d!1204843 (not (matchR!5814 (regex!6956 (rule!10042 (_1!24343 (v!39783 lt!1447926)))) lt!1447907))))

(declare-fun lt!1447962 () Unit!62712)

(declare-fun choose!24618 (LexerInterface!6545 List!43483 Rule!13712 List!43481 List!43481 List!43481 Rule!13712) Unit!62712)

(assert (=> d!1204843 (= lt!1447962 (choose!24618 thiss!21717 rules!2999 (rule!10042 token!484) lt!1447889 lt!1447918 lt!1447907 (rule!10042 (_1!24343 (v!39783 lt!1447926)))))))

(assert (=> d!1204843 (isPrefix!4043 lt!1447889 lt!1447918)))

(assert (=> d!1204843 (= (lemmaMaxPrefixOutputsMaxPrefix!482 thiss!21717 rules!2999 (rule!10042 token!484) lt!1447889 lt!1447918 lt!1447907 (rule!10042 (_1!24343 (v!39783 lt!1447926)))) lt!1447962)))

(declare-fun bs!591779 () Bool)

(assert (= bs!591779 d!1204843))

(assert (=> bs!591779 m!4659397))

(declare-fun m!4659557 () Bool)

(assert (=> bs!591779 m!4659557))

(assert (=> bs!591779 m!4659419))

(assert (=> b!4055916 d!1204843))

(declare-fun b!4056101 () Bool)

(declare-fun e!2516999 () Bool)

(declare-fun derivativeStep!3569 (Regex!11861 C!23908) Regex!11861)

(assert (=> b!4056101 (= e!2516999 (matchR!5814 (derivativeStep!3569 (regex!6956 (rule!10042 (_1!24343 (v!39783 lt!1447926)))) (head!8567 lt!1447907)) (tail!6299 lt!1447907)))))

(declare-fun d!1204851 () Bool)

(declare-fun e!2516998 () Bool)

(assert (=> d!1204851 e!2516998))

(declare-fun c!700524 () Bool)

(assert (=> d!1204851 (= c!700524 ((_ is EmptyExpr!11861) (regex!6956 (rule!10042 (_1!24343 (v!39783 lt!1447926))))))))

(declare-fun lt!1447984 () Bool)

(assert (=> d!1204851 (= lt!1447984 e!2516999)))

(declare-fun c!700523 () Bool)

(declare-fun isEmpty!25871 (List!43481) Bool)

(assert (=> d!1204851 (= c!700523 (isEmpty!25871 lt!1447907))))

(declare-fun validRegex!5364 (Regex!11861) Bool)

(assert (=> d!1204851 (validRegex!5364 (regex!6956 (rule!10042 (_1!24343 (v!39783 lt!1447926)))))))

(assert (=> d!1204851 (= (matchR!5814 (regex!6956 (rule!10042 (_1!24343 (v!39783 lt!1447926)))) lt!1447907) lt!1447984)))

(declare-fun b!4056102 () Bool)

(declare-fun e!2516996 () Bool)

(declare-fun e!2516997 () Bool)

(assert (=> b!4056102 (= e!2516996 e!2516997)))

(declare-fun res!1653847 () Bool)

(assert (=> b!4056102 (=> (not res!1653847) (not e!2516997))))

(assert (=> b!4056102 (= res!1653847 (not lt!1447984))))

(declare-fun b!4056103 () Bool)

(declare-fun res!1653843 () Bool)

(declare-fun e!2517000 () Bool)

(assert (=> b!4056103 (=> (not res!1653843) (not e!2517000))))

(assert (=> b!4056103 (= res!1653843 (isEmpty!25871 (tail!6299 lt!1447907)))))

(declare-fun b!4056104 () Bool)

(declare-fun res!1653848 () Bool)

(assert (=> b!4056104 (=> res!1653848 e!2516996)))

(assert (=> b!4056104 (= res!1653848 (not ((_ is ElementMatch!11861) (regex!6956 (rule!10042 (_1!24343 (v!39783 lt!1447926)))))))))

(declare-fun e!2516995 () Bool)

(assert (=> b!4056104 (= e!2516995 e!2516996)))

(declare-fun b!4056105 () Bool)

(declare-fun e!2516994 () Bool)

(assert (=> b!4056105 (= e!2516994 (not (= (head!8567 lt!1447907) (c!700485 (regex!6956 (rule!10042 (_1!24343 (v!39783 lt!1447926))))))))))

(declare-fun b!4056106 () Bool)

(declare-fun res!1653842 () Bool)

(assert (=> b!4056106 (=> res!1653842 e!2516994)))

(assert (=> b!4056106 (= res!1653842 (not (isEmpty!25871 (tail!6299 lt!1447907))))))

(declare-fun b!4056107 () Bool)

(declare-fun nullable!4164 (Regex!11861) Bool)

(assert (=> b!4056107 (= e!2516999 (nullable!4164 (regex!6956 (rule!10042 (_1!24343 (v!39783 lt!1447926))))))))

(declare-fun b!4056108 () Bool)

(declare-fun res!1653841 () Bool)

(assert (=> b!4056108 (=> (not res!1653841) (not e!2517000))))

(declare-fun call!288025 () Bool)

(assert (=> b!4056108 (= res!1653841 (not call!288025))))

(declare-fun b!4056109 () Bool)

(declare-fun res!1653844 () Bool)

(assert (=> b!4056109 (=> res!1653844 e!2516996)))

(assert (=> b!4056109 (= res!1653844 e!2517000)))

(declare-fun res!1653845 () Bool)

(assert (=> b!4056109 (=> (not res!1653845) (not e!2517000))))

(assert (=> b!4056109 (= res!1653845 lt!1447984)))

(declare-fun b!4056110 () Bool)

(assert (=> b!4056110 (= e!2516997 e!2516994)))

(declare-fun res!1653846 () Bool)

(assert (=> b!4056110 (=> res!1653846 e!2516994)))

(assert (=> b!4056110 (= res!1653846 call!288025)))

(declare-fun b!4056111 () Bool)

(assert (=> b!4056111 (= e!2517000 (= (head!8567 lt!1447907) (c!700485 (regex!6956 (rule!10042 (_1!24343 (v!39783 lt!1447926)))))))))

(declare-fun b!4056112 () Bool)

(assert (=> b!4056112 (= e!2516995 (not lt!1447984))))

(declare-fun b!4056113 () Bool)

(assert (=> b!4056113 (= e!2516998 (= lt!1447984 call!288025))))

(declare-fun bm!288020 () Bool)

(assert (=> bm!288020 (= call!288025 (isEmpty!25871 lt!1447907))))

(declare-fun b!4056114 () Bool)

(assert (=> b!4056114 (= e!2516998 e!2516995)))

(declare-fun c!700525 () Bool)

(assert (=> b!4056114 (= c!700525 ((_ is EmptyLang!11861) (regex!6956 (rule!10042 (_1!24343 (v!39783 lt!1447926))))))))

(assert (= (and d!1204851 c!700523) b!4056107))

(assert (= (and d!1204851 (not c!700523)) b!4056101))

(assert (= (and d!1204851 c!700524) b!4056113))

(assert (= (and d!1204851 (not c!700524)) b!4056114))

(assert (= (and b!4056114 c!700525) b!4056112))

(assert (= (and b!4056114 (not c!700525)) b!4056104))

(assert (= (and b!4056104 (not res!1653848)) b!4056109))

(assert (= (and b!4056109 res!1653845) b!4056108))

(assert (= (and b!4056108 res!1653841) b!4056103))

(assert (= (and b!4056103 res!1653843) b!4056111))

(assert (= (and b!4056109 (not res!1653844)) b!4056102))

(assert (= (and b!4056102 res!1653847) b!4056110))

(assert (= (and b!4056110 (not res!1653846)) b!4056106))

(assert (= (and b!4056106 (not res!1653842)) b!4056105))

(assert (= (or b!4056113 b!4056108 b!4056110) bm!288020))

(assert (=> b!4056105 m!4659507))

(assert (=> b!4056111 m!4659507))

(declare-fun m!4659635 () Bool)

(assert (=> b!4056107 m!4659635))

(assert (=> b!4056101 m!4659507))

(assert (=> b!4056101 m!4659507))

(declare-fun m!4659637 () Bool)

(assert (=> b!4056101 m!4659637))

(assert (=> b!4056101 m!4659501))

(assert (=> b!4056101 m!4659637))

(assert (=> b!4056101 m!4659501))

(declare-fun m!4659639 () Bool)

(assert (=> b!4056101 m!4659639))

(declare-fun m!4659641 () Bool)

(assert (=> bm!288020 m!4659641))

(assert (=> d!1204851 m!4659641))

(declare-fun m!4659643 () Bool)

(assert (=> d!1204851 m!4659643))

(assert (=> b!4056106 m!4659501))

(assert (=> b!4056106 m!4659501))

(declare-fun m!4659645 () Bool)

(assert (=> b!4056106 m!4659645))

(assert (=> b!4056103 m!4659501))

(assert (=> b!4056103 m!4659501))

(assert (=> b!4056103 m!4659645))

(assert (=> b!4055916 d!1204851))

(declare-fun b!4056116 () Bool)

(declare-fun e!2517001 () List!43481)

(assert (=> b!4056116 (= e!2517001 (Cons!43357 (h!48777 lt!1447889) (++!11358 (t!336238 lt!1447889) lt!1447910)))))

(declare-fun b!4056115 () Bool)

(assert (=> b!4056115 (= e!2517001 lt!1447910)))

(declare-fun b!4056117 () Bool)

(declare-fun res!1653850 () Bool)

(declare-fun e!2517002 () Bool)

(assert (=> b!4056117 (=> (not res!1653850) (not e!2517002))))

(declare-fun lt!1447990 () List!43481)

(assert (=> b!4056117 (= res!1653850 (= (size!32416 lt!1447990) (+ (size!32416 lt!1447889) (size!32416 lt!1447910))))))

(declare-fun d!1204873 () Bool)

(assert (=> d!1204873 e!2517002))

(declare-fun res!1653849 () Bool)

(assert (=> d!1204873 (=> (not res!1653849) (not e!2517002))))

(assert (=> d!1204873 (= res!1653849 (= (content!6604 lt!1447990) ((_ map or) (content!6604 lt!1447889) (content!6604 lt!1447910))))))

(assert (=> d!1204873 (= lt!1447990 e!2517001)))

(declare-fun c!700526 () Bool)

(assert (=> d!1204873 (= c!700526 ((_ is Nil!43357) lt!1447889))))

(assert (=> d!1204873 (= (++!11358 lt!1447889 lt!1447910) lt!1447990)))

(declare-fun b!4056118 () Bool)

(assert (=> b!4056118 (= e!2517002 (or (not (= lt!1447910 Nil!43357)) (= lt!1447990 lt!1447889)))))

(assert (= (and d!1204873 c!700526) b!4056115))

(assert (= (and d!1204873 (not c!700526)) b!4056116))

(assert (= (and d!1204873 res!1653849) b!4056117))

(assert (= (and b!4056117 res!1653850) b!4056118))

(declare-fun m!4659651 () Bool)

(assert (=> b!4056116 m!4659651))

(declare-fun m!4659655 () Bool)

(assert (=> b!4056117 m!4659655))

(assert (=> b!4056117 m!4659447))

(declare-fun m!4659661 () Bool)

(assert (=> b!4056117 m!4659661))

(declare-fun m!4659663 () Bool)

(assert (=> d!1204873 m!4659663))

(assert (=> d!1204873 m!4659495))

(declare-fun m!4659665 () Bool)

(assert (=> d!1204873 m!4659665))

(assert (=> b!4055875 d!1204873))

(declare-fun b!4056124 () Bool)

(declare-fun e!2517006 () List!43481)

(assert (=> b!4056124 (= e!2517006 (Cons!43357 (h!48777 lt!1447886) (++!11358 (t!336238 lt!1447886) suffix!1299)))))

(declare-fun b!4056123 () Bool)

(assert (=> b!4056123 (= e!2517006 suffix!1299)))

(declare-fun b!4056125 () Bool)

(declare-fun res!1653856 () Bool)

(declare-fun e!2517007 () Bool)

(assert (=> b!4056125 (=> (not res!1653856) (not e!2517007))))

(declare-fun lt!1447993 () List!43481)

(assert (=> b!4056125 (= res!1653856 (= (size!32416 lt!1447993) (+ (size!32416 lt!1447886) (size!32416 suffix!1299))))))

(declare-fun d!1204879 () Bool)

(assert (=> d!1204879 e!2517007))

(declare-fun res!1653855 () Bool)

(assert (=> d!1204879 (=> (not res!1653855) (not e!2517007))))

(assert (=> d!1204879 (= res!1653855 (= (content!6604 lt!1447993) ((_ map or) (content!6604 lt!1447886) (content!6604 suffix!1299))))))

(assert (=> d!1204879 (= lt!1447993 e!2517006)))

(declare-fun c!700527 () Bool)

(assert (=> d!1204879 (= c!700527 ((_ is Nil!43357) lt!1447886))))

(assert (=> d!1204879 (= (++!11358 lt!1447886 suffix!1299) lt!1447993)))

(declare-fun b!4056126 () Bool)

(assert (=> b!4056126 (= e!2517007 (or (not (= suffix!1299 Nil!43357)) (= lt!1447993 lt!1447886)))))

(assert (= (and d!1204879 c!700527) b!4056123))

(assert (= (and d!1204879 (not c!700527)) b!4056124))

(assert (= (and d!1204879 res!1653855) b!4056125))

(assert (= (and b!4056125 res!1653856) b!4056126))

(declare-fun m!4659667 () Bool)

(assert (=> b!4056124 m!4659667))

(declare-fun m!4659669 () Bool)

(assert (=> b!4056125 m!4659669))

(declare-fun m!4659671 () Bool)

(assert (=> b!4056125 m!4659671))

(assert (=> b!4056125 m!4659409))

(declare-fun m!4659673 () Bool)

(assert (=> d!1204879 m!4659673))

(declare-fun m!4659675 () Bool)

(assert (=> d!1204879 m!4659675))

(declare-fun m!4659677 () Bool)

(assert (=> d!1204879 m!4659677))

(assert (=> b!4055875 d!1204879))

(declare-fun b!4056128 () Bool)

(declare-fun e!2517008 () List!43481)

(assert (=> b!4056128 (= e!2517008 (Cons!43357 (h!48777 lt!1447894) (++!11358 (t!336238 lt!1447894) suffix!1299)))))

(declare-fun b!4056127 () Bool)

(assert (=> b!4056127 (= e!2517008 suffix!1299)))

(declare-fun b!4056129 () Bool)

(declare-fun res!1653858 () Bool)

(declare-fun e!2517009 () Bool)

(assert (=> b!4056129 (=> (not res!1653858) (not e!2517009))))

(declare-fun lt!1447996 () List!43481)

(assert (=> b!4056129 (= res!1653858 (= (size!32416 lt!1447996) (+ (size!32416 lt!1447894) (size!32416 suffix!1299))))))

(declare-fun d!1204881 () Bool)

(assert (=> d!1204881 e!2517009))

(declare-fun res!1653857 () Bool)

(assert (=> d!1204881 (=> (not res!1653857) (not e!2517009))))

(assert (=> d!1204881 (= res!1653857 (= (content!6604 lt!1447996) ((_ map or) (content!6604 lt!1447894) (content!6604 suffix!1299))))))

(assert (=> d!1204881 (= lt!1447996 e!2517008)))

(declare-fun c!700528 () Bool)

(assert (=> d!1204881 (= c!700528 ((_ is Nil!43357) lt!1447894))))

(assert (=> d!1204881 (= (++!11358 lt!1447894 suffix!1299) lt!1447996)))

(declare-fun b!4056130 () Bool)

(assert (=> b!4056130 (= e!2517009 (or (not (= suffix!1299 Nil!43357)) (= lt!1447996 lt!1447894)))))

(assert (= (and d!1204881 c!700528) b!4056127))

(assert (= (and d!1204881 (not c!700528)) b!4056128))

(assert (= (and d!1204881 res!1653857) b!4056129))

(assert (= (and b!4056129 res!1653858) b!4056130))

(declare-fun m!4659683 () Bool)

(assert (=> b!4056128 m!4659683))

(declare-fun m!4659685 () Bool)

(assert (=> b!4056129 m!4659685))

(declare-fun m!4659687 () Bool)

(assert (=> b!4056129 m!4659687))

(assert (=> b!4056129 m!4659409))

(declare-fun m!4659689 () Bool)

(assert (=> d!1204881 m!4659689))

(declare-fun m!4659691 () Bool)

(assert (=> d!1204881 m!4659691))

(assert (=> d!1204881 m!4659677))

(assert (=> b!4055875 d!1204881))

(declare-fun d!1204885 () Bool)

(assert (=> d!1204885 (= (++!11358 (++!11358 lt!1447889 lt!1447894) suffix!1299) (++!11358 lt!1447889 (++!11358 lt!1447894 suffix!1299)))))

(declare-fun lt!1448000 () Unit!62712)

(declare-fun choose!24620 (List!43481 List!43481 List!43481) Unit!62712)

(assert (=> d!1204885 (= lt!1448000 (choose!24620 lt!1447889 lt!1447894 suffix!1299))))

(assert (=> d!1204885 (= (lemmaConcatAssociativity!2660 lt!1447889 lt!1447894 suffix!1299) lt!1448000)))

(declare-fun bs!591786 () Bool)

(assert (= bs!591786 d!1204885))

(declare-fun m!4659693 () Bool)

(assert (=> bs!591786 m!4659693))

(assert (=> bs!591786 m!4659385))

(declare-fun m!4659695 () Bool)

(assert (=> bs!591786 m!4659695))

(assert (=> bs!591786 m!4659385))

(assert (=> bs!591786 m!4659327))

(declare-fun m!4659697 () Bool)

(assert (=> bs!591786 m!4659697))

(assert (=> bs!591786 m!4659327))

(assert (=> b!4055875 d!1204885))

(declare-fun d!1204887 () Bool)

(assert (=> d!1204887 (= (isEmpty!25869 rules!2999) ((_ is Nil!43359) rules!2999))))

(assert (=> b!4055896 d!1204887))

(declare-fun d!1204889 () Bool)

(assert (=> d!1204889 (not (matchR!5814 (regex!6956 (rule!10042 token!484)) lt!1447889))))

(declare-fun lt!1448001 () Unit!62712)

(assert (=> d!1204889 (= lt!1448001 (choose!24618 thiss!21717 rules!2999 (rule!10042 (_1!24343 (v!39783 lt!1447926))) lt!1447907 lt!1447925 lt!1447889 (rule!10042 token!484)))))

(assert (=> d!1204889 (isPrefix!4043 lt!1447907 lt!1447925)))

(assert (=> d!1204889 (= (lemmaMaxPrefixOutputsMaxPrefix!482 thiss!21717 rules!2999 (rule!10042 (_1!24343 (v!39783 lt!1447926))) lt!1447907 lt!1447925 lt!1447889 (rule!10042 token!484)) lt!1448001)))

(declare-fun bs!591787 () Bool)

(assert (= bs!591787 d!1204889))

(assert (=> bs!591787 m!4659469))

(declare-fun m!4659699 () Bool)

(assert (=> bs!591787 m!4659699))

(assert (=> bs!591787 m!4659337))

(assert (=> b!4055897 d!1204889))

(declare-fun b!4056132 () Bool)

(declare-fun e!2517010 () List!43481)

(assert (=> b!4056132 (= e!2517010 (Cons!43357 (h!48777 prefix!494) (++!11358 (t!336238 prefix!494) lt!1447922)))))

(declare-fun b!4056131 () Bool)

(assert (=> b!4056131 (= e!2517010 lt!1447922)))

(declare-fun b!4056133 () Bool)

(declare-fun res!1653860 () Bool)

(declare-fun e!2517011 () Bool)

(assert (=> b!4056133 (=> (not res!1653860) (not e!2517011))))

(declare-fun lt!1448002 () List!43481)

(assert (=> b!4056133 (= res!1653860 (= (size!32416 lt!1448002) (+ (size!32416 prefix!494) (size!32416 lt!1447922))))))

(declare-fun d!1204891 () Bool)

(assert (=> d!1204891 e!2517011))

(declare-fun res!1653859 () Bool)

(assert (=> d!1204891 (=> (not res!1653859) (not e!2517011))))

(assert (=> d!1204891 (= res!1653859 (= (content!6604 lt!1448002) ((_ map or) (content!6604 prefix!494) (content!6604 lt!1447922))))))

(assert (=> d!1204891 (= lt!1448002 e!2517010)))

(declare-fun c!700529 () Bool)

(assert (=> d!1204891 (= c!700529 ((_ is Nil!43357) prefix!494))))

(assert (=> d!1204891 (= (++!11358 prefix!494 lt!1447922) lt!1448002)))

(declare-fun b!4056134 () Bool)

(assert (=> b!4056134 (= e!2517011 (or (not (= lt!1447922 Nil!43357)) (= lt!1448002 prefix!494)))))

(assert (= (and d!1204891 c!700529) b!4056131))

(assert (= (and d!1204891 (not c!700529)) b!4056132))

(assert (= (and d!1204891 res!1653859) b!4056133))

(assert (= (and b!4056133 res!1653860) b!4056134))

(declare-fun m!4659701 () Bool)

(assert (=> b!4056132 m!4659701))

(declare-fun m!4659703 () Bool)

(assert (=> b!4056133 m!4659703))

(assert (=> b!4056133 m!4659449))

(declare-fun m!4659705 () Bool)

(assert (=> b!4056133 m!4659705))

(declare-fun m!4659707 () Bool)

(assert (=> d!1204891 m!4659707))

(assert (=> d!1204891 m!4659483))

(declare-fun m!4659709 () Bool)

(assert (=> d!1204891 m!4659709))

(assert (=> b!4055918 d!1204891))

(declare-fun b!4056136 () Bool)

(declare-fun e!2517012 () List!43481)

(assert (=> b!4056136 (= e!2517012 (Cons!43357 (h!48777 lt!1447925) (++!11358 (t!336238 lt!1447925) lt!1447911)))))

(declare-fun b!4056135 () Bool)

(assert (=> b!4056135 (= e!2517012 lt!1447911)))

(declare-fun b!4056137 () Bool)

(declare-fun res!1653862 () Bool)

(declare-fun e!2517013 () Bool)

(assert (=> b!4056137 (=> (not res!1653862) (not e!2517013))))

(declare-fun lt!1448003 () List!43481)

(assert (=> b!4056137 (= res!1653862 (= (size!32416 lt!1448003) (+ (size!32416 lt!1447925) (size!32416 lt!1447911))))))

(declare-fun d!1204893 () Bool)

(assert (=> d!1204893 e!2517013))

(declare-fun res!1653861 () Bool)

(assert (=> d!1204893 (=> (not res!1653861) (not e!2517013))))

(assert (=> d!1204893 (= res!1653861 (= (content!6604 lt!1448003) ((_ map or) (content!6604 lt!1447925) (content!6604 lt!1447911))))))

(assert (=> d!1204893 (= lt!1448003 e!2517012)))

(declare-fun c!700530 () Bool)

(assert (=> d!1204893 (= c!700530 ((_ is Nil!43357) lt!1447925))))

(assert (=> d!1204893 (= (++!11358 lt!1447925 lt!1447911) lt!1448003)))

(declare-fun b!4056138 () Bool)

(assert (=> b!4056138 (= e!2517013 (or (not (= lt!1447911 Nil!43357)) (= lt!1448003 lt!1447925)))))

(assert (= (and d!1204893 c!700530) b!4056135))

(assert (= (and d!1204893 (not c!700530)) b!4056136))

(assert (= (and d!1204893 res!1653861) b!4056137))

(assert (= (and b!4056137 res!1653862) b!4056138))

(declare-fun m!4659711 () Bool)

(assert (=> b!4056136 m!4659711))

(declare-fun m!4659713 () Bool)

(assert (=> b!4056137 m!4659713))

(declare-fun m!4659715 () Bool)

(assert (=> b!4056137 m!4659715))

(declare-fun m!4659717 () Bool)

(assert (=> b!4056137 m!4659717))

(declare-fun m!4659719 () Bool)

(assert (=> d!1204893 m!4659719))

(declare-fun m!4659721 () Bool)

(assert (=> d!1204893 m!4659721))

(declare-fun m!4659723 () Bool)

(assert (=> d!1204893 m!4659723))

(assert (=> b!4055918 d!1204893))

(declare-fun d!1204895 () Bool)

(assert (=> d!1204895 (= (++!11358 (++!11358 prefix!494 newSuffix!27) lt!1447911) (++!11358 prefix!494 (++!11358 newSuffix!27 lt!1447911)))))

(declare-fun lt!1448004 () Unit!62712)

(assert (=> d!1204895 (= lt!1448004 (choose!24620 prefix!494 newSuffix!27 lt!1447911))))

(assert (=> d!1204895 (= (lemmaConcatAssociativity!2660 prefix!494 newSuffix!27 lt!1447911) lt!1448004)))

(declare-fun bs!591788 () Bool)

(assert (= bs!591788 d!1204895))

(declare-fun m!4659725 () Bool)

(assert (=> bs!591788 m!4659725))

(assert (=> bs!591788 m!4659355))

(declare-fun m!4659727 () Bool)

(assert (=> bs!591788 m!4659727))

(assert (=> bs!591788 m!4659355))

(assert (=> bs!591788 m!4659461))

(declare-fun m!4659729 () Bool)

(assert (=> bs!591788 m!4659729))

(assert (=> bs!591788 m!4659461))

(assert (=> b!4055918 d!1204895))

(declare-fun d!1204897 () Bool)

(declare-fun res!1653867 () Bool)

(declare-fun e!2517016 () Bool)

(assert (=> d!1204897 (=> (not res!1653867) (not e!2517016))))

(assert (=> d!1204897 (= res!1653867 (not (isEmpty!25871 (originalCharacters!7556 token!484))))))

(assert (=> d!1204897 (= (inv!57960 token!484) e!2517016)))

(declare-fun b!4056143 () Bool)

(declare-fun res!1653868 () Bool)

(assert (=> b!4056143 (=> (not res!1653868) (not e!2517016))))

(declare-fun dynLambda!18417 (Int TokenValue!7186) BalanceConc!25928)

(assert (=> b!4056143 (= res!1653868 (= (originalCharacters!7556 token!484) (list!16156 (dynLambda!18417 (toChars!9371 (transformation!6956 (rule!10042 token!484))) (value!218880 token!484)))))))

(declare-fun b!4056144 () Bool)

(assert (=> b!4056144 (= e!2517016 (= (size!32415 token!484) (size!32416 (originalCharacters!7556 token!484))))))

(assert (= (and d!1204897 res!1653867) b!4056143))

(assert (= (and b!4056143 res!1653868) b!4056144))

(declare-fun b_lambda!118509 () Bool)

(assert (=> (not b_lambda!118509) (not b!4056143)))

(declare-fun tb!243989 () Bool)

(declare-fun t!336246 () Bool)

(assert (=> (and b!4055892 (= (toChars!9371 (transformation!6956 (h!48779 rules!2999))) (toChars!9371 (transformation!6956 (rule!10042 token!484)))) t!336246) tb!243989))

(declare-fun b!4056149 () Bool)

(declare-fun e!2517019 () Bool)

(declare-fun tp!1229414 () Bool)

(declare-fun inv!57963 (Conc!13167) Bool)

(assert (=> b!4056149 (= e!2517019 (and (inv!57963 (c!700484 (dynLambda!18417 (toChars!9371 (transformation!6956 (rule!10042 token!484))) (value!218880 token!484)))) tp!1229414))))

(declare-fun result!295644 () Bool)

(declare-fun inv!57964 (BalanceConc!25928) Bool)

(assert (=> tb!243989 (= result!295644 (and (inv!57964 (dynLambda!18417 (toChars!9371 (transformation!6956 (rule!10042 token!484))) (value!218880 token!484))) e!2517019))))

(assert (= tb!243989 b!4056149))

(declare-fun m!4659731 () Bool)

(assert (=> b!4056149 m!4659731))

(declare-fun m!4659733 () Bool)

(assert (=> tb!243989 m!4659733))

(assert (=> b!4056143 t!336246))

(declare-fun b_and!311887 () Bool)

(assert (= b_and!311877 (and (=> t!336246 result!295644) b_and!311887)))

(declare-fun t!336248 () Bool)

(declare-fun tb!243991 () Bool)

(assert (=> (and b!4055919 (= (toChars!9371 (transformation!6956 (rule!10042 token!484))) (toChars!9371 (transformation!6956 (rule!10042 token!484)))) t!336248) tb!243991))

(declare-fun result!295648 () Bool)

(assert (= result!295648 result!295644))

(assert (=> b!4056143 t!336248))

(declare-fun b_and!311889 () Bool)

(assert (= b_and!311881 (and (=> t!336248 result!295648) b_and!311889)))

(declare-fun m!4659735 () Bool)

(assert (=> d!1204897 m!4659735))

(declare-fun m!4659737 () Bool)

(assert (=> b!4056143 m!4659737))

(assert (=> b!4056143 m!4659737))

(declare-fun m!4659739 () Bool)

(assert (=> b!4056143 m!4659739))

(assert (=> b!4056144 m!4659413))

(assert (=> start!382448 d!1204897))

(declare-fun b!4056207 () Bool)

(declare-fun e!2517045 () Bool)

(declare-fun e!2517044 () Bool)

(assert (=> b!4056207 (= e!2517045 e!2517044)))

(declare-fun res!1653916 () Bool)

(assert (=> b!4056207 (=> (not res!1653916) (not e!2517044))))

(declare-fun lt!1448033 () Option!9370)

(declare-fun isDefined!7118 (Option!9370) Bool)

(assert (=> b!4056207 (= res!1653916 (isDefined!7118 lt!1448033))))

(declare-fun b!4056208 () Bool)

(declare-fun res!1653920 () Bool)

(assert (=> b!4056208 (=> (not res!1653920) (not e!2517044))))

(declare-fun get!14220 (Option!9370) tuple2!42418)

(assert (=> b!4056208 (= res!1653920 (= (++!11358 (list!16156 (charsOf!4772 (_1!24343 (get!14220 lt!1448033)))) (_2!24343 (get!14220 lt!1448033))) lt!1447925))))

(declare-fun b!4056209 () Bool)

(declare-fun e!2517046 () Option!9370)

(declare-fun lt!1448034 () Option!9370)

(declare-fun lt!1448036 () Option!9370)

(assert (=> b!4056209 (= e!2517046 (ite (and ((_ is None!9369) lt!1448034) ((_ is None!9369) lt!1448036)) None!9369 (ite ((_ is None!9369) lt!1448036) lt!1448034 (ite ((_ is None!9369) lt!1448034) lt!1448036 (ite (>= (size!32415 (_1!24343 (v!39783 lt!1448034))) (size!32415 (_1!24343 (v!39783 lt!1448036)))) lt!1448034 lt!1448036)))))))

(declare-fun call!288031 () Option!9370)

(assert (=> b!4056209 (= lt!1448034 call!288031)))

(assert (=> b!4056209 (= lt!1448036 (maxPrefix!3843 thiss!21717 (t!336240 rules!2999) lt!1447925))))

(declare-fun bm!288026 () Bool)

(assert (=> bm!288026 (= call!288031 (maxPrefixOneRule!2855 thiss!21717 (h!48779 rules!2999) lt!1447925))))

(declare-fun b!4056210 () Bool)

(declare-fun res!1653915 () Bool)

(assert (=> b!4056210 (=> (not res!1653915) (not e!2517044))))

(assert (=> b!4056210 (= res!1653915 (= (list!16156 (charsOf!4772 (_1!24343 (get!14220 lt!1448033)))) (originalCharacters!7556 (_1!24343 (get!14220 lt!1448033)))))))

(declare-fun d!1204899 () Bool)

(assert (=> d!1204899 e!2517045))

(declare-fun res!1653917 () Bool)

(assert (=> d!1204899 (=> res!1653917 e!2517045)))

(declare-fun isEmpty!25873 (Option!9370) Bool)

(assert (=> d!1204899 (= res!1653917 (isEmpty!25873 lt!1448033))))

(assert (=> d!1204899 (= lt!1448033 e!2517046)))

(declare-fun c!700536 () Bool)

(assert (=> d!1204899 (= c!700536 (and ((_ is Cons!43359) rules!2999) ((_ is Nil!43359) (t!336240 rules!2999))))))

(declare-fun lt!1448037 () Unit!62712)

(declare-fun lt!1448035 () Unit!62712)

(assert (=> d!1204899 (= lt!1448037 lt!1448035)))

(assert (=> d!1204899 (isPrefix!4043 lt!1447925 lt!1447925)))

(assert (=> d!1204899 (= lt!1448035 (lemmaIsPrefixRefl!2610 lt!1447925 lt!1447925))))

(declare-fun rulesValidInductive!2539 (LexerInterface!6545 List!43483) Bool)

(assert (=> d!1204899 (rulesValidInductive!2539 thiss!21717 rules!2999)))

(assert (=> d!1204899 (= (maxPrefix!3843 thiss!21717 rules!2999 lt!1447925) lt!1448033)))

(declare-fun b!4056211 () Bool)

(declare-fun res!1653919 () Bool)

(assert (=> b!4056211 (=> (not res!1653919) (not e!2517044))))

(assert (=> b!4056211 (= res!1653919 (matchR!5814 (regex!6956 (rule!10042 (_1!24343 (get!14220 lt!1448033)))) (list!16156 (charsOf!4772 (_1!24343 (get!14220 lt!1448033))))))))

(declare-fun b!4056212 () Bool)

(declare-fun res!1653918 () Bool)

(assert (=> b!4056212 (=> (not res!1653918) (not e!2517044))))

(assert (=> b!4056212 (= res!1653918 (< (size!32416 (_2!24343 (get!14220 lt!1448033))) (size!32416 lt!1447925)))))

(declare-fun b!4056213 () Bool)

(assert (=> b!4056213 (= e!2517046 call!288031)))

(declare-fun b!4056214 () Bool)

(declare-fun res!1653914 () Bool)

(assert (=> b!4056214 (=> (not res!1653914) (not e!2517044))))

(assert (=> b!4056214 (= res!1653914 (= (value!218880 (_1!24343 (get!14220 lt!1448033))) (apply!10145 (transformation!6956 (rule!10042 (_1!24343 (get!14220 lt!1448033)))) (seqFromList!5173 (originalCharacters!7556 (_1!24343 (get!14220 lt!1448033)))))))))

(declare-fun b!4056215 () Bool)

(assert (=> b!4056215 (= e!2517044 (contains!8624 rules!2999 (rule!10042 (_1!24343 (get!14220 lt!1448033)))))))

(assert (= (and d!1204899 c!700536) b!4056213))

(assert (= (and d!1204899 (not c!700536)) b!4056209))

(assert (= (or b!4056213 b!4056209) bm!288026))

(assert (= (and d!1204899 (not res!1653917)) b!4056207))

(assert (= (and b!4056207 res!1653916) b!4056210))

(assert (= (and b!4056210 res!1653915) b!4056212))

(assert (= (and b!4056212 res!1653918) b!4056208))

(assert (= (and b!4056208 res!1653920) b!4056214))

(assert (= (and b!4056214 res!1653914) b!4056211))

(assert (= (and b!4056211 res!1653919) b!4056215))

(declare-fun m!4659793 () Bool)

(assert (=> d!1204899 m!4659793))

(declare-fun m!4659795 () Bool)

(assert (=> d!1204899 m!4659795))

(declare-fun m!4659797 () Bool)

(assert (=> d!1204899 m!4659797))

(declare-fun m!4659799 () Bool)

(assert (=> d!1204899 m!4659799))

(declare-fun m!4659801 () Bool)

(assert (=> b!4056215 m!4659801))

(declare-fun m!4659803 () Bool)

(assert (=> b!4056215 m!4659803))

(declare-fun m!4659805 () Bool)

(assert (=> b!4056209 m!4659805))

(assert (=> b!4056212 m!4659801))

(declare-fun m!4659807 () Bool)

(assert (=> b!4056212 m!4659807))

(assert (=> b!4056212 m!4659715))

(assert (=> b!4056214 m!4659801))

(declare-fun m!4659809 () Bool)

(assert (=> b!4056214 m!4659809))

(assert (=> b!4056214 m!4659809))

(declare-fun m!4659811 () Bool)

(assert (=> b!4056214 m!4659811))

(declare-fun m!4659813 () Bool)

(assert (=> b!4056207 m!4659813))

(assert (=> b!4056211 m!4659801))

(declare-fun m!4659815 () Bool)

(assert (=> b!4056211 m!4659815))

(assert (=> b!4056211 m!4659815))

(declare-fun m!4659817 () Bool)

(assert (=> b!4056211 m!4659817))

(assert (=> b!4056211 m!4659817))

(declare-fun m!4659819 () Bool)

(assert (=> b!4056211 m!4659819))

(assert (=> b!4056208 m!4659801))

(assert (=> b!4056208 m!4659815))

(assert (=> b!4056208 m!4659815))

(assert (=> b!4056208 m!4659817))

(assert (=> b!4056208 m!4659817))

(declare-fun m!4659821 () Bool)

(assert (=> b!4056208 m!4659821))

(declare-fun m!4659823 () Bool)

(assert (=> bm!288026 m!4659823))

(assert (=> b!4056210 m!4659801))

(assert (=> b!4056210 m!4659815))

(assert (=> b!4056210 m!4659815))

(assert (=> b!4056210 m!4659817))

(assert (=> b!4055876 d!1204899))

(declare-fun d!1204915 () Bool)

(assert (=> d!1204915 (= suffixResult!105 lt!1447892)))

(declare-fun lt!1448040 () Unit!62712)

(declare-fun choose!24623 (List!43481 List!43481 List!43481 List!43481 List!43481) Unit!62712)

(assert (=> d!1204915 (= lt!1448040 (choose!24623 lt!1447889 suffixResult!105 lt!1447889 lt!1447892 lt!1447918))))

(assert (=> d!1204915 (isPrefix!4043 lt!1447889 lt!1447918)))

(assert (=> d!1204915 (= (lemmaSamePrefixThenSameSuffix!2204 lt!1447889 suffixResult!105 lt!1447889 lt!1447892 lt!1447918) lt!1448040)))

(declare-fun bs!591792 () Bool)

(assert (= bs!591792 d!1204915))

(declare-fun m!4659825 () Bool)

(assert (=> bs!591792 m!4659825))

(assert (=> bs!591792 m!4659419))

(assert (=> b!4055876 d!1204915))

(declare-fun b!4056216 () Bool)

(declare-fun e!2517048 () Bool)

(declare-fun e!2517049 () Bool)

(assert (=> b!4056216 (= e!2517048 e!2517049)))

(declare-fun res!1653923 () Bool)

(assert (=> b!4056216 (=> (not res!1653923) (not e!2517049))))

(assert (=> b!4056216 (= res!1653923 (not ((_ is Nil!43357) lt!1447888)))))

(declare-fun b!4056219 () Bool)

(declare-fun e!2517047 () Bool)

(assert (=> b!4056219 (= e!2517047 (>= (size!32416 lt!1447888) (size!32416 lt!1447889)))))

(declare-fun d!1204917 () Bool)

(assert (=> d!1204917 e!2517047))

(declare-fun res!1653924 () Bool)

(assert (=> d!1204917 (=> res!1653924 e!2517047)))

(declare-fun lt!1448041 () Bool)

(assert (=> d!1204917 (= res!1653924 (not lt!1448041))))

(assert (=> d!1204917 (= lt!1448041 e!2517048)))

(declare-fun res!1653922 () Bool)

(assert (=> d!1204917 (=> res!1653922 e!2517048)))

(assert (=> d!1204917 (= res!1653922 ((_ is Nil!43357) lt!1447889))))

(assert (=> d!1204917 (= (isPrefix!4043 lt!1447889 lt!1447888) lt!1448041)))

(declare-fun b!4056218 () Bool)

(assert (=> b!4056218 (= e!2517049 (isPrefix!4043 (tail!6299 lt!1447889) (tail!6299 lt!1447888)))))

(declare-fun b!4056217 () Bool)

(declare-fun res!1653921 () Bool)

(assert (=> b!4056217 (=> (not res!1653921) (not e!2517049))))

(assert (=> b!4056217 (= res!1653921 (= (head!8567 lt!1447889) (head!8567 lt!1447888)))))

(assert (= (and d!1204917 (not res!1653922)) b!4056216))

(assert (= (and b!4056216 res!1653923) b!4056217))

(assert (= (and b!4056217 res!1653921) b!4056218))

(assert (= (and d!1204917 (not res!1653924)) b!4056219))

(declare-fun m!4659827 () Bool)

(assert (=> b!4056219 m!4659827))

(assert (=> b!4056219 m!4659447))

(declare-fun m!4659829 () Bool)

(assert (=> b!4056218 m!4659829))

(declare-fun m!4659831 () Bool)

(assert (=> b!4056218 m!4659831))

(assert (=> b!4056218 m!4659829))

(assert (=> b!4056218 m!4659831))

(declare-fun m!4659833 () Bool)

(assert (=> b!4056218 m!4659833))

(declare-fun m!4659835 () Bool)

(assert (=> b!4056217 m!4659835))

(declare-fun m!4659837 () Bool)

(assert (=> b!4056217 m!4659837))

(assert (=> b!4055876 d!1204917))

(declare-fun d!1204919 () Bool)

(assert (=> d!1204919 (isPrefix!4043 lt!1447889 (++!11358 lt!1447889 lt!1447892))))

(declare-fun lt!1448052 () Unit!62712)

(declare-fun choose!24624 (List!43481 List!43481) Unit!62712)

(assert (=> d!1204919 (= lt!1448052 (choose!24624 lt!1447889 lt!1447892))))

(assert (=> d!1204919 (= (lemmaConcatTwoListThenFirstIsPrefix!2878 lt!1447889 lt!1447892) lt!1448052)))

(declare-fun bs!591793 () Bool)

(assert (= bs!591793 d!1204919))

(assert (=> bs!591793 m!4659433))

(assert (=> bs!591793 m!4659433))

(declare-fun m!4659839 () Bool)

(assert (=> bs!591793 m!4659839))

(declare-fun m!4659841 () Bool)

(assert (=> bs!591793 m!4659841))

(assert (=> b!4055876 d!1204919))

(declare-fun b!4056226 () Bool)

(declare-fun e!2517055 () Bool)

(declare-fun e!2517054 () Bool)

(assert (=> b!4056226 (= e!2517055 e!2517054)))

(declare-fun res!1653929 () Bool)

(assert (=> b!4056226 (=> (not res!1653929) (not e!2517054))))

(declare-fun lt!1448055 () Option!9370)

(assert (=> b!4056226 (= res!1653929 (isDefined!7118 lt!1448055))))

(declare-fun b!4056227 () Bool)

(declare-fun res!1653933 () Bool)

(assert (=> b!4056227 (=> (not res!1653933) (not e!2517054))))

(assert (=> b!4056227 (= res!1653933 (= (++!11358 (list!16156 (charsOf!4772 (_1!24343 (get!14220 lt!1448055)))) (_2!24343 (get!14220 lt!1448055))) lt!1447918))))

(declare-fun b!4056228 () Bool)

(declare-fun e!2517056 () Option!9370)

(declare-fun lt!1448056 () Option!9370)

(declare-fun lt!1448058 () Option!9370)

(assert (=> b!4056228 (= e!2517056 (ite (and ((_ is None!9369) lt!1448056) ((_ is None!9369) lt!1448058)) None!9369 (ite ((_ is None!9369) lt!1448058) lt!1448056 (ite ((_ is None!9369) lt!1448056) lt!1448058 (ite (>= (size!32415 (_1!24343 (v!39783 lt!1448056))) (size!32415 (_1!24343 (v!39783 lt!1448058)))) lt!1448056 lt!1448058)))))))

(declare-fun call!288032 () Option!9370)

(assert (=> b!4056228 (= lt!1448056 call!288032)))

(assert (=> b!4056228 (= lt!1448058 (maxPrefix!3843 thiss!21717 (t!336240 rules!2999) lt!1447918))))

(declare-fun bm!288027 () Bool)

(assert (=> bm!288027 (= call!288032 (maxPrefixOneRule!2855 thiss!21717 (h!48779 rules!2999) lt!1447918))))

(declare-fun b!4056229 () Bool)

(declare-fun res!1653928 () Bool)

(assert (=> b!4056229 (=> (not res!1653928) (not e!2517054))))

(assert (=> b!4056229 (= res!1653928 (= (list!16156 (charsOf!4772 (_1!24343 (get!14220 lt!1448055)))) (originalCharacters!7556 (_1!24343 (get!14220 lt!1448055)))))))

(declare-fun d!1204921 () Bool)

(assert (=> d!1204921 e!2517055))

(declare-fun res!1653930 () Bool)

(assert (=> d!1204921 (=> res!1653930 e!2517055)))

(assert (=> d!1204921 (= res!1653930 (isEmpty!25873 lt!1448055))))

(assert (=> d!1204921 (= lt!1448055 e!2517056)))

(declare-fun c!700539 () Bool)

(assert (=> d!1204921 (= c!700539 (and ((_ is Cons!43359) rules!2999) ((_ is Nil!43359) (t!336240 rules!2999))))))

(declare-fun lt!1448059 () Unit!62712)

(declare-fun lt!1448057 () Unit!62712)

(assert (=> d!1204921 (= lt!1448059 lt!1448057)))

(assert (=> d!1204921 (isPrefix!4043 lt!1447918 lt!1447918)))

(assert (=> d!1204921 (= lt!1448057 (lemmaIsPrefixRefl!2610 lt!1447918 lt!1447918))))

(assert (=> d!1204921 (rulesValidInductive!2539 thiss!21717 rules!2999)))

(assert (=> d!1204921 (= (maxPrefix!3843 thiss!21717 rules!2999 lt!1447918) lt!1448055)))

(declare-fun b!4056230 () Bool)

(declare-fun res!1653932 () Bool)

(assert (=> b!4056230 (=> (not res!1653932) (not e!2517054))))

(assert (=> b!4056230 (= res!1653932 (matchR!5814 (regex!6956 (rule!10042 (_1!24343 (get!14220 lt!1448055)))) (list!16156 (charsOf!4772 (_1!24343 (get!14220 lt!1448055))))))))

(declare-fun b!4056231 () Bool)

(declare-fun res!1653931 () Bool)

(assert (=> b!4056231 (=> (not res!1653931) (not e!2517054))))

(assert (=> b!4056231 (= res!1653931 (< (size!32416 (_2!24343 (get!14220 lt!1448055))) (size!32416 lt!1447918)))))

(declare-fun b!4056232 () Bool)

(assert (=> b!4056232 (= e!2517056 call!288032)))

(declare-fun b!4056233 () Bool)

(declare-fun res!1653927 () Bool)

(assert (=> b!4056233 (=> (not res!1653927) (not e!2517054))))

(assert (=> b!4056233 (= res!1653927 (= (value!218880 (_1!24343 (get!14220 lt!1448055))) (apply!10145 (transformation!6956 (rule!10042 (_1!24343 (get!14220 lt!1448055)))) (seqFromList!5173 (originalCharacters!7556 (_1!24343 (get!14220 lt!1448055)))))))))

(declare-fun b!4056234 () Bool)

(assert (=> b!4056234 (= e!2517054 (contains!8624 rules!2999 (rule!10042 (_1!24343 (get!14220 lt!1448055)))))))

(assert (= (and d!1204921 c!700539) b!4056232))

(assert (= (and d!1204921 (not c!700539)) b!4056228))

(assert (= (or b!4056232 b!4056228) bm!288027))

(assert (= (and d!1204921 (not res!1653930)) b!4056226))

(assert (= (and b!4056226 res!1653929) b!4056229))

(assert (= (and b!4056229 res!1653928) b!4056231))

(assert (= (and b!4056231 res!1653931) b!4056227))

(assert (= (and b!4056227 res!1653933) b!4056233))

(assert (= (and b!4056233 res!1653927) b!4056230))

(assert (= (and b!4056230 res!1653932) b!4056234))

(declare-fun m!4659843 () Bool)

(assert (=> d!1204921 m!4659843))

(assert (=> d!1204921 m!4659437))

(assert (=> d!1204921 m!4659439))

(assert (=> d!1204921 m!4659799))

(declare-fun m!4659845 () Bool)

(assert (=> b!4056234 m!4659845))

(declare-fun m!4659847 () Bool)

(assert (=> b!4056234 m!4659847))

(declare-fun m!4659849 () Bool)

(assert (=> b!4056228 m!4659849))

(assert (=> b!4056231 m!4659845))

(declare-fun m!4659851 () Bool)

(assert (=> b!4056231 m!4659851))

(assert (=> b!4056231 m!4659499))

(assert (=> b!4056233 m!4659845))

(declare-fun m!4659853 () Bool)

(assert (=> b!4056233 m!4659853))

(assert (=> b!4056233 m!4659853))

(declare-fun m!4659855 () Bool)

(assert (=> b!4056233 m!4659855))

(declare-fun m!4659857 () Bool)

(assert (=> b!4056226 m!4659857))

(assert (=> b!4056230 m!4659845))

(declare-fun m!4659859 () Bool)

(assert (=> b!4056230 m!4659859))

(assert (=> b!4056230 m!4659859))

(declare-fun m!4659861 () Bool)

(assert (=> b!4056230 m!4659861))

(assert (=> b!4056230 m!4659861))

(declare-fun m!4659863 () Bool)

(assert (=> b!4056230 m!4659863))

(assert (=> b!4056227 m!4659845))

(assert (=> b!4056227 m!4659859))

(assert (=> b!4056227 m!4659859))

(assert (=> b!4056227 m!4659861))

(assert (=> b!4056227 m!4659861))

(declare-fun m!4659865 () Bool)

(assert (=> b!4056227 m!4659865))

(declare-fun m!4659867 () Bool)

(assert (=> bm!288027 m!4659867))

(assert (=> b!4056229 m!4659845))

(assert (=> b!4056229 m!4659859))

(assert (=> b!4056229 m!4659859))

(assert (=> b!4056229 m!4659861))

(assert (=> b!4055888 d!1204921))

(declare-fun b!4056248 () Bool)

(declare-fun e!2517061 () List!43481)

(assert (=> b!4056248 (= e!2517061 (Cons!43357 (h!48777 prefix!494) (++!11358 (t!336238 prefix!494) suffix!1299)))))

(declare-fun b!4056247 () Bool)

(assert (=> b!4056247 (= e!2517061 suffix!1299)))

(declare-fun b!4056249 () Bool)

(declare-fun res!1653947 () Bool)

(declare-fun e!2517062 () Bool)

(assert (=> b!4056249 (=> (not res!1653947) (not e!2517062))))

(declare-fun lt!1448060 () List!43481)

(assert (=> b!4056249 (= res!1653947 (= (size!32416 lt!1448060) (+ (size!32416 prefix!494) (size!32416 suffix!1299))))))

(declare-fun d!1204923 () Bool)

(assert (=> d!1204923 e!2517062))

(declare-fun res!1653946 () Bool)

(assert (=> d!1204923 (=> (not res!1653946) (not e!2517062))))

(assert (=> d!1204923 (= res!1653946 (= (content!6604 lt!1448060) ((_ map or) (content!6604 prefix!494) (content!6604 suffix!1299))))))

(assert (=> d!1204923 (= lt!1448060 e!2517061)))

(declare-fun c!700540 () Bool)

(assert (=> d!1204923 (= c!700540 ((_ is Nil!43357) prefix!494))))

(assert (=> d!1204923 (= (++!11358 prefix!494 suffix!1299) lt!1448060)))

(declare-fun b!4056250 () Bool)

(assert (=> b!4056250 (= e!2517062 (or (not (= suffix!1299 Nil!43357)) (= lt!1448060 prefix!494)))))

(assert (= (and d!1204923 c!700540) b!4056247))

(assert (= (and d!1204923 (not c!700540)) b!4056248))

(assert (= (and d!1204923 res!1653946) b!4056249))

(assert (= (and b!4056249 res!1653947) b!4056250))

(declare-fun m!4659869 () Bool)

(assert (=> b!4056248 m!4659869))

(declare-fun m!4659871 () Bool)

(assert (=> b!4056249 m!4659871))

(assert (=> b!4056249 m!4659449))

(assert (=> b!4056249 m!4659409))

(declare-fun m!4659873 () Bool)

(assert (=> d!1204923 m!4659873))

(assert (=> d!1204923 m!4659483))

(assert (=> d!1204923 m!4659677))

(assert (=> b!4055888 d!1204923))

(declare-fun d!1204925 () Bool)

(declare-fun lt!1448068 () Int)

(assert (=> d!1204925 (>= lt!1448068 0)))

(declare-fun e!2517073 () Int)

(assert (=> d!1204925 (= lt!1448068 e!2517073)))

(declare-fun c!700547 () Bool)

(assert (=> d!1204925 (= c!700547 (and ((_ is Cons!43359) rules!2999) (= (h!48779 rules!2999) (rule!10042 (_1!24343 (v!39783 lt!1447926))))))))

(assert (=> d!1204925 (contains!8624 rules!2999 (rule!10042 (_1!24343 (v!39783 lt!1447926))))))

(assert (=> d!1204925 (= (getIndex!568 rules!2999 (rule!10042 (_1!24343 (v!39783 lt!1447926)))) lt!1448068)))

(declare-fun b!4056269 () Bool)

(declare-fun e!2517072 () Int)

(assert (=> b!4056269 (= e!2517073 e!2517072)))

(declare-fun c!700546 () Bool)

(assert (=> b!4056269 (= c!700546 (and ((_ is Cons!43359) rules!2999) (not (= (h!48779 rules!2999) (rule!10042 (_1!24343 (v!39783 lt!1447926)))))))))

(declare-fun b!4056270 () Bool)

(assert (=> b!4056270 (= e!2517072 (+ 1 (getIndex!568 (t!336240 rules!2999) (rule!10042 (_1!24343 (v!39783 lt!1447926))))))))

(declare-fun b!4056268 () Bool)

(assert (=> b!4056268 (= e!2517073 0)))

(declare-fun b!4056271 () Bool)

(assert (=> b!4056271 (= e!2517072 (- 1))))

(assert (= (and d!1204925 c!700547) b!4056268))

(assert (= (and d!1204925 (not c!700547)) b!4056269))

(assert (= (and b!4056269 c!700546) b!4056270))

(assert (= (and b!4056269 (not c!700546)) b!4056271))

(assert (=> d!1204925 m!4659417))

(declare-fun m!4659875 () Bool)

(assert (=> b!4056270 m!4659875))

(assert (=> b!4055889 d!1204925))

(declare-fun d!1204927 () Bool)

(declare-fun lt!1448069 () Int)

(assert (=> d!1204927 (>= lt!1448069 0)))

(declare-fun e!2517075 () Int)

(assert (=> d!1204927 (= lt!1448069 e!2517075)))

(declare-fun c!700549 () Bool)

(assert (=> d!1204927 (= c!700549 (and ((_ is Cons!43359) rules!2999) (= (h!48779 rules!2999) (rule!10042 token!484))))))

(assert (=> d!1204927 (contains!8624 rules!2999 (rule!10042 token!484))))

(assert (=> d!1204927 (= (getIndex!568 rules!2999 (rule!10042 token!484)) lt!1448069)))

(declare-fun b!4056273 () Bool)

(declare-fun e!2517074 () Int)

(assert (=> b!4056273 (= e!2517075 e!2517074)))

(declare-fun c!700548 () Bool)

(assert (=> b!4056273 (= c!700548 (and ((_ is Cons!43359) rules!2999) (not (= (h!48779 rules!2999) (rule!10042 token!484)))))))

(declare-fun b!4056274 () Bool)

(assert (=> b!4056274 (= e!2517074 (+ 1 (getIndex!568 (t!336240 rules!2999) (rule!10042 token!484))))))

(declare-fun b!4056272 () Bool)

(assert (=> b!4056272 (= e!2517075 0)))

(declare-fun b!4056275 () Bool)

(assert (=> b!4056275 (= e!2517074 (- 1))))

(assert (= (and d!1204927 c!700549) b!4056272))

(assert (= (and d!1204927 (not c!700549)) b!4056273))

(assert (= (and b!4056273 c!700548) b!4056274))

(assert (= (and b!4056273 (not c!700548)) b!4056275))

(assert (=> d!1204927 m!4659287))

(declare-fun m!4659877 () Bool)

(assert (=> b!4056274 m!4659877))

(assert (=> b!4055889 d!1204927))

(declare-fun d!1204929 () Bool)

(assert (=> d!1204929 (= (_2!24343 (v!39783 lt!1447926)) newSuffixResult!27)))

(declare-fun lt!1448070 () Unit!62712)

(assert (=> d!1204929 (= lt!1448070 (choose!24623 lt!1447907 (_2!24343 (v!39783 lt!1447926)) lt!1447889 newSuffixResult!27 lt!1447925))))

(assert (=> d!1204929 (isPrefix!4043 lt!1447907 lt!1447925)))

(assert (=> d!1204929 (= (lemmaSamePrefixThenSameSuffix!2204 lt!1447907 (_2!24343 (v!39783 lt!1447926)) lt!1447889 newSuffixResult!27 lt!1447925) lt!1448070)))

(declare-fun bs!591794 () Bool)

(assert (= bs!591794 d!1204929))

(declare-fun m!4659879 () Bool)

(assert (=> bs!591794 m!4659879))

(assert (=> bs!591794 m!4659337))

(assert (=> b!4055889 d!1204929))

(declare-fun d!1204931 () Bool)

(assert (=> d!1204931 (= lt!1447907 lt!1447889)))

(declare-fun lt!1448073 () Unit!62712)

(declare-fun choose!24625 (List!43481 List!43481 List!43481) Unit!62712)

(assert (=> d!1204931 (= lt!1448073 (choose!24625 lt!1447907 lt!1447889 lt!1447925))))

(assert (=> d!1204931 (isPrefix!4043 lt!1447907 lt!1447925)))

(assert (=> d!1204931 (= (lemmaIsPrefixSameLengthThenSameList!933 lt!1447907 lt!1447889 lt!1447925) lt!1448073)))

(declare-fun bs!591795 () Bool)

(assert (= bs!591795 d!1204931))

(declare-fun m!4659909 () Bool)

(assert (=> bs!591795 m!4659909))

(assert (=> bs!591795 m!4659337))

(assert (=> b!4055889 d!1204931))

(declare-fun d!1204933 () Bool)

(assert (=> d!1204933 (isPrefix!4043 lt!1447889 (++!11358 lt!1447889 suffixResult!105))))

(declare-fun lt!1448074 () Unit!62712)

(assert (=> d!1204933 (= lt!1448074 (choose!24624 lt!1447889 suffixResult!105))))

(assert (=> d!1204933 (= (lemmaConcatTwoListThenFirstIsPrefix!2878 lt!1447889 suffixResult!105) lt!1448074)))

(declare-fun bs!591796 () Bool)

(assert (= bs!591796 d!1204933))

(assert (=> bs!591796 m!4659339))

(assert (=> bs!591796 m!4659339))

(declare-fun m!4659919 () Bool)

(assert (=> bs!591796 m!4659919))

(declare-fun m!4659921 () Bool)

(assert (=> bs!591796 m!4659921))

(assert (=> b!4055911 d!1204933))

(declare-fun b!4056276 () Bool)

(declare-fun e!2517077 () Bool)

(declare-fun e!2517078 () Bool)

(assert (=> b!4056276 (= e!2517077 e!2517078)))

(declare-fun res!1653957 () Bool)

(assert (=> b!4056276 (=> (not res!1653957) (not e!2517078))))

(assert (=> b!4056276 (= res!1653957 (not ((_ is Nil!43357) lt!1447918)))))

(declare-fun b!4056279 () Bool)

(declare-fun e!2517076 () Bool)

(assert (=> b!4056279 (= e!2517076 (>= (size!32416 lt!1447918) (size!32416 lt!1447889)))))

(declare-fun d!1204935 () Bool)

(assert (=> d!1204935 e!2517076))

(declare-fun res!1653958 () Bool)

(assert (=> d!1204935 (=> res!1653958 e!2517076)))

(declare-fun lt!1448075 () Bool)

(assert (=> d!1204935 (= res!1653958 (not lt!1448075))))

(assert (=> d!1204935 (= lt!1448075 e!2517077)))

(declare-fun res!1653956 () Bool)

(assert (=> d!1204935 (=> res!1653956 e!2517077)))

(assert (=> d!1204935 (= res!1653956 ((_ is Nil!43357) lt!1447889))))

(assert (=> d!1204935 (= (isPrefix!4043 lt!1447889 lt!1447918) lt!1448075)))

(declare-fun b!4056278 () Bool)

(assert (=> b!4056278 (= e!2517078 (isPrefix!4043 (tail!6299 lt!1447889) (tail!6299 lt!1447918)))))

(declare-fun b!4056277 () Bool)

(declare-fun res!1653955 () Bool)

(assert (=> b!4056277 (=> (not res!1653955) (not e!2517078))))

(assert (=> b!4056277 (= res!1653955 (= (head!8567 lt!1447889) (head!8567 lt!1447918)))))

(assert (= (and d!1204935 (not res!1653956)) b!4056276))

(assert (= (and b!4056276 res!1653957) b!4056277))

(assert (= (and b!4056277 res!1653955) b!4056278))

(assert (= (and d!1204935 (not res!1653958)) b!4056279))

(assert (=> b!4056279 m!4659499))

(assert (=> b!4056279 m!4659447))

(assert (=> b!4056278 m!4659829))

(assert (=> b!4056278 m!4659503))

(assert (=> b!4056278 m!4659829))

(assert (=> b!4056278 m!4659503))

(declare-fun m!4659929 () Bool)

(assert (=> b!4056278 m!4659929))

(assert (=> b!4056277 m!4659835))

(assert (=> b!4056277 m!4659509))

(assert (=> b!4055911 d!1204935))

(declare-fun b!4056280 () Bool)

(declare-fun e!2517080 () Bool)

(declare-fun e!2517081 () Bool)

(assert (=> b!4056280 (= e!2517080 e!2517081)))

(declare-fun res!1653961 () Bool)

(assert (=> b!4056280 (=> (not res!1653961) (not e!2517081))))

(assert (=> b!4056280 (= res!1653961 (not ((_ is Nil!43357) lt!1447905)))))

(declare-fun b!4056283 () Bool)

(declare-fun e!2517079 () Bool)

(assert (=> b!4056283 (= e!2517079 (>= (size!32416 lt!1447905) (size!32416 lt!1447889)))))

(declare-fun d!1204939 () Bool)

(assert (=> d!1204939 e!2517079))

(declare-fun res!1653962 () Bool)

(assert (=> d!1204939 (=> res!1653962 e!2517079)))

(declare-fun lt!1448076 () Bool)

(assert (=> d!1204939 (= res!1653962 (not lt!1448076))))

(assert (=> d!1204939 (= lt!1448076 e!2517080)))

(declare-fun res!1653960 () Bool)

(assert (=> d!1204939 (=> res!1653960 e!2517080)))

(assert (=> d!1204939 (= res!1653960 ((_ is Nil!43357) lt!1447889))))

(assert (=> d!1204939 (= (isPrefix!4043 lt!1447889 lt!1447905) lt!1448076)))

(declare-fun b!4056282 () Bool)

(assert (=> b!4056282 (= e!2517081 (isPrefix!4043 (tail!6299 lt!1447889) (tail!6299 lt!1447905)))))

(declare-fun b!4056281 () Bool)

(declare-fun res!1653959 () Bool)

(assert (=> b!4056281 (=> (not res!1653959) (not e!2517081))))

(assert (=> b!4056281 (= res!1653959 (= (head!8567 lt!1447889) (head!8567 lt!1447905)))))

(assert (= (and d!1204939 (not res!1653960)) b!4056280))

(assert (= (and b!4056280 res!1653961) b!4056281))

(assert (= (and b!4056281 res!1653959) b!4056282))

(assert (= (and d!1204939 (not res!1653962)) b!4056283))

(declare-fun m!4659931 () Bool)

(assert (=> b!4056283 m!4659931))

(assert (=> b!4056283 m!4659447))

(assert (=> b!4056282 m!4659829))

(declare-fun m!4659933 () Bool)

(assert (=> b!4056282 m!4659933))

(assert (=> b!4056282 m!4659829))

(assert (=> b!4056282 m!4659933))

(declare-fun m!4659935 () Bool)

(assert (=> b!4056282 m!4659935))

(assert (=> b!4056281 m!4659835))

(declare-fun m!4659937 () Bool)

(assert (=> b!4056281 m!4659937))

(assert (=> b!4055911 d!1204939))

(declare-fun d!1204941 () Bool)

(assert (=> d!1204941 (isPrefix!4043 prefix!494 (++!11358 prefix!494 suffix!1299))))

(declare-fun lt!1448077 () Unit!62712)

(assert (=> d!1204941 (= lt!1448077 (choose!24624 prefix!494 suffix!1299))))

(assert (=> d!1204941 (= (lemmaConcatTwoListThenFirstIsPrefix!2878 prefix!494 suffix!1299) lt!1448077)))

(declare-fun bs!591797 () Bool)

(assert (= bs!591797 d!1204941))

(assert (=> bs!591797 m!4659431))

(assert (=> bs!591797 m!4659431))

(declare-fun m!4659939 () Bool)

(assert (=> bs!591797 m!4659939))

(declare-fun m!4659941 () Bool)

(assert (=> bs!591797 m!4659941))

(assert (=> b!4055911 d!1204941))

(declare-fun b!4056284 () Bool)

(declare-fun e!2517083 () Bool)

(declare-fun e!2517084 () Bool)

(assert (=> b!4056284 (= e!2517083 e!2517084)))

(declare-fun res!1653965 () Bool)

(assert (=> b!4056284 (=> (not res!1653965) (not e!2517084))))

(assert (=> b!4056284 (= res!1653965 (not ((_ is Nil!43357) lt!1447918)))))

(declare-fun b!4056287 () Bool)

(declare-fun e!2517082 () Bool)

(assert (=> b!4056287 (= e!2517082 (>= (size!32416 lt!1447918) (size!32416 prefix!494)))))

(declare-fun d!1204943 () Bool)

(assert (=> d!1204943 e!2517082))

(declare-fun res!1653966 () Bool)

(assert (=> d!1204943 (=> res!1653966 e!2517082)))

(declare-fun lt!1448078 () Bool)

(assert (=> d!1204943 (= res!1653966 (not lt!1448078))))

(assert (=> d!1204943 (= lt!1448078 e!2517083)))

(declare-fun res!1653964 () Bool)

(assert (=> d!1204943 (=> res!1653964 e!2517083)))

(assert (=> d!1204943 (= res!1653964 ((_ is Nil!43357) prefix!494))))

(assert (=> d!1204943 (= (isPrefix!4043 prefix!494 lt!1447918) lt!1448078)))

(declare-fun b!4056286 () Bool)

(assert (=> b!4056286 (= e!2517084 (isPrefix!4043 (tail!6299 prefix!494) (tail!6299 lt!1447918)))))

(declare-fun b!4056285 () Bool)

(declare-fun res!1653963 () Bool)

(assert (=> b!4056285 (=> (not res!1653963) (not e!2517084))))

(assert (=> b!4056285 (= res!1653963 (= (head!8567 prefix!494) (head!8567 lt!1447918)))))

(assert (= (and d!1204943 (not res!1653964)) b!4056284))

(assert (= (and b!4056284 res!1653965) b!4056285))

(assert (= (and b!4056285 res!1653963) b!4056286))

(assert (= (and d!1204943 (not res!1653966)) b!4056287))

(assert (=> b!4056287 m!4659499))

(assert (=> b!4056287 m!4659449))

(declare-fun m!4659943 () Bool)

(assert (=> b!4056286 m!4659943))

(assert (=> b!4056286 m!4659503))

(assert (=> b!4056286 m!4659943))

(assert (=> b!4056286 m!4659503))

(declare-fun m!4659945 () Bool)

(assert (=> b!4056286 m!4659945))

(declare-fun m!4659947 () Bool)

(assert (=> b!4056285 m!4659947))

(assert (=> b!4056285 m!4659509))

(assert (=> b!4055911 d!1204943))

(declare-fun d!1204945 () Bool)

(assert (=> d!1204945 (= (maxPrefixOneRule!2855 thiss!21717 (rule!10042 token!484) lt!1447918) (Some!9369 (tuple2!42419 (Token!13051 (apply!10145 (transformation!6956 (rule!10042 token!484)) (seqFromList!5173 lt!1447889)) (rule!10042 token!484) (size!32416 lt!1447889) lt!1447889) suffixResult!105)))))

(declare-fun lt!1448086 () Unit!62712)

(declare-fun choose!24626 (LexerInterface!6545 List!43483 List!43481 List!43481 List!43481 Rule!13712) Unit!62712)

(assert (=> d!1204945 (= lt!1448086 (choose!24626 thiss!21717 rules!2999 lt!1447889 lt!1447918 suffixResult!105 (rule!10042 token!484)))))

(assert (=> d!1204945 (not (isEmpty!25869 rules!2999))))

(assert (=> d!1204945 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1661 thiss!21717 rules!2999 lt!1447889 lt!1447918 suffixResult!105 (rule!10042 token!484)) lt!1448086)))

(declare-fun bs!591800 () Bool)

(assert (= bs!591800 d!1204945))

(assert (=> bs!591800 m!4659393))

(assert (=> bs!591800 m!4659371))

(assert (=> bs!591800 m!4659375))

(assert (=> bs!591800 m!4659447))

(assert (=> bs!591800 m!4659371))

(assert (=> bs!591800 m!4659367))

(declare-fun m!4659969 () Bool)

(assert (=> bs!591800 m!4659969))

(assert (=> b!4055890 d!1204945))

(declare-fun d!1204955 () Bool)

(assert (=> d!1204955 (isPrefix!4043 lt!1447889 (++!11358 lt!1447889 lt!1447910))))

(declare-fun lt!1448087 () Unit!62712)

(assert (=> d!1204955 (= lt!1448087 (choose!24624 lt!1447889 lt!1447910))))

(assert (=> d!1204955 (= (lemmaConcatTwoListThenFirstIsPrefix!2878 lt!1447889 lt!1447910) lt!1448087)))

(declare-fun bs!591801 () Bool)

(assert (= bs!591801 d!1204955))

(assert (=> bs!591801 m!4659381))

(assert (=> bs!591801 m!4659381))

(declare-fun m!4659971 () Bool)

(assert (=> bs!591801 m!4659971))

(declare-fun m!4659973 () Bool)

(assert (=> bs!591801 m!4659973))

(assert (=> b!4055890 d!1204955))

(declare-fun b!4056461 () Bool)

(declare-fun e!2517184 () Bool)

(declare-fun lt!1448168 () Option!9370)

(assert (=> b!4056461 (= e!2517184 (= (size!32415 (_1!24343 (get!14220 lt!1448168))) (size!32416 (originalCharacters!7556 (_1!24343 (get!14220 lt!1448168))))))))

(declare-fun b!4056462 () Bool)

(declare-fun e!2517185 () Bool)

(assert (=> b!4056462 (= e!2517185 e!2517184)))

(declare-fun res!1654080 () Bool)

(assert (=> b!4056462 (=> (not res!1654080) (not e!2517184))))

(assert (=> b!4056462 (= res!1654080 (matchR!5814 (regex!6956 (rule!10042 token!484)) (list!16156 (charsOf!4772 (_1!24343 (get!14220 lt!1448168))))))))

(declare-fun d!1204957 () Bool)

(assert (=> d!1204957 e!2517185))

(declare-fun res!1654078 () Bool)

(assert (=> d!1204957 (=> res!1654078 e!2517185)))

(assert (=> d!1204957 (= res!1654078 (isEmpty!25873 lt!1448168))))

(declare-fun e!2517187 () Option!9370)

(assert (=> d!1204957 (= lt!1448168 e!2517187)))

(declare-fun c!700582 () Bool)

(declare-datatypes ((tuple2!42422 0))(
  ( (tuple2!42423 (_1!24345 List!43481) (_2!24345 List!43481)) )
))
(declare-fun lt!1448166 () tuple2!42422)

(assert (=> d!1204957 (= c!700582 (isEmpty!25871 (_1!24345 lt!1448166)))))

(declare-fun findLongestMatch!1314 (Regex!11861 List!43481) tuple2!42422)

(assert (=> d!1204957 (= lt!1448166 (findLongestMatch!1314 (regex!6956 (rule!10042 token!484)) lt!1447918))))

(assert (=> d!1204957 (ruleValid!2886 thiss!21717 (rule!10042 token!484))))

(assert (=> d!1204957 (= (maxPrefixOneRule!2855 thiss!21717 (rule!10042 token!484) lt!1447918) lt!1448168)))

(declare-fun b!4056463 () Bool)

(declare-fun size!32418 (BalanceConc!25928) Int)

(assert (=> b!4056463 (= e!2517187 (Some!9369 (tuple2!42419 (Token!13051 (apply!10145 (transformation!6956 (rule!10042 token!484)) (seqFromList!5173 (_1!24345 lt!1448166))) (rule!10042 token!484) (size!32418 (seqFromList!5173 (_1!24345 lt!1448166))) (_1!24345 lt!1448166)) (_2!24345 lt!1448166))))))

(declare-fun lt!1448164 () Unit!62712)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1374 (Regex!11861 List!43481) Unit!62712)

(assert (=> b!4056463 (= lt!1448164 (longestMatchIsAcceptedByMatchOrIsEmpty!1374 (regex!6956 (rule!10042 token!484)) lt!1447918))))

(declare-fun res!1654077 () Bool)

(declare-fun findLongestMatchInner!1401 (Regex!11861 List!43481 Int List!43481 List!43481 Int) tuple2!42422)

(assert (=> b!4056463 (= res!1654077 (isEmpty!25871 (_1!24345 (findLongestMatchInner!1401 (regex!6956 (rule!10042 token!484)) Nil!43357 (size!32416 Nil!43357) lt!1447918 lt!1447918 (size!32416 lt!1447918)))))))

(declare-fun e!2517186 () Bool)

(assert (=> b!4056463 (=> res!1654077 e!2517186)))

(assert (=> b!4056463 e!2517186))

(declare-fun lt!1448165 () Unit!62712)

(assert (=> b!4056463 (= lt!1448165 lt!1448164)))

(declare-fun lt!1448167 () Unit!62712)

(declare-fun lemmaSemiInverse!1929 (TokenValueInjection!13800 BalanceConc!25928) Unit!62712)

(assert (=> b!4056463 (= lt!1448167 (lemmaSemiInverse!1929 (transformation!6956 (rule!10042 token!484)) (seqFromList!5173 (_1!24345 lt!1448166))))))

(declare-fun b!4056464 () Bool)

(declare-fun res!1654079 () Bool)

(assert (=> b!4056464 (=> (not res!1654079) (not e!2517184))))

(assert (=> b!4056464 (= res!1654079 (= (++!11358 (list!16156 (charsOf!4772 (_1!24343 (get!14220 lt!1448168)))) (_2!24343 (get!14220 lt!1448168))) lt!1447918))))

(declare-fun b!4056465 () Bool)

(assert (=> b!4056465 (= e!2517187 None!9369)))

(declare-fun b!4056466 () Bool)

(declare-fun res!1654081 () Bool)

(assert (=> b!4056466 (=> (not res!1654081) (not e!2517184))))

(assert (=> b!4056466 (= res!1654081 (= (value!218880 (_1!24343 (get!14220 lt!1448168))) (apply!10145 (transformation!6956 (rule!10042 (_1!24343 (get!14220 lt!1448168)))) (seqFromList!5173 (originalCharacters!7556 (_1!24343 (get!14220 lt!1448168)))))))))

(declare-fun b!4056467 () Bool)

(declare-fun res!1654076 () Bool)

(assert (=> b!4056467 (=> (not res!1654076) (not e!2517184))))

(assert (=> b!4056467 (= res!1654076 (= (rule!10042 (_1!24343 (get!14220 lt!1448168))) (rule!10042 token!484)))))

(declare-fun b!4056468 () Bool)

(assert (=> b!4056468 (= e!2517186 (matchR!5814 (regex!6956 (rule!10042 token!484)) (_1!24345 (findLongestMatchInner!1401 (regex!6956 (rule!10042 token!484)) Nil!43357 (size!32416 Nil!43357) lt!1447918 lt!1447918 (size!32416 lt!1447918)))))))

(declare-fun b!4056469 () Bool)

(declare-fun res!1654075 () Bool)

(assert (=> b!4056469 (=> (not res!1654075) (not e!2517184))))

(assert (=> b!4056469 (= res!1654075 (< (size!32416 (_2!24343 (get!14220 lt!1448168))) (size!32416 lt!1447918)))))

(assert (= (and d!1204957 c!700582) b!4056465))

(assert (= (and d!1204957 (not c!700582)) b!4056463))

(assert (= (and b!4056463 (not res!1654077)) b!4056468))

(assert (= (and d!1204957 (not res!1654078)) b!4056462))

(assert (= (and b!4056462 res!1654080) b!4056464))

(assert (= (and b!4056464 res!1654079) b!4056469))

(assert (= (and b!4056469 res!1654075) b!4056467))

(assert (= (and b!4056467 res!1654076) b!4056466))

(assert (= (and b!4056466 res!1654081) b!4056461))

(declare-fun m!4660311 () Bool)

(assert (=> b!4056464 m!4660311))

(declare-fun m!4660313 () Bool)

(assert (=> b!4056464 m!4660313))

(assert (=> b!4056464 m!4660313))

(declare-fun m!4660315 () Bool)

(assert (=> b!4056464 m!4660315))

(assert (=> b!4056464 m!4660315))

(declare-fun m!4660317 () Bool)

(assert (=> b!4056464 m!4660317))

(assert (=> b!4056467 m!4660311))

(declare-fun m!4660319 () Bool)

(assert (=> b!4056468 m!4660319))

(assert (=> b!4056468 m!4659499))

(assert (=> b!4056468 m!4660319))

(assert (=> b!4056468 m!4659499))

(declare-fun m!4660321 () Bool)

(assert (=> b!4056468 m!4660321))

(declare-fun m!4660323 () Bool)

(assert (=> b!4056468 m!4660323))

(assert (=> b!4056461 m!4660311))

(declare-fun m!4660325 () Bool)

(assert (=> b!4056461 m!4660325))

(declare-fun m!4660327 () Bool)

(assert (=> b!4056463 m!4660327))

(assert (=> b!4056463 m!4659499))

(assert (=> b!4056463 m!4660319))

(assert (=> b!4056463 m!4659499))

(assert (=> b!4056463 m!4660321))

(declare-fun m!4660329 () Bool)

(assert (=> b!4056463 m!4660329))

(declare-fun m!4660331 () Bool)

(assert (=> b!4056463 m!4660331))

(assert (=> b!4056463 m!4660329))

(declare-fun m!4660333 () Bool)

(assert (=> b!4056463 m!4660333))

(assert (=> b!4056463 m!4660329))

(declare-fun m!4660335 () Bool)

(assert (=> b!4056463 m!4660335))

(assert (=> b!4056463 m!4660329))

(assert (=> b!4056463 m!4660319))

(declare-fun m!4660337 () Bool)

(assert (=> b!4056463 m!4660337))

(declare-fun m!4660339 () Bool)

(assert (=> d!1204957 m!4660339))

(declare-fun m!4660341 () Bool)

(assert (=> d!1204957 m!4660341))

(declare-fun m!4660343 () Bool)

(assert (=> d!1204957 m!4660343))

(assert (=> d!1204957 m!4659343))

(assert (=> b!4056462 m!4660311))

(assert (=> b!4056462 m!4660313))

(assert (=> b!4056462 m!4660313))

(assert (=> b!4056462 m!4660315))

(assert (=> b!4056462 m!4660315))

(declare-fun m!4660345 () Bool)

(assert (=> b!4056462 m!4660345))

(assert (=> b!4056466 m!4660311))

(declare-fun m!4660347 () Bool)

(assert (=> b!4056466 m!4660347))

(assert (=> b!4056466 m!4660347))

(declare-fun m!4660349 () Bool)

(assert (=> b!4056466 m!4660349))

(assert (=> b!4056469 m!4660311))

(declare-fun m!4660351 () Bool)

(assert (=> b!4056469 m!4660351))

(assert (=> b!4056469 m!4659499))

(assert (=> b!4055890 d!1204957))

(declare-fun d!1205079 () Bool)

(declare-fun dynLambda!18418 (Int BalanceConc!25928) TokenValue!7186)

(assert (=> d!1205079 (= (apply!10145 (transformation!6956 (rule!10042 token!484)) (seqFromList!5173 lt!1447889)) (dynLambda!18418 (toValue!9512 (transformation!6956 (rule!10042 token!484))) (seqFromList!5173 lt!1447889)))))

(declare-fun b_lambda!118519 () Bool)

(assert (=> (not b_lambda!118519) (not d!1205079)))

(declare-fun tb!244005 () Bool)

(declare-fun t!336262 () Bool)

(assert (=> (and b!4055892 (= (toValue!9512 (transformation!6956 (h!48779 rules!2999))) (toValue!9512 (transformation!6956 (rule!10042 token!484)))) t!336262) tb!244005))

(declare-fun result!295664 () Bool)

(assert (=> tb!244005 (= result!295664 (inv!21 (dynLambda!18418 (toValue!9512 (transformation!6956 (rule!10042 token!484))) (seqFromList!5173 lt!1447889))))))

(declare-fun m!4660361 () Bool)

(assert (=> tb!244005 m!4660361))

(assert (=> d!1205079 t!336262))

(declare-fun b_and!311907 () Bool)

(assert (= b_and!311875 (and (=> t!336262 result!295664) b_and!311907)))

(declare-fun t!336264 () Bool)

(declare-fun tb!244007 () Bool)

(assert (=> (and b!4055919 (= (toValue!9512 (transformation!6956 (rule!10042 token!484))) (toValue!9512 (transformation!6956 (rule!10042 token!484)))) t!336264) tb!244007))

(declare-fun result!295668 () Bool)

(assert (= result!295668 result!295664))

(assert (=> d!1205079 t!336264))

(declare-fun b_and!311909 () Bool)

(assert (= b_and!311879 (and (=> t!336264 result!295668) b_and!311909)))

(assert (=> d!1205079 m!4659371))

(declare-fun m!4660363 () Bool)

(assert (=> d!1205079 m!4660363))

(assert (=> b!4055890 d!1205079))

(declare-fun d!1205085 () Bool)

(assert (=> d!1205085 (= lt!1447910 suffixResult!105)))

(declare-fun lt!1448170 () Unit!62712)

(assert (=> d!1205085 (= lt!1448170 (choose!24623 lt!1447889 lt!1447910 lt!1447889 suffixResult!105 lt!1447918))))

(assert (=> d!1205085 (isPrefix!4043 lt!1447889 lt!1447918)))

(assert (=> d!1205085 (= (lemmaSamePrefixThenSameSuffix!2204 lt!1447889 lt!1447910 lt!1447889 suffixResult!105 lt!1447918) lt!1448170)))

(declare-fun bs!591821 () Bool)

(assert (= bs!591821 d!1205085))

(declare-fun m!4660365 () Bool)

(assert (=> bs!591821 m!4660365))

(assert (=> bs!591821 m!4659419))

(assert (=> b!4055890 d!1205085))

(declare-fun d!1205087 () Bool)

(declare-fun fromListB!2358 (List!43481) BalanceConc!25928)

(assert (=> d!1205087 (= (seqFromList!5173 lt!1447889) (fromListB!2358 lt!1447889))))

(declare-fun bs!591822 () Bool)

(assert (= bs!591822 d!1205087))

(declare-fun m!4660373 () Bool)

(assert (=> bs!591822 m!4660373))

(assert (=> b!4055890 d!1205087))

(declare-fun b!4056499 () Bool)

(declare-fun e!2517212 () Bool)

(declare-fun e!2517213 () Bool)

(assert (=> b!4056499 (= e!2517212 e!2517213)))

(declare-fun res!1654099 () Bool)

(assert (=> b!4056499 (=> (not res!1654099) (not e!2517213))))

(assert (=> b!4056499 (= res!1654099 (not ((_ is Nil!43357) lt!1447906)))))

(declare-fun b!4056502 () Bool)

(declare-fun e!2517211 () Bool)

(assert (=> b!4056502 (= e!2517211 (>= (size!32416 lt!1447906) (size!32416 lt!1447889)))))

(declare-fun d!1205091 () Bool)

(assert (=> d!1205091 e!2517211))

(declare-fun res!1654100 () Bool)

(assert (=> d!1205091 (=> res!1654100 e!2517211)))

(declare-fun lt!1448175 () Bool)

(assert (=> d!1205091 (= res!1654100 (not lt!1448175))))

(assert (=> d!1205091 (= lt!1448175 e!2517212)))

(declare-fun res!1654098 () Bool)

(assert (=> d!1205091 (=> res!1654098 e!2517212)))

(assert (=> d!1205091 (= res!1654098 ((_ is Nil!43357) lt!1447889))))

(assert (=> d!1205091 (= (isPrefix!4043 lt!1447889 lt!1447906) lt!1448175)))

(declare-fun b!4056501 () Bool)

(assert (=> b!4056501 (= e!2517213 (isPrefix!4043 (tail!6299 lt!1447889) (tail!6299 lt!1447906)))))

(declare-fun b!4056500 () Bool)

(declare-fun res!1654097 () Bool)

(assert (=> b!4056500 (=> (not res!1654097) (not e!2517213))))

(assert (=> b!4056500 (= res!1654097 (= (head!8567 lt!1447889) (head!8567 lt!1447906)))))

(assert (= (and d!1205091 (not res!1654098)) b!4056499))

(assert (= (and b!4056499 res!1654099) b!4056500))

(assert (= (and b!4056500 res!1654097) b!4056501))

(assert (= (and d!1205091 (not res!1654100)) b!4056502))

(declare-fun m!4660379 () Bool)

(assert (=> b!4056502 m!4660379))

(assert (=> b!4056502 m!4659447))

(assert (=> b!4056501 m!4659829))

(declare-fun m!4660381 () Bool)

(assert (=> b!4056501 m!4660381))

(assert (=> b!4056501 m!4659829))

(assert (=> b!4056501 m!4660381))

(declare-fun m!4660383 () Bool)

(assert (=> b!4056501 m!4660383))

(assert (=> b!4056500 m!4659835))

(declare-fun m!4660385 () Bool)

(assert (=> b!4056500 m!4660385))

(assert (=> b!4055890 d!1205091))

(declare-fun d!1205093 () Bool)

(declare-fun lt!1448176 () Int)

(assert (=> d!1205093 (>= lt!1448176 0)))

(declare-fun e!2517216 () Int)

(assert (=> d!1205093 (= lt!1448176 e!2517216)))

(declare-fun c!700589 () Bool)

(assert (=> d!1205093 (= c!700589 ((_ is Nil!43357) lt!1447889))))

(assert (=> d!1205093 (= (size!32416 lt!1447889) lt!1448176)))

(declare-fun b!4056507 () Bool)

(assert (=> b!4056507 (= e!2517216 0)))

(declare-fun b!4056508 () Bool)

(assert (=> b!4056508 (= e!2517216 (+ 1 (size!32416 (t!336238 lt!1447889))))))

(assert (= (and d!1205093 c!700589) b!4056507))

(assert (= (and d!1205093 (not c!700589)) b!4056508))

(declare-fun m!4660387 () Bool)

(assert (=> b!4056508 m!4660387))

(assert (=> b!4055912 d!1205093))

(declare-fun d!1205095 () Bool)

(declare-fun lt!1448177 () Int)

(assert (=> d!1205095 (>= lt!1448177 0)))

(declare-fun e!2517219 () Int)

(assert (=> d!1205095 (= lt!1448177 e!2517219)))

(declare-fun c!700590 () Bool)

(assert (=> d!1205095 (= c!700590 ((_ is Nil!43357) prefix!494))))

(assert (=> d!1205095 (= (size!32416 prefix!494) lt!1448177)))

(declare-fun b!4056511 () Bool)

(assert (=> b!4056511 (= e!2517219 0)))

(declare-fun b!4056514 () Bool)

(assert (=> b!4056514 (= e!2517219 (+ 1 (size!32416 (t!336238 prefix!494))))))

(assert (= (and d!1205095 c!700590) b!4056511))

(assert (= (and d!1205095 (not c!700590)) b!4056514))

(declare-fun m!4660389 () Bool)

(assert (=> b!4056514 m!4660389))

(assert (=> b!4055912 d!1205095))

(declare-fun d!1205097 () Bool)

(declare-fun list!16158 (Conc!13167) List!43481)

(assert (=> d!1205097 (= (list!16156 (charsOf!4772 token!484)) (list!16158 (c!700484 (charsOf!4772 token!484))))))

(declare-fun bs!591823 () Bool)

(assert (= bs!591823 d!1205097))

(declare-fun m!4660391 () Bool)

(assert (=> bs!591823 m!4660391))

(assert (=> b!4055912 d!1205097))

(declare-fun d!1205099 () Bool)

(declare-fun lt!1448180 () BalanceConc!25928)

(assert (=> d!1205099 (= (list!16156 lt!1448180) (originalCharacters!7556 token!484))))

(assert (=> d!1205099 (= lt!1448180 (dynLambda!18417 (toChars!9371 (transformation!6956 (rule!10042 token!484))) (value!218880 token!484)))))

(assert (=> d!1205099 (= (charsOf!4772 token!484) lt!1448180)))

(declare-fun b_lambda!118521 () Bool)

(assert (=> (not b_lambda!118521) (not d!1205099)))

(assert (=> d!1205099 t!336246))

(declare-fun b_and!311915 () Bool)

(assert (= b_and!311887 (and (=> t!336246 result!295644) b_and!311915)))

(assert (=> d!1205099 t!336248))

(declare-fun b_and!311917 () Bool)

(assert (= b_and!311889 (and (=> t!336248 result!295648) b_and!311917)))

(declare-fun m!4660397 () Bool)

(assert (=> d!1205099 m!4660397))

(assert (=> d!1205099 m!4659737))

(assert (=> b!4055912 d!1205099))

(declare-fun b!4056536 () Bool)

(declare-fun e!2517235 () List!43481)

(assert (=> b!4056536 (= e!2517235 (Cons!43357 (h!48777 lt!1447889) (++!11358 (t!336238 lt!1447889) lt!1447892)))))

(declare-fun b!4056535 () Bool)

(assert (=> b!4056535 (= e!2517235 lt!1447892)))

(declare-fun b!4056537 () Bool)

(declare-fun res!1654102 () Bool)

(declare-fun e!2517236 () Bool)

(assert (=> b!4056537 (=> (not res!1654102) (not e!2517236))))

(declare-fun lt!1448181 () List!43481)

(assert (=> b!4056537 (= res!1654102 (= (size!32416 lt!1448181) (+ (size!32416 lt!1447889) (size!32416 lt!1447892))))))

(declare-fun d!1205101 () Bool)

(assert (=> d!1205101 e!2517236))

(declare-fun res!1654101 () Bool)

(assert (=> d!1205101 (=> (not res!1654101) (not e!2517236))))

(assert (=> d!1205101 (= res!1654101 (= (content!6604 lt!1448181) ((_ map or) (content!6604 lt!1447889) (content!6604 lt!1447892))))))

(assert (=> d!1205101 (= lt!1448181 e!2517235)))

(declare-fun c!700591 () Bool)

(assert (=> d!1205101 (= c!700591 ((_ is Nil!43357) lt!1447889))))

(assert (=> d!1205101 (= (++!11358 lt!1447889 lt!1447892) lt!1448181)))

(declare-fun b!4056538 () Bool)

(assert (=> b!4056538 (= e!2517236 (or (not (= lt!1447892 Nil!43357)) (= lt!1448181 lt!1447889)))))

(assert (= (and d!1205101 c!700591) b!4056535))

(assert (= (and d!1205101 (not c!700591)) b!4056536))

(assert (= (and d!1205101 res!1654101) b!4056537))

(assert (= (and b!4056537 res!1654102) b!4056538))

(declare-fun m!4660399 () Bool)

(assert (=> b!4056536 m!4660399))

(declare-fun m!4660401 () Bool)

(assert (=> b!4056537 m!4660401))

(assert (=> b!4056537 m!4659447))

(declare-fun m!4660403 () Bool)

(assert (=> b!4056537 m!4660403))

(declare-fun m!4660405 () Bool)

(assert (=> d!1205101 m!4660405))

(assert (=> d!1205101 m!4659495))

(declare-fun m!4660407 () Bool)

(assert (=> d!1205101 m!4660407))

(assert (=> b!4055883 d!1205101))

(declare-fun d!1205103 () Bool)

(declare-fun lt!1448184 () List!43481)

(assert (=> d!1205103 (= (++!11358 lt!1447889 lt!1448184) lt!1447918)))

(declare-fun e!2517244 () List!43481)

(assert (=> d!1205103 (= lt!1448184 e!2517244)))

(declare-fun c!700594 () Bool)

(assert (=> d!1205103 (= c!700594 ((_ is Cons!43357) lt!1447889))))

(assert (=> d!1205103 (>= (size!32416 lt!1447918) (size!32416 lt!1447889))))

(assert (=> d!1205103 (= (getSuffix!2460 lt!1447918 lt!1447889) lt!1448184)))

(declare-fun b!4056554 () Bool)

(assert (=> b!4056554 (= e!2517244 (getSuffix!2460 (tail!6299 lt!1447918) (t!336238 lt!1447889)))))

(declare-fun b!4056555 () Bool)

(assert (=> b!4056555 (= e!2517244 lt!1447918)))

(assert (= (and d!1205103 c!700594) b!4056554))

(assert (= (and d!1205103 (not c!700594)) b!4056555))

(declare-fun m!4660409 () Bool)

(assert (=> d!1205103 m!4660409))

(assert (=> d!1205103 m!4659499))

(assert (=> d!1205103 m!4659447))

(assert (=> b!4056554 m!4659503))

(assert (=> b!4056554 m!4659503))

(declare-fun m!4660411 () Bool)

(assert (=> b!4056554 m!4660411))

(assert (=> b!4055883 d!1205103))

(declare-fun b!4056556 () Bool)

(declare-fun e!2517246 () Bool)

(declare-fun e!2517247 () Bool)

(assert (=> b!4056556 (= e!2517246 e!2517247)))

(declare-fun res!1654105 () Bool)

(assert (=> b!4056556 (=> (not res!1654105) (not e!2517247))))

(assert (=> b!4056556 (= res!1654105 (not ((_ is Nil!43357) lt!1447918)))))

(declare-fun b!4056559 () Bool)

(declare-fun e!2517245 () Bool)

(assert (=> b!4056559 (= e!2517245 (>= (size!32416 lt!1447918) (size!32416 lt!1447918)))))

(declare-fun d!1205105 () Bool)

(assert (=> d!1205105 e!2517245))

(declare-fun res!1654106 () Bool)

(assert (=> d!1205105 (=> res!1654106 e!2517245)))

(declare-fun lt!1448185 () Bool)

(assert (=> d!1205105 (= res!1654106 (not lt!1448185))))

(assert (=> d!1205105 (= lt!1448185 e!2517246)))

(declare-fun res!1654104 () Bool)

(assert (=> d!1205105 (=> res!1654104 e!2517246)))

(assert (=> d!1205105 (= res!1654104 ((_ is Nil!43357) lt!1447918))))

(assert (=> d!1205105 (= (isPrefix!4043 lt!1447918 lt!1447918) lt!1448185)))

(declare-fun b!4056558 () Bool)

(assert (=> b!4056558 (= e!2517247 (isPrefix!4043 (tail!6299 lt!1447918) (tail!6299 lt!1447918)))))

(declare-fun b!4056557 () Bool)

(declare-fun res!1654103 () Bool)

(assert (=> b!4056557 (=> (not res!1654103) (not e!2517247))))

(assert (=> b!4056557 (= res!1654103 (= (head!8567 lt!1447918) (head!8567 lt!1447918)))))

(assert (= (and d!1205105 (not res!1654104)) b!4056556))

(assert (= (and b!4056556 res!1654105) b!4056557))

(assert (= (and b!4056557 res!1654103) b!4056558))

(assert (= (and d!1205105 (not res!1654106)) b!4056559))

(assert (=> b!4056559 m!4659499))

(assert (=> b!4056559 m!4659499))

(assert (=> b!4056558 m!4659503))

(assert (=> b!4056558 m!4659503))

(assert (=> b!4056558 m!4659503))

(assert (=> b!4056558 m!4659503))

(declare-fun m!4660413 () Bool)

(assert (=> b!4056558 m!4660413))

(assert (=> b!4056557 m!4659509))

(assert (=> b!4056557 m!4659509))

(assert (=> b!4055883 d!1205105))

(declare-fun d!1205107 () Bool)

(assert (=> d!1205107 (isPrefix!4043 lt!1447918 lt!1447918)))

(declare-fun lt!1448188 () Unit!62712)

(declare-fun choose!24629 (List!43481 List!43481) Unit!62712)

(assert (=> d!1205107 (= lt!1448188 (choose!24629 lt!1447918 lt!1447918))))

(assert (=> d!1205107 (= (lemmaIsPrefixRefl!2610 lt!1447918 lt!1447918) lt!1448188)))

(declare-fun bs!591824 () Bool)

(assert (= bs!591824 d!1205107))

(assert (=> bs!591824 m!4659437))

(declare-fun m!4660415 () Bool)

(assert (=> bs!591824 m!4660415))

(assert (=> b!4055883 d!1205107))

(declare-fun d!1205109 () Bool)

(declare-fun res!1654109 () Bool)

(declare-fun e!2517250 () Bool)

(assert (=> d!1205109 (=> (not res!1654109) (not e!2517250))))

(declare-fun rulesValid!2706 (LexerInterface!6545 List!43483) Bool)

(assert (=> d!1205109 (= res!1654109 (rulesValid!2706 thiss!21717 rules!2999))))

(assert (=> d!1205109 (= (rulesInvariant!5888 thiss!21717 rules!2999) e!2517250)))

(declare-fun b!4056562 () Bool)

(declare-datatypes ((List!43485 0))(
  ( (Nil!43361) (Cons!43361 (h!48781 String!49648) (t!336290 List!43485)) )
))
(declare-fun noDuplicateTag!2707 (LexerInterface!6545 List!43483 List!43485) Bool)

(assert (=> b!4056562 (= e!2517250 (noDuplicateTag!2707 thiss!21717 rules!2999 Nil!43361))))

(assert (= (and d!1205109 res!1654109) b!4056562))

(declare-fun m!4660417 () Bool)

(assert (=> d!1205109 m!4660417))

(declare-fun m!4660419 () Bool)

(assert (=> b!4056562 m!4660419))

(assert (=> b!4055904 d!1205109))

(declare-fun b!4056563 () Bool)

(declare-fun e!2517252 () Bool)

(declare-fun e!2517253 () Bool)

(assert (=> b!4056563 (= e!2517252 e!2517253)))

(declare-fun res!1654112 () Bool)

(assert (=> b!4056563 (=> (not res!1654112) (not e!2517253))))

(assert (=> b!4056563 (= res!1654112 (not ((_ is Nil!43357) lt!1447925)))))

(declare-fun b!4056566 () Bool)

(declare-fun e!2517251 () Bool)

(assert (=> b!4056566 (= e!2517251 (>= (size!32416 lt!1447925) (size!32416 lt!1447907)))))

(declare-fun d!1205111 () Bool)

(assert (=> d!1205111 e!2517251))

(declare-fun res!1654113 () Bool)

(assert (=> d!1205111 (=> res!1654113 e!2517251)))

(declare-fun lt!1448189 () Bool)

(assert (=> d!1205111 (= res!1654113 (not lt!1448189))))

(assert (=> d!1205111 (= lt!1448189 e!2517252)))

(declare-fun res!1654111 () Bool)

(assert (=> d!1205111 (=> res!1654111 e!2517252)))

(assert (=> d!1205111 (= res!1654111 ((_ is Nil!43357) lt!1447907))))

(assert (=> d!1205111 (= (isPrefix!4043 lt!1447907 lt!1447925) lt!1448189)))

(declare-fun b!4056565 () Bool)

(assert (=> b!4056565 (= e!2517253 (isPrefix!4043 (tail!6299 lt!1447907) (tail!6299 lt!1447925)))))

(declare-fun b!4056564 () Bool)

(declare-fun res!1654110 () Bool)

(assert (=> b!4056564 (=> (not res!1654110) (not e!2517253))))

(assert (=> b!4056564 (= res!1654110 (= (head!8567 lt!1447907) (head!8567 lt!1447925)))))

(assert (= (and d!1205111 (not res!1654111)) b!4056563))

(assert (= (and b!4056563 res!1654112) b!4056564))

(assert (= (and b!4056564 res!1654110) b!4056565))

(assert (= (and d!1205111 (not res!1654113)) b!4056566))

(assert (=> b!4056566 m!4659715))

(assert (=> b!4056566 m!4659305))

(assert (=> b!4056565 m!4659501))

(declare-fun m!4660421 () Bool)

(assert (=> b!4056565 m!4660421))

(assert (=> b!4056565 m!4659501))

(assert (=> b!4056565 m!4660421))

(declare-fun m!4660423 () Bool)

(assert (=> b!4056565 m!4660423))

(assert (=> b!4056564 m!4659507))

(declare-fun m!4660425 () Bool)

(assert (=> b!4056564 m!4660425))

(assert (=> b!4055884 d!1205111))

(declare-fun d!1205113 () Bool)

(assert (=> d!1205113 (= (_2!24343 (v!39783 lt!1447926)) lt!1447880)))

(declare-fun lt!1448190 () Unit!62712)

(assert (=> d!1205113 (= lt!1448190 (choose!24623 lt!1447907 (_2!24343 (v!39783 lt!1447926)) lt!1447907 lt!1447880 lt!1447925))))

(assert (=> d!1205113 (isPrefix!4043 lt!1447907 lt!1447925)))

(assert (=> d!1205113 (= (lemmaSamePrefixThenSameSuffix!2204 lt!1447907 (_2!24343 (v!39783 lt!1447926)) lt!1447907 lt!1447880 lt!1447925) lt!1448190)))

(declare-fun bs!591825 () Bool)

(assert (= bs!591825 d!1205113))

(declare-fun m!4660427 () Bool)

(assert (=> bs!591825 m!4660427))

(assert (=> bs!591825 m!4659337))

(assert (=> b!4055885 d!1205113))

(declare-fun b!4056567 () Bool)

(declare-fun e!2517255 () Bool)

(declare-fun e!2517256 () Bool)

(assert (=> b!4056567 (= e!2517255 e!2517256)))

(declare-fun res!1654116 () Bool)

(assert (=> b!4056567 (=> (not res!1654116) (not e!2517256))))

(assert (=> b!4056567 (= res!1654116 (not ((_ is Nil!43357) lt!1447900)))))

(declare-fun b!4056570 () Bool)

(declare-fun e!2517254 () Bool)

(assert (=> b!4056570 (= e!2517254 (>= (size!32416 lt!1447900) (size!32416 lt!1447907)))))

(declare-fun d!1205115 () Bool)

(assert (=> d!1205115 e!2517254))

(declare-fun res!1654117 () Bool)

(assert (=> d!1205115 (=> res!1654117 e!2517254)))

(declare-fun lt!1448191 () Bool)

(assert (=> d!1205115 (= res!1654117 (not lt!1448191))))

(assert (=> d!1205115 (= lt!1448191 e!2517255)))

(declare-fun res!1654115 () Bool)

(assert (=> d!1205115 (=> res!1654115 e!2517255)))

(assert (=> d!1205115 (= res!1654115 ((_ is Nil!43357) lt!1447907))))

(assert (=> d!1205115 (= (isPrefix!4043 lt!1447907 lt!1447900) lt!1448191)))

(declare-fun b!4056569 () Bool)

(assert (=> b!4056569 (= e!2517256 (isPrefix!4043 (tail!6299 lt!1447907) (tail!6299 lt!1447900)))))

(declare-fun b!4056568 () Bool)

(declare-fun res!1654114 () Bool)

(assert (=> b!4056568 (=> (not res!1654114) (not e!2517256))))

(assert (=> b!4056568 (= res!1654114 (= (head!8567 lt!1447907) (head!8567 lt!1447900)))))

(assert (= (and d!1205115 (not res!1654115)) b!4056567))

(assert (= (and b!4056567 res!1654116) b!4056568))

(assert (= (and b!4056568 res!1654114) b!4056569))

(assert (= (and d!1205115 (not res!1654117)) b!4056570))

(declare-fun m!4660429 () Bool)

(assert (=> b!4056570 m!4660429))

(assert (=> b!4056570 m!4659305))

(assert (=> b!4056569 m!4659501))

(declare-fun m!4660431 () Bool)

(assert (=> b!4056569 m!4660431))

(assert (=> b!4056569 m!4659501))

(assert (=> b!4056569 m!4660431))

(declare-fun m!4660433 () Bool)

(assert (=> b!4056569 m!4660433))

(assert (=> b!4056568 m!4659507))

(declare-fun m!4660435 () Bool)

(assert (=> b!4056568 m!4660435))

(assert (=> b!4055885 d!1205115))

(declare-fun d!1205117 () Bool)

(assert (=> d!1205117 (isPrefix!4043 lt!1447907 (++!11358 lt!1447907 lt!1447880))))

(declare-fun lt!1448192 () Unit!62712)

(assert (=> d!1205117 (= lt!1448192 (choose!24624 lt!1447907 lt!1447880))))

(assert (=> d!1205117 (= (lemmaConcatTwoListThenFirstIsPrefix!2878 lt!1447907 lt!1447880) lt!1448192)))

(declare-fun bs!591826 () Bool)

(assert (= bs!591826 d!1205117))

(assert (=> bs!591826 m!4659465))

(assert (=> bs!591826 m!4659465))

(declare-fun m!4660437 () Bool)

(assert (=> bs!591826 m!4660437))

(declare-fun m!4660439 () Bool)

(assert (=> bs!591826 m!4660439))

(assert (=> b!4055885 d!1205117))

(declare-fun b!4056571 () Bool)

(declare-fun e!2517262 () Bool)

(assert (=> b!4056571 (= e!2517262 (matchR!5814 (derivativeStep!3569 (regex!6956 (rule!10042 token!484)) (head!8567 lt!1447889)) (tail!6299 lt!1447889)))))

(declare-fun d!1205119 () Bool)

(declare-fun e!2517261 () Bool)

(assert (=> d!1205119 e!2517261))

(declare-fun c!700596 () Bool)

(assert (=> d!1205119 (= c!700596 ((_ is EmptyExpr!11861) (regex!6956 (rule!10042 token!484))))))

(declare-fun lt!1448193 () Bool)

(assert (=> d!1205119 (= lt!1448193 e!2517262)))

(declare-fun c!700595 () Bool)

(assert (=> d!1205119 (= c!700595 (isEmpty!25871 lt!1447889))))

(assert (=> d!1205119 (validRegex!5364 (regex!6956 (rule!10042 token!484)))))

(assert (=> d!1205119 (= (matchR!5814 (regex!6956 (rule!10042 token!484)) lt!1447889) lt!1448193)))

(declare-fun b!4056572 () Bool)

(declare-fun e!2517259 () Bool)

(declare-fun e!2517260 () Bool)

(assert (=> b!4056572 (= e!2517259 e!2517260)))

(declare-fun res!1654124 () Bool)

(assert (=> b!4056572 (=> (not res!1654124) (not e!2517260))))

(assert (=> b!4056572 (= res!1654124 (not lt!1448193))))

(declare-fun b!4056573 () Bool)

(declare-fun res!1654120 () Bool)

(declare-fun e!2517263 () Bool)

(assert (=> b!4056573 (=> (not res!1654120) (not e!2517263))))

(assert (=> b!4056573 (= res!1654120 (isEmpty!25871 (tail!6299 lt!1447889)))))

(declare-fun b!4056574 () Bool)

(declare-fun res!1654125 () Bool)

(assert (=> b!4056574 (=> res!1654125 e!2517259)))

(assert (=> b!4056574 (= res!1654125 (not ((_ is ElementMatch!11861) (regex!6956 (rule!10042 token!484)))))))

(declare-fun e!2517258 () Bool)

(assert (=> b!4056574 (= e!2517258 e!2517259)))

(declare-fun b!4056575 () Bool)

(declare-fun e!2517257 () Bool)

(assert (=> b!4056575 (= e!2517257 (not (= (head!8567 lt!1447889) (c!700485 (regex!6956 (rule!10042 token!484))))))))

(declare-fun b!4056576 () Bool)

(declare-fun res!1654119 () Bool)

(assert (=> b!4056576 (=> res!1654119 e!2517257)))

(assert (=> b!4056576 (= res!1654119 (not (isEmpty!25871 (tail!6299 lt!1447889))))))

(declare-fun b!4056577 () Bool)

(assert (=> b!4056577 (= e!2517262 (nullable!4164 (regex!6956 (rule!10042 token!484))))))

(declare-fun b!4056578 () Bool)

(declare-fun res!1654118 () Bool)

(assert (=> b!4056578 (=> (not res!1654118) (not e!2517263))))

(declare-fun call!288034 () Bool)

(assert (=> b!4056578 (= res!1654118 (not call!288034))))

(declare-fun b!4056579 () Bool)

(declare-fun res!1654121 () Bool)

(assert (=> b!4056579 (=> res!1654121 e!2517259)))

(assert (=> b!4056579 (= res!1654121 e!2517263)))

(declare-fun res!1654122 () Bool)

(assert (=> b!4056579 (=> (not res!1654122) (not e!2517263))))

(assert (=> b!4056579 (= res!1654122 lt!1448193)))

(declare-fun b!4056580 () Bool)

(assert (=> b!4056580 (= e!2517260 e!2517257)))

(declare-fun res!1654123 () Bool)

(assert (=> b!4056580 (=> res!1654123 e!2517257)))

(assert (=> b!4056580 (= res!1654123 call!288034)))

(declare-fun b!4056581 () Bool)

(assert (=> b!4056581 (= e!2517263 (= (head!8567 lt!1447889) (c!700485 (regex!6956 (rule!10042 token!484)))))))

(declare-fun b!4056582 () Bool)

(assert (=> b!4056582 (= e!2517258 (not lt!1448193))))

(declare-fun b!4056583 () Bool)

(assert (=> b!4056583 (= e!2517261 (= lt!1448193 call!288034))))

(declare-fun bm!288029 () Bool)

(assert (=> bm!288029 (= call!288034 (isEmpty!25871 lt!1447889))))

(declare-fun b!4056584 () Bool)

(assert (=> b!4056584 (= e!2517261 e!2517258)))

(declare-fun c!700597 () Bool)

(assert (=> b!4056584 (= c!700597 ((_ is EmptyLang!11861) (regex!6956 (rule!10042 token!484))))))

(assert (= (and d!1205119 c!700595) b!4056577))

(assert (= (and d!1205119 (not c!700595)) b!4056571))

(assert (= (and d!1205119 c!700596) b!4056583))

(assert (= (and d!1205119 (not c!700596)) b!4056584))

(assert (= (and b!4056584 c!700597) b!4056582))

(assert (= (and b!4056584 (not c!700597)) b!4056574))

(assert (= (and b!4056574 (not res!1654125)) b!4056579))

(assert (= (and b!4056579 res!1654122) b!4056578))

(assert (= (and b!4056578 res!1654118) b!4056573))

(assert (= (and b!4056573 res!1654120) b!4056581))

(assert (= (and b!4056579 (not res!1654121)) b!4056572))

(assert (= (and b!4056572 res!1654124) b!4056580))

(assert (= (and b!4056580 (not res!1654123)) b!4056576))

(assert (= (and b!4056576 (not res!1654119)) b!4056575))

(assert (= (or b!4056583 b!4056578 b!4056580) bm!288029))

(assert (=> b!4056575 m!4659835))

(assert (=> b!4056581 m!4659835))

(declare-fun m!4660441 () Bool)

(assert (=> b!4056577 m!4660441))

(assert (=> b!4056571 m!4659835))

(assert (=> b!4056571 m!4659835))

(declare-fun m!4660443 () Bool)

(assert (=> b!4056571 m!4660443))

(assert (=> b!4056571 m!4659829))

(assert (=> b!4056571 m!4660443))

(assert (=> b!4056571 m!4659829))

(declare-fun m!4660445 () Bool)

(assert (=> b!4056571 m!4660445))

(declare-fun m!4660447 () Bool)

(assert (=> bm!288029 m!4660447))

(assert (=> d!1205119 m!4660447))

(declare-fun m!4660449 () Bool)

(assert (=> d!1205119 m!4660449))

(assert (=> b!4056576 m!4659829))

(assert (=> b!4056576 m!4659829))

(declare-fun m!4660451 () Bool)

(assert (=> b!4056576 m!4660451))

(assert (=> b!4056573 m!4659829))

(assert (=> b!4056573 m!4659829))

(assert (=> b!4056573 m!4660451))

(assert (=> b!4055906 d!1205119))

(declare-fun b!4056585 () Bool)

(declare-fun e!2517265 () Bool)

(declare-fun e!2517266 () Bool)

(assert (=> b!4056585 (= e!2517265 e!2517266)))

(declare-fun res!1654128 () Bool)

(assert (=> b!4056585 (=> (not res!1654128) (not e!2517266))))

(assert (=> b!4056585 (= res!1654128 (not ((_ is Nil!43357) lt!1447925)))))

(declare-fun b!4056588 () Bool)

(declare-fun e!2517264 () Bool)

(assert (=> b!4056588 (= e!2517264 (>= (size!32416 lt!1447925) (size!32416 lt!1447889)))))

(declare-fun d!1205121 () Bool)

(assert (=> d!1205121 e!2517264))

(declare-fun res!1654129 () Bool)

(assert (=> d!1205121 (=> res!1654129 e!2517264)))

(declare-fun lt!1448194 () Bool)

(assert (=> d!1205121 (= res!1654129 (not lt!1448194))))

(assert (=> d!1205121 (= lt!1448194 e!2517265)))

(declare-fun res!1654127 () Bool)

(assert (=> d!1205121 (=> res!1654127 e!2517265)))

(assert (=> d!1205121 (= res!1654127 ((_ is Nil!43357) lt!1447889))))

(assert (=> d!1205121 (= (isPrefix!4043 lt!1447889 lt!1447925) lt!1448194)))

(declare-fun b!4056587 () Bool)

(assert (=> b!4056587 (= e!2517266 (isPrefix!4043 (tail!6299 lt!1447889) (tail!6299 lt!1447925)))))

(declare-fun b!4056586 () Bool)

(declare-fun res!1654126 () Bool)

(assert (=> b!4056586 (=> (not res!1654126) (not e!2517266))))

(assert (=> b!4056586 (= res!1654126 (= (head!8567 lt!1447889) (head!8567 lt!1447925)))))

(assert (= (and d!1205121 (not res!1654127)) b!4056585))

(assert (= (and b!4056585 res!1654128) b!4056586))

(assert (= (and b!4056586 res!1654126) b!4056587))

(assert (= (and d!1205121 (not res!1654129)) b!4056588))

(assert (=> b!4056588 m!4659715))

(assert (=> b!4056588 m!4659447))

(assert (=> b!4056587 m!4659829))

(assert (=> b!4056587 m!4660421))

(assert (=> b!4056587 m!4659829))

(assert (=> b!4056587 m!4660421))

(declare-fun m!4660453 () Bool)

(assert (=> b!4056587 m!4660453))

(assert (=> b!4056586 m!4659835))

(assert (=> b!4056586 m!4660425))

(assert (=> b!4055906 d!1205121))

(declare-fun d!1205123 () Bool)

(assert (=> d!1205123 (isPrefix!4043 lt!1447889 (++!11358 prefix!494 newSuffix!27))))

(declare-fun lt!1448195 () Unit!62712)

(assert (=> d!1205123 (= lt!1448195 (choose!24615 lt!1447889 prefix!494 newSuffix!27))))

(assert (=> d!1205123 (isPrefix!4043 lt!1447889 prefix!494)))

(assert (=> d!1205123 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!836 lt!1447889 prefix!494 newSuffix!27) lt!1448195)))

(declare-fun bs!591827 () Bool)

(assert (= bs!591827 d!1205123))

(assert (=> bs!591827 m!4659461))

(assert (=> bs!591827 m!4659461))

(declare-fun m!4660455 () Bool)

(assert (=> bs!591827 m!4660455))

(declare-fun m!4660457 () Bool)

(assert (=> bs!591827 m!4660457))

(assert (=> bs!591827 m!4659331))

(assert (=> b!4055906 d!1205123))

(declare-fun d!1205125 () Bool)

(assert (=> d!1205125 (isPrefix!4043 lt!1447889 (++!11358 prefix!494 suffix!1299))))

(declare-fun lt!1448196 () Unit!62712)

(assert (=> d!1205125 (= lt!1448196 (choose!24615 lt!1447889 prefix!494 suffix!1299))))

(assert (=> d!1205125 (isPrefix!4043 lt!1447889 prefix!494)))

(assert (=> d!1205125 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!836 lt!1447889 prefix!494 suffix!1299) lt!1448196)))

(declare-fun bs!591828 () Bool)

(assert (= bs!591828 d!1205125))

(assert (=> bs!591828 m!4659431))

(assert (=> bs!591828 m!4659431))

(declare-fun m!4660459 () Bool)

(assert (=> bs!591828 m!4660459))

(declare-fun m!4660461 () Bool)

(assert (=> bs!591828 m!4660461))

(assert (=> bs!591828 m!4659331))

(assert (=> b!4055906 d!1205125))

(declare-fun b!4056589 () Bool)

(declare-fun e!2517268 () Bool)

(declare-fun e!2517269 () Bool)

(assert (=> b!4056589 (= e!2517268 e!2517269)))

(declare-fun res!1654132 () Bool)

(assert (=> b!4056589 (=> (not res!1654132) (not e!2517269))))

(assert (=> b!4056589 (= res!1654132 (not ((_ is Nil!43357) lt!1447877)))))

(declare-fun b!4056592 () Bool)

(declare-fun e!2517267 () Bool)

(assert (=> b!4056592 (= e!2517267 (>= (size!32416 lt!1447877) (size!32416 lt!1447907)))))

(declare-fun d!1205127 () Bool)

(assert (=> d!1205127 e!2517267))

(declare-fun res!1654133 () Bool)

(assert (=> d!1205127 (=> res!1654133 e!2517267)))

(declare-fun lt!1448197 () Bool)

(assert (=> d!1205127 (= res!1654133 (not lt!1448197))))

(assert (=> d!1205127 (= lt!1448197 e!2517268)))

(declare-fun res!1654131 () Bool)

(assert (=> d!1205127 (=> res!1654131 e!2517268)))

(assert (=> d!1205127 (= res!1654131 ((_ is Nil!43357) lt!1447907))))

(assert (=> d!1205127 (= (isPrefix!4043 lt!1447907 lt!1447877) lt!1448197)))

(declare-fun b!4056591 () Bool)

(assert (=> b!4056591 (= e!2517269 (isPrefix!4043 (tail!6299 lt!1447907) (tail!6299 lt!1447877)))))

(declare-fun b!4056590 () Bool)

(declare-fun res!1654130 () Bool)

(assert (=> b!4056590 (=> (not res!1654130) (not e!2517269))))

(assert (=> b!4056590 (= res!1654130 (= (head!8567 lt!1447907) (head!8567 lt!1447877)))))

(assert (= (and d!1205127 (not res!1654131)) b!4056589))

(assert (= (and b!4056589 res!1654132) b!4056590))

(assert (= (and b!4056590 res!1654130) b!4056591))

(assert (= (and d!1205127 (not res!1654133)) b!4056592))

(declare-fun m!4660463 () Bool)

(assert (=> b!4056592 m!4660463))

(assert (=> b!4056592 m!4659305))

(assert (=> b!4056591 m!4659501))

(declare-fun m!4660465 () Bool)

(assert (=> b!4056591 m!4660465))

(assert (=> b!4056591 m!4659501))

(assert (=> b!4056591 m!4660465))

(declare-fun m!4660467 () Bool)

(assert (=> b!4056591 m!4660467))

(assert (=> b!4056590 m!4659507))

(declare-fun m!4660469 () Bool)

(assert (=> b!4056590 m!4660469))

(assert (=> b!4055907 d!1205127))

(declare-fun d!1205129 () Bool)

(assert (=> d!1205129 (= (list!16156 (charsOf!4772 (_1!24343 (v!39783 lt!1447926)))) (list!16158 (c!700484 (charsOf!4772 (_1!24343 (v!39783 lt!1447926))))))))

(declare-fun bs!591829 () Bool)

(assert (= bs!591829 d!1205129))

(declare-fun m!4660471 () Bool)

(assert (=> bs!591829 m!4660471))

(assert (=> b!4055907 d!1205129))

(declare-fun d!1205131 () Bool)

(assert (=> d!1205131 (ruleValid!2886 thiss!21717 (rule!10042 (_1!24343 (v!39783 lt!1447926))))))

(declare-fun lt!1448200 () Unit!62712)

(declare-fun choose!24631 (LexerInterface!6545 Rule!13712 List!43483) Unit!62712)

(assert (=> d!1205131 (= lt!1448200 (choose!24631 thiss!21717 (rule!10042 (_1!24343 (v!39783 lt!1447926))) rules!2999))))

(assert (=> d!1205131 (contains!8624 rules!2999 (rule!10042 (_1!24343 (v!39783 lt!1447926))))))

(assert (=> d!1205131 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1956 thiss!21717 (rule!10042 (_1!24343 (v!39783 lt!1447926))) rules!2999) lt!1448200)))

(declare-fun bs!591830 () Bool)

(assert (= bs!591830 d!1205131))

(assert (=> bs!591830 m!4659321))

(declare-fun m!4660473 () Bool)

(assert (=> bs!591830 m!4660473))

(assert (=> bs!591830 m!4659417))

(assert (=> b!4055907 d!1205131))

(declare-fun b!4056594 () Bool)

(declare-fun e!2517270 () List!43481)

(assert (=> b!4056594 (= e!2517270 (Cons!43357 (h!48777 lt!1447907) (++!11358 (t!336238 lt!1447907) (_2!24343 (v!39783 lt!1447926)))))))

(declare-fun b!4056593 () Bool)

(assert (=> b!4056593 (= e!2517270 (_2!24343 (v!39783 lt!1447926)))))

(declare-fun b!4056595 () Bool)

(declare-fun res!1654135 () Bool)

(declare-fun e!2517271 () Bool)

(assert (=> b!4056595 (=> (not res!1654135) (not e!2517271))))

(declare-fun lt!1448201 () List!43481)

(assert (=> b!4056595 (= res!1654135 (= (size!32416 lt!1448201) (+ (size!32416 lt!1447907) (size!32416 (_2!24343 (v!39783 lt!1447926))))))))

(declare-fun d!1205133 () Bool)

(assert (=> d!1205133 e!2517271))

(declare-fun res!1654134 () Bool)

(assert (=> d!1205133 (=> (not res!1654134) (not e!2517271))))

(assert (=> d!1205133 (= res!1654134 (= (content!6604 lt!1448201) ((_ map or) (content!6604 lt!1447907) (content!6604 (_2!24343 (v!39783 lt!1447926))))))))

(assert (=> d!1205133 (= lt!1448201 e!2517270)))

(declare-fun c!700598 () Bool)

(assert (=> d!1205133 (= c!700598 ((_ is Nil!43357) lt!1447907))))

(assert (=> d!1205133 (= (++!11358 lt!1447907 (_2!24343 (v!39783 lt!1447926))) lt!1448201)))

(declare-fun b!4056596 () Bool)

(assert (=> b!4056596 (= e!2517271 (or (not (= (_2!24343 (v!39783 lt!1447926)) Nil!43357)) (= lt!1448201 lt!1447907)))))

(assert (= (and d!1205133 c!700598) b!4056593))

(assert (= (and d!1205133 (not c!700598)) b!4056594))

(assert (= (and d!1205133 res!1654134) b!4056595))

(assert (= (and b!4056595 res!1654135) b!4056596))

(declare-fun m!4660475 () Bool)

(assert (=> b!4056594 m!4660475))

(declare-fun m!4660477 () Bool)

(assert (=> b!4056595 m!4660477))

(assert (=> b!4056595 m!4659305))

(declare-fun m!4660479 () Bool)

(assert (=> b!4056595 m!4660479))

(declare-fun m!4660481 () Bool)

(assert (=> d!1205133 m!4660481))

(declare-fun m!4660483 () Bool)

(assert (=> d!1205133 m!4660483))

(declare-fun m!4660485 () Bool)

(assert (=> d!1205133 m!4660485))

(assert (=> b!4055907 d!1205133))

(declare-fun b!4056597 () Bool)

(declare-fun e!2517272 () Bool)

(declare-fun lt!1448206 () Option!9370)

(assert (=> b!4056597 (= e!2517272 (= (size!32415 (_1!24343 (get!14220 lt!1448206))) (size!32416 (originalCharacters!7556 (_1!24343 (get!14220 lt!1448206))))))))

(declare-fun b!4056598 () Bool)

(declare-fun e!2517273 () Bool)

(assert (=> b!4056598 (= e!2517273 e!2517272)))

(declare-fun res!1654141 () Bool)

(assert (=> b!4056598 (=> (not res!1654141) (not e!2517272))))

(assert (=> b!4056598 (= res!1654141 (matchR!5814 (regex!6956 (rule!10042 (_1!24343 (v!39783 lt!1447926)))) (list!16156 (charsOf!4772 (_1!24343 (get!14220 lt!1448206))))))))

(declare-fun d!1205135 () Bool)

(assert (=> d!1205135 e!2517273))

(declare-fun res!1654139 () Bool)

(assert (=> d!1205135 (=> res!1654139 e!2517273)))

(assert (=> d!1205135 (= res!1654139 (isEmpty!25873 lt!1448206))))

(declare-fun e!2517275 () Option!9370)

(assert (=> d!1205135 (= lt!1448206 e!2517275)))

(declare-fun c!700599 () Bool)

(declare-fun lt!1448204 () tuple2!42422)

(assert (=> d!1205135 (= c!700599 (isEmpty!25871 (_1!24345 lt!1448204)))))

(assert (=> d!1205135 (= lt!1448204 (findLongestMatch!1314 (regex!6956 (rule!10042 (_1!24343 (v!39783 lt!1447926)))) lt!1447925))))

(assert (=> d!1205135 (ruleValid!2886 thiss!21717 (rule!10042 (_1!24343 (v!39783 lt!1447926))))))

(assert (=> d!1205135 (= (maxPrefixOneRule!2855 thiss!21717 (rule!10042 (_1!24343 (v!39783 lt!1447926))) lt!1447925) lt!1448206)))

(declare-fun b!4056599 () Bool)

(assert (=> b!4056599 (= e!2517275 (Some!9369 (tuple2!42419 (Token!13051 (apply!10145 (transformation!6956 (rule!10042 (_1!24343 (v!39783 lt!1447926)))) (seqFromList!5173 (_1!24345 lt!1448204))) (rule!10042 (_1!24343 (v!39783 lt!1447926))) (size!32418 (seqFromList!5173 (_1!24345 lt!1448204))) (_1!24345 lt!1448204)) (_2!24345 lt!1448204))))))

(declare-fun lt!1448202 () Unit!62712)

(assert (=> b!4056599 (= lt!1448202 (longestMatchIsAcceptedByMatchOrIsEmpty!1374 (regex!6956 (rule!10042 (_1!24343 (v!39783 lt!1447926)))) lt!1447925))))

(declare-fun res!1654138 () Bool)

(assert (=> b!4056599 (= res!1654138 (isEmpty!25871 (_1!24345 (findLongestMatchInner!1401 (regex!6956 (rule!10042 (_1!24343 (v!39783 lt!1447926)))) Nil!43357 (size!32416 Nil!43357) lt!1447925 lt!1447925 (size!32416 lt!1447925)))))))

(declare-fun e!2517274 () Bool)

(assert (=> b!4056599 (=> res!1654138 e!2517274)))

(assert (=> b!4056599 e!2517274))

(declare-fun lt!1448203 () Unit!62712)

(assert (=> b!4056599 (= lt!1448203 lt!1448202)))

(declare-fun lt!1448205 () Unit!62712)

(assert (=> b!4056599 (= lt!1448205 (lemmaSemiInverse!1929 (transformation!6956 (rule!10042 (_1!24343 (v!39783 lt!1447926)))) (seqFromList!5173 (_1!24345 lt!1448204))))))

(declare-fun b!4056600 () Bool)

(declare-fun res!1654140 () Bool)

(assert (=> b!4056600 (=> (not res!1654140) (not e!2517272))))

(assert (=> b!4056600 (= res!1654140 (= (++!11358 (list!16156 (charsOf!4772 (_1!24343 (get!14220 lt!1448206)))) (_2!24343 (get!14220 lt!1448206))) lt!1447925))))

(declare-fun b!4056601 () Bool)

(assert (=> b!4056601 (= e!2517275 None!9369)))

(declare-fun b!4056602 () Bool)

(declare-fun res!1654142 () Bool)

(assert (=> b!4056602 (=> (not res!1654142) (not e!2517272))))

(assert (=> b!4056602 (= res!1654142 (= (value!218880 (_1!24343 (get!14220 lt!1448206))) (apply!10145 (transformation!6956 (rule!10042 (_1!24343 (get!14220 lt!1448206)))) (seqFromList!5173 (originalCharacters!7556 (_1!24343 (get!14220 lt!1448206)))))))))

(declare-fun b!4056603 () Bool)

(declare-fun res!1654137 () Bool)

(assert (=> b!4056603 (=> (not res!1654137) (not e!2517272))))

(assert (=> b!4056603 (= res!1654137 (= (rule!10042 (_1!24343 (get!14220 lt!1448206))) (rule!10042 (_1!24343 (v!39783 lt!1447926)))))))

(declare-fun b!4056604 () Bool)

(assert (=> b!4056604 (= e!2517274 (matchR!5814 (regex!6956 (rule!10042 (_1!24343 (v!39783 lt!1447926)))) (_1!24345 (findLongestMatchInner!1401 (regex!6956 (rule!10042 (_1!24343 (v!39783 lt!1447926)))) Nil!43357 (size!32416 Nil!43357) lt!1447925 lt!1447925 (size!32416 lt!1447925)))))))

(declare-fun b!4056605 () Bool)

(declare-fun res!1654136 () Bool)

(assert (=> b!4056605 (=> (not res!1654136) (not e!2517272))))

(assert (=> b!4056605 (= res!1654136 (< (size!32416 (_2!24343 (get!14220 lt!1448206))) (size!32416 lt!1447925)))))

(assert (= (and d!1205135 c!700599) b!4056601))

(assert (= (and d!1205135 (not c!700599)) b!4056599))

(assert (= (and b!4056599 (not res!1654138)) b!4056604))

(assert (= (and d!1205135 (not res!1654139)) b!4056598))

(assert (= (and b!4056598 res!1654141) b!4056600))

(assert (= (and b!4056600 res!1654140) b!4056605))

(assert (= (and b!4056605 res!1654136) b!4056603))

(assert (= (and b!4056603 res!1654137) b!4056602))

(assert (= (and b!4056602 res!1654142) b!4056597))

(declare-fun m!4660487 () Bool)

(assert (=> b!4056600 m!4660487))

(declare-fun m!4660489 () Bool)

(assert (=> b!4056600 m!4660489))

(assert (=> b!4056600 m!4660489))

(declare-fun m!4660491 () Bool)

(assert (=> b!4056600 m!4660491))

(assert (=> b!4056600 m!4660491))

(declare-fun m!4660493 () Bool)

(assert (=> b!4056600 m!4660493))

(assert (=> b!4056603 m!4660487))

(assert (=> b!4056604 m!4660319))

(assert (=> b!4056604 m!4659715))

(assert (=> b!4056604 m!4660319))

(assert (=> b!4056604 m!4659715))

(declare-fun m!4660495 () Bool)

(assert (=> b!4056604 m!4660495))

(declare-fun m!4660497 () Bool)

(assert (=> b!4056604 m!4660497))

(assert (=> b!4056597 m!4660487))

(declare-fun m!4660499 () Bool)

(assert (=> b!4056597 m!4660499))

(declare-fun m!4660501 () Bool)

(assert (=> b!4056599 m!4660501))

(assert (=> b!4056599 m!4659715))

(assert (=> b!4056599 m!4660319))

(assert (=> b!4056599 m!4659715))

(assert (=> b!4056599 m!4660495))

(declare-fun m!4660503 () Bool)

(assert (=> b!4056599 m!4660503))

(declare-fun m!4660505 () Bool)

(assert (=> b!4056599 m!4660505))

(assert (=> b!4056599 m!4660503))

(declare-fun m!4660507 () Bool)

(assert (=> b!4056599 m!4660507))

(assert (=> b!4056599 m!4660503))

(declare-fun m!4660509 () Bool)

(assert (=> b!4056599 m!4660509))

(assert (=> b!4056599 m!4660503))

(assert (=> b!4056599 m!4660319))

(declare-fun m!4660511 () Bool)

(assert (=> b!4056599 m!4660511))

(declare-fun m!4660513 () Bool)

(assert (=> d!1205135 m!4660513))

(declare-fun m!4660515 () Bool)

(assert (=> d!1205135 m!4660515))

(declare-fun m!4660517 () Bool)

(assert (=> d!1205135 m!4660517))

(assert (=> d!1205135 m!4659321))

(assert (=> b!4056598 m!4660487))

(assert (=> b!4056598 m!4660489))

(assert (=> b!4056598 m!4660489))

(assert (=> b!4056598 m!4660491))

(assert (=> b!4056598 m!4660491))

(declare-fun m!4660519 () Bool)

(assert (=> b!4056598 m!4660519))

(assert (=> b!4056602 m!4660487))

(declare-fun m!4660521 () Bool)

(assert (=> b!4056602 m!4660521))

(assert (=> b!4056602 m!4660521))

(declare-fun m!4660523 () Bool)

(assert (=> b!4056602 m!4660523))

(assert (=> b!4056605 m!4660487))

(declare-fun m!4660525 () Bool)

(assert (=> b!4056605 m!4660525))

(assert (=> b!4056605 m!4659715))

(assert (=> b!4055907 d!1205135))

(declare-fun d!1205137 () Bool)

(assert (=> d!1205137 (= (seqFromList!5173 lt!1447907) (fromListB!2358 lt!1447907))))

(declare-fun bs!591831 () Bool)

(assert (= bs!591831 d!1205137))

(declare-fun m!4660527 () Bool)

(assert (=> bs!591831 m!4660527))

(assert (=> b!4055907 d!1205137))

(declare-fun d!1205139 () Bool)

(declare-fun lt!1448207 () BalanceConc!25928)

(assert (=> d!1205139 (= (list!16156 lt!1448207) (originalCharacters!7556 (_1!24343 (v!39783 lt!1447926))))))

(assert (=> d!1205139 (= lt!1448207 (dynLambda!18417 (toChars!9371 (transformation!6956 (rule!10042 (_1!24343 (v!39783 lt!1447926))))) (value!218880 (_1!24343 (v!39783 lt!1447926)))))))

(assert (=> d!1205139 (= (charsOf!4772 (_1!24343 (v!39783 lt!1447926))) lt!1448207)))

(declare-fun b_lambda!118529 () Bool)

(assert (=> (not b_lambda!118529) (not d!1205139)))

(declare-fun t!336274 () Bool)

(declare-fun tb!244017 () Bool)

(assert (=> (and b!4055892 (= (toChars!9371 (transformation!6956 (h!48779 rules!2999))) (toChars!9371 (transformation!6956 (rule!10042 (_1!24343 (v!39783 lt!1447926)))))) t!336274) tb!244017))

(declare-fun b!4056606 () Bool)

(declare-fun e!2517276 () Bool)

(declare-fun tp!1229456 () Bool)

(assert (=> b!4056606 (= e!2517276 (and (inv!57963 (c!700484 (dynLambda!18417 (toChars!9371 (transformation!6956 (rule!10042 (_1!24343 (v!39783 lt!1447926))))) (value!218880 (_1!24343 (v!39783 lt!1447926)))))) tp!1229456))))

(declare-fun result!295684 () Bool)

(assert (=> tb!244017 (= result!295684 (and (inv!57964 (dynLambda!18417 (toChars!9371 (transformation!6956 (rule!10042 (_1!24343 (v!39783 lt!1447926))))) (value!218880 (_1!24343 (v!39783 lt!1447926))))) e!2517276))))

(assert (= tb!244017 b!4056606))

(declare-fun m!4660529 () Bool)

(assert (=> b!4056606 m!4660529))

(declare-fun m!4660531 () Bool)

(assert (=> tb!244017 m!4660531))

(assert (=> d!1205139 t!336274))

(declare-fun b_and!311919 () Bool)

(assert (= b_and!311915 (and (=> t!336274 result!295684) b_and!311919)))

(declare-fun t!336276 () Bool)

(declare-fun tb!244019 () Bool)

(assert (=> (and b!4055919 (= (toChars!9371 (transformation!6956 (rule!10042 token!484))) (toChars!9371 (transformation!6956 (rule!10042 (_1!24343 (v!39783 lt!1447926)))))) t!336276) tb!244019))

(declare-fun result!295686 () Bool)

(assert (= result!295686 result!295684))

(assert (=> d!1205139 t!336276))

(declare-fun b_and!311921 () Bool)

(assert (= b_and!311917 (and (=> t!336276 result!295686) b_and!311921)))

(declare-fun m!4660533 () Bool)

(assert (=> d!1205139 m!4660533))

(declare-fun m!4660535 () Bool)

(assert (=> d!1205139 m!4660535))

(assert (=> b!4055907 d!1205139))

(declare-fun d!1205141 () Bool)

(assert (=> d!1205141 (= (apply!10145 (transformation!6956 (rule!10042 (_1!24343 (v!39783 lt!1447926)))) (seqFromList!5173 lt!1447907)) (dynLambda!18418 (toValue!9512 (transformation!6956 (rule!10042 (_1!24343 (v!39783 lt!1447926))))) (seqFromList!5173 lt!1447907)))))

(declare-fun b_lambda!118531 () Bool)

(assert (=> (not b_lambda!118531) (not d!1205141)))

(declare-fun tb!244021 () Bool)

(declare-fun t!336278 () Bool)

(assert (=> (and b!4055892 (= (toValue!9512 (transformation!6956 (h!48779 rules!2999))) (toValue!9512 (transformation!6956 (rule!10042 (_1!24343 (v!39783 lt!1447926)))))) t!336278) tb!244021))

(declare-fun result!295688 () Bool)

(assert (=> tb!244021 (= result!295688 (inv!21 (dynLambda!18418 (toValue!9512 (transformation!6956 (rule!10042 (_1!24343 (v!39783 lt!1447926))))) (seqFromList!5173 lt!1447907))))))

(declare-fun m!4660537 () Bool)

(assert (=> tb!244021 m!4660537))

(assert (=> d!1205141 t!336278))

(declare-fun b_and!311923 () Bool)

(assert (= b_and!311907 (and (=> t!336278 result!295688) b_and!311923)))

(declare-fun tb!244023 () Bool)

(declare-fun t!336280 () Bool)

(assert (=> (and b!4055919 (= (toValue!9512 (transformation!6956 (rule!10042 token!484))) (toValue!9512 (transformation!6956 (rule!10042 (_1!24343 (v!39783 lt!1447926)))))) t!336280) tb!244023))

(declare-fun result!295690 () Bool)

(assert (= result!295690 result!295688))

(assert (=> d!1205141 t!336280))

(declare-fun b_and!311925 () Bool)

(assert (= b_and!311909 (and (=> t!336280 result!295690) b_and!311925)))

(assert (=> d!1205141 m!4659301))

(declare-fun m!4660539 () Bool)

(assert (=> d!1205141 m!4660539))

(assert (=> b!4055907 d!1205141))

(declare-fun b!4056607 () Bool)

(declare-fun e!2517279 () Bool)

(declare-fun e!2517280 () Bool)

(assert (=> b!4056607 (= e!2517279 e!2517280)))

(declare-fun res!1654145 () Bool)

(assert (=> b!4056607 (=> (not res!1654145) (not e!2517280))))

(assert (=> b!4056607 (= res!1654145 (not ((_ is Nil!43357) (++!11358 lt!1447907 newSuffixResult!27))))))

(declare-fun b!4056610 () Bool)

(declare-fun e!2517278 () Bool)

(assert (=> b!4056610 (= e!2517278 (>= (size!32416 (++!11358 lt!1447907 newSuffixResult!27)) (size!32416 lt!1447907)))))

(declare-fun d!1205143 () Bool)

(assert (=> d!1205143 e!2517278))

(declare-fun res!1654146 () Bool)

(assert (=> d!1205143 (=> res!1654146 e!2517278)))

(declare-fun lt!1448208 () Bool)

(assert (=> d!1205143 (= res!1654146 (not lt!1448208))))

(assert (=> d!1205143 (= lt!1448208 e!2517279)))

(declare-fun res!1654144 () Bool)

(assert (=> d!1205143 (=> res!1654144 e!2517279)))

(assert (=> d!1205143 (= res!1654144 ((_ is Nil!43357) lt!1447907))))

(assert (=> d!1205143 (= (isPrefix!4043 lt!1447907 (++!11358 lt!1447907 newSuffixResult!27)) lt!1448208)))

(declare-fun b!4056609 () Bool)

(assert (=> b!4056609 (= e!2517280 (isPrefix!4043 (tail!6299 lt!1447907) (tail!6299 (++!11358 lt!1447907 newSuffixResult!27))))))

(declare-fun b!4056608 () Bool)

(declare-fun res!1654143 () Bool)

(assert (=> b!4056608 (=> (not res!1654143) (not e!2517280))))

(assert (=> b!4056608 (= res!1654143 (= (head!8567 lt!1447907) (head!8567 (++!11358 lt!1447907 newSuffixResult!27))))))

(assert (= (and d!1205143 (not res!1654144)) b!4056607))

(assert (= (and b!4056607 res!1654145) b!4056608))

(assert (= (and b!4056608 res!1654143) b!4056609))

(assert (= (and d!1205143 (not res!1654146)) b!4056610))

(assert (=> b!4056610 m!4659289))

(declare-fun m!4660541 () Bool)

(assert (=> b!4056610 m!4660541))

(assert (=> b!4056610 m!4659305))

(assert (=> b!4056609 m!4659501))

(assert (=> b!4056609 m!4659289))

(declare-fun m!4660543 () Bool)

(assert (=> b!4056609 m!4660543))

(assert (=> b!4056609 m!4659501))

(assert (=> b!4056609 m!4660543))

(declare-fun m!4660545 () Bool)

(assert (=> b!4056609 m!4660545))

(assert (=> b!4056608 m!4659507))

(assert (=> b!4056608 m!4659289))

(declare-fun m!4660547 () Bool)

(assert (=> b!4056608 m!4660547))

(assert (=> b!4055907 d!1205143))

(declare-fun d!1205145 () Bool)

(declare-fun e!2517283 () Bool)

(assert (=> d!1205145 e!2517283))

(declare-fun res!1654149 () Bool)

(assert (=> d!1205145 (=> (not res!1654149) (not e!2517283))))

(declare-fun semiInverseModEq!2972 (Int Int) Bool)

(assert (=> d!1205145 (= res!1654149 (semiInverseModEq!2972 (toChars!9371 (transformation!6956 (rule!10042 (_1!24343 (v!39783 lt!1447926))))) (toValue!9512 (transformation!6956 (rule!10042 (_1!24343 (v!39783 lt!1447926)))))))))

(declare-fun Unit!62723 () Unit!62712)

(assert (=> d!1205145 (= (lemmaInv!1165 (transformation!6956 (rule!10042 (_1!24343 (v!39783 lt!1447926))))) Unit!62723)))

(declare-fun b!4056613 () Bool)

(declare-fun equivClasses!2871 (Int Int) Bool)

(assert (=> b!4056613 (= e!2517283 (equivClasses!2871 (toChars!9371 (transformation!6956 (rule!10042 (_1!24343 (v!39783 lt!1447926))))) (toValue!9512 (transformation!6956 (rule!10042 (_1!24343 (v!39783 lt!1447926)))))))))

(assert (= (and d!1205145 res!1654149) b!4056613))

(declare-fun m!4660549 () Bool)

(assert (=> d!1205145 m!4660549))

(declare-fun m!4660551 () Bool)

(assert (=> b!4056613 m!4660551))

(assert (=> b!4055907 d!1205145))

(declare-fun d!1205147 () Bool)

(assert (=> d!1205147 (isPrefix!4043 lt!1447907 (++!11358 lt!1447907 newSuffixResult!27))))

(declare-fun lt!1448209 () Unit!62712)

(assert (=> d!1205147 (= lt!1448209 (choose!24624 lt!1447907 newSuffixResult!27))))

(assert (=> d!1205147 (= (lemmaConcatTwoListThenFirstIsPrefix!2878 lt!1447907 newSuffixResult!27) lt!1448209)))

(declare-fun bs!591832 () Bool)

(assert (= bs!591832 d!1205147))

(assert (=> bs!591832 m!4659289))

(assert (=> bs!591832 m!4659289))

(assert (=> bs!591832 m!4659291))

(declare-fun m!4660553 () Bool)

(assert (=> bs!591832 m!4660553))

(assert (=> b!4055907 d!1205147))

(declare-fun d!1205149 () Bool)

(declare-fun lt!1448210 () Int)

(assert (=> d!1205149 (>= lt!1448210 0)))

(declare-fun e!2517284 () Int)

(assert (=> d!1205149 (= lt!1448210 e!2517284)))

(declare-fun c!700600 () Bool)

(assert (=> d!1205149 (= c!700600 ((_ is Nil!43357) lt!1447907))))

(assert (=> d!1205149 (= (size!32416 lt!1447907) lt!1448210)))

(declare-fun b!4056614 () Bool)

(assert (=> b!4056614 (= e!2517284 0)))

(declare-fun b!4056615 () Bool)

(assert (=> b!4056615 (= e!2517284 (+ 1 (size!32416 (t!336238 lt!1447907))))))

(assert (= (and d!1205149 c!700600) b!4056614))

(assert (= (and d!1205149 (not c!700600)) b!4056615))

(declare-fun m!4660555 () Bool)

(assert (=> b!4056615 m!4660555))

(assert (=> b!4055907 d!1205149))

(declare-fun b!4056617 () Bool)

(declare-fun e!2517285 () List!43481)

(assert (=> b!4056617 (= e!2517285 (Cons!43357 (h!48777 lt!1447907) (++!11358 (t!336238 lt!1447907) newSuffixResult!27)))))

(declare-fun b!4056616 () Bool)

(assert (=> b!4056616 (= e!2517285 newSuffixResult!27)))

(declare-fun b!4056618 () Bool)

(declare-fun res!1654151 () Bool)

(declare-fun e!2517286 () Bool)

(assert (=> b!4056618 (=> (not res!1654151) (not e!2517286))))

(declare-fun lt!1448211 () List!43481)

(assert (=> b!4056618 (= res!1654151 (= (size!32416 lt!1448211) (+ (size!32416 lt!1447907) (size!32416 newSuffixResult!27))))))

(declare-fun d!1205151 () Bool)

(assert (=> d!1205151 e!2517286))

(declare-fun res!1654150 () Bool)

(assert (=> d!1205151 (=> (not res!1654150) (not e!2517286))))

(assert (=> d!1205151 (= res!1654150 (= (content!6604 lt!1448211) ((_ map or) (content!6604 lt!1447907) (content!6604 newSuffixResult!27))))))

(assert (=> d!1205151 (= lt!1448211 e!2517285)))

(declare-fun c!700601 () Bool)

(assert (=> d!1205151 (= c!700601 ((_ is Nil!43357) lt!1447907))))

(assert (=> d!1205151 (= (++!11358 lt!1447907 newSuffixResult!27) lt!1448211)))

(declare-fun b!4056619 () Bool)

(assert (=> b!4056619 (= e!2517286 (or (not (= newSuffixResult!27 Nil!43357)) (= lt!1448211 lt!1447907)))))

(assert (= (and d!1205151 c!700601) b!4056616))

(assert (= (and d!1205151 (not c!700601)) b!4056617))

(assert (= (and d!1205151 res!1654150) b!4056618))

(assert (= (and b!4056618 res!1654151) b!4056619))

(declare-fun m!4660557 () Bool)

(assert (=> b!4056617 m!4660557))

(declare-fun m!4660559 () Bool)

(assert (=> b!4056618 m!4660559))

(assert (=> b!4056618 m!4659305))

(assert (=> b!4056618 m!4659491))

(declare-fun m!4660561 () Bool)

(assert (=> d!1205151 m!4660561))

(assert (=> d!1205151 m!4660483))

(assert (=> d!1205151 m!4659497))

(assert (=> b!4055907 d!1205151))

(declare-fun d!1205153 () Bool)

(assert (=> d!1205153 (= (maxPrefixOneRule!2855 thiss!21717 (rule!10042 (_1!24343 (v!39783 lt!1447926))) lt!1447925) (Some!9369 (tuple2!42419 (Token!13051 (apply!10145 (transformation!6956 (rule!10042 (_1!24343 (v!39783 lt!1447926)))) (seqFromList!5173 lt!1447907)) (rule!10042 (_1!24343 (v!39783 lt!1447926))) (size!32416 lt!1447907) lt!1447907) (_2!24343 (v!39783 lt!1447926)))))))

(declare-fun lt!1448212 () Unit!62712)

(assert (=> d!1205153 (= lt!1448212 (choose!24626 thiss!21717 rules!2999 lt!1447907 lt!1447925 (_2!24343 (v!39783 lt!1447926)) (rule!10042 (_1!24343 (v!39783 lt!1447926)))))))

(assert (=> d!1205153 (not (isEmpty!25869 rules!2999))))

(assert (=> d!1205153 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1661 thiss!21717 rules!2999 lt!1447907 lt!1447925 (_2!24343 (v!39783 lt!1447926)) (rule!10042 (_1!24343 (v!39783 lt!1447926)))) lt!1448212)))

(declare-fun bs!591833 () Bool)

(assert (= bs!591833 d!1205153))

(assert (=> bs!591833 m!4659393))

(assert (=> bs!591833 m!4659301))

(assert (=> bs!591833 m!4659303))

(assert (=> bs!591833 m!4659305))

(assert (=> bs!591833 m!4659301))

(assert (=> bs!591833 m!4659309))

(declare-fun m!4660563 () Bool)

(assert (=> bs!591833 m!4660563))

(assert (=> b!4055907 d!1205153))

(declare-fun d!1205155 () Bool)

(assert (=> d!1205155 (= (size!32415 token!484) (size!32416 (originalCharacters!7556 token!484)))))

(declare-fun Unit!62724 () Unit!62712)

(assert (=> d!1205155 (= (lemmaCharactersSize!1475 token!484) Unit!62724)))

(declare-fun bs!591834 () Bool)

(assert (= bs!591834 d!1205155))

(assert (=> bs!591834 m!4659413))

(assert (=> b!4055907 d!1205155))

(declare-fun d!1205157 () Bool)

(assert (=> d!1205157 (isPrefix!4043 lt!1447907 (++!11358 lt!1447907 (_2!24343 (v!39783 lt!1447926))))))

(declare-fun lt!1448213 () Unit!62712)

(assert (=> d!1205157 (= lt!1448213 (choose!24624 lt!1447907 (_2!24343 (v!39783 lt!1447926))))))

(assert (=> d!1205157 (= (lemmaConcatTwoListThenFirstIsPrefix!2878 lt!1447907 (_2!24343 (v!39783 lt!1447926))) lt!1448213)))

(declare-fun bs!591835 () Bool)

(assert (= bs!591835 d!1205157))

(assert (=> bs!591835 m!4659299))

(assert (=> bs!591835 m!4659299))

(declare-fun m!4660565 () Bool)

(assert (=> bs!591835 m!4660565))

(declare-fun m!4660567 () Bool)

(assert (=> bs!591835 m!4660567))

(assert (=> b!4055907 d!1205157))

(declare-fun d!1205159 () Bool)

(assert (=> d!1205159 (= (size!32415 (_1!24343 (v!39783 lt!1447926))) (size!32416 (originalCharacters!7556 (_1!24343 (v!39783 lt!1447926)))))))

(declare-fun Unit!62725 () Unit!62712)

(assert (=> d!1205159 (= (lemmaCharactersSize!1475 (_1!24343 (v!39783 lt!1447926))) Unit!62725)))

(declare-fun bs!591836 () Bool)

(assert (= bs!591836 d!1205159))

(declare-fun m!4660569 () Bool)

(assert (=> bs!591836 m!4660569))

(assert (=> b!4055907 d!1205159))

(declare-fun d!1205161 () Bool)

(declare-fun res!1654156 () Bool)

(declare-fun e!2517289 () Bool)

(assert (=> d!1205161 (=> (not res!1654156) (not e!2517289))))

(assert (=> d!1205161 (= res!1654156 (validRegex!5364 (regex!6956 (rule!10042 (_1!24343 (v!39783 lt!1447926))))))))

(assert (=> d!1205161 (= (ruleValid!2886 thiss!21717 (rule!10042 (_1!24343 (v!39783 lt!1447926)))) e!2517289)))

(declare-fun b!4056624 () Bool)

(declare-fun res!1654157 () Bool)

(assert (=> b!4056624 (=> (not res!1654157) (not e!2517289))))

(assert (=> b!4056624 (= res!1654157 (not (nullable!4164 (regex!6956 (rule!10042 (_1!24343 (v!39783 lt!1447926)))))))))

(declare-fun b!4056625 () Bool)

(assert (=> b!4056625 (= e!2517289 (not (= (tag!7816 (rule!10042 (_1!24343 (v!39783 lt!1447926)))) (String!49649 ""))))))

(assert (= (and d!1205161 res!1654156) b!4056624))

(assert (= (and b!4056624 res!1654157) b!4056625))

(assert (=> d!1205161 m!4659643))

(assert (=> b!4056624 m!4659635))

(assert (=> b!4055907 d!1205161))

(declare-fun b!4056627 () Bool)

(declare-fun e!2517290 () List!43481)

(assert (=> b!4056627 (= e!2517290 (Cons!43357 (h!48777 lt!1447889) (++!11358 (t!336238 lt!1447889) suffixResult!105)))))

(declare-fun b!4056626 () Bool)

(assert (=> b!4056626 (= e!2517290 suffixResult!105)))

(declare-fun b!4056628 () Bool)

(declare-fun res!1654159 () Bool)

(declare-fun e!2517291 () Bool)

(assert (=> b!4056628 (=> (not res!1654159) (not e!2517291))))

(declare-fun lt!1448214 () List!43481)

(assert (=> b!4056628 (= res!1654159 (= (size!32416 lt!1448214) (+ (size!32416 lt!1447889) (size!32416 suffixResult!105))))))

(declare-fun d!1205163 () Bool)

(assert (=> d!1205163 e!2517291))

(declare-fun res!1654158 () Bool)

(assert (=> d!1205163 (=> (not res!1654158) (not e!2517291))))

(assert (=> d!1205163 (= res!1654158 (= (content!6604 lt!1448214) ((_ map or) (content!6604 lt!1447889) (content!6604 suffixResult!105))))))

(assert (=> d!1205163 (= lt!1448214 e!2517290)))

(declare-fun c!700602 () Bool)

(assert (=> d!1205163 (= c!700602 ((_ is Nil!43357) lt!1447889))))

(assert (=> d!1205163 (= (++!11358 lt!1447889 suffixResult!105) lt!1448214)))

(declare-fun b!4056629 () Bool)

(assert (=> b!4056629 (= e!2517291 (or (not (= suffixResult!105 Nil!43357)) (= lt!1448214 lt!1447889)))))

(assert (= (and d!1205163 c!700602) b!4056626))

(assert (= (and d!1205163 (not c!700602)) b!4056627))

(assert (= (and d!1205163 res!1654158) b!4056628))

(assert (= (and b!4056628 res!1654159) b!4056629))

(declare-fun m!4660571 () Bool)

(assert (=> b!4056627 m!4660571))

(declare-fun m!4660573 () Bool)

(assert (=> b!4056628 m!4660573))

(assert (=> b!4056628 m!4659447))

(declare-fun m!4660575 () Bool)

(assert (=> b!4056628 m!4660575))

(declare-fun m!4660577 () Bool)

(assert (=> d!1205163 m!4660577))

(assert (=> d!1205163 m!4659495))

(declare-fun m!4660579 () Bool)

(assert (=> d!1205163 m!4660579))

(assert (=> b!4055886 d!1205163))

(declare-fun d!1205165 () Bool)

(declare-fun e!2517292 () Bool)

(assert (=> d!1205165 e!2517292))

(declare-fun res!1654160 () Bool)

(assert (=> d!1205165 (=> (not res!1654160) (not e!2517292))))

(assert (=> d!1205165 (= res!1654160 (semiInverseModEq!2972 (toChars!9371 (transformation!6956 (rule!10042 token!484))) (toValue!9512 (transformation!6956 (rule!10042 token!484)))))))

(declare-fun Unit!62726 () Unit!62712)

(assert (=> d!1205165 (= (lemmaInv!1165 (transformation!6956 (rule!10042 token!484))) Unit!62726)))

(declare-fun b!4056630 () Bool)

(assert (=> b!4056630 (= e!2517292 (equivClasses!2871 (toChars!9371 (transformation!6956 (rule!10042 token!484))) (toValue!9512 (transformation!6956 (rule!10042 token!484)))))))

(assert (= (and d!1205165 res!1654160) b!4056630))

(declare-fun m!4660581 () Bool)

(assert (=> d!1205165 m!4660581))

(declare-fun m!4660583 () Bool)

(assert (=> b!4056630 m!4660583))

(assert (=> b!4055886 d!1205165))

(declare-fun d!1205167 () Bool)

(declare-fun res!1654161 () Bool)

(declare-fun e!2517293 () Bool)

(assert (=> d!1205167 (=> (not res!1654161) (not e!2517293))))

(assert (=> d!1205167 (= res!1654161 (validRegex!5364 (regex!6956 (rule!10042 token!484))))))

(assert (=> d!1205167 (= (ruleValid!2886 thiss!21717 (rule!10042 token!484)) e!2517293)))

(declare-fun b!4056631 () Bool)

(declare-fun res!1654162 () Bool)

(assert (=> b!4056631 (=> (not res!1654162) (not e!2517293))))

(assert (=> b!4056631 (= res!1654162 (not (nullable!4164 (regex!6956 (rule!10042 token!484)))))))

(declare-fun b!4056632 () Bool)

(assert (=> b!4056632 (= e!2517293 (not (= (tag!7816 (rule!10042 token!484)) (String!49649 ""))))))

(assert (= (and d!1205167 res!1654161) b!4056631))

(assert (= (and b!4056631 res!1654162) b!4056632))

(assert (=> d!1205167 m!4660449))

(assert (=> b!4056631 m!4660441))

(assert (=> b!4055886 d!1205167))

(declare-fun d!1205169 () Bool)

(assert (=> d!1205169 (ruleValid!2886 thiss!21717 (rule!10042 token!484))))

(declare-fun lt!1448215 () Unit!62712)

(assert (=> d!1205169 (= lt!1448215 (choose!24631 thiss!21717 (rule!10042 token!484) rules!2999))))

(assert (=> d!1205169 (contains!8624 rules!2999 (rule!10042 token!484))))

(assert (=> d!1205169 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1956 thiss!21717 (rule!10042 token!484) rules!2999) lt!1448215)))

(declare-fun bs!591837 () Bool)

(assert (= bs!591837 d!1205169))

(assert (=> bs!591837 m!4659343))

(declare-fun m!4660585 () Bool)

(assert (=> bs!591837 m!4660585))

(assert (=> bs!591837 m!4659287))

(assert (=> b!4055886 d!1205169))

(declare-fun d!1205171 () Bool)

(declare-fun lt!1448218 () Bool)

(declare-fun content!6607 (List!43483) (InoxSet Rule!13712))

(assert (=> d!1205171 (= lt!1448218 (select (content!6607 rules!2999) (rule!10042 token!484)))))

(declare-fun e!2517298 () Bool)

(assert (=> d!1205171 (= lt!1448218 e!2517298)))

(declare-fun res!1654167 () Bool)

(assert (=> d!1205171 (=> (not res!1654167) (not e!2517298))))

(assert (=> d!1205171 (= res!1654167 ((_ is Cons!43359) rules!2999))))

(assert (=> d!1205171 (= (contains!8624 rules!2999 (rule!10042 token!484)) lt!1448218)))

(declare-fun b!4056637 () Bool)

(declare-fun e!2517299 () Bool)

(assert (=> b!4056637 (= e!2517298 e!2517299)))

(declare-fun res!1654168 () Bool)

(assert (=> b!4056637 (=> res!1654168 e!2517299)))

(assert (=> b!4056637 (= res!1654168 (= (h!48779 rules!2999) (rule!10042 token!484)))))

(declare-fun b!4056638 () Bool)

(assert (=> b!4056638 (= e!2517299 (contains!8624 (t!336240 rules!2999) (rule!10042 token!484)))))

(assert (= (and d!1205171 res!1654167) b!4056637))

(assert (= (and b!4056637 (not res!1654168)) b!4056638))

(declare-fun m!4660587 () Bool)

(assert (=> d!1205171 m!4660587))

(declare-fun m!4660589 () Bool)

(assert (=> d!1205171 m!4660589))

(declare-fun m!4660591 () Bool)

(assert (=> b!4056638 m!4660591))

(assert (=> b!4055887 d!1205171))

(declare-fun d!1205173 () Bool)

(declare-fun c!700608 () Bool)

(assert (=> d!1205173 (= c!700608 ((_ is IntegerValue!21558) (value!218880 token!484)))))

(declare-fun e!2517308 () Bool)

(assert (=> d!1205173 (= (inv!21 (value!218880 token!484)) e!2517308)))

(declare-fun b!4056649 () Bool)

(declare-fun e!2517306 () Bool)

(declare-fun inv!17 (TokenValue!7186) Bool)

(assert (=> b!4056649 (= e!2517306 (inv!17 (value!218880 token!484)))))

(declare-fun b!4056650 () Bool)

(assert (=> b!4056650 (= e!2517308 e!2517306)))

(declare-fun c!700607 () Bool)

(assert (=> b!4056650 (= c!700607 ((_ is IntegerValue!21559) (value!218880 token!484)))))

(declare-fun b!4056651 () Bool)

(declare-fun e!2517307 () Bool)

(declare-fun inv!15 (TokenValue!7186) Bool)

(assert (=> b!4056651 (= e!2517307 (inv!15 (value!218880 token!484)))))

(declare-fun b!4056652 () Bool)

(declare-fun inv!16 (TokenValue!7186) Bool)

(assert (=> b!4056652 (= e!2517308 (inv!16 (value!218880 token!484)))))

(declare-fun b!4056653 () Bool)

(declare-fun res!1654171 () Bool)

(assert (=> b!4056653 (=> res!1654171 e!2517307)))

(assert (=> b!4056653 (= res!1654171 (not ((_ is IntegerValue!21560) (value!218880 token!484))))))

(assert (=> b!4056653 (= e!2517306 e!2517307)))

(assert (= (and d!1205173 c!700608) b!4056652))

(assert (= (and d!1205173 (not c!700608)) b!4056650))

(assert (= (and b!4056650 c!700607) b!4056649))

(assert (= (and b!4056650 (not c!700607)) b!4056653))

(assert (= (and b!4056653 (not res!1654171)) b!4056651))

(declare-fun m!4660593 () Bool)

(assert (=> b!4056649 m!4660593))

(declare-fun m!4660595 () Bool)

(assert (=> b!4056651 m!4660595))

(declare-fun m!4660597 () Bool)

(assert (=> b!4056652 m!4660597))

(assert (=> b!4055908 d!1205173))

(declare-fun b!4056655 () Bool)

(declare-fun e!2517309 () List!43481)

(assert (=> b!4056655 (= e!2517309 (Cons!43357 (h!48777 lt!1447907) (++!11358 (t!336238 lt!1447907) lt!1447880)))))

(declare-fun b!4056654 () Bool)

(assert (=> b!4056654 (= e!2517309 lt!1447880)))

(declare-fun b!4056656 () Bool)

(declare-fun res!1654173 () Bool)

(declare-fun e!2517310 () Bool)

(assert (=> b!4056656 (=> (not res!1654173) (not e!2517310))))

(declare-fun lt!1448219 () List!43481)

(assert (=> b!4056656 (= res!1654173 (= (size!32416 lt!1448219) (+ (size!32416 lt!1447907) (size!32416 lt!1447880))))))

(declare-fun d!1205175 () Bool)

(assert (=> d!1205175 e!2517310))

(declare-fun res!1654172 () Bool)

(assert (=> d!1205175 (=> (not res!1654172) (not e!2517310))))

(assert (=> d!1205175 (= res!1654172 (= (content!6604 lt!1448219) ((_ map or) (content!6604 lt!1447907) (content!6604 lt!1447880))))))

(assert (=> d!1205175 (= lt!1448219 e!2517309)))

(declare-fun c!700609 () Bool)

(assert (=> d!1205175 (= c!700609 ((_ is Nil!43357) lt!1447907))))

(assert (=> d!1205175 (= (++!11358 lt!1447907 lt!1447880) lt!1448219)))

(declare-fun b!4056657 () Bool)

(assert (=> b!4056657 (= e!2517310 (or (not (= lt!1447880 Nil!43357)) (= lt!1448219 lt!1447907)))))

(assert (= (and d!1205175 c!700609) b!4056654))

(assert (= (and d!1205175 (not c!700609)) b!4056655))

(assert (= (and d!1205175 res!1654172) b!4056656))

(assert (= (and b!4056656 res!1654173) b!4056657))

(declare-fun m!4660599 () Bool)

(assert (=> b!4056655 m!4660599))

(declare-fun m!4660601 () Bool)

(assert (=> b!4056656 m!4660601))

(assert (=> b!4056656 m!4659305))

(declare-fun m!4660603 () Bool)

(assert (=> b!4056656 m!4660603))

(declare-fun m!4660605 () Bool)

(assert (=> d!1205175 m!4660605))

(assert (=> d!1205175 m!4660483))

(declare-fun m!4660607 () Bool)

(assert (=> d!1205175 m!4660607))

(assert (=> b!4055898 d!1205175))

(declare-fun d!1205177 () Bool)

(declare-fun lt!1448220 () List!43481)

(assert (=> d!1205177 (= (++!11358 lt!1447907 lt!1448220) lt!1447925)))

(declare-fun e!2517311 () List!43481)

(assert (=> d!1205177 (= lt!1448220 e!2517311)))

(declare-fun c!700610 () Bool)

(assert (=> d!1205177 (= c!700610 ((_ is Cons!43357) lt!1447907))))

(assert (=> d!1205177 (>= (size!32416 lt!1447925) (size!32416 lt!1447907))))

(assert (=> d!1205177 (= (getSuffix!2460 lt!1447925 lt!1447907) lt!1448220)))

(declare-fun b!4056658 () Bool)

(assert (=> b!4056658 (= e!2517311 (getSuffix!2460 (tail!6299 lt!1447925) (t!336238 lt!1447907)))))

(declare-fun b!4056659 () Bool)

(assert (=> b!4056659 (= e!2517311 lt!1447925)))

(assert (= (and d!1205177 c!700610) b!4056658))

(assert (= (and d!1205177 (not c!700610)) b!4056659))

(declare-fun m!4660609 () Bool)

(assert (=> d!1205177 m!4660609))

(assert (=> d!1205177 m!4659715))

(assert (=> d!1205177 m!4659305))

(assert (=> b!4056658 m!4660421))

(assert (=> b!4056658 m!4660421))

(declare-fun m!4660611 () Bool)

(assert (=> b!4056658 m!4660611))

(assert (=> b!4055898 d!1205177))

(declare-fun b!4056661 () Bool)

(declare-fun e!2517312 () List!43481)

(assert (=> b!4056661 (= e!2517312 (Cons!43357 (h!48777 lt!1447889) (++!11358 (t!336238 lt!1447889) lt!1447894)))))

(declare-fun b!4056660 () Bool)

(assert (=> b!4056660 (= e!2517312 lt!1447894)))

(declare-fun b!4056662 () Bool)

(declare-fun res!1654175 () Bool)

(declare-fun e!2517313 () Bool)

(assert (=> b!4056662 (=> (not res!1654175) (not e!2517313))))

(declare-fun lt!1448221 () List!43481)

(assert (=> b!4056662 (= res!1654175 (= (size!32416 lt!1448221) (+ (size!32416 lt!1447889) (size!32416 lt!1447894))))))

(declare-fun d!1205179 () Bool)

(assert (=> d!1205179 e!2517313))

(declare-fun res!1654174 () Bool)

(assert (=> d!1205179 (=> (not res!1654174) (not e!2517313))))

(assert (=> d!1205179 (= res!1654174 (= (content!6604 lt!1448221) ((_ map or) (content!6604 lt!1447889) (content!6604 lt!1447894))))))

(assert (=> d!1205179 (= lt!1448221 e!2517312)))

(declare-fun c!700611 () Bool)

(assert (=> d!1205179 (= c!700611 ((_ is Nil!43357) lt!1447889))))

(assert (=> d!1205179 (= (++!11358 lt!1447889 lt!1447894) lt!1448221)))

(declare-fun b!4056663 () Bool)

(assert (=> b!4056663 (= e!2517313 (or (not (= lt!1447894 Nil!43357)) (= lt!1448221 lt!1447889)))))

(assert (= (and d!1205179 c!700611) b!4056660))

(assert (= (and d!1205179 (not c!700611)) b!4056661))

(assert (= (and d!1205179 res!1654174) b!4056662))

(assert (= (and b!4056662 res!1654175) b!4056663))

(declare-fun m!4660613 () Bool)

(assert (=> b!4056661 m!4660613))

(declare-fun m!4660615 () Bool)

(assert (=> b!4056662 m!4660615))

(assert (=> b!4056662 m!4659447))

(assert (=> b!4056662 m!4659687))

(declare-fun m!4660617 () Bool)

(assert (=> d!1205179 m!4660617))

(assert (=> d!1205179 m!4659495))

(assert (=> d!1205179 m!4659691))

(assert (=> b!4055899 d!1205179))

(declare-fun d!1205181 () Bool)

(declare-fun lt!1448222 () List!43481)

(assert (=> d!1205181 (= (++!11358 lt!1447889 lt!1448222) prefix!494)))

(declare-fun e!2517314 () List!43481)

(assert (=> d!1205181 (= lt!1448222 e!2517314)))

(declare-fun c!700612 () Bool)

(assert (=> d!1205181 (= c!700612 ((_ is Cons!43357) lt!1447889))))

(assert (=> d!1205181 (>= (size!32416 prefix!494) (size!32416 lt!1447889))))

(assert (=> d!1205181 (= (getSuffix!2460 prefix!494 lt!1447889) lt!1448222)))

(declare-fun b!4056664 () Bool)

(assert (=> b!4056664 (= e!2517314 (getSuffix!2460 (tail!6299 prefix!494) (t!336238 lt!1447889)))))

(declare-fun b!4056665 () Bool)

(assert (=> b!4056665 (= e!2517314 prefix!494)))

(assert (= (and d!1205181 c!700612) b!4056664))

(assert (= (and d!1205181 (not c!700612)) b!4056665))

(declare-fun m!4660619 () Bool)

(assert (=> d!1205181 m!4660619))

(assert (=> d!1205181 m!4659449))

(assert (=> d!1205181 m!4659447))

(assert (=> b!4056664 m!4659943))

(assert (=> b!4056664 m!4659943))

(declare-fun m!4660621 () Bool)

(assert (=> b!4056664 m!4660621))

(assert (=> b!4055899 d!1205181))

(declare-fun b!4056666 () Bool)

(declare-fun e!2517316 () Bool)

(declare-fun e!2517317 () Bool)

(assert (=> b!4056666 (= e!2517316 e!2517317)))

(declare-fun res!1654178 () Bool)

(assert (=> b!4056666 (=> (not res!1654178) (not e!2517317))))

(assert (=> b!4056666 (= res!1654178 (not ((_ is Nil!43357) prefix!494)))))

(declare-fun b!4056669 () Bool)

(declare-fun e!2517315 () Bool)

(assert (=> b!4056669 (= e!2517315 (>= (size!32416 prefix!494) (size!32416 lt!1447889)))))

(declare-fun d!1205183 () Bool)

(assert (=> d!1205183 e!2517315))

(declare-fun res!1654179 () Bool)

(assert (=> d!1205183 (=> res!1654179 e!2517315)))

(declare-fun lt!1448223 () Bool)

(assert (=> d!1205183 (= res!1654179 (not lt!1448223))))

(assert (=> d!1205183 (= lt!1448223 e!2517316)))

(declare-fun res!1654177 () Bool)

(assert (=> d!1205183 (=> res!1654177 e!2517316)))

(assert (=> d!1205183 (= res!1654177 ((_ is Nil!43357) lt!1447889))))

(assert (=> d!1205183 (= (isPrefix!4043 lt!1447889 prefix!494) lt!1448223)))

(declare-fun b!4056668 () Bool)

(assert (=> b!4056668 (= e!2517317 (isPrefix!4043 (tail!6299 lt!1447889) (tail!6299 prefix!494)))))

(declare-fun b!4056667 () Bool)

(declare-fun res!1654176 () Bool)

(assert (=> b!4056667 (=> (not res!1654176) (not e!2517317))))

(assert (=> b!4056667 (= res!1654176 (= (head!8567 lt!1447889) (head!8567 prefix!494)))))

(assert (= (and d!1205183 (not res!1654177)) b!4056666))

(assert (= (and b!4056666 res!1654178) b!4056667))

(assert (= (and b!4056667 res!1654176) b!4056668))

(assert (= (and d!1205183 (not res!1654179)) b!4056669))

(assert (=> b!4056669 m!4659449))

(assert (=> b!4056669 m!4659447))

(assert (=> b!4056668 m!4659829))

(assert (=> b!4056668 m!4659943))

(assert (=> b!4056668 m!4659829))

(assert (=> b!4056668 m!4659943))

(declare-fun m!4660623 () Bool)

(assert (=> b!4056668 m!4660623))

(assert (=> b!4056667 m!4659835))

(assert (=> b!4056667 m!4659947))

(assert (=> b!4055899 d!1205183))

(declare-fun d!1205185 () Bool)

(assert (=> d!1205185 (isPrefix!4043 lt!1447889 prefix!494)))

(declare-fun lt!1448226 () Unit!62712)

(declare-fun choose!24632 (List!43481 List!43481 List!43481) Unit!62712)

(assert (=> d!1205185 (= lt!1448226 (choose!24632 prefix!494 lt!1447889 lt!1447918))))

(assert (=> d!1205185 (isPrefix!4043 prefix!494 lt!1447918)))

(assert (=> d!1205185 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!607 prefix!494 lt!1447889 lt!1447918) lt!1448226)))

(declare-fun bs!591838 () Bool)

(assert (= bs!591838 d!1205185))

(assert (=> bs!591838 m!4659331))

(declare-fun m!4660625 () Bool)

(assert (=> bs!591838 m!4660625))

(assert (=> bs!591838 m!4659421))

(assert (=> b!4055899 d!1205185))

(declare-fun b!4056670 () Bool)

(declare-fun e!2517319 () Bool)

(declare-fun e!2517320 () Bool)

(assert (=> b!4056670 (= e!2517319 e!2517320)))

(declare-fun res!1654182 () Bool)

(assert (=> b!4056670 (=> (not res!1654182) (not e!2517320))))

(assert (=> b!4056670 (= res!1654182 (not ((_ is Nil!43357) suffix!1299)))))

(declare-fun b!4056673 () Bool)

(declare-fun e!2517318 () Bool)

(assert (=> b!4056673 (= e!2517318 (>= (size!32416 suffix!1299) (size!32416 newSuffix!27)))))

(declare-fun d!1205187 () Bool)

(assert (=> d!1205187 e!2517318))

(declare-fun res!1654183 () Bool)

(assert (=> d!1205187 (=> res!1654183 e!2517318)))

(declare-fun lt!1448227 () Bool)

(assert (=> d!1205187 (= res!1654183 (not lt!1448227))))

(assert (=> d!1205187 (= lt!1448227 e!2517319)))

(declare-fun res!1654181 () Bool)

(assert (=> d!1205187 (=> res!1654181 e!2517319)))

(assert (=> d!1205187 (= res!1654181 ((_ is Nil!43357) newSuffix!27))))

(assert (=> d!1205187 (= (isPrefix!4043 newSuffix!27 suffix!1299) lt!1448227)))

(declare-fun b!4056672 () Bool)

(assert (=> b!4056672 (= e!2517320 (isPrefix!4043 (tail!6299 newSuffix!27) (tail!6299 suffix!1299)))))

(declare-fun b!4056671 () Bool)

(declare-fun res!1654180 () Bool)

(assert (=> b!4056671 (=> (not res!1654180) (not e!2517320))))

(assert (=> b!4056671 (= res!1654180 (= (head!8567 newSuffix!27) (head!8567 suffix!1299)))))

(assert (= (and d!1205187 (not res!1654181)) b!4056670))

(assert (= (and b!4056670 res!1654182) b!4056671))

(assert (= (and b!4056671 res!1654180) b!4056672))

(assert (= (and d!1205187 (not res!1654183)) b!4056673))

(assert (=> b!4056673 m!4659409))

(assert (=> b!4056673 m!4659411))

(declare-fun m!4660627 () Bool)

(assert (=> b!4056672 m!4660627))

(declare-fun m!4660629 () Bool)

(assert (=> b!4056672 m!4660629))

(assert (=> b!4056672 m!4660627))

(assert (=> b!4056672 m!4660629))

(declare-fun m!4660631 () Bool)

(assert (=> b!4056672 m!4660631))

(declare-fun m!4660633 () Bool)

(assert (=> b!4056671 m!4660633))

(declare-fun m!4660635 () Bool)

(assert (=> b!4056671 m!4660635))

(assert (=> b!4055878 d!1205187))

(declare-fun b!4056675 () Bool)

(declare-fun e!2517321 () List!43481)

(assert (=> b!4056675 (= e!2517321 (Cons!43357 (h!48777 newSuffix!27) (++!11358 (t!336238 newSuffix!27) lt!1447911)))))

(declare-fun b!4056674 () Bool)

(assert (=> b!4056674 (= e!2517321 lt!1447911)))

(declare-fun b!4056676 () Bool)

(declare-fun res!1654185 () Bool)

(declare-fun e!2517322 () Bool)

(assert (=> b!4056676 (=> (not res!1654185) (not e!2517322))))

(declare-fun lt!1448228 () List!43481)

(assert (=> b!4056676 (= res!1654185 (= (size!32416 lt!1448228) (+ (size!32416 newSuffix!27) (size!32416 lt!1447911))))))

(declare-fun d!1205189 () Bool)

(assert (=> d!1205189 e!2517322))

(declare-fun res!1654184 () Bool)

(assert (=> d!1205189 (=> (not res!1654184) (not e!2517322))))

(assert (=> d!1205189 (= res!1654184 (= (content!6604 lt!1448228) ((_ map or) (content!6604 newSuffix!27) (content!6604 lt!1447911))))))

(assert (=> d!1205189 (= lt!1448228 e!2517321)))

(declare-fun c!700613 () Bool)

(assert (=> d!1205189 (= c!700613 ((_ is Nil!43357) newSuffix!27))))

(assert (=> d!1205189 (= (++!11358 newSuffix!27 lt!1447911) lt!1448228)))

(declare-fun b!4056677 () Bool)

(assert (=> b!4056677 (= e!2517322 (or (not (= lt!1447911 Nil!43357)) (= lt!1448228 newSuffix!27)))))

(assert (= (and d!1205189 c!700613) b!4056674))

(assert (= (and d!1205189 (not c!700613)) b!4056675))

(assert (= (and d!1205189 res!1654184) b!4056676))

(assert (= (and b!4056676 res!1654185) b!4056677))

(declare-fun m!4660637 () Bool)

(assert (=> b!4056675 m!4660637))

(declare-fun m!4660639 () Bool)

(assert (=> b!4056676 m!4660639))

(assert (=> b!4056676 m!4659411))

(assert (=> b!4056676 m!4659717))

(declare-fun m!4660641 () Bool)

(assert (=> d!1205189 m!4660641))

(assert (=> d!1205189 m!4659485))

(assert (=> d!1205189 m!4659723))

(assert (=> b!4055900 d!1205189))

(declare-fun d!1205191 () Bool)

(declare-fun lt!1448229 () List!43481)

(assert (=> d!1205191 (= (++!11358 newSuffix!27 lt!1448229) suffix!1299)))

(declare-fun e!2517323 () List!43481)

(assert (=> d!1205191 (= lt!1448229 e!2517323)))

(declare-fun c!700614 () Bool)

(assert (=> d!1205191 (= c!700614 ((_ is Cons!43357) newSuffix!27))))

(assert (=> d!1205191 (>= (size!32416 suffix!1299) (size!32416 newSuffix!27))))

(assert (=> d!1205191 (= (getSuffix!2460 suffix!1299 newSuffix!27) lt!1448229)))

(declare-fun b!4056678 () Bool)

(assert (=> b!4056678 (= e!2517323 (getSuffix!2460 (tail!6299 suffix!1299) (t!336238 newSuffix!27)))))

(declare-fun b!4056679 () Bool)

(assert (=> b!4056679 (= e!2517323 suffix!1299)))

(assert (= (and d!1205191 c!700614) b!4056678))

(assert (= (and d!1205191 (not c!700614)) b!4056679))

(declare-fun m!4660643 () Bool)

(assert (=> d!1205191 m!4660643))

(assert (=> d!1205191 m!4659409))

(assert (=> d!1205191 m!4659411))

(assert (=> b!4056678 m!4660629))

(assert (=> b!4056678 m!4660629))

(declare-fun m!4660645 () Bool)

(assert (=> b!4056678 m!4660645))

(assert (=> b!4055900 d!1205191))

(declare-fun d!1205193 () Bool)

(declare-fun lt!1448230 () Bool)

(assert (=> d!1205193 (= lt!1448230 (select (content!6607 rules!2999) (rule!10042 (_1!24343 (v!39783 lt!1447926)))))))

(declare-fun e!2517324 () Bool)

(assert (=> d!1205193 (= lt!1448230 e!2517324)))

(declare-fun res!1654186 () Bool)

(assert (=> d!1205193 (=> (not res!1654186) (not e!2517324))))

(assert (=> d!1205193 (= res!1654186 ((_ is Cons!43359) rules!2999))))

(assert (=> d!1205193 (= (contains!8624 rules!2999 (rule!10042 (_1!24343 (v!39783 lt!1447926)))) lt!1448230)))

(declare-fun b!4056680 () Bool)

(declare-fun e!2517325 () Bool)

(assert (=> b!4056680 (= e!2517324 e!2517325)))

(declare-fun res!1654187 () Bool)

(assert (=> b!4056680 (=> res!1654187 e!2517325)))

(assert (=> b!4056680 (= res!1654187 (= (h!48779 rules!2999) (rule!10042 (_1!24343 (v!39783 lt!1447926)))))))

(declare-fun b!4056681 () Bool)

(assert (=> b!4056681 (= e!2517325 (contains!8624 (t!336240 rules!2999) (rule!10042 (_1!24343 (v!39783 lt!1447926)))))))

(assert (= (and d!1205193 res!1654186) b!4056680))

(assert (= (and b!4056680 (not res!1654187)) b!4056681))

(assert (=> d!1205193 m!4660587))

(declare-fun m!4660647 () Bool)

(assert (=> d!1205193 m!4660647))

(declare-fun m!4660649 () Bool)

(assert (=> b!4056681 m!4660649))

(assert (=> b!4055901 d!1205193))

(declare-fun d!1205195 () Bool)

(assert (=> d!1205195 (= (inv!57956 (tag!7816 (rule!10042 token!484))) (= (mod (str.len (value!218879 (tag!7816 (rule!10042 token!484)))) 2) 0))))

(assert (=> b!4055880 d!1205195))

(declare-fun d!1205197 () Bool)

(declare-fun res!1654190 () Bool)

(declare-fun e!2517328 () Bool)

(assert (=> d!1205197 (=> (not res!1654190) (not e!2517328))))

(assert (=> d!1205197 (= res!1654190 (semiInverseModEq!2972 (toChars!9371 (transformation!6956 (rule!10042 token!484))) (toValue!9512 (transformation!6956 (rule!10042 token!484)))))))

(assert (=> d!1205197 (= (inv!57959 (transformation!6956 (rule!10042 token!484))) e!2517328)))

(declare-fun b!4056684 () Bool)

(assert (=> b!4056684 (= e!2517328 (equivClasses!2871 (toChars!9371 (transformation!6956 (rule!10042 token!484))) (toValue!9512 (transformation!6956 (rule!10042 token!484)))))))

(assert (= (and d!1205197 res!1654190) b!4056684))

(assert (=> d!1205197 m!4660581))

(assert (=> b!4056684 m!4660583))

(assert (=> b!4055880 d!1205197))

(declare-fun d!1205199 () Bool)

(assert (=> d!1205199 (= (inv!57956 (tag!7816 (h!48779 rules!2999))) (= (mod (str.len (value!218879 (tag!7816 (h!48779 rules!2999)))) 2) 0))))

(assert (=> b!4055881 d!1205199))

(declare-fun d!1205201 () Bool)

(declare-fun res!1654191 () Bool)

(declare-fun e!2517329 () Bool)

(assert (=> d!1205201 (=> (not res!1654191) (not e!2517329))))

(assert (=> d!1205201 (= res!1654191 (semiInverseModEq!2972 (toChars!9371 (transformation!6956 (h!48779 rules!2999))) (toValue!9512 (transformation!6956 (h!48779 rules!2999)))))))

(assert (=> d!1205201 (= (inv!57959 (transformation!6956 (h!48779 rules!2999))) e!2517329)))

(declare-fun b!4056685 () Bool)

(assert (=> b!4056685 (= e!2517329 (equivClasses!2871 (toChars!9371 (transformation!6956 (h!48779 rules!2999))) (toValue!9512 (transformation!6956 (h!48779 rules!2999)))))))

(assert (= (and d!1205201 res!1654191) b!4056685))

(declare-fun m!4660651 () Bool)

(assert (=> d!1205201 m!4660651))

(declare-fun m!4660653 () Bool)

(assert (=> b!4056685 m!4660653))

(assert (=> b!4055881 d!1205201))

(declare-fun d!1205203 () Bool)

(declare-fun lt!1448231 () Int)

(assert (=> d!1205203 (>= lt!1448231 0)))

(declare-fun e!2517330 () Int)

(assert (=> d!1205203 (= lt!1448231 e!2517330)))

(declare-fun c!700615 () Bool)

(assert (=> d!1205203 (= c!700615 ((_ is Nil!43357) (originalCharacters!7556 token!484)))))

(assert (=> d!1205203 (= (size!32416 (originalCharacters!7556 token!484)) lt!1448231)))

(declare-fun b!4056686 () Bool)

(assert (=> b!4056686 (= e!2517330 0)))

(declare-fun b!4056687 () Bool)

(assert (=> b!4056687 (= e!2517330 (+ 1 (size!32416 (t!336238 (originalCharacters!7556 token!484)))))))

(assert (= (and d!1205203 c!700615) b!4056686))

(assert (= (and d!1205203 (not c!700615)) b!4056687))

(declare-fun m!4660655 () Bool)

(assert (=> b!4056687 m!4660655))

(assert (=> b!4055902 d!1205203))

(declare-fun b!4056692 () Bool)

(declare-fun e!2517333 () Bool)

(declare-fun tp!1229459 () Bool)

(assert (=> b!4056692 (= e!2517333 (and tp_is_empty!20693 tp!1229459))))

(assert (=> b!4055877 (= tp!1229399 e!2517333)))

(assert (= (and b!4055877 ((_ is Cons!43357) (t!336238 suffixResult!105))) b!4056692))

(declare-fun b!4056703 () Bool)

(declare-fun b_free!112893 () Bool)

(declare-fun b_next!113597 () Bool)

(assert (=> b!4056703 (= b_free!112893 (not b_next!113597))))

(declare-fun tb!244025 () Bool)

(declare-fun t!336282 () Bool)

(assert (=> (and b!4056703 (= (toValue!9512 (transformation!6956 (h!48779 (t!336240 rules!2999)))) (toValue!9512 (transformation!6956 (rule!10042 token!484)))) t!336282) tb!244025))

(declare-fun result!295696 () Bool)

(assert (= result!295696 result!295664))

(assert (=> d!1205079 t!336282))

(declare-fun tb!244027 () Bool)

(declare-fun t!336284 () Bool)

(assert (=> (and b!4056703 (= (toValue!9512 (transformation!6956 (h!48779 (t!336240 rules!2999)))) (toValue!9512 (transformation!6956 (rule!10042 (_1!24343 (v!39783 lt!1447926)))))) t!336284) tb!244027))

(declare-fun result!295698 () Bool)

(assert (= result!295698 result!295688))

(assert (=> d!1205141 t!336284))

(declare-fun b_and!311927 () Bool)

(declare-fun tp!1229468 () Bool)

(assert (=> b!4056703 (= tp!1229468 (and (=> t!336282 result!295696) (=> t!336284 result!295698) b_and!311927))))

(declare-fun b_free!112895 () Bool)

(declare-fun b_next!113599 () Bool)

(assert (=> b!4056703 (= b_free!112895 (not b_next!113599))))

(declare-fun tb!244029 () Bool)

(declare-fun t!336286 () Bool)

(assert (=> (and b!4056703 (= (toChars!9371 (transformation!6956 (h!48779 (t!336240 rules!2999)))) (toChars!9371 (transformation!6956 (rule!10042 token!484)))) t!336286) tb!244029))

(declare-fun result!295700 () Bool)

(assert (= result!295700 result!295644))

(assert (=> b!4056143 t!336286))

(assert (=> d!1205099 t!336286))

(declare-fun t!336288 () Bool)

(declare-fun tb!244031 () Bool)

(assert (=> (and b!4056703 (= (toChars!9371 (transformation!6956 (h!48779 (t!336240 rules!2999)))) (toChars!9371 (transformation!6956 (rule!10042 (_1!24343 (v!39783 lt!1447926)))))) t!336288) tb!244031))

(declare-fun result!295702 () Bool)

(assert (= result!295702 result!295684))

(assert (=> d!1205139 t!336288))

(declare-fun tp!1229470 () Bool)

(declare-fun b_and!311929 () Bool)

(assert (=> b!4056703 (= tp!1229470 (and (=> t!336286 result!295700) (=> t!336288 result!295702) b_and!311929))))

(declare-fun e!2517345 () Bool)

(assert (=> b!4056703 (= e!2517345 (and tp!1229468 tp!1229470))))

(declare-fun e!2517342 () Bool)

(declare-fun tp!1229469 () Bool)

(declare-fun b!4056702 () Bool)

(assert (=> b!4056702 (= e!2517342 (and tp!1229469 (inv!57956 (tag!7816 (h!48779 (t!336240 rules!2999)))) (inv!57959 (transformation!6956 (h!48779 (t!336240 rules!2999)))) e!2517345))))

(declare-fun b!4056701 () Bool)

(declare-fun e!2517344 () Bool)

(declare-fun tp!1229471 () Bool)

(assert (=> b!4056701 (= e!2517344 (and e!2517342 tp!1229471))))

(assert (=> b!4055909 (= tp!1229398 e!2517344)))

(assert (= b!4056702 b!4056703))

(assert (= b!4056701 b!4056702))

(assert (= (and b!4055909 ((_ is Cons!43359) (t!336240 rules!2999))) b!4056701))

(declare-fun m!4660657 () Bool)

(assert (=> b!4056702 m!4660657))

(declare-fun m!4660659 () Bool)

(assert (=> b!4056702 m!4660659))

(declare-fun b!4056704 () Bool)

(declare-fun e!2517346 () Bool)

(declare-fun tp!1229472 () Bool)

(assert (=> b!4056704 (= e!2517346 (and tp_is_empty!20693 tp!1229472))))

(assert (=> b!4055893 (= tp!1229400 e!2517346)))

(assert (= (and b!4055893 ((_ is Cons!43357) (t!336238 prefix!494))) b!4056704))

(declare-fun b!4056705 () Bool)

(declare-fun e!2517347 () Bool)

(declare-fun tp!1229473 () Bool)

(assert (=> b!4056705 (= e!2517347 (and tp_is_empty!20693 tp!1229473))))

(assert (=> b!4055882 (= tp!1229405 e!2517347)))

(assert (= (and b!4055882 ((_ is Cons!43357) (t!336238 newSuffixResult!27))) b!4056705))

(declare-fun b!4056706 () Bool)

(declare-fun e!2517348 () Bool)

(declare-fun tp!1229474 () Bool)

(assert (=> b!4056706 (= e!2517348 (and tp_is_empty!20693 tp!1229474))))

(assert (=> b!4055891 (= tp!1229406 e!2517348)))

(assert (= (and b!4055891 ((_ is Cons!43357) (t!336238 suffix!1299))) b!4056706))

(declare-fun b!4056719 () Bool)

(declare-fun e!2517351 () Bool)

(declare-fun tp!1229487 () Bool)

(assert (=> b!4056719 (= e!2517351 tp!1229487)))

(assert (=> b!4055880 (= tp!1229402 e!2517351)))

(declare-fun b!4056720 () Bool)

(declare-fun tp!1229488 () Bool)

(declare-fun tp!1229485 () Bool)

(assert (=> b!4056720 (= e!2517351 (and tp!1229488 tp!1229485))))

(declare-fun b!4056718 () Bool)

(declare-fun tp!1229489 () Bool)

(declare-fun tp!1229486 () Bool)

(assert (=> b!4056718 (= e!2517351 (and tp!1229489 tp!1229486))))

(declare-fun b!4056717 () Bool)

(assert (=> b!4056717 (= e!2517351 tp_is_empty!20693)))

(assert (= (and b!4055880 ((_ is ElementMatch!11861) (regex!6956 (rule!10042 token!484)))) b!4056717))

(assert (= (and b!4055880 ((_ is Concat!19048) (regex!6956 (rule!10042 token!484)))) b!4056718))

(assert (= (and b!4055880 ((_ is Star!11861) (regex!6956 (rule!10042 token!484)))) b!4056719))

(assert (= (and b!4055880 ((_ is Union!11861) (regex!6956 (rule!10042 token!484)))) b!4056720))

(declare-fun b!4056723 () Bool)

(declare-fun e!2517352 () Bool)

(declare-fun tp!1229492 () Bool)

(assert (=> b!4056723 (= e!2517352 tp!1229492)))

(assert (=> b!4055881 (= tp!1229401 e!2517352)))

(declare-fun b!4056724 () Bool)

(declare-fun tp!1229493 () Bool)

(declare-fun tp!1229490 () Bool)

(assert (=> b!4056724 (= e!2517352 (and tp!1229493 tp!1229490))))

(declare-fun b!4056722 () Bool)

(declare-fun tp!1229494 () Bool)

(declare-fun tp!1229491 () Bool)

(assert (=> b!4056722 (= e!2517352 (and tp!1229494 tp!1229491))))

(declare-fun b!4056721 () Bool)

(assert (=> b!4056721 (= e!2517352 tp_is_empty!20693)))

(assert (= (and b!4055881 ((_ is ElementMatch!11861) (regex!6956 (h!48779 rules!2999)))) b!4056721))

(assert (= (and b!4055881 ((_ is Concat!19048) (regex!6956 (h!48779 rules!2999)))) b!4056722))

(assert (= (and b!4055881 ((_ is Star!11861) (regex!6956 (h!48779 rules!2999)))) b!4056723))

(assert (= (and b!4055881 ((_ is Union!11861) (regex!6956 (h!48779 rules!2999)))) b!4056724))

(declare-fun b!4056725 () Bool)

(declare-fun e!2517353 () Bool)

(declare-fun tp!1229495 () Bool)

(assert (=> b!4056725 (= e!2517353 (and tp_is_empty!20693 tp!1229495))))

(assert (=> b!4055913 (= tp!1229397 e!2517353)))

(assert (= (and b!4055913 ((_ is Cons!43357) (t!336238 newSuffix!27))) b!4056725))

(declare-fun b!4056726 () Bool)

(declare-fun e!2517354 () Bool)

(declare-fun tp!1229496 () Bool)

(assert (=> b!4056726 (= e!2517354 (and tp_is_empty!20693 tp!1229496))))

(assert (=> b!4055908 (= tp!1229407 e!2517354)))

(assert (= (and b!4055908 ((_ is Cons!43357) (originalCharacters!7556 token!484))) b!4056726))

(declare-fun b_lambda!118533 () Bool)

(assert (= b_lambda!118509 (or (and b!4055892 b_free!112883 (= (toChars!9371 (transformation!6956 (h!48779 rules!2999))) (toChars!9371 (transformation!6956 (rule!10042 token!484))))) (and b!4055919 b_free!112887) (and b!4056703 b_free!112895 (= (toChars!9371 (transformation!6956 (h!48779 (t!336240 rules!2999)))) (toChars!9371 (transformation!6956 (rule!10042 token!484))))) b_lambda!118533)))

(declare-fun b_lambda!118535 () Bool)

(assert (= b_lambda!118519 (or (and b!4055892 b_free!112881 (= (toValue!9512 (transformation!6956 (h!48779 rules!2999))) (toValue!9512 (transformation!6956 (rule!10042 token!484))))) (and b!4055919 b_free!112885) (and b!4056703 b_free!112893 (= (toValue!9512 (transformation!6956 (h!48779 (t!336240 rules!2999)))) (toValue!9512 (transformation!6956 (rule!10042 token!484))))) b_lambda!118535)))

(declare-fun b_lambda!118537 () Bool)

(assert (= b_lambda!118521 (or (and b!4055892 b_free!112883 (= (toChars!9371 (transformation!6956 (h!48779 rules!2999))) (toChars!9371 (transformation!6956 (rule!10042 token!484))))) (and b!4055919 b_free!112887) (and b!4056703 b_free!112895 (= (toChars!9371 (transformation!6956 (h!48779 (t!336240 rules!2999)))) (toChars!9371 (transformation!6956 (rule!10042 token!484))))) b_lambda!118537)))

(check-sat (not b!4056570) (not b!4056673) (not b!4056722) (not b!4056124) (not b!4056575) (not d!1204945) (not b!4056462) (not b!4056502) (not b!4056107) (not b!4056106) (not b!4056287) (not d!1205147) (not b!4056652) (not b_lambda!118533) (not b!4056562) (not b!4056615) (not d!1205103) (not b!4056720) (not b!4056468) (not b_next!113585) (not d!1204843) (not b!4056668) (not b_next!113597) (not b!4055983) (not tb!244021) (not b!4055934) (not b!4056598) (not d!1205161) (not b!4056608) (not d!1205191) (not b!4056628) (not d!1205153) (not b!4056723) (not b!4056678) (not b!4056581) (not b!4056681) (not d!1205159) (not b!4056564) (not d!1205201) (not b!4056591) (not b!4056105) (not b!4056558) (not b!4056286) (not d!1205137) (not b!4055950) (not b!4056282) (not d!1204889) (not d!1205157) (not d!1205181) (not b!4056667) (not b!4056211) (not b!4056464) (not b!4056249) (not d!1205167) (not b!4056501) (not d!1205189) (not b!4056627) (not d!1205107) (not b!4055931) (not b!4056594) (not b!4056132) b_and!311919 (not b!4056557) (not d!1205113) (not d!1204957) (not b!4055981) (not b!4056604) (not b_next!113591) (not b!4056671) (not b_lambda!118531) (not d!1204885) (not b!4056613) (not d!1205119) (not b!4056228) (not d!1204915) (not b!4056630) (not b!4056111) (not d!1204897) (not d!1204881) (not b_lambda!118535) (not b!4056234) (not d!1205129) (not b!4055951) (not d!1205101) (not b!4056672) (not b!4056577) (not b!4056669) (not b!4056661) (not tb!244017) (not b!4056233) (not b!4056274) (not b!4056214) (not b!4056602) (not d!1204941) (not b!4056701) (not b!4056554) (not b!4056248) (not b!4056133) (not b!4056219) (not bm!288029) (not b!4056270) (not b!4056128) (not d!1205125) (not d!1205197) (not b!4056144) (not b!4056624) (not d!1205133) (not b!4056600) (not b!4056215) (not b!4056218) (not b!4056568) (not b!4056149) (not d!1205169) (not d!1205131) (not d!1205097) (not b_next!113589) (not b!4056610) (not b!4056656) (not b!4056651) (not b!4056279) (not b!4056676) (not d!1204919) (not b!4056571) (not d!1205155) (not d!1204895) (not b!4056726) (not b!4056587) (not d!1204817) (not b!4056514) (not b_next!113587) (not b!4056725) tp_is_empty!20693 (not d!1204931) (not d!1205193) (not b_next!113599) (not b!4056226) (not b!4055948) (not b!4056592) (not b!4056597) (not d!1205163) (not d!1204921) (not b!4056467) (not bm!288027) (not b!4056536) (not b!4056103) (not b!4056702) (not d!1204827) (not d!1205085) b_and!311925 (not b!4056638) (not b!4056606) (not b!4056101) (not b_lambda!118537) (not d!1205145) (not d!1205165) (not b!4056209) (not d!1205117) (not b!4055952) (not b!4056706) (not d!1204893) (not b!4056125) (not b!4056595) b_and!311923 (not b!4056590) (not d!1204925) (not b!4056617) (not d!1204851) (not b!4056658) (not d!1205177) (not d!1205151) (not b!4056137) (not b!4056277) (not b_lambda!118529) (not b!4056704) (not d!1204891) (not d!1205087) (not b!4055947) (not b!4056537) (not b!4055946) (not b!4056566) (not b!4056588) (not b!4056605) (not d!1205109) (not b!4056684) (not b!4056705) (not b!4056281) (not d!1204873) (not b!4056559) (not d!1204933) b_and!311921 (not b!4056500) (not d!1204927) (not d!1205123) (not b!4056576) (not b!4056217) (not b!4056675) (not d!1204899) (not d!1204819) (not d!1205175) (not b!4056283) (not b!4055930) (not b!4056685) (not b!4056285) (not b!4056278) b_and!311929 (not d!1204929) (not d!1204879) (not b!4056718) (not b!4056565) (not b!4056508) (not d!1204955) (not b!4056463) (not d!1205171) (not bm!288026) (not d!1205139) (not b!4056599) (not d!1204923) (not b!4056573) (not b!4056649) (not d!1205185) (not b!4056687) (not b!4056212) (not b!4056466) (not b!4056655) (not b!4056569) (not b!4056603) (not b!4056618) (not b!4056724) (not d!1205135) (not b!4056208) (not b!4056227) (not b!4056692) (not b!4056664) (not tb!244005) (not b!4056631) (not b!4056230) (not tb!243989) (not b!4056229) (not b!4056719) (not b!4056116) (not b!4056609) (not b!4056469) b_and!311927 (not d!1205099) (not b!4056129) (not b!4055935) (not b!4056136) (not b!4056461) (not d!1205179) (not b!4056143) (not b!4056207) (not b!4056210) (not b!4056586) (not b!4056662) (not bm!288020) (not b!4056231) (not b!4056117))
(check-sat b_and!311919 (not b_next!113591) (not b_next!113599) b_and!311925 b_and!311923 b_and!311921 b_and!311929 b_and!311927 (not b_next!113585) (not b_next!113597) (not b_next!113589) (not b_next!113587))
